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
    s32 field34_0x6ec;
    u8 field35_0x6f0[4];
    s32 field36_0x6f4;
    u8 field37_0x6f8[4];
    s32 field38_0x6fc;
    u8 field39_0x700[4];
    s32 field40_0x704;
    u8 field41_0x708[12];
    s32 field42_0x714;
    u8 field43_0x718[12];
    s32 field44_0x724;
    u8 field45_0x728[164];
    void *field46_0x7cc;
    u8 *field47_0x7d0;
    u8 field48_0x7d4;
    u8 field49_0x7d5[2];
    u8 playerCount;
    u8 playerID;
    u8 field52_0x7d9;
    u16 modeFlags;
    u8 gap7DC;
    u8 headerTableIdx;
    u8 field55_0x7de[8];
    short lapCount;
    u8 field57_0x7e8;
    u8 unknown;
    u8 field59_0x7ea[6];
    u8 game_object_count;
    u8 game_object_max;
    u8 field62_0x7f2[2];
    Driver* drivers[8];
    Driver* playerDriver;
    u8 field63_0x7fc[24];
    Driver* activeDriver;
    u32 field64_0x818;
    u16 inputs[4];
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
    u32 unkFrameCount;
    u32 trackNumber;
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
