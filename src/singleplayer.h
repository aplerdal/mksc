#pragma once
#include "common.h"

typedef enum spm_menu_page_t {
    MENU_PAGE_MODE=0,
    MENU_PAGE_CHARACTER=1,
    MENU_PAGE_TRACK=2,
    MENU_PAGE_UNKNOWN=3,
    MENU_PAGE_4=4,
    MENU_PAGE_5=5
} spm_menu_page_t;

typedef enum gamemode_t {
    GAMEMODE_UNSET=-1,
    GAMEMODE_GP=0,
    GAMEMODE_TT=1,
    GAMEMODE_VS=2,
    GAMEMODE_BT=3,
    GAMEMODE_REPLAY=4,
    GAMEMODE_QUICKRUN=5
} gamemode_t;

typedef enum race_speed_t {
    RACE_SPEED_UNSET=-1,
    RACE_SPEED_50cc=0,
    RACE_SPEED_100cc=1,
    RACE_SPEED_150cc=2
} race_speed_t;

typedef enum character_t {
    CHARACTER_UNSET=-1,
    CHARACTER_MARIO=0,
    CHARACTER_LUIGI=1,
    CHARACTER_PEACH=2,
    CHARACYER_TOAD=3,
    CHARACTER_YOSHI=4,
    CHARACTER_DONKEY_KONG=5,
    CHARACTER_WARIO=6,
    CHARACTER_BOWSER=7
} character_t;

typedef enum track_cup_t {
    CUP_UNSET=-1,
    CUP_MUSHROOM=0,
    CUP_FLOWER=1,
    CUP_LIGHTNING=2,
    CUP_STAR=3,
    CUP_SPECIAL=4
} track_cup_t;

typedef struct spm_unk_struct_2 {
    u16 *field0_0x0;
    u16 field1_0x4;
    u16 field2_0x6;
    u16 field3_0x8;
    u16 field4_0xa;
    u16 field5_0xc;
    u8 field6_0xe;
    u8 field7_0xf;
    u16 field8_0x10;
    u16 field9_0x12;
    u8 field10_0x14;
    u8 field11_0x15;
    u8 field12_0x16;
    u8 field13_0x17;
} spm_unk_struct_2_t;

typedef struct spm_unk_struct_3 {
    u8 *field0_0x0;
    u16 field1_0x4;
    u16 field2_0x6;
    u16 field3_0x8;
    u16 field4_0xa;
    u16 field5_0xc;
    u8 field6_0xe;
    u8 field7_0xf;
    u16 field8_0x10;
    u8 field9_0x12;
    u8 field10_0x13;
    u8 field11_0x14;
    u8 field12_0x15;
    u8 field13_0x16;
    u8 field14_0x17;
} spm_unk_struct_3_t;

typedef struct spm_track_data_table {
    s32 field0_0x0[20];
    u8 field1_0x50[20];
    u16 field2_0x64[20];
} spm_track_data_table_t;

typedef struct menu_bg_data {
    u16 DISPCNT;
    u16 BG0CNT;
    u16 BG0HOFT;
    u16 BG0VOFS;
    u16 BG1CNT;
    u16 BG1HOFS;
    u16 BG1VOFS;
    u16 BG2CNT;
    u16 BG2HOFS;
    u16 BG2VOFS;
    u16 BG3CNT;
    u16 BG3HOFS;
    u16 BG3VOFS;
    u16 BLDCNT;
    u16 BLDALPHA;
    u16 BLDY;
    u16 BG2PA;
    u16 BG2PB;
    u16 BG2PC;
    u16 BG2PD;
    u16 BG2XL;
    u16 BG2XH;
    u16 BG2YL;
    u16 BG2YH;
    u16 MOSAIC;
    u8 field25_0x32;
    u8 field26_0x33;
} menu_bg_data_t;

struct spm_unk_struct {
    u8 field0_0x0[8];
} typedef spm_unk_struct_t;

typedef struct spm_unk_data_struct {
    s32 field0_0x0[2];
    u8 field1_0x8;
    u8 field2_0x9;
    u8 field3_0xa[2];
    u16 field4_0xc[2];
    u8 field5_0x10[2];
    spm_unk_struct_t field6_0x12[2];
    u8 field7_0x22;
} spm_unk_data_struct_t;

typedef struct SpmState {
    spm_menu_page_t menuPage;
    s32 unk_multiplayerMirror;
    s32 playerIndex;
    s32 gamemodeMirror;
    gamemode_t gamemode;
    race_speed_t raceSpeed;
    character_t character;
    track_cup_t cup;
    s32 unk;
    s32 lastCharacter;
    s32 field10_0x28[3];
    s32 field11_0x34;
    s32 field12_0x38;
    s32 field13_0x3c;
    s32 field14_0x40;
    s32 field15_0x44;
    s32 field16_0x48;
    u32 field17_0x4c;
    s32 field18_0x50;
    s32 field19_0x54;
    s32 field20_0x58;
    s32 field21_0x5c;
    s32 field22_0x60;
    s32 field23_0x64;
    s32 field24_0x68;
    u8 field25_0x6c[68];
    s32 field26_0xb0;
    u8 field27_0xb4[16];
    u8 field28_0xc4;
    u8 field29_0xc5[3];
    u8 field30_0xc8;
    u8 field31_0xc9[3];
    s32 field32_0xcc;
    s32 field33_0xd0;
    s32 field34_0xd4;
    s32 field35_0xd8;
    u8 field36_0xdc[36];
    s32 field37_0x100;
    u8 field38_0x104[20];
    u8 field39_0x118;
    u8 field40_0x119[3];
    s32 field41_0x11c;
    s32 field42_0x120;
    s32 field43_0x124;
    s32 field44_0x128;
    s32 field45_0x12c;
    s32 field46_0x130;
    s32 field47_0x134;
    s32 field48_0x138;
    s32 field49_0x13c;
    s32 field50_0x140;
    u8 field51_0x144[8];
    s32 field52_0x14c;
    s32 field53_0x150;
    s32 field54_0x154;
    s32 field55_0x158;
    u16 field56_0x15c;
    u16 field57_0x15e;
    s32 field58_0x160;
    s32 field59_0x164;
    s32 field60_0x168;
    u32 field61_0x16c;
    s32 field62_0x170;
    s32 field63_0x174;
    s32 field64_0x178;
    s32 field65_0x17c;
    u8 field66_0x180[2];
    u32 field67_0x182;
    u8 field68_0x184[516];
    s32 field69_0x388;
    s32 field70_0x38c;
    u32 field71_0x390;
    u8 field72_0x394[344];
    s32 charcterSelectedTile;
    u8 field74_0x4f0[12];
    s32 *unk_menuPageRelated;
    u8 field76_0x500[8];
    s32 unk_ccRelatedPos32er;
    u8 field78_0x50c[36];
    s32 field79_0x530;
    s32 field80_0x534;
    s32 field81_0x538;
    u8 field82_0x53c[192];
    s32 field83_0x5fc;
    s32 field84_0x600;
    u8 field85_0x604[204];
    s32 field86_0x6d0;
    u32 field87_0x6d4;
    u32 field88_0x6d6;
    s32 field89_0x6d8;
    s32 field90_0x6dc;
    s32 field91_0x6e0;
    s32 field92_0x6e4;
    s32 field93_0x6e8;
    s32 field94_0x6ec;
    s32 field95_0x6f0;
    s32 field96_0x6f4;
    s32 field97_0x6f8;
    s32 field98_0x6fc;
    s32 field99_0x700;
    s32 field100_0x704;
    s32 field101_0x708;
    s32 field102_0x70c;
    u32 field103_0x710;
    u32 field104_0x712;
    s32 field105_0x714;
    s32 field106_0x718;
    s32 field107_0x71c;
    s32 field108_0x720;
    s32 field109_0x724;
    s32 field110_0x728;
    s32 field111_0x72c;
    s32 field112_0x730;
    s32 field113_0x734;
    track_cup_t unk_cupMirror;
    u32 unk_unkMirror;
    s32 field116_0x740;
    u32 field117_0x744;
    u32 field118_0x748;
    s32 field119_0x74c;
    u32 field120_0x750;
    spm_unk_struct_3_t field121_0x754;
    u8 field122_0x76c[96];
    u8 **field123_0x7cc;
    u16 field124_0x7d0;
    u16 field125_0x7d2;
    u16 field126_0x7d4;
    u16 field127_0x7d6;
    u16 field128_0x7d8;
    u8 field129_0x7da[10];
    u32 field130_0x7e4;
    s32 field131_0x7e8;
    u32 field132_0x7ec;
    u32 field133_0x7f0;
    u32 field134_0x7f2;
    u32 field135_0x7f4;
    u32 field136_0x7f8;
    u32 unk_trackSelectionFlags1;
    u32 trackSelectionFlags;
    u32 field139_0x800;
    u32 field140_0x804;
    u32 field141_0x808;
    u32 unk_trackSelectionFlags2;
    u32 unk_trackSelectionFlags3;
    u32 field144_0x810;
    u32 field145_0x814;
    u32 field146_0x818;
    u32 field147_0x81c;
    u32 field148_0x820;
    u32 field149_0x824;
    u32 field150_0x828;
    u32 unk_trackSelectionFlags4;
    u32 unk_trackSelectionFlags5;
    u32 field153_0x830;
    u32 field154_0x834;
    u32 field155_0x838;
    u32 field156_0x83c;
    u8 field157_0x840[1024];
    u32 field158_0xc40;
    u32 field159_0xc44;
    u32 field160_0xc48;
    u32 field161_0xc4c;
    u32 field162_0xc4e;
    u32 field163_0xc50;
    u32 field164_0xc54;
    u32 field165_0xc58;
    u32 field166_0xc5c;
    u32 field167_0xc60;
    u32 field168_0xc64;
    u32 field169_0xc68;
    s32 field170_0xc6c;
    s32 field171_0xc70;
    u8 field172_0xc74[192];
    s32 field173_0xd34;
    u32 field174_0xd38;
    u32 field175_0xd3c;
    u32 field176_0xd40;
    u32 field177_0xd44;
    u32 field178_0xd48;
    u32 field179_0xd4c;
    u32 field180_0xd50;
    u32 field181_0xd54;
    u32 field182_0xd58;
    u32 field183_0xd5c;
    u32 field184_0xd60;
    u32 field185_0xd62;
    u32 field186_0xd64;
    u32 field187_0xd66;
    u32 field188_0xd68;
    u32 field189_0xd6c;
    u32 field190_0xd70;
    u32 field191_0xd74;
    s32 field192_0xd78;
    u32 field193_0xd7c;
    s32 field194_0xd80;
    u32 field195_0xd84;
    spm_unk_struct_2_t spm_unk_struct2;
    u8 field197_0xda0[744];
    u32 playerCount;
    s32 *field199_0x108c;
    s32 field200_0x1090;
    s32 field201_0x1094;
    u16 field202_0x1098;
    u16 field203_0x109a;
    s32 field204_0x109c;
    u32 field205_0x10a0;
    s32 unlockedTracksTable[34];
    s32 unk_hasSpecialUnlocked;
    spm_track_data_table_t unkTrackDataTable;
    u8 field209_0x11bc[4];
    spm_unk_data_struct_t field210_0x11c0;
    u8 field211_0x11e3;
    s32 trackPage;
    u16 field213_0x11e8;
    u8 field214_0x11ea[2];
    u16 field215_0x11ec;
    u8 field216_0x11ee[2];
    u32 field217_0x11f0;
    u8 *field218_0x11f4;
    u32 field219_0x11f8;
    menu_bg_data_t field220_0x11fc;
} SpmState;
