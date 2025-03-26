#pragma once
#include "common.h"

typedef struct track_def_t {
    int trackID;
    int backgroundID;
    int backgroundBehavior;
    int paletteAnimation;
    int material;
    int *upcomingTurns;
    int musicID;
    int *randomTargetTable;
    int *unk1;
    int *trackCover;
    int *trackCoverPalette;
    int *notUnlockedPalette;
    int *trackNameText;
} track_def_t;

typedef struct bg_def_t {
    u8 size;
    u8 cmp_flgs;
    s32 gfx_offset;
    s32 layout_front;
    s32 layout_mid;
    s32 layout_back;
    s32 pal_offset;
} bg_def_t;

void track_loadSky(track_def_t * td);