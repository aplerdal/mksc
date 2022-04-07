    .include "asm/macros.inc"

    .syntax unified
    .text

        thumb_func_start sub_8061F48
    sub_8061F48:
        push {r4, r5, r6, lr}
        adds r6, r1, #0x0
        adds r5, r0, #0x0
        cmp r2, #0x00
        beq _08061F78
        movs r0, #0x20
        subs r0, r0, r2
        cmp r0, #0x00
        bgt _08061F64
        movs r4, #0x00
        negs r0, r0
        adds r3, r6, #0x0
        lsrs r3, r0
        b _08061F74
    _08061F64:
        adds r1, r6, #0x0
        lsls r1, r0
        adds r4, r6, #0x0
        lsrs r4, r2
        adds r0, r5, #0x0
        lsrs r0, r2
        adds r3, r0, #0x0
        orrs r3, r1
    _08061F74:
        adds r1, r4, #0x0
        adds r0, r3, #0x0
    _08061F78:
        pop {r4, r5, r6, pc}
        .byte 0x00, 0x00
        thumb_func_start sub_8061F7C
    sub_8061F7C:
        movs r3, #0x01
        cmp r1, #0x00
        beq _08062040
        bpl _08061F86
        negs r1, r1
    _08061F86:
        push {r4}
        push {r0}
        cmp r0, #0x00
        bpl _08061F90
        negs r0, r0
    _08061F90:
        cmp r0, r1
        bcc _08062034
        movs r4, #0x01
        lsls r4, r4, #0x1C
    _08061F98:
        cmp r1, r4
        bcs _08061FA6
        cmp r1, r0
        bcs _08061FA6
        lsls r1, r1, #0x04
        lsls r3, r3, #0x04
        b _08061F98
    _08061FA6:
        lsls r4, r4, #0x03
    _08061FA8:
        cmp r1, r4
        bcs _08061FB6
        cmp r1, r0
        bcs _08061FB6
        lsls r1, r1, #0x01
        lsls r3, r3, #0x01
        b _08061FA8
    _08061FB6:
        movs r2, #0x00
        cmp r0, r1
        bcc _08061FBE
        subs r0, r0, r1
    _08061FBE:
        lsrs r4, r1, #0x01
        cmp r0, r4
        bcc _08061FD0
        subs r0, r0, r4
        mov r12, r3
        movs r4, #0x01
        rors r3, r4
        orrs r2, r3
        mov r3, r12
    _08061FD0:
        lsrs r4, r1, #0x02
        cmp r0, r4
        bcc _08061FE2
        subs r0, r0, r4
        mov r12, r3
        movs r4, #0x02
        rors r3, r4
        orrs r2, r3
        mov r3, r12
    _08061FE2:
        lsrs r4, r1, #0x03
        cmp r0, r4
        bcc _08061FF4
        subs r0, r0, r4
        mov r12, r3
        movs r4, #0x03
        rors r3, r4
        orrs r2, r3
        mov r3, r12
    _08061FF4:
        mov r12, r3
        cmp r0, #0x00
        beq _08062002
        lsrs r3, r3, #0x04
        beq _08062002
        lsrs r1, r1, #0x04
        b _08061FB6
    _08062002:
        movs r4, #0x0E
        lsls r4, r4, #0x1C
        ands r2, r4
        beq _08062034
        mov r3, r12
        movs r4, #0x03
        rors r3, r4
        tst r2, r3
        beq _08062018
        lsrs r4, r1, #0x03
        adds r0, r0, r4
    _08062018:
        mov r3, r12
        movs r4, #0x02
        rors r3, r4
        tst r2, r3
        beq _08062026
        lsrs r4, r1, #0x02
        adds r0, r0, r4
    _08062026:
        mov r3, r12
        movs r4, #0x01
        rors r3, r4
        tst r2, r3
        beq _08062034
        lsrs r4, r1, #0x01
        adds r0, r0, r4
    _08062034:
        pop {r4}
        cmp r4, #0x00
        bpl _0806203C
        negs r0, r0
    _0806203C:
        pop {r4}
        mov pc, lr
    _08062040:
        push {lr}
        bl __div0
        movs r0, #0x00
        pop {pc}
        .byte 0x00, 0x00
        thumb_func_start sub_806204C
    sub_806204C:
        push {r4, r5, r6, r7, lr}
        add sp, #-0x010
        str r0, [sp, #0x000]
        str r1, [sp, #0x004]
        str r2, [sp, #0x008]
        str r3, [sp, #0x00C]
        ldr r3, [sp, #0x000]
        ldr r0, _080620B8 @ =0x0000FFFF
        mov r12, r0
        adds r2, r3, #0x0
        ands r2, r0
        lsrs r3, r3, #0x10
        ldr r1, [sp, #0x008]
        adds r0, r1, #0x0
        mov r4, r12
        ands r0, r4
        lsrs r1, r1, #0x10
        adds r5, r2, #0x0
        muls r5, r0
        adds r4, r2, #0x0
        muls r4, r1
        adds r2, r3, #0x0
        muls r2, r0
        muls r3, r1
        lsrs r0, r5, #0x10
        adds r4, r4, r0
        adds r4, r4, r2
        cmp r4, r2
        bcs _0806208C
        movs r0, #0x80
        lsls r0, r0, #0x09
        adds r3, r3, r0
    _0806208C:
        lsrs r0, r4, #0x10
        adds r7, r3, r0
        mov r1, r12
        ands r4, r1
        lsls r0, r4, #0x10
        ands r5, r1
        adds r6, r0, #0x0
        orrs r6, r5
        adds r1, r7, #0x0
        adds r0, r6, #0x0
        ldr r3, [sp, #0x000]
        ldr r4, [sp, #0x00C]
        adds r2, r3, #0x0
        muls r2, r4
        ldr r5, [sp, #0x004]
        ldr r4, [sp, #0x008]
        adds r3, r5, #0x0
        muls r3, r4
        adds r2, r2, r3
        adds r1, r7, r2
        add sp, #0x010
        pop {r4, r5, r6, r7, pc}
    _080620B8: .4byte 0x0000FFFF
        thumb_func_start sub_80620BC
    sub_80620BC:
        push {r4, r5, r6, r7, lr}
        mov r7, r10
        mov r6, r9
        mov r5, r8
        push {r5, r6, r7}
        add sp, #-0x020
        adds r7, r2, #0x0
        adds r6, r3, #0x0
        mov r10, r0
        mov r8, r1
        cmp r6, #0x00
        beq _080620D6
        b _08062324
    _080620D6:
        cmp r7, r8
        bls _080621B0
        ldr r0, _080620EC @ =0x0000FFFF
        cmp r7, r0
        bhi _080620F0
        movs r1, #0x00
        cmp r7, #0xFF
        bls _080620FA
        movs r1, #0x08
        b _080620FA
        .byte 0x00, 0x00
    _080620EC: .4byte 0x0000FFFF
    _080620F0:
        ldr r0, _080621A4 @ =0x00FFFFFF
        movs r1, #0x18
        cmp r7, r0
        bhi _080620FA
        movs r1, #0x10
    _080620FA:
        ldr r0, _080621A8 @ =0x081E99E0
        lsrs r2, r1
        adds r0, r2, r0
        ldrb r0, [r0, #0x00]
        adds r0, r0, r1
        movs r1, #0x20
        subs r2, r1, r0
        cmp r2, #0x00
        beq _08062126
        lsls r7, r2
        mov r0, r8
        lsls r0, r2
        mov r8, r0
        subs r1, r1, r2
        mov r0, r10
        lsrs r0, r1
        mov r1, r8
        orrs r1, r0
        mov r8, r1
        mov r3, r10
        lsls r3, r2
        mov r10, r3
    _08062126:
        lsrs r4, r7, #0x10
        mov r9, r4
        ldr r0, _080621AC @ =0x0000FFFF
        ands r0, r7
        str r0, [sp, #0x000]
        mov r0, r8
        mov r1, r9
        bl sub_806250C
        adds r4, r0, #0x0
        mov r0, r8
        mov r1, r9
        bl sub_8062494
        adds r6, r0, #0x0
        ldr r1, [sp, #0x000]
        adds r2, r6, #0x0
        muls r2, r1
        lsls r4, r4, #0x10
        mov r3, r10
        lsrs r0, r3, #0x10
        orrs r4, r0
        cmp r4, r2
        bcs _08062166
        subs r6, #0x01
        adds r4, r4, r7
        cmp r4, r7
        bcc _08062166
        cmp r4, r2
        bcs _08062166
        subs r6, #0x01
        adds r4, r4, r7
    _08062166:
        subs r4, r4, r2
        adds r0, r4, #0x0
        mov r1, r9
        bl sub_806250C
        adds r5, r0, #0x0
        adds r0, r4, #0x0
        mov r1, r9
        bl sub_8062494
        adds r1, r0, #0x0
        ldr r4, [sp, #0x000]
        adds r2, r1, #0x0
        muls r2, r4
        lsls r5, r5, #0x10
        ldr r0, _080621AC @ =0x0000FFFF
        mov r3, r10
        ands r3, r0
        orrs r5, r3
        cmp r5, r2
        bcs _0806219E
        subs r1, #0x01
        adds r5, r5, r7
        cmp r5, r7
        bcc _0806219E
        cmp r5, r2
        bcs _0806219E
        subs r1, #0x01
    _0806219E:
        lsls r6, r6, #0x10
        orrs r6, r1
        b _0806232A
    _080621A4: .4byte 0x00FFFFFF
    _080621A8: .4byte 0x081E99E0
    _080621AC: .4byte 0x0000FFFF
    _080621B0:
        cmp r2, #0x00
        bne _080621BE
        movs r0, #0x01
        movs r1, #0x00
        bl sub_8062494
        adds r7, r0, #0x0
    _080621BE:
        adds r1, r7, #0x0
        ldr r0, _080621D0 @ =0x0000FFFF
        cmp r7, r0
        bhi _080621D4
        movs r2, #0x00
        cmp r7, #0xFF
        bls _080621DE
        movs r2, #0x08
        b _080621DE
    _080621D0: .4byte 0x0000FFFF
    _080621D4:
        ldr r0, _080621FC @ =0x00FFFFFF
        movs r2, #0x18
        cmp r7, r0
        bhi _080621DE
        movs r2, #0x10
    _080621DE:
        ldr r0, _08062200 @ =0x081E99E0
        lsrs r1, r2
        adds r0, r1, r0
        ldrb r0, [r0, #0x00]
        adds r0, r0, r2
        movs r1, #0x20
        subs r2, r1, r0
        cmp r2, #0x00
        bne _08062204
        mov r0, r8
        subs r0, r0, r7
        mov r8, r0
        movs r1, #0x01
        str r1, [sp, #0x004]
        b _080622A2
    _080621FC: .4byte 0x00FFFFFF
    _08062200: .4byte 0x081E99E0
    _08062204:
        subs r1, r1, r2
        lsls r7, r2
        mov r5, r8
        lsrs r5, r1
        mov r3, r8
        lsls r3, r2
        mov r0, r10
        lsrs r0, r1
        orrs r3, r0
        mov r8, r3
        mov r4, r10
        lsls r4, r2
        mov r10, r4
        lsrs r0, r7, #0x10
        mov r9, r0
        ldr r1, _08062320 @ =0x0000FFFF
        ands r1, r7
        str r1, [sp, #0x008]
        adds r0, r5, #0x0
        mov r1, r9
        bl sub_806250C
        adds r4, r0, #0x0
        adds r0, r5, #0x0
        mov r1, r9
        bl sub_8062494
        adds r6, r0, #0x0
        ldr r2, [sp, #0x008]
        adds r1, r6, #0x0
        muls r1, r2
        lsls r4, r4, #0x10
        mov r3, r8
        lsrs r0, r3, #0x10
        orrs r4, r0
        cmp r4, r1
        bcs _0806225E
        subs r6, #0x01
        adds r4, r4, r7
        cmp r4, r7
        bcc _0806225E
        cmp r4, r1
        bcs _0806225E
        subs r6, #0x01
        adds r4, r4, r7
    _0806225E:
        subs r4, r4, r1
        adds r0, r4, #0x0
        mov r1, r9
        bl sub_806250C
        adds r5, r0, #0x0
        adds r0, r4, #0x0
        mov r1, r9
        bl sub_8062494
        adds r2, r0, #0x0
        ldr r4, [sp, #0x008]
        adds r1, r2, #0x0
        muls r1, r4
        lsls r5, r5, #0x10
        ldr r0, _08062320 @ =0x0000FFFF
        mov r3, r8
        ands r3, r0
        orrs r5, r3
        cmp r5, r1
        bcs _08062298
        subs r2, #0x01
        adds r5, r5, r7
        cmp r5, r7
        bcc _08062298
        cmp r5, r1
        bcs _08062298
        subs r2, #0x01
        adds r5, r5, r7
    _08062298:
        lsls r6, r6, #0x10
        orrs r6, r2
        str r6, [sp, #0x004]
        subs r1, r5, r1
        mov r8, r1
    _080622A2:
        lsrs r4, r7, #0x10
        mov r9, r4
        ldr r0, _08062320 @ =0x0000FFFF
        ands r0, r7
        str r0, [sp, #0x00C]
        mov r0, r8
        mov r1, r9
        bl sub_806250C
        adds r4, r0, #0x0
        mov r0, r8
        mov r1, r9
        bl sub_8062494
        adds r6, r0, #0x0
        ldr r1, [sp, #0x00C]
        adds r2, r6, #0x0
        muls r2, r1
        lsls r4, r4, #0x10
        mov r3, r10
        lsrs r0, r3, #0x10
        orrs r4, r0
        cmp r4, r2
        bcs _080622E2
        subs r6, #0x01
        adds r4, r4, r7
        cmp r4, r7
        bcc _080622E2
        cmp r4, r2
        bcs _080622E2
        subs r6, #0x01
        adds r4, r4, r7
    _080622E2:
        subs r4, r4, r2
        adds r0, r4, #0x0
        mov r1, r9
        bl sub_806250C
        adds r5, r0, #0x0
        adds r0, r4, #0x0
        mov r1, r9
        bl sub_8062494
        adds r1, r0, #0x0
        ldr r4, [sp, #0x00C]
        adds r2, r1, #0x0
        muls r2, r4
        lsls r5, r5, #0x10
        ldr r0, _08062320 @ =0x0000FFFF
        mov r3, r10
        ands r3, r0
        orrs r5, r3
        cmp r5, r2
        bcs _0806231A
        subs r1, #0x01
        adds r5, r5, r7
        cmp r5, r7
        bcc _0806231A
        cmp r5, r2
        bcs _0806231A
        subs r1, #0x01
    _0806231A:
        lsls r6, r6, #0x10
        orrs r6, r1
        b _0806247A
    _08062320: .4byte 0x0000FFFF
    _08062324:
        cmp r6, r8
        bls _08062330
        movs r6, #0x00
    _0806232A:
        movs r4, #0x00
        str r4, [sp, #0x004]
        b _0806247A
    _08062330:
        adds r1, r6, #0x0
        ldr r0, _08062344 @ =0x0000FFFF
        cmp r6, r0
        bhi _08062348
        movs r2, #0x00
        cmp r6, #0xFF
        bls _08062352
        movs r2, #0x08
        b _08062352
        .byte 0x00, 0x00
    _08062344: .4byte 0x0000FFFF
    _08062348:
        ldr r0, _08062374 @ =0x00FFFFFF
        movs r2, #0x18
        cmp r6, r0
        bhi _08062352
        movs r2, #0x10
    _08062352:
        ldr r0, _08062378 @ =0x081E99E0
        lsrs r1, r2
        adds r0, r1, r0
        ldrb r0, [r0, #0x00]
        adds r0, r0, r2
        movs r1, #0x20
        subs r2, r1, r0
        cmp r2, #0x00
        bne _08062380
        cmp r8, r6
        bhi _0806236C
        cmp r10, r7
        bcc _0806237C
    _0806236C:
        movs r6, #0x01
        mov r1, r10
        b _08062474
        .byte 0x00, 0x00
    _08062374: .4byte 0x00FFFFFF
    _08062378: .4byte 0x081E99E0
    _0806237C:
        movs r6, #0x00
        b _08062476
    _08062380:
        subs r1, r1, r2
        lsls r6, r2
        adds r0, r7, #0x0
        lsrs r0, r1
        orrs r6, r0
        lsls r7, r2
        mov r5, r8
        lsrs r5, r1
        mov r3, r8
        lsls r3, r2
        mov r0, r10
        lsrs r0, r1
        orrs r3, r0
        mov r8, r3
        mov r4, r10
        lsls r4, r2
        mov r10, r4
        lsrs r0, r6, #0x10
        mov r9, r0
        ldr r1, _08062490 @ =0x0000FFFF
        ands r1, r6
        str r1, [sp, #0x010]
        adds r0, r5, #0x0
        mov r1, r9
        bl sub_806250C
        adds r4, r0, #0x0
        adds r0, r5, #0x0
        mov r1, r9
        bl sub_8062494
        adds r3, r0, #0x0
        ldr r2, [sp, #0x010]
        adds r1, r3, #0x0
        muls r1, r2
        lsls r4, r4, #0x10
        mov r2, r8
        lsrs r0, r2, #0x10
        orrs r4, r0
        cmp r4, r1
        bcs _080623E2
        subs r3, #0x01
        adds r4, r4, r6
        cmp r4, r6
        bcc _080623E2
        cmp r4, r1
        bcs _080623E2
        subs r3, #0x01
        adds r4, r4, r6
    _080623E2:
        subs r4, r4, r1
        adds r0, r4, #0x0
        mov r1, r9
        str r3, [sp, #0x01C]
        bl sub_806250C
        adds r5, r0, #0x0
        adds r0, r4, #0x0
        mov r1, r9
        bl sub_8062494
        adds r2, r0, #0x0
        ldr r4, [sp, #0x010]
        adds r1, r2, #0x0
        muls r1, r4
        lsls r5, r5, #0x10
        ldr r0, _08062490 @ =0x0000FFFF
        mov r4, r8
        ands r4, r0
        orrs r5, r4
        ldr r3, [sp, #0x01C]
        cmp r5, r1
        bcs _08062420
        subs r2, #0x01
        adds r5, r5, r6
        cmp r5, r6
        bcc _08062420
        cmp r5, r1
        bcs _08062420
        subs r2, #0x01
        adds r5, r5, r6
    _08062420:
        lsls r6, r3, #0x10
        orrs r6, r2
        subs r1, r5, r1
        mov r8, r1
        ldr r0, _08062490 @ =0x0000FFFF
        mov r9, r0
        adds r1, r6, #0x0
        ands r1, r0
        lsrs r3, r6, #0x10
        adds r0, r7, #0x0
        mov r2, r9
        ands r0, r2
        lsrs r2, r7, #0x10
        adds r5, r1, #0x0
        muls r5, r0
        adds r4, r1, #0x0
        muls r4, r2
        adds r1, r3, #0x0
        muls r1, r0
        muls r3, r2
        lsrs r0, r5, #0x10
        adds r4, r4, r0
        adds r4, r4, r1
        cmp r4, r1
        bcs _08062458
        movs r0, #0x80
        lsls r0, r0, #0x09
        adds r3, r3, r0
    _08062458:
        lsrs r0, r4, #0x10
        adds r3, r3, r0
        mov r1, r9
        ands r4, r1
        lsls r0, r4, #0x10
        ands r5, r1
        adds r1, r0, r5
        cmp r3, r8
        bhi _08062472
        cmp r3, r8
        bne _08062476
        cmp r1, r10
        bls _08062476
    _08062472:
        subs r6, #0x01
    _08062474:
        subs r0, r1, r7
    _08062476:
        movs r2, #0x00
        str r2, [sp, #0x004]
    _0806247A:
        str r6, [sp, #0x014]
        ldr r3, [sp, #0x004]
        str r3, [sp, #0x018]
        ldr r0, [sp, #0x014]
        ldr r1, [sp, #0x018]
        add sp, #0x020
        pop {r3, r4, r5}
        mov r8, r3
        mov r9, r4
        mov r10, r5
        pop {r4, r5, r6, r7, pc}
    _08062490: .4byte 0x0000FFFF
        thumb_func_start sub_8062494
    sub_8062494:
        cmp r1, #0x00
        beq _08062502
        movs r3, #0x01
        movs r2, #0x00
        push {r4}
        cmp r0, r1
        bcc _080624FC
        movs r4, #0x01
        lsls r4, r4, #0x1C
    _080624A6:
        cmp r1, r4
        bcs _080624B4
        cmp r1, r0
        bcs _080624B4
        lsls r1, r1, #0x04
        lsls r3, r3, #0x04
        b _080624A6
    _080624B4:
        lsls r4, r4, #0x03
    _080624B6:
        cmp r1, r4
        bcs _080624C4
        cmp r1, r0
        bcs _080624C4
        lsls r1, r1, #0x01
        lsls r3, r3, #0x01
        b _080624B6
    _080624C4:
        cmp r0, r1
        bcc _080624CC
        subs r0, r0, r1
        orrs r2, r3
    _080624CC:
        lsrs r4, r1, #0x01
        cmp r0, r4
        bcc _080624D8
        subs r0, r0, r4
        lsrs r4, r3, #0x01
        orrs r2, r4
    _080624D8:
        lsrs r4, r1, #0x02
        cmp r0, r4
        bcc _080624E4
        subs r0, r0, r4
        lsrs r4, r3, #0x02
        orrs r2, r4
    _080624E4:
        lsrs r4, r1, #0x03
        cmp r0, r4
        bcc _080624F0
        subs r0, r0, r4
        lsrs r4, r3, #0x03
        orrs r2, r4
    _080624F0:
        cmp r0, #0x00
        beq _080624FC
        lsrs r3, r3, #0x04
        beq _080624FC
        lsrs r1, r1, #0x04
        b _080624C4
    _080624FC:
        adds r0, r2, #0x0
        pop {r4}
        mov pc, lr
    _08062502:
        push {lr}
        bl __div0
        movs r0, #0x00
        pop {pc}
        thumb_func_start sub_806250C
    sub_806250C:
        cmp r1, #0x00
        beq _080625C2
        movs r3, #0x01
        cmp r0, r1
        bcs _08062518
        mov pc, lr
    _08062518:
        push {r4}
        movs r4, #0x01
        lsls r4, r4, #0x1C
    _0806251E:
        cmp r1, r4
        bcs _0806252C
        cmp r1, r0
        bcs _0806252C
        lsls r1, r1, #0x04
        lsls r3, r3, #0x04
        b _0806251E
    _0806252C:
        lsls r4, r4, #0x03
    _0806252E:
        cmp r1, r4
        bcs _0806253C
        cmp r1, r0
        bcs _0806253C
        lsls r1, r1, #0x01
        lsls r3, r3, #0x01
        b _0806252E
    _0806253C:
        movs r2, #0x00
        cmp r0, r1
        bcc _08062544
        subs r0, r0, r1
    _08062544:
        lsrs r4, r1, #0x01
        cmp r0, r4
        bcc _08062556
        subs r0, r0, r4
        mov r12, r3
        movs r4, #0x01
        rors r3, r4
        orrs r2, r3
        mov r3, r12
    _08062556:
        lsrs r4, r1, #0x02
        cmp r0, r4
        bcc _08062568
        subs r0, r0, r4
        mov r12, r3
        movs r4, #0x02
        rors r3, r4
        orrs r2, r3
        mov r3, r12
    _08062568:
        lsrs r4, r1, #0x03
        cmp r0, r4
        bcc _0806257A
        subs r0, r0, r4
        mov r12, r3
        movs r4, #0x03
        rors r3, r4
        orrs r2, r3
        mov r3, r12
    _0806257A:
        mov r12, r3
        cmp r0, #0x00
        beq _08062588
        lsrs r3, r3, #0x04
        beq _08062588
        lsrs r1, r1, #0x04
        b _0806253C
    _08062588:
        movs r4, #0x0E
        lsls r4, r4, #0x1C
        ands r2, r4
        bne _08062594
        pop {r4}
        mov pc, lr
    _08062594:
        mov r3, r12
        movs r4, #0x03
        rors r3, r4
        tst r2, r3
        beq _080625A2
        lsrs r4, r1, #0x03
        adds r0, r0, r4
    _080625A2:
        mov r3, r12
        movs r4, #0x02
        rors r3, r4
        tst r2, r3
        beq _080625B0
        lsrs r4, r1, #0x02
        adds r0, r0, r4
    _080625B0:
        mov r3, r12
        movs r4, #0x01
        rors r3, r4
        tst r2, r3
        beq _080625BE
        lsrs r4, r1, #0x01
        adds r0, r0, r4
    _080625BE:
        pop {r4}
        mov pc, lr
    _080625C2:
        push {lr}
        bl __div0
        movs r0, #0x00
        pop {pc}
        