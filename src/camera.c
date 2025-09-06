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

    sub_8031054(camera);
    sub_8031064(camera);
    return;
}
void sub_8030918(Camera* camera) {
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

void sub_8030AFC(Camera* camera) {
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
    s32* srcPos; // Matches pointer arithmetic
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
        y = srcPos[1];
        x = srcPos[0];
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
        srcPos -= 2;
        scanline--;
        i--;
    } while (i >= 64);
    camera->field_0x50 = 1 - camera->field_0x50;
    return;
}

// #ifndef NONMATCHING
// asm_unified(".include \"nonmatching/camProjectActor.s\"");
// #else
void cam_projectActor(Camera *camera, Actor *actor, Vec2s16 *drawPosOut, s16 *distanceOut)
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
    s32 rel_d;
    
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
    
    rel_y = p_point_rel_q8->x / 128;
    dist1_x_impq5 = (camera_5C_p1_x / 16 * (p_point_rel_q8->x / 128)) / 32;
    dist1_y_impq5 = (camera_5C_p1_y / 16 * (p_point_rel_q8->x / 128)) / 32;
    dist1_z_impq5 = (camera_5C_p1_z / 16 * rel_y) / 32;

    rel = p_point_rel_q8->y / 128;
    dist2_x_impq5 = (camera_5C_p2_x / 16 * (p_point_rel_q8->y / 128)) / 32;
    dist2_y_impq5 = (camera_5C_p2_y / 16 * (p_point_rel_q8->y / 128)) / 32;
    dist2_z_impq5 = (camera_5C_p2_z / 16 * rel) / 32;

    rel_d = p_point_rel_q8->z / 128;
    dist3_y_impq5 = ((camera_5C_p3_y / 16) * (p_point_rel_q8->z / 128)) / 32;
    dist3_z_impq5 = ((camera_5C_p3_z / 16) * (rel_d)) / 32;

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
// #endif

u32 sub_8030E5C(Camera *camera)
{
    return camera->field_0x4c;
}
void* sub_8030E60(Camera *camera,int param_2,int param_3)
{
    return (void*)(0x03004FE0 + param_2 * 0x600 + param_3 * 0x10);
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
    sub_8031038(camera);
    return;
}
void sub_8030EA0(Camera *camera,int param_2)
{
    camera->elevation = param_2 << 0x10;
    sub_8030918(camera);
    return;
}
void sub_8030EB0(Camera *camera,short param_2)
{
    camera->pitch = param_2;
    unk_updateCamAngle(camera);
    sub_8030918(camera);
    sub_803104C(camera);
    return;
}
void cam_setAngle(Camera *camera,short angle)
{
    camera->yaw = angle;
    unk_updateCamAngle(camera);
    return;
}
void sub_8030ED8(Camera *camera,int x,int y,int z)
{
    (camera->pos).x = x;
    (camera->pos).y = y;
    camera->unkZ = z;
    sub_803104C(camera);
    return;
}
void cam_setPos(Camera *camera,int x,int y)
{
    (camera->pos).x = x;
    (camera->pos).y = y;
    sub_803104C(camera);
    sub_8031054(camera);
    sub_8031064(camera);
    return;
}
void cam_setZ(Camera *camera,int z)
{
    camera->unkZ = z;
    sub_803104C(camera);
    sub_8031064(camera);
    return;
}
void sub_8030F20(Camera *camera,int x,int y)
{
    (camera->screenPos).x = x;
    (camera->screenPos).y = y;
    return;
}

void sub_8030F28(Camera *camera,int *xOut,int *yOut)
{
    *xOut = (camera->screenPos).x;
    *yOut = (camera->screenPos).y;
    return;
}
