#pragma once
#include "libunk/irq.h"
#include "frameHeap.h"
#include "actor.h"
#include "track.h"

#define RACE_CUR_RACE_STATE_UNKNOWN_GP_MODE 0x100
#define RACE_CUR_RACE_STATE_UNKNOWN_MG_MODE 0x800

typedef struct
{
    Actor actor;
    u32 field_44;
    u32 field_48;
    //...
} Driver;

typedef struct
{
    u8 gap0[0x14];
    u16 nrCheckpoints;
    u8 gap16[0x542];
    BgState backgroundState;
    void* trackData;
    TrackDef* trackDef;
    u8 gapwtf[0x164];
    FrameHeap frameHeap;
    u8 gap6EC[0xEE];
    u16 curRaceStateUnknown;
    u8 gap7DC;
    u8 headerTableIdx;
    u8 gap7DE[0x1A];
    Driver* drivers[8];
    Driver* playerDriver;
    //...
} RaceState;

typedef bool32 (*SceneMain_fn)(void);
typedef void (*SceneVblank_fn)(void);

typedef struct
{
    SceneMain_fn sceneMainFunc;
    u8 space1[4];
    bool8 byte_3002E28;
    SceneVblank_fn vBlankFunc;
    u32 field10;
    u32 field14;
    u8 space2[8];
    u16 initialRepeatWait;
    u16 nextRepeatWait;
    RaceState raceState;
} SceneState;

extern SceneState gSceneState;

static inline void scene_setVBlankFunc(SceneVblank_fn func)
{
    SceneState* sceneState = &gSceneState;
    irq_updateMask(IRQ_UPDATE_MODE_AND, ~IRQ_MASK_VBLANK);
    sceneState->vBlankFunc = func;
    irq_updateMask(IRQ_UPDATE_MODE_OR, IRQ_MASK_VBLANK | IRQ_MASK_IME);
}

static inline void scene_setMainFunc(SceneMain_fn func)
{
    gSceneState.sceneMainFunc = func;
    gSceneState.byte_3002E28 = (gSceneState.byte_3002E28 + 1) & 7;
}
