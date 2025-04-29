#include "common.h"
#include "dmaQueue.h"
#include "frameHeap.h"
#include "math.h"
#include "main.h"
#include "mp2000/m4a.h"
#include "oam.h"
#include "palette.h"
#include "scene.h"
#include "singleplayer.h"
#include "songs.h"
#include "transition.h"

extern void renderCharacterSprites(SpmState *menuState, s32 character, u32 param_3, s32 param_4, s32 palette);
extern void sub_8001FC0();
extern void map_setBufferDestination(s32 a1, s32 a2);
extern void spm_loadBgGfx(SpmState *menuState, s32 loaded);
extern void sub_800A84C(SpmState *menuState, s32 status);
extern void sub_800A75C(SpmState *menuState, s32 status);
extern void sub_8008FA4(SpmState* menuState, s32 track, s32 param_3);
extern void sub_8005DAC(u32 param_1, SpmUnk2* spmUnk2);
extern void sub_8003948(SpmState* menuState);
extern void sub_8009590(SpmState* menuState);
extern void sub_8009754(SpmState* menuState);
extern void sub_800A1A4(SpmState* menuState);
extern void sub_8009FAC(SpmState* menuState);
extern void sub_8009998(SpmState* menuState);
extern void sub_8008D14(SpmState* menuState);
extern void sub_8009C84(SpmState* menuState);
extern void sub_8009124(SpmState* menuState, s32 status);
extern void sub_8008E0C(SpmState* menuState, s32 track);
extern void sub_8002E08(SpmState* menuState, u8 menuPage);
extern void sub_8002E50(SpmState* menuState, u8 playerCount);
extern void spm_loadCupGfx(SpmState *menuState, TrackCup cup);
extern void sub_8005E04(u16* param_1,u16* param_2,u16* param_3, s32 param_4, u32 param_5);
extern u32 sub_8003FD0(u16 param_1, u16 param_2, SpmUnk2 *param_3, u16 **param_4);
extern u32 spm_getSavedTrack(SpmState *menuState);
extern u32 spm_loadOtherGfx(SpmState *menuState);
extern s32 anim_ease(s32 start, s32 end, s32 time, s32 modifier, Easing type);
extern s32 spm_loadTrackSelectGfx(SpmState* menuState);
extern bool32 sub_8003930(SpmState* menuState);
extern TrackCup spm_getSavedCup();

extern u32 DAT_03000040;
extern u16 **DAT_03000044;
extern UIElement gUnkUIElements[];
extern s32 gTrackNumber;
extern MenuInput gCupSelectInputs[5];
extern MenuInput gTrackSelectInputs[4];
extern u16 gKeyTriggerBuf[4];
extern u16 gKeyRepeatTriggerBuf[4];

bool8 track_select(SpmState *menuState, s32 status) {
    u32 local4c, local50, local54, trackSelectionFlags;
    u32 unkFlags1, unkFlags2, unkFlags3, unkFlags4, unkFlags5;
    u32 state;
    s32 i;
    s32 v27, v35, v44;
    s32 track, playerIdx, iVar10;
    u16 keyTriggerBuf[4];
    u16 keyRepeatTriggerBuf[4];
    TrackSelectState *trackSelectState;

    local4c = 0;
    local50 = 0;
    local54 = 0;
    trackSelectState = &menuState->trackSelectState;
    trackSelectState->cup = CUP_MUSHROOM;
    trackSelectState->track = 0;
    trackSelectState->field2_0x8 = -1;
    trackSelectState->field3_0xc = 0;
    trackSelectState->field4_0x10 = 1;
    trackSelectState->numCups = 0;
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
    } else if (menuState->gamemode == GAMEMODE_GP) {
        trackSelectionFlags = 85;
        if (menuState->trackPage == 0) {
            trackSelectionFlags = 80;
        }
    } else {
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
        if (menuState->trackPage == 0) {
            unkFlags3 = 104;
        }
    }
    trackSelectState->unk_trackSelectionFlags3 = unkFlags3;
    trackSelectState->field30_0xd8 = 0;
    trackSelectState->field31_0xdc = -1;
    trackSelectState->field32_0xe0 = 0;
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
    menuState->unkReloadGfx = FALSE;
    menuState->field174_0xd38 = 0;
    menuState->field175_0xd3c = 0;
    menuState->field176_0xd40 = 0;
    trackSelectState->field54_0x52c = 0;
    trackSelectState->field55_0x530 = 0;
    trackSelectState->field56_0x534 = 0;
    trackSelectState->field57_0x538 = 0;
    sub_8001FC0(menuState);
    map_setBufferDestination(0,0x06003000);
    map_setBufferDestination(1,0x06001000);
    menuState->cup = spm_getSavedCup(menuState);
    trackSelectState->cup = menuState->cup;
    menuState->track = spm_getSavedTrack(menuState);
    trackSelectState->track = menuState->track;
    spm_loadBgGfx(menuState, status);
    spm_loadOtherGfx(menuState);
    renderCharacterSprites(menuState, menuState->character, 0, TRUE, 7);
    if (menuState->gamemode == GAMEMODE_BATTLE) {
        dmaq_enqueueVBlank((void *)0x807d894, (void *)0x6008660, 0x80000100);
    } else {
        RaceSpeed speed = RACE_SPEED_150cc;
        if (menuState->gamemode != GAMEMODE_TIME_TRIALS) {
            speed = menuState->raceSpeed;
        }
        if (menuState->unlockedTracksTable[speed + 0x1e] != 0) {
            dmaq_enqueueVBlank((void *)0x807d694, (void *)0x6008660, 0x80000100);
        }
    }
    if (menuState->gamemode == GAMEMODE_GP) {
        DAT_03000040 = 10;
        DAT_03000044 = (void *)0x80d95bc; // Table 1. Probably palettes or something because u16
    } else {
        DAT_03000040 = 12;
        DAT_03000044 = (void *)0x80d9588; // Table 2.
    }
    sub_8003FD0(0x80, 0x18, menuState->spmUnk2, DAT_03000044);
    // Menu loop
    while (TRUE) {
        while (TRUE) {
            while (TRUE) {
                if (*(u32 *)0x203ebfc == 0) {
                    oam_update();
                }
                main_frameProc();
                trackSelectState->field55_0x530 = 0;
                trackSelectState->field56_0x534 = 0;
                trackSelectState->field57_0x538 = 0;
                menuState->field216_0x11f4 = menuState->field216_0x11f4 + 1;
                menuState->unlockedTracks = menuState->unlockedTracks + 1;
                if (menuState->gamemode == GAMEMODE_GP) {
                    trackSelectState->field3_0xc = 1;
                } else {
                    trackSelectState->field3_0xc = 0;
                }
                if (spm_loadTrackSelectGfx(menuState) != 0)
                    break;
                sub_8003948(menuState);
            }
            if (!menuState->unkReloadGfx)
                break;
            if (menuState->unlockedSpecialCup) {
                if ((menuState->unlockedTracks & 0x2f) < 0x20) {
                    oam_renderCellData((u16 *)0x80c9010, (Vec2s16 *)0x80d9654, 0, 0, 0, NULL);
                }
                oam_renderCellData((u16 *)0x80c902c, (Vec2s16 *)0x80d9658, 0, 0, 0, NULL);
            }
            spm_loadOtherGfx(menuState);
            sub_8005DAC(DAT_03000040, menuState->spmUnk2);
            sub_8009590(menuState);
            sub_8009754(menuState);
            sub_800A1A4(menuState);
            sub_8009FAC(menuState);
            sub_8009124(menuState, status);
            sub_8003948(menuState);
            if (trackSelectState->field56_0x534 != 0) {
                *(u32*)0x30016e0 = 1 | *(u32*)0x30016e0;
            }
            if (trackSelectState->field57_0x538 != 0) {
                dmaq_enqueueVBlank((void *)0x2015400, (void *)0x6015000, 0x80000600);
            }
            if (trackSelectState->field17_0xb0 == 0) {
                menuState->unkReloadGfx = FALSE;
            }
        }
        keyTriggerBuf[0] = gKeyTriggerBuf[0];
        keyRepeatTriggerBuf[0] = gKeyRepeatTriggerBuf[0];
        playerIdx = menuState->playerIndex;
        for (i = 1; i < playerIdx; i++) {
            keyTriggerBuf[i] = 0;
            keyRepeatTriggerBuf[i] = 0;
        }

        if (status >= 0 && (status <= 2 || (status <= 18 && status >= 10)) && playerIdx > -1) {
            for (i = 0; i <= playerIdx; i++) {
                int mask = B_BUTTON;
                if (status < 14) {
                    mask = A_BUTTON;
                }
                if ((mask & keyRepeatTriggerBuf[i]) != 0) {
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
        if (menuState->field18_0x50) {
            menuState->field18_0x50 = FALSE;
            local4c = 3;
            if (menuState->gamemode == GAMEMODE_BATTLE) {
                local4c = 5;
            }
            local54 = 20;
        }

        switch (local54) {
        case 0: {
            if (menuState->gamemode == GAMEMODE_BATTLE) {
                sub_800A84C(menuState, status);
            } else {
                sub_800A75C(menuState, status);
            }
            irq_updateMask(IRQ_UPDATE_MODE_OR, IRQ_MASK_VCOUNT);
            local54 = 1;
        }
        case 1: {
            s32 iVar2;
            local50++;
            if (local50 <= 16) {
                if (status != 0) {
                    menuState->bgState.BLDCNT = 0xff;
                    menuState->bgState.BLDY = (short)(adjust_fixed(local50 * -16) >> 4) + 16;
                }
                menuState->field213_0x11e8 = adjust_fixed(local50 * -10) + 360;
                local54 = 2;
                // todo: double check this
                //  local54 = 2?
            }
            menuState->bgState.BLDCNT = 0x2f40;
            menuState->bgState.BLDALPHA = 0x60a;
            break;
        }
        case 2: {
            if (menuState->gamemode == GAMEMODE_BATTLE) {
                if (local50 == 0)
                    trackSelectState->field16_0xac = 1;
                ;
            } else if (local50 == 20) {
                trackSelectState->field16_0xac = 1;
            }
            local50++;
            if (trackSelectState->numCups * 4 + 16 >= local50) {
                for (i = 0; i < trackSelectState->numCups; i++) {
                    if (local50 >= 0 && local50 <= 20) {
                        s32 end, start, param3;
                        if (menuState->gamemode == GAMEMODE_BATTLE) {
                            end = *(s16 *)(0x203655b + i * 5);
                            start = end + 240;
                        } else {
                            if (status == 0) {
                                start = gUnkUIElements[i].pos.x + 0xf0;
                            } else {
                                start = 0x11e;
                            }
                            end = 0x2e;
                            if (status == 0) {
                                end = gUnkUIElements[i].pos.x;
                            }
                        }
                        trackSelectState->unkCupContainer[i].posX = anim_ease(start, end, local50 - 4 * i, 20, EASE_BOUNCE_OUT);
                    }
                }
            } else {
                trackSelectState->field35_0xec = 0;
                trackSelectState->field41_0x100 = 0;
                if (menuState->gamemode == GAMEMODE_BATTLE) {
                    local54 = local4c;
                } else if (status != 0) {
                    for (i = 0; i < trackSelectState->numCups; i++) {
                        if (i != trackSelectState->cup) {
                            trackSelectState->unkCupContainer[i].scaleX = 0;
                            trackSelectState->unkCupContainer[i].scaleY = 0;
                            trackSelectState->unkCupContainer[i].unk2 = 0;
                        }
                    }
                    trackSelectState->field45_0x50c = 1;
                }
            }
            break;
        }
        case 3: {
            s32 v47 = 0;
            TrackCup newCup;

            for (i = 0; i < playerIdx; i++) {
                TrackCup cup = trackSelectState->cup;
                switch (keyRepeatTriggerBuf[i]) {
                case DPAD_RIGHT:
                    newCup = gCupSelectInputs[cup].right;
                    if (newCup != CUP_UNSET)
                        trackSelectState->cup = newCup;
                    break;
                case DPAD_LEFT:
                    newCup = gCupSelectInputs[cup].left;
                    if (newCup != CUP_UNSET)
                        trackSelectState->cup = newCup;
                    break;
                case DPAD_UP:
                    newCup = gCupSelectInputs[cup].up;
                    if (newCup != CUP_UNSET)
                        trackSelectState->cup = newCup;
                    break;
                case DPAD_DOWN:
                    newCup = gCupSelectInputs[cup].down;
                    if (newCup != CUP_UNSET)
                        trackSelectState->cup = newCup;
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
                    if (menuState->unlockedTracksTable[speed + 10 * 3] == 0 || trackSelectState->cup != CUP_SPECIAL) {
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
                } else {
                    u16 key = keyTriggerBuf[i];
                    if ((key & (A_BUTTON | START_BUTTON)) != 0) {
                        s32 unlocked = 0;
                        RaceSpeed speed = RACE_SPEED_150cc;
                        if (menuState->gamemode != GAMEMODE_TIME_TRIALS) {
                            speed = menuState->raceSpeed;
                        }
                        if (menuState->gamemode != GAMEMODE_BATTLE) {
                            if (menuState->trackPage == 0) {
                                unlocked = menuState->unlockedTracksTable[cup * 3 + speed];
                            } else {
                                unlocked = menuState->unlockedTracksTable[15 + cup * 3 + speed];
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
                        if ((menuState->gamemode != GAMEMODE_BATTLE) && menuState->unlockedSpecialCup && trackSelectState->unkCupContainer[trackSelectState->numCups + -1].scale == 1) {
                            m4aSongNumStart(SONG_147);
                            for (i = 0; i < trackSelectState->numCups; i++) {
                                trackSelectState->unkCupContainer[i].scale = 5;
                            }
                            trackSelectState->field17_0xb0 = 8;
                            menuState->field174_0xd38 = 1;
                            if (menuState->trackPage == 0) {
                                dmaq_enqueueVBlank((void *)0x2018000, (void *)0x6010a00, 0x80000100);
                            } else {
                                dmaq_enqueueVBlank((void *)0x2017c00, (void *)0x6010a00, 0x80000100);
                            }
                            if (menuState->trackPage == 0) {
                                menuState->trackPage = 1;
                            } else {
                                menuState->trackPage = 0;
                            }
                            trackSelectState->field35_0xec = 0;
                            trackSelectState->field41_0x100 = 0;
                            menuState->unkReloadGfx = TRUE;
                        }
                    }
                }
                break;
            }
            if (menuState->unlockedSpecialCup) {
                if ((menuState->unlockedTracks & 0x2f) < 0x20) {
                    oam_renderCellData((u16 *)0x080C9010, (Vec2s16 *)0x80d9654, 0, 0, 0, NULL);
                }
                oam_renderCellData((u16 *)0x080C902C, (Vec2s16 *)0x80d9658, 0, 0, 0, NULL);
            }
            break;
        }
        case 4: {
            if (menuState->gamemode == GAMEMODE_GP && local50 < 9) {
                trackSelectState->field_0x98 = scale_sine(local50 << 11, -48, 268);
                trackSelectState->field13_0x9e = 0x100;
                trackSelectState->field12_0x9c = 0x100;
            }
            local50++;
            if (local50 > 16) {
                for (i = 0; i < trackSelectState->numCups; i++) {
                    trackSelectState->unkCupContainer[i].scaleX = 0;
                    trackSelectState->unkCupContainer[i].scaleY = 0;
                }
                if (menuState->gamemode != GAMEMODE_GP) {
                    local54 = 8;
                }
                local50 = 0;
            } else {
                s32 unkPageRel;
                for (i = 0; i < trackSelectState->numCups; i++) {
                    trackSelectState->unkCupContainer[i].posX = scale_sine(local50 << 11, 46 - gUnkUIElements[i].pos.x, gUnkUIElements[i].pos.x);
                    trackSelectState->unkCupContainer[i].posY = scale_sine(local50 << 11, ((menuState->gamemode == GAMEMODE_GP) ? 80 : 60) - gUnkUIElements[i].pos.y, gUnkUIElements[i].pos.y);
                    if (i != trackSelectState->cup) {
                        s32 scale = scale_sine(local50 << 11, 98, 110);
                        trackSelectState->unkCupContainer[i].scaleX = scale;
                        trackSelectState->unkCupContainer[i].scaleY = scale;
                        trackSelectState->unkCupContainer[i].unk2 = 0;
                    }
                }
                trackSelectState->unk_trackSelectionFlags1 = scale_sine(local50 << 11, -2, 96);
                if (menuState->gamemode == GAMEMODE_GP) {
                    if (menuState->trackPage == 0) {
                        trackSelectState->trackSelectionFlags = scale_sine(local50 << 1, 32, 48);
                    } else {
                        trackSelectState->trackSelectionFlags = scale_sine(local50 << 1, 37, 48);
                    }
                } else if (menuState->trackPage == 0) {
                    trackSelectState->trackSelectionFlags = scale_sine(local50 << 1, 12, 48);
                } else {
                    trackSelectState->trackSelectionFlags = scale_sine(local50 << 1, 17, 48);
                }
                trackSelectState->unk_trackSelectionFlags2 = scale_sine(local50 << 11, -48, 112);
                trackSelectState->unk_trackSelectionFlags3 = scale_sine(local50 << 11, (menuState->trackPage == 0 ? 16 : 21), 88);
                trackSelectState->field35_0xec = scale_sine(local50 << 11, 4, 100);
                trackSelectState->unk_trackSelectionFlags5 = scale_sine(local50 << 11, (menuState->trackPage == 0 ? 32 : 37), 100);
            }
            break;
        }
        case 5: {
            trackSelectState->field54_0x52c = 0;
            trackSelectState->field3_0xc = 1;
            for (i = 0; i <= menuState->playerIndex; i++) {
                s32 track = trackSelectState->track;
                switch (keyRepeatTriggerBuf[i]) {
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
                    *(u32 *)(0x0203ebfc) = 2;
                    gTrackNumber = trackSelectState->cup * 4 + trackSelectState->track;
                    trackSelectState->field55_0x530 = 1;
                    break;
                }
                if ((gKeyTriggerBuf[i] & (A_BUTTON | START_BUTTON)) != 0) {
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
            break;
        }
        case 6: {
            if (menuState->gamemode == GAMEMODE_GP) {
                if (local50 < 9) {
                    trackSelectState->field_0x98 = scale_sine(local50 << 11, 48, 220);
                    trackSelectState->field13_0x9e = 1 << 8;
                    trackSelectState->field12_0x9c = 1 << 8;
                } else {
                    trackSelectState->field13_0x9e = 0;
                    trackSelectState->field12_0x9c = 0;
                }
            }
            local50++;
            if (local50 > 16) {
                for (i = 0; i < trackSelectState->numCups; i++) {
                    trackSelectState->unkCupContainer[i].unk2 = 1;
                }
            } else {
                for (i = 0; i < trackSelectState->numCups; i++) {
                    s32 offset;
                    trackSelectState->unkCupContainer[i].posX = scale_sine(local50 << 11, gUnkUIElements[i].pos.x - 46, 46);
                    offset = (menuState->gamemode = GAMEMODE_GP) ? 80 : 60;
                    trackSelectState->unkCupContainer[i].posY = scale_sine(local50 << 11, gUnkUIElements[i].pos.x - offset, offset);

                    if (i != trackSelectState->cup) {
                        s32 scale = scale_sine(local50 << 11, -98, 370);
                        trackSelectState->unkCupContainer[i].scaleX = scale;
                        trackSelectState->unkCupContainer[i].scaleY = scale;
                        trackSelectState->unkCupContainer[i].unk2 = 0;
                    }
                }
                trackSelectState->unk_trackSelectionFlags1 = scale_sine(local50 << 11, 2, 94);
                if (menuState->gamemode == GAMEMODE_GP) {
                    if (menuState->trackPage == 0) {
                        trackSelectState->trackSelectionFlags = scale_sine(local50 << 11, 32, 80);
                    } else {
                        trackSelectState->trackSelectionFlags = scale_sine(local50 << 11, 37, 85);
                    }
                } else {
                    if (menuState->trackPage == 0) {
                        trackSelectState->trackSelectionFlags = scale_sine(local50 << 11, 12, 60);
                    } else {
                        trackSelectState->trackSelectionFlags = scale_sine(local50 << 11, 17, 65);
                    }
                }
                trackSelectState->unk_trackSelectionFlags2 = scale_sine(local50 << 11, 48, 64);
                if (menuState->trackPage == 0) {
                    trackSelectState->unk_trackSelectionFlags3 = scale_sine(local50 << 11, 16, 104);
                } else {
                    trackSelectState->unk_trackSelectionFlags3 = scale_sine(local50 << 11, 21, 109);
                }
                trackSelectState->field35_0xec = scale_sine(local50 << 11, -4, 104);
                if (menuState->trackPage == 0) {
                    trackSelectState->unk_trackSelectionFlags5 = scale_sine(local50 << 11, 32, 96);
                } else {
                    trackSelectState->unk_trackSelectionFlags5 = scale_sine(local50 << 11, 37, 101);
                }
            }
            break;
        }
        case 7: {
            local50++;
            if (local50 < 7) {
                trackSelectState->field3_0xc = 1;
                sub_8008FA4(menuState, trackSelectState->track, local50);
                trackSelectState->field3_0xc = 0;
                trackSelectState->field_0x98 = scale_sine(((local50 << 14) / 6), -48, 268);
                trackSelectState->field13_0x9e = 1 << 8;
                trackSelectState->field12_0x9c = 1 << 8;
            }
            break;
        }
        case 8: {
            s16 scale;
            if ((menuState->unlockedTracks & 0x2f) < 0x10) {
                scale = 0x100;
            } else {
                scale = 0;
            }
            trackSelectState->field13_0x9e = scale;
            trackSelectState->field12_0x9c = scale;
            for (i = 0; i < menuState->playerIndex; i++) {
                if ((gKeyTriggerBuf[i] & (A_BUTTON | START_BUTTON)) != 0) {
                    m4aSongNumStart(SONG_143);
                    trackSelectState->field45_0x50c = 4;
                    break;
                }
                if ((gKeyTriggerBuf[i] & B_BUTTON) != 0) {
                    m4aSongNumStart(SONG_144);
                    break;
                }
            }
            break;
        }
        case 9: {
            local50 = local50 + 1;
            if (local50 < 7) {
                sub_8008FA4(menuState, trackSelectState->track, 6 - local50);
                trackSelectState->field_0x98 = scale_sine(((local50 * 0x4000) / 6), 48, 220);
                trackSelectState->field13_0x9e = 0x100;
                trackSelectState->field12_0x9c = 0x100;
            } else {
                trackSelectState->field13_0x9e = 0;
                trackSelectState->field12_0x9c = 0;
            }
            break;
        }
        case 14:
        case 10: {
            trackSelectState->field17_0xb0 = 5;
            trackSelectState->field35_0xec = 3;
            trackSelectState->field41_0x100 = 3;
            if (trackSelectState->field26_0xcc < 3) {
                trackSelectState->field26_0xcc = 3;
            }
            for (i = 0; i < DAT_03000040; i++) {
                menuState->spmUnk2[i].field6_0xe = 17;
            }
            // I dont think this code ever gets hit.
            if (local54 != 10 && local54 != 14) {
                for (i = 0; i < trackSelectState->numCups; i++) {
                    trackSelectState->unkCupContainer[i].unk2 = 0;
                }
            }
            local50 = 0;
            break;
        }
        case 11: {
            local50++;
            if (local50 < 9) {
                trackSelectState->field_0x98 = scale_sine(local50 << 11, 48, 220);
            }
            if ((trackSelectState->field17_0xb0 == 7) && (8 < local50)) {
                trackSelectState->field51_0x520 = (menuState->gamemode == GAMEMODE_GP) ? 1 : 4;
            }
            break;
        }
        case 12: {
            local50++;
            if (local50 > 20) {
                for (i = 0; i < trackSelectState->numCups; i++) {
                    trackSelectState->unkCupContainer[i].unk2 = 0;
                }
            }
            break;
        }
        case 18:
        case 13: {
            local50++;
            if (local50 < 0x21) {
                menuState->bgState.BLDCNT = 0xff;
                menuState->bgState.BLDY = (short)(local50 / 2);
                menuState->field213_0x11e8 = (adjust_fixed(local50 * -0x180) >> 5) + 200;
                menuState->field215_0x11f0 -= 2048;
            } else {
                irq_updateMask(IRQ_UPDATE_MODE_AND, ~IRQ_MASK_VCOUNT);
                sub_8002E08(menuState, (u8)menuState->menuPage);
                sub_8002E50(menuState, (u8)menuState->unk_multiplayerMirror);

                if (local54 == 13) {
                    return;
                }
            }
            break;
        }
        case 15: {
            if (local50 < 9) {
                trackSelectState->field_0x98 = scale_sine(local50 << 11, 48, 220);
            }
            local50++;
            if (local50 < 17) {
                for (i = 0; i < trackSelectState->numCups; i++) {
                    trackSelectState->unkCupContainer[i].scaleX = local50 * 80 + 256;
                    trackSelectState->unkCupContainer[i].scaleY = local50 * 80 + 256;
                    trackSelectState->unkCupContainer[i].unk2 = (local50 * 80 + 256) * 4096;
                }
            }
            break;
        }
        case 16: {
            for (i = 0; i < trackSelectState->numCups; i++) {
                trackSelectState->unkCupContainer[i].unk1 = 0;
            }
            break;
        }
        case 17: {
            // Empty
            break;
        }
        case 19: {
            local54 = 20;
            break;
        }
        case 20: {
            sub_8002E08(menuState, (u8)trackSelectState->cup);
            sub_8002E50(menuState, (u8)trackSelectState->track);
            switch (local4c) {
            case -1:
                irq_updateMask(IRQ_UPDATE_MODE_AND, ~IRQ_MASK_VCOUNT);
                (menuState->bgState).BLDCNT = 255;
                (menuState->bgState).BLDY = 16;
                menuState->field18_0x50 = TRUE;
                break;
            case 5:
            case 3:
                irq_updateMask(IRQ_UPDATE_MODE_OR, IRQ_MASK_VCOUNT);
                if (menuState->gamemode == GAMEMODE_BATTLE) {
                    sub_800A84C(menuState, status);
                } else {
                    sub_800A75C(menuState, status);
                }
                for (i = 0; i < trackSelectState->numCups; i++) {
                    if (menuState->gamemode == GAMEMODE_BATTLE) {
                        trackSelectState->unkCupContainer[i].posX = gUnkUIElements[i + 5].pos.x;
                    } else {
                        if (status == 0) {
                            trackSelectState->unkCupContainer[i].posX = gUnkUIElements[i].pos.x;
                        } else {
                            trackSelectState->unkCupContainer[i].posX = 0x2e;
                        }
                    }
                }
                trackSelectState->field17_0xb0 = 2;
                trackSelectState->field18_0xb4 = 0;
                trackSelectState->field19_0xb8 = 0xa0;
                trackSelectState->field35_0xec = 0;
                trackSelectState->field41_0x100 = 0;
                if ((status != 0) && (menuState->gamemode != GAMEMODE_BATTLE)) {
                    for (i = 0; i < trackSelectState->numCups; i++) {
                        if (i != trackSelectState->cup) {
                            trackSelectState->unkCupContainer[i].scaleX = 0;
                            trackSelectState->unkCupContainer[i].scaleY = 0;
                            trackSelectState->unkCupContainer[i].unk2 = 0;
                        }
                    }
                    trackSelectState->field45_0x50c = 1;
                }
                menuState->field213_0x11e8 = 200;
                break;
            default:
                irq_updateMask(IRQ_UPDATE_MODE_AND, ~IRQ_MASK_VCOUNT);
                menuState->bgState.BLDCNT = 0xff;
                menuState->bgState.BLDY = 0x10;
                break;
            }
            break;
        }
        case 21: {
            menuState->bgState.BLDCNT = 0x2f40;
            menuState->bgState.BLDALPHA = 0x60a;
            local54 = local4c;
            break;
        }
        }
        if (spm_loadOtherGfx(menuState) != 0) {
            trackSelectState->field57_0x538 = 1;
        }
        sub_8008D14(menuState);
        sub_8005DAC(DAT_03000040, menuState->spmUnk2);
        sub_8009C84(menuState);
        sub_8009590(menuState);
        sub_8009754(menuState);
        sub_800A1A4(menuState);
        sub_8009FAC(menuState);
        sub_8009124(menuState, status);
        if ((menuState->gamemode == GAMEMODE_GP) && ((menuState->trackSelectState).field17_0xb0 == 0)) {
            menuState->trackSelectState.field53_0x528++;
            if (0x40 < menuState->trackSelectState.field53_0x528 + 1) {
                menuState->trackSelectState.field53_0x528 = 0;
                menuState->trackSelectState.track = (menuState->trackSelectState.track + 1) & 3;
                gTrackNumber = menuState->trackSelectState.cup * 4 + menuState->trackSelectState.track;
                *(u32 *)(0x0203ebfc) = 2;
            }
        }
        if ((trackSelectState->field2_0x8 != trackSelectState->track) || (trackSelectState->field3_0xc != trackSelectState->field4_0x10)) {
            sub_8008FA4(menuState, trackSelectState->track, 0);
            trackSelectState->field2_0x8 = trackSelectState->track;
            trackSelectState->field4_0x10 = trackSelectState->field3_0xc;
        }
        sub_8005E04((u16 *)0x80b23b0, (u16 *)0x80b23d0, pltt_getBuffer(PLTT_BUFFER_BG) + 0xb0, menuState->unlockedTracks, 0x10);
        menuState->bgState.MOSAIC = 0;
        menuState->bgState.BG0CNT &= ~BGCNT_MOSAIC;

        if (menuState->gamemode != GAMEMODE_BATTLE && menuState->trackPage == 0) {
            RaceSpeed speed;
            speed = RACE_SPEED_150cc;
            if (menuState->gamemode != GAMEMODE_TIME_TRIALS) {
                speed = menuState->raceSpeed;
            }
            if (menuState->unlockedTracksTable[trackSelectState->cup * 3 + speed] != 0) {
                menuState->bgState.MOSAIC = 0x2222;
                menuState->bgState.BG0CNT |= BGCNT_MOSAIC;
            }
        }
        if ((menuState->gamemode == GAMEMODE_TIME_TRIALS) && (trackSelectState->field55_0x530 != 0)) {
            sub_8008E0C(menuState, trackSelectState->cup * 4 + trackSelectState->track);
            trackSelectState->field56_0x534 = 1;
        }
        sub_8009998(menuState);
        sub_8003948(menuState);

        if (sub_8003930(menuState) != 0) {
            *(u32 *)0x3004f74 = 0x80306fc + 1;
            *(u32 *)0x3004f70 = 0x8030738 + 1;
            *(u32 *)0x3004f78 = 0;
            *(u32 *)0x3004f7e = 1;
            trns_start();
            pltt_getBuffer(PLTT_BUFFER_BG)[0] = 0;
            pltt_setDirtyFlag(TRUE);
            main_frameProc();
            while ((*(u32 *)0x3004f7c & 2) != 0) {
                main_frameProc();
            }
            menuState->field204_0x109c = 1;
            break;
        } else {
            if (trackSelectState->field56_0x534 != 0) {
                *(u32*)0x30016e0 = 1 | *(u32*)0x30016e0;
            }
            if (trackSelectState->field57_0x538 != 0) {
                dmaq_enqueueVBlank((void *)0x2015400, (void *)0x6015000, 0x80000600);
            }
        }
    }
}