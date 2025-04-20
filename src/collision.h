#pragma once
#include "actor.h"

typedef struct
{
    u8 activeCount;
    u8 passiveCount;
    Actor* activeList[24];
    Actor* passiveList[64];
} CollisionList;

bool32 col_addActive(CollisionList* colList, Actor* actor);
bool32 col_addPassive(CollisionList* colList, Actor* actor);
void col_clearLists(CollisionList* colList);
void col_collide(CollisionList* colList);
