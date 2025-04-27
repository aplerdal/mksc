#include "common.h"
#include "singleplayer.h"
#include "frameHeap.h"
#include "scene.h"
#include "oam.h"
#include "dmaQueue.h"
#include "mp2000/m4a.h"
#include "songs.h"
#include "math.h"

extern u32 sub_8003fd0(u16 param_1,u16 param_2,SpmUnk2 *param_3, u16 **param_4);
extern void sub_8001FC0();
extern void map_setBufferDestination(s32 a1, s32 a2);
extern TrackCup spm_getSavedCup();
extern u32 DAT_03000040;
extern u16 **DAT_03000044;
extern u32 spm_getSavedTrack(SpmState *menuState);
extern void spm_loadBgGfx(SpmState* menuState, int loaded);
extern u32 spm_loadOtherGfx(SpmState *menuState);
extern u16 gKeyTriggerBuf[4];
extern u16 gKeyRepeatTriggerBuf[4];
extern void sub_800a84c(SpmState *menuState, int status);
extern void sub_800a75c(SpmState *menuState, int status);
extern void spm_loadCupGfx(SpmState *menuState,TrackCup cup);
extern UIElement gUnkUIElements[];
extern s32 gTrackNumber;
extern MenuInput gCupSelectInputs[5];
extern MenuInput gTrackSelectInputs[4];

bool8 track_select(SpmState* menuState, int status){
    u32 local4c, local50, local54, trackSelectionFlags;
    u32 unkFlags1, unkFlags2, unkFlags3, unkFlags4, unkFlags5;
    u32 state;
    s32 i, j, k, l;
    s32 v27, v35, v44;
    enum TrackCup cup;
    enum RaceSpeed raceSpeed;
    s32 track, playerIdx, iVar10;
    u16 keyTriggerBuf[4];
    u16 keyRepeatTriggerBuf[4];
    TrackSelectState* trackSelectState;

    local4c = 0;
    local50 = 0;
    local54 = 0;
    trackSelectState = &menuState->trackSelectState;
    trackSelectState->cup = CUP_MUSHROOM;
    trackSelectState->track = 0;
    trackSelectState->field2_0x8 = -1;
    trackSelectState->field3_0xc = 0;
    trackSelectState->field4_0x10 = 1;
    trackSelectState->field5_0x14 = 0;
    trackSelectState->field6_0x18 = 0;
    trackSelectState->field16_0xac = 0;
    trackSelectState->field17_0xb0 = 0;
    trackSelectState->field18_0xb4 = 0;
    trackSelectState->field19_0xb8 = 0xa0;
    trackSelectState->field20_0xba = 0;
    trackSelectState->field21_0xbc = 0;
    trackSelectState->field22_0xc0 = 0;
    unkFlags1 = 96;
    if (status != 0) {
        unkFlags1 = 94;
    }
    trackSelectState->unk_trackSelectionFlags1 = unkFlags1;
    if (status == 0) {
        trackSelectionFlags = 48;
    }
    else if (menuState->gamemode == GAMEMODE_GP) {
        trackSelectionFlags = 85;
        if (menuState->trackPage == 0) {
            trackSelectionFlags = 80;
        }
    }
    else {
        trackSelectionFlags = 65;
        if (menuState->trackPage == 0) {
            trackSelectionFlags = 60;
        }
    }
    trackSelectState->trackSelectionFlags = trackSelectionFlags;
    trackSelectState->field25_0xc8 = 0;
    trackSelectState->field26_0xcc = 0;
    trackSelectState->field27_0xd0 = 0;
    unkFlags2 = 112;
    if (status != 0) {
        unkFlags2 = 64;
    }
    trackSelectState->unk_trackSelectionFlags2 = unkFlags2;

    if (status == 0) {
        unkFlags3 = 88;
    } else {
        unkFlags3 = 109;
        if (menuState->trackPage == 0){
            unkFlags3 = 104;
        }
    }
    trackSelectState->unk_trackSelectionFlags3 = unkFlags3;
    trackSelectState->field30_0xd8 = 0;
    trackSelectState->field31_0xdc = -1;
    trackSelectState->field32_0xe0= 0;
    trackSelectState->field33_0xe4 = 0;
    trackSelectState->field34_0xe8 = 0;
    trackSelectState->field35_0xec = 5;
    trackSelectState->field36_0xf0 = 0;
    unkFlags4 = 100;
    if (status != 0) {
        unkFlags4 = 104;
    }
    trackSelectState->unk_trackSelectionFlags4 = unkFlags4;
    if (status == 0) {
        unkFlags5 = 64;
    } else {
        unkFlags5 = 101;
        if (menuState->trackPage == 0) {
            unkFlags5 == 96;
        }
    }
    trackSelectState->unk_trackSelectionFlags5 = unkFlags5;
    trackSelectState->field39_0xf8 = 0;
    trackSelectState->field40_0xfc = 0;
    trackSelectState->field41_0x100 = 5;
    trackSelectState->field42_0x104 = 0;
    trackSelectState->field44_0x508 = 0;
    trackSelectState->field45_0x50c = 0;
    trackSelectState->field46_0x510 = 0;
    trackSelectState->field47_0x514 = 0x140;
    trackSelectState->field48_0x516 = 0x140;
    trackSelectState->field49_0x518 = 0;
    trackSelectState->field50_0x51c = 0;
    trackSelectState->field51_0x520 = 0;
    trackSelectState->field52_0x524 = 0;
    trackSelectState->field53_0x528 = 0;
    menuState->field173_0xd34 = 0;
    menuState->field174_0xd38 = 0;
    menuState->field175_0xd3c = 0;
    menuState->field176_0xd40 = 0;
    trackSelectState->field54_0x52c = 0;
    trackSelectState->field55_0x530 = 0;
    trackSelectState->field56_0x534 = 0;
    trackSelectState->field57_0x538 = 0;
    sub_8001FC0(menuState);
    map_setBufferDestination(0, (void*)0x06003000);
    map_setBufferDestination(1, (void*)0x06001000);
    cup = spm_getSavedCup(menuState);
    menuState->cup = cup;
    trackSelectState->cup = cup;
    track = spm_getSavedTrack(menuState);
    menuState->track = track;
    trackSelectState->track = track;
    spm_loadBgGfx(menuState, status);
    spm_loadOtherGfx(menuState);
    renderCharacterSprites(menuState,menuState->character,0,1,7);
    if (menuState->gamemode == GAMEMODE_BATTLE) {
        dmaq_enqueueVBlank((void*)0x807d894,(void*)0x6008660,0x80000100);
    }
    else {
        raceSpeed = RACE_SPEED_150cc;
        if (menuState->gamemode != GAMEMODE_TIME_TRIALS) {
            raceSpeed = menuState->raceSpeed;
        }
        if (menuState->unlockedTracksTable[raceSpeed + 0x1e] != 0) {
            dmaq_enqueueVBlank((void*)0x807d694,(void*)0x6008660,0x80000100);
        }
    }
    if (menuState->gamemode == GAMEMODE_GP) {
      DAT_03000040 = 10;
      DAT_03000044 = (void*)0x80d95bc; // Table 1. Probably palettes or something because u16
    }
    else {
      DAT_03000040 = 0xc;
      DAT_03000044 = (void*)0x80d9588; // Table 2.
    }
    sub_8003fd0(0x80,0x18,&menuState->spmUnk2,DAT_03000044);
    while(TRUE) {
        while(TRUE) {
            if (*(u32*)0x203ebfc == 0) {
                FUN_0802fd3c();
            }
            main_frameProc();
            trackSelectState->field55_0x530 = 0;
            trackSelectState->field56_0x534 = 0;
            trackSelectState->field57_0x538 = 0;
            menuState->field216_0x11f4 = menuState->field216_0x11f4 + 1;
            menuState->field17_0x4c = menuState->field17_0x4c + 1;
            if (menuState->gamemode == GAMEMODE_GP) {
                trackSelectState->field3_0xc = 1;
            }
            else {
                trackSelectState->field3_0xc = 0;
            }
            if (LoadMenuGraphics(menuState) != 0) break;
            FUN_08003948(menuState);
        }
        if (menuState->field173_0xd34 == 0) break;
        if (menuState->unk_hasSpecialUnlocked != 0) {
            if ((menuState->field17_0x4c & 0x2f) < 0x20) {
                oam_renderCellData((u16*)0x80c9010,(Vec2s16*)0x80d9654,0,0,0,NULL);
            }
            oam_renderCellData((u16*)0x80c902c,(Vec2s16*)0x80d9658,0,0,0,NULL);
        }
        unk_LoadUnkGfx(menuState);
        FUN_08005dac(DAT_03000040,&menuState->spmUnk2);
        FUN_08009590(menuState);
        FUN_08009754(menuState);
        FUN_0800a1a4(menuState);
        FUN_08009fac(menuState);
        FUN_08009124(menuState,status);
        FUN_08003948(menuState);
        if (trackSelectState->field56_0x534 != 0) {
            FUN_0802e6fc(1);
        }
        if (trackSelectState->field57_0x538 != 0) {
            dmaq_enqueueVBlank((void*)0x2015400,(void*)0x6015000,0x80000600);
        }
        if (trackSelectState->field17_0xb0 == 0) {
            menuState->field173_0xd34 = 0;
        }
    }
    // Load player 1 inputs
    keyTriggerBuf[0] = gKeyTriggerBuf[0]; // gKeyTriggerBuf
    keyRepeatTriggerBuf[0] = gKeyRepeatTriggerBuf[0];
    playerIdx = menuState->playerIndex;
    // Clear inputs for other players
    if (playerIdx > 0) {
        for (i = 1; i < playerIdx+1; i++) {
            keyTriggerBuf[i] = 0;
            keyRepeatTriggerBuf[i] = 0;
        }
    }

    if (status > -1 && (status < 3 || (status < 19 && status > 9)) && playerIdx > -1) {
        for (i = 0; i <= playerIdx; i++) {
            int mask = 2;
            if (status < 14) {
                mask = 1;
            }
            if ((mask & keyRepeatTriggerBuf[i])!= 0) {
                if (status < 3) {
                    if (menuState->gamemode == GAMEMODE_BATTLE || status != 0) {
                        local4c = 5;
                    } else {
                        local4c = 3;
                    }
                } else {
                    local4c = -1;
                    if (status < 14) {
                        local4c = 100;
                    }
                }
                local54 = 19;
                local50 = 0;
                break;
            }
        }
    }
    iVar10 = menuState->field18_0x50;
    if (iVar10 != 0) {
        menuState->field18_0x50 = 0;
        local4c = 3;
        if (menuState->gamemode == GAMEMODE_BATTLE) {
            local4c = 5;
        }
        local54 = 20;
    }
    
    switch (local54)
    {
    case 0:
    {
        if (menuState->gamemode == GAMEMODE_BATTLE) {
            sub_800a84c(menuState, status);
        } else {
            sub_800a75c(menuState, status);
        }
        irq_updateMask(2, 4);
        v27 = 1;
        //goto Label270;
        break;
    }
    case 1:
    {
        s32 iVar2;
        s32 iVar11 = local50 + 1;
        if ( iVar11 < 16) {
            menuState->bgState.BLDCNT = 12096;
            menuState->bgState.BLDALPHA = 1546;
            v35 = 2;
            //goto Label321;
        }
        if (status != 0) {
            menuState->bgState.BLDCNT = 0xff;
            iVar2 = iVar11 * -16;
            if (iVar2 < 0) {
                // Adjust fixed point rounding on negative numbers
                iVar2 = iVar2 + 0xf;
            }
            menuState->bgState.BLDY = (short)(iVar2 >> 4) + 0x10;
        }
        iVar2 = iVar11 * -0xA0;
        if (iVar2 < 0) {
            iVar2 = iVar2 + 0xf;
        }
        //v31 = &menuState->field213_0x11e8;
        //v32 = (iVar2 >> 4) + 0x168;
        //goto Label332;
        break;
    }
    case 2:
    {
        if ((menuState->gamemode == GAMEMODE_BATTLE && local50 == 0) || (menuState->gamemode != GAMEMODE_BATTLE && local50 == 20)) {
            trackSelectState->field16_0xac = 1;
        } else {
            local50++;
            if (trackSelectState->field5_0x14 * 4 + 0x10 < local50) {
                trackSelectState->field35_0xec = 0;
                trackSelectState->field41_0x100 = 0;
                if (menuState->gamemode == GAMEMODE_BATTLE) {
                    local54 = 5;
                }else if (status != 0) {
                    for (i = 0; i < trackSelectState->field5_0x14; i++){
                        if (i != trackSelectState->cup) {
                            trackSelectState->unkCupContainer[i].pos.y = 0;
                            trackSelectState->unkCupContainer[i].pos.x = 0;
                            trackSelectState->unkCupContainer[i].scale.x = 0;
                        }
                    }
                    trackSelectState->field45_0x50c = 1;
                    local54 = 5;
                } else {
                    local54 = 3;
                }
            } else {
                u32 **ppuVar15 = (u32**)(0x080d94fc);
                s32 iVar16 = 0;
                SpmUnk1* pSVar14 = &trackSelectState->field7_0x1c;
                s32 iVar2, iVar8;
                for (i = 0; i < trackSelectState->field5_0x14; i++) {
                    if (local50 >= 0 && local50 <= 20) {
                        if (menuState->gamemode == GAMEMODE_BATTLE) {
                            iVar2 = (s32)*(s16*)(0x80d956c + iVar16);
                            iVar8 = iVar2 + 0xf0;
                        } else {
                            if (status == 0) {
                                iVar8 = *(s16 *)(ppuVar15 + 3) + 0xf0;
                            } else {
                                iVar8 = 0x11e;
                            }
                            iVar2 = 0x2e;
                            if (status == 0) {
                                iVar2 = (s32)*(s16 *)(ppuVar15 + 3);
                            }
                        }
                        pSVar14->field1_0x4 = (s16)FUN_0800e930(iVar8,iVar2,local50,0x14,10);
                    }
                    
                    local50 -= 4;
                    ppuVar15 += 5;
                    iVar16 += 0x14;
                    pSVar14 += 3;
                }
            }
        }
        // goto Label368;
        break;
    }
    case 3:
    {
        s32 v47 = 0;
        s32 player;
        TrackCup newCup;
        
        for (player = 0; player < playerIdx; player++) {
            TrackCup cup = trackSelectState->cup;
            switch (keyRepeatTriggerBuf[player])
            {
            case DPAD_RIGHT:
                newCup = gCupSelectInputs[cup].right;
                if (newCup != CUP_UNSET) trackSelectState->cup = newCup;
                break;
            case DPAD_LEFT:
                newCup = gCupSelectInputs[cup].left;
                if (newCup != CUP_UNSET) trackSelectState->cup = newCup;
                break;
            case DPAD_UP:
                newCup = gCupSelectInputs[cup].up;
                if (newCup != CUP_UNSET) trackSelectState->cup = newCup;
                break;
            case DPAD_DOWN:
                newCup = gCupSelectInputs[cup].down;
                if (newCup != CUP_UNSET) trackSelectState->cup = newCup;
                break;
            }
            if (cup != trackSelectState->cup) {
                RaceSpeed speed;
                m4aSongNumStart(SONG_141);
                spm_loadCupGfx(menuState, cup);
                speed = RACE_SPEED_150cc;
                if (menuState->gamemode != GAMEMODE_TIME_TRIALS) {
                    speed = menuState->raceSpeed;
                }
                if (menuState->unlockedTracksTable[speed + 10*3] == 0 || trackSelectState->cup != CUP_SPECIAL) {
                    trackSelectState->field26_0xcc = 0;
                } else {
                    trackSelectState->field26_0xcc = 3;
                }
                trackSelectState->field35_0xec = 0;
                trackSelectState->field41_0x100 = 0;
                if (menuState->gamemode != GAMEMODE_GP) {
                    trackSelectState->field53_0x528 = 0;
                    trackSelectState->track = 0;
                }
                trackSelectState->field16_0xac = 1;
                //goto Label368;
            } else {
                u16 key;
                key = keyTriggerBuf[player];
                if (key & (A_BUTTON | START_BUTTON) != 0) {
                    s32 unlocked = 0;
                    RaceSpeed speed = RACE_SPEED_150cc;
                    if (menuState->gamemode != GAMEMODE_TIME_TRIALS) {
                        speed = menuState->raceSpeed;
                    }
                    if (menuState->gamemode != GAMEMODE_BATTLE) {
                        if (menuState->trackPage == 0) {
                            unlocked = menuState->unlockedTracksTable[cup*3+speed];
                        } else {
                            unlocked = menuState->unlockedTracksTable[15+cup*3+speed];
                        }   
                    }
                    if (unlocked == 0) {
                        m4aSongNumStart(SONG_142);
                        trackSelectState->field45_0x50c = 1;
                        trackSelectState->cup = menuState->cup;
                        local54 = 4;
                    } else {
                        m4aSongNumStart(SONG_145);
                    }
                } else if ((key & B_BUTTON) != 0) {
                    m4aSongNumStart(SONG_144);
                    local54 = 14;
                } else if ((key & (R_BUTTON | L_BUTTON)) != 0) {
                    if (
                        (menuState->gamemode != GAMEMODE_BATTLE) &&
                        (menuState->unk_hasSpecialUnlocked != 0) &&
                        (trackSelectState->unkCupContainer[trackSelectState->field5_0x14 + -1].scale.x == 1)
                    ) {
                        m4aSongNumStart(SONG_147);
                        for (i = 0; i < trackSelectState->field5_0x14; i++) {
                            trackSelectState->unkCupContainer[i].scale.x = 5;
                        }
                        trackSelectState->field17_0xb0 = 8;
                        menuState->field174_0xd38 = 1;
                        if (menuState->trackPage == 0) {
                            dmaq_enqueueVBlank((void*)0x2018000,(void*)0x6010a00,0x80000100);
                        } else {
                            dmaq_enqueueVBlank((void*)0x2017c00,(void*)0x6010a00,0x80000100);
                        }
                        if (menuState->trackPage == 0) {
                            menuState->trackPage = 1;
                        } else {
                            menuState->trackPage = 0;
                        }
                        trackSelectState->field35_0xec = 0;
                        trackSelectState->field41_0x100 = 0;
                        menuState->field173_0xd34 = 1;
                    }
                }
            }
            break;
        }
        if (menuState->unk_hasSpecialUnlocked != 0) {
            if ((menuState->field17_0x4c & 0x2f) < 0x20) {
                oam_renderCellData((u16*)0x080C9010, (Vec2s16*)0x80d9654, 0, 0, 0, NULL);
            }
            oam_renderCellData((u16*)0x080C902C, (Vec2s16*)0x80d9658, 0, 0, 0, NULL);
        }
        //goto Label368;
        break;
    }
    case 4:
    {
        if (menuState->gamemode == GAMEMODE_GP && local50 < 9) {
            trackSelectState->unkCupContainer[4].field0x14 = (short)((math_sin((s16)(adjust_fixed((u16)(local50<<11))>>6)) * -48 >> 0xf) + 0x10c);
            trackSelectState->field13_0x9e = 0x100;
            trackSelectState->field12_0x9c = 0x100;
        }
        local50++;
        if (local50 > 16) {
            for (i = 0; i < trackSelectState->field5_0x14; i++) {
                trackSelectState->unkCupContainer[i].pos = (Vec2s16){.x=0, .y=0};
            }
            if (menuState->gamemode != GAMEMODE_GP) {
                local54 = 8;
            }
            local50 = 0;
        } else {
            s32 unkPageRel;
            s16 sin;
            s16 angle = (local50<<26)>>10;
            for (i = 0; i < trackSelectState->field5_0x14; i++) {
                Vec2s16 orgin, pos;
                orgin = gUnkUIElements[i].pos;
                pos.x = (s16)(math_sin(angle) * (0x2e - orgin.x >> 0xf)) + orgin.x;
                pos.y = (s16)(math_sin(angle) * ((menuState->gamemode==GAMEMODE_GP ? 0x50 : 0x3c) - orgin.y >> 0xf)) + orgin.y;
                trackSelectState->unkCupContainer[i].pos = pos;
                if (i != trackSelectState->cup) {
                    u16 scale = (math_sin(angle) * 62 >> 0xf) + 0x110;
                    trackSelectState->unkCupContainer[i].scale = (Vec2s16){.x=scale,.y=scale};
                }
            }
            sin = math_sin((s16)adjust_fixed(angle));
            trackSelectState->unk_trackSelectionFlags1 = (s16)(sin*-2 >>0xf) + 96;

            if (menuState->gamemode == GAMEMODE_GP) {
                if (menuState->trackPage == 0) {
                    unkPageRel = sin * 32;
                } else {
                    unkPageRel = (sin * 36) + sin;
                }
            } else if (menuState->trackPage == 0) {
                unkPageRel = sin * 12;
            } else {
                unkPageRel = (sin * 16) + sin;
            }
            trackSelectState->trackSelectionFlags = (unkPageRel>>0xf) + 48;
            trackSelectState->unk_trackSelectionFlags2 = (sin * -48 >> 0xf) + 112;
            trackSelectState->unk_trackSelectionFlags3 = ((sin * (menuState->trackPage == 0 ? 16 : 21)) >> 0xf) + 88;
            trackSelectState->field35_0xec = ((sin * 4) >> 0xf) + 100;
            trackSelectState->unk_trackSelectionFlags5 = ((sin * (menuState->trackPage == 0 ? 32 : 37)) >> 0xf) + 100;
        }
        //goto Label368;
        break;
    }
    case 5:
    {
        trackSelectState->field54_0x52c = 0;
        trackSelectState->field3_0xc = 1;
        for (i = 0; i <= menuState->playerIndex; i++) {
            s32 track = trackSelectState->track;
            switch (keyRepeatTriggerBuf[i])
            {
            case DPAD_LEFT:
                trackSelectState->track = (int)gTrackSelectInputs[track].left;
                break;
            case DPAD_RIGHT:
                trackSelectState->track = (int)gTrackSelectInputs[track].right;
                break;
            case DPAD_UP:
                trackSelectState->track = (int)gTrackSelectInputs[track].up;
                break;
            case DPAD_DOWN:
                trackSelectState->track = (int)gTrackSelectInputs[track].down;
                break;
            }
            if (track != trackSelectState->track) {
                m4aSongNumStart(SONG_141);
                *(u32*)(0x0203ebfc) = 2;
                gTrackNumber = trackSelectState->cup * 4 + trackSelectState->track;
                trackSelectState->field55_0x530 = 1;
                break;
            }
            if ((gKeyTriggerBuf[i] & A_BUTTON|START_BUTTON) != 0) {
                m4aSongNumStart(SONG_142);
                menuState->track = trackSelectState->track;
                local54 = 7;
                local50 = 0;
                break;
            }
            if ((gKeyTriggerBuf[i] & B_BUTTON) != 0) {
                m4aSongNumStart(SONG_144);
                trackSelectState->field45_0x50c = 4;
                local54 = 6;
                if (menuState->gamemode == GAMEMODE_BATTLE) {
                    local54 = 14;
                }
                local50 = 0;
            }
        }
        if (spm_loadOtherGfx(menuState) != 0) {
            trackSelectState->field57_0x538 = 1;
        } 
        break;
    }
    case 6:
    {
        if (menuState->gamemode == GAMEMODE_GP) {
            if (local50 < 9) {
                trackSelectState->unkCupContainer[4].field0x14 = (s16)(math_sin(adjust_fixed((s16)local50<<11)) * 48 >> 0xf) + 220;
                trackSelectState->field13_0x9e = 1<<8;
                trackSelectState->field12_0x9c = 1<<8;
            } else {
                trackSelectState->field13_0x9e = 0;
                trackSelectState->field12_0x9c = 0;
            }
        }
        local50++;
        if (local50 > 16) {
            for (i = 0; i < trackSelectState->field5_0x14; i++) {
                trackSelectState->unkCupContainer[i].buf1[0] = 1;
            }
        } else {
            s32 sVar3,iVar15,iVar4;
            s32 sin = math_sin(adjust_fixed((s16)local50<<10));
            for (i = 0; i < trackSelectState->field5_0x14; i++) {
                s32 offset;
                trackSelectState->field_0x20 = (s16)(sin * (gUnkUIElements[i].pos.x - 46) >> 0xf) + 46;
                offset = (menuState->gamemode = GAMEMODE_GP) ? 80 : 60;
                trackSelectState->field_0x22 = (s16)(sin * (gUnkUIElements[i].pos.y - offset) >> 0xf) + offset;

                if (trackSelectState != trackSelectState->cup) {
                    s32 var = (s16)(sin * -98 >>0xf) + 370;
                    trackSelectState->unkCupContainer[0].pos.x = var;
                    trackSelectState->unkCupContainer[0].pos.y = var;
                    trackSelectState->unkCupContainer[0].scale.y = 0;    
                }
            }
            trackSelectState->unk_trackSelectionFlags1 = (s16)(sin * 2 >> 0xf) + 94;
            trackSelectState->trackSelectionFlags = ((menuState->gamemode == GAMEMODE_GP) ? 80 : 60) + ((menuState->trackPage == 0) ? 0 : 5) + (s16)((sin * -((menuState->gamemode == GAMEMODE_GP) ? 32 : 12) + ((menuState->trackPage == 0) ? 0 : 5)) >> 0xf);
            trackSelectState->unk_trackSelectionFlags2 = (s16)((sin * 48) >> 0xf) + 64;
            trackSelectState->unk_trackSelectionFlags3 = (s16)(sin * -((menuState->trackPage == 0)?16:21) >> 0xf) + ((menuState->trackPage == 0)?104:109);
            trackSelectState->field35_0xec = (s16)((sin * -4) >> 0xf) + 104;
            trackSelectState->unk_trackSelectionFlags5 = 96 + ((menuState->trackPage == 0) ? 0 : 5) + (u16)((sin * ((menuState->trackPage == 0) ? 32 : 37)) >> 0xf);
        }
        if (spm_loadOtherGfx(menuState)) {
            trackSelectState->field57_0x538 = 1;
        }
        break;
    }
    case 7:
    {
        // 
        break;
    }
    case 8:
    {
        // 
        break;
    }
    case 9:
    {
        // 
        break;
    }
    case 10:
    {
        // 
        break;
    }
    case 11:
    {
        // 
        break;
    }
    case 12:
    {
        // 
        break;
    }
    case 13:
    {
        // 
        break;
    }
    case 14:
    {
        // 
        break;
    }
    case 15:
    {
        // 
        break;
    }
    case 16:
    {
        // 
        break;
    }
    case 17:
    {
        // 
        break;
    }
    case 18:
    {
        // 
        break;
    }
    case 19:
    {
        // 
        break;
    }
    case 20:
    {
        // 
        break;
    }
    case 21:
    {
        // 
        break;
    }
    default:
    {
        // func_0x0800c422
        break;
    }
    }
}