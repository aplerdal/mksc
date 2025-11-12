	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8030774
sub_8030774:
	push {r4, r5, lr}
	adds r2, r0, #0x0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r0, [r2, #0x04]
	cmp r0, #0x00
	bgt _08030786
	movs r0, #0x00
	b _080307D8
_08030786:
	ldr r0, [r2, #0x10]
	adds r0, #0x01
	str r0, [r2, #0x10]
	ldr r0, [r2, #0x00]
	ldrb r4, [r0, #0x02]
	adds r1, r0, #0x0
	cmp r4, #0xFD
	bhi _080307AE
	movs r0, #0xFF
	ands r0, r3
	ldrb r5, [r1, #0x00]
	cmp r0, r5
	bne _080307AE
	lsrs r0, r3, #0x08
	ldrb r5, [r1, #0x01]
	cmp r0, r5
	bne _080307AE
	adds r0, r4, #0x1
	strb r0, [r1, #0x02]
	b _080307D6
_080307AE:
	adds r0, r1, #0x3
	str r0, [r2, #0x00]
	strb r3, [r1, #0x03]
	ldr r1, [r2, #0x00]
	lsrs r0, r3, #0x08
	strb r0, [r1, #0x01]
	ldr r1, [r2, #0x00]
	movs r0, #0x01
	strb r0, [r1, #0x02]
	ldr r0, [r2, #0x00]
	movs r1, #0x00
	strb r1, [r0, #0x03]
	ldr r0, [r2, #0x00]
	strb r1, [r0, #0x04]
	ldr r1, [r2, #0x00]
	movs r0, #0xFF
	strb r0, [r1, #0x05]
	ldr r0, [r2, #0x04]
	subs r0, #0x03
	str r0, [r2, #0x04]
_080307D6:
	movs r0, #0x01
_080307D8:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_start sub_80307E0
sub_80307E0:
	str r1, [r0, #0x00]
	movs r3, #0x00
	strb r3, [r1, #0x00]
	strb r3, [r1, #0x01]
	strb r3, [r1, #0x02]
	strb r3, [r1, #0x03]
	strb r3, [r1, #0x04]
	movs r3, #0xFF
	strb r3, [r1, #0x05]
	str r2, [r0, #0x08]
	subs r2, #0x06
	str r2, [r0, #0x04]
	movs r1, #0x00
	str r1, [r0, #0x10]
	movs r0, #0x01
	bx lr
	thumb_func_start sub_8030800
sub_8030800:
	str r1, [r0, #0x00]
	ldrb r1, [r1, #0x02]
	str r1, [r0, #0x0C]
	movs r0, #0x01
	bx lr
	.align 2, 0
	thumb_func_start sub_803080C
sub_803080C:
	adds r1, r0, #0x0
	ldr r2, [r1, #0x00]
	ldrb r0, [r2, #0x02]
	cmp r0, #0xFF
	bne _0803081A
	movs r0, #0x00
	b _08030838
_0803081A:
	ldr r0, [r1, #0x0C]
	cmp r0, #0x00
	bgt _08030828
	adds r0, r2, #0x3
	str r0, [r1, #0x00]
	ldrb r0, [r0, #0x02]
	str r0, [r1, #0x0C]
_08030828:
	ldr r0, [r1, #0x0C]
	subs r0, #0x01
	str r0, [r1, #0x0C]
	ldr r1, [r1, #0x00]
	ldrb r0, [r1, #0x00]
	ldrb r1, [r1, #0x01]
	lsls r1, r1, #0x08
	orrs r0, r1
_08030838:
	bx lr
	.align 2, 0
