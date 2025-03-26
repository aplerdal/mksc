#include "track.h"
#include "palette.h"

extern u32 skyData_bin[0x24000/32];

extern const u32 gMkscCups[20];
extern const u32 gSmkCups[20];

u8 track_getCupIndex(u8 header_idx)
{
    uint32_t index = 0;
    uint8_t i;

    bool8 smk_track = TRUE;
    if (header_idx < 0x20) {
        smk_track = FALSE;
    }
    
    if (!smk_track) {
        i = 0;
        while (i < 0x14) {
            if (gMkscCups[i] == header_idx) index = i;
            i++;
        }
    } else {
        i = 0;
        while (i < 0x14) {
            if (gSmkCups[i] == header_idx) index = i;
            i++;
        }
    }
    
    return index & 3;
}

void track_loadSky(track_def_t* td) {
    void* address;
    bg_def_t *background;
    u16* buffer;

    s32 bg_offs = *(s32*)(skyData_bin + td->backgroundID);
    background = (bg_def_t*)((s32)skyData_bin + bg_offs);
    
    main_frameProc();
    
    if ((background->cmp_flgs & 1) != 0) {
        if ((background->cmp_flgs & 2) != 0) {
            // Split, Compressed
            s32 gfx_offset = background->gfx_offset;
            u8 *dest = (void*)0x06004000;
            u16 *ptr = (u16 *)((s32)background + gfx_offset);
            s32 i = 0;
            for (i = 0; i < 5; i++) {
                u16 offs = *ptr;
                if (offs != 0) {
                    LZ77UnCompVram((u32*)((s32)background + background->gfx_offset + offs),dest);
                    main_frameProc();
                }
                dest += 0x800;
                ptr += 1;
            }
        } else {
            // Compressed
            LZ77UnCompVram((u32*)((s32)background + background->gfx_offset),(void*)0x06004000);
        }
    } else {
        // Uncompressed
        CpuFastSet((u32*)((s32)background + background->gfx_offset),(void*)0x06004000,0xb00);
    }

    address = (void*)((s32)background + background->pal_offset);
    buffer = (u16*)pltt_getBuffer(PLTT_BUFFER_BG);
    CpuSet(address,buffer+0x60, 0x3f);
    
    main_frameProc();
    
    switch (background->size) {
        case 1:
            if ((background->cmp_flgs & 1) != 0) {
                LZ77UnCompVram((u32*)((s32)background + background->layout_front),(void*)0x06007800);
                LZ77UnCompVram((u32*)((s32)background + background->layout_mid),(void*)0x06007000);
            } else {
                CpuFastSet((void*)((s32)background + background->layout_front),(void*)0x06007800,0x100);
                CpuFastSet((void*)((s32)background + background->layout_mid),(void*)0x06007000,0x100);
            }
            break;
        case 2:
            if ((background->cmp_flgs & 1) != 0) {
                LZ77UnCompVram((u32*)((s32)background + background->layout_front),(void*)0x06007800);
                LZ77UnCompVram((u32*)((s32)background + background->layout_mid),(void*)0x06007000);
                LZ77UnCompVram((u32*)((s32)background + background->layout_back),(void*)0x06006800);
            } else {
                CpuFastSet((void*)((s32)background + background->layout_front),(void*)0x06007800,0x100);
                CpuFastSet((void*)((s32)background + background->layout_mid),(void*)0x06007000,0x100);
                CpuFastSet((void*)((s32)background + background->layout_back),(void*)0x06006800,0x100);
            }
            break;
        case 7:
            LZ77UnCompVram((u32*)((s32)background + background->layout_mid),(void*)0x06007000);
            LZ77UnCompVram((u32*)((s32)background + background->layout_back),(void*)0x06006800);
            break;
        case 4:
        case 0x20:
            LZ77UnCompVram((u32*)((s32)background + background->layout_front), (void*)0x06007000);
            LZ77UnCompVram((u32*)((s32)background + background->layout_mid), (void*)0x06006800);
            LZ77UnCompVram((u32*)((s32)background + background->layout_back),(void*)0x06006000);
            break;
        case 0x40:
        case 8:
            LZ77UnCompVram((u32*)((s32)background + background->layout_front), (void*)0x06007800);
            LZ77UnCompVram((u32*)((s32)background + background->layout_mid), (void*)0x06006800);
            LZ77UnCompVram((u32*)((s32)background + background->layout_back),(void*)0x06006000);
            break;
        case 0x80:
        case 0x10:
            LZ77UnCompVram((u32*)((s32)background + background->layout_front), (void*)0x06007800);
            LZ77UnCompVram((u32*)((s32)background + background->layout_mid), (void*)0x06007000);
            LZ77UnCompVram((u32*)((s32)background + background->layout_back),(void*)0x06006000);
            break;
    }
    main_frameProc();
    return;
}