.syntax unified
.text

@ I am kinda too tired to do this one right now. There was very little attempt made

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