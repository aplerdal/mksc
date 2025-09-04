.include "asm/macros.inc"

.syntax unified
.text

    thumb_func_start sub_8030F34
sub_8030F34:
    push {r4, lr}
    adds r4, r0, #0x0
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    cmp r4, #0x00
    bne _08030F44
    movs r0, #0x00
    b _08030F82
_08030F44:
    adds r2, r4, #0x0
    cmp r4, #0x00
    bge _08030F4C
    negs r2, r4
_08030F4C:
    adds r0, r2, #0x0
    cmp r0, #0x00
    bge _08030F56
    ldr r2, _08030F68 @ =0x00003FFF
    adds r0, r0, r2
_08030F56:
    asrs r2, r0, #0x0E
    lsls r0, r1, #0x10
    asrs r1, r0, #0x10
    movs r0, #0x80
    lsls r0, r0, #0x01
    cmp r1, r0
    bne _08030F6C
    adds r0, r2, #0x0
    b _08030F72
_08030F68: .4byte 0x00003FFF
_08030F6C:
    lsls r0, r2, #0x08
    bl Div
_08030F72:
    cmp r4, #0x00
    bge _08030F7E
    negs r0, r0
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    b _08030F82
_08030F7E:
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
_08030F82:
    pop {r4}
    pop {r1}
    bx r1
    thumb_func_start sub_8030F88
sub_8030F88:
    push {r4, r5, r6, lr}
    adds r5, r0, #0x0
    adds r6, r1, #0x0
    adds r4, r2, #0x0
    lsls r3, r3, #0x10
    lsrs r0, r3, #0x10
    movs r2, #0x00
    cmp r4, #0x00
    beq _08030FD8
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    adds r2, r4, #0x0
    cmp r4, #0x00
    bge _08030FA6
    negs r2, r4
_08030FA6:
    adds r0, r2, #0x0
    cmp r0, #0x00
    bge _08030FB0
    ldr r2, _08030FC0 @ =0x00003FFF
    adds r0, r0, r2
_08030FB0:
    asrs r2, r0, #0x0E
    movs r0, #0x80
    lsls r0, r0, #0x01
    cmp r1, r0
    bne _08030FC4
    adds r0, r2, #0x0
    b _08030FCA
    .byte 0x00, 0x00
_08030FC0: .4byte 0x00003FFF
_08030FC4:
    lsls r0, r2, #0x08
    bl Div
_08030FCA:
    cmp r4, #0x00
    bge _08030FD0
    negs r0, r0
_08030FD0:
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    lsls r0, r0, #0x10
    lsrs r2, r0, #0x10
_08030FD8:
    ldrh r0, [r5, #0x00]
    strh r0, [r6, #0x00]
    ldrh r1, [r5, #0x02]
    lsls r0, r2, #0x10
    asrs r0, r0, #0x10
    subs r1, r1, r0
    strh r1, [r6, #0x02]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    thumb_func_start sub_8030FEC
sub_8030FEC:
    push {lr}
    adds r2, r1, #0x0
    adds r2, #0x1C
    adds r3, r1, #0x0
    adds r3, #0x24
    bl cam_projectActor
    pop {r0}
    bx r0
    .byte 0x00, 0x00
    thumb_func_start sub_8031000
sub_8031000:
    push {r4, r5, lr}
    adds r2, r0, #0x0
    adds r3, r1, #0x0
    ldr r1, [r2, #0x38]
    ldr r0, [r3, #0x00]
    subs r1, r1, r0
    ldr r5, _0803102C @ =0x00FFFFFF
    cmp r1, r5
    bgt _08031030
    movs r4, #0xFF
    lsls r4, r4, #0x18
    cmp r1, r4
    ble _08031030
    ldr r1, [r2, #0x3C]
    ldr r0, [r3, #0x04]
    subs r0, r1, r0
    cmp r0, r5
    bgt _08031030
    cmp r0, r4
    ble _08031030
    movs r0, #0x01
    b _08031032
_0803102C: .4byte 0x00FFFFFF
_08031030:
    movs r0, #0x00
_08031032:
    pop {r4, r5}
    pop {r1}
    bx r1
    thumb_func_start sub_8031038
sub_8031038:
    push {lr}
    ldr r1, [r0, #0x0C]
    ldr r2, [r0, #0x30]
    adds r1, r1, r2
    str r1, [r0, #0x34]
    bl sub_8030918
    pop {r0}
    bx r0
    .byte 0x00, 0x00
    thumb_func_start sub_803104C
sub_803104C:
    movs r1, #0x00
    str r1, [r0, #0x30]
    bx lr
    .byte 0x00, 0x00
    thumb_func_start sub_8031054
sub_8031054:
    ldr r1, [r0, #0x00]
    str r1, [r0, #0x18]
    ldr r1, [r0, #0x04]
    str r1, [r0, #0x1C]
    movs r1, #0x00
    str r1, [r0, #0x20]
    bx lr
    .byte 0x00, 0x00
    thumb_func_start sub_8031064
sub_8031064:
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0x0
    adds r6, #0x5C
    ldr r2, [r0, #0x10]
    ldr r1, [r0, #0x0C]
    subs r3, r2, r1
    adds r7, r0, #0x0
    adds r7, #0x38
    adds r5, r0, #0x0
    adds r1, r3, #0x0
    cmp r3, #0x00
    bge _0803107E
    negs r1, r3
_0803107E:
    ldr r0, _0803108C @ =0x0000FFFF
    cmp r1, r0
    bgt _08031090
    movs r2, #0x00
    movs r4, #0x10
    b _080310B4
    .byte 0x00, 0x00
_0803108C: .4byte 0x0000FFFF
_08031090:
    ldr r0, _0803109C @ =0x000FFFFF
    cmp r1, r0
    bgt _080310A0
    movs r2, #0x05
    movs r4, #0x0B
    b _080310B4
_0803109C: .4byte 0x000FFFFF
_080310A0:
    ldr r0, _080310AC @ =0x00FFFFFF
    cmp r1, r0
    bgt _080310B0
    movs r2, #0x09
    movs r4, #0x07
    b _080310B4
_080310AC: .4byte 0x00FFFFFF
_080310B0:
    movs r2, #0x0D
    movs r4, #0x03
_080310B4:
    asrs r3, r2
    adds r2, r3, #0x0
    ldr r0, [r6, #0x08]
    adds r1, r2, #0x0
    muls r1, r0
    asrs r1, r4
    ldr r0, [r5, #0x00]
    subs r0, r0, r1
    str r0, [r7, #0x00]
    ldr r0, [r6, #0x14]
    adds r1, r2, #0x0
    muls r1, r0
    asrs r1, r4
    ldr r0, [r5, #0x04]
    subs r0, r0, r1
    str r0, [r7, #0x04]
    ldr r0, [r6, #0x20]
    adds r1, r2, #0x0
    muls r1, r0
    asrs r1, r4
    ldr r0, [r5, #0x08]
    subs r0, r0, r1
    str r0, [r7, #0x08]
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    thumb_func_start sub_80310E8
sub_80310E8:
    ldr r2, [r0, #0x50]
    movs r1, #0x01
    subs r1, r1, r2
    str r1, [r0, #0x50]
    bx lr
    .byte 0x00, 0x00
    thumb_func_start sub_80310F4
sub_80310F4:
    ldr r2, [r0, #0x50]
    str r2, [r0, #0x4C]
    movs r1, #0x01
    subs r1, r1, r2
    str r1, [r0, #0x50]
    bx lr
    thumb_func_start sub_8031100
sub_8031100:
    push {r4, lr}
    mov r12, r0
    movs r1, #0xE6
    lsls r1, r1, #0x02
    add r1, r12
    ldr r0, [r0, #0x18]
    str r0, [r1, #0x00]
    movs r1, #0xE7
    lsls r1, r1, #0x02
    add r1, r12
    mov r2, r12
    ldr r0, [r2, #0x1C]
    str r0, [r1, #0x00]
    ldrh r2, [r2, #0x14]
    movs r0, #0xE8
    lsls r0, r0, #0x02
    add r0, r12
    movs r3, #0x00
    movs r1, #0x00
    strh r2, [r0, #0x00]
    ldr r0, _080311A4 @ =0x000003A2
    add r0, r12
    strh r1, [r0, #0x00]
    movs r2, #0xE2
    lsls r2, r2, #0x02
    add r2, r12
    mov r4, r12
    ldr r0, [r4, #0x18]
    str r0, [r2, #0x00]
    movs r2, #0xE3
    lsls r2, r2, #0x02
    add r2, r12
    ldr r0, [r4, #0x1C]
    str r0, [r2, #0x00]
    ldrh r2, [r4, #0x14]
    movs r0, #0xE4
    lsls r0, r0, #0x02
    add r0, r12
    strh r2, [r0, #0x00]
    ldr r0, _080311A8 @ =0x00000392
    add r0, r12
    strh r1, [r0, #0x00]
    movs r0, #0xE5
    lsls r0, r0, #0x02
    add r0, r12
    strh r1, [r0, #0x00]
    ldr r0, _080311AC @ =0x00000396
    add r0, r12
    strh r1, [r0, #0x00]
    movs r0, #0xE9
    lsls r0, r0, #0x02
    add r0, r12
    strh r1, [r0, #0x00]
    movs r0, #0xEC
    lsls r0, r0, #0x02
    add r0, r12
    str r1, [r0, #0x00]
    movs r0, #0xED
    lsls r0, r0, #0x02
    add r0, r12
    str r1, [r0, #0x00]
    movs r0, #0xEE
    lsls r0, r0, #0x02
    add r0, r12
    str r1, [r0, #0x00]
    movs r0, #0xEF
    lsls r0, r0, #0x02
    add r0, r12
    str r1, [r0, #0x00]
    movs r0, #0xE1
    lsls r0, r0, #0x02
    add r0, r12
    strh r1, [r0, #0x00]
    ldr r0, _080311B0 @ =0x00000386
    add r0, r12
    strb r3, [r0, #0x00]
    mov r0, r12
    bl sub_80312DC
    pop {r4}
    pop {r0}
    bx r0
_080311A4: .4byte 0x000003A2
_080311A8: .4byte 0x00000392
_080311AC: .4byte 0x00000396
_080311B0: .4byte 0x00000386
    thumb_func_start sub_80311B4
sub_80311B4:
    push {r4, r5, lr}
    adds r2, r0, #0x0
    movs r0, #0xE2
    lsls r0, r0, #0x02
    adds r1, r2, r0
    movs r3, #0xE6
    lsls r3, r3, #0x02
    adds r0, r2, r3
    ldr r0, [r0, #0x00]
    str r0, [r1, #0x00]
    movs r4, #0xE3
    lsls r4, r4, #0x02
    adds r1, r2, r4
    movs r5, #0xE7
    lsls r5, r5, #0x02
    adds r0, r2, r5
    ldr r0, [r0, #0x00]
    str r0, [r1, #0x00]
    movs r0, #0xE8
    lsls r0, r0, #0x02
    adds r3, r2, r0
    movs r1, #0xE4
    lsls r1, r1, #0x02
    adds r4, r2, r1
    ldrh r0, [r3, #0x00]
    ldrh r1, [r4, #0x00]
    subs r0, r0, r1
    lsls r0, r0, #0x10
    cmp r0, #0x00
    blt _08031202
    adds r5, #0xE4
    adds r0, r1, r5
    strh r0, [r4, #0x00]
    ldrh r1, [r3, #0x00]
    subs r0, r1, r0
    lsls r0, r0, #0x10
    cmp r0, #0x00
    bge _08031214
    b _08031212
_08031202:
    ldr r5, _08031228 @ =0xFFFFFB80
    adds r0, r1, r5
    strh r0, [r4, #0x00]
    ldrh r1, [r3, #0x00]
    subs r0, r1, r0
    lsls r0, r0, #0x10
    cmp r0, #0x00
    ble _08031214
_08031212:
    strh r1, [r4, #0x00]
_08031214:
    ldr r0, _0803122C @ =0x00000396
    adds r1, r2, r0
    ldrh r3, [r1, #0x00]
    movs r4, #0x00
    ldsh r0, [r1, r4]
    cmp r0, #0x27
    bgt _08031230
    adds r0, r3, #0x0
    adds r0, #0x08
    b _08031232
_08031228: .4byte 0xFFFFFB80
_0803122C: .4byte 0x00000396
_08031230:
    movs r0, #0x30
_08031232:
    strh r0, [r1, #0x00]
    ldr r5, _08031280 @ =0x00000392
    adds r0, r2, r5
    movs r1, #0x00
    ldsh r0, [r0, r1]
    cmp r0, #0x00
    bne _08031252
    ldr r3, _08031284 @ =0x000003A2
    adds r0, r2, r3
    movs r4, #0x00
    ldsh r1, [r0, r4]
    cmp r1, #0x00
    bne _08031252
    adds r5, #0x04
    adds r0, r2, r5
    strh r1, [r0, #0x00]
_08031252:
    ldr r0, _08031284 @ =0x000003A2
    adds r4, r2, r0
    ldr r1, _08031280 @ =0x00000392
    adds r3, r2, r1
    ldrh r0, [r4, #0x00]
    ldrh r1, [r3, #0x00]
    subs r0, r0, r1
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    cmp r0, #0x00
    ble _0803128C
    ldr r5, _08031288 @ =0x00000396
    adds r0, r2, r5
    ldrh r0, [r0, #0x00]
    adds r0, r1, r0
    strh r0, [r3, #0x00]
    ldrh r1, [r4, #0x00]
    subs r0, r1, r0
    lsls r0, r0, #0x10
    cmp r0, #0x00
    bge _080312A6
    b _080312A4
    .byte 0x00, 0x00
_08031280: .4byte 0x00000392
_08031284: .4byte 0x000003A2
_08031288: .4byte 0x00000396
_0803128C:
    cmp r0, #0x00
    bge _080312A6
    ldr r5, _080312C8 @ =0x00000396
    adds r0, r2, r5
    ldrh r0, [r0, #0x00]
    subs r0, r1, r0
    strh r0, [r3, #0x00]
    ldrh r1, [r4, #0x00]
    subs r0, r1, r0
    lsls r0, r0, #0x10
    cmp r0, #0x00
    ble _080312A6
_080312A4:
    strh r1, [r3, #0x00]
_080312A6:
    movs r1, #0xE9
    lsls r1, r1, #0x02
    adds r0, r2, r1
    movs r3, #0x00
    ldsh r1, [r0, r3]
    movs r4, #0xE5
    lsls r4, r4, #0x02
    adds r2, r2, r4
    movs r5, #0x00
    ldsh r0, [r2, r5]
    subs r1, r1, r0
    cmp r1, #0x00
    ble _080312CC
    ldrh r0, [r2, #0x00]
    adds r0, #0x01
    b _080312D4
    .byte 0x00, 0x00
_080312C8: .4byte 0x00000396
_080312CC:
    cmp r1, #0x00
    bge _080312D6
    ldrh r0, [r2, #0x00]
    subs r0, #0x01
_080312D4:
    strh r0, [r2, #0x00]
_080312D6:
    pop {r4, r5}
    pop {r0}
    bx r0
    thumb_func_start sub_80312DC
sub_80312DC:
    push {lr}
    bl sub_8030AFC
    pop {r0}
    bx r0
    .byte 0x00, 0x00
    thumb_func_start sub_80312E8
sub_80312E8:
    push {r4, lr}
    mov r12, r0
    movs r0, #0xEB
    lsls r0, r0, #0x02
    add r0, r12
    ldrb r0, [r0, #0x00]
    subs r0, #0x49
    movs r1, #0xEA
    lsls r1, r1, #0x02
    add r1, r12
    ldr r2, [r1, #0x00]
    movs r1, #0xE0
    lsls r1, r1, #0x02
    add r1, r12
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    str r0, [r1, #0x00]
    ldr r1, [r2, #0x08]
    ldr r0, _08031340 @ =0x030021A8
    movs r3, #0x00
    ldsb r3, [r0, r3]
    adds r4, r0, #0x0
    cmp r1, r3
    beq _08031330
    str r3, [r2, #0x08]
    ldr r1, _08031344 @ =0x03004FC0
    ldr r0, [r1, #0x14]
    cmp r0, r2
    bne _08031330
    ldr r2, _08031348 @ =0x04000004
    ldrb r0, [r2, #0x01]
    strb r3, [r2, #0x01]
    ldrb r0, [r2, #0x00]
    movs r1, #0x20
    orrs r0, r1
    strb r0, [r2, #0x00]
_08031330:
    movs r0, #0xEB
    lsls r0, r0, #0x02
    add r0, r12
    ldrb r0, [r0, #0x00]
    strb r0, [r4, #0x00]
    pop {r4}
    pop {r0}
    bx r0
_08031340: .4byte 0x030021A8
_08031344: .4byte 0x03004FC0
_08031348: .4byte 0x04000004
    thumb_func_start sub_803134C
sub_803134C:
    movs r1, #0xE9
    lsls r1, r1, #0x02
    adds r0, r0, r1
    movs r1, #0x18
    strh r1, [r0, #0x00]
    bx lr
    thumb_func_start sub_8031358
sub_8031358:
    movs r1, #0xE9
    lsls r1, r1, #0x02
    adds r0, r0, r1
    ldr r1, _08031364 @ =0x0000FFE8
    strh r1, [r0, #0x00]
    bx lr
_08031364: .4byte 0x0000FFE8
    thumb_func_start sub_8031368
sub_8031368:
    movs r1, #0xE9
    lsls r1, r1, #0x02
    adds r0, r0, r1
    movs r1, #0x00
    strh r1, [r0, #0x00]
    bx lr
    thumb_func_start sub_8031374
sub_8031374:
    push {r4, lr}
    adds r3, r0, #0x0
    movs r1, #0xE4
    lsls r1, r1, #0x02
    adds r0, r3, r1
    ldr r1, _080313B0 @ =0x080E645C
    movs r2, #0x00
    ldsh r0, [r0, r2]
    cmp r0, #0x00
    bge _0803138A
    adds r0, #0x3F
_0803138A:
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x16
    lsls r0, r0, #0x02
    adds r0, r0, r1
    ldr r1, [r0, #0x00]
    movs r4, #0xE2
    lsls r4, r4, #0x02
    adds r2, r3, r4
    adds r4, #0x0C
    adds r0, r3, r4
    movs r3, #0x00
    ldsh r0, [r0, r3]
    muls r1, r0
    ldr r0, [r2, #0x00]
    adds r0, r0, r1
    pop {r4}
    pop {r1}
    bx r1
    .byte 0x00, 0x00
_080313B0: .4byte 0x080E645C
    thumb_func_start sub_80313B4
sub_80313B4:
    push {r4, lr}
    adds r3, r0, #0x0
    movs r1, #0xE4
    lsls r1, r1, #0x02
    adds r0, r3, r1
    ldr r2, _080313F8 @ =0x080E645C
    movs r4, #0x00
    ldsh r1, [r0, r4]
    cmp r1, #0x00
    bge _080313CA
    adds r1, #0x3F
_080313CA:
    asrs r1, r1, #0x06
    movs r0, #0x80
    lsls r0, r0, #0x01
    subs r0, r0, r1
    ldr r1, _080313FC @ =0x000003FF
    ands r0, r1
    lsls r0, r0, #0x02
    adds r0, r0, r2
    ldr r1, [r0, #0x00]
    movs r0, #0xE3
    lsls r0, r0, #0x02
    adds r2, r3, r0
    movs r4, #0xE5
    lsls r4, r4, #0x02
    adds r0, r3, r4
    movs r3, #0x00
    ldsh r0, [r0, r3]
    muls r1, r0
    ldr r0, [r2, #0x00]
    subs r0, r0, r1
    pop {r4}
    pop {r1}
    bx r1
_080313F8: .4byte 0x080E645C
_080313FC: .4byte 0x000003FF
    thumb_func_start sub_8031400
sub_8031400:
    movs r2, #0xE4
    lsls r2, r2, #0x02
    adds r1, r0, r2
    adds r2, #0x02
    adds r0, r0, r2
    ldrh r0, [r0, #0x00]
    ldrh r1, [r1, #0x00]
    adds r0, r0, r1
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    bx lr
    .byte 0x00, 0x00
    thumb_func_start sub_8031418
sub_8031418:
    push {r4, lr}
    adds r3, r0, #0x0
    movs r4, #0x01
    movs r1, #0xE2
    lsls r1, r1, #0x02
    adds r0, r3, r1
    movs r2, #0xE6
    lsls r2, r2, #0x02
    adds r1, r3, r2
    ldr r2, [r0, #0x00]
    ldr r0, [r1, #0x00]
    cmp r2, r0
    bne _0803145E
    movs r1, #0xE3
    lsls r1, r1, #0x02
    adds r0, r3, r1
    movs r2, #0xE7
    lsls r2, r2, #0x02
    adds r1, r3, r2
    ldr r2, [r0, #0x00]
    ldr r0, [r1, #0x00]
    cmp r2, r0
    bne _0803145E
    movs r1, #0xE4
    lsls r1, r1, #0x02
    adds r0, r3, r1
    ldr r1, [r0, #0x00]
    movs r2, #0xE8
    lsls r2, r2, #0x02
    adds r0, r3, r2
    ldr r0, [r0, #0x00]
    eors r1, r0
    negs r0, r1
    orrs r0, r1
    lsrs r4, r0, #0x1F
_0803145E:
    adds r0, r4, #0x0
    pop {r4}
    pop {r1}
    bx r1
    .byte 0x00, 0x00
    thumb_func_start loadtrack_loadTileset
loadtrack_loadTileset: @ 08031468
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r5, r2, #0x0
    adds r0, r5, #0x0
    adds r0, #0x30
    ldrb r2, [r0, #0x00]
    ldrb r0, [r0, #0x00]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0x00
    bne _08031500
    ldrb r0, [r5, #0x01]
    cmp r0, #0x00
    beq _080314E0
    ldrb r1, [r5, #0x03]
    movs r0, #0x01
    ands r0, r1
    cmp r0, #0x00
    beq _080314CC
    adds r0, r5, #0x0
    adds r0, #0x80
    ldr r1, [r0, #0x00]
    mov r8, r0
    ldr r7, _080314C8 @ =0x06008000
    adds r4, r5, r1
    movs r6, #0x03
_0803149E:
    ldrh r1, [r4, #0x00]
    cmp r1, #0x00
    beq _080314B6
    mov r2, r8
    ldr r0, [r2, #0x00]
    adds r0, r5, r0
    adds r0, r0, r1
    adds r1, r7, #0x0
    bl LZ77UnCompVram
    bl main_frameProc
_080314B6:
    movs r0, #0x80
    lsls r0, r0, #0x05
    adds r7, r7, r0
    adds r4, #0x02
    subs r6, #0x01
    cmp r6, #0x00
    bge _0803149E
    b _08031576
    .byte 0x00, 0x00
_080314C8: .4byte 0x06008000
_080314CC:
    adds r0, r5, #0x0
    adds r0, #0x80
    ldr r0, [r0, #0x00]
    adds r0, r5, r0
    ldr r1, _080314DC @ =0x06008000
    bl LZ77UnCompVram
    b _08031576
_080314DC: .4byte 0x06008000
_080314E0:
    bl dmaq_getVBlankDmaQueue
    adds r1, r5, #0x0
    adds r1, #0x80
    ldr r1, [r1, #0x00]
    adds r1, r5, r1
    ldr r2, _080314F8 @ =0x06008000
    ldr r3, _080314FC @ =0x84001000
    bl dmaq_enqueue
    b _08031576
    .byte 0x00, 0x00
_080314F8: .4byte 0x06008000
_080314FC: .4byte 0x84001000
_08031500:
    adds r0, r2, r1
    lsls r0, r0, #0x18
    ldr r1, _08031558 @ =0x080E7FEC
    lsrs r0, r0, #0x16
    adds r0, r0, r1
    ldr r0, [r0, #0x00]
    ldr r0, [r0, #0x00]
    lsls r0, r0, #0x02
    ldr r1, _0803155C @ =courseData_bin
    adds r0, r0, r1
    ldr r2, [r0, #0x00]
    adds r4, r2, r1
    ldrb r1, [r4, #0x03]
    movs r0, #0x01
    ands r0, r1
    cmp r0, #0x00
    beq _08031568
    ldr r1, _08031560 @ =0x08258080
    adds r0, r2, r1
    ldr r0, [r0, #0x00]
    ldr r7, _08031564 @ =0x06008000
    adds r5, r4, r0
    movs r6, #0x03
_0803152E:
    ldrh r1, [r5, #0x00]
    cmp r1, #0x00
    beq _08031548
    adds r0, r4, #0x0
    adds r0, #0x80
    ldr r0, [r0, #0x00]
    adds r0, r4, r0
    adds r0, r0, r1
    adds r1, r7, #0x0
    bl LZ77UnCompVram
    bl main_frameProc
_08031548:
    movs r2, #0x80
    lsls r2, r2, #0x05
    adds r7, r7, r2
    adds r5, #0x02
    subs r6, #0x01
    cmp r6, #0x00
    bge _0803152E
    b _08031576
_08031558: .4byte 0x080E7FEC
_0803155C: .4byte courseData_bin
_08031560: .4byte 0x08258080
_08031564: .4byte 0x06008000
_08031568:
    ldr r1, _0803158C @ =0x08258080
    adds r0, r2, r1
    ldr r0, [r0, #0x00]
    adds r0, r4, r0
    ldr r1, _08031590 @ =0x06008000
    bl LZ77UnCompVram
_08031576:
    bl main_frameProc
    ldr r0, _08031594 @ =0x08076C1C
    ldr r1, _08031598 @ =0x0600B800
    bl LZ77UnCompVram
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
_0803158C: .4byte 0x08258080
_08031590: .4byte 0x06008000
_08031594: .4byte 0x08076C1C
_08031598: .4byte 0x0600B800
    thumb_func_start sub_803159C
sub_803159C:
    push {r4, r5, r6, r7, lr}
    mov r7, r9
    mov r6, r8
    push {r6, r7}
    adds r7, r2, #0x0
    adds r0, r7, #0x0
    adds r0, #0xEC
    ldrb r2, [r0, #0x00]
    ldrb r0, [r0, #0x00]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0x00
    bne _08031614
    adds r0, r7, #0x0
    adds r0, #0xE4
    ldr r2, [r0, #0x00]
    mov r8, r0
    movs r0, #0xE8
    adds r0, r0, r7
    mov r9, r0
    cmp r2, #0x00
    beq _08031698
    ldrb r1, [r7, #0x03]
    movs r0, #0x04
    ands r0, r1
    cmp r0, #0x00
    beq _08031604
    ldr r6, _08031600 @ =0x06010000
    adds r4, r7, r2
    movs r5, #0x01
_080315D8:
    ldrh r1, [r4, #0x00]
    cmp r1, #0x00
    beq _080315F0
    mov r2, r8
    ldr r0, [r2, #0x00]
    adds r0, r7, r0
    adds r0, r0, r1
    adds r1, r6, #0x0
    bl LZ77UnCompVram
    bl main_frameProc
_080315F0:
    movs r0, #0x80
    lsls r0, r0, #0x05
    adds r6, r6, r0
    adds r4, #0x02
    subs r5, #0x01
    cmp r5, #0x00
    bge _080315D8
    b _08031698
_08031600: .4byte 0x06010000
_08031604:
    adds r0, r7, r2
    ldr r1, _08031610 @ =0x06010000
    bl LZ77UnCompVram
    b _08031698
    .byte 0x00, 0x00
_08031610: .4byte 0x06010000
_08031614:
    adds r0, r2, r1
    lsls r0, r0, #0x18
    ldr r1, _08031674 @ =0x080E7FEC
    lsrs r0, r0, #0x16
    adds r0, r0, r1
    ldr r0, [r0, #0x00]
    ldr r0, [r0, #0x00]
    lsls r0, r0, #0x02
    ldr r1, _08031678 @ =courseData_bin
    adds r0, r0, r1
    ldr r2, [r0, #0x00]
    adds r5, r2, r1
    ldrb r1, [r5, #0x03]
    movs r0, #0x04
    ands r0, r1
    cmp r0, #0x00
    beq _08031684
    ldr r1, _0803167C @ =0x082580E4
    adds r0, r2, r1
    ldr r0, [r0, #0x00]
    movs r2, #0xE8
    adds r2, r2, r7
    mov r9, r2
    ldr r1, _08031680 @ =0x06010000
    mov r8, r1
    adds r4, r5, r0
    movs r6, #0x01
_0803164A:
    ldrh r1, [r4, #0x00]
    cmp r1, #0x00
    beq _08031664
    adds r0, r5, #0x0
    adds r0, #0xE4
    ldr r0, [r0, #0x00]
    adds r0, r5, r0
    adds r0, r0, r1
    mov r1, r8
    bl LZ77UnCompVram
    bl main_frameProc
_08031664:
    movs r2, #0x80
    lsls r2, r2, #0x05
    add r8, r2
    adds r4, #0x02
    subs r6, #0x01
    cmp r6, #0x00
    bge _0803164A
    b _08031698
_08031674: .4byte 0x080E7FEC
_08031678: .4byte courseData_bin
_0803167C: .4byte 0x082580E4
_08031680: .4byte 0x06010000
_08031684:
    ldr r1, _080316C0 @ =0x082580E4
    adds r0, r2, r1
    ldr r0, [r0, #0x00]
    adds r0, r5, r0
    ldr r1, _080316C4 @ =0x06010000
    bl LZ77UnCompVram
    movs r2, #0xE8
    adds r2, r2, r7
    mov r9, r2
_08031698:
    mov r1, r9
    ldr r0, [r1, #0x00]
    cmp r0, #0x00
    beq _080316B2
    adds r4, r7, r0
    movs r0, #0x01
    bl pltt_getBuffer
    adds r1, r0, #0x0
    adds r0, r4, #0x0
    movs r2, #0x18
    bl CpuFastSet
_080316B2:
    pop {r3, r4}
    mov r8, r3
    mov r9, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .byte 0x00, 0x00
_080316C0: .4byte 0x082580E4
_080316C4: .4byte 0x06010000
    thumb_func_start sub_80316C8
sub_80316C8:
    push {r4, lr}
    adds r4, r0, #0x0
    ldr r0, _080316E8 @ =0x080E7FEC
    lsls r1, r1, #0x02
    adds r1, r1, r0
    ldr r0, [r1, #0x00]
    ldr r0, [r0, #0x08]
    subs r0, #0x01
    cmp r0, #0x32
    bls _080316DE
    b _08031980
_080316DE:
    lsls r0, r0, #0x02
    ldr r1, _080316EC @ =0x080316F0
    adds r0, r0, r1
    ldr r0, [r0, #0x00]
    mov pc, r0
_080316E8: .4byte 0x080E7FEC
_080316EC: .4byte 0x080316F0
    .byte 0x74, 0x19, 0x03, 0x08, 0xD0, 0x17, 0x03, 0x08, 0xBC, 0x17, 0x03, 0x08, 0xF8, 0x17, 0x03, 0x08
    .byte 0x80, 0x19, 0x03, 0x08, 0xAC, 0x18, 0x03, 0x08, 0xE4, 0x17, 0x03, 0x08, 0x0C, 0x18, 0x03, 0x08
    .byte 0x80, 0x19, 0x03, 0x08, 0x5C, 0x18, 0x03, 0x08, 0x20, 0x18, 0x03, 0x08, 0x80, 0x19, 0x03, 0x08
    .byte 0x34, 0x18, 0x03, 0x08, 0xFC, 0x18, 0x03, 0x08, 0x48, 0x18, 0x03, 0x08, 0xC0, 0x18, 0x03, 0x08
    .byte 0x84, 0x18, 0x03, 0x08, 0x98, 0x18, 0x03, 0x08, 0x70, 0x18, 0x03, 0x08, 0xD4, 0x18, 0x03, 0x08
    .byte 0xE8, 0x18, 0x03, 0x08, 0x10, 0x19, 0x03, 0x08, 0x60, 0x19, 0x03, 0x08, 0x80, 0x19, 0x03, 0x08
    .byte 0x80, 0x19, 0x03, 0x08, 0x80, 0x19, 0x03, 0x08, 0x80, 0x19, 0x03, 0x08, 0x24, 0x19, 0x03, 0x08
    .byte 0x74, 0x19, 0x03, 0x08, 0x80, 0x19, 0x03, 0x08, 0x80, 0x19, 0x03, 0x08, 0x80, 0x19, 0x03, 0x08
    .byte 0x80, 0x19, 0x03, 0x08, 0x80, 0x19, 0x03, 0x08, 0x80, 0x19, 0x03, 0x08, 0x80, 0x19, 0x03, 0x08
    .byte 0x38, 0x19, 0x03, 0x08, 0x80, 0x19, 0x03, 0x08, 0x80, 0x19, 0x03, 0x08, 0x80, 0x19, 0x03, 0x08
    .byte 0x80, 0x19, 0x03, 0x08, 0x80, 0x19, 0x03, 0x08, 0x38, 0x19, 0x03, 0x08, 0x80, 0x19, 0x03, 0x08
    .byte 0x80, 0x19, 0x03, 0x08, 0x80, 0x19, 0x03, 0x08, 0x80, 0x19, 0x03, 0x08, 0x80, 0x19, 0x03, 0x08
    .byte 0x80, 0x19, 0x03, 0x08, 0x80, 0x19, 0x03, 0x08, 0x4C, 0x19, 0x03, 0x08, 0x02, 0xF0, 0xE6, 0xFF
    .byte 0x01, 0x48, 0x21, 0x18, 0x01, 0x48, 0xDA, 0xE0, 0x14, 0x05, 0x00, 0x00, 0xE1, 0x45, 0x03, 0x08
    .byte 0x03, 0xF0, 0xC4, 0xFB, 0x01, 0x48, 0x21, 0x18, 0x01, 0x48, 0xD0, 0xE0, 0x14, 0x05, 0x00, 0x00
    .byte 0x21, 0x4E, 0x03, 0x08, 0x02, 0xF0, 0xD2, 0xFF, 0x01, 0x48, 0x21, 0x18, 0x01, 0x48, 0xC6, 0xE0
    .byte 0x14, 0x05, 0x00, 0x00, 0xE1, 0x45, 0x03, 0x08, 0x02, 0xF0, 0x12, 0xFD, 0x01, 0x48, 0x21, 0x18
    .byte 0x01, 0x48, 0xBC, 0xE0, 0x14, 0x05, 0x00, 0x00, 0x4D, 0x41, 0x03, 0x08, 0x02, 0xF0, 0xAE, 0xFE
    .byte 0x01, 0x48, 0x21, 0x18, 0x01, 0x48, 0xB2, 0xE0, 0x14, 0x05, 0x00, 0x00, 0x25, 0x42, 0x03, 0x08
    .byte 0x03, 0xF0, 0xB0, 0xF8, 0x01, 0x48, 0x21, 0x18, 0x01, 0x48, 0xA8, 0xE0, 0x14, 0x05, 0x00, 0x00
    .byte 0xB9, 0x47, 0x03, 0x08, 0x03, 0xF0, 0xF0, 0xFE, 0x01, 0x48, 0x21, 0x18, 0x01, 0x48, 0x9E, 0xE0
    .byte 0x14, 0x05, 0x00, 0x00, 0xA9, 0x4F, 0x03, 0x08, 0x03, 0xF0, 0x48, 0xFA, 0x01, 0x48, 0x21, 0x18
    .byte 0x01, 0x48, 0x94, 0xE0, 0x14, 0x05, 0x00, 0x00, 0xB1, 0x49, 0x03, 0x08, 0x03, 0xF0, 0xFC, 0xFE
    .byte 0x01, 0x48, 0x21, 0x18, 0x01, 0x48, 0x8A, 0xE0, 0x14, 0x05, 0x00, 0x00, 0xD1, 0x56, 0x03, 0x08
    .byte 0x04, 0xF0, 0x40, 0xFA, 0x01, 0x48, 0x21, 0x18, 0x01, 0x48, 0x80, 0xE0, 0x14, 0x05, 0x00, 0x00
    .byte 0x49, 0x5B, 0x03, 0x08, 0x04, 0xF0, 0xDA, 0xFB, 0x01, 0x48, 0x21, 0x18, 0x01, 0x48, 0x76, 0xE0
    .byte 0x14, 0x05, 0x00, 0x00, 0x41, 0x5D, 0x03, 0x08, 0x05, 0xF0, 0xE4, 0xFB, 0x01, 0x48, 0x21, 0x18
    .byte 0x01, 0x48, 0x6C, 0xE0, 0x14, 0x05, 0x00, 0x00, 0x9D, 0x6F, 0x03, 0x08, 0x04, 0xF0, 0x38, 0xFE
    .byte 0x01, 0x48, 0x21, 0x18, 0x01, 0x48, 0x62, 0xE0, 0x14, 0x05, 0x00, 0x00, 0x6D, 0x61, 0x03, 0x08
    .byte 0x05, 0xF0, 0x2C, 0xFA, 0x01, 0x48, 0x21, 0x18, 0x01, 0x48, 0x58, 0xE0, 0x14, 0x05, 0x00, 0x00
    .byte 0x09, 0x66, 0x03, 0x08, 0x05, 0xF0, 0xE6, 0xFA, 0x01, 0x48, 0x21, 0x18, 0x01, 0x48, 0x4E, 0xE0
    .byte 0x14, 0x05, 0x00, 0x00, 0x61, 0x6D, 0x03, 0x08, 0x04, 0xF0, 0x38, 0xFC, 0x01, 0x48, 0x21, 0x18
    .byte 0x01, 0x48, 0x44, 0xE0, 0x14, 0x05, 0x00, 0x00, 0x8D, 0x60, 0x03, 0x08, 0x05, 0xF0, 0x4C, 0xFB
    .byte 0x01, 0x48, 0x21, 0x18, 0x01, 0x48, 0x3A, 0xE0, 0x14, 0x05, 0x00, 0x00, 0xC5, 0x6E, 0x03, 0x08
    .byte 0x03, 0xF0, 0x7C, 0xFA, 0x01, 0x48, 0x21, 0x18, 0x01, 0x48, 0x30, 0xE0, 0x14, 0x05, 0x00, 0x00
    .byte 0x09, 0x4D, 0x03, 0x08, 0x05, 0xF0, 0x20, 0xFC, 0x01, 0x48, 0x21, 0x18, 0x01, 0x48, 0x26, 0xE0
    .byte 0x14, 0x05, 0x00, 0x00, 0x69, 0x70, 0x03, 0x08, 0x05, 0xF0, 0x52, 0xFF, 0x01, 0x48, 0x21, 0x18
    .byte 0x01, 0x48, 0x1C, 0xE0, 0x14, 0x05, 0x00, 0x00, 0x0D, 0x77, 0x03, 0x08, 0x05, 0xF0, 0xCE, 0xFF
    .byte 0x01, 0x48, 0x21, 0x18, 0x01, 0x48, 0x12, 0xE0, 0x14, 0x05, 0x00, 0x00, 0xE5, 0x77, 0x03, 0x08
    .byte 0x05, 0xF0, 0xAC, 0xFE, 0x01, 0x48, 0x21, 0x18, 0x01, 0x48, 0x08, 0xE0, 0x14, 0x05, 0x00, 0x00
    .byte 0x9D, 0x71, 0x03, 0x08, 0x02, 0xF0, 0xE8, 0xFB, 0x03, 0x48, 0x21, 0x18, 0x03, 0x48, 0x08, 0x60
_08031980:
    pop {r4}
    pop {r0}
    bx r0
    .byte 0x00, 0x00, 0x14, 0x05, 0x00, 0x00, 0x45, 0x40, 0x03, 0x08
    thumb_func_start loadtrack_8031990
loadtrack_8031990: @ 08031990
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r5, r0, #0x0
    adds r7, r1, #0x0
    ldr r1, _08031AB0 @ =0x080E7FEC
    lsls r0, r7, #0x02
    adds r0, r0, r1
    ldr r0, [r0, #0x00]
    mov r8, r0
    ldr r0, [r0, #0x00]
    lsls r0, r0, #0x02
    ldr r1, _08031AB4 @ =courseData_bin
    adds r0, r0, r1
    ldr r0, [r0, #0x00]
    adds r6, r0, r1
    movs r0, #0x00
    str r0, [r5, #0x00]
    movs r2, #0x00
    movs r1, #0x0F
    ldr r3, _08031AB8 @ =0x00000554
    adds r0, r5, r3
_080319BC:
    str r2, [r0, #0x00]
    subs r0, #0x04
    subs r1, #0x01
    cmp r1, #0x00
    bge _080319BC
    movs r1, #0xAF
    lsls r1, r1, #0x03
    adds r0, r5, r1
    mov r3, r8
    str r3, [r0, #0x00]
    subs r1, #0x04
    adds r0, r5, r1
    str r6, [r0, #0x00]
    ldr r2, _08031ABC @ =0x0400000C
    ldr r3, _08031AC0 @ =0x00003889
    adds r1, r3, #0x0
    movs r0, #0xC0
    lsls r0, r0, #0x08
    orrs r0, r1
    strh r0, [r2, #0x00]
    bl main_frameProc
    adds r0, r5, #0x0
    adds r1, r7, #0x0
    adds r2, r6, #0x0
    bl loadtrack_loadTileset
    adds r0, r6, #0x0
    adds r0, #0x84
    ldr r4, [r0, #0x00]
    adds r4, r6, r4
    movs r0, #0x00
    bl pltt_getBuffer
    adds r1, r0, #0x0
    adds r0, r4, #0x0
    movs r2, #0x18
    bl CpuFastSet
    ldr r4, _08031AC4 @ =0x08076DE8
    movs r0, #0x00
    bl pltt_getBuffer
    adds r1, r0, #0x0
    adds r1, #0x60
    adds r0, r4, #0x0
    movs r2, #0x08
    bl CpuFastSet
    bl main_frameProc
    adds r0, r5, #0x0
    adds r1, r7, #0x0
    adds r2, r6, #0x0
    bl sub_803159C
    adds r0, r5, #0x0
    bl sub_80329BC
    bl main_frameProc
    adds r0, r5, #0x0
    adds r0, #0xA4
    adds r1, r6, #0x0
    bl sub_8032E8C
    bl main_frameProc
    adds r0, r6, #0x0
    adds r0, #0xF0
    ldr r0, [r0, #0x00]
    cmp r0, #0x00
    bne _08031A54
    adds r0, r5, #0x0
    bl sub_8032428
_08031A54:
    bl main_frameProc
    adds r0, r6, #0x0
    adds r0, #0xCA
    ldrb r0, [r0, #0x00]
    cmp r0, #0x00
    bne _08031A6E
    adds r0, r5, #0x0
    bl sub_8032D9C
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    str r0, [r5, #0x20]
_08031A6E:
    adds r0, r5, #0x0
    bl loadtrack_8031F9C
    adds r0, r6, #0x0
    adds r0, #0xC0
    ldrh r0, [r0, #0x00]
    str r0, [r5, #0x04]
    bl main_frameProc
    mov r0, r8
    bl track_loadSky
    bl main_frameProc
    adds r0, r5, #0x0
    adds r1, r7, #0x0
    bl sub_80316C8
    ldr r0, _08031AB0 @ =0x080E7FEC
    lsls r1, r7, #0x02
    adds r0, r1, r0
    ldr r0, [r0, #0x00]
    ldr r0, [r0, #0x0C]
    subs r0, #0x02
    adds r5, r1, #0x0
    cmp r0, #0x21
    bls _08031AA6
    b _08031BA4
_08031AA6:
    lsls r0, r0, #0x02
    ldr r1, _08031AC8 @ =0x08031ACC
    adds r0, r0, r1
    ldr r0, [r0, #0x00]
    mov pc, r0
_08031AB0: .4byte 0x080E7FEC
_08031AB4: .4byte courseData_bin
_08031AB8: .4byte 0x00000554
_08031ABC: .4byte 0x0400000C
_08031AC0: .4byte 0x00003889
_08031AC4: .4byte 0x08076DE8
_08031AC8: .4byte 0x08031ACC
    .byte 0x5C, 0x1B, 0x03, 0x08, 0x54, 0x1B, 0x03, 0x08, 0xA4, 0x1B, 0x03, 0x08, 0xA4, 0x1B, 0x03, 0x08
    .byte 0x6C, 0x1B, 0x03, 0x08, 0xA4, 0x1B, 0x03, 0x08, 0xA4, 0x1B, 0x03, 0x08, 0xA4, 0x1B, 0x03, 0x08
    .byte 0xA4, 0x1B, 0x03, 0x08, 0x54, 0x1B, 0x03, 0x08, 0xA4, 0x1B, 0x03, 0x08, 0x64, 0x1B, 0x03, 0x08
    .byte 0x88, 0x1B, 0x03, 0x08, 0xA4, 0x1B, 0x03, 0x08, 0xA4, 0x1B, 0x03, 0x08, 0xA4, 0x1B, 0x03, 0x08
    .byte 0xA4, 0x1B, 0x03, 0x08, 0xA4, 0x1B, 0x03, 0x08, 0xA4, 0x1B, 0x03, 0x08, 0xA4, 0x1B, 0x03, 0x08
    .byte 0xA4, 0x1B, 0x03, 0x08, 0xA4, 0x1B, 0x03, 0x08, 0xA4, 0x1B, 0x03, 0x08, 0xA4, 0x1B, 0x03, 0x08
    .byte 0xA4, 0x1B, 0x03, 0x08, 0xA4, 0x1B, 0x03, 0x08, 0xA4, 0x1B, 0x03, 0x08, 0xA4, 0x1B, 0x03, 0x08
    .byte 0xA4, 0x1B, 0x03, 0x08, 0xA4, 0x1B, 0x03, 0x08, 0xA4, 0x1B, 0x03, 0x08, 0xA4, 0x1B, 0x03, 0x08
    .byte 0xA4, 0x1B, 0x03, 0x08, 0x54, 0x1B, 0x03, 0x08, 0x00, 0x4C, 0x0A, 0xE0, 0xF4, 0x6E, 0x06, 0x08
    .byte 0x00, 0x4C, 0x06, 0xE0, 0xEC, 0x6E, 0x06, 0x08, 0x00, 0x4C, 0x02, 0xE0, 0x04, 0x6F, 0x06, 0x08
    .byte 0x05, 0x4C, 0x01, 0x20, 0xFC, 0xF7, 0x5E, 0xFD, 0x01, 0x1C, 0xCE, 0x31, 0x20, 0x1C, 0x04, 0x22
    .byte 0x2F, 0xF0, 0xE8, 0xFB, 0x10, 0xE0, 0x00, 0x00, 0xFC, 0x6E, 0x06, 0x08, 0x01, 0x20, 0xFC, 0xF7
    .byte 0x51, 0xFD, 0x04, 0x1C, 0xF6, 0x34, 0x01, 0x20, 0xFC, 0xF7, 0x4C, 0xFD, 0x01, 0x1C, 0xB6, 0x31
    .byte 0x20, 0x1C, 0x03, 0x22, 0x2F, 0xF0, 0xD6, 0xFB
_08031BA4:
    ldr r0, _08031BD4 @ =0x080E7FEC
    adds r4, r5, r0
    ldr r0, [r4, #0x00]
    ldr r0, [r0, #0x10]
    cmp r0, #0x08
    bne _08031BBE
    bl dmaq_getVBlankDmaQueue
    ldr r1, _08031BD8 @ =0x08068F0C
    ldr r2, _08031BDC @ =0x06013F60
    ldr r3, _08031BE0 @ =0x80000040
    bl dmaq_enqueue
_08031BBE:
    ldr r0, [r4, #0x00]
    ldr r0, [r0, #0x0C]
    subs r0, #0x02
    cmp r0, #0x31
    bls _08031BCA
    b _08031DF6
_08031BCA:
    lsls r0, r0, #0x02
    ldr r1, _08031BE4 @ =0x08031BE8
    adds r0, r0, r1
    ldr r0, [r0, #0x00]
    mov pc, r0
_08031BD4: .4byte 0x080E7FEC
_08031BD8: .4byte 0x08068F0C
_08031BDC: .4byte 0x06013F60
_08031BE0: .4byte 0x80000040
_08031BE4: .4byte 0x08031BE8
    .byte 0xB0, 0x1C, 0x03, 0x08, 0x34, 0x1D, 0x03, 0x08, 0xF6, 0x1D, 0x03, 0x08, 0xB0, 0x1C, 0x03, 0x08
    .byte 0xF6, 0x1D, 0x03, 0x08, 0xF6, 0x1D, 0x03, 0x08, 0xF6, 0x1D, 0x03, 0x08, 0xE8, 0x1C, 0x03, 0x08
    .byte 0xE0, 0x1C, 0x03, 0x08, 0xF6, 0x1D, 0x03, 0x08, 0xF6, 0x1D, 0x03, 0x08, 0xC8, 0x1C, 0x03, 0x08
    .byte 0xF6, 0x1D, 0x03, 0x08, 0xF6, 0x1D, 0x03, 0x08, 0x00, 0x1D, 0x03, 0x08, 0x60, 0x1D, 0x03, 0x08
    .byte 0xF6, 0x1D, 0x03, 0x08, 0x8C, 0x1D, 0x03, 0x08, 0xF6, 0x1D, 0x03, 0x08, 0x68, 0x1D, 0x03, 0x08
    .byte 0xF6, 0x1D, 0x03, 0x08, 0x3C, 0x1D, 0x03, 0x08, 0xF6, 0x1D, 0x03, 0x08, 0xF6, 0x1D, 0x03, 0x08
    .byte 0xF6, 0x1D, 0x03, 0x08, 0xF6, 0x1D, 0x03, 0x08, 0xF6, 0x1D, 0x03, 0x08, 0xF6, 0x1D, 0x03, 0x08
    .byte 0xF6, 0x1D, 0x03, 0x08, 0xF6, 0x1D, 0x03, 0x08, 0xF6, 0x1D, 0x03, 0x08, 0xC4, 0x1D, 0x03, 0x08
    .byte 0xF6, 0x1D, 0x03, 0x08, 0x34, 0x1D, 0x03, 0x08, 0xF6, 0x1D, 0x03, 0x08, 0xF6, 0x1D, 0x03, 0x08
    .byte 0xF6, 0x1D, 0x03, 0x08, 0xF6, 0x1D, 0x03, 0x08, 0xF6, 0x1D, 0x03, 0x08, 0xF6, 0x1D, 0x03, 0x08
    .byte 0xCC, 0x1D, 0x03, 0x08, 0xF6, 0x1D, 0x03, 0x08, 0xEC, 0x1D, 0x03, 0x08, 0xF6, 0x1D, 0x03, 0x08
    .byte 0xF6, 0x1D, 0x03, 0x08, 0xF6, 0x1D, 0x03, 0x08, 0xF6, 0x1D, 0x03, 0x08, 0xAC, 0x1D, 0x03, 0x08
    .byte 0xF6, 0x1D, 0x03, 0x08, 0xA4, 0x1D, 0x03, 0x08, 0x03, 0x49, 0x00, 0x20, 0x00, 0x22, 0xFE, 0xF7
    .byte 0xB5, 0xFA, 0x02, 0x49, 0x8C, 0xE0, 0x00, 0x00, 0x8C, 0x12, 0x0F, 0x08, 0x6C, 0x13, 0x0F, 0x08
    .byte 0x03, 0x49, 0x00, 0x20, 0x00, 0x22, 0xFE, 0xF7, 0xA9, 0xFA, 0x02, 0x49, 0x80, 0xE0, 0x00, 0x00
    .byte 0x4C, 0x14, 0x0F, 0x08, 0x2C, 0x15, 0x0F, 0x08, 0x00, 0x49, 0x79, 0xE0, 0x0C, 0x16, 0x0F, 0x08
    .byte 0x03, 0x49, 0x00, 0x20, 0x00, 0x22, 0xFE, 0xF7, 0x99, 0xFA, 0x02, 0x49, 0x70, 0xE0, 0x00, 0x00
    .byte 0x1C, 0x17, 0x0F, 0x08, 0x6C, 0x17, 0x0F, 0x08, 0x08, 0x49, 0x00, 0x20, 0x00, 0x22, 0xFE, 0xF7
    .byte 0x8D, 0xFA, 0x07, 0x49, 0x00, 0x20, 0x00, 0x22, 0xFE, 0xF7, 0x88, 0xFA, 0x05, 0x49, 0x00, 0x20
    .byte 0x00, 0x22, 0xFE, 0xF7, 0x83, 0xFA, 0x04, 0x49, 0x5A, 0xE0, 0x00, 0x00, 0xD4, 0x17, 0x0F, 0x08
    .byte 0x8C, 0x18, 0x0F, 0x08, 0x84, 0x19, 0x0F, 0x08, 0x34, 0x1A, 0x0F, 0x08, 0x00, 0x49, 0x4F, 0xE0
    .byte 0x2C, 0x21, 0x0F, 0x08, 0x05, 0x49, 0x00, 0x20, 0x00, 0x22, 0xFE, 0xF7, 0x6F, 0xFA, 0x04, 0x49
    .byte 0x00, 0x20, 0x00, 0x22, 0xFE, 0xF7, 0x6A, 0xFA, 0x02, 0x49, 0x41, 0xE0, 0xD0, 0x21, 0x0F, 0x08
    .byte 0x30, 0x22, 0x0F, 0x08, 0x98, 0x22, 0x0F, 0x08, 0x00, 0x49, 0x39, 0xE0, 0x6C, 0x25, 0x0F, 0x08
    .byte 0x05, 0x49, 0x00, 0x20, 0x00, 0x22, 0xFE, 0xF7, 0x59, 0xFA, 0x04, 0x49, 0x00, 0x20, 0x00, 0x22
    .byte 0xFE, 0xF7, 0x54, 0xFA, 0x02, 0x49, 0x2B, 0xE0, 0x6C, 0x25, 0x0F, 0x08, 0x64, 0x26, 0x0F, 0x08
    .byte 0xFC, 0x26, 0x0F, 0x08, 0x03, 0x49, 0x00, 0x20, 0x00, 0x22, 0xFE, 0xF7, 0x47, 0xFA, 0x02, 0x49
    .byte 0x1E, 0xE0, 0x00, 0x00, 0xB4, 0x27, 0x0F, 0x08, 0xA0, 0x28, 0x0F, 0x08, 0x00, 0x49, 0x17, 0xE0
    .byte 0xB4, 0x27, 0x0F, 0x08, 0x03, 0x49, 0x00, 0x20, 0x00, 0x22, 0xFE, 0xF7, 0x37, 0xFA, 0x02, 0x49
    .byte 0x0E, 0xE0, 0x00, 0x00, 0x64, 0x26, 0x0F, 0x08, 0xFC, 0x26, 0x0F, 0x08, 0x00, 0x49, 0x07, 0xE0
    .byte 0xB4, 0x20, 0x0F, 0x08, 0x05, 0x49, 0x00, 0x20, 0x00, 0x22, 0xFE, 0xF7, 0x27, 0xFA, 0x04, 0x49
    .byte 0x00, 0x20, 0x00, 0x22, 0xFE, 0xF7, 0x22, 0xFA, 0x09, 0xE0, 0x00, 0x00, 0x08, 0x23, 0x0F, 0x08
    .byte 0xE8, 0x23, 0x0F, 0x08, 0x07, 0x49, 0x00, 0x20, 0x00, 0x22, 0xFE, 0xF7, 0x17, 0xFA
_08031DF6:
    ldr r1, _08031E10 @ =0x080F1B38
    movs r0, #0x00
    movs r2, #0x00
    bl sub_8030224
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .byte 0x00, 0x00, 0xEC, 0x24, 0x0F, 0x08
_08031E10: .4byte 0x080F1B38
    thumb_func_start sub_8031E14
sub_8031E14:
    push {r4, r5, lr}
    adds r3, r0, #0x0
    adds r5, r2, #0x0
    lsls r1, r1, #0x10
    lsrs r4, r1, #0x10
    ldr r0, _08031EB8 @ =0x03002E20
    movs r1, #0xFF
    lsls r1, r1, #0x03
    adds r0, r0, r1
    ldrb r1, [r0, #0x00]
    movs r0, #0x40
    ands r0, r1
    cmp r0, #0x00
    bne _08031E4A
    ldr r1, _08031EBC @ =0x00000514
    adds r0, r3, r1
    ldr r2, [r0, #0x00]
    cmp r2, #0x00
    beq _08031E4A
    lsls r0, r4, #0x10
    asrs r0, r0, #0x10
    ldr r1, _08031EC0 @ =0x030021B0
    ldrb r1, [r1, #0x00]
    lsls r1, r1, #0x18
    asrs r1, r1, #0x18
    bl _call_via_r2
_08031E4A:
    ldr r2, _08031EB8 @ =0x03002E20
    ldr r0, _08031EC4 @ =0x0000057C
    adds r2, r2, r0
    movs r3, #0x80
    lsls r3, r3, #0x13
    ldrh r1, [r3, #0x00]
    ldr r0, _08031EC8 @ =0x00007040
    ands r0, r1
    ldrh r1, [r2, #0x00]
    orrs r0, r1
    strh r0, [r3, #0x00]
    ldr r1, _08031ECC @ =0x04000050
    ldr r0, [r2, #0x04]
    str r0, [r1, #0x00]
    subs r1, #0x46
    ldrh r0, [r2, #0x08]
    strh r0, [r1, #0x00]
    adds r1, #0x02
    ldrh r0, [r2, #0x0A]
    strh r0, [r1, #0x00]
    adds r1, #0x02
    ldrh r0, [r2, #0x0C]
    strh r0, [r1, #0x00]
    adds r1, #0x06
    ldrh r0, [r2, #0x0E]
    strh r0, [r1, #0x00]
    adds r3, #0x16
    ldr r4, _08031EC0 @ =0x030021B0
    movs r1, #0x00
    ldsb r1, [r4, r1]
    ldrh r0, [r2, #0x10]
    subs r0, r0, r1
    strh r0, [r3, #0x00]
    ldr r1, _08031ED0 @ =0x04000018
    ldrh r0, [r2, #0x12]
    strh r0, [r1, #0x00]
    adds r3, #0x04
    movs r1, #0x00
    ldsb r1, [r4, r1]
    ldrh r0, [r2, #0x14]
    subs r0, r0, r1
    strh r0, [r3, #0x00]
    ldr r1, _08031ED4 @ =0x0400001C
    ldrh r0, [r2, #0x16]
    strh r0, [r1, #0x00]
    adds r3, #0x04
    movs r1, #0x00
    ldsb r1, [r4, r1]
    ldrh r0, [r2, #0x18]
    subs r0, r0, r1
    strh r0, [r3, #0x00]
    strb r5, [r4, #0x00]
    pop {r4, r5}
    pop {r0}
    bx r0
_08031EB8: .4byte 0x03002E20
_08031EBC: .4byte 0x00000514
_08031EC0: .4byte 0x030021B0
_08031EC4: .4byte 0x0000057C
_08031EC8: .4byte 0x00007040
_08031ECC: .4byte 0x04000050
_08031ED0: .4byte 0x04000018
_08031ED4: .4byte 0x0400001C
    thumb_func_start sub_8031ED8
sub_8031ED8:
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r6, r0, #0x0
    ldr r1, _08031F10 @ =0x00000574
    adds r0, r6, r1
    ldr r7, [r0, #0x00]
    adds r0, r7, #0x0
    adds r0, #0x98
    ldr r0, [r0, #0x00]
    movs r4, #0x00
    cmp r0, #0x00
    beq _08031EF4
    adds r4, r7, r0
_08031EF4:
    cmp r4, #0x00
    beq _08031F90
    ldrb r0, [r4, #0x00]
    cmp r0, #0x00
    beq _08031F90
    ldr r3, _08031F14 @ =0x03003621
    mov r8, r3
_08031F02:
    adds r0, #0x7F
    lsls r0, r0, #0x18
    lsrs r5, r0, #0x18
    cmp r5, #0x07
    bls _08031F18
    adds r4, #0x04
    b _08031F8A
_08031F10: .4byte 0x00000574
_08031F14: .4byte 0x03003621
_08031F18:
    adds r4, #0x01
    mov r1, r8
    ldrb r0, [r1, #0x00]
    bl sub_8032BC8
    cmp r0, #0x00
    beq _08031F34
    lsls r2, r5, #0x04
    adds r1, r6, #0x0
    adds r1, #0x24
    adds r1, r1, r2
    ldrb r0, [r4, #0x00]
    lsls r0, r0, #0x13
    b _08031F46
_08031F34:
    lsls r2, r5, #0x04
    adds r1, r6, #0x0
    adds r1, #0x24
    adds r1, r1, r2
    ldrb r0, [r4, #0x00]
    lsls r0, r0, #0x13
    movs r3, #0x80
    lsls r3, r3, #0x0B
    adds r0, r0, r3
_08031F46:
    str r0, [r1, #0x00]
    adds r4, #0x01
    adds r1, r6, #0x0
    adds r1, #0x28
    adds r1, r1, r2
    ldrb r0, [r4, #0x00]
    lsls r0, r0, #0x13
    movs r3, #0x80
    lsls r3, r3, #0x0B
    adds r0, r0, r3
    str r0, [r1, #0x00]
    adds r4, #0x01
    adds r0, r7, #0x0
    adds r0, #0xCA
    ldrb r1, [r0, #0x00]
    cmp r1, #0x00
    beq _08031F80
    adds r1, r6, #0x0
    adds r1, #0x2C
    adds r1, r1, r2
    ldr r2, _08031F7C @ =0x080E745C
    lsls r0, r5, #0x01
    adds r0, r0, r2
    ldrh r0, [r0, #0x00]
    str r0, [r1, #0x00]
    b _08031F88
    .byte 0x00, 0x00
_08031F7C: .4byte 0x080E745C
_08031F80:
    adds r0, r6, #0x0
    adds r0, #0x2C
    adds r0, r0, r2
    str r1, [r0, #0x00]
_08031F88:
    adds r4, #0x01
_08031F8A:
    ldrb r0, [r4, #0x00]
    cmp r0, #0x00
    bne _08031F02
_08031F90:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .byte 0x00, 0x00
    thumb_func_start loadtrack_8031F9C
loadtrack_8031F9C: @ 08031F9C
    push {r4, r5, r6, r7, lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5, r6, r7}
    add sp, #-0x024
    adds r7, r0, #0x0
    ldr r0, _08031FD4 @ =0x03002E20
    adds r3, r0, #0x0
    adds r3, #0x24
    ldr r1, _08031FD8 @ =0x000007FE
    adds r0, r0, r1
    ldrh r0, [r0, #0x00]
    movs r1, #0xF0
    lsls r1, r1, #0x04
    ands r1, r0
    movs r0, #0x80
    lsls r0, r0, #0x02
    cmp r1, r0
    beq _08031FF6
    cmp r1, r0
    bgt _08031FDC
    movs r0, #0x80
    lsls r0, r0, #0x01
    cmp r1, r0
    beq _08031FEE
    b _0803220A
    .byte 0x00, 0x00
_08031FD4: .4byte 0x03002E20
_08031FD8: .4byte 0x000007FE
_08031FDC:
    movs r0, #0x80
    lsls r0, r0, #0x03
    cmp r1, r0
    beq _0803207A
    movs r0, #0x80
    lsls r0, r0, #0x04
    cmp r1, r0
    beq _08031FEE
    b _0803220A
_08031FEE:
    adds r0, r7, #0x0
    bl sub_8031ED8
    b _0803220A
_08031FF6:
    mov r2, sp
    ldr r3, _08032014 @ =0x00000574
    adds r0, r7, r3
    ldr r3, [r0, #0x00]
    adds r0, r3, #0x0
    adds r0, #0x98
    ldr r0, [r0, #0x00]
    movs r1, #0x00
    cmp r0, #0x00
    beq _0803200C
    adds r1, r3, r0
_0803200C:
    cmp r1, #0x00
    beq _08032060
    b _0803205A
    .byte 0x00, 0x00
_08032014: .4byte 0x00000574
_08032018:
    cmp r0, #0x89
    bne _08032038
    adds r1, #0x01
    ldrb r0, [r1, #0x00]
    lsls r0, r0, #0x13
    movs r3, #0x80
    lsls r3, r3, #0x0B
    adds r0, r0, r3
    str r0, [r2, #0x00]
    adds r1, #0x01
    ldrb r0, [r1, #0x00]
    lsls r0, r0, #0x13
    adds r0, r0, r3
    str r0, [r2, #0x04]
    adds r1, #0x02
    b _0803205A
_08032038:
    cmp r0, #0x8A
    bne _08032058
    adds r1, #0x01
    ldrb r0, [r1, #0x00]
    lsls r0, r0, #0x13
    movs r3, #0x80
    lsls r3, r3, #0x0B
    adds r0, r0, r3
    str r0, [r2, #0x08]
    adds r1, #0x01
    ldrb r0, [r1, #0x00]
    lsls r0, r0, #0x13
    adds r0, r0, r3
    str r0, [r2, #0x0C]
    adds r1, #0x02
    b _0803205A
_08032058:
    adds r1, #0x04
_0803205A:
    ldrb r0, [r1, #0x00]
    cmp r0, #0x00
    bne _08032018
_08032060:
    ldr r0, [sp, #0x000]
    ldr r1, [sp, #0x008]
    adds r0, r0, r1
    asrs r0, r0, #0x01
    str r0, [r7, #0x24]
    ldr r0, [sp, #0x004]
    ldr r1, [sp, #0x00C]
    adds r0, r0, r1
    asrs r0, r0, #0x01
    str r0, [r7, #0x28]
    movs r0, #0x00
    str r0, [r7, #0x2C]
    b _0803220A
_0803207A:
    ldr r1, _0803209C @ =0x00000574
    adds r0, r7, r1
    ldr r2, [r0, #0x00]
    adds r0, r2, #0x0
    adds r0, #0x98
    ldr r0, [r0, #0x00]
    movs r1, #0x00
    cmp r0, #0x00
    beq _0803208E
    adds r1, r2, r0
_0803208E:
    adds r2, r7, #0x0
    adds r2, #0x2C
    str r2, [sp, #0x020]
    cmp r1, #0x00
    beq _080320E8
    b _080320E2
    .byte 0x00, 0x00
_0803209C: .4byte 0x00000574
_080320A0:
    cmp r0, #0x89
    bne _080320C0
    adds r1, #0x01
    ldrb r0, [r1, #0x00]
    lsls r0, r0, #0x13
    movs r2, #0x80
    lsls r2, r2, #0x0B
    adds r0, r0, r2
    str r0, [sp, #0x010]
    adds r1, #0x01
    ldrb r0, [r1, #0x00]
    lsls r0, r0, #0x13
    adds r0, r0, r2
    str r0, [sp, #0x014]
    adds r1, #0x02
    b _080320E2
_080320C0:
    cmp r0, #0x8A
    bne _080320E0
    adds r1, #0x01
    ldrb r0, [r1, #0x00]
    lsls r0, r0, #0x13
    movs r2, #0x80
    lsls r2, r2, #0x0B
    adds r0, r0, r2
    str r0, [sp, #0x018]
    adds r1, #0x01
    ldrb r0, [r1, #0x00]
    lsls r0, r0, #0x13
    adds r0, r0, r2
    str r0, [sp, #0x01C]
    adds r1, #0x02
    b _080320E2
_080320E0:
    adds r1, #0x04
_080320E2:
    ldrb r0, [r1, #0x00]
    cmp r0, #0x00
    bne _080320A0
_080320E8:
    ldr r1, _080320FC @ =0x000007D7
    adds r0, r3, r1
    ldrb r0, [r0, #0x00]
    cmp r0, #0x03
    beq _08032168
    cmp r0, #0x03
    bgt _08032100
    cmp r0, #0x02
    beq _08032106
    b _080321FA
_080320FC: .4byte 0x000007D7
_08032100:
    cmp r0, #0x04
    beq _08032194
    b _080321FA
_08032106:
    add r6, sp, #0x010
    ldr r4, [sp, #0x010]
    lsls r0, r4, #0x01
    ldr r2, [r6, #0x08]
    mov r10, r2
    add r0, r10
    movs r1, #0x03
    bl __divsi3
    mov r9, r0
    str r0, [r7, #0x24]
    ldr r5, [r6, #0x04]
    lsls r0, r5, #0x01
    ldr r6, [r6, #0x0C]
    mov r8, r6
    add r0, r8
    movs r1, #0x03
    bl __divsi3
    adds r6, r0, #0x0
    str r6, [r7, #0x28]
    add r4, r10
    add r4, r10
    adds r0, r4, #0x0
    movs r1, #0x03
    bl __divsi3
    adds r4, r0, #0x0
    str r4, [r7, #0x34]
    add r5, r8
    add r5, r8
    adds r0, r5, #0x0
    movs r1, #0x03
    bl __divsi3
    ldr r1, _08032164 @ =0xFFFF0000
    mov r3, r9
    ands r3, r1
    str r3, [r7, #0x24]
    ands r6, r1
    str r6, [r7, #0x28]
    ands r4, r1
    str r4, [r7, #0x34]
    ands r0, r1
    str r0, [r7, #0x38]
    b _080321FA
    .byte 0x00, 0x00
_08032164: .4byte 0xFFFF0000
_08032168:
    add r2, sp, #0x010
    ldr r0, [sp, #0x010]
    str r0, [r7, #0x24]
    ldr r1, [r2, #0x04]
    str r1, [r7, #0x28]
    ldr r3, [r2, #0x08]
    adds r0, r0, r3
    asrs r0, r0, #0x01
    ldr r2, [r2, #0x0C]
    adds r1, r1, r2
    asrs r1, r1, #0x01
    str r3, [r7, #0x44]
    str r2, [r7, #0x48]
    ldr r2, _08032190 @ =0xFFFF0000
    ands r0, r2
    str r0, [r7, #0x34]
    ands r1, r2
    str r1, [r7, #0x38]
    b _080321FA
    .byte 0x00, 0x00
_08032190: .4byte 0xFFFF0000
_08032194:
    add r6, sp, #0x010
    ldr r4, [sp, #0x010]
    str r4, [r7, #0x24]
    ldr r5, [r6, #0x04]
    str r5, [r7, #0x28]
    lsls r0, r4, #0x01
    ldr r1, [r6, #0x08]
    mov r10, r1
    add r0, r10
    movs r1, #0x03
    bl __divsi3
    mov r8, r0
    str r0, [r7, #0x34]
    lsls r0, r5, #0x01
    ldr r6, [r6, #0x0C]
    mov r9, r6
    add r0, r9
    movs r1, #0x03
    bl __divsi3
    adds r6, r0, #0x0
    str r6, [r7, #0x38]
    add r4, r10
    add r4, r10
    adds r0, r4, #0x0
    movs r1, #0x03
    bl __divsi3
    adds r4, r0, #0x0
    str r4, [r7, #0x44]
    add r5, r9
    add r5, r9
    adds r0, r5, #0x0
    movs r1, #0x03
    bl __divsi3
    mov r2, r10
    str r2, [r7, #0x54]
    mov r3, r9
    str r3, [r7, #0x58]
    ldr r1, _0803221C @ =0xFFFF0000
    mov r2, r8
    ands r2, r1
    str r2, [r7, #0x34]
    ands r6, r1
    str r6, [r7, #0x38]
    ands r4, r1
    str r4, [r7, #0x44]
    ands r0, r1
    str r0, [r7, #0x48]
_080321FA:
    ldr r1, [sp, #0x020]
    movs r2, #0x00
    adds r0, r1, #0x0
    adds r0, #0x30
_08032202:
    str r2, [r0, #0x00]
    subs r0, #0x10
    cmp r0, r1
    bge _08032202
_0803220A:
    add sp, #0x024
    pop {r3, r4, r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .byte 0x00, 0x00
_0803221C: .4byte 0xFFFF0000
    thumb_func_start sub_8032220
sub_8032220:
    push {r4, r5, r6, r7, lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5, r6, r7}
    add sp, #-0x008
    mov r12, r0
    adds r4, r1, #0x0
    mov r9, r2
    ldrb r1, [r4, #0x01]
    ldrb r0, [r4, #0x02]
    lsls r0, r0, #0x08
    adds r7, r1, r0
    ldrb r1, [r4, #0x03]
    ldrb r0, [r4, #0x04]
    lsls r0, r0, #0x08
    adds r1, r1, r0
    mov r8, r1
    cmp r3, #0x00
    beq _08032252
    mov r1, r12
    ldrb r0, [r1, #0x00]
    subs r0, #0x01
    cmp r3, r0
    bne _0803225C
_08032252:
    adds r0, r3, #0x0
    subs r0, #0x80
    mov r6, r12
    strb r0, [r6, #0x03]
    b _08032260
_0803225C:
    mov r0, r12
    strb r3, [r0, #0x03]
_08032260:
    mov r1, r12
    ldrb r5, [r1, #0x01]
    ldrb r0, [r4, #0x00]
    cmp r0, #0x04
    bls _0803226C
    b _08032416
_0803226C:
    lsls r0, r0, #0x02
    ldr r1, _08032278 @ =0x0803227C
    adds r0, r0, r1
    ldr r0, [r0, #0x00]
    mov pc, r0
    .byte 0x00, 0x00
_08032278: .4byte 0x0803227C
    .byte 0x90, 0x22, 0x03, 0x08, 0xE2, 0x22, 0x03, 0x08, 0x32, 0x23, 0x03, 0x08, 0x80, 0x23, 0x03, 0x08
    .byte 0xCC, 0x23, 0x03, 0x08, 0x61, 0x79, 0xA0, 0x79, 0x00, 0x02, 0x09, 0x18, 0x4A, 0x1C, 0xE1, 0x79
    .byte 0x20, 0x7A, 0x00, 0x02, 0x09, 0x18, 0x4C, 0x1C, 0x00, 0x23, 0xA3, 0x42, 0x00, 0xDB, 0xB4, 0xE0
    .byte 0xB9, 0x44, 0x46, 0x46, 0xF0, 0x18, 0x01, 0x33, 0x00, 0x93, 0xA8, 0x42, 0x0F, 0xDA, 0x00, 0x23
    .byte 0x93, 0x42, 0x0C, 0xDA, 0x01, 0x1C, 0x69, 0x43, 0x49, 0x44, 0xF8, 0x18, 0xA8, 0x42, 0x02, 0xDA
    .byte 0x60, 0x46, 0xC0, 0x78, 0x08, 0x70, 0x01, 0x31, 0x01, 0x33, 0x93, 0x42, 0xF5, 0xDB, 0x00, 0x9B
    .byte 0xA3, 0x42, 0xE6, 0xDB, 0x99, 0xE0, 0x61, 0x79, 0xA0, 0x79, 0x00, 0x02, 0x09, 0x18, 0x4C, 0x1C
    .byte 0x00, 0x23, 0xA3, 0x42, 0x00, 0xDB, 0x90, 0xE0, 0x41, 0x46, 0xC8, 0x18, 0x5E, 0x1C, 0x00, 0x96
    .byte 0xA8, 0x42, 0x14, 0xDA, 0xE2, 0x1A, 0x00, 0x23, 0x93, 0x42, 0x10, 0xDA, 0x01, 0x1C, 0x69, 0x43
    .byte 0x8A, 0x46, 0x4E, 0x46, 0xBE, 0x19, 0x31, 0x1C, 0x51, 0x44, 0xF8, 0x18, 0xA8, 0x42, 0x02, 0xDA
    .byte 0x60, 0x46, 0xC0, 0x78, 0x08, 0x70, 0x01, 0x31, 0x01, 0x33, 0x93, 0x42, 0xF5, 0xDB, 0x00, 0x9B
    .byte 0xA3, 0x42, 0xE1, 0xDB, 0x71, 0xE0, 0x61, 0x79, 0xA0, 0x79, 0x00, 0x02, 0x09, 0x18, 0x4C, 0x1C
    .byte 0x00, 0x23, 0xA3, 0x42, 0x69, 0xDA, 0x41, 0x46, 0xC8, 0x18, 0x5E, 0x1C, 0x00, 0x96, 0xA8, 0x42
    .byte 0x14, 0xDA, 0xE2, 0x1A, 0x00, 0x23, 0x93, 0x42, 0x10, 0xDA, 0x01, 0x1C, 0x69, 0x43, 0x8A, 0x46
    .byte 0x4E, 0x46, 0xBE, 0x19, 0x31, 0x1C, 0x51, 0x44, 0xF8, 0x1A, 0xA8, 0x42, 0x02, 0xDA, 0x60, 0x46
    .byte 0xC0, 0x78, 0x08, 0x70, 0x01, 0x39, 0x01, 0x33, 0x93, 0x42, 0xF5, 0xDB, 0x00, 0x9B, 0xA3, 0x42
    .byte 0xE1, 0xDB, 0x4A, 0xE0, 0x61, 0x79, 0xA0, 0x79, 0x00, 0x02, 0x09, 0x18, 0x4C, 0x1C, 0x00, 0x23
    .byte 0xA3, 0x42, 0x42, 0xDA, 0x59, 0x1C, 0x00, 0x91, 0x46, 0x46, 0xF1, 0x1A, 0xA9, 0x42, 0x13, 0xDA
    .byte 0xE2, 0x1A, 0x00, 0x23, 0x93, 0x42, 0x0F, 0xDA, 0x08, 0x1C, 0x68, 0x43, 0x82, 0x46, 0x49, 0x46
    .byte 0x79, 0x18, 0x51, 0x44, 0xF8, 0x1A, 0xA8, 0x42, 0x02, 0xDA, 0x66, 0x46, 0xF6, 0x78, 0x0E, 0x70
    .byte 0x01, 0x39, 0x01, 0x33, 0x93, 0x42, 0xF5, 0xDB, 0x00, 0x9B, 0xA3, 0x42, 0xE2, 0xDB, 0x24, 0xE0
    .byte 0x61, 0x79, 0xA0, 0x79, 0x00, 0x02, 0x09, 0x18, 0x4C, 0x1C, 0x00, 0x23, 0xA3, 0x42, 0x1C, 0xDA
    .byte 0x58, 0x1C, 0x00, 0x90, 0x46, 0x46, 0xF1, 0x1A, 0xA9, 0x42, 0x13, 0xDA, 0xE2, 0x1A, 0x00, 0x23
    .byte 0x93, 0x42, 0x0F, 0xDA, 0x08, 0x1C, 0x68, 0x43, 0x82, 0x46, 0x49, 0x46, 0x79, 0x18, 0x51, 0x44
    .byte 0xF8, 0x18, 0xA8, 0x42, 0x02, 0xDA, 0x66, 0x46, 0xF6, 0x78, 0x0E, 0x70, 0x01, 0x31, 0x01, 0x33
    .byte 0x93, 0x42, 0xF5, 0xDB, 0x00, 0x9B, 0xA3, 0x42, 0xE2, 0xDB
_08032416:
    add sp, #0x008
    pop {r3, r4, r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .byte 0x00, 0x00
    thumb_func_start sub_8032428
sub_8032428:
    push {r4, r5, r6, r7, lr}
    add sp, #-0x00C
    adds r1, r0, #0x0
    adds r1, #0xBC
    ldr r3, [r1, #0x2C]
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    ldr r7, _080324A0 @ =0x02025400
    ldr r1, _080324A4 @ =0x00000574
    adds r0, r0, r1
    ldr r1, [r0, #0x00]
    add r5, sp, #0x004
    adds r0, r1, #0x0
    adds r0, #0xCC
    ldr r0, [r0, #0x00]
    adds r1, r1, r0
    ldrb r2, [r1, #0x01]
    adds r2, r1, r2
    ldrb r0, [r1, #0x02]
    lsls r0, r0, #0x08
    adds r6, r2, r0
    strb r3, [r5, #0x01]
    strb r3, [r5, #0x02]
    ldrb r0, [r1, #0x00]
    strb r0, [r5, #0x00]
    ldr r1, _080324A8 @ =0x03002E20
    ldrb r0, [r5, #0x00]
    strh r0, [r1, #0x38]
    ldr r0, _080324AC @ =0x7F7F7F7F
    str r0, [sp, #0x000]
    mov r0, sp
    adds r1, r7, #0x0
    ldr r2, _080324B0 @ =0x01001000
    bl CpuFastSet
    movs r4, #0x00
    ldrb r0, [r5, #0x00]
    cmp r4, r0
    bge _08032498
_08032476:
    movs r0, #0x1F
    ands r0, r4
    cmp r0, #0x1F
    bne _08032482
    bl main_frameProc
_08032482:
    adds r0, r5, #0x0
    adds r1, r6, #0x0
    adds r2, r7, #0x0
    adds r3, r4, #0x0
    bl sub_8032220
    adds r6, #0x0C
    adds r4, #0x01
    ldrb r1, [r5, #0x00]
    cmp r4, r1
    blt _08032476
_08032498:
    add sp, #0x00C
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
_080324A0: .4byte 0x02025400
_080324A4: .4byte 0x00000574
_080324A8: .4byte 0x03002E20
_080324AC: .4byte 0x7F7F7F7F
_080324B0: .4byte 0x01001000
    thumb_func_start sub_80324B4
sub_80324B4:
    push {r4, r5, r6, r7, lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5, r6, r7}
    add sp, #-0x030
    str r1, [sp, #0x00C]
    lsls r0, r0, #0x18
    ldr r1, _08032730 @ =0x080E7FEC
    lsrs r0, r0, #0x16
    adds r0, r0, r1
    ldr r0, [r0, #0x00]
    ldr r0, [r0, #0x00]
    lsls r0, r0, #0x02
    ldr r1, _08032734 @ =courseData_bin
    adds r0, r0, r1
    ldr r6, [r0, #0x00]
    adds r1, r1, r6
    mov r9, r1
    ldr r5, [sp, #0x00C]
    str r5, [sp, #0x010]
    movs r0, #0x80
    lsls r0, r0, #0x01
    mov r10, r0
    mov r0, r9
    adds r1, r5, #0x0
    movs r2, #0x40
    bl CpuFastSet
    add r5, r10
    ldr r1, _08032738 @ =0x082580C4
    adds r1, r1, r6
    mov r8, r1
    ldr r1, [r1, #0x00]
    ldr r2, _0803273C @ =0x082580D4
    adds r0, r6, r2
    ldr r0, [r0, #0x00]
    mov r2, r9
    adds r3, r2, r0
    subs r4, r1, r0
    add r10, r4
    adds r2, r4, #0x0
    cmp r4, #0x00
    bge _0803250E
    adds r2, r4, #0x3
_0803250E:
    asrs r2, r2, #0x02
    ldr r0, _08032740 @ =0x001FFFFF
    ands r2, r0
    adds r0, r3, #0x0
    adds r1, r5, #0x0
    bl CpuFastSet
    adds r5, r5, r4
    ldr r1, _08032744 @ =0x08258080
    adds r7, r6, r1
    ldr r1, [r7, #0x00]
    mov r2, r8
    ldr r0, [r2, #0x00]
    mov r2, r9
    adds r3, r2, r0
    subs r4, r1, r0
    add r10, r4
    adds r2, r4, #0x0
    cmp r4, #0x00
    bge _08032538
    adds r2, r4, #0x3
_08032538:
    asrs r2, r2, #0x02
    ldr r0, _08032740 @ =0x001FFFFF
    ands r2, r0
    adds r0, r3, #0x0
    adds r1, r5, #0x0
    bl CpuFastSet
    adds r5, r5, r4
    ldr r1, _08032748 @ =0x08258084
    adds r1, r1, r6
    mov r8, r1
    ldr r1, [r1, #0x00]
    ldr r0, [r7, #0x00]
    mov r2, r9
    adds r3, r2, r0
    subs r4, r1, r0
    add r10, r4
    adds r2, r4, #0x0
    cmp r4, #0x00
    bge _08032562
    adds r2, r4, #0x3
_08032562:
    asrs r2, r2, #0x02
    ldr r0, _08032740 @ =0x001FFFFF
    ands r2, r0
    adds r0, r3, #0x0
    adds r1, r5, #0x0
    bl CpuFastSet
    adds r5, r5, r4
    ldr r1, _0803274C @ =0x08258088
    adds r1, r6, r1
    str r1, [sp, #0x014]
    ldr r1, [r1, #0x00]
    mov r2, r8
    ldr r0, [r2, #0x00]
    mov r2, r9
    adds r3, r2, r0
    subs r4, r1, r0
    add r10, r4
    adds r2, r4, #0x0
    cmp r4, #0x00
    bge _0803258E
    adds r2, r4, #0x3
_0803258E:
    asrs r2, r2, #0x02
    ldr r0, _08032740 @ =0x001FFFFF
    ands r2, r0
    adds r0, r3, #0x0
    adds r1, r5, #0x0
    bl CpuFastSet
    adds r5, r5, r4
    ldr r1, _08032750 @ =0x082580CC
    adds r7, r6, r1
    ldr r1, [r7, #0x00]
    ldr r2, [sp, #0x014]
    ldr r0, [r2, #0x00]
    mov r2, r9
    adds r3, r2, r0
    subs r4, r1, r0
    add r10, r4
    adds r2, r4, #0x0
    cmp r4, #0x00
    bge _080325B8
    adds r2, r4, #0x3
_080325B8:
    asrs r2, r2, #0x02
    ldr r0, _08032740 @ =0x001FFFFF
    ands r2, r0
    adds r0, r3, #0x0
    adds r1, r5, #0x0
    bl CpuFastSet
    adds r5, r5, r4
    ldr r1, [sp, #0x00C]
    adds r1, #0x8C
    mov r8, r1
    ldr r0, [r7, #0x00]
    str r0, [r1, #0x00]
    ldr r2, _08032754 @ =0x08258094
    adds r2, r6, r2
    str r2, [sp, #0x018]
    ldr r1, _08032758 @ =0x0825808C
    adds r0, r6, r1
    ldr r1, [r2, #0x00]
    ldr r0, [r0, #0x00]
    subs r4, r1, r0
    add r10, r4
    movs r1, #0x00
    cmp r0, #0x00
    beq _080325EE
    mov r2, r9
    adds r1, r2, r0
_080325EE:
    adds r2, r4, #0x0
    cmp r4, #0x00
    bge _080325F6
    adds r2, r4, #0x3
_080325F6:
    asrs r2, r2, #0x02
    ldr r0, _08032740 @ =0x001FFFFF
    ands r2, r0
    adds r0, r1, #0x0
    adds r1, r5, #0x0
    bl CpuFastSet
    adds r5, r5, r4
    ldr r7, [sp, #0x00C]
    adds r7, #0x94
    mov r1, r8
    ldr r0, [r1, #0x00]
    adds r0, r0, r4
    str r0, [r7, #0x00]
    ldr r2, _0803275C @ =0x08258098
    adds r6, r6, r2
    ldr r0, [r6, #0x00]
    ldr r2, [sp, #0x018]
    ldr r1, [r2, #0x00]
    subs r4, r0, r1
    add r10, r4
    movs r0, #0x00
    cmp r1, #0x00
    beq _0803262A
    mov r2, r9
    adds r0, r2, r1
_0803262A:
    adds r2, r4, #0x0
    cmp r4, #0x00
    bge _08032632
    adds r2, r4, #0x3
_08032632:
    asrs r2, r2, #0x02
    ldr r1, _08032740 @ =0x001FFFFF
    ands r2, r1
    adds r1, r5, #0x0
    bl CpuFastSet
    adds r5, r5, r4
    ldr r1, [sp, #0x00C]
    adds r1, #0x98
    ldr r0, [r7, #0x00]
    adds r0, r0, r4
    str r0, [r1, #0x00]
    movs r4, #0x80
    add r10, r4
    ldr r0, [r6, #0x00]
    movs r3, #0x00
    adds r6, r1, #0x0
    cmp r0, #0x00
    beq _0803265C
    mov r2, r9
    adds r3, r2, r0
_0803265C:
    movs r2, #0x20
    adds r0, r3, #0x0
    adds r1, r5, #0x0
    bl CpuFastSet
    adds r5, r5, r4
    ldr r0, [sp, #0x010]
    adds r0, #0xCC
    movs r1, #0x00
    str r1, [r0, #0x00]
    ldr r0, [sp, #0x010]
    adds r0, #0xD8
    str r1, [r0, #0x00]
    ldr r0, [sp, #0x010]
    adds r0, #0xF0
    str r0, [sp, #0x01C]
    ldr r0, [r6, #0x00]
    adds r0, r0, r4
    ldr r1, [sp, #0x01C]
    str r0, [r1, #0x00]
    movs r3, #0x40
    add r7, sp, #0x004
    mov r4, r9
    adds r4, #0xCC
    ldr r2, [r4, #0x00]
    add r2, r9
    ldrb r1, [r2, #0x01]
    adds r1, r2, r1
    ldrb r0, [r2, #0x02]
    lsls r0, r0, #0x08
    adds r1, r1, r0
    mov r8, r1
    strb r3, [r7, #0x01]
    strb r3, [r7, #0x02]
    ldrb r0, [r2, #0x00]
    strb r0, [r7, #0x00]
    ldr r1, _08032760 @ =0x03002E20
    ldrb r0, [r7, #0x00]
    strh r0, [r1, #0x38]
    ldr r0, _08032764 @ =0x7F7F7F7F
    str r0, [sp, #0x000]
    mov r0, sp
    ldr r1, _08032768 @ =0x02037900
    ldr r2, _0803276C @ =0x01000400
    bl CpuFastSet
    movs r6, #0x00
    ldr r2, [sp, #0x01C]
    str r2, [sp, #0x024]
    str r4, [sp, #0x020]
    ldr r4, [sp, #0x010]
    adds r4, #0xC2
    ldr r0, [sp, #0x010]
    adds r0, #0xF4
    str r0, [sp, #0x028]
    mov r1, r9
    adds r1, #0x8C
    str r1, [sp, #0x02C]
    ldrb r2, [r7, #0x00]
    cmp r6, r2
    bge _080326EE
_080326D6:
    adds r0, r7, #0x0
    mov r1, r8
    ldr r2, _08032768 @ =0x02037900
    adds r3, r6, #0x0
    bl sub_8032220
    movs r0, #0x0C
    add r8, r0
    adds r6, #0x01
    ldrb r1, [r7, #0x00]
    cmp r6, r1
    blt _080326D6
_080326EE:
    ldr r0, _08032760 @ =0x03002E20
    ldrh r0, [r0, #0x38]
    strh r0, [r4, #0x00]
    movs r4, #0x80
    lsls r4, r4, #0x05
    add r10, r4
    ldr r0, _08032768 @ =0x02037900
    asrs r2, r4, #0x02
    adds r1, r5, #0x0
    bl CpuFastSet
    adds r5, r5, r4
    ldr r2, [sp, #0x024]
    ldr r0, [r2, #0x00]
    adds r0, r0, r4
    ldr r1, [sp, #0x028]
    str r0, [r1, #0x00]
    ldr r2, [sp, #0x020]
    ldr r0, [r2, #0x00]
    add r0, r9
    ldrb r1, [r0, #0x03]
    adds r1, r0, r1
    ldrb r0, [r0, #0x04]
    lsls r0, r0, #0x08
    adds r1, r1, r0
    ldr r2, [sp, #0x02C]
    ldr r0, [r2, #0x00]
    cmp r0, #0x00
    beq _08032770
    add r0, r9
    subs r4, r0, r1
    b _08032772
    .byte 0x00, 0x00
_08032730: .4byte 0x080E7FEC
_08032734: .4byte courseData_bin
_08032738: .4byte 0x082580C4
_0803273C: .4byte 0x082580D4
_08032740: .4byte 0x001FFFFF
_08032744: .4byte 0x08258080
_08032748: .4byte 0x08258084
_0803274C: .4byte 0x08258088
_08032750: .4byte 0x082580CC
_08032754: .4byte 0x08258094
_08032758: .4byte 0x0825808C
_0803275C: .4byte 0x08258098
_08032760: .4byte 0x03002E20
_08032764: .4byte 0x7F7F7F7F
_08032768: .4byte 0x02037900
_0803276C: .4byte 0x01000400
_08032770:
    negs r4, r1
_08032772:
    add r10, r4
    lsrs r2, r4, #0x1F
    adds r2, r4, r2
    lsls r2, r2, #0x0A
    lsrs r2, r2, #0x0B
    adds r0, r1, #0x0
    adds r1, r5, #0x0
    bl CpuSet
    mov r0, r10
    add sp, #0x030
    pop {r3, r4, r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .byte 0x00, 0x00
    thumb_func_start sub_8032798
sub_8032798:
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r6, r0, #0x0
    adds r4, r1, #0x0
    adds r5, r2, #0x0
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    mov r12, r3
    adds r0, r4, #0x0
    cmp r4, #0x00
    bge _080327B2
    adds r0, r4, #0x7
_080327B2:
    asrs r7, r0, #0x03
    adds r2, r5, #0x0
    cmp r5, #0x00
    bge _080327BC
    adds r2, r5, #0x7
_080327BC:
    asrs r2, r2, #0x03
    lsls r1, r2, #0x01
    adds r6, #0xBC
    ldr r0, [r6, #0x2C]
    muls r0, r1
    ldr r1, _08032838 @ =0x02010400
    adds r0, r0, r1
    adds r0, r0, r7
    mov r8, r0
    movs r3, #0x7F
    adds r0, r7, #0x0
    ands r0, r3
    ldr r1, [r6, #0x14]
    adds r1, r1, r0
    ands r2, r3
    lsls r2, r2, #0x07
    adds r2, r1, r2
    adds r0, r6, #0x0
    adds r3, r4, #0x0
    cmp r4, #0x00
    bge _080327E8
    adds r3, #0x0F
_080327E8:
    asrs r1, r3, #0x04
    ldr r3, [r0, #0x40]
    adds r0, r3, #0x0
    subs r0, #0x20
    cmp r1, r0
    blt _0803281A
    adds r0, r3, #0x0
    adds r0, #0x20
    cmp r1, r0
    bgt _0803281A
    adds r0, r5, #0x0
    cmp r5, #0x00
    bge _08032804
    adds r0, #0x0F
_08032804:
    asrs r4, r0, #0x04
    ldr r3, [r6, #0x44]
    adds r0, r3, #0x0
    subs r0, #0x20
    cmp r4, r0
    blt _0803281A
    adds r0, r3, #0x0
    adds r0, #0x20
    movs r3, #0x00
    cmp r4, r0
    ble _0803281C
_0803281A:
    movs r3, #0x01
_0803281C:
    cmp r3, #0x00
    bne _0803284A
    movs r3, #0x02
    negs r3, r3
    ands r3, r2
    movs r0, #0x01
    ands r2, r0
    cmp r2, #0x00
    beq _0803283C
    ldrb r0, [r3, #0x00]
    mov r2, r12
    lsls r1, r2, #0x08
    b _08032846
    .byte 0x00, 0x00
_08032838: .4byte 0x02010400
_0803283C:
    ldrh r1, [r3, #0x00]
    movs r0, #0xFF
    lsls r0, r0, #0x08
    ands r0, r1
    mov r1, r12
_08032846:
    orrs r0, r1
    strh r0, [r3, #0x00]
_0803284A:
    mov r0, r12
    mov r2, r8
    strb r0, [r2, #0x00]
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .byte 0x00, 0x00
    thumb_func_start sub_803285C
sub_803285C:
    push {r4, r5, r6, r7, lr}
    mov r7, r9
    mov r6, r8
    push {r6, r7}
    adds r6, r0, #0x0
    mov r8, r1
    mov r9, r2
    lsls r5, r3, #0x18
    lsrs r5, r5, #0x18
    movs r3, #0x00
    bl sub_80328D4
    adds r4, r0, #0x0
    lsls r4, r4, #0x18
    lsrs r4, r4, #0x18
    adds r0, r6, #0x0
    adds r1, r4, #0x0
    adds r2, r5, #0x0
    bl sub_8032AD0
    lsls r0, r0, #0x18
    lsrs r7, r0, #0x18
    adds r0, r6, #0x0
    adds r1, r4, #0x0
    adds r2, r5, #0x0
    bl sub_8032B10
    lsls r0, r0, #0x18
    lsrs r4, r0, #0x18
    mov r0, r8
    cmp r0, #0x00
    bge _0803289E
    adds r0, #0x07
_0803289E:
    asrs r0, r0, #0x03
    subs r0, r7, r0
    lsrs r1, r0, #0x1F
    adds r0, r0, r1
    asrs r3, r0, #0x01
    mov r2, r9
    cmp r2, #0x00
    bge _080328B0
    adds r2, #0x07
_080328B0:
    asrs r1, r2, #0x03
    subs r1, r4, r1
    lsrs r0, r1, #0x1F
    adds r1, r1, r0
    lsls r0, r3, #0x10
    asrs r0, r0, #0x10
    lsls r1, r1, #0x0F
    asrs r1, r1, #0x10
    bl sub_802EAEC
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    pop {r3, r4}
    mov r8, r3
    mov r9, r4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    thumb_func_start sub_80328D4
sub_80328D4:
    cmp r1, #0x00
    bge _080328DA
    adds r1, #0x0F
_080328DA:
    asrs r3, r1, #0x04
    cmp r2, #0x00
    bge _080328E2
    adds r2, #0x0F
_080328E2:
    asrs r1, r2, #0x04
    ldr r2, _080328FC @ =0x00000574
    adds r0, r0, r2
    ldr r0, [r0, #0x00]
    ldrb r0, [r0, #0x04]
    muls r0, r1
    lsls r0, r0, #0x06
    adds r0, r3, r0
    ldr r1, _08032900 @ =0x02025400
    adds r0, r0, r1
    ldrb r0, [r0, #0x00]
    bx lr
    .byte 0x00, 0x00
_080328FC: .4byte 0x00000574
_08032900: .4byte 0x02025400
    thumb_func_start sub_8032904
sub_8032904:
    push {r4, lr}
    adds r3, r0, #0x0
    ldr r2, [r1, #0x00]
    cmp r2, #0x00
    bge _08032912
    ldr r0, _0803294C @ =0x0000FFFF
    adds r2, r2, r0
_08032912:
    asrs r2, r2, #0x10
    ldr r1, [r1, #0x04]
    cmp r1, #0x00
    bge _0803291E
    ldr r4, _0803294C @ =0x0000FFFF
    adds r1, r1, r4
_0803291E:
    asrs r1, r1, #0x10
    adds r0, r2, #0x0
    cmp r0, #0x00
    bge _08032928
    adds r0, #0x0F
_08032928:
    asrs r2, r0, #0x04
    cmp r1, #0x00
    bge _08032930
    adds r1, #0x0F
_08032930:
    asrs r1, r1, #0x04
    ldr r4, _08032950 @ =0x00000574
    adds r0, r3, r4
    ldr r0, [r0, #0x00]
    ldrb r0, [r0, #0x04]
    muls r0, r1
    lsls r0, r0, #0x06
    adds r0, r2, r0
    ldr r1, _08032954 @ =0x02025400
    adds r0, r0, r1
    ldrb r0, [r0, #0x00]
    pop {r4}
    pop {r1}
    bx r1
_0803294C: .4byte 0x0000FFFF
_08032950: .4byte 0x00000574
_08032954: .4byte 0x02025400
    .byte 0x09, 0x06, 0x09, 0x0E, 0x04, 0x4A, 0x80, 0x18, 0x00, 0x68, 0x02, 0x1C, 0x88, 0x32, 0x12, 0x68
    .byte 0x80, 0x18, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00, 0x74, 0x05, 0x00, 0x00
    thumb_func_start sub_8032974
sub_8032974:
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x18
    ldr r2, _0803298C @ =0x00000574
    adds r0, r0, r2
    ldr r0, [r0, #0x00]
    adds r2, r0, #0x0
    adds r2, #0x88
    ldr r2, [r2, #0x00]
    adds r0, r0, r2
    adds r0, r0, r1
    ldrb r0, [r0, #0x00]
    bx lr
_0803298C: .4byte 0x00000574
    thumb_func_start sub_8032990
sub_8032990:
    push {r4, lr}
    adds r4, r0, #0x0
    bl sub_8032CA0
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldr r1, _080329B4 @ =0x00000574
    adds r4, r4, r1
    ldr r1, [r4, #0x00]
    adds r2, r1, #0x0
    adds r2, #0x88
    ldr r2, [r2, #0x00]
    adds r1, r1, r2
    adds r1, r1, r0
    ldrb r0, [r1, #0x00]
    pop {r4}
    pop {r1}
    bx r1
_080329B4: .4byte 0x00000574
    thumb_func_start sub_80329B8
sub_80329B8:
    ldr r0, [r0, #0x20]
    bx lr
    thumb_func_start sub_80329BC
sub_80329BC:
    ldr r2, _080329DC @ =0x00000574
    adds r1, r0, r2
    ldr r2, [r1, #0x00]
    adds r0, #0xBC
    ldr r1, [r2, #0x24]
    adds r1, r2, r1
    str r1, [r0, #0x04]
    ldr r1, [r2, #0x08]
    adds r1, r2, r1
    str r1, [r0, #0x0C]
    adds r1, r2, #0x0
    adds r1, #0xD4
    ldr r1, [r1, #0x00]
    adds r2, r2, r1
    str r2, [r0, #0x1C]
    bx lr
_080329DC: .4byte 0x00000574
    thumb_func_start sub_80329E0
sub_80329E0:
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    adds r5, r0, #0x0
    adds r6, r1, #0x0
    mov r8, r2
    lsls r4, r3, #0x10
    lsrs r4, r4, #0x10
    adds r0, #0xBC
    movs r2, #0x80
    lsls r2, r2, #0x18
    adds r1, r2, #0x0
    bl sub_8033A5C
    lsls r4, r4, #0x10
    asrs r4, r4, #0x10
    adds r0, r5, #0x0
    adds r1, r6, #0x0
    mov r2, r8
    adds r3, r4, #0x0
    bl sub_8032A18
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .byte 0x00, 0x00
    thumb_func_start sub_8032A18
sub_8032A18:
    push {r4, r5, lr}
    adds r4, r0, #0x0
    lsls r3, r3, #0x10
    lsrs r3, r3, #0x10
    cmp r1, #0x00
    bge _08032A28
    ldr r0, _08032A50 @ =0x0007FFFF
    adds r1, r1, r0
_08032A28:
    asrs r1, r1, #0x13
    movs r0, #0x02
    negs r0, r0
    ands r1, r0
    cmp r2, #0x00
    bge _08032A38
    ldr r5, _08032A50 @ =0x0007FFFF
    adds r2, r2, r5
_08032A38:
    asrs r2, r2, #0x13
    ands r2, r0
    adds r0, r4, #0x0
    adds r0, #0xBC
    lsls r3, r3, #0x10
    asrs r3, r3, #0x10
    bl sub_8033838
    pop {r4, r5}
    pop {r0}
    bx r0
    .byte 0x00, 0x00
_08032A50: .4byte 0x0007FFFF
    thumb_func_start loadtrack_loadCoinLocations
loadtrack_loadCoinLocations: @ 08032A54
    push {r4, r5, lr}
    adds r5, r0, #0x0
    ldr r1, _08032A74 @ =0x00000574
    adds r0, r5, r1
    ldr r1, [r0, #0x00]
    adds r0, r1, #0x0
    adds r0, #0x90
    ldr r0, [r0, #0x00]
    movs r2, #0x00
    cmp r0, #0x00
    beq _08032A6C
    adds r2, r1, r0
_08032A6C:
    adds r4, r2, #0x0
    cmp r4, #0x00
    beq _08032A94
    b _08032A8C
_08032A74: .4byte 0x00000574
_08032A78:
    ldrb r1, [r4, #0x00]
    adds r4, #0x01
    ldrb r2, [r4, #0x00]
    adds r4, #0x02
    lsls r1, r1, #0x03
    lsls r2, r2, #0x03
    adds r0, r5, #0x0
    movs r3, #0xC0
    bl sub_8032798
_08032A8C:
    ldrb r0, [r4, #0x00]
    adds r4, #0x01
    cmp r0, #0x00
    bne _08032A78
_08032A94:
    pop {r4, r5}
    pop {r0}
    bx r0
    .byte 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
    thumb_func_start sub_8032AA0
sub_8032AA0:
    push {r4, lr}
    mov r12, r0
    ldr r4, [sp, #0x008]
    lsls r1, r1, #0x04
    adds r0, #0x24
    adds r0, r0, r1
    ldr r0, [r0, #0x00]
    str r0, [r2, #0x00]
    mov r0, r12
    adds r0, #0x28
    adds r0, r0, r1
    ldr r0, [r0, #0x00]
    str r0, [r3, #0x00]
    mov r0, r12
    adds r0, #0x2C
    adds r0, r0, r1
    ldr r0, [r0, #0x00]
    str r0, [r4, #0x00]
    pop {r4}
    pop {r0}
    bx r0
    .byte 0x00, 0x00, 0x00, 0x20, 0x70, 0x47
    thumb_func_start sub_8032AD0
sub_8032AD0:
    push {r4, lr}
    lsls r2, r2, #0x18
    lsrs r2, r2, #0x18
    movs r4, #0x7F
    ands r4, r1
    ldr r3, _08032B0C @ =0x00000574
    adds r1, r0, r3
    ldr r1, [r1, #0x00]
    adds r3, r1, #0x0
    adds r3, #0xCC
    ldr r3, [r3, #0x00]
    adds r1, r1, r3
    ldrb r3, [r1, #0x03]
    adds r3, r1, r3
    ldrb r1, [r1, #0x04]
    lsls r1, r1, #0x08
    adds r3, r3, r1
    ldrh r0, [r0, #0x14]
    muls r0, r2
    adds r0, r0, r4
    lsls r0, r0, #0x03
    adds r3, r3, r0
    ldrb r0, [r3, #0x00]
    ldrb r1, [r3, #0x01]
    lsls r1, r1, #0x08
    adds r0, r0, r1
    pop {r4}
    pop {r1}
    bx r1
    .byte 0x00, 0x00
_08032B0C: .4byte 0x00000574
    thumb_func_start sub_8032B10
sub_8032B10:
    push {r4, lr}
    lsls r2, r2, #0x18
    lsrs r2, r2, #0x18
    movs r4, #0x7F
    ands r4, r1
    ldr r3, _08032B4C @ =0x00000574
    adds r1, r0, r3
    ldr r1, [r1, #0x00]
    adds r3, r1, #0x0
    adds r3, #0xCC
    ldr r3, [r3, #0x00]
    adds r1, r1, r3
    ldrb r3, [r1, #0x03]
    adds r3, r1, r3
    ldrb r1, [r1, #0x04]
    lsls r1, r1, #0x08
    adds r3, r3, r1
    ldrh r0, [r0, #0x14]
    muls r0, r2
    adds r0, r0, r4
    lsls r0, r0, #0x03
    adds r3, r3, r0
    ldrb r0, [r3, #0x02]
    ldrb r1, [r3, #0x03]
    lsls r1, r1, #0x08
    adds r0, r0, r1
    pop {r4}
    pop {r1}
    bx r1
    .byte 0x00, 0x00
_08032B4C: .4byte 0x00000574
    thumb_func_start sub_8032B50
sub_8032B50:
    push {r4, lr}
    movs r4, #0x7F
    ands r4, r1
    ldr r2, _08032B88 @ =0x00000574
    adds r1, r0, r2
    ldr r1, [r1, #0x00]
    adds r2, r1, #0x0
    adds r2, #0xCC
    ldr r2, [r2, #0x00]
    adds r1, r1, r2
    ldrb r2, [r1, #0x03]
    adds r2, r1, r2
    ldrb r1, [r1, #0x04]
    lsls r1, r1, #0x08
    adds r2, r2, r1
    ldr r1, _08032B8C @ =0x03002E20
    ldrh r3, [r0, #0x14]
    ldr r0, _08032B90 @ =0x00000C88
    adds r1, r1, r0
    ldrb r0, [r1, #0x00]
    muls r0, r3
    adds r0, r0, r4
    lsls r0, r0, #0x03
    adds r2, r2, r0
    ldrb r0, [r2, #0x04]
    pop {r4}
    pop {r1}
    bx r1
_08032B88: .4byte 0x00000574
_08032B8C: .4byte 0x03002E20
_08032B90: .4byte 0x00000C88
    thumb_func_start sub_8032B94
sub_8032B94:
    push {r4, lr}
    lsls r0, r0, #0x18
    ldr r2, _08032BC0 @ =0x080E7FEC
    lsrs r0, r0, #0x16
    adds r0, r0, r2
    ldr r0, [r0, #0x00]
    ldr r0, [r0, #0x04]
    lsls r0, r0, #0x02
    ldr r2, _08032BC4 @ =skyData_bin
    adds r0, r0, r2
    ldr r0, [r0, #0x00]
    adds r0, r0, r2
    movs r4, #0xA0
    lsls r4, r4, #0x06
    asrs r2, r4, #0x02
    bl CpuFastSet
    adds r0, r4, #0x0
    pop {r4}
    pop {r1}
    bx r1
    .byte 0x00, 0x00
_08032BC0: .4byte 0x080E7FEC
_08032BC4: .4byte skyData_bin
    thumb_func_start sub_8032BC8
sub_8032BC8:
    lsrs r0, r0, #0x05
    movs r1, #0x01
    ands r0, r1
    bx lr
    .byte 0x10, 0xB5, 0x04, 0x1C, 0x00, 0x29, 0x00, 0xDA, 0x07, 0x31, 0xCB, 0x10, 0x00, 0x2A, 0x00, 0xDA
    .byte 0x07, 0x32, 0xD0, 0x10, 0x40, 0x00, 0x21, 0x1C, 0xBC, 0x31, 0xC9, 0x6A, 0x48, 0x43, 0x03, 0x49
    .byte 0x40, 0x18, 0x18, 0x18, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x00, 0x04, 0x01, 0x02
    .byte 0x10, 0xB5, 0x03, 0x1C, 0xBC, 0x33, 0x00, 0x29, 0x00, 0xDA, 0x07, 0x31, 0xC8, 0x10, 0x7F, 0x24
    .byte 0x20, 0x40, 0x59, 0x69, 0x09, 0x18, 0x00, 0x2A, 0x00, 0xDA, 0x07, 0x32, 0xD0, 0x10, 0x20, 0x40
    .byte 0xC0, 0x01, 0x08, 0x18, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
    thumb_func_start sub_8032C2C
sub_8032C2C:
    movs r1, #0xAF
    lsls r1, r1, #0x03
    adds r0, r0, r1
    ldr r0, [r0, #0x00]
    ldrb r0, [r0, #0x10]
    bx lr
    thumb_func_start sub_8032C38
sub_8032C38:
    movs r1, #0xAF
    lsls r1, r1, #0x03
    adds r0, r0, r1
    ldr r0, [r0, #0x00]
    ldrb r0, [r0, #0x18]
    bx lr
    thumb_func_start sub_8032C44
sub_8032C44:
    movs r1, #0xAF
    lsls r1, r1, #0x03
    adds r0, r0, r1
    ldr r0, [r0, #0x00]
    ldr r0, [r0, #0x1C]
    bx lr
    thumb_func_start sub_8032C50
sub_8032C50:
    cmp r1, #0x00
    blt _08032C6C
    adds r3, r0, #0x0
    adds r3, #0xBC
    ldr r0, [r3, #0x2C]
    lsls r0, r0, #0x14
    cmp r1, r0
    bge _08032C6C
    cmp r2, #0x00
    blt _08032C6C
    ldr r0, [r3, #0x30]
    lsls r0, r0, #0x14
    cmp r2, r0
    blt _08032C70
_08032C6C:
    movs r0, #0x01
    b _08032C72
_08032C70:
    movs r0, #0x00
_08032C72:
    bx lr
    thumb_func_start sub_8032C74
sub_8032C74:
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x18
    ldrh r0, [r0, #0x14]
    subs r0, #0x01
    cmp r1, r0
    beq _08032C88
    adds r0, r1, #0x1
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    b _08032C8A
_08032C88:
    movs r0, #0x00
_08032C8A:
    bx lr
    thumb_func_start sub_8032C8C
sub_8032C8C:
    adds r2, r0, #0x0
    lsls r1, r1, #0x18
    lsrs r0, r1, #0x18
    cmp r0, #0x00
    bne _08032C98
    ldrb r0, [r2, #0x14]
_08032C98:
    subs r0, #0x01
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    bx lr
    thumb_func_start sub_8032CA0
sub_8032CA0:
    push {r4, lr}
    adds r4, r0, #0x0
    cmp r1, #0x00
    bge _08032CAA
    adds r1, #0x07
_08032CAA:
    asrs r3, r1, #0x03
    cmp r2, #0x00
    bge _08032CB2
    adds r2, #0x07
_08032CB2:
    asrs r0, r2, #0x03
    lsls r0, r0, #0x01
    adds r1, r4, #0x0
    adds r1, #0xBC
    ldr r1, [r1, #0x2C]
    muls r0, r1
    ldr r1, _08032CCC @ =0x02010400
    adds r0, r0, r1
    adds r0, r3, r0
    ldrb r0, [r0, #0x00]
    pop {r4}
    pop {r1}
    bx r1
_08032CCC: .4byte 0x02010400
    thumb_func_start sub_8032CD0
sub_8032CD0:
    ldr r1, _08032CE4 @ =0x00000574
    adds r0, r0, r1
    ldr r0, [r0, #0x00]
    adds r0, #0xCA
    ldrb r1, [r0, #0x00]
    negs r0, r1
    orrs r0, r1
    lsrs r0, r0, #0x1F
    bx lr
    .byte 0x00, 0x00
_08032CE4: .4byte 0x00000574
    .byte 0x09, 0x06, 0x12, 0x06, 0x12, 0x0E, 0x06, 0x4B, 0xC0, 0x18, 0x00, 0x68, 0x03, 0x1C, 0xE0, 0x33
    .byte 0x1B, 0x68, 0x49, 0x0D, 0xC0, 0x18, 0x09, 0x18, 0x89, 0x18, 0x08, 0x78, 0x70, 0x47, 0x00, 0x00
    .byte 0x74, 0x05, 0x00, 0x00
    thumb_func_start sub_8032D0C
sub_8032D0C:
    adds r2, r0, #0x0
    ldr r0, _08032D34 @ =0x03002E20
    ldr r1, _08032D38 @ =0x00000801
    adds r0, r0, r1
    ldrb r0, [r0, #0x00]
    lsrs r0, r0, #0x05
    movs r1, #0x01
    ands r0, r1
    cmp r0, #0x00
    bne _08032D40
    ldr r1, _08032D3C @ =0x00000574
    adds r0, r2, r1
    ldr r0, [r0, #0x00]
    adds r0, #0xCA
    ldrb r0, [r0, #0x00]
    cmp r0, #0x00
    bne _08032D40
    movs r0, #0x02
    b _08032D42
    .byte 0x00, 0x00
_08032D34: .4byte 0x03002E20
_08032D38: .4byte 0x00000801
_08032D3C: .4byte 0x00000574
_08032D40:
    movs r0, #0x01
_08032D42:
    bx lr
    thumb_func_start sub_8032D44
sub_8032D44:
    ldr r1, _08032D58 @ =0x00000574
    adds r0, r0, r1
    ldr r0, [r0, #0x00]
    adds r1, r0, #0x0
    adds r1, #0x84
    ldr r1, [r1, #0x00]
    adds r0, r0, r1
    ldrh r0, [r0, #0x00]
    bx lr
    .byte 0x00, 0x00
_08032D58: .4byte 0x00000574
    .byte 0xAF, 0x21, 0xC9, 0x00, 0x40, 0x18, 0x00, 0x68, 0x40, 0x68, 0x80, 0x00, 0x04, 0x49, 0x40, 0x18
    .byte 0x00, 0x68, 0x40, 0x18, 0x80, 0x78, 0x00, 0x09, 0x01, 0x21, 0x08, 0x40, 0x70, 0x47, 0x00, 0x00
    .byte 0x00, 0x40, 0x23, 0x08
    thumb_func_start sub_8032D80
sub_8032D80:
    lsls r0, r0, #0x18
    lsls r1, r1, #0x18
    ldr r2, _08032D98 @ =0x080E7FEC
    lsrs r0, r0, #0x16
    adds r0, r0, r2
    ldr r0, [r0, #0x00]
    ldr r0, [r0, #0x20]
    lsrs r1, r1, #0x16
    adds r1, r1, r0
    ldrh r0, [r1, #0x02]
    bx lr
    .byte 0x00, 0x00
_08032D98: .4byte 0x080E7FEC
    thumb_func_start sub_8032D9C
sub_8032D9C:
    ldr r1, _08032DB8 @ =0x00000574
    adds r0, r0, r1
    ldr r1, [r0, #0x00]
    adds r0, r1, #0x0
    adds r0, #0x98
    ldr r0, [r0, #0x00]
    movs r2, #0x00
    cmp r0, #0x00
    beq _08032DB0
    adds r2, r1, r0
_08032DB0:
    movs r0, #0x00
    cmp r2, #0x00
    beq _08032DCE
    b _08032DBE
_08032DB8: .4byte 0x00000574
_08032DBC:
    adds r2, #0x04
_08032DBE:
    ldrb r1, [r2, #0x00]
    cmp r1, #0x00
    beq _08032DCE
    cmp r1, #0x8B
    bne _08032DBC
    ldrb r0, [r2, #0x02]
    lsls r0, r0, #0x03
    adds r0, #0x08
_08032DCE:
    bx lr
    .byte 0x00, 0xB5, 0x02, 0x1C, 0xD0, 0x00, 0x02, 0x1C, 0x08, 0x3A, 0xC8, 0x00, 0x01, 0x1C, 0x08, 0x39
    .byte 0x00, 0x2A, 0x09, 0xD1, 0x00, 0x29, 0x01, 0xD1, 0x80, 0x20, 0x1F, 0xE0, 0xC8, 0x43, 0xC1, 0x17
    .byte 0x80, 0x20, 0x00, 0x02, 0x01, 0x40, 0x11, 0xE0, 0x00, 0x29, 0x07, 0xD1, 0x80, 0x20, 0xC0, 0x01
    .byte 0x00, 0x2A, 0x01, 0xDA, 0xC0, 0x20, 0x00, 0x02, 0x01, 0x1C, 0x07, 0xE0, 0x10, 0x04, 0x00, 0x14
    .byte 0x09, 0x04, 0x09, 0x14, 0xFB, 0xF7, 0x10, 0xFF, 0x00, 0x04, 0x01, 0x0C, 0x08, 0x04, 0x00, 0x14
    .byte 0x00, 0x28, 0x00, 0xDA, 0xFF, 0x30, 0x00, 0x12, 0x00, 0x06, 0x00, 0x0E, 0x02, 0xBC, 0x08, 0x47
    .byte 0x41, 0x78, 0x41, 0x18, 0x80, 0x78, 0x00, 0x02, 0x09, 0x18, 0x08, 0x1C, 0x70, 0x47, 0x00, 0x00
    .byte 0x30, 0xB5, 0x05, 0x1C, 0xBC, 0x35, 0x08, 0x1C, 0x00, 0x29, 0x00, 0xDA, 0x0F, 0x30, 0x04, 0x11
    .byte 0x2B, 0x6C, 0x18, 0x1C, 0x20, 0x38, 0x84, 0x42, 0x13, 0xDB, 0x18, 0x1C, 0x20, 0x30, 0x84, 0x42
    .byte 0x0F, 0xDC, 0x10, 0x1C, 0x00, 0x2A, 0x00, 0xDA, 0x0F, 0x30, 0x03, 0x11, 0x69, 0x6C, 0x08, 0x1C
    .byte 0x20, 0x38, 0x83, 0x42, 0x05, 0xDB, 0x08, 0x1C, 0x20, 0x30, 0x83, 0x42, 0x01, 0xDC, 0x00, 0x20
    .byte 0x00, 0xE0, 0x01, 0x20, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
    thumb_func_start sub_8032E8C
sub_8032E8C:
    push {r4, r5, r6, lr}
    adds r5, r0, #0x0
    adds r4, r1, #0x0
    movs r0, #0x00
    str r0, [r5, #0x18]
    adds r6, r5, #0x0
    adds r6, #0x18
    ldrb r1, [r4, #0x04]
    ldrb r2, [r4, #0x05]
    adds r0, r6, #0x0
    bl sub_8033998
    ldr r1, [r5, #0x38]
    ldrb r0, [r4, #0x03]
    movs r2, #0x02
    ands r2, r0
    lsls r2, r2, #0x18
    lsrs r2, r2, #0x18
    adds r0, r6, #0x0
    bl sub_8033A08
    ldr r0, _08032ECC @ =0x0600C000
    str r0, [r5, #0x2C]
    adds r0, r4, #0x0
    adds r0, #0xD4
    ldr r0, [r0, #0x00]
    adds r4, r4, r0
    str r4, [r5, #0x34]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .byte 0x00, 0x00
_08032ECC: .4byte 0x0600C000
    .byte 0x01, 0x69, 0x81, 0x61, 0x70, 0x47, 0x00, 0x00
    thumb_func_start sub_8032ED8
sub_8032ED8:
    push {r4, r5, r6, r7, lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5, r6, r7}
    mov r8, r0
    ldr r4, [r0, #0x38]
    lsls r0, r4, #0x01
    mov r1, r8
    ldr r2, [r1, #0x24]
    subs r1, r2, #0x1
    ands r0, r1
    adds r1, r0, #0x0
    muls r1, r2
    mov r2, r8
    ldr r0, [r2, #0x14]
    adds r0, r0, r1
    mov r9, r0
    cmp r4, #0x00
    blt _08032F1A
    ldr r0, [r2, #0x30]
    cmp r4, r0
    bge _08032F1A
    ldr r0, [r2, #0x28]
    ldr r2, [r2, #0x34]
    adds r6, r0, #0x0
    cmn r2, r6
    blt _08032F1A
    mov r5, r8
    ldr r3, [r5, #0x2C]
    mov r12, r3
    cmp r2, r3
    blt _08032F3C
_08032F1A:
    mov r1, r9
    mov r0, r8
    ldr r6, [r0, #0x28]
    cmp r6, #0x00
    bgt _08032F26
    b _0803312A
_08032F26:
    movs r2, #0x00
    lsls r3, r6, #0x01
    adds r5, r6, #0x0
_08032F2C:
    strh r2, [r1, #0x00]
    adds r0, r3, r1
    strh r2, [r0, #0x00]
    adds r1, #0x02
    subs r5, #0x01
    cmp r5, #0x00
    bne _08032F2C
    b _0803312A
_08032F3C:
    adds r0, r4, #0x0
    muls r0, r3
    lsls r0, r0, #0x02
    lsls r1, r2, #0x01
    adds r0, r0, r1
    mov r10, r0
    cmp r2, #0x00
    bge _08032FB0
    subs r3, r6, #0x1
    ands r3, r2
    subs r2, r6, r3
    lsls r0, r3, #0x01
    mov r5, r9
    adds r1, r0, r5
    adds r7, r4, #0x0
    cmp r2, #0x00
    ble _08032F70
    movs r4, #0x00
    lsls r5, r6, #0x01
_08032F62:
    strh r4, [r1, #0x00]
    adds r0, r5, r1
    strh r4, [r0, #0x00]
    adds r1, #0x02
    subs r2, #0x01
    cmp r2, #0x00
    bne _08032F62
_08032F70:
    mov r1, r12
    lsls r0, r1, #0x02
    adds r1, r7, #0x0
    muls r1, r0
    mov r2, r9
    movs r0, #0x01
    negs r0, r0
    cmp r1, r0
    bne _08032F9E
    cmp r3, #0x00
    bgt _08032F88
    b _0803312A
_08032F88:
    movs r4, #0x00
    lsls r1, r6, #0x01
    adds r5, r3, #0x0
_08032F8E:
    strh r4, [r2, #0x00]
    adds r0, r1, r2
    strh r4, [r0, #0x00]
    adds r2, #0x02
    subs r5, #0x01
    cmp r5, #0x00
    bne _08032F8E
    b _0803312A
_08032F9E:
    mov r2, r8
    ldr r4, [r2, #0x20]
    adds r4, r4, r1
    ldr r5, _08032FAC @ =0x001FFFFF
    ands r5, r3
    b _08033048
    .byte 0x00, 0x00
_08032FAC: .4byte 0x001FFFFF
_08032FB0:
    subs r0, r3, r6
    cmp r2, r0
    ble _08033010
    subs r3, r6, #0x1
    ands r3, r2
    mov r1, r9
    cmp r3, #0x00
    ble _08032FD4
    movs r4, #0x00
    lsls r5, r6, #0x01
    adds r2, r3, #0x0
_08032FC6:
    strh r4, [r1, #0x00]
    adds r0, r5, r1
    strh r4, [r0, #0x00]
    adds r1, #0x02
    subs r2, #0x01
    cmp r2, #0x00
    bne _08032FC6
_08032FD4:
    subs r7, r6, r3
    lsls r0, r3, #0x01
    add r9, r0
    mov r2, r9
    movs r0, #0x01
    negs r0, r0
    cmp r10, r0
    bne _08033000
    cmp r7, #0x00
    bgt _08032FEA
    b _0803312A
_08032FEA:
    movs r3, #0x00
    lsls r1, r6, #0x01
    adds r5, r7, #0x0
_08032FF0:
    strh r3, [r2, #0x00]
    adds r0, r1, r2
    strh r3, [r0, #0x00]
    adds r2, #0x02
    subs r5, #0x01
    cmp r5, #0x00
    bne _08032FF0
    b _0803312A
_08033000:
    mov r2, r8
    ldr r4, [r2, #0x20]
    add r4, r10
    ldr r5, _0803300C @ =0x001FFFFF
    ands r5, r7
    b _08033048
_0803300C: .4byte 0x001FFFFF
_08033010:
    subs r5, r6, #0x1
    ands r5, r2
    cmp r5, #0x00
    bne _08033070
    mov r2, r9
    movs r0, #0x01
    negs r0, r0
    cmp r10, r0
    bne _0803303E
    cmp r5, r6
    blt _08033028
    b _0803312A
_08033028:
    movs r3, #0x00
    lsls r4, r6, #0x01
    adds r1, r6, #0x0
_0803302E:
    strh r3, [r2, #0x00]
    adds r0, r4, r2
    strh r3, [r0, #0x00]
    adds r2, #0x02
    subs r1, #0x01
    cmp r1, #0x00
    bne _0803302E
    b _0803312A
_0803303E:
    mov r2, r8
    ldr r4, [r2, #0x20]
    add r4, r10
    ldr r5, _0803306C @ =0x001FFFFF
    ands r5, r6
_08033048:
    adds r0, r4, #0x0
    mov r1, r9
    adds r2, r5, #0x0
    bl CpuSet
    mov r1, r8
    ldr r0, [r1, #0x2C]
    lsls r0, r0, #0x01
    adds r4, r4, r0
    ldr r1, [r1, #0x28]
    lsls r1, r1, #0x01
    add r1, r9
    adds r0, r4, #0x0
    adds r2, r5, #0x0
    bl CpuSet
    b _0803312A
    .byte 0x00, 0x00
_0803306C: .4byte 0x001FFFFF
_08033070:
    adds r7, r5, #0x0
    subs r0, r6, r7
    lsls r0, r0, #0x01
    mov r2, r10
    adds r1, r0, r2
    mov r2, r9
    movs r0, #0x01
    negs r0, r0
    cmp r1, r0
    bne _080330A0
    lsls r5, r7, #0x01
    cmp r7, #0x00
    ble _080330CC
    movs r4, #0x00
    lsls r1, r6, #0x01
    adds r3, r7, #0x0
_08033090:
    strh r4, [r2, #0x00]
    adds r0, r1, r2
    strh r4, [r0, #0x00]
    adds r2, #0x02
    subs r3, #0x01
    cmp r3, #0x00
    bne _08033090
    b _080330CC
_080330A0:
    mov r5, r8
    ldr r4, [r5, #0x20]
    adds r4, r4, r1
    ldr r5, _080330FC @ =0x001FFFFF
    ands r5, r7
    adds r0, r4, #0x0
    mov r1, r9
    adds r2, r5, #0x0
    bl CpuSet
    mov r1, r8
    ldr r0, [r1, #0x2C]
    lsls r0, r0, #0x01
    adds r4, r4, r0
    ldr r1, [r1, #0x28]
    lsls r1, r1, #0x01
    add r1, r9
    adds r0, r4, #0x0
    adds r2, r5, #0x0
    bl CpuSet
    lsls r5, r7, #0x01
_080330CC:
    mov r2, r8
    ldr r1, [r2, #0x28]
    subs r7, r1, r7
    add r9, r5
    mov r2, r9
    movs r0, #0x01
    negs r0, r0
    adds r6, r1, #0x0
    cmp r10, r0
    bne _08033100
    cmp r7, #0x00
    ble _0803312A
    movs r3, #0x00
    lsls r5, r6, #0x01
    adds r1, r7, #0x0
_080330EA:
    strh r3, [r2, #0x00]
    adds r0, r5, r2
    strh r3, [r0, #0x00]
    adds r2, #0x02
    subs r1, #0x01
    cmp r1, #0x00
    bne _080330EA
    b _0803312A
    .byte 0x00, 0x00
_080330FC: .4byte 0x001FFFFF
_08033100:
    mov r5, r8
    ldr r4, [r5, #0x20]
    add r4, r10
    ldr r5, _08033138 @ =0x001FFFFF
    ands r5, r7
    adds r0, r4, #0x0
    mov r1, r9
    adds r2, r5, #0x0
    bl CpuSet
    mov r1, r8
    ldr r0, [r1, #0x2C]
    lsls r0, r0, #0x01
    adds r4, r4, r0
    ldr r1, [r1, #0x28]
    lsls r1, r1, #0x01
    add r1, r9
    adds r0, r4, #0x0
    adds r2, r5, #0x0
    bl CpuSet
_0803312A:
    pop {r3, r4, r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
_08033138: .4byte 0x001FFFFF
    thumb_func_start sub_803313C
sub_803313C:
    push {r4, r5, r6, r7, lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5, r6, r7}
    add sp, #-0x01C
    mov r12, r0
    ldr r1, [r0, #0x34]
    lsls r0, r1, #0x01
    str r0, [sp, #0x000]
    mov r2, r12
    ldr r0, [r2, #0x24]
    subs r0, #0x01
    ldr r3, [sp, #0x000]
    ands r3, r0
    str r3, [sp, #0x000]
    cmp r1, #0x00
    blt _08033178
    ldr r4, [r2, #0x2C]
    str r4, [sp, #0x014]
    cmp r1, r4
    bge _08033178
    ldr r0, [r2, #0x28]
    adds r6, r0, #0x0
    ldr r4, [r2, #0x38]
    cmn r4, r6
    blt _08033178
    ldr r5, [r2, #0x30]
    cmp r4, r5
    blt _080331A8
_08033178:
    movs r1, #0x96
    lsls r1, r1, #0x02
    add r1, r12
    mov r7, r12
    ldr r6, [r7, #0x28]
    ldr r0, [sp, #0x000]
    asrs r0, r0, #0x1F
    str r0, [sp, #0x008]
    ldr r2, [r7, #0x14]
    str r2, [sp, #0x00C]
    cmp r6, #0x00
    bgt _08033192
    b _0803345A
_08033192:
    movs r3, #0x00
    lsls r4, r6, #0x01
    adds r2, r6, #0x0
_08033198:
    strh r3, [r1, #0x00]
    adds r0, r4, r1
    strh r3, [r0, #0x00]
    adds r1, #0x02
    subs r2, #0x01
    cmp r2, #0x00
    bne _08033198
    b _0803345A
_080331A8:
    ldr r3, [sp, #0x014]
    lsls r3, r3, #0x02
    str r3, [sp, #0x004]
    adds r3, r4, #0x0
    ldr r7, [sp, #0x004]
    adds r2, r3, #0x0
    muls r2, r7
    mov r0, r12
    ldr r1, [r0, #0x34]
    lsls r0, r1, #0x01
    adds r2, r2, r0
    str r2, [sp, #0x018]
    mov r8, r1
    cmp r3, #0x00
    bge _08033258
    subs r4, r6, #0x1
    ands r4, r3
    subs r3, r6, r4
    lsls r0, r4, #0x01
    movs r1, #0x96
    lsls r1, r1, #0x02
    adds r0, r0, r1
    mov r7, r12
    adds r2, r7, r0
    adds r7, r1, #0x0
    add r7, r12
    ldr r0, [sp, #0x000]
    asrs r0, r0, #0x1F
    str r0, [sp, #0x008]
    mov r1, r12
    ldr r1, [r1, #0x14]
    str r1, [sp, #0x00C]
    cmp r3, #0x00
    ble _080331FE
    movs r5, #0x00
    lsls r1, r6, #0x01
_080331F0:
    strh r5, [r2, #0x00]
    adds r0, r1, r2
    strh r5, [r0, #0x00]
    adds r2, #0x02
    subs r3, #0x01
    cmp r3, #0x00
    bne _080331F0
_080331FE:
    mov r2, r8
    lsls r1, r2, #0x01
    adds r2, r7, #0x0
    movs r0, #0x01
    negs r0, r0
    cmp r1, r0
    bne _08033228
    cmp r4, #0x00
    bgt _08033212
    b _0803345A
_08033212:
    movs r3, #0x00
    lsls r5, r6, #0x01
    adds r1, r4, #0x0
_08033218:
    strh r3, [r2, #0x00]
    adds r0, r5, r2
    strh r3, [r0, #0x00]
    adds r2, #0x02
    subs r1, #0x01
    cmp r1, #0x00
    bne _08033218
    b _0803345A
_08033228:
    mov r3, r12
    ldr r0, [r3, #0x20]
    adds r3, r0, r1
    cmp r4, #0x00
    bgt _08033234
    b _0803345A
_08033234:
    lsls r7, r6, #0x01
    mov r8, r7
    ldr r0, [sp, #0x014]
    lsls r7, r0, #0x01
    lsls r5, r0, #0x02
_0803323E:
    ldrh r0, [r3, #0x00]
    strh r0, [r2, #0x00]
    mov r0, r8
    adds r1, r0, r2
    adds r0, r7, r3
    ldrh r0, [r0, #0x00]
    strh r0, [r1, #0x00]
    adds r2, #0x02
    adds r3, r3, r5
    subs r4, #0x01
    cmp r4, #0x00
    bne _0803323E
    b _0803345A
_08033258:
    subs r0, r5, r6
    cmp r3, r0
    ble _080332F2
    subs r4, r6, #0x1
    ands r4, r3
    movs r1, #0x96
    lsls r1, r1, #0x02
    add r1, r12
    ldr r2, [sp, #0x000]
    asrs r2, r2, #0x1F
    str r2, [sp, #0x008]
    mov r3, r12
    ldr r3, [r3, #0x14]
    str r3, [sp, #0x00C]
    cmp r4, #0x00
    ble _0803328C
    movs r5, #0x00
    lsls r2, r6, #0x01
    adds r3, r4, #0x0
_0803327E:
    strh r5, [r1, #0x00]
    adds r0, r2, r1
    strh r5, [r0, #0x00]
    adds r1, #0x02
    subs r3, #0x01
    cmp r3, #0x00
    bne _0803327E
_0803328C:
    subs r1, r6, r4
    lsls r0, r4, #0x01
    movs r4, #0x96
    lsls r4, r4, #0x02
    adds r0, r0, r4
    mov r7, r12
    adds r3, r7, r0
    movs r0, #0x01
    negs r0, r0
    ldr r2, [sp, #0x018]
    cmp r2, r0
    bne _080332BE
    cmp r1, #0x00
    bgt _080332AA
    b _0803345A
_080332AA:
    movs r2, #0x00
    lsls r4, r6, #0x01
_080332AE:
    strh r2, [r3, #0x00]
    adds r0, r4, r3
    strh r2, [r0, #0x00]
    adds r3, #0x02
    subs r1, #0x01
    cmp r1, #0x00
    bne _080332AE
    b _0803345A
_080332BE:
    mov r4, r12
    ldr r0, [r4, #0x20]
    ldr r7, [sp, #0x018]
    adds r2, r0, r7
    cmp r1, #0x00
    bgt _080332CC
    b _0803345A
_080332CC:
    lsls r0, r6, #0x01
    mov r8, r0
    ldr r4, [sp, #0x014]
    lsls r7, r4, #0x01
    lsls r5, r4, #0x02
    adds r4, r1, #0x0
_080332D8:
    ldrh r0, [r2, #0x00]
    strh r0, [r3, #0x00]
    mov r0, r8
    adds r1, r0, r3
    adds r0, r7, r2
    ldrh r0, [r0, #0x00]
    strh r0, [r1, #0x00]
    adds r3, #0x02
    adds r2, r2, r5
    subs r4, #0x01
    cmp r4, #0x00
    bne _080332D8
    b _0803345A
_080332F2:
    subs r1, r6, #0x1
    ands r1, r4
    cmp r1, #0x00
    bne _08033372
    movs r3, #0x96
    lsls r3, r3, #0x02
    add r3, r12
    movs r0, #0x01
    negs r0, r0
    ldr r2, [sp, #0x018]
    cmp r2, r0
    bne _08033332
    ldr r4, [sp, #0x000]
    asrs r4, r4, #0x1F
    str r4, [sp, #0x008]
    mov r7, r12
    ldr r7, [r7, #0x14]
    str r7, [sp, #0x00C]
    cmp r1, r6
    blt _0803331C
    b _0803345A
_0803331C:
    movs r2, #0x00
    lsls r4, r6, #0x01
    adds r1, r6, #0x0
_08033322:
    strh r2, [r3, #0x00]
    adds r0, r4, r3
    strh r2, [r0, #0x00]
    adds r3, #0x02
    subs r1, #0x01
    cmp r1, #0x00
    bne _08033322
    b _0803345A
_08033332:
    mov r2, r12
    ldr r0, [r2, #0x20]
    ldr r4, [sp, #0x018]
    adds r2, r0, r4
    ldr r7, [sp, #0x000]
    asrs r7, r7, #0x1F
    str r7, [sp, #0x008]
    mov r0, r12
    ldr r0, [r0, #0x14]
    str r0, [sp, #0x00C]
    cmp r1, r6
    blt _0803334C
    b _0803345A
_0803334C:
    lsls r1, r6, #0x01
    mov r8, r1
    ldr r4, [sp, #0x014]
    lsls r7, r4, #0x01
    ldr r5, [sp, #0x004]
    adds r4, r6, #0x0
_08033358:
    ldrh r0, [r2, #0x00]
    strh r0, [r3, #0x00]
    mov r0, r8
    adds r1, r0, r3
    adds r0, r7, r2
    ldrh r0, [r0, #0x00]
    strh r0, [r1, #0x00]
    adds r3, #0x02
    adds r2, r2, r5
    subs r4, #0x01
    cmp r4, #0x00
    bne _08033358
    b _0803345A
_08033372:
    adds r5, r1, #0x0
    subs r0, r6, r5
    ldr r1, [sp, #0x004]
    muls r0, r1
    ldr r2, [sp, #0x018]
    adds r1, r2, r0
    movs r3, #0x96
    lsls r3, r3, #0x02
    add r3, r12
    movs r0, #0x01
    negs r0, r0
    cmp r1, r0
    bne _080333B6
    lsls r4, r5, #0x01
    str r4, [sp, #0x010]
    ldr r7, [sp, #0x000]
    asrs r7, r7, #0x1F
    str r7, [sp, #0x008]
    mov r0, r12
    ldr r0, [r0, #0x14]
    str r0, [sp, #0x00C]
    cmp r5, #0x00
    ble _080333FA
    movs r4, #0x00
    lsls r2, r6, #0x01
    adds r1, r5, #0x0
_080333A6:
    strh r4, [r3, #0x00]
    adds r0, r2, r3
    strh r4, [r0, #0x00]
    adds r3, #0x02
    subs r1, #0x01
    cmp r1, #0x00
    bne _080333A6
    b _080333FA
_080333B6:
    mov r2, r12
    ldr r0, [r2, #0x20]
    adds r2, r0, r1
    lsls r4, r5, #0x01
    str r4, [sp, #0x010]
    ldr r7, [sp, #0x000]
    asrs r7, r7, #0x1F
    str r7, [sp, #0x008]
    mov r0, r12
    ldr r0, [r0, #0x14]
    str r0, [sp, #0x00C]
    cmp r5, #0x00
    ble _080333FA
    lsls r1, r6, #0x01
    mov r10, r1
    ldr r4, [sp, #0x014]
    lsls r4, r4, #0x01
    mov r9, r4
    ldr r7, [sp, #0x004]
    mov r8, r7
    adds r4, r5, #0x0
_080333E0:
    ldrh r0, [r2, #0x00]
    strh r0, [r3, #0x00]
    mov r0, r10
    adds r1, r0, r3
    mov r7, r9
    adds r0, r7, r2
    ldrh r0, [r0, #0x00]
    strh r0, [r1, #0x00]
    adds r3, #0x02
    add r2, r8
    subs r4, #0x01
    cmp r4, #0x00
    bne _080333E0
_080333FA:
    subs r1, r6, r5
    ldr r2, [sp, #0x010]
    movs r3, #0x96
    lsls r3, r3, #0x02
    adds r0, r2, r3
    mov r4, r12
    adds r3, r4, r0
    movs r0, #0x01
    negs r0, r0
    ldr r7, [sp, #0x018]
    cmp r7, r0
    bne _0803342A
    cmp r1, #0x00
    ble _0803345A
    movs r2, #0x00
    lsls r4, r6, #0x01
_0803341A:
    strh r2, [r3, #0x00]
    adds r0, r4, r3
    strh r2, [r0, #0x00]
    adds r3, #0x02
    subs r1, #0x01
    cmp r1, #0x00
    bne _0803341A
    b _0803345A
_0803342A:
    mov r2, r12
    ldr r0, [r2, #0x20]
    ldr r4, [sp, #0x018]
    adds r2, r0, r4
    cmp r1, #0x00
    ble _0803345A
    lsls r7, r6, #0x01
    mov r8, r7
    ldr r0, [sp, #0x014]
    lsls r7, r0, #0x01
    lsls r5, r0, #0x02
    adds r4, r1, #0x0
_08033442:
    ldrh r0, [r2, #0x00]
    strh r0, [r3, #0x00]
    mov r0, r8
    adds r1, r0, r3
    adds r0, r7, r2
    ldrh r0, [r0, #0x00]
    strh r0, [r1, #0x00]
    adds r3, #0x02
    adds r2, r2, r5
    subs r4, #0x01
    cmp r4, #0x00
    bne _08033442
_0803345A:
    movs r4, #0x96
    lsls r4, r4, #0x02
    add r4, r12
    ldr r1, [sp, #0x00C]
    ldr r3, [sp, #0x000]
    adds r2, r1, r3
    cmp r6, #0x00
    ble _08033490
    mov r7, r12
    ldr r1, [r7, #0x24]
    lsrs r0, r1, #0x1F
    adds r0, r1, r0
    asrs r0, r0, #0x01
    lsls r5, r0, #0x01
    lsls r7, r1, #0x01
    adds r3, r6, #0x0
_0803347A:
    ldrh r0, [r4, #0x00]
    strh r0, [r2, #0x00]
    adds r1, r5, r2
    adds r0, r5, r4
    ldrh r0, [r0, #0x00]
    strh r0, [r1, #0x00]
    adds r4, #0x02
    adds r2, r2, r7
    subs r3, #0x01
    cmp r3, #0x00
    bne _0803347A
_08033490:
    add sp, #0x01C
    pop {r3, r4, r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    thumb_func_start sub_80334A0
sub_80334A0:
    push {r4, r5, r6, r7, lr}
    mov r7, r10
    mov r6, r9
    mov r5, r8
    push {r5, r6, r7}
    add sp, #-0x004
    adds r7, r0, #0x0
    ldr r4, [r7, #0x38]
    lsls r0, r4, #0x01
    ldr r2, [r7, #0x24]
    subs r1, r2, #0x1
    ands r0, r1
    adds r1, r0, #0x0
    muls r1, r2
    ldr r0, _08033504 @ =0x02000000
    adds r1, r1, r0
    mov r8, r1
    cmp r4, #0x00
    blt _080334DA
    ldr r0, [r7, #0x30]
    cmp r4, r0
    bge _080334DA
    ldr r6, [r7, #0x28]
    ldr r2, [r7, #0x34]
    cmn r2, r6
    blt _080334DA
    ldr r3, [r7, #0x2C]
    cmp r2, r3
    blt _0803350C
_080334DA:
    ldr r4, [r7, #0x28]
    mov r0, sp
    movs r5, #0x00
    strh r5, [r0, #0x00]
    ldr r0, _08033508 @ =0x001FFFFF
    ands r4, r0
    movs r0, #0x80
    lsls r0, r0, #0x11
    orrs r4, r0
    mov r0, sp
    mov r1, r8
    adds r2, r4, #0x0
    bl CpuSet
    mov r0, sp
    adds r0, #0x02
    strh r5, [r0, #0x00]
    ldr r1, [r7, #0x28]
    lsls r1, r1, #0x01
    add r1, r8
    b _0803374A
_08033504: .4byte 0x02000000
_08033508: .4byte 0x001FFFFF
_0803350C:
    adds r0, r4, #0x0
    muls r0, r3
    lsls r0, r0, #0x02
    lsls r1, r2, #0x01
    adds r0, r0, r1
    mov r9, r0
    cmp r2, #0x00
    bge _080335AC
    subs r0, r6, #0x1
    ands r0, r2
    mov r9, r0
    subs r5, r6, r0
    lsls r4, r0, #0x01
    add r4, r8
    mov r0, sp
    movs r1, #0x00
    mov r10, r1
    strh r1, [r0, #0x00]
    ldr r2, _08033598 @ =0x001FFFFF
    ands r5, r2
    movs r0, #0x80
    lsls r0, r0, #0x11
    orrs r5, r0
    mov r0, sp
    adds r1, r4, #0x0
    adds r2, r5, #0x0
    bl CpuSet
    mov r6, sp
    adds r6, #0x02
    mov r1, r10
    strh r1, [r6, #0x00]
    ldr r0, [r7, #0x28]
    lsls r0, r0, #0x01
    adds r4, r4, r0
    adds r0, r6, #0x0
    adds r1, r4, #0x0
    adds r2, r5, #0x0
    bl CpuSet
    ldr r0, [r7, #0x2C]
    lsls r0, r0, #0x02
    ldr r1, [r7, #0x38]
    muls r1, r0
    movs r0, #0x01
    negs r0, r0
    cmp r1, r0
    bne _0803359C
    mov r0, sp
    mov r2, r10
    strh r2, [r0, #0x00]
    ldr r4, _08033598 @ =0x001FFFFF
    mov r0, r9
    ands r4, r0
    movs r1, #0x80
    lsls r1, r1, #0x11
    orrs r4, r1
    mov r0, sp
    mov r1, r8
    adds r2, r4, #0x0
    bl CpuSet
    mov r2, r10
    strh r2, [r6, #0x00]
    ldr r1, [r7, #0x28]
    lsls r1, r1, #0x01
    add r1, r8
    adds r0, r6, #0x0
    b _0803374A
    .byte 0x00, 0x00
_08033598: .4byte 0x001FFFFF
_0803359C:
    ldr r4, [r7, #0x20]
    adds r4, r4, r1
    ldr r5, _080335A8 @ =0x001FFFFF
    mov r0, r9
    ands r5, r0
    b _0803367C
_080335A8: .4byte 0x001FFFFF
_080335AC:
    subs r0, r3, r6
    cmp r2, r0
    ble _08033638
    subs r5, r6, #0x1
    ands r5, r2
    mov r0, sp
    movs r1, #0x00
    mov r10, r1
    strh r1, [r0, #0x00]
    adds r4, r5, #0x0
    ldr r2, _08033624 @ =0x001FFFFF
    ands r4, r2
    movs r0, #0x80
    lsls r0, r0, #0x11
    orrs r4, r0
    mov r0, sp
    mov r1, r8
    adds r2, r4, #0x0
    bl CpuSet
    mov r6, sp
    adds r6, #0x02
    mov r1, r10
    strh r1, [r6, #0x00]
    ldr r1, [r7, #0x28]
    lsls r1, r1, #0x01
    add r1, r8
    adds r0, r6, #0x0
    adds r2, r4, #0x0
    bl CpuSet
    ldr r0, [r7, #0x28]
    subs r1, r0, r5
    lsls r5, r5, #0x01
    add r8, r5
    movs r0, #0x01
    negs r0, r0
    cmp r9, r0
    bne _08033628
    mov r0, sp
    mov r2, r10
    strh r2, [r0, #0x00]
    ldr r4, _08033624 @ =0x001FFFFF
    ands r4, r1
    movs r0, #0x80
    lsls r0, r0, #0x11
    orrs r4, r0
    mov r0, sp
    mov r1, r8
    adds r2, r4, #0x0
    bl CpuSet
    mov r1, r10
    strh r1, [r6, #0x00]
    ldr r1, [r7, #0x28]
    lsls r1, r1, #0x01
    add r1, r8
    adds r0, r6, #0x0
    b _0803374A
    .byte 0x00, 0x00
_08033624: .4byte 0x001FFFFF
_08033628:
    ldr r4, [r7, #0x20]
    add r4, r9
    ldr r5, _08033634 @ =0x001FFFFF
    ands r5, r1
    b _0803367C
    .byte 0x00, 0x00
_08033634: .4byte 0x001FFFFF
_08033638:
    subs r5, r6, #0x1
    ands r5, r2
    cmp r5, #0x00
    bne _080336A0
    movs r0, #0x01
    negs r0, r0
    cmp r9, r0
    bne _08033674
    mov r0, sp
    strh r5, [r0, #0x00]
    ldr r4, _08033670 @ =0x001FFFFF
    ands r4, r6
    movs r0, #0x80
    lsls r0, r0, #0x11
    orrs r4, r0
    mov r0, sp
    mov r1, r8
    adds r2, r4, #0x0
    bl CpuSet
    mov r0, sp
    adds r0, #0x02
    strh r5, [r0, #0x00]
    ldr r1, [r7, #0x28]
    lsls r1, r1, #0x01
    add r1, r8
    b _0803374A
    .byte 0x00, 0x00
_08033670: .4byte 0x001FFFFF
_08033674:
    ldr r4, [r7, #0x20]
    add r4, r9
    ldr r5, _0803369C @ =0x001FFFFF
    ands r5, r6
_0803367C:
    adds r0, r4, #0x0
    mov r1, r8
    adds r2, r5, #0x0
    bl CpuSet
    ldr r0, [r7, #0x2C]
    lsls r0, r0, #0x01
    adds r4, r4, r0
    ldr r1, [r7, #0x28]
    lsls r1, r1, #0x01
    add r1, r8
    adds r0, r4, #0x0
    adds r2, r5, #0x0
    bl CpuSet
    b _0803377E
_0803369C: .4byte 0x001FFFFF
_080336A0:
    mov r10, r5
    subs r0, r6, r5
    lsls r0, r0, #0x01
    mov r2, r9
    adds r5, r0, r2
    movs r0, #0x01
    negs r0, r0
    cmp r5, r0
    bne _080336E8
    mov r0, sp
    movs r5, #0x00
    strh r5, [r0, #0x00]
    ldr r4, _080336E4 @ =0x001FFFFF
    mov r0, r10
    ands r4, r0
    movs r0, #0x80
    lsls r0, r0, #0x11
    orrs r4, r0
    mov r0, sp
    mov r1, r8
    adds r2, r4, #0x0
    bl CpuSet
    mov r0, sp
    adds r0, #0x02
    strh r5, [r0, #0x00]
    ldr r1, [r7, #0x28]
    lsls r1, r1, #0x01
    add r1, r8
    adds r2, r4, #0x0
    bl CpuSet
    b _08033710
    .byte 0x00, 0x00
_080336E4: .4byte 0x001FFFFF
_080336E8:
    ldr r4, [r7, #0x20]
    adds r4, r4, r5
    ldr r5, _08033754 @ =0x001FFFFF
    mov r1, r10
    ands r5, r1
    adds r0, r4, #0x0
    mov r1, r8
    adds r2, r5, #0x0
    bl CpuSet
    ldr r0, [r7, #0x2C]
    lsls r0, r0, #0x01
    adds r4, r4, r0
    ldr r1, [r7, #0x28]
    lsls r1, r1, #0x01
    add r1, r8
    adds r0, r4, #0x0
    adds r2, r5, #0x0
    bl CpuSet
_08033710:
    ldr r0, [r7, #0x28]
    mov r2, r10
    subs r1, r0, r2
    lsls r0, r2, #0x01
    mov r2, r8
    adds r6, r0, r2
    movs r0, #0x01
    negs r0, r0
    cmp r9, r0
    bne _08033758
    mov r0, sp
    movs r5, #0x00
    strh r5, [r0, #0x00]
    ldr r4, _08033754 @ =0x001FFFFF
    ands r4, r1
    movs r0, #0x80
    lsls r0, r0, #0x11
    orrs r4, r0
    mov r0, sp
    adds r1, r6, #0x0
    adds r2, r4, #0x0
    bl CpuSet
    mov r0, sp
    adds r0, #0x02
    strh r5, [r0, #0x00]
    ldr r1, [r7, #0x28]
    lsls r1, r1, #0x01
    adds r1, r6, r1
_0803374A:
    adds r2, r4, #0x0
    bl CpuSet
    b _0803377E
    .byte 0x00, 0x00
_08033754: .4byte 0x001FFFFF
_08033758:
    ldr r4, [r7, #0x20]
    add r4, r9
    ldr r5, _08033790 @ =0x001FFFFF
    ands r5, r1
    adds r0, r4, #0x0
    adds r1, r6, #0x0
    adds r2, r5, #0x0
    bl CpuSet
    ldr r0, [r7, #0x2C]
    lsls r0, r0, #0x01
    adds r4, r4, r0
    ldr r1, [r7, #0x28]
    lsls r1, r1, #0x01
    adds r1, r6, r1
    adds r0, r4, #0x0
    adds r2, r5, #0x0
    bl CpuSet
_0803377E:
    add sp, #0x004
    pop {r3, r4, r5}
    mov r8, r3
    mov r9, r4
    mov r10, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .byte 0x00, 0x00
_08033790: .4byte 0x001FFFFF
    thumb_func_start sub_8033794
sub_8033794:
    push {r4, r5, lr}
    adds r4, r0, #0x0
    ldr r2, [r4, #0x28]
    lsrs r1, r2, #0x1F
    adds r1, r2, r1
    asrs r1, r1, #0x01
    ldr r0, [r4, #0x40]
    subs r0, r0, r1
    str r0, [r4, #0x34]
    ldr r0, [r4, #0x44]
    subs r0, r0, r1
    str r0, [r4, #0x38]
    asrs r2, r2, #0x03
    cmp r2, #0x00
    ble _0803381A
    adds r5, r2, #0x0
_080337B4:
    adds r0, r4, #0x0
    bl sub_80334A0
    ldr r0, [r4, #0x38]
    adds r0, #0x01
    str r0, [r4, #0x38]
    adds r0, r4, #0x0
    bl sub_80334A0
    ldr r0, [r4, #0x38]
    adds r0, #0x01
    str r0, [r4, #0x38]
    adds r0, r4, #0x0
    bl sub_80334A0
    ldr r0, [r4, #0x38]
    adds r0, #0x01
    str r0, [r4, #0x38]
    adds r0, r4, #0x0
    bl sub_80334A0
    ldr r0, [r4, #0x38]
    adds r0, #0x01
    str r0, [r4, #0x38]
    adds r0, r4, #0x0
    bl sub_80334A0
    ldr r0, [r4, #0x38]
    adds r0, #0x01
    str r0, [r4, #0x38]
    adds r0, r4, #0x0
    bl sub_80334A0
    ldr r0, [r4, #0x38]
    adds r0, #0x01
    str r0, [r4, #0x38]
    adds r0, r4, #0x0
    bl sub_80334A0
    ldr r0, [r4, #0x38]
    adds r0, #0x01
    str r0, [r4, #0x38]
    adds r0, r4, #0x0
    bl sub_80334A0
    ldr r0, [r4, #0x38]
    adds r0, #0x01
    str r0, [r4, #0x38]
    subs r5, #0x01
    cmp r5, #0x00
    bne _080337B4
_0803381A:
    bl dmaq_getVBlankDmaQueue
    ldr r1, _08033830 @ =0x02000000
    ldr r2, [r4, #0x14]
    ldr r3, _08033834 @ =0x80002000
    bl dmaq_enqueue
    pop {r4, r5}
    pop {r0}
    bx r0
    .byte 0x00, 0x00
_08033830: .4byte 0x02000000
_08033834: .4byte 0x80002000
    thumb_func_start sub_8033838
sub_8033838:
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0x0
    mov r12, r1
    mov r8, r2
    ldr r0, [r4, #0x24]
    lsrs r1, r0, #0x1F
    adds r0, r0, r1
    asrs r0, r0, #0x01
    adds r2, r0, #0x0
    subs r2, #0x08
    lsls r3, r3, #0x10
    ldr r7, _080338E4 @ =0x080E645C
    movs r0, #0x80
    lsls r0, r0, #0x17
    adds r3, r3, r0
    asrs r3, r3, #0x10
    adds r0, r3, #0x0
    cmp r3, #0x00
    bge _08033864
    adds r0, #0x3F
_08033864:
    asrs r1, r0, #0x06
    movs r0, #0x80
    lsls r0, r0, #0x01
    subs r0, r0, r1
    ldr r6, _080338E8 @ =0x000003FF
    ands r0, r6
    lsls r0, r0, #0x02
    adds r0, r0, r7
    ldr r0, [r0, #0x00]
    muls r0, r2
    cmp r0, #0x00
    bge _08033880
    ldr r5, _080338EC @ =0x00007FFF
    adds r0, r0, r5
_08033880:
    asrs r5, r0, #0x0F
    adds r0, r1, #0x0
    ands r0, r6
    lsls r0, r0, #0x02
    adds r0, r0, r7
    ldr r0, [r0, #0x00]
    muls r0, r2
    cmp r0, #0x00
    bge _08033896
    ldr r1, _080338EC @ =0x00007FFF
    adds r0, r0, r1
_08033896:
    asrs r2, r0, #0x0F
    mov r1, r12
    subs r0, r1, r5
    lsrs r1, r0, #0x1F
    adds r0, r0, r1
    asrs r5, r0, #0x01
    mov r0, r8
    subs r2, r0, r2
    lsrs r0, r2, #0x1F
    adds r2, r2, r0
    asrs r3, r2, #0x01
    ldr r1, [r4, #0x40]
    str r1, [r4, #0x48]
    ldr r0, [r4, #0x44]
    str r0, [r4, #0x4C]
    str r5, [r4, #0x40]
    str r3, [r4, #0x44]
    subs r7, r5, r1
    subs r6, r3, r0
    ldr r0, [r4, #0x28]
    lsrs r1, r0, #0x1F
    adds r0, r0, r1
    asrs r2, r0, #0x01
    negs r0, r2
    cmp r6, r0
    blt _080338D6
    cmp r2, r6
    blt _080338D6
    cmp r7, r0
    blt _080338D6
    cmp r2, r7
    bge _080338F0
_080338D6:
    adds r0, r4, #0x0
    mov r1, r12
    mov r2, r8
    bl sub_8033794
    b _0803398E
    .byte 0x00, 0x00
_080338E4: .4byte 0x080E645C
_080338E8: .4byte 0x000003FF
_080338EC: .4byte 0x00007FFF
_080338F0:
    cmp r6, #0x00
    beq _08033938
    subs r0, r5, r2
    str r0, [r4, #0x34]
    cmp r6, #0x00
    bge _0803391A
    subs r0, r3, r2
    str r0, [r4, #0x38]
    movs r5, #0x00
    cmp r5, r6
    ble _08033938
_08033906:
    adds r0, r4, #0x0
    bl sub_8032ED8
    ldr r0, [r4, #0x38]
    adds r0, #0x01
    str r0, [r4, #0x38]
    subs r5, #0x01
    cmp r5, r6
    bgt _08033906
    b _08033938
_0803391A:
    adds r0, r3, r2
    subs r0, #0x01
    str r0, [r4, #0x38]
    cmp r6, #0x00
    ble _08033938
    adds r5, r6, #0x0
_08033926:
    adds r0, r4, #0x0
    bl sub_8032ED8
    ldr r0, [r4, #0x38]
    subs r0, #0x01
    str r0, [r4, #0x38]
    subs r5, #0x01
    cmp r5, #0x00
    bne _08033926
_08033938:
    cmp r7, #0x00
    beq _0803398E
    ldr r0, [r4, #0x28]
    lsrs r1, r0, #0x1F
    adds r0, r0, r1
    asrs r1, r0, #0x01
    ldr r0, [r4, #0x44]
    subs r0, r0, r1
    str r0, [r4, #0x38]
    cmp r7, #0x00
    bge _0803396E
    ldr r0, [r4, #0x40]
    subs r0, r0, r1
    str r0, [r4, #0x34]
    movs r5, #0x00
    cmp r5, r7
    ble _0803398E
_0803395A:
    adds r0, r4, #0x0
    bl sub_803313C
    ldr r0, [r4, #0x34]
    adds r0, #0x01
    str r0, [r4, #0x34]
    subs r5, #0x01
    cmp r5, r7
    bgt _0803395A
    b _0803398E
_0803396E:
    ldr r0, [r4, #0x40]
    adds r0, r0, r1
    subs r0, #0x01
    str r0, [r4, #0x34]
    cmp r7, #0x00
    ble _0803398E
    adds r5, r7, #0x0
_0803397C:
    adds r0, r4, #0x0
    bl sub_803313C
    ldr r0, [r4, #0x34]
    subs r0, #0x01
    str r0, [r4, #0x34]
    subs r5, #0x01
    cmp r5, #0x00
    bne _0803397C
_0803398E:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    thumb_func_start sub_8033998
sub_8033998:
    push {r4, r5, lr}
    adds r3, r0, #0x0
    adds r4, r1, #0x0
    adds r5, r2, #0x0
    movs r0, #0x00
    str r0, [r3, #0x00]
    ldr r0, _080339C4 @ =0x0400000C
    ldrh r0, [r0, #0x00]
    movs r2, #0xC0
    lsls r2, r2, #0x08
    adds r1, r2, #0x0
    ands r1, r0
    movs r0, #0x80
    lsls r0, r0, #0x07
    cmp r1, r0
    beq _080339DA
    cmp r1, r0
    bgt _080339C8
    cmp r1, #0x00
    beq _080339D6
    b _080339E6
    .byte 0x00, 0x00
_080339C4: .4byte 0x0400000C
_080339C8:
    movs r0, #0x80
    lsls r0, r0, #0x08
    cmp r1, r0
    beq _080339DE
    cmp r1, r2
    beq _080339E2
    b _080339E6
_080339D6:
    movs r0, #0x10
    b _080339E4
_080339DA:
    movs r0, #0x20
    b _080339E4
_080339DE:
    movs r0, #0x40
    b _080339E4
_080339E2:
    movs r0, #0x80
_080339E4:
    str r0, [r3, #0x24]
_080339E6:
    ldr r0, [r3, #0x24]
    lsrs r1, r0, #0x1F
    adds r0, r0, r1
    asrs r0, r0, #0x01
    str r0, [r3, #0x28]
    lsls r0, r4, #0x06
    str r0, [r3, #0x2C]
    lsls r0, r5, #0x06
    str r0, [r3, #0x30]
    ldr r0, _08033A04 @ =0x02010400
    str r0, [r3, #0x20]
    pop {r4, r5}
    pop {r0}
    bx r0
    .byte 0x00, 0x00
_08033A04: .4byte 0x02010400
    thumb_func_start sub_8033A08
sub_8033A08:
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    ldr r7, [r0, #0x1C]
    cmp r2, #0x00
    beq _08033A4A
    adds r6, r1, #0x0
    adds r5, r7, #0x0
    movs r0, #0x0F
    mov r8, r0
_08033A1C:
    ldrh r0, [r5, #0x00]
    cmp r0, #0x00
    beq _08033A34
    adds r4, r7, r0
    bl main_frameProc
    adds r0, r4, #0x0
    adds r1, r6, #0x0
    bl LZ77UnCompWram
    bl main_frameProc
_08033A34:
    movs r0, #0x80
    lsls r0, r0, #0x05
    adds r6, r6, r0
    adds r5, #0x02
    movs r0, #0x01
    negs r0, r0
    add r8, r0
    mov r0, r8
    cmp r0, #0x00
    bge _08033A1C
    b _08033A50
_08033A4A:
    adds r0, r7, #0x0
    bl LZ77UnCompWram
_08033A50:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .byte 0x00, 0x00
    thumb_func_start sub_8033A5C
sub_8033A5C:
    ldr r3, [r0, #0x40]
    str r3, [r0, #0x48]
    ldr r3, [r0, #0x44]
    str r3, [r0, #0x4C]
    str r1, [r0, #0x40]
    str r2, [r0, #0x44]
    bx lr
.byte 0x00, 0x00, 0xF0, 0xB5, 0x06, 0x1C, 0x0F, 0x1C, 0x01, 0x20, 0x40, 0x42, 0x82, 0x42, 0x0C, 0xD1
.byte 0x00, 0x2B, 0x1F, 0xDD, 0x00, 0x22, 0xB0, 0x6A, 0x44, 0x00, 0x0A, 0x80, 0x60, 0x18, 0x02, 0x80
.byte 0x02, 0x31, 0x01, 0x3B, 0x00, 0x2B, 0xF8, 0xD1, 0x14, 0xE0, 0x50, 0x10, 0x40, 0x00, 0x34, 0x6A
.byte 0x24, 0x18, 0x09, 0x4D, 0x1D, 0x40, 0x20, 0x1C, 0x39, 0x1C, 0x2A, 0x1C, 0x2D, 0xF0, 0x53, 0xFC
.byte 0xF0, 0x6A, 0x40, 0x00, 0x24, 0x18, 0xB1, 0x6A, 0x49, 0x00, 0x79, 0x18, 0x20, 0x1C, 0x2A, 0x1C
.byte 0x2D, 0xF0, 0x49, 0xFC, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0xFF, 0xFF, 0x1F, 0x00, 0xF0, 0xB5
.byte 0x04, 0x1C, 0x16, 0x1C, 0x1D, 0x1C, 0x49, 0x00, 0x96, 0x20, 0x80, 0x00, 0x09, 0x18, 0x62, 0x18
.byte 0x01, 0x20, 0x40, 0x42, 0x86, 0x42, 0x0C, 0xD1, 0x00, 0x2D, 0x23, 0xDD, 0x00, 0x21, 0xA0, 0x6A
.byte 0x44, 0x00, 0x11, 0x80, 0xA0, 0x18, 0x01, 0x80, 0x02, 0x32, 0x01, 0x3B, 0x00, 0x2B, 0xF8, 0xD1
.byte 0x18, 0xE0, 0x70, 0x10, 0x40, 0x00, 0x21, 0x6A, 0x0B, 0x18, 0x00, 0x2D, 0x12, 0xDD, 0xA0, 0x6A
.byte 0x40, 0x00, 0x84, 0x46, 0xE0, 0x6A, 0x47, 0x00, 0x86, 0x00, 0x2C, 0x1C, 0x18, 0x88, 0x10, 0x80
.byte 0x60, 0x46, 0x81, 0x18, 0xF8, 0x18, 0x00, 0x88, 0x08, 0x80, 0x02, 0x32, 0x9B, 0x19, 0x01, 0x3C
.byte 0x00, 0x2C, 0xF3, 0xD1, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0xF0, 0xB5, 0x81, 0xB0, 0x06, 0x1C
.byte 0x0F, 0x1C, 0x01, 0x20, 0x40, 0x42, 0x82, 0x42, 0x17, 0xD1, 0x68, 0x46, 0x00, 0x25, 0x05, 0x80
.byte 0x09, 0x4C, 0x1C, 0x40, 0x80, 0x20, 0x40, 0x04, 0x04, 0x43, 0x68, 0x46, 0x22, 0x1C, 0x2D, 0xF0
.byte 0xFA, 0xFB, 0x68, 0x46, 0x02, 0x30, 0x05, 0x80, 0xB1, 0x6A, 0x49, 0x00, 0x79, 0x18, 0x22, 0x1C
.byte 0x2D, 0xF0, 0xF1, 0xFB, 0x16, 0xE0, 0xFF, 0xFF, 0x1F, 0x00, 0x50, 0x10, 0x40, 0x00, 0x34, 0x6A
.byte 0x24, 0x18, 0x0A, 0x4D, 0x1D, 0x40, 0x20, 0x1C, 0x39, 0x1C, 0x2A, 0x1C, 0x2D, 0xF0, 0xE3, 0xFB
.byte 0xF0, 0x6A, 0x40, 0x00, 0x24, 0x18, 0xB1, 0x6A, 0x49, 0x00, 0x79, 0x18, 0x20, 0x1C, 0x2A, 0x1C
.byte 0x2D, 0xF0, 0xD9, 0xFB, 0x01, 0xB0, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xFF, 0xFF
.byte 0x1F, 0x00