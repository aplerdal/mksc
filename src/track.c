#include "track.h"
#include "palette.h"
#include "scene.h"

extern u32 skyData_bin[0x24000 / 32];

extern const u32 gMkscCups[20];
extern const u32 gRetroCups[20];
extern u32 gBattleCup[4];
extern u32 gRetroBattleCup[4];

u32 track_getMKSCTrack(int header_idx)
{
    return gMkscCups[header_idx];
}
u32 track_getRetroTrack(int header_idx)
{
    return gRetroCups[header_idx];
}
u32 track_getRetroBattleTrack(int header_idx)
{
    return gRetroBattleCup[header_idx];
}

u32 track_getBattleTrack(int header_idx)
{
    return gBattleCup[header_idx];
}

u32 track_isRetroTrack(u8 header_idx)
{
    if (header_idx < 0x20)
    {
        return FALSE;
    }
    return TRUE;
}

u32 track_getTrackIndex(u8 header_idx)
{
    u32 index = 0;
    u8 i;

    bool8 retro_track = TRUE;
    if (header_idx < 0x20)
    {
        retro_track = FALSE;
    }

    if (!retro_track)
    {
        i = 0;
        while (i < 0x14)
        {
            if (gMkscCups[i] == header_idx)
                index = i;
            i++;
        }
    }
    else
    {
        i = 0;
        while (i < 0x14)
        {
            if (gRetroCups[i] == header_idx)
                index = i;
            i++;
        }
    }

    return index;
}

u8 track_getCup(u8 header_idx)
{
    u32 index = 0;
    u8 i;

    bool8 retro_track = TRUE;
    if (header_idx < 0x20)
    {
        retro_track = FALSE;
    }

    if (!retro_track)
    {
        i = 0;
        while (i < 0x14)
        {
            if (gMkscCups[i] == header_idx)
                index = i;
            i++;
        }
    }
    else
    {
        i = 0;
        while (i < 0x14)
        {
            if (gRetroCups[i] == header_idx)
                index = i;
            i++;
        }
    }

    return (u8)index >> 2;
}

u8 track_getCupIndex(u8 header_idx)
{
    u32 index = 0;
    u8 i;

    bool8 retro_track = TRUE;
    if (header_idx < 0x20)
    {
        retro_track = FALSE;
    }

    if (!retro_track)
    {
        i = 0;
        while (i < 0x14)
        {
            if (gMkscCups[i] == header_idx)
                index = i;
            i++;
        }
    }
    else
    {
        i = 0;
        while (i < 0x14)
        {
            if (gRetroCups[i] == header_idx)
                index = i;
            i++;
        }
    }

    return index & 3;
}

void track_loadSky(TrackDef* td)
{
    void* address;
    SkyDef* background;
    u16* buffer;

    s32 bg_offs = *(s32*)(skyData_bin + td->backgroundID);
    background = (SkyDef*)((s32)skyData_bin + bg_offs);

    main_frameProc();

    if ((background->cmp_flgs & 1) != 0)
    {
        if ((background->cmp_flgs & 2) != 0)
        {
            // Split, Compressed
            s32 gfx_offset = background->gfx_offset;
            u8* dest = (void*)0x06004000;
            u16* ptr = (u16*)((s32)background + gfx_offset);
            s32 i = 0;
            for (i = 0; i < 5; i++)
            {
                u16 offs = *ptr;
                if (offs != 0)
                {
                    LZ77UnCompVram((u32*)((s32)background + background->gfx_offset + offs), dest);
                    main_frameProc();
                }
                dest += 0x800;
                ptr += 1;
            }
        }
        else
        {
            // Compressed
            LZ77UnCompVram((u32*)((s32)background + background->gfx_offset), (void*)0x06004000);
        }
    }
    else
    {
        // Uncompressed
        CpuFastSet((u32*)((s32)background + background->gfx_offset), (void*)0x06004000, 0xb00);
    }

    address = (void*)((s32)background + background->pal_offset);
    buffer = (u16*)pltt_getBuffer(PLTT_BUFFER_BG);
    CpuSet(address, buffer + 0x60, 0x3f);

    main_frameProc();

    switch (background->size)
    {
        case 1:
            if ((background->cmp_flgs & 1) != 0)
            {
                LZ77UnCompVram((u32*)((s32)background + background->layout_front), (void*)0x06007800);
                LZ77UnCompVram((u32*)((s32)background + background->layout_mid), (void*)0x06007000);
            }
            else
            {
                CpuFastSet((void*)((s32)background + background->layout_front), (void*)0x06007800, 0x100);
                CpuFastSet((void*)((s32)background + background->layout_mid), (void*)0x06007000, 0x100);
            }
            break;
        case 2:
            if ((background->cmp_flgs & 1) != 0)
            {
                LZ77UnCompVram((u32*)((s32)background + background->layout_front), (void*)0x06007800);
                LZ77UnCompVram((u32*)((s32)background + background->layout_mid), (void*)0x06007000);
                LZ77UnCompVram((u32*)((s32)background + background->layout_back), (void*)0x06006800);
            }
            else
            {
                CpuFastSet((void*)((s32)background + background->layout_front), (void*)0x06007800, 0x100);
                CpuFastSet((void*)((s32)background + background->layout_mid), (void*)0x06007000, 0x100);
                CpuFastSet((void*)((s32)background + background->layout_back), (void*)0x06006800, 0x100);
            }
            break;
        case 7:
            LZ77UnCompVram((u32*)((s32)background + background->layout_mid), (void*)0x06007000);
            LZ77UnCompVram((u32*)((s32)background + background->layout_back), (void*)0x06006800);
            break;
        case 4:
        case 0x20:
            LZ77UnCompVram((u32*)((s32)background + background->layout_front), (void*)0x06007000);
            LZ77UnCompVram((u32*)((s32)background + background->layout_mid), (void*)0x06006800);
            LZ77UnCompVram((u32*)((s32)background + background->layout_back), (void*)0x06006000);
            break;
        case 0x40:
        case 8:
            LZ77UnCompVram((u32*)((s32)background + background->layout_front), (void*)0x06007800);
            LZ77UnCompVram((u32*)((s32)background + background->layout_mid), (void*)0x06006800);
            LZ77UnCompVram((u32*)((s32)background + background->layout_back), (void*)0x06006000);
            break;
        case 0x80:
        case 0x10:
            LZ77UnCompVram((u32*)((s32)background + background->layout_front), (void*)0x06007800);
            LZ77UnCompVram((u32*)((s32)background + background->layout_mid), (void*)0x06007000);
            LZ77UnCompVram((u32*)((s32)background + background->layout_back), (void*)0x06006000);
            break;
    }
    main_frameProc();
    return;
}

void track_loadSkySize()
{
    SkyDef* sky;
    TrackDef* def;
    volatile BgState* bgState;
    u16 size_mid;
    u16 size_front;
    u16 size_back;
    u16 sb_mid;
    u16 sb_front;
    u16 sb_back;

    def = gTrackDefTable[gSceneState.raceState.headerTableIdx];
    sky = ((SkyDef*)((u8*)skyData_bin + *(u32*)(skyData_bin + def->backgroundID)));
    bgState = &gSceneState.raceState.backgroundState;
    size_back = 0;
    size_mid = 0;
    size_front = 0;
    switch (sky->size)
    {
        case 0x20:
            size_front = BGCNT_TXT512x256;
            break;
        case 4:
            size_front = BGCNT_TXT256x512;
            break;
        case 0x40:
            size_mid = BGCNT_TXT512x256;
            break;
        case 7:
            size_mid = BGCNT_TXT512x256;
            break;
        case 8:
            size_mid = BGCNT_TXT256x512;
            break;
        case 0x80:
            size_back = BGCNT_TXT512x256;
            break;
        case 0x10:
            size_back = BGCNT_TXT256x512;
            break;
    }

    switch (sky->size)
    {
        case 0x7:
            sb_front = 0xd;
            sb_mid = 0xe;
            sb_back = 0xe;
            break;
        case 0x4:
        case 0x20:
            sb_front = 0xe;
            sb_mid = 0xd;
            sb_back = 0xc;
            break;
        case 0x8:
        case 0x40:
            sb_front = 0xf;
            sb_mid = 0xd;
            sb_back = 0xc;
            break;
        case 0x80:
        case 0x10:
            sb_front = 0xf;
            sb_mid = 0xe;
            sb_back = 0xc;
            break;
        default:
            sb_front = 0xf;
            sb_mid = 0xe;
            sb_back = 0xd;
            break;
    }

    REG_BG1CNT = bgState->BG1CNT = size_front | BGCNT_PRIORITY(3) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(sb_front);
    REG_BG2CNT = bgState->BG2CNT = size_mid | BGCNT_PRIORITY(3) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(sb_mid);
    REG_BG3CNT = bgState->BG3CNT = size_back | BGCNT_PRIORITY(3) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(sb_back);
}