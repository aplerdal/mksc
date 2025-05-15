#pragma once
#include "common.h"

typedef struct TrackDef
{
    int trackID;
    int backgroundID;
    int backgroundBehavior;
    int paletteAnimation;
    int material;
    int* upcomingTurns;
    int musicID;
    int* randomTargetTable;
    int* unk1;
    int* trackCover;
    int* trackCoverPalette;
    int* notUnlockedPalette;
    int* trackNameText;
} TrackDef;

extern const TrackDef* gTrackDefTable[56];

typedef struct
{
    u8 size;
    u8 cmp_flgs;
    s32 gfx_offset;
    s32 layout_front;
    s32 layout_mid;
    s32 layout_back;
    s32 pal_offset;
} SkyDef;

typedef struct
{
    u16 DISPCNT;
    u16 gap0;
    u32 BLDCNT;
    u16 BG1CNT;
    u16 BG2CNT;
    u16 BG3CNT;
    u16 BG1HOFS;
    u16 BG1VOFS;
    u16 BG2HOFS;
    u16 BGH2VOFS;
    u16 BG3HOFS;
    u16 BG3VOFS;
    u16 gap1;
} BgState;

u32 track_isRetroTrack(u8 header_idx);
u32 track_getTrackIndex(u8 header_idx);
u8 track_getCup(u8 header_idx);
u8 track_getCupIndex(u8 header_idx);
void track_loadSky(TrackDef* td);
void track_loadSkySize();