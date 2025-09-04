.include "asm/macros.inc"

.syntax unified
.text
    
    thumb_func_start cam_projectActor
cam_projectActor:
    push {r4, r5, r6, r7, lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5, r6, r7}
    add sp, #-0x03C
    adds r6, r0, #0x0
    adds r5, r1, #0x0
    str r2, [sp, #0x018]
    adds r4, r3, #0x0
    mov r0, sp
    str r0, [sp, #0x034]
    add r1, sp, #0x00C
    mov r8, r1
    adds r7, r6, #0x0
    adds r7, #0x38
    adds r0, r6, #0x0
    adds r0, #0x5C
    ldr r2, [r6, #0x5C]
    mov r9, r2
    ldr r1, [r0, #0x04]
    mov r10, r1
    ldr r2, [r0, #0x08]
    str r2, [sp, #0x01C]
    ldr r1, [r0, #0x0C]
    str r1, [sp, #0x020]
    ldr r2, [r0, #0x10]
    str r2, [sp, #0x024]
    ldr r1, [r0, #0x14]
    str r1, [sp, #0x028]
    ldr r2, [r0, #0x1C]
    str r2, [sp, #0x02C]
    ldr r0, [r0, #0x20]
    str r0, [sp, #0x030]
    ldr r1, [r5, #0x00]
    ldr r0, [r6, #0x38]
    subs r2, r1, r0
    str r2, [sp, #0x000]
    ldr r0, _08030C9C @ =0x03FFFFFF
    mov r12, r0
    adds r0, r2, r0
    ldr r3, _08030CA0 @ =0x07FFFFFE
    cmp r0, r3
    bls _08030CA4
    movs r1, #0x01
    negs r1, r1
    adds r0, r1, #0x0
    b _08030E4A
_08030C9C: .4byte 0x03FFFFFF
_08030CA0: .4byte 0x07FFFFFE
_08030CA4:
    ldr r0, [r5, #0x04]
    ldr r1, [r7, #0x04]
    subs r0, r0, r1
    str r0, [sp, #0x004]
    ldr r1, _08030CBC @ =0x03FFFFFF
    adds r0, r0, r1
    cmp r0, r3
    bls _08030CC0
    movs r2, #0x01
    negs r2, r2
    adds r0, r2, #0x0
    b _08030E4A
_08030CBC: .4byte 0x03FFFFFF
_08030CC0:
    ldr r0, [r7, #0x08]
    negs r0, r0
    str r0, [sp, #0x008]
    add r0, r12
    cmp r0, r3
    bls _08030CD4
    movs r1, #0x01
    negs r1, r1
    adds r0, r1, #0x0
    b _08030E4A
_08030CD4:
    adds r0, r2, #0x0
    cmp r2, #0x00
    bge _08030CDC
    adds r0, #0x7F
_08030CDC:
    asrs r1, r0, #0x07
    mov r0, r9
    cmp r0, #0x00
    bge _08030CE6
    adds r0, #0x0F
_08030CE6:
    asrs r0, r0, #0x04
    muls r0, r1
    cmp r0, #0x00
    bge _08030CF0
    adds r0, #0x1F
_08030CF0:
    asrs r0, r0, #0x05
    str r0, [sp, #0x038]
    mov r0, r10
    cmp r0, #0x00
    bge _08030CFC
    adds r0, #0x0F
_08030CFC:
    asrs r0, r0, #0x04
    muls r0, r1
    cmp r0, #0x00
    bge _08030D06
    adds r0, #0x1F
_08030D06:
    asrs r0, r0, #0x05
    mov r12, r0
    ldr r0, [sp, #0x01C]
    cmp r0, #0x00
    bge _08030D12
    adds r0, #0x0F
_08030D12:
    asrs r0, r0, #0x04
    muls r0, r1
    cmp r0, #0x00
    bge _08030D1C
    adds r0, #0x1F
_08030D1C:
    asrs r0, r0, #0x05
    mov r10, r0
    ldr r2, [sp, #0x034]
    ldr r1, [r2, #0x04]
    adds r0, r1, #0x0
    cmp r1, #0x00
    bge _08030D2C
    adds r0, #0x7F
_08030D2C:
    asrs r2, r0, #0x07
    ldr r0, [sp, #0x020]
    cmp r0, #0x00
    bge _08030D36
    adds r0, #0x0F
_08030D36:
    asrs r0, r0, #0x04
    muls r0, r2
    cmp r0, #0x00
    bge _08030D40
    adds r0, #0x1F
_08030D40:
    asrs r0, r0, #0x05
    mov r9, r0
    ldr r0, [sp, #0x024]
    cmp r0, #0x00
    bge _08030D4C
    adds r0, #0x0F
_08030D4C:
    asrs r0, r0, #0x04
    muls r0, r2
    cmp r0, #0x00
    bge _08030D56
    adds r0, #0x1F
_08030D56:
    asrs r7, r0, #0x05
    ldr r0, [sp, #0x028]
    cmp r0, #0x00
    bge _08030D60
    adds r0, #0x0F
_08030D60:
    asrs r0, r0, #0x04
    muls r0, r2
    cmp r0, #0x00
    bge _08030D6A
    adds r0, #0x1F
_08030D6A:
    asrs r5, r0, #0x05
    ldr r0, [sp, #0x034]
    ldr r2, [r0, #0x08]
    adds r0, r2, #0x0
    cmp r2, #0x00
    bge _08030D78
    adds r0, #0x7F
_08030D78:
    asrs r1, r0, #0x07
    ldr r0, [sp, #0x02C]
    cmp r0, #0x00
    bge _08030D82
    adds r0, #0x0F
_08030D82:
    asrs r0, r0, #0x04
    muls r0, r1
    cmp r0, #0x00
    bge _08030D8C
    adds r0, #0x1F
_08030D8C:
    asrs r3, r0, #0x05
    ldr r0, [sp, #0x030]
    cmp r0, #0x00
    bge _08030D96
    adds r0, #0x0F
_08030D96:
    asrs r0, r0, #0x04
    muls r0, r1
    cmp r0, #0x00
    bge _08030DA0
    adds r0, #0x1F
_08030DA0:
    asrs r1, r0, #0x05
    ldr r0, [sp, #0x038]
    add r0, r9
    mov r2, r8
    str r0, [r2, #0x00]
    mov r2, r12
    adds r0, r2, r7
    adds r0, r0, r3
    mov r2, r8
    str r0, [r2, #0x04]
    mov r2, r10
    adds r0, r2, r5
    adds r0, r0, r1
    mov r1, r8
    str r0, [r1, #0x08]
    ldr r1, [r6, #0x10]
    subs r2, r1, r0
    cmp r2, #0x00
    bgt _08030DCE
    movs r2, #0x01
    negs r2, r2
    adds r0, r2, #0x0
    b _08030E4A
_08030DCE:
    ldr r0, _08030DD8 @ =0x001FFFFF
    cmp r2, r0
    bgt _08030DDC
    lsls r0, r2, #0x08
    b _08030DE6
_08030DD8: .4byte 0x001FFFFF
_08030DDC:
    cmp r1, #0x00
    bge _08030DE2
    adds r1, #0xFF
_08030DE2:
    asrs r1, r1, #0x08
    adds r0, r2, #0x0
_08030DE6:
    bl Div
    strh r0, [r4, #0x00]
    ldrh r0, [r4, #0x00]
    subs r0, #0x20
    lsls r0, r0, #0x10
    movs r1, #0xF8
    lsls r1, r1, #0x12
    cmp r0, r1
    bls _08030E02
    movs r1, #0x01
    negs r1, r1
    adds r0, r1, #0x0
    b _08030E4A
_08030E02:
    mov r2, r8
    ldr r0, [r2, #0x00]
    movs r2, #0x00
    ldsh r1, [r4, r2]
    bl Div
    cmp r0, #0x00
    bge _08030E14
    adds r0, #0xFF
_08030E14:
    asrs r5, r0, #0x08
    mov r1, r8
    ldr r0, [r1, #0x04]
    movs r2, #0x00
    ldsh r1, [r4, r2]
    bl Div
    cmp r0, #0x00
    bge _08030E28
    adds r0, #0xFF
_08030E28:
    asrs r2, r0, #0x08
    ldr r0, [r6, #0x24]
    adds r0, r0, r5
    ldr r1, [sp, #0x018]
    strh r0, [r1, #0x00]
    ldr r1, [r6, #0x28]
    adds r1, r1, r2
    movs r2, #0xE0
    lsls r2, r2, #0x02
    adds r0, r6, r2
    ldr r0, [r0, #0x00]
    adds r0, r0, r1
    ldr r1, [sp, #0x018]
    strh r0, [r1, #0x02]
    movs r2, #0x00
    ldsh r0, [r4, r2]
    lsls r0, r0, #0x02
_08030E4A:
    strh r0, [r4, #0x00]
    add sp, #0x03C
    pop {r3, r4, r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0