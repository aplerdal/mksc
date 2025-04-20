#pragma once

typedef struct
{
    int x;
    int y;
    int scale;
    int field_C;
    int field_10;
} struc_75;

typedef struct
{
    const u16* cellData;
    int x;
    int y;
} struc_76;

typedef struct
{
    u8 optionId;
    u32 field4;
} Struct1;

typedef struct
{
    vu16 bg0HOfs;
    vu16 bg0VOfs;
    vu16 bg1HOfs;
    vu16 bg1VOfs;
    vu16 bg2HOfs;
    vu16 bg2VOfs;
    vu16 bg3HOfs;
    vu16 bg3VOfs;
    vu16 bldCnt;
    vu16 bldAlpha;
    vu16 bldY;
    vu16 win0H;
    vu16 win0V;
    vu16 win1H;
    vu16 win1V;
    vu16 winIn;
    vu16 winOut;
    vu16 bg0Cnt;
    vu16 bg1Cnt;
    vu16 bg2Cnt;
    vu16 bg3Cnt;
    vu16 dispCnt;
    int field_2C;
    int field_30;
    void* field_34;
    struc_75 field_38[3];
    Struct1 mainMenuItems[10];
    u8 mainMenuItemCount;
    Struct1 linkSubMenuItems[10];
    u8 linkSubMenuItemCount;
    int mainMenuCursorPos;
    bool32 inLinkSubMenu;
    int lastInLinkSubMenu;
    int cursorPos;
    int lastCursorPos;
    int field_130;
    int field_134;
    int field_138;
    int field_13C;
    int field_140;
    int selectedOption;
    bool32 isNight;
    int koopaShipEnabled;
    int field_150;
    int field_154;
    int fallingStarState;
    Vec2s16 fallingStarPos;
    int fallingStarScale;
    int fallingStarRot;
    int field_168;
    int field_16C;
    int koopaShipState;
    int koopaShipCounter;
    int koopaShipX;
    int koopaShipY;
    Vec2s16 koopaShipPosition;
    bool32 isSunset;
    char field_188[512];
    int field_388;
    int field_38C;
    u32 field_390;
} TitleState;

bool32 title_main(void);
