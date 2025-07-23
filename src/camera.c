#include "camera.h"

#include "fixed.h"

void FUN_08030c3c(Camera *camera,astruct_2 *unkStruct,short *param_3,ushort *param_4)
{
  s16 uVar1;
  s32 rel_x_int;
  s32 iVar2;
  s32 iVar3;
  s32 iVar4;
  s32 iVar5;
  s32 iVar6;
  Q4 unk_cam_y_rel;
  Q4 unk_cam_x_rel;
  Q8 rel_x;
  Q8 rel_y;
  Q8 rel_z;
  s32 local_50;
  s32 local_4c;
  s32 local_48;
  s16 *local_44;
  s32 local_40;
  s32 local_3c;
  s32 local_38;
  s32 local_34;
  s32 local_30;
  s32 local_2c;
  s32 *local_28;
  s32 unk_x;
  
  local_28 = &rel_x;
  unk_cam_x_rel = camera->field_0x5c;
  unk_cam_y_rel = camera->field_0x60;
  local_40 = camera->field_0x64;
  local_3c = camera->field_0x68;
  local_38 = camera->field_0x6c;
  local_34 = camera->field_0x70;
  local_30 = camera->field_0x78;
  local_2c = camera->field_0x7c;
  rel_x = unkStruct->unk_x - camera->field_0x38;
  if ((rel_x > -0x3ffffff) && (rel_x < 0x3ffffff)) {
    rel_y = unkStruct->unk_y - camera->field_0x3c;
    if ((rel_y > -0x3ffffff) && (rel_y < 0x3ffffff)) {
      rel_z = -camera->field_0x40;
      if ((rel_z > -0x3ffffff) && (rel_z < 0x3ffffff)) {
        // Now fixed point :(

        rel_x_int = round_q8(rel_x) * 2;
        unk_x = round_q5(rel_x_int * round_q4(unk_cam_x_rel)); // Somehow unk_x was Q5?? I guess we run with it

        unk_cam_x_rel = rel_x_int * round_q4(unk_cam_y_rel);

        if (unk_cam_x_rel < 0) {
          unk_cam_x_rel = unk_cam_x_rel + 0x1f;
        }
        unk_cam_y_rel = local_40;
        if (local_40 < 0) {
          unk_cam_y_rel = local_40 + 0xf;
        }
        rel_x_int = rel_x_int * (unk_cam_y_rel >> 4);
        if (rel_x_int < 0) {
          rel_x_int = rel_x_int + 0x1f;
        }

        unk_cam_y_rel = rel_y;
        if (rel_y < 0) {
          unk_cam_y_rel = rel_y + 0x7f;
        }
        unk_cam_y_rel = unk_cam_y_rel >> 7;
        iVar2 = local_3c;
        if (local_3c < 0) {
          iVar2 = local_3c + 0xf;
        }
        iVar2 = unk_cam_y_rel * (iVar2 >> 4);
        if (iVar2 < 0) {
          iVar2 = iVar2 + 0x1f;
        }
        iVar3 = local_38;
        if (local_38 < 0) {
          iVar3 = local_38 + 0xf;
        }
        iVar3 = unk_cam_y_rel * (iVar3 >> 4);
        if (iVar3 < 0) {
          iVar3 = iVar3 + 0x1f;
        }
        iVar4 = local_34;
        if (local_34 < 0) {
          iVar4 = local_34 + 0xf;
        }
        unk_cam_y_rel = unk_cam_y_rel * (iVar4 >> 4);
        if (unk_cam_y_rel < 0) {
          unk_cam_y_rel = unk_cam_y_rel + 0x1f;
        }
        iVar4 = rel_z;
        if (0 < camera->field14_0x40) {
          iVar4 = rel_z? + 0x7f;
        }
        iVar5 = local_30;
        if (local_30 < 0) {
          iVar5 = local_30 + 0xf;
        }
        iVar5 = (iVar4 >> 7) * (iVar5 >> 4);
        if (iVar5 < 0) {
          iVar5 = iVar5 + 0x1f;
        }
        iVar6 = local_2c;
        if (local_2c < 0) {
          iVar6 = local_2c + 0xf;
        }
        iVar4 = (iVar4 >> 7) * (iVar6 >> 4);

        local_50 = unk_x + (iVar2 >> 5);
        local_4c = (unk_cam_x_rel >> 5) + (iVar3 >> 5) + (iVar5 >> 5);
        local_48 = round_q5(rel_x_int) + round_q5(unk_cam_y_rel) + round_q5(iVar4);
        if (camera->field3_0x10 - local_48 < 1) {
          uVar1 = 0xffff;
        }
        else {
          local_44 = param_3;
          uVar1 = FUN_08061354();
          *param_4 = uVar1;
          if ((*param_4 - 0x20) * 0x10000 < 0x3e00001) {
            unk_cam_x_rel = FUN_08061354();
            if (unk_cam_x_rel < 0) {
              unk_cam_x_rel = unk_cam_x_rel + 0xff;
            }
            unk_cam_y_rel = FUN_08061354();
            if (unk_cam_y_rel < 0) {
              unk_cam_y_rel = unk_cam_y_rel + 0xff;
            }
            *local_44 = (short)(camera->unk_vec2).x + (short)((uint)unk_cam_x_rel >> 8);
            local_44[1] = (short)camera->field42_0x380 +
                          (short)(camera->unk_vec2).y + (short)((uint)unk_cam_y_rel >> 8);
            uVar1 = (ushort)((int)(short)*param_4 << 2);
          }
          else {
            uVar1 = 0xffff;
          }
        }
      }
      else {
        uVar1 = 0xffff;
      }
    }
    else {
      uVar1 = 0xffff;
    }
  }
  else {
    uVar1 = 0xffff;
  }
  *param_4 = uVar1;
  return;
}



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
  camera->field_0x380 = 0;
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
  camera->field_0x10 = param_2 << 0x10;
  sub_8030918(camera);
  return;
}
void sub_8030EB0(Camera *camera,short param_2)
{
  camera->field_0x16 = param_2;
  unk_updateCamAngle(camera);
  sub_8030918(camera);
  sub_803104C(camera);
  return;
}
void cam_setAngle(Camera *camera,short angle)
{
  camera->angle = angle;
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
  (camera->unk_vec2).x = x;
  (camera->unk_vec2).y = y;
  return;
}
void sub_8030F28(Camera *camera,int *xOut,int *yOut)
{
  *xOut = (camera->unk_vec2).x;
  *yOut = (camera->unk_vec2).y;
  return;
}
