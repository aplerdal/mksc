	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_802F5C0
sub_802F5C0: @ 0x0802F5C0
	movs r2, #0
	movs r1, #0
	strh r1, [r0, #0x10]
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	strh r1, [r0, #0x26]
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	str r1, [r0, #0x30]
	strh r1, [r0, #0x20]
	strh r1, [r0, #0x22]
	strh r1, [r0, #0x24]
	strb r2, [r0, #0xc]
	strb r2, [r0, #0xd]
	strb r2, [r0, #0xe]
	strh r1, [r0, #0x34]
	adds r3, r0, #0
	adds r3, #0x36
	movs r2, #0x7f
	strb r2, [r3]
	strh r1, [r0, #0x38]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	bx lr
	.align 2, 0

	thumb_func_start sub_802F5F4
sub_802F5F4: @ 0x0802F5F4
	movs r3, #0x1e
	ldrsh r2, [r0, r3]
	movs r3, #0x1e
	ldrsh r0, [r1, r3]
	movs r1, #0
	cmp r2, r0
	bge _0802F604
	movs r1, #1
_0802F604:
	adds r0, r1, #0
	bx lr

	thumb_func_start sub_802F608
sub_802F608: @ 0x0802F608
	movs r3, #0x20
	ldrsh r2, [r0, r3]
	movs r3, #0x20
	ldrsh r0, [r1, r3]
	movs r1, #0
	cmp r2, r0
	ble _0802F618
	movs r1, #1
_0802F618:
	adds r0, r1, #0
	bx lr

	thumb_func_start sub_802F61C
sub_802F61C: @ 0x0802F61C
	ldrb r0, [r0, #0x1e]
	ldrb r1, [r1, #0x1e]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0802F632
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_0802F632:
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_802F638
sub_802F638: @ 0x0802F638
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r4, _0802F670 @ =0x03002E20
	adds r4, #0x24
	adds r5, r6, #0
	adds r5, #0x1c
	adds r3, r6, #0
	adds r3, #0x24
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_804AF10
	adds r2, r6, #0
	adds r2, #0x20
	ldr r3, [r6, #8]
	movs r1, #0x24
	ldrsh r0, [r6, r1]
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_804AF24
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802F670: .4byte 0x03002E20

	thumb_func_start sub_802F674
sub_802F674: @ 0x0802F674
	push {r4, lr}
	movs r1, #0x20
	ldrsh r3, [r0, r1]
	movs r1, #0x22
	ldrsh r2, [r0, r1]
	ldrh r4, [r0, #0x24]
	ldrh r0, [r0, #0x34]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802F6AE
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0xb8
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0802F6AE
	cmp r2, #0
	blt _0802F6AE
	cmp r2, #0xe0
	bgt _0802F6AE
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x7f
	ble _0802F6AE
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	ble _0802F6B2
_0802F6AE:
	movs r0, #0
	b _0802F6B4
_0802F6B2:
	movs r0, #1
_0802F6B4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0