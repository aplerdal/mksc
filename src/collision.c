#include "common.h"
#include "scene.h"
#include "collision.h"

extern u8 col_sCpoiStartIndicesActive[128];
extern u8 col_sCpoiStartIndicesPassive[128];

static void sortByCheckpoint(Actor** actorList, int actorCount, u8* cpoiStartIndices, int nrCheckpoints)
{
    int i, j;
    int idx;
    for (i = 0; i < actorCount - 1; i++)
    {
        Actor* tempActor;
        int checkpointId = actorList[i]->checkpointId;
        idx = i;
        for (j = i + 1; j < actorCount; j++)
        {
            if (actorList[j]->checkpointId < checkpointId)
            {
                checkpointId = actorList[j]->checkpointId;
                idx = j;
            }
        }
        tempActor = actorList[idx];
        actorList[idx] = actorList[i];
        actorList[i] = tempActor;
    }
    j = 0;
    i = 0;
    idx = 0;
    for (; j < actorCount; j++)
    {
        while (i <= actorList[j]->checkpointId)
            cpoiStartIndices[i++] = idx;
        idx++;
    }
    while (i < nrCheckpoints)
        cpoiStartIndices[i++] = idx;
}

static inline bool32 somethingField38(Actor* actorA, Actor* actorB)
{
    int tmp = actorA->field_38;
    if ((tmp | actorB->field_38) > 1)
        return FALSE;
    return TRUE;
}

static inline void collide(Actor* actorA, Actor* actorB)
{
    int size;

    if (actorA == actorB)
        return;

    size = (actorA->sizeX + actorB->sizeX) << 14;
    if (math_abs(actorA->posX - actorB->posX) > size)
        return;

    size = (actorA->sizeY + actorB->sizeY) << 14;
    if (math_abs(actorA->posY - actorB->posY) > size)
        return;

    size = (actorA->sizeZ + actorB->sizeZ) << 14;
    if (math_abs(actorA->posZ - actorB->posZ) > size)
        return;

    if (somethingField38(actorA, actorB))
    {
        if (actorA->collideFunc)
            actorA->collideFunc(actorA, actorB);
        if (actorB->collideFunc)
            actorB->collideFunc(actorB, actorA);
    }
}

static void collideActiveActiveFast(const CollisionList* colList, u8* cpoiStartIndices, int nrCheckpoints)
{
    int i, j;
    Actor* actorA;
    int checkpointId;
    int startCpoi, endCpoi;
    int startIdx, endIdx;

    for (i = 0; i < colList->activeCount; i++)
    {
        actorA = colList->activeList[i];
        checkpointId = actorA->checkpointId;
        if (checkpointId == 127)
            continue;
        startCpoi = checkpointId - 2;
        endCpoi = checkpointId + 3;
        if (startCpoi < 0)
            startCpoi += nrCheckpoints;
        if (endCpoi >= nrCheckpoints)
            endCpoi -= nrCheckpoints;
        startIdx = cpoiStartIndices[startCpoi];
        endIdx = cpoiStartIndices[endCpoi];
        if (startIdx <= i)
            startIdx = i + 1;
        if (startIdx < endIdx)
        {
            for (j = startIdx; j < endIdx; j++)
                collide(actorA, colList->activeList[j]);
        }
        else
        {
            for (j = i + 1; j < endIdx; j++)
                collide(actorA, colList->activeList[j]);
            for (j = startIdx; j < colList->activeCount; j++)
                collide(actorA, colList->activeList[j]);
        }
    }
}

static void collideActiveActive(const CollisionList* colList)
{
    int i, j;
    Actor* actorA;
    for (i = 0; i < colList->activeCount; i++)
    {
        actorA = colList->activeList[i];
        for (j = i + 1; j < colList->activeCount; j++)
            collide(actorA, colList->activeList[j]);
    }
}

static void collideActivePassiveFast(const CollisionList* colList, u8* cpoiStartIndices, int nrCheckpoints)
{
    int i, j;
    Actor* actorA;
    Actor* actorA2;
    int checkpointId;
    int startCpoi, endCpoi;
    int startIdx, endIdx;
    for (i = 0; i < colList->activeCount; i++)
    {
        actorA = colList->activeList[i];
        checkpointId = actorA->checkpointId;
        if (checkpointId == 127)
            continue;

        startCpoi = checkpointId - 2;
        endCpoi = checkpointId + 3;
        if (startCpoi < 0)
            startCpoi += nrCheckpoints;

        if (endCpoi >= nrCheckpoints)
            endCpoi -= nrCheckpoints;

        startIdx = cpoiStartIndices[startCpoi];
        endIdx = cpoiStartIndices[endCpoi];
        if (startIdx < endIdx)
        {
            for (j = startIdx; j < endIdx; j++)
                collide(actorA, colList->passiveList[j]);
        }
        else
        {
            for (j = 0; j < endIdx; j++)
                collide(actorA, colList->passiveList[j]);

            actorA2 = actorA;
            for (j = startIdx; j < colList->passiveCount; j++)
                collide(actorA2, colList->passiveList[j]);
        }
    }
}

static void collideActivePassive(const CollisionList* colList)
{
    int i, j;
    Actor* actorA;
    for (i = 0; i < colList->activeCount; i++)
    {
        actorA = colList->activeList[i];
        for (j = 0; j < colList->passiveCount; j++)
            collide(actorA, colList->passiveList[j]);
    }
}

bool32 col_addActive(CollisionList* colList, Actor* actor)
{
    int count = colList->activeCount;
    if (count == 24)
        return FALSE;
    colList->activeList[count++] = actor;
    colList->activeCount = count;
    return TRUE;
}

bool32 col_addPassive(CollisionList* colList, Actor* actor)
{
    int count = colList->passiveCount;
    if (count == 64)
        return FALSE;
    colList->passiveList[count++] = actor;
    colList->passiveCount = count;
    return TRUE;
}

void col_clearLists(CollisionList* colList)
{
    colList->activeCount = 0;
    colList->passiveCount = 0;
}

void col_collide(CollisionList* colList)
{
    int nrCheckpoints = gSceneState.raceState.nrCheckpoints;
    if (!(gSceneState.raceState.curRaceStateUnknown & RACE_CUR_RACE_STATE_UNKNOWN_MG_MODE))
    {
        sortByCheckpoint(colList->activeList, colList->activeCount, col_sCpoiStartIndicesActive, nrCheckpoints);
        sortByCheckpoint(colList->passiveList, colList->passiveCount, col_sCpoiStartIndicesPassive, nrCheckpoints);
        collideActiveActiveFast(colList, col_sCpoiStartIndicesActive, nrCheckpoints);
        collideActivePassiveFast(colList, col_sCpoiStartIndicesPassive, nrCheckpoints);
    }
    else
    {
        collideActiveActive(colList);
        collideActivePassive(colList);
    }
}
