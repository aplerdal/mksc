#include "common.h"
#include "songs.h"
#include "map.h"
#include "palette.h"
#include "scene.h"
#include "transition.h"
#include "dmaQueue.h"
#include "math.h"
#include "oam.h"
#include "sound.h"
#include "sio2.h"
#include "error.h"

// External declarations.
extern char title_sDriversBgTilesBuf[0x16000];
extern char title_sObjTiles4[];
extern u8 gMainFrmHeap[0x8000];

extern int dword_80C7F38[1];
extern int dword_80BBBB0[1];
extern int dword_807D1E8[1];
extern int dword_80C8060[1];
extern int dword_80B83A4[1];
extern int dword_80C4784[1];
extern int dword_80A97F8[1];
extern int dword_80A9E2C[1];
extern int dword_80AA56C[1];
extern int dword_80C83FC[1];
extern int dword_80C8284[1];
extern int dword_80C8080[1];
extern int dword_80C84B8[1];
extern int dword_80BC960[1];

extern void sub_8017048(void);
extern void title_main();

extern const u8 gCharacterTiles[1];
extern const int gCharacterPalettes[1];
extern const u16* const off_80DA2FC[4];
extern u16 dword_80CA7A0[1];

extern u16 dword_80CAE30[3][16];
extern bool32 dword_203EC20;

extern u16* dword_80DA334[4];
extern u16 dword_80DA30C[4];

extern int dword_3005C50;
// End external declarations.

static ErrorState* sState;
static Vec2s16 word_300018C;

static void error_8016D90(void);
static void sub_801715C(void);

static void error_vblank(void)
{
    ErrorState* state = sState;

    REG_DISPCNT &= DISPCNT_WIN0_ON | DISPCNT_WIN1_ON;
    REG_DISPCNT |= state->dspcnt & ~(DISPCNT_WIN0_ON | DISPCNT_WIN1_ON);
    REG_BG0CNT = state->bg0cnt;
    REG_BG0HOFS = state->bg0hofs;
    REG_BG0VOFS = state->bg0vofs;
    REG_BG1CNT = state->bg1cnt;
    REG_BG1HOFS = state->bg1hofs;
    REG_BG1VOFS = state->bg1vofs;
    REG_BG2CNT = state->bg2cnt;
    REG_BG2HOFS = state->bg2hofs;
    REG_BG2VOFS = state->bg2vofs;
    REG_BG3CNT = state->bg3cnt;
    REG_BG3HOFS = state->bg3hofs;
    REG_BG3VOFS = state->bg3vofs;
    REG_BLDCNT = state->bldcnt;
    REG_BLDALPHA = state->bldalpha;
    REG_BLDY = state->bldy;
}

static void error_loadGraphics(void)
{
    int i, j;

    ErrorState* state = sState;

    LZ77UnCompWram(dword_80C7F38, pltt_getBuffer(PLTT_BUFFER_BG));
    LZ77UnCompWram(dword_80C7F38, pltt_getBuffer(PLTT_BUFFER_OBJ));

    *pltt_getBuffer(PLTT_BUFFER_BG) = 0;
    pltt_setDirtyFlag(TRUE);
    main_frameProc();

    LZ77UnCompWram(dword_80BBBB0, title_sDriversBgTilesBuf);
    dmaq_enqueue(dmaq_getVBlankDmaQueue(), title_sDriversBgTilesBuf, 0x6004000, 0x80001200);
    main_frameProc();

    LZ77UnCompWram(dword_807D1E8, title_sDriversBgTilesBuf);
    dmaq_enqueue(dmaq_getVBlankDmaQueue(), &title_sDriversBgTilesBuf[32], 0x6004F60, 0x80000100);
    main_frameProc();

    LZ77UnCompWram(dword_80C8060, title_sDriversBgTilesBuf);
    dmaq_enqueue(dmaq_getVBlankDmaQueue(), title_sDriversBgTilesBuf, 0x6005160, 0x80000020);
    main_frameProc();

    LZ77UnCompWram(dword_80B83A4, title_sDriversBgTilesBuf);
    dmaq_enqueue(dmaq_getVBlankDmaQueue(), &title_sDriversBgTilesBuf[512], 0x6005200, 0x80000100);
    main_frameProc();

    LZ77UnCompWram(dword_80C4784, title_sDriversBgTilesBuf);
    dmaq_enqueue(dmaq_getVBlankDmaQueue(), &title_sDriversBgTilesBuf[1024], 0x6005400, 0x80000200);
    main_frameProc();

    LZ77UnCompWram(dword_80A97F8, title_sDriversBgTilesBuf);
    dmaq_enqueue(dmaq_getVBlankDmaQueue(), title_sDriversBgTilesBuf, 0x6007800, 0x80000C00);
    main_frameProc();

    LZ77UnCompWram(dword_80A9E2C, title_sDriversBgTilesBuf);
    dmaq_enqueue(dmaq_getVBlankDmaQueue(), title_sDriversBgTilesBuf, 0x6009000, 0x80000C00);
    main_frameProc();

    LZ77UnCompWram(dword_80AA56C, title_sDriversBgTilesBuf);
    dmaq_enqueue(dmaq_getVBlankDmaQueue(), title_sDriversBgTilesBuf, 0x600A800, 0x80000C00);
    main_frameProc();

    map_setBufferDestination(MAP_BUFFER_0, 0x6001000);
    map_setBufferDestination(MAP_BUFFER_1, 0x6001000);

    LZ77UnCompWram(dword_80C83FC, title_sDriversBgTilesBuf);
    dmaq_enqueue(dmaq_getVBlankDmaQueue(), title_sDriversBgTilesBuf, 0x6000000, 0x80000280);
    main_frameProc();

    LZ77UnCompWram(dword_80C8284, map_getBufferPtr2d(MAP_BUFFER_0, 0, 0));
    LZ77UnCompWram(dword_80C8284, map_getBufferPtr2d(MAP_BUFFER_1, 0, 0));

    for (i = 0; i < 6; i++)
        for (j = 0; j < 4; j++)
            *map_getBufferPtr2d(1, i + 24, j + 15) = 0;

    map_setBufferDirty(3);
    main_frameProc();

    LZ77UnCompWram(dword_80C8080, title_sDriversBgTilesBuf);
    dmaq_enqueue(dmaq_getVBlankDmaQueue(), title_sDriversBgTilesBuf, 0x6002000, 0x80000280);
    main_frameProc();

    LZ77UnCompWram(dword_80C84B8, title_sDriversBgTilesBuf);
    dmaq_enqueue(dmaq_getVBlankDmaQueue(), title_sDriversBgTilesBuf, 0x6003000, 0x80000400);
    main_frameProc();

    LZ77UnCompWram(dword_80BC960, title_sDriversBgTilesBuf);
    dmaq_enqueue(dmaq_getVBlankDmaQueue(), &title_sDriversBgTilesBuf[5120], 0x6011160, 0x80000100);
    main_frameProc();

    state->bg0cnt = BGCNT_CHARBASE(1);
    state->bg1cnt = BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(2);
    state->bg2cnt = BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(4);
    state->bg3cnt = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(6);
    state->dspcnt = DISPCNT_OBJ_1D_MAP | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_ON;
    state->bldcnt = BLDCNT_TGT1_BG0 | BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG1 | BLDCNT_TGT2_BG2 | BLDCNT_TGT2_BG3 |
                    BLDCNT_TGT2_OBJ | BLDCNT_TGT2_BD;
    state->bldalpha = BLDALPHA_BLEND(12, 8);
    state->bg0hofs = 0;
    state->bg0vofs = 0;
    state->bg1hofs = 0;
    state->bg1vofs = 0;
    state->bg2hofs = 0;
    state->bg2vofs = 0;
    state->bg3hofs = 0;
    state->bg3vofs = 0;
    state->field68 = 0;
}

int error_main(void)
{
    int offset;
    ErrorState* state;
    SceneState* sceneState;

    bool32 finished = FALSE;
    int funcState = 0;
    int frame = 0;
    int keyPressed = 0x3FFF;

    sio2_sMPlayerId.field_16 = 0;
    sio2_stop();

    sceneState = &gSceneState;
    frmheap_init(&sceneState->raceState.frameHeap, &gMainFrmHeap, sizeof(gMainFrmHeap));
    sState = state = frmheap_calloc(&sceneState->raceState.frameHeap, 1, sizeof(ErrorState));

    error_loadGraphics();

    offset = sio2_sMPlayerId.field_1;
    if (offset <= 1)
        offset = 1;

    dmaq_enqueue(dmaq_getVBlankDmaQueue(), ((offset - 1) << 8) + 0x6005400, 0x6005400, 0x80000080);

    trns_setInitFunc(trns_initDefaultInTransition);
    gTransitionState.applyFunc = trns_applyDefaultInTransition;
    gTransitionState.finishFunc = trns_finishDefaultInTransition;
    gTransitionState.updateDelay = 1;
    trns_start();

    oam_802FE4C(TRUE);

    scene_setVBlankFunc(error_vblank);

    while (1)
    {
        u16 keyinput, keyDown;

        oam_update();
        main_frameProc();

        keyinput = KEYS_MASK ^ REG_KEYINPUT;
        keyDown = keyinput & ~keyPressed;
        keyPressed = keyinput;

        switch (funcState)
        {
            case 0:
                if (!(gTransitionState.flags & TRNS_FLAG_UPDATE_FRAME))
                {
                    m4aSongNumStart(SONG_146);
                    funcState = 1;
                }
                break;

            case 1:
            {
                u16 mask;

                frame++;
                if (frame > 30)
                    frame = 0;

                mask = MAP_MASK_BUFFER_1;
                if (frame <= 19)
                    mask = MAP_MASK_BUFFER_0;

                map_setBufferDirty(mask);

                if (keyDown & (A_BUTTON | START_BUTTON))
                {
                    m4aSongNumStart(SONG_143);
                    *pltt_getBuffer(PLTT_BUFFER_BG) = -1;
                    pltt_setDirtyFlag(TRUE);
                    gTransitionState.initFunc = trns_initDefaultOutTransition;
                    gTransitionState.applyFunc = sub_8017048;
                    gTransitionState.finishFunc = NULL;
                    gTransitionState.updateDelay = 1;
                    trns_start();
                    funcState = 2;
                }
            }
            break;

            case 2:
                if (!(gTransitionState.flags & TRNS_FLAG_UPDATE_FRAME))
                    finished = TRUE;
                break;
        }

        error_8016D90();

        state->field68++;
        state->bg3hofs = state->field68 >> 2;
        state->bg3vofs = -state->field68 >> 2;

        if (finished)
            break;
    }

    scene_setVBlankFunc(NULL);
    scene_setMainFunc(title_main);
    SoftReset(RESET_EWRAM | RESET_IWRAM | RESET_PALETTE | RESET_VRAM | RESET_OAM);

    return 1;
}

#ifndef NONMATCHING
asm_unified(".include \"nonmatching/text08016D90.s\"");
#else
static void error_8016D90(void)
{
    int i;
    Vec2s16 a2;
    Vec2s16 v18;
    int value;

    ErrorState* state = sState;

    int v1 = sio2_sMPlayerId.field_1;
    if (v1 <= 1)
        v1 = 1;

    state->field32++;

    while (state->field32 > 127)
        state->field32 -= 127;

    while (state->field32 < 0)
        state->field32 += 127;

    value = 80 / (v1 + 1);

    for (i = 0; i < v1; i++)
    {
        int j;
        int v7;
        int v8;
        int v9;
        const u8* sprite;
        const int* pltts;

        if (state->field32 > 63)
            v7 = 127 - state->field32;
        else
            v7 = state->field32;

        v8 = sub_8008600(v7);
        v9 = spm_menuCharIdxToCharId(i);

        sprite = &gCharacterTiles[0x16000 * v9] + 2048 * v8;
        dmaq_enqueueVBlank(sprite, (void*)(0x6011800 + (i << 11)), 0x80000400);
        CpuFastSet(&gCharacterPalettes[128 * v9], &pltt_getBuffer(1)[64 + 16 * i], 8);

        for (j = 0; j < 4; j++)
        {
            const u16* ptr2 = off_80DA2FC[i];
            state->field_24[i][j] = ptr2[j];
        }

        if (state->field32 & 0x40)
            state->field_24[i][2] |= 0x1000;
        else
            state->field_24[i][2] &= 0xEFFF;

        *(u32*)&a2 = (u16)(value * (i + 1) + 128) | 0x700000;
        oam_renderCellData(&state->field_24[i], &a2, 0, 0, 0, 0);
    }

    *(u32*)&v18 = 0x7000A8;
    oam_renderCellData(dword_80CA7A0, &v18, 0, 0, 0, 0);
    pltt_setDirtyFlag(TRUE);
}
#endif

static void sub_8016F28(void)
{
    CpuSet(dword_80CAE30[0], &pltt_getBuffer(PLTT_BUFFER_OBJ)[112], 9);

    if ((gSceneState.field10 & 8))
        CpuSet(&dword_80CAE30[0][1], &pltt_getBuffer(PLTT_BUFFER_OBJ)[113], 2);
    else
        CpuSet(&dword_80CAE30[1][1], &pltt_getBuffer(PLTT_BUFFER_OBJ)[113], 2);

    pltt_setDirtyFlag(TRUE);

    if (dword_203EC20)
    {
        int idx = sio2_sMPlayerId.field_1;
        u16** cellData = dword_80DA334;

        if (--idx < 0)
            idx = 0;

        oam_renderCellData(cellData[idx], &word_300018C, 0, 0, 0, NULL);
    }

    oam_renderCellData(dword_80DA30C, &word_300018C, 0, 0, 0, NULL);
}

static bool32 sub_8016FDC(void)
{
    if ((gTransitionState.flags & TRNS_FLAG_UPDATE_FRAME) != 0)
        return FALSE;

    stopAllSongs();

    scene_setMainFunc(error_main);
    dword_3005C50 = 1;

    return TRUE;
}

static void sub_8017048(void)
{
    u8 frame = gTransitionState.frame;

    REG_WIN0H = WIN_RANGE(6 * frame, 240 - 6 * frame);
    REG_WIN0V = WIN_RANGE(4 * frame, 160 - 4 * frame);

    if (frame == 20)
    {
        gTransitionState.applyFunc = sub_801715C;
        gTransitionState.frame = 0;
    }
}

static void sub_801708C(void)
{
    LZ77UnCompVram(title_sObjTiles4, 0x6013400);
    CpuSet(dword_80CAE30, &pltt_getBuffer(PLTT_BUFFER_OBJ)[112], 9);
    pltt_setDirtyFlag(TRUE);
    dword_203EC20 = FALSE;
    word_300018C.x = 284;
    word_300018C.y = 148;
}

static bool32 sub_80170DC(u32 a1[27])
{
    s32 angle = a1[26];
    bool32 isModified = FALSE;

    angle++;

    if (angle < 17)
        word_300018C.x = (-64 * math_sin(angle << 10) >> 15) + 284;
    else
        isModified = TRUE;

    a1[26] = angle;

    return isModified;
}

static void sub_8017128(void)
{
    dword_203EC20 = TRUE;
}

static void sub_8017134(void)
{
    trns_setInitFunc(trns_initDefaultOutTransition);
    gTransitionState.applyFunc = trns_applyDefaultOutTransition;
    gTransitionState.finishFunc = NULL;
    gTransitionState.updateDelay = 1;
    trns_start();
}

static void sub_801715C(void)
{
    if (gTransitionState.frame == 40)
        gTransitionState.applyFunc = 0;
}
