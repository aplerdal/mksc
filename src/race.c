#include "libunk/irq.h"
#include "common.h"
#include "main.h"
#include "scene.h"
#include "sio2.h"
#include "palette.h"
#include "mp2000/m4a.h"
#include "songs.h"

#include "race.h"


void race_main() {
    u16 gamemode;
    bool32 loop;
    u32 player;
    s32 i,j,k;

    DAT_03004f50 = 0;
    irq_updateMask(IRQ_UPDATE_MODE_AND, ~IRQ_MASK_VBLANK);
    gSceneState.vBlankFunc = NULL;
    main_frameProc();
    *(u16*)(BG_PLTT) = 0;
    REG_DISPCNT = 0;
    if (gSceneState.raceState.playerCount < 2) {
        gSceneState.raceState.playerID = 0;
    } else {
        if ((!FUN_0802dc88()) || (sio2_sMPlayerCount != gSceneState.raceState.playerCount)) {
            DAT_03002c96 = 0;
            sio2_stop();
            gSceneState.raceState.playerID = 0;
        } else {
            gSceneState.raceState.playerID = sio2_sMPlayerId.mPlayerId;
        }
    }
    gSceneState.raceState.activeDriver = gSceneState.raceState.drivers[gSceneState.raceState.playerID];
    FUN_080515bc();
    FUN_0802fe4c(1);
    FUN_0802fd3c();
    main_frameProc();
    FUN_08048d44(&gSceneState.raceState);
    main_frameProc();
    FUN_08050f74();
    main_frameProc();
    FUN_0804ae08(&gSceneState.raceState);
    main_frameProc();
    if (((gSceneState.raceState.modeFlags & 0xF00) == 0x100) && ((gSceneState.raceState.modeFlags & 0x10)==0)) {
        FUN_080524cc();
    }
    pltt_setDirtyFlag(TRUE);
    DAT_03003a9c = 0;
    FUN_0805a7c0();
    switch ((u8)sub_8032c2c(&gSceneState.raceState))
    {
    case 0:
    case 12:
    case 16:
        m4aSongNumStart(SONG_039);
        break;
    default:
        m4aSongNumStart(SONG_038);
    }
    gamemode = gSceneState.raceState.modeFlags & 0xF00;
    if (((gamemode <= 0x200) || (gamemode != 0x100)) || ((gSceneState.raceState.modeFlags & 0x10) != 0)) {
        m4aSongNumStart(SONG_RACE_START_JINGLE);
    } else {
        m4aSongNumStart(SONG_GP_INTRO);
    }
    gSceneState.unkFrameCount = 0;
    loop = TRUE;
    player = 0;
    i = 0x1c00;
    while (loop) {
        u16 dat = 0x1c00;
        for (j = 0; j < sio2_sMPlayerCount; j++) {
            dat &= DAT_03002c82[j] & 0x1c00;
        }
        main_frameProc();
        if (dat == 0x1c00) {
            loop = FALSE;
        }
        else {
            i++;
            if (i > 180) {
                DAT_03002c96 = 0;
                sio2_stop();
                break;
            }
        }
    }
    DAT_03004f50 = 0;
    REG_DISPCNT = REG_DISPCNT | 0x1600;
    irq_updateMask(IRQ_UPDATE_MODE_AND,~IRQ_MASK_VBLANK);
    gSceneState.vBlankFunc = FUN_08051f84 + 1;
    irq_updateMask(IRQ_UPDATE_MODE_OR,IRQ_MASK_VBLANK);
    irq_updateMask(IRQ_UPDATE_MODE_OR,IRQ_MASK_VCOUNT);
    if ((gamemode == 0x100) && ((gSceneState.raceState.modeFlags & 0x10) == 0)) {
        main_frameProc();
        FUN_08052a4c();
    } else {
        PTR_03004f74 = FUN_08052020 + 1;
        PTR_03004f70 = FUN_0805207c + 1;
        PTR_03004f78 = FUN_080520b4 + 1;
        DAT_03004f7e = 3;
        FUN_08030630();
    }
}