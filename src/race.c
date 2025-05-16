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
    bool32 loop, running, paused;
    u32 player;
    s32 i,j,k;
    RaceState* raceState = &gSceneState.raceState;

    DAT_03004f50 = 0;
    irq_updateMask(IRQ_UPDATE_MODE_AND, ~IRQ_MASK_VBLANK);
    gSceneState.vBlankFunc = NULL;
    main_frameProc();
    *(u16*)(BG_PLTT) = 0;
    REG_DISPCNT = 0;
    if (raceState->playerCount < 2) {
        raceState->playerID = 0;
    } else {
        if ((!FUN_0802dc88()) || (sio2_sMPlayerCount != raceState->playerCount)) {
            DAT_03002c96 = 0;
            sio2_stop();
            raceState->playerID = 0;
        } else {
            raceState->playerID = sio2_sMPlayerId.mPlayerId;
        }
    }
    raceState->activeDriver = raceState->drivers[raceState->playerID];
    FUN_080515bc();
    FUN_0802fe4c(1);
    FUN_0802fd3c();
    main_frameProc();
    FUN_08048d44(raceState);
    main_frameProc();
    FUN_08050f74();
    main_frameProc();
    FUN_0804ae08(raceState);
    main_frameProc();
    if (((raceState->modeFlags & 0xF00) == 0x100) && ((raceState->modeFlags & 0x10)==0)) {
        FUN_080524cc();
    }
    pltt_setDirtyFlag(TRUE);
    DAT_03003a9c = 0;
    FUN_0805a7c0();
    switch ((u8)sub_8032c2c(raceState))
    {
    case 0:
    case 12:
    case 16:
        m4aSongNumStart(SONG_039);
        break;
    default:
        m4aSongNumStart(SONG_038);
    }
    gamemode = raceState->modeFlags & 0xF00;
    if (((gamemode <= 0x200) || (gamemode != 0x100)) || ((raceState->modeFlags & 0x10) != 0)) {
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
    if ((gamemode == 0x100) && ((raceState->modeFlags & 0x10) == 0)) {
        main_frameProc();
        FUN_08052a4c();
    } else {
        PTR_03004f74 = FUN_08052020 + 1;
        PTR_03004f70 = FUN_0805207c + 1;
        PTR_03004f78 = FUN_080520b4 + 1;
        DAT_03004f7e = 3;
        FUN_08030630();
        paused = FALSE;
    }
    dword_3005C50 = 0;
    raceState->field57_0x7e8 = 0;
    do {
        if (dword_3005C50 != 0 && running) {
            if (DAT_03003acc < 0) {
                if ((DAT_03003acc & 0x40000000) != 0) {
                    FUN_0801531c();
                }
            } else if ((raceState->modeFlags & 0x200) != 0){
                if (raceState->field57_0x7e8 > 1 && (raceState->field57_0x7e8 < 4 || raceState->field57_0x7e8 == 5)) {
                    FUN_0801531c();
                } 
            }
            if (DAT_030066e4 != 0) {
                FUN_080600b8(&DAT_030066e0,2);
            }
            if ((gSceneState.raceState.modeFlags & 0xF00) == 0x100) {
                PTR_03004f78 = FUN_08051fd0 + 1;
                PTR_03004f74 = FUN_080514b0 + 1;
                PTR_03004f70 = FUN_08051554 + 1;
            } else {
                PTR_03004f78 = FUN_080521c4 + 1;
                PTR_03004f74 = FUN_080520d4 + 1;
                PTR_03004f70 = FUN_08052168 + 1;
            }
            FUN_08030630();
            running = FALSE;
        }
        FUN_0802fd3c();
        main_frameProc();
        FUN_0802fe4c((u32)((gSceneState.raceState.field48_0x7d4 & 0x40) == 0));
        if (raceState->playerCount < 2) {
            for (i = 0; i < 4; i++) {
                u16 keyBuffer = 0;
                u16 key = gKeyBuf[i];
                if ((key & DPAD_RIGHT) != 0)    keyBuffer = keyBuffer | 0x100;
                if ((key & DPAD_LEFT) != 0)     keyBuffer = keyBuffer | 0x200;
                if ((key & DPAD_DOWN) != 0)     keyBuffer = keyBuffer | 0x400;
                if ((key & DPAD_UP) != 0)       keyBuffer = keyBuffer | 0x800;
                if ((key & B_BUTTON) != 0)      keyBuffer = keyBuffer | 0x4000;
                if ((key & A_BUTTON) != 0)      keyBuffer = keyBuffer | 0x8000;
                if ((key & R_BUTTON) != 0)      keyBuffer = keyBuffer | 0x10;
                if ((key & L_BUTTON) != 0)      keyBuffer = keyBuffer | 0x40;
                key = gKeyTriggerBuf[i];
                if ((key & R_BUTTON) != 0)      keyBuffer = keyBuffer | 4;
                if ((key & L_BUTTON) != 0)      keyBuffer = keyBuffer | 0x80;
                if ((key & SELECT_BUTTON) != 0) keyBuffer = keyBuffer | 0x2000;
                if ((key & START_BUTTON) != 0)  keyBuffer = keyBuffer | 0x1000;
                raceState->inputs[i] = keyBuffer;
            }
            if (raceState->field48_0x7d4 & 0x40 == 0) {
                if (raceState->field48_0x7d4 & 0x80 != 0 && raceState->field48_0x7d4 & 0xf == 3 && (gKeyTriggerBuf[0] & START_BUTTON) != 0) {
                    FUN_0802bf94(raceState);
                }
                gSceneState.unkFrameCount++;
                FUN_0804d8f8();
                FUN_0804a4d8(raceState);
                if (!paused || dword_3005C50 == 0) {
                    FUN_0804978c(raceState);
                    FUN_0804aefc(raceState);
                    FUN_08051014();
                    FUN_080484e0();
                    FUN_08049850(raceState);
                    FUN_0804a878(raceState);
                    FUN_0804c0a8(raceState);
                    FUN_08049b0c(raceState);
                    sub_8049d78(raceState);
                    FUN_0804c38c(raceState);
                    FUN_0804389c();
                }
            }
        }
    } while (running || ((DAT_03004f7c & 2) != 0));
}