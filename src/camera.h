#pragma once 
#include "common.h"
#include "math.h"


typedef struct Camera
{
    Vec3s32 pos;
    s32 field_0xc;
    s32 elevation;
    s16 yaw;
    s16 pitch;
    Vec2s32 unk_otherPos;
    u32 field_0x20;
    Vec2s32 screenPos;
    u32 field_0x2c;
    u32 field_0x30;
    u32 field_0x34;

    Vec3s32 unk38;

    u8 field_0x44[8];
    u32 field_0x4c;
    s32 field_0x50;
    u8 field_0x54[8];

    Vec3s32 unk5C[3];

    Vec2s32 hdmaBuffer[0x60];

    s32 unk380;
    s16 field_0x384;
    u8 field_0x386;
    u8 field_0x387;
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
    u8 field_0x3a6[10];
    u32 field_0x3b0;
    u32 field_0x3b4;
    u32 field_0x3b8;
    s32 field_0x3bc;
} Camera;
