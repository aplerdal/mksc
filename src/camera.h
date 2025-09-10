#pragma once 
#include "common.h"
#include "math.h"
#include "actor.h"

extern s32 Div(s32, s32);

typedef struct astruct3 {
    u8 unk[8];
    s32 field_0x8;
} astruct3;

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
    u16 field_0x390;
    u16 field_0x392;
    s16 field_0x394;
    s16 field_0x396;
    s32 field_0x398;
    s32 field_0x39c;
    u16 field_0x3a0;
    u16 field_0x3a2;
    s16 field_0x3a4;
    s16 field_0x3a6;
    astruct3* field_0x3a8;
    u32 field_0x3ac;
    u32 field_0x3b0;
    u32 field_0x3b4;
    u32 field_0x3b8;
    s32 field_0x3bc;
} Camera;

void unk_updateCamAngle(Camera* camera);
void cam_8030918(Camera* camera);
void sub_80309B0(Camera* camera);
void sub_SetHDMA(Camera* camera);
void cam_CalcProjectActor(Camera *camera, Actor *actor, Vec2s16 *drawPosOut, s16 *distanceOut);
u32 sub_8030E5C(Camera *camera);
void* sub_8030E60(Camera *camera,int param_2,int param_3);
void sub_8030E74(Camera *camera);
void sub_8030E80(Camera *camera);
void sub_8030E90(Camera *camera,int param_2);
void cam_SetElevation(Camera *camera,int param_2);
void cam_SetPitch(Camera *camera,short param_2);
void cam_SetYaw(Camera *camera,short angle);
void cam_SetPos3(Camera *camera,int x,int y,int z);
void cam_SetPos(Camera *camera,int x,int y);
void cam_SetHeight(Camera *camera,int z);
void cam_SetScreenPos(Camera *camera,int x,int y);
void cam_GetScreenPos(Camera *camera,int *xOut,int *yOut);
s16 sub_8030F34(s32 arg0, s16 arg1);
void sub_8030F88(Vec2s16* arg0, Vec2s16* arg1, s32 arg2, s16 arg3);
void cam_ProjectActor(Camera *camera, Actor *actor);
s32 cam_8031000(Camera* camera, Vec3s32* pos);
void cam_8031038(Camera *camera);
void cam_803104C(Camera *camera);
void cam_8031054(Camera *camera);
void sub_8031064(Camera* camera);
void sub_80310E8(Camera* camera);
void sub_80310F4(Camera* camera);
void sub_80310F4(Camera* camera);
void sub_8031100(Camera* camera);
// void sub_80311B4(Camera* camera);
void sub_80312DC(Camera* camera);
void cam_80312e8(Camera* camera);