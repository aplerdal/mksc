.include "asm/macros.inc"

.syntax unified
.text

thumb_func_start unk_updateCamAngle
unk_updateCamAngle:
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r6, r0, #0x0
    adds r2, r6, #0x0
    adds r2, #0x5C
    ldr r0, _0803090C @ =0x080E645C
    mov r12, r0
    movs r5, #0x14
    ldsh r1, [r6, r5]
    adds r0, r1, #0x0
    cmp r1, #0x00
    bge _08030858
    adds r0, #0x3F
_08030858:
    asrs r3, r0, #0x06
    movs r4, #0x80
    lsls r4, r4, #0x01
    subs r0, r4, r3
    ldr r5, _08030910 @ =0x000003FF
    ands r0, r5
    lsls r0, r0, #0x02
    add r0, r12
    ldr r7, [r0, #0x00]
    adds r0, r3, #0x0
    ands r0, r5
    lsls r0, r0, #0x02
    add r0, r12
    ldr r0, [r0, #0x00]
    mov r8, r0
    movs r0, #0x16
    ldsh r1, [r6, r0]
    adds r0, r1, #0x0
    cmp r1, #0x00
    bge _08030882
    adds r0, #0x3F
_08030882:
    asrs r3, r0, #0x06
    subs r0, r4, r3
    ands r0, r5
    lsls r0, r0, #0x02
    add r0, r12
    ldr r4, [r0, #0x00]
    adds r0, r3, #0x0
    ands r0, r5
    lsls r0, r0, #0x02
    add r0, r12
    ldr r3, [r0, #0x00]
    lsls r0, r7, #0x01
    str r0, [r6, #0x5C]
    mov r5, r8
    negs r1, r5
    adds r0, r1, #0x0
    muls r0, r4
    cmp r0, #0x00
    bge _080308AC
    ldr r5, _08030914 @ =0x00003FFF
    adds r0, r0, r5
_080308AC:
    asrs r0, r0, #0x0E
    str r0, [r2, #0x04]
    adds r0, r1, #0x0
    muls r0, r3
    cmp r0, #0x00
    bge _080308BC
    ldr r1, _08030914 @ =0x00003FFF
    adds r0, r0, r1
_080308BC:
    asrs r0, r0, #0x0E
    str r0, [r2, #0x08]
    mov r5, r8
    lsls r0, r5, #0x01
    str r0, [r2, #0x0C]
    adds r0, r7, #0x0
    muls r0, r4
    cmp r0, #0x00
    bge _080308D2
    ldr r1, _08030914 @ =0x00003FFF
    adds r0, r0, r1
_080308D2:
    asrs r0, r0, #0x0E
    str r0, [r2, #0x10]
    adds r0, r7, #0x0
    muls r0, r3
    cmp r0, #0x00
    bge _080308E2
    ldr r5, _08030914 @ =0x00003FFF
    adds r0, r0, r5
_080308E2:
    asrs r0, r0, #0x0E
    str r0, [r2, #0x14]
    movs r0, #0x00
    str r0, [r2, #0x18]
    negs r0, r3
    lsls r0, r0, #0x01
    str r0, [r2, #0x1C]
    lsls r0, r4, #0x01
    str r0, [r2, #0x20]
    adds r0, r6, #0x0
    bl sub_8031054
    adds r0, r6, #0x0
    bl sub_8031064
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .byte 0x00, 0x00
_0803090C: .4byte gSinTable
_08030910: .4byte 0x000003FF
_08030914: .4byte 0x00003FFF
    thumb_func_start sub_8030918
sub_8030918:
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0x0
    adds r5, r4, #0x0
    adds r5, #0x80
    ldr r6, _080309A0 @ =0x080E645C
    movs r0, #0x16
    ldsh r1, [r4, r0]
    adds r0, r1, #0x0
    cmp r1, #0x00
    bge _08030932
    adds r0, #0x3F
_08030932:
    asrs r2, r0, #0x06
    movs r0, #0x80
    lsls r0, r0, #0x01
    subs r0, r0, r2
    ldr r3, _080309A4 @ =0x000003FF
    ands r0, r3
    lsls r0, r0, #0x02
    adds r0, r0, r6
    ldr r7, [r0, #0x00]
    adds r0, r2, #0x0
    ands r0, r3
    lsls r0, r0, #0x02
    adds r0, r0, r6
    ldr r0, [r0, #0x00]
    mov r8, r0
    movs r6, #0x40
_08030952:
    ldr r0, [r4, #0x10]
    cmp r0, #0x00
    bge _0803095C
    ldr r1, _080309A8 @ =0x0000FFFF
    adds r0, r0, r1
_0803095C:
    asrs r0, r0, #0x10
    adds r1, r0, #0x0
    muls r1, r7
    ldr r0, [r4, #0x28]
    subs r0, r6, r0
    mov r2, r8
    muls r2, r0
    adds r0, r2, #0x0
    adds r0, r1, r0
    cmp r0, #0x00
    bge _08030974
    adds r0, #0x7F
_08030974:
    asrs r1, r0, #0x07
    ldr r0, [r4, #0x34]
    bl __divsi3
    str r0, [r5, #0x00]
    muls r0, r7
    cmp r0, #0x00
    bge _08030988
    ldr r1, _080309AC @ =0x00007FFF
    adds r0, r0, r1
_08030988:
    asrs r0, r0, #0x0F
    str r0, [r5, #0x04]
    adds r5, #0x08
    adds r6, #0x01
    cmp r6, #0x9F
    ble _08030952
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .byte 0x00, 0x00
_080309A0: .4byte gSinTable
_080309A4: .4byte 0x000003FF
_080309A8: .4byte 0x0000FFFF
_080309AC: .4byte 0x00007FFF
    thumb_func_start sub_80309B0
sub_80309B0:
    push {r4, r5, r6, lr}
    adds r4, r0, #0x0
    ldr r6, _080309F0 @ =0x080E645C
    movs r0, #0x16
    ldsh r2, [r4, r0]
    adds r0, r2, #0x0
    cmp r2, #0x00
    bge _080309C2
    adds r0, #0x3F
_080309C2:
    asrs r3, r0, #0x06
    ldr r0, _080309F4 @ =0x000003FF
    adds r1, r0, #0x0
    adds r0, r3, #0x0
    ands r0, r1
    lsls r0, r0, #0x02
    adds r0, r0, r6
    ldr r5, [r0, #0x00]
    cmp r5, #0x00
    beq _080309F8
    movs r0, #0x80
    lsls r0, r0, #0x01
    subs r0, r0, r3
    ldr r1, _080309F4 @ =0x000003FF
    ands r0, r1
    lsls r0, r0, #0x02
    adds r0, r0, r6
    ldr r0, [r0, #0x00]
    adds r1, r5, #0x0
    bl Div
    b _080309FA
    .byte 0x00, 0x00
_080309F0: .4byte gSinTable
_080309F4: .4byte 0x000003FF
_080309F8:
    movs r0, #0x00
_080309FA:
    adds r3, r0, #0x0
    ldr r2, [r4, #0x10]
    subs r1, r2, #0x1
    ldr r0, _08030A20 @ =0x0000FFFE
    cmp r1, r0
    bls _08030A10
    cmp r2, #0x00
    bge _08030A2C
    ldr r0, _08030A24 @ =0xFFFF0000
    cmp r2, r0
    ble _08030A2C
_08030A10:
    adds r0, r2, #0x0
    muls r0, r3
    cmp r0, #0x00
    bge _08030A1C
    ldr r1, _08030A28 @ =0x0000FFFF
    adds r0, r0, r1
_08030A1C:
    asrs r0, r0, #0x10
    b _08030ADE
_08030A20: .4byte 0x0000FFFE
_08030A24: .4byte 0xFFFF0000
_08030A28: .4byte 0x0000FFFF
_08030A2C:
    ldr r0, _08030A58 @ =0x000FFFFE
    subs r1, r2, #0x1
    cmp r1, r0
    bls _08030A3E
    cmp r2, #0x00
    bge _08030A64
    ldr r0, _08030A5C @ =0xFFF00000
    cmp r2, r0
    ble _08030A64
_08030A3E:
    adds r0, r2, #0x0
    cmp r2, #0x00
    bge _08030A46
    adds r0, #0x0F
_08030A46:
    asrs r0, r0, #0x04
    muls r0, r3
    cmp r0, #0x00
    bge _08030A52
    ldr r1, _08030A60 @ =0x07FFFFFF
    adds r0, r0, r1
_08030A52:
    asrs r1, r0, #0x1B
    b _08030AE8
    .byte 0x00, 0x00
_08030A58: .4byte 0x000FFFFE
_08030A5C: .4byte 0xFFF00000
_08030A60: .4byte 0x07FFFFFF
_08030A64:
    ldr r0, _08030A90 @ =0x00FFFFFE
    cmp r1, r0
    bls _08030A76
    cmp r2, #0x00
    bge _08030A98
    movs r0, #0xFF
    lsls r0, r0, #0x18
    cmp r2, r0
    ble _08030A98
_08030A76:
    adds r0, r2, #0x0
    cmp r2, #0x00
    bge _08030A7E
    adds r0, #0xFF
_08030A7E:
    asrs r0, r0, #0x08
    muls r0, r3
    cmp r0, #0x00
    bge _08030A8A
    ldr r1, _08030A94 @ =0x007FFFFF
    adds r0, r0, r1
_08030A8A:
    asrs r1, r0, #0x17
    b _08030AE8
    .byte 0x00, 0x00
_08030A90: .4byte 0x00FFFFFE
_08030A94: .4byte 0x007FFFFF
_08030A98:
    ldr r0, _08030AC4 @ =0x0FFFFFFE
    cmp r1, r0
    bls _08030AAA
    cmp r2, #0x00
    bge _08030AD0
    movs r0, #0xF0
    lsls r0, r0, #0x18
    cmp r2, r0
    ble _08030AD0
_08030AAA:
    adds r0, r2, #0x0
    cmp r2, #0x00
    bge _08030AB4
    ldr r1, _08030AC8 @ =0x00000FFF
    adds r0, r2, r1
_08030AB4:
    asrs r0, r0, #0x0C
    muls r0, r3
    cmp r0, #0x00
    bge _08030AC0
    ldr r1, _08030ACC @ =0x0007FFFF
    adds r0, r0, r1
_08030AC0:
    asrs r1, r0, #0x13
    b _08030AE8
_08030AC4: .4byte 0x0FFFFFFE
_08030AC8: .4byte 0x00000FFF
_08030ACC: .4byte 0x0007FFFF
_08030AD0:
    adds r0, r2, #0x0
    cmp r0, #0x00
    bge _08030ADA
    ldr r1, _08030AF4 @ =0x0000FFFF
    adds r0, r0, r1
_08030ADA:
    asrs r0, r0, #0x10
    muls r0, r3
_08030ADE:
    cmp r0, #0x00
    bge _08030AE6
    ldr r1, _08030AF8 @ =0x00007FFF
    adds r0, r0, r1
_08030AE6:
    asrs r1, r0, #0x0F
_08030AE8:
    ldr r0, [r4, #0x28]
    subs r0, r0, r1
    str r0, [r4, #0x2C]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
_08030AF4: .4byte 0x0000FFFF
_08030AF8: .4byte 0x00007FFF
    thumb_func_start sub_8030AFC
sub_8030AFC:
    push {r4, r5, r6, r7, lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5, r6, r7}
    add sp, #-0x014
    mov r10, r0
    ldr r4, _08030C2C @ =0x080E645C
    movs r2, #0x14
    ldsh r1, [r0, r2]
    adds r0, r1, #0x0
    cmp r1, #0x00
    bge _08030B18
    adds r0, #0x3F
_08030B18:
    asrs r2, r0, #0x06
    movs r0, #0x80
    lsls r0, r0, #0x01
    subs r0, r0, r2
    ldr r3, _08030C30 @ =0x000003FF
    ands r0, r3
    lsls r0, r0, #0x02
    adds r0, r0, r4
    ldr r0, [r0, #0x00]
    str r0, [sp, #0x000]
    adds r0, r2, #0x0
    ands r0, r3
    lsls r0, r0, #0x02
    adds r0, r0, r4
    ldr r0, [r0, #0x00]
    str r0, [sp, #0x004]
    movs r4, #0x9F
    mov r8, r4
    movs r0, #0xDE
    lsls r0, r0, #0x02
    add r0, r10
    mov r12, r0
    mov r1, r10
    ldr r0, [r1, #0x50]
    lsls r1, r0, #0x01
    adds r1, r1, r0
    lsls r1, r1, #0x09
    ldr r0, _08030C34 @ =0x03004FE0
    movs r2, #0xBE
    lsls r2, r2, #0x03
    adds r0, r0, r2
    adds r3, r1, r0
    mov r1, r10
    adds r1, #0x18
    mov r4, r10
    ldr r0, [r4, #0x18]
    cmp r0, #0x00
    bge _08030B66
    adds r0, #0xFF
_08030B66:
    asrs r0, r0, #0x08
    str r0, [sp, #0x008]
    ldr r0, [r1, #0x04]
    cmp r0, #0x00
    bge _08030B72
    adds r0, #0xFF
_08030B72:
    asrs r0, r0, #0x08
    str r0, [sp, #0x00C]
    mov r1, r10
    ldr r0, [r1, #0x24]
    negs r0, r0
    str r0, [sp, #0x010]
    ldr r0, [r1, #0x28]
    mov r2, r8
    subs r5, r2, r0
    ldr r4, _08030C38 @ =0x00007FFF
    mov r9, r4
_08030B88:
    mov r0, r12
    ldr r1, [r0, #0x04]
    ldr r2, [r0, #0x00]
    ldr r4, [sp, #0x000]
    adds r0, r1, #0x0
    muls r0, r4
    cmp r0, #0x00
    bge _08030B9A
    add r0, r9
_08030B9A:
    asrs r7, r0, #0x0F
    negs r0, r2
    ldr r4, [sp, #0x004]
    muls r0, r4
    cmp r0, #0x00
    bge _08030BA8
    add r0, r9
_08030BA8:
    asrs r6, r0, #0x0F
    ldr r4, [sp, #0x004]
    adds r0, r1, #0x0
    muls r0, r4
    cmp r0, #0x00
    bge _08030BB6
    add r0, r9
_08030BB6:
    asrs r4, r0, #0x0F
    ldr r1, [sp, #0x000]
    adds r0, r2, #0x0
    muls r0, r1
    cmp r0, #0x00
    bge _08030BC4
    add r0, r9
_08030BC4:
    asrs r2, r0, #0x0F
    ldr r1, [sp, #0x010]
    adds r0, r1, #0x0
    muls r0, r7
    ldr r1, [sp, #0x008]
    adds r0, r1, r0
    adds r1, r5, #0x0
    muls r1, r6
    adds r0, r0, r1
    str r0, [r3, #0x08]
    ldr r1, [sp, #0x010]
    adds r0, r1, #0x0
    muls r0, r4
    ldr r1, [sp, #0x00C]
    adds r0, r1, r0
    adds r1, r5, #0x0
    muls r1, r2
    adds r0, r0, r1
    str r0, [r3, #0x0C]
    ldrh r0, [r3, #0x00]
    strh r7, [r3, #0x00]
    ldrh r0, [r3, #0x02]
    strh r6, [r3, #0x02]
    ldrh r0, [r3, #0x04]
    strh r4, [r3, #0x04]
    ldrh r0, [r3, #0x06]
    strh r2, [r3, #0x06]
    subs r3, #0x10
    movs r2, #0x08
    negs r2, r2
    add r12, r2
    subs r5, #0x01
    movs r4, #0x01
    negs r4, r4
    add r8, r4
    mov r0, r8
    cmp r0, #0x3F
    bgt _08030B88
    mov r2, r10
    ldr r1, [r2, #0x50]
    movs r0, #0x01
    subs r0, r0, r1
    str r0, [r2, #0x50]
    add sp, #0x014
    pop {r3, r4, r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .byte 0x00, 0x00
_08030C2C: .4byte gSinTable
_08030C30: .4byte 0x000003FF
_08030C34: .4byte BgAffineBuf
_08030C38: .4byte 0x00007FFF
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
    thumb_func_start sub_8030E5C
sub_8030E5C:
    ldr r0, [r0, #0x4C]
    bx lr
    thumb_func_start sub_8030E60
sub_8030E60:
    lsls r0, r1, #0x01
    adds r0, r0, r1
    lsls r0, r0, #0x09
    lsls r2, r2, #0x04
    ldr r1, _08030E70 @ =0x03004FE0
    adds r2, r2, r1
    adds r0, r0, r2
    bx lr
_08030E70: .4byte BgAffineBuf
thumb_func_start sub_8030E74
sub_8030E74:
    ldr r2, [r0, #0x50]
    movs r1, #0x01
    subs r1, r1, r2
    str r1, [r0, #0x4C]
    bx lr
    .byte 0x00, 0x00
    thumb_func_start sub_8030E80
sub_8030E80:
    movs r1, #0x00
    str r1, [r0, #0x50]
    str r1, [r0, #0x4C]
    movs r2, #0xE0
    lsls r2, r2, #0x02
    adds r0, r0, r2
    str r1, [r0, #0x00]
    bx lr
    thumb_func_start sub_8030E90
sub_8030E90:
    push {lr}
    lsls r1, r1, #0x10
    str r1, [r0, #0x0C]
    bl sub_8031038
    pop {r0}
    bx r0
    .byte 0x00, 0x00
    thumb_func_start sub_8030EA0
sub_8030EA0:
    push {lr}
    lsls r1, r1, #0x10
    str r1, [r0, #0x10]
    bl sub_8030918
    pop {r0}
    bx r0
    .byte 0x00, 0x00
    thumb_func_start sub_8030EB0
sub_8030EB0:
    push {r4, lr}
    adds r4, r0, #0x0
    strh r1, [r4, #0x16]
    bl unk_updateCamAngle
    adds r0, r4, #0x0
    bl sub_8030918
    adds r0, r4, #0x0
    bl sub_803104C
    pop {r4}
    pop {r0}
    bx r0
    thumb_func_start cam_setAngle
cam_setAngle:
    push {lr}
    strh r1, [r0, #0x14]
    bl unk_updateCamAngle
    pop {r0}
    bx r0
    thumb_func_start sub_8030ED8
sub_8030ED8:
    push {lr}
    str r1, [r0, #0x00]
    str r2, [r0, #0x04]
    str r3, [r0, #0x08]
    bl sub_803104C
    pop {r0}
    bx r0
    thumb_func_start cam_setPos
cam_setPos:
    push {r4, lr}
    adds r4, r0, #0x0
    str r1, [r4, #0x00]
    str r2, [r4, #0x04]
    bl sub_803104C
    adds r0, r4, #0x0
    bl sub_8031054
    adds r0, r4, #0x0
    bl sub_8031064
    pop {r4}
    pop {r0}
    bx r0
    .byte 0x00, 0x00
    thumb_func_start cam_setZ
cam_setZ:
    push {r4, lr}
    adds r4, r0, #0x0
    str r1, [r4, #0x08]
    bl sub_803104C
    adds r0, r4, #0x0
    bl sub_8031064
    pop {r4}
    pop {r0}
    bx r0
    .byte 0x00, 0x00
    thumb_func_start sub_8030F20
sub_8030F20:
    str r1, [r0, #0x24]
    str r2, [r0, #0x28]
    bx lr
    .byte 0x00, 0x00
    thumb_func_start sub_8030F28
sub_8030F28:
    ldr r3, [r0, #0x24]
    str r3, [r1, #0x00]
    ldr r0, [r0, #0x28]
    str r0, [r2, #0x00]
    bx lr
    .byte 0x00, 0x00