	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8030774
sub_8030774: @ 0x08030774
	push {r4, r5, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r0, [r2, #4]
	cmp r0, #0
	bgt _08030786
	movs r0, #0
	b _080307D8
_08030786:
	ldr r0, [r2, #0x10]
	adds r0, #1
	str r0, [r2, #0x10]
	ldr r0, [r2]
	ldrb r4, [r0, #2]
	adds r1, r0, #0
	cmp r4, #0xfd
	bhi _080307AE
	movs r0, #0xff
	ands r0, r3
	ldrb r5, [r1]
	cmp r0, r5
	bne _080307AE
	lsrs r0, r3, #8
	ldrb r5, [r1, #1]
	cmp r0, r5
	bne _080307AE
	adds r0, r4, #1
	strb r0, [r1, #2]
	b _080307D6
_080307AE:
	adds r0, r1, #3
	str r0, [r2]
	strb r3, [r1, #3]
	ldr r1, [r2]
	lsrs r0, r3, #8
	strb r0, [r1, #1]
	ldr r1, [r2]
	movs r0, #1
	strb r0, [r1, #2]
	ldr r0, [r2]
	movs r1, #0
	strb r1, [r0, #3]
	ldr r0, [r2]
	strb r1, [r0, #4]
	ldr r1, [r2]
	movs r0, #0xff
	strb r0, [r1, #5]
	ldr r0, [r2, #4]
	subs r0, #3
	str r0, [r2, #4]
_080307D6:
	movs r0, #1
_080307D8:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_80307E0
sub_80307E0: @ 0x080307E0
	str r1, [r0]
	movs r3, #0
	strb r3, [r1]
	strb r3, [r1, #1]
	strb r3, [r1, #2]
	strb r3, [r1, #3]
	strb r3, [r1, #4]
	movs r3, #0xff
	strb r3, [r1, #5]
	str r2, [r0, #8]
	subs r2, #6
	str r2, [r0, #4]
	movs r1, #0
	str r1, [r0, #0x10]
	movs r0, #1
	bx lr

	thumb_func_start sub_8030800
sub_8030800: @ 0x08030800
	str r1, [r0]
	ldrb r1, [r1, #2]
	str r1, [r0, #0xc]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_803080C
sub_803080C: @ 0x0803080C
	adds r1, r0, #0
	ldr r2, [r1]
	ldrb r0, [r2, #2]
	cmp r0, #0xff
	bne _0803081A
	movs r0, #0
	b _08030838
_0803081A:
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bgt _08030828
	adds r0, r2, #3
	str r0, [r1]
	ldrb r0, [r0, #2]
	str r0, [r1, #0xc]
_08030828:
	ldr r0, [r1, #0xc]
	subs r0, #1
	str r0, [r1, #0xc]
	ldr r1, [r1]
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	lsls r1, r1, #8
	orrs r0, r1
_08030838:
	bx lr
	.align 2, 0