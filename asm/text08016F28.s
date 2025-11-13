	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_8017170
sub_8017170: @ 0x08017170
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r7, r0, r1
	movs r1, #0xd4
	lsls r1, r1, #3
	adds r1, r1, r0
	mov r8, r1
	ldr r2, _08017224 @ =0x03002C80
	ldrh r1, [r2, #0x16]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08017196
	movs r0, #0
	strh r0, [r2, #0x16]
_08017196:
	movs r0, #1
	movs r1, #0xc1
	rsbs r1, r1, #0
	bl irq_updateMask
	ldr r1, _08017228 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	ldr r4, _0801722C @ =sub_8012254
	adds r1, r4, #0
	cmp r4, #0
	bne _080171B0
	ldr r1, _08017230 @ =main_dummyIrqHandler
_080171B0:
	movs r0, #6
	bl irq_setHandler
	adds r1, r4, #0
	cmp r1, #0
	bne _080171BE
	ldr r1, _08017230 @ =main_dummyIrqHandler
_080171BE:
	movs r0, #7
	bl irq_setHandler
	movs r4, #0
	ldr r6, _08017234 @ =0x03002E20
	movs r0, #1
	movs r1, #2
	rsbs r1, r1, #0
	bl irq_updateMask
	str r4, [r6, #0xc]
	movs r0, #2
	ldr r1, _08017238 @ =0x00010001
	bl irq_updateMask
	movs r0, #0
	ldr r1, _0801723C @ =0x00003EDC
	bl sub_8011DF0
	ldr r0, _08017240 @ =0x04000200
	ldrh r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r1, r0
	movs r0, #0
	bl irq_updateMask
	ldr r5, _08017244 @ =sub_801C878
	movs r0, #1
	movs r1, #2
	rsbs r1, r1, #0
	bl irq_updateMask
	str r5, [r6, #0xc]
	movs r0, #2
	ldr r1, _08017238 @ =0x00010001
	bl irq_updateMask
	mov r0, r8
	strb r4, [r0, #2]
	str r4, [r7, #0x14]
	str r4, [r7]
	str r4, [r7, #0x10]
	str r4, [r7, #0xc]
	str r4, [r7, #0x18]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017224: .4byte 0x03002C80
_08017228: .4byte 0x04000202
_0801722C: .4byte sub_8012254
_08017230: .4byte main_dummyIrqHandler
_08017234: .4byte 0x03002E20
_08017238: .4byte 0x00010001
_0801723C: .4byte 0x00003EDC
_08017240: .4byte 0x04000200
_08017244: .4byte sub_801C878

	thumb_func_start sub_8017248
sub_8017248: @ 0x08017248
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	movs r5, #0x8e
	lsls r5, r5, #1
	add r5, sl
	movs r7, #0xd4
	lsls r7, r7, #3
	add r7, sl
	ldrb r0, [r7, #2]
	cmp r0, #0
	beq _0801726C
	subs r0, #1
	strb r0, [r7, #2]
	b _080173FA
_0801726C:
	ldr r0, [r5]
	cmp r0, #0
	bne _0801727C
	ldr r0, _08017278 @ =0x000037E7
	b _0801727E
	.align 2, 0
_08017278: .4byte 0x000037E7
_0801727C:
	ldr r0, _080172F8 @ =0x0000B7E7
_0801727E:
	strh r0, [r7, #4]
	adds r0, r7, #4
	adds r4, r7, #0
	adds r4, #0xc
	adds r1, r4, #0
	movs r2, #0
	bl sub_8011EE0
	mov r8, r0
	ldr r0, _080172FC @ =0x04000200
	ldrh r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r1, r0
	movs r0, #0
	bl irq_updateMask
	bl sub_8012370
	movs r6, #0
	mov sb, r6
	str r6, [r5, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #6
	mov r1, r8
	ands r0, r1
	mov ip, r4
	cmp r0, #0
	bne _0801732E
	movs r3, #0
	ldr r4, _08017300 @ =0x000037E7
_080172BC:
	movs r0, #0x80
	lsls r0, r0, #1
	lsls r0, r3
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08017310
	lsls r0, r3, #3
	add r0, ip
	ldrh r2, [r0]
	adds r0, r4, #0
	ands r0, r2
	cmp r0, r4
	bne _0801730A
	adds r6, #1
	movs r1, #1
	lsls r1, r3
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _0801730A
	movs r0, #1
	add sb, r0
	ldr r0, _080172F8 @ =0x0000B7E7
	cmp r2, r0
	bne _08017304
	ldr r0, [r5, #0x10]
	orrs r0, r1
	b _08017308
	.align 2, 0
_080172F8: .4byte 0x0000B7E7
_080172FC: .4byte 0x04000200
_08017300: .4byte 0x000037E7
_08017304:
	ldr r0, [r5, #0x10]
	bics r0, r1
_08017308:
	str r0, [r5, #0x10]
_0801730A:
	adds r3, #1
	cmp r3, #3
	ble _080172BC
_08017310:
	movs r3, #0
	ldr r1, [r5, #0x10]
	movs r2, #1
_08017316:
	adds r0, r1, #0
	asrs r0, r3
	ands r0, r2
	cmp r0, #0
	beq _08017326
	ldr r0, [r5, #0xc]
	adds r0, #1
	str r0, [r5, #0xc]
_08017326:
	adds r3, #1
	cmp r3, #3
	ble _08017316
	b _0801733E
_0801732E:
	bl sub_8012388
	ldr r1, _0801734C @ =0x00003EDC
	movs r0, #0
	bl sub_8011DF0
	movs r0, #0x1e
	strb r0, [r7, #2]
_0801733E:
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r5, r0
	cmp r6, #2
	bgt _08017350
	str r6, [r1]
	b _08017354
	.align 2, 0
_0801734C: .4byte 0x00003EDC
_08017350:
	movs r0, #1
	str r0, [r1]
_08017354:
	ldr r0, _08017368 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	str r0, [r5, #4]
	cmp r6, #2
	bne _0801736C
	movs r0, #1
	b _0801736E
	.align 2, 0
_08017368: .4byte 0x04000128
_0801736C:
	movs r0, #0
_0801736E:
	str r0, [r5, #0x18]
	cmp r6, sb
	beq _0801737A
	ldr r0, [r5, #0x14]
	adds r0, #1
	b _0801737C
_0801737A:
	movs r0, #0
_0801737C:
	str r0, [r5, #0x14]
	ldr r0, [r5, #0x14]
	cmp r0, #8
	ble _080173AA
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	str r0, [r5, #4]
	movs r6, #0
	str r6, [r5, #0x18]
	str r6, [r5]
	str r6, [r5, #0x10]
	str r6, [r5, #0xc]
	bl sub_8012388
	ldr r1, _080173D8 @ =0x00003EDC
	movs r0, #0
	bl sub_8011DF0
	movs r0, #0x1e
	strb r0, [r7, #2]
_080173AA:
	movs r0, #0
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _080173FA
	movs r1, #0x80
	mov r0, r8
	ands r1, r0
	cmp r1, #0
	beq _080173DC
	movs r0, #0xd4
	lsls r0, r0, #3
	add r0, sl
	movs r4, #1
	strb r4, [r0]
	movs r0, #9
	bl main_checkKeysTriggered
	cmp r0, #0
	beq _080173F0
	str r4, [r5]
	b _080173F0
	.align 2, 0
_080173D8: .4byte 0x00003EDC
_080173DC:
	movs r0, #0xd4
	lsls r0, r0, #3
	add r0, sl
	strb r1, [r0]
	ldrh r1, [r7, #0xc]
	ldr r0, _08017408 @ =0x0000B7E7
	cmp r1, r0
	bne _080173F0
	movs r0, #1
	str r0, [r5]
_080173F0:
	ldr r0, [r5, #0xc]
	cmp r6, r0
	bne _080173FA
	movs r0, #9
	str r0, [r5, #0x1c]
_080173FA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017408: .4byte 0x0000B7E7

	thumb_func_start sub_801740C
sub_801740C: @ 0x0801740C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r4, #0
	movs r5, #0
	movs r3, #0xd4
	lsls r3, r3, #3
	add r3, r8
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0801745A
	movs r2, #0
	movs r7, #0x80
	lsls r7, r7, #1
	movs r6, #1
_08017430:
	adds r0, r7, #0
	lsls r0, r2
	ands r0, r1
	cmp r0, #0
	beq _08017448
	adds r4, #1
	adds r0, r6, #0
	lsls r0, r2
	ands r0, r1
	cmp r0, #0
	beq _08017448
	adds r5, #1
_08017448:
	adds r2, #1
	cmp r2, #3
	ble _08017430
	cmp r4, r5
	bne _0801745A
	cmp r4, #2
	bne _0801745A
	movs r0, #0
	b _0801745E
_0801745A:
	ldrb r0, [r3, #3]
	adds r0, #1
_0801745E:
	strb r0, [r3, #3]
	ldrb r0, [r3, #3]
	cmp r0, #0
	bne _0801746A
	movs r0, #0
	b _08017494
_0801746A:
	cmp r0, #0x78
	bls _08017492
	bl sub_8012388
	ldr r1, _080174A0 @ =0x000006A1
	add r1, r8
	movs r4, #0
	movs r0, #0x40
	strb r0, [r1]
	movs r3, #0xe
	ldr r2, _080174A4 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1]
	strb r0, [r1, #1]
	ldr r0, [r2]
	strb r3, [r0]
	ldr r0, [r2]
	strb r4, [r0, #2]
	ldr r0, [r2]
	str r4, [r0, #4]
_08017492:
	movs r0, #1
_08017494:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080174A0: .4byte 0x000006A1
_080174A4: .4byte 0x03000190

	thumb_func_start sub_80174A8
sub_80174A8: @ 0x080174A8
	adds r2, r0, #0
	movs r3, #0
	movs r1, #3
	adds r0, #0x24
_080174B0:
	strh r3, [r0]
	subs r0, #8
	subs r1, #1
	cmp r1, #0
	bge _080174B0
	movs r1, #0
	movs r0, #0x40
	strb r0, [r2, #1]
	strb r1, [r2, #3]
	adds r0, r2, #0
	adds r0, #0x2d
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_80174DC
sub_80174DC: @ 0x080174DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r0, #0xd4
	lsls r0, r0, #3
	adds r4, r7, r0
	ldrb r1, [r4, #1]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080174FE
	movs r0, #0x80
	lsls r0, r0, #1
	b _08017556
_080174FE:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08017510
	ldr r0, _0801750C @ =0x00000201
	b _08017556
	.align 2, 0
_0801750C: .4byte 0x00000201
_08017510:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08017520
	ldr r0, _0801751C @ =0x00000202
	b _08017556
	.align 2, 0
_0801751C: .4byte 0x00000202
_08017520:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08017530
	ldr r0, _0801752C @ =0x00000401
	b _08017556
	.align 2, 0
_0801752C: .4byte 0x00000401
_08017530:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08017540
	ldr r0, _0801753C @ =0x00000402
	b _08017556
	.align 2, 0
_0801753C: .4byte 0x00000402
_08017540:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801754E
	movs r0, #0x80
	lsls r0, r0, #4
	b _08017556
_0801754E:
	movs r0, #0x40
	ands r0, r1
	movs r0, #0x80
	lsls r0, r0, #6
_08017556:
	strh r0, [r4, #4]
	adds r0, r4, #4
	adds r5, r4, #0
	adds r5, #0xc
	adds r1, r5, #0
	movs r2, #0
	bl sub_8011EE0
	mov sl, r0
	ldr r0, _080175B0 @ =0x04000200
	ldrh r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r1, r0
	movs r0, #0
	bl irq_updateMask
	bl sub_8012370
	adds r6, r4, #0
	adds r6, #0x31
	ldrb r0, [r6]
	mov sb, r5
	mov r8, r6
	cmp r0, #0
	bne _0801758C
	b _08017730
_0801758C:
	subs r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801767A
	ldrb r1, [r4, #1]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0801767A
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080175B4
	movs r0, #0x40
	b _08017678
	.align 2, 0
_080175B0: .4byte 0x04000200
_080175B4:
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _080175C4
	movs r0, #0x40
	b _08017678
_080175C4:
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	beq _080175F0
	adds r0, r4, #0
	adds r0, #0x2f
	strb r5, [r0]
	ldrb r1, [r4, #1]
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r4, #1]
	ldrb r0, [r4]
	cmp r0, #0
	beq _080175EC
	adds r0, r7, #0
	adds r0, #0x28
	strb r3, [r0]
	b _08017646
_080175EC:
	strb r0, [r7, #0x1c]
	b _0801760E
_080175F0:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801766C
	adds r0, r4, #0
	adds r0, #0x30
	strb r5, [r0]
	ldrb r1, [r4, #1]
	movs r0, #0xef
	ands r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4]
	cmp r1, #0
	beq _08017640
	strb r2, [r7, #0x1c]
_0801760E:
	adds r0, r7, #0
	adds r0, #0x28
	ldrb r5, [r0]
	cmp r5, #0
	bne _0801767A
	movs r0, #0x40
	strb r0, [r4, #1]
	movs r3, #0x12
	ldr r2, _0801763C @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1]
	strb r0, [r1, #1]
	ldr r0, [r2]
	strb r3, [r0]
	ldr r0, [r2]
	strb r5, [r0, #2]
	ldr r0, [r2]
	str r5, [r0, #4]
	movs r0, #0x65
	bl m4aSongNumStart
	b _0801767A
	.align 2, 0
_0801763C: .4byte 0x03000190
_08017640:
	adds r0, r7, #0
	adds r0, #0x28
	strb r1, [r0]
_08017646:
	ldrb r5, [r7, #0x1c]
	cmp r5, #0
	bne _0801767A
	movs r0, #0x40
	strb r0, [r4, #1]
	movs r3, #0x12
	ldr r2, _08017668 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1]
	strb r0, [r1, #1]
	ldr r0, [r2]
	strb r3, [r0]
	ldr r0, [r2]
	strb r5, [r0, #2]
	ldr r0, [r2]
	str r5, [r0, #4]
	b _0801767A
	.align 2, 0
_08017668: .4byte 0x03000190
_0801766C:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801767A
	movs r0, #0xdf
	ands r0, r1
_08017678:
	strb r0, [r4, #1]
_0801767A:
	adds r0, r7, #0
	mov r1, sl
	bl sub_801740C
	cmp r0, #0
	beq _08017688
	b _080178AE
_08017688:
	ldrb r0, [r4]
	movs r1, #1
	subs r1, r1, r0
	lsls r1, r1, #3
	add r1, sb
	lsls r0, r0, #3
	mov r3, sb
	adds r2, r3, r0
	ldrh r0, [r1]
	ldrh r1, [r2]
	cmp r0, r1
	bhi _080176A2
	b _080178AE
_080176A2:
	ldrh r1, [r2]
	ldr r0, _080176B8 @ =0x00000202
	cmp r1, r0
	beq _080176E2
	cmp r1, r0
	bgt _080176BC
	subs r0, #1
	cmp r1, r0
	beq _080176D0
	b _080178AE
	.align 2, 0
_080176B8: .4byte 0x00000202
_080176BC:
	ldr r0, _080176CC @ =0x00000401
	cmp r1, r0
	beq _080176FC
	adds r0, #1
	cmp r1, r0
	beq _08017716
	b _080178AE
	.align 2, 0
_080176CC: .4byte 0x00000401
_080176D0:
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r2, [r0]
	cmp r2, #0
	beq _080176DC
	b _080178AE
_080176DC:
	ldrb r1, [r4, #1]
	movs r0, #2
	b _08017726
_080176E2:
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r2, [r0]
	cmp r2, #0
	beq _080176EE
	b _080178AE
_080176EE:
	ldrb r1, [r4, #1]
	movs r0, #4
	orrs r0, r1
	strb r0, [r4, #1]
	mov r0, r8
	strb r2, [r0]
	b _080178AE
_080176FC:
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r2, [r0]
	cmp r2, #0
	beq _08017708
	b _080178AE
_08017708:
	ldrb r1, [r4, #1]
	movs r0, #8
	orrs r0, r1
	strb r0, [r4, #1]
	mov r1, r8
	strb r2, [r1]
	b _080178AE
_08017716:
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r2, [r0]
	cmp r2, #0
	beq _08017722
	b _080178AE
_08017722:
	ldrb r1, [r4, #1]
	movs r0, #0x10
_08017726:
	orrs r0, r1
	strb r0, [r4, #1]
	mov r3, r8
	strb r2, [r3]
	b _080178AE
_08017730:
	adds r0, r7, #0
	mov r1, sl
	bl sub_801740C
	cmp r0, #0
	beq _0801773E
	b _080178AE
_0801773E:
	ldrb r0, [r4]
	movs r3, #1
	subs r1, r3, r0
	lsls r1, r1, #3
	adds r1, r5, r1
	lsls r0, r0, #3
	adds r2, r5, r0
	ldrh r0, [r1]
	ldrh r1, [r2]
	cmp r0, r1
	bls _080177F0
	ldrh r1, [r2]
	ldr r0, _08017774 @ =0x00000401
	cmp r1, r0
	beq _080177CC
	cmp r1, r0
	bgt _08017788
	ldr r0, _08017778 @ =0x00000201
	cmp r1, r0
	beq _080177AA
	cmp r1, r0
	bgt _0801777C
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _080177A4
	b _080178AE
	.align 2, 0
_08017774: .4byte 0x00000401
_08017778: .4byte 0x00000201
_0801777C:
	ldr r0, _08017784 @ =0x00000202
	cmp r1, r0
	beq _080177BC
	b _080178AE
	.align 2, 0
_08017784: .4byte 0x00000202
_08017788:
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	bne _08017792
	b _080178AE
_08017792:
	cmp r1, r0
	ble _08017798
	b _080178AE
_08017798:
	ldr r0, _080177A0 @ =0x00000402
	cmp r1, r0
	beq _080177DC
	b _080178AE
	.align 2, 0
_080177A0: .4byte 0x00000402
_080177A4:
	ldrb r1, [r4, #1]
	movs r0, #1
	b _080177EA
_080177AA:
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _080177B6
	b _080178AE
_080177B6:
	ldrb r1, [r4, #1]
	movs r0, #2
	b _080177EA
_080177BC:
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	bne _080178AE
	ldrb r1, [r4, #1]
	movs r0, #4
	b _080177EA
_080177CC:
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080178AE
	ldrb r1, [r4, #1]
	movs r0, #8
	b _080177EA
_080177DC:
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _080178AE
	ldrb r1, [r4, #1]
	movs r0, #0x10
_080177EA:
	orrs r0, r1
	strb r0, [r4, #1]
	b _080178AE
_080177F0:
	ldrh r0, [r4, #0xc]
	ldrh r1, [r4, #0x14]
	cmp r0, r1
	bne _080178AE
	adds r1, r0, #0
	ldr r0, _08017818 @ =0x00000401
	cmp r1, r0
	beq _0801788C
	cmp r1, r0
	bgt _08017820
	ldr r0, _0801781C @ =0x00000201
	cmp r1, r0
	beq _08017838
	cmp r1, r0
	ble _080178AE
	adds r0, #1
	cmp r1, r0
	beq _08017850
	b _080178AE
	.align 2, 0
_08017818: .4byte 0x00000401
_0801781C: .4byte 0x00000201
_08017820:
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	beq _080178A4
	cmp r1, r0
	bgt _080178AE
	ldr r0, _08017834 @ =0x00000402
	cmp r1, r0
	beq _08017898
	b _080178AE
	.align 2, 0
_08017834: .4byte 0x00000402
_08017838:
	adds r1, r4, #0
	adds r1, #0x2d
	ldrb r0, [r1]
	cmp r0, #0
	bne _080178AE
	strb r3, [r1]
	movs r0, #8
	strb r0, [r6]
	ldrb r5, [r4]
	cmp r5, #0
	bne _080178AE
	b _08017866
_08017850:
	adds r0, r4, #0
	adds r0, #0x2e
	ldrb r5, [r0]
	cmp r5, #0
	bne _080178AE
	strb r3, [r0]
	movs r0, #8
	strb r0, [r6]
	ldrb r0, [r4]
	cmp r0, #0
	beq _080178AE
_08017866:
	movs r0, #0x40
	strb r0, [r4, #1]
	movs r3, #0x11
	ldr r2, _08017888 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1]
	strb r0, [r1, #1]
	ldr r0, [r2]
	strb r3, [r0]
	ldr r0, [r2]
	strb r5, [r0, #2]
	ldr r0, [r2]
	str r5, [r0, #4]
	movs r0, #0x65
	bl m4aSongNumStart
	b _080178AE
	.align 2, 0
_08017888: .4byte 0x03000190
_0801788C:
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	cmp r0, #0
	bne _080178AE
	b _080178AA
_08017898:
	adds r0, r4, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	bne _080178AE
	b _080178AA
_080178A4:
	movs r0, #0x65
	bl m4aSongNumStart
_080178AA:
	movs r0, #8
	strb r0, [r6]
_080178AE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80178BC
sub_80178BC: @ 0x080178BC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
	movs r2, #0
	ldr r0, _080178DC @ =0x03000190
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x34
_080178CC:
	ldrb r0, [r1]
	cmp r0, #0
	beq _080178E0
	adds r1, #0xc
	adds r2, #1
	cmp r2, #1
	ble _080178CC
	b _0801790E
	.align 2, 0
_080178DC: .4byte 0x03000190
_080178E0:
	movs r2, #0
	ldr r0, _08017908 @ =0x03000190
	ldr r0, [r0]
	adds r3, r0, #0
	adds r3, #0x29
	adds r1, r0, #0
	adds r1, #0x34
_080178EE:
	ldrb r0, [r1]
	cmp r0, #0
	beq _080178FC
	ldrb r0, [r1, #1]
	ldrb r6, [r3]
	cmp r0, r6
	beq _0801790C
_080178FC:
	adds r1, #0xc
	adds r2, #1
	cmp r2, #1
	ble _080178EE
	b _08017910
	.align 2, 0
_08017908: .4byte 0x03000190
_0801790C:
	strb r2, [r4, #0x10]
_0801790E:
	movs r5, #1
_08017910:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_8017918
sub_8017918: @ 0x08017918
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r4, _08017B60 @ =_080C3A8C
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	ldr r4, _08017B64 @ =_080C3B68
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	ldr r4, _08017B68 @ =_0807CD48
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xe0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuFastSet
	movs r6, #0x80
	lsls r6, r6, #1
	ldr r5, _08017B6C @ =characterPalettes_bin
	movs r4, #7
_08017958:
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, r1, r6
	adds r0, r5, #0
	movs r2, #8
	bl CpuFastSet
	adds r6, #0x20
	movs r0, #0x80
	lsls r0, r0, #2
	adds r5, r5, r0
	subs r4, #1
	cmp r4, #0
	bge _08017958
	movs r0, #1
	bl pltt_getBuffer
	movs r6, #0
	strh r6, [r0]
	ldr r0, _08017B70 @ =_0807D1E8
	ldr r4, _08017B74 @ =0x02010400
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08017B78 @ =0x06004000
	ldr r3, _08017B7C @ =0x80000600
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08017B80 @ =_080A97F8
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08017B84 @ =0x06008000
	ldr r3, _08017B88 @ =0x80000C00
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08017B8C @ =_080A9E2C
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08017B90 @ =0x06009800
	ldr r3, _08017B88 @ =0x80000C00
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08017B94 @ =_080AA56C
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08017B98 @ =0x0600B000
	ldr r3, _08017B88 @ =0x80000C00
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08017B9C @ =_080C3E08
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08017BA0 @ =0x0600C800
	ldr r3, _08017BA4 @ =0x80002400
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08017BA8 @ =_080BB758
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08017BAC @ =0x0600F400
	ldr r3, _08017B7C @ =0x80000600
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08017BB0 @ =_080C41BC
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08017BB4 @ =0x06010000
	ldr r3, _08017BB8 @ =0x80000A00
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08017BBC @ =_080C2FA8
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08017BC0 @ =0x06011800
	ldr r3, _08017BC4 @ =0x80000800
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08017BC8 @ =_080C5130
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08017BCC @ =0x06017000
	ldr r3, _08017BD0 @ =0x80000400
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08017BD4 @ =_080C53CC
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08017BD8 @ =0x06017800
	ldr r3, _08017BD0 @ =0x80000400
	bl dmaq_enqueue
	bl main_frameProc
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08017BDC @ =0x0203EC24
	ldr r2, _08017BE0 @ =0x06013C00
	ldr r3, _08017BE4 @ =0x81000040
	bl dmaq_enqueue
	movs r0, #0
	bl map_clearBuffer
	movs r0, #1
	bl map_clearBuffer
	ldr r4, _08017BE8 @ =_080C4DAC
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	ldr r0, _08017BEC @ =_0807DA94
	ldr r4, _08017BF0 @ =0x02004400
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _08017BF4 @ =_0807DB98
	movs r1, #0x80
	lsls r1, r1, #7
	adds r5, r4, r1
	adds r1, r5, #0
	bl LZ77UnCompWram
	ldr r1, _08017BF8 @ =_080DA688
	movs r0, #0
	bl sub_80142CC
	bl main_frameProc
	movs r0, #1
	bl map_setBufferDirty
	movs r0, #2
	bl map_setBufferDirty
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08017BFC @ =0x06001000
	ldr r3, _08017BD0 @ =0x80000400
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	adds r1, r5, #0
	ldr r2, _08017C00 @ =0x06002000
	ldr r3, _08017BD0 @ =0x80000400
	bl dmaq_enqueue
	movs r0, #1
	bl pltt_setDirtyFlag
	ldr r0, _08017C04 @ =0x000006D4
	adds r1, r7, r0
	ldrh r0, [r1]
	movs r4, #0
	ldr r0, _08017C08 @ =0x00009F40
	strh r0, [r1]
	ldr r0, _08017C0C @ =0x000006D6
	adds r1, r7, r0
	ldrh r0, [r1]
	ldr r0, _08017C10 @ =0x00004008
	strh r0, [r1]
	movs r0, #0xdb
	lsls r0, r0, #3
	adds r1, r7, r0
	ldrh r0, [r1]
	ldr r0, _08017C14 @ =0x00004109
	strh r0, [r1]
	ldr r0, _08017C18 @ =0x000006DA
	adds r1, r7, r0
	ldrh r0, [r1]
	ldr r0, _08017C1C @ =0x00000206
	strh r0, [r1]
	ldr r0, _08017C20 @ =0x000006DC
	adds r1, r7, r0
	ldrh r0, [r1]
	ldr r0, _08017C24 @ =0x00000406
	strh r0, [r1]
	ldr r0, _08017C28 @ =0x000006FE
	adds r1, r7, r0
	ldrh r0, [r1]
	ldr r0, _08017C2C @ =0x0000303F
	strh r0, [r1]
	bl oam_update
	bl main_frameProc
	strb r6, [r7, #0xc]
	movs r0, #2
	str r0, [r7, #0x14]
	str r4, [r7, #0x18]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017B60: .4byte _080C3A8C
_08017B64: .4byte _080C3B68
_08017B68: .4byte _0807CD48
_08017B6C: .4byte characterPalettes_bin
_08017B70: .4byte _0807D1E8
_08017B74: .4byte 0x02010400
_08017B78: .4byte 0x06004000
_08017B7C: .4byte 0x80000600
_08017B80: .4byte _080A97F8
_08017B84: .4byte 0x06008000
_08017B88: .4byte 0x80000C00
_08017B8C: .4byte _080A9E2C
_08017B90: .4byte 0x06009800
_08017B94: .4byte _080AA56C
_08017B98: .4byte 0x0600B000
_08017B9C: .4byte _080C3E08
_08017BA0: .4byte 0x0600C800
_08017BA4: .4byte 0x80002400
_08017BA8: .4byte _080BB758
_08017BAC: .4byte 0x0600F400
_08017BB0: .4byte _080C41BC
_08017BB4: .4byte 0x06010000
_08017BB8: .4byte 0x80000A00
_08017BBC: .4byte _080C2FA8
_08017BC0: .4byte 0x06011800
_08017BC4: .4byte 0x80000800
_08017BC8: .4byte _080C5130
_08017BCC: .4byte 0x06017000
_08017BD0: .4byte 0x80000400
_08017BD4: .4byte _080C53CC
_08017BD8: .4byte 0x06017800
_08017BDC: .4byte 0x0203EC24
_08017BE0: .4byte 0x06013C00
_08017BE4: .4byte 0x81000040
_08017BE8: .4byte _080C4DAC
_08017BEC: .4byte _0807DA94
_08017BF0: .4byte 0x02004400
_08017BF4: .4byte _0807DB98
_08017BF8: .4byte _080DA688
_08017BFC: .4byte 0x06001000
_08017C00: .4byte 0x06002000
_08017C04: .4byte 0x000006D4
_08017C08: .4byte 0x00009F40
_08017C0C: .4byte 0x000006D6
_08017C10: .4byte 0x00004008
_08017C14: .4byte 0x00004109
_08017C18: .4byte 0x000006DA
_08017C1C: .4byte 0x00000206
_08017C20: .4byte 0x000006DC
_08017C24: .4byte 0x00000406
_08017C28: .4byte 0x000006FE
_08017C2C: .4byte 0x0000303F

	thumb_func_start sub_8017C30
sub_8017C30: @ 0x08017C30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r0, _08017FCC @ =0x00000504
	adds r7, r6, r0
	movs r0, #0
	bl map_clearBuffer
	movs r0, #1
	bl map_clearBuffer
	movs r0, #1
	bl map_setBufferDirty
	movs r0, #2
	bl map_setBufferDirty
	bl main_frameProc
	ldr r4, _08017FD0 @ =_08076FF4
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	ldr r4, _08017FD4 @ =_080B2068
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	ldr r4, _08017FD8 @ =_0807CD48
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xe0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuFastSet
	movs r0, #0
	bl pltt_getBuffer
	adds r4, r0, #0
	movs r1, #0x90
	lsls r1, r1, #1
	adds r4, r4, r1
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r1, r3
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #0
	bl pltt_getBuffer
	movs r1, #0
	mov sl, r1
	strh r1, [r0]
	movs r0, #1
	bl pltt_setDirtyFlag
	bl main_frameProc
	ldr r0, _08017FDC @ =_0807D1E8
	ldr r4, _08017FE0 @ =0x02010400
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08017FE4 @ =0x06004000
	ldr r3, _08017FE8 @ =0x80000600
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08017FEC @ =_080B3718
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08017FF0 @ =0x06007C00
	ldr r3, _08017FE8 @ =0x80000600
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08017FF4 @ =_080A97F8
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08017FF8 @ =0x06008000
	ldr r3, _08017FFC @ =0x80000C00
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08018000 @ =_080A9E2C
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08018004 @ =0x06009800
	ldr r3, _08017FFC @ =0x80000C00
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08018008 @ =_080AA56C
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _0801800C @ =0x0600B000
	ldr r3, _08017FFC @ =0x80000C00
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08018010 @ =_08077184
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08018014 @ =0x0600C000
	ldr r3, _08018018 @ =0x80000800
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _0801801C @ =_080776F8
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08018020 @ =0x0600F400
	ldr r3, _08017FE8 @ =0x80000600
	bl dmaq_enqueue
	bl main_frameProc
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08018024 @ =_080ACAFC
	ldr r2, _08018028 @ =0x0600D800
	ldr r3, _08017FE8 @ =0x80000600
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0801802C @ =_080ABEFC
	ldr r2, _08018030 @ =0x0600E400
	ldr r3, _08018034 @ =0x80000400
	mov r8, r3
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08018038 @ =_08063834
	ldr r2, _0801803C @ =0x0600EC00
	ldr r5, _08018040 @ =0x80000200
	adds r3, r5, #0
	bl dmaq_enqueue
	bl main_frameProc
	bl sub_801AF80
	bl main_frameProc
	ldr r0, [r7]
	bl sub_801CFD4
	bl main_frameProc
	ldr r0, _08018044 @ =0x03000190
	mov sb, r0
	ldr r0, [r0]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08017DEA
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08018048 @ =_0807D694
	ldr r2, _0801804C @ =0x06004660
	ldr r3, _08018050 @ =0x80000100
	bl dmaq_enqueue
	bl main_frameProc
_08017DEA:
	ldr r0, _08018054 @ =_08078C5C
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08018058 @ =0x06011000
	mov r3, r8
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _0801805C @ =_080B2F9C
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08018060 @ =0x06014C00
	ldr r3, _08018064 @ =0x80000070
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08018068 @ =_080B25A0
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _0801806C @ =0x06015C00
	mov r3, r8
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08018070 @ =_080B2770
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08018074 @ =0x06016400
	adds r3, r5, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08018078 @ =_080B2858
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _0801807C @ =0x06016C00
	adds r3, r5, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08018080 @ =_080B83A4
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08018084 @ =0x06014600
	adds r3, r5, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08018088 @ =_080B29C4
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _0801808C @ =0x06017000
	adds r3, r5, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08018090 @ =_080B2BC8
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08018094 @ =0x06017800
	adds r3, r5, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08018098 @ =_080B2C38
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _0801809C @ =0x06017C00
	adds r3, r5, #0
	bl dmaq_enqueue
	bl main_frameProc
	mov r3, sb
	ldr r0, [r3]
	adds r0, #0x4c
	bl sub_801D1C4
	ldr r0, _080180A0 @ =0x0600C280
	ldr r1, _080180A4 @ =0x06007CC0
	movs r2, #0x10
	bl CpuFastSet
	bl main_frameProc
	ldr r4, _080180A8 @ =_08079A68
	movs r0, #1
	movs r1, #1
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	ldr r0, [r7]
	ldr r1, [r7, #4]
	bl sub_801D0E4
	bl main_frameProc
	ldr r0, [r7]
	bl sub_801B048
	bl main_frameProc
	ldr r1, [r7]
	ldr r0, [r7, #4]
	adds r0, r1, r0
	cmp r0, #0
	bge _08017F22
	adds r0, #3
_08017F22:
	asrs r0, r0, #2
	bl sub_801D160
	bl main_frameProc
	ldr r0, [r7]
	ldr r1, [r7, #4]
	adds r0, r0, r1
	subs r0, #1
	ldr r1, _080180AC @ =_080DA76C
	bl sub_801D010
	movs r0, #1
	bl map_setBufferDirty
	movs r0, #2
	bl map_setBufferDirty
	bl dmaq_getVBlankDmaQueue
	ldr r4, _080180B0 @ =0x02004400
	adds r1, r4, #0
	ldr r2, _080180B4 @ =0x06001000
	mov r3, r8
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	movs r1, #0x80
	lsls r1, r1, #7
	adds r4, r4, r1
	adds r1, r4, #0
	ldr r2, _080180B8 @ =0x06002000
	mov r3, r8
	bl dmaq_enqueue
	movs r0, #1
	bl pltt_setDirtyFlag
	ldr r3, _080180BC @ =0x000006D6
	adds r1, r6, r3
	ldrh r0, [r1]
	movs r2, #0
	ldr r0, _080180C0 @ =0x00004008
	strh r0, [r1]
	movs r0, #0xdb
	lsls r0, r0, #3
	adds r1, r6, r0
	ldrh r0, [r1]
	ldr r0, _080180C4 @ =0x00004105
	strh r0, [r1]
	adds r3, #4
	adds r1, r6, r3
	ldrh r0, [r1]
	ldr r0, _080180C8 @ =0x0000020A
	strh r0, [r1]
	ldr r0, _080180CC @ =0x000006DC
	adds r1, r6, r0
	ldrh r0, [r1]
	ldr r0, _080180D0 @ =0x00000406
	strh r0, [r1]
	movs r0, #3
	str r0, [r6, #0x14]
	str r2, [r6, #0x18]
	ldr r1, _080180D4 @ =0x000006E6
	adds r0, r6, r1
	ldrh r1, [r0]
	strh r2, [r0]
	adds r3, #0xe
	adds r0, r6, r3
	ldrh r1, [r0]
	strh r2, [r0]
	bl oam_update
	bl main_frameProc
	movs r0, #1
	strb r0, [r6, #0xc]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017FCC: .4byte 0x00000504
_08017FD0: .4byte _08076FF4
_08017FD4: .4byte _080B2068
_08017FD8: .4byte _0807CD48
_08017FDC: .4byte _0807D1E8
_08017FE0: .4byte 0x02010400
_08017FE4: .4byte 0x06004000
_08017FE8: .4byte 0x80000600
_08017FEC: .4byte _080B3718
_08017FF0: .4byte 0x06007C00
_08017FF4: .4byte _080A97F8
_08017FF8: .4byte 0x06008000
_08017FFC: .4byte 0x80000C00
_08018000: .4byte _080A9E2C
_08018004: .4byte 0x06009800
_08018008: .4byte _080AA56C
_0801800C: .4byte 0x0600B000
_08018010: .4byte _08077184
_08018014: .4byte 0x0600C000
_08018018: .4byte 0x80000800
_0801801C: .4byte _080776F8
_08018020: .4byte 0x0600F400
_08018024: .4byte _080ACAFC
_08018028: .4byte 0x0600D800
_0801802C: .4byte _080ABEFC
_08018030: .4byte 0x0600E400
_08018034: .4byte 0x80000400
_08018038: .4byte _08063834
_0801803C: .4byte 0x0600EC00
_08018040: .4byte 0x80000200
_08018044: .4byte 0x03000190
_08018048: .4byte _0807D694
_0801804C: .4byte 0x06004660
_08018050: .4byte 0x80000100
_08018054: .4byte _08078C5C
_08018058: .4byte 0x06011000
_0801805C: .4byte _080B2F9C
_08018060: .4byte 0x06014C00
_08018064: .4byte 0x80000070
_08018068: .4byte _080B25A0
_0801806C: .4byte 0x06015C00
_08018070: .4byte _080B2770
_08018074: .4byte 0x06016400
_08018078: .4byte _080B2858
_0801807C: .4byte 0x06016C00
_08018080: .4byte _080B83A4
_08018084: .4byte 0x06014600
_08018088: .4byte _080B29C4
_0801808C: .4byte 0x06017000
_08018090: .4byte _080B2BC8
_08018094: .4byte 0x06017800
_08018098: .4byte _080B2C38
_0801809C: .4byte 0x06017C00
_080180A0: .4byte 0x0600C280
_080180A4: .4byte 0x06007CC0
_080180A8: .4byte _08079A68
_080180AC: .4byte _080DA76C
_080180B0: .4byte 0x02004400
_080180B4: .4byte 0x06001000
_080180B8: .4byte 0x06002000
_080180BC: .4byte 0x000006D6
_080180C0: .4byte 0x00004008
_080180C4: .4byte 0x00004105
_080180C8: .4byte 0x0000020A
_080180CC: .4byte 0x000006DC
_080180D0: .4byte 0x00000406
_080180D4: .4byte 0x000006E6

	thumb_func_start sub_80180D8
sub_80180D8: @ 0x080180D8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	ldr r4, _08018310 @ =_08076FF4
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	movs r0, #0
	bl pltt_getBuffer
	movs r2, #0xcb
	lsls r2, r2, #1
	adds r1, r0, r2
	ldr r2, _08018314 @ =0x000083FF
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0
	bl pltt_getBuffer
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r2, _08018318 @ =0x000082DF
	adds r1, r2, #0
	strh r1, [r0]
	movs r0, #0
	bl pltt_getBuffer
	movs r2, #0xcd
	lsls r2, r2, #1
	adds r1, r0, r2
	adds r2, #0x65
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0
	bl pltt_getBuffer
	movs r1, #0xce
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r2, _0801831C @ =0x0000827F
	adds r1, r2, #0
	strh r1, [r0]
	movs r0, #0
	bl pltt_getBuffer
	movs r2, #0xcf
	lsls r2, r2, #1
	adds r1, r0, r2
	subs r2, #0x45
	adds r0, r2, #0
	strh r0, [r1]
	ldr r4, _08018320 @ =_080B2068
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	movs r0, #0
	bl map_clearBuffer
	movs r0, #1
	bl map_clearBuffer
	ldr r0, _08018324 @ =_0807DA94
	ldr r6, _08018328 @ =0x02004400
	adds r1, r6, #0
	bl LZ77UnCompWram
	ldr r0, _0801832C @ =_0807DB98
	movs r1, #0x80
	lsls r1, r1, #7
	adds r1, r1, r6
	mov r8, r1
	bl LZ77UnCompWram
	bl main_frameProc
	ldr r0, _08018330 @ =_0807D1E8
	ldr r4, _08018334 @ =0x02010400
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08018338 @ =0x06004000
	ldr r3, _0801833C @ =0x80000600
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08018340 @ =_080B3718
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08018344 @ =0x06007C00
	ldr r3, _0801833C @ =0x80000600
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08018348 @ =_080A97F8
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _0801834C @ =0x06008000
	ldr r3, _08018350 @ =0x80000C00
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08018354 @ =_080A9E2C
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08018358 @ =0x06009800
	ldr r3, _08018350 @ =0x80000C00
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _0801835C @ =_080AA56C
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08018360 @ =0x0600B000
	ldr r3, _08018350 @ =0x80000C00
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08018364 @ =_08077184
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08018368 @ =0x0600C000
	ldr r3, _0801836C @ =0x80000800
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08018370 @ =_080776F8
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08018374 @ =0x0600F400
	ldr r3, _0801833C @ =0x80000600
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08018378 @ =_080B83A4
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _0801837C @ =0x06014600
	ldr r3, _08018380 @ =0x80000200
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08018384 @ =_080B29C4
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08018388 @ =0x06017000
	ldr r3, _08018380 @ =0x80000200
	bl dmaq_enqueue
	bl main_frameProc
	movs r0, #1
	bl map_setBufferDirty
	movs r0, #2
	bl map_setBufferDirty
	bl dmaq_getVBlankDmaQueue
	adds r1, r6, #0
	ldr r2, _0801838C @ =0x06001000
	ldr r3, _08018390 @ =0x80000400
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	mov r1, r8
	ldr r2, _08018394 @ =0x06002000
	ldr r3, _08018390 @ =0x80000400
	bl dmaq_enqueue
	movs r0, #1
	bl pltt_setDirtyFlag
	ldr r2, _08018398 @ =0x000006D6
	adds r1, r5, r2
	ldrh r0, [r1]
	movs r6, #0
	ldr r0, _0801839C @ =0x00004008
	strh r0, [r1]
	movs r0, #0xdb
	lsls r0, r0, #3
	adds r1, r5, r0
	ldrh r0, [r1]
	ldr r0, _080183A0 @ =0x00004109
	strh r0, [r1]
	adds r2, #4
	adds r1, r5, r2
	ldrh r0, [r1]
	ldr r0, _080183A4 @ =0x00000206
	strh r0, [r1]
	ldr r0, _080183A8 @ =0x000006DC
	adds r1, r5, r0
	ldrh r0, [r1]
	ldr r0, _080183AC @ =0x00000406
	strh r0, [r1]
	bl oam_update
	bl main_frameProc
	ldr r4, _080183B0 @ =_08078F8C
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	ldr r1, _080183B4 @ =_080DAB70
	movs r0, #0
	bl sub_80142CC
	movs r0, #1
	bl map_setBufferDirty
	movs r0, #2
	bl map_setBufferDirty
	bl main_frameProc
	movs r0, #2
	strb r0, [r5, #0xc]
	str r0, [r5, #0x14]
	str r6, [r5, #0x18]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08018310: .4byte _08076FF4
_08018314: .4byte 0x000083FF
_08018318: .4byte 0x000082DF
_0801831C: .4byte 0x0000827F
_08018320: .4byte _080B2068
_08018324: .4byte _0807DA94
_08018328: .4byte 0x02004400
_0801832C: .4byte _0807DB98
_08018330: .4byte _0807D1E8
_08018334: .4byte 0x02010400
_08018338: .4byte 0x06004000
_0801833C: .4byte 0x80000600
_08018340: .4byte _080B3718
_08018344: .4byte 0x06007C00
_08018348: .4byte _080A97F8
_0801834C: .4byte 0x06008000
_08018350: .4byte 0x80000C00
_08018354: .4byte _080A9E2C
_08018358: .4byte 0x06009800
_0801835C: .4byte _080AA56C
_08018360: .4byte 0x0600B000
_08018364: .4byte _08077184
_08018368: .4byte 0x0600C000
_0801836C: .4byte 0x80000800
_08018370: .4byte _080776F8
_08018374: .4byte 0x0600F400
_08018378: .4byte _080B83A4
_0801837C: .4byte 0x06014600
_08018380: .4byte 0x80000200
_08018384: .4byte _080B29C4
_08018388: .4byte 0x06017000
_0801838C: .4byte 0x06001000
_08018390: .4byte 0x80000400
_08018394: .4byte 0x06002000
_08018398: .4byte 0x000006D6
_0801839C: .4byte 0x00004008
_080183A0: .4byte 0x00004109
_080183A4: .4byte 0x00000206
_080183A8: .4byte 0x000006DC
_080183AC: .4byte 0x00000406
_080183B0: .4byte _08078F8C
_080183B4: .4byte _080DAB70

	thumb_func_start sub_80183B8
sub_80183B8: @ 0x080183B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r0, _0801854C @ =0x00000524
	adds r0, r0, r7
	mov r8, r0
	ldr r4, _08018550 @ =_080BDF90
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	ldr r4, _08018554 @ =_080BE0C4
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	bl main_frameProc
	ldr r0, _08018558 @ =_080A97F8
	ldr r4, _0801855C @ =0x02010400
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08018560 @ =0x06008000
	ldr r3, _08018564 @ =0x80000C00
	bl dmaq_enqueue
	bl main_frameProc
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08018568 @ =_080ACAFC
	ldr r2, _0801856C @ =0x0600D800
	ldr r3, _08018570 @ =0x80000600
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08018574 @ =_080ABEFC
	ldr r2, _08018578 @ =0x0600E400
	ldr r6, _0801857C @ =0x80000400
	adds r3, r6, #0
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08018580 @ =_08063834
	ldr r2, _08018584 @ =0x0600EC00
	ldr r3, _08018588 @ =0x80000200
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _0801858C @ =_080BE41C
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08018590 @ =0x06009800
	ldr r3, _08018594 @ =0x80000E00
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08018598 @ =_080BC960
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _0801859C @ =0x06010800
	ldr r3, _080185A0 @ =0x80002600
	bl dmaq_enqueue
	bl main_frameProc
	movs r0, #0
	bl map_clearBuffer
	ldr r4, _080185A4 @ =_080BEDDC
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	ldr r0, _080185A8 @ =_080BEF24
	ldr r4, _080185AC @ =0x02004400
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _080185B0 @ =_080BF478
	movs r1, #0x80
	lsls r1, r1, #7
	adds r5, r4, r1
	adds r1, r5, #0
	bl LZ77UnCompWram
	ldr r1, _080185B4 @ =_080DAE50
	movs r0, #0
	bl sub_80142CC
	bl main_frameProc
	movs r0, #1
	bl map_setBufferDirty
	movs r0, #2
	bl map_setBufferDirty
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _080185B8 @ =0x06001000
	adds r3, r6, #0
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	adds r1, r5, #0
	ldr r2, _080185BC @ =0x06002000
	adds r3, r6, #0
	bl dmaq_enqueue
	movs r0, #1
	bl pltt_setDirtyFlag
	bl main_frameProc
	ldr r0, _080185C0 @ =_080BF1CC
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _080185C4 @ =0x06001800
	adds r3, r6, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r2, _080185C8 @ =0x000006D6
	adds r1, r7, r2
	ldrh r0, [r1]
	movs r4, #0
	movs r0, #8
	strh r0, [r1]
	movs r0, #0xdb
	lsls r0, r0, #3
	adds r1, r7, r0
	ldrh r0, [r1]
	ldr r0, _080185CC @ =0x00000109
	strh r0, [r1]
	adds r2, #4
	adds r1, r7, r2
	ldrh r0, [r1]
	ldr r0, _080185D0 @ =0x0000420A
	strh r0, [r1]
	ldr r0, _080185D4 @ =0x000006DC
	adds r1, r7, r0
	ldrh r0, [r1]
	ldr r0, _080185D8 @ =0x0000040B
	strh r0, [r1]
	adds r2, #0x16
	adds r1, r7, r2
	ldrh r0, [r1]
	ldr r0, _080185DC @ =0x00001008
	strh r0, [r1]
	bl oam_update
	bl main_frameProc
	movs r0, #4
	str r0, [r7, #0x14]
	str r4, [r7, #0x18]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _080185E8
	ldr r2, _080185E0 @ =0x000006E6
	adds r1, r7, r2
	ldrh r0, [r1]
	ldr r0, _080185E4 @ =0x0000FFF0
	b _080185F2
	.align 2, 0
_0801854C: .4byte 0x00000524
_08018550: .4byte _080BDF90
_08018554: .4byte _080BE0C4
_08018558: .4byte _080A97F8
_0801855C: .4byte 0x02010400
_08018560: .4byte 0x06008000
_08018564: .4byte 0x80000C00
_08018568: .4byte _080ACAFC
_0801856C: .4byte 0x0600D800
_08018570: .4byte 0x80000600
_08018574: .4byte _080ABEFC
_08018578: .4byte 0x0600E400
_0801857C: .4byte 0x80000400
_08018580: .4byte _08063834
_08018584: .4byte 0x0600EC00
_08018588: .4byte 0x80000200
_0801858C: .4byte _080BE41C
_08018590: .4byte 0x06009800
_08018594: .4byte 0x80000E00
_08018598: .4byte _080BC960
_0801859C: .4byte 0x06010800
_080185A0: .4byte 0x80002600
_080185A4: .4byte _080BEDDC
_080185A8: .4byte _080BEF24
_080185AC: .4byte 0x02004400
_080185B0: .4byte _080BF478
_080185B4: .4byte _080DAE50
_080185B8: .4byte 0x06001000
_080185BC: .4byte 0x06002000
_080185C0: .4byte _080BF1CC
_080185C4: .4byte 0x06001800
_080185C8: .4byte 0x000006D6
_080185CC: .4byte 0x00000109
_080185D0: .4byte 0x0000420A
_080185D4: .4byte 0x000006DC
_080185D8: .4byte 0x0000040B
_080185DC: .4byte 0x00001008
_080185E0: .4byte 0x000006E6
_080185E4: .4byte 0x0000FFF0
_080185E8:
	ldr r2, _08018624 @ =0x000006E6
	adds r1, r7, r2
	ldrh r0, [r1]
	movs r0, #0x88
	lsls r0, r0, #1
_080185F2:
	strh r0, [r1]
	movs r0, #0xdd
	lsls r0, r0, #3
	adds r1, r7, r0
	ldrh r0, [r1]
	movs r0, #0x48
	strh r0, [r1]
	ldr r1, _08018628 @ =0x000006EA
	adds r0, r7, r1
	ldrh r1, [r0]
	movs r1, #0
	strh r1, [r0]
	ldr r2, _0801862C @ =0x000006EC
	adds r0, r7, r2
	ldrh r2, [r0]
	strh r1, [r0]
	bl main_frameProc
	movs r0, #3
	strb r0, [r7, #0xc]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018624: .4byte 0x000006E6
_08018628: .4byte 0x000006EA
_0801862C: .4byte 0x000006EC

	thumb_func_start sub_8018630
sub_8018630: @ 0x08018630
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r6, r0, #0
	mov r8, r1
	adds r7, r2, #0
	ldrb r4, [r6, #2]
	cmp r4, #1
	beq _080186CC
	cmp r4, #1
	bgt _0801864E
	cmp r4, #0
	beq _08018658
	b _0801874C
_0801864E:
	cmp r4, #2
	beq _080186FC
	cmp r4, #3
	beq _0801872C
	b _0801874C
_08018658:
	bl sub_8012388
	ldrb r5, [r6, #0xc]
	cmp r5, #2
	beq _080186AC
	cmp r7, #1
	bne _0801867A
	ldr r0, _0801869C @ =0x000006EE
	adds r1, r6, r0
	ldrh r0, [r1]
	movs r0, #0xbf
	strh r0, [r1]
	ldr r0, _080186A0 @ =0x000006F2
	adds r1, r6, r0
	ldrh r0, [r1]
	movs r0, #0x10
	strh r0, [r1]
_0801867A:
	adds r0, r6, #0
	bl sub_80180D8
	movs r0, #3
	mov r1, r8
	bl sub_80142CC
	ldr r0, _080186A4 @ =0x00000844
	bl sub_801D240
	ldr r2, _080186A8 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldr r0, [r2]
	b _080186BC
	.align 2, 0
_0801869C: .4byte 0x000006EE
_080186A0: .4byte 0x000006F2
_080186A4: .4byte 0x00000844
_080186A8: .4byte 0x03000190
_080186AC:
	movs r0, #3
	mov r1, r8
	bl sub_80142CC
	ldr r0, _080186C8 @ =0x03000190
	ldr r1, [r0]
	strb r5, [r1, #2]
	ldr r0, [r0]
_080186BC:
	str r4, [r0, #4]
	ldr r0, _080186C8 @ =0x03000190
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r1, #0x12]
	b _0801874C
	.align 2, 0
_080186C8: .4byte 0x03000190
_080186CC:
	bl sub_801D28C
	adds r3, r0, #0
	cmp r3, #0
	bne _0801874C
	ldr r0, _080186F0 @ =0x000006EE
	adds r1, r6, r0
	ldrh r0, [r1]
	ldr r0, _080186F4 @ =0x00000844
	strh r0, [r1]
	ldr r2, _080186F8 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldr r0, [r2]
	str r3, [r0, #4]
	b _0801874C
	.align 2, 0
_080186F0: .4byte 0x000006EE
_080186F4: .4byte 0x00000844
_080186F8: .4byte 0x03000190
_080186FC:
	bl main_getTriggerKeys
	movs r1, #9
	ands r1, r0
	cmp r1, #0
	beq _0801874C
	movs r0, #0x8f
	bl m4aSongNumStart
	bl sub_801D274
	ldr r3, _08018728 @ =0x03000190
	ldr r1, [r3]
	ldrb r0, [r1, #2]
	adds r0, #1
	movs r2, #0
	strb r0, [r1, #2]
	ldr r0, [r3]
	str r2, [r0, #4]
	strb r2, [r6, #0x12]
	b _0801874C
	.align 2, 0
_08018728: .4byte 0x03000190
_0801872C:
	bl sub_801D28C
	adds r4, r0, #0
	cmp r4, #0
	bne _0801874C
	movs r3, #0x13
	ldr r2, _08018784 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1]
	strb r0, [r1, #1]
	ldr r0, [r2]
	strb r3, [r0]
	ldr r0, [r2]
	strb r4, [r0, #2]
	ldr r0, [r2]
	str r4, [r0, #4]
_0801874C:
	ldrb r0, [r6, #0x12]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0x12]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _0801875E
	strb r1, [r6, #0x12]
_0801875E:
	ldrb r0, [r6, #0x12]
	cmp r0, #0x13
	bhi _08018778
	ldr r0, _08018788 @ =0x009000D8
	str r0, [sp, #8]
	ldr r0, _0801878C @ =_080C9520
	str r1, [sp]
	str r1, [sp, #4]
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_08018778:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018784: .4byte 0x03000190
_08018788: .4byte 0x009000D8
_0801878C: .4byte _080C9520

	thumb_func_start sub_8018790
sub_8018790: @ 0x08018790
	push {r4, lr}
	ldrb r4, [r0, #2]
	cmp r4, #1
	beq _080187D0
	cmp r4, #1
	bgt _080187A2
	cmp r4, #0
	beq _080187A8
	b _0801880C
_080187A2:
	cmp r4, #2
	beq _080187F0
	b _0801880C
_080187A8:
	movs r0, #0
	bl sub_805D9B8
	strh r4, [r0, #0xa]
	movs r0, #1
	bl sub_805D9B8
	strh r4, [r0, #0xa]
	bl sub_801D25C
	ldr r2, _080187CC @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldr r0, [r2]
	str r4, [r0, #4]
	b _0801880C
	.align 2, 0
_080187CC: .4byte 0x03000190
_080187D0:
	bl sub_801D28C
	adds r3, r0, #0
	cmp r3, #0
	bne _0801880C
	ldr r2, _080187EC @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldr r0, [r2]
	str r3, [r0, #4]
	b _0801880C
	.align 2, 0
_080187EC: .4byte 0x03000190
_080187F0:
	ldr r0, _08018804 @ =error_main
	ldr r2, _08018808 @ =0x03002E20
	str r0, [r2]
	ldrb r0, [r2, #8]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r2, #8]
	movs r0, #1
	b _0801880E
	.align 2, 0
_08018804: .4byte error_main
_08018808: .4byte 0x03002E20
_0801880C:
	movs r0, #0
_0801880E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_8018814
sub_8018814: @ 0x08018814
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	movs r0, #0xd4
	lsls r0, r0, #3
	adds r0, r0, r6
	mov r8, r0
	ldrb r4, [r6, #2]
	cmp r4, #1
	beq _08018890
	cmp r4, #1
	bgt _08018836
	cmp r4, #0
	beq _0801883C
	b _08018962
_08018836:
	cmp r4, #2
	beq _080188B0
	b _08018962
_0801883C:
	ldrb r5, [r6, #0xc]
	cmp r5, #2
	beq _08018870
	adds r0, r6, #0
	bl sub_80180D8
	ldr r1, _08018864 @ =_080DABB4
	movs r0, #3
	bl sub_80142CC
	ldr r0, _08018868 @ =0x00000844
	bl sub_801D240
	ldr r2, _0801886C @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldr r0, [r2]
	b _08018880
	.align 2, 0
_08018864: .4byte _080DABB4
_08018868: .4byte 0x00000844
_0801886C: .4byte 0x03000190
_08018870:
	ldr r1, _08018888 @ =_080DABB4
	movs r0, #3
	bl sub_80142CC
	ldr r1, _0801888C @ =0x03000190
	ldr r0, [r1]
	strb r5, [r0, #2]
	ldr r0, [r1]
_08018880:
	str r4, [r0, #4]
	movs r0, #0
	strb r0, [r6, #0xd]
	b _08018962
	.align 2, 0
_08018888: .4byte _080DABB4
_0801888C: .4byte 0x03000190
_08018890:
	bl sub_801D28C
	adds r3, r0, #0
	cmp r3, #0
	bne _08018962
	ldr r2, _080188AC @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldr r0, [r2]
	str r3, [r0, #4]
	b _08018962
	.align 2, 0
_080188AC: .4byte 0x03000190
_080188B0:
	bl main_getTriggerKeys
	movs r7, #0x30
	ands r7, r0
	cmp r7, #0
	beq _080188CC
	movs r0, #0x8d
	bl m4aSongNumStart
	ldrb r1, [r6, #0xd]
	movs r0, #1
	subs r0, r0, r1
	strb r0, [r6, #0xd]
	b _08018962
_080188CC:
	bl main_getTriggerKeys
	movs r5, #9
	ands r5, r0
	cmp r5, #0
	beq _0801893C
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	bne _08018918
	movs r0, #0x8e
	bl m4aSongNumStart
	mov r2, r8
	ldrb r1, [r2, #1]
	ldrb r0, [r2]
	cmp r0, #0
	beq _080188F2
	movs r0, #8
	b _080188F4
_080188F2:
	movs r0, #0x10
_080188F4:
	orrs r0, r1
	movs r4, #0
	mov r1, r8
	strb r0, [r1, #1]
	movs r3, #9
	ldr r2, _08018914 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1]
	strb r0, [r1, #1]
	ldr r0, [r2]
	strb r3, [r0]
	ldr r0, [r2]
	strb r4, [r0, #2]
	ldr r0, [r2]
	str r4, [r0, #4]
	b _08018962
	.align 2, 0
_08018914: .4byte 0x03000190
_08018918:
	movs r0, #0x8e
	bl m4aSongNumStart
	ldrb r3, [r6, #1]
	ldr r2, _08018938 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1]
	strb r0, [r1, #1]
	ldr r0, [r2]
	strb r3, [r0]
	ldr r0, [r2]
	strb r7, [r0, #2]
	ldr r0, [r2]
	str r7, [r0, #4]
	b _08018962
	.align 2, 0
_08018938: .4byte 0x03000190
_0801893C:
	bl main_getTriggerKeys
	ands r4, r0
	cmp r4, #0
	beq _08018962
	movs r0, #0x90
	bl m4aSongNumStart
	ldrb r3, [r6, #1]
	ldr r2, _080189A0 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1]
	strb r0, [r1, #1]
	ldr r0, [r2]
	strb r3, [r0]
	ldr r0, [r2]
	strb r5, [r0, #2]
	ldr r0, [r2]
	str r5, [r0, #4]
_08018962:
	ldr r0, _080189A4 @ =_080C9488
	ldr r7, _080189A8 @ =_080DA3A4
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	ldr r0, _080189AC @ =_080C9490
	ldr r5, _080189B0 @ =_080DA3A8
	str r4, [sp]
	str r4, [sp, #4]
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	ldrb r3, [r6, #0xd]
	adds r6, r3, #0
	ldr r0, _080189A0 @ =0x03000190
	ldr r0, [r0]
	ldr r1, [r0, #8]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0x13
	bgt _080189B8
	ldr r0, _080189B4 @ =_080C9498
	b _080189C2
	.align 2, 0
_080189A0: .4byte 0x03000190
_080189A4: .4byte _080C9488
_080189A8: .4byte _080DA3A4
_080189AC: .4byte _080C9490
_080189B0: .4byte _080DA3A8
_080189B4: .4byte _080C9498
_080189B8:
	movs r2, #0x20
	ands r2, r1
	cmp r2, #0
	beq _080189DC
	ldr r0, _080189D8 @ =_080C94A8
_080189C2:
	adds r1, r5, #0
	cmp r3, #0
	bne _080189CA
	adds r1, r7, #0
_080189CA:
	str r4, [sp]
	str r4, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	b _080189F2
	.align 2, 0
_080189D8: .4byte _080C94A8
_080189DC:
	ldr r0, _08018A00 @ =_080C94B8
	adds r1, r5, #0
	cmp r6, #0
	bne _080189E6
	adds r1, r7, #0
_080189E6:
	str r2, [sp]
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_080189F2:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018A00: .4byte _080C94B8

	thumb_func_start sub_8018A04
sub_8018A04: @ 0x08018A04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	ldrb r4, [r7, #2]
	cmp r4, #1
	beq _08018A80
	cmp r4, #1
	bgt _08018A1E
	cmp r4, #0
	beq _08018A2A
	b _08018B60
_08018A1E:
	cmp r4, #2
	beq _08018AA0
	cmp r4, #3
	bne _08018A28
	b _08018B3C
_08018A28:
	b _08018B60
_08018A2A:
	ldrb r5, [r7, #0xc]
	cmp r5, #2
	beq _08018A60
	adds r0, r7, #0
	bl sub_80180D8
	ldr r1, _08018A54 @ =_080DB048
	movs r0, #3
	bl sub_80142CC
	ldr r0, _08018A58 @ =0x00000844
	bl sub_801D240
	ldr r2, _08018A5C @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldr r0, [r2]
	b _08018A70
	.align 2, 0
_08018A54: .4byte _080DB048
_08018A58: .4byte 0x00000844
_08018A5C: .4byte 0x03000190
_08018A60:
	ldr r1, _08018A78 @ =_080DB048
	movs r0, #3
	bl sub_80142CC
	ldr r1, _08018A7C @ =0x03000190
	ldr r0, [r1]
	strb r5, [r0, #2]
	ldr r0, [r1]
_08018A70:
	str r4, [r0, #4]
	movs r0, #1
	strb r0, [r7, #0xd]
	b _08018B60
	.align 2, 0
_08018A78: .4byte _080DB048
_08018A7C: .4byte 0x03000190
_08018A80:
	bl sub_801D28C
	adds r3, r0, #0
	cmp r3, #0
	bne _08018B60
	ldr r2, _08018A9C @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldr r0, [r2]
	str r3, [r0, #4]
	b _08018B60
	.align 2, 0
_08018A9C: .4byte 0x03000190
_08018AA0:
	bl main_getTriggerKeys
	movs r6, #0x30
	ands r6, r0
	cmp r6, #0
	beq _08018ABC
	movs r0, #0x8d
	bl m4aSongNumStart
	ldrb r1, [r7, #0xd]
	movs r0, #1
	subs r0, r0, r1
	strb r0, [r7, #0xd]
	b _08018B60
_08018ABC:
	bl main_getTriggerKeys
	movs r5, #9
	ands r5, r0
	cmp r5, #0
	beq _08018B10
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne _08018AEC
	movs r0, #0x8f
	bl m4aSongNumStart
	ldr r2, _08018AE8 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldr r0, [r2]
	str r6, [r0, #4]
	bl sub_801D25C
	b _08018B60
	.align 2, 0
_08018AE8: .4byte 0x03000190
_08018AEC:
	movs r0, #0x8e
	bl m4aSongNumStart
	movs r3, #0x10
	ldr r2, _08018B0C @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1]
	strb r0, [r1, #1]
	ldr r0, [r2]
	strb r3, [r0]
	ldr r0, [r2]
	strb r6, [r0, #2]
	ldr r0, [r2]
	str r6, [r0, #4]
	b _08018B60
	.align 2, 0
_08018B0C: .4byte 0x03000190
_08018B10:
	bl main_getTriggerKeys
	ands r4, r0
	cmp r4, #0
	beq _08018B60
	movs r0, #0x90
	bl m4aSongNumStart
	movs r3, #0x10
	ldr r2, _08018B38 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1]
	strb r0, [r1, #1]
	ldr r0, [r2]
	strb r3, [r0]
	ldr r0, [r2]
	strb r5, [r0, #2]
	ldr r0, [r2]
	str r5, [r0, #4]
	b _08018B60
	.align 2, 0
_08018B38: .4byte 0x03000190
_08018B3C:
	bl sub_801D28C
	adds r4, r0, #0
	cmp r4, #0
	bne _08018B60
	movs r0, #0x8e
	bl m4aSongNumStart
	ldr r2, _08018B9C @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1]
	strb r0, [r1, #1]
	ldr r0, [r2]
	strb r4, [r0]
	ldr r0, [r2]
	strb r4, [r0, #2]
	ldr r0, [r2]
	str r4, [r0, #4]
_08018B60:
	ldr r0, _08018BA0 @ =_080C9488
	ldr r1, _08018BA4 @ =_080DA3A4
	mov r8, r1
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	ldr r0, _08018BA8 @ =_080C9490
	ldr r5, _08018BAC @ =_080DA3A8
	str r4, [sp]
	str r4, [sp, #4]
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	ldrb r3, [r7, #0xd]
	adds r6, r3, #0
	ldr r0, _08018B9C @ =0x03000190
	ldr r0, [r0]
	ldr r1, [r0, #8]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0x13
	bgt _08018BB4
	ldr r0, _08018BB0 @ =_080C9498
	b _08018BBE
	.align 2, 0
_08018B9C: .4byte 0x03000190
_08018BA0: .4byte _080C9488
_08018BA4: .4byte _080DA3A4
_08018BA8: .4byte _080C9490
_08018BAC: .4byte _080DA3A8
_08018BB0: .4byte _080C9498
_08018BB4:
	movs r2, #0x20
	ands r2, r1
	cmp r2, #0
	beq _08018BD8
	ldr r0, _08018BD4 @ =_080C94A8
_08018BBE:
	adds r1, r5, #0
	cmp r3, #0
	bne _08018BC6
	mov r1, r8
_08018BC6:
	str r4, [sp]
	str r4, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	b _08018BEE
	.align 2, 0
_08018BD4: .4byte _080C94A8
_08018BD8:
	ldr r0, _08018BFC @ =_080C94B8
	adds r1, r5, #0
	cmp r6, #0
	bne _08018BE2
	mov r1, r8
_08018BE2:
	str r2, [sp]
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_08018BEE:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018BFC: .4byte _080C94B8

	thumb_func_start sub_8018C00
sub_8018C00: @ 0x08018C00
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldrb r4, [r7, #2]
	cmp r4, #1
	beq _08018C4C
	cmp r4, #1
	bgt _08018C14
	cmp r4, #0
	beq _08018C1A
	b _08018D4A
_08018C14:
	cmp r4, #2
	beq _08018C68
	b _08018D4A
_08018C1A:
	adds r0, r7, #0
	bl sub_80180D8
	ldr r1, _08018C40 @ =_080DAEE4
	movs r0, #3
	bl sub_80142CC
	ldr r0, _08018C44 @ =0x00000844
	bl sub_801D240
	ldr r2, _08018C48 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldr r0, [r2]
	str r4, [r0, #4]
	b _08018D4A
	.align 2, 0
_08018C40: .4byte _080DAEE4
_08018C44: .4byte 0x00000844
_08018C48: .4byte 0x03000190
_08018C4C:
	bl sub_801D28C
	adds r3, r0, #0
	cmp r3, #0
	bne _08018D4A
	ldr r2, _08018C64 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldr r0, [r2]
	b _08018D48
	.align 2, 0
_08018C64: .4byte 0x03000190
_08018C68:
	bl save_getSavePointer_805D9B0
	adds r4, r0, #0
	movs r0, #0
	bl sub_805D9B8
	adds r5, r0, #0
	ldr r0, _08018D08 @ =0x02021400
	ldr r2, _08018D0C @ =0xFFFFF000
	adds r1, r0, r2
	movs r2, #0x80
	lsls r2, r2, #4
	bl CpuSet
	ldrb r1, [r5, #8]
	movs r0, #0x20
	movs r6, #0
	orrs r0, r1
	strb r0, [r5, #8]
	movs r3, #0xbf
	lsls r3, r3, #4
	adds r4, r4, r3
	movs r0, #1
	ldrb r1, [r7, #0x11]
	lsls r0, r1
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
	bl oam_update
	bl main_frameProc
	bl save_getSavePointer_805D9B0
	movs r2, #0xbf
	lsls r2, r2, #4
	adds r0, r0, r2
	ldrh r2, [r0]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r3, #0
	orrs r1, r2
	strh r1, [r0]
	bl sub_805D12C
	adds r4, r0, #0
	bl save_getSavePointer_805D9B0
	movs r1, #0xbf
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrh r2, [r0]
	ldr r1, _08018D10 @ =0x00007FFF
	ands r1, r2
	strh r1, [r0]
	movs r0, #0
	bl sub_805D9B8
	adds r0, #8
	strh r6, [r0, #2]
	movs r0, #1
	bl sub_805D9B8
	adds r0, #8
	strh r6, [r0, #2]
	str r6, [r7, #8]
_08018CEC:
	bl main_frameProc
	ldr r0, [r7, #8]
	adds r0, #1
	str r0, [r7, #8]
	cmp r0, #0x3b
	ble _08018CEC
	cmp r4, #0
	beq _08018D18
	ldr r1, _08018D14 @ =_080DAF98
	movs r0, #3
	bl sub_80142CC
	b _08018D20
	.align 2, 0
_08018D08: .4byte 0x02021400
_08018D0C: .4byte 0xFFFFF000
_08018D10: .4byte 0x00007FFF
_08018D14: .4byte _080DAF98
_08018D18:
	ldr r1, _08018D50 @ =_080DAFEC
	movs r0, #3
	bl sub_80142CC
_08018D20:
	movs r0, #0
	str r0, [r7, #8]
_08018D24:
	bl main_frameProc
	ldr r0, [r7, #8]
	adds r0, #1
	str r0, [r7, #8]
	cmp r0, #0x77
	ble _08018D24
	movs r4, #0xc
	ldr r1, _08018D54 @ =0x03000190
	ldr r0, [r1]
	ldrb r2, [r0]
	movs r3, #0
	strb r2, [r0, #1]
	ldr r0, [r1]
	strb r4, [r0]
	ldr r0, [r1]
	strb r3, [r0, #2]
	ldr r0, [r1]
_08018D48:
	str r3, [r0, #4]
_08018D4A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018D50: .4byte _080DAFEC
_08018D54: .4byte 0x03000190

	thumb_func_start sub_8018D58
sub_8018D58: @ 0x08018D58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r6, #0
	ldr r1, _08018E08 @ =_080DA530
	mov sl, r1
	ldr r7, [r1]
	str r7, [sp]
	ldr r1, _08018E0C @ =0x000001FF
	mov sb, r1
	movs r7, #0x80
	lsls r7, r7, #1
	mov ip, r7
	movs r1, #0xff
	mov r8, r1
	ldr r7, _08018E10 @ =0x0000058C
	adds r5, r0, r7
	ldr r1, _08018E14 @ =0x00000524
	adds r3, r0, r1
_08018D84:
	movs r1, #0x16
	subs r1, r1, r6
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r2, r0, #1
	ldr r7, [sp]
	adds r4, r2, r7
	ldrh r0, [r4, #4]
	mov r1, sb
	ands r1, r0
	adds r0, r1, #0
	mov r7, ip
	ands r0, r7
	cmp r0, #0
	beq _08018DA8
	movs r0, #0xfe
	lsls r0, r0, #8
	orrs r1, r0
_08018DA8:
	adds r0, r1, #0
	adds r0, #0x80
	strh r0, [r5]
	mov r1, sl
	ldr r0, [r1, #4]
	adds r2, r2, r0
	ldrh r0, [r2, #4]
	mov r1, sb
	ands r1, r0
	adds r0, r1, #0
	mov r7, ip
	ands r0, r7
	cmp r0, #0
	beq _08018DCA
	movs r0, #0xfe
	lsls r0, r0, #8
	orrs r1, r0
_08018DCA:
	adds r1, #0x80
	adds r0, r3, #0
	adds r0, #0x6c
	strh r1, [r0]
	ldrh r1, [r4, #2]
	mov r0, r8
	ands r0, r1
	adds r0, #0x58
	adds r1, r3, #0
	adds r1, #0x6a
	strh r0, [r1]
	ldrh r1, [r2, #2]
	mov r0, r8
	ands r0, r1
	adds r0, #0x58
	adds r1, r3, #0
	adds r1, #0x6e
	strh r0, [r1]
	adds r5, #0xc
	adds r3, #0xc
	adds r6, #1
	cmp r6, #0x16
	ble _08018D84
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018E08: .4byte _080DA530
_08018E0C: .4byte 0x000001FF
_08018E10: .4byte 0x0000058C
_08018E14: .4byte 0x00000524

	thumb_func_start sub_8018E18
sub_8018E18: @ 0x08018E18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r6, #0
	ldr r1, _08018EC8 @ =_080DA530
	mov sl, r1
	ldr r7, [r1, #4]
	str r7, [sp]
	ldr r1, _08018ECC @ =0x000001FF
	mov sb, r1
	movs r7, #0x80
	lsls r7, r7, #1
	mov ip, r7
	movs r1, #0xff
	mov r8, r1
	ldr r7, _08018ED0 @ =0x0000058C
	adds r5, r0, r7
	ldr r1, _08018ED4 @ =0x00000524
	adds r3, r0, r1
_08018E44:
	movs r1, #0x16
	subs r1, r1, r6
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r2, r0, #1
	ldr r7, [sp]
	adds r4, r2, r7
	ldrh r0, [r4, #4]
	mov r1, sb
	ands r1, r0
	adds r0, r1, #0
	mov r7, ip
	ands r0, r7
	cmp r0, #0
	beq _08018E68
	movs r0, #0xfe
	lsls r0, r0, #8
	orrs r1, r0
_08018E68:
	adds r0, r1, #0
	adds r0, #0x80
	strh r0, [r5]
	mov r1, sl
	ldr r0, [r1, #8]
	adds r2, r2, r0
	ldrh r0, [r2, #4]
	mov r1, sb
	ands r1, r0
	adds r0, r1, #0
	mov r7, ip
	ands r0, r7
	cmp r0, #0
	beq _08018E8A
	movs r0, #0xfe
	lsls r0, r0, #8
	orrs r1, r0
_08018E8A:
	adds r1, #0x80
	adds r0, r3, #0
	adds r0, #0x6c
	strh r1, [r0]
	ldrh r1, [r4, #2]
	mov r0, r8
	ands r0, r1
	adds r0, #0x58
	adds r1, r3, #0
	adds r1, #0x6a
	strh r0, [r1]
	ldrh r1, [r2, #2]
	mov r0, r8
	ands r0, r1
	adds r0, #0x58
	adds r1, r3, #0
	adds r1, #0x6e
	strh r0, [r1]
	adds r5, #0xc
	adds r3, #0xc
	adds r6, #1
	cmp r6, #0x16
	ble _08018E44
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018EC8: .4byte _080DA530
_08018ECC: .4byte 0x000001FF
_08018ED0: .4byte 0x0000058C
_08018ED4: .4byte 0x00000524

	thumb_func_start sub_8018ED8
sub_8018ED8: @ 0x08018ED8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r1, [sp, #8]
	ldr r1, _08018FA8 @ =0x00000524
	adds r1, r0, r1
	str r1, [sp, #0x10]
	movs r2, #0x16
	str r2, [sp, #0xc]
	ldr r3, _08018FAC @ =0x00000694
	adds r4, r0, r3
	ldr r1, _08018FB0 @ =0x0000062C
	adds r6, r0, r1
	adds r2, #0xf2
	str r2, [sp, #0x14]
_08018EFC:
	ldr r1, _08018FB4 @ =_080DA530
	ldr r0, [sp, #0xc]
	adds r0, #3
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov sl, r0
	cmp r0, #0
	beq _08018F82
	ldr r3, [sp, #0x10]
	ldr r0, [r3, #0x64]
	adds r0, #1
	movs r1, #0
	ldrsh r5, [r4, r1]
	movs r3, #2
	ldrsh r2, [r4, r3]
	mov r8, r2
	movs r1, #4
	ldrsh r7, [r4, r1]
	movs r3, #6
	ldrsh r2, [r4, r3]
	mov sb, r2
	lsls r0, r0, #0xe
	ldr r1, [sp, #8]
	bl __divsi3
	ldr r1, _08018FB8 @ =gSinTable
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _08018F3E
	adds r0, #0x3f
_08018F3E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r3, r0, r1
	ldr r1, [r3]
	subs r0, r7, r5
	muls r0, r1, r0
	asrs r0, r0, #0xf
	adds r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x70
	movs r5, #0
	strh r0, [r1]
	ldr r1, [r3]
	mov r2, sb
	mov r3, r8
	subs r0, r2, r3
	muls r0, r1, r0
	asrs r0, r0, #0xf
	add r0, r8
	adds r2, r6, #0
	adds r2, #0x72
	strh r0, [r2]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	adds r1, r0, r2
	adds r1, #0x70
	str r5, [sp]
	str r5, [sp, #4]
	mov r0, sl
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_08018F82:
	subs r4, #0xc
	subs r6, #0xc
	ldr r3, [sp, #0x14]
	subs r3, #0xc
	str r3, [sp, #0x14]
	ldr r0, [sp, #0xc]
	subs r0, #1
	str r0, [sp, #0xc]
	cmp r0, #0
	bge _08018EFC
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018FA8: .4byte 0x00000524
_08018FAC: .4byte 0x00000694
_08018FB0: .4byte 0x0000062C
_08018FB4: .4byte _080DA530
_08018FB8: .4byte gSinTable

	thumb_func_start sub_8018FBC
sub_8018FBC: @ 0x08018FBC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov sb, r0
	ldr r5, _08018FDC @ =0x00000524
	add r5, sb
	ldr r4, [r5, #0x60]
	cmp r4, #1
	beq _08019004
	cmp r4, #1
	bgt _08018FE0
	cmp r4, #0
	beq _08018FEA
	b _0801907E
	.align 2, 0
_08018FDC: .4byte 0x00000524
_08018FE0:
	cmp r4, #2
	beq _08019050
	cmp r4, #3
	beq _0801906C
	b _0801907E
_08018FEA:
	mov r0, sb
	movs r1, #0x10
	bl sub_8018ED8
	ldr r0, [r5, #0x64]
	adds r0, #1
	str r0, [r5, #0x64]
	cmp r0, #0x10
	ble _0801907E
	movs r0, #1
	str r0, [r5, #0x60]
	str r4, [r5, #0x64]
	b _0801907E
_08019004:
	movs r7, #0x16
	ldr r0, _08019048 @ =_080DA530
	ldr r4, _0801904C @ =0x0000069C
	add r4, sb
	adds r6, r0, #0
	adds r6, #0x64
	movs r0, #0
	mov r8, r0
_08019014:
	ldr r0, [r6]
	cmp r0, #0
	beq _0801902A
	mov r1, r8
	str r1, [sp]
	str r1, [sp, #4]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_0801902A:
	subs r4, #0xc
	subs r6, #4
	subs r7, #1
	cmp r7, #0
	bge _08019014
	ldr r0, [r5, #0x64]
	adds r0, #1
	str r0, [r5, #0x64]
	cmp r0, #4
	ble _0801907E
	mov r0, sb
	bl sub_8018E18
	movs r0, #2
	b _08019064
	.align 2, 0
_08019048: .4byte _080DA530
_0801904C: .4byte 0x0000069C
_08019050:
	mov r0, sb
	movs r1, #8
	bl sub_8018ED8
	ldr r0, [r5, #0x64]
	adds r0, #1
	str r0, [r5, #0x64]
	cmp r0, #8
	ble _0801907E
	movs r0, #3
_08019064:
	str r0, [r5, #0x60]
	movs r0, #0
	str r0, [r5, #0x64]
	b _0801907E
_0801906C:
	ldr r0, _08019090 @ =_080DA530
	ldr r0, [r0, #8]
	ldr r1, _08019094 @ =_080DA598
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r3, #0
	bl oam_renderCellData
_0801907E:
	movs r0, #0
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08019090: .4byte _080DA530
_08019094: .4byte _080DA598

	thumb_func_start sub_8019098
sub_8019098: @ 0x08019098
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, _080190EC @ =0x00000524
	adds r3, r6, r0
	ldr r0, [r6, #8]
	ldr r2, _080190F0 @ =gSinTable
	lsls r0, r0, #0x1c
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _080190B8
	adds r0, #0x3f
_080190B8:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r0, r0, #5
	asrs r2, r0, #0xf
	adds r7, r2, #0
	adds r7, #0xe0
	movs r0, #0x90
	lsls r0, r0, #1
	subs r0, r0, r2
	mov r8, r0
	ldrb r0, [r6, #2]
	cmp r0, #9
	beq _080190F4
	cmp r0, #9
	bge _080190DE
	b _0801928E
_080190DE:
	cmp r0, #0xa
	beq _080191B0
	cmp r0, #0xb
	bne _080190E8
	b _080191E8
_080190E8:
	b _0801928E
	.align 2, 0
_080190EC: .4byte 0x00000524
_080190F0: .4byte gSinTable
_080190F4:
	movs r1, #0xdd
	lsls r1, r1, #3
	adds r0, r6, r1
	ldrh r0, [r0]
	movs r1, #0x48
	subs r1, r1, r0
	lsls r1, r1, #0x10
	movs r0, #0x78
	orrs r0, r1
	str r0, [sp, #8]
	ldrb r1, [r3]
	cmp r1, #0
	bne _08019128
	ldr r0, _08019124 @ =_080CAA94
	movs r3, #0x80
	lsls r3, r3, #1
	str r1, [sp]
	str r1, [sp, #4]
	add r1, sp, #8
	adds r2, r7, #0
	bl oam_renderCellData
	b _0801913C
	.align 2, 0
_08019124: .4byte _080CAA94
_08019128:
	ldr r0, _080191A4 @ =_080CA8E4
	movs r3, #0x80
	lsls r3, r3, #1
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r1, sp, #8
	adds r2, r7, #0
	bl oam_renderCellData
_0801913C:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r1, r0, #4
	adds r4, r0, r1
	adds r0, r4, #0
	cmp r4, #0
	bge _0801914C
	adds r0, #0x3f
_0801914C:
	asrs r0, r0, #6
	ldr r1, [r6, #4]
	cmp r1, r0
	bgt _08019156
	b _0801928E
_08019156:
	subs r5, r5, r0
	adds r2, r7, #0
	muls r2, r5, r2
	subs r6, r1, r0
	adds r0, r2, #0
	adds r1, r6, #0
	bl __divsi3
	adds r7, r0, #0
	mov r0, r8
	muls r0, r5, r0
	adds r1, r6, #0
	bl __divsi3
	mov r8, r0
	movs r4, #0
	movs r1, #0x78
	add r0, sp, #8
	strh r1, [r0]
	adds r1, r0, #0
	movs r0, #0x54
	strh r0, [r1, #2]
	ldr r0, _080191A8 @ =_080CA8EC
	str r4, [sp]
	str r4, [sp, #4]
	mov r2, r8
	adds r3, r7, #0
	bl oam_renderCellData
	ldr r0, _080191AC @ =_080CA8DC
	str r4, [sp]
	str r4, [sp, #4]
	add r1, sp, #8
	mov r2, r8
	adds r3, r7, #0
	bl oam_renderCellData
	b _0801928E
	.align 2, 0
_080191A4: .4byte _080CA8E4
_080191A8: .4byte _080CA8EC
_080191AC: .4byte _080CA8DC
_080191B0:
	movs r4, #0
	movs r1, #0x78
	add r0, sp, #8
	strh r1, [r0]
	adds r1, r0, #0
	movs r0, #0x54
	strh r0, [r1, #2]
	ldr r0, _080191E0 @ =_080CA8EC
	str r4, [sp]
	str r4, [sp, #4]
	adds r2, r7, #0
	mov r3, r8
	bl oam_renderCellData
	ldr r0, _080191E4 @ =_080CA8DC
	str r4, [sp]
	str r4, [sp, #4]
	add r1, sp, #8
	adds r2, r7, #0
	mov r3, r8
	bl oam_renderCellData
	b _0801928E
	.align 2, 0
_080191E0: .4byte _080CA8EC
_080191E4: .4byte _080CA8DC
_080191E8:
	movs r2, #0
	movs r1, #0x78
	add r0, sp, #8
	strh r1, [r0]
	movs r1, #0xdd
	lsls r1, r1, #3
	adds r0, r6, r1
	ldrh r1, [r0]
	movs r0, #0x48
	subs r0, r0, r1
	add r1, sp, #8
	strh r0, [r1, #2]
	ldrb r0, [r3]
	cmp r0, #0
	bne _0801921C
	ldr r0, _08019218 @ =_080CA8E4
	movs r3, #0x80
	lsls r3, r3, #1
	str r2, [sp]
	str r2, [sp, #4]
	adds r2, r7, #0
	bl oam_renderCellData
	b _0801922E
	.align 2, 0
_08019218: .4byte _080CA8E4
_0801921C:
	ldr r0, _0801929C @ =_080CAA94
	movs r3, #0x80
	lsls r3, r3, #1
	str r2, [sp]
	str r2, [sp, #4]
	add r1, sp, #8
	adds r2, r7, #0
	bl oam_renderCellData
_0801922E:
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r1, r0, #4
	adds r4, r0, r1
	adds r0, r4, #0
	cmp r4, #0
	bge _0801923E
	adds r0, #0x3f
_0801923E:
	asrs r0, r0, #6
	subs r5, r5, r0
	ldr r1, [r6, #4]
	cmp r1, r5
	bge _0801928E
	adds r0, r7, #0
	muls r0, r5, r0
	subs r6, r5, r1
	adds r1, r6, #0
	bl __divsi3
	adds r7, r0, #0
	mov r0, r8
	muls r0, r5, r0
	adds r1, r6, #0
	bl __divsi3
	mov r8, r0
	movs r4, #0
	movs r1, #0x78
	add r0, sp, #8
	strh r1, [r0]
	adds r1, r0, #0
	movs r0, #0x54
	strh r0, [r1, #2]
	ldr r0, _080192A0 @ =_080CA8EC
	str r4, [sp]
	str r4, [sp, #4]
	mov r2, r8
	adds r3, r7, #0
	bl oam_renderCellData
	ldr r0, _080192A4 @ =_080CA8DC
	str r4, [sp]
	str r4, [sp, #4]
	add r1, sp, #8
	mov r2, r8
	adds r3, r7, #0
	bl oam_renderCellData
_0801928E:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801929C: .4byte _080CAA94
_080192A0: .4byte _080CA8EC
_080192A4: .4byte _080CA8DC

	thumb_func_start sub_80192A8
sub_80192A8: @ 0x080192A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r2, r0, #0
	ldr r0, _0801930C @ =0x00000524
	adds r7, r2, r0
	ldrb r0, [r2, #2]
	cmp r0, #3
	bge _080192BE
	b _080193CC
_080192BE:
	cmp r0, #8
	ble _080192CE
	cmp r0, #0x10
	ble _080192C8
	b _080193CC
_080192C8:
	cmp r0, #0xc
	bge _080192CE
	b _080193CC
_080192CE:
	ldr r1, [r7, #0x24]
	ldr r0, [r7, #0x20]
	adds r1, r1, r0
	str r1, [r7, #0x24]
	ldr r3, [r7, #0x2c]
	ldr r0, _08019310 @ =0x00000554
	adds r0, r0, r2
	mov r8, r0
	cmp r1, #0x7f
	ble _080192EA
_080192E2:
	subs r1, #0x7f
	cmp r1, #0x7f
	bgt _080192E2
	str r1, [r7, #0x24]
_080192EA:
	ldr r1, [r7, #0x24]
	cmp r1, #0
	bge _080192FC
_080192F0:
	adds r0, r1, #0
	adds r0, #0x7f
	adds r1, r0, #0
	cmp r0, #0
	blt _080192F0
	str r0, [r7, #0x24]
_080192FC:
	ldr r1, [r7, #0x24]
	cmp r3, r1
	beq _08019360
	cmp r1, #0x3f
	ble _08019314
	movs r0, #0x7f
	subs r0, r0, r1
	b _08019316
	.align 2, 0
_0801930C: .4byte 0x00000524
_08019310: .4byte 0x00000554
_08019314:
	adds r0, r1, #0
_08019316:
	bl sub_8008600
	ldr r5, [r7, #0x38]
	lsls r4, r5, #1
	adds r4, r4, r5
	lsls r4, r4, #2
	subs r4, r4, r5
	lsls r4, r4, #0xd
	lsls r0, r0, #0xb
	ldr r1, _08019398 @ =characterTiles_bin
	adds r0, r0, r1
	adds r4, r4, r0
	ldr r6, _0801939C @ =0x06010000
	bl dmaq_getVBlankDmaQueue
	ldr r3, _080193A0 @ =0x80000400
	adds r1, r4, #0
	adds r2, r6, #0
	bl dmaq_enqueue
	ldr r0, [r7, #0x24]
	str r0, [r7, #0x2c]
	lsls r5, r5, #9
	ldr r2, _080193A4 @ =characterPalettes_bin
	adds r5, r5, r2
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x80
	adds r0, r5, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
_08019360:
	ldr r3, _080193A8 @ =_080CA8D4
	mov r1, r8
	movs r2, #3
_08019366:
	ldrh r0, [r3]
	strh r0, [r1]
	adds r3, #2
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bge _08019366
	ldrh r1, [r7, #0x36]
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r0, r2, #0
	movs r2, #0
	orrs r0, r1
	strh r0, [r7, #0x36]
	ldr r0, [r7, #0x24]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080193AC
	ldrh r0, [r7, #0x34]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	b _080193B2
	.align 2, 0
_08019398: .4byte characterTiles_bin
_0801939C: .4byte 0x06010000
_080193A0: .4byte 0x80000400
_080193A4: .4byte characterPalettes_bin
_080193A8: .4byte _080CA8D4
_080193AC:
	ldrh r1, [r7, #0x34]
	ldr r0, _080193D8 @ =0x0000EFFF
	ands r0, r1
_080193B2:
	strh r0, [r7, #0x34]
	ldr r3, [r7, #0x3c]
	cmp r3, #0
	beq _080193CC
	adds r1, r7, #0
	adds r1, #0x40
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r2, r3, #0
	bl oam_renderCellData
_080193CC:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080193D8: .4byte 0x0000EFFF

	thumb_func_start sub_80193DC
sub_80193DC: @ 0x080193DC
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0xc
	adds r6, r0, #0
	ldr r0, _0801945C @ =0x000006E6
	adds r0, r0, r6
	mov sb, r0
	ldrh r1, [r0]
	movs r0, #0x68
	subs r0, r0, r1
	lsls r0, r0, #0x10
	movs r1, #0xdd
	lsls r1, r1, #3
	adds r6, r6, r1
	ldrh r1, [r6]
	movs r5, #0x98
	subs r1, r5, r1
	lsls r1, r1, #0x10
	lsrs r0, r0, #0x10
	orrs r0, r1
	str r0, [sp, #8]
	ldr r2, _08019460 @ =_080CAB28
	mov r8, r2
	add r0, sp, #8
	mov sl, r0
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	mov r0, r8
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	mov r2, sb
	ldrh r1, [r2]
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r0, r2, #0
	subs r0, r0, r1
	add r1, sp, #8
	strh r0, [r1]
	ldrh r0, [r6]
	subs r5, r5, r0
	mov r0, sl
	strh r5, [r0, #2]
	str r4, [sp]
	str r4, [sp, #4]
	mov r0, r8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801945C: .4byte 0x000006E6
_08019460: .4byte _080CAB28

	thumb_func_start sub_8019464
sub_8019464: @ 0x08019464
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	ldr r4, _080194BC @ =0x00000524
	add r4, r8
	ldr r0, _080194C0 @ =0x02010400
	mov sb, r0
	ldr r0, _080194C4 @ =_080BDF90
	mov r1, sb
	bl LZ77UnCompWram
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08019498
	ldr r0, [r4, #0x5c]
	adds r0, #1
	str r0, [r4, #0x5c]
	cmp r0, #6
	ble _08019498
	movs r0, #0
	str r0, [r4, #0x5c]
_08019498:
	ldr r7, [r4, #0x5c]
	movs r4, #0
	adds r6, r7, #0
	adds r6, #0x30
	adds r5, r7, #0
	adds r5, #0x37
_080194A4:
	movs r0, #0
	bl pltt_getBuffer
	movs r1, #0x3d
	subs r1, r1, r4
	lsls r1, r1, #1
	adds r1, r1, r0
	adds r0, r4, r7
	cmp r0, #6
	bgt _080194C8
	lsls r0, r5, #1
	b _080194CA
	.align 2, 0
_080194BC: .4byte 0x00000524
_080194C0: .4byte 0x02010400
_080194C4: .4byte _080BDF90
_080194C8:
	lsls r0, r6, #1
_080194CA:
	add r0, sb
	ldrh r0, [r0]
	strh r0, [r1]
	adds r6, #1
	adds r5, #1
	adds r4, #1
	cmp r4, #6
	ble _080194A4
	movs r0, #1
	bl pltt_setDirtyFlag
	ldr r0, _08019510 @ =0x000006E6
	add r0, r8
	ldrh r0, [r0]
	adds r0, #0x10
	ldr r1, _08019514 @ =0x000006EA
	add r1, r8
	ldrh r2, [r1]
	strh r0, [r1]
	movs r0, #0xdd
	lsls r0, r0, #3
	add r0, r8
	ldrh r0, [r0]
	subs r0, #0x48
	ldr r1, _08019518 @ =0x000006EC
	add r1, r8
	ldrh r2, [r1]
	strh r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019510: .4byte 0x000006E6
_08019514: .4byte 0x000006EA
_08019518: .4byte 0x000006EC

	thumb_func_start sub_801951C
sub_801951C: @ 0x0801951C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r0
	ldr r0, [r0, #8]
	asrs r7, r0, #1
	movs r0, #7
	ands r7, r0
	ldr r0, _08019560 @ =0x02010400
	mov r8, r0
	ldr r0, _08019564 @ =_080BE0C4
	mov r1, r8
	bl LZ77UnCompWram
	movs r4, #0
	adds r6, r7, #0
	adds r6, #0x5f
	adds r5, r7, #0
	adds r5, #0x67
_08019546:
	movs r0, #1
	bl pltt_getBuffer
	movs r1, #0x6e
	subs r1, r1, r4
	lsls r1, r1, #1
	adds r1, r1, r0
	adds r0, r4, r7
	cmp r0, #7
	bgt _08019568
	lsls r0, r5, #1
	b _0801956A
	.align 2, 0
_08019560: .4byte 0x02010400
_08019564: .4byte _080BE0C4
_08019568:
	lsls r0, r6, #1
_0801956A:
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r1]
	adds r6, #1
	adds r5, #1
	adds r4, #1
	cmp r4, #7
	ble _08019546
	mov r1, sb
	ldrb r0, [r1, #2]
	cmp r0, #0xb
	bgt _080195FE
	cmp r0, #9
	blt _080195FE
	movs r0, #0
	bl pltt_getBuffer
	adds r2, r0, #0
	adds r2, #0x40
	mov r0, r8
	adds r0, #0x40
	movs r1, #0xc0
	lsls r1, r1, #1
	add r1, r8
	mov r4, sb
	ldr r3, [r4, #8]
	movs r4, #0x10
	str r4, [sp]
	bl sub_8005E04
	movs r0, #0
	bl pltt_getBuffer
	adds r2, r0, #0
	adds r2, #0x80
	mov r0, r8
	adds r0, #0x60
	movs r1, #0xa0
	lsls r1, r1, #1
	add r1, r8
	mov r5, sb
	ldr r3, [r5, #8]
	str r4, [sp]
	bl sub_8005E04
	movs r0, #0
	bl pltt_getBuffer
	adds r4, r0, #0
	adds r4, #0x40
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x40
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #0
	bl pltt_getBuffer
	adds r4, r0, #0
	adds r4, #0x80
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x60
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	b _08019670
_080195FE:
	movs r0, #0
	bl pltt_getBuffer
	adds r2, r0, #0
	adds r2, #0x40
	mov r0, r8
	adds r0, #0x40
	movs r1, #0xc0
	lsls r1, r1, #1
	add r1, r8
	movs r4, #0x10
	str r4, [sp]
	movs r3, #0
	bl sub_8005E04
	movs r0, #0
	bl pltt_getBuffer
	adds r2, r0, #0
	adds r2, #0x80
	mov r0, r8
	adds r0, #0x60
	movs r1, #0xa0
	lsls r1, r1, #1
	add r1, r8
	str r4, [sp]
	movs r3, #0
	bl sub_8005E04
	movs r0, #0
	bl pltt_getBuffer
	adds r4, r0, #0
	adds r4, #0x40
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x40
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #0
	bl pltt_getBuffer
	adds r4, r0, #0
	adds r4, #0x80
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x60
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
_08019670:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8019680
sub_8019680: @ 0x08019680
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _080196AC @ =0x00000524
	adds r4, r5, r0
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x44]
	cmp r0, r1
	beq _0801969A
	str r1, [r4, #0x48]
	movs r0, #0
	str r0, [r4, #0x4c]
	str r0, [r4, #0x50]
_0801969A:
	ldr r1, [r4, #0x44]
	cmp r1, #1
	beq _080196B0
	cmp r1, #1
	ble _080196E6
	cmp r1, #2
	beq _080196D0
	b _080196E6
	.align 2, 0
_080196AC: .4byte 0x00000524
_080196B0:
	ldr r0, [r4, #0x50]
	cmp r0, #0x27
	bgt _080196C8
	adds r0, #1
	str r0, [r4, #0x50]
	cmp r0, #0x28
	bne _080196E6
	movs r0, #0xc7
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _080196E6
_080196C8:
	str r1, [r4, #0x4c]
	movs r0, #0xa
	str r0, [r4, #0x58]
	b _080196E6
_080196D0:
	ldr r0, [r4, #0x50]
	adds r0, #1
	str r0, [r4, #0x50]
	cmp r0, #0x28
	ble _080196E6
	movs r0, #0
	str r0, [r4, #0x50]
	ldr r1, [r4, #0x4c]
	movs r0, #1
	subs r0, r0, r1
	str r0, [r4, #0x4c]
_080196E6:
	ldr r0, [r4, #0x44]
	cmp r0, #1
	beq _08019770
	cmp r0, #1
	bgt _080196F6
	cmp r0, #0
	beq _080196FA
	b _08019778
_080196F6:
	cmp r0, #2
	bne _08019778
_080196FA:
	ldr r0, [r5, #8]
	ldr r2, _08019764 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08019708
	adds r0, #0x3f
_08019708:
	asrs r1, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	ldr r1, _08019768 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	subs r0, r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	asrs r1, r1, #0xf
	movs r0, #0x7f
	subs r0, r0, r1
	adds r2, r4, #0
	adds r2, #0x56
	strh r0, [r2]
	ldr r2, [r4, #0x58]
	cmp r2, #0
	ble _08019744
	ldr r0, [r5, #8]
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _08019744
	subs r0, r2, #1
	str r0, [r4, #0x58]
_08019744:
	ldr r1, [r4, #0x58]
	adds r1, #0x7c
	lsls r1, r1, #0x10
	movs r0, #0xda
	orrs r0, r1
	str r0, [sp, #8]
	ldr r0, _0801976C @ =_080CA9BC
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	b _08019778
	.align 2, 0
_08019764: .4byte gSinTable
_08019768: .4byte 0x000003FF
_0801976C: .4byte _080CA9BC
_08019770:
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #0x7f
	strh r0, [r1]
_08019778:
	ldr r2, _080197A0 @ =_080DA5A0
	ldr r0, [r4, #0x4c]
	lsls r0, r0, #2
	ldr r1, [r4, #0x44]
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0x54
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r3, #0
	bl oam_renderCellData
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080197A0: .4byte _080DA5A0

	thumb_func_start sub_80197A4
sub_80197A4: @ 0x080197A4
	push {r4, lr}
	sub sp, #0xc
	ldrb r1, [r0, #2]
	cmp r1, #3
	beq _08019840
	cmp r1, #3
	blt _08019840
	cmp r1, #0xb
	bgt _08019840
	cmp r1, #9
	blt _08019840
	ldr r0, [r0, #8]
	asrs r4, r0, #4
	movs r0, #3
	ands r4, r0
	cmp r4, #1
	beq _080197F0
	cmp r4, #1
	bgt _080197D0
	cmp r4, #0
	beq _080197DA
	b _08019862
_080197D0:
	cmp r4, #2
	beq _08019804
	cmp r4, #3
	beq _08019818
	b _08019862
_080197DA:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r3, r0, #0
	ldr r2, _080197EC @ =_080DA5B8
	str r4, [sp]
	b _0801982A
	.align 2, 0
_080197EC: .4byte _080DA5B8
_080197F0:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r3, r0, #0
	ldr r2, _08019800 @ =_080DA5D0
	b _08019826
	.align 2, 0
_08019800: .4byte _080DA5D0
_08019804:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r3, r0, #0
	ldr r2, _08019814 @ =_080DA5E8
	b _08019826
	.align 2, 0
_08019814: .4byte _080DA5E8
_08019818:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r3, r0, #0
	ldr r2, _0801983C @ =_080DA600
_08019826:
	movs r0, #0
	str r0, [sp]
_0801982A:
	movs r0, #0xf
	str r0, [sp, #4]
	movs r0, #0xa
	str r0, [sp, #8]
	movs r0, #2
	movs r1, #3
	bl sub_801445C
	b _08019862
	.align 2, 0
_0801983C: .4byte _080DA600
_08019840:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r3, r0, #0
	ldr r2, _08019870 @ =_080DA618
	movs r0, #0
	str r0, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	movs r0, #0xa
	str r0, [sp, #8]
	movs r0, #2
	movs r1, #3
	bl sub_801445C
_08019862:
	movs r0, #1
	bl map_setBufferDirty
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019870: .4byte _080DA618

	thumb_func_start sub_8019874
sub_8019874: @ 0x08019874
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r6, r0, #0
	ldr r0, _080198B4 @ =0x00000524
	adds r0, r0, r6
	mov r8, r0
	ldr r3, _080198B8 @ =_080DA3B0
	ldrb r0, [r0, #0x1c]
	subs r0, #1
	lsls r0, r0, #3
	ldrb r2, [r6, #2]
	lsls r1, r2, #4
	adds r0, r0, r1
	adds r0, r0, r3
	mov r3, r8
	ldrh r1, [r3, #0x1e]
	ldr r0, [r0]
	adds r0, r0, r1
	mov sb, r0
	str r2, [sp, #0x10]
	cmp r2, #0x17
	bhi _08019960
	lsls r0, r2, #2
	ldr r1, _080198BC @ =_080198C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080198B4: .4byte 0x00000524
_080198B8: .4byte _080DA3B0
_080198BC: .4byte _080198C0
_080198C0: @ jump table
	.4byte _08019960 @ case 0
	.4byte _08019920 @ case 1
	.4byte _08019920 @ case 2
	.4byte _08019920 @ case 3
	.4byte _08019920 @ case 4
	.4byte _08019920 @ case 5
	.4byte _08019920 @ case 6
	.4byte _08019920 @ case 7
	.4byte _08019920 @ case 8
	.4byte _08019920 @ case 9
	.4byte _08019920 @ case 10
	.4byte _08019920 @ case 11
	.4byte _08019920 @ case 12
	.4byte _08019920 @ case 13
	.4byte _08019920 @ case 14
	.4byte _08019920 @ case 15
	.4byte _08019920 @ case 16
	.4byte _08019920 @ case 17
	.4byte _08019920 @ case 18
	.4byte _08019920 @ case 19
	.4byte _08019960 @ case 20
	.4byte _08019960 @ case 21
	.4byte _08019960 @ case 22
	.4byte _08019960 @ case 23
_08019920:
	bl sub_80123D8
	adds r1, r0, #0
	cmp r1, #1
	beq _08019930
	cmp r1, #2
	beq _08019940
	b _08019960
_08019930:
	ldr r4, _0801993C @ =0x000006CC
	adds r0, r6, r4
	strb r1, [r0]
	bl sub_8012388
	b _08019960
	.align 2, 0
_0801993C: .4byte 0x000006CC
_08019940:
	movs r4, #0xe
	ldr r1, _0801995C @ =0x03000190
	ldr r0, [r1]
	ldrb r2, [r0]
	movs r3, #0
	strb r2, [r0, #1]
	ldr r0, [r1]
	strb r4, [r0]
	ldr r0, [r1]
	strb r3, [r0, #2]
	ldr r0, [r1]
	str r3, [r0, #4]
	bl _0801A43A
	.align 2, 0
_0801995C: .4byte 0x03000190
_08019960:
	ldrb r0, [r6, #2]
	ldr r1, _08019978 @ =0x00000524
	adds r7, r6, r1
	cmp r0, #0x17
	bls _0801996E
	bl _0801A2EA
_0801996E:
	lsls r0, r0, #2
	ldr r1, _0801997C @ =_08019980
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08019978: .4byte 0x00000524
_0801997C: .4byte _08019980
_08019980: @ jump table
	.4byte _080199E0 @ case 0
	.4byte _08019AF4 @ case 1
	.4byte _08019B04 @ case 2
	.4byte _08019B84 @ case 3
	.4byte _08019BB0 @ case 4
	.4byte _08019C04 @ case 5
	.4byte _08019C40 @ case 6
	.4byte _08019CB8 @ case 7
	.4byte _08019D04 @ case 8
	.4byte _08019D94 @ case 9
	.4byte _08019DD0 @ case 10
	.4byte _08019E28 @ case 11
	.4byte _08019E88 @ case 12
	.4byte _08019F54 @ case 13
	.4byte _08019FC0 @ case 14
	.4byte _0801A058 @ case 15
	.4byte _0801A08C @ case 16
	.4byte _0801A0F4 @ case 17
	.4byte _0801A198 @ case 18
	.4byte _0801A1C8 @ case 19
	.4byte _0801A1FC @ case 20
	.4byte _0801A21A @ case 21
	.4byte _0801A264 @ case 22
	.4byte _0801A290 @ case 23
_080199E0:
	movs r2, #0xd4
	lsls r2, r2, #3
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08019A02
	mov r1, r8
	adds r1, #4
	adds r0, r6, #0
	adds r0, #0x1c
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	mov r1, r8
	adds r1, #0x10
	adds r0, r6, #0
	adds r0, #0x28
	b _08019A16
_08019A02:
	mov r1, r8
	adds r1, #4
	adds r0, r6, #0
	adds r0, #0x28
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	mov r1, r8
	adds r1, #0x10
	adds r0, r6, #0
	adds r0, #0x1c
_08019A16:
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	mov r3, r8
	ldrb r0, [r3, #4]
	adds r1, r0, #0
	cmp r1, #0
	beq _08019A30
	ldrb r0, [r3, #0x10]
	cmp r0, #0
	beq _08019A30
	movs r0, #2
	strb r0, [r3, #0x1c]
	b _08019A36
_08019A30:
	movs r0, #1
	mov r4, r8
	strb r0, [r4, #0x1c]
_08019A36:
	movs r7, #0
	mov r0, r8
	strb r7, [r0]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _08019A48
	movs r0, #1
	mov r1, r8
	strb r0, [r1]
_08019A48:
	adds r0, r6, #0
	bl sub_80183B8
	ldr r2, _08019ADC @ =0x00000524
	adds r4, r6, r2
	movs r0, #0x40
	str r0, [r4, #0x24]
	str r7, [r4, #0x28]
	str r7, [r4, #0x20]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [r4, #0x2c]
	str r7, [r4, #0x38]
	ldr r3, _08019AE0 @ =0x00000564
	adds r1, r6, r3
	movs r5, #0
	movs r0, #0x78
	strh r0, [r1]
	ldr r0, _08019AE4 @ =0x00000566
	adds r1, r6, r0
	movs r0, #0x50
	strh r0, [r1]
	str r7, [r4, #0x3c]
	str r7, [r4, #0x44]
	str r2, [r4, #0x48]
	str r7, [r4, #0x4c]
	str r7, [r4, #0x50]
	movs r2, #0xaf
	lsls r2, r2, #3
	adds r1, r6, r2
	movs r0, #0xcc
	strh r0, [r1]
	adds r3, #0x16
	adds r1, r6, r3
	movs r0, #0x7f
	strh r0, [r1]
	str r7, [r4, #0x58]
	str r7, [r4, #0x60]
	str r7, [r4, #0x64]
	adds r0, r6, #0
	bl sub_8018D58
	str r7, [r4, #0x5c]
	movs r0, #0x3f
	bl sub_801D240
	ldr r2, _08019AE8 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldr r0, [r2]
	str r7, [r0, #4]
	ldr r1, _08019AEC @ =0x000006CC
	adds r0, r6, r1
	strb r5, [r0]
	mov r2, r8
	strh r7, [r2, #0x1e]
	adds r0, r6, #0
	adds r0, #0x24
	ldrb r0, [r0]
	movs r1, #0
	bl sub_805DB30
	ldr r0, _08019AF0 @ =0x02020400
	movs r3, #0x80
	lsls r3, r3, #5
	adds r1, r0, r3
	adds r2, r3, #0
	bl sub_8012584
	adds r7, r4, #0
	bl _0801A2EA
	.align 2, 0
_08019ADC: .4byte 0x00000524
_08019AE0: .4byte 0x00000564
_08019AE4: .4byte 0x00000566
_08019AE8: .4byte 0x03000190
_08019AEC: .4byte 0x000006CC
_08019AF0: .4byte 0x02020400
_08019AF4:
	bl sub_801D28C
	adds r3, r0, #0
	ldr r4, _08019B00 @ =0x00000524
	adds r7, r6, r4
	b _0801A274
	.align 2, 0
_08019B00: .4byte 0x00000524
_08019B04:
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	ldr r1, _08019B80 @ =0x00000524
	adds r7, r6, r1
	cmp r0, sb
	bgt _08019B16
	bl _0801A2EA
_08019B16:
	ldrb r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r7, r0
	ldrb r4, [r0, #2]
	ldr r5, [r0, #4]
	movs r0, #0
	movs r1, #0xb
	movs r2, #0xf
	bl map_getBufferPtr2d
	adds r1, r0, #0
	movs r0, #0xb0
	lsls r0, r0, #2
	str r0, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0xd8
	lsls r2, r2, #2
	movs r3, #9
	bl sub_800E728
	cmp r5, #0
	beq _08019B68
	lsls r4, r5, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0
	movs r1, #0xd
	movs r2, #0xf
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0xc8
	lsls r2, r2, #2
	movs r3, #0xf
	bl sub_800C6D4
_08019B68:
	movs r0, #1
	bl map_setBufferDirty
	mov r2, r8
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0, #6]
	str r0, [r2, #0x38]
	b _0801A070
	.align 2, 0
_08019B80: .4byte 0x00000524
_08019B84:
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	ldr r3, _08019BA8 @ =0x00000524
	adds r7, r6, r3
	cmp r0, sb
	bgt _08019B94
	b _0801A2EA
_08019B94:
	mov r4, r8
	ldrb r0, [r4, #0x1c]
	cmp r0, #2
	beq _08019B9E
	b _0801A070
_08019B9E:
	ldr r0, _08019BAC @ =0x0000018B
	bl m4aSongNumStart
	b _0801A070
	.align 2, 0
_08019BA8: .4byte 0x00000524
_08019BAC: .4byte 0x0000018B
_08019BB0:
	ldr r0, [r6, #4]
	adds r1, r0, #1
	str r1, [r6, #4]
	cmp r1, sb
	bgt _08019BEC
	mov r2, r8
	ldrb r0, [r2, #0x1c]
	cmp r0, #1
	bne _08019BD0
	mov r3, sb
	subs r0, r3, r1
	cmp r0, #0x20
	bne _08019BD0
	ldr r0, _08019BE8 @ =0x0000018B
	bl m4aSongNumStart
_08019BD0:
	ldr r1, [r6, #4]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #8
	rsbs r0, r0, #0
	mov r1, sb
	bl __divsi3
	movs r4, #0x80
	lsls r4, r4, #4
	b _08019F20
	.align 2, 0
_08019BE8: .4byte 0x0000018B
_08019BEC:
	ldr r3, _08019C00 @ =0x03000190
	ldr r1, [r3]
	ldrb r0, [r1, #2]
	adds r0, #1
	movs r2, #0
	strb r0, [r1, #2]
	ldr r0, [r3]
	str r2, [r0, #4]
	b _0801A2B2
	.align 2, 0
_08019C00: .4byte 0x03000190
_08019C04:
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	ldr r4, _08019C38 @ =0x00000524
	adds r7, r6, r4
	cmp r0, sb
	bgt _08019C14
	b _0801A2EA
_08019C14:
	movs r3, #0
	mov r0, r8
	str r3, [r0, #0x20]
	ldr r0, [r0, #0x24]
	mov r1, r8
	str r0, [r1, #0x28]
	ldr r2, _08019C3C @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldr r0, [r2]
	str r3, [r0, #4]
	movs r0, #1
	mov r2, r8
	str r0, [r2, #0x44]
	b _0801A2EA
	.align 2, 0
_08019C38: .4byte 0x00000524
_08019C3C: .4byte 0x03000190
_08019C40:
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	ldr r3, _08019CA8 @ =0x00000524
	adds r7, r6, r3
	cmp r0, sb
	bgt _08019C50
	b _0801A2EA
_08019C50:
	movs r0, #0
	movs r1, #0xa
	movs r2, #0xf
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r1, #0
	movs r3, #0
_08019C60:
	lsls r0, r1, #6
	adds r2, r1, #1
	movs r1, #9
	adds r0, r4, r0
	adds r0, #0x12
_08019C6A:
	strh r3, [r0]
	subs r0, #2
	subs r1, #1
	cmp r1, #0
	bge _08019C6A
	adds r1, r2, #0
	cmp r1, #1
	ble _08019C60
	movs r0, #1
	bl map_setBufferDirty
	ldr r3, _08019CAC @ =0x03000190
	ldr r1, [r3]
	ldrb r0, [r1, #2]
	adds r0, #1
	movs r2, #0
	strb r0, [r1, #2]
	ldr r0, [r3]
	str r2, [r0, #4]
	mov r4, r8
	ldrb r0, [r4, #0x1c]
	ldr r2, _08019CB0 @ =0x00000189
	adds r1, r2, #0
	cmp r0, #1
	bne _08019CA0
	ldr r3, _08019CB4 @ =0x0000018F
	adds r1, r3, #0
_08019CA0:
	adds r0, r1, #0
	bl m4aSongNumStart
	b _0801A2EA
	.align 2, 0
_08019CA8: .4byte 0x00000524
_08019CAC: .4byte 0x03000190
_08019CB0: .4byte 0x00000189
_08019CB4: .4byte 0x0000018F
_08019CB8:
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, sb
	bgt _08019CFC
	lsls r0, r0, #0xe
	mov r4, sb
	lsls r1, r4, #1
	bl __divsi3
	ldr r1, _08019CF8 @ =gSinTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08019CD8
	adds r0, #0x3f
_08019CD8:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	mov r0, r8
	ldr r1, [r0, #0x28]
	movs r0, #0x8f
	lsls r0, r0, #2
	subs r0, r0, r1
	muls r0, r2, r0
	asrs r0, r0, #0xf
	adds r1, r1, r0
	mov r2, r8
	str r1, [r2, #0x24]
	b _0801A2B2
	.align 2, 0
_08019CF8: .4byte gSinTable
_08019CFC:
	movs r0, #0xa
	mov r4, r8
	str r0, [r4, #0x58]
	b _08019FA2
_08019D04:
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, sb
	bgt _08019D70
	lsls r0, r0, #6
	rsbs r0, r0, #0
	mov r1, sb
	bl __divsi3
	adds r0, #0x50
	mov r1, r8
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r6, #4]
	add r0, sb
	lsls r0, r0, #0xe
	mov r2, sb
	lsls r1, r2, #1
	bl __divsi3
	ldr r1, _08019D6C @ =gSinTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08019D3A
	adds r0, #0x3f
_08019D3A:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	mov r3, r8
	ldr r1, [r3, #0x28]
	movs r0, #0x8f
	lsls r0, r0, #2
	subs r0, r0, r1
	muls r0, r2, r0
	asrs r0, r0, #0xf
	adds r1, r1, r0
	str r1, [r3, #0x24]
	ldr r1, [r6, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #8
	mov r1, sb
	bl __divsi3
	movs r4, #0x80
	lsls r4, r4, #1
	b _08019F20
	.align 2, 0
_08019D6C: .4byte gSinTable
_08019D70:
	movs r3, #0
	mov r4, r8
	str r3, [r4, #0x44]
	ldr r2, _08019D8C @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldr r0, [r2]
	str r3, [r0, #4]
	ldr r0, _08019D90 @ =0x0000018D
	bl m4aSongNumStart
	b _08019FB2
	.align 2, 0
_08019D8C: .4byte 0x03000190
_08019D90: .4byte 0x0000018D
_08019D94:
	ldr r0, [r6, #4]
	adds r1, r0, #1
	str r1, [r6, #4]
	cmp r1, sb
	bgt _08019DBA
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	rsbs r0, r0, #0
	mov r1, sb
	bl __divsi3
	adds r0, #0x48
	movs r2, #0xdd
	lsls r2, r2, #3
	adds r1, r6, r2
	ldrh r2, [r1]
	strh r0, [r1]
	b _0801A2B2
_08019DBA:
	ldr r3, _08019DCC @ =0x03000190
	ldr r1, [r3]
	ldrb r0, [r1, #2]
	adds r0, #1
	movs r2, #0
	strb r0, [r1, #2]
	ldr r0, [r3]
	str r2, [r0, #4]
	b _0801A2E6
	.align 2, 0
_08019DCC: .4byte 0x03000190
_08019DD0:
	ldr r0, [r6, #4]
	adds r1, r0, #1
	str r1, [r6, #4]
	cmp r1, sb
	bgt _08019E10
	mov r0, r8
	ldrb r2, [r0]
	movs r4, #0x88
	lsls r4, r4, #1
	cmp r2, #0
	bne _08019DEA
	movs r4, #0x10
	rsbs r4, r4, #0
_08019DEA:
	movs r0, #0x10
	rsbs r0, r0, #0
	cmp r2, #0
	bne _08019DF6
	movs r0, #0x88
	lsls r0, r0, #1
_08019DF6:
	subs r0, r0, r4
	muls r0, r1, r0
	mov r1, sb
	bl __divsi3
	adds r0, r4, r0
	ldr r2, _08019E0C @ =0x000006E6
	adds r1, r6, r2
	ldrh r2, [r1]
	strh r0, [r1]
	b _0801A2B2
	.align 2, 0
_08019E0C: .4byte 0x000006E6
_08019E10:
	ldr r3, _08019E24 @ =0x03000190
	ldr r1, [r3]
	ldrb r0, [r1, #2]
	adds r0, #1
	movs r2, #0
	strb r0, [r1, #2]
	ldr r0, [r3]
	str r2, [r0, #4]
	b _0801A2E6
	.align 2, 0
_08019E24: .4byte 0x03000190
_08019E28:
	ldr r0, [r6, #4]
	adds r1, r0, #1
	str r1, [r6, #4]
	cmp r1, sb
	bgt _08019E4C
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	mov r1, sb
	bl __divsi3
	subs r0, #0x30
	movs r2, #0xdd
	lsls r2, r2, #3
	adds r1, r6, r2
	ldrh r2, [r1]
	strh r0, [r1]
	b _0801A2B2
_08019E4C:
	mov r4, r8
	ldrb r0, [r4, #0x1c]
	movs r2, #0xc5
	lsls r2, r2, #1
	adds r1, r2, #0
	cmp r0, #1
	bne _08019E60
	movs r3, #0xc8
	lsls r3, r3, #1
	adds r1, r3, #0
_08019E60:
	adds r0, r1, #0
	bl m4aSongNumStart
	ldr r0, _08019E80 @ =0x0000018D
	bl m4aSongNumStop
	ldr r3, _08019E84 @ =0x03000190
	ldr r1, [r3]
	ldrb r0, [r1, #2]
	adds r0, #1
	movs r2, #0
	strb r0, [r1, #2]
	ldr r0, [r3]
	str r2, [r0, #4]
	b _0801A2E6
	.align 2, 0
_08019E80: .4byte 0x0000018D
_08019E84: .4byte 0x03000190
_08019E88:
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, sb
	bgt _08019F3C
	mov r0, sb
	lsrs r5, r0, #0x1f
	add r5, sb
	asrs r5, r5, #1
	ldr r4, _08019F2C @ =0x02010400
	ldr r0, _08019F30 @ =_080BDF90
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r0, #0
	bl pltt_getBuffer
	adds r2, r0, #0
	adds r2, #0x20
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r4, r4, r1
	ldr r3, [r6, #4]
	str r5, [sp]
	adds r1, r4, #0
	bl sub_8005E04
	ldr r0, [r6, #4]
	lsls r0, r0, #6
	rsbs r0, r0, #0
	mov r1, sb
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	mov r0, r8
	adds r0, #0x42
	strh r1, [r0]
	ldr r0, [r6, #4]
	lsls r0, r0, #0xe
	mov r2, sb
	lsls r1, r2, #1
	bl __divsi3
	ldr r1, _08019F34 @ =gSinTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08019EF0
	adds r0, #0x3f
_08019EF0:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	mov r3, r8
	ldr r1, [r3, #0x28]
	movs r0, #0x8f
	lsls r0, r0, #2
	subs r0, r0, r1
	muls r0, r2, r0
	asrs r0, r0, #0xf
	adds r1, r1, r0
	str r1, [r3, #0x24]
	ldr r1, [r6, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #8
	rsbs r0, r0, #0
	mov r1, sb
	bl __divsi3
	movs r4, #0x80
	lsls r4, r4, #3
_08019F20:
	adds r0, r0, r4
	mov r1, r8
	str r0, [r1, #0x3c]
	ldr r2, _08019F38 @ =0x00000524
	adds r7, r6, r2
	b _0801A2EA
	.align 2, 0
_08019F2C: .4byte 0x02010400
_08019F30: .4byte _080BDF90
_08019F34: .4byte gSinTable
_08019F38: .4byte 0x00000524
_08019F3C:
	ldr r3, _08019F50 @ =0x03000190
	ldr r1, [r3]
	ldrb r0, [r1, #2]
	adds r0, #1
	movs r2, #0
	strb r0, [r1, #2]
	ldr r0, [r3]
	str r2, [r0, #4]
	b _0801A2B2
	.align 2, 0
_08019F50: .4byte 0x03000190
_08019F54:
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, sb
	bgt _08019F9C
	add r0, sb
	lsls r0, r0, #0xe
	mov r4, sb
	lsls r1, r4, #1
	bl __divsi3
	ldr r1, _08019F98 @ =gSinTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08019F76
	adds r0, #0x3f
_08019F76:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	mov r0, r8
	ldr r1, [r0, #0x28]
	movs r0, #0x8f
	lsls r0, r0, #2
	subs r0, r0, r1
	muls r0, r2, r0
	asrs r0, r0, #0xf
	adds r1, r1, r0
	mov r2, r8
	str r1, [r2, #0x24]
	b _0801A2B2
	.align 2, 0
_08019F98: .4byte gSinTable
_08019F9C:
	movs r0, #2
	mov r4, r8
	str r0, [r4, #0x20]
_08019FA2:
	ldr r3, _08019FB8 @ =0x03000190
	ldr r1, [r3]
	ldrb r0, [r1, #2]
	adds r0, #1
	movs r2, #0
	strb r0, [r1, #2]
	ldr r0, [r3]
	str r2, [r0, #4]
_08019FB2:
	ldr r0, _08019FBC @ =0x00000524
	adds r7, r6, r0
	b _0801A2EA
	.align 2, 0
_08019FB8: .4byte 0x03000190
_08019FBC: .4byte 0x00000524
_08019FC0:
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	ldr r1, _0801A050 @ =0x00000524
	adds r7, r6, r1
	cmp r0, sb
	bgt _08019FD0
	b _0801A2EA
_08019FD0:
	mov r2, r8
	ldr r0, [r2, #0x24]
	cmp r0, #0x40
	beq _08019FDA
	b _0801A2EA
_08019FDA:
	movs r3, #0
	mov sl, r3
	str r3, [r2, #0x20]
	ldrb r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r7, r0
	ldrb r4, [r0, #2]
	ldr r5, [r0, #4]
	movs r0, #0
	movs r1, #0xb
	movs r2, #0xf
	bl map_getBufferPtr2d
	adds r1, r0, #0
	movs r0, #0xb0
	lsls r0, r0, #2
	str r0, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0xd8
	lsls r2, r2, #2
	movs r3, #9
	bl sub_800E728
	cmp r5, #0
	beq _0801A032
	lsls r4, r5, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0
	movs r1, #0xd
	movs r2, #0xf
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0xc8
	lsls r2, r2, #2
	movs r3, #0xf
	bl sub_800C6D4
_0801A032:
	movs r0, #1
	bl map_setBufferDirty
	mov r4, sl
	mov r0, r8
	str r4, [r0, #0x20]
	ldr r2, _0801A054 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldr r0, [r2]
	str r4, [r0, #4]
	b _0801A2EA
	.align 2, 0
_0801A050: .4byte 0x00000524
_0801A054: .4byte 0x03000190
_0801A058:
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	ldr r1, _0801A084 @ =0x00000524
	adds r7, r6, r1
	cmp r0, sb
	bgt _0801A068
	b _0801A2EA
_0801A068:
	movs r0, #0xc6
	lsls r0, r0, #1
	bl m4aSongNumStart
_0801A070:
	ldr r3, _0801A088 @ =0x03000190
	ldr r1, [r3]
	ldrb r0, [r1, #2]
	adds r0, #1
	movs r2, #0
	strb r0, [r1, #2]
	ldr r0, [r3]
	str r2, [r0, #4]
	b _0801A2EA
	.align 2, 0
_0801A084: .4byte 0x00000524
_0801A088: .4byte 0x03000190
_0801A08C:
	ldr r0, [r6, #4]
	adds r1, r0, #1
	str r1, [r6, #4]
	cmp r1, sb
	bgt _0801A0B0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #8
	rsbs r0, r0, #0
	mov r1, sb
	bl __divsi3
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	mov r2, r8
	str r1, [r2, #0x3c]
	b _0801A2B2
_0801A0B0:
	ldr r4, _0801A0E8 @ =0x00000524
	adds r1, r6, r4
	movs r0, #0x40
	str r0, [r1, #0x24]
	movs r3, #0
	str r3, [r1, #0x28]
	str r3, [r1, #0x20]
	subs r0, #0x41
	str r0, [r1, #0x2c]
	str r3, [r1, #0x38]
	ldr r0, _0801A0EC @ =0x00000564
	adds r2, r6, r0
	movs r0, #0x78
	strh r0, [r2]
	adds r4, #0x42
	adds r2, r6, r4
	movs r0, #0x50
	strh r0, [r2]
	str r3, [r1, #0x3c]
	ldr r4, _0801A0F0 @ =0x03000190
	ldr r2, [r4]
	ldrb r0, [r2, #2]
	adds r0, #1
	strb r0, [r2, #2]
	ldr r0, [r4]
	str r3, [r0, #4]
	adds r7, r1, #0
	b _0801A2EA
	.align 2, 0
_0801A0E8: .4byte 0x00000524
_0801A0EC: .4byte 0x00000564
_0801A0F0: .4byte 0x03000190
_0801A0F4:
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	ldr r1, _0801A148 @ =0x00000524
	adds r7, r6, r1
	cmp r0, sb
	bgt _0801A104
	b _0801A2EA
_0801A104:
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #0
	bne _0801A14C
	ldrb r0, [r2, #0x10]
	cmp r0, #0
	beq _0801A14C
	movs r0, #0
	movs r1, #0xa
	movs r2, #0xf
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r1, #0
	movs r3, #0
_0801A122:
	lsls r0, r1, #6
	adds r2, r1, #1
	movs r1, #9
	adds r0, r4, r0
	adds r0, #0x12
_0801A12C:
	strh r3, [r0]
	subs r0, #2
	subs r1, #1
	cmp r1, #0
	bge _0801A12C
	adds r1, r2, #0
	cmp r1, #1
	ble _0801A122
	movs r0, #1
	bl map_setBufferDirty
	movs r3, #0x12
	b _0801A182
	.align 2, 0
_0801A148: .4byte 0x00000524
_0801A14C:
	movs r0, #0
	movs r1, #0xa
	movs r2, #0xf
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r1, #0
	ldr r3, _0801A190 @ =0x00000524
	adds r7, r6, r3
	movs r3, #0
_0801A160:
	lsls r0, r1, #6
	adds r2, r1, #1
	movs r1, #9
	adds r0, r4, r0
	adds r0, #0x12
_0801A16A:
	strh r3, [r0]
	subs r0, #2
	subs r1, #1
	cmp r1, #0
	bge _0801A16A
	adds r1, r2, #0
	cmp r1, #1
	ble _0801A160
	movs r0, #1
	bl map_setBufferDirty
	movs r3, #0x13
_0801A182:
	ldr r1, _0801A194 @ =0x03000190
	ldr r0, [r1]
	movs r2, #0
	strb r3, [r0, #2]
	ldr r0, [r1]
	str r2, [r0, #4]
	b _0801A2EA
	.align 2, 0
_0801A190: .4byte 0x00000524
_0801A194: .4byte 0x03000190
_0801A198:
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	ldr r4, _0801A1C0 @ =0x00000524
	adds r7, r6, r4
	cmp r0, sb
	bgt _0801A1A8
	b _0801A2EA
_0801A1A8:
	mov r1, r8
	ldrb r0, [r1]
	adds r0, #1
	movs r3, #0
	strb r0, [r1]
	movs r2, #2
	ldr r1, _0801A1C4 @ =0x03000190
	ldr r0, [r1]
	strb r2, [r0, #2]
	ldr r0, [r1]
	str r3, [r0, #4]
	b _0801A2EA
	.align 2, 0
_0801A1C0: .4byte 0x00000524
_0801A1C4: .4byte 0x03000190
_0801A1C8:
	ldr r2, _0801A1F0 @ =0x000006CC
	adds r0, r6, r2
	ldrb r0, [r0]
	ldr r3, _0801A1F4 @ =0x00000524
	adds r7, r6, r3
	cmp r0, #0
	bne _0801A1D8
	b _0801A2EA
_0801A1D8:
	movs r3, #0x14
	ldr r1, _0801A1F8 @ =0x03000190
	ldr r0, [r1]
	movs r2, #0
	strb r3, [r0, #2]
	ldr r0, [r1]
	str r2, [r0, #4]
	movs r0, #0x14
	bl m4aSongNumStart
	b _0801A2EA
	.align 2, 0
_0801A1F0: .4byte 0x000006CC
_0801A1F4: .4byte 0x00000524
_0801A1F8: .4byte 0x03000190
_0801A1FC:
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #0x78
	ble _0801A21A
	movs r0, #0x25
	bl m4aSongNumStart
	movs r3, #0x15
	ldr r1, _0801A25C @ =0x03000190
	ldr r0, [r1]
	movs r2, #0
	strb r3, [r0, #2]
	ldr r0, [r1]
	str r2, [r0, #4]
_0801A21A:
	adds r0, r6, #0
	bl sub_8018FBC
	bl main_getTriggerKeys
	movs r1, #9
	ands r1, r0
	ldr r4, _0801A260 @ =0x00000524
	adds r7, r6, r4
	cmp r1, #0
	beq _0801A2EA
	movs r1, #0x15
	ldr r4, _0801A25C @ =0x03000190
	ldr r0, [r4]
	movs r5, #0
	strb r1, [r0, #2]
	ldr r0, [r4]
	str r5, [r0, #4]
	movs r0, #3
	mov r1, r8
	str r0, [r1, #0x60]
	bl sub_801D25C
	movs r0, #0x8f
	bl m4aSongNumStart
	movs r1, #0x16
	ldr r0, [r4]
	strb r1, [r0, #2]
	ldr r0, [r4]
	str r5, [r0, #4]
	b _0801A2EA
	.align 2, 0
_0801A25C: .4byte 0x03000190
_0801A260: .4byte 0x00000524
_0801A264:
	adds r0, r6, #0
	bl sub_8018FBC
	bl sub_801D28C
	adds r3, r0, #0
	ldr r2, _0801A288 @ =0x00000524
	adds r7, r6, r2
_0801A274:
	cmp r3, #0
	bne _0801A2EA
	ldr r2, _0801A28C @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldr r0, [r2]
	str r3, [r0, #4]
	b _0801A2EA
	.align 2, 0
_0801A288: .4byte 0x00000524
_0801A28C: .4byte 0x03000190
_0801A290:
	adds r0, r6, #0
	adds r0, #0x28
	ldrb r4, [r0]
	cmp r4, #0
	beq _0801A2C0
	movs r4, #0xb
	ldr r1, _0801A2B8 @ =0x03000190
	ldr r0, [r1]
	ldrb r2, [r0]
	movs r3, #0
	strb r2, [r0, #1]
	ldr r0, [r1]
	strb r4, [r0]
	ldr r0, [r1]
	strb r3, [r0, #2]
	ldr r0, [r1]
	str r3, [r0, #4]
_0801A2B2:
	ldr r3, _0801A2BC @ =0x00000524
	adds r7, r6, r3
	b _0801A2EA
	.align 2, 0
_0801A2B8: .4byte 0x03000190
_0801A2BC: .4byte 0x00000524
_0801A2C0:
	movs r3, #0xc
	ldr r2, _0801A3C0 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1]
	strb r0, [r1, #1]
	ldr r0, [r2]
	strb r3, [r0]
	ldr r0, [r2]
	strb r4, [r0, #2]
	ldr r0, [r2]
	str r4, [r0, #4]
	movs r0, #0
	bl sub_805D9B8
	strh r4, [r0, #0xa]
	movs r0, #1
	bl sub_805D9B8
	strh r4, [r0, #0xa]
_0801A2E6:
	ldr r4, _0801A3C4 @ =0x00000524
	adds r7, r6, r4
_0801A2EA:
	ldrb r0, [r7]
	ldr r2, _0801A3C8 @ =_080CA91C
	cmp r0, #0
	bne _0801A2F4
	ldr r2, _0801A3CC @ =_080CA95C
_0801A2F4:
	ldr r1, _0801A3D0 @ =_080DA59C
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	adds r0, r2, #0
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	ldrb r0, [r6, #2]
	cmp r0, #0x16
	bgt _0801A33A
	cmp r0, #0x15
	blt _0801A33A
	ldrb r0, [r6, #0x12]
	adds r0, #1
	strb r0, [r6, #0x12]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _0801A320
	strb r4, [r6, #0x12]
_0801A320:
	ldrb r0, [r6, #0x12]
	cmp r0, #0x13
	bhi _0801A33A
	ldr r0, _0801A3D4 @ =0x009000D8
	str r0, [sp, #8]
	ldr r0, _0801A3D8 @ =_080CAC5C
	str r4, [sp]
	str r4, [sp, #4]
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_0801A33A:
	movs r3, #0
	ldr r0, _0801A3DC @ =0x007A0078
	str r0, [sp, #0xc]
	ldrb r0, [r6, #2]
	cmp r0, #3
	blt _0801A374
	cmp r0, #6
	ble _0801A352
	cmp r0, #0x11
	bgt _0801A374
	cmp r0, #0xf
	blt _0801A374
_0801A352:
	movs r1, #0xd4
	lsls r1, r1, #3
	adds r0, r6, r1
	ldrb r0, [r0]
	ldr r2, _0801A3E0 @ =_080CA908
	ldrb r7, [r7]
	cmp r0, r7
	beq _0801A364
	ldr r2, _0801A3E4 @ =_080CA8F4
_0801A364:
	add r1, sp, #0xc
	str r3, [sp]
	str r3, [sp, #4]
	adds r0, r2, #0
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_0801A374:
	adds r0, r6, #0
	bl sub_80192A8
	adds r0, r6, #0
	bl sub_8019680
	adds r0, r6, #0
	mov r1, sb
	bl sub_8019098
	adds r0, r6, #0
	bl sub_80193DC
	adds r0, r6, #0
	bl sub_8019464
	adds r0, r6, #0
	bl sub_801951C
	adds r0, r6, #0
	bl sub_80197A4
	ldr r2, [sp, #0x10]
	ldrb r3, [r6, #2]
	cmp r2, r3
	beq _0801A43A
	mov r4, r8
	ldrb r0, [r4, #0x1c]
	cmp r0, #1
	bne _0801A3EC
	bl sub_8012578
	ldr r2, _0801A3E8 @ =_080DA3B0
	ldrb r1, [r6, #2]
	lsls r1, r1, #4
	adds r2, #4
	adds r1, r1, r2
	b _0801A41A
	.align 2, 0
_0801A3C0: .4byte 0x03000190
_0801A3C4: .4byte 0x00000524
_0801A3C8: .4byte _080CA91C
_0801A3CC: .4byte _080CA95C
_0801A3D0: .4byte _080DA59C
_0801A3D4: .4byte 0x009000D8
_0801A3D8: .4byte _080CAC5C
_0801A3DC: .4byte 0x007A0078
_0801A3E0: .4byte _080CA908
_0801A3E4: .4byte _080CA8F4
_0801A3E8: .4byte _080DA3B0
_0801A3EC:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _0801A408
	bl sub_8012578
	ldr r2, _0801A404 @ =_080DA3B0
	ldrb r1, [r6, #2]
	lsls r1, r1, #4
	adds r2, #0xc
	adds r1, r1, r2
	b _0801A41A
	.align 2, 0
_0801A404: .4byte _080DA3B0
_0801A408:
	bl sub_8012578
	ldr r2, _0801A42C @ =_080DA3B0
	ldrb r1, [r6, #2]
	lsls r1, r1, #4
	adds r2, #0xc
	adds r1, r1, r2
	ldr r2, _0801A430 @ =0xFFFFF800
	adds r0, r0, r2
_0801A41A:
	ldr r1, [r1]
	subs r0, r1, r0
	cmp r0, #0
	ble _0801A434
	movs r1, #6
	bl __divsi3
	b _0801A436
	.align 2, 0
_0801A42C: .4byte _080DA3B0
_0801A430: .4byte 0xFFFFF800
_0801A434:
	movs r0, #0
_0801A436:
	mov r3, r8
	strh r0, [r3, #0x1e]
_0801A43A:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801A44C
sub_801A44C: @ 0x0801A44C
	push {r4, r5, lr}
	movs r1, #0xd4
	lsls r1, r1, #3
	adds r5, r0, r1
	ldrb r4, [r0, #2]
	cmp r4, #1
	beq _0801A490
	cmp r4, #1
	bgt _0801A464
	cmp r4, #0
	beq _0801A46A
	b _0801A4CC
_0801A464:
	cmp r4, #2
	beq _0801A4AC
	b _0801A4CC
_0801A46A:
	ldr r1, _0801A488 @ =_080DAE28
	movs r0, #3
	bl sub_80142CC
	ldrb r1, [r5, #1]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r5, #1]
	ldr r2, _0801A48C @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	b _0801A4C8
	.align 2, 0
_0801A488: .4byte _080DAE28
_0801A48C: .4byte 0x03000190
_0801A490:
	bl sub_801D25C
	ldr r3, _0801A4A8 @ =0x03000190
	ldr r1, [r3]
	ldrb r0, [r1, #2]
	adds r0, #1
	movs r2, #0
	strb r0, [r1, #2]
	ldr r0, [r3]
	str r2, [r0, #4]
	b _0801A4CC
	.align 2, 0
_0801A4A8: .4byte 0x03000190
_0801A4AC:
	bl sub_801D28C
	adds r4, r0, #0
	cmp r4, #0
	bne _0801A4CC
	movs r3, #0xa
	ldr r2, _0801A4D4 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1]
	strb r0, [r1, #1]
	ldr r0, [r2]
	strb r3, [r0]
	ldr r0, [r2]
	strb r4, [r0, #2]
_0801A4C8:
	ldr r0, [r2]
	str r4, [r0, #4]
_0801A4CC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A4D4: .4byte 0x03000190

	thumb_func_start sub_801A4D8
sub_801A4D8: @ 0x0801A4D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	ldrb r0, [r6, #2]
	cmp r0, #0
	beq _0801A4F6
	cmp r0, #1
	bne _0801A4F2
	b _0801A694
_0801A4F2:
	add r7, sp, #0xc
	b _0801A76C
_0801A4F6:
	ldr r1, _0801A67C @ =_080DAD54
	movs r0, #3
	bl sub_80142CC
	ldrb r1, [r6, #0x10]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r6, r0
	adds r0, #0x35
	ldrb r4, [r0]
	bl dmaq_getVBlankDmaQueue
	adds r4, #1
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #8
	ldr r5, _0801A680 @ =0x02025400
	adds r1, r1, r5
	ldr r2, _0801A684 @ =0x0600F000
	ldr r3, _0801A688 @ =0x80000180
	bl dmaq_enqueue
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r4, [r0]
	bl dmaq_getVBlankDmaQueue
	adds r4, #1
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #8
	adds r1, r1, r5
	ldr r2, _0801A68C @ =0x0600F300
	ldr r3, _0801A688 @ =0x80000180
	bl dmaq_enqueue
	movs r0, #0
	movs r1, #3
	movs r2, #3
	bl map_getBufferPtr2d
	movs r4, #0xb0
	lsls r4, r4, #8
	movs r3, #0
	movs r1, #0x38
	adds r1, r1, r6
	mov r8, r1
	movs r5, #0x2a
	adds r5, r5, r6
	mov sl, r5
	add r7, sp, #0xc
	movs r1, #0xe0
	lsls r1, r1, #2
	mov ip, r1
	movs r5, #0xe3
	lsls r5, r5, #2
	mov sb, r5
	adds r2, r0, #0
	adds r2, #0x40
	adds r1, r0, #0
_0801A570:
	mov r5, ip
	adds r0, r3, r5
	orrs r0, r4
	strh r0, [r1]
	mov r5, sb
	adds r0, r3, r5
	orrs r0, r4
	strh r0, [r2]
	adds r2, #2
	adds r1, #2
	adds r3, #1
	cmp r3, #0xb
	ble _0801A570
	movs r0, #0
	movs r1, #0xf
	movs r2, #3
	bl map_getBufferPtr2d
	movs r4, #0xb0
	lsls r4, r4, #8
	movs r3, #0
	movs r1, #0xe6
	lsls r1, r1, #2
	mov ip, r1
	movs r5, #0xe9
	lsls r5, r5, #2
	mov sb, r5
	adds r2, r0, #0
	adds r2, #0x40
	adds r1, r0, #0
_0801A5AC:
	mov r5, ip
	adds r0, r3, r5
	orrs r0, r4
	strh r0, [r1]
	mov r5, sb
	adds r0, r3, r5
	orrs r0, r4
	strh r0, [r2]
	adds r2, #2
	adds r1, #2
	adds r3, #1
	cmp r3, #0xb
	ble _0801A5AC
	ldrb r0, [r6, #0x10]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r0, r6, r1
	adds r0, #0x36
	ldrb r4, [r0]
	add r1, r8
	ldr r5, [r1]
	movs r0, #0
	movs r1, #5
	movs r2, #7
	bl map_getBufferPtr2d
	adds r1, r0, #0
	movs r0, #0xb0
	lsls r0, r0, #2
	mov sb, r0
	str r0, [sp]
	movs r0, #0xf
	mov r8, r0
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0xd8
	lsls r2, r2, #2
	movs r3, #9
	bl sub_800E728
	cmp r5, #0
	beq _0801A61E
	lsls r4, r5, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0
	movs r1, #7
	movs r2, #7
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0xc8
	lsls r2, r2, #2
	movs r3, #0xf
	bl sub_800C6D4
_0801A61E:
	mov r1, sl
	ldrb r4, [r1]
	ldr r5, [r6, #0x2c]
	movs r0, #0
	movs r1, #0x11
	movs r2, #7
	bl map_getBufferPtr2d
	adds r1, r0, #0
	mov r0, sb
	str r0, [sp]
	mov r0, r8
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0xd8
	lsls r2, r2, #2
	movs r3, #9
	bl sub_800E728
	cmp r5, #0
	beq _0801A664
	lsls r4, r5, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0
	movs r1, #0x13
	movs r2, #7
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0xc8
	lsls r2, r2, #2
	movs r3, #0xf
	bl sub_800C6D4
_0801A664:
	movs r3, #0
	movs r0, #1
	strb r0, [r6, #0xd]
	ldr r2, _0801A690 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldr r0, [r2]
	str r3, [r0, #4]
	b _0801A76C
	.align 2, 0
_0801A67C: .4byte _080DAD54
_0801A680: .4byte 0x02025400
_0801A684: .4byte 0x0600F000
_0801A688: .4byte 0x80000180
_0801A68C: .4byte 0x0600F300
_0801A690: .4byte 0x03000190
_0801A694:
	bl main_getTriggerKeys
	movs r4, #0x30
	ands r4, r0
	cmp r4, #0
	beq _0801A6B2
	movs r0, #0x8d
	bl m4aSongNumStart
	ldrb r1, [r6, #0xd]
	movs r0, #1
	subs r0, r0, r1
	strb r0, [r6, #0xd]
	add r7, sp, #0xc
	b _0801A76C
_0801A6B2:
	bl main_getTriggerKeys
	movs r1, #9
	ands r1, r0
	cmp r1, #0
	beq _0801A714
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	bne _0801A6F0
	movs r0, #0x8e
	bl m4aSongNumStart
	ldrb r1, [r6, #0x10]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r6, r0
	adds r0, #0x3c
	ldrb r0, [r0]
	strb r0, [r6, #0x11]
	ldr r2, _0801A6EC @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1]
	strb r0, [r1, #1]
	ldr r1, [r2]
	movs r0, #9
	strb r0, [r1]
	b _0801A704
	.align 2, 0
_0801A6EC: .4byte 0x03000190
_0801A6F0:
	movs r0, #0x8e
	bl m4aSongNumStart
	movs r3, #0xd
	ldr r2, _0801A710 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1]
	strb r0, [r1, #1]
	ldr r0, [r2]
	strb r3, [r0]
_0801A704:
	ldr r0, [r2]
	strb r4, [r0, #2]
	ldr r0, [r2]
	str r4, [r0, #4]
	add r7, sp, #0xc
	b _0801A76C
	.align 2, 0
_0801A710: .4byte 0x03000190
_0801A714:
	bl main_getTriggerKeys
	movs r1, #2
	ands r1, r0
	add r7, sp, #0xc
	cmp r1, #0
	beq _0801A76C
	movs r0, #0x90
	bl m4aSongNumStart
	movs r2, #0
	ldr r0, _0801A750 @ =0x03000190
	ldr r1, [r0]
	adds r4, r0, #0
	adds r3, r1, #0
	adds r3, #0x29
	adds r1, #0x34
_0801A736:
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801A744
	ldrb r0, [r1, #1]
	ldrb r5, [r3]
	cmp r0, r5
	beq _0801A754
_0801A744:
	adds r1, #0xc
	adds r2, #1
	cmp r2, #1
	ble _0801A736
	movs r3, #7
	b _0801A758
	.align 2, 0
_0801A750: .4byte 0x03000190
_0801A754:
	strb r2, [r6, #0x10]
	movs r3, #6
_0801A758:
	ldr r0, [r4]
	ldrb r1, [r0]
	movs r2, #0
	strb r1, [r0, #1]
	ldr r0, [r4]
	strb r3, [r0]
	ldr r0, [r4]
	strb r2, [r0, #2]
	ldr r0, [r4]
	str r2, [r0, #4]
_0801A76C:
	ldr r0, [r6, #8]
	bl sub_801D0AC
	ldr r0, _0801A7D8 @ =0x00390048
	str r0, [sp, #8]
	ldr r4, _0801A7DC @ =_080C93F8
	movs r5, #0
	str r5, [sp]
	str r5, [sp, #4]
	adds r0, r4, #0
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	ldr r0, _0801A7E0 @ =0x003900A8
	str r0, [sp, #0xc]
	str r5, [sp]
	str r5, [sp, #4]
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	ldr r0, _0801A7E4 @ =_080C9488
	ldr r7, _0801A7E8 @ =_080DA3A4
	str r5, [sp]
	str r5, [sp, #4]
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	ldr r0, _0801A7EC @ =_080C9490
	ldr r4, _0801A7F0 @ =_080DA3A8
	str r5, [sp]
	str r5, [sp, #4]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	ldrb r3, [r6, #0xd]
	adds r6, r3, #0
	ldr r0, _0801A7F4 @ =0x03000190
	ldr r0, [r0]
	ldr r1, [r0, #8]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0x13
	bgt _0801A7FC
	ldr r0, _0801A7F8 @ =_080C9498
	b _0801A806
	.align 2, 0
_0801A7D8: .4byte 0x00390048
_0801A7DC: .4byte _080C93F8
_0801A7E0: .4byte 0x003900A8
_0801A7E4: .4byte _080C9488
_0801A7E8: .4byte _080DA3A4
_0801A7EC: .4byte _080C9490
_0801A7F0: .4byte _080DA3A8
_0801A7F4: .4byte 0x03000190
_0801A7F8: .4byte _080C9498
_0801A7FC:
	movs r2, #0x20
	ands r2, r1
	cmp r2, #0
	beq _0801A820
	ldr r0, _0801A81C @ =_080C94A8
_0801A806:
	adds r1, r4, #0
	cmp r3, #0
	bne _0801A80E
	adds r1, r7, #0
_0801A80E:
	str r5, [sp]
	str r5, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	b _0801A836
	.align 2, 0
_0801A81C: .4byte _080C94A8
_0801A820:
	ldr r0, _0801A848 @ =_080C94B8
	adds r1, r4, #0
	cmp r6, #0
	bne _0801A82A
	adds r1, r7, #0
_0801A82A:
	str r2, [sp]
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_0801A836:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A848: .4byte _080C94B8

	thumb_func_start sub_801A84C
sub_801A84C: @ 0x0801A84C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	ldrb r0, [r6, #2]
	cmp r0, #0
	beq _0801A86E
	cmp r0, #1
	bne _0801A866
	b _0801A9F8
_0801A866:
	add r7, sp, #0xc
	add r0, sp, #0x10
	mov r8, r0
	b _0801AA82
_0801A86E:
	ldr r1, _0801A9E0 @ =_080DAD00
	movs r0, #3
	bl sub_80142CC
	adds r0, r6, #0
	adds r0, #0x35
	ldrb r4, [r0]
	bl dmaq_getVBlankDmaQueue
	adds r4, #1
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #8
	ldr r5, _0801A9E4 @ =0x02025400
	adds r1, r1, r5
	ldr r2, _0801A9E8 @ =0x0600F000
	ldr r3, _0801A9EC @ =0x80000180
	bl dmaq_enqueue
	adds r0, r6, #0
	adds r0, #0x41
	ldrb r4, [r0]
	bl dmaq_getVBlankDmaQueue
	adds r4, #1
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #8
	adds r1, r1, r5
	ldr r2, _0801A9F0 @ =0x0600F300
	ldr r3, _0801A9EC @ =0x80000180
	bl dmaq_enqueue
	movs r0, #0
	movs r1, #3
	movs r2, #3
	bl map_getBufferPtr2d
	movs r4, #0xb0
	lsls r4, r4, #8
	movs r3, #0
	movs r1, #0x36
	adds r1, r1, r6
	mov sb, r1
	adds r5, r6, #0
	adds r5, #0x42
	str r5, [sp, #0x14]
	add r7, sp, #0xc
	add r1, sp, #0x10
	mov r8, r1
	movs r5, #0xe0
	lsls r5, r5, #2
	mov ip, r5
	movs r1, #0xe3
	lsls r1, r1, #2
	mov sl, r1
	adds r2, r0, #0
	adds r2, #0x40
	adds r1, r0, #0
_0801A8E4:
	mov r5, ip
	adds r0, r3, r5
	orrs r0, r4
	strh r0, [r1]
	mov r5, sl
	adds r0, r3, r5
	orrs r0, r4
	strh r0, [r2]
	adds r2, #2
	adds r1, #2
	adds r3, #1
	cmp r3, #0xb
	ble _0801A8E4
	movs r0, #0
	movs r1, #0xf
	movs r2, #3
	bl map_getBufferPtr2d
	movs r4, #0xb0
	lsls r4, r4, #8
	movs r3, #0
	movs r1, #0xe6
	lsls r1, r1, #2
	mov ip, r1
	movs r5, #0xe9
	lsls r5, r5, #2
	mov sl, r5
	adds r2, r0, #0
	adds r2, #0x40
	adds r1, r0, #0
_0801A920:
	mov r5, ip
	adds r0, r3, r5
	orrs r0, r4
	strh r0, [r1]
	mov r5, sl
	adds r0, r3, r5
	orrs r0, r4
	strh r0, [r2]
	adds r2, #2
	adds r1, #2
	adds r3, #1
	cmp r3, #0xb
	ble _0801A920
	mov r0, sb
	ldrb r4, [r0]
	ldr r5, [r6, #0x38]
	movs r0, #0
	movs r1, #5
	movs r2, #7
	bl map_getBufferPtr2d
	adds r1, r0, #0
	movs r0, #0xb0
	lsls r0, r0, #2
	mov sl, r0
	str r0, [sp]
	movs r0, #0xf
	mov sb, r0
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0xd8
	lsls r2, r2, #2
	movs r3, #9
	bl sub_800E728
	cmp r5, #0
	beq _0801A986
	lsls r4, r5, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0
	movs r1, #7
	movs r2, #7
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0xc8
	lsls r2, r2, #2
	movs r3, #0xf
	bl sub_800C6D4
_0801A986:
	ldr r1, [sp, #0x14]
	ldrb r4, [r1]
	ldr r5, [r6, #0x44]
	movs r0, #0
	movs r1, #0x11
	movs r2, #7
	bl map_getBufferPtr2d
	adds r1, r0, #0
	mov r0, sl
	str r0, [sp]
	mov r0, sb
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0xd8
	lsls r2, r2, #2
	movs r3, #9
	bl sub_800E728
	cmp r5, #0
	beq _0801A9CC
	lsls r4, r5, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0
	movs r1, #0x13
	movs r2, #7
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0xc8
	lsls r2, r2, #2
	movs r3, #0xf
	bl sub_800C6D4
_0801A9CC:
	movs r3, #0
	strb r3, [r6, #0xe]
	ldr r2, _0801A9F4 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldr r0, [r2]
	str r3, [r0, #4]
	b _0801AA82
	.align 2, 0
_0801A9E0: .4byte _080DAD00
_0801A9E4: .4byte 0x02025400
_0801A9E8: .4byte 0x0600F000
_0801A9EC: .4byte 0x80000180
_0801A9F0: .4byte 0x0600F300
_0801A9F4: .4byte 0x03000190
_0801A9F8:
	bl main_getTriggerKeys
	movs r4, #0x30
	ands r4, r0
	cmp r4, #0
	beq _0801AA1A
	movs r0, #0x8d
	bl m4aSongNumStart
	ldrb r1, [r6, #0xe]
	movs r0, #1
	subs r0, r0, r1
	strb r0, [r6, #0xe]
	add r7, sp, #0xc
	add r1, sp, #0x10
	mov r8, r1
	b _0801AA82
_0801AA1A:
	bl main_getTriggerKeys
	movs r5, #9
	ands r5, r0
	cmp r5, #0
	beq _0801AA54
	movs r0, #0x8e
	bl m4aSongNumStart
	ldrb r0, [r6, #0xe]
	strb r0, [r6, #0x10]
	movs r3, #8
	ldr r2, _0801AA50 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1]
	strb r0, [r1, #1]
	ldr r0, [r2]
	strb r3, [r0]
	ldr r0, [r2]
	strb r4, [r0, #2]
	ldr r0, [r2]
	str r4, [r0, #4]
	add r7, sp, #0xc
	add r5, sp, #0x10
	mov r8, r5
	b _0801AA82
	.align 2, 0
_0801AA50: .4byte 0x03000190
_0801AA54:
	bl main_getTriggerKeys
	movs r1, #2
	ands r1, r0
	add r7, sp, #0xc
	add r0, sp, #0x10
	mov r8, r0
	cmp r1, #0
	beq _0801AA82
	movs r0, #0x90
	bl m4aSongNumStart
	movs r3, #6
	ldr r2, _0801AABC @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1]
	strb r0, [r1, #1]
	ldr r0, [r2]
	strb r3, [r0]
	ldr r0, [r2]
	strb r5, [r0, #2]
	ldr r0, [r2]
	str r5, [r0, #4]
_0801AA82:
	ldr r0, [r6, #8]
	bl sub_801D0AC
	ldrb r1, [r6, #0xe]
	ldr r0, _0801AABC @ =0x03000190
	ldr r0, [r0]
	ldr r2, [r0, #8]
	ldr r0, _0801AAC0 @ =_080DA3AC
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	movs r1, #0xe4
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [sp, #8]
	movs r0, #0x10
	ands r2, r0
	cmp r2, #0
	beq _0801AAC8
	ldr r0, _0801AAC4 @ =_080C962C
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	b _0801AAD8
	.align 2, 0
_0801AABC: .4byte 0x03000190
_0801AAC0: .4byte _080DA3AC
_0801AAC4: .4byte _080C962C
_0801AAC8:
	ldr r0, _0801AB14 @ =_080C9648
	str r2, [sp]
	str r2, [sp, #4]
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_0801AAD8:
	ldr r0, _0801AB18 @ =0x00390048
	str r0, [sp, #0xc]
	ldr r5, _0801AB1C @ =_080C93F8
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	ldr r0, _0801AB20 @ =0x003900A8
	str r0, [sp, #0x10]
	str r4, [sp]
	str r4, [sp, #4]
	adds r0, r5, #0
	mov r1, r8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801AB14: .4byte _080C9648
_0801AB18: .4byte 0x00390048
_0801AB1C: .4byte _080C93F8
_0801AB20: .4byte 0x003900A8

	thumb_func_start sub_801AB24
sub_801AB24: @ 0x0801AB24
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldrb r4, [r5, #2]
	cmp r4, #0
	beq _0801AB36
	cmp r4, #1
	beq _0801AB54
	b _0801ABD6
_0801AB36:
	ldr r1, _0801AB4C @ =_080DAC8C
	movs r0, #3
	bl sub_80142CC
	ldr r2, _0801AB50 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	b _0801ABD2
	.align 2, 0
_0801AB4C: .4byte _080DAC8C
_0801AB50: .4byte 0x03000190
_0801AB54:
	bl main_getTriggerKeys
	movs r4, #9
	ands r4, r0
	cmp r4, #0
	beq _0801ABAE
	movs r0, #0x8e
	bl m4aSongNumStart
	movs r2, #0
	ldr r0, _0801AB90 @ =0x03000190
	ldr r1, [r0]
	adds r4, r0, #0
	adds r3, r1, #0
	adds r3, #0x29
	adds r1, #0x34
_0801AB74:
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801AB82
	ldrb r0, [r1, #1]
	ldrb r6, [r3]
	cmp r0, r6
	beq _0801AB94
_0801AB82:
	adds r1, #0xc
	adds r2, #1
	cmp r2, #1
	ble _0801AB74
	movs r3, #7
	b _0801AB98
	.align 2, 0
_0801AB90: .4byte 0x03000190
_0801AB94:
	strb r2, [r5, #0x10]
	movs r3, #8
_0801AB98:
	ldr r0, [r4]
	ldrb r1, [r0]
	movs r2, #0
	strb r1, [r0, #1]
	ldr r0, [r4]
	strb r3, [r0]
	ldr r0, [r4]
	strb r2, [r0, #2]
	ldr r0, [r4]
	str r2, [r0, #4]
	b _0801ABD6
_0801ABAE:
	bl main_getTriggerKeys
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq _0801ABD6
	movs r0, #0x90
	bl m4aSongNumStart
	movs r3, #5
	ldr r2, _0801AC0C @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1]
	strb r0, [r1, #1]
	ldr r0, [r2]
	strb r3, [r0]
	ldr r0, [r2]
	strb r4, [r0, #2]
_0801ABD2:
	ldr r0, [r2]
	str r4, [r0, #4]
_0801ABD6:
	ldrb r0, [r5, #0x12]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0x12]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _0801ABE8
	strb r1, [r5, #0x12]
_0801ABE8:
	ldrb r0, [r5, #0x12]
	cmp r0, #0x13
	bhi _0801AC02
	ldr r0, _0801AC10 @ =0x009000D8
	str r0, [sp, #8]
	ldr r0, _0801AC14 @ =_080C9520
	str r1, [sp]
	str r1, [sp, #4]
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_0801AC02:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801AC0C: .4byte 0x03000190
_0801AC10: .4byte 0x009000D8
_0801AC14: .4byte _080C9520

	thumb_func_start sub_801AC18
sub_801AC18: @ 0x0801AC18
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r6, r0, #0
	ldrb r0, [r6, #2]
	cmp r0, #0
	beq _0801AC2E
	cmp r0, #1
	beq _0801AD04
	b _0801ADA4
_0801AC2E:
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r4, [r0]
	bl dmaq_getVBlankDmaQueue
	adds r4, #1
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #8
	ldr r2, _0801ACF0 @ =0x02025400
	adds r1, r1, r2
	ldr r2, _0801ACF4 @ =0x0600F000
	ldr r3, _0801ACF8 @ =0x80000180
	bl dmaq_enqueue
	ldr r1, _0801ACFC @ =_080DAC24
	movs r0, #3
	bl sub_80142CC
	movs r0, #0
	movs r1, #8
	movs r2, #3
	bl map_getBufferPtr2d
	movs r4, #0xb0
	lsls r4, r4, #8
	movs r3, #0
	movs r1, #0x2a
	adds r1, r1, r6
	mov r8, r1
	movs r5, #0xe0
	lsls r5, r5, #2
	mov ip, r5
	movs r7, #0xe3
	lsls r7, r7, #2
	adds r2, r0, #0
	adds r2, #0x40
	adds r1, r0, #0
_0801AC7A:
	mov r5, ip
	adds r0, r3, r5
	orrs r0, r4
	strh r0, [r1]
	adds r0, r3, r7
	orrs r0, r4
	strh r0, [r2]
	adds r2, #2
	adds r1, #2
	adds r3, #1
	cmp r3, #0xb
	ble _0801AC7A
	mov r0, r8
	ldrb r4, [r0]
	ldr r5, [r6, #0x2c]
	movs r0, #0
	movs r1, #0xa
	movs r2, #7
	bl map_getBufferPtr2d
	adds r1, r0, #0
	movs r0, #0xb0
	lsls r0, r0, #2
	str r0, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0xd8
	lsls r2, r2, #2
	movs r3, #9
	bl sub_800E728
	cmp r5, #0
	beq _0801ACDA
	lsls r4, r5, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0
	movs r1, #0xc
	movs r2, #7
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0xc8
	lsls r2, r2, #2
	movs r3, #0xf
	bl sub_800C6D4
_0801ACDA:
	ldr r3, _0801AD00 @ =0x03000190
	ldr r1, [r3]
	ldrb r0, [r1, #2]
	adds r0, #1
	movs r2, #0
	strb r0, [r1, #2]
	ldr r0, [r3]
	str r2, [r0, #4]
	strb r2, [r6, #0xd]
	b _0801ADA4
	.align 2, 0
_0801ACF0: .4byte 0x02025400
_0801ACF4: .4byte 0x0600F000
_0801ACF8: .4byte 0x80000180
_0801ACFC: .4byte _080DAC24
_0801AD00: .4byte 0x03000190
_0801AD04:
	bl main_getTriggerKeys
	movs r4, #0x30
	ands r4, r0
	cmp r4, #0
	beq _0801AD20
	movs r0, #0x8d
	bl m4aSongNumStart
	ldrb r1, [r6, #0xd]
	movs r0, #1
	subs r0, r0, r1
	strb r0, [r6, #0xd]
	b _0801ADA4
_0801AD20:
	bl main_getTriggerKeys
	movs r5, #9
	ands r5, r0
	cmp r5, #0
	beq _0801AD7C
	movs r0, #0x8e
	bl m4aSongNumStart
	ldrb r0, [r6, #0xd]
	cmp r0, #0
	bne _0801AD60
	adds r0, r6, #0
	bl sub_80178BC
	cmp r0, #0
	beq _0801AD46
	movs r3, #6
	b _0801AD62
_0801AD46:
	bl sub_805DC94
	strb r0, [r6, #0x11]
	ldr r2, _0801AD5C @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1]
	strb r0, [r1, #1]
	ldr r1, [r2]
	movs r0, #9
	strb r0, [r1]
	b _0801AD6E
	.align 2, 0
_0801AD5C: .4byte 0x03000190
_0801AD60:
	movs r3, #0xd
_0801AD62:
	ldr r2, _0801AD78 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1]
	strb r0, [r1, #1]
	ldr r0, [r2]
	strb r3, [r0]
_0801AD6E:
	ldr r0, [r2]
	strb r4, [r0, #2]
	ldr r0, [r2]
	str r4, [r0, #4]
	b _0801ADA4
	.align 2, 0
_0801AD78: .4byte 0x03000190
_0801AD7C:
	bl main_getTriggerKeys
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq _0801ADA4
	movs r0, #0x90
	bl m4aSongNumStart
	movs r3, #0xd
	ldr r2, _0801ADFC @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1]
	strb r0, [r1, #1]
	ldr r0, [r2]
	strb r3, [r0]
	ldr r0, [r2]
	strb r5, [r0, #2]
	ldr r0, [r2]
	str r5, [r0, #4]
_0801ADA4:
	ldr r0, [r6, #8]
	bl sub_801D0AC
	ldr r0, _0801AE00 @ =0x00390070
	str r0, [sp, #8]
	ldr r0, _0801AE04 @ =_080C93F8
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	ldr r0, _0801AE08 @ =_080C9488
	ldr r7, _0801AE0C @ =_080DA3A4
	str r4, [sp]
	str r4, [sp, #4]
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	ldr r0, _0801AE10 @ =_080C9490
	ldr r5, _0801AE14 @ =_080DA3A8
	str r4, [sp]
	str r4, [sp, #4]
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	ldrb r3, [r6, #0xd]
	adds r6, r3, #0
	ldr r0, _0801ADFC @ =0x03000190
	ldr r0, [r0]
	ldr r1, [r0, #8]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0x13
	bgt _0801AE1C
	ldr r0, _0801AE18 @ =_080C9498
	b _0801AE26
	.align 2, 0
_0801ADFC: .4byte 0x03000190
_0801AE00: .4byte 0x00390070
_0801AE04: .4byte _080C93F8
_0801AE08: .4byte _080C9488
_0801AE0C: .4byte _080DA3A4
_0801AE10: .4byte _080C9490
_0801AE14: .4byte _080DA3A8
_0801AE18: .4byte _080C9498
_0801AE1C:
	movs r2, #0x20
	ands r2, r1
	cmp r2, #0
	beq _0801AE40
	ldr r0, _0801AE3C @ =_080C94A8
_0801AE26:
	adds r1, r5, #0
	cmp r3, #0
	bne _0801AE2E
	adds r1, r7, #0
_0801AE2E:
	str r4, [sp]
	str r4, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	b _0801AE56
	.align 2, 0
_0801AE3C: .4byte _080C94A8
_0801AE40:
	ldr r0, _0801AE64 @ =_080C94B8
	adds r1, r5, #0
	cmp r6, #0
	bne _0801AE4A
	adds r1, r7, #0
_0801AE4A:
	str r2, [sp]
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_0801AE56:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801AE64: .4byte _080C94B8

	thumb_func_start sub_801AE68
sub_801AE68: @ 0x0801AE68
	push {r4, lr}
	adds r4, r0, #0
	bl sub_80123D8
	cmp r0, #1
	beq _0801AE7A
	cmp r0, #2
	beq _0801AEB8
	b _0801AED0
_0801AE7A:
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	bne _0801AE8E
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r4, [r0]
	cmp r4, #0
	bne _0801AEB4
	movs r3, #0xf
	b _0801AE9A
_0801AE8E:
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r4, [r0]
	cmp r4, #0
	bne _0801AEB4
	movs r3, #9
_0801AE9A:
	ldr r2, _0801AEB0 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1]
	strb r0, [r1, #1]
	ldr r0, [r2]
	strb r3, [r0]
	ldr r0, [r2]
	strb r4, [r0, #2]
	ldr r0, [r2]
	str r4, [r0, #4]
	b _0801AED0
	.align 2, 0
_0801AEB0: .4byte 0x03000190
_0801AEB4:
	movs r4, #5
	b _0801AEBA
_0801AEB8:
	movs r4, #0xe
_0801AEBA:
	ldr r1, _0801AED8 @ =0x03000190
	ldr r0, [r1]
	ldrb r2, [r0]
	movs r3, #0
	strb r2, [r0, #1]
	ldr r0, [r1]
	strb r4, [r0]
	ldr r0, [r1]
	strb r3, [r0, #2]
	ldr r0, [r1]
	str r3, [r0, #4]
_0801AED0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801AED8: .4byte 0x03000190

	thumb_func_start sub_801AEDC
sub_801AEDC: @ 0x0801AEDC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0xd4
	lsls r0, r0, #3
	adds r6, r5, r0
	ldrb r4, [r5, #2]
	cmp r4, #1
	beq _0801AF28
	cmp r4, #1
	bgt _0801AEF6
	cmp r4, #0
	beq _0801AEFC
	b _0801AF76
_0801AEF6:
	cmp r4, #2
	beq _0801AF50
	b _0801AF76
_0801AEFC:
	adds r0, r5, #0
	bl sub_80180D8
	adds r0, r5, #0
	bl sub_8017170
	ldr r0, _0801AF20 @ =0x00000844
	bl sub_801D240
	ldr r2, _0801AF24 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldr r0, [r2]
	str r4, [r0, #4]
	b _0801AF76
	.align 2, 0
_0801AF20: .4byte 0x00000844
_0801AF24: .4byte 0x03000190
_0801AF28:
	bl sub_801D28C
	adds r3, r0, #0
	cmp r3, #0
	bne _0801AF76
	ldr r2, _0801AF4C @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldr r0, [r2]
	str r3, [r0, #4]
	ldrb r1, [r6, #1]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r6, #1]
	b _0801AF76
	.align 2, 0
_0801AF4C: .4byte 0x03000190
_0801AF50:
	movs r4, #4
	ldr r1, _0801AF7C @ =0x03000190
	ldr r0, [r1]
	ldrb r2, [r0]
	movs r3, #0
	strb r2, [r0, #1]
	ldr r0, [r1]
	strb r4, [r0]
	ldr r0, [r1]
	strb r3, [r0, #2]
	ldr r0, [r1]
	str r3, [r0, #4]
	adds r0, r5, #0
	adds r0, #0x1c
	adds r1, r5, #0
	adds r1, #0x28
	movs r2, #0xc
	bl sub_8012584
_0801AF76:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801AF7C: .4byte 0x03000190

	thumb_func_start sub_801AF80
sub_801AF80: @ 0x0801AF80
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r2, #0
_0801AF88:
	ldr r0, _0801AFC4 @ =0x03000190
	ldr r0, [r0]
	lsls r1, r2, #2
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r0, [r0]
	adds r6, r1, #0
	cmp r0, #0
	beq _0801AFD0
	adds r7, r2, #1
	adds r0, r6, #1
	ldr r2, _0801AFC8 @ =0x02025400
	movs r5, #3
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #8
	adds r4, r1, r2
_0801AFAE:
	ldr r0, _0801AFCC @ =_080A28C8
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r4, r4, r0
	subs r5, #1
	cmp r5, #0
	bge _0801AFAE
	b _0801B002
	.align 2, 0
_0801AFC4: .4byte 0x03000190
_0801AFC8: .4byte 0x02025400
_0801AFCC: .4byte _080A28C8
_0801AFD0:
	movs r5, #0
	adds r7, r2, #1
	ldr r1, _0801B038 @ =gTrackDefTable
	mov r8, r1
	adds r1, r6, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r4, r0, #8
_0801AFE0:
	adds r0, r6, r5
	bl track_getMKSCTrack
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	ldr r1, _0801B03C @ =0x02025400
	adds r1, r4, r1
	bl LZ77UnCompWram
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r4, r4, r3
	adds r5, #1
	cmp r5, #3
	ble _0801AFE0
_0801B002:
	bl main_frameProc
	adds r2, r7, #0
	cmp r2, #4
	ble _0801AF88
	ldr r0, _0801B040 @ =_080BE200
	ldr r4, _0801B03C @ =0x02025400
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl main_frameProc
	ldr r0, _0801B044 @ =_080BE344
	movs r1, #0xfc
	lsls r1, r1, #6
	adds r4, r4, r1
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl main_frameProc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B038: .4byte gTrackDefTable
_0801B03C: .4byte 0x02025400
_0801B040: .4byte _080BE200
_0801B044: .4byte _080BE344

	thumb_func_start sub_801B048
sub_801B048: @ 0x0801B048
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0801B1AC @ =_08079F18
	ldr r4, _0801B1B0 @ =0x02004400
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _0801B120
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #4]
	cmp r0, #6
	bgt _0801B0DC
	movs r0, #0x80
	adds r0, r0, r4
	mov ip, r0
	movs r7, #0xa0
	lsls r7, r7, #1
	adds r6, r4, r7
_0801B076:
	movs r0, #0xc
	str r0, [sp]
	ldr r0, [sp]
	cmp r0, #0x1c
	bgt _0801B0D0
	mov r3, ip
	adds r4, r6, #0
_0801B084:
	ldr r2, [sp, #4]
	ldr r0, [sp]
	lsls r2, r2, #6
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r2, r2, r3
	ldr r0, [sp, #4]
	ldr r1, [sp]
	lsls r0, r0, #6
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r3, #0
	adds r1, #0x80
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r1, [sp, #4]
	ldr r0, [sp]
	lsls r1, r1, #6
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r0, r3, #0
	adds r0, #0x40
	adds r1, r1, r0
	ldr r0, [sp, #4]
	ldr r2, [sp]
	lsls r0, r0, #6
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, [sp]
	adds r0, #1
	str r0, [sp]
	ldr r0, [sp]
	cmp r0, #0x1c
	ble _0801B084
_0801B0D0:
	ldr r0, [sp, #4]
	adds r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #4]
	cmp r0, #6
	ble _0801B076
_0801B0DC:
	movs r0, #0xc
	str r0, [sp]
	ldr r0, [sp]
	cmp r0, #0x1c
	bgt _0801B120
	ldr r2, _0801B1B4 @ =0x02004800
	adds r4, r2, #0
	subs r4, #0xc0
	ldr r0, _0801B1B8 @ =0xFFFFFF00
	adds r3, r2, r0
_0801B0F0:
	ldr r1, [sp]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldr r0, [sp]
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, [sp]
	lsls r1, r1, #1
	adds r0, r2, #0
	adds r0, #0x40
	adds r1, r1, r0
	ldr r0, [sp]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, [sp]
	adds r0, #1
	str r0, [sp]
	ldr r0, [sp]
	cmp r0, #0x1c
	ble _0801B0F0
_0801B120:
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #4]
	cmp r0, #7
	bgt _0801B1A2
	ldr r6, _0801B1BC @ =0x02004480
	movs r7, #0x88
	lsls r7, r7, #3
	adds r7, r7, r6
	mov ip, r7
_0801B134:
	ldr r0, [sp, #4]
	adds r0, r5, r0
	subs r0, #1
	cmp r0, #0
	blt _0801B146
	ldr r0, [sp, #4]
	adds r0, r5, r0
	cmp r0, #0x14
	ble _0801B196
_0801B146:
	movs r0, #0x19
	str r0, [sp]
	ldr r0, [sp]
	cmp r0, #0x1c
	bgt _0801B196
	adds r3, r6, #0
	mov r4, ip
_0801B154:
	ldr r2, [sp, #4]
	ldr r0, [sp]
	lsls r2, r2, #6
	adds r2, r2, r0
	lsls r2, r2, #1
	adds r2, r2, r3
	ldr r0, [sp]
	lsls r0, r0, #1
	movs r7, #0x80
	lsls r7, r7, #3
	adds r1, r3, r7
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r1, [sp, #4]
	ldr r0, [sp]
	lsls r1, r1, #6
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r0, r3, #0
	adds r0, #0x40
	adds r1, r1, r0
	ldr r0, [sp]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, [sp]
	adds r0, #1
	str r0, [sp]
	ldr r0, [sp]
	cmp r0, #0x1c
	ble _0801B154
_0801B196:
	ldr r0, [sp, #4]
	adds r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #4]
	cmp r0, #7
	ble _0801B134
_0801B1A2:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B1AC: .4byte _08079F18
_0801B1B0: .4byte 0x02004400
_0801B1B4: .4byte 0x02004800
_0801B1B8: .4byte 0xFFFFFF00
_0801B1BC: .4byte 0x02004480

	thumb_func_start sub_801B1C0
sub_801B1C0: @ 0x0801B1C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r5, r0, #0
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r0, [r5, #0xc]
	adds r0, #1
	str r0, [r5, #0xc]
	ldr r2, _0801B25C @ =_080D9694
	ldr r3, [r5, #8]
	lsls r1, r3, #3
	adds r1, r1, r2
	ldrh r1, [r1, #4]
	cmp r0, r1
	ble _0801B1F6
	movs r1, #0
	str r1, [r5, #0xc]
	adds r0, r3, #1
	str r0, [r5, #8]
	cmp r0, #7
	bls _0801B1F6
	str r1, [r5, #8]
_0801B1F6:
	ldr r0, [r5, #0x14]
	adds r0, #1
	str r0, [r5, #0x14]
	ldr r2, _0801B260 @ =_080D9684
	ldr r3, [r5, #0x10]
	lsls r1, r3, #3
	adds r1, r1, r2
	ldrh r1, [r1, #4]
	cmp r0, r1
	ble _0801B218
	movs r1, #0
	str r1, [r5, #0x14]
	adds r0, r3, #1
	str r0, [r5, #0x10]
	cmp r0, #1
	bls _0801B218
	str r1, [r5, #0x10]
_0801B218:
	movs r0, #0
	mov r8, r0
_0801B21C:
	ldr r0, [sp, #0x10]
	add r0, r8
	subs r0, #1
	mov sb, r0
	mov r1, r8
	adds r1, #1
	str r1, [sp, #0x18]
	cmp r0, #0
	blt _0801B2E6
	cmp r0, #0x13
	bgt _0801B2E6
	lsls r0, r0, #2
	ldr r1, [sp, #0xc]
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _0801B27E
	mov r0, r8
	lsls r1, r0, #0x14
	movs r0, #0xc0
	lsls r0, r0, #0xd
	adds r1, r1, r0
	movs r0, #0xd0
	orrs r0, r1
	str r0, [sp, #8]
	ldr r1, [sp, #0x14]
	cmp r8, r1
	beq _0801B264
	ldr r0, [r5, #8]
	lsls r0, r0, #3
	ldr r1, _0801B25C @ =_080D9694
	b _0801B26A
	.align 2, 0
_0801B25C: .4byte _080D9694
_0801B260: .4byte _080D9684
_0801B264:
	ldr r0, [r5, #0x10]
	lsls r0, r0, #3
	ldr r1, _0801B2BC @ =_080D9684
_0801B26A:
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_0801B27E:
	movs r7, #0
	mov r0, r8
	adds r0, #1
	str r0, [sp, #0x18]
	add r6, sp, #8
	mov r1, r8
	lsls r0, r1, #4
	adds r0, #0x18
	mov sl, r0
	ldr r4, [sp, #0xc]
	adds r4, #0x8c
_0801B294:
	ldr r0, [r4]
	cmp r0, #0
	beq _0801B2DE
	ldr r0, [sp, #0xc]
	adds r0, #0x94
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, sb
	bne _0801B2DE
	movs r0, #0xe0
	strh r0, [r6]
	mov r0, sl
	strh r0, [r6, #2]
	ldr r1, [sp, #0x14]
	cmp r8, r1
	beq _0801B2C4
	ldr r0, [r5, #8]
	lsls r0, r0, #3
	ldr r1, _0801B2C0 @ =_080D96E4
	b _0801B2CA
	.align 2, 0
_0801B2BC: .4byte _080D9684
_0801B2C0: .4byte _080D96E4
_0801B2C4:
	ldr r0, [r5, #0x10]
	lsls r0, r0, #3
	ldr r1, _0801B300 @ =_080D96D4
_0801B2CA:
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_0801B2DE:
	adds r4, #4
	adds r7, #1
	cmp r7, #1
	ble _0801B294
_0801B2E6:
	ldr r0, [sp, #0x18]
	mov r8, r0
	cmp r0, #7
	ble _0801B21C
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B300: .4byte _080D96D4

	thumb_func_start sub_801B304
sub_801B304: @ 0x0801B304
	push {r4, lr}
	adds r2, r0, #0
	movs r4, #0
	ldr r0, [r2, #0x18]
	adds r0, #1
	str r0, [r2, #0x18]
	cmp r0, #7
	ble _0801B322
	str r4, [r2, #0x18]
	ldr r0, [r2, #0x1c]
	adds r0, #1
	str r0, [r2, #0x1c]
	cmp r0, #6
	ble _0801B322
	str r4, [r2, #0x1c]
_0801B322:
	ldr r1, [r2]
	ldr r0, [r2, #4]
	adds r1, r1, r0
	subs r0, r1, #1
	cmp r0, #0
	bge _0801B330
	adds r0, r1, #2
_0801B330:
	asrs r0, r0, #2
	cmp r0, #4
	bhi _0801B390
	lsls r0, r0, #2
	ldr r1, _0801B340 @ =_0801B344
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801B340: .4byte _0801B344
_0801B344: @ jump table
	.4byte _0801B358 @ case 0
	.4byte _0801B364 @ case 1
	.4byte _0801B370 @ case 2
	.4byte _0801B37C @ case 3
	.4byte _0801B388 @ case 4
_0801B358:
	ldr r0, [r2, #0x1c]
	lsls r0, r0, #5
	ldr r1, _0801B360 @ =_0807CD88
	b _0801B38E
	.align 2, 0
_0801B360: .4byte _0807CD88
_0801B364:
	ldr r0, [r2, #0x1c]
	lsls r0, r0, #5
	ldr r1, _0801B36C @ =_0807CE68
	b _0801B38E
	.align 2, 0
_0801B36C: .4byte _0807CE68
_0801B370:
	ldr r0, [r2, #0x1c]
	lsls r0, r0, #5
	ldr r1, _0801B378 @ =_0807CF48
	b _0801B38E
	.align 2, 0
_0801B378: .4byte _0807CF48
_0801B37C:
	ldr r0, [r2, #0x1c]
	lsls r0, r0, #5
	ldr r1, _0801B384 @ =_0807D028
	b _0801B38E
	.align 2, 0
_0801B384: .4byte _0807D028
_0801B388:
	ldr r0, [r2, #0x1c]
	lsls r0, r0, #5
	ldr r1, _0801B3B0 @ =_0807D108
_0801B38E:
	adds r4, r0, r1
_0801B390:
	cmp r4, #0
	beq _0801B3AA
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
_0801B3AA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801B3B0: .4byte _0807D108

	thumb_func_start sub_801B3B4
sub_801B3B4: @ 0x0801B3B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	adds r5, r3, #0
	cmp r5, #0
	beq _0801B412
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0801B4A0 @ =0xFFFF0000
	ldr r2, [sp, #8]
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #8]
	lsls r0, r4, #2
	adds r0, r0, r4
	ldr r1, _0801B4A4 @ =gSinTable
	lsls r0, r0, #0x19
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801B3E6
	adds r0, #0x3f
_0801B3E6:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #1
	asrs r0, r0, #0xf
	adds r0, r7, r0
	lsls r0, r0, #0x10
	ldr r1, _0801B4A8 @ =0x0000FFFF
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #8]
	ldr r0, _0801B4AC @ =_080C94F8
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_0801B412:
	ldr r0, [sp, #0x24]
	subs r0, #1
	mov r8, r0
	cmp r5, r8
	beq _0801B456
	movs r2, #0
	add r0, sp, #8
	strh r6, [r0]
	lsls r0, r4, #2
	adds r0, r0, r4
	ldr r1, _0801B4A4 @ =gSinTable
	lsls r0, r0, #0x19
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801B432
	adds r0, #0x3f
_0801B432:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #1
	rsbs r0, r0, #0
	asrs r0, r0, #0xf
	adds r0, r7, r0
	add r1, sp, #8
	strh r0, [r1, #2]
	ldr r0, _0801B4B0 @ =_080C9500
	str r2, [sp]
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_0801B456:
	movs r4, #0
	add r0, sp, #8
	strh r6, [r0]
	movs r0, #0x2c
	muls r0, r5, r0
	mov r1, r8
	bl __divsi3
	subs r0, #0x16
	adds r0, r7, r0
	add r5, sp, #8
	strh r0, [r5, #2]
	ldr r0, _0801B4B4 @ =_080C9318
	str r4, [sp]
	str r4, [sp, #4]
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	add r0, sp, #8
	strh r6, [r0]
	strh r7, [r5, #2]
	ldr r0, _0801B4B8 @ =_080C92E8
	str r4, [sp]
	str r4, [sp, #4]
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B4A0: .4byte 0xFFFF0000
_0801B4A4: .4byte gSinTable
_0801B4A8: .4byte 0x0000FFFF
_0801B4AC: .4byte _080C94F8
_0801B4B0: .4byte _080C9500
_0801B4B4: .4byte _080C9318
_0801B4B8: .4byte _080C92E8

	thumb_func_start sub_801B4BC
sub_801B4BC: @ 0x0801B4BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #8]
	ldr r1, _0801B584 @ =0x00000504
	adds r0, r0, r1
	mov r8, r0
	bl main_getRepeatTriggerKeys
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	bl main_getTriggerKeys
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r2, r8
	ldr r4, [r2]
	ldr r5, [r2, #4]
	adds r1, r5, r4
	subs r0, r1, #1
	cmp r0, #0
	bge _0801B4F2
	adds r0, r1, #2
_0801B4F2:
	asrs r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	movs r2, #0xa1
	lsls r2, r2, #3
	adds r1, r0, r2
	mov r0, r8
	adds r2, r6, #0
	movs r3, #0x16
	bl sub_800E4D0
	mov r1, r8
	ldr r0, [r1]
	cmp r4, r0
	bne _0801B518
	ldr r0, [r1, #4]
	cmp r5, r0
	bne _0801B518
	b _0801B6A0
_0801B518:
	movs r0, #0x8d
	bl m4aSongNumStart
	movs r0, #0
	bl map_clearBuffer
	mov r2, r8
	ldr r1, [r2]
	ldr r6, _0801B588 @ =0x06005800
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r4, r0, #8
	movs r5, #7
_0801B532:
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0801B58C @ =0x02025400
	adds r1, r4, r1
	adds r2, r6, #0
	ldr r3, _0801B590 @ =0x80000180
	bl dmaq_enqueue
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r6, r6, r0
	adds r4, r4, r0
	subs r5, #1
	cmp r5, #0
	bge _0801B532
	mov r1, r8
	ldr r1, [r1]
	mov sl, r1
	mov r2, r8
	ldr r2, [r2, #4]
	mov sb, r2
	movs r4, #0
_0801B55E:
	lsls r2, r4, #1
	movs r0, #1
	movs r1, #0xd
	bl map_getBufferPtr2d
	mov ip, r0
	cmp r4, sb
	beq _0801B594
	mov r0, sl
	adds r1, r4, r0
	movs r0, #1
	ands r1, r0
	movs r0, #0xa0
	lsls r0, r0, #7
	cmp r1, #0
	beq _0801B598
	movs r0, #0xc0
	lsls r0, r0, #7
	b _0801B598
	.align 2, 0
_0801B584: .4byte 0x00000504
_0801B588: .4byte 0x06005800
_0801B58C: .4byte 0x02025400
_0801B590: .4byte 0x80000180
_0801B594:
	movs r0, #0xb0
	lsls r0, r0, #8
_0801B598:
	adds r2, r0, #0
	movs r1, #0
	adds r6, r4, #1
	ldr r7, _0801B658 @ =0x00000FFF
_0801B5A0:
	lsls r0, r1, #6
	adds r5, r1, #1
	adds r0, #0x80
	mov r1, ip
	adds r3, r1, r0
	movs r4, #0xb
_0801B5AC:
	ldrh r1, [r3]
	adds r0, r7, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
	adds r3, #2
	subs r4, #1
	cmp r4, #0
	bge _0801B5AC
	adds r1, r5, #0
	cmp r1, #1
	ble _0801B5A0
	adds r4, r6, #0
	cmp r4, #7
	ble _0801B55E
	mov r2, r8
	ldr r0, [r2]
	bl sub_801B048
	mov r0, r8
	ldr r1, [r0]
	ldr r0, [r0, #4]
	adds r0, r1, r0
	subs r0, #1
	ldr r6, _0801B65C @ =_080DA76C
	cmp r0, #0x13
	bhi _0801B668
	bl track_getMKSCTrack
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_805CE3C
	lsls r0, r0, #0x18
	asrs r4, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0801B660
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_805DE90
	adds r5, r0, #0
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	adds r0, r4, #0
	bl sub_805DEB8
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	movs r0, #0
	movs r1, #2
	movs r2, #7
	bl map_getBufferPtr2d
	adds r1, r0, #0
	movs r0, #0xb0
	lsls r0, r0, #2
	str r0, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0xd8
	lsls r2, r2, #2
	movs r3, #0xc
	bl sub_800E728
	cmp r4, #0
	beq _0801B668
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0
	movs r1, #4
	movs r2, #7
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0xc8
	lsls r2, r2, #2
	movs r3, #0xf
	bl sub_800C6D4
	b _0801B668
	.align 2, 0
_0801B658: .4byte 0x00000FFF
_0801B65C: .4byte _080DA76C
_0801B660:
	ldr r1, _0801B6CC @ =_080DA88C
	movs r0, #0
	bl sub_80142CC
_0801B668:
	movs r0, #0
	adds r1, r6, #0
	bl sub_80142CC
	movs r0, #1
	bl map_setBufferDirty
	movs r0, #2
	bl map_setBufferDirty
	bl dmaq_getVBlankDmaQueue
	ldr r4, _0801B6D0 @ =0x02004400
	adds r1, r4, #0
	ldr r2, _0801B6D4 @ =0x06001000
	ldr r3, _0801B6D8 @ =0x80000400
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	movs r1, #0x80
	lsls r1, r1, #7
	adds r4, r4, r1
	adds r1, r4, #0
	ldr r2, _0801B6DC @ =0x06002000
	ldr r3, _0801B6D8 @ =0x80000400
	bl dmaq_enqueue
_0801B6A0:
	mov r2, r8
	ldr r1, [r2, #4]
	ldr r0, [r2]
	adds r1, r1, r0
	subs r2, r1, #1
	adds r0, r2, #0
	cmp r2, #0
	bge _0801B6B2
	adds r0, r1, #2
_0801B6B2:
	asrs r0, r0, #2
	ldr r1, [sp, #0x10]
	cmp r1, r0
	beq _0801B734
	movs r2, #0
	cmp r0, #4
	bhi _0801B71A
	lsls r0, r0, #2
	ldr r1, _0801B6E0 @ =_0801B6E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801B6CC: .4byte _080DA88C
_0801B6D0: .4byte 0x02004400
_0801B6D4: .4byte 0x06001000
_0801B6D8: .4byte 0x80000400
_0801B6DC: .4byte 0x06002000
_0801B6E0: .4byte _0801B6E4
_0801B6E4: @ jump table
	.4byte _0801B6F8 @ case 0
	.4byte _0801B700 @ case 1
	.4byte _0801B708 @ case 2
	.4byte _0801B710 @ case 3
	.4byte _0801B718 @ case 4
_0801B6F8:
	ldr r2, _0801B6FC @ =_0807DCB4
	b _0801B71A
	.align 2, 0
_0801B6FC: .4byte _0807DCB4
_0801B700:
	ldr r2, _0801B704 @ =_0807DDC8
	b _0801B71A
	.align 2, 0
_0801B704: .4byte _0807DDC8
_0801B708:
	ldr r2, _0801B70C @ =_0807DEDC
	b _0801B71A
	.align 2, 0
_0801B70C: .4byte _0807DEDC
_0801B710:
	ldr r2, _0801B714 @ =_0807DFF8
	b _0801B71A
	.align 2, 0
_0801B714: .4byte _0807DFF8
_0801B718:
	ldr r2, _0801B760 @ =_0807E10C
_0801B71A:
	cmp r2, #0
	beq _0801B726
	ldr r1, _0801B764 @ =0x02008400
	adds r0, r2, #0
	bl LZ77UnCompWram
_0801B726:
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0801B764 @ =0x02008400
	ldr r2, _0801B768 @ =0x06002000
	ldr r3, _0801B76C @ =0x80000400
	bl dmaq_enqueue
_0801B734:
	movs r0, #2
	ldr r2, [sp, #0xc]
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0801B774
	movs r0, #0x90
	bl m4aSongNumStart
	movs r3, #0
	movs r2, #4
	ldr r0, [sp, #8]
	strb r2, [r0, #0xf]
	ldr r1, _0801B770 @ =0x03000190
	ldr r0, [r1]
	strb r2, [r0, #2]
	ldr r0, [r1]
	str r3, [r0, #4]
	bl sub_801D25C
	b _0801B8C6
	.align 2, 0
_0801B760: .4byte _0807E10C
_0801B764: .4byte 0x02008400
_0801B768: .4byte 0x06002000
_0801B76C: .4byte 0x80000400
_0801B770: .4byte 0x03000190
_0801B774:
	movs r0, #9
	ldr r1, [sp, #0xc]
	ands r0, r1
	cmp r0, #0
	bne _0801B780
	b _0801B8C6
_0801B780:
	mov r2, r8
	ldr r1, [r2]
	ldr r0, [r2, #4]
	adds r4, r1, r0
	cmp r4, #0
	bne _0801B7B0
	movs r0, #0x8e
	bl m4aSongNumStart
	ldr r1, _0801B7AC @ =0x03000190
	ldr r0, [r1]
	strb r4, [r0, #0x12]
	movs r2, #3
	ldr r0, [r1]
	strb r2, [r0, #2]
	ldr r0, [r1]
	str r4, [r0, #4]
	movs r0, #1
	ldr r1, [sp, #8]
	strb r0, [r1, #0xf]
	b _0801B8C6
	.align 2, 0
_0801B7AC: .4byte 0x03000190
_0801B7B0:
	cmp r4, #0x15
	bne _0801B7D8
	movs r0, #0x8e
	bl m4aSongNumStart
	movs r2, #4
	ldr r1, _0801B7D4 @ =0x03000190
	ldr r0, [r1]
	strb r2, [r0, #2]
	ldr r0, [r1]
	str r5, [r0, #4]
	movs r0, #1
	ldr r2, [sp, #8]
	strb r0, [r2, #0xf]
	bl sub_801D25C
	b _0801B8C6
	.align 2, 0
_0801B7D4: .4byte 0x03000190
_0801B7D8:
	subs r1, r4, #1
	cmp r1, #0x13
	bhi _0801B7F0
	ldr r0, _0801B7EC @ =0x03000190
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r0, #0x4c
	adds r0, r0, r1
	ldr r0, [r0]
	b _0801B7F2
	.align 2, 0
_0801B7EC: .4byte 0x03000190
_0801B7F0:
	movs r0, #0
_0801B7F2:
	cmp r0, #0
	beq _0801B8C0
	movs r0, #0x8e
	bl m4aSongNumStart
	movs r0, #0
	bl map_clearBuffer
	mov r0, r8
	ldr r1, [r0]
	ldr r0, [r0, #4]
	adds r0, r1, r0
	subs r0, #1
	ldr r6, _0801B888 @ =_080DA7F8
	cmp r0, #0x13
	bhi _0801B894
	bl track_getMKSCTrack
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_805CE3C
	lsls r0, r0, #0x18
	asrs r4, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0801B88C
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_805DE90
	adds r5, r0, #0
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	adds r0, r4, #0
	bl sub_805DEB8
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	movs r0, #0
	movs r1, #2
	movs r2, #7
	bl map_getBufferPtr2d
	adds r1, r0, #0
	movs r0, #0xb0
	lsls r0, r0, #2
	str r0, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0xd8
	lsls r2, r2, #2
	movs r3, #0xc
	bl sub_800E728
	cmp r4, #0
	beq _0801B894
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0
	movs r1, #4
	movs r2, #7
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0xc8
	lsls r2, r2, #2
	movs r3, #0xf
	bl sub_800C6D4
	b _0801B894
	.align 2, 0
_0801B888: .4byte _080DA7F8
_0801B88C:
	ldr r1, _0801B8B8 @ =_080DA88C
	movs r0, #0
	bl sub_80142CC
_0801B894:
	movs r0, #0
	adds r1, r6, #0
	bl sub_80142CC
	movs r0, #1
	bl map_setBufferDirty
	movs r3, #0
	ldr r1, [sp, #8]
	strb r3, [r1, #0x12]
	movs r2, #3
	ldr r1, _0801B8BC @ =0x03000190
	ldr r0, [r1]
	strb r2, [r0, #2]
	ldr r0, [r1]
	str r3, [r0, #4]
	b _0801B8C6
	.align 2, 0
_0801B8B8: .4byte _080DA88C
_0801B8BC: .4byte 0x03000190
_0801B8C0:
	movs r0, #0x91
	bl m4aSongNumStart
_0801B8C6:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801B8D8
sub_801B8D8: @ 0x0801B8D8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r6, r0, #0
	ldr r0, _0801B900 @ =0x00000504
	adds r7, r6, r0
	movs r1, #0xd4
	lsls r1, r1, #3
	adds r2, r6, r1
	ldrb r0, [r6, #2]
	cmp r0, #5
	bls _0801B8F4
	b _0801BBA4
_0801B8F4:
	lsls r0, r0, #2
	ldr r1, _0801B904 @ =_0801B908
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801B900: .4byte 0x00000504
_0801B904: .4byte _0801B908
_0801B908: @ jump table
	.4byte _0801B920 @ case 0
	.4byte _0801B954 @ case 1
	.4byte _0801B978 @ case 2
	.4byte _0801B980 @ case 3
	.4byte _0801BAB8 @ case 4
	.4byte _0801BAD8 @ case 5
_0801B920:
	ldr r1, _0801B94C @ =0x00000504
	adds r0, r6, r1
	movs r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	adds r0, r6, #0
	bl sub_8017C30
	movs r0, #0x3f
	bl sub_801D240
	ldr r2, _0801B950 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	b _0801BBA0
	.align 2, 0
_0801B94C: .4byte 0x00000504
_0801B950: .4byte 0x03000190
_0801B954:
	bl sub_801D28C
	adds r4, r0, #0
	cmp r4, #0
	beq _0801B960
	b _0801BBA4
_0801B960:
	movs r0, #0x25
	bl m4aSongNumStart
	ldr r2, _0801B974 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	b _0801BBA0
	.align 2, 0
_0801B974: .4byte 0x03000190
_0801B978:
	adds r0, r6, #0
	bl sub_801B4BC
	b _0801BBA4
_0801B980:
	bl main_getTriggerKeys
	movs r4, #9
	ands r4, r0
	cmp r4, #0
	beq _0801B9B0
	movs r3, #0
	movs r0, #3
	strb r0, [r6, #0xf]
	movs r2, #4
	ldr r1, _0801B9AC @ =0x03000190
	ldr r0, [r1]
	strb r2, [r0, #2]
	ldr r0, [r1]
	str r3, [r0, #4]
	bl sub_801D25C
	movs r0, #0x8f
	bl m4aSongNumStart
	b _0801BA7A
	.align 2, 0
_0801B9AC: .4byte 0x03000190
_0801B9B0:
	bl main_getTriggerKeys
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq _0801BA7A
	ldr r2, _0801BA5C @ =0x03000190
	ldr r1, [r2]
	movs r0, #2
	strb r0, [r1, #2]
	ldr r0, [r2]
	str r4, [r0, #4]
	movs r0, #0x90
	bl m4aSongNumStart
	movs r0, #0
	bl map_clearBuffer
	ldr r1, [r7]
	ldr r0, [r7, #4]
	adds r0, r1, r0
	subs r0, #1
	ldr r1, _0801BA60 @ =_080DA76C
	mov r8, r1
	cmp r0, #0x13
	bhi _0801BA6C
	bl track_getMKSCTrack
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_805CE3C
	lsls r0, r0, #0x18
	asrs r4, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0801BA64
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_805DE90
	adds r5, r0, #0
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	adds r0, r4, #0
	bl sub_805DEB8
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	movs r0, #0
	movs r1, #2
	movs r2, #7
	bl map_getBufferPtr2d
	adds r1, r0, #0
	movs r0, #0xb0
	lsls r0, r0, #2
	str r0, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0xd8
	lsls r2, r2, #2
	movs r3, #0xc
	bl sub_800E728
	cmp r4, #0
	beq _0801BA6C
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0
	movs r1, #4
	movs r2, #7
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0xc8
	lsls r2, r2, #2
	movs r3, #0xf
	bl sub_800C6D4
	b _0801BA6C
	.align 2, 0
_0801BA5C: .4byte 0x03000190
_0801BA60: .4byte _080DA76C
_0801BA64:
	ldr r1, _0801BAAC @ =_080DA88C
	movs r0, #0
	bl sub_80142CC
_0801BA6C:
	movs r0, #0
	mov r1, r8
	bl sub_80142CC
	movs r0, #1
	bl map_setBufferDirty
_0801BA7A:
	ldrb r0, [r6, #0x12]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0x12]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _0801BA8C
	strb r1, [r6, #0x12]
_0801BA8C:
	ldrb r0, [r6, #0x12]
	cmp r0, #0x13
	bls _0801BA94
	b _0801BBA4
_0801BA94:
	ldr r0, _0801BAB0 @ =0x009000D8
	str r0, [sp, #8]
	ldr r0, _0801BAB4 @ =_080C9520
	str r1, [sp]
	str r1, [sp, #4]
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	b _0801BBA4
	.align 2, 0
_0801BAAC: .4byte _080DA88C
_0801BAB0: .4byte 0x009000D8
_0801BAB4: .4byte _080C9520
_0801BAB8:
	bl sub_801D28C
	adds r3, r0, #0
	cmp r3, #0
	bne _0801BBA4
	ldr r2, _0801BAD4 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldr r0, [r2]
	str r3, [r0, #4]
	b _0801BBA4
	.align 2, 0
_0801BAD4: .4byte 0x03000190
_0801BAD8:
	ldrb r4, [r6, #0xf]
	cmp r4, #1
	beq _0801BAF6
	cmp r4, #1
	bgt _0801BAE8
	cmp r4, #0
	beq _0801BAF2
	b _0801BBA4
_0801BAE8:
	cmp r4, #3
	beq _0801BB0E
	cmp r4, #4
	beq _0801BB78
	b _0801BBA4
_0801BAF2:
	movs r3, #0x13
	b _0801BB90
_0801BAF6:
	ldrb r1, [r2, #1]
	ldrb r0, [r2]
	cmp r0, #0
	beq _0801BB02
	movs r0, #2
	b _0801BB04
_0801BB02:
	movs r0, #4
_0801BB04:
	orrs r0, r1
	movs r4, #0
	strb r0, [r2, #1]
	movs r3, #0x10
	b _0801BB90
_0801BB0E:
	ldr r1, _0801BB70 @ =0x03000190
	ldr r0, [r1]
	ldrb r2, [r0]
	movs r3, #0
	strb r2, [r0, #1]
	ldr r0, [r1]
	strb r4, [r0]
	ldr r0, [r1]
	strb r3, [r0, #2]
	ldr r0, [r1]
	str r3, [r0, #4]
	ldr r0, [r7]
	ldr r1, [r7, #4]
	adds r0, r0, r1
	subs r4, r0, #1
	cmp r4, #0x13
	bhi _0801BB74
	adds r0, r4, #0
	bl track_getMKSCTrack
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_805CE3C
	lsls r0, r0, #0x18
	asrs r5, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	beq _0801BBA4
	movs r0, #1
	strb r0, [r6, #0x1c]
	strb r4, [r6, #0x1d]
	lsls r4, r5, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_805DE90
	strb r0, [r6, #0x1e]
	adds r0, r4, #0
	bl sub_805DEB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r6, #0x20]
	adds r0, r6, #0
	adds r0, #0x24
	strb r5, [r0]
	b _0801BBA4
	.align 2, 0
_0801BB70: .4byte 0x03000190
_0801BB74:
	strb r3, [r6, #0x1c]
	b _0801BBA4
_0801BB78:
	ldrb r1, [r2, #1]
	ldrb r0, [r2]
	cmp r0, #0
	beq _0801BB86
	movs r0, #2
	orrs r0, r1
	b _0801BB8A
_0801BB86:
	adds r0, r1, #0
	orrs r0, r4
_0801BB8A:
	movs r4, #0
	strb r0, [r2, #1]
	movs r3, #1
_0801BB90:
	ldr r2, _0801BBFC @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1]
	strb r0, [r1, #1]
	ldr r0, [r2]
	strb r3, [r0]
	ldr r0, [r2]
	strb r4, [r0, #2]
_0801BBA0:
	ldr r0, [r2]
	str r4, [r0, #4]
_0801BBA4:
	ldr r4, [r6, #8]
	movs r0, #0
	bl pltt_getBuffer
	adds r2, r0, #0
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r2, r2, r0
	ldr r0, _0801BC00 @ =_080B23B0
	adds r1, r0, #0
	adds r1, #0x20
	movs r3, #0x10
	str r3, [sp]
	adds r3, r4, #0
	bl sub_8005E04
	movs r0, #1
	bl pltt_setDirtyFlag
	adds r0, r7, #0
	bl sub_801B304
	ldr r0, [r6, #8]
	ldr r3, [r7]
	movs r1, #0xf
	str r1, [sp]
	movs r1, #0xee
	movs r2, #0x60
	bl sub_801B3B4
	ldr r1, [r7]
	ldr r0, [r7, #4]
	adds r1, r1, r0
	subs r1, #1
	cmp r1, #0x13
	bhi _0801BC04
	ldr r0, _0801BBFC @ =0x03000190
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r0, #0x4c
	adds r0, r0, r1
	ldr r0, [r0]
	b _0801BC06
	.align 2, 0
_0801BBFC: .4byte 0x03000190
_0801BC00: .4byte _080B23B0
_0801BC04:
	movs r0, #0
_0801BC06:
	cmp r0, #0
	beq _0801BC1E
	ldr r0, _0801BC4C @ =0x00390032
	str r0, [sp, #0xc]
	ldr r0, _0801BC50 @ =_080C95BC
	add r1, sp, #0xc
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r3, #0
	bl oam_renderCellData
_0801BC1E:
	adds r1, r6, #0
	adds r1, #0x4c
	ldr r2, [r7]
	ldr r3, [r7, #4]
	adds r0, r7, #0
	bl sub_801B1C0
	ldr r0, _0801BC54 @ =0x000B00D8
	str r0, [sp, #0x10]
	ldr r0, _0801BC58 @ =_080C96D4
	add r1, sp, #0x10
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r3, #0
	bl oam_renderCellData
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801BC4C: .4byte 0x00390032
_0801BC50: .4byte _080C95BC
_0801BC54: .4byte 0x000B00D8
_0801BC58: .4byte _080C96D4

	thumb_func_start sub_801BC5C
sub_801BC5C: @ 0x0801BC5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r5, r0, #0
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r6, r5, r0
	movs r1, #0xe5
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	mov r8, r0
	ldr r0, [r6, #8]
	cmp r0, r8
	beq _0801BCE6
	mov r2, r8
	cmp r2, #1
	bgt _0801BCA4
	movs r0, #0
	str r0, [sp, #8]
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _0801BCA0 @ =0x01000080
	add r0, sp, #8
	bl CpuFastSet
	b _0801BCC2
	.align 2, 0
_0801BCA0: .4byte 0x01000080
_0801BCA4:
	ldr r1, _0801BD80 @ =_080D9E44
	mov r0, r8
	subs r0, #2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
_0801BCC2:
	movs r0, #1
	bl map_setBufferDirty
	mov r3, r8
	str r3, [r6, #8]
	movs r4, #0x9f
	lsls r4, r4, #2
	adds r1, r6, r4
	movs r0, #0
	str r0, [r1]
	movs r0, #0xa1
	lsls r0, r0, #2
	adds r1, r6, r0
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r0, [r0]
	str r0, [r1]
_0801BCE6:
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r0, r6, r3
	ldr r0, [r0]
	cmp r0, #1
	bgt _0801BD90
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r2, [r5, #8]
	movs r0, #0xb
	str r0, [sp]
	movs r0, #0x80
	movs r3, #0x10
	bl sub_800E930
	adds r5, r0, #0
	movs r4, #0x9f
	lsls r4, r4, #2
	adds r1, r6, r4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x10
	bgt _0801BD52
	ldr r1, _0801BD84 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801BD22
	adds r0, #0x3f
_0801BD22:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	movs r0, #0xa1
	lsls r0, r0, #2
	adds r2, r6, r0
	movs r4, #0
	ldrsh r1, [r2, r4]
	movs r0, #0x78
	subs r0, r0, r1
	muls r0, r3, r0
	asrs r0, r0, #0xf
	ldrh r2, [r2]
	adds r0, r0, r2
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r6, r2
	strh r0, [r1]
	ldr r3, _0801BD88 @ =0x00000282
	adds r1, r6, r3
	movs r0, #0x45
	strh r0, [r1]
_0801BD52:
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r4, r6, r0
	movs r1, #0xa2
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r3, #2
	ldrsh r2, [r4, r3]
	adds r3, r5, #0
	bl sub_801404C
	ldr r0, _0801BD8C @ =_080CA6E8
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r5, #0
	bl oam_renderCellData
	b _0801BEE4
	.align 2, 0
_0801BD80: .4byte _080D9E44
_0801BD84: .4byte gSinTable
_0801BD88: .4byte 0x00000282
_0801BD8C: .4byte _080CA6E8
_0801BD90:
	movs r7, #0
	cmp r7, r8
	blt _0801BD98
	b _0801BEE4
_0801BD98:
	ldr r4, _0801BE10 @ =0xFFFF0000
	mov sl, r4
	ldr r0, _0801BE14 @ =0x0000FFFF
	mov sb, r0
_0801BDA0:
	ldr r0, _0801BE18 @ =_080D9F5C
	mov r1, r8
	subs r1, #2
	adds r1, r1, r0
	lsls r0, r7, #4
	subs r0, r0, r7
	lsls r0, r0, #2
	ldrb r1, [r1]
	adds r3, r0, r1
	ldr r2, [r6, #4]
	cmp r7, r2
	bne _0801BE24
	movs r2, #0x9f
	lsls r2, r2, #2
	adds r1, r6, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x10
	bgt _0801BE02
	ldr r1, _0801BE1C @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801BDD4
	adds r0, #0x3f
_0801BDD4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	movs r4, #0xa1
	lsls r4, r4, #2
	adds r1, r6, r4
	movs r4, #0
	ldrsh r0, [r1, r4]
	subs r0, r3, r0
	muls r0, r2, r0
	asrs r0, r0, #0xf
	ldrh r1, [r1]
	adds r0, r0, r1
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r6, r2
	strh r0, [r1]
	ldr r3, _0801BE20 @ =0x00000282
	adds r1, r6, r3
	movs r0, #0x45
	strh r0, [r1]
_0801BE02:
	movs r4, #0xa0
	lsls r4, r4, #2
	adds r0, r6, r4
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldr r2, [r6, #4]
	b _0801BE3C
	.align 2, 0
_0801BE10: .4byte 0xFFFF0000
_0801BE14: .4byte 0x0000FFFF
_0801BE18: .4byte _080D9F5C
_0801BE1C: .4byte gSinTable
_0801BE20: .4byte 0x00000282
_0801BE24:
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #0x14]
	mov r3, sl
	ands r1, r3
	orrs r1, r0
	mov r4, sb
	ands r1, r4
	movs r0, #0x8a
	lsls r0, r0, #0xf
	orrs r1, r0
	str r1, [sp, #0x14]
_0801BE3C:
	add r5, sp, #0x14
	cmp r7, r2
	bne _0801BE74
	ldrh r0, [r5]
	ldr r1, [sp, #0xc]
	mov r2, sl
	ands r1, r2
	orrs r1, r0
	ldr r0, [sp, #0x14]
	asrs r0, r0, #0x10
	adds r0, #0x10
	lsls r0, r0, #0x10
	mov r3, sb
	ands r1, r3
	orrs r1, r0
	str r1, [sp, #0xc]
	ldr r1, _0801BEC0 @ =_080D9F60
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r1, sp, #0xc
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_0801BE74:
	ldrh r0, [r5]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #0x10]
	mov r4, sl
	ands r1, r4
	orrs r1, r0
	ldr r0, [sp, #0x14]
	asrs r0, r0, #0x10
	adds r0, #1
	lsls r0, r0, #0x10
	mov r2, sb
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x10]
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	ldr r0, _0801BEC4 @ =_080D9E3C
	add r1, sp, #0x10
	movs r2, #0xaa
	movs r3, #0xcc
	bl oam_renderCellData
	ldr r0, [r6, #4]
	cmp r7, r0
	bne _0801BECC
	str r4, [sp]
	str r4, [sp, #4]
	ldr r0, _0801BEC8 @ =_080D9E2C
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	b _0801BEDC
	.align 2, 0
_0801BEC0: .4byte _080D9F60
_0801BEC4: .4byte _080D9E3C
_0801BEC8: .4byte _080D9E2C
_0801BECC:
	str r4, [sp]
	str r4, [sp, #4]
	ldr r0, _0801BEF4 @ =_080D9E34
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_0801BEDC:
	adds r7, #1
	cmp r7, r8
	bge _0801BEE4
	b _0801BDA0
_0801BEE4:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801BEF4: .4byte _080D9E34

	thumb_func_start sub_801BEF8
sub_801BEF8: @ 0x0801BEF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #8]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r0, r1
	mov sb, r0
	movs r2, #1
	str r2, [sp, #0xc]
	ldr r0, _0801BF58 @ =_080C3D6A
	str r0, [sp, #0x10]
	movs r1, #0
	mov r8, r1
	ldr r2, [sp, #8]
	movs r0, #0xf0
	lsls r0, r0, #2
	adds r7, r2, r0
	movs r1, #0xb1
	lsls r1, r1, #1
	mov sl, r1
_0801BF28:
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	ldr r2, [sp, #0xc]
	cmp r2, r0
	bge _0801BF90
	ldr r0, [r7]
	cmp r0, #0
	bne _0801BF42
	movs r0, #0x8e
	bl m4aSongNumStart
_0801BF42:
	ldr r1, [r7]
	adds r0, r1, #1
	str r0, [r7]
	cmp r0, #0x10
	bgt _0801BF60
	adds r5, r0, #0
	ldr r6, _0801BF58 @ =_080C3D6A
	add r6, r8
	ldr r4, _0801BF5C @ =_080C3D7E
	b _0801BF6A
	.align 2, 0
_0801BF58: .4byte _080C3D6A
_0801BF5C: .4byte _080C3D7E
_0801BF60:
	adds r5, r1, #0
	subs r5, #0xf
	ldr r6, _0801BF88 @ =_080C3D7E
	add r6, r8
	ldr r4, _0801BF8C @ =_080C3D74
_0801BF6A:
	add r4, r8
	movs r0, #0
	bl pltt_getBuffer
	adds r2, r0, #0
	add r2, sl
	str r5, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r3, #5
	bl sub_800F2D8
	b _0801BFB8
	.align 2, 0
_0801BF88: .4byte _080C3D7E
_0801BF8C: .4byte _080C3D74
_0801BF90:
	ldr r1, [sp, #8]
	ldrb r0, [r1, #2]
	cmp r0, #4
	beq _0801BFA4
	ldr r0, [r7]
	cmp r0, #0
	ble _0801BFA4
	movs r0, #0x90
	bl m4aSongNumStart
_0801BFA4:
	movs r0, #0
	str r0, [r7]
	bl pltt_getBuffer
	adds r1, r0, #0
	add r1, sl
	ldr r0, [sp, #0x10]
	movs r2, #5
	bl CpuSet
_0801BFB8:
	ldr r2, [sp, #0x10]
	adds r2, #0x20
	str r2, [sp, #0x10]
	movs r0, #0x20
	add r8, r0
	adds r7, #4
	add sl, r0
	ldr r1, [sp, #0xc]
	adds r1, #1
	str r1, [sp, #0xc]
	cmp r1, #3
	ble _0801BF28
	movs r1, #0xab
	lsls r1, r1, #2
	add r1, sb
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	cmp r0, #1
	ble _0801C040
	mov r2, sb
	ldr r0, [r2, #4]
	cmp r0, #1
	bgt _0801BFF0
	movs r0, #0xa9
	lsls r0, r0, #2
	b _0801BFF8
_0801BFF0:
	cmp r0, #2
	bgt _0801BFFE
	movs r0, #0xaa
	lsls r0, r0, #2
_0801BFF8:
	add r0, sb
	ldr r0, [r0]
	b _0801C000
_0801BFFE:
	ldr r0, [r1]
_0801C000:
	cmp r0, #0x10
	bgt _0801C014
	adds r4, r0, #0
	ldr r6, _0801C00C @ =_080C3DC8
	ldr r5, _0801C010 @ =_080C3DE8
	b _0801C01C
	.align 2, 0
_0801C00C: .4byte _080C3DC8
_0801C010: .4byte _080C3DE8
_0801C014:
	adds r4, r0, #0
	subs r4, #0x10
	ldr r6, _0801C038 @ =_080C3DE8
	ldr r5, _0801C03C @ =_080C3DC8
_0801C01C:
	movs r0, #1
	bl pltt_getBuffer
	adds r2, r0, #0
	adds r2, #0xc0
	str r4, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #0x10
	bl sub_800F2D8
	b _0801C054
	.align 2, 0
_0801C038: .4byte _080C3DE8
_0801C03C: .4byte _080C3DC8
_0801C040:
	ldr r4, _0801C06C @ =_080C3DC8
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xc0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
_0801C054:
	movs r0, #1
	bl pltt_setDirtyFlag
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C06C: .4byte _080C3DC8

	thumb_func_start sub_801C070
sub_801C070: @ 0x0801C070
	push {lr}
	sub sp, #0xc
	movs r1, #0xf3
	lsls r1, r1, #2
	adds r3, r0, r1
	movs r0, #0xe
	ldrsb r0, [r3, r0]
	cmp r0, #5
	bhi _0801C166
	lsls r0, r0, #2
	ldr r1, _0801C08C @ =_0801C090
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801C08C: .4byte _0801C090
_0801C090: @ jump table
	.4byte _0801C166 @ case 0
	.4byte _0801C0A8 @ case 1
	.4byte _0801C0B0 @ case 2
	.4byte _0801C0EC @ case 3
	.4byte _0801C10C @ case 4
	.4byte _0801C11E @ case 5
_0801C0A8:
	movs r0, #0
	strh r0, [r3, #0x10]
	movs r0, #2
	b _0801C112
_0801C0B0:
	ldrh r0, [r3, #0x10]
	adds r0, #1
	strh r0, [r3, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	bgt _0801C0E4
	movs r2, #0x10
	ldrsh r0, [r3, r2]
	ldr r1, _0801C0E0 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801C0CE
	adds r0, #0x3f
_0801C0CE:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	movs r0, #4
	ldrsh r1, [r3, r0]
	movs r0, #0xf0
	b _0801C14E
	.align 2, 0
_0801C0E0: .4byte gSinTable
_0801C0E4:
	movs r0, #0
	strh r0, [r3, #0x10]
	movs r0, #3
	b _0801C164
_0801C0EC:
	ldrh r0, [r3, #0x10]
	adds r0, #1
	movs r1, #0
	strh r0, [r3, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1e
	ble _0801C0FE
	strh r1, [r3, #0x10]
_0801C0FE:
	movs r2, #0x10
	ldrsh r0, [r3, r2]
	cmp r0, #9
	bgt _0801C114
	strh r1, [r3, #0xa]
	strh r1, [r3, #8]
	b _0801C166
_0801C10C:
	movs r0, #0
	strh r0, [r3, #0x10]
	movs r0, #5
_0801C112:
	strb r0, [r3, #0xe]
_0801C114:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #0xa]
	strh r0, [r3, #8]
	b _0801C166
_0801C11E:
	ldrh r0, [r3, #0x10]
	adds r0, #1
	strh r0, [r3, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	bgt _0801C160
	movs r1, #0x10
	ldrsh r0, [r3, r1]
	ldr r1, _0801C15C @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801C13C
	adds r0, #0x3f
_0801C13C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	movs r0, #4
	ldrsh r1, [r3, r0]
	movs r0, #0x94
	lsls r0, r0, #1
_0801C14E:
	subs r0, r0, r1
	muls r0, r2, r0
	asrs r0, r0, #0xf
	ldrh r1, [r3, #4]
	adds r0, r0, r1
	strh r0, [r3, #4]
	b _0801C166
	.align 2, 0
_0801C15C: .4byte gSinTable
_0801C160:
	movs r0, #0
	strh r0, [r3, #0x10]
_0801C164:
	strb r0, [r3, #0xe]
_0801C166:
	movs r2, #8
	ldrsh r0, [r3, r2]
	cmp r0, #0
	beq _0801C192
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	cmp r0, #0
	beq _0801C192
	ldrh r1, [r3, #6]
	lsls r1, r1, #0x10
	ldrh r0, [r3, #4]
	orrs r0, r1
	str r0, [sp, #8]
	ldr r0, [r3]
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_0801C192:
	add sp, #0xc
	pop {r0}
	bx r0

	thumb_func_start sub_801C198
sub_801C198: @ 0x0801C198
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r3, r0, #0
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r0, r0, r3
	mov sb, r0
	movs r4, #0
	movs r6, #0x80
	lsls r6, r6, #1
	movs r5, #0
	mov ip, r5
_0801C1B4:
	movs r0, #0xb2
	lsls r0, r0, #2
	add r0, ip
	mov r7, sb
	adds r2, r7, r0
	ldr r0, [r2, #0x1c]
	cmp r0, #1
	beq _0801C1FC
	cmp r0, #1
	bgt _0801C1CE
	cmp r0, #0
	beq _0801C1D8
	b _0801C27A
_0801C1CE:
	cmp r0, #2
	beq _0801C20C
	cmp r0, #3
	beq _0801C248
	b _0801C27A
_0801C1D8:
	ldr r0, _0801C1F8 @ =0x0000FFF0
	strh r0, [r2]
	movs r0, #0x58
	strh r0, [r2, #2]
	movs r0, #0x60
	str r0, [r2, #4]
	subs r0, #0x61
	str r0, [r2, #8]
	str r4, [r2, #0x14]
	movs r0, #1
	str r0, [r2, #0x1c]
	str r5, [r2, #0x18]
	movs r0, #3
	str r0, [r2, #0x20]
	b _0801C27A
	.align 2, 0
_0801C1F8: .4byte 0x0000FFF0
_0801C1FC:
	ldr r0, [r2, #0x18]
	subs r0, #1
	str r0, [r2, #0x18]
	cmp r0, #0
	bge _0801C27A
	movs r0, #0
	str r0, [r2, #0x18]
	b _0801C276
_0801C20C:
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801C22A
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldr r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _0801C22A
	ldrh r0, [r2, #2]
	adds r0, #1
	b _0801C22E
_0801C22A:
	ldrh r0, [r2, #2]
	subs r0, #1
_0801C22E:
	strh r0, [r2, #2]
	ldrh r1, [r2]
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r0, r6
	ble _0801C27A
	ldr r7, _0801C244 @ =0xFFFFFEF0
	adds r0, r1, r7
	strh r0, [r2]
	movs r0, #3
	b _0801C278
	.align 2, 0
_0801C244: .4byte 0xFFFFFEF0
_0801C248:
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801C258
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
_0801C258:
	ldr r0, [r2, #4]
	adds r0, #2
	movs r1, #0x7f
	ands r0, r1
	str r0, [r2, #4]
	ldrh r1, [r2]
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r0, r6
	ble _0801C27A
	ldr r7, _0801C294 @ =0xFFFFFEF0
	adds r0, r1, r7
	strh r0, [r2]
	movs r0, #0x60
	str r0, [r2, #4]
_0801C276:
	movs r0, #2
_0801C278:
	str r0, [r2, #0x1c]
_0801C27A:
	adds r5, #0x42
	movs r0, #0x24
	add ip, r0
	adds r4, #1
	cmp r4, #7
	ble _0801C1B4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C294: .4byte 0xFFFFFEF0

	thumb_func_start sub_801C298
sub_801C298: @ 0x0801C298
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r1, r1, r0
	mov sb, r1
	bl sub_801C198
	movs r7, #0
	movs r2, #0x80
	lsls r2, r2, #1
	mov sl, r2
	movs r4, #0
	mov r8, r4
_0801C2BC:
	lsls r0, r7, #3
	adds r0, r0, r7
	lsls r0, r0, #2
	movs r1, #0xb2
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r2, sb
	adds r6, r2, r0
	ldr r0, [r6, #8]
	ldr r1, [r6, #4]
	cmp r0, r1
	beq _0801C316
	cmp r1, #0x3f
	ble _0801C2DE
	movs r0, #0x7f
	subs r0, r0, r1
	b _0801C2E0
_0801C2DE:
	adds r0, r1, #0
_0801C2E0:
	bl sub_8008600
	ldr r1, [r6, #0x14]
	lsls r4, r1, #1
	adds r4, r4, r1
	lsls r4, r4, #2
	subs r4, r4, r1
	lsls r4, r4, #0xd
	lsls r0, r0, #9
	ldr r1, _0801C350 @ =_08356800
	adds r0, r0, r1
	adds r4, r4, r0
	lsls r5, r7, #0xa
	ldr r2, _0801C354 @ =0x06014000
	adds r5, r5, r2
	bl dmaq_getVBlankDmaQueue
	movs r3, #0x80
	lsls r3, r3, #0x18
	adds r1, r4, #0
	adds r2, r5, #0
	mov r4, sl
	orrs r3, r4
	bl dmaq_enqueue
	ldr r0, [r6, #4]
	str r0, [r6, #8]
_0801C316:
	ldr r1, _0801C358 @ =_080DA668
	lsls r0, r7, #2
	adds r0, r0, r1
	adds r4, r6, #0
	adds r4, #0xc
	ldr r5, [sp, #8]
	adds r7, #1
	ldr r2, [r0]
	adds r1, r4, #0
	movs r3, #3
_0801C32A:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bge _0801C32A
	ldr r0, [r6, #4]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801C35C
	ldrh r1, [r6, #0x10]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	b _0801C364
	.align 2, 0
_0801C350: .4byte _08356800
_0801C354: .4byte 0x06014000
_0801C358: .4byte _080DA668
_0801C35C:
	ldrh r0, [r6, #0x10]
	ldr r2, _0801C3A8 @ =0x0000EFFF
	adds r1, r2, #0
	ands r0, r1
_0801C364:
	strh r0, [r6, #0x10]
	ldrh r1, [r6, #0x12]
	ldr r2, _0801C3AC @ =0x0000F3FF
	adds r0, r2, #0
	ands r1, r0
	ldr r0, [r6, #0x20]
	lsls r0, r0, #0xa
	orrs r1, r0
	strh r1, [r6, #0x12]
	ldrh r1, [r6, #2]
	lsls r1, r1, #0x10
	ldrh r0, [r6]
	orrs r0, r1
	str r0, [sp, #8]
	mov r0, r8
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r4, #0
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	cmp r7, #7
	ble _0801C2BC
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C3A8: .4byte 0x0000EFFF
_0801C3AC: .4byte 0x0000F3FF

	thumb_func_start sub_801C3B0
sub_801C3B0: @ 0x0801C3B0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r4, #0
	str r4, [r0, #4]
	str r4, [r0, #8]
	movs r3, #0x9e
	lsls r3, r3, #1
	adds r2, r5, r3
	ldr r3, _0801C484 @ =_080DA630
	movs r0, #0x70
	movs r1, #0x14
	bl sub_8003FD0
	movs r1, #0xe5
	lsls r1, r1, #2
	adds r0, r5, r1
	str r4, [r0]
	movs r3, #0xe6
	lsls r3, r3, #2
	adds r0, r5, r3
	str r4, [r0]
	movs r0, #0xe7
	lsls r0, r0, #2
	adds r2, r5, r0
	movs r0, #0x78
	strh r0, [r2]
	adds r3, #6
	adds r1, r5, r3
	movs r0, #0x45
	strh r0, [r1]
	movs r0, #0xe8
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, [r2]
	str r0, [r1]
	movs r1, #0xe9
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_8014044
	movs r2, #0
	movs r1, #3
	movs r3, #0xf2
	lsls r3, r3, #2
	adds r0, r5, r3
_0801C410:
	str r2, [r0]
	subs r0, #4
	subs r1, #1
	cmp r1, #0
	bge _0801C410
	movs r0, #0xf3
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, _0801C488 @ =_080CA728
	str r0, [r1]
	movs r3, #0
	movs r2, #0
	movs r0, #0x94
	lsls r0, r0, #1
	strh r0, [r1, #4]
	movs r0, #0x90
	strh r0, [r1, #6]
	adds r0, #0x70
	strh r0, [r1, #0xa]
	strh r0, [r1, #8]
	strh r2, [r1, #0xc]
	strb r3, [r1, #0xe]
	strh r2, [r1, #0x10]
	movs r1, #7
	movs r3, #0x9c
	lsls r3, r3, #3
	adds r0, r5, r3
_0801C446:
	str r2, [r0, #0x1c]
	subs r0, #0x24
	subs r1, #1
	cmp r1, #0
	bge _0801C446
	movs r1, #0
_0801C452:
	adds r6, r1, #1
	movs r4, #0xff
_0801C456:
	ldr r0, [r5, #8]
	adds r0, #1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_801C198
	subs r4, #1
	cmp r4, #0
	bge _0801C456
	bl main_frameProc
	adds r1, r6, #0
	cmp r1, #1
	ble _0801C452
	adds r0, r5, #0
	bl sub_8017918
	adds r0, r5, #0
	bl sub_8017170
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801C484: .4byte _080DA630
_0801C488: .4byte _080CA728

	thumb_func_start sub_801C48C
sub_801C48C: @ 0x0801C48C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r4, r6, r0
	ldrb r0, [r6, #2]
	cmp r0, #5
	bls _0801C4A0
	b _0801C704
_0801C4A0:
	lsls r0, r0, #2
	ldr r1, _0801C4AC @ =_0801C4B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801C4AC: .4byte _0801C4B0
_0801C4B0: @ jump table
	.4byte _0801C4C8 @ case 0
	.4byte _0801C698 @ case 1
	.4byte _0801C4F4 @ case 2
	.4byte _0801C5B8 @ case 3
	.4byte _0801C698 @ case 4
	.4byte _0801C6BC @ case 5
_0801C4C8:
	adds r0, r6, #0
	bl sub_801C3B0
	ldr r0, _0801C4EC @ =0x00000844
	bl sub_801D240
	movs r0, #0x28
	bl m4aSongNumStart
	ldr r3, _0801C4F0 @ =0x03000190
	ldr r1, [r3]
	ldrb r0, [r1, #2]
	adds r0, #1
	movs r2, #0
	strb r0, [r1, #2]
	ldr r0, [r3]
	str r2, [r0, #4]
	b _0801C704
	.align 2, 0
_0801C4EC: .4byte 0x00000844
_0801C4F0: .4byte 0x03000190
_0801C4F4:
	adds r0, r6, #0
	bl sub_8017248
	ldr r2, _0801C568 @ =0x000002BE
	adds r1, r4, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	bne _0801C50A
	movs r0, #4
	strb r0, [r1]
_0801C50A:
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r5, r4, r3
	ldr r0, [r5]
	cmp r0, #2
	bne _0801C574
	movs r2, #3
	ldr r1, _0801C56C @ =0x03000190
	ldr r0, [r1]
	movs r3, #0
	strb r2, [r0, #2]
	ldr r0, [r1]
	str r3, [r0, #4]
	ldr r0, [r5]
	str r0, [r4, #8]
	movs r1, #0x9f
	lsls r1, r1, #2
	adds r0, r4, r1
	str r3, [r0]
	movs r2, #0xa1
	lsls r2, r2, #2
	adds r1, r4, r2
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r4, r3
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _0801C570 @ =_080D9E44
	ldr r0, [r5]
	subs r0, #2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	movs r0, #1
	bl map_setBufferDirty
	b _0801C704
	.align 2, 0
_0801C568: .4byte 0x000002BE
_0801C56C: .4byte 0x03000190
_0801C570: .4byte _080D9E44
_0801C574:
	ldr r0, _0801C5AC @ =0x03004EA0
	ldrh r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0801C582
	b _0801C704
_0801C582:
	movs r0, #0
	strb r0, [r6, #0xf]
	movs r1, #0
	movs r2, #0x11
	movs r4, #0x9e
	lsls r4, r4, #1
	adds r0, r6, r4
_0801C590:
	strb r2, [r0, #0xe]
	adds r0, #0x18
	adds r1, #1
	cmp r1, #0xc
	bls _0801C590
	bl sub_801D274
	ldr r2, _0801C5B0 @ =gMPlayTable
	ldr r0, _0801C5B4 @ =gSongTable
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r0, r1
	b _0801C662
	.align 2, 0
_0801C5AC: .4byte 0x03004EA0
_0801C5B0: .4byte gMPlayTable
_0801C5B4: .4byte gSongTable
_0801C5B8:
	adds r0, r6, #0
	bl sub_8017248
	movs r2, #0x9e
	lsls r2, r2, #2
	adds r0, r4, r2
	ldr r5, [r0]
	cmp r5, #2
	beq _0801C5CE
	movs r3, #2
	b _0801C67C
_0801C5CE:
	ldr r3, _0801C624 @ =0x000002BE
	adds r1, r4, r3
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0801C5DE
	movs r0, #1
	strb r0, [r1]
_0801C5DE:
	ldr r4, [r4, #0x1c]
	movs r0, #9
	ands r4, r0
	cmp r4, #0
	beq _0801C630
	strb r5, [r6, #0xf]
	movs r1, #0
	movs r2, #0x11
	movs r4, #0x9e
	lsls r4, r4, #1
	adds r0, r6, r4
_0801C5F4:
	strb r2, [r0, #0xe]
	adds r0, #0x18
	adds r1, #1
	cmp r1, #0xc
	bls _0801C5F4
	bl sub_801D274
	ldr r2, _0801C628 @ =gMPlayTable
	ldr r0, _0801C62C @ =gSongTable
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #2
	bl m4aMPlayFadeOut
	movs r0, #0x8f
	b _0801C676
	.align 2, 0
_0801C624: .4byte 0x000002BE
_0801C628: .4byte gMPlayTable
_0801C62C: .4byte gSongTable
_0801C630:
	movs r0, #0
	bl main_getTriggerKeys
	ands r5, r0
	lsls r0, r5, #0x10
	cmp r0, #0
	beq _0801C704
	strb r4, [r6, #0xf]
	movs r1, #0
	movs r2, #0x11
	movs r3, #0x9e
	lsls r3, r3, #1
	adds r0, r6, r3
_0801C64A:
	strb r2, [r0, #0xe]
	adds r0, #0x18
	adds r1, #1
	cmp r1, #0xc
	bls _0801C64A
	bl sub_801D274
	ldr r2, _0801C68C @ =gMPlayTable
	ldr r0, _0801C690 @ =gSongTable
	movs r4, #0xa0
	lsls r4, r4, #1
	adds r0, r0, r4
_0801C662:
	ldrh r1, [r0, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #2
	bl m4aMPlayFadeOut
	movs r0, #0x90
_0801C676:
	bl m4aSongNumStart
	movs r3, #4
_0801C67C:
	ldr r1, _0801C694 @ =0x03000190
	ldr r0, [r1]
	movs r2, #0
	strb r3, [r0, #2]
	ldr r0, [r1]
	str r2, [r0, #4]
	b _0801C704
	.align 2, 0
_0801C68C: .4byte gMPlayTable
_0801C690: .4byte gSongTable
_0801C694: .4byte 0x03000190
_0801C698:
	adds r0, r6, #0
	bl sub_8017248
	bl sub_801D28C
	adds r3, r0, #0
	cmp r3, #0
	bne _0801C704
	ldr r2, _0801C6B8 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldr r0, [r2]
	str r3, [r0, #4]
	b _0801C704
	.align 2, 0
_0801C6B8: .4byte 0x03000190
_0801C6BC:
	ldrb r4, [r6, #0xf]
	cmp r4, #0
	beq _0801C6C8
	cmp r4, #2
	beq _0801C6E4
	b _0801C704
_0801C6C8:
	movs r3, #0x13
	ldr r2, _0801C6E0 @ =0x03000190
	ldr r1, [r2]
	ldrb r0, [r1]
	strb r0, [r1, #1]
	ldr r0, [r2]
	strb r3, [r0]
	ldr r0, [r2]
	strb r4, [r0, #2]
	ldr r0, [r2]
	str r4, [r0, #4]
	b _0801C704
	.align 2, 0
_0801C6E0: .4byte 0x03000190
_0801C6E4:
	ldr r1, _0801C77C @ =0x03000190
	ldr r0, [r1]
	ldrb r2, [r0]
	movs r3, #0
	strb r2, [r0, #1]
	ldr r0, [r1]
	strb r4, [r0]
	ldr r0, [r1]
	strb r3, [r0, #2]
	ldr r0, [r1]
	str r3, [r0, #4]
	movs r1, #0xd4
	lsls r1, r1, #3
	adds r0, r6, r1
	bl sub_80174A8
_0801C704:
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r7, r6, r2
	movs r5, #0
	movs r3, #0x9e
	lsls r3, r3, #1
	adds r4, r6, r3
_0801C712:
	adds r0, r4, #0
	bl sub_8003BB8
	adds r4, #0x18
	adds r5, #1
	cmp r5, #0xc
	bls _0801C712
	movs r5, #0
_0801C722:
	movs r0, #0xc
	subs r0, r0, r5
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x20
	adds r1, r7, r1
	ldrh r2, [r1, #6]
	lsls r2, r2, #0x10
	ldrh r0, [r1, #4]
	orrs r0, r2
	str r0, [sp, #8]
	ldr r0, [r1]
	movs r4, #8
	ldrsh r2, [r1, r4]
	movs r4, #0xa
	ldrsh r3, [r1, r4]
	movs r4, #0xc
	ldrsh r1, [r1, r4]
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	add r1, sp, #8
	bl oam_renderCellData
	adds r5, #1
	cmp r5, #0xc
	bls _0801C722
	adds r0, r6, #0
	bl sub_801BC5C
	adds r0, r6, #0
	bl sub_801BEF8
	adds r0, r6, #0
	bl sub_801C070
	adds r0, r6, #0
	bl sub_801C298
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C77C: .4byte 0x03000190

	thumb_func_start sub_801C780
sub_801C780: @ 0x0801C780
	ldr r1, _0801C79C @ =0x03000190
	ldr r0, [r1]
	movs r2, #0xe0
	lsls r2, r2, #3
	adds r3, r0, r2
	ldrb r0, [r3]
	cmp r0, #2
	beq _0801C81C
	cmp r0, #2
	bgt _0801C7A0
	cmp r0, #1
	beq _0801C7A6
	b _0801C86E
	.align 2, 0
_0801C79C: .4byte 0x03000190
_0801C7A0:
	cmp r0, #3
	beq _0801C804
	b _0801C86E
_0801C7A6:
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bhi _0801C7E0
	ldr r2, [r1]
	ldr r0, _0801C7D8 @ =0x000006EE
	adds r1, r2, r0
	ldrh r0, [r1]
	movs r0, #0xbf
	strh r0, [r1]
	ldrb r0, [r3, #1]
	lsls r0, r0, #4
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0801C7CC
	adds r0, #0xf
_0801C7CC:
	asrs r0, r0, #4
	adds r0, #0x10
	ldr r3, _0801C7DC @ =0x000006F2
	adds r1, r2, r3
	b _0801C83C
	.align 2, 0
_0801C7D8: .4byte 0x000006EE
_0801C7DC: .4byte 0x000006F2
_0801C7E0:
	ldr r1, [r1]
	ldrh r2, [r3, #2]
	ldr r3, _0801C7FC @ =0x000006EE
	adds r0, r1, r3
	ldrh r3, [r0]
	movs r3, #0
	strh r2, [r0]
	movs r0, #0xde
	lsls r0, r0, #3
	adds r2, r1, r0
	ldrh r0, [r2]
	ldr r0, _0801C800 @ =0x00001008
	b _0801C862
	.align 2, 0
_0801C7FC: .4byte 0x000006EE
_0801C800: .4byte 0x00001008
_0801C804:
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _0801C86E
	movs r0, #2
	strb r0, [r3]
	movs r0, #0
	strb r0, [r3, #1]
	b _0801C86E
_0801C81C:
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x10
	bhi _0801C84C
	ldr r1, [r1]
	ldr r0, _0801C844 @ =0x000006EE
	adds r2, r1, r0
	ldrh r0, [r2]
	movs r0, #0xbf
	strh r0, [r2]
	ldrb r0, [r3, #1]
	ldr r2, _0801C848 @ =0x000006F2
	adds r1, r1, r2
_0801C83C:
	ldrh r2, [r1]
	strh r0, [r1]
	b _0801C86E
	.align 2, 0
_0801C844: .4byte 0x000006EE
_0801C848: .4byte 0x000006F2
_0801C84C:
	ldr r1, [r1]
	ldr r3, _0801C870 @ =0x000006EE
	adds r2, r1, r3
	ldrh r0, [r2]
	movs r3, #0
	movs r0, #0xbf
	strh r0, [r2]
	ldr r0, _0801C874 @ =0x000006F2
	adds r2, r1, r0
	ldrh r0, [r2]
	movs r0, #0x10
_0801C862:
	strh r0, [r2]
	movs r2, #0xe0
	lsls r2, r2, #3
	adds r1, r1, r2
	strb r3, [r1]
	strb r3, [r1, #1]
_0801C86E:
	bx lr
	.align 2, 0
_0801C870: .4byte 0x000006EE
_0801C874: .4byte 0x000006F2

	thumb_func_start sub_801C878
sub_801C878: @ 0x0801C878
	ldr r0, _0801C890 @ =0x03000190
	ldr r3, [r0]
	ldr r0, [r3, #0x18]
	adds r0, #1
	str r0, [r3, #0x18]
	ldr r1, [r3, #0x14]
	cmp r1, #2
	beq _0801C894
	cmp r1, #3
	beq _0801C8B0
	b _0801C8C8
	.align 2, 0
_0801C890: .4byte 0x03000190
_0801C894:
	asrs r1, r0, #2
	ldr r2, _0801C8AC @ =0x000006E6
	adds r0, r3, r2
	ldrh r2, [r0]
	strh r1, [r0]
	ldr r0, [r3, #0x18]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	movs r2, #0xdd
	lsls r2, r2, #3
	b _0801C8C2
	.align 2, 0
_0801C8AC: .4byte 0x000006E6
_0801C8B0:
	asrs r1, r0, #2
	ldr r2, _0801C9A8 @ =0x000006EA
	adds r0, r3, r2
	ldrh r2, [r0]
	strh r1, [r0]
	ldr r0, [r3, #0x18]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	ldr r2, _0801C9AC @ =0x000006EC
_0801C8C2:
	adds r1, r3, r2
	ldrh r2, [r1]
	strh r0, [r1]
_0801C8C8:
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r2, _0801C9B0 @ =0x000006D4
	adds r0, r3, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #8
	adds r2, #2
	adds r0, r3, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #8
	adds r2, #8
	adds r0, r3, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r2, #2
	adds r0, r3, r2
	ldrh r0, [r0]
	strh r0, [r1]
	subs r1, #8
	subs r2, #8
	adds r0, r3, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0xa
	adds r2, #0xa
	adds r0, r3, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r2, #2
	adds r0, r3, r2
	ldrh r0, [r0]
	strh r0, [r1]
	subs r1, #0xa
	subs r2, #0xa
	adds r0, r3, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0xc
	adds r2, #0xc
	adds r0, r3, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r2, #2
	adds r0, r3, r2
	ldrh r0, [r0]
	strh r0, [r1]
	subs r1, #0xc
	subs r2, #0xc
	adds r0, r3, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0xe
	adds r2, #0xe
	adds r0, r3, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r2, #2
	adds r0, r3, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0x32
	adds r2, #2
	adds r0, r3, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r2, #2
	adds r0, r3, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r2, #2
	adds r0, r3, r2
	ldrh r0, [r0]
	strh r0, [r1]
	subs r1, #0x14
	adds r2, #2
	adds r0, r3, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #4
	adds r2, #2
	adds r0, r3, r2
	ldrh r0, [r0]
	strh r0, [r1]
	subs r1, #2
	adds r2, #2
	adds r0, r3, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #4
	adds r2, #2
	adds r0, r3, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r2, #2
	adds r0, r3, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r2, #2
	adds r0, r3, r2
	ldrh r0, [r0]
	strh r0, [r1]
	bx lr
	.align 2, 0
_0801C9A8: .4byte 0x000006EA
_0801C9AC: .4byte 0x000006EC
_0801C9B0: .4byte 0x000006D4

	thumb_func_start sub_801C9B4
sub_801C9B4: @ 0x0801C9B4
	ldr r1, _0801CA78 @ =0x000006D6
	adds r2, r0, r1
	ldrh r1, [r2]
	movs r3, #0
	ldr r1, _0801CA7C @ =0x00004008
	strh r1, [r2]
	movs r1, #0xdb
	lsls r1, r1, #3
	adds r2, r0, r1
	ldrh r1, [r2]
	ldr r1, _0801CA80 @ =0x00004105
	strh r1, [r2]
	ldr r1, _0801CA84 @ =0x000006DA
	adds r2, r0, r1
	ldrh r1, [r2]
	ldr r1, _0801CA88 @ =0x0000020A
	strh r1, [r2]
	ldr r1, _0801CA8C @ =0x000006DC
	adds r2, r0, r1
	ldrh r1, [r2]
	ldr r1, _0801CA90 @ =0x00000406
	strh r1, [r2]
	ldr r1, _0801CA94 @ =0x000006D4
	adds r2, r0, r1
	ldrh r1, [r2]
	movs r1, #0xfa
	lsls r1, r1, #5
	strh r1, [r2]
	ldr r1, _0801CA98 @ =0x000006EE
	adds r2, r0, r1
	ldrh r1, [r2]
	movs r1, #0xbf
	strh r1, [r2]
	ldr r1, _0801CA9C @ =0x000006F2
	adds r2, r0, r1
	ldrh r1, [r2]
	movs r1, #0x10
	strh r1, [r2]
	ldr r2, _0801CAA0 @ =0x000006DE
	adds r1, r0, r2
	ldrh r2, [r1]
	strh r3, [r1]
	movs r2, #0xdc
	lsls r2, r2, #3
	adds r1, r0, r2
	ldrh r2, [r1]
	strh r3, [r1]
	ldr r2, _0801CAA4 @ =0x000006E2
	adds r1, r0, r2
	ldrh r2, [r1]
	strh r3, [r1]
	ldr r2, _0801CAA8 @ =0x000006E4
	adds r1, r0, r2
	ldrh r2, [r1]
	strh r3, [r1]
	ldr r2, _0801CAAC @ =0x000006E6
	adds r1, r0, r2
	ldrh r2, [r1]
	strh r3, [r1]
	movs r2, #0xdd
	lsls r2, r2, #3
	adds r1, r0, r2
	ldrh r2, [r1]
	strh r3, [r1]
	ldr r2, _0801CAB0 @ =0x000006EA
	adds r1, r0, r2
	ldrh r2, [r1]
	strh r3, [r1]
	ldr r2, _0801CAB4 @ =0x000006EC
	adds r1, r0, r2
	ldrh r2, [r1]
	strh r3, [r1]
	ldr r2, _0801CAB8 @ =0x000006F4
	adds r1, r0, r2
	ldrh r2, [r1]
	strh r3, [r1]
	ldr r2, _0801CABC @ =0x000006F6
	adds r1, r0, r2
	ldrh r2, [r1]
	strh r3, [r1]
	movs r2, #0xdf
	lsls r2, r2, #3
	adds r1, r0, r2
	ldrh r2, [r1]
	strh r3, [r1]
	ldr r2, _0801CAC0 @ =0x000006FA
	adds r1, r0, r2
	ldrh r2, [r1]
	strh r3, [r1]
	ldr r2, _0801CAC4 @ =0x000006FC
	adds r1, r0, r2
	ldrh r2, [r1]
	strh r3, [r1]
	ldr r1, _0801CAC8 @ =0x000006FE
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r3, [r0]
	bx lr
	.align 2, 0
_0801CA78: .4byte 0x000006D6
_0801CA7C: .4byte 0x00004008
_0801CA80: .4byte 0x00004105
_0801CA84: .4byte 0x000006DA
_0801CA88: .4byte 0x0000020A
_0801CA8C: .4byte 0x000006DC
_0801CA90: .4byte 0x00000406
_0801CA94: .4byte 0x000006D4
_0801CA98: .4byte 0x000006EE
_0801CA9C: .4byte 0x000006F2
_0801CAA0: .4byte 0x000006DE
_0801CAA4: .4byte 0x000006E2
_0801CAA8: .4byte 0x000006E4
_0801CAAC: .4byte 0x000006E6
_0801CAB0: .4byte 0x000006EA
_0801CAB4: .4byte 0x000006EC
_0801CAB8: .4byte 0x000006F4
_0801CABC: .4byte 0x000006F6
_0801CAC0: .4byte 0x000006FA
_0801CAC4: .4byte 0x000006FC
_0801CAC8: .4byte 0x000006FE

	thumb_func_start sub_801CACC
sub_801CACC: @ 0x0801CACC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r0, #0xb0
	movs r1, #0
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	subs r0, #0x68
_0801CAE6:
	str r1, [r0]
	subs r0, #4
	cmp r0, r7
	bge _0801CAE6
	movs r6, #0
	movs r0, #0x8c
	adds r0, r0, r7
	mov sl, r0
	movs r1, #0xb0
	adds r1, r1, r7
	mov r8, r1
	adds r5, r7, #0
_0801CAFE:
	adds r0, r6, #0
	bl track_getMKSCTrack
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_805CE3C
	lsls r0, r0, #0x18
	asrs r4, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0801CB46
	mov r1, r8
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #1
	str r0, [r5]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_805DE90
	adds r1, r7, #0
	adds r1, #0x50
	adds r1, r1, r6
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_805DEB8
	lsls r2, r6, #1
	adds r1, r7, #0
	adds r1, #0x64
	adds r1, r1, r2
	strh r0, [r1]
_0801CB46:
	adds r5, #4
	adds r6, #1
	cmp r6, #0x13
	ble _0801CAFE
	mov r1, sl
	movs r2, #0
	mov r0, sl
	adds r0, #4
_0801CB56:
	str r2, [r0]
	subs r0, #4
	cmp r0, r1
	bge _0801CB56
	movs r6, #0
_0801CB60:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_805DC28
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r8, r0
	movs r0, #1
	rsbs r0, r0, #0
	adds r1, r6, #1
	mov sb, r1
	cmp r8, r0
	beq _0801CBF8
	adds r1, r7, #0
	adds r1, #0xb4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	lsls r0, r6, #2
	add r0, sl
	movs r1, #1
	str r1, [r0]
	mov r0, r8
	lsls r4, r0, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_805DE90
	adds r1, r7, #0
	adds r1, #0x96
	adds r1, r1, r6
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_805DEB8
	lsls r2, r6, #1
	adds r1, r7, #0
	adds r1, #0x98
	adds r1, r1, r2
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_805DF18
	adds r5, r7, #0
	adds r5, #0x9c
	adds r1, r5, r6
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0xae
	adds r0, r0, r6
	mov r1, r8
	strb r1, [r0]
	lsls r1, r6, #3
	adds r1, #0x9e
	adds r1, r7, r1
	adds r0, r4, #0
	bl sub_805DEE0
	movs r4, #0
	adds r2, r7, #0
	adds r2, #0x94
	b _0801CBDE
_0801CBDC:
	adds r4, #1
_0801CBDE:
	cmp r4, #0x13
	bgt _0801CBF4
	adds r0, r4, #0
	str r2, [sp]
	bl track_getMKSCTrack
	adds r1, r5, r6
	ldr r2, [sp]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0801CBDC
_0801CBF4:
	adds r0, r2, r6
	strb r4, [r0]
_0801CBF8:
	mov r6, sb
	cmp r6, #1
	ble _0801CB60
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801CC10
sub_801CC10: @ 0x0801CC10
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r4, #0
	adds r2, r3, #0
	adds r2, #0x34
	movs r6, #0
	movs r5, #0
_0801CC1E:
	lsls r1, r4, #2
	adds r0, r3, #0
	adds r0, #0xd8
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0801CC60
	movs r0, #1
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0xe0
	adds r0, r0, r4
	ldrb r0, [r0]
	strb r0, [r2, #1]
	adds r1, r3, #0
	adds r1, #0x38
	adds r1, r1, r6
	adds r0, r3, #0
	adds r0, #0xe4
	adds r0, r0, r5
	ldrh r0, [r0]
	str r0, [r1]
	adds r0, r3, #0
	adds r0, #0xe2
	adds r0, r0, r4
	ldrb r0, [r0]
	strb r0, [r2, #2]
	adds r0, r3, #0
	adds r0, #0xfa
	adds r0, r0, r4
	ldrb r0, [r0]
	strb r0, [r2, #8]
	b _0801CC62
_0801CC60:
	strb r0, [r2]
_0801CC62:
	adds r2, #0xc
	adds r6, #0xc
	adds r5, #2
	adds r4, #1
	cmp r4, #1
	ble _0801CC1E
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_801CC74
sub_801CC74: @ 0x0801CC74
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	mov r0, sp
	movs r5, #0
	strh r5, [r0]
	ldr r1, _0801CD40 @ =0x040000D4
	str r0, [r1]
	movs r4, #0xc0
	lsls r4, r4, #0x13
	str r4, [r1, #4]
	ldr r0, _0801CD44 @ =0x8100C000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl oam_init
	movs r0, #0
	adds r1, r4, #0
	bl map_setBufferDestination
	ldr r1, _0801CD48 @ =0x06000800
	movs r0, #1
	bl map_setBufferDestination
	bl main_frameProc
	adds r0, r6, #0
	bl sub_801C9B4
	ldr r0, _0801CD4C @ =0x03000190
	ldr r0, [r0]
	movs r1, #0xe0
	lsls r1, r1, #3
	adds r0, r0, r1
	strb r5, [r0]
	strb r5, [r0, #1]
	ldr r5, _0801CD50 @ =sub_801C878
	ldr r4, _0801CD54 @ =0x03002E20
	movs r0, #1
	movs r1, #2
	rsbs r1, r1, #0
	bl irq_updateMask
	str r5, [r4, #0xc]
	movs r0, #2
	ldr r1, _0801CD58 @ =0x00010001
	bl irq_updateMask
	bl main_frameProc
	movs r3, #0x82
	lsls r3, r3, #1
	adds r5, r6, r3
	movs r4, #2
	movs r2, #0
	movs r1, #4
	adds r3, #0x10
	adds r0, r6, r3
_0801CCE8:
	str r2, [r0]
	subs r0, #4
	subs r1, #1
	cmp r1, #0
	bge _0801CCE8
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_805DE68
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [r5, #0x10]
	movs r0, #1
	str r0, [r5, #0x14]
	movs r4, #0
	adds r7, r6, #0
	adds r7, #0x4c
_0801CD0C:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_805DE68
	cmp r0, #0
	bne _0801CD1A
	str r0, [r5, #0x14]
_0801CD1A:
	adds r4, #1
	cmp r4, #2
	ble _0801CD0C
	adds r0, r7, #0
	bl sub_801CACC
	adds r0, r6, #0
	bl sub_801CC10
	movs r1, #0xd4
	lsls r1, r1, #3
	adds r0, r6, r1
	bl sub_80174A8
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CD40: .4byte 0x040000D4
_0801CD44: .4byte 0x8100C000
_0801CD48: .4byte 0x06000800
_0801CD4C: .4byte 0x03000190
_0801CD50: .4byte sub_801C878
_0801CD54: .4byte 0x03002E20
_0801CD58: .4byte 0x00010001

	thumb_func_start sub_801CD5C
sub_801CD5C: @ 0x0801CD5C
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrb r0, [r2]
	cmp r0, #0x13
	bls _0801CD68
	b _0801CEC8
_0801CD68:
	lsls r0, r0, #2
	ldr r1, _0801CD74 @ =_0801CD78
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801CD74: .4byte _0801CD78
_0801CD78: @ jump table
	.4byte _0801CDC8 @ case 0
	.4byte _0801CDEC @ case 1
	.4byte _0801CDF4 @ case 2
	.4byte _0801CDFC @ case 3
	.4byte _0801CE04 @ case 4
	.4byte _0801CE0C @ case 5
	.4byte _0801CE14 @ case 6
	.4byte _0801CE1C @ case 7
	.4byte _0801CE24 @ case 8
	.4byte _0801CE2C @ case 9
	.4byte _0801CE34 @ case 10
	.4byte _0801CE3C @ case 11
	.4byte _0801CE44 @ case 12
	.4byte _0801CE4C @ case 13
	.4byte _0801CE54 @ case 14
	.4byte _0801CE62 @ case 15
	.4byte _0801CE6C @ case 16
	.4byte _0801CE74 @ case 17
	.4byte _0801CE84 @ case 18
	.4byte _0801CE94 @ case 19
_0801CDC8:
	adds r0, r2, #0
	bl sub_801CC74
	movs r4, #1
	ldr r1, _0801CDE8 @ =0x03000190
	ldr r0, [r1]
	ldrb r2, [r0]
	movs r3, #0
	strb r2, [r0, #1]
	ldr r0, [r1]
	strb r4, [r0]
	ldr r0, [r1]
	strb r3, [r0, #2]
	ldr r0, [r1]
	str r3, [r0, #4]
	b _0801CEC8
	.align 2, 0
_0801CDE8: .4byte 0x03000190
_0801CDEC:
	adds r0, r2, #0
	bl sub_801C48C
	b _0801CEC8
_0801CDF4:
	adds r0, r2, #0
	bl sub_801B8D8
	b _0801CEC8
_0801CDFC:
	adds r0, r2, #0
	bl sub_801AEDC
	b _0801CEC8
_0801CE04:
	adds r0, r2, #0
	bl sub_801AE68
	b _0801CEC8
_0801CE0C:
	adds r0, r2, #0
	bl sub_801AC18
	b _0801CEC8
_0801CE14:
	adds r0, r2, #0
	bl sub_801AB24
	b _0801CEC8
_0801CE1C:
	adds r0, r2, #0
	bl sub_801A84C
	b _0801CEC8
_0801CE24:
	adds r0, r2, #0
	bl sub_801A4D8
	b _0801CEC8
_0801CE2C:
	adds r0, r2, #0
	bl sub_801A44C
	b _0801CEC8
_0801CE34:
	adds r0, r2, #0
	bl sub_8019874
	b _0801CEC8
_0801CE3C:
	adds r0, r2, #0
	bl sub_8018C00
	b _0801CEC8
_0801CE44:
	adds r0, r2, #0
	bl sub_8018A04
	b _0801CEC8
_0801CE4C:
	adds r0, r2, #0
	bl sub_8018814
	b _0801CEC8
_0801CE54:
	adds r0, r2, #0
	bl sub_8018790
	cmp r0, #0
	beq _0801CEC8
	movs r0, #1
	b _0801CECA
_0801CE62:
	ldr r1, _0801CE68 @ =_080DA8E8
	b _0801CE86
	.align 2, 0
_0801CE68: .4byte _080DA8E8
_0801CE6C:
	ldr r1, _0801CE70 @ =_080DA9DC
	b _0801CE86
	.align 2, 0
_0801CE70: .4byte _080DA9DC
_0801CE74:
	ldr r1, _0801CE80 @ =_080DAA4C
	adds r0, r2, #0
	movs r2, #1
	bl sub_8018630
	b _0801CEC8
	.align 2, 0
_0801CE80: .4byte _080DAA4C
_0801CE84:
	ldr r1, _0801CE90 @ =_080DAB0C
_0801CE86:
	adds r0, r2, #0
	movs r2, #0
	bl sub_8018630
	b _0801CEC8
	.align 2, 0
_0801CE90: .4byte _080DAB0C
_0801CE94:
	ldr r0, _0801CEBC @ =title_main
	ldr r4, _0801CEC0 @ =0x03002E20
	str r0, [r4]
	ldrb r0, [r4, #8]
	adds r0, #1
	movs r5, #0
	movs r1, #7
	ands r0, r1
	strb r0, [r4, #8]
	movs r0, #1
	subs r1, #9
	bl irq_updateMask
	str r5, [r4, #0xc]
	movs r0, #2
	ldr r1, _0801CEC4 @ =0x00010001
	bl irq_updateMask
	movs r0, #1
	b _0801CECA
	.align 2, 0
_0801CEBC: .4byte title_main
_0801CEC0: .4byte 0x03002E20
_0801CEC4: .4byte 0x00010001
_0801CEC8:
	movs r0, #0
_0801CECA:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start ghost_main
ghost_main: @ 0x0801CED0
	push {r4, r5, lr}
	ldr r4, _0801CF28 @ =0x03002E20
	ldr r0, _0801CF2C @ =0x00000704
	adds r4, r4, r0
	ldr r1, _0801CF30 @ =0x0202A400
	adds r0, r4, #0
	movs r2, #0x80
	lsls r2, r2, #8
	bl frmheap_init
	adds r0, r4, #0
	movs r1, #1
	ldr r2, _0801CF2C @ =0x00000704
	bl frmheap_calloc
	ldr r2, _0801CF34 @ =0x03000190
	str r0, [r2]
	adds r4, r0, #0
	movs r0, #0xd4
	lsls r0, r0, #3
	adds r5, r4, r0
	movs r1, #0
	ldrb r0, [r4]
	strb r0, [r4, #1]
	ldr r0, [r2]
	strb r1, [r0]
	ldr r0, [r2]
	strb r1, [r0, #2]
	ldr r0, [r2]
	str r1, [r0, #4]
	adds r0, r5, #0
	bl sub_80174A8
_0801CF12:
	ldrb r1, [r5, #1]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _0801CF38
	adds r0, r4, #0
	bl sub_801CD5C
	cmp r0, #0
	bne _0801CFCA
	b _0801CF4A
	.align 2, 0
_0801CF28: .4byte 0x03002E20
_0801CF2C: .4byte 0x00000704
_0801CF30: .4byte 0x0202A400
_0801CF34: .4byte 0x03000190
_0801CF38:
	adds r0, r4, #0
	bl sub_80174DC
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	bl main_frameProc
	b _0801CF12
_0801CF4A:
	ldrb r0, [r4]
	cmp r0, #0x13
	bhi _0801CFB0
	lsls r0, r0, #2
	ldr r1, _0801CF5C @ =_0801CF60
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801CF5C: .4byte _0801CF60
_0801CF60: @ jump table
	.4byte _0801CFB6 @ case 0
	.4byte _0801CFB6 @ case 1
	.4byte _0801CFB0 @ case 2
	.4byte _0801CFB0 @ case 3
	.4byte _0801CFB6 @ case 4
	.4byte _0801CFB0 @ case 5
	.4byte _0801CFB0 @ case 6
	.4byte _0801CFB0 @ case 7
	.4byte _0801CFB0 @ case 8
	.4byte _0801CFB0 @ case 9
	.4byte _0801CFB6 @ case 10
	.4byte _0801CFB6 @ case 11
	.4byte _0801CFB6 @ case 12
	.4byte _0801CFB0 @ case 13
	.4byte _0801CFB6 @ case 14
	.4byte _0801CFB6 @ case 15
	.4byte _0801CFB6 @ case 16
	.4byte _0801CFB6 @ case 17
	.4byte _0801CFB6 @ case 18
	.4byte _0801CFB6 @ case 19
_0801CFB0:
	adds r0, r4, #0
	bl sub_80174DC
_0801CFB6:
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	bl sub_801C780
	bl oam_update
	bl main_frameProc
	b _0801CF12
_0801CFCA:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_801CFD4
sub_801CFD4: @ 0x0801CFD4
	push {r4, r5, r6, lr}
	ldr r6, _0801D004 @ =0x06005800
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r4, r1, #8
	movs r5, #7
_0801CFE0:
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0801D008 @ =0x02025400
	adds r1, r4, r1
	adds r2, r6, #0
	ldr r3, _0801D00C @ =0x80000180
	bl dmaq_enqueue
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r6, r6, r0
	adds r4, r4, r0
	subs r5, #1
	cmp r5, #0
	bge _0801CFE0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801D004: .4byte 0x06005800
_0801D008: .4byte 0x02025400
_0801D00C: .4byte 0x80000180

	thumb_func_start sub_801D010
sub_801D010: @ 0x0801D010
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r1, #0
	cmp r0, #0x13
	bhi _0801D098
	bl track_getMKSCTrack
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_805CE3C
	lsls r0, r0, #0x18
	asrs r4, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0801D090
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_805DE90
	adds r5, r0, #0
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	adds r0, r4, #0
	bl sub_805DEB8
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	movs r0, #0
	movs r1, #2
	movs r2, #7
	bl map_getBufferPtr2d
	adds r1, r0, #0
	movs r0, #0xb0
	lsls r0, r0, #2
	str r0, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0xd8
	lsls r2, r2, #2
	movs r3, #0xc
	bl sub_800E728
	cmp r4, #0
	beq _0801D098
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0
	movs r1, #4
	movs r2, #7
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0xc8
	lsls r2, r2, #2
	movs r3, #0xf
	bl sub_800C6D4
	b _0801D098
_0801D090:
	ldr r1, _0801D0A8 @ =_080DA88C
	movs r0, #0
	bl sub_80142CC
_0801D098:
	movs r0, #0
	adds r1, r6, #0
	bl sub_80142CC
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801D0A8: .4byte _080DA88C

	thumb_func_start sub_801D0AC
sub_801D0AC: @ 0x0801D0AC
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0
	bl pltt_getBuffer
	adds r2, r0, #0
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r2, r2, r0
	ldr r0, _0801D0E0 @ =_080B23B0
	adds r1, r0, #0
	adds r1, #0x20
	movs r3, #0x10
	str r3, [sp]
	adds r3, r4, #0
	bl sub_8005E04
	movs r0, #1
	bl pltt_setDirtyFlag
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D0E0: .4byte _080B23B0

	thumb_func_start sub_801D0E4
sub_801D0E4: @ 0x0801D0E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	mov r8, r1
	movs r4, #0
_0801D0F2:
	lsls r2, r4, #1
	movs r0, #1
	movs r1, #0xd
	bl map_getBufferPtr2d
	mov ip, r0
	cmp r4, r8
	beq _0801D118
	mov r0, sb
	adds r1, r4, r0
	movs r0, #1
	ands r1, r0
	movs r0, #0xa0
	lsls r0, r0, #7
	cmp r1, #0
	beq _0801D11C
	movs r0, #0xc0
	lsls r0, r0, #7
	b _0801D11C
_0801D118:
	movs r0, #0xb0
	lsls r0, r0, #8
_0801D11C:
	adds r5, r0, #0
	movs r1, #0
	adds r6, r4, #1
	ldr r7, _0801D15C @ =0x00000FFF
_0801D124:
	lsls r0, r1, #6
	adds r4, r1, #1
	adds r0, #0x80
	mov r1, ip
	adds r3, r1, r0
	movs r2, #0xb
_0801D130:
	ldrh r1, [r3]
	adds r0, r7, #0
	ands r0, r1
	orrs r0, r5
	strh r0, [r3]
	adds r3, #2
	subs r2, #1
	cmp r2, #0
	bge _0801D130
	adds r1, r4, #0
	cmp r1, #1
	ble _0801D124
	adds r4, r6, #0
	cmp r4, #7
	ble _0801D0F2
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D15C: .4byte 0x00000FFF

	thumb_func_start sub_801D160
sub_801D160: @ 0x0801D160
	push {lr}
	adds r1, r0, #0
	movs r0, #0
	cmp r1, #4
	bhi _0801D1AE
	lsls r0, r1, #2
	ldr r1, _0801D174 @ =_0801D178
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801D174: .4byte _0801D178
_0801D178: @ jump table
	.4byte _0801D18C @ case 0
	.4byte _0801D194 @ case 1
	.4byte _0801D19C @ case 2
	.4byte _0801D1A4 @ case 3
	.4byte _0801D1AC @ case 4
_0801D18C:
	ldr r0, _0801D190 @ =_0807DCB4
	b _0801D1AE
	.align 2, 0
_0801D190: .4byte _0807DCB4
_0801D194:
	ldr r0, _0801D198 @ =_0807DDC8
	b _0801D1AE
	.align 2, 0
_0801D198: .4byte _0807DDC8
_0801D19C:
	ldr r0, _0801D1A0 @ =_0807DEDC
	b _0801D1AE
	.align 2, 0
_0801D1A0: .4byte _0807DEDC
_0801D1A4:
	ldr r0, _0801D1A8 @ =_0807DFF8
	b _0801D1AE
	.align 2, 0
_0801D1A8: .4byte _0807DFF8
_0801D1AC:
	ldr r0, _0801D1BC @ =_0807E10C
_0801D1AE:
	cmp r0, #0
	beq _0801D1B8
	ldr r1, _0801D1C0 @ =0x02008400
	bl LZ77UnCompWram
_0801D1B8:
	pop {r0}
	bx r0
	.align 2, 0
_0801D1BC: .4byte _0807E10C
_0801D1C0: .4byte 0x02008400

	thumb_func_start sub_801D1C4
sub_801D1C4: @ 0x0801D1C4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r5, _0801D228 @ =0x02010400
	ldr r0, _0801D22C @ =_080B3424
	adds r1, r5, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r7, _0801D230 @ =0x06017400
	ldr r3, _0801D234 @ =0x80000060
	adds r1, r5, #0
	adds r2, r7, #0
	bl dmaq_enqueue
	adds r4, r6, #0
	adds r4, #0xb0
	ldr r0, [r4]
	cmp r0, #0
	beq _0801D200
	bl dmaq_getVBlankDmaQueue
	ldr r1, [r4]
	adds r1, #5
	lsls r1, r1, #5
	adds r1, r1, r5
	ldr r3, _0801D238 @ =0x80000010
	adds r2, r7, #0
	bl dmaq_enqueue
_0801D200:
	adds r4, r6, #0
	adds r4, #0xb4
	ldr r0, [r4]
	cmp r0, #0
	beq _0801D21E
	bl dmaq_getVBlankDmaQueue
	ldr r1, [r4]
	adds r1, #0xf
	lsls r1, r1, #5
	adds r1, r1, r5
	ldr r2, _0801D23C @ =0x06017460
	ldr r3, _0801D238 @ =0x80000010
	bl dmaq_enqueue
_0801D21E:
	bl main_frameProc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D228: .4byte 0x02010400
_0801D22C: .4byte _080B3424
_0801D230: .4byte 0x06017400
_0801D234: .4byte 0x80000060
_0801D238: .4byte 0x80000010
_0801D23C: .4byte 0x06017460

	thumb_func_start sub_801D240
sub_801D240: @ 0x0801D240
	ldr r1, _0801D258 @ =0x03000190
	ldr r1, [r1]
	movs r2, #0xe0
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r3, #0
	movs r2, #1
	strb r2, [r1]
	strb r3, [r1, #1]
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
_0801D258: .4byte 0x03000190

	thumb_func_start sub_801D25C
sub_801D25C: @ 0x0801D25C
	ldr r0, _0801D270 @ =0x03000190
	ldr r0, [r0]
	movs r1, #0xe0
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r2, #0
	movs r1, #2
	strb r1, [r0]
	strb r2, [r0, #1]
	bx lr
	.align 2, 0
_0801D270: .4byte 0x03000190

	thumb_func_start sub_801D274
sub_801D274: @ 0x0801D274
	ldr r0, _0801D288 @ =0x03000190
	ldr r0, [r0]
	movs r1, #0xe0
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r2, #0
	movs r1, #3
	strb r1, [r0]
	strb r2, [r0, #1]
	bx lr
	.align 2, 0
_0801D288: .4byte 0x03000190

	thumb_func_start sub_801D28C
sub_801D28C: @ 0x0801D28C
	ldr r0, _0801D2A0 @ =0x03000190
	ldr r0, [r0]
	movs r1, #0xe0
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_0801D2A0: .4byte 0x03000190

	thumb_func_start sub_801D2A4
sub_801D2A4: @ 0x0801D2A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	bl sub_800EDDC
	adds r2, r0, #0
	movs r6, #0
	ldr r0, _0801D334 @ =0x03002E20
	ldr r3, _0801D338 @ =0x00000814
	adds r1, r0, r3
	ldrb r3, [r1]
	cmp r6, r3
	bge _0801D326
	mov sl, r0
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
	mov r8, r1
	adds r4, r2, #0
	adds r4, #0x34
	movs r5, #0
_0801D2D4:
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	mov r0, sl
	adds r0, #0x24
	bl sub_804AED4
	adds r2, r0, #0
	ldr r0, [r2, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801D326
	movs r1, #6
	ldrsh r0, [r4, r1]
	cmp r0, sb
	bne _0801D318
	adds r1, r5, #0
	adds r1, #0x23
	cmp r6, #3
	ble _0801D2FE
	adds r1, #5
_0801D2FE:
	movs r0, #0
	strh r1, [r4]
	strh r0, [r4, #2]
	cmp r7, #0
	beq _0801D30A
	adds r0, r5, #0
_0801D30A:
	strh r0, [r4, #4]
	adds r0, r2, #0
	adds r0, #0x4c
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	strh r0, [r4, #6]
_0801D318:
	adds r4, #8
	adds r5, #3
	adds r6, #1
	mov r3, r8
	ldrb r3, [r3]
	cmp r6, r3
	blt _0801D2D4
_0801D326:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D334: .4byte 0x03002E20
_0801D338: .4byte 0x00000814

	thumb_func_start sub_801D33C
sub_801D33C: @ 0x0801D33C
	push {r4, r5, r6, lr}
	bl sub_800EDDC
	adds r1, r0, #0
	movs r4, #0
	ldr r0, _0801D374 @ =0x03002E20
	ldr r2, _0801D378 @ =0x00000814
	adds r3, r0, r2
	ldrb r0, [r3]
	cmp r4, r0
	bge _0801D3C8
	adds r2, r1, #0
	adds r2, #0x34
	movs r1, #6
	ldrsh r0, [r2, r1]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0801D3C8
	adds r6, r3, #0
	adds r5, r1, #0
	mov ip, r4
_0801D368:
	ldrh r0, [r2, #4]
	cmp r0, #0
	beq _0801D37C
	subs r0, #1
	strh r0, [r2, #4]
	b _0801D3B2
	.align 2, 0
_0801D374: .4byte 0x03002E20
_0801D378: .4byte 0x00000814
_0801D37C:
	mov r3, ip
	adds r3, #0x23
	cmp r4, #3
	ble _0801D386
	adds r3, #5
_0801D386:
	mov r1, ip
	cmp r4, #3
	ble _0801D38E
	adds r1, #5
_0801D38E:
	ldrh r0, [r2, #2]
	adds r0, #1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bls _0801D3A0
	movs r0, #0x20
	strh r0, [r2, #2]
_0801D3A0:
	subs r1, r1, r3
	ldrh r0, [r2, #2]
	muls r0, r1, r0
	cmp r0, #0
	bge _0801D3AC
	adds r0, #0x1f
_0801D3AC:
	asrs r0, r0, #5
	adds r0, r3, r0
	strh r0, [r2]
_0801D3B2:
	adds r2, #8
	movs r0, #3
	add ip, r0
	adds r4, #1
	ldrb r1, [r6]
	cmp r4, r1
	bge _0801D3C8
	movs r1, #6
	ldrsh r0, [r2, r1]
	cmp r0, r5
	bne _0801D368
_0801D3C8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_801D3D0
sub_801D3D0: @ 0x0801D3D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	bl sub_800EDDC
	mov sl, r0
	movs r7, #0
	b _0801D540
_0801D3E6:
	ldr r4, _0801D464 @ =0x03002E20
	adds r0, r4, #0
	adds r0, #0x24
	lsls r1, r7, #0x18
	lsrs r1, r1, #0x18
	bl sub_804AED4
	adds r3, r0, #0
	lsls r0, r7, #3
	adds r0, #0x34
	mov r6, sl
	adds r2, r6, r0
	movs r0, #6
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801D40C
	b _0801D54E
_0801D40C:
	ldr r1, _0801D468 @ =0x00000838
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r3, r0
	bne _0801D418
	b _0801D53E
_0801D418:
	ldrh r0, [r2]
	cmp r0, #0x1c
	bls _0801D420
	b _0801D53E
_0801D420:
	lsls r0, r7, #1
	adds r0, r0, r7
	cmp r7, #3
	ble _0801D42A
	adds r0, #5
_0801D42A:
	ldrh r6, [r2]
	cmp r6, r0
	beq _0801D474
	movs r3, #6
	ldrsh r4, [r2, r3]
	ldr r5, _0801D46C @ =_080DB0B2
	movs r0, #0
	adds r1, r6, #0
	movs r2, #0xa
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_804F6F4
	ldr r0, _0801D470 @ =_080DB234
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r4, [r4]
	adds r1, r6, #1
	movs r0, #0
	movs r2, #0xb
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_804F6F4
	b _0801D53E
	.align 2, 0
_0801D464: .4byte 0x03002E20
_0801D468: .4byte 0x00000838
_0801D46C: .4byte _080DB0B2
_0801D470: .4byte _080DB234
_0801D474:
	adds r1, r0, #0
	movs r6, #6
	ldrsh r2, [r2, r6]
	movs r0, #0
	cmp r7, #0
	beq _0801D486
	cmp r7, #4
	beq _0801D486
	movs r0, #3
_0801D486:
	adds r5, r1, #0
	adds r6, r2, #0
	movs r4, #0
	cmp r0, #0xd
	bhi _0801D512
	lsls r0, r0, #2
	ldr r1, _0801D49C @ =_0801D4A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801D49C: .4byte _0801D4A0
_0801D4A0: @ jump table
	.4byte _0801D4D8 @ case 0
	.4byte _0801D4E0 @ case 1
	.4byte _0801D4E8 @ case 2
	.4byte _0801D4F0 @ case 3
	.4byte _0801D512 @ case 4
	.4byte _0801D512 @ case 5
	.4byte _0801D512 @ case 6
	.4byte _0801D512 @ case 7
	.4byte _0801D512 @ case 8
	.4byte _0801D512 @ case 9
	.4byte _0801D4F8 @ case 10
	.4byte _0801D500 @ case 11
	.4byte _0801D508 @ case 12
	.4byte _0801D510 @ case 13
_0801D4D8:
	ldr r4, _0801D4DC @ =_080DB0B2
	b _0801D512
	.align 2, 0
_0801D4DC: .4byte _080DB0B2
_0801D4E0:
	ldr r4, _0801D4E4 @ =_080DB0D6
	b _0801D512
	.align 2, 0
_0801D4E4: .4byte _080DB0D6
_0801D4E8:
	ldr r4, _0801D4EC @ =_080DB0FA
	b _0801D512
	.align 2, 0
_0801D4EC: .4byte _080DB0FA
_0801D4F0:
	ldr r4, _0801D4F4 @ =_080DB11E
	b _0801D512
	.align 2, 0
_0801D4F4: .4byte _080DB11E
_0801D4F8:
	ldr r4, _0801D4FC @ =_080DB142
	b _0801D512
	.align 2, 0
_0801D4FC: .4byte _080DB142
_0801D500:
	ldr r4, _0801D504 @ =_080DB166
	b _0801D512
	.align 2, 0
_0801D504: .4byte _080DB166
_0801D508:
	ldr r4, _0801D50C @ =_080DB18A
	b _0801D512
	.align 2, 0
_0801D50C: .4byte _080DB18A
_0801D510:
	ldr r4, _0801D558 @ =_080DB1AE
_0801D512:
	movs r0, #0
	adds r1, r5, #0
	movs r2, #0xa
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_804F6F4
	ldr r1, _0801D55C @ =_080DB234
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r1, r5, #1
	movs r0, #0
	movs r2, #0xb
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_804F6F4
_0801D53E:
	adds r7, #1
_0801D540:
	ldr r0, _0801D560 @ =0x03002E20
	ldr r1, _0801D564 @ =0x00000814
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r7, r0
	bge _0801D54E
	b _0801D3E6
_0801D54E:
	movs r7, #0
	ldr r0, _0801D560 @ =0x03002E20
	ldr r2, _0801D564 @ =0x00000814
	adds r1, r0, r2
	b _0801D9AE
	.align 2, 0
_0801D558: .4byte _080DB1AE
_0801D55C: .4byte _080DB234
_0801D560: .4byte 0x03002E20
_0801D564: .4byte 0x00000814
_0801D568:
	adds r0, r2, #0
	adds r0, #0x24
	lsls r1, r7, #0x18
	lsrs r1, r1, #0x18
	str r2, [sp]
	bl sub_804AED4
	adds r6, r0, #0
	lsls r0, r7, #3
	adds r0, #0x34
	mov r3, sl
	adds r4, r3, r0
	ldr r2, [sp]
	ldr r0, [r2, #0x10]
	movs r1, #0xc
	bl __umodsi3
	movs r5, #0
	ldr r2, [sp]
	cmp r0, #5
	ble _0801D594
	movs r5, #1
_0801D594:
	movs r1, #6
	ldrsh r0, [r4, r1]
	movs r3, #1
	rsbs r3, r3, #0
	mov r8, r3
	cmp r0, r8
	bne _0801D5A4
	b _0801D9B8
_0801D5A4:
	ldr r1, _0801D5EC @ =0x00000838
	adds r0, r2, r1
	ldr r0, [r0]
	adds r3, r7, #1
	mov sb, r3
	cmp r6, r0
	beq _0801D5B4
	b _0801D9A6
_0801D5B4:
	ldrh r0, [r4]
	cmp r0, #0x1c
	bls _0801D5BC
	b _0801D9A6
_0801D5BC:
	lsls r0, r7, #1
	adds r0, r0, r7
	cmp r7, #3
	ble _0801D5C6
	adds r0, #5
_0801D5C6:
	ldrh r1, [r4]
	cmp r1, r0
	beq _0801D6A4
	adds r6, r1, #0
	movs r1, #6
	ldrsh r0, [r4, r1]
	mov r8, r0
	lsls r0, r5, #2
	adds r1, r0, r5
	lsls r0, r1, #1
	movs r4, #0
	cmp r0, #0xd
	bhi _0801D666
	lsls r0, r1, #3
	ldr r1, _0801D5F0 @ =_0801D5F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801D5EC: .4byte 0x00000838
_0801D5F0: .4byte _0801D5F4
_0801D5F4: @ jump table
	.4byte _0801D62C @ case 0
	.4byte _0801D634 @ case 1
	.4byte _0801D63C @ case 2
	.4byte _0801D644 @ case 3
	.4byte _0801D666 @ case 4
	.4byte _0801D666 @ case 5
	.4byte _0801D666 @ case 6
	.4byte _0801D666 @ case 7
	.4byte _0801D666 @ case 8
	.4byte _0801D666 @ case 9
	.4byte _0801D64C @ case 10
	.4byte _0801D654 @ case 11
	.4byte _0801D65C @ case 12
	.4byte _0801D664 @ case 13
_0801D62C:
	ldr r4, _0801D630 @ =_080DB0B2
	b _0801D666
	.align 2, 0
_0801D630: .4byte _080DB0B2
_0801D634:
	ldr r4, _0801D638 @ =_080DB0D6
	b _0801D666
	.align 2, 0
_0801D638: .4byte _080DB0D6
_0801D63C:
	ldr r4, _0801D640 @ =_080DB0FA
	b _0801D666
	.align 2, 0
_0801D640: .4byte _080DB0FA
_0801D644:
	ldr r4, _0801D648 @ =_080DB11E
	b _0801D666
	.align 2, 0
_0801D648: .4byte _080DB11E
_0801D64C:
	ldr r4, _0801D650 @ =_080DB142
	b _0801D666
	.align 2, 0
_0801D650: .4byte _080DB142
_0801D654:
	ldr r4, _0801D658 @ =_080DB166
	b _0801D666
	.align 2, 0
_0801D658: .4byte _080DB166
_0801D65C:
	ldr r4, _0801D660 @ =_080DB18A
	b _0801D666
	.align 2, 0
_0801D660: .4byte _080DB18A
_0801D664:
	ldr r4, _0801D69C @ =_080DB1AE
_0801D666:
	movs r0, #0
	adds r1, r6, #0
	movs r2, #0xa
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_804F6F4
	ldr r1, _0801D6A0 @ =_080DB234
	mov r2, r8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r1, r6, #1
	movs r0, #0
	movs r2, #0xb
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_804F6F4
	adds r7, #1
	mov sb, r7
	b _0801D9A6
	.align 2, 0
_0801D69C: .4byte _080DB1AE
_0801D6A0: .4byte _080DB234
_0801D6A4:
	movs r3, #0
	mov ip, r3
	mov r6, sb
	lsls r0, r6, #1
	adds r3, r0, r6
	cmp r6, #3
	ble _0801D6B4
	adds r3, #5
_0801D6B4:
	ldr r6, _0801D708 @ =0x00000814
	adds r0, r2, r6
	ldrb r0, [r0]
	subs r0, #1
	cmp r7, r0
	bge _0801D6E0
	mov r2, sb
	lsls r0, r2, #3
	mov r6, sl
	adds r2, r6, r0
	movs r6, #0x3a
	ldrsh r0, [r2, r6]
	cmp r0, r8
	beq _0801D6E0
	ldrh r0, [r2, #0x34]
	cmp r0, r3
	beq _0801D6DA
	movs r0, #1
	mov ip, r0
_0801D6DA:
	mov r2, ip
	cmp r2, #0
	beq _0801D7A4
_0801D6E0:
	cmp r7, #0
	beq _0801D6E8
	cmp r7, #4
	bne _0801D748
_0801D6E8:
	adds r6, r1, #0
	movs r3, #6
	ldrsh r7, [r4, r3]
	lsls r0, r5, #2
	adds r1, r0, r5
	lsls r0, r1, #1
	movs r4, #0
	cmp r0, #0xd
	bls _0801D6FC
	b _0801D8AE
_0801D6FC:
	lsls r0, r1, #3
	ldr r1, _0801D70C @ =_0801D710
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801D708: .4byte 0x00000814
_0801D70C: .4byte _0801D710
_0801D710: @ jump table
	.4byte _0801D874 @ case 0
	.4byte _0801D87C @ case 1
	.4byte _0801D884 @ case 2
	.4byte _0801D88C @ case 3
	.4byte _0801D8AE @ case 4
	.4byte _0801D8AE @ case 5
	.4byte _0801D8AE @ case 6
	.4byte _0801D8AE @ case 7
	.4byte _0801D8AE @ case 8
	.4byte _0801D8AE @ case 9
	.4byte _0801D894 @ case 10
	.4byte _0801D89C @ case 11
	.4byte _0801D8A4 @ case 12
	.4byte _0801D8AC @ case 13
_0801D748:
	adds r6, r1, #0
	movs r0, #6
	ldrsh r7, [r4, r0]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, #3
	movs r4, #0
	cmp r0, #0xd
	bls _0801D75E
	b _0801D8AE
_0801D75E:
	lsls r0, r0, #2
	ldr r1, _0801D768 @ =_0801D76C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801D768: .4byte _0801D76C
_0801D76C: @ jump table
	.4byte _0801D874 @ case 0
	.4byte _0801D87C @ case 1
	.4byte _0801D884 @ case 2
	.4byte _0801D88C @ case 3
	.4byte _0801D8AE @ case 4
	.4byte _0801D8AE @ case 5
	.4byte _0801D8AE @ case 6
	.4byte _0801D8AE @ case 7
	.4byte _0801D8AE @ case 8
	.4byte _0801D8AE @ case 9
	.4byte _0801D894 @ case 10
	.4byte _0801D89C @ case 11
	.4byte _0801D8A4 @ case 12
	.4byte _0801D8AC @ case 13
_0801D7A4:
	cmp r7, #3
	beq _0801D818
	cmp r7, #3
	bgt _0801D7B2
	cmp r7, #0
	beq _0801D7BC
	b _0801D8E4
_0801D7B2:
	cmp r7, #4
	beq _0801D7BC
	cmp r7, #7
	beq _0801D818
	b _0801D8E4
_0801D7BC:
	adds r6, r1, #0
	movs r1, #6
	ldrsh r7, [r4, r1]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, #1
	movs r4, #0
	cmp r0, #0xd
	bls _0801D7D2
	b _0801D8AE
_0801D7D2:
	lsls r0, r0, #2
	ldr r1, _0801D7DC @ =_0801D7E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801D7DC: .4byte _0801D7E0
_0801D7E0: @ jump table
	.4byte _0801D874 @ case 0
	.4byte _0801D87C @ case 1
	.4byte _0801D884 @ case 2
	.4byte _0801D88C @ case 3
	.4byte _0801D8AE @ case 4
	.4byte _0801D8AE @ case 5
	.4byte _0801D8AE @ case 6
	.4byte _0801D8AE @ case 7
	.4byte _0801D8AE @ case 8
	.4byte _0801D8AE @ case 9
	.4byte _0801D894 @ case 10
	.4byte _0801D89C @ case 11
	.4byte _0801D8A4 @ case 12
	.4byte _0801D8AC @ case 13
_0801D818:
	adds r6, r1, #0
	movs r2, #6
	ldrsh r7, [r4, r2]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, #3
	movs r4, #0
	cmp r0, #0xd
	bhi _0801D8AE
	lsls r0, r0, #2
	ldr r1, _0801D838 @ =_0801D83C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801D838: .4byte _0801D83C
_0801D83C: @ jump table
	.4byte _0801D874 @ case 0
	.4byte _0801D87C @ case 1
	.4byte _0801D884 @ case 2
	.4byte _0801D88C @ case 3
	.4byte _0801D8AE @ case 4
	.4byte _0801D8AE @ case 5
	.4byte _0801D8AE @ case 6
	.4byte _0801D8AE @ case 7
	.4byte _0801D8AE @ case 8
	.4byte _0801D8AE @ case 9
	.4byte _0801D894 @ case 10
	.4byte _0801D89C @ case 11
	.4byte _0801D8A4 @ case 12
	.4byte _0801D8AC @ case 13
_0801D874:
	ldr r4, _0801D878 @ =_080DB0B2
	b _0801D8AE
	.align 2, 0
_0801D878: .4byte _080DB0B2
_0801D87C:
	ldr r4, _0801D880 @ =_080DB0D6
	b _0801D8AE
	.align 2, 0
_0801D880: .4byte _080DB0D6
_0801D884:
	ldr r4, _0801D888 @ =_080DB0FA
	b _0801D8AE
	.align 2, 0
_0801D888: .4byte _080DB0FA
_0801D88C:
	ldr r4, _0801D890 @ =_080DB11E
	b _0801D8AE
	.align 2, 0
_0801D890: .4byte _080DB11E
_0801D894:
	ldr r4, _0801D898 @ =_080DB142
	b _0801D8AE
	.align 2, 0
_0801D898: .4byte _080DB142
_0801D89C:
	ldr r4, _0801D8A0 @ =_080DB166
	b _0801D8AE
	.align 2, 0
_0801D8A0: .4byte _080DB166
_0801D8A4:
	ldr r4, _0801D8A8 @ =_080DB18A
	b _0801D8AE
	.align 2, 0
_0801D8A8: .4byte _080DB18A
_0801D8AC:
	ldr r4, _0801D8DC @ =_080DB1AE
_0801D8AE:
	movs r0, #0
	adds r1, r6, #0
	movs r2, #0xa
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_804F6F4
	ldr r1, _0801D8E0 @ =_080DB234
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r1, r6, #1
	movs r0, #0
	movs r2, #0xb
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_804F6F4
	b _0801D9A6
	.align 2, 0
_0801D8DC: .4byte _080DB1AE
_0801D8E0: .4byte _080DB234
_0801D8E4:
	adds r6, r1, #0
	movs r3, #6
	ldrsh r7, [r4, r3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, #2
	movs r4, #0
	cmp r0, #0xd
	bhi _0801D97A
	lsls r0, r0, #2
	ldr r1, _0801D904 @ =_0801D908
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801D904: .4byte _0801D908
_0801D908: @ jump table
	.4byte _0801D940 @ case 0
	.4byte _0801D948 @ case 1
	.4byte _0801D950 @ case 2
	.4byte _0801D958 @ case 3
	.4byte _0801D97A @ case 4
	.4byte _0801D97A @ case 5
	.4byte _0801D97A @ case 6
	.4byte _0801D97A @ case 7
	.4byte _0801D97A @ case 8
	.4byte _0801D97A @ case 9
	.4byte _0801D960 @ case 10
	.4byte _0801D968 @ case 11
	.4byte _0801D970 @ case 12
	.4byte _0801D978 @ case 13
_0801D940:
	ldr r4, _0801D944 @ =_080DB0B2
	b _0801D97A
	.align 2, 0
_0801D944: .4byte _080DB0B2
_0801D948:
	ldr r4, _0801D94C @ =_080DB0D6
	b _0801D97A
	.align 2, 0
_0801D94C: .4byte _080DB0D6
_0801D950:
	ldr r4, _0801D954 @ =_080DB0FA
	b _0801D97A
	.align 2, 0
_0801D954: .4byte _080DB0FA
_0801D958:
	ldr r4, _0801D95C @ =_080DB11E
	b _0801D97A
	.align 2, 0
_0801D95C: .4byte _080DB11E
_0801D960:
	ldr r4, _0801D964 @ =_080DB142
	b _0801D97A
	.align 2, 0
_0801D964: .4byte _080DB142
_0801D968:
	ldr r4, _0801D96C @ =_080DB166
	b _0801D97A
	.align 2, 0
_0801D96C: .4byte _080DB166
_0801D970:
	ldr r4, _0801D974 @ =_080DB18A
	b _0801D97A
	.align 2, 0
_0801D974: .4byte _080DB18A
_0801D978:
	ldr r4, _0801D9C8 @ =_080DB1AE
_0801D97A:
	movs r0, #0
	adds r1, r6, #0
	movs r2, #0xa
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_804F6F4
	ldr r1, _0801D9CC @ =_080DB234
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r1, r6, #1
	movs r0, #0
	movs r2, #0xb
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_804F6F4
_0801D9A6:
	mov r7, sb
	ldr r0, _0801D9D0 @ =0x03002E20
	ldr r6, _0801D9D4 @ =0x00000814
	adds r1, r0, r6
_0801D9AE:
	adds r2, r0, #0
	ldrb r1, [r1]
	cmp r7, r1
	bge _0801D9B8
	b _0801D568
_0801D9B8:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801D9C8: .4byte _080DB1AE
_0801D9CC: .4byte _080DB234
_0801D9D0: .4byte 0x03002E20
_0801D9D4: .4byte 0x00000814

	thumb_func_start sub_801D9D8
sub_801D9D8: @ 0x0801D9D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	bl sub_800EDDC
	str r0, [sp]
	ldr r0, _0801DA9C @ =0x03002E20
	ldr r1, _0801DAA0 @ =0x00000814
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #4]
	movs r1, #0
	cmp r1, r0
	bge _0801DA8A
_0801D9FA:
	lsls r0, r1, #4
	adds r0, #0x34
	ldr r3, [sp]
	adds r2, r3, r0
	ldrh r0, [r2, #0xc]
	adds r7, r1, #1
	str r7, [sp, #8]
	cmp r0, #0
	bne _0801DA82
	ldr r0, [sp, #4]
	subs r0, #1
	movs r3, #2
	cmp r1, r0
	bne _0801DA18
	movs r3, #3
_0801DA18:
	lsls r0, r1, #1
	adds r0, #3
	mov sl, r0
	mov r8, r3
	ldrh r6, [r2, #0xa]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov ip, r0
	movs r0, #0
	cmp r0, r8
	bge _0801DA82
_0801DA40:
	movs r4, #0
	mov r1, sl
	adds r5, r1, r0
	adds r0, #1
	str r0, [sp, #0xc]
	adds r3, r5, #0
	lsls r0, r3, #6
	mov r7, sb
	adds r2, r0, r7
	lsls r0, r3, #5
	adds r0, r6, r0
	lsls r0, r0, #1
	mov r7, ip
	adds r1, r0, r7
_0801DA5C:
	adds r0, r4, r6
	cmp r0, #0
	blt _0801DA72
	cmp r5, #0
	blt _0801DA72
	cmp r0, #0x1d
	bgt _0801DA72
	cmp r3, #0x13
	bgt _0801DA72
	ldrh r0, [r2]
	strh r0, [r1]
_0801DA72:
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #0x20
	blt _0801DA5C
	ldr r0, [sp, #0xc]
	cmp r0, r8
	blt _0801DA40
_0801DA82:
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	cmp r1, r0
	blt _0801D9FA
_0801DA8A:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DA9C: .4byte 0x03002E20
_0801DAA0: .4byte 0x00000814

	thumb_func_start sub_801DAA4
sub_801DAA4: @ 0x0801DAA4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r4, _0801DBF8 @ =_0809A9AC
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x20
	bl CpuFastSet
	ldr r4, _0801DBFC @ =_080AACF0
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0801DC00 @ =_080ACAFC
	ldr r2, _0801DC04 @ =0x06001400
	ldr r3, _0801DC08 @ =0x80000600
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0801DC0C @ =_080ABEFC
	ldr r2, _0801DC10 @ =0x06002000
	ldr r3, _0801DC14 @ =0x80000400
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0801DC18 @ =_0809AA2C
	movs r2, #0xc0
	lsls r2, r2, #0x13
	ldr r3, _0801DC1C @ =0x80000200
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0801DC20 @ =_0809AE2C
	ldr r2, _0801DC24 @ =0x06001000
	ldr r3, _0801DC28 @ =0x80000240
	bl dmaq_enqueue
	ldr r4, _0801DC2C @ =_0809B2AC
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	movs r2, #3
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _0801DC30 @ =0x01000110
	mov r0, sp
	bl CpuFastSet
	ldr r0, _0801DC34 @ =0x03002E20
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r7, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	mov r8, r0
_0801DB58:
	adds r6, r7, #0
	adds r6, #0xf
	movs r0, #0
	adds r1, r6, #0
	movs r2, #1
	bl map_getBufferPtr2d
	adds r4, r0, #0
	mov r0, r8
	adds r5, r0, r7
	movs r0, #0
	adds r1, r5, #0
	movs r2, #0x1c
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #0
	adds r1, r6, #0
	movs r2, #2
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r0, #0
	adds r1, r5, #0
	movs r2, #0x1d
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	adds r7, #1
	cmp r7, #2
	ble _0801DB58
	ldr r6, _0801DC34 @ =0x03002E20
	ldr r1, _0801DC38 @ =0x00000801
	adds r5, r6, r1
	ldrb r0, [r5]
	bl track_getCup
	lsls r0, r0, #0x18
	ldr r1, _0801DC3C @ =_080DB254
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0801DC40 @ =0x06000800
	bl LZ77UnCompVram
	ldrb r0, [r5]
	bl track_getCup
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrb r0, [r5]
	bl track_getCupIndex
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r4, r4, #2
	adds r5, r4, r0
	ldr r0, _0801DC44 @ =0x0000059C
	adds r6, r6, r0
	ldr r0, [r6]
	ldr r0, [r0, #0xc]
	bl sub_8032BC8
	cmp r0, #0
	beq _0801DC50
	ldr r4, _0801DC48 @ =gTrackDefTable
	adds r0, r5, #0
	bl track_getRetroTrack
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	ldr r1, _0801DC4C @ =0x06000400
	bl LZ77UnCompVram
	b _0801DC66
	.align 2, 0
_0801DBF8: .4byte _0809A9AC
_0801DBFC: .4byte _080AACF0
_0801DC00: .4byte _080ACAFC
_0801DC04: .4byte 0x06001400
_0801DC08: .4byte 0x80000600
_0801DC0C: .4byte _080ABEFC
_0801DC10: .4byte 0x06002000
_0801DC14: .4byte 0x80000400
_0801DC18: .4byte _0809AA2C
_0801DC1C: .4byte 0x80000200
_0801DC20: .4byte _0809AE2C
_0801DC24: .4byte 0x06001000
_0801DC28: .4byte 0x80000240
_0801DC2C: .4byte _0809B2AC
_0801DC30: .4byte 0x01000110
_0801DC34: .4byte 0x03002E20
_0801DC38: .4byte 0x00000801
_0801DC3C: .4byte _080DB254
_0801DC40: .4byte 0x06000800
_0801DC44: .4byte 0x0000059C
_0801DC48: .4byte gTrackDefTable
_0801DC4C: .4byte 0x06000400
_0801DC50:
	ldr r4, _0801DC74 @ =gTrackDefTable
	adds r0, r5, #0
	bl track_getMKSCTrack
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	ldr r1, _0801DC78 @ =0x06000400
	bl LZ77UnCompVram
_0801DC66:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DC74: .4byte gTrackDefTable
_0801DC78: .4byte 0x06000400

	thumb_func_start sub_801DC7C
sub_801DC7C: @ 0x0801DC7C
	push {r4, lr}
	movs r4, #0
	bl sub_802DC88
	cmp r0, #0
	beq _0801DC90
	bl sub_802DCB4
	cmp r0, #0
	bne _0801DC92
_0801DC90:
	movs r4, #1
_0801DC92:
	cmp r4, #0
	beq _0801DCE4
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0801DCC8 @ =_080AAE3C
	ldr r2, _0801DCCC @ =0x06002000
	ldr r3, _0801DCD0 @ =0x80000400
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0801DCD4 @ =_080ADA7C
	ldr r2, _0801DCD8 @ =0x06002800
	ldr r3, _0801DCDC @ =0x80000200
	bl dmaq_enqueue
	ldr r4, _0801DCE0 @ =_080DB268
	movs r0, #1
	movs r1, #9
	movs r2, #0xe
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_804F6F4
	b _0801DD14
	.align 2, 0
_0801DCC8: .4byte _080AAE3C
_0801DCCC: .4byte 0x06002000
_0801DCD0: .4byte 0x80000400
_0801DCD4: .4byte _080ADA7C
_0801DCD8: .4byte 0x06002800
_0801DCDC: .4byte 0x80000200
_0801DCE0: .4byte _080DB268
_0801DCE4:
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0801DD38 @ =_080AAE3C
	ldr r2, _0801DD3C @ =0x06002000
	ldr r3, _0801DD40 @ =0x80000400
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0801DD44 @ =_080AD8BC
	ldr r2, _0801DD48 @ =0x06002080
	ldr r3, _0801DD4C @ =0x800000E0
	bl dmaq_enqueue
	ldr r4, _0801DD50 @ =_080DB2FC
	movs r0, #1
	movs r1, #0xa
	movs r2, #0xf
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_804F6F4
_0801DD14:
	ldr r4, _0801DD54 @ =_080AACF0
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801DD38: .4byte _080AAE3C
_0801DD3C: .4byte 0x06002000
_0801DD40: .4byte 0x80000400
_0801DD44: .4byte _080AD8BC
_0801DD48: .4byte 0x06002080
_0801DD4C: .4byte 0x800000E0
_0801DD50: .4byte _080DB2FC
_0801DD54: .4byte _080AACF0

	thumb_func_start sub_801DD58
sub_801DD58: @ 0x0801DD58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	str r0, [sp, #0xc]
	mov r8, r1
	str r2, [sp, #0x10]
	mov sl, r3
	ldr r0, _0801DE08 @ =0x03002E20
	ldr r1, _0801DE0C @ =0x00000838
	adds r0, r0, r1
	ldr r0, [r0]
	mov r2, r8
	movs r3, #2
	ldrsh r4, [r2, r3]
	adds r0, #0x4c
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	bl sub_800EDB0
	movs r7, #0xf0
	lsls r7, r7, #8
	cmp r4, r0
	bne _0801DD92
	movs r7, #0xe0
	lsls r7, r7, #8
_0801DD92:
	ldr r4, [sp, #0xc]
	lsls r3, r4, #7
	mov r5, sl
	adds r1, r3, r5
	adds r2, r1, #0
	adds r2, #0xc2
	ldr r6, _0801DE10 @ =0x00000101
	adds r0, r6, #0
	mov r4, r8
	ldrh r4, [r4]
	adds r0, r0, r4
	orrs r0, r7
	strh r0, [r2]
	movs r5, #0x81
	lsls r5, r5, #1
	adds r1, r1, r5
	adds r6, #0x20
	adds r0, r6, #0
	mov r2, r8
	ldrh r2, [r2]
	adds r0, r0, r2
	orrs r0, r7
	strh r0, [r1]
	ldr r0, _0801DE14 @ =_080DB3DC
	mov r4, r8
	movs r5, #2
	ldrsh r1, [r4, r5]
	lsls r2, r1, #3
	adds r2, r2, r0
	lsls r1, r1, #1
	adds r1, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r6, #0
	mov sb, r6
	str r3, [sp, #0x18]
	ldr r5, [r0, #0x40]
	mov ip, r6
	movs r0, #0x83
	lsls r0, r0, #1
	add r0, sl
	adds r4, r3, r0
	ldr r2, [r2]
	mov r0, sl
	adds r0, #0xc6
	adds r6, r3, r0
	ldr r3, [r1]
	movs r0, #0xe0
	lsls r0, r0, #2
	add r0, sl
	str r0, [sp, #0x14]
_0801DDF8:
	mov r1, sb
	cmp r1, #3
	bgt _0801DE18
	ldrh r0, [r2]
	strh r0, [r6]
	ldrh r0, [r3]
	b _0801DE2A
	.align 2, 0
_0801DE08: .4byte 0x03002E20
_0801DE0C: .4byte 0x00000838
_0801DE10: .4byte 0x00000101
_0801DE14: .4byte _080DB3DC
_0801DE18:
	ldrh r1, [r2]
	ldr r0, _0801DE6C @ =0x00000FFF
	ands r0, r1
	orrs r0, r7
	strh r0, [r6]
	ldrh r1, [r3]
	ldr r0, _0801DE6C @ =0x00000FFF
	ands r0, r1
	orrs r0, r7
_0801DE2A:
	strh r0, [r4]
	ldr r0, [sp, #0xc]
	cmp r0, #7
	bne _0801DE40
	ldr r0, [sp, #0x14]
	add r0, ip
	movs r1, #0xa3
	lsls r1, r1, #1
	adds r1, r0, r1
	ldrh r0, [r5]
	strh r0, [r1]
_0801DE40:
	adds r5, #2
	movs r0, #2
	add ip, r0
	adds r4, #2
	adds r2, #2
	adds r6, #2
	adds r3, #2
	movs r1, #1
	add sb, r1
	mov r0, sb
	cmp r0, #8
	ble _0801DDF8
	ldr r1, [sp, #0x10]
	cmp r1, #1
	bne _0801DE60
	b _0801DF7C
_0801DE60:
	cmp r1, #1
	bgt _0801DE70
	cmp r1, #0
	beq _0801DE7A
	b _0801E0A8
	.align 2, 0
_0801DE6C: .4byte 0x00000FFF
_0801DE70:
	ldr r2, [sp, #0x10]
	cmp r2, #2
	bne _0801DE78
	b _0801E03E
_0801DE78:
	b _0801E0A8
_0801DE7A:
	mov r3, r8
	ldrh r0, [r3, #4]
	add r2, sp, #4
	add r3, sp, #8
	mov r1, sp
	bl sub_804EFBC
	ldr r4, [sp, #0x18]
	add r4, sl
	mov ip, r4
	mov r1, ip
	adds r1, #0xec
	ldr r5, [sp]
	movs r6, #0xf
	mov sb, r6
	movs r0, #0xf
	mov r8, r0
	ands r5, r0
	str r5, [sp, #0x20]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r3, #0
	adds r0, r5, r2
	orrs r0, r7
	strh r0, [r1]
	mov r3, ip
	adds r3, #0xee
	movs r4, #0x85
	lsls r4, r4, #1
	adds r1, r4, #0
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r3]
	adds r3, #2
	ldr r1, [sp, #4]
	lsrs r5, r1, #4
	mov r6, sb
	ands r5, r6
	adds r0, r5, r2
	orrs r0, r7
	strh r0, [r3]
	adds r3, #2
	mov r4, r8
	ands r4, r1
	adds r0, r4, r2
	orrs r0, r7
	strh r0, [r3]
	adds r3, #2
	ldr r0, _0801DF74 @ =0x0000010B
	adds r1, r0, #0
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r3]
	movs r1, #0xf6
	add r1, ip
	mov sl, r1
	ldr r1, [sp, #8]
	lsrs r3, r1, #4
	ands r3, r6
	adds r0, r3, r2
	orrs r0, r7
	mov r6, sl
	strh r0, [r6]
	movs r0, #0xf8
	add r0, ip
	mov r6, r8
	ands r6, r1
	mov r8, r6
	add r2, r8
	orrs r2, r7
	strh r2, [r0]
	movs r0, #0x96
	lsls r0, r0, #1
	add r0, ip
	movs r1, #0x90
	lsls r1, r1, #1
	mov sb, r1
	ldr r6, [sp, #0x20]
	add r6, sb
	orrs r6, r7
	strh r6, [r0]
	movs r2, #0x97
	lsls r2, r2, #1
	add r2, ip
	movs r6, #0x95
	lsls r6, r6, #1
	adds r1, r6, #0
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x98
	lsls r0, r0, #1
	add r0, ip
	add r5, sb
	orrs r5, r7
	strh r5, [r0]
	movs r0, #0x99
	lsls r0, r0, #1
	add r0, ip
	add r4, sb
	orrs r4, r7
	strh r4, [r0]
	movs r2, #0x9a
	lsls r2, r2, #1
	add r2, ip
	ldr r0, _0801DF78 @ =0x0000012B
	adds r1, r0, #0
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x9b
	lsls r0, r0, #1
	add r0, ip
	add r3, sb
	orrs r3, r7
	strh r3, [r0]
	movs r0, #0x9c
	lsls r0, r0, #1
	add r0, ip
	add r8, sb
	mov r1, r8
	orrs r7, r1
	strh r7, [r0]
	b _0801E0A8
	.align 2, 0
_0801DF74: .4byte 0x0000010B
_0801DF78: .4byte 0x0000012B
_0801DF7C:
	ldr r6, [sp, #0x18]
	add r6, sl
	adds r4, r6, #0
	adds r4, #0xee
	mov r2, r8
	movs r3, #6
	ldrsh r0, [r2, r3]
	movs r1, #0xa
	bl __divsi3
	movs r5, #0x80
	lsls r5, r5, #1
	mov sl, r5
	add r0, sl
	orrs r0, r7
	strh r0, [r4]
	adds r4, #2
	mov r1, r8
	movs r2, #6
	ldrsh r0, [r1, r2]
	movs r1, #0xa
	bl __modsi3
	add r0, sl
	orrs r0, r7
	strh r0, [r4]
	adds r0, r6, #0
	adds r0, #0xf2
	movs r5, #0
	strh r5, [r0]
	movs r3, #0x97
	lsls r3, r3, #1
	adds r4, r6, r3
	mov r1, r8
	movs r2, #6
	ldrsh r0, [r1, r2]
	movs r1, #0xa
	bl __divsi3
	movs r3, #0x90
	lsls r3, r3, #1
	mov sb, r3
	add r0, sb
	orrs r0, r7
	strh r0, [r4]
	movs r0, #0x98
	lsls r0, r0, #1
	adds r4, r6, r0
	mov r1, r8
	movs r2, #6
	ldrsh r0, [r1, r2]
	movs r1, #0xa
	bl __modsi3
	add r0, sb
	orrs r0, r7
	strh r0, [r4]
	movs r3, #0x99
	lsls r3, r3, #1
	adds r0, r6, r3
	strh r5, [r0]
	mov r4, r8
	movs r5, #0
	ldrsh r0, [r4, r5]
	cmp r0, #3
	bgt _0801E0A8
	adds r2, r6, #0
	adds r2, #0xf4
	movs r0, #0x86
	lsls r0, r0, #1
	adds r1, r0, #0
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r2]
	adds r1, r6, #0
	adds r1, #0xf6
	ldrh r0, [r4, #8]
	add r0, sl
	orrs r0, r7
	strh r0, [r1]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r2, r6, r1
	subs r3, #6
	adds r1, r3, #0
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r2]
	movs r4, #0x9b
	lsls r4, r4, #1
	adds r1, r6, r4
	mov r5, r8
	ldrh r0, [r5, #8]
	add r0, sb
	orrs r7, r0
	strh r7, [r1]
	b _0801E0A8
_0801E03E:
	ldr r6, [sp, #0x18]
	add r6, sl
	adds r5, r6, #0
	adds r5, #0xee
	mov r1, r8
	movs r2, #6
	ldrsh r0, [r1, r2]
	movs r1, #0xa
	bl __divsi3
	movs r3, #0x80
	lsls r3, r3, #1
	adds r4, r3, #0
	adds r0, r0, r4
	orrs r0, r7
	strh r0, [r5]
	adds r5, #2
	mov r1, r8
	movs r2, #6
	ldrsh r0, [r1, r2]
	movs r1, #0xa
	bl __modsi3
	adds r0, r0, r4
	orrs r0, r7
	strh r0, [r5]
	movs r3, #0x97
	lsls r3, r3, #1
	adds r5, r6, r3
	mov r4, r8
	movs r1, #6
	ldrsh r0, [r4, r1]
	movs r1, #0xa
	bl __divsi3
	movs r2, #0x90
	lsls r2, r2, #1
	adds r4, r2, #0
	adds r0, r0, r4
	orrs r0, r7
	strh r0, [r5]
	movs r3, #0x98
	lsls r3, r3, #1
	adds r5, r6, r3
	mov r6, r8
	movs r1, #6
	ldrsh r0, [r6, r1]
	movs r1, #0xa
	bl __modsi3
	adds r0, r0, r4
	orrs r7, r0
	strh r7, [r5]
_0801E0A8:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_801E0B8
sub_801E0B8: @ 0x0801E0B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	bl sub_800EDDC
	str r0, [sp, #0x30]
	ldr r0, _0801E180 @ =0x03002E20
	movs r1, #0x24
	adds r1, r1, r0
	mov r8, r1
	ldr r2, _0801E184 @ =0x00000814
	adds r0, r0, r2
	ldrb r0, [r0]
	str r0, [sp, #0x34]
	movs r5, #0
	cmp r5, r0
	bge _0801E114
	mov r7, sp
	ldr r6, [sp, #0x30]
	adds r6, #0x36
_0801E0E6:
	lsls r1, r5, #2
	ldr r0, _0801E188 @ =0x000007F4
	add r0, r8
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r4, #0
	adds r0, #0xc4
	ldrb r0, [r0]
	strh r0, [r6, #4]
	adds r0, r4, #0
	adds r0, #0x4c
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	bl sub_800EDB0
	strh r0, [r6]
	stm r7!, {r4}
	adds r6, #0x10
	adds r5, #1
	ldr r3, [sp, #0x34]
	cmp r5, r3
	blt _0801E0E6
_0801E114:
	movs r5, #0
	ldr r4, [sp, #0x34]
	subs r4, #1
	str r4, [sp, #0x38]
	cmp r5, r4
	bge _0801E1F6
_0801E120:
	adds r6, r5, #1
	mov ip, r6
	ldr r7, [sp, #0x34]
	cmp ip, r7
	bge _0801E1EE
	lsls r0, r5, #4
	ldr r1, [sp, #0x30]
	adds r1, r1, r0
	mov r8, r1
	lsls r0, r5, #2
	add r0, sp
	str r0, [sp, #0x3c]
	add r2, sp, #0x20
	mov sl, r2
	lsls r0, r6, #4
	ldr r3, [sp, #0x30]
	adds r5, r0, r3
	lsls r0, r6, #2
	mov r6, sp
	adds r4, r0, r6
	mov r0, ip
	subs r6, r7, r0
_0801E14C:
	movs r1, #0
	mov sb, r1
	mov r2, r8
	movs r3, #0x3a
	ldrsh r1, [r2, r3]
	movs r7, #0x3a
	ldrsh r0, [r5, r7]
	cmp r1, r0
	blt _0801E1AE
	cmp r1, r0
	bne _0801E1A8
	ldr r0, [sp, #0x3c]
	ldr r2, [r0]
	ldr r0, [r2, #0x48]
	movs r3, #0x80
	lsls r3, r3, #8
	ands r0, r3
	cmp r0, #0
	bne _0801E18C
	ldr r0, [r4]
	ldr r0, [r0, #0x48]
	ands r0, r3
	cmp r0, #0
	beq _0801E1A8
	b _0801E1AE
	.align 2, 0
_0801E180: .4byte 0x03002E20
_0801E184: .4byte 0x00000814
_0801E188: .4byte 0x000007F4
_0801E18C:
	ldr r1, [r4]
	ldr r0, [r1, #0x48]
	ands r0, r3
	cmp r0, #0
	beq _0801E1A8
	adds r0, r2, #0
	adds r0, #0xec
	adds r1, #0xec
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bls _0801E1A8
	movs r1, #1
	mov sb, r1
_0801E1A8:
	mov r2, sb
	cmp r2, #0
	beq _0801E1E4
_0801E1AE:
	mov r1, sl
	adds r0, r5, #0
	adds r0, #0x34
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0]
	str r0, [r1]
	adds r1, r5, #0
	adds r1, #0x34
	mov r0, r8
	adds r0, #0x34
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, r8
	adds r1, #0x34
	mov r0, sl
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, [r4]
	ldr r3, [sp, #0x3c]
	ldr r0, [r3]
	str r0, [r4]
	str r1, [r3]
_0801E1E4:
	adds r5, #0x10
	adds r4, #4
	subs r6, #1
	cmp r6, #0
	bne _0801E14C
_0801E1EE:
	mov r5, ip
	ldr r4, [sp, #0x38]
	cmp r5, r4
	blt _0801E120
_0801E1F6:
	ldr r6, [sp, #0x30]
	movs r7, #0x3a
	ldrsh r2, [r6, r7]
	movs r3, #0
	movs r5, #0
	ldr r1, _0801E224 @ =0x03002E20
	ldr r4, _0801E228 @ =0x00000814
	adds r0, r1, r4
	ldrb r6, [r0]
	cmp r5, r6
	bge _0801E238
	adds r4, r0, #0
	ldr r1, [sp, #0x30]
	adds r1, #0x34
_0801E212:
	movs r7, #6
	ldrsh r0, [r1, r7]
	cmp r2, r0
	beq _0801E22C
	strh r5, [r1]
	adds r3, r5, #0
	adds r2, r0, #0
	b _0801E22E
	.align 2, 0
_0801E224: .4byte 0x03002E20
_0801E228: .4byte 0x00000814
_0801E22C:
	strh r3, [r1]
_0801E22E:
	adds r1, #0x10
	adds r5, #1
	ldrb r6, [r4]
	cmp r5, r6
	blt _0801E212
_0801E238:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_801E248
sub_801E248: @ 0x0801E248
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r0, #0
	bl sub_800EDDC
	str r0, [sp, #8]
	ldr r0, _0801E2AC @ =0x03002E20
	movs r5, #0
	ldr r1, _0801E2B0 @ =0x00000838
	adds r2, r0, r1
	lsls r1, r4, #2
	ldr r3, _0801E2B4 @ =0x00000818
	adds r0, r0, r3
	adds r1, r1, r0
	ldr r2, [r2]
	ldr r0, [r1]
	cmp r2, r0
	bne _0801E276
	movs r5, #1
_0801E276:
	lsls r0, r4, #1
	ldr r1, [sp, #8]
	adds r1, #0x14
	adds r3, r1, r0
	movs r6, #0
	ldrsh r2, [r3, r6]
	mov sb, r0
	mov sl, r1
	cmp r2, #4
	beq _0801E296
	ldr r1, [sp, #8]
	adds r1, #0x2c
	add r1, sb
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0801E296:
	movs r7, #0
	ldrsh r0, [r3, r7]
	cmp r0, #4
	bls _0801E2A0
	b _0801E7A6
_0801E2A0:
	lsls r0, r0, #2
	ldr r1, _0801E2B8 @ =_0801E2BC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801E2AC: .4byte 0x03002E20
_0801E2B0: .4byte 0x00000838
_0801E2B4: .4byte 0x00000818
_0801E2B8: .4byte _0801E2BC
_0801E2BC: @ jump table
	.4byte _0801E2D0 @ case 0
	.4byte _0801E318 @ case 1
	.4byte _0801E3D4 @ case 2
	.4byte _0801E67A @ case 3
	.4byte _0801E67A @ case 4
_0801E2D0:
	cmp r5, #0
	beq _0801E2F0
	ldr r4, _0801E314 @ =0x03002E20
	adds r4, #0x24
	adds r0, r4, #0
	bl sub_804D94C
	adds r0, r4, #0
	bl sub_804E144
	adds r0, r4, #0
	bl sub_804F2C0
	adds r0, r4, #0
	bl sub_804F340
_0801E2F0:
	ldr r0, [sp, #8]
	adds r0, #0x2c
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xb4
	bgt _0801E300
	b _0801E7A6
_0801E300:
	mov r1, sl
	add r1, sb
	movs r2, #0
	movs r0, #1
	strh r0, [r1]
	ldr r0, [sp, #8]
	adds r0, #0x1c
	add r0, sb
	strh r2, [r0]
	b _0801E7A6
	.align 2, 0
_0801E314: .4byte 0x03002E20
_0801E318:
	ldr r6, [sp, #8]
	adds r6, #0x1c
	ldr r7, [sp, #8]
	adds r7, #0x24
	cmp r5, #0
	beq _0801E3A2
	bl sub_800EDDC
	adds r1, r0, #0
	movs r2, #0
	ldr r0, _0801E3B8 @ =0x03002E20
	ldr r3, _0801E3BC @ =0x00000814
	adds r0, r0, r3
	ldrb r4, [r0]
	cmp r2, r4
	bge _0801E350
	ldr r3, _0801E3C0 @ =0x0000FFFF
	adds r4, r3, #0
	adds r3, r0, #0
	adds r1, #0x3a
_0801E340:
	ldrh r0, [r1]
	orrs r0, r4
	strh r0, [r1]
	adds r1, #8
	adds r2, #1
	ldrb r0, [r3]
	cmp r2, r0
	blt _0801E340
_0801E350:
	bl dmaq_getVBlankDmaQueue
	adds r4, r0, #0
	ldr r5, _0801E3C4 @ =0x06003800
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r2, r0, #0
	ldr r3, _0801E3C8 @ =0x80000280
	adds r0, r4, #0
	adds r1, r5, #0
	bl dmaq_enqueue
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _0801E3CC @ =0x01000140
	mov r0, sp
	bl CpuFastSet
	ldr r4, _0801E3D0 @ =_08064C90
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r2, #0xb9
	lsls r2, r2, #1
	adds r1, r1, r2
	adds r0, r4, #0
	movs r2, #2
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
_0801E3A2:
	mov r1, sl
	add r1, sb
	movs r2, #0
	movs r0, #2
	strh r0, [r1]
	mov r3, sb
	adds r0, r6, r3
	strh r2, [r0]
	adds r0, r7, r3
	strh r2, [r0]
	b _0801E7A6
	.align 2, 0
_0801E3B8: .4byte 0x03002E20
_0801E3BC: .4byte 0x00000814
_0801E3C0: .4byte 0x0000FFFF
_0801E3C4: .4byte 0x06003800
_0801E3C8: .4byte 0x80000280
_0801E3CC: .4byte 0x01000140
_0801E3D0: .4byte _08064C90
_0801E3D4:
	ldr r0, [sp, #8]
	adds r0, #0x24
	mov r4, sb
	adds r1, r0, r4
	ldrh r0, [r1]
	adds r0, #1
	movs r3, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _0801E3EE
	b _0801E7A6
_0801E3EE:
	strh r3, [r1]
	ldr r0, [sp, #8]
	adds r0, #0x1c
	adds r2, r0, r4
	ldrh r1, [r2]
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r0, #7
	ble _0801E402
	b _0801E66E
_0801E402:
	adds r0, r1, #1
	strh r0, [r2]
	cmp r5, #0
	bne _0801E40C
	b _0801E7A6
_0801E40C:
	movs r7, #0
	ldrsh r6, [r2, r7]
	str r3, [sp, #4]
	add r4, sp, #4
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _0801E45C @ =0x01000140
	adds r0, r4, #0
	bl CpuFastSet
	ldr r0, _0801E460 @ =0x03002E20
	ldr r1, _0801E464 @ =0x0000080A
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r1, r0, #8
	movs r0, #0xf
	ands r1, r0
	movs r2, #1
	mov sb, r2
	cmp r1, #3
	ble _0801E442
	movs r3, #2
	mov sb, r3
_0801E442:
	movs r4, #2
	mov r8, r4
	cmp r1, #3
	ble _0801E44E
	movs r7, #1
	mov r8, r7
_0801E44E:
	movs r4, #0
	lsls r5, r6, #3
	adds r7, r1, #1
	rsbs r0, r6, #0
	mov sl, r0
	b _0801E484
	.align 2, 0
_0801E45C: .4byte 0x01000140
_0801E460: .4byte 0x03002E20
_0801E464: .4byte 0x0000080A
_0801E468:
	adds r1, r5, r6
	cmp r1, #0
	bge _0801E470
	adds r1, #7
_0801E470:
	asrs r1, r1, #3
	movs r0, #0x12
	subs r0, r0, r1
	mov r1, r8
	muls r1, r4, r1
	add r1, sb
	adds r2, r4, #0
	bl sub_8022004
	adds r4, #1
_0801E484:
	adds r0, r7, #0
	muls r0, r6, r0
	cmp r0, #0
	bge _0801E48E
	adds r0, #7
_0801E48E:
	asrs r0, r0, #3
	cmp r4, r0
	blt _0801E468
	adds r1, r5, r6
	cmp r1, #0
	bge _0801E49C
	adds r1, #7
_0801E49C:
	asrs r1, r1, #3
	movs r0, #0x12
	subs r0, r0, r1
	movs r2, #0
	cmp r6, #7
	ble _0801E4AA
	movs r2, #1
_0801E4AA:
	adds r1, r6, #0
	bl sub_8022264
	mov r8, sl
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0xc]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
_0801E4CC:
	movs r4, #0
	adds r5, r0, #2
	adds r0, #1
	mov ip, r0
	adds r3, r5, #0
	lsls r0, r3, #6
	ldr r1, [sp, #0xc]
	adds r2, r0, r1
	lsls r0, r3, #5
	add r0, r8
	lsls r0, r0, #1
	mov r7, sb
	adds r1, r0, r7
_0801E4E6:
	mov r7, r8
	adds r0, r4, r7
	cmp r0, #0
	blt _0801E4FE
	cmp r5, #0
	blt _0801E4FE
	cmp r0, #0x1d
	bgt _0801E4FE
	cmp r3, #0x13
	bgt _0801E4FE
	ldrh r0, [r2]
	strh r0, [r1]
_0801E4FE:
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #4
	blt _0801E4E6
	mov r0, ip
	cmp r0, #0xd
	blt _0801E4CC
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov r8, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
_0801E528:
	movs r3, #0
	mov r1, sl
	adds r5, r0, r1
	adds r7, r0, #1
	adds r4, r5, #0
	lsls r1, r4, #5
	adds r1, #4
	lsls r0, r0, #5
	adds r2, r0, #4
	lsls r1, r1, #1
	add r1, sb
_0801E53E:
	adds r0, r3, #4
	cmp r0, #0
	blt _0801E558
	cmp r5, #0
	blt _0801E558
	cmp r0, #0x1d
	bgt _0801E558
	cmp r4, #0x13
	bgt _0801E558
	lsls r0, r2, #1
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r1]
_0801E558:
	adds r1, #2
	adds r2, #1
	adds r3, #1
	cmp r3, #0xd
	blt _0801E53E
	adds r0, r7, #0
	cmp r0, #4
	blt _0801E528
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov r8, r0
	movs r0, #0
_0801E582:
	adds r1, r0, #0
	adds r1, #0xc
	adds r0, #1
	mov sl, r0
	adds r4, r1, r6
	lsls r0, r4, #5
	lsls r1, r1, #5
	adds r1, #0x16
	adds r0, #0x16
	adds r0, r6, r0
	adds r2, r6, #0
	adds r2, #0x16
	movs r5, #8
	lsls r0, r0, #1
	mov r7, r8
	adds r3, r0, r7
	lsls r1, r1, #1
	add r1, sb
_0801E5A6:
	cmp r2, #0
	blt _0801E5BA
	cmp r4, #0
	blt _0801E5BA
	cmp r2, #0x1d
	bgt _0801E5BA
	cmp r4, #0x13
	bgt _0801E5BA
	ldrh r0, [r1]
	strh r0, [r3]
_0801E5BA:
	adds r1, #2
	adds r3, #2
	adds r2, #1
	subs r5, #1
	cmp r5, #0
	bge _0801E5A6
	mov r0, sl
	cmp r0, #9
	blt _0801E582
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov r8, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r7, r0, #0
	movs r0, #0
_0801E5E6:
	movs r1, #0
	adds r4, r0, #0
	adds r4, #0x10
	adds r6, r0, #1
	adds r3, r4, #0
	lsls r5, r3, #5
_0801E5F2:
	adds r2, r1, #1
	cmp r2, #0
	blt _0801E610
	cmp r4, #0
	blt _0801E610
	cmp r2, #0x1d
	bgt _0801E610
	cmp r3, #0x13
	bgt _0801E610
	adds r0, r5, r2
	lsls r0, r0, #1
	adds r1, r0, r7
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r1]
_0801E610:
	adds r1, r2, #0
	cmp r1, #5
	blt _0801E5F2
	adds r0, r6, #0
	cmp r0, #3
	blt _0801E5E6
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r7, r0, #0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r6, r0, #0
	movs r0, #0
_0801E636:
	movs r4, #0
	adds r3, r0, #1
	adds r5, r3, #0
	lsls r0, r3, #6
	adds r2, r0, r7
	adds r1, r0, r6
_0801E642:
	cmp r4, #0
	blt _0801E656
	cmp r3, #0
	blt _0801E656
	cmp r4, #0x1d
	bgt _0801E656
	cmp r5, #0x13
	bgt _0801E656
	ldrh r0, [r2]
	strh r0, [r1]
_0801E656:
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #3
	blt _0801E642
	adds r0, r3, #0
	cmp r0, #1
	blt _0801E636
	movs r0, #1
	ldr r1, [sp, #8]
	str r0, [r1, #0x10]
	b _0801E7A6
_0801E66E:
	mov r1, sl
	add r1, sb
	movs r0, #3
	strh r0, [r1]
	strh r3, [r2]
	b _0801E7A6
_0801E67A:
	lsls r4, r4, #2
	str r4, [sp, #0x10]
	cmp r5, #0
	bne _0801E684
	b _0801E78E
_0801E684:
	movs r0, #0
	str r0, [sp, #4]
	add r4, sp, #4
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _0801E7B8 @ =0x01000140
	adds r0, r4, #0
	bl CpuFastSet
	movs r0, #1
	bl sub_801D2A4
	bl sub_801D33C
	bl sub_801D3D0
	ldr r0, _0801E7BC @ =0x03002E20
	ldr r2, _0801E7C0 @ =0x0000080A
	adds r0, r0, r2
	ldrh r0, [r0]
	lsrs r2, r0, #8
	movs r0, #0xf
	ands r2, r0
	movs r1, #1
	cmp r2, #3
	ble _0801E6C0
	movs r1, #2
_0801E6C0:
	movs r7, #2
	cmp r2, #3
	ble _0801E6C8
	movs r7, #1
_0801E6C8:
	movs r5, #0
	adds r6, r2, #1
	cmp r5, r6
	bge _0801E6E4
	adds r4, r1, #0
_0801E6D2:
	movs r0, #9
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_8022004
	adds r4, r4, r7
	adds r5, #1
	cmp r5, r6
	blt _0801E6D2
_0801E6E4:
	movs r0, #9
	movs r1, #8
	movs r2, #1
	bl sub_8022264
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov r8, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r7, r0, #0
	movs r0, #0
_0801E708:
	movs r1, #0
	adds r4, r0, #0
	adds r4, #0x10
	adds r6, r0, #1
	adds r3, r4, #0
	lsls r5, r3, #5
_0801E714:
	adds r2, r1, #1
	cmp r2, #0
	blt _0801E732
	cmp r4, #0
	blt _0801E732
	cmp r2, #0x1d
	bgt _0801E732
	cmp r3, #0x13
	bgt _0801E732
	adds r0, r5, r2
	lsls r0, r0, #1
	adds r1, r0, r7
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r1]
_0801E732:
	adds r1, r2, #0
	cmp r1, #5
	blt _0801E714
	adds r0, r6, #0
	cmp r0, #3
	blt _0801E708
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r7, r0, #0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r6, r0, #0
	movs r0, #0
_0801E758:
	movs r4, #0
	adds r3, r0, #1
	adds r5, r3, #0
	lsls r0, r3, #6
	adds r2, r0, r7
	adds r1, r0, r6
_0801E764:
	cmp r4, #0
	blt _0801E778
	cmp r3, #0
	blt _0801E778
	cmp r4, #0x1d
	bgt _0801E778
	cmp r5, #0x13
	bgt _0801E778
	ldrh r0, [r2]
	strh r0, [r1]
_0801E778:
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #3
	blt _0801E764
	adds r0, r3, #0
	cmp r0, #1
	blt _0801E758
	movs r0, #1
	ldr r3, [sp, #8]
	str r0, [r3, #0x10]
_0801E78E:
	ldr r0, _0801E7C4 @ =0x03005C60
	ldr r4, [sp, #0x10]
	adds r0, r4, r0
	ldr r1, [r0]
	movs r0, #0x87
	lsls r0, r0, #2
	cmp r1, r0
	ble _0801E7A6
	mov r1, sl
	add r1, sb
	movs r0, #4
	strh r0, [r1]
_0801E7A6:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E7B8: .4byte 0x01000140
_0801E7BC: .4byte 0x03002E20
_0801E7C0: .4byte 0x0000080A
_0801E7C4: .4byte 0x03005C60

	thumb_func_start sub_801E7C8
sub_801E7C8: @ 0x0801E7C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x84
	ldr r0, _0801E7F8 @ =0x03002E20
	adds r0, #0x24
	mov r8, r0
	bl sub_800EDDC
	adds r7, r0, #0
	movs r0, #0
	str r0, [r7, #0x10]
	ldr r0, [r7, #4]
	cmp r0, #0x27
	bls _0801E7EE
	bl _0801FDEE
_0801E7EE:
	lsls r0, r0, #2
	ldr r1, _0801E7FC @ =_0801E800
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801E7F8: .4byte 0x03002E20
_0801E7FC: .4byte _0801E800
_0801E800: @ jump table
	.4byte _0801E8A0 @ case 0
	.4byte _0801E934 @ case 1
	.4byte _0801E9A6 @ case 2
	.4byte _0801EA3C @ case 3
	.4byte _0801EA60 @ case 4
	.4byte _0801EAEC @ case 5
	.4byte _0801EB64 @ case 6
	.4byte _0801EB88 @ case 7
	.4byte _0801EBCE @ case 8
	.4byte _0801EBE8 @ case 9
	.4byte _0801EC54 @ case 10
	.4byte _0801ED18 @ case 11
	.4byte _0801ED4C @ case 12
	.4byte _0801EE00 @ case 13
	.4byte _0801EE24 @ case 14
	.4byte _0801EE7E @ case 15
	.4byte _0801EE98 @ case 16
	.4byte _0801EF70 @ case 17
	.4byte _0801F008 @ case 18
	.4byte _0801F03C @ case 19
	.4byte _0801F064 @ case 20
	.4byte _0801F0AC @ case 21
	.4byte _0801F150 @ case 22
	.4byte _0801F218 @ case 23
	.4byte _0801F240 @ case 24
	.4byte _0801F282 @ case 25
	.4byte _0801F2A8 @ case 26
	.4byte _0801F2E4 @ case 27
	.4byte _0801F300 @ case 28
	.4byte _0801F512 @ case 29
	.4byte _0801F838 @ case 30
	.4byte _0801FD54 @ case 31
	.4byte _0801FDCC @ case 32
	.4byte _0801FC78 @ case 33
	.4byte _0801F868 @ case 34
	.4byte _0801F8A8 @ case 35
	.4byte _0801F9BE @ case 36
	.4byte _0801FB44 @ case 37
	.4byte _0801FC5E @ case 38
	.4byte _0801FDEE @ case 39
_0801E8A0:
	movs r6, #0
	b _0801E8C0
_0801E8A4:
	lsls r1, r6, #2
	ldr r0, _0801E92C @ =0x000007F4
	add r0, r8
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801E8BE
	adds r0, r6, #0
	bl sub_801E248
_0801E8BE:
	adds r6, #1
_0801E8C0:
	ldr r0, _0801E930 @ =0x000007D7
	add r0, r8
	ldrb r0, [r0]
	cmp r6, r0
	blt _0801E8A4
	movs r4, #1
	movs r1, #1
	ldr r0, _0801E930 @ =0x000007D7
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801E8F4
	movs r3, #0x20
	ldr r2, _0801E92C @ =0x000007F4
	add r2, r8
	adds r6, r0, #0
_0801E8E0:
	ldr r0, [r2]
	ldr r0, [r0, #0x48]
	ands r0, r3
	cmp r0, #0
	bne _0801E8EC
	movs r4, #0
_0801E8EC:
	adds r2, #4
	subs r6, #1
	cmp r6, #0
	bne _0801E8E0
_0801E8F4:
	ldr r0, _0801E930 @ =0x000007D7
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801E916
	adds r2, r7, #0
	adds r2, #0x14
	adds r6, r0, #0
_0801E904:
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #4
	beq _0801E90E
	movs r1, #0
_0801E90E:
	adds r2, #2
	subs r6, #1
	cmp r6, #0
	bne _0801E904
_0801E916:
	cmp r4, #1
	beq _0801E91E
	bl _0801FDEE
_0801E91E:
	cmp r1, #1
	beq _0801E926
	bl _0801FDEE
_0801E926:
	str r1, [r7, #4]
	bl _0801FDEE
	.align 2, 0
_0801E92C: .4byte 0x000007F4
_0801E930: .4byte 0x000007D7
_0801E934:
	movs r4, #0
	ldr r0, _0801E994 @ =0x000007D7
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0801E968
	ldr r2, _0801E998 @ =0x000007F4
	add r2, r8
	movs r3, #0x20
	adds r6, r0, #0
_0801E948:
	ldr r1, [r2]
	ldr r0, [r1, #0x48]
	ands r0, r3
	cmp r0, #0
	beq _0801E960
	adds r0, r1, #0
	adds r0, #0xba
	ldrh r0, [r0]
	lsrs r0, r0, #1
	cmp r0, #3
	bhi _0801E960
	movs r4, #1
_0801E960:
	adds r2, #4
	subs r6, #1
	cmp r6, #0
	bne _0801E948
_0801E968:
	ldr r0, _0801E99C @ =0x00000814
	add r0, r8
	ldr r0, [r0]
	adds r0, #0xba
	ldrh r0, [r0]
	lsrs r1, r0, #1
	movs r0, #0x10
	cmp r1, #3
	bhi _0801E982
	movs r0, #0xe
	cmp r1, #0
	beq _0801E982
	movs r0, #0xf
_0801E982:
	bl m4aSongNumStart
	movs r0, #0
	str r0, [r7, #8]
	cmp r4, #1
	bne _0801E9A0
	movs r0, #2
	bl _0801FDEC
	.align 2, 0
_0801E994: .4byte 0x000007D7
_0801E998: .4byte 0x000007F4
_0801E99C: .4byte 0x00000814
_0801E9A0:
	movs r0, #0x1b
	bl _0801FDEC
_0801E9A6:
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _0801E9FC @ =0x01000140
	mov r0, sp
	bl CpuFastSet
	movs r6, #0
	movs r0, #0xfe
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0]
	cmp r6, r0
	bge _0801EA32
	adds r5, r7, #0
	adds r5, #0x34
_0801E9CE:
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	mov r0, r8
	bl sub_804AED4
	adds r4, r0, #0
	strh r6, [r5]
	adds r0, #0x4c
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	bl sub_800EDB0
	strh r0, [r5, #2]
	ldr r0, [r4, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801EA00
	adds r0, r4, #0
	bl sub_803DAC4
	b _0801EA08
	.align 2, 0
_0801E9FC: .4byte 0x01000140
_0801EA00:
	adds r0, r4, #0
	mov r1, r8
	bl sub_803D7B8
_0801EA08:
	strh r0, [r5, #4]
	adds r2, r4, #0
	adds r2, #0xc4
	ldrb r0, [r2]
	strh r0, [r5, #6]
	ldr r0, _0801EA38 @ =_080DB0A8
	adds r3, r6, #1
	adds r0, r3, r0
	ldrb r1, [r0]
	strh r1, [r5, #8]
	ldrb r0, [r2]
	adds r0, r0, r1
	strb r0, [r2]
	adds r5, #0x10
	adds r6, r3, #0
	movs r0, #0xfe
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0]
	cmp r6, r0
	blt _0801E9CE
_0801EA32:
	movs r0, #3
	bl _0801FDEC
	.align 2, 0
_0801EA38: .4byte _080DB0A8
_0801EA3C:
	movs r0, #0
	str r0, [sp, #4]
	add r4, sp, #4
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _0801EA5C @ =0x01000140
	adds r0, r4, #0
	bl CpuFastSet
	movs r0, #4
	bl _0801FDEC
	.align 2, 0
_0801EA5C: .4byte 0x01000140
_0801EA60:
	bl sub_801DAA4
	movs r6, #0
	movs r0, #0xfe
	lsls r0, r0, #3
	add r0, r8
	ldr r5, _0801EAE0 @ =0x00000BE4
	add r5, r8
	ldrb r0, [r0]
	cmp r6, r0
	bge _0801EAA0
	adds r4, r7, #0
	adds r4, #0x34
_0801EA7A:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r3, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_801DD58
	adds r4, #0x10
	adds r6, #1
	movs r0, #0xfe
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0]
	cmp r6, r0
	blt _0801EA7A
_0801EAA0:
	movs r0, #0xf
	str r0, [r5]
	bl sub_800EDDC
	adds r3, r0, #0
	movs r2, #0
	ldr r0, _0801EAE4 @ =0x03002E20
	ldr r6, _0801EAE8 @ =0x00000814
	adds r0, r0, r6
	ldrb r1, [r0]
	cmp r2, r1
	bge _0801EAD2
	movs r5, #0x20
	adds r4, r0, #0
	movs r1, #0
	adds r0, r3, #0
	adds r0, #0x3e
_0801EAC2:
	strh r5, [r0]
	strh r1, [r0, #2]
	adds r1, #3
	adds r0, #0x10
	adds r2, #1
	ldrb r3, [r4]
	cmp r2, r3
	blt _0801EAC2
_0801EAD2:
	movs r0, #1
	str r0, [r7, #0x10]
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #5
	bl _0801FDEC
	.align 2, 0
_0801EAE0: .4byte 0x00000BE4
_0801EAE4: .4byte 0x03002E20
_0801EAE8: .4byte 0x00000814
_0801EAEC:
	bl sub_800EDDC
	adds r1, r0, #0
	movs r2, #0
	ldr r0, _0801EB10 @ =0x03002E20
	ldr r6, _0801EB14 @ =0x00000814
	adds r0, r0, r6
	ldrb r3, [r0]
	cmp r2, r3
	bge _0801EB2C
	adds r3, r0, #0
	adds r1, #0x3e
_0801EB04:
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _0801EB18
	subs r0, #1
	strh r0, [r1, #2]
	b _0801EB22
	.align 2, 0
_0801EB10: .4byte 0x03002E20
_0801EB14: .4byte 0x00000814
_0801EB18:
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801EB22
	subs r0, #1
	strh r0, [r1]
_0801EB22:
	adds r1, #0x10
	adds r2, #1
	ldrb r6, [r3]
	cmp r2, r6
	blt _0801EB04
_0801EB2C:
	bl sub_801D9D8
	movs r0, #1
	str r0, [r7, #0x10]
	ldr r0, [r7, #8]
	adds r0, #1
	str r0, [r7, #8]
	cmp r0, #0x3c
	ble _0801EB46
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #6
	str r0, [r7, #4]
_0801EB46:
	movs r1, #9
	ldr r0, _0801EB60 @ =0x03004EA0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0801EB56
	bl _0801FDEE
_0801EB56:
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #6
	bl _0801FDEC
	.align 2, 0
_0801EB60: .4byte 0x03004EA0
_0801EB64:
	movs r0, #0
	str r0, [sp, #8]
	add r4, sp, #8
	movs r1, #0
	movs r2, #3
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _0801EB84 @ =0x01000110
	adds r0, r4, #0
	bl CpuFastSet
	movs r0, #7
	bl _0801FDEC
	.align 2, 0
_0801EB84: .4byte 0x01000110
_0801EB88:
	movs r6, #0
	movs r0, #0xfe
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0]
	cmp r6, r0
	bge _0801EBC0
	adds r4, r7, #0
	adds r4, #0x34
_0801EB9A:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r3, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_801DD58
	adds r4, #0x10
	adds r6, #1
	movs r0, #0xfe
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0]
	cmp r6, r0
	blt _0801EB9A
_0801EBC0:
	movs r0, #1
	str r0, [r7, #0x10]
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #8
	bl _0801FDEC
_0801EBCE:
	ldr r0, [r7, #8]
	adds r0, #1
	str r0, [r7, #8]
	cmp r0, #0x3c
	bgt _0801EBDC
	bl _0801FDEE
_0801EBDC:
	movs r0, #0
	str r0, [r7, #0xc]
	str r0, [r7, #8]
	movs r0, #9
	bl _0801FDEC
_0801EBE8:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r0, #2
	ble _0801EC36
	movs r1, #0
	str r1, [r7, #0xc]
	ldr r0, [r7, #8]
	adds r0, #1
	str r0, [r7, #8]
	cmp r0, #4
	bgt _0801EC30
	movs r5, #0
	movs r6, #0
_0801EC04:
	ldr r1, [r7, #8]
	adds r1, #0x14
	adds r4, r5, #3
	movs r0, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	strh r6, [r0]
	ldr r0, [r7, #8]
	movs r1, #0x1d
	subs r1, r1, r0
	movs r0, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	strh r6, [r0]
	adds r5, #1
	cmp r5, #0xf
	ble _0801EC04
	movs r0, #1
	str r0, [r7, #0x10]
	b _0801EC36
_0801EC30:
	str r1, [r7, #8]
	movs r0, #0xa
	str r0, [r7, #4]
_0801EC36:
	movs r1, #9
	ldr r0, _0801EC50 @ =0x03004EA0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0801EC46
	bl _0801FDEE
_0801EC46:
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #0xd
	bl _0801FDEC
	.align 2, 0
_0801EC50: .4byte 0x03004EA0
_0801EC54:
	movs r6, #0
	movs r0, #0xfe
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0]
	cmp r6, r0
	bge _0801EC8C
	adds r4, r7, #0
	adds r4, #0x34
_0801EC66:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r3, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #1
	bl sub_801DD58
	adds r4, #0x10
	adds r6, #1
	movs r0, #0xfe
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0]
	cmp r6, r0
	blt _0801EC66
_0801EC8C:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r0, #2
	ble _0801ECF8
	movs r1, #0
	str r1, [r7, #0xc]
	ldr r0, [r7, #8]
	adds r0, #1
	str r0, [r7, #8]
	cmp r0, #3
	bgt _0801ECF2
	movs r2, #0
	movs r0, #4
	mov sb, r0
_0801ECAA:
	movs r4, #0
	ldr r0, [r7, #8]
	mov r1, sb
	subs r0, r1, r0
	adds r3, r2, #1
	mov r8, r3
	cmp r4, r0
	bge _0801ECE6
	adds r5, r2, #3
	movs r6, #0
_0801ECBE:
	adds r1, r4, #0
	adds r1, #0x14
	movs r0, #0
	adds r2, r5, #0
	bl map_getBufferPtr2d
	strh r6, [r0]
	movs r1, #0x1d
	subs r1, r1, r4
	movs r0, #0
	adds r2, r5, #0
	bl map_getBufferPtr2d
	strh r6, [r0]
	adds r4, #1
	ldr r0, [r7, #8]
	mov r1, sb
	subs r0, r1, r0
	cmp r4, r0
	blt _0801ECBE
_0801ECE6:
	mov r2, r8
	cmp r2, #0xf
	ble _0801ECAA
	movs r0, #1
	str r0, [r7, #0x10]
	b _0801ECF8
_0801ECF2:
	str r1, [r7, #8]
	movs r0, #0xb
	str r0, [r7, #4]
_0801ECF8:
	movs r1, #9
	ldr r0, _0801ED14 @ =0x03004EA0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0801ED08
	bl _0801FDEE
_0801ED08:
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #0xd
	bl _0801FDEC
	.align 2, 0
_0801ED14: .4byte 0x03004EA0
_0801ED18:
	ldr r0, [r7, #8]
	adds r0, #1
	str r0, [r7, #8]
	cmp r0, #0x1e
	ble _0801ED2C
	movs r0, #0
	str r0, [r7, #0xc]
	str r0, [r7, #8]
	movs r0, #0xc
	str r0, [r7, #4]
_0801ED2C:
	movs r1, #9
	ldr r0, _0801ED48 @ =0x03004EA0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0801ED3C
	bl _0801FDEE
_0801ED3C:
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #0xd
	bl _0801FDEC
	.align 2, 0
_0801ED48: .4byte 0x03004EA0
_0801ED4C:
	movs r3, #0xfe
	lsls r3, r3, #3
	add r3, r8
	ldrb r2, [r3]
	subs r0, r2, #1
	ldr r1, [r7, #8]
	cmp r1, r0
	bgt _0801EDD8
	adds r1, #1
	subs r0, r2, r1
	lsls r0, r0, #4
	adds r0, #0x34
	adds r5, r7, r0
	movs r2, #8
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _0801ED74
	str r1, [r7, #8]
	str r0, [r7, #0xc]
	b _0801EDE0
_0801ED74:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r0, #3
	bne _0801EDE0
	ldrh r0, [r5, #8]
	subs r0, #1
	strh r0, [r5, #8]
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
	ldr r4, [r7, #8]
	mvns r4, r4
	ldrb r3, [r3]
	adds r4, r4, r3
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl sub_801DD58
	movs r0, #1
	str r0, [r7, #0x10]
	ldr r0, _0801EDD4 @ =0x00000814
	add r0, r8
	ldr r0, [r0]
	adds r0, #0x4c
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	bl sub_800EDB0
	movs r3, #2
	ldrsh r1, [r5, r3]
	cmp r1, r0
	bne _0801EDCC
	movs r0, #0x65
	bl m4aSongNumStart
_0801EDCC:
	movs r0, #0
	str r0, [r7, #0xc]
	b _0801EDE0
	.align 2, 0
_0801EDD4: .4byte 0x00000814
_0801EDD8:
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #0xd
	str r0, [r7, #4]
_0801EDE0:
	movs r1, #9
	ldr r0, _0801EDFC @ =0x03004EA0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0801EDF0
	bl _0801FDEE
_0801EDF0:
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #0xd
	bl _0801FDEC
	.align 2, 0
_0801EDFC: .4byte 0x03004EA0
_0801EE00:
	movs r0, #0
	str r0, [sp, #0xc]
	add r4, sp, #0xc
	movs r1, #0
	movs r2, #3
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _0801EE20 @ =0x01000110
	adds r0, r4, #0
	bl CpuFastSet
	movs r0, #0xe
	bl _0801FDEC
	.align 2, 0
_0801EE20: .4byte 0x01000110
_0801EE24:
	movs r6, #0
	movs r0, #0xfe
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0]
	cmp r6, r0
	bge _0801EE70
	mov sb, r6
	adds r4, r7, #0
	adds r4, #0x3a
	adds r5, r7, #0
	adds r5, #0x34
_0801EE3C:
	ldrh r0, [r4, #2]
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	mov r2, sb
	strh r2, [r4, #2]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r3, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #1
	bl sub_801DD58
	adds r4, #0x10
	adds r5, #0x10
	adds r6, #1
	movs r0, #0xfe
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0]
	cmp r6, r0
	blt _0801EE3C
_0801EE70:
	movs r0, #1
	str r0, [r7, #0x10]
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #0xf
	bl _0801FDEC
_0801EE7E:
	ldr r0, [r7, #8]
	adds r0, #1
	str r0, [r7, #8]
	cmp r0, #0x3c
	bgt _0801EE8C
	bl _0801FDEE
_0801EE8C:
	movs r0, #0
	str r0, [r7, #0xc]
	str r0, [r7, #8]
	movs r0, #0x10
	bl _0801FDEC
_0801EE98:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r0, #2
	ble _0801EF48
	movs r6, #0
	str r6, [r7, #0xc]
	ldr r2, [r7, #8]
	cmp r2, #0xd
	bgt _0801EF20
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _0801EEF8
	adds r2, #3
	movs r0, #0
	movs r1, #0
	bl map_getBufferPtr2d
	adds r4, r0, #0
	ldr r2, [r7, #8]
	adds r2, #4
	movs r0, #0
	movs r1, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuFastSet
	str r6, [sp, #0x10]
	add r4, sp, #0x10
	ldr r2, [r7, #8]
	adds r2, #3
	movs r0, #0
	movs r1, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _0801EEF4 @ =0x01000010
	adds r0, r4, #0
	bl CpuFastSet
	b _0801EF10
	.align 2, 0
_0801EEF4: .4byte 0x01000010
_0801EEF8:
	str r6, [sp, #0x10]
	add r4, sp, #0x10
	adds r2, #3
	movs r0, #0
	movs r1, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _0801EF1C @ =0x01000010
	adds r0, r4, #0
	bl CpuFastSet
_0801EF10:
	movs r0, #1
	str r0, [r7, #0x10]
	ldr r0, [r7, #8]
	adds r0, #1
	str r0, [r7, #8]
	b _0801EF48
	.align 2, 0
_0801EF1C: .4byte 0x01000010
_0801EF20:
	bl dmaq_getVBlankDmaQueue
	adds r4, r0, #0
	ldr r5, _0801EF64 @ =0x06003800
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r2, r0, #0
	ldr r3, _0801EF68 @ =0x80000280
	adds r0, r4, #0
	adds r1, r5, #0
	bl dmaq_enqueue
	str r6, [r7, #8]
	movs r0, #3
	str r0, [r7, #0xc]
	movs r0, #0x11
	str r0, [r7, #4]
_0801EF48:
	movs r1, #9
	ldr r0, _0801EF6C @ =0x03004EA0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0801EF58
	bl _0801FDEE
_0801EF58:
	movs r0, #0
	str r0, [r7, #0xc]
	str r0, [r7, #8]
	movs r0, #0x17
	bl _0801FDEC
	.align 2, 0
_0801EF64: .4byte 0x06003800
_0801EF68: .4byte 0x80000280
_0801EF6C: .4byte 0x03004EA0
_0801EF70:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r0, #2
	ble _0801EFE8
	movs r1, #0
	str r1, [r7, #0xc]
	ldr r0, [r7, #8]
	adds r0, #1
	str r0, [r7, #8]
	cmp r0, #5
	bgt _0801EFE2
	mov sb, r0
	movs r0, #1
	movs r2, #0
	bl map_getBufferPtr2d
	mov r8, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r6, r0, #0
	movs r1, #0
_0801EFA2:
	movs r4, #0
	adds r0, r1, #0
	adds r0, #0x10
	adds r5, r1, #1
	mov r1, sb
	adds r3, r0, r1
	lsls r0, r0, #6
	mov r1, r8
	adds r2, r0, r1
	lsls r0, r3, #6
	adds r1, r0, r6
_0801EFB8:
	cmp r4, #0
	blt _0801EFCC
	cmp r3, #0
	blt _0801EFCC
	cmp r4, #0x1d
	bgt _0801EFCC
	cmp r3, #0x13
	bgt _0801EFCC
	ldrh r0, [r2]
	strh r0, [r1]
_0801EFCC:
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #0x1e
	blt _0801EFB8
	adds r1, r5, #0
	cmp r1, #4
	blt _0801EFA2
	movs r0, #1
	str r0, [r7, #0x10]
	b _0801EFE8
_0801EFE2:
	str r1, [r7, #8]
	movs r0, #0x12
	str r0, [r7, #4]
_0801EFE8:
	movs r1, #9
	ldr r0, _0801F004 @ =0x03004EA0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0801EFF8
	bl _0801FDEE
_0801EFF8:
	movs r0, #0
	str r0, [r7, #0xc]
	str r0, [r7, #8]
	movs r0, #0x17
	bl _0801FDEC
	.align 2, 0
_0801F004: .4byte 0x03004EA0
_0801F008:
	ldr r0, [r7, #8]
	adds r1, r0, #0
	adds r0, #1
	str r0, [r7, #8]
	cmp r1, #0xf
	ble _0801F01C
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #0x13
	str r0, [r7, #4]
_0801F01C:
	movs r1, #9
	ldr r0, _0801F038 @ =0x03004EA0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0801F02C
	bl _0801FDEE
_0801F02C:
	movs r0, #0
	str r0, [r7, #0xc]
	str r0, [r7, #8]
	movs r0, #0x17
	bl _0801FDEC
	.align 2, 0
_0801F038: .4byte 0x03004EA0
_0801F03C:
	bl sub_801E0B8
	movs r0, #0
	str r0, [sp, #0x10]
	add r4, sp, #0x10
	movs r0, #1
	movs r1, #0
	movs r2, #3
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _0801F060 @ =0x01000110
	adds r0, r4, #0
	bl CpuFastSet
	movs r0, #0x14
	bl _0801FDEC
	.align 2, 0
_0801F060: .4byte 0x01000110
_0801F064:
	movs r6, #0
	movs r0, #0xfe
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0]
	cmp r6, r0
	bge _0801F09C
	adds r4, r7, #0
	adds r4, #0x34
_0801F076:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r3, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #2
	bl sub_801DD58
	adds r4, #0x10
	adds r6, #1
	movs r0, #0xfe
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0]
	cmp r6, r0
	blt _0801F076
_0801F09C:
	movs r0, #1
	str r0, [r7, #0x10]
	movs r0, #0
	str r0, [r7, #0xc]
	str r0, [r7, #8]
	movs r0, #0x15
	bl _0801FDEC
_0801F0AC:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r0, #2
	ble _0801F130
	movs r0, #0
	str r0, [r7, #0xc]
	ldr r0, [r7, #8]
	adds r1, r0, #1
	str r1, [r7, #8]
	cmp r1, #5
	bgt _0801F124
	movs r0, #5
	subs r0, r0, r1
	mov sb, r0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov r8, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r6, r0, #0
	movs r1, #0
_0801F0E4:
	movs r4, #0
	adds r0, r1, #0
	adds r0, #0x11
	adds r5, r1, #1
	mov r2, sb
	adds r3, r0, r2
	lsls r0, r0, #6
	mov r1, r8
	adds r2, r0, r1
	lsls r0, r3, #6
	adds r1, r0, r6
_0801F0FA:
	cmp r4, #0
	blt _0801F10E
	cmp r3, #0
	blt _0801F10E
	cmp r4, #0x1d
	bgt _0801F10E
	cmp r3, #0x13
	bgt _0801F10E
	ldrh r0, [r2]
	strh r0, [r1]
_0801F10E:
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #0x1e
	blt _0801F0FA
	adds r1, r5, #0
	cmp r1, #3
	blt _0801F0E4
	movs r0, #1
	str r0, [r7, #0x10]
	b _0801F130
_0801F124:
	movs r0, #4
	str r0, [r7, #8]
	movs r0, #3
	str r0, [r7, #0xc]
	movs r0, #0x16
	str r0, [r7, #4]
_0801F130:
	movs r1, #9
	ldr r0, _0801F14C @ =0x03004EA0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0801F140
	bl _0801FDEE
_0801F140:
	movs r0, #0
	str r0, [r7, #0xc]
	str r0, [r7, #8]
	movs r0, #0x17
	bl _0801FDEC
	.align 2, 0
_0801F14C: .4byte 0x03004EA0
_0801F150:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r0, #2
	ble _0801F1F6
	movs r0, #0
	str r0, [r7, #0xc]
	ldr r1, [r7, #8]
	cmp r1, #0x11
	bgt _0801F1EE
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801F194
	movs r2, #0x13
	subs r2, r2, r1
	movs r0, #1
	movs r1, #0
	bl map_getBufferPtr2d
	adds r4, r0, #0
	ldr r0, [r7, #8]
	movs r2, #0x14
	subs r2, r2, r0
	movs r0, #0
	movs r1, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuFastSet
	b _0801F1E2
_0801F194:
	movs r4, #0x14
	subs r2, r4, r1
	movs r0, #1
	movs r1, #0
	bl map_getBufferPtr2d
	adds r5, r0, #0
	ldr r0, [r7, #8]
	subs r4, r4, r0
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0x10
	bl CpuFastSet
	ldr r2, [r7, #8]
	movs r4, #0x15
	subs r2, r4, r2
	movs r0, #1
	movs r1, #0
	bl map_getBufferPtr2d
	adds r5, r0, #0
	ldr r0, [r7, #8]
	subs r4, r4, r0
	movs r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0x10
	bl CpuFastSet
_0801F1E2:
	movs r0, #1
	str r0, [r7, #0x10]
	ldr r0, [r7, #8]
	adds r0, #1
	str r0, [r7, #8]
	b _0801F1F6
_0801F1EE:
	str r0, [r7, #0xc]
	str r0, [r7, #8]
	movs r0, #0x17
	str r0, [r7, #4]
_0801F1F6:
	movs r1, #9
	ldr r0, _0801F214 @ =0x03004EA0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0801F206
	bl _0801FDEE
_0801F206:
	movs r0, #0
	str r0, [r7, #0xc]
	str r0, [r7, #8]
	movs r0, #0x17
	bl _0801FDEC
	.align 2, 0
_0801F214: .4byte 0x03004EA0
_0801F218:
	bl sub_801E0B8
	movs r0, #0
	str r0, [sp, #0x14]
	add r4, sp, #0x14
	movs r1, #0
	movs r2, #3
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _0801F23C @ =0x01000110
	adds r0, r4, #0
	bl CpuFastSet
	movs r0, #0x18
	bl _0801FDEC
	.align 2, 0
_0801F23C: .4byte 0x01000110
_0801F240:
	movs r6, #0
	movs r0, #0xfe
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0]
	cmp r6, r0
	bge _0801F278
	adds r4, r7, #0
	adds r4, #0x34
_0801F252:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r3, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #2
	bl sub_801DD58
	adds r4, #0x10
	adds r6, #1
	movs r0, #0xfe
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0]
	cmp r6, r0
	blt _0801F252
_0801F278:
	movs r0, #1
	str r0, [r7, #0x10]
	movs r0, #0x19
	bl _0801FDEC
_0801F282:
	movs r1, #9
	ldr r0, _0801F2A4 @ =0x03004EA0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0801F292
	bl _0801FDEE
_0801F292:
	movs r0, #0x8f
	bl m4aSongNumStart
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #0x1a
	bl _0801FDEC
	.align 2, 0
_0801F2A4: .4byte 0x03004EA0
_0801F2A8:
	bl sub_805CD50
	ldr r0, _0801F2C4 @ =0x000007DD
	add r0, r8
	ldrb r0, [r0]
	bl track_getCupIndex
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bgt _0801F2C8
	movs r1, #8
	b _0801F2CA
	.align 2, 0
_0801F2C4: .4byte 0x000007DD
_0801F2C8:
	movs r1, #7
_0801F2CA:
	movs r0, #0xfd
	lsls r0, r0, #3
	add r0, r8
	strb r1, [r0]
	ldr r0, _0801F2E0 @ =0x03005C50
	movs r1, #1
	str r1, [r0]
	movs r0, #0x27
	bl _0801FDEC
	.align 2, 0
_0801F2E0: .4byte 0x03005C50
_0801F2E4:
	bl sub_801DC7C
	movs r0, #0
	str r0, [r7, #8]
	bl sub_8002C3C
	cmp r0, #0
	beq _0801F2FA
	movs r0, #0x1c
	bl _0801FDEC
_0801F2FA:
	movs r0, #0x1f
	bl _0801FDEC
_0801F300:
	movs r0, #0
	str r0, [sp, #0x18]
	add r4, sp, #0x18
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _0801F490 @ =0x01000140
	adds r0, r4, #0
	bl CpuFastSet
	movs r0, #0
	bl sub_801D2A4
	bl sub_801D33C
	bl sub_801D3D0
	ldr r0, _0801F494 @ =0x03002E20
	ldr r2, _0801F498 @ =0x0000080A
	adds r0, r0, r2
	ldrh r0, [r0]
	lsrs r2, r0, #8
	movs r0, #0xf
	ands r2, r0
	movs r1, #1
	cmp r2, #3
	ble _0801F33C
	movs r1, #2
_0801F33C:
	movs r3, #2
	mov r8, r3
	cmp r2, #3
	ble _0801F348
	movs r6, #1
	mov r8, r6
_0801F348:
	movs r5, #0
	adds r6, r2, #1
	cmp r5, r6
	bge _0801F364
	adds r4, r1, #0
_0801F352:
	movs r0, #9
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_8022004
	add r4, r8
	adds r5, #1
	cmp r5, r6
	blt _0801F352
_0801F364:
	movs r0, #9
	movs r1, #8
	movs r2, #1
	bl sub_8022264
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov r8, r0
	movs r0, #0
_0801F388:
	movs r1, #0
	adds r4, r0, #0
	adds r4, #0x10
	adds r0, #1
	mov sl, r0
	adds r3, r4, #0
	lsls r5, r3, #5
_0801F396:
	adds r2, r1, #1
	cmp r2, #0
	blt _0801F3B6
	cmp r4, #0
	blt _0801F3B6
	cmp r2, #0x1d
	bgt _0801F3B6
	cmp r3, #0x13
	bgt _0801F3B6
	adds r0, r5, r2
	lsls r0, r0, #1
	mov r6, r8
	adds r1, r0, r6
	add r0, sb
	ldrh r0, [r0]
	strh r0, [r1]
_0801F3B6:
	adds r1, r2, #0
	cmp r1, #5
	blt _0801F396
	mov r0, sl
	cmp r0, #3
	blt _0801F388
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r6, r0, #0
	movs r0, #0
	ldr r1, [r7, #8]
	mov r8, r1
_0801F3E0:
	movs r4, #0
	adds r3, r0, #1
	adds r5, r3, #0
	lsls r0, r3, #6
	mov r1, sb
	adds r2, r0, r1
	adds r1, r0, r6
_0801F3EE:
	cmp r4, #0
	blt _0801F402
	cmp r3, #0
	blt _0801F402
	cmp r4, #0x1d
	bgt _0801F402
	cmp r5, #0x13
	bgt _0801F402
	ldrh r0, [r2]
	strh r0, [r1]
_0801F402:
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #3
	blt _0801F3EE
	adds r0, r3, #0
	cmp r0, #1
	blt _0801F3E0
	mov r2, r8
	cmp r2, #4
	bgt _0801F508
	mov r0, r8
	adds r0, #1
	str r0, [r7, #8]
	mov r8, r0
	mov sb, r8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x40]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x44]
	mov r3, r8
	cmp r3, #0
	bge _0801F44A
	movs r6, #0
	mov sb, r6
	cmp r3, #0
	bge _0801F44A
	mov r8, r6
_0801F44A:
	mov r0, sb
	cmp r0, #5
	ble _0801F454
	movs r1, #5
	mov sb, r1
_0801F454:
	mov r2, r8
	cmp r2, #3
	ble _0801F45E
	movs r3, #3
	mov r8, r3
_0801F45E:
	movs r5, #0
	mov r6, r8
	lsls r0, r6, #1
	cmp r5, r0
	blt _0801F46A
	b _0801FC4E
_0801F46A:
	mov r1, sb
	lsls r1, r1, #1
	str r1, [sp, #0x5c]
	mov sl, r0
_0801F472:
	movs r4, #0
	adds r2, r5, #1
	str r2, [sp, #0x68]
	ldr r3, [sp, #0x5c]
	cmp r4, r3
	bge _0801F500
	str r3, [sp, #0x7c]
	mov r6, sl
	subs r6, r5, r6
	mov ip, r6
_0801F486:
	cmp r4, sb
	bge _0801F49C
	adds r3, r4, #0
	adds r3, #0xa
	b _0801F4A4
	.align 2, 0
_0801F490: .4byte 0x01000140
_0801F494: .4byte 0x03002E20
_0801F498: .4byte 0x0000080A
_0801F49C:
	ldr r1, [sp, #0x7c]
	subs r0, r4, r1
	adds r3, r0, #0
	adds r3, #0x14
_0801F4A4:
	mov r1, ip
	adds r1, #0x14
	cmp r5, r8
	bge _0801F4B0
	adds r1, r5, #0
	adds r1, #0xe
_0801F4B0:
	cmp r3, #0
	blt _0801F4F8
	cmp r1, #0
	blt _0801F4F8
	cmp r3, #0x1d
	bgt _0801F4F8
	cmp r1, #0x13
	bgt _0801F4F8
	movs r2, #0xf
	mov r6, sb
	subs r0, r2, r6
	adds r2, r0, r4
	mov r6, r8
	movs r0, #0x11
	subs r6, r0, r6
	adds r0, r6, r5
	cmp r2, #0
	blt _0801F4F8
	cmp r0, #0
	blt _0801F4F8
	cmp r2, #0x1d
	bgt _0801F4F8
	cmp r0, #0x13
	bgt _0801F4F8
	lsls r0, r0, #5
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r2, [sp, #0x44]
	adds r0, r0, r2
	lsls r1, r1, #5
	adds r1, r1, r3
	lsls r1, r1, #1
	ldr r3, [sp, #0x40]
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r0]
_0801F4F8:
	adds r4, #1
	ldr r6, [sp, #0x7c]
	cmp r4, r6
	blt _0801F486
_0801F500:
	ldr r5, [sp, #0x68]
	cmp r5, sl
	blt _0801F472
	b _0801FC4E
_0801F508:
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #0x1d
	bl _0801FDEC
_0801F512:
	movs r0, #0
	str r0, [sp, #0x1c]
	add r4, sp, #0x1c
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _0801F6A4 @ =0x01000140
	adds r0, r4, #0
	bl CpuFastSet
	movs r0, #0
	bl sub_801D2A4
	bl sub_801D33C
	bl sub_801D3D0
	ldr r0, _0801F6A8 @ =0x03002E20
	ldr r1, _0801F6AC @ =0x0000080A
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r2, r0, #8
	movs r0, #0xf
	ands r2, r0
	movs r1, #1
	cmp r2, #3
	ble _0801F54E
	movs r1, #2
_0801F54E:
	movs r3, #2
	mov r8, r3
	cmp r2, #3
	ble _0801F55A
	movs r6, #1
	mov r8, r6
_0801F55A:
	movs r5, #0
	adds r6, r2, #1
	cmp r5, r6
	bge _0801F576
	adds r4, r1, #0
_0801F564:
	movs r0, #9
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_8022004
	add r4, r8
	adds r5, #1
	cmp r5, r6
	blt _0801F564
_0801F576:
	movs r0, #9
	movs r1, #8
	movs r2, #1
	bl sub_8022264
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov r8, r0
	movs r0, #0
_0801F59A:
	movs r3, #0
	adds r5, r0, #0
	adds r5, #0xe
	adds r0, #1
	mov sl, r0
	adds r4, r5, #0
	lsls r0, r4, #5
	adds r0, #0xa
	lsls r0, r0, #1
	mov r1, sb
	adds r2, r0, r1
	mov r6, r8
	adds r1, r0, r6
_0801F5B4:
	adds r0, r3, #0
	adds r0, #0xa
	cmp r0, #0
	blt _0801F5CC
	cmp r5, #0
	blt _0801F5CC
	cmp r0, #0x1d
	bgt _0801F5CC
	cmp r4, #0x13
	bgt _0801F5CC
	ldrh r0, [r2]
	strh r0, [r1]
_0801F5CC:
	adds r2, #2
	adds r1, #2
	adds r3, #1
	cmp r3, #0xa
	blt _0801F5B4
	mov r0, sl
	cmp r0, #6
	blt _0801F59A
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov r8, r0
	movs r0, #0
_0801F5F6:
	movs r1, #0
	adds r4, r0, #0
	adds r4, #0x10
	adds r0, #1
	mov sl, r0
	adds r3, r4, #0
	lsls r5, r3, #5
_0801F604:
	adds r2, r1, #1
	cmp r2, #0
	blt _0801F624
	cmp r4, #0
	blt _0801F624
	cmp r2, #0x1d
	bgt _0801F624
	cmp r3, #0x13
	bgt _0801F624
	adds r0, r5, r2
	lsls r0, r0, #1
	mov r6, r8
	adds r1, r0, r6
	add r0, sb
	ldrh r0, [r0]
	strh r0, [r1]
_0801F624:
	adds r1, r2, #0
	cmp r1, #5
	blt _0801F604
	mov r0, sl
	cmp r0, #3
	blt _0801F5F6
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov r8, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r6, r0, #0
	movs r0, #0
	ldr r1, [r7]
	mov sb, r1
_0801F64E:
	movs r4, #0
	adds r3, r0, #1
	adds r5, r3, #0
	lsls r0, r3, #6
	mov r1, r8
	adds r2, r0, r1
	adds r1, r0, r6
_0801F65C:
	cmp r4, #0
	blt _0801F670
	cmp r3, #0
	blt _0801F670
	cmp r4, #0x1d
	bgt _0801F670
	cmp r5, #0x13
	bgt _0801F670
	ldrh r0, [r2]
	strh r0, [r1]
_0801F670:
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #3
	blt _0801F65C
	adds r0, r3, #0
	cmp r0, #1
	blt _0801F64E
	movs r0, #1
	str r0, [r7, #0x10]
	movs r2, #0
	str r2, [sp, #0x48]
	bl sub_802DC88
	cmp r0, #0
	beq _0801F698
	bl sub_802DCB4
	cmp r0, #0
	bne _0801F69C
_0801F698:
	movs r3, #1
	str r3, [sp, #0x48]
_0801F69C:
	movs r6, #0
	mov r8, r6
	b _0801F700
	.align 2, 0
_0801F6A4: .4byte 0x01000140
_0801F6A8: .4byte 0x03002E20
_0801F6AC: .4byte 0x0000080A
_0801F6B0:
	mov r0, r8
	lsls r6, r0, #1
	movs r5, #0x1b
	subs r5, r5, r6
	movs r0, #0
	adds r1, r5, #0
	movs r2, #0x12
	bl map_getBufferPtr2d
	ldr r2, _0801F818 @ =0x0000B0A0
	adds r1, r2, #0
	strh r1, [r0]
	movs r4, #0x1c
	subs r4, r4, r6
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0x12
	bl map_getBufferPtr2d
	ldr r3, _0801F81C @ =0x0000B0A1
	adds r1, r3, #0
	strh r1, [r0]
	movs r0, #0
	adds r1, r5, #0
	movs r2, #0x13
	bl map_getBufferPtr2d
	ldr r6, _0801F820 @ =0x0000B0A2
	adds r1, r6, #0
	strh r1, [r0]
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0x13
	bl map_getBufferPtr2d
	ldr r2, _0801F824 @ =0x0000B0A3
	adds r1, r2, #0
	strh r1, [r0]
	movs r3, #1
	add r8, r3
_0801F700:
	bl sub_8002C3C
	cmp r8, r0
	blt _0801F6B0
	ldr r6, [sp, #0x48]
	cmp r6, #0
	beq _0801F784
	ldr r2, [r7]
	lsls r2, r2, #1
	adds r2, #0xf
	movs r0, #0
	movs r1, #0xb
	bl map_getBufferPtr2d
	ldr r2, _0801F828 @ =0x0000F103
	adds r1, r2, #0
	strh r1, [r0]
	ldr r2, [r7]
	lsls r2, r2, #1
	adds r2, #0x10
	movs r0, #0
	movs r1, #0xb
	bl map_getBufferPtr2d
	ldr r3, _0801F82C @ =0x0000F903
	adds r1, r3, #0
	strh r1, [r0]
	movs r1, #0
_0801F738:
	movs r6, #0
	adds r0, r1, #1
	mov r8, r0
	adds r5, r1, #0
	adds r5, #0xc
_0801F742:
	ldr r2, [r7]
	lsls r2, r2, #1
	adds r4, r6, #0
	adds r4, #0xf
	adds r2, r2, r4
	movs r0, #0
	adds r1, r5, #0
	bl map_getBufferPtr2d
	ldrh r1, [r0]
	ldr r3, _0801F830 @ =0x00000FFF
	adds r2, r3, #0
	ands r1, r2
	strh r1, [r0]
	ldr r2, [r7]
	lsls r2, r2, #1
	adds r2, r2, r4
	movs r0, #0
	adds r1, r5, #0
	bl map_getBufferPtr2d
	ldrh r1, [r0]
	movs r3, #0xe0
	lsls r3, r3, #8
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	adds r6, #1
	cmp r6, #1
	ble _0801F742
	mov r1, r8
	cmp r1, #6
	ble _0801F738
_0801F784:
	movs r1, #0xc0
	ldr r0, _0801F834 @ =0x03004EA0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0801F798
	ldr r1, [r7]
	movs r0, #1
	subs r0, r0, r1
	str r0, [r7]
_0801F798:
	ldr r0, [r7]
	cmp sb, r0
	beq _0801F804
	mov r6, sb
	lsls r5, r6, #1
	adds r2, r5, #0
	adds r2, #0xf
	movs r0, #0
	movs r1, #0xb
	bl map_getBufferPtr2d
	movs r4, #0
	strh r4, [r0]
	adds r2, r5, #0
	adds r2, #0x10
	movs r0, #0
	movs r1, #0xb
	bl map_getBufferPtr2d
	strh r4, [r0]
	movs r0, #0
	mov sl, r5
	movs r1, #0xf0
	lsls r1, r1, #8
	mov sb, r1
_0801F7CA:
	adds r6, r0, #0
	adds r6, #0xc
	adds r0, #1
	mov r8, r0
	mov r4, sl
	adds r4, #0xf
	movs r5, #1
_0801F7D8:
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldrh r1, [r0]
	mov r2, sb
	orrs r1, r2
	strh r1, [r0]
	adds r4, #1
	subs r5, #1
	cmp r5, #0
	bge _0801F7D8
	mov r0, r8
	cmp r0, #6
	ble _0801F7CA
	ldr r3, [sp, #0x48]
	cmp r3, #0
	beq _0801F804
	movs r0, #0x8d
	bl m4aSongNumStart
_0801F804:
	movs r1, #9
	ldr r0, _0801F834 @ =0x03004EA0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0801F812
	b _0801FDEE
_0801F812:
	movs r0, #0x1e
	b _0801FDEC
	.align 2, 0
_0801F818: .4byte 0x0000B0A0
_0801F81C: .4byte 0x0000B0A1
_0801F820: .4byte 0x0000B0A2
_0801F824: .4byte 0x0000B0A3
_0801F828: .4byte 0x0000F103
_0801F82C: .4byte 0x0000F903
_0801F830: .4byte 0x00000FFF
_0801F834: .4byte 0x03004EA0
_0801F838:
	ldr r4, [r7]
	cmp r4, #0
	beq _0801F844
	cmp r4, #1
	beq _0801F85E
	b _0801FDEE
_0801F844:
	movs r0, #0x8f
	bl m4aSongNumStart
	bl sub_8002C54
	movs r0, #1
	movs r1, #0xfd
	lsls r1, r1, #3
	add r1, r8
	strb r0, [r1]
	str r4, [r7, #8]
	movs r0, #0x21
	b _0801FDEC
_0801F85E:
	movs r0, #0x8e
	bl m4aSongNumStart
	movs r0, #0x22
	b _0801FDEC
_0801F868:
	bl sub_801D3D0
	movs r0, #1
	str r0, [r7, #0x10]
	movs r4, #0
	bl sub_802DC88
	cmp r0, #0
	beq _0801F882
	bl sub_802DCB4
	cmp r0, #0
	bne _0801F884
_0801F882:
	movs r4, #1
_0801F884:
	cmp r4, #0
	beq _0801F89C
	ldr r4, _0801F8A4 @ =_080DB348
	movs r0, #1
	movs r1, #9
	movs r2, #0xe
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_804F6F4
_0801F89C:
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #0x23
	b _0801FDEC
	.align 2, 0
_0801F8A4: .4byte _080DB348
_0801F8A8:
	bl sub_801D3D0
	movs r1, #1
	str r1, [r7, #0x10]
	ldr r0, [r7, #8]
	cmp r0, #5
	bgt _0801F9B4
	movs r4, #0
	bl sub_802DC88
	cmp r0, #0
	beq _0801F8C8
	bl sub_802DCB4
	cmp r0, #0
	bne _0801F8CA
_0801F8C8:
	movs r4, #1
_0801F8CA:
	ldr r0, [r7, #8]
	adds r0, #1
	str r0, [r7, #8]
	cmp r4, #0
	bne _0801F8D6
	b _0801FDEE
_0801F8D6:
	mov r8, r0
	mov sb, r8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x4c]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x50]
	mov r6, r8
	cmp r6, #0
	bge _0801F902
	movs r0, #0
	mov sb, r0
	cmp r6, #0
	bge _0801F902
	mov r8, r0
_0801F902:
	mov r1, sb
	cmp r1, #6
	ble _0801F90C
	movs r2, #6
	mov sb, r2
_0801F90C:
	mov r3, r8
	cmp r3, #3
	ble _0801F916
	movs r6, #3
	mov r8, r6
_0801F916:
	movs r5, #0
	mov r1, r8
	lsls r0, r1, #1
	cmp r5, r0
	blt _0801F922
	b _0801FC4E
_0801F922:
	mov r2, sb
	lsls r2, r2, #1
	str r2, [sp, #0x60]
	mov sl, r0
_0801F92A:
	movs r4, #0
	adds r3, r5, #1
	str r3, [sp, #0x70]
	ldr r6, [sp, #0x60]
	cmp r4, r6
	bge _0801F9AC
	str r6, [sp, #0x7c]
	mov r0, sl
	subs r0, r5, r0
	mov ip, r0
_0801F93E:
	cmp r4, sb
	bge _0801F948
	adds r3, r4, #0
	adds r3, #9
	b _0801F950
_0801F948:
	ldr r1, [sp, #0x7c]
	subs r0, r4, r1
	adds r3, r0, #0
	adds r3, #0x15
_0801F950:
	mov r1, ip
	adds r1, #0x14
	cmp r5, r8
	bge _0801F95C
	adds r1, r5, #0
	adds r1, #0xe
_0801F95C:
	cmp r3, #0
	blt _0801F9A4
	cmp r1, #0
	blt _0801F9A4
	cmp r3, #0x1d
	bgt _0801F9A4
	cmp r1, #0x13
	bgt _0801F9A4
	movs r2, #0xf
	mov r6, sb
	subs r0, r2, r6
	adds r2, r0, r4
	mov r6, r8
	movs r0, #0x11
	subs r6, r0, r6
	adds r0, r6, r5
	cmp r2, #0
	blt _0801F9A4
	cmp r0, #0
	blt _0801F9A4
	cmp r2, #0x1d
	bgt _0801F9A4
	cmp r0, #0x13
	bgt _0801F9A4
	lsls r0, r0, #5
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r2, [sp, #0x50]
	adds r0, r0, r2
	lsls r1, r1, #5
	adds r1, r1, r3
	lsls r1, r1, #1
	ldr r3, [sp, #0x4c]
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r0]
_0801F9A4:
	adds r4, #1
	ldr r6, [sp, #0x7c]
	cmp r4, r6
	blt _0801F93E
_0801F9AC:
	ldr r5, [sp, #0x70]
	cmp r5, sl
	blt _0801F92A
	b _0801FC4E
_0801F9B4:
	movs r0, #0
	str r0, [r7, #8]
	str r1, [r7]
	movs r0, #0x24
	b _0801FDEC
_0801F9BE:
	bl sub_801D3D0
	movs r0, #1
	str r0, [r7, #0x10]
	ldr r0, [r7]
	mov sb, r0
	movs r4, #0
	bl sub_802DC88
	cmp r0, #0
	beq _0801F9DC
	bl sub_802DCB4
	cmp r0, #0
	bne _0801F9DE
_0801F9DC:
	movs r4, #1
_0801F9DE:
	movs r2, #0x30
	ldr r1, _0801FB30 @ =0x03004EA0
	ldrh r0, [r1]
	ands r0, r2
	adds r2, r1, #0
	cmp r0, #0
	beq _0801F9F4
	ldr r1, [r7]
	movs r0, #1
	subs r0, r0, r1
	str r0, [r7]
_0801F9F4:
	cmp r4, #0
	beq _0801FAE0
	ldr r0, [r7]
	lsls r1, r0, #2
	adds r1, r1, r0
	adds r1, #0xa
	movs r0, #0
	movs r2, #0x11
	bl map_getBufferPtr2d
	ldr r2, _0801FB34 @ =0x0000F103
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, [r7]
	lsls r1, r0, #2
	adds r1, r1, r0
	adds r1, #0xa
	movs r0, #0
	movs r2, #0x12
	bl map_getBufferPtr2d
	ldr r3, _0801FB38 @ =0x0000F903
	adds r1, r3, #0
	strh r1, [r0]
	movs r0, #0
_0801FA26:
	movs r6, #0
	adds r1, r0, #1
	mov r8, r1
	adds r5, r0, #0
	adds r5, #0xb
_0801FA30:
	ldr r0, [r7]
	lsls r1, r0, #2
	adds r1, r1, r0
	adds r1, r1, r5
	adds r4, r6, #0
	adds r4, #0x11
	movs r0, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldrh r1, [r0]
	ldr r3, _0801FB3C @ =0x00000FFF
	adds r2, r3, #0
	ands r1, r2
	strh r1, [r0]
	ldr r0, [r7]
	lsls r1, r0, #2
	adds r1, r1, r0
	adds r1, r1, r5
	movs r0, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldrh r1, [r0]
	movs r3, #0xe0
	lsls r3, r3, #8
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	adds r6, #1
	cmp r6, #1
	ble _0801FA30
	mov r0, r8
	cmp r0, #2
	ble _0801FA26
	ldr r0, [r7]
	cmp sb, r0
	beq _0801FADA
	movs r0, #0x8d
	bl m4aSongNumStart
	mov r6, sb
	lsls r5, r6, #2
	add r5, sb
	adds r6, r5, #0
	adds r6, #0xa
	movs r0, #0
	adds r1, r6, #0
	movs r2, #0x11
	bl map_getBufferPtr2d
	movs r1, #0xf0
	lsls r1, r1, #8
	adds r4, r1, #0
	strh r4, [r0]
	movs r0, #0
	adds r1, r6, #0
	movs r2, #0x12
	bl map_getBufferPtr2d
	strh r4, [r0]
	movs r0, #0
	mov r8, r5
	mov sb, r4
_0801FAB0:
	movs r6, #0
	adds r4, r0, #0
	adds r4, #0xb
	adds r5, r0, #1
_0801FAB8:
	adds r2, r6, #0
	adds r2, #0x11
	movs r0, #0
	mov r3, r8
	adds r1, r3, r4
	bl map_getBufferPtr2d
	ldrh r1, [r0]
	mov r2, sb
	orrs r1, r2
	strh r1, [r0]
	adds r6, #1
	cmp r6, #1
	ble _0801FAB8
	adds r0, r5, #0
	cmp r0, #2
	ble _0801FAB0
_0801FADA:
	movs r0, #1
	str r0, [r7, #0x10]
	ldr r2, _0801FB30 @ =0x03004EA0
_0801FAE0:
	movs r1, #9
	ldrh r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _0801FAEC
	b _0801FDEE
_0801FAEC:
	ldr r0, [r7]
	cmp r0, #0
	bne _0801FAF4
	b _0801FDE4
_0801FAF4:
	movs r0, #0x8e
	bl m4aSongNumStart
	movs r4, #0
	bl sub_802DC88
	cmp r0, #0
	beq _0801FB0C
	bl sub_802DCB4
	cmp r0, #0
	bne _0801FB0E
_0801FB0C:
	movs r4, #1
_0801FB0E:
	cmp r4, #0
	beq _0801FB26
	ldr r4, _0801FB40 @ =_080DB268
	movs r0, #1
	movs r1, #9
	movs r2, #0xe
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_804F6F4
_0801FB26:
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #0x25
	b _0801FDEC
	.align 2, 0
_0801FB30: .4byte 0x03004EA0
_0801FB34: .4byte 0x0000F103
_0801FB38: .4byte 0x0000F903
_0801FB3C: .4byte 0x00000FFF
_0801FB40: .4byte _080DB268
_0801FB44:
	bl sub_801D3D0
	movs r1, #1
	str r1, [r7, #0x10]
	ldr r0, [r7, #8]
	cmp r0, #5
	ble _0801FB54
	b _0801FC54
_0801FB54:
	movs r4, #0
	bl sub_802DC88
	cmp r0, #0
	beq _0801FB66
	bl sub_802DCB4
	cmp r0, #0
	bne _0801FB68
_0801FB66:
	movs r4, #1
_0801FB68:
	ldr r0, [r7, #8]
	adds r0, #1
	str r0, [r7, #8]
	cmp r4, #0
	bne _0801FB74
	b _0801FDEE
_0801FB74:
	mov r8, r0
	mov sb, r8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x54]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x58]
	mov r3, r8
	cmp r3, #0
	bge _0801FBA0
	movs r6, #0
	mov sb, r6
	cmp r3, #0
	bge _0801FBA0
	mov r8, r6
_0801FBA0:
	mov r0, sb
	cmp r0, #6
	ble _0801FBAA
	movs r1, #6
	mov sb, r1
_0801FBAA:
	mov r2, r8
	cmp r2, #3
	ble _0801FBB4
	movs r3, #3
	mov r8, r3
_0801FBB4:
	movs r5, #0
	mov r6, r8
	lsls r0, r6, #1
	cmp r5, r0
	bge _0801FC4E
	mov r1, sb
	lsls r1, r1, #1
	str r1, [sp, #0x64]
	mov sl, r0
_0801FBC6:
	movs r4, #0
	adds r2, r5, #1
	str r2, [sp, #0x74]
	ldr r3, [sp, #0x64]
	cmp r4, r3
	bge _0801FC48
	str r3, [sp, #0x7c]
	mov r6, sl
	subs r6, r5, r6
	mov ip, r6
_0801FBDA:
	cmp r4, sb
	bge _0801FBE4
	adds r3, r4, #0
	adds r3, #9
	b _0801FBEC
_0801FBE4:
	ldr r1, [sp, #0x7c]
	subs r0, r4, r1
	adds r3, r0, #0
	adds r3, #0x15
_0801FBEC:
	mov r1, ip
	adds r1, #0x14
	cmp r5, r8
	bge _0801FBF8
	adds r1, r5, #0
	adds r1, #0xe
_0801FBF8:
	cmp r3, #0
	blt _0801FC40
	cmp r1, #0
	blt _0801FC40
	cmp r3, #0x1d
	bgt _0801FC40
	cmp r1, #0x13
	bgt _0801FC40
	movs r2, #0xf
	mov r6, sb
	subs r0, r2, r6
	adds r2, r0, r4
	mov r6, r8
	movs r0, #0x11
	subs r6, r0, r6
	adds r0, r6, r5
	cmp r2, #0
	blt _0801FC40
	cmp r0, #0
	blt _0801FC40
	cmp r2, #0x1d
	bgt _0801FC40
	cmp r0, #0x13
	bgt _0801FC40
	lsls r0, r0, #5
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r2, [sp, #0x58]
	adds r0, r0, r2
	lsls r1, r1, #5
	adds r1, r1, r3
	lsls r1, r1, #1
	ldr r3, [sp, #0x54]
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r0]
_0801FC40:
	adds r4, #1
	ldr r6, [sp, #0x7c]
	cmp r4, r6
	blt _0801FBDA
_0801FC48:
	ldr r5, [sp, #0x74]
	cmp r5, sl
	blt _0801FBC6
_0801FC4E:
	movs r0, #1
	str r0, [r7, #0x10]
	b _0801FDEE
_0801FC54:
	movs r0, #0
	str r0, [r7, #8]
	str r1, [r7]
	movs r0, #0x1d
	b _0801FDEC
_0801FC5E:
	movs r1, #4
	movs r0, #0xfd
	lsls r0, r0, #3
	add r0, r8
	strb r1, [r0]
	ldr r1, _0801FC74 @ =0x03005C50
	movs r0, #1
	str r0, [r1]
	movs r0, #0x27
	b _0801FDEC
	.align 2, 0
_0801FC74: .4byte 0x03005C50
_0801FC78:
	bl sub_801D3D0
	movs r2, #1
	str r2, [r7, #0x10]
	ldr r1, [r7, #8]
	cmp r1, #0x27
	bgt _0801FD40
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _0801FCDA
	bl sub_8002C3C
	adds r4, r0, #0
	lsls r4, r4, #1
	movs r6, #0x1b
	subs r6, r6, r4
	movs r0, #0
	adds r1, r6, #0
	movs r2, #0x12
	bl map_getBufferPtr2d
	movs r1, #0
	mov r8, r1
	strh r1, [r0]
	movs r5, #0x1c
	subs r5, r5, r4
	movs r0, #0
	adds r1, r5, #0
	movs r2, #0x12
	bl map_getBufferPtr2d
	mov r2, r8
	strh r2, [r0]
	movs r0, #0
	adds r1, r6, #0
	movs r2, #0x13
	bl map_getBufferPtr2d
	mov r3, r8
	strh r3, [r0]
	movs r0, #0
	adds r1, r5, #0
	movs r2, #0x13
	bl map_getBufferPtr2d
	mov r6, r8
	strh r6, [r0]
	b _0801FD2A
_0801FCDA:
	bl sub_8002C3C
	adds r4, r0, #0
	lsls r4, r4, #1
	movs r6, #0x1b
	subs r6, r6, r4
	movs r0, #0
	adds r1, r6, #0
	movs r2, #0x12
	bl map_getBufferPtr2d
	ldr r2, _0801FD30 @ =0x0000B0A0
	adds r1, r2, #0
	strh r1, [r0]
	movs r5, #0x1c
	subs r5, r5, r4
	movs r0, #0
	adds r1, r5, #0
	movs r2, #0x12
	bl map_getBufferPtr2d
	ldr r3, _0801FD34 @ =0x0000B0A1
	adds r1, r3, #0
	strh r1, [r0]
	movs r0, #0
	adds r1, r6, #0
	movs r2, #0x13
	bl map_getBufferPtr2d
	ldr r6, _0801FD38 @ =0x0000B0A2
	adds r1, r6, #0
	strh r1, [r0]
	movs r0, #0
	adds r1, r5, #0
	movs r2, #0x13
	bl map_getBufferPtr2d
	ldr r2, _0801FD3C @ =0x0000B0A3
	adds r1, r2, #0
	strh r1, [r0]
_0801FD2A:
	movs r0, #1
	str r0, [r7, #0x10]
	b _0801FD4C
	.align 2, 0
_0801FD30: .4byte 0x0000B0A0
_0801FD34: .4byte 0x0000B0A1
_0801FD38: .4byte 0x0000B0A2
_0801FD3C: .4byte 0x0000B0A3
_0801FD40:
	cmp r1, #0x2f
	ble _0801FD4C
	ldr r0, _0801FD50 @ =0x03005C50
	str r2, [r0]
	movs r0, #0x27
	str r0, [r7, #4]
_0801FD4C:
	ldr r0, [r7, #8]
	b _0801FDD2
	.align 2, 0
_0801FD50: .4byte 0x03005C50
_0801FD54:
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _0801FD68
	movs r0, #0
	bl map_clearBuffer
	movs r0, #1
	bl map_setBufferDirty
	b _0801FDC0
_0801FD68:
	cmp r0, #1
	bne _0801FD80
	ldr r0, _0801FD78 @ =_080C2FA8
	ldr r1, _0801FD7C @ =0x06001000
	bl LZ77UnCompVram
	b _0801FDC0
	.align 2, 0
_0801FD78: .4byte _080C2FA8
_0801FD7C: .4byte 0x06001000
_0801FD80:
	cmp r0, #2
	bne _0801FDC0
	ldr r4, _0801FDC4 @ =_080C3954
	movs r0, #0
	bl map_getBufferPtr
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	movs r0, #1
	bl map_setBufferDirty
	ldr r4, _0801FDC8 @ =_080C3934
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r1, r1, r3
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	movs r0, #0
	str r0, [r7, #8]
	movs r0, #0x20
	str r0, [r7, #4]
_0801FDC0:
	ldr r0, [r7, #8]
	b _0801FDD2
	.align 2, 0
_0801FDC4: .4byte _080C3954
_0801FDC8: .4byte _080C3934
_0801FDCC:
	ldr r0, [r7, #8]
	cmp r0, #0x3b
	bgt _0801FDD8
_0801FDD2:
	adds r0, #1
	str r0, [r7, #8]
	b _0801FDEE
_0801FDD8:
	movs r1, #9
	ldr r0, _0801FE34 @ =0x03004EA0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0801FDEE
_0801FDE4:
	movs r0, #0x8f
	bl m4aSongNumStart
	movs r0, #0x26
_0801FDEC:
	str r0, [r7, #4]
_0801FDEE:
	ldr r0, [r7, #0x10]
	cmp r0, #0
	beq _0801FDFA
	movs r0, #1
	bl map_setBufferDirty
_0801FDFA:
	ldr r1, [r7, #4]
	subs r0, r1, #3
	cmp r0, #0x17
	bhi _0801FE64
	ldr r0, _0801FE38 @ =0x03002E20
	ldr r0, [r0, #0x10]
	movs r1, #0xc
	bl __umodsi3
	movs r1, #0
	cmp r0, #5
	ble _0801FE14
	movs r1, #1
_0801FE14:
	cmp r1, #0
	beq _0801FE40
	ldr r4, _0801FE3C @ =_080AACF0
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r6, #0xe0
	lsls r6, r6, #1
	adds r1, r1, r6
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	b _0801FE58
	.align 2, 0
_0801FE34: .4byte 0x03004EA0
_0801FE38: .4byte 0x03002E20
_0801FE3C: .4byte _080AACF0
_0801FE40:
	ldr r4, _0801FE60 @ =_080AAD10
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
_0801FE58:
	movs r0, #1
	bl pltt_setDirtyFlag
	b _0801FF4E
	.align 2, 0
_0801FE60: .4byte _080AAD10
_0801FE64:
	cmp r1, #0x1a
	ble _0801FF4E
	ldr r0, _0801FF60 @ =0x03002E20
	ldr r0, [r0, #0x10]
	ldr r2, _0801FF64 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801FE78
	adds r0, #0x3f
_0801FE78:
	asrs r1, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	ldr r1, _0801FF68 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	subs r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov sb, r0
	movs r1, #0
	mov ip, r1
	mov r2, sp
	adds r2, #0x20
	str r2, [sp, #0x6c]
	ldr r0, _0801FF6C @ =_080AAD3C
	movs r3, #0x1f
	mov r8, r3
	movs r7, #0x1f
	adds r6, r0, #0
	adds r6, #0x40
	str r6, [sp, #0x78]
	mov sl, r0
_0801FEB2:
	mov r0, ip
	lsls r0, r0, #1
	str r0, [sp, #0x7c]
	mov r2, sl
	ldrh r1, [r2]
	adds r2, r1, #0
	ands r2, r7
	lsrs r4, r1, #5
	mov r3, r8
	ands r4, r3
	lsrs r1, r1, #0xa
	ands r1, r3
	ldr r6, [sp, #0x78]
	ldrh r3, [r6]
	adds r0, r3, #0
	ands r0, r7
	lsrs r5, r3, #5
	mov r6, r8
	ands r5, r6
	lsrs r3, r3, #0xa
	ands r3, r6
	subs r0, r0, r2
	mov r6, sb
	muls r6, r0, r6
	adds r0, r6, #0
	asrs r0, r0, #0xf
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	subs r5, r5, r4
	mov r0, sb
	muls r0, r5, r0
	asrs r0, r0, #0xf
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	subs r3, r3, r1
	mov r0, sb
	muls r0, r3, r0
	asrs r0, r0, #0xf
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #0x6c]
	ldr r3, [sp, #0x7c]
	adds r6, r0, r3
	ands r2, r7
	ands r4, r7
	lsls r4, r4, #5
	orrs r2, r4
	ands r1, r7
	lsls r1, r1, #0xa
	orrs r2, r1
	strh r2, [r6]
	ldr r6, [sp, #0x78]
	adds r6, #2
	str r6, [sp, #0x78]
	movs r0, #2
	add sl, r0
	movs r1, #1
	add ip, r1
	mov r2, ip
	cmp r2, #0xf
	ble _0801FEB2
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r1, r1, r3
	ldr r0, [sp, #0x6c]
	movs r2, #8
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
_0801FF4E:
	add sp, #0x84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801FF60: .4byte 0x03002E20
_0801FF64: .4byte gSinTable
_0801FF68: .4byte 0x000003FF
_0801FF6C: .4byte _080AAD3C

	thumb_func_start sub_801FF70
sub_801FF70: @ 0x0801FF70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	bl sub_800EDDC
	adds r2, r0, #0
	movs r6, #0
	ldr r0, _08020000 @ =0x03002E20
	ldr r3, _08020004 @ =0x00000814
	adds r1, r0, r3
	ldrb r3, [r1]
	cmp r6, r3
	bge _0801FFF2
	mov sl, r0
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
	mov r8, r1
	adds r4, r2, #0
	adds r4, #0x34
	movs r5, #0
_0801FFA0:
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	mov r0, sl
	adds r0, #0x24
	bl sub_804AED4
	adds r2, r0, #0
	ldr r0, [r2, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801FFF2
	movs r1, #6
	ldrsh r0, [r4, r1]
	cmp r0, sb
	bne _0801FFE4
	adds r1, r5, #0
	adds r1, #0x23
	cmp r6, #3
	ble _0801FFCA
	adds r1, #5
_0801FFCA:
	movs r0, #0
	strh r1, [r4]
	strh r0, [r4, #2]
	cmp r7, #0
	beq _0801FFD6
	adds r0, r5, #0
_0801FFD6:
	strh r0, [r4, #4]
	adds r0, r2, #0
	adds r0, #0x4c
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	strh r0, [r4, #6]
_0801FFE4:
	adds r4, #8
	adds r5, #3
	adds r6, #1
	mov r3, r8
	ldrb r3, [r3]
	cmp r6, r3
	blt _0801FFA0
_0801FFF2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020000: .4byte 0x03002E20
_08020004: .4byte 0x00000814

	thumb_func_start sub_8020008
sub_8020008: @ 0x08020008
	push {r4, r5, r6, lr}
	bl sub_800EDDC
	adds r1, r0, #0
	movs r4, #0
	ldr r0, _08020040 @ =0x03002E20
	ldr r2, _08020044 @ =0x00000814
	adds r3, r0, r2
	ldrb r0, [r3]
	cmp r4, r0
	bge _08020094
	adds r2, r1, #0
	adds r2, #0x34
	movs r1, #6
	ldrsh r0, [r2, r1]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08020094
	adds r6, r3, #0
	adds r5, r1, #0
	mov ip, r4
_08020034:
	ldrh r0, [r2, #4]
	cmp r0, #0
	beq _08020048
	subs r0, #1
	strh r0, [r2, #4]
	b _0802007E
	.align 2, 0
_08020040: .4byte 0x03002E20
_08020044: .4byte 0x00000814
_08020048:
	mov r3, ip
	adds r3, #0x23
	cmp r4, #3
	ble _08020052
	adds r3, #5
_08020052:
	mov r1, ip
	cmp r4, #3
	ble _0802005A
	adds r1, #5
_0802005A:
	ldrh r0, [r2, #2]
	adds r0, #1
	strh r0, [r2, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bls _0802006C
	movs r0, #0x20
	strh r0, [r2, #2]
_0802006C:
	subs r1, r1, r3
	ldrh r0, [r2, #2]
	muls r0, r1, r0
	cmp r0, #0
	bge _08020078
	adds r0, #0x1f
_08020078:
	asrs r0, r0, #5
	adds r0, r3, r0
	strh r0, [r2]
_0802007E:
	adds r2, #8
	movs r0, #3
	add ip, r0
	adds r4, #1
	ldrb r1, [r6]
	cmp r4, r1
	bge _08020094
	movs r1, #6
	ldrsh r0, [r2, r1]
	cmp r0, r5
	bne _08020034
_08020094:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_802009C
sub_802009C: @ 0x0802009C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	bl sub_800EDDC
	mov sl, r0
	movs r7, #0
	b _0802020C
_080200B2:
	ldr r4, _08020130 @ =0x03002E20
	adds r0, r4, #0
	adds r0, #0x24
	lsls r1, r7, #0x18
	lsrs r1, r1, #0x18
	bl sub_804AED4
	adds r3, r0, #0
	lsls r0, r7, #3
	adds r0, #0x34
	mov r6, sl
	adds r2, r6, r0
	movs r0, #6
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080200D8
	b _0802021A
_080200D8:
	ldr r1, _08020134 @ =0x00000838
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r3, r0
	bne _080200E4
	b _0802020A
_080200E4:
	ldrh r0, [r2]
	cmp r0, #0x1c
	bls _080200EC
	b _0802020A
_080200EC:
	lsls r0, r7, #1
	adds r0, r0, r7
	cmp r7, #3
	ble _080200F6
	adds r0, #5
_080200F6:
	ldrh r6, [r2]
	cmp r6, r0
	beq _08020140
	movs r3, #6
	ldrsh r4, [r2, r3]
	ldr r5, _08020138 @ =_080DB420
	movs r0, #0
	adds r1, r6, #0
	movs r2, #0xa
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_804F6F4
	ldr r0, _0802013C @ =_080DB5A0
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r4, [r4]
	adds r1, r6, #1
	movs r0, #0
	movs r2, #0xb
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_804F6F4
	b _0802020A
	.align 2, 0
_08020130: .4byte 0x03002E20
_08020134: .4byte 0x00000838
_08020138: .4byte _080DB420
_0802013C: .4byte _080DB5A0
_08020140:
	adds r1, r0, #0
	movs r6, #6
	ldrsh r2, [r2, r6]
	movs r0, #0
	cmp r7, #0
	beq _08020152
	cmp r7, #4
	beq _08020152
	movs r0, #3
_08020152:
	adds r5, r1, #0
	adds r6, r2, #0
	movs r4, #0
	cmp r0, #0xd
	bhi _080201DE
	lsls r0, r0, #2
	ldr r1, _08020168 @ =_0802016C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08020168: .4byte _0802016C
_0802016C: @ jump table
	.4byte _080201A4 @ case 0
	.4byte _080201AC @ case 1
	.4byte _080201B4 @ case 2
	.4byte _080201BC @ case 3
	.4byte _080201DE @ case 4
	.4byte _080201DE @ case 5
	.4byte _080201DE @ case 6
	.4byte _080201DE @ case 7
	.4byte _080201DE @ case 8
	.4byte _080201DE @ case 9
	.4byte _080201C4 @ case 10
	.4byte _080201CC @ case 11
	.4byte _080201D4 @ case 12
	.4byte _080201DC @ case 13
_080201A4:
	ldr r4, _080201A8 @ =_080DB420
	b _080201DE
	.align 2, 0
_080201A8: .4byte _080DB420
_080201AC:
	ldr r4, _080201B0 @ =_080DB444
	b _080201DE
	.align 2, 0
_080201B0: .4byte _080DB444
_080201B4:
	ldr r4, _080201B8 @ =_080DB468
	b _080201DE
	.align 2, 0
_080201B8: .4byte _080DB468
_080201BC:
	ldr r4, _080201C0 @ =_080DB48C
	b _080201DE
	.align 2, 0
_080201C0: .4byte _080DB48C
_080201C4:
	ldr r4, _080201C8 @ =_080DB4B0
	b _080201DE
	.align 2, 0
_080201C8: .4byte _080DB4B0
_080201CC:
	ldr r4, _080201D0 @ =_080DB4D4
	b _080201DE
	.align 2, 0
_080201D0: .4byte _080DB4D4
_080201D4:
	ldr r4, _080201D8 @ =_080DB4F8
	b _080201DE
	.align 2, 0
_080201D8: .4byte _080DB4F8
_080201DC:
	ldr r4, _08020224 @ =_080DB51C
_080201DE:
	movs r0, #0
	adds r1, r5, #0
	movs r2, #0xa
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_804F6F4
	ldr r1, _08020228 @ =_080DB5A0
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r1, r5, #1
	movs r0, #0
	movs r2, #0xb
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_804F6F4
_0802020A:
	adds r7, #1
_0802020C:
	ldr r0, _0802022C @ =0x03002E20
	ldr r1, _08020230 @ =0x00000814
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r7, r0
	bge _0802021A
	b _080200B2
_0802021A:
	movs r7, #0
	ldr r0, _0802022C @ =0x03002E20
	ldr r2, _08020230 @ =0x00000814
	adds r1, r0, r2
	b _0802067A
	.align 2, 0
_08020224: .4byte _080DB51C
_08020228: .4byte _080DB5A0
_0802022C: .4byte 0x03002E20
_08020230: .4byte 0x00000814
_08020234:
	adds r0, r2, #0
	adds r0, #0x24
	lsls r1, r7, #0x18
	lsrs r1, r1, #0x18
	str r2, [sp]
	bl sub_804AED4
	adds r6, r0, #0
	lsls r0, r7, #3
	adds r0, #0x34
	mov r3, sl
	adds r4, r3, r0
	ldr r2, [sp]
	ldr r0, [r2, #0x10]
	movs r1, #0xc
	bl __umodsi3
	movs r5, #0
	ldr r2, [sp]
	cmp r0, #5
	ble _08020260
	movs r5, #1
_08020260:
	movs r1, #6
	ldrsh r0, [r4, r1]
	movs r3, #1
	rsbs r3, r3, #0
	mov r8, r3
	cmp r0, r8
	bne _08020270
	b _08020684
_08020270:
	ldr r1, _080202B8 @ =0x00000838
	adds r0, r2, r1
	ldr r0, [r0]
	adds r3, r7, #1
	mov sb, r3
	cmp r6, r0
	beq _08020280
	b _08020672
_08020280:
	ldrh r0, [r4]
	cmp r0, #0x1c
	bls _08020288
	b _08020672
_08020288:
	lsls r0, r7, #1
	adds r0, r0, r7
	cmp r7, #3
	ble _08020292
	adds r0, #5
_08020292:
	ldrh r1, [r4]
	cmp r1, r0
	beq _08020370
	adds r6, r1, #0
	movs r1, #6
	ldrsh r0, [r4, r1]
	mov r8, r0
	lsls r0, r5, #2
	adds r1, r0, r5
	lsls r0, r1, #1
	movs r4, #0
	cmp r0, #0xd
	bhi _08020332
	lsls r0, r1, #3
	ldr r1, _080202BC @ =_080202C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080202B8: .4byte 0x00000838
_080202BC: .4byte _080202C0
_080202C0: @ jump table
	.4byte _080202F8 @ case 0
	.4byte _08020300 @ case 1
	.4byte _08020308 @ case 2
	.4byte _08020310 @ case 3
	.4byte _08020332 @ case 4
	.4byte _08020332 @ case 5
	.4byte _08020332 @ case 6
	.4byte _08020332 @ case 7
	.4byte _08020332 @ case 8
	.4byte _08020332 @ case 9
	.4byte _08020318 @ case 10
	.4byte _08020320 @ case 11
	.4byte _08020328 @ case 12
	.4byte _08020330 @ case 13
_080202F8:
	ldr r4, _080202FC @ =_080DB420
	b _08020332
	.align 2, 0
_080202FC: .4byte _080DB420
_08020300:
	ldr r4, _08020304 @ =_080DB444
	b _08020332
	.align 2, 0
_08020304: .4byte _080DB444
_08020308:
	ldr r4, _0802030C @ =_080DB468
	b _08020332
	.align 2, 0
_0802030C: .4byte _080DB468
_08020310:
	ldr r4, _08020314 @ =_080DB48C
	b _08020332
	.align 2, 0
_08020314: .4byte _080DB48C
_08020318:
	ldr r4, _0802031C @ =_080DB4B0
	b _08020332
	.align 2, 0
_0802031C: .4byte _080DB4B0
_08020320:
	ldr r4, _08020324 @ =_080DB4D4
	b _08020332
	.align 2, 0
_08020324: .4byte _080DB4D4
_08020328:
	ldr r4, _0802032C @ =_080DB4F8
	b _08020332
	.align 2, 0
_0802032C: .4byte _080DB4F8
_08020330:
	ldr r4, _08020368 @ =_080DB51C
_08020332:
	movs r0, #0
	adds r1, r6, #0
	movs r2, #0xa
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_804F6F4
	ldr r1, _0802036C @ =_080DB5A0
	mov r2, r8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r1, r6, #1
	movs r0, #0
	movs r2, #0xb
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_804F6F4
	adds r7, #1
	mov sb, r7
	b _08020672
	.align 2, 0
_08020368: .4byte _080DB51C
_0802036C: .4byte _080DB5A0
_08020370:
	movs r3, #0
	mov ip, r3
	mov r6, sb
	lsls r0, r6, #1
	adds r3, r0, r6
	cmp r6, #3
	ble _08020380
	adds r3, #5
_08020380:
	ldr r6, _080203D4 @ =0x00000814
	adds r0, r2, r6
	ldrb r0, [r0]
	subs r0, #1
	cmp r7, r0
	bge _080203AC
	mov r2, sb
	lsls r0, r2, #3
	mov r6, sl
	adds r2, r6, r0
	movs r6, #0x3a
	ldrsh r0, [r2, r6]
	cmp r0, r8
	beq _080203AC
	ldrh r0, [r2, #0x34]
	cmp r0, r3
	beq _080203A6
	movs r0, #1
	mov ip, r0
_080203A6:
	mov r2, ip
	cmp r2, #0
	beq _08020470
_080203AC:
	cmp r7, #0
	beq _080203B4
	cmp r7, #4
	bne _08020414
_080203B4:
	adds r6, r1, #0
	movs r3, #6
	ldrsh r7, [r4, r3]
	lsls r0, r5, #2
	adds r1, r0, r5
	lsls r0, r1, #1
	movs r4, #0
	cmp r0, #0xd
	bls _080203C8
	b _0802057A
_080203C8:
	lsls r0, r1, #3
	ldr r1, _080203D8 @ =_080203DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080203D4: .4byte 0x00000814
_080203D8: .4byte _080203DC
_080203DC: @ jump table
	.4byte _08020540 @ case 0
	.4byte _08020548 @ case 1
	.4byte _08020550 @ case 2
	.4byte _08020558 @ case 3
	.4byte _0802057A @ case 4
	.4byte _0802057A @ case 5
	.4byte _0802057A @ case 6
	.4byte _0802057A @ case 7
	.4byte _0802057A @ case 8
	.4byte _0802057A @ case 9
	.4byte _08020560 @ case 10
	.4byte _08020568 @ case 11
	.4byte _08020570 @ case 12
	.4byte _08020578 @ case 13
_08020414:
	adds r6, r1, #0
	movs r0, #6
	ldrsh r7, [r4, r0]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, #3
	movs r4, #0
	cmp r0, #0xd
	bls _0802042A
	b _0802057A
_0802042A:
	lsls r0, r0, #2
	ldr r1, _08020434 @ =_08020438
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08020434: .4byte _08020438
_08020438: @ jump table
	.4byte _08020540 @ case 0
	.4byte _08020548 @ case 1
	.4byte _08020550 @ case 2
	.4byte _08020558 @ case 3
	.4byte _0802057A @ case 4
	.4byte _0802057A @ case 5
	.4byte _0802057A @ case 6
	.4byte _0802057A @ case 7
	.4byte _0802057A @ case 8
	.4byte _0802057A @ case 9
	.4byte _08020560 @ case 10
	.4byte _08020568 @ case 11
	.4byte _08020570 @ case 12
	.4byte _08020578 @ case 13
_08020470:
	cmp r7, #3
	beq _080204E4
	cmp r7, #3
	bgt _0802047E
	cmp r7, #0
	beq _08020488
	b _080205B0
_0802047E:
	cmp r7, #4
	beq _08020488
	cmp r7, #7
	beq _080204E4
	b _080205B0
_08020488:
	adds r6, r1, #0
	movs r1, #6
	ldrsh r7, [r4, r1]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, #1
	movs r4, #0
	cmp r0, #0xd
	bls _0802049E
	b _0802057A
_0802049E:
	lsls r0, r0, #2
	ldr r1, _080204A8 @ =_080204AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080204A8: .4byte _080204AC
_080204AC: @ jump table
	.4byte _08020540 @ case 0
	.4byte _08020548 @ case 1
	.4byte _08020550 @ case 2
	.4byte _08020558 @ case 3
	.4byte _0802057A @ case 4
	.4byte _0802057A @ case 5
	.4byte _0802057A @ case 6
	.4byte _0802057A @ case 7
	.4byte _0802057A @ case 8
	.4byte _0802057A @ case 9
	.4byte _08020560 @ case 10
	.4byte _08020568 @ case 11
	.4byte _08020570 @ case 12
	.4byte _08020578 @ case 13
_080204E4:
	adds r6, r1, #0
	movs r2, #6
	ldrsh r7, [r4, r2]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, #3
	movs r4, #0
	cmp r0, #0xd
	bhi _0802057A
	lsls r0, r0, #2
	ldr r1, _08020504 @ =_08020508
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08020504: .4byte _08020508
_08020508: @ jump table
	.4byte _08020540 @ case 0
	.4byte _08020548 @ case 1
	.4byte _08020550 @ case 2
	.4byte _08020558 @ case 3
	.4byte _0802057A @ case 4
	.4byte _0802057A @ case 5
	.4byte _0802057A @ case 6
	.4byte _0802057A @ case 7
	.4byte _0802057A @ case 8
	.4byte _0802057A @ case 9
	.4byte _08020560 @ case 10
	.4byte _08020568 @ case 11
	.4byte _08020570 @ case 12
	.4byte _08020578 @ case 13
_08020540:
	ldr r4, _08020544 @ =_080DB420
	b _0802057A
	.align 2, 0
_08020544: .4byte _080DB420
_08020548:
	ldr r4, _0802054C @ =_080DB444
	b _0802057A
	.align 2, 0
_0802054C: .4byte _080DB444
_08020550:
	ldr r4, _08020554 @ =_080DB468
	b _0802057A
	.align 2, 0
_08020554: .4byte _080DB468
_08020558:
	ldr r4, _0802055C @ =_080DB48C
	b _0802057A
	.align 2, 0
_0802055C: .4byte _080DB48C
_08020560:
	ldr r4, _08020564 @ =_080DB4B0
	b _0802057A
	.align 2, 0
_08020564: .4byte _080DB4B0
_08020568:
	ldr r4, _0802056C @ =_080DB4D4
	b _0802057A
	.align 2, 0
_0802056C: .4byte _080DB4D4
_08020570:
	ldr r4, _08020574 @ =_080DB4F8
	b _0802057A
	.align 2, 0
_08020574: .4byte _080DB4F8
_08020578:
	ldr r4, _080205A8 @ =_080DB51C
_0802057A:
	movs r0, #0
	adds r1, r6, #0
	movs r2, #0xa
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_804F6F4
	ldr r1, _080205AC @ =_080DB5A0
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r1, r6, #1
	movs r0, #0
	movs r2, #0xb
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_804F6F4
	b _08020672
	.align 2, 0
_080205A8: .4byte _080DB51C
_080205AC: .4byte _080DB5A0
_080205B0:
	adds r6, r1, #0
	movs r3, #6
	ldrsh r7, [r4, r3]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #1
	adds r0, #2
	movs r4, #0
	cmp r0, #0xd
	bhi _08020646
	lsls r0, r0, #2
	ldr r1, _080205D0 @ =_080205D4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080205D0: .4byte _080205D4
_080205D4: @ jump table
	.4byte _0802060C @ case 0
	.4byte _08020614 @ case 1
	.4byte _0802061C @ case 2
	.4byte _08020624 @ case 3
	.4byte _08020646 @ case 4
	.4byte _08020646 @ case 5
	.4byte _08020646 @ case 6
	.4byte _08020646 @ case 7
	.4byte _08020646 @ case 8
	.4byte _08020646 @ case 9
	.4byte _0802062C @ case 10
	.4byte _08020634 @ case 11
	.4byte _0802063C @ case 12
	.4byte _08020644 @ case 13
_0802060C:
	ldr r4, _08020610 @ =_080DB420
	b _08020646
	.align 2, 0
_08020610: .4byte _080DB420
_08020614:
	ldr r4, _08020618 @ =_080DB444
	b _08020646
	.align 2, 0
_08020618: .4byte _080DB444
_0802061C:
	ldr r4, _08020620 @ =_080DB468
	b _08020646
	.align 2, 0
_08020620: .4byte _080DB468
_08020624:
	ldr r4, _08020628 @ =_080DB48C
	b _08020646
	.align 2, 0
_08020628: .4byte _080DB48C
_0802062C:
	ldr r4, _08020630 @ =_080DB4B0
	b _08020646
	.align 2, 0
_08020630: .4byte _080DB4B0
_08020634:
	ldr r4, _08020638 @ =_080DB4D4
	b _08020646
	.align 2, 0
_08020638: .4byte _080DB4D4
_0802063C:
	ldr r4, _08020640 @ =_080DB4F8
	b _08020646
	.align 2, 0
_08020640: .4byte _080DB4F8
_08020644:
	ldr r4, _08020694 @ =_080DB51C
_08020646:
	movs r0, #0
	adds r1, r6, #0
	movs r2, #0xa
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_804F6F4
	ldr r1, _08020698 @ =_080DB5A0
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r1, r6, #1
	movs r0, #0
	movs r2, #0xb
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_804F6F4
_08020672:
	mov r7, sb
	ldr r0, _0802069C @ =0x03002E20
	ldr r6, _080206A0 @ =0x00000814
	adds r1, r0, r6
_0802067A:
	adds r2, r0, #0
	ldrb r1, [r1]
	cmp r7, r1
	bge _08020684
	b _08020234
_08020684:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020694: .4byte _080DB51C
_08020698: .4byte _080DB5A0
_0802069C: .4byte 0x03002E20
_080206A0: .4byte 0x00000814

	thumb_func_start sub_80206A4
sub_80206A4: @ 0x080206A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	bl sub_800EDDC
	str r0, [sp]
	ldr r0, _08020768 @ =0x03002E20
	ldr r1, _0802076C @ =0x00000814
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #4]
	movs r1, #0
	cmp r1, r0
	bge _08020756
_080206C6:
	lsls r0, r1, #4
	adds r0, #0x34
	ldr r3, [sp]
	adds r2, r3, r0
	ldrh r0, [r2, #0xc]
	adds r7, r1, #1
	str r7, [sp, #8]
	cmp r0, #0
	bne _0802074E
	ldr r0, [sp, #4]
	subs r0, #1
	movs r3, #2
	cmp r1, r0
	bne _080206E4
	movs r3, #3
_080206E4:
	lsls r0, r1, #1
	adds r0, #3
	mov sl, r0
	mov r8, r3
	ldrh r6, [r2, #0xa]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov ip, r0
	movs r0, #0
	cmp r0, r8
	bge _0802074E
_0802070C:
	movs r4, #0
	mov r1, sl
	adds r5, r1, r0
	adds r0, #1
	str r0, [sp, #0xc]
	adds r3, r5, #0
	lsls r0, r3, #6
	mov r7, sb
	adds r2, r0, r7
	lsls r0, r3, #5
	adds r0, r6, r0
	lsls r0, r0, #1
	mov r7, ip
	adds r1, r0, r7
_08020728:
	adds r0, r4, r6
	cmp r0, #0
	blt _0802073E
	cmp r5, #0
	blt _0802073E
	cmp r0, #0x1d
	bgt _0802073E
	cmp r3, #0x13
	bgt _0802073E
	ldrh r0, [r2]
	strh r0, [r1]
_0802073E:
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #0x20
	blt _08020728
	ldr r0, [sp, #0xc]
	cmp r0, r8
	blt _0802070C
_0802074E:
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	cmp r1, r0
	blt _080206C6
_08020756:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020768: .4byte 0x03002E20
_0802076C: .4byte 0x00000814

	thumb_func_start sub_8020770
sub_8020770: @ 0x08020770
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r4, _080208CC @ =_0809A9AC
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x20
	bl CpuFastSet
	ldr r4, _080208D0 @ =_080AACF0
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	bl dmaq_getVBlankDmaQueue
	ldr r1, _080208D4 @ =_080ACAFC
	ldr r2, _080208D8 @ =0x06001400
	ldr r3, _080208DC @ =0x80000600
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _080208E0 @ =_080ABEFC
	ldr r2, _080208E4 @ =0x06002000
	ldr r4, _080208E8 @ =0x80000400
	adds r3, r4, #0
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _080208EC @ =_0809AA2C
	ldr r2, _080208F0 @ =0x060009A0
	ldr r3, _080208F4 @ =0x80000130
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _080208F8 @ =_080AAE3C
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r3, r4, #0
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _080208FC @ =_080AB7FC
	ldr r2, _08020900 @ =0x06000800
	ldr r3, _08020904 @ =0x800000E0
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08020908 @ =_0809AE2C
	ldr r2, _0802090C @ =0x06001000
	ldr r3, _08020910 @ =0x80000240
	bl dmaq_enqueue
	ldr r4, _08020914 @ =_0809B4CC
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	movs r2, #3
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _08020918 @ =0x01000110
	mov r0, sp
	bl CpuFastSet
	ldr r0, _0802091C @ =0x03002E20
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r7, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	mov r8, r0
_08020842:
	adds r6, r7, #0
	adds r6, #0xd
	movs r0, #0
	adds r1, r6, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r4, r0, #0
	mov r0, r8
	adds r5, r0, r7
	movs r0, #0
	adds r1, r5, #0
	movs r2, #0x1c
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #0
	adds r1, r6, #0
	movs r2, #1
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r0, #0
	adds r1, r5, #0
	movs r2, #0x1d
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	adds r7, #1
	cmp r7, #2
	ble _08020842
	ldr r5, _0802091C @ =0x03002E20
	ldr r1, _08020920 @ =0x00000801
	adds r6, r5, r1
	ldrb r0, [r6]
	bl track_getCup
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrb r0, [r6]
	bl track_getCupIndex
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r4, r4, #2
	adds r6, r4, r0
	ldr r0, _08020924 @ =0x0000059C
	adds r5, r5, r0
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	bl sub_8032BC8
	cmp r0, #0
	beq _08020930
	ldr r4, _08020928 @ =gTrackDefTable
	adds r0, r6, #0
	bl track_getRetroTrack
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	ldr r1, _0802092C @ =0x06000C00
	bl LZ77UnCompVram
	b _08020946
	.align 2, 0
_080208CC: .4byte _0809A9AC
_080208D0: .4byte _080AACF0
_080208D4: .4byte _080ACAFC
_080208D8: .4byte 0x06001400
_080208DC: .4byte 0x80000600
_080208E0: .4byte _080ABEFC
_080208E4: .4byte 0x06002000
_080208E8: .4byte 0x80000400
_080208EC: .4byte _0809AA2C
_080208F0: .4byte 0x060009A0
_080208F4: .4byte 0x80000130
_080208F8: .4byte _080AAE3C
_080208FC: .4byte _080AB7FC
_08020900: .4byte 0x06000800
_08020904: .4byte 0x800000E0
_08020908: .4byte _0809AE2C
_0802090C: .4byte 0x06001000
_08020910: .4byte 0x80000240
_08020914: .4byte _0809B4CC
_08020918: .4byte 0x01000110
_0802091C: .4byte 0x03002E20
_08020920: .4byte 0x00000801
_08020924: .4byte 0x0000059C
_08020928: .4byte gTrackDefTable
_0802092C: .4byte 0x06000C00
_08020930:
	ldr r4, _08020954 @ =gTrackDefTable
	adds r0, r6, #0
	bl track_getMKSCTrack
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	ldr r1, _08020958 @ =0x06000C00
	bl LZ77UnCompVram
_08020946:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020954: .4byte gTrackDefTable
_08020958: .4byte 0x06000C00

	thumb_func_start sub_802095C
sub_802095C: @ 0x0802095C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	str r0, [sp, #0xc]
	mov r8, r1
	str r2, [sp, #0x10]
	mov sl, r3
	ldr r0, _08020A0C @ =0x03002E20
	ldr r1, _08020A10 @ =0x00000838
	adds r0, r0, r1
	ldr r0, [r0]
	mov r2, r8
	movs r3, #2
	ldrsh r4, [r2, r3]
	adds r0, #0x4c
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	bl sub_800EDB0
	movs r7, #0xf0
	lsls r7, r7, #8
	cmp r4, r0
	bne _08020996
	movs r7, #0xe0
	lsls r7, r7, #8
_08020996:
	ldr r4, [sp, #0xc]
	lsls r3, r4, #7
	mov r5, sl
	adds r1, r3, r5
	adds r2, r1, #0
	adds r2, #0xc2
	ldr r6, _08020A14 @ =0x00000101
	adds r0, r6, #0
	mov r4, r8
	ldrh r4, [r4]
	adds r0, r0, r4
	orrs r0, r7
	strh r0, [r2]
	movs r5, #0x81
	lsls r5, r5, #1
	adds r1, r1, r5
	adds r6, #0x20
	adds r0, r6, #0
	mov r2, r8
	ldrh r2, [r2]
	adds r0, r0, r2
	orrs r0, r7
	strh r0, [r1]
	ldr r0, _08020A18 @ =_080DB69C
	mov r4, r8
	movs r5, #2
	ldrsh r1, [r4, r5]
	lsls r2, r1, #3
	adds r2, r2, r0
	lsls r1, r1, #1
	adds r1, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r6, #0
	mov sb, r6
	str r3, [sp, #0x18]
	ldr r5, [r0, #0x40]
	mov ip, r6
	movs r0, #0x83
	lsls r0, r0, #1
	add r0, sl
	adds r4, r3, r0
	ldr r2, [r2]
	mov r0, sl
	adds r0, #0xc6
	adds r6, r3, r0
	ldr r3, [r1]
	movs r0, #0xe0
	lsls r0, r0, #2
	add r0, sl
	str r0, [sp, #0x14]
_080209FC:
	mov r1, sb
	cmp r1, #3
	bgt _08020A1C
	ldrh r0, [r2]
	strh r0, [r6]
	ldrh r0, [r3]
	b _08020A2E
	.align 2, 0
_08020A0C: .4byte 0x03002E20
_08020A10: .4byte 0x00000838
_08020A14: .4byte 0x00000101
_08020A18: .4byte _080DB69C
_08020A1C:
	ldrh r1, [r2]
	ldr r0, _08020A70 @ =0x00000FFF
	ands r0, r1
	orrs r0, r7
	strh r0, [r6]
	ldrh r1, [r3]
	ldr r0, _08020A70 @ =0x00000FFF
	ands r0, r1
	orrs r0, r7
_08020A2E:
	strh r0, [r4]
	ldr r0, [sp, #0xc]
	cmp r0, #7
	bne _08020A44
	ldr r0, [sp, #0x14]
	add r0, ip
	movs r1, #0xa3
	lsls r1, r1, #1
	adds r1, r0, r1
	ldrh r0, [r5]
	strh r0, [r1]
_08020A44:
	adds r5, #2
	movs r0, #2
	add ip, r0
	adds r4, #2
	adds r2, #2
	adds r6, #2
	adds r3, #2
	movs r1, #1
	add sb, r1
	mov r0, sb
	cmp r0, #8
	ble _080209FC
	ldr r1, [sp, #0x10]
	cmp r1, #1
	bne _08020A64
	b _08020B84
_08020A64:
	cmp r1, #1
	bgt _08020A74
	cmp r1, #0
	beq _08020A7E
	b _08020CB0
	.align 2, 0
_08020A70: .4byte 0x00000FFF
_08020A74:
	ldr r2, [sp, #0x10]
	cmp r2, #2
	bne _08020A7C
	b _08020C46
_08020A7C:
	b _08020CB0
_08020A7E:
	mov r3, r8
	ldrh r0, [r3, #4]
	add r2, sp, #4
	add r3, sp, #8
	mov r1, sp
	bl sub_804EFBC
	ldr r4, [sp, #0x18]
	add r4, sl
	mov ip, r4
	mov r1, ip
	adds r1, #0xda
	ldr r5, [sp]
	movs r6, #0xf
	mov sl, r6
	movs r0, #0xf
	mov r8, r0
	ands r5, r0
	str r5, [sp, #0x20]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r3, #0
	adds r0, r5, r2
	orrs r0, r7
	strh r0, [r1]
	mov r3, ip
	adds r3, #0xdc
	movs r4, #0x85
	lsls r4, r4, #1
	adds r1, r4, #0
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r3]
	mov r1, ip
	adds r1, #0xde
	ldr r3, [sp, #4]
	lsrs r5, r3, #4
	mov r6, sl
	ands r5, r6
	adds r0, r5, r2
	orrs r0, r7
	strh r0, [r1]
	adds r1, #2
	mov r4, r8
	ands r4, r3
	adds r0, r4, r2
	orrs r0, r7
	strh r0, [r1]
	mov r3, ip
	adds r3, #0xe2
	ldr r0, _08020B7C @ =0x0000010B
	adds r1, r0, #0
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r3]
	movs r1, #0xe4
	add r1, ip
	mov sb, r1
	ldr r1, [sp, #8]
	lsrs r3, r1, #4
	ands r3, r6
	adds r0, r3, r2
	orrs r0, r7
	mov r6, sb
	strh r0, [r6]
	movs r0, #0xe6
	add r0, ip
	mov r6, r8
	ands r6, r1
	mov r8, r6
	add r2, r8
	orrs r2, r7
	strh r2, [r0]
	movs r0, #0x8d
	lsls r0, r0, #1
	add r0, ip
	movs r1, #0x90
	lsls r1, r1, #1
	mov sb, r1
	ldr r6, [sp, #0x20]
	add r6, sb
	orrs r6, r7
	strh r6, [r0]
	movs r2, #0x8e
	lsls r2, r2, #1
	add r2, ip
	movs r6, #0x95
	lsls r6, r6, #1
	adds r1, r6, #0
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x8f
	lsls r0, r0, #1
	add r0, ip
	add r5, sb
	orrs r5, r7
	strh r5, [r0]
	movs r2, #0x90
	lsls r2, r2, #1
	mov r1, ip
	adds r0, r1, r2
	adds r4, r4, r2
	orrs r4, r7
	strh r4, [r0]
	movs r4, #0x91
	lsls r4, r4, #1
	add r4, ip
	ldr r5, _08020B80 @ =0x0000012B
	adds r1, r5, #0
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r4]
	movs r0, #0x92
	lsls r0, r0, #1
	add r0, ip
	adds r3, r3, r2
	orrs r3, r7
	strh r3, [r0]
	movs r0, #0x93
	lsls r0, r0, #1
	add r0, ip
	add r8, r2
	mov r6, r8
	orrs r7, r6
	strh r7, [r0]
	b _08020CB0
	.align 2, 0
_08020B7C: .4byte 0x0000010B
_08020B80: .4byte 0x0000012B
_08020B84:
	ldr r6, [sp, #0x18]
	add r6, sl
	adds r4, r6, #0
	adds r4, #0xee
	mov r1, r8
	movs r2, #6
	ldrsh r0, [r1, r2]
	movs r1, #0xa
	bl __divsi3
	movs r3, #0x80
	lsls r3, r3, #1
	mov sl, r3
	add r0, sl
	orrs r0, r7
	strh r0, [r4]
	adds r4, #2
	mov r5, r8
	movs r1, #6
	ldrsh r0, [r5, r1]
	movs r1, #0xa
	bl __modsi3
	add r0, sl
	orrs r0, r7
	strh r0, [r4]
	adds r0, r6, #0
	adds r0, #0xf2
	movs r5, #0
	strh r5, [r0]
	movs r2, #0x97
	lsls r2, r2, #1
	adds r4, r6, r2
	mov r3, r8
	movs r1, #6
	ldrsh r0, [r3, r1]
	movs r1, #0xa
	bl __divsi3
	movs r2, #0x90
	lsls r2, r2, #1
	mov sb, r2
	add r0, sb
	orrs r0, r7
	strh r0, [r4]
	movs r3, #0x98
	lsls r3, r3, #1
	adds r4, r6, r3
	mov r1, r8
	movs r2, #6
	ldrsh r0, [r1, r2]
	movs r1, #0xa
	bl __modsi3
	add r0, sb
	orrs r0, r7
	strh r0, [r4]
	movs r3, #0x99
	lsls r3, r3, #1
	adds r0, r6, r3
	strh r5, [r0]
	mov r4, r8
	movs r5, #0
	ldrsh r0, [r4, r5]
	cmp r0, #3
	bgt _08020CB0
	adds r2, r6, #0
	adds r2, #0xf4
	movs r0, #0x86
	lsls r0, r0, #1
	adds r1, r0, #0
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r2]
	adds r1, r6, #0
	adds r1, #0xf6
	ldrh r0, [r4, #8]
	add r0, sl
	orrs r0, r7
	strh r0, [r1]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r2, r6, r1
	subs r3, #6
	adds r1, r3, #0
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r2]
	movs r4, #0x9b
	lsls r4, r4, #1
	adds r1, r6, r4
	mov r5, r8
	ldrh r0, [r5, #8]
	add r0, sb
	orrs r7, r0
	strh r7, [r1]
	b _08020CB0
_08020C46:
	ldr r6, [sp, #0x18]
	add r6, sl
	adds r5, r6, #0
	adds r5, #0xee
	mov r1, r8
	movs r2, #6
	ldrsh r0, [r1, r2]
	movs r1, #0xa
	bl __divsi3
	movs r3, #0x80
	lsls r3, r3, #1
	adds r4, r3, #0
	adds r0, r0, r4
	orrs r0, r7
	strh r0, [r5]
	adds r5, #2
	mov r1, r8
	movs r2, #6
	ldrsh r0, [r1, r2]
	movs r1, #0xa
	bl __modsi3
	adds r0, r0, r4
	orrs r0, r7
	strh r0, [r5]
	movs r3, #0x97
	lsls r3, r3, #1
	adds r5, r6, r3
	mov r4, r8
	movs r1, #6
	ldrsh r0, [r4, r1]
	movs r1, #0xa
	bl __divsi3
	movs r2, #0x90
	lsls r2, r2, #1
	adds r4, r2, #0
	adds r0, r0, r4
	orrs r0, r7
	strh r0, [r5]
	movs r3, #0x98
	lsls r3, r3, #1
	adds r5, r6, r3
	mov r6, r8
	movs r1, #6
	ldrsh r0, [r6, r1]
	movs r1, #0xa
	bl __modsi3
	adds r0, r0, r4
	orrs r7, r0
	strh r7, [r5]
_08020CB0:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8020CC0
sub_8020CC0: @ 0x08020CC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r0, #0
	bl sub_800EDDC
	str r0, [sp, #8]
	ldr r0, _08020D24 @ =0x03002E20
	movs r5, #0
	ldr r1, _08020D28 @ =0x00000838
	adds r2, r0, r1
	lsls r1, r4, #2
	ldr r3, _08020D2C @ =0x00000818
	adds r0, r0, r3
	adds r1, r1, r0
	ldr r2, [r2]
	ldr r0, [r1]
	cmp r2, r0
	bne _08020CEE
	movs r5, #1
_08020CEE:
	lsls r0, r4, #1
	ldr r1, [sp, #8]
	adds r1, #0x14
	adds r3, r1, r0
	movs r4, #0
	ldrsh r2, [r3, r4]
	mov sb, r0
	mov sl, r1
	cmp r2, #4
	beq _08020D0E
	ldr r1, [sp, #8]
	adds r1, #0x2c
	add r1, sb
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_08020D0E:
	movs r7, #0
	ldrsh r0, [r3, r7]
	cmp r0, #4
	bls _08020D18
	b _08021220
_08020D18:
	lsls r0, r0, #2
	ldr r1, _08020D30 @ =_08020D34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08020D24: .4byte 0x03002E20
_08020D28: .4byte 0x00000838
_08020D2C: .4byte 0x00000818
_08020D30: .4byte _08020D34
_08020D34: @ jump table
	.4byte _08020D48 @ case 0
	.4byte _08020D90 @ case 1
	.4byte _08020E4C @ case 2
	.4byte _080210F2 @ case 3
	.4byte _080210F2 @ case 4
_08020D48:
	cmp r5, #0
	beq _08020D68
	ldr r4, _08020D8C @ =0x03002E20
	adds r4, #0x24
	adds r0, r4, #0
	bl sub_804D94C
	adds r0, r4, #0
	bl sub_804E144
	adds r0, r4, #0
	bl sub_804F2C0
	adds r0, r4, #0
	bl sub_804F340
_08020D68:
	ldr r0, [sp, #8]
	adds r0, #0x2c
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xb4
	bgt _08020D78
	b _08021220
_08020D78:
	mov r1, sl
	add r1, sb
	movs r2, #0
	movs r0, #1
	strh r0, [r1]
	ldr r0, [sp, #8]
	adds r0, #0x1c
	add r0, sb
	strh r2, [r0]
	b _08021220
	.align 2, 0
_08020D8C: .4byte 0x03002E20
_08020D90:
	ldr r6, [sp, #8]
	adds r6, #0x1c
	ldr r7, [sp, #8]
	adds r7, #0x24
	cmp r5, #0
	beq _08020E1A
	bl sub_800EDDC
	adds r1, r0, #0
	movs r2, #0
	ldr r0, _08020E30 @ =0x03002E20
	ldr r3, _08020E34 @ =0x00000814
	adds r0, r0, r3
	ldrb r4, [r0]
	cmp r2, r4
	bge _08020DC8
	ldr r3, _08020E38 @ =0x0000FFFF
	adds r4, r3, #0
	adds r3, r0, #0
	adds r1, #0x3a
_08020DB8:
	ldrh r0, [r1]
	orrs r0, r4
	strh r0, [r1]
	adds r1, #8
	adds r2, #1
	ldrb r0, [r3]
	cmp r2, r0
	blt _08020DB8
_08020DC8:
	bl dmaq_getVBlankDmaQueue
	adds r4, r0, #0
	ldr r5, _08020E3C @ =0x06003800
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r2, r0, #0
	ldr r3, _08020E40 @ =0x80000280
	adds r0, r4, #0
	adds r1, r5, #0
	bl dmaq_enqueue
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _08020E44 @ =0x01000140
	mov r0, sp
	bl CpuFastSet
	ldr r4, _08020E48 @ =_08064C90
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r2, #0xb9
	lsls r2, r2, #1
	adds r1, r1, r2
	adds r0, r4, #0
	movs r2, #2
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
_08020E1A:
	mov r1, sl
	add r1, sb
	movs r2, #0
	movs r0, #2
	strh r0, [r1]
	mov r3, sb
	adds r0, r6, r3
	strh r2, [r0]
	adds r0, r7, r3
	strh r2, [r0]
	b _08021220
	.align 2, 0
_08020E30: .4byte 0x03002E20
_08020E34: .4byte 0x00000814
_08020E38: .4byte 0x0000FFFF
_08020E3C: .4byte 0x06003800
_08020E40: .4byte 0x80000280
_08020E44: .4byte 0x01000140
_08020E48: .4byte _08064C90
_08020E4C:
	ldr r0, [sp, #8]
	adds r0, #0x24
	mov r4, sb
	adds r1, r0, r4
	ldrh r0, [r1]
	adds r0, #1
	movs r3, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _08020E66
	b _08021220
_08020E66:
	strh r3, [r1]
	ldr r0, [sp, #8]
	adds r0, #0x1c
	adds r2, r0, r4
	ldrh r1, [r2]
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r0, #7
	ble _08020E7A
	b _080210E6
_08020E7A:
	adds r0, r1, #1
	strh r0, [r2]
	cmp r5, #0
	bne _08020E84
	b _08021220
_08020E84:
	movs r0, #0
	ldrsh r6, [r2, r0]
	str r3, [sp, #4]
	add r4, sp, #4
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _08020ED4 @ =0x01000140
	adds r0, r4, #0
	bl CpuFastSet
	ldr r0, _08020ED8 @ =0x03002E20
	ldr r1, _08020EDC @ =0x0000080A
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r1, r0, #8
	movs r0, #0xf
	ands r1, r0
	movs r2, #1
	mov sb, r2
	cmp r1, #3
	ble _08020EBA
	movs r3, #2
	mov sb, r3
_08020EBA:
	movs r4, #2
	mov r8, r4
	cmp r1, #3
	ble _08020EC6
	movs r7, #1
	mov r8, r7
_08020EC6:
	movs r4, #0
	lsls r5, r6, #3
	adds r7, r1, #1
	rsbs r0, r6, #0
	mov sl, r0
	b _08020EFC
	.align 2, 0
_08020ED4: .4byte 0x01000140
_08020ED8: .4byte 0x03002E20
_08020EDC: .4byte 0x0000080A
_08020EE0:
	adds r1, r5, r6
	cmp r1, #0
	bge _08020EE8
	adds r1, #7
_08020EE8:
	asrs r1, r1, #3
	movs r0, #0x12
	subs r0, r0, r1
	mov r1, r8
	muls r1, r4, r1
	add r1, sb
	adds r2, r4, #0
	bl sub_8022004
	adds r4, #1
_08020EFC:
	adds r0, r7, #0
	muls r0, r6, r0
	cmp r0, #0
	bge _08020F06
	adds r0, #7
_08020F06:
	asrs r0, r0, #3
	cmp r4, r0
	blt _08020EE0
	adds r1, r5, r6
	cmp r1, #0
	bge _08020F14
	adds r1, #7
_08020F14:
	asrs r1, r1, #3
	movs r0, #0x12
	subs r0, r0, r1
	movs r2, #0
	cmp r6, #7
	ble _08020F22
	movs r2, #1
_08020F22:
	adds r1, r6, #0
	bl sub_8022264
	mov r8, sl
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0xc]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
_08020F44:
	movs r4, #0
	adds r5, r0, #2
	adds r0, #1
	mov ip, r0
	adds r3, r5, #0
	lsls r0, r3, #6
	ldr r1, [sp, #0xc]
	adds r2, r0, r1
	lsls r0, r3, #5
	add r0, r8
	lsls r0, r0, #1
	mov r7, sb
	adds r1, r0, r7
_08020F5E:
	mov r7, r8
	adds r0, r4, r7
	cmp r0, #0
	blt _08020F76
	cmp r5, #0
	blt _08020F76
	cmp r0, #0x1d
	bgt _08020F76
	cmp r3, #0x13
	bgt _08020F76
	ldrh r0, [r2]
	strh r0, [r1]
_08020F76:
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #4
	blt _08020F5E
	mov r0, ip
	cmp r0, #0xd
	blt _08020F44
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov r8, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
_08020FA0:
	movs r3, #0
	mov r1, sl
	adds r5, r0, r1
	adds r7, r0, #1
	adds r4, r5, #0
	lsls r1, r4, #5
	adds r1, #4
	lsls r0, r0, #5
	adds r2, r0, #4
	lsls r1, r1, #1
	add r1, sb
_08020FB6:
	adds r0, r3, #4
	cmp r0, #0
	blt _08020FD0
	cmp r5, #0
	blt _08020FD0
	cmp r0, #0x1d
	bgt _08020FD0
	cmp r4, #0x13
	bgt _08020FD0
	lsls r0, r2, #1
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r1]
_08020FD0:
	adds r1, #2
	adds r2, #1
	adds r3, #1
	cmp r3, #0xd
	blt _08020FB6
	adds r0, r7, #0
	cmp r0, #4
	blt _08020FA0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov r8, r0
	movs r0, #0
_08020FFA:
	adds r1, r0, #0
	adds r1, #0xc
	adds r0, #1
	mov sl, r0
	adds r4, r1, r6
	lsls r0, r4, #5
	lsls r1, r1, #5
	adds r1, #0x16
	adds r0, #0x16
	adds r0, r6, r0
	adds r2, r6, #0
	adds r2, #0x16
	movs r5, #8
	lsls r0, r0, #1
	mov r7, r8
	adds r3, r0, r7
	lsls r1, r1, #1
	add r1, sb
_0802101E:
	cmp r2, #0
	blt _08021032
	cmp r4, #0
	blt _08021032
	cmp r2, #0x1d
	bgt _08021032
	cmp r4, #0x13
	bgt _08021032
	ldrh r0, [r1]
	strh r0, [r3]
_08021032:
	adds r1, #2
	adds r3, #2
	adds r2, #1
	subs r5, #1
	cmp r5, #0
	bge _0802101E
	mov r0, sl
	cmp r0, #9
	blt _08020FFA
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov r8, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r7, r0, #0
	movs r0, #0
_0802105E:
	movs r1, #0
	adds r4, r0, #0
	adds r4, #0x10
	adds r6, r0, #1
	adds r3, r4, #0
	lsls r5, r3, #5
_0802106A:
	adds r2, r1, #1
	cmp r2, #0
	blt _08021088
	cmp r4, #0
	blt _08021088
	cmp r2, #0x1d
	bgt _08021088
	cmp r3, #0x13
	bgt _08021088
	adds r0, r5, r2
	lsls r0, r0, #1
	adds r1, r0, r7
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r1]
_08021088:
	adds r1, r2, #0
	cmp r1, #5
	blt _0802106A
	adds r0, r6, #0
	cmp r0, #3
	blt _0802105E
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r7, r0, #0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r6, r0, #0
	movs r0, #0
_080210AE:
	movs r4, #0
	adds r3, r0, #1
	adds r5, r3, #0
	lsls r0, r3, #6
	adds r2, r0, r7
	adds r1, r0, r6
_080210BA:
	cmp r4, #0
	blt _080210CE
	cmp r3, #0
	blt _080210CE
	cmp r4, #0x1d
	bgt _080210CE
	cmp r5, #0x13
	bgt _080210CE
	ldrh r0, [r2]
	strh r0, [r1]
_080210CE:
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #3
	blt _080210BA
	adds r0, r3, #0
	cmp r0, #1
	blt _080210AE
	movs r0, #1
	ldr r1, [sp, #8]
	str r0, [r1, #0x10]
	b _08021220
_080210E6:
	mov r1, sl
	add r1, sb
	movs r0, #3
	strh r0, [r1]
	strh r3, [r2]
	b _08021220
_080210F2:
	ldr r2, [sp, #8]
	adds r2, #0x2c
	str r2, [sp, #0x10]
	cmp r5, #0
	bne _080210FE
	b _08021208
_080210FE:
	movs r0, #0
	str r0, [sp, #4]
	add r4, sp, #4
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _08021230 @ =0x01000140
	adds r0, r4, #0
	bl CpuFastSet
	movs r0, #1
	bl sub_801FF70
	bl sub_8020008
	bl sub_802009C
	ldr r0, _08021234 @ =0x03002E20
	ldr r3, _08021238 @ =0x0000080A
	adds r0, r0, r3
	ldrh r0, [r0]
	lsrs r2, r0, #8
	movs r0, #0xf
	ands r2, r0
	movs r1, #1
	cmp r2, #3
	ble _0802113A
	movs r1, #2
_0802113A:
	movs r7, #2
	cmp r2, #3
	ble _08021142
	movs r7, #1
_08021142:
	movs r5, #0
	adds r6, r2, #1
	cmp r5, r6
	bge _0802115E
	adds r4, r1, #0
_0802114C:
	movs r0, #9
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_8022004
	adds r4, r4, r7
	adds r5, #1
	cmp r5, r6
	blt _0802114C
_0802115E:
	movs r0, #9
	movs r1, #8
	movs r2, #1
	bl sub_8022264
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov r8, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r7, r0, #0
	movs r0, #0
_08021182:
	movs r1, #0
	adds r4, r0, #0
	adds r4, #0x10
	adds r6, r0, #1
	adds r3, r4, #0
	lsls r5, r3, #5
_0802118E:
	adds r2, r1, #1
	cmp r2, #0
	blt _080211AC
	cmp r4, #0
	blt _080211AC
	cmp r2, #0x1d
	bgt _080211AC
	cmp r3, #0x13
	bgt _080211AC
	adds r0, r5, r2
	lsls r0, r0, #1
	adds r1, r0, r7
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r1]
_080211AC:
	adds r1, r2, #0
	cmp r1, #5
	blt _0802118E
	adds r0, r6, #0
	cmp r0, #3
	blt _08021182
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r7, r0, #0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r6, r0, #0
	movs r0, #0
_080211D2:
	movs r4, #0
	adds r3, r0, #1
	adds r5, r3, #0
	lsls r0, r3, #6
	adds r2, r0, r7
	adds r1, r0, r6
_080211DE:
	cmp r4, #0
	blt _080211F2
	cmp r3, #0
	blt _080211F2
	cmp r4, #0x1d
	bgt _080211F2
	cmp r5, #0x13
	bgt _080211F2
	ldrh r0, [r2]
	strh r0, [r1]
_080211F2:
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #3
	blt _080211DE
	adds r0, r3, #0
	cmp r0, #1
	blt _080211D2
	movs r0, #1
	ldr r4, [sp, #8]
	str r0, [r4, #0x10]
_08021208:
	ldr r0, [sp, #0x10]
	add r0, sb
	movs r7, #0
	ldrsh r1, [r0, r7]
	movs r0, #0x87
	lsls r0, r0, #2
	cmp r1, r0
	ble _08021220
	mov r1, sl
	add r1, sb
	movs r0, #4
	strh r0, [r1]
_08021220:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021230: .4byte 0x01000140
_08021234: .4byte 0x03002E20
_08021238: .4byte 0x0000080A

	thumb_func_start sub_802123C
sub_802123C: @ 0x0802123C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	ldr r0, _0802126C @ =0x03002E20
	adds r0, #0x24
	mov sl, r0
	bl sub_800EDDC
	mov sb, r0
	movs r0, #0
	mov r1, sb
	str r0, [r1, #0x10]
	ldr r0, [r1, #4]
	cmp r0, #0xc
	bls _08021262
	b _080219F2
_08021262:
	lsls r0, r0, #2
	ldr r1, _08021270 @ =_08021274
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802126C: .4byte 0x03002E20
_08021270: .4byte _08021274
_08021274: @ jump table
	.4byte _080212A8 @ case 0
	.4byte _08021338 @ case 1
	.4byte _08021360 @ case 2
	.4byte _080213DA @ case 3
	.4byte _080213FC @ case 4
	.4byte _0802148C @ case 5
	.4byte _08021508 @ case 6
	.4byte _08021528 @ case 7
	.4byte _08021756 @ case 8
	.4byte _08021628 @ case 9
	.4byte _080217A4 @ case 10
	.4byte _0802197A @ case 11
	.4byte _080219F2 @ case 12
_080212A8:
	movs r5, #0
	b _080212C8
_080212AC:
	lsls r1, r5, #2
	ldr r0, _08021330 @ =0x000007F4
	add r0, sl
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080212C6
	adds r0, r5, #0
	bl sub_8020CC0
_080212C6:
	adds r5, #1
_080212C8:
	ldr r0, _08021334 @ =0x000007D7
	add r0, sl
	ldrb r0, [r0]
	cmp r5, r0
	blt _080212AC
	movs r4, #1
	movs r1, #1
	ldr r0, _08021334 @ =0x000007D7
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _080212FC
	movs r3, #0x20
	ldr r2, _08021330 @ =0x000007F4
	add r2, sl
	adds r5, r0, #0
_080212E8:
	ldr r0, [r2]
	ldr r0, [r0, #0x48]
	ands r0, r3
	cmp r0, #0
	bne _080212F4
	movs r4, #0
_080212F4:
	adds r2, #4
	subs r5, #1
	cmp r5, #0
	bne _080212E8
_080212FC:
	ldr r0, _08021334 @ =0x000007D7
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802131E
	mov r2, sb
	adds r2, #0x14
	adds r5, r0, #0
_0802130C:
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #4
	beq _08021316
	movs r1, #0
_08021316:
	adds r2, #2
	subs r5, #1
	cmp r5, #0
	bne _0802130C
_0802131E:
	cmp r4, #1
	beq _08021324
	b _080219F2
_08021324:
	cmp r1, #1
	beq _0802132A
	b _080219F2
_0802132A:
	mov r6, sb
	str r1, [r6, #4]
	b _080219F2
	.align 2, 0
_08021330: .4byte 0x000007F4
_08021334: .4byte 0x000007D7
_08021338:
	ldr r0, _0802135C @ =0x000007D7
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802134A
	adds r5, r0, #0
_08021344:
	subs r5, #1
	cmp r5, #0
	bne _08021344
_0802134A:
	movs r0, #0x11
	bl m4aSongNumStart
	movs r0, #0
	mov r1, sb
	str r0, [r1, #8]
	movs r0, #2
	b _080219F0
	.align 2, 0
_0802135C: .4byte 0x000007D7
_08021360:
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _080213B8 @ =0x01000140
	mov r0, sp
	bl CpuFastSet
	movs r5, #0
	movs r0, #0xfe
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0]
	cmp r5, r0
	bge _080213D6
	mov r6, sb
	adds r6, #0x34
_08021388:
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	mov r0, sl
	bl sub_804AED4
	adds r4, r0, #0
	strh r5, [r6]
	adds r0, #0x4c
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	bl sub_800EDB0
	strh r0, [r6, #2]
	ldr r0, [r4, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080213BC
	adds r0, r4, #0
	bl sub_803DAC4
	b _080213C4
	.align 2, 0
_080213B8: .4byte 0x01000140
_080213BC:
	adds r0, r4, #0
	mov r1, sl
	bl sub_803D7B8
_080213C4:
	strh r0, [r6, #4]
	adds r6, #0x10
	adds r5, #1
	movs r0, #0xfe
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0]
	cmp r5, r0
	blt _08021388
_080213D6:
	movs r0, #3
	b _08021974
_080213DA:
	movs r0, #0
	str r0, [sp, #4]
	add r4, sp, #4
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _080213F8 @ =0x01000140
	adds r0, r4, #0
	bl CpuFastSet
	movs r0, #4
	b _08021750
	.align 2, 0
_080213F8: .4byte 0x01000140
_080213FC:
	bl sub_8020770
	movs r5, #0
	movs r0, #0xfe
	lsls r0, r0, #3
	add r0, sl
	ldr r6, _08021480 @ =0x00000BE4
	add r6, sl
	ldrb r0, [r0]
	cmp r5, r0
	bge _0802143C
	mov r4, sb
	adds r4, #0x34
_08021416:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r3, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_802095C
	adds r4, #0x10
	adds r5, #1
	movs r0, #0xfe
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0]
	cmp r5, r0
	blt _08021416
_0802143C:
	movs r0, #0xf
	str r0, [r6]
	bl sub_800EDDC
	adds r3, r0, #0
	movs r2, #0
	ldr r0, _08021484 @ =0x03002E20
	ldr r6, _08021488 @ =0x00000814
	adds r0, r0, r6
	ldrb r1, [r0]
	cmp r2, r1
	bge _0802146E
	movs r5, #0x20
	adds r4, r0, #0
	movs r1, #0
	adds r0, r3, #0
	adds r0, #0x3e
_0802145E:
	strh r5, [r0]
	strh r1, [r0, #2]
	adds r1, #3
	adds r0, #0x10
	adds r2, #1
	ldrb r3, [r4]
	cmp r2, r3
	blt _0802145E
_0802146E:
	movs r0, #1
	mov r6, sb
	str r0, [r6, #0x10]
	movs r0, #0
	str r0, [r6, #8]
	movs r0, #5
	str r0, [r6, #4]
	b _080219F2
	.align 2, 0
_08021480: .4byte 0x00000BE4
_08021484: .4byte 0x03002E20
_08021488: .4byte 0x00000814
_0802148C:
	bl sub_800EDDC
	adds r1, r0, #0
	movs r2, #0
	ldr r0, _080214B0 @ =0x03002E20
	ldr r3, _080214B4 @ =0x00000814
	adds r0, r0, r3
	ldrb r6, [r0]
	cmp r2, r6
	bge _080214CC
	adds r3, r0, #0
	adds r1, #0x3e
_080214A4:
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _080214B8
	subs r0, #1
	strh r0, [r1, #2]
	b _080214C2
	.align 2, 0
_080214B0: .4byte 0x03002E20
_080214B4: .4byte 0x00000814
_080214B8:
	ldrh r0, [r1]
	cmp r0, #0
	beq _080214C2
	subs r0, #1
	strh r0, [r1]
_080214C2:
	adds r1, #0x10
	adds r2, #1
	ldrb r0, [r3]
	cmp r2, r0
	blt _080214A4
_080214CC:
	bl sub_80206A4
	movs r0, #1
	mov r1, sb
	str r0, [r1, #0x10]
	ldr r0, [r1, #8]
	adds r0, #1
	str r0, [r1, #8]
	cmp r0, #0x3c
	ble _080214E8
	movs r0, #0
	str r0, [r1, #8]
	movs r0, #6
	str r0, [r1, #4]
_080214E8:
	movs r1, #9
	ldr r0, _08021504 @ =0x03004EA0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _080214F6
	b _080219F2
_080214F6:
	movs r0, #0
	mov r2, sb
	str r0, [r2, #8]
	movs r0, #6
	str r0, [r2, #4]
	b _080219F2
	.align 2, 0
_08021504: .4byte 0x03004EA0
_08021508:
	movs r0, #0
	str r0, [sp, #8]
	add r4, sp, #8
	movs r1, #0
	movs r2, #3
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _08021524 @ =0x01000110
	adds r0, r4, #0
	bl CpuFastSet
	movs r0, #7
	b _08021750
	.align 2, 0
_08021524: .4byte 0x01000110
_08021528:
	movs r5, #0
	movs r0, #0xfe
	lsls r0, r0, #3
	add r0, sl
	ldr r6, _08021614 @ =0x00000BEE
	add r6, sl
	ldrb r0, [r0]
	cmp r5, r0
	bge _08021564
	mov r4, sb
	adds r4, #0x34
_0802153E:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r3, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_802095C
	adds r4, #0x10
	adds r5, #1
	movs r0, #0xfe
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0]
	cmp r5, r0
	blt _0802153E
_08021564:
	movs r4, #1
	mov r0, sb
	str r4, [r0, #0x10]
	ldr r1, _08021618 @ =_080DB6FC
	ldr r5, [r1, #8]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r5, #0
	bl LZ77UnCompWram
	ldr r5, _0802161C @ =_0809BD7C
	movs r0, #0
	movs r1, #0
	movs r2, #0x14
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r5, #0
	bl LZ77UnCompWram
	ldrh r0, [r6]
	lsrs r0, r0, #1
	bics r4, r0
	cmp r4, #0
	bne _08021606
	ldr r2, _08021618 @ =_080DB6FC
	ldrb r0, [r2, #1]
	lsls r0, r0, #1
	movs r1, #0x13
	subs r1, r1, r0
	mov sl, r1
	movs r1, #0
	ldr r3, _08021620 @ =0x00000FFF
	mov r8, r3
_080215B0:
	adds r7, r1, #1
	adds r5, r1, #0
	adds r5, #0x16
	mov r4, sl
	adds r4, #2
	movs r6, #1
_080215BC:
	movs r0, #1
	adds r1, r5, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldrh r1, [r0]
	mov r2, r8
	ands r1, r2
	strh r1, [r0]
	movs r0, #1
	adds r1, r5, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldrh r1, [r0]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	adds r4, #1
	subs r6, #1
	cmp r6, #0
	bge _080215BC
	adds r1, r7, #0
	cmp r1, #6
	ble _080215B0
	ldr r4, _08021624 @ =_080AAD7C
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x80
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
_08021606:
	movs r0, #0
	mov r6, sb
	str r0, [r6, #8]
	movs r0, #9
	str r0, [r6, #4]
	b _080219F2
	.align 2, 0
_08021614: .4byte 0x00000BEE
_08021618: .4byte _080DB6FC
_0802161C: .4byte _0809BD7C
_08021620: .4byte 0x00000FFF
_08021624: .4byte _080AAD7C
_08021628:
	ldr r0, _080216BC @ =_080DB6FC
	ldrb r1, [r0, #1]
	mov r3, sb
	ldr r2, [r3, #8]
	cmp r2, r1
	blt _08021636
	b _08021738
_08021636:
	lsls r1, r1, #1
	movs r0, #0x13
	subs r0, r0, r1
	adds r2, #1
	str r2, [r3, #8]
	ldr r6, _080216BC @ =_080DB6FC
	ldrb r1, [r6, #1]
	adds r0, r0, r1
	mov sl, r0
	adds r1, #1
	str r1, [sp, #0xc]
	adds r7, r2, #0
	mov r8, r7
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x10]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x14]
	cmp r7, #0
	bge _08021676
	movs r0, #0
	mov r8, r0
	cmp r7, #0
	bge _08021676
	movs r7, #0
_08021676:
	mov r1, r8
	cmp r1, #5
	ble _08021680
	movs r2, #5
	mov r8, r2
_08021680:
	ldr r3, [sp, #0xc]
	cmp r7, r3
	ble _08021688
	adds r7, r3, #0
_08021688:
	movs r5, #0
	lsls r0, r7, #1
	cmp r5, r0
	bge _08021730
	mov r6, r8
	lsls r6, r6, #1
	str r6, [sp, #0x20]
	str r0, [sp, #0x1c]
_08021698:
	movs r4, #0
	adds r0, r5, #1
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	cmp r4, r1
	bge _08021728
	str r1, [sp, #0x30]
	ldr r2, [sp, #0xc]
	add r2, sl
	str r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	subs r3, r5, r3
	mov ip, r3
_080216B2:
	cmp r4, r8
	bge _080216C0
	adds r3, r4, #0
	adds r3, #0x14
	b _080216C8
	.align 2, 0
_080216BC: .4byte _080DB6FC
_080216C0:
	ldr r6, [sp, #0x30]
	subs r0, r4, r6
	adds r3, r0, #0
	adds r3, #0x1e
_080216C8:
	cmp r5, r7
	bge _080216D6
	mov r1, sl
	ldr r2, [sp, #0xc]
	subs r0, r1, r2
	adds r1, r0, r5
	b _080216DA
_080216D6:
	ldr r1, [sp, #0x18]
	add r1, ip
_080216DA:
	cmp r3, #0
	blt _08021720
	cmp r1, #0
	blt _08021720
	cmp r3, #0x1d
	bgt _08021720
	cmp r1, #0x13
	bgt _08021720
	movs r6, #0x19
	mov r2, r8
	subs r0, r6, r2
	adds r2, r0, r4
	mov r6, sl
	subs r0, r6, r7
	adds r0, r0, r5
	cmp r2, #0
	blt _08021720
	cmp r0, #0
	blt _08021720
	cmp r2, #0x1d
	bgt _08021720
	cmp r0, #0x13
	bgt _08021720
	lsls r0, r0, #5
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r2, [sp, #0x14]
	adds r0, r0, r2
	lsls r1, r1, #5
	adds r1, r1, r3
	lsls r1, r1, #1
	ldr r3, [sp, #0x10]
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r0]
_08021720:
	adds r4, #1
	ldr r6, [sp, #0x30]
	cmp r4, r6
	blt _080216B2
_08021728:
	ldr r5, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	cmp r5, r0
	blt _08021698
_08021730:
	movs r0, #1
	mov r1, sb
	str r0, [r1, #0x10]
	b _08021742
_08021738:
	movs r0, #8
	mov r2, sb
	str r0, [r2, #4]
	movs r0, #0
	str r0, [r2, #8]
_08021742:
	movs r0, #9
	bl main_checkKeysTriggered
	cmp r0, #0
	bne _0802174E
	b _080219F2
_0802174E:
	movs r0, #8
_08021750:
	mov r3, sb
	str r0, [r3, #4]
	b _080219F2
_08021756:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r6, r0, #0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r5, r0, #0
	movs r1, #8
_08021770:
	adds r4, r1, #1
	lsls r1, r1, #6
	adds r0, r1, r6
	adds r2, r0, #0
	adds r2, #0x28
	adds r1, r1, r5
	adds r1, #0x28
	movs r3, #9
_08021780:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bge _08021780
	adds r1, r4, #0
	cmp r1, #0x13
	ble _08021770
	movs r0, #1
	mov r6, sb
	str r0, [r6, #0x10]
	movs r0, #0xa
	str r0, [r6, #4]
	movs r0, #0
	str r0, [r6, #8]
	b _080219F2
_080217A4:
	mov r0, sb
	ldr r0, [r0]
	mov r8, r0
	ldr r1, _08021960 @ =_080DB6FC
	ldrb r0, [r1, #1]
	lsls r0, r0, #1
	movs r1, #0x13
	subs r7, r1, r0
	mov r3, r8
	lsls r2, r3, #1
	adds r2, r7, r2
	movs r0, #0
	movs r1, #0x15
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x1b
	movs r2, #0x1e
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	mov r6, sb
	ldr r2, [r6]
	lsls r2, r2, #1
	adds r2, #1
	adds r2, r7, r2
	movs r0, #0
	movs r1, #0x15
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x1b
	movs r2, #0x1f
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r1, _08021960 @ =_080DB6FC
	ldr r0, [r1, #4]
	ldr r1, [r6]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _08021812
	ldr r0, _08021964 @ =0x00000BEE
	add r0, sl
	ldrh r1, [r0]
	lsrs r1, r1, #1
	movs r0, #1
	bics r0, r1
	cmp r0, #0
	beq _08021862
_08021812:
	movs r1, #0
_08021814:
	movs r4, #0
	adds r6, r1, #1
	adds r5, r1, #0
	adds r5, #0x16
_0802181C:
	mov r3, sb
	ldr r2, [r3]
	lsls r2, r2, #1
	adds r2, r7, r2
	adds r2, r2, r4
	movs r0, #0
	adds r1, r5, #0
	bl map_getBufferPtr2d
	ldrh r1, [r0]
	ldr r3, _08021968 @ =0x00000FFF
	adds r2, r3, #0
	ands r1, r2
	strh r1, [r0]
	mov r0, sb
	ldr r2, [r0]
	lsls r2, r2, #1
	adds r2, r7, r2
	adds r2, r2, r4
	movs r0, #0
	adds r1, r5, #0
	bl map_getBufferPtr2d
	ldrh r1, [r0]
	movs r3, #0xe0
	lsls r3, r3, #8
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	adds r4, #1
	cmp r4, #1
	ble _0802181C
	adds r1, r6, #0
	cmp r1, #6
	ble _08021814
_08021862:
	bl main_getRepeatTriggerKeys
	movs r1, #0x40
	ands r1, r0
	cmp r1, #0
	beq _08021876
	mov r6, sb
	ldr r0, [r6]
	subs r0, #1
	str r0, [r6]
_08021876:
	bl main_getRepeatTriggerKeys
	movs r1, #0x80
	ands r1, r0
	cmp r1, #0
	beq _0802188A
	mov r1, sb
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_0802188A:
	mov r2, sb
	ldr r0, [r2]
	cmp r0, #0
	bge _0802189A
	ldr r3, _08021960 @ =_080DB6FC
	ldrb r0, [r3, #1]
	subs r0, #1
	str r0, [r2]
_0802189A:
	ldr r6, _08021960 @ =_080DB6FC
	ldrb r0, [r6, #1]
	subs r0, #1
	mov r2, sb
	ldr r1, [r2]
	cmp r1, r0
	ble _080218AC
	movs r0, #0
	str r0, [r2]
_080218AC:
	mov r3, sb
	ldr r0, [r3]
	cmp r8, r0
	beq _08021928
	mov r6, r8
	lsls r4, r6, #1
	adds r2, r7, r4
	movs r0, #0
	movs r1, #0x15
	bl map_getBufferPtr2d
	movs r5, #0
	strh r5, [r0]
	adds r2, r4, #1
	adds r2, r7, r2
	movs r0, #0
	movs r1, #0x15
	bl map_getBufferPtr2d
	strh r5, [r0]
	ldr r1, _08021960 @ =_080DB6FC
	ldr r0, [r1, #4]
	add r0, r8
	ldrb r0, [r0]
	mov r8, r4
	cmp r0, #3
	bne _080218F2
	ldr r0, _08021964 @ =0x00000BEE
	add r0, sl
	ldrh r1, [r0]
	lsrs r1, r1, #1
	movs r0, #1
	bics r0, r1
	cmp r0, #0
	beq _08021922
_080218F2:
	movs r0, #0
_080218F4:
	movs r5, #0
	adds r6, r0, #0
	adds r6, #0x16
	adds r4, r0, #1
_080218FC:
	mov r3, r8
	adds r2, r7, r3
	adds r2, r2, r5
	movs r0, #0
	adds r1, r6, #0
	bl map_getBufferPtr2d
	ldrh r1, [r0]
	movs r3, #0xf0
	lsls r3, r3, #8
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	adds r5, #1
	cmp r5, #1
	ble _080218FC
	adds r0, r4, #0
	cmp r0, #6
	ble _080218F4
_08021922:
	movs r0, #0x8d
	bl m4aSongNumStart
_08021928:
	movs r4, #1
	mov r6, sb
	str r4, [r6, #0x10]
	movs r0, #9
	bl main_checkKeysTriggered
	cmp r0, #0
	beq _080219F2
	ldr r1, _08021960 @ =_080DB6FC
	ldr r0, [r1, #4]
	ldr r1, [r6]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _0802196C
	ldr r0, _08021964 @ =0x00000BEE
	add r0, sl
	ldrh r1, [r0]
	lsrs r1, r1, #1
	adds r0, r4, #0
	bics r0, r1
	cmp r0, #0
	bne _0802196C
	movs r0, #0x91
	bl m4aSongNumStart
	b _080219F2
	.align 2, 0
_08021960: .4byte _080DB6FC
_08021964: .4byte 0x00000BEE
_08021968: .4byte 0x00000FFF
_0802196C:
	movs r0, #0x8f
	bl m4aSongNumStart
	movs r0, #0xb
_08021974:
	mov r2, sb
	str r0, [r2, #4]
	b _080219F2
_0802197A:
	ldr r3, _08021994 @ =_080DB6FC
	ldr r0, [r3, #4]
	mov r6, sb
	ldr r1, [r6]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #7
	bhi _080219EC
	lsls r0, r0, #2
	ldr r1, _08021998 @ =_0802199C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08021994: .4byte _080DB6FC
_08021998: .4byte _0802199C
_0802199C: @ jump table
	.4byte _080219BC @ case 0
	.4byte _080219D0 @ case 1
	.4byte _080219D4 @ case 2
	.4byte _080219D8 @ case 3
	.4byte _080219DC @ case 4
	.4byte _080219EC @ case 5
	.4byte _080219EC @ case 6
	.4byte _080219EC @ case 7
_080219BC:
	movs r0, #1
	movs r1, #0xfd
	lsls r1, r1, #3
	add r1, sl
	strb r0, [r1]
	ldr r1, _080219CC @ =0x03005C50
	b _080219EA
	.align 2, 0
_080219CC: .4byte 0x03005C50
_080219D0:
	movs r1, #2
	b _080219DE
_080219D4:
	movs r1, #3
	b _080219DE
_080219D8:
	movs r1, #6
	b _080219DE
_080219DC:
	movs r1, #4
_080219DE:
	movs r0, #0xfd
	lsls r0, r0, #3
	add r0, sl
	strb r1, [r0]
	ldr r1, _08021AE8 @ =0x03005C50
	movs r0, #1
_080219EA:
	str r0, [r1]
_080219EC:
	movs r0, #0xc
	mov r1, sb
_080219F0:
	str r0, [r1, #4]
_080219F2:
	mov r2, sb
	ldr r0, [r2, #0x10]
	cmp r0, #0
	beq _08021A00
	movs r0, #1
	bl map_setBufferDirty
_08021A00:
	mov r3, sb
	ldr r0, [r3, #4]
	cmp r0, #9
	ble _08021AD6
	ldr r0, _08021AEC @ =0x03002E20
	ldr r0, [r0, #0x10]
	ldr r2, _08021AF0 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08021A18
	adds r0, #0x3f
_08021A18:
	asrs r1, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	ldr r1, _08021AF4 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	subs r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov sb, r0
	movs r6, #0
	mov sl, r6
	movs r0, #0x1f
	mov r8, r0
	movs r7, #0x1f
	ldr r1, _08021AF8 @ =_080AAD3C
	adds r1, #0x40
	str r1, [sp, #0x28]
_08021A48:
	mov r2, sl
	lsls r2, r2, #1
	str r2, [sp, #0x34]
	ldr r3, _08021AF8 @ =_080AAD3C
	adds r0, r2, r3
	ldrh r4, [r0]
	adds r5, r4, #0
	ands r5, r7
	lsrs r6, r4, #5
	mov r0, r8
	ands r6, r0
	lsrs r4, r4, #0xa
	ands r4, r0
	ldr r2, [sp, #0x28]
	ldrh r1, [r2]
	adds r0, r1, #0
	ands r0, r7
	lsrs r2, r1, #5
	mov r3, r8
	ands r2, r3
	lsrs r1, r1, #0xa
	ands r1, r3
	subs r0, r0, r5
	mov r3, sb
	muls r3, r0, r3
	adds r0, r3, #0
	asrs r0, r0, #0xf
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	subs r2, r2, r6
	mov r0, sb
	muls r0, r2, r0
	asrs r0, r0, #0xf
	adds r6, r6, r0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	subs r1, r1, r4
	mov r0, sb
	muls r0, r1, r0
	asrs r0, r0, #0xf
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0
	bl pltt_getBuffer
	ldr r1, [sp, #0x34]
	adds r3, r1, r0
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r3, r3, r2
	ands r5, r7
	ands r6, r7
	lsls r6, r6, #5
	orrs r5, r6
	ands r4, r7
	lsls r4, r4, #0xa
	orrs r5, r4
	strh r5, [r3]
	ldr r3, [sp, #0x28]
	adds r3, #2
	str r3, [sp, #0x28]
	movs r6, #1
	add sl, r6
	mov r0, sl
	cmp r0, #0xf
	ble _08021A48
	movs r0, #1
	bl pltt_setDirtyFlag
_08021AD6:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021AE8: .4byte 0x03005C50
_08021AEC: .4byte 0x03002E20
_08021AF0: .4byte gSinTable
_08021AF4: .4byte 0x000003FF
_08021AF8: .4byte _080AAD3C

	thumb_func_start sub_8021AFC
sub_8021AFC: @ 0x08021AFC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r4, _08021B50 @ =0x03002E20
	movs r0, #0x24
	adds r0, r0, r4
	mov sb, r0
	ldr r1, _08021B54 @ =0x00000838
	adds r0, r4, r1
	ldr r0, [r0]
	bl sub_803DAC4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r2, #0
	mov r8, r2
	ldr r0, _08021B58 @ =0x00000801
	adds r5, r4, r0
	ldrb r0, [r5]
	movs r1, #5
	bl sub_8032D80
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r7, r0
	blo _08021B3E
	ldr r1, _08021B5C @ =0x00000C12
	adds r2, r4, r1
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
_08021B3E:
	ldr r2, _08021B5C @ =0x00000C12
	adds r0, r4, r2
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08021B60
	movs r0, #0
	b _08021BD2
	.align 2, 0
_08021B50: .4byte 0x03002E20
_08021B54: .4byte 0x00000838
_08021B58: .4byte 0x00000801
_08021B5C: .4byte 0x00000C12
_08021B60:
	cmp r7, #0
	beq _08021B8C
	ldr r0, _08021B80 @ =0x02020400
	adds r0, #8
	ldrb r1, [r0, #9]
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _08021B74
	movs r2, #1
	mov r8, r2
_08021B74:
	ldrb r5, [r5]
	cmp r1, r5
	beq _08021B84
	movs r0, #1
	mov r8, r0
	b _08021B92
	.align 2, 0
_08021B80: .4byte 0x02020400
_08021B84:
	cmp r0, r7
	bls _08021B8C
	movs r1, #1
	mov r8, r1
_08021B8C:
	mov r2, r8
	cmp r2, #0
	beq _08021BD0
_08021B92:
	ldr r5, _08021BE0 @ =0x02024400
	movs r6, #0
	strh r7, [r5, #0xa]
	bl save_getSavePointer_805D9B0
	adds r4, r0, #0
	ldr r0, _08021BE4 @ =0x000007DD
	add r0, sb
	ldrb r0, [r0]
	bl track_getTrackIndex
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0xb2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r4, r4, r1
	str r6, [r4, #4]
	ldr r2, _08021BE8 @ =0xFFFFC000
	adds r1, r5, r2
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r5, #0
	bl CpuSet
	movs r0, #1
	bl sub_801528C
_08021BD0:
	mov r0, r8
_08021BD2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08021BE0: .4byte 0x02024400
_08021BE4: .4byte 0x000007DD
_08021BE8: .4byte 0xFFFFC000

	thumb_func_start sub_8021BEC
sub_8021BEC: @ 0x08021BEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	str r1, [sp, #4]
	ldr r0, _08021C98 @ =0x03000194
	subs r1, #1
	str r1, [r0]
	ldr r0, _08021C9C @ =0x03000198
	str r1, [r0]
	ldr r0, _08021CA0 @ =0x0300019C
	ldr r2, [sp, #4]
	str r2, [r0]
	ldr r0, _08021CA4 @ =0x030001A0
	str r2, [r0]
	ldr r4, _08021CA8 @ =0x03002E20
	ldr r0, _08021CAC @ =0x00000801
	adds r5, r4, r0
	ldrb r0, [r5]
	bl track_getCup
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldrb r0, [r5]
	bl track_getCupIndex
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r1, _08021CB0 @ =0x0000059C
	adds r4, r4, r1
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	bl sub_8032BC8
	str r0, [sp, #0x10]
	ldr r2, [sp, #0xc]
	lsls r2, r2, #5
	mov r8, r2
	ldr r0, [sp, #8]
	lsls r7, r0, #7
	movs r1, #0
	mov sb, r1
	movs r2, #0x50
	str r2, [sp, #0x24]
	movs r0, #4
	mov sl, r0
_08021C56:
	bl sub_800EDEC
	ldr r1, [sp, #0x24]
	adds r4, r0, r1
	ldr r2, [sp, #0x10]
	cmp r2, #0
	beq _08021CB4
	bl save_getSavePointer_805D9B0
	adds r0, r7, r0
	add r0, r8
	add r0, sb
	movs r1, #0xb9
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [r4]
	bl save_getSavePointer_805D9B0
	adds r0, r7, r0
	add r0, r8
	add r0, sb
	movs r2, #0xb9
	lsls r2, r2, #2
	adds r0, r0, r2
	ldrh r0, [r0, #2]
	strh r0, [r4, #4]
	ldr r0, [sp, #0xc]
	lsls r6, r0, #5
	ldr r1, [sp, #8]
	lsls r5, r1, #7
	b _08021CDC
	.align 2, 0
_08021C98: .4byte 0x03000194
_08021C9C: .4byte 0x03000198
_08021CA0: .4byte 0x0300019C
_08021CA4: .4byte 0x030001A0
_08021CA8: .4byte 0x03002E20
_08021CAC: .4byte 0x00000801
_08021CB0: .4byte 0x0000059C
_08021CB4:
	bl save_getSavePointer_805D9B0
	adds r0, r7, r0
	add r0, r8
	add r0, sb
	adds r0, #0x64
	ldrb r0, [r0]
	str r0, [r4]
	bl save_getSavePointer_805D9B0
	adds r0, r7, r0
	add r0, r8
	add r0, sb
	adds r0, #0x64
	ldrh r0, [r0, #2]
	strh r0, [r4, #4]
	ldr r2, [sp, #0xc]
	lsls r6, r2, #5
	ldr r0, [sp, #8]
	lsls r5, r0, #7
_08021CDC:
	movs r0, #0
	str r0, [r4, #8]
	movs r1, #4
	add sb, r1
	ldr r2, [sp, #0x24]
	adds r2, #0xc
	str r2, [sp, #0x24]
	subs r0, #1
	add sl, r0
	mov r1, sl
	cmp r1, #0
	bge _08021C56
	bl sub_800EDEC
	adds r7, r0, #0
	adds r7, #0x8c
	ldr r2, [sp, #0x10]
	cmp r2, #0
	beq _08021D20
	bl save_getSavePointer_805D9B0
	adds r0, r5, r0
	adds r0, r6, r0
	movs r4, #0xbe
	lsls r4, r4, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	str r0, [r7]
	bl save_getSavePointer_805D9B0
	adds r0, r5, r0
	adds r0, r6, r0
	adds r0, r0, r4
	b _08021D38
_08021D20:
	bl save_getSavePointer_805D9B0
	adds r0, r5, r0
	adds r0, r6, r0
	adds r0, #0x78
	ldrb r0, [r0]
	str r0, [r7]
	bl save_getSavePointer_805D9B0
	adds r0, r5, r0
	adds r0, r6, r0
	adds r0, #0x78
_08021D38:
	ldrh r0, [r0, #2]
	strh r0, [r7, #4]
	movs r0, #0
	str r0, [r7, #8]
	ldr r5, _08021D80 @ =0x03002E20
	adds r2, r5, #0
	adds r2, #0x24
	ldr r1, _08021D84 @ =0x000007FE
	adds r0, r5, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08021D8C
	ldr r4, _08021D88 @ =0x03000194
	ldr r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08021D64
	b _08021FF0
_08021D64:
	bl sub_800EDEC
	ldr r2, [r4]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r2, #1
	str r2, [r1, #0x58]
	str r2, [sp, #4]
	adds r0, #0x8c
	str r2, [r0, #8]
	b _08021FF0
	.align 2, 0
_08021D80: .4byte 0x03002E20
_08021D84: .4byte 0x000007FE
_08021D88: .4byte 0x03000194
_08021D8C:
	mov sb, r2
	ldr r0, _08021DEC @ =0x00000838
	adds r4, r5, r0
	ldr r0, [r4]
	bl sub_803DAC4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r7, [r4]
	ldr r1, _08021DF0 @ =0x0000080A
	adds r0, r5, r1
	ldrh r0, [r0]
	lsrs r6, r0, #8
	movs r0, #0xf
	ands r6, r0
	adds r0, r7, #0
	movs r1, #0
	bl sub_803DAB8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r5, #0
	cmp r5, r6
	bge _08021DE0
_08021DBE:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_803DAB8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	bls _08021DDA
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_803DAB8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08021DDA:
	adds r5, #1
	cmp r5, r6
	blt _08021DBE
_08021DE0:
	adds r6, r4, #0
	movs r2, #0
	mov sl, r2
	movs r5, #0
	movs r4, #0x50
	b _08021DFC
	.align 2, 0
_08021DEC: .4byte 0x00000838
_08021DF0: .4byte 0x0000080A
_08021DF4:
	adds r5, r1, #2
	adds r4, #0xc
	movs r0, #1
	add sl, r0
_08021DFC:
	mov r1, sl
	cmp r1, #4
	bgt _08021E70
	bl sub_800EDEC
	adds r0, r0, r4
	ldrh r0, [r0, #4]
	adds r1, r5, #0
	cmp r0, r8
	bls _08021DF4
	bl sub_800EDEC
	adds r1, r0, #0
	mov r2, sl
	adds r0, r5, r2
	lsls r0, r0, #2
	adds r0, #0x50
	adds r3, r1, r0
	movs r2, #4
	cmp r2, sl
	ble _08021E38
	adds r1, #0x74
_08021E28:
	ldr r0, [r1]
	str r0, [r1, #0xc]
	ldrh r0, [r1, #4]
	strh r0, [r1, #0x10]
	subs r1, #0xc
	subs r2, #1
	cmp r2, sl
	bgt _08021E28
_08021E38:
	ldr r0, _08021E64 @ =0x00000814
	add r0, sb
	ldr r0, [r0]
	adds r0, #0x4c
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	str r0, [r3]
	mov r0, r8
	strh r0, [r3, #4]
	movs r0, #1
	str r0, [r3, #8]
	ldr r0, _08021E68 @ =0x03000194
	mov r1, sl
	str r1, [r0]
	movs r2, #1
	str r2, [sp]
	cmp r1, #0
	bne _08021E78
	ldr r0, _08021E6C @ =0x0300019C
	str r2, [r0]
	b _08021E78
	.align 2, 0
_08021E64: .4byte 0x00000814
_08021E68: .4byte 0x03000194
_08021E6C: .4byte 0x0300019C
_08021E70:
	ldr r1, _08021EAC @ =0x03000194
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
_08021E78:
	bl sub_800EDEC
	adds r2, r0, #0
	adds r2, #0x8c
	ldrh r0, [r2, #4]
	cmp r0, r6
	bls _08021EBC
	ldr r0, _08021EB0 @ =0x00000814
	add r0, sb
	ldr r0, [r0]
	adds r0, #0x4c
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	str r0, [r2]
	strh r6, [r2, #4]
	movs r1, #1
	str r1, [r2, #8]
	ldr r0, _08021EB4 @ =0x03000198
	str r1, [r0]
	movs r0, #1
	str r0, [sp]
	ldr r0, _08021EB8 @ =0x030001A0
	ldr r1, [sp]
	str r1, [r0]
	b _08021EC4
	.align 2, 0
_08021EAC: .4byte 0x03000194
_08021EB0: .4byte 0x00000814
_08021EB4: .4byte 0x03000198
_08021EB8: .4byte 0x030001A0
_08021EBC:
	ldr r1, _08021F50 @ =0x03000198
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
_08021EC4:
	ldr r2, [sp]
	cmp r2, #0
	bne _08021ECC
	b _08021FF0
_08021ECC:
	ldr r4, _08021F54 @ =0x03002E20
	ldr r0, _08021F58 @ =0x00000801
	adds r5, r4, r0
	ldrb r0, [r5]
	bl track_getCup
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	ldrb r0, [r5]
	bl track_getCupIndex
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r1, _08021F5C @ =0x0000059C
	adds r4, r4, r1
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	bl sub_8032BC8
	str r0, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	lsls r2, r2, #5
	mov r8, r2
	ldr r0, [sp, #0x14]
	lsls r7, r0, #7
	movs r1, #0
	mov sb, r1
	movs r2, #0x50
	str r2, [sp, #0x20]
	movs r0, #4
	mov sl, r0
_08021F0E:
	bl sub_800EDEC
	ldr r1, [sp, #0x20]
	adds r4, r0, r1
	ldr r2, [sp, #0x1c]
	cmp r2, #0
	beq _08021F60
	bl save_getSavePointer_805D9B0
	adds r0, r7, r0
	add r0, r8
	add r0, sb
	movs r1, #0xb9
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r4]
	strb r1, [r0]
	bl save_getSavePointer_805D9B0
	adds r0, r7, r0
	add r0, r8
	add r0, sb
	movs r2, #0xb9
	lsls r2, r2, #2
	adds r0, r0, r2
	ldrh r1, [r4, #4]
	strh r1, [r0, #2]
	ldr r0, [sp, #0x18]
	lsls r6, r0, #5
	ldr r1, [sp, #0x14]
	lsls r5, r1, #7
	b _08021F88
	.align 2, 0
_08021F50: .4byte 0x03000198
_08021F54: .4byte 0x03002E20
_08021F58: .4byte 0x00000801
_08021F5C: .4byte 0x0000059C
_08021F60:
	bl save_getSavePointer_805D9B0
	adds r0, r7, r0
	add r0, r8
	add r0, sb
	adds r0, #0x64
	ldr r1, [r4]
	strb r1, [r0]
	bl save_getSavePointer_805D9B0
	adds r0, r7, r0
	add r0, r8
	add r0, sb
	adds r0, #0x64
	ldrh r1, [r4, #4]
	strh r1, [r0, #2]
	ldr r2, [sp, #0x18]
	lsls r6, r2, #5
	ldr r0, [sp, #0x14]
	lsls r5, r0, #7
_08021F88:
	movs r1, #4
	add sb, r1
	ldr r2, [sp, #0x20]
	adds r2, #0xc
	str r2, [sp, #0x20]
	movs r0, #1
	rsbs r0, r0, #0
	add sl, r0
	mov r1, sl
	cmp r1, #0
	bge _08021F0E
	bl sub_800EDEC
	adds r7, r0, #0
	adds r7, #0x8c
	ldr r2, [sp, #0x1c]
	cmp r2, #0
	beq _08021FCA
	bl save_getSavePointer_805D9B0
	adds r0, r5, r0
	adds r0, r6, r0
	movs r4, #0xbe
	lsls r4, r4, #2
	adds r0, r0, r4
	ldr r1, [r7]
	strb r1, [r0]
	bl save_getSavePointer_805D9B0
	adds r0, r5, r0
	adds r0, r6, r0
	adds r0, r0, r4
	b _08021FE2
_08021FCA:
	bl save_getSavePointer_805D9B0
	adds r0, r5, r0
	adds r0, r6, r0
	adds r0, #0x78
	ldr r1, [r7]
	strb r1, [r0]
	bl save_getSavePointer_805D9B0
	adds r0, r5, r0
	adds r0, r6, r0
	adds r0, #0x78
_08021FE2:
	ldrh r1, [r7, #4]
	strh r1, [r0, #2]
	movs r0, #1
	bl sub_8015268
	movs r0, #1
	str r0, [sp, #4]
_08021FF0:
	ldr r0, [sp, #4]
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8022004
sub_8022004: @ 0x08022004
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov sl, r0
	str r1, [sp, #0x20]
	adds r7, r2, #0
	ldr r0, _0802216C @ =0x03002E20
	ldr r2, _08022170 @ =0x00000838
	adds r1, r0, r2
	ldr r1, [r1]
	mov r8, r1
	ldr r1, _08022174 @ =0x0000080A
	adds r4, r0, r1
	ldrh r0, [r4]
	lsrs r5, r0, #8
	movs r2, #0xf
	ands r5, r2
	mov sb, r7
	cmp r5, r7
	bgt _0802203A
	mov sb, r5
	movs r0, #1
	rsbs r0, r0, #0
	add sl, r0
_0802203A:
	bl sub_800EDEC
	adds r0, #0x8c
	str r0, [sp, #0x24]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, sp
	str r1, [sp, #0x28]
	add r6, sp, #4
	ldrh r4, [r4]
	lsrs r4, r4, #8
	movs r2, #0xf
	ands r4, r2
	subs r4, #1
	mov r0, r8
	adds r1, r4, #0
	bl sub_803DAB8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	str r4, [sp]
	mov r0, sb
	lsls r0, r0, #2
	mov sb, r0
	cmp r4, #0
	blt _0802209C
_08022072:
	mov r0, r8
	adds r1, r4, #0
	bl sub_803DAB8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [r6]
	cmp r1, r0
	blt _08022096
	mov r0, r8
	adds r1, r4, #0
	bl sub_803DAB8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r6]
	ldr r1, [sp, #0x28]
	str r4, [r1]
_08022096:
	subs r4, #1
	cmp r4, #0
	bge _08022072
_0802209C:
	cmp r5, #3
	ble _08022184
	ldr r0, _08022178 @ =_080DB7C8
	add r0, sb
	ldr r4, [r0]
	movs r0, #0
	mov r1, sl
	ldr r2, [sp, #0x20]
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_804F6F4
	cmp r5, r7
	bgt _080220BE
	b _08022248
_080220BE:
	movs r6, #0xc0
	lsls r6, r6, #8
	ldr r2, _0802217C @ =0x03002E44
	ldr r1, _08022180 @ =0x000007DA
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	bne _080220F4
	ldr r0, [sp]
	cmp r7, r0
	bne _080220F4
	ldr r0, [sp, #4]
	ldr r2, [sp, #0x24]
	ldrh r2, [r2, #4]
	cmp r0, r2
	bne _080220F4
	ldr r1, [sp, #0x24]
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _080220F4
	movs r6, #0xa0
	lsls r6, r6, #8
_080220F4:
	mov r0, r8
	adds r1, r7, #0
	bl sub_803DAB8
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r1, sl
	adds r1, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #0x20]
	lsls r2, r0, #0x10
	lsrs r2, r2, #0x10
	movs r0, #0
	bl map_getBufferPtr2d
	adds r5, r0, #0
	add r1, sp, #8
	add r2, sp, #0xc
	add r3, sp, #0x10
	adds r0, r4, #0
	bl sub_804EFBC
	ldr r0, [sp, #8]
	movs r3, #0xf
	movs r2, #0xf
	ands r0, r2
	adds r0, #0x10
	orrs r0, r6
	strh r0, [r5, #2]
	movs r1, #0x1d
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r5, #4]
	ldr r1, [sp, #0xc]
	lsrs r0, r1, #4
	ands r0, r3
	adds r0, #0x10
	orrs r0, r6
	strh r0, [r5, #6]
	ands r1, r2
	adds r1, #0x10
	orrs r1, r6
	strh r1, [r5, #8]
	movs r1, #0x1c
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r5, #0xa]
	ldr r1, [sp, #0x10]
	lsrs r0, r1, #4
	ands r0, r3
	adds r0, #0x10
	orrs r0, r6
	strh r0, [r5, #0xc]
	ands r1, r2
	adds r1, #0x10
	orrs r6, r1
	strh r6, [r5, #0xe]
	b _08022248
	.align 2, 0
_0802216C: .4byte 0x03002E20
_08022170: .4byte 0x00000838
_08022174: .4byte 0x0000080A
_08022178: .4byte _080DB7C8
_0802217C: .4byte 0x03002E44
_08022180: .4byte 0x000007DA
_08022184:
	ldr r0, _08022258 @ =_080DB7B8
	add r0, sb
	ldr r4, [r0]
	movs r0, #0
	mov r1, sl
	ldr r2, [sp, #0x20]
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_804F6F4
	cmp r5, r7
	ble _08022248
	movs r6, #0xc0
	lsls r6, r6, #8
	ldr r1, _0802225C @ =0x03002E44
	ldr r2, _08022260 @ =0x000007DA
	adds r0, r1, r2
	ldrh r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	bne _080221D6
	ldr r0, [sp]
	cmp r7, r0
	bne _080221D6
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x24]
	ldrh r1, [r1, #4]
	cmp r0, r1
	bne _080221D6
	ldr r2, [sp, #0x24]
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _080221D6
	movs r6, #0xa0
	lsls r6, r6, #8
_080221D6:
	mov r0, r8
	adds r1, r7, #0
	bl sub_803DAB8
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r1, sl
	adds r1, #4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [sp, #0x20]
	lsls r2, r0, #0x10
	lsrs r2, r2, #0x10
	movs r0, #0
	bl map_getBufferPtr2d
	adds r5, r0, #0
	add r1, sp, #0x14
	add r2, sp, #0x18
	add r3, sp, #0x1c
	adds r0, r4, #0
	bl sub_804EFBC
	ldr r0, [sp, #0x14]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_804F5CC
	ldr r0, [sp, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #6
	adds r2, r6, #0
	bl sub_804F5CC
	ldr r0, [sp, #0x1c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r1, #0xc
	adds r2, r6, #0
	bl sub_804F5CC
	movs r1, #0x5a
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r5, #4]
	movs r0, #0x57
	orrs r6, r0
	strh r6, [r5, #0xa]
	movs r0, #0
	strh r0, [r5]
	adds r5, #0x40
	strh r0, [r5]
_08022248:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022258: .4byte _080DB7B8
_0802225C: .4byte 0x03002E44
_08022260: .4byte 0x000007DA

	thumb_func_start sub_8022264
sub_8022264: @ 0x08022264
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r7, _08022360 @ =0x03002E20
	ldr r1, _08022364 @ =0x00000838
	adds r0, r7, r1
	ldr r0, [r0]
	mov sl, r0
	movs r0, #0xc0
	lsls r0, r0, #8
	mov r8, r0
	ldr r4, _08022368 @ =_080DB798
	cmp r2, #0
	bne _0802228C
	ldr r4, _0802236C @ =_080DB7A8
_0802228C:
	movs r0, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_804F6F4
	ldr r1, _08022370 @ =0x000007FE
	adds r0, r7, r1
	ldrh r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	adds r5, #4
	lsls r6, r6, #0x10
	mov sb, r6
	add r6, sp, #4
	add r7, sp, #8
	cmp r0, r1
	bne _080222E2
	bl sub_800EDEC
	movs r3, #0
	adds r1, r0, #0
	adds r1, #0x50
	movs r2, #4
_080222C8:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _080222D0
	movs r3, #1
_080222D0:
	adds r1, #0xc
	subs r2, #1
	cmp r2, #0
	bge _080222C8
	cmp r3, #0
	beq _080222E2
	movs r0, #0xa0
	lsls r0, r0, #8
	mov r8, r0
_080222E2:
	mov r0, sl
	bl sub_803DAC4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	mov r0, sb
	lsrs r2, r0, #0x10
	movs r0, #0
	bl map_getBufferPtr2d
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, sp
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_804EFBC
	ldr r0, [sp]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	mov r2, r8
	bl sub_804F5CC
	ldr r0, [sp, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #6
	mov r2, r8
	bl sub_804F5CC
	ldr r0, [sp, #8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r5, #0
	adds r1, #0xc
	mov r2, r8
	bl sub_804F5CC
	movs r1, #0x5a
	mov r0, r8
	orrs r0, r1
	strh r0, [r5, #4]
	movs r0, #0x57
	mov r1, r8
	orrs r1, r0
	strh r1, [r5, #0xa]
	movs r0, #0
	strh r0, [r5]
	adds r5, #0x40
	strh r0, [r5]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022360: .4byte 0x03002E20
_08022364: .4byte 0x00000838
_08022368: .4byte _080DB798
_0802236C: .4byte _080DB7A8
_08022370: .4byte 0x000007FE

	thumb_func_start sub_8022374
sub_8022374: @ 0x08022374
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r4, r0, #0
	adds r5, r1, #0
	str r2, [sp, #0xc]
	ldr r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080223A0
	movs r0, #7
	ands r1, r0
	adds r0, r1, #0
	bl sub_800EDB0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	b _080223A2
_080223A0:
	movs r1, #9
_080223A2:
	ldrh r0, [r5, #4]
	str r0, [sp, #0x10]
	movs r2, #0
	str r2, [sp, #0x14]
	cmp r4, #6
	bne _080223B2
	movs r3, #1
	str r3, [sp, #0x14]
_080223B2:
	ldr r0, [r5, #8]
	movs r7, #0xf0
	lsls r7, r7, #8
	cmp r0, #0
	beq _080223C0
	movs r7, #0xe0
	lsls r7, r7, #8
_080223C0:
	movs r2, #0
	lsls r6, r4, #1
	mov sl, r6
	ldr r0, _08022400 @ =_080DB7E0
	mov sb, r0
	lsls r3, r1, #3
	str r3, [sp, #0x28]
	lsls r1, r1, #1
	mov r8, r1
	add r6, sp, #4
	mov ip, r6
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x14]
	add r1, sl
	ldr r6, _08022404 @ =0x00000101
	adds r5, r4, r6
	lsls r1, r1, #6
	str r1, [sp, #0x2c]
	ldr r1, [sp, #0xc]
	movs r3, #0x81
	lsls r3, r3, #1
	adds r0, r1, r3
	ldr r3, [sp, #0x2c]
	adds r1, r3, r0
_080223F4:
	cmp r4, #4
	bgt _08022408
	adds r0, r7, #0
	orrs r0, r5
	b _0802240C
	.align 2, 0
_08022400: .4byte _080DB7E0
_08022404: .4byte 0x00000101
_08022408:
	adds r0, r7, #0
	orrs r0, r6
_0802240C:
	strh r0, [r1]
	adds r6, #0x20
	adds r5, #0x20
	adds r1, #0x40
	adds r2, #1
	cmp r2, #1
	ble _080223F4
	ldr r6, [sp, #0x28]
	add r6, sb
	str r6, [sp, #0x24]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	mov r8, r0
	ldr r1, [sp, #0x14]
	add r1, sl
	lsls r1, r1, #6
	ldr r4, _0802245C @ =0x00000FFF
	mov r5, r8
	ldr r2, [sp, #0xc]
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r0, r2, r3
	adds r3, r1, r0
	movs r6, #0x82
	lsls r6, r6, #1
	adds r0, r2, r6
	adds r6, r1, r0
	ldr r0, [sp, #0x24]
	ldr r2, [r0]
	adds r1, r5, #6
	mov sb, r1
_08022450:
	cmp r5, sb
	bgt _08022460
	ldrh r0, [r2]
	strh r0, [r6]
	ldrh r0, [r5]
	b _08022472
	.align 2, 0
_0802245C: .4byte 0x00000FFF
_08022460:
	ldrh r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	orrs r0, r7
	strh r0, [r6]
	ldrh r1, [r5]
	adds r0, r4, #0
	ands r0, r1
	orrs r0, r7
_08022472:
	strh r0, [r3]
	adds r5, #2
	adds r3, #2
	adds r6, #2
	adds r2, #2
	mov r0, r8
	adds r0, #0x10
	cmp r5, r0
	ble _08022450
	ldr r0, [sp, #0x10]
	mov r1, sp
	mov r2, ip
	ldr r3, [sp, #0x1c]
	bl sub_804EFBC
	movs r2, #0
	str r2, [sp, #0x18]
	ldr r4, [sp, #0x14]
	add r4, sl
	ldr r2, [sp]
	movs r6, #0xf
	movs r3, #0xf
	ands r2, r3
	ldr r5, [sp, #4]
	adds r0, r5, #0
	ands r0, r3
	ldr r1, _08022560 @ =0x0000010B
	str r1, [sp, #0x20]
	subs r1, #0xb
	adds r0, r0, r1
	mov r8, r0
	movs r0, #0x85
	lsls r0, r0, #1
	mov sl, r0
	adds r2, r2, r1
	mov ip, r2
	adds r2, r1, #0
	lsrs r5, r5, #4
	mov sb, r5
	mov r1, sb
	ands r1, r6
	mov sb, r1
	ldr r0, [sp, #8]
	lsrs r5, r0, #4
	ands r5, r6
	ands r3, r0
	lsls r4, r4, #6
	ldr r6, [sp, #0xc]
	adds r4, r4, r6
_080224D4:
	movs r0, #0x8d
	lsls r0, r0, #1
	adds r1, r4, r0
	adds r0, r7, #0
	mov r6, ip
	orrs r0, r6
	strh r0, [r1]
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r1, r4, r0
	adds r0, r7, #0
	mov r6, sl
	orrs r0, r6
	strh r0, [r1]
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r1, r4, r0
	mov r6, sb
	adds r0, r2, r6
	orrs r0, r7
	strh r0, [r1]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r4, r0
	adds r0, r7, #0
	mov r6, r8
	orrs r0, r6
	strh r0, [r1]
	movs r0, #0x91
	lsls r0, r0, #1
	adds r1, r4, r0
	adds r0, r7, #0
	ldr r6, [sp, #0x20]
	orrs r0, r6
	strh r0, [r1]
	movs r0, #0x92
	lsls r0, r0, #1
	adds r1, r4, r0
	adds r0, r2, r5
	orrs r0, r7
	strh r0, [r1]
	movs r6, #0x93
	lsls r6, r6, #1
	adds r1, r4, r6
	adds r0, r2, r3
	orrs r0, r7
	strh r0, [r1]
	ldr r0, [sp, #0x20]
	adds r0, #0x20
	str r0, [sp, #0x20]
	movs r1, #0x20
	add r8, r1
	add sl, r1
	add ip, r1
	adds r2, #0x20
	adds r4, #0x40
	ldr r6, [sp, #0x18]
	adds r6, #1
	str r6, [sp, #0x18]
	cmp r6, #1
	ble _080224D4
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022560: .4byte 0x0000010B

	thumb_func_start sub_8022564
sub_8022564: @ 0x08022564
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0802262C @ =_0809B8A0
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	ldr r4, _08022630 @ =_080627D4
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	ldr r4, _08022634 @ =_080AACF0
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08022638 @ =_080AAE3C
	movs r2, #0xc0
	lsls r2, r2, #0x13
	ldr r4, _0802263C @ =0x80000400
	adds r3, r4, #0
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08022640 @ =_080AB7FC
	ldr r2, _08022644 @ =0x06000800
	ldr r3, _08022648 @ =0x800000E0
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0802264C @ =_08063834
	ldr r2, _08022650 @ =0x06001000
	ldr r3, _08022654 @ =0x80000200
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08022658 @ =_080ACAFC
	ldr r2, _0802265C @ =0x06001400
	ldr r3, _08022660 @ =0x80000600
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08022664 @ =_080ABEFC
	ldr r2, _08022668 @ =0x06002000
	adds r3, r4, #0
	bl dmaq_enqueue
	ldrb r0, [r5]
	cmp r0, #3
	bne _08022624
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0802266C @ =_080ADE7C
	ldr r2, _08022670 @ =0x06000320
	ldr r4, _08022674 @ =0x80000070
	adds r3, r4, #0
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08022678 @ =_080ADF5C
	ldr r2, _0802267C @ =0x06000720
	adds r3, r4, #0
	bl dmaq_enqueue
_08022624:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802262C: .4byte _0809B8A0
_08022630: .4byte _080627D4
_08022634: .4byte _080AACF0
_08022638: .4byte _080AAE3C
_0802263C: .4byte 0x80000400
_08022640: .4byte _080AB7FC
_08022644: .4byte 0x06000800
_08022648: .4byte 0x800000E0
_0802264C: .4byte _08063834
_08022650: .4byte 0x06001000
_08022654: .4byte 0x80000200
_08022658: .4byte _080ACAFC
_0802265C: .4byte 0x06001400
_08022660: .4byte 0x80000600
_08022664: .4byte _080ABEFC
_08022668: .4byte 0x06002000
_0802266C: .4byte _080ADE7C
_08022670: .4byte 0x06000320
_08022674: .4byte 0x80000070
_08022678: .4byte _080ADF5C
_0802267C: .4byte 0x06000720

	thumb_func_start sub_8022680
sub_8022680: @ 0x08022680
	push {r4, r5, r6, lr}
	ldr r5, _080226CC @ =0x03002E20
	ldr r0, _080226D0 @ =0x00000801
	adds r6, r5, r0
	ldrb r0, [r6]
	bl track_getCup
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrb r0, [r6]
	bl track_getCupIndex
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r4, r4, #2
	adds r6, r4, r0
	ldr r0, _080226D4 @ =0x0000059C
	adds r5, r5, r0
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	bl sub_8032BC8
	cmp r0, #0
	beq _080226E0
	ldr r4, _080226D8 @ =gTrackDefTable
	adds r0, r6, #0
	bl track_getRetroTrack
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	ldr r1, _080226DC @ =0x06000C00
	bl LZ77UnCompVram
	b _080226F6
	.align 2, 0
_080226CC: .4byte 0x03002E20
_080226D0: .4byte 0x00000801
_080226D4: .4byte 0x0000059C
_080226D8: .4byte gTrackDefTable
_080226DC: .4byte 0x06000C00
_080226E0:
	ldr r4, _080226FC @ =gTrackDefTable
	adds r0, r6, #0
	bl track_getMKSCTrack
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	ldr r1, _08022700 @ =0x06000C00
	bl LZ77UnCompVram
_080226F6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080226FC: .4byte gTrackDefTable
_08022700: .4byte 0x06000C00

	thumb_func_start sub_8022704
sub_8022704: @ 0x08022704
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	bl sub_800EDEC
	mov r8, r0
	movs r0, #0
	str r0, [sp, #0x14]
	mov r1, r8
	ldr r0, [r1, #0x10]
	adds r0, #1
	str r0, [r1, #0x10]
	ldr r0, [r1]
	cmp r0, #0xd
	bls _0802272C
	bl _08023478
_0802272C:
	lsls r0, r0, #2
	ldr r1, _08022738 @ =_0802273C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08022738: .4byte _0802273C
_0802273C: @ jump table
	.4byte _08022774 @ case 0
	.4byte _08022818 @ case 1
	.4byte _08022864 @ case 2
	.4byte _08022A4A @ case 3
	.4byte _08022AF0 @ case 4
	.4byte _08022D1E @ case 5
	.4byte _08022D5C @ case 6
	.4byte _08022DE0 @ case 7
	.4byte _08022F78 @ case 8
	.4byte _080230A4 @ case 9
	.4byte _0802316C @ case 10
	.4byte _080231F8 @ case 11
	.4byte _080233E2 @ case 12
	.4byte _08023478 @ case 13
_08022774:
	mov r2, r8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #0xb4
	ble _080227A6
	bl sub_8021BEC
	adds r4, r0, #0
	bl sub_8021AFC
	movs r1, #0
	cmp r4, #0
	bne _08022794
	cmp r0, #0
	beq _08022796
_08022794:
	movs r1, #1
_08022796:
	mov r3, r8
	str r1, [r3, #0x14]
	movs r0, #1
	str r0, [r3]
	movs r0, #0
	str r0, [r3, #4]
	bl _08023478
_080227A6:
	ldr r0, _08022804 @ =0x03002E44
	bl sub_804D94C
	ldr r6, _08022804 @ =0x03002E44
	ldr r7, _08022808 @ =0x00000814
	adds r0, r6, r7
	ldr r0, [r0]
	bl sub_803DAC4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, _0802280C @ =0x000007DD
	adds r0, r6, r1
	ldrb r0, [r0]
	movs r1, #5
	bl sub_8032D80
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r4, r0
	blo _080227DE
	ldr r3, _08022810 @ =0x00000BEE
	adds r2, r6, r3
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
_080227DE:
	ldr r6, _08022804 @ =0x03002E44
	ldr r7, _08022814 @ =0x000007DA
	adds r0, r6, r7
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080227F4
	bl _08023478
_080227F4:
	adds r0, r6, #0
	bl sub_804E8C0
	ldr r0, _08022804 @ =0x03002E44
	bl sub_804E948
	bl _08023478
	.align 2, 0
_08022804: .4byte 0x03002E44
_08022808: .4byte 0x00000814
_0802280C: .4byte 0x000007DD
_08022810: .4byte 0x00000BEE
_08022814: .4byte 0x000007DA
_08022818:
	bl dmaq_getVBlankDmaQueue
	adds r4, r0, #0
	ldr r5, _08022858 @ =0x06003800
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r2, r0, #0
	ldr r3, _0802285C @ =0x80000280
	adds r0, r4, #0
	adds r1, r5, #0
	bl dmaq_enqueue
	movs r0, #0
	str r0, [sp, #8]
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _08022860 @ =0x01000140
	add r0, sp, #8
	bl CpuFastSet
	movs r0, #2
	mov r1, r8
	str r0, [r1]
	bl _08023478
	.align 2, 0
_08022858: .4byte 0x06003800
_0802285C: .4byte 0x80000280
_08022860: .4byte 0x01000140
_08022864:
	mov r2, r8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #1
	bgt _08022874
	bl _08023478
_08022874:
	movs r1, #0
	str r1, [r2, #4]
	ldr r0, [r2, #8]
	cmp r0, #7
	ble _08022880
	b _08022A3E
_08022880:
	adds r0, #1
	str r0, [r2, #8]
	str r1, [sp, #0xc]
	add r4, sp, #0xc
	movs r0, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _080228C0 @ =0x01000140
	adds r0, r4, #0
	bl CpuFastSet
	ldr r3, _080228C4 @ =0x03002E44
	ldr r6, _080228C8 @ =0x000007E6
	adds r0, r3, r6
	ldrh r0, [r0]
	lsrs r1, r0, #8
	movs r0, #0xf
	ands r1, r0
	movs r7, #1
	cmp r1, #3
	ble _080228B0
	movs r7, #2
_080228B0:
	movs r5, #2
	cmp r1, #3
	ble _080228B8
	movs r5, #1
_080228B8:
	movs r6, #0
	adds r4, r1, #1
	b _080228EA
	.align 2, 0
_080228C0: .4byte 0x01000140
_080228C4: .4byte 0x03002E44
_080228C8: .4byte 0x000007E6
_080228CC:
	lsls r0, r3, #3
	adds r0, r0, r3
	cmp r0, #0
	bge _080228D6
	adds r0, #7
_080228D6:
	asrs r1, r0, #3
	movs r0, #0x12
	subs r0, r0, r1
	adds r1, r6, #0
	muls r1, r5, r1
	adds r1, r7, r1
	adds r2, r6, #0
	bl sub_8022004
	adds r6, #1
_080228EA:
	mov r0, r8
	ldr r3, [r0, #8]
	adds r0, r4, #0
	muls r0, r3, r0
	cmp r0, #0
	bge _080228F8
	adds r0, #7
_080228F8:
	asrs r0, r0, #3
	cmp r6, r0
	blt _080228CC
	adds r4, r3, #0
	lsls r0, r4, #3
	adds r0, r0, r4
	cmp r0, #0
	bge _0802290A
	adds r0, #7
_0802290A:
	asrs r1, r0, #3
	movs r0, #0x12
	subs r0, r0, r1
	movs r2, #0
	cmp r4, #7
	ble _08022918
	movs r2, #1
_08022918:
	adds r1, r3, #0
	bl sub_8022264
	mov r1, r8
	ldr r0, [r1, #8]
	rsbs r0, r0, #0
	mov sl, r0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x64]
	movs r1, #0
	mov r2, r8
	ldr r2, [r2, #8]
	mov ip, r2
_08022946:
	movs r3, #0
	mov r6, sl
	adds r5, r1, r6
	adds r6, r1, #1
	adds r4, r5, #0
	lsls r0, r4, #6
	ldr r7, [sp, #0x64]
	adds r2, r0, r7
	lsls r0, r1, #6
	mov r7, sb
	adds r1, r0, r7
_0802295C:
	cmp r3, #0
	blt _08022970
	cmp r5, #0
	blt _08022970
	cmp r3, #0x1d
	bgt _08022970
	cmp r4, #0x13
	bgt _08022970
	ldrh r0, [r1]
	strh r0, [r2]
_08022970:
	adds r2, #2
	adds r1, #2
	adds r3, #1
	cmp r3, #0x11
	blt _0802295C
	adds r1, r6, #0
	cmp r1, #5
	blt _08022946
	mov r7, ip
	str r7, [sp, #0x18]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sl, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
_0802299E:
	adds r1, r0, #0
	adds r1, #0xc
	adds r0, #1
	mov ip, r0
	ldr r0, [sp, #0x18]
	adds r4, r1, r0
	lsls r0, r4, #5
	lsls r1, r1, #5
	adds r1, #0x16
	adds r0, #0x16
	adds r0, r7, r0
	adds r2, r7, #0
	adds r2, #0x16
	movs r5, #8
	lsls r0, r0, #1
	mov r6, sb
	adds r3, r0, r6
	lsls r1, r1, #1
	add r1, sl
_080229C4:
	cmp r2, #0
	blt _080229D8
	cmp r4, #0
	blt _080229D8
	cmp r2, #0x1d
	bgt _080229D8
	cmp r4, #0x13
	bgt _080229D8
	ldrh r0, [r1]
	strh r0, [r3]
_080229D8:
	adds r1, #2
	adds r3, #2
	adds r2, #1
	subs r5, #1
	cmp r5, #0
	bge _080229C4
	mov r0, ip
	cmp r0, #9
	blt _0802299E
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r7, r0, #0
	movs r0, #0
_08022A04:
	movs r1, #0
	adds r4, r0, #0
	adds r4, #0x10
	adds r6, r0, #1
	adds r3, r4, #0
	lsls r5, r3, #5
_08022A10:
	adds r2, r1, #1
	cmp r2, #0
	blt _08022A2E
	cmp r4, #0
	blt _08022A2E
	cmp r2, #0x1d
	bgt _08022A2E
	cmp r3, #0x13
	bgt _08022A2E
	adds r0, r5, r2
	lsls r0, r0, #1
	adds r1, r0, r7
	add r0, sb
	ldrh r0, [r0]
	strh r0, [r1]
_08022A2E:
	adds r1, r2, #0
	cmp r1, #5
	blt _08022A10
	adds r0, r6, #0
	cmp r0, #3
	blt _08022A04
	bl _0802347E
_08022A3E:
	movs r0, #3
	mov r7, r8
	str r0, [r7]
	str r1, [r7, #8]
	bl _08023478
_08022A4A:
	mov r0, r8
	ldr r1, [r0, #0x10]
	movs r0, #0x87
	lsls r0, r0, #2
	cmp r1, r0
	bgt _08022A5A
	bl _08023478
_08022A5A:
	ldr r1, _08022A84 @ =0x03002E44
	ldr r2, _08022A88 @ =0x000007DA
	adds r0, r1, r2
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08022A8C
	movs r0, #0
	bl map_clearBuffer
	movs r0, #1
	bl map_clearBuffer
	movs r0, #3
	bl map_setBufferDirty
	movs r1, #9
	bl _08023462
	.align 2, 0
_08022A84: .4byte 0x03002E44
_08022A88: .4byte 0x000007DA
_08022A8C:
	ldr r0, _08022AA4 @ =0x0300019C
	ldr r0, [r0]
	cmp r0, #0
	bne _08022A9C
	ldr r0, _08022AA8 @ =0x030001A0
	ldr r0, [r0]
	cmp r0, #0
	beq _08022AAC
_08022A9C:
	movs r0, #0xe
	bl m4aSongNumStart
	b _08022AB2
	.align 2, 0
_08022AA4: .4byte 0x0300019C
_08022AA8: .4byte 0x030001A0
_08022AAC:
	movs r0, #0xf
	bl m4aSongNumStart
_08022AB2:
	movs r1, #0xf
	ldr r2, _08022AE0 @ =0x03002E44
	ldr r3, _08022AE4 @ =0x00000BE4
	adds r0, r2, r3
	str r1, [r0]
	bl dmaq_getVBlankDmaQueue
	adds r4, r0, #0
	ldr r5, _08022AE8 @ =0x06003800
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r2, r0, #0
	ldr r3, _08022AEC @ =0x80000280
	adds r0, r4, #0
	adds r1, r5, #0
	bl dmaq_enqueue
	movs r0, #4
	b _0802314E
	.align 2, 0
_08022AE0: .4byte 0x03002E44
_08022AE4: .4byte 0x00000BE4
_08022AE8: .4byte 0x06003800
_08022AEC: .4byte 0x80000280
_08022AF0:
	mov r7, r8
	ldr r0, [r7, #8]
	adds r0, #1
	str r0, [r7, #8]
	cmp r0, #0
	bgt _08022AFE
	b _08023090
_08022AFE:
	movs r1, #0
	str r1, [r7, #8]
	ldr r0, [r7, #4]
	adds r0, #1
	str r0, [r7, #4]
	cmp r0, #0x2b
	ble _08022B0E
	b _08022D14
_08022B0E:
	cmp r0, #0
	ble _08022B66
	rsbs r6, r0, #0
	movs r0, #1
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r7, r0, #0
	movs r0, #0
_08022B2C:
	movs r4, #0
	adds r2, r0, #1
	adds r5, r2, #0
	lsls r0, r2, #6
	mov r1, sb
	adds r3, r0, r1
	lsls r0, r2, #5
	adds r0, r6, r0
	lsls r0, r0, #1
	adds r1, r0, r7
_08022B40:
	adds r0, r4, r6
	cmp r0, #0
	blt _08022B56
	cmp r2, #0
	blt _08022B56
	cmp r0, #0x1d
	bgt _08022B56
	cmp r5, #0x13
	bgt _08022B56
	ldrh r0, [r3]
	strh r0, [r1]
_08022B56:
	adds r3, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #0x20
	blt _08022B40
	adds r0, r2, #0
	cmp r0, #2
	blt _08022B2C
_08022B66:
	mov r2, r8
	ldr r6, [r2, #4]
	cmp r6, #3
	ble _08022BD4
	rsbs r0, r6, #0
	adds r0, #3
	mov sb, r0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x1c]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sl, r0
	movs r0, #0
	mov r3, r8
	ldr r6, [r3, #4]
_08022B92:
	movs r4, #0
	adds r5, r0, #3
	adds r0, #1
	mov ip, r0
	adds r3, r5, #0
	lsls r0, r3, #6
	ldr r7, [sp, #0x1c]
	adds r2, r0, r7
	lsls r0, r3, #5
	add r0, sb
	lsls r0, r0, #1
	mov r7, sl
	adds r1, r0, r7
_08022BAC:
	mov r7, sb
	adds r0, r4, r7
	cmp r0, #0
	blt _08022BC4
	cmp r5, #0
	blt _08022BC4
	cmp r0, #0x1d
	bgt _08022BC4
	cmp r3, #0x13
	bgt _08022BC4
	ldrh r0, [r2]
	strh r0, [r1]
_08022BC4:
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #0x20
	blt _08022BAC
	mov r0, ip
	cmp r0, #2
	blt _08022B92
_08022BD4:
	cmp r6, #6
	ble _08022C3E
	rsbs r0, r6, #0
	adds r0, #6
	mov sb, r0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x20]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sl, r0
	movs r0, #0
	mov r1, r8
	ldr r6, [r1, #4]
_08022BFC:
	movs r4, #0
	adds r5, r0, #5
	adds r0, #1
	mov ip, r0
	adds r3, r5, #0
	lsls r0, r3, #6
	ldr r7, [sp, #0x20]
	adds r2, r0, r7
	lsls r0, r3, #5
	add r0, sb
	lsls r0, r0, #1
	mov r7, sl
	adds r1, r0, r7
_08022C16:
	mov r7, sb
	adds r0, r4, r7
	cmp r0, #0
	blt _08022C2E
	cmp r5, #0
	blt _08022C2E
	cmp r0, #0x1d
	bgt _08022C2E
	cmp r3, #0x13
	bgt _08022C2E
	ldrh r0, [r2]
	strh r0, [r1]
_08022C2E:
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #0x20
	blt _08022C16
	mov r0, ip
	cmp r0, #2
	blt _08022BFC
_08022C3E:
	cmp r6, #9
	ble _08022CA8
	rsbs r0, r6, #0
	adds r0, #9
	mov sb, r0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x24]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sl, r0
	movs r0, #0
	mov r1, r8
	ldr r6, [r1, #4]
_08022C66:
	movs r4, #0
	adds r5, r0, #7
	adds r0, #1
	mov ip, r0
	adds r3, r5, #0
	lsls r0, r3, #6
	ldr r7, [sp, #0x24]
	adds r2, r0, r7
	lsls r0, r3, #5
	add r0, sb
	lsls r0, r0, #1
	mov r7, sl
	adds r1, r0, r7
_08022C80:
	mov r7, sb
	adds r0, r4, r7
	cmp r0, #0
	blt _08022C98
	cmp r5, #0
	blt _08022C98
	cmp r0, #0x1d
	bgt _08022C98
	cmp r3, #0x13
	bgt _08022C98
	ldrh r0, [r2]
	strh r0, [r1]
_08022C98:
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #0x20
	blt _08022C80
	mov r0, ip
	cmp r0, #1
	blt _08022C66
_08022CA8:
	cmp r6, #0xc
	ble _08022D0E
	rsbs r0, r6, #0
	adds r7, r0, #0
	adds r7, #0xc
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sl, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
_08022CCC:
	movs r4, #0
	adds r5, r0, #0
	adds r5, #8
	adds r0, #1
	mov ip, r0
	adds r3, r5, #0
	lsls r0, r3, #6
	mov r1, sl
	adds r2, r0, r1
	lsls r0, r3, #5
	adds r0, r7, r0
	lsls r0, r0, #1
	mov r6, sb
	adds r1, r0, r6
_08022CE8:
	adds r0, r4, r7
	cmp r0, #0
	blt _08022CFE
	cmp r5, #0
	blt _08022CFE
	cmp r0, #0x1d
	bgt _08022CFE
	cmp r3, #0x13
	bgt _08022CFE
	ldrh r0, [r2]
	strh r0, [r1]
_08022CFE:
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #0x20
	blt _08022CE8
	mov r0, ip
	cmp r0, #2
	blt _08022CCC
_08022D0E:
	movs r7, #1
	str r7, [sp, #0x14]
	b _08023090
_08022D14:
	movs r0, #5
	mov r2, r8
	str r0, [r2]
	str r1, [r2, #4]
	b _08023090
_08022D1E:
	ldr r0, _08022D54 @ =_080DB84C
	bl sub_8022564
	ldr r6, _08022D54 @ =_080DB84C
	ldr r4, [r6, #8]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	ldr r4, _08022D58 @ =_0809BD7C
	movs r0, #0
	movs r1, #0
	movs r2, #0x14
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	movs r0, #6
	b _08023474
	.align 2, 0
_08022D54: .4byte _080DB84C
_08022D58: .4byte _0809BD7C
_08022D5C:
	bl sub_8022680
	movs r6, #0
	mov r5, r8
	adds r5, #0x8c
	mov r4, r8
	adds r4, #0x50
_08022D6A:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8022374
	adds r4, #0xc
	adds r6, #1
	cmp r6, #4
	ble _08022D6A
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r2, r0, #0
	movs r0, #6
	adds r1, r5, #0
	bl sub_8022374
	ldr r0, _08022DD4 @ =_0809B8D4
	ldr r1, _08022DD8 @ =0x06017000
	bl LZ77UnCompVram
	ldr r4, _08022DDC @ =_0809B8C0
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0xf5
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0xa
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	movs r1, #0
	movs r0, #0xb6
	lsls r0, r0, #1
	mov r2, r8
	strh r0, [r2, #0x18]
	strh r1, [r2, #0x1a]
	movs r0, #7
	str r0, [r2]
	b _080231E4
	.align 2, 0
_08022DD4: .4byte _0809B8D4
_08022DD8: .4byte 0x06017000
_08022DDC: .4byte _0809B8C0
_08022DE0:
	mov r3, r8
	ldr r0, [r3, #8]
	adds r0, #1
	str r0, [r3, #8]
	cmp r0, #0
	bgt _08022DEE
	b _08022F68
_08022DEE:
	movs r1, #0
	str r1, [r3, #8]
	ldr r0, [r3, #4]
	adds r0, #1
	str r0, [r3, #4]
	cmp r0, #0x3b
	ble _08022DFE
	b _08022F60
_08022DFE:
	movs r6, #0
	mov r7, sp
	adds r7, #0xc
	str r7, [sp, #0x50]
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x54]
	movs r1, #0x20
	str r1, [sp, #0x5c]
_08022E10:
	movs r0, #0
	str r0, [sp, #0xc]
	lsls r4, r6, #1
	movs r1, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r0, [sp, #0x50]
	ldr r2, _08022F5C @ =0x01000020
	bl CpuFastSet
	mov r2, r8
	ldr r0, [r2, #4]
	ldr r3, [sp, #0x5c]
	subs r0, r3, r0
	cmp r0, #0
	bge _08022E36
	movs r0, #0
_08022E36:
	str r4, [sp, #0x28]
	str r0, [sp, #0x64]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sl, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
_08022E54:
	movs r4, #0
	ldr r7, [sp, #0x28]
	adds r5, r7, r0
	adds r0, #1
	mov ip, r0
	adds r3, r5, #0
	lsls r0, r3, #6
	mov r1, sl
	adds r2, r0, r1
	lsls r0, r3, #5
	ldr r7, [sp, #0x64]
	adds r0, r7, r0
	lsls r0, r0, #1
	mov r7, sb
	adds r1, r0, r7
_08022E72:
	ldr r7, [sp, #0x64]
	adds r0, r4, r7
	cmp r0, #0
	blt _08022E8A
	cmp r5, #0
	blt _08022E8A
	cmp r0, #0x1d
	bgt _08022E8A
	cmp r3, #0x13
	bgt _08022E8A
	ldrh r0, [r2]
	strh r0, [r1]
_08022E8A:
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #0x14
	blt _08022E72
	mov r0, ip
	cmp r0, #2
	blt _08022E54
	ldr r0, [sp, #0x5c]
	adds r0, #3
	str r0, [sp, #0x5c]
	adds r6, #1
	cmp r6, #6
	ble _08022E10
	movs r6, #0
_08022EA8:
	movs r0, #0
	str r0, [sp, #0x10]
	lsls r4, r6, #1
	adds r5, r4, #0
	adds r5, #0xf
	movs r1, #0
	adds r2, r5, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r0, [sp, #0x54]
	ldr r2, _08022F5C @ =0x01000020
	bl CpuFastSet
	adds r4, r4, r6
	adds r4, #0x38
	mov r1, r8
	ldr r0, [r1, #4]
	subs r0, r4, r0
	cmp r0, #0
	bge _08022ED4
	movs r0, #0
_08022ED4:
	str r5, [sp, #0x2c]
	adds r4, r0, #0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sl, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
	adds r6, #1
	mov ip, r6
_08022EF6:
	movs r1, #0
	ldr r3, [sp, #0x2c]
	adds r2, r3, r0
	adds r0, #1
	str r0, [sp, #0x64]
	adds r6, r2, #0
	lsls r0, r6, #6
	mov r7, sl
	adds r5, r0, r7
	lsls r0, r6, #5
	adds r0, r4, r0
	lsls r0, r0, #1
	mov r7, sb
	adds r3, r0, r7
_08022F12:
	adds r0, r1, r4
	cmp r0, #0
	blt _08022F28
	cmp r2, #0
	blt _08022F28
	cmp r0, #0x1d
	bgt _08022F28
	cmp r6, #0x13
	bgt _08022F28
	ldrh r0, [r5]
	strh r0, [r3]
_08022F28:
	adds r5, #2
	adds r3, #2
	adds r1, #1
	cmp r1, #0x14
	blt _08022F12
	ldr r0, [sp, #0x64]
	cmp r0, #2
	blt _08022EF6
	mov r6, ip
	cmp r6, #1
	ble _08022EA8
	mov r0, r8
	ldr r1, [r0, #4]
	cmp r1, #0x20
	bgt _08022F56
	movs r0, #0x20
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x6c
	movs r1, #0
	mov r2, r8
	strh r0, [r2, #0x18]
	strh r1, [r2, #0x1a]
_08022F56:
	movs r3, #1
	str r3, [sp, #0x14]
	b _08022F68
	.align 2, 0
_08022F5C: .4byte 0x01000020
_08022F60:
	movs r0, #8
	mov r6, r8
	str r0, [r6]
	str r1, [r6, #4]
_08022F68:
	movs r0, #9
	bl main_checkKeysTriggered
	cmp r0, #0
	bne _08022F74
	b _08023478
_08022F74:
	movs r0, #9
	b _08023474
_08022F78:
	ldr r0, _0802300C @ =_080DB84C
	ldrb r1, [r0, #1]
	mov r3, r8
	ldr r2, [r3, #4]
	cmp r2, r1
	blt _08022F86
	b _08023086
_08022F86:
	lsls r1, r1, #1
	movs r0, #0x13
	subs r0, r0, r1
	adds r2, #1
	str r2, [r3, #4]
	ldr r6, _0802300C @ =_080DB84C
	ldrb r1, [r6, #1]
	adds r0, r0, r1
	mov sl, r0
	adds r1, #1
	str r1, [sp, #0x30]
	adds r7, r2, #0
	mov sb, r7
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x34]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x38]
	cmp r7, #0
	bge _08022FC6
	movs r0, #0
	mov sb, r0
	cmp r7, #0
	bge _08022FC6
	movs r7, #0
_08022FC6:
	mov r1, sb
	cmp r1, #5
	ble _08022FD0
	movs r2, #5
	mov sb, r2
_08022FD0:
	ldr r3, [sp, #0x30]
	cmp r7, r3
	ble _08022FD8
	adds r7, r3, #0
_08022FD8:
	movs r5, #0
	lsls r0, r7, #1
	cmp r5, r0
	bge _08023080
	mov r6, sb
	lsls r6, r6, #1
	str r6, [sp, #0x48]
	str r0, [sp, #0x40]
_08022FE8:
	movs r4, #0
	adds r0, r5, #1
	str r0, [sp, #0x4c]
	ldr r1, [sp, #0x48]
	cmp r4, r1
	bge _08023078
	str r1, [sp, #0x68]
	ldr r2, [sp, #0x30]
	add r2, sl
	str r2, [sp, #0x3c]
	ldr r3, [sp, #0x40]
	subs r3, r5, r3
	mov ip, r3
_08023002:
	cmp r4, sb
	bge _08023010
	adds r3, r4, #0
	adds r3, #0x14
	b _08023018
	.align 2, 0
_0802300C: .4byte _080DB84C
_08023010:
	ldr r6, [sp, #0x68]
	subs r0, r4, r6
	adds r3, r0, #0
	adds r3, #0x1e
_08023018:
	cmp r5, r7
	bge _08023026
	mov r1, sl
	ldr r2, [sp, #0x30]
	subs r0, r1, r2
	adds r1, r0, r5
	b _0802302A
_08023026:
	ldr r1, [sp, #0x3c]
	add r1, ip
_0802302A:
	cmp r3, #0
	blt _08023070
	cmp r1, #0
	blt _08023070
	cmp r3, #0x1d
	bgt _08023070
	cmp r1, #0x13
	bgt _08023070
	movs r6, #0x19
	mov r2, sb
	subs r0, r6, r2
	adds r2, r0, r4
	mov r6, sl
	subs r0, r6, r7
	adds r0, r0, r5
	cmp r2, #0
	blt _08023070
	cmp r0, #0
	blt _08023070
	cmp r2, #0x1d
	bgt _08023070
	cmp r0, #0x13
	bgt _08023070
	lsls r0, r0, #5
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r2, [sp, #0x38]
	adds r0, r0, r2
	lsls r1, r1, #5
	adds r1, r1, r3
	lsls r1, r1, #1
	ldr r3, [sp, #0x34]
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r0]
_08023070:
	adds r4, #1
	ldr r6, [sp, #0x68]
	cmp r4, r6
	blt _08023002
_08023078:
	ldr r5, [sp, #0x4c]
	ldr r0, [sp, #0x40]
	cmp r5, r0
	blt _08022FE8
_08023080:
	movs r1, #1
	str r1, [sp, #0x14]
	b _08023090
_08023086:
	movs r0, #9
	mov r2, r8
	str r0, [r2]
	movs r0, #0
	str r0, [r2, #4]
_08023090:
	movs r0, #9
	bl main_checkKeysTriggered
	cmp r0, #0
	bne _0802309C
	b _08023478
_0802309C:
	movs r0, #9
	mov r3, r8
	str r0, [r3]
	b _08023478
_080230A4:
	ldr r0, _08023154 @ =_080DB84C
	bl sub_8022564
	ldr r6, _08023154 @ =_080DB84C
	ldr r4, [r6, #8]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	ldr r4, _08023158 @ =_0809BD7C
	movs r0, #0
	movs r1, #0
	movs r2, #0x14
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	ldr r7, _0802315C @ =0x03002E44
	ldr r1, _08023160 @ =0x00000BEE
	adds r0, r7, r1
	ldrh r1, [r0]
	lsrs r1, r1, #1
	movs r0, #1
	bics r0, r1
	cmp r0, #0
	bne _0802314C
	ldrb r0, [r6, #1]
	lsls r0, r0, #1
	movs r1, #0x13
	subs r1, r1, r0
	mov sl, r1
	movs r1, #0
	ldr r2, _08023164 @ =0x00000FFF
	mov sb, r2
_080230F6:
	adds r7, r1, #1
	adds r5, r1, #0
	adds r5, #0x16
	mov r4, sl
	adds r4, #2
	movs r6, #1
_08023102:
	movs r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldrh r1, [r0]
	mov r3, sb
	ands r1, r3
	strh r1, [r0]
	movs r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldrh r1, [r0]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	adds r4, #1
	subs r6, #1
	cmp r6, #0
	bge _08023102
	adds r1, r7, #0
	cmp r1, #6
	ble _080230F6
	ldr r4, _08023168 @ =_080AAD7C
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x80
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
_0802314C:
	movs r0, #0xa
_0802314E:
	mov r6, r8
	str r0, [r6]
	b _08023478
	.align 2, 0
_08023154: .4byte _080DB84C
_08023158: .4byte _0809BD7C
_0802315C: .4byte 0x03002E44
_08023160: .4byte 0x00000BEE
_08023164: .4byte 0x00000FFF
_08023168: .4byte _080AAD7C
_0802316C:
	bl sub_8022680
	movs r6, #0
	mov r5, r8
	adds r5, #0x8c
	mov r4, r8
	adds r4, #0x50
_0802317A:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8022374
	adds r4, #0xc
	adds r6, #1
	cmp r6, #4
	ble _0802317A
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r2, r0, #0
	movs r0, #6
	adds r1, r5, #0
	bl sub_8022374
	ldr r0, _080231EC @ =_0809B8D4
	ldr r1, _080231F0 @ =0x06017000
	bl LZ77UnCompVram
	ldr r4, _080231F4 @ =_0809B8C0
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r7, #0xf5
	lsls r7, r7, #1
	adds r1, r1, r7
	adds r0, r4, #0
	movs r2, #0xa
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	movs r1, #0
	movs r0, #0x6c
	mov r2, r8
	strh r0, [r2, #0x18]
	strh r1, [r2, #0x1a]
	movs r3, #1
	str r3, [sp, #0x14]
	movs r0, #0xb
	str r0, [r2]
	str r1, [r2, #0xc]
_080231E4:
	str r1, [r2, #8]
	str r1, [r2, #4]
	b _08023478
	.align 2, 0
_080231EC: .4byte _0809B8D4
_080231F0: .4byte 0x06017000
_080231F4: .4byte _0809B8C0
_080231F8:
	mov r6, r8
	ldr r7, [r6, #0xc]
	ldr r1, _080233C8 @ =_080DB84C
	ldrb r0, [r1, #1]
	lsls r0, r0, #1
	movs r1, #0x13
	subs r1, r1, r0
	mov sb, r1
	lsls r2, r7, #1
	add r2, sb
	movs r0, #0
	movs r1, #0x15
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x1b
	movs r2, #0x1e
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r2, [r6, #0xc]
	lsls r2, r2, #1
	adds r2, #1
	add r2, sb
	movs r0, #0
	movs r1, #0x15
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x1b
	movs r2, #0x1f
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r2, _080233C8 @ =_080DB84C
	ldr r0, [r2, #4]
	ldr r1, [r6, #0xc]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _08023264
	ldr r3, _080233CC @ =0x03002E44
	ldr r6, _080233D0 @ =0x00000BEE
	adds r0, r3, r6
	ldrh r1, [r0]
	lsrs r1, r1, #1
	movs r0, #1
	bics r0, r1
	cmp r0, #0
	beq _080232B4
_08023264:
	movs r1, #0
_08023266:
	movs r4, #0
	adds r6, r1, #1
	adds r5, r1, #0
	adds r5, #0x16
_0802326E:
	mov r0, r8
	ldr r2, [r0, #0xc]
	lsls r2, r2, #1
	add r2, sb
	adds r2, r2, r4
	movs r0, #0
	adds r1, r5, #0
	bl map_getBufferPtr2d
	ldrh r1, [r0]
	ldr r3, _080233D4 @ =0x00000FFF
	adds r2, r3, #0
	ands r1, r2
	strh r1, [r0]
	mov r0, r8
	ldr r2, [r0, #0xc]
	lsls r2, r2, #1
	add r2, sb
	adds r2, r2, r4
	movs r0, #0
	adds r1, r5, #0
	bl map_getBufferPtr2d
	ldrh r1, [r0]
	movs r3, #0xe0
	lsls r3, r3, #8
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	adds r4, #1
	cmp r4, #1
	ble _0802326E
	adds r1, r6, #0
	cmp r1, #6
	ble _08023266
_080232B4:
	bl main_getRepeatTriggerKeys
	movs r1, #0x40
	ands r1, r0
	cmp r1, #0
	beq _080232C8
	mov r6, r8
	ldr r0, [r6, #0xc]
	subs r0, #1
	str r0, [r6, #0xc]
_080232C8:
	bl main_getRepeatTriggerKeys
	movs r1, #0x80
	ands r1, r0
	cmp r1, #0
	beq _080232DC
	mov r1, r8
	ldr r0, [r1, #0xc]
	adds r0, #1
	str r0, [r1, #0xc]
_080232DC:
	mov r2, r8
	ldr r0, [r2, #0xc]
	cmp r0, #0
	bge _080232EC
	ldr r3, _080233C8 @ =_080DB84C
	ldrb r0, [r3, #1]
	subs r0, #1
	str r0, [r2, #0xc]
_080232EC:
	ldr r6, _080233C8 @ =_080DB84C
	ldrb r0, [r6, #1]
	subs r0, #1
	mov r2, r8
	ldr r1, [r2, #0xc]
	cmp r1, r0
	ble _080232FE
	movs r0, #0
	str r0, [r2, #0xc]
_080232FE:
	mov r3, r8
	ldr r0, [r3, #0xc]
	cmp r7, r0
	beq _08023390
	lsls r4, r7, #1
	mov r6, sb
	adds r2, r6, r4
	movs r0, #0
	movs r1, #0x15
	bl map_getBufferPtr2d
	movs r5, #0
	strh r5, [r0]
	adds r2, r4, #1
	add r2, sb
	movs r0, #0
	movs r1, #0x15
	bl map_getBufferPtr2d
	strh r5, [r0]
	ldr r1, _080233C8 @ =_080DB84C
	ldr r0, [r1, #4]
	adds r0, r0, r7
	ldrb r0, [r0]
	mov sl, r4
	cmp r0, #3
	bne _08023346
	ldr r2, _080233CC @ =0x03002E44
	ldr r3, _080233D0 @ =0x00000BEE
	adds r0, r2, r3
	ldrh r1, [r0]
	lsrs r1, r1, #1
	movs r0, #1
	bics r0, r1
	cmp r0, #0
	beq _0802338A
_08023346:
	movs r1, #0
_08023348:
	movs r6, #0
	adds r7, r1, #1
	adds r5, r1, #0
	adds r5, #0x16
_08023350:
	mov r4, sb
	add r4, sl
	adds r4, r4, r6
	movs r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldrh r1, [r0]
	ldr r2, _080233D4 @ =0x00000FFF
	ands r1, r2
	strh r1, [r0]
	movs r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldrh r1, [r0]
	movs r3, #0xf0
	lsls r3, r3, #8
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	adds r6, #1
	cmp r6, #1
	ble _08023350
	adds r1, r7, #0
	cmp r1, #6
	ble _08023348
_0802338A:
	movs r0, #0x8d
	bl m4aSongNumStart
_08023390:
	movs r6, #1
	str r6, [sp, #0x14]
	movs r0, #9
	bl main_checkKeysTriggered
	cmp r0, #0
	beq _08023478
	ldr r7, _080233C8 @ =_080DB84C
	ldr r0, [r7, #4]
	mov r2, r8
	ldr r1, [r2, #0xc]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne _080233D8
	ldr r3, _080233CC @ =0x03002E44
	ldr r6, _080233D0 @ =0x00000BEE
	adds r0, r3, r6
	ldrh r1, [r0]
	lsrs r1, r1, #1
	ldr r0, [sp, #0x14]
	bics r0, r1
	cmp r0, #0
	bne _080233D8
	movs r0, #0x91
	bl m4aSongNumStart
	b _08023478
	.align 2, 0
_080233C8: .4byte _080DB84C
_080233CC: .4byte 0x03002E44
_080233D0: .4byte 0x00000BEE
_080233D4: .4byte 0x00000FFF
_080233D8:
	movs r0, #0x8f
	bl m4aSongNumStart
	movs r0, #0xc
	b _08023474
_080233E2:
	ldr r1, _080233FC @ =_080DB84C
	ldr r0, [r1, #4]
	mov r2, r8
	ldr r1, [r2, #0xc]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #7
	bhi _08023472
	lsls r0, r0, #2
	ldr r1, _08023400 @ =_08023404
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080233FC: .4byte _080DB84C
_08023400: .4byte _08023404
_08023404: @ jump table
	.4byte _08023424 @ case 0
	.4byte _0802343C @ case 1
	.4byte _0802344C @ case 2
	.4byte _08023450 @ case 3
	.4byte _08023460 @ case 4
	.4byte _08023472 @ case 5
	.4byte _08023472 @ case 6
	.4byte _08023472 @ case 7
_08023424:
	movs r0, #1
	ldr r3, _08023434 @ =0x03002E44
	movs r6, #0xfd
	lsls r6, r6, #3
	adds r1, r3, r6
	strb r0, [r1]
	ldr r1, _08023438 @ =0x03005C50
	b _08023470
	.align 2, 0
_08023434: .4byte 0x03002E44
_08023438: .4byte 0x03005C50
_0802343C:
	movs r1, #2
	ldr r7, _08023448 @ =0x03002E44
	movs r2, #0xfd
	lsls r2, r2, #3
	adds r0, r7, r2
	b _0802346A
	.align 2, 0
_08023448: .4byte 0x03002E44
_0802344C:
	movs r1, #3
	b _08023462
_08023450:
	movs r1, #6
	ldr r7, _0802345C @ =0x03002E44
	movs r2, #0xfd
	lsls r2, r2, #3
	adds r0, r7, r2
	b _0802346A
	.align 2, 0
_0802345C: .4byte 0x03002E44
_08023460:
	movs r1, #4
_08023462:
	ldr r3, _08023590 @ =0x03002E44
	movs r6, #0xfd
	lsls r6, r6, #3
	adds r0, r3, r6
_0802346A:
	strb r1, [r0]
	ldr r1, _08023594 @ =0x03005C50
	movs r0, #1
_08023470:
	str r0, [r1]
_08023472:
	movs r0, #0xd
_08023474:
	mov r7, r8
	str r0, [r7]
_08023478:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _08023484
_0802347E: @ 0x0802347E
	movs r0, #1
	bl map_setBufferDirty
_08023484:
	mov r1, r8
	ldr r0, [r1]
	cmp r0, #0xa
	ble _0802355A
	ldr r0, _08023598 @ =0x03002E20
	ldr r0, [r0, #0x10]
	ldr r2, _0802359C @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802349C
	adds r0, #0x3f
_0802349C:
	asrs r1, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	ldr r1, _080235A0 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	subs r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov sl, r0
	movs r2, #0
	str r2, [sp, #0x44]
	movs r3, #0x1f
	mov sb, r3
	movs r7, #0x1f
	ldr r6, _080235A4 @ =_080AAD3C
	adds r6, #0x40
	str r6, [sp, #0x58]
_080234CC:
	ldr r0, [sp, #0x44]
	lsls r0, r0, #1
	str r0, [sp, #0x6c]
	ldr r1, _080235A4 @ =_080AAD3C
	adds r0, r0, r1
	ldrh r4, [r0]
	adds r5, r4, #0
	ands r5, r7
	lsrs r6, r4, #5
	mov r2, sb
	ands r6, r2
	lsrs r4, r4, #0xa
	ands r4, r2
	ldr r3, [sp, #0x58]
	ldrh r1, [r3]
	adds r0, r1, #0
	ands r0, r7
	lsrs r2, r1, #5
	mov r3, sb
	ands r2, r3
	lsrs r1, r1, #0xa
	ands r1, r3
	subs r0, r0, r5
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	asrs r0, r0, #0xf
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	subs r2, r2, r6
	mov r0, sl
	muls r0, r2, r0
	asrs r0, r0, #0xf
	adds r6, r6, r0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	subs r1, r1, r4
	mov r0, sl
	muls r0, r1, r0
	asrs r0, r0, #0xf
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0
	bl pltt_getBuffer
	ldr r1, [sp, #0x6c]
	adds r3, r1, r0
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r3, r3, r2
	ands r5, r7
	ands r6, r7
	lsls r6, r6, #5
	orrs r5, r6
	ands r4, r7
	lsls r4, r4, #0xa
	orrs r5, r4
	strh r5, [r3]
	ldr r3, [sp, #0x58]
	adds r3, #2
	str r3, [sp, #0x58]
	ldr r6, [sp, #0x44]
	adds r6, #1
	str r6, [sp, #0x44]
	cmp r6, #0xf
	ble _080234CC
	movs r0, #1
	bl pltt_setDirtyFlag
_0802355A:
	mov r7, r8
	ldr r0, [r7]
	cmp r0, #0xd
	beq _0802357E
	cmp r0, #6
	ble _0802357E
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _0802357E
	ldr r0, _080235A8 @ =_080C978C
	mov r1, r8
	adds r1, #0x18
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r3, #0
	bl oam_renderCellData
_0802357E:
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023590: .4byte 0x03002E44
_08023594: .4byte 0x03005C50
_08023598: .4byte 0x03002E20
_0802359C: .4byte gSinTable
_080235A0: .4byte 0x000003FF
_080235A4: .4byte _080AAD3C
_080235A8: .4byte _080C978C

	thumb_func_start sub_80235AC
sub_80235AC: @ 0x080235AC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	ldr r0, _08023608 @ =0x03002E20
	ldr r1, _0802360C @ =0x0000080A
	adds r0, r0, r1
	ldrh r4, [r0]
	lsrs r4, r4, #8
	movs r0, #0xf
	ands r4, r0
	subs r4, #1
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_803DAB8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r5]
	str r4, [r7]
	cmp r4, #0
	blt _08023600
_080235D8:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_803DAB8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [r5]
	cmp r1, r0
	blt _080235FA
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_803DAB8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r5]
	str r4, [r7]
_080235FA:
	subs r4, #1
	cmp r4, #0
	bge _080235D8
_08023600:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023608: .4byte 0x03002E20
_0802360C: .4byte 0x0000080A

	thumb_func_start sub_8023610
sub_8023610: @ 0x08023610
	push {r4, lr}
	ldr r4, _0802365C @ =_080AACF0
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	movs r4, #0
	bl sub_802DC88
	cmp r0, #0
	beq _08023642
	bl sub_802DCB4
	cmp r0, #0
	bne _08023644
_08023642:
	movs r4, #1
_08023644:
	cmp r4, #0
	beq _08023668
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08023660 @ =_080AAE3C
	movs r2, #0xc0
	lsls r2, r2, #0x13
	ldr r3, _08023664 @ =0x80000400
	bl dmaq_enqueue
	b _08023686
	.align 2, 0
_0802365C: .4byte _080AACF0
_08023660: .4byte _080AAE3C
_08023664: .4byte 0x80000400
_08023668:
	bl dmaq_getVBlankDmaQueue
	ldr r1, _080236B8 @ =_080AAE3C
	movs r2, #0xc0
	lsls r2, r2, #0x13
	ldr r3, _080236BC @ =0x80000230
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _080236C0 @ =_080AD8BC
	ldr r2, _080236C4 @ =0x06000080
	ldr r3, _080236C8 @ =0x800000E0
	bl dmaq_enqueue
_08023686:
	bl dmaq_getVBlankDmaQueue
	ldr r1, _080236CC @ =_0809C4FC
	ldr r2, _080236D0 @ =0x06000800
	ldr r3, _080236D4 @ =0x80000600
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _080236D8 @ =_080AC6FC
	ldr r2, _080236DC @ =0x06001400
	ldr r3, _080236E0 @ =0x80000200
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _080236E4 @ =_080ABEFC
	ldr r2, _080236E8 @ =0x06002000
	ldr r3, _080236EC @ =0x80000400
	bl dmaq_enqueue
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080236B8: .4byte _080AAE3C
_080236BC: .4byte 0x80000230
_080236C0: .4byte _080AD8BC
_080236C4: .4byte 0x06000080
_080236C8: .4byte 0x800000E0
_080236CC: .4byte _0809C4FC
_080236D0: .4byte 0x06000800
_080236D4: .4byte 0x80000600
_080236D8: .4byte _080AC6FC
_080236DC: .4byte 0x06001400
_080236E0: .4byte 0x80000200
_080236E4: .4byte _080ABEFC
_080236E8: .4byte 0x06002000
_080236EC: .4byte 0x80000400

	thumb_func_start sub_80236F0
sub_80236F0: @ 0x080236F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	ldr r0, _08023730 @ =0x03002E20
	movs r1, #0x24
	adds r1, r1, r0
	mov sb, r1
	ldr r2, _08023734 @ =0x000007FB
	adds r0, r0, r2
	ldrb r6, [r0]
	movs r4, #0
	bl sub_802DC88
	cmp r0, #0
	beq _0802371E
	bl sub_802DCB4
	cmp r0, #0
	bne _08023720
_0802371E:
	movs r4, #1
_08023720:
	cmp r6, #3
	beq _0802375C
	cmp r6, #3
	bgt _08023738
	cmp r6, #2
	beq _0802373E
	b _08023794
	.align 2, 0
_08023730: .4byte 0x03002E20
_08023734: .4byte 0x000007FB
_08023738:
	cmp r6, #4
	beq _08023770
	b _08023794
_0802373E:
	cmp r4, #0
	beq _0802374C
	ldr r0, _08023748 @ =_0809D0FC
	b _0802374E
	.align 2, 0
_08023748: .4byte _0809D0FC
_0802374C:
	ldr r0, _08023758 @ =_0809D34C
_0802374E:
	ldr r1, [sp]
	bl LZ77UnCompWram
	b _08023794
	.align 2, 0
_08023758: .4byte _0809D34C
_0802375C:
	cmp r4, #0
	beq _08023768
	ldr r0, _08023764 @ =_0809D538
	b _08023776
	.align 2, 0
_08023764: .4byte _0809D538
_08023768:
	ldr r0, _0802376C @ =_0809DA38
	b _08023776
	.align 2, 0
_0802376C: .4byte _0809DA38
_08023770:
	cmp r4, #0
	beq _08023788
	ldr r0, _08023784 @ =_0809DF38
_08023776:
	movs r2, #0xa0
	lsls r2, r2, #1
	ldr r1, [sp]
	bl CpuFastSet
	b _08023794
	.align 2, 0
_08023784: .4byte _0809DF38
_08023788:
	ldr r0, _080237A4 @ =_0809E438
	movs r2, #0xa0
	lsls r2, r2, #1
	ldr r1, [sp]
	bl CpuFastSet
_08023794:
	cmp r6, #3
	beq _080237A8
	cmp r6, #3
	ble _08023856
	cmp r6, #4
	beq _08023804
	b _08023856
	.align 2, 0
_080237A4: .4byte _0809E438
_080237A8:
	movs r0, #0
_080237AA:
	movs r4, #0
	adds r1, r0, #1
	mov r8, r1
	cmp r4, r6
	bge _080237F4
	adds r7, r0, #4
	lsls r0, r7, #6
	ldr r2, [sp]
	adds r3, r2, r0
	movs r5, #0
_080237BE:
	lsls r1, r4, #2
	ldr r0, _080237FC @ =0x000007F4
	add r0, sb
	adds r0, r0, r1
	ldr r2, [r0]
	lsls r0, r7, #5
	adds r0, r0, r5
	lsls r0, r0, #1
	ldr r1, _08023800 @ =_0809D53C
	adds r0, r0, r1
	adds r2, #0xba
	ldrh r2, [r2]
	lsrs r2, r2, #1
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, #4
	adds r1, r3, r1
	movs r2, #7
	str r3, [sp, #0x14]
	bl CpuSet
	adds r5, #7
	adds r4, #1
	ldr r3, [sp, #0x14]
	cmp r4, r6
	blt _080237BE
_080237F4:
	mov r0, r8
	cmp r0, #3
	ble _080237AA
	b _08023856
	.align 2, 0
_080237FC: .4byte 0x000007F4
_08023800: .4byte _0809D53C
_08023804:
	movs r0, #0
_08023806:
	movs r4, #0
	adds r1, r0, #1
	mov r8, r1
	cmp r4, r6
	bge _08023850
	adds r7, r0, #4
	lsls r0, r7, #6
	ldr r2, [sp]
	adds r3, r2, r0
	movs r5, #0
_0802381A:
	lsls r1, r4, #2
	ldr r0, _08023894 @ =0x000007F4
	add r0, sb
	adds r0, r0, r1
	ldr r2, [r0]
	lsls r0, r7, #5
	adds r0, r0, r5
	lsls r0, r0, #1
	ldr r1, _08023898 @ =_0809DF3A
	adds r0, r0, r1
	adds r2, #0xba
	ldrh r2, [r2]
	lsrs r2, r2, #1
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r1, #2
	adds r1, r3, r1
	movs r2, #7
	str r3, [sp, #0x14]
	bl CpuSet
	adds r5, #7
	adds r4, #1
	ldr r3, [sp, #0x14]
	cmp r4, r6
	blt _0802381A
_08023850:
	mov r0, r8
	cmp r0, #3
	ble _08023806
_08023856:
	movs r4, #0
	cmp r4, r6
	bge _0802390C
	ldr r0, _08023894 @ =0x000007F4
	add r0, sb
	str r0, [sp, #4]
	ldr r1, _0802389C @ =_080DB8CC
	mov sl, r1
	subs r0, r6, #2
	lsls r0, r0, #3
	str r0, [sp, #0xc]
	ldr r0, _080238A0 @ =0x00000814
	add r0, sb
	ldr r0, [r0]
	str r0, [sp, #8]
	adds r0, #0xba
	str r0, [sp, #0x10]
_08023878:
	lsls r1, r4, #2
	ldr r2, [sp, #4]
	adds r0, r2, r1
	ldr r0, [r0]
	adds r7, r4, #1
	ldr r2, [sp, #8]
	cmp r2, r0
	bne _08023906
	movs r3, #0
	mov ip, r3
	cmp r6, #2
	bne _080238A4
	lsls r0, r4, #1
	b _080238BA
	.align 2, 0
_08023894: .4byte 0x000007F4
_08023898: .4byte _0809DF3A
_0802389C: .4byte _080DB8CC
_080238A0: .4byte 0x00000814
_080238A4:
	cmp r6, #2
	blt _080238CC
	cmp r6, #4
	bgt _080238CC
	ldr r1, [sp, #0x10]
	ldrh r0, [r1]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	ldr r2, [sp, #0xc]
	adds r0, r2, r0
	lsls r1, r0, #1
_080238BA:
	add r1, sl
	movs r2, #0
	ldrsh r3, [r1, r2]
	adds r0, #1
	lsls r0, r0, #1
	add r0, sl
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov ip, r1
_080238CC:
	movs r2, #0
	adds r7, r4, #1
	ldr r0, _0802391C @ =0x00000FFF
	mov sb, r0
	lsls r5, r3, #1
	movs r1, #0xe0
	lsls r1, r1, #8
	mov r8, r1
_080238DC:
	mov r1, ip
	adds r0, r1, r2
	adds r4, r2, #1
	lsls r0, r0, #6
	adds r0, r5, r0
	ldr r1, [sp]
	adds r2, r0, r1
	movs r3, #2
_080238EC:
	ldrh r1, [r2]
	mov r0, sb
	ands r0, r1
	mov r1, r8
	orrs r0, r1
	strh r0, [r2]
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bge _080238EC
	adds r2, r4, #0
	cmp r2, #1
	ble _080238DC
_08023906:
	adds r4, r7, #0
	cmp r4, r6
	blt _08023878
_0802390C:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802391C: .4byte 0x00000FFF

	thumb_func_start sub_8023920
sub_8023920: @ 0x08023920
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp]
	ldr r0, _08023964 @ =0x03002E20
	ldr r1, _08023968 @ =0x000007FB
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r4, #0
	cmp r4, r2
	blt _0802393E
	b _08023A6E
_0802393E:
	lsls r1, r4, #2
	ldr r3, _0802396C @ =0x03002E44
	ldr r5, _08023970 @ =0x000007F4
	adds r0, r3, r5
	adds r0, r0, r1
	ldr r0, [r0]
	mov r8, r0
	movs r0, #0
	str r0, [sp, #4]
	mov sl, r0
	str r1, [sp, #0x10]
	cmp r2, #3
	beq _08023988
	cmp r2, #3
	bgt _08023974
	cmp r2, #2
	beq _0802397A
	b _080239B2
	.align 2, 0
_08023964: .4byte 0x03002E20
_08023968: .4byte 0x000007FB
_0802396C: .4byte 0x03002E44
_08023970: .4byte 0x000007F4
_08023974:
	cmp r2, #4
	beq _0802399E
	b _080239B2
_0802397A:
	lsls r0, r4, #3
	subs r0, r0, r4
	adds r0, #6
	str r0, [sp, #4]
	movs r1, #0xc
	mov sl, r1
	b _080239B2
_08023988:
	mov r0, r8
	adds r0, #0xba
	ldrh r1, [r0]
	lsrs r1, r1, #1
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, #6
	str r0, [sp, #4]
	movs r3, #8
	mov sl, r3
	b _080239B2
_0802399E:
	mov r0, r8
	adds r0, #0xba
	ldrh r1, [r0]
	lsrs r1, r1, #1
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, #5
	str r0, [sp, #4]
	movs r5, #8
	mov sl, r5
_080239B2:
	movs r3, #0
	subs r0, r2, #1
	mov sb, r0
	adds r4, #1
	str r4, [sp, #0xc]
	cmp r3, sb
	bge _08023A66
	ldr r1, _08023AD4 @ =0x03002E44
	ldr r4, _08023AD8 @ =0x00000814
	adds r0, r1, r4
	ldr r0, [r0]
	str r0, [sp, #8]
_080239CA:
	movs r7, #0xf0
	lsls r7, r7, #8
	ldr r5, [sp, #8]
	cmp r5, r8
	bne _080239D8
	movs r7, #0xe0
	lsls r7, r7, #8
_080239D8:
	movs r1, #2
	cmp r2, #3
	bne _080239E0
	movs r1, #3
_080239E0:
	ldr r0, _08023ADC @ =0x03002C40
	ldr r4, [sp, #0x10]
	adds r5, r3, r4
	adds r5, r5, r0
	adds r0, r3, #0
	muls r0, r1, r0
	add r0, sl
	ldr r1, [sp, #4]
	lsls r4, r1, #1
	lsls r0, r0, #6
	ldr r1, [sp]
	adds r0, r0, r1
	adds r4, r4, r0
	ldrb r0, [r5]
	movs r1, #0xa
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	orrs r0, r7
	strh r0, [r4]
	adds r6, r4, #0
	adds r6, #0x40
	ldrb r0, [r5]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	orrs r0, r7
	strh r0, [r6]
	ldrb r0, [r5]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	orrs r0, r7
	strh r0, [r4, #2]
	adds r4, #0x42
	ldrb r0, [r5]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r5, #0x90
	lsls r5, r5, #1
	adds r0, r0, r5
	orrs r7, r0
	strh r7, [r4]
	ldr r3, [sp, #0x18]
	adds r3, #1
	ldr r2, [sp, #0x14]
	cmp r3, sb
	blt _080239CA
_08023A66:
	ldr r4, [sp, #0xc]
	cmp r4, r2
	bge _08023A6E
	b _0802393E
_08023A6E:
	ldr r6, [sp]
	adds r6, #0x78
	ldr r0, _08023AE0 @ =0x030029D4
	ldrb r0, [r0]
	mov r8, r0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r1, #0
	adds r1, r0, r4
	ldr r2, _08023AE4 @ =0xFFFFF000
	adds r5, r2, #0
	orrs r1, r5
	strh r1, [r6]
	ldr r1, [sp]
	adds r1, #0xb8
	movs r3, #0x90
	lsls r3, r3, #1
	adds r6, r3, #0
	adds r0, r0, r6
	orrs r0, r5
	strh r0, [r1]
	ldr r7, [sp]
	adds r7, #0x7a
	mov r0, r8
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r0, r4
	orrs r4, r5
	strh r4, [r7]
	ldr r1, [sp]
	adds r1, #0xba
	adds r0, r0, r6
	orrs r0, r5
	strh r0, [r1]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023AD4: .4byte 0x03002E44
_08023AD8: .4byte 0x00000814
_08023ADC: .4byte 0x03002C40
_08023AE0: .4byte 0x030029D4
_08023AE4: .4byte 0xFFFFF000

	thumb_func_start sub_8023AE8
sub_8023AE8: @ 0x08023AE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	bl sub_800EDE4
	mov sb, r0
	ldr r0, _08023B24 @ =0x03002E20
	adds r3, r0, #0
	adds r3, #0x24
	ldr r1, _08023B28 @ =0x000007FB
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	mov r4, sb
	ldr r0, [r4]
	cmp r0, #0xc
	bls _08023B18
	bl _080247CA
_08023B18:
	lsls r0, r0, #2
	ldr r1, _08023B2C @ =_08023B30
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08023B24: .4byte 0x03002E20
_08023B28: .4byte 0x000007FB
_08023B2C: .4byte _08023B30
_08023B30: @ jump table
	.4byte _08023B64 @ case 0
	.4byte _08023B88 @ case 1
	.4byte _08023BDC @ case 2
	.4byte _08023E88 @ case 3
	.4byte _08023F24 @ case 4
	.4byte _080242AC @ case 5
	.4byte _080244A4 @ case 6
	.4byte _080244CC @ case 7
	.4byte _0802450C @ case 8
	.4byte _08024518 @ case 9
	.4byte _08024570 @ case 10
	.4byte _0802476C @ case 11
	.4byte _080247CA @ case 12
_08023B64:
	movs r0, #0
	mov r6, sb
	str r0, [r6, #4]
	bl sub_804F570
	ldr r1, _08023B84 @ =0x030029D4
	ldrb r0, [r1]
	cmp r0, #0x62
	bhi _08023B7A
	adds r0, #1
	strb r0, [r1]
_08023B7A:
	movs r0, #1
	mov r7, sb
	str r0, [r7]
	bl _080247CA
	.align 2, 0
_08023B84: .4byte 0x030029D4
_08023B88:
	bl dmaq_getVBlankDmaQueue
	adds r4, r0, #0
	ldr r5, _08023BCC @ =0x0203EC28
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r2, r0, #0
	ldr r3, _08023BD0 @ =0x81000280
	adds r0, r4, #0
	adds r1, r5, #0
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	adds r4, r0, #0
	ldr r5, _08023BD4 @ =0x06003800
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r2, r0, #0
	ldr r3, _08023BD8 @ =0x80000280
	adds r0, r4, #0
	adds r1, r5, #0
	bl dmaq_enqueue
	movs r0, #2
	mov r1, sb
	bl _080247C8
	.align 2, 0
_08023BCC: .4byte 0x0203EC28
_08023BD0: .4byte 0x81000280
_08023BD4: .4byte 0x06003800
_08023BD8: .4byte 0x80000280
_08023BDC:
	ldr r0, _08023E70 @ =0x03002E20
	ldr r0, [r0, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08023BF0
	mov r2, sb
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
_08023BF0:
	mov r3, sb
	ldr r0, [r3, #4]
	cmp r0, #9
	ble _08023BFA
	b _08023E74
_08023BFA:
	rsbs r0, r0, #0
	mov r8, r0
	mov r4, r8
	str r4, [sp, #0x68]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0xc]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sl, r0
	movs r1, #0
_08023C1C:
	adds r5, r1, #1
	mov r6, r8
	adds r4, r5, r6
	lsls r0, r4, #5
	lsls r1, r5, #5
	adds r1, #4
	adds r0, #4
	ldr r7, [sp, #0x68]
	adds r0, r7, r0
	adds r2, r7, #0
	adds r2, #4
	movs r6, #7
	lsls r0, r0, #1
	mov r7, sl
	adds r3, r0, r7
	lsls r1, r1, #1
	ldr r0, [sp, #0xc]
	adds r1, r1, r0
_08023C40:
	cmp r2, #0
	blt _08023C54
	cmp r4, #0
	blt _08023C54
	cmp r2, #0x1d
	bgt _08023C54
	cmp r4, #0x13
	bgt _08023C54
	ldrh r0, [r1]
	strh r0, [r3]
_08023C54:
	adds r1, #2
	adds r3, #2
	adds r2, #1
	subs r6, #1
	cmp r6, #0
	bge _08023C40
	adds r1, r5, #0
	cmp r1, #3
	blt _08023C1C
	mov r1, sb
	ldr r0, [r1, #4]
	str r0, [sp, #0x68]
	rsbs r2, r0, #0
	str r2, [sp, #0x10]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sl, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov r8, r0
	movs r1, #0
_08023C8A:
	adds r5, r1, #1
	ldr r3, [sp, #0x10]
	adds r4, r5, r3
	lsls r0, r4, #5
	lsls r1, r5, #5
	adds r1, #0x11
	adds r0, #0x11
	ldr r6, [sp, #0x68]
	adds r0, r6, r0
	adds r2, r6, #0
	adds r2, #0x11
	movs r6, #0xc
	lsls r0, r0, #1
	mov r7, r8
	adds r3, r0, r7
	lsls r1, r1, #1
	add r1, sl
_08023CAC:
	cmp r2, #0
	blt _08023CC0
	cmp r4, #0
	blt _08023CC0
	cmp r2, #0x1d
	bgt _08023CC0
	cmp r4, #0x13
	bgt _08023CC0
	ldrh r0, [r1]
	strh r0, [r3]
_08023CC0:
	adds r1, #2
	adds r3, #2
	adds r2, #1
	subs r6, #1
	cmp r6, #0
	bge _08023CAC
	adds r1, r5, #0
	cmp r1, #3
	blt _08023C8A
	mov r1, sb
	ldr r0, [r1, #4]
	rsbs r7, r0, #0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sl, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov r8, r0
	movs r0, #0
_08023CF2:
	movs r4, #0
	adds r5, r0, #2
	adds r0, #1
	mov ip, r0
	adds r3, r5, #0
	lsls r0, r3, #6
	mov r6, sl
	adds r2, r0, r6
	lsls r0, r3, #5
	adds r0, r7, r0
	lsls r0, r0, #1
	mov r6, r8
	adds r1, r0, r6
_08023D0C:
	adds r0, r4, r7
	cmp r0, #0
	blt _08023D22
	cmp r5, #0
	blt _08023D22
	cmp r0, #0x1d
	bgt _08023D22
	cmp r3, #0x13
	bgt _08023D22
	ldrh r0, [r2]
	strh r0, [r1]
_08023D22:
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #5
	blt _08023D0C
	mov r0, ip
	cmp r0, #0xd
	blt _08023CF2
	mov r7, sb
	ldr r0, [r7, #4]
	rsbs r0, r0, #0
	mov sl, r0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r7, r0, #0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov r8, r0
	movs r0, #0
_08023D54:
	movs r3, #0
	mov r1, sl
	adds r5, r0, r1
	adds r6, r0, #1
	adds r4, r5, #0
	lsls r1, r4, #5
	adds r1, #4
	lsls r0, r0, #5
	adds r2, r0, #4
	lsls r1, r1, #1
	add r1, r8
_08023D6A:
	adds r0, r3, #4
	cmp r0, #0
	blt _08023D84
	cmp r5, #0
	blt _08023D84
	cmp r0, #0x1d
	bgt _08023D84
	cmp r4, #0x13
	bgt _08023D84
	lsls r0, r2, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r1]
_08023D84:
	adds r1, #2
	adds r2, #1
	adds r3, #1
	cmp r3, #0xd
	blt _08023D6A
	adds r0, r6, #0
	cmp r0, #5
	blt _08023D54
	mov r2, sb
	ldr r7, [r2, #4]
	str r7, [sp, #0x14]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sl, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov r8, r0
	movs r0, #0
	mov r3, sb
	ldr r3, [r3, #4]
	mov ip, r3
_08023DBA:
	adds r1, r0, #0
	adds r1, #0xb
	adds r0, #1
	str r0, [sp, #0x6c]
	ldr r6, [sp, #0x14]
	adds r4, r1, r6
	lsls r0, r4, #5
	lsls r1, r1, #5
	adds r1, #0x15
	adds r0, #0x15
	adds r0, r7, r0
	adds r2, r7, #0
	adds r2, #0x15
	movs r5, #9
	lsls r0, r0, #1
	mov r6, r8
	adds r3, r0, r6
	lsls r1, r1, #1
	add r1, sl
_08023DE0:
	cmp r2, #0
	blt _08023DF4
	cmp r4, #0
	blt _08023DF4
	cmp r2, #0x1d
	bgt _08023DF4
	cmp r4, #0x13
	bgt _08023DF4
	ldrh r0, [r1]
	strh r0, [r3]
_08023DF4:
	adds r1, #2
	adds r3, #2
	adds r2, #1
	subs r5, #1
	cmp r5, #0
	bge _08023DE0
	ldr r0, [sp, #0x6c]
	cmp r0, #0xa
	blt _08023DBA
	mov r7, ip
	rsbs r7, r7, #0
	mov sl, r7
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov r8, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r7, r0, #0
	movs r1, #0
_08023E26:
	movs r0, #0
	adds r5, r1, #0
	adds r5, #0x10
	adds r6, r1, #1
	adds r4, r5, #0
	lsls r3, r4, #5
_08023E32:
	adds r0, #1
	mov r2, sl
	adds r1, r0, r2
	adds r2, r0, #0
	cmp r1, #0
	blt _08023E5A
	cmp r5, #0
	blt _08023E5A
	cmp r1, #0x1d
	bgt _08023E5A
	cmp r4, #0x13
	bgt _08023E5A
	adds r0, r3, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	adds r1, r3, r2
	lsls r1, r1, #1
	add r1, r8
	ldrh r1, [r1]
	strh r1, [r0]
_08023E5A:
	adds r0, r2, #0
	cmp r0, #6
	blt _08023E32
	adds r1, r6, #0
	cmp r1, #3
	blt _08023E26
	movs r3, #1
	str r3, [sp, #8]
	bl _080247CA
	.align 2, 0
_08023E70: .4byte 0x03002E20
_08023E74:
	movs r0, #0
	mov r4, sb
	str r0, [r4, #4]
	movs r0, #3
	str r0, [r4]
	movs r0, #0x11
	bl m4aSongNumStart
	bl _080247CA
_08023E88:
	bl sub_8023610
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	bl sub_80236F0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	bl sub_8023920
	movs r5, #0
	ldr r6, [sp, #4]
	cmp r5, r6
	bge _08023F04
	ldr r0, _08023F14 @ =0x03002E20
	mov r4, sb
	adds r4, #0x10
	ldr r7, _08023F18 @ =0x00000818
	adds r6, r0, r7
_08023EBA:
	ldr r0, [r6]
	adds r0, #0x4c
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	bl sub_800EDB0
	movs r1, #0
	strb r0, [r4]
	strb r1, [r4, #1]
	strh r1, [r4, #2]
	ldr r0, _08023F1C @ =0x03002C80
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r5
	bne _08023EDE
	movs r1, #2
_08023EDE:
	strh r1, [r4, #6]
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r5, #0
	adds r1, #0xa
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r4, #0xc]
	lsls r0, r5, #9
	ldr r1, _08023F20 @ =0x06001800
	adds r0, r0, r1
	str r0, [r4, #0x10]
	adds r4, #0x14
	adds r6, #4
	adds r5, #1
	ldr r2, [sp, #4]
	cmp r5, r2
	blt _08023EBA
_08023F04:
	movs r0, #0
	mov r3, sb
	str r0, [r3, #4]
	str r0, [r3, #8]
	movs r0, #4
	str r0, [r3]
	bl _080247CA
	.align 2, 0
_08023F14: .4byte 0x03002E20
_08023F18: .4byte 0x00000818
_08023F1C: .4byte 0x03002C80
_08023F20: .4byte 0x06001800
_08023F24:
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	cmp r0, #0
	bgt _08023F32
	b _0802428A
_08023F32:
	movs r1, #0
	str r1, [r4, #8]
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #0x2f
	ble _08023F42
	b _08024282
_08023F42:
	str r1, [sp]
	movs r0, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _08023FC8 @ =0x01000140
	mov r0, sp
	bl CpuFastSet
	ldr r1, [r4, #4]
	movs r0, #0x20
	subs r0, r0, r1
	cmp r0, #0
	bge _08023F62
	movs r0, #0
_08023F62:
	adds r6, r0, #0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov r8, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r7, r0, #0
	movs r3, #0
_08023F7E:
	movs r4, #0
	adds r5, r3, #1
	lsls r0, r3, #6
	mov r1, r8
	adds r2, r0, r1
	lsls r0, r3, #5
	adds r0, r6, r0
	lsls r0, r0, #1
	adds r1, r0, r7
_08023F90:
	adds r0, r4, r6
	cmp r0, #0
	blt _08023FA6
	cmp r3, #0
	blt _08023FA6
	cmp r0, #0x1d
	bgt _08023FA6
	cmp r3, #0x13
	bgt _08023FA6
	ldrh r0, [r2]
	strh r0, [r1]
_08023FA6:
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #0x20
	blt _08023F90
	adds r3, r5, #0
	cmp r3, #3
	blt _08023F7E
	ldr r2, [sp, #4]
	cmp r2, #3
	beq _0802406C
	cmp r2, #3
	bgt _08023FCC
	cmp r2, #2
	beq _08023FD6
	b _0802427C
	.align 2, 0
_08023FC8: .4byte 0x01000140
_08023FCC:
	ldr r3, [sp, #4]
	cmp r3, #4
	bne _08023FD4
	b _08024176
_08023FD4:
	b _0802427C
_08023FD6:
	movs r5, #0
_08023FD8:
	lsls r0, r5, #1
	adds r0, r0, r5
	adds r0, #0x23
	mov r4, sb
	ldr r1, [r4, #4]
	subs r1, r0, r1
	cmp r1, #0
	bge _08023FEA
	movs r1, #0
_08023FEA:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #1
	str r0, [sp, #0x68]
	str r1, [sp, #0x18]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x1c]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x20]
	movs r0, #0
	adds r5, #1
	mov r8, r5
	ldr r6, [sp, #0x18]
	ldr r7, [sp, #0x68]
	adds r6, r6, r7
	mov sl, r6
_0802401A:
	adds r5, r0, #7
	adds r0, #1
	mov ip, r0
	adds r4, r5, #0
	lsls r0, r4, #5
	ldr r2, [sp, #0x68]
	adds r1, r2, r0
	add r0, sl
	ldr r3, [sp, #0x18]
	adds r2, r2, r3
	movs r6, #9
	lsls r0, r0, #1
	ldr r7, [sp, #0x20]
	adds r3, r0, r7
	lsls r1, r1, #1
	ldr r0, [sp, #0x1c]
	adds r1, r1, r0
_0802403C:
	cmp r2, #0
	blt _08024050
	cmp r5, #0
	blt _08024050
	cmp r2, #0x1d
	bgt _08024050
	cmp r4, #0x13
	bgt _08024050
	ldrh r0, [r1]
	strh r0, [r3]
_08024050:
	adds r1, #2
	adds r3, #2
	adds r2, #1
	subs r6, #1
	cmp r6, #0
	bge _0802403C
	mov r0, ip
	cmp r0, #7
	blt _0802401A
	mov r5, r8
	ldr r1, [sp, #4]
	cmp r5, r1
	blt _08023FD8
	b _0802427C
_0802406C:
	mov r2, sb
	ldr r1, [r2, #4]
	movs r0, #0x23
	subs r0, r0, r1
	cmp r0, #0
	bge _0802407A
	movs r0, #0
_0802407A:
	adds r7, r0, #0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sl, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov r8, r0
	movs r0, #0
_08024096:
	movs r4, #0
	adds r5, r0, #0
	adds r5, #8
	adds r0, #1
	mov ip, r0
	adds r3, r5, #0
	lsls r0, r3, #6
	mov r6, sl
	adds r2, r0, r6
	lsls r0, r3, #5
	adds r0, r7, r0
	lsls r0, r0, #1
	mov r6, r8
	adds r1, r0, r6
_080240B2:
	adds r0, r4, r7
	cmp r0, #0
	blt _080240C8
	cmp r5, #0
	blt _080240C8
	cmp r0, #0x1d
	bgt _080240C8
	cmp r3, #0x13
	bgt _080240C8
	ldrh r0, [r2]
	strh r0, [r1]
_080240C8:
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #4
	blt _080240B2
	mov r0, ip
	cmp r0, #5
	blt _08024096
	movs r5, #0
	ldr r7, [sp, #4]
	cmp r5, r7
	blt _080240E2
	b _0802427C
_080240E2:
	lsls r0, r5, #1
	adds r0, r0, r5
	adds r0, #0x23
	mov r2, sb
	ldr r1, [r2, #4]
	subs r1, r0, r1
	cmp r1, #0
	bge _080240F4
	movs r1, #0
_080240F4:
	lsls r0, r5, #3
	subs r0, r0, r5
	adds r0, #2
	str r0, [sp, #0x68]
	str r1, [sp, #0x24]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x28]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x2c]
	movs r0, #0
	adds r5, #1
	mov r8, r5
	ldr r3, [sp, #0x24]
	ldr r4, [sp, #0x68]
	adds r3, r3, r4
	mov sl, r3
_08024124:
	adds r5, r0, #4
	adds r0, #1
	mov ip, r0
	adds r4, r5, #0
	lsls r0, r4, #5
	ldr r6, [sp, #0x68]
	adds r1, r6, r0
	add r0, sl
	ldr r7, [sp, #0x24]
	adds r2, r6, r7
	movs r6, #6
	lsls r0, r0, #1
	ldr r7, [sp, #0x2c]
	adds r3, r0, r7
	lsls r1, r1, #1
	ldr r0, [sp, #0x28]
	adds r1, r1, r0
_08024146:
	cmp r2, #0
	blt _0802415A
	cmp r5, #0
	blt _0802415A
	cmp r2, #0x1d
	bgt _0802415A
	cmp r4, #0x13
	bgt _0802415A
	ldrh r0, [r1]
	strh r0, [r3]
_0802415A:
	adds r1, #2
	adds r3, #2
	adds r2, #1
	subs r6, #1
	cmp r6, #0
	bge _08024146
	mov r0, ip
	cmp r0, #9
	blt _08024124
	mov r5, r8
	ldr r1, [sp, #4]
	cmp r5, r1
	blt _080240E2
	b _0802427C
_08024176:
	mov r2, sb
	ldr r1, [r2, #4]
	movs r0, #0x23
	subs r0, r0, r1
	cmp r0, #0
	bge _08024184
	movs r0, #0
_08024184:
	adds r7, r0, #0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sl, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov r8, r0
	movs r0, #0
_080241A0:
	movs r4, #0
	adds r5, r0, #0
	adds r5, #8
	adds r0, #1
	mov ip, r0
	adds r3, r5, #0
	lsls r0, r3, #6
	mov r6, sl
	adds r2, r0, r6
	lsls r0, r3, #5
	adds r0, r7, r0
	lsls r0, r0, #1
	mov r6, r8
	adds r1, r0, r6
_080241BC:
	adds r0, r4, r7
	cmp r0, #0
	blt _080241D2
	cmp r5, #0
	blt _080241D2
	cmp r0, #0x1d
	bgt _080241D2
	cmp r3, #0x13
	bgt _080241D2
	ldrh r0, [r2]
	strh r0, [r1]
_080241D2:
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #4
	blt _080241BC
	mov r0, ip
	cmp r0, #6
	blt _080241A0
	movs r5, #0
	ldr r7, [sp, #4]
	cmp r5, r7
	bge _0802427C
_080241EA:
	lsls r0, r5, #1
	adds r0, r0, r5
	adds r0, #0x23
	mov r2, sb
	ldr r1, [r2, #4]
	subs r1, r0, r1
	cmp r1, #0
	bge _080241FC
	movs r1, #0
_080241FC:
	lsls r0, r5, #3
	subs r0, r0, r5
	adds r0, #1
	str r0, [sp, #0x68]
	str r1, [sp, #0x30]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x34]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x38]
	movs r0, #0
	adds r5, #1
	mov r8, r5
	ldr r3, [sp, #0x30]
	ldr r4, [sp, #0x68]
	adds r3, r3, r4
	mov sl, r3
_0802422C:
	adds r5, r0, #4
	adds r0, #1
	mov ip, r0
	adds r4, r5, #0
	lsls r0, r4, #5
	ldr r6, [sp, #0x68]
	adds r1, r6, r0
	add r0, sl
	ldr r7, [sp, #0x30]
	adds r2, r6, r7
	movs r6, #6
	lsls r0, r0, #1
	ldr r7, [sp, #0x38]
	adds r3, r0, r7
	lsls r1, r1, #1
	ldr r0, [sp, #0x34]
	adds r1, r1, r0
_0802424E:
	cmp r2, #0
	blt _08024262
	cmp r5, #0
	blt _08024262
	cmp r2, #0x1d
	bgt _08024262
	cmp r4, #0x13
	bgt _08024262
	ldrh r0, [r1]
	strh r0, [r3]
_08024262:
	adds r1, #2
	adds r3, #2
	adds r2, #1
	subs r6, #1
	cmp r6, #0
	bge _0802424E
	mov r0, ip
	cmp r0, #0xa
	blt _0802422C
	mov r5, r8
	ldr r1, [sp, #4]
	cmp r5, r1
	blt _080241EA
_0802427C:
	movs r2, #1
	str r2, [sp, #8]
	b _0802428A
_08024282:
	mov r3, sb
	str r1, [r3, #4]
	movs r0, #5
	str r0, [r3]
_0802428A:
	movs r1, #9
	ldr r0, _080242A8 @ =0x03004EA0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _08024298
	b _080247CA
_08024298:
	movs r0, #0
	mov r4, sb
	str r0, [r4, #8]
	str r0, [r4, #4]
	movs r0, #6
	str r0, [r4]
	b _080247CA
	.align 2, 0
_080242A8: .4byte 0x03004EA0
_080242AC:
	mov r6, sb
	ldr r0, [r6, #8]
	adds r0, #1
	str r0, [r6, #8]
	cmp r0, #0
	bgt _080242BA
	b _08024484
_080242BA:
	movs r6, #0
	mov r7, sb
	str r6, [r7, #8]
	ldr r0, [r7, #4]
	cmp r0, #8
	ble _080242C8
	b _0802447A
_080242C8:
	adds r4, r0, #1
	str r4, [r7, #4]
	ldr r0, [sp, #4]
	cmp r0, #2
	beq _0802430C
	cmp r0, #2
	bge _080242D8
	b _08024474
_080242D8:
	cmp r0, #4
	ble _080242DE
	b _08024474
_080242DE:
	adds r0, r4, #0
	movs r1, #3
	bl __divsi3
	mov r8, r4
	adds r7, r0, #0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x44]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x48]
	cmp r4, #9
	ble _080243D8
	movs r1, #9
	mov r8, r1
	b _080243D8
_0802430C:
	lsls r0, r4, #2
	adds r0, r0, r4
	movs r1, #9
	bl __divsi3
	adds r7, r0, #0
	mov r8, r7
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x3c]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x40]
	cmp r7, #5
	ble _08024340
	movs r2, #5
	mov r8, r2
	cmp r7, #5
	ble _08024340
	movs r7, #5
_08024340:
	movs r5, #0
	lsls r0, r7, #1
	cmp r6, r0
	blt _0802434A
	b _08024474
_0802434A:
	mov r3, r8
	lsls r3, r3, #1
	str r3, [sp, #0x50]
	mov ip, r0
_08024352:
	movs r4, #0
	adds r6, r5, #1
	str r6, [sp, #0x58]
	ldr r0, [sp, #0x50]
	cmp r4, r0
	bge _080243D0
	str r0, [sp, #0x6c]
	mov r1, ip
	subs r1, r5, r1
	mov sl, r1
_08024366:
	cmp r4, r8
	bge _08024370
	adds r3, r4, #0
	adds r3, #0x14
	b _08024378
_08024370:
	ldr r2, [sp, #0x6c]
	subs r0, r4, r2
	adds r3, r0, #0
	adds r3, #0x1e
_08024378:
	mov r1, sl
	adds r1, #0x10
	cmp r5, r7
	bge _08024382
	adds r1, r5, #6
_08024382:
	cmp r3, #0
	blt _080243C8
	cmp r1, #0
	blt _080243C8
	cmp r3, #0x1d
	bgt _080243C8
	cmp r1, #0x13
	bgt _080243C8
	movs r6, #0x19
	mov r2, r8
	subs r0, r6, r2
	adds r2, r0, r4
	movs r6, #0xb
	subs r0, r6, r7
	adds r0, r0, r5
	cmp r2, #0
	blt _080243C8
	cmp r0, #0
	blt _080243C8
	cmp r2, #0x1d
	bgt _080243C8
	cmp r0, #0x13
	bgt _080243C8
	lsls r0, r0, #5
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r2, [sp, #0x40]
	adds r0, r0, r2
	lsls r1, r1, #5
	adds r1, r1, r3
	lsls r1, r1, #1
	ldr r3, [sp, #0x3c]
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r0]
_080243C8:
	adds r4, #1
	ldr r6, [sp, #0x6c]
	cmp r4, r6
	blt _08024366
_080243D0:
	ldr r5, [sp, #0x58]
	cmp r5, ip
	blt _08024352
	b _08024474
_080243D8:
	cmp r7, #3
	ble _080243DE
	movs r7, #3
_080243DE:
	movs r5, #0
	lsls r0, r7, #1
	cmp r5, r0
	bge _08024474
	mov r1, r8
	lsls r1, r1, #1
	str r1, [sp, #0x54]
	mov ip, r0
_080243EE:
	movs r4, #0
	adds r2, r5, #1
	str r2, [sp, #0x5c]
	ldr r3, [sp, #0x54]
	cmp r4, r3
	bge _0802446E
	str r3, [sp, #0x6c]
	mov r6, ip
	subs r6, r5, r6
	mov sl, r6
_08024402:
	cmp r4, r8
	bge _0802440C
	adds r3, r4, #0
	adds r3, #0xb
	b _08024414
_0802440C:
	ldr r1, [sp, #0x6c]
	subs r0, r4, r1
	adds r3, r0, #0
	adds r3, #0x1d
_08024414:
	mov r1, sl
	adds r1, #0x14
	cmp r5, r7
	bge _08024420

	thumb_func_start sub_0802441C
sub_0802441C: @ 0x0802441C
	adds r1, r5, #0
	adds r1, #0xe
_08024420:
	cmp r3, #0
	blt _08024466
	cmp r1, #0
	blt _08024466
	cmp r3, #0x1d
	bgt _08024466
	cmp r1, #0x13
	bgt _08024466
	movs r2, #0x14
	mov r6, r8
	subs r0, r2, r6
	adds r2, r0, r4
	movs r6, #0x11
	subs r0, r6, r7
	adds r0, r0, r5
	cmp r2, #0
	blt _08024466
	cmp r0, #0
	blt _08024466
	cmp r2, #0x1d
	bgt _08024466
	cmp r0, #0x13
	bgt _08024466
	lsls r0, r0, #5
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r2, [sp, #0x48]
	adds r0, r0, r2
	lsls r1, r1, #5
	adds r1, r1, r3
	lsls r1, r1, #1
	ldr r3, [sp, #0x44]
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r0]
_08024466:
	adds r4, #1
	ldr r6, [sp, #0x6c]
	cmp r4, r6
	blt _08024402
_0802446E:
	ldr r5, [sp, #0x5c]
	cmp r5, ip
	blt _080243EE
_08024474:
	movs r7, #1
	str r7, [sp, #8]
	b _08024484
_0802447A:
	mov r0, sb
	str r6, [r0, #4]
	movs r0, #6
	mov r1, sb
	str r0, [r1]
_08024484:
	movs r1, #9
	ldr r0, _080244A0 @ =0x03004EA0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _08024492
	b _080247CA
_08024492:
	movs r0, #0
	mov r2, sb
	str r0, [r2, #8]
	str r0, [r2, #4]
	movs r0, #6
	str r0, [r2]
	b _080247CA
	.align 2, 0
_080244A0: .4byte 0x03004EA0
_080244A4:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	bl sub_80236F0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	bl sub_8023920
	movs r3, #1
	str r3, [sp, #8]
	movs r0, #7
	mov r4, sb
	str r0, [r4]
	b _080247CA
_080244CC:
	ldr r6, [sp, #4]
	cmp r6, #0
	beq _080244FE
	ldr r0, _08024504 @ =0x03002E20
	mov r2, sb
	adds r2, #0x10
	ldr r7, _08024508 @ =0x00000818
	adds r3, r0, r7
	movs r4, #1
	adds r5, r6, #0
_080244E0:
	ldr r0, [r3]
	adds r0, #0xba
	ldrh r0, [r0]
	lsrs r0, r0, #1
	movs r1, #2
	cmp r0, #0
	bne _080244F0
	movs r1, #1
_080244F0:
	strb r1, [r2, #1]
	strh r4, [r2, #2]
	adds r2, #0x14
	adds r3, #4
	subs r5, #1
	cmp r5, #0
	bne _080244E0
_080244FE:
	movs r0, #8
	mov r1, sb
	b _080247C8
	.align 2, 0
_08024504: .4byte 0x03002E20
_08024508: .4byte 0x00000818
_0802450C:
	movs r0, #0
	mov r2, sb
	str r0, [r2, #4]
	movs r0, #9
	str r0, [r2]
	b _080247CA
_08024518:
	movs r5, #0
	ldr r3, [sp, #4]
	cmp r5, r3
	bge _0802454A
	ldr r0, _08024564 @ =0x03002E20
	ldr r3, _08024568 @ =0x03002C40
	ldr r4, _0802456C @ =0x00000818
	adds r2, r0, r4
_08024528:
	lsls r0, r5, #2
	ldr r1, [r2]
	adds r1, #0xba
	ldrh r1, [r1]
	lsrs r1, r1, #1
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r0, [r1]
	cmp r0, #0x62
	bhi _08024540
	adds r0, #1
	strb r0, [r1]
_08024540:
	adds r2, #4
	adds r5, #1
	ldr r6, [sp, #4]
	cmp r5, r6
	blt _08024528
_0802454A:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	bl sub_8023920
	movs r7, #1
	str r7, [sp, #8]
	movs r0, #0xa
	mov r1, sb
	b _080247C8
	.align 2, 0
_08024564: .4byte 0x03002E20
_08024568: .4byte 0x03002C40
_0802456C: .4byte 0x00000818
_08024570:
	movs r2, #0
	mov r8, r2
	bl sub_802DC88
	cmp r0, #0
	beq _08024584
	bl sub_802DCB4
	cmp r0, #0
	bne _08024588
_08024584:
	movs r3, #1
	mov r8, r3
_08024588:
	ldr r7, _0802465C @ =_080DB87C
	ldr r4, [sp, #4]
	cmp r4, #2
	ble _08024592
	ldr r7, _08024660 @ =_080DB89C
_08024592:
	mov r6, r8
	cmp r6, #0
	beq _08024634
	mov r1, sb
	ldr r0, [r1, #0xc]
	lsls r0, r0, #3
	adds r0, r0, r7
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #2
	ldrsh r2, [r0, r3]
	movs r0, #0
	bl map_getBufferPtr2d
	ldr r4, _08024664 @ =0x0000F003
	adds r1, r4, #0
	strh r1, [r0]
	mov r6, sb
	ldr r0, [r6, #0xc]
	lsls r0, r0, #3
	adds r0, r0, r7
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #2
	ldrsh r2, [r0, r3]
	adds r2, #1
	movs r0, #0
	bl map_getBufferPtr2d
	ldr r4, _08024668 @ =0x0000F803
	adds r1, r4, #0
	strh r1, [r0]
	movs r0, #0
_080245D4:
	movs r4, #0
	adds r6, r0, #1
	adds r5, r6, #0
_080245DA:
	mov r1, sb
	ldr r0, [r1, #0xc]
	lsls r0, r0, #3
	adds r0, r0, r7
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r1, r1, r5
	movs r3, #2
	ldrsh r2, [r0, r3]
	adds r2, r2, r4
	movs r0, #0
	bl map_getBufferPtr2d
	ldrh r1, [r0]
	ldr r3, _0802466C @ =0x00000FFF
	adds r2, r3, #0
	ands r1, r2
	strh r1, [r0]
	mov r1, sb
	ldr r0, [r1, #0xc]
	lsls r0, r0, #3
	adds r0, r0, r7
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r1, r1, r5
	movs r3, #2
	ldrsh r2, [r0, r3]
	adds r2, r2, r4
	movs r0, #0
	bl map_getBufferPtr2d
	ldrh r1, [r0]
	movs r3, #0xe0
	lsls r3, r3, #8
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	adds r4, #1
	cmp r4, #1
	ble _080245DA
	adds r0, r6, #0
	cmp r0, #6
	ble _080245D4
	movs r4, #1
	str r4, [sp, #8]
_08024634:
	movs r3, #0
	ldr r6, [sp, #4]
	cmp r3, r6
	blt _0802463E
	b _0802474C
_0802463E:
	movs r2, #1
	rsbs r2, r2, #0
_08024642:
	mov r0, sb
	ldr r1, [r0, #0xc]
	ldrh r4, [r0, #0xc]
	ldr r0, _08024670 @ =0x03004F48
	ldrh r0, [r0]
	cmp r0, #0x20
	beq _08024696
	cmp r0, #0x20
	bgt _08024674
	cmp r0, #0x10
	beq _080246B4
	b _080246D0
	.align 2, 0
_0802465C: .4byte _080DB87C
_08024660: .4byte _080DB89C
_08024664: .4byte 0x0000F003
_08024668: .4byte 0x0000F803
_0802466C: .4byte 0x00000FFF
_08024670: .4byte 0x03004F48
_08024674:
	cmp r0, #0x40
	beq _0802467E
	cmp r0, #0x80
	beq _0802468A
	b _080246D0
_0802467E:
	lsls r0, r1, #3
	adds r0, r0, r7
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _080246A0
_0802468A:
	lsls r0, r1, #3
	adds r0, r0, r7
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _080246BE
_08024696:
	lsls r0, r1, #3
	adds r0, r0, r7
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_080246A0:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r2
	beq _080246D0
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r1, sb
	str r0, [r1, #0xc]
	b _080246D0
_080246B4:
	lsls r0, r1, #3
	adds r0, r0, r7
	ldrb r0, [r0, #7]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_080246BE:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r2
	beq _080246D0
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r6, sb
	str r0, [r6, #0xc]
_080246D0:
	lsls r0, r4, #0x10
	asrs r4, r0, #0x10
	mov r1, sb
	ldr r0, [r1, #0xc]
	cmp r4, r0
	beq _08024742
	lsls r4, r4, #3
	adds r4, r4, r7
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r3, #2
	ldrsh r2, [r4, r3]
	movs r0, #0
	bl map_getBufferPtr2d
	movs r5, #0
	strh r5, [r0]
	movs r6, #0
	ldrsh r1, [r4, r6]
	movs r7, #2
	ldrsh r2, [r4, r7]
	adds r2, #1
	movs r0, #0
	bl map_getBufferPtr2d
	strh r5, [r0]
	movs r0, #0
_08024706:
	movs r5, #0
	adds r6, r0, #1
_0802470A:
	movs r0, #0
	ldrsh r1, [r4, r0]
	adds r1, r1, r6
	movs r3, #2
	ldrsh r2, [r4, r3]
	adds r2, r2, r5
	movs r0, #0
	bl map_getBufferPtr2d
	ldrh r2, [r0]
	movs r7, #0xf0
	lsls r7, r7, #8
	adds r1, r7, #0
	orrs r2, r1
	strh r2, [r0]
	adds r5, #1
	cmp r5, #1
	ble _0802470A
	adds r0, r6, #0
	cmp r0, #6
	ble _08024706
	mov r0, r8
	cmp r0, #0
	beq _080247CA
	movs r0, #0x8d
	bl m4aSongNumStart
	b _080247CA
_08024742:
	adds r3, #1
	ldr r1, [sp, #4]
	cmp r3, r1
	bge _0802474C
	b _08024642
_0802474C:
	movs r1, #9
	ldr r0, _08024768 @ =0x03004EA0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _080247CA
	movs r0, #0x8f
	bl m4aSongNumStart
	movs r0, #0xb
	mov r2, sb
	str r0, [r2]
	b _080247CA
	.align 2, 0
_08024768: .4byte 0x03004EA0
_0802476C:
	mov r4, sb
	ldr r2, [r4, #0xc]
	cmp r2, #1
	beq _0802479C
	cmp r2, #1
	bgt _0802477E
	cmp r2, #0
	beq _08024788
	b _080247CA
_0802477E:
	cmp r2, #2
	beq _080247B0
	cmp r2, #3
	beq _080247BA
	b _080247CA
_08024788:
	movs r0, #1
	movs r6, #0xfd
	lsls r6, r6, #3
	adds r1, r3, r6
	strb r0, [r1]
	ldr r1, _08024798 @ =0x03005C50
	b _080247C8
	.align 2, 0
_08024798: .4byte 0x03005C50
_0802479C:
	movs r0, #2
	movs r7, #0xfd
	lsls r7, r7, #3
	adds r1, r3, r7
	strb r0, [r1]
	ldr r0, _080247AC @ =0x03005C50
	str r2, [r0]
	b _080247CA
	.align 2, 0
_080247AC: .4byte 0x03005C50
_080247B0:
	movs r1, #3
	movs r2, #0xfd
	lsls r2, r2, #3
	adds r0, r3, r2
	b _080247C2
_080247BA:
	movs r1, #4
	movs r4, #0xfd
	lsls r4, r4, #3
	adds r0, r3, r4
_080247C2:
	strb r1, [r0]
	ldr r1, _080248E0 @ =0x03005C50
	movs r0, #1
_080247C8:
	str r0, [r1]
_080247CA:
	mov r6, sb
	ldr r0, [r6]
	cmp r0, #3
	ble _080248A0
	ldr r0, _080248E4 @ =0x03002E20
	ldr r0, [r0, #0x10]
	ldr r2, _080248E8 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080247E2
	adds r0, #0x3f
_080247E2:
	asrs r1, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	ldr r1, _080248EC @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	subs r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov sl, r0
	movs r7, #0
	str r7, [sp, #0x4c]
	movs r0, #0x1f
	mov r8, r0
	movs r7, #0x1f
	ldr r1, _080248F0 @ =_080AAD3C
	adds r1, #0x40
	str r1, [sp, #0x60]
_08024812:
	ldr r2, [sp, #0x4c]
	lsls r2, r2, #1
	str r2, [sp, #0x70]
	ldr r3, _080248F0 @ =_080AAD3C
	adds r0, r2, r3
	ldrh r4, [r0]
	adds r5, r4, #0
	ands r5, r7
	lsrs r6, r4, #5
	mov r0, r8
	ands r6, r0
	lsrs r4, r4, #0xa
	ands r4, r0
	ldr r2, [sp, #0x60]
	ldrh r1, [r2]
	adds r0, r1, #0
	ands r0, r7
	lsrs r2, r1, #5
	mov r3, r8
	ands r2, r3
	lsrs r1, r1, #0xa
	ands r1, r3
	subs r0, r0, r5
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	asrs r0, r0, #0xf
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	subs r2, r2, r6
	mov r0, sl
	muls r0, r2, r0
	asrs r0, r0, #0xf
	adds r6, r6, r0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	subs r1, r1, r4
	mov r0, sl
	muls r0, r1, r0
	asrs r0, r0, #0xf
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0
	bl pltt_getBuffer
	ldr r1, [sp, #0x70]
	adds r3, r1, r0
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r3, r3, r2
	ands r5, r7
	ands r6, r7
	lsls r6, r6, #5
	orrs r5, r6
	ands r4, r7
	lsls r4, r4, #0xa
	orrs r5, r4
	strh r5, [r3]
	ldr r3, [sp, #0x60]
	adds r3, #2
	str r3, [sp, #0x60]
	ldr r4, [sp, #0x4c]
	adds r4, #1
	str r4, [sp, #0x4c]
	cmp r4, #0xf
	ble _08024812
	movs r0, #1
	bl pltt_setDirtyFlag
_080248A0:
	mov r6, sb
	ldr r0, [r6]
	cmp r0, #2
	ble _080248C4
	ldr r7, [sp, #4]
	cmp r7, #0
	beq _080248C4
	mov r4, sb
	adds r4, #0x10
	adds r5, r7, #0
_080248B4:
	adds r0, r4, #0
	movs r1, #1
	bl sub_800EB74
	adds r4, #0x14
	subs r5, #1
	cmp r5, #0
	bne _080248B4
_080248C4:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _080248D0
	movs r0, #1
	bl map_setBufferDirty
_080248D0:
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080248E0: .4byte 0x03005C50
_080248E4: .4byte 0x03002E20
_080248E8: .4byte gSinTable
_080248EC: .4byte 0x000003FF
_080248F0: .4byte _080AAD3C

	thumb_func_start sub_80248F4
sub_80248F4: @ 0x080248F4
	push {r4, r5, r6, r7, lr}
	ldr r1, _08024910 @ =0x03002E20
	ldr r2, _08024914 @ =0x00000838
	adds r0, r1, r2
	ldr r0, [r0]
	adds r0, #0xba
	ldrh r0, [r0]
	lsrs r0, r0, #1
	cmp r0, #0
	beq _0802491C
	ldr r1, _08024918 @ =0x03002C74
	movs r0, #0
	str r0, [r1]
	b _0802495A
	.align 2, 0
_08024910: .4byte 0x03002E20
_08024914: .4byte 0x00000838
_08024918: .4byte 0x03002C74
_0802491C:
	ldr r4, _08024960 @ =0x03002C74
	ldr r2, _08024964 @ =0x00000704
	adds r0, r1, r2
	movs r2, #0x80
	lsls r2, r2, #2
	movs r1, #1
	bl frmheap_calloc
	str r0, [r4]
	movs r2, #0
	mov ip, r4
	movs r5, #0
	movs r4, #0
	ldr r3, _08024968 @ =_080DB920
	movs r7, #0
	ldr r6, _0802496C @ =0x0000020F
_0802493C:
	mov r1, ip
	ldr r0, [r1]
	lsls r1, r2, #4
	adds r1, r1, r0
	ldrh r0, [r3]
	str r0, [r1]
	str r7, [r1, #4]
	str r4, [r1, #8]
	str r5, [r1, #0xc]
	adds r5, r5, r6
	subs r4, #0x14
	adds r3, #4
	adds r2, #1
	cmp r2, #0x1f
	ble _0802493C
_0802495A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024960: .4byte 0x03002C74
_08024964: .4byte 0x00000704
_08024968: .4byte _080DB920
_0802496C: .4byte 0x0000020F

	thumb_func_start sub_8024970
sub_8024970: @ 0x08024970
	push {r4, r5, r6, lr}
	sub sp, #0xc
	ldr r0, _08024A28 @ =0x03002C74
	ldr r0, [r0]
	cmp r0, #0
	beq _08024A20
	movs r6, #0
_0802497E:
	ldr r0, _08024A28 @ =0x03002C74
	lsls r1, r6, #4
	ldr r0, [r0]
	adds r4, r0, r1
	ldr r0, [r4, #0xc]
	adds r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	cmp r0, #0x14
	bne _0802499A
	movs r0, #0
	str r0, [r4, #8]
_0802499A:
	ldr r0, [r4, #8]
	cmp r0, #0
	blt _08024A1A
	ldr r0, [r4, #0xc]
	ldr r1, _08024A2C @ =gSinTable
	lsls r0, r0, #0x19
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080249AE
	adds r0, #0x3f
_080249AE:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bge _080249C0
	ldr r1, _08024A30 @ =0x00001FFF
	adds r0, r0, r1
_080249C0:
	asrs r1, r0, #0xd
	ldr r0, [r4]
	asrs r0, r0, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08024A34 @ =0xFFFF0000
	ldr r1, [sp, #8]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #8]
	ldr r0, [r4, #4]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	ldr r2, _08024A38 @ =0x0000FFFF
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #8]
	ldr r1, _08024A3C @ =_080DB90C
	ldr r0, [r4, #8]
	asrs r0, r0, #2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r5, #0
	str r5, [sp]
	str r5, [sp, #4]
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	ldr r1, [r4, #4]
	adds r1, #0x40
	str r1, [r4, #4]
	ldr r0, _08024A40 @ =0x00009FFF
	cmp r1, r0
	ble _08024A1A
	ldr r0, _08024A44 @ =_080DB920
	lsls r1, r6, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	str r0, [r4]
	str r5, [r4, #4]
_08024A1A:
	adds r6, #1
	cmp r6, #0x1f
	ble _0802497E
_08024A20:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08024A28: .4byte 0x03002C74
_08024A2C: .4byte gSinTable
_08024A30: .4byte 0x00001FFF
_08024A34: .4byte 0xFFFF0000
_08024A38: .4byte 0x0000FFFF
_08024A3C: .4byte _080DB90C
_08024A40: .4byte 0x00009FFF
_08024A44: .4byte _080DB920

	thumb_func_start sub_8024A48
sub_8024A48: @ 0x08024A48
	push {r4, lr}
	ldr r4, _08024A94 @ =_080AACF0
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	movs r4, #0
	bl sub_802DC88
	cmp r0, #0
	beq _08024A7A
	bl sub_802DCB4
	cmp r0, #0
	bne _08024A7C
_08024A7A:
	movs r4, #1
_08024A7C:
	cmp r4, #0
	beq _08024AA0
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08024A98 @ =_080AAE3C
	movs r2, #0xc0
	lsls r2, r2, #0x13
	ldr r3, _08024A9C @ =0x80000400
	bl dmaq_enqueue
	b _08024ABE
	.align 2, 0
_08024A94: .4byte _080AACF0
_08024A98: .4byte _080AAE3C
_08024A9C: .4byte 0x80000400
_08024AA0:
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08024AE8 @ =_080AAE3C
	movs r2, #0xc0
	lsls r2, r2, #0x13
	ldr r3, _08024AEC @ =0x80000230
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08024AF0 @ =_080AD8BC
	ldr r2, _08024AF4 @ =0x06000080
	ldr r3, _08024AF8 @ =0x800000E0
	bl dmaq_enqueue
_08024ABE:
	ldr r0, _08024AFC @ =_0809E938
	ldr r1, _08024B00 @ =0x06000800
	bl LZ77UnCompVram
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08024B04 @ =_080AC6FC
	ldr r2, _08024B08 @ =0x06001400
	ldr r3, _08024B0C @ =0x80000200
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08024B10 @ =_080ABEFC
	ldr r2, _08024B14 @ =0x06002000
	ldr r3, _08024B18 @ =0x80000400
	bl dmaq_enqueue
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024AE8: .4byte _080AAE3C
_08024AEC: .4byte 0x80000230
_08024AF0: .4byte _080AD8BC
_08024AF4: .4byte 0x06000080
_08024AF8: .4byte 0x800000E0
_08024AFC: .4byte _0809E938
_08024B00: .4byte 0x06000800
_08024B04: .4byte _080AC6FC
_08024B08: .4byte 0x06001400
_08024B0C: .4byte 0x80000200
_08024B10: .4byte _080ABEFC
_08024B14: .4byte 0x06002000
_08024B18: .4byte 0x80000400

	thumb_func_start sub_8024B1C
sub_8024B1C: @ 0x08024B1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r0, _08024B58 @ =0x03002E20
	ldr r1, _08024B5C @ =0x000007FB
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp]
	movs r4, #0
	bl sub_802DC88
	cmp r0, #0
	beq _08024B46
	bl sub_802DCB4
	cmp r0, #0
	bne _08024B48
_08024B46:
	movs r4, #1
_08024B48:
	cmp r4, #0
	beq _08024B64
	ldr r0, _08024B60 @ =_0809EF64
	adds r1, r7, #0
	bl LZ77UnCompWram
	b _08024B6C
	.align 2, 0
_08024B58: .4byte 0x03002E20
_08024B5C: .4byte 0x000007FB
_08024B60: .4byte _0809EF64
_08024B64:
	ldr r0, _08024B78 @ =_0809F248
	adds r1, r7, #0
	bl LZ77UnCompWram
_08024B6C:
	ldr r2, [sp]
	cmp r2, #3
	beq _08024B7C
	cmp r2, #4
	beq _08024B90
	b _08024BAC
	.align 2, 0
_08024B78: .4byte _0809F248
_08024B7C:
	cmp r4, #0
	beq _08024B88
	ldr r0, _08024B84 @ =_0809F4C0
	b _08024B96
	.align 2, 0
_08024B84: .4byte _0809F4C0
_08024B88:
	ldr r0, _08024B8C @ =_0809F740
	b _08024B96
	.align 2, 0
_08024B8C: .4byte _0809F740
_08024B90:
	cmp r4, #0
	beq _08024BA4
	ldr r0, _08024BA0 @ =_0809F954
_08024B96:
	adds r1, r7, #0
	bl LZ77UnCompWram
	b _08024BAC
	.align 2, 0
_08024BA0: .4byte _0809F954
_08024BA4:
	ldr r0, _08024CC8 @ =_0809FC08
	adds r1, r7, #0
	bl LZ77UnCompWram
_08024BAC:
	movs r2, #0
	ldr r3, [sp]
	cmp r2, r3
	bge _08024C34
	ldr r6, _08024CCC @ =0x000007F4
	ldr r5, _08024CD0 @ =0x03002E44
	adds r6, r5, r6
	str r6, [sp, #4]
	ldr r1, _08024CD4 @ =0x00000814
	adds r0, r5, r1
	ldr r0, [r0]
	str r0, [sp, #8]
	adds r0, r3, #0
	subs r0, #2
	lsls r0, r0, #4
	mov sb, r0
_08024BCC:
	lsls r1, r2, #2
	ldr r3, [sp, #4]
	adds r0, r3, r1
	ldr r0, [r0]
	adds r5, r2, #1
	mov sl, r5
	ldr r6, [sp, #8]
	cmp r6, r0
	bne _08024C2C
	mov r3, sb
	adds r0, r1, r3
	ldr r5, _08024CD8 @ =_080DB9F0
	adds r0, r0, r5
	movs r6, #0
	ldrsh r1, [r0, r6]
	lsls r0, r2, #1
	adds r0, #1
	lsls r0, r0, #1
	add r0, sb
	adds r0, r0, r5
	movs r2, #0
	ldrsh r6, [r0, r2]
	movs r2, #0
	ldr r3, _08024CDC @ =0x00000FFF
	mov r8, r3
	lsls r5, r1, #1
	movs r0, #0xe0
	lsls r0, r0, #8
	mov ip, r0
_08024C06:
	adds r0, r6, r2
	adds r4, r2, #1
	lsls r0, r0, #6
	adds r0, r5, r0
	adds r2, r0, r7
	movs r3, #2
_08024C12:
	ldrh r1, [r2]
	mov r0, r8
	ands r0, r1
	mov r1, ip
	orrs r0, r1
	strh r0, [r2]
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bge _08024C12
	adds r2, r4, #0
	cmp r2, #1
	ble _08024C06
_08024C2C:
	mov r2, sl
	ldr r3, [sp]
	cmp r2, r3
	blt _08024BCC
_08024C34:
	movs r3, #0
	ldr r5, [sp]
	cmp r3, r5
	bge _08024D1C
	ldr r6, _08024CE0 @ =_080DBA20
	mov sl, r6
	adds r0, r5, #0
	subs r0, #2
	lsls r0, r0, #4
	mov sb, r0
	ldr r1, _08024CCC @ =0x000007F4
	ldr r0, _08024CD0 @ =0x03002E44
	adds r1, r0, r1
	str r1, [sp, #0xc]
_08024C50:
	lsls r2, r3, #2
	ldr r5, [sp, #0xc]
	adds r0, r5, r2
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0xba
	ldrh r0, [r0]
	lsrs r4, r0, #1
	ldr r6, _08024CD0 @ =0x03002E44
	ldr r5, _08024CD4 @ =0x00000814
	adds r0, r6, r5
	ldr r0, [r0]
	movs r6, #0xf0
	lsls r6, r6, #8
	mov ip, r6
	cmp r0, r1
	bne _08024C78
	movs r0, #0xe0
	lsls r0, r0, #8
	mov ip, r0
_08024C78:
	mov r1, sb
	adds r0, r2, r1
	add r0, sl
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r3, #1
	adds r0, #1
	lsls r0, r0, #1
	add r0, sb
	add r0, sl
	movs r6, #0
	ldrsh r5, [r0, r6]
	cmp r4, #0
	bne _08024CE4
	movs r2, #0
	adds r3, #1
	mov r8, r3
	lsls r6, r1, #1
_08024C9C:
	adds r0, r5, r2
	lsls r1, r2, #2
	adds r4, r2, #1
	adds r2, r1, #0
	adds r2, #0x7c
	lsls r0, r0, #6
	adds r0, r6, r0
	adds r1, r0, r7
	movs r3, #3
_08024CAE:
	mov r0, ip
	orrs r0, r2
	strh r0, [r1]
	adds r2, #1
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bge _08024CAE
	adds r2, r4, #0
	cmp r2, #1
	ble _08024C9C
	b _08024D14
	.align 2, 0
_08024CC8: .4byte _0809FC08
_08024CCC: .4byte 0x000007F4
_08024CD0: .4byte 0x03002E44
_08024CD4: .4byte 0x00000814
_08024CD8: .4byte _080DB9F0
_08024CDC: .4byte 0x00000FFF
_08024CE0: .4byte _080DBA20
_08024CE4:
	movs r2, #0
	adds r3, #1
	mov r8, r3
	lsls r6, r1, #1
_08024CEC:
	adds r0, r5, r2
	lsls r1, r2, #2
	adds r4, r2, #1
	adds r2, r1, #0
	adds r2, #0x84
	lsls r0, r0, #6
	adds r0, r6, r0
	adds r1, r0, r7
	movs r3, #3
_08024CFE:
	mov r0, ip
	orrs r0, r2
	strh r0, [r1]
	adds r2, #1
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bge _08024CFE
	adds r2, r4, #0
	cmp r2, #1
	ble _08024CEC
_08024D14:
	mov r3, r8
	ldr r0, [sp]
	cmp r3, r0
	blt _08024C50
_08024D1C:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8024D2C
sub_8024D2C: @ 0x08024D2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	ldr r2, _08024E64 @ =0x03002E20
	ldr r1, _08024E68 @ =0x000007FB
	adds r0, r2, r1
	ldrb r0, [r0]
	mov sl, r0
	movs r3, #0
	mov sb, r3
	cmp sb, sl
	bge _08024DFE
	ldr r0, _08024E6C @ =_080DB9C0
	mov r1, sl
	subs r1, #2
	lsls r1, r1, #4
	adds r1, r1, r0
	mov r8, r1
	ldr r1, _08024E70 @ =0x00000838
	adds r0, r2, r1
	ldr r0, [r0]
	str r0, [sp, #4]
_08024D60:
	mov r2, sb
	lsls r0, r2, #2
	ldr r3, _08024E74 @ =0x03002E44
	ldr r2, _08024E78 @ =0x000007F4
	adds r1, r3, r2
	adds r1, r1, r0
	ldr r0, [r1]
	movs r7, #0xf0
	lsls r7, r7, #8
	ldr r3, [sp, #4]
	cmp r3, r0
	bne _08024D7C
	movs r7, #0xe0
	lsls r7, r7, #8
_08024D7C:
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r3, #2
	ldrsh r4, [r1, r3]
	ldr r5, _08024E7C @ =0x03002C58
	add r5, sb
	lsls r4, r4, #5
	adds r4, r4, r0
	lsls r4, r4, #1
	ldr r0, [sp]
	adds r4, r4, r0
	ldrb r0, [r5]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	orrs r0, r7
	strh r0, [r4]
	adds r6, r4, #0
	adds r6, #0x40
	ldrb r0, [r5]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r0, r2
	orrs r0, r7
	strh r0, [r6]
	ldrb r0, [r5]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	orrs r0, r7
	strh r0, [r4, #2]
	adds r4, #0x42
	ldrb r0, [r5]
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	orrs r7, r0
	strh r7, [r4]
	movs r2, #4
	add r8, r2
	movs r3, #1
	add sb, r3
	cmp sb, sl
	blt _08024D60
_08024DFE:
	ldr r6, [sp]
	adds r6, #0xb8
	ldr r0, _08024E80 @ =0x030029B4
	ldrb r0, [r0]
	mov r8, r0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r1, #0
	adds r1, r0, r4
	ldr r2, _08024E84 @ =0xFFFFF000
	adds r5, r2, #0
	orrs r1, r5
	strh r1, [r6]
	ldr r1, [sp]
	adds r1, #0xf8
	movs r3, #0x90
	lsls r3, r3, #1
	adds r6, r3, #0
	adds r0, r0, r6
	orrs r0, r5
	strh r0, [r1]
	ldr r7, [sp]
	adds r7, #0xba
	mov r0, r8
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r0, r4
	orrs r4, r5
	strh r4, [r7]
	ldr r1, [sp]
	adds r1, #0xfa
	adds r0, r0, r6
	orrs r0, r5
	strh r0, [r1]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024E64: .4byte 0x03002E20
_08024E68: .4byte 0x000007FB
_08024E6C: .4byte _080DB9C0
_08024E70: .4byte 0x00000838
_08024E74: .4byte 0x03002E44
_08024E78: .4byte 0x000007F4
_08024E7C: .4byte 0x03002C58
_08024E80: .4byte 0x030029B4
_08024E84: .4byte 0xFFFFF000

	thumb_func_start sub_8024E88
sub_8024E88: @ 0x08024E88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x60
	bl sub_800EDE4
	mov r8, r0
	ldr r0, _08024EC4 @ =0x03002E20
	adds r2, r0, #0
	adds r2, #0x24
	ldr r1, _08024EC8 @ =0x000007FB
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #4]
	movs r3, #0
	str r3, [sp, #8]
	mov r6, r8
	ldr r0, [r6]
	cmp r0, #0xd
	bls _08024EB8
	bl _08025BBC
_08024EB8:
	lsls r0, r0, #2
	ldr r1, _08024ECC @ =_08024ED0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08024EC4: .4byte 0x03002E20
_08024EC8: .4byte 0x000007FB
_08024ECC: .4byte _08024ED0
_08024ED0: @ jump table
	.4byte _08024F08 @ case 0
	.4byte _08024F2C @ case 1
	.4byte _08024F40 @ case 2
	.4byte _08024F90 @ case 3
	.4byte _08025230 @ case 4
	.4byte _080252C8 @ case 5
	.4byte _080257A0 @ case 6
	.4byte _080258B8 @ case 7
	.4byte _080258E2 @ case 8
	.4byte _08025920 @ case 9
	.4byte _0802592E @ case 10
	.4byte _0802598A @ case 11
	.4byte _08025BA4 @ case 12
	.4byte _08025BBC @ case 13
_08024F08:
	movs r0, #0
	mov r7, r8
	str r0, [r7, #4]
	ldr r0, [r7]
	adds r0, #1
	str r0, [r7]
	ldr r1, _08024F28 @ =0x030029B4
	ldrb r0, [r1]
	cmp r0, #0x62
	bhi _08024F20
	adds r0, #1
	strb r0, [r1]
_08024F20:
	bl sub_80248F4
	bl _08025BBC
	.align 2, 0
_08024F28: .4byte 0x030029B4
_08024F2C:
	movs r0, #0x11
	bl m4aSongNumStart
	movs r0, #0
	mov r1, r8
	str r0, [r1, #4]
	ldr r0, [r1]
	adds r0, #1
	bl _08025BBA
_08024F40:
	bl dmaq_getVBlankDmaQueue
	adds r4, r0, #0
	ldr r5, _08024F80 @ =0x0203EC2C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r2, r0, #0
	ldr r3, _08024F84 @ =0x81000280
	adds r0, r4, #0
	adds r1, r5, #0
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	adds r4, r0, #0
	ldr r5, _08024F88 @ =0x06003800
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r2, r0, #0
	ldr r3, _08024F8C @ =0x80000280
	adds r0, r4, #0
	adds r1, r5, #0
	bl dmaq_enqueue
	bl _08025980
	.align 2, 0
_08024F80: .4byte 0x0203EC2C
_08024F84: .4byte 0x81000280
_08024F88: .4byte 0x06003800
_08024F8C: .4byte 0x80000280
_08024F90:
	ldr r0, _08025224 @ =0x03002E20
	ldr r0, [r0, #0x10]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08024FA4
	mov r3, r8
	ldr r0, [r3, #4]
	adds r0, #1
	str r0, [r3, #4]
_08024FA4:
	mov r6, r8
	ldr r0, [r6, #4]
	cmp r0, #9
	ble _08024FAE
	b _08025228
_08024FAE:
	rsbs r0, r0, #0
	mov sb, r0
	mov r7, sb
	str r7, [sp, #0x54]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0xc]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sl, r0
	movs r1, #0
_08024FD0:
	adds r5, r1, #1
	mov r0, sb
	adds r4, r5, r0
	lsls r0, r4, #5
	lsls r1, r5, #5
	adds r1, #4
	adds r0, #4
	ldr r2, [sp, #0x54]
	adds r0, r2, r0
	adds r2, #4
	movs r6, #7
	lsls r0, r0, #1
	mov r7, sl
	adds r3, r0, r7
	lsls r1, r1, #1
	ldr r0, [sp, #0xc]
	adds r1, r1, r0
_08024FF2:
	cmp r2, #0
	blt _08025006
	cmp r4, #0
	blt _08025006
	cmp r2, #0x1d
	bgt _08025006
	cmp r4, #0x13
	bgt _08025006
	ldrh r0, [r1]
	strh r0, [r3]
_08025006:
	adds r1, #2
	adds r3, #2
	adds r2, #1
	subs r6, #1
	cmp r6, #0
	bge _08024FF2
	adds r1, r5, #0
	cmp r1, #3
	blt _08024FD0
	mov r1, r8
	ldr r0, [r1, #4]
	str r0, [sp, #0x54]
	rsbs r2, r0, #0
	str r2, [sp, #0x10]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sl, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r1, #0
_0802503C:
	adds r5, r1, #1
	ldr r3, [sp, #0x10]
	adds r4, r5, r3
	lsls r0, r4, #5
	lsls r1, r5, #5
	adds r1, #0x11
	adds r0, #0x11
	ldr r6, [sp, #0x54]
	adds r0, r6, r0
	adds r2, r6, #0
	adds r2, #0x11
	movs r6, #0xc
	lsls r0, r0, #1
	mov r7, sb
	adds r3, r0, r7
	lsls r1, r1, #1
	add r1, sl
_0802505E:
	cmp r2, #0
	blt _08025072
	cmp r4, #0
	blt _08025072
	cmp r2, #0x1d
	bgt _08025072
	cmp r4, #0x13
	bgt _08025072
	ldrh r0, [r1]
	strh r0, [r3]
_08025072:
	adds r1, #2
	adds r3, #2
	adds r2, #1
	subs r6, #1
	cmp r6, #0
	bge _0802505E
	adds r1, r5, #0
	cmp r1, #3
	blt _0802503C
	mov r1, r8
	ldr r0, [r1, #4]
	rsbs r7, r0, #0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sl, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
_080250A4:
	movs r4, #0
	adds r5, r0, #2
	adds r0, #1
	mov ip, r0
	adds r3, r5, #0
	lsls r0, r3, #6
	mov r6, sl
	adds r2, r0, r6
	lsls r0, r3, #5
	adds r0, r7, r0
	lsls r0, r0, #1
	mov r6, sb
	adds r1, r0, r6
_080250BE:
	adds r0, r4, r7
	cmp r0, #0
	blt _080250D4
	cmp r5, #0
	blt _080250D4
	cmp r0, #0x1d
	bgt _080250D4
	cmp r3, #0x13
	bgt _080250D4
	ldrh r0, [r2]
	strh r0, [r1]
_080250D4:
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #5
	blt _080250BE
	mov r0, ip
	cmp r0, #0xd
	blt _080250A4
	mov r7, r8
	ldr r0, [r7, #4]
	rsbs r0, r0, #0
	mov sl, r0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r7, r0, #0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
_08025106:
	movs r3, #0
	mov r1, sl
	adds r5, r0, r1
	adds r6, r0, #1
	adds r4, r5, #0
	lsls r1, r4, #5
	adds r1, #4
	lsls r0, r0, #5
	adds r2, r0, #4
	lsls r1, r1, #1
	add r1, sb
_0802511C:
	adds r0, r3, #4
	cmp r0, #0
	blt _08025136
	cmp r5, #0
	blt _08025136
	cmp r0, #0x1d
	bgt _08025136
	cmp r4, #0x13
	bgt _08025136
	lsls r0, r2, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r1]
_08025136:
	adds r1, #2
	adds r2, #1
	adds r3, #1
	cmp r3, #0xd
	blt _0802511C
	adds r0, r6, #0
	cmp r0, #5
	blt _08025106
	mov r2, r8
	ldr r7, [r2, #4]
	str r7, [sp, #0x14]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x18]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
	mov r3, r8
	ldr r3, [r3, #4]
	mov sl, r3
_0802516C:
	adds r1, r0, #0
	adds r1, #0xb
	adds r0, #1
	mov ip, r0
	ldr r6, [sp, #0x14]
	adds r4, r1, r6
	lsls r0, r4, #5
	lsls r1, r1, #5
	adds r1, #0x15
	adds r0, #0x15
	adds r0, r7, r0
	adds r2, r7, #0
	adds r2, #0x15
	movs r5, #9
	lsls r0, r0, #1
	mov r6, sb
	adds r3, r0, r6
	lsls r1, r1, #1
	ldr r0, [sp, #0x18]
	adds r1, r1, r0
_08025194:
	cmp r2, #0
	blt _080251A8
	cmp r4, #0
	blt _080251A8
	cmp r2, #0x1d
	bgt _080251A8
	cmp r4, #0x13
	bgt _080251A8
	ldrh r0, [r1]
	strh r0, [r3]
_080251A8:
	adds r1, #2
	adds r3, #2
	adds r2, #1
	subs r5, #1
	cmp r5, #0
	bge _08025194
	mov r0, ip
	cmp r0, #0xa
	blt _0802516C
	mov r1, sl
	rsbs r1, r1, #0
	mov sl, r1
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r7, r0, #0
	movs r1, #0
_080251DA:
	movs r0, #0
	adds r5, r1, #0
	adds r5, #0x10
	adds r6, r1, #1
	adds r4, r5, #0
	lsls r3, r4, #5
_080251E6:
	adds r0, #1
	mov r2, sl
	adds r1, r0, r2
	adds r2, r0, #0
	cmp r1, #0
	blt _0802520E
	cmp r5, #0
	blt _0802520E
	cmp r1, #0x1d
	bgt _0802520E
	cmp r4, #0x13
	bgt _0802520E
	adds r0, r3, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	adds r1, r3, r2
	lsls r1, r1, #1
	add r1, sb
	ldrh r1, [r1]
	strh r1, [r0]
_0802520E:
	adds r0, r2, #0
	cmp r0, #6
	blt _080251E6
	adds r1, r6, #0
	cmp r1, #3
	blt _080251DA
	movs r3, #1
	str r3, [sp, #8]
	bl _08025BBC
	.align 2, 0
_08025224: .4byte 0x03002E20
_08025228:
	movs r0, #0
	mov r6, r8
	str r0, [r6, #4]
	b _080258DA
_08025230:
	bl sub_8024A48
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	bl sub_8024B1C
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	bl sub_8024D2C
	movs r5, #0
	ldr r7, [sp, #4]
	cmp r5, r7
	bge _080252AC
	ldr r0, _080252B8 @ =0x03002E20
	mov r4, r8
	adds r4, #0x10
	ldr r1, _080252BC @ =0x00000818
	adds r6, r0, r1
_08025262:
	ldr r0, [r6]
	adds r0, #0x4c
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	bl sub_800EDB0
	movs r1, #0
	strb r0, [r4]
	strb r1, [r4, #1]
	strh r1, [r4, #2]
	ldr r0, _080252C0 @ =0x03002C80
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r5
	bne _08025286
	movs r1, #2
_08025286:
	strh r1, [r4, #6]
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r5, #0
	adds r1, #0xa
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r4, #0xc]
	lsls r0, r5, #9
	ldr r2, _080252C4 @ =0x06001800
	adds r0, r0, r2
	str r0, [r4, #0x10]
	adds r4, #0x14
	adds r6, #4
	adds r5, #1
	ldr r3, [sp, #4]
	cmp r5, r3
	blt _08025262
_080252AC:
	movs r0, #0
	mov r6, r8
	str r0, [r6, #4]
	str r0, [r6, #8]
	b _080258DA
	.align 2, 0
_080252B8: .4byte 0x03002E20
_080252BC: .4byte 0x00000818
_080252C0: .4byte 0x03002C80
_080252C4: .4byte 0x06001800
_080252C8:
	mov r7, r8
	ldr r0, [r7, #8]
	adds r0, #1
	str r0, [r7, #8]
	cmp r0, #0
	bgt _080252D6
	b _08025780
_080252D6:
	movs r1, #0
	str r1, [r7, #8]
	ldr r0, [r7, #4]
	adds r0, #1
	str r0, [r7, #4]
	cmp r0, #0x2f
	ble _080252E6
	b _08025776
_080252E6:
	str r1, [sp]
	movs r0, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _0802536C @ =0x01000140
	mov r0, sp
	bl CpuFastSet
	ldr r1, [r7, #4]
	movs r0, #0x20
	subs r0, r0, r1
	cmp r0, #0
	bge _08025306
	movs r0, #0
_08025306:
	adds r6, r0, #0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r7, r0, #0
	movs r0, #0
_08025322:
	movs r4, #0
	adds r2, r0, #1
	adds r5, r2, #0
	lsls r0, r2, #6
	mov r1, sb
	adds r3, r0, r1
	lsls r0, r2, #5
	adds r0, r6, r0
	lsls r0, r0, #1
	adds r1, r0, r7
_08025336:
	adds r0, r4, r6
	cmp r0, #0
	blt _0802534C
	cmp r2, #0
	blt _0802534C
	cmp r0, #0x1d
	bgt _0802534C
	cmp r5, #0x13
	bgt _0802534C
	ldrh r0, [r3]
	strh r0, [r1]
_0802534C:
	adds r3, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #0x20
	blt _08025336
	adds r0, r2, #0
	cmp r0, #3
	blt _08025322
	ldr r2, [sp, #4]
	cmp r2, #3
	beq _0802545A
	cmp r2, #3
	bgt _08025370
	cmp r2, #2
	beq _0802537A
	b _08025770
	.align 2, 0
_0802536C: .4byte 0x01000140
_08025370:
	ldr r3, [sp, #4]
	cmp r3, #4
	bne _08025378
	b _080255AC
_08025378:
	b _08025770
_0802537A:
	mov r6, r8
	ldr r1, [r6, #4]
	movs r0, #0x26
	subs r0, r0, r1
	cmp r0, #0
	bge _08025388
	movs r0, #0
_08025388:
	adds r7, r0, #0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x1c]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
	mov r1, r8
	ldr r1, [r1, #4]
	mov sl, r1
_080253AA:
	movs r4, #0
	adds r5, r0, #7
	adds r0, #1
	mov ip, r0
	adds r3, r5, #0
	lsls r0, r3, #6
	ldr r6, [sp, #0x1c]
	adds r2, r0, r6
	lsls r0, r3, #5
	adds r0, r7, r0
	lsls r0, r0, #1
	mov r6, sb
	adds r1, r0, r6
_080253C4:
	adds r0, r4, r7
	cmp r0, #0
	blt _080253DA
	cmp r5, #0
	blt _080253DA
	cmp r0, #0x1d
	bgt _080253DA
	cmp r3, #0x13
	bgt _080253DA
	ldrh r0, [r2]
	strh r0, [r1]
_080253DA:
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #8
	blt _080253C4
	mov r0, ip
	cmp r0, #6
	blt _080253AA
	movs r0, #0x29
	mov r7, sl
	subs r0, r0, r7
	cmp r0, #0
	bge _080253F6
	movs r0, #0
_080253F6:
	mov sb, r0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x20]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sl, r0
	movs r0, #0
_08025412:
	adds r6, r0, #7
	adds r0, #1
	mov ip, r0
	adds r5, r6, #0
	lsls r1, r5, #5
	adds r1, #0xc
	mov r2, sb
	adds r0, r2, r1
	adds r2, #0xc
	movs r4, #7
	lsls r0, r0, #1
	mov r7, sl
	adds r3, r0, r7
	lsls r1, r1, #1
	ldr r0, [sp, #0x20]
	adds r1, r1, r0
_08025432:
	cmp r2, #0
	blt _08025446
	cmp r6, #0
	blt _08025446
	cmp r2, #0x1d
	bgt _08025446
	cmp r5, #0x13
	bgt _08025446
	ldrh r0, [r1]
	strh r0, [r3]
_08025446:
	adds r1, #2
	adds r3, #2
	adds r2, #1
	subs r4, #1
	cmp r4, #0
	bge _08025432
	mov r0, ip
	cmp r0, #6
	blt _08025412
	b _08025770
_0802545A:
	mov r2, r8
	ldr r1, [r2, #4]
	movs r0, #0x26
	subs r0, r0, r1
	cmp r0, #0
	bge _08025468
	movs r0, #0
_08025468:
	adds r7, r0, #0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sl, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
_08025484:
	movs r4, #0
	adds r5, r0, #6
	adds r0, #1
	mov ip, r0
	adds r3, r5, #0
	lsls r0, r3, #6
	mov r6, sl
	adds r2, r0, r6
	lsls r0, r3, #5
	adds r0, r7, r0
	lsls r0, r0, #1
	mov r6, sb
	adds r1, r0, r6
_0802549E:
	adds r0, r4, r7
	cmp r0, #0
	blt _080254B4
	cmp r5, #0
	blt _080254B4
	cmp r0, #0x1d
	bgt _080254B4
	cmp r3, #0x13
	bgt _080254B4
	ldrh r0, [r2]
	strh r0, [r1]
_080254B4:
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #8
	blt _0802549E
	mov r0, ip
	cmp r0, #6
	blt _08025484
	mov r7, r8
	ldr r1, [r7, #4]
	movs r0, #0x29
	subs r0, r0, r1
	cmp r0, #0
	bge _080254D2
	movs r0, #0
_080254D2:
	mov sb, r0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x24]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov ip, r0
	movs r0, #0
	mov r1, r8
	ldr r1, [r1, #4]
	mov sl, r1
_080254F4:
	adds r6, r0, #6
	adds r0, #1
	str r0, [sp, #0x54]
	adds r5, r6, #0
	lsls r1, r5, #5
	adds r1, #0xc
	mov r2, sb
	adds r0, r2, r1
	adds r2, #0xc
	movs r4, #7
	lsls r0, r0, #1
	mov r7, ip
	adds r3, r0, r7
	lsls r1, r1, #1
	ldr r0, [sp, #0x24]
	adds r1, r1, r0
_08025514:
	cmp r2, #0
	blt _08025528
	cmp r6, #0
	blt _08025528
	cmp r2, #0x1d
	bgt _08025528
	cmp r5, #0x13
	bgt _08025528
	ldrh r0, [r1]
	strh r0, [r3]
_08025528:
	adds r1, #2
	adds r3, #2
	adds r2, #1
	subs r4, #1
	cmp r4, #0
	bge _08025514
	ldr r0, [sp, #0x54]
	cmp r0, #6
	blt _080254F4
	movs r0, #0x2c
	mov r1, sl
	subs r0, r0, r1
	cmp r0, #0
	bge _08025546
	movs r0, #0
_08025546:
	mov sb, r0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x28]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sl, r0
	movs r0, #0
_08025562:
	adds r6, r0, #0
	adds r6, #0xd
	adds r0, #1
	mov ip, r0
	adds r5, r6, #0
	lsls r1, r5, #5
	adds r1, #4
	mov r2, sb
	adds r0, r2, r1
	adds r2, #4
	movs r4, #7
	lsls r0, r0, #1
	mov r7, sl
	adds r3, r0, r7
	lsls r1, r1, #1
	ldr r0, [sp, #0x28]
	adds r1, r1, r0
_08025584:
	cmp r2, #0
	blt _08025598
	cmp r6, #0
	blt _08025598
	cmp r2, #0x1d
	bgt _08025598
	cmp r5, #0x13
	bgt _08025598
	ldrh r0, [r1]
	strh r0, [r3]
_08025598:
	adds r1, #2
	adds r3, #2
	adds r2, #1
	subs r4, #1
	cmp r4, #0
	bge _08025584
	mov r0, ip
	cmp r0, #6
	blt _08025562
	b _08025770
_080255AC:
	mov r2, r8
	ldr r1, [r2, #4]
	movs r0, #0x26
	subs r0, r0, r1
	cmp r0, #0
	bge _080255BA
	movs r0, #0
_080255BA:
	adds r7, r0, #0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sl, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
_080255D6:
	movs r4, #0
	adds r5, r0, #5
	adds r0, #1
	mov ip, r0
	adds r3, r5, #0
	lsls r0, r3, #6
	mov r6, sl
	adds r2, r0, r6
	lsls r0, r3, #5
	adds r0, r7, r0
	lsls r0, r0, #1
	mov r6, sb
	adds r1, r0, r6
_080255F0:
	adds r0, r4, r7
	cmp r0, #0
	blt _08025606
	cmp r5, #0
	blt _08025606
	cmp r0, #0x1d
	bgt _08025606
	cmp r3, #0x13
	bgt _08025606
	ldrh r0, [r2]
	strh r0, [r1]
_08025606:
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #8
	blt _080255F0
	mov r0, ip
	cmp r0, #6
	blt _080255D6
	mov r7, r8
	ldr r1, [r7, #4]
	movs r0, #0x29
	subs r0, r0, r1
	cmp r0, #0
	bge _08025624
	movs r0, #0
_08025624:
	mov sb, r0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x2c]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sl, r0
	movs r0, #0
_08025640:
	adds r6, r0, #5
	adds r0, #1
	mov ip, r0
	adds r5, r6, #0
	lsls r1, r5, #5
	adds r1, #0xa
	mov r2, sb
	adds r0, r2, r1
	adds r2, #0xa
	movs r4, #7
	lsls r0, r0, #1
	mov r7, sl
	adds r3, r0, r7
	lsls r1, r1, #1
	ldr r0, [sp, #0x2c]
	adds r1, r1, r0
_08025660:
	cmp r2, #0
	blt _08025674
	cmp r6, #0
	blt _08025674
	cmp r2, #0x1d
	bgt _08025674
	cmp r5, #0x13
	bgt _08025674
	ldrh r0, [r1]
	strh r0, [r3]
_08025674:
	adds r1, #2
	adds r3, #2
	adds r2, #1
	subs r4, #1
	cmp r4, #0
	bge _08025660
	mov r0, ip
	cmp r0, #6
	blt _08025640
	mov r2, r8
	ldr r1, [r2, #4]
	movs r0, #0x2c
	subs r0, r0, r1
	cmp r0, #0
	bge _08025694
	movs r0, #0
_08025694:
	mov sb, r0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x30]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov ip, r0
	movs r0, #0
	mov r3, r8
	ldr r3, [r3, #4]
	mov sl, r3
_080256B6:
	adds r6, r0, #0
	adds r6, #0xc
	adds r0, #1
	str r0, [sp, #0x54]
	adds r5, r6, #0
	lsls r1, r5, #5
	adds r1, #2
	mov r7, sb
	adds r0, r7, r1
	mov r2, sb
	adds r2, #2
	movs r4, #7
	lsls r0, r0, #1
	mov r7, ip
	adds r3, r0, r7
	lsls r1, r1, #1
	ldr r0, [sp, #0x30]
	adds r1, r1, r0
_080256DA:
	cmp r2, #0
	blt _080256EE
	cmp r6, #0
	blt _080256EE
	cmp r2, #0x1d
	bgt _080256EE
	cmp r5, #0x13
	bgt _080256EE
	ldrh r0, [r1]
	strh r0, [r3]
_080256EE:
	adds r1, #2
	adds r3, #2
	adds r2, #1
	subs r4, #1
	cmp r4, #0
	bge _080256DA
	ldr r0, [sp, #0x54]
	cmp r0, #6
	blt _080256B6
	movs r0, #0x2f
	mov r1, sl
	subs r0, r0, r1
	cmp r0, #0
	bge _0802570C
	movs r0, #0
_0802570C:
	mov sb, r0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x34]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sl, r0
	movs r0, #0
_08025728:
	adds r6, r0, #0
	adds r6, #0xc
	adds r0, #1
	mov ip, r0
	adds r5, r6, #0
	lsls r1, r5, #5
	adds r1, #0xc
	mov r2, sb
	adds r0, r2, r1
	adds r2, #0xc
	movs r4, #7
	lsls r0, r0, #1
	mov r7, sl
	adds r3, r0, r7
	lsls r1, r1, #1
	ldr r0, [sp, #0x34]
	adds r1, r1, r0
_0802574A:
	cmp r2, #0
	blt _0802575E
	cmp r6, #0
	blt _0802575E
	cmp r2, #0x1d
	bgt _0802575E
	cmp r5, #0x13
	bgt _0802575E
	ldrh r0, [r1]
	strh r0, [r3]
_0802575E:
	adds r1, #2
	adds r3, #2
	adds r2, #1
	subs r4, #1
	cmp r4, #0
	bge _0802574A
	mov r0, ip
	cmp r0, #6
	blt _08025728
_08025770:
	movs r1, #1
	str r1, [sp, #8]
	b _08025780
_08025776:
	mov r2, r8
	str r1, [r2, #4]
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
_08025780:
	movs r1, #9
	ldr r0, _0802579C @ =0x03004EA0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0802578E
	b _08025BBC
_0802578E:
	movs r0, #0
	mov r3, r8
	str r0, [r3, #8]
	str r0, [r3, #4]
	movs r0, #7
	str r0, [r3]
	b _08025BBC
	.align 2, 0
_0802579C: .4byte 0x03004EA0
_080257A0:
	mov r6, r8
	ldr r0, [r6, #8]
	adds r0, #1
	str r0, [r6, #8]
	cmp r0, #0
	ble _08025898
	movs r4, #0
	str r4, [r6, #8]
	ldr r0, [r6, #4]
	cmp r0, #8
	bgt _0802588C
	adds r0, #1
	str r0, [r6, #4]
	lsls r1, r0, #2
	adds r0, r1, r0
	adds r1, r0, #0
	cmp r0, #0
	bge _080257C6
	adds r1, r0, #7
_080257C6:
	asrs r1, r1, #3
	adds r7, r1, #0
	mov sb, r7
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x38]

	thumb_func_start sub_080257D8
sub_080257D8: @ 0x080257D8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x3c]
	cmp r7, #5
	ble _080257F2
	movs r0, #5
	mov sb, r0
	cmp r7, #5
	ble _080257F2
	movs r7, #5
_080257F2:
	movs r5, #0
	lsls r0, r7, #1
	cmp r4, r0
	bge _08025886
	mov r1, sb
	lsls r1, r1, #1
	str r1, [sp, #0x44]
	mov sl, r0
_08025802:
	movs r4, #0
	adds r2, r5, #1
	str r2, [sp, #0x48]
	ldr r3, [sp, #0x44]
	cmp r4, r3
	bge _08025880
	str r3, [sp, #0x58]
	mov r6, sl
	subs r6, r5, r6
	mov ip, r6
_08025816:
	cmp r4, sb
	bge _08025820
	adds r3, r4, #0
	adds r3, #0x14
	b _08025828
_08025820:
	ldr r1, [sp, #0x58]
	subs r0, r4, r1
	adds r3, r0, #0
	adds r3, #0x1e
_08025828:
	mov r1, ip
	adds r1, #0x11
	cmp r5, r7
	bge _08025832
	adds r1, r5, #7
_08025832:
	cmp r3, #0
	blt _08025878
	cmp r1, #0
	blt _08025878
	cmp r3, #0x1d
	bgt _08025878
	cmp r1, #0x13
	bgt _08025878
	movs r2, #0x19
	mov r6, sb
	subs r0, r2, r6
	adds r2, r0, r4
	movs r6, #0xc
	subs r0, r6, r7
	adds r0, r0, r5
	cmp r2, #0
	blt _08025878
	cmp r0, #0
	blt _08025878
	cmp r2, #0x1d
	bgt _08025878
	cmp r0, #0x13
	bgt _08025878
	lsls r0, r0, #5
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r2, [sp, #0x3c]
	adds r0, r0, r2
	lsls r1, r1, #5
	adds r1, r1, r3
	lsls r1, r1, #1
	ldr r3, [sp, #0x38]
	adds r1, r1, r3
	ldrh r1, [r1]
	strh r1, [r0]
_08025878:
	adds r4, #1
	ldr r6, [sp, #0x58]
	cmp r4, r6
	blt _08025816
_08025880:
	ldr r5, [sp, #0x48]
	cmp r5, sl
	blt _08025802
_08025886:
	movs r7, #1
	str r7, [sp, #8]
	b _08025898
_0802588C:
	mov r0, r8
	str r4, [r0, #4]
	ldr r0, [r0]
	adds r0, #1
	mov r1, r8
	str r0, [r1]
_08025898:
	movs r1, #9
	ldr r0, _080258B4 @ =0x03004EA0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _080258A6
	b _08025BBC
_080258A6:
	movs r0, #0
	mov r2, r8
	str r0, [r2, #8]
	str r0, [r2, #4]
	movs r0, #7
	str r0, [r2]
	b _08025BBC
	.align 2, 0
_080258B4: .4byte 0x03004EA0
_080258B8:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	bl sub_8024B1C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	bl sub_8024D2C
	movs r3, #1
	str r3, [sp, #8]
	mov r6, r8
_080258DA:
	ldr r0, [r6]
	adds r0, #1
	str r0, [r6]
	b _08025BBC
_080258E2:
	ldr r7, [sp, #4]
	cmp r7, #0
	beq _08025980
	ldr r0, _08025918 @ =0x03002E20
	mov r2, r8
	adds r2, #0x10
	ldr r1, _0802591C @ =0x00000818
	adds r3, r0, r1
	movs r4, #1
	adds r5, r7, #0
_080258F6:
	ldr r0, [r3]
	adds r0, #0xba
	ldrh r0, [r0]
	lsrs r0, r0, #1
	movs r1, #2
	cmp r0, #0
	bne _08025906
	movs r1, #1
_08025906:
	strb r1, [r2, #1]
	strh r4, [r2, #2]
	adds r2, #0x14
	adds r3, #4
	subs r5, #1
	cmp r5, #0
	bne _080258F6
	b _08025980
	.align 2, 0
_08025918: .4byte 0x03002E20
_0802591C: .4byte 0x00000818
_08025920:
	movs r0, #0
	mov r3, r8
	str r0, [r3, #4]
	ldr r0, [r3]
	adds r0, #1
	str r0, [r3]
	b _08025BBC
_0802592E:
	movs r5, #0
	ldr r1, _08025940 @ =0x03002C58
	ldr r6, [sp, #4]
	cmp r5, r6
	bge _08025962
	ldr r0, _08025944 @ =0x03002E20
	ldr r7, _08025948 @ =0x00000818
	adds r2, r0, r7
	b _08025956
	.align 2, 0
_08025940: .4byte 0x03002C58
_08025944: .4byte 0x03002E20
_08025948: .4byte 0x00000818
_0802594C:
	adds r2, #4
	adds r5, #1
	ldr r0, [sp, #4]
	cmp r5, r0
	bge _08025962
_08025956:
	ldr r0, [r2]
	adds r0, #0xba
	ldrh r0, [r0]
	lsrs r0, r0, #1
	cmp r0, #0
	bne _0802594C
_08025962:
	adds r1, r5, r1
	ldrb r0, [r1]
	cmp r0, #0x62
	bhi _0802596E
	adds r0, #1
	strb r0, [r1]
_0802596E:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	bl sub_8024D2C
	movs r1, #1
	str r1, [sp, #8]
_08025980:
	mov r2, r8
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	b _08025BBC
_0802598A:
	movs r3, #0
	mov sb, r3
	bl sub_802DC88
	cmp r0, #0
	beq _0802599E
	bl sub_802DCB4
	cmp r0, #0
	bne _080259A2
_0802599E:
	movs r6, #1
	mov sb, r6
_080259A2:
	mov r7, sb
	cmp r7, #0
	beq _08025A5A
	ldr r5, _08025A84 @ =_080DB9A0
	mov r1, r8
	ldr r0, [r1, #0xc]
	lsls r0, r0, #3
	adds r0, r0, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #2
	ldrsh r2, [r0, r3]
	movs r0, #0
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x1b
	movs r2, #0x1e
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	mov r6, r8
	ldr r0, [r6, #0xc]
	lsls r0, r0, #3
	adds r0, r0, r5
	movs r7, #0
	ldrsh r1, [r0, r7]
	movs r3, #2
	ldrsh r2, [r0, r3]
	adds r2, #1
	movs r0, #0
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x1b
	movs r2, #0x1f
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #0
_080259FA:
	movs r4, #0
	adds r7, r0, #1
	adds r6, r7, #0
_08025A00:
	mov r1, r8
	ldr r0, [r1, #0xc]
	lsls r0, r0, #3
	adds r0, r0, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r1, r1, r6
	movs r3, #2
	ldrsh r2, [r0, r3]
	adds r2, r2, r4
	movs r0, #0
	bl map_getBufferPtr2d
	ldrh r1, [r0]
	ldr r3, _08025A88 @ =0x00000FFF
	adds r2, r3, #0
	ands r1, r2
	strh r1, [r0]
	mov r1, r8
	ldr r0, [r1, #0xc]
	lsls r0, r0, #3
	adds r0, r0, r5
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r1, r1, r6
	movs r3, #2
	ldrsh r2, [r0, r3]
	adds r2, r2, r4
	movs r0, #0
	bl map_getBufferPtr2d
	ldrh r1, [r0]
	movs r3, #0xe0
	lsls r3, r3, #8
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	adds r4, #1
	cmp r4, #1
	ble _08025A00
	adds r0, r7, #0
	cmp r0, #6
	ble _080259FA
	movs r6, #1
	str r6, [sp, #8]
_08025A5A:
	movs r4, #0
	ldr r7, [sp, #4]
	cmp r4, r7
	blt _08025A64
	b _08025B86
_08025A64:
	ldr r2, _08025A84 @ =_080DB9A0
	movs r3, #1
	rsbs r3, r3, #0
_08025A6A:
	mov r0, r8
	ldr r1, [r0, #0xc]
	ldrh r5, [r0, #0xc]
	ldr r0, _08025A8C @ =0x03004F48
	ldrh r0, [r0]
	cmp r0, #0x20
	beq _08025AC4
	cmp r0, #0x20
	bgt _08025A90
	cmp r0, #0x10
	beq _08025AE2
	b _08025AFE
	.align 2, 0
_08025A84: .4byte _080DB9A0
_08025A88: .4byte 0x00000FFF
_08025A8C: .4byte 0x03004F48
_08025A90:
	cmp r0, #0x40
	beq _08025A9A
	cmp r0, #0x80
	beq _08025AA6
	b _08025AFE
_08025A9A:
	lsls r0, r1, #3
	adds r0, r0, r2
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _08025AEC
_08025AA6:
	lsls r0, r1, #3
	adds r0, r0, r2
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r3
	beq _08025AFE
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r6, r8
	str r0, [r6, #0xc]
	b _08025AFE
_08025AC4:
	lsls r0, r1, #3
	adds r0, r0, r2
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r3
	beq _08025AFE
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r7, r8
	str r0, [r7, #0xc]
	b _08025AFE
_08025AE2:
	lsls r0, r1, #3
	adds r0, r0, r2
	ldrb r0, [r0, #7]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_08025AEC:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r3
	beq _08025AFE
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	str r0, [r1, #0xc]
_08025AFE:
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	mov r6, r8
	ldr r0, [r6, #0xc]
	cmp r5, r0
	beq _08025B7C
	lsls r5, r5, #3
	adds r0, r5, r2
	movs r7, #0
	ldrsh r3, [r0, r7]
	movs r1, #2
	ldrsh r4, [r0, r1]
	movs r0, #0
	adds r1, r3, #0
	adds r2, r4, #0
	str r3, [sp, #0x50]
	bl map_getBufferPtr2d
	movs r6, #0
	strh r6, [r0]
	adds r4, #1
	movs r0, #0
	ldr r3, [sp, #0x50]
	adds r1, r3, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	strh r6, [r0]
	movs r1, #0
	ldr r0, _08025B78 @ =_080DB9A0
	adds r5, r5, r0
	movs r2, #2
	ldrsh r7, [r5, r2]
	movs r3, #0
	ldrsh r5, [r5, r3]
_08025B44:
	movs r4, #0
	adds r6, r1, #1
_08025B48:
	adds r2, r7, r4
	movs r0, #0
	adds r1, r5, r6
	bl map_getBufferPtr2d
	ldrh r2, [r0]
	movs r3, #0xf0
	lsls r3, r3, #8
	adds r1, r3, #0
	orrs r2, r1
	strh r2, [r0]
	adds r4, #1
	cmp r4, #1
	ble _08025B48
	adds r1, r6, #0
	cmp r1, #6
	ble _08025B44
	mov r6, sb
	cmp r6, #0
	beq _08025BBC
	movs r0, #0x8d
	bl m4aSongNumStart
	b _08025BBC
	.align 2, 0
_08025B78: .4byte _080DB9A0
_08025B7C:
	adds r4, #1
	ldr r7, [sp, #4]
	cmp r4, r7
	bge _08025B86
	b _08025A6A
_08025B86:
	movs r1, #9
	ldr r0, _08025BA0 @ =0x03004EA0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _08025BBC
	movs r0, #0x8f
	bl m4aSongNumStart
	mov r1, r8
	ldr r0, [r1]
	adds r0, #1
	b _08025BBA
	.align 2, 0
_08025BA0: .4byte 0x03004EA0
_08025BA4:
	ldr r1, _08025CD8 @ =_080DBA60
	mov r3, r8
	ldr r0, [r3, #0xc]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r6, #0xfd
	lsls r6, r6, #3
	adds r0, r2, r6
	strb r1, [r0]
	ldr r1, _08025CDC @ =0x03005C50
	movs r0, #1
_08025BBA:
	str r0, [r1]
_08025BBC:
	mov r7, r8
	ldr r0, [r7]
	cmp r0, #4
	ble _08025C92
	ldr r0, _08025CE0 @ =0x03002E20
	ldr r0, [r0, #0x10]
	ldr r2, _08025CE4 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08025BD4
	adds r0, #0x3f
_08025BD4:
	asrs r1, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	ldr r1, _08025CE8 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	subs r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov sl, r0
	movs r0, #0
	str r0, [sp, #0x40]
	movs r1, #0x1f
	mov sb, r1
	movs r7, #0x1f
	ldr r2, _08025CEC @ =_080AAD3C
	adds r2, #0x40
	str r2, [sp, #0x4c]
_08025C04:
	ldr r3, [sp, #0x40]
	lsls r3, r3, #1
	str r3, [sp, #0x5c]
	ldr r6, _08025CEC @ =_080AAD3C
	adds r0, r3, r6
	ldrh r4, [r0]
	adds r5, r4, #0
	ands r5, r7
	lsrs r6, r4, #5
	mov r0, sb
	ands r6, r0
	lsrs r4, r4, #0xa
	ands r4, r0
	ldr r2, [sp, #0x4c]
	ldrh r1, [r2]
	adds r0, r1, #0
	ands r0, r7
	lsrs r2, r1, #5
	mov r3, sb
	ands r2, r3
	lsrs r1, r1, #0xa
	ands r1, r3
	subs r0, r0, r5
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	asrs r0, r0, #0xf
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	subs r2, r2, r6
	mov r0, sl
	muls r0, r2, r0
	asrs r0, r0, #0xf
	adds r6, r6, r0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	subs r1, r1, r4
	mov r0, sl
	muls r0, r1, r0
	asrs r0, r0, #0xf
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0
	bl pltt_getBuffer
	ldr r1, [sp, #0x5c]
	adds r3, r1, r0
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r3, r3, r2
	ands r5, r7
	ands r6, r7
	lsls r6, r6, #5
	orrs r5, r6
	ands r4, r7
	lsls r4, r4, #0xa
	orrs r5, r4
	strh r5, [r3]
	ldr r3, [sp, #0x4c]
	adds r3, #2
	str r3, [sp, #0x4c]
	ldr r6, [sp, #0x40]
	adds r6, #1
	str r6, [sp, #0x40]
	cmp r6, #0xf
	ble _08025C04
	movs r0, #1
	bl pltt_setDirtyFlag
_08025C92:
	bl sub_8024970
	mov r7, r8
	ldr r0, [r7]
	cmp r0, #3
	ble _08025CBA
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _08025CBA
	mov r4, r8
	adds r4, #0x10
	adds r5, r0, #0
_08025CAA:
	adds r0, r4, #0
	movs r1, #1
	bl sub_800EB74
	adds r4, #0x14
	subs r5, #1
	cmp r5, #0
	bne _08025CAA
_08025CBA:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _08025CC6
	movs r0, #1
	bl map_setBufferDirty
_08025CC6:
	add sp, #0x60
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025CD8: .4byte _080DBA60
_08025CDC: .4byte 0x03005C50
_08025CE0: .4byte 0x03002E20
_08025CE4: .4byte gSinTable
_08025CE8: .4byte 0x000003FF
_08025CEC: .4byte _080AAD3C

	thumb_func_start sub_8025CF0
sub_8025CF0: @ 0x08025CF0
	push {lr}
	ldr r1, _08025D04 @ =0x03002E20
	ldr r2, _08025D08 @ =0x00000CAC
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	bge _08025D0C
	bl sub_8025D70
	b _08025D6A
	.align 2, 0
_08025D04: .4byte 0x03002E20
_08025D08: .4byte 0x00000CAC
_08025D0C:
	ldr r2, _08025D30 @ =0x000007FE
	adds r0, r1, r2
	ldrh r2, [r0]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r1, r2
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _08025D5A
	cmp r1, r0
	bgt _08025D34
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08025D46
	b _08025D6A
	.align 2, 0
_08025D30: .4byte 0x000007FE
_08025D34:
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	beq _08025D60
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	beq _08025D66
	b _08025D6A
_08025D46:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	bne _08025D54
	bl sub_801E7C8
	b _08025D6A
_08025D54:
	bl sub_802123C
	b _08025D6A
_08025D5A:
	bl sub_8022704
	b _08025D6A
_08025D60:
	bl sub_8023AE8
	b _08025D6A
_08025D66:
	bl sub_8024E88
_08025D6A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8025D70
sub_8025D70: @ 0x08025D70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	bl sub_800EDF4
	adds r6, r0, #0
	ldr r0, _08025DA0 @ =0x03002E20
	adds r7, r0, #0
	adds r7, #0x24
	ldr r0, [r6, #0xc]
	adds r0, #1
	str r0, [r6, #0xc]
	ldr r0, [r6]
	cmp r0, #6
	bls _08025D96
	b _080260D4
_08025D96:
	lsls r0, r0, #2
	ldr r1, _08025DA4 @ =_08025DA8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08025DA0: .4byte 0x03002E20
_08025DA4: .4byte _08025DA8
_08025DA8: @ jump table
	.4byte _08025DC4 @ case 0
	.4byte _08025DD0 @ case 1
	.4byte _08025E7E @ case 2
	.4byte _08025EC8 @ case 3
	.4byte _0802609A @ case 4
	.4byte _080260AA @ case 5
	.4byte _080260B4 @ case 6
_08025DC4:
	movs r0, #0
	str r0, [r6, #4]
	bl sub_804F570
	movs r0, #1
	str r0, [r6]
_08025DD0:
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #0xb4
	ble _08025E70
	movs r5, #0
	ldr r1, _08025E20 @ =0x00000814
	adds r0, r7, r1
	ldr r0, [r0]
	bl sub_803DAC4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r4, _08025E24 @ =0x02029400
	movs r0, #0x80
	adds r1, r4, #0
	bl sub_805EF10
	cmp r0, #0
	beq _08025E0A
	adds r1, r4, #0
	adds r1, #8
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _08025E0A
	ldrh r1, [r1, #2]
	cmp r8, r1
	bhs _08025E0C
_08025E0A:
	movs r5, #1
_08025E0C:
	ldr r2, _08025E28 @ =0x00000BEE
	adds r0, r7, r2
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08025E2C
	movs r5, #0
	str r5, [r6, #0x14]
	b _08025E30
	.align 2, 0
_08025E20: .4byte 0x00000814
_08025E24: .4byte 0x02029400
_08025E28: .4byte 0x00000BEE
_08025E2C:
	movs r0, #1
	str r0, [r6, #0x14]
_08025E30:
	cmp r5, #0
	beq _08025E5C
	movs r0, #1
	str r0, [r6, #0x10]
	bl sub_8015268
	ldr r1, _08025E68 @ =0x02024408
	mov r7, r8
	strh r7, [r1, #2]
	adds r0, r1, #0
	subs r0, #8
	ldr r2, _08025E6C @ =0xFFFFBFF8
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #4
	bl CpuSet
	movs r0, #1
	bl sub_801528C
	bl sub_805DA68
_08025E5C:
	movs r0, #0
	str r0, [r6, #4]
	movs r0, #2
	str r0, [r6]
	b _080260D4
	.align 2, 0
_08025E68: .4byte 0x02024408
_08025E6C: .4byte 0xFFFFBFF8
_08025E70:
	adds r0, r7, #0
	bl sub_804D94C
	adds r0, r7, #0
	bl sub_804F340
	b _080260D4
_08025E7E:
	bl dmaq_getVBlankDmaQueue
	adds r4, r0, #0
	ldr r5, _08025EBC @ =0x06003800
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r2, r0, #0
	ldr r3, _08025EC0 @ =0x80000280
	adds r0, r4, #0
	adds r1, r5, #0
	bl dmaq_enqueue
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _08025EC4 @ =0x01000140
	mov r0, sp
	bl CpuFastSet
	movs r0, #3
	str r0, [r6]
	str r4, [r6, #8]
	b _080260D4
	.align 2, 0
_08025EBC: .4byte 0x06003800
_08025EC0: .4byte 0x80000280
_08025EC4: .4byte 0x01000140
_08025EC8:
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #1
	bgt _08025ED4
	b _080260D4
_08025ED4:
	movs r1, #0
	str r1, [r6, #4]
	ldr r0, [r6, #8]
	cmp r0, #7
	ble _08025EE0
	b _08026092
_08025EE0:
	adds r0, #1
	str r0, [r6, #8]
	str r1, [sp, #4]
	add r4, sp, #4
	movs r0, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _08025F20 @ =0x01000140
	adds r0, r4, #0
	bl CpuFastSet
	ldr r1, _08025F24 @ =0x000007E6
	adds r0, r7, r1
	ldrh r0, [r0]
	lsrs r1, r0, #8
	movs r0, #0xf
	ands r1, r0
	movs r2, #1
	mov r8, r2
	cmp r1, #3
	ble _08025F12
	movs r7, #2
	mov r8, r7
_08025F12:
	movs r7, #2
	cmp r1, #3
	ble _08025F1A
	movs r7, #1
_08025F1A:
	movs r4, #0
	adds r5, r1, #1
	b _08025F46
	.align 2, 0
_08025F20: .4byte 0x01000140
_08025F24: .4byte 0x000007E6
_08025F28:
	lsls r0, r3, #3
	adds r0, r0, r3
	cmp r0, #0
	bge _08025F32
	adds r0, #7
_08025F32:
	asrs r1, r0, #3
	movs r0, #0x12
	subs r0, r0, r1
	adds r1, r4, #0
	muls r1, r7, r1
	add r1, r8
	adds r2, r4, #0
	bl sub_8022004
	adds r4, #1
_08025F46:
	ldr r3, [r6, #8]
	adds r0, r5, #0
	muls r0, r3, r0
	cmp r0, #0
	bge _08025F52
	adds r0, #7
_08025F52:
	asrs r0, r0, #3
	cmp r4, r0
	blt _08025F28
	adds r4, r3, #0
	lsls r0, r4, #3
	adds r0, r0, r4
	cmp r0, #0
	bge _08025F64
	adds r0, #7
_08025F64:
	asrs r1, r0, #3
	movs r0, #0x12
	subs r0, r0, r1
	movs r2, #0
	cmp r4, #7
	ble _08025F72
	movs r2, #1
_08025F72:
	adds r1, r3, #0
	bl sub_8022264
	ldr r0, [r6, #8]
	rsbs r0, r0, #0
	mov sb, r0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov r8, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sl, r0
	movs r1, #0
	ldr r6, [r6, #8]
	mov ip, r6
_08025F9C:
	movs r3, #0
	mov r0, sb
	adds r5, r1, r0
	adds r6, r1, #1
	adds r4, r5, #0
	lsls r0, r4, #6
	mov r7, sl
	adds r2, r0, r7
	lsls r0, r1, #6
	mov r7, r8
	adds r1, r0, r7
_08025FB2:
	cmp r3, #0
	blt _08025FC6
	cmp r5, #0
	blt _08025FC6
	cmp r3, #0x1d
	bgt _08025FC6
	cmp r4, #0x13
	bgt _08025FC6
	ldrh r0, [r1]
	strh r0, [r2]
_08025FC6:
	adds r2, #2
	adds r1, #2
	adds r3, #1
	cmp r3, #0x11
	blt _08025FB2
	adds r1, r6, #0
	cmp r1, #5
	blt _08025F9C
	mov r7, ip
	mov sl, r7
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov r8, r0
	movs r0, #0
_08025FF4:
	adds r1, r0, #0
	adds r1, #0xc
	adds r0, #1
	mov ip, r0
	mov r0, sl
	adds r4, r1, r0
	lsls r0, r4, #5
	lsls r1, r1, #5
	adds r1, #0x16
	adds r0, #0x16
	adds r0, r7, r0
	adds r2, r7, #0
	adds r2, #0x16
	movs r5, #8
	lsls r0, r0, #1
	mov r6, r8
	adds r3, r0, r6
	lsls r1, r1, #1
	add r1, sb
_0802601A:
	cmp r2, #0
	blt _0802602E
	cmp r4, #0
	blt _0802602E
	cmp r2, #0x1d
	bgt _0802602E
	cmp r4, #0x13
	bgt _0802602E
	ldrh r0, [r1]
	strh r0, [r3]
_0802602E:
	adds r1, #2
	adds r3, #2
	adds r2, #1
	subs r5, #1
	cmp r5, #0
	bge _0802601A
	mov r0, ip
	cmp r0, #9
	blt _08025FF4
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov r8, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r7, r0, #0
	movs r0, #0
_0802605A:
	movs r1, #0
	adds r4, r0, #0
	adds r4, #0x10
	adds r6, r0, #1
	adds r3, r4, #0
	lsls r5, r3, #5
_08026066:
	adds r2, r1, #1
	cmp r2, #0
	blt _08026084
	cmp r4, #0
	blt _08026084
	cmp r2, #0x1d
	bgt _08026084
	cmp r3, #0x13
	bgt _08026084
	adds r0, r5, r2
	lsls r0, r0, #1
	adds r1, r0, r7
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r1]
_08026084:
	adds r1, r2, #0
	cmp r1, #5
	blt _08026066
	adds r0, r6, #0
	cmp r0, #3
	blt _0802605A
	b _080260DA
_08026092:
	movs r0, #4
	str r0, [r6]
	str r1, [r6, #8]
	b _080260D4
_0802609A:
	ldr r1, [r6, #0xc]
	movs r0, #0xff
	lsls r0, r0, #1
	cmp r1, r0
	ble _080260D4
	movs r0, #5
	str r0, [r6]
	b _080260D4
_080260AA:
	movs r0, #0
	str r0, [r6, #4]
	movs r0, #6
	str r0, [r6]
	b _080260D4
_080260B4:
	ldr r0, [r6, #0x14]
	cmp r0, #0
	bne _080260C4
	movs r1, #0xb
	movs r2, #0xfd
	lsls r2, r2, #3
	adds r0, r7, r2
	b _080260CC
_080260C4:
	movs r1, #0xa
	movs r6, #0xfd
	lsls r6, r6, #3
	adds r0, r7, r6
_080260CC:
	strb r1, [r0]
	ldr r1, _080260F0 @ =0x03005C50
	movs r0, #1
	str r0, [r1]
_080260D4:
	movs r0, #0
	cmp r0, #0
	beq _080260E0
_080260DA:
	movs r0, #1
	bl map_setBufferDirty
_080260E0:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080260F0: .4byte 0x03005C50

	thumb_func_start sub_080260F4
sub_080260F4: @ 0x080260F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	str r1, [sp]
	adds r7, r2, #0
	mov sb, r3
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sl, r0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov ip, r0
	movs r0, #0
	cmp r0, sb
	bge _08026174
_08026126:
	adds r1, r0, #1
	str r1, [sp, #4]
	cmp r7, #0
	ble _0802616E
	ldr r6, [sp]
	adds r0, r6, r0
	ldr r1, [sp, #0x2c]
	adds r5, r0, r1
	lsls r2, r5, #5
	lsls r0, r0, #5
	add r0, r8
	ldr r1, [sp, #0x28]
	add r1, r8
	adds r2, r1, r2
	adds r4, r7, #0
	lsls r2, r2, #1
	add r2, ip
	lsls r0, r0, #1
	mov r6, sl
	adds r3, r0, r6
_0802614E:
	cmp r1, #0
	blt _08026162
	cmp r5, #0
	blt _08026162
	cmp r1, #0x1d
	bgt _08026162
	cmp r5, #0x13
	bgt _08026162
	ldrh r0, [r3]
	strh r0, [r2]
_08026162:
	adds r3, #2
	adds r2, #2
	adds r1, #1
	subs r4, #1
	cmp r4, #0
	bne _0802614E
_0802616E:
	ldr r0, [sp, #4]
	cmp r0, sb
	blt _08026126
_08026174:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08026184
sub_08026184: @ 0x08026184
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08026244 @ =0x0203EBCC
	ldr r0, [r0]
	mov sb, r0
	ldr r0, _08026248 @ =0x0203EBB8
	ldr r0, [r0]
	cmp r0, #2
	bgt _08026258
	ldr r0, _0802624C @ =_080C97AC
	mov ip, r0
	movs r4, #0
	ldr r1, _08026250 @ =_080DBA64
	mov sl, r1
	movs r7, #0x80
	lsls r7, r7, #1
	mov r8, r4
_080261AC:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x14
	mov r2, sb
	adds r3, r2, r0
	lsls r0, r4, #2
	add r0, sl
	ldr r0, [r0]
	str r0, [r3]
	strh r7, [r3, #4]
	adds r1, r4, #0
	mov r2, ip
	ldrh r0, [r2]
	adds r2, #2
	cmp r0, r4
	bgt _080261D0
	subs r1, r0, #1
_080261D0:
	adds r6, r4, #1
	cmp r1, #0
	ble _080261E0
	adds r0, r1, #0
_080261D8:
	adds r2, #6
	subs r0, #1
	cmp r0, #0
	bne _080261D8
_080261E0:
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r5, r0, #0
	adds r5, #0x20
	strh r5, [r3, #6]
	strh r7, [r3, #0xa]
	strh r7, [r3, #8]
	mov r0, r8
	strh r0, [r3, #0xc]
	movs r0, #6
	strb r0, [r3, #0xe]
	mov r1, r8
	strh r1, [r3, #0x10]
	mov r1, ip
	adds r2, r4, #0
	ldrh r0, [r1]
	adds r1, #2
	cmp r0, r4
	bgt _08026208
	subs r2, r0, #1
_08026208:
	cmp r2, #0
	ble _08026216
	adds r0, r2, #0
_0802620E:
	adds r1, #6
	subs r0, #1
	cmp r0, #0
	bne _0802620E
_08026216:
	ldrh r0, [r1, #2]
	ldr r2, _08026254 @ =0x000001FF
	adds r1, r2, #0
	ands r1, r0
	adds r0, r1, #0
	cmp r0, #0xff
	bls _0802622A
	adds r0, r1, #0
	eors r0, r2
	rsbs r0, r0, #0
_0802622A:
	adds r0, #0xa0
	strh r0, [r3, #0x12]
	strh r5, [r3, #0x14]
	strb r4, [r3, #0x16]
	movs r0, #0x10
	strb r0, [r3, #0x17]
	adds r4, r6, #0
	cmp r4, #0xf
	bls _080261AC
	movs r0, #0x6d
	bl m4aSongNumStart
	b _080262F4
	.align 2, 0
_08026244: .4byte 0x0203EBCC
_08026248: .4byte 0x0203EBB8
_0802624C: .4byte _080C97AC
_08026250: .4byte _080DBA64
_08026254: .4byte 0x000001FF
_08026258:
	ldr r5, _08026304 @ =_080C9890
	movs r4, #0
	ldr r2, _08026308 @ =_080DBAA4
	mov sl, r2
	movs r7, #0
	ldr r0, _0802630C @ =0x0000FFD8
	mov r8, r0
_08026266:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x14
	mov r1, sb
	adds r3, r1, r0
	lsls r0, r4, #2
	add r0, sl
	ldr r0, [r0]
	str r0, [r3]
	adds r1, r4, #0
	ldrh r0, [r5]
	adds r2, r5, #2
	cmp r0, r4
	bgt _08026286
	subs r1, r0, #1
_08026286:
	adds r6, r4, #1
	cmp r1, #0
	ble _08026296
	adds r0, r1, #0
_0802628E:
	adds r2, #6
	subs r0, #1
	cmp r0, #0
	bne _0802628E
_08026296:
	ldrh r0, [r2, #2]
	ldr r1, _08026310 @ =0x000001FF
	adds r2, r1, #0
	ands r2, r0
	adds r0, r2, #0
	cmp r0, #0xff
	bls _080262AA
	adds r0, r2, #0
	eors r0, r1
	rsbs r0, r0, #0
_080262AA:
	adds r1, r0, #0
	adds r1, #0x88
	strh r1, [r3, #4]
	mov r2, r8
	strh r2, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #0xa]
	strh r0, [r3, #8]
	strh r7, [r3, #0xc]
	movs r0, #0xb
	strb r0, [r3, #0xe]
	strh r7, [r3, #0x10]
	strh r1, [r3, #0x12]
	adds r1, r5, #0
	adds r0, r4, #0
	ldrh r2, [r1]
	adds r1, #2
	cmp r2, r4
	bgt _080262D4
	subs r0, r2, #1
_080262D4:
	cmp r0, #0
	ble _080262E0
_080262D8:
	adds r1, #6
	subs r0, #1
	cmp r0, #0
	bne _080262D8
_080262E0:
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, #0x20
	strh r0, [r3, #0x14]
	strb r4, [r3, #0x16]
	movs r0, #7
	strb r0, [r3, #0x17]
	adds r4, r6, #0
	cmp r4, #6
	bls _08026266
_080262F4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026304: .4byte _080C9890
_08026308: .4byte _080DBAA4
_0802630C: .4byte 0x0000FFD8
_08026310: .4byte 0x000001FF

	thumb_func_start sub_08026314
sub_08026314: @ 0x08026314
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r0, _08026390 @ =0x0203EBCC
	ldr r7, [r0]
	ldr r0, _08026394 @ =0x0203EBB8
	ldr r0, [r0]
	movs r6, #7
	cmp r0, #2
	bgt _08026328
	movs r6, #0x10
_08026328:
	cmp r6, #0
	beq _08026340
	adds r4, r7, #0
	adds r4, #0x14
	adds r5, r6, #0
_08026332:
	adds r0, r4, #0
	bl sub_8003BB8
	adds r4, #0x18
	subs r5, #1
	cmp r5, #0
	bne _08026332
_08026340:
	cmp r6, #0
	beq _08026384
	adds r4, r7, #0
	adds r4, #0x14
	adds r5, r6, #0
_0802634A:
	ldrh r2, [r4, #4]
	ldr r1, _08026398 @ =0xFFFF0000
	ldr r0, [sp, #8]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #8]
	ldrh r2, [r4, #6]
	lsls r2, r2, #0x10
	ldr r1, _0802639C @ =0x0000FFFF
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #8]
	ldr r0, [r4]
	movs r1, #8
	ldrsh r2, [r4, r1]
	movs r6, #0xa
	ldrsh r3, [r4, r6]
	movs r6, #0xc
	ldrsh r1, [r4, r6]
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	add r1, sp, #8
	bl oam_renderCellData
	adds r4, #0x18
	subs r5, #1
	cmp r5, #0
	bne _0802634A
_08026384:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08026390: .4byte 0x0203EBCC
_08026394: .4byte 0x0203EBB8
_08026398: .4byte 0xFFFF0000
_0802639C: .4byte 0x0000FFFF

	thumb_func_start sub_080263A0
sub_080263A0: @ 0x080263A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0802644C @ =0x0203EBCC
	ldr r0, [r0]
	mov ip, r0
	ldr r0, _08026450 @ =0x0203EBB8
	ldr r0, [r0]
	cmp r0, #2
	bgt _08026460
	ldr r6, _08026454 @ =_080C97AC
	movs r4, #0
	ldr r0, _08026458 @ =_080DBA64
	mov r8, r0
	movs r7, #0
_080263BE:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x14
	mov r1, ip
	adds r3, r1, r0
	lsls r0, r4, #2
	add r0, r8
	ldr r0, [r0]
	str r0, [r3]
	adds r1, r4, #0
	ldrh r0, [r6]
	adds r2, r6, #2
	cmp r0, r4
	bgt _080263DE
	subs r1, r0, #1
_080263DE:
	adds r5, r4, #1
	cmp r1, #0
	ble _080263EE
	adds r0, r1, #0
_080263E6:
	adds r2, #6
	subs r0, #1
	cmp r0, #0
	bne _080263E6
_080263EE:
	ldrh r0, [r2, #2]
	ldr r2, _0802645C @ =0x000001FF
	adds r1, r2, #0
	ands r1, r0
	adds r0, r1, #0
	cmp r0, #0xff
	bls _08026402
	adds r0, r1, #0
	eors r0, r2
	rsbs r0, r0, #0
_08026402:
	adds r0, #0xa0
	strh r0, [r3, #4]
	strh r0, [r3, #0x12]
	adds r1, r6, #0
	adds r0, r4, #0
	ldrh r2, [r1]
	adds r1, #2
	cmp r2, r4
	bgt _08026416
	subs r0, r2, #1
_08026416:
	cmp r0, #0
	ble _08026422
_0802641A:
	adds r1, #6
	subs r0, #1
	cmp r0, #0
	bne _0802641A
_08026422:
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, #0x20
	strh r0, [r3, #6]
	strh r0, [r3, #0x14]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #0xa]
	strh r0, [r3, #8]
	strh r7, [r3, #0xc]
	movs r0, #0xd
	strb r0, [r3, #0xe]
	strh r7, [r3, #0x10]
	strb r4, [r3, #0x16]
	movs r0, #0x10
	strb r0, [r3, #0x17]
	adds r4, r5, #0
	cmp r4, #0xf
	bls _080263BE
	b _080264F4
	.align 2, 0
_0802644C: .4byte 0x0203EBCC
_08026450: .4byte 0x0203EBB8
_08026454: .4byte _080C97AC
_08026458: .4byte _080DBA64
_0802645C: .4byte 0x000001FF
_08026460:
	ldr r6, _08026500 @ =_080C9890
	movs r4, #0
	ldr r0, _08026504 @ =_080DBAA4
	mov r8, r0
	movs r7, #0
_0802646A:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x14
	mov r1, ip
	adds r3, r1, r0
	lsls r0, r4, #2
	add r0, r8
	ldr r0, [r0]
	str r0, [r3]
	adds r1, r4, #0
	ldrh r0, [r6]
	adds r2, r6, #2
	cmp r0, r4
	bgt _0802648A
	subs r1, r0, #1
_0802648A:
	adds r5, r4, #1
	cmp r1, #0
	ble _0802649A
	adds r0, r1, #0
_08026492:
	adds r2, #6
	subs r0, #1
	cmp r0, #0
	bne _08026492
_0802649A:
	ldrh r0, [r2, #2]
	ldr r2, _08026508 @ =0x000001FF
	adds r1, r2, #0
	ands r1, r0
	adds r0, r1, #0
	cmp r0, #0xff
	bls _080264AE
	adds r0, r1, #0
	eors r0, r2
	rsbs r0, r0, #0
_080264AE:
	adds r0, #0x88
	strh r0, [r3, #4]
	strh r0, [r3, #0x12]
	adds r1, r6, #0
	adds r0, r4, #0
	ldrh r2, [r1]
	adds r1, #2
	cmp r2, r4
	bgt _080264C2
	subs r0, r2, #1
_080264C2:
	cmp r0, #0
	ble _080264CE
_080264C6:
	adds r1, #6
	subs r0, #1
	cmp r0, #0
	bne _080264C6
_080264CE:
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, #0x20
	strh r0, [r3, #6]
	strh r0, [r3, #0x14]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #0xa]
	strh r0, [r3, #8]
	strh r7, [r3, #0xc]
	movs r0, #0xd
	strb r0, [r3, #0xe]
	strh r7, [r3, #0x10]
	strb r4, [r3, #0x16]
	movs r0, #7
	strb r0, [r3, #0x17]
	adds r4, r5, #0
	cmp r4, #6
	bls _0802646A
_080264F4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026500: .4byte _080C9890
_08026504: .4byte _080DBAA4
_08026508: .4byte 0x000001FF

	thumb_func_start sub_802650C
sub_802650C: @ 0x0802650C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	adds r0, r3, #0
	ldr r1, [sp, #0x28]
	lsls r0, r0, #0xf
	bl __divsi3
	ldr r2, _080265F8 @ =gSinTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08026534
	adds r0, #0x3f
_08026534:
	asrs r1, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	ldr r1, _080265FC @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	subs r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov sb, r0
	movs r0, #0x1f
	mov sl, r0
	movs r6, #0x1f
	mov r8, r4
	mov ip, r5
	str r7, [sp, #4]
	movs r7, #0xf
	str r7, [sp]
_08026564:
	ldr r0, [sp, #4]
	ldrh r1, [r0]
	adds r2, r1, #0
	ands r2, r6
	lsrs r4, r1, #5
	mov r7, sl
	ands r4, r7
	lsrs r1, r1, #0xa
	mov r0, sl
	ands r1, r0
	mov r7, ip
	ldrh r3, [r7]
	adds r0, r3, #0
	ands r0, r6
	lsrs r5, r3, #5
	mov r7, sl
	ands r5, r7
	lsrs r3, r3, #0xa
	ands r3, r7
	subs r0, r0, r2
	mov r7, sb
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #0xf
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	subs r5, r5, r4
	mov r0, sb
	muls r0, r5, r0
	asrs r0, r0, #0xf
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	subs r3, r3, r1
	mov r0, sb
	muls r0, r3, r0
	asrs r0, r0, #0xf
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ands r2, r6
	ands r4, r6
	lsls r4, r4, #5
	orrs r2, r4
	ands r1, r6
	lsls r1, r1, #0xa
	orrs r2, r1
	mov r0, r8
	strh r2, [r0]
	movs r7, #2
	add r8, r7
	movs r0, #2
	add ip, r0
	ldr r7, [sp, #4]
	adds r7, #2
	str r7, [sp, #4]
	ldr r0, [sp]
	subs r0, #1
	str r0, [sp]
	cmp r0, #0
	bge _08026564
	movs r0, #1
	bl pltt_setDirtyFlag
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080265F8: .4byte gSinTable
_080265FC: .4byte 0x000003FF

	thumb_func_start sub_08026600
sub_08026600: @ 0x08026600
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	ldr r0, _080266AC @ =0x0203EBCC
	ldr r0, [r0]
	mov sb, r0
	ldr r0, _080266B0 @ =_080C17E0
	movs r4, #0xb9
	lsls r4, r4, #3
	add r4, sb
	ldr r1, [r4]
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r1, [r4]
	ldr r2, _080266B4 @ =0x06015800
	ldr r3, _080266B8 @ =0x80000170
	bl dmaq_enqueue
	movs r0, #0
	mov r8, r0
	movs r3, #0
	ldr r7, _080266BC @ =0x000005FC
	add r7, sb
	movs r2, #0x68
	movs r6, #0xbb
	lsls r6, r6, #3
	add r6, sb
_0802663E:
	str r2, [sp]
	str r3, [sp, #4]
	bl save_getSavePointer_805D9B0
	mov r1, r8
	lsls r5, r1, #2
	adds r0, r0, r5
	ldr r1, _080266C0 @ =0x00000582
	adds r0, r0, r1
	ldrb r4, [r0]
	bl save_getSavePointer_805D9B0
	adds r0, r0, r5
	ldr r1, _080266C4 @ =0x00000583
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0xcc
	strh r0, [r6]
	ldr r2, [sp]
	strh r2, [r6, #2]
	ldr r0, _080266C8 @ =_080DB0A8
	adds r4, #1
	adds r4, r4, r0
	ldrb r0, [r4]
	strb r0, [r6, #4]
	ldr r3, [sp, #4]
	strb r3, [r6, #6]
	strb r3, [r6, #5]
	movs r0, #0xe4
	strh r0, [r6, #0x20]
	strh r2, [r6, #0x22]
	strb r1, [r7]
	strb r3, [r7, #2]
	strb r3, [r7, #1]
	adds r7, #8
	adds r2, #0x10
	adds r6, #8
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #3
	ble _0802663E
	movs r1, #0xc3
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0
	str r0, [r1]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080266AC: .4byte 0x0203EBCC
_080266B0: .4byte _080C17E0
_080266B4: .4byte 0x06015800
_080266B8: .4byte 0x80000170
_080266BC: .4byte 0x000005FC
_080266C0: .4byte 0x00000582
_080266C4: .4byte 0x00000583
_080266C8: .4byte _080DB0A8

	thumb_func_start sub_080266CC
sub_080266CC: @ 0x080266CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _080267A4 @ =0x0203EBCC
	ldr r0, [r0]
	movs r1, #0xf
	mov sl, r1
	ldr r1, _080267A8 @ =_080DBBB8
	mov sb, r1
	add r7, sp, #8
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r5, r0, r1
	movs r6, #0
	movs r0, #3
	mov r8, r0
_080266F2:
	movs r0, #4
	ldrsb r0, [r5, r0]
	cmp r0, #0
	blt _08026762
	adds r1, r0, #0
	ldr r0, _080267AC @ =0x0000CCCD
	adds r4, r1, #0
	muls r4, r0, r4
	cmp r4, #0
	bge _0802670A
	ldr r0, _080267B0 @ =0x0007FFFF
	adds r4, r4, r0
_0802670A:
	asrs r4, r4, #0x13
	mov r0, sl
	ands r4, r0
	lsls r3, r4, #2
	adds r4, r3, r4
	lsls r4, r4, #1
	subs r4, r1, r4
	ands r4, r0
	ldrh r2, [r5]
	ldr r1, _080267B4 @ =0xFFFF0000
	ldr r0, [sp, #8]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #8]
	ldrh r2, [r5, #2]
	lsls r2, r2, #0x10
	ldr r1, _080267B8 @ =0x0000FFFF
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #8]
	add r3, sb
	ldr r0, [r3]
	str r6, [sp]
	str r6, [sp, #4]
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	ldrh r0, [r5]
	adds r0, #8
	strh r0, [r7]
	ldrh r0, [r5, #2]
	strh r0, [r7, #2]
	lsls r4, r4, #2
	add r4, sb
	ldr r0, [r4]
	str r6, [sp]
	str r6, [sp, #4]
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_08026762:
	adds r5, #8
	movs r1, #1
	rsbs r1, r1, #0
	add r8, r1
	mov r0, r8
	cmp r0, #0
	bge _080266F2
	ldr r0, _080267BC @ =0x03002E20
	ldr r4, [r0, #0x10]
	movs r0, #0
	bl pltt_getBuffer
	adds r2, r0, #0
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r2, r2, r1
	ldr r0, _080267C0 @ =_080AAD3C
	adds r1, r0, #0
	adds r1, #0x40
	movs r3, #0x20
	str r3, [sp]
	adds r3, r4, #0
	bl sub_802650C
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080267A4: .4byte 0x0203EBCC
_080267A8: .4byte _080DBBB8
_080267AC: .4byte 0x0000CCCD
_080267B0: .4byte 0x0007FFFF
_080267B4: .4byte 0xFFFF0000
_080267B8: .4byte 0x0000FFFF
_080267BC: .4byte 0x03002E20
_080267C0: .4byte _080AAD3C

	thumb_func_start sub_80267C4
sub_80267C4: @ 0x080267C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	movs r4, #0x64
	movs r1, #0x64
	bl __divsi3
	movs r2, #0xf
	ands r0, r2
	str r0, [sp, #4]
	adds r1, r0, #0
	muls r1, r4, r1
	ldr r3, [sp]
	subs r1, r3, r1
	ldr r0, _0802689C @ =0x0000CCCD
	muls r0, r1, r0
	lsrs r0, r0, #0x13
	mov sb, r0
	ands r0, r2
	mov sb, r0
	lsls r0, r0, #2
	add r0, sb
	lsls r0, r0, #1
	subs r1, r1, r0
	mov sl, r1
	mov r3, sl
	ands r3, r2
	mov sl, r3
	movs r0, #0
	mov r8, r0
_08026808:
	movs r7, #0xf0
	lsls r7, r7, #8
	ldr r3, [sp]
	cmp r3, #0x63
	ble _08026816
	movs r7, #0xe0
	lsls r7, r7, #8
_08026816:
	mov r6, r8
	adds r6, #9
	movs r0, #0
	movs r1, #0x1b
	adds r2, r6, #0
	bl map_getBufferPtr2d
	adds r4, r0, #0
	mov r5, r8
	adds r5, #0x1e
	movs r0, #1
	ldr r1, [sp, #4]
	adds r2, r5, #0
	bl map_getBufferPtr2d
	ldrh r1, [r0]
	ldr r0, _080268A0 @ =0x00000FFF
	ands r0, r1
	orrs r0, r7
	strh r0, [r4]
	movs r0, #0
	movs r1, #0x1c
	adds r2, r6, #0
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r0, #1
	mov r1, sb
	adds r2, r5, #0
	bl map_getBufferPtr2d
	ldrh r1, [r0]
	ldr r0, _080268A0 @ =0x00000FFF
	ands r0, r1
	orrs r0, r7
	strh r0, [r4]
	movs r0, #0
	movs r1, #0x1d
	adds r2, r6, #0
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r0, #1
	mov r1, sl
	adds r2, r5, #0
	bl map_getBufferPtr2d
	ldrh r1, [r0]
	ldr r0, _080268A0 @ =0x00000FFF
	ands r0, r1
	orrs r0, r7
	strh r0, [r4]
	movs r0, #1
	add r8, r0
	mov r3, r8
	cmp r3, #1
	ble _08026808
	bl map_setBufferDirty
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802689C: .4byte 0x0000CCCD
_080268A0: .4byte 0x00000FFF

	thumb_func_start sub_080268A4
sub_080268A4: @ 0x080268A4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r0, _080268CC @ =0x0203EBCC
	ldr r2, [r0]
	movs r6, #1
	movs r0, #0xc3
	lsls r0, r0, #3
	adds r4, r2, r0
_080268B4:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _080268D0
	asrs r1, r6, #0x1f
	subs r0, r6, r1
	asrs r0, r0, #1
	lsls r0, r0, #3
	movs r3, #0xbf
	lsls r3, r3, #3
	b _080268DC
	.align 2, 0
_080268CC: .4byte 0x0203EBCC
_080268D0:
	asrs r1, r6, #0x1f
	subs r0, r6, r1
	asrs r0, r0, #1
	lsls r0, r0, #3
	movs r3, #0xbb
	lsls r3, r3, #3
_080268DC:
	adds r0, r0, r3
	adds r5, r2, r0
	adds r7, r1, #0
	movs r1, #5
	ldrsb r1, [r5, r1]
	cmp r1, #1
	beq _08026910
	cmp r1, #1
	bgt _080268F4
	cmp r1, #0
	beq _080268FA
	b _0802695C
_080268F4:
	cmp r1, #2
	beq _08026928
	b _0802695C
_080268FA:
	ldrb r0, [r5, #6]
	adds r0, #1
	strb r0, [r5, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xc
	ble _0802696A
	strb r1, [r5, #6]
	movs r0, #1
	strb r0, [r5, #5]
	b _08026962
_08026910:
	ldrb r0, [r5, #6]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #6
	ble _08026962
	strb r1, [r5, #6]
	movs r0, #2
	strb r0, [r5, #5]
	b _08026962
_08026928:
	movs r0, #0x65
	bl m4aSongNumStart
	movs r1, #4
	ldrsb r1, [r5, r1]
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	bl sub_80267C4
	ldr r0, [r4]
	cmp r0, #0x63
	ble _0802694C
	movs r0, #0
	ldr r1, _08026958 @ =_080DBB08
	movs r2, #0
	bl sub_8030224
_0802694C:
	movs r0, #0xff
	strb r0, [r5, #4]
	movs r0, #3
	strb r0, [r5, #5]
	b _08026962
	.align 2, 0
_08026958: .4byte _080DBB08
_0802695C:
	adds r6, #2
	cmp r6, #7
	ble _080268B4
_08026962:
	cmp r6, #7
	bgt _080269A6
	movs r0, #0
	b _080269A8
_0802696A:
	movs r2, #1
	ands r2, r6
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, #0xcc
	lsls r2, r2, #3
	movs r1, #0xec
	subs r1, r1, r2
	movs r2, #6
	ldrsb r2, [r5, r2]
	movs r4, #0xc
	str r4, [sp]
	movs r3, #0xc
	bl sub_800E930
	strh r0, [r5]
	subs r0, r6, r7
	asrs r0, r0, #1
	lsls r0, r0, #4
	adds r0, #0x68
	movs r2, #6
	ldrsb r2, [r5, r2]
	str r4, [sp]
	movs r1, #0x50
	movs r3, #0xc
	bl sub_800E930
	strh r0, [r5, #2]
	b _08026962
_080269A6:
	movs r0, #1
_080269A8:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080269B0
sub_080269B0: @ 0x080269B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _080269DC @ =0x0203EBCC
	ldr r1, [r0]
	movs r0, #0xc4
	lsls r0, r0, #3
	adds r0, r0, r1
	mov r8, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08026A20
	cmp r0, #1
	bgt _080269E0
	cmp r0, #0
	beq _080269EC
	b _08026B28
	.align 2, 0
_080269DC: .4byte 0x0203EBCC
_080269E0:
	cmp r0, #2
	beq _08026A50
	cmp r0, #3
	bne _080269EA
	b _08026AF8
_080269EA:
	b _08026B28
_080269EC:
	bl dmaq_getVBlankDmaQueue
	adds r5, r0, #0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r2, r0, #0
	ldr r3, _08026A1C @ =0x80000280
	adds r0, r5, #0
	adds r1, r4, #0
	bl dmaq_enqueue
	movs r2, #0
	mov r1, r8
	strb r2, [r1, #1]
	b _08026AE8
	.align 2, 0
_08026A1C: .4byte 0x80000280
_08026A20:
	ldr r2, _08026A48 @ =0x0000061C
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _08026A44
	ldr r4, _08026A4C @ =_080C2830
	movs r0, #1
	movs r1, #0
	movs r2, #9
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	movs r0, #0x6e
	bl m4aSongNumStart
_08026A44:
	mov r1, r8
	b _08026AE8
	.align 2, 0
_08026A48: .4byte 0x0000061C
_08026A4C: .4byte _080C2830
_08026A50:
	mov r2, r8
	ldrb r0, [r2, #1]
	adds r0, #1
	strb r0, [r2, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	bgt _08026A8C
	ldr r2, _08026A88 @ =0x0000061C
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _08026B28
	mov r1, r8
	movs r0, #1
	ldrsb r0, [r1, r0]
	subs r0, #0x10
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r0, #0
	movs r1, #9
	movs r2, #0xf
	movs r3, #1
	bl sub_80297A8
	b _08026B28
	.align 2, 0
_08026A88: .4byte 0x0000061C
_08026A8C:
	ldr r2, _08026AF0 @ =0x0000061C
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _08026AE2
	movs r1, #0
	ldr r0, _08026AF4 @ =0x00000FFF
	mov sl, r0
_08026A9C:
	movs r7, #0
	adds r2, r1, #1
	mov sb, r2
	adds r6, r1, #0
	adds r6, #9
_08026AA6:
	adds r4, r7, #0
	adds r4, #0xa
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	adds r5, r0, #0
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	mov r1, sl
	ands r0, r1
	movs r2, #0xe0
	lsls r2, r2, #8
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5]
	adds r7, #1
	cmp r7, #1
	ble _08026AA6
	mov r1, sb
	cmp r1, #4
	ble _08026A9C
	movs r0, #1
	bl map_setBufferDirty
_08026AE2:
	movs r0, #0
	mov r1, r8
	strb r0, [r1, #1]
_08026AE8:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08026B28
	.align 2, 0
_08026AF0: .4byte 0x0000061C
_08026AF4: .4byte 0x00000FFF
_08026AF8:
	movs r0, #1
	str r0, [r1, #0x10]
	ldr r2, _08026B3C @ =0x0000061C
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _08026B28
	ldr r0, _08026B40 @ =0x03002E20
	ldr r4, [r0, #0x10]
	movs r0, #1
	bl pltt_getBuffer
	adds r2, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r2, r2, r0
	ldr r0, _08026B44 @ =_080AAD9C
	adds r1, r0, #0
	adds r1, #0x40
	movs r3, #0x20
	str r3, [sp]
	adds r3, r4, #0
	bl sub_802650C
_08026B28:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08026B3C: .4byte 0x0000061C
_08026B40: .4byte 0x03002E20
_08026B44: .4byte _080AAD9C

	thumb_func_start sub_08026B48
sub_08026B48: @ 0x08026B48
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08026BEC @ =0x0203EBCC
	ldr r6, [r0]
	movs r5, #0
	movs r4, #0
_08026B58:
	bl save_getSavePointer_805D9B0
	lsls r1, r4, #2
	adds r0, r0, r1
	ldr r1, _08026BF0 @ =0x00000583
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #3
	ble _08026B58
	adds r0, r5, #0
	bl sub_80267C4
	ldr r2, _08026BF4 @ =0x0000061C
	adds r0, r6, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _08026BDE
	ldr r4, _08026BF8 @ =_080C2830
	movs r0, #0
	movs r1, #0
	movs r2, #9
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	movs r4, #0
	ldr r0, _08026BFC @ =0x00000FFF
	mov sb, r0
_08026B98:
	movs r7, #0
	adds r1, r4, #1
	mov r8, r1
	adds r6, r4, #0
	adds r6, #9
_08026BA2:
	adds r4, r7, #0
	adds r4, #0xa
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	adds r5, r0, #0
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	mov r2, sb
	ands r0, r2
	movs r2, #0xe0
	lsls r2, r2, #8
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5]
	adds r7, #1
	cmp r7, #1
	ble _08026BA2
	mov r4, r8
	cmp r4, #4
	ble _08026B98
	movs r0, #1
	bl map_setBufferDirty
_08026BDE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026BEC: .4byte 0x0203EBCC
_08026BF0: .4byte 0x00000583
_08026BF4: .4byte 0x0000061C
_08026BF8: .4byte _080C2830
_08026BFC: .4byte 0x00000FFF

	thumb_func_start sub_08026C00
sub_08026C00: @ 0x08026C00
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r0, _08026C64 @ =0x0203EBCC
	ldr r6, [r0]
	movs r0, #0xca
	lsls r0, r0, #1
	adds r1, r6, r0
	adds r0, #0x18
	adds r5, r6, r0
	ldr r0, _08026C68 @ =_080C9964
	str r0, [r1]
	movs r0, #0
	mov r8, r0
	movs r4, #0
	movs r0, #0x70
	strh r0, [r1, #4]
	movs r0, #0x34
	strh r0, [r1, #6]
	strh r4, [r1, #0xa]
	strh r4, [r1, #8]
	strh r4, [r1, #0xc]
	strh r4, [r1, #0x10]
	ldr r0, _08026C6C @ =0x0203EBBC
	ldr r0, [r0]
	bl sub_800EDB0
	strb r0, [r5]
	mov r1, r8
	strb r1, [r5, #1]
	strh r4, [r5, #2]
	strh r4, [r5, #6]
	movs r0, #1
	bl pltt_getBuffer
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r5, #0xc]
	movs r0, #0xba
	lsls r0, r0, #3
	adds r6, r6, r0
	ldr r0, [r6]
	str r0, [r5, #0x10]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026C64: .4byte 0x0203EBCC
_08026C68: .4byte _080C9964
_08026C6C: .4byte 0x0203EBBC

	thumb_func_start sub_08026C70
sub_08026C70: @ 0x08026C70
	ldr r0, _08026CD0 @ =0x0203EBCC
	ldr r0, [r0]
	movs r1, #0xca
	lsls r1, r1, #1
	adds r2, r0, r1
	ldrh r0, [r2, #0x10]
	adds r0, #1
	strh r0, [r2, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x40
	bgt _08026CD8
	movs r0, #0x10
	ldrsh r1, [r2, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #8
	rsbs r0, r0, #0
	cmp r0, #0
	bge _08026C9A
	adds r0, #0x3f
_08026C9A:
	asrs r0, r0, #6
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r0, r1
	strh r0, [r2, #0xa]
	strh r0, [r2, #8]
	movs r1, #0x10
	ldrsh r0, [r2, r1]
	ldr r1, _08026CD4 @ =gSinTable
	lsls r0, r0, #0x18
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08026CB6
	adds r0, #0x3f
_08026CB6:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0xf
	lsls r0, r0, #8
	strh r0, [r2, #0xc]
	movs r0, #0
	b _08026CDE
	.align 2, 0
_08026CD0: .4byte 0x0203EBCC
_08026CD4: .4byte gSinTable
_08026CD8:
	movs r0, #0
	strh r0, [r2, #0x10]
	movs r0, #1
_08026CDE:
	bx lr

	thumb_func_start sub_08026CE0
sub_08026CE0: @ 0x08026CE0
	push {r4, r5, r6, lr}
	ldr r0, _08026D44 @ =0x0203EBCC
	ldr r0, [r0]
	adds r5, r0, #0
	movs r0, #0xca
	lsls r0, r0, #1
	adds r1, r5, r0
	adds r0, #0x18
	adds r4, r5, r0
	ldr r0, _08026D48 @ =_080C9964
	str r0, [r1]
	movs r6, #0
	movs r0, #0x70
	strh r0, [r1, #4]
	movs r0, #0x34
	strh r0, [r1, #6]
	adds r0, #0xcc
	strh r0, [r1, #0xa]
	strh r0, [r1, #8]
	strh r6, [r1, #0xc]
	strh r6, [r1, #0x10]
	ldr r0, _08026D4C @ =0x0203EBBC
	ldr r0, [r0]
	bl sub_800EDB0
	strb r0, [r4]
	ldr r0, _08026D50 @ =0x0203EBB8
	ldr r0, [r0]
	movs r1, #2
	cmp r0, #2
	bgt _08026D20
	movs r1, #1
_08026D20:
	strb r1, [r4, #1]
	movs r0, #1
	strh r0, [r4, #2]
	strh r6, [r4, #6]
	bl pltt_getBuffer
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0xc]
	movs r1, #0xba
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	str r0, [r4, #0x10]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026D44: .4byte 0x0203EBCC
_08026D48: .4byte _080C9964
_08026D4C: .4byte 0x0203EBBC
_08026D50: .4byte 0x0203EBB8

	thumb_func_start sub_08026D54
sub_08026D54: @ 0x08026D54
	push {r4, r5, r6, lr}
	sub sp, #0xc
	ldr r0, _08026E04 @ =0x0203EBCC
	ldr r0, [r0]
	adds r6, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r4, r6, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08026D9C
	ldrh r2, [r4, #4]
	ldr r1, _08026E08 @ =0xFFFF0000
	ldr r0, [sp, #8]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #8]
	ldrh r1, [r4, #6]
	lsls r1, r1, #0x10
	ldr r2, _08026E0C @ =0x0000FFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	ldr r0, [r4]
	movs r1, #8
	ldrsh r2, [r4, r1]
	movs r5, #0xa
	ldrsh r3, [r4, r5]
	movs r5, #0xc
	ldrsh r1, [r4, r5]
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	add r1, sp, #8
	bl oam_renderCellData
_08026D9C:
	movs r0, #0xec
	lsls r0, r0, #1
	adds r1, r6, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #6
	ble _08026DFA
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08026E10 @ =0x000001D9
	adds r5, r6, r1
	ldrb r0, [r5]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r5]
	ldr r1, _08026E14 @ =_080DBCE0
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xb9
	lsls r1, r1, #3
	adds r4, r6, r1
	ldr r1, [r4]
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r1, [r4]
	ldr r2, _08026E18 @ =0x06015800
	ldr r3, _08026E1C @ =0x80000400
	bl dmaq_enqueue
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #3
	beq _08026DF4
	cmp r0, #7
	bne _08026DFA
_08026DF4:
	movs r0, #0x78
	bl m4aSongNumStart
_08026DFA:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026E04: .4byte 0x0203EBCC
_08026E08: .4byte 0xFFFF0000
_08026E0C: .4byte 0x0000FFFF
_08026E10: .4byte 0x000001D9
_08026E14: .4byte _080DBCE0
_08026E18: .4byte 0x06015800
_08026E1C: .4byte 0x80000400

	thumb_func_start sub_08026E20
sub_08026E20: @ 0x08026E20
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08026F34 @ =0x0203EBCC
	ldr r0, [r0]
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r4, r0, r1
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc8
	ble _08026E40
	b _08026F40
_08026E40:
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	lsls r0, r0, #0xf
	movs r1, #0xc8
	bl __divsi3
	ldr r1, _08026F38 @ =gSinTable
	mov r8, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08026E5A
	adds r0, #0x3f
_08026E5A:
	asrs r0, r0, #6
	movs r7, #0x80
	lsls r7, r7, #1
	subs r0, r7, r0
	ldr r6, _08026F3C @ =0x000003FF
	ands r0, r6
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0]
	movs r5, #0x80
	lsls r5, r5, #8
	subs r1, r5, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #5
	adds r0, r0, r1
	lsls r0, r0, #1
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r0, [r4, #4]
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	lsls r0, r0, #0xf
	movs r1, #0x64
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08026EA2
	adds r0, #0x3f
_08026EA2:
	asrs r0, r0, #6
	subs r0, r7, r0
	ands r0, r6
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0]
	subs r1, r5, r1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #0x10
	adds r0, #0x46
	strh r0, [r4, #6]
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	lsls r0, r0, #0xf
	movs r1, #0x64
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08026EDC
	adds r0, #0x3f
_08026EDC:
	asrs r0, r0, #6
	subs r0, r7, r0
	ands r0, r6
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	subs r0, r5, r0
	lsls r0, r0, #4
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #0x10
	adds r0, #0xb0
	strh r0, [r4, #0xa]
	strh r0, [r4, #8]
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	lsls r0, r0, #0xf
	movs r1, #0xc8
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08026F10
	adds r0, #0x3f
_08026F10:
	asrs r0, r0, #6
	subs r0, r7, r0
	ands r0, r6
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	subs r0, r5, r0
	lsls r0, r0, #0xd
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	strh r0, [r4, #0xc]
	movs r0, #0
	b _08026F46
	.align 2, 0
_08026F34: .4byte 0x0203EBCC
_08026F38: .4byte gSinTable
_08026F3C: .4byte 0x000003FF
_08026F40:
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #1
_08026F46:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8026F50
sub_8026F50: @ 0x08026F50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08027100 @ =0x0203EBCC
	ldr r0, [r0]
	mov sl, r0
	movs r6, #0xee
	lsls r6, r6, #1
	add r6, sl
	ldr r7, _08027104 @ =0x0203EBD4
	ldr r0, _08027108 @ =0x41C64E6D
	mov sb, r0
	ldr r1, _0802710C @ =0x00007FFF
	mov r8, r1
	movs r4, #0x92
	lsls r4, r4, #2
	add r4, sl
	movs r5, #0x1f
_08026F7A:
	movs r0, #0x19
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _08027042
	movs r2, #4
	ldrsh r0, [r6, r2]
	str r0, [r4]
	movs r3, #6
	ldrsh r0, [r6, r3]
	str r0, [r4, #4]
	ldr r0, [r7]
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r2, _08027110 @ =0x00003039
	adds r0, r0, r2
	str r0, [r7]
	lsrs r0, r0, #0x10
	mov r3, r8
	ands r0, r3
	ldr r1, _08027114 @ =0x0000012D
	bl __modsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #4
	ldrsh r1, [r6, r2]
	adds r1, #0x96
	subs r1, r1, r0
	str r1, [r4, #0xc]
	ldr r0, [r7]
	mov r3, sb
	muls r3, r0, r3
	adds r0, r3, #0
	ldr r1, _08027110 @ =0x00003039
	adds r0, r0, r1
	str r0, [r7]
	lsrs r0, r0, #0x10
	mov r2, r8
	ands r0, r2
	movs r1, #0x65
	bl __modsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r3, #6
	ldrsh r1, [r6, r3]
	adds r1, #0x64
	adds r1, r1, r0
	ldr r0, [r4]
	lsls r0, r0, #0x10
	str r0, [r4]
	ldr r0, [r4, #4]
	lsls r0, r0, #0x10
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	lsls r0, r0, #0x10
	str r0, [r4, #0xc]
	lsls r1, r1, #0x10
	str r1, [r4, #0x10]
	ldr r0, [r7]
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r2, _08027110 @ =0x00003039
	adds r0, r0, r2
	str r0, [r7]
	lsrs r0, r0, #0x10
	mov r3, r8
	ands r0, r3
	movs r1, #0x21
	bl __modsi3
	adds r0, #0x40
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0xc]
	ldr r1, [r4]
	subs r0, r0, r1
	movs r1, #0x18
	ldrsb r1, [r4, r1]
	bl __divsi3
	str r0, [r4, #8]
	ldr r2, [r4, #0x10]
	ldr r0, [r4, #4]
	subs r2, r2, r0
	movs r1, #0x18
	ldrsb r1, [r4, r1]
	ldr r3, _08027118 @ =0xFFFFE000
	adds r0, r3, #0
	muls r0, r1, r0
	muls r0, r1, r0
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r1, r1, #1
	bl __divsi3
	str r0, [r4, #0x14]
	movs r0, #1
	strb r0, [r4, #0x19]
_08027042:
	ldr r0, [r4]
	ldr r1, [r4, #8]
	adds r0, r0, r1
	str r0, [r4]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r0, _08027118 @ =0xFFFFE000
	subs r1, r1, r0
	str r1, [r4, #0x14]
	ldrb r0, [r4, #0x18]
	subs r0, #1
	movs r1, #0
	strb r0, [r4, #0x18]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge _08027070
	ldr r0, [r4, #0xc]
	str r0, [r4]
	ldr r0, [r4, #0x10]
	str r0, [r4, #4]
	strb r1, [r4, #0x19]
_08027070:
	adds r4, #0x1c
	subs r5, #1
	cmp r5, #0
	blt _0802707A
	b _08026F7A
_0802707A:
	ldr r2, _0802711C @ =_080C9934
	ldr r1, _08027120 @ =0x0203EBB0
	movs r5, #3
_08027080:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	subs r5, #1
	cmp r5, #0
	bge _08027080
	ldr r2, _08027120 @ =0x0203EBB0
	ldrh r1, [r2, #6]
	ldr r0, _08027124 @ =0x0000F3FF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
	movs r4, #0x92
	lsls r4, r4, #2
	add r4, sl
	movs r5, #0x1f
_080270A8:
	ldr r1, [r4]
	cmp r1, #0
	bge _080270B2
	ldr r0, _08027128 @ =0x0000FFFF
	adds r1, r1, r0
_080270B2:
	lsrs r1, r1, #0x10
	ldr r0, _0802712C @ =0xFFFF0000
	ldr r2, [sp, #8]
	ands r2, r0
	orrs r2, r1
	str r2, [sp, #8]
	ldr r0, [r4, #4]
	cmp r0, #0
	bge _080270C8
	ldr r1, _08027128 @ =0x0000FFFF
	adds r0, r0, r1
_080270C8:
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	ldr r1, _08027128 @ =0x0000FFFF
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #8]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _08027120 @ =0x0203EBB0
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	adds r4, #0x1c
	subs r5, #1
	cmp r5, #0
	bge _080270A8
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027100: .4byte 0x0203EBCC
_08027104: .4byte 0x0203EBD4
_08027108: .4byte 0x41C64E6D
_0802710C: .4byte 0x00007FFF
_08027110: .4byte 0x00003039
_08027114: .4byte 0x0000012D
_08027118: .4byte 0xFFFFE000
_0802711C: .4byte _080C9934
_08027120: .4byte 0x0203EBB0
_08027124: .4byte 0x0000F3FF
_08027128: .4byte 0x0000FFFF
_0802712C: .4byte 0xFFFF0000

	thumb_func_start sub_08027130
sub_08027130: @ 0x08027130
	push {r4, r5, lr}
	ldr r0, _0802715C @ =0x0203EBCC
	ldr r2, [r0]
	movs r0, #0xee
	lsls r0, r0, #1
	adds r1, r2, r0
	ldr r0, _08027160 @ =_080C996C
	str r0, [r1]
	movs r0, #0
	strh r0, [r1, #0xa]
	strh r0, [r1, #8]
	strh r0, [r1, #0x10]
	ldr r0, _08027164 @ =0x0203EBB8
	ldr r0, [r0]
	cmp r0, #1
	beq _08027178
	cmp r0, #1
	bgt _08027168
	cmp r0, #0
	beq _0802716E
	b _0802718E
	.align 2, 0
_0802715C: .4byte 0x0203EBCC
_08027160: .4byte _080C996C
_08027164: .4byte 0x0203EBB8
_08027168:
	cmp r0, #2
	beq _08027182
	b _0802718E
_0802716E:
	movs r0, #0x78
	strh r0, [r1, #0x12]
	strh r0, [r1, #4]
	movs r0, #0x20
	b _0802718A
_08027178:
	movs r0, #0x58
	strh r0, [r1, #0x12]
	strh r0, [r1, #4]
	movs r0, #0x28
	b _0802718A
_08027182:
	movs r0, #0x98
	strh r0, [r1, #0x12]
	strh r0, [r1, #4]
	movs r0, #0x30
_0802718A:
	strh r0, [r1, #0x14]
	strh r0, [r1, #6]
_0802718E:
	movs r3, #0xfa
	lsls r3, r3, #1
	adds r1, r2, r3
	movs r0, #0
	strb r0, [r1]
	adds r3, #1
	adds r1, r2, r3
	strb r0, [r1]
	adds r3, #1
	adds r1, r2, r3
	strb r0, [r1]
	ldr r5, _080271E4 @ =0x0203EBCC
	ldr r4, [r5]
	ldr r0, _080271E8 @ =_080C17B8
	ldr r1, _080271EC @ =0x000005D4
	adds r4, r4, r1
	ldr r1, [r4]
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r1, [r4]
	ldr r2, _080271F0 @ =0x06012000
	ldr r3, _080271F4 @ =0x80000010
	bl dmaq_enqueue
	movs r3, #0
	movs r2, #0x92
	lsls r2, r2, #2
	movs r1, #0x1f
_080271CA:
	ldr r0, [r5]
	adds r0, r0, r2
	strb r3, [r0, #0x19]
	adds r2, #0x1c
	subs r1, #1
	cmp r1, #0
	bge _080271CA
	movs r1, #0
	ldr r0, _080271F8 @ =0x0203EBD4
	str r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080271E4: .4byte 0x0203EBCC
_080271E8: .4byte _080C17B8
_080271EC: .4byte 0x000005D4
_080271F0: .4byte 0x06012000
_080271F4: .4byte 0x80000010
_080271F8: .4byte 0x0203EBD4

	thumb_func_start sub_080271FC
sub_080271FC: @ 0x080271FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r0, _0802731C @ =0x0203EBCC
	ldr r6, [r0]
	movs r0, #0xee
	lsls r0, r0, #1
	adds r5, r6, r0
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _08027266
	ldrh r2, [r5, #4]
	ldr r1, _08027320 @ =0xFFFF0000
	ldr r0, [sp, #8]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #8]
	ldrh r1, [r5, #6]
	lsls r1, r1, #0x10
	ldr r2, _08027324 @ =0x0000FFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	ldr r0, [r5]
	movs r1, #8
	ldrsh r2, [r5, r1]
	movs r7, #0xa
	ldrsh r3, [r5, r7]
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	add r1, sp, #8
	bl oam_renderCellData
	bl sub_8026F50
	ldr r0, _08027328 @ =_080C993C
	movs r1, #8
	ldrsh r2, [r5, r1]
	movs r7, #0xa
	ldrsh r3, [r5, r7]
	movs r7, #0xc
	ldrsh r1, [r5, r7]
	str r1, [sp]
	str r4, [sp, #4]
	add r1, sp, #8
	bl oam_renderCellData
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	ldrh r7, [r5, #0xc]
	adds r0, r0, r7
	strh r0, [r5, #0xc]
_08027266:
	movs r0, #0xfa
	lsls r0, r0, #1
	adds r3, r6, r0
	ldrb r0, [r3]
	adds r0, #1
	movs r7, #0
	strb r0, [r3]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #8
	ble _080272DA
	ldr r1, _0802732C @ =_080DBE28
	ldr r5, _08027330 @ =0x0203EBB8
	ldr r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	strb r7, [r3]
	ldr r1, _08027334 @ =0x000001F5
	adds r3, r6, r1
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r3]
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, _08027338 @ =0x000005CC
	adds r4, r6, r1
	ldr r1, [r4]
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r1, [r4]
	ldr r2, _0802733C @ =0x06012200
	ldr r3, _08027340 @ =0x80000100
	bl dmaq_enqueue
	ldr r1, _08027344 @ =_080DBE38
	ldr r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
_080272DA:
	movs r1, #0xfb
	lsls r1, r1, #1
	adds r2, r6, r1
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bls _080272F0
	strb r7, [r2]
_080272F0:
	ldr r1, _08027348 @ =_080DBD38
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xe0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802731C: .4byte 0x0203EBCC
_08027320: .4byte 0xFFFF0000
_08027324: .4byte 0x0000FFFF
_08027328: .4byte _080C993C
_0802732C: .4byte _080DBE28
_08027330: .4byte 0x0203EBB8
_08027334: .4byte 0x000001F5
_08027338: .4byte 0x000005CC
_0802733C: .4byte 0x06012200
_08027340: .4byte 0x80000100
_08027344: .4byte _080DBE38
_08027348: .4byte _080DBD38

	thumb_func_start sub_0802734C
sub_0802734C: @ 0x0802734C
	push {r4, r5, r6, r7, lr}
	ldr r0, _08027410 @ =0x0203EBCC
	ldr r1, [r0]
	movs r0, #0xee
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2, #0x10]
	adds r0, #1
	strh r0, [r2, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x80
	bgt _0802741C
	movs r1, #0x10
	ldrsh r0, [r2, r1]
	ldr r6, _08027414 @ =gSinTable
	lsls r0, r0, #0x18
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08027376
	adds r0, #0x3f
_08027376:
	asrs r0, r0, #6
	movs r5, #0x80
	lsls r5, r5, #1
	subs r0, r5, r0
	ldr r4, _08027418 @ =0x000003FF
	ands r0, r4
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	movs r3, #0x12
	ldrsh r0, [r2, r3]
	movs r7, #0x18
	mov ip, r7
	mov r3, ip
	subs r0, r3, r0
	movs r3, #0x80
	lsls r3, r3, #8
	subs r1, r3, r1
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #0x10
	ldrh r7, [r2, #0x12]
	adds r0, r0, r7
	strh r0, [r2, #4]
	movs r1, #0x10
	ldrsh r0, [r2, r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080273B6
	adds r0, #0x3f
_080273B6:
	asrs r0, r0, #6
	subs r0, r5, r0
	ands r0, r4
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	movs r7, #0x14
	ldrsh r0, [r2, r7]
	mov r7, ip
	subs r0, r7, r0
	subs r1, r3, r1
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #0x10
	ldrh r1, [r2, #0x14]
	adds r0, r0, r1
	strh r0, [r2, #6]
	movs r7, #0x10
	ldrsh r0, [r2, r7]
	lsls r0, r0, #0x19
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080273E8
	adds r0, #0x3f
_080273E8:
	asrs r0, r0, #6
	subs r0, r5, r0
	ands r0, r4
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0]
	subs r1, r3, r1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #0x10
	adds r0, r0, r5
	strh r0, [r2, #0xa]
	strh r0, [r2, #8]
	movs r0, #0
	b _08027426
	.align 2, 0
_08027410: .4byte 0x0203EBCC
_08027414: .4byte gSinTable
_08027418: .4byte 0x000003FF
_0802741C:
	movs r0, #1
	str r0, [r1, #4]
	movs r0, #0
	strh r0, [r2, #0x10]
	movs r0, #1
_08027426:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0802742C
sub_0802742C: @ 0x0802742C
	push {r4, r5, lr}
	ldr r5, _080274A4 @ =0x0203EBCC
	ldr r4, [r5]
	movs r0, #0xee
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, _080274A8 @ =_080C996C
	str r0, [r1]
	movs r2, #0
	movs r3, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #0xa]
	strh r0, [r1, #8]
	strh r3, [r1, #0x10]
	movs r0, #0x18
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r4, r1
	strb r2, [r0]
	adds r1, #1
	adds r0, r4, r1
	strb r2, [r0]
	adds r1, #1
	adds r0, r4, r1
	strb r2, [r0]
	ldr r4, [r5]
	ldr r0, _080274AC @ =_080C17B8
	ldr r1, _080274B0 @ =0x000005D4
	adds r4, r4, r1
	ldr r1, [r4]
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r1, [r4]
	ldr r2, _080274B4 @ =0x06012000
	ldr r3, _080274B8 @ =0x80000010
	bl dmaq_enqueue
	movs r3, #0
	movs r2, #0x92
	lsls r2, r2, #2
	movs r1, #0x1f
_08027488:
	ldr r0, [r5]
	adds r0, r0, r2
	strb r3, [r0, #0x19]
	adds r2, #0x1c
	subs r1, #1
	cmp r1, #0
	bge _08027488
	movs r1, #0
	ldr r0, _080274BC @ =0x0203EBD4
	str r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080274A4: .4byte 0x0203EBCC
_080274A8: .4byte _080C996C
_080274AC: .4byte _080C17B8
_080274B0: .4byte 0x000005D4
_080274B4: .4byte 0x06012000
_080274B8: .4byte 0x80000010
_080274BC: .4byte 0x0203EBD4

	thumb_func_start sub_080274C0
sub_080274C0: @ 0x080274C0
	ldr r0, _080274F8 @ =0x0203EBCC
	ldr r3, [r0]
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, _080274FC @ =_080C979C
	str r1, [r0]
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0xa]
	strh r1, [r0, #8]
	strh r2, [r0, #0x10]
	movs r1, #0x78
	strh r1, [r0, #0x12]
	strh r1, [r0, #4]
	ldr r1, _08027500 @ =0x0000FFDA
	strh r1, [r0, #0x14]
	strh r1, [r0, #6]
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r3, r1
	str r2, [r0]
	adds r1, #4
	adds r0, r3, r1
	str r2, [r0]
	bx lr
	.align 2, 0
_080274F8: .4byte 0x0203EBCC
_080274FC: .4byte _080C979C
_08027500: .4byte 0x0000FFDA

	thumb_func_start sub_08027504
sub_08027504: @ 0x08027504
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, _08027558 @ =0x0203EBCC
	ldr r6, [r0]
	movs r0, #0xfc
	lsls r0, r0, #1
	adds r4, r6, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08027612
	ldrh r2, [r4, #4]
	ldr r1, _0802755C @ =0xFFFF0000
	ldr r0, [sp, #8]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #8]
	ldrh r1, [r4, #6]
	lsls r1, r1, #0x10
	ldr r2, _08027560 @ =0x0000FFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r5, [r0]
	cmp r5, #0
	bne _08027564
	ldr r0, [r4]
	movs r7, #8
	ldrsh r2, [r4, r7]
	movs r1, #0xa
	ldrsh r3, [r4, r1]
	movs r7, #0xc
	ldrsh r1, [r4, r7]
	str r1, [sp]
	str r5, [sp, #4]
	add r1, sp, #8
	bl oam_renderCellData
	b _0802757E
	.align 2, 0
_08027558: .4byte 0x0203EBCC
_0802755C: .4byte 0xFFFF0000
_08027560: .4byte 0x0000FFFF
_08027564:
	ldr r0, [r4]
	movs r1, #8
	ldrsh r2, [r4, r1]
	movs r5, #0xa
	ldrsh r3, [r4, r5]
	movs r7, #0xc
	ldrsh r1, [r4, r7]
	str r1, [sp]
	ldr r1, _080275CC @ =_080DBD30
	str r1, [sp, #4]
	add r1, sp, #8
	bl oam_renderCellData
_0802757E:
	movs r1, #6
	ldrsh r0, [r4, r1]
	cmp r0, #0x7a
	beq _08027612
	ldrh r0, [r4, #4]
	movs r1, #0x8a
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [sp, #0xc]
	movs r7, #0x10
	ldrsh r5, [r4, r7]
	cmp r5, #0
	bne _080275D4
	movs r0, #0x85
	lsls r0, r0, #2
	adds r1, r6, r0
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	cmp r0, #0xc8
	ble _080275AC
	movs r0, #0xc8
	str r0, [r1]
_080275AC:
	ldr r1, [r1]
	movs r0, #0xc8
	lsls r0, r0, #7
	bl __divsi3
	adds r3, r0, #0
	ldr r0, _080275D0 @ =_080C9954
	add r1, sp, #0xc
	str r5, [sp]
	ldr r2, _080275CC @ =_080DBD30
	str r2, [sp, #4]
	adds r2, r3, #0
	bl oam_renderCellData
	b _08027612
	.align 2, 0
_080275CC: .4byte _080DBD30
_080275D0: .4byte _080C9954
_080275D4:
	movs r5, #6
	ldrsh r1, [r4, r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0x7a
	bl __divsi3
	movs r1, #0xc8
	subs r3, r1, r0
	cmp r3, #0xc8
	ble _080275EE
	movs r3, #0xc8
_080275EE:
	cmp r3, #0x77
	bgt _080275F4
	movs r3, #0x78
_080275F4:
	movs r0, #0xc8
	lsls r0, r0, #7
	adds r1, r3, #0
	bl __divsi3
	adds r3, r0, #0
	ldr r0, _0802761C @ =_080C9954
	add r1, sp, #0xc
	movs r2, #0
	str r2, [sp]
	ldr r2, _08027620 @ =_080DBD30
	str r2, [sp, #4]
	adds r2, r3, #0
	bl oam_renderCellData
_08027612:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802761C: .4byte _080C9954
_08027620: .4byte _080DBD30

	thumb_func_start sub_08027624
sub_08027624: @ 0x08027624
	push {r4, lr}
	sub sp, #4
	ldr r0, _08027670 @ =0x0203EBCC
	ldr r1, [r0]
	movs r0, #0xfc
	lsls r0, r0, #1
	adds r4, r1, r0
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x40
	bgt _08027674
	movs r1, #0x14
	ldrsh r0, [r4, r1]
	movs r1, #0x10
	ldrsh r2, [r4, r1]
	movs r1, #9
	str r1, [sp]
	movs r1, #0x7a
	movs r3, #0x40
	bl sub_800E930
	strh r0, [r4, #6]
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	cmp r0, #0x18
	beq _08027666
	cmp r0, #0x28
	beq _08027666
	cmp r0, #0x30
	bne _0802766C
_08027666:
	movs r0, #0xaf
	bl m4aSongNumStart
_0802766C:
	movs r0, #0
	b _0802767C
	.align 2, 0
_08027670: .4byte 0x0203EBCC
_08027674:
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #1
	str r0, [r1, #8]
_0802767C:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08027684
sub_08027684: @ 0x08027684
	push {r4, r5, r6, lr}
	ldr r0, _080276F0 @ =0x0203EBD0
	ldr r3, [r0]
	movs r5, #0
	ldr r4, _080276F4 @ =_080DC014
_0802768E:
	lsls r2, r5, #2
	adds r1, r3, #0
	adds r1, #0x24
	adds r1, r1, r2
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #0x10
	str r0, [r1]
	adds r1, r3, #0
	adds r1, #0x44
	adds r1, r1, r2
	movs r6, #2
	ldrsh r0, [r4, r6]
	lsls r0, r0, #0x10
	movs r6, #0x80
	lsls r6, r6, #0x10
	adds r0, r0, r6
	str r0, [r1]
	adds r0, r3, #4
	adds r0, r0, r2
	ldr r1, [r4, #4]
	str r1, [r0]
	lsls r2, r5, #1
	adds r0, r3, #0
	adds r0, #0x64
	adds r0, r0, r2
	ldrh r1, [r4, #8]
	strh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x74
	adds r0, r0, r2
	ldrh r1, [r4, #0xa]
	strh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x84
	adds r0, r0, r2
	ldrh r1, [r4, #0xc]
	strh r1, [r0]
	adds r4, #0x10
	adds r5, #1
	cmp r5, #7
	ble _0802768E
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080276F0: .4byte 0x0203EBD0
_080276F4: .4byte _080DC014

	thumb_func_start sub_080276F8
sub_080276F8: @ 0x080276F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r0, _080277A0 @ =0x0203EBD0
	ldr r6, [r0]
	ldrh r1, [r6]
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r0, #0
	ble _0802772A
	subs r0, r1, #1
	strh r0, [r6]
	ldr r3, _080277A4 @ =0xFFFF8000
	adds r1, r6, #0
	adds r1, #0x44
	movs r2, #7
_0802771E:
	ldr r0, [r1]
	adds r0, r0, r3
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bge _0802771E
_0802772A:
	movs r4, #0
	adds r3, r6, #0
	adds r3, #0x44
	str r3, [sp, #0x18]
	adds r7, r6, #4
	str r7, [sp, #0x1c]
	movs r0, #0x64
	adds r0, r0, r6
	mov sl, r0
	movs r1, #0x74
	adds r1, r1, r6
	mov r8, r1
	adds r2, r6, #0
	adds r2, #0x84
	str r2, [sp, #0x24]
	subs r3, #0x20
	str r3, [sp, #0x20]
	mov r7, sl
	str r7, [sp, #0x14]
_08027750:
	lsls r2, r4, #2
	ldr r1, [sp, #0x1c]
	adds r0, r1, r2
	ldr r5, [r0]
	adds r3, r5, #0
	lsls r1, r4, #1
	ldr r7, [sp, #0x14]
	adds r0, r7, r1
	movs r7, #0
	ldrsh r0, [r0, r7]
	adds r7, r2, #0
	adds r2, r1, #0
	adds r4, #1
	mov sb, r4
	cmp r0, #0
	ble _08027778
_08027770:
	adds r3, #8
	subs r0, #1
	cmp r0, #0
	bne _08027770
_08027778:
	mov r0, r8
	adds r1, r0, r2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080277B4
	mov r0, sl
	adds r1, r0, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r3, #8
	ldr r0, [r3]
	cmp r0, #0
	bne _080277A8
	strh r0, [r1]
	b _080277AA
	.align 2, 0
_080277A0: .4byte 0x0203EBD0
_080277A4: .4byte 0xFFFF8000
_080277A8:
	adds r5, r3, #0
_080277AA:
	mov r3, r8
	adds r1, r3, r2
	ldrh r0, [r5, #4]
	strh r0, [r1]
	b _080277B6
_080277B4:
	adds r5, r3, #0
_080277B6:
	ldr r1, _0802785C @ =0x03002E20
	ldr r3, _08027860 @ =0x00000838
	adds r0, r1, r3
	ldr r0, [r0]
	movs r3, #0x24
	ldrsh r1, [r0, r3]
	ldr r3, [sp, #0x24]
	adds r0, r3, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r1, r0
	str r1, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x20]
	adds r0, r3, r7
	ldr r0, [r0]
	cmp r0, #0
	bge _080277E0
	ldr r1, _08027864 @ =0x0000FFFF
	adds r0, r0, r1
_080277E0:
	lsrs r1, r0, #0x10
	ldr r0, _08027868 @ =0xFFFF0000
	ldr r2, [sp, #0x10]
	ands r2, r0
	orrs r2, r1
	str r2, [sp, #0x10]
	ldr r3, [sp, #0x18]
	adds r0, r3, r7
	ldr r0, [r0]
	cmp r0, #0
	bge _080277FA
	ldr r7, _08027864 @ =0x0000FFFF
	adds r0, r0, r7
_080277FA:
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	ldr r4, _08027864 @ =0x0000FFFF
	adds r3, r4, #0
	ands r3, r2
	orrs r3, r0
	str r3, [sp, #0x10]
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _08027828
	ldr r2, _0802785C @ =0x03002E20
	ldr r7, _0802786C @ =0x00000BF4
	adds r0, r2, r7
	asrs r1, r3, #0x10
	ldrb r0, [r0]
	ldr r2, _08027870 @ =0x0000FFB7
	adds r0, r0, r2
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ands r3, r4
	orrs r3, r1
	str r3, [sp, #0x10]
_08027828:
	ldr r0, [sp, #0x10]
	asrs r0, r0, #0x10
	cmp r0, #0xdf
	bgt _08027844
	ldr r0, [r5]
	movs r1, #0
	str r1, [sp]
	add r3, sp, #8
	str r3, [sp, #4]
	add r1, sp, #0x10
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_08027844:
	mov r4, sb
	cmp r4, #7
	ble _08027750
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802785C: .4byte 0x03002E20
_08027860: .4byte 0x00000838
_08027864: .4byte 0x0000FFFF
_08027868: .4byte 0xFFFF0000
_0802786C: .4byte 0x00000BF4
_08027870: .4byte 0x0000FFB7

	thumb_func_start sub_08027874
sub_08027874: @ 0x08027874
	push {r4, r5, r6, lr}
	ldr r0, _080278D8 @ =0x0203EBD0
	ldr r3, [r0]
	movs r5, #0
	ldr r4, _080278DC @ =_080DC014
_0802787E:
	lsls r2, r5, #2
	adds r1, r3, #0
	adds r1, #0x24
	adds r1, r1, r2
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #0x10
	str r0, [r1]
	adds r1, r3, #0
	adds r1, #0x44
	adds r1, r1, r2
	movs r6, #2
	ldrsh r0, [r4, r6]
	lsls r0, r0, #0x10
	str r0, [r1]
	adds r0, r3, #4
	adds r0, r0, r2
	ldr r1, [r4, #4]
	str r1, [r0]
	lsls r2, r5, #1
	adds r0, r3, #0
	adds r0, #0x64
	adds r0, r0, r2
	ldrh r1, [r4, #8]
	strh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x74
	adds r0, r0, r2
	ldrh r1, [r4, #0xa]
	strh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x84
	adds r0, r0, r2
	ldrh r1, [r4, #0xc]
	strh r1, [r0]
	adds r4, #0x10
	adds r5, #1
	cmp r5, #7
	ble _0802787E
	movs r0, #0
	strh r0, [r3]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080278D8: .4byte 0x0203EBD0
_080278DC: .4byte _080DC014

	thumb_func_start sub_80278E0
sub_80278E0: @ 0x080278E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x60
	ldr r1, _080279BC @ =0x03002E20
	ldr r2, _080279C0 @ =0x00000814
	adds r0, r1, r2
	ldrb r0, [r0]
	str r0, [sp, #0x40]
	movs r4, #0
	mov r7, sp
	adds r7, #0x20
	str r7, [sp, #0x58]
	cmp r4, r0
	bge _08027938
	ldr r0, _080279C4 @ =0x0203EB90
	mov r8, r0
	mov r6, sp
	adds r2, #4
	adds r5, r1, r2
	movs r7, #7
	mov sb, r7
_08027910:
	lsls r2, r4, #2
	ldm r5!, {r3}
	adds r0, r3, #0
	adds r0, #0xc4
	ldrb r0, [r0]
	stm r6!, {r0}
	adds r0, r3, #0
	adds r0, #0x4c
	ldrb r1, [r0]
	mov r0, sb
	ands r0, r1
	ldr r7, [sp, #0x58]
	adds r1, r7, r2
	str r0, [r1]
	add r2, r8
	str r3, [r2]
	adds r4, #1
	ldr r0, [sp, #0x40]
	cmp r4, r0
	blt _08027910
_08027938:
	movs r4, #0
	ldr r1, [sp, #0x40]
	subs r1, #1
	str r1, [sp, #0x54]
	cmp r4, r1
	bge _08027A28
	ldr r2, [sp, #0x58]
	str r2, [sp, #0x48]
_08027948:
	adds r7, r4, #1
	mov sl, r7
	ldr r0, [sp, #0x40]
	cmp sl, r0
	bge _08027A20
	lsls r4, r4, #2
	mov sb, r4
	mov r1, sp
	add r1, sb
	mov r8, r1
	ldr r2, [sp, #0x48]
	add r2, sb
	str r2, [sp, #0x4c]
	ldr r7, _080279C4 @ =0x0203EB90
	add r7, sb
	str r7, [sp, #0x50]
	ldr r0, _080279C4 @ =0x0203EB90
	str r0, [sp, #0x5c]
	mov r1, sl
	lsls r0, r1, #2
	ldr r2, _080279C4 @ =0x0203EB90
	adds r7, r0, r2
	ldr r1, [sp, #0x48]
	adds r6, r0, r1
	adds r5, r0, #0
	mov r2, sp
	adds r4, r5, r2
	ldr r0, [sp, #0x40]
	mov r1, sl
	subs r0, r0, r1
	mov ip, r0
_08027986:
	movs r2, #0
	str r2, [sp, #0x44]
	mov r0, r8
	ldr r1, [r0]
	ldr r0, [r4]
	cmp r1, r0
	blt _080279EE
	cmp r1, r0
	bne _080279E8
	ldr r1, [sp, #0x5c]
	mov r2, sb
	adds r0, r2, r1
	ldr r3, [r0]
	ldr r0, [r3, #0x48]
	movs r2, #0x80
	lsls r2, r2, #8
	ands r0, r2
	cmp r0, #0
	bne _080279C8
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x48]
	ands r0, r2
	cmp r0, #0
	beq _080279E8
	b _080279EE
	.align 2, 0
_080279BC: .4byte 0x03002E20
_080279C0: .4byte 0x00000814
_080279C4: .4byte 0x0203EB90
_080279C8:
	ldr r1, [sp, #0x5c]
	adds r0, r5, r1
	ldr r1, [r0]
	ldr r0, [r1, #0x48]
	ands r0, r2
	cmp r0, #0
	beq _080279E8
	adds r0, r3, #0
	adds r0, #0xec
	adds r1, #0xec
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bls _080279E8
	movs r2, #1
	str r2, [sp, #0x44]
_080279E8:
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq _08027A0C
_080279EE:
	ldr r1, [r4]
	mov r2, r8
	ldr r0, [r2]
	str r0, [r4]
	str r1, [r2]
	ldr r1, [r6]
	ldr r2, [sp, #0x4c]
	ldr r0, [r2]
	str r0, [r6]
	str r1, [r2]
	ldr r1, [r7]
	ldr r2, [sp, #0x50]
	ldr r0, [r2]
	str r0, [r7]
	str r1, [r2]
_08027A0C:
	adds r7, #4
	adds r6, #4
	adds r5, #4
	adds r4, #4
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	mov r1, ip
	cmp r1, #0
	bne _08027986
_08027A20:
	mov r4, sl
	ldr r2, [sp, #0x54]
	cmp r4, r2
	blt _08027948
_08027A28:
	movs r4, #0
	ldr r7, _08027A48 @ =0x03002E44
	ldr r1, _08027A4C @ =0x00000814
	adds r0, r7, r1
	ldr r0, [r0]
	adds r0, #0x4c
	ldrb r0, [r0]
	movs r2, #7
	ands r2, r0
	ldr r1, [sp, #0x58]
_08027A3C:
	ldr r0, [r1]
	cmp r0, r2
	bne _08027A50
	adds r0, r4, #0
	b _08027A5A
	.align 2, 0
_08027A48: .4byte 0x03002E44
_08027A4C: .4byte 0x00000814
_08027A50:
	adds r1, #4
	adds r4, #1
	cmp r4, #7
	ble _08027A3C
	movs r0, #0
_08027A5A:
	add sp, #0x60
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8027A6C
sub_8027A6C: @ 0x08027A6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _08027AB4 @ =0x01000200
	mov r0, sp
	bl CpuFastSet
	movs r0, #1
	bl map_setBufferDirty
	ldr r0, _08027AB8 @ =0x0203EBB8
	ldr r0, [r0]
	cmp r0, #2
	bgt _08027AC0
	ldr r4, _08027ABC @ =_080C2420
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	b _08027AD4
	.align 2, 0
_08027AB4: .4byte 0x01000200
_08027AB8: .4byte 0x0203EBB8
_08027ABC: .4byte _080C2420
_08027AC0:
	ldr r4, _08027B44 @ =_080C2654
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
_08027AD4:
	ldr r4, _08027B48 @ =_080C2330
	movs r0, #1
	movs r1, #0
	movs r2, #0x14
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	movs r0, #1
	movs r1, #0
	movs r2, #0x1b
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r0, #1
	movs r1, #0x1a
	movs r2, #6
	bl map_getBufferPtr2d
	adds r3, r0, #0
	movs r0, #0
	mov sl, r0
	mov r1, sp
	adds r1, #4
	str r1, [sp, #0x10]
	mov r2, sp
	adds r2, #8
	str r2, [sp, #0x14]
	mov r0, sp
	adds r0, #0xc
	str r0, [sp, #0x18]
_08027B16:
	mov r1, sl
	lsls r0, r1, #6
	mov r5, sl
	adds r5, #1
	adds r2, r0, r4
	adds r1, r0, r3
	movs r6, #2
_08027B24:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	subs r6, #1
	cmp r6, #0
	bge _08027B24
	mov sl, r5
	cmp r5, #2
	ble _08027B16
	movs r7, #0xe0
	movs r5, #0
_08027B3C:
	movs r4, #0
	adds r6, r5, #1
	b _08027B6C
	.align 2, 0
_08027B44: .4byte _080C2654
_08027B48: .4byte _080C2330
_08027B4C:
	adds r1, r4, #0
	adds r1, #0x11
	adds r2, r5, #5
	movs r0, #1
	bl map_getBufferPtr2d
	adds r2, r7, #0
	adds r1, r2, #1
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r3, #0xc0
	lsls r3, r3, #8
	adds r1, r3, #0
	orrs r2, r1
	strh r2, [r0]
	adds r4, #1
_08027B6C:
	cmp r5, #2
	bne _08027B76
	cmp r4, #4
	ble _08027B4C
	b _08027B7A
_08027B76:
	cmp r4, #2
	ble _08027B4C
_08027B7A:
	adds r5, r6, #0
	cmp r5, #2
	ble _08027B3C
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08027BC8 @ =_080EE704
	ldr r1, _08027BCC @ =0x0203EBB8
	ldr r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r2, _08027BD0 @ =0x06001C00
	ldr r3, _08027BD4 @ =0x800000B0
	bl dmaq_enqueue
	ldr r0, _08027BD8 @ =0x03002E20
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r4, [r0]
	cmp r4, #1
	beq _08027BDC
	cmp r4, #1
	bgt _08027C10
	cmp r4, #0
	bne _08027C10
	movs r0, #1
	movs r1, #9
	movs r2, #0xa
	bl map_getBufferPtr2d
	strh r4, [r0]
	movs r0, #1
	movs r1, #9
	movs r2, #0xb
	bl map_getBufferPtr2d
	strh r4, [r0]
	b _08027C10
	.align 2, 0
_08027BC8: .4byte _080EE704
_08027BCC: .4byte 0x0203EBB8
_08027BD0: .4byte 0x06001C00
_08027BD4: .4byte 0x800000B0
_08027BD8: .4byte 0x03002E20
_08027BDC:
	movs r0, #1
	movs r1, #0xa
	movs r2, #0xa
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r0, #1
	movs r1, #0xb
	movs r2, #0xa
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #1
	movs r1, #0xa
	movs r2, #0xb
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r0, #1
	movs r1, #0xb
	movs r2, #0xb
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
_08027C10:
	movs r2, #0
	str r2, [sp, #0x1c]
	movs r3, #0xd
	str r3, [sp, #0x20]
	movs r0, #0xc
	str r0, [sp, #0x24]
	movs r1, #0
	str r1, [sp, #0x28]
	movs r2, #3
	mov sl, r2
_08027C24:
	bl save_getSavePointer_805D9B0
	ldr r3, [sp, #0x28]
	adds r0, r0, r3
	ldr r1, _08027EF0 @ =0x00000582
	adds r0, r0, r1
	ldrb r5, [r0]
	movs r0, #1
	movs r1, #0xe
	ldr r2, [sp, #0x24]
	bl map_getBufferPtr2d
	adds r4, r0, #0
	lsls r5, r5, #1
	movs r0, #1
	adds r1, r5, #0
	movs r2, #0x17
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #1
	movs r1, #0xf
	ldr r2, [sp, #0x24]
	bl map_getBufferPtr2d
	adds r4, r0, #0
	adds r6, r5, #1
	movs r0, #1
	adds r1, r6, #0
	movs r2, #0x17
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #1
	movs r1, #0xe
	ldr r2, [sp, #0x20]
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r0, #1
	adds r1, r5, #0
	movs r2, #0x18
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #1
	movs r1, #0xf
	ldr r2, [sp, #0x20]
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r0, #1
	adds r1, r6, #0
	movs r2, #0x18
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	bl save_getSavePointer_805D9B0
	ldr r2, [sp, #0x28]
	adds r0, r0, r2
	movs r3, #0xb0
	lsls r3, r3, #3
	adds r0, r0, r3
	ldrh r0, [r0]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	bl sub_804EFBC
	movs r7, #0
	ldr r6, [sp, #0x1c]
	adds r6, #0xc
_08027CBE:
	movs r0, #1
	movs r1, #0x11
	adds r2, r6, #0
	bl map_getBufferPtr2d
	adds r4, r0, #0
	ldr r1, [sp, #4]
	movs r0, #0xf
	ands r1, r0
	adds r5, r7, #0
	adds r5, #0x1e
	movs r0, #1
	adds r2, r5, #0
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #1
	movs r1, #0x12
	adds r2, r6, #0
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r0, #1
	movs r1, #0xa
	adds r2, r5, #0
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #1
	movs r1, #0x13
	adds r2, r6, #0
	bl map_getBufferPtr2d
	adds r4, r0, #0
	ldr r1, [sp, #8]
	lsrs r1, r1, #4
	movs r2, #0xf
	ands r1, r2
	movs r0, #1
	adds r2, r5, #0
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #1
	movs r1, #0x14
	adds r2, r6, #0
	bl map_getBufferPtr2d
	adds r4, r0, #0
	ldr r1, [sp, #8]
	movs r3, #0xf
	ands r1, r3
	movs r0, #1
	adds r2, r5, #0
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #1
	movs r1, #0x15
	adds r2, r6, #0
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r0, #1
	movs r1, #0xb
	adds r2, r5, #0
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #1
	movs r1, #0x16
	adds r2, r6, #0
	bl map_getBufferPtr2d
	adds r4, r0, #0
	ldr r1, [sp, #0xc]
	lsrs r1, r1, #4
	movs r0, #0xf
	ands r1, r0
	movs r0, #1
	adds r2, r5, #0
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #1
	movs r1, #0x17
	adds r2, r6, #0
	bl map_getBufferPtr2d
	adds r4, r0, #0
	ldr r1, [sp, #0xc]
	movs r2, #0xf
	ands r1, r2
	movs r0, #1
	adds r2, r5, #0
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	adds r6, #1
	adds r7, #1
	cmp r7, #1
	ble _08027CBE
	bl save_getSavePointer_805D9B0
	ldr r3, [sp, #0x28]
	adds r0, r0, r3
	ldr r1, _08027EF0 @ =0x00000582
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r1, _08027EF4 @ =_080DB0A8
	adds r0, #1
	adds r0, r0, r1
	ldrb r7, [r0]
	movs r6, #0
	ldr r5, [sp, #0x1c]
	adds r5, #0xc
_08027DB4:
	movs r0, #1
	movs r1, #0x19
	adds r2, r5, #0
	bl map_getBufferPtr2d
	adds r4, r0, #0
	adds r2, r6, #0
	adds r2, #0x1e
	movs r0, #1
	adds r1, r7, #0
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	adds r5, #1
	adds r6, #1
	cmp r6, #1
	ble _08027DB4
	bl save_getSavePointer_805D9B0
	ldr r2, [sp, #0x28]
	adds r0, r0, r2
	ldr r3, _08027EF8 @ =0x00000583
	adds r0, r0, r3
	ldrb r1, [r0]
	ldr r0, _08027EFC @ =0x0000CCCD
	muls r0, r1, r0
	asrs r0, r0, #0x13
	mov r8, r0
	mov r3, r8
	movs r0, #0xf
	ands r3, r0
	mov r8, r3
	lsls r0, r3, #2
	add r0, r8
	lsls r0, r0, #1
	subs r1, r1, r0
	mov sb, r1
	movs r2, #0xf
	ands r1, r2
	mov sb, r1
	movs r6, #0
	ldr r7, [sp, #0x1c]
	adds r7, #0xc
_08027E0C:
	movs r0, #1
	movs r1, #0x1c
	adds r2, r7, #0
	bl map_getBufferPtr2d
	adds r5, r0, #0
	adds r4, r6, #0
	adds r4, #0x1e
	movs r0, #1
	mov r1, r8
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r5]
	movs r0, #1
	movs r1, #0x1d
	adds r2, r7, #0
	bl map_getBufferPtr2d
	adds r5, r0, #0
	movs r0, #1
	mov r1, sb
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r5]
	adds r7, #1
	adds r6, #1
	cmp r6, #1
	ble _08027E0C
	ldr r3, [sp, #0x1c]
	adds r3, #2
	str r3, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	adds r0, #2
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	adds r1, #2
	str r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	adds r2, #4
	str r2, [sp, #0x28]
	movs r3, #1
	rsbs r3, r3, #0
	add sl, r3
	mov r0, sl
	cmp r0, #0
	blt _08027E72
	b _08027C24
_08027E72:
	movs r1, #0
	mov sb, r1
	mov r8, r1
	movs r7, #0
	movs r2, #0
	mov sl, r2
_08027E7E:
	mov r6, sl
	adds r6, #9
	movs r0, #1
	movs r1, #0x1b
	adds r2, r6, #0
	bl map_getBufferPtr2d
	adds r4, r0, #0
	mov r5, sl
	adds r5, #0x1e
	movs r0, #1
	mov r1, sb
	adds r2, r5, #0
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #1
	movs r1, #0x1c
	adds r2, r6, #0
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r0, #1
	mov r1, r8
	adds r2, r5, #0
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #1
	movs r1, #0x1d
	adds r2, r6, #0
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r0, #1
	adds r1, r7, #0
	adds r2, r5, #0
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	movs r3, #1
	add sl, r3
	mov r0, sl
	cmp r0, #1
	ble _08027E7E
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027EF0: .4byte 0x00000582
_08027EF4: .4byte _080DB0A8
_08027EF8: .4byte 0x00000583
_08027EFC: .4byte 0x0000CCCD

	thumb_func_start sub_8027F00
sub_8027F00: @ 0x08027F00
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0802803C @ =0x0203EBCC
	ldr r4, [r0]
	movs r0, #0
	bl pltt_getBuffer
	mov sb, r0
	ldr r0, _08028040 @ =0x00000624
	adds r4, r4, r0
	ldr r0, [r4]
	cmp r0, #0xf
	ble _08027F20
	b _08028030
_08027F20:
	adds r0, #1
	str r0, [r4]
	movs r4, #0
_08027F26:
	cmp r4, #9
	bgt _08027F92
	movs r6, #0
	lsls r1, r4, #4
	mov ip, r1
	movs r2, #0x1f
	mov r8, r2
	movs r7, #0x1f
_08027F36:
	mov r1, ip
	adds r0, r1, r6
	lsls r0, r0, #1
	mov r2, sb
	adds r5, r0, r2
	ldrh r0, [r5]
	adds r1, r0, #0
	ands r1, r7
	lsrs r3, r0, #5
	mov r2, r8
	ands r3, r2
	lsrs r2, r0, #0xa
	mov r0, r8
	ands r2, r0
	lsls r0, r1, #8
	subs r0, r0, r1
	cmp r0, #0
	bge _08027F5C
	adds r0, #0xff
_08027F5C:
	lsls r0, r0, #8
	lsrs r1, r0, #0x10
	lsls r0, r3, #8
	subs r0, r0, r3
	cmp r0, #0
	bge _08027F6A
	adds r0, #0xff
_08027F6A:
	lsls r0, r0, #8
	lsrs r3, r0, #0x10
	lsls r0, r2, #8
	subs r0, r0, r2
	cmp r0, #0
	bge _08027F78
	adds r0, #0xff
_08027F78:
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	ands r1, r7
	ands r3, r7
	lsls r0, r3, #5
	orrs r1, r0
	ands r2, r7
	lsls r0, r2, #0xa
	orrs r1, r0
	strh r1, [r5]
	adds r6, #1
	cmp r6, #0xf
	ble _08027F36
_08027F92:
	adds r4, #1
	cmp r4, #0xf
	ble _08027F26
	movs r0, #1
	bl pltt_getBuffer
	mov sb, r0
	movs r4, #0
_08027FA2:
	adds r1, r4, #1
	mov r8, r1
	cmp r4, #5
	beq _08028024
	cmp r4, #6
	beq _08028024
	cmp r4, #7
	beq _08028024
	cmp r4, #0xc
	beq _08028024
	cmp r4, #0xd
	beq _08028024
	cmp r4, #0xe
	beq _08028024
	cmp r4, #0xf
	beq _08028024
	movs r6, #0
	lsls r4, r4, #4
	mov ip, r4
	movs r7, #0x1f
	movs r5, #0x1f
_08027FCC:
	mov r2, ip
	adds r0, r2, r6
	lsls r0, r0, #1
	mov r1, sb
	adds r4, r0, r1
	ldrh r0, [r4]
	adds r1, r0, #0
	ands r1, r5
	lsrs r3, r0, #5
	ands r3, r7
	lsrs r2, r0, #0xa
	ands r2, r7
	lsls r0, r1, #8
	subs r0, r0, r1
	cmp r0, #0
	bge _08027FEE
	adds r0, #0xff
_08027FEE:
	lsls r0, r0, #8
	lsrs r1, r0, #0x10
	lsls r0, r3, #8
	subs r0, r0, r3
	cmp r0, #0
	bge _08027FFC
	adds r0, #0xff
_08027FFC:
	lsls r0, r0, #8
	lsrs r3, r0, #0x10
	lsls r0, r2, #8
	subs r0, r0, r2
	cmp r0, #0
	bge _0802800A
	adds r0, #0xff
_0802800A:
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	ands r1, r5
	ands r3, r5
	lsls r0, r3, #5
	orrs r1, r0
	ands r2, r5
	lsls r0, r2, #0xa
	orrs r1, r0
	strh r1, [r4]
	adds r6, #1
	cmp r6, #0xf
	ble _08027FCC
_08028024:
	mov r4, r8
	cmp r4, #0xf
	ble _08027FA2
	movs r0, #1
	bl pltt_setDirtyFlag
_08028030:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802803C: .4byte 0x0203EBCC
_08028040: .4byte 0x00000624

	thumb_func_start sub_8028044
sub_8028044: @ 0x08028044
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r4, _08028080 @ =0x03002E20
	adds r4, #0x24
	add r3, sp, #8
	add r0, sp, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #5
	add r2, sp, #4
	bl sub_8032AA0
	add r2, sp, #0x10
	add r3, sp, #0x14
	add r0, sp, #0x18
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #6
	bl sub_8032AA0
	cmp r5, #1
	beq _080280AA
	cmp r5, #1
	bgt _08028084
	cmp r5, #0
	beq _0802808E
	b _080280E6
	.align 2, 0
_08028080: .4byte 0x03002E20
_08028084:
	cmp r5, #2
	beq _080280BC
	cmp r5, #3
	beq _080280CE
	b _080280E6
_0802808E:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r6]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	b _080280E4
_080280AA:
	ldr r0, [sp, #0x10]
	str r0, [r6]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	b _080280E4
_080280BC:
	ldr r0, [sp, #4]
	str r0, [r6]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	b _080280E4
_080280CE:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r6]
	ldr r0, [sp, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	adds r0, r0, r1
_080280E4:
	str r0, [r7]
_080280E6:
	ldr r0, [r6]
	ldr r1, _080280F8 @ =0xFFF78000
	adds r0, r0, r1
	str r0, [r6]
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080280F8: .4byte 0xFFF78000

	thumb_func_start sub_80280FC
sub_80280FC: @ 0x080280FC
	push {r4, r5, lr}
	sub sp, #8
	ldr r5, [r0, #0x68]
	ldr r0, _08028128 @ =0x03002E20
	adds r0, #0x24
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	bl sub_804AED4
	adds r4, r0, #0
	add r2, sp, #4
	adds r0, r5, #0
	mov r1, sp
	bl sub_8028044
	cmp r5, #0
	blt _08028160
	cmp r5, #2
	ble _0802812C
	cmp r5, #3
	beq _08028148
	b _08028160
	.align 2, 0
_08028128: .4byte 0x03002E20
_0802812C:
	ldr r0, [sp]
	str r0, [r4]
	lsls r1, r5, #0x13
	movs r0, #0xff
	lsls r0, r0, #0x10
	adds r1, r1, r0
	ldr r0, [sp, #4]
	subs r0, r0, r1
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #0x80
	lsls r0, r0, #8
	b _0802815E
_08028148:
	ldr r0, [sp]
	movs r1, #0xf0
	lsls r1, r1, #0xd
	adds r0, r0, r1
	str r0, [r4]
	ldr r0, [sp, #4]
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #0xc0
	lsls r0, r0, #8
_0802815E:
	strh r0, [r1]
_08028160:
	ldrh r1, [r4, #0x34]
	movs r0, #1
	orrs r0, r1
	strh r0, [r4, #0x34]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8028170
sub_8028170: @ 0x08028170
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r4, [r0, #0x68]
	ldr r0, _080281D4 @ =0x03002E20
	adds r0, #0x24
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	bl sub_804AED4
	adds r5, r0, #0
	movs r7, #1
	movs r6, #0x80
	lsls r6, r6, #7
	cmp r4, #2
	bgt _08028192
	movs r6, #0x80
	lsls r6, r6, #8
_08028192:
	add r2, sp, #4
	adds r0, r4, #0
	mov r1, sp
	bl sub_8028044
	ldr r1, [r5]
	ldr r0, [sp]
	cmp r0, r1
	beq _080281B2
	subs r0, r0, r1
	subs r2, r1, r6
	cmp r0, #0
	ble _080281AE
	adds r2, r1, r6
_080281AE:
	str r2, [r5]
	movs r7, #0
_080281B2:
	ldr r1, [r5, #4]
	ldr r0, [sp, #4]
	cmp r0, r1
	beq _080281C8
	subs r0, r0, r1
	subs r2, r1, r6
	cmp r0, #0
	ble _080281C4
	adds r2, r1, r6
_080281C4:
	str r2, [r5, #4]
	movs r7, #0
_080281C8:
	adds r0, r7, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080281D4: .4byte 0x03002E20

	thumb_func_start sub_80281D8
sub_80281D8: @ 0x080281D8
	push {r4, r5, r6, r7, lr}
	movs r0, #1
	bl pltt_getBuffer
	movs r1, #0x1f
	mov ip, r1
	movs r5, #0x1f
	movs r7, #0xbe
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r4, r0, r2
	movs r6, #0xf
_080281F0:
	ldrh r0, [r4]
	adds r1, r0, #0
	ands r1, r5
	lsrs r3, r0, #5
	mov r2, ip
	ands r3, r2
	lsrs r2, r0, #0xa
	mov r0, ip
	ands r2, r0
	adds r0, r1, #0
	muls r0, r7, r0
	lsrs r1, r0, #8
	adds r0, r3, #0
	muls r0, r7, r0
	lsls r0, r0, #8
	lsrs r3, r0, #0x10
	adds r0, r2, #0
	muls r0, r7, r0
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	ands r1, r5
	ands r3, r5
	lsls r0, r3, #5
	orrs r1, r0
	ands r2, r5
	lsls r0, r2, #0xa
	orrs r1, r0
	strh r1, [r4]
	adds r4, #2
	subs r6, #1
	cmp r6, #0
	bge _080281F0
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_802823C
sub_802823C: @ 0x0802823C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r4, [r7, #0x68]
	ldr r0, _08028274 @ =0x03002E20
	adds r0, #0x24
	movs r1, #3
	bl sub_804AED4
	adds r6, r0, #0
	adds r4, #1
	cmp r4, #0x40
	bgt _08028278
	movs r0, #9
	str r0, [sp]
	movs r0, #0
	movs r1, #0x80
	adds r2, r4, #0
	movs r3, #0x40
	bl sub_800E930
	adds r5, r0, #0
	movs r0, #0
	b _0802827C
	.align 2, 0
_08028274: .4byte 0x03002E20
_08028278:
	movs r5, #0x80
	movs r0, #1
_0802827C:
	mov sb, r0
	str r4, [r7, #0x68]
	ldr r4, _080282E8 @ =0x03002E20
	ldr r0, _080282EC @ =0x00000848
	adds r4, r4, r0
	adds r0, r6, #0
	bl sub_803CA78
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_803CD50
	mov r8, r0
	movs r0, #0x24
	ldrsh r1, [r6, r0]
	str r1, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	subs r7, r1, r5
	lsls r0, r5, #1
	adds r5, r1, r0
	adds r4, r6, #0
	adds r4, #0x20
	adds r0, r4, #0
	bl sub_802FF58
	cmp r0, #0
	beq _080282CE
	movs r0, #0
	str r0, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r4, #0
	adds r2, r7, #0
	adds r3, r5, #0
	bl oam_renderCellData
_080282CE:
	ldrh r1, [r6, #0x34]
	ldr r0, _080282F0 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r6, #0x34]
	mov r0, sb
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080282E8: .4byte 0x03002E20
_080282EC: .4byte 0x00000848
_080282F0: .4byte 0x0000FFFE

	thumb_func_start sub_80282F4
sub_80282F4: @ 0x080282F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x1c
	ldr r5, [r0, #0x68]
	ldr r0, _080283DC @ =0x0203EBCC
	ldr r1, [r0]
	lsls r0, r5, #4
	movs r2, #0x86
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r1, r1, r0
	mov r8, r1
	ldr r4, _080283E0 @ =0x03002E20
	adds r4, #0x24
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_804AED4
	adds r7, r0, #0
	add r3, sp, #8
	add r0, sp, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #6
	add r2, sp, #4
	bl sub_8032AA0
	add r2, sp, #0x10
	add r3, sp, #0x14
	add r0, sp, #0x18
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #7
	bl sub_8032AA0
	ldr r3, [sp, #4]
	ldr r0, [sp, #0x10]
	adds r3, r3, r0
	lsrs r0, r3, #0x1f
	adds r3, r3, r0
	asrs r3, r3, #1
	ldr r2, [sp, #8]
	ldr r0, [sp, #0x14]
	adds r2, r2, r0
	lsrs r0, r2, #0x1f
	adds r2, r2, r0
	asrs r2, r2, #1
	str r2, [sp, #8]
	ldr r0, _080283E4 @ =0xFFF78000
	adds r3, r3, r0
	str r3, [sp, #4]
	ldr r6, [r7]
	ldr r4, _080283E8 @ =_080DC22C
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r0, r1, #2
	adds r0, r0, r4
	ldr r0, [r0]
	adds r3, r3, r0
	ldr r5, [r7, #4]
	adds r0, r1, #1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	adds r2, r2, r0
	subs r5, r2, r5
	ldr r2, [r7, #8]
	adds r1, #2
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r0, [r1]
	subs r1, r0, r2
	subs r0, r3, r6
	cmp r0, #0
	bge _08028390
	adds r0, #0x1f
_08028390:
	asrs r0, r0, #5
	mov r2, r8
	str r0, [r2]
	adds r0, r5, #0
	cmp r0, #0
	bge _0802839E
	adds r0, #0x1f
_0802839E:
	asrs r0, r0, #5
	mov r2, r8
	str r0, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #6
	lsls r0, r0, #0xa
	lsls r1, r1, #1
	adds r0, r1, r0
	cmp r0, #0
	bge _080283B6
	ldr r2, _080283EC @ =0x0080003F
	adds r0, r1, r2
_080283B6:
	asrs r0, r0, #6
	mov r1, r8
	str r0, [r1, #8]
	movs r0, #0
	str r0, [r1, #0xc]
	movs r0, #0x9c
	bl m4aSongNumStart
	ldr r0, [r7, #0x48]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r7, #0x48]
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080283DC: .4byte 0x0203EBCC
_080283E0: .4byte 0x03002E20
_080283E4: .4byte 0xFFF78000
_080283E8: .4byte _080DC22C
_080283EC: .4byte 0x0080003F

	thumb_func_start sub_80283F0
sub_80283F0: @ 0x080283F0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x1c
	ldr r6, [r0, #0x68]
	ldr r0, _08028458 @ =0x0203EBCC
	ldr r7, [r0]
	lsls r0, r6, #4
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r4, r7, r0
	ldr r0, _0802845C @ =0x03002E20
	adds r0, #0x24
	mov r8, r0
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	bl sub_804AED4
	adds r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0x16
	ble _08028428
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #1
	str r0, [r1]
_08028428:
	ldr r0, [r4, #0xc]
	adds r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0x20
	bgt _08028464
	ldr r0, [r5]
	ldr r1, [r4]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r4, #4]
	adds r0, r0, r1
	str r0, [r5, #4]
	ldr r0, [r5, #8]
	ldr r1, [r4, #8]
	adds r0, r0, r1
	str r0, [r5, #8]
	ldr r0, [r4, #8]
	ldr r1, _08028460 @ =0xFFFFE000
	adds r0, r0, r1
	str r0, [r4, #8]
	movs r4, #0
	b _080284CE
	.align 2, 0
_08028458: .4byte 0x0203EBCC
_0802845C: .4byte 0x03002E20
_08028460: .4byte 0xFFFFE000
_08028464:
	add r3, sp, #8
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, r8
	movs r1, #6
	add r2, sp, #4
	bl sub_8032AA0
	add r2, sp, #0x10
	add r3, sp, #0x14
	add r0, sp, #0x18
	str r0, [sp]
	mov r0, r8
	movs r1, #7
	bl sub_8032AA0
	ldr r3, [sp, #4]
	ldr r0, [sp, #0x10]
	adds r3, r3, r0
	lsrs r0, r3, #0x1f
	adds r3, r3, r0
	asrs r3, r3, #1
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [sp, #8]
	ldr r0, _080284E4 @ =0xFFF78000
	adds r3, r3, r0
	str r3, [sp, #4]
	ldr r4, _080284E8 @ =_080DC22C
	lsls r2, r6, #1
	adds r2, r2, r6
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r0, [r0]
	adds r3, r3, r0
	str r3, [r5]
	adds r0, r2, #1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [sp, #8]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r5, #4]
	adds r2, #2
	lsls r2, r2, #2
	adds r2, r2, r4
	ldr r0, [r2]
	str r0, [r5, #8]
	movs r4, #1
_080284CE:
	adds r0, r5, #0
	movs r1, #1
	bl sub_803D214
	cmp r6, #1
	beq _08028500
	cmp r6, #1
	bgt _080284EC
	cmp r6, #0
	beq _080284F2
	b _08028514
	.align 2, 0
_080284E4: .4byte 0xFFF78000
_080284E8: .4byte _080DC22C
_080284EC:
	cmp r6, #2
	beq _0802850A
	b _08028514
_080284F2:
	adds r1, r5, #0
	adds r1, #0x88
	ldr r0, _080284FC @ =0x0000FFFF
	b _08028512
	.align 2, 0
_080284FC: .4byte 0x0000FFFF
_08028500:
	adds r1, r5, #0
	adds r1, #0x56
	movs r0, #0x88
	lsls r0, r0, #8
	b _08028512
_0802850A:
	adds r1, r5, #0
	adds r1, #0x56
	movs r0, #0xf0
	lsls r0, r0, #7
_08028512:
	strh r0, [r1]
_08028514:
	adds r0, r4, #0
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8028524
sub_8028524: @ 0x08028524
	push {r4, r5, r6, lr}
	sub sp, #0x1c
	ldr r6, [r0, #0x68]
	ldr r4, _080285B8 @ =0x03002E20
	adds r4, #0x24
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_804AED4
	adds r5, r0, #0
	ldr r0, [r5, #0x48]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5, #0x48]
	add r3, sp, #8
	add r0, sp, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #6
	add r2, sp, #4
	bl sub_8032AA0
	add r2, sp, #0x10
	add r3, sp, #0x14
	add r0, sp, #0x18
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #7
	bl sub_8032AA0
	ldr r3, [sp, #4]
	ldr r0, [sp, #0x10]
	adds r3, r3, r0
	lsrs r0, r3, #0x1f
	adds r3, r3, r0
	asrs r3, r3, #1
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [sp, #8]
	ldr r0, _080285BC @ =0xFFF78000
	adds r3, r3, r0
	str r3, [sp, #4]
	ldr r4, _080285C0 @ =_080DC22C
	lsls r2, r6, #1
	adds r2, r2, r6
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r0, [r0]
	adds r3, r3, r0
	str r3, [r5]
	adds r0, r2, #1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [sp, #8]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r5, #4]
	adds r2, #2
	lsls r2, r2, #2
	adds r2, r2, r4
	ldr r0, [r2]
	str r0, [r5, #8]
	cmp r6, #1
	beq _080285D8
	cmp r6, #1
	bgt _080285C4
	cmp r6, #0
	beq _080285CA
	b _080285EC
	.align 2, 0
_080285B8: .4byte 0x03002E20
_080285BC: .4byte 0xFFF78000
_080285C0: .4byte _080DC22C
_080285C4:
	cmp r6, #2
	beq _080285E2
	b _080285EC
_080285CA:
	adds r1, r5, #0
	adds r1, #0x88
	ldr r0, _080285D4 @ =0x0000FFFF
	b _080285EA
	.align 2, 0
_080285D4: .4byte 0x0000FFFF
_080285D8:
	adds r1, r5, #0
	adds r1, #0x56
	movs r0, #0x88
	lsls r0, r0, #8
	b _080285EA
_080285E2:
	adds r1, r5, #0
	adds r1, #0x56
	movs r0, #0xf0
	lsls r0, r0, #7
_080285EA:
	strh r0, [r1]
_080285EC:
	add sp, #0x1c
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_80285F4
sub_80285F4: @ 0x080285F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r5, r0, #0
	movs r1, #0x12
	ldr r2, _0802868C @ =0x00000BE4
	adds r0, r5, r2
	str r1, [r0]
	ldr r0, _08028690 @ =0x00000824
	adds r4, r5, r0
	add r3, sp, #8
	add r0, sp, #0xc
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #6
	add r2, sp, #4
	bl sub_8032AA0
	add r2, sp, #0x10
	add r3, sp, #0x14
	add r0, sp, #0x18
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #7
	bl sub_8032AA0
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x10]
	adds r1, r1, r0
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	ldr r2, [sp, #8]
	ldr r0, [sp, #0x14]
	adds r2, r2, r0
	lsrs r0, r2, #0x1f
	adds r2, r2, r0
	asrs r2, r2, #1
	str r2, [sp, #8]
	ldr r0, _08028694 @ =0xFFF78000
	adds r1, r1, r0
	str r1, [sp, #4]
	adds r0, r4, #0
	bl cam_SetPos
	adds r0, r4, #0
	movs r1, #0
	bl cam_SetYaw
	adds r0, r5, #0
	bl loadtrack_loadObjects
	ldr r0, _08028698 @ =0x0203EBB8
	ldr r0, [r0]
	cmp r0, #2
	bgt _080286A4
	ldr r2, _0802869C @ =0x000007F1
	adds r1, r5, r2
	movs r0, #3
	strb r0, [r1]
	movs r4, #0
	ldr r6, _080286A0 @ =0x0203EBC0
_0802866E:
	ldr r1, [r6]
	movs r2, #0
	ldr r0, _08028698 @ =0x0203EBB8
	ldr r0, [r0]
	cmp r4, r0
	bne _0802867C
	movs r2, #1
_0802867C:
	adds r0, r5, #0
	bl sub_804AE58
	adds r6, #4
	adds r4, #1
	cmp r4, #2
	ble _0802866E
	b _080286CC
	.align 2, 0
_0802868C: .4byte 0x00000BE4
_08028690: .4byte 0x00000824
_08028694: .4byte 0xFFF78000
_08028698: .4byte 0x0203EBB8
_0802869C: .4byte 0x000007F1
_080286A0: .4byte 0x0203EBC0
_080286A4:
	ldr r0, _080286D0 @ =0x000007F1
	adds r1, r5, r0
	movs r0, #4
	strb r0, [r1]
	ldr r6, _080286D4 @ =0x0203EBC0
	movs r4, #2
_080286B0:
	ldm r6!, {r1}
	adds r0, r5, #0
	movs r2, #0
	bl sub_804AE58
	subs r4, #1
	cmp r4, #0
	bge _080286B0
	ldr r0, _080286D8 @ =0x0203EBBC
	ldr r1, [r0]
	adds r0, r5, #0
	movs r2, #1
	bl sub_804AE58
_080286CC:
	movs r4, #0
	b _080286FE
	.align 2, 0
_080286D0: .4byte 0x000007F1
_080286D4: .4byte 0x0203EBC0
_080286D8: .4byte 0x0203EBBC
_080286DC:
	lsls r1, r4, #2
	ldr r2, _08028714 @ =0x000007F4
	adds r0, r5, r2
	adds r0, r0, r1
	ldr r2, [r0]
	lsls r0, r4, #1
	adds r1, r2, #0
	adds r1, #0xba
	strh r0, [r1]
	ldrh r1, [r1]
	lsrs r1, r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_804AEE8
	adds r4, #1
_080286FE:
	ldr r1, _08028718 @ =0x000007F1
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r4, r0
	blt _080286DC
	adds r7, r5, #0
	movs r6, #0
	movs r2, #0xfe
	lsls r2, r2, #3
	adds r0, r5, r2
	b _08028764
	.align 2, 0
_08028714: .4byte 0x000007F4
_08028718: .4byte 0x000007F1
_0802871C:
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_804AED4
	adds r4, r0, #0
	adds r0, #0xba
	ldrh r1, [r0]
	lsrs r1, r1, #1
	add r0, sp, #0x24
	str r0, [sp]
	adds r0, r7, #0
	add r2, sp, #0x1c
	add r3, sp, #0x20
	bl sub_8032AA0
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_803D718
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_803BF34
	ldr r0, [r4, #0x48]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #0x48]
	adds r6, #1
	movs r1, #0xfe
	lsls r1, r1, #3
	adds r0, r5, r1
_08028764:
	ldrb r0, [r0]
	cmp r6, r0
	blt _0802871C
	movs r4, #0
	movs r2, #0xfe
	lsls r2, r2, #3
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r4, r0
	bge _0802879A
	ldr r0, _080287A4 @ =0x0000FFFE
	adds r6, r0, #0
_0802877C:
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_804AED4
	ldrh r1, [r0, #0x34]
	ands r1, r6
	strh r1, [r0, #0x34]
	adds r4, #1
	movs r1, #0xfe
	lsls r1, r1, #3
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r4, r0
	blt _0802877C
_0802879A:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080287A4: .4byte 0x0000FFFE

	thumb_func_start sub_80287A8
sub_80287A8: @ 0x080287A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	bl m4aMPlayAllStop
	bl main_frameProc
	bl m4aSoundVSyncOff
	movs r0, #0
	mov sl, r0
	movs r0, #1
	movs r1, #2
	rsbs r1, r1, #0
	bl irq_updateMask
	mov r1, sl
	ldr r2, _08028A0C @ =0x03002E20
	str r1, [r2, #0xc]
	movs r0, #2
	ldr r1, _08028A10 @ =0x00010001
	bl irq_updateMask
	mov r1, sl
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r1, [r0]
	ldrh r0, [r0]
	movs r2, #0xc0
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x13
	strh r0, [r1]
	ldr r0, _08028A14 @ =0x04000040
	ldr r2, _08028A18 @ =0x0000FFFF
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	adds r0, #4
	mov r1, sl
	strh r1, [r0]
	ldr r1, _08028A1C @ =0x0400004A
	movs r0, #0x20
	strh r0, [r1]
	mov r2, sl
	ldr r0, _08028A0C @ =0x03002E20
	str r2, [r0, #0x10]
	bl oam_init
	mov r0, sp
	mov r1, sl
	strh r1, [r0]
	ldr r2, _08028A20 @ =0x040000D4
	mov sb, r2
	str r0, [r2]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r2, #4]
	ldr r0, _08028A24 @ =0x8100C000
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	bl pltt_clearBuffer
	ldr r1, _08028A28 @ =0x06003800
	movs r0, #0
	bl map_setBufferDestination
	ldr r1, _08028A2C @ =0x06003000
	movs r0, #1
	bl map_setBufferDestination
	ldr r0, _08028A30 @ =_080DC430
	movs r1, #0x18
	bl main_configureIoRegs
	ldr r7, _08028A34 @ =0x04000008
	ldrb r1, [r7]
	movs r2, #0x7f
	mov r8, r2
	mov r0, r8
	ands r0, r1
	strb r0, [r7]
	ldrb r1, [r7, #1]
	movs r6, #0x3f
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r7, #1]
	ldrb r1, [r7]
	movs r5, #4
	rsbs r5, r5, #0
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r7]
	ldrb r1, [r7]
	movs r4, #0x41
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r7]
	ldrb r1, [r7]
	subs r2, #0x8c
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r7]
	ldrb r1, [r7, #1]
	movs r3, #0x20
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r1
	movs r1, #7
	orrs r0, r1
	strb r0, [r7, #1]
	adds r7, #2
	ldrb r0, [r7]
	mov r1, r8
	ands r1, r0
	strb r1, [r7]
	ldrb r0, [r7, #1]
	ands r6, r0
	strb r6, [r7, #1]
	ldrb r0, [r7]
	ands r5, r0
	strb r5, [r7]
	ldrb r0, [r7]
	ands r4, r0
	strb r4, [r7]
	ldrb r0, [r7]
	ands r2, r0
	movs r0, #4
	orrs r2, r0
	strb r2, [r7]
	ldrb r0, [r7, #1]
	ands r3, r0
	movs r0, #0xf
	orrs r3, r0
	strb r3, [r7, #1]
	ldr r2, _08028A38 @ =0x00007741
	adds r0, r2, #0
	movs r1, #0x80
	lsls r1, r1, #0x13
	strh r0, [r1]
	ldr r0, _08028A3C @ =0x03002E44
	bl sub_8049654
	ldr r0, _08028A3C @ =0x03002E44
	bl sub_80285F4
	ldr r0, _08028A3C @ =0x03002E44
	bl sub_804AE08
	movs r0, #0
	bl pltt_getBuffer
	mov r2, sl
	strh r2, [r0]
	movs r0, #1
	bl pltt_setDirtyFlag
	ldr r0, _08028A40 @ =trns_initDefaultInTransition
	ldr r1, _08028A44 @ =0x03004F70
	str r0, [r1, #4]
	ldr r0, _08028A48 @ =trns_applyDefaultInTransition
	str r0, [r1]
	ldr r0, _08028A4C @ =trns_finishDefaultInTransition
	str r0, [r1, #8]
	movs r0, #1
	strb r0, [r1, #0xe]
	bl trns_start
	ldr r1, _08028A0C @ =0x03002E20
	ldr r2, _08028A50 @ =0x00000C7C
	adds r0, r1, r2
	mov r1, sl
	str r1, [r0]
	ldr r0, _08028A54 @ =_080BF788
	ldr r1, _08028A58 @ =0x06012000
	bl LZ77UnCompVram
	ldr r0, _08028A5C @ =_080BF7EC
	ldr r1, _08028A60 @ =0x06012800
	bl LZ77UnCompVram
	ldr r0, _08028A64 @ =_080BFFA8
	ldr r1, _08028A68 @ =0x06016000
	bl LZ77UnCompVram
	ldr r0, _08028A6C @ =_080C0910
	ldr r1, _08028A70 @ =0x06010000
	bl LZ77UnCompVram
	ldr r4, _08028A74 @ =0x0203EC30
	ldrb r0, [r4]
	bl track_getCup
	lsls r0, r0, #0x18
	ldr r1, _08028A78 @ =_080DC4F0
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08028A7C @ =0x06012600
	bl LZ77UnCompVram
	ldr r0, _08028A80 @ =_08062834
	mov r2, sb
	str r0, [r2]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r2, #4]
	ldr r0, _08028A84 @ =0x80001000
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _08028A88 @ =_080C19C4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	ldr r0, _08028A8C @ =_080C1A10
	ldr r1, _08028A90 @ =0x060002A0
	bl LZ77UnCompVram
	ldr r0, _08028A94 @ =_080C1A38
	ldr r1, _08028A98 @ =0x06000700
	bl LZ77UnCompVram
	ldr r0, _08028A9C @ =_080C1AD8
	ldr r1, _08028AA0 @ =0x06000B00
	bl LZ77UnCompVram
	ldr r0, _08028AA4 @ =_080C1B44
	ldr r1, _08028AA8 @ =0x06000F00
	bl LZ77UnCompVram
	ldr r0, _08028AAC @ =_080C1BCC
	ldr r1, _08028AB0 @ =0x06001300
	bl LZ77UnCompVram
	ldr r0, _08028AB4 @ =_080C1C50
	ldr r1, _08028AB8 @ =0x06001E40
	bl LZ77UnCompVram
	ldr r0, _08028ABC @ =_080ABEFC
	mov r1, sb
	str r0, [r1]
	ldr r0, _08028AC0 @ =0x06002000
	str r0, [r1, #4]
	ldr r0, _08028AC4 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08028AC8 @ =_080C2E60
	ldr r1, _08028ACC @ =0x06002180
	bl LZ77UnCompVram
	ldr r0, _08028AD0 @ =_080C2858
	ldr r1, _08028AD4 @ =0x06000160
	bl LZ77UnCompVram
	ldr r0, _08028AD8 @ =0x0203EBCC
	ldr r0, [r0]
	ldr r1, _08028ADC @ =_080DC504
	movs r2, #0xc5
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08028AE0 @ =0x060002E0
	bl LZ77UnCompVram
	ldrb r0, [r4]
	bl track_getCup
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrb r0, [r4]
	bl track_isRetroTrack
	cmp r0, #0
	beq _080289E4
	b _08028AE8
_080289E4:
	movs r4, #0
	lsls r5, r5, #2
	ldr r6, _08028AE4 @ =gTrackDefTable
_080289EA:
	adds r0, r5, r4
	bl track_getMKSCTrack
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	adds r4, #1
	lsls r1, r4, #0xa
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	bl LZ77UnCompVram
	cmp r4, #3
	ble _080289EA
	b _08028B0E
	.align 2, 0
_08028A0C: .4byte 0x03002E20
_08028A10: .4byte 0x00010001
_08028A14: .4byte 0x04000040
_08028A18: .4byte 0x0000FFFF
_08028A1C: .4byte 0x0400004A
_08028A20: .4byte 0x040000D4
_08028A24: .4byte 0x8100C000
_08028A28: .4byte 0x06003800
_08028A2C: .4byte 0x06003000
_08028A30: .4byte _080DC430
_08028A34: .4byte 0x04000008
_08028A38: .4byte 0x00007741
_08028A3C: .4byte 0x03002E44
_08028A40: .4byte trns_initDefaultInTransition
_08028A44: .4byte 0x03004F70
_08028A48: .4byte trns_applyDefaultInTransition
_08028A4C: .4byte trns_finishDefaultInTransition
_08028A50: .4byte 0x00000C7C
_08028A54: .4byte _080BF788
_08028A58: .4byte 0x06012000
_08028A5C: .4byte _080BF7EC
_08028A60: .4byte 0x06012800
_08028A64: .4byte _080BFFA8
_08028A68: .4byte 0x06016000
_08028A6C: .4byte _080C0910
_08028A70: .4byte 0x06010000
_08028A74: .4byte 0x0203EC30
_08028A78: .4byte _080DC4F0
_08028A7C: .4byte 0x06012600
_08028A80: .4byte _08062834
_08028A84: .4byte 0x80001000
_08028A88: .4byte _080C19C4
_08028A8C: .4byte _080C1A10
_08028A90: .4byte 0x060002A0
_08028A94: .4byte _080C1A38
_08028A98: .4byte 0x06000700
_08028A9C: .4byte _080C1AD8
_08028AA0: .4byte 0x06000B00
_08028AA4: .4byte _080C1B44
_08028AA8: .4byte 0x06000F00
_08028AAC: .4byte _080C1BCC
_08028AB0: .4byte 0x06001300
_08028AB4: .4byte _080C1C50
_08028AB8: .4byte 0x06001E40
_08028ABC: .4byte _080ABEFC
_08028AC0: .4byte 0x06002000
_08028AC4: .4byte 0x80000400
_08028AC8: .4byte _080C2E60
_08028ACC: .4byte 0x06002180
_08028AD0: .4byte _080C2858
_08028AD4: .4byte 0x06000160
_08028AD8: .4byte 0x0203EBCC
_08028ADC: .4byte _080DC504
_08028AE0: .4byte 0x060002E0
_08028AE4: .4byte gTrackDefTable
_08028AE8:
	movs r4, #0
	lsls r5, r5, #2
	ldr r6, _08028B74 @ =gTrackDefTable
_08028AEE:
	adds r0, r5, r4
	bl track_getRetroTrack
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	adds r4, #1
	lsls r1, r4, #0xa
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	bl LZ77UnCompVram
	cmp r4, #3
	ble _08028AEE
_08028B0E:
	ldr r4, _08028B78 @ =_080BF5A4
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	ldr r4, _08028B7C @ =_080C18FC
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	bl LZ77UnCompWram
	movs r0, #1
	bl pltt_setDirtyFlag
	bl sub_8027A6C
	ldr r5, _08028B80 @ =sub_8029760
	ldr r4, _08028B84 @ =0x03002E20
	movs r0, #1
	movs r1, #2
	rsbs r1, r1, #0
	bl irq_updateMask
	str r5, [r4, #0xc]
	movs r0, #2
	ldr r1, _08028B88 @ =0x00010001
	bl irq_updateMask
	ldr r1, _08028B8C @ =0x00010004
	movs r0, #2
	bl irq_updateMask
	bl m4aSoundVSyncOn
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028B74: .4byte gTrackDefTable
_08028B78: .4byte _080BF5A4
_08028B7C: .4byte _080C18FC
_08028B80: .4byte sub_8029760
_08028B84: .4byte 0x03002E20
_08028B88: .4byte 0x00010001
_08028B8C: .4byte 0x00010004

	thumb_func_start sub_8028B90
sub_8028B90: @ 0x08028B90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	ldr r4, _08028CBC @ =0x03002E20
	movs r0, #0
	str r0, [sp, #0x10]
	movs r1, #0
	str r1, [sp, #0x14]
	movs r2, #0xa8
	str r2, [sp, #0x18]
	movs r3, #0
	str r3, [sp, #0x1c]
	ldr r0, _08028CC0 @ =0x03002E44
	bl sub_8043550
	str r0, [sp, #0x20]
	movs r5, #1
	str r5, [sp, #0x24]
	ldr r1, _08028CC4 @ =0x0203EC30
	ldr r7, _08028CC8 @ =0x00000801
	adds r4, r4, r7
	ldrb r0, [r4]
	str r0, [r1]
	bl sub_80278E0
	ldr r1, _08028CCC @ =0x0203EBB8
	str r0, [r1]
	ldr r2, _08028CD0 @ =0x0203EB90
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #0x4c
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	ldr r1, _08028CD4 @ =0x0203EBBC
	str r0, [r1]
	movs r5, #7
	ldr r3, _08028CD8 @ =0x0203EBC0
	movs r4, #2
_08028BE6:
	ldm r2!, {r0}
	adds r0, #0x4c
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	stm r3!, {r0}
	subs r4, #1
	cmp r4, #0
	bge _08028BE6
	ldr r1, _08028CC0 @ =0x03002E44
	ldr r2, _08028CDC @ =0x000007D7
	adds r0, r1, r2
	ldrb r0, [r0]
	ldr r3, [sp, #0x14]
	subs r3, #1
	str r3, [sp, #0x2c]
	cmp r0, #1
	bls _08028C0C
	b _08028DDE
_08028C0C:
	movs r5, #0
	str r5, [sp, #0x28]
	ldr r0, _08028CC4 @ =0x0203EC30
	ldrb r0, [r0]
	bl track_getCup
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r7, _08028CC0 @ =0x03002E44
	ldr r1, _08028CE0 @ =0x000007DC
	adds r0, r7, r1
	ldrb r6, [r0]
	movs r4, #0
_08028C28:
	bl save_getSavePointer_805D9B0
	lsls r1, r4, #2
	adds r0, r0, r1
	ldr r2, _08028CE4 @ =0x00000583
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #3
	ble _08028C28
	movs r3, #0
	str r3, [sp, #0x1c]
	mov r7, sl
	lsls r7, r7, #1
	str r7, [sp, #0x30]
	cmp r5, #0x63
	ble _08028CA2
	movs r7, #1
	mov r0, sl
	lsls r0, r0, #0x18
	mov r8, r0
	lsls r1, r6, #0x18
	mov sb, r1
	adds r5, r6, #0
	movs r4, #4
_08028C5C:
	bl save_getSavePointer_805D9B0
	adds r0, #0x28
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08028C70
	movs r7, #0
_08028C70:
	adds r5, #3
	subs r4, #1
	cmp r4, #0
	bge _08028C5C
	mov r2, r8
	lsrs r4, r2, #0x18
	mov r3, sb
	lsrs r5, r3, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_805DE38
	cmp r0, #0
	beq _08028CA2
	cmp r7, #0
	beq _08028CA2
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl sub_805DDEC
	movs r5, #1
	str r5, [sp, #0x28]
	movs r7, #1
	str r7, [sp, #0x1c]
_08028CA2:
	ldr r0, _08028CCC @ =0x0203EBB8
	ldr r0, [r0]
	cmp r0, #2
	bgt _08028D70
	cmp r0, #1
	beq _08028CE8
	cmp r0, #1
	bgt _08028CEC
	cmp r0, #0
	bne _08028CEC
	movs r5, #0
	b _08028CEE
	.align 2, 0
_08028CBC: .4byte 0x03002E20
_08028CC0: .4byte 0x03002E44
_08028CC4: .4byte 0x0203EC30
_08028CC8: .4byte 0x00000801
_08028CCC: .4byte 0x0203EBB8
_08028CD0: .4byte 0x0203EB90
_08028CD4: .4byte 0x0203EBBC
_08028CD8: .4byte 0x0203EBC0
_08028CDC: .4byte 0x000007D7
_08028CE0: .4byte 0x000007DC
_08028CE4: .4byte 0x00000583
_08028CE8:
	movs r5, #1
	b _08028CEE
_08028CEC:
	movs r5, #2
_08028CEE:
	cmp r6, #1
	beq _08028CFC
	cmp r6, #1
	bgt _08028CFA
	cmp r6, #0
	beq _08028CFC
_08028CFA:
	movs r6, #2
_08028CFC:
	ldr r0, _08028D3C @ =0x0203EC30
	ldrb r0, [r0]
	bl track_isRetroTrack
	cmp r0, #0
	bne _08028D40
	bl save_getSavePointer_805D9B0
	ldr r1, [sp, #0x30]
	add r1, sl
	adds r4, r6, r1
	adds r0, #0x28
	adds r0, r0, r4
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08028D2A
	movs r0, #0
	str r0, [sp, #0x24]
	cmp r1, r5
	ble _08028D70
_08028D2A:
	bl save_getSavePointer_805D9B0
	adds r0, #0x28
	adds r0, r0, r4
	strb r5, [r0]
	movs r1, #1
	str r1, [sp, #0x28]
	b _08028D70
	.align 2, 0
_08028D3C: .4byte 0x0203EC30
_08028D40:
	bl save_getSavePointer_805D9B0
	ldr r1, [sp, #0x30]
	add r1, sl
	adds r4, r6, r1
	adds r0, #0x37
	adds r0, r0, r4
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08028D62
	movs r2, #0
	str r2, [sp, #0x24]
	cmp r1, r5
	ble _08028D70
_08028D62:
	bl save_getSavePointer_805D9B0
	adds r0, #0x37
	adds r0, r0, r4
	strb r5, [r0]
	movs r3, #1
	str r3, [sp, #0x28]
_08028D70:
	ldr r0, _08028DA4 @ =0x0203EC30
	ldrb r0, [r0]
	bl track_isRetroTrack
	cmp r0, #0
	bne _08028DA8
	bl save_getSavePointer_805D9B0
	ldr r1, [sp, #0x30]
	add r1, sl
	adds r4, r6, r1
	adds r0, #0x46
	adds r0, r0, r4
	ldrb r0, [r0]
	ldr r5, [sp, #0x20]
	cmp r0, r5
	ble _08028DD0
	bl save_getSavePointer_805D9B0
	adds r0, #0x46
	adds r0, r0, r4
	strb r5, [r0]
	movs r0, #1
	str r0, [sp, #0x28]
	b _08028DD0
	.align 2, 0
_08028DA4: .4byte 0x0203EC30
_08028DA8:
	bl save_getSavePointer_805D9B0
	ldr r1, [sp, #0x30]
	add r1, sl
	adds r4, r6, r1
	adds r0, #0x55
	adds r0, r0, r4
	ldrb r0, [r0]
	ldr r1, [sp, #0x20]
	cmp r0, r1
	ble _08028DD0
	bl save_getSavePointer_805D9B0
	adds r0, #0x55
	adds r0, r0, r4
	add r2, sp, #0x20
	ldrb r2, [r2]
	strb r2, [r0]
	movs r3, #1
	str r3, [sp, #0x28]
_08028DD0:
	bl sub_805DABC
	ldr r5, [sp, #0x28]
	cmp r5, #0
	beq _08028DDE
	bl sub_805DA68
_08028DDE:
	ldr r7, _08028EA4 @ =0x03002E44
	ldr r0, _08028EA8 @ =0x000007D7
	adds r7, r7, r0
	mov r8, r7
	ldrb r1, [r7]
	mov sl, r1
	ldr r2, _08028EA4 @ =0x03002E44
	ldr r3, _08028EAC @ =0x000007DA
	adds r5, r2, r3
	ldrh r7, [r5]
	adds r0, #5
	adds r4, r2, r0
	ldrb r6, [r4]
	adds r0, r2, #0
	bl sub_8048C74
	mov r2, sl
	mov r1, r8
	strb r2, [r1]
	strh r7, [r5]
	strb r6, [r4]
	ldr r3, _08028EA4 @ =0x03002E44
	ldr r5, _08028EB0 @ =0x000007DD
	adds r1, r3, r5
	movs r0, #0x1c
	strb r0, [r1]
	movs r7, #0xdc
	lsls r7, r7, #3
	adds r4, r3, r7
	ldr r2, _08028EB4 @ =0x0000062C
	adds r0, r4, #0
	movs r1, #1
	bl frmheap_calloc
	str r0, [sp, #0xc]
	ldr r0, _08028EB8 @ =0x0203EBCC
	ldr r1, [sp, #0xc]
	str r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r4, #0
	movs r1, #1
	bl frmheap_calloc
	ldr r2, [sp, #0xc]
	movs r3, #0xb9
	lsls r3, r3, #3
	adds r1, r2, r3
	str r0, [r1]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r4, #0
	movs r1, #1
	adds r2, r5, #0
	bl frmheap_calloc
	ldr r7, [sp, #0xc]
	ldr r2, _08028EBC @ =0x000005CC
	adds r1, r7, r2
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x20
	bl frmheap_calloc
	ldr r3, _08028EC0 @ =0x000005D4
	adds r1, r7, r3
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #1
	adds r2, r5, #0
	bl frmheap_calloc
	movs r5, #0xba
	lsls r5, r5, #3
	adds r1, r7, r5
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x94
	bl frmheap_calloc
	ldr r1, _08028EC4 @ =0x0203EBD0
	str r0, [r1]
	movs r1, #0xc5
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r2, [sp, #0x20]
	str r2, [r0]
	bl sub_80287A8
	ldr r3, [sp, #0x1c]
	cmp r3, #0
	beq _08028EC8
	adds r5, #0x4c
	adds r1, r7, r5
	movs r0, #1
	str r0, [r1]
	b _08028ED2
	.align 2, 0
_08028EA4: .4byte 0x03002E44
_08028EA8: .4byte 0x000007D7
_08028EAC: .4byte 0x000007DA
_08028EB0: .4byte 0x000007DD
_08028EB4: .4byte 0x0000062C
_08028EB8: .4byte 0x0203EBCC
_08028EBC: .4byte 0x000005CC
_08028EC0: .4byte 0x000005D4
_08028EC4: .4byte 0x0203EBD0
_08028EC8:
	ldr r7, [sp, #0xc]
	ldr r1, _08029110 @ =0x0000061C
	adds r0, r7, r1
	ldr r2, [sp, #0x1c]
	str r2, [r0]
_08028ED2:
	movs r3, #0
	mov sb, r3
	bl oam_update
	bl main_frameProc
	bl sub_802DC88
	cmp r0, #0
	beq _08028F3E
	movs r0, #0
	ldr r5, [sp, #0x14]
	cmp r5, #0xd
	ble _08028EF0
	movs r0, #1
_08028EF0:
	ldr r1, _08029114 @ =0x03004F50
	lsls r0, r0, #0xa
	strh r0, [r1]
	movs r7, #1
	mov sb, r7
	movs r4, #0
	ldr r1, _08029118 @ =0x03002C80
	ldrb r0, [r1, #1]
	cmp r4, r0
	bge _08028F3E
	movs r7, #0xc0
	lsls r7, r7, #4
	movs r6, #0x80
	lsls r6, r6, #3
	adds r3, r0, #0
	adds r2, r1, #2
	adds r5, r1, #0
	adds r5, #0xd
_08028F14:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #1
	bne _08028F24
	movs r1, #1
_08028F24:
	cmp r1, #0
	beq _08028F36
	ldrh r1, [r2]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, r6
	beq _08028F36
	movs r0, #0
	mov sb, r0
_08028F36:
	adds r2, #2
	adds r4, #1
	cmp r4, r3
	blt _08028F14
_08028F3E:
	ldr r1, [sp, #0x2c]
	cmp r1, #0xd
	bls _08028F46
	b _080290FC
_08028F46:
	ldr r0, _0802911C @ =0x03004F70
	ldrb r1, [r0, #0xc]
	movs r5, #2
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08028F56
	b _080290FC
_08028F56:
	ldr r2, [sp, #0x24]
	cmp r2, #0
	beq _08028F5E
	b _080290FC
_08028F5E:
	movs r1, #1
	ldr r0, _08029120 @ =0x03004EA0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _08028F6C
	b _080290FC
_08028F6C:
	ldr r3, _08029124 @ =0x03002E44
	ldr r7, _08029128 @ =0x0000071C
	adds r0, r3, r7
	movs r2, #0xdc
	lsls r2, r2, #3
	adds r1, r3, r2
	movs r2, #0xa
	bl sub_804F750
	ldr r1, _0802912C @ =_080DC0BC
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	ldr r1, _08029130 @ =_080DC2C8
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	ldr r4, _08029134 @ =0x0203EBB8
	ldr r0, [r4]
	cmp r0, #2
	bgt _08028FA4
	ldr r1, _08029138 @ =_080DBE94
	movs r0, #0
	movs r2, #0
	bl sub_8030224
_08028FA4:
	ldr r1, _0802913C @ =_080DBAF0
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	ldr r1, _08029140 @ =_080DBCB8
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	ldr r1, _08029144 @ =_080DBC30
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	movs r1, #0x49
	ldr r3, _08029124 @ =0x03002E44
	movs r7, #0xbd
	lsls r7, r7, #4
	adds r0, r3, r7
	strb r1, [r0]
	ldr r1, _08029148 @ =0x03002E20
	ldr r0, [r1, #0x24]
	orrs r0, r5
	str r0, [r1, #0x24]
	ldr r0, [r4]
	cmp r0, #0
	bne _08028FEA
	adds r0, r3, #0
	movs r1, #0
	bl sub_804AED4
	movs r1, #2
	bl sub_803D214
_08028FEA:
	movs r0, #0x58
	str r0, [sp, #0x18]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov r8, r0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sl, r0
	movs r0, #0
_08029008:
	movs r3, #0
	adds r5, r0, #0
	adds r5, #9
	adds r6, r0, #1
	adds r4, r5, #0
	lsls r0, r4, #6
	mov r1, sl
	adds r2, r0, r1
	mov r7, r8
	adds r1, r0, r7
_0802901C:
	cmp r3, #0
	blt _08029030
	cmp r5, #0
	blt _08029030
	cmp r3, #0x1d
	bgt _08029030
	cmp r4, #0x13
	bgt _08029030
	ldrh r0, [r2]
	strh r0, [r1]
_08029030:
	adds r2, #2
	adds r1, #2
	adds r3, #1
	cmp r3, #0x1e
	blt _0802901C
	adds r0, r6, #0
	cmp r0, #0xb
	blt _08029008
	movs r0, #1
	bl map_setBufferDirty
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov r8, r0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sl, r0
	movs r0, #0
_08029060:
	movs r3, #0
	adds r5, r0, #4
	adds r6, r0, #1
	adds r4, r5, #0
	lsls r0, r4, #5
	adds r0, #0x11
	lsls r0, r0, #1
	mov r1, sl
	adds r2, r0, r1
	mov r7, r8
	adds r1, r0, r7
_08029076:
	adds r0, r3, #0
	adds r0, #0x11
	cmp r0, #0
	blt _0802908E
	cmp r5, #0
	blt _0802908E
	cmp r0, #0x1d
	bgt _0802908E
	cmp r4, #0x13
	bgt _0802908E
	ldrh r0, [r2]
	strh r0, [r1]
_0802908E:
	adds r2, #2
	adds r1, #2
	adds r3, #1
	cmp r3, #0xe
	blt _08029076
	adds r0, r6, #0
	cmp r0, #5
	blt _08029060
	movs r0, #1
	bl map_setBufferDirty
	movs r4, #0xf
_080290A6:
	bl sub_8027F00
	subs r4, #1
	cmp r4, #0
	bge _080290A6
	ldr r0, _08029134 @ =0x0203EBB8
	ldr r0, [r0]
	movs r4, #0x3b
	cmp r0, #2
	bgt _080290BC
	movs r4, #0x38
_080290BC:
	movs r5, #0
	ldr r2, _0802914C @ =gMPlayTable
	ldr r1, _08029150 @ =gSongTable
	lsls r0, r4, #3
	adds r3, r0, r1
	ldrh r1, [r3, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _080290E2
	ldr r1, [r1]
	ldr r0, [r3]
	cmp r1, r0
	bne _080290E2
	movs r5, #1
_080290E2:
	cmp r5, #0
	bne _080290EC
	adds r0, r4, #0
	bl m4aSongNumStart
_080290EC:
	movs r0, #0xae
	bl m4aSongNumStop
	movs r0, #0xaf
	bl m4aSongNumStop
	movs r0, #0xe
	str r0, [sp, #0x14]
_080290FC:
	ldr r1, [sp, #0x14]
	cmp r1, #0x10
	bls _08029104
	b _08029674
_08029104:
	lsls r0, r1, #2
	ldr r1, _08029154 @ =_08029158
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08029110: .4byte 0x0000061C
_08029114: .4byte 0x03004F50
_08029118: .4byte 0x03002C80
_0802911C: .4byte 0x03004F70
_08029120: .4byte 0x03004EA0
_08029124: .4byte 0x03002E44
_08029128: .4byte 0x0000071C
_0802912C: .4byte _080DC0BC
_08029130: .4byte _080DC2C8
_08029134: .4byte 0x0203EBB8
_08029138: .4byte _080DBE94
_0802913C: .4byte _080DBAF0
_08029140: .4byte _080DBCB8
_08029144: .4byte _080DBC30
_08029148: .4byte 0x03002E20
_0802914C: .4byte gMPlayTable
_08029150: .4byte gSongTable
_08029154: .4byte _08029158
_08029158: @ jump table
	.4byte _0802919C @ case 0
	.4byte _080291FC @ case 1
	.4byte _08029232 @ case 2
	.4byte _08029260 @ case 3
	.4byte _08029284 @ case 4
	.4byte _0802928A @ case 5
	.4byte _080292CE @ case 6
	.4byte _080292DC @ case 7
	.4byte _080292FC @ case 8
	.4byte _0802931C @ case 9
	.4byte _08029354 @ case 10
	.4byte _08029366 @ case 11
	.4byte _08029394 @ case 12
	.4byte _080294B6 @ case 13
	.4byte _080294D0 @ case 14
	.4byte _080294F0 @ case 15
	.4byte _080295AC @ case 16
_0802919C:
	movs r0, #0
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	ldr r1, _080291E0 @ =_080DC0E4
	movs r2, #0
	bl sub_8030224
	ldr r1, _080291E4 @ =_080DC10C
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	ldr r1, _080291E8 @ =_080DC134
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	ldr r0, _080291EC @ =0x0203EBB8
	ldr r0, [r0]
	ldr r1, _080291F0 @ =_080DC410
	cmp r0, #2
	bgt _080291CA
	ldr r1, _080291F4 @ =_080DC3F0
_080291CA:
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	ldr r1, _080291F8 @ =_080DC094
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	b _080294C8
	.align 2, 0
_080291E0: .4byte _080DC0E4
_080291E4: .4byte _080DC10C
_080291E8: .4byte _080DC134
_080291EC: .4byte 0x0203EBB8
_080291F0: .4byte _080DC410
_080291F4: .4byte _080DC3F0
_080291F8: .4byte _080DC094
_080291FC:
	ldr r5, [sp, #0x10]
	adds r5, #1
	str r5, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r5, r0
	bgt _0802922C
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #4
	rsbs r0, r0, #0
	cmp r0, #0
	bge _08029218
	adds r0, #0xff
_08029218:
	asrs r0, r0, #8
	subs r0, #0x67
	ldr r7, _08029228 @ =0x03002E44
	movs r2, #0xbd
	lsls r2, r2, #4
	adds r1, r7, r2
	strb r0, [r1]
	b _08029674
	.align 2, 0
_08029228: .4byte 0x03002E44
_0802922C:
	movs r3, #0
	str r3, [sp, #0x10]
	b _0802935E
_08029232:
	ldr r7, [sp, #0xc]
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #2
	bgt _0802923E
	b _08029674
_0802923E:
	ldr r0, _08029258 @ =0x0203EBB8
	ldr r0, [r0]
	cmp r0, #2
	bgt _08029248
	b _080294E8
_08029248:
	movs r0, #0
	strb r0, [r7]
	ldr r1, _0802925C @ =_080DC15C
	movs r2, #0
	bl sub_8030224
	b _080294E8
	.align 2, 0
_08029258: .4byte 0x0203EBB8
_0802925C: .4byte _080DC15C
_08029260:
	ldr r1, [sp, #0xc]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0802926C
	b _08029674
_0802926C:
	movs r0, #0
	str r0, [r1, #8]
	ldr r1, _0802927C @ =_080DBEBC
	movs r2, #0
	bl sub_8030224
	ldr r1, _08029280 @ =_080DBEFC
	b _08029336
	.align 2, 0
_0802927C: .4byte _080DBEBC
_08029280: .4byte _080DBEFC
_08029284:
	ldr r3, [sp, #0xc]
	ldr r0, [r3, #8]
	b _08029358
_0802928A:
	ldr r0, _080292B8 @ =0x0203EBB8
	ldr r0, [r0]
	cmp r0, #2
	bgt _080292C8
	movs r0, #0
	ldr r7, [sp, #0xc]
	strb r0, [r7]
	ldr r1, _080292BC @ =_080DC250
	movs r2, #0
	bl sub_8030224
	ldr r1, _080292C0 @ =_080DC278
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	ldr r1, _080292C4 @ =_080DC2A0
_080292AC:
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	b _080294E8
	.align 2, 0
_080292B8: .4byte 0x0203EBB8
_080292BC: .4byte _080DC250
_080292C0: .4byte _080DC278
_080292C4: .4byte _080DC2A0
_080292C8:
	movs r1, #0xb
	str r1, [sp, #0x14]
	b _08029674
_080292CE:
	ldr r2, [sp, #0xc]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #2
	bgt _080292DA
	b _08029674
_080292DA:
	b _080294C8
_080292DC:
	ldr r0, _080292F4 @ =0x0203EBB8
	ldr r0, [r0]
	cmp r0, #0
	bne _0802935E
	ldr r0, _080292F8 @ =0x03002E44
	movs r1, #0
	bl sub_804AED4
	movs r1, #2
	bl sub_803D214
	b _0802935E
	.align 2, 0
_080292F4: .4byte 0x0203EBB8
_080292F8: .4byte 0x03002E44
_080292FC:
	ldr r0, _08029314 @ =0x0203EBB8
	ldr r0, [r0]
	cmp r0, #2
	ble _08029306
	b _080294E0
_08029306:
	ldr r0, _08029318 @ =0x03002E20
	ldr r1, [r0, #0x24]
	movs r2, #2
	orrs r1, r2
	str r1, [r0, #0x24]
	b _080294E0
	.align 2, 0
_08029314: .4byte 0x0203EBB8
_08029318: .4byte 0x03002E20
_0802931C:
	movs r0, #0
	ldr r1, [sp, #0xc]
	str r0, [r1, #4]
	ldr r0, _08029348 @ =0x0203EBB8
	ldr r0, [r0]
	cmp r0, #2
	bgt _08029334
	ldr r1, _0802934C @ =_080DBE44
	movs r0, #0
	movs r2, #0
	bl sub_8030224
_08029334:
	ldr r1, _08029350 @ =_080DBD00
_08029336:
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	ldr r2, [sp, #0x14]
	adds r2, #1
	str r2, [sp, #0x14]
	b _08029674
	.align 2, 0
_08029348: .4byte 0x0203EBB8
_0802934C: .4byte _080DBE44
_08029350: .4byte _080DBD00
_08029354:
	ldr r3, [sp, #0xc]
	ldr r0, [r3, #4]
_08029358:
	cmp r0, #0
	bne _0802935E
	b _08029674
_0802935E:
	ldr r5, [sp, #0x14]
	adds r5, #1
	str r5, [sp, #0x14]
	b _08029674
_08029366:
	ldr r1, _08029388 @ =_080DBAC0
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	movs r4, #0
	ldr r7, [sp, #0xc]
	str r4, [r7, #0xc]
	ldr r1, _0802938C @ =_080DBC68
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	str r4, [r7, #0x10]
	ldr r1, _08029390 @ =_080DBBE0
	b _080292AC
	.align 2, 0
_08029388: .4byte _080DBAC0
_0802938C: .4byte _080DBC68
_08029390: .4byte _080DBBE0
_08029394:
	ldr r1, [sp, #0x10]
	cmp r1, #0xf
	ble _0802939C
	b _080294AA
_0802939C:
	adds r1, #1
	str r1, [sp, #0x10]
	movs r1, #0xb
	ldr r2, [sp, #0x10]
	adds r0, r2, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _080293AE
	adds r0, #0xf
_080293AE:
	asrs r0, r0, #4
	subs r1, r1, r0
	mov r8, r1
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r7, r0, #0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r6, r0, #0
	movs r1, #0
	ldr r3, [sp, #0x10]
	lsls r3, r3, #2
	mov sb, r3
_080293D4:
	movs r4, #0
	adds r0, r1, #0
	adds r0, #9
	adds r5, r1, #1
	mov r1, r8
	adds r3, r0, r1
	lsls r0, r0, #6
	adds r2, r0, r6
	lsls r0, r3, #6
	adds r1, r0, r7
_080293E8:
	cmp r4, #0
	blt _080293FC
	cmp r3, #0
	blt _080293FC
	cmp r4, #0x1d
	bgt _080293FC
	cmp r3, #0x13
	bgt _080293FC
	ldrh r0, [r2]
	strh r0, [r1]
_080293FC:
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #0x1e
	blt _080293E8
	adds r1, r5, #0
	cmp r1, #0xb
	blt _080293D4
	movs r0, #1
	bl map_setBufferDirty
	movs r1, #0xb
	ldr r2, [sp, #0x10]
	adds r0, r2, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _08029420
	adds r0, #0xf
_08029420:
	asrs r0, r0, #4
	subs r0, r1, r0
	lsls r0, r0, #3
	adds r0, #0x58
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	add r0, sb
	lsls r0, r0, #2
	cmp r0, #0
	bge _08029436
	adds r0, #0xf
_08029436:
	asrs r1, r0, #4
	movs r0, #0x14
	subs r0, r0, r1
	str r0, [sp, #0x34]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sl, r0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #0
_08029458:
	adds r5, r0, #4
	adds r0, #1
	mov r8, r0
	adds r4, r5, #0
	lsls r0, r4, #5
	adds r0, #0x11
	ldr r3, [sp, #0x34]
	adds r1, r3, r0
	adds r2, r3, #0
	adds r2, #0x11
	movs r6, #0xd
	lsls r1, r1, #1
	add r1, sl
	lsls r0, r0, #1
	mov r7, sb
	adds r3, r0, r7
_08029478:
	cmp r2, #0
	blt _0802948C
	cmp r5, #0
	blt _0802948C
	cmp r2, #0x1d
	bgt _0802948C
	cmp r4, #0x13
	bgt _0802948C
	ldrh r0, [r3]
	strh r0, [r1]
_0802948C:
	adds r3, #2
	adds r1, #2
	adds r2, #1
	subs r6, #1
	cmp r6, #0
	bge _08029478
	mov r0, r8
	cmp r0, #5
	blt _08029458
	movs r0, #1
	bl map_setBufferDirty
	bl sub_8027F00
	b _08029674
_080294AA:
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	adds r1, #1
	str r1, [sp, #0x14]
	b _08029674
_080294B6:
	ldr r2, [sp, #0xc]
	ldr r0, [r2, #0xc]
	cmp r0, #0
	bne _080294C0
	b _08029674
_080294C0:
	ldr r0, [r2, #0x10]
	cmp r0, #0
	bne _080294C8
	b _08029674
_080294C8:
	ldr r3, [sp, #0x14]
	adds r3, #1
	str r3, [sp, #0x14]
	b _08029674
_080294D0:
	bl sub_802DC88
	cmp r0, #0
	beq _080294E8
	mov r5, sb
	cmp r5, #0
	bne _080294E0
	b _08029674
_080294E0:
	ldr r7, [sp, #0x14]
	adds r7, #1
	str r7, [sp, #0x14]
	b _08029674
_080294E8:
	ldr r0, [sp, #0x14]
	adds r0, #1
	str r0, [sp, #0x14]
	b _08029674
_080294F0:
	movs r4, #0
	ldr r0, _08029574 @ =0x03002E20
	ldr r2, _08029578 @ =0x000007FB
	adds r1, r0, r2
	adds r3, r0, #0
	ldrb r1, [r1]
	cmp r4, r1
	blt _08029502
	b _08029674
_08029502:
	ldr r0, _0802957C @ =0x0000000B
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r1, #9
	ldr r7, _08029580 @ =0x03004F70
	mov sb, r4
_0802950E:
	ldr r0, _08029584 @ =0x03004EA0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _08029598
	ldr r3, [sp, #0x14]
	adds r3, #1
	mov r8, r3
	cmp r2, #0
	beq _08029548
	ldr r0, _08029588 @ =_08102914
	ldrh r1, [r0]
	ldr r5, _0802958C @ =gMPlayTable
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r6, [r0]
	adds r4, r2, #0
_08029534:
	ldr r0, [r5]
	cmp r0, r6
	beq _08029540
	movs r1, #1
	bl m4aMPlayFadeOut
_08029540:
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _08029534
_08029548:
	ldr r0, _08029590 @ =trns_initDefaultOutTransition
	str r0, [r7, #4]
	ldr r0, _08029594 @ =trns_applyDefaultOutTransition
	str r0, [r7]
	mov r5, sb
	str r5, [r7, #8]
	movs r0, #1
	strb r0, [r7, #0xe]
	bl trns_start
	movs r0, #0
	bl pltt_getBuffer
	strh r5, [r0]
	movs r0, #1
	bl pltt_setDirtyFlag
	movs r7, #0
	str r7, [sp, #0x10]
	mov r0, r8
	str r0, [sp, #0x14]
	b _08029674
	.align 2, 0
_08029574: .4byte 0x03002E20
_08029578: .4byte 0x000007FB
_0802957C: .4byte 0x0000000B
_08029580: .4byte 0x03004F70
_08029584: .4byte 0x03004EA0
_08029588: .4byte _08102914
_0802958C: .4byte gMPlayTable
_08029590: .4byte trns_initDefaultOutTransition
_08029594: .4byte trns_applyDefaultOutTransition
_08029598:
	adds r4, #1
	ldr r5, _080295A8 @ =0x000007FB
	adds r0, r3, r5
	ldrb r0, [r0]
	cmp r4, r0
	blt _0802950E
	b _08029674
	.align 2, 0
_080295A8: .4byte 0x000007FB
_080295AC:
	ldr r0, _080295F0 @ =0x03004F70
	ldrb r1, [r0, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08029674
	ldr r6, _080295F4 @ =0x0203EC30
	ldrb r0, [r6]
	bl track_getCup
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r7, #0
	ldr r1, _080295F8 @ =0x03002E44
	ldr r3, _080295FC @ =0x000007D7
	adds r0, r1, r3
	ldrb r1, [r0]
	cmp r1, #1
	bhi _080295D4
	movs r7, #1
_080295D4:
	cmp r2, #3
	ble _080295E4
	ldr r0, _08029600 @ =0x0203EBB8
	ldr r0, [r0]
	cmp r0, #2
	bgt _080295E4
	cmp r1, #1
	bls _08029608
_080295E4:
	ldr r0, _080295F8 @ =0x03002E44
	bl sub_8002BFC
	ldr r4, _08029604 @ =spm_main
	b _08029626
	.align 2, 0
_080295F0: .4byte 0x03004F70
_080295F4: .4byte 0x0203EC30
_080295F8: .4byte 0x03002E44
_080295FC: .4byte 0x000007D7
_08029600: .4byte 0x0203EBB8
_08029604: .4byte spm_main
_08029608:
	ldr r5, _08029648 @ =0x03002E44
	ldr r1, _0802964C @ =0x000007DC
	adds r0, r5, r1
	ldrb r5, [r0]
	ldr r0, _08029650 @ =0x0203EBBC
	ldr r4, [r0]
	ldrb r0, [r6]
	bl track_isRetroTrack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_802BF78
	ldr r4, _08029654 @ =sub_802B630
_08029626:
	cmp r7, #0
	beq _08029660
	movs r0, #1
	bl sub_80152D4
	adds r0, r4, #0
	bl sub_8015330
	ldr r0, _08029658 @ =sub_80149AC
	ldr r2, _0802965C @ =0x03002E20
	str r0, [r2]
	ldrb r0, [r2, #8]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r2, #8]
	b _08029710
	.align 2, 0
_08029648: .4byte 0x03002E44
_0802964C: .4byte 0x000007DC
_08029650: .4byte 0x0203EBBC
_08029654: .4byte sub_802B630
_08029658: .4byte sub_80149AC
_0802965C: .4byte 0x03002E20
_08029660:
	ldr r0, _08029670 @ =0x03002E20
	str r4, [r0]
	ldrb r1, [r0, #8]
	adds r1, #1
	movs r2, #7
	ands r1, r2
	strb r1, [r0, #8]
	b _08029710
	.align 2, 0
_08029670: .4byte 0x03002E20
_08029674:
	ldr r4, _080296F8 @ =0x03002E20
	ldr r0, [r4, #0x24]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0x24]
	ldr r2, [sp, #0x14]
	cmp r2, #0xf
	bgt _08029696
	ldr r3, _080296FC @ =0x0000057C
	adds r1, r4, r3
	ldrh r0, [r1, #4]
	movs r0, #0xbd
	lsls r0, r0, #6
	strh r0, [r1, #4]
	ldrh r0, [r1, #6]
	ldr r0, _08029700 @ =0x0000060A
	strh r0, [r1, #6]
_08029696:
	ldr r5, [sp, #0x18]
	lsls r0, r5, #0x10
	movs r7, #0x28
	orrs r0, r7
	str r0, [sp, #8]
	ldr r0, _08029704 @ =_080C9944
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	ldr r0, [r4, #0x10]
	adds r0, #1
	str r0, [r4, #0x10]
	ldr r1, _08029708 @ =0x03002E44
	ldr r2, _0802970C @ =0x00000724
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r3, [sp, #0x14]
	subs r3, #1
	str r3, [sp, #0x2c]
	cmp r0, #0
	beq _080296DC
_080296CA:
	ldr r4, [r0, #0x3c]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _080296D6
	bl _call_via_r1
_080296D6:
	adds r0, r4, #0
	cmp r0, #0
	bne _080296CA
_080296DC:
	ldr r0, _08029708 @ =0x03002E44
	bl sub_804C0A8
	ldr r0, _08029708 @ =0x03002E44
	bl sub_8049B0C
	ldr r0, _08029708 @ =0x03002E44
	bl sub_8049D78
	ldr r0, _08029708 @ =0x03002E44
	bl sub_804C38C
	bl _08028ED2
	.align 2, 0
_080296F8: .4byte 0x03002E20
_080296FC: .4byte 0x0000057C
_08029700: .4byte 0x0000060A
_08029704: .4byte _080C9944
_08029708: .4byte 0x03002E44
_0802970C: .4byte 0x00000724
_08029710:
	movs r1, #7
	rsbs r1, r1, #0
	movs r0, #1
	bl irq_updateMask
	movs r5, #0
	ldr r4, _08029754 @ =0x03002E20
	movs r0, #1
	movs r1, #2
	rsbs r1, r1, #0
	bl irq_updateMask
	str r5, [r4, #0xc]
	movs r0, #2
	ldr r1, _08029758 @ =0x00010001
	bl irq_updateMask
	ldr r1, _0802975C @ =main_dummyIrqHandler
	movs r0, #1
	bl irq_setHandler
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r5, [r0]
	movs r0, #1
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08029754: .4byte 0x03002E20
_08029758: .4byte 0x00010001
_0802975C: .4byte main_dummyIrqHandler

	thumb_func_start sub_8029760
sub_8029760: @ 0x08029760
	push {r4, r5, r6, lr}
	ldr r4, _08029788 @ =0x03002E20
	adds r6, r4, #0
	adds r6, #0x24
	ldr r0, _0802978C @ =0x00000848
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_80312E8
	ldr r0, _08029790 @ =0x00000BC8
	adds r4, r4, r0
	ldr r2, [r4]
	movs r0, #0x14
	ldrsh r1, [r5, r0]
	adds r0, r6, #0
	bl sub_804AD00
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08029788: .4byte 0x03002E20
_0802978C: .4byte 0x00000848
_08029790: .4byte 0x00000BC8

	thumb_func_start sub_08029794
sub_08029794: @ 0x08029794
	movs r1, #0xd8
	strh r1, [r0, #0x20]
	movs r1, #0x48
	strh r1, [r0, #0x22]
	ldrh r2, [r0, #0x34]
	movs r1, #1
	orrs r1, r2
	strh r1, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start sub_80297A8
sub_80297A8: @ 0x080297A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	str r1, [sp]
	adds r7, r2, #0
	mov sb, r3
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sl, r0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov ip, r0
	movs r0, #0
	cmp r0, sb
	bge _08029828
_080297DA:
	adds r1, r0, #1
	str r1, [sp, #4]
	cmp r7, #0
	ble _08029822
	ldr r6, [sp]
	adds r0, r6, r0
	ldr r1, [sp, #0x2c]
	adds r5, r0, r1
	lsls r2, r5, #5
	lsls r0, r0, #5
	add r0, r8
	ldr r1, [sp, #0x28]
	add r1, r8
	adds r2, r1, r2
	adds r4, r7, #0
	lsls r2, r2, #1
	add r2, sl
	lsls r0, r0, #1
	mov r6, ip
	adds r3, r0, r6
_08029802:
	cmp r1, #0
	blt _08029816
	cmp r5, #0
	blt _08029816
	cmp r1, #0x1d
	bgt _08029816
	cmp r5, #0x13
	bgt _08029816
	ldrh r0, [r3]
	strh r0, [r2]
_08029816:
	adds r3, #2
	adds r2, #2
	adds r1, #1
	subs r4, #1
	cmp r4, #0
	bne _08029802
_08029822:
	ldr r0, [sp, #4]
	cmp r0, sb
	blt _080297DA
_08029828:
	movs r0, #1
	bl map_setBufferDirty
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08029840
sub_08029840: @ 0x08029840
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08029858 @ =0x0203EBCC
	ldr r0, [r0]
	ldr r1, _0802985C @ =0x0000061C
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08029860
	movs r0, #1
	b _080298A4
	.align 2, 0
_08029858: .4byte 0x0203EBCC
_0802985C: .4byte 0x0000061C
_08029860:
	ldr r0, _080298AC @ =0x03002E20
	ldr r6, [r0, #0x10]
	movs r0, #1
	bl pltt_getBuffer
	adds r2, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r2, r2, r0
	ldr r4, _080298B0 @ =_080AAD9C
	adds r1, r4, #0
	adds r1, #0x40
	movs r5, #0x20
	str r5, [sp]
	adds r0, r4, #0
	adds r3, r6, #0
	bl sub_802650C
	movs r0, #0
	bl pltt_getBuffer
	adds r2, r0, #0
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r2, r2, r1
	adds r0, r4, #0
	subs r0, #0x60
	subs r4, #0x20
	str r5, [sp]
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_802650C
	movs r0, #0
_080298A4:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080298AC: .4byte 0x03002E20
_080298B0: .4byte _080AAD9C

	thumb_func_start sub_080298B4
sub_080298B4: @ 0x080298B4
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r0, _08029924 @ =0x0203EBCC
	ldr r4, [r0]
	movs r0, #0xca
	lsls r0, r0, #1
	adds r5, r4, r0
	movs r1, #0xd6
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #0
	bl sub_800EB74
	bl dmaq_getVBlankDmaQueue
	movs r1, #0xba
	lsls r1, r1, #3
	adds r4, r4, r1
	ldr r1, [r4]
	ldr r2, _08029928 @ =0x06012400
	ldr r3, _0802992C @ =0x80000100
	bl dmaq_enqueue
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0802991A
	ldrh r2, [r5, #4]
	ldr r1, _08029930 @ =0xFFFF0000
	ldr r0, [sp, #8]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #8]
	ldrh r1, [r5, #6]
	lsls r1, r1, #0x10
	ldr r2, _08029934 @ =0x0000FFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	ldr r0, [r5]
	movs r4, #8
	ldrsh r2, [r5, r4]
	movs r1, #0xa
	ldrsh r3, [r5, r1]
	movs r4, #0xc
	ldrsh r1, [r5, r4]
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	add r1, sp, #8
	bl oam_renderCellData
_0802991A:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08029924: .4byte 0x0203EBCC
_08029928: .4byte 0x06012400
_0802992C: .4byte 0x80000100
_08029930: .4byte 0xFFFF0000
_08029934: .4byte 0x0000FFFF

	thumb_func_start sub_08029938
sub_08029938: @ 0x08029938
	push {r4, lr}
	ldr r0, _08029978 @ =0x0203EBCC
	ldr r0, [r0]
	movs r2, #0xd6
	lsls r2, r2, #1
	adds r1, r0, r2
	ldr r3, _0802997C @ =0x0203EBB8
	ldr r0, [r3]
	movs r2, #2
	cmp r0, #2
	bgt _08029950
	movs r2, #1
_08029950:
	strb r2, [r1, #1]
	movs r0, #1
	strh r0, [r1, #2]
	ldr r0, [r3]
	cmp r0, #2
	bgt _08029970
	ldr r4, _08029980 @ =_080DBC48
	ldr r0, _08029984 @ =0x0203EBBC
	ldr r0, [r0]
	bl sub_800EDB0
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r0, [r0]
	bl m4aSongNumStart
_08029970:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029978: .4byte 0x0203EBCC
_0802997C: .4byte 0x0203EBB8
_08029980: .4byte _080DBC48
_08029984: .4byte 0x0203EBBC

	thumb_func_start sub_08029988
sub_08029988: @ 0x08029988
	ldr r0, _08029994 @ =0x0203EBCC
	ldr r1, [r0]
	movs r0, #1
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_08029994: .4byte 0x0203EBCC

	thumb_func_start sub_08029998
sub_08029998: @ 0x08029998
	ldr r0, _080299C8 @ =0x0203EBCC
	ldr r0, [r0]
	mov ip, r0
	movs r1, #0xe0
	lsls r1, r1, #1
	add r1, ip
	ldr r0, _080299CC @ =_080C9974
	str r0, [r1]
	movs r3, #0
	movs r2, #0
	strh r2, [r1, #4]
	movs r0, #0xd2
	strh r0, [r1, #6]
	adds r0, #0x2e
	strh r0, [r1, #0xa]
	strh r0, [r1, #8]
	strh r2, [r1, #0x10]
	adds r0, #0xd8
	add r0, ip
	strb r3, [r0]
	ldr r0, _080299D0 @ =0x000001D9
	add r0, ip
	strb r3, [r0]
	bx lr
	.align 2, 0
_080299C8: .4byte 0x0203EBCC
_080299CC: .4byte _080C9974
_080299D0: .4byte 0x000001D9

	thumb_func_start sub_080299D4
sub_080299D4: @ 0x080299D4
	ldr r1, [r0, #0x68]
	adds r1, #1
	str r1, [r0, #0x68]
	ldr r2, _080299EC @ =_080DBE34
	ldr r0, _080299F0 @ =0x0203EBB8
	ldr r0, [r0]
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r1, r0
	bgt _080299F4
	movs r0, #0
	b _080299F6
	.align 2, 0
_080299EC: .4byte _080DBE34
_080299F0: .4byte 0x0203EBB8
_080299F4:
	movs r0, #1
_080299F6:
	bx lr

	thumb_func_start sub_080299F8
sub_080299F8: @ 0x080299F8
	push {r4, lr}
	ldr r0, _08029A38 @ =0x0203EBCC
	ldr r0, [r0]
	movs r1, #0xee
	lsls r1, r1, #1
	adds r4, r0, r1
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	bgt _08029A3C
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #5
	adds r1, r1, r0
	cmp r1, #0
	bge _08029A24
	adds r1, #0x1f
_08029A24:
	asrs r1, r1, #5
	adds r1, #1
	movs r0, #0xc8
	lsls r0, r0, #7
	bl __divsi3
	strh r0, [r4, #0xa]
	strh r0, [r4, #8]
	movs r0, #0
	b _08029A42
	.align 2, 0
_08029A38: .4byte 0x0203EBCC
_08029A3C:
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #1
_08029A42:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08029A48
sub_08029A48: @ 0x08029A48
	ldr r0, _08029A58 @ =0x03002E20
	ldr r0, [r0, #0x24]
	movs r1, #2
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_08029A58: .4byte 0x03002E20

	thumb_func_start sub_08029A5C
sub_08029A5C: @ 0x08029A5C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r5, [r6, #0x68]
	adds r5, #1
	cmp r5, #0x20
	bgt _08029A90
	ldr r4, _08029A88 @ =0x03002E20
	movs r0, #5
	str r0, [sp]
	movs r0, #0xa
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0x20
	bl sub_800E930
	adds r0, #0x49
	ldr r1, _08029A8C @ =0x00000BF4
	adds r4, r4, r1
	strb r0, [r4]
	movs r0, #0
	b _08029A92
	.align 2, 0
_08029A88: .4byte 0x03002E20
_08029A8C: .4byte 0x00000BF4
_08029A90:
	movs r0, #1
_08029A92:
	str r5, [r6, #0x68]
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08029A9C
sub_08029A9C: @ 0x08029A9C
	push {lr}
	ldr r1, _08029AC0 @ =_080DC300
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	ldr r1, _08029AC4 @ =_080DC328
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	ldr r1, _08029AC8 @ =_080DC350
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	pop {r0}
	bx r0
	.align 2, 0
_08029AC0: .4byte _080DC300
_08029AC4: .4byte _080DC328
_08029AC8: .4byte _080DC350

	thumb_func_start sub_08029ACC
sub_08029ACC: @ 0x08029ACC
	ldr r0, _08029AD8 @ =0x0203EBCC
	ldr r1, [r0]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_08029AD8: .4byte 0x0203EBCC

	thumb_func_start sub_08029ADC
sub_08029ADC: @ 0x08029ADC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x68]
	ldr r0, _08029B04 @ =0x03002E20
	adds r0, #0x24
	movs r1, #3
	bl sub_804AED4
	adds r1, r0, #0
	adds r4, #1
	cmp r4, #0x20
	bgt _08029B08
	lsls r0, r4, #9
	movs r2, #0xc0
	lsls r2, r2, #8
	adds r0, r0, r2
	adds r1, #0x56
	strh r0, [r1]
	movs r0, #0
	b _08029B0A
	.align 2, 0
_08029B04: .4byte 0x03002E20
_08029B08:
	movs r0, #1
_08029B0A:
	str r4, [r5, #0x68]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08029B14
sub_08029B14: @ 0x08029B14
	push {r4, r5, lr}
	ldr r5, [r0, #0x68]
	ldr r0, _08029B3C @ =0x03002E20
	adds r0, #0x24
	movs r1, #3
	bl sub_804AED4
	adds r4, r0, #0
	movs r1, #0
	bl sub_803D950
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_803D854
	movs r0, #1
	str r0, [r4, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08029B3C: .4byte 0x03002E20

	thumb_func_start sub_08029B40
sub_08029B40: @ 0x08029B40
	push {r4, lr}
	ldr r1, [r0, #0x68]
	ldr r0, _08029B6C @ =0x0203EBCC
	ldr r4, [r0]
	lsls r0, r1, #4
	movs r2, #0x86
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r4, r4, r0
	ldr r0, _08029B70 @ =0x03002E20
	adds r0, #0x24
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_804AED4
	ldr r0, [r0, #8]
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029B6C: .4byte 0x0203EBCC
_08029B70: .4byte 0x03002E20

	thumb_func_start sub_08029B74
sub_08029B74: @ 0x08029B74
	push {r4, r5, lr}
	sub sp, #4
	ldr r1, [r0, #0x68]
	ldr r0, _08029BBC @ =0x0203EBCC
	ldr r2, [r0]
	lsls r0, r1, #4
	movs r3, #0x86
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r4, r2, r0
	ldr r0, _08029BC0 @ =0x03002E20
	adds r0, #0x24
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_804AED4
	adds r5, r0, #0
	ldr r0, [r4, #0xc]
	adds r2, r0, #1
	str r2, [r4, #0xc]
	cmp r2, #0x20
	bgt _08029BC4
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #9
	str r1, [sp]
	movs r1, #0
	movs r3, #0x20
	bl sub_800E930
	lsls r0, r0, #0xb
	ldr r1, [r4]
	adds r1, r1, r0
	str r1, [r5, #8]
	movs r0, #0
	b _08029BCA
	.align 2, 0
_08029BBC: .4byte 0x0203EBCC
_08029BC0: .4byte 0x03002E20
_08029BC4:
	ldr r0, [r4]
	str r0, [r5, #8]
	movs r0, #1
_08029BCA:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08029BD4
sub_08029BD4: @ 0x08029BD4
	push {r4, r5, lr}
	sub sp, #4
	ldr r1, [r0, #0x68]
	ldr r0, _08029C20 @ =0x0203EBCC
	ldr r2, [r0]
	lsls r0, r1, #4
	movs r3, #0x86
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r4, r2, r0
	ldr r0, _08029C24 @ =0x03002E20
	adds r0, #0x24
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_804AED4
	adds r5, r0, #0
	ldr r0, [r4, #0xc]
	adds r2, r0, #1
	str r2, [r4, #0xc]
	cmp r2, #0x20
	bgt _08029C28
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #9
	str r1, [sp]
	movs r1, #0
	movs r3, #0x20
	bl sub_800E930
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r5, #8]
	movs r0, #0
	b _08029C2E
	.align 2, 0
_08029C20: .4byte 0x0203EBCC
_08029C24: .4byte 0x03002E20
_08029C28:
	ldr r0, [r4]
	str r0, [r5, #8]
	movs r0, #1
_08029C2E:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8029C38
sub_8029C38: @ 0x08029C38
	push {r4, r5, lr}
	ldr r2, _08029C64 @ =0x03004F70
	ldrb r4, [r2, #0xf]
	ldr r1, _08029C68 @ =0x04000040
	movs r0, #0xf0
	strh r0, [r1]
	adds r5, r2, #0
	cmp r4, #8
	bgt _08029C70
	ldr r2, _08029C6C @ =0x04000044
	lsls r0, r4, #3
	subs r0, r0, r4
	movs r1, #0x50
	subs r1, r1, r0
	lsls r1, r1, #8
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r0, #0x50
	orrs r1, r0
	strh r1, [r2]
	b _08029C88
	.align 2, 0
_08029C64: .4byte 0x03004F70
_08029C68: .4byte 0x04000040
_08029C6C: .4byte 0x04000044
_08029C70:
	ldr r3, _08029CB0 @ =0x04000044
	adds r1, r4, #0
	subs r1, #8
	lsls r2, r1, #1
	adds r2, r2, r1
	movs r0, #0x18
	subs r0, r0, r2
	lsls r0, r0, #8
	lsls r1, r1, #2
	adds r1, #0x80
	orrs r0, r1
	strh r0, [r3]
_08029C88:
	ldr r1, _08029CB4 @ =0x04000048
	movs r0, #0x3e
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x31
	strh r0, [r1]
	cmp r4, #8
	bne _08029CA0
	ldrb r1, [r5, #0xc]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0xc]
_08029CA0:
	cmp r4, #0x10
	bne _08029CA8
	movs r0, #0
	str r0, [r5]
_08029CA8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08029CB0: .4byte 0x04000044
_08029CB4: .4byte 0x04000048

	thumb_func_start sub_8029CB8
sub_8029CB8: @ 0x08029CB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	mov sl, r1
	str r2, [sp]
	cmp r3, #0
	beq _08029D04
	movs r3, #0
	movs r2, #0
	ldr r0, _08029D24 @ =0x03002E20
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	bgt _08029D04
	cmp r0, #0
	blt _08029D04
	ldr r0, [sp]
	ldr r1, [r0, #8]
	ldrb r0, [r1]
	cmp r0, #0
	beq _08029CFA
_08029CEE:
	adds r3, #1
	adds r2, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08029CEE
_08029CFA:
	movs r0, #0x1b
	subs r0, r0, r3
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r7, r0, #1
_08029D04:
	ldr r0, _08029D24 @ =0x03002E20
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	bgt _08029D9C
	cmp r0, #0
	blt _08029D9C
	ldr r2, [sp]
	ldrb r4, [r2]
	cmp r4, #0xff
	bne _08029D28
	adds r7, #1
	b _08029D9C
	.align 2, 0
_08029D24: .4byte 0x03002E20
_08029D28:
	cmp r4, #0xfe
	bne _08029D30
	subs r7, #1
	b _08029D9C
_08029D30:
	movs r0, #0
	adds r1, r7, #0
	mov r2, sl
	bl map_getBufferPtr2d
	ldr r6, _08029E28 @ =_080DC82C
	lsls r1, r4, #3
	adds r1, r1, r6
	ldrh r1, [r1]
	movs r2, #0xd0
	lsls r2, r2, #8
	adds r5, r2, #0
	orrs r1, r5
	strh r1, [r0]
	adds r0, r7, #1
	mov sb, r0
	movs r0, #0
	mov r1, sb
	mov r2, sl
	bl map_getBufferPtr2d
	lsls r4, r4, #2
	adds r1, r4, #1
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrh r1, [r1]
	orrs r1, r5
	strh r1, [r0]
	movs r1, #1
	add r1, sl
	mov r8, r1
	movs r0, #0
	adds r1, r7, #0
	mov r2, r8
	bl map_getBufferPtr2d
	adds r1, r4, #2
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrh r1, [r1]
	orrs r1, r5
	strh r1, [r0]
	movs r0, #0
	mov r1, sb
	mov r2, r8
	bl map_getBufferPtr2d
	adds r4, #3
	lsls r4, r4, #1
	adds r4, r4, r6
	ldrh r1, [r4]
	orrs r1, r5
	strh r1, [r0]
	adds r7, #3
_08029D9C:
	ldr r0, _08029E2C @ =0x03002E20
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #2
	bgt _08029E18
	cmp r0, #0
	blt _08029E18
	movs r6, #0
	mov r8, r6
	ldr r0, [sp]
	ldr r1, [r0, #8]
	ldrb r0, [r1]
	cmp r0, #0
	beq _08029E18
_08029DBC:
	adds r0, r1, r6
	ldrb r0, [r0]
	subs r0, #0x20
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0
	cmp r1, #0x5e
	bhi _08029DCE
	adds r0, r1, #0
_08029DCE:
	ldr r1, _08029E30 @ =_080DC59C
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r4, [r0]
	mov r1, r8
	adds r5, r7, r1
	movs r0, #0
	adds r1, r5, #0
	mov r2, sl
	bl map_getBufferPtr2d
	movs r1, #0xe0
	lsls r1, r1, #8
	adds r2, r1, #0
	adds r1, r4, #0
	orrs r1, r2
	strh r1, [r0]
	movs r0, #0
	adds r1, r5, #0
	mov r2, sl
	adds r2, #1
	bl map_getBufferPtr2d
	adds r4, #0x20
	ldr r2, _08029E34 @ =0xFFFFE000
	adds r1, r2, #0
	orrs r4, r1
	strh r4, [r0]
	movs r0, #1
	add r8, r0
	adds r6, #1
	ldr r2, [sp]
	ldr r1, [r2, #8]
	adds r0, r1, r6
	ldrb r0, [r0]
	cmp r0, #0
	bne _08029DBC
_08029E18:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029E28: .4byte _080DC82C
_08029E2C: .4byte 0x03002E20
_08029E30: .4byte _080DC59C
_08029E34: .4byte 0xFFFFE000

	thumb_func_start sub_8029E38
sub_8029E38: @ 0x08029E38
	push {r4, lr}
	sub sp, #4
	ldr r2, _08029E74 @ =_080DDE58
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r2, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [r2, #0xc]
	adds r4, r1, r0
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	movs r2, #0x10
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _08029E78 @ =0x01000040
	mov r0, sp
	bl CpuFastSet
	ldrb r0, [r4, #2]
	cmp r0, #1
	beq _08029E94
	cmp r0, #1
	bgt _08029E7C
	cmp r0, #0
	beq _08029E86
	b _08029F12
	.align 2, 0
_08029E74: .4byte _080DDE58
_08029E78: .4byte 0x01000040
_08029E7C:
	cmp r0, #2
	beq _08029EBC
	cmp r0, #3
	beq _08029EE2
	b _08029F12
_08029E86:
	ldr r2, [r4, #4]
	movs r0, #0xa
	movs r1, #0x11
	movs r3, #1
	bl sub_8029CB8
	b _08029F12
_08029E94:
	ldr r0, _08029EB8 @ =0x03002E20
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #2
	bgt _08029F12
	cmp r0, #0
	blt _08029F12
	ldr r2, [r4, #4]
	movs r0, #1
	movs r1, #0x10
	movs r3, #0
	bl sub_8029CB8
	ldr r2, [r4, #8]
	movs r0, #8
	b _08029ED8
	.align 2, 0
_08029EB8: .4byte 0x03002E20
_08029EBC:
	ldr r2, [r4, #4]
	movs r0, #0xa
	movs r1, #0x10
	movs r3, #0
	bl sub_8029CB8
	ldr r2, [r4, #8]
	movs r0, #4
	movs r1, #0x12
	movs r3, #0
	bl sub_8029CB8
	ldr r2, [r4, #0xc]
	movs r0, #0x10
_08029ED8:
	movs r1, #0x12
	movs r3, #0
	bl sub_8029CB8
	b _08029F12
_08029EE2:
	ldr r2, [r4, #4]
	movs r0, #2
	movs r1, #0x10
	movs r3, #0
	bl sub_8029CB8
	ldr r2, [r4, #8]
	movs r0, #0xe
	movs r1, #0x10
	movs r3, #0
	bl sub_8029CB8
	ldr r2, [r4, #0xc]
	movs r0, #6
	movs r1, #0x12
	movs r3, #0
	bl sub_8029CB8
	ldr r2, [r4, #0x10]
	movs r0, #0x12
	movs r1, #0x12
	movs r3, #0
	bl sub_8029CB8
_08029F12:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08029F1C
sub_08029F1C: @ 0x08029F1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _08029F50 @ =0x0203EBD8
	ldr r0, [r0]
	str r0, [sp]
	ldr r1, _08029F54 @ =_080DDE58
	ldr r0, [r0, #8]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r0, [r0]
	str r0, [sp, #8]
	ldr r1, [sp, #4]
	ldr r1, [r1, #4]
	mov sb, r1
	ldr r2, [sp, #4]
	ldrb r3, [r2, #8]
	movs r2, #0
	ldrb r0, [r0]
	ldr r1, [sp, #8]
	b _08029F5C
	.align 2, 0
_08029F50: .4byte 0x0203EBD8
_08029F54: .4byte _080DDE58
_08029F58:
	adds r2, #1
	ldrb r0, [r1]
_08029F5C:
	adds r1, #1
	cmp r0, #0
	bne _08029F58
	mov ip, r2
	movs r5, #0
	cmp r5, ip
	blt _08029F6C
	b _0802A0C2
_08029F6C:
	movs r0, #0xf
	ands r0, r3
	str r0, [sp, #0xc]
	mov sl, r5
_08029F74:
	lsls r0, r5, #3
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, #0x14
	ldr r1, [sp]
	adds r4, r1, r0
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq _08029F90
	cmp r2, #1
	beq _0802A02C
	adds r5, #1
	mov r8, r5
	b _0802A0BA
_08029F90:
	ldr r3, [sp, #8]
	adds r0, r3, r5
	ldrb r0, [r0]
	subs r0, #0x40
	lsls r0, r0, #2
	ldr r1, _0802A024 @ =_080DC86C
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #4]
	mov r2, ip
	subs r0, r2, r5
	subs r1, r0, #1
	mov r2, sb
	ldrh r3, [r2]
	adds r2, #2
	adds r6, r0, #0
	adds r7, r2, #0
	cmp r3, r1
	bgt _08029FBE
	subs r1, r3, #1
_08029FBE:
	adds r3, r5, #1
	mov r8, r3
	cmp r1, #0
	ble _08029FD0
	adds r0, r1, #0
_08029FC8:
	adds r2, #6
	subs r0, #1
	cmp r0, #0
	bne _08029FC8
_08029FD0:
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, #0x14
	strh r0, [r4, #6]
	subs r0, r6, #1
	mov r2, sb
	ldrh r1, [r2]
	adds r2, r7, #0
	cmp r1, r0
	bgt _08029FE6
	subs r0, r1, #1
_08029FE6:
	cmp r0, #0
	ble _08029FF2
_08029FEA:
	adds r2, #6
	subs r0, #1
	cmp r0, #0
	bne _08029FEA
_08029FF2:
	ldrh r0, [r2, #2]
	ldr r2, _0802A028 @ =0x000001FF
	adds r1, r2, #0
	ands r1, r0
	adds r0, r1, #0
	cmp r0, #0xff
	bls _0802A006
	adds r0, r1, #0
	eors r0, r2
	rsbs r0, r0, #0
_0802A006:
	adds r0, #0x58
	strh r0, [r4, #8]
	movs r0, #8
	strh r0, [r4, #0xa]
	mov r3, sl
	strh r3, [r4, #0xe]
	strh r3, [r4, #0xc]
	mov r0, sl
	str r0, [r4, #0x10]
	strh r0, [r4, #0x14]
	strb r5, [r4, #0x18]
	mov r1, ip
	strb r1, [r4, #0x19]
	b _0802A0BA
	.align 2, 0
_0802A024: .4byte _080DC86C
_0802A028: .4byte 0x000001FF
_0802A02C:
	ldr r2, [sp, #8]
	adds r0, r2, r5
	ldrb r0, [r0]
	subs r0, #0x40
	lsls r0, r0, #2
	ldr r3, _0802A0F8 @ =_080DC86C
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r4]
	mov r1, ip
	subs r0, r1, r5
	subs r1, r0, #1
	mov r3, sb
	ldrh r2, [r3]
	adds r3, #2
	adds r6, r0, #0
	cmp r2, r1
	bgt _0802A052
	subs r1, r2, #1
_0802A052:
	adds r0, r5, #1
	mov r8, r0
	cmp r1, #0
	ble _0802A064
	adds r0, r1, #0
_0802A05C:
	adds r3, #6
	subs r0, #1
	cmp r0, #0
	bne _0802A05C
_0802A064:
	ldrh r0, [r3, #2]
	ldr r1, _0802A0FC @ =0x000001FF
	adds r2, r1, #0
	ands r2, r0
	adds r0, r2, #0
	cmp r0, #0xff
	bls _0802A078
	adds r0, r2, #0
	eors r0, r1
	rsbs r0, r0, #0
_0802A078:
	adds r1, r0, #0
	adds r1, #0x58
	strh r1, [r4, #4]
	ldr r0, _0802A100 @ =0x0000FFD8
	strh r0, [r4, #6]
	strh r1, [r4, #8]
	mov r1, sb
	subs r0, r6, #1
	ldrh r2, [r1]
	adds r1, #2
	cmp r2, r0
	bgt _0802A092
	subs r0, r2, #1
_0802A092:
	cmp r0, #0
	ble _0802A09E
_0802A096:
	adds r1, #6
	subs r0, #1
	cmp r0, #0
	bne _0802A096
_0802A09E:
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, #0x14
	strh r0, [r4, #0xa]
	mov r1, sl
	strh r1, [r4, #0xe]
	strh r1, [r4, #0xc]
	mov r2, sl
	str r2, [r4, #0x10]
	movs r0, #5
	strh r0, [r4, #0x14]
	strb r5, [r4, #0x18]
	mov r3, ip
	strb r3, [r4, #0x19]
_0802A0BA:
	mov r5, r8
	cmp r5, ip
	bge _0802A0C2
	b _08029F74
_0802A0C2:
	ldr r1, [sp]
	movs r2, #0x9f
	lsls r2, r2, #2
	adds r0, r1, r2
	mov r3, ip
	str r3, [r0]
	ldr r0, [sp, #4]
	ldr r3, [r0, #0xc]
	ldrb r4, [r0, #9]
	adds r2, #4
	adds r1, r1, r2
	movs r0, #0
	str r0, [r1]
	cmp r4, #0
	beq _0802A11C
	adds r2, r1, #0
	movs r6, #0xf
	adds r5, r4, #0
_0802A0E6:
	ldrb r0, [r3]
	adds r1, r6, #0
	ands r1, r0
	cmp r1, #0
	beq _0802A104
	cmp r1, #1
	beq _0802A10E
	b _0802A114
	.align 2, 0
_0802A0F8: .4byte _080DC86C
_0802A0FC: .4byte 0x000001FF
_0802A100: .4byte 0x0000FFD8
_0802A104:
	ldrb r1, [r3, #1]
	ldr r0, [r2]
	adds r0, r0, r1
	adds r0, #0x50
	b _0802A112
_0802A10E:
	ldr r0, [r2]
	adds r0, #0x80
_0802A112:
	str r0, [r2]
_0802A114:
	adds r3, #0x14
	subs r5, #1
	cmp r5, #0
	bne _0802A0E6
_0802A11C:
	ldr r3, [sp]
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, [r1]
	adds r0, #0x32
	str r0, [r1]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_802A13C
sub_802A13C: @ 0x0802A13C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r1, #0x14
	ldrsh r0, [r4, r1]
	cmp r0, #0xb
	bls _0802A14C
	b _0802A3AC
_0802A14C:
	lsls r0, r0, #2
	ldr r1, _0802A158 @ =_0802A15C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802A158: .4byte _0802A15C
_0802A15C: @ jump table
	.4byte _0802A18C @ case 0
	.4byte _0802A1AA @ case 1
	.4byte _0802A20C @ case 2
	.4byte _0802A258 @ case 3
	.4byte _0802A27C @ case 4
	.4byte _0802A2E0 @ case 5
	.4byte _0802A2FC @ case 6
	.4byte _0802A3AC @ case 7
	.4byte _0802A32C @ case 8
	.4byte _0802A334 @ case 9
	.4byte _0802A350 @ case 10
	.4byte _0802A3AC @ case 11
_0802A18C:
	ldrh r0, [r4, #0x16]
	adds r0, #1
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #1
	adds r1, r1, r2
	cmp r0, r1
	bgt _0802A1A2
	b _0802A3AC
_0802A1A2:
	movs r0, #0
	strh r0, [r4, #0x16]
	movs r0, #1
	b _0802A3AA
_0802A1AA:
	ldrh r0, [r4, #0x16]
	adds r0, #1
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc
	bgt _0802A204
	movs r2, #0x16
	ldrsh r0, [r4, r2]
	lsls r0, r0, #0xe
	movs r1, #0xc
	bl __divsi3
	ldr r1, _0802A1FC @ =gSinTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802A1D0
	adds r0, #0x3f
_0802A1D0:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	movs r0, #0xa
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x18]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r2, _0802A200 @ =0xFFFFFF00
	adds r1, r1, r2
	adds r0, r1, #0
	muls r0, r3, r0
	asrs r0, r0, #0xf
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	strh r0, [r4, #4]
	b _0802A3AC
	.align 2, 0
_0802A1FC: .4byte gSinTable
_0802A200: .4byte 0xFFFFFF00
_0802A204:
	movs r0, #0
	strh r0, [r4, #0x16]
	movs r0, #2
	b _0802A3AA
_0802A20C:
	ldrh r0, [r4, #0x16]
	adds r0, #1
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	bgt _0802A250
	movs r1, #0x16
	ldrsh r0, [r4, r1]
	ldr r3, _0802A248 @ =gSinTable
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802A22A
	adds r0, #0x3f
_0802A22A:
	asrs r0, r0, #6
	movs r2, #0x80
	lsls r2, r2, #1
	subs r0, r2, r0
	ldr r1, _0802A24C @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	subs r0, r0, r1
	lsls r0, r0, #7
	asrs r0, r0, #0x11
	b _0802A2CE
	.align 2, 0
_0802A248: .4byte gSinTable
_0802A24C: .4byte 0x000003FF
_0802A250:
	movs r0, #0
	strh r0, [r4, #0x16]
	movs r0, #3
	b _0802A3AA
_0802A258:
	ldrh r2, [r4, #0x16]
	adds r2, #1
	strh r2, [r4, #0x16]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrb r1, [r4, #0x18]
	mvns r1, r1
	ldrb r3, [r4, #0x19]
	adds r1, r1, r3
	lsls r0, r1, #1
	adds r0, r0, r1
	cmp r2, r0
	bgt _0802A274
	b _0802A3AC
_0802A274:
	movs r0, #0
	strh r0, [r4, #0x16]
	movs r0, #4
	b _0802A3AA
_0802A27C:
	ldrh r0, [r4, #0x16]
	adds r0, #1
	movs r1, #0
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	bgt _0802A2D8
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	ldrb r1, [r4, #0x18]
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r2, #8
	ldrsh r1, [r4, r2]
	movs r3, #0x16
	ldrsh r2, [r4, r3]
	movs r3, #5
	str r3, [sp]
	movs r3, #0x10
	bl sub_800E930
	strh r0, [r4, #4]
	movs r1, #0x16
	ldrsh r0, [r4, r1]
	ldr r1, _0802A2D4 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802A2BA
	adds r0, #0x3f
_0802A2BA:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #7
	rsbs r0, r0, #0
	asrs r0, r0, #0xf
	movs r2, #0xc0
	lsls r2, r2, #1
_0802A2CE:
	adds r0, r0, r2
	strh r0, [r4, #0xc]
	b _0802A3AC
	.align 2, 0
_0802A2D4: .4byte gSinTable
_0802A2D8:
	strh r1, [r4, #0x16]
	strh r1, [r4, #0xc]
	movs r0, #7
	b _0802A3AA
_0802A2E0:
	ldrh r0, [r4, #0x16]
	adds r0, #1
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #1
	adds r1, r1, r2
	cmp r0, r1
	ble _0802A3AC
	movs r0, #0
	strh r0, [r4, #0x16]
	movs r0, #6
	b _0802A3AA
_0802A2FC:
	ldrh r0, [r4, #0x16]
	adds r0, #1
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x40
	bgt _0802A324
	movs r0, #0x28
	rsbs r0, r0, #0
	movs r3, #0xa
	ldrsh r1, [r4, r3]
	movs r3, #0x16
	ldrsh r2, [r4, r3]
	movs r3, #9
	str r3, [sp]
	movs r3, #0x40
	bl sub_800E930
	strh r0, [r4, #6]
	b _0802A3AC
_0802A324:
	movs r0, #0
	strh r0, [r4, #0x16]
	movs r0, #7
	b _0802A3AA
_0802A32C:
	movs r0, #0
	strh r0, [r4, #0x16]
	movs r0, #9
	b _0802A3AA
_0802A334:
	ldrh r0, [r4, #0x16]
	adds r0, #1
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #1
	adds r1, r1, r2
	cmp r0, r1
	ble _0802A3AC
	movs r0, #0
	strh r0, [r4, #0x16]
	movs r0, #0xa
	b _0802A3AA
_0802A350:
	ldrh r0, [r4, #0x16]
	adds r0, #1
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	bgt _0802A3A4
	movs r1, #0x16
	ldrsh r0, [r4, r1]
	ldr r2, _0802A39C @ =gSinTable
	lsls r0, r0, #0x19
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802A36E
	adds r0, #0x3f
_0802A36E:
	asrs r1, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	ldr r1, _0802A3A0 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r2, [r0]
	movs r3, #4
	ldrsh r0, [r4, r3]
	movs r1, #0x1e
	rsbs r1, r1, #0
	subs r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #8
	subs r0, r0, r2
	muls r0, r1, r0
	asrs r0, r0, #0xf
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	strh r0, [r4, #4]
	b _0802A3AC
	.align 2, 0
_0802A39C: .4byte gSinTable
_0802A3A0: .4byte 0x000003FF
_0802A3A4:
	movs r0, #0
	strh r0, [r4, #0x16]
	movs r0, #0xb
_0802A3AA:
	strh r0, [r4, #0x14]
_0802A3AC:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0802A3B4
sub_0802A3B4: @ 0x0802A3B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	ldr r0, _0802A474 @ =0x0203EBD8
	ldr r6, [r0]
	movs r0, #0
	mov r8, r0
	movs r5, #0
	movs r1, #0x9f
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r8, r0
	bge _0802A3E8
	adds r7, r6, r1
	adds r4, r6, #0
	adds r4, #0x14
_0802A3D8:
	adds r0, r4, #0
	bl sub_802A13C
	adds r4, #0x1c
	adds r5, #1
	ldr r0, [r7]
	cmp r5, r0
	blt _0802A3D8
_0802A3E8:
	movs r5, #0
	movs r1, #0x9f
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r5, r0
	bge _0802A460
	movs r7, #0x80
	lsls r7, r7, #0x13
_0802A3FA:
	adds r0, r6, r1
	ldr r1, [r0]
	subs r1, r1, r5
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, #8
	adds r4, r6, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0802A452
	movs r2, #0xc
	ldrsh r0, [r4, r2]
	asrs r1, r7, #0x10
	cmp r0, r1
	bgt _0802A452
	movs r3, #0xe
	ldrsh r0, [r4, r3]
	cmp r0, r1
	bgt _0802A452
	ldrh r2, [r4, #4]
	ldr r1, _0802A478 @ =0xFFFF0000
	ldr r0, [sp, #8]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #8]
	ldrh r2, [r4, #6]
	lsls r2, r2, #0x10
	ldr r1, _0802A47C @ =0x0000FFFF
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #8]
	ldr r0, [r4]
	movs r1, #0xc
	ldrsh r2, [r4, r1]
	movs r1, #0xe
	ldrsh r3, [r4, r1]
	ldr r1, [r4, #0x10]
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	add r1, sp, #8
	bl oam_renderCellData
_0802A452:
	adds r5, #1
	movs r1, #0x9f
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r5, r0
	blt _0802A3FA
_0802A460:
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r1, r6, r2
	ldr r0, [r1]
	cmp r0, #0
	ble _0802A480
	subs r0, #1
	str r0, [r1]
	b _0802A4EA
	.align 2, 0
_0802A474: .4byte 0x0203EBD8
_0802A478: .4byte 0xFFFF0000
_0802A47C: .4byte 0x0000FFFF
_0802A480:
	movs r3, #0x28
	ldrsh r0, [r6, r3]
	cmp r0, #7
	bne _0802A4AC
	movs r5, #0
	movs r0, #0x9f
	lsls r0, r0, #2
	adds r1, r6, r0
	ldr r0, [r1]
	cmp r5, r0
	bge _0802A4EA
	movs r3, #8
	adds r2, r1, #0
	adds r1, r6, #0
	adds r1, #0x14
_0802A49E:
	strh r3, [r1, #0x14]
	adds r1, #0x1c
	adds r5, #1
	ldr r0, [r2]
	cmp r5, r0
	blt _0802A49E
	b _0802A4EA
_0802A4AC:
	movs r2, #0
	movs r1, #0x9f
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r2, r0
	bge _0802A4D2
	adds r1, r6, #0
	adds r1, #0x14
	adds r5, r0, #0
_0802A4C0:
	movs r3, #0x14
	ldrsh r0, [r1, r3]
	cmp r0, #0xb
	bne _0802A4CA
	adds r2, #1
_0802A4CA:
	adds r1, #0x1c
	subs r5, #1
	cmp r5, #0
	bne _0802A4C0
_0802A4D2:
	movs r1, #0x9f
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r2, r0
	bne _0802A4EA
	movs r2, #0xa1
	lsls r2, r2, #2
	adds r1, r6, r2
	movs r0, #1
	str r0, [r1]
	mov r8, r0
_0802A4EA:
	mov r0, r8
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0802A4F8
sub_0802A4F8: @ 0x0802A4F8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0802A52C @ =0x0203EBD8
	ldr r5, [r0]
	ldr r1, _0802A530 @ =_080DDE58
	ldr r0, [r5, #8]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r5, #0xc]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r2, #0xc]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r4, [r6, #0x68]
	movs r2, #1
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0
	beq _0802A534
	cmp r1, #1
	beq _0802A560
	b _0802A584
	.align 2, 0
_0802A52C: .4byte 0x0203EBD8
_0802A530: .4byte _080DDE58
_0802A534:
	adds r4, #1
	cmp r4, #0x30
	bgt _0802A584
	lsls r0, r4, #0xe
	movs r1, #0x30
	bl __divsi3
	ldr r1, _0802A55C @ =gSinTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802A54E
	adds r0, #0x3f
_0802A54E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #8
	b _0802A57E
	.align 2, 0
_0802A55C: .4byte gSinTable
_0802A560:
	adds r4, #1
	cmp r4, #0x80
	bgt _0802A584
	ldr r1, _0802A590 @ =gSinTable
	lsls r0, r4, #0x17
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802A572
	adds r0, #0x3f
_0802A572:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #9
_0802A57E:
	asrs r0, r0, #0xf
	str r0, [r5, #0x10]
	movs r2, #0
_0802A584:
	str r4, [r6, #0x68]
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0802A590: .4byte gSinTable

	thumb_func_start sub_802A594
sub_802A594: @ 0x0802A594
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0802A5F8 @ =0x0203EBD8
	ldr r0, [r0]
	adds r3, r0, #0
	ldr r1, _0802A5FC @ =_080DDE58
	ldr r0, [r3, #8]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r3, #0xc]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r2, #0xc]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r2, [r5, #0x68]
	movs r4, #1
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0
	bne _0802A5EC
	adds r2, #1
	cmp r2, #0x20
	bgt _0802A5EC
	ldr r1, _0802A600 @ =gSinTable
	lsls r0, r2, #0x19
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802A5D4
	adds r0, #0x3f
_0802A5D4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #8
	asrs r0, r0, #0xf
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r3, #0x10]
	movs r4, #0
_0802A5EC:
	str r2, [r5, #0x68]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802A5F8: .4byte 0x0203EBD8
_0802A5FC: .4byte _080DDE58
_0802A600: .4byte gSinTable

	thumb_func_start sub_0802A604
sub_0802A604: @ 0x0802A604
	push {r4, r5, lr}
	movs r2, #0
	ldr r0, _0802A664 @ =0x03002E20
	ldr r3, _0802A668 @ =0x000007FB
	adds r1, r0, r3
	adds r3, r0, #0
	ldrb r1, [r1]
	cmp r2, r1
	bge _0802A694
	movs r5, #0
	ldr r4, _0802A66C @ =0x03004F70
_0802A61A:
	ldr r1, _0802A670 @ =0x03004EA0
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _0802A688
	ldr r0, _0802A674 @ =0x0203EBD8
	ldr r0, [r0]
	ldr r1, _0802A678 @ =0x00000DD8
	adds r0, r0, r1
	str r5, [r0]
	movs r0, #0
	bl pltt_getBuffer
	strh r5, [r0]
	movs r0, #1
	bl pltt_setDirtyFlag
	ldr r0, _0802A67C @ =trns_initDefaultOutTransition
	str r0, [r4, #4]
	ldr r0, _0802A680 @ =trns_applyDefaultOutTransition
	str r0, [r4]
	str r5, [r4, #8]
	movs r0, #1
	strb r0, [r4, #0xe]
	bl trns_start
	ldr r0, _0802A684 @ =gMPlayTable
	ldr r0, [r0]
	movs r1, #1
	bl m4aMPlayFadeOut
	movs r0, #1
	b _0802A696
	.align 2, 0
_0802A664: .4byte 0x03002E20
_0802A668: .4byte 0x000007FB
_0802A66C: .4byte 0x03004F70
_0802A670: .4byte 0x03004EA0
_0802A674: .4byte 0x0203EBD8
_0802A678: .4byte 0x00000DD8
_0802A67C: .4byte trns_initDefaultOutTransition
_0802A680: .4byte trns_applyDefaultOutTransition
_0802A684: .4byte gMPlayTable
_0802A688:
	adds r2, #1
	ldr r1, _0802A69C @ =0x000007FB
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r2, r0
	blt _0802A61A
_0802A694:
	movs r0, #0
_0802A696:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802A69C: .4byte 0x000007FB

	thumb_func_start sub_0802A6A0
sub_0802A6A0: @ 0x0802A6A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r6, [r5, #0x68]
	ldr r7, [r5, #0x70]
	ldr r0, [r5, #0x74]
	ldrb r1, [r6, #3]
	cmp r0, r1
	bge _0802A6BC
	adds r0, #1
	str r0, [r5, #0x74]
	movs r0, #0
	b _0802A72A
_0802A6BC:
	movs r0, #0
	str r0, [r5, #0x74]
	ldr r0, [r6, #4]
	adds r0, r0, r7
	ldrb r0, [r0]
	subs r0, #0x20
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0
	cmp r1, #0x5e
	bhi _0802A6D4
	adds r0, r1, #0
_0802A6D4:
	ldr r1, _0802A720 @ =_080DC59C
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r4, [r0]
	ldrb r1, [r6]
	adds r1, r1, r7
	ldrb r2, [r6, #1]
	movs r0, #0
	bl map_getBufferPtr2d
	ldr r2, _0802A724 @ =0xFFFFE000
	mov r8, r2
	adds r1, r4, #0
	mov r2, r8
	orrs r1, r2
	strh r1, [r0]
	ldrb r1, [r6]
	adds r1, r1, r7
	ldrb r2, [r6, #1]
	adds r2, #1
	movs r0, #0
	bl map_getBufferPtr2d
	adds r4, #0x20
	mov r1, r8
	orrs r4, r1
	strh r4, [r0]
	movs r0, #1
	bl map_setBufferDirty
	adds r7, #1
	str r7, [r5, #0x70]
	ldrb r6, [r6, #2]
	cmp r7, r6
	bge _0802A728
	movs r0, #0
	b _0802A72A
	.align 2, 0
_0802A720: .4byte _080DC59C
_0802A724: .4byte 0xFFFFE000
_0802A728:
	movs r0, #1
_0802A72A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0802A734
sub_0802A734: @ 0x0802A734
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	ldr r1, [r0, #0x68]
	cmp r1, #0x3c
	ble _0802A74A
	movs r0, #1
	b _0802A848
_0802A74A:
	movs r0, #1
	ands r0, r1
	adds r1, #1
	mov sl, r1
	cmp r0, #0
	beq _0802A840
	movs r7, #0
_0802A758:
	movs r6, #0x1e
	subs r6, r6, r7
	movs r0, #0
	adds r1, r6, #0
	movs r2, #3
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r5, #0x1d
	subs r5, r5, r7
	movs r0, #0
	adds r1, r5, #0
	movs r2, #3
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #0
	adds r1, r6, #0
	movs r2, #4
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r0, #0
	adds r1, r5, #0
	movs r2, #4
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #0
	adds r1, r6, #0
	movs r2, #9
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r0, #0
	adds r1, r5, #0
	movs r2, #9
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #0
	adds r1, r6, #0
	movs r2, #0xa
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r0, #0
	adds r1, r5, #0
	movs r2, #0xa
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #0
	adds r1, r7, #0
	movs r2, #0xb
	bl map_getBufferPtr2d
	adds r4, r0, #0
	adds r0, r7, #1
	mov r8, r0
	movs r0, #0
	mov r1, r8
	movs r2, #0xb
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #0
	adds r1, r7, #0
	movs r2, #0xc
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r0, #0
	mov r1, r8
	movs r2, #0xc
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #0
	adds r1, r6, #0
	movs r2, #0xd
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r0, #0
	adds r1, r5, #0
	movs r2, #0xd
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #0
	adds r1, r6, #0
	movs r2, #0xe
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r0, #0
	adds r1, r5, #0
	movs r2, #0xe
	bl map_getBufferPtr2d
	ldrh r0, [r0]
	strh r0, [r4]
	mov r7, r8
	cmp r7, #0x1d
	ble _0802A758
	movs r0, #1
	bl map_setBufferDirty
_0802A840:
	mov r1, sl
	mov r0, sb
	str r1, [r0, #0x68]
	movs r0, #0
_0802A848:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802A858
sub_0802A858: @ 0x0802A858
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r1, _0802A880 @ =0x0203EBD8
	ldr r1, [r1]
	mov sl, r1
	ldr r3, [r0, #0x68]
	ldr r1, _0802A884 @ =_080DCC14
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r8, r0
	movs r2, #0
	ldrb r0, [r0]
	mov r1, r8
	b _0802A88C
	.align 2, 0
_0802A880: .4byte 0x0203EBD8
_0802A884: .4byte _080DCC14
_0802A888:
	adds r2, #1
	ldrb r0, [r1]
_0802A88C:
	adds r1, #1
	cmp r0, #0
	bne _0802A888
	adds r6, r2, #0
	movs r4, #0
	lsls r7, r3, #2
	cmp r4, r6
	bge _0802A970
	lsls r0, r3, #3
	adds r0, r0, r3
	lsls r0, r0, #2
	subs r0, r0, r3
	lsls r0, r0, #4
	movs r2, #0xe7
	lsls r2, r2, #3
	adds r1, r0, r2
	add r1, sl
	str r1, [sp]
	add r0, sl
	adds r0, r0, r2
	str r0, [sp, #8]
	ldr r0, _0802A988 @ =_080DCC45
	ldr r1, _0802A98C @ =_080C9DBC
	mov sb, r1
	adds r3, r3, r0
	mov ip, r3
	ldrb r2, [r3]
	str r2, [sp, #4]
_0802A8C4:
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r5, [sp]
	adds r3, r5, r0
	mov r1, r8
	adds r0, r1, r4
	ldrb r0, [r0]
	subs r0, #0x40
	lsls r0, r0, #2
	ldr r2, _0802A990 @ =_080DC86C
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r3]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #4]
	ldr r5, [sp, #4]
	subs r0, r5, r4
	subs r0, #1
	mov r2, sb
	ldrh r1, [r2]
	adds r2, #2
	cmp r1, r0
	bgt _0802A8F8
	subs r0, r1, #1
_0802A8F8:
	adds r5, r4, #1
	str r5, [sp, #0xc]
	cmp r0, #0
	ble _0802A908
_0802A900:
	adds r2, #6
	subs r0, #1
	cmp r0, #0
	bne _0802A900
_0802A908:
	ldr r1, _0802A994 @ =_080DCC4A
	adds r0, r7, r1
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrh r0, [r0]
	adds r1, r1, r0
	strh r1, [r3, #6]
	mvns r0, r4
	mov r2, sb
	mov r5, ip
	ldrb r5, [r5]
	adds r0, r0, r5
	ldrh r1, [r2]
	adds r2, #2
	cmp r1, r0
	bgt _0802A92A
	subs r0, r1, #1
_0802A92A:
	cmp r0, #0
	ble _0802A936
_0802A92E:
	adds r2, #6
	subs r0, #1
	cmp r0, #0
	bne _0802A92E
_0802A936:
	ldrh r0, [r2, #2]
	ldr r2, _0802A998 @ =0x000001FF
	adds r1, r2, #0
	ands r1, r0
	adds r0, r1, #0
	cmp r0, #0xff
	bls _0802A94A
	adds r0, r1, #0
	eors r0, r2
	rsbs r1, r0, #0
_0802A94A:
	ldr r2, _0802A99C @ =_080DCC48
	adds r0, r7, r2
	ldrh r0, [r0]
	adds r0, r0, r1
	movs r1, #0
	strh r0, [r3, #8]
	ldr r5, [sp, #8]
	ldrh r0, [r5, #8]
	subs r0, #8
	strh r0, [r3, #0xa]
	strh r1, [r3, #0xe]
	strh r1, [r3, #0xc]
	str r1, [r3, #0x10]
	strh r1, [r3, #0x14]
	strb r4, [r3, #0x18]
	strb r6, [r3, #0x19]
	ldr r4, [sp, #0xc]
	cmp r4, r6
	blt _0802A8C4
_0802A970:
	ldr r0, _0802A9A0 @ =0x00000DC8
	add r0, sl
	adds r0, r0, r7
	str r6, [r0]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A988: .4byte _080DCC45
_0802A98C: .4byte _080C9DBC
_0802A990: .4byte _080DC86C
_0802A994: .4byte _080DCC4A
_0802A998: .4byte 0x000001FF
_0802A99C: .4byte _080DCC48
_0802A9A0: .4byte 0x00000DC8

	thumb_func_start sub_0802A9A4
sub_0802A9A4: @ 0x0802A9A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	ldr r1, _0802AAD0 @ =0x0203EBD8
	ldr r1, [r1]
	mov r8, r1
	ldr r6, [r0, #0x68]
	movs r5, #0
	lsls r1, r6, #2
	ldr r0, _0802AAD4 @ =0x00000DC8
	add r0, r8
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r5, r0
	bge _0802A9F0
	lsls r0, r6, #3
	adds r0, r0, r6
	lsls r0, r0, #2
	subs r0, r0, r6
	lsls r0, r0, #4
	movs r2, #0xe7
	lsls r2, r2, #3
	adds r0, r0, r2
	mov r2, r8
	adds r4, r2, r0
	ldr r0, _0802AAD4 @ =0x00000DC8
	add r0, r8
	adds r7, r0, r1
_0802A9E0:
	adds r0, r4, #0
	bl sub_802A13C
	adds r4, #0x1c
	adds r5, #1
	ldr r0, [r7]
	cmp r5, r0
	blt _0802A9E0
_0802A9F0:
	movs r5, #0
	lsls r1, r6, #2
	ldr r3, _0802AAD4 @ =0x00000DC8
	mov r4, r8
	adds r0, r4, r3
	adds r0, r0, r1
	ldr r0, [r0]
	adds r7, r1, #0
	cmp r5, r0
	bge _0802AA8C
	movs r0, #0x80
	lsls r0, r0, #0x13
	mov sb, r0
_0802AA0A:
	lsls r2, r6, #3
	adds r2, r2, r6
	lsls r2, r2, #2
	subs r2, r2, r6
	lsls r2, r2, #4
	movs r4, #0xe7
	lsls r4, r4, #3
	adds r2, r2, r4
	add r2, r8
	mov r4, r8
	adds r0, r4, r3
	adds r0, r0, r1
	ldr r1, [r0]
	subs r1, r1, r5
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, #0x1c
	adds r4, r2, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _0802AA7A
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	mov r2, sb
	asrs r1, r2, #0x10
	cmp r0, r1
	bgt _0802AA7A
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, r1
	bgt _0802AA7A
	ldrh r2, [r4, #4]
	ldr r1, _0802AAD8 @ =0xFFFF0000
	ldr r0, [sp, #8]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #8]
	ldrh r2, [r4, #6]
	lsls r2, r2, #0x10
	ldr r1, _0802AADC @ =0x0000FFFF
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #8]
	ldr r0, [r4]
	movs r1, #0xc
	ldrsh r2, [r4, r1]
	movs r1, #0xe
	ldrsh r3, [r4, r1]
	ldr r1, [r4, #0x10]
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	add r1, sp, #8
	bl oam_renderCellData
_0802AA7A:
	adds r5, #1
	adds r1, r7, #0
	ldr r3, _0802AAD4 @ =0x00000DC8
	mov r2, r8
	adds r0, r2, r3
	adds r0, r0, r7
	ldr r0, [r0]
	cmp r5, r0
	blt _0802AA0A
_0802AA8C:
	movs r3, #1
	ldr r0, _0802AAD4 @ =0x00000DC8
	add r0, r8
	adds r0, r0, r7
	ldr r2, [r0]
	cmp r2, #0
	ble _0802AAC0
	lsls r0, r6, #3
	adds r0, r0, r6
	lsls r0, r0, #2
	subs r0, r0, r6
	lsls r0, r0, #4
	mov r4, r8
	adds r1, r0, r4
	ldr r4, _0802AAE0 @ =0x0000074C
	adds r5, r2, #0
_0802AAAC:
	adds r0, r1, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0xb
	beq _0802AAB8
	movs r3, #0
_0802AAB8:
	adds r1, #0x1c
	subs r5, #1
	cmp r5, #0
	bne _0802AAAC
_0802AAC0:
	adds r0, r3, #0
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802AAD0: .4byte 0x0203EBD8
_0802AAD4: .4byte 0x00000DC8
_0802AAD8: .4byte 0xFFFF0000
_0802AADC: .4byte 0x0000FFFF
_0802AAE0: .4byte 0x0000074C

	thumb_func_start sub_802AAE4
sub_802AAE4: @ 0x0802AAE4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldrh r0, [r4, #0x20]
	subs r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x21
	bls _0802AAFE
	b _0802AD16
_0802AAFE:
	lsls r0, r0, #2
	ldr r1, _0802AB08 @ =_0802AB0C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802AB08: .4byte _0802AB0C
_0802AB0C: @ jump table
	.4byte _0802AB94 @ case 0
	.4byte _0802AD16 @ case 1
	.4byte _0802AD16 @ case 2
	.4byte _0802AD16 @ case 3
	.4byte _0802AD16 @ case 4
	.4byte _0802AD16 @ case 5
	.4byte _0802AD16 @ case 6
	.4byte _0802AD16 @ case 7
	.4byte _0802AD16 @ case 8
	.4byte _0802AD16 @ case 9
	.4byte _0802AD16 @ case 10
	.4byte _0802AD16 @ case 11
	.4byte _0802AD16 @ case 12
	.4byte _0802AD16 @ case 13
	.4byte _0802AD16 @ case 14
	.4byte _0802AD16 @ case 15
	.4byte _0802AD16 @ case 16
	.4byte _0802AD16 @ case 17
	.4byte _0802AD16 @ case 18
	.4byte _0802AD16 @ case 19
	.4byte _0802AD16 @ case 20
	.4byte _0802AD16 @ case 21
	.4byte _0802AD16 @ case 22
	.4byte _0802AD16 @ case 23
	.4byte _0802AD16 @ case 24
	.4byte _0802AD16 @ case 25
	.4byte _0802AD16 @ case 26
	.4byte _0802AD16 @ case 27
	.4byte _0802AD16 @ case 28
	.4byte _0802AB9C @ case 29
	.4byte _0802ABDA @ case 30
	.4byte _0802ACC0 @ case 31
	.4byte _0802ACAC @ case 32
	.4byte _0802AD16 @ case 33
_0802AB94:
	movs r0, #0
	strh r0, [r4, #0x22]
	movs r0, #0x1e
	b _0802AD14
_0802AB9C:
	ldrh r0, [r4, #0x22]
	adds r0, #1
	movs r5, #0
	strh r0, [r4, #0x22]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x24
	ldrb r2, [r1]
	lsls r1, r2, #3
	adds r3, r1, #0
	adds r3, #0x3c
	cmp r0, r3
	bge _0802ABD2
	adds r1, r2, #0
	adds r1, #0xf
	lsls r1, r1, #8
	movs r0, #0x22
	ldrsh r2, [r4, r0]
	movs r0, #6
	str r0, [sp]
	movs r0, #0
	bl sub_800E930
	lsls r0, r0, #8
	str r0, [r4, #0x18]
	b _0802AD16
_0802ABD2:
	str r5, [r4, #0x18]
	strh r5, [r4, #0x22]
	movs r0, #0xd
	b _0802AD14
_0802ABDA:
	ldr r5, _0802AC88 @ =0x0203EBDC
	ldr r0, [r5]
	ldr r7, _0802AC8C @ =0x41C64E6D
	muls r0, r7, r0
	ldr r1, _0802AC90 @ =0x00003039
	adds r0, r0, r1
	str r0, [r5]
	lsrs r0, r0, #0x10
	ldr r1, _0802AC94 @ =0x00007FFF
	adds r6, r1, #0
	ands r0, r6
	movs r1, #4
	bl __modsi3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, [r5]
	muls r0, r7, r0
	ldr r1, _0802AC90 @ =0x00003039
	adds r2, r0, r1
	str r2, [r5]
	lsrs r0, r2, #0x10
	ands r0, r6
	ldr r1, _0802AC98 @ =gSinTable
	mov sb, r1
	lsls r0, r0, #0x11
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802AC16
	adds r0, #0x3f
_0802AC16:
	asrs r0, r0, #6
	ldr r1, _0802AC9C @ =0x000003FF
	mov r8, r1
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r1, [r0]
	adds r0, r3, #3
	muls r0, r1, r0
	asrs r0, r0, #0xf
	str r0, [r4, #8]
	adds r0, r2, #0
	muls r0, r7, r0
	ldr r1, _0802AC90 @ =0x00003039
	adds r0, r0, r1
	str r0, [r5]
	lsrs r0, r0, #0x10
	ands r0, r6
	movs r1, #4
	bl __modsi3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r5]
	muls r0, r7, r0
	ldr r1, _0802AC90 @ =0x00003039
	adds r0, r0, r1
	str r0, [r5]
	lsrs r0, r0, #0x10
	ands r0, r6
	lsls r0, r0, #0x11
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802AC5E
	adds r0, #0x3f
_0802AC5E:
	asrs r0, r0, #6
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r1, [r0]
	adds r0, r2, #3
	muls r0, r1, r0
	asrs r0, r0, #0xf
	str r0, [r4, #0xc]
	movs r0, #0x21
	strh r0, [r4, #0x20]
	adds r1, r4, #0
	adds r1, #0x24
	ldrb r0, [r1]
	cmp r0, #9
	bhi _0802ACA0
	adds r1, r0, #0
	movs r0, #9
	b _0802ACA4
	.align 2, 0
_0802AC88: .4byte 0x0203EBDC
_0802AC8C: .4byte 0x41C64E6D
_0802AC90: .4byte 0x00003039
_0802AC94: .4byte 0x00007FFF
_0802AC98: .4byte gSinTable
_0802AC9C: .4byte 0x000003FF
_0802ACA0:
	ldrb r1, [r1]
	movs r0, #0x1a
_0802ACA4:
	subs r0, r0, r1
	lsls r0, r0, #1
	strh r0, [r4, #0x22]
	b _0802AD16
_0802ACAC:
	ldrh r0, [r4, #0x22]
	subs r0, #1
	strh r0, [r4, #0x22]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0802AD16
	movs r0, #0
	strh r0, [r4, #0x22]
	movs r0, #0x20
	b _0802AD14
_0802ACC0:
	ldr r3, [r4]
	adds r1, r3, #0
	adds r1, #0x17
	movs r0, #0x8f
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0802AD12
	ldr r2, [r4, #4]
	movs r0, #0x18
	rsbs r0, r0, #0
	cmp r2, r0
	ble _0802AD12
	cmp r2, #0xb7
	bgt _0802AD12
	ldr r0, [r4, #8]
	adds r0, r3, r0
	str r0, [r4]
	ldr r0, [r4, #0xc]
	adds r0, r2, r0
	str r0, [r4, #4]
	ldr r1, [r4, #0x10]
	subs r1, #4
	str r1, [r4, #0x10]
	ldr r0, [r4, #0x14]
	subs r0, #4
	str r0, [r4, #0x14]
	cmp r1, #0x7f
	bgt _0802ACFC
	movs r0, #0x80
	str r0, [r4, #0x10]
_0802ACFC:
	ldr r0, [r4, #0x14]
	cmp r0, #0x7f
	bgt _0802AD06
	movs r0, #0x80
	str r0, [r4, #0x14]
_0802AD06:
	ldr r0, [r4, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r4, #0x1c]
	b _0802AD16
_0802AD12:
	movs r0, #0x22
_0802AD14:
	strh r0, [r4, #0x20]
_0802AD16:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0802AD24
sub_0802AD24: @ 0x0802AD24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0802ADC4 @ =0x0203EBD8
	ldr r0, [r0]
	mov r8, r0
	movs r4, #0xa2
	lsls r4, r4, #2
	add r4, r8
	movs r5, #0x1a
_0802AD3E:
	adds r0, r4, #0
	bl sub_802AAE4
	adds r4, #0x28
	subs r5, #1
	cmp r5, #0
	bge _0802AD3E
	movs r5, #0
	ldr r0, _0802ADC8 @ =0x0000FFFF
	mov sb, r0
	movs r7, #0x80
	lsls r7, r7, #1
	ldr r1, _0802ADCC @ =_080DCCB4
	mov sl, r1
	ldr r6, _0802ADD0 @ =0x000003FF
_0802AD5C:
	movs r1, #0x1a
	subs r1, r1, r5
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r2, #0xa2
	lsls r2, r2, #2
	adds r0, r0, r2
	mov r1, r8
	adds r4, r1, r0
	ldrh r2, [r4]
	ldr r1, _0802ADD4 @ =0xFFFF0000
	ldr r0, [sp, #8]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #8]
	ldrh r1, [r4, #4]
	lsls r1, r1, #0x10
	mov r2, sb
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _0802AE6E
	mov r0, sb
	ands r0, r1
	asrs r0, r0, #8
	cmp r0, #0x3f
	bgt _0802ADDC
	ldr r1, _0802ADD8 @ =gSinTable
	lsls r0, r0, #0x18
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802ADA4
	adds r0, #0x3f
_0802ADA4:
	asrs r0, r0, #6
	subs r0, r7, r0
	ands r0, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	subs r1, r1, r0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0xf
	adds r0, r0, r7
	b _0802AE6C
	.align 2, 0
_0802ADC4: .4byte 0x0203EBD8
_0802ADC8: .4byte 0x0000FFFF
_0802ADCC: .4byte _080DCCB4
_0802ADD0: .4byte 0x000003FF
_0802ADD4: .4byte 0xFFFF0000
_0802ADD8: .4byte gSinTable
_0802ADDC:
	cmp r0, #0x7f
	bgt _0802AE10
	subs r0, #0x40
	ldr r1, _0802AE0C @ =gSinTable
	lsls r0, r0, #0x18
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802ADEE
	adds r0, #0x3f
_0802ADEE:
	asrs r0, r0, #6
	ands r0, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #8
	rsbs r0, r0, #0
	asrs r0, r0, #0xf
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	b _0802AE6C
	.align 2, 0
_0802AE0C: .4byte gSinTable
_0802AE10:
	cmp r0, #0xbf
	bgt _0802AE44
	subs r0, #0x80
	ldr r1, _0802AE40 @ =gSinTable
	lsls r0, r0, #0x18
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802AE22
	adds r0, #0x3f
_0802AE22:
	asrs r0, r0, #6
	subs r0, r7, r0
	ands r0, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	subs r1, r1, r0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0xf
	adds r0, r0, r7
	b _0802AE6C
	.align 2, 0
_0802AE40: .4byte gSinTable
_0802AE44:
	subs r0, #0xc0
	ldr r1, _0802AEA4 @ =gSinTable
	lsls r0, r0, #0x18
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802AE52
	adds r0, #0x3f
_0802AE52:
	asrs r0, r0, #6
	ands r0, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #8
	rsbs r0, r0, #0
	asrs r0, r0, #0xf
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
_0802AE6C:
	str r0, [r4, #0x10]
_0802AE6E:
	ldr r0, [r4, #0x18]
	mov r1, sb
	ands r0, r1
	ldr r2, _0802AEA8 @ =0xFFFFBFFF
	adds r0, r0, r2
	ldr r1, _0802AEAC @ =0x00007FFE
	cmp r0, r1
	bhi _0802AEB4
	movs r1, #0x1a
	subs r1, r1, r5
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0802AEB0 @ =_080DCCB8
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	ldr r1, [r4, #0x1c]
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	add r1, sp, #8
	bl oam_renderCellData
	b _0802AED4
	.align 2, 0
_0802AEA4: .4byte gSinTable
_0802AEA8: .4byte 0xFFFFBFFF
_0802AEAC: .4byte 0x00007FFE
_0802AEB0: .4byte _080DCCB8
_0802AEB4:
	movs r1, #0x1a
	subs r1, r1, r5
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	ldr r1, [r4, #0x1c]
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	add r1, sp, #8
	bl oam_renderCellData
_0802AED4:
	adds r5, #1
	cmp r5, #0x1a
	bgt _0802AEDC
	b _0802AD5C
_0802AEDC:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_802AEEC
sub_802AEEC: @ 0x0802AEEC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r1, #0x12
	ldrsh r0, [r4, r1]
	cmp r0, #0xd
	bls _0802AEFC
	b _0802B12C
_0802AEFC:
	lsls r0, r0, #2
	ldr r1, _0802AF08 @ =_0802AF0C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802AF08: .4byte _0802AF0C
_0802AF0C: @ jump table
	.4byte _0802B12C @ case 0
	.4byte _0802AF44 @ case 1
	.4byte _0802AF4E @ case 2
	.4byte _0802AF64 @ case 3
	.4byte _0802AFC2 @ case 4
	.4byte _0802AFDA @ case 5
	.4byte _0802AFF2 @ case 6
	.4byte _0802B002 @ case 7
	.4byte _0802B01C @ case 8
	.4byte _0802B04A @ case 9
	.4byte _0802B05C @ case 10
	.4byte _0802B078 @ case 11
	.4byte _0802B0E8 @ case 12
	.4byte _0802B12C @ case 13
_0802AF44:
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #2
	strh r0, [r4, #0x10]
	movs r0, #2
	b _0802B12A
_0802AF4E:
	ldrh r0, [r4, #0x10]
	subs r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt _0802AF5C
	b _0802B12C
_0802AF5C:
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #3
	b _0802B12A
_0802AF64:
	ldrh r0, [r4, #0x10]
	adds r0, #1
	movs r3, #0
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5a
	bgt _0802AFAC
	ldrb r0, [r4, #0x14]
	lsls r1, r0, #2
	adds r1, r1, r0
	adds r1, #3
	lsls r1, r1, #3
	adds r0, r1, #0
	adds r0, #0xd8
	movs r5, #0x10
	ldrsh r2, [r4, r5]
	str r3, [sp]
	movs r3, #0x5a
	bl sub_800E930
	str r0, [r4]
	ldrh r1, [r4, #0x10]
	movs r0, #1
	ands r0, r1
	adds r2, r0, #0
	adds r2, #0x50
	str r2, [r4, #4]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsrs r0, r0, #3
	adds r0, r2, r0
	str r0, [r4, #4]
	b _0802B11E
_0802AFAC:
	ldrb r1, [r4, #0x14]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, #3
	lsls r0, r0, #3
	str r0, [r4]
	movs r0, #0x50
	str r0, [r4, #4]
	strh r3, [r4, #0x10]
	movs r0, #4
	b _0802B12A
_0802AFC2:
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	bgt _0802AFD2
	b _0802B12C
_0802AFD2:
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #5
	b _0802B12A
_0802AFDA:
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bgt _0802AFEA
	b _0802B12C
_0802AFEA:
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #6
	b _0802B12A
_0802AFF2:
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #3
	movs r1, #0
	strh r0, [r4, #0x10]
	movs r0, #7
	strh r0, [r4, #0x12]
	str r1, [r4, #0xc]
	b _0802B12C
_0802B002:
	ldr r0, _0802B018 @ =0x030069F0
	ldrb r1, [r0, #1]
	ldrb r0, [r4, #0x14]
	adds r0, #1
	cmp r1, r0
	bge _0802B010
	b _0802B12C
_0802B010:
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #8
	b _0802B12A
	.align 2, 0
_0802B018: .4byte 0x030069F0
_0802B01C:
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	bgt _0802B042
	movs r0, #0x10
	ldrsh r2, [r4, r0]
	movs r0, #0xc
	str r0, [sp]
	movs r0, #0xa8
	movs r1, #0x80
	movs r3, #0x18
	bl sub_800E930
	lsls r0, r0, #8
	str r0, [r4, #8]
	b _0802B12C
_0802B042:
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #9
	b _0802B12A
_0802B04A:
	ldr r0, _0802B058 @ =0x030069F0
	ldrb r0, [r0, #1]
	cmp r0, #5
	bls _0802B12C
	movs r0, #0xa
	b _0802B12A
	.align 2, 0
_0802B058: .4byte 0x030069F0
_0802B05C:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	subs r0, r0, r1
	str r0, [r4, #8]
	ldr r0, _0802B074 @ =0x00002FFF
	cmp r1, r0
	bgt _0802B12C
	adds r0, r1, #0
	adds r0, #0x30
	str r0, [r4, #0xc]
	b _0802B12C
	.align 2, 0
_0802B074: .4byte 0x00002FFF
_0802B078:
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #0xc
	strh r0, [r4, #0x12]
	ldr r0, _0802B0D4 @ =0x03002E20
	ldr r1, _0802B0D8 @ =0x00000818
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, _0802B0DC @ =_080DCE58
	adds r0, #0x4c
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	lsls r0, r0, #2
	adds r1, r0, r2
	ldrh r4, [r1]
	adds r2, #2
	adds r0, r0, r2
	ldrh r6, [r0]
	adds r0, r4, #0
	bl m4aSongNumStart
	ldr r5, _0802B0E0 @ =gMPlayTable
	ldr r0, _0802B0E4 @ =gSongTable
	lsls r4, r4, #3
	adds r4, r4, r0
	ldrh r1, [r4, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl m4aMPlayImmInit
	ldrh r1, [r4, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #1
	adds r2, r6, #0
	bl m4aMPlayVolumeControl
	b _0802B12C
	.align 2, 0
_0802B0D4: .4byte 0x03002E20
_0802B0D8: .4byte 0x00000818
_0802B0DC: .4byte _080DCE58
_0802B0E0: .4byte gMPlayTable
_0802B0E4: .4byte gSongTable
_0802B0E8:
	ldrh r0, [r4, #0x10]
	adds r0, #1
	movs r3, #0
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x30
	bgt _0802B126
	movs r1, #0x40
	rsbs r1, r1, #0
	movs r5, #0x10
	ldrsh r2, [r4, r5]
	str r3, [sp]
	movs r0, #0xf0
	movs r3, #0x30
	bl sub_800E930
	str r0, [r4]
	ldr r2, [r4, #4]
	ldrh r1, [r4, #0x10]
	movs r0, #1
	ands r0, r1
	subs r1, r2, #1
	cmp r0, #0
	beq _0802B11C
	adds r1, r2, #1
_0802B11C:
	str r1, [r4, #4]
_0802B11E:
	movs r0, #0xc0
	lsls r0, r0, #8
	str r0, [r4, #8]
	b _0802B12C
_0802B126:
	strh r3, [r4, #0x10]
	movs r0, #0xd
_0802B12A:
	strh r0, [r4, #0x12]
_0802B12C:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_802B134
sub_802B134: @ 0x0802B134
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0802B1F0 @ =0x0203EBD8
	ldr r7, [r0]
	ldr r0, _0802B1F4 @ =0x03002E20
	adds r0, #0x24
	mov r8, r0
	movs r6, #0
	movs r0, #0xd8
	lsls r0, r0, #3
	adds r5, r7, r0
_0802B152:
	lsls r1, r6, #2
	ldr r0, _0802B1F8 @ =0x000007F4
	add r0, r8
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r5, #0
	bl sub_802AEEC
	ldr r0, [r5, #8]
	adds r4, #0x56
	strh r0, [r4]
	adds r5, #0x18
	adds r6, #1
	cmp r6, #4
	ble _0802B152
	ldr r0, _0802B1F4 @ =0x03002E20
	ldr r0, [r0, #0x10]
	mov sl, r0
	movs r6, #0
	ldr r0, _0802B1FC @ =0x00000824
	add r0, r8
	mov sb, r0
	movs r0, #0xd8
	lsls r0, r0, #3
	adds r5, r7, r0
_0802B184:
	lsls r1, r6, #2
	ldr r0, _0802B1F8 @ =0x000007F4
	add r0, r8
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r7, _0802B1F4 @ =0x03002E20
	movs r0, #7
	ands r0, r6
	str r0, [r7, #0x10]
	adds r0, r4, #0
	bl sub_803CA78
	adds r2, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	mov r1, sb
	bl sub_803CD50
	ldrh r3, [r5]
	ldr r2, _0802B200 @ =0xFFFF0000
	ldr r1, [sp, #8]
	ands r1, r2
	orrs r1, r3
	str r1, [sp, #8]
	ldrh r3, [r5, #4]
	lsls r3, r3, #0x10
	ldr r2, _0802B204 @ =0x0000FFFF
	ands r1, r2
	orrs r1, r3
	str r1, [sp, #8]
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	adds r5, #0x18
	adds r6, #1
	cmp r6, #4
	ble _0802B184
	mov r0, sl
	str r0, [r7, #0x10]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B1F0: .4byte 0x0203EBD8
_0802B1F4: .4byte 0x03002E20
_0802B1F8: .4byte 0x000007F4
_0802B1FC: .4byte 0x00000824
_0802B200: .4byte 0xFFFF0000
_0802B204: .4byte 0x0000FFFF

	thumb_func_start sub_0802B208
sub_0802B208: @ 0x0802B208
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	ldr r0, _0802B2A4 @ =0x0203EBD8
	ldr r7, [r0]
	ldr r2, _0802B2A8 @ =0x03002E20
	adds r6, r2, #0
	adds r6, #0x24
	ldr r0, _0802B2AC @ =0x04000040
	movs r1, #0
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	ldr r1, _0802B2B0 @ =0x04000048
	movs r0, #0x3e
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x20
	strh r0, [r1]
	mov r8, r6
	movs r5, #0
	ldr r0, _0802B2B4 @ =0x00000814
	adds r2, r2, r0
	ldrb r2, [r2]
	cmp r5, r2
	bge _0802B288
_0802B23E:
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	adds r0, r6, #0
	bl sub_804AED4
	adds r4, r0, #0
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, r8
	adds r1, r5, #0
	add r2, sp, #4
	add r3, sp, #8
	bl sub_8032AA0
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r0, [sp, #0xc]
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl sub_803D718
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_803BF34
	ldrh r1, [r4, #0x34]
	movs r0, #1
	orrs r0, r1
	strh r0, [r4, #0x34]
	adds r5, #1
	movs r1, #0xfe
	lsls r1, r1, #3
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r5, r0
	blt _0802B23E
_0802B288:
	ldr r0, _0802B2A8 @ =0x03002E20
	movs r1, #0x10
	ldr r2, _0802B2B8 @ =0x00000C08
	adds r0, r0, r2
	str r1, [r0]
	movs r0, #0
	str r0, [r7]
	str r0, [r7, #4]
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B2A4: .4byte 0x0203EBD8
_0802B2A8: .4byte 0x03002E20
_0802B2AC: .4byte 0x04000040
_0802B2B0: .4byte 0x04000048
_0802B2B4: .4byte 0x00000814
_0802B2B8: .4byte 0x00000C08

	thumb_func_start sub_802B2BC
sub_802B2BC: @ 0x0802B2BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r5, _0802B59C @ =0x03002E20
	adds r5, #0x24
	bl m4aMPlayAllStop
	bl main_frameProc
	bl m4aSoundVSyncOff
	movs r6, #0
	movs r0, #1
	movs r1, #2
	rsbs r1, r1, #0
	bl irq_updateMask
	ldr r0, _0802B59C @ =0x03002E20
	str r6, [r0, #0xc]
	movs r0, #2
	ldr r1, _0802B5A0 @ =0x00010001
	bl irq_updateMask
	movs r0, #0xa0
	lsls r0, r0, #0x13
	strh r6, [r0]
	movs r4, #0x80
	lsls r4, r4, #0x13
	strh r6, [r4]
	ldrh r1, [r4]
	ldr r0, _0802B5A4 @ =0x00009FFF
	ands r0, r1
	strh r0, [r4]
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r0, _0802B5A8 @ =0x04000040
	ldr r2, _0802B5AC @ =0x0000FFFF
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	adds r0, #4
	strh r6, [r0]
	ldr r1, _0802B5B0 @ =0x0400004A
	movs r0, #0x20
	strh r0, [r1]
	ldr r0, _0802B5B4 @ =0x04000054
	strh r6, [r0]
	ldr r0, _0802B59C @ =0x03002E20
	str r6, [r0, #0x10]
	bl oam_init
	str r6, [sp]
	ldr r2, _0802B5B8 @ =0x01006000
	mov r0, sp
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl CpuFastSet
	bl pltt_clearBuffer
	ldr r1, _0802B5BC @ =0x06003800
	movs r0, #0
	bl map_setBufferDestination
	ldr r1, _0802B5C0 @ =0x06003000
	movs r0, #1
	bl map_setBufferDestination
	ldr r0, _0802B5C4 @ =_080DCEE8
	movs r1, #0x18
	bl main_configureIoRegs
	ldr r2, _0802B5C8 @ =0x04000008
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r2, #1]
	movs r0, #0x3f
	mov sb, r0
	ands r0, r1
	strb r0, [r2, #1]
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r2]
	movs r7, #0x41
	rsbs r7, r7, #0
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	mov sl, r0
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r2, #1]
	movs r0, #0x20
	rsbs r0, r0, #0
	mov r8, r0
	ands r0, r1
	movs r1, #7
	orrs r0, r1
	strb r0, [r2, #1]
	adds r2, #2
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r2, #1]
	mov r0, sb
	ands r0, r1
	strb r0, [r2, #1]
	ldrb r0, [r2]
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r2]
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r2]
	mov r0, sl
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r2, #1]
	mov r0, r8
	ands r0, r1
	movs r1, #0xf
	orrs r0, r1
	strb r0, [r2, #1]
	ldr r1, _0802B5CC @ =0x00003741
	adds r0, r1, #0
	strh r0, [r4]
	adds r0, r5, #0
	bl sub_8048D44
	bl main_frameProc
	adds r0, r5, #0
	bl sub_804AE08
	bl main_frameProc
	movs r0, #0
	bl pltt_getBuffer
	strh r6, [r0]
	ldr r0, _0802B5D0 @ =_080C2FA8
	ldr r4, _0802B5D4 @ =0x02020400
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0802B5D8 @ =0x06012800
	ldr r3, _0802B5DC @ =0x80000200
	adds r1, r4, #0
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r4, r2
	ldr r2, _0802B5E0 @ =0x06013000
	ldr r3, _0802B5E4 @ =0x80000600
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _0802B5E8 @ =_080A97F8
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl main_frameProc
	ldr r0, _0802B5EC @ =_080A9E2C
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r1, r4, r2
	bl LZ77UnCompWram
	bl main_frameProc
	ldr r0, _0802B5F0 @ =_080AA56C
	movs r2, #0xc0
	lsls r2, r2, #6
	adds r1, r4, r2
	bl LZ77UnCompWram
	bl main_frameProc
	bl dmaq_getVBlankDmaQueue
	ldr r3, _0802B5F4 @ =0x80000C00
	adds r1, r4, #0
	movs r2, #0xc0
	lsls r2, r2, #0x13
	bl dmaq_enqueue
	bl main_frameProc
	bl dmaq_getVBlankDmaQueue
	ldr r4, _0802B5F8 @ =_08063834
	ldr r2, _0802B5FC @ =0x06002A00
	ldr r5, _0802B600 @ =0x80000100
	adds r1, r4, #0
	adds r3, r5, #0
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	movs r1, #0x80
	lsls r1, r1, #2
	adds r4, r4, r1
	ldr r2, _0802B604 @ =0x06002E00
	adds r1, r4, #0
	adds r3, r5, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r4, _0802B608 @ =_080C2F88
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x80
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	ldr r4, _0802B60C @ =_080C38B4
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	adds r0, r4, #0
	movs r2, #0x20
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	str r6, [sp, #4]
	add r4, sp, #4
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r5, _0802B610 @ =0x01000200
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	str r6, [sp, #8]
	add r4, sp, #8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	movs r0, #3
	bl map_setBufferDirty
	ldr r1, _0802B5C8 @ =0x04000008
	ldrb r0, [r1]
	movs r2, #0x7f
	ands r2, r0
	strb r2, [r1]
	ldrb r0, [r1, #1]
	mov r2, sb
	ands r2, r0
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1, #1]
	ldrb r0, [r1]
	movs r2, #4
	rsbs r2, r2, #0
	ands r2, r0
	strb r2, [r1]
	ldrb r0, [r1]
	adds r2, r7, #0
	ands r2, r0
	strb r2, [r1]
	ldrb r0, [r1]
	mov r2, sl
	ands r2, r0
	strb r2, [r1]
	ldrb r0, [r1, #1]
	mov r2, r8
	ands r2, r0
	movs r0, #6
	orrs r2, r0
	strb r2, [r1, #1]
	ldr r0, _0802B614 @ =0x04000010
	strh r6, [r0]
	adds r0, #2
	strh r6, [r0]
	movs r0, #1
	bl pltt_setDirtyFlag
	ldr r1, _0802B59C @ =0x03002E20
	ldr r2, _0802B618 @ =0x00000C7C
	adds r0, r1, r2
	str r6, [r0]
	bl sub_805A7C0
	ldr r0, _0802B61C @ =0x0203EBD8
	ldr r0, [r0]
	ldr r1, _0802B620 @ =0x00000DD8
	adds r0, r0, r1
	str r6, [r0]
	ldr r1, _0802B624 @ =sub_802BAB0
	movs r0, #0x18
	bl vcount_register
	ldr r4, _0802B628 @ =sub_802BA24
	movs r0, #1
	movs r1, #2
	rsbs r1, r1, #0
	bl irq_updateMask
	ldr r2, _0802B59C @ =0x03002E20
	str r4, [r2, #0xc]
	movs r0, #2
	ldr r1, _0802B5A0 @ =0x00010001
	bl irq_updateMask
	ldr r1, _0802B62C @ =0x00010004
	movs r0, #2
	bl irq_updateMask
	bl m4aSoundVSyncOn
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B59C: .4byte 0x03002E20
_0802B5A0: .4byte 0x00010001
_0802B5A4: .4byte 0x00009FFF
_0802B5A8: .4byte 0x04000040
_0802B5AC: .4byte 0x0000FFFF
_0802B5B0: .4byte 0x0400004A
_0802B5B4: .4byte 0x04000054
_0802B5B8: .4byte 0x01006000
_0802B5BC: .4byte 0x06003800
_0802B5C0: .4byte 0x06003000
_0802B5C4: .4byte _080DCEE8
_0802B5C8: .4byte 0x04000008
_0802B5CC: .4byte 0x00003741
_0802B5D0: .4byte _080C2FA8
_0802B5D4: .4byte 0x02020400
_0802B5D8: .4byte 0x06012800
_0802B5DC: .4byte 0x80000200
_0802B5E0: .4byte 0x06013000
_0802B5E4: .4byte 0x80000600
_0802B5E8: .4byte _080A97F8
_0802B5EC: .4byte _080A9E2C
_0802B5F0: .4byte _080AA56C
_0802B5F4: .4byte 0x80000C00
_0802B5F8: .4byte _08063834
_0802B5FC: .4byte 0x06002A00
_0802B600: .4byte 0x80000100
_0802B604: .4byte 0x06002E00
_0802B608: .4byte _080C2F88
_0802B60C: .4byte _080C38B4
_0802B610: .4byte 0x01000200
_0802B614: .4byte 0x04000010
_0802B618: .4byte 0x00000C7C
_0802B61C: .4byte 0x0203EBD8
_0802B620: .4byte 0x00000DD8
_0802B624: .4byte sub_802BAB0
_0802B628: .4byte sub_802BA24
_0802B62C: .4byte 0x00010004

	thumb_func_start sub_802B630
sub_802B630: @ 0x0802B630
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r4, _0802B688 @ =0x03002E20
	movs r0, #0x24
	adds r0, r0, r4
	mov sb, r0
	bl sub_8048C74
	ldr r2, _0802B68C @ =0x000007FE
	adds r1, r4, r2
	ldr r0, _0802B690 @ =0x00000181
	strh r0, [r1]
	ldr r0, _0802B694 @ =0x0203EC34
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r4, r4, r1
	strb r0, [r4]
	ldr r0, _0802B698 @ =0x0203EC38
	ldr r1, [r0]
	mov r0, sb
	movs r2, #1
	bl sub_804AE58
	ldr r0, _0802B69C @ =0x0203EC3C
	ldr r0, [r0]
	cmp r0, #0
	bne _0802B6A4
	ldr r4, _0802B6A0 @ =_080DC524
	bl main_getRandom
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802B680
	adds r0, #0xf
_0802B680:
	asrs r0, r0, #4
	movs r1, #0xc
	b _0802B6B8
	.align 2, 0
_0802B688: .4byte 0x03002E20
_0802B68C: .4byte 0x000007FE
_0802B690: .4byte 0x00000181
_0802B694: .4byte 0x0203EC34
_0802B698: .4byte 0x0203EC38
_0802B69C: .4byte 0x0203EC3C
_0802B6A0: .4byte _080DC524
_0802B6A4:
	ldr r4, _0802B7D4 @ =_080DC554
	bl main_getRandom
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802B6B4
	adds r0, #0xf
_0802B6B4:
	asrs r0, r0, #4
	movs r1, #0x12
_0802B6B8:
	bl __umodsi3
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldr r0, _0802B7D8 @ =0x000007DD
	add r0, sb
	movs r5, #0
	strb r1, [r0]
	movs r0, #0xdc
	lsls r0, r0, #3
	add r0, sb
	ldr r2, _0802B7DC @ =0x00000DE8
	movs r1, #1
	bl frmheap_calloc
	adds r4, r0, #0
	ldr r0, _0802B7E0 @ =0x0203EBD8
	str r4, [r0]
	bl sub_8002C24
	ldr r2, _0802B7E4 @ =0x00000DD4
	adds r4, r4, r2
	str r0, [r4]
	movs r0, #0
	bl sub_8002C30
	ldr r0, _0802B7E8 @ =0x0203EBDC
	str r5, [r0]
	bl sub_802B2BC
	add r2, sp, #0xc
	add r3, sp, #0x10
	add r0, sp, #0x14
	str r0, [sp]
	mov r0, sb
	movs r1, #7
	bl sub_8032AA0
	movs r4, #0
	movs r0, #0xfe
	lsls r0, r0, #3
	add r0, sb
	ldrb r0, [r0]
	cmp r4, r0
	bge _0802B748
	movs r6, #0
	ldr r0, _0802B7EC @ =0x0000FFFE
	adds r5, r0, #0
_0802B71A:
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	mov r0, sb
	bl sub_804AED4
	ldrh r1, [r0, #0x34]
	ands r1, r5
	strh r1, [r0, #0x34]
	ldr r1, [sp, #0xc]
	str r1, [r0]
	ldr r1, [sp, #0x10]
	str r1, [r0, #4]
	str r6, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0x24]
	adds r4, #1
	movs r0, #0xfe
	lsls r0, r0, #3
	add r0, sb
	ldrb r0, [r0]
	cmp r4, r0
	blt _0802B71A
_0802B748:
	ldr r0, _0802B7F0 @ =0x000007F4
	add r0, sb
	ldr r2, [r0]
	ldr r0, [r2, #0x48]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _0802B7F4 @ =0x00002030
	orrs r0, r1
	str r0, [r2, #0x48]
	ldr r6, _0802B7F8 @ =0x03002E20
	movs r1, #0xff
	lsls r1, r1, #3
	adds r2, r6, r1
	ldrb r1, [r2]
	movs r0, #0xf0
	ands r0, r1
	movs r1, #6
	movs r4, #0
	orrs r0, r1
	strb r0, [r2]
	ldr r5, _0802B7E0 @ =0x0203EBD8
	ldr r0, [r5]
	movs r1, #1
	str r1, [r0]
	str r1, [r0, #4]
	ldr r2, _0802B7FC @ =0x00000DDC
	adds r0, r0, r2
	str r4, [r0]
	ldr r1, _0802B800 @ =_080DCE78
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	ldr r0, [r5]
	movs r2, #0xde
	lsls r2, r2, #4
	adds r1, r0, r2
	str r4, [r1]
	ldr r1, _0802B804 @ =0x00000DE4
	adds r0, r0, r1
	str r4, [r0]
	movs r0, #0x36
	bl m4aSongNumStart
	mov sl, r6
_0802B7A4:
	bl oam_update
	bl main_frameProc
	ldr r0, _0802B7E0 @ =0x0203EBD8
	ldr r1, [r0]
	ldr r2, _0802B7FC @ =0x00000DDC
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _0802B7BC
	b _0802B9A0
_0802B7BC:
	adds r7, r1, #0
	ldr r0, _0802B804 @ =0x00000DE4
	adds r0, r0, r7
	mov r8, r0
	ldr r6, [r0]
	cmp r6, #1
	beq _0802B880
	cmp r6, #1
	bgt _0802B808
	cmp r6, #0
	beq _0802B80E
	b _0802B90E
	.align 2, 0
_0802B7D4: .4byte _080DC554
_0802B7D8: .4byte 0x000007DD
_0802B7DC: .4byte 0x00000DE8
_0802B7E0: .4byte 0x0203EBD8
_0802B7E4: .4byte 0x00000DD4
_0802B7E8: .4byte 0x0203EBDC
_0802B7EC: .4byte 0x0000FFFE
_0802B7F0: .4byte 0x000007F4
_0802B7F4: .4byte 0x00002030
_0802B7F8: .4byte 0x03002E20
_0802B7FC: .4byte 0x00000DDC
_0802B800: .4byte _080DCE78
_0802B804: .4byte 0x00000DE4
_0802B808:
	cmp r6, #2
	beq _0802B8DC
	b _0802B90E
_0802B80E:
	movs r1, #0xde
	lsls r1, r1, #4
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0802B90E
	movs r0, #2
	bl main_checkKeysTriggered
	cmp r0, #0
	beq _0802B90E
	ldr r2, _0802B874 @ =0x03004F70
	ldrb r1, [r2, #0xc]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0xc]
	movs r0, #0x11
	ldr r2, _0802B878 @ =0x03003A28
	str r0, [r2]
	str r6, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r5, _0802B87C @ =0x01000200
	add r0, sp, #4
	adds r2, r5, #0
	bl CpuFastSet
	str r6, [sp, #8]
	add r4, sp, #8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	movs r0, #3
	bl map_setBufferDirty
	mov r1, r8
	ldr r0, [r1]
	adds r0, #1
	b _0802B90C
	.align 2, 0
_0802B874: .4byte 0x03004F70
_0802B878: .4byte 0x03003A28
_0802B87C: .4byte 0x01000200
_0802B880:
	ldr r5, _0802B8C8 @ =0x03004F70
	ldrb r1, [r5, #0xc]
	movs r2, #2
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _0802B90E
	mov r0, r8
	str r2, [r0]
	ldr r1, _0802B8CC @ =0x00000DD8
	adds r0, r7, r1
	str r4, [r0]
	movs r0, #0
	bl pltt_getBuffer
	strh r4, [r0]
	movs r0, #1
	bl pltt_setDirtyFlag
	ldr r0, _0802B8D0 @ =trns_initDefaultOutTransition
	str r0, [r5, #4]
	ldr r0, _0802B8D4 @ =trns_applyDefaultOutTransition
	str r0, [r5]
	str r4, [r5, #8]
	strb r6, [r5, #0xe]
	bl trns_start
	ldr r0, _0802B8D8 @ =gMPlayTable
	ldr r0, [r0]
	movs r1, #1
	bl m4aMPlayFadeOut
	b _0802B90E
	.align 2, 0
_0802B8C8: .4byte 0x03004F70
_0802B8CC: .4byte 0x00000DD8
_0802B8D0: .4byte trns_initDefaultOutTransition
_0802B8D4: .4byte trns_applyDefaultOutTransition
_0802B8D8: .4byte gMPlayTable
_0802B8DC:
	ldr r0, _0802B93C @ =0x03004F70
	ldrb r0, [r0, #0xc]
	ands r6, r0
	cmp r6, #0
	bne _0802B90E
	ldr r0, _0802B940 @ =0x0000000B
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0802B906
	ldr r5, _0802B944 @ =gMPlayTable
	adds r4, r0, #0
_0802B8F4:
	ldr r0, [r5]
	ldr r1, _0802B948 @ =gSongTable
	ldr r1, [r1, #8]
	bl MPlayStart
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _0802B8F4
_0802B906:
	ldr r2, _0802B94C @ =0x00000DDC
	adds r1, r7, r2
	movs r0, #1
_0802B90C:
	str r0, [r1]
_0802B90E:
	mov r1, sl
	ldr r0, [r1, #0x10]
	adds r0, #1
	str r0, [r1, #0x10]
	ldr r4, _0802B950 @ =0x0203EBD8
	ldr r0, [r4]
	ldr r0, [r0]
	cmp r0, #0
	bne _0802B954
	mov r0, sb
	bl sub_804978C
	mov r0, sb
	bl sub_804AEFC
	ldr r0, [r4]
	ldr r0, [r0]
	cmp r0, #0
	bne _0802B954
	mov r0, sb
	bl sub_8049850
	b _0802B970
	.align 2, 0
_0802B93C: .4byte 0x03004F70
_0802B940: .4byte 0x0000000B
_0802B944: .4byte gMPlayTable
_0802B948: .4byte gSongTable
_0802B94C: .4byte 0x00000DDC
_0802B950: .4byte 0x0203EBD8
_0802B954:
	ldr r0, _0802B998 @ =0x00000724
	add r0, sb
	ldr r0, [r0]
	cmp r0, #0
	beq _0802B970
_0802B95E:
	ldr r4, [r0, #0x3c]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _0802B96A
	bl _call_via_r1
_0802B96A:
	adds r0, r4, #0
	cmp r0, #0
	bne _0802B95E
_0802B970:
	mov r0, sb
	bl sub_804C0A8
	ldr r0, _0802B99C @ =0x0203EBD8
	ldr r0, [r0]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0802B986
	mov r0, sb
	bl sub_8049B0C
_0802B986:
	mov r0, sb
	bl sub_8049D78
	mov r0, sb
	bl sub_804C38C
	bl sub_804389C
	b _0802B7A4
	.align 2, 0
_0802B998: .4byte 0x00000724
_0802B99C: .4byte 0x0203EBD8
_0802B9A0:
	movs r2, #0
	str r2, [sp, #4]
	add r0, sp, #4
	ldr r1, _0802BA10 @ =0x02020400
	ldr r2, _0802BA14 @ =0x01001400
	bl CpuFastSet
	mov r0, sb
	bl sub_8002BFC
	ldr r0, _0802BA18 @ =spm_main
	mov r1, sl
	str r0, [r1]
	ldrb r0, [r1, #8]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	mov r2, sl
	strb r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #1
	movs r1, #7
	rsbs r1, r1, #0
	bl irq_updateMask
	movs r0, #1
	movs r1, #2
	rsbs r1, r1, #0
	bl irq_updateMask
	movs r0, #0
	mov r1, sl
	str r0, [r1, #0xc]
	movs r0, #2
	ldr r1, _0802BA1C @ =0x00010001
	bl irq_updateMask
	ldr r1, _0802BA20 @ =main_dummyIrqHandler
	movs r0, #1
	bl irq_setHandler
	movs r0, #1
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802BA10: .4byte 0x02020400
_0802BA14: .4byte 0x01001400
_0802BA18: .4byte spm_main
_0802BA1C: .4byte 0x00010001
_0802BA20: .4byte main_dummyIrqHandler

	thumb_func_start sub_802BA24
sub_802BA24: @ 0x0802BA24
	push {r4, r5, r6, lr}
	ldr r4, _0802BA60 @ =0x03002E20
	adds r6, r4, #0
	adds r6, #0x24
	ldr r0, _0802BA64 @ =0x00000848
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_80312E8
	ldr r1, _0802BA68 @ =0x00000BC8
	adds r4, r4, r1
	ldr r2, [r4]
	movs r0, #0x14
	ldrsh r1, [r5, r0]
	adds r0, r6, #0
	bl sub_804AD00
	ldr r0, _0802BA6C @ =0x0203EBD8
	ldr r0, [r0]
	ldr r1, _0802BA70 @ =0x00000DD8
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0802BA5A
	ldr r1, _0802BA74 @ =0x0400004A
	movs r0, #0x31
	strh r0, [r1]
_0802BA5A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802BA60: .4byte 0x03002E20
_0802BA64: .4byte 0x00000848
_0802BA68: .4byte 0x00000BC8
_0802BA6C: .4byte 0x0203EBD8
_0802BA70: .4byte 0x00000DD8
_0802BA74: .4byte 0x0400004A

	thumb_func_start sub_0802BA78
sub_0802BA78: @ 0x0802BA78
	ldr r1, [r0, #0x68]
	ldr r0, _0802BA88 @ =0x030069F0
	ldrb r0, [r0, #1]
	cmp r0, r1
	blt _0802BA8C
	movs r0, #1
	b _0802BA8E
	.align 2, 0
_0802BA88: .4byte 0x030069F0
_0802BA8C:
	movs r0, #0
_0802BA8E:
	bx lr

	thumb_func_start sub_802BA90
sub_802BA90: @ 0x0802BA90
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0802BAAC @ =0x00009FFF
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	bx lr
	.align 2, 0
_0802BAAC: .4byte 0x00009FFF

	thumb_func_start sub_802BAB0
sub_802BAB0: @ 0x0802BAB0
	sub sp, #4
	ldr r0, _0802BABC @ =0x0203EBD8
	ldr r2, [r0]
	movs r0, #0
	b _0802BAC4
	.align 2, 0
_0802BABC: .4byte 0x0203EBD8
_0802BAC0:
	ldr r0, [sp]
	adds r0, #1
_0802BAC4:
	str r0, [sp]
	ldr r0, [sp]
	cmp r0, #0x31
	ble _0802BAC0
	ldr r1, _0802BAE8 @ =0x00000DD8
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0802BAE2
	ldr r1, _0802BAEC @ =0x04000010
	ldr r0, [r2, #0x10]
	strh r0, [r1]
	adds r1, #0x3a
	movs r0, #0x21
	strh r0, [r1]
_0802BAE2:
	add sp, #4
	bx lr
	.align 2, 0
_0802BAE8: .4byte 0x00000DD8
_0802BAEC: .4byte 0x04000010

	thumb_func_start sub_0802BAF0
sub_0802BAF0: @ 0x0802BAF0
	push {lr}
	ldr r0, _0802BB1C @ =0x0203EBD8
	ldr r0, [r0]
	movs r2, #0
	str r2, [r0, #0x10]
	ldr r1, _0802BB20 @ =0x00000DD8
	adds r0, r0, r1
	movs r1, #1
	str r1, [r0]
	ldr r0, _0802BB24 @ =sub_802BA90
	ldr r1, _0802BB28 @ =0x03004F70
	str r0, [r1, #4]
	ldr r0, _0802BB2C @ =sub_8029C38
	str r0, [r1]
	str r2, [r1, #8]
	movs r0, #2
	strb r0, [r1, #0xe]
	bl trns_start
	pop {r0}
	bx r0
	.align 2, 0
_0802BB1C: .4byte 0x0203EBD8
_0802BB20: .4byte 0x00000DD8
_0802BB24: .4byte sub_802BA90
_0802BB28: .4byte 0x03004F70
_0802BB2C: .4byte sub_8029C38

	thumb_func_start sub_0802BB30
sub_0802BB30: @ 0x0802BB30
	ldr r0, _0802BB40 @ =0x03004F70
	ldrb r1, [r0, #0xc]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0802BB40: .4byte 0x03004F70

	thumb_func_start sub_0802BB44
sub_0802BB44: @ 0x0802BB44
	ldr r0, _0802BB5C @ =0x0203EBD8
	ldr r0, [r0]
	movs r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	movs r1, #0xde
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r1, #1
	str r1, [r0]
	bx lr
	.align 2, 0
_0802BB5C: .4byte 0x0203EBD8

	thumb_func_start sub_0802BB60
sub_0802BB60: @ 0x0802BB60
	push {r4, lr}
	ldr r0, _0802BB94 @ =0x0203EBD8
	ldr r0, [r0]
	adds r4, r0, #0
	ldr r1, [r0, #0xc]
	cmp r1, #0
	bne _0802BB80
	movs r2, #0xa1
	lsls r2, r2, #2
	adds r0, r0, r2
	str r1, [r0]
	ldr r1, _0802BB98 @ =_080DC8D8
	movs r0, #0
	movs r2, #0
	bl sub_8030224
_0802BB80:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	bl sub_8029E38
	movs r0, #1
	bl map_setBufferDirty
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802BB94: .4byte 0x0203EBD8
_0802BB98: .4byte _080DC8D8

	thumb_func_start sub_0802BB9C
sub_0802BB9C: @ 0x0802BB9C
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _0802BBD4 @ =0x0203EBD8
	ldr r2, [r0]
	ldr r4, [r3, #0x68]
	movs r5, #1
	ldr r0, [r2, #0xc]
	cmp r0, #0
	bne _0802BBCA
	movs r1, #0x9f
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r1, [r0]
	subs r1, #1
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r2, r0
	movs r1, #0x28
	ldrsh r0, [r0, r1]
	cmp r0, #7
	beq _0802BBCA
	movs r5, #0
_0802BBCA:
	str r4, [r3, #0x68]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802BBD4: .4byte 0x0203EBD8

	thumb_func_start sub_0802BBD8
sub_0802BBD8: @ 0x0802BBD8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802BC0C @ =0x0203EBD8
	ldr r2, [r0]
	ldr r1, _0802BC10 @ =_080DDE58
	ldr r0, [r2, #8]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r3, [r0]
	ldr r1, [r2, #0xc]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [r3, #0xc]
	adds r1, r1, r0
	ldr r2, [r4, #0x68]
	adds r2, #1
	movs r0, #0
	ldrb r1, [r1, #1]
	cmp r2, r1
	ble _0802BC04
	movs r0, #1
_0802BC04:
	str r2, [r4, #0x68]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0802BC0C: .4byte 0x0203EBD8
_0802BC10: .4byte _080DDE58

	thumb_func_start sub_0802BC14
sub_0802BC14: @ 0x0802BC14
	adds r3, r0, #0
	ldr r0, _0802BC34 @ =0x0203EBD8
	ldr r1, [r0]
	ldr r2, _0802BC38 @ =_080DDE58
	ldr r0, [r1, #8]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r0, [r0]
	ldrb r2, [r0, #9]
	ldr r0, [r1, #0xc]
	adds r0, #1
	str r0, [r1, #0xc]
	cmp r0, r2
	bge _0802BC3C
	movs r0, #1
	b _0802BC3E
	.align 2, 0
_0802BC34: .4byte 0x0203EBD8
_0802BC38: .4byte _080DDE58
_0802BC3C:
	movs r0, #0
_0802BC3E:
	str r0, [r3, #0x68]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802BC44
sub_0802BC44: @ 0x0802BC44
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _0802BC80 @ =0x0203EBD8
	ldr r2, [r0]
	ldr r3, [r5, #0x68]
	ldr r1, _0802BC84 @ =_080DDE58
	ldr r4, [r2, #8]
	lsls r0, r4, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r6, [r0]
	movs r1, #0
	cmp r4, #0x10
	bgt _0802BC8C
	movs r7, #0xa1
	lsls r7, r7, #2
	adds r0, r2, r7
	ldr r0, [r0]
	cmp r0, #0
	beq _0802BC9C
	adds r3, #1
	cmp r3, r6
	ble _0802BC88
	str r1, [r2, #0xc]
	adds r0, r4, #1
	str r0, [r2, #8]
	movs r0, #1
	str r0, [r5, #0x68]
	b _0802BC9A
	.align 2, 0
_0802BC80: .4byte 0x0203EBD8
_0802BC84: .4byte _080DDE58
_0802BC88:
	str r3, [r5, #0x68]
	b _0802BC9C
_0802BC8C:
	movs r3, #0xa1
	lsls r3, r3, #2
	adds r0, r2, r3
	ldr r0, [r0]
	cmp r0, #0
	beq _0802BC9C
	str r1, [r5, #0x68]
_0802BC9A:
	movs r1, #1
_0802BC9C:
	adds r0, r1, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0802BCA4
sub_0802BCA4: @ 0x0802BCA4
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _0802BD00 @ =0x0203EBD8
	ldr r0, [r0]
	movs r1, #0xde
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r4, #0
	str r4, [r0]
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r5, _0802BD04 @ =0x01000200
	mov r0, sp
	adds r2, r5, #0
	bl CpuFastSet
	str r4, [sp, #4]
	add r4, sp, #4
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	movs r0, #3
	bl map_setBufferDirty
	ldr r0, _0802BD08 @ =0x03002E20
	movs r1, #0x11
	ldr r2, _0802BD0C @ =0x00000C08
	adds r0, r0, r2
	str r1, [r0]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802BD00: .4byte 0x0203EBD8
_0802BD04: .4byte 0x01000200
_0802BD08: .4byte 0x03002E20
_0802BD0C: .4byte 0x00000C08

	thumb_func_start sub_0802BD10
sub_0802BD10: @ 0x0802BD10
	ldr r2, _0802BD1C @ =0x03004F70
	ldrb r1, [r2, #0xc]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0xc]
	bx lr
	.align 2, 0
_0802BD1C: .4byte 0x03004F70

	thumb_func_start sub_0802BD20
sub_0802BD20: @ 0x0802BD20
	ldr r0, _0802BD34 @ =0x03004F70
	ldrb r1, [r0, #0xc]
	movs r0, #2
	ands r0, r1
	movs r1, #0
	cmp r0, #0
	bne _0802BD30
	movs r1, #1
_0802BD30:
	adds r0, r1, #0
	bx lr
	.align 2, 0
_0802BD34: .4byte 0x03004F70

	thumb_func_start sub_0802BD38
sub_0802BD38: @ 0x0802BD38
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r0, [r7, #0x68]
	mov r8, r0
	movs r2, #0
	ldr r0, _0802BD90 @ =0x03004F70
	ldrb r1, [r0, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802BD80
	ldr r0, _0802BD94 @ =0x0203EBD8
	ldr r6, [r0]
	ldr r0, _0802BD98 @ =0x0000000B
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r2, r0
	bge _0802BD76
	ldr r5, _0802BD9C @ =gMPlayTable
	adds r4, r0, #0
_0802BD64:
	ldr r0, [r5]
	ldr r1, _0802BDA0 @ =gSongTable
	ldr r1, [r1, #8]
	bl MPlayStart
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _0802BD64
_0802BD76:
	ldr r0, _0802BDA4 @ =0x00000DDC
	adds r1, r6, r0
	movs r0, #1
	str r0, [r1]
	movs r2, #1
_0802BD80:
	mov r0, r8
	str r0, [r7, #0x68]
	adds r0, r2, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802BD90: .4byte 0x03004F70
_0802BD94: .4byte 0x0203EBD8
_0802BD98: .4byte 0x0000000B
_0802BD9C: .4byte gMPlayTable
_0802BDA0: .4byte gSongTable
_0802BDA4: .4byte 0x00000DDC

	thumb_func_start sub_0802BDA8
sub_0802BDA8: @ 0x0802BDA8
	push {r4, lr}
	ldr r1, _0802BDCC @ =0x0203EBD8
	ldr r4, [r1]
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r2, [r3]
	ldr r1, _0802BDD0 @ =0x00009FFF
	ands r1, r2
	strh r1, [r3]
	movs r1, #0x80
	lsls r1, r1, #1
	str r1, [r4, #0x10]
	movs r1, #0
	str r1, [r0, #0x70]
	str r1, [r0, #0x74]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802BDCC: .4byte 0x0203EBD8
_0802BDD0: .4byte 0x00009FFF

	thumb_func_start sub_0802BDD4
sub_0802BDD4: @ 0x0802BDD4
	push {lr}
	ldr r1, _0802BDE4 @ =_080DCC54
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	pop {r0}
	bx r0
	.align 2, 0
_0802BDE4: .4byte _080DCC54

	thumb_func_start sub_0802BDE8
sub_0802BDE8: @ 0x0802BDE8
	push {lr}
	ldr r1, _0802BDF8 @ =_080DCC74
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	pop {r0}
	bx r0
	.align 2, 0
_0802BDF8: .4byte _080DCC74

	thumb_func_start sub_0802BDFC
sub_0802BDFC: @ 0x0802BDFC
	push {r4, r5, lr}
	ldr r1, _0802BE3C @ =0x0203EBD8
	ldr r4, [r1]
	ldr r2, [r0, #0x68]
	movs r3, #0
	lsls r1, r2, #2
	ldr r5, _0802BE40 @ =0x00000DC8
	adds r0, r4, r5
	adds r1, r0, r1
	ldr r0, [r1]
	cmp r3, r0
	bge _0802BE34
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #2
	subs r0, r0, r2
	adds r2, r1, #0
	lsls r0, r0, #4
	adds r1, r0, r4
	ldr r5, _0802BE44 @ =0x0000074C
	movs r4, #8
_0802BE26:
	adds r0, r1, r5
	strh r4, [r0]
	adds r1, #0x1c
	adds r3, #1
	ldr r0, [r2]
	cmp r3, r0
	blt _0802BE26
_0802BE34:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802BE3C: .4byte 0x0203EBD8
_0802BE40: .4byte 0x00000DC8
_0802BE44: .4byte 0x0000074C

	thumb_func_start sub_0802BE48
sub_0802BE48: @ 0x0802BE48
	movs r1, #0
	str r1, [r0, #0x68]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802BE50
sub_0802BE50: @ 0x0802BE50
	push {r4, r5, r6, r7, lr}
	ldr r0, _0802BEA4 @ =0x0203EBD8
	ldr r1, [r0]
	movs r4, #0
	ldr r0, _0802BEA8 @ =_080DCCB4
	movs r6, #0x80
	lsls r6, r6, #1
	movs r5, #0
	adds r3, r0, #0
	adds r3, #8
	movs r0, #0xab
	lsls r0, r0, #2
	adds r2, r1, r0
	movs r7, #0xa2
	lsls r7, r7, #2
	adds r1, r1, r7
_0802BE70:
	movs r7, #0
	ldrsh r0, [r3, r7]
	adds r0, #0x78
	str r0, [r1]
	movs r7, #2
	ldrsh r0, [r3, r7]
	adds r0, #0x50
	str r0, [r1, #4]
	str r6, [r1, #0x14]
	str r6, [r1, #0x10]
	str r5, [r1, #0x1c]
	str r5, [r1, #0x18]
	movs r0, #1
	strh r0, [r1, #0x20]
	strh r5, [r1, #0x22]
	strb r4, [r2]
	adds r3, #0xc
	adds r2, #0x28
	adds r1, #0x28
	adds r4, #1
	cmp r4, #0x1a
	ble _0802BE70
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BEA4: .4byte 0x0203EBD8
_0802BEA8: .4byte _080DCCB4

	thumb_func_start sub_0802BEAC
sub_0802BEAC: @ 0x0802BEAC
	push {lr}
	ldr r1, _0802BEBC @ =_080DCEC8
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	pop {r0}
	bx r0
	.align 2, 0
_0802BEBC: .4byte _080DCEC8

	thumb_func_start sub_0802BEC0
sub_0802BEC0: @ 0x0802BEC0
	ldr r0, _0802BEDC @ =0x0203EBD8
	ldr r0, [r0]
	movs r2, #0x1f
	movs r1, #0x1a
	movs r3, #0xd3
	lsls r3, r3, #3
	adds r0, r0, r3
_0802BECE:
	strh r2, [r0, #0x20]
	subs r0, #0x28
	subs r1, #1
	cmp r1, #0
	bge _0802BECE
	bx lr
	.align 2, 0
_0802BEDC: .4byte 0x0203EBD8

	thumb_func_start sub_0802BEE0
sub_0802BEE0: @ 0x0802BEE0
	push {r4, lr}
	ldr r0, _0802BF14 @ =0x0203EBD8
	ldr r0, [r0]
	movs r1, #0
	movs r3, #0xa0
	lsls r3, r3, #1
	movs r2, #0
	movs r4, #0xd8
	lsls r4, r4, #3
	adds r0, r0, r4
_0802BEF4:
	str r3, [r0]
	str r3, [r0, #4]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	strb r1, [r0, #0x14]
	adds r0, #0x18
	adds r1, #1
	cmp r1, #4
	ble _0802BEF4
	ldr r1, _0802BF18 @ =0x0400004A
	movs r0, #0x30
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802BF14: .4byte 0x0203EBD8
_0802BF18: .4byte 0x0400004A

	thumb_func_start sub_0802BF1C
sub_0802BF1C: @ 0x0802BF1C
	ldr r1, _0802BF38 @ =0x0203EBD8
	ldr r1, [r1]
	ldr r2, [r0, #0x68]
	movs r0, #0xdb
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r0, #3
_0802BF2A:
	strh r2, [r1, #0x12]
	adds r1, #0x18
	subs r0, #1
	cmp r0, #0
	bge _0802BF2A
	bx lr
	.align 2, 0
_0802BF38: .4byte 0x0203EBD8

	thumb_func_start sub_0802BF3C
sub_0802BF3C: @ 0x0802BF3C
	push {r4, r5, lr}
	ldr r0, _0802BF74 @ =0x0203EBD8
	ldr r4, [r0]
	movs r3, #0
	movs r1, #0xa0
	lsls r1, r1, #1
	movs r0, #0
	movs r5, #0xd8
	lsls r5, r5, #3
	adds r2, r4, r5
_0802BF50:
	str r1, [r2]
	str r1, [r2, #4]
	strh r0, [r2, #0x10]
	strh r0, [r2, #0x12]
	strb r3, [r2, #0x14]
	adds r2, #0x18
	adds r3, #1
	cmp r3, #4
	ble _0802BF50
	movs r0, #0xd8
	lsls r0, r0, #3
	adds r1, r4, r0
	movs r0, #0xb
	strh r0, [r1, #0x12]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802BF74: .4byte 0x0203EBD8

	thumb_func_start sub_802BF78
sub_802BF78: @ 0x0802BF78
	ldr r3, _0802BF88 @ =0x0203EC34
	str r0, [r3]
	ldr r0, _0802BF8C @ =0x0203EC38
	str r1, [r0]
	ldr r0, _0802BF90 @ =0x0203EC3C
	str r2, [r0]
	bx lr
	.align 2, 0
_0802BF88: .4byte 0x0203EC34
_0802BF8C: .4byte 0x0203EC38
_0802BF90: .4byte 0x0203EC3C

	thumb_func_start sub_802BF94
sub_802BF94: @ 0x0802BF94
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0802BFD4 @ =0x000007D4
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802C05A
	ldr r2, _0802BFD8 @ =0x000007D6
	adds r0, r4, r2
	strb r1, [r0]
	ldr r1, _0802BFDC @ =0x000007DA
	adds r0, r4, r1
	ldrh r2, [r0]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r1, r2
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _0802C01C
	cmp r1, r0
	bgt _0802BFE0
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0802BFEA
	b _0802C048
	.align 2, 0
_0802BFD4: .4byte 0x000007D4
_0802BFD8: .4byte 0x000007D6
_0802BFDC: .4byte 0x000007DA
_0802BFE0:
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	beq _0802C040
	b _0802C048
_0802BFEA:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0802C004
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0802C048
	ldr r1, _0802C000 @ =_080DDF4C
	b _0802C04A
	.align 2, 0
_0802C000: .4byte _080DDF4C
_0802C004:
	bl sub_8002C3C
	cmp r0, #0
	beq _0802C014
	ldr r1, _0802C010 @ =_080DDEF4
	b _0802C04A
	.align 2, 0
_0802C010: .4byte _080DDEF4
_0802C014:
	ldr r1, _0802C018 @ =_080DDF04
	b _0802C04A
	.align 2, 0
_0802C018: .4byte _080DDF04
_0802C01C:
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0802C048
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r2
	cmp r0, #0
	beq _0802C038
	ldr r1, _0802C034 @ =_080DDF38
	b _0802C04A
	.align 2, 0
_0802C034: .4byte _080DDF38
_0802C038:
	ldr r1, _0802C03C @ =_080DDF4C
	b _0802C04A
	.align 2, 0
_0802C03C: .4byte _080DDF4C
_0802C040:
	ldr r1, _0802C044 @ =_080DDF28
	b _0802C04A
	.align 2, 0
_0802C044: .4byte _080DDF28
_0802C048:
	ldr r1, _0802C060 @ =_080DDF18
_0802C04A:
	ldr r0, _0802C064 @ =0x03002C78
	str r1, [r0]
	ldr r0, _0802C068 @ =0x000007D4
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2]
_0802C05A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802C060: .4byte _080DDF18
_0802C064: .4byte 0x03002C78
_0802C068: .4byte 0x000007D4

	thumb_func_start sub_802C06C
sub_802C06C: @ 0x0802C06C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	ldr r1, [sp, #4]
	ldr r2, _0802C09C @ =0x000007D6
	adds r5, r1, r2
	ldrb r4, [r5]
	cmp r4, #2
	bne _0802C08C
	b _0802C46C
_0802C08C:
	cmp r4, #2
	bgt _0802C0A0
	cmp r4, #0
	beq _0802C0AE
	cmp r4, #1
	beq _0802C124
	b _0802C7DC
	.align 2, 0
_0802C09C: .4byte 0x000007D6
_0802C0A0:
	cmp r4, #3
	bne _0802C0A6
	b _0802C6EC
_0802C0A6:
	cmp r4, #0x64
	bne _0802C0AC
	b _0802C6FA
_0802C0AC:
	b _0802C7DC
_0802C0AE:
	ldr r0, _0802C10C @ =0x030001A4
	strh r4, [r0]
	movs r0, #0
	bl pltt_getBuffer
	ldr r1, _0802C110 @ =0x02004000
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuFastSet
	str r4, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _0802C114 @ =0x01000140
	mov r0, sp
	bl CpuFastSet
	movs r0, #2
	bl map_setBufferDirty
	bl sub_802CB7C
	ldr r3, _0802C118 @ =gMPlayTable
	ldr r2, _0802C11C @ =gSongTable
	movs r6, #0xd5
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r7, #0x8e
	lsls r7, r7, #3
	adds r2, r2, r7
	ldr r1, [r2]
	bl MPlayStart
	ldr r0, _0802C120 @ =0x030001A6
	strh r4, [r0]
	b _0802C6F2
	.align 2, 0
_0802C10C: .4byte 0x030001A4
_0802C110: .4byte 0x02004000
_0802C114: .4byte 0x01000140
_0802C118: .4byte gMPlayTable
_0802C11C: .4byte gSongTable
_0802C120: .4byte 0x030001A6
_0802C124:
	ldr r2, _0802C1B0 @ =0x030001A6
	movs r0, #0
	ldrsh r3, [r2, r0]
	cmp r3, #0
	beq _0802C130
	b _0802C284
_0802C130:
	ldr r2, _0802C1B4 @ =0x04000008
	ldrh r0, [r2]
	strh r3, [r2]
	ldrh r0, [r2]
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r4, #0
	bl sub_802DC88
	cmp r0, #0
	beq _0802C154
	bl sub_802DCB4
	cmp r0, #0
	bne _0802C156
_0802C154:
	movs r4, #1
_0802C156:
	cmp r4, #0
	beq _0802C22C
	ldr r6, [sp, #4]
	ldr r7, _0802C1B8 @ =0x000007DA
	adds r5, r6, r7
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0802C1E0
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0802C1BC @ =_080AAE3C
	movs r2, #0xc0
	lsls r2, r2, #0x13
	ldr r3, _0802C1C0 @ =0x80000400
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0802C1C4 @ =_080AB9BC
	ldr r2, _0802C1C8 @ =0x06000800
	ldr r4, _0802C1CC @ =0x800000E0
	adds r3, r4, #0
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0802C1D0 @ =_080ABB7C
	ldr r2, _0802C1D4 @ =0x060009C0
	adds r3, r4, #0
	bl dmaq_enqueue
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0802C24A
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0802C1D8 @ =_080ABD3C
	ldr r2, _0802C1DC @ =0x06000080
	b _0802C208
	.align 2, 0
_0802C1B0: .4byte 0x030001A6
_0802C1B4: .4byte 0x04000008
_0802C1B8: .4byte 0x000007DA
_0802C1BC: .4byte _080AAE3C
_0802C1C0: .4byte 0x80000400
_0802C1C4: .4byte _080AB9BC
_0802C1C8: .4byte 0x06000800
_0802C1CC: .4byte 0x800000E0
_0802C1D0: .4byte _080ABB7C
_0802C1D4: .4byte 0x060009C0
_0802C1D8: .4byte _080ABD3C
_0802C1DC: .4byte 0x06000080
_0802C1E0:
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0802C210 @ =_080AAE3C
	movs r2, #0xc0
	lsls r2, r2, #0x13
	ldr r3, _0802C214 @ =0x80000400
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0802C218 @ =_080AB63C
	ldr r2, _0802C21C @ =0x06000800
	ldr r4, _0802C220 @ =0x800000E0
	adds r3, r4, #0
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0802C224 @ =_080AD6FC
	ldr r2, _0802C228 @ =0x060009C0
_0802C208:
	adds r3, r4, #0
	bl dmaq_enqueue
	b _0802C24A
	.align 2, 0
_0802C210: .4byte _080AAE3C
_0802C214: .4byte 0x80000400
_0802C218: .4byte _080AB63C
_0802C21C: .4byte 0x06000800
_0802C220: .4byte 0x800000E0
_0802C224: .4byte _080AD6FC
_0802C228: .4byte 0x060009C0
_0802C22C:
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0802C26C @ =_080AAE3C
	movs r2, #0xc0
	lsls r2, r2, #0x13
	ldr r3, _0802C270 @ =0x80000230
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0802C274 @ =_080AD8BC
	ldr r2, _0802C278 @ =0x06000080
	ldr r3, _0802C27C @ =0x800000E0
	bl dmaq_enqueue
_0802C24A:
	ldr r4, _0802C280 @ =_080AACF0
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	b _0802C7D4
	.align 2, 0
_0802C26C: .4byte _080AAE3C
_0802C270: .4byte 0x80000230
_0802C274: .4byte _080AD8BC
_0802C278: .4byte 0x06000080
_0802C27C: .4byte 0x800000E0
_0802C280: .4byte _080AACF0
_0802C284:
	ldr r0, _0802C328 @ =0x03002C78
	ldr r1, [r0]
	ldrb r0, [r1, #2]
	lsrs r0, r0, #1
	mov sl, r0
	ldrb r0, [r1, #3]
	lsrs r0, r0, #1
	mov sb, r0
	ldrb r0, [r1]
	add r0, sl
	str r0, [sp, #0xc]
	ldrb r0, [r1, #1]
	add r0, sb
	str r0, [sp, #0x10]
	cmp r3, #8
	ble _0802C2A6
	b _0802C3B4
_0802C2A6:
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r0, sl
	muls r0, r1, r0
	cmp r0, #0
	bge _0802C2B4
	adds r0, #7
_0802C2B4:
	asrs r2, r0, #3
	mov r0, sb
	muls r0, r1, r0
	cmp r0, #0
	bge _0802C2C0
	adds r0, #7
_0802C2C0:
	mov r8, r2
	asrs r7, r0, #3
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x14]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [sp, #0x18]
	cmp r8, sl
	ble _0802C2E2
	mov r8, sl
_0802C2E2:
	cmp r7, sb
	ble _0802C2E8
	mov r7, sb
_0802C2E8:
	movs r5, #0
	lsls r0, r7, #1
	cmp r5, r0
	bge _0802C39C
	mov r6, r8
	lsls r6, r6, #1
	str r6, [sp, #0x30]
	str r0, [sp, #0x24]
_0802C2F8:
	movs r4, #0
	adds r0, r5, #1
	str r0, [sp, #0x34]
	ldr r1, [sp, #0x30]
	cmp r4, r1
	bge _0802C394
	ldr r2, [sp, #0xc]
	add r2, sl
	str r2, [sp, #0x1c]
	str r1, [sp, #0x3c]
	ldr r3, [sp, #0x10]
	add r3, sb
	str r3, [sp, #0x20]
	ldr r6, [sp, #0x24]
	subs r6, r5, r6
	mov ip, r6
_0802C318:
	cmp r4, r8
	bge _0802C32C
	ldr r1, [sp, #0xc]
	mov r2, sl
	subs r0, r1, r2
	adds r1, r0, r4
	b _0802C334
	.align 2, 0
_0802C328: .4byte 0x03002C78
_0802C32C:
	ldr r3, [sp, #0x3c]
	subs r0, r4, r3
	ldr r6, [sp, #0x1c]
	adds r1, r6, r0
_0802C334:
	cmp r5, r7
	bge _0802C342
	ldr r2, [sp, #0x10]
	mov r3, sb
	subs r0, r2, r3
	adds r3, r0, r5
	b _0802C346
_0802C342:
	ldr r3, [sp, #0x20]
	add r3, ip
_0802C346:
	cmp r1, #0
	blt _0802C38C
	cmp r3, #0
	blt _0802C38C
	cmp r1, #0x1f
	bgt _0802C38C
	cmp r3, #0x1f
	bgt _0802C38C
	ldr r6, [sp, #0xc]
	mov r2, r8
	subs r0, r6, r2
	adds r2, r0, r4
	ldr r6, [sp, #0x10]
	subs r0, r6, r7
	adds r0, r0, r5
	cmp r2, #0
	blt _0802C38C
	cmp r0, #0
	blt _0802C38C
	cmp r2, #0x1f
	bgt _0802C38C
	cmp r0, #0x1f
	bgt _0802C38C
	lsls r2, r2, #1
	lsls r0, r0, #6
	ldr r6, [sp, #0x14]
	adds r0, r0, r6
	adds r2, r2, r0
	lsls r1, r1, #1
	lsls r0, r3, #6
	ldr r3, [sp, #0x18]
	adds r0, r0, r3
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2]
_0802C38C:
	adds r4, #1
	ldr r6, [sp, #0x3c]
	cmp r4, r6
	blt _0802C318
_0802C394:
	ldr r5, [sp, #0x34]
	ldr r0, [sp, #0x24]
	cmp r5, r0
	blt _0802C2F8
_0802C39C:
	movs r0, #2
	bl map_setBufferDirty
	ldr r1, _0802C3B0 @ =0x030001A6
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl sub_802CEA4
	b _0802C7DC
	.align 2, 0
_0802C3B0: .4byte 0x030001A6
_0802C3B4:
	ldr r1, [sp, #4]
	ldr r2, _0802C3D0 @ =0x000007DA
	adds r0, r1, r2
	ldrh r1, [r0]
	movs r0, #0x88
	lsls r0, r0, #1
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bne _0802C42E
	movs r7, #0
	b _0802C420
	.align 2, 0
_0802C3D0: .4byte 0x000007DA
_0802C3D4:
	lsls r6, r7, #1
	movs r5, #0x1b
	subs r5, r5, r6
	movs r0, #1
	adds r1, r5, #0
	movs r2, #0x12
	bl map_getBufferPtr2d
	ldr r3, _0802C450 @ =0x0000B0A0
	adds r1, r3, #0
	strh r1, [r0]
	movs r4, #0x1c
	subs r4, r4, r6
	movs r0, #1
	adds r1, r4, #0
	movs r2, #0x12
	bl map_getBufferPtr2d
	ldr r6, _0802C454 @ =0x0000B0A1
	adds r1, r6, #0
	strh r1, [r0]
	movs r0, #1
	adds r1, r5, #0
	movs r2, #0x13
	bl map_getBufferPtr2d
	ldr r2, _0802C458 @ =0x0000B0A2
	adds r1, r2, #0
	strh r1, [r0]
	movs r0, #1
	adds r1, r4, #0
	movs r2, #0x13
	bl map_getBufferPtr2d
	ldr r3, _0802C45C @ =0x0000B0A3
	adds r1, r3, #0
	strh r1, [r0]
	adds r7, #1
_0802C420:
	bl sub_8002C3C
	cmp r7, r0
	blt _0802C3D4
	movs r0, #2
	bl map_setBufferDirty
_0802C42E:
	ldr r0, _0802C460 @ =0x030001A4
	movs r6, #0
	ldrsh r1, [r0, r6]
	ldr r0, [sp, #4]
	bl sub_802CF78
	ldr r1, _0802C464 @ =0x030001A6
	movs r0, #0
	strh r0, [r1]
	ldr r7, [sp, #4]
	ldr r0, _0802C468 @ =0x000007D6
	adds r1, r7, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _0802C7DC
	.align 2, 0
_0802C450: .4byte 0x0000B0A0
_0802C454: .4byte 0x0000B0A1
_0802C458: .4byte 0x0000B0A2
_0802C45C: .4byte 0x0000B0A3
_0802C460: .4byte 0x030001A4
_0802C464: .4byte 0x030001A6
_0802C468: .4byte 0x000007D6
_0802C46C:
	movs r1, #0
	str r1, [sp, #0x28]
	bl sub_802DC88
	cmp r0, #0
	beq _0802C480
	bl sub_802DCB4
	cmp r0, #0
	bne _0802C484
_0802C480:
	movs r2, #1
	str r2, [sp, #0x28]
_0802C484:
	ldr r0, _0802C588 @ =0x03002C78
	ldr r0, [r0]
	str r0, [sp, #0x2c]
	movs r0, #0
	bl pltt_getBuffer
	movs r6, #0xe0
	lsls r6, r6, #1
	adds r3, r0, r6
	ldr r1, _0802C58C @ =0x030001A6
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	ldr r2, _0802C590 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0802C4AE
	adds r0, #0x3f
_0802C4AE:
	asrs r1, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	ldr r1, _0802C594 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	subs r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov r8, r0
	ldr r0, _0802C598 @ =_080AAD3C
	movs r1, #0x1f
	mov sb, r1
	movs r6, #0x1f
	str r3, [sp, #0x40]
	adds r2, r0, #0
	adds r2, #0x40
	str r2, [sp, #0x38]
	mov ip, r0
	movs r3, #0xf
	mov sl, r3
_0802C4E4:
	mov r7, ip
	ldrh r1, [r7]
	adds r2, r1, #0
	ands r2, r6
	lsrs r4, r1, #5
	mov r0, sb
	ands r4, r0
	lsrs r1, r1, #0xa
	ands r1, r0
	ldr r7, [sp, #0x38]
	ldrh r3, [r7]
	adds r0, r3, #0
	ands r0, r6
	lsrs r5, r3, #5
	mov r7, sb
	ands r5, r7
	lsrs r3, r3, #0xa
	ands r3, r7
	subs r0, r0, r2
	mov r7, r8
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #0xf
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	subs r5, r5, r4
	mov r0, r8
	muls r0, r5, r0
	asrs r0, r0, #0xf
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	subs r3, r3, r1
	mov r0, r8
	muls r0, r3, r0
	asrs r0, r0, #0xf
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ands r2, r6
	ands r4, r6
	lsls r4, r4, #5
	orrs r2, r4
	ands r1, r6
	lsls r1, r1, #0xa
	orrs r2, r1
	ldr r0, [sp, #0x40]
	strh r2, [r0]
	adds r0, #2
	str r0, [sp, #0x40]
	ldr r1, [sp, #0x38]
	adds r1, #2
	str r1, [sp, #0x38]
	movs r2, #2
	add ip, r2
	movs r3, #1
	rsbs r3, r3, #0
	add sl, r3
	mov r7, sl
	cmp r7, #0
	bge _0802C4E4
	movs r0, #1
	bl pltt_setDirtyFlag
	movs r1, #0x40
	ldr r0, _0802C59C @ =0x03004EA0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0802C5C2
	ldr r1, _0802C5A0 @ =0x030001A4
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bne _0802C5A4
	ldr r6, [sp, #0x2c]
	ldrb r0, [r6, #4]
	subs r0, #1
	b _0802C5A6
	.align 2, 0
_0802C588: .4byte 0x03002C78
_0802C58C: .4byte 0x030001A6
_0802C590: .4byte gSinTable
_0802C594: .4byte 0x000003FF
_0802C598: .4byte _080AAD3C
_0802C59C: .4byte 0x03004EA0
_0802C5A0: .4byte 0x030001A4
_0802C5A4:
	subs r0, r2, #1
_0802C5A6:
	strh r0, [r1]
	ldr r7, [sp, #0x28]
	cmp r7, #0
	beq _0802C5C2
	movs r0, #0xb9
	lsls r0, r0, #1
	bl m4aSongNumStart
	ldr r0, _0802C5E4 @ =0x030001A4
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [sp, #4]
	bl sub_802CF78
_0802C5C2:
	movs r1, #0x80
	ldr r0, _0802C5E8 @ =0x03004EA0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	beq _0802C60C
	ldr r1, _0802C5E4 @ =0x030001A4
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, #1
	ldr r6, [sp, #0x2c]
	ldrb r6, [r6, #4]
	cmp r0, r6
	blt _0802C5EC
	movs r0, #0
	b _0802C5F0
	.align 2, 0
_0802C5E4: .4byte 0x030001A4
_0802C5E8: .4byte 0x03004EA0
_0802C5EC:
	ldrh r0, [r1]
	adds r0, #1
_0802C5F0:
	strh r0, [r1]
	ldr r7, [sp, #0x28]
	cmp r7, #0
	beq _0802C60C
	movs r0, #0xb9
	lsls r0, r0, #1
	bl m4aSongNumStart
	ldr r0, _0802C638 @ =0x030001A4
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [sp, #4]
	bl sub_802CF78
_0802C60C:
	movs r1, #9
	ldr r0, _0802C63C @ =0x03004EA0
	ldrh r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0802C61A
	b _0802C7DC
_0802C61A:
	ldr r0, _0802C638 @ =0x030001A4
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r6, [sp, #0x2c]
	ldr r0, [r6, #8]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #8
	bls _0802C62E
	b _0802C7DC
_0802C62E:
	lsls r0, r0, #2
	ldr r1, _0802C640 @ =_0802C644
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802C638: .4byte 0x030001A4
_0802C63C: .4byte 0x03004EA0
_0802C640: .4byte _0802C644
_0802C644: @ jump table
	.4byte _0802C668 @ case 0
	.4byte _0802C67C @ case 1
	.4byte _0802C67C @ case 2
	.4byte _0802C67C @ case 3
	.4byte _0802C67C @ case 4
	.4byte _0802C6B0 @ case 5
	.4byte _0802C67C @ case 6
	.4byte _0802C67C @ case 7
	.4byte _0802C67C @ case 8
_0802C668:
	ldr r1, _0802C678 @ =0x030001AA
	movs r0, #0
	strh r0, [r1]
	bl sub_802C7F4
	str r0, [sp, #8]
	b _0802C7DC
	.align 2, 0
_0802C678: .4byte 0x030001AA
_0802C67C:
	ldr r7, [sp, #4]
	ldr r0, _0802C6A4 @ =0x000007D6
	adds r1, r7, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0x8f
	bl m4aSongNumStart
	ldr r2, _0802C6A8 @ =0x030001AA
	ldr r0, _0802C6AC @ =0x030001A4
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r6, [sp, #0x2c]
	ldr r0, [r6, #8]
	adds r0, r0, r1
	ldrb r0, [r0]
	strh r0, [r2]
	b _0802C7DC
	.align 2, 0
_0802C6A4: .4byte 0x000007D6
_0802C6A8: .4byte 0x030001AA
_0802C6AC: .4byte 0x030001A4
_0802C6B0:
	ldr r7, [sp, #4]
	ldr r0, _0802C6DC @ =0x000007D6
	adds r1, r7, r0
	movs r4, #0
	movs r0, #0x64
	strb r0, [r1]
	movs r0, #0x8f
	bl m4aSongNumStart
	ldr r2, _0802C6E0 @ =0x030001AA
	ldr r0, _0802C6E4 @ =0x030001A4
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r6, [sp, #0x2c]
	ldr r0, [r6, #8]
	adds r0, r0, r1
	ldrb r0, [r0]
	strh r0, [r2]
	ldr r0, _0802C6E8 @ =0x030001A6
	strh r4, [r0]
	b _0802C7DC
	.align 2, 0
_0802C6DC: .4byte 0x000007D6
_0802C6E0: .4byte 0x030001AA
_0802C6E4: .4byte 0x030001A4
_0802C6E8: .4byte 0x030001A6
_0802C6EC:
	bl sub_802C7F4
	str r0, [sp, #8]
_0802C6F2:
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	b _0802C7DC
_0802C6FA:
	ldr r0, _0802C75C @ =0x030001A6
	ldrh r1, [r0]
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #0x27
	bgt _0802C7CC
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0802C760
	bl sub_8002C3C
	adds r4, r0, #0
	subs r4, #1
	lsls r4, r4, #1
	movs r6, #0x1b
	subs r6, r6, r4
	movs r0, #1
	adds r1, r6, #0
	movs r2, #0x12
	bl map_getBufferPtr2d
	movs r1, #0
	mov r8, r1
	strh r1, [r0]
	movs r5, #0x1c
	subs r5, r5, r4
	movs r0, #1
	adds r1, r5, #0
	movs r2, #0x12
	bl map_getBufferPtr2d
	mov r2, r8
	strh r2, [r0]
	movs r0, #1
	adds r1, r6, #0
	movs r2, #0x13
	bl map_getBufferPtr2d
	mov r3, r8
	strh r3, [r0]
	movs r0, #1
	adds r1, r5, #0
	movs r2, #0x13
	bl map_getBufferPtr2d
	mov r6, r8
	strh r6, [r0]
	b _0802C7B2
	.align 2, 0
_0802C75C: .4byte 0x030001A6
_0802C760:
	bl sub_8002C3C
	adds r4, r0, #0
	subs r4, #1
	lsls r4, r4, #1
	movs r6, #0x1b
	subs r6, r6, r4
	movs r0, #1
	adds r1, r6, #0
	movs r2, #0x12
	bl map_getBufferPtr2d
	ldr r7, _0802C7BC @ =0x0000B0A0
	adds r1, r7, #0
	strh r1, [r0]
	movs r5, #0x1c
	subs r5, r5, r4
	movs r0, #1
	adds r1, r5, #0
	movs r2, #0x12
	bl map_getBufferPtr2d
	ldr r2, _0802C7C0 @ =0x0000B0A1
	adds r1, r2, #0
	strh r1, [r0]
	movs r0, #1
	adds r1, r6, #0
	movs r2, #0x13
	bl map_getBufferPtr2d
	ldr r3, _0802C7C4 @ =0x0000B0A2
	adds r1, r3, #0
	strh r1, [r0]
	movs r0, #1
	adds r1, r5, #0
	movs r2, #0x13
	bl map_getBufferPtr2d
	ldr r6, _0802C7C8 @ =0x0000B0A3
	adds r1, r6, #0
	strh r1, [r0]
_0802C7B2:
	movs r0, #2
	bl map_setBufferDirty
	b _0802C7D4
	.align 2, 0
_0802C7BC: .4byte 0x0000B0A0
_0802C7C0: .4byte 0x0000B0A1
_0802C7C4: .4byte 0x0000B0A2
_0802C7C8: .4byte 0x0000B0A3
_0802C7CC:
	cmp r0, #0x2f
	ble _0802C7D4
	movs r0, #3
	strb r0, [r5]
_0802C7D4:
	ldr r1, _0802C7F0 @ =0x030001A6
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_0802C7DC:
	ldr r0, [sp, #8]
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802C7F0: .4byte 0x030001A6

	thumb_func_start sub_802C7F4
sub_802C7F4: @ 0x0802C7F4
	push {r4, r5, r6, r7, lr}
	movs r7, #1
	ldr r0, _0802C814 @ =0x03002E20
	adds r6, r0, #0
	adds r6, #0x24
	ldr r0, _0802C818 @ =0x030001AA
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #8
	bls _0802C80A
	b _0802C93A
_0802C80A:
	lsls r0, r0, #2
	ldr r1, _0802C81C @ =_0802C820
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802C814: .4byte 0x03002E20
_0802C818: .4byte 0x030001AA
_0802C81C: .4byte _0802C820
_0802C820: @ jump table
	.4byte _0802C844 @ case 0
	.4byte _0802C928 @ case 1
	.4byte _0802C90C @ case 2
	.4byte _0802C910 @ case 3
	.4byte _0802C8F4 @ case 4
	.4byte _0802C918 @ case 5
	.4byte _0802C844 @ case 6
	.4byte _0802C908 @ case 7
	.4byte _0802C914 @ case 8
_0802C844:
	ldr r4, _0802C8C8 @ =0x02004000
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, #0
	bl CpuFastSet
	ldr r4, _0802C8CC @ =0x030001A8
	ldr r5, _0802C8D0 @ =0x04000008
	ldrh r0, [r5]
	movs r0, #0xe0
	lsls r0, r0, #3
	strh r0, [r4]
	bl dmaq_getVBlankDmaQueue
	ldr r3, _0802C8D4 @ =0x80000001
	adds r1, r4, #0
	adds r2, r5, #0
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	adds r4, r0, #0
	ldr r5, _0802C8D8 @ =0x06003800
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r2, r0, #0
	ldr r3, _0802C8DC @ =0x80000400
	adds r0, r4, #0
	adds r1, r5, #0
	bl dmaq_enqueue
	movs r0, #1
	bl map_setBufferDirty
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0802C8E0 @ =_08062834
	movs r2, #0xc0
	lsls r2, r2, #0x13
	ldr r3, _0802C8E4 @ =0x80000600
	bl dmaq_enqueue
	ldr r2, _0802C8E8 @ =0x000007EC
	adds r1, r6, r2
	movs r0, #1
	str r0, [r1]
	movs r1, #0
	ldr r0, _0802C8EC @ =0x03002C78
	str r1, [r0]
	bl m4aMPlayAllContinue
	ldr r0, _0802C8F0 @ =0x000007D4
	adds r2, r6, r0
	ldrb r1, [r2]
	movs r0, #0xbf
	ands r0, r1
	strb r0, [r2]
	b _0802C93A
	.align 2, 0
_0802C8C8: .4byte 0x02004000
_0802C8CC: .4byte 0x030001A8
_0802C8D0: .4byte 0x04000008
_0802C8D4: .4byte 0x80000001
_0802C8D8: .4byte 0x06003800
_0802C8DC: .4byte 0x80000400
_0802C8E0: .4byte _08062834
_0802C8E4: .4byte 0x80000600
_0802C8E8: .4byte 0x000007EC
_0802C8EC: .4byte 0x03002C78
_0802C8F0: .4byte 0x000007D4
_0802C8F4:
	movs r0, #1
	movs r2, #0xfd
	lsls r2, r2, #3
	adds r1, r6, r2
	strb r0, [r1]
	ldr r1, _0802C904 @ =0x03005C50
	b _0802C936
	.align 2, 0
_0802C904: .4byte 0x03005C50
_0802C908:
	movs r1, #6
	b _0802C92A
_0802C90C:
	movs r1, #2
	b _0802C92A
_0802C910:
	movs r1, #3
	b _0802C92A
_0802C914:
	movs r1, #9
	b _0802C92A
_0802C918:
	bl sub_8002C3C
	cmp r0, #0
	beq _0802C928
	bl sub_8002C54
	movs r1, #1
	b _0802C92A
_0802C928:
	movs r1, #4
_0802C92A:
	movs r2, #0xfd
	lsls r2, r2, #3
	adds r0, r6, r2
	strb r1, [r0]
	ldr r1, _0802C944 @ =0x03005C50
	movs r0, #1
_0802C936:
	str r0, [r1]
	movs r7, #0
_0802C93A:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802C944: .4byte 0x03005C50

	thumb_func_start sub_0802C948
sub_0802C948: @ 0x0802C948
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	mov sb, r1
	mov r8, r2
	str r3, [sp]
	movs r0, #0
	mov sl, r0
	adds r1, r6, #0
	mov r2, sb
	bl map_getBufferPtr2d
	ldr r2, _0802CB3C @ =0x0000F001
	adds r1, r2, #0
	strh r1, [r0]
	adds r1, r6, #1
	movs r0, #0
	mov r2, sb
	bl map_getBufferPtr2d
	ldr r2, _0802CB40 @ =0x0000F002
	adds r1, r2, #0
	strh r1, [r0]
	movs r5, #2
	mov r0, r8
	subs r0, #2
	cmp r5, r0
	bge _0802C9A2
	ldr r1, _0802CB44 @ =0x0000F022
	adds r7, r1, #0
	adds r4, r0, #0
_0802C98E:
	adds r1, r6, r5
	movs r0, #0
	mov r2, sb
	add r2, sl
	bl map_getBufferPtr2d
	strh r7, [r0]
	adds r5, #1
	cmp r5, r4
	blt _0802C98E
_0802C9A2:
	adds r1, r6, r5
	mov r4, sb
	add r4, sl
	movs r0, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldr r2, _0802CB48 @ =0x0000F402
	adds r1, r2, #0
	strh r1, [r0]
	adds r5, #1
	adds r1, r6, r5
	movs r0, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldr r2, _0802CB4C @ =0x0000F401
	adds r1, r2, #0
	strh r1, [r0]
	movs r0, #1
	add sl, r0
	movs r6, #0
	mov r2, sb
	add r2, sl
	movs r0, #0
	adds r1, r5, #0
	bl map_getBufferPtr2d
	ldr r2, _0802CB50 @ =0x0000F021
	adds r1, r2, #0
	strh r1, [r0]
	adds r5, #1
	mov r0, r8
	subs r0, #2
	str r0, [sp, #4]
	movs r1, #1
	rsbs r1, r1, #0
	add r8, r1
	ldr r2, [sp]
	subs r2, #2
	str r2, [sp, #8]
	cmp r5, r8
	bge _0802CA0E
	movs r4, #0
_0802C9FA:
	adds r1, r6, r5
	movs r0, #0
	mov r2, sb
	add r2, sl
	bl map_getBufferPtr2d
	strh r4, [r0]
	adds r5, #1
	cmp r5, r8
	blt _0802C9FA
_0802CA0E:
	adds r1, r6, r5
	mov r2, sb
	add r2, sl
	movs r0, #0
	bl map_getBufferPtr2d
	ldr r2, _0802CB54 @ =0x0000F421
	adds r1, r2, #0
	strh r1, [r0]
	movs r0, #1
	add sl, r0
	lsls r1, r6, #1
	str r1, [sp, #0xc]
	ldr r2, [sp, #8]
	cmp sl, r2
	bge _0802CA78
	mov r4, sl
	add r4, sb
_0802CA32:
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldr r2, _0802CB58 @ =0x0000F020
	adds r1, r2, #0
	strh r1, [r0]
	movs r5, #1
	cmp r5, r8
	bge _0802CA5C
	movs r7, #0
_0802CA4A:
	adds r1, r6, r5
	movs r0, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	strh r7, [r0]
	adds r5, #1
	cmp r5, r8
	blt _0802CA4A
_0802CA5C:
	adds r1, r6, r5
	movs r0, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldr r2, _0802CB5C @ =0x0000F420
	adds r1, r2, #0
	strh r1, [r0]
	adds r4, #1
	movs r0, #1
	add sl, r0
	ldr r1, [sp, #8]
	cmp sl, r1
	blt _0802CA32
_0802CA78:
	mov r4, sb
	add r4, sl
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldr r2, _0802CB60 @ =0x0000F821
	adds r1, r2, #0
	strh r1, [r0]
	movs r5, #1
	cmp r5, r8
	bge _0802CAA6
	movs r7, #0
_0802CA94:
	adds r1, r6, r5
	movs r0, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	strh r7, [r0]
	adds r5, #1
	cmp r5, r8
	blt _0802CA94
_0802CAA6:
	adds r1, r6, r5
	mov r2, sb
	add r2, sl
	movs r0, #0
	bl map_getBufferPtr2d
	ldr r2, _0802CB64 @ =0x0000FC21
	adds r1, r2, #0
	strh r1, [r0]
	movs r0, #1
	add sl, r0
	mov r4, sb
	add r4, sl
	movs r0, #0
	ldr r1, [sp, #0xc]
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldr r2, _0802CB68 @ =0x0000F801
	adds r1, r2, #0
	strh r1, [r0]
	movs r0, #0
	ldr r1, [sp, #0xc]
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldr r2, _0802CB6C @ =0x0000F802
	adds r1, r2, #0
	strh r1, [r0]
	movs r5, #2
	ldr r0, [sp, #4]
	cmp r5, r0
	bge _0802CB02
	ldr r1, _0802CB70 @ =0x0000F822
	adds r4, r1, #0
_0802CAEC:
	adds r1, r6, r5
	movs r0, #0
	mov r2, sb
	add r2, sl
	bl map_getBufferPtr2d
	strh r4, [r0]
	adds r5, #1
	ldr r2, [sp, #4]
	cmp r5, r2
	blt _0802CAEC
_0802CB02:
	mov r4, sb
	add r4, sl
	movs r0, #0
	ldr r1, [sp, #0xc]
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldr r2, _0802CB74 @ =0x0000FC02
	adds r1, r2, #0
	strh r1, [r0]
	movs r0, #0
	ldr r1, [sp, #0xc]
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldr r2, _0802CB78 @ =0x0000FC01
	adds r1, r2, #0
	strh r1, [r0]
	movs r0, #1
	bl map_setBufferDirty
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802CB3C: .4byte 0x0000F001
_0802CB40: .4byte 0x0000F002
_0802CB44: .4byte 0x0000F022
_0802CB48: .4byte 0x0000F402
_0802CB4C: .4byte 0x0000F401
_0802CB50: .4byte 0x0000F021
_0802CB54: .4byte 0x0000F421
_0802CB58: .4byte 0x0000F020
_0802CB5C: .4byte 0x0000F420
_0802CB60: .4byte 0x0000F821
_0802CB64: .4byte 0x0000FC21
_0802CB68: .4byte 0x0000F801
_0802CB6C: .4byte 0x0000F802
_0802CB70: .4byte 0x0000F822
_0802CB74: .4byte 0x0000FC02
_0802CB78: .4byte 0x0000FC01

	thumb_func_start sub_802CB7C
sub_802CB7C: @ 0x0802CB7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _0802CE08 @ =0x03002C78
	ldr r0, [r0]
	str r0, [sp]
	ldrb r6, [r0]
	ldrb r0, [r0, #1]
	mov sb, r0
	ldr r1, [sp]
	ldrb r1, [r1, #2]
	mov sl, r1
	ldr r2, [sp]
	ldrb r7, [r2, #3]
	movs r0, #0
	str r0, [sp, #4]
	bl sub_802DC88
	cmp r0, #0
	beq _0802CBB2
	bl sub_802DCB4
	cmp r0, #0
	bne _0802CBB6
_0802CBB2:
	movs r1, #1
	str r1, [sp, #4]
_0802CBB6:
	ldr r2, [sp, #4]
	cmp r2, #0
	bne _0802CBCE
	adds r6, #1
	movs r0, #9
	mov sl, r0
	subs r0, r7, #4
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	add sb, r0
	movs r7, #4
_0802CBCE:
	movs r1, #0
	mov r8, r1
	movs r0, #0
	adds r1, r6, #0
	mov r2, sb
	bl map_getBufferPtr2d
	ldr r2, _0802CE0C @ =0x0000F001
	adds r1, r2, #0
	strh r1, [r0]
	adds r4, r6, #1
	movs r0, #0
	adds r1, r4, #0
	mov r2, sb
	bl map_getBufferPtr2d
	ldr r2, _0802CE10 @ =0x0000F002
	adds r1, r2, #0
	strh r1, [r0]
	movs r5, #2
	str r4, [sp, #0xc]
	mov r0, sl
	subs r0, #2
	str r0, [sp, #8]
	movs r1, #1
	rsbs r1, r1, #0
	add sl, r1
	subs r2, r7, #2
	str r2, [sp, #0x10]
	cmp r5, r0
	bge _0802CC26
	ldr r0, _0802CE14 @ =0x0000F022
	adds r4, r0, #0
_0802CC10:
	adds r1, r6, r5
	movs r0, #0
	mov r2, sb
	add r2, r8
	bl map_getBufferPtr2d
	strh r4, [r0]
	adds r5, #1
	ldr r1, [sp, #8]
	cmp r5, r1
	blt _0802CC10
_0802CC26:
	adds r1, r6, r5
	mov r4, sb
	add r4, r8
	movs r0, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldr r2, _0802CE18 @ =0x0000F402
	adds r1, r2, #0
	strh r1, [r0]
	adds r5, #1
	adds r1, r6, r5
	movs r0, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldr r2, _0802CE1C @ =0x0000F401
	adds r1, r2, #0
	strh r1, [r0]
	movs r0, #1
	add r8, r0
	mov r2, sb
	add r2, r8
	movs r0, #0
	adds r1, r6, #0
	bl map_getBufferPtr2d
	ldr r2, _0802CE20 @ =0x0000F021
	adds r1, r2, #0
	strh r1, [r0]
	movs r5, #1
	cmp r5, sl
	bge _0802CC7E
	movs r4, #0
_0802CC6A:
	adds r1, r6, r5
	movs r0, #0
	mov r2, sb
	add r2, r8
	bl map_getBufferPtr2d
	strh r4, [r0]
	adds r5, #1
	cmp r5, sl
	blt _0802CC6A
_0802CC7E:
	adds r1, r6, r5
	mov r2, sb
	add r2, r8
	movs r0, #0
	bl map_getBufferPtr2d
	ldr r2, _0802CE24 @ =0x0000F421
	adds r1, r2, #0
	strh r1, [r0]
	movs r0, #1
	add r8, r0
	ldr r1, [sp, #0x10]
	cmp r8, r1
	bge _0802CCE4
	mov r4, r8
	add r4, sb
_0802CC9E:
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldr r2, _0802CE28 @ =0x0000F020
	adds r1, r2, #0
	strh r1, [r0]
	movs r5, #1
	cmp r5, sl
	bge _0802CCC8
	movs r7, #0
_0802CCB6:
	adds r1, r6, r5
	movs r0, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	strh r7, [r0]
	adds r5, #1
	cmp r5, sl
	blt _0802CCB6
_0802CCC8:
	adds r1, r6, r5
	movs r0, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldr r2, _0802CE2C @ =0x0000F420
	adds r1, r2, #0
	strh r1, [r0]
	adds r4, #1
	movs r0, #1
	add r8, r0
	ldr r1, [sp, #0x10]
	cmp r8, r1
	blt _0802CC9E
_0802CCE4:
	mov r4, sb
	add r4, r8
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldr r2, _0802CE30 @ =0x0000F821
	adds r1, r2, #0
	strh r1, [r0]
	movs r5, #1
	cmp r5, sl
	bge _0802CD12
	movs r7, #0
_0802CD00:
	adds r1, r6, r5
	movs r0, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	strh r7, [r0]
	adds r5, #1
	cmp r5, sl
	blt _0802CD00
_0802CD12:
	adds r1, r6, r5
	mov r2, sb
	add r2, r8
	movs r0, #0
	bl map_getBufferPtr2d
	ldr r2, _0802CE34 @ =0x0000FC21
	adds r1, r2, #0
	strh r1, [r0]
	movs r0, #1
	add r8, r0
	mov r4, sb
	add r4, r8
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldr r2, _0802CE38 @ =0x0000F801
	adds r1, r2, #0
	strh r1, [r0]
	movs r0, #0
	ldr r1, [sp, #0xc]
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldr r2, _0802CE3C @ =0x0000F802
	adds r1, r2, #0
	strh r1, [r0]
	movs r5, #2
	ldr r0, [sp, #8]
	cmp r5, r0
	bge _0802CD6E
	ldr r1, _0802CE40 @ =0x0000F822
	adds r4, r1, #0
_0802CD58:
	adds r1, r6, r5
	movs r0, #0
	mov r2, sb
	add r2, r8
	bl map_getBufferPtr2d
	strh r4, [r0]
	adds r5, #1
	ldr r2, [sp, #8]
	cmp r5, r2
	blt _0802CD58
_0802CD6E:
	adds r1, r6, r5
	mov r4, sb
	add r4, r8
	movs r0, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldr r2, _0802CE44 @ =0x0000FC02
	adds r1, r2, #0
	strh r1, [r0]
	adds r5, #1
	adds r1, r6, r5
	movs r0, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	ldr r2, _0802CE48 @ =0x0000FC01
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0802CE58
	movs r1, #0
	mov r8, r1
	ldr r2, [sp]
	ldrb r2, [r2, #4]
	cmp r8, r2
	bge _0802CE88
	adds r6, #2
	mov sl, r6
	mov r7, sb
	adds r7, #2
	mov r6, sb
	adds r6, #1
_0802CDB2:
	ldr r1, [sp]
	ldr r0, [r1, #8]
	add r0, r8
	ldrb r0, [r0]
	ldr r2, _0802CE4C @ =_080DDEE8
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r4, r0, #3
	subs r4, r4, r0
	lsls r4, r4, #2
	ldr r0, _0802CE50 @ =_080DDF58
	adds r5, r4, r0
	movs r0, #0
	mov r1, sl
	adds r2, r6, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #7
	bl CpuSet
	ldr r1, _0802CE54 @ =_080DDF66
	adds r4, r4, r1
	movs r0, #0
	mov r1, sl
	adds r2, r7, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #7
	bl CpuSet
	adds r7, #2
	adds r6, #2
	movs r2, #1
	add r8, r2
	ldr r0, [sp]
	ldrb r0, [r0, #4]
	cmp r8, r0
	blt _0802CDB2
	b _0802CE88
	.align 2, 0
_0802CE08: .4byte 0x03002C78
_0802CE0C: .4byte 0x0000F001
_0802CE10: .4byte 0x0000F002
_0802CE14: .4byte 0x0000F022
_0802CE18: .4byte 0x0000F402
_0802CE1C: .4byte 0x0000F401
_0802CE20: .4byte 0x0000F021
_0802CE24: .4byte 0x0000F421
_0802CE28: .4byte 0x0000F020
_0802CE2C: .4byte 0x0000F420
_0802CE30: .4byte 0x0000F821
_0802CE34: .4byte 0x0000FC21
_0802CE38: .4byte 0x0000F801
_0802CE3C: .4byte 0x0000F802
_0802CE40: .4byte 0x0000F822
_0802CE44: .4byte 0x0000FC02
_0802CE48: .4byte 0x0000FC01
_0802CE4C: .4byte _080DDEE8
_0802CE50: .4byte _080DDF58
_0802CE54: .4byte _080DDF66
_0802CE58:
	ldr r4, _0802CEA0 @ =_080DE000
	mov r2, sb
	adds r2, #1
	movs r0, #0
	ldr r1, [sp, #0xc]
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #7
	bl CpuSet
	adds r4, #0xe
	mov r2, sb
	adds r2, #2
	movs r0, #0
	ldr r1, [sp, #0xc]
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #7
	bl CpuSet
_0802CE88:
	movs r0, #2
	bl map_setBufferDirty
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802CEA0: .4byte _080DE000

	thumb_func_start sub_802CEA4
sub_802CEA4: @ 0x0802CEA4
	push {r4, r5, r6, r7, lr}
	movs r0, #0
	bl pltt_getBuffer
	adds r4, r0, #0
	movs r5, #0x1f
	ldr r0, _0802CF74 @ =0x000003FF
	mov ip, r0
	movs r7, #0x9f
_0802CEB6:
	ldrh r2, [r4]
	movs r0, #0x1f
	ands r0, r2
	lsls r1, r0, #0xa
	subs r1, r1, r0
	cmp r1, #0
	bge _0802CEC6
	add r1, ip
_0802CEC6:
	asrs r6, r1, #0xa
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x15
	ands r0, r5
	lsls r1, r0, #0xa
	subs r0, r1, r0
	cmp r0, #0
	bge _0802CED8
	add r0, ip
_0802CED8:
	asrs r3, r0, #0xa
	lsrs r0, r2, #0x1a
	ands r0, r5
	lsls r1, r0, #0xa
	subs r0, r1, r0
	cmp r0, #0
	bge _0802CEE8
	add r0, ip
_0802CEE8:
	asrs r2, r0, #0xa
	adds r1, r6, #0
	ands r1, r5
	adds r0, r3, #0
	ands r0, r5
	lsls r0, r0, #5
	orrs r1, r0
	ands r2, r5
	lsls r2, r2, #0xa
	orrs r1, r2
	strh r1, [r4]
	adds r4, #2
	subs r7, #1
	cmp r7, #0
	bge _0802CEB6
	movs r0, #1
	bl pltt_getBuffer
	adds r4, r0, #0
	movs r5, #0x1f
	ldr r0, _0802CF74 @ =0x000003FF
	mov ip, r0
	movs r7, #0xff
_0802CF16:
	ldrh r2, [r4]
	movs r0, #0x1f
	ands r0, r2
	lsls r1, r0, #0xa
	subs r1, r1, r0
	cmp r1, #0
	bge _0802CF26
	add r1, ip
_0802CF26:
	asrs r6, r1, #0xa
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x15
	ands r0, r5
	lsls r1, r0, #0xa
	subs r0, r1, r0
	cmp r0, #0
	bge _0802CF38
	add r0, ip
_0802CF38:
	asrs r3, r0, #0xa
	lsrs r0, r2, #0x1a
	ands r0, r5
	lsls r1, r0, #0xa
	subs r0, r1, r0
	cmp r0, #0
	bge _0802CF48
	add r0, ip
_0802CF48:
	asrs r2, r0, #0xa
	adds r1, r6, #0
	ands r1, r5
	adds r0, r3, #0
	ands r0, r5
	lsls r0, r0, #5
	orrs r1, r0
	ands r2, r5
	lsls r2, r2, #0xa
	orrs r1, r2
	strh r1, [r4]
	adds r4, #2
	subs r7, #1
	cmp r7, #0
	bge _0802CF16
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802CF74: .4byte 0x000003FF

	thumb_func_start sub_802CF78
sub_802CF78: @ 0x0802CF78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _0802D070 @ =0x03002C78
	ldr r7, [r0]
	bl sub_802DC88
	cmp r0, #0
	beq _0802CF9C
	bl sub_802DCB4
	cmp r0, #0
	bne _0802D060
_0802CF9C:
	movs r5, #0
	ldrb r0, [r7, #4]
	cmp r5, r0
	bge _0802D05A
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
_0802CFAA:
	ldrb r2, [r7]
	adds r1, r2, #2
	str r1, [sp]
	ldrb r1, [r7, #1]
	lsls r0, r5, #1
	adds r0, #1
	adds r1, r1, r0
	mov sl, r1
	movs r1, #0xf0
	lsls r1, r1, #8
	ldr r0, [sp, #8]
	cmp r5, r0
	bne _0802CFC8
	movs r1, #0xe0
	lsls r1, r1, #8
_0802CFC8:
	str r1, [sp, #4]
	ldr r4, _0802D074 @ =_080DE058
	ldr r1, [sp, #8]
	cmp r5, r1
	bne _0802CFD4
	subs r4, #4
_0802CFD4:
	adds r1, r2, #1
	movs r0, #1
	mov r2, sl
	bl map_getBufferPtr2d
	adds r2, r4, #0
	adds r1, r0, #0
	movs r0, #0
	adds r5, #1
	str r5, [sp, #0xc]
_0802CFE8:
	adds r4, r0, #1
	movs r3, #0
_0802CFEC:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bge _0802CFEC
	adds r1, #0x3e
	adds r0, r4, #0
	cmp r0, #2
	blt _0802CFE8
	movs r2, #0
_0802D004:
	movs r5, #0
	ldrb r0, [r7, #2]
	subs r0, #3
	adds r1, r2, #1
	mov r8, r1
	cmp r5, r0
	bge _0802D04C
	mov r0, sl
	adds r6, r0, r2
	ldr r1, _0802D078 @ =0x00000FFF
	mov sb, r1
_0802D01A:
	ldr r2, [sp]
	adds r4, r2, r5
	movs r0, #1
	adds r1, r4, #0
	adds r2, r6, #0
	bl map_getBufferPtr2d
	ldrh r1, [r0]
	mov r2, sb
	ands r1, r2
	strh r1, [r0]
	movs r0, #1
	adds r1, r4, #0
	adds r2, r6, #0
	bl map_getBufferPtr2d
	ldrh r2, [r0]
	ldr r1, [sp, #4]
	orrs r1, r2
	strh r1, [r0]
	adds r5, #1
	ldrb r0, [r7, #2]
	subs r0, #3
	cmp r5, r0
	blt _0802D01A
_0802D04C:
	mov r2, r8
	cmp r2, #1
	ble _0802D004
	ldr r5, [sp, #0xc]
	ldrb r0, [r7, #4]
	cmp r5, r0
	blt _0802CFAA
_0802D05A:
	movs r0, #2
	bl map_setBufferDirty
_0802D060:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D070: .4byte 0x03002C78
_0802D074: .4byte _080DE058
_0802D078: .4byte 0x00000FFF

	thumb_func_start sub_802D07C
sub_802D07C: @ 0x0802D07C
	push {lr}
	adds r2, r0, #0
	ldr r1, _0802D098 @ =0x000007D4
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802D09C
	adds r0, r2, #0
	bl sub_802C06C
	b _0802D09E
	.align 2, 0
_0802D098: .4byte 0x000007D4
_0802D09C:
	movs r0, #1
_0802D09E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_802D0A4
sub_802D0A4: @ 0x0802D0A4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	movs r1, #0
	cmp r1, r3
	bge _0802D0D6
	movs r0, #0x20
	subs r0, r0, r6
	lsls r7, r0, #1
_0802D0B8:
	adds r2, r1, #1
	cmp r6, #0
	ble _0802D0CE
	adds r1, r6, #0
_0802D0C0:
	ldrh r0, [r5]
	strh r0, [r4]
	adds r5, #2
	adds r4, #2
	subs r1, #1
	cmp r1, #0
	bne _0802D0C0
_0802D0CE:
	adds r4, r4, r7
	adds r1, r2, #0
	cmp r1, r3
	blt _0802D0B8
_0802D0D6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0