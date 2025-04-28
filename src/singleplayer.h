#pragma once
#include "common.h"
#include "math.h"

typedef enum SpmPage {
    MENU_PAGE_UNSET=-1,
    MENU_PAGE_MODE=0,
    MENU_PAGE_CHARACTER=1,
    MENU_PAGE_TRACK=2,
    MENU_PAGE_UNKNOWN=3,
    MENU_PAGE_4=4,
    MENU_PAGE_5=5
} SpmPage;

typedef enum Gamemode {
    GAMEMODE_UNSET=-1,
    GAMEMODE_GP=0,
    GAMEMODE_TIME_TRIALS=1,
    GAMEMODE_VS=2,
    GAMEMODE_BATTLE=3,
    GAMEMODE_REPLAY=4,
    GAMEMODE_QUICKRUN=5
} Gamemode;

typedef enum RaceSpeed {
    RACE_SPEED_UNSET=-1,
    RACE_SPEED_50cc=0,
    RACE_SPEED_100cc=1,
    RACE_SPEED_150cc=2
} RaceSpeed;

typedef enum Character {
    CHARACTER_UNSET=-1,
    CHARACTER_MARIO=0,
    CHARACTER_LUIGI=1,
    CHARACTER_PEACH=2,
    CHARACYER_TOAD=3,
    CHARACTER_YOSHI=4,
    CHARACTER_DONKEY_KONG=5,
    CHARACTER_WARIO=6,
    CHARACTER_BOWSER=7
} Character;
typedef enum {
    EASE_LINEAR,
    EASE_QUADRATIC,
    EASE_CUBIC,
    EASE_LINEAR,
    EASE_QUARTIC,
    EASE_BOUNCE_OUT = 10,
} Easing;

typedef enum TrackCup {
    CUP_UNSET=-1,
    CUP_MUSHROOM=0,
    CUP_FLOWER=1,
    CUP_LIGHTNING=2,
    CUP_STAR=3,
    CUP_SPECIAL=4
} TrackCup;

typedef struct __attribute__((packed)) VramBuffer {
    struct VramBuffer* next;
    void *bufferAddress;
    void *vramAddress;
    u32 cpuSetFlags;
} VramBuffer;

typedef struct __attribute__((packed)) {
    VramBuffer* vramBuffers[4];
    int unk1;
    bool32 writeBusClear;
} LoadStatus;

typedef struct __attribute__((packed)) {
    u16 *field0_0x0;
    u16 field1_0x4;
    s16 field2_0x6;
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
} SpmUnk2;

typedef struct __attribute__((packed)) {
    u32 unk1;
    s16 posX;
    s16 posY;
    s16 scaleX;
    s16 scaleY;
    s16 scale;
    s8 unk2;
    u8 buf1[9];
} CupUnkContainer;

typedef struct __attribute__((packed)) {
    u8 *field0_0x0;
    s16 field1_0x4;
    u16 field2_0x6;
} SpmUnk1;

typedef struct __attribute__((packed)) {
    s32 field0_0x0[20];
    u8 field1_0x50[20];
    s16 field2_0x64[20];
} UnkTrackDataTable;

typedef struct __attribute__((packed)) {
    s16 DISPCNT;
    u16 BG0CNT;
    u16 BG0HOFT;
    u16 BG0VOFS;
    s16 BG1CNT;
    s16 BG1HOFS;
    s16 BG1VOFS;
    s16 BG2CNT;
    s16 BG2HOFS;
    s16 BG2VOFS;
    s16 BG3CNT;
    s16 BG3HOFS;
    s16 BG3VOFS;
    s16 BLDCNT;
    s16 BLDALPHA;
    s16 BLDY;
    s16 BG2PA;
    s16 BG2PB;
    s16 BG2PC;
    s16 BG2PD;
    s16 BG2XL;
    u16 BG2XH;
    s16 BG2YL;
    u16 BG2YH;
    s16 MOSAIC;
    u8 field25_0x32;
    u8 field26_0x33;
} MenuBgData;

typedef struct __attribute__((packed)) {
    u8 field0_0x0[8];
} UnkStruct2;

typedef struct __attribute__((packed)) {
    s32 field0_0x0[2];
    u8 field1_0x8;
    u8 field2_0x9;
    u8 field3_0xa[2];
    s16 field4_0xc[2];
    u8 field5_0x10[2];
    UnkStruct2 field6_0x12[2];
    u8 field7_0x22;
} UnkStruct1;

typedef struct __attribute__((packed)) {
    enum TrackCup cup;
    s32 track;
    s32 field2_0x8;
    u32 field3_0xc;
    u32 field4_0x10;
    s32 numCups;
    u32 field6_0x18;
    CupUnkContainer unkCupContainer[5];
    u8 *field_0x90;
    s16 field_0x94;
    u16 field_0x98;
    short field12_0x9c;
    short field13_0x9e;
    short field14_0xa0;
    u8 field15_0xa2[10];
    u32 field16_0xac;
    s32 field17_0xb0;
    u32 field18_0xb4;
    u16 field19_0xb8;
    u16 field20_0xba;
    u32 field21_0xbc;
    u32 field22_0xc0;
    u16 unk_trackSelectionFlags1;
    u16 trackSelectionFlags;
    u32 field25_0xc8;
    u32 field26_0xcc;
    u32 field27_0xd0;
    u16 unk_trackSelectionFlags2;
    u16 unk_trackSelectionFlags3;
    u32 field30_0xd8;
    u32 field31_0xdc;
    u32 field32_0xe0;
    u32 field33_0xe4;
    u32 field34_0xe8;
    u32 field35_0xec;
    u32 field36_0xf0;
    u16 unk_trackSelectionFlags4;
    u16 unk_trackSelectionFlags5;
    u32 field39_0xf8;
    u32 field40_0xfc;
    u32 field41_0x100;
    u32 field42_0x104;
    u8 field43_0x108[1024];
    u32 field44_0x508;
    u32 field45_0x50c;
    u32 field46_0x510;
    u16 field47_0x514;
    u16 field48_0x516;
    u32 field49_0x518;
    u32 field50_0x51c;
    u32 field51_0x520;
    u32 field52_0x524;
    u32 field53_0x528;
    u32 field54_0x52c;
    u32 field55_0x530;
    s32 field56_0x534;
    s32 field57_0x538;
    u8 field58_0x53c[192];
} TrackSelectState;

typedef struct __attribute__((packed)) {
    enum SpmPage menuPage;
    s32 unk_multiplayerMirror;
    s32 playerIndex;
    s32 gamemodeMirror;
    enum Gamemode gamemode;
    enum RaceSpeed raceSpeed;
    enum Character character;
    enum TrackCup cup;
    s32 track;
    s32 lastCharacters[4];
    s32 field11_0x34;
    s32 field12_0x38;
    s32 field13_0x3c;
    s32 field14_0x40;
    s32 field15_0x44;
    s32 field16_0x48;
    u32 unlockedTracks;
    bool32 field18_0x50;
    s32 field19_0x54;
    s32 field20_0x58;
    s32 field21_0x5c;
    s32 field22_0x60;
    s32 field23_0x64;
    s32 field24_0x68;
    u8 field25_0x6c[44];
    s16 field0x98;
    u16 field0x9a;
    u16 field0x9c;
    u16 field0x9e;
    u8 field0xa0[16];
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
    s16 field56_0x15c;
    s16 field57_0x15e;
    s32 field58_0x160;
    s32 field59_0x164;
    s32 field60_0x168;
    u32 field61_0x16c;
    s32 field62_0x170;
    s32 field63_0x174;
    s32 field64_0x178;
    s32 field65_0x17c;
    u8 field66_0x180[2];
    u16 field67_0x182;
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
    u16 field87_0x6d4;
    u16 field88_0x6d6;
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
    u16 field103_0x710;
    u16 field104_0x712;
    s32 field105_0x714;
    s32 field106_0x718;
    s32 field107_0x71c;
    s32 field108_0x720;
    s32 field109_0x724;
    s32 field110_0x728;
    s32 field111_0x72c;
    s32 field112_0x730;
    s32 field113_0x734;
    TrackSelectState trackSelectState;
    bool32 unkReloadGfx;
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
    u16 field184_0xd60;
    u16 field185_0xd62;
    u16 field186_0xd64;
    u16 field187_0xd66;
    u32 field188_0xd68;
    u32 field189_0xd6c;
    u32 field190_0xd70;
    u32 field191_0xd74;
    s32 field192_0xd78;
    u32 field193_0xd7c;
    s32 field194_0xd80;
    u32 field195_0xd84;
    SpmUnk2 spmUnk2[32];
    u32 playerCount;
    s32 *field199_0x108c;
    s32 field200_0x1090;
    s32 field201_0x1094;
    s16 field202_0x1098;
    s16 field203_0x109a;
    s32 field204_0x109c;
    u32 field205_0x10a0;
    s32 unlockedTracksTable[34];
    bool32 unlockedSpecialCup;
    UnkTrackDataTable unkTrackDataTable;
    u8 field209_0x11bc[4];
    UnkStruct1 field210_0x11c0;
    u8 field211_0x11e3;
    s32 trackPage;
    s32 field213_0x11e8;
    s32 field214_0x11ec;
    u32 field215_0x11f0;
    u8 *field216_0x11f4;
    u32 field217_0x11f8;
    MenuBgData bgState;
} SpmState;

typedef struct __attribute__((packed)) {
    s16 x;
    s16 y;
    s16 scale;
} Transform;

typedef struct __attribute__((packed)) {
    Vec2s16 pos;
    u8 buf[0x10];
} UIElement;

typedef struct __attribute__((packed)) {
    s8 up;
    s8 down;
    s8 left;
    s8 right;
    u8 buf[4];
} MenuInput;



inline s16 adjust_fixed(s16 fixed) {
    if (fixed < 0){
        return fixed + 0x3f;
    }
    return fixed;
}
inline s16 scale_sine(s16 value, s16 scale, s16 offset){
    return (s16)(math_sin(adjust_fixed(value)) * scale >> 0xf) + offset;
}