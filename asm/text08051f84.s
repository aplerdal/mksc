	.include "asm/macros.inc"

	.syntax unified
	.text
	thumb_func_start sub_8051F84
sub_8051F84: @ 0x08051F84
	push {r4, r5, r6, lr}
	ldr r4, _08051FB0 @ =0x03002E20
	adds r6, r4, #0
	adds r6, #0x24
	ldr r0, _08051FB4 @ =0x00000848
	adds r5, r4, r0
	adds r0, r5, #0
	bl sub_80312E8
	ldr r0, _08051FB8 @ =0x00000BC8
	adds r4, r4, r0
	movs r0, #0x14
	ldrsh r1, [r5, r0]
	movs r2, #0
	ldrsb r2, [r4, r2]
	adds r0, r6, #0
	bl sub_804AD00
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08051FB0: .4byte 0x03002E20
_08051FB4: .4byte 0x00000848
_08051FB8: .4byte 0x00000BC8

	thumb_func_start sub_8051FBC
sub_8051FBC: @ 0x08051FBC
	ldr r1, _08051FCC @ =0x03004F70
	ldrb r0, [r1, #0xf]
	cmp r0, #0x28
	bne _08051FC8
	movs r0, #0
	str r0, [r1]
_08051FC8:
	bx lr
	.align 2, 0
_08051FCC: .4byte 0x03004F70

	thumb_func_start sub_8051FD0
sub_8051FD0: @ 0x08051FD0
	push {r4, r5, lr}
	movs r1, #5
	rsbs r1, r1, #0
	movs r0, #1
	bl irq_updateMask
	movs r5, #0
	ldr r4, _08052014 @ =0x03002E20
	movs r0, #1
	movs r1, #2
	rsbs r1, r1, #0
	bl irq_updateMask
	str r5, [r4, #0xc]
	movs r0, #2
	ldr r1, _08052018 @ =0x00010001
	bl irq_updateMask
	ldr r1, _0805201C @ =0x04000050
	movs r0, #0xff
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x10
	strh r0, [r1]
	movs r0, #0
	bl pltt_getBuffer
	strh r5, [r0]
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08052014: .4byte 0x03002E20
_08052018: .4byte 0x00010001
_0805201C: .4byte 0x04000050

	thumb_func_start sub_8052020
sub_8052020: @ 0x08052020
	push {lr}
	sub sp, #4
	ldr r2, _0805206C @ =0x04000008
	ldrb r1, [r2, #1]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2, #1]
	movs r0, #0
	bl pltt_getBuffer
	movs r2, #0x9f
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r0, #0
	strh r0, [r1]
	movs r0, #1
	bl pltt_setDirtyFlag
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r1, _08052070 @ =0x06002E00
	ldr r2, _08052074 @ =0x01000008
	mov r0, sp
	bl CpuFastSet
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08052078 @ =0x00009FFF
	ands r0, r1
	strh r0, [r2]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0805206C: .4byte 0x04000008
_08052070: .4byte 0x06002E00
_08052074: .4byte 0x01000008
_08052078: .4byte 0x00009FFF

	thumb_func_start sub_805207C
sub_805207C: @ 0x0805207C
	ldr r2, _0805208C @ =0x03004F70
	ldrb r1, [r2, #0xf]
	cmp r1, #8
	bne _08052090
	movs r0, #0
	str r0, [r2]
	b _080520AC
	.align 2, 0
_0805208C: .4byte 0x03004F70
_08052090:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080520A0
	asrs r1, r1, #1
	movs r0, #7
	subs r0, r0, r1
	b _080520A2
_080520A0:
	asrs r0, r1, #1
_080520A2:
	lsls r0, r0, #2
	ldr r2, _080520B0 @ =0x06002E00
	adds r1, r0, r2
	movs r0, #0
	str r0, [r1]
_080520AC:
	bx lr
	.align 2, 0
_080520B0: .4byte 0x06002E00

	thumb_func_start sub_80520B4
sub_80520B4: @ 0x080520B4
	push {lr}
	ldr r2, _080520D0 @ =0x04000008
	ldrb r1, [r2, #1]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #7
	orrs r0, r1
	strb r0, [r2, #1]
	bl sub_804EDAC
	pop {r0}
	bx r0
	.align 2, 0
_080520D0: .4byte 0x04000008

	thumb_func_start sub_80520D4
sub_80520D4: @ 0x080520D4
	push {r4, lr}
	sub sp, #8
	movs r0, #0
	bl pltt_getBuffer
	movs r2, #0x9f
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r0, #0
	strh r0, [r1]
	movs r0, #1
	bl pltt_setDirtyFlag
	movs r0, #0
	str r0, [sp]
	ldr r1, _08052148 @ =0x06002E00
	ldr r2, _0805214C @ =0x01000008
	mov r0, sp
	bl CpuFastSet
	ldr r0, _08052150 @ =0x91709170
	str r0, [sp, #4]
	add r4, sp, #4
	movs r0, #1
	bl map_getBufferPtr
	adds r1, r0, #0
	ldr r2, _08052154 @ =0x01000200
	adds r0, r4, #0
	bl CpuFastSet
	movs r0, #2
	bl map_setBufferDirty
	ldr r1, _08052158 @ =0x04000040
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0xa0
	strh r0, [r1]
	ldr r0, _0805215C @ =0x04000048
	movs r1, #0x3f
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08052160 @ =0x00009FFF
	ands r0, r1
	strh r0, [r2]
	movs r1, #3
	ldr r0, _08052164 @ =0x03004F70
	strb r1, [r0, #0xe]
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08052148: .4byte 0x06002E00
_0805214C: .4byte 0x01000008
_08052150: .4byte 0x91709170
_08052154: .4byte 0x01000200
_08052158: .4byte 0x04000040
_0805215C: .4byte 0x04000048
_08052160: .4byte 0x00009FFF
_08052164: .4byte 0x03004F70

	thumb_func_start sub_8052168
sub_8052168: @ 0x08052168
	push {r4, lr}
	ldr r4, _080521A0 @ =0x03004F70
	ldrb r3, [r4, #0xf]
	ldr r2, _080521A4 @ =0x04000008
	ldrb r1, [r2, #1]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2, #1]
	cmp r3, #0x14
	bne _08052186
	movs r0, #0
	str r0, [r4]
_08052186:
	cmp r3, #7
	bgt _080521BA
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _080521AC
	asrs r1, r3, #1
	movs r0, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _080521A8 @ =0x06002E00
	b _080521B2
	.align 2, 0
_080521A0: .4byte 0x03004F70
_080521A4: .4byte 0x04000008
_080521A8: .4byte 0x06002E00
_080521AC:
	asrs r0, r3, #1
	lsls r0, r0, #2
	ldr r2, _080521C0 @ =0x06002E10
_080521B2:
	adds r1, r0, r2
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
_080521BA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080521C0: .4byte 0x06002E10

	thumb_func_start sub_80521C4
sub_80521C4: @ 0x080521C4
	push {r4, r5, lr}
	movs r1, #5
	rsbs r1, r1, #0
	movs r0, #1
	bl irq_updateMask
	movs r5, #0
	ldr r4, _0805220C @ =0x03002E20
	movs r0, #1
	movs r1, #2
	rsbs r1, r1, #0
	bl irq_updateMask
	str r5, [r4, #0xc]
	movs r0, #2
	ldr r1, _08052210 @ =0x00010001
	bl irq_updateMask
	movs r0, #0
	bl pltt_getBuffer
	adds r4, r0, #0
	movs r0, #0
	bl pltt_getBuffer
	movs r1, #0x9f
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805220C: .4byte 0x03002E20
_08052210: .4byte 0x00010001

	thumb_func_start sub_08052214
sub_08052214: @ 0x08052214
	push {r4, lr}
	ldr r2, _0805225C @ =0x04000008
	ldrb r1, [r2, #1]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2, #1]
	bl main_getRandom
	adds r1, r0, #0
	movs r0, #3
	ands r0, r1
	lsls r0, r0, #2
	ldr r1, _08052260 @ =_080EFC74
	adds r0, r0, r1
	ldr r4, _08052264 @ =0x06002B80
	adds r1, r4, #0
	bl LZ77UnCompVram
	ldr r1, _08052268 @ =0x06000E00
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _0805226C @ =0x00009FFF
	ands r0, r1
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805225C: .4byte 0x04000008
_08052260: .4byte _080EFC74
_08052264: .4byte 0x06002B80
_08052268: .4byte 0x06000E00
_0805226C: .4byte 0x00009FFF

	thumb_func_start sub_08052270
sub_08052270: @ 0x08052270
	push {lr}
	ldr r1, _08052280 @ =0x03004F70
	ldrb r0, [r1, #0xf]
	cmp r0, #4
	bne _08052284
	movs r0, #0
	str r0, [r1]
	b _0805229A
	.align 2, 0
_08052280: .4byte 0x03004F70
_08052284:
	movs r1, #0xae
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	ldr r1, _080522A0 @ =0x06000E00
	movs r2, #8
	bl CpuFastSet
_0805229A:
	pop {r0}
	bx r0
	.align 2, 0
_080522A0: .4byte 0x06000E00

	thumb_func_start sub_80522A4
sub_80522A4: @ 0x080522A4
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, _080522E0 @ =0x03002E20
	adds r6, r2, #0
	adds r6, #0x24
	ldr r1, _080522E4 @ =0x00000838
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080522C2
	b _080523D2
_080522C2:
	cmp r5, #0x10
	bne _080522EC
	ldr r0, _080522E8 @ =0x00000C96
	adds r4, r2, r0
	ldrb r0, [r4]
	cmp r0, #0x1f
	bhi _080522EC
	movs r0, #0xa
	bl m4aSongNumStart
	ldrb r1, [r4]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r4]
	b _080523D2
	.align 2, 0
_080522E0: .4byte 0x03002E20
_080522E4: .4byte 0x00000838
_080522E8: .4byte 0x00000C96
_080522EC:
	ldr r1, _08052308 @ =0x00000C72
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, r5
	bhs _080523C6
	adds r2, r6, #0
	subs r0, r5, #1
	cmp r0, #0x1f
	bhi _080523C6
	lsls r0, r0, #2
	ldr r1, _0805230C @ =_08052310
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08052308: .4byte 0x00000C72
_0805230C: .4byte _08052310
_08052310: @ jump table
	.4byte _080523B8 @ case 0
	.4byte _080523B0 @ case 1
	.4byte _080523C6 @ case 2
	.4byte _080523A8 @ case 3
	.4byte _080523C6 @ case 4
	.4byte _080523C6 @ case 5
	.4byte _080523C6 @ case 6
	.4byte _080523A0 @ case 7
	.4byte _080523C6 @ case 8
	.4byte _080523C6 @ case 9
	.4byte _080523C6 @ case 10
	.4byte _080523C6 @ case 11
	.4byte _080523C6 @ case 12
	.4byte _080523C6 @ case 13
	.4byte _080523C6 @ case 14
	.4byte _08052398 @ case 15
	.4byte _080523C6 @ case 16
	.4byte _080523C6 @ case 17
	.4byte _080523C6 @ case 18
	.4byte _080523C6 @ case 19
	.4byte _080523C6 @ case 20
	.4byte _080523C6 @ case 21
	.4byte _080523C6 @ case 22
	.4byte _080523C6 @ case 23
	.4byte _080523C6 @ case 24
	.4byte _080523C6 @ case 25
	.4byte _080523C6 @ case 26
	.4byte _080523C6 @ case 27
	.4byte _080523C6 @ case 28
	.4byte _080523C6 @ case 29
	.4byte _080523C6 @ case 30
	.4byte _08052390 @ case 31
_08052390:
	movs r0, #0x13
	bl m4aSongNumStart
	b _080523C6
_08052398:
	movs r0, #0xa
	bl m4aSongNumStart
	b _080523C6
_080523A0:
	movs r0, #0xc
	bl m4aSongNumStart
	b _080523C6
_080523A8:
	movs r0, #0xb
	bl m4aSongNumStart
	b _080523C6
_080523B0:
	movs r0, #0xd
	bl m4aSongNumStart
	b _080523C6
_080523B8:
	adds r0, r2, #0
	bl sub_8032C38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl m4aSongNumStart
_080523C6:
	ldr r0, _080523D8 @ =0x00000C72
	adds r2, r6, r0
	ldrb r1, [r2]
	adds r0, r5, #0
	orrs r0, r1
	strb r0, [r2]
_080523D2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080523D8: .4byte 0x00000C72

	thumb_func_start sub_80523DC
sub_80523DC: @ 0x080523DC
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, _08052418 @ =0x03002E20
	adds r4, r1, #0
	adds r4, #0x24
	ldr r3, _0805241C @ =0x00000838
	adds r0, r1, r3
	ldr r5, [r0]
	ldr r0, [r5, #0x48]
	movs r3, #0x20
	ands r0, r3
	cmp r0, #0
	bne _080524BC
	ldr r0, _08052420 @ =0x00000C96
	adds r1, r1, r0
	ldrb r0, [r1]
	bics r0, r2
	strb r0, [r1]
	ldrb r1, [r1]
	cmp r1, r2
	bhs _080524BC
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08052424
	movs r0, #0x13
	bl m4aSongNumStart
	b _080524BC
	.align 2, 0
_08052418: .4byte 0x03002E20
_0805241C: .4byte 0x00000838
_08052420: .4byte 0x00000C96
_08052424:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08052434
	movs r0, #0xa
	bl m4aSongNumStart
	b _080524BC
_08052434:
	movs r6, #8
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	beq _08052446
	movs r0, #0xc
	bl m4aSongNumStart
	b _080524BC
_08052446:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08052456
	movs r0, #0xb
	bl m4aSongNumStart
	b _080524BC
_08052456:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _08052466
	movs r0, #0xd
	bl m4aSongNumStart
	b _080524BC
_08052466:
	adds r0, r4, #0
	bl sub_8032C38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x24
	bne _08052476
	movs r0, #0x1c
_08052476:
	adds r4, r0, #0
	ldr r0, [r5, #0x48]
	ands r0, r6
	movs r1, #0x80
	lsls r1, r1, #1
	adds r6, r1, #0
	cmp r0, #0
	beq _0805248C
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r6, r3, #0
_0805248C:
	adds r0, r4, #0
	bl m4aSongNumStart
	ldr r5, _080524C4 @ =gMPlayTable
	ldr r0, _080524C8 @ =gSongTable
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
	adds r1, r6, #0
	bl m4aMPlayTempoControl
_080524BC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080524C4: .4byte gMPlayTable
_080524C8: .4byte gSongTable

	thumb_func_start sub_80524CC
sub_80524CC: @ 0x080524CC
	push {r4, r5, r6, r7, lr}
	ldr r6, _0805255C @ =0x03002E20
	ldr r0, _08052560 @ =0x00000801
	adds r5, r6, r0
	ldrb r0, [r5]
	bl track_getCup
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrb r0, [r5]
	bl track_getCupIndex
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, _08052564 @ =_080EFD44
	lsls r5, r4, #2
	adds r0, r5, r0
	ldr r4, [r0]
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
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r6, r1
	ldrb r4, [r0]
	bl dmaq_getVBlankDmaQueue
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #6
	ldr r2, _08052568 @ =_0809AA4C
	adds r1, r1, r2
	ldr r2, _0805256C @ =0x06000020
	ldr r3, _08052570 @ =0x84000030
	bl dmaq_enqueue
	ldr r0, _08052574 @ =_080EFD58
	adds r0, r5, r0
	ldr r0, [r0]
	ldr r1, _08052578 @ =0x06000400
	bl LZ77UnCompVram
	ldr r0, _0805257C @ =_08076EA8
	ldr r1, _08052580 @ =0x060009C0
	bl LZ77UnCompVram
	ldr r3, _08052584 @ =0x0000059C
	adds r6, r6, r3
	ldr r0, [r6]
	ldr r0, [r0, #0xc]
	bl sub_8032BC8
	cmp r0, #0
	beq _0805258C
	ldr r4, _08052588 @ =gTrackDefTable
	adds r0, r5, r7
	bl track_getRetroTrack
	b _08052594
	.align 2, 0
_0805255C: .4byte 0x03002E20
_08052560: .4byte 0x00000801
_08052564: .4byte _080EFD44
_08052568: .4byte _0809AA4C
_0805256C: .4byte 0x06000020
_08052570: .4byte 0x84000030
_08052574: .4byte _080EFD58
_08052578: .4byte 0x06000400
_0805257C: .4byte _08076EA8
_08052580: .4byte 0x060009C0
_08052584: .4byte 0x0000059C
_08052588: .4byte gTrackDefTable
_0805258C:
	ldr r4, _08052630 @ =gTrackDefTable
	adds r0, r5, r7
	bl track_getMKSCTrack
_08052594:
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	ldr r1, _08052634 @ =0x060000E0
	bl LZ77UnCompVram
	ldr r4, _08052638 @ =_08076EB4
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0x30
	bl CpuFastSet
	ldr r4, _0805263C @ =_08076F74
	movs r0, #0
	movs r1, #0
	movs r2, #0x12
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0x20
	bl CpuFastSet
	movs r0, #1
	bl map_setBufferDirty
	ldr r2, _08052640 @ =0x04000008
	ldrb r1, [r2, #1]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #1]
	ldrb r1, [r2, #1]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2, #1]
	ldr r1, _08052644 @ =sub_8052EB0
	movs r0, #0
	bl vcount_register
	ldr r1, _08052648 @ =0x030023D4
	str r0, [r1]
	ldr r1, _0805264C @ =sub_8052EDC
	movs r0, #0x28
	bl vcount_register
	ldr r1, _08052650 @ =0x030023D8
	str r0, [r1]
	movs r0, #0
	bl pltt_getBuffer
	movs r1, #0
	strh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08052654 @ =0x00009FFF
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052630: .4byte gTrackDefTable
_08052634: .4byte 0x060000E0
_08052638: .4byte _08076EB4
_0805263C: .4byte _08076F74
_08052640: .4byte 0x04000008
_08052644: .4byte sub_8052EB0
_08052648: .4byte 0x030023D4
_0805264C: .4byte sub_8052EDC
_08052650: .4byte 0x030023D8
_08052654: .4byte 0x00009FFF

	thumb_func_start sub_08052658
sub_08052658: @ 0x08052658
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _0805277C @ =0x03002E20
	mov sb, r0
	movs r1, #0x24
	add r1, sb
	mov ip, r1
	ldr r0, _08052780 @ =0x00000838
	add r0, sb
	ldr r6, [r0]
	ldr r0, _08052784 @ =0x0203EC84
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	ldr r5, _08052788 @ =gSinTable
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _0805268C
	adds r0, #0x3f
_0805268C:
	asrs r4, r0, #6
	movs r3, #0x80
	lsls r3, r3, #1
	subs r0, r3, r4
	ldr r1, _0805278C @ =0x000003FF
	mov sl, r1
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	ldr r0, _08052790 @ =0x0203EC88
	ldr r3, [r0]
	adds r0, r3, #0
	muls r0, r1, r0
	lsls r0, r0, #1
	mov r8, r0
	adds r0, r4, #0
	mov r2, sl
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	muls r0, r3, r0
	lsls r7, r0, #1
	adds r0, r6, #0
	adds r0, #0xba
	ldrh r1, [r0]
	lsrs r1, r1, #1
	add r3, sp, #8
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, ip
	add r2, sp, #4
	bl sub_8032AA0
	adds r0, r6, #0
	adds r0, #0x7c
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r0, r1, #0
	cmp r1, #0
	bge _080526E2
	adds r0, #0x3f
_080526E2:
	asrs r2, r0, #6
	adds r0, r2, #0
	mov r3, sl
	ands r0, r3
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r6, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r0, r1, r2
	mov r2, sl
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r4, [r0]
	ldr r0, _08052794 @ =0x00000BF8
	add r0, sb
	ldr r5, [r0]
	adds r3, r5, #0
	muls r3, r4, r3
	lsrs r0, r3, #0x1f
	adds r3, r3, r0
	asrs r3, r3, #1
	ldr r0, _08052798 @ =0x00000BFC
	add r0, sb
	ldr r2, [r0]
	adds r0, r2, #0
	muls r0, r6, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r3, r3, r0
	rsbs r2, r2, #0
	adds r1, r2, #0
	muls r1, r4, r1
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	adds r0, r5, #0
	muls r0, r6, r0
	lsrs r2, r0, #0x1f
	adds r0, r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	ldr r2, [sp, #4]
	adds r3, r2, r3
	add r8, r3
	ldr r0, [sp, #8]
	adds r1, r0, r1
	adds r7, r7, r1
	mov r3, r8
	subs r2, r2, r3
	subs r1, r0, r7
	cmp r2, #0
	bne _08052754
	cmp r1, #0
	beq _080527B6
_08052754:
	movs r6, #0x80
	lsls r6, r6, #3
	ldr r5, _0805279C @ =0x000007FF
	mov r4, sl
	ldr r3, _080527A0 @ =0xFFFFFC00
_0805275E:
	adds r0, r2, r6
	cmp r0, r5
	bhi _0805276C
	cmp r1, r4
	bgt _0805276C
	cmp r1, r3
	bge _080527A4
_0805276C:
	lsrs r0, r2, #0x1f
	adds r0, r2, r0
	asrs r2, r0, #1
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r1, r0, #1
	b _0805275E
	.align 2, 0
_0805277C: .4byte 0x03002E20
_08052780: .4byte 0x00000838
_08052784: .4byte 0x0203EC84
_08052788: .4byte gSinTable
_0805278C: .4byte 0x000003FF
_08052790: .4byte 0x0203EC88
_08052794: .4byte 0x00000BF8
_08052798: .4byte 0x00000BFC
_0805279C: .4byte 0x000007FF
_080527A0: .4byte 0xFFFFFC00
_080527A4:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_802EC38
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _080527B8
_080527B6:
	movs r4, #0
_080527B8:
	ldr r0, _080527DC @ =0x03003668
	mov r1, r8
	adds r2, r7, #0
	bl cam_SetPos
	ldr r0, _080527DC @ =0x03003668
	adds r1, r4, #0
	bl cam_SetYaw
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080527DC: .4byte 0x03003668

	thumb_func_start sub_080527E0
sub_080527E0: @ 0x080527E0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r5, [r7, #0x68]
	adds r5, #1
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r5, r1
	bgt _08052858
	ldr r6, _08052840 @ =0x0203EC88
	ldr r2, _08052844 @ =gSinTable
	lsls r0, r5, #0x17
	asrs r4, r0, #0x10
	adds r0, r4, #0
	cmp r4, #0
	bge _08052800
	adds r0, #0x3f
_08052800:
	asrs r0, r0, #6
	subs r0, r1, r0
	ldr r1, _08052848 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r3, [r0]
	ldr r0, _0805284C @ =0x0203EC80
	ldr r2, [r0]
	rsbs r1, r2, #0
	movs r0, #0x80
	lsls r0, r0, #8
	subs r3, r0, r3
	adds r0, r1, #0
	muls r0, r3, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r6]
	ldr r6, _08052850 @ =0x0203EC84
	ldr r0, _08052854 @ =0x0203EC7C
	ldr r2, [r0]
	rsbs r0, r2, #0
	muls r0, r3, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r6]
	movs r0, #0
	b _0805285A
	.align 2, 0
_08052840: .4byte 0x0203EC88
_08052844: .4byte gSinTable
_08052848: .4byte 0x000003FF
_0805284C: .4byte 0x0203EC80
_08052850: .4byte 0x0203EC84
_08052854: .4byte 0x0203EC7C
_08052858:
	movs r0, #1
_0805285A:
	str r5, [r7, #0x68]
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8052864
sub_8052864: @ 0x08052864
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _08052964 @ =0x03004F70
	ldrb r7, [r0, #0xf]
	cmp r7, #0xa
	ble _08052872
	b _08052978
_08052872:
	cmp r7, #7
	bgt _080528AC
	ldr r4, _08052968 @ =0x91719171
	str r4, [sp]
	movs r2, #0xa
	subs r2, r2, r7
	movs r0, #1
	movs r1, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r5, _0805296C @ =0x01000010
	mov r0, sp
	adds r2, r5, #0
	bl CpuFastSet
	str r4, [sp, #4]
	add r4, sp, #4
	adds r2, r7, #0
	adds r2, #0xa
	movs r0, #1
	movs r1, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
_080528AC:
	subs r0, r7, #1
	cmp r0, #7
	bhi _080528E8
	ldr r6, _08052970 @ =0x91729172
	str r6, [sp, #4]
	add r4, sp, #4
	movs r2, #0xb
	subs r2, r2, r7
	movs r0, #1
	movs r1, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r5, _0805296C @ =0x01000010
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	str r6, [sp]
	adds r2, r7, #0
	adds r2, #9
	movs r0, #1
	movs r1, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	mov r0, sp
	adds r2, r5, #0
	bl CpuFastSet
_080528E8:
	subs r0, r7, #2
	cmp r0, #7
	bhi _08052924
	ldr r6, _08052974 @ =0x91739173
	str r6, [sp, #4]
	add r4, sp, #4
	movs r2, #0xc
	subs r2, r2, r7
	movs r0, #1
	movs r1, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r5, _0805296C @ =0x01000010
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	str r6, [sp]
	adds r2, r7, #0
	adds r2, #8
	movs r0, #1
	movs r1, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	mov r0, sp
	adds r2, r5, #0
	bl CpuFastSet
_08052924:
	cmp r7, #2
	ble _0805295C
	movs r6, #0
	str r6, [sp, #4]
	add r4, sp, #4
	movs r2, #0xd
	subs r2, r2, r7
	movs r0, #1
	movs r1, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r5, _0805296C @ =0x01000010
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuFastSet
	str r6, [sp]
	adds r2, r7, #7
	movs r0, #1
	movs r1, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	mov r0, sp
	adds r2, r5, #0
	bl CpuFastSet
_0805295C:
	movs r0, #2
	bl map_setBufferDirty
	b _080529AA
	.align 2, 0
_08052964: .4byte 0x03004F70
_08052968: .4byte 0x91719171
_0805296C: .4byte 0x01000010
_08052970: .4byte 0x91729172
_08052974: .4byte 0x91739173
_08052978:
	ldr r1, _08052A30 @ =0x04000040
	movs r0, #0xf0
	strh r0, [r1]
	adds r0, r7, #0
	subs r0, #0xb
	lsls r1, r0, #1
	adds r0, r1, r0
	lsls r0, r0, #3
	rsbs r0, r0, #0
	cmp r0, #0
	bge _08052990
	adds r0, #7
_08052990:
	asrs r0, r0, #3
	adds r0, #0x18
	lsls r0, r0, #8
	adds r1, #0x90
	orrs r0, r1
	ldr r1, _08052A34 @ =0x04000044
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x3e
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x20
	strh r0, [r1]
_080529AA:
	cmp r7, #0xa
	bne _08052A1E
	movs r5, #0
	str r5, [sp, #4]
	add r4, sp, #4
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _08052A38 @ =0x01000030
	adds r0, r4, #0
	bl CpuFastSet
	str r5, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0x12
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _08052A3C @ =0x01000020
	mov r0, sp
	bl CpuFastSet
	ldr r1, _08052A30 @ =0x04000040
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	ldr r2, _08052A40 @ =0x00001890
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0x3f
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x21
	strh r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _08052A44 @ =0x00009FFF
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	ldr r1, _08052A48 @ =0x03004F70
	strb r0, [r1, #0xe]
	ldrb r2, [r1, #0xc]
	movs r0, #0x80
	orrs r0, r2
	strb r0, [r1, #0xc]
_08052A1E:
	cmp r7, #0x13
	bne _08052A28
	ldr r1, _08052A48 @ =0x03004F70
	movs r0, #0
	str r0, [r1]
_08052A28:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052A30: .4byte 0x04000040
_08052A34: .4byte 0x04000044
_08052A38: .4byte 0x01000030
_08052A3C: .4byte 0x01000020
_08052A40: .4byte 0x00001890
_08052A44: .4byte 0x00009FFF
_08052A48: .4byte 0x03004F70

	thumb_func_start sub_8052A4C
sub_8052A4C: @ 0x08052A4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r0, _08052AA0 @ =0x03002E20
	ldr r1, _08052AA4 @ =0x00000801
	adds r0, r0, r1
	ldrb r0, [r0]
	bl track_getCupIndex
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r2, #0
	mov r8, r2
	movs r3, #0
	str r3, [sp, #0xc]
	ldr r0, _08052AA8 @ =0x0203EC78
	mov r7, r8
	strh r7, [r0]
	ldr r0, _08052AAC @ =0x0203EC6C
	mov r1, r8
	str r1, [r0]
	ldr r1, _08052AB0 @ =_080EFD6C
	movs r0, #0
	bl sub_8030224
	ldr r2, [sp, #8]
	cmp r2, #0
	bne _08052ABC
	ldr r0, _08052AB4 @ =0x0203EC70
	mov r3, r8
	str r3, [r0]
	ldr r1, _08052AB8 @ =_080EFDAC
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	b _08052AC2
	.align 2, 0
_08052AA0: .4byte 0x03002E20
_08052AA4: .4byte 0x00000801
_08052AA8: .4byte 0x0203EC78
_08052AAC: .4byte 0x0203EC6C
_08052AB0: .4byte _080EFD6C
_08052AB4: .4byte 0x0203EC70
_08052AB8: .4byte _080EFDAC
_08052ABC:
	ldr r1, _08052AE4 @ =0x0203EC70
	movs r0, #1
	str r0, [r1]
_08052AC2:
	ldr r1, _08052AE8 @ =0x0203EC74
	movs r0, #1
	str r0, [r1]
_08052AC8:
	bl oam_update
	bl main_frameProc
	mov r7, r8
	cmp r7, #0xa
	bls _08052AD8
	b _08052E4A
_08052AD8:
	lsls r0, r7, #2
	ldr r1, _08052AEC @ =_08052AF0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08052AE4: .4byte 0x0203EC70
_08052AE8: .4byte 0x0203EC74
_08052AEC: .4byte _08052AF0
_08052AF0: @ jump table
	.4byte _08052B1C @ case 0
	.4byte _08052B44 @ case 1
	.4byte _08052B58 @ case 2
	.4byte _08052B92 @ case 3
	.4byte _08052BCA @ case 4
	.4byte _08052C0E @ case 5
	.4byte _08052C24 @ case 6
	.4byte _08052C3C @ case 7
	.4byte _08052C90 @ case 8
	.4byte _08052C96 @ case 9
	.4byte _08052E34 @ case 10
_08052B1C:
	ldr r0, _08052B34 @ =sub_8053074
	ldr r1, _08052B38 @ =0x03004F70
	str r0, [r1, #4]
	ldr r0, _08052B3C @ =sub_8052864
	str r0, [r1]
	ldr r0, _08052B40 @ =sub_80530C4
	str r0, [r1, #8]
	movs r0, #3
	strb r0, [r1, #0xe]
	bl trns_start
	b _08052E26
	.align 2, 0
_08052B34: .4byte sub_8053074
_08052B38: .4byte 0x03004F70
_08052B3C: .4byte sub_8052864
_08052B40: .4byte sub_80530C4
_08052B44:
	ldr r0, _08052B54 @ =0x03004F70
	ldrb r1, [r0, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08052B52
	b _08052E4A
_08052B52:
	b _08052C08
	.align 2, 0
_08052B54: .4byte 0x03004F70
_08052B58:
	ldr r2, [sp, #0xc]
	adds r2, #1
	str r2, [sp, #0xc]
	cmp r2, #0x20
	bgt _08052B8C
	ldr r2, _08052B84 @ =0x0203EC78
	ldr r1, _08052B88 @ =gSinTable
	ldr r3, [sp, #0xc]
	lsls r0, r3, #0x19
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08052B72
	adds r0, #0x3f
_08052B72:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #8
	asrs r0, r0, #0xf
	strh r0, [r2]
	b _08052E4A
	.align 2, 0
_08052B84: .4byte 0x0203EC78
_08052B88: .4byte gSinTable
_08052B8C:
	movs r7, #0
	str r7, [sp, #0xc]
	b _08052E26
_08052B92:
	ldr r1, [sp, #8]
	cmp r1, #0
	bne _08052BB8
	ldr r0, _08052BB0 @ =0x0203EC6C
	ldr r0, [r0]
	cmp r0, #1
	beq _08052BA2
	b _08052E4A
_08052BA2:
	ldr r0, _08052BB4 @ =0x0203EC70
	ldr r0, [r0]
	cmp r0, #1
	beq _08052BAC
	b _08052E4A
_08052BAC:
	b _08052C18
	.align 2, 0
_08052BB0: .4byte 0x0203EC6C
_08052BB4: .4byte 0x0203EC70
_08052BB8:
	ldr r3, [sp, #0xc]
	adds r3, #1
	str r3, [sp, #0xc]
	cmp r3, #0xb4
	bgt _08052BC4
	b _08052E4A
_08052BC4:
	movs r7, #0
	str r7, [sp, #0xc]
	b _08052E26
_08052BCA:
	ldr r1, [sp, #0xc]
	adds r1, #1
	str r1, [sp, #0xc]
	cmp r1, #0x20
	bgt _08052C04
	ldr r2, _08052BFC @ =0x0203EC78
	ldr r1, _08052C00 @ =gSinTable
	ldr r3, [sp, #0xc]
	lsls r0, r3, #0x19
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08052BE4
	adds r0, #0x3f
_08052BE4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #8
	asrs r0, r0, #0xf
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r0, r7
	strh r0, [r2]
	b _08052E4A
	.align 2, 0
_08052BFC: .4byte 0x0203EC78
_08052C00: .4byte gSinTable
_08052C04:
	movs r0, #0
	str r0, [sp, #0xc]
_08052C08:
	movs r1, #1
	add r8, r1
	b _08052E4A
_08052C0E:
	ldr r2, _08052C20 @ =0x03004F70
	ldrb r1, [r2, #0xc]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0xc]
_08052C18:
	movs r2, #1
	add r8, r2
	b _08052E4A
	.align 2, 0
_08052C20: .4byte 0x03004F70
_08052C24:
	ldr r0, _08052C38 @ =0x03004F70
	ldrb r1, [r0, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08052C32
	b _08052E4A
_08052C32:
	movs r3, #1
	add r8, r3
	b _08052E4A
	.align 2, 0
_08052C38: .4byte 0x03004F70
_08052C3C:
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	mov r0, sp
	ldr r2, _08052C80 @ =0x01000030
	bl CpuFastSet
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0x12
	bl map_getBufferPtr2d
	adds r1, r0, #0
	add r0, sp, #4
	ldr r2, _08052C84 @ =0x01000020
	bl CpuFastSet
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08052C88 @ =_08062834
	movs r2, #0xc0
	lsls r2, r2, #0x13
	ldr r3, _08052C8C @ =0x80000600
	bl dmaq_enqueue
	movs r7, #1
	add r8, r7
	b _08052E4A
	.align 2, 0
_08052C80: .4byte 0x01000030
_08052C84: .4byte 0x01000020
_08052C88: .4byte _08062834
_08052C8C: .4byte 0x80000600
_08052C90:
	bl sub_804EDAC
	b _08052E26
_08052C96:
	ldr r1, [sp, #0xc]
	adds r1, #1
	str r1, [sp, #0xc]
	cmp r1, #0xa
	ble _08052CA2
	b _08052DDE
_08052CA2:
	subs r1, #0xa
	str r1, [sp, #0x10]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov ip, r0
	movs r1, #0
	ldr r2, [sp, #0x10]
	mov sl, r2
_08052CC4:
	movs r3, #0
	ldr r7, [sp, #0x10]
	adds r5, r1, r7
	adds r6, r1, #1
	adds r4, r5, #0
	lsls r0, r4, #5
	adds r0, #4
	lsls r1, r1, #5
	adds r1, #4
	lsls r0, r0, #1
	mov r7, ip
	adds r2, r0, r7
_08052CDC:
	adds r0, r3, #4
	cmp r0, #0
	blt _08052CF6
	cmp r5, #0
	blt _08052CF6
	cmp r0, #0x1d
	bgt _08052CF6
	cmp r4, #0x13
	bgt _08052CF6
	lsls r0, r1, #1
	add r0, sb
	ldrh r0, [r0]
	strh r0, [r2]
_08052CF6:
	adds r2, #2
	adds r1, #1
	adds r3, #1
	cmp r3, #0x1a
	blt _08052CDC
	adds r1, r6, #0
	cmp r1, #4
	blt _08052CC4
	movs r0, #2
	bl map_setBufferDirty
	mov r6, sl
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov sb, r0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	mov ip, r0
	movs r0, #0
_08052D28:
	movs r4, #0
	adds r5, r0, #2
	adds r0, #1
	mov sl, r0
	adds r3, r5, #0
	lsls r0, r3, #6
	mov r1, sb
	adds r2, r0, r1
	lsls r0, r3, #5
	adds r0, r6, r0
	lsls r0, r0, #1
	mov r7, ip
	adds r1, r0, r7
_08052D42:
	adds r0, r4, r6
	cmp r0, #0
	blt _08052D58
	cmp r5, #0
	blt _08052D58
	cmp r0, #0x1d
	bgt _08052D58
	cmp r3, #0x13
	bgt _08052D58
	ldrh r0, [r2]
	strh r0, [r1]
_08052D58:
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #6
	blt _08052D42
	mov r0, sl
	cmp r0, #0x11
	blt _08052D28
	movs r0, #2
	bl map_setBufferDirty
	movs r0, #0xa
	ldr r1, [sp, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
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
_08052D90:
	adds r5, r0, #0
	adds r5, #0xc
	adds r0, #1
	mov ip, r0
	adds r4, r5, #0
	lsls r0, r4, #5
	adds r0, #0x16
	ldr r2, [sp, #0x10]
	adds r1, r2, r0
	adds r2, #0x16
	movs r6, #8
	lsls r1, r1, #1
	add r1, sb
	lsls r0, r0, #1
	mov r7, sl
	adds r3, r0, r7
_08052DB0:
	cmp r2, #0
	blt _08052DC4
	cmp r5, #0
	blt _08052DC4
	cmp r2, #0x1d
	bgt _08052DC4
	cmp r4, #0x13
	bgt _08052DC4
	ldrh r0, [r3]
	strh r0, [r1]
_08052DC4:
	adds r3, #2
	adds r1, #2
	adds r2, #1
	subs r6, #1
	cmp r6, #0
	bge _08052DB0
	mov r0, ip
	cmp r0, #9
	blt _08052D90
	movs r0, #2
	bl map_setBufferDirty
	b _08052E4A
_08052DDE:
	ldr r2, _08052E2C @ =0x04000008
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r2, #1]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r2, #1]
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r2]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r2]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r2, #1]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #7
	orrs r0, r1
	strb r0, [r2, #1]
	ldr r0, _08052E30 @ =0x04000010
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
_08052E26:
	movs r0, #1
	add r8, r0
	b _08052E4A
	.align 2, 0
_08052E2C: .4byte 0x04000008
_08052E30: .4byte 0x04000010
_08052E34:
	ldr r0, _08052E9C @ =0x030023D4
	ldr r0, [r0]
	bl vcount_unregister
	ldr r0, _08052EA0 @ =0x030023D8
	ldr r0, [r0]
	bl vcount_unregister
	ldr r1, _08052EA4 @ =0x0203EC74
	movs r0, #0
	str r0, [r1]
_08052E4A:
	ldr r1, _08052EA8 @ =0x03002E20
	ldr r0, [r1, #0x10]
	adds r0, #1
	str r0, [r1, #0x10]
	bl sub_804D8F8
	ldr r0, _08052EAC @ =0x03002E44
	bl sub_804978C
	bl sub_8051014
	ldr r0, _08052EAC @ =0x03002E44
	bl sub_8049850
	ldr r0, _08052EAC @ =0x03002E44
	bl sub_804A878
	ldr r0, _08052EAC @ =0x03002E44
	bl sub_804C0A8
	ldr r0, _08052EAC @ =0x03002E44
	bl sub_8049B0C
	ldr r0, _08052EAC @ =0x03002E44
	bl sub_8049D78
	bl sub_804389C
	ldr r0, _08052EA4 @ =0x0203EC74
	ldr r0, [r0]
	cmp r0, #0
	beq _08052E8C
	b _08052AC8
_08052E8C:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08052E9C: .4byte 0x030023D4
_08052EA0: .4byte 0x030023D8
_08052EA4: .4byte 0x0203EC74
_08052EA8: .4byte 0x03002E20
_08052EAC: .4byte 0x03002E44

	thumb_func_start sub_8052EB0
sub_8052EB0: @ 0x08052EB0
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp]
	ldr r2, _08052ED4 @ =0x0203EC78
	cmp r0, #0x31
	bgt _08052ECA
_08052EBE:
	ldr r0, [sp]
	adds r0, #1
	str r0, [sp]
	ldr r0, [sp]
	cmp r0, #0x31
	ble _08052EBE
_08052ECA:
	ldr r1, _08052ED8 @ =0x04000010
	ldrh r0, [r2]
	strh r0, [r1]
	add sp, #4
	bx lr
	.align 2, 0
_08052ED4: .4byte 0x0203EC78
_08052ED8: .4byte 0x04000010

	thumb_func_start sub_8052EDC
sub_8052EDC: @ 0x08052EDC
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp]
	ldr r1, _08052F08 @ =0x0203EC78
	cmp r0, #0x31
	bgt _08052EF6
_08052EEA:
	ldr r0, [sp]
	adds r0, #1
	str r0, [sp]
	ldr r0, [sp]
	cmp r0, #0x31
	ble _08052EEA
_08052EF6:
	ldr r2, _08052F0C @ =0x04000010
	ldrh r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	subs r0, r0, r1
	strh r0, [r2]
	add sp, #4
	bx lr
	.align 2, 0
_08052F08: .4byte 0x0203EC78
_08052F0C: .4byte 0x04000010

	thumb_func_start sub_08052F10
sub_08052F10: @ 0x08052F10
	push {r4, r5, lr}
	ldr r3, _08052F50 @ =0x03002E20
	movs r1, #0x12
	ldr r2, _08052F54 @ =0x00000C08
	adds r0, r3, r2
	str r1, [r0]
	ldr r2, _08052F58 @ =0x0203EC7C
	ldr r1, _08052F5C @ =0x0203EC84
	movs r0, #0xee
	lsls r0, r0, #7
	str r0, [r1]
	str r0, [r2]
	ldr r4, _08052F60 @ =0x0203EC80
	ldr r5, _08052F64 @ =0x0203EC88
	movs r2, #0xd0
	str r2, [r5]
	str r2, [r4]
	ldr r0, _08052F68 @ =0x00000838
	adds r3, r3, r0
	ldr r0, [r3]
	adds r0, #0xba
	ldrh r1, [r0]
	lsrs r1, r1, #1
	movs r0, #7
	subs r0, r0, r1
	lsls r0, r0, #4
	subs r2, r2, r0
	str r2, [r4]
	str r2, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08052F50: .4byte 0x03002E20
_08052F54: .4byte 0x00000C08
_08052F58: .4byte 0x0203EC7C
_08052F5C: .4byte 0x0203EC84
_08052F60: .4byte 0x0203EC80
_08052F64: .4byte 0x0203EC88
_08052F68: .4byte 0x00000838

	thumb_func_start sub_08052F6C
sub_08052F6C: @ 0x08052F6C
	ldr r0, _08052F80 @ =0x03002E20
	movs r1, #6
	ldr r2, _08052F84 @ =0x00000C08
	adds r0, r0, r2
	str r1, [r0]
	ldr r1, _08052F88 @ =0x0203EC6C
	movs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_08052F80: .4byte 0x03002E20
_08052F84: .4byte 0x00000C08
_08052F88: .4byte 0x0203EC6C

	thumb_func_start sub_08052F8C
sub_08052F8C: @ 0x08052F8C
	push {r4, r5, lr}
	ldr r0, _08052FA4 @ =0x03002E20
	adds r5, r0, #0
	adds r5, #0x24
	ldr r0, _08052FA8 @ =0x03002C80
	ldrb r1, [r0, #1]
	cmp r1, #1
	bls _08052FAC
	movs r0, #8
	subs r0, r0, r1
	b _08052FAE
	.align 2, 0
_08052FA4: .4byte 0x03002E20
_08052FA8: .4byte 0x03002C80
_08052FAC:
	movs r0, #7
_08052FAE:
	adds r4, r0, #0
	b _08052FDA
_08052FB2:
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_804AED4
	adds r2, r0, #0
	ldr r0, [r2, #0x48]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08052FD8
	ldr r1, [r2, #4]
	lsls r0, r4, #0x13
	adds r0, r0, r1
	movs r1, #0xf0
	lsls r1, r1, #0xd
	adds r0, r0, r1
	str r0, [r2, #4]
_08052FD8:
	adds r4, #1
_08052FDA:
	movs r1, #0xfe
	lsls r1, r1, #3
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r4, r0
	blt _08052FB2
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08052FEC
sub_08052FEC: @ 0x08052FEC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	ldr r0, _08053040 @ =0x03002E20
	movs r1, #0x24
	adds r1, r1, r0
	mov r8, r1
	mov sb, r8
	ldr r2, _08053044 @ =0x00000814
	adds r0, r0, r2
	ldrb r6, [r0]
	movs r7, #0
	movs r5, #0
	cmp r7, r6
	bge _08053054
_0805300E:
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	mov r0, sb
	bl sub_804AED4
	adds r4, r0, #0
	adds r0, #0xba
	ldrh r1, [r0]
	lsrs r1, r1, #1
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, r8
	add r2, sp, #4
	add r3, sp, #8
	bl sub_8032AA0
	ldr r1, [r4, #4]
	ldr r0, [sp, #8]
	cmp r0, r1
	beq _0805304C
	ldr r2, _08053048 @ =0xFFFF8000
	adds r0, r1, r2
	str r0, [r4, #4]
	b _0805304E
	.align 2, 0
_08053040: .4byte 0x03002E20
_08053044: .4byte 0x00000814
_08053048: .4byte 0xFFFF8000
_0805304C:
	adds r7, #1
_0805304E:
	adds r5, #1
	cmp r5, r6
	blt _0805300E
_08053054:
	cmp r7, r6
	beq _0805305C
	movs r0, #0
	b _08053062
_0805305C:
	ldr r1, _08053070 @ =0x0203EC70
	movs r0, #1
	str r0, [r1]
_08053062:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08053070: .4byte 0x0203EC70

	thumb_func_start sub_8053074
sub_8053074: @ 0x08053074
	push {lr}
	ldr r2, _080530B4 @ =0x04000008
	ldrb r1, [r2, #1]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2, #1]
	movs r0, #0
	bl pltt_getBuffer
	movs r2, #0x9f
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r0, #0
	strh r0, [r1]
	movs r0, #1
	bl pltt_setDirtyFlag
	ldr r0, _080530B8 @ =_080EFDC4
	ldr r1, _080530BC @ =0x06002E00
	bl LZ77UnCompVram
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _080530C0 @ =0x00009FFF
	ands r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_080530B4: .4byte 0x04000008
_080530B8: .4byte _080EFDC4
_080530BC: .4byte 0x06002E00
_080530C0: .4byte 0x00009FFF

	thumb_func_start sub_80530C4
sub_80530C4: @ 0x080530C4
	push {r4, r5, lr}
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _080530F8 @ =0x00009FFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _080530FC @ =0x04000040
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0xa0
	strh r0, [r1]
	ldr r4, _08053100 @ =0x03002E20
	adds r4, #0x24
	movs r0, #0
	bl pltt_getBuffer
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_8032D44
	strh r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080530F8: .4byte 0x00009FFF
_080530FC: .4byte 0x04000040
_08053100: .4byte 0x03002E20

	thumb_func_start sub_8053104
sub_8053104: @ 0x08053104
	push {r4, lr}
	adds r4, r0, #0
	bl sub_802F5C0
	movs r0, #0x80
	lsls r0, r0, #5
	movs r2, #0
	strh r0, [r4, #0x10]
	movs r0, #8
	strb r0, [r4, #0xe]
	strb r0, [r4, #0xd]
	strb r0, [r4, #0xc]
	movs r0, #1
	strh r0, [r4, #0x34]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, #0
	adds r0, #0x56
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	str r2, [r4, #0x5c]
	ldrh r1, [r4, #0x34]
	ldr r0, _08053144 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #0x34]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08053144: .4byte 0x0000FFFD

	thumb_func_start sub_8053148
sub_8053148: @ 0x08053148
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov r8, r6
	ldr r1, _08053170 @ =0x000007DD
	adds r0, r6, r1
	ldrb r7, [r0]
	movs r4, #0
	ldr r2, _08053174 @ =0x00000574
	adds r0, r6, r2
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x94
	ldr r0, [r0]
	movs r5, #0
	cmp r0, #0
	beq _0805318A
	adds r5, r1, r0
	b _0805318A
	.align 2, 0
_08053170: .4byte 0x000007DD
_08053174: .4byte 0x00000574
_08053178:
	ldrb r1, [r5]
	adds r0, r7, #0
	bl sub_8053DC4
	ldr r1, _080531BC @ =0xFFFF0000
	cmp r0, r1
	bne _08053188
	adds r4, #1
_08053188:
	adds r5, #4
_0805318A:
	ldrb r0, [r5]
	cmp r0, #0
	bne _08053178
	ldr r1, _080531C0 @ =0x000006FC
	adds r0, r6, r1
	movs r2, #0xdc
	lsls r2, r2, #3
	adds r1, r6, r2
	adds r2, r4, #0
	bl sub_804F750
	cmp r4, #0
	ble _08053212
	ldr r0, _080531C4 @ =0x00000574
	add r0, r8
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x94
	ldr r0, [r0]
	movs r5, #0
	cmp r0, #0
	beq _0805320C
	adds r5, r1, r0
	b _0805320C
	.align 2, 0
_080531BC: .4byte 0xFFFF0000
_080531C0: .4byte 0x000006FC
_080531C4: .4byte 0x00000574
_080531C8:
	ldrb r1, [r5]
	adds r0, r7, #0
	bl sub_8053DC4
	ldr r1, _080531DC @ =0xFFFF0000
	cmp r0, r1
	beq _080531E0
	adds r5, #4
	b _0805320C
	.align 2, 0
_080531DC: .4byte 0xFFFF0000
_080531E0:
	adds r5, #1
	ldr r1, _0805321C @ =0x000006FC
	adds r0, r6, r1
	bl sub_804F7AC
	adds r4, r0, #0
	bl sub_8043860
	ldrb r0, [r5]
	lsls r0, r0, #0x13
	adds r5, #1
	str r0, [r4]
	ldrb r0, [r5]
	lsls r0, r0, #0x13
	adds r5, #1
	str r0, [r4, #4]
	movs r0, #0
	str r0, [r4, #8]
	ldrb r0, [r5]
	adds r4, #0x36
	strb r0, [r4]
	adds r5, #1
_0805320C:
	ldrb r0, [r5]
	cmp r0, #0
	bne _080531C8
_08053212:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805321C: .4byte 0x000006FC

	thumb_func_start sub_8053220
sub_8053220: @ 0x08053220
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	ldr r1, _080532AC @ =0x000007CC
	adds r0, r6, r1
	ldr r4, [r0]
	movs r2, #4
	ldrsh r1, [r5, r2]
	lsls r1, r1, #3
	movs r0, #6
	ldrsh r2, [r5, r0]
	lsls r2, r2, #3
	adds r0, r6, #0
	bl sub_8032CA0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	strh r1, [r5, #8]
	cmp r4, r5
	beq _08053268
	movs r2, #8
	ldrsh r0, [r4, r2]
	cmp r0, r1
	beq _08053264
_08053252:
	adds r4, #0xc
	cmp r4, r5
	beq _08053268
	movs r0, #8
	ldrsh r1, [r4, r0]
	movs r2, #8
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bne _08053252
_08053264:
	cmp r4, r5
	bne _080532B8
_08053268:
	ldr r3, [r7]
	adds r3, #0xd0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	strh r3, [r5, #0xa]
	movs r4, #4
	ldrsh r1, [r5, r4]
	lsls r1, r1, #3
	movs r0, #6
	ldrsh r2, [r5, r0]
	lsls r2, r2, #3
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r6, #0
	bl sub_8032798
	bl dmaq_getVBlankDmaQueue
	movs r2, #8
	ldrsh r1, [r5, r2]
	lsls r1, r1, #6
	ldr r3, _080532B0 @ =0x06008000
	adds r1, r1, r3
	movs r4, #0xa
	ldrsh r2, [r5, r4]
	lsls r2, r2, #6
	adds r2, r2, r3
	ldr r3, _080532B4 @ =0x80000020
	bl dmaq_enqueue
	ldr r0, [r7]
	adds r0, #1
	str r0, [r7]
	b _080532D4
	.align 2, 0
_080532AC: .4byte 0x000007CC
_080532B0: .4byte 0x06008000
_080532B4: .4byte 0x80000020
_080532B8:
	movs r0, #0xa
	ldrsh r3, [r4, r0]
	strh r3, [r5, #0xa]
	movs r2, #4
	ldrsh r1, [r5, r2]
	lsls r1, r1, #3
	movs r4, #6
	ldrsh r2, [r5, r4]
	lsls r2, r2, #3
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r6, #0
	bl sub_8032798
_080532D4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start loadtrack_loadObjects
loadtrack_loadObjects: @ 0x080532DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp, #4]
	movs r0, #0
	mov r8, r0
	movs r5, #0
	str r5, [sp]
	ldr r1, [sp, #4]
	ldr r2, _08053388 @ =0x00000574
	adds r0, r1, r2
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x8c
	ldr r0, [r0]
	movs r7, #0
	cmp r0, #0
	beq _08053308
	adds r7, r1, r0
_08053308:
	cmp r7, #0
	bne _08053310
	bl _08053D86
_08053310:
	ldrb r0, [r7]
	ldr r3, [sp, #4]
	ldr r1, _0805338C @ =0x000007CC
	adds r3, r3, r1
	mov sb, r3
	cmp r0, #0
	beq _080533F0
	ldr r2, [sp, #4]
	ldr r3, _08053390 @ =0x000007DD
	adds r4, r2, r3
	ldr r6, _08053394 @ =0xFFFF0000
_08053326:
	ldrb r0, [r4]
	ldrb r1, [r7]
	bl sub_8053DC4
	cmp r0, r6
	beq _080533E8
	ldrb r0, [r4]
	ldrb r1, [r7]
	bl sub_8053DC4
	ldr r1, _08053398 @ =0xFFF80000
	cmp r0, r1
	beq _080533E8
	ldrb r0, [r4]
	ldrb r1, [r7]
	bl sub_8053DC4
	ands r0, r6
	ldr r1, _0805339C @ =0xFFF00000
	cmp r0, r1
	beq _080533E8
	movs r0, #1
	add r8, r0
	ldrb r0, [r4]
	ldrb r1, [r7]
	bl sub_8053DC4
	adds r1, r0, #0
	ands r1, r6
	movs r0, #0xa0
	lsls r0, r0, #0xc
	cmp r1, r0
	beq _080533E6
	cmp r1, r0
	bhi _080533AE
	movs r0, #0xc0
	lsls r0, r0, #0xb
	cmp r1, r0
	beq _080533E6
	cmp r1, r0
	bhi _080533A0
	movs r0, #0x80
	lsls r0, r0, #0xb
	cmp r1, r0
	beq _080533E6
	movs r0, #0xa0
	lsls r0, r0, #0xb
	b _080533D8
	.align 2, 0
_08053388: .4byte 0x00000574
_0805338C: .4byte 0x000007CC
_08053390: .4byte 0x000007DD
_08053394: .4byte 0xFFFF0000
_08053398: .4byte 0xFFF80000
_0805339C: .4byte 0xFFF00000
_080533A0:
	movs r0, #0x80
	lsls r0, r0, #0xc
	cmp r1, r0
	beq _080533E6
	movs r0, #0x90
	lsls r0, r0, #0xc
	b _080533D8
_080533AE:
	movs r0, #0x86
	lsls r0, r0, #0x10
	cmp r1, r0
	beq _080533E6
	cmp r1, r0
	bhi _080533C8
	movs r0, #0xc0
	lsls r0, r0, #0xc
	cmp r1, r0
	beq _080533E6
	movs r0, #0xe0
	lsls r0, r0, #0xc
	b _080533D8
_080533C8:
	movs r0, #0x96
	lsls r0, r0, #0x10
	cmp r1, r0
	beq _080533E6
	cmp r1, r0
	bhi _080533DE
	movs r0, #0x95
	lsls r0, r0, #0x10
_080533D8:
	cmp r1, r0
	beq _080533E6
	b _080533E8
_080533DE:
	movs r0, #0x98
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _080533E8
_080533E6:
	adds r5, #1
_080533E8:
	adds r7, #4
	ldrb r0, [r7]
	cmp r0, #0
	bne _08053326
_080533F0:
	cmp r5, #0
	ble _08053418
	ldr r1, [sp, #4]
	movs r2, #0xdc
	lsls r2, r2, #3
	adds r0, r1, r2
	adds r1, r5, #1
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	movs r1, #1
	bl frmheap_calloc
	mov r3, sb
	str r0, [r3]
	mov sl, r0
	movs r0, #0
	mov r1, sl
	str r0, [r1]
	b _08053420
_08053418:
	movs r0, #0
	mov r2, sb
	str r0, [r2]
	mov sl, r0
_08053420:
	mov r3, r8
	cmp r3, #0
	bgt _0805342A
	bl sub_8053D74
_0805342A:
	ldr r1, [sp, #4]
	ldr r2, _08053494 @ =0x000006EC
	adds r0, r1, r2
	movs r3, #0xdc
	lsls r3, r3, #3
	adds r1, r1, r3
	mov r2, r8
	bl sub_804F824
	ldr r1, [sp, #4]
	ldr r2, _08053498 @ =0x00000574
	adds r0, r1, r2
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x8c
	ldr r0, [r0]
	movs r7, #0
	cmp r0, #0
	beq _08053452
	adds r7, r1, r0
_08053452:
	ldrb r0, [r7]
	cmp r0, #0
	bne _0805345C
	bl _08053D86
_0805345C:
	movs r3, #0xe0
	mov r8, r3
	ldr r0, _0805349C @ =0x00001001
	mov sb, r0

	thumb_func_start sub_08053464
sub_08053464: @ 0x08053464
	ldr r1, [sp, #4]
	ldr r2, _080534A0 @ =0x000007DD
	adds r0, r1, r2
	ldrb r0, [r0]
	ldrb r1, [r7]
	adds r7, #1
	bl sub_8053DC4
	adds r6, r0, #0
	ldr r1, _080534A4 @ =0xFFFF0000
	cmp r6, r1
	beq _0805348C
	ldr r0, _080534A8 @ =0xFFF80000
	cmp r6, r0
	beq _0805348C
	adds r4, r6, #0
	ands r4, r1
	ldr r0, _080534AC @ =0xFFF00000
	cmp r4, r0
	bne _080534B0
_0805348C:
	adds r7, #3
	bl _08053D64
	.align 2, 0
_08053494: .4byte 0x000006EC
_08053498: .4byte 0x00000574
_0805349C: .4byte 0x00001001
_080534A0: .4byte 0x000007DD
_080534A4: .4byte 0xFFFF0000
_080534A8: .4byte 0xFFF80000
_080534AC: .4byte 0xFFF00000
_080534B0:
	ldr r3, [sp, #4]
	ldr r1, _080534F0 @ =0x000006EC
	adds r0, r3, r1
	bl sub_804F85C
	adds r5, r0, #0
	bl sub_8053104
	str r6, [r5, #0x50]
	ldrb r0, [r7]
	lsls r0, r0, #0x13
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	str r0, [r5]
	movs r0, #0xa0
	lsls r0, r0, #0xc
	cmp r4, r0
	beq _0805353A
	cmp r4, r0
	bhi _08053502
	movs r0, #0xc0
	lsls r0, r0, #0xb
	cmp r4, r0
	beq _0805353A
	cmp r4, r0
	bhi _080534F4
	cmp r4, r1
	beq _0805353A
	movs r0, #0xa0
	lsls r0, r0, #0xb
	b _0805352C
	.align 2, 0
_080534F0: .4byte 0x000006EC
_080534F4:
	movs r0, #0x80
	lsls r0, r0, #0xc
	cmp r4, r0
	beq _0805353A
	movs r0, #0x90
	lsls r0, r0, #0xc
	b _0805352C
_08053502:
	movs r0, #0x86
	lsls r0, r0, #0x10
	cmp r4, r0
	beq _0805353A
	cmp r4, r0
	bhi _0805351C
	movs r0, #0xc0
	lsls r0, r0, #0xc
	cmp r4, r0
	beq _0805353A
	movs r0, #0xe0
	lsls r0, r0, #0xc
	b _0805352C
_0805351C:
	movs r0, #0x96
	lsls r0, r0, #0x10
	cmp r4, r0
	beq _0805353A
	cmp r4, r0
	bhi _08053532
	movs r0, #0x95
	lsls r0, r0, #0x10
_0805352C:
	cmp r4, r0
	beq _0805353A
	b _08053540
_08053532:
	movs r0, #0x98
	lsls r0, r0, #0x10
	cmp r4, r0
	bne _08053540
_0805353A:
	ldrb r0, [r7]
	mov r2, sl
	strh r0, [r2, #4]
_08053540:
	adds r7, #1
	ldrb r0, [r7]
	lsls r0, r0, #0x13
	movs r2, #0x80
	lsls r2, r2, #0xb
	adds r0, r0, r2
	str r0, [r5, #4]
	ldr r1, _08053574 @ =0xFFFF0000
	ands r1, r6
	movs r0, #0xa0
	lsls r0, r0, #0xc
	cmp r1, r0
	beq _080535BE
	cmp r1, r0
	bhi _08053586
	movs r0, #0xc0
	lsls r0, r0, #0xb
	cmp r1, r0
	beq _080535BE
	cmp r1, r0
	bhi _08053578
	cmp r1, r2
	beq _080535BE
	movs r0, #0xa0
	lsls r0, r0, #0xb
	b _080535B0
	.align 2, 0
_08053574: .4byte 0xFFFF0000
_08053578:
	movs r0, #0x80
	lsls r0, r0, #0xc
	cmp r1, r0
	beq _080535BE
	movs r0, #0x90
	lsls r0, r0, #0xc
	b _080535B0
_08053586:
	movs r0, #0x86
	lsls r0, r0, #0x10
	cmp r1, r0
	beq _080535BE
	cmp r1, r0
	bhi _080535A0
	movs r0, #0xc0
	lsls r0, r0, #0xc
	cmp r1, r0
	beq _080535BE
	movs r0, #0xe0
	lsls r0, r0, #0xc
	b _080535B0
_080535A0:
	movs r0, #0x96
	lsls r0, r0, #0x10
	cmp r1, r0
	beq _080535BE
	cmp r1, r0
	bhi _080535B6
	movs r0, #0x95
	lsls r0, r0, #0x10
_080535B0:
	cmp r1, r0
	beq _080535BE
	b _080535C4
_080535B6:
	movs r0, #0x98
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _080535C4
_080535BE:
	ldrb r0, [r7]
	mov r3, sl
	strh r0, [r3, #6]
_080535C4:
	adds r7, #1
	movs r0, #0
	str r0, [r5, #8]
	ldrb r0, [r7]
	adds r1, r5, #0
	adds r1, #0x36
	strb r0, [r1]
	ldrb r1, [r7]
	adds r0, r5, #0
	adds r0, #0x54
	strb r1, [r0]
	adds r7, #1
	ldr r1, _08053608 @ =0xFFFF0000
	ands r1, r6
	movs r0, #0xa0
	lsls r0, r0, #0xc
	cmp r1, r0
	beq _08053652
	cmp r1, r0
	bhi _0805361A
	movs r0, #0xc0
	lsls r0, r0, #0xb
	cmp r1, r0
	beq _08053652
	cmp r1, r0
	bhi _0805360C
	movs r0, #0x80
	lsls r0, r0, #0xb
	cmp r1, r0
	beq _08053652
	movs r0, #0xa0
	lsls r0, r0, #0xb
	b _08053644
	.align 2, 0
_08053608: .4byte 0xFFFF0000
_0805360C:
	movs r0, #0x80
	lsls r0, r0, #0xc
	cmp r1, r0
	beq _08053652
	movs r0, #0x90
	lsls r0, r0, #0xc
	b _08053644
_0805361A:
	movs r0, #0x86
	lsls r0, r0, #0x10
	cmp r1, r0
	beq _08053652
	cmp r1, r0
	bhi _08053634
	movs r0, #0xc0
	lsls r0, r0, #0xc
	cmp r1, r0
	beq _08053652
	movs r0, #0xe0
	lsls r0, r0, #0xc
	b _08053644
_08053634:
	movs r0, #0x96
	lsls r0, r0, #0x10
	cmp r1, r0
	beq _08053652
	cmp r1, r0
	bhi _0805364A
	movs r0, #0x95
	lsls r0, r0, #0x10
_08053644:
	cmp r1, r0
	beq _08053652
	b _0805366A
_0805364A:
	movs r0, #0x98
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _0805366A
_08053652:
	mov r0, sl
	str r5, [r0]
	ldr r0, [sp, #4]
	mov r1, sl
	mov r2, sp
	bl sub_8053220
	movs r1, #0xc
	add sl, r1
	movs r0, #0
	mov r2, sl
	str r0, [r2]
_0805366A:
	ldr r1, _080536C0 @ =0xFFFF0000
	ands r1, r6
	movs r0, #0x89
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _08053678
	b _08053C90
_08053678:
	cmp r1, r0
	bls _0805367E
	b _08053790
_0805367E:
	movs r0, #0xc0
	lsls r0, r0, #0xc
	cmp r1, r0
	bne _08053688
	b _080538AC
_08053688:
	cmp r1, r0
	bhi _08053708
	movs r0, #0xc0
	lsls r0, r0, #0xb
	cmp r1, r0
	bne _08053696
	b _080538AC
_08053696:
	cmp r1, r0
	bhi _080536D4
	movs r0, #0xc0
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _080536A4
	b _08053C18
_080536A4:
	cmp r1, r0
	bhi _080536C4
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r1, r0
	bne _080536B2
	b _08053BE8
_080536B2:
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _080536BC
	b _08053C10
_080536BC:
	b _08053D60
	.align 2, 0
_080536C0: .4byte 0xFFFF0000
_080536C4:
	movs r0, #0x80
	lsls r0, r0, #0xb
	cmp r1, r0
	bne _080536CE
	b _080538AC
_080536CE:
	movs r0, #0xa0
	lsls r0, r0, #0xb
	b _08053816
_080536D4:
	movs r0, #0x90
	lsls r0, r0, #0xc
	cmp r1, r0
	bne _080536DE
	b _080538AC
_080536DE:
	cmp r1, r0
	bhi _080536F2
	movs r0, #0xe0
	lsls r0, r0, #0xb
	cmp r1, r0
	bne _080536EC
	b _08053C38
_080536EC:
	movs r0, #0x80
	lsls r0, r0, #0xc
	b _08053816
_080536F2:
	movs r0, #0xa0
	lsls r0, r0, #0xc
	cmp r1, r0
	bne _080536FC
	b _080538AC
_080536FC:
	movs r0, #0xb0
	lsls r0, r0, #0xc
	cmp r1, r0
	bne _08053706
	b _08053C20
_08053706:
	b _08053D60
_08053708:
	movs r0, #0x82
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _08053712
	b _08053C64
_08053712:
	cmp r1, r0
	bhi _0805374C
	movs r0, #0x80
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _08053720
	b _08053C40
_08053720:
	cmp r1, r0
	bhi _08053734
	movs r0, #0xd0
	lsls r0, r0, #0xc
	cmp r1, r0
	bne _0805372E
	b _08053CF0
_0805372E:
	movs r0, #0xe0
	lsls r0, r0, #0xc
	b _08053816
_08053734:
	ldr r0, _08053748 @ =0x00808000
	cmp r1, r0
	bne _0805373C
	b _08053C4A
_0805373C:
	movs r0, #0x81
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _08053746
	b _08053C5C
_08053746:
	b _08053D60
	.align 2, 0
_08053748: .4byte 0x00808000
_0805374C:
	movs r0, #0x85
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _08053756
	b _08053C80
_08053756:
	cmp r1, r0
	bhi _08053770
	movs r0, #0x83
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _08053764
	b _08053C6E
_08053764:
	movs r0, #0x84
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _0805376E
	b _08053C76
_0805376E:
	b _08053D60
_08053770:
	movs r0, #0x87
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _0805377A
	b _08053CE0
_0805377A:
	cmp r1, r0
	bhi _08053784
	movs r0, #0x86
	lsls r0, r0, #0x10
	b _08053816
_08053784:
	movs r0, #0x88
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _0805378E
	b _08053C88
_0805378E:
	b _08053D60
_08053790:
	movs r0, #0x97
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _0805379A
	b _08053D00
_0805379A:
	cmp r1, r0
	bhi _0805381C
	movs r0, #0x90
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _080537A8
	b _08053CC8
_080537A8:
	cmp r1, r0
	bhi _080537E6
	movs r0, #0x8d
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _080537B6
	b _08053CB0
_080537B6:
	cmp r1, r0
	bhi _080537D0
	movs r0, #0x8a
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _080537C4
	b _08053C98
_080537C4:
	movs r0, #0x8c
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _080537CE
	b _08053CA8
_080537CE:
	b _08053D60
_080537D0:
	movs r0, #0x8e
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _080537DA
	b _08053CB8
_080537DA:
	movs r0, #0x8f
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _080537E4
	b _08053CC0
_080537E4:
	b _08053D60
_080537E6:
	movs r0, #0x94
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _080537F0
	b _08053CF8
_080537F0:
	cmp r1, r0
	bhi _0805380A
	movs r0, #0x91
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _080537FE
	b _08053CD0
_080537FE:
	movs r0, #0x92
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _08053808
	b _08053CD8
_08053808:
	b _08053D60
_0805380A:
	movs r0, #0x95
	lsls r0, r0, #0x10
	cmp r1, r0
	beq _080538AC
	movs r0, #0x96
	lsls r0, r0, #0x10
_08053816:
	cmp r1, r0
	beq _080538AC
	b _08053D60
_0805381C:
	movs r0, #0x9d
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _08053826
	b _08053D28
_08053826:
	cmp r1, r0
	bhi _08053862
	movs r0, #0x9a
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _08053834
	b _08053D10
_08053834:
	cmp r1, r0
	bhi _0805384C
	movs r0, #0x98
	lsls r0, r0, #0x10
	cmp r1, r0
	beq _080538AC
	movs r0, #0x99
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _0805384A
	b _08053D08
_0805384A:
	b _08053D60
_0805384C:
	movs r0, #0x9b
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _08053856
	b _08053D18
_08053856:
	movs r0, #0x9c
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _08053860
	b _08053D20
_08053860:
	b _08053D60
_08053862:
	movs r0, #0xa0
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _0805386C
	b _08053D40
_0805386C:
	cmp r1, r0
	bhi _08053886
	movs r0, #0x9e
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _0805387A
	b _08053D30
_0805387A:
	movs r0, #0x9f
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _08053884
	b _08053D38
_08053884:
	b _08053D60
_08053886:
	movs r0, #0xa2
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _08053890
	b _08053D50
_08053890:
	cmp r1, r0
	bhi _080538A0
	movs r0, #0xa1
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _0805389E
	b _08053D48
_0805389E:
	b _08053D60
_080538A0:
	movs r0, #0xa3
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _080538AA
	b _08053D58
_080538AA:
	b _08053D60
_080538AC:
	ldr r0, _080538EC @ =0x000A0007
	cmp r6, r0
	bne _080538B4
	b _08053B44
_080538B4:
	cmp r6, r0
	bgt _08053960
	movs r0, #0x90
	lsls r0, r0, #0xc
	cmp r6, r0
	bne _080538C2
	b _08053B8C
_080538C2:
	cmp r6, r0
	bgt _0805391C
	ldr r0, _080538F0 @ =0x00050002
	cmp r6, r0
	bne _080538CE
	b _08053B0C
_080538CE:
	cmp r6, r0
	bgt _080538F4
	subs r0, #2
	cmp r6, r0
	bne _080538DA
	b _08053AFC
_080538DA:
	cmp r6, r0
	ble _080538E0
	b _08053B04
_080538E0:
	movs r0, #0x80
	lsls r0, r0, #0xb
	cmp r6, r0
	bne _080538EA
	b _08053BC8
_080538EA:
	b _08053BD4
	.align 2, 0
_080538EC: .4byte 0x000A0007
_080538F0: .4byte 0x00050002
_080538F4:
	ldr r0, _0805390C @ =0x00060001
	cmp r6, r0
	bne _080538FC
	b _08053B64
_080538FC:
	cmp r6, r0
	bgt _08053910
	subs r0, #1
	cmp r6, r0
	bne _08053908
	b _08053B4C
_08053908:
	b _08053BD4
	.align 2, 0
_0805390C: .4byte 0x00060001
_08053910:
	movs r0, #0x80
	lsls r0, r0, #0xc
	cmp r6, r0
	bne _0805391A
	b _08053B7C
_0805391A:
	b _08053BD4
_0805391C:
	ldr r0, _08053940 @ =0x000A0003
	cmp r6, r0
	bne _08053924
	b _08053B2C
_08053924:
	cmp r6, r0
	bgt _08053944
	subs r0, #2
	cmp r6, r0
	bne _08053930
	b _08053B1C
_08053930:
	cmp r6, r0
	ble _08053936
	b _08053B24
_08053936:
	subs r0, #1
	cmp r6, r0
	bne _0805393E
	b _08053B14
_0805393E:
	b _08053BD4
	.align 2, 0
_08053940: .4byte 0x000A0003
_08053944:
	ldr r0, _08053958 @ =0x000A0005
	cmp r6, r0
	bne _0805394C
	b _08053B34
_0805394C:
	cmp r6, r0
	ble _08053952
	b _08053B3C
_08053952:
	ldr r0, _0805395C @ =_080F0348
	b _08053BDA
	.align 2, 0
_08053958: .4byte 0x000A0005
_0805395C: .4byte _080F0348
_08053960:
	ldr r0, _0805398C @ =0x000C0007
	cmp r6, r0
	bne _08053968
	b _08053AB0
_08053968:
	cmp r6, r0
	bgt _080539B8
	subs r0, #4
	cmp r6, r0
	bne _08053974
	b _08053A68
_08053974:
	cmp r6, r0
	bgt _08053990
	subs r0, #2
	cmp r6, r0
	beq _08053A38
	cmp r6, r0
	bgt _08053A50
	subs r0, #1
	cmp r6, r0
	beq _08053A1E
	b _08053BD4
	.align 2, 0
_0805398C: .4byte 0x000C0007
_08053990:
	ldr r0, _080539B0 @ =0x000C0005
	cmp r6, r0
	beq _08053A80
	cmp r6, r0
	ble _0805399C
	b _08053A98
_0805399C:
	adds r0, r5, #0
	adds r0, #0x56
	mov r3, r8
	strh r3, [r0]
	adds r0, #2
	strh r3, [r0]
	mov r0, sb
	strh r0, [r5, #0x10]
	ldr r0, _080539B4 @ =_080F0508
	b _08053BDA
	.align 2, 0
_080539B0: .4byte 0x000C0005
_080539B4: .4byte _080F0508
_080539B8:
	ldr r0, _080539E8 @ =0x000C000B
	cmp r6, r0
	bne _080539C0
	b _08053AF4
_080539C0:
	cmp r6, r0
	bgt _080539F0
	subs r0, #2
	cmp r6, r0
	bne _080539CC
	b _08053AC2
_080539CC:
	cmp r6, r0
	ble _080539D2
	b _08053ADC
_080539D2:
	adds r0, r5, #0
	adds r0, #0x56
	mov r1, r8
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	mov r2, sb
	strh r2, [r5, #0x10]
	ldr r0, _080539EC @ =_080F0D48
	b _08053BDA
	.align 2, 0
_080539E8: .4byte 0x000C000B
_080539EC: .4byte _080F0D48
_080539F0:
	movs r0, #0x86
	lsls r0, r0, #0x10
	cmp r6, r0
	bne _080539FA
	b _08053BB4
_080539FA:
	cmp r6, r0
	bgt _08053A0A
	movs r0, #0xe0
	lsls r0, r0, #0xc
	cmp r6, r0
	bne _08053A08
	b _08053BBC
_08053A08:
	b _08053BD4
_08053A0A:
	movs r0, #0x98
	lsls r0, r0, #0x10
	cmp r6, r0
	bne _08053A14
	b _08053B9C
_08053A14:
	adds r0, #1
	cmp r6, r0
	bne _08053A1C
	b _08053BA8
_08053A1C:
	b _08053BD4
_08053A1E:
	adds r0, r5, #0
	adds r0, #0x56
	mov r3, r8
	strh r3, [r0]
	adds r0, #2
	strh r3, [r0]
	mov r0, sb
	strh r0, [r5, #0x10]
	ldr r0, _08053A34 @ =_080F09E8
	b _08053BDA
	.align 2, 0
_08053A34: .4byte _080F09E8
_08053A38:
	adds r0, r5, #0
	adds r0, #0x56
	mov r1, r8
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	mov r2, sb
	strh r2, [r5, #0x10]
	ldr r0, _08053A4C @ =_080F0148
	b _08053BDA
	.align 2, 0
_08053A4C: .4byte _080F0148
_08053A50:
	adds r0, r5, #0
	adds r0, #0x56
	mov r3, r8
	strh r3, [r0]
	adds r0, #2
	strh r3, [r0]
	mov r0, sb
	strh r0, [r5, #0x10]
	ldr r0, _08053A64 @ =_080F04E8
	b _08053BDA
	.align 2, 0
_08053A64: .4byte _080F04E8
_08053A68:
	adds r0, r5, #0
	adds r0, #0x56
	mov r1, r8
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	mov r2, sb
	strh r2, [r5, #0x10]
	ldr r0, _08053A7C @ =_080EFDE8
	b _08053BDA
	.align 2, 0
_08053A7C: .4byte _080EFDE8
_08053A80:
	adds r0, r5, #0
	adds r0, #0x56
	mov r3, r8
	strh r3, [r0]
	adds r0, #2
	strh r3, [r0]
	mov r0, sb
	strh r0, [r5, #0x10]
	ldr r0, _08053A94 @ =_080F0168
	b _08053BDA
	.align 2, 0
_08053A94: .4byte _080F0168
_08053A98:
	adds r0, r5, #0
	adds r0, #0x56
	mov r1, r8
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	mov r2, sb
	strh r2, [r5, #0x10]
	ldr r0, _08053AAC @ =_080F0188
	b _08053BDA
	.align 2, 0
_08053AAC: .4byte _080F0188
_08053AB0:
	adds r0, r5, #0
	adds r0, #0x56
	mov r3, r8
	strh r3, [r0]
	adds r0, #2
	strh r3, [r0]
	mov r0, sb
	strh r0, [r5, #0x10]
	b _08053BD8
_08053AC2:
	adds r0, r5, #0
	adds r0, #0x56
	mov r1, r8
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	mov r2, sb
	strh r2, [r5, #0x10]
	ldr r0, _08053AD8 @ =_080F0DC8
	b _08053BDA
	.align 2, 0
_08053AD8: .4byte _080F0DC8
_08053ADC:
	adds r0, r5, #0
	adds r0, #0x56
	mov r3, r8
	strh r3, [r0]
	adds r0, #2
	strh r3, [r0]
	mov r0, sb
	strh r0, [r5, #0x10]
	ldr r0, _08053AF0 @ =_080F0E08
	b _08053BDA
	.align 2, 0
_08053AF0: .4byte _080F0E08
_08053AF4:
	ldr r0, _08053AF8 @ =_080F0448
	b _08053BDA
	.align 2, 0
_08053AF8: .4byte _080F0448
_08053AFC:
	ldr r0, _08053B00 @ =_080F0208
	b _08053BDA
	.align 2, 0
_08053B00: .4byte _080F0208
_08053B04:
	ldr r0, _08053B08 @ =_080F0228
	b _08053BDA
	.align 2, 0
_08053B08: .4byte _080F0228
_08053B0C:
	ldr r0, _08053B10 @ =_080F0248
	b _08053BDA
	.align 2, 0
_08053B10: .4byte _080F0248
_08053B14:
	ldr r0, _08053B18 @ =_080F02C8
	b _08053BDA
	.align 2, 0
_08053B18: .4byte _080F02C8
_08053B1C:
	ldr r0, _08053B20 @ =_080F02E8
	b _08053BDA
	.align 2, 0
_08053B20: .4byte _080F02E8
_08053B24:
	ldr r0, _08053B28 @ =_080F0308
	b _08053BDA
	.align 2, 0
_08053B28: .4byte _080F0308
_08053B2C:
	ldr r0, _08053B30 @ =_080F0328
	b _08053BDA
	.align 2, 0
_08053B30: .4byte _080F0328
_08053B34:
	ldr r0, _08053B38 @ =_080F0368
	b _08053BDA
	.align 2, 0
_08053B38: .4byte _080F0368
_08053B3C:
	ldr r0, _08053B40 @ =_080F0388
	b _08053BDA
	.align 2, 0
_08053B40: .4byte _080F0388
_08053B44:
	ldr r0, _08053B48 @ =_080F03A8
	b _08053BDA
	.align 2, 0
_08053B48: .4byte _080F03A8
_08053B4C:
	movs r0, #0xb8
	adds r1, r5, #0
	adds r1, #0x56
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	mov r1, sb
	strh r1, [r5, #0x10]
	ldr r0, _08053B60 @ =_080F03C8
	b _08053BDA
	.align 2, 0
_08053B60: .4byte _080F03C8
_08053B64:
	movs r0, #0xb8
	adds r1, r5, #0
	adds r1, #0x56
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	mov r2, sb
	strh r2, [r5, #0x10]
	ldr r0, _08053B78 @ =_080F03E8
	b _08053BDA
	.align 2, 0
_08053B78: .4byte _080F03E8
_08053B7C:
	ldrh r0, [r5, #0x34]
	movs r1, #2
	orrs r1, r0
	strh r1, [r5, #0x34]
	ldr r0, _08053B88 @ =_080F04A8
	b _08053BDA
	.align 2, 0
_08053B88: .4byte _080F04A8
_08053B8C:
	ldrh r0, [r5, #0x34]
	movs r1, #2
	orrs r1, r0
	strh r1, [r5, #0x34]
	ldr r0, _08053B98 @ =_080F04C8
	b _08053BDA
	.align 2, 0
_08053B98: .4byte _080F04C8
_08053B9C:
	mov r3, sb
	strh r3, [r5, #0x10]
	ldr r0, _08053BA4 @ =_080F0AA8
	b _08053BDA
	.align 2, 0
_08053BA4: .4byte _080F0AA8
_08053BA8:
	mov r0, sb
	strh r0, [r5, #0x10]
	ldr r0, _08053BB0 @ =_080F0AC8
	b _08053BDA
	.align 2, 0
_08053BB0: .4byte _080F0AC8
_08053BB4:
	adds r0, r5, #0
	bl sub_8056170
	b _08053D64
_08053BBC:
	mov r1, sb
	strh r1, [r5, #0x10]
	ldr r0, _08053BC4 @ =_080F0FC8
	b _08053BDA
	.align 2, 0
_08053BC4: .4byte _080F0FC8
_08053BC8:
	mov r2, sb
	strh r2, [r5, #0x10]
	ldr r0, _08053BD0 @ =_080F0FA8
	b _08053BDA
	.align 2, 0
_08053BD0: .4byte _080F0FA8
_08053BD4:
	mov r3, sb
	strh r3, [r5, #0x10]
_08053BD8:
	ldr r0, _08053BE4 @ =_080F01A8
_08053BDA:
	str r0, [r5, #0x4c]
	adds r0, r5, #0
	bl sub_8059E80
	b _08053D64
	.align 2, 0
_08053BE4: .4byte _080F01A8
_08053BE8:
	ldr r0, [r5, #8]
	ldr r1, _08053BFC @ =0xFFF80000
	adds r0, r0, r1
	str r0, [r5, #8]
	ldr r0, _08053C00 @ =0x00010001
	cmp r6, r0
	bne _08053C08
	ldr r0, _08053C04 @ =_080F06C8
	b _08053D62
	.align 2, 0
_08053BFC: .4byte 0xFFF80000
_08053C00: .4byte 0x00010001
_08053C04: .4byte _080F06C8
_08053C08:
	ldr r0, _08053C0C @ =_080F06A8
	b _08053D62
	.align 2, 0
_08053C0C: .4byte _080F06A8
_08053C10:
	ldr r0, _08053C14 @ =_080F0488
	b _08053D62
	.align 2, 0
_08053C14: .4byte _080F0488
_08053C18:
	adds r0, r5, #0
	bl sub_8058A74
	b _08053D64
_08053C20:
	cmp r6, r1
	bne _08053C30
	mov r2, sb
	strh r2, [r5, #0x10]
	ldr r0, _08053C2C @ =_080F0408
	b _08053D62
	.align 2, 0
_08053C2C: .4byte _080F0408
_08053C30:
	ldr r0, _08053C34 @ =_080F0428
	b _08053D62
	.align 2, 0
_08053C34: .4byte _080F0428
_08053C38:
	ldr r0, _08053C3C @ =_080F0468
	b _08053D62
	.align 2, 0
_08053C3C: .4byte _080F0468
_08053C40:
	ldr r1, [r5, #0x50]
	adds r0, r5, #0
	bl sub_805631C
	b _08053D64
_08053C4A:
	ldr r1, [r5, #0x50]
	adds r0, r5, #0
	bl sub_805631C
	ldr r0, _08053C58 @ =_080F0008
	b _08053D62
	.align 2, 0
_08053C58: .4byte _080F0008
_08053C5C:
	adds r0, r5, #0
	bl sub_8053EF4
	b _08053D64
_08053C64:
	ldr r1, [r5, #0x50]
	adds r0, r5, #0
	bl sub_8055D70
	b _08053D64
_08053C6E:
	adds r0, r5, #0
	bl sub_8056908
	b _08053D64
_08053C76:
	ldr r1, [r5, #0x50]
	adds r0, r5, #0
	bl sub_80563D4
	b _08053D64
_08053C80:
	ldr r0, _08053C84 @ =_080EFE48
	b _08053D62
	.align 2, 0
_08053C84: .4byte _080EFE48
_08053C88:
	adds r0, r5, #0
	bl sub_8056C00
	b _08053D64
_08053C90:
	adds r0, r5, #0
	bl sub_805699C
	b _08053D64
_08053C98:
	adds r0, r5, #0
	bl sub_8057074
	ldr r0, _08053CA4 @ =_080F0588
	b _08053D62
	.align 2, 0
_08053CA4: .4byte _080F0588
_08053CA8:
	ldr r0, _08053CAC @ =_080EFE48
	b _08053D62
	.align 2, 0
_08053CAC: .4byte _080EFE48
_08053CB0:
	adds r0, r5, #0
	bl sub_8056EE8
	b _08053D64
_08053CB8:
	adds r0, r5, #0
	bl sub_8058408
	b _08053D64
_08053CC0:
	adds r0, r5, #0
	bl sub_8057808
	b _08053D64
_08053CC8:
	ldr r0, _08053CCC @ =_080EFE48
	b _08053D62
	.align 2, 0
_08053CCC: .4byte _080EFE48
_08053CD0:
	adds r0, r5, #0
	bl sub_805674C
	b _08053D64
_08053CD8:
	adds r0, r5, #0
	bl sub_8057E28
	b _08053D64
_08053CE0:
	adds r0, r5, #0
	bl sub_8057364
	ldr r0, _08053CEC @ =_080F0528
	b _08053D62
	.align 2, 0
_08053CEC: .4byte _080F0528
_08053CF0:
	adds r0, r5, #0
	bl sub_80572A4
	b _08053D64
_08053CF8:
	adds r0, r5, #0
	bl sub_8057594
	b _08053D64
_08053D00:
	adds r0, r5, #0
	bl sub_8057B04
	b _08053D64
_08053D08:
	adds r0, r5, #0
	bl sub_80580EC
	b _08053D64
_08053D10:
	ldr r0, _08053D14 @ =_080F0BC8
	b _08053D62
	.align 2, 0
_08053D14: .4byte _080F0BC8
_08053D18:
	ldr r0, _08053D1C @ =_080F0BE8
	b _08053D62
	.align 2, 0
_08053D1C: .4byte _080F0BE8
_08053D20:
	adds r0, r5, #0
	bl sub_80588AC
	b _08053D64
_08053D28:
	adds r0, r5, #0
	bl sub_805892C
	b _08053D64
_08053D30:
	adds r0, r5, #0
	bl sub_8059004
	b _08053D64
_08053D38:
	adds r0, r5, #0
	bl sub_805919C
	b _08053D64
_08053D40:
	adds r0, r5, #0
	bl sub_80592E4
	b _08053D64
_08053D48:
	adds r0, r5, #0
	bl sub_8059710
	b _08053D64
_08053D50:
	adds r0, r5, #0
	bl sub_8059938
	b _08053D64
_08053D58:
	adds r0, r5, #0
	bl sub_8059E98
	b _08053D64
_08053D60:
	ldr r0, _08053D70 @ =_080EFE88
_08053D62:
	str r0, [r5, #0x4c]
_08053D64:
	ldrb r0, [r7]
	cmp r0, #0
	beq _08053D6E
	bl sub_08053464
_08053D6E:
	b _08053D86
	.align 2, 0
_08053D70: .4byte _080EFE88

	thumb_func_start sub_8053D74
sub_8053D74: @ 0x08053D74
	ldr r3, [sp, #4]
	ldr r1, _08053D98 @ =0x000006EC
	adds r0, r3, r1
	movs r2, #0xdc
	lsls r2, r2, #3
	adds r1, r3, r2
	movs r2, #0
	bl sub_804F824
_08053D86:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08053D98: .4byte 0x000006EC

	thumb_func_start sub_8053D9C
sub_8053D9C: @ 0x08053D9C
	push {r4, lr}
	ldr r1, _08053DC0 @ =0x000006EC
	adds r0, r0, r1
	ldr r4, [r0, #8]
	cmp r4, #0
	beq _08053DBA
_08053DA8:
	ldr r1, [r4, #0x5c]
	cmp r1, #0
	beq _08053DB4
	adds r0, r4, #0
	bl _call_via_r1
_08053DB4:
	ldr r4, [r4, #0x3c]
	cmp r4, #0
	bne _08053DA8
_08053DBA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08053DC0: .4byte 0x000006EC

	thumb_func_start sub_8053DC4
sub_8053DC4: @ 0x08053DC4
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, _08053DE0 @ =_080F1010
	subs r0, #4
	cmp r0, #0x18
	bls _08053DD4
	b _08053ED4
_08053DD4:
	lsls r0, r0, #2
	ldr r1, _08053DE4 @ =_08053DE8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08053DE0: .4byte _080F1010
_08053DE4: .4byte _08053DE8
_08053DE8: @ jump table
	.4byte _08053E4C @ case 0
	.4byte _08053E54 @ case 1
	.4byte _08053E5C @ case 2
	.4byte _08053EBC @ case 3
	.4byte _08053E64 @ case 4
	.4byte _08053E6C @ case 5
	.4byte _08053E74 @ case 6
	.4byte _08053EBC @ case 7
	.4byte _08053E7C @ case 8
	.4byte _08053E84 @ case 9
	.4byte _08053E8C @ case 10
	.4byte _08053EBC @ case 11
	.4byte _08053E94 @ case 12
	.4byte _08053E9C @ case 13
	.4byte _08053EA4 @ case 14
	.4byte _08053EAC @ case 15
	.4byte _08053EB4 @ case 16
	.4byte _08053EC4 @ case 17
	.4byte _08053EBC @ case 18
	.4byte _08053ECC @ case 19
	.4byte _08053ED4 @ case 20
	.4byte _08053EBC @ case 21
	.4byte _08053E74 @ case 22
	.4byte _08053ED4 @ case 23
	.4byte _08053E4C @ case 24
_08053E4C:
	ldr r1, _08053E50 @ =_080F1054
	b _08053ED6
	.align 2, 0
_08053E50: .4byte _080F1054
_08053E54:
	ldr r1, _08053E58 @ =_080F1060
	b _08053ED6
	.align 2, 0
_08053E58: .4byte _080F1060
_08053E5C:
	ldr r1, _08053E60 @ =_080F1088
	b _08053ED6
	.align 2, 0
_08053E60: .4byte _080F1088
_08053E64:
	ldr r1, _08053E68 @ =_080F1118
	b _08053ED6
	.align 2, 0
_08053E68: .4byte _080F1118
_08053E6C:
	ldr r1, _08053E70 @ =_080F1130
	b _08053ED6
	.align 2, 0
_08053E70: .4byte _080F1130
_08053E74:
	ldr r1, _08053E78 @ =_080F1154
	b _08053ED6
	.align 2, 0
_08053E78: .4byte _080F1154
_08053E7C:
	ldr r1, _08053E80 @ =_080F1174
	b _08053ED6
	.align 2, 0
_08053E80: .4byte _080F1174
_08053E84:
	ldr r1, _08053E88 @ =_080F1188
	b _08053ED6
	.align 2, 0
_08053E88: .4byte _080F1188
_08053E8C:
	ldr r1, _08053E90 @ =_080F11A0
	b _08053ED6
	.align 2, 0
_08053E90: .4byte _080F11A0
_08053E94:
	ldr r1, _08053E98 @ =_080F11C0
	b _08053ED6
	.align 2, 0
_08053E98: .4byte _080F11C0
_08053E9C:
	ldr r1, _08053EA0 @ =_080F11D8
	b _08053ED6
	.align 2, 0
_08053EA0: .4byte _080F11D8
_08053EA4:
	ldr r1, _08053EA8 @ =_080F1204
	b _08053ED6
	.align 2, 0
_08053EA8: .4byte _080F1204
_08053EAC:
	ldr r1, _08053EB0 @ =_080F1228
	b _08053ED6
	.align 2, 0
_08053EB0: .4byte _080F1228
_08053EB4:
	ldr r1, _08053EB8 @ =_080F125C
	b _08053ED6
	.align 2, 0
_08053EB8: .4byte _080F125C
_08053EBC:
	ldr r1, _08053EC0 @ =_080F10A0
	b _08053ED6
	.align 2, 0
_08053EC0: .4byte _080F10A0
_08053EC4:
	ldr r1, _08053EC8 @ =_080F11EC
	b _08053ED6
	.align 2, 0
_08053EC8: .4byte _080F11EC
_08053ECC:
	ldr r1, _08053ED0 @ =_080F126C
	b _08053ED6
	.align 2, 0
_08053ED0: .4byte _080F126C
_08053ED4:
	ldr r1, _08053EE0 @ =_080F1008
_08053ED6:
	cmp r2, #0x7f
	bgt _08053EE4
	lsls r0, r2, #2
	b _08053EEA
	.align 2, 0
_08053EE0: .4byte _080F1008
_08053EE4:
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r1, _08053EF0 @ =0xFFFFFE00
_08053EEA:
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08053EF0: .4byte 0xFFFFFE00

	thumb_func_start sub_8053EF4
sub_8053EF4: @ 0x08053EF4
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	ldr r0, _08053F34 @ =0x00001002
	movs r2, #0
	strh r0, [r3, #0x10]
	movs r0, #0x14
	strb r0, [r3, #0xe]
	strb r0, [r3, #0xd]
	strb r0, [r3, #0xc]
	ldr r0, _08053F38 @ =sub_80540A0
	str r0, [r3, #0x5c]
	ldr r0, _08053F3C @ =_080EFEE8
	str r0, [r3, #0x4c]
	ldr r0, _08053F40 @ =sub_8055AE8
	str r0, [r3, #0x18]
	ldrh r1, [r3, #0x34]
	movs r0, #2
	orrs r0, r1
	strh r0, [r3, #0x34]
	str r2, [r3, #0x60]
	ldr r0, [r3, #0x50]
	ldr r1, _08053F44 @ =0xFF7EFFFF
	adds r0, r0, r1
	cmp r0, #0xa
	bls _08053F2A
	b _08054094
_08053F2A:
	lsls r0, r0, #2
	ldr r1, _08053F48 @ =_08053F4C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08053F34: .4byte 0x00001002
_08053F38: .4byte sub_80540A0
_08053F3C: .4byte _080EFEE8
_08053F40: .4byte sub_8055AE8
_08053F44: .4byte 0xFF7EFFFF
_08053F48: .4byte _08053F4C
_08053F4C: @ jump table
	.4byte _08053F78 @ case 0
	.4byte _08053F7C @ case 1
	.4byte _08053F80 @ case 2
	.4byte _08053F84 @ case 3
	.4byte _08053FAC @ case 4
	.4byte _08053FD8 @ case 5
	.4byte _08053FF0 @ case 6
	.4byte _08054018 @ case 7
	.4byte _08054030 @ case 8
	.4byte _08054058 @ case 9
	.4byte _08054070 @ case 10
_08053F78:
	movs r0, #0x21
	b _08054096
_08053F7C:
	movs r0, #0x41
	b _08054096
_08053F80:
	movs r0, #0x61
	b _08054096
_08053F84:
	movs r1, #0
	str r1, [r3, #0x64]
	ldr r0, _08053F9C @ =sub_805442C
	str r0, [r3, #0x5c]
	ldr r0, _08053FA0 @ =sub_8055B54
	str r0, [r4, #0x18]
	str r1, [r3, #0x60]
	ldr r0, _08053FA4 @ =0xFFFD2AAB
	str r0, [r4, #0x28]
	ldr r0, _08053FA8 @ =0x0002D555
	str r0, [r4, #0x2c]
	b _08054098
	.align 2, 0
_08053F9C: .4byte sub_805442C
_08053FA0: .4byte sub_8055B54
_08053FA4: .4byte 0xFFFD2AAB
_08053FA8: .4byte 0x0002D555
_08053FAC:
	movs r0, #0
	str r0, [r3, #0x64]
	ldr r0, _08053FC8 @ =sub_805442C
	str r0, [r3, #0x5c]
	ldr r0, _08053FCC @ =sub_8055B54
	str r0, [r4, #0x18]
	movs r0, #0x10
	str r0, [r3, #0x60]
	ldr r0, _08053FD0 @ =0x0002D555
	str r0, [r4, #0x28]
	ldr r0, _08053FD4 @ =0xFFFD2AAB
	str r0, [r4, #0x2c]
	b _08054098
	.align 2, 0
_08053FC8: .4byte sub_805442C
_08053FCC: .4byte sub_8055B54
_08053FD0: .4byte 0x0002D555
_08053FD4: .4byte 0xFFFD2AAB
_08053FD8:
	movs r0, #0x20
	str r0, [r3, #0x64]
	ldr r0, _08053FE8 @ =sub_8054888
	str r0, [r3, #0x5c]
	ldr r0, _08053FEC @ =sub_8055BC0
	str r0, [r4, #0x18]
	movs r0, #0
	b _08053FFE
	.align 2, 0
_08053FE8: .4byte sub_8054888
_08053FEC: .4byte sub_8055BC0
_08053FF0:
	movs r0, #0x38
	str r0, [r3, #0x64]
	ldr r0, _0805400C @ =sub_8054D50
	str r0, [r3, #0x5c]
	ldr r0, _08054010 @ =sub_8055C2C
	str r0, [r4, #0x18]
	movs r0, #0x12
_08053FFE:
	str r0, [r3, #0x60]
	ldr r0, _08054014 @ =0xFFFE0000
	str r0, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x2c]
	b _08054098
	.align 2, 0
_0805400C: .4byte sub_8054D50
_08054010: .4byte sub_8055C2C
_08054014: .4byte 0xFFFE0000
_08054018:
	movs r1, #0
	str r1, [r3, #0x64]
	ldr r0, _08054028 @ =sub_8054D50
	str r0, [r3, #0x5c]
	ldr r0, _0805402C @ =sub_8055C2C
	str r0, [r4, #0x18]
	str r1, [r3, #0x60]
	b _08054040
	.align 2, 0
_08054028: .4byte sub_8054D50
_0805402C: .4byte sub_8055C2C
_08054030:
	movs r0, #0x50
	str r0, [r3, #0x64]
	ldr r0, _0805404C @ =sub_8054888
	str r0, [r3, #0x5c]
	ldr r0, _08054050 @ =sub_8055BC0
	str r0, [r4, #0x18]
	movs r0, #0x24
	str r0, [r3, #0x60]
_08054040:
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r4, #0x28]
	ldr r0, _08054054 @ =0xFFFE0000
	str r0, [r4, #0x2c]
	b _08054098
	.align 2, 0
_0805404C: .4byte sub_8054888
_08054050: .4byte sub_8055BC0
_08054054: .4byte 0xFFFE0000
_08054058:
	movs r0, #0
	str r0, [r3, #0x64]
	ldr r0, _08054068 @ =sub_80551D0
	str r0, [r3, #0x5c]
	ldr r0, _0805406C @ =sub_8055C98
	str r0, [r4, #0x18]
	movs r0, #9
	b _0805407E
	.align 2, 0
_08054068: .4byte sub_80551D0
_0805406C: .4byte sub_8055C98
_08054070:
	movs r0, #0
	str r0, [r3, #0x64]
	ldr r0, _08054088 @ =sub_805563C
	str r0, [r3, #0x5c]
	ldr r0, _0805408C @ =sub_8055D04
	str r0, [r4, #0x18]
	movs r0, #0x24
_0805407E:
	str r0, [r3, #0x60]
	ldr r0, _08054090 @ =0xFFFE5556
	str r0, [r4, #0x28]
	b _08054098
	.align 2, 0
_08054088: .4byte sub_805563C
_0805408C: .4byte sub_8055D04
_08054090: .4byte 0xFFFE5556
_08054094:
	movs r0, #1
_08054096:
	str r0, [r3, #0x64]
_08054098:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80540A0
sub_80540A0: @ 0x080540A0
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	ldr r0, [r3, #0x64]
	subs r0, #1
	str r0, [r3, #0x64]
	adds r2, r0, #0
	ldr r0, [r3, #0x60]
	cmp r0, #7
	bls _080540B6
	b _0805441C
_080540B6:
	lsls r0, r0, #2
	ldr r1, _080540C0 @ =_080540C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080540C0: .4byte _080540C4
_080540C4: @ jump table
	.4byte _080541BE @ case 0
	.4byte _080540E4 @ case 1
	.4byte _080541AA @ case 2
	.4byte _080541BE @ case 3
	.4byte _080541D0 @ case 4
	.4byte _0805429C @ case 5
	.4byte _0805433C @ case 6
	.4byte _080543E8 @ case 7
_080540E4:
	cmp r2, #0x23
	bhi _0805418E
	lsls r0, r2, #2
	ldr r1, _080540F4 @ =_080540F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080540F4: .4byte _080540F8
_080540F8: @ jump table
	.4byte _0805418E @ case 0
	.4byte _0805418E @ case 1
	.4byte _0805418E @ case 2
	.4byte _0805418E @ case 3
	.4byte _08054188 @ case 4
	.4byte _08054188 @ case 5
	.4byte _08054188 @ case 6
	.4byte _08054188 @ case 7
	.4byte _0805418E @ case 8
	.4byte _0805418E @ case 9
	.4byte _0805418E @ case 10
	.4byte _0805418E @ case 11
	.4byte _08054188 @ case 12
	.4byte _08054188 @ case 13
	.4byte _08054188 @ case 14
	.4byte _08054188 @ case 15
	.4byte _0805418E @ case 16
	.4byte _0805418E @ case 17
	.4byte _0805418E @ case 18
	.4byte _0805418E @ case 19
	.4byte _0805418E @ case 20
	.4byte _0805418E @ case 21
	.4byte _08054188 @ case 22
	.4byte _08054188 @ case 23
	.4byte _08054188 @ case 24
	.4byte _08054188 @ case 25
	.4byte _08054188 @ case 26
	.4byte _08054188 @ case 27
	.4byte _0805418E @ case 28
	.4byte _0805418E @ case 29
	.4byte _0805418E @ case 30
	.4byte _0805418E @ case 31
	.4byte _0805418E @ case 32
	.4byte _0805418E @ case 33
	.4byte _0805418E @ case 34
	.4byte _0805418E @ case 35
_08054188:
	movs r0, #0x80
	lsls r0, r0, #8
	b _08054190
_0805418E:
	movs r0, #0
_08054190:
	str r0, [r4, #8]
	cmp r2, #0
	ble _08054198
	b _0805441C
_08054198:
	ldr r0, [r3, #0x60]
	adds r0, #1
	str r0, [r3, #0x60]
	movs r0, #0x40
	str r0, [r3, #0x64]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r3, #0x30]
	b _0805441C
_080541AA:
	movs r0, #0x40
	subs r0, r0, r2
	lsls r0, r0, #0xf
	str r0, [r4, #8]
	cmp r2, #0
	ble _080541B8
	b _0805441C
_080541B8:
	ldr r0, [r3, #0x60]
	adds r0, #1
	b _080543E0
_080541BE:
	cmp r2, #0
	ble _080541C4
	b _0805441C
_080541C4:
	ldr r0, [r3, #0x60]
	adds r0, #1
	str r0, [r3, #0x60]
	movs r0, #0x24
	str r0, [r3, #0x64]
	b _0805441C
_080541D0:
	cmp r2, #0x23
	bhi _0805427A
	lsls r0, r2, #2
	ldr r1, _080541E0 @ =_080541E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080541E0: .4byte _080541E4
_080541E4: @ jump table
	.4byte _0805427A @ case 0
	.4byte _0805427A @ case 1
	.4byte _0805427A @ case 2
	.4byte _0805427A @ case 3
	.4byte _08054274 @ case 4
	.4byte _08054274 @ case 5
	.4byte _08054274 @ case 6
	.4byte _08054274 @ case 7
	.4byte _0805427A @ case 8
	.4byte _0805427A @ case 9
	.4byte _0805427A @ case 10
	.4byte _0805427A @ case 11
	.4byte _08054274 @ case 12
	.4byte _08054274 @ case 13
	.4byte _08054274 @ case 14
	.4byte _08054274 @ case 15
	.4byte _0805427A @ case 16
	.4byte _0805427A @ case 17
	.4byte _0805427A @ case 18
	.4byte _0805427A @ case 19
	.4byte _0805427A @ case 20
	.4byte _0805427A @ case 21
	.4byte _08054274 @ case 22
	.4byte _08054274 @ case 23
	.4byte _08054274 @ case 24
	.4byte _08054274 @ case 25
	.4byte _08054274 @ case 26
	.4byte _08054274 @ case 27
	.4byte _0805427A @ case 28
	.4byte _0805427A @ case 29
	.4byte _0805427A @ case 30
	.4byte _0805427A @ case 31
	.4byte _0805427A @ case 32
	.4byte _0805427A @ case 33
	.4byte _0805427A @ case 34
	.4byte _0805427A @ case 35
_08054274:
	movs r0, #0x82
	lsls r0, r0, #0xe
	b _0805427E
_0805427A:
	movs r0, #0x80
	lsls r0, r0, #0xe
_0805427E:
	str r0, [r4, #8]
	cmp r2, #0
	ble _08054286
	b _0805441C
_08054286:
	ldr r0, [r3, #0x60]
	adds r0, #1
	str r0, [r3, #0x60]
	movs r0, #8
	str r0, [r3, #0x64]
	ldr r0, _08054298 @ =0xFFFC0000
	str r0, [r3, #0x30]
	b _0805441C
	.align 2, 0
_08054298: .4byte 0xFFFC0000
_0805429C:
	lsls r0, r2, #0x12
	str r0, [r4, #8]
	cmp r2, #0
	ble _080542A6
	b _0805441C
_080542A6:
	ldr r0, [r3, #0x60]
	adds r0, #1
	str r0, [r3, #0x60]
	movs r1, #0x20
	str r1, [r3, #0x64]
	movs r0, #0
	str r0, [r3, #0x30]
	ldr r2, _08054328 @ =0x03002E20
	adds r3, r2, #0
	adds r3, #0x24
	ldr r5, _0805432C @ =0x00000838
	adds r0, r2, r5
	ldr r0, [r0]
	ldr r0, [r0, #0x48]
	ands r0, r1
	cmp r0, #0
	beq _080542CA
	b _0805441C
_080542CA:
	ldr r1, _08054330 @ =0x00000C84
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080542D6
	b _0805441C
_080542D6:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_804CD28
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x18
	bgt _080542E8
	b _0805441C
_080542E8:
	adds r6, r2, #0
	cmp r6, #0
	bne _080542F0
	b _0805441C
_080542F0:
	movs r0, #0xc0
	lsls r0, r0, #1
	bl m4aSongNumStart
	ldr r5, _08054334 @ =gMPlayTable
	ldr r4, _08054338 @ =gSongTable
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r4, r4, r2
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
	b _0805441C
	.align 2, 0
_08054328: .4byte 0x03002E20
_0805432C: .4byte 0x00000838
_08054330: .4byte 0x00000C84
_08054334: .4byte gMPlayTable
_08054338: .4byte gSongTable
_0805433C:
	cmp r2, #0x1f
	bhi _080543D6
	lsls r0, r2, #2
	ldr r1, _0805434C @ =_08054350
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805434C: .4byte _08054350
_08054350: @ jump table
	.4byte _080543D6 @ case 0
	.4byte _080543D6 @ case 1
	.4byte _080543D6 @ case 2
	.4byte _080543D6 @ case 3
	.4byte _080543D0 @ case 4
	.4byte _080543D0 @ case 5
	.4byte _080543D0 @ case 6
	.4byte _080543D0 @ case 7
	.4byte _080543D6 @ case 8
	.4byte _080543D6 @ case 9
	.4byte _080543D6 @ case 10
	.4byte _080543D6 @ case 11
	.4byte _080543D0 @ case 12
	.4byte _080543D0 @ case 13
	.4byte _080543D0 @ case 14
	.4byte _080543D0 @ case 15
	.4byte _080543D6 @ case 16
	.4byte _080543D6 @ case 17
	.4byte _080543D6 @ case 18
	.4byte _080543D6 @ case 19
	.4byte _080543D0 @ case 20
	.4byte _080543D0 @ case 21
	.4byte _080543D0 @ case 22
	.4byte _080543D0 @ case 23
	.4byte _080543D6 @ case 24
	.4byte _080543D6 @ case 25
	.4byte _080543D6 @ case 26
	.4byte _080543D6 @ case 27
	.4byte _080543D0 @ case 28
	.4byte _080543D0 @ case 29
	.4byte _080543D0 @ case 30
	.4byte _080543D0 @ case 31
_080543D0:
	movs r0, #0x80
	lsls r0, r0, #8
	b _080543D8
_080543D6:
	movs r0, #0
_080543D8:
	str r0, [r4, #8]
	cmp r2, #0
	bgt _0805441C
	movs r0, #0
_080543E0:
	str r0, [r3, #0x60]
	movs r0, #0x20
	str r0, [r3, #0x64]
	b _0805441C
_080543E8:
	ldrh r0, [r4, #0x34]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0805441C
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r4]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x30]
	adds r1, r1, r0
	str r1, [r4, #8]
	ldr r5, _08054424 @ =0xFFFFC000
	adds r0, r0, r5
	str r0, [r4, #0x30]
	cmp r1, #0
	bgt _0805441C
	ldrh r1, [r3, #0x34]
	ldr r0, _08054428 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r3, #0x34]
_0805441C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054424: .4byte 0xFFFFC000
_08054428: .4byte 0x0000FFFE

	thumb_func_start sub_805442C
sub_805442C: @ 0x0805442C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x64]
	adds r3, r4, #0
	ldr r0, [r4, #0x60]
	cmp r0, #0x21
	bls _0805443C
	b _0805487A
_0805443C:
	lsls r0, r0, #2
	ldr r1, _08054448 @ =_0805444C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08054448: .4byte _0805444C
_0805444C: @ jump table
	.4byte _080545F2 @ case 0
	.4byte _080544D4 @ case 1
	.4byte _0805459E @ case 2
	.4byte _080545B8 @ case 3
	.4byte _080545F2 @ case 4
	.4byte _08054608 @ case 5
	.4byte _080546D8 @ case 6
	.4byte _0805477C @ case 7
	.4byte _080545F2 @ case 8
	.4byte _080544D4 @ case 9
	.4byte _0805459E @ case 10
	.4byte _080545CA @ case 11
	.4byte _080545F2 @ case 12
	.4byte _08054608 @ case 13
	.4byte _080546D8 @ case 14
	.4byte _0805477C @ case 15
	.4byte _080545F2 @ case 16
	.4byte _080544D4 @ case 17
	.4byte _0805459E @ case 18
	.4byte _080545C2 @ case 19
	.4byte _080545F2 @ case 20
	.4byte _08054608 @ case 21
	.4byte _080546D8 @ case 22
	.4byte _0805477C @ case 23
	.4byte _080545F2 @ case 24
	.4byte _080544D4 @ case 25
	.4byte _0805459E @ case 26
	.4byte _080545D4 @ case 27
	.4byte _080545F2 @ case 28
	.4byte _08054608 @ case 29
	.4byte _080546D8 @ case 30
	.4byte _0805477C @ case 31
	.4byte _0805487A @ case 32
	.4byte _08054846 @ case 33
_080544D4:
	cmp r2, #0x23
	bhi _0805457E
	lsls r0, r2, #2
	ldr r1, _080544E4 @ =_080544E8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080544E4: .4byte _080544E8
_080544E8: @ jump table
	.4byte _0805457E @ case 0
	.4byte _0805457E @ case 1
	.4byte _0805457E @ case 2
	.4byte _0805457E @ case 3
	.4byte _08054578 @ case 4
	.4byte _08054578 @ case 5
	.4byte _08054578 @ case 6
	.4byte _08054578 @ case 7
	.4byte _0805457E @ case 8
	.4byte _0805457E @ case 9
	.4byte _0805457E @ case 10
	.4byte _0805457E @ case 11
	.4byte _08054578 @ case 12
	.4byte _08054578 @ case 13
	.4byte _08054578 @ case 14
	.4byte _08054578 @ case 15
	.4byte _0805457E @ case 16
	.4byte _0805457E @ case 17
	.4byte _0805457E @ case 18
	.4byte _0805457E @ case 19
	.4byte _0805457E @ case 20
	.4byte _0805457E @ case 21
	.4byte _08054578 @ case 22
	.4byte _08054578 @ case 23
	.4byte _08054578 @ case 24
	.4byte _08054578 @ case 25
	.4byte _08054578 @ case 26
	.4byte _08054578 @ case 27
	.4byte _0805457E @ case 28
	.4byte _0805457E @ case 29
	.4byte _0805457E @ case 30
	.4byte _0805457E @ case 31
	.4byte _0805457E @ case 32
	.4byte _0805457E @ case 33
	.4byte _0805457E @ case 34
	.4byte _0805457E @ case 35
_08054578:
	movs r0, #0x80
	lsls r0, r0, #8
	b _08054580
_0805457E:
	movs r0, #0
_08054580:
	str r0, [r3, #8]
	adds r2, #1
	str r2, [r4, #0x64]
	cmp r2, #0x23
	bgt _0805458C
	b _0805487A
_0805458C:
	ldr r0, [r4, #0x60]
	adds r0, #1
	str r0, [r4, #0x60]
	movs r0, #0
	str r0, [r4, #0x64]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x30]
	b _0805487A
_0805459E:
	adds r2, #1
	str r2, [r4, #0x64]
	lsls r0, r2, #0xf
	str r0, [r3, #8]
	cmp r2, #0x3f
	bgt _080545AC
	b _0805487A
_080545AC:
	ldr r0, [r4, #0x60]
	adds r0, #1
	str r0, [r4, #0x60]
	movs r0, #0x30
	str r0, [r4, #0x64]
	b _0805487A
_080545B8:
	ldr r0, [r3]
	ldr r1, [r3, #0x28]
	adds r0, r0, r1
	str r0, [r3]
	b _080545DC
_080545C2:
	ldr r0, [r3, #4]
	ldr r1, [r3, #0x2c]
	adds r0, r0, r1
	b _080545DA
_080545CA:
	ldr r0, [r3]
	ldr r1, [r3, #0x28]
	subs r0, r0, r1
	str r0, [r3]
	b _080545DC
_080545D4:
	ldr r0, [r3, #4]
	ldr r1, [r3, #0x2c]
	subs r0, r0, r1
_080545DA:
	str r0, [r3, #4]
_080545DC:
	subs r2, #1
	str r2, [r4, #0x64]
	cmp r2, #0
	ble _080545E6
	b _0805487A
_080545E6:
	ldr r0, [r4, #0x60]
	adds r0, #1
	str r0, [r4, #0x60]
	movs r0, #0x40
	str r0, [r4, #0x64]
	b _0805487A
_080545F2:
	subs r2, #1
	str r2, [r4, #0x64]
	cmp r2, #0
	ble _080545FC
	b _0805487A
_080545FC:
	ldr r0, [r4, #0x60]
	adds r0, #1
	str r0, [r4, #0x60]
	movs r0, #0
	str r0, [r4, #0x64]
	b _0805487A
_08054608:
	cmp r2, #0x23
	bhi _080546B2
	lsls r0, r2, #2
	ldr r1, _08054618 @ =_0805461C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08054618: .4byte _0805461C
_0805461C: @ jump table
	.4byte _080546B2 @ case 0
	.4byte _080546B2 @ case 1
	.4byte _080546B2 @ case 2
	.4byte _080546B2 @ case 3
	.4byte _080546AC @ case 4
	.4byte _080546AC @ case 5
	.4byte _080546AC @ case 6
	.4byte _080546AC @ case 7
	.4byte _080546B2 @ case 8
	.4byte _080546B2 @ case 9
	.4byte _080546B2 @ case 10
	.4byte _080546B2 @ case 11
	.4byte _080546AC @ case 12
	.4byte _080546AC @ case 13
	.4byte _080546AC @ case 14
	.4byte _080546AC @ case 15
	.4byte _080546B2 @ case 16
	.4byte _080546B2 @ case 17
	.4byte _080546B2 @ case 18
	.4byte _080546B2 @ case 19
	.4byte _080546B2 @ case 20
	.4byte _080546B2 @ case 21
	.4byte _080546AC @ case 22
	.4byte _080546AC @ case 23
	.4byte _080546AC @ case 24
	.4byte _080546AC @ case 25
	.4byte _080546AC @ case 26
	.4byte _080546AC @ case 27
	.4byte _080546B2 @ case 28
	.4byte _080546B2 @ case 29
	.4byte _080546B2 @ case 30
	.4byte _080546B2 @ case 31
	.4byte _080546B2 @ case 32
	.4byte _080546B2 @ case 33
	.4byte _080546B2 @ case 34
	.4byte _080546B2 @ case 35
_080546AC:
	movs r0, #0x82
	lsls r0, r0, #0xe
	b _080546B6
_080546B2:
	movs r0, #0x80
	lsls r0, r0, #0xe
_080546B6:
	str r0, [r3, #8]
	adds r2, #1
	str r2, [r4, #0x64]
	cmp r2, #0x23
	bgt _080546C2
	b _0805487A
_080546C2:
	ldr r0, [r4, #0x60]
	adds r0, #1
	str r0, [r4, #0x60]
	movs r0, #8
	str r0, [r4, #0x64]
	ldr r0, _080546D4 @ =0xFFFC0000
	str r0, [r4, #0x30]
	b _0805487A
	.align 2, 0
_080546D4: .4byte 0xFFFC0000
_080546D8:
	subs r2, #1
	str r2, [r4, #0x64]
	lsls r0, r2, #0x12
	str r0, [r3, #8]
	cmp r2, #0
	ble _080546E6
	b _0805487A
_080546E6:
	ldr r0, [r4, #0x60]
	adds r0, #1
	str r0, [r4, #0x60]
	movs r0, #0
	str r0, [r4, #0x64]
	str r0, [r4, #0x30]
	ldr r2, _08054768 @ =0x03002E20
	adds r4, r2, #0
	adds r4, #0x24
	ldr r1, _0805476C @ =0x00000838
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0805470A
	b _0805487A
_0805470A:
	ldr r1, _08054770 @ =0x00000C84
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08054716
	b _0805487A
_08054716:
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_804CD28
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x18
	bgt _08054728
	b _0805487A
_08054728:
	adds r6, r2, #0
	cmp r6, #0
	bne _08054730
	b _0805487A
_08054730:
	movs r0, #0xc0
	lsls r0, r0, #1
	bl m4aSongNumStart
	ldr r5, _08054774 @ =gMPlayTable
	ldr r4, _08054778 @ =gSongTable
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r4, r4, r2
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
	b _0805487A
	.align 2, 0
_08054768: .4byte 0x03002E20
_0805476C: .4byte 0x00000838
_08054770: .4byte 0x00000C84
_08054774: .4byte gMPlayTable
_08054778: .4byte gSongTable
_0805477C:
	cmp r2, #0x23
	bhi _08054826
	lsls r0, r2, #2
	ldr r1, _0805478C @ =_08054790
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805478C: .4byte _08054790
_08054790: @ jump table
	.4byte _08054826 @ case 0
	.4byte _08054826 @ case 1
	.4byte _08054826 @ case 2
	.4byte _08054826 @ case 3
	.4byte _08054820 @ case 4
	.4byte _08054820 @ case 5
	.4byte _08054820 @ case 6
	.4byte _08054820 @ case 7
	.4byte _08054826 @ case 8
	.4byte _08054826 @ case 9
	.4byte _08054826 @ case 10
	.4byte _08054826 @ case 11
	.4byte _08054820 @ case 12
	.4byte _08054820 @ case 13
	.4byte _08054820 @ case 14
	.4byte _08054820 @ case 15
	.4byte _08054826 @ case 16
	.4byte _08054826 @ case 17
	.4byte _08054826 @ case 18
	.4byte _08054826 @ case 19
	.4byte _08054826 @ case 20
	.4byte _08054826 @ case 21
	.4byte _08054820 @ case 22
	.4byte _08054820 @ case 23
	.4byte _08054820 @ case 24
	.4byte _08054820 @ case 25
	.4byte _08054820 @ case 26
	.4byte _08054820 @ case 27
	.4byte _08054826 @ case 28
	.4byte _08054826 @ case 29
	.4byte _08054826 @ case 30
	.4byte _08054826 @ case 31
	.4byte _08054826 @ case 32
	.4byte _08054826 @ case 33
	.4byte _08054826 @ case 34
	.4byte _08054826 @ case 35
_08054820:
	movs r0, #0x80
	lsls r0, r0, #8
	b _08054828
_08054826:
	movs r0, #0
_08054828:
	str r0, [r3, #8]
	adds r2, #1
	str r2, [r4, #0x64]
	cmp r2, #0x23
	ble _0805487A
	movs r0, #0x30
	str r0, [r4, #0x64]
	ldr r0, [r4, #0x60]
	adds r0, #1
	str r0, [r4, #0x60]
	cmp r0, #0x1f
	ble _0805487A
	movs r0, #0
	str r0, [r4, #0x60]
	b _0805487A
_08054846:
	ldrh r0, [r3, #0x34]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0805487A
	ldr r0, [r3]
	ldr r1, [r3, #0x28]
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, [r3, #4]
	ldr r1, [r3, #0x2c]
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r1, [r3, #8]
	ldr r0, [r3, #0x30]
	adds r1, r1, r0
	str r1, [r3, #8]
	ldr r2, _08054880 @ =0xFFFFC000
	adds r0, r0, r2
	str r0, [r3, #0x30]
	cmp r1, #0
	bgt _0805487A
	ldrh r1, [r4, #0x34]
	ldr r0, _08054884 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r4, #0x34]
_0805487A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054880: .4byte 0xFFFFC000
_08054884: .4byte 0x0000FFFE

	thumb_func_start sub_8054888
sub_8054888: @ 0x08054888
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x64]
	adds r3, r4, #0
	ldr r0, [r4, #0x60]
	cmp r0, #0x37
	bls _08054898
	b _08054D42
_08054898:
	lsls r0, r0, #2
	ldr r1, _080548A4 @ =_080548A8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080548A4: .4byte _080548A8
_080548A8: @ jump table
	.4byte _08054ABC @ case 0
	.4byte _08054988 @ case 1
	.4byte _08054A52 @ case 2
	.4byte _08054A6C @ case 3
	.4byte _08054A82 @ case 4
	.4byte _08054ABC @ case 5
	.4byte _08054AD2 @ case 6
	.4byte _08054BA0 @ case 7
	.4byte _08054C44 @ case 8
	.4byte _08054ABC @ case 9
	.4byte _08054988 @ case 10
	.4byte _08054A52 @ case 11
	.4byte _08054A6C @ case 12
	.4byte _08054A82 @ case 13
	.4byte _08054ABC @ case 14
	.4byte _08054AD2 @ case 15
	.4byte _08054BA0 @ case 16
	.4byte _08054C44 @ case 17
	.4byte _08054ABC @ case 18
	.4byte _08054988 @ case 19
	.4byte _08054A52 @ case 20
	.4byte _08054A6C @ case 21
	.4byte _08054A8C @ case 22
	.4byte _08054ABC @ case 23
	.4byte _08054AD2 @ case 24
	.4byte _08054BA0 @ case 25
	.4byte _08054C44 @ case 26
	.4byte _08054ABC @ case 27
	.4byte _08054988 @ case 28
	.4byte _08054A52 @ case 29
	.4byte _08054A6C @ case 30
	.4byte _08054A8C @ case 31
	.4byte _08054ABC @ case 32
	.4byte _08054AD2 @ case 33
	.4byte _08054BA0 @ case 34
	.4byte _08054C44 @ case 35
	.4byte _08054ABC @ case 36
	.4byte _08054988 @ case 37
	.4byte _08054A52 @ case 38
	.4byte _08054A6C @ case 39
	.4byte _08054A96 @ case 40
	.4byte _08054ABC @ case 41
	.4byte _08054AD2 @ case 42
	.4byte _08054BA0 @ case 43
	.4byte _08054C44 @ case 44
	.4byte _08054ABC @ case 45
	.4byte _08054988 @ case 46
	.4byte _08054A52 @ case 47
	.4byte _08054A6C @ case 48
	.4byte _08054A9E @ case 49
	.4byte _08054ABC @ case 50
	.4byte _08054AD2 @ case 51
	.4byte _08054BA0 @ case 52
	.4byte _08054C44 @ case 53
	.4byte _08054D42 @ case 54
	.4byte _08054D0E @ case 55
_08054988:
	cmp r2, #0x23
	bhi _08054A32
	lsls r0, r2, #2
	ldr r1, _08054998 @ =_0805499C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08054998: .4byte _0805499C
_0805499C: @ jump table
	.4byte _08054A32 @ case 0
	.4byte _08054A32 @ case 1
	.4byte _08054A32 @ case 2
	.4byte _08054A32 @ case 3
	.4byte _08054A2C @ case 4
	.4byte _08054A2C @ case 5
	.4byte _08054A2C @ case 6
	.4byte _08054A2C @ case 7
	.4byte _08054A32 @ case 8
	.4byte _08054A32 @ case 9
	.4byte _08054A32 @ case 10
	.4byte _08054A32 @ case 11
	.4byte _08054A2C @ case 12
	.4byte _08054A2C @ case 13
	.4byte _08054A2C @ case 14
	.4byte _08054A2C @ case 15
	.4byte _08054A32 @ case 16
	.4byte _08054A32 @ case 17
	.4byte _08054A32 @ case 18
	.4byte _08054A32 @ case 19
	.4byte _08054A32 @ case 20
	.4byte _08054A32 @ case 21
	.4byte _08054A2C @ case 22
	.4byte _08054A2C @ case 23
	.4byte _08054A2C @ case 24
	.4byte _08054A2C @ case 25
	.4byte _08054A2C @ case 26
	.4byte _08054A2C @ case 27
	.4byte _08054A32 @ case 28
	.4byte _08054A32 @ case 29
	.4byte _08054A32 @ case 30
	.4byte _08054A32 @ case 31
	.4byte _08054A32 @ case 32
	.4byte _08054A32 @ case 33
	.4byte _08054A32 @ case 34
	.4byte _08054A32 @ case 35
_08054A2C:
	movs r0, #0x80
	lsls r0, r0, #8
	b _08054A34
_08054A32:
	movs r0, #0
_08054A34:
	str r0, [r3, #8]
	adds r2, #1
	str r2, [r4, #0x64]
	cmp r2, #0x23
	bgt _08054A40
	b _08054D42
_08054A40:
	ldr r0, [r4, #0x60]
	adds r0, #1
	str r0, [r4, #0x60]
	movs r0, #0
	str r0, [r4, #0x64]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x30]
	b _08054D42
_08054A52:
	adds r2, #1
	str r2, [r4, #0x64]
	lsls r0, r2, #0xf
	str r0, [r3, #8]
	cmp r2, #0x3f
	bgt _08054A60
	b _08054D42
_08054A60:
	ldr r0, [r4, #0x60]
	adds r0, #1
	str r0, [r4, #0x60]
	movs r0, #0x10
	str r0, [r4, #0x64]
	b _08054D42
_08054A6C:
	subs r2, #1
	str r2, [r4, #0x64]
	cmp r2, #0
	ble _08054A76
	b _08054D42
_08054A76:
	ldr r0, [r4, #0x60]
	adds r0, #1
	str r0, [r4, #0x60]
	movs r0, #0x30
	str r0, [r4, #0x64]
	b _08054D42
_08054A82:
	ldr r0, [r3]
	ldr r1, [r3, #0x28]
	adds r0, r0, r1
	str r0, [r3]
	b _08054AA6
_08054A8C:
	ldr r0, [r3]
	ldr r1, [r3, #0x28]
	subs r0, r0, r1
	str r0, [r3]
	b _08054AA6
_08054A96:
	ldr r0, [r3, #4]
	ldr r1, [r3, #0x2c]
	adds r0, r0, r1
	b _08054AA4
_08054A9E:
	ldr r0, [r3, #4]
	ldr r1, [r3, #0x2c]
	subs r0, r0, r1
_08054AA4:
	str r0, [r3, #4]
_08054AA6:
	subs r2, #1
	str r2, [r4, #0x64]
	cmp r2, #0
	ble _08054AB0
	b _08054D42
_08054AB0:
	ldr r0, [r4, #0x60]
	adds r0, #1
	str r0, [r4, #0x60]
	movs r0, #0x20
	str r0, [r4, #0x64]
	b _08054D42
_08054ABC:
	subs r2, #1
	str r2, [r4, #0x64]
	cmp r2, #0
	ble _08054AC6
	b _08054D42
_08054AC6:
	ldr r0, [r4, #0x60]
	adds r0, #1
	str r0, [r4, #0x60]
	movs r0, #0
	str r0, [r4, #0x64]
	b _08054D42
_08054AD2:
	cmp r2, #0x23
	bhi _08054B7A
	lsls r0, r2, #2
	ldr r1, _08054AE0 @ =_08054AE4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08054AE0: .4byte _08054AE4
_08054AE4: @ jump table
	.4byte _08054B7A @ case 0
	.4byte _08054B7A @ case 1
	.4byte _08054B7A @ case 2
	.4byte _08054B7A @ case 3
	.4byte _08054B74 @ case 4
	.4byte _08054B74 @ case 5
	.4byte _08054B74 @ case 6
	.4byte _08054B74 @ case 7
	.4byte _08054B7A @ case 8
	.4byte _08054B7A @ case 9
	.4byte _08054B7A @ case 10
	.4byte _08054B7A @ case 11
	.4byte _08054B74 @ case 12
	.4byte _08054B74 @ case 13
	.4byte _08054B74 @ case 14
	.4byte _08054B74 @ case 15
	.4byte _08054B7A @ case 16
	.4byte _08054B7A @ case 17
	.4byte _08054B7A @ case 18
	.4byte _08054B7A @ case 19
	.4byte _08054B7A @ case 20
	.4byte _08054B7A @ case 21
	.4byte _08054B74 @ case 22
	.4byte _08054B74 @ case 23
	.4byte _08054B74 @ case 24
	.4byte _08054B74 @ case 25
	.4byte _08054B74 @ case 26
	.4byte _08054B74 @ case 27
	.4byte _08054B7A @ case 28
	.4byte _08054B7A @ case 29
	.4byte _08054B7A @ case 30
	.4byte _08054B7A @ case 31
	.4byte _08054B7A @ case 32
	.4byte _08054B7A @ case 33
	.4byte _08054B7A @ case 34
	.4byte _08054B7A @ case 35
_08054B74:
	movs r0, #0x82
	lsls r0, r0, #0xe
	b _08054B7E
_08054B7A:
	movs r0, #0x80
	lsls r0, r0, #0xe
_08054B7E:
	str r0, [r3, #8]
	adds r2, #1
	str r2, [r4, #0x64]
	cmp r2, #0x23
	bgt _08054B8A
	b _08054D42
_08054B8A:
	ldr r0, [r4, #0x60]
	adds r0, #1
	str r0, [r4, #0x60]
	movs r0, #8
	str r0, [r4, #0x64]
	ldr r0, _08054B9C @ =0xFFFC0000
	str r0, [r4, #0x30]
	b _08054D42
	.align 2, 0
_08054B9C: .4byte 0xFFFC0000
_08054BA0:
	subs r2, #1
	str r2, [r4, #0x64]
	lsls r0, r2, #0x12
	str r0, [r3, #8]
	cmp r2, #0
	ble _08054BAE
	b _08054D42
_08054BAE:
	ldr r0, [r4, #0x60]
	adds r0, #1
	str r0, [r4, #0x60]
	movs r0, #0
	str r0, [r4, #0x64]
	str r0, [r4, #0x30]
	ldr r2, _08054C30 @ =0x03002E20
	adds r4, r2, #0
	adds r4, #0x24
	ldr r1, _08054C34 @ =0x00000838
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08054BD2
	b _08054D42
_08054BD2:
	ldr r1, _08054C38 @ =0x00000C84
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08054BDE
	b _08054D42
_08054BDE:
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_804CD28
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x18
	bgt _08054BF0
	b _08054D42
_08054BF0:
	adds r6, r2, #0
	cmp r6, #0
	bne _08054BF8
	b _08054D42
_08054BF8:
	movs r0, #0xc0
	lsls r0, r0, #1
	bl m4aSongNumStart
	ldr r5, _08054C3C @ =gMPlayTable
	ldr r4, _08054C40 @ =gSongTable
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r4, r4, r2
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
	b _08054D42
	.align 2, 0
_08054C30: .4byte 0x03002E20
_08054C34: .4byte 0x00000838
_08054C38: .4byte 0x00000C84
_08054C3C: .4byte gMPlayTable
_08054C40: .4byte gSongTable
_08054C44:
	cmp r2, #0x23
	bhi _08054CEE
	lsls r0, r2, #2
	ldr r1, _08054C54 @ =_08054C58
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08054C54: .4byte _08054C58
_08054C58: @ jump table
	.4byte _08054CEE @ case 0
	.4byte _08054CEE @ case 1
	.4byte _08054CEE @ case 2
	.4byte _08054CEE @ case 3
	.4byte _08054CE8 @ case 4
	.4byte _08054CE8 @ case 5
	.4byte _08054CE8 @ case 6
	.4byte _08054CE8 @ case 7
	.4byte _08054CEE @ case 8
	.4byte _08054CEE @ case 9
	.4byte _08054CEE @ case 10
	.4byte _08054CEE @ case 11
	.4byte _08054CE8 @ case 12
	.4byte _08054CE8 @ case 13
	.4byte _08054CE8 @ case 14
	.4byte _08054CE8 @ case 15
	.4byte _08054CEE @ case 16
	.4byte _08054CEE @ case 17
	.4byte _08054CEE @ case 18
	.4byte _08054CEE @ case 19
	.4byte _08054CEE @ case 20
	.4byte _08054CEE @ case 21
	.4byte _08054CE8 @ case 22
	.4byte _08054CE8 @ case 23
	.4byte _08054CE8 @ case 24
	.4byte _08054CE8 @ case 25
	.4byte _08054CE8 @ case 26
	.4byte _08054CE8 @ case 27
	.4byte _08054CEE @ case 28
	.4byte _08054CEE @ case 29
	.4byte _08054CEE @ case 30
	.4byte _08054CEE @ case 31
	.4byte _08054CEE @ case 32
	.4byte _08054CEE @ case 33
	.4byte _08054CEE @ case 34
	.4byte _08054CEE @ case 35
_08054CE8:
	movs r0, #0x80
	lsls r0, r0, #8
	b _08054CF0
_08054CEE:
	movs r0, #0
_08054CF0:
	str r0, [r3, #8]
	adds r2, #1
	str r2, [r4, #0x64]
	cmp r2, #0x23
	ble _08054D42
	movs r0, #0x10
	str r0, [r4, #0x64]
	ldr r0, [r4, #0x60]
	adds r0, #1
	str r0, [r4, #0x60]
	cmp r0, #0x35
	ble _08054D42
	movs r0, #0
	str r0, [r4, #0x60]
	b _08054D42
_08054D0E:
	ldrh r0, [r3, #0x34]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08054D42
	ldr r0, [r3]
	ldr r1, [r3, #0x28]
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, [r3, #4]
	ldr r1, [r3, #0x2c]
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r1, [r3, #8]
	ldr r0, [r3, #0x30]
	adds r1, r1, r0
	str r1, [r3, #8]
	ldr r2, _08054D48 @ =0xFFFFC000
	adds r0, r0, r2
	str r0, [r3, #0x30]
	cmp r1, #0
	bgt _08054D42
	ldrh r1, [r4, #0x34]
	ldr r0, _08054D4C @ =0x0000FFFE
	ands r0, r1
	strh r0, [r4, #0x34]
_08054D42:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08054D48: .4byte 0xFFFFC000
_08054D4C: .4byte 0x0000FFFE

	thumb_func_start sub_8054D50
sub_8054D50: @ 0x08054D50
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x64]
	adds r3, r4, #0
	ldr r0, [r4, #0x60]
	cmp r0, #0x25
	bls _08054D60
	b _080551C2
_08054D60:
	lsls r0, r0, #2
	ldr r1, _08054D6C @ =_08054D70
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08054D6C: .4byte _08054D70
_08054D70: @ jump table
	.4byte _08054F3C @ case 0
	.4byte _08054E08 @ case 1
	.4byte _08054ED2 @ case 2
	.4byte _08054EEC @ case 3
	.4byte _08054F02 @ case 4
	.4byte _08054F3C @ case 5
	.4byte _08054F52 @ case 6
	.4byte _08055020 @ case 7
	.4byte _080550C4 @ case 8
	.4byte _08054F3C @ case 9
	.4byte _08054E08 @ case 10
	.4byte _08054ED2 @ case 11
	.4byte _08054EEC @ case 12
	.4byte _08054F14 @ case 13
	.4byte _08054F3C @ case 14
	.4byte _08054F52 @ case 15
	.4byte _08055020 @ case 16
	.4byte _080550C4 @ case 17
	.4byte _08054F3C @ case 18
	.4byte _08054E08 @ case 19
	.4byte _08054ED2 @ case 20
	.4byte _08054EEC @ case 21
	.4byte _08054F0C @ case 22
	.4byte _08054F3C @ case 23
	.4byte _08054F52 @ case 24
	.4byte _08055020 @ case 25
	.4byte _080550C4 @ case 26
	.4byte _08054F3C @ case 27
	.4byte _08054E08 @ case 28
	.4byte _08054ED2 @ case 29
	.4byte _08054EEC @ case 30
	.4byte _08054F1E @ case 31
	.4byte _08054F3C @ case 32
	.4byte _08054F52 @ case 33
	.4byte _08055020 @ case 34
	.4byte _080550C4 @ case 35
	.4byte _080551C2 @ case 36
	.4byte _0805518E @ case 37
_08054E08:
	cmp r2, #0x23
	bhi _08054EB2
	lsls r0, r2, #2
	ldr r1, _08054E18 @ =_08054E1C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08054E18: .4byte _08054E1C
_08054E1C: @ jump table
	.4byte _08054EB2 @ case 0
	.4byte _08054EB2 @ case 1
	.4byte _08054EB2 @ case 2
	.4byte _08054EB2 @ case 3
	.4byte _08054EAC @ case 4
	.4byte _08054EAC @ case 5
	.4byte _08054EAC @ case 6
	.4byte _08054EAC @ case 7
	.4byte _08054EB2 @ case 8
	.4byte _08054EB2 @ case 9
	.4byte _08054EB2 @ case 10
	.4byte _08054EB2 @ case 11
	.4byte _08054EAC @ case 12
	.4byte _08054EAC @ case 13
	.4byte _08054EAC @ case 14
	.4byte _08054EAC @ case 15
	.4byte _08054EB2 @ case 16
	.4byte _08054EB2 @ case 17
	.4byte _08054EB2 @ case 18
	.4byte _08054EB2 @ case 19
	.4byte _08054EB2 @ case 20
	.4byte _08054EB2 @ case 21
	.4byte _08054EAC @ case 22
	.4byte _08054EAC @ case 23
	.4byte _08054EAC @ case 24
	.4byte _08054EAC @ case 25
	.4byte _08054EAC @ case 26
	.4byte _08054EAC @ case 27
	.4byte _08054EB2 @ case 28
	.4byte _08054EB2 @ case 29
	.4byte _08054EB2 @ case 30
	.4byte _08054EB2 @ case 31
	.4byte _08054EB2 @ case 32
	.4byte _08054EB2 @ case 33
	.4byte _08054EB2 @ case 34
	.4byte _08054EB2 @ case 35
_08054EAC:
	movs r0, #0x80
	lsls r0, r0, #8
	b _08054EB4
_08054EB2:
	movs r0, #0
_08054EB4:
	str r0, [r3, #8]
	adds r2, #1
	str r2, [r4, #0x64]
	cmp r2, #0x23
	bgt _08054EC0
	b _080551C2
_08054EC0:
	ldr r0, [r4, #0x60]
	adds r0, #1
	str r0, [r4, #0x60]
	movs r0, #0
	str r0, [r4, #0x64]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x30]
	b _080551C2
_08054ED2:
	adds r2, #1
	str r2, [r4, #0x64]
	lsls r0, r2, #0xf
	str r0, [r3, #8]
	cmp r2, #0x3f
	bgt _08054EE0
	b _080551C2
_08054EE0:
	ldr r0, [r4, #0x60]
	adds r0, #1
	str r0, [r4, #0x60]
	movs r0, #0x10
	str r0, [r4, #0x64]
	b _080551C2
_08054EEC:
	subs r2, #1
	str r2, [r4, #0x64]
	cmp r2, #0
	ble _08054EF6
	b _080551C2
_08054EF6:
	ldr r0, [r4, #0x60]
	adds r0, #1
	str r0, [r4, #0x60]
	movs r0, #0x30
	str r0, [r4, #0x64]
	b _080551C2
_08054F02:
	ldr r0, [r3]
	ldr r1, [r3, #0x28]
	adds r0, r0, r1
	str r0, [r3]
	b _08054F26
_08054F0C:
	ldr r0, [r3, #4]
	ldr r1, [r3, #0x2c]
	adds r0, r0, r1
	b _08054F24
_08054F14:
	ldr r0, [r3]
	ldr r1, [r3, #0x28]
	subs r0, r0, r1
	str r0, [r3]
	b _08054F26
_08054F1E:
	ldr r0, [r3, #4]
	ldr r1, [r3, #0x2c]
	subs r0, r0, r1
_08054F24:
	str r0, [r3, #4]
_08054F26:
	subs r2, #1
	str r2, [r4, #0x64]
	cmp r2, #0
	ble _08054F30
	b _080551C2
_08054F30:
	ldr r0, [r4, #0x60]
	adds r0, #1
	str r0, [r4, #0x60]
	movs r0, #0x20
	str r0, [r4, #0x64]
	b _080551C2
_08054F3C:
	subs r2, #1
	str r2, [r4, #0x64]
	cmp r2, #0
	ble _08054F46
	b _080551C2
_08054F46:
	ldr r0, [r4, #0x60]
	adds r0, #1
	str r0, [r4, #0x60]
	movs r0, #0
	str r0, [r4, #0x64]
	b _080551C2
_08054F52:
	cmp r2, #0x23
	bhi _08054FFA
	lsls r0, r2, #2
	ldr r1, _08054F60 @ =_08054F64
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08054F60: .4byte _08054F64
_08054F64: @ jump table
	.4byte _08054FFA @ case 0
	.4byte _08054FFA @ case 1
	.4byte _08054FFA @ case 2
	.4byte _08054FFA @ case 3
	.4byte _08054FF4 @ case 4
	.4byte _08054FF4 @ case 5
	.4byte _08054FF4 @ case 6
	.4byte _08054FF4 @ case 7
	.4byte _08054FFA @ case 8
	.4byte _08054FFA @ case 9
	.4byte _08054FFA @ case 10
	.4byte _08054FFA @ case 11
	.4byte _08054FF4 @ case 12
	.4byte _08054FF4 @ case 13
	.4byte _08054FF4 @ case 14
	.4byte _08054FF4 @ case 15
	.4byte _08054FFA @ case 16
	.4byte _08054FFA @ case 17
	.4byte _08054FFA @ case 18
	.4byte _08054FFA @ case 19
	.4byte _08054FFA @ case 20
	.4byte _08054FFA @ case 21
	.4byte _08054FF4 @ case 22
	.4byte _08054FF4 @ case 23
	.4byte _08054FF4 @ case 24
	.4byte _08054FF4 @ case 25
	.4byte _08054FF4 @ case 26
	.4byte _08054FF4 @ case 27
	.4byte _08054FFA @ case 28
	.4byte _08054FFA @ case 29
	.4byte _08054FFA @ case 30
	.4byte _08054FFA @ case 31
	.4byte _08054FFA @ case 32
	.4byte _08054FFA @ case 33
	.4byte _08054FFA @ case 34
	.4byte _08054FFA @ case 35
_08054FF4:
	movs r0, #0x82
	lsls r0, r0, #0xe
	b _08054FFE
_08054FFA:
	movs r0, #0x80
	lsls r0, r0, #0xe
_08054FFE:
	str r0, [r3, #8]
	adds r2, #1
	str r2, [r4, #0x64]
	cmp r2, #0x23
	bgt _0805500A
	b _080551C2
_0805500A:
	ldr r0, [r4, #0x60]
	adds r0, #1
	str r0, [r4, #0x60]
	movs r0, #8
	str r0, [r4, #0x64]
	ldr r0, _0805501C @ =0xFFFC0000
	str r0, [r4, #0x30]
	b _080551C2
	.align 2, 0
_0805501C: .4byte 0xFFFC0000
_08055020:
	subs r2, #1
	str r2, [r4, #0x64]
	lsls r0, r2, #0x12
	str r0, [r3, #8]
	cmp r2, #0
	ble _0805502E
	b _080551C2
_0805502E:
	ldr r0, [r4, #0x60]
	adds r0, #1
	str r0, [r4, #0x60]
	movs r0, #0
	str r0, [r4, #0x64]
	str r0, [r4, #0x30]
	ldr r2, _080550B0 @ =0x03002E20
	adds r4, r2, #0
	adds r4, #0x24
	ldr r1, _080550B4 @ =0x00000838
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08055052
	b _080551C2
_08055052:
	ldr r1, _080550B8 @ =0x00000C84
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0805505E
	b _080551C2
_0805505E:
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_804CD28
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x18
	bgt _08055070
	b _080551C2
_08055070:
	adds r6, r2, #0
	cmp r6, #0
	bne _08055078
	b _080551C2
_08055078:
	movs r0, #0xc0
	lsls r0, r0, #1
	bl m4aSongNumStart
	ldr r5, _080550BC @ =gMPlayTable
	ldr r4, _080550C0 @ =gSongTable
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r4, r4, r2
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
	b _080551C2
	.align 2, 0
_080550B0: .4byte 0x03002E20
_080550B4: .4byte 0x00000838
_080550B8: .4byte 0x00000C84
_080550BC: .4byte gMPlayTable
_080550C0: .4byte gSongTable
_080550C4:
	cmp r2, #0x23
	bhi _0805516E
	lsls r0, r2, #2
	ldr r1, _080550D4 @ =_080550D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080550D4: .4byte _080550D8
_080550D8: @ jump table
	.4byte _0805516E @ case 0
	.4byte _0805516E @ case 1
	.4byte _0805516E @ case 2
	.4byte _0805516E @ case 3
	.4byte _08055168 @ case 4
	.4byte _08055168 @ case 5
	.4byte _08055168 @ case 6
	.4byte _08055168 @ case 7
	.4byte _0805516E @ case 8
	.4byte _0805516E @ case 9
	.4byte _0805516E @ case 10
	.4byte _0805516E @ case 11
	.4byte _08055168 @ case 12
	.4byte _08055168 @ case 13
	.4byte _08055168 @ case 14
	.4byte _08055168 @ case 15
	.4byte _0805516E @ case 16
	.4byte _0805516E @ case 17
	.4byte _0805516E @ case 18
	.4byte _0805516E @ case 19
	.4byte _0805516E @ case 20
	.4byte _0805516E @ case 21
	.4byte _08055168 @ case 22
	.4byte _08055168 @ case 23
	.4byte _08055168 @ case 24
	.4byte _08055168 @ case 25
	.4byte _08055168 @ case 26
	.4byte _08055168 @ case 27
	.4byte _0805516E @ case 28
	.4byte _0805516E @ case 29
	.4byte _0805516E @ case 30
	.4byte _0805516E @ case 31
	.4byte _0805516E @ case 32
	.4byte _0805516E @ case 33
	.4byte _0805516E @ case 34
	.4byte _0805516E @ case 35
_08055168:
	movs r0, #0x80
	lsls r0, r0, #8
	b _08055170
_0805516E:
	movs r0, #0
_08055170:
	str r0, [r3, #8]
	adds r2, #1
	str r2, [r4, #0x64]
	cmp r2, #0x23
	ble _080551C2
	movs r0, #0x10
	str r0, [r4, #0x64]
	ldr r0, [r4, #0x60]
	adds r0, #1
	str r0, [r4, #0x60]
	cmp r0, #0x23
	ble _080551C2
	movs r0, #0
	str r0, [r4, #0x60]
	b _080551C2
_0805518E:
	ldrh r0, [r3, #0x34]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080551C2
	ldr r0, [r3]
	ldr r1, [r3, #0x28]
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, [r3, #4]
	ldr r1, [r3, #0x2c]
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r1, [r3, #8]
	ldr r0, [r3, #0x30]
	adds r1, r1, r0
	str r1, [r3, #8]
	ldr r2, _080551C8 @ =0xFFFFC000
	adds r0, r0, r2
	str r0, [r3, #0x30]
	cmp r1, #0
	bgt _080551C2
	ldrh r1, [r4, #0x34]
	ldr r0, _080551CC @ =0x0000FFFE
	ands r0, r1
	strh r0, [r4, #0x34]
_080551C2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080551C8: .4byte 0xFFFFC000
_080551CC: .4byte 0x0000FFFE

	thumb_func_start sub_80551D0
sub_80551D0: @ 0x080551D0
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r2, [r3, #0x64]
	adds r4, r3, #0
	ldr r0, [r3, #0x60]
	cmp r0, #0x25
	bls _080551E0
	b _0805562E
_080551E0:
	lsls r0, r0, #2
	ldr r1, _080551EC @ =_080551F0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080551EC: .4byte _080551F0
_080551F0: @ jump table
	.4byte _080553A8 @ case 0
	.4byte _08055288 @ case 1
	.4byte _08055352 @ case 2
	.4byte _0805536C @ case 3
	.4byte _08055382 @ case 4
	.4byte _080553A8 @ case 5
	.4byte _080553BE @ case 6
	.4byte _0805548C @ case 7
	.4byte _08055530 @ case 8
	.4byte _080553A8 @ case 9
	.4byte _08055288 @ case 10
	.4byte _08055352 @ case 11
	.4byte _0805536C @ case 12
	.4byte _08055382 @ case 13
	.4byte _080553A8 @ case 14
	.4byte _080553BE @ case 15
	.4byte _0805548C @ case 16
	.4byte _08055530 @ case 17
	.4byte _080553A8 @ case 18
	.4byte _08055288 @ case 19
	.4byte _08055352 @ case 20
	.4byte _0805536C @ case 21
	.4byte _0805538A @ case 22
	.4byte _080553A8 @ case 23
	.4byte _080553BE @ case 24
	.4byte _0805548C @ case 25
	.4byte _08055530 @ case 26
	.4byte _080553A8 @ case 27
	.4byte _08055288 @ case 28
	.4byte _08055352 @ case 29
	.4byte _0805536C @ case 30
	.4byte _0805538A @ case 31
	.4byte _080553A8 @ case 32
	.4byte _080553BE @ case 33
	.4byte _0805548C @ case 34
	.4byte _08055530 @ case 35
	.4byte _0805562E @ case 36
	.4byte _080555FA @ case 37
_08055288:
	cmp r2, #0x23
	bhi _08055332
	lsls r0, r2, #2
	ldr r1, _08055298 @ =_0805529C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08055298: .4byte _0805529C
_0805529C: @ jump table
	.4byte _08055332 @ case 0
	.4byte _08055332 @ case 1
	.4byte _08055332 @ case 2
	.4byte _08055332 @ case 3
	.4byte _0805532C @ case 4
	.4byte _0805532C @ case 5
	.4byte _0805532C @ case 6
	.4byte _0805532C @ case 7
	.4byte _08055332 @ case 8
	.4byte _08055332 @ case 9
	.4byte _08055332 @ case 10
	.4byte _08055332 @ case 11
	.4byte _0805532C @ case 12
	.4byte _0805532C @ case 13
	.4byte _0805532C @ case 14
	.4byte _0805532C @ case 15
	.4byte _08055332 @ case 16
	.4byte _08055332 @ case 17
	.4byte _08055332 @ case 18
	.4byte _08055332 @ case 19
	.4byte _08055332 @ case 20
	.4byte _08055332 @ case 21
	.4byte _0805532C @ case 22
	.4byte _0805532C @ case 23
	.4byte _0805532C @ case 24
	.4byte _0805532C @ case 25
	.4byte _0805532C @ case 26
	.4byte _0805532C @ case 27
	.4byte _08055332 @ case 28
	.4byte _08055332 @ case 29
	.4byte _08055332 @ case 30
	.4byte _08055332 @ case 31
	.4byte _08055332 @ case 32
	.4byte _08055332 @ case 33
	.4byte _08055332 @ case 34
	.4byte _08055332 @ case 35
_0805532C:
	movs r0, #0x80
	lsls r0, r0, #8
	b _08055334
_08055332:
	movs r0, #0
_08055334:
	str r0, [r4, #8]
	adds r2, #1
	str r2, [r3, #0x64]
	cmp r2, #0x23
	bgt _08055340
	b _0805562E
_08055340:
	ldr r0, [r3, #0x60]
	adds r0, #1
	str r0, [r3, #0x60]
	movs r0, #0
	str r0, [r3, #0x64]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r3, #0x30]
	b _0805562E
_08055352:
	adds r2, #1
	str r2, [r3, #0x64]
	lsls r0, r2, #0xf
	str r0, [r4, #8]
	cmp r2, #0x3f
	bgt _08055360
	b _0805562E
_08055360:
	ldr r0, [r3, #0x60]
	adds r0, #1
	str r0, [r3, #0x60]
	movs r0, #0x10
	str r0, [r3, #0x64]
	b _0805562E
_0805536C:
	subs r2, #1
	str r2, [r3, #0x64]
	cmp r2, #0
	ble _08055376
	b _0805562E
_08055376:
	ldr r0, [r3, #0x60]
	adds r0, #1
	str r0, [r3, #0x60]
	movs r0, #0x30
	str r0, [r3, #0x64]
	b _0805562E
_08055382:
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	adds r0, r0, r1
	b _08055390
_0805538A:
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	subs r0, r0, r1
_08055390:
	str r0, [r4]
	subs r2, #1
	str r2, [r3, #0x64]
	cmp r2, #0
	ble _0805539C
	b _0805562E
_0805539C:
	ldr r0, [r3, #0x60]
	adds r0, #1
	str r0, [r3, #0x60]
	movs r0, #0x18
	str r0, [r3, #0x64]
	b _0805562E
_080553A8:
	subs r2, #1
	str r2, [r3, #0x64]
	cmp r2, #0
	ble _080553B2
	b _0805562E
_080553B2:
	ldr r0, [r3, #0x60]
	adds r0, #1
	str r0, [r3, #0x60]
	movs r0, #0
	str r0, [r3, #0x64]
	b _0805562E
_080553BE:
	cmp r2, #0x23
	bhi _08055466
	lsls r0, r2, #2
	ldr r1, _080553CC @ =_080553D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080553CC: .4byte _080553D0
_080553D0: @ jump table
	.4byte _08055466 @ case 0
	.4byte _08055466 @ case 1
	.4byte _08055466 @ case 2
	.4byte _08055466 @ case 3
	.4byte _08055460 @ case 4
	.4byte _08055460 @ case 5
	.4byte _08055460 @ case 6
	.4byte _08055460 @ case 7
	.4byte _08055466 @ case 8
	.4byte _08055466 @ case 9
	.4byte _08055466 @ case 10
	.4byte _08055466 @ case 11
	.4byte _08055460 @ case 12
	.4byte _08055460 @ case 13
	.4byte _08055460 @ case 14
	.4byte _08055460 @ case 15
	.4byte _08055466 @ case 16
	.4byte _08055466 @ case 17
	.4byte _08055466 @ case 18
	.4byte _08055466 @ case 19
	.4byte _08055466 @ case 20
	.4byte _08055466 @ case 21
	.4byte _08055460 @ case 22
	.4byte _08055460 @ case 23
	.4byte _08055460 @ case 24
	.4byte _08055460 @ case 25
	.4byte _08055460 @ case 26
	.4byte _08055460 @ case 27
	.4byte _08055466 @ case 28
	.4byte _08055466 @ case 29
	.4byte _08055466 @ case 30
	.4byte _08055466 @ case 31
	.4byte _08055466 @ case 32
	.4byte _08055466 @ case 33
	.4byte _08055466 @ case 34
	.4byte _08055466 @ case 35
_08055460:
	movs r0, #0x82
	lsls r0, r0, #0xe
	b _0805546A
_08055466:
	movs r0, #0x80
	lsls r0, r0, #0xe
_0805546A:
	str r0, [r4, #8]
	adds r2, #1
	str r2, [r3, #0x64]
	cmp r2, #0x23
	bgt _08055476
	b _0805562E
_08055476:
	ldr r0, [r3, #0x60]
	adds r0, #1
	str r0, [r3, #0x60]
	movs r0, #8
	str r0, [r3, #0x64]
	ldr r0, _08055488 @ =0xFFFC0000
	str r0, [r3, #0x30]
	b _0805562E
	.align 2, 0
_08055488: .4byte 0xFFFC0000
_0805548C:
	subs r2, #1
	str r2, [r3, #0x64]
	lsls r0, r2, #0x12
	str r0, [r4, #8]
	cmp r2, #0
	ble _0805549A
	b _0805562E
_0805549A:
	ldr r0, [r3, #0x60]
	adds r0, #1
	str r0, [r3, #0x60]
	movs r0, #0
	str r0, [r3, #0x64]
	str r0, [r3, #0x30]
	ldr r2, _0805551C @ =0x03002E20
	adds r3, r2, #0
	adds r3, #0x24
	ldr r1, _08055520 @ =0x00000838
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080554BE
	b _0805562E
_080554BE:
	ldr r1, _08055524 @ =0x00000C84
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080554CA
	b _0805562E
_080554CA:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_804CD28
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x18
	bgt _080554DC
	b _0805562E
_080554DC:
	adds r6, r2, #0
	cmp r6, #0
	bne _080554E4
	b _0805562E
_080554E4:
	movs r0, #0xc0
	lsls r0, r0, #1
	bl m4aSongNumStart
	ldr r5, _08055528 @ =gMPlayTable
	ldr r4, _0805552C @ =gSongTable
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r4, r4, r2
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
	b _0805562E
	.align 2, 0
_0805551C: .4byte 0x03002E20
_08055520: .4byte 0x00000838
_08055524: .4byte 0x00000C84
_08055528: .4byte gMPlayTable
_0805552C: .4byte gSongTable
_08055530:
	cmp r2, #0x23
	bhi _080555DA
	lsls r0, r2, #2
	ldr r1, _08055540 @ =_08055544
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08055540: .4byte _08055544
_08055544: @ jump table
	.4byte _080555DA @ case 0
	.4byte _080555DA @ case 1
	.4byte _080555DA @ case 2
	.4byte _080555DA @ case 3
	.4byte _080555D4 @ case 4
	.4byte _080555D4 @ case 5
	.4byte _080555D4 @ case 6
	.4byte _080555D4 @ case 7
	.4byte _080555DA @ case 8
	.4byte _080555DA @ case 9
	.4byte _080555DA @ case 10
	.4byte _080555DA @ case 11
	.4byte _080555D4 @ case 12
	.4byte _080555D4 @ case 13
	.4byte _080555D4 @ case 14
	.4byte _080555D4 @ case 15
	.4byte _080555DA @ case 16
	.4byte _080555DA @ case 17
	.4byte _080555DA @ case 18
	.4byte _080555DA @ case 19
	.4byte _080555DA @ case 20
	.4byte _080555DA @ case 21
	.4byte _080555D4 @ case 22
	.4byte _080555D4 @ case 23
	.4byte _080555D4 @ case 24
	.4byte _080555D4 @ case 25
	.4byte _080555D4 @ case 26
	.4byte _080555D4 @ case 27
	.4byte _080555DA @ case 28
	.4byte _080555DA @ case 29
	.4byte _080555DA @ case 30
	.4byte _080555DA @ case 31
	.4byte _080555DA @ case 32
	.4byte _080555DA @ case 33
	.4byte _080555DA @ case 34
	.4byte _080555DA @ case 35
_080555D4:
	movs r0, #0x80
	lsls r0, r0, #8
	b _080555DC
_080555DA:
	movs r0, #0
_080555DC:
	str r0, [r4, #8]
	adds r2, #1
	str r2, [r3, #0x64]
	cmp r2, #0x23
	ble _0805562E
	movs r0, #0x10
	str r0, [r3, #0x64]
	ldr r0, [r3, #0x60]
	adds r0, #1
	str r0, [r3, #0x60]
	cmp r0, #0x23
	ble _0805562E
	movs r0, #0
	str r0, [r3, #0x60]
	b _0805562E
_080555FA:
	ldrh r0, [r4, #0x34]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0805562E
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r4]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x30]
	adds r1, r1, r0
	str r1, [r4, #8]
	ldr r2, _08055634 @ =0xFFFFC000
	adds r0, r0, r2
	str r0, [r4, #0x30]
	cmp r1, #0
	bgt _0805562E
	ldrh r1, [r3, #0x34]
	ldr r0, _08055638 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r3, #0x34]
_0805562E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08055634: .4byte 0xFFFFC000
_08055638: .4byte 0x0000FFFE

	thumb_func_start sub_805563C
sub_805563C: @ 0x0805563C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r2, [r3, #0x64]
	adds r4, r3, #0
	ldr r0, [r3, #0x60]
	cmp r0, #0x37
	bls _0805564C
	b _08055ADA
_0805564C:
	lsls r0, r0, #2
	ldr r1, _08055658 @ =_0805565C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08055658: .4byte _0805565C
_0805565C: @ jump table
	.4byte _08055852 @ case 0
	.4byte _0805573C @ case 1
	.4byte _08055806 @ case 2
	.4byte _08055816 @ case 3
	.4byte _0805582C @ case 4
	.4byte _08055852 @ case 5
	.4byte _08055868 @ case 6
	.4byte _08055938 @ case 7
	.4byte _080559DC @ case 8
	.4byte _08055852 @ case 9
	.4byte _0805573C @ case 10
	.4byte _08055806 @ case 11
	.4byte _08055816 @ case 12
	.4byte _0805582C @ case 13
	.4byte _08055852 @ case 14
	.4byte _08055868 @ case 15
	.4byte _08055938 @ case 16
	.4byte _080559DC @ case 17
	.4byte _08055852 @ case 18
	.4byte _0805573C @ case 19
	.4byte _08055806 @ case 20
	.4byte _08055816 @ case 21
	.4byte _0805582C @ case 22
	.4byte _08055852 @ case 23
	.4byte _08055868 @ case 24
	.4byte _08055938 @ case 25
	.4byte _080559DC @ case 26
	.4byte _08055852 @ case 27
	.4byte _0805573C @ case 28
	.4byte _08055806 @ case 29
	.4byte _08055816 @ case 30
	.4byte _08055834 @ case 31
	.4byte _08055852 @ case 32
	.4byte _08055868 @ case 33
	.4byte _08055938 @ case 34
	.4byte _080559DC @ case 35
	.4byte _08055852 @ case 36
	.4byte _0805573C @ case 37
	.4byte _08055806 @ case 38
	.4byte _08055816 @ case 39
	.4byte _08055834 @ case 40
	.4byte _08055852 @ case 41
	.4byte _08055868 @ case 42
	.4byte _08055938 @ case 43
	.4byte _080559DC @ case 44
	.4byte _08055852 @ case 45
	.4byte _0805573C @ case 46
	.4byte _08055806 @ case 47
	.4byte _08055816 @ case 48
	.4byte _08055834 @ case 49
	.4byte _08055852 @ case 50
	.4byte _08055868 @ case 51
	.4byte _08055938 @ case 52
	.4byte _080559DC @ case 53
	.4byte _08055ADA @ case 54
	.4byte _08055AA6 @ case 55
_0805573C:
	cmp r2, #0x23
	bhi _080557E6
	lsls r0, r2, #2
	ldr r1, _0805574C @ =_08055750
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805574C: .4byte _08055750
_08055750: @ jump table
	.4byte _080557E6 @ case 0
	.4byte _080557E6 @ case 1
	.4byte _080557E6 @ case 2
	.4byte _080557E6 @ case 3
	.4byte _080557E0 @ case 4
	.4byte _080557E0 @ case 5
	.4byte _080557E0 @ case 6
	.4byte _080557E0 @ case 7
	.4byte _080557E6 @ case 8
	.4byte _080557E6 @ case 9
	.4byte _080557E6 @ case 10
	.4byte _080557E6 @ case 11
	.4byte _080557E0 @ case 12
	.4byte _080557E0 @ case 13
	.4byte _080557E0 @ case 14
	.4byte _080557E0 @ case 15
	.4byte _080557E6 @ case 16
	.4byte _080557E6 @ case 17
	.4byte _080557E6 @ case 18
	.4byte _080557E6 @ case 19
	.4byte _080557E6 @ case 20
	.4byte _080557E6 @ case 21
	.4byte _080557E0 @ case 22
	.4byte _080557E0 @ case 23
	.4byte _080557E0 @ case 24
	.4byte _080557E0 @ case 25
	.4byte _080557E0 @ case 26
	.4byte _080557E0 @ case 27
	.4byte _080557E6 @ case 28
	.4byte _080557E6 @ case 29
	.4byte _080557E6 @ case 30
	.4byte _080557E6 @ case 31
	.4byte _080557E6 @ case 32
	.4byte _080557E6 @ case 33
	.4byte _080557E6 @ case 34
	.4byte _080557E6 @ case 35
_080557E0:
	movs r0, #0x80
	lsls r0, r0, #8
	b _080557E8
_080557E6:
	movs r0, #0
_080557E8:
	str r0, [r4, #8]
	adds r2, #1
	str r2, [r3, #0x64]
	cmp r2, #0x23
	bgt _080557F4
	b _08055ADA
_080557F4:
	ldr r0, [r3, #0x60]
	adds r0, #1
	str r0, [r3, #0x60]
	movs r0, #0
	str r0, [r3, #0x64]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r3, #0x30]
	b _08055ADA
_08055806:
	adds r2, #1
	str r2, [r3, #0x64]
	lsls r0, r2, #0xf
	str r0, [r4, #8]
	cmp r2, #0x3f
	bgt _08055814
	b _08055ADA
_08055814:
	b _08055846
_08055816:
	subs r2, #1
	str r2, [r3, #0x64]
	cmp r2, #0
	ble _08055820
	b _08055ADA
_08055820:
	ldr r0, [r3, #0x60]
	adds r0, #1
	str r0, [r3, #0x60]
	movs r0, #0x30
	str r0, [r3, #0x64]
	b _08055ADA
_0805582C:
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	adds r0, r0, r1
	b _0805583A
_08055834:
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	subs r0, r0, r1
_0805583A:
	str r0, [r4]
	subs r2, #1
	str r2, [r3, #0x64]
	cmp r2, #0
	ble _08055846
	b _08055ADA
_08055846:
	ldr r0, [r3, #0x60]
	adds r0, #1
	str r0, [r3, #0x60]
	movs r0, #0x10
	str r0, [r3, #0x64]
	b _08055ADA
_08055852:
	subs r2, #1
	str r2, [r3, #0x64]
	cmp r2, #0
	ble _0805585C
	b _08055ADA
_0805585C:
	ldr r0, [r3, #0x60]
	adds r0, #1
	str r0, [r3, #0x60]
	movs r0, #0
	str r0, [r3, #0x64]
	b _08055ADA
_08055868:
	cmp r2, #0x23
	bhi _08055912
	lsls r0, r2, #2
	ldr r1, _08055878 @ =_0805587C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08055878: .4byte _0805587C
_0805587C: @ jump table
	.4byte _08055912 @ case 0
	.4byte _08055912 @ case 1
	.4byte _08055912 @ case 2
	.4byte _08055912 @ case 3
	.4byte _0805590C @ case 4
	.4byte _0805590C @ case 5
	.4byte _0805590C @ case 6
	.4byte _0805590C @ case 7
	.4byte _08055912 @ case 8
	.4byte _08055912 @ case 9
	.4byte _08055912 @ case 10
	.4byte _08055912 @ case 11
	.4byte _0805590C @ case 12
	.4byte _0805590C @ case 13
	.4byte _0805590C @ case 14
	.4byte _0805590C @ case 15
	.4byte _08055912 @ case 16
	.4byte _08055912 @ case 17
	.4byte _08055912 @ case 18
	.4byte _08055912 @ case 19
	.4byte _08055912 @ case 20
	.4byte _08055912 @ case 21
	.4byte _0805590C @ case 22
	.4byte _0805590C @ case 23
	.4byte _0805590C @ case 24
	.4byte _0805590C @ case 25
	.4byte _0805590C @ case 26
	.4byte _0805590C @ case 27
	.4byte _08055912 @ case 28
	.4byte _08055912 @ case 29
	.4byte _08055912 @ case 30
	.4byte _08055912 @ case 31
	.4byte _08055912 @ case 32
	.4byte _08055912 @ case 33
	.4byte _08055912 @ case 34
	.4byte _08055912 @ case 35
_0805590C:
	movs r0, #0x82
	lsls r0, r0, #0xe
	b _08055916
_08055912:
	movs r0, #0x80
	lsls r0, r0, #0xe
_08055916:
	str r0, [r4, #8]
	adds r2, #1
	str r2, [r3, #0x64]
	cmp r2, #0x23
	bgt _08055922
	b _08055ADA
_08055922:
	ldr r0, [r3, #0x60]
	adds r0, #1
	str r0, [r3, #0x60]
	movs r0, #8
	str r0, [r3, #0x64]
	ldr r0, _08055934 @ =0xFFFC0000
	str r0, [r3, #0x30]
	b _08055ADA
	.align 2, 0
_08055934: .4byte 0xFFFC0000
_08055938:
	subs r2, #1
	str r2, [r3, #0x64]
	lsls r0, r2, #0x12
	str r0, [r4, #8]
	cmp r2, #0
	ble _08055946
	b _08055ADA
_08055946:
	ldr r0, [r3, #0x60]
	adds r0, #1
	str r0, [r3, #0x60]
	movs r0, #0
	str r0, [r3, #0x64]
	str r0, [r3, #0x30]
	ldr r2, _080559C8 @ =0x03002E20
	adds r3, r2, #0
	adds r3, #0x24
	ldr r1, _080559CC @ =0x00000838
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0805596A
	b _08055ADA
_0805596A:
	ldr r1, _080559D0 @ =0x00000C84
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08055976
	b _08055ADA
_08055976:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_804CD28
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x18
	bgt _08055988
	b _08055ADA
_08055988:
	adds r6, r2, #0
	cmp r6, #0
	bne _08055990
	b _08055ADA
_08055990:
	movs r0, #0xc0
	lsls r0, r0, #1
	bl m4aSongNumStart
	ldr r5, _080559D4 @ =gMPlayTable
	ldr r4, _080559D8 @ =gSongTable
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r4, r4, r2
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
	b _08055ADA
	.align 2, 0
_080559C8: .4byte 0x03002E20
_080559CC: .4byte 0x00000838
_080559D0: .4byte 0x00000C84
_080559D4: .4byte gMPlayTable
_080559D8: .4byte gSongTable
_080559DC:
	cmp r2, #0x23
	bhi _08055A86
	lsls r0, r2, #2
	ldr r1, _080559EC @ =_080559F0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080559EC: .4byte _080559F0
_080559F0: @ jump table
	.4byte _08055A86 @ case 0
	.4byte _08055A86 @ case 1
	.4byte _08055A86 @ case 2
	.4byte _08055A86 @ case 3
	.4byte _08055A80 @ case 4
	.4byte _08055A80 @ case 5
	.4byte _08055A80 @ case 6
	.4byte _08055A80 @ case 7
	.4byte _08055A86 @ case 8
	.4byte _08055A86 @ case 9
	.4byte _08055A86 @ case 10
	.4byte _08055A86 @ case 11
	.4byte _08055A80 @ case 12
	.4byte _08055A80 @ case 13
	.4byte _08055A80 @ case 14
	.4byte _08055A80 @ case 15
	.4byte _08055A86 @ case 16
	.4byte _08055A86 @ case 17
	.4byte _08055A86 @ case 18
	.4byte _08055A86 @ case 19
	.4byte _08055A86 @ case 20
	.4byte _08055A86 @ case 21
	.4byte _08055A80 @ case 22
	.4byte _08055A80 @ case 23
	.4byte _08055A80 @ case 24
	.4byte _08055A80 @ case 25
	.4byte _08055A80 @ case 26
	.4byte _08055A80 @ case 27
	.4byte _08055A86 @ case 28
	.4byte _08055A86 @ case 29
	.4byte _08055A86 @ case 30
	.4byte _08055A86 @ case 31
	.4byte _08055A86 @ case 32
	.4byte _08055A86 @ case 33
	.4byte _08055A86 @ case 34
	.4byte _08055A86 @ case 35
_08055A80:
	movs r0, #0x80
	lsls r0, r0, #8
	b _08055A88
_08055A86:
	movs r0, #0
_08055A88:
	str r0, [r4, #8]
	adds r2, #1
	str r2, [r3, #0x64]
	cmp r2, #0x23
	ble _08055ADA
	movs r0, #0x10
	str r0, [r3, #0x64]
	ldr r0, [r3, #0x60]
	adds r0, #1
	str r0, [r3, #0x60]
	cmp r0, #0x35
	ble _08055ADA
	movs r0, #0
	str r0, [r3, #0x60]
	b _08055ADA
_08055AA6:
	ldrh r0, [r4, #0x34]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08055ADA
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r4]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x30]
	adds r1, r1, r0
	str r1, [r4, #8]
	ldr r2, _08055AE0 @ =0xFFFFC000
	adds r0, r0, r2
	str r0, [r4, #0x30]
	cmp r1, #0
	bgt _08055ADA
	ldrh r1, [r3, #0x34]
	ldr r0, _08055AE4 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r3, #0x34]
_08055ADA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08055AE0: .4byte 0xFFFFC000
_08055AE4: .4byte 0x0000FFFE

	thumb_func_start sub_8055AE8
sub_8055AE8: @ 0x08055AE8
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldrh r0, [r2, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _08055B48
	adds r0, r2, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08055B48
	adds r0, r2, #0
	adds r0, #0x6a
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	beq _08055B48
	movs r0, #7
	str r0, [r3, #0x60]
	adds r0, r2, #0
	adds r0, #0x4e
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	str r0, [r3, #0x28]
	adds r0, r2, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	str r0, [r3, #0x2c]
	movs r0, #0x90
	lsls r0, r0, #0xa
	str r0, [r3, #0x30]
	ldrh r1, [r3, #0x34]
	ldr r0, _08055B50 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r3, #0x34]
_08055B48:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08055B50: .4byte 0x0000FFFD

	thumb_func_start sub_8055B54
sub_8055B54: @ 0x08055B54
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldrh r0, [r2, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _08055BB4
	adds r0, r2, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08055BB4
	adds r0, r2, #0
	adds r0, #0x6a
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	beq _08055BB4
	movs r0, #0x21
	str r0, [r3, #0x60]
	adds r0, r2, #0
	adds r0, #0x4e
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	str r0, [r3, #0x28]
	adds r0, r2, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	str r0, [r3, #0x2c]
	movs r0, #0x90
	lsls r0, r0, #0xa
	str r0, [r3, #0x30]
	ldrh r1, [r3, #0x34]
	ldr r0, _08055BBC @ =0x0000FFFD
	ands r0, r1
	strh r0, [r3, #0x34]
_08055BB4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08055BBC: .4byte 0x0000FFFD

	thumb_func_start sub_8055BC0
sub_8055BC0: @ 0x08055BC0
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldrh r0, [r2, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _08055C20
	adds r0, r2, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08055C20
	adds r0, r2, #0
	adds r0, #0x6a
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	beq _08055C20
	movs r0, #0x37
	str r0, [r3, #0x60]
	adds r0, r2, #0
	adds r0, #0x4e
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	str r0, [r3, #0x28]
	adds r0, r2, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	str r0, [r3, #0x2c]
	movs r0, #0x90
	lsls r0, r0, #0xa
	str r0, [r3, #0x30]
	ldrh r1, [r3, #0x34]
	ldr r0, _08055C28 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r3, #0x34]
_08055C20:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08055C28: .4byte 0x0000FFFD

	thumb_func_start sub_8055C2C
sub_8055C2C: @ 0x08055C2C
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldrh r0, [r2, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _08055C8C
	adds r0, r2, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08055C8C
	adds r0, r2, #0
	adds r0, #0x6a
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	beq _08055C8C
	movs r0, #0x25
	str r0, [r3, #0x60]
	adds r0, r2, #0
	adds r0, #0x4e
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	str r0, [r3, #0x28]
	adds r0, r2, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	str r0, [r3, #0x2c]
	movs r0, #0x90
	lsls r0, r0, #0xa
	str r0, [r3, #0x30]
	ldrh r1, [r3, #0x34]
	ldr r0, _08055C94 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r3, #0x34]
_08055C8C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08055C94: .4byte 0x0000FFFD

	thumb_func_start sub_8055C98
sub_8055C98: @ 0x08055C98
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldrh r0, [r2, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _08055CF8
	adds r0, r2, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08055CF8
	adds r0, r2, #0
	adds r0, #0x6a
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	beq _08055CF8
	movs r0, #0x25
	str r0, [r3, #0x60]
	adds r0, r2, #0
	adds r0, #0x4e
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	str r0, [r3, #0x28]
	adds r0, r2, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	str r0, [r3, #0x2c]
	movs r0, #0x90
	lsls r0, r0, #0xa
	str r0, [r3, #0x30]
	ldrh r1, [r3, #0x34]
	ldr r0, _08055D00 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r3, #0x34]
_08055CF8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08055D00: .4byte 0x0000FFFD

	thumb_func_start sub_8055D04
sub_8055D04: @ 0x08055D04
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldrh r0, [r2, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _08055D64
	adds r0, r2, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08055D64
	adds r0, r2, #0
	adds r0, #0x6a
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	beq _08055D64
	movs r0, #0x37
	str r0, [r3, #0x60]
	adds r0, r2, #0
	adds r0, #0x4e
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	str r0, [r3, #0x28]
	adds r0, r2, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	str r0, [r3, #0x2c]
	movs r0, #0x90
	lsls r0, r0, #0xa
	str r0, [r3, #0x30]
	ldrh r1, [r3, #0x34]
	ldr r0, _08055D6C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r3, #0x34]
_08055D64:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08055D6C: .4byte 0x0000FFFD

	thumb_func_start sub_8055D70
sub_8055D70: @ 0x08055D70
	adds r3, r0, #0
	ldr r0, _08055DAC @ =0x00001004
	strh r0, [r3, #0x10]
	ldr r0, _08055DB0 @ =sub_8055E5C
	str r0, [r3, #0x5c]
	ldr r0, _08055DB4 @ =sub_8055F74
	str r0, [r3, #0x18]
	ldr r0, _08055DB8 @ =_080EFF08
	str r0, [r3, #0x4c]
	ldrh r2, [r3, #0x34]
	ldr r0, _08055DBC @ =0x0000FFFD
	ands r0, r2
	ldr r2, _08055DC0 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r3, #0x34]
	movs r0, #0x10
	strb r0, [r3, #0xe]
	strb r0, [r3, #0xd]
	strb r0, [r3, #0xc]
	movs r0, #1
	str r0, [r3, #0x60]
	ldr r2, _08055DC4 @ =0xFF7DFFFF
	adds r0, r1, r2
	cmp r0, #0xb
	bhi _08055E52
	lsls r0, r0, #2
	ldr r1, _08055DC8 @ =_08055DCC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08055DAC: .4byte 0x00001004
_08055DB0: .4byte sub_8055E5C
_08055DB4: .4byte sub_8055F74
_08055DB8: .4byte _080EFF08
_08055DBC: .4byte 0x0000FFFD
_08055DC0: .4byte 0x0000FFFE
_08055DC4: .4byte 0xFF7DFFFF
_08055DC8: .4byte _08055DCC
_08055DCC: @ jump table
	.4byte _08055DFC @ case 0
	.4byte _08055E02 @ case 1
	.4byte _08055E06 @ case 2
	.4byte _08055E0E @ case 3
	.4byte _08055E16 @ case 4
	.4byte _08055E1E @ case 5
	.4byte _08055E22 @ case 6
	.4byte _08055E2A @ case 7
	.4byte _08055E32 @ case 8
	.4byte _08055E3A @ case 9
	.4byte _08055E42 @ case 10
	.4byte _08055E4A @ case 11
_08055DFC:
	movs r0, #0x64
	str r0, [r3, #0x64]
	b _08055E58
_08055E02:
	movs r0, #0xb4
	b _08055E54
_08055E06:
	movs r0, #0x8c
	str r0, [r3, #0x64]
	movs r0, #0x64
	b _08055E58
_08055E0E:
	movs r0, #0xa0
	str r0, [r3, #0x64]
	movs r0, #0x8c
	b _08055E58
_08055E16:
	movs r0, #0xc8
	str r0, [r3, #0x64]
	movs r0, #0x64
	b _08055E58
_08055E1E:
	movs r0, #0x78
	b _08055E54
_08055E22:
	movs r0, #0x1e
	str r0, [r3, #0x64]
	movs r0, #0x50
	b _08055E58
_08055E2A:
	movs r0, #0x92
	str r0, [r3, #0x64]
	movs r0, #0xb4
	b _08055E58
_08055E32:
	movs r0, #0x7a
	str r0, [r3, #0x64]
	movs r0, #0xb4
	b _08055E58
_08055E3A:
	movs r0, #0x62
	str r0, [r3, #0x64]
	movs r0, #0xb4
	b _08055E58
_08055E42:
	movs r0, #0x4a
	str r0, [r3, #0x64]
	movs r0, #0xb4
	b _08055E58
_08055E4A:
	movs r0, #0x32
	str r0, [r3, #0x64]
	movs r0, #0xb4
	b _08055E58
_08055E52:
	movs r0, #0
_08055E54:
	str r0, [r3, #0x64]
	movs r0, #0x5a
_08055E58:
	str r0, [r3, #0x68]
	bx lr

	thumb_func_start sub_8055E5C
sub_8055E5C: @ 0x08055E5C
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r2, #0
	ldr r0, [r2, #0x64]
	subs r0, #1
	str r0, [r2, #0x64]
	adds r4, r0, #0
	ldr r0, [r2, #0x60]
	cmp r0, #6
	bhi _08055F62
	lsls r0, r0, #2
	ldr r1, _08055E7C @ =_08055E80
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08055E7C: .4byte _08055E80
_08055E80: @ jump table
	.4byte _08055EE4 @ case 0
	.4byte _08055EF4 @ case 1
	.4byte _08055E9C @ case 2
	.4byte _08055EB0 @ case 3
	.4byte _08055F0C @ case 4
	.4byte _08055F18 @ case 5
	.4byte _08055F62 @ case 6
_08055E9C:
	ldr r0, _08055ED8 @ =_080EFF08
	str r0, [r2, #0x4c]
	ldrh r1, [r2, #0x34]
	movs r0, #2
	orrs r0, r1
	movs r1, #1
	orrs r0, r1
	strh r0, [r2, #0x34]
	movs r0, #3
	str r0, [r2, #0x60]
_08055EB0:
	ldr r1, _08055EDC @ =gSinTable
	lsls r0, r4, #5
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	str r0, [r3, #8]
	cmp r4, #0x1f
	bgt _08055EC8
	ldr r0, _08055EE0 @ =_080EFF28
	str r0, [r2, #0x4c]
_08055EC8:
	cmp r4, #0
	bgt _08055F62
	movs r0, #0
	str r0, [r2, #0x60]
	ldr r0, [r2, #0x68]
	str r0, [r2, #0x64]
	b _08055F62
	.align 2, 0
_08055ED8: .4byte _080EFF08
_08055EDC: .4byte gSinTable
_08055EE0: .4byte _080EFF28
_08055EE4:
	ldrh r1, [r2, #0x34]
	ldr r0, _08055F04 @ =0x0000FFFD
	ands r0, r1
	ldr r1, _08055F08 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2, #0x34]
	movs r0, #1
	str r0, [r2, #0x60]
_08055EF4:
	cmp r4, #0
	bgt _08055F62
	movs r0, #2
	str r0, [r2, #0x60]
	movs r0, #0x40
	str r0, [r2, #0x64]
	b _08055F62
	.align 2, 0
_08055F04: .4byte 0x0000FFFD
_08055F08: .4byte 0x0000FFFE
_08055F0C:
	ldrh r0, [r2, #0x34]
	ldr r1, _08055F3C @ =0x0000FFFD
	ands r1, r0
	strh r1, [r2, #0x34]
	movs r0, #5
	str r0, [r2, #0x60]
_08055F18:
	ldr r0, [r3]
	ldr r1, [r2, #0x28]
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, [r3, #4]
	ldr r1, [r2, #0x2c]
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r0, [r3, #8]
	ldr r1, [r2, #0x30]
	adds r0, r0, r1
	str r0, [r3, #8]
	ldr r0, [r2, #0x30]
	cmp r0, #0
	ble _08055F44
	ldr r0, _08055F40 @ =_080EFF08
	b _08055F46
	.align 2, 0
_08055F3C: .4byte 0x0000FFFD
_08055F40: .4byte _080EFF08
_08055F44:
	ldr r0, _08055F68 @ =_080EFF28
_08055F46:
	str r0, [r2, #0x4c]
	ldr r0, [r2, #0x30]
	ldr r1, _08055F6C @ =0xFFFFC000
	adds r0, r0, r1
	str r0, [r2, #0x30]
	ldr r0, [r3, #8]
	cmp r0, #0
	bge _08055F62
	movs r0, #6
	str r0, [r2, #0x60]
	ldrh r1, [r2, #0x34]
	ldr r0, _08055F70 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2, #0x34]
_08055F62:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08055F68: .4byte _080EFF28
_08055F6C: .4byte 0xFFFFC000
_08055F70: .4byte 0x0000FFFE

	thumb_func_start sub_8055F74
sub_8055F74: @ 0x08055F74
	adds r3, r0, #0
	adds r2, r1, #0
	ldrh r0, [r2, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _08055FBE
	adds r0, r2, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08055FBE
	adds r0, r2, #0
	adds r0, #0x6a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08055FBE
	movs r0, #4
	str r0, [r3, #0x60]
	adds r0, r2, #0
	adds r0, #0x4e
	movs r1, #0
	ldrsh r0, [r0, r1]
	str r0, [r3, #0x28]
	adds r0, r2, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	str r0, [r3, #0x2c]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r3, #0x30]
_08055FBE:
	bx lr

	thumb_func_start sub_8055FC0
sub_8055FC0: @ 0x08055FC0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r6, _08056090 @ =0x03002E20
	bl sub_8059E44
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _08055FD8
	b _08056152
_08055FD8:
	ldr r1, [r4, #0x68]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _080560B0
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #0x68]
	ldr r0, _08056094 @ =_080EFF88
	str r0, [r4, #0x4c]
	ldrh r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _08055FFE
	b _08056152
_08055FFE:
	ldr r1, _08056098 @ =0x00000838
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r5, r0
	beq _0805600A
	b _08056152
_0805600A:
	ldr r0, [r5, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08056016
	b _08056152
_08056016:
	adds r0, r5, #0
	adds r0, #0xbc
	ldr r1, [r0]
	adds r0, r1, #0
	cmp r1, #0
	bge _08056024
	rsbs r0, r1, #0
_08056024:
	lsls r0, r0, #6
	lsrs r0, r0, #0x16
	ldr r2, _0805609C @ =0xFFFFFE00
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r1, #0
	cmp r0, #0
	bge _08056038
	rsbs r0, r0, #0
_08056038:
	asrs r4, r0, #0x14
	movs r0, #0x3f
	ands r4, r0
	adds r4, #0xc0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	ldr r0, _080560A0 @ =0x00000177
	bl m4aSongNumStart
	ldr r0, _080560A4 @ =gMPlayTable
	mov r8, r0
	ldr r5, _080560A8 @ =gSongTable
	ldr r1, _080560AC @ =0x00000BB8
	adds r5, r5, r1
	ldrh r1, [r5, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	bl m4aMPlayImmInit
	ldrh r1, [r5, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	movs r1, #1
	adds r2, r4, #0
	bl m4aMPlayVolumeControl
	ldrh r1, [r5, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	movs r1, #1
	adds r2, r6, #0
	bl m4aMPlayPitchControl
	b _08056152
	.align 2, 0
_08056090: .4byte 0x03002E20
_08056094: .4byte _080EFF88
_08056098: .4byte 0x00000838
_0805609C: .4byte 0xFFFFFE00
_080560A0: .4byte 0x00000177
_080560A4: .4byte gMPlayTable
_080560A8: .4byte gSongTable
_080560AC: .4byte 0x00000BB8
_080560B0:
	orrs r1, r2
	str r1, [r4, #0x68]
	ldr r0, _0805615C @ =_080EFF68
	str r0, [r4, #0x4c]
	ldrh r0, [r5, #0x10]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _08056152
	ldr r2, _08056160 @ =0x00000838
	adds r0, r6, r2
	ldr r0, [r0]
	cmp r5, r0
	bne _08056152
	ldr r0, [r5, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08056152
	adds r0, r5, #0
	adds r0, #0xbc
	ldr r1, [r0]
	adds r0, r1, #0
	cmp r1, #0
	bge _080560E6
	rsbs r0, r1, #0
_080560E6:
	lsls r0, r0, #6
	lsrs r0, r0, #0x16
	ldr r2, _08056164 @ =0xFFFFFE00
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r1, #0
	cmp r0, #0
	bge _080560FA
	rsbs r0, r0, #0
_080560FA:
	asrs r4, r0, #0x14
	movs r0, #0x3f
	ands r4, r0
	adds r4, #0xc0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	movs r0, #0xbc
	lsls r0, r0, #1
	bl m4aSongNumStart
	ldr r0, _08056168 @ =gMPlayTable
	mov r8, r0
	ldr r5, _0805616C @ =gSongTable
	movs r1, #0xbc
	lsls r1, r1, #4
	adds r5, r5, r1
	ldrh r1, [r5, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	bl m4aMPlayImmInit
	ldrh r1, [r5, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	movs r1, #1
	adds r2, r4, #0
	bl m4aMPlayVolumeControl
	ldrh r1, [r5, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	movs r1, #1
	adds r2, r6, #0
	bl m4aMPlayPitchControl
_08056152:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805615C: .4byte _080EFF68
_08056160: .4byte 0x00000838
_08056164: .4byte 0xFFFFFE00
_08056168: .4byte gMPlayTable
_0805616C: .4byte gSongTable

	thumb_func_start sub_8056170
sub_8056170: @ 0x08056170
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8059E80
	ldr r0, _08056190 @ =0x00001001
	movs r1, #0
	strh r0, [r4, #0x10]
	ldr r0, _08056194 @ =sub_8055FC0
	str r0, [r4, #0x18]
	ldr r0, _08056198 @ =_080EFF88
	str r0, [r4, #0x4c]
	str r1, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08056190: .4byte 0x00001001
_08056194: .4byte sub_8055FC0
_08056198: .4byte _080EFF88

	thumb_func_start sub_805619C
sub_805619C: @ 0x0805619C
	push {r4, lr}
	adds r2, r0, #0
	ldr r3, [r2, #0x68]
	ldrh r4, [r2, #0x34]
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	bne _080561AE
	b _080562E8
_080561AE:
	cmp r3, #0
	blt _08056278
	cmp r3, #0x95
	ble _080561E8
	ldr r0, _080561E4 @ =0x00000153
	cmp r3, r0
	bgt _08056278
	cmp r3, #0xbe
	blt _08056278
	ldr r0, [r2]
	ldr r1, [r2, #0x28]
	subs r0, r0, r1
	str r0, [r2]
	ldr r0, [r2, #4]
	ldr r1, [r2, #0x2c]
	subs r0, r0, r1
	str r0, [r2, #4]
	ldr r0, [r2, #0x64]
	adds r0, #1
	str r0, [r2, #0x64]
	cmp r0, #6
	bge _080561DC
	b _080562CC
_080561DC:
	ldr r0, [r2, #0x60]
	cmp r0, #0
	beq _08056264
	b _08056240
	.align 2, 0
_080561E4: .4byte 0x00000153
_080561E8:
	ldr r0, [r2]
	ldr r1, [r2, #0x28]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r2, #4]
	ldr r1, [r2, #0x2c]
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, [r2, #0x64]
	adds r0, #1
	str r0, [r2, #0x64]
	cmp r0, #6
	blt _080562CC
	ldr r0, [r2, #0x60]
	cmp r0, #0
	beq _0805622C
	ldr r1, [r2, #0x50]
	ldr r0, _08056214 @ =0x00807FFF
	cmp r1, r0
	bgt _0805621C
	ldr r0, _08056218 @ =_080EFFC8
	b _0805621E
	.align 2, 0
_08056214: .4byte 0x00807FFF
_08056218: .4byte _080EFFC8
_0805621C:
	ldr r0, _08056228 @ =_080F0008
_0805621E:
	str r0, [r2, #0x4c]
	movs r0, #0
	str r0, [r2, #0x60]
	b _080562CA
	.align 2, 0
_08056228: .4byte _080F0008
_0805622C:
	ldr r1, [r2, #0x50]
	ldr r0, _08056238 @ =0x00807FFF
	cmp r1, r0
	bgt _080562C0
	ldr r0, _0805623C @ =_080EFFE8
	b _080562C2
	.align 2, 0
_08056238: .4byte 0x00807FFF
_0805623C: .4byte _080EFFE8
_08056240:
	ldr r1, [r2, #0x50]
	ldr r0, _0805624C @ =0x00807FFF
	cmp r1, r0
	bgt _08056254
	ldr r0, _08056250 @ =_080EFFC8
	b _08056256
	.align 2, 0
_0805624C: .4byte 0x00807FFF
_08056250: .4byte _080EFFC8
_08056254:
	ldr r0, _08056260 @ =_080F0008
_08056256:
	str r0, [r2, #0x4c]
	movs r0, #0
	str r0, [r2, #0x60]
	b _080562CA
	.align 2, 0
_08056260: .4byte _080F0008
_08056264:
	ldr r1, [r2, #0x50]
	ldr r0, _08056270 @ =0x00807FFF
	cmp r1, r0
	bgt _080562C0
	ldr r0, _08056274 @ =_080EFFE8
	b _080562C2
	.align 2, 0
_08056270: .4byte 0x00807FFF
_08056274: .4byte _080EFFE8
_08056278:
	ldr r0, [r2, #0x64]
	adds r0, #1
	str r0, [r2, #0x64]
	cmp r0, #0xa
	blt _080562CC
	ldr r0, [r2, #0x60]
	cmp r0, #0
	beq _080562AC
	ldr r1, [r2, #0x50]
	ldr r0, _08056294 @ =0x00807FFF
	cmp r1, r0
	bgt _0805629C
	ldr r0, _08056298 @ =_080EFFC8
	b _0805629E
	.align 2, 0
_08056294: .4byte 0x00807FFF
_08056298: .4byte _080EFFC8
_0805629C:
	ldr r0, _080562A8 @ =_080F0008
_0805629E:
	str r0, [r2, #0x4c]
	movs r0, #0
	str r0, [r2, #0x60]
	b _080562CA
	.align 2, 0
_080562A8: .4byte _080F0008
_080562AC:
	ldr r1, [r2, #0x50]
	ldr r0, _080562B8 @ =0x00807FFF
	cmp r1, r0
	bgt _080562C0
	ldr r0, _080562BC @ =_080EFFE8
	b _080562C2
	.align 2, 0
_080562B8: .4byte 0x00807FFF
_080562BC: .4byte _080EFFE8
_080562C0:
	ldr r0, _080562E0 @ =_080F0028
_080562C2:
	str r0, [r2, #0x4c]
	movs r0, #1
	str r0, [r2, #0x60]
	movs r0, #0
_080562CA:
	str r0, [r2, #0x64]
_080562CC:
	ldr r0, [r2, #0x68]
	adds r0, #1
	str r0, [r2, #0x68]
	ldr r1, _080562E4 @ =0x0000017B
	cmp r0, r1
	ble _0805630E
	movs r0, #0
	str r0, [r2, #0x68]
	b _0805630E
	.align 2, 0
_080562E0: .4byte _080F0028
_080562E4: .4byte 0x0000017B
_080562E8:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0805630E
	ldr r1, _08056314 @ =gSinTable
	lsls r0, r3, #6
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	str r0, [r2, #8]
	subs r0, r3, #1
	str r0, [r2, #0x68]
	cmp r0, #0
	bge _0805630E
	ldr r0, _08056318 @ =0x0000FFFE
	ands r4, r0
	strh r4, [r2, #0x34]
_0805630E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08056314: .4byte gSinTable
_08056318: .4byte 0x0000FFFE

	thumb_func_start sub_805631C
sub_805631C: @ 0x0805631C
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r0, _08056360 @ =0x00001003
	movs r4, #0
	strh r0, [r2, #0x10]
	ldr r0, _08056364 @ =_080EFFC8
	str r0, [r2, #0x4c]
	ldr r0, _08056368 @ =sub_805619C
	str r0, [r2, #0x5c]
	ldr r0, _0805636C @ =sub_8056388
	str r0, [r2, #0x18]
	ldrh r1, [r2, #0x34]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2, #0x34]
	str r4, [r2, #0x60]
	str r4, [r2, #0x64]
	str r4, [r2, #0x68]
	ldr r0, _08056370 @ =0x00800001
	cmp r3, r0
	beq _08056358
	cmp r3, r0
	ble _08056378
	ldr r0, _08056374 @ =0x00808000
	cmp r3, r0
	beq _08056378
	adds r0, #1
	cmp r3, r0
	bne _08056378
_08056358:
	str r4, [r2, #0x28]
	movs r0, #0x80
	lsls r0, r0, #8
	b _08056380
	.align 2, 0
_08056360: .4byte 0x00001003
_08056364: .4byte _080EFFC8
_08056368: .4byte sub_805619C
_0805636C: .4byte sub_8056388
_08056370: .4byte 0x00800001
_08056374: .4byte 0x00808000
_08056378:
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r2, #0x28]
	movs r0, #0
_08056380:
	str r0, [r2, #0x2c]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8056388
sub_8056388: @ 0x08056388
	adds r3, r0, #0
	adds r2, r1, #0
	ldrh r0, [r2, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _080563C8
	adds r0, r2, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080563C8
	adds r0, r2, #0
	adds r0, #0x6a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080563C8
	movs r0, #0x20
	str r0, [r3, #0x68]
	ldrh r1, [r3, #0x34]
	ldr r0, _080563CC @ =0x0000FFFD
	ands r0, r1
	strh r0, [r3, #0x34]
	ldr r1, _080563D0 @ =0xFFFFFF00
	adds r0, r3, #0
	adds r0, #0x58
	strh r1, [r0]
_080563C8:
	bx lr
	.align 2, 0
_080563CC: .4byte 0x0000FFFD
_080563D0: .4byte 0xFFFFFF00

	thumb_func_start sub_80563D4
sub_80563D4: @ 0x080563D4
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r0, _08056414 @ =0x00001013
	strh r0, [r2, #0x10]
	movs r0, #4
	strb r0, [r2, #0xe]
	strb r0, [r2, #0xd]
	strb r0, [r2, #0xc]
	ldr r0, _08056418 @ =sub_8056440
	str r0, [r2, #0x5c]
	ldr r0, _0805641C @ =_080F0048
	str r0, [r2, #0x4c]
	ldrh r1, [r2, #0x34]
	ldr r0, _08056420 @ =0x0000FFFE
	ands r0, r1
	ldr r1, _08056424 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #0x34]
	movs r0, #1
	str r0, [r2, #0x60]
	ldr r0, _08056428 @ =0x00840001
	cmp r3, r0
	beq _0805642C
	cmp r3, r0
	ble _08056438
	adds r0, #1
	cmp r3, r0
	beq _08056430
	adds r0, #1
	cmp r3, r0
	beq _08056434
	b _08056438
	.align 2, 0
_08056414: .4byte 0x00001013
_08056418: .4byte sub_8056440
_0805641C: .4byte _080F0048
_08056420: .4byte 0x0000FFFE
_08056424: .4byte 0x0000FFFD
_08056428: .4byte 0x00840001
_0805642C:
	movs r0, #0x20
	b _0805643A
_08056430:
	movs r0, #0x40
	b _0805643A
_08056434:
	movs r0, #0x60
	b _0805643A
_08056438:
	movs r0, #0
_0805643A:
	str r0, [r2, #0x64]
	bx lr
	.align 2, 0

	thumb_func_start sub_8056440
sub_8056440: @ 0x08056440
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, [r6, #0x64]
	subs r7, r0, #1
	ldr r0, [r6, #0x60]
	cmp r7, #0
	bge _0805645C
	adds r0, #1
	cmp r0, #5
	ble _0805645C
	movs r0, #0
	movs r7, #0
_0805645C:
	str r0, [r6, #0x60]
	str r7, [r6, #0x64]
	cmp r0, #5
	bls _08056466
	b _08056734
_08056466:
	lsls r0, r0, #2
	ldr r1, _08056470 @ =_08056474
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08056470: .4byte _08056474
_08056474: @ jump table
	.4byte _0805648C @ case 0
	.4byte _08056734 @ case 1
	.4byte _080564B4 @ case 2
	.4byte _08056568 @ case 3
	.4byte _080565CC @ case 4
	.4byte _0805664E @ case 5
_0805648C:
	movs r0, #1
	str r0, [r6, #0x60]
	movs r0, #0x40
	str r0, [r6, #0x64]
	movs r0, #4
	strb r0, [r6, #0xe]
	strb r0, [r6, #0xd]
	strb r0, [r6, #0xc]
	ldrh r1, [r6, #0x34]
	ldr r0, _080564AC @ =0x0000FFFE
	ands r0, r1
	ldr r1, _080564B0 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r6, #0x34]
	b _08056734
	.align 2, 0
_080564AC: .4byte 0x0000FFFE
_080564B0: .4byte 0x0000FFFD
_080564B4:
	movs r0, #3
	str r0, [r6, #0x60]
	ldr r0, _080565AC @ =0x000003E7
	str r0, [r6, #0x64]
	ldr r0, _080565B0 @ =_080F0048
	str r0, [r6, #0x4c]
	ldr r0, _080565B4 @ =main_dummyIrqHandler6
	str r0, [r6, #0x18]
	movs r0, #0xa0
	lsls r0, r0, #0xe
	str r0, [r6, #8]
	movs r0, #0
	str r0, [r6, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r6, #0
	adds r0, #0x56
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrh r0, [r6, #0x34]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strh r0, [r6, #0x34]
	ldr r0, _080565B8 @ =0x03002E20
	adds r3, r0, #0
	adds r3, #0x24
	ldr r1, _080565BC @ =0x00000838
	adds r0, r0, r1
	ldr r2, [r0]
	movs r0, #0x24
	ldrsh r1, [r6, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08056568
	ldr r0, [r2, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08056568
	ldr r7, _080565C0 @ =gMPlayTable
	ldr r0, _080565C4 @ =gSongTable
	movs r1, #0xbf
	lsls r1, r1, #4
	adds r5, r0, r1
	ldrh r1, [r5, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r0, #0
	bne _08056568
	adds r0, r3, #0
	adds r1, r6, #0
	bl sub_804CD28
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x3f
	ble _08056568
	adds r4, r2, #0
	cmp r4, #0
	beq _08056568
	movs r0, #0xbf
	lsls r0, r0, #1
	bl m4aSongNumStart
	ldrh r1, [r5, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	bl m4aMPlayImmInit
	ldrh r1, [r5, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #1
	adds r2, r4, #0
	bl m4aMPlayVolumeControl
_08056568:
	adds r3, r6, #0
	adds r3, #0x56
	movs r1, #0
	ldrsh r0, [r3, r1]
	subs r0, #0x18
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bgt _08056582
	adds r2, r1, #0
_08056582:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	strh r0, [r3]
	adds r1, r6, #0
	adds r1, #0x58
	strh r0, [r1]
	ldr r0, [r6, #0x30]
	ldr r1, _080565C8 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r6, #0x30]
	ldr r1, [r6, #8]
	adds r1, r1, r0
	cmp r1, #0
	bgt _080565A8
	movs r1, #0
	movs r0, #4
	str r0, [r6, #0x60]
	movs r0, #1
	str r0, [r6, #0x64]
_080565A8:
	str r1, [r6, #8]
	b _08056734
	.align 2, 0
_080565AC: .4byte 0x000003E7
_080565B0: .4byte _080F0048
_080565B4: .4byte main_dummyIrqHandler6
_080565B8: .4byte 0x03002E20
_080565BC: .4byte 0x00000838
_080565C0: .4byte gMPlayTable
_080565C4: .4byte gSongTable
_080565C8: .4byte 0xFFFFF800
_080565CC:
	ldr r0, _0805665C @ =main_dummyIrqHandler7
	str r0, [r6, #0x18]
	movs r0, #5
	str r0, [r6, #0x60]
	movs r0, #0x1f
	str r0, [r6, #0x64]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r6, #0
	adds r0, #0x56
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrh r1, [r6, #0x34]
	ldr r0, _08056660 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r6, #0x34]
	ldr r0, _08056664 @ =0x03002E20
	adds r2, r0, #0
	adds r2, #0x24
	ldr r1, _08056668 @ =0x00000838
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805664E
	adds r0, r2, #0
	adds r1, r6, #0
	bl sub_804CD28
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x3f
	ble _0805664E
	adds r5, r2, #0
	cmp r5, #0
	beq _0805664E
	ldr r0, _0805666C @ =0x0000017F
	bl m4aSongNumStart
	ldr r0, _08056670 @ =gMPlayTable
	mov r8, r0
	ldr r4, _08056674 @ =gSongTable
	ldr r1, _08056678 @ =0x00000BF8
	adds r4, r4, r1
	ldrh r1, [r4, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	bl m4aMPlayImmInit
	ldrh r1, [r4, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	movs r1, #1
	adds r2, r5, #0
	bl m4aMPlayVolumeControl
_0805664E:
	cmp r7, #0x1f
	bhi _08056730
	lsls r0, r7, #2
	ldr r1, _0805667C @ =_08056680
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805665C: .4byte main_dummyIrqHandler7
_08056660: .4byte 0x0000FFFD
_08056664: .4byte 0x03002E20
_08056668: .4byte 0x00000838
_0805666C: .4byte 0x0000017F
_08056670: .4byte gMPlayTable
_08056674: .4byte gSongTable
_08056678: .4byte 0x00000BF8
_0805667C: .4byte _08056680
_08056680: @ jump table
	.4byte _08056730 @ case 0
	.4byte _08056730 @ case 1
	.4byte _08056730 @ case 2
	.4byte _08056730 @ case 3
	.4byte _08056730 @ case 4
	.4byte _08056730 @ case 5
	.4byte _08056730 @ case 6
	.4byte _08056730 @ case 7
	.4byte _08056728 @ case 8
	.4byte _08056728 @ case 9
	.4byte _08056728 @ case 10
	.4byte _08056728 @ case 11
	.4byte _08056728 @ case 12
	.4byte _08056728 @ case 13
	.4byte _08056720 @ case 14
	.4byte _08056720 @ case 15
	.4byte _08056720 @ case 16
	.4byte _08056720 @ case 17
	.4byte _08056720 @ case 18
	.4byte _08056720 @ case 19
	.4byte _08056718 @ case 20
	.4byte _08056718 @ case 21
	.4byte _08056718 @ case 22
	.4byte _08056718 @ case 23
	.4byte _08056710 @ case 24
	.4byte _08056710 @ case 25
	.4byte _08056710 @ case 26
	.4byte _08056710 @ case 27
	.4byte _08056700 @ case 28
	.4byte _08056700 @ case 29
	.4byte _08056700 @ case 30
	.4byte _08056700 @ case 31
_08056700:
	movs r0, #0x14
	strb r0, [r6, #0xe]
	strb r0, [r6, #0xd]
	strb r0, [r6, #0xc]
	ldr r0, _0805670C @ =_080F0068
	b _08056732
	.align 2, 0
_0805670C: .4byte _080F0068
_08056710:
	ldr r0, _08056714 @ =_080F0088
	b _08056732
	.align 2, 0
_08056714: .4byte _080F0088
_08056718:
	ldr r0, _0805671C @ =_080F00A8
	b _08056732
	.align 2, 0
_0805671C: .4byte _080F00A8
_08056720:
	ldr r0, _08056724 @ =_080F00C8
	b _08056732
	.align 2, 0
_08056724: .4byte _080F00C8
_08056728:
	ldr r0, _0805672C @ =_080F00E8
	b _08056732
	.align 2, 0
_0805672C: .4byte _080F00E8
_08056730:
	ldr r0, _08056740 @ =_080F0108
_08056732:
	str r0, [r6, #0x4c]
_08056734:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056740: .4byte _080F0108

	thumb_func_start main_dummyIrqHandler6
main_dummyIrqHandler6: @ 0x08056744
	bx lr
	.align 2, 0

	thumb_func_start main_dummyIrqHandler7
main_dummyIrqHandler7: @ 0x08056748
	bx lr
	.align 2, 0

	thumb_func_start sub_805674C
sub_805674C: @ 0x0805674C
	ldr r1, _08056760 @ =0x00001001
	movs r2, #0
	strh r1, [r0, #0x10]
	ldr r1, _08056764 @ =sub_805676C
	str r1, [r0, #0x5c]
	ldr r1, _08056768 @ =_080F0268
	str r1, [r0, #0x4c]
	str r2, [r0, #0x60]
	bx lr
	.align 2, 0
_08056760: .4byte 0x00001001
_08056764: .4byte sub_805676C
_08056768: .4byte _080F0268

	thumb_func_start sub_805676C
sub_805676C: @ 0x0805676C
	adds r1, r0, #0
	ldr r0, [r1, #0x60]
	adds r0, #1
	str r0, [r1, #0x60]
	cmp r0, #0x14
	bne _08056784
	ldr r0, _08056780 @ =_080F0288
	str r0, [r1, #0x4c]
	b _08056790
	.align 2, 0
_08056780: .4byte _080F0288
_08056784:
	cmp r0, #0x28
	bne _08056790
	ldr r0, _08056794 @ =_080F0268
	str r0, [r1, #0x4c]
	movs r0, #0
	str r0, [r1, #0x60]
_08056790:
	bx lr
	.align 2, 0
_08056794: .4byte _080F0268

	thumb_func_start sub_8056798
sub_8056798: @ 0x08056798
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x60]
	cmp r5, #0x3c
	bgt _080567AC
	cmp r5, #1
	bge _080567CA
	cmp r5, #0
	beq _080567B6
	b _08056836
_080567AC:
	cmp r5, #0x3d
	beq _08056804
	cmp r5, #0x8c
	bgt _08056836
	b _08056810
_080567B6:
	movs r0, #0x10
	str r0, [r4, #0x64]
	movs r0, #0xa
	str r0, [r4, #0x68]
	ldrh r1, [r4, #0x34]
	ldr r0, _080567FC @ =0x0000FFFE
	ands r0, r1
	ldr r1, _08056800 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #0x34]
_080567CA:
	cmp r5, #0x1c
	ble _080567F8
	adds r2, r5, #0
	subs r2, #0x1c
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #3
	movs r0, #0x80
	lsls r0, r0, #4
	adds r3, r0, #0
	subs r1, r3, r1
	movs r0, #0x35
	muls r0, r2, r0
	subs r3, r3, r0
	ldrh r2, [r4, #0x34]
	movs r0, #1
	orrs r0, r2
	strh r0, [r4, #0x34]
	adds r0, r4, #0
	adds r0, #0x56
	strh r1, [r0]
	adds r0, #2
	strh r3, [r0]
_080567F8:
	adds r5, #1
	b _08056836
	.align 2, 0
_080567FC: .4byte 0x0000FFFE
_08056800: .4byte 0x0000FFFD
_08056804:
	ldrh r0, [r4, #0x34]
	movs r1, #1
	orrs r1, r0
	movs r0, #2
	orrs r1, r0
	strh r1, [r4, #0x34]
_08056810:
	adds r0, r4, #0
	bl sub_8056848
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r0, r1
	str r0, [r4, #8]
	adds r5, #1
	cmp r5, #0x8b
	ble _08056836
	movs r5, #0
	ldrh r0, [r4, #0x34]
	ldr r1, _08056840 @ =0x0000FFFE
	ands r1, r0
	ldr r0, _08056844 @ =0x0000FFFD
	ands r1, r0
	strh r1, [r4, #0x34]
	str r5, [r4, #8]
_08056836:
	str r5, [r4, #0x60]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08056840: .4byte 0x0000FFFE
_08056844: .4byte 0x0000FFFD

	thumb_func_start sub_8056848
sub_8056848: @ 0x08056848
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x64]
	subs r6, r0, #1
	ldr r0, [r4, #0x68]
	subs r5, r0, #1
	cmp r6, #7
	ble _08056878
	ldr r1, _08056870 @ =gSinTable
	lsls r0, r6, #8
	adds r0, r0, r1
	ldr r0, [r0]
	adds r7, r1, #0
	cmp r0, #0
	bge _0805686A
	ldr r1, _08056874 @ =0x000003FF
	adds r0, r0, r1
_0805686A:
	asrs r0, r0, #0xa
	b _0805688C
	.align 2, 0
_08056870: .4byte gSinTable
_08056874: .4byte 0x000003FF
_08056878:
	ldr r1, _080568BC @ =gSinTable
	lsls r0, r6, #8
	adds r0, r0, r1
	ldr r0, [r0]
	adds r7, r1, #0
	cmp r0, #0
	bge _0805688A
	ldr r1, _080568C0 @ =0x000001FF
	adds r0, r0, r1
_0805688A:
	asrs r0, r0, #9
_0805688C:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x56
	strh r0, [r1]
	cmp r6, #0
	bgt _0805689E
	movs r6, #0x10
_0805689E:
	cmp r5, #9
	ble _080568C8
	lsls r0, r5, #0xa
	movs r1, #0x14
	bl __divsi3
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	cmp r0, #0
	bge _080568B8
	ldr r1, _080568C4 @ =0x000003FF
	adds r0, r0, r1
_080568B8:
	asrs r0, r0, #0xa
	b _080568E0
	.align 2, 0
_080568BC: .4byte gSinTable
_080568C0: .4byte 0x000001FF
_080568C4: .4byte 0x000003FF
_080568C8:
	lsls r0, r5, #0xa
	movs r1, #0x14
	bl __divsi3
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	cmp r0, #0
	bge _080568DE
	ldr r1, _08056904 @ =0x000001FF
	adds r0, r0, r1
_080568DE:
	asrs r0, r0, #9
_080568E0:
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0x58
	strh r0, [r1]
	cmp r5, #0
	bgt _080568F2
	movs r5, #0x14
_080568F2:
	adds r1, r4, #0
	adds r1, #0x5a
	movs r0, #0
	strh r0, [r1]
	str r6, [r4, #0x64]
	str r5, [r4, #0x68]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08056904: .4byte 0x000001FF

	thumb_func_start sub_8056908
sub_8056908: @ 0x08056908
	ldr r1, _0805691C @ =0x0000100A
	movs r2, #0
	strh r1, [r0, #0x10]
	ldr r1, _08056920 @ =sub_8056798
	str r1, [r0, #0x5c]
	ldr r1, _08056924 @ =_080F02A8
	str r1, [r0, #0x4c]
	str r2, [r0, #8]
	str r2, [r0, #0x60]
	bx lr
	.align 2, 0
_0805691C: .4byte 0x0000100A
_08056920: .4byte sub_8056798
_08056924: .4byte _080F02A8

	thumb_func_start sub_8056928
sub_8056928: @ 0x08056928
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _08056984 @ =0x03002E20
	ldr r1, _08056988 @ =0x00000848
	adds r0, r0, r1
	ldr r5, _0805698C @ =gSinTable
	movs r1, #0x14
	ldrsh r2, [r0, r1]
	adds r0, r2, #0
	cmp r2, #0
	bge _08056942
	adds r0, #0x3f
_08056942:
	asrs r3, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r3
	ldr r1, _08056990 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r4, [r0]
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r3, [r0]
	adds r0, r6, #0
	cmp r0, #0
	bge _08056966
	adds r0, #0xff
_08056966:
	asrs r0, r0, #8
	adds r2, r0, #0
	muls r2, r4, r2
	adds r1, r7, #0
	cmp r1, #0
	bge _08056974
	adds r1, #0xff
_08056974:
	asrs r0, r1, #8
	muls r0, r3, r0
	subs r0, r2, r0
	cmp r0, #0
	bge _08056994
	movs r0, #0
	b _08056996
	.align 2, 0
_08056984: .4byte 0x03002E20
_08056988: .4byte 0x00000848
_0805698C: .4byte gSinTable
_08056990: .4byte 0x000003FF
_08056994:
	movs r0, #1
_08056996:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805699C
sub_805699C: @ 0x0805699C
	adds r3, r0, #0
	ldr r0, _08056A00 @ =0x00001005
	movs r2, #0
	movs r1, #0
	strh r0, [r3, #0x10]
	movs r0, #8
	strb r0, [r3, #0xe]
	strb r0, [r3, #0xd]
	strb r0, [r3, #0xc]
	ldr r0, _08056A04 @ =_080F0648
	str r0, [r3, #0x4c]
	adds r0, r3, #0
	adds r0, #0x60
	strb r2, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strb r2, [r0]
	adds r2, r3, #0
	adds r2, #0x66
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r2]
	adds r0, r3, #0
	adds r0, #0x68
	strh r1, [r0]
	adds r2, #4
	movs r0, #0x10
	strb r0, [r2]
	str r1, [r3, #0x28]
	str r1, [r3, #0x2c]
	str r1, [r3, #0x30]
	ldr r0, _08056A08 @ =sub_8056BC8
	str r0, [r3, #0x18]
	ldr r0, _08056A0C @ =sub_8056A10
	str r0, [r3, #0x5c]
	ldrh r0, [r3, #0x34]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strh r0, [r3, #0x34]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r3, #0
	adds r0, #0x56
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	bx lr
	.align 2, 0
_08056A00: .4byte 0x00001005
_08056A04: .4byte _080F0648
_08056A08: .4byte sub_8056BC8
_08056A0C: .4byte sub_8056A10

	thumb_func_start sub_8056A10
sub_8056A10: @ 0x08056A10
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x60
	ldrb r0, [r0]
	cmp r0, #8
	bls _08056A1E
	b _08056BBC
_08056A1E:
	lsls r0, r0, #2
	ldr r1, _08056A28 @ =_08056A2C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08056A28: .4byte _08056A2C
_08056A2C: @ jump table
	.4byte _08056A50 @ case 0
	.4byte _08056A72 @ case 1
	.4byte _08056A82 @ case 2
	.4byte _08056AEA @ case 3
	.4byte _08056AFA @ case 4
	.4byte _08056B68 @ case 5
	.4byte _08056B86 @ case 6
	.4byte _08056BA8 @ case 7
	.4byte _08056BBC @ case 8
_08056A50:
	adds r2, r4, #0
	adds r2, #0x62
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _08056A64
	subs r0, r1, #1
	strh r0, [r2]
	b _08056BBC
_08056A64:
	adds r0, r4, #0
	adds r0, #0x60
	movs r1, #2
	strb r1, [r0]
	movs r0, #0x40
	strh r0, [r2]
	b _08056BBC
_08056A72:
	adds r0, r4, #0
	adds r0, #0x60
	movs r1, #2
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x62
	movs r0, #0x80
	strh r0, [r1]
_08056A82:
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r4]
	ldr r0, [r4, #4]
	ldr r3, [r4, #0x2c]
	adds r0, r0, r3
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x66
	movs r5, #0
	ldrsh r2, [r0, r5]
	adds r0, #4
	ldrb r0, [r0]
	muls r0, r2, r0
	cmp r1, r0
	beq _08056AB4
	adds r0, r1, r2
	str r0, [r4, #0x28]
	adds r0, r4, #0
	adds r0, #0x68
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, r3, r0
	str r0, [r4, #0x2c]
_08056AB4:
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	bl sub_8056928
	cmp r0, #0
	beq _08056AC8
	ldr r0, _08056AC4 @ =0xFFFFFF00
	b _08056ACC
	.align 2, 0
_08056AC4: .4byte 0xFFFFFF00
_08056AC8:
	movs r0, #0x80
	lsls r0, r0, #1
_08056ACC:
	adds r1, r4, #0
	adds r1, #0x56
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x62
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08056BBC
	adds r0, r4, #0
	adds r0, #0x60
	movs r1, #3
	b _08056B60
_08056AEA:
	adds r0, r4, #0
	adds r0, #0x60
	movs r1, #4
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x62
	movs r0, #0x80
	strh r0, [r1]
_08056AFA:
	ldr r0, [r4]
	ldr r1, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r4]
	ldr r0, [r4, #4]
	ldr r3, [r4, #0x2c]
	adds r0, r0, r3
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x66
	movs r5, #0
	ldrsh r2, [r0, r5]
	adds r0, #4
	ldrb r0, [r0]
	muls r0, r2, r0
	cmp r1, r0
	beq _08056B2C
	subs r0, r1, r2
	str r0, [r4, #0x28]
	adds r0, r4, #0
	adds r0, #0x68
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, r3, r0
	str r0, [r4, #0x2c]
_08056B2C:
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	bl sub_8056928
	cmp r0, #0
	beq _08056B40
	ldr r0, _08056B3C @ =0xFFFFFF00
	b _08056B44
	.align 2, 0
_08056B3C: .4byte 0xFFFFFF00
_08056B40:
	movs r0, #0x80
	lsls r0, r0, #1
_08056B44:
	adds r1, r4, #0
	adds r1, #0x56
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x62
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08056BBC
	adds r0, r4, #0
	adds r0, #0x60
	movs r1, #1
_08056B60:
	strb r1, [r0]
	movs r0, #0x80
	strh r0, [r2]
	b _08056BBC
_08056B68:
	adds r1, r4, #0
	adds r1, #0x60
	movs r0, #6
	strb r0, [r1]
	ldrh r1, [r4, #0x34]
	ldr r0, _08056B9C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #0x34]
	ldr r1, _08056BA0 @ =0xFFFFFF00
	adds r0, r4, #0
	adds r0, #0x58
	strh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r4, #0x30]
_08056B86:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x30]
	adds r0, r0, r1
	str r0, [r4, #8]
	cmp r0, #0
	blt _08056BA8
	ldr r2, _08056BA4 @ =0xFFFFC000
	adds r0, r1, r2
	str r0, [r4, #0x30]
	b _08056BBC
	.align 2, 0
_08056B9C: .4byte 0x0000FFFD
_08056BA0: .4byte 0xFFFFFF00
_08056BA4: .4byte 0xFFFFC000
_08056BA8:
	adds r1, r4, #0
	adds r1, #0x60
	movs r2, #0
	movs r0, #8
	strb r0, [r1]
	str r2, [r4, #0x18]
	ldrh r1, [r4, #0x34]
	ldr r0, _08056BC4 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r4, #0x34]
_08056BBC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08056BC4: .4byte 0x0000FFFE

	thumb_func_start sub_8056BC8
sub_8056BC8: @ 0x08056BC8
	adds r3, r0, #0
	adds r2, r1, #0
	ldrh r0, [r2, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _08056BFC
	adds r0, r2, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08056BFC
	adds r0, r2, #0
	adds r0, #0x6a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08056BFC
	adds r1, r3, #0
	adds r1, #0x60
	movs r0, #5
	strb r0, [r1]
_08056BFC:
	bx lr
	.align 2, 0

	thumb_func_start sub_8056C00
sub_8056C00: @ 0x08056C00
	mov ip, r0
	ldr r0, _08056C60 @ =0x00001006
	movs r3, #0
	mov r1, ip
	strh r0, [r1, #0x10]
	movs r0, #8
	strb r0, [r1, #0xe]
	strb r0, [r1, #0xd]
	strb r0, [r1, #0xc]
	ldr r0, _08056C64 @ =_080F0628
	str r0, [r1, #0x4c]
	ldr r0, _08056C68 @ =sub_8056EB0
	str r0, [r1, #0x18]
	ldr r0, _08056C6C @ =sub_8056C70
	str r0, [r1, #0x5c]
	ldrh r0, [r1, #0x34]
	movs r1, #1
	movs r2, #0
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	mov r1, ip
	strh r0, [r1, #0x34]
	movs r1, #0x80
	lsls r1, r1, #1
	mov r0, ip
	adds r0, #0x56
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #8
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #3
	movs r1, #0x80
	lsls r1, r1, #4
	strh r1, [r0]
	adds r0, #2
	strh r3, [r0]
	adds r0, #2
	strh r1, [r0]
	mov r0, ip
	str r3, [r0, #8]
	adds r0, #0x62
	strh r3, [r0]
	bx lr
	.align 2, 0
_08056C60: .4byte 0x00001006
_08056C64: .4byte _080F0628
_08056C68: .4byte sub_8056EB0
_08056C6C: .4byte sub_8056C70

	thumb_func_start sub_8056C70
sub_8056C70: @ 0x08056C70
	push {r4, lr}
	mov ip, r0
	adds r0, #0x60
	ldrb r0, [r0]
	cmp r0, #0x18
	bls _08056C7E
	b _08056EA6
_08056C7E:
	lsls r0, r0, #2
	ldr r1, _08056C88 @ =_08056C8C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08056C88: .4byte _08056C8C
_08056C8C: @ jump table
	.4byte _08056CF0 @ case 0
	.4byte _08056D06 @ case 1
	.4byte _08056D18 @ case 2
	.4byte _08056D42 @ case 3
	.4byte _08056D80 @ case 4
	.4byte _08056D06 @ case 5
	.4byte _08056D18 @ case 6
	.4byte _08056D42 @ case 7
	.4byte _08056D80 @ case 8
	.4byte _08056DCC @ case 9
	.4byte _08056DE0 @ case 10
	.4byte _08056D06 @ case 11
	.4byte _08056D18 @ case 12
	.4byte _08056D42 @ case 13
	.4byte _08056D80 @ case 14
	.4byte _08056D06 @ case 15
	.4byte _08056D18 @ case 16
	.4byte _08056D42 @ case 17
	.4byte _08056D80 @ case 18
	.4byte _08056DCC @ case 19
	.4byte _08056DE0 @ case 20
	.4byte _08056E3A @ case 21
	.4byte _08056E66 @ case 22
	.4byte _08056E88 @ case 23
	.4byte _08056EA6 @ case 24
_08056CF0:
	mov r1, ip
	adds r1, #0x61
	ldrb r0, [r1]
	cmp r0, #0
	beq _08056D00
	subs r0, #1
	strb r0, [r1]
	b _08056EA6
_08056D00:
	mov r1, ip
	adds r1, #0x60
	b _08056E34
_08056D06:
	mov r0, ip
	adds r0, #0x60
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	mov r1, ip
	adds r1, #0x61
	movs r0, #0xf
	strb r0, [r1]
_08056D18:
	mov r2, ip
	adds r2, #0x61
	ldrb r0, [r2]
	lsls r0, r0, #4
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	subs r1, r1, r0
	mov r0, ip
	adds r0, #0x58
	strh r1, [r0]
	ldrb r0, [r2]
	cmp r0, #0
	beq _08056D3A
	subs r0, #1
	strb r0, [r2]
	b _08056EA6
_08056D3A:
	mov r1, ip
	adds r1, #0x60
	ldrb r0, [r1]
	b _08056E28
_08056D42:
	mov r1, ip
	adds r1, #0x60
	ldrb r0, [r1]
	adds r0, #1
	movs r2, #0
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x61
	strb r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	subs r0, #9
	strh r1, [r0]
	adds r0, #0xc
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r0, r0, #5
	mov r1, ip
	str r0, [r1, #0x28]
	mov r0, ip
	adds r0, #0x66
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #5
	str r0, [r1, #0x2c]
	mov r0, ip
	adds r0, #0x68
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #5
	str r0, [r1, #0x30]
_08056D80:
	mov r4, ip
	ldr r0, [r4]
	ldr r2, [r4, #0x28]
	adds r0, r0, r2
	str r0, [r4]
	ldr r0, [r4, #4]
	ldr r3, [r4, #0x2c]
	adds r0, r0, r3
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x30]
	adds r0, r0, r1
	str r0, [r4, #8]
	mov r0, ip
	adds r0, #0x64
	movs r4, #0
	ldrsh r0, [r0, r4]
	subs r2, r2, r0
	mov r0, ip
	str r2, [r0, #0x28]
	adds r0, #0x66
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r3, r3, r0
	mov r4, ip
	str r3, [r4, #0x2c]
	mov r0, ip
	adds r0, #0x68
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	str r1, [r4, #0x30]
	cmp r1, #0
	bne _08056EA6
	mov r1, ip
	adds r1, #0x60
	ldrb r0, [r1]
	b _08056E28
_08056DCC:
	mov r0, ip
	adds r0, #0x60
	ldrb r1, [r0]
	adds r1, #1
	movs r2, #0
	strb r1, [r0]
	adds r0, #1
	strb r2, [r0]
	mov r3, ip
	str r2, [r3, #0x30]
_08056DE0:
	mov r4, ip
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x30]
	subs r0, r0, r1
	str r0, [r4, #8]
	ldr r0, _08056E30 @ =0x00007FFF
	cmp r1, r0
	bgt _08056DF8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r1, r2
	str r0, [r4, #0x30]
_08056DF8:
	mov r3, ip
	ldr r1, [r3, #8]
	mov r0, ip
	adds r0, #0x62
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r0, r0, #0x10
	cmp r1, r0
	bgt _08056EA6
	str r0, [r3, #8]
	mov r0, ip
	adds r0, #0x64
	ldrh r1, [r0]
	rsbs r1, r1, #0
	strh r1, [r0]
	mov r1, ip
	adds r1, #0x66
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
	subs r1, #6
	ldrb r0, [r1]
	cmp r0, #0xa
	bne _08056E34
_08056E28:
	adds r0, #1
	strb r0, [r1]
	b _08056EA6
	.align 2, 0
_08056E30: .4byte 0x00007FFF
_08056E34:
	movs r0, #1
	strb r0, [r1]
	b _08056EA6
_08056E3A:
	mov r1, ip
	adds r1, #0x60
	movs r2, #0
	movs r0, #0x16
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x61
	strb r2, [r0]
	mov r0, ip
	ldrh r1, [r0, #0x34]
	ldr r0, _08056E7C @ =0x0000FFFD
	ands r0, r1
	mov r1, ip
	strh r0, [r1, #0x34]
	ldr r1, _08056E80 @ =0xFFFFFF00
	mov r0, ip
	adds r0, #0x58
	strh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	mov r2, ip
	str r0, [r2, #0x30]
_08056E66:
	mov r3, ip
	ldr r0, [r3, #8]
	ldr r1, [r3, #0x30]
	adds r0, r0, r1
	str r0, [r3, #8]
	cmp r0, #0
	blt _08056E88
	ldr r4, _08056E84 @ =0xFFFFC000
	adds r0, r1, r4
	str r0, [r3, #0x30]
	b _08056EA6
	.align 2, 0
_08056E7C: .4byte 0x0000FFFD
_08056E80: .4byte 0xFFFFFF00
_08056E84: .4byte 0xFFFFC000
_08056E88:
	mov r1, ip
	adds r1, #0x60
	movs r2, #0
	movs r0, #0x18
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x61
	strb r2, [r0]
	mov r0, ip
	str r2, [r0, #0x18]
	ldrh r1, [r0, #0x34]
	ldr r0, _08056EAC @ =0x0000FFFE
	ands r0, r1
	mov r1, ip
	strh r0, [r1, #0x34]
_08056EA6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08056EAC: .4byte 0x0000FFFE

	thumb_func_start sub_8056EB0
sub_8056EB0: @ 0x08056EB0
	adds r3, r0, #0
	adds r2, r1, #0
	ldrh r0, [r2, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _08056EE4
	adds r0, r2, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08056EE4
	adds r0, r2, #0
	adds r0, #0x6a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08056EE4
	adds r1, r3, #0
	adds r1, #0x60
	movs r0, #0x15
	strb r0, [r1]
_08056EE4:
	bx lr
	.align 2, 0

	thumb_func_start sub_8056EE8
sub_8056EE8: @ 0x08056EE8
	adds r3, r0, #0
	ldr r0, _08056F28 @ =0x00001007
	movs r2, #0
	strh r0, [r3, #0x10]
	movs r0, #0x24
	movs r1, #0x40
	strb r0, [r3, #0xc]
	strb r0, [r3, #0xd]
	strb r1, [r3, #0xe]
	ldr r0, _08056F2C @ =sub_805704C
	str r0, [r3, #0x18]
	ldr r0, _08056F30 @ =sub_8056F60
	str r0, [r3, #0x5c]
	ldr r0, _08056F34 @ =_080F07A8
	str r0, [r3, #0x4c]
	movs r0, #0x10
	str r0, [r3, #0x60]
	str r2, [r3, #0x64]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r3, #0x68]
	ldr r1, [r3, #0x50]
	movs r0, #0x8d
	lsls r0, r0, #0x10
	cmp r1, r0
	beq _08056F3C
	adds r0, #1
	cmp r1, r0
	bne _08056F3C
	ldr r0, _08056F38 @ =0xFFFFC000
	b _08056F40
	.align 2, 0
_08056F28: .4byte 0x00001007
_08056F2C: .4byte sub_805704C
_08056F30: .4byte sub_8056F60
_08056F34: .4byte _080F07A8
_08056F38: .4byte 0xFFFFC000
_08056F3C:
	movs r0, #0x80
	lsls r0, r0, #7
_08056F40:
	strh r0, [r3, #0x26]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r3, #0
	adds r0, #0x56
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrh r0, [r3, #0x34]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strh r0, [r3, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start sub_8056F60
sub_8056F60: @ 0x08056F60
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x60]
	cmp r0, #0xf0
	beq _08056FF4
	cmp r0, #0xf0
	bgt _08056F78
	cmp r0, #0x10
	beq _08056F82
	cmp r0, #0x11
	beq _08056F86
	b _08057040
_08056F78:
	cmp r0, #0xf2
	beq _08057030
	cmp r0, #0xf2
	blt _0805700E
	b _08057040
_08056F82:
	movs r0, #0x11
	str r0, [r2, #0x60]
_08056F86:
	ldr r3, [r2, #0x64]
	ldr r1, _08056FD4 @ =gSinTable
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08056F94
	adds r0, #0x3f
_08056F94:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldr r1, [r2, #0x68]
	adds r0, r0, r1
	str r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r3, r1
	str r0, [r2, #0x64]
	ldr r4, _08056FD8 @ =_080F07A8
	ldr r3, _08056FDC @ =_080F07C8
	ldr r0, _08056FE0 @ =0x03002E20
	ldr r5, _08056FE4 @ =0x00000848
	adds r0, r0, r5
	movs r5, #0x26
	ldrsh r1, [r2, r5]
	movs r5, #0x14
	ldrsh r0, [r0, r5]
	subs r1, r1, r0
	ldr r0, _08056FE8 @ =0x0000FFFF
	ands r1, r0
	ldr r0, _08056FEC @ =0x00007FFF
	cmp r1, r0
	bgt _08056FF0
	str r4, [r2, #0x4c]
	b _08057040
	.align 2, 0
_08056FD4: .4byte gSinTable
_08056FD8: .4byte _080F07A8
_08056FDC: .4byte _080F07C8
_08056FE0: .4byte 0x03002E20
_08056FE4: .4byte 0x00000848
_08056FE8: .4byte 0x0000FFFF
_08056FEC: .4byte 0x00007FFF
_08056FF0:
	str r3, [r2, #0x4c]
	b _08057040
_08056FF4:
	movs r0, #0xf1
	str r0, [r2, #0x60]
	ldrh r1, [r2, #0x34]
	ldr r0, _08057024 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #0x34]
	ldr r1, _08057028 @ =0xFFFFFF00
	adds r0, r2, #0
	adds r0, #0x58
	strh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r2, #0x30]
_0805700E:
	ldr r0, [r2, #8]
	ldr r1, [r2, #0x30]
	adds r0, r0, r1
	str r0, [r2, #8]
	cmp r0, #0
	blt _08057030
	ldr r3, _0805702C @ =0xFFFFC000
	adds r0, r1, r3
	str r0, [r2, #0x30]
	b _08057040
	.align 2, 0
_08057024: .4byte 0x0000FFFD
_08057028: .4byte 0xFFFFFF00
_0805702C: .4byte 0xFFFFC000
_08057030:
	movs r0, #0xf3
	str r0, [r2, #0x60]
	movs r0, #0
	str r0, [r2, #0x18]
	ldrh r1, [r2, #0x34]
	ldr r0, _08057048 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2, #0x34]
_08057040:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08057048: .4byte 0x0000FFFE

	thumb_func_start sub_805704C
sub_805704C: @ 0x0805704C
	adds r2, r1, #0
	ldrh r0, [r2, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _08057070
	movs r0, #0xca
	lsls r0, r0, #1
	adds r2, r2, r0
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
_08057070:
	bx lr
	.align 2, 0

	thumb_func_start sub_8057074
sub_8057074: @ 0x08057074
	adds r3, r0, #0
	ldr r0, _080570A8 @ =0x00001009
	movs r2, #0
	strh r0, [r3, #0x10]
	movs r0, #8
	strb r0, [r3, #0xe]
	strb r0, [r3, #0xd]
	strb r0, [r3, #0xc]
	ldr r0, _080570AC @ =sub_8057228
	str r0, [r3, #0x18]
	ldr r0, _080570B0 @ =sub_80570B8
	str r0, [r3, #0x5c]
	ldrh r1, [r3, #0x34]
	ldr r0, _080570B4 @ =0x0000FFFE
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strh r0, [r3, #0x34]
	movs r1, #0xe0
	adds r0, r3, #0
	adds r0, #0x56
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	str r2, [r3, #0x60]
	bx lr
	.align 2, 0
_080570A8: .4byte 0x00001009
_080570AC: .4byte sub_8057228
_080570B0: .4byte sub_80570B8
_080570B4: .4byte 0x0000FFFE

	thumb_func_start sub_80570B8
sub_80570B8: @ 0x080570B8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	ldr r0, _080570E0 @ =0x03002E20
	adds r3, r0, #0
	adds r3, #0x24
	ldr r0, [r4, #0x60]
	cmp r0, #0x11
	beq _08057134
	cmp r0, #0x11
	bgt _080570EA
	cmp r0, #1
	bne _080570D4
	b _0805721C
_080570D4:
	cmp r0, #1
	bgt _080570E4
	cmp r0, #0
	beq _08057102
	b _0805721C
	.align 2, 0
_080570E0: .4byte 0x03002E20
_080570E4:
	cmp r0, #0x10
	beq _08057118
	b _0805721C
_080570EA:
	cmp r0, #0xf1
	bne _080570F0
	b _080571EA
_080570F0:
	cmp r0, #0xf1
	bgt _080570FA
	cmp r0, #0xf0
	beq _080571D0
	b _0805721C
_080570FA:
	cmp r0, #0xf2
	bne _08057100
	b _0805720C
_08057100:
	b _0805721C
_08057102:
	movs r0, #1
	str r0, [r4, #0x60]
	ldrh r1, [r4, #0x34]
	ldr r0, _08057114 @ =0x0000FFFE
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	b _0805721A
	.align 2, 0
_08057114: .4byte 0x0000FFFE
_08057118:
	movs r0, #0x11
	str r0, [r4, #0x60]
	movs r0, #4
	str r0, [r4, #0x64]
	movs r0, #0
	str r0, [r4, #0x68]
	ldrh r1, [r4, #0x34]
	movs r0, #1
	orrs r0, r1
	ldr r1, _08057140 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #0x34]
	ldr r0, _08057144 @ =_080F0588
	str r0, [r4, #0x4c]
_08057134:
	ldr r6, [r4, #0x64]
	ldr r5, [r4, #0x68]
	cmp r6, #0
	ble _08057148
	subs r6, #1
	b _080571C4
	.align 2, 0
_08057140: .4byte 0x0000FFFD
_08057144: .4byte _080F0588
_08057148:
	adds r5, #1
	cmp r5, #2
	bne _08057170
	ldr r1, [r4, #0x6c]
	ldr r2, _0805717C @ =0x00000814
	adds r0, r3, r2
	ldr r0, [r0]
	cmp r1, r0
	bne _0805716C
	ldr r0, [r1, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805716C
	movs r0, #0xbd
	lsls r0, r0, #1
	bl m4aSongNumStart
_0805716C:
	cmp r5, #2
	beq _08057198
_08057170:
	cmp r5, #2
	bgt _08057180
	cmp r5, #1
	beq _0805718A
	b _080571BC
	.align 2, 0
_0805717C: .4byte 0x00000814
_08057180:
	cmp r5, #3
	beq _080571A4
	cmp r5, #4
	beq _080571B0
	b _080571BC
_0805718A:
	movs r6, #3
	ldr r0, _08057194 @ =_080F05A8
	str r0, [r4, #0x4c]
	b _080571C4
	.align 2, 0
_08057194: .4byte _080F05A8
_08057198:
	movs r6, #6
	ldr r0, _080571A0 @ =_080F05C8
	str r0, [r4, #0x4c]
	b _080571C4
	.align 2, 0
_080571A0: .4byte _080F05C8
_080571A4:
	movs r6, #4
	ldr r0, _080571AC @ =_080F0608
	str r0, [r4, #0x4c]
	b _080571C4
	.align 2, 0
_080571AC: .4byte _080F0608
_080571B0:
	movs r6, #2
	ldr r0, _080571B8 @ =_080F05E8
	str r0, [r4, #0x4c]
	b _080571C4
	.align 2, 0
_080571B8: .4byte _080F05E8
_080571BC:
	ldr r0, _080571CC @ =_080F05E8
	str r0, [r4, #0x4c]
	movs r0, #0
	str r0, [r4, #0x60]
_080571C4:
	str r6, [r4, #0x64]
	str r5, [r4, #0x68]
	b _0805721C
	.align 2, 0
_080571CC: .4byte _080F05E8
_080571D0:
	movs r0, #0xf1
	str r0, [r4, #0x60]
	ldrh r1, [r4, #0x34]
	ldr r0, _08057200 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #0x34]
	ldr r1, _08057204 @ =0xFFFFFF00
	adds r0, r4, #0
	adds r0, #0x58
	strh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r4, #0x30]
_080571EA:
	ldr r0, [r2, #8]
	ldr r1, [r4, #0x30]
	adds r0, r0, r1
	str r0, [r2, #8]
	cmp r0, #0
	blt _0805720C
	ldr r0, [r4, #0x30]
	ldr r1, _08057208 @ =0xFFFFC000
	adds r0, r0, r1
	str r0, [r4, #0x30]
	b _0805721C
	.align 2, 0
_08057200: .4byte 0x0000FFFD
_08057204: .4byte 0xFFFFFF00
_08057208: .4byte 0xFFFFC000
_0805720C:
	movs r0, #0xf3
	str r0, [r4, #0x60]
	movs r0, #0
	str r0, [r2, #0x18]
	ldrh r1, [r4, #0x34]
	ldr r0, _08057224 @ =0x0000FFFE
	ands r0, r1
_0805721A:
	strh r0, [r4, #0x34]
_0805721C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08057224: .4byte 0x0000FFFE

	thumb_func_start sub_8057228
sub_8057228: @ 0x08057228
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldr r2, _08057270 @ =0x03002E20
	adds r5, r2, #0
	adds r5, #0x24
	ldrh r0, [r3, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _08057296
	adds r0, r3, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08057296
	ldr r0, _08057274 @ =0x00000C12
	adds r2, r2, r0
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
	str r3, [r4, #0x6c]
	adds r0, r3, #0
	adds r0, #0x6a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08057278
	movs r0, #0xf0
	b _0805727A
	.align 2, 0
_08057270: .4byte 0x03002E20
_08057274: .4byte 0x00000C12
_08057278:
	movs r0, #0x10
_0805727A:
	str r0, [r4, #0x60]
	ldr r1, _0805729C @ =0x00000814
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r3, r0
	bne _08057296
	ldr r0, [r3, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08057296
	ldr r0, _080572A0 @ =0x00000175
	bl m4aSongNumStart
_08057296:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805729C: .4byte 0x00000814
_080572A0: .4byte 0x00000175

	thumb_func_start sub_80572A4
sub_80572A4: @ 0x080572A4
	adds r2, r0, #0
	ldr r0, _080572D8 @ =0x0000100B
	movs r1, #0
	strh r0, [r2, #0x10]
	ldr r0, _080572DC @ =_080F06E8
	str r0, [r2, #0x4c]
	str r1, [r2, #0x60]
	str r1, [r2, #0x64]
	str r1, [r2, #8]
	ldr r0, _080572E0 @ =sub_80572E4
	str r0, [r2, #0x5c]
	movs r0, #0xa0
	adds r1, r2, #0
	adds r1, #0x56
	strh r0, [r1]
	movs r1, #0x80
	adds r0, r2, #0
	adds r0, #0x58
	strh r1, [r0]
	ldrh r0, [r2, #0x34]
	movs r1, #2
	orrs r0, r1
	movs r1, #1
	orrs r0, r1
	strh r0, [r2, #0x34]
	bx lr
	.align 2, 0
_080572D8: .4byte 0x0000100B
_080572DC: .4byte _080F06E8
_080572E0: .4byte sub_80572E4

	thumb_func_start sub_80572E4
sub_80572E4: @ 0x080572E4
	push {r4, lr}
	adds r2, r0, #0
	ldr r4, [r2, #0x60]
	ldr r3, [r2, #0x64]
	adds r4, #1
	cmp r4, #5
	ble _08057354
	movs r4, #0
	adds r3, #1
	cmp r3, #5
	ble _080572FC
	movs r3, #0
_080572FC:
	cmp r3, #5
	bhi _08057350
	lsls r0, r3, #2
	ldr r1, _0805730C @ =_08057310
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805730C: .4byte _08057310
_08057310: @ jump table
	.4byte _08057350 @ case 0
	.4byte _08057348 @ case 1
	.4byte _08057340 @ case 2
	.4byte _08057338 @ case 3
	.4byte _08057330 @ case 4
	.4byte _08057328 @ case 5
_08057328:
	ldr r0, _0805732C @ =_080F0788
	b _08057352
	.align 2, 0
_0805732C: .4byte _080F0788
_08057330:
	ldr r0, _08057334 @ =_080F0768
	b _08057352
	.align 2, 0
_08057334: .4byte _080F0768
_08057338:
	ldr r0, _0805733C @ =_080F0748
	b _08057352
	.align 2, 0
_0805733C: .4byte _080F0748
_08057340:
	ldr r0, _08057344 @ =_080F0728
	b _08057352
	.align 2, 0
_08057344: .4byte _080F0728
_08057348:
	ldr r0, _0805734C @ =_080F0708
	b _08057352
	.align 2, 0
_0805734C: .4byte _080F0708
_08057350:
	ldr r0, _08057360 @ =_080F06E8
_08057352:
	str r0, [r2, #0x4c]
_08057354:
	str r4, [r2, #0x60]
	str r3, [r2, #0x64]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08057360: .4byte _080F06E8

	thumb_func_start sub_8057364
sub_8057364: @ 0x08057364
	adds r2, r0, #0
	ldr r0, _080573A8 @ =0x0000100C
	movs r1, #0
	strh r0, [r2, #0x10]
	movs r0, #8
	strb r0, [r2, #0xe]
	strb r0, [r2, #0xd]
	strb r0, [r2, #0xc]
	ldr r0, _080573AC @ =sub_8057554
	str r0, [r2, #0x18]
	ldr r0, _080573B0 @ =sub_80573B8
	str r0, [r2, #0x5c]
	ldr r0, _080573B4 @ =_080F0528
	str r0, [r2, #0x4c]
	str r1, [r2, #0x60]
	str r1, [r2, #0x64]
	str r1, [r2, #0x68]
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r2, #0x26]
	movs r1, #0xe0
	adds r0, r2, #0
	adds r0, #0x56
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrh r0, [r2, #0x34]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strh r0, [r2, #0x34]
	bx lr
	.align 2, 0
_080573A8: .4byte 0x0000100C
_080573AC: .4byte sub_8057554
_080573B0: .4byte sub_80573B8
_080573B4: .4byte _080F0528

	thumb_func_start sub_80573B8
sub_80573B8: @ 0x080573B8
	adds r2, r0, #0
	ldr r3, [r2, #0x60]
	cmp r3, #0x11
	beq _08057452
	cmp r3, #0x11
	bgt _080573D8
	cmp r3, #1
	beq _08057404
	cmp r3, #1
	bgt _080573D2
	cmp r3, #0
	beq _080573F2
	b _0805754C
_080573D2:
	cmp r3, #0x10
	beq _08057448
	b _0805754C
_080573D8:
	cmp r3, #0xf1
	bne _080573DE
	b _0805751A
_080573DE:
	cmp r3, #0xf1
	bgt _080573EA
	cmp r3, #0xf0
	bne _080573E8
	b _08057500
_080573E8:
	b _0805754C
_080573EA:
	cmp r3, #0xf2
	bne _080573F0
	b _0805753C
_080573F0:
	b _0805754C
_080573F2:
	movs r0, #1
	str r0, [r2, #0x60]
	ldrh r1, [r2, #0x34]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2, #0x34]
	ldr r0, _08057424 @ =_080F0528
	str r0, [r2, #0x4c]
	str r3, [r2, #8]
_08057404:
	ldr r0, _08057428 @ =0x03002E20
	ldr r1, _0805742C @ =0x00000848
	adds r0, r0, r1
	movs r3, #0x26
	ldrsh r1, [r2, r3]
	movs r3, #0x14
	ldrsh r0, [r0, r3]
	subs r1, r1, r0
	ldr r0, _08057430 @ =0x0000FFFF
	ands r1, r0
	ldr r0, _08057434 @ =0x00007FFF
	cmp r1, r0
	bgt _08057438
	movs r1, #0x80
	lsls r1, r1, #1
	b _0805743A
	.align 2, 0
_08057424: .4byte _080F0528
_08057428: .4byte 0x03002E20
_0805742C: .4byte 0x00000848
_08057430: .4byte 0x0000FFFF
_08057434: .4byte 0x00007FFF
_08057438:
	ldr r1, _08057444 @ =0xFFFFFF00
_0805743A:
	adds r0, r2, #0
	adds r0, #0x56
	strh r1, [r0]
	b _0805754C
	.align 2, 0
_08057444: .4byte 0xFFFFFF00
_08057448:
	movs r0, #0x11
	str r0, [r2, #0x60]
	movs r0, #0
	str r0, [r2, #0x64]
	str r0, [r2, #0x68]
_08057452:
	ldr r0, _08057474 @ =0x03002E20
	ldr r1, _08057478 @ =0x00000848
	adds r0, r0, r1
	movs r3, #0x26
	ldrsh r1, [r2, r3]
	movs r3, #0x14
	ldrsh r0, [r0, r3]
	subs r1, r1, r0
	ldr r0, _0805747C @ =0x0000FFFF
	ands r1, r0
	ldr r0, _08057480 @ =0x00007FFF
	cmp r1, r0
	bgt _08057484
	movs r0, #0x80
	lsls r0, r0, #1
	b _08057486
	.align 2, 0
_08057474: .4byte 0x03002E20
_08057478: .4byte 0x00000848
_0805747C: .4byte 0x0000FFFF
_08057480: .4byte 0x00007FFF
_08057484:
	ldr r0, _08057498 @ =0xFFFFFF00
_08057486:
	adds r1, r2, #0
	adds r1, #0x56
	strh r0, [r1]
	ldr r0, [r2, #0x64]
	cmp r0, #3
	bgt _0805749C
	adds r0, #1
	str r0, [r2, #0x64]
	b _080574A6
	.align 2, 0
_08057498: .4byte 0xFFFFFF00
_0805749C:
	movs r0, #0
	str r0, [r2, #0x64]
	ldr r0, [r2, #0x68]
	adds r0, #1
	str r0, [r2, #0x68]
_080574A6:
	ldr r1, [r2, #0x68]
	cmp r1, #7
	bgt _080574D0
	cmp r1, #0
	blt _080574D0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080574C4
	ldr r0, _080574C0 @ =_080F0568
	str r0, [r2, #0x4c]
	b _080574D4
	.align 2, 0
_080574C0: .4byte _080F0568
_080574C4:
	ldr r0, _080574CC @ =_080F0548
	str r0, [r2, #0x4c]
	b _080574D4
	.align 2, 0
_080574CC: .4byte _080F0548
_080574D0:
	movs r0, #0
	str r0, [r2, #0x60]
_080574D4:
	lsls r0, r1, #2
	ldr r1, [r2, #0x64]
	adds r0, r0, r1
	ldr r1, _080574FC @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080574E6
	adds r0, #0x3f
_080574E6:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	str r0, [r2, #8]
	b _0805754C
	.align 2, 0
_080574FC: .4byte gSinTable
_08057500:
	movs r0, #0xf1
	str r0, [r2, #0x60]
	ldrh r1, [r2, #0x34]
	ldr r0, _08057530 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #0x34]
	ldr r1, _08057534 @ =0xFFFFFF00
	adds r0, r2, #0
	adds r0, #0x58
	strh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r2, #0x30]
_0805751A:
	ldr r0, [r2, #8]
	ldr r1, [r2, #0x30]
	adds r0, r0, r1
	str r0, [r2, #8]
	cmp r0, #0
	blt _0805753C
	ldr r3, _08057538 @ =0xFFFFC000
	adds r0, r1, r3
	str r0, [r2, #0x30]
	b _0805754C
	.align 2, 0
_08057530: .4byte 0x0000FFFD
_08057534: .4byte 0xFFFFFF00
_08057538: .4byte 0xFFFFC000
_0805753C:
	movs r0, #0xf3
	str r0, [r2, #0x60]
	movs r0, #0
	str r0, [r2, #0x18]
	ldrh r1, [r2, #0x34]
	ldr r0, _08057550 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2, #0x34]
_0805754C:
	bx lr
	.align 2, 0
_08057550: .4byte 0x0000FFFE

	thumb_func_start sub_8057554
sub_8057554: @ 0x08057554
	adds r3, r0, #0
	adds r2, r1, #0
	ldrh r0, [r2, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _08057592
	adds r0, r2, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08057592
	adds r0, r2, #0
	adds r0, #0x6a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08057584
	movs r0, #0xf0
	b _08057590
_08057584:
	ldr r0, [r3, #0x60]
	movs r1, #0xf0
	ands r0, r1
	cmp r0, #0
	bne _08057592
	movs r0, #0x10
_08057590:
	str r0, [r3, #0x60]
_08057592:
	bx lr

	thumb_func_start sub_8057594
sub_8057594: @ 0x08057594
	adds r2, r0, #0
	ldr r0, _080575D8 @ =0x0000100D
	movs r1, #0
	strh r0, [r2, #0x10]
	movs r0, #8
	strb r0, [r2, #0xe]
	strb r0, [r2, #0xd]
	strb r0, [r2, #0xc]
	ldr r0, _080575DC @ =sub_80576B4
	str r0, [r2, #0x18]
	ldr r0, _080575E0 @ =sub_80575E8
	str r0, [r2, #0x5c]
	ldr r0, _080575E4 @ =_080F0848
	str r0, [r2, #0x4c]
	str r1, [r2, #0x60]
	str r1, [r2, #0x64]
	str r1, [r2, #0x68]
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r2, #0x26]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r2, #0
	adds r0, #0x56
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrh r0, [r2, #0x34]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strh r0, [r2, #0x34]
	bx lr
	.align 2, 0
_080575D8: .4byte 0x0000100D
_080575DC: .4byte sub_80576B4
_080575E0: .4byte sub_80575E8
_080575E4: .4byte _080F0848

	thumb_func_start sub_80575E8
sub_80575E8: @ 0x080575E8
	adds r2, r0, #0
	ldr r3, [r2, #0x60]
	cmp r3, #0xf0
	beq _08057660
	cmp r3, #0xf0
	bgt _080575FE
	cmp r3, #0
	beq _08057608
	cmp r3, #1
	beq _0805761A
	b _080576AC
_080575FE:
	cmp r3, #0xf2
	beq _0805769C
	cmp r3, #0xf2
	blt _0805767A
	b _080576AC
_08057608:
	movs r0, #1
	str r0, [r2, #0x60]
	ldrh r1, [r2, #0x34]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2, #0x34]
	ldr r0, _0805763C @ =_080F0848
	str r0, [r2, #0x4c]
	str r3, [r2, #8]
_0805761A:
	ldr r0, _08057640 @ =0x03002E20
	ldr r1, _08057644 @ =0x00000848
	adds r0, r0, r1
	movs r3, #0x26
	ldrsh r1, [r2, r3]
	movs r3, #0x14
	ldrsh r0, [r0, r3]
	subs r1, r1, r0
	ldr r0, _08057648 @ =0x0000FFFF
	ands r1, r0
	ldr r0, _0805764C @ =0x00007FFF
	cmp r1, r0
	bgt _08057650
	movs r1, #0x80
	lsls r1, r1, #1
	b _08057652
	.align 2, 0
_0805763C: .4byte _080F0848
_08057640: .4byte 0x03002E20
_08057644: .4byte 0x00000848
_08057648: .4byte 0x0000FFFF
_0805764C: .4byte 0x00007FFF
_08057650:
	ldr r1, _0805765C @ =0xFFFFFF00
_08057652:
	adds r0, r2, #0
	adds r0, #0x56
	strh r1, [r0]
	b _080576AC
	.align 2, 0
_0805765C: .4byte 0xFFFFFF00
_08057660:
	movs r0, #0xf1
	str r0, [r2, #0x60]
	ldrh r1, [r2, #0x34]
	ldr r0, _08057690 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #0x34]
	ldr r1, _08057694 @ =0xFFFFFF00
	adds r0, r2, #0
	adds r0, #0x58
	strh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r2, #0x30]
_0805767A:
	ldr r0, [r2, #8]
	ldr r1, [r2, #0x30]
	adds r0, r0, r1
	str r0, [r2, #8]
	cmp r0, #0
	blt _0805769C
	ldr r3, _08057698 @ =0xFFFFC000
	adds r0, r1, r3
	str r0, [r2, #0x30]
	b _080576AC
	.align 2, 0
_08057690: .4byte 0x0000FFFD
_08057694: .4byte 0xFFFFFF00
_08057698: .4byte 0xFFFFC000
_0805769C:
	movs r0, #0xf3
	str r0, [r2, #0x60]
	movs r0, #0
	str r0, [r2, #0x18]
	ldrh r1, [r2, #0x34]
	ldr r0, _080576B0 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2, #0x34]
_080576AC:
	bx lr
	.align 2, 0
_080576B0: .4byte 0x0000FFFE

	thumb_func_start sub_80576B4
sub_80576B4: @ 0x080576B4
	adds r3, r0, #0
	adds r2, r1, #0
	ldrh r0, [r2, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _080576E4
	adds r0, r2, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080576E4
	adds r0, r2, #0
	adds r0, #0x6a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080576E4
	movs r0, #0xf0
	str r0, [r3, #0x60]
_080576E4:
	bx lr
	.align 2, 0

	thumb_func_start sub_080576E8
sub_080576E8: @ 0x080576E8
	adds r2, r0, #0
	ldr r0, _08057720 @ =0x0000100E
	strh r0, [r2, #0x10]
	movs r0, #8
	strb r0, [r2, #0xe]
	strb r0, [r2, #0xd]
	strb r0, [r2, #0xc]
	ldr r0, _08057724 @ =sub_08057730
	str r0, [r2, #0x18]
	ldr r0, _08057728 @ =sub_8057734
	str r0, [r2, #0x5c]
	ldr r0, _0805772C @ =_080F08A8
	str r0, [r2, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r2, #0x26]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r2, #0
	adds r0, #0x56
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrh r1, [r2, #0x34]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #0x34]
	bx lr
	.align 2, 0
_08057720: .4byte 0x0000100E
_08057724: .4byte sub_08057730
_08057728: .4byte sub_8057734
_0805772C: .4byte _080F08A8

	thumb_func_start sub_08057730
sub_08057730: @ 0x08057730
	bx lr
	.align 2, 0

	thumb_func_start sub_8057734
sub_8057734: @ 0x08057734
	adds r2, r0, #0
	ldr r0, _08057758 @ =0x03002E20
	ldr r1, _0805775C @ =0x00000848
	adds r0, r0, r1
	movs r3, #0x26
	ldrsh r1, [r2, r3]
	movs r3, #0x14
	ldrsh r0, [r0, r3]
	subs r1, r1, r0
	ldr r0, _08057760 @ =0x0000FFFF
	ands r1, r0
	ldr r0, _08057764 @ =0x00007FFF
	cmp r1, r0
	bgt _08057768
	movs r1, #0x80
	lsls r1, r1, #1
	b _0805776A
	.align 2, 0
_08057758: .4byte 0x03002E20
_0805775C: .4byte 0x00000848
_08057760: .4byte 0x0000FFFF
_08057764: .4byte 0x00007FFF
_08057768:
	ldr r1, _08057774 @ =0xFFFFFF00
_0805776A:
	adds r0, r2, #0
	adds r0, #0x56
	strh r1, [r0]
	bx lr
	.align 2, 0
_08057774: .4byte 0xFFFFFF00

	thumb_func_start sub_08057778
sub_08057778: @ 0x08057778
	adds r2, r0, #0
	ldr r0, _080577B0 @ =0x0000100F
	strh r0, [r2, #0x10]
	movs r0, #8
	strb r0, [r2, #0xe]
	strb r0, [r2, #0xd]
	strb r0, [r2, #0xc]
	ldr r0, _080577B4 @ =sub_080577C0
	str r0, [r2, #0x18]
	ldr r0, _080577B8 @ =sub_80577C4
	str r0, [r2, #0x5c]
	ldr r0, _080577BC @ =_080F08C8
	str r0, [r2, #0x4c]
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r2, #0x26]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r2, #0
	adds r0, #0x56
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrh r1, [r2, #0x34]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #0x34]
	bx lr
	.align 2, 0
_080577B0: .4byte 0x0000100F
_080577B4: .4byte sub_080577C0
_080577B8: .4byte sub_80577C4
_080577BC: .4byte _080F08C8

	thumb_func_start sub_080577C0
sub_080577C0: @ 0x080577C0
	bx lr
	.align 2, 0

	thumb_func_start sub_80577C4
sub_80577C4: @ 0x080577C4
	adds r2, r0, #0
	ldr r0, _080577E8 @ =0x03002E20
	ldr r1, _080577EC @ =0x00000848
	adds r0, r0, r1
	movs r3, #0x26
	ldrsh r1, [r2, r3]
	movs r3, #0x14
	ldrsh r0, [r0, r3]
	subs r1, r1, r0
	ldr r0, _080577F0 @ =0x0000FFFF
	ands r1, r0
	ldr r0, _080577F4 @ =0x00007FFF
	cmp r1, r0
	bgt _080577F8
	movs r1, #0x80
	lsls r1, r1, #1
	b _080577FA
	.align 2, 0
_080577E8: .4byte 0x03002E20
_080577EC: .4byte 0x00000848
_080577F0: .4byte 0x0000FFFF
_080577F4: .4byte 0x00007FFF
_080577F8:
	ldr r1, _08057804 @ =0xFFFFFF00
_080577FA:
	adds r0, r2, #0
	adds r0, #0x56
	strh r1, [r0]
	bx lr
	.align 2, 0
_08057804: .4byte 0xFFFFFF00

	thumb_func_start sub_8057808
sub_8057808: @ 0x08057808
	adds r2, r0, #0
	ldr r0, _08057868 @ =0x00001010
	strh r0, [r2, #0x10]
	movs r0, #0x20
	strb r0, [r2, #0xe]
	strb r0, [r2, #0xd]
	strb r0, [r2, #0xc]
	ldr r0, _0805786C @ =sub_805787C
	str r0, [r2, #0x5c]
	ldr r1, [r2, #0x50]
	movs r0, #0x8f
	lsls r0, r0, #0x10
	cmp r1, r0
	blt _08057836
	adds r0, #1
	cmp r1, r0
	bgt _08057836
	ldr r0, _08057870 @ =_080F08E8
	str r0, [r2, #0x4c]
	movs r0, #1
	str r0, [r2, #0x60]
	movs r0, #0
	str r0, [r2, #0x64]
_08057836:
	ldr r0, _08057874 @ =_080F0968
	str r0, [r2, #0x4c]
	movs r0, #1
	str r0, [r2, #0x60]
	movs r0, #0x20
	str r0, [r2, #0x64]
	movs r0, #0
	str r0, [r2, #0x68]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r2, #0
	adds r0, #0x56
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrh r1, [r2, #0x34]
	movs r0, #1
	orrs r0, r1
	ldr r1, _08057878 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r2, #8]
	bx lr
	.align 2, 0
_08057868: .4byte 0x00001010
_0805786C: .4byte sub_805787C
_08057870: .4byte _080F08E8
_08057874: .4byte _080F0968
_08057878: .4byte 0x0000FFFD

	thumb_func_start sub_805787C
sub_805787C: @ 0x0805787C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x60]
	cmp r0, #1
	bne _08057888
	b _080579F8
_08057888:
	cmp r0, #1
	bgt _08057896
	cmp r0, #0
	bne _08057892
	b _080579D4
_08057892:
	ldr r5, [r4, #0x50]
	b _08057A08
_08057896:
	cmp r0, #0x10
	beq _080578A2
	cmp r0, #0x11
	beq _080578AA
	ldr r5, [r4, #0x50]
	b _08057A08
_080578A2:
	movs r0, #0x11
	str r0, [r4, #0x60]
	movs r0, #0
	str r0, [r4, #0x64]
_080578AA:
	ldr r3, [r4, #0x64]
	cmp r3, #0xaa
	beq _08057954
	cmp r3, #0xaa
	bgt _080578F0
	cmp r3, #0x5e
	beq _08057970
	cmp r3, #0x5e
	bgt _080578D4
	cmp r3, #0x3c
	beq _08057970
	cmp r3, #0x3c
	bgt _080578CC
	cmp r3, #0
	beq _08057994
	ldr r5, [r4, #0x50]
	b _080579C0
_080578CC:
	cmp r3, #0x40
	beq _0805799C
	ldr r5, [r4, #0x50]
	b _080579C0
_080578D4:
	cmp r3, #0x9e
	beq _08057970
	cmp r3, #0x9e
	bgt _080578E4
	cmp r3, #0x62
	beq _0805799C
	ldr r5, [r4, #0x50]
	b _080579C0
_080578E4:
	cmp r3, #0xa2
	beq _0805799C
	cmp r3, #0xa6
	beq _08057970
	ldr r5, [r4, #0x50]
	b _080579C0
_080578F0:
	ldr r5, [r4, #0x50]
	cmp r3, #0xd2
	beq _080579C0
	cmp r3, #0xd2
	ble _080579C0
	cmp r3, #0xde
	beq _080579C0
	cmp r3, #0xde
	ble _080579C0
	cmp r3, #0xe2
	beq _0805790C
	cmp r3, #0xea
	beq _0805792C
	b _080579C0
_0805790C:
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r5
	movs r1, #0x8f
	lsls r1, r1, #0x10
	cmp r0, r1
	bne _08057924
	ldr r0, _08057920 @ =_080F0928
	b _080579BE
	.align 2, 0
_08057920: .4byte _080F0928
_08057924:
	ldr r0, _08057928 @ =_080F09A8
	b _080579BE
	.align 2, 0
_08057928: .4byte _080F09A8
_0805792C:
	ldrh r1, [r4, #0x34]
	movs r0, #2
	orrs r0, r1
	strh r0, [r4, #0x34]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r5
	movs r1, #0x8f
	lsls r1, r1, #0x10
	cmp r0, r1
	bne _0805794C
	ldr r0, _08057948 @ =_080F0948
	b _080579BE
	.align 2, 0
_08057948: .4byte _080F0948
_0805794C:
	ldr r0, _08057950 @ =_080F09C8
	b _080579BE
	.align 2, 0
_08057950: .4byte _080F09C8
_08057954:
	ldr r0, [r4, #0x50]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r0
	movs r2, #0x8f
	lsls r2, r2, #0x10
	adds r5, r0, #0
	cmp r1, r2
	bne _080579BC
	ldr r0, _0805796C @ =_080F08E8
	b _080579BE
	.align 2, 0
_0805796C: .4byte _080F08E8
_08057970:
	ldr r0, [r4, #0x50]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r0
	movs r2, #0x8f
	lsls r2, r2, #0x10
	adds r5, r0, #0
	cmp r1, r2
	bne _0805798C
	ldr r0, _08057988 @ =_080F0908
	b _080579BE
	.align 2, 0
_08057988: .4byte _080F0908
_0805798C:
	ldr r0, _08057990 @ =_080F0988
	b _080579BE
	.align 2, 0
_08057990: .4byte _080F0988
_08057994:
	ldrh r1, [r4, #0x34]
	ldr r0, _080579B4 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #0x34]
_0805799C:
	ldr r0, [r4, #0x50]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r0
	movs r2, #0x8f
	lsls r2, r2, #0x10
	adds r5, r0, #0
	cmp r1, r2
	bne _080579BC
	ldr r0, _080579B8 @ =_080F08E8
	b _080579BE
	.align 2, 0
_080579B4: .4byte 0x0000FFFD
_080579B8: .4byte _080F08E8
_080579BC:
	ldr r0, _080579D0 @ =_080F0968
_080579BE:
	str r0, [r4, #0x4c]
_080579C0:
	adds r0, r3, #1
	str r0, [r4, #0x64]
	cmp r0, #0xf1
	ble _08057A08
	movs r0, #0
	str r0, [r4, #0x64]
	b _08057A08
	.align 2, 0
_080579D0: .4byte _080F0968
_080579D4:
	movs r0, #1
	str r0, [r4, #0x60]
	ldr r0, [r4, #0x50]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x8f
	lsls r1, r1, #0x10
	cmp r0, r1
	bne _080579F0
	ldr r0, _080579EC @ =_080F08E8
	b _080579F2
	.align 2, 0
_080579EC: .4byte _080F08E8
_080579F0:
	ldr r0, _08057A38 @ =_080F0968
_080579F2:
	str r0, [r4, #0x4c]
	movs r0, #0x20
	str r0, [r4, #0x64]
_080579F8:
	ldr r0, [r4, #0x64]
	subs r0, #1
	str r0, [r4, #0x64]
	ldr r5, [r4, #0x50]
	cmp r0, #0
	bge _08057A08
	movs r0, #0x10
	str r0, [r4, #0x60]
_08057A08:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08057A12
	b _08057AF8
_08057A12:
	ldr r0, [r4, #0x60]
	movs r1, #0xf0
	ands r0, r1
	cmp r0, #0x10
	bne _08057AF8
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r5
	movs r1, #0x8f
	lsls r1, r1, #0x10
	cmp r0, r1
	bne _08057A3C
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x22
	b _08057A46
	.align 2, 0
_08057A38: .4byte _080F0968
_08057A3C:
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x42
_08057A46:
	ldr r0, [r4, #0x68]
	cmp r0, #0xaa
	beq _08057A94
	cmp r0, #0xaa
	bgt _08057A66
	cmp r0, #0x5e
	beq _08057AE4
	cmp r0, #0x5e
	bgt _08057AE4
	cmp r0, #0x3c
	beq _08057AE4
	cmp r0, #0x3c
	bgt _08057AE4
	cmp r0, #0
	beq _08057ADC
	b _08057AE4
_08057A66:
	cmp r0, #0xd2
	beq _08057ABC
	cmp r0, #0xd2
	bgt _08057A86
	cmp r0, #0xba
	beq _08057AA4
	cmp r0, #0xba
	bgt _08057A7C
	cmp r0, #0xb2
	beq _08057A9C
	b _08057AE4
_08057A7C:
	cmp r0, #0xc2
	beq _08057AAC
	cmp r0, #0xca
	beq _08057AB4
	b _08057AE4
_08057A86:
	cmp r0, #0xde
	beq _08057ACC
	cmp r0, #0xde
	bgt _08057AE4
	cmp r0, #0xda
	beq _08057AC4
	b _08057AE4
_08057A94:
	ldr r0, _08057A98 @ =_08076BCA
	b _08057ACE
	.align 2, 0
_08057A98: .4byte _08076BCA
_08057A9C:
	ldr r0, _08057AA0 @ =_08076BD4
	b _08057ACE
	.align 2, 0
_08057AA0: .4byte _08076BD4
_08057AA4:
	ldr r0, _08057AA8 @ =_08076BDE
	b _08057ACE
	.align 2, 0
_08057AA8: .4byte _08076BDE
_08057AAC:
	ldr r0, _08057AB0 @ =_08076BE8
	b _08057ACE
	.align 2, 0
_08057AB0: .4byte _08076BE8
_08057AB4:
	ldr r0, _08057AB8 @ =_08076BF2
	b _08057ACE
	.align 2, 0
_08057AB8: .4byte _08076BF2
_08057ABC:
	ldr r0, _08057AC0 @ =_08076BFC
	b _08057ACE
	.align 2, 0
_08057AC0: .4byte _08076BFC
_08057AC4:
	ldr r0, _08057AC8 @ =_08076C06
	b _08057ACE
	.align 2, 0
_08057AC8: .4byte _08076C06
_08057ACC:
	ldr r0, _08057AD8 @ =_08076C10
_08057ACE:
	movs r2, #5
	bl CpuSet
	b _08057AE4
	.align 2, 0
_08057AD8: .4byte _08076C10
_08057ADC:
	ldr r0, _08057B00 @ =_08076BCA
	movs r2, #5
	bl CpuSet
_08057AE4:
	movs r0, #1
	bl pltt_setDirtyFlag
	ldr r0, [r4, #0x68]
	adds r0, #1
	str r0, [r4, #0x68]
	cmp r0, #0xf1
	ble _08057AF8
	movs r0, #0
	str r0, [r4, #0x68]
_08057AF8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08057B00: .4byte _08076BCA

	thumb_func_start sub_8057B04
sub_8057B04: @ 0x08057B04
	adds r3, r0, #0
	ldr r0, _08057B5C @ =0x00001011
	movs r2, #0
	strh r0, [r3, #0x10]
	movs r0, #8
	strb r0, [r3, #0xe]
	strb r0, [r3, #0xd]
	strb r0, [r3, #0xc]
	ldr r0, _08057B60 @ =_080F0A08
	str r0, [r3, #0x4c]
	ldrh r1, [r3, #0x34]
	ldr r0, _08057B64 @ =0x0000FFFE
	ands r0, r1
	ldr r1, _08057B68 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r3, #0x34]
	movs r1, #0xe0
	adds r0, r3, #0
	adds r0, #0x56
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r1, r3, #0
	adds r1, #0x60
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r3]
	str r0, [r3, #0x68]
	ldr r0, _08057B6C @ =sub_8057BE0
	str r0, [r3, #0x5c]
	adds r0, r3, #0
	adds r0, #0x62
	strh r2, [r0]
	ldr r0, [r3, #0x50]
	ldr r1, _08057B70 @ =0xFF690000
	adds r0, r0, r1
	cmp r0, #5
	bhi _08057BD0
	lsls r0, r0, #2
	ldr r1, _08057B74 @ =_08057B78
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08057B5C: .4byte 0x00001011
_08057B60: .4byte _080F0A08
_08057B64: .4byte 0x0000FFFE
_08057B68: .4byte 0x0000FFFD
_08057B6C: .4byte sub_8057BE0
_08057B70: .4byte 0xFF690000
_08057B74: .4byte _08057B78
_08057B78: @ jump table
	.4byte _08057BD0 @ case 0
	.4byte _08057BC0 @ case 1
	.4byte _08057BB8 @ case 2
	.4byte _08057BA8 @ case 3
	.4byte _08057BA0 @ case 4
	.4byte _08057B90 @ case 5
_08057B90:
	adds r0, r3, #0
	adds r0, #0x64
	movs r1, #0x40
	strh r1, [r0]
	ldr r0, _08057B9C @ =0xFFD80000
	b _08057BDC
	.align 2, 0
_08057B9C: .4byte 0xFFD80000
_08057BA0:
	adds r0, r3, #0
	adds r0, #0x64
	movs r1, #0x40
	b _08057BD6
_08057BA8:
	adds r0, r3, #0
	adds r0, #0x64
	movs r1, #0x30
	strh r1, [r0]
	ldr r0, _08057BB4 @ =0xFFD80000
	b _08057BDC
	.align 2, 0
_08057BB4: .4byte 0xFFD80000
_08057BB8:
	adds r0, r3, #0
	adds r0, #0x64
	movs r1, #0x30
	b _08057BD6
_08057BC0:
	adds r0, r3, #0
	adds r0, #0x64
	movs r1, #0x20
	strh r1, [r0]
	ldr r0, _08057BCC @ =0xFFD80000
	b _08057BDC
	.align 2, 0
_08057BCC: .4byte 0xFFD80000
_08057BD0:
	adds r0, r3, #0
	adds r0, #0x64
	movs r1, #0x20
_08057BD6:
	strh r1, [r0]
	movs r0, #0xa0
	lsls r0, r0, #0xe
_08057BDC:
	str r0, [r3, #0x6c]
	bx lr

	thumb_func_start sub_8057BE0
sub_8057BE0: @ 0x08057BE0
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r0, #0x60
	ldrb r2, [r0]
	adds r0, #2
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r4, r0, #1
	cmp r4, #0
	bge _08057BFE
	adds r2, #1
	cmp r2, #5
	ble _08057BFE
	movs r2, #0
	movs r4, #0
_08057BFE:
	adds r1, r3, #0
	adds r1, #0x60
	strb r2, [r1]
	adds r0, r3, #0
	adds r0, #0x62
	strh r4, [r0]
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r2, #5
	bls _08057C14
	b _08057E14
_08057C14:
	lsls r0, r2, #2
	ldr r1, _08057C20 @ =_08057C24
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08057C20: .4byte _08057C24
_08057C24: @ jump table
	.4byte _08057C3C @ case 0
	.4byte _08057E14 @ case 1
	.4byte _08057C68 @ case 2
	.4byte _08057C98 @ case 3
	.4byte _08057D10 @ case 4
	.4byte _08057D44 @ case 5
_08057C3C:
	movs r0, #1
	strb r0, [r4]
	adds r0, r3, #0
	adds r0, #0x64
	ldrh r0, [r0]
	strh r0, [r5]
	movs r0, #8
	strb r0, [r3, #0xe]
	strb r0, [r3, #0xd]
	strb r0, [r3, #0xc]
	ldrh r1, [r3, #0x34]
	ldr r0, _08057C60 @ =0x0000FFFE
	ands r0, r1
	ldr r1, _08057C64 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r3, #0x34]
	b _08057E14
	.align 2, 0
_08057C60: .4byte 0x0000FFFE
_08057C64: .4byte 0x0000FFFD
_08057C68:
	movs r0, #3
	strb r0, [r4]
	movs r0, #0x40
	strh r0, [r5]
	ldr r0, _08057D00 @ =_080F0A08
	str r0, [r3, #0x4c]
	ldr r0, _08057D04 @ =main_dummyIrqHandler8
	str r0, [r3, #0x18]
	movs r0, #0xa0
	lsls r0, r0, #0xe
	str r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r3, #0
	adds r0, #0x56
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrh r0, [r3, #0x34]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strh r0, [r3, #0x34]
_08057C98:
	adds r2, r3, #0
	adds r2, #0x56
	movs r4, #0
	ldrsh r0, [r2, r4]
	subs r0, #0x40
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	bgt _08057CB0
	movs r1, #0x80
	lsls r1, r1, #1
_08057CB0:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0x58
	strh r0, [r1]
	ldr r2, _08057D08 @ =0xFFFFFC00
	ldr r0, [r3, #0x6c]
	cmp r0, #0
	bge _08057CC6
	rsbs r2, r2, #0
_08057CC6:
	adds r1, r3, #0
	adds r1, #0x5a
	ldrh r0, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r0, #0x40
	subs r0, r0, r1
	adds r2, r0, #0
	muls r2, r0, r2
	ldr r1, [r3, #0x68]
	ldr r0, [r3, #0x6c]
	adds r1, r1, r0
	cmp r0, #0
	bge _08057CEA
	ldr r4, _08057D0C @ =0x00000FFF
	adds r0, r0, r4
_08057CEA:
	asrs r0, r0, #0xc
	muls r0, r2, r0
	subs r0, r1, r0
	str r0, [r3]
	lsls r1, r2, #0xa
	movs r0, #0x80
	lsls r0, r0, #0xf
	subs r0, r0, r1
	str r0, [r3, #8]
	b _08057E14
	.align 2, 0
_08057D00: .4byte _080F0A08
_08057D04: .4byte main_dummyIrqHandler8
_08057D08: .4byte 0xFFFFFC00
_08057D0C: .4byte 0x00000FFF
_08057D10:
	ldr r0, _08057D88 @ =main_dummyIrqHandler9
	str r0, [r3, #0x18]
	movs r2, #0
	movs r0, #5
	strb r0, [r4]
	movs r0, #0x28
	strh r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r3, #0
	adds r0, #0x56
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r0, [r3, #0x6c]
	cmp r0, #0
	bge _08057D38
	adds r0, #0x3f
_08057D38:
	asrs r0, r0, #6
	rsbs r0, r0, #0
	str r0, [r3, #0x28]
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r3, #0x30]
_08057D44:
	ldr r0, [r3]
	ldr r1, [r3, #0x28]
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, [r3, #8]
	ldr r1, [r3, #0x30]
	adds r0, r0, r1
	str r0, [r3, #8]
	cmp r0, #0
	bge _08057D5C
	movs r0, #0
	str r0, [r3, #8]
_08057D5C:
	ldr r2, _08057D8C @ =0xFFFFD800
	adds r0, r1, r2
	str r0, [r3, #0x30]
	ldr r2, _08057D90 @ =0xFFFFFD00
	ldr r0, [r3, #0x6c]
	cmp r0, #0
	bge _08057D6C
	rsbs r2, r2, #0
_08057D6C:
	adds r1, r3, #0
	adds r1, #0x5a
	ldrh r0, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	movs r4, #0
	ldrsh r0, [r5, r4]
	cmp r0, #0x13
	bhi _08057E10
	lsls r0, r0, #2
	ldr r1, _08057D94 @ =_08057D98
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08057D88: .4byte main_dummyIrqHandler9
_08057D8C: .4byte 0xFFFFD800
_08057D90: .4byte 0xFFFFFD00
_08057D94: .4byte _08057D98
_08057D98: @ jump table
	.4byte _08057E08 @ case 0
	.4byte _08057E08 @ case 1
	.4byte _08057E08 @ case 2
	.4byte _08057E08 @ case 3
	.4byte _08057E00 @ case 4
	.4byte _08057E00 @ case 5
	.4byte _08057E00 @ case 6
	.4byte _08057E00 @ case 7
	.4byte _08057DF8 @ case 8
	.4byte _08057DF8 @ case 9
	.4byte _08057DF8 @ case 10
	.4byte _08057DF8 @ case 11
	.4byte _08057DF0 @ case 12
	.4byte _08057DF0 @ case 13
	.4byte _08057DF0 @ case 14
	.4byte _08057DF0 @ case 15
	.4byte _08057DE8 @ case 16
	.4byte _08057DE8 @ case 17
	.4byte _08057DE8 @ case 18
	.4byte _08057DE8 @ case 19
_08057DE8:
	ldr r0, _08057DEC @ =_080F0A28
	b _08057E12
	.align 2, 0
_08057DEC: .4byte _080F0A28
_08057DF0:
	ldr r0, _08057DF4 @ =_080F0A48
	b _08057E12
	.align 2, 0
_08057DF4: .4byte _080F0A48
_08057DF8:
	ldr r0, _08057DFC @ =_080F0A68
	b _08057E12
	.align 2, 0
_08057DFC: .4byte _080F0A68
_08057E00:
	ldr r0, _08057E04 @ =_080F0A28
	b _08057E12
	.align 2, 0
_08057E04: .4byte _080F0A28
_08057E08:
	ldr r0, _08057E0C @ =_080F0A88
	b _08057E12
	.align 2, 0
_08057E0C: .4byte _080F0A88
_08057E10:
	ldr r0, _08057E1C @ =_080F0A08
_08057E12:
	str r0, [r3, #0x4c]
_08057E14:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08057E1C: .4byte _080F0A08

	thumb_func_start main_dummyIrqHandler8
main_dummyIrqHandler8: @ 0x08057E20
	bx lr
	.align 2, 0

	thumb_func_start main_dummyIrqHandler9
main_dummyIrqHandler9: @ 0x08057E24
	bx lr
	.align 2, 0

	thumb_func_start sub_8057E28
sub_8057E28: @ 0x08057E28
	adds r2, r0, #0
	ldr r0, _08057E68 @ =0x00001012
	movs r1, #0
	strh r0, [r2, #0x10]
	movs r0, #8
	strb r0, [r2, #0xe]
	strb r0, [r2, #0xd]
	strb r0, [r2, #0xc]
	ldr r0, _08057E6C @ =sub_8058098
	str r0, [r2, #0x18]
	ldr r0, _08057E70 @ =sub_8057E78
	str r0, [r2, #0x5c]
	ldr r0, _08057E74 @ =_080F0668
	str r0, [r2, #0x4c]
	movs r0, #0x11
	str r0, [r2, #0x60]
	str r1, [r2, #0x64]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r2, #0
	adds r0, #0x56
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrh r0, [r2, #0x34]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strh r0, [r2, #0x34]
	bx lr
	.align 2, 0
_08057E68: .4byte 0x00001012
_08057E6C: .4byte sub_8058098
_08057E70: .4byte sub_8057E78
_08057E74: .4byte _080F0668

	thumb_func_start sub_8057E78
sub_8057E78: @ 0x08057E78
	adds r2, r0, #0
	ldr r0, [r2, #0x60]
	cmp r0, #0x31
	bls _08057E82
	b _08058094
_08057E82:
	lsls r0, r0, #2
	ldr r1, _08057E8C @ =_08057E90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08057E8C: .4byte _08057E90
_08057E90: @ jump table
	.4byte _08058090 @ case 0
	.4byte _08058094 @ case 1
	.4byte _08058094 @ case 2
	.4byte _08058094 @ case 3
	.4byte _08058094 @ case 4
	.4byte _08058094 @ case 5
	.4byte _08058094 @ case 6
	.4byte _08058094 @ case 7
	.4byte _08058094 @ case 8
	.4byte _08058094 @ case 9
	.4byte _08058094 @ case 10
	.4byte _08058094 @ case 11
	.4byte _08058094 @ case 12
	.4byte _08058094 @ case 13
	.4byte _08058094 @ case 14
	.4byte _08058094 @ case 15
	.4byte _08057F58 @ case 16
	.4byte _08058094 @ case 17
	.4byte _08058094 @ case 18
	.4byte _08058094 @ case 19
	.4byte _08058094 @ case 20
	.4byte _08058094 @ case 21
	.4byte _08058094 @ case 22
	.4byte _08058094 @ case 23
	.4byte _08058094 @ case 24
	.4byte _08058094 @ case 25
	.4byte _08058094 @ case 26
	.4byte _08058094 @ case 27
	.4byte _08058094 @ case 28
	.4byte _08058094 @ case 29
	.4byte _08058094 @ case 30
	.4byte _08058094 @ case 31
	.4byte _08057F5C @ case 32
	.4byte _08057F66 @ case 33
	.4byte _08058094 @ case 34
	.4byte _08058094 @ case 35
	.4byte _08058094 @ case 36
	.4byte _08058094 @ case 37
	.4byte _08058094 @ case 38
	.4byte _08058094 @ case 39
	.4byte _08058094 @ case 40
	.4byte _08058094 @ case 41
	.4byte _08058094 @ case 42
	.4byte _08058094 @ case 43
	.4byte _08058094 @ case 44
	.4byte _08058094 @ case 45
	.4byte _08058094 @ case 46
	.4byte _08058094 @ case 47
	.4byte _0805803C @ case 48
	.4byte _0805805C @ case 49
_08057F58:
	movs r0, #0x10
	b _08058092
_08057F5C:
	movs r0, #0x21
	str r0, [r2, #0x60]
	movs r0, #0
	str r0, [r2, #0x64]
	b _08058094
_08057F66:
	ldr r1, [r2, #0x64]
	adds r0, r1, #1
	str r0, [r2, #0x64]
	cmp r1, #0x22
	bls _08057F72
	b _08058094
_08057F72:
	lsls r0, r1, #2
	ldr r1, _08057F7C @ =_08057F80
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08057F7C: .4byte _08057F80
_08057F80: @ jump table
	.4byte _0805800C @ case 0
	.4byte _08058094 @ case 1
	.4byte _08058028 @ case 2
	.4byte _08058094 @ case 3
	.4byte _0805800C @ case 4
	.4byte _08058094 @ case 5
	.4byte _0805801C @ case 6
	.4byte _08058094 @ case 7
	.4byte _0805800C @ case 8
	.4byte _08058094 @ case 9
	.4byte _08058028 @ case 10
	.4byte _08058094 @ case 11
	.4byte _0805800C @ case 12
	.4byte _08058094 @ case 13
	.4byte _0805801C @ case 14
	.4byte _08058094 @ case 15
	.4byte _0805800C @ case 16
	.4byte _08058094 @ case 17
	.4byte _08058028 @ case 18
	.4byte _08058094 @ case 19
	.4byte _0805800C @ case 20
	.4byte _08058094 @ case 21
	.4byte _0805801C @ case 22
	.4byte _08058094 @ case 23
	.4byte _0805800C @ case 24
	.4byte _08058094 @ case 25
	.4byte _08058028 @ case 26
	.4byte _08058094 @ case 27
	.4byte _0805800C @ case 28
	.4byte _08058094 @ case 29
	.4byte _0805801C @ case 30
	.4byte _08058094 @ case 31
	.4byte _0805800C @ case 32
	.4byte _08058094 @ case 33
	.4byte _08058024 @ case 34
_0805800C:
	ldrh r1, [r2, #0x34]
	ldr r0, _08058018 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2, #0x34]
	b _08058094
	.align 2, 0
_08058018: .4byte 0x0000FFFE
_0805801C:
	ldr r0, _08058020 @ =_080F0668
	b _0805802A
	.align 2, 0
_08058020: .4byte _080F0668
_08058024:
	movs r0, #0x22
	str r0, [r2, #0x60]
_08058028:
	ldr r0, _08058038 @ =_080F0688
_0805802A:
	str r0, [r2, #0x4c]
	ldrh r1, [r2, #0x34]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #0x34]
	b _08058094
	.align 2, 0
_08058038: .4byte _080F0688
_0805803C:
	movs r0, #0x31
	str r0, [r2, #0x60]
	movs r0, #0
	str r0, [r2, #0x64]
	ldrh r1, [r2, #0x34]
	ldr r0, _08058054 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #0x34]
	ldr r0, _08058058 @ =_080F0688
	str r0, [r2, #0x4c]
	b _08058094
	.align 2, 0
_08058054: .4byte 0x0000FFFD
_08058058: .4byte _080F0688
_0805805C:
	ldr r0, [r2, #0x64]
	adds r0, #1
	str r0, [r2, #0x64]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08058072
	ldrh r1, [r2, #0x34]
	movs r0, #1
	orrs r0, r1
	b _08058078
_08058072:
	ldrh r1, [r2, #0x34]
	ldr r0, _0805808C @ =0x0000FFFE
	ands r0, r1
_08058078:
	strh r0, [r2, #0x34]
	ldr r0, [r2, #0x64]
	cmp r0, #0x27
	ble _08058094
	ldrh r0, [r2, #0x34]
	ldr r1, _0805808C @ =0x0000FFFE
	ands r1, r0
	strh r1, [r2, #0x34]
	movs r0, #0x22
	b _08058092
	.align 2, 0
_0805808C: .4byte 0x0000FFFE
_08058090:
	movs r0, #1
_08058092:
	str r0, [r2, #0x60]
_08058094:
	bx lr
	.align 2, 0

	thumb_func_start sub_8058098
sub_8058098: @ 0x08058098
	adds r3, r0, #0
	adds r2, r1, #0
	ldrh r0, [r2, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _080580E8
	adds r0, r2, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080580E8
	ldr r1, _080580D8 @ =0x03002E20
	ldr r0, _080580DC @ =0x00000C12
	adds r1, r1, r0
	ldrh r2, [r1]
	movs r0, #1
	orrs r0, r2
	strh r0, [r1]
	ldr r1, [r3, #0x60]
	movs r0, #0xf0
	ands r1, r0
	cmp r1, #0x10
	beq _080580E0
	cmp r1, #0x20
	beq _080580E4
	b _080580E8
	.align 2, 0
_080580D8: .4byte 0x03002E20
_080580DC: .4byte 0x00000C12
_080580E0:
	movs r0, #0x20
	b _080580E6
_080580E4:
	movs r0, #0x30
_080580E6:
	str r0, [r3, #0x60]
_080580E8:
	bx lr
	.align 2, 0

	thumb_func_start sub_80580EC
sub_80580EC: @ 0x080580EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08058158 @ =0x00001014
	strh r0, [r4, #0x10]
	movs r0, #8
	strb r0, [r4, #0xe]
	strb r0, [r4, #0xd]
	strb r0, [r4, #0xc]
	ldr r0, _0805815C @ =sub_80583D4
	str r0, [r4, #0x18]
	ldr r0, _08058160 @ =sub_8058168
	str r0, [r4, #0x5c]
	ldr r0, _08058164 @ =_080F0AE8
	str r0, [r4, #0x4c]
	movs r0, #0x10
	str r0, [r4, #0x60]
	bl main_getRandom
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xfc
	lsls r1, r1, #8
	ands r0, r1
	str r0, [r4, #0x64]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r4, #0x68]
	bl main_getRandom
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x58
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [r4, #0x6c]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, #0
	adds r0, #0x56
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrh r0, [r4, #0x34]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strh r0, [r4, #0x34]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08058158: .4byte 0x00001014
_0805815C: .4byte sub_80583D4
_08058160: .4byte sub_8058168
_08058164: .4byte _080F0AE8

	thumb_func_start sub_8058168
sub_8058168: @ 0x08058168
	adds r2, r0, #0
	ldr r0, [r2, #0x60]
	cmp r0, #0xf0
	bne _08058172
	b _08058380
_08058172:
	cmp r0, #0xf0
	bgt _08058180
	cmp r0, #0x10
	beq _0805818E
	cmp r0, #0x11
	beq _08058192
	b _080583CC
_08058180:
	cmp r0, #0xf2
	bne _08058186
	b _080583BC
_08058186:
	cmp r0, #0xf2
	bge _0805818C
	b _0805839A
_0805818C:
	b _080583CC
_0805818E:
	movs r0, #0x11
	str r0, [r2, #0x60]
_08058192:
	ldr r3, [r2, #0x64]
	ldr r1, _080581D0 @ =gSinTable
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080581A0
	adds r0, #0x3f
_080581A0:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldr r1, [r2, #0x68]
	adds r0, r0, r1
	str r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r3, r1
	str r0, [r2, #0x64]
	ldr r3, [r2, #0x6c]
	cmp r3, #0x57
	bls _080581C4
	b _08058368
_080581C4:
	lsls r0, r3, #2
	ldr r1, _080581D4 @ =_080581D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080581D0: .4byte gSinTable
_080581D4: .4byte _080581D8
_080581D8: @ jump table
	.4byte _08058338 @ case 0
	.4byte _08058338 @ case 1
	.4byte _08058338 @ case 2
	.4byte _08058338 @ case 3
	.4byte _08058338 @ case 4
	.4byte _08058338 @ case 5
	.4byte _08058338 @ case 6
	.4byte _08058338 @ case 7
	.4byte _08058338 @ case 8
	.4byte _08058338 @ case 9
	.4byte _08058340 @ case 10
	.4byte _08058340 @ case 11
	.4byte _08058340 @ case 12
	.4byte _08058340 @ case 13
	.4byte _08058340 @ case 14
	.4byte _08058340 @ case 15
	.4byte _08058340 @ case 16
	.4byte _08058340 @ case 17
	.4byte _08058340 @ case 18
	.4byte _08058340 @ case 19
	.4byte _08058340 @ case 20
	.4byte _08058340 @ case 21
	.4byte _08058348 @ case 22
	.4byte _08058348 @ case 23
	.4byte _08058348 @ case 24
	.4byte _08058348 @ case 25
	.4byte _08058348 @ case 26
	.4byte _08058348 @ case 27
	.4byte _08058348 @ case 28
	.4byte _08058348 @ case 29
	.4byte _08058348 @ case 30
	.4byte _08058348 @ case 31
	.4byte _08058350 @ case 32
	.4byte _08058350 @ case 33
	.4byte _08058350 @ case 34
	.4byte _08058350 @ case 35
	.4byte _08058350 @ case 36
	.4byte _08058350 @ case 37
	.4byte _08058350 @ case 38
	.4byte _08058350 @ case 39
	.4byte _08058350 @ case 40
	.4byte _08058350 @ case 41
	.4byte _08058350 @ case 42
	.4byte _08058350 @ case 43
	.4byte _08058358 @ case 44
	.4byte _08058358 @ case 45
	.4byte _08058358 @ case 46
	.4byte _08058358 @ case 47
	.4byte _08058358 @ case 48
	.4byte _08058358 @ case 49
	.4byte _08058358 @ case 50
	.4byte _08058358 @ case 51
	.4byte _08058358 @ case 52
	.4byte _08058358 @ case 53
	.4byte _08058360 @ case 54
	.4byte _08058360 @ case 55
	.4byte _08058360 @ case 56
	.4byte _08058360 @ case 57
	.4byte _08058360 @ case 58
	.4byte _08058360 @ case 59
	.4byte _08058360 @ case 60
	.4byte _08058360 @ case 61
	.4byte _08058360 @ case 62
	.4byte _08058360 @ case 63
	.4byte _08058360 @ case 64
	.4byte _08058360 @ case 65
	.4byte _08058348 @ case 66
	.4byte _08058348 @ case 67
	.4byte _08058348 @ case 68
	.4byte _08058348 @ case 69
	.4byte _08058348 @ case 70
	.4byte _08058348 @ case 71
	.4byte _08058348 @ case 72
	.4byte _08058348 @ case 73
	.4byte _08058348 @ case 74
	.4byte _08058348 @ case 75
	.4byte _08058368 @ case 76
	.4byte _08058368 @ case 77
	.4byte _08058368 @ case 78
	.4byte _08058368 @ case 79
	.4byte _08058368 @ case 80
	.4byte _08058368 @ case 81
	.4byte _08058368 @ case 82
	.4byte _08058368 @ case 83
	.4byte _08058368 @ case 84
	.4byte _08058368 @ case 85
	.4byte _08058368 @ case 86
	.4byte _08058368 @ case 87
_08058338:
	ldr r0, _0805833C @ =_080F0AE8
	b _0805836A
	.align 2, 0
_0805833C: .4byte _080F0AE8
_08058340:
	ldr r0, _08058344 @ =_080F0B08
	b _0805836A
	.align 2, 0
_08058344: .4byte _080F0B08
_08058348:
	ldr r0, _0805834C @ =_080F0B28
	b _0805836A
	.align 2, 0
_0805834C: .4byte _080F0B28
_08058350:
	ldr r0, _08058354 @ =_080F0B48
	b _0805836A
	.align 2, 0
_08058354: .4byte _080F0B48
_08058358:
	ldr r0, _0805835C @ =_080F0B68
	b _0805836A
	.align 2, 0
_0805835C: .4byte _080F0B68
_08058360:
	ldr r0, _08058364 @ =_080F0B88
	b _0805836A
	.align 2, 0
_08058364: .4byte _080F0B88
_08058368:
	ldr r0, _0805837C @ =_080F0BA8
_0805836A:
	str r0, [r2, #0x4c]
	adds r0, r3, #1
	str r0, [r2, #0x6c]
	cmp r0, #0x57
	ble _080583CC
	movs r0, #0
	str r0, [r2, #0x6c]
	b _080583CC
	.align 2, 0
_0805837C: .4byte _080F0BA8
_08058380:
	movs r0, #0xf1
	str r0, [r2, #0x60]
	ldrh r1, [r2, #0x34]
	ldr r0, _080583B0 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #0x34]
	ldr r1, _080583B4 @ =0xFFFFFF00
	adds r0, r2, #0
	adds r0, #0x58
	strh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r2, #0x30]
_0805839A:
	ldr r0, [r2, #8]
	ldr r1, [r2, #0x30]
	adds r0, r0, r1
	str r0, [r2, #8]
	cmp r0, #0
	blt _080583BC
	ldr r3, _080583B8 @ =0xFFFFC000
	adds r0, r1, r3
	str r0, [r2, #0x30]
	b _080583CC
	.align 2, 0
_080583B0: .4byte 0x0000FFFD
_080583B4: .4byte 0xFFFFFF00
_080583B8: .4byte 0xFFFFC000
_080583BC:
	movs r0, #0xf3
	str r0, [r2, #0x60]
	movs r0, #0
	str r0, [r2, #0x18]
	ldrh r1, [r2, #0x34]
	ldr r0, _080583D0 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2, #0x34]
_080583CC:
	bx lr
	.align 2, 0
_080583D0: .4byte 0x0000FFFE

	thumb_func_start sub_80583D4
sub_80583D4: @ 0x080583D4
	adds r3, r0, #0
	adds r2, r1, #0
	ldrh r0, [r2, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _08058404
	adds r0, r2, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08058404
	adds r0, r2, #0
	adds r0, #0x6a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08058404
	movs r0, #0xf0
	str r0, [r3, #0x60]
_08058404:
	bx lr
	.align 2, 0

	thumb_func_start sub_8058408
sub_8058408: @ 0x08058408
	adds r2, r0, #0
	ldr r0, _0805844C @ =0x00001015
	movs r3, #0
	strh r0, [r2, #0x10]
	ldr r0, _08058450 @ =sub_80584F4
	str r0, [r2, #0x5c]
	ldr r0, _08058454 @ =sub_8058734
	str r0, [r2, #0x18]
	ldr r0, _08058458 @ =_080F01C8
	str r0, [r2, #0x4c]
	adds r0, r2, #0
	adds r0, #0x60
	strh r3, [r0]
	adds r0, #2
	strh r3, [r0]
	adds r0, #2
	strh r3, [r0]
	adds r0, #2
	strh r3, [r0]
	ldrh r1, [r2, #0x34]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2, #0x34]
	ldr r1, [r2, #0x50]
	ldr r0, _0805845C @ =0x008E0001
	cmp r1, r0
	beq _08058468
	ldr r0, _08058460 @ =0x008E8001
	cmp r1, r0
	bne _08058474
	ldr r0, _08058464 @ =sub_805868C
	str r0, [r2, #0x5c]
	str r3, [r2, #0x28]
	b _08058478
	.align 2, 0
_0805844C: .4byte 0x00001015
_08058450: .4byte sub_80584F4
_08058454: .4byte sub_8058734
_08058458: .4byte _080F01C8
_0805845C: .4byte 0x008E0001
_08058460: .4byte 0x008E8001
_08058464: .4byte sub_805868C
_08058468:
	str r3, [r2, #0x28]
	ldr r0, _08058470 @ =0xFFFF8000
	str r0, [r2, #0x2c]
	b _0805847A
	.align 2, 0
_08058470: .4byte 0xFFFF8000
_08058474:
	ldr r0, _0805847C @ =0xFFFF8000
	str r0, [r2, #0x28]
_08058478:
	str r3, [r2, #0x2c]
_0805847A:
	bx lr
	.align 2, 0
_0805847C: .4byte 0xFFFF8000

	thumb_func_start sub_8058480
sub_8058480: @ 0x08058480
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, _080584DC @ =0x03002E20
	ldr r1, _080584E0 @ =0x00000848
	adds r0, r0, r1
	ldr r5, _080584E4 @ =gSinTable
	movs r1, #0x14
	ldrsh r2, [r0, r1]
	adds r0, r2, #0
	cmp r2, #0
	bge _0805849A
	adds r0, #0x3f
_0805849A:
	asrs r3, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r3
	ldr r1, _080584E8 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r4, [r0]
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r3, [r0]
	adds r0, r6, #0
	cmp r0, #0
	bge _080584BE
	adds r0, #0xff
_080584BE:
	asrs r0, r0, #8
	adds r2, r0, #0
	muls r2, r4, r2
	adds r1, r7, #0
	cmp r1, #0
	bge _080584CC
	adds r1, #0xff
_080584CC:
	asrs r0, r1, #8
	muls r0, r3, r0
	subs r0, r2, r0
	cmp r0, #0
	bge _080584EC
	movs r0, #0
	b _080584EE
	.align 2, 0
_080584DC: .4byte 0x03002E20
_080584E0: .4byte 0x00000848
_080584E4: .4byte gSinTable
_080584E8: .4byte 0x000003FF
_080584EC:
	movs r0, #1
_080584EE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80584F4
sub_80584F4: @ 0x080584F4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x64
	movs r1, #0
	ldrsh r4, [r0, r1]
	adds r6, r5, #0
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	rsbs r1, r1, #0
	bl sub_8058480
	cmp r0, #0
	beq _08058518
	ldr r1, _08058514 @ =0xFFFFFF00
	b _0805851C
	.align 2, 0
_08058514: .4byte 0xFFFFFF00
_08058518:
	movs r1, #0x80
	lsls r1, r1, #1
_0805851C:
	adds r0, r5, #0
	adds r0, #0x56
	strh r1, [r0]
	adds r2, r0, #0
	ldrh r1, [r6, #0x34]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08058530
	b _0805864E
_08058530:
	movs r0, #0x9b
	lsls r0, r0, #1
	cmp r4, r0
	bgt _08058558
	cmp r4, #0xfb
	bge _08058634
	cmp r4, #0xd2
	bgt _08058552
	cmp r4, #0xbf
	bge _0805862C
	cmp r4, #0x96
	bgt _08058620
	cmp r4, #1
	bge _0805859C
	cmp r4, #0
	beq _08058590
	b _08058634
_08058552:
	cmp r4, #0xe6
	ble _08058634
	b _0805862C
_08058558:
	movs r0, #0x82
	lsls r0, r0, #2
	cmp r4, r0
	bgt _08058580
	subs r0, #0x13
	cmp r4, r0
	bge _0805862C
	subs r0, #0x29
	cmp r4, r0
	bgt _08058620
	subs r0, #0x94
	cmp r4, r0
	bge _080585DA
	ldr r0, [r5, #0x28]
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x2c]
	rsbs r0, r0, #0
	str r0, [r5, #0x2c]
	b _080585DA
_08058580:
	movs r0, #0x8c
	lsls r0, r0, #2
	cmp r4, r0
	bgt _08058634
	subs r0, #0x13
	cmp r4, r0
	bge _0805862C
	b _08058634
_08058590:
	ldr r0, [r5, #0x28]
	rsbs r0, r0, #0
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x2c]
	rsbs r0, r0, #0
	str r0, [r5, #0x2c]
_0805859C:
	ldr r0, [r6]
	ldr r1, [r5, #0x28]
	adds r0, r0, r1
	str r0, [r6]
	ldr r0, [r6, #4]
	ldr r1, [r5, #0x2c]
	adds r0, r0, r1
	str r0, [r6, #4]
	adds r1, r5, #0
	adds r1, #0x62
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa
	blt _08058634
	movs r0, #0
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x60
	ldrh r0, [r2]
	adds r0, #1
	movs r1, #1
	ands r0, r1
	strh r0, [r2]
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _08058616
	b _08058620
_080585DA:
	ldr r0, [r6]
	ldr r1, [r5, #0x28]
	adds r0, r0, r1
	str r0, [r6]
	ldr r0, [r6, #4]
	ldr r1, [r5, #0x2c]
	adds r0, r0, r1
	str r0, [r6, #4]
	adds r1, r5, #0
	adds r1, #0x62
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa
	blt _08058634
	movs r0, #0
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x60
	ldrh r0, [r2]
	adds r0, #1
	movs r1, #1
	ands r0, r1
	strh r0, [r2]
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _08058620
_08058616:
	ldr r0, _0805861C @ =_080F01C8
	str r0, [r5, #0x4c]
	b _08058634
	.align 2, 0
_0805861C: .4byte _080F01C8
_08058620:
	ldr r0, _08058628 @ =_080F01E8
	str r0, [r5, #0x4c]
	b _08058634
	.align 2, 0
_08058628: .4byte _080F01E8
_0805862C:
	movs r1, #0
	ldrsh r0, [r2, r1]
	rsbs r0, r0, #0
	strh r0, [r2]
_08058634:
	adds r2, r5, #0
	adds r2, #0x64
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0x9b
	lsls r1, r1, #0x12
	cmp r0, r1
	ble _0805867E
	movs r0, #0
	strh r0, [r2]
	b _0805867E
_0805864E:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0805867E
	ldr r1, _08058684 @ =gSinTable
	lsls r0, r4, #6
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	str r0, [r6, #8]
	adds r1, r5, #0
	adds r1, #0x64
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0805867E
	ldrh r1, [r5, #0x34]
	ldr r0, _08058688 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r5, #0x34]
_0805867E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08058684: .4byte gSinTable
_08058688: .4byte 0x0000FFFE

	thumb_func_start sub_805868C
sub_805868C: @ 0x0805868C
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r0, #0x64
	movs r1, #0
	ldrsh r4, [r0, r1]
	ldrh r3, [r2, #0x34]
	movs r0, #2
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _080586F4
	adds r4, #1
	adds r3, r2, #0
	adds r3, #0x66
	movs r5, #0
	ldrsh r0, [r3, r5]
	cmp r0, #0
	bne _080586CC
	ldr r0, _080586C8 @ =_080F01E8
	str r0, [r2, #0x4c]
	cmp r4, #0x3b
	ble _0805871A
	movs r0, #1
	strh r0, [r3]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r2, #0x30]
	b _0805871A
	.align 2, 0
_080586C8: .4byte _080F01E8
_080586CC:
	ldr r0, _080586EC @ =_080F01C8
	str r0, [r2, #0x4c]
	ldr r1, [r2, #8]
	ldr r0, [r2, #0x30]
	adds r1, r1, r0
	str r1, [r2, #8]
	ldr r6, _080586F0 @ =0xFFFFC000
	adds r0, r0, r6
	str r0, [r2, #0x30]
	cmp r1, #0
	bgt _0805871A
	movs r0, #0
	str r0, [r2, #8]
	strh r0, [r3]
	movs r4, #0
	b _0805871A
	.align 2, 0
_080586EC: .4byte _080F01C8
_080586F0: .4byte 0xFFFFC000
_080586F4:
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _0805871A
	ldr r0, _08058728 @ =_080F01C8
	str r0, [r2, #0x4c]
	ldr r1, [r2, #8]
	ldr r0, [r2, #0x30]
	adds r1, r1, r0
	str r1, [r2, #8]
	ldr r6, _0805872C @ =0xFFFFC000
	adds r0, r0, r6
	str r0, [r2, #0x30]
	cmp r1, #0
	bgt _0805871A
	ldr r0, _08058730 @ =0x0000FFFE
	ands r3, r0
	strh r3, [r2, #0x34]
	str r5, [r2, #8]
_0805871A:
	adds r0, r2, #0
	adds r0, #0x64
	strh r4, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08058728: .4byte _080F01C8
_0805872C: .4byte 0xFFFFC000
_08058730: .4byte 0x0000FFFE

	thumb_func_start sub_8058734
sub_8058734: @ 0x08058734
	adds r3, r0, #0
	adds r2, r1, #0
	ldrh r0, [r2, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _0805877E
	adds r0, r2, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805877E
	adds r0, r2, #0
	adds r0, #0x6a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805877E
	adds r1, r3, #0
	adds r1, #0x64
	movs r0, #0x20
	strh r0, [r1]
	ldrh r1, [r3, #0x34]
	ldr r0, _08058780 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r3, #0x34]
	ldr r1, _08058784 @ =0xFFFFFF00
	adds r0, r3, #0
	adds r0, #0x58
	strh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r3, #0x30]
_0805877E:
	bx lr
	.align 2, 0
_08058780: .4byte 0x0000FFFD
_08058784: .4byte 0xFFFFFF00

	thumb_func_start sub_8058788
sub_8058788: @ 0x08058788
	push {r4, lr}
	adds r2, r0, #0
	ldr r4, [r2, #0x64]
	ldrh r3, [r2, #0x34]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _08058878
	cmp r4, #0x22
	bhi _08058864
	lsls r0, r4, #2
	ldr r1, _080587A8 @ =_080587AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080587A8: .4byte _080587AC
_080587AC: @ jump table
	.4byte _08058838 @ case 0
	.4byte _08058864 @ case 1
	.4byte _08058864 @ case 2
	.4byte _08058864 @ case 3
	.4byte _08058864 @ case 4
	.4byte _08058864 @ case 5
	.4byte _08058840 @ case 6
	.4byte _08058864 @ case 7
	.4byte _08058864 @ case 8
	.4byte _08058864 @ case 9
	.4byte _08058864 @ case 10
	.4byte _08058864 @ case 11
	.4byte _08058864 @ case 12
	.4byte _08058864 @ case 13
	.4byte _08058848 @ case 14
	.4byte _08058864 @ case 15
	.4byte _08058864 @ case 16
	.4byte _08058864 @ case 17
	.4byte _08058864 @ case 18
	.4byte _08058864 @ case 19
	.4byte _08058850 @ case 20
	.4byte _08058864 @ case 21
	.4byte _08058864 @ case 22
	.4byte _08058864 @ case 23
	.4byte _08058864 @ case 24
	.4byte _08058864 @ case 25
	.4byte _08058864 @ case 26
	.4byte _08058864 @ case 27
	.4byte _08058858 @ case 28
	.4byte _08058864 @ case 29
	.4byte _08058864 @ case 30
	.4byte _08058864 @ case 31
	.4byte _08058864 @ case 32
	.4byte _08058864 @ case 33
	.4byte _08058860 @ case 34
_08058838:
	ldr r0, _0805883C @ =_080F0C08
	b _08058862
	.align 2, 0
_0805883C: .4byte _080F0C08
_08058840:
	ldr r0, _08058844 @ =_080F0C28
	b _08058862
	.align 2, 0
_08058844: .4byte _080F0C28
_08058848:
	ldr r0, _0805884C @ =_080F0C48
	b _08058862
	.align 2, 0
_0805884C: .4byte _080F0C48
_08058850:
	ldr r0, _08058854 @ =_080F0C68
	b _08058862
	.align 2, 0
_08058854: .4byte _080F0C68
_08058858:
	ldr r0, _0805885C @ =_080F0C88
	b _08058862
	.align 2, 0
_0805885C: .4byte _080F0C88
_08058860:
	ldr r0, _08058874 @ =_080F0CA8
_08058862:
	str r0, [r2, #0x4c]
_08058864:
	adds r0, r4, #1
	str r0, [r2, #0x64]
	cmp r0, #0x29
	ble _0805889E
	movs r0, #0
	str r0, [r2, #0x64]
	b _0805889E
	.align 2, 0
_08058874: .4byte _080F0CA8
_08058878:
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _0805889E
	ldr r1, _080588A4 @ =gSinTable
	lsls r0, r4, #6
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	str r0, [r2, #8]
	subs r0, r4, #1
	str r0, [r2, #0x64]
	cmp r0, #0
	bge _0805889E
	ldr r0, _080588A8 @ =0x0000FFFE
	ands r3, r0
	strh r3, [r2, #0x34]
_0805889E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080588A4: .4byte gSinTable
_080588A8: .4byte 0x0000FFFE

	thumb_func_start sub_80588AC
sub_80588AC: @ 0x080588AC
	ldr r1, _080588D0 @ =0x00001016
	movs r2, #0
	strh r1, [r0, #0x10]
	ldr r1, _080588D4 @ =sub_8058788
	str r1, [r0, #0x5c]
	ldr r1, _080588D8 @ =sub_80588E0
	str r1, [r0, #0x18]
	ldr r1, _080588DC @ =_080F0C08
	str r1, [r0, #0x4c]
	str r2, [r0, #0x60]
	ldrh r1, [r0, #0x34]
	movs r2, #1
	orrs r1, r2
	movs r2, #2
	orrs r1, r2
	strh r1, [r0, #0x34]
	bx lr
	.align 2, 0
_080588D0: .4byte 0x00001016
_080588D4: .4byte sub_8058788
_080588D8: .4byte sub_80588E0
_080588DC: .4byte _080F0C08

	thumb_func_start sub_80588E0
sub_80588E0: @ 0x080588E0
	adds r3, r0, #0
	adds r2, r1, #0
	ldrh r0, [r2, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _08058920
	adds r0, r2, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08058920
	adds r0, r2, #0
	adds r0, #0x6a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08058920
	movs r0, #0x20
	str r0, [r3, #0x64]
	ldrh r1, [r3, #0x34]
	ldr r0, _08058924 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r3, #0x34]
	ldr r1, _08058928 @ =0xFFFFFF00
	adds r0, r3, #0
	adds r0, #0x58
	strh r1, [r0]
_08058920:
	bx lr
	.align 2, 0
_08058924: .4byte 0x0000FFFD
_08058928: .4byte 0xFFFFFF00

	thumb_func_start sub_805892C
sub_805892C: @ 0x0805892C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08058984 @ =0x00001017
	strh r0, [r4, #0x10]
	movs r0, #8
	strb r0, [r4, #0xe]
	strb r0, [r4, #0xd]
	strb r0, [r4, #0xc]
	ldr r0, _08058988 @ =sub_8058A40
	str r0, [r4, #0x18]
	ldr r0, _0805898C @ =sub_8058998
	str r0, [r4, #0x5c]
	ldr r0, _08058990 @ =_080F0CC8
	str r0, [r4, #0x4c]
	movs r0, #0x10
	str r0, [r4, #0x60]
	bl main_getRandom
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xfc
	lsls r1, r1, #8
	ands r0, r1
	str r0, [r4, #0x64]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r4, #0x68]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, #0
	adds r0, #0x56
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrh r1, [r4, #0x34]
	movs r0, #1
	orrs r0, r1
	ldr r1, _08058994 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #0x34]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08058984: .4byte 0x00001017
_08058988: .4byte sub_8058A40
_0805898C: .4byte sub_8058998
_08058990: .4byte _080F0CC8
_08058994: .4byte 0x0000FFFD

	thumb_func_start sub_8058998
sub_8058998: @ 0x08058998
	adds r2, r0, #0
	ldr r0, [r2, #0x60]
	cmp r0, #0xf0
	beq _080589EC
	cmp r0, #0xf0
	bgt _080589AE
	cmp r0, #0x10
	beq _080589B8
	cmp r0, #0x11
	beq _080589BC
	b _08058A38
_080589AE:
	cmp r0, #0xf2
	beq _08058A28
	cmp r0, #0xf2
	blt _08058A06
	b _08058A38
_080589B8:
	movs r0, #0x11
	str r0, [r2, #0x60]
_080589BC:
	ldr r3, [r2, #0x64]
	ldr r1, _080589E8 @ =gSinTable
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080589CA
	adds r0, #0x3f
_080589CA:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldr r1, [r2, #0x68]
	adds r0, r0, r1
	str r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r3, r1
	str r0, [r2, #0x64]
	b _08058A38
	.align 2, 0
_080589E8: .4byte gSinTable
_080589EC:
	movs r0, #0xf1
	str r0, [r2, #0x60]
	ldrh r1, [r2, #0x34]
	ldr r0, _08058A1C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #0x34]
	ldr r1, _08058A20 @ =0xFFFFFF00
	adds r0, r2, #0
	adds r0, #0x58
	strh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r2, #0x30]
_08058A06:
	ldr r0, [r2, #8]
	ldr r1, [r2, #0x30]
	adds r0, r0, r1
	str r0, [r2, #8]
	cmp r0, #0
	blt _08058A28
	ldr r3, _08058A24 @ =0xFFFFC000
	adds r0, r1, r3
	str r0, [r2, #0x30]
	b _08058A38
	.align 2, 0
_08058A1C: .4byte 0x0000FFFD
_08058A20: .4byte 0xFFFFFF00
_08058A24: .4byte 0xFFFFC000
_08058A28:
	movs r0, #0xf3
	str r0, [r2, #0x60]
	movs r0, #0
	str r0, [r2, #0x18]
	ldrh r1, [r2, #0x34]
	ldr r0, _08058A3C @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2, #0x34]
_08058A38:
	bx lr
	.align 2, 0
_08058A3C: .4byte 0x0000FFFE

	thumb_func_start sub_8058A40
sub_8058A40: @ 0x08058A40
	adds r3, r0, #0
	adds r2, r1, #0
	ldrh r0, [r2, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _08058A70
	adds r0, r2, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08058A70
	adds r0, r2, #0
	adds r0, #0x6a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08058A70
	movs r0, #0xf0
	str r0, [r3, #0x60]
_08058A70:
	bx lr
	.align 2, 0

	thumb_func_start sub_8058A74
sub_8058A74: @ 0x08058A74
	ldr r1, _08058AA0 @ =0x00001018
	movs r3, #0
	strh r1, [r0, #0x10]
	movs r1, #8
	strb r1, [r0, #0xe]
	strb r1, [r0, #0xd]
	strb r1, [r0, #0xc]
	ldr r2, _08058AA4 @ =_080F0128
	ldr r1, _08058AA8 @ =sub_8058B4C
	str r1, [r0, #0x18]
	ldr r1, _08058AAC @ =sub_8058AB0
	str r1, [r0, #0x5c]
	str r2, [r0, #0x4c]
	str r3, [r0, #0x60]
	str r3, [r0, #0x64]
	ldrh r1, [r0, #0x34]
	movs r2, #1
	orrs r1, r2
	movs r2, #2
	orrs r1, r2
	strh r1, [r0, #0x34]
	bx lr
	.align 2, 0
_08058AA0: .4byte 0x00001018
_08058AA4: .4byte _080F0128
_08058AA8: .4byte sub_8058B4C
_08058AAC: .4byte sub_8058AB0

	thumb_func_start sub_8058AB0
sub_8058AB0: @ 0x08058AB0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	ldr r0, [r5, #0x60]
	cmp r0, #0xe0
	beq _08058AC6
	cmp r0, #0xe0
	ble _08058B42
	cmp r0, #0xe1
	beq _08058ADC
	b _08058B42
_08058AC6:
	ldrh r1, [r5, #0x34]
	ldr r0, _08058B04 @ =0x0000FFFD
	ands r0, r1
	movs r4, #0
	strh r0, [r5, #0x34]
	ldr r0, [r5, #0x68]
	bl sub_8058BA8
	movs r0, #0xe1
	str r0, [r5, #0x60]
	str r4, [r5, #0x64]
_08058ADC:
	ldr r0, [r5, #0x64]
	adds r0, #1
	str r0, [r5, #0x64]
	ldr r0, [r6]
	ldr r1, [r5, #0x28]
	adds r0, r0, r1
	str r0, [r6]
	ldr r0, [r6, #4]
	ldr r1, [r5, #0x2c]
	adds r0, r0, r1
	str r0, [r6, #4]
	ldr r0, [r5, #0x64]
	cmp r0, #0xb
	beq _08058B18
	cmp r0, #0xb
	bgt _08058B08
	cmp r0, #1
	beq _08058B0E
	b _08058B30
	.align 2, 0
_08058B04: .4byte 0x0000FFFD
_08058B08:
	cmp r0, #0x15
	beq _08058B24
	b _08058B30
_08058B0E:
	ldr r0, _08058B14 @ =_080F0CE8
	str r0, [r5, #0x4c]
	b _08058B42
	.align 2, 0
_08058B14: .4byte _080F0CE8
_08058B18:
	ldr r0, _08058B20 @ =_080F0D08
	str r0, [r5, #0x4c]
	b _08058B42
	.align 2, 0
_08058B20: .4byte _080F0D08
_08058B24:
	ldr r0, _08058B2C @ =_080F0D28
	str r0, [r5, #0x4c]
	b _08058B42
	.align 2, 0
_08058B2C: .4byte _080F0D28
_08058B30:
	ldr r0, [r5, #0x64]
	cmp r0, #0x1e
	ble _08058B42
	movs r0, #0xf0
	str r0, [r5, #0x60]
	ldrh r1, [r5, #0x34]
	ldr r0, _08058B48 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r5, #0x34]
_08058B42:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08058B48: .4byte 0x0000FFFE

	thumb_func_start sub_8058B4C
sub_8058B4C: @ 0x08058B4C
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldr r2, _08058BA0 @ =0x03002E20
	ldrh r0, [r3, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _08058B9A
	adds r0, r3, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08058B9A
	ldr r0, _08058BA4 @ =0x00000C12
	adds r2, r2, r0
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0xe0
	str r0, [r4, #0x60]
	str r3, [r4, #0x68]
	adds r0, r3, #0
	adds r0, #0x4e
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	str r0, [r4, #0x28]
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	str r0, [r4, #0x2c]
_08058B9A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08058BA0: .4byte 0x03002E20
_08058BA4: .4byte 0x00000C12

	thumb_func_start sub_8058BA8
sub_8058BA8: @ 0x08058BA8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _08058C68 @ =0x03002E20
	adds r6, r0, #0
	adds r6, #0x24
	movs r1, #0xe6
	lsls r1, r1, #3
	adds r0, r0, r1
	bl sub_804F7AC
	adds r4, r0, #0
	str r5, [r4, #0x54]
	movs r2, #0
	strh r2, [r4, #0x26]
	str r2, [r4, #0x18]
	ldrh r1, [r4, #0x34]
	ldr r0, _08058C6C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #0x34]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, #0
	adds r0, #0x58
	strh r1, [r0]
	str r2, [r4, #0x6c]
	adds r0, r5, #0
	adds r0, #0x6a
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _08058C74
	adds r0, r4, #0
	bl sub_8058CA4
	ldr r1, [r4, #0x28]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r4, #0x2c]
	adds r1, r4, #0
	adds r1, #0x70
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x80
	lsls r0, r0, #6
	strh r0, [r1]
	movs r0, #0x90
	lsls r0, r0, #9
	str r0, [r4, #0x30]
	ldr r0, [r5]
	str r0, [r4]
	ldr r2, [r5, #4]
	str r2, [r4, #4]
	ldr r1, [r5, #8]
	str r1, [r4, #8]
	cmp r0, #0
	bge _08058C34
	ldr r3, _08058C70 @ =0x0000FFFF
	adds r0, r0, r3
_08058C34:
	asrs r5, r0, #0x10
	cmp r2, #0
	bge _08058C3E
	ldr r0, _08058C70 @ =0x0000FFFF
	adds r2, r2, r0
_08058C3E:
	asrs r2, r2, #0x10
	adds r0, r1, #0
	cmp r0, #0
	bge _08058C4A
	ldr r1, _08058C70 @ =0x0000FFFF
	adds r0, r0, r1
_08058C4A:
	asrs r3, r0, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_80328D4
	movs r1, #0x7f
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x36
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_8058E10
	b _08058C8E
	.align 2, 0
_08058C68: .4byte 0x03002E20
_08058C6C: .4byte 0x0000FFFD
_08058C70: .4byte 0x0000FFFF
_08058C74:
	ldr r0, _08058CA0 @ =sub_8058DE8
	str r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_8058E10
	adds r0, r4, #0
	bl sub_8058EB8
	adds r1, r5, #0
	adds r1, #0xac
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r1]
_08058C8E:
	ldrh r1, [r4, #0x34]
	movs r0, #1
	orrs r0, r1
	strh r0, [r4, #0x34]
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08058CA0: .4byte sub_8058DE8

	thumb_func_start sub_8058CA4
sub_8058CA4: @ 0x08058CA4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _08058D3C @ =0x03002E20
	adds r7, r0, #0
	adds r7, #0x24
	ldr r4, [r6, #0x54]
	adds r5, r6, #0
	ldr r1, _08058D40 @ =0x00000838
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r4, r0
	bne _08058CCE
	ldr r0, [r4, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08058CCE
	movs r0, #0xba
	lsls r0, r0, #1
	bl m4aSongNumStart
_08058CCE:
	adds r0, r4, #0
	adds r0, #0x4e
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	str r0, [r5, #0x28]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	str r0, [r5, #0x2c]
	movs r0, #0x90
	lsls r0, r0, #9
	str r0, [r5, #0x30]
	ldr r1, [r5]
	cmp r1, #0
	bge _08058CF6
	ldr r0, _08058D44 @ =0x0000FFFF
	adds r1, r1, r0
_08058CF6:
	asrs r1, r1, #0x10
	ldr r2, [r5, #4]
	cmp r2, #0
	bge _08058D02
	ldr r0, _08058D44 @ =0x0000FFFF
	adds r2, r2, r0
_08058D02:
	asrs r2, r2, #0x10
	ldr r3, [r5, #8]
	cmp r3, #0
	bge _08058D0E
	ldr r0, _08058D44 @ =0x0000FFFF
	adds r3, r3, r0
_08058D0E:
	asrs r3, r3, #0x10
	adds r0, r7, #0
	bl sub_80328D4
	movs r1, #0x7f
	ands r0, r1
	adds r1, r5, #0
	adds r1, #0x36
	movs r2, #0
	strb r0, [r1]
	ldr r0, _08058D48 @ =sub_8058D4C
	str r0, [r6, #0x14]
	adds r0, r6, #0
	adds r0, #0x70
	strh r2, [r0]
	adds r1, r6, #0
	adds r1, #0x72
	movs r0, #0xc0
	lsls r0, r0, #5
	strh r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08058D3C: .4byte 0x03002E20
_08058D40: .4byte 0x00000838
_08058D44: .4byte 0x0000FFFF
_08058D48: .4byte sub_8058D4C

	thumb_func_start sub_8058D4C
sub_8058D4C: @ 0x08058D4C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, _08058DCC @ =0x03002E20
	adds r7, r6, #0
	adds r7, #0x24
	adds r1, r4, #0
	adds r1, #0x70
	movs r2, #0x26
	ldrsh r0, [r4, r2]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x26]
	ldr r2, [r4]
	ldr r0, [r4, #0x28]
	adds r2, r2, r0
	str r2, [r4]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x2c]
	adds r3, r1, r0
	str r3, [r4, #4]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x30]
	adds r0, r1, r0
	str r0, [r4, #8]
	cmp r2, #0
	bge _08058D84
	ldr r1, _08058DD0 @ =0x0000FFFF
	adds r2, r2, r1
_08058D84:
	asrs r5, r2, #0x10
	adds r1, r3, #0
	cmp r1, #0
	bge _08058D90
	ldr r2, _08058DD0 @ =0x0000FFFF
	adds r1, r1, r2
_08058D90:
	asrs r2, r1, #0x10
	adds r1, r0, #0
	cmp r1, #0
	bge _08058D9C
	ldr r0, _08058DD0 @ =0x0000FFFF
	adds r1, r1, r0
_08058D9C:
	asrs r3, r1, #0x10
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_80328D4
	movs r1, #0x7f
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x36
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_8058E10
	ldr r0, [r4, #8]
	cmp r0, #0
	blt _08058DD4
	ldr r0, [r4, #0x30]
	adds r1, r4, #0
	adds r1, #0x72
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	str r0, [r4, #0x30]
	b _08058DE0
	.align 2, 0
_08058DCC: .4byte 0x03002E20
_08058DD0: .4byte 0x0000FFFF
_08058DD4:
	movs r1, #0xe6
	lsls r1, r1, #3
	adds r0, r6, r1
	adds r1, r4, #0
	bl sub_804F808
_08058DE0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8058DE8
sub_8058DE8: @ 0x08058DE8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x54]
	bl sub_8058EB8
	adds r0, r5, #0
	bl sub_8058E10
	adds r4, #0xac
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _08058E08
	adds r0, r5, #0
	bl sub_8058CA4
_08058E08:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8058E10
sub_8058E10: @ 0x08058E10
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _08058E40 @ =0x03002E20
	ldr r1, _08058E44 @ =0x00000848
	adds r0, r0, r1
	ldr r1, [r3, #0x54]
	movs r4, #0x14
	ldrsh r2, [r0, r4]
	adds r1, #0x56
	ldrh r0, [r1]
	subs r2, r2, r0
	movs r1, #0x26
	ldrsh r0, [r3, r1]
	subs r2, r2, r0
	ldr r0, _08058E48 @ =0x0000FFFF
	ands r2, r0
	ldr r4, _08058E4C @ =0xFFFFEFFF
	adds r1, r2, r4
	ldr r0, _08058E50 @ =0x0000DFFF
	cmp r1, r0
	bls _08058E58
	ldr r0, _08058E54 @ =_0807C558
	b _08058EAA
	.align 2, 0
_08058E40: .4byte 0x03002E20
_08058E44: .4byte 0x00000848
_08058E48: .4byte 0x0000FFFF
_08058E4C: .4byte 0xFFFFEFFF
_08058E50: .4byte 0x0000DFFF
_08058E54: .4byte _0807C558
_08058E58:
	movs r0, #0xc0
	lsls r0, r0, #6
	cmp r2, r0
	bgt _08058E68
	ldr r0, _08058E64 @ =_0807C550
	b _08058EAA
	.align 2, 0
_08058E64: .4byte _0807C550
_08058E68:
	movs r0, #0xa0
	lsls r0, r0, #7
	cmp r2, r0
	bgt _08058E78
	ldr r0, _08058E74 @ =_0807C548
	b _08058EAA
	.align 2, 0
_08058E74: .4byte _0807C548
_08058E78:
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r2, r0
	bgt _08058E88
	ldr r0, _08058E84 @ =_0807C540
	b _08058EAA
	.align 2, 0
_08058E84: .4byte _0807C540
_08058E88:
	movs r0, #0xb0
	lsls r0, r0, #8
	cmp r2, r0
	bgt _08058E98
	ldr r0, _08058E94 @ =_0807C560
	b _08058EAA
	.align 2, 0
_08058E94: .4byte _0807C560
_08058E98:
	movs r0, #0xd0
	lsls r0, r0, #8
	cmp r2, r0
	bgt _08058EA8
	ldr r0, _08058EA4 @ =_0807C568
	b _08058EAA
	.align 2, 0
_08058EA4: .4byte _0807C568
_08058EA8:
	ldr r0, _08058EB4 @ =_0807C570
_08058EAA:
	str r0, [r3, #0x48]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08058EB4: .4byte _0807C570

	thumb_func_start sub_8058EB8
sub_8058EB8: @ 0x08058EB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, [r0, #0x54]
	mov ip, r1
	ldr r2, _08058F38 @ =0x03002E20
	mov sl, r2
	adds r6, r0, #0
	mov r0, ip
	adds r0, #0xd8
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x1d
	mov r0, ip
	adds r0, #0x56
	ldrh r0, [r0]
	ldr r3, _08058F3C @ =0xFFFFC000
	adds r0, r0, r3
	ldr r5, _08058F40 @ =gSinTable
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #0
	cmp r2, #0
	bge _08058EEE
	adds r0, #0x3f
_08058EEE:
	asrs r3, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r3
	ldr r4, _08058F44 @ =0x000003FF
	ands r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	mov sb, r0
	adds r0, r3, #0
	ands r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r8, r0
	mov r0, ip
	adds r0, #0xbc
	ldr r0, [r0]
	ldr r4, _08058F48 @ =0xFFFEFFFF
	adds r0, r0, r4
	ldr r1, _08058F4C @ =0x009EFFFE
	cmp r0, r1
	bhi _08058F50
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #2
	ands r0, r1
	lsrs r3, r0, #1
	b _08058F52
	.align 2, 0
_08058F38: .4byte 0x03002E20
_08058F3C: .4byte 0xFFFFC000
_08058F40: .4byte gSinTable
_08058F44: .4byte 0x000003FF
_08058F48: .4byte 0xFFFEFFFF
_08058F4C: .4byte 0x009EFFFE
_08058F50:
	movs r3, #0
_08058F52:
	movs r4, #0
	mov r0, ip
	adds r0, #0x85
	ldrb r5, [r0]
	mov r2, ip
	adds r2, #0xb4
	cmp r5, #0x5c
	bne _08058F70
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08058F9C
	movs r4, #1
_08058F70:
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08058F9C
	movs r2, #1
	adds r1, r7, #0
	ands r1, r2
	movs r0, #0x1e
	ands r0, r5
	cmp r0, #0xc
	bls _08058F96
	asrs r0, r7, #1
	ands r0, r2
	adds r0, r1, r0
	adds r0, r3, r0
	adds r2, r0, r4
	b _08058F9E
_08058F96:
	adds r0, r3, r1
	adds r2, r0, r4
	b _08058F9E
_08058F9C:
	adds r2, r3, r4
_08058F9E:
	lsls r2, r2, #0xf
	mov r3, ip
	ldr r0, [r3]
	mov r4, sb
	subs r0, r0, r4
	str r0, [r6]
	ldr r1, [r3, #4]
	mov r4, r8
	subs r3, r1, r4
	str r3, [r6, #4]
	mov r4, ip
	ldr r1, [r4, #8]
	adds r1, r1, r2
	str r1, [r6, #8]
	cmp r0, #0
	bge _08058FC2
	ldr r2, _08058FFC @ =0x0000FFFF
	adds r0, r0, r2
_08058FC2:
	asrs r4, r0, #0x10
	adds r0, r3, #0
	cmp r0, #0
	bge _08058FCE
	ldr r3, _08058FFC @ =0x0000FFFF
	adds r0, r0, r3
_08058FCE:
	asrs r2, r0, #0x10
	adds r0, r1, #0
	cmp r0, #0
	bge _08058FDA
	ldr r1, _08058FFC @ =0x0000FFFF
	adds r0, r0, r1
_08058FDA:
	asrs r3, r0, #0x10
	ldr r0, _08059000 @ =0x03002E44
	adds r1, r4, #0
	bl sub_80328D4
	movs r1, #0x7f
	ands r0, r1
	adds r1, r6, #0
	adds r1, #0x36
	strb r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08058FFC: .4byte 0x0000FFFF
_08059000: .4byte 0x03002E44

	thumb_func_start sub_8059004
sub_8059004: @ 0x08059004
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08059060 @ =0x00001019
	movs r4, #0
	strh r0, [r5, #0x10]
	movs r0, #8
	strb r0, [r5, #0xe]
	strb r0, [r5, #0xd]
	strb r0, [r5, #0xc]
	ldr r0, _08059064 @ =sub_8059168
	str r0, [r5, #0x18]
	ldr r0, _08059068 @ =sub_80590E8
	str r0, [r5, #0x5c]
	ldr r0, _0805906C @ =_080F0D68
	str r0, [r5, #0x4c]
	movs r0, #0x10
	str r0, [r5, #0x60]
	bl main_getRandom
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xfc
	lsls r1, r1, #8
	ands r0, r1
	str r0, [r5, #0x64]
	str r4, [r5, #0x6c]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r5, #0x68]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, #0
	adds r0, #0x56
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrh r1, [r5, #0x34]
	movs r0, #1
	orrs r0, r1
	ldr r1, _08059070 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r5, #0x34]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08059060: .4byte 0x00001019
_08059064: .4byte sub_8059168
_08059068: .4byte sub_80590E8
_0805906C: .4byte _080F0D68
_08059070: .4byte 0x0000FFFD

	thumb_func_start sub_8059074
sub_8059074: @ 0x08059074
	adds r2, r0, #0
	ldr r3, [r2, #0x64]
	ldr r1, _080590B0 @ =gSinTable
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08059084
	adds r0, #0x3f
_08059084:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldr r1, [r2, #0x68]
	adds r0, r0, r1
	str r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r3, r1
	str r0, [r2, #0x64]
	ldr r1, [r2, #0x6c]
	cmp r1, #0xe
	beq _080590D0
	cmp r1, #0xe
	bgt _080590B4
	cmp r1, #0
	beq _080590BE
	b _080590D4
	.align 2, 0
_080590B0: .4byte gSinTable
_080590B4:
	cmp r1, #0x1a
	beq _080590C8
	cmp r1, #0x28
	beq _080590D0
	b _080590D4
_080590BE:
	ldr r0, _080590C4 @ =_080F0D68
	b _080590D2
	.align 2, 0
_080590C4: .4byte _080F0D68
_080590C8:
	ldr r0, _080590CC @ =_080F0DA8
	b _080590D2
	.align 2, 0
_080590CC: .4byte _080F0DA8
_080590D0:
	ldr r0, _080590E4 @ =_080F0D88
_080590D2:
	str r0, [r2, #0x4c]
_080590D4:
	adds r0, r1, #1
	str r0, [r2, #0x6c]
	cmp r0, #0x33
	ble _080590E0
	movs r0, #0
	str r0, [r2, #0x6c]
_080590E0:
	bx lr
	.align 2, 0
_080590E4: .4byte _080F0D88

	thumb_func_start sub_80590E8
sub_80590E8: @ 0x080590E8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x60]
	cmp r0, #0xf0
	beq _08059116
	cmp r0, #0xf0
	bgt _08059100
	cmp r0, #0x10
	beq _0805910A
	cmp r0, #0x11
	beq _0805910E
	b _08059160
_08059100:
	cmp r0, #0xf2
	beq _08059150
	cmp r0, #0xf2
	blt _08059130
	b _08059160
_0805910A:
	movs r0, #0x11
	str r0, [r2, #0x60]
_0805910E:
	adds r0, r2, #0
	bl sub_8059074
	b _08059160
_08059116:
	movs r0, #0xf1
	str r0, [r2, #0x60]
	ldrh r1, [r2, #0x34]
	ldr r0, _08059144 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #0x34]
	ldr r1, _08059148 @ =0xFFFFFF00
	adds r0, r2, #0
	adds r0, #0x58
	strh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r2, #0x30]
_08059130:
	ldr r0, [r2, #8]
	ldr r1, [r2, #0x30]
	adds r0, r0, r1
	str r0, [r2, #8]
	cmp r0, #0
	blt _08059150
	ldr r3, _0805914C @ =0xFFFFC000
	adds r0, r1, r3
	str r0, [r2, #0x30]
	b _08059160
	.align 2, 0
_08059144: .4byte 0x0000FFFD
_08059148: .4byte 0xFFFFFF00
_0805914C: .4byte 0xFFFFC000
_08059150:
	movs r0, #0xf3
	str r0, [r2, #0x60]
	movs r0, #0
	str r0, [r2, #0x18]
	ldrh r1, [r2, #0x34]
	ldr r0, _08059164 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2, #0x34]
_08059160:
	pop {r0}
	bx r0
	.align 2, 0
_08059164: .4byte 0x0000FFFE

	thumb_func_start sub_8059168
sub_8059168: @ 0x08059168
	adds r3, r0, #0
	adds r2, r1, #0
	ldrh r0, [r2, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _08059198
	adds r0, r2, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08059198
	adds r0, r2, #0
	adds r0, #0x6a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08059198
	movs r0, #0xf0
	str r0, [r3, #0x60]
_08059198:
	bx lr
	.align 2, 0

	thumb_func_start sub_805919C
sub_805919C: @ 0x0805919C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080591F4 @ =0x0000101A
	strh r0, [r4, #0x10]
	movs r0, #8
	strb r0, [r4, #0xe]
	strb r0, [r4, #0xd]
	strb r0, [r4, #0xc]
	ldr r0, _080591F8 @ =sub_80592B0
	str r0, [r4, #0x18]
	ldr r0, _080591FC @ =sub_8059208
	str r0, [r4, #0x5c]
	ldr r0, _08059200 @ =_080F0DE8
	str r0, [r4, #0x4c]
	movs r0, #0x10
	str r0, [r4, #0x60]
	bl main_getRandom
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xfc
	lsls r1, r1, #8
	ands r0, r1
	str r0, [r4, #0x64]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r4, #0x68]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r4, #0
	adds r0, #0x56
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrh r1, [r4, #0x34]
	movs r0, #1
	orrs r0, r1
	ldr r1, _08059204 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #0x34]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080591F4: .4byte 0x0000101A
_080591F8: .4byte sub_80592B0
_080591FC: .4byte sub_8059208
_08059200: .4byte _080F0DE8
_08059204: .4byte 0x0000FFFD

	thumb_func_start sub_8059208
sub_8059208: @ 0x08059208
	adds r2, r0, #0
	ldr r0, [r2, #0x60]
	cmp r0, #0xf0
	beq _0805925C
	cmp r0, #0xf0
	bgt _0805921E
	cmp r0, #0x10
	beq _08059228
	cmp r0, #0x11
	beq _0805922C
	b _080592A8
_0805921E:
	cmp r0, #0xf2
	beq _08059298
	cmp r0, #0xf2
	blt _08059276
	b _080592A8
_08059228:
	movs r0, #0x11
	str r0, [r2, #0x60]
_0805922C:
	ldr r3, [r2, #0x64]
	ldr r1, _08059258 @ =gSinTable
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0805923A
	adds r0, #0x3f
_0805923A:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldr r1, [r2, #0x68]
	adds r0, r0, r1
	str r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r3, r1
	str r0, [r2, #0x64]
	b _080592A8
	.align 2, 0
_08059258: .4byte gSinTable
_0805925C:
	movs r0, #0xf1
	str r0, [r2, #0x60]
	ldrh r1, [r2, #0x34]
	ldr r0, _0805928C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #0x34]
	ldr r1, _08059290 @ =0xFFFFFF00
	adds r0, r2, #0
	adds r0, #0x58
	strh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r2, #0x30]
_08059276:
	ldr r0, [r2, #8]
	ldr r1, [r2, #0x30]
	adds r0, r0, r1
	str r0, [r2, #8]
	cmp r0, #0
	blt _08059298
	ldr r3, _08059294 @ =0xFFFFC000
	adds r0, r1, r3
	str r0, [r2, #0x30]
	b _080592A8
	.align 2, 0
_0805928C: .4byte 0x0000FFFD
_08059290: .4byte 0xFFFFFF00
_08059294: .4byte 0xFFFFC000
_08059298:
	movs r0, #0xf3
	str r0, [r2, #0x60]
	movs r0, #0
	str r0, [r2, #0x18]
	ldrh r1, [r2, #0x34]
	ldr r0, _080592AC @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2, #0x34]
_080592A8:
	bx lr
	.align 2, 0
_080592AC: .4byte 0x0000FFFE

	thumb_func_start sub_80592B0
sub_80592B0: @ 0x080592B0
	adds r3, r0, #0
	adds r2, r1, #0
	ldrh r0, [r2, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _080592E0
	adds r0, r2, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080592E0
	adds r0, r2, #0
	adds r0, #0x6a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080592E0
	movs r0, #0xf0
	str r0, [r3, #0x60]
_080592E0:
	bx lr
	.align 2, 0

	thumb_func_start sub_80592E4
sub_80592E4: @ 0x080592E4
	adds r3, r0, #0
	ldr r0, _08059348 @ =0x0000101B
	movs r1, #0
	movs r2, #0
	strh r0, [r3, #0x10]
	movs r0, #8
	strb r0, [r3, #0xe]
	strb r0, [r3, #0xd]
	strb r0, [r3, #0xc]
	ldr r0, _0805934C @ =_080F0E28
	str r0, [r3, #0x4c]
	adds r0, r3, #0
	adds r0, #0x60
	strb r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r1, r3, #0
	adds r1, #0x64
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x66
	strh r2, [r0]
	adds r1, #4
	movs r0, #0x10
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x6a
	strh r2, [r0]
	str r2, [r3, #0x28]
	str r2, [r3, #0x2c]
	str r2, [r3, #0x30]
	ldr r0, _08059350 @ =sub_80596D8
	str r0, [r3, #0x18]
	ldr r0, _08059354 @ =sub_8059358
	str r0, [r3, #0x5c]
	ldrh r0, [r3, #0x34]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strh r0, [r3, #0x34]
	movs r1, #0xe0
	adds r0, r3, #0
	adds r0, #0x56
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	bx lr
	.align 2, 0
_08059348: .4byte 0x0000101B
_0805934C: .4byte _080F0E28
_08059350: .4byte sub_80596D8
_08059354: .4byte sub_8059358

	thumb_func_start sub_8059358
sub_8059358: @ 0x08059358
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x60
	ldrb r0, [r0]
	cmp r0, #8
	bls _08059366
	b _080596CC
_08059366:
	lsls r0, r0, #2
	ldr r1, _08059370 @ =_08059374
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08059370: .4byte _08059374
_08059374: @ jump table
	.4byte _08059398 @ case 0
	.4byte _080593F0 @ case 1
	.4byte _08059400 @ case 2
	.4byte _0805952C @ case 3
	.4byte _0805953C @ case 4
	.4byte _08059678 @ case 5
	.4byte _08059696 @ case 6
	.4byte _080596B8 @ case 7
	.4byte _080596CC @ case 8
_08059398:
	adds r2, r5, #0
	adds r2, #0x62
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _080593AA
	subs r0, r1, #1
	b _080593B4
_080593AA:
	adds r0, r5, #0
	adds r0, #0x60
	movs r1, #2
	strb r1, [r0]
	movs r0, #0x40
_080593B4:
	strh r0, [r2]
	adds r1, r5, #0
	adds r1, #0x6a
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	ldr r2, _080593EC @ =gSinTable
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080593D2
	adds r0, #0x3f
_080593D2:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	str r0, [r5, #8]
	b _080596CC
	.align 2, 0
_080593EC: .4byte gSinTable
_080593F0:
	adds r0, r5, #0
	adds r0, #0x60
	movs r1, #2
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x62
	movs r0, #0x80
	strh r0, [r1]
_08059400:
	ldr r0, [r5]
	ldr r1, [r5, #0x28]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x2c]
	adds r0, r0, r1
	str r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x6a
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	ldr r2, _080594A4 @ =gSinTable
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0805942C
	adds r0, #0x3f
_0805942C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	str r0, [r5, #8]
	ldr r2, [r5, #0x28]
	adds r3, r5, #0
	adds r3, #0x64
	movs r0, #0
	ldrsh r1, [r3, r0]
	adds r0, r5, #0
	adds r0, #0x68
	ldrb r0, [r0]
	muls r0, r1, r0
	cmp r2, r0
	beq _0805946A
	adds r0, r2, r1
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x2c]
	adds r1, r5, #0
	adds r1, #0x66
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r0, r0, r1
	str r0, [r5, #0x2c]
_0805946A:
	ldr r1, [r5, #0x28]
	cmp r1, #0
	bne _080594BC
	adds r1, r5, #0
	adds r1, #0x66
	ldr r4, _080594A8 @ =0x03002E20
	movs r2, #0
	ldrsh r0, [r3, r2]
	movs r3, #0
	ldrsh r1, [r1, r3]
	bl sub_802EC38
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080594AC @ =0x00000848
	adds r4, r4, r1
	movs r2, #0x14
	ldrsh r1, [r4, r2]
	subs r1, r0, r1
	ldr r0, _080594B0 @ =0x0000FFFF
	ands r1, r0
	ldr r0, _080594B4 @ =0x00007FFF
	cmp r1, r0
	bgt _08059508
	cmp r1, #0
	blt _08059508
	ldr r0, _080594B8 @ =_080F0E48
	b _0805950A
	.align 2, 0
_080594A4: .4byte gSinTable
_080594A8: .4byte 0x03002E20
_080594AC: .4byte 0x00000848
_080594B0: .4byte 0x0000FFFF
_080594B4: .4byte 0x00007FFF
_080594B8: .4byte _080F0E48
_080594BC:
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	ldr r1, [r5, #0x2c]
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	ldr r4, _080594F4 @ =0x03002E20
	lsls r0, r0, #0xf
	lsls r1, r1, #0xf
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	bl sub_802EC38
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _080594F8 @ =0x00000848
	adds r4, r4, r3
	movs r2, #0x14
	ldrsh r1, [r4, r2]
	subs r1, r0, r1
	ldr r0, _080594FC @ =0x0000FFFF
	ands r1, r0
	ldr r0, _08059500 @ =0x00007FFF
	cmp r1, r0
	bgt _08059508
	cmp r1, #0
	blt _08059508
	ldr r0, _08059504 @ =_080F0E48
	b _0805950A
	.align 2, 0
_080594F4: .4byte 0x03002E20
_080594F8: .4byte 0x00000848
_080594FC: .4byte 0x0000FFFF
_08059500: .4byte 0x00007FFF
_08059504: .4byte _080F0E48
_08059508:
	ldr r0, _08059528 @ =_080F0E28
_0805950A:
	str r0, [r5, #0x4c]
	adds r2, r5, #0
	adds r2, #0x62
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0805951E
	b _080596CC
_0805951E:
	adds r0, r5, #0
	adds r0, #0x60
	movs r1, #3
	b _0805966A
	.align 2, 0
_08059528: .4byte _080F0E28
_0805952C:
	adds r0, r5, #0
	adds r0, #0x60
	movs r1, #4
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x62
	movs r0, #0x80
	strh r0, [r1]
_0805953C:
	ldr r0, [r5]
	ldr r1, [r5, #0x28]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x2c]
	adds r0, r0, r1
	str r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x6a
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	ldr r2, _080595EC @ =gSinTable
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _08059568
	adds r0, #0x3f
_08059568:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	str r0, [r5, #8]
	ldr r2, [r5, #0x28]
	adds r3, r5, #0
	adds r3, #0x64
	movs r0, #0
	ldrsh r1, [r3, r0]
	adds r0, r5, #0
	adds r0, #0x68
	ldrb r0, [r0]
	muls r0, r1, r0
	cmn r2, r0
	beq _080595A6
	subs r0, r2, r1
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x2c]
	adds r1, r5, #0
	adds r1, #0x66
	movs r2, #0
	ldrsh r1, [r1, r2]
	subs r0, r0, r1
	str r0, [r5, #0x2c]
_080595A6:
	ldr r1, [r5, #0x28]
	cmp r1, #0
	bne _08059604
	movs r1, #0
	ldrsh r0, [r3, r1]
	rsbs r0, r0, #0
	adds r1, r5, #0
	adds r1, #0x66
	movs r2, #0
	ldrsh r1, [r1, r2]
	rsbs r1, r1, #0
	ldr r4, _080595F0 @ =0x03002E20
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_802EC38
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _080595F4 @ =0x00000848
	adds r4, r4, r3
	movs r2, #0x14
	ldrsh r1, [r4, r2]
	subs r1, r0, r1
	ldr r0, _080595F8 @ =0x0000FFFF
	ands r1, r0
	ldr r0, _080595FC @ =0x00007FFF
	cmp r1, r0
	bgt _08059650
	cmp r1, #0
	blt _08059650
	ldr r0, _08059600 @ =_080F0E48
	b _08059652
	.align 2, 0
_080595EC: .4byte gSinTable
_080595F0: .4byte 0x03002E20
_080595F4: .4byte 0x00000848
_080595F8: .4byte 0x0000FFFF
_080595FC: .4byte 0x00007FFF
_08059600: .4byte _080F0E48
_08059604:
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	ldr r1, [r5, #0x2c]
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	ldr r4, _0805963C @ =0x03002E20
	lsls r0, r0, #0xf
	lsls r1, r1, #0xf
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	bl sub_802EC38
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _08059640 @ =0x00000848
	adds r4, r4, r3
	movs r2, #0x14
	ldrsh r1, [r4, r2]
	subs r1, r0, r1
	ldr r0, _08059644 @ =0x0000FFFF
	ands r1, r0
	ldr r0, _08059648 @ =0x00007FFF
	cmp r1, r0
	bgt _08059650
	cmp r1, #0
	blt _08059650
	ldr r0, _0805964C @ =_080F0E48
	b _08059652
	.align 2, 0
_0805963C: .4byte 0x03002E20
_08059640: .4byte 0x00000848
_08059644: .4byte 0x0000FFFF
_08059648: .4byte 0x00007FFF
_0805964C: .4byte _080F0E48
_08059650:
	ldr r0, _08059674 @ =_080F0E28
_08059652:
	str r0, [r5, #0x4c]
	adds r2, r5, #0
	adds r2, #0x62
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080596CC
	adds r0, r5, #0
	adds r0, #0x60
	movs r1, #1
_0805966A:
	strb r1, [r0]
	movs r0, #0x80
	strh r0, [r2]
	b _080596CC
	.align 2, 0
_08059674: .4byte _080F0E28
_08059678:
	adds r1, r5, #0
	adds r1, #0x60
	movs r0, #6
	strb r0, [r1]
	ldrh r1, [r5, #0x34]
	ldr r0, _080596AC @ =0x0000FFFD
	ands r0, r1
	strh r0, [r5, #0x34]
	ldr r1, _080596B0 @ =0xFFFFFF00
	adds r0, r5, #0
	adds r0, #0x58
	strh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r5, #0x30]
_08059696:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x30]
	adds r0, r0, r1
	str r0, [r5, #8]
	cmp r0, #0
	blt _080596B8
	ldr r3, _080596B4 @ =0xFFFFC000
	adds r0, r1, r3
	str r0, [r5, #0x30]
	b _080596CC
	.align 2, 0
_080596AC: .4byte 0x0000FFFD
_080596B0: .4byte 0xFFFFFF00
_080596B4: .4byte 0xFFFFC000
_080596B8:
	adds r1, r5, #0
	adds r1, #0x60
	movs r2, #0
	movs r0, #8
	strb r0, [r1]
	str r2, [r5, #0x18]
	ldrh r1, [r5, #0x34]
	ldr r0, _080596D4 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r5, #0x34]
_080596CC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080596D4: .4byte 0x0000FFFE

	thumb_func_start sub_80596D8
sub_80596D8: @ 0x080596D8
	adds r3, r0, #0
	adds r2, r1, #0
	ldrh r0, [r2, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _0805970C
	adds r0, r2, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805970C
	adds r0, r2, #0
	adds r0, #0x6a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805970C
	adds r1, r3, #0
	adds r1, #0x60
	movs r0, #5
	strb r0, [r1]
_0805970C:
	bx lr
	.align 2, 0

	thumb_func_start sub_8059710
sub_8059710: @ 0x08059710
	adds r2, r0, #0
	ldr r0, _08059758 @ =0x0000101C
	movs r3, #0
	strh r0, [r2, #0x10]
	ldr r0, _0805975C @ =_080F0E68
	str r0, [r2, #0x4c]
	ldr r0, _08059760 @ =sub_805982C
	str r0, [r2, #0x5c]
	ldr r0, _08059764 @ =sub_80598EC
	str r0, [r2, #0x18]
	ldrh r1, [r2, #0x34]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2, #0x34]
	str r3, [r2, #0x60]
	str r3, [r2, #0x64]
	str r3, [r2, #0x68]
	movs r1, #0xe0
	adds r0, r2, #0
	adds r0, #0x56
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, [r2, #0x50]
	movs r0, #0xa1
	lsls r0, r0, #0x10
	cmp r1, r0
	beq _0805976C
	adds r0, #1
	cmp r1, r0
	bne _0805976C
	ldr r0, _08059768 @ =0xFFFF8000
	str r0, [r2, #0x28]
	str r3, [r2, #0x2c]
	b _08059776
	.align 2, 0
_08059758: .4byte 0x0000101C
_0805975C: .4byte _080F0E68
_08059760: .4byte sub_805982C
_08059764: .4byte sub_80598EC
_08059768: .4byte 0xFFFF8000
_0805976C:
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r2, #0x28]
	movs r0, #0
	str r0, [r2, #0x2c]
_08059776:
	bx lr

	thumb_func_start sub_8059778
sub_8059778: @ 0x08059778
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r0, r2, #0
	adds r1, r3, #0
	ldr r4, _080597C0 @ =0x03002E20
	lsrs r2, r0, #0x1f
	adds r0, r0, r2
	lsls r0, r0, #0xf
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	lsls r1, r1, #0xf
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	bl sub_802EC38
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080597C4 @ =0x00000848
	adds r4, r4, r1
	movs r2, #0x14
	ldrsh r1, [r4, r2]
	subs r2, r0, r1
	ldr r0, [r6, #0x64]
	adds r0, #1
	str r0, [r6, #0x64]
	cmp r0, r5
	blt _080597CE
	ldr r1, [r6, #0x60]
	cmp r1, #0
	beq _080597C8
	movs r0, #0
	str r0, [r6, #0x60]
	str r0, [r6, #0x64]
	b _080597CE
	.align 2, 0
_080597C0: .4byte 0x03002E20
_080597C4: .4byte 0x00000848
_080597C8:
	movs r0, #1
	str r0, [r6, #0x60]
	str r1, [r6, #0x64]
_080597CE:
	ldr r0, [r6, #0x60]
	cmp r0, #0
	beq _080597FC
	ldr r1, _080597E8 @ =0x0000FFFF
	ands r1, r2
	ldr r0, _080597EC @ =0x00007FFF
	cmp r1, r0
	bgt _080597F4
	cmp r1, #0
	blt _080597F4
	ldr r0, _080597F0 @ =_080F0EA8
	b _0805981E
	.align 2, 0
_080597E8: .4byte 0x0000FFFF
_080597EC: .4byte 0x00007FFF
_080597F0: .4byte _080F0EA8
_080597F4:
	ldr r0, _080597F8 @ =_080F0E68
	b _0805981E
	.align 2, 0
_080597F8: .4byte _080F0E68
_080597FC:
	ldr r1, _08059810 @ =0x0000FFFF
	ands r1, r2
	ldr r0, _08059814 @ =0x00007FFF
	cmp r1, r0
	bgt _0805981C
	cmp r1, #0
	blt _0805981C
	ldr r0, _08059818 @ =_080F0EC8
	b _0805981E
	.align 2, 0
_08059810: .4byte 0x0000FFFF
_08059814: .4byte 0x00007FFF
_08059818: .4byte _080F0EC8
_0805981C:
	ldr r0, _08059828 @ =_080F0E88
_0805981E:
	str r0, [r6, #0x4c]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08059828: .4byte _080F0E88

	thumb_func_start sub_805982C
sub_805982C: @ 0x0805982C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x68]
	ldrh r3, [r4, #0x34]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _080598B8
	cmp r2, #0xaf
	ble _08059860
	ldr r0, _0805985C @ =0x0000010F
	cmp r2, r0
	bgt _08059890
	ldr r0, [r4]
	ldr r2, [r4, #0x28]
	subs r0, r0, r2
	str r0, [r4]
	ldr r0, [r4, #4]
	ldr r3, [r4, #0x2c]
	subs r0, r0, r3
	str r0, [r4, #4]
	rsbs r2, r2, #0
	rsbs r3, r3, #0
	b _08059878
	.align 2, 0
_0805985C: .4byte 0x0000010F
_08059860:
	cmp r2, #0x60
	bge _08059882
	cmp r2, #0
	blt _08059890
	ldr r0, [r4]
	ldr r2, [r4, #0x28]
	adds r0, r0, r2
	str r0, [r4]
	ldr r0, [r4, #4]
	ldr r3, [r4, #0x2c]
	adds r0, r0, r3
	str r0, [r4, #4]
_08059878:
	adds r0, r4, #0
	movs r1, #6
	bl sub_8059778
	b _080598A0
_08059882:
	ldr r2, [r4, #0x28]
	ldr r3, [r4, #0x2c]
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_8059778
	b _080598A0
_08059890:
	ldr r2, [r4, #0x28]
	rsbs r2, r2, #0
	ldr r3, [r4, #0x2c]
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_8059778
_080598A0:
	ldr r0, [r4, #0x68]
	adds r0, #1
	str r0, [r4, #0x68]
	ldr r1, _080598B4 @ =0x0000015F
	cmp r0, r1
	ble _080598DE
	movs r0, #0
	str r0, [r4, #0x68]
	b _080598DE
	.align 2, 0
_080598B4: .4byte 0x0000015F
_080598B8:
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _080598DE
	ldr r1, _080598E4 @ =gSinTable
	lsls r0, r2, #6
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	str r0, [r4, #8]
	subs r0, r2, #1
	str r0, [r4, #0x68]
	cmp r0, #0
	bge _080598DE
	ldr r0, _080598E8 @ =0x0000FFFE
	ands r3, r0
	strh r3, [r4, #0x34]
_080598DE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080598E4: .4byte gSinTable
_080598E8: .4byte 0x0000FFFE

	thumb_func_start sub_80598EC
sub_80598EC: @ 0x080598EC
	adds r3, r0, #0
	adds r2, r1, #0
	ldrh r0, [r2, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _0805992C
	adds r0, r2, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805992C
	adds r0, r2, #0
	adds r0, #0x6a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0805992C
	movs r0, #0x20
	str r0, [r3, #0x68]
	ldrh r1, [r3, #0x34]
	ldr r0, _08059930 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r3, #0x34]
	ldr r1, _08059934 @ =0xFFFFFF00
	adds r0, r3, #0
	adds r0, #0x58
	strh r1, [r0]
_0805992C:
	bx lr
	.align 2, 0
_08059930: .4byte 0x0000FFFD
_08059934: .4byte 0xFFFFFF00

	thumb_func_start sub_8059938
sub_8059938: @ 0x08059938
	adds r3, r0, #0
	ldr r0, _08059998 @ =0x0000101D
	movs r2, #0
	strh r0, [r3, #0x10]
	movs r0, #8
	strb r0, [r3, #0xe]
	strb r0, [r3, #0xd]
	strb r0, [r3, #0xc]
	ldr r0, _0805999C @ =sub_80599EC
	str r0, [r3, #0x5c]
	ldr r0, _080599A0 @ =_080F0EE8
	str r0, [r3, #0x4c]
	ldrh r1, [r3, #0x34]
	ldr r0, _080599A4 @ =0x0000FFFE
	ands r0, r1
	ldr r1, _080599A8 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r3, #0x34]
	movs r1, #0xe0
	adds r0, r3, #0
	adds r0, #0x56
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r3]
	str r0, [r3, #0x68]
	ldr r0, [r3, #4]
	str r0, [r3, #0x6c]
	adds r0, r3, #0
	adds r0, #0x60
	strb r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r3, #0x28]
	str r0, [r3, #0x2c]
	ldr r1, [r3, #0x50]
	ldr r0, _080599AC @ =0x00A20001
	cmp r1, r0
	beq _080599B0
	cmp r1, r0
	ble _080599DA
	adds r0, #1
	cmp r1, r0
	beq _080599BE
	adds r0, #1
	cmp r1, r0
	beq _080599CC
	b _080599DA
	.align 2, 0
_08059998: .4byte 0x0000101D
_0805999C: .4byte sub_80599EC
_080599A0: .4byte _080F0EE8
_080599A4: .4byte 0x0000FFFE
_080599A8: .4byte 0x0000FFFD
_080599AC: .4byte 0x00A20001
_080599B0:
	adds r0, r3, #0
	adds r0, #0x66
	movs r1, #0x80
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	b _080599E8
_080599BE:
	adds r1, r3, #0
	adds r1, #0x66
	movs r0, #0x80
	strh r0, [r1]
	subs r1, #2
	movs r0, #0x90
	b _080599E6
_080599CC:
	adds r1, r3, #0
	adds r1, #0x66
	movs r0, #0x80
	strh r0, [r1]
	subs r1, #2
	movs r0, #0xa0
	b _080599E6
_080599DA:
	adds r1, r3, #0
	adds r1, #0x66
	movs r0, #0x80
	strh r0, [r1]
	subs r1, #2
	movs r0, #0x70
_080599E6:
	strh r0, [r1]
_080599E8:
	bx lr
	.align 2, 0

	thumb_func_start sub_80599EC
sub_80599EC: @ 0x080599EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r0, #0x62
	movs r1, #0
	ldrsh r7, [r0, r1]
	subs r0, #2
	ldrb r0, [r0]
	mov r8, r0
	cmp r0, #0xb
	bls _08059A0A
	b _08059DDE
_08059A0A:
	lsls r0, r0, #2
	ldr r1, _08059A14 @ =_08059A18
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08059A14: .4byte _08059A18
_08059A18: @ jump table
	.4byte _08059A48 @ case 0
	.4byte _08059A70 @ case 1
	.4byte _08059A84 @ case 2
	.4byte _08059B36 @ case 3
	.4byte _08059B90 @ case 4
	.4byte _08059C06 @ case 5
	.4byte _08059C60 @ case 6
	.4byte _08059CD2 @ case 7
	.4byte _08059D0C @ case 8
	.4byte _08059D7C @ case 9
	.4byte _08059DC8 @ case 10
	.4byte _08059DD4 @ case 11
_08059A48:
	movs r2, #1
	mov r8, r2
	adds r0, r6, #0
	adds r0, #0x64
	movs r1, #0
	ldrsh r7, [r0, r1]
	movs r0, #4
	strb r0, [r6, #0xe]
	strb r0, [r6, #0xd]
	strb r0, [r6, #0xc]
	ldrh r1, [r6, #0x34]
	ldr r0, _08059A7C @ =0x0000FFFE
	ands r0, r1
	ldr r1, _08059A80 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r6, #0x34]
	ldr r0, [r6, #0x68]
	str r0, [r6]
	ldr r0, [r6, #0x6c]
	str r0, [r6, #4]
_08059A70:
	subs r7, #1
	cmp r7, #0
	ble _08059A78
	b _08059DDE
_08059A78:
	movs r2, #2
	b _08059DDC
	.align 2, 0
_08059A7C: .4byte 0x0000FFFE
_08059A80: .4byte 0x0000FFFD
_08059A84:
	movs r0, #3
	mov r8, r0
	ldr r0, _08059B74 @ =_080F0EE8
	str r0, [r6, #0x4c]
	ldr r0, _08059B78 @ =nullsub_30
	str r0, [r6, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #0xe
	str r0, [r6, #8]
	movs r0, #0
	str r0, [r6, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r6, #0
	adds r0, #0x56
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrh r0, [r6, #0x34]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strh r0, [r6, #0x34]
	ldr r0, _08059B7C @ =0x03002E20
	adds r3, r0, #0
	adds r3, #0x24
	ldr r1, _08059B80 @ =0x00000838
	adds r0, r0, r1
	ldr r2, [r0]
	movs r0, #0x24
	ldrsh r1, [r6, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08059B36
	ldr r0, [r2, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08059B36
	ldr r1, _08059B84 @ =gMPlayTable
	mov sb, r1
	ldr r0, _08059B88 @ =gSongTable
	movs r2, #0xc1
	lsls r2, r2, #4
	adds r5, r0, r2
	ldrh r1, [r5, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r0, #0
	bne _08059B36
	adds r0, r3, #0
	adds r1, r6, #0
	bl sub_804CD28
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x3f
	ble _08059B36
	adds r4, r2, #0
	cmp r4, #0
	beq _08059B36
	movs r0, #0xc1
	lsls r0, r0, #1
	bl m4aSongNumStart
	ldrh r1, [r5, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	bl m4aMPlayImmInit
	ldrh r1, [r5, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	movs r1, #1
	adds r2, r4, #0
	bl m4aMPlayVolumeControl
_08059B36:
	adds r2, r6, #0
	adds r2, #0x56
	movs r1, #0
	ldrsh r0, [r2, r1]
	subs r0, #0x18
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc0
	bgt _08059B4C
	movs r1, #0xc0
_08059B4C:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	strh r0, [r2]
	adds r1, r6, #0
	adds r1, #0x58
	strh r0, [r1]
	ldr r0, [r6, #0x30]
	ldr r2, _08059B8C @ =0xFFFFF400
	adds r0, r0, r2
	str r0, [r6, #0x30]
	ldr r1, [r6, #8]
	adds r1, r1, r0
	cmp r1, #0
	bgt _08059B6E
	movs r1, #0
	movs r0, #4
	mov r8, r0
_08059B6E:
	str r1, [r6, #8]
	b _08059DDE
	.align 2, 0
_08059B74: .4byte _080F0EE8
_08059B78: .4byte nullsub_30
_08059B7C: .4byte 0x03002E20
_08059B80: .4byte 0x00000838
_08059B84: .4byte gMPlayTable
_08059B88: .4byte gSongTable
_08059B8C: .4byte 0xFFFFF400
_08059B90:
	ldr r0, _08059C10 @ =nullsub_31
	str r0, [r6, #0x18]
	movs r1, #5
	mov r8, r1
	movs r7, #0xa
	movs r1, #0xc0
	adds r0, r6, #0
	adds r0, #0x56
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, _08059C14 @ =0x03002E20
	adds r2, r0, #0
	adds r2, #0x24
	ldr r1, _08059C18 @ =0x00000838
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08059C06
	adds r0, r2, #0
	adds r1, r6, #0
	bl sub_804CD28
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x3f
	ble _08059C06
	adds r5, r2, #0
	cmp r5, #0
	beq _08059C06
	ldr r0, _08059C1C @ =0x00000183
	bl m4aSongNumStart
	ldr r2, _08059C20 @ =gMPlayTable
	mov sb, r2
	ldr r4, _08059C24 @ =gSongTable
	ldr r0, _08059C28 @ =0x00000C18
	adds r4, r4, r0
	ldrh r1, [r4, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	bl m4aMPlayImmInit
	ldrh r1, [r4, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	movs r1, #1
	adds r2, r5, #0
	bl m4aMPlayVolumeControl
_08059C06:
	cmp r7, #8
	ble _08059C30
	ldr r0, _08059C2C @ =_080F0F28
	b _08059C4A
	.align 2, 0
_08059C10: .4byte nullsub_31
_08059C14: .4byte 0x03002E20
_08059C18: .4byte 0x00000838
_08059C1C: .4byte 0x00000183
_08059C20: .4byte gMPlayTable
_08059C24: .4byte gSongTable
_08059C28: .4byte 0x00000C18
_08059C2C: .4byte _080F0F28
_08059C30:
	cmp r7, #5
	ble _08059C3C
	ldr r0, _08059C38 @ =_080F0F48
	b _08059C4A
	.align 2, 0
_08059C38: .4byte _080F0F48
_08059C3C:
	cmp r7, #2
	ble _08059C48
	ldr r0, _08059C44 @ =_080F0F68
	b _08059C4A
	.align 2, 0
_08059C44: .4byte _080F0F68
_08059C48:
	ldr r0, _08059C5C @ =_080F0F88
_08059C4A:
	str r0, [r6, #0x4c]
	subs r7, #1
	cmp r7, #0
	ble _08059C54
	b _08059DDE
_08059C54:
	movs r1, #6
	mov r8, r1
	b _08059DDE
	.align 2, 0
_08059C5C: .4byte _080F0F88
_08059C60:
	movs r2, #7
	mov r8, r2
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r6, #0x30]
	ldr r0, _08059CF8 @ =_080F0EE8
	str r0, [r6, #0x4c]
	ldr r0, _08059CFC @ =0x03002E20
	adds r2, r0, #0
	adds r2, #0x24
	ldr r1, _08059D00 @ =0x00000838
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08059CD2
	adds r0, r2, #0
	adds r1, r6, #0
	bl sub_804CD28
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x3f
	ble _08059CD2
	mov sb, r2
	cmp r2, #0
	beq _08059CD2
	movs r0, #0xc2
	lsls r0, r0, #1
	bl m4aSongNumStart
	ldr r2, _08059D04 @ =gMPlayTable
	mov sl, r2
	ldr r4, _08059D08 @ =gSongTable
	movs r0, #0xc2
	lsls r0, r0, #4
	adds r4, r4, r0
	ldrh r1, [r4, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	bl m4aMPlayImmInit
	ldrh r1, [r4, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	movs r1, #1
	mov r2, sb
	bl m4aMPlayVolumeControl
_08059CD2:
	ldr r0, [r6]
	ldr r1, [r6, #0x28]
	adds r0, r0, r1
	str r0, [r6]
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x2c]
	adds r0, r0, r1
	str r0, [r6, #4]
	ldr r0, [r6, #8]
	ldr r1, [r6, #0x30]
	adds r0, r0, r1
	str r0, [r6, #8]
	cmp r0, #0
	bgt _08059DBC
	movs r0, #0
	str r0, [r6, #8]
	movs r1, #8
	mov r8, r1
	b _08059DDE
	.align 2, 0
_08059CF8: .4byte _080F0EE8
_08059CFC: .4byte 0x03002E20
_08059D00: .4byte 0x00000838
_08059D04: .4byte gMPlayTable
_08059D08: .4byte gSongTable
_08059D0C:
	movs r0, #9
	mov r8, r0
	ldr r0, [r6, #0x30]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x30]
	ldr r0, _08059DA4 @ =0x03002E20
	adds r2, r0, #0
	adds r2, #0x24
	ldr r1, _08059DA8 @ =0x00000838
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08059D7C
	adds r0, r2, #0
	adds r1, r6, #0
	bl sub_804CD28
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x3f
	ble _08059D7C
	mov sb, r2
	cmp r2, #0
	beq _08059D7C
	ldr r0, _08059DAC @ =0x00000185
	bl m4aSongNumStart
	ldr r2, _08059DB0 @ =gMPlayTable
	mov sl, r2
	ldr r4, _08059DB4 @ =gSongTable
	ldr r0, _08059DB8 @ =0x00000C28
	adds r4, r4, r0
	ldrh r1, [r4, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	bl m4aMPlayImmInit
	ldrh r1, [r4, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	movs r1, #1
	mov r2, sb
	bl m4aMPlayVolumeControl
_08059D7C:
	ldr r0, [r6]
	ldr r1, [r6, #0x28]
	adds r0, r0, r1
	str r0, [r6]
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x2c]
	adds r0, r0, r1
	str r0, [r6, #4]
	ldr r0, [r6, #8]
	ldr r1, [r6, #0x30]
	adds r0, r0, r1
	str r0, [r6, #8]
	cmp r0, #0
	bgt _08059DBC
	movs r0, #0
	str r0, [r6, #8]
	movs r1, #0xa
	mov r8, r1
	b _08059DDE
	.align 2, 0
_08059DA4: .4byte 0x03002E20
_08059DA8: .4byte 0x00000838
_08059DAC: .4byte 0x00000185
_08059DB0: .4byte gMPlayTable
_08059DB4: .4byte gSongTable
_08059DB8: .4byte 0x00000C28
_08059DBC:
	ldr r2, _08059DC4 @ =0xFFFFE800
	adds r0, r1, r2
	str r0, [r6, #0x30]
	b _08059DDE
	.align 2, 0
_08059DC4: .4byte 0xFFFFE800
_08059DC8:
	movs r0, #0xb
	mov r8, r0
	adds r0, r6, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r7, [r0, r1]
_08059DD4:
	subs r7, #1
	cmp r7, #0
	bgt _08059DDE
	movs r2, #0
_08059DDC:
	mov r8, r2
_08059DDE:
	adds r0, r6, #0
	adds r0, #0x60
	mov r1, r8
	strb r1, [r0]
	adds r0, #2
	strh r7, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start nullsub_30
nullsub_30: @ 0x08059DF8
	bx lr
	.align 2, 0

	thumb_func_start nullsub_31
nullsub_31: @ 0x08059DFC
	bx lr
	.align 2, 0

	thumb_func_start sub_8059E00
sub_8059E00: @ 0x08059E00
	push {r4, lr}
	adds r2, r0, #0
	ldr r4, [r2, #0x64]
	ldr r0, [r2, #0x60]
	cmp r0, #0
	beq _08059E32
	ldrh r0, [r2, #0x34]
	ldr r3, _08059E38 @ =0x0000FFFD
	ands r3, r0
	strh r3, [r2, #0x34]
	ldr r1, _08059E3C @ =gSinTable
	lsls r0, r4, #6
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	str r0, [r2, #8]
	subs r0, r4, #1
	str r0, [r2, #0x64]
	cmp r0, #0
	bge _08059E32
	ldr r0, _08059E40 @ =0x0000FFFE
	ands r0, r3
	strh r0, [r2, #0x34]
_08059E32:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08059E38: .4byte 0x0000FFFD
_08059E3C: .4byte gSinTable
_08059E40: .4byte 0x0000FFFE

	thumb_func_start sub_8059E44
sub_8059E44: @ 0x08059E44
	adds r2, r0, #0
	adds r3, r1, #0
	ldrh r0, [r3, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _08059E7A
	adds r0, r3, #0
	adds r0, #0x6a
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08059E7A
	ldr r0, [r2, #0x60]
	cmp r0, #0
	bne _08059E7A
	movs r0, #1
	str r0, [r2, #0x60]
	movs r0, #0x20
	str r0, [r2, #0x64]
	ldr r1, _08059E7C @ =0xFFFFFF00
	adds r0, r2, #0
	adds r0, #0x58
	strh r1, [r0]
_08059E7A:
	bx lr
	.align 2, 0
_08059E7C: .4byte 0xFFFFFF00

	thumb_func_start sub_8059E80
sub_8059E80: @ 0x08059E80
	ldr r1, _08059E90 @ =sub_8059E00
	str r1, [r0, #0x5c]
	ldr r1, _08059E94 @ =sub_8059E44
	str r1, [r0, #0x18]
	movs r1, #0
	str r1, [r0, #0x60]
	str r1, [r0, #0x64]
	bx lr
	.align 2, 0
_08059E90: .4byte sub_8059E00
_08059E94: .4byte sub_8059E44

	thumb_func_start sub_8059E98
sub_8059E98: @ 0x08059E98
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08059EF4 @ =0x00001008
	movs r4, #0
	strh r0, [r5, #0x10]
	movs r0, #8
	movs r1, #0x20
	strb r0, [r5, #0xc]
	strb r0, [r5, #0xd]
	strb r1, [r5, #0xe]
	ldr r0, _08059EF8 @ =sub_8059FAC
	str r0, [r5, #0x18]
	ldr r0, _08059EFC @ =sub_8059F04
	str r0, [r5, #0x5c]
	ldr r0, _08059F00 @ =_080F0FE8
	str r0, [r5, #0x4c]
	movs r0, #0x10
	str r0, [r5, #0x60]
	bl main_getRandom
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xfc
	lsls r1, r1, #8
	ands r0, r1
	str r0, [r5, #0x64]
	str r4, [r5, #0x6c]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r5, #0x68]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, #0
	adds r0, #0x56
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrh r0, [r5, #0x34]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strh r0, [r5, #0x34]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08059EF4: .4byte 0x00001008
_08059EF8: .4byte sub_8059FAC
_08059EFC: .4byte sub_8059F04
_08059F00: .4byte _080F0FE8

	thumb_func_start sub_8059F04
sub_8059F04: @ 0x08059F04
	adds r2, r0, #0
	ldr r0, [r2, #0x60]
	cmp r0, #0xf0
	beq _08059F58
	cmp r0, #0xf0
	bgt _08059F1A
	cmp r0, #0x10
	beq _08059F24
	cmp r0, #0x11
	beq _08059F28
	b _08059FA4
_08059F1A:
	cmp r0, #0xf2
	beq _08059F94
	cmp r0, #0xf2
	blt _08059F72
	b _08059FA4
_08059F24:
	movs r0, #0x11
	str r0, [r2, #0x60]
_08059F28:
	ldr r3, [r2, #0x64]
	ldr r1, _08059F54 @ =gSinTable
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08059F36
	adds r0, #0x3f
_08059F36:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldr r1, [r2, #0x68]
	adds r0, r0, r1
	str r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r3, r1
	str r0, [r2, #0x64]
	b _08059FA4
	.align 2, 0
_08059F54: .4byte gSinTable
_08059F58:
	movs r0, #0xf1
	str r0, [r2, #0x60]
	ldrh r1, [r2, #0x34]
	ldr r0, _08059F88 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #0x34]
	ldr r1, _08059F8C @ =0xFFFFFF00
	adds r0, r2, #0
	adds r0, #0x58
	strh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r2, #0x30]
_08059F72:
	ldr r0, [r2, #8]
	ldr r1, [r2, #0x30]
	adds r0, r0, r1
	str r0, [r2, #8]
	cmp r0, #0
	blt _08059F94
	ldr r3, _08059F90 @ =0xFFFFC000
	adds r0, r1, r3
	str r0, [r2, #0x30]
	b _08059FA4
	.align 2, 0
_08059F88: .4byte 0x0000FFFD
_08059F8C: .4byte 0xFFFFFF00
_08059F90: .4byte 0xFFFFC000
_08059F94:
	movs r0, #0xf3
	str r0, [r2, #0x60]
	movs r0, #0
	str r0, [r2, #0x18]
	ldrh r1, [r2, #0x34]
	ldr r0, _08059FA8 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2, #0x34]
_08059FA4:
	bx lr
	.align 2, 0
_08059FA8: .4byte 0x0000FFFE

	thumb_func_start sub_8059FAC
sub_8059FAC: @ 0x08059FAC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldr r2, _08059FE4 @ =0x03002E20
	ldrh r0, [r3, #0x10]
	movs r1, #0xf0
	lsls r1, r1, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne _0805A00C
	adds r0, r3, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0805A00C
	adds r0, r3, #0
	adds r0, #0x6a
	movs r1, #0
	ldrsh r5, [r0, r1]
	cmp r5, #0
	beq _08059FE8
	movs r0, #0xf0
	str r0, [r4, #0x60]
	b _0805A00C
	.align 2, 0
_08059FE4: .4byte 0x03002E20
_08059FE8:
	ldr r0, _0805A014 @ =0x00000C12
	adds r2, r2, r0
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
	ldrh r1, [r4, #0x34]
	ldr r0, _0805A018 @ =0x0000FFFE
	ands r0, r1
	ldr r1, _0805A01C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #0x34]
	adds r0, r3, #0
	bl sub_8048C2C
	movs r0, #0xf3
	str r0, [r4, #0x60]
	str r5, [r4, #0x18]
_0805A00C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805A014: .4byte 0x00000C12
_0805A018: .4byte 0x0000FFFE
_0805A01C: .4byte 0x0000FFFD

	thumb_func_start sub_0805A020
sub_0805A020: @ 0x0805A020
	push {r4, lr}
	ldr r0, [r0, #0x68]
	cmp r0, #9
	bgt _0805A034
	lsls r1, r0, #5
	ldr r0, _0805A030 @ =_08070F2E
	adds r4, r1, r0
	b _0805A03C
	.align 2, 0
_0805A030: .4byte _08070F2E
_0805A034:
	subs r0, #0xa
	lsls r0, r0, #5
	ldr r1, _0805A05C @ =_0807110E
	adds r4, r0, r1
_0805A03C:
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x4a
	adds r0, r4, #0
	movs r2, #0xb
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A05C: .4byte _0807110E

	thumb_func_start sub_0805A060
sub_0805A060: @ 0x0805A060
	push {r4, lr}
	ldr r0, [r0, #0x68]
	cmp r0, #9
	bgt _0805A074
	lsls r1, r0, #5
	ldr r0, _0805A070 @ =_0807104C
	adds r4, r1, r0
	b _0805A07C
	.align 2, 0
_0805A070: .4byte _0807104C
_0805A074:
	subs r0, #0xa
	lsls r0, r0, #5
	ldr r1, _0805A09C @ =_0807122C
	adds r4, r0, r1
_0805A07C:
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x40
	adds r0, r4, #0
	movs r2, #5
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A09C: .4byte _0807122C

	thumb_func_start sub_0805A0A0
sub_0805A0A0: @ 0x0805A0A0
	push {r4, lr}
	ldr r0, [r0, #0x68]
	ldr r1, _0805A0CC @ =_080F1704
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x34
	adds r0, r4, #0
	movs r2, #2
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A0CC: .4byte _080F1704

	thumb_func_start sub_0805A0D0
sub_0805A0D0: @ 0x0805A0D0
	push {r4, lr}
	ldr r4, [r0, #0x68]
	lsls r4, r4, #5
	ldr r0, _0805A0F8 @ =_08071304
	adds r4, r4, r0
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x20
	adds r0, r4, #0
	movs r2, #6
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A0F8: .4byte _08071304

	thumb_func_start sub_0805A0FC
sub_0805A0FC: @ 0x0805A0FC
	push {r4, lr}
	ldr r4, [r0, #0x68]
	lsls r4, r4, #5
	ldr r0, _0805A124 @ =_08071310
	adds r4, r4, r0
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x2c
	adds r0, r4, #0
	movs r2, #4
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A124: .4byte _08071310

	thumb_func_start sub_0805A128
sub_0805A128: @ 0x0805A128
	push {r4, lr}
	ldr r4, [r0, #0x68]
	lsls r4, r4, #5
	ldr r0, _0805A150 @ =_080714BC
	adds r4, r4, r0
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x40
	adds r0, r4, #0
	movs r2, #8
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A150: .4byte _080714BC

	thumb_func_start sub_0805A154
sub_0805A154: @ 0x0805A154
	push {r4, lr}
	ldr r4, [r0, #0x68]
	lsls r4, r4, #5
	ldr r0, _0805A184 @ =_0807159C
	adds r4, r4, r0
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0xa
	bl CpuSet
	movs r0, #0
	bl pltt_getBuffer
	movs r1, #0
	strh r1, [r0]
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A184: .4byte _0807159C

	thumb_func_start sub_0805A188
sub_0805A188: @ 0x0805A188
	push {r4, lr}
	ldr r4, [r0, #0x68]
	lsls r4, r4, #5
	ldr r0, _0805A1B0 @ =_080716DC
	adds r4, r4, r0
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x32
	adds r0, r4, #0
	movs r2, #5
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A1B0: .4byte _080716DC

	thumb_func_start sub_0805A1B4
sub_0805A1B4: @ 0x0805A1B4
	push {r4, lr}
	ldr r0, [r0, #0x68]
	ldr r1, _0805A1E0 @ =_080F1A1C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x3c
	adds r0, r4, #0
	movs r2, #2
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A1E0: .4byte _080F1A1C

	thumb_func_start sub_0805A1E4
sub_0805A1E4: @ 0x0805A1E4
	push {r4, lr}
	ldr r0, [r0, #0x68]
	ldr r1, _0805A210 @ =_080F1B2C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x78
	adds r0, r4, #0
	movs r2, #2
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A210: .4byte _080F1B2C

	thumb_func_start sub_0805A214
sub_0805A214: @ 0x0805A214
	push {r4, lr}
	ldr r0, [r0, #0x68]
	ldr r1, _0805A240 @ =_080F1B88
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xe2
	adds r0, r4, #0
	movs r2, #5
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A240: .4byte _080F1B88

	thumb_func_start sub_0805A244
sub_0805A244: @ 0x0805A244
	push {r4, lr}
	ldr r0, [r0, #0x68]
	ldr r1, _0805A270 @ =_080F1C1C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xc2
	adds r0, r4, #0
	movs r2, #0xf
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A270: .4byte _080F1C1C

	thumb_func_start sub_0805A274
sub_0805A274: @ 0x0805A274
	push {r4, lr}
	ldr r0, [r0, #0x68]
	ldr r1, _0805A2A0 @ =_080F1CB0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x50
	adds r0, r4, #0
	movs r2, #6
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A2A0: .4byte _080F1CB0

	thumb_func_start sub_0805A2A4
sub_0805A2A4: @ 0x0805A2A4
	push {r4, lr}
	ldr r0, [r0, #0x68]
	ldr r1, _0805A2D0 @ =_080F1E08
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x10
	adds r0, r4, #0
	movs r2, #6
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A2D0: .4byte _080F1E08

	thumb_func_start sub_805A2D4
sub_805A2D4: @ 0x0805A2D4
	push {lr}
	ldr r1, _0805A2F0 @ =_080F1B9C
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	ldr r1, _0805A2F4 @ =_080F1C30
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	pop {r0}
	bx r0
	.align 2, 0
_0805A2F0: .4byte _080F1B9C
_0805A2F4: .4byte _080F1C30

	thumb_func_start sub_805A2F8
sub_805A2F8: @ 0x0805A2F8
	push {lr}
	ldr r1, _0805A308 @ =_080F1CE0
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	pop {r0}
	bx r0
	.align 2, 0
_0805A308: .4byte _080F1CE0

	thumb_func_start sub_805A30C
sub_805A30C: @ 0x0805A30C
	push {lr}
	ldr r1, _0805A31C @ =_080F1E34
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	pop {r0}
	bx r0
	.align 2, 0
_0805A31C: .4byte _080F1E34

	thumb_func_start sub_0805A320
sub_0805A320: @ 0x0805A320
	push {r4, r5, lr}
	ldr r4, [r0, #0x68]
	ldr r0, _0805A364 @ =_080F1F44
	lsls r4, r4, #2
	adds r0, r4, r0
	ldr r5, [r0]
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xe0
	adds r0, r5, #0
	movs r2, #8
	bl CpuFastSet
	ldr r0, _0805A368 @ =_080F1F60
	adds r4, r4, r0
	ldr r4, [r4]
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xc0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805A364: .4byte _080F1F44
_0805A368: .4byte _080F1F60

	thumb_func_start sub_0805A36C
sub_0805A36C: @ 0x0805A36C
	push {r4, lr}
	ldr r0, [r0, #0x68]
	ldr r1, _0805A398 @ =_080F20A4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x18
	adds r0, r4, #0
	movs r2, #3
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A398: .4byte _080F20A4

	thumb_func_start sub_0805A39C
sub_0805A39C: @ 0x0805A39C
	push {r4, lr}
	ldr r0, [r0, #0x68]
	ldr r1, _0805A3C8 @ =_080F211C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x4a
	adds r0, r4, #0
	movs r2, #9
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A3C8: .4byte _080F211C

	thumb_func_start sub_0805A3CC
sub_0805A3CC: @ 0x0805A3CC
	push {r4, lr}
	ldr r0, [r0, #0x68]
	ldr r1, _0805A3F8 @ =_080F21C4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xfa
	adds r0, r4, #0
	movs r2, #3
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A3F8: .4byte _080F21C4

	thumb_func_start sub_0805A3FC
sub_0805A3FC: @ 0x0805A3FC
	push {r4, lr}
	ldr r0, [r0, #0x68]
	ldr r1, _0805A428 @ =_080F2220
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x2c
	adds r0, r4, #0
	movs r2, #4
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A428: .4byte _080F2220

	thumb_func_start sub_0805A42C
sub_0805A42C: @ 0x0805A42C
	push {r4, r5, lr}
	ldr r0, [r0, #0x68]
	ldr r1, _0805A470 @ =_080F2220
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r5, r4, #0
	adds r5, #0xa
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x20
	adds r0, r5, #0
	movs r2, #3
	bl CpuSet
	adds r4, #0x12
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x26
	adds r0, r4, #0
	movs r2, #3
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805A470: .4byte _080F2220

	thumb_func_start sub_0805A474
sub_0805A474: @ 0x0805A474
	push {r4, lr}
	ldr r0, [r0, #0x68]
	ldr r1, _0805A4A0 @ =_080F22E8
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x30
	adds r0, r4, #0
	movs r2, #5
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A4A0: .4byte _080F22E8

	thumb_func_start sub_0805A4A4
sub_0805A4A4: @ 0x0805A4A4
	push {r4, lr}
	ldr r0, [r0, #0x68]
	ldr r1, _0805A4D0 @ =_080F23D0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x14
	adds r0, r4, #0
	movs r2, #4
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A4D0: .4byte _080F23D0

	thumb_func_start sub_0805A4D4
sub_0805A4D4: @ 0x0805A4D4
	push {r4, lr}
	ldr r0, [r0, #0x68]
	ldr r1, _0805A500 @ =_080F24E0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x14
	adds r0, r4, #0
	movs r2, #5
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A500: .4byte _080F24E0

	thumb_func_start sub_0805A504
sub_0805A504: @ 0x0805A504
	push {r4, lr}
	ldr r0, [r0, #0x68]
	ldr r1, _0805A530 @ =_080F2554
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x3a
	adds r0, r4, #0
	movs r2, #3
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A530: .4byte _080F2554

	thumb_func_start sub_0805A534
sub_0805A534: @ 0x0805A534
	push {r4, lr}
	ldr r4, [r0, #0x68]
	lsls r4, r4, #5
	ldr r0, _0805A55C @ =_080718C4
	adds r4, r4, r0
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xe2
	adds r0, r4, #0
	movs r2, #4
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A55C: .4byte _080718C4

	thumb_func_start sub_0805A560
sub_0805A560: @ 0x0805A560
	push {r4, lr}
	ldr r4, [r0, #0x68]
	lsls r4, r4, #5
	ldr r0, _0805A588 @ =_080718CE
	adds r4, r4, r0
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xf8
	adds r0, r4, #0
	movs r2, #4
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A588: .4byte _080718CE

	thumb_func_start sub_0805A58C
sub_0805A58C: @ 0x0805A58C
	push {r4, lr}
	ldr r0, [r0, #0x68]
	ldr r1, _0805A5B8 @ =_080F2794
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xe2
	adds r0, r4, #0
	movs r2, #5
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A5B8: .4byte _080F2794

	thumb_func_start sub_0805A5BC
sub_0805A5BC: @ 0x0805A5BC
	push {r4, lr}
	ldr r0, [r0, #0x68]
	ldr r1, _0805A5EC @ =_080F287C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0x93
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0xb
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A5EC: .4byte _080F287C

	thumb_func_start sub_0805A5F0
sub_0805A5F0: @ 0x0805A5F0
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0xb
	bhi _0805A680
	lsls r0, r1, #2
	ldr r1, _0805A604 @ =_0805A608
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805A604: .4byte _0805A608
_0805A608: @ jump table
	.4byte _0805A638 @ case 0
	.4byte _0805A638 @ case 1
	.4byte _0805A638 @ case 2
	.4byte _0805A648 @ case 3
	.4byte _0805A648 @ case 4
	.4byte _0805A648 @ case 5
	.4byte _0805A658 @ case 6
	.4byte _0805A658 @ case 7
	.4byte _0805A658 @ case 8
	.4byte _0805A668 @ case 9
	.4byte _0805A668 @ case 10
	.4byte _0805A668 @ case 11
_0805A638:
	ldr r0, _0805A640 @ =sub_805A688
	ldr r1, _0805A644 @ =_080F2980
	b _0805A66C
	.align 2, 0
_0805A640: .4byte sub_805A688
_0805A644: .4byte _080F2980
_0805A648:
	ldr r0, _0805A650 @ =sub_805A688
	ldr r1, _0805A654 @ =_080F29B8
	b _0805A66C
	.align 2, 0
_0805A650: .4byte sub_805A688
_0805A654: .4byte _080F29B8
_0805A658:
	ldr r0, _0805A660 @ =sub_805A688
	ldr r1, _0805A664 @ =_080F29F0
	b _0805A66C
	.align 2, 0
_0805A660: .4byte sub_805A688
_0805A664: .4byte _080F29F0
_0805A668:
	ldr r0, _0805A678 @ =sub_805A688
	ldr r1, _0805A67C @ =_080F2A28
_0805A66C:
	movs r2, #0
	bl sub_8030224
	str r4, [r0, #0x54]
	b _0805A682
	.align 2, 0
_0805A678: .4byte sub_805A688
_0805A67C: .4byte _080F2A28
_0805A680:
	movs r0, #0
_0805A682:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_805A688
sub_805A688: @ 0x0805A688
	ldr r2, [r0, #0x54]
	movs r1, #0x80
	lsls r1, r1, #8
	strh r1, [r0, #0x10]
	ldr r1, [r2]
	str r1, [r0]
	ldr r1, [r2, #4]
	str r1, [r0, #4]
	movs r1, #5
	str r1, [r0, #8]
	ldrh r1, [r0, #0x34]
	movs r2, #1
	orrs r1, r2
	movs r2, #2
	orrs r1, r2
	strh r1, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start sub_805A6AC
sub_805A6AC: @ 0x0805A6AC
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldr r0, _0805A6D4 @ =0x03002E20
	adds r7, r0, #0
	adds r7, #0x24
	ldr r1, _0805A6D8 @ =0x00000848
	adds r3, r0, r1
	subs r1, #0x10
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0, #0x34]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0805A6DC
	ldrh r1, [r2, #0x34]
	movs r0, #1
	orrs r0, r1
	b _0805A6E2
	.align 2, 0
_0805A6D4: .4byte 0x03002E20
_0805A6D8: .4byte 0x00000848
_0805A6DC:
	ldrh r1, [r2, #0x34]
	ldr r0, _0805A6F8 @ =0x0000FFFE
	ands r0, r1
_0805A6E2:
	strh r0, [r2, #0x34]
	movs r1, #0xe0
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r0, [r0]
	cmp r0, #1
	ble _0805A700
	ldr r6, _0805A6FC @ =_080F2A70
	movs r5, #1
	b _0805A704
	.align 2, 0
_0805A6F8: .4byte 0x0000FFFE
_0805A6FC: .4byte _080F2A70
_0805A700:
	ldr r6, _0805A728 @ =_080F2AA8
	movs r5, #0
_0805A704:
	movs r2, #0
	ldr r0, _0805A72C @ =0x00000C58
	adds r4, r7, r0
	ldr r0, [r4]
	cmp r0, #0
	bne _0805A738
	ldr r0, _0805A728 @ =_080F2AA8
	cmp r6, r0
	beq _0805A73A
	ldr r0, _0805A730 @ =sub_805A7EC
	ldr r1, _0805A734 @ =_080F2A70
	bl sub_8030224
	adds r2, r0, #0
	cmp r2, #0
	beq _0805A74C
	str r2, [r4]
	b _0805A73A
	.align 2, 0
_0805A728: .4byte _080F2AA8
_0805A72C: .4byte 0x00000C58
_0805A730: .4byte sub_805A7EC
_0805A734: .4byte _080F2A70
_0805A738:
	adds r2, r0, #0
_0805A73A:
	cmp r2, #0
	beq _0805A74C
	ldr r0, _0805A754 @ =0x00000C5C
	adds r1, r7, r0
	ldrb r0, [r1]
	cmp r0, r5
	bne _0805A74C
	str r6, [r2, #0x5c]
	strb r5, [r1]
_0805A74C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805A754: .4byte 0x00000C5C

	thumb_func_start sub_0805A758
sub_0805A758: @ 0x0805A758
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0805A788 @ =0x03002E20
	ldr r1, _0805A78C @ =0x00000838
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0x1c
	ldrsh r1, [r0, r2]
	strh r1, [r4, #0x20]
	movs r2, #0x1e
	ldrsh r1, [r0, r2]
	strh r1, [r4, #0x22]
	movs r2, #0x24
	ldrsh r1, [r0, r2]
	adds r1, #1
	strh r1, [r4, #0x24]
	bl sub_803DA18
	adds r4, #0x58
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805A788: .4byte 0x03002E20
_0805A78C: .4byte 0x00000838

	thumb_func_start sub_0805A790
sub_0805A790: @ 0x0805A790
	ldrh r2, [r0, #0x34]
	movs r1, #1
	orrs r1, r2
	strh r1, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start sub_0805A79C
sub_0805A79C: @ 0x0805A79C
	ldrh r2, [r0, #0x34]
	ldr r1, _0805A7A8 @ =0x0000FFFE
	ands r1, r2
	strh r1, [r0, #0x34]
	bx lr
	.align 2, 0
_0805A7A8: .4byte 0x0000FFFE

	thumb_func_start sub_0805A7AC
sub_0805A7AC: @ 0x0805A7AC
	ldr r0, _0805A7B8 @ =0x03002E20
	ldr r1, _0805A7BC @ =0x00000C7C
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_0805A7B8: .4byte 0x03002E20
_0805A7BC: .4byte 0x00000C7C

	thumb_func_start sub_805A7C0
sub_805A7C0: @ 0x0805A7C0
	push {lr}
	ldr r0, _0805A7E4 @ =0x03002E20
	movs r1, #0xe8
	lsls r1, r1, #3
	adds r0, r0, r1
	bl sub_804F7AC
	adds r2, r0, #0
	cmp r2, #0
	beq _0805A7DE
	adds r0, #0x4c
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0805A7E8 @ =sub_805A6AC
	str r0, [r2, #0x14]
_0805A7DE:
	pop {r0}
	bx r0
	.align 2, 0
_0805A7E4: .4byte 0x03002E20
_0805A7E8: .4byte sub_805A6AC

	thumb_func_start sub_805A7EC
sub_805A7EC: @ 0x0805A7EC
	push {r4, r5, r6, lr}
	ldr r3, _0805A81C @ =0x03002E20
	ldr r2, _0805A820 @ =0x00000838
	adds r1, r3, r2
	ldr r4, [r1]
	movs r5, #0
	strh r5, [r0, #0x10]
	ldrh r1, [r0, #0x34]
	movs r2, #1
	movs r6, #0
	orrs r1, r2
	strh r1, [r0, #0x34]
	ldr r1, [r4]
	str r1, [r0]
	ldr r1, [r4, #4]
	str r1, [r0, #4]
	str r5, [r0, #8]
	movs r0, #0xc8
	lsls r0, r0, #4
	adds r3, r3, r0
	strb r6, [r3]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805A81C: .4byte 0x03002E20
_0805A820: .4byte 0x00000838

	thumb_func_start sub_805A824
sub_805A824: @ 0x0805A824
	push {r4, r5, lr}
	mov ip, r0
	ldr r0, [r0, #0x70]
	lsls r2, r0, #0x10
	lsrs r2, r2, #0x19
	lsls r0, r0, #0x17
	lsrs r4, r0, #0x1b
	ldr r5, _0805A868 @ =_080F2AC0
	lsls r1, r4, #1
	adds r1, r1, r4
	adds r0, r1, r5
	ldrb r0, [r0]
	lsls r0, r0, #1
	movs r3, #0xcb
	lsls r3, r3, #1
	add r3, ip
	strh r0, [r3]
	adds r0, r5, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	lsls r0, r0, #1
	movs r1, #0xcc
	lsls r1, r1, #1
	add r1, ip
	strh r0, [r1]
	subs r2, #1
	lsls r2, r2, #0x18
	lsrs r3, r2, #0x18
	cmp r3, #0
	beq _0805A86C
	mov r2, ip
	adds r2, #0x71
	lsls r3, r3, #1
	b _0805A89A
	.align 2, 0
_0805A868: .4byte _080F2AC0
_0805A86C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r3, ip
	adds r3, #0x70
	movs r1, #0x1f
	ands r1, r4
	lsls r1, r1, #4
	ldrh r2, [r3]
	ldr r0, _0805A8A8 @ =0xFFFFFE0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	lsls r0, r4, #1
	adds r0, r0, r4
	adds r1, r5, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805A8AC
	mov r2, ip
	adds r2, #0x71
	lsls r3, r0, #1
_0805A89A:
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	b _0805A8B4
	.align 2, 0
_0805A8A8: .4byte 0xFFFFFE0F
_0805A8AC:
	mov r0, ip
	movs r1, #1
	bl sub_803D950
_0805A8B4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805A8BC
sub_805A8BC: @ 0x0805A8BC
	adds r3, r0, #0
	ldr r0, [r3, #0x70]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _0805A900
	cmp r0, #1
	blt _0805A8D4
	cmp r0, #6
	bgt _0805A8D4
	cmp r0, #5
	bge _0805A900
_0805A8D4:
	adds r2, r3, #0
	adds r2, #0x70
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldrh r1, [r2]
	ldr r0, _0805A904 @ =0xFFFFFE0F
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0805A908 @ =_080F2AC0
	adds r3, #0x71
	ldrb r1, [r0, #2]
	lsls r1, r1, #1
	ldrb r2, [r3]
	movs r0, #1
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0805A900:
	bx lr
	.align 2, 0
_0805A904: .4byte 0xFFFFFE0F
_0805A908: .4byte _080F2AC0

	thumb_func_start sub_805A90C
sub_805A90C: @ 0x0805A90C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	movs r0, #0x6e
	adds r0, r0, r7
	mov ip, r0
	ldr r0, [r0]
	lsls r2, r0, #0x10
	lsrs r5, r2, #0x19
	lsls r0, r0, #0x17
	lsrs r4, r0, #0x1b
	ldr r3, _0805A96C @ =_080F2BF4
	adds r0, r7, #0
	adds r0, #0x4c
	ldrb r2, [r0]
	movs r0, #7
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r6, [r0]
	movs r2, #0xc1
	lsls r2, r2, #0x18
	adds r1, r1, r2
	lsrs r1, r1, #0x18
	cmp r1, #1
	bhi _0805A950
	ldr r0, _0805A970 @ =0x000001FF
	cmp r8, r0
	bls _0805A978
_0805A950:
	mov r0, ip
	ldrh r1, [r0]
	ldr r0, _0805A974 @ =0xFFFFFE0F
	ands r0, r1
	mov r1, ip
	strh r0, [r1]
	ldrb r1, [r6, #1]
	lsls r1, r1, #1
	mov r0, ip
	ldrb r2, [r0, #1]
	movs r0, #1
	ands r0, r2
	orrs r0, r1
	b _0805A98E
	.align 2, 0
_0805A96C: .4byte _080F2BF4
_0805A970: .4byte 0x000001FF
_0805A974: .4byte 0xFFFFFE0F
_0805A978:
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq _0805A994
	lsls r2, r5, #1
	mov r0, ip
	ldrb r1, [r0, #1]
	movs r0, #1
	ands r0, r1
	orrs r0, r2
_0805A98E:
	mov r1, ip
	strb r0, [r1, #1]
	b _0805AA04
_0805A994:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r0, r4, #2
	adds r0, r0, r6
	ldrb r3, [r0, #1]
	ldrb r1, [r0]
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r0, #1
	rsbs r0, r0, #0
	adds r5, r7, #0
	adds r5, #0x6c
	cmp r2, r0
	bne _0805A9CA
_0805A9B2:
	adds r0, r4, r3
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r0, r4, #2
	adds r0, r0, r6
	ldrb r3, [r0, #1]
	ldrb r1, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r2
	beq _0805A9B2
_0805A9CA:
	strb r1, [r5]
	lsls r0, r3, #0x18
	asrs r5, r0, #0x18
	cmp r5, #0
	beq _0805A9FC
	adds r2, r7, #0
	adds r2, #0x6e
	movs r0, #0x1f
	ands r4, r0
	lsls r3, r4, #4
	ldrh r1, [r2]
	ldr r0, _0805A9F8 @ =0xFFFFFE0F
	ands r0, r1
	orrs r0, r3
	strh r0, [r2]
	lsls r3, r5, #1
	ldrb r1, [r2, #1]
	movs r0, #1
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #1]
	b _0805AA04
	.align 2, 0
_0805A9F8: .4byte 0xFFFFFE0F
_0805A9FC:
	adds r0, r7, #0
	movs r1, #0
	bl sub_803D950
_0805AA04:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805AA10
sub_805AA10: @ 0x0805AA10
	mov ip, r0
	mov r3, ip
	adds r3, #0x6e
	ldrb r1, [r3]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #2
	beq _0805AA62
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	ldr r2, _0805AA64 @ =_080F2BF4
	mov r0, ip
	adds r0, #0x4c
	ldrb r1, [r0]
	movs r0, #7
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r2, [r0]
	ldrh r1, [r3]
	ldr r0, _0805AA68 @ =0xFFFFFE0F
	ands r0, r1
	strh r0, [r3]
	ldrb r1, [r2, #1]
	lsls r1, r1, #1
	ldrb r2, [r3, #1]
	movs r0, #1
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r2, ip
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0805AA62:
	bx lr
	.align 2, 0
_0805AA64: .4byte _080F2BF4
_0805AA68: .4byte 0xFFFFFE0F

	thumb_func_start sub_805AA6C
sub_805AA6C: @ 0x0805AA6C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	movs r5, #8
	cmp r6, #0
	beq _0805AA7A
	movs r5, #9
_0805AA7A:
	adds r0, r4, #0
	bl sub_803CA78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r4, #0x24]
	cmp r0, #0
	beq _0805AA8E
	cmp r0, #0x7f
	bne _0805AAEA
_0805AA8E:
	ldr r0, _0805AAD4 @ =0x000001FF
	cmp r1, r0
	bhi _0805AAEA
	adds r3, r4, #0
	adds r3, #0x6e
	ldrb r1, [r3]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0805AAEA
	movs r0, #0xf
	ands r5, r0
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r5
	strb r0, [r3]
	ldr r0, _0805AAD8 @ =_080F2C14
	ldrb r1, [r0, #1]
	lsls r1, r1, #1
	ldrb r2, [r3, #1]
	movs r0, #1
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	cmp r6, #0
	beq _0805AADC
	adds r0, r4, #0
	adds r0, #0x6d
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	b _0805AAEA
	.align 2, 0
_0805AAD4: .4byte 0x000001FF
_0805AAD8: .4byte _080F2C14
_0805AADC:
	adds r2, r4, #0
	adds r2, #0x6d
	ldrb r1, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0805AAEA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_805AAF0
sub_805AAF0: @ 0x0805AAF0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r3, r5, #0
	adds r3, #0x6e
	ldr r0, [r3]
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x19
	lsls r0, r0, #0x17
	lsrs r4, r0, #0x1b
	cmp r6, #0
	beq _0805AB12
	cmp r6, #0x7f
	bne _0805AB18
_0805AB12:
	ldr r0, _0805AB20 @ =0x000001FF
	cmp r2, r0
	bls _0805AB24
_0805AB18:
	adds r0, r5, #0
	bl sub_805AC24
	b _0805ABAA
	.align 2, 0
_0805AB20: .4byte 0x000001FF
_0805AB24:
	movs r6, #1
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0805AB3C
	lsls r2, r1, #1
	ldrb r1, [r3, #1]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r2
	b _0805ABA8
_0805AB3C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _0805AB7C @ =_080F2C14
	lsls r1, r4, #1
	adds r2, r1, r0
	ldrb r2, [r2]
	adds r0, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x6c
	strb r2, [r1]
	lsls r0, r0, #0x18
	asrs r5, r0, #0x18
	cmp r5, #0
	beq _0805AB84
	movs r0, #0x1f
	ands r4, r0
	lsls r2, r4, #4
	ldrh r1, [r3]
	ldr r0, _0805AB80 @ =0xFFFFFE0F
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
	lsls r2, r5, #1
	ldrb r1, [r3, #1]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r2
	b _0805ABA8
	.align 2, 0
_0805AB7C: .4byte _080F2C14
_0805AB80: .4byte 0xFFFFFE0F
_0805AB84:
	ldrb r1, [r3]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xa
	orrs r0, r1
	strb r0, [r3]
	ldrh r1, [r3]
	ldr r0, _0805ABB0 @ =0xFFFFFE0F
	ands r0, r1
	strh r0, [r3]
	ldr r0, _0805ABB4 @ =_080F2C22
	ldrb r1, [r0, #1]
	lsls r1, r1, #1
	ldrb r2, [r3, #1]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
_0805ABA8:
	strb r0, [r3, #1]
_0805ABAA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805ABB0: .4byte 0xFFFFFE0F
_0805ABB4: .4byte _080F2C22

	thumb_func_start sub_805ABB8
sub_805ABB8: @ 0x0805ABB8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r5, #0
	adds r3, #0x6e
	ldr r1, [r3]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x19
	lsls r1, r1, #0x17
	lsrs r2, r1, #0x1b
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0805ABD8
	lsls r2, r0, #1
	b _0805AC00
_0805ABD8:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, _0805AC0C @ =_080F2C14
	lsls r1, r2, #1
	adds r0, #1
	adds r1, r1, r0
	movs r4, #0
	ldrsb r4, [r1, r4]
	cmp r4, #0
	beq _0805AC14
	movs r0, #0x1f
	ands r2, r0
	lsls r2, r2, #4
	ldrh r1, [r3]
	ldr r0, _0805AC10 @ =0xFFFFFE0F
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
	lsls r2, r4, #1
_0805AC00:
	ldrb r1, [r3, #1]
	movs r0, #1
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #1]
	b _0805AC1C
	.align 2, 0
_0805AC0C: .4byte _080F2C14
_0805AC10: .4byte 0xFFFFFE0F
_0805AC14:
	adds r0, r5, #0
	movs r1, #0
	bl sub_803D950
_0805AC1C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805AC24
sub_805AC24: @ 0x0805AC24
	adds r0, #0x6e
	ldrb r2, [r0]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #0xa
	orrs r1, r2
	strb r1, [r0]
	ldrh r2, [r0]
	ldr r1, _0805AC50 @ =0xFFFFFE0F
	ands r1, r2
	strh r1, [r0]
	ldr r1, _0805AC54 @ =_080F2C22
	ldrb r2, [r1, #1]
	lsls r2, r2, #1
	ldrb r3, [r0, #1]
	movs r1, #1
	ands r1, r3
	orrs r1, r2
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
_0805AC50: .4byte 0xFFFFFE0F
_0805AC54: .4byte _080F2C22

	thumb_func_start sub_805AC58
sub_805AC58: @ 0x0805AC58
	push {r4, r5, lr}
	mov ip, r0
	adds r0, #0x72
	ldr r0, [r0]
	lsls r1, r0, #0x10
	lsrs r3, r1, #0x19
	lsls r0, r0, #0x17
	lsrs r4, r0, #0x1b
	movs r0, #0xca
	lsls r0, r0, #1
	add r0, ip
	ldrh r2, [r0]
	ldr r1, _0805AC84 @ =_080F2C38
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r5, r1, #0
	cmp r0, #1
	bne _0805AC88
	movs r0, #0x80
	lsls r0, r0, #6
	b _0805AC8C
	.align 2, 0
_0805AC84: .4byte _080F2C38
_0805AC88:
	movs r0, #0x80
	lsls r0, r0, #7
_0805AC8C:
	adds r1, r2, #0
	orrs r1, r0
	movs r0, #0xca
	lsls r0, r0, #1
	add r0, ip
	strh r1, [r0]
	subs r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _0805ACB4
	mov r2, ip
	adds r2, #0x72
	lsls r3, r3, #1
	ldrb r1, [r2, #1]
	movs r0, #1
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #1]
	b _0805ACF4
_0805ACB4:
	mov r3, ip
	adds r3, #0x72
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r1, #0x1f
	ands r1, r4
	lsls r1, r1, #4
	ldrh r2, [r3]
	ldr r0, _0805ACE8 @ =0xFFFFFE0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	lsls r0, r4, #1
	adds r1, r5, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805ACEC
	lsls r2, r0, #1
	ldrb r1, [r3, #1]
	movs r0, #1
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #1]
	b _0805ACF4
	.align 2, 0
_0805ACE8: .4byte 0xFFFFFE0F
_0805ACEC:
	mov r0, ip
	movs r1, #2
	bl sub_803D950
_0805ACF4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805ACFC
sub_805ACFC: @ 0x0805ACFC
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, _0805AD58 @ =0x03002E20
	movs r0, #0x72
	adds r0, r0, r4
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	ldr r0, _0805AD5C @ =_080F2C38
	ldrb r1, [r0, #1]
	lsls r1, r1, #1
	mov r0, ip
	ldrb r2, [r0, #1]
	movs r0, #1
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #1]
	ldrh r1, [r1]
	ldr r0, _0805AD60 @ =0xFFFFFE0F
	ands r0, r1
	mov r1, ip
	strh r0, [r1]
	ldr r0, _0805AD64 @ =0x00000838
	adds r3, r3, r0
	ldr r0, [r3]
	cmp r4, r0
	bne _0805AD50
	ldr r0, [r4, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805AD50
	adds r0, r4, #0
	bl sub_805C354
_0805AD50:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805AD58: .4byte 0x03002E20
_0805AD5C: .4byte _080F2C38
_0805AD60: .4byte 0xFFFFFE0F
_0805AD64: .4byte 0x00000838

	thumb_func_start sub_805AD68
sub_805AD68: @ 0x0805AD68
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, _0805AE04 @ =0x03002E20
	adds r5, r3, #0
	adds r5, #0x24
	movs r0, #0x72
	adds r0, r0, r4
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xc
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	ldr r0, _0805AE08 @ =_080F2C48
	ldrb r1, [r0, #1]
	lsls r1, r1, #1
	mov r0, ip
	ldrb r2, [r0, #1]
	movs r0, #1
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #1]
	ldrh r1, [r1]
	ldr r0, _0805AE0C @ =0xFFFFFE0F
	ands r0, r1
	mov r1, ip
	strh r0, [r1]
	ldr r0, _0805AE10 @ =0x00000838
	adds r3, r3, r0
	ldr r0, [r3]
	cmp r4, r0
	bne _0805ADE6
	ldr r0, [r4, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805ADE6
	ldr r2, _0805AE14 @ =gMPlayTable
	ldr r0, _0805AE18 @ =gSongTable
	movs r1, #0xa1
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bl m4aMPlayStop
	movs r0, #0xcd
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r1, [r2]
	movs r0, #0xfc
	ands r0, r1
	movs r1, #0xdf
	ands r0, r1
	strb r0, [r2]
_0805ADE6:
	ldr r1, _0805AE1C @ =0x00000814
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805ADFC
	movs r0, #0xb6
	bl m4aSongNumStart
_0805ADFC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805AE04: .4byte 0x03002E20
_0805AE08: .4byte _080F2C48
_0805AE0C: .4byte 0xFFFFFE0F
_0805AE10: .4byte 0x00000838
_0805AE14: .4byte gMPlayTable
_0805AE18: .4byte gSongTable
_0805AE1C: .4byte 0x00000814

	thumb_func_start sub_805AE20
sub_805AE20: @ 0x0805AE20
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, _0805AE64 @ =0x03002E20
	movs r0, #0x72
	adds r0, r0, r4
	mov ip, r0
	ldr r0, [r0]
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x19
	lsls r0, r0, #0x17
	lsrs r5, r0, #0x1b
	movs r7, #0xca
	lsls r7, r7, #1
	adds r3, r4, r7
	ldrh r2, [r3]
	movs r7, #0x80
	lsls r7, r7, #4
	adds r0, r7, #0
	orrs r0, r2
	strh r0, [r3]
	subs r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0
	beq _0805AE68
	lsls r2, r1, #1
	mov r0, ip
	ldrb r1, [r0, #1]
	movs r0, #1
	ands r0, r1
	orrs r0, r2
	mov r1, ip
	strb r0, [r1, #1]
	b _0805AEE6
	.align 2, 0
_0805AE64: .4byte 0x03002E20
_0805AE68:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r1, #0x1f
	ands r1, r5
	lsls r1, r1, #4
	mov r7, ip
	ldrh r2, [r7]
	ldr r0, _0805AE9C @ =0xFFFFFE0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r7]
	ldr r0, _0805AEA0 @ =_080F2C48
	lsls r1, r5, #1
	adds r0, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0805AEA4
	lsls r2, r0, #1
	ldrb r1, [r7, #1]
	movs r0, #1
	ands r0, r1
	orrs r0, r2
	strb r0, [r7, #1]
	b _0805AEE6
	.align 2, 0
_0805AE9C: .4byte 0xFFFFFE0F
_0805AEA0: .4byte _080F2C48
_0805AEA4:
	adds r0, r4, #0
	movs r1, #2
	bl sub_803D950
	ldr r1, _0805AEEC @ =0x00000838
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r4, r0
	bne _0805AEC6
	ldr r0, [r4, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805AEC6
	adds r0, r4, #0
	bl sub_805C388
_0805AEC6:
	movs r7, #0xca
	lsls r7, r7, #1
	adds r2, r4, r7
	ldrh r1, [r2]
	ldr r0, _0805AEF0 @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
	adds r2, r4, #0
	adds r2, #0xd8
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_0805AEE6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805AEEC: .4byte 0x00000838
_0805AEF0: .4byte 0x0000F7FF

	thumb_func_start sub_805AEF4
sub_805AEF4: @ 0x0805AEF4
	adds r0, #0x72
	ldrb r2, [r0]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #0xb
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_805AF08
sub_805AF08: @ 0x0805AF08
	push {lr}
	adds r2, r0, #0
	adds r0, #0xb4
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805AF22
	adds r0, r2, #0
	movs r1, #2
	bl sub_803D950
_0805AF22:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805AF28
sub_805AF28: @ 0x0805AF28
	adds r0, #0x72
	ldrb r2, [r0]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #0xd
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_805AF3C
sub_805AF3C: @ 0x0805AF3C
	push {lr}
	adds r3, r0, #0
	ldr r2, _0805AF78 @ =0x03002E20
	movs r0, #0x72
	adds r0, r0, r3
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0xe
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	ldr r0, _0805AF7C @ =0x00000838
	adds r2, r2, r0
	ldr r0, [r2]
	cmp r3, r0
	bne _0805AF72
	ldr r0, [r3, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805AF72
	adds r0, r3, #0
	bl sub_805C5C8
_0805AF72:
	pop {r0}
	bx r0
	.align 2, 0
_0805AF78: .4byte 0x03002E20
_0805AF7C: .4byte 0x00000838

	thumb_func_start sub_805AF80
sub_805AF80: @ 0x0805AF80
	push {lr}
	adds r2, r0, #0
	adds r0, #0xb4
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0805AF9A
	adds r0, r2, #0
	movs r1, #2
	bl sub_803D950
_0805AF9A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start nullsub_12
nullsub_12: @ 0x0805AFA0
	bx lr
	.align 2, 0

	thumb_func_start sub_805AFA4
sub_805AFA4: @ 0x0805AFA4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x6e
	adds r0, r0, r4
	mov ip, r0
	ldr r1, [r0]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x19
	lsls r1, r1, #0x17
	lsrs r3, r1, #0x1b
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0805AFEA
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r1, #0x1f
	ands r1, r3
	lsls r1, r1, #4
	mov r0, ip
	ldrh r2, [r0]
	ldr r0, _0805AFFC @ =0xFFFFFE0F
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strh r0, [r1]
	ldr r0, _0805B000 @ =_080F2C50
	lsls r1, r3, #1
	adds r0, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0805B004
_0805AFEA:
	lsls r2, r0, #1
	mov r0, ip
	ldrb r1, [r0, #1]
	movs r0, #1
	ands r0, r1
	orrs r0, r2
	mov r1, ip
	strb r0, [r1, #1]
	b _0805B018
	.align 2, 0
_0805AFFC: .4byte 0xFFFFFE0F
_0805B000: .4byte _080F2C50
_0805B004:
	adds r0, r4, #0
	movs r1, #0
	bl sub_803D950
	adds r0, r4, #0
	adds r0, #0x4c
	ldrb r1, [r0]
	movs r2, #8
	eors r1, r2
	strb r1, [r0]
_0805B018:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805B020
sub_805B020: @ 0x0805B020
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, _0805B06C @ =0x03002E20
	movs r0, #0x6e
	adds r0, r0, r4
	mov ip, r0
	ldrb r0, [r0]
	movs r1, #0xf
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	ldr r0, _0805B070 @ =_080F2C50
	ldrb r1, [r0, #1]
	lsls r1, r1, #1
	mov r0, ip
	ldrb r2, [r0, #1]
	movs r0, #1
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #1]
	ldrh r1, [r1]
	ldr r0, _0805B074 @ =0xFFFFFE0F
	ands r0, r1
	mov r1, ip
	strh r0, [r1]
	ldr r0, _0805B078 @ =0x00000838
	adds r3, r3, r0
	ldr r0, [r3]
	cmp r4, r0
	bne _0805B064
	adds r0, r4, #0
	bl sub_805C050
_0805B064:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805B06C: .4byte 0x03002E20
_0805B070: .4byte _080F2C50
_0805B074: .4byte 0xFFFFFE0F
_0805B078: .4byte 0x00000838

	thumb_func_start sub_805B07C
sub_805B07C: @ 0x0805B07C
	push {r4, r5, lr}
	mov ip, r0
	ldr r0, [r0, #0x70]
	lsls r2, r0, #0x10
	lsrs r2, r2, #0x19
	lsls r0, r0, #0x17
	lsrs r4, r0, #0x1b
	ldr r5, _0805B0C0 @ =_080F2C54
	lsls r1, r4, #1
	adds r1, r1, r4
	adds r0, r1, r5
	ldrb r0, [r0]
	lsls r0, r0, #1
	movs r3, #0xcb
	lsls r3, r3, #1
	add r3, ip
	strh r0, [r3]
	adds r0, r5, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	lsls r0, r0, #1
	movs r1, #0xcc
	lsls r1, r1, #1
	add r1, ip
	strh r0, [r1]
	subs r2, #1
	lsls r2, r2, #0x18
	lsrs r3, r2, #0x18
	cmp r3, #0
	beq _0805B0C4
	mov r2, ip
	adds r2, #0x71
	lsls r3, r3, #1
	b _0805B0F2
	.align 2, 0
_0805B0C0: .4byte _080F2C54
_0805B0C4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r3, ip
	adds r3, #0x70
	movs r1, #0x1f
	ands r1, r4
	lsls r1, r1, #4
	ldrh r2, [r3]
	ldr r0, _0805B100 @ =0xFFFFFE0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	lsls r0, r4, #1
	adds r0, r0, r4
	adds r1, r5, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805B104
	mov r2, ip
	adds r2, #0x71
	lsls r3, r0, #1
_0805B0F2:
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	b _0805B10C
	.align 2, 0
_0805B100: .4byte 0xFFFFFE0F
_0805B104:
	mov r0, ip
	movs r1, #1
	bl sub_803D950
_0805B10C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805B114
sub_805B114: @ 0x0805B114
	adds r3, r0, #0
	ldr r0, [r3, #0x70]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _0805B158
	cmp r0, #1
	blt _0805B12C
	cmp r0, #6
	bgt _0805B12C
	cmp r0, #4
	bge _0805B158
_0805B12C:
	adds r2, r3, #0
	adds r2, #0x70
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrh r1, [r2]
	ldr r0, _0805B15C @ =0xFFFFFE0F
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0805B160 @ =_080F2C54
	adds r3, #0x71
	ldrb r1, [r0, #2]
	lsls r1, r1, #1
	ldrb r2, [r3]
	movs r0, #1
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0805B158:
	bx lr
	.align 2, 0
_0805B15C: .4byte 0xFFFFFE0F
_0805B160: .4byte _080F2C54

	thumb_func_start sub_805B164
sub_805B164: @ 0x0805B164
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x70]
	lsls r2, r0, #0x10
	lsrs r2, r2, #0x19
	lsls r0, r0, #0x17
	lsrs r4, r0, #0x1b
	ldr r3, _0805B1A4 @ =_080F2C86
	lsls r1, r4, #1
	adds r1, r1, r4
	adds r0, r1, r3
	ldrb r0, [r0]
	movs r6, #0xcb
	lsls r6, r6, #1
	strh r0, [r6, r5]
	adds r3, #1
	adds r1, r1, r3
	ldrb r0, [r1]
	lsls r0, r0, #7
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r1, r5, r3
	strh r0, [r1]
	subs r2, #1
	lsls r2, r2, #0x18
	lsrs r3, r2, #0x18
	cmp r3, #0
	beq _0805B1A8
	adds r2, r5, #0
	adds r2, #0x71
	lsls r3, r3, #1
	b _0805B1D6
	.align 2, 0
_0805B1A4: .4byte _080F2C86
_0805B1A8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r3, r5, #0
	adds r3, #0x70
	movs r1, #0x1f
	ands r1, r4
	lsls r1, r1, #4
	ldrh r2, [r3]
	ldr r0, _0805B1E4 @ =0xFFFFFE0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _0805B1E8 @ =_080F2C80
	lsls r0, r4, #1
	adds r0, r0, r4
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805B1EC
	adds r2, r5, #0
	adds r2, #0x71
	lsls r3, r0, #1
_0805B1D6:
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	b _0805B1F4
	.align 2, 0
_0805B1E4: .4byte 0xFFFFFE0F
_0805B1E8: .4byte _080F2C80
_0805B1EC:
	adds r0, r5, #0
	movs r1, #6
	bl sub_803D214
_0805B1F4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805B1FC
sub_805B1FC: @ 0x0805B1FC
	push {r4, r5, lr}
	mov ip, r0
	ldr r0, [r0, #0x70]
	lsls r2, r0, #0x10
	lsrs r2, r2, #0x19
	lsls r0, r0, #0x17
	lsrs r4, r0, #0x1b
	ldr r5, _0805B248 @ =_080F2C86
	lsls r1, r4, #1
	adds r1, r1, r4
	adds r0, r1, r5
	ldrb r0, [r0]
	movs r3, #0xcb
	lsls r3, r3, #1
	add r3, ip
	strh r0, [r3]
	adds r0, r5, #1
	adds r1, r1, r0
	ldrb r0, [r1]
	lsls r0, r0, #7
	movs r1, #0xcc
	lsls r1, r1, #1
	add r1, ip
	strh r0, [r1]
	mov r1, ip
	movs r3, #0x22
	ldrsh r0, [r1, r3]
	subs r0, #0x10
	strh r0, [r1, #0x22]
	subs r2, #1
	lsls r2, r2, #0x18
	lsrs r3, r2, #0x18
	cmp r3, #0
	beq _0805B24C
	mov r2, ip
	adds r2, #0x71
	lsls r3, r3, #1
	b _0805B27A
	.align 2, 0
_0805B248: .4byte _080F2C86
_0805B24C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r3, ip
	adds r3, #0x70
	movs r1, #0x1f
	ands r1, r4
	lsls r1, r1, #4
	ldrh r2, [r3]
	ldr r0, _0805B288 @ =0xFFFFFE0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	lsls r0, r4, #1
	adds r0, r0, r4
	adds r1, r5, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805B28C
	mov r2, ip
	adds r2, #0x71
	lsls r3, r0, #1
_0805B27A:
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	b _0805B294
	.align 2, 0
_0805B288: .4byte 0xFFFFFE0F
_0805B28C:
	mov r0, ip
	movs r1, #1
	bl sub_803D950
_0805B294:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805B29C
sub_805B29C: @ 0x0805B29C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x70]
	lsls r2, r0, #0x10
	lsrs r2, r2, #0x19
	lsls r0, r0, #0x17
	lsrs r4, r0, #0x1b
	ldr r3, _0805B2E0 @ =_080F2C8C
	lsls r1, r4, #1
	adds r1, r1, r4
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, r0, #1
	movs r6, #0xcb
	lsls r6, r6, #1
	strh r0, [r6, r5]
	adds r3, #1
	adds r1, r1, r3
	ldrb r0, [r1]
	lsls r0, r0, #1
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r1, r5, r3
	strh r0, [r1]
	subs r2, #1
	lsls r2, r2, #0x18
	lsrs r3, r2, #0x18
	cmp r3, #0
	beq _0805B2E4
	adds r2, r5, #0
	adds r2, #0x71
	lsls r3, r3, #1
	b _0805B33E
	.align 2, 0
_0805B2E0: .4byte _080F2C8C
_0805B2E4:
	adds r2, r5, #0
	adds r2, #0x70
	ldrh r1, [r2]
	movs r0, #0xf8
	lsls r0, r0, #1
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	bne _0805B312
	ldr r0, _0805B34C @ =0x03002E20
	ldr r1, _0805B350 @ =0x00000838
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r5, r0
	bne _0805B312
	ldr r0, [r5, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805B312
	movs r0, #0x85
	bl m4aSongNumStart
_0805B312:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r1, #0x1f
	ands r1, r4
	lsls r1, r1, #4
	ldrh r2, [r6]
	ldr r0, _0805B354 @ =0xFFFFFE0F
	ands r0, r2
	orrs r0, r1
	strh r0, [r6]
	ldr r1, _0805B358 @ =_080F2C8C
	lsls r0, r4, #1
	adds r0, r0, r4
	adds r1, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805B35C
	adds r2, r5, #0
	adds r2, #0x71
	lsls r3, r0, #1
_0805B33E:
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	b _0805B364
	.align 2, 0
_0805B34C: .4byte 0x03002E20
_0805B350: .4byte 0x00000838
_0805B354: .4byte 0xFFFFFE0F
_0805B358: .4byte _080F2C8C
_0805B35C:
	adds r0, r5, #0
	movs r1, #1
	bl sub_803D950
_0805B364:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805B36C
sub_805B36C: @ 0x0805B36C
	adds r3, r0, #0
	adds r3, #0x70
	ldrb r2, [r3]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #5
	orrs r1, r2
	strb r1, [r3]
	ldrh r2, [r3]
	ldr r1, _0805B39C @ =0xFFFFFE0F
	ands r1, r2
	strh r1, [r3]
	ldr r1, _0805B3A0 @ =_080F2C80
	adds r0, #0x71
	ldrb r2, [r1, #2]
	lsls r2, r2, #1
	ldrb r3, [r0]
	movs r1, #1
	ands r1, r3
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_0805B39C: .4byte 0xFFFFFE0F
_0805B3A0: .4byte _080F2C80

	thumb_func_start sub_805B3A4
sub_805B3A4: @ 0x0805B3A4
	adds r3, r0, #0
	adds r3, #0x70
	ldrb r2, [r3]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #6
	orrs r1, r2
	strb r1, [r3]
	ldrh r2, [r3]
	ldr r1, _0805B3D4 @ =0xFFFFFE0F
	ands r1, r2
	strh r1, [r3]
	ldr r1, _0805B3D8 @ =_080F2C86
	adds r0, #0x71
	ldrb r2, [r1, #2]
	lsls r2, r2, #1
	ldrb r3, [r0]
	movs r1, #1
	ands r1, r3
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_0805B3D4: .4byte 0xFFFFFE0F
_0805B3D8: .4byte _080F2C86

	thumb_func_start sub_805B3DC
sub_805B3DC: @ 0x0805B3DC
	adds r3, r0, #0
	ldr r0, [r3, #0x70]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #5
	bgt _0805B3F2
	cmp r0, #4
	bge _0805B422
	cmp r0, #1
	beq _0805B422
	b _0805B3F6
_0805B3F2:
	cmp r0, #7
	beq _0805B422
_0805B3F6:
	adds r2, r3, #0
	adds r2, #0x70
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldrh r1, [r2]
	ldr r0, _0805B424 @ =0xFFFFFE0F
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0805B428 @ =_080F2C8C
	adds r3, #0x71
	ldrb r1, [r0, #2]
	lsls r1, r1, #1
	ldrb r2, [r3]
	movs r0, #1
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_0805B422:
	bx lr
	.align 2, 0
_0805B424: .4byte 0xFFFFFE0F
_0805B428: .4byte _080F2C8C

	thumb_func_start sub_805B42C
sub_805B42C: @ 0x0805B42C
	movs r2, #0
	str r2, [r0]
	str r2, [r0, #4]
	str r2, [r0, #8]
	str r2, [r0, #0xc]
	strb r2, [r0, #0x10]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0x16]
	movs r1, #0x80
	lsls r1, r1, #1
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	strh r1, [r0, #0x24]
	str r2, [r0, #0x18]
	bx lr
	.align 2, 0

	thumb_func_start sub_805B44C
sub_805B44C: @ 0x0805B44C
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #0xc]
	cmp r0, #0
	ble _0805B45E
	subs r0, #1
	str r0, [r1, #0xc]
	movs r0, #1
	b _0805B488
_0805B45E:
	ldr r2, [r1, #8]
	ldr r3, [r2]
	cmp r3, #0
	bne _0805B46C
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _0805B47A
_0805B46C:
	str r3, [r1, #4]
	ldr r0, [r2, #4]
	str r0, [r1, #0xc]
	adds r2, #8
	str r2, [r1, #8]
	movs r0, #1
	b _0805B488
_0805B47A:
	ldr r0, _0805B48C @ =0x03002E20
	movs r2, #0xea
	lsls r2, r2, #3
	adds r0, r0, r2
	bl sub_805B520
	movs r0, #0
_0805B488:
	pop {r1}
	bx r1
	.align 2, 0
_0805B48C: .4byte 0x03002E20

	thumb_func_start sub_805B490
sub_805B490: @ 0x0805B490
	push {lr}
	adds r1, r0, #0
	ldr r0, _0805B4A4 @ =0x03002E20
	movs r2, #0xea
	lsls r2, r2, #3
	adds r0, r0, r2
	bl sub_805B520
	pop {r0}
	bx r0
	.align 2, 0
_0805B4A4: .4byte 0x03002E20

	thumb_func_start sub_805B4A8
sub_805B4A8: @ 0x0805B4A8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
_0805B4B0:
	adds r0, r6, #0
	movs r1, #1
	movs r2, #0x3c
	bl frmheap_calloc
	adds r2, r5, r4
	movs r1, #0
	strb r1, [r2]
	lsls r2, r4, #2
	adds r1, r5, #0
	adds r1, #0x20
	adds r1, r1, r2
	str r0, [r1]
	adds r4, #1
	cmp r4, #0x1f
	ble _0805B4B0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805B4D8
sub_805B4D8: @ 0x0805B4D8
	push {r4, lr}
	adds r4, r0, #0
	movs r3, #0
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805B4FC
	movs r2, #1
_0805B4EA:
	adds r3, #1
	cmp r3, #0x1e
	bgt _0805B4FC
	adds r0, r4, r3
	ldrb r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0805B4EA
_0805B4FC:
	adds r2, r4, r3
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	lsls r1, r3, #2
	adds r0, r4, #0
	adds r0, #0x20
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r4, #0
	bl sub_805B42C
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805B520
sub_805B520: @ 0x0805B520
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	movs r2, #0
	ldr r0, [r3, #0x20]
	cmp r0, r4
	bne _0805B532
	strb r2, [r3]
	b _0805B54C
_0805B532:
	adds r2, #1
	cmp r2, #0x1f
	bgt _0805B54C
	lsls r0, r2, #2
	adds r1, r3, #0
	adds r1, #0x20
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, r4
	bne _0805B532
	adds r1, r3, r2
	movs r0, #0
	strb r0, [r1]
_0805B54C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805B554
sub_805B554: @ 0x0805B554
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	mov r8, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0805B5A8 @ =0x03002E20
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r0, r1
	bl sub_805B4D8
	adds r2, r0, #0
	strh r4, [r2, #0x24]
	ldr r0, _0805B5AC @ =sub_805B44C
	str r0, [r2]
	strh r5, [r2, #0x14]
	strh r6, [r2, #0x16]
	ldr r0, _0805B5B0 @ =_080F2CBC
	mov r1, r8
	cmp r1, #0
	beq _0805B590
	ldr r0, _0805B5B4 @ =_080F2CEC
_0805B590:
	str r0, [r2, #8]
	ldrb r1, [r2, #0x10]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r0, r2, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805B5A8: .4byte 0x03002E20
_0805B5AC: .4byte sub_805B44C
_0805B5B0: .4byte _080F2CBC
_0805B5B4: .4byte _080F2CEC

	thumb_func_start sub_805B5B8
sub_805B5B8: @ 0x0805B5B8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	mov r8, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0805B60C @ =0x03002E20
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r0, r1
	bl sub_805B4D8
	adds r2, r0, #0
	strh r4, [r2, #0x24]
	ldr r0, _0805B610 @ =sub_805B44C
	str r0, [r2]
	strh r5, [r2, #0x14]
	strh r6, [r2, #0x16]
	ldr r0, _0805B614 @ =_080F2D1C
	mov r1, r8
	cmp r1, #0
	beq _0805B5F4
	ldr r0, _0805B618 @ =_080F2D4C
_0805B5F4:
	str r0, [r2, #8]
	ldrb r1, [r2, #0x10]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r0, r2, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805B60C: .4byte 0x03002E20
_0805B610: .4byte sub_805B44C
_0805B614: .4byte _080F2D1C
_0805B618: .4byte _080F2D4C

	thumb_func_start sub_805B61C
sub_805B61C: @ 0x0805B61C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	mov r8, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0805B670 @ =0x03002E20
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r0, r1
	bl sub_805B4D8
	adds r2, r0, #0
	strh r4, [r2, #0x24]
	ldr r0, _0805B674 @ =sub_805B44C
	str r0, [r2]
	strh r5, [r2, #0x14]
	strh r6, [r2, #0x16]
	ldr r0, _0805B678 @ =_080F2D7C
	mov r1, r8
	cmp r1, #0
	beq _0805B658
	ldr r0, _0805B67C @ =_080F2DAC
_0805B658:
	str r0, [r2, #8]
	ldrb r1, [r2, #0x10]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r0, r2, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805B670: .4byte 0x03002E20
_0805B674: .4byte sub_805B44C
_0805B678: .4byte _080F2D7C
_0805B67C: .4byte _080F2DAC

	thumb_func_start sub_805B680
sub_805B680: @ 0x0805B680
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	ldr r0, _0805B724 @ =0x03002E20
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r0, r1
	bl sub_805B4D8
	adds r5, r0, #0
	strh r4, [r5, #0x24]
	cmp r7, #0
	bne _0805B6E0
	ldr r2, _0805B728 @ =gMPlayTable
	ldr r0, _0805B72C @ =gSongTable
	movs r1, #0xca
	lsls r1, r1, #2
	adds r3, r0, r1
	ldrh r1, [r3, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _0805B6DA
	movs r2, #0
	ldr r1, [r1]
	ldr r0, [r3]
	cmp r1, r0
	bne _0805B6D6
	movs r2, #1
_0805B6D6:
	cmp r2, #0
	beq _0805B6E0
_0805B6DA:
	movs r0, #0x65
	bl m4aSongNumStart
_0805B6E0:
	ldr r0, _0805B730 @ =sub_805B7D0
	str r0, [r5]
	movs r2, #0
	mov r0, r8
	strh r0, [r5, #0x14]
	strh r6, [r5, #0x16]
	lsls r0, r6, #0x10
	str r0, [r5, #0x2c]
	ldr r0, _0805B734 @ =_080F2F2C
	lsls r1, r7, #2
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r5, #0x30]
	ldr r0, _0805B738 @ =_080F2F50
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r5, #0x34]
	ldr r0, _0805B73C @ =_080F2F04
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r5, #8]
	ldrb r1, [r5, #0x10]
	movs r0, #1
	orrs r0, r1
	strb r0, [r5, #0x10]
	adds r0, r5, #0
	adds r0, #0x3a
	strb r2, [r0]
	adds r0, r5, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805B724: .4byte 0x03002E20
_0805B728: .4byte gMPlayTable
_0805B72C: .4byte gSongTable
_0805B730: .4byte sub_805B7D0
_0805B734: .4byte _080F2F2C
_0805B738: .4byte _080F2F50
_0805B73C: .4byte _080F2F04

	thumb_func_start sub_805B740
sub_805B740: @ 0x0805B740
	push {r4, r5, r6, r7, lr}
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0805B7BC @ =0x03002E20
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r0, r1
	bl sub_805B4D8
	adds r5, r0, #0
	strh r4, [r5, #0x24]
	ldr r2, _0805B7C0 @ =gMPlayTable
	ldr r0, _0805B7C4 @ =gSongTable
	movs r1, #0xca
	lsls r1, r1, #2
	adds r3, r0, r1
	ldrh r1, [r3, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _0805B78C
	movs r2, #0
	ldr r1, [r1]
	ldr r0, [r3]
	cmp r1, r0
	bne _0805B788
	movs r2, #1
_0805B788:
	cmp r2, #0
	beq _0805B792
_0805B78C:
	movs r0, #0x65
	bl m4aSongNumStart
_0805B792:
	ldr r0, _0805B7C8 @ =sub_805B988
	str r0, [r5]
	movs r1, #0
	movs r0, #0
	strh r7, [r5, #0x14]
	strh r6, [r5, #0x16]
	str r0, [r5, #0x34]
	adds r0, r5, #0
	adds r0, #0x38
	strb r1, [r0]
	ldr r0, _0805B7CC @ =_080F2EB4
	str r0, [r5, #8]
	ldrb r1, [r5, #0x10]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r5, #0x10]
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805B7BC: .4byte 0x03002E20
_0805B7C0: .4byte gMPlayTable
_0805B7C4: .4byte gSongTable
_0805B7C8: .4byte sub_805B988
_0805B7CC: .4byte _080F2EB4

	thumb_func_start sub_805B7D0
sub_805B7D0: @ 0x0805B7D0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _0805B8A0 @ =0x03002E20
	ldr r1, _0805B8A4 @ =0x00000838
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #0x24
	ldrsh r0, [r1, r2]
	str r0, [r7, #0x1c]
	movs r2, #0x24
	ldrsh r0, [r1, r2]
	str r0, [r7, #0x20]
	ldr r1, [r7, #0x30]
	ldrh r0, [r7, #0x14]
	adds r0, r0, r1
	strh r0, [r7, #0x14]
	ldr r0, [r7, #0x2c]
	ldr r2, [r7, #0x34]
	subs r0, r0, r2
	str r0, [r7, #0x2c]
	movs r1, #0x88
	lsls r1, r1, #0x10
	cmp r0, r1
	ble _0805B884
	rsbs r0, r2, #0
	str r0, [r7, #0x34]
	adds r1, r7, #0
	adds r1, #0x3a
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r1, #0
	cmp r0, #3
	bhi _0805B884
	ldr r2, _0805B8A8 @ =gMPlayTable
	ldr r0, _0805B8AC @ =gSongTable
	movs r1, #0xcc
	lsls r1, r1, #2
	adds r3, r0, r1
	ldrh r1, [r3, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _0805B844
	movs r2, #0
	ldr r1, [r1]
	ldr r0, [r3]
	cmp r1, r0
	bne _0805B840
	movs r2, #1
_0805B840:
	cmp r2, #0
	beq _0805B884
_0805B844:
	ldr r1, _0805B8B0 @ =_080F2F74
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r6, [r0]
	movs r0, #0x66
	bl m4aSongNumStart
	ldr r5, _0805B8A8 @ =gMPlayTable
	ldr r4, _0805B8AC @ =gSongTable
	movs r2, #0xcc
	lsls r2, r2, #2
	adds r4, r4, r2
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
_0805B884:
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	strh r0, [r7, #0x16]
	ldr r0, [r7, #0x34]
	ldr r2, _0805B8B4 @ =0xFFFF8000
	adds r0, r0, r2
	str r0, [r7, #0x34]
	adds r0, r7, #0
	bl sub_805B44C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805B8A0: .4byte 0x03002E20
_0805B8A4: .4byte 0x00000838
_0805B8A8: .4byte gMPlayTable
_0805B8AC: .4byte gSongTable
_0805B8B0: .4byte _080F2F74
_0805B8B4: .4byte 0xFFFF8000

	thumb_func_start sub_0805B8B8
sub_0805B8B8: @ 0x0805B8B8
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #0
	bl sub_805B680
	pop {r1}
	bx r1

	thumb_func_start sub_805B8D0
sub_805B8D0: @ 0x0805B8D0
	push {r4, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r4, #4
	cmp r3, #0
	bne _0805B8E6
	movs r4, #3
_0805B8E6:
	adds r3, r4, #0
	bl sub_805B680
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805B8F4
sub_805B8F4: @ 0x0805B8F4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0805B934 @ =0x03002E20
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r0, r1
	bl sub_805B4D8
	ldr r1, _0805B938 @ =sub_805B9C4
	str r1, [r0]
	movs r2, #0
	strh r4, [r0, #0x14]
	strh r5, [r0, #0x16]
	adds r1, r0, #0
	adds r1, #0x38
	strb r2, [r1]
	adds r1, #1
	strb r6, [r1]
	ldr r1, _0805B93C @ =_080F2EE4
	str r1, [r0, #8]
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805B934: .4byte 0x03002E20
_0805B938: .4byte sub_805B9C4
_0805B93C: .4byte _080F2EE4

	thumb_func_start sub_805B940
sub_805B940: @ 0x0805B940
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _0805B980 @ =0x03002E20
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r0, r1
	bl sub_805B4D8
	ldr r1, _0805B984 @ =sub_805BA04
	str r1, [r0]
	movs r2, #0
	movs r1, #0
	strh r4, [r0, #0x14]
	strh r5, [r0, #0x16]
	str r1, [r0, #0x28]
	adds r1, r0, #0
	adds r1, #0x38
	strb r2, [r1]
	adds r1, #1
	strb r6, [r1]
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805B980: .4byte 0x03002E20
_0805B984: .4byte sub_805BA04

	thumb_func_start sub_805B988
sub_805B988: @ 0x0805B988
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r3, #0
	adds r5, #0x38
	ldrb r0, [r5]
	adds r4, r0, #0
	cmp r4, #3
	bne _0805B9A0
	ldrb r1, [r3, #0x10]
	movs r0, #1
	orrs r0, r1
	strb r0, [r3, #0x10]
_0805B9A0:
	ldr r1, [r3, #0x34]
	asrs r2, r1, #0x10
	ldrh r0, [r3, #0x16]
	subs r0, r0, r2
	strh r0, [r3, #0x16]
	movs r0, #0x80
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r3, #0x34]
	adds r0, r4, #1
	strb r0, [r5]
	adds r0, r3, #0
	bl sub_805B44C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805B9C4
sub_805B9C4: @ 0x0805B9C4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x38
	ldrb r1, [r5]
	adds r6, r1, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #1
	cmp r1, r0
	bge _0805B9F6
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _0805B9F2
	movs r1, #0x14
	ldrsh r0, [r4, r1]
	movs r2, #0x16
	ldrsh r1, [r4, r2]
	movs r3, #0x24
	ldrsh r2, [r4, r3]
	bl sub_805B740
_0805B9F2:
	adds r0, r6, #1
	strb r0, [r5]
_0805B9F6:
	adds r0, r4, #0
	bl sub_805B44C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805BA04
sub_805BA04: @ 0x0805BA04
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x38
	ldrb r5, [r0]
	adds r0, #1
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, #8
	cmp r5, r0
	bge _0805BA4A
	cmp r5, #7
	bls _0805BA40
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	bne _0805BA40
	subs r3, r5, #4
	asrs r3, r3, #2
	subs r3, #1
	movs r0, #3
	ands r3, r0
	adds r3, #1
	movs r1, #0x14
	ldrsh r0, [r4, r1]
	movs r2, #0x16
	ldrsh r1, [r4, r2]
	movs r6, #0x24
	ldrsh r2, [r4, r6]
	bl sub_805B680
_0805BA40:
	adds r1, r5, #1
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	b _0805BA50
_0805BA4A:
	adds r0, r4, #0
	bl sub_805B490
_0805BA50:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805BA58
sub_805BA58: @ 0x0805BA58
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r4, #0
	ldr r7, _0805BA94 @ =0x03002E20
	movs r6, #0
_0805BA64:
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r7, r1
	bl sub_805B4D8
	lsls r2, r4, #2
	mov r3, sp
	adds r1, r3, r2
	str r0, [r1]
	str r5, [r0, #0x28]
	ldr r0, [r1]
	adds r1, r4, #1
	adds r0, #0x2e
	strb r1, [r0]
	adds r3, r1, #0
	cmp r4, #1
	beq _0805BA98
	cmp r4, #1
	bgt _0805BA9E
	cmp r4, #0
	bne _0805BA9E
	ldr r1, [sp]
	movs r0, #0x20
	b _0805BAA6
	.align 2, 0
_0805BA94: .4byte 0x03002E20
_0805BA98:
	ldr r0, [sp, #4]
	strh r6, [r0, #0x2c]
	b _0805BAA8
_0805BA9E:
	mov r1, sp
	adds r0, r1, r2
	ldr r1, [r0]
	movs r0, #0x40
_0805BAA6:
	strh r0, [r1, #0x2c]
_0805BAA8:
	mov r1, sp
	adds r0, r1, r2
	ldr r1, [r0]
	ldr r0, _0805BAC8 @ =sub_805BAD0
	str r0, [r1]
	ldr r0, _0805BACC @ =_0807B534
	str r0, [r1, #4]
	adds r4, r3, #0
	cmp r4, #2
	ble _0805BA64
	ldr r0, [sp]
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805BAC8: .4byte sub_805BAD0
_0805BACC: .4byte _0807B534

	thumb_func_start sub_805BAD0
sub_805BAD0: @ 0x0805BAD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r2, _0805BB10 @ =0x03002E20
	ldr r1, _0805BB14 @ =0x00000848
	adds r0, r2, r1
	ldr r3, [r6, #0x28]
	mov r8, r3
	ldr r1, _0805BB18 @ =0x0000017D
	add r1, r8
	ldrb r1, [r1]
	str r1, [sp]
	movs r3, #0x14
	ldrsh r1, [r0, r3]
	mov r0, r8
	adds r0, #0x56
	ldrh r0, [r0]
	subs r4, r1, r0
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #2
	bne _0805BB1C
	movs r0, #0xc0
	lsls r0, r0, #5
	adds r4, r4, r0
	b _0805BB28
	.align 2, 0
_0805BB10: .4byte 0x03002E20
_0805BB14: .4byte 0x00000848
_0805BB18: .4byte 0x0000017D
_0805BB1C:
	cmp r0, #2
	bgt _0805BB24
	cmp r0, #1
	beq _0805BB28
_0805BB24:
	ldr r1, _0805BBFC @ =0xFFFFE800
	adds r4, r4, r1
_0805BB28:
	ldr r2, _0805BC00 @ =0x0000FFFF
	mov sb, r2
	ands r4, r2
	ldr r3, _0805BC04 @ =gSinTable
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0805BB3A
	adds r0, #0x3f
_0805BB3A:
	asrs r0, r0, #6
	ldr r1, _0805BC08 @ =0x000003FF
	adds r2, r1, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r7, r0, #3
	movs r1, #0x2c
	ldrsh r0, [r6, r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0805BB5C
	adds r0, #0x3f
_0805BB5C:
	asrs r0, r0, #6
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r5, r0, #1
	ldrh r0, [r6, #0x2c]
	adds r0, #2
	strh r0, [r6, #0x2c]
	adds r0, r6, #0
	adds r0, #0x2e
	ldrb r1, [r0]
	mov sl, r0
	cmp r1, #1
	bne _0805BB82
	ldr r2, _0805BC0C @ =0xFFFA0000
	adds r5, r5, r2
_0805BB82:
	mov r3, r8
	movs r0, #0x24
	ldrsh r1, [r3, r0]
	movs r0, #0x80
	lsls r0, r0, #9
	bl __divsi3
	adds r1, r0, #0
	adds r0, r7, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _0805BB9E
	ldr r2, _0805BC10 @ =0x00FFFFFF
	adds r0, r0, r2
_0805BB9E:
	asrs r7, r0, #0x18
	adds r0, r5, #0
	muls r0, r1, r0
	cmp r0, #0
	bge _0805BBAC
	ldr r3, _0805BC10 @ =0x00FFFFFF
	adds r0, r0, r3
_0805BBAC:
	asrs r5, r0, #0x18
	mov r1, r8
	movs r2, #0x20
	ldrsh r0, [r1, r2]
	adds r0, r0, r7
	strh r0, [r6, #0x14]
	movs r3, #0x22
	ldrsh r0, [r1, r3]
	adds r0, r0, r5
	strh r0, [r6, #0x16]
	movs r2, #0x24
	ldrsh r0, [r1, r2]
	str r0, [r6, #0x1c]
	movs r3, #0x24
	ldrsh r0, [r1, r3]
	str r0, [r6, #0x20]
	ldr r0, _0805BC14 @ =0x000087FF
	cmp r4, r0
	bgt _0805BC40
	movs r0, #0xf0
	lsls r0, r0, #7
	cmp r4, r0
	bge _0805BCB8
	ldr r0, _0805BC18 @ =0x000037FF
	cmp r4, r0
	bgt _0805BC20
	movs r0, #0xa0
	lsls r0, r0, #6
	cmp r4, r0
	bge _0805BCA4
	ldr r0, _0805BC1C @ =0x000017FF
	cmp r4, r0
	bgt _0805BC9C
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r4, r0
	bge _0805BC94
	cmp r4, #0
	blt _0805BCBC
	b _0805BC86
	.align 2, 0
_0805BBFC: .4byte 0xFFFFE800
_0805BC00: .4byte 0x0000FFFF
_0805BC04: .4byte gSinTable
_0805BC08: .4byte 0x000003FF
_0805BC0C: .4byte 0xFFFA0000
_0805BC10: .4byte 0x00FFFFFF
_0805BC14: .4byte 0x000087FF
_0805BC18: .4byte 0x000037FF
_0805BC1C: .4byte 0x000017FF
_0805BC20:
	ldr r0, _0805BC30 @ =0x000057FF
	cmp r4, r0
	bgt _0805BC34
	movs r0, #0x90
	lsls r0, r0, #7
	cmp r4, r0
	bge _0805BCAC
	b _0805BCBC
	.align 2, 0
_0805BC30: .4byte 0x000057FF
_0805BC34:
	ldr r0, _0805BC3C @ =0x000067FF
	cmp r4, r0
	ble _0805BCB0
	b _0805BCB4
	.align 2, 0
_0805BC3C: .4byte 0x000067FF
_0805BC40:
	ldr r0, _0805BC60 @ =0x0000C7FF
	cmp r4, r0
	bgt _0805BC68
	movs r0, #0xb8
	lsls r0, r0, #8
	cmp r4, r0
	bge _0805BCBC
	ldr r0, _0805BC64 @ =0x0000A7FF
	cmp r4, r0
	bgt _0805BCAC
	movs r0, #0x98
	lsls r0, r0, #8
	cmp r4, r0
	bge _0805BCB0
	b _0805BCB4
	.align 2, 0
_0805BC60: .4byte 0x0000C7FF
_0805BC64: .4byte 0x0000A7FF
_0805BC68:
	ldr r0, _0805BC78 @ =0x0000E7FF
	cmp r4, r0
	bgt _0805BC7C
	movs r0, #0xd8
	lsls r0, r0, #8
	cmp r4, r0
	bge _0805BC9C
	b _0805BCA4
	.align 2, 0
_0805BC78: .4byte 0x0000E7FF
_0805BC7C:
	ldr r0, _0805BC8C @ =0x0000F7FF
	cmp r4, r0
	ble _0805BC94
	cmp r4, sb
	bgt _0805BCBC
_0805BC86:
	ldr r0, _0805BC90 @ =0x0000FFFC
	b _0805BCBE
	.align 2, 0
_0805BC8C: .4byte 0x0000F7FF
_0805BC90: .4byte 0x0000FFFC
_0805BC94:
	ldr r0, _0805BC98 @ =0x0000FFFD
	b _0805BCBE
	.align 2, 0
_0805BC98: .4byte 0x0000FFFD
_0805BC9C:
	ldr r0, _0805BCA0 @ =0x0000FFFE
	b _0805BCBE
	.align 2, 0
_0805BCA0: .4byte 0x0000FFFE
_0805BCA4:
	ldr r0, _0805BCA8 @ =0x0000FFFF
	b _0805BCBE
	.align 2, 0
_0805BCA8: .4byte 0x0000FFFF
_0805BCAC:
	movs r0, #1
	b _0805BCBE
_0805BCB0:
	movs r0, #2
	b _0805BCBE
_0805BCB4:
	movs r0, #3
	b _0805BCBE
_0805BCB8:
	movs r0, #4
	b _0805BCBE
_0805BCBC:
	movs r0, #0
_0805BCBE:
	mov r2, r8
	movs r3, #0x24
	ldrsh r1, [r2, r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	strh r0, [r6, #0x24]
	movs r0, #0xc9
	lsls r0, r0, #1
	add r0, r8
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805BD00
	movs r0, #0x14
	ldrsh r1, [r6, r0]
	movs r0, #0x10
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0805BD00
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bgt _0805BD00
	movs r1, #0x16
	ldrsh r0, [r6, r1]
	cmp r0, #0xb0
	bgt _0805BD00
	ldrb r1, [r6, #0x10]
	movs r0, #1
	orrs r0, r1
	b _0805BD06
_0805BD00:
	ldrb r1, [r6, #0x10]
	movs r0, #0xfe
	ands r0, r1
_0805BD06:
	strb r0, [r6, #0x10]
	ldr r3, [sp]
	mov r2, sl
	ldrb r2, [r2]
	cmp r3, r2
	bge _0805BD20
	ldr r3, _0805BD30 @ =0x03002E20
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r3, r1
	adds r1, r6, #0
	bl sub_805B520
_0805BD20:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805BD30: .4byte 0x03002E20

	thumb_func_start sub_805BD34
sub_805BD34: @ 0x0805BD34
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0805BD70 @ =0x03002E20
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r0, r1
	bl sub_805B4D8
	strh r4, [r0, #0x24]
	ldr r1, _0805BD74 @ =sub_805B44C
	str r1, [r0]
	strh r5, [r0, #0x14]
	strh r6, [r0, #0x16]
	ldr r1, _0805BD78 @ =_080F2F7C
	str r1, [r0, #8]
	ldrb r2, [r0, #0x10]
	movs r1, #1
	orrs r1, r2
	strb r1, [r0, #0x10]
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805BD70: .4byte 0x03002E20
_0805BD74: .4byte sub_805B44C
_0805BD78: .4byte _080F2F7C

	thumb_func_start sub_805BD7C
sub_805BD7C: @ 0x0805BD7C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0805BDB8 @ =0x03002E20
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r0, r1
	bl sub_805B4D8
	strh r4, [r0, #0x24]
	ldr r1, _0805BDBC @ =sub_805B44C
	str r1, [r0]
	strh r5, [r0, #0x14]
	strh r6, [r0, #0x16]
	ldr r1, _0805BDC0 @ =_080F2FE4
	str r1, [r0, #8]
	ldrb r2, [r0, #0x10]
	movs r1, #1
	orrs r1, r2
	strb r1, [r0, #0x10]
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805BDB8: .4byte 0x03002E20
_0805BDBC: .4byte sub_805B44C
_0805BDC0: .4byte _080F2FE4

	thumb_func_start sub_805BDC4
sub_805BDC4: @ 0x0805BDC4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r3, r1, #0
	adds r4, r2, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r5, _0805BE20 @ =0x03002E20
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r5, r1
	str r3, [sp]
	bl sub_805B4D8
	strh r4, [r0, #0x24]
	ldr r1, _0805BE24 @ =sub_805B44C
	str r1, [r0]
	strh r6, [r0, #0x14]
	ldr r3, [sp]
	strh r3, [r0, #0x16]
	ldr r3, _0805BE28 @ =0x00000838
	adds r5, r5, r3
	ldr r2, [r5]
	movs r3, #0x24
	ldrsh r1, [r2, r3]
	asrs r1, r1, #1
	str r1, [r0, #0x1c]
	movs r3, #0x24
	ldrsh r1, [r2, r3]
	asrs r1, r1, #1
	str r1, [r0, #0x20]
	ldr r1, _0805BE2C @ =_080F3014
	str r1, [r0, #8]
	ldrb r2, [r0, #0x10]
	movs r1, #1
	orrs r1, r2
	strb r1, [r0, #0x10]
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805BE20: .4byte 0x03002E20
_0805BE24: .4byte sub_805B44C
_0805BE28: .4byte 0x00000838
_0805BE2C: .4byte _080F3014

	thumb_func_start sub_0805BE30
sub_0805BE30: @ 0x0805BE30
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _0805BE6C @ =0x03002E20
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r0, r1
	bl sub_805B4D8
	strh r4, [r0, #0x24]
	ldr r1, _0805BE70 @ =sub_805B44C
	str r1, [r0]
	strh r5, [r0, #0x14]
	strh r6, [r0, #0x16]
	ldr r1, _0805BE74 @ =_080F3034
	str r1, [r0, #8]
	ldrb r2, [r0, #0x10]
	movs r1, #1
	orrs r1, r2
	strb r1, [r0, #0x10]
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805BE6C: .4byte 0x03002E20
_0805BE70: .4byte sub_805B44C
_0805BE74: .4byte _080F3034

	thumb_func_start sub_805BE78
sub_805BE78: @ 0x0805BE78
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	movs r5, #0xf
	mov r4, sp
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
_0805BE9A:
	ldr r0, _0805BF08 @ =0x03002E20
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r0, r1
	bl sub_805B4D8
	str r0, [r4]
	mov r1, sb
	strh r1, [r0, #0x24]
	ldr r1, [r4]
	ldr r0, _0805BF0C @ =sub_805BF78
	str r0, [r1]
	strh r7, [r1, #0x14]
	ldr r0, [r4]
	strh r6, [r0, #0x16]
	ldr r1, [r4]
	lsls r0, r7, #0x10
	str r0, [r1, #0x28]
	ldr r1, [r4]
	lsls r0, r6, #0x10
	str r0, [r1, #0x2c]
	bl main_getRandom
	ldr r2, [r4]
	adds r1, r5, #0
	ands r1, r0
	lsls r1, r1, #4
	add r1, r8
	str r1, [r2, #0x1c]
	bl main_getRandom
	ldr r2, [r4]
	adds r1, r5, #0
	ands r1, r0
	lsls r1, r1, #4
	add r1, r8
	str r1, [r2, #0x20]
	add r0, sp, #4
	cmp r4, r0
	beq _0805BF14
	cmp r4, r0
	ble _0805BF22
	add r0, sp, #8
	cmp r4, r0
	bne _0805BF22
	bl main_getRandom
	ldr r2, [sp, #8]
	adds r1, r5, #0
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0xb
	ldr r1, _0805BF10 @ =0xFFFF4000
	b _0805BF36
	.align 2, 0
_0805BF08: .4byte 0x03002E20
_0805BF0C: .4byte sub_805BF78
_0805BF10: .4byte 0xFFFF4000
_0805BF14:
	bl main_getRandom
	ldr r2, [sp, #4]
	movs r1, #7
	ands r1, r0
	rsbs r1, r1, #0
	b _0805BF2C
_0805BF22:
	bl main_getRandom
	ldr r2, [r4]
	movs r1, #7
	ands r1, r0
_0805BF2C:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0xb
	movs r1, #0xc0
	lsls r1, r1, #6
_0805BF36:
	adds r0, r0, r1
	str r0, [r2, #0x30]
	bl main_getRandom
	ldr r2, [r4]
	adds r1, r5, #0
	ands r1, r0
	lsls r1, r1, #0xd
	ldr r0, _0805BF70 @ =0xFFFD0000
	adds r1, r1, r0
	str r1, [r2, #0x34]
	ldm r4!, {r1}
	ldr r0, _0805BF74 @ =_0807C754
	str r0, [r1, #4]
	ldrb r2, [r1, #0x10]
	movs r0, #1
	orrs r0, r2
	strb r0, [r1, #0x10]
	add r0, sp, #8
	cmp r4, r0
	ble _0805BE9A
	ldr r0, [sp]
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805BF70: .4byte 0xFFFD0000
_0805BF74: .4byte _0807C754

	thumb_func_start sub_805BF78
sub_805BF78: @ 0x0805BF78
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r4, _0805BFD8 @ =0x03002E20
	ldr r1, _0805BFDC @ =0x00000848
	adds r0, r4, r1
	ldrh r2, [r0, #0x14]
	ldr r1, _0805BFE0 @ =0x00000BC8
	adds r0, r4, r1
	ldr r5, [r0]
	ldr r0, [r3, #0x28]
	ldr r1, [r3, #0x30]
	adds r0, r0, r1
	str r0, [r3, #0x28]
	asrs r1, r0, #0x10
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0
	bge _0805BF9E
	adds r0, #0x7f
_0805BF9E:
	asrs r0, r0, #7
	subs r0, r1, r0
	movs r1, #0xff
	ands r0, r1
	strh r0, [r3, #0x14]
	ldr r2, [r3, #0x2c]
	ldr r1, [r3, #0x34]
	adds r2, r2, r1
	str r2, [r3, #0x2c]
	asrs r0, r2, #0x10
	adds r0, r0, r5
	strh r0, [r3, #0x16]
	movs r0, #0xe0
	lsls r0, r0, #5
	adds r1, r1, r0
	str r1, [r3, #0x34]
	ldr r0, _0805BFE4 @ =0x003FFFFF
	cmp r2, r0
	ble _0805BFD0
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r4, r1
	adds r1, r3, #0
	bl sub_805B520
_0805BFD0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805BFD8: .4byte 0x03002E20
_0805BFDC: .4byte 0x00000848
_0805BFE0: .4byte 0x00000BC8
_0805BFE4: .4byte 0x003FFFFF

	thumb_func_start sub_805BFE8
sub_805BFE8: @ 0x0805BFE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0805C010 @ =0x03002E20
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r0, r1
	bl sub_805B4D8
	str r4, [r0, #0x28]
	ldr r1, _0805C014 @ =sub_805C01C
	str r1, [r0]
	ldr r1, _0805C018 @ =_080F3044
	str r1, [r0, #8]
	ldrb r2, [r0, #0x10]
	movs r1, #1
	orrs r1, r2
	strb r1, [r0, #0x10]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805C010: .4byte 0x03002E20
_0805C014: .4byte sub_805C01C
_0805C018: .4byte _080F3044

	thumb_func_start sub_805C01C
sub_805C01C: @ 0x0805C01C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x28]
	bl sub_805B44C
	cmp r0, #0
	beq _0805C04A
	movs r1, #0x24
	ldrsh r0, [r5, r1]
	subs r0, #1
	strh r0, [r4, #0x24]
	movs r1, #0x20
	ldrsh r0, [r5, r1]
	strh r0, [r4, #0x14]
	movs r1, #0x22
	ldrsh r0, [r5, r1]
	strh r0, [r4, #0x16]
	movs r1, #0x24
	ldrsh r0, [r5, r1]
	str r0, [r4, #0x1c]
	movs r1, #0x24
	ldrsh r0, [r5, r1]
	str r0, [r4, #0x20]
_0805C04A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_805C050
sub_805C050: @ 0x0805C050
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0805C078 @ =0x03002E20
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r0, r1
	bl sub_805B4D8
	str r4, [r0, #0x28]
	ldr r1, _0805C07C @ =sub_805C084
	str r1, [r0]
	ldr r1, _0805C080 @ =_080F30B4
	str r1, [r0, #8]
	ldrb r2, [r0, #0x10]
	movs r1, #1
	orrs r1, r2
	strb r1, [r0, #0x10]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805C078: .4byte 0x03002E20
_0805C07C: .4byte sub_805C084
_0805C080: .4byte _080F30B4

	thumb_func_start sub_805C084
sub_805C084: @ 0x0805C084
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x28]
	bl sub_805B44C
	cmp r0, #0
	beq _0805C0B2
	movs r1, #0x24
	ldrsh r0, [r5, r1]
	subs r0, #1
	strh r0, [r4, #0x24]
	movs r1, #0x20
	ldrsh r0, [r5, r1]
	strh r0, [r4, #0x14]
	movs r1, #0x22
	ldrsh r0, [r5, r1]
	strh r0, [r4, #0x16]
	movs r1, #0x24
	ldrsh r0, [r5, r1]
	str r0, [r4, #0x1c]
	movs r1, #0x24
	ldrsh r0, [r5, r1]
	str r0, [r4, #0x20]
_0805C0B2:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0805C0B8
sub_0805C0B8: @ 0x0805C0B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0805C104 @ =0x03002E20
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r0, r1
	bl sub_805B4D8
	str r4, [r0, #0x28]
	adds r2, r0, #0
	adds r2, #0x2c
	movs r1, #0
	strb r1, [r2]
	ldr r1, _0805C108 @ =sub_805C10C
	str r1, [r0]
	ldr r1, [r4, #0x44]
	str r1, [r0, #4]
	movs r2, #0x20
	ldrsh r1, [r4, r2]
	strh r1, [r0, #0x14]
	movs r2, #0x22
	ldrsh r1, [r4, r2]
	subs r1, #0xa
	strh r1, [r0, #0x16]
	movs r2, #0x24
	ldrsh r1, [r4, r2]
	str r1, [r0, #0x1c]
	movs r2, #0x24
	ldrsh r1, [r4, r2]
	lsls r1, r1, #2
	str r1, [r0, #0x20]
	ldrb r2, [r0, #0x10]
	movs r1, #1
	orrs r1, r2
	strb r1, [r0, #0x10]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805C104: .4byte 0x03002E20
_0805C108: .4byte sub_805C10C

	thumb_func_start sub_805C10C
sub_805C10C: @ 0x0805C10C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r4, [r6, #0x28]
	movs r0, #0x2c
	adds r0, r0, r6
	mov r8, r0
	ldrb r7, [r0]
	adds r5, r7, #0
	ldr r0, [r4, #0x44]
	str r0, [r6, #4]
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	adds r0, #1
	strh r0, [r6, #0x24]
	movs r0, #0x20
	ldrsh r2, [r4, r0]
	ldr r3, _0805C194 @ =_080F30FC
	lsls r1, r5, #1
	adds r1, r1, r5
	adds r0, r1, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	strh r2, [r6, #0x14]
	movs r0, #0x22
	ldrsh r2, [r4, r0]
	adds r0, r3, #1
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	strh r2, [r6, #0x16]
	adds r3, #2
	adds r1, r1, r3
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #7
	str r0, [r6, #0x18]
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	str r0, [r6, #0x1c]
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	lsls r0, r0, #2
	str r0, [r6, #0x20]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r5, #0xe
	bls _0805C186
	ldr r0, _0805C198 @ =0x03002E20
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r1, r6, #0
	bl sub_805B520
_0805C186:
	mov r0, r8
	strb r7, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805C194: .4byte _080F30FC
_0805C198: .4byte 0x03002E20

	thumb_func_start sub_805C19C
sub_805C19C: @ 0x0805C19C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	ldr r4, _0805C260 @ =0x03002E20
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_805B4D8
	adds r5, r0, #0
	adds r6, r7, #0
	ldr r2, _0805C264 @ =0x00000838
	adds r4, r4, r2
	ldr r0, [r4]
	ldr r0, [r0, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805C204
	ldr r2, _0805C268 @ =gMPlayTable
	ldr r0, _0805C26C @ =gSongTable
	movs r1, #0xb7
	lsls r1, r1, #3
	adds r3, r0, r1
	ldrh r1, [r3, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _0805C1FE
	movs r2, #0
	ldr r1, [r1]
	ldr r0, [r3]
	cmp r1, r0
	bne _0805C1FA
	movs r2, #1
_0805C1FA:
	cmp r2, #0
	beq _0805C204
_0805C1FE:
	movs r0, #0xb7
	bl m4aSongNumStart
_0805C204:
	str r7, [r5, #0x28]
	ldr r0, _0805C270 @ =sub_805C278
	str r0, [r5]
	ldr r0, _0805C274 @ =_080F312C
	str r0, [r5, #8]
	movs r2, #0x24
	ldrsh r0, [r6, r2]
	subs r0, #1
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	adds r0, #0x2c
	mov r1, r8
	strb r1, [r0]
	adds r0, #1
	mov r2, sb
	strb r2, [r0]
	movs r0, #0x20
	ldrsh r4, [r6, r0]
	mov r1, r8
	lsls r0, r1, #0x18
	asrs r0, r0, #0x10
	movs r2, #0x24
	ldrsh r1, [r6, r2]
	bl Div
	adds r4, r4, r0
	strh r4, [r5, #0x14]
	movs r0, #0x22
	ldrsh r4, [r6, r0]
	mov r1, sb
	lsls r0, r1, #0x18
	asrs r0, r0, #0x10
	movs r2, #0x24
	ldrsh r1, [r6, r2]
	bl Div
	adds r4, r4, r0
	strh r4, [r5, #0x16]
	adds r0, r5, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805C260: .4byte 0x03002E20
_0805C264: .4byte 0x00000838
_0805C268: .4byte gMPlayTable
_0805C26C: .4byte gSongTable
_0805C270: .4byte sub_805C278
_0805C274: .4byte _080F312C

	thumb_func_start sub_805C278
sub_805C278: @ 0x0805C278
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, [r5, #0x28]
	bl sub_805B44C
	cmp r0, #0
	beq _0805C2DC
	movs r1, #0x24
	ldrsh r0, [r7, r1]
	subs r0, #1
	strh r0, [r5, #0x24]
	movs r2, #0x20
	ldrsh r4, [r7, r2]
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	movs r2, #0x24
	ldrsh r1, [r7, r2]
	bl Div
	adds r4, r4, r0
	strh r4, [r5, #0x14]
	movs r0, #0x22
	ldrsh r4, [r7, r0]
	adds r6, r5, #0
	adds r6, #0x2d
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #8
	movs r2, #0x24
	ldrsh r1, [r7, r2]
	bl Div
	adds r4, r4, r0
	strh r4, [r5, #0x16]
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
	adds r0, r7, #0
	bl sub_803D818
	cmp r0, #0
	bne _0805C2DC
	ldrb r0, [r5, #0x10]
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x10]
_0805C2DC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805C2E4
sub_805C2E4: @ 0x0805C2E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, [r4, #0x28]
	mov r8, r0
	adds r0, r4, #0
	bl sub_805B44C
	cmp r0, #0
	beq _0805C344
	adds r6, r4, #0
	adds r6, #0x2e
	ldrb r0, [r6]
	cmp r0, #0
	beq _0805C308
	subs r0, #1
	b _0805C342
_0805C308:
	ldr r0, _0805C350 @ =0x03002E20
	ldr r5, [r0, #0x10]
	movs r1, #0x1f
	adds r0, r5, #0
	ands r0, r1
	subs r0, #0x10
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r0, #7
	ands r0, r5
	lsls r4, r0, #1
	movs r0, #0xf0
	orrs r4, r0
	mov r0, r8
	bl sub_803D818
	cmp r0, #0
	bne _0805C33A
	lsls r1, r7, #0x18
	asrs r1, r1, #0x18
	lsls r2, r4, #0x18
	asrs r2, r2, #0x18
	mov r0, r8
	bl sub_805C19C
_0805C33A:
	movs r0, #3
	ands r5, r0
	lsls r0, r5, #2
	adds r0, #4
_0805C342:
	strb r0, [r6]
_0805C344:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805C350: .4byte 0x03002E20

	thumb_func_start sub_805C354
sub_805C354: @ 0x0805C354
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0805C37C @ =0x03002E20
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r0, r1
	bl sub_805B4D8
	str r4, [r0, #0x28]
	ldr r1, _0805C380 @ =sub_805C2E4
	str r1, [r0]
	ldr r1, _0805C384 @ =_080F3144
	str r1, [r0, #8]
	adds r2, r0, #0
	adds r2, #0x2e
	movs r1, #0
	strb r1, [r2]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805C37C: .4byte 0x03002E20
_0805C380: .4byte sub_805C2E4
_0805C384: .4byte _080F3144

	thumb_func_start sub_805C388
sub_805C388: @ 0x0805C388
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r4, _0805C3F4 @ =0x03002E20
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_805B4D8
	adds r5, r0, #0
	adds r6, r7, #0
	ldr r0, _0805C3F8 @ =0x00000838
	adds r4, r4, r0
	ldr r0, [r4]
	ldr r0, [r0, #0x48]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805C3CE
	ldr r2, _0805C3FC @ =gMPlayTable
	ldr r0, _0805C400 @ =gSongTable
	movs r1, #0xb5
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r0, #0
	bne _0805C3CE
	movs r0, #0xb5
	bl m4aSongNumStart
_0805C3CE:
	str r7, [r5, #0x28]
	ldr r0, _0805C404 @ =sub_805C40C
	str r0, [r5]
	ldr r0, _0805C408 @ =_080F3158
	str r0, [r5, #8]
	movs r1, #0x24
	ldrsh r0, [r6, r1]
	subs r0, #1
	strh r0, [r5, #0x24]
	movs r1, #0x20
	ldrsh r0, [r6, r1]
	strh r0, [r5, #0x14]
	movs r1, #0x22
	ldrsh r0, [r6, r1]
	strh r0, [r5, #0x16]
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805C3F4: .4byte 0x03002E20
_0805C3F8: .4byte 0x00000838
_0805C3FC: .4byte gMPlayTable
_0805C400: .4byte gSongTable
_0805C404: .4byte sub_805C40C
_0805C408: .4byte _080F3158

	thumb_func_start sub_805C40C
sub_805C40C: @ 0x0805C40C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x28]
	bl sub_805B44C
	cmp r0, #0
	beq _0805C442
	movs r1, #0x24
	ldrsh r0, [r5, r1]
	subs r0, #1
	strh r0, [r4, #0x24]
	movs r1, #0x20
	ldrsh r0, [r5, r1]
	strh r0, [r4, #0x14]
	movs r1, #0x22
	ldrsh r0, [r5, r1]
	subs r0, #0x10
	strh r0, [r4, #0x16]
	adds r0, r5, #0
	bl sub_803D818
	cmp r0, #0
	bne _0805C442
	ldrb r1, [r4, #0x10]
	movs r0, #1
	orrs r0, r1
	strb r0, [r4, #0x10]
_0805C442:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_805C448
sub_805C448: @ 0x0805C448
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	mov sb, r0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, _0805C4CC @ =0x03002E20
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r0, r1
	bl sub_805B4D8
	adds r6, r0, #0
	mov r2, sb
	str r2, [r6, #0x28]
	ldr r0, _0805C4D0 @ =sub_805C4D8
	str r0, [r6]
	ldr r0, _0805C4D4 @ =_080F3180
	str r0, [r6, #8]
	movs r1, #0x24
	ldrsh r0, [r2, r1]
	subs r0, #1
	strh r0, [r6, #0x24]
	adds r0, r6, #0
	adds r0, #0x2c
	strb r4, [r0]
	adds r0, #1
	strb r5, [r0]
	movs r0, #0x20
	ldrsh r2, [r2, r0]
	mov r8, r2
	lsls r4, r4, #0x18
	asrs r4, r4, #0x10
	mov r2, sb
	movs r0, #0x24
	ldrsh r1, [r2, r0]
	adds r0, r4, #0
	bl Div
	add r8, r0
	mov r1, r8
	strh r1, [r6, #0x14]
	mov r2, sb
	movs r0, #0x22
	ldrsh r4, [r2, r0]
	lsls r5, r5, #0x18
	asrs r5, r5, #0x10
	movs r0, #0x24
	ldrsh r1, [r2, r0]
	adds r0, r5, #0
	bl Div
	adds r4, r4, r0
	strh r4, [r6, #0x16]
	adds r0, r6, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805C4CC: .4byte 0x03002E20
_0805C4D0: .4byte sub_805C4D8
_0805C4D4: .4byte _080F3180

	thumb_func_start sub_805C4D8
sub_805C4D8: @ 0x0805C4D8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, [r5, #0x28]
	bl sub_805B44C
	cmp r0, #0
	beq _0805C548
	movs r1, #0x24
	ldrsh r0, [r7, r1]
	subs r0, #1
	strh r0, [r5, #0x24]
	movs r2, #0x20
	ldrsh r4, [r7, r2]
	adds r0, r5, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	movs r2, #0x24
	ldrsh r1, [r7, r2]
	bl Div
	adds r4, r4, r0
	strh r4, [r5, #0x14]
	movs r0, #0x22
	ldrsh r4, [r7, r0]
	adds r6, r5, #0
	adds r6, #0x2d
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r0, r0, #8
	movs r2, #0x24
	ldrsh r1, [r7, r2]
	bl Div
	adds r4, r4, r0
	strh r4, [r5, #0x16]
	ldr r2, _0805C550 @ =_080F31A0
	ldr r1, [r5, #0xc]
	movs r0, #8
	subs r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	ldrb r1, [r6]
	adds r0, r0, r1
	strb r0, [r6]
	adds r0, r7, #0
	bl sub_803D818
	cmp r0, #0
	bne _0805C548
	ldrb r0, [r5, #0x10]
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x10]
_0805C548:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805C550: .4byte _080F31A0

	thumb_func_start sub_805C554
sub_805C554: @ 0x0805C554
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r7, [r6, #0x28]
	bl sub_805B44C
	cmp r0, #0
	beq _0805C5BC
	adds r5, r6, #0
	adds r5, #0x2e
	ldrb r0, [r5]
	cmp r0, #0
	beq _0805C572
	subs r0, #1
	strb r0, [r5]
	b _0805C5A0
_0805C572:
	ldr r0, _0805C5C4 @ =0x03002E20
	ldr r4, [r0, #0x10]
	movs r0, #0x1f
	adds r1, r4, #0
	ands r1, r0
	subs r1, #0x10
	movs r2, #7
	ands r2, r4
	lsls r2, r2, #0x19
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #0xfc
	lsls r0, r0, #0x18
	adds r2, r2, r0
	asrs r2, r2, #0x18
	adds r0, r7, #0
	bl sub_805C448
	movs r0, #3
	ands r4, r0
	lsls r4, r4, #2
	adds r4, #4
	strb r4, [r5]
_0805C5A0:
	adds r0, r7, #0
	adds r0, #0x72
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0xe
	beq _0805C5BC
	ldr r0, _0805C5C4 @ =0x03002E20
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r1, r6, #0
	bl sub_805B520
_0805C5BC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805C5C4: .4byte 0x03002E20

	thumb_func_start sub_805C5C8
sub_805C5C8: @ 0x0805C5C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0805C5F0 @ =0x03002E20
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r0, r1
	bl sub_805B4D8
	str r4, [r0, #0x28]
	ldr r1, _0805C5F4 @ =sub_805C554
	str r1, [r0]
	ldr r1, _0805C5F8 @ =_080F3190
	str r1, [r0, #8]
	adds r2, r0, #0
	adds r2, #0x2e
	movs r1, #0
	strb r1, [r2]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805C5F0: .4byte 0x03002E20
_0805C5F4: .4byte sub_805C554
_0805C5F8: .4byte _080F3190

	thumb_func_start sub_805C5FC
sub_805C5FC: @ 0x0805C5FC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	ldr r0, _0805C648 @ =0x03002E20
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r0, r1
	bl sub_805B4D8
	movs r3, #0
	strh r6, [r0, #0x24]
	ldr r1, _0805C64C @ =sub_805C654
	str r1, [r0]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, #8
	strh r4, [r0, #0x14]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	subs r5, #0x20
	strh r5, [r0, #0x16]
	ldr r1, _0805C650 @ =_080F31B0
	str r1, [r0, #8]
	ldrb r2, [r0, #0x10]
	movs r1, #1
	orrs r1, r2
	strb r1, [r0, #0x10]
	str r3, [r0, #0x28]
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805C648: .4byte 0x03002E20
_0805C64C: .4byte sub_805C654
_0805C650: .4byte _080F31B0

	thumb_func_start sub_805C654
sub_805C654: @ 0x0805C654
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x28]
	ldr r0, _0805C67C @ =_080F31C0
	adds r0, r5, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x16]
	adds r0, r0, r1
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	bl sub_805B44C
	adds r5, #1
	str r5, [r4, #0x28]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805C67C: .4byte _080F31C0

	thumb_func_start sub_805C680
sub_805C680: @ 0x0805C680
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	movs r2, #0xff
	lsrs r1, r1, #0x18
	movs r3, #0
	cmp r1, #9
	bhi _0805C69A
	ldr r0, _0805C6E8 @ =0x02032B50
	adds r0, #0xe
	adds r0, r1, r0
	ldrb r2, [r0]
	movs r3, #1
_0805C69A:
	cmp r3, #0
	bne _0805C6C0
	adds r0, r1, #0
	subs r0, #0xa
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #1
	bhi _0805C6B4
	ldr r0, _0805C6E8 @ =0x02032B50
	adds r0, #0x18
	adds r0, r1, r0
	ldrb r2, [r0]
	movs r3, #1
_0805C6B4:
	cmp r3, #0
	bne _0805C6C0
	cmp r1, #2
	bne _0805C6C0
	ldr r0, _0805C6E8 @ =0x02032B50
	ldrb r2, [r0, #0x1a]
_0805C6C0:
	movs r0, #8
	ldr r1, _0805C6EC @ =0x03005C90
	strh r0, [r1]
	lsls r0, r2, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0
	blt _0805C6F4
	ldr r0, _0805C6F0 @ =0x030023DC
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805C6F4
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	movs r1, #8
	adds r2, r4, #0
	movs r3, #0x20
	bl ReadFlash
	movs r0, #0
	b _0805C6F6
	.align 2, 0
_0805C6E8: .4byte 0x02032B50
_0805C6EC: .4byte 0x03005C90
_0805C6F0: .4byte 0x030023DC
_0805C6F4:
	movs r0, #1
_0805C6F6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0805C6FC
sub_0805C6FC: @ 0x0805C6FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _0805C73C @ =0x02032B80
	movs r0, #0xbf
	lsls r0, r0, #4
	adds r4, r5, r0
	ldrh r1, [r4]
	movs r7, #0x80
	lsls r7, r7, #8
	adds r0, r7, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _0805C740 @ =0x030023DC
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805C72C
	movs r0, #0
	movs r1, #0
	adds r2, r5, #0
	ldr r3, _0805C744 @ =0x00000BF4
	bl ReadFlash
_0805C72C:
	movs r0, #7
	strh r0, [r5, #8]
	cmp r6, #0
	beq _0805C748
	ldrh r1, [r4]
	adds r0, r7, #0
	orrs r0, r1
	b _0805C74E
	.align 2, 0
_0805C73C: .4byte 0x02032B80
_0805C740: .4byte 0x030023DC
_0805C744: .4byte 0x00000BF4
_0805C748:
	ldrh r1, [r4]
	ldr r0, _0805C7C0 @ =0x00007FFF
	ands r0, r1
_0805C74E:
	strh r0, [r4]
	adds r1, r5, #0
	movs r4, #0xbf
	lsls r4, r4, #4
	movs r3, #0
	movs r2, #0
	ldr r0, _0805C7C4 @ =0x00000BF2
	adds r0, r0, r5
	mov r8, r0
_0805C760:
	ldrb r0, [r1]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r1, #1
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r4
	blt _0805C760
	ldr r1, _0805C7C8 @ =0x00002CB4
	adds r0, r1, #0
	eors r3, r0
	mov r0, r8
	ldrh r1, [r0]
	eors r1, r3
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge _0805C81C
	movs r1, #0xbf
	lsls r1, r1, #4
	adds r4, r5, r1
	ldrh r1, [r4]
	movs r7, #0x80
	lsls r7, r7, #8
	adds r0, r7, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _0805C7CC @ =0x030023DC
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805C7B0
	movs r0, #1
	movs r1, #0
	adds r2, r5, #0
	ldr r3, _0805C7D0 @ =0x00000BF4
	bl ReadFlash
_0805C7B0:
	movs r0, #7
	strh r0, [r5, #8]
	cmp r6, #0
	beq _0805C7D4
	ldrh r1, [r4]
	adds r0, r7, #0
	orrs r0, r1
	b _0805C7DA
	.align 2, 0
_0805C7C0: .4byte 0x00007FFF
_0805C7C4: .4byte 0x00000BF2
_0805C7C8: .4byte 0x00002CB4
_0805C7CC: .4byte 0x030023DC
_0805C7D0: .4byte 0x00000BF4
_0805C7D4:
	ldrh r1, [r4]
	ldr r0, _0805C814 @ =0x00007FFF
	ands r0, r1
_0805C7DA:
	strh r0, [r4]
	adds r2, r5, #0
	movs r4, #0xbf
	lsls r4, r4, #4
	movs r3, #0
	movs r1, #0
_0805C7E6:
	ldrb r0, [r2]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #1
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r4
	blt _0805C7E6
	ldr r1, _0805C818 @ =0x00002CB4
	adds r0, r1, #0
	eors r3, r0
	mov r0, r8
	ldrh r1, [r0]
	eors r1, r3
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge _0805C81C
	movs r0, #1
	b _0805C81E
	.align 2, 0
_0805C814: .4byte 0x00007FFF
_0805C818: .4byte 0x00002CB4
_0805C81C:
	movs r0, #0
_0805C81E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0805C828
sub_0805C828: @ 0x0805C828
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	ldr r4, _0805C88C @ =0x02023400
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	lsrs r1, r0, #0x18
	ldr r0, _0805C890 @ =0x030023DC
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805C84C
	adds r0, r1, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0x80
	lsls r3, r3, #5
	bl ReadFlash
_0805C84C:
	movs r0, #9
	strh r0, [r4, #0x12]
	adds r3, r4, #0
	movs r2, #0
	movs r1, #0
	ldr r0, _0805C894 @ =0x00000FFE
	adds r5, r4, r0
_0805C85A:
	ldrb r0, [r3]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r3, #1
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #2
	blt _0805C85A
	ldr r1, _0805C898 @ =0x00002CB4
	adds r0, r1, #0
	eors r2, r0
	ldrh r1, [r5]
	eors r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt _0805C89C
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _0805C89C
	movs r0, #0
	b _0805C89E
	.align 2, 0
_0805C88C: .4byte 0x02023400
_0805C890: .4byte 0x030023DC
_0805C894: .4byte 0x00000FFE
_0805C898: .4byte 0x00002CB4
_0805C89C:
	movs r0, #1
_0805C89E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start save_805C8A4
save_805C8A4: @ 0x0805C8A4
	push {r4, r5, r6, lr}
	ldr r5, _0805C8E8 @ =0x02032B80
	ldr r6, _0805C8EC @ =title_main
	ldr r0, _0805C8F0 @ =0x030023DC
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805C8F4
	bl sub_805DA18
	cmp r0, #0
	bne _0805C8DA
	bl sub_805E42C
	bl sub_805D30C
	bl sub_805DCF4
	bl sub_805DD08
	bl sub_805DD40
	bl sub_805DD74
	bl sub_805DD88
	bl sub_805DA68
_0805C8DA:
	bl sub_805E58C
	cmp r0, #0
	bne _0805C948
	bl sub_805E5E8
	b _0805C948
	.align 2, 0
_0805C8E8: .4byte 0x02032B80
_0805C8EC: .4byte title_main
_0805C8F0: .4byte 0x030023DC
_0805C8F4:
	bl sub_805DDBC
	bl sub_805E42C
	bl sub_805D30C
	bl sub_805DCF4
	bl sub_805DD08
	bl sub_805DD40
	bl sub_805DD74
	bl sub_805DD88
	adds r3, r5, #0
	movs r4, #0xbf
	lsls r4, r4, #4
	movs r1, #0
	movs r2, #0
_0805C91E:
	ldrb r0, [r3]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r3, #1
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r4
	blt _0805C91E
	ldr r2, _0805C968 @ =0x00002CB4
	adds r0, r2, #0
	eors r1, r0
	ldr r2, _0805C96C @ =0x00000BF2
	adds r0, r5, r2
	strh r1, [r0]
	bl sub_805E5E8
	movs r0, #1
	bl sub_80152F8
_0805C948:
	ldr r0, _0805C970 @ =0x04000130
	ldrh r0, [r0]
	movs r1, #0
	cmp r0, #0xf5
	bne _0805C954
	movs r1, #1
_0805C954:
	cmp r1, #0
	beq _0805C994
	ldr r0, _0805C974 @ =0x030023DC
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805C978
	movs r0, #1
	bl sub_80152B0
	b _0805C97E
	.align 2, 0
_0805C968: .4byte 0x00002CB4
_0805C96C: .4byte 0x00000BF2
_0805C970: .4byte 0x04000130
_0805C974: .4byte 0x030023DC
_0805C978:
	movs r0, #1
	bl sub_80152F8
_0805C97E:
	adds r0, r6, #0
	bl sub_8015330
	ldr r0, _0805C99C @ =sub_80149AC
	ldr r2, _0805C9A0 @ =0x03002E20
	str r0, [r2]
	ldrb r0, [r2, #8]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r2, #8]
_0805C994:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805C99C: .4byte sub_80149AC
_0805C9A0: .4byte 0x03002E20

	thumb_func_start sub_805C9A4
sub_805C9A4: @ 0x0805C9A4
	push {r4, r5, r6, r7, lr}
	ldr r7, _0805CA98 @ =0x02032B80
	movs r4, #1
	bl m4aSoundVSyncOff
	ldr r0, _0805CA9C @ =0x04000200
	ldrh r0, [r0]
	adds r6, r0, #0
	movs r1, #0x80
	lsls r1, r1, #9
	movs r0, #0
	bl irq_updateMask
	ldr r1, _0805CAA0 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r0, _0805CAA4 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _0805CAA8 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0805C9E4
_0805C9DC:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0805C9DC
_0805C9E4:
	ldr r1, _0805CAAC @ =0x040000BC
	ldrh r2, [r1, #0xa]
	ldr r0, _0805CAA4 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _0805CAA8 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	ldr r5, _0805CAB0 @ =0x02029400
	cmp r0, #0
	bge _0805CA0C
_0805CA04:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0805CA04
_0805CA0C:
	ldr r1, _0805CAB4 @ =0x040000C8
	ldrh r2, [r1, #0xa]
	ldr r0, _0805CAA4 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _0805CAA8 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0805CA32
_0805CA2A:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0805CA2A
_0805CA32:
	ldr r1, _0805CAB8 @ =0x040000D4
	ldrh r2, [r1, #0xa]
	ldr r0, _0805CAA4 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _0805CAA8 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0805CA58
_0805CA50:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0805CA50
_0805CA58:
	adds r1, r5, #0
	ldr r2, _0805CABC @ =0x000005FA
	adds r0, r7, #0
	bl CpuSet
	movs r0, #0x10
	adds r1, r7, #0
	bl sub_805EB04
	cmp r0, #0
	bne _0805CA70
	movs r4, #0
_0805CA70:
	movs r0, #0x11
	adds r1, r5, #0
	bl sub_805EB04
	cmp r0, #0
	bne _0805CA7E
	movs r4, #0
_0805CA7E:
	bl main_waitVBlankFlag
	movs r0, #2
	adds r1, r6, #0
	bl irq_updateMask
	bl m4aSoundVSyncOn
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805CA98: .4byte 0x02032B80
_0805CA9C: .4byte 0x04000200
_0805CAA0: .4byte 0x040000B0
_0805CAA4: .4byte 0x0000C5FF
_0805CAA8: .4byte 0x00007FFF
_0805CAAC: .4byte 0x040000BC
_0805CAB0: .4byte 0x02029400
_0805CAB4: .4byte 0x040000C8
_0805CAB8: .4byte 0x040000D4
_0805CABC: .4byte 0x000005FA

	thumb_func_start sub_805CAC0
sub_805CAC0: @ 0x0805CAC0
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	ldr r5, _0805CC24 @ =0x02020400
	movs r7, #1
	ldr r4, _0805CC28 @ =0x0000FFFF
	adds r6, r5, #0
	adds r6, #8
	lsrs r0, r0, #0x18
	movs r1, #0
	cmp r0, #9
	bhi _0805CADC
	adds r4, r0, #0
	adds r4, #0x20
	movs r1, #1
_0805CADC:
	cmp r1, #0
	bne _0805CAFA
	subs r0, #0xa
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0805CAF0
	adds r4, r0, #0
	adds r4, #0x40
	movs r1, #1
_0805CAF0:
	cmp r1, #0
	bne _0805CAFA
	cmp r0, #2
	bne _0805CAFA
	movs r4, #0x80
_0805CAFA:
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	bl sub_805E8B4
	strh r0, [r5, #4]
	movs r0, #9
	strh r0, [r6, #0xa]
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
_0805CB0E:
	ldrb r0, [r1]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, #1
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0x1e
	blt _0805CB0E
	ldr r1, _0805CC2C @ =0x00002CB4
	adds r0, r1, #0
	eors r2, r0
	strh r2, [r6, #0x1e]
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
_0805CB30:
	ldrb r0, [r1]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, #1
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #2
	blt _0805CB30
	ldr r1, _0805CC2C @ =0x00002CB4
	adds r0, r1, #0
	eors r2, r0
	ldr r1, _0805CC30 @ =0x00000FFE
	adds r0, r5, r1
	strh r2, [r0]
	bl m4aSoundVSyncOff
	ldr r0, _0805CC34 @ =0x04000200
	ldrh r0, [r0]
	adds r6, r0, #0
	movs r1, #0x80
	lsls r1, r1, #9
	movs r0, #0
	bl irq_updateMask
	ldr r1, _0805CC38 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r0, _0805CC3C @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _0805CC40 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0805CB8A
_0805CB82:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0805CB82
_0805CB8A:
	ldr r1, _0805CC44 @ =0x040000BC
	ldrh r2, [r1, #0xa]
	ldr r0, _0805CC3C @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _0805CC40 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0805CBB0
_0805CBA8:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0805CBA8
_0805CBB0:
	ldr r1, _0805CC48 @ =0x040000C8
	ldrh r2, [r1, #0xa]
	ldr r0, _0805CC3C @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _0805CC40 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0805CBD6
_0805CBCE:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0805CBCE
_0805CBD6:
	ldr r1, _0805CC4C @ =0x040000D4
	ldrh r2, [r1, #0xa]
	ldr r0, _0805CC3C @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _0805CC40 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0805CBFC
_0805CBF4:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0805CBF4
_0805CBFC:
	lsrs r0, r4, #0x10
	adds r1, r5, #0
	bl sub_805EB04
	cmp r0, #0
	bne _0805CC0A
	movs r7, #0
_0805CC0A:
	bl main_waitVBlankFlag
	movs r0, #2
	adds r1, r6, #0
	bl irq_updateMask
	bl m4aSoundVSyncOn
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805CC24: .4byte 0x02020400
_0805CC28: .4byte 0x0000FFFF
_0805CC2C: .4byte 0x00002CB4
_0805CC30: .4byte 0x00000FFE
_0805CC34: .4byte 0x04000200
_0805CC38: .4byte 0x040000B0
_0805CC3C: .4byte 0x0000C5FF
_0805CC40: .4byte 0x00007FFF
_0805CC44: .4byte 0x040000BC
_0805CC48: .4byte 0x040000C8
_0805CC4C: .4byte 0x040000D4

	thumb_func_start sub_0805CC50
sub_0805CC50: @ 0x0805CC50
	push {r4, r5, r6, r7, lr}
	ldr r6, _0805CCA0 @ =0x02032B80
	ldr r7, _0805CCA4 @ =0x03002E20
	adds r5, r7, #0
	adds r5, #0x24
	ldr r1, _0805CCA8 @ =0x00000564
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0805CD42
	ldr r2, _0805CCAC @ =0x00000565
	adds r0, r6, r2
	ldrb r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r7, r2
	strb r1, [r0]
	ldr r1, _0805CCB0 @ =0x00000566
	adds r0, r6, r1
	ldrb r0, [r0]
	ldr r2, _0805CCB4 @ =0x00000567
	adds r1, r6, r2
	lsls r0, r0, #2
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r0, #1
	bl sub_8002C30
	movs r1, #0xad
	lsls r1, r1, #3
	adds r0, r6, r1
	ldrb r1, [r0]
	adds r0, r5, #0
	movs r2, #1
	bl sub_804AE58
	movs r4, #0
	ldr r2, _0805CCB8 @ =0x00000815
	adds r0, r7, r2
	b _0805CCEA
	.align 2, 0
_0805CCA0: .4byte 0x02032B80
_0805CCA4: .4byte 0x03002E20
_0805CCA8: .4byte 0x00000564
_0805CCAC: .4byte 0x00000565
_0805CCB0: .4byte 0x00000566
_0805CCB4: .4byte 0x00000567
_0805CCB8: .4byte 0x00000815
_0805CCBC:
	lsls r0, r4, #2
	ldr r2, _0805CD48 @ =0x000007F4
	adds r1, r5, r2
	adds r1, r1, r0
	ldr r2, [r1]
	movs r1, #0xfe
	lsls r1, r1, #3
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r4, r0
	blt _0805CCE4
	adds r0, r2, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	movs r1, #7
	ands r1, r0
	adds r0, r5, #0
	movs r2, #0
	bl sub_804AE58
_0805CCE4:
	adds r4, #1
	ldr r2, _0805CD4C @ =0x000007F1
	adds r0, r5, r2
_0805CCEA:
	ldrb r0, [r0]
	cmp r4, r0
	blt _0805CCBC
	movs r4, #0
_0805CCF2:
	lsls r1, r4, #2
	ldr r2, _0805CD48 @ =0x000007F4
	adds r0, r5, r2
	adds r0, r0, r1
	ldr r2, [r0]
	movs r1, #0xad
	lsls r1, r1, #3
	adds r0, r6, r1
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x4c
	strb r1, [r0]
	movs r1, #0xae
	lsls r1, r1, #3
	adds r0, r6, r1
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0xc4
	strb r1, [r0]
	movs r1, #0xaf
	lsls r1, r1, #3
	adds r0, r6, r1
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #1
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
	cmp r4, #7
	ble _0805CCF2
_0805CD42:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805CD48: .4byte 0x000007F4
_0805CD4C: .4byte 0x000007F1

	thumb_func_start sub_805CD50
sub_805CD50: @ 0x0805CD50
	push {r4, r5, r6, r7, lr}
	ldr r7, _0805CE18 @ =0x02032B80
	ldr r5, _0805CE1C @ =0x03002E20
	bl sub_8002C24
	adds r4, r0, #0
	movs r0, #3
	ands r4, r0
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r5, r1
	ldrb r1, [r0]
	ldr r2, _0805CE20 @ =0x00000565
	adds r0, r7, r2
	strb r1, [r0]
	bl sub_8002C24
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1a
	ldr r3, _0805CE24 @ =0x00000566
	adds r1, r7, r3
	strb r0, [r1]
	ldr r1, _0805CE28 @ =0x00000567
	adds r0, r7, r1
	strb r4, [r0]
	ldr r2, _0805CE2C @ =0x00000838
	adds r0, r5, r2
	ldr r6, [r0]
	lsls r4, r4, #2
	adds r4, r4, r7
	adds r0, r6, #0
	adds r0, #0xba
	ldrh r0, [r0]
	lsrs r0, r0, #1
	adds r3, #0x1c
	adds r1, r4, r3
	strb r0, [r1]
	adds r0, r6, #0
	bl sub_803DAC4
	movs r2, #0xb0
	lsls r2, r2, #3
	adds r1, r4, r2
	strh r0, [r1]
	movs r3, #0xbc
	lsls r3, r3, #1
	adds r0, r6, r3
	ldrh r0, [r0]
	ldr r1, _0805CE30 @ =0x00000583
	adds r4, r4, r1
	strb r0, [r4]
	movs r3, #0
	movs r0, #0xad
	lsls r0, r0, #3
	adds r2, r7, r0
	ldr r1, _0805CE34 @ =0x00000818
	adds r5, r5, r1
	movs r0, #7
	mov ip, r0
	movs r1, #0xaf
	lsls r1, r1, #3
	adds r4, r7, r1
_0805CDCC:
	ldm r5!, {r6}
	adds r0, r6, #0
	adds r0, #0x4c
	ldrb r1, [r0]
	mov r0, ip
	ands r0, r1
	strb r0, [r2]
	adds r0, r6, #0
	adds r0, #0xc4
	ldrb r0, [r0]
	strb r0, [r2, #8]
	adds r1, r4, r3
	adds r0, r6, #0
	adds r0, #0xba
	ldrh r0, [r0]
	lsrs r0, r0, #1
	strb r0, [r1]
	adds r2, #1
	adds r3, #1
	cmp r3, #7
	ble _0805CDCC
	ldr r2, _0805CE38 @ =0x00000564
	adds r1, r7, r2
	movs r0, #1
	strb r0, [r1]
	movs r3, #0xbf
	lsls r3, r3, #4
	adds r2, r7, r3
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805CE18: .4byte 0x02032B80
_0805CE1C: .4byte 0x03002E20
_0805CE20: .4byte 0x00000565
_0805CE24: .4byte 0x00000566
_0805CE28: .4byte 0x00000567
_0805CE2C: .4byte 0x00000838
_0805CE30: .4byte 0x00000583
_0805CE34: .4byte 0x00000818
_0805CE38: .4byte 0x00000564

	thumb_func_start sub_805CE3C
sub_805CE3C: @ 0x0805CE3C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0x1c
	bne _0805CE88
	bl sub_805DCC8
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _0805CECE
	ldr r4, _0805CE80 @ =0x02032B30
	lsls r5, r0, #0x18
	lsrs r1, r5, #0x18
	adds r0, r4, #0
	bl sub_805C680
	cmp r0, #0
	bne _0805CECE
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _0805CECE
	ldrb r1, [r4]
	movs r0, #0x20
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _0805CE76
	movs r1, #0
_0805CE76:
	cmp r1, #0
	beq _0805CECE
	asrs r0, r5, #0x18
	b _0805CED2
	.align 2, 0
_0805CE80: .4byte 0x02032B30
_0805CE84:
	asrs r0, r2, #0x18
	b _0805CED2
_0805CE88:
	movs r7, #0
	ldr r4, _0805CED8 @ =0x02032B30
	movs r5, #0
_0805CE8E:
	lsrs r1, r5, #0x18
	adds r0, r4, #0
	bl sub_805C680
	adds r2, r5, #0
	cmp r0, #0
	bne _0805CEC2
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _0805CEC2
	ldrb r1, [r4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805CEC2
	movs r0, #1
	rsbs r0, r0, #0
	movs r1, #1
	cmp r6, r0
	beq _0805CEBE
	ldrb r0, [r4, #9]
	cmp r0, r6
	beq _0805CEBE
	movs r1, #0
_0805CEBE:
	cmp r1, #0
	bne _0805CE84
_0805CEC2:
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r5, r5, r0
	adds r7, #1
	cmp r7, #9
	ble _0805CE8E
_0805CECE:
	movs r0, #1
	rsbs r0, r0, #0
_0805CED2:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805CED8: .4byte 0x02032B30

	thumb_func_start sub_0805CEDC
sub_0805CEDC: @ 0x0805CEDC
	push {r4, r5, r6, lr}
	ldr r0, _0805CF10 @ =0x02020400
	ldrb r0, [r0, #0x11]
	bl sub_805CE3C
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0805CF32
	movs r5, #0
	ldr r6, _0805CF14 @ =0x02032B30
_0805CEF8:
	lsls r4, r5, #0x18
	lsrs r1, r4, #0x18
	adds r0, r6, #0
	bl sub_805C680
	cmp r0, #0
	bne _0805CF0C
	ldrh r0, [r6, #2]
	cmp r0, #0
	bne _0805CF18
_0805CF0C:
	lsrs r0, r4, #0x18
	b _0805CF22
	.align 2, 0
_0805CF10: .4byte 0x02020400
_0805CF14: .4byte 0x02032B30
_0805CF18:
	adds r5, #1
	cmp r5, #9
	ble _0805CEF8
	movs r0, #1
	rsbs r0, r0, #0
_0805CF22:
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0805CF32
	movs r2, #0
_0805CF32:
	ldr r0, _0805CF54 @ =0x02020400
	ldrh r0, [r0, #0xa]
	cmp r0, #0
	beq _0805CF4C
	ldr r0, _0805CF58 @ =0x02032B80
	movs r1, #0xbf
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r1, #1
	lsls r1, r2
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
_0805CF4C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805CF54: .4byte 0x02020400
_0805CF58: .4byte 0x02032B80

	thumb_func_start sub_0805CF5C
sub_0805CF5C: @ 0x0805CF5C
	push {r4, r5, r6, lr}
	movs r5, #0xa
	ldr r6, _0805CF7C @ =0x02032B30
_0805CF62:
	lsls r4, r5, #0x18
	lsrs r1, r4, #0x18
	adds r0, r6, #0
	bl sub_805C680
	cmp r0, #0
	bne _0805CF76
	ldrh r0, [r6, #2]
	cmp r0, #0
	bne _0805CF80
_0805CF76:
	lsrs r0, r4, #0x18
	b _0805CF8A
	.align 2, 0
_0805CF7C: .4byte 0x02032B30
_0805CF80:
	adds r5, #1
	cmp r5, #0xb
	ble _0805CF62
	movs r0, #1
	rsbs r0, r0, #0
_0805CF8A:
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0805CF9A
	movs r2, #0xa
_0805CF9A:
	ldr r0, _0805CFBC @ =0x02020400
	ldrh r0, [r0, #0xa]
	cmp r0, #0
	beq _0805CFB4
	ldr r0, _0805CFC0 @ =0x02032B80
	movs r1, #0xbf
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r1, #1
	lsls r1, r2
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
_0805CFB4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805CFBC: .4byte 0x02020400
_0805CFC0: .4byte 0x02032B80

	thumb_func_start sub_805CFC4
sub_805CFC4: @ 0x0805CFC4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x20
	ldr r0, _0805D014 @ =0x03002E20
	ldr r1, _0805D018 @ =0x00000801
	adds r0, r0, r1
	ldrb r5, [r0]
	ldr r0, _0805D01C @ =0x02020400
	adds r0, #8
	ldrb r4, [r0, #9]
	ldrh r7, [r0, #2]
	adds r0, r5, #0
	bl sub_805CE3C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r0, #0x18
	asrs r0, r1, #0x18
	movs r6, #1
	rsbs r6, r6, #0
	cmp r0, r6
	beq _0805D056
	movs r0, #0
	mov sb, r0
	cmp r7, #0
	beq _0805D03C
	cmp r4, r5
	bne _0805D03C
	lsrs r1, r1, #0x18
	mov r0, sp
	bl sub_805C680
	cmp r0, #0
	beq _0805D024
	adds r0, r6, #0
	b _0805D02A
	.align 2, 0
_0805D014: .4byte 0x03002E20
_0805D018: .4byte 0x00000801
_0805D01C: .4byte 0x02020400
_0805D020:
	lsrs r0, r5, #0x18
	b _0805D080
_0805D024:
	mov r0, sp
	movs r1, #2
	ldrsh r0, [r0, r1]
_0805D02A:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r7
	bge _0805D036
	movs r0, #1
	mov sb, r0
_0805D036:
	mov r1, sb
	cmp r1, #0
	beq _0805D056
_0805D03C:
	ldr r6, _0805D0C0 @ =0x02020400
	mov r4, r8
	adds r4, #0x20
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_805EF10
	cmp r0, #0
	bne _0805D056
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_805EF88
_0805D056:
	adds r7, r5, #0
	movs r4, #0xa
	ldr r6, _0805D0C4 @ =0x02032B30
_0805D05C:
	lsls r5, r4, #0x18
	lsrs r1, r5, #0x18
	adds r0, r6, #0
	bl sub_805C680
	cmp r0, #0
	bne _0805D076
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _0805D076
	ldrb r0, [r6, #9]
	cmp r0, r7
	beq _0805D020
_0805D076:
	adds r4, #1
	cmp r4, #0xb
	ble _0805D05C
	movs r0, #1
	rsbs r0, r0, #0
_0805D080:
	lsls r2, r0, #0x18
	asrs r1, r2, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0805D0B2
	ldr r0, _0805D0C0 @ =0x02020400
	movs r1, #0x80
	lsls r1, r1, #5
	adds r5, r0, r1
	lsrs r0, r2, #8
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_805EF10
	cmp r0, #0
	bne _0805D0B2
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_805EF88
_0805D0B2:
	add sp, #0x20
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805D0C0: .4byte 0x02020400
_0805D0C4: .4byte 0x02032B30

	thumb_func_start sub_0805D0C8
sub_0805D0C8: @ 0x0805D0C8
	push {r4, r5, lr}
	sub sp, #0x20
	lsls r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #0x14
	adds r4, r0, r1
	lsrs r1, r4, #0x18
	mov r0, sp
	bl sub_805C680
	cmp r0, #0
	bne _0805D0F0
	mov r0, sp
	ldrh r0, [r0, #2]
	movs r1, #0
	cmp r0, #0
	bne _0805D0EC
	movs r1, #1
_0805D0EC:
	cmp r1, #0
	beq _0805D0F6
_0805D0F0:
	movs r0, #1
	rsbs r0, r0, #0
	b _0805D0F8
_0805D0F6:
	lsrs r0, r4, #0x18
_0805D0F8:
	lsls r0, r0, #0x18
	ldr r1, _0805D128 @ =0x02020400
	movs r2, #0x80
	lsls r2, r2, #5
	adds r5, r1, r2
	lsrs r0, r0, #8
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_805EF10
	cmp r0, #0
	bne _0805D120
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_805EF88
_0805D120:
	add sp, #0x20
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805D128: .4byte 0x02020400

	thumb_func_start sub_805D12C
sub_805D12C: @ 0x0805D12C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r7, _0805D1D0 @ =0x02032B80
	movs r0, #1
	str r0, [sp, #0x20]
	movs r1, #0xbf
	lsls r1, r1, #4
	adds r0, r7, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0805D152
	b _0805D2F4
_0805D152:
	ldr r0, _0805D1D4 @ =gMPlayTable
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	str r0, [sp, #0x24]
	movs r0, #0x1e
	ldr r2, [sp, #0x24]
	cmp r2, #0
	beq _0805D16C
	ldr r0, _0805D1D8 @ =0x030066E0
	movs r1, #3
	bl m4aMPlayFadeOutTemporarily
	movs r0, #0x40
_0805D16C:
	cmp r0, #0
	beq _0805D17C
	adds r4, r0, #0
_0805D172:
	bl main_frameProc
	subs r4, #1
	cmp r4, #0
	bne _0805D172
_0805D17C:
	movs r1, #0xbf
	lsls r1, r1, #4
	adds r0, r7, r1
	ldrh r0, [r0]
	ldr r1, _0805D1DC @ =0xFFFF3FFF
	ands r0, r1
	cmp r0, #0
	bne _0805D18E
	b _0805D29E
_0805D18E:
	movs r6, #0
	movs r2, #0xbf
	lsls r2, r2, #4
	adds r2, r2, r7
	mov r8, r2
	movs r0, #1
	mov sb, r0
	movs r1, #1
	rsbs r1, r1, #0
	mov sl, r1
_0805D1A2:
	mov r2, r8
	ldrh r0, [r2]
	asrs r0, r6
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _0805D298
	movs r5, #0
	lsls r4, r6, #0x18
	cmp r6, #9
	bgt _0805D20C
	cmp r6, #0xb
	beq _0805D206
	lsrs r1, r4, #0x18
	mov r0, sp
	bl sub_805C680
	cmp r0, #0
	beq _0805D1E0
	movs r0, #1
	rsbs r0, r0, #0
	b _0805D1E4
	.align 2, 0
_0805D1D0: .4byte 0x02032B80
_0805D1D4: .4byte gMPlayTable
_0805D1D8: .4byte 0x030066E0
_0805D1DC: .4byte 0xFFFF3FFF
_0805D1E0:
	mov r0, sp
	ldrb r0, [r0, #9]
_0805D1E4:
	lsls r1, r0, #0x18
	asrs r0, r1, #0x18
	cmp r0, sl
	ble _0805D20C
	lsrs r0, r1, #0x18
	bl track_getTrackIndex
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r2, #0xb2
	lsls r2, r2, #3
	adds r1, r1, r2
	adds r5, r7, r1
	b _0805D20C
_0805D206:
	movs r0, #0xe4
	lsls r0, r0, #3
	adds r5, r7, r0
_0805D20C:
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_805CAC0
	cmp r0, #0
	beq _0805D278
	cmp r5, #0
	beq _0805D224
	ldrb r1, [r5, #0xb]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r5, #0xb]
_0805D224:
	cmp r6, #9
	bgt _0805D26A
	cmp r6, #0xb
	beq _0805D264
	mov r0, sp
	adds r1, r4, #0
	bl sub_805C680
	cmp r0, #0
	beq _0805D23E
	movs r0, #1
	rsbs r0, r0, #0
	b _0805D242
_0805D23E:
	mov r0, sp
	ldrb r0, [r0, #9]
_0805D242:
	lsls r1, r0, #0x18
	asrs r0, r1, #0x18
	cmp r0, sl
	ble _0805D26A
	lsrs r0, r1, #0x18
	bl track_getTrackIndex
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r2, #0xb2
	lsls r2, r2, #3
	adds r1, r1, r2
	adds r5, r7, r1
	b _0805D26A
_0805D264:
	movs r0, #0xe4
	lsls r0, r0, #3
	adds r5, r7, r0
_0805D26A:
	cmp r5, #0
	beq _0805D27C
	ldrb r1, [r5, #0xb]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r5, #0xb]
	b _0805D27C
_0805D278:
	movs r1, #0
	str r1, [sp, #0x20]
_0805D27C:
	mov r1, sb
	lsls r1, r6
	mov r2, r8
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	ldr r0, _0805D2CC @ =0x00000BE8
	adds r2, r7, r0
	adds r0, r6, #2
	mov r1, sb
	lsls r1, r0
	ldr r0, [r2]
	bics r0, r1
	str r0, [r2]
_0805D298:
	adds r6, #1
	cmp r6, #0xc
	ble _0805D1A2
_0805D29E:
	movs r1, #0xbf
	lsls r1, r1, #4
	adds r4, r7, r1
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0805D2BE
	bl sub_805C9A4
	str r0, [sp, #0x20]
	ldrh r1, [r4]
	ldr r0, _0805D2D0 @ =0x0000BFFF
	ands r0, r1
	strh r0, [r4]
_0805D2BE:
	ldr r2, [sp, #0x20]
	cmp r2, #0
	beq _0805D2D4
	movs r0, #0xc4
	bl m4aSongNumStart
	b _0805D2DA
	.align 2, 0
_0805D2CC: .4byte 0x00000BE8
_0805D2D0: .4byte 0x0000BFFF
_0805D2D4:
	movs r0, #0x91
	bl m4aSongNumStart
_0805D2DA:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _0805D2F4
	movs r4, #0x1d
_0805D2E2:
	bl main_frameProc
	subs r4, #1
	cmp r4, #0
	bge _0805D2E2
	ldr r0, _0805D308 @ =0x030066E0
	movs r1, #4
	bl m4aMPlayFadeIn
_0805D2F4:
	ldr r0, [sp, #0x20]
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805D308: .4byte 0x030066E0

	thumb_func_start sub_805D30C
sub_805D30C: @ 0x0805D30C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	mov r0, sp
	bl sub_805DF40
	add r0, sp, #0x10
	movs r1, #0
	strh r1, [r0]
	ldr r2, _0805D420 @ =0x010005FA
	ldr r1, _0805D424 @ =0x02032B80
	bl CpuSet
	mov r0, sp
	bl sub_805DF70
	movs r1, #0
	ldr r2, _0805D424 @ =0x02032B80
	adds r2, #0x46
	ldr r7, _0805D424 @ =0x02032B80
	adds r7, #0x55
	ldr r0, _0805D424 @ =0x02032B80
	adds r0, #0x28
	mov r8, r0
	ldr r3, _0805D424 @ =0x02032B80
	adds r3, #0x37
	mov sb, r3
	movs r6, #8
_0805D34A:
	movs r3, #0
	lsls r0, r1, #1
	adds r5, r1, #1
	adds r4, r0, r1
_0805D352:
	adds r1, r3, r4
	adds r0, r2, r1
	strb r6, [r0]
	adds r1, r7, r1
	strb r6, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _0805D352
	lsls r0, r5, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #4
	bls _0805D34A
	movs r1, #0
	mov sl, r8
	movs r4, #0xff
	mov r8, r4
	mov r6, sb
_0805D378:
	movs r3, #0
	lsls r0, r1, #1
	adds r5, r1, #1
	adds r4, r0, r1
_0805D380:
	adds r1, r3, r4
	mov r7, sl
	adds r2, r7, r1
	ldrb r0, [r2]
	mov r7, r8
	orrs r0, r7
	strb r0, [r2]
	adds r1, r6, r1
	ldrb r0, [r1]
	mov r2, r8
	orrs r0, r2
	strb r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #2
	bls _0805D380
	lsls r0, r5, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #4
	bls _0805D378
	movs r3, #0
	str r3, [sp, #0x34]
_0805D3AE:
	movs r4, #0
	mov sb, r4
	ldr r5, [sp, #0x34]
	lsls r5, r5, #2
	str r5, [sp, #0x48]
_0805D3B8:
	ldr r0, [sp, #0x48]
	add r0, sb
	bl track_getMKSCTrack
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r1, _0805D428 @ =gTrackDefTable
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, [r0, #0x20]
	cmp r2, #0
	beq _0805D4AC
	mov r8, r2
	ldr r7, [sp, #0x34]
	lsls r5, r7, #7
	adds r1, r5, #0
	adds r1, #0x64
	ldr r0, _0805D424 @ =0x02032B80
	adds r1, r0, r1
	mov r2, sb
	lsls r4, r2, #5
	adds r1, r1, r4
	mov r7, r8
	ldrb r2, [r7]
	movs r0, #0x10
	orrs r0, r2
	strb r0, [r1, #0x14]
	ldrh r0, [r7, #2]
	strh r0, [r1, #0x16]
	adds r0, r3, #0
	bl sub_805CE3C
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r3, _0805D42C @ =0x0000FFFF
	movs r0, #0
	mov sl, r0
	lsls r1, r7, #0x18
	adds r6, r5, #0
	cmp r1, #0
	blt _0805D43A
	lsrs r1, r1, #0x18
	add r0, sp, #0x14
	bl sub_805C680
	cmp r0, #0
	beq _0805D430
	movs r0, #1
	rsbs r0, r0, #0
	b _0805D436
	.align 2, 0
_0805D420: .4byte 0x010005FA
_0805D424: .4byte 0x02032B80
_0805D428: .4byte gTrackDefTable
_0805D42C: .4byte 0x0000FFFF
_0805D430:
	add r0, sp, #0x14
	movs r1, #2
	ldrsh r0, [r0, r1]
_0805D436:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_0805D43A:
	movs r5, #0
	adds r0, r6, #0
	adds r0, #0x64
	ldr r2, _0805D474 @ =0x02032B80
	adds r0, r2, r0
	adds r0, r0, r4
	str r0, [sp, #0x38]
	lsls r6, r7, #0x18
_0805D44A:
	lsls r0, r5, #2
	ldr r7, [sp, #0x38]
	adds r4, r7, r0
	mov r1, sl
	adds r0, r5, r1
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0, #6]
	cmp r3, r0
	bls _0805D478
	subs r1, r5, r1
	lsls r1, r1, #2
	add r1, r8
	ldrb r2, [r1, #4]
	movs r0, #0x10
	orrs r0, r2
	strb r0, [r4]
	ldrh r0, [r1, #6]
	strh r0, [r4, #2]
	b _0805D4A2
	.align 2, 0
_0805D474: .4byte 0x02032B80
_0805D478:
	add r0, sp, #0x14
	lsrs r1, r6, #0x18
	str r3, [sp, #0x4c]
	bl sub_805C680
	ldr r3, [sp, #0x4c]
	cmp r0, #0
	beq _0805D48E
	movs r0, #1
	rsbs r0, r0, #0
	b _0805D492
_0805D48E:
	add r0, sp, #0x14
	ldrb r0, [r0]
_0805D492:
	strb r0, [r4]
	strh r3, [r4, #2]
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r3, _0805D594 @ =0x0000FFFF
_0805D4A2:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0805D44A
_0805D4AC:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #3
	bhi _0805D4BC
	b _0805D3B8
_0805D4BC:
	ldr r0, [sp, #0x34]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x34]
	cmp r0, #4
	bhi _0805D4CC
	b _0805D3AE
_0805D4CC:
	movs r2, #0
	str r2, [sp, #0x34]
_0805D4D0:
	movs r3, #0
	mov sb, r3
	ldr r4, [sp, #0x34]
	lsls r4, r4, #2
	str r4, [sp, #0x48]
	ldr r5, [sp, #0x34]
	lsls r6, r5, #7
	adds r5, #1
	str r5, [sp, #0x44]
	movs r7, #0xb9
	lsls r7, r7, #2
	adds r0, r6, r7
	ldr r1, _0805D598 @ =0x02032B80
	adds r0, r1, r0
	str r0, [sp, #0x3c]
	str r0, [sp, #0x40]
_0805D4F0:
	ldr r0, [sp, #0x48]
	add r0, sb
	bl track_getRetroTrack
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r1, _0805D59C @ =gTrackDefTable
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	cmp r0, #0
	bne _0805D5A4
	mov r2, sb
	lsls r4, r2, #5
	ldr r3, [sp, #0x3c]
	adds r2, r3, r4
	ldr r1, [sp, #0x34]
	adds r1, #3
	mov r0, sb
	adds r0, #0xb
	muls r0, r1, r0
	movs r1, #7
	ands r0, r1
	movs r5, #0x10
	orrs r0, r5
	strb r0, [r2, #0x14]
	movs r0, #0xb
	ldr r7, [sp, #0x34]
	adds r1, r7, #0
	muls r1, r0, r1
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r1, r1, r0
	mov r3, sb
	lsls r0, r3, #1
	add r0, sb
	adds r1, r1, r0
	strh r1, [r2, #0x16]
	movs r5, #0
	movs r7, #1
	add r7, sb
	mov r8, r7
	adds r3, #7
	ldr r0, [sp, #0x34]
	lsls r2, r0, #1
	mov r7, sb
	lsls r1, r7, #2
	ldr r0, [sp, #0x40]
	adds r6, r0, r4
	ldr r0, [sp, #0x34]
	adds r0, #5
	muls r3, r0, r3
	ldr r4, [sp, #0x34]
	adds r2, r2, r4
	add r1, sb
	ldr r7, _0805D5A0 @ =0xFFFF8000
	adds r0, r7, #0
	adds r1, r1, r0
	adds r2, r2, r1
_0805D568:
	lsls r0, r5, #2
	adds r4, r6, r0
	movs r0, #0xd
	muls r0, r5, r0
	adds r0, r3, r0
	movs r1, #7
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4]
	lsls r0, r5, #5
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r5
	adds r0, r2, r0
	strh r0, [r4, #2]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0805D568
	b _0805D664
	.align 2, 0
_0805D594: .4byte 0x0000FFFF
_0805D598: .4byte 0x02032B80
_0805D59C: .4byte gTrackDefTable
_0805D5A0: .4byte 0xFFFF8000
_0805D5A4:
	adds r6, r0, #0
	mov r3, sb
	lsls r4, r3, #5
	ldr r5, [sp, #0x3c]
	adds r1, r5, r4
	ldrb r0, [r6]
	movs r7, #0x10
	orrs r0, r7
	strb r0, [r1, #0x14]
	ldrh r0, [r6, #2]
	strh r0, [r1, #0x16]
	adds r0, r2, #0
	bl sub_805CE3C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x50]
	ldr r2, _0805D5E8 @ =0x0000FFFF
	movs r3, #0
	lsls r1, r0, #0x18
	cmp r1, #0
	blt _0805D5F6
	lsrs r1, r1, #0x18
	add r0, sp, #0x14
	str r3, [sp, #0x4c]
	bl sub_805C680
	ldr r3, [sp, #0x4c]
	cmp r0, #0
	beq _0805D5EC
	movs r0, #1
	rsbs r0, r0, #0
	b _0805D5F2
	.align 2, 0
_0805D5E8: .4byte 0x0000FFFF
_0805D5EC:
	add r0, sp, #0x14
	movs r1, #2
	ldrsh r0, [r0, r1]
_0805D5F2:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0805D5F6:
	movs r5, #0
	movs r7, #1
	add r7, sb
	mov r8, r7
	ldr r0, [sp, #0x40]
	adds r0, r0, r4
	mov sl, r0
	ldr r1, [sp, #0x50]
	lsls r1, r1, #0x18
	mov sb, r1
_0805D60A:
	lsls r1, r5, #2
	mov r7, sl
	adds r4, r7, r1
	adds r0, r5, r3
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	cmp r2, r0
	bls _0805D62C
	adds r0, r1, r6
	ldrb r1, [r0, #4]
	movs r7, #0x10
	orrs r1, r7
	strb r1, [r4]
	ldrh r0, [r0, #6]
	strh r0, [r4, #2]
	b _0805D65A
_0805D62C:
	add r0, sp, #0x14
	mov r2, sb
	lsrs r1, r2, #0x18
	str r3, [sp, #0x4c]
	bl sub_805C680
	ldr r7, [sp, #0x50]
	lsls r1, r7, #0x18
	ldr r3, [sp, #0x4c]
	cmp r0, #0
	beq _0805D648
	movs r0, #1
	rsbs r0, r0, #0
	b _0805D64C
_0805D648:
	add r0, sp, #0x14
	ldrb r0, [r0]
_0805D64C:
	strb r0, [r4]
	asrs r0, r1, #0x18
	strh r0, [r4, #2]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r2, _0805D718 @ =0x0000FFFF
_0805D65A:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _0805D60A
_0805D664:
	mov r1, r8
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #3
	bhi _0805D672
	b _0805D4F0
_0805D672:
	ldr r2, [sp, #0x44]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x34]
	cmp r0, #4
	bhi _0805D680
	b _0805D4D0
_0805D680:
	movs r1, #0
	ldr r3, _0805D71C @ =0x02032B80
	movs r4, #0xae
	lsls r4, r4, #3
	adds r0, r3, r4
	movs r4, #7
_0805D68C:
	strb r1, [r0]
	strb r1, [r0, #8]
	adds r0, #1
	subs r4, #1
	cmp r4, #0
	bge _0805D68C
	movs r1, #0
	ldr r5, _0805D71C @ =0x02032B80
	movs r7, #0xb0
	lsls r7, r7, #3
	adds r0, r5, r7
	movs r4, #3
_0805D6A4:
	strb r1, [r0, #2]
	strh r1, [r0]
	strb r1, [r0, #3]
	adds r0, #4
	subs r4, #1
	cmp r4, #0
	bge _0805D6A4
	movs r4, #4
	movs r2, #0
	ldr r1, _0805D71C @ =0x02032B80
	ldr r3, _0805D720 @ =0x00000564
	adds r0, r1, r3
	strb r2, [r0]
	ldr r5, _0805D724 @ =0x00000BEC
	adds r3, r1, r5
	ldrh r1, [r3]
	movs r7, #0x80
	lsls r7, r7, #8
	adds r0, r7, #0
	orrs r0, r1
	ldr r5, _0805D728 @ =0x00007FFF
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r3]
	ldr r7, _0805D71C @ =0x02032B80
	ldr r1, _0805D72C @ =0x00000BEE
	adds r0, r7, r1
	strh r2, [r0]
	movs r0, #7
	strh r0, [r7, #8]
	movs r3, #0xbf
	lsls r3, r3, #4
	adds r0, r7, r3
	strh r2, [r0]
	ldr r5, _0805D730 @ =0x00000BE8
	adds r0, r7, r5
	str r2, [r0]
	bl sub_805E474
	ldr r1, _0805D734 @ =0x00000B9A
	adds r0, r7, r1
	strb r4, [r0]
	ldr r2, _0805D738 @ =0x00000B9B
	adds r1, r7, r2
	movs r0, #3
	strb r0, [r1]
	ldr r3, _0805D73C @ =0x00000B9C
	adds r0, r7, r3
	strb r4, [r0]
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805D718: .4byte 0x0000FFFF
_0805D71C: .4byte 0x02032B80
_0805D720: .4byte 0x00000564
_0805D724: .4byte 0x00000BEC
_0805D728: .4byte 0x00007FFF
_0805D72C: .4byte 0x00000BEE
_0805D730: .4byte 0x00000BE8
_0805D734: .4byte 0x00000B9A
_0805D738: .4byte 0x00000B9B
_0805D73C: .4byte 0x00000B9C

	thumb_func_start sub_805D740
sub_805D740: @ 0x0805D740
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r5, _0805D7E8 @ =0x02032B80
	mov r0, sp
	bl sub_805DF40
	bl sub_805F0F8
	bl sub_805D30C
	mov r0, sp
	bl sub_805DF70
	adds r1, r5, #0
	adds r2, r5, #0
	adds r2, #0x1c
	ldr r0, _0805D7EC @ =0x00000AD4
	adds r4, r5, r0
	movs r3, #0
	movs r0, #4
_0805D768:
	strb r3, [r2]
	adds r2, #1
	subs r0, #1
	cmp r0, #0
	bge _0805D768
	movs r0, #0
	strb r0, [r4]
	ldr r0, _0805D7F0 @ =0x00000AE5
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1]
	ldr r2, _0805D7E8 @ =0x02032B80
	ldr r0, _0805D7F4 @ =0x00000AE6
	adds r1, r2, r0
	movs r0, #0x2f
	strb r0, [r1]
	adds r6, r2, #0
	movs r2, #0
	movs r4, #0
_0805D78E:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	movs r1, #0xb2
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r1, r6, r0
	movs r3, #0
	adds r0, r2, #1
_0805D7A0:
	strb r4, [r1]
	adds r1, #1
	adds r3, #1
	cmp r3, #0x13
	bls _0805D7A0
	adds r2, r0, #0
	cmp r2, #0x17
	ble _0805D78E
	adds r1, r5, #0
	movs r4, #0xbf
	lsls r4, r4, #4
	movs r2, #0
	movs r3, #0
_0805D7BA:
	ldrb r0, [r1]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, #1
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r4
	blt _0805D7BA
	ldr r1, _0805D7F8 @ =0x00002CB4
	adds r0, r1, #0
	eors r2, r0
	ldr r1, _0805D7FC @ =0x00000BF2
	adds r0, r5, r1
	strh r2, [r0]
	bl sub_805E5E8
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805D7E8: .4byte 0x02032B80
_0805D7EC: .4byte 0x00000AD4
_0805D7F0: .4byte 0x00000AE5
_0805D7F4: .4byte 0x00000AE6
_0805D7F8: .4byte 0x00002CB4
_0805D7FC: .4byte 0x00000BF2

	thumb_func_start sub_0805D800
sub_0805D800: @ 0x0805D800
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _0805D85C @ =0x02032B80
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r1, #0xba
	lsls r1, r1, #4
	adds r0, r0, r1
	adds r1, r0, r6
	adds r3, r1, #0
	adds r3, #8
	movs r4, #0
	movs r2, #4
_0805D81C:
	ldrb r0, [r1]
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, #1
	subs r2, #1
	cmp r2, #0
	bge _0805D81C
	lsls r1, r5, #1
	movs r2, #0xf
_0805D830:
	ldrb r0, [r3]
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r3, #1
	subs r2, #1
	cmp r2, #0
	bge _0805D830
	movs r2, #0
	adds r0, r1, r5
	lsls r0, r0, #3
	adds r0, r6, r0
	ldr r1, _0805D860 @ =0x00000BA6
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r4, r0
	bne _0805D854
	movs r2, #1
_0805D854:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0805D85C: .4byte 0x02032B80
_0805D860: .4byte 0x00000BA6

	thumb_func_start sub_805D864
sub_805D864: @ 0x0805D864
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	adds r0, r5, #0
	bl sub_8032BC8
	ldr r7, _0805D8A0 @ =0x02032B80
	cmp r0, #0
	beq _0805D8A4
	adds r0, r5, #0
	bl track_getCup
	adds r4, r0, #0
	adds r0, r5, #0
	bl track_getCupIndex
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x11
	movs r1, #0xb9
	lsls r1, r1, #2
	adds r4, r4, r1
	b _0805D8B8
	.align 2, 0
_0805D8A0: .4byte 0x02032B80
_0805D8A4:
	adds r0, r5, #0
	bl track_getCup
	adds r4, r0, #0
	adds r0, r5, #0
	bl track_getCupIndex
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x11
	adds r4, #0x64
_0805D8B8:
	adds r4, r4, r7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x13
	adds r4, r4, r0
	lsls r0, r6, #2
	adds r0, r4, r0
	ldrh r0, [r0, #2]
	cmp r0, r8
	bhs _0805D8CE
	movs r0, #0
	b _0805D8D0
_0805D8CE:
	movs r0, #1
_0805D8D0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805D8DC
sub_805D8DC: @ 0x0805D8DC
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	adds r0, r5, #0
	bl sub_8032BC8
	ldr r6, _0805D90C @ =0x02032B80
	cmp r0, #0
	beq _0805D910
	adds r0, r5, #0
	bl track_getCup
	adds r4, r0, #0
	adds r0, r5, #0
	bl track_getCupIndex
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x11
	movs r1, #0xb9
	lsls r1, r1, #2
	adds r4, r4, r1
	b _0805D924
	.align 2, 0
_0805D90C: .4byte 0x02032B80
_0805D910:
	adds r0, r5, #0
	bl track_getCup
	adds r4, r0, #0
	adds r0, r5, #0
	bl track_getCupIndex
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x11
	adds r4, #0x64
_0805D924:
	adds r4, r4, r6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x13
	adds r4, r4, r0
	adds r4, #0x14
	ldrh r0, [r4, #2]
	cmp r0, r7
	bhs _0805D938
	movs r0, #0
	b _0805D93A
_0805D938:
	movs r0, #1
_0805D93A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0805D940
sub_0805D940: @ 0x0805D940
	push {r4, lr}
	adds r3, r0, #0
	movs r4, #0
	cmp r4, r2
	bge _0805D960
_0805D94A:
	ldrb r0, [r3]
	strb r0, [r1]
	lsls r0, r0, #0x18
	adds r3, #1
	adds r1, #1
	cmp r0, #0
	beq _0805D95A
	movs r4, #1
_0805D95A:
	subs r2, #1
	cmp r2, #0
	bne _0805D94A
_0805D960:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0805D968
sub_0805D968: @ 0x0805D968
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0805D990
	adds r5, r0, #0
_0805D97A:
	ldrb r1, [r4]
	ldrb r0, [r3]
	adds r3, #1
	adds r4, #1
	cmp r1, r0
	beq _0805D98A
	movs r0, #0
	b _0805D992
_0805D98A:
	subs r2, #1
	cmp r2, r5
	bne _0805D97A
_0805D990:
	movs r0, #1
_0805D992:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0805D998
sub_0805D998: @ 0x0805D998
	ldr r1, _0805D9A0 @ =0x0203EC8C
	strb r0, [r1]
	bx lr
	.align 2, 0
_0805D9A0: .4byte 0x0203EC8C

	thumb_func_start sub_0805D9A4
sub_0805D9A4: @ 0x0805D9A4
	ldr r0, _0805D9AC @ =0x0203EC8C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0805D9AC: .4byte 0x0203EC8C

	thumb_func_start save_getSavePointer_805D9B0
save_getSavePointer_805D9B0: @ 0x0805D9B0
	ldr r0, _0805D9B4 @ =0x02032B80
	bx lr
	.align 2, 0
_0805D9B4: .4byte 0x02032B80

	thumb_func_start sub_805D9B8
sub_805D9B8: @ 0x0805D9B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0xc
	ldr r1, _0805D9C4 @ =0x02020400
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0805D9C4: .4byte 0x02020400

	thumb_func_start sub_805D9C8
sub_805D9C8: @ 0x0805D9C8
	push {r4, lr}
	ldr r4, _0805DA0C @ =0x030023DC
	movs r0, #0
	strb r0, [r4]
	bl m4aSoundVSyncOff
	bl IdentifyFlash
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805D9F2
	ldr r1, _0805DA10 @ =0x03004F80
	adds r1, #0x10
	movs r0, #1
	bl SetFlashTimerIntr
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805D9F2
	movs r0, #1
	strb r0, [r4]
_0805D9F2:
	bl m4aSoundVSyncOn
	ldr r2, _0805DA0C @ =0x030023DC
	ldrb r0, [r2]
	cmp r0, #0
	bne _0805DA00
	strb r0, [r2]
_0805DA00:
	ldr r1, _0805DA14 @ =0x02032B50
	ldrb r0, [r2]
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805DA0C: .4byte 0x030023DC
_0805DA10: .4byte 0x03004F80
_0805DA14: .4byte 0x02032B50

	thumb_func_start sub_805DA18
sub_805DA18: @ 0x0805DA18
	push {r4, lr}
	ldr r4, _0805DA64 @ =0x02032B80
	movs r0, #0x10
	adds r1, r4, #0
	bl sub_805EF10
	adds r2, r0, #0
	cmp r2, #0
	bne _0805DA50
	movs r0, #0x11
	adds r1, r4, #0
	bl sub_805EF10
	adds r2, r0, #0
	cmp r2, #0
	bne _0805DA50
	movs r0, #0x10
	adds r1, r4, #0
	bl sub_805EF88
	adds r2, r0, #0
	cmp r2, #0
	bne _0805DA50
	movs r0, #0x11
	adds r1, r4, #0
	bl sub_805EF88
	adds r2, r0, #0
_0805DA50:
	movs r0, #0xbf
	lsls r0, r0, #4
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805DA64: .4byte 0x02032B80

	thumb_func_start sub_805DA68
sub_805DA68: @ 0x0805DA68
	push {r4, r5, lr}
	ldr r4, _0805DAB0 @ =0x02032B80
	adds r2, r4, #0
	movs r5, #0xbf
	lsls r5, r5, #4
	movs r3, #0
	movs r1, #0
_0805DA76:
	ldrb r0, [r2]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #1
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r5
	blt _0805DA76
	ldr r1, _0805DAB4 @ =0x00002CB4
	adds r0, r1, #0
	eors r3, r0
	ldr r1, _0805DAB8 @ =0x00000BF2
	adds r0, r4, r1
	strh r3, [r0]
	movs r3, #0xbf
	lsls r3, r3, #4
	adds r2, r4, r3
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805DAB0: .4byte 0x02032B80
_0805DAB4: .4byte 0x00002CB4
_0805DAB8: .4byte 0x00000BF2

	thumb_func_start sub_805DABC
sub_805DABC: @ 0x0805DABC
	ldr r1, _0805DADC @ =0x02032B80
	ldr r0, _0805DAE0 @ =0x00000564
	adds r2, r1, r0
	movs r0, #0
	strb r0, [r2]
	movs r3, #0xbf
	lsls r3, r3, #4
	adds r1, r1, r3
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
	bx lr
	.align 2, 0
_0805DADC: .4byte 0x02032B80
_0805DAE0: .4byte 0x00000564

	thumb_func_start sub_0805DAE4
sub_0805DAE4: @ 0x0805DAE4
	push {lr}
	adds r2, r0, #0
	adds r0, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r1, r2, #0
	bl sub_805C680
	cmp r0, #0
	bne _0805DAFC
	movs r0, #1
	b _0805DAFE
_0805DAFC:
	movs r0, #0
_0805DAFE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0805DB04
sub_0805DB04: @ 0x0805DB04
	push {r4, r5, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_805EF10
	cmp r0, #0
	bne _0805DB28
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_805EF88
_0805DB28:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805DB30
sub_805DB30: @ 0x0805DB30
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0xc
	ldr r2, _0805DB60 @ =0x02020400
	adds r5, r1, r2
	lsrs r0, r0, #8
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_805EF10
	cmp r0, #0
	bne _0805DB58
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_805EF88
_0805DB58:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0805DB60: .4byte 0x02020400

	thumb_func_start sub_805DB64
sub_805DB64: @ 0x0805DB64
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, _0805DB84 @ =0x02020400
	ldrh r0, [r0, #0xa]
	cmp r0, #0
	beq _0805DB82
	ldr r0, _0805DB88 @ =0x02032B80
	movs r1, #0xbf
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r1, #1
	lsls r1, r2
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
_0805DB82:
	bx lr
	.align 2, 0
_0805DB84: .4byte 0x02020400
_0805DB88: .4byte 0x02032B80

	thumb_func_start sub_0805DB8C
sub_0805DB8C: @ 0x0805DB8C
	push {r4, lr}
	sub sp, #0x20
	lsls r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #0x14
	adds r4, r0, r1
	lsrs r1, r4, #0x18
	mov r0, sp
	bl sub_805C680
	cmp r0, #0
	bne _0805DBB4
	mov r0, sp
	ldrh r0, [r0, #2]
	movs r1, #0
	cmp r0, #0
	bne _0805DBB0
	movs r1, #1
_0805DBB0:
	cmp r1, #0
	beq _0805DBBA
_0805DBB4:
	movs r0, #1
	rsbs r0, r0, #0
	b _0805DBBC
_0805DBBA:
	lsrs r0, r4, #0x18
_0805DBBC:
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, _0805DBE4 @ =0x02020400
	ldrh r0, [r0, #0xa]
	cmp r0, #0
	beq _0805DBDA
	ldr r0, _0805DBE8 @ =0x02032B80
	movs r1, #0xbf
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r1, #1
	lsls r1, r2
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
_0805DBDA:
	add sp, #0x20
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805DBE4: .4byte 0x02020400
_0805DBE8: .4byte 0x02032B80

	thumb_func_start sub_0805DBEC
sub_0805DBEC: @ 0x0805DBEC
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r5, #0xa
	ldr r6, _0805DC14 @ =0x02032B30
_0805DBF6:
	lsls r4, r5, #0x18
	lsrs r1, r4, #0x18
	adds r0, r6, #0
	bl sub_805C680
	cmp r0, #0
	bne _0805DC18
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _0805DC18
	ldrb r0, [r6, #9]
	cmp r0, r7
	bne _0805DC18
	asrs r0, r4, #0x18
	b _0805DC22
	.align 2, 0
_0805DC14: .4byte 0x02032B30
_0805DC18:
	adds r5, #1
	cmp r5, #0xb
	ble _0805DBF6
	movs r0, #1
	rsbs r0, r0, #0
_0805DC22:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805DC28
sub_805DC28: @ 0x0805DC28
	push {r4, lr}
	sub sp, #0x20
	lsls r0, r0, #0x18
	movs r1, #0xa0
	lsls r1, r1, #0x14
	adds r4, r0, r1
	lsrs r1, r4, #0x18
	mov r0, sp
	bl sub_805C680
	cmp r0, #0
	bne _0805DC50
	mov r0, sp
	ldrh r0, [r0, #2]
	movs r1, #0
	cmp r0, #0
	bne _0805DC4C
	movs r1, #1
_0805DC4C:
	cmp r1, #0
	beq _0805DC56
_0805DC50:
	movs r0, #1
	rsbs r0, r0, #0
	b _0805DC58
_0805DC56:
	asrs r0, r4, #0x18
_0805DC58:
	add sp, #0x20
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_805DC60
sub_805DC60: @ 0x0805DC60
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0805DC80 @ =0x02032B30
_0805DC66:
	lsls r4, r5, #0x18
	lsrs r1, r4, #0x18
	adds r0, r6, #0
	bl sub_805C680
	cmp r0, #0
	bne _0805DC7A
	ldrh r0, [r6, #2]
	cmp r0, #0
	bne _0805DC84
_0805DC7A:
	asrs r0, r4, #0x18
	b _0805DC8E
	.align 2, 0
_0805DC80: .4byte 0x02032B30
_0805DC84:
	adds r5, #1
	cmp r5, #9
	ble _0805DC66
	movs r0, #1
	rsbs r0, r0, #0
_0805DC8E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_805DC94
sub_805DC94: @ 0x0805DC94
	push {r4, r5, r6, lr}
	movs r5, #0xa
	ldr r6, _0805DCB4 @ =0x02032B30
_0805DC9A:
	lsls r4, r5, #0x18
	lsrs r1, r4, #0x18
	adds r0, r6, #0
	bl sub_805C680
	cmp r0, #0
	bne _0805DCAE
	ldrh r0, [r6, #2]
	cmp r0, #0
	bne _0805DCB8
_0805DCAE:
	asrs r0, r4, #0x18
	b _0805DCC2
	.align 2, 0
_0805DCB4: .4byte 0x02032B30
_0805DCB8:
	adds r5, #1
	cmp r5, #0xb
	ble _0805DC9A
	movs r0, #1
	rsbs r0, r0, #0
_0805DCC2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_805DCC8
sub_805DCC8: @ 0x0805DCC8
	movs r0, #0xc
	bx lr

	thumb_func_start sub_0805DCCC
sub_0805DCCC: @ 0x0805DCCC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0805DCEC @ =0x02032B80
	ldr r3, _0805DCF0 @ =0x02020400
	movs r1, #0
	strh r1, [r3, #2]
	movs r1, #0xbf
	lsls r1, r1, #4
	adds r2, r2, r1
	movs r1, #1
	lsls r1, r0
	ldrh r0, [r2]
	orrs r1, r0
	strh r1, [r2]
	bx lr
	.align 2, 0
_0805DCEC: .4byte 0x02032B80
_0805DCF0: .4byte 0x02020400

	thumb_func_start sub_805DCF4
sub_805DCF4: @ 0x0805DCF4
	ldr r0, _0805DD00 @ =0x02032B80
	ldr r1, _0805DD04 @ =0x00000AE8
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	bx lr
	.align 2, 0
_0805DD00: .4byte 0x02032B80
_0805DD04: .4byte 0x00000AE8

	thumb_func_start sub_805DD08
sub_805DD08: @ 0x0805DD08
	push {r4, lr}
	ldr r1, _0805DD34 @ =0x02032B80
	adds r2, r1, #0
	adds r2, #0x1c
	ldr r0, _0805DD38 @ =0x00000AD4
	adds r4, r1, r0
	movs r3, #0
	movs r0, #4
_0805DD18:
	strb r3, [r2]
	adds r2, #1
	subs r0, #1
	cmp r0, #0
	bge _0805DD18
	movs r0, #0
	strb r0, [r4]
	ldr r0, _0805DD3C @ =0x00000AE5
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805DD34: .4byte 0x02032B80
_0805DD38: .4byte 0x00000AD4
_0805DD3C: .4byte 0x00000AE5

	thumb_func_start sub_805DD40
sub_805DD40: @ 0x0805DD40
	ldr r0, _0805DD54 @ =0x02032B80
	adds r0, #0xc
	movs r2, #0
	movs r1, #0xf
_0805DD48:
	strb r2, [r0]
	adds r0, #1
	subs r1, #1
	cmp r1, #0
	bge _0805DD48
	bx lr
	.align 2, 0
_0805DD54: .4byte 0x02032B80

	thumb_func_start sub_0805DD58
sub_0805DD58: @ 0x0805DD58
	ldr r0, _0805DD70 @ =0x02032B80
	adds r2, r0, #0
	adds r2, #0xc
	movs r1, #0
_0805DD60:
	ldrb r0, [r2]
	adds r0, r0, r1
	strb r0, [r2]
	adds r2, #1
	adds r1, #1
	cmp r1, #0xf
	ble _0805DD60
	bx lr
	.align 2, 0
_0805DD70: .4byte 0x02032B80

	thumb_func_start sub_805DD74
sub_805DD74: @ 0x0805DD74
	ldr r0, _0805DD80 @ =0x02032B80
	ldr r1, _0805DD84 @ =0x00000AE6
	adds r0, r0, r1
	movs r1, #0x2f
	strb r1, [r0]
	bx lr
	.align 2, 0
_0805DD80: .4byte 0x02032B80
_0805DD84: .4byte 0x00000AE6

	thumb_func_start sub_805DD88
sub_805DD88: @ 0x0805DD88
	push {r4, r5, r6, lr}
	ldr r6, _0805DDB8 @ =0x02032B80
	movs r3, #0
	movs r5, #0xb2
	lsls r5, r5, #3
	movs r4, #0
_0805DD94:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r5
	adds r1, r6, r0
	movs r2, #0
	adds r0, r3, #1
_0805DDA2:
	strb r4, [r1]
	adds r1, #1
	adds r2, #1
	cmp r2, #0x13
	bls _0805DDA2
	adds r3, r0, #0
	cmp r3, #0x17
	ble _0805DD94
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805DDB8: .4byte 0x02032B80

	thumb_func_start sub_805DDBC
sub_805DDBC: @ 0x0805DDBC
	push {r4, r5, r6, lr}
	movs r2, #0
	ldr r6, _0805DDE4 @ =0x02020400
	movs r5, #0
	ldr r3, _0805DDE8 @ =0x02033770
	movs r4, #1
_0805DDC8:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	strh r5, [r6, #2]
	adds r1, r4, #0
	lsls r1, r0
	ldrh r0, [r3]
	orrs r1, r0
	strh r1, [r3]
	adds r2, #1
	cmp r2, #0xc
	ble _0805DDC8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805DDE4: .4byte 0x02020400
_0805DDE8: .4byte 0x02033770

	thumb_func_start sub_805DDEC
sub_805DDEC: @ 0x0805DDEC
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r4, _0805DE1C @ =0x02032B80
	lsls r3, r0, #1
	adds r3, r3, r0
	adds r1, r1, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r0, r1
	lsrs r3, r0, #0x10
	cmp r2, #0
	beq _0805DE24
	ldr r0, _0805DE20 @ =0x00000BEC
	adds r2, r4, r0
	ldrh r1, [r2]
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	b _0805DE2E
	.align 2, 0
_0805DE1C: .4byte 0x02032B80
_0805DE20: .4byte 0x00000BEC
_0805DE24:
	ldr r0, _0805DE34 @ =0x00000BEC
	adds r1, r4, r0
	ldrh r0, [r1]
	bics r0, r3
	strh r0, [r1]
_0805DE2E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805DE34: .4byte 0x00000BEC

	thumb_func_start sub_805DE38
sub_805DE38: @ 0x0805DE38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, _0805DE60 @ =0x02032B80
	lsls r2, r0, #1
	adds r2, r2, r0
	adds r1, r1, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r0, r1
	lsrs r0, r0, #0x10
	ldr r1, _0805DE64 @ =0x00000BEC
	adds r3, r3, r1
	ldrh r1, [r3]
	ands r0, r1
	bx lr
	.align 2, 0
_0805DE60: .4byte 0x02032B80
_0805DE64: .4byte 0x00000BEC

	thumb_func_start sub_805DE68
sub_805DE68: @ 0x0805DE68
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0805DE80 @ =0x02032B80
	movs r2, #0
	adds r1, #0x28
	adds r1, r0, r1
_0805DE74:
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0805DE84
	movs r0, #1
	b _0805DE8E
	.align 2, 0
_0805DE80: .4byte 0x02032B80
_0805DE84:
	adds r1, #3
	adds r2, #1
	cmp r2, #3
	ble _0805DE74
	movs r0, #0
_0805DE8E:
	bx lr

	thumb_func_start sub_805DE90
sub_805DE90: @ 0x0805DE90
	push {lr}
	sub sp, #0x20
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r0, sp
	bl sub_805C680
	cmp r0, #0
	bne _0805DEAE
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _0805DEB2
_0805DEAE:
	movs r0, #1
	rsbs r0, r0, #0
_0805DEB2:
	add sp, #0x20
	pop {r1}
	bx r1

	thumb_func_start sub_805DEB8
sub_805DEB8: @ 0x0805DEB8
	push {lr}
	sub sp, #0x20
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r0, sp
	bl sub_805C680
	cmp r0, #0
	bne _0805DED4
	mov r0, sp
	movs r1, #2
	ldrsh r0, [r0, r1]
	b _0805DED8
_0805DED4:
	movs r0, #1
	rsbs r0, r0, #0
_0805DED8:
	add sp, #0x20
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805DEE0
sub_805DEE0: @ 0x0805DEE0
	push {r4, r5, lr}
	sub sp, #0x20
	adds r2, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r5, #0
	mov r0, sp
	adds r1, r2, #0
	bl sub_805C680
	cmp r0, #0
	bne _0805DF0E
	add r1, sp, #4
	movs r2, #4
_0805DEFE:
	ldrb r0, [r1]
	strb r0, [r4]
	adds r1, #1
	adds r4, #1
	subs r2, #1
	cmp r2, #0
	bge _0805DEFE
	movs r5, #1
_0805DF0E:
	adds r0, r5, #0
	add sp, #0x20
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_805DF18
sub_805DF18: @ 0x0805DF18
	push {lr}
	sub sp, #0x20
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r0, sp
	bl sub_805C680
	cmp r0, #0
	bne _0805DF36
	mov r0, sp
	ldrb r0, [r0, #9]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _0805DF3A
_0805DF36:
	movs r0, #1
	rsbs r0, r0, #0
_0805DF3A:
	add sp, #0x20
	pop {r1}
	bx r1

	thumb_func_start sub_805DF40
sub_805DF40: @ 0x0805DF40
	push {r4, lr}
	adds r1, r0, #0
	ldr r0, _0805DF6C @ =0x02032B80
	adds r3, r0, #0
	adds r3, #0xc
	movs r4, #0
	movs r2, #0xf
_0805DF4E:
	ldrb r0, [r3]
	strb r0, [r1]
	lsls r0, r0, #0x18
	adds r3, #1
	adds r1, #1
	cmp r0, #0
	beq _0805DF5E
	movs r4, #1
_0805DF5E:
	subs r2, #1
	cmp r2, #0
	bge _0805DF4E
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805DF6C: .4byte 0x02032B80

	thumb_func_start sub_805DF70
sub_805DF70: @ 0x0805DF70
	adds r1, r0, #0
	ldr r0, _0805DF8C @ =0x02032B80
	adds r3, r0, #0
	adds r3, #0xc
	movs r2, #0xf
_0805DF7A:
	ldrb r0, [r1]
	strb r0, [r3]
	adds r1, #1
	adds r3, #1
	subs r2, #1
	cmp r2, #0
	bge _0805DF7A
	bx lr
	.align 2, 0
_0805DF8C: .4byte 0x02032B80

	thumb_func_start sub_805DF90
sub_805DF90: @ 0x0805DF90
	push {r4, lr}
	adds r1, r0, #0
	ldr r0, _0805DFBC @ =0x02032B80
	adds r3, r0, #0
	adds r3, #0x1c
	movs r4, #0
	movs r2, #4
_0805DF9E:
	ldrb r0, [r3]
	strb r0, [r1]
	lsls r0, r0, #0x18
	adds r3, #1
	adds r1, #1
	cmp r0, #0
	beq _0805DFAE
	movs r4, #1
_0805DFAE:
	subs r2, #1
	cmp r2, #0
	bge _0805DF9E
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805DFBC: .4byte 0x02032B80

	thumb_func_start sub_0805DFC0
sub_0805DFC0: @ 0x0805DFC0
	adds r1, r0, #0
	ldr r0, _0805DFDC @ =0x02032B80
	adds r3, r0, #0
	adds r3, #0x1c
	movs r2, #4
_0805DFCA:
	ldrb r0, [r1]
	strb r0, [r3]
	adds r1, #1
	adds r3, #1
	subs r2, #1
	cmp r2, #0
	bge _0805DFCA
	bx lr
	.align 2, 0
_0805DFDC: .4byte 0x02032B80

	thumb_func_start sub_0805DFE0
sub_0805DFE0: @ 0x0805DFE0
	adds r2, r0, #0
	ldr r0, _0805DFF4 @ =0x02032B80
	ldr r3, _0805DFF8 @ =0x00000AD4
	adds r1, r0, r3
	ldrb r0, [r1]
	cmp r0, #0
	bne _0805DFFC
	movs r0, #0
	b _0805E00E
	.align 2, 0
_0805DFF4: .4byte 0x02032B80
_0805DFF8: .4byte 0x00000AD4
_0805DFFC:
	movs r3, #0x10
_0805DFFE:
	ldrb r0, [r1]
	strb r0, [r2]
	adds r1, #1
	adds r2, #1
	subs r3, #1
	cmp r3, #0
	bge _0805DFFE
	movs r0, #1
_0805E00E:
	bx lr

	thumb_func_start sub_0805E010
sub_0805E010: @ 0x0805E010
	adds r1, r0, #0
	ldr r0, _0805E02C @ =0x02032B80
	ldr r2, _0805E030 @ =0x00000AD4
	adds r3, r0, r2
	movs r2, #0x10
_0805E01A:
	ldrb r0, [r1]
	strb r0, [r3]
	adds r1, #1
	adds r3, #1
	subs r2, #1
	cmp r2, #0
	bge _0805E01A
	bx lr
	.align 2, 0
_0805E02C: .4byte 0x02032B80
_0805E030: .4byte 0x00000AD4

	thumb_func_start sub_0805E034
sub_0805E034: @ 0x0805E034
	push {r4, lr}
	adds r1, r0, #0
	ldr r0, _0805E060 @ =0x02032B80
	adds r3, r0, #0
	adds r3, #0x21
	movs r4, #0
	movs r2, #4
_0805E042:
	ldrb r0, [r3]
	strb r0, [r1]
	lsls r0, r0, #0x18
	adds r3, #1
	adds r1, #1
	cmp r0, #0
	beq _0805E052
	movs r4, #1
_0805E052:
	subs r2, #1
	cmp r2, #0
	bge _0805E042
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805E060: .4byte 0x02032B80

	thumb_func_start sub_0805E064
sub_0805E064: @ 0x0805E064
	adds r1, r0, #0
	ldr r0, _0805E080 @ =0x02032B80
	adds r3, r0, #0
	adds r3, #0x21
	movs r2, #4
_0805E06E:
	ldrb r0, [r1]
	strb r0, [r3]
	adds r1, #1
	adds r3, #1
	subs r2, #1
	cmp r2, #0
	bge _0805E06E
	bx lr
	.align 2, 0
_0805E080: .4byte 0x02032B80

	thumb_func_start sub_0805E084
sub_0805E084: @ 0x0805E084
	push {r4, lr}
	ldr r1, _0805E0B0 @ =0x02032B80
	ldr r2, _0805E0B4 @ =0x00000AF5
	adds r1, r1, r2
	adds r2, r0, #0
	movs r4, #0
	movs r3, #0x7f
_0805E092:
	ldrb r0, [r1]
	strb r0, [r2]
	lsls r0, r0, #0x18
	adds r1, #1
	adds r2, #1
	cmp r0, #0
	beq _0805E0A2
	movs r4, #1
_0805E0A2:
	subs r3, #1
	cmp r3, #0
	bge _0805E092
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805E0B0: .4byte 0x02032B80
_0805E0B4: .4byte 0x00000AF5

	thumb_func_start sub_0805E0B8
sub_0805E0B8: @ 0x0805E0B8
	ldr r1, _0805E0D4 @ =0x02032B80
	adds r2, r0, #0
	ldr r0, _0805E0D8 @ =0x00000AF5
	adds r1, r1, r0
	movs r3, #0x7f
_0805E0C2:
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r1, #1
	subs r3, #1
	cmp r3, #0
	bge _0805E0C2
	bx lr
	.align 2, 0
_0805E0D4: .4byte 0x02032B80
_0805E0D8: .4byte 0x00000AF5

	thumb_func_start sub_0805E0DC
sub_0805E0DC: @ 0x0805E0DC
	push {r4, lr}
	ldr r1, _0805E108 @ =0x02032B80
	ldr r2, _0805E10C @ =0x00000B75
	adds r1, r1, r2
	adds r2, r0, #0
	movs r4, #0
	movs r3, #7
_0805E0EA:
	ldrb r0, [r1]
	strb r0, [r2]
	lsls r0, r0, #0x18
	adds r1, #1
	adds r2, #1
	cmp r0, #0
	beq _0805E0FA
	movs r4, #1
_0805E0FA:
	subs r3, #1
	cmp r3, #0
	bge _0805E0EA
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805E108: .4byte 0x02032B80
_0805E10C: .4byte 0x00000B75

	thumb_func_start sub_0805E110
sub_0805E110: @ 0x0805E110
	ldr r1, _0805E12C @ =0x02032B80
	adds r2, r0, #0
	ldr r0, _0805E130 @ =0x00000B75
	adds r1, r1, r0
	movs r3, #7
_0805E11A:
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r1, #1
	subs r3, #1
	cmp r3, #0
	bge _0805E11A
	bx lr
	.align 2, 0
_0805E12C: .4byte 0x02032B80
_0805E130: .4byte 0x00000B75

	thumb_func_start sub_0805E134
sub_0805E134: @ 0x0805E134
	ldr r1, _0805E14C @ =0x02032B80
	ldr r2, _0805E150 @ =0x00000AE6
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r0]
	movs r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #0x2e
	bhi _0805E14A
	movs r0, #1
_0805E14A:
	bx lr
	.align 2, 0
_0805E14C: .4byte 0x02032B80
_0805E150: .4byte 0x00000AE6

	thumb_func_start sub_0805E154
sub_0805E154: @ 0x0805E154
	ldr r1, _0805E160 @ =0x02032B80
	ldr r2, _0805E164 @ =0x00000AE6
	adds r1, r1, r2
	ldrb r0, [r0]
	strb r0, [r1]
	bx lr
	.align 2, 0
_0805E160: .4byte 0x02032B80
_0805E164: .4byte 0x00000AE6

	thumb_func_start sub_0805E168
sub_0805E168: @ 0x0805E168
	push {r4, lr}
	ldr r1, _0805E194 @ =0x02032B80
	ldr r2, _0805E198 @ =0x00000B8D
	adds r1, r1, r2
	adds r2, r0, #0
	movs r4, #0
	movs r3, #0xb
_0805E176:
	ldrb r0, [r1]
	strb r0, [r2]
	lsls r0, r0, #0x18
	adds r1, #1
	adds r2, #1
	cmp r0, #0
	beq _0805E186
	movs r4, #1
_0805E186:
	subs r3, #1
	cmp r3, #0
	bge _0805E176
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805E194: .4byte 0x02032B80
_0805E198: .4byte 0x00000B8D

	thumb_func_start sub_0805E19C
sub_0805E19C: @ 0x0805E19C
	ldr r1, _0805E1B8 @ =0x02032B80
	adds r2, r0, #0
	ldr r0, _0805E1BC @ =0x00000B8D
	adds r1, r1, r0
	movs r3, #0xb
_0805E1A6:
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r1, #1
	subs r3, #1
	cmp r3, #0
	bge _0805E1A6
	bx lr
	.align 2, 0
_0805E1B8: .4byte 0x02032B80
_0805E1BC: .4byte 0x00000B8D

	thumb_func_start sub_0805E1C0
sub_0805E1C0: @ 0x0805E1C0
	push {r4, lr}
	ldr r1, _0805E1EC @ =0x02032B80
	ldr r2, _0805E1F0 @ =0x00000B7D
	adds r1, r1, r2
	adds r2, r0, #0
	movs r4, #0
	movs r3, #0xf
_0805E1CE:
	ldrb r0, [r1]
	strb r0, [r2]
	lsls r0, r0, #0x18
	adds r1, #1
	adds r2, #1
	cmp r0, #0
	beq _0805E1DE
	movs r4, #1
_0805E1DE:
	subs r3, #1
	cmp r3, #0
	bge _0805E1CE
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805E1EC: .4byte 0x02032B80
_0805E1F0: .4byte 0x00000B7D

	thumb_func_start sub_0805E1F4
sub_0805E1F4: @ 0x0805E1F4
	ldr r1, _0805E210 @ =0x02032B80
	adds r2, r0, #0
	ldr r0, _0805E214 @ =0x00000B7D
	adds r1, r1, r0
	movs r3, #0xf
_0805E1FE:
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r1, #1
	subs r3, #1
	cmp r3, #0
	bge _0805E1FE
	bx lr
	.align 2, 0
_0805E210: .4byte 0x02032B80
_0805E214: .4byte 0x00000B7D

	thumb_func_start sub_0805E218
sub_0805E218: @ 0x0805E218
	push {r4, lr}
	ldr r3, _0805E250 @ =0x02032B80
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #3
	movs r1, #0xba
	lsls r1, r1, #4
	adds r2, r2, r1
	adds r2, r2, r3
	adds r1, r0, #0
	movs r4, #0
	movs r3, #4
_0805E230:
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	adds r2, #1
	adds r1, #1
	cmp r0, #0
	beq _0805E240
	movs r4, #1
_0805E240:
	subs r3, #1
	cmp r3, #0
	bge _0805E230
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805E250: .4byte 0x02032B80

	thumb_func_start sub_0805E254
sub_0805E254: @ 0x0805E254
	ldr r3, _0805E278 @ =0x02032B80
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #3
	movs r1, #0xba
	lsls r1, r1, #4
	adds r2, r2, r1
	adds r1, r0, #0
	adds r2, r2, r3
	movs r3, #4
_0805E268:
	ldrb r0, [r1]
	strb r0, [r2]
	adds r1, #1
	adds r2, #1
	subs r3, #1
	cmp r3, #0
	bge _0805E268
	bx lr
	.align 2, 0
_0805E278: .4byte 0x02032B80

	thumb_func_start sub_0805E27C
sub_0805E27C: @ 0x0805E27C
	push {r4, lr}
	ldr r3, _0805E2B0 @ =0x02032B80
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #3
	adds r2, r2, r3
	ldr r1, _0805E2B4 @ =0x00000BA8
	adds r2, r2, r1
	adds r1, r0, #0
	movs r4, #0
	movs r3, #0xf
_0805E292:
	ldrb r0, [r2]
	strb r0, [r1]
	lsls r0, r0, #0x18
	adds r2, #1
	adds r1, #1
	cmp r0, #0
	beq _0805E2A2
	movs r4, #1
_0805E2A2:
	subs r3, #1
	cmp r3, #0
	bge _0805E292
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805E2B0: .4byte 0x02032B80
_0805E2B4: .4byte 0x00000BA8

	thumb_func_start sub_0805E2B8
sub_0805E2B8: @ 0x0805E2B8
	ldr r3, _0805E2DC @ =0x02032B80
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #3
	adds r2, r2, r3
	adds r1, r0, #0
	ldr r0, _0805E2E0 @ =0x00000BA8
	adds r2, r2, r0
	movs r3, #0xf
_0805E2CA:
	ldrb r0, [r1]
	strb r0, [r2]
	adds r1, #1
	adds r2, #1
	subs r3, #1
	cmp r3, #0
	bge _0805E2CA
	bx lr
	.align 2, 0
_0805E2DC: .4byte 0x02032B80
_0805E2E0: .4byte 0x00000BA8

	thumb_func_start sub_0805E2E4
sub_0805E2E4: @ 0x0805E2E4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	movs r0, #0xbf
	lsls r0, r0, #4
	adds r4, r5, r0
	ldrh r1, [r4]
	movs r7, #0x80
	lsls r7, r7, #8
	adds r0, r7, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _0805E324 @ =0x030023DC
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805E314
	ldr r3, _0805E328 @ =0x00000BF4
	adds r0, r2, #0
	movs r1, #0
	adds r2, r5, #0
	bl ReadFlash
_0805E314:
	movs r0, #7
	strh r0, [r5, #8]
	cmp r6, #0
	beq _0805E32C
	ldrh r1, [r4]
	adds r0, r7, #0
	orrs r0, r1
	b _0805E332
	.align 2, 0
_0805E324: .4byte 0x030023DC
_0805E328: .4byte 0x00000BF4
_0805E32C:
	ldrh r1, [r4]
	ldr r0, _0805E33C @ =0x00007FFF
	ands r0, r1
_0805E332:
	strh r0, [r4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805E33C: .4byte 0x00007FFF

	thumb_func_start sub_0805E340
sub_0805E340: @ 0x0805E340
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _0805E360 @ =0x030023DC
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805E35C
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r1, #0
	movs r1, #0
	bl ReadFlash
_0805E35C:
	pop {r0}
	bx r0
	.align 2, 0
_0805E360: .4byte 0x030023DC

	thumb_func_start sub_805E364
sub_805E364: @ 0x0805E364
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _0805E384 @ =0x030023DC
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805E37E
	ldr r3, _0805E388 @ =0x0000B408
	adds r0, r1, #0
	movs r1, #0
	bl ReadFlash
_0805E37E:
	pop {r0}
	bx r0
	.align 2, 0
_0805E384: .4byte 0x030023DC
_0805E388: .4byte 0x0000B408

	thumb_func_start sub_805E38C
sub_805E38C: @ 0x0805E38C
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _0805E3B8 @ =0x030023DC
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805E3C0
	ldr r0, _0805E3BC @ =0x03006A84
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	adds r0, r4, #0
	adds r1, r5, #0
	bl VerifyFlashSector
	cmp r0, #0
	bne _0805E3C0
	movs r0, #1
	b _0805E3C2
	.align 2, 0
_0805E3B8: .4byte 0x030023DC
_0805E3BC: .4byte 0x03006A84
_0805E3C0:
	movs r0, #0
_0805E3C2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0805E3C8
sub_0805E3C8: @ 0x0805E3C8
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _0805E3F4 @ =0x030023DC
	ldrb r0, [r0]
	cmp r0, #1
	bne _0805E3FC
	ldr r0, _0805E3F8 @ =0x03006A84
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	adds r0, r4, #0
	adds r1, r5, #0
	bl VerifyFlashSector
	cmp r0, #0
	bne _0805E3FC
	movs r0, #1
	b _0805E3FE
	.align 2, 0
_0805E3F4: .4byte 0x030023DC
_0805E3F8: .4byte 0x03006A84
_0805E3FC:
	movs r0, #0
_0805E3FE:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0805E404
sub_0805E404: @ 0x0805E404
	push {lr}
	sub sp, #0x20
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r0, sp
	bl sub_805C680
	cmp r0, #0
	bne _0805E424
	mov r0, sp
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0805E424
	movs r0, #0
	b _0805E426
_0805E424:
	movs r0, #1
_0805E426:
	add sp, #0x20
	pop {r1}
	bx r1

	thumb_func_start sub_805E42C
sub_805E42C: @ 0x0805E42C
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r4, _0805E46C @ =0x02032B80
	mov r0, sp
	bl sub_805DF40
	add r5, sp, #0x14
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #4
	bl CpuSet
	add r0, sp, #0x10
	movs r1, #0
	strh r1, [r0]
	ldr r2, _0805E470 @ =0x010005FA
	adds r1, r4, #0
	bl CpuSet
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #4
	bl CpuSet
	mov r0, sp
	bl sub_805DF70
	add sp, #0x1c
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805E46C: .4byte 0x02032B80
_0805E470: .4byte 0x010005FA

	thumb_func_start sub_805E474
sub_805E474: @ 0x0805E474
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	ldr r5, _0805E4D0 @ =0x02032B80
	ldr r0, _0805E4D4 @ =0x00000AF5
	adds r1, r5, r0
	adds r0, #0x80
	adds r6, r5, r0
	adds r0, #8
	adds r0, r0, r5
	mov r8, r0
	ldr r0, _0805E4D8 @ =0x00000B8D
	adds r5, r5, r0
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	ldr r2, _0805E4DC @ =0x01000040
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r2, _0805E4E0 @ =0x01000004
	adds r1, r6, #0
	bl CpuSet
	add r0, sp, #4
	strh r4, [r0]
	ldr r2, _0805E4E4 @ =0x01000008
	mov r1, r8
	bl CpuSet
	mov r0, sp
	adds r0, #6
	strh r4, [r0]
	ldr r2, _0805E4E8 @ =0x01000006
	adds r1, r5, #0
	bl CpuSet
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805E4D0: .4byte 0x02032B80
_0805E4D4: .4byte 0x00000AF5
_0805E4D8: .4byte 0x00000B8D
_0805E4DC: .4byte 0x01000040
_0805E4E0: .4byte 0x01000004
_0805E4E4: .4byte 0x01000008
_0805E4E8: .4byte 0x01000006

	thumb_func_start sub_0805E4EC
sub_0805E4EC: @ 0x0805E4EC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, _0805E540 @ =0x02032B80
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	movs r1, #0xba
	lsls r1, r1, #4
	adds r0, r0, r1
	adds r1, r0, r6
	adds r3, r1, #0
	adds r3, #8
	movs r4, #0
	movs r2, #4
_0805E508:
	ldrb r0, [r1]
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r1, #1
	subs r2, #1
	cmp r2, #0
	bge _0805E508
	lsls r1, r5, #1
	movs r2, #0xf
_0805E51C:
	ldrb r0, [r3]
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r3, #1
	subs r2, #1
	cmp r2, #0
	bge _0805E51C
	adds r0, r1, r5
	lsls r0, r0, #3
	adds r0, r6, r0
	ldr r1, _0805E544 @ =0x00000BA6
	adds r0, r0, r1
	strh r4, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805E540: .4byte 0x02032B80
_0805E544: .4byte 0x00000BA6

	thumb_func_start sub_0805E548
sub_0805E548: @ 0x0805E548
	push {r4, lr}
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #3
	movs r1, #0xba
	lsls r1, r1, #4
	adds r2, r2, r1
	adds r1, r0, r2
	adds r4, r1, #0
	adds r4, #8
	movs r3, #0
	movs r2, #4
_0805E560:
	ldrb r0, [r1]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r1, #1
	subs r2, #1
	cmp r2, #0
	bge _0805E560
	movs r2, #0xf
_0805E572:
	ldrb r0, [r4]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r4, #1
	subs r2, #1
	cmp r2, #0
	bge _0805E572
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805E58C
sub_805E58C: @ 0x0805E58C
	push {r4, r5, lr}
	ldr r4, _0805E5D0 @ =0x02033780
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_805E364
	adds r3, r4, #0
	ldr r5, _0805E5D4 @ =0x0000B404
	movs r2, #0
	movs r1, #0
_0805E5A0:
	ldrb r0, [r3]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r3, #1
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r5
	blt _0805E5A0
	ldr r1, _0805E5D8 @ =0x00002CB4
	adds r0, r1, #0
	eors r2, r0
	ldr r1, _0805E5DC @ =0x0000B406
	adds r0, r4, r1
	ldrh r1, [r0]
	eors r1, r2
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt _0805E5E0
	movs r0, #1
	b _0805E5E2
	.align 2, 0
_0805E5D0: .4byte 0x02033780
_0805E5D4: .4byte 0x0000B404
_0805E5D8: .4byte 0x00002CB4
_0805E5DC: .4byte 0x0000B406
_0805E5E0:
	movs r0, #0
_0805E5E2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_805E5E8
sub_805E5E8: @ 0x0805E5E8
	ldr r1, _0805E5FC @ =0x02033780
	movs r0, #0
	ldr r3, _0805E600 @ =0x0000B407
	movs r2, #0
_0805E5F0:
	strb r2, [r1]
	adds r1, #1
	adds r0, #1
	cmp r0, r3
	bls _0805E5F0
	bx lr
	.align 2, 0
_0805E5FC: .4byte 0x02033780
_0805E600: .4byte 0x0000B407

	thumb_func_start sub_0805E604
sub_0805E604: @ 0x0805E604
	adds r2, r0, #6
	movs r3, #4
_0805E608:
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r1, #1
	subs r3, #1
	cmp r3, #0
	bge _0805E608
	bx lr

	thumb_func_start sub_0805E618
sub_0805E618: @ 0x0805E618
	adds r2, r0, #6
	movs r3, #4
_0805E61C:
	ldrb r0, [r1]
	strb r0, [r2]
	adds r1, #1
	adds r2, #1
	subs r3, #1
	cmp r3, #0
	bge _0805E61C
	bx lr

	thumb_func_start sub_0805E62C
sub_0805E62C: @ 0x0805E62C
	adds r2, r0, #0
	adds r2, #0xf
	movs r3, #0xf
_0805E632:
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r1, #1
	subs r3, #1
	cmp r3, #0
	bge _0805E632
	bx lr
	.align 2, 0

	thumb_func_start sub_0805E644
sub_0805E644: @ 0x0805E644
	adds r2, r0, #0
	adds r2, #0xf
	movs r3, #0xf
_0805E64A:
	ldrb r0, [r1]
	strb r0, [r2]
	adds r1, #1
	adds r2, #1
	subs r3, #1
	cmp r3, #0
	bge _0805E64A
	bx lr
	.align 2, 0

	thumb_func_start sub_0805E65C
sub_0805E65C: @ 0x0805E65C
	push {r4, r5, lr}
	ldr r4, _0805E698 @ =0x02033780
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_805E364
	adds r3, r4, #0
	ldr r5, _0805E69C @ =0x0000B404
	movs r2, #0
	movs r1, #0
_0805E670:
	ldrb r0, [r3]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r3, #1
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r5
	blt _0805E670
	ldr r1, _0805E6A0 @ =0x00002CB4
	adds r0, r1, #0
	eors r2, r0
	ldr r1, _0805E6A4 @ =0x0000B406
	adds r0, r4, r1
	ldrh r0, [r0]
	cmp r0, r2
	beq _0805E6A8
	movs r0, #1
	b _0805E6AA
	.align 2, 0
_0805E698: .4byte 0x02033780
_0805E69C: .4byte 0x0000B404
_0805E6A0: .4byte 0x00002CB4
_0805E6A4: .4byte 0x0000B406
_0805E6A8:
	movs r0, #0
_0805E6AA:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0805E6B0
sub_0805E6B0: @ 0x0805E6B0
	push {r4, r5, lr}
	ldr r4, _0805E6EC @ =0x02033780
	adds r3, r4, #0
	ldr r5, _0805E6F0 @ =0x0000B404
	movs r1, #0
	movs r2, #0
_0805E6BC:
	ldrb r0, [r3]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r3, #1
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r5
	blt _0805E6BC
	ldr r2, _0805E6F4 @ =0x00002CB4
	adds r0, r2, #0
	eors r1, r0
	ldr r2, _0805E6F8 @ =0x0000B406
	adds r0, r4, r2
	strh r1, [r0]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_805E38C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0805E6EC: .4byte 0x02033780
_0805E6F0: .4byte 0x0000B404
_0805E6F4: .4byte 0x00002CB4
_0805E6F8: .4byte 0x0000B406

	thumb_func_start sub_805E6FC
sub_805E6FC: @ 0x0805E6FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r0, #2
	mov sl, r0
	bl m4aSoundVSyncOff
	ldr r0, _0805E7C8 @ =0x04000200
	ldrh r0, [r0]
	str r0, [sp]
	movs r1, #0x80
	lsls r1, r1, #9
	movs r0, #0
	bl irq_updateMask
	ldr r1, _0805E7CC @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r0, _0805E7D0 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _0805E7D4 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0805E74C
_0805E744:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0805E744
_0805E74C:
	ldr r1, _0805E7D8 @ =0x040000BC
	ldrh r2, [r1, #0xa]
	ldr r0, _0805E7D0 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _0805E7D4 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0805E772
_0805E76A:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0805E76A
_0805E772:
	ldr r1, _0805E7DC @ =0x040000C8
	ldrh r2, [r1, #0xa]
	ldr r0, _0805E7D0 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _0805E7D4 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0805E798
_0805E790:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0805E790
_0805E798:
	ldr r1, _0805E7E0 @ =0x040000D4
	ldrh r2, [r1, #0xa]
	ldr r0, _0805E7D0 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _0805E7D4 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0805E7BE
_0805E7B6:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0805E7B6
_0805E7BE:
	ldr r1, _0805E7E4 @ =0x04000204
	mov sb, r1
	ldr r4, _0805E7E8 @ =0x09FE2FFE
	mov r8, r4
	b _0805E7FA
	.align 2, 0
_0805E7C8: .4byte 0x04000200
_0805E7CC: .4byte 0x040000B0
_0805E7D0: .4byte 0x0000C5FF
_0805E7D4: .4byte 0x00007FFF
_0805E7D8: .4byte 0x040000BC
_0805E7DC: .4byte 0x040000C8
_0805E7E0: .4byte 0x040000D4
_0805E7E4: .4byte 0x04000204
_0805E7E8: .4byte 0x09FE2FFE
_0805E7EC:
	mov r0, sl
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #0xff
	beq _0805E88A
_0805E7FA:
	ldr r0, _0805E80C @ =0x02032B50
	ldrb r0, [r0]
	cmp r0, #1
	beq _0805E810
	cmp r0, #2
	beq _0805E830
_0805E806:
	movs r4, #0
	b _0805E7EC
	.align 2, 0
_0805E80C: .4byte 0x02032B50
_0805E810:
	ldr r0, _0805E82C @ =0x03006A84
	ldr r2, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	bl _call_via_r2
	adds r0, r7, #0
	adds r1, r6, #0
	bl VerifyFlashSector
	movs r4, #1
	cmp r0, #0
	beq _0805E88A
	b _0805E806
	.align 2, 0
_0805E82C: .4byte 0x03006A84
_0805E830:
	adds r3, r6, #0
	lsls r0, r7, #0xc
	movs r1, #0x86
	lsls r1, r1, #0x14
	adds r2, r0, r1
	movs r4, #0x80
	lsls r4, r4, #3
	adds r1, r4, #0
	mov r4, sb
	strh r1, [r4]
	movs r1, #0x20
	mov r4, r8
	strh r1, [r4]
	adds r4, r0, #0
	movs r1, #0x80
	lsls r1, r1, #4
_0805E850:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _0805E850
	mov r0, r8
	strh r1, [r0]
	ldr r1, _0805E8AC @ =0x00004494
	adds r0, r1, #0
	mov r1, sb
	strh r0, [r1]
	adds r3, r6, #0
	movs r0, #0x86
	lsls r0, r0, #0x14
	adds r2, r4, r0
	movs r4, #0
	ldr r5, _0805E8B0 @ =0x000007FF
_0805E876:
	ldrh r1, [r2]
	ldrh r0, [r3]
	adds r3, #2
	adds r2, #2
	cmp r1, r0
	bne _0805E806
	adds r4, #1
	cmp r4, r5
	ble _0805E876
	movs r4, #1
_0805E88A:
	bl main_waitVBlankFlag
	movs r0, #2
	ldr r1, [sp]
	bl irq_updateMask
	bl m4aSoundVSyncOn
	adds r0, r4, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805E8AC: .4byte 0x00004494
_0805E8B0: .4byte 0x000007FF

	thumb_func_start sub_805E8B4
sub_805E8B4: @ 0x0805E8B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	movs r0, #0
	mov r8, r0
	movs r4, #0
	ldr r7, _0805E8E8 @ =0x02029400
	mov ip, r7
	ldr r1, _0805E8EC @ =0x07FF0000
	mov sl, r1
_0805E8D2:
	lsls r0, r4, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _0805E8F0 @ =0x02032B50
	ldrb r0, [r0]
	cmp r0, #1
	beq _0805E8F4
	cmp r0, #2
	beq _0805E906
	adds r6, r4, #1
	b _0805E926
	.align 2, 0
_0805E8E8: .4byte 0x02029400
_0805E8EC: .4byte 0x07FF0000
_0805E8F0: .4byte 0x02032B50
_0805E8F4:
	adds r0, r1, #0
	movs r1, #0
	mov r2, ip
	movs r3, #0x80
	lsls r3, r3, #5
	bl ReadFlash
	adds r6, r4, #1
	b _0805E926
_0805E906:
	adds r3, r7, #0
	lsls r0, r1, #0xc
	movs r2, #0x86
	lsls r2, r2, #0x14
	adds r1, r0, r2
	movs r2, #0
	movs r5, #0x80
	lsls r5, r5, #4
	adds r6, r4, #1
_0805E918:
	ldrh r0, [r1]
	strh r0, [r3]
	adds r1, #2
	adds r3, #2
	adds r2, #1
	cmp r2, r5
	blo _0805E918
_0805E926:
	ldrh r5, [r7]
	adds r1, r7, #2
	movs r2, #0
	movs r3, #0
	subs r0, r1, #2
	mov ip, r0
	mov r0, sl
	lsrs r4, r0, #0x10
_0805E936:
	ldrh r0, [r1]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, #2
	adds r3, #1
	cmp r3, r4
	blo _0805E936
	ldr r1, _0805E97C @ =0x00002CB4
	adds r0, r1, #0
	eors r2, r0
	movs r0, #0
	cmp r5, r2
	bne _0805E954
	movs r0, #1
_0805E954:
	cmp r0, #0
	beq _0805E966
	ldrh r1, [r7, #4]
	ldrh r0, [r7, #6]
	cmp r0, sb
	bne _0805E966
	cmp r1, r8
	bls _0805E966
	mov r8, r1
_0805E966:
	adds r4, r6, #0
	cmp r4, #0xf
	ble _0805E8D2
	mov r0, r8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805E97C: .4byte 0x00002CB4

	thumb_func_start sub_805E980
sub_805E980: @ 0x0805E980
	push {r4, lr}
	lsls r1, r1, #0x10
	ldr r2, _0805E9B4 @ =0xFFFE0000
	adds r1, r1, r2
	adds r2, r0, #2
	movs r3, #0
	movs r4, #0
	lsrs r1, r1, #0x11
	cmp r3, r1
	bhs _0805E9A4
_0805E994:
	ldrh r0, [r2]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #2
	adds r4, #1
	cmp r4, r1
	blo _0805E994
_0805E9A4:
	ldr r1, _0805E9B8 @ =0x00002CB4
	adds r0, r1, #0
	eors r3, r0
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805E9B4: .4byte 0xFFFE0000
_0805E9B8: .4byte 0x00002CB4

	thumb_func_start sub_805E9BC
sub_805E9BC: @ 0x0805E9BC
	push {r4, r5, lr}
	lsls r1, r1, #0x10
	ldrh r5, [r0]
	ldr r2, _0805E9F0 @ =0xFFFE0000
	adds r1, r1, r2
	adds r2, r0, #2
	movs r3, #0
	movs r4, #0
	lsrs r1, r1, #0x11
	cmp r3, r1
	bhs _0805E9E2
_0805E9D2:
	ldrh r0, [r2]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #2
	adds r4, #1
	cmp r4, r1
	blo _0805E9D2
_0805E9E2:
	ldr r1, _0805E9F4 @ =0x00002CB4
	adds r0, r1, #0
	eors r3, r0
	cmp r5, r3
	beq _0805E9F8
	movs r0, #0
	b _0805E9FA
	.align 2, 0
_0805E9F0: .4byte 0xFFFE0000
_0805E9F4: .4byte 0x00002CB4
_0805E9F8:
	movs r0, #1
_0805E9FA:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_805EA00
sub_805EA00: @ 0x0805EA00
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r4, r3, #0x10
	lsrs r3, r4, #0x10
	ldr r0, _0805EA20 @ =0x02032B50
	ldrb r0, [r0]
	cmp r0, #1
	beq _0805EA24
	cmp r0, #2
	beq _0805EA30
	b _0805EA54
	.align 2, 0
_0805EA20: .4byte 0x02032B50
_0805EA24:
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r5, #0
	bl ReadFlash
	b _0805EA54
_0805EA30:
	adds r3, r5, #0
	lsls r1, r1, #0xc
	movs r5, #0x86
	lsls r5, r5, #0x14
	adds r0, r2, r5
	adds r1, r1, r0
	movs r2, #0
	lsrs r0, r4, #0x11
	cmp r2, r0
	bhs _0805EA54
	adds r4, r0, #0
_0805EA46:
	ldrh r0, [r1]
	strh r0, [r3]
	adds r1, #2
	adds r3, #2
	adds r2, #1
	cmp r2, r4
	blo _0805EA46
_0805EA54:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805EA5C
sub_805EA5C: @ 0x0805EA5C
	push {r4, r5, r6, lr}
	ldr r0, _0805EAFC @ =0x02032B50
	mov ip, r0
	movs r1, #0
	mov r3, ip
	adds r3, #0xc
	movs r2, #1
	rsbs r2, r2, #0
_0805EA6C:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	adds r0, r3, r0
	strb r2, [r0]
	adds r1, #1
	cmp r1, #1
	ble _0805EA6C
	movs r1, #0
	mov r4, ip
	adds r4, #0x18
	mov r5, ip
	adds r5, #0x1a
	mov r6, ip
	adds r6, #0x1b
	mov r2, ip
	adds r2, #0xe
	movs r3, #1
	rsbs r3, r3, #0
_0805EA90:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	adds r0, r2, r0
	strb r3, [r0]
	adds r1, #1
	cmp r1, #9
	ble _0805EA90
	movs r1, #0
	adds r2, r4, #0
	movs r3, #1
	rsbs r3, r3, #0
_0805EAA6:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	adds r0, r2, r0
	strb r3, [r0]
	adds r1, #1
	cmp r1, #1
	ble _0805EAA6
	movs r1, #0
	adds r2, r5, #0
	movs r3, #1
	rsbs r3, r3, #0
_0805EABC:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	adds r0, r2, r0
	strb r3, [r0]
	adds r1, #1
	cmp r1, #0
	ble _0805EABC
	movs r1, #0
	adds r2, r6, #0
	movs r3, #1
	rsbs r3, r3, #0
_0805EAD2:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	adds r0, r2, r0
	strb r3, [r0]
	adds r1, #1
	cmp r1, #0
	ble _0805EAD2
	ldr r1, _0805EB00 @ =0x0000FFFF
	movs r3, #0
	movs r2, #0
	mov r4, ip
	strh r1, [r4, #4]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	strh r1, [r4, #6]
	strb r0, [r4, #0x1d]
	strh r2, [r4, #8]
	strb r3, [r4, #0x1e]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0805EAFC: .4byte 0x02032B50
_0805EB00: .4byte 0x0000FFFF

	thumb_func_start sub_805EB04
sub_805EB04: @ 0x0805EB04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r5, _0805EB50 @ =0x02032B50
	adds r0, r5, #0
	mov r1, r8
	bl sub_805F04C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r0, #2
	mov sb, r0
	mov r1, r8
	strh r1, [r7, #6]
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
	adds r0, r5, #0
	mov r1, r8
	bl sub_805EC3C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0xf
	mov r3, r8
	ands r3, r0
	movs r0, #1
	mov sl, r0
	b _0805EB78
	.align 2, 0
_0805EB50: .4byte 0x02032B50
_0805EB54:
	mov r1, sl
	lsls r1, r4
	ldrh r0, [r5, #6]
	bics r0, r1
	strh r0, [r5, #6]
	ldrh r0, [r5, #8]
	orrs r1, r0
	strh r1, [r5, #8]
	ldrb r0, [r5, #0x1e]
	adds r0, #1
	strb r0, [r5, #0x1e]
	mov r0, sb
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #0xff
	beq _0805EC28
_0805EB78:
	adds r0, r5, #0
	str r3, [sp, #8]
	bl sub_805EE6C
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldrh r0, [r5, #0x20]
	adds r0, #1
	strh r0, [r7, #2]
	adds r0, r7, #0
	ldr r1, [sp, #4]
	bl sub_805E980
	strh r0, [r7]
	lsls r6, r4, #0x18
	lsrs r4, r6, #0x18
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_805E6FC
	mov ip, r0
	ldr r3, [sp, #8]
	cmp r0, #0
	beq _0805EB54
	ldr r1, [sp]
	lsls r0, r1, #0x18
	cmp r0, #0
	blt _0805EBBE
	lsrs r0, r0, #0x18
	mov r1, sl
	lsls r1, r0
	ldrh r0, [r5, #4]
	orrs r1, r0
	strh r1, [r5, #4]
_0805EBBE:
	mov r1, sl
	lsls r1, r4
	mvns r1, r1
	ldrh r2, [r5, #4]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r5, #4]
	ldrh r0, [r5, #6]
	ands r1, r0
	strh r1, [r5, #6]
	ldr r1, _0805EBEC @ =0x0000FFF0
	adds r0, r1, #0
	mov r1, r8
	ands r1, r0
	cmp r1, #0x40
	beq _0805EC0E
	cmp r1, #0x40
	bgt _0805EBF0
	cmp r1, #0x10
	beq _0805EBFE
	cmp r1, #0x20
	beq _0805EC06
	b _0805EC28
	.align 2, 0
_0805EBEC: .4byte 0x0000FFF0
_0805EBF0:
	cmp r1, #0x80
	beq _0805EC16
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0805EC1E
	b _0805EC28
_0805EBFE:
	asrs r1, r6, #0x18
	adds r0, r5, #0
	adds r0, #0xc
	b _0805EC24
_0805EC06:
	asrs r1, r6, #0x18
	adds r0, r5, #0
	adds r0, #0xe
	b _0805EC24
_0805EC0E:
	asrs r1, r6, #0x18
	adds r0, r5, #0
	adds r0, #0x18
	b _0805EC24
_0805EC16:
	asrs r1, r6, #0x18
	adds r0, r5, #0
	adds r0, #0x1a
	b _0805EC24
_0805EC1E:
	asrs r1, r6, #0x18
	adds r0, r5, #0
	adds r0, #0x1b
_0805EC24:
	adds r0, r0, r3
	strb r1, [r0]
_0805EC28:
	mov r0, ip
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_805EC3C
sub_805EC3C: @ 0x0805EC3C
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _0805EC58 @ =0x0000FFF0
	ands r2, r1
	cmp r2, #0x40
	beq _0805EC7E
	cmp r2, #0x40
	bgt _0805EC5C
	cmp r2, #0x10
	beq _0805EC6A
	cmp r2, #0x20
	beq _0805EC74
	b _0805ECA0
	.align 2, 0
_0805EC58: .4byte 0x0000FFF0
_0805EC5C:
	cmp r2, #0x80
	beq _0805EC88
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	beq _0805EC92
	b _0805ECA0
_0805EC6A:
	movs r0, #0xf
	ands r1, r0
	adds r0, r3, #0
	adds r0, #0xc
	b _0805EC9A
_0805EC74:
	movs r0, #0xf
	ands r1, r0
	adds r0, r3, #0
	adds r0, #0xe
	b _0805EC9A
_0805EC7E:
	movs r0, #0xf
	ands r1, r0
	adds r0, r3, #0
	adds r0, #0x18
	b _0805EC9A
_0805EC88:
	movs r0, #0xf
	ands r1, r0
	adds r0, r3, #0
	adds r0, #0x1a
	b _0805EC9A
_0805EC92:
	movs r0, #0xf
	ands r1, r0
	adds r0, r3, #0
	adds r0, #0x1b
_0805EC9A:
	adds r0, r0, r1
	ldrb r0, [r0]
	b _0805ECA2
_0805ECA0:
	movs r0, #0xff
_0805ECA2:
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr

	thumb_func_start sub_805ECA8
sub_805ECA8: @ 0x0805ECA8
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r3, _0805ECCC @ =0x0000FFF0
	ands r3, r1
	cmp r3, #0x40
	beq _0805ECF2
	cmp r3, #0x40
	bgt _0805ECD0
	cmp r3, #0x10
	beq _0805ECDE
	cmp r3, #0x20
	beq _0805ECE8
	b _0805ED12
	.align 2, 0
_0805ECCC: .4byte 0x0000FFF0
_0805ECD0:
	cmp r3, #0x80
	beq _0805ECFC
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r3, r0
	beq _0805ED06
	b _0805ED12
_0805ECDE:
	movs r0, #0xf
	ands r1, r0
	adds r0, r4, #0
	adds r0, #0xc
	b _0805ED0E
_0805ECE8:
	movs r0, #0xf
	ands r1, r0
	adds r0, r4, #0
	adds r0, #0xe
	b _0805ED0E
_0805ECF2:
	movs r0, #0xf
	ands r1, r0
	adds r0, r4, #0
	adds r0, #0x18
	b _0805ED0E
_0805ECFC:
	movs r0, #0xf
	ands r1, r0
	adds r0, r4, #0
	adds r0, #0x1a
	b _0805ED0E
_0805ED06:
	movs r0, #0xf
	ands r1, r0
	adds r0, r4, #0
	adds r0, #0x1b
_0805ED0E:
	adds r0, r0, r1
	strb r2, [r0]
_0805ED12:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_805ED18
sub_805ED18: @ 0x0805ED18
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	movs r0, #0
	mov r8, r0
	ldr r0, _0805ED44 @ =0x0000FFF0
	ands r0, r5
	cmp r0, #0x40
	beq _0805ED54
	cmp r0, #0x40
	bgt _0805ED48
	cmp r0, #0x10
	beq _0805ED4E
	cmp r0, #0x20
	beq _0805ED54
	b _0805ED58
	.align 2, 0
_0805ED44: .4byte 0x0000FFF0
_0805ED48:
	cmp r0, #0x80
	beq _0805ED54
	b _0805ED58
_0805ED4E:
	movs r0, #7
	strh r0, [r6, #8]
	b _0805ED58
_0805ED54:
	movs r0, #9
	strh r0, [r6, #0x12]
_0805ED58:
	ldr r0, _0805ED70 @ =0x0000FFF0
	ands r0, r5
	cmp r0, #0x40
	beq _0805ED78
	cmp r0, #0x40
	bgt _0805ED74
	cmp r0, #0x10
	beq _0805ED78
	cmp r0, #0x20
	beq _0805ED78
	b _0805EDB4
	.align 2, 0
_0805ED70: .4byte 0x0000FFF0
_0805ED74:
	cmp r0, #0x80
	bne _0805EDB4
_0805ED78:
	ldr r0, _0805ED90 @ =0x0000FFF0
	ands r0, r5
	cmp r0, #0x40
	beq _0805EDA4
	cmp r0, #0x40
	bgt _0805ED94
	cmp r0, #0x10
	beq _0805ED9A
	cmp r0, #0x20
	beq _0805EDA4
	b _0805EDAA
	.align 2, 0
_0805ED90: .4byte 0x0000FFF0
_0805ED94:
	cmp r0, #0x80
	beq _0805EDA4
	b _0805EDAA
_0805ED9A:
	ldr r1, _0805EDA0 @ =0x00000BF4
	b _0805EDAC
	.align 2, 0
_0805EDA0: .4byte 0x00000BF4
_0805EDA4:
	movs r1, #0x80
	lsls r1, r1, #5
	b _0805EDAC
_0805EDAA:
	movs r1, #0
_0805EDAC:
	adds r0, r6, #0
	bl sub_805E9BC
	b _0805EDB6
_0805EDB4:
	movs r0, #0
_0805EDB6:
	cmp r0, #0
	beq _0805EE40
	movs r6, #0xff
	cmp r5, #0
	beq _0805EE32
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_805EC3C
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r2, r6, #0x18
	asrs r1, r2, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0805EDDE
	movs r0, #1
	mov r8, r0
	b _0805EDF2
_0805EDDE:
	lsrs r0, r2, #0x18
	bl sub_805F1CC
	cmp r0, #0
	beq _0805EDEC
	movs r0, #1
	mov r8, r0
_0805EDEC:
	mov r0, r8
	cmp r0, #0
	beq _0805EE3C
_0805EDF2:
	lsls r2, r7, #0x18
	asrs r2, r2, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_805ECA8
	ldrb r3, [r4, #0x1c]
	subs r0, r3, #1
	strb r0, [r4, #0x1c]
	movs r5, #1
	adds r1, r5, #0
	lsls r1, r7
	mvns r1, r1
	ldrh r0, [r4, #4]
	adds r2, r1, #0
	ands r2, r0
	strh r2, [r4, #4]
	ldrb r0, [r4, #0x1d]
	subs r0, #1
	strb r0, [r4, #0x1d]
	ldrh r0, [r4, #6]
	ands r1, r0
	strh r1, [r4, #6]
	lsls r1, r6, #0x18
	cmp r1, #0
	blt _0805EE32
	strb r3, [r4, #0x1c]
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	lsls r0, r1
	orrs r0, r2
	strh r0, [r4, #4]
_0805EE32:
	mov r0, r8
	cmp r0, #0
	beq _0805EE3C
	adds r0, r6, #0
	b _0805EE42
_0805EE3C:
	adds r0, r7, #0
	b _0805EE42
_0805EE40:
	movs r0, #0xff
_0805EE42:
	lsls r2, r0, #0x18
	asrs r1, r2, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0805EE60
	ldrb r0, [r4, #0x1d]
	subs r0, #1
	strb r0, [r4, #0x1d]
	lsrs r0, r2, #0x18
	movs r1, #1
	lsls r1, r0
	ldrh r0, [r4, #6]
	bics r0, r1
	strh r0, [r4, #6]
_0805EE60:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_805EE6C
sub_805EE6C: @ 0x0805EE6C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r3, #0xff
	movs r0, #0
	strh r0, [r5, #0x20]
	ldrh r0, [r5, #6]
	cmp r0, #0
	beq _0805EE98
	movs r4, #0
	adds r2, r0, #0
	movs r6, #1
_0805EE82:
	lsls r0, r4, #0x18
	lsrs r1, r0, #0x18
	adds r0, r6, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _0805EE92
	adds r3, r1, #0
_0805EE92:
	adds r4, #1
	cmp r4, #0xf
	ble _0805EE82
_0805EE98:
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0805EEEA
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _0805EEBC
	movs r4, #0xf
_0805EEAC:
	adds r0, r5, #0
	bl sub_805F200
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	subs r4, #1
	cmp r4, #0
	bge _0805EEAC
_0805EEBC:
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0805EEEA
	ldrh r0, [r5, #8]
	cmp r0, #0
	beq _0805EEEA
	movs r4, #0
	adds r2, r0, #0
	movs r5, #1
_0805EED4:
	lsls r0, r4, #0x18
	lsrs r1, r0, #0x18
	adds r0, r5, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _0805EEE4
	adds r3, r1, #0
_0805EEE4:
	adds r4, #1
	cmp r4, #0xf
	ble _0805EED4
_0805EEEA:
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start save_805EEF4
save_805EEF4: @ 0x0805EEF4
	push {r4, lr}
	ldr r4, _0805EF0C @ =0x02032B50
	bl sub_805D9C8
	bl sub_805EA5C
	adds r0, r4, #0
	bl sub_805EFD8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805EF0C: .4byte 0x02032B50

	thumb_func_start sub_805EF10
sub_805EF10: @ 0x0805EF10
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r5, _0805EF84 @ =0x02032B50
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_805EC3C
	lsls r6, r0, #0x18
	asrs r0, r6, #0x18
	mvns r0, r0
	lsrs r4, r0, #0x1f
	cmp r4, #0
	beq _0805EF78
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_805F04C
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsrs r6, r6, #0x18
	mov r0, r8
	adds r1, r6, #0
	movs r2, #0
	adds r3, r4, #0
	bl sub_805EA00
	mov r0, r8
	adds r1, r4, #0
	bl sub_805E9BC
	adds r4, r0, #0
	cmp r4, #0
	bne _0805EF78
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_805ECA8
	movs r0, #1
	lsls r0, r6
	ldrh r1, [r5, #6]
	orrs r0, r1
	strh r0, [r5, #6]
	ldrb r0, [r5, #0x1d]
	adds r0, #1
	strb r0, [r5, #0x1d]
_0805EF78:
	adds r0, r4, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805EF84: .4byte 0x02032B50

	thumb_func_start sub_805EF88
sub_805EF88: @ 0x0805EF88
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r7, _0805EFCC @ =0x02032B50
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_805F088
	lsls r5, r0, #0x18
	cmp r5, #0
	blt _0805EFD0
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_805F04C
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsrs r1, r5, #0x18
	adds r0, r6, #0
	movs r2, #0
	adds r3, r4, #0
	bl sub_805EA00
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_805E9BC
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r0, r1, #0x1f
	b _0805EFD2
	.align 2, 0
_0805EFCC: .4byte 0x02032B50
_0805EFD0:
	movs r0, #0
_0805EFD2:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805EFD8
sub_805EFD8: @ 0x0805EFD8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	movs r0, #0
	mov r8, r0
	ldr r6, _0805F048 @ =0x02029400
_0805EFE8:
	bl main_frameProc
	mov r1, r8
	lsls r0, r1, #0x18
	lsrs r7, r0, #0x18
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #5
	bl sub_805EA00
	ldrh r5, [r6, #6]
	mov r0, sb
	adds r1, r5, #0
	bl sub_805F04C
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_805F198
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_805E9BC
	cmp r0, #0
	bne _0805F026
	movs r5, #0
_0805F026:
	mov r0, sb
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_805ED18
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #0xf
	ble _0805EFE8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F048: .4byte 0x02029400

	thumb_func_start sub_805F04C
sub_805F04C: @ 0x0805F04C
	lsls r1, r1, #0x10
	ldr r0, _0805F068 @ =0xFFF00000
	ands r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0x40
	beq _0805F07C
	cmp r0, #0x40
	bgt _0805F06C
	cmp r0, #0x10
	beq _0805F072
	cmp r0, #0x20
	beq _0805F07C
	b _0805F082
	.align 2, 0
_0805F068: .4byte 0xFFF00000
_0805F06C:
	cmp r0, #0x80
	beq _0805F07C
	b _0805F082
_0805F072:
	ldr r0, _0805F078 @ =0x00000BF4
	b _0805F084
	.align 2, 0
_0805F078: .4byte 0x00000BF4
_0805F07C:
	movs r0, #0x80
	lsls r0, r0, #5
	b _0805F084
_0805F082:
	movs r0, #0
_0805F084:
	bx lr
	.align 2, 0

	thumb_func_start sub_805F088
sub_805F088: @ 0x0805F088
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	movs r0, #0
	mov r8, r0
	movs r1, #0xff
	mov sb, r1
	movs r6, #0
_0805F0A6:
	lsls r0, r6, #0x18
	lsrs r5, r0, #0x18
	ldrh r1, [r7, #4]
	movs r0, #1
	lsls r0, r5
	ands r1, r0
	cmp r1, #0
	beq _0805F0DC
	mov r4, sp
	mov r0, sp
	adds r1, r5, #0
	movs r2, #0
	movs r3, #8
	bl sub_805EA00
	ldrh r0, [r4, #6]
	cmp r0, sl
	bne _0805F0DC
	ldrh r0, [r4, #4]
	cmp r0, r8
	bls _0805F0DC
	mov r8, r0
	mov sb, r5
	mov r0, r8
	strh r0, [r7, #0x22]
	ldrh r0, [r4, #2]
	strh r0, [r7, #0x20]
_0805F0DC:
	adds r6, #1
	cmp r6, #0xf
	ble _0805F0A6
	mov r1, sb
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_805F0F8
sub_805F0F8: @ 0x0805F0F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	movs r6, #0
	ldr r4, _0805F158 @ =0x02029400
	movs r0, #0x80
	lsls r0, r0, #5
	mov r8, r0
_0805F10A:
	movs r7, #0
	lsls r0, r6, #0x18
	lsrs r5, r0, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	mov r3, r8
	bl sub_805EA00
	adds r0, r4, #0
	mov r1, r8
	bl sub_805E9BC
	cmp r0, #0
	beq _0805F12A
	ldrh r7, [r4, #2]
_0805F12A:
	ldr r0, _0805F15C @ =0x0000FFFF
	str r0, [sp]
	mov r0, sp
	adds r1, r4, #0
	ldr r2, _0805F160 @ =0x01000400
	bl CpuFastSet
	strh r7, [r4, #2]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_805E6FC
	adds r6, #1
	cmp r6, #0xf
	ble _0805F10A
	bl sub_805EA5C
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0805F158: .4byte 0x02029400
_0805F15C: .4byte 0x0000FFFF
_0805F160: .4byte 0x01000400

	thumb_func_start sub_805F164
sub_805F164: @ 0x0805F164
	push {r4, lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	ldr r1, _0805F190 @ =0x02029400
	ldr r2, _0805F194 @ =0x01000400
	mov r0, sp
	bl CpuFastSet
	movs r4, #0
_0805F178:
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _0805F190 @ =0x02029400
	bl sub_805E6FC
	adds r4, #1
	cmp r4, #0xf
	ble _0805F178
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0805F190: .4byte 0x02029400
_0805F194: .4byte 0x01000400

	thumb_func_start sub_805F198
sub_805F198: @ 0x0805F198
	adds r2, r0, #0
	lsls r1, r1, #0x10
	ldr r0, _0805F1B4 @ =0xFFF00000
	ands r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0x40
	beq _0805F1C4
	cmp r0, #0x40
	bgt _0805F1B8
	cmp r0, #0x10
	beq _0805F1BE
	cmp r0, #0x20
	beq _0805F1C4
	b _0805F1C8
	.align 2, 0
_0805F1B4: .4byte 0xFFF00000
_0805F1B8:
	cmp r0, #0x80
	beq _0805F1C4
	b _0805F1C8
_0805F1BE:
	movs r0, #7
	strh r0, [r2, #8]
	b _0805F1C8
_0805F1C4:
	movs r0, #9
	strh r0, [r2, #0x12]
_0805F1C8:
	bx lr
	.align 2, 0

	thumb_func_start sub_805F1CC
sub_805F1CC: @ 0x0805F1CC
	push {r4, lr}
	sub sp, #8
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r4, sp
	mov r0, sp
	movs r2, #0
	movs r3, #8
	bl sub_805EA00
	ldr r1, _0805F1FC @ =0x02029400
	movs r2, #0
	ldrh r0, [r4, #4]
	ldrh r1, [r1, #4]
	cmp r0, r1
	bhs _0805F1F0
	movs r2, #1
_0805F1F0:
	adds r0, r2, #0
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0805F1FC: .4byte 0x02029400

	thumb_func_start sub_805F200
sub_805F200: @ 0x0805F200
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r7, _0805F25C @ =0x0000FFFF
	movs r0, #0xff
	mov r8, r0
	movs r5, #0
	mov sb, sp
_0805F216:
	lsls r0, r5, #0x18
	lsrs r4, r0, #0x18
	ldrh r1, [r6, #4]
	movs r0, #1
	lsls r0, r4
	ands r1, r0
	cmp r1, #0
	beq _0805F240
	mov r0, sp
	adds r1, r4, #0
	movs r2, #0
	movs r3, #8
	bl sub_805EA00
	mov r1, sb
	ldrh r0, [r1, #2]
	cmp r0, r7
	bhs _0805F240
	adds r7, r0, #0
	mov r8, r4
	strh r7, [r6, #0x20]
_0805F240:
	adds r5, #1
	cmp r5, #0xf
	ble _0805F216
	mov r1, r8
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0805F25C: .4byte 0x0000FFFF