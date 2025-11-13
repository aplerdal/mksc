	.include "asm/macros.inc"

	.syntax unified
	.text
	thumb_func_start EraseFlashChip_LE
EraseFlashChip_LE: @ 0x08061838
	push {r4, r5, r6, lr}
	sub sp, #0x40
	ldr r5, _08061894 @ =0x04000204
	ldrh r1, [r5]
	ldr r6, _08061898 @ =0x0000FFFC
	ands r1, r6
	ldr r0, _0806189C @ =0x03006A88
	ldr r0, [r0]
	ldrh r0, [r0, #0x10]
	orrs r0, r1
	strh r0, [r5]
	ldr r1, _080618A0 @ =0x0E005555
	movs r4, #0xaa
	strb r4, [r1]
	ldr r3, _080618A4 @ =0x0E002AAA
	movs r2, #0x55
	strb r2, [r3]
	movs r0, #0x80
	strb r0, [r1]
	strb r4, [r1]
	strb r2, [r3]
	movs r0, #0x10
	strb r0, [r1]
	mov r0, sp
	bl SetReadFlash1
	ldr r0, _080618A8 @ =0x03006A80
	movs r1, #0xe0
	lsls r1, r1, #0x14
	ldr r3, [r0]
	movs r0, #3
	movs r2, #0xff
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r5]
	ands r1, r6
	movs r2, #3
	orrs r1, r2
	strh r1, [r5]
	add sp, #0x40
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08061894: .4byte 0x04000204
_08061898: .4byte 0x0000FFFC
_0806189C: .4byte 0x03006A88
_080618A0: .4byte 0x0E005555
_080618A4: .4byte 0x0E002AAA
_080618A8: .4byte 0x03006A80

	thumb_func_start EraseFlashSector_LE
EraseFlashSector_LE: @ 0x080618AC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x40
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0xf
	bhi _08061934
	ldr r6, _0806191C @ =0x04000204
	ldrh r1, [r6]
	ldr r0, _08061920 @ =0x0000FFFC
	mov r8, r0
	ands r1, r0
	ldr r0, _08061924 @ =0x03006A88
	ldr r2, [r0]
	ldrh r0, [r2, #0x10]
	orrs r0, r1
	strh r0, [r6]
	ldrb r4, [r2, #8]
	lsls r3, r4
	adds r4, r3, #0
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r4, r4, r2
	ldr r1, _08061928 @ =0x0E005555
	movs r5, #0xaa
	strb r5, [r1]
	ldr r3, _0806192C @ =0x0E002AAA
	movs r2, #0x55
	strb r2, [r3]
	movs r0, #0x80
	strb r0, [r1]
	strb r5, [r1]
	strb r2, [r3]
	movs r0, #0x30
	strb r0, [r4]
	mov r0, sp
	bl SetReadFlash1
	ldr r0, _08061930 @ =0x03006A80
	ldr r3, [r0]
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0xff
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r6]
	mov r2, r8
	ands r1, r2
	movs r2, #3
	orrs r1, r2
	strh r1, [r6]
	b _08061936
	.align 2, 0
_0806191C: .4byte 0x04000204
_08061920: .4byte 0x0000FFFC
_08061924: .4byte 0x03006A88
_08061928: .4byte 0x0E005555
_0806192C: .4byte 0x0E002AAA
_08061930: .4byte 0x03006A80
_08061934:
	ldr r0, _08061944 @ =0x000080FF
_08061936:
	add sp, #0x40
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08061944: .4byte 0x000080FF

	thumb_func_start ProgramFlashByte_LE
ProgramFlashByte_LE: @ 0x08061948
	push {r4, lr}
	ldr r4, _08061974 @ =0x0E005555
	movs r2, #0xaa
	strb r2, [r4]
	ldr r3, _08061978 @ =0x0E002AAA
	movs r2, #0x55
	strb r2, [r3]
	movs r2, #0xa0
	strb r2, [r4]
	ldrb r2, [r0]
	strb r2, [r1]
	ldr r3, _0806197C @ =0x03006A80
	ldrb r2, [r0]
	ldr r3, [r3]
	movs r0, #1
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08061974: .4byte 0x0E005555
_08061978: .4byte 0x0E002AAA
_0806197C: .4byte 0x03006A80

	thumb_func_start ProgramFlashSector_LE
ProgramFlashSector_LE: @ 0x08061980
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x60
	mov sb, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0xf
	bls _080619A0
	ldr r0, _0806199C @ =0x000080FF
	b _08061A8E
	.align 2, 0
_0806199C: .4byte 0x000080FF
_080619A0:
	ldr r0, _080619C0 @ =0x03006A88
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	mov r7, r8
	lsls r7, r0
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r7, r7, r0
	ldr r1, _080619C4 @ =VerifyFlashCoreFF
	movs r0, #1
	adds r3, r1, #0
	eors r3, r0
	mov r2, sp
	ldr r0, _080619C8 @ =VerifyFlashErase
	subs r0, r0, r1
	b _080619D6
	.align 2, 0
_080619C0: .4byte 0x03006A88
_080619C4: .4byte VerifyFlashCoreFF
_080619C8: .4byte VerifyFlashErase
_080619CC:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #2
_080619D6:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _080619CC
	movs r4, #0
	b _080619EC
_080619E2:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x51
	beq _08061A8C
_080619EC:
	mov r0, r8
	bl EraseFlashSector_LE
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _080619E2
	adds r0, r7, #0
	mov r1, sp
	adds r1, #1
	bl VerifyFlashErase
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _080619E2
	movs r6, #1
	cmp r4, #0
	beq _08061A14
	movs r6, #6
_08061A14:
	movs r4, #1
	cmp r4, r6
	bhi _08061A2A
_08061A1A:
	mov r0, r8
	bl EraseFlashSector_LE
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r6
	bls _08061A1A
_08061A2A:
	mov r0, sp
	bl SetReadFlash1
	ldr r3, _08061A4C @ =0x04000204
	ldrh r1, [r3]
	ldr r0, _08061A50 @ =0x0000FFFC
	ands r1, r0
	ldr r0, _08061A54 @ =0x03006A88
	ldr r2, [r0]
	ldrh r0, [r2, #0x10]
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _08061A58 @ =0x03006A8C
	ldr r0, [r2, #4]
	strh r0, [r1]
	adds r4, r1, #0
	b _08061A68
	.align 2, 0
_08061A4C: .4byte 0x04000204
_08061A50: .4byte 0x0000FFFC
_08061A54: .4byte 0x03006A88
_08061A58: .4byte 0x03006A8C
_08061A5C:
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	movs r0, #1
	add sb, r0
	adds r7, #1
_08061A68:
	ldrh r0, [r4]
	cmp r0, #0
	beq _08061A7E
	mov r0, sb
	adds r1, r7, #0
	bl ProgramFlashByte_LE
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08061A5C
_08061A7E:
	ldr r2, _08061A9C @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08061AA0 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
_08061A8C:
	adds r0, r5, #0
_08061A8E:
	add sp, #0x60
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08061A9C: .4byte 0x04000204
_08061AA0: .4byte 0x0000FFFC

	thumb_func_start VerifyFlashCoreFF
VerifyFlashCoreFF: @ 0x08061AA4
	adds r2, r0, #0
	ldr r0, _08061AB0 @ =0x03006A88
	ldr r0, [r0]
	ldr r1, [r0, #4]
	b _08061AB6
	.align 2, 0
_08061AB0: .4byte 0x03006A88
_08061AB4:
	subs r1, #1
_08061AB6:
	cmp r1, #0
	beq _08061AC2
	ldrb r0, [r2]
	adds r2, #1
	cmp r0, #0xff
	beq _08061AB4
_08061AC2:
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start VerifyFlashErase
VerifyFlashErase: @ 0x08061AC8
	push {lr}
	bl _call_via_r1
	cmp r0, #0
	bne _08061AD6
	movs r0, #0
	b _08061AD8
_08061AD6:
	ldr r0, _08061ADC @ =0x00008004
_08061AD8:
	pop {r1}
	bx r1
	.align 2, 0
_08061ADC: .4byte 0x00008004

	thumb_func_start ProgramFlashSector_MX
ProgramFlashSector_MX: @ 0x08061AE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x40
	adds r7, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _08061AF8
	ldr r0, _08061AF4 @ =0x000080FF
	b _08061B74
	.align 2, 0
_08061AF4: .4byte 0x000080FF
_08061AF8:
	adds r0, r4, #0
	bl EraseFlashSector_LE
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _08061B72
	mov r0, sp
	bl SetReadFlash1
	ldr r3, _08061B34 @ =0x04000204
	ldrh r1, [r3]
	ldr r0, _08061B38 @ =0x0000FFFC
	ands r1, r0
	ldr r0, _08061B3C @ =0x03006A88
	ldr r2, [r0]
	ldrh r0, [r2, #0x10]
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _08061B40 @ =0x03006A8C
	ldr r0, [r2, #4]
	strh r0, [r1]
	ldrb r0, [r2, #8]
	lsls r4, r0
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r4, r4, r0
	adds r6, r1, #0
	b _08061B4E
	.align 2, 0
_08061B34: .4byte 0x04000204
_08061B38: .4byte 0x0000FFFC
_08061B3C: .4byte 0x03006A88
_08061B40: .4byte 0x03006A8C
_08061B44:
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	adds r7, #1
	adds r4, #1
_08061B4E:
	ldrh r0, [r6]
	cmp r0, #0
	beq _08061B64
	adds r0, r7, #0
	adds r1, r4, #0
	bl ProgramFlashByte_LE
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08061B44
_08061B64:
	ldr r2, _08061B7C @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08061B80 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
_08061B72:
	adds r0, r5, #0
_08061B74:
	add sp, #0x40
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08061B7C: .4byte 0x04000204
_08061B80: .4byte 0x0000FFFC

	thumb_func_start EraseFlashChip_AT
EraseFlashChip_AT: @ 0x08061B84
	push {r4, r5, r6, lr}
	sub sp, #0x40
	mov r0, sp
	bl SetReadFlash1
	ldr r5, _08061BDC @ =0x04000204
	ldrh r0, [r5]
	ldr r6, _08061BE0 @ =0x0000FFFC
	ands r0, r6
	ldr r1, _08061BE4 @ =_081E998C
	ldrh r1, [r1, #0x24]
	orrs r0, r1
	strh r0, [r5]
	ldr r1, _08061BE8 @ =0x0E005555
	movs r4, #0xaa
	strb r4, [r1]
	ldr r3, _08061BEC @ =0x0E002AAA
	movs r2, #0x55
	strb r2, [r3]
	movs r0, #0x80
	strb r0, [r1]
	strb r4, [r1]
	strb r2, [r3]
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08061BF0 @ =0x03006A80
	movs r1, #0xe0
	lsls r1, r1, #0x14
	ldr r3, [r0]
	movs r0, #3
	movs r2, #0xff
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r5]
	ands r1, r6
	movs r2, #3
	orrs r1, r2
	strh r1, [r5]
	add sp, #0x40
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08061BDC: .4byte 0x04000204
_08061BE0: .4byte 0x0000FFFC
_08061BE4: .4byte _081E998C
_08061BE8: .4byte 0x0E005555
_08061BEC: .4byte 0x0E002AAA
_08061BF0: .4byte 0x03006A80

	thumb_func_start EraseFlashSector_AT
EraseFlashSector_AT: @ 0x08061BF4
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	ldr r3, _08061C64 @ =_081E998C
	lsrs r0, r0, #0x10
	adds r4, r0, #0
	ldrb r1, [r3, #0x1c]
	lsls r4, r1
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r4, r4, r0
	ldr r1, _08061C68 @ =0x04000208
	ldrh r0, [r1]
	adds r5, r0, #0
	movs r0, #0
	strh r0, [r1]
	ldr r2, _08061C6C @ =0x0E005555
	movs r0, #0xaa
	strb r0, [r2]
	ldr r1, _08061C70 @ =0x0E002AAA
	movs r0, #0x55
	strb r0, [r1]
	movs r0, #0xa0
	strb r0, [r2]
	ldr r0, [r3, #0x18]
	cmp r0, #0
	beq _08061C34
	movs r1, #0xff
_08061C2A:
	strb r1, [r4]
	adds r4, #1
	subs r0, #1
	cmp r0, #0
	bne _08061C2A
_08061C34:
	subs r4, #1
	ldr r0, _08061C68 @ =0x04000208
	strh r5, [r0]
	ldr r0, _08061C74 @ =0x03006A80
	ldr r3, [r0]
	movs r0, #1
	adds r1, r4, #0
	movs r2, #0xff
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08061C5A
	movs r0, #0xff
	lsls r0, r0, #8
	ands r1, r0
	movs r0, #2
	orrs r1, r0
_08061C5A:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08061C64: .4byte _081E998C
_08061C68: .4byte 0x04000208
_08061C6C: .4byte 0x0E005555
_08061C70: .4byte 0x0E002AAA
_08061C74: .4byte 0x03006A80

	thumb_func_start EraseFlash4KB_AT
EraseFlash4KB_AT: @ 0x08061C78
	push {r4, r5, r6, lr}
	sub sp, #0x40
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _08061C8C
	ldr r0, _08061C88 @ =0x000080FF
	b _08061CF4
	.align 2, 0
_08061C88: .4byte 0x000080FF
_08061C8C:
	mov r0, sp
	bl SetReadFlash1
	ldr r2, _08061CAC @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08061CB0 @ =0x0000FFFC
	ands r0, r1
	ldr r1, _08061CB4 @ =_081E998C
	ldrh r1, [r1, #0x24]
	orrs r0, r1
	strh r0, [r2]
	lsls r0, r4, #0x15
	lsrs r5, r0, #0x10
	movs r6, #0
_08061CA8:
	movs r4, #2
	b _08061CC2
	.align 2, 0
_08061CAC: .4byte 0x04000204
_08061CB0: .4byte 0x0000FFFC
_08061CB4: .4byte _081E998C
_08061CB8:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08061CD0
_08061CC2:
	adds r0, r5, #0
	bl EraseFlashSector_AT
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08061CB8
_08061CD0:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r3, #0
	bne _08061CE4
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x1f
	bls _08061CA8
_08061CE4:
	ldr r2, _08061CFC @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08061D00 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	adds r0, r3, #0
_08061CF4:
	add sp, #0x40
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08061CFC: .4byte 0x04000204
_08061D00: .4byte 0x0000FFFC

	thumb_func_start ProgramFlashSector_AT
ProgramFlashSector_AT: @ 0x08061D04
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	ldr r3, _08061D68 @ =_081E998C
	lsrs r0, r0, #0x10
	adds r4, r0, #0
	ldrb r1, [r3, #0x1c]
	lsls r4, r1
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r4, r4, r0
	ldr r1, _08061D6C @ =0x04000208
	ldrh r0, [r1]
	adds r6, r0, #0
	movs r0, #0
	strh r0, [r1]
	ldr r2, _08061D70 @ =0x0E005555
	movs r0, #0xaa
	strb r0, [r2]
	ldr r1, _08061D74 @ =0x0E002AAA
	movs r0, #0x55
	strb r0, [r1]
	movs r0, #0xa0
	strb r0, [r2]
	ldr r1, [r3, #0x18]
	cmp r1, #0
	beq _08061D48
_08061D3A:
	ldrb r0, [r5]
	strb r0, [r4]
	adds r5, #1
	adds r4, #1
	subs r1, #1
	cmp r1, #0
	bne _08061D3A
_08061D48:
	subs r4, #1
	subs r5, #1
	ldr r0, _08061D6C @ =0x04000208
	strh r6, [r0]
	ldr r0, _08061D78 @ =0x03006A80
	ldrb r2, [r5]
	ldr r3, [r0]
	movs r0, #1
	adds r1, r4, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08061D68: .4byte _081E998C
_08061D6C: .4byte 0x04000208
_08061D70: .4byte 0x0E005555
_08061D74: .4byte 0x0E002AAA
_08061D78: .4byte 0x03006A80

	thumb_func_start ProgramFlash4KB_AT
ProgramFlash4KB_AT: @ 0x08061D7C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x40
	adds r7, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _08061D98
	ldr r0, _08061D94 @ =0x000080FF
	b _08061E2A
	.align 2, 0
_08061D94: .4byte 0x000080FF
_08061D98:
	mov r0, sp
	bl SetReadFlash1
	ldr r2, _08061DC0 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08061DC4 @ =0x0000FFFC
	ands r0, r1
	ldr r1, _08061DC8 @ =_081E998C
	ldrh r1, [r1, #0x24]
	orrs r0, r1
	strh r0, [r2]
	lsls r0, r4, #0x15
	lsrs r5, r0, #0x10
	ldr r1, _08061DCC @ =0x03006A8C
	ldr r0, _08061DD0 @ =_081E9960
	ldr r0, [r0, #0x18]
	strh r0, [r1]
	adds r0, r1, #0
	mov r8, r0
	b _08061DEA
	.align 2, 0
_08061DC0: .4byte 0x04000204
_08061DC4: .4byte 0x0000FFFC
_08061DC8: .4byte _081E998C
_08061DCC: .4byte 0x03006A8C
_08061DD0: .4byte _081E9960
_08061DD4:
	ldr r0, _08061DF8 @ =_081E998C
	ldr r1, [r0, #0x18]
	mov r2, r8
	ldrh r2, [r2]
	subs r0, r2, r1
	mov r3, r8
	strh r0, [r3]
	adds r7, r7, r1
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08061DEA:
	mov r1, r8
	ldrh r0, [r1]
	cmp r0, #0
	beq _08061E1A
	movs r4, #2
	b _08061E06
	.align 2, 0
_08061DF8: .4byte _081E998C
_08061DFC:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08061E16
_08061E06:
	adds r0, r5, #0
	adds r1, r7, #0
	bl ProgramFlashSector_AT
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	bne _08061DFC
_08061E16:
	cmp r6, #0
	beq _08061DD4
_08061E1A:
	ldr r2, _08061E38 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _08061E3C @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	adds r0, r6, #0
_08061E2A:
	add sp, #0x40
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08061E38: .4byte 0x04000204
_08061E3C: .4byte 0x0000FFFC