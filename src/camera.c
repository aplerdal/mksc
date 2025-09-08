#include "camera.h"

#include "common.h"
#include "math.h"
#include "actor.h"

extern volatile BgAffineDstData BgAffineBuf[2][96];

void unk_updateCamAngle(Camera* camera) {
    int tempSin1;
    int tempCos1;
    int tempSin2;
    int tempCos2; 
    Vec3s32* cam5c;
    
    cam5c = camera->unk5C;
    tempCos1 = math_cos(camera->yaw);
    tempSin1 = math_sin(camera->yaw);
    
    tempCos2 = math_cos(camera->pitch);
    tempSin2 = math_sin(camera->pitch);
    
    cam5c[0].x = tempCos1 * 2;
    cam5c[0].y = ((s32)(-tempSin1 * tempCos2) * 2) / 0x8000;
    cam5c[0].z = ((s32)(-tempSin1 * tempSin2) * 2) / 0x8000;


    cam5c[1].x = tempSin1 * 2;
    cam5c[1].y = ((s32)(tempCos1 * tempCos2) * 2) / 0x8000;
    cam5c[1].z = ((s32)(tempCos1 * tempSin2) * 2) / 0x8000;

    cam5c[2].x = 0;
    cam5c[2].y = -tempSin2 * 2;
    cam5c[2].z = tempCos2 * 2;

    cam_8031054(camera);
    sub_8031064(camera);
    return;
}
void cam_8030918(Camera* camera) {
    s32 sin;
    s32 cos;
    s32 iVar1;
    u32 uVar2;
    Vec2s32* dest;
    s32 iVar4;
    
    dest = camera->hdmaBuffer;
    cos = math_cos(camera->pitch);
    sin = math_sin(camera->pitch);
    iVar4 = 0x40;
    do {
        uVar2 = (s32)camera->field_0x34/ (((camera->elevation / 0x10000) * cos + (iVar4 - (camera->screenPos).y) * sin) / 0x80);
        dest->x = uVar2;
        iVar1 = cos * uVar2;
        dest->y = iVar1 / 0x8000;

        dest = dest + 1;
        iVar4 = iVar4 + 1;
    } while (iVar4 < 0xa0);
    return;
}

void sub_80309B0(Camera* camera) {
    register Camera* cam_r4 asm("r4");
    s32 elevation;
    s32 cotan;
    s32 cotan_temp;
    s32 pitch;
    s32 var_r1;
    s32 var_r0_4;
    s32 temp_r5;

    cam_r4 = camera;
    pitch = cam_r4->pitch;
    temp_r5 = math_sin(pitch);

    if (math_sin(pitch) != 0) {
         cotan_temp = Div(math_cos(pitch), temp_r5);
    } else {
         cotan_temp = 0;
    }
    cotan = cotan_temp;
    elevation = cam_r4->elevation;
    

    if (((elevation - 1) < 0xFFFFu) || ((elevation < 0) && (elevation > -0x10000))) {
        var_r0_4 = (elevation * cotan) / 0x10000;
        goto block_38;
    }
    if (((elevation-1) < 0xFFFFFu) || ((elevation < 0) && (elevation > -0x100000))) {
        var_r1 = ((elevation / 0x10) * cotan) / 0x8000000;
    } else if (((elevation-1) < 0xFFFFFFu) || ((elevation < 0) && (elevation > (0xFF << 24)))) {
        var_r1 = ((elevation / 0x100) * cotan) / 0x800000;
    } else if (((elevation-1) < 0x0FFFFFFFu) || ((elevation < 0) && (elevation > (0xF0 << 24)))) {
        var_r1 = ((elevation / 0x1000) * cotan) / 0x80000;
    } else {
        var_r0_4 = ((elevation / 0x10000) * cotan);
block_38:
        var_r1 = var_r0_4 / 0x8000;
    }
    cam_r4->field_0x2c = (s32)(cam_r4->screenPos.y - var_r1);
}

void sub_SetHDMA(Camera* camera) {
    s32 pa;
    s32 pb;
    s32 pc;
    s32 pd;
    volatile BgAffineDstData* dest;
    Vec2s32* src;
    s32 cosAngle;
    s32 sinAngle;
    s32 worldX;
    s32 worldY;
    s32 screenX;
    s32 screenY;
    s32 i, j;
    s32 scanline;
    Vec2s32* srcPos;
    s32 x;
    s32 y;
    Vec2s32* unk_otherPos;
    
    cosAngle = math_cos(camera->yaw);
    sinAngle = math_sin(camera->yaw);
    i = 159;
    j = i - 0x40;
    srcPos = camera->hdmaBuffer + (i - 64);
    dest = BgAffineBuf[camera->field_0x50] + j;

    unk_otherPos = &camera->unk_otherPos;
    worldX = ((unk_otherPos)->x / 256);
    worldY = ((unk_otherPos)->y / 256);

    screenX = -camera->screenPos.x;
    scanline = (i - camera->screenPos.y);

    do {
        y = srcPos->y;
        x = srcPos->x;
        pa = (y * cosAngle) / 32768;
        pb = (-x * sinAngle) / 32768;
        pc = (y * sinAngle) / 32768;
        pd = (x * cosAngle) / 32768;
        dest->dx = worldX + screenX * pa + scanline * pb;
        dest->dy = worldY + screenX * pc + scanline * pd;
        dest->pa = pa;
        dest->pb = pb;
        dest->pc = pc;
        dest->pd = pd;
        dest--;
        srcPos--;
        scanline--;
        i--;
    } while (i >= 64);
    camera->field_0x50 = 1 - camera->field_0x50;
    return;
}

#ifndef NONMATCHING
asm_unified(".include \"nonmatching/camProjectActor.s\"");
#else
void cam_CalcProjectActor(Camera *camera, Actor *actor, Vec2s16 *drawPosOut, s16 *distanceOut)
{
    s32 dist1_y_impq5;
    s32 dist1_z_impq5;
    s32 dist2_x_impq5;
    s32 dist2_y_impq5;
    s32 dist2_z_impq5;
    s32 dist3_y_impq5;
    s32 dist3_z_impq5;

    Vec3s32 point_rel_q8;
    Vec3s32 point4;

    s32 camera_5C_p1_x;
    s32 camera_5C_p1_y;
    s32 camera_5C_p1_z;
    s32 camera_5C_p2_x;
    s32 camera_5C_p2_y;
    s32 camera_5C_p2_z;
    s32 camera_5C_p3_y;
    s32 camera_5C_p3_z;
    
    Vec3s32* p_point_rel_q8 = &point_rel_q8;
    Vec3s32* p_point4 = &point4;
    Vec3s32* r7 = &camera->unk38;
    Vec3s32* r0 = camera->unk5C;
    s32 dist1_x_impq5;

    s32 rel;
    s32 rel_x;
    s32 rel_y;
    s32 rel_d;NONMATCHING
    
    camera_5C_p1_x = r0[0].x;
    camera_5C_p1_y = r0[0].y;
    camera_5C_p1_z = r0[0].z;
    camera_5C_p2_x = r0[1].x;
    camera_5C_p2_y = r0[1].y;
    camera_5C_p2_z = r0[1].z;
    camera_5C_p3_y = r0[2].y;
    camera_5C_p3_z = r0[2].z;

    p_point_rel_q8->x = actor->posX - r7->x;
    if (!IN_RANGE(p_point_rel_q8->x, -0x3ffffff, 0x3ffffff)) {
        *distanceOut = -1;
        return;
    }

    p_point_rel_q8->y = actor->posY - r7->y;
    if (!IN_RANGE(p_point_rel_q8->y, -0x3ffffff, 0x3ffffff)) {
        *distanceOut = -1;
        return;
    }

    p_point_rel_q8->z = -r7->z;
    if (!IN_RANGE(p_point_rel_q8->z, -0x3ffffff, 0x3ffffff)) {
        *distanceOut = -1;
        return;
    }
    
    rel_y = p_point_rel_q8->x / 0x80;
    dist1_x_impq5 = (camera_5C_p1_x / 0x10 * (p_point_rel_q8->x / 128)) / 0x20;
    dist1_y_impq5 = (camera_5C_p1_y / 0x10 * (p_point_rel_q8->x / 128)) / 0x20;
    dist1_z_impq5 = (camera_5C_p1_z / 0x10 * rel_y) / 0x20;

    rel = p_point_rel_q8->y / 0x80;
    dist2_x_impq5 = (camera_5C_p2_x / 0x10 * (p_point_rel_q8->y / 0x80)) / 0x20;
    dist2_y_impq5 = (camera_5C_p2_y / 0x10 * (p_point_rel_q8->y / 0x80)) / 0x20;
    dist2_z_impq5 = (camera_5C_p2_z / 0x10 * rel) / 0x20;

    rel_d = p_point_rel_q8->z / 0x80;
    dist3_y_impq5 = ((camera_5C_p3_y / 0x10) * (p_point_rel_q8->z / 0x80)) / 0x20;
    dist3_z_impq5 = ((camera_5C_p3_z / 0x10) * (rel_d)) / 0x20;

    p_point4->x = dist1_x_impq5 + dist2_x_impq5;
    p_point4->y = dist1_y_impq5 + dist2_y_impq5 + dist3_y_impq5;
    p_point4->z = dist1_z_impq5 + dist2_z_impq5 + dist3_z_impq5;

    rel_d = camera->elevation - p_point4->z;
    
    if (rel_d <= 0) {
        *distanceOut = -1;
        return;
    }

    if (rel_d < 0x00200000) {
        *distanceOut = Div(rel_d * 0x100, camera->elevation);
    }
    else {
        *distanceOut = Div(rel_d, camera->elevation / 0x100);
    }

    if (*distanceOut < 0x20 || *distanceOut > 0x400) {
        *distanceOut = -1;
        return;
    }

    rel_x = Div(p_point4->x, *distanceOut) / 0x100;
    rel = Div(p_point4->y, *distanceOut) / 0x100;
    drawPosOut->x = rel_x + camera->screenPos.x;
    drawPosOut->y = rel + camera->screenPos.y + camera->unk380;
    *distanceOut *= 4;

    return;
}
#endif

u32 sub_8030E5C(Camera *camera)
{
    return camera->field_0x4c;
}
void* sub_8030E60(Camera *camera,int param_2,int param_3)
{
    return (void*)(((void*)&BgAffineBuf) + param_2 * 0x600 + param_3 * 0x10);
}
void sub_8030E74(Camera *camera)
{
    camera->field_0x4c = 1 - camera->field_0x50;
    return;
}
void sub_8030E80(Camera *camera)
{
    camera->field_0x50 = 0;
    camera->field_0x4c = 0;
    camera->unk380 = 0;
    return;
}
void sub_8030E90(Camera *camera,int param_2)
{
    camera->field_0xc = param_2 << 0x10;
    cam_8031038(camera);
    return;
}
void cam_SetElevation(Camera *camera,int param_2)
{
    camera->elevation = param_2 << 0x10;
    cam_8030918(camera);
    return;
}
void cam_SetPitch(Camera *camera,short param_2)
{
    camera->pitch = param_2;
    unk_updateCamAngle(camera);
    cam_8030918(camera);
    cam_803104C(camera);
    return;
}
void cam_SetYaw(Camera *camera,short angle)
{
    camera->yaw = angle;
    unk_updateCamAngle(camera);
    return;
}
void cam_SetPos3(Camera *camera,int x,int y,int z)
{
    (camera->pos).x = x;
    (camera->pos).y = y;
    (camera->pos).z = z;
    cam_803104C(camera);
    return;
}
void cam_SetPos(Camera *camera,int x,int y)
{
    (camera->pos).x = x;
    (camera->pos).y = y;
    cam_803104C(camera);
    cam_8031054(camera);
    sub_8031064(camera);
    return;
}
void cam_SetHeight(Camera *camera,int z)
{
    (camera->pos).z = z;
    cam_803104C(camera);
    sub_8031064(camera);
    return;
}
void cam_SetScreenPos(Camera *camera,int x,int y)
{
    (camera->screenPos).x = x;
    (camera->screenPos).y = y;
    return;
}

void cam_GetScreenPos(Camera *camera,int *xOut,int *yOut)
{
    *xOut = (camera->screenPos).x;
    *yOut = (camera->screenPos).y;
    return;
}

s16 sub_8030F34(s32 arg0, s16 arg1) {
    s32 var_r2;
    s32 div;
    s32 ret;
    s32 temp_r2;

    if (arg0 == 0) return 0;

    temp_r2 = math_abs(arg0) / 16384;
    if (arg1 == 0x100) {
        div = temp_r2;
    } else {
        div = Div(temp_r2 << 8, arg1);
    }
    if (arg0 < 0)
        ret = (s16)-div;
    else
        ret = (s16)div;
    return ret;
}

// This is probably a mistake, but I couldn't get it to match otherwise
static inline s32 alt_math_abs(s32 x)
{
    register s32 var asm("r2");
    var = x;
    if (x < 0)
        var = -x;
    return var;
}

void sub_8030F88(Vec2s16* arg0, Vec2s16* arg1, s32 arg2, s16 arg3) {
    s32 temp_r2;
    s32 var_r0_2;
    s16 var_r2;
    s16 compVal;
    s16 why = arg3;

    var_r2 = 0;
    if (arg2 != 0) {
        compVal = 256 == why;
        var_r0_2 = alt_math_abs(arg2);
        if (var_r0_2 < 0) {
            var_r0_2 += 0x3fff;
        }
        temp_r2 =  (var_r0_2) >> 0xe;
        if (256 == why) {
            var_r0_2 = temp_r2;
        } else {
            var_r0_2 = Div(temp_r2 << 8, why);
        }
        if (arg2 < 0) {
            var_r0_2 = (s16)(0 - var_r0_2);
        } else {
            var_r0_2 = (s16)(var_r0_2);
        }
        var_r2 = (s16)var_r0_2;
    }
    arg1->x = (s16) arg0->x;
    arg1->y = (s16) ((arg0->y) - var_r2);
}

void cam_ProjectActor(Camera *camera,Actor *actor)
{
  cam_CalcProjectActor(camera,actor,&actor->drawPos,&actor->drawScale);
  return;
}
s32 cam_8031000(Camera* camera, Vec3s32* pos) {
    s32 temp_r0;
    s32 temp_r1;

    temp_r1 = camera->unk38.x - pos->x;
    if (temp_r1 < 0x1000000) {
        if (temp_r1 > -0x1000000) {
            temp_r0 = camera->unk38.y - pos->y;
            if (temp_r0 < 0x1000000) {
                if (temp_r0 > -0x1000000) {
                    return 1;
                }
            }
        }
    }
    return 0;
}

void cam_8031038(Camera *camera)
{
    camera->field_0x34 = camera->field_0xc + camera->field_0x30;
    cam_8030918(camera);
    return;
}
void cam_803104C(Camera *camera)
{
    camera->field_0x30 = 0;
  return;
}
void cam_8031054(Camera *camera)
{
  (camera->unk_otherPos).x = (camera->pos).x;
  (camera->unk_otherPos).y = (camera->pos).y;
  camera->field_0x20 = 0;
  return;
}
void sub_8031064(Camera* camera) {
    s32 temp_r3;
    s32 shift1;
    s32 shift2;
    s32 var_r7;
    Vec3s32* temp_r6;
    Vec3s32* temp_r7;
    Vec3s32* cam_pos;
    
    temp_r6 = camera->unk5C;
    temp_r3 = camera->elevation - camera->field_0xc;
    temp_r7 = &camera->unk38;
    cam_pos = &camera->pos;
    var_r7 = (temp_r3 < 0) ? -temp_r3 : temp_r3;
    
    if (var_r7 <= 0xFFFF) {
        shift1 = 0;
        shift2 = 16;
    } else if (var_r7 <= 0xFFFFF) {
        shift1 = 5;
        shift2 = 11;
    } else if (var_r7 <= 0xFFFFFF) {
        shift1 = 9;
        shift2 = 7;
    } else {
        shift1 = 13;
        shift2 = 3;
    }
    temp_r7->x = (s32) (cam_pos->x - ((s32) ((temp_r3 >> shift1) * temp_r6[0].z) >> shift2));
    temp_r7->y = (s32) (cam_pos->y - ((s32) ((temp_r3 >> shift1) * temp_r6[1].z) >> shift2));
    temp_r7->z = (s32) (cam_pos->z - ((s32) ((temp_r3 >> shift1) * temp_r6[2].z) >> shift2));
}
void sub_80310E8(Camera* camera) {
    camera->field_0x50 = 1 - camera->field_0x50;
}
void sub_80310F4(Camera* camera) {
    camera->field_0x4c = camera->field_0x50;
    camera->field_0x50 = 1 - camera->field_0x50;
}
void sub_8031100(Camera* camera) {
    camera->field_0x398 = camera->unk_otherPos.x;
    camera->field_0x39c = camera->unk_otherPos.y;
    camera->field_0x3a0 = camera->yaw;
    camera->field_0x3a2 = 0;
    camera->field_0x388 = camera->unk_otherPos.x;
    camera->field_0x38c = camera->unk_otherPos.y;
    camera->field_0x390 = camera->yaw;
    camera->field_0x392 = 0;
    camera->field_0x394 = 0;
    camera->field_0x396 = 0;
    camera->field_0x3a4 = 0;
    camera->field_0x3b0 = 0;
    camera->field_0x3b4 = 0;
    camera->field_0x3b8 = 0;
    camera->field_0x3bc = 0;
    camera->field_0x384 = 0;
    camera->field_0x386 = 0;
    sub_80312DC(camera);
}
