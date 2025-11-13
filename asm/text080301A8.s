	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_80301A8
sub_80301A8: @ 0x080301A8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x4c
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _080301C0
	subs r0, r2, #1
	strh r0, [r1]
	b _080301EE
_080301C0:
	ldr r0, [r5, #0x5c]
	cmp r0, #0
	beq _080301EE
	adds r4, r5, #0
	adds r4, #0x64
	movs r6, #0xfe
_080301CC:
	ldrb r1, [r4]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_8030004
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080301CC
	ldr r0, [r5, #0x5c]
	cmp r0, #0
	bne _080301EE
	ldr r0, _08030214 @ =sub_8030290
	str r0, [r5, #0x14]
_080301EE:
	ldr r2, [r5, #0x60]
	cmp r2, #0
	beq _0803021E
	adds r4, r5, #0
	adds r4, #0x64
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08030218
	adds r0, r5, #0
	bl _call_via_r2
	ldrb r1, [r4]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r4]
	b _0803021E
	.align 2, 0
_08030214: .4byte sub_8030290
_08030218:
	adds r0, r5, #0
	bl _call_via_r2
_0803021E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_8030224
sub_8030224: @ 0x08030224
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r0, _08030270 @ =0x03002E20
	movs r1, #0xe8
	lsls r1, r1, #3
	adds r0, r0, r1
	bl sub_804F7AC
	adds r4, r0, #0
	cmp r4, #0
	beq _08030268
	adds r1, r4, #0
	adds r1, #0x4c
	movs r0, #0
	strh r0, [r1]
	str r5, [r4, #0x5c]
	str r6, [r4, #0x60]
	adds r1, #0x18
	movs r0, #2
	strb r0, [r1]
	ldr r0, _08030274 @ =sub_80301A8
	str r0, [r4, #0x14]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, #0
	adds r0, #0x58
	strh r1, [r0]
	cmp r7, #0
	beq _08030268
	adds r0, r4, #0
	bl _call_via_r7
_08030268:
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08030270: .4byte 0x03002E20
_08030274: .4byte sub_80301A8

	thumb_func_start sub_8030278
sub_8030278: @ 0x08030278
	ldr r1, [r0, #0x68]
	strh r1, [r0, #0x24]
	bx lr
	.align 2, 0

	thumb_func_start sub_8030280
sub_8030280: @ 0x08030280
	ldr r1, [r0, #0x68]
	adds r0, #0x80
	ldr r0, [r0]
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_10
nullsub_10: @ 0x0803028C
	bx lr
	.align 2, 0

	thumb_func_start sub_8030290
sub_8030290: @ 0x08030290
	push {lr}
	adds r1, r0, #0
	ldr r0, _080302A4 @ =0x03002E20
	movs r2, #0xe8
	lsls r2, r2, #3
	adds r0, r0, r2
	bl sub_804F808
	pop {r0}
	bx r0
	.align 2, 0
_080302A4: .4byte 0x03002E20