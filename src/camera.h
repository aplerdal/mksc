#pragma once 
#include "common.h"
#include "math.h"

typedef struct Camera
{
    Vec2s32 pos;
    s32 unkZ;
    s32 field_0xc;
    s32 field_0x10;
    s16 angle;
    s16 field_0x16;
    Vec2s32 unk_otherPos;
    u32 field_0x20;
    Vec2s32 unk_vec2;
    u8  field_0x2c[4];
    u32 field_0x30;
    u32 field_0x34;
    s32 field_0x38; // Prob a vec2 of fixeds (Q8 implied)
    s32 field_0x3c; // 
    s32 field_0x40;
    u8  field_0x44[8];
    u32 field_0x4c;
    s32 field_0x50;
    u8  field_0x54[8];
    s32 field_0x5c; // Implied Q4
    s32 field_0x60; // Implied Q4
    s32 field_0x64;
    s32 field_0x68;
    s32 field_0x6c;
    s32 field_0x70;
    s32 field_0x74;
    s32 field_0x78;
    s32 field_0x7c;
    u32 field_0x80;
    s32 field_0x84;
    u8  field_0x88[752];
    Vec2s32 field_0x378;
    s32 field_0x380;
    s16 field_0x384;
    u8  field_0x386;
    u8  field_0x387;
    s32 field_0x388;
    s32 field_0x38c;
    s16 field_0x390;
    s16 field_0x392;
    s16 field_0x394;
    s16 field_0x396;
    s16 field_0x398;
    s16 field_0x39a;
    s32 field_0x39c;
    s16 field_0x3a0;
    s16 field_0x3a2;
    s16 field_0x3a4;
    u8  field_0x3a6[10];
    u32 field_0x3b0;
    u32 field_0x3b4;
    u32 field_0x3b8;
    s32 field_0x3bc;
} Camera;
