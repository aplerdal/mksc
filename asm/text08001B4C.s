	.include "asm/macros.inc"

	.syntax unified
	.text
	thumb_func_start sub_8001B4C
sub_8001B4C: @ 0x08001B4C
	ldr r0, _08001B5C @ =0x03002C60
	movs r2, #0
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	movs r1, #1
	strh r1, [r0, #0xa]
	strh r2, [r0, #0xc]
	bx lr
	.align 2, 0
_08001B5C: .4byte 0x03002C60

	thumb_func_start sub_8001B60
sub_8001B60: @ 0x08001B60
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r2, r0, #0
	ldr r7, _08001B7C @ =0x03000010
	movs r1, #1
	ldr r0, _08001B80 @ =0x03002C80
	ldrb r3, [r0, #1]
	cmp r3, #1
	bgt _08001B84
	movs r3, #0
	b _08001B94
	.align 2, 0
_08001B7C: .4byte 0x03000010
_08001B80: .4byte 0x03002C80
_08001B84:
	subs r3, #1
	cmp r3, #0
	beq _08001B94
	ldr r4, _08001C04 @ =0x00000D84
	adds r0, r2, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _08001B96
_08001B94:
	movs r1, #0
_08001B96:
	movs r0, #0x17
	ldrsb r0, [r7, r0]
	cmp r3, r0
	beq _08001BA0
	movs r1, #1
_08001BA0:
	ldr r0, _08001C08 @ =0x03000028
	mov sb, r0
	cmp r1, #0
	bne _08001BAE
	ldr r0, [r0]
	cmp r0, #0
	bne _08001BF6
_08001BAE:
	movs r1, #0
	adds r6, r7, #4
	movs r4, #0xd
	adds r4, r4, r7
	mov ip, r4
	movs r0, #0x12
	adds r0, r0, r7
	mov r8, r0
	movs r5, #0
	adds r2, r7, #0
	adds r2, #9
	movs r4, #4
_08001BC6:
	adds r0, r7, r1
	strb r5, [r0]
	adds r0, r2, r1
	strb r4, [r0]
	adds r1, #1
	cmp r1, #3
	ble _08001BC6
	movs r1, #0
	movs r2, #0
	mov r5, ip
	mov r4, r8
_08001BDC:
	adds r0, r6, r1
	strb r2, [r0]
	adds r0, r5, r1
	strb r2, [r0]
	adds r0, r4, r1
	strb r2, [r0]
	adds r1, #1
	cmp r1, #4
	ble _08001BDC
	strb r3, [r7, #0x17]
	movs r0, #1
	mov r1, sb
	str r0, [r1]
_08001BF6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001C04: .4byte 0x00000D84
_08001C08: .4byte 0x03000028

	thumb_func_start sub_8001C0C
sub_8001C0C: @ 0x08001C0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	ldr r1, _08001C94 @ =0x000007D7
	adds r0, r4, r1
	ldrb r5, [r0]
	adds r1, #3
	adds r0, r4, r1
	ldrh r0, [r0]
	mov r8, r0
	adds r1, #2
	adds r0, r4, r1
	ldrb r0, [r0]
	mov sb, r0
	adds r1, #1
	adds r0, r4, r1
	ldrb r0, [r0]
	mov sl, r0
	movs r2, #0
	cmp r2, r5
	bge _08001C58
	movs r7, #7
	ldr r0, _08001C98 @ =0x000007F4
	adds r3, r4, r0
	ldr r6, _08001C9C @ =0x0300002C
_08001C44:
	ldm r3!, {r0}
	adds r0, #0x4c
	ldrb r1, [r0]
	adds r0, r7, #0
	ands r0, r1
	adds r1, r2, r6
	strb r0, [r1]
	adds r2, #1
	cmp r2, r5
	blt _08001C44
_08001C58:
	bl main_frameProc
	adds r0, r4, #0
	bl sub_8048C74
	bl main_frameProc
	ldr r1, _08001C94 @ =0x000007D7
	adds r0, r4, r1
	strb r5, [r0]
	adds r1, #3
	adds r0, r4, r1
	mov r1, r8
	strh r1, [r0]
	ldr r1, _08001CA0 @ =0x000007DC
	adds r0, r4, r1
	mov r1, sb
	strb r1, [r0]
	ldr r1, _08001CA4 @ =0x000007DD
	adds r0, r4, r1
	mov r1, sl
	strb r1, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001C94: .4byte 0x000007D7
_08001C98: .4byte 0x000007F4
_08001C9C: .4byte 0x0300002C
_08001CA0: .4byte 0x000007DC
_08001CA4: .4byte 0x000007DD

	thumb_func_start sub_8001CA8
sub_8001CA8: @ 0x08001CA8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x20
	adds r5, r0, #0
	ldr r1, _08001D2C @ =0x000007D7
	adds r0, r5, r1
	ldrb r7, [r0]
	ldr r2, _08001D30 @ =0x000007DA
	adds r0, r5, r2
	ldrh r6, [r0]
	adds r1, #5
	adds r0, r5, r1
	ldrb r0, [r0]
	mov r8, r0
	cmp r7, #0
	beq _08001CE8
	movs r2, #7
	mov ip, r2
	mov r3, sp
	ldr r0, _08001D34 @ =0x000007F4
	adds r2, r5, r0
	adds r4, r7, #0
_08001CD6:
	ldm r2!, {r0}
	adds r0, #0x4c
	ldrb r1, [r0]
	mov r0, ip
	ands r0, r1
	stm r3!, {r0}
	subs r4, #1
	cmp r4, #0
	bne _08001CD6
_08001CE8:
	adds r0, r5, #0
	bl sub_8048C74
	ldr r1, _08001D2C @ =0x000007D7
	adds r0, r5, r1
	strb r7, [r0]
	movs r2, #0x81
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r6, r0
	adds r1, #3
	adds r0, r5, r1
	strh r6, [r0]
	ldr r2, _08001D38 @ =0x000007DC
	adds r0, r5, r2
	mov r1, r8
	strb r1, [r0]
	ldr r4, _08001D3C @ =0x03000008
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	movs r2, #0xaf
	lsls r2, r2, #3
	adds r0, r5, r2
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bl sub_8032BC8
	cmp r0, #0
	beq _08001D40
	ldr r0, [r4]
	bl track_getRetroTrack
	b _08001D46
	.align 2, 0
_08001D2C: .4byte 0x000007D7
_08001D30: .4byte 0x000007DA
_08001D34: .4byte 0x000007F4
_08001D38: .4byte 0x000007DC
_08001D3C: .4byte 0x03000008
_08001D40:
	ldr r0, [r4]
	bl track_getMKSCTrack
_08001D46:
	ldr r2, _08001D70 @ =0x000007DD
	adds r1, r5, r2
	strb r0, [r1]
	cmp r7, #0
	beq _08001D64
	mov r6, sp
	adds r4, r7, #0
_08001D54:
	ldm r6!, {r1}
	adds r0, r5, #0
	movs r2, #1
	bl sub_804AE58
	subs r4, #1
	cmp r4, #0
	bne _08001D54
_08001D64:
	add sp, #0x20
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001D70: .4byte 0x000007DD

	thumb_func_start sub_8001D74
sub_8001D74: @ 0x08001D74
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8001C0C
	ldr r0, _08001DCC @ =0x000007DA
	adds r2, r4, r0
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08001DA0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r3, #0x82
	lsls r3, r3, #8
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
_08001DA0:
	ldr r1, _08001DCC @ =0x000007DA
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08001DB2
	ldr r0, _08001DD0 @ =0x00008110
	strh r0, [r2]
_08001DB2:
	ldr r0, _08001DD4 @ =0x0300002C
	ldrb r1, [r0]
	adds r0, r4, #0
	movs r2, #1
	bl sub_804AE58
	ldr r1, _08001DD8 @ =0x0203EBE4
	movs r0, #0
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08001DCC: .4byte 0x000007DA
_08001DD0: .4byte 0x00008110
_08001DD4: .4byte 0x0300002C
_08001DD8: .4byte 0x0203EBE4

	thumb_func_start sub_8001DDC
sub_8001DDC: @ 0x08001DDC
	push {r4, lr}
	ldr r0, _08001DF8 @ =0x0203EBE8
	ldr r4, [r0]
	ldr r1, _08001DFC @ =0x000011F8
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	beq _08001E2C
	cmp r0, #1
	bgt _08001E00
	cmp r0, #0
	beq _08001E0A
	b _08001E92
	.align 2, 0
_08001DF8: .4byte 0x0203EBE8
_08001DFC: .4byte 0x000011F8
_08001E00:
	cmp r0, #2
	beq _08001E50
	cmp r0, #3
	beq _08001E74
	b _08001E92
_08001E0A:
	ldr r3, _08001E24 @ =0x000011F4
	adds r2, r4, r3
	ldr r0, [r2]
	asrs r0, r0, #2
	adds r3, #0xc
	adds r1, r4, r3
	ldrh r3, [r1]
	strh r0, [r1]
	ldr r0, [r2]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	ldr r2, _08001E28 @ =0x00001202
	b _08001E8C
	.align 2, 0
_08001E24: .4byte 0x000011F4
_08001E28: .4byte 0x00001202
_08001E2C:
	ldr r3, _08001E48 @ =0x000011F4
	adds r2, r4, r3
	ldr r0, [r2]
	asrs r0, r0, #2
	adds r3, #0x12
	adds r1, r4, r3
	ldrh r3, [r1]
	strh r0, [r1]
	ldr r0, [r2]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	ldr r2, _08001E4C @ =0x00001208
	b _08001E8C
	.align 2, 0
_08001E48: .4byte 0x000011F4
_08001E4C: .4byte 0x00001208
_08001E50:
	ldr r3, _08001E6C @ =0x000011F4
	adds r2, r4, r3
	ldr r0, [r2]
	asrs r0, r0, #2
	adds r3, #0x18
	adds r1, r4, r3
	ldrh r3, [r1]
	strh r0, [r1]
	ldr r0, [r2]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	ldr r2, _08001E70 @ =0x0000120E
	b _08001E8C
	.align 2, 0
_08001E6C: .4byte 0x000011F4
_08001E70: .4byte 0x0000120E
_08001E74:
	ldr r3, _08001FA8 @ =0x000011F4
	adds r2, r4, r3
	ldr r0, [r2]
	asrs r0, r0, #2
	adds r3, #0x1e
	adds r1, r4, r3
	ldrh r3, [r1]
	strh r0, [r1]
	ldr r0, [r2]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	ldr r2, _08001FAC @ =0x00001214
_08001E8C:
	adds r1, r4, r2
	ldrh r2, [r1]
	strh r0, [r1]
_08001E92:
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	movs r0, #0xc0
	lsls r0, r0, #7
	ands r0, r1
	strh r0, [r2]
	ldr r3, _08001FB0 @ =0x000011FC
	adds r0, r4, r3
	ldrh r1, [r0]
	ldr r0, _08001FB4 @ =0x00009FFF
	ands r0, r1
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08001FB8 @ =0x04000008
	ldr r2, _08001FBC @ =0x000011FE
	adds r0, r4, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #8
	adds r3, #4
	adds r0, r4, r3
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r2, #4
	adds r0, r4, r2
	ldrh r0, [r0]
	strh r0, [r1]
	subs r1, #8
	adds r3, #4
	adds r0, r4, r3
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0xa
	adds r2, #4
	adds r0, r4, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r3, #4
	adds r0, r4, r3
	ldrh r0, [r0]
	strh r0, [r1]
	subs r1, #0xa
	adds r2, #4
	adds r0, r4, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0xc
	adds r3, #4
	adds r0, r4, r3
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r2, #4
	adds r0, r4, r2
	ldrh r0, [r0]
	strh r0, [r1]
	subs r1, #0xc
	adds r3, #4
	adds r0, r4, r3
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0xe
	adds r2, #4
	adds r0, r4, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r3, #4
	adds r0, r4, r3
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0x32
	adds r2, #4
	adds r0, r4, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r3, #4
	adds r0, r4, r3
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r2, #4
	adds r0, r4, r2
	ldrh r0, [r0]
	strh r0, [r1]
	subs r1, #0x34
	adds r3, #4
	adds r0, r4, r3
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r2, #4
	adds r0, r4, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r3, #4
	adds r0, r4, r3
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r2, #4
	adds r0, r4, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r3, #4
	adds r0, r4, r3
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r2, #4
	adds r0, r4, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r3, #4
	adds r0, r4, r3
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	adds r2, #4
	adds r0, r4, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0x1e
	adds r3, #4
	adds r0, r4, r3
	ldrh r0, [r0]
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08001FA8: .4byte 0x000011F4
_08001FAC: .4byte 0x00001214
_08001FB0: .4byte 0x000011FC
_08001FB4: .4byte 0x00009FFF
_08001FB8: .4byte 0x04000008
_08001FBC: .4byte 0x000011FE

	thumb_func_start sub_8001FC0
sub_8001FC0: @ 0x08001FC0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	movs r4, #0
	movs r1, #0
	ldr r2, _080020B8 @ =0x000010A4
	add r2, sb
_08001FD2:
	lsls r0, r4, #1
	adds r7, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r6, #2
_08001FDE:
	str r1, [r0]
	str r1, [r0, #0x3c]
	adds r0, #4
	subs r6, #1
	cmp r6, #0
	bge _08001FDE
	adds r4, r7, #0
	cmp r4, #4
	ble _08001FD2
	mov r1, sb
	ldr r0, [r1, #8]
	cmp r0, #0
	bne _080020CC
	movs r6, #0
	ldr r4, _080020BC @ =0x0000111C
	add r4, sb
_08001FFE:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_805DE68
	stm r4!, {r0}
	adds r6, #1
	cmp r6, #2
	ble _08001FFE
	ldr r1, _080020C0 @ =0x00001128
	add r1, sb
	movs r0, #1
	str r0, [r1]
	movs r6, #0
	ldr r4, _080020C0 @ =0x00001128
	add r4, sb
_0800201C:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_805DE68
	cmp r0, #0
	bne _0800202A
	str r0, [r4]
_0800202A:
	adds r6, #1
	cmp r6, #2
	ble _0800201C
	mov r2, sb
	ldr r0, [r2, #0x10]
	cmp r0, #0
	blt _0800208A
	cmp r0, #1
	ble _08002040
	cmp r0, #5
	bne _0800208A
_08002040:
	movs r6, #0
	ldr r4, _080020C4 @ =0x000010D4
	add r4, sb
_08002046:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_805DE68
	stm r4!, {r0}
	adds r6, #1
	cmp r6, #2
	ble _08002046
	movs r4, #0
	movs r0, #0x87
	lsls r0, r0, #5
	add r0, sb
	mov r8, r0
_08002060:
	movs r6, #0
	lsls r0, r4, #1
	adds r7, r4, #1
	lsls r5, r4, #0x18
	adds r0, r0, r4
	lsls r4, r0, #2
_0800206C:
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	lsrs r0, r5, #0x18
	bl sub_805DE38
	mov r2, r8
	adds r1, r2, r4
	str r0, [r1]
	adds r4, #4
	adds r6, #1
	cmp r6, #2
	ble _0800206C
	adds r4, r7, #0
	cmp r4, #4
	ble _08002060
_0800208A:
	movs r6, #0
_0800208C:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_805DE68
	cmp r0, #0
	beq _080020AE
	lsls r0, r6, #2
	movs r1, #1
	movs r4, #4
	add r0, sb
	ldr r2, _080020C8 @ =0x00001110
	adds r0, r0, r2
_080020A4:
	str r1, [r0]
	subs r0, #0xc
	subs r4, #1
	cmp r4, #0
	bge _080020A4
_080020AE:
	adds r6, #1
	cmp r6, #2
	ble _0800208C
	b _08002178
	.align 2, 0
_080020B8: .4byte 0x000010A4
_080020BC: .4byte 0x0000111C
_080020C0: .4byte 0x00001128
_080020C4: .4byte 0x000010D4
_080020C8: .4byte 0x00001110
_080020CC:
	movs r6, #0
	ldr r4, _080021B8 @ =0x0000111C
	add r4, sb
_080020D2:
	adds r0, r6, #0
	bl sub_8013FA0
	stm r4!, {r0}
	adds r6, #1
	cmp r6, #2
	ble _080020D2
	ldr r1, _080021BC @ =0x00001128
	add r1, sb
	movs r0, #1
	str r0, [r1]
	movs r6, #0
	ldr r4, _080021BC @ =0x00001128
	add r4, sb
_080020EE:
	adds r0, r6, #0
	bl sub_8013FA0
	cmp r0, #0
	bne _080020FA
	str r0, [r4]
_080020FA:
	adds r6, #1
	cmp r6, #2
	ble _080020EE
	mov r1, sb
	ldr r0, [r1, #0x10]
	cmp r0, #0
	beq _0800210C
	cmp r0, #2
	bne _08002150
_0800210C:
	movs r6, #0
	ldr r4, _080021C0 @ =0x000010D4
	add r4, sb
_08002112:
	adds r0, r6, #0
	bl sub_8013FA0
	stm r4!, {r0}
	adds r6, #1
	cmp r6, #2
	ble _08002112
	movs r4, #0
	movs r2, #0x87
	lsls r2, r2, #5
	add r2, sb
	mov r8, r2
_0800212A:
	movs r6, #0
	lsls r0, r4, #1
	adds r7, r4, #1
	adds r0, r0, r4
	lsls r5, r0, #2
_08002134:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_8013FF0
	mov r2, r8
	adds r1, r2, r5
	str r0, [r1]
	adds r5, #4
	adds r6, #1
	cmp r6, #2
	ble _08002134
	adds r4, r7, #0
	cmp r4, #4
	ble _0800212A
_08002150:
	movs r6, #0
_08002152:
	adds r0, r6, #0
	bl sub_8013FA0
	cmp r0, #0
	beq _08002172
	lsls r0, r6, #2
	movs r1, #1
	movs r4, #4
	add r0, sb
	ldr r2, _080021C4 @ =0x00001110
	adds r0, r0, r2
_08002168:
	str r1, [r0]
	subs r0, #0xc
	subs r4, #1
	cmp r4, #0
	bge _08002168
_08002172:
	adds r6, #1
	cmp r6, #2
	ble _08002152
_08002178:
	ldr r1, _080021C8 @ =0x0000112C
	add r1, sb
	movs r0, #0
	str r0, [r1]
	movs r4, #0
	movs r5, #0x87
	lsls r5, r5, #5
	add r5, sb
	movs r3, #1
_0800218A:
	lsls r0, r4, #1
	adds r7, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r2, r0, r5
	movs r6, #2
_08002196:
	ldr r0, [r2]
	cmp r0, #0
	bne _0800219E
	str r3, [r1]
_0800219E:
	adds r2, #4
	subs r6, #1
	cmp r6, #0
	bge _08002196
	adds r4, r7, #0
	cmp r4, #4
	ble _0800218A
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080021B8: .4byte 0x0000111C
_080021BC: .4byte 0x00001128
_080021C0: .4byte 0x000010D4
_080021C4: .4byte 0x00001110
_080021C8: .4byte 0x0000112C

	thumb_func_start spm_main
spm_main: @ 0x080021CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	movs r7, #0
	ldr r4, _08002214 @ =0x03002E20
	ldr r0, _08002218 @ =0x00000704
	adds r4, r4, r0
	ldr r1, _0800221C @ =0x0202A400
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r4, #0
	bl frmheap_init
	ldr r5, _08002220 @ =0x0203EBE8
	ldr r2, _08002224 @ =0x00001230
	adds r0, r4, #0
	movs r1, #1
	bl frmheap_calloc
	adds r6, r0, #0
	str r6, [r5]
	bl oam_init
	ldr r2, _08002228 @ =0x03002C80
	ldr r1, _0800222C @ =0x00001088
	adds r0, r6, r1
	ldrb r1, [r2, #1]
	str r1, [r0]
	cmp r1, #1
	bgt _08002230
	str r7, [r6, #8]
	str r7, [r6, #0xc]
	b _0800223A
	.align 2, 0
_08002214: .4byte 0x03002E20
_08002218: .4byte 0x00000704
_0800221C: .4byte 0x0202A400
_08002220: .4byte 0x0203EBE8
_08002224: .4byte 0x00001230
_08002228: .4byte 0x03002C80
_0800222C: .4byte 0x00001088
_08002230:
	subs r0, r1, #1
	str r0, [r6, #8]
	movs r0, #0
	ldrsb r0, [r2, r0]
	str r0, [r6, #0xc]
_0800223A:
	ldr r2, _080023D0 @ =0x0000109C
	adds r0, r6, r2
	movs r1, #0
	str r1, [r0]
	movs r3, #0x85
	lsls r3, r3, #5
	adds r0, r6, r3
	str r1, [r0]
	movs r0, #0x24
	adds r0, r0, r6
	mov sb, r0
	add r5, sp, #0x10
	mov r1, sb
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r6, #0
	adds r0, #0x30
_0800225C:
	str r2, [r0]
	subs r0, #4
	cmp r0, r1
	bge _0800225C
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #4]
	str r0, [r6, #0x10]
	str r0, [r6, #0x14]
	str r0, [r6, #0x18]
	str r0, [r6, #0x1c]
	str r0, [r6, #0x20]
	ldr r2, _080023D4 @ =0x00000D84
	adds r1, r6, r2
	movs r0, #1
	str r0, [r1]
	movs r4, #0
	str r4, [r6]
	str r4, [r6, #0x50]
	ldr r3, _080023D8 @ =0x000011E4
	adds r0, r6, r3
	str r4, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r1, [r2]
	ldr r0, _080023DC @ =0x00009FFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _080023E0 @ =0x04000040
	movs r2, #0xf0
	strh r2, [r0]
	adds r0, #4
	movs r1, #0xa0
	strh r1, [r0]
	subs r0, #2
	strh r2, [r0]
	adds r0, #4
	strh r1, [r0]
	adds r0, #2
	ldr r2, _080023E4 @ =0x00003F3F
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	bl main_frameProc
	strh r4, [r5]
	ldr r1, _080023E8 @ =0x02020400
	ldr r2, _080023EC @ =0x01000800
	adds r0, r5, #0
	bl CpuSet
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _080022CC
	b _0800243E
_080022CC:
	movs r1, #0
	movs r5, #0x13
	ldr r3, _080023F0 @ =0x0000117C
	adds r0, r6, r3
_080022D4:
	str r1, [r0]
	subs r0, #4
	subs r5, #1
	cmp r5, #0
	bge _080022D4
	ldr r0, _080023F4 @ =0x000011BC
	adds r1, r6, r0
	movs r0, #0
	strb r0, [r1]
	movs r5, #0
_080022E8:
	adds r0, r5, #0
	bl track_getMKSCTrack
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_805CE3C
	lsls r0, r0, #0x18
	asrs r4, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _0800233C
	lsls r1, r5, #2
	ldr r2, _080023F8 @ =0x00001130
	adds r0, r6, r2
	adds r0, r0, r1
	movs r1, #1
	str r1, [r0]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_805DE90
	movs r3, #0x8c
	lsls r3, r3, #5
	adds r1, r6, r3
	adds r1, r1, r5
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_805DEB8
	lsls r2, r5, #1
	ldr r3, _080023FC @ =0x00001194
	adds r1, r6, r3
	adds r1, r1, r2
	strh r0, [r1]
	ldr r0, _080023F4 @ =0x000011BC
	adds r1, r6, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0800233C:
	adds r5, #1
	cmp r5, #0x13
	ble _080022E8
	movs r1, #0
	movs r5, #1
	ldr r2, _08002400 @ =0x000011C4
	adds r0, r6, r2
_0800234A:
	str r1, [r0]
	subs r0, #4
	subs r5, #1
	cmp r5, #0
	bge _0800234A
	ldr r3, _08002404 @ =0x000011E2
	adds r1, r6, r3
	movs r0, #0
	strb r0, [r1]
	movs r5, #0
_0800235E:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_805DC28
	lsls r0, r0, #0x18
	asrs r4, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	adds r7, r5, #1
	cmp r4, r0
	beq _08002438
	lsls r1, r5, #2
	movs r2, #0x8e
	lsls r2, r2, #5
	adds r0, r6, r2
	adds r0, r0, r1
	movs r1, #1
	str r1, [r0]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_805DE90
	ldr r3, _08002408 @ =0x000011CA
	adds r1, r6, r3
	adds r1, r1, r5
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_805DEB8
	lsls r2, r5, #1
	ldr r3, _0800240C @ =0x000011CC
	adds r1, r6, r3
	adds r1, r1, r2
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_805DF18
	ldr r2, _08002410 @ =0x000011D0
	adds r1, r6, r2
	adds r1, r1, r5
	strb r0, [r1]
	lsls r1, r5, #3
	ldr r3, _08002414 @ =0x000011D2
	adds r1, r1, r3
	adds r1, r6, r1
	adds r0, r4, #0
	bl sub_805DEE0
	ldr r0, _08002404 @ =0x000011E2
	adds r1, r6, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r4, #0
	b _0800241A
	.align 2, 0
_080023D0: .4byte 0x0000109C
_080023D4: .4byte 0x00000D84
_080023D8: .4byte 0x000011E4
_080023DC: .4byte 0x00009FFF
_080023E0: .4byte 0x04000040
_080023E4: .4byte 0x00003F3F
_080023E8: .4byte 0x02020400
_080023EC: .4byte 0x01000800
_080023F0: .4byte 0x0000117C
_080023F4: .4byte 0x000011BC
_080023F8: .4byte 0x00001130
_080023FC: .4byte 0x00001194
_08002400: .4byte 0x000011C4
_08002404: .4byte 0x000011E2
_08002408: .4byte 0x000011CA
_0800240C: .4byte 0x000011CC
_08002410: .4byte 0x000011D0
_08002414: .4byte 0x000011D2
_08002418:
	adds r4, #1
_0800241A:
	cmp r4, #0x13
	bgt _08002430
	adds r0, r4, #0
	bl track_getMKSCTrack
	ldr r2, _08002490 @ =0x000011D0
	adds r1, r6, r2
	adds r1, r1, r5
	ldrb r1, [r1]
	cmp r0, r1
	bne _08002418
_08002430:
	ldr r3, _08002494 @ =0x000011C8
	adds r0, r6, r3
	adds r0, r0, r5
	strb r4, [r0]
_08002438:
	adds r5, r7, #0
	cmp r5, #1
	ble _0800235E
_0800243E:
	bl main_frameProc
	ldr r4, _08002498 @ =sub_8001DDC
	ldr r5, _0800249C @ =0x03002E20
	movs r0, #1
	movs r1, #2
	rsbs r1, r1, #0
	bl irq_updateMask
	str r4, [r5, #0xc]
	movs r0, #2
	ldr r1, _080024A0 @ =0x00010001
	bl irq_updateMask
	movs r1, #3
	rsbs r1, r1, #0
	movs r0, #1
	bl irq_updateMask
	ldr r1, _080024A4 @ =main_dummyIrqHandler
	movs r0, #1
	bl irq_setHandler
	ldr r1, _080024A8 @ =sub_800C680
	movs r0, #0x4f
	bl vcount_register
	movs r0, #0x24
	adds r0, r0, r5
	mov r8, r0
	ldr r0, _080024AC @ =0x0203EBE4
	ldrh r0, [r0]
	cmp r0, #0x66
	bne _08002484
	b _080025CC
_08002484:
	cmp r0, #0x66
	bgt _080024B0
	cmp r0, #0x65
	beq _080024BE
	b _080026EE
	.align 2, 0
_08002490: .4byte 0x000011D0
_08002494: .4byte 0x000011C8
_08002498: .4byte sub_8001DDC
_0800249C: .4byte 0x03002E20
_080024A0: .4byte 0x00010001
_080024A4: .4byte main_dummyIrqHandler
_080024A8: .4byte sub_800C680
_080024AC: .4byte 0x0203EBE4
_080024B0:
	cmp r0, #0x67
	bne _080024B6
	b _080026AC
_080024B6:
	cmp r0, #0x69
	bne _080024BC
	b _080026C0
_080024BC:
	b _080026EE
_080024BE:
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r1, _080024E4 @ =0x000007FE
	adds r0, r5, r1
	ldrh r2, [r0]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r1, r2
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _0800250A
	cmp r1, r0
	bgt _080024E8
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _080024FA
	b _08002516
	.align 2, 0
_080024E4: .4byte 0x000007FE
_080024E8:
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	beq _0800250E
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	beq _08002512
	b _08002516
_080024FA:
	movs r0, #0x10
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08002514
	movs r0, #5
	b _08002514
_0800250A:
	movs r0, #1
	b _08002514
_0800250E:
	movs r0, #2
	b _08002514
_08002512:
	movs r0, #3
_08002514:
	str r0, [r6, #0x10]
_08002516:
	ldr r0, _08002538 @ =0x000007DA
	add r0, r8
	ldrh r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _08002562
	cmp r1, r0
	bgt _0800253C
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08002544
	b _08002566
	.align 2, 0
_08002538: .4byte 0x000007DA
_0800253C:
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	bne _08002566
_08002544:
	ldr r0, _08002558 @ =0x000007DC
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #1
	beq _08002564
	cmp r0, #1
	bgt _0800255C
	cmp r0, #0
	beq _08002564
	b _08002566
	.align 2, 0
_08002558: .4byte 0x000007DC
_0800255C:
	cmp r0, #2
	bne _08002566
	b _08002564
_08002562:
	movs r0, #0
_08002564:
	str r0, [r6, #0x14]
_08002566:
	ldr r4, _080025A4 @ =0x0300002C
	ldr r0, [r6, #0xc]
	adds r0, r0, r4
	ldrb r0, [r0]
	bl sub_800EDB0
	str r0, [r6, #0x18]
	movs r5, #0
	adds r7, r4, #0
	mov r4, sb
_0800257A:
	adds r0, r5, r7
	ldrb r0, [r0]
	bl sub_800EDB0
	stm r4!, {r0}
	adds r5, #1
	cmp r5, #3
	ble _0800257A
	ldr r0, _080025A8 @ =0x000007DD
	add r0, r8
	ldrb r0, [r0]
	bl track_isRetroTrack
	adds r1, r0, #0
	cmp r1, #0
	beq _080025B0
	ldr r2, _080025AC @ =0x000011E4
	adds r1, r6, r2
	movs r0, #1
	str r0, [r1]
	b _080025B6
	.align 2, 0
_080025A4: .4byte 0x0300002C
_080025A8: .4byte 0x000007DD
_080025AC: .4byte 0x000011E4
_080025B0:
	ldr r3, _080025C4 @ =0x000011E4
	adds r0, r6, r3
	str r1, [r0]
_080025B6:
	ldr r1, _080025C8 @ =0x00000D84
	adds r0, r6, r1
	movs r1, #1
	str r1, [r0]
	movs r0, #2
	b _080026DC
	.align 2, 0
_080025C4: .4byte 0x000011E4
_080025C8: .4byte 0x00000D84
_080025CC:
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r2, _080025F4 @ =0x000007FE
	adds r0, r5, r2
	ldrh r2, [r0]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r1, r2
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _0800261A
	cmp r1, r0
	bgt _080025F8
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _0800260A
	b _08002626
	.align 2, 0
_080025F4: .4byte 0x000007FE
_080025F8:
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	beq _0800261E
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	beq _08002622
	b _08002626
_0800260A:
	movs r0, #0x10
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08002624
	movs r0, #5
	b _08002624
_0800261A:
	movs r0, #1
	b _08002624
_0800261E:
	movs r0, #2
	b _08002624
_08002622:
	movs r0, #3
_08002624:
	str r0, [r6, #0x10]
_08002626:
	ldr r0, _08002648 @ =0x000007DA
	add r0, r8
	ldrh r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _08002672
	cmp r1, r0
	bgt _0800264C
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08002654
	b _08002676
	.align 2, 0
_08002648: .4byte 0x000007DA
_0800264C:
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	bne _08002676
_08002654:
	ldr r0, _08002668 @ =0x000007DC
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #1
	beq _08002674
	cmp r0, #1
	bgt _0800266C
	cmp r0, #0
	beq _08002674
	b _08002676
	.align 2, 0
_08002668: .4byte 0x000007DC
_0800266C:
	cmp r0, #2
	bne _08002676
	b _08002674
_08002672:
	movs r0, #0
_08002674:
	str r0, [r6, #0x14]
_08002676:
	ldr r4, _080026A4 @ =0x0300002C
	ldr r0, [r6, #0xc]
	adds r0, r0, r4
	ldrb r0, [r0]
	bl sub_800EDB0
	str r0, [r6, #0x18]
	movs r5, #0
	adds r7, r4, #0
	mov r4, sb
_0800268A:
	adds r0, r5, r7
	ldrb r0, [r0]
	bl sub_800EDB0
	stm r4!, {r0}
	adds r5, #1
	cmp r5, #3
	ble _0800268A
	ldr r3, _080026A8 @ =0x00000D84
	adds r1, r6, r3
	movs r0, #1
	str r0, [r1]
	b _080026DC
	.align 2, 0
_080026A4: .4byte 0x0300002C
_080026A8: .4byte 0x00000D84
_080026AC:
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	ldr r0, _080026BC @ =0x00000D84
	adds r1, r6, r0
	movs r0, #1
	str r0, [r1]
	movs r0, #0
	b _080026F6
	.align 2, 0
_080026BC: .4byte 0x00000D84
_080026C0:
	ldr r0, [r6, #8]
	str r0, [r6, #4]
	movs r1, #1
	str r1, [r6, #0x10]
	movs r0, #0
	str r0, [r6, #0x14]
	movs r0, #0x10
	str r0, [r6, #0x40]
	str r0, [r6, #0x3c]
	str r0, [r6, #0x38]
	ldr r2, _080026E4 @ =0x00000D84
	adds r0, r6, r2
	str r1, [r0]
	movs r0, #3
_080026DC:
	str r0, [r6]
	movs r4, #1
	b _080026FA
	.align 2, 0
_080026E4: .4byte 0x00000D84
_080026E8:
	movs r0, #5
	str r0, [r6]
	b _08002810
_080026EE:
	ldr r3, _0800274C @ =0x00000D84
	adds r1, r6, r3
	movs r0, #0
	str r0, [r1]
_080026F6:
	str r0, [r6]
	movs r4, #0
_080026FA:
	ldr r1, _08002750 @ =0x0203EBE4
	movs r0, #0
	strh r0, [r1]
	adds r0, r6, #0
	bl sub_8001B60
	movs r0, #2
	bl m4aSongNumStart
	ldr r1, _0800274C @ =0x00000D84
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08002738
	ldr r0, _08002754 @ =0x03002C80
	ldrb r1, [r0, #1]
	cmp r1, #1
	bgt _08002720
	movs r1, #1
_08002720:
	ldr r0, _08002758 @ =0x03002E20
	ldr r2, _0800275C @ =0x000007FB
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, r1
	beq _08002738
	ldr r3, _08002760 @ =0x0000109C
	adds r0, r6, r3
	movs r1, #1
	str r1, [r0]
	movs r0, #5
	str r0, [r6]
_08002738:
	movs r7, #0
_0800273A:
	ldr r0, [r6]
	cmp r0, #5
	bhi _080027FC
	lsls r0, r0, #2
	ldr r1, _08002764 @ =_08002768
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800274C: .4byte 0x00000D84
_08002750: .4byte 0x0203EBE4
_08002754: .4byte 0x03002C80
_08002758: .4byte 0x03002E20
_0800275C: .4byte 0x000007FB
_08002760: .4byte 0x0000109C
_08002764: .4byte _08002768
_08002768: @ jump table
	.4byte _08002780 @ case 0
	.4byte _080027A4 @ case 1
	.4byte _080027C4 @ case 2
	.4byte _080027D4 @ case 3
	.4byte _080027FC @ case 4
	.4byte _08002800 @ case 5
_08002780:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_8004860
	cmp r0, #0
	beq _080027F4
	ldr r0, [r6, #0x10]
	cmp r0, #1
	bne _0800279C
	ldr r0, [r6, #0x14]
	cmp r0, #1
	bne _0800279C
	movs r0, #3
	b _0800279E
_0800279C:
	movs r0, #1
_0800279E:
	str r0, [r6]
	movs r4, #0
	b _08002800
_080027A4:
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #1
	bl sub_8007138
	cmp r0, #0
	beq _080027E2
	movs r0, #2
	str r0, [r6]
	movs r4, #0
	ldr r1, _080027C0 @ =0x000011E4
	adds r0, r6, r1
	str r4, [r0]
	b _08002800
	.align 2, 0
_080027C0: .4byte 0x000011E4
_080027C4:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_800AF94
	cmp r0, #0
	bne _080027EE
	movs r0, #1
	b _080027E2
_080027D4:
	adds r0, r6, #0
	bl sub_800D750
	adds r1, r0, #0
	cmp r1, #0
	beq _080027E8
	movs r0, #0
_080027E2:
	str r0, [r6]
	movs r4, #1
	b _08002800
_080027E8:
	ldr r2, _080027F8 @ =0x000011E4
	adds r0, r6, r2
	str r1, [r0]
_080027EE:
	movs r0, #4
	str r0, [r6]
	movs r4, #0
_080027F4:
	movs r7, #1
	b _08002800
	.align 2, 0
_080027F8: .4byte 0x000011E4
_080027FC:
	movs r0, #0
	str r0, [r6]
_08002800:
	ldr r3, _080028FC @ =0x0000109C
	adds r0, r6, r3
	ldr r0, [r0]
	cmp r0, #0
	beq _0800280C
	b _080026E8
_0800280C:
	cmp r7, #0
	beq _0800273A
_08002810:
	ldr r4, _08002900 @ =gMPlayTable
	ldr r0, _08002904 @ =gSongTable
	ldrh r1, [r0, #0x14]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _0800282A
	bl main_frameProc
_0800282A:
	ldr r0, _08002908 @ =0x0000000B
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0800284A
	adds r5, r4, #0
	adds r4, r0, #0
_08002838:
	ldr r0, [r5]
	ldr r1, _08002904 @ =gSongTable
	ldr r1, [r1, #8]
	bl MPlayStart
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _08002838
_0800284A:
	bl main_frameProc
	movs r5, #0
	ldr r4, _0800290C @ =0x03002E20
	movs r0, #1
	movs r1, #2
	rsbs r1, r1, #0
	bl irq_updateMask
	str r5, [r4, #0xc]
	movs r0, #2
	ldr r1, _08002910 @ =0x00010001
	bl irq_updateMask
	movs r1, #3
	rsbs r1, r1, #0
	movs r0, #1
	bl irq_updateMask
	ldr r1, _08002914 @ =main_dummyIrqHandler
	movs r0, #1
	bl irq_setHandler
	movs r1, #5
	rsbs r1, r1, #0
	movs r0, #1
	bl irq_updateMask
	bl main_frameProc
	ldr r0, [r6]
	str r0, [sp, #0x14]
	ldr r7, [r6, #8]
	ldr r1, [r6, #0x10]
	mov r8, r1
	ldr r4, [r6, #0x14]
	ldr r2, [r6, #0x18]
	str r2, [sp, #0x18]
	mov r2, sb
	mov r1, sp
	movs r5, #3
_0800289C:
	ldm r2!, {r0}
	stm r1!, {r0}
	subs r5, #1
	cmp r5, #0
	bge _0800289C
	ldr r3, [r6, #0x1c]
	mov sl, r3
	ldr r0, [r6, #0x20]
	mov sb, r0
	ldr r1, _08002918 @ =0x000011E4
	adds r0, r6, r1
	ldr r0, [r0]
	str r0, [sp, #0x1c]
	ldr r5, _0800290C @ =0x03002E20
	adds r6, r5, #0
	adds r6, #0x24
	adds r0, r6, #0
	bl sub_8048C74
	ldr r1, _0800291C @ =0x0300000C
	movs r0, #3
	strb r0, [r1]
	movs r0, #0
	bl sub_8015268
	movs r0, #0
	bl sub_801528C
	movs r0, #0
	bl sub_80152F8
	movs r0, #0
	bl sub_80152D4
	bl main_frameProc
	ldr r2, [sp, #0x14]
	cmp r2, #4
	beq _080028EC
	b _08002B18
_080028EC:
	cmp r7, #1
	beq _08002938
	cmp r7, #1
	bgt _08002920
	cmp r7, #0
	beq _0800292A
	b _08002962
	.align 2, 0
_080028FC: .4byte 0x0000109C
_08002900: .4byte gMPlayTable
_08002904: .4byte gSongTable
_08002908: .4byte 0x0000000B
_0800290C: .4byte 0x03002E20
_08002910: .4byte 0x00010001
_08002914: .4byte main_dummyIrqHandler
_08002918: .4byte 0x000011E4
_0800291C: .4byte 0x0300000C
_08002920:
	cmp r7, #2
	beq _08002948
	cmp r7, #3
	beq _08002958
	b _08002962
_0800292A:
	ldr r3, _08002934 @ =0x000007FB
	adds r1, r5, r3
	movs r0, #1
	strb r0, [r1]
	b _08002962
	.align 2, 0
_08002934: .4byte 0x000007FB
_08002938:
	ldr r0, _08002944 @ =0x000007FB
	adds r1, r5, r0
	movs r0, #2
	strb r0, [r1]
	b _08002962
	.align 2, 0
_08002944: .4byte 0x000007FB
_08002948:
	ldr r2, _08002954 @ =0x000007FB
	adds r1, r5, r2
	movs r0, #3
	strb r0, [r1]
	b _08002962
	.align 2, 0
_08002954: .4byte 0x000007FB
_08002958:
	ldr r3, _08002974 @ =0x000007FB
	adds r0, r5, r3
	mov r1, sp
	ldrb r1, [r1, #0x14]
	strb r1, [r0]
_08002962:
	mov r2, r8
	cmp r2, #5
	bhi _080029EE
	lsls r0, r2, #2
	ldr r1, _08002978 @ =_0800297C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002974: .4byte 0x000007FB
_08002978: .4byte _0800297C
_0800297C: @ jump table
	.4byte _08002994 @ case 0
	.4byte _080029A4 @ case 1
	.4byte _080029B4 @ case 2
	.4byte _080029C4 @ case 3
	.4byte _080029D4 @ case 4
	.4byte _080029E4 @ case 5
_08002994:
	ldr r3, _080029A0 @ =0x000007DA
	adds r1, r6, r3
	movs r0, #0xc0
	lsls r0, r0, #1
	b _080029EC
	.align 2, 0
_080029A0: .4byte 0x000007DA
_080029A4:
	ldr r0, _080029B0 @ =0x000007DA
	adds r1, r6, r0
	movs r0, #0x80
	lsls r0, r0, #2
	b _080029EC
	.align 2, 0
_080029B0: .4byte 0x000007DA
_080029B4:
	ldr r2, _080029C0 @ =0x000007DA
	adds r1, r6, r2
	movs r0, #0x80
	lsls r0, r0, #3
	b _080029EC
	.align 2, 0
_080029C0: .4byte 0x000007DA
_080029C4:
	ldr r3, _080029D0 @ =0x000007DA
	adds r1, r6, r3
	movs r0, #0x80
	lsls r0, r0, #4
	b _080029EC
	.align 2, 0
_080029D0: .4byte 0x000007DA
_080029D4:
	ldr r0, _080029E0 @ =0x000007DA
	adds r1, r6, r0
	movs r0, #0xc2
	lsls r0, r0, #8
	b _080029EC
	.align 2, 0
_080029E0: .4byte 0x000007DA
_080029E4:
	ldr r2, _08002A00 @ =0x000007DA
	adds r1, r6, r2
	movs r0, #0x88
	lsls r0, r0, #1
_080029EC:
	strh r0, [r1]
_080029EE:
	mov r3, r8
	cmp r3, #2
	beq _08002A0A
	cmp r3, #2
	bgt _08002A04
	cmp r3, #0
	beq _08002A0A
	b _08002A3A
	.align 2, 0
_08002A00: .4byte 0x000007DA
_08002A04:
	mov r0, r8
	cmp r0, #5
	bne _08002A3A
_08002A0A:
	cmp r4, #1
	beq _08002A28
	cmp r4, #1
	bgt _08002A18
	cmp r4, #0
	beq _08002A1E
	b _08002A3A
_08002A18:
	cmp r4, #2
	beq _08002A34
	b _08002A3A
_08002A1E:
	ldr r1, _08002A24 @ =0x000007DC
	adds r0, r6, r1
	b _08002A38
	.align 2, 0
_08002A24: .4byte 0x000007DC
_08002A28:
	ldr r2, _08002A30 @ =0x000007DC
	adds r0, r6, r2
	b _08002A38
	.align 2, 0
_08002A30: .4byte 0x000007DC
_08002A34:
	ldr r3, _08002A50 @ =0x000007DC
	adds r0, r6, r3
_08002A38:
	strb r4, [r0]
_08002A3A:
	cmp r7, #0
	bne _08002A54
	ldr r0, [sp, #0x18]
	bl spm_menuCharIdxToCharId
	adds r1, r0, #0
	adds r0, r6, #0
	movs r2, #1
	bl sub_804AE58
	b _08002A72
	.align 2, 0
_08002A50: .4byte 0x000007DC
_08002A54:
	cmp r7, #0
	blt _08002A72
	mov r4, sp
	adds r5, r7, #1
_08002A5C:
	ldm r4!, {r0}
	bl spm_menuCharIdxToCharId
	adds r1, r0, #0
	adds r0, r6, #0
	movs r2, #1
	bl sub_804AE58
	subs r5, #1
	cmp r5, #0
	bne _08002A5C
_08002A72:
	mov r0, r8
	cmp r0, #3
	beq _08002A82
	cmp r0, #3
	bgt _08002AD0
	cmp r0, #0
	beq _08002AA0
	b _08002AD0
_08002A82:
	mov r0, sb
	bl track_getBattleTrack
	ldr r2, _08002A98 @ =0x000007DD
	adds r1, r6, r2
	strb r0, [r1]
	ldr r0, _08002A9C @ =0x03000008
	mov r3, sb
	str r3, [r0]
	b _08002AFE
	.align 2, 0
_08002A98: .4byte 0x000007DD
_08002A9C: .4byte 0x03000008
_08002AA0:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _08002AB2
	mov r1, sl
	lsls r4, r1, #2
	adds r0, r4, #0
	bl track_getMKSCTrack
	b _08002ABC
_08002AB2:
	mov r3, sl
	lsls r4, r3, #2
	adds r0, r4, #0
	bl track_getRetroTrack
_08002ABC:
	ldr r2, _08002AC8 @ =0x000007DD
	adds r1, r6, r2
	strb r0, [r1]
	ldr r0, _08002ACC @ =0x03000008
	str r4, [r0]
	b _08002AFE
	.align 2, 0
_08002AC8: .4byte 0x000007DD
_08002ACC: .4byte 0x03000008
_08002AD0:
	ldr r3, [sp, #0x1c]
	cmp r3, #0
	bne _08002AE4
	mov r0, sl
	lsls r4, r0, #2
	mov r1, sb
	adds r0, r4, r1
	bl track_getMKSCTrack
	b _08002AF0
_08002AE4:
	mov r3, sl
	lsls r4, r3, #2
	mov r1, sb
	adds r0, r4, r1
	bl track_getRetroTrack
_08002AF0:
	ldr r2, _08002B24 @ =0x000007DD
	adds r1, r6, r2
	strb r0, [r1]
	mov r3, sb
	adds r1, r4, r3
	ldr r0, _08002B28 @ =0x03000008
	str r1, [r0]
_08002AFE:
	ldr r1, _08002B2C @ =0x000007DA
	adds r0, r6, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08002B12
	bl sub_805CFC4
_08002B12:
	ldr r2, [sp, #0x14]
	cmp r2, #4
	beq _08002B34
_08002B18:
	ldr r3, [sp, #0x14]
	cmp r3, #5
	beq _08002B3C
	ldr r0, _08002B30 @ =title_main
	b _08002B3E
	.align 2, 0
_08002B24: .4byte 0x000007DD
_08002B28: .4byte 0x03000008
_08002B2C: .4byte 0x000007DA
_08002B30: .4byte title_main
_08002B34:
	ldr r0, _08002B38 @ =race_main
	b _08002B3E
	.align 2, 0
_08002B38: .4byte race_main
_08002B3C:
	ldr r0, _08002B60 @ =error_main
_08002B3E:
	ldr r2, _08002B64 @ =0x03002E20
	str r0, [r2]
	ldrb r0, [r2, #8]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r2, #8]
	movs r0, #1
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08002B60: .4byte error_main
_08002B64: .4byte 0x03002E20

	thumb_func_start sub_8002B68
sub_8002B68: @ 0x08002B68
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_8001C0C
	ldr r1, _08002B90 @ =0x000007DA
	adds r0, r5, r1
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08002B98
	ldr r0, _08002B94 @ =0x0300002C
	ldrb r1, [r0]
	adds r0, r5, #0
	movs r2, #1
	bl sub_804AE58
	b _08002BBC
	.align 2, 0
_08002B90: .4byte 0x000007DA
_08002B94: .4byte 0x0300002C
_08002B98:
	movs r4, #0
	ldr r1, _08002BC8 @ =0x000007D7
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r4, r0
	bge _08002BBC
	ldr r7, _08002BCC @ =0x0300002C
	adds r6, r5, r1
_08002BA8:
	adds r0, r4, r7
	ldrb r1, [r0]
	adds r0, r5, #0
	movs r2, #1
	bl sub_804AE58
	adds r4, #1
	ldrb r0, [r6]
	cmp r4, r0
	blt _08002BA8
_08002BBC:
	ldr r1, _08002BD0 @ =0x0203EBE4
	movs r0, #0
	strh r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002BC8: .4byte 0x000007D7
_08002BCC: .4byte 0x0300002C
_08002BD0: .4byte 0x0203EBE4

	thumb_func_start sub_8002BD4
sub_8002BD4: @ 0x08002BD4
	push {lr}
	bl sub_8001C0C
	ldr r1, _08002BE4 @ =0x0203EBE4
	movs r0, #0x65
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08002BE4: .4byte 0x0203EBE4

	thumb_func_start sub_8002BE8
sub_8002BE8: @ 0x08002BE8
	push {lr}
	bl sub_8001C0C
	ldr r1, _08002BF8 @ =0x0203EBE4
	movs r0, #0x66
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08002BF8: .4byte 0x0203EBE4

	thumb_func_start sub_8002BFC
sub_8002BFC: @ 0x08002BFC
	push {lr}
	bl sub_8001C0C
	ldr r1, _08002C0C @ =0x0203EBE4
	movs r0, #0x67
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08002C0C: .4byte 0x0203EBE4

	thumb_func_start sub_8002C10
sub_8002C10: @ 0x08002C10
	push {lr}
	bl sub_8001C0C
	ldr r1, _08002C20 @ =0x0203EBE4
	movs r0, #0x69
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08002C20: .4byte 0x0203EBE4

	thumb_func_start sub_8002C24
sub_8002C24: @ 0x08002C24
	ldr r0, _08002C2C @ =0x03000008
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08002C2C: .4byte 0x03000008

	thumb_func_start sub_8002C30
sub_8002C30: @ 0x08002C30
	ldr r1, _08002C38 @ =0x03000008
	str r0, [r1]
	bx lr
	.align 2, 0
_08002C38: .4byte 0x03000008

	thumb_func_start sub_8002C3C
sub_8002C3C: @ 0x08002C3C
	ldr r0, _08002C44 @ =0x0300000C
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08002C44: .4byte 0x0300000C

	thumb_func_start sub_08002C48
sub_08002C48: @ 0x08002C48
	ldr r1, _08002C50 @ =0x0300000C
	strb r0, [r1]
	bx lr
	.align 2, 0
_08002C50: .4byte 0x0300000C

	thumb_func_start sub_8002C54
sub_8002C54: @ 0x08002C54
	ldr r1, _08002C64 @ =0x0300000C
	ldrb r0, [r1]
	cmp r0, #0
	beq _08002C60
	subs r0, #1
	strb r0, [r1]
_08002C60:
	bx lr
	.align 2, 0
_08002C64: .4byte 0x0300000C

	thumb_func_start sub_08002C68
sub_08002C68: @ 0x08002C68
	ldr r1, _08002C70 @ =0x0203EBE8
	str r0, [r1]
	bx lr
	.align 2, 0
_08002C70: .4byte 0x0203EBE8

	thumb_func_start sub_8002C74
sub_8002C74: @ 0x08002C74
	ldr r0, _08002C84 @ =0x03000010
	movs r1, #0x17
	ldrsb r1, [r0, r1]
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	bx lr
	.align 2, 0
_08002C84: .4byte 0x03000010

	thumb_func_start sub_8002C88
sub_8002C88: @ 0x08002C88
	ldr r2, _08002C9C @ =0x03000010
	ldr r0, [r0, #0x10]
	cmp r0, #5
	bhi _08002CDA
	lsls r0, r0, #2
	ldr r1, _08002CA0 @ =_08002CA4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002C9C: .4byte 0x03000010
_08002CA0: .4byte _08002CA4
_08002CA4: @ jump table
	.4byte _08002CBC @ case 0
	.4byte _08002CC8 @ case 1
	.4byte _08002CC2 @ case 2
	.4byte _08002CCE @ case 3
	.4byte _08002CDA @ case 4
	.4byte _08002CD4 @ case 5
_08002CBC:
	movs r0, #4
	ldrsb r0, [r2, r0]
	b _08002CDC
_08002CC2:
	movs r0, #5
	ldrsb r0, [r2, r0]
	b _08002CDC
_08002CC8:
	movs r0, #6
	ldrsb r0, [r2, r0]
	b _08002CDC
_08002CCE:
	movs r0, #7
	ldrsb r0, [r2, r0]
	b _08002CDC
_08002CD4:
	movs r0, #8
	ldrsb r0, [r2, r0]
	b _08002CDC
_08002CDA:
	movs r0, #0
_08002CDC:
	bx lr
	.align 2, 0

	thumb_func_start sub_8002CE0
sub_8002CE0: @ 0x08002CE0
	ldr r0, _08002CEC @ =0x03000010
	adds r0, #9
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	bx lr
	.align 2, 0
_08002CEC: .4byte 0x03000010

	thumb_func_start spm_getSavedCup
spm_getSavedCup: @ 0x08002CF0
	ldr r2, _08002D04 @ =0x03000010
	ldr r0, [r0, #0x10]
	cmp r0, #5
	bhi _08002D42
	lsls r0, r0, #2
	ldr r1, _08002D08 @ =_08002D0C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002D04: .4byte 0x03000010
_08002D08: .4byte _08002D0C
_08002D0C: @ jump table
	.4byte _08002D24 @ case 0
	.4byte _08002D30 @ case 1
	.4byte _08002D2A @ case 2
	.4byte _08002D36 @ case 3
	.4byte _08002D42 @ case 4
	.4byte _08002D3C @ case 5
_08002D24:
	movs r0, #0xd
	ldrsb r0, [r2, r0]
	b _08002D44
_08002D2A:
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	b _08002D44
_08002D30:
	movs r0, #0xf
	ldrsb r0, [r2, r0]
	b _08002D44
_08002D36:
	movs r0, #0x10
	ldrsb r0, [r2, r0]
	b _08002D44
_08002D3C:
	movs r0, #0x11
	ldrsb r0, [r2, r0]
	b _08002D44
_08002D42:
	movs r0, #0
_08002D44:
	bx lr
	.align 2, 0

	thumb_func_start spm_getSavedTrack
spm_getSavedTrack: @ 0x08002D48
	ldr r2, _08002D5C @ =0x03000010
	ldr r0, [r0, #0x10]
	cmp r0, #5
	bhi _08002D9A
	lsls r0, r0, #2
	ldr r1, _08002D60 @ =_08002D64
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002D5C: .4byte 0x03000010
_08002D60: .4byte _08002D64
_08002D64: @ jump table
	.4byte _08002D7C @ case 0
	.4byte _08002D88 @ case 1
	.4byte _08002D82 @ case 2
	.4byte _08002D8E @ case 3
	.4byte _08002D9A @ case 4
	.4byte _08002D94 @ case 5
_08002D7C:
	movs r0, #0x12
	ldrsb r0, [r2, r0]
	b _08002D9C
_08002D82:
	movs r0, #0x13
	ldrsb r0, [r2, r0]
	b _08002D9C
_08002D88:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	b _08002D9C
_08002D8E:
	movs r0, #0x15
	ldrsb r0, [r2, r0]
	b _08002D9C
_08002D94:
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	b _08002D9C
_08002D9A:
	movs r0, #0
_08002D9C:
	bx lr
	.align 2, 0

	thumb_func_start sub_8002DA0
sub_8002DA0: @ 0x08002DA0
	ldr r2, _08002DAC @ =0x03000010
	movs r0, #0x17
	ldrsb r0, [r2, r0]
	adds r0, r0, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_08002DAC: .4byte 0x03000010

	thumb_func_start sub_8002DB0
sub_8002DB0: @ 0x08002DB0
	adds r2, r1, #0
	ldr r3, _08002DC4 @ =0x03000010
	ldr r0, [r0, #0x10]
	cmp r0, #5
	bhi _08002DF6
	lsls r0, r0, #2
	ldr r1, _08002DC8 @ =_08002DCC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002DC4: .4byte 0x03000010
_08002DC8: .4byte _08002DCC
_08002DCC: @ jump table
	.4byte _08002DE4 @ case 0
	.4byte _08002DEC @ case 1
	.4byte _08002DE8 @ case 2
	.4byte _08002DF0 @ case 3
	.4byte _08002DF6 @ case 4
	.4byte _08002DF4 @ case 5
_08002DE4:
	strb r2, [r3, #4]
	b _08002DF6
_08002DE8:
	strb r2, [r3, #5]
	b _08002DF6
_08002DEC:
	strb r2, [r3, #6]
	b _08002DF6
_08002DF0:
	strb r2, [r3, #7]
	b _08002DF6
_08002DF4:
	strb r2, [r3, #8]
_08002DF6:
	bx lr

	thumb_func_start sub_8002DF8
sub_8002DF8: @ 0x08002DF8
	ldr r0, _08002E04 @ =0x03000010
	adds r0, #9
	adds r1, r1, r0
	strb r2, [r1]
	bx lr
	.align 2, 0
_08002E04: .4byte 0x03000010

	thumb_func_start sub_8002E08
sub_8002E08: @ 0x08002E08
	adds r2, r1, #0
	ldr r3, _08002E1C @ =0x03000010
	ldr r0, [r0, #0x10]
	cmp r0, #5
	bhi _08002E4E
	lsls r0, r0, #2
	ldr r1, _08002E20 @ =_08002E24
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002E1C: .4byte 0x03000010
_08002E20: .4byte _08002E24
_08002E24: @ jump table
	.4byte _08002E3C @ case 0
	.4byte _08002E44 @ case 1
	.4byte _08002E40 @ case 2
	.4byte _08002E48 @ case 3
	.4byte _08002E4E @ case 4
	.4byte _08002E4C @ case 5
_08002E3C:
	strb r2, [r3, #0xd]
	b _08002E4E
_08002E40:
	strb r2, [r3, #0xe]
	b _08002E4E
_08002E44:
	strb r2, [r3, #0xf]
	b _08002E4E
_08002E48:
	strb r2, [r3, #0x10]
	b _08002E4E
_08002E4C:
	strb r2, [r3, #0x11]
_08002E4E:
	bx lr

	thumb_func_start sub_8002E50
sub_8002E50: @ 0x08002E50
	adds r2, r1, #0
	ldr r3, _08002E64 @ =0x03000010
	ldr r0, [r0, #0x10]
	cmp r0, #5
	bhi _08002E96
	lsls r0, r0, #2
	ldr r1, _08002E68 @ =_08002E6C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08002E64: .4byte 0x03000010
_08002E68: .4byte _08002E6C
_08002E6C: @ jump table
	.4byte _08002E84 @ case 0
	.4byte _08002E8C @ case 1
	.4byte _08002E88 @ case 2
	.4byte _08002E90 @ case 3
	.4byte _08002E96 @ case 4
	.4byte _08002E94 @ case 5
_08002E84:
	strb r2, [r3, #0x12]
	b _08002E96
_08002E88:
	strb r2, [r3, #0x13]
	b _08002E96
_08002E8C:
	strb r2, [r3, #0x14]
	b _08002E96
_08002E90:
	strb r2, [r3, #0x15]
	b _08002E96
_08002E94:
	strb r2, [r3, #0x16]
_08002E96:
	bx lr

	thumb_func_start sub_08002E98
sub_08002E98: @ 0x08002E98
	ldr r1, _08002EA0 @ =0x0300000C
	movs r0, #3
	strb r0, [r1]
	bx lr
	.align 2, 0
_08002EA0: .4byte 0x0300000C

	thumb_func_start sub_8002EA4
sub_8002EA4: @ 0x08002EA4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r4, _08003038 @ =_080B7680
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x60
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	adds r0, r6, #0
	bl sub_80038B8
	bl main_frameProc
	ldr r0, [r6, #0xc]
	movs r7, #1
	rsbs r7, r7, #0
	cmp r0, r7
	beq _08002F2A
	ldr r0, _0800303C @ =_080B7E00
	ldr r4, _08003040 @ =0x02012800
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r5, _08003044 @ =_080D8E9C
	ldr r0, [r6, #0xc]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, r2
	bl LZ77UnCompWram
	ldr r0, _08003048 @ =_080B7E40
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r4, r4, r1
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, [r6, #0xc]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r4, [r0]
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x40
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	bl main_frameProc
_08002F2A:
	ldr r0, [r6, #8]
	cmp r0, r7
	beq _08002F82
	ldr r0, _0800304C @ =_080B7564
	ldr r4, _08003050 @ =0x02013400
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r5, _08003054 @ =_080D8EBC
	ldr r0, [r6, #8]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0x80
	bl LZ77UnCompWram
	ldr r0, _08003058 @ =_080B7594
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r4, r4, r2
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, [r6, #8]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r4, [r0]
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x80
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	bl main_frameProc
_08002F82:
	ldr r0, [r6, #0x10]
	cmp r0, r7
	beq _08002FDA
	ldr r0, _0800304C @ =_080B7564
	ldr r4, _0800305C @ =0x02013600
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r5, _08003060 @ =_080D8EDC
	ldr r0, [r6, #0x10]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0x80
	bl LZ77UnCompWram
	ldr r0, _08003058 @ =_080B7594
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r4, r4, r1
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, [r6, #0x10]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r4, [r0]
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xa0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	bl main_frameProc
_08002FDA:
	ldr r0, [r6, #0x14]
	cmp r0, r7
	beq _080030BE
	ldr r0, [r6, #0x10]
	cmp r0, #1
	bne _0800306C
	ldr r0, _0800304C @ =_080B7564
	ldr r4, _08003064 @ =0x02013800
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r5, _08003068 @ =_080D8F24
	ldr r0, [r6, #0x14]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0x80
	bl LZ77UnCompWram
	ldr r0, _08003058 @ =_080B7594
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r4, r4, r2
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, [r6, #0x14]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r4, [r0]
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xc0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	b _080030BA
	.align 2, 0
_08003038: .4byte _080B7680
_0800303C: .4byte _080B7E00
_08003040: .4byte 0x02012800
_08003044: .4byte _080D8E9C
_08003048: .4byte _080B7E40
_0800304C: .4byte _080B7564
_08003050: .4byte 0x02013400
_08003054: .4byte _080D8EBC
_08003058: .4byte _080B7594
_0800305C: .4byte 0x02013600
_08003060: .4byte _080D8EDC
_08003064: .4byte 0x02013800
_08003068: .4byte _080D8F24
_0800306C:
	ldr r0, _08003140 @ =_080B7564
	ldr r4, _08003144 @ =0x02013800
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r5, _08003148 @ =_080D8F0C
	ldr r0, [r6, #0x14]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0x80
	bl LZ77UnCompWram
	ldr r0, _0800314C @ =_080B7594
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r4, r4, r1
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, [r6, #0x14]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r4, [r0]
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xc0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
_080030BA:
	bl main_frameProc
_080030BE:
	ldr r1, [r6, #0x18]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08003106
	movs r4, #3
	cmp r1, #2
	beq _080030D6
	movs r4, #2
	cmp r1, #3
	beq _080030D6
	adds r4, r1, #0
_080030D6:
	bl dmaq_getVBlankDmaQueue
	lsls r1, r4, #7
	ldr r2, _08003150 @ =_08063834
	adds r1, r1, r2
	ldr r2, _08003154 @ =0x02013000
	ldr r3, _08003158 @ =0x80000040
	bl dmaq_enqueue
	ldr r4, _0800315C @ =_080627D4
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x60
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	bl main_frameProc
_08003106:
	ldr r0, _08003160 @ =_080B8534
	ldr r4, _08003164 @ =0x02013A00
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl main_frameProc
	ldr r0, _08003168 @ =_080B83A4
	ldr r2, _0800316C @ =0xFFFFF200
	adds r1, r4, r2
	bl LZ77UnCompWram
	bl main_frameProc
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08003170 @ =0xFFFFEE00
	adds r4, r4, r1
	ldr r2, _08003174 @ =0x06012400
	ldr r3, _08003178 @ =0x80000C00
	adds r1, r4, #0
	bl dmaq_enqueue
	bl main_frameProc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003140: .4byte _080B7564
_08003144: .4byte 0x02013800
_08003148: .4byte _080D8F0C
_0800314C: .4byte _080B7594
_08003150: .4byte _08063834
_08003154: .4byte 0x02013000
_08003158: .4byte 0x80000040
_0800315C: .4byte _080627D4
_08003160: .4byte _080B8534
_08003164: .4byte 0x02013A00
_08003168: .4byte _080B83A4
_0800316C: .4byte 0xFFFFF200
_08003170: .4byte 0xFFFFEE00
_08003174: .4byte 0x06012400
_08003178: .4byte 0x80000C00

	thumb_func_start spm_loadOtherGfx
spm_loadOtherGfx: @ 0x0800317C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c
	adds r6, r0, #0
	movs r7, #0
	movs r0, #0
	mov r8, r0
	movs r1, #0x85
	lsls r1, r1, #5
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _080031A0
	adds r0, r6, #0
	bl sub_80036E4
_080031A0:
	ldr r1, [r6, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08003220
	ldr r0, [r6, #0x34]
	cmp r0, #1
	bne _08003204
	ldr r0, _08003210 @ =_080B7E00
	ldr r4, _08003214 @ =0x02012800
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r5, _08003218 @ =_080D8E9C
	ldr r0, [r6, #0xc]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, r2
	bl LZ77UnCompWram
	ldr r0, _0800321C @ =_080B7E40
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r4, r4, r1
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r2, #1
	mov r8, r2
	ldr r0, [r6, #0xc]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r4, [r0]
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x40
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
_08003204:
	ldr r0, [r6, #0x34]
	cmp r0, #0x1f
	bgt _0800322A
	adds r0, #1
	b _08003228
	.align 2, 0
_08003210: .4byte _080B7E00
_08003214: .4byte 0x02012800
_08003218: .4byte _080D8E9C
_0800321C: .4byte _080B7E40
_08003220:
	ldr r0, [r6, #0x34]
	cmp r0, #0
	ble _0800322A
	subs r0, #1
_08003228:
	str r0, [r6, #0x34]
_0800322A:
	ldr r2, [r6, #0x34]
	cmp r2, #0
	beq _0800325E
	movs r0, #0x88
	lsls r0, r0, #1
	movs r1, #0xa
	str r1, [sp]
	movs r1, #0x20
	movs r3, #0x20
	bl sub_800E930
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x90
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [sp, #8]
	ldr r0, _080032CC @ =_080C8634
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_0800325E:
	ldr r1, [r6, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080032E0
	ldr r0, [r6, #0x38]
	cmp r0, #1
	bne _080032C0
	ldr r0, _080032D0 @ =_080B7564
	ldr r4, _080032D4 @ =0x02013400
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r5, _080032D8 @ =_080D8EBC
	ldr r0, [r6, #8]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0x80
	bl LZ77UnCompWram
	ldr r0, _080032DC @ =_080B7594
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r4, r4, r1
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r2, #1
	mov r8, r2
	ldr r0, [r6, #8]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r4, [r0]
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x80
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
_080032C0:
	ldr r0, [r6, #0x38]
	cmp r0, #0xf
	bgt _080032EA
	adds r0, #1
	b _080032E8
	.align 2, 0
_080032CC: .4byte _080C8634
_080032D0: .4byte _080B7564
_080032D4: .4byte 0x02013400
_080032D8: .4byte _080D8EBC
_080032DC: .4byte _080B7594
_080032E0:
	ldr r0, [r6, #0x38]
	cmp r0, #0
	ble _080032EA
	subs r0, #1
_080032E8:
	str r0, [r6, #0x38]
_080032EA:
	ldr r0, [r6, #0x38]
	cmp r0, #0
	beq _0800334A
	ldr r1, _080033C8 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080032FC
	adds r0, #0x3f
_080032FC:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r3, _080033CC @ =_080D8E88
	lsls r1, r7, #2
	adds r1, r1, r3
	lsls r0, r0, #5
	asrs r0, r0, #0xf
	subs r0, #0x20
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _080033D0 @ =0xFFFF0000
	ldr r1, [sp, #0xc]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0xc]
	lsls r0, r7, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	ldr r2, _080033D4 @ =0x0000FFFF
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0xc]
	ldr r0, _080033D8 @ =_080C8644
	add r1, sp, #0xc
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r3, #0
	bl oam_renderCellData
	adds r7, #1
_0800334A:
	ldr r0, _080033DC @ =_080C864C
	mov sb, r0
	ldr r1, [r6, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080033F4
	ldr r0, [r6, #0x3c]
	cmp r0, #1
	bne _080033B0
	ldr r0, _080033E0 @ =_080B7564
	ldr r4, _080033E4 @ =0x02013600
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r5, _080033E8 @ =_080D8EDC
	ldr r0, [r6, #0x10]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0x80
	bl LZ77UnCompWram
	ldr r0, _080033EC @ =_080B7594
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r4, r4, r1
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r2, #1
	mov r8, r2
	ldr r0, [r6, #0x10]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r4, [r0]
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xa0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
_080033B0:
	ldr r0, [r6, #0x3c]
	cmp r0, #0xf
	bgt _080033FE
	adds r0, #1
	str r0, [r6, #0x3c]
	ldr r0, [r6]
	cmp r0, #0
	bne _080033FE
	ldr r0, _080033F0 @ =_080D8E80
	mov sb, r0
	b _080033FE
	.align 2, 0
_080033C8: .4byte gSinTable
_080033CC: .4byte _080D8E88
_080033D0: .4byte 0xFFFF0000
_080033D4: .4byte 0x0000FFFF
_080033D8: .4byte _080C8644
_080033DC: .4byte _080C864C
_080033E0: .4byte _080B7564
_080033E4: .4byte 0x02013600
_080033E8: .4byte _080D8EDC
_080033EC: .4byte _080B7594
_080033F0: .4byte _080D8E80
_080033F4:
	ldr r0, [r6, #0x3c]
	cmp r0, #0
	ble _080033FE
	subs r0, #1
	str r0, [r6, #0x3c]
_080033FE:
	ldr r0, [r6, #0x3c]
	cmp r0, #0
	beq _08003460
	ldr r1, _080034D0 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08003410
	adds r0, #0x3f
_08003410:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r3, _080034D4 @ =_080D8E88
	lsls r1, r7, #2
	adds r1, r1, r3
	lsls r0, r0, #5
	asrs r0, r0, #0xf
	subs r0, #0x20
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _080034D8 @ =0xFFFF0000
	ldr r1, [sp, #0x10]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x10]
	lsls r0, r7, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	ldr r2, _080034DC @ =0x0000FFFF
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x10]
	add r1, sp, #0x10
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, sb
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	adds r7, #1
_08003460:
	ldr r1, _080034E0 @ =_080C8654
	mov sb, r1
	ldr r1, [r6, #0x14]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08003470
	b _08003570
_08003470:
	ldr r0, [r6, #0x40]
	cmp r0, #1
	bne _08003546
	ldr r0, [r6, #0x10]
	cmp r0, #1
	bne _080034F4
	ldr r0, _080034E4 @ =_080B7564
	ldr r4, _080034E8 @ =0x02013800
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r5, _080034EC @ =_080D8F24
	ldr r0, [r6, #0x14]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0x80
	bl LZ77UnCompWram
	ldr r0, _080034F0 @ =_080B7594
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r4, r4, r2
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r0, #1
	mov r8, r0
	ldr r0, [r6, #0x14]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r4, [r0]
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xc0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	b _08003546
	.align 2, 0
_080034D0: .4byte gSinTable
_080034D4: .4byte _080D8E88
_080034D8: .4byte 0xFFFF0000
_080034DC: .4byte 0x0000FFFF
_080034E0: .4byte _080C8654
_080034E4: .4byte _080B7564
_080034E8: .4byte 0x02013800
_080034EC: .4byte _080D8F24
_080034F0: .4byte _080B7594
_080034F4:
	ldr r0, _0800355C @ =_080B7564
	ldr r4, _08003560 @ =0x02013800
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r5, _08003564 @ =_080D8F0C
	ldr r0, [r6, #0x14]
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r0, [r0]
	adds r1, r4, #0
	adds r1, #0x80
	bl LZ77UnCompWram
	ldr r0, _08003568 @ =_080B7594
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r4, r4, r1
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r2, #1
	mov r8, r2
	ldr r0, [r6, #0x14]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r4, [r0]
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xc0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
_08003546:
	ldr r0, [r6, #0x40]
	cmp r0, #0xf
	bgt _0800357A
	adds r0, #1
	str r0, [r6, #0x40]
	ldr r0, [r6]
	cmp r0, #0
	bne _0800357A
	ldr r0, _0800356C @ =_080D8E80
	mov sb, r0
	b _0800357A
	.align 2, 0
_0800355C: .4byte _080B7564
_08003560: .4byte 0x02013800
_08003564: .4byte _080D8F0C
_08003568: .4byte _080B7594
_0800356C: .4byte _080D8E80
_08003570:
	ldr r0, [r6, #0x40]
	cmp r0, #0
	ble _0800357A
	subs r0, #1
	str r0, [r6, #0x40]
_0800357A:
	ldr r0, [r6, #0x40]
	cmp r0, #0
	beq _080035DC
	ldr r1, _08003634 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800358C
	adds r0, #0x3f
_0800358C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r3, _08003638 @ =_080D8E88
	lsls r1, r7, #2
	adds r1, r1, r3
	lsls r0, r0, #5
	asrs r0, r0, #0xf
	subs r0, #0x20
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0800363C @ =0xFFFF0000
	ldr r1, [sp, #0x14]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x14]
	lsls r0, r7, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	ldr r2, _08003640 @ =0x0000FFFF
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x14]
	add r1, sp, #0x14
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, sb
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	adds r7, #1
_080035DC:
	ldr r1, [r6, #0x18]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08003654
	ldr r0, [r6, #0x44]
	cmp r0, #1
	bne _0800362A
	movs r4, #3
	cmp r1, #2
	beq _080035FA
	movs r4, #2
	cmp r1, #3
	beq _080035FA
	adds r4, r1, #0
_080035FA:
	bl dmaq_getVBlankDmaQueue
	lsls r1, r4, #7
	ldr r2, _08003644 @ =_08063834
	adds r1, r1, r2
	ldr r2, _08003648 @ =0x02013000
	ldr r3, _0800364C @ =0x80000040
	bl dmaq_enqueue
	movs r1, #1
	mov r8, r1
	ldr r4, _08003650 @ =_080627D4
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x60
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
_0800362A:
	ldr r0, [r6, #0x44]
	cmp r0, #0xf
	bgt _0800365E
	adds r0, #1
	b _0800365C
	.align 2, 0
_08003634: .4byte gSinTable
_08003638: .4byte _080D8E88
_0800363C: .4byte 0xFFFF0000
_08003640: .4byte 0x0000FFFF
_08003644: .4byte _08063834
_08003648: .4byte 0x02013000
_0800364C: .4byte 0x80000040
_08003650: .4byte _080627D4
_08003654:
	ldr r0, [r6, #0x44]
	cmp r0, #0
	ble _0800365E
	subs r0, #1
_0800365C:
	str r0, [r6, #0x44]
_0800365E:
	ldr r0, [r6, #0x44]
	cmp r0, #0
	beq _080036BE
	ldr r1, _080036D0 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08003670
	adds r0, #0x3f
_08003670:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r3, _080036D4 @ =_080D8E88
	lsls r1, r7, #2
	adds r1, r1, r3
	lsls r0, r0, #5
	asrs r0, r0, #0xf
	subs r0, #0x20
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _080036D8 @ =0xFFFF0000
	ldr r1, [sp, #0x18]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x18]
	lsls r0, r7, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	ldr r2, _080036DC @ =0x0000FFFF
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x18]
	ldr r0, _080036E0 @ =_080C865C
	add r1, sp, #0x18
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r3, #0
	bl oam_renderCellData
	adds r7, #1
_080036BE:
	str r7, [r6, #0x48]
	mov r0, r8
	add sp, #0x1c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080036D0: .4byte gSinTable
_080036D4: .4byte _080D8E88
_080036D8: .4byte 0xFFFF0000
_080036DC: .4byte 0x0000FFFF
_080036E0: .4byte _080C865C

	thumb_func_start sub_80036E4
sub_80036E4: @ 0x080036E4
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r1, _08003708 @ =0x00001094
	adds r0, r5, r1
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	ldr r2, _0800370C @ =0x0000108C
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #4
	bhi _080037D8
	lsls r0, r0, #2
	ldr r1, _08003710 @ =_08003714
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08003708: .4byte 0x00001094
_0800370C: .4byte 0x0000108C
_08003710: .4byte _08003714
_08003714: @ jump table
	.4byte _08003728 @ case 0
	.4byte _08003778 @ case 1
	.4byte _080037BC @ case 2
	.4byte _080037BC @ case 3
	.4byte _080037D8 @ case 4
_08003728:
	ldr r0, _08003764 @ =0x03002C80
	ldrb r1, [r0, #1]
	ldr r2, _08003768 @ =0x00001088
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r1, r0
	beq _080037D8
	ldr r4, _0800376C @ =_080CAE30
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x40
	adds r0, r4, #0
	movs r2, #9
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	ldr r0, _08003770 @ =0x0000108C
	adds r1, r5, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, _08003774 @ =0x00001090
	adds r1, r5, r2
	movs r0, #0
	str r0, [r1]
	b _080037D8
	.align 2, 0
_08003764: .4byte 0x03002C80
_08003768: .4byte 0x00001088
_0800376C: .4byte _080CAE30
_08003770: .4byte 0x0000108C
_08003774: .4byte 0x00001090
_08003778:
	ldr r0, _080037B0 @ =0x00001090
	adds r2, r5, r0
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	cmp r0, #0x10
	bgt _080037CA
	ldr r1, _080037B4 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08003792
	adds r0, #0x3f
_08003792:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #6
	rsbs r0, r0, #0
	asrs r0, r0, #0xf
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r2, _080037B8 @ =0x00001098
	adds r1, r5, r2
	strh r0, [r1]
	b _080037D8
	.align 2, 0
_080037B0: .4byte 0x00001090
_080037B4: .4byte gSinTable
_080037B8: .4byte 0x00001098
_080037BC:
	ldr r0, _0800380C @ =0x00001090
	adds r2, r5, r0
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	cmp r0, #0x3c
	ble _080037D8
_080037CA:
	ldr r1, _08003810 @ =0x0000108C
	adds r0, r5, r1
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	movs r0, #0
	str r0, [r2]
_080037D8:
	ldr r2, _08003810 @ =0x0000108C
	adds r0, r5, r2
	ldr r0, [r0]
	subs r0, #1
	cmp r0, #2
	bhi _08003832
	ldr r4, _08003814 @ =_080CAE30
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x40
	adds r0, r4, #0
	movs r2, #9
	bl CpuSet
	ldr r1, _08003818 @ =0x00001094
	adds r0, r5, r1
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0800381C
	adds r4, #2
	b _0800381E
	.align 2, 0
_0800380C: .4byte 0x00001090
_08003810: .4byte 0x0000108C
_08003814: .4byte _080CAE30
_08003818: .4byte 0x00001094
_0800381C:
	adds r4, #0x22
_0800381E:
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x42
	adds r0, r4, #0
	movs r2, #2
	bl CpuSet
	b _08003846
_08003832:
	ldr r4, _080038A0 @ =_080CAE32
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x42
	adds r0, r4, #0
	movs r2, #2
	bl CpuSet
_08003846:
	movs r0, #1
	bl pltt_setDirtyFlag
	ldr r2, _080038A4 @ =0x0000108C
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #2
	ble _0800387A
	ldr r0, _080038A8 @ =0x03002C80
	ldrb r0, [r0, #1]
	ldr r1, _080038AC @ =_080D8F34
	subs r0, #1
	cmp r0, #0
	bge _08003864
	movs r0, #0
_08003864:
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r2, _080038B0 @ =0x00001098
	adds r1, r5, r2
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r3, #0
	bl oam_renderCellData
_0800387A:
	ldr r1, _080038A4 @ =0x0000108C
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	ble _08003896
	ldr r0, _080038B4 @ =_080C8674
	ldr r2, _080038B0 @ =0x00001098
	adds r1, r5, r2
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r3, #0
	bl oam_renderCellData
_08003896:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080038A0: .4byte _080CAE32
_080038A4: .4byte 0x0000108C
_080038A8: .4byte 0x03002C80
_080038AC: .4byte _080D8F34
_080038B0: .4byte 0x00001098
_080038B4: .4byte _080C8674

	thumb_func_start sub_80038B8
sub_80038B8: @ 0x080038B8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08003914 @ =_080CC748
	ldr r4, _08003918 @ =0x02016C00
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800391C @ =0x06016800
	ldr r3, _08003920 @ =0x80000200
	adds r1, r4, #0
	bl dmaq_enqueue
	bl main_frameProc
	movs r1, #0x85
	lsls r1, r1, #5
	adds r0, r5, r1
	movs r1, #0
	str r1, [r0]
	ldr r2, _08003924 @ =0x0000108C
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _080038F0
	cmp r0, #4
	ble _0800390E
_080038F0:
	ldr r2, _08003928 @ =0x00001094
	adds r0, r5, r2
	str r1, [r0]
	subs r2, #4
	adds r0, r5, r2
	str r1, [r0]
	ldr r0, _0800392C @ =0x00001098
	adds r1, r5, r0
	movs r0, #0x8e
	lsls r0, r0, #1
	strh r0, [r1]
	adds r2, #0xa
	adds r1, r5, r2
	movs r0, #0x94
	strh r0, [r1]
_0800390E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003914: .4byte _080CC748
_08003918: .4byte 0x02016C00
_0800391C: .4byte 0x06016800
_08003920: .4byte 0x80000200
_08003924: .4byte 0x0000108C
_08003928: .4byte 0x00001094
_0800392C: .4byte 0x00001098

	thumb_func_start sub_8003930
sub_8003930: @ 0x08003930
	movs r1, #0
	ldr r2, _08003944 @ =0x0000108C
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #3
	ble _0800393E
	movs r1, #1
_0800393E:
	adds r0, r1, #0
	bx lr
	.align 2, 0
_08003944: .4byte 0x0000108C

	thumb_func_start sub_8003948
sub_8003948: @ 0x08003948
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sb, r0
	ldr r0, _08003B6C @ =0x000011F0
	add r0, sb
	mov sl, r0
	ldr r0, [r0]
	ldr r1, _08003B70 @ =0xFFFFFF00
	adds r0, r0, r1
	mov r2, sl
	str r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08003970
	adds r0, #0x3f
_08003970:
	asrs r0, r0, #6
	movs r6, #0x80
	lsls r6, r6, #1
	mov r8, r6
	subs r0, r6, r0
	ldr r3, _08003B74 @ =0x000003FF
	ands r0, r3
	lsls r0, r0, #2
	ldr r1, _08003B78 @ =gSinTable
	adds r0, r0, r1
	ldr r0, [r0]
	movs r5, #0xd5
	muls r0, r5, r0
	cmp r0, #0
	bge _08003992
	ldr r2, _08003B7C @ =0x00007FFF
	adds r0, r0, r2
_08003992:
	asrs r0, r0, #0xf
	ldr r4, _08003B80 @ =0x0000121C
	add r4, sb
	ldrh r1, [r4]
	strh r0, [r4]
	mov r6, sl
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bge _080039A8
	adds r0, #0x3f
_080039A8:
	asrs r0, r0, #6
	ands r0, r3
	lsls r0, r0, #2
	ldr r2, _08003B78 @ =gSinTable
	adds r0, r0, r2
	ldr r0, [r0]
	muls r0, r5, r0
	cmp r0, #0
	bge _080039BE
	ldr r6, _08003B7C @ =0x00007FFF
	adds r0, r0, r6
_080039BE:
	asrs r0, r0, #0xf
	ldr r2, _08003B84 @ =0x0000121E
	add r2, sb
	ldrh r1, [r2]
	strh r0, [r2]
	mov r1, sl
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	bge _080039D4
	adds r0, #0x3f
_080039D4:
	asrs r0, r0, #6
	ands r0, r3
	lsls r0, r0, #2
	ldr r1, _08003B78 @ =gSinTable
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	lsls r1, r0, #2
	subs r0, r0, r1
	cmp r0, #0
	bge _080039F4
	ldr r6, _08003B7C @ =0x00007FFF
	adds r0, r0, r6
_080039F4:
	asrs r0, r0, #0xf
	movs r7, #0x91
	lsls r7, r7, #5
	add r7, sb
	ldrh r1, [r7]
	strh r0, [r7]
	mov r1, sl
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	bge _08003A0C
	adds r0, #0x3f
_08003A0C:
	asrs r0, r0, #6
	mov r1, r8
	subs r0, r1, r0
	ands r0, r3
	lsls r0, r0, #2
	ldr r6, _08003B78 @ =gSinTable
	adds r0, r0, r6
	ldr r0, [r0]
	muls r0, r5, r0
	cmp r0, #0
	bge _08003A26
	ldr r1, _08003B7C @ =0x00007FFF
	adds r0, r0, r1
_08003A26:
	asrs r0, r0, #0xf
	ldr r3, _08003B88 @ =0x00001222
	add r3, sb
	ldrh r1, [r3]
	strh r0, [r3]
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r6, _08003B8C @ =0x000011E8
	add r6, sb
	mov r8, r6
	ldr r5, [r6]
	adds r1, r0, #0
	muls r1, r5, r1
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r6, _08003B90 @ =0x000011EC
	add r6, sb
	ldr r4, [r6]
	muls r0, r4, r0
	adds r1, r1, r0
	movs r2, #0xc0
	lsls r2, r2, #7
	subs r2, r2, r1
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r5, r1
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r4, r0
	adds r1, r1, r0
	movs r0, #0xe0
	lsls r0, r0, #7
	subs r0, r0, r1
	ldr r1, _08003B94 @ =0x00001224
	add r1, sb
	ldrh r3, [r1]
	strh r2, [r1]
	ldr r3, _08003B98 @ =0x0FFF0000
	ands r2, r3
	asrs r2, r2, #0x10
	ldr r1, _08003B9C @ =0x00001226
	add r1, sb
	ldrh r4, [r1]
	strh r2, [r1]
	ldr r1, _08003BA0 @ =0x00001228
	add r1, sb
	ldrh r2, [r1]
	strh r0, [r1]
	ands r0, r3
	asrs r0, r0, #0x10
	ldr r1, _08003BA4 @ =0x0000122A
	add r1, sb
	ldrh r2, [r1]
	strh r0, [r1]
	ldrh r1, [r6]
	lsls r1, r1, #0x10
	mov r2, r8
	ldrh r0, [r2]
	orrs r0, r1
	str r0, [sp, #8]
	ldr r0, _08003BA8 @ =_080C860C
	mov r6, sl
	ldr r1, [r6]
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	add r1, sp, #8
	movs r2, #0xd5
	movs r3, #0xd5
	bl oam_renderCellData
	movs r0, #0
	mov sl, r0
	mov r1, sp
	adds r1, #0xc
	str r1, [sp, #0x14]
	ldr r2, _08003B6C @ =0x000011F0
	add r2, sb
	str r2, [sp, #0x10]
_08003ACE:
	mov r6, sl
	lsls r0, r6, #0xd
	ldr r1, [sp, #0x10]
	ldr r1, [r1]
	mov r8, r1
	add r0, r8
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	adds r0, r4, #0
	cmp r4, #0
	bge _08003AE6
	adds r0, #0x3f
_08003AE6:
	asrs r5, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r5
	ldr r6, _08003B74 @ =0x000003FF
	ands r0, r6
	lsls r0, r0, #2
	ldr r2, _08003B78 @ =gSinTable
	adds r0, r0, r2
	ldr r2, [r0]
	ldr r0, _08003B8C @ =0x000011E8
	add r0, sb
	ldr r1, [r0]
	movs r7, #0x26
	adds r0, r2, #0
	muls r0, r7, r0
	asrs r0, r0, #0xf
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08003BAC @ =0xFFFF0000
	ldr r3, [sp, #0xc]
	ands r3, r0
	orrs r3, r1
	str r3, [sp, #0xc]
	adds r0, r5, #0
	ands r0, r6
	lsls r0, r0, #2
	ldr r6, _08003B78 @ =gSinTable
	adds r0, r0, r6
	ldr r2, [r0]
	ldr r0, _08003B90 @ =0x000011EC
	add r0, sb
	ldr r1, [r0]
	adds r0, r2, #0
	muls r0, r7, r0
	asrs r0, r0, #0xf
	adds r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, _08003BB0 @ =0x0000FFFF
	ands r3, r0
	orrs r3, r1
	str r3, [sp, #0xc]
	mov r1, r8
	rsbs r0, r1, #0
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _08003BB4 @ =_080C8614
	ldr r1, [sp, #0x14]
	movs r2, #0xd5
	movs r3, #0xd5
	bl oam_renderCellData
	movs r2, #1
	add sl, r2
	mov r6, sl
	cmp r6, #7
	ble _08003ACE
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003B6C: .4byte 0x000011F0
_08003B70: .4byte 0xFFFFFF00
_08003B74: .4byte 0x000003FF
_08003B78: .4byte gSinTable
_08003B7C: .4byte 0x00007FFF
_08003B80: .4byte 0x0000121C
_08003B84: .4byte 0x0000121E
_08003B88: .4byte 0x00001222
_08003B8C: .4byte 0x000011E8
_08003B90: .4byte 0x000011EC
_08003B94: .4byte 0x00001224
_08003B98: .4byte 0x0FFF0000
_08003B9C: .4byte 0x00001226
_08003BA0: .4byte 0x00001228
_08003BA4: .4byte 0x0000122A
_08003BA8: .4byte _080C860C
_08003BAC: .4byte 0xFFFF0000
_08003BB0: .4byte 0x0000FFFF
_08003BB4: .4byte _080C8614

	thumb_func_start sub_8003BB8
sub_8003BB8: @ 0x08003BB8
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0xe
	ldrsb r0, [r4, r0]
	cmp r0, #0x14
	bls _08003BC8
	b _08003FC8
_08003BC8:
	lsls r0, r0, #2
	ldr r1, _08003BD4 @ =_08003BD8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08003BD4: .4byte _08003BD8
_08003BD8: @ jump table
	.4byte _08003FC8 @ case 0
	.4byte _08003C2C @ case 1
	.4byte _08003C4A @ case 2
	.4byte _08003C98 @ case 3
	.4byte _08003CE4 @ case 4
	.4byte _08003D08 @ case 5
	.4byte _08003D6E @ case 6
	.4byte _08003D8C @ case 7
	.4byte _08003DDC @ case 8
	.4byte _08003DF4 @ case 9
	.4byte _08003E18 @ case 10
	.4byte _08003E50 @ case 11
	.4byte _08003E6E @ case 12
	.4byte _08003E9E @ case 13
	.4byte _08003EBA @ case 14
	.4byte _08003EC6 @ case 15
	.4byte _08003F20 @ case 16
	.4byte _08003F46 @ case 17
	.4byte _08003F4E @ case 18
	.4byte _08003F6A @ case 19
	.4byte _08003FC8 @ case 20
_08003C2C:
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r2, [r4, #0x16]
	lsls r1, r2, #1
	adds r1, r1, r2
	cmp r0, r1
	bgt _08003C42
	b _08003FC8
_08003C42:
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #2
	b _08003FC6
_08003C4A:
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc
	bgt _08003C90
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	lsls r0, r0, #0xe
	movs r1, #0xc
	bl __divsi3
	ldr r1, _08003C8C @ =gSinTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08003C70
	adds r0, #0x3f
_08003C70:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r4, #0x16]
	lsls r0, r0, #3
	subs r0, #0xf8
	muls r0, r1, r0
	asrs r0, r0, #0xf
	movs r2, #0x80
	lsls r2, r2, #1
	b _08003FB0
	.align 2, 0
_08003C8C: .4byte gSinTable
_08003C90:
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #3
	b _08003FC6
_08003C98:
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	bgt _08003CDC
	movs r3, #0x10
	ldrsh r0, [r4, r3]
	ldr r3, _08003CD4 @ =gSinTable
	lsls r0, r0, #0x1c
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08003CB6
	adds r0, #0x3f
_08003CB6:
	asrs r0, r0, #6
	movs r2, #0x80
	lsls r2, r2, #1
	subs r0, r2, r0
	ldr r1, _08003CD8 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	subs r0, r0, r1
	lsls r0, r0, #7
	asrs r0, r0, #0x11
	b _08003D54
	.align 2, 0
_08003CD4: .4byte gSinTable
_08003CD8: .4byte 0x000003FF
_08003CDC:
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #4
	b _08003FC6
_08003CE4:
	ldrh r2, [r4, #0x10]
	adds r2, #1
	strh r2, [r4, #0x10]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrb r1, [r4, #0x16]
	mvns r1, r1
	ldrb r0, [r4, #0x17]
	adds r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	cmp r2, r0
	bgt _08003D00
	b _08003FC8
_08003D00:
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #5
	b _08003FC6
_08003D08:
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	bgt _08003D60
	ldrb r0, [r4, #0x16]
	lsls r0, r0, #3
	adds r0, #8
	movs r2, #0x12
	ldrsh r1, [r4, r2]
	movs r3, #0x10
	ldrsh r2, [r4, r3]
	movs r3, #5
	str r3, [sp]
	movs r3, #0x10
	bl sub_800E930
	strh r0, [r4, #4]
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	ldr r1, _08003D5C @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08003D40
	adds r0, #0x3f
_08003D40:
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
_08003D54:
	adds r0, r0, r2
	strh r0, [r4, #8]
	b _08003FC8
	.align 2, 0
_08003D5C: .4byte gSinTable
_08003D60:
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #8]
	movs r0, #0xd
	b _08003FC6
_08003D6E:
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r2, [r4, #0x16]
	lsls r1, r2, #1
	adds r1, r1, r2
	cmp r0, r1
	bgt _08003D84
	b _08003FC8
_08003D84:
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #7
	b _08003FC6
_08003D8C:
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc
	bgt _08003DD4
	movs r3, #0x10
	ldrsh r0, [r4, r3]
	lsls r0, r0, #0xe
	movs r1, #0xc
	bl __divsi3
	ldr r1, _08003DD0 @ =gSinTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08003DB2
	adds r0, #0x3f
_08003DB2:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r4, #0x16]
	lsls r0, r0, #3
	subs r0, #0xc0
	muls r0, r1, r0
	asrs r0, r0, #0xf
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r0, [r4, #4]
	b _08003FC8
	.align 2, 0
_08003DD0: .4byte gSinTable
_08003DD4:
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #8
	b _08003FC6
_08003DDC:
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	bgt _08003DEC
	b _08003FC8
_08003DEC:
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #9
	b _08003FC6
_08003DF4:
	ldrh r2, [r4, #0x10]
	adds r2, #1
	strh r2, [r4, #0x10]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrb r1, [r4, #0x16]
	mvns r1, r1
	ldrb r3, [r4, #0x17]
	adds r1, r1, r3
	lsls r0, r1, #1
	adds r0, r0, r1
	cmp r2, r0
	bgt _08003E10
	b _08003FC8
_08003E10:
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #0xa
	b _08003FC6
_08003E18:
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	bgt _08003E42
	ldrb r0, [r4, #0x16]
	lsls r0, r0, #3
	adds r0, #0x40
	movs r2, #0x12
	ldrsh r1, [r4, r2]
	movs r3, #0x10
	ldrsh r2, [r4, r3]
	movs r3, #5
	str r3, [sp]
	movs r3, #0x10
	bl sub_800E930
	strh r0, [r4, #4]
	b _08003FC8
_08003E42:
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #8]
	movs r0, #0xd
	b _08003FC6
_08003E50:
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r2, [r4, #0x16]
	lsls r1, r2, #1
	adds r1, r1, r2
	cmp r0, r1
	bgt _08003E66
	b _08003FC8
_08003E66:
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #0xc
	b _08003FC6
_08003E6E:
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x40
	bgt _08003E96
	movs r0, #0x28
	rsbs r0, r0, #0
	movs r2, #0x14
	ldrsh r1, [r4, r2]
	movs r3, #0x10
	ldrsh r2, [r4, r3]
	movs r3, #9
	str r3, [sp]
	movs r3, #0x40
	bl sub_800E930
	strh r0, [r4, #6]
	b _08003FC8
_08003E96:
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #0xd
	b _08003FC6
_08003E9E:
	ldrh r1, [r4, #0x10]
	adds r1, #1
	strh r1, [r4, #0x10]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrb r0, [r4, #0x16]
	lsls r0, r0, #2
	cmp r1, r0
	bgt _08003EB2
	b _08003FC8
_08003EB2:
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #0xe
	b _08003FC6
_08003EBA:
	movs r0, #0
	strh r0, [r4, #0x10]
	ldrh r0, [r4, #6]
	strh r0, [r4, #0x14]
	movs r0, #0xf
	b _08003FC6
_08003EC6:
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	bgt _08003F18
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	ldr r2, _08003F10 @ =gSinTable
	lsls r0, r0, #0x1d
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08003EE4
	adds r0, #0x3f
_08003EE4:
	asrs r1, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	ldr r1, _08003F14 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	subs r0, r0, r1
	lsls r0, r0, #2
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #0x10
	ldrh r2, [r4, #0x14]
	adds r0, r0, r2
	strh r0, [r4, #6]
	b _08003FC8
	.align 2, 0
_08003F10: .4byte gSinTable
_08003F14: .4byte 0x000003FF
_08003F18:
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #0x10
	b _08003FC6
_08003F20:
	ldrh r1, [r4, #0x10]
	adds r1, #1
	strh r1, [r4, #0x10]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrb r0, [r4, #0x16]
	mvns r0, r0
	ldrb r3, [r4, #0x17]
	adds r0, r0, r3
	lsls r0, r0, #2
	movs r2, #0x96
	lsls r2, r2, #1
	adds r0, r0, r2
	cmp r1, r0
	ble _08003FC8
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #0xd
	b _08003FC6
_08003F46:
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #0x12
	b _08003FC6
_08003F4E:
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrb r2, [r4, #0x16]
	lsls r1, r2, #1
	adds r1, r1, r2
	cmp r0, r1
	ble _08003FC8
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #0x13
	b _08003FC6
_08003F6A:
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	bgt _08003FC0
	movs r3, #0x10
	ldrsh r0, [r4, r3]
	ldr r2, _08003FB8 @ =gSinTable
	lsls r0, r0, #0x19
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08003F88
	adds r0, #0x3f
_08003F88:
	asrs r1, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	ldr r1, _08003FBC @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r2, [r0]
	movs r1, #4
	ldrsh r0, [r4, r1]
	movs r1, #0x1e
	rsbs r1, r1, #0
	subs r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #8
	subs r0, r0, r2
	muls r0, r1, r0
	asrs r0, r0, #0xf
	ldrh r2, [r4, #4]
_08003FB0:
	adds r0, r0, r2
	strh r0, [r4, #4]
	b _08003FC8
	.align 2, 0
_08003FB8: .4byte gSinTable
_08003FBC: .4byte 0x000003FF
_08003FC0:
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #0x14
_08003FC6:
	strb r0, [r4, #0xe]
_08003FC8:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8003FD0
sub_8003FD0: @ 0x08003FD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	adds r4, r2, #0
	mov sl, r3
	ldr r6, [r3]
	ldrh r5, [r6]
	movs r0, #0
	mov ip, r0
	cmp ip, r5
	bge _0800408C
_08003FF0:
	mov r1, ip
	lsls r0, r1, #2
	add r0, sl
	ldr r0, [r0, #4]
	str r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #4]
	subs r0, r5, r1
	subs r1, r0, #1
	ldrh r2, [r6]
	adds r3, r6, #2
	adds r7, r0, #0
	cmp r2, r1
	bgt _08004010
	subs r1, r2, #1
_08004010:
	movs r0, #0x18
	adds r0, r0, r4
	mov r8, r0
	movs r0, #1
	add r0, ip
	mov sb, r0
	cmp r1, #0
	ble _0800402A
	adds r0, r1, #0
_08004022:
	adds r3, #6
	subs r0, #1
	cmp r0, #0
	bne _08004022
_0800402A:
	movs r0, #0
	ldrsb r0, [r3, r0]
	ldr r1, [sp, #4]
	adds r0, r1, r0
	strh r0, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0xa]
	adds r1, r0, #0
	strh r1, [r4, #8]
	movs r0, #0
	strh r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #0xe]
	movs r1, #0
	strh r1, [r4, #0x10]
	adds r1, r6, #0
	subs r0, r7, #1
	ldrh r2, [r1]
	adds r1, #2
	cmp r2, r0
	bgt _08004058
	subs r0, r2, #1
_08004058:
	cmp r0, #0
	ble _08004064
_0800405C:
	adds r1, #6
	subs r0, #1
	cmp r0, #0
	bne _0800405C
_08004064:
	ldrh r0, [r1, #2]
	ldr r2, _0800409C @ =0x000001FF
	adds r1, r2, #0
	ands r1, r0
	adds r0, r1, #0
	cmp r0, #0xff
	bls _08004078
	adds r0, r1, #0
	eors r0, r2
	rsbs r0, r0, #0
_08004078:
	ldr r1, [sp]
	adds r0, r1, r0
	strh r0, [r4, #0x12]
	mov r0, ip
	strb r0, [r4, #0x16]
	strb r5, [r4, #0x17]
	mov r4, r8
	mov ip, sb
	cmp ip, r5
	blt _08003FF0
_0800408C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800409C: .4byte 0x000001FF

	thumb_func_start sub_80040A0
sub_80040A0: @ 0x080040A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r7, r4, #0
	adds r7, #0x54
	bl sub_802DC88
	cmp r0, #0
	beq _080040D4
	bl sub_802DCB4
	cmp r0, #0
	beq _080040D4
	ldr r0, [r4, #0x4c]
	movs r1, #0x2f
	ands r0, r1
	cmp r0, #0xf
	bgt _080040D4
	ldr r0, _08004178 @ =_080C863C
	ldr r1, _0800417C @ =_080D9128
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r3, #0
	bl oam_renderCellData
_080040D4:
	ldr r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x18
	adds r4, r7, r0
	ldr r5, [r4]
	cmp r5, #0
	beq _0800411A
	movs r1, #8
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0800411A
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0800411A
	ldrh r1, [r4, #6]
	lsls r1, r1, #0x10
	ldrh r0, [r4, #4]
	orrs r0, r1
	str r0, [sp, #8]
	movs r0, #8
	ldrsh r2, [r4, r0]
	movs r1, #0xa
	ldrsh r3, [r4, r1]
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	add r1, sp, #8
	bl oam_renderCellData
_0800411A:
	movs r6, #0
	ldr r0, [r7, #0x14]
	cmp r6, r0
	bge _08004170
	adds r4, r7, #0
	adds r4, #0x18
_08004126:
	ldr r0, [r7]
	cmp r6, r0
	beq _08004166
	ldr r5, [r4]
	cmp r5, #0
	beq _08004166
	movs r1, #8
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08004166
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08004166
	ldrh r1, [r4, #6]
	lsls r1, r1, #0x10
	ldrh r0, [r4, #4]
	orrs r0, r1
	str r0, [sp, #0xc]
	movs r0, #8
	ldrsh r2, [r4, r0]
	movs r1, #0xa
	ldrsh r3, [r4, r1]
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	add r1, sp, #0xc
	bl oam_renderCellData
_08004166:
	adds r4, #0x18
	adds r6, #1
	ldr r0, [r7, #0x14]
	cmp r6, r0
	blt _08004126
_08004170:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004178: .4byte _080C863C
_0800417C: .4byte _080D9128

	thumb_func_start sub_8004180
sub_8004180: @ 0x08004180
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r6, #0x54
	ldr r1, [r0, #8]
	cmp r1, #1
	beq _080041B4
	cmp r1, #1
	bgt _080041A0
	cmp r1, #0
	beq _080041AA
	b _080041DC
_080041A0:
	cmp r1, #2
	beq _080041C4
	cmp r1, #3
	beq _080041D0
	b _080041DC
_080041AA:
	str r1, [r6, #0xc]
	ldr r0, _080041B0 @ =_080D8F94
	b _080041D6
	.align 2, 0
_080041B0: .4byte _080D8F94
_080041B4:
	movs r0, #0
	str r0, [r6, #0xc]
	ldr r0, _080041C0 @ =_080D8FA8
	str r0, [r6, #0x10]
	str r1, [r6, #0x14]
	b _080041DC
	.align 2, 0
_080041C0: .4byte _080D8FA8
_080041C4:
	movs r0, #0
	str r0, [r6, #0xc]
	ldr r0, _080041CC @ =_080D8FBC
	b _080041D6
	.align 2, 0
_080041CC: .4byte _080D8FBC
_080041D0:
	movs r0, #0
	str r0, [r6, #0xc]
	ldr r0, _080042B4 @ =_080D8FD0
_080041D6:
	str r0, [r6, #0x10]
	movs r0, #1
	str r0, [r6, #0x14]
_080041DC:
	movs r7, #0
	ldr r0, [r6, #0x14]
	movs r1, #0x84
	adds r1, r1, r6
	mov sl, r1
	adds r2, r6, #0
	adds r2, #0x18
	str r2, [sp]
	cmp r7, r0
	bge _08004252
	movs r0, #0x80
	lsls r0, r0, #1
	mov sb, r0
	movs r1, #0
	mov r8, r1
_080041FA:
	ldr r0, [r6, #0x10]
	add r0, r8
	ldr r5, [r0, #4]
	lsls r1, r7, #0xb
	ldr r0, _080042B8 @ =0x02014000
	adds r4, r1, r0
	mov r2, sb
	adds r1, r4, r2
	adds r0, r5, #0
	bl LZ77UnCompWram
	ldr r0, _080042BC @ =_080B69EC
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r0, #0xe0
	lsls r0, r0, #3
	adds r1, r4, r0
	ldr r0, _080042C0 @ =_080B6A5C
	bl LZ77UnCompWram
	ldr r0, [r6, #0x10]
	add r0, r8
	ldr r5, [r0, #8]
	movs r0, #1
	bl pltt_getBuffer
	lsls r1, r7, #5
	add r1, sb
	adds r4, r0, r1
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	movs r1, #0x14
	add r8, r1
	adds r7, #1
	ldr r0, [r6, #0x14]
	cmp r7, r0
	blt _080041FA
_08004252:
	movs r0, #1
	mov r2, sl
	str r0, [r2]
	movs r7, #0
	ldr r0, [r6, #0x14]
	cmp r7, r0
	bge _08004292
	movs r5, #0
	movs r4, #0x80
	lsls r4, r4, #1
	adds r2, r6, #0
	adds r2, #0x18
	movs r3, #0
_0800426C:
	ldr r1, [r6, #0x10]
	adds r1, r3, r1
	ldr r0, [r1]
	str r0, [r2]
	ldrh r0, [r1, #0xc]
	strh r0, [r2, #4]
	ldr r0, [r6, #0x10]
	adds r0, r3, r0
	ldrh r0, [r0, #0xe]
	strh r0, [r2, #6]
	strh r4, [r2, #0xa]
	strh r4, [r2, #8]
	strh r5, [r2, #0xc]
	adds r2, #0x18
	adds r3, #0x14
	adds r7, #1
	ldr r0, [r6, #0x14]
	cmp r7, r0
	blt _0800426C
_08004292:
	movs r1, #0
	str r1, [r6]
	movs r0, #0xc0
	ldr r2, [sp]
	strh r0, [r2, #0xa]
	strh r0, [r2, #8]
	str r1, [r6, #4]
	movs r0, #4
	str r0, [r6, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080042B4: .4byte _080D8FD0
_080042B8: .4byte 0x02014000
_080042BC: .4byte _080B69EC
_080042C0: .4byte _080B6A5C

	thumb_func_start sub_80042C4
sub_80042C4: @ 0x080042C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	mov r6, sl
	adds r6, #0x54
	mov r1, sl
	ldr r0, [r1, #8]
	cmp r0, #1
	beq _08004310
	cmp r0, #1
	bgt _080042E8
	cmp r0, #0
	beq _08004300
	b _0800431C
_080042E8:
	cmp r0, #3
	bgt _0800431C
	ldr r0, _080042F8 @ =_080D8F7C
	str r0, [r6, #0xc]
	ldr r0, _080042FC @ =_080D905C
	str r0, [r6, #0x10]
	movs r0, #2
	b _0800431A
	.align 2, 0
_080042F8: .4byte _080D8F7C
_080042FC: .4byte _080D905C
_08004300:
	ldr r0, _08004308 @ =_080D8F64
	str r0, [r6, #0xc]
	ldr r0, _0800430C @ =_080D8FE4
	b _08004316
	.align 2, 0
_08004308: .4byte _080D8F64
_0800430C: .4byte _080D8FE4
_08004310:
	ldr r0, _08004408 @ =_080D8F64
	str r0, [r6, #0xc]
	ldr r0, _0800440C @ =_080D9020
_08004316:
	str r0, [r6, #0x10]
	movs r0, #3
_0800431A:
	str r0, [r6, #0x14]
_0800431C:
	movs r7, #0
	ldr r0, [r6, #0x14]
	adds r1, r6, #0
	adds r1, #0x84
	str r1, [sp]
	cmp r7, r0
	bge _0800438C
	movs r0, #0x80
	lsls r0, r0, #1
	mov sb, r0
	movs r1, #0
	mov r8, r1
_08004334:
	ldr r0, [r6, #0x10]
	add r0, r8
	ldr r5, [r0, #4]
	lsls r1, r7, #0xb
	ldr r0, _08004410 @ =0x02014000
	adds r4, r1, r0
	mov r0, sb
	adds r1, r4, r0
	adds r0, r5, #0
	bl LZ77UnCompWram
	ldr r0, _08004414 @ =_080B69EC
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r0, #0xe0
	lsls r0, r0, #3
	adds r1, r4, r0
	ldr r0, _08004418 @ =_080B6A5C
	bl LZ77UnCompWram
	ldr r0, [r6, #0x10]
	add r0, r8
	ldr r5, [r0, #8]
	movs r0, #1
	bl pltt_getBuffer
	lsls r1, r7, #5
	add r1, sb
	adds r4, r0, r1
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	movs r1, #0x14
	add r8, r1
	adds r7, #1
	ldr r0, [r6, #0x14]
	cmp r7, r0
	blt _08004334
_0800438C:
	movs r0, #1
	ldr r1, [sp]
	str r0, [r1]
	movs r7, #0
	ldr r0, [r6, #0x14]
	cmp r7, r0
	bge _080043CE
	movs r5, #0
	movs r4, #0x80
	lsls r4, r4, #1
	adds r2, r6, #0
	adds r2, #0x18
	movs r3, #0
_080043A6:
	ldr r1, [r6, #0x10]
	adds r1, r3, r1
	ldr r0, [r1]
	str r0, [r2]
	ldrh r0, [r1, #0xc]
	adds r0, #0xf0
	strh r0, [r2, #4]
	ldr r0, [r6, #0x10]
	adds r0, r3, r0
	ldrh r0, [r0, #0xe]
	strh r0, [r2, #6]
	strh r4, [r2, #0xa]
	strh r4, [r2, #8]
	strh r5, [r2, #0xc]
	adds r2, #0x18
	adds r3, #0x14
	adds r7, #1
	ldr r0, [r6, #0x14]
	cmp r7, r0
	blt _080043A6
_080043CE:
	mov r0, sl
	bl sub_8002C74
	str r0, [r6]
	movs r0, #1
	rsbs r0, r0, #0
	mov r1, sl
	str r0, [r1, #0x10]
	ldr r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	adds r0, #0x18
	movs r2, #0
	movs r1, #0xc0
	strh r1, [r0, #0xa]
	strh r1, [r0, #8]
	str r2, [r6, #4]
	movs r0, #4
	str r0, [r6, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004408: .4byte _080D8F64
_0800440C: .4byte _080D9020
_08004410: .4byte 0x02014000
_08004414: .4byte _080B69EC
_08004418: .4byte _080B6A5C

	thumb_func_start sub_800441C
sub_800441C: @ 0x0800441C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	mov r6, sl
	adds r6, #0x54
	mov r1, sl
	ldr r0, [r1, #0x10]
	cmp r0, #5
	bhi _08004484
	lsls r0, r0, #2
	ldr r1, _08004440 @ =_08004444
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08004440: .4byte _08004444
_08004444: @ jump table
	.4byte _0800445C @ case 0
	.4byte _08004478 @ case 1
	.4byte _0800445C @ case 2
	.4byte _08004470 @ case 3
	.4byte _08004484 @ case 4
	.4byte _0800445C @ case 5
_0800445C:
	ldr r0, _08004468 @ =_080D8F64
	str r0, [r6, #0xc]
	ldr r0, _0800446C @ =_080D9094
	str r0, [r6, #0x10]
	movs r0, #3
	b _08004482
	.align 2, 0
_08004468: .4byte _080D8F64
_0800446C: .4byte _080D9094
_08004470:
	movs r0, #0
	str r0, [r6, #0xc]
	str r0, [r6, #0x10]
	b _08004482
_08004478:
	ldr r0, _08004570 @ =_080D8F7C
	str r0, [r6, #0xc]
	ldr r0, _08004574 @ =_080D90D0
	str r0, [r6, #0x10]
	movs r0, #2
_08004482:
	str r0, [r6, #0x14]
_08004484:
	movs r7, #0
	ldr r0, [r6, #0x14]
	adds r1, r6, #0
	adds r1, #0x84
	str r1, [sp]
	cmp r7, r0
	bge _080044F4
	movs r0, #0x80
	lsls r0, r0, #1
	mov sb, r0
	movs r1, #0
	mov r8, r1
_0800449C:
	ldr r0, [r6, #0x10]
	add r0, r8
	ldr r5, [r0, #4]
	lsls r1, r7, #0xb
	ldr r0, _08004578 @ =0x02014000
	adds r4, r1, r0
	mov r0, sb
	adds r1, r4, r0
	adds r0, r5, #0
	bl LZ77UnCompWram
	ldr r0, _0800457C @ =_080B69EC
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r0, #0xe0
	lsls r0, r0, #3
	adds r1, r4, r0
	ldr r0, _08004580 @ =_080B6A5C
	bl LZ77UnCompWram
	ldr r0, [r6, #0x10]
	add r0, r8
	ldr r5, [r0, #8]
	movs r0, #1
	bl pltt_getBuffer
	lsls r1, r7, #5
	add r1, sb
	adds r4, r0, r1
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	movs r1, #0x14
	add r8, r1
	adds r7, #1
	ldr r0, [r6, #0x14]
	cmp r7, r0
	blt _0800449C
_080044F4:
	movs r0, #1
	ldr r1, [sp]
	str r0, [r1]
	movs r7, #0
	ldr r0, [r6, #0x14]
	cmp r7, r0
	bge _08004536
	movs r5, #0
	movs r4, #0x80
	lsls r4, r4, #1
	adds r2, r6, #0
	adds r2, #0x18
	movs r3, #0
_0800450E:
	ldr r1, [r6, #0x10]
	adds r1, r3, r1
	ldr r0, [r1]
	str r0, [r2]
	ldrh r0, [r1, #0xc]
	adds r0, #0xf0
	strh r0, [r2, #4]
	ldr r0, [r6, #0x10]
	adds r0, r3, r0
	ldrh r0, [r0, #0xe]
	strh r0, [r2, #6]
	strh r4, [r2, #0xa]
	strh r4, [r2, #8]
	strh r5, [r2, #0xc]
	adds r2, #0x18
	adds r3, #0x14
	adds r7, #1
	ldr r0, [r6, #0x14]
	cmp r7, r0
	blt _0800450E
_08004536:
	mov r0, sl
	bl sub_8002C88
	str r0, [r6]
	movs r0, #1
	rsbs r0, r0, #0
	mov r1, sl
	str r0, [r1, #0x14]
	ldr r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	adds r0, #0x18
	movs r2, #0
	movs r1, #0xc0
	strh r1, [r0, #0xa]
	strh r1, [r0, #8]
	str r2, [r6, #4]
	movs r0, #4
	str r0, [r6, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004570: .4byte _080D8F7C
_08004574: .4byte _080D90D0
_08004578: .4byte 0x02014000
_0800457C: .4byte _080B69EC
_08004580: .4byte _080B6A5C

	thumb_func_start sub_8004584
sub_8004584: @ 0x08004584
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	movs r5, #0xc0
	lsls r5, r5, #0x13
	movs r4, #7
_08004594:
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08004798 @ =0x0203EBEC
	adds r2, r5, #0
	ldr r3, _0800479C @ =0x81000C00
	bl dmaq_enqueue
	bl main_frameProc
	movs r0, #0xc0
	lsls r0, r0, #5
	adds r5, r5, r0
	subs r4, #1
	cmp r4, #0
	bge _08004594
	adds r0, r7, #0
	bl sub_8002EA4
	bl main_frameProc
	ldr r4, _080047A0 @ =_080AE03C
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xa0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	ldr r4, _080047A4 @ =_0807CD48
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xe0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuFastSet
	ldr r4, _080047A8 @ =_080AF2C0
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuFastSet
	ldr r4, _080047AC @ =_080AF300
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x60
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	bl main_frameProc
	ldr r0, _080047B0 @ =_0807D1E8
	ldr r4, _080047B4 @ =0x02008400
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _080047B8 @ =0x06008000
	ldr r3, _080047BC @ =0x80000600
	adds r1, r4, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _080047C0 @ =_080AE180
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r4, r2
	bl LZ77UnCompWram
	bl main_frameProc
	ldr r0, _080047C4 @ =_080AE7C8
	movs r1, #0xc0
	lsls r1, r1, #7
	adds r4, r4, r1
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl main_frameProc
	movs r5, #0
	ldr r6, _080047C8 @ =0x0600C000
_08004656:
	lsls r4, r5, #0xd
	ldr r0, _080047CC @ =0x0200C400
	adds r4, r4, r0
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	adds r2, r6, #0
	ldr r3, _080047D0 @ =0x80001000
	bl dmaq_enqueue
	bl main_frameProc
	movs r2, #0x80
	lsls r2, r2, #6
	adds r6, r6, r2
	adds r5, #1
	cmp r5, #1
	ble _08004656
	ldr r0, _080047D4 @ =_080AF320
	ldr r4, _080047D8 @ =0x02010400
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl main_frameProc
	ldr r0, _080047DC @ =_080C2FA8
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r4, r2
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _080047E0 @ =0x06010000
	ldr r3, _080047E4 @ =0x80001200
	adds r1, r4, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _080047E8 @ =_080AF778
	movs r1, #0xd8
	lsls r1, r1, #7
	adds r4, r4, r1
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _080047EC @ =0x06016C00
	ldr r3, _080047F0 @ =0x80000200
	adds r1, r4, #0
	bl dmaq_enqueue
	bl main_frameProc
	bl main_frameProc
	ldr r4, _080047F4 @ =_080AEE04
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _080047F8 @ =0x06002000
	ldr r3, _080047FC @ =0x80000400
	adds r0, r4, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r4, _08004800 @ =_0807DA94
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	bl main_frameProc
	ldr r4, _08004804 @ =_0807DB98
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	movs r0, #3
	bl map_setBufferDirty
	bl main_frameProc
	ldr r2, _08004808 @ =0x000011FE
	adds r1, r7, r2
	ldrh r0, [r1]
	movs r2, #0
	movs r0, #0xb
	strh r0, [r1]
	ldr r0, _0800480C @ =0x00001204
	adds r1, r7, r0
	ldrh r0, [r1]
	ldr r0, _08004810 @ =0x0000020B
	strh r0, [r1]
	ldr r0, _08004814 @ =0x0000120A
	adds r1, r7, r0
	ldrh r0, [r1]
	ldr r0, _08004818 @ =0x0000448E
	strh r0, [r1]
	ldr r0, _0800481C @ =0x000011FC
	adds r1, r7, r0
	ldrh r0, [r1]
	ldr r0, _08004820 @ =0x00001741
	strh r0, [r1]
	ldr r0, _08004824 @ =0x000011E8
	adds r1, r7, r0
	movs r0, #0xb4
	lsls r0, r0, #1
	str r0, [r1]
	ldr r0, _08004828 @ =0x000011EC
	adds r1, r7, r0
	movs r0, #0x50
	str r0, [r1]
	ldr r1, _0800482C @ =0x000011F0
	adds r0, r7, r1
	str r2, [r0]
	adds r1, #8
	adds r0, r7, r1
	str r2, [r0]
	mov r2, r8
	cmp r2, #0
	bne _0800478C
	ldr r1, _08004830 @ =0x00000D84
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08004838
_0800478C:
	ldr r2, _08004834 @ =0x00001216
	adds r0, r7, r2
	ldrh r1, [r0]
	movs r1, #0xff
	b _08004840
	.align 2, 0
_08004798: .4byte 0x0203EBEC
_0800479C: .4byte 0x81000C00
_080047A0: .4byte _080AE03C
_080047A4: .4byte _0807CD48
_080047A8: .4byte _080AF2C0
_080047AC: .4byte _080AF300
_080047B0: .4byte _0807D1E8
_080047B4: .4byte 0x02008400
_080047B8: .4byte 0x06008000
_080047BC: .4byte 0x80000600
_080047C0: .4byte _080AE180
_080047C4: .4byte _080AE7C8
_080047C8: .4byte 0x0600C000
_080047CC: .4byte 0x0200C400
_080047D0: .4byte 0x80001000
_080047D4: .4byte _080AF320
_080047D8: .4byte 0x02010400
_080047DC: .4byte _080C2FA8
_080047E0: .4byte 0x06010000
_080047E4: .4byte 0x80001200
_080047E8: .4byte _080AF778
_080047EC: .4byte 0x06016C00
_080047F0: .4byte 0x80000200
_080047F4: .4byte _080AEE04
_080047F8: .4byte 0x06002000
_080047FC: .4byte 0x80000400
_08004800: .4byte _0807DA94
_08004804: .4byte _0807DB98
_08004808: .4byte 0x000011FE
_0800480C: .4byte 0x00001204
_08004810: .4byte 0x0000020B
_08004814: .4byte 0x0000120A
_08004818: .4byte 0x0000448E
_0800481C: .4byte 0x000011FC
_08004820: .4byte 0x00001741
_08004824: .4byte 0x000011E8
_08004828: .4byte 0x000011EC
_0800482C: .4byte 0x000011F0
_08004830: .4byte 0x00000D84
_08004834: .4byte 0x00001216
_08004838:
	ldr r1, _08004858 @ =0x00001216
	adds r0, r7, r1
	ldrh r1, [r0]
	movs r1, #0xbf
_08004840:
	strh r1, [r0]
	ldr r2, _0800485C @ =0x0000121A
	adds r0, r7, r2
	ldrh r1, [r0]
	movs r1, #0x10
	strh r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004858: .4byte 0x00001216
_0800485C: .4byte 0x0000121A

	thumb_func_start sub_8004860
sub_8004860: @ 0x08004860
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov r8, r0
	adds r4, r1, #0
	mov r7, r8
	adds r7, #0x54
	movs r0, #0
	mov sl, r0
	movs r1, #0
	str r1, [sp, #0x1c]
	movs r2, #0
	str r2, [sp, #0x20]
	mov r3, r8
	str r0, [r3, #0x54]
	str r0, [r7, #4]
	str r0, [r7, #8]
	str r0, [r7, #0xc]
	str r0, [r7, #0x10]
	str r0, [r7, #0x14]
	str r0, [r7, #0x78]
	str r0, [r7, #0x7c]
	mov r0, r8
	adds r0, #0xd4
	mov r6, sl
	str r6, [r0]
	adds r0, #4
	str r6, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r0, #0
	bl map_setBufferDestination
	ldr r1, _080048D4 @ =0x06001000
	movs r0, #1
	bl map_setBufferDestination
	mov r0, r8
	adds r1, r4, #0
	bl sub_8004584
	cmp r4, #0
	beq _080048D8
	movs r0, #1
	str r0, [r7, #0x78]
	str r0, [r7, #0x7c]
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r2, #0xa
	mov sl, r2
	cmp r0, #3
	bne _080048F4
	movs r3, #4
	mov sl, r3
	b _080048F4
	.align 2, 0
_080048D4: .4byte 0x06001000
_080048D8:
	mov r4, sl
	str r4, [r7, #0x78]
	str r4, [r7, #0x7c]
	ldr r0, _08004974 @ =0x00000D84
	add r0, r8
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r0, r0, #0x1f
	mov sl, r0
	movs r0, #4
	mov r6, sl
	ands r6, r0
	mov sl, r6
_080048F4:
	ldr r2, _08004978 @ =0x00000D88
	add r2, r8
	ldr r3, _0800497C @ =_080D90F8
	movs r0, #0x80
	movs r1, #0x18
	bl sub_8003FD0
	adds r0, r7, #0
	adds r0, #0x84
	str r0, [sp, #0x2c]
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x28]
_0800490E:
	bl oam_update
	bl main_frameProc
	ldr r1, _08004980 @ =0x000011F4
	add r1, r8
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	mov r2, r8
	ldr r0, [r2, #0x4c]
	adds r0, #1
	str r0, [r2, #0x4c]
	movs r0, #0
	ldr r3, [sp, #0x2c]
	str r0, [r3]
	ldr r0, _08004984 @ =0x03004F48
	ldrh r1, [r0]
	add r0, sp, #8
	strh r1, [r0]
	ldr r0, _08004988 @ =0x03004EA0
	ldrh r0, [r0]
	ldr r4, [sp, #0x28]
	strh r0, [r4]
	ldr r0, [r2, #8]
	mov r5, sl
	subs r5, #2
	cmp r0, #0
	ble _08004962
	movs r3, #0
	adds r2, r4, #0
	adds r2, #2
	mov r1, sp
	adds r1, #0xa
	adds r4, r0, #0
_08004954:
	strh r3, [r2]
	strh r3, [r1]
	adds r2, #2
	adds r1, #2
	subs r4, #1
	cmp r4, #0
	bne _08004954
_08004962:
	mov r0, r8
	ldr r6, [r0, #0x50]
	cmp r5, #0xe
	bhi _08004A2A
	lsls r0, r5, #2
	ldr r1, _0800498C @ =_08004990
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08004974: .4byte 0x00000D84
_08004978: .4byte 0x00000D88
_0800497C: .4byte _080D90F8
_08004980: .4byte 0x000011F4
_08004984: .4byte 0x03004F48
_08004988: .4byte 0x03004EA0
_0800498C: .4byte _08004990
_08004990: @ jump table
	.4byte _080049CC @ case 0
	.4byte _080049CC @ case 1
	.4byte _08004A2A @ case 2
	.4byte _080049CC @ case 3
	.4byte _080049CC @ case 4
	.4byte _08004A2A @ case 5
	.4byte _080049CC @ case 6
	.4byte _08004A2A @ case 7
	.4byte _08004A2A @ case 8
	.4byte _080049CC @ case 9
	.4byte _080049CC @ case 10
	.4byte _08004A2A @ case 11
	.4byte _080049CC @ case 12
	.4byte _080049CC @ case 13
	.4byte _080049CC @ case 14
_080049CC:
	movs r4, #0
	mov r1, r8
	ldr r3, [r1, #8]
	ldr r6, [r1, #0x50]
	cmp r4, r3
	bgt _08004A2A
	ldr r5, [r7, #0x7c]
	ldr r2, [sp, #0x28]
_080049DC:
	movs r1, #1
	cmp r5, #0
	beq _080049E4
	movs r1, #2
_080049E4:
	ldrh r0, [r2]
	ands r1, r0
	cmp r1, #0
	beq _08004A22
	mov r2, sl
	cmp r2, #6
	ble _080049F6
	cmp r2, #0xf
	bne _080049FC
_080049F6:
	movs r3, #7
	str r3, [sp, #0x20]
	b _08004A18
_080049FC:
	mov r4, sl
	cmp r4, #0xc
	bgt _08004A14
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r2, #0x64
	str r2, [sp, #0x20]
	cmp r0, #3
	beq _08004A18
	movs r3, #0xd
	str r3, [sp, #0x20]
	b _08004A18
_08004A14:
	movs r4, #0x64
	str r4, [sp, #0x20]
_08004A18:
	movs r0, #0x12
	mov sl, r0
	movs r1, #0
	str r1, [sp, #0x1c]
	b _08004A2A
_08004A22:
	adds r2, #2
	adds r4, #1
	cmp r4, r3
	ble _080049DC
_08004A2A:
	cmp r6, #0
	beq _08004A52
	movs r1, #0
	str r1, [r7, #0x78]
	str r1, [r7, #0x7c]
	adds r2, r7, #0
	adds r2, #0x80
	movs r0, #1
	str r0, [r2]
	mov r2, r8
	str r1, [r2, #0x50]
	ldr r0, [r2, #0x10]
	movs r3, #0xd
	str r3, [sp, #0x20]
	cmp r0, #3
	bne _08004A4E
	movs r4, #7
	str r4, [sp, #0x20]
_08004A4E:
	movs r6, #0x13
	mov sl, r6
_08004A52:
	mov r0, sl
	cmp r0, #0x17
	bls _08004A5C
	bl _08005420
_08004A5C:
	lsls r0, r0, #2
	ldr r1, _08004A68 @ =_08004A6C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08004A68: .4byte _08004A6C
_08004A6C: @ jump table
	.4byte _08004ACC @ case 0
	.4byte _08004B1A @ case 1
	.4byte _08004CE8 @ case 2
	.4byte _0800506C @ case 3
	.4byte _08004ADA @ case 4
	.4byte _08004B1A @ case 5
	.4byte _08004D50 @ case 6
	.4byte _08004DFE @ case 7
	.4byte _08005072 @ case 8
	.4byte _080051F0 @ case 9
	.4byte _08004AE8 @ case 10
	.4byte _08004B1A @ case 11
	.4byte _08004D50 @ case 12
	.4byte _08004DFE @ case 13
	.4byte _08005072 @ case 14
	.4byte _080051F0 @ case 15
	.4byte _0800525A @ case 16
	.4byte _0800525A @ case 17
	.4byte _080052F8 @ case 18
	.4byte _080052FE @ case 19
	.4byte _08005390 @ case 20
	.4byte _080053BC @ case 21
	.4byte _080053D8 @ case 22
	.4byte _08005406 @ case 23
_08004ACC:
	mov r0, r8
	bl sub_8004180
	movs r1, #1
	add sl, r1
	bl _08005420
_08004ADA:
	mov r0, r8
	bl sub_80042C4
	movs r2, #1
	add sl, r2
	bl _08005420
_08004AE8:
	mov r0, r8
	bl sub_800441C
	mov r3, r8
	ldr r0, [r3, #0x10]
	cmp r0, #3
	beq _08004B12
	cmp r0, #3
	bgt _08004B04
	cmp r0, #0
	bge _08004B02
	bl _08005420
_08004B02:
	b _08004B0C
_08004B04:
	cmp r0, #5
	beq _08004B0C
	bl _08005420
_08004B0C:
	movs r4, #0xb
	bl _0800541E
_08004B12:
	movs r6, #0x10
	mov sl, r6
	bl _08005420
_08004B1A:
	ldr r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x18
	adds r2, r7, r0
	ldr r0, [r7, #4]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	str r0, [r7, #4]
	ldr r3, _08004B84 @ =gSinTable
	lsls r0, r0, #0x1b
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08004B3C
	adds r0, #0x3f
_08004B3C:
	asrs r1, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	ldr r1, _08004B88 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	asrs r0, r0, #0xf
	adds r0, #0xc0
	movs r1, #0
	movs r3, #0
	strh r0, [r2, #0xa]
	strh r0, [r2, #8]
	ldr r0, [sp, #0x1c]
	adds r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #0x10
	ble _08004B72
	b _08004CB0
_08004B72:
	mov r1, sl
	cmp r1, #5
	beq _08004BE4
	cmp r1, #5
	bgt _08004B8C
	cmp r1, #1
	beq _08004B94
	b _08004C6C
	.align 2, 0
_08004B84: .4byte gSinTable
_08004B88: .4byte 0x000003FF
_08004B8C:
	mov r2, sl
	cmp r2, #0xb
	beq _08004C36
	b _08004C6C
_08004B94:
	ldr r0, [r7, #0x78]
	cmp r0, #0
	bne _08004BA4
	ldr r0, _08004BB0 @ =0x00000D84
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	beq _08004BB8
_08004BA4:
	ldr r0, _08004BB4 @ =0x00001216
	add r0, r8
	ldrh r1, [r0]
	movs r1, #0xff
	b _08004BC0
	.align 2, 0
_08004BB0: .4byte 0x00000D84
_08004BB4: .4byte 0x00001216
_08004BB8:
	ldr r0, _08004BDC @ =0x00001216
	add r0, r8
	ldrh r1, [r0]
	movs r1, #0xbf
_08004BC0:
	strh r1, [r0]
	ldr r3, [sp, #0x1c]
	lsls r0, r3, #4
	rsbs r0, r0, #0
	cmp r0, #0
	bge _08004BCE
	adds r0, #0xf
_08004BCE:
	asrs r0, r0, #4
	adds r0, #0x10
	ldr r1, _08004BE0 @ =0x0000121A
	add r1, r8
	ldrh r2, [r1]
	strh r0, [r1]
	b _08004C6C
	.align 2, 0
_08004BDC: .4byte 0x00001216
_08004BE0: .4byte 0x0000121A
_08004BE4:
	ldr r0, [r7, #0x78]
	adds r3, r7, #0
	adds r3, #0x80
	cmp r0, #0
	bne _08004BFE
	ldr r0, [r3]
	cmp r0, #0
	bne _08004C30
	ldr r0, _08004C24 @ =0x00000D84
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	beq _08004C30
_08004BFE:
	ldr r1, _08004C28 @ =0x00001216
	add r1, r8
	ldrh r0, [r1]
	movs r0, #0xff
	strh r0, [r1]
	ldr r4, [sp, #0x1c]
	lsls r0, r4, #4
	rsbs r0, r0, #0
	cmp r0, #0
	bge _08004C14
	adds r0, #0xf
_08004C14:
	asrs r0, r0, #4
	adds r0, #0x10
	ldr r1, _08004C2C @ =0x0000121A
	add r1, r8
	ldrh r2, [r1]
	strh r0, [r1]
	b _08004C70
	.align 2, 0
_08004C24: .4byte 0x00000D84
_08004C28: .4byte 0x00001216
_08004C2C: .4byte 0x0000121A
_08004C30:
	movs r6, #0x10
	str r6, [sp, #0x1c]
	b _08004C70
_08004C36:
	ldr r0, [r7, #0x78]
	cmp r0, #0
	beq _08004C68
	ldr r1, _08004C60 @ =0x00001216
	add r1, r8
	ldrh r0, [r1]
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, [sp, #0x1c]
	lsls r0, r1, #4
	rsbs r0, r0, #0
	cmp r0, #0
	bge _08004C52
	adds r0, #0xf
_08004C52:
	asrs r0, r0, #4
	adds r0, #0x10
	ldr r1, _08004C64 @ =0x0000121A
	add r1, r8
	ldrh r2, [r1]
	strh r0, [r1]
	b _08004C6C
	.align 2, 0
_08004C60: .4byte 0x00001216
_08004C64: .4byte 0x0000121A
_08004C68:
	movs r2, #0x10
	str r2, [sp, #0x1c]
_08004C6C:
	adds r3, r7, #0
	adds r3, #0x80
_08004C70:
	ldr r0, [r3]
	cmp r0, #0
	beq _08004C78
	b _08005420
_08004C78:
	ldr r1, _08004CA4 @ =0x000011E8
	add r1, r8
	ldr r3, [sp, #0x1c]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #5
	rsbs r0, r0, #0
	cmp r0, #0
	bge _08004C8C
	adds r0, #0xf
_08004C8C:
	asrs r0, r0, #4
	movs r4, #0xb4
	lsls r4, r4, #1
	adds r0, r0, r4
	str r0, [r1]
	ldr r1, _08004CA8 @ =0x000011F0
	add r1, r8
	ldr r0, [r1]
	ldr r6, _08004CAC @ =0xFFFFF800
	adds r0, r0, r6
	str r0, [r1]
	b _08005420
	.align 2, 0
_08004CA4: .4byte 0x000011E8
_08004CA8: .4byte 0x000011F0
_08004CAC: .4byte 0xFFFFF800
_08004CB0:
	ldr r1, _08004CD8 @ =0x00001216
	add r1, r8
	ldrh r0, [r1]
	ldr r0, _08004CDC @ =0x00000241
	strh r0, [r1]
	ldr r1, _08004CE0 @ =0x00001218
	add r1, r8
	ldrh r0, [r1]
	ldr r0, _08004CE4 @ =0x00001008
	strh r0, [r1]
	str r3, [r7, #0x78]
	adds r1, r7, #0
	adds r1, #0x80
	movs r0, #1
	str r0, [r1]
	add sl, r0
	movs r0, #0
	str r0, [sp, #0x1c]
	b _08005420
	.align 2, 0
_08004CD8: .4byte 0x00001216
_08004CDC: .4byte 0x00000241
_08004CE0: .4byte 0x00001218
_08004CE4: .4byte 0x00001008
_08004CE8:
	ldr r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x18
	adds r2, r7, r0
	ldr r0, [r7, #4]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	str r0, [r7, #4]
	ldr r3, _08004D48 @ =gSinTable
	lsls r0, r0, #0x1b
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08004D0A
	adds r0, #0x3f
_08004D0A:
	asrs r1, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	ldr r1, _08004D4C @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	asrs r0, r0, #0xf
	adds r0, #0xc0
	strh r0, [r2, #0xa]
	strh r0, [r2, #8]
	ldr r1, [sp, #0x1c]
	adds r1, #1
	str r1, [sp, #0x1c]
	cmp r1, #0x1e
	bgt _08004D3C
	b _08005420
_08004D3C:
	movs r2, #1
	add sl, r2
	movs r3, #0
	str r3, [sp, #0x1c]
	b _08005420
	.align 2, 0
_08004D48: .4byte gSinTable
_08004D4C: .4byte 0x000003FF
_08004D50:
	ldr r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x18
	adds r2, r7, r0
	ldr r0, [r7, #4]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	str r0, [r7, #4]
	ldr r3, _08004DEC @ =gSinTable
	lsls r0, r0, #0x1b
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08004D72
	adds r0, #0x3f
_08004D72:
	asrs r1, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	ldr r1, _08004DF0 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	asrs r0, r0, #0xf
	adds r0, #0xc0
	strh r0, [r2, #0xa]
	strh r0, [r2, #8]
	ldr r4, [sp, #0x1c]
	adds r4, #1
	str r4, [sp, #0x1c]
	ldr r1, [r7, #0x14]
	lsls r0, r1, #2
	adds r0, #0x10
	cmp r4, r0
	bgt _08004DF4
	movs r4, #0
	cmp r4, r1
	blt _08004DB0
	b _08005420
_08004DB0:
	mov sb, r4
	ldr r5, [sp, #0x1c]
	adds r6, r7, #0
	adds r6, #0x18
_08004DB8:
	cmp r5, #0
	blt _08004DDA
	cmp r5, #0x14
	bgt _08004DDA
	ldr r0, [r7, #0x10]
	add r0, sb
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	adds r0, r1, #0
	adds r0, #0xf0
	movs r2, #0xa
	str r2, [sp]
	adds r2, r5, #0
	movs r3, #0x14
	bl sub_800E930
	strh r0, [r6, #4]
_08004DDA:
	movs r3, #0x14
	add sb, r3
	subs r5, #4
	adds r6, #0x18
	adds r4, #1
	ldr r0, [r7, #0x14]
	cmp r4, r0
	blt _08004DB8
	b _08005420
	.align 2, 0
_08004DEC: .4byte gSinTable
_08004DF0: .4byte 0x000003FF
_08004DF4:
	movs r4, #1
	add sl, r4
	movs r6, #0
	str r6, [sp, #0x1c]
	b _08005420
_08004DFE:
	movs r4, #0
	ldr r0, [r7, #0x14]
	ldr r5, _08004E64 @ =gSinTable
	cmp r4, r0
	bge _08004E1C
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r7, #0
_08004E0E:
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x20]
	adds r1, #0x18
	adds r4, #1
	ldr r0, [r7, #0x14]
	cmp r4, r0
	blt _08004E0E
_08004E1C:
	ldr r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x18
	adds r3, r7, r0
	ldr r0, [r7, #8]
	cmp r0, #3
	bgt _08004E6C
	adds r0, #1
	str r0, [r7, #8]
	lsls r0, r0, #0x1d
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08004E3C
	adds r0, #0x3f
_08004E3C:
	asrs r0, r0, #6
	movs r2, #0x80
	lsls r2, r2, #1
	subs r0, r2, r0
	ldr r1, _08004E68 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	subs r0, r0, r1
	lsls r0, r0, #6
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #0x10
	adds r0, r0, r2
	b _08004EA2
	.align 2, 0
_08004E64: .4byte gSinTable
_08004E68: .4byte 0x000003FF
_08004E6C:
	ldr r0, [r7, #4]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	str r0, [r7, #4]
	lsls r0, r0, #0x1b
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08004E80
	adds r0, #0x3f
_08004E80:
	asrs r1, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	ldr r1, _08004ED4 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	asrs r0, r0, #0xf
	adds r0, #0xc0
_08004EA2:
	strh r0, [r3, #0xa]
	strh r0, [r3, #8]
	movs r0, #0
	str r0, [r7, #0x7c]
	movs r4, #0
	mov r1, r8
	ldr r0, [r1, #8]
	cmp r4, r0
	ble _08004EB6
	b _08005420
_08004EB6:
	movs r5, #1
	rsbs r5, r5, #0
	movs r3, #0
_08004EBC:
	ldr r2, [r7]
	mov r0, sp
	adds r0, r0, r3
	adds r0, #8
	ldrh r0, [r0]
	cmp r0, #0x20
	beq _08004EFE
	cmp r0, #0x20
	bgt _08004ED8
	cmp r0, #0x10
	beq _08004F0C
	b _08004F1E
	.align 2, 0
_08004ED4: .4byte 0x000003FF
_08004ED8:
	cmp r0, #0x40
	beq _08004EE2
	cmp r0, #0x80
	beq _08004EF0
	b _08004F1E
_08004EE2:
	ldr r1, [r7, #0xc]
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _08004F18
_08004EF0:
	ldr r1, [r7, #0xc]
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _08004F18
_08004EFE:
	ldr r1, [r7, #0xc]
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _08004F18
_08004F0C:
	ldr r1, [r7, #0xc]
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrb r0, [r0, #7]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_08004F18:
	cmp r0, r5
	beq _08004F1E
	str r0, [r7]
_08004F1E:
	ldr r0, [r7]
	cmp r2, r0
	beq _08004F26
	b _080053F8
_08004F26:
	ldr r6, [sp, #0x28]
	adds r0, r6, r3
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08004FCC
	mov r0, sl
	cmp r0, #7
	beq _08004F44
	cmp r0, #0xd
	beq _08004F8C
	mov r2, sl
	adds r2, #1
	b _08004FC4
_08004F44:
	movs r0, #0x8e
	bl m4aSongNumStart
	ldr r1, [r7]
	ldr r2, [r7, #0x10]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x10]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r1, r8
	str r0, [r1, #0x10]
	ldr r1, [r7]
	mov r0, r8
	bl sub_8002DA0
	mov r2, r8
	ldr r0, [r2, #0x10]
	movs r2, #8
	cmp r0, #3
	bne _08004FC4
	movs r1, #0
	movs r3, #0x11
	ldr r0, _08004F88 @ =0x00000D96
	add r0, r8
_08004F7A:
	strb r3, [r0]
	adds r0, #0x18
	adds r1, #1
	cmp r1, #0xa
	bls _08004F7A
	b _08004FC4
	.align 2, 0
_08004F88: .4byte 0x00000D96
_08004F8C:
	movs r0, #0x8e
	bl m4aSongNumStart
	ldr r1, [r7]
	ldr r2, [r7, #0x10]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x10]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r3, r8
	str r0, [r3, #0x14]
	ldr r1, [r7]
	mov r0, r8
	bl sub_8002DB0
	movs r1, #0
	movs r2, #0xe
	movs r3, #0x11
	ldr r0, _08004FC8 @ =0x00000D96
	add r0, r8
_08004FBA:
	strb r3, [r0]
	adds r0, #0x18
	adds r1, #1
	cmp r1, #0xa
	bls _08004FBA
_08004FC4:
	mov sl, r2
	b _08005020
	.align 2, 0
_08004FC8: .4byte 0x00000D96
_08004FCC:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08005026
	movs r0, #1
	str r0, [r7, #0x7c]
	movs r0, #0x90
	bl m4aSongNumStart
	mov r6, sl
	cmp r6, #7
	beq _08004FEA
	cmp r6, #0xd
	beq _08005014
	b _08005420
_08004FEA:
	mov r0, r8
	str r5, [r0, #8]
	str r5, [r0, #4]
	movs r1, #0
	movs r2, #0x11
	ldr r0, _08005010 @ =0x00000D96
	add r0, r8
_08004FF8:
	strb r2, [r0]
	adds r0, #0x18
	adds r1, #1
	cmp r1, #0xa
	bls _08004FF8
	ldr r1, [r7]
	mov r0, r8
	bl sub_8002DA0
	movs r1, #9
	b _08005252
	.align 2, 0
_08005010: .4byte 0x00000D96
_08005014:
	ldr r1, [r7]
	mov r0, r8
	bl sub_8002DB0
	movs r3, #0xf
	mov sl, r3
_08005020:
	movs r4, #0
	str r4, [sp, #0x1c]
	b _08005420
_08005026:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0800505C
	mov r6, sl
	cmp r6, #7
	bne _0800505C
	ldr r1, [r7, #0x10]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x10]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0800504A
	b _08005420
_0800504A:
	cmp r0, #3
	bne _08005050
	b _08005420
_08005050:
	movs r0, #0x8e
	bl m4aSongNumStart
	movs r0, #0x15
	mov sl, r0
	b _08005420
_0800505C:
	adds r3, #2
	adds r4, #1
	mov r1, r8
	ldr r0, [r1, #8]
	cmp r4, r0
	bgt _0800506A
	b _08004EBC
_0800506A:
	b _08005420
_0800506C:
	mov r2, r8
	ldr r0, [r2, #8]
	str r0, [r2, #4]
_08005072:
	ldr r3, [sp, #0x1c]
	adds r3, #1
	str r3, [sp, #0x1c]
	cmp r3, #0x20
	ble _0800507E
	b _080051B2
_0800507E:
	movs r4, #0
	ldr r1, [r7, #0x14]
	cmp r4, r1
	bge _080050E2
	ldr r6, _080051A0 @ =gSinTable
	mov sb, r6
_0800508A:
	adds r0, r4, #1
	subs r3, r1, r0
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, #0x18
	adds r6, r7, r1
	ldr r1, [r7]
	adds r5, r0, #0
	cmp r3, r1
	beq _080050DA
	lsls r0, r4, #2
	ldr r1, [sp, #0x1c]
	subs r0, r1, r0
	cmp r0, #0
	blt _080050DA
	cmp r0, #0x10
	bgt _080050DA
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080050B8
	adds r0, #0x3f
_080050B8:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	add r0, sb
	ldr r2, [r0]
	ldr r0, [r7, #0x10]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #4
	asrs r0, r0, #0xf
	ldrh r1, [r1, #0xc]
	adds r0, r0, r1
	strh r0, [r6, #4]
_080050DA:
	adds r4, r5, #0
	ldr r1, [r7, #0x14]
	cmp r4, r1
	blt _0800508A
_080050E2:
	ldr r4, [r7]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x18
	adds r0, r0, r7
	mov sb, r0
	ldr r2, [sp, #0x1c]
	cmp r2, #0x14
	bgt _080051A8
	lsls r0, r2, #0xe
	movs r1, #0x14
	bl __divsi3
	ldr r3, _080051A0 @ =gSinTable
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	adds r0, r5, #0
	cmp r5, #0
	bge _0800510C
	adds r0, #0x3f
_0800510C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r6, r0, r3
	ldr r3, [r6]
	mov ip, r3
	ldr r0, [r7, #0x10]
	lsls r2, r4, #2
	adds r2, r2, r4
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r4, _080051A4 @ =_080D8E88
	mov r1, r8
	ldr r0, [r1, #0x48]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r4
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r3, #0xc
	ldrsh r0, [r2, r3]
	subs r0, #4
	subs r1, r1, r0
	mov r0, ip
	muls r0, r1, r0
	asrs r0, r0, #0xf
	ldrh r2, [r2, #0xc]
	adds r0, r0, r2
	mov r1, sb
	strh r0, [r1, #4]
	ldr r3, [r6]
	ldr r0, [r7]
	ldr r1, [r7, #0x10]
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r1
	mov r6, r8
	ldr r0, [r6, #0x48]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r4, #0xe
	ldrsh r1, [r2, r4]
	subs r0, r0, r1
	muls r0, r3, r0
	asrs r0, r0, #0xf
	ldrh r2, [r2, #0xe]
	adds r0, r0, r2
	mov r6, sb
	strh r0, [r6, #6]
	ldr r1, [sp, #0x1c]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #1
	rsbs r0, r0, #0
	movs r1, #0x14
	bl __divsi3
	adds r1, r0, #0
	adds r1, #0x64
	movs r0, #0xc8
	lsls r0, r0, #7
	bl __divsi3
	strh r0, [r6, #0xa]
	strh r0, [r6, #8]
	b _08005420
	.align 2, 0
_080051A0: .4byte gSinTable
_080051A4: .4byte _080D8E88
_080051A8:
	movs r0, #0
	mov r2, sb
	strh r0, [r2, #0xa]
	strh r0, [r2, #8]
	b _08005420
_080051B2:
	ldr r0, [r7, #0x14]
	cmp r0, #0
	ble _080051C8
	movs r2, #0
	adds r1, r7, #0
	adds r4, r0, #0
_080051BE:
	str r2, [r1, #0x18]
	adds r1, #0x18
	subs r4, #1
	cmp r4, #0
	bne _080051BE
_080051C8:
	mov r3, sl
	cmp r3, #8
	beq _080051E6
	cmp r3, #8
	bgt _080051D8
	cmp r3, #3
	beq _080051E0
	b _08005254
_080051D8:
	mov r4, sl
	cmp r4, #0xe
	beq _080051EC
	b _08005254
_080051E0:
	movs r6, #4
	mov sl, r6
	b _08005254
_080051E6:
	movs r0, #0xa
	mov sl, r0
	b _08005254
_080051EC:
	movs r1, #0x10
	b _08005252
_080051F0:
	ldr r3, [sp, #0x1c]
	adds r3, #1
	str r3, [sp, #0x1c]
	cmp r3, #0x10
	bgt _08005228
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	movs r4, #0x80
	lsls r4, r4, #1
	adds r2, r0, r4
	movs r4, #0
	ldr r0, [r7, #0x14]
	cmp r4, r0
	blt _08005210
	b _08005420
_08005210:
	lsls r3, r3, #0xc
	adds r1, r7, #0
	adds r1, #0x20
_08005216:
	strh r2, [r1, #2]
	strh r2, [r1]
	strh r3, [r1, #4]
	adds r1, #0x18
	adds r4, #1
	ldr r0, [r7, #0x14]
	cmp r4, r0
	blt _08005216
	b _08005420
_08005228:
	ldr r0, [r7, #0x14]
	cmp r0, #0
	ble _0800523E
	movs r2, #0
	adds r1, r7, #0
	adds r4, r0, #0
_08005234:
	str r2, [r1, #0x18]
	adds r1, #0x18
	subs r4, #1
	cmp r4, #0
	bne _08005234
_0800523E:
	mov r6, sl
	cmp r6, #9
	beq _0800524A
	cmp r6, #0xf
	beq _08005250
	b _08005254
_0800524A:
	movs r0, #0x11
	mov sl, r0
	b _08005254
_08005250:
	movs r1, #4
_08005252:
	mov sl, r1
_08005254:
	movs r2, #0
	str r2, [sp, #0x1c]
	b _08005420
_0800525A:
	ldr r3, [sp, #0x1c]
	adds r3, #1
	str r3, [sp, #0x1c]
	cmp r3, #0x20
	bgt _080052EC
	mov r4, sl
	cmp r4, #0x10
	beq _08005270
	cmp r4, #0x11
	beq _08005294
	b _080052AE
_08005270:
	mov r6, r8
	ldr r0, [r6, #0x10]
	cmp r0, #1
	bne _080052AE
	ldr r0, [r6, #0x14]
	cmp r0, #1
	bne _080052AE
	ldr r1, _08005290 @ =0x00001216
	add r1, r8
	ldrh r0, [r1]
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, [sp, #0x1c]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	b _080052A4
	.align 2, 0
_08005290: .4byte 0x00001216
_08005294:
	ldr r1, _080052D8 @ =0x00001216
	add r1, r8
	ldrh r0, [r1]
	movs r0, #0xbf
	strh r0, [r1]
	ldr r2, [sp, #0x1c]
	lsrs r0, r2, #0x1f
	adds r0, r2, r0
_080052A4:
	asrs r0, r0, #1
	ldr r1, _080052DC @ =0x0000121A
	add r1, r8
	ldrh r2, [r1]
	strh r0, [r1]
_080052AE:
	ldr r1, _080052E0 @ =0x000011E8
	add r1, r8
	ldr r3, [sp, #0x1c]
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #7
	rsbs r0, r0, #0
	cmp r0, #0
	bge _080052C2
	adds r0, #0x1f
_080052C2:
	asrs r0, r0, #5
	adds r0, #0xc8
	str r0, [r1]
	ldr r1, _080052E4 @ =0x000011F0
	add r1, r8
	ldr r0, [r1]
	ldr r4, _080052E8 @ =0xFFFFF800
	adds r0, r0, r4
	str r0, [r1]
	b _08005420
	.align 2, 0
_080052D8: .4byte 0x00001216
_080052DC: .4byte 0x0000121A
_080052E0: .4byte 0x000011E8
_080052E4: .4byte 0x000011F0
_080052E8: .4byte 0xFFFFF800
_080052EC:
	mov r6, sl
	cmp r6, #0x10
	beq _080052F4
	b _08005526
_080052F4:
	movs r0, #1
	b _08005580
_080052F8:
	movs r0, #0x13
	mov sl, r0
	b _08005420
_080052FE:
	ldr r1, [sp, #0x20]
	cmp r1, #7
	beq _0800533C
	cmp r1, #0xd
	beq _0800534A
	mov r2, r8
	ldr r0, [r2, #0x10]
	cmp r0, #1
	bne _08005352
	ldr r0, [r2, #0x14]
	cmp r0, #1
	bne _08005352
	ldr r1, _08005334 @ =0x00001216
	add r1, r8
	ldrh r0, [r1]
	movs r2, #0
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, _08005338 @ =0x0000121A
	add r1, r8
	ldrh r0, [r1]
	movs r0, #0x10
	strh r0, [r1]
	mov r3, r8
	str r2, [r3, #0x50]
	b _080052F4
	.align 2, 0
_08005334: .4byte 0x00001216
_08005338: .4byte 0x0000121A
_0800533C:
	mov r4, r8
	ldr r0, [r4, #8]
	str r0, [r4, #4]
	mov r0, r8
	bl sub_80042C4
	b _0800535A
_0800534A:
	mov r0, r8
	bl sub_800441C
	b _0800535A
_08005352:
	movs r0, #1
	mov r6, r8
	str r0, [r6, #0x50]
	b _080052F4
_0800535A:
	movs r4, #0
	ldr r0, [r7, #0x14]
	cmp r4, r0
	bge _0800537A
	movs r2, #0
	adds r1, r7, #0
_08005366:
	ldr r0, [r7, #0x10]
	adds r0, r2, r0
	ldrh r0, [r0, #0xc]
	strh r0, [r1, #0x1c]
	adds r2, #0x14
	adds r1, #0x18
	adds r4, #1
	ldr r0, [r7, #0x14]
	cmp r4, r0
	blt _08005366
_0800537A:
	ldr r0, _0800538C @ =0x000011E8
	add r0, r8
	movs r1, #0xc8
	str r1, [r0]
	movs r0, #0
	str r0, [r7, #0x7c]
	movs r0, #0x14
	mov sl, r0
	b _08005420
	.align 2, 0
_0800538C: .4byte 0x000011E8
_08005390:
	ldr r1, _080053AC @ =0x00001216
	add r1, r8
	ldrh r0, [r1]
	ldr r0, _080053B0 @ =0x00000241
	strh r0, [r1]
	ldr r1, _080053B4 @ =0x00001218
	add r1, r8
	ldrh r0, [r1]
	ldr r0, _080053B8 @ =0x00001008
	strh r0, [r1]
	ldr r1, [sp, #0x20]
	mov sl, r1
	b _08005420
	.align 2, 0
_080053AC: .4byte 0x00001216
_080053B0: .4byte 0x00000241
_080053B4: .4byte 0x00001218
_080053B8: .4byte 0x00001008
_080053BC:
	ldr r1, [r7]
	ldr r2, [r7, #0x10]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0x10
	ldrsb r1, [r0, r1]
	mov r0, r8
	bl sub_8005590
	movs r2, #0x16
	mov sl, r2
	b _08005420
_080053D8:
	ldr r1, [r7]
	ldr r2, [r7, #0x10]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0x10
	ldrsb r1, [r0, r1]
	mov r0, r8
	bl sub_80058B0
	cmp r0, #0
	beq _08005420
	movs r3, #0x17
	mov sl, r3
	b _08005420
_080053F8:
	movs r0, #0x8d
	bl m4aSongNumStart
	movs r0, #0
	str r0, [r7, #4]
	str r0, [r7, #8]
	b _08005420
_08005406:
	ldr r1, [r7]
	ldr r2, [r7, #0x10]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0x10
	ldrsb r1, [r0, r1]
	mov r0, r8
	bl sub_8005CB0
	movs r4, #7
_0800541E: @ 0x0800541E
	mov sl, r4
_08005420:
	mov r0, r8
	bl sub_80036E4
	mov r0, r8
	bl sub_80040A0
	mov r6, sl
	cmp r6, #7
	bne _0800545E
	ldr r0, [r7]
	ldr r2, [r7, #0x10]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	movs r0, #0x10
	ldrsb r0, [r1, r0]
	cmp r0, #1
	blt _0800545E
	cmp r0, #2
	ble _0800544E
	cmp r0, #5
	bne _0800545E
_0800544E:
	ldr r0, _0800552C @ =_080C8758
	ldr r1, _08005530 @ =_080D912C
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r3, #0
	bl oam_renderCellData
_0800545E:
	movs r4, #0x85
	lsls r4, r4, #5
	add r4, r8
	movs r0, #1
	str r0, [r4]
	mov r0, r8
	bl spm_loadOtherGfx
	cmp r0, #0
	beq _08005480
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08005534 @ =0x02013000
	ldr r2, _08005538 @ =0x06012C00
	ldr r3, _0800553C @ =0x80000800
	bl dmaq_enqueue
_08005480:
	movs r0, #0
	str r0, [r4]
	ldr r0, _08005540 @ =0x00000D88
	add r0, r8
	str r0, [sp, #0x24]
	movs r5, #0
	add r1, sp, #0x18
	mov sb, r1
_08005490:
	adds r5, #1
	movs r2, #0xb
	subs r0, r2, r5
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r3, [sp, #0x24]
	adds r4, r3, r4
	adds r0, r4, #0
	bl sub_8003BB8
	ldrh r1, [r4, #6]
	lsls r1, r1, #0x10
	ldrh r0, [r4, #4]
	orrs r0, r1
	str r0, [sp, #0x18]
	ldr r0, [r4]
	movs r6, #8
	ldrsh r2, [r4, r6]
	movs r1, #0xa
	ldrsh r3, [r4, r1]
	movs r6, #0xc
	ldrsh r1, [r4, r6]
	str r1, [sp]
	movs r6, #0
	str r6, [sp, #4]
	mov r1, sb
	bl oam_renderCellData
	cmp r5, #0xb
	blt _08005490
	mov r0, r8
	bl sub_8003948
	mov r0, r8
	bl sub_8003930
	cmp r0, #0
	beq _08005554
	ldr r0, _08005544 @ =trns_initDefaultOutTransition
	ldr r4, _08005548 @ =0x03004F70
	str r0, [r4, #4]
	ldr r0, _0800554C @ =trns_applyDefaultOutTransition
	str r0, [r4]
	str r6, [r4, #8]
	movs r0, #1
	strb r0, [r4, #0xe]
	bl trns_start
	movs r0, #0
	bl pltt_getBuffer
	strh r6, [r0]
	movs r0, #1
	bl pltt_setDirtyFlag
	bl main_frameProc
	ldrb r1, [r4, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800551E
	movs r5, #2
_08005510:
	bl main_frameProc
	ldrb r1, [r4, #0xc]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08005510
_0800551E:
	ldr r1, _08005550 @ =0x0000109C
	add r1, r8
	movs r0, #1
	str r0, [r1]
_08005526:
	movs r0, #0
	b _08005580
	.align 2, 0
_0800552C: .4byte _080C8758
_08005530: .4byte _080D912C
_08005534: .4byte 0x02013000
_08005538: .4byte 0x06012C00
_0800553C: .4byte 0x80000800
_08005540: .4byte 0x00000D88
_08005544: .4byte trns_initDefaultOutTransition
_08005548: .4byte 0x03004F70
_0800554C: .4byte trns_applyDefaultOutTransition
_08005550: .4byte 0x0000109C
_08005554:
	ldr r1, [sp, #0x2c]
	ldr r0, [r1]
	cmp r0, #0
	bne _08005560
	bl _0800490E
_08005560:
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08005574 @ =0x02014000
	ldr r2, _08005578 @ =0x06013C00
	ldr r3, _0800557C @ =0x80001000
	bl dmaq_enqueue
	bl _0800490E
	.align 2, 0
_08005574: .4byte 0x02014000
_08005578: .4byte 0x06013C00
_0800557C: .4byte 0x80001000
_08005580:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8005590
sub_8005590: @ 0x08005590
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	mov sl, r1
	mov r4, sb
	adds r4, #0x54
	ldr r0, _080055D8 @ =0x000004DC
	add r0, sb
	movs r1, #0
	str r1, [r0]
	movs r1, #0x9c
	lsls r1, r1, #3
	add r1, sb
	movs r2, #0
	str r2, [r1]
	ldr r2, _080055DC @ =0x000004E4
	add r2, sb
	movs r0, #0
	str r0, [r2]
	movs r3, #0x9d
	lsls r3, r3, #3
	add r3, sb
	str r0, [r3]
	mov r0, sl
	cmp r0, #2
	beq _080055F4
	cmp r0, #2
	bgt _080055E0
	cmp r0, #1
	beq _080055E8
	b _0800560A
	.align 2, 0
_080055D8: .4byte 0x000004DC
_080055DC: .4byte 0x000004E4
_080055E0:
	mov r0, sl
	cmp r0, #5
	beq _08005600
	b _0800560A
_080055E8:
	movs r0, #2
	str r0, [r1]
	movs r0, #7
	str r0, [r2]
	movs r0, #0xa
	b _08005608
_080055F4:
	movs r0, #4
	str r0, [r1]
	movs r0, #7
	str r0, [r2]
	movs r0, #6
	b _08005608
_08005600:
	movs r0, #3
	str r0, [r1]
	movs r0, #7
	str r0, [r2]
_08005608:
	str r0, [r3]
_0800560A:
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r4, #0
	adds r1, #0x88
	movs r2, #0x80
	bl CpuFastSet
	movs r0, #1
	bl pltt_getBuffer
	movs r2, #0xa2
	lsls r2, r2, #2
	adds r1, r4, r2
	movs r2, #0x80
	bl CpuFastSet
	movs r7, #0
_0800562E:
	movs r0, #0
	bl pltt_getBuffer
	lsls r1, r7, #5
	adds r0, r0, r1
	cmp r7, #0xc
	beq _08005684
	movs r6, #0x1f
	adds r5, r0, #0
	movs r0, #0xf
	mov r8, r0
_08005644:
	ldrh r0, [r5]
	movs r1, #0x1f
	ands r1, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x15
	ands r3, r6
	lsrs r4, r0, #0x1a
	ands r4, r6
	lsls r0, r1, #1
	adds r0, r0, r1
	asrs r2, r0, #2
	ands r2, r6
	lsls r0, r3, #1
	adds r0, r0, r3
	asrs r0, r0, #2
	ands r0, r6
	lsls r1, r0, #5
	orrs r1, r2
	lsls r0, r4, #1
	adds r0, r0, r4
	asrs r0, r0, #2
	ands r0, r6
	lsls r0, r0, #0xa
	orrs r1, r0
	strh r1, [r5]
	adds r5, #2
	movs r1, #1
	rsbs r1, r1, #0
	add r8, r1
	mov r2, r8
	cmp r2, #0
	bge _08005644
_08005684:
	adds r7, #1
	cmp r7, #0xf
	ble _0800562E
	movs r7, #0
_0800568C:
	movs r0, #1
	bl pltt_getBuffer
	lsls r1, r7, #5
	adds r0, r0, r1
	adds r1, r7, #1
	mov ip, r1
	cmp r7, #3
	beq _080056E6
	movs r6, #0x1f
	adds r5, r0, #0
	movs r2, #0xf
	mov r8, r2
_080056A6:
	ldrh r0, [r5]
	movs r1, #0x1f
	ands r1, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x15
	ands r3, r6
	lsrs r4, r0, #0x1a
	ands r4, r6
	lsls r0, r1, #1
	adds r0, r0, r1
	asrs r2, r0, #2
	ands r2, r6
	lsls r0, r3, #1
	adds r0, r0, r3
	asrs r0, r0, #2
	ands r0, r6
	lsls r1, r0, #5
	orrs r1, r2
	lsls r0, r4, #1
	adds r0, r0, r4
	asrs r0, r0, #2
	ands r0, r6
	lsls r0, r0, #0xa
	orrs r1, r0
	strh r1, [r5]
	adds r5, #2
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	mov r1, r8
	cmp r1, #0
	bge _080056A6
_080056E6:
	mov r7, ip
	cmp r7, #0xf
	ble _0800568C
	movs r0, #1
	bl pltt_setDirtyFlag
	ldr r2, _080057D0 @ =0x000011FE
	add r2, sb
	ldrh r3, [r2]
	ldr r1, _080057D4 @ =0x0000FFF3
	adds r0, r1, #0
	ands r0, r3
	movs r3, #4
	ldrh r4, [r2]
	movs r4, #0
	orrs r0, r3
	strh r0, [r2]
	ldr r2, _080057D8 @ =0x00001204
	add r2, sb
	ldrh r0, [r2]
	ands r1, r0
	ldrh r0, [r2]
	orrs r1, r3
	strh r1, [r2]
	ldrh r1, [r2]
	ldr r0, _080057DC @ =0x0000FFFC
	ands r0, r1
	ldrh r1, [r2]
	strh r0, [r2]
	bl dmaq_getVBlankDmaQueue
	ldr r2, _080057E0 @ =0x06008000
	mov r8, r2
	ldr r2, _080057E4 @ =0x06004000
	ldr r3, _080057E8 @ =0x80000200
	mov r1, r8
	bl dmaq_enqueue
	str r4, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _080057EC @ =0x01000140
	mov r0, sp
	bl CpuFastSet
	movs r0, #2
	bl map_setBufferDirty
	bl main_frameProc
	ldr r4, _080057F0 @ =_080AAD30
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0xfb
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #5
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	ldr r0, _080057F4 @ =_080A97F8
	ldr r5, _080057F8 @ =0x0200C400
	adds r1, r5, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _080057FC @ =0x06005000
	ldr r6, _08005800 @ =0x80000C00
	adds r1, r5, #0
	adds r3, r6, #0
	bl dmaq_enqueue
	ldr r0, _08005804 @ =_080A9E2C
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r4, r5, r1
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08005808 @ =0x06006800
	adds r1, r4, #0
	adds r3, r6, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _0800580C @ =_080AA56C
	adds r1, r5, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r1, r5, #0
	mov r2, r8
	adds r3, r6, #0
	bl dmaq_enqueue
	mov r2, sl
	cmp r2, #2
	beq _0800584C
	cmp r2, #2
	bgt _08005810
	cmp r2, #1
	beq _08005818
	b _08005886
	.align 2, 0
_080057D0: .4byte 0x000011FE
_080057D4: .4byte 0x0000FFF3
_080057D8: .4byte 0x00001204
_080057DC: .4byte 0x0000FFFC
_080057E0: .4byte 0x06008000
_080057E4: .4byte 0x06004000
_080057E8: .4byte 0x80000200
_080057EC: .4byte 0x01000140
_080057F0: .4byte _080AAD30
_080057F4: .4byte _080A97F8
_080057F8: .4byte 0x0200C400
_080057FC: .4byte 0x06005000
_08005800: .4byte 0x80000C00
_08005804: .4byte _080A9E2C
_08005808: .4byte 0x06006800
_0800580C: .4byte _080AA56C
_08005810:
	mov r0, sl
	cmp r0, #5
	beq _08005830
	b _08005886
_08005818:
	movs r1, #0
	cmp r1, #0
	beq _08005828
	ldr r4, _08005824 @ =_080AF994
	movs r0, #1
	b _08005836
	.align 2, 0
_08005824: .4byte _080AF994
_08005828:
	ldr r4, _0800582C @ =_080AFBC0
	b _08005832
	.align 2, 0
_0800582C: .4byte _080AFBC0
_08005830:
	ldr r4, _08005848 @ =_080AFAA8
_08005832:
	movs r0, #1
	movs r1, #0
_08005836:
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	b _08005886
	.align 2, 0
_08005848: .4byte _080AFAA8
_0800584C:
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0800589C @ =_080AF914
	ldr r2, _080058A0 @ =0x06009200
	ldr r3, _080058A4 @ =0x80000040
	bl dmaq_enqueue
	ldr r4, _080058A8 @ =_080AFCD4
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	ldr r4, _080058AC @ =_080627F4
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
_08005886:
	movs r0, #2
	bl map_setBufferDirty
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800589C: .4byte _080AF914
_080058A0: .4byte 0x06009200
_080058A4: .4byte 0x80000040
_080058A8: .4byte _080AFCD4
_080058AC: .4byte _080627F4

	thumb_func_start sub_80058B0
sub_80058B0: @ 0x080058B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r6, #0
	adds r7, #0x54
	ldr r0, _08005934 @ =0x000004DC
	adds r4, r6, r0
	ldr r3, [r4]
	movs r1, #0x80
	ldr r2, _08005938 @ =0x03004F48
	ldrh r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _080058D6
	adds r0, r3, #1
	str r0, [r4]
_080058D6:
	movs r1, #0x40
	ldrh r0, [r2]
	ands r0, r1
	cmp r0, #0
	beq _080058E6
	ldr r0, [r4]
	subs r0, #1
	str r0, [r4]
_080058E6:
	movs r1, #0x9c
	lsls r1, r1, #3
	adds r2, r6, r1
	ldr r1, [r4]
	ldr r0, [r2]
	cmp r1, r0
	blt _080058F8
	movs r0, #0
	str r0, [r4]
_080058F8:
	ldr r0, [r4]
	cmp r0, #0
	bge _08005904
	ldr r0, [r2]
	subs r0, #1
	str r0, [r4]
_08005904:
	ldr r0, [r4]
	cmp r0, r3
	beq _08005910
	movs r0, #0x8d
	bl m4aSongNumStart
_08005910:
	movs r0, #0x30
	ldr r1, _0800593C @ =0x03004EA0
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0800591E
	b _08005A30
_0800591E:
	movs r0, #0x8e
	bl m4aSongNumStart
	cmp r5, #2
	beq _0800598C
	cmp r5, #2
	bgt _08005940
	cmp r5, #1
	beq _08005946
	b _08005A42
	.align 2, 0
_08005934: .4byte 0x000004DC
_08005938: .4byte 0x03004F48
_0800593C: .4byte 0x03004EA0
_08005940:
	cmp r5, #5
	beq _080059E8
	b _08005A42
_08005946:
	ldr r0, [r4]
	cmp r0, #1
	beq _0800596C
	cmp r0, #1
	bgt _08005956
	cmp r0, #0
	beq _0800595C
	b _08005A42
_08005956:
	cmp r0, #2
	beq _0800597C
	b _08005A42
_0800595C:
	ldr r0, _08005968 @ =0x03002C60
	ldrh r1, [r0]
	movs r2, #1
	eors r1, r2
	strh r1, [r0]
	b _08005A42
	.align 2, 0
_08005968: .4byte 0x03002C60
_0800596C:
	ldr r0, _08005978 @ =0x03002C60
	ldrh r1, [r0, #2]
	movs r2, #1
	eors r1, r2
	strh r1, [r0, #2]
	b _08005A42
	.align 2, 0
_08005978: .4byte 0x03002C60
_0800597C:
	ldr r0, _08005988 @ =0x03002C60
	ldrh r1, [r0, #4]
	movs r2, #1
	eors r1, r2
	strh r1, [r0, #4]
	b _08005A42
	.align 2, 0
_08005988: .4byte 0x03002C60
_0800598C:
	ldr r0, [r4]
	cmp r0, #1
	beq _080059B8
	cmp r0, #1
	bgt _0800599C
	cmp r0, #0
	beq _080059A6
	b _08005A42
_0800599C:
	cmp r0, #2
	beq _080059C8
	cmp r0, #3
	beq _080059D8
	b _08005A42
_080059A6:
	ldr r0, _080059B4 @ =0x03002C60
	ldrh r1, [r0, #6]
	movs r2, #1
	eors r1, r2
	strh r1, [r0, #6]
	b _08005A42
	.align 2, 0
_080059B4: .4byte 0x03002C60
_080059B8:
	ldr r0, _080059C4 @ =0x03002C60
	ldrh r1, [r0, #8]
	movs r2, #1
	eors r1, r2
	strh r1, [r0, #8]
	b _08005A42
	.align 2, 0
_080059C4: .4byte 0x03002C60
_080059C8:
	ldr r0, _080059D4 @ =0x03002C60
	ldrh r1, [r0, #0xa]
	movs r2, #1
	eors r1, r2
	strh r1, [r0, #0xa]
	b _08005A42
	.align 2, 0
_080059D4: .4byte 0x03002C60
_080059D8:
	ldr r0, _080059E4 @ =0x03002C60
	ldrh r1, [r0, #0xc]
	movs r2, #1
	eors r1, r2
	strh r1, [r0, #0xc]
	b _08005A42
	.align 2, 0
_080059E4: .4byte 0x03002C60
_080059E8:
	ldr r0, [r4]
	cmp r0, #1
	beq _08005A10
	cmp r0, #1
	bgt _080059F8
	cmp r0, #0
	beq _080059FE
	b _08005A42
_080059F8:
	cmp r0, #2
	beq _08005A20
	b _08005A42
_080059FE:
	ldr r0, _08005A0C @ =0x03002C60
	ldrh r1, [r0, #0xe]
	movs r2, #1
	eors r1, r2
	strh r1, [r0, #0xe]
	b _08005A42
	.align 2, 0
_08005A0C: .4byte 0x03002C60
_08005A10:
	ldr r0, _08005A1C @ =0x03002C60
	ldrh r1, [r0, #0x10]
	movs r2, #1
	eors r1, r2
	strh r1, [r0, #0x10]
	b _08005A42
	.align 2, 0
_08005A1C: .4byte 0x03002C60
_08005A20:
	ldr r0, _08005A2C @ =0x03002C60
	ldrh r1, [r0, #0x12]
	movs r2, #1
	eors r1, r2
	strh r1, [r0, #0x12]
	b _08005A42
	.align 2, 0
_08005A2C: .4byte 0x03002C60
_08005A30:
	movs r0, #0xb
	ands r1, r0
	cmp r1, #0
	beq _08005A42
	movs r0, #0x8f
	bl m4aSongNumStart
	movs r0, #1
	b _08005C96
_08005A42:
	ldr r1, [r6, #0x4c]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldr r1, _08005AB0 @ =gSinTable
	lsls r0, r0, #0x19
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08005A54
	adds r0, #0x3f
_08005A54:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0x92
	lsls r2, r2, #3
	adds r1, r7, r2
	ldr r2, [r1]
	lsls r2, r2, #3
	lsls r0, r0, #1
	asrs r0, r0, #0xf
	adds r0, #2
	adds r2, r2, r0
	lsls r2, r2, #0x10
	ldr r3, _08005AB4 @ =0x00000494
	adds r0, r7, r3
	ldr r1, [r0]
	lsls r1, r1, #3
	subs r3, #0xc
	adds r0, r7, r3
	ldr r0, [r0]
	lsls r0, r0, #4
	adds r0, #0xa
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r2, #0x10
	orrs r2, r1
	str r2, [sp, #8]
	ldr r0, _08005AB8 @ =_080C87A0
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	cmp r5, #2
	beq _08005B60
	cmp r5, #2
	bgt _08005ABC
	cmp r5, #1
	beq _08005AC4
	b _08005C94
	.align 2, 0
_08005AB0: .4byte gSinTable
_08005AB4: .4byte 0x00000494
_08005AB8: .4byte _080C87A0
_08005ABC:
	cmp r5, #5
	bne _08005AC2
	b _08005C08
_08005AC2:
	b _08005C94
_08005AC4:
	movs r4, #0
	ldr r1, _08005AEC @ =0x0000048C
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r4, r0
	blt _08005AD2
	b _08005C94
_08005AD2:
	movs r2, #0x92
	lsls r2, r2, #3
	adds r6, r7, r2
	ldr r3, _08005AF0 @ =0x03002C60
	mov r8, r3
	add r5, sp, #8
_08005ADE:
	cmp r4, #1
	beq _08005B04
	cmp r4, #1
	bgt _08005AF4
	cmp r4, #0
	beq _08005AFA
	b _08005B22
	.align 2, 0
_08005AEC: .4byte 0x0000048C
_08005AF0: .4byte 0x03002C60
_08005AF4:
	cmp r4, #2
	beq _08005B0E
	b _08005B22
_08005AFA:
	ldr r2, [r6]
	lsls r2, r2, #3
	mov r0, r8
	ldrh r1, [r0]
	b _08005B16
_08005B04:
	ldr r2, [r6]
	lsls r2, r2, #3
	mov r3, r8
	ldrh r1, [r3, #2]
	b _08005B16
_08005B0E:
	ldr r2, [r6]
	lsls r2, r2, #3
	mov r0, r8
	ldrh r1, [r0, #4]
_08005B16:
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x48
	adds r2, r2, r0
	strh r2, [r5]
_08005B22:
	ldr r1, _08005B54 @ =0x00000494
	adds r0, r7, r1
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r0, r4, #4
	adds r0, #8
	adds r1, r1, r0
	movs r0, #0
	strh r1, [r5, #2]
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _08005B58 @ =_080C8784
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	adds r4, #1
	ldr r2, _08005B5C @ =0x0000048C
	adds r0, r7, r2
	ldr r0, [r0]
	cmp r4, r0
	blt _08005ADE
	b _08005C94
	.align 2, 0
_08005B54: .4byte 0x00000494
_08005B58: .4byte _080C8784
_08005B5C: .4byte 0x0000048C
_08005B60:
	movs r4, #0
	ldr r3, _08005B88 @ =0x0000048C
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r4, r0
	blt _08005B6E
	b _08005C94
_08005B6E:
	movs r0, #0x92
	lsls r0, r0, #3
	adds r6, r7, r0
	ldr r1, _08005B8C @ =0x03002C60
	mov r8, r1
	add r5, sp, #8
_08005B7A:
	cmp r4, #1
	beq _08005BA4
	cmp r4, #1
	bgt _08005B90
	cmp r4, #0
	beq _08005B9A
	b _08005BCC
	.align 2, 0
_08005B88: .4byte 0x0000048C
_08005B8C: .4byte 0x03002C60
_08005B90:
	cmp r4, #2
	beq _08005BAE
	cmp r4, #3
	beq _08005BB8
	b _08005BCC
_08005B9A:
	ldr r2, [r6]
	lsls r2, r2, #3
	mov r3, r8
	ldrh r1, [r3, #6]
	b _08005BC0
_08005BA4:
	ldr r2, [r6]
	lsls r2, r2, #3
	mov r0, r8
	ldrh r1, [r0, #8]
	b _08005BC0
_08005BAE:
	ldr r2, [r6]
	lsls r2, r2, #3
	mov r3, r8
	ldrh r1, [r3, #0xa]
	b _08005BC0
_08005BB8:
	ldr r2, [r6]
	lsls r2, r2, #3
	mov r0, r8
	ldrh r1, [r0, #0xc]
_08005BC0:
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x48
	adds r2, r2, r0
	strh r2, [r5]
_08005BCC:
	ldr r1, _08005BFC @ =0x00000494
	adds r0, r7, r1
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r0, r4, #4
	adds r0, #8
	adds r1, r1, r0
	movs r0, #0
	strh r1, [r5, #2]
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _08005C00 @ =_080C8784
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	adds r4, #1
	ldr r2, _08005C04 @ =0x0000048C
	adds r0, r7, r2
	ldr r0, [r0]
	cmp r4, r0
	blt _08005B7A
	b _08005C94
	.align 2, 0
_08005BFC: .4byte 0x00000494
_08005C00: .4byte _080C8784
_08005C04: .4byte 0x0000048C
_08005C08:
	movs r4, #0
	ldr r3, _08005C30 @ =0x0000048C
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r4, r0
	bge _08005C94
	movs r0, #0x92
	lsls r0, r0, #3
	adds r6, r7, r0
	ldr r1, _08005C34 @ =0x03002C60
	mov r8, r1
	add r5, sp, #8
_08005C20:
	cmp r4, #1
	beq _08005C48
	cmp r4, #1
	bgt _08005C38
	cmp r4, #0
	beq _08005C3E
	b _08005C66
	.align 2, 0
_08005C30: .4byte 0x0000048C
_08005C34: .4byte 0x03002C60
_08005C38:
	cmp r4, #2
	beq _08005C52
	b _08005C66
_08005C3E:
	ldr r2, [r6]
	lsls r2, r2, #3
	mov r3, r8
	ldrh r1, [r3, #0xe]
	b _08005C5A
_08005C48:
	ldr r2, [r6]
	lsls r2, r2, #3
	mov r0, r8
	ldrh r1, [r0, #0x10]
	b _08005C5A
_08005C52:
	ldr r2, [r6]
	lsls r2, r2, #3
	mov r3, r8
	ldrh r1, [r3, #0x12]
_08005C5A:
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x48
	adds r2, r2, r0
	strh r2, [r5]
_08005C66:
	ldr r1, _08005CA4 @ =0x00000494
	adds r0, r7, r1
	ldr r1, [r0]
	lsls r1, r1, #3
	lsls r0, r4, #4
	adds r0, #8
	adds r1, r1, r0
	movs r0, #0
	strh r1, [r5, #2]
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _08005CA8 @ =_080C8784
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	adds r4, #1
	ldr r2, _08005CAC @ =0x0000048C
	adds r0, r7, r2
	ldr r0, [r0]
	cmp r4, r0
	blt _08005C20
_08005C94:
	movs r0, #0
_08005C96:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08005CA4: .4byte 0x00000494
_08005CA8: .4byte _080C8784
_08005CAC: .4byte 0x0000048C

	thumb_func_start sub_8005CB0
sub_8005CB0: @ 0x08005CB0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08005D78 @ =0x000011FE
	adds r2, r5, r0
	ldrh r3, [r2]
	ldr r0, _08005D7C @ =0x0000FFF3
	adds r1, r0, #0
	ands r1, r3
	movs r3, #8
	ldrh r4, [r2]
	movs r4, #0
	movs r6, #0
	orrs r1, r3
	strh r1, [r2]
	ldr r1, _08005D80 @ =0x00001204
	adds r2, r5, r1
	ldrh r1, [r2]
	ands r0, r1
	orrs r0, r3
	ldrh r1, [r2]
	orrs r0, r4
	strh r0, [r2]
	ldrh r1, [r2]
	ldr r0, _08005D84 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	ldrh r1, [r2]
	orrs r0, r4
	strh r0, [r2]
	adds r4, r5, #0
	adds r4, #0xdc
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0x80
	bl CpuFastSet
	movs r0, #0xb7
	lsls r0, r0, #2
	adds r5, r5, r0
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0x80
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	ldr r0, _08005D88 @ =_0807D1E8
	ldr r4, _08005D8C @ =0x02008400
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08005D90 @ =0x06008000
	ldr r3, _08005D94 @ =0x80000600
	adds r1, r4, #0
	bl dmaq_enqueue
	str r6, [sp]
	ldr r1, _08005D98 @ =0xFFFFC000
	adds r4, r4, r1
	ldr r2, _08005D9C @ =0x01000010
	mov r0, sp
	adds r1, r4, #0
	bl CpuFastSet
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08005DA0 @ =0x06004000
	ldr r3, _08005DA4 @ =0x80000020
	adds r1, r4, #0
	bl dmaq_enqueue
	ldr r4, _08005DA8 @ =_0807DB98
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	movs r0, #2
	bl map_setBufferDirty
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08005D78: .4byte 0x000011FE
_08005D7C: .4byte 0x0000FFF3
_08005D80: .4byte 0x00001204
_08005D84: .4byte 0x0000FFFC
_08005D88: .4byte _0807D1E8
_08005D8C: .4byte 0x02008400
_08005D90: .4byte 0x06008000
_08005D94: .4byte 0x80000600
_08005D98: .4byte 0xFFFFC000
_08005D9C: .4byte 0x01000010
_08005DA0: .4byte 0x06004000
_08005DA4: .4byte 0x80000020
_08005DA8: .4byte _0807DB98

	thumb_func_start sub_8005DAC
sub_8005DAC: @ 0x08005DAC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r6, r0, #0
	mov r8, r1
	movs r5, #0
	cmp r5, r6
	bge _08005DF8
_08005DBE:
	adds r5, #1
	subs r0, r6, r5
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #3
	add r4, r8
	adds r0, r4, #0
	bl sub_8003BB8
	ldrh r1, [r4, #6]
	lsls r1, r1, #0x10
	ldrh r0, [r4, #4]
	orrs r0, r1
	str r0, [sp, #8]
	ldr r0, [r4]
	movs r1, #8
	ldrsh r2, [r4, r1]
	movs r7, #0xa
	ldrsh r3, [r4, r7]
	movs r7, #0xc
	ldrsh r1, [r4, r7]
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	add r1, sp, #8
	bl oam_renderCellData
	cmp r5, r6
	blt _08005DBE
_08005DF8:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8005E04
sub_8005E04: @ 0x08005E04
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
	ldr r2, _08005EF0 @ =gSinTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08005E2C
	adds r0, #0x3f
_08005E2C:
	asrs r1, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	ldr r1, _08005EF4 @ =0x000003FF
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
_08005E5C:
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
	bge _08005E5C
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
_08005EF0: .4byte gSinTable
_08005EF4: .4byte 0x000003FF

	thumb_func_start renderCharacterSprites
renderCharacterSprites: @ 0x08005EF8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r1, #0
	adds r6, r2, #0
	cmp r3, #0
	beq _08005F10
	ldr r0, _08005F20 @ =0x03000038
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	ldr r0, _08005F24 @ =0x0300003C
	str r1, [r0]
_08005F10:
	cmp r7, #8
	beq _08005FAC
	cmp r6, #0x3f
	ble _08005F28
	movs r0, #0x7f
	subs r4, r0, r6
	b _08005F2A
	.align 2, 0
_08005F20: .4byte 0x03000038
_08005F24: .4byte 0x0300003C
_08005F28:
	adds r4, r6, #0
_08005F2A:
	adds r0, r7, #0
	bl spm_menuCharIdxToCharId
	adds r5, r0, #0
	ldr r0, _08005F90 @ =_080D9344
	adds r0, r4, r0
	ldrb r1, [r0]
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	subs r0, r0, r5
	lsls r0, r0, #0xd
	lsls r1, r1, #0xb
	ldr r2, _08005F94 @ =characterPalettes_bin_end
	adds r1, r1, r2
	adds r4, r0, r1
	ldr r1, _08005F98 @ =0x0300003C
	ldr r0, [r1]
	cmp r0, r6
	beq _08005F62
	str r6, [r1]
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08005F9C @ =0x02015400
	ldr r3, _08005FA0 @ =0x80000400
	adds r1, r4, #0
	bl dmaq_enqueue
_08005F62:
	ldr r1, _08005FA4 @ =0x03000038
	ldr r0, [r1]
	cmp r0, r7
	beq _0800602C
	str r7, [r1]
	lsls r4, r5, #9
	ldr r0, _08005FA8 @ =characterPalettes_bin
	adds r4, r4, r0
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	ldr r2, [sp, #0x18]
	lsls r0, r2, #5
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	b _0800602C
	.align 2, 0
_08005F90: .4byte _080D9344
_08005F94: .4byte characterPalettes_bin_end
_08005F98: .4byte 0x0300003C
_08005F9C: .4byte 0x02015400
_08005FA0: .4byte 0x80000400
_08005FA4: .4byte 0x03000038
_08005FA8: .4byte characterPalettes_bin
_08005FAC:
	cmp r6, #0x3f
	ble _08005FB6
	movs r0, #0x7f
	subs r1, r0, r6
	b _08005FB8
_08005FB6:
	adds r1, r6, #0
_08005FB8:
	ldr r0, _0800605C @ =_080D9344
	adds r0, r1, r0
	ldrb r1, [r0]
	ldr r3, _08006060 @ =0x0203EBF0
	ldr r2, [r3]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	subs r0, r0, r2
	lsls r0, r0, #0xd
	lsls r1, r1, #0xb
	ldr r4, _08006064 @ =characterPalettes_bin_end
	adds r1, r1, r4
	adds r4, r0, r1
	ldr r1, _08006068 @ =0x0203EBF4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x1e
	ble _08005FEC
	movs r0, #0
	str r0, [r1]
	adds r0, r2, #1
	movs r1, #7
	ands r0, r1
	str r0, [r3]
_08005FEC:
	ldr r1, _0800606C @ =0x0300003C
	ldr r0, [r1]
	cmp r0, r6
	beq _08006004
	str r6, [r1]
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08006070 @ =0x02015400
	ldr r3, _08006074 @ =0x80000400
	adds r1, r4, #0
	bl dmaq_enqueue
_08006004:
	ldr r1, _08006078 @ =0x03000038
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	ldr r2, [sp, #0x18]
	lsls r0, r2, #5
	adds r1, r1, r0
	ldr r2, _0800607C @ =0x01000008
	mov r0, sp
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
_0800602C:
	ldr r4, _08006080 @ =0x03000030
	ldr r0, [sp, #0x18]
	lsls r5, r0, #0xc
	ldr r3, _08006084 @ =_080C8944
	adds r2, r4, #0
	movs r1, #3
_08006038:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bge _08006038
	movs r0, #0x40
	ands r0, r6
	cmp r0, #0
	beq _08006088
	ldrh r1, [r4, #4]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	b _0800608E
	.align 2, 0
_0800605C: .4byte _080D9344
_08006060: .4byte 0x0203EBF0
_08006064: .4byte characterPalettes_bin_end
_08006068: .4byte 0x0203EBF4
_0800606C: .4byte 0x0300003C
_08006070: .4byte 0x02015400
_08006074: .4byte 0x80000400
_08006078: .4byte 0x03000038
_0800607C: .4byte 0x01000008
_08006080: .4byte 0x03000030
_08006084: .4byte _080C8944
_08006088:
	ldrh r1, [r4, #4]
	ldr r0, _080060A4 @ =0x0000EFFF
	ands r0, r1
_0800608E:
	strh r0, [r4, #4]
	ldrh r1, [r4, #6]
	ldr r0, _080060A8 @ =0x00000FFF
	ands r0, r1
	orrs r0, r5
	strh r0, [r4, #6]
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080060A4: .4byte 0x0000EFFF
_080060A8: .4byte 0x00000FFF

	thumb_func_start sub_80060AC
sub_80060AC: @ 0x080060AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	mov r8, r0
	ldr r7, _080060D4 @ =0x000004EC
	add r7, r8
	movs r0, #0xdf
	lsls r0, r0, #3
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0xc
	bls _080060C8
	b _0800641E
_080060C8:
	lsls r0, r0, #2
	ldr r1, _080060D8 @ =_080060DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080060D4: .4byte 0x000004EC
_080060D8: .4byte _080060DC
_080060DC: @ jump table
	.4byte _0800641E @ case 0
	.4byte _0800641E @ case 1
	.4byte _08006110 @ case 2
	.4byte _08006142 @ case 3
	.4byte _0800618C @ case 4
	.4byte _0800619E @ case 5
	.4byte _080061B4 @ case 6
	.4byte _08006210 @ case 7
	.4byte _0800621A @ case 8
	.4byte _08006280 @ case 9
	.4byte _080062C0 @ case 10
	.4byte _08006304 @ case 11
	.4byte _080063A4 @ case 12
_08006110:
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r2, #0
	movs r0, #0x48
	strh r0, [r1]
	movs r3, #0xf5
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #0x53
	strh r0, [r1]
	movs r4, #0x84
	lsls r4, r4, #2
	adds r0, r7, r4
	str r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r7, r1
	str r2, [r0]
	movs r2, #0x83
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	adds r0, #1
	b _0800641C
_08006142:
	movs r3, #0x84
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x10
	bgt _0800617C
	ldr r1, _08006178 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800615E
	adds r0, #0x3f
_0800615E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	adds r4, r7, r0
	movs r0, #0x72
	muls r1, r0, r1
	asrs r1, r1, #0xf
	adds r1, #1
	b _080061F0
	.align 2, 0
_08006178: .4byte gSinTable
_0800617C:
	movs r0, #0
	str r0, [r1]
	movs r2, #0x83
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	adds r0, #1
	b _0800641C
_0800618C:
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r7, r3
	movs r0, #0xde
	str r0, [r1]
	movs r4, #0x83
	lsls r4, r4, #2
	adds r1, r7, r4
	b _0800641A
_0800619E:
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #0
	str r0, [r1]
	movs r2, #0x83
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	adds r0, #1
	b _0800641C
_080061B4:
	movs r3, #0x84
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x10
	bgt _08006200
	ldr r1, _080061FC @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080061D0
	adds r0, #0x3f
_080061D0:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r4, r7, r1
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r0
	lsls r1, r1, #1
	rsbs r1, r1, #0
	asrs r1, r1, #0xf
	adds r1, #0x78
_080061F0:
	movs r0, #0xc8
	lsls r0, r0, #7
	bl __divsi3
	str r0, [r4]
	b _0800641E
	.align 2, 0
_080061FC: .4byte gSinTable
_08006200:
	movs r0, #0
	str r0, [r1]
	movs r2, #0x83
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	adds r0, #1
	b _0800641C
_08006210:
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r7, r3
	movs r0, #0
	b _0800641C
_0800621A:
	ldr r2, _08006274 @ =_080D92FA
	mov r4, r8
	ldr r0, [r4, #0x18]
	lsls r0, r0, #2
	adds r1, r0, r2
	ldrh r4, [r1]
	adds r2, #2
	adds r0, r0, r2
	ldrh r6, [r0]
	adds r0, r4, #0
	bl m4aSongNumStart
	ldr r5, _08006278 @ =gMPlayTable
	ldr r0, _0800627C @ =gSongTable
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
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #0
	str r0, [r1]
	movs r2, #0x83
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	adds r0, #1
	b _0800641C
	.align 2, 0
_08006274: .4byte _080D92FA
_08006278: .4byte gMPlayTable
_0800627C: .4byte gSongTable
_08006280:
	movs r3, #0x84
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x20
	ble _08006292
	b _0800641E
_08006292:
	ldr r1, _080062BC @ =gSinTable
	lsls r0, r0, #0x19
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800629E
	adds r0, #0x3f
_0800629E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0xd0
	muls r0, r1, r0
	asrs r0, r0, #0xf
	adds r0, #0x48
	movs r4, #0xf4
	lsls r4, r4, #1
	adds r1, r7, r4
	strh r0, [r1]
	b _0800641E
	.align 2, 0
_080062BC: .4byte gSinTable
_080062C0:
	movs r0, #0x9c
	bl m4aSongNumStart
	movs r2, #0
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #0x48
	strh r0, [r1]
	movs r3, #0xf5
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #0x53
	strh r0, [r1]
	movs r4, #0xfc
	lsls r4, r4, #1
	adds r1, r7, r4
	ldr r0, _08006300 @ =0xFFFF8000
	str r0, [r1]
	adds r3, #0x12
	adds r1, r7, r3
	lsls r0, r0, #3
	str r0, [r1]
	adds r4, #0x18
	adds r0, r7, r4
	str r2, [r0]
	movs r0, #0x83
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	adds r0, #1
	b _0800641C
	.align 2, 0
_08006300: .4byte 0xFFFF8000
_08006304:
	movs r1, #0x84
	lsls r1, r1, #2
	adds r3, r7, r1
	ldr r0, [r3]
	adds r0, #1
	str r0, [r3]
	cmp r0, #0x11
	bgt _0800637C
	movs r2, #0xf5
	lsls r2, r2, #1
	adds r4, r7, r2
	movs r0, #0xfe
	lsls r0, r0, #1
	adds r2, r7, r0
	movs r1, #2
	ldrsh r0, [r2, r1]
	ldrh r1, [r4]
	adds r0, r0, r1
	movs r5, #0
	strh r0, [r4]
	movs r0, #0xfc
	lsls r0, r0, #1
	adds r1, r7, r0
	ldr r0, [r2]
	ldr r1, [r1]
	subs r0, r0, r1
	str r0, [r2]
	ldr r0, [r3]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800641E
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r2, r7, r1
	movs r3, #0
	ldrsh r1, [r4, r3]
	movs r0, #0x53
	subs r0, r0, r1
	asrs r0, r0, #3
	adds r0, #0x67
	lsls r0, r0, #0x10
	ldrh r1, [r2]
	orrs r1, r0
	str r1, [sp, #8]
	ldr r0, _08006378 @ =_080C894C
	movs r4, #0x80
	lsls r4, r4, #2
	adds r1, r7, r4
	ldr r3, [r1]
	str r5, [sp]
	str r5, [sp, #4]
	add r1, sp, #8
	adds r2, r3, #0
	bl oam_renderCellData
	b _0800641E
	.align 2, 0
_08006378: .4byte _080C894C
_0800637C:
	movs r0, #0xf5
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r2, #0
	movs r0, #0x53
	strh r0, [r1]
	str r2, [r3]
	movs r3, #0x83
	lsls r3, r3, #2
	adds r1, r7, r3
	movs r0, #0xc
	str r0, [r1]
	movs r4, #0x85
	lsls r4, r4, #2
	adds r0, r7, r4
	str r2, [r0]
	movs r0, #0x9f
	bl m4aSongNumStart
	b _0800641E
_080063A4:
	movs r0, #0x81
	lsls r0, r0, #2
	adds r2, r7, r0
	ldr r5, _080064BC @ =_080D9384
	movs r1, #0x85
	lsls r1, r1, #2
	adds r4, r7, r1
	ldr r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r1, r1, r5
	ldrb r0, [r1]
	movs r3, #0xe6
	muls r0, r3, r0
	asrs r0, r0, #8
	lsls r0, r0, #1
	str r0, [r2]
	movs r0, #0x82
	lsls r0, r0, #2
	adds r2, r7, r0
	ldr r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r1, r5, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	muls r0, r3, r0
	asrs r0, r0, #8
	lsls r0, r0, #1
	str r0, [r2]
	movs r1, #0x84
	lsls r1, r1, #2
	adds r3, r7, r1
	ldr r2, [r3]
	adds r2, #1
	str r2, [r3]
	ldr r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r5, #2
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r2, r0
	ble _0800641E
	movs r0, #0
	str r0, [r3]
	ldr r1, [r4]
	adds r1, #1
	str r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, r0, r5
	ldrb r1, [r0]
	cmp r1, #0
	bne _0800641E
	str r1, [r4]
	movs r2, #0x83
	lsls r2, r2, #2
	adds r1, r7, r2
_0800641A:
	movs r0, #1
_0800641C:
	str r0, [r1]
_0800641E:
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #0
	beq _08006508
	ldr r2, _080064C0 @ =_080D9130
	mov r4, r8
	ldr r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r7, r0
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r3, #0x10
	ldrsb r3, [r0, r3]
	movs r0, #0xf6
	lsls r0, r0, #1
	adds r2, r7, r0
	movs r1, #0xf8
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2]
	cmp r1, #0x7f
	ble _08006464
	adds r0, r2, #0
_0800645C:
	subs r1, #0x7f
	cmp r1, #0x7f
	bgt _0800645C
	str r1, [r0]
_08006464:
	movs r2, #0xf6
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r1, [r0]
	cmp r1, #0
	bge _0800647C
	adds r2, r0, #0
	adds r0, r1, #0
_08006474:
	adds r0, #0x7f
	cmp r0, #0
	blt _08006474
	str r0, [r2]
_0800647C:
	movs r4, #0x83
	lsls r4, r4, #2
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #0xc
	beq _080064C8
	movs r1, #0xf6
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r2, [r0]
	movs r0, #0xf
	str r0, [sp]
	mov r0, r8
	adds r1, r3, #0
	movs r3, #0
	bl renderCharacterSprites
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r3, #0x80
	lsls r3, r3, #2
	adds r2, r7, r3
	ldr r3, [r2]
	movs r2, #0
	str r2, [sp]
	ldr r2, _080064C4 @ =_080D93A0
	str r2, [sp, #4]
	adds r2, r3, #0
	bl oam_renderCellData
	b _080064FE
	.align 2, 0
_080064BC: .4byte _080D9384
_080064C0: .4byte _080D9130
_080064C4: .4byte _080D93A0
_080064C8:
	movs r4, #0xf6
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r2, [r0]
	movs r0, #0xf
	str r0, [sp]
	mov r0, r8
	adds r1, r3, #0
	movs r3, #0
	bl renderCharacterSprites
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r3, #0x81
	lsls r3, r3, #2
	adds r2, r7, r3
	ldr r2, [r2]
	adds r4, #0x1c
	adds r3, r7, r4
	ldr r3, [r3]
	movs r4, #0
	str r4, [sp]
	ldr r4, _08006514 @ =_080D93A0
	str r4, [sp, #4]
	bl oam_renderCellData
_080064FE:
	movs r0, #0x92
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #1
	str r0, [r1]
_08006508:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006514: .4byte _080D93A0

	thumb_func_start sub_8006518
sub_8006518: @ 0x08006518
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r0, [r4, #0xc]
	cmp r0, r5
	bne _08006556
	lsls r0, r7, #0x10
	lsls r1, r3, #0x10
	lsrs r0, r0, #0x10
	orrs r0, r1
	str r0, [sp, #8]
	ldr r1, _080065B4 @ =_080D93A8
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	ldr r0, [r4, #0xc]
	cmp r0, r5
	beq _080065A8
_08006556:
	lsls r6, r5, #2
	ldr r1, _080065B8 @ =0x000004FC
	adds r0, r4, r1
	adds r0, r0, r6
	ldr r0, [r0]
	cmp r0, #2
	ble _080065A8
	ldr r4, _080065BC @ =_080D93C8
	lsls r2, r5, #1
	adds r0, r2, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, _080065C0 @ =0xFFFF0000
	ldr r1, [sp, #0xc]
	ands r1, r3
	orrs r1, r0
	str r1, [sp, #0xc]
	adds r2, #1
	adds r2, r2, r4
	movs r0, #0
	ldrsb r0, [r2, r0]
	add r0, r8
	lsls r0, r0, #0x10
	ldr r2, _080065C4 @ =0x0000FFFF
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0xc]
	ldr r0, _080065C8 @ =_080D93B8
	adds r0, r6, r0
	ldr r0, [r0]
	add r1, sp, #0xc
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r3, #0
	bl oam_renderCellData
_080065A8:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080065B4: .4byte _080D93A8
_080065B8: .4byte 0x000004FC
_080065BC: .4byte _080D93C8
_080065C0: .4byte 0xFFFF0000
_080065C4: .4byte 0x0000FFFF
_080065C8: .4byte _080D93B8

	thumb_func_start sub_80065CC
sub_80065CC: @ 0x080065CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r0, _080065F0 @ =0x000004EC
	adds r5, r7, r0
	movs r1, #0xe1
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #7
	bls _080065E4
	b _0800670A
_080065E4:
	lsls r0, r0, #2
	ldr r1, _080065F4 @ =_080065F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080065F0: .4byte 0x000004EC
_080065F4: .4byte _080065F8
_080065F8: @ jump table
	.4byte _0800670A @ case 0
	.4byte _0800670A @ case 1
	.4byte _08006618 @ case 2
	.4byte _08006634 @ case 3
	.4byte _08006684 @ case 4
	.4byte _08006690 @ case 5
	.4byte _080066A6 @ case 6
	.4byte _08006700 @ case 7
_08006618:
	movs r2, #0x86
	lsls r2, r2, #2
	adds r0, r5, r2
	movs r1, #0
	str r1, [r0]
	adds r2, #8
	adds r0, r5, r2
	str r1, [r0]
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, [r1]
	adds r0, #1
	b _08006708
_08006634:
	movs r2, #0x88
	lsls r2, r2, #2
	adds r1, r5, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x10
	bgt _08006674
	ldr r1, _08006670 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08006650
	adds r0, #0x3f
_08006650:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x86
	lsls r1, r1, #2
	adds r4, r5, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #5
	adds r1, r1, r0
	asrs r1, r1, #0xf
	adds r1, #1
	b _080066E0
	.align 2, 0
_08006670: .4byte gSinTable
_08006674:
	movs r0, #0
	str r0, [r1]
	movs r2, #0x87
	lsls r2, r2, #2
	adds r1, r5, r2
	ldr r0, [r1]
	adds r0, #1
	b _08006708
_08006684:
	movs r0, #0x86
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x80
	lsls r0, r0, #1
	b _08006708
_08006690:
	movs r2, #0x88
	lsls r2, r2, #2
	adds r1, r5, r2
	movs r0, #0
	str r0, [r1]
	movs r0, #0x87
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, [r1]
	adds r0, #1
	b _08006708
_080066A6:
	movs r2, #0x88
	lsls r2, r2, #2
	adds r1, r5, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x10
	bgt _080066F0
	ldr r1, _080066EC @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080066C2
	adds r0, #0x3f
_080066C2:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x86
	lsls r1, r1, #2
	adds r4, r5, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #5
	adds r1, r1, r0
	rsbs r1, r1, #0
	asrs r1, r1, #0xf
	adds r1, #0x64
_080066E0:
	movs r0, #0xc8
	lsls r0, r0, #7
	bl __divsi3
	str r0, [r4]
	b _0800670A
	.align 2, 0
_080066EC: .4byte gSinTable
_080066F0:
	movs r0, #0
	str r0, [r1]
	movs r2, #0x87
	lsls r2, r2, #2
	adds r1, r5, r2
	ldr r0, [r1]
	adds r0, #1
	b _08006708
_08006700:
	movs r0, #0x86
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0
_08006708:
	str r0, [r1]
_0800670A:
	movs r1, #0x86
	lsls r1, r1, #2
	adds r4, r5, r1
	ldr r3, [r4]
	cmp r3, #0
	beq _08006768
	movs r6, #0
	ldr r0, _08006770 @ =0x00300048
	str r0, [sp, #8]
	ldr r0, _08006774 @ =_080C888C
	str r6, [sp]
	str r6, [sp, #4]
	add r1, sp, #8
	adds r2, r3, #0
	bl oam_renderCellData
	ldr r3, [r4]
	cmp r3, #0
	beq _08006768
	ldr r0, [r7, #0xc]
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r4, [r0]
	cmp r4, #4
	beq _08006768
	ldr r0, _08006778 @ =0x0073003C
	str r0, [sp, #0xc]
	ldr r1, _0800677C @ =_080D9130
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x10]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _08006780 @ =_080D93F4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08006768
	add r1, sp, #0xc
	str r6, [sp]
	str r6, [sp, #4]
	adds r2, r3, #0
	bl oam_renderCellData
_08006768:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006770: .4byte 0x00300048
_08006774: .4byte _080C888C
_08006778: .4byte 0x0073003C
_0800677C: .4byte _080D9130
_08006780: .4byte _080D93F4

	thumb_func_start sub_8006784
sub_8006784: @ 0x08006784
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, _080067B0 @ =0x0000056C
	adds r4, r4, r0
	movs r0, #1
	bl pltt_getBuffer
	adds r6, r0, #0
	adds r6, #8
	ldrh r1, [r4, #0x10]
	lsls r0, r1, #0x10
	asrs r7, r0, #0x12
	movs r0, #0x1f
	ands r7, r0
	movs r0, #0x1f
	adds r5, r0, #0
	ands r5, r1
	cmp r5, #0xf
	bgt _080067B4
	lsls r0, r5, #1
	b _080067B8
	.align 2, 0
_080067B0: .4byte 0x0000056C
_080067B4:
	subs r0, r0, r5
	lsls r0, r0, #1
_080067B8:
	adds r5, r0, #0
	mov r1, sp
	adds r0, #0xf
	movs r2, #0x1f
	ands r0, r2
	lsls r0, r0, #5
	movs r3, #0xf8
	lsls r3, r3, #7
	adds r4, r3, #0
	orrs r0, r4
	strh r0, [r1]
	mov r3, sp
	movs r1, #0x37
	subs r1, r1, r5
	ands r1, r2
	lsls r1, r1, #5
	adds r0, r1, #0
	orrs r0, r2
	strh r0, [r3, #2]
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #0xa
	orrs r1, r0
	strh r1, [r3, #4]
	subs r1, r2, r5
	ands r1, r2
	adds r0, r1, #0
	orrs r0, r4
	strh r0, [r3, #6]
	mov r2, sp
	movs r3, #0xb8
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r1, r0
	strh r1, [r2, #8]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r6, #2]
	cmp r7, #7
	bgt _08006814
	mov r0, sp
	ldrh r0, [r0, #8]
	strh r0, [r6]
	mov r0, sp
	ldrh r0, [r0, #2]
	b _0800683E
_08006814:
	cmp r7, #0xf
	bgt _08006824
	mov r0, sp
	ldrh r0, [r0, #2]
	strh r0, [r6]
	mov r0, sp
	ldrh r0, [r0, #4]
	b _0800683E
_08006824:
	cmp r7, #0x17
	bgt _08006834
	mov r0, sp
	ldrh r0, [r0, #4]
	strh r0, [r6]
	mov r0, sp
	ldrh r0, [r0, #6]
	b _0800683E
_08006834:
	mov r0, sp
	ldrh r0, [r0, #6]
	strh r0, [r6]
	mov r0, sp
	ldrh r0, [r0, #8]
_0800683E:
	strh r0, [r6, #4]
	movs r0, #1
	bl pltt_setDirtyFlag
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8006850
sub_8006850: @ 0x08006850
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08006870 @ =0x0000071C
	adds r6, r5, r0
	ldr r0, [r6]
	cmp r0, #1
	beq _08006874
	cmp r0, #1
	bgt _08006866
	b _08006A20
_08006866:
	cmp r0, #2
	bne _0800686C
	b _08006968
_0800686C:
	b _08006A20
	.align 2, 0
_08006870: .4byte 0x0000071C
_08006874:
	movs r2, #0xe5
	lsls r2, r2, #3
	adds r1, r5, r2
	movs r0, #0
	str r0, [r1]
	movs r0, #0xdb
	lsls r0, r0, #3
	adds r3, r5, r0
	ldr r0, [r3]
	subs r0, #3
	ldr r1, _08006954 @ =gSinTable
	mov ip, r1
	lsls r0, r0, #0x19
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08006896
	adds r0, #0x3f
_08006896:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	add r0, ip
	ldr r1, [r0]
	ldr r2, _08006958 @ =0x000006D4
	adds r0, r5, r2
	lsls r1, r1, #2
	asrs r1, r1, #0xf
	ldrh r0, [r0]
	subs r0, r0, r1
	adds r2, #0x3c
	adds r1, r5, r2
	strh r0, [r1]
	ldr r0, [r3]
	subs r0, #3
	lsls r0, r0, #0x19
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080068C0
	adds r0, #0x3f
_080068C0:
	asrs r0, r0, #6
	movs r7, #0x80
	lsls r7, r7, #1
	subs r0, r7, r0
	ldr r4, _0800695C @ =0x000003FF
	ands r0, r4
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	ldr r2, _08006960 @ =0x000006D6
	adds r1, r5, r2
	lsls r0, r0, #2
	asrs r0, r0, #0xf
	subs r0, #0x10
	ldrh r1, [r1]
	subs r1, r1, r0
	adds r2, #0x3c
	adds r0, r5, r2
	strh r1, [r0]
	ldr r0, [r3]
	subs r0, #3
	lsls r0, r0, #0x19
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080068F4
	adds r0, #0x3f
_080068F4:
	asrs r0, r0, #6
	ands r0, r4
	lsls r0, r0, #2
	add r0, ip
	ldr r1, [r0]
	ldr r0, _08006964 @ =0x00000714
	adds r2, r5, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	asrs r0, r0, #0xf
	str r0, [r2]
	ldr r0, [r3]
	subs r0, #3
	lsls r0, r0, #0x19
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800691A
	adds r0, #0x3f
_0800691A:
	asrs r0, r0, #6
	subs r0, r7, r0
	ands r0, r4
	lsls r0, r0, #2
	add r0, ip
	ldr r1, [r0]
	movs r2, #0xe3
	lsls r2, r2, #3
	adds r4, r5, r2
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	asrs r0, r0, #0xf
	str r0, [r4]
	movs r1, #6
	bl __divsi3
	str r0, [r4]
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r0, r5, r1
	str r7, [r0]
	movs r0, #2
	str r0, [r6]
	movs r0, #0x7b
	bl m4aSongNumStart
	b _08006A20
	.align 2, 0
_08006954: .4byte gSinTable
_08006958: .4byte 0x000006D4
_0800695C: .4byte 0x000003FF
_08006960: .4byte 0x000006D6
_08006964: .4byte 0x00000714
_08006968:
	movs r2, #0xe5
	lsls r2, r2, #3
	adds r1, r5, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x10
	bgt _08006A1C
	movs r0, #0xe2
	lsls r0, r0, #3
	adds r6, r5, r0
	ldr r1, _080069E0 @ =0x00000714
	adds r3, r5, r1
	ldr r1, [r3]
	ldrh r0, [r6]
	subs r0, r0, r1
	movs r2, #0
	mov ip, r2
	strh r0, [r6]
	ldr r0, _080069E4 @ =0x00000712
	adds r2, r5, r0
	movs r1, #0xe3
	lsls r1, r1, #3
	adds r7, r5, r1
	ldr r1, [r7]
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	movs r2, #0xe4
	lsls r2, r2, #3
	adds r4, r5, r2
	ldr r2, [r4]
	ldr r0, [r3]
	subs r1, r2, #4
	cmp r0, #0
	ble _080069B2
	adds r1, r2, #4
_080069B2:
	str r1, [r4]
	ldr r0, _080069E8 @ =0x00000724
	adds r2, r5, r0
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	cmp r0, #5
	bls _080069C6
	mov r1, ip
	str r1, [r2]
_080069C6:
	ldr r0, [r7]
	cmp r0, #0
	ble _080069F4
	ldr r1, _080069EC @ =_080D9444
	ldr r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r3, [r4]
	mov r2, ip
	str r2, [sp]
	ldr r1, _080069F0 @ =_080D943C
	b _08006A06
	.align 2, 0
_080069E0: .4byte 0x00000714
_080069E4: .4byte 0x00000712
_080069E8: .4byte 0x00000724
_080069EC: .4byte _080D9444
_080069F0: .4byte _080D943C
_080069F4:
	ldr r1, _08006A14 @ =_080D9444
	ldr r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r3, [r4]
	mov r1, ip
	str r1, [sp]
	ldr r1, _08006A18 @ =_080D9434
_08006A06:
	str r1, [sp, #4]
	adds r1, r6, #0
	adds r2, r3, #0
	bl oam_renderCellData
	b _08006A20
	.align 2, 0
_08006A14: .4byte _080D9444
_08006A18: .4byte _080D9434
_08006A1C:
	movs r0, #0
	str r0, [r6]
_08006A20:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8006A28
sub_8006A28: @ 0x08006A28
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r1, _08006A5C @ =0x000004EC
	adds r1, r1, r0
	mov sb, r1
	movs r6, #0
_08006A38:
	lsls r1, r6, #1
	adds r0, r1, r6
	lsls r0, r0, #3
	adds r0, #0x20
	mov r2, sb
	adds r5, r2, r0
	movs r0, #0xe
	ldrsb r0, [r5, r0]
	adds r3, r1, #0
	adds r7, r6, #1
	cmp r0, #0xa
	bls _08006A52
	b _08006C48
_08006A52:
	lsls r0, r0, #2
	ldr r1, _08006A60 @ =_08006A64
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08006A5C: .4byte 0x000004EC
_08006A60: .4byte _08006A64
_08006A64: @ jump table
	.4byte _08006C48 @ case 0
	.4byte _08006A90 @ case 1
	.4byte _08006AAC @ case 2
	.4byte _08006AAC @ case 3
	.4byte _08006AE8 @ case 4
	.4byte _08006AF0 @ case 5
	.4byte _08006B0C @ case 6
	.4byte _08006B84 @ case 7
	.4byte _08006B9E @ case 8
	.4byte _08006BB8 @ case 9
	.4byte _08006C48 @ case 10
_08006A90:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, #0xf8
	add r0, sb
	movs r1, #0
	bl sub_800EB74
	movs r1, #0x92
	lsls r1, r1, #2
	add r1, sb
	movs r0, #1
	str r0, [r1]
	b _08006C46
_08006AAC:
	ldrh r1, [r5, #0x10]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08006AD4
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	movs r1, #7
	ands r0, r1
	ldr r1, _08006ADC @ =_080D945C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08006AE0 @ =0x06016200
	ldr r3, _08006AE4 @ =0x80000100
	adds r1, r4, #0
	bl dmaq_enqueue
_08006AD4:
	ldrh r0, [r5, #0x10]
	adds r0, #1
	strh r0, [r5, #0x10]
	b _08006C46
	.align 2, 0
_08006ADC: .4byte _080D945C
_08006AE0: .4byte 0x06016200
_08006AE4: .4byte 0x80000100
_08006AE8:
	movs r0, #0
	strh r0, [r5, #0x10]
	movs r0, #5
	b _08006C44
_08006AF0:
	ldrh r0, [r5, #0x10]
	adds r0, #1
	movs r1, #0
	strh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r7, r6, #1
	cmp r0, #6
	bgt _08006B04
	b _08006C48
_08006B04:
	strh r1, [r5, #0x10]
	movs r0, #6
	strb r0, [r5, #0xe]
	b _08006C48
_08006B0C:
	ldrh r1, [r5, #0x10]
	movs r0, #3
	ands r0, r1
	adds r7, r6, #1
	cmp r0, #0
	bne _08006B4A
	lsls r0, r1, #0x10
	asrs r0, r0, #0x12
	movs r1, #7
	ands r0, r1
	ldr r1, _08006B74 @ =_0806E73C
	ldr r4, _08006B78 @ =0x06016400
	mov r8, r4
	lsls r0, r0, #7
	adds r4, r0, r1
	movs r6, #2
_08006B2C:
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	mov r2, r8
	ldr r3, _08006B7C @ =0x80000040
	bl dmaq_enqueue
	movs r0, #0x80
	add r8, r0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r4, r4, r1
	subs r6, #1
	cmp r6, #0
	bge _08006B2C
_08006B4A:
	movs r2, #0x10
	ldrsh r1, [r5, r2]
	adds r0, r1, #0
	cmp r1, #0
	bge _08006B56
	adds r0, r1, #3
_08006B56:
	asrs r0, r0, #2
	lsls r2, r0, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #6
	bhi _08006C48
	ldr r3, _08006B80 @ =_080D9418
	asrs r0, r2, #0xe
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r5]
	ldrh r0, [r5, #0x10]
	adds r0, #1
	strh r0, [r5, #0x10]
	b _08006C48
	.align 2, 0
_08006B74: .4byte _0806E73C
_08006B78: .4byte 0x06016400
_08006B7C: .4byte 0x80000040
_08006B80: .4byte _080D9418
_08006B84:
	ldrh r0, [r5, #4]
	strh r0, [r5, #0x12]
	ldrh r0, [r5, #6]
	strh r0, [r5, #0x14]
	adds r0, r6, #0
	movs r1, #3
	bl __modsi3
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	strh r1, [r5, #0x10]
	b _08006C40
_08006B9E:
	ldrh r0, [r5, #0x10]
	subs r0, #1
	movs r1, #0
	strh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	adds r7, r6, #1
	cmp r0, #0
	bgt _08006C48
	strh r1, [r5, #0x10]
	ldrb r0, [r5, #0xe]
	adds r0, #1
	strb r0, [r5, #0xe]
	b _08006C48
_08006BB8:
	ldrh r0, [r5, #0x10]
	adds r0, #1
	strh r0, [r5, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x64
	bgt _08006C40
	ldrh r0, [r5, #8]
	subs r0, #1
	strh r0, [r5, #8]
	ldrh r0, [r5, #0xa]
	subs r0, #1
	strh r0, [r5, #0xa]
	movs r4, #0xc
	ldrsh r1, [r5, r4]
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _08006BE8
	ldr r2, _08006BE4 @ =0xFFFFF000
	adds r0, r1, r2
	b _08006BEE
	.align 2, 0
_08006BE4: .4byte 0xFFFFF000
_08006BE8:
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r1, r4
_08006BEE:
	strh r0, [r5, #0xc]
	ldr r2, _08006C3C @ =_080D920C
	lsls r0, r6, #2
	adds r0, r0, r2
	movs r4, #0
	ldrsh r1, [r0, r4]
	movs r4, #0x12
	ldrsh r0, [r5, r4]
	subs r1, r1, r0
	movs r4, #0x10
	ldrsh r0, [r5, r4]
	muls r0, r1, r0
	cmp r0, #0
	bge _08006C0C
	adds r0, #0x3f
_08006C0C:
	asrs r0, r0, #6
	ldrh r1, [r5, #0x12]
	adds r0, r0, r1
	strh r0, [r5, #4]
	adds r0, r3, #1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r4, #0x14
	ldrsh r0, [r5, r4]
	subs r1, r1, r0
	movs r2, #0x10
	ldrsh r0, [r5, r2]
	muls r0, r1, r0
	cmp r0, #0
	bge _08006C30
	adds r0, #0x3f
_08006C30:
	asrs r0, r0, #6
	ldrh r4, [r5, #0x14]
	adds r0, r0, r4
	strh r0, [r5, #6]
	b _08006C46
	.align 2, 0
_08006C3C: .4byte _080D920C
_08006C40:
	ldrb r0, [r5, #0xe]
	adds r0, #1
_08006C44:
	strb r0, [r5, #0xe]
_08006C46:
	adds r7, r6, #1
_08006C48:
	adds r6, r7, #0
	cmp r6, #8
	bgt _08006C50
	b _08006A38
_08006C50:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8006C5C
sub_8006C5C: @ 0x08006C5C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, _08006D50 @ =0x000004EC
	adds r7, r4, r0
	ldr r1, [r4, #0xc]
	lsls r2, r1, #2
	ldr r3, _08006D54 @ =0x000004FC
	adds r0, r4, r3
	adds r0, r0, r2
	ldr r0, [r0]
	subs r0, #2
	cmp r0, #5
	bhi _08006CC8
	ldr r5, _08006D58 @ =_080D9274
	adds r0, r7, r2
	ldr r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r5
	movs r6, #0
	ldrsh r2, [r0, r6]
	movs r6, #2
	ldrsh r3, [r0, r6]
	adds r0, r4, #0
	bl sub_8006518
	movs r6, #0
	ldr r0, [r4, #8]
	cmp r6, r0
	bgt _08006CC8
	mov r8, r5
	adds r5, r7, #0
_08006CA2:
	ldr r0, [r4, #0xc]
	cmp r6, r0
	beq _08006CBE
	ldr r0, [r5]
	lsls r0, r0, #3
	add r0, r8
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r1, #2
	ldrsh r3, [r0, r1]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_8006518
_08006CBE:
	adds r5, #4
	adds r6, #1
	ldr r0, [r4, #8]
	cmp r6, r0
	ble _08006CA2
_08006CC8:
	movs r6, #0
	add r3, sp, #8
	mov r8, r3
	ldr r0, _08006D5C @ =0xFFE80000
	mov sb, r0
_08006CD2:
	movs r1, #8
	subs r1, r1, r6
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x20
	adds r4, r7, r0
	ldr r5, [r4]
	cmp r5, #0
	beq _08006D3A
	movs r1, #8
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08006D3A
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _08006D3A
	ldrh r0, [r4, #6]
	lsls r0, r0, #0x10
	ldrh r1, [r4, #4]
	orrs r1, r0
	str r1, [sp, #8]
	mov r0, r8
	movs r3, #0
	ldrsh r2, [r0, r3]
	mov r3, sb
	asrs r0, r3, #0x10
	cmp r2, r0
	blt _08006D3A
	asrs r1, r1, #0x10
	cmp r1, r0
	blt _08006D3A
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	bgt _08006D3A
	cmp r1, #0xc0
	bgt _08006D3A
	movs r0, #8
	ldrsh r2, [r4, r0]
	movs r1, #0xa
	ldrsh r3, [r4, r1]
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	add r1, sp, #8
	bl oam_renderCellData
_08006D3A:
	adds r6, #1
	cmp r6, #8
	ble _08006CD2
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006D50: .4byte 0x000004EC
_08006D54: .4byte 0x000004FC
_08006D58: .4byte _080D9274
_08006D5C: .4byte 0xFFE80000

	thumb_func_start sub_8006D60
sub_8006D60: @ 0x08006D60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _08006DF8 @ =0x000004EC
	adds r1, r1, r0
	mov sb, r1
	ldr r1, _08006DFC @ =_080D9130
	movs r2, #0
	mov sl, r2
	movs r7, #0
	ldr r3, _08006E00 @ =0x000005E4
	adds r6, r0, r3
	adds r2, r1, #0
	adds r2, #0xc
	subs r3, #0xd8
	adds r5, r0, r3
	mov r8, r1
	movs r3, #8
_08006D8A:
	mov r1, r8
	ldr r0, [r1]
	str r0, [r5]
	ldrh r0, [r2]
	strh r0, [r5, #4]
	ldrh r0, [r2, #2]
	strh r0, [r5, #6]
	strh r7, [r5, #0xa]
	strh r7, [r5, #8]
	strh r7, [r5, #0xc]
	movs r0, #1
	strb r0, [r5, #0xe]
	strh r7, [r5, #0x10]
	movs r4, #4
	ldrsb r4, [r2, r4]
	strb r4, [r6]
	mov r0, sl
	strb r0, [r6, #1]
	strh r7, [r6, #2]
	strh r7, [r6, #6]
	movs r0, #1
	str r2, [sp]
	str r3, [sp, #4]
	bl pltt_getBuffer
	adds r1, r4, #7
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r6, #0xc]
	lsls r4, r4, #9
	ldr r0, _08006E04 @ =0x02014400
	adds r4, r4, r0
	str r4, [r6, #0x10]
	adds r6, #0x14
	ldr r2, [sp]
	adds r2, #0x14
	adds r5, #0x18
	movs r1, #0x14
	add r8, r1
	ldr r3, [sp, #4]
	subs r3, #1
	cmp r3, #0
	bge _08006D8A
	mov r1, sb
	adds r1, #0x8e
	movs r0, #2
	strb r0, [r1]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006DF8: .4byte 0x000004EC
_08006DFC: .4byte _080D9130
_08006E00: .4byte 0x000005E4
_08006E04: .4byte 0x02014400

	thumb_func_start sub_8006E08
sub_8006E08: @ 0x08006E08
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	cmp r1, #0
	beq _08006E4A
	movs r5, #0xc0
	lsls r5, r5, #0x13
	movs r4, #7
_08006E1C:
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08007074 @ =0x0203EBF8
	adds r2, r5, #0
	ldr r3, _08007078 @ =0x81000C00
	bl dmaq_enqueue
	bl main_frameProc
	movs r0, #0xc0
	lsls r0, r0, #5
	adds r5, r5, r0
	subs r4, #1
	cmp r4, #0
	bge _08006E1C
	mov r1, r8
	cmp r1, #0
	beq _08006E4A
	adds r0, r7, #0
	bl sub_8002EA4
	bl main_frameProc
_08006E4A:
	ldr r4, _0800707C @ =_080AE03C
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xa0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	ldr r4, _08007080 @ =_0807CD48
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xe0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuFastSet
	ldr r4, _08007084 @ =_080AF2C0
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	adds r0, r7, #0
	bl spm_loadOtherGfx
	bl main_frameProc
	mov r2, r8
	cmp r2, #0
	beq _08006F2C
	ldr r0, _08007088 @ =_0807D1E8
	ldr r4, _0800708C @ =0x02008400
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08007090 @ =0x06008000
	ldr r3, _08007094 @ =0x80000600
	adds r1, r4, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08007098 @ =_080AE180
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r4, r2
	bl LZ77UnCompWram
	bl main_frameProc
	ldr r0, _0800709C @ =_080AE7C8
	movs r1, #0xc0
	lsls r1, r1, #7
	adds r4, r4, r1
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl main_frameProc
	movs r5, #0
	ldr r6, _080070A0 @ =0x0600C000
_08006EDC:
	lsls r4, r5, #0xd
	ldr r0, _080070A4 @ =0x0200C400
	adds r4, r4, r0
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	adds r2, r6, #0
	ldr r3, _080070A8 @ =0x80001000
	bl dmaq_enqueue
	bl main_frameProc
	movs r2, #0x80
	lsls r2, r2, #6
	adds r6, r6, r2
	adds r5, #1
	cmp r5, #1
	ble _08006EDC
	ldr r0, _080070AC @ =_080AF320
	ldr r4, _080070B0 @ =0x02010400
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl main_frameProc
	ldr r0, _080070B4 @ =_080C2FA8
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r4, r2
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _080070B8 @ =0x06010000
	ldr r3, _080070BC @ =0x80001200
	adds r1, r4, #0
	bl dmaq_enqueue
	bl main_frameProc
_08006F2C:
	ldr r0, _080070C0 @ =_080AFE60
	ldr r4, _080070C4 @ =0x02015C00
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _080070C8 @ =0x06015800
	ldr r3, _080070CC @ =0x80000500
	adds r1, r4, #0
	bl dmaq_enqueue
	ldr r0, _080070D0 @ =_080B042C
	movs r1, #0xa0
	lsls r1, r1, #5
	adds r5, r4, r1
	adds r1, r5, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _080070D4 @ =0x06016C00
	ldr r3, _080070D8 @ =0x80000100
	adds r1, r5, #0
	bl dmaq_enqueue
	ldr r0, _080070DC @ =_080B05BC
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r4, r4, r2
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _080070E0 @ =0x06017000
	ldr r3, _080070E4 @ =0x80000110
	adds r1, r4, #0
	bl dmaq_enqueue
	adds r0, r7, #0
	bl spm_loadOtherGfx
	bl main_frameProc
	mov r0, r8
	cmp r0, #0
	beq _08006FF6
	ldr r4, _080070E8 @ =_080AEE04
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _080070EC @ =0x06002000
	ldr r3, _080070F0 @ =0x80000400
	adds r0, r4, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r4, _080070F4 @ =_0807DA94
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	bl main_frameProc
	ldr r4, _080070F8 @ =_0807DB98
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	movs r0, #3
	bl map_setBufferDirty
	bl main_frameProc
_08006FF6:
	ldr r2, _080070FC @ =0x000011FE
	adds r1, r7, r2
	ldrh r0, [r1]
	movs r2, #0
	movs r0, #0xb
	strh r0, [r1]
	ldr r0, _08007100 @ =0x00001204
	adds r1, r7, r0
	ldrh r0, [r1]
	ldr r0, _08007104 @ =0x0000020B
	strh r0, [r1]
	ldr r0, _08007108 @ =0x0000120A
	adds r1, r7, r0
	ldrh r0, [r1]
	ldr r0, _0800710C @ =0x0000448E
	strh r0, [r1]
	ldr r0, _08007110 @ =0x000011FC
	adds r1, r7, r0
	ldrh r0, [r1]
	ldr r0, _08007114 @ =0x00001741
	strh r0, [r1]
	ldr r1, _08007118 @ =0x000011F8
	adds r0, r7, r1
	str r2, [r0]
	mov r0, r8
	cmp r0, #0
	beq _08007058
	ldr r0, _0800711C @ =0x00001216
	adds r1, r7, r0
	ldrh r0, [r1]
	movs r0, #0xff
	strh r0, [r1]
	ldr r0, _08007120 @ =0x0000121A
	adds r1, r7, r0
	ldrh r0, [r1]
	movs r0, #0x10
	strh r0, [r1]
	ldr r0, _08007124 @ =0x000011E8
	adds r1, r7, r0
	movs r0, #0xb4
	lsls r0, r0, #1
	str r0, [r1]
	ldr r0, _08007128 @ =0x000011EC
	adds r1, r7, r0
	movs r0, #0x50
	str r0, [r1]
	ldr r1, _0800712C @ =0x000011F0
	adds r0, r7, r1
	str r2, [r0]
_08007058:
	ldr r1, _08007130 @ =0x00001208
	adds r0, r7, r1
	ldrh r1, [r0]
	strh r2, [r0]
	ldrh r1, [r0]
	ldr r2, _08007134 @ =0x00001206
	adds r0, r7, r2
	ldrh r2, [r0]
	strh r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007074: .4byte 0x0203EBF8
_08007078: .4byte 0x81000C00
_0800707C: .4byte _080AE03C
_08007080: .4byte _0807CD48
_08007084: .4byte _080AF2C0
_08007088: .4byte _0807D1E8
_0800708C: .4byte 0x02008400
_08007090: .4byte 0x06008000
_08007094: .4byte 0x80000600
_08007098: .4byte _080AE180
_0800709C: .4byte _080AE7C8
_080070A0: .4byte 0x0600C000
_080070A4: .4byte 0x0200C400
_080070A8: .4byte 0x80001000
_080070AC: .4byte _080AF320
_080070B0: .4byte 0x02010400
_080070B4: .4byte _080C2FA8
_080070B8: .4byte 0x06010000
_080070BC: .4byte 0x80001200
_080070C0: .4byte _080AFE60
_080070C4: .4byte 0x02015C00
_080070C8: .4byte 0x06015800
_080070CC: .4byte 0x80000500
_080070D0: .4byte _080B042C
_080070D4: .4byte 0x06016C00
_080070D8: .4byte 0x80000100
_080070DC: .4byte _080B05BC
_080070E0: .4byte 0x06017000
_080070E4: .4byte 0x80000110
_080070E8: .4byte _080AEE04
_080070EC: .4byte 0x06002000
_080070F0: .4byte 0x80000400
_080070F4: .4byte _0807DA94
_080070F8: .4byte _0807DB98
_080070FC: .4byte 0x000011FE
_08007100: .4byte 0x00001204
_08007104: .4byte 0x0000020B
_08007108: .4byte 0x0000120A
_0800710C: .4byte 0x0000448E
_08007110: .4byte 0x000011FC
_08007114: .4byte 0x00001741
_08007118: .4byte 0x000011F8
_0800711C: .4byte 0x00001216
_08007120: .4byte 0x0000121A
_08007124: .4byte 0x000011E8
_08007128: .4byte 0x000011EC
_0800712C: .4byte 0x000011F0
_08007130: .4byte 0x00001208
_08007134: .4byte 0x00001206

	thumb_func_start sub_8007138
sub_8007138: @ 0x08007138
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x94
	adds r7, r0, #0
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	ldr r0, _08007354 @ =0x000004EC
	adds r0, r0, r7
	mov r8, r0
	movs r1, #0
	str r1, [sp, #0x74]
	movs r2, #0
	movs r3, #0
	str r3, [sp, #0x78]
	movs r4, #0xda
	lsls r4, r4, #3
	adds r0, r7, r4
	str r2, [r0]
	ldr r6, _08007358 @ =0x000006D4
	adds r1, r7, r6
	movs r0, #0x48
	strh r0, [r1]
	ldr r0, _0800735C @ =0x000006D6
	adds r1, r7, r0
	movs r0, #0x53
	strh r0, [r1]
	movs r1, #0xdb
	lsls r1, r1, #3
	adds r0, r7, r1
	str r2, [r0]
	ldr r3, _08007360 @ =0x000006DC
	adds r1, r7, r3
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	adds r4, #0x10
	adds r0, r7, r4
	str r2, [r0]
	adds r6, #0x10
	adds r0, r7, r6
	str r2, [r0]
	movs r1, #0xdd
	lsls r1, r1, #3
	adds r0, r7, r1
	str r2, [r0]
	adds r3, #0x10
	adds r0, r7, r3
	str r2, [r0]
	adds r4, #0x10
	adds r0, r7, r4
	str r2, [r0]
	adds r6, #0x10
	adds r0, r7, r6
	str r2, [r0]
	adds r1, #0x10
	adds r0, r7, r1
	movs r1, #2
	str r1, [r0]
	adds r3, #0x10
	adds r0, r7, r3
	str r2, [r0]
	adds r4, #0x10
	adds r0, r7, r4
	str r2, [r0]
	adds r6, #0x10
	adds r0, r7, r6
	str r2, [r0]
	adds r3, #0xc
	adds r0, r7, r3
	str r1, [r0]
	adds r4, #0xc
	adds r0, r7, r4
	str r2, [r0]
	adds r6, #0xc
	adds r0, r7, r6
	strh r2, [r0]
	ldr r1, _08007364 @ =0x00000712
	adds r0, r7, r1
	strh r2, [r0]
	adds r3, #0xc
	adds r0, r7, r3
	str r2, [r0]
	adds r4, #0xc
	adds r0, r7, r4
	str r2, [r0]
	adds r6, #0xc
	adds r0, r7, r6
	str r2, [r0]
	movs r0, #0xe4
	lsls r0, r0, #3
	adds r1, r7, r0
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r1]
	ldr r1, _08007368 @ =0x00000724
	adds r0, r7, r1
	str r2, [r0]
	adds r3, #0x14
	adds r0, r7, r3
	str r2, [r0]
	adds r4, #0x14
	adds r0, r7, r4
	str r2, [r0]
	adds r6, #0x14
	adds r1, r7, r6
	movs r0, #3
	str r0, [r1]
	ldr r1, _0800736C @ =0x00000734
	adds r0, r7, r1
	str r2, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r0, #0
	bl map_setBufferDestination
	ldr r1, _08007370 @ =0x06001000
	movs r0, #1
	bl map_setBufferDestination
	adds r0, r7, #0
	ldr r1, [sp, #0x6c]
	bl sub_8006E08
	adds r0, r7, #0
	bl spm_loadOtherGfx
	movs r0, #0xf
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0
	movs r3, #1
	bl renderCharacterSprites
	movs r1, #0
	ldr r2, _08007374 @ =0x000004FC
	adds r2, r7, r2
	str r2, [sp, #0x80]
	movs r5, #3
	movs r3, #0xa1
	lsls r3, r3, #3
	adds r0, r7, r3
_0800725A:
	str r1, [r0]
	subs r0, #4
	subs r5, #1
	cmp r5, #0
	bge _0800725A
	movs r5, #0
	mov r4, r8
_08007268:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_8002CE0
	stm r4!, {r0}
	adds r5, #1
	cmp r5, #3
	ble _08007268
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x18]
	ldr r2, _08007378 @ =_080D9130
	ldr r0, [r7, #0xc]
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x10]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _0800737C @ =_080D93D0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08007380 @ =0x02014000
	bl LZ77UnCompWram
	ldr r4, _08007384 @ =0x00000D88
	adds r2, r7, r4
	ldr r3, _08007388 @ =_080D9230
	movs r0, #0x80
	movs r1, #0x18
	bl sub_8003FD0
	movs r0, #0
	bl sub_8043830
_080072B8:
	bl oam_update
	bl main_frameProc
	ldr r6, _0800738C @ =0x000011F4
	adds r1, r7, r6
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r0, [r7, #0x4c]
	adds r0, #1
	str r0, [r7, #0x4c]
	bl sub_8043840
	movs r1, #0x92
	lsls r1, r1, #2
	add r1, r8
	movs r0, #0
	str r0, [r1]
	ldr r0, [r7, #8]
	cmp r0, #0
	blt _08007300
	ldr r3, _08007390 @ =0x03004EA0
	add r2, sp, #8
	ldr r1, _08007394 @ =0x03004F48
	adds r5, r0, #1
_080072EC:
	ldrh r0, [r1]
	strh r0, [r2]
	ldrh r0, [r3]
	strh r0, [r2, #8]
	adds r3, #2
	adds r2, #2
	adds r1, #2
	subs r5, #1
	cmp r5, #0
	bne _080072EC
_08007300:
	movs r5, #0
	ldr r0, _08007398 @ =0x00000D84
	adds r4, r7, r0
	ldr r2, [sp, #0x80]
_08007308:
	ldr r1, [r2]
	cmp r1, #0
	blt _080073CC
	cmp r1, #1
	ble _0800731A
	cmp r1, #0xc
	bgt _080073CC
	cmp r1, #8
	blt _080073CC
_0800731A:
	movs r3, #1
	ldr r6, [sp, #0x6c]
	cmp r6, #0
	beq _0800732E
	ldr r0, [r4]
	cmp r0, #0
	bne _0800732E
	cmp r1, #7
	bgt _0800732E
	movs r3, #2
_0800732E:
	ldr r0, [r2]
	cmp r0, #0xa
	beq _08007338
	cmp r0, #0xc
	bne _0800733A
_08007338:
	movs r3, #2
_0800733A:
	add r0, sp, #0x10
	lsls r1, r5, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ands r3, r0
	cmp r3, #0
	beq _080073CC
	ldr r0, [r2]
	cmp r0, #7
	bgt _0800739C
	movs r0, #2
	str r0, [sp, #0x78]
	b _080073B0
	.align 2, 0
_08007354: .4byte 0x000004EC
_08007358: .4byte 0x000006D4
_0800735C: .4byte 0x000006D6
_08007360: .4byte 0x000006DC
_08007364: .4byte 0x00000712
_08007368: .4byte 0x00000724
_0800736C: .4byte 0x00000734
_08007370: .4byte 0x06001000
_08007374: .4byte 0x000004FC
_08007378: .4byte _080D9130
_0800737C: .4byte _080D93D0
_08007380: .4byte 0x02014000
_08007384: .4byte 0x00000D88
_08007388: .4byte _080D9230
_0800738C: .4byte 0x000011F4
_08007390: .4byte 0x03004EA0
_08007394: .4byte 0x03004F48
_08007398: .4byte 0x00000D84
_0800739C:
	cmp r0, #9
	ble _080073A4
	cmp r0, #0xb
	bne _080073AA
_080073A4:
	movs r1, #0x64
	str r1, [sp, #0x78]
	b _080073B0
_080073AA:
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [sp, #0x78]
_080073B0:
	movs r2, #0
	ldr r3, [r7, #8]
	cmp r3, #0
	blt _080073C6
	movs r3, #0xd
	ldr r1, [sp, #0x80]
_080073BC:
	stm r1!, {r3}
	adds r2, #1
	ldr r0, [r7, #8]
	cmp r2, r0
	ble _080073BC
_080073C6:
	movs r3, #0
	str r3, [sp, #0x74]
	b _080073D4
_080073CC:
	adds r2, #4
	adds r5, #1
	cmp r5, #0
	ble _08007308
_080073D4:
	ldr r0, [r7, #0x50]
	cmp r0, #0
	beq _080073F8
	movs r0, #0
	str r0, [r7, #0x50]
	movs r4, #2
	str r4, [sp, #0x78]
	movs r2, #0
	ldr r3, [r7, #8]
	cmp r2, r3
	bgt _080073F8
	movs r3, #0xe
	ldr r1, [sp, #0x80]
_080073EE:
	stm r1!, {r3}
	adds r2, #1
	ldr r0, [r7, #8]
	cmp r2, r0
	ble _080073EE
_080073F8:
	ldr r1, [r7, #0xc]
	lsls r0, r1, #2
	ldr r6, [sp, #0x80]
	adds r0, r6, r0
	ldr r0, [r0]
	adds r2, r1, #0
	cmp r0, #0xf
	bls _0800740C
	bl _080084AE
_0800740C:
	lsls r0, r0, #2
	ldr r1, _08007418 @ =_0800741C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08007418: .4byte _0800741C
_0800741C: @ jump table
	.4byte _0800745C @ case 0
	.4byte _08007480 @ case 1
	.4byte _080075D4 @ case 2
	.4byte _0800787A @ case 3
	.4byte _08007BE6 @ case 4
	.4byte _08007D06 @ case 5
	.4byte _08007E28 @ case 6
	.4byte _08007FA8 @ case 7
	.4byte _0800806C @ case 8
	.4byte _08008110 @ case 9
	.4byte _08008138 @ case 10
	.4byte _08008194 @ case 11
	.4byte _08008194 @ case 12
	.4byte _08008386 @ case 13
	.4byte _080083A0 @ case 14
	.4byte _08008484 @ case 15
_0800745C:
	adds r0, r7, #0
	bl sub_8006D60
	movs r5, #0
	ldr r0, [r7, #8]
	cmp r5, r0
	ble _0800746E
	bl _080084AE
_0800746E:
	movs r2, #1
	ldr r1, [sp, #0x80]
_08007472:
	stm r1!, {r2}
	adds r5, #1
	ldr r0, [r7, #8]
	cmp r5, r0
	ble _08007472
	bl _080084AE
_08007480:
	ldr r0, [sp, #0x74]
	adds r0, #1
	str r0, [sp, #0x74]
	cmp r0, #0x10
	ble _0800748C
	b _0800758C
_0800748C:
	ldr r1, _08007574 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08007498
	adds r0, #0x3f
_08007498:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r1, #0x8a
	add r1, r8
	mov ip, r1
	movs r2, #0x88
	add r2, r8
	mov sl, r2
	ldr r3, [sp, #0x74]
	lsls r3, r3, #2
	str r3, [sp, #0x84]
	movs r6, #0x80
	lsls r6, r6, #1
	mov sb, r6
	ldr r0, _08007578 @ =_080D9130
	mov r2, r8
	adds r2, #0x24
	ldr r3, _0800757C @ =_080D91E8
	adds r6, r0, #0
	adds r6, #0xc
	movs r5, #8
_080074C8:
	mov r0, sb
	strh r0, [r2, #6]
	strh r0, [r2, #4]
	movs r0, #0
	ldrsh r1, [r6, r0]
	str r1, [sp, #0x90]
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [sp, #0x90]
	subs r1, r0, r1
	str r1, [sp, #0x90]
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #0xf
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r2]
	movs r1, #2
	ldrsh r0, [r6, r1]
	str r0, [sp, #0x90]
	movs r1, #2
	ldrsh r0, [r3, r1]
	ldr r1, [sp, #0x90]
	subs r0, r1, r0
	str r0, [sp, #0x90]
	adds r1, r0, #0
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #0xf
	ldrh r1, [r3, #2]
	adds r0, r0, r1
	strh r0, [r2, #2]
	adds r2, #0x18
	adds r3, #4
	adds r6, #0x14
	subs r5, #1
	cmp r5, #0
	bge _080074C8
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #8
	rsbs r0, r0, #0
	asrs r0, r0, #0xf
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	mov r3, ip
	strh r0, [r3]
	mov r4, sl
	strh r0, [r4]
	ldr r6, [sp, #0x6c]
	cmp r6, #0
	beq _08007554
	ldr r0, _08007580 @ =0x00001216
	adds r1, r7, r0
	ldrh r0, [r1]
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, [sp, #0x74]
	lsls r0, r1, #4
	rsbs r0, r0, #0
	cmp r0, #0
	bge _08007548
	adds r0, #0xf
_08007548:
	asrs r0, r0, #4
	adds r0, #0x10
	ldr r2, _08007584 @ =0x0000121A
	adds r1, r7, r2
	ldrh r2, [r1]
	strh r0, [r1]
_08007554:
	ldr r3, _08007588 @ =0x000011E8
	adds r1, r7, r3
	ldr r4, [sp, #0x84]
	ldr r6, [sp, #0x74]
	adds r0, r4, r6
	lsls r0, r0, #5
	rsbs r0, r0, #0
	cmp r0, #0
	bge _08007568
	adds r0, #0xf
_08007568:
	asrs r0, r0, #4
	movs r2, #0xb4
	lsls r2, r2, #1
	adds r0, r0, r2
	bl _0800833A
	.align 2, 0
_08007574: .4byte gSinTable
_08007578: .4byte _080D9130
_0800757C: .4byte _080D91E8
_08007580: .4byte 0x00001216
_08007584: .4byte 0x0000121A
_08007588: .4byte 0x000011E8
_0800758C:
	ldr r6, _080075C4 @ =0x00001216
	adds r1, r7, r6
	ldrh r0, [r1]
	ldr r0, _080075C8 @ =0x00000241
	strh r0, [r1]
	ldr r0, _080075CC @ =0x00001218
	adds r1, r7, r0
	ldrh r0, [r1]
	ldr r0, _080075D0 @ =0x00001008
	strh r0, [r1]
	movs r1, #0
	str r1, [sp, #0x74]
	movs r5, #0
	ldr r0, [r7, #8]
	cmp r5, r0
	ble _080075B0
	bl _080084AE
_080075B0:
	movs r2, #2
	ldr r1, [sp, #0x80]
_080075B4:
	stm r1!, {r2}
	adds r5, #1
	ldr r0, [r7, #8]
	cmp r5, r0
	ble _080075B4
	bl _080084AE
	.align 2, 0
_080075C4: .4byte 0x00001216
_080075C8: .4byte 0x00000241
_080075CC: .4byte 0x00001218
_080075D0: .4byte 0x00001008
_080075D4:
	ldr r4, _08007638 @ =_080AFE40
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x60
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	ldr r0, [r7, #8]
	mov r2, sp
	adds r2, #0x28
	str r2, [sp, #0x7c]
	cmp r0, #0
	blt _0800760A
	mov r2, r8
	add r1, sp, #0x18
	adds r5, r0, #1
_08007600:
	ldm r2!, {r0}
	stm r1!, {r0}
	subs r5, #1
	cmp r5, #0
	bne _08007600
_0800760A:
	movs r5, #0
	ldr r3, [r7, #8]
	cmp r5, r3
	bgt _08007692
	ldr r6, _0800763C @ =_080D9274
	movs r4, #1
	rsbs r4, r4, #0
	mov r1, r8
	add r2, sp, #8
_0800761C:
	lsls r0, r5, #2
	ldr r3, [sp, #0x80]
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r0, #2
	bne _08007686
	ldrh r0, [r2]
	cmp r0, #0x20
	beq _08007666
	cmp r0, #0x20
	bgt _08007640
	cmp r0, #0x10
	beq _08007674
	b _08007686
	.align 2, 0
_08007638: .4byte _080AFE40
_0800763C: .4byte _080D9274
_08007640:
	cmp r0, #0x40
	beq _0800764A
	cmp r0, #0x80
	beq _08007658
	b _08007686
_0800764A:
	ldr r0, [r1]
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _08007680
_08007658:
	ldr r0, [r1]
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _08007680
_08007666:
	ldr r0, [r1]
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _08007680
_08007674:
	ldr r0, [r1]
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrb r0, [r0, #7]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_08007680:
	cmp r0, r4
	beq _08007686
	str r0, [r1]
_08007686:
	adds r1, #4
	adds r2, #2
	adds r5, #1
	ldr r3, [r7, #8]
	cmp r5, r3
	ble _0800761C
_08007692:
	ldr r1, [sp, #0x7c]
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0x20
_0800769A:
	str r2, [r0]
	subs r0, #4
	cmp r0, r1
	bge _0800769A
	cmp r3, #0
	blt _080076C8
	ldr r4, [sp, #0x7c]
	movs r6, #1
	mov r2, r8
	ldr r1, [sp, #0x80]
	adds r5, r3, #1
_080076B0:
	ldr r0, [r1]
	cmp r0, #2
	ble _080076BE
	ldr r0, [r2]
	lsls r0, r0, #2
	adds r0, r4, r0
	str r6, [r0]
_080076BE:
	adds r2, #4
	adds r1, #4
	subs r5, #1
	cmp r5, #0
	bne _080076B0
_080076C8:
	movs r0, #0
	ldr r4, [sp, #0x7c]
	str r0, [r4, #0x10]
	movs r5, #0
	cmp r5, r3
	bgt _08007736
	ldr r6, _080077A0 @ =_080D9130
	mov sb, r6
	mov r4, r8
	movs r6, #2
_080076DC:
	add r0, sp, #0x18
	lsls r1, r5, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r4]
	cmp r1, r0
	beq _0800772C
	movs r0, #0x8d
	bl m4aSongNumStart
	ldr r0, [r7, #0xc]
	cmp r5, r0
	bne _0800772C
	ldr r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sb
	movs r1, #0x10
	ldrsb r1, [r0, r1]
	movs r0, #0x83
	lsls r0, r0, #2
	add r0, r8
	str r6, [r0]
	movs r0, #0x87
	lsls r0, r0, #2
	add r0, r8
	str r6, [r0]
	ldr r0, _080077A4 @ =_080D93D0
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r1, _080077A8 @ =0x02014000
	bl LZ77UnCompWram
	movs r1, #0x92
	lsls r1, r1, #2
	add r1, r8
	movs r0, #1
	str r0, [r1]
_0800772C:
	adds r4, #4
	adds r5, #1
	ldr r3, [r7, #8]
	cmp r5, r3
	ble _080076DC
_08007736:
	movs r5, #0
	cmp r5, r3
	ble _08007740
	bl _080084AE
_08007740:
	movs r2, #0
	ldr r6, [sp, #0x80]
_08007744:
	add r0, sp, #0x10
	lsls r1, r5, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r4, #9
	ands r4, r1
	cmp r4, #0
	beq _080077B0
	ldr r0, [r6]
	cmp r0, #2
	beq _0800775E
	bl _080084AE
_0800775E:
	mov r0, r8
	adds r1, r0, r2
	ldr r2, [r1]
	lsls r3, r2, #2
	ldr r4, [sp, #0x7c]
	adds r0, r4, r3
	ldr r0, [r0]
	cmp r0, #0
	beq _08007774
	bl sub_800847C
_08007774:
	cmp r2, #4
	bne _0800777A
	b _08007A24
_0800777A:
	adds r0, r3, r2
	lsls r0, r0, #2
	adds r0, #0xf8
	mov r3, r8
	adds r2, r3, r0
	movs r3, #1
	strb r3, [r2, #1]
	strh r3, [r2, #2]
	ldr r0, [r7, #0xc]
	cmp r0, r5
	beq _08007792
	strh r3, [r2, #6]
_08007792:
	ldr r0, [r7, #0xc]
	cmp r5, r0
	beq _0800779A
	b _08007A10
_0800779A:
	ldr r0, _080077AC @ =_080D92C4
	b _08007A12
	.align 2, 0
_080077A0: .4byte _080D9130
_080077A4: .4byte _080D93D0
_080077A8: .4byte 0x02014000
_080077AC: .4byte _080D92C4
_080077B0:
	movs r0, #2
	mov sl, r0
	movs r0, #2
	mov sb, r0
	ands r0, r1
	cmp r0, #0
	beq _08007844
	ldr r0, [r6]
	cmp r0, #2
	beq _080077CC
	cmp r0, #3
	beq _0800782C
	bl _080084AE
_080077CC:
	cmp r5, #0
	beq _080077D4
	bl _080084AE
_080077D4:
	ldr r1, [sp, #0x70]
	cmp r1, #0
	bne _080077DE
	bl sub_800847C
_080077DE:
	movs r0, #0x90
	bl m4aSongNumStart
	movs r0, #0x87
	lsls r0, r0, #2
	add r0, r8
	movs r1, #5
	str r1, [r0]
	movs r0, #0x83
	lsls r0, r0, #2
	add r0, r8
	str r1, [r0]
	movs r1, #0x11
	ldr r2, _08007828 @ =0x00000D96
	adds r0, r5, r2
	adds r0, r7, r0
_080077FE:
	strb r1, [r0]
	adds r0, #0x18
	adds r5, #1
	cmp r5, #0xf
	bls _080077FE
	movs r2, #0
	ldr r0, [r7, #8]
	cmp r2, r0
	ble _08007814
	bl _0800818E
_08007814:
	movs r3, #0xa
	ldr r1, [sp, #0x80]
_08007818:
	stm r1!, {r3}
	adds r2, #1
	ldr r0, [r7, #8]
	cmp r2, r0
	ble _08007818
	bl _0800818E
	.align 2, 0
_08007828: .4byte 0x00000D96
_0800782C:
	movs r0, #0x90
	str r2, [sp, #0x88]
	bl m4aSongNumStart
	ldr r2, [sp, #0x88]
	mov r1, r8
	adds r0, r1, r2
	ldr r1, [r0]
	cmp r1, #4
	beq _08007842
	b _08007AC4
_08007842:
	b _08007ADA
_08007844:
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08007852
	b _08007AF6
_08007852:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0800785C
	b _08007B24
_0800785C:
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0800786A
	b _08007B6C
_0800786A:
	adds r2, #4
	adds r6, #4
	adds r5, #1
	cmp r5, r3
	bgt _08007876
	b _08007744
_08007876:
	bl _080084AE
_0800787A:
	ldr r3, [r7, #8]
	mov r6, sp
	adds r6, #0x28
	str r6, [sp, #0x7c]
	cmp r3, #0
	blt _08007896
	mov r2, r8
	add r1, sp, #0x18
	adds r5, r3, #1
_0800788C:
	ldm r2!, {r0}
	stm r1!, {r0}
	subs r5, #1
	cmp r5, #0
	bne _0800788C
_08007896:
	movs r5, #0
	cmp r5, r3
	bgt _0800791A
	ldr r6, _080078C4 @ =_080D9274
	movs r4, #1
	rsbs r4, r4, #0
	mov r1, r8
	add r2, sp, #8
_080078A6:
	lsls r0, r5, #2
	ldr r3, [sp, #0x80]
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r0, #2
	bne _0800790E
	ldrh r0, [r2]
	cmp r0, #0x20
	beq _080078EE
	cmp r0, #0x20
	bgt _080078C8
	cmp r0, #0x10
	beq _080078FC
	b _0800790E
	.align 2, 0
_080078C4: .4byte _080D9274
_080078C8:
	cmp r0, #0x40
	beq _080078D2
	cmp r0, #0x80
	beq _080078E0
	b _0800790E
_080078D2:
	ldr r0, [r1]
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _08007908
_080078E0:
	ldr r0, [r1]
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _08007908
_080078EE:
	ldr r0, [r1]
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _08007908
_080078FC:
	ldr r0, [r1]
	lsls r0, r0, #3
	adds r0, r0, r6
	ldrb r0, [r0, #7]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_08007908:
	cmp r0, r4
	beq _0800790E
	str r0, [r1]
_0800790E:
	adds r1, #4
	adds r2, #2
	adds r5, #1
	ldr r3, [r7, #8]
	cmp r5, r3
	ble _080078A6
_0800791A:
	ldr r1, [sp, #0x7c]
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0x20
_08007922:
	str r2, [r0]
	subs r0, #4
	cmp r0, r1
	bge _08007922
	cmp r3, #0
	blt _08007950
	ldr r4, [sp, #0x7c]
	movs r6, #1
	mov r2, r8
	ldr r1, [sp, #0x80]
	adds r5, r3, #1
_08007938:
	ldr r0, [r1]
	cmp r0, #2
	ble _08007946
	ldr r0, [r2]
	lsls r0, r0, #2
	adds r0, r4, r0
	str r6, [r0]
_08007946:
	adds r2, #4
	adds r1, #4
	subs r5, #1
	cmp r5, #0
	bne _08007938
_08007950:
	movs r0, #0
	ldr r4, [sp, #0x7c]
	str r0, [r4, #0x10]
	movs r5, #0
	ldr r0, [r7, #8]
	cmp r5, r0
	bgt _0800797C
	mov r6, r8
	add r4, sp, #0x18
_08007962:
	ldr r1, [r4]
	ldr r0, [r6]
	cmp r1, r0
	beq _08007970
	movs r0, #0x8d
	bl m4aSongNumStart
_08007970:
	adds r6, #4
	adds r4, #4
	adds r5, #1
	ldr r0, [r7, #8]
	cmp r5, r0
	ble _08007962
_0800797C:
	bl sub_802DC88
	cmp r0, #0
	beq _0800799E
	ldr r0, [r7, #0x4c]
	movs r1, #0x2f
	ands r0, r1
	cmp r0, #0xf
	bgt _0800799E
	ldr r0, _08007A04 @ =_080C863C
	ldr r1, _08007A08 @ =_080D91E4
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r3, #0
	bl oam_renderCellData
_0800799E:
	movs r5, #0
	ldr r3, [r7, #8]
	cmp r5, r3
	ble _080079A8
	b _08007BA8
_080079A8:
	movs r2, #0
	ldr r6, [sp, #0x80]
_080079AC:
	add r0, sp, #0x10
	lsls r1, r5, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r4, #9
	ands r4, r1
	cmp r4, #0
	beq _08007A3A
	ldr r0, [r6]
	cmp r0, #2
	beq _080079C6
	bl _080084AE
_080079C6:
	mov r0, r8
	adds r1, r0, r2
	ldr r2, [r1]
	lsls r3, r2, #2
	ldr r4, [sp, #0x7c]
	adds r0, r4, r3
	ldr r0, [r0]
	cmp r0, #0
	beq _080079DC
	bl sub_800847C
_080079DC:
	cmp r2, #4
	beq _08007A24
	adds r0, r3, r2
	lsls r0, r0, #2
	adds r0, #0xf8
	mov r3, r8
	adds r2, r3, r0
	movs r3, #1
	strb r3, [r2, #1]
	strh r3, [r2, #2]
	ldr r0, [r7, #0xc]
	cmp r0, r5
	beq _080079F8
	strh r3, [r2, #6]
_080079F8:
	ldr r0, [r7, #0xc]
	cmp r5, r0
	bne _08007A10
	ldr r0, _08007A0C @ =_080D92C4
	b _08007A12
	.align 2, 0
_08007A04: .4byte _080C863C
_08007A08: .4byte _080D91E4
_08007A0C: .4byte _080D92C4
_08007A10:
	ldr r0, _08007A20 @ =_080D92D6
_08007A12:
	ldr r1, [r1]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl m4aSongNumStart
	b _08007A32
	.align 2, 0
_08007A20: .4byte _080D92D6
_08007A24:
	mov r1, r8
	adds r1, #0x8e
	movs r0, #3
	strb r0, [r1]
	movs r0, #0x8e
	bl m4aSongNumStart
_08007A32:
	movs r0, #3
	str r0, [r6]
	bl _080084AE
_08007A3A:
	movs r0, #2
	mov sl, r0
	movs r0, #2
	mov sb, r0
	ands r0, r1
	cmp r0, #0
	beq _08007AEA
	ldr r0, [r6]
	cmp r0, #2
	beq _08007A56
	cmp r0, #3
	beq _08007AB0
	bl _080084AE
_08007A56:
	cmp r5, #0
	beq _08007A5E
	bl _080084AE
_08007A5E:
	ldr r1, [sp, #0x70]
	cmp r1, #0
	bne _08007A68
	bl sub_800847C
_08007A68:
	movs r0, #0x90
	bl m4aSongNumStart
	movs r0, #0x87
	lsls r0, r0, #2
	add r0, r8
	movs r1, #5
	str r1, [r0]
	movs r0, #0x83
	lsls r0, r0, #2
	add r0, r8
	str r1, [r0]
	movs r1, #0x11
	ldr r2, _08007AAC @ =0x00000D96
	adds r0, r5, r2
	adds r0, r7, r0
_08007A88:
	strb r1, [r0]
	adds r0, #0x18
	adds r5, #1
	cmp r5, #0xf
	bls _08007A88
	movs r2, #0
	ldr r0, [r7, #8]
	cmp r2, r0
	ble _08007A9C
	b _0800818E
_08007A9C:
	movs r3, #0xa
	ldr r1, [sp, #0x80]
_08007AA0:
	stm r1!, {r3}
	adds r2, #1
	ldr r0, [r7, #8]
	cmp r2, r0
	ble _08007AA0
	b _0800818E
	.align 2, 0
_08007AAC: .4byte 0x00000D96
_08007AB0:
	movs r0, #0x90
	str r2, [sp, #0x88]
	bl m4aSongNumStart
	ldr r2, [sp, #0x88]
	mov r1, r8
	adds r0, r1, r2
	ldr r1, [r0]
	cmp r1, #4
	beq _08007ADA
_08007AC4:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0xf8
	add r0, r8
	movs r1, #1
	strb r1, [r0, #1]
	mov r2, sb
	strh r2, [r0, #2]
	strh r4, [r0, #6]
	b _08007AE2
_08007ADA:
	mov r0, r8
	adds r0, #0x8e
	mov r3, sl
	strb r3, [r0]
_08007AE2:
	movs r0, #2
	str r0, [r6]
	bl _080084AE
_08007AEA:
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08007B1C
_08007AF6:
	ldr r0, [r7, #0xc]
	cmp r5, r0
	beq _08007B00
	bl _080084AE
_08007B00:
	movs r1, #0x83
	lsls r1, r1, #2
	add r1, r8
	ldr r0, [r1]
	cmp r0, #1
	beq _08007B14
	cmp r0, #0xc
	beq _08007B14
	bl _080084AE
_08007B14:
	movs r0, #0xa
	str r0, [r1]
	bl _080084AE
_08007B1C:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08007B60
_08007B24:
	ldr r0, [r7, #0xc]
	cmp r5, r0
	beq _08007B2E
	bl _080084AE
_08007B2E:
	movs r0, #0x83
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	cmp r0, #1
	beq _08007B3E
	bl _080084AE
_08007B3E:
	mov r6, r8
	adds r0, r6, r2
	ldr r1, [r0]
	cmp r1, #4
	bne _08007B4C
	bl _080084AE
_08007B4C:
	ldr r0, _08007B5C @ =_080D92E8
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl m4aSongNumStart
	bl _080084AE
	.align 2, 0
_08007B5C: .4byte _080D92E8
_08007B60:
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08007B9C
_08007B6C:
	ldr r0, [r7, #0xc]
	cmp r5, r0
	beq _08007B76
	bl _080084AE
_08007B76:
	movs r0, #0x83
	lsls r0, r0, #2
	add r0, r8
	ldr r2, [r0]
	cmp r2, #1
	beq _08007B86
	bl _080084AE
_08007B86:
	movs r1, #0x8c
	lsls r1, r1, #2
	add r1, r8
	ldr r0, [r1]
	cmp r0, #0
	beq _08007B96
	bl _080084AE
_08007B96:
	str r2, [r1]
	bl _080084AE
_08007B9C:
	adds r2, #4
	adds r6, #4
	adds r5, #1
	cmp r5, r3
	bgt _08007BA8
	b _080079AC
_08007BA8:
	movs r2, #0
	cmp r3, #0
	blt _08007BC2
	ldr r1, [sp, #0x80]
	adds r5, r3, #1
_08007BB2:
	ldr r0, [r1]
	cmp r0, #3
	beq _08007BBA
	adds r2, #1
_08007BBA:
	adds r1, #4
	subs r5, #1
	cmp r5, #0
	bne _08007BB2
_08007BC2:
	cmp r2, #0
	beq _08007BCA
	bl _080084AE
_08007BCA:
	movs r5, #0
	cmp r5, r3
	bgt _08007BDE
	movs r2, #4
	ldr r1, [sp, #0x80]
_08007BD4:
	stm r1!, {r2}
	adds r5, #1
	ldr r0, [r7, #8]
	cmp r5, r0
	ble _08007BD4
_08007BDE:
	movs r6, #0
	str r6, [sp, #0x74]
	bl _080084AE
_08007BE6:
	ldr r0, [r7, #0x4c]
	movs r1, #0x2f
	ands r0, r1
	cmp r0, #0xf
	bgt _08007C2C
	bl sub_802DC88
	cmp r0, #0
	beq _08007C1C
	bl sub_802DCB4
	cmp r0, #0
	beq _08007C1C
	ldr r0, _08007C14 @ =_080C863C
	ldr r1, _08007C18 @ =_080D91E4
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r3, #0
	bl oam_renderCellData
	b _08007C2C
	.align 2, 0
_08007C14: .4byte _080C863C
_08007C18: .4byte _080D91E4
_08007C1C:
	ldr r0, _08007C8C @ =_080C8A58
	ldr r1, _08007C90 @ =_080D91E4
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r3, #0
	bl oam_renderCellData
_08007C2C:
	movs r5, #0
	ldr r1, [r7, #8]
	adds r3, r1, #0
	cmp r5, r3
	ble _08007C3A
	bl _080084AE
_08007C3A:
	add r2, sp, #0x10
	ldr r6, [sp, #0x80]
	mov sl, r5
_08007C40:
	ldrh r0, [r2]
	movs r4, #9
	ands r4, r0
	cmp r4, #0
	beq _08007C94
	movs r2, #0
	cmp r2, r1
	bgt _08007C6A
	movs r4, #2
	mov r3, r8
_08007C54:
	ldm r3!, {r0}
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	add r1, r8
	adds r1, #0xfe
	strh r4, [r1]
	adds r2, #1
	ldr r0, [r7, #8]
	cmp r2, r0
	ble _08007C54
_08007C6A:
	movs r0, #0x8f
	bl m4aSongNumStart
	movs r2, #0
	ldr r0, [r7, #8]
	cmp r2, r0
	ble _08007C7A
	b _08008132
_08007C7A:
	movs r3, #5
	ldr r1, [sp, #0x80]
_08007C7E:
	stm r1!, {r3}
	adds r2, #1
	ldr r0, [r7, #8]
	cmp r2, r0
	ble _08007C7E
	b _08008132
	.align 2, 0
_08007C8C: .4byte _080C8A58
_08007C90: .4byte _080D91E4
_08007C94:
	lsls r0, r5, #1
	adds r0, r2, r0
	ldrh r1, [r0]
	movs r0, #2
	mov sb, r0
	ands r0, r1
	cmp r0, #0
	beq _08007CF6
	movs r0, #0x90
	bl m4aSongNumStart
	mov r0, r8
	add r0, sl
	ldr r1, [r0]
	cmp r1, #4
	beq _08007CCA
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0xf8
	add r0, r8
	movs r1, #1
	strb r1, [r0, #1]
	mov r1, sb
	strh r1, [r0, #2]
	strh r4, [r0, #6]
	b _08007CD2
_08007CCA:
	mov r0, r8
	adds r0, #0x8e
	movs r2, #2
	strb r2, [r0]
_08007CD2:
	movs r0, #2
	str r0, [r6]
	movs r2, #0
	ldr r0, [r7, #8]
	cmp r2, r0
	ble _08007CE0
	b _0800818E
_08007CE0:
	movs r3, #3
	ldr r1, [sp, #0x80]
_08007CE4:
	cmp r5, r2
	beq _08007CEA
	str r3, [r1]
_08007CEA:
	adds r1, #4
	adds r2, #1
	ldr r0, [r7, #8]
	cmp r2, r0
	ble _08007CE4
	b _0800818E
_08007CF6:
	adds r6, #4
	movs r4, #4
	add sl, r4
	adds r5, #1
	adds r1, r3, #0
	cmp r5, r3
	ble _08007C40
	b _080084AE
_08007D06:
	movs r6, #0
	mov sb, r6
	ldr r3, [r7, #8]
	add r6, sp, #0x18
	add r0, sp, #0x4c
	mov sl, r0
	movs r0, #0
	mov r2, sl
	adds r1, r6, #0
	movs r5, #7
_08007D1A:
	stm r1!, {r0}
	stm r2!, {r0}
	subs r5, #1
	cmp r5, #0
	bge _08007D1A
	cmp r3, #0
	blt _08007D58
	adds r4, r6, #0
	movs r1, #1
	mov ip, r1
	mov r2, r8
	adds r5, r3, #1
_08007D32:
	ldr r1, [r2]
	cmp r1, #4
	beq _08007D50
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r3, _08007DF0 @ =_080D9130
	adds r0, r0, r3
	ldrb r0, [r0, #0x10]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r4, r0
	mov r1, ip
	str r1, [r0]
_08007D50:
	adds r2, #4
	subs r5, #1
	cmp r5, #0
	bne _08007D32
_08007D58:
	movs r5, #0
	adds r1, r6, #0
	mov r2, sb
	lsls r0, r2, #2
	mov r3, sl
	adds r2, r0, r3
_08007D64:
	ldr r0, [r1]
	cmp r0, #0
	bne _08007D70
	stm r2!, {r5}
	movs r4, #1
	add sb, r4
_08007D70:
	adds r1, #4
	adds r5, #1
	cmp r5, #7
	ble _08007D64
	mov r6, sl
	movs r5, #0xf
_08007D7C:
	bl sub_8043840
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, sb
	bl __modsi3
	adds r4, r0, #0
	bl sub_8043840
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, sb
	bl __modsi3
	lsls r4, r4, #2
	adds r4, r6, r4
	ldr r2, [r4]
	lsls r0, r0, #2
	adds r0, r6, r0
	ldr r1, [r0]
	str r1, [r4]
	str r2, [r0]
	subs r5, #1
	cmp r5, #0
	bge _08007D7C
	movs r5, #0
	ldr r0, [r7, #8]
	cmp r5, r0
	bgt _08007E0C
	ldr r6, _08007DF4 @ =_080D92BC
	mov sb, r6
	movs r0, #0xf2
	lsls r0, r0, #1
	add r0, r8
	mov ip, r0
	movs r2, #0xe2
	lsls r2, r2, #1
	add r2, r8
	mov r3, r8
	movs r4, #0
_08007DCE:
	ldr r0, [r3]
	adds r1, r4, #0
	cmp r0, #4
	bne _08007DF8
	mov r6, sl
	adds r0, r6, r1
	ldr r0, [r0]
	add r0, sb
	ldrb r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2]
	movs r0, #1
	mov r1, ip
	str r0, [r1]
	b _08007DFA
	.align 2, 0
_08007DF0: .4byte _080D9130
_08007DF4: .4byte _080D92BC
_08007DF8:
	str r0, [r2]
_08007DFA:
	movs r0, #0
	str r0, [r2, #0x10]
	adds r2, #4
	adds r3, #4
	adds r4, #4
	adds r5, #1
	ldr r0, [r7, #8]
	cmp r5, r0
	ble _08007DCE
_08007E0C:
	movs r2, #0
	ldr r0, [r7, #8]
	cmp r2, r0
	bgt _08007E22
	movs r3, #6
	ldr r1, [sp, #0x80]
_08007E18:
	stm r1!, {r3}
	adds r2, #1
	ldr r0, [r7, #8]
	cmp r2, r0
	ble _08007E18
_08007E22:
	movs r2, #0
	str r2, [sp, #0x74]
	b _080084AE
_08007E28:
	movs r5, #0
	ldr r3, [r7, #8]
	cmp r5, r3
	bgt _08007E60
	movs r0, #0xe2
	lsls r0, r0, #1
	add r0, r8
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08007E5C
	adds r2, r3, #0
	adds r4, r1, #0
	movs r1, #0xe2
	lsls r1, r1, #1
	add r1, r8
_08007E4C:
	adds r1, #4
	adds r5, #1
	cmp r5, r2
	bgt _08007E60
	ldr r0, [r1]
	ands r0, r4
	cmp r0, #0
	beq _08007E4C
_08007E5C:
	cmp r5, r3
	ble _08007E78
_08007E60:
	movs r2, #0
	cmp r2, r3
	ble _08007E68
	b _0800818E
_08007E68:
	movs r3, #7
	ldr r1, [sp, #0x80]
_08007E6C:
	stm r1!, {r3}
	adds r2, #1
	ldr r0, [r7, #8]
	cmp r2, r0
	ble _08007E6C
	b _0800818E
_08007E78:
	ldr r0, [sp, #0x74]
	adds r4, r0, #0
	adds r4, #1
	str r4, [sp, #0x74]
	cmp r0, #2
	bgt _08007E86
	b _080084AE
_08007E86:
	movs r6, #0
	str r6, [sp, #0x74]
	movs r5, #0
	cmp r5, r3
	ble _08007E92
	b _080084AE
_08007E92:
	mov r4, r8
	movs r0, #0x18
	mov sb, r0
_08007E98:
	movs r0, #0xe2
	lsls r0, r0, #1
	add r0, r8
	adds r3, r0, r6
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08007F94
	movs r0, #0xea
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r6
	ldr r1, [r0]
	adds r2, r1, #0
	adds r1, #1
	str r1, [r0]
	cmp r2, sb
	bge _08007F3C
	ldr r2, [r3]
	ldr r0, _08007ED4 @ =0xFFFFEFFF
	ands r2, r0
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08007EDC
	ldr r0, _08007ED8 @ =_080D9485
	b _08007EDE
	.align 2, 0
_08007ED4: .4byte 0xFFFFEFFF
_08007ED8: .4byte _080D9485
_08007EDC:
	ldr r0, _08007F2C @ =_080D947C
_08007EDE:
	adds r0, r2, r0
	ldrb r2, [r0]
	str r2, [r4]
	movs r0, #0xe2
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r6
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r2, r1
	str r2, [r0]
	movs r0, #0x8d
	bl m4aSongNumStart
	ldr r0, [r7, #0xc]
	cmp r5, r0
	bne _08007F94
	ldr r2, _08007F30 @ =_080D9130
	ldr r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x10]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _08007F34 @ =_080D93D0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08007F38 @ =0x02014000
	bl LZ77UnCompWram
	movs r1, #0x92
	lsls r1, r1, #2
	add r1, r8
	movs r0, #1
	str r0, [r1]
	b _08007F94
	.align 2, 0
_08007F2C: .4byte _080D947C
_08007F30: .4byte _080D9130
_08007F34: .4byte _080D93D0
_08007F38: .4byte 0x02014000
_08007F3C:
	ldr r1, [r3]
	ldr r0, _08007F5C @ =0xFFFFEFFF
	ands r1, r0
	str r1, [r3]
	str r1, [r4]
	ldr r0, [r7, #0xc]
	cmp r5, r0
	bne _08007F64
	ldr r0, _08007F60 @ =_080D92C4
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl m4aSongNumStart
	b _08007F70
	.align 2, 0
_08007F5C: .4byte 0xFFFFEFFF
_08007F60: .4byte _080D92C4
_08007F64:
	ldr r0, _08007F8C @ =_080D92D6
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bl m4aSongNumStart
_08007F70:
	ldr r0, [r4]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, #0xf8
	add r1, r8
	movs r2, #1
	strb r2, [r1, #1]
	strh r2, [r1, #2]
	ldr r0, [r7, #0xc]
	cmp r0, r5
	beq _08007F90
	strh r2, [r1, #6]
	b _08007F94
	.align 2, 0
_08007F8C: .4byte _080D92D6
_08007F90:
	movs r0, #2
	strh r0, [r1, #6]
_08007F94:
	adds r4, #4
	movs r1, #8
	add sb, r1
	adds r6, #4
	adds r5, #1
	ldr r0, [r7, #8]
	cmp r5, r0
	bgt _08007FA6
	b _08007E98
_08007FA6:
	b _080084AE
_08007FA8:
	ldr r3, [sp, #0x74]
	adds r3, #1
	str r3, [sp, #0x74]
	cmp r3, #0x3c
	ble _08007FF2
	movs r0, #0xf2
	lsls r0, r0, #1
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	beq _08007FF2
	movs r1, #0xf8
	lsls r1, r1, #1
	add r1, r8
	movs r0, #0
	str r0, [r1]
	movs r1, #0xfa
	lsls r1, r1, #1
	add r1, r8
	movs r0, #0xf6
	lsls r0, r0, #1
	add r0, r8
	ldr r0, [r0]
	str r0, [r1]
	movs r2, #0
	ldr r0, [r7, #8]
	cmp r2, r0
	ble _08007FE2
	b _08008102
_08007FE2:
	movs r3, #8
	ldr r1, [sp, #0x80]
_08007FE6:
	stm r1!, {r3}
	adds r2, #1
	ldr r0, [r7, #8]
	cmp r2, r0
	ble _08007FE6
	b _08008102
_08007FF2:
	ldr r3, _08008068 @ =_080D9130
	lsls r0, r2, #2
	add r0, r8
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0, #0x10]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [r7, #0x18]
	movs r5, #0
	ldr r0, [r7, #8]
	cmp r5, r0
	bgt _08008034
	adds r4, r3, #0
	mov r3, r8
	adds r2, r7, #0
	adds r2, #0x24
_0800801A:
	ldm r3!, {r1}
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0, #0x10]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	stm r2!, {r0}
	adds r5, #1
	ldr r0, [r7, #8]
	cmp r5, r0
	ble _0800801A
_08008034:
	movs r1, #0xf8
	lsls r1, r1, #1
	add r1, r8
	movs r0, #0
	str r0, [r1]
	movs r1, #0xfa
	lsls r1, r1, #1
	add r1, r8
	movs r0, #0xf6
	lsls r0, r0, #1
	add r0, r8
	ldr r0, [r0]
	str r0, [r1]
	movs r2, #0
	ldr r0, [r7, #8]
	cmp r2, r0
	ble _08008058
	b _080084AE
_08008058:
	movs r3, #8
	ldr r1, [sp, #0x80]
_0800805C:
	stm r1!, {r3}
	adds r2, #1
	ldr r0, [r7, #8]
	cmp r2, r0
	ble _0800805C
	b _080084AE
	.align 2, 0
_08008068: .4byte _080D9130
_0800806C:
	ldr r1, _08008108 @ =gSinTable
	ldr r6, [sp, #0x74]
	lsls r0, r6, #0x19
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800807A
	adds r0, #0x3f
_0800807A:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	movs r3, #0xf6
	lsls r3, r3, #1
	add r3, r8
	movs r0, #0xfa
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [r0]
	movs r0, #0x9e
	rsbs r0, r0, #0
	subs r0, r0, r1
	muls r0, r2, r0
	asrs r0, r0, #0xf
	adds r1, r1, r0
	str r1, [r3]
	ldr r0, [sp, #0x74]
	adds r0, #1
	str r0, [sp, #0x74]
	cmp r0, #0x20
	bgt _080080AC
	b _080084AE
_080080AC:
	movs r5, #0
	mov r2, r8
	adds r2, #0x8e
	movs r1, #0x11
	ldr r3, _0800810C @ =0x00000D96
	adds r0, r7, r3
_080080B8:
	strb r1, [r0]
	adds r0, #0x18
	adds r5, #1
	cmp r5, #0xf
	bls _080080B8
	movs r1, #7
	movs r5, #8
	mov r0, r8
	adds r0, #0xee
_080080CA:
	strb r1, [r0]
	subs r0, #0x18
	subs r5, #1
	cmp r5, #0
	bge _080080CA
	movs r0, #4
	strb r0, [r2]
	movs r1, #0x87
	lsls r1, r1, #2
	add r1, r8
	movs r0, #5
	str r0, [r1]
	movs r1, #0x83
	lsls r1, r1, #2
	add r1, r8
	movs r0, #8
	str r0, [r1]
	movs r2, #0
	ldr r0, [r7, #8]
	cmp r2, r0
	bgt _08008102
	movs r3, #9
	ldr r1, [sp, #0x80]
_080080F8:
	stm r1!, {r3}
	adds r2, #1
	ldr r0, [r7, #8]
	cmp r2, r0
	ble _080080F8
_08008102:
	movs r4, #0
	str r4, [sp, #0x74]
	b _080084AE
	.align 2, 0
_08008108: .4byte gSinTable
_0800810C: .4byte 0x00000D96
_08008110:
	ldr r6, [sp, #0x74]
	adds r6, #1
	str r6, [sp, #0x74]
	cmp r6, #0x1e
	bgt _0800811C
	b _080084AE
_0800811C:
	movs r2, #0
	ldr r0, [r7, #8]
	cmp r2, r0
	bgt _08008132
	movs r3, #0xb
	ldr r1, [sp, #0x80]
_08008128:
	stm r1!, {r3}
	adds r2, #1
	ldr r0, [r7, #8]
	cmp r2, r0
	ble _08008128
_08008132:
	movs r0, #0
	str r0, [sp, #0x74]
	b _080084AE
_08008138:
	ldr r1, [sp, #0x74]
	adds r1, #1
	str r1, [sp, #0x74]
	cmp r1, #0x10
	bgt _08008166
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r2, r1, #0xc
	mov r1, r8
	adds r1, #0x28
	movs r5, #8
_08008156:
	strh r0, [r1, #2]
	strh r0, [r1]
	strh r2, [r1, #4]
	adds r1, #0x18
	subs r5, #1
	cmp r5, #0
	bge _08008156
	b _080084AE
_08008166:
	ldr r3, [r7, #8]
	mov r1, r8
	adds r1, #0x20
	movs r2, #0
	mov r0, r8
	adds r0, #0xe0
_08008172:
	str r2, [r0]
	subs r0, #0x18
	cmp r0, r1
	bge _08008172
	movs r2, #0
	cmp r2, r3
	bgt _0800818E
	movs r3, #0xc
	ldr r1, [sp, #0x80]
_08008184:
	stm r1!, {r3}
	adds r2, #1
	ldr r0, [r7, #8]
	cmp r2, r0
	ble _08008184
_0800818E:
	movs r3, #0
	str r3, [sp, #0x74]
	b _080084AE
_08008194:
	ldr r4, [sp, #0x74]
	adds r4, #1
	str r4, [sp, #0x74]
	cmp r4, #0x20
	ble _080081A0
	b _08008360
_080081A0:
	lsls r0, r2, #2
	ldr r6, [sp, #0x80]
	adds r0, r6, r0
	ldr r0, [r0]
	cmp r0, #0xb
	beq _080081B4
	cmp r0, #0xc
	bne _080081B2
	b _08008308
_080081B2:
	b _08008322
_080081B4:
	ldr r1, [r7, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080081C8
	adds r0, r7, #0
	bl spm_getSavedCup
	adds r5, r0, #0
	b _080081CA
_080081C8:
	movs r5, #0
_080081CA:
	ldr r0, [sp, #0x74]
	cmp r0, #8
	bne _0800827E
	ldr r2, _08008208 @ =0x00001218
	adds r1, r7, r2
	ldrh r0, [r1]
	movs r0, #0
	strh r0, [r1]
	ldrh r2, [r1]
	ldr r3, _0800820C @ =0x00001216
	adds r0, r7, r3
	ldrh r1, [r0]
	strh r2, [r0]
	ldr r0, [r7, #0x10]
	cmp r0, #3
	beq _08008214
	ldr r1, _08008210 @ =_080D931C
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	b _0800822A
	.align 2, 0
_08008208: .4byte 0x00001218
_0800820C: .4byte 0x00001216
_08008210: .4byte _080D931C
_08008214:
	ldr r0, _0800825C @ =_080D931C
	ldr r4, [r0, #0x10]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
_0800822A:
	movs r0, #1
	bl map_setBufferDirty
	ldr r1, [r7, #0x10]
	cmp r1, #3
	beq _08008270
	movs r0, #2
	cmp r1, #1
	beq _0800823E
	ldr r0, [r7, #0x14]
_0800823E:
	lsls r0, r0, #2
	ldr r4, _08008260 @ =0x0000111C
	adds r1, r7, r4
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0800827E
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08008264 @ =_0807D694
	ldr r2, _08008268 @ =0x06008660
	ldr r3, _0800826C @ =0x80000100
	bl dmaq_enqueue
	b _0800827E
	.align 2, 0
_0800825C: .4byte _080D931C
_08008260: .4byte 0x0000111C
_08008264: .4byte _0807D694
_08008268: .4byte 0x06008660
_0800826C: .4byte 0x80000100
_08008270:
	bl dmaq_getVBlankDmaQueue
	ldr r1, _080082BC @ =_0807D894
	ldr r2, _080082C0 @ =0x06008660
	ldr r3, _080082C4 @ =0x80000100
	bl dmaq_enqueue
_0800827E:
	ldr r6, [sp, #0x74]
	cmp r6, #7
	ble _08008322
	ldr r0, _080082C8 @ =0x000004EC
	adds r3, r7, r0
	ldr r2, _080082CC @ =0x0000072C
	adds r1, r7, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #7
	ble _080082AC
	movs r2, #0
	str r2, [r1]
	movs r4, #0xe6
	lsls r4, r4, #3
	adds r1, r7, r4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #6
	ble _080082AC
	str r2, [r1]
_080082AC:
	ldr r0, [r7, #0x10]
	cmp r0, #3
	beq _080082D4
	ldr r1, _080082D0 @ =_080D9330
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r1, [r0]
	b _080082D8
	.align 2, 0
_080082BC: .4byte _0807D894
_080082C0: .4byte 0x06008660
_080082C4: .4byte 0x80000100
_080082C8: .4byte 0x000004EC
_080082CC: .4byte 0x0000072C
_080082D0: .4byte _080D9330
_080082D4:
	ldr r0, _08008304 @ =_080D9330
	ldr r1, [r0, #0xc]
_080082D8:
	movs r6, #0x91
	lsls r6, r6, #2
	adds r0, r3, r6
	ldr r4, [r0]
	lsls r4, r4, #5
	adds r4, r1, r4
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	b _08008322
	.align 2, 0
_08008304: .4byte _080D9330
_08008308:
	ldr r2, _0800834C @ =0x00001216
	adds r1, r7, r2
	ldrh r0, [r1]
	movs r0, #0xff
	strh r0, [r1]
	ldr r3, [sp, #0x74]
	lsrs r0, r3, #0x1f
	adds r0, r3, r0
	asrs r0, r0, #1
	ldr r4, _08008350 @ =0x0000121A
	adds r1, r7, r4
	ldrh r2, [r1]
	strh r0, [r1]
_08008322:
	ldr r6, _08008354 @ =0x000011E8
	adds r1, r7, r6
	ldr r2, [sp, #0x74]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #7
	rsbs r0, r0, #0
	cmp r0, #0
	bge _08008336
	adds r0, #0x1f
_08008336:
	asrs r0, r0, #5
	adds r0, #0xc8
_0800833A:
	str r0, [r1]
	ldr r3, _08008358 @ =0x000011F0
	adds r1, r7, r3
	ldr r0, [r1]
	ldr r4, _0800835C @ =0xFFFFF800
	adds r0, r0, r4
	str r0, [r1]
	b _080084AE
	.align 2, 0
_0800834C: .4byte 0x00001216
_08008350: .4byte 0x0000121A
_08008354: .4byte 0x000011E8
_08008358: .4byte 0x000011F0
_0800835C: .4byte 0xFFFFF800
_08008360:
	movs r5, #0
	mov r4, r8
_08008364:
	ldm r4!, {r2}
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_8002DF8
	adds r5, #1
	cmp r5, #3
	ble _08008364
	ldr r0, [r7, #0xc]
	lsls r0, r0, #2
	ldr r6, [sp, #0x80]
	adds r0, r6, r0
	ldr r0, [r0]
	cmp r0, #0xb
	bne _080083F0
	movs r0, #1
	b _080085F0
_08008386:
	movs r5, #0
	ldr r0, [r7, #8]
	cmp r5, r0
	ble _08008390
	b _080084AE
_08008390:
	movs r2, #0xe
	ldr r1, [sp, #0x80]
_08008394:
	stm r1!, {r2}
	adds r5, #1
	ldr r0, [r7, #8]
	cmp r5, r0
	ble _08008394
	b _080084AE
_080083A0:
	movs r5, #0
	mov r4, r8
_080083A4:
	ldm r4!, {r2}
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_8002DF8
	adds r5, #1
	cmp r5, #3
	ble _080083A4
	movs r0, #1
	rsbs r0, r0, #0
	ldr r1, [sp, #0x78]
	cmp r1, r0
	beq _080083D8
	cmp r1, #2
	bne _080083FC
	adds r0, r7, #0
	bl sub_8006D60
	movs r5, #0
	movs r2, #0x8a
	add r2, r8
	mov ip, r2
	movs r3, #0x88
	add r3, r8
	mov sl, r3
	b _08008420
_080083D8:
	ldr r4, _080083F4 @ =0x00001216
	adds r1, r7, r4
	ldrh r0, [r1]
	movs r0, #0xff
	strh r0, [r1]
	ldr r6, _080083F8 @ =0x0000121A
	adds r1, r7, r6
	ldrh r0, [r1]
	movs r0, #0x10
	strh r0, [r1]
	movs r0, #1
	str r0, [r7, #0x50]
_080083F0:
	movs r0, #0
	b _080085F0
	.align 2, 0
_080083F4: .4byte 0x00001216
_080083F8: .4byte 0x0000121A
_080083FC:
	ldr r0, _08008418 @ =0x00001216
	adds r1, r7, r0
	ldrh r0, [r1]
	movs r0, #0xff
	strh r0, [r1]
	ldr r2, _0800841C @ =0x0000121A
	adds r1, r7, r2
	ldrh r0, [r1]
	movs r0, #0x10
	strh r0, [r1]
	movs r0, #1
	str r0, [r7, #0x50]
	b _080085F0
	.align 2, 0
_08008418: .4byte 0x00001216
_0800841C: .4byte 0x0000121A
_08008420:
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #3
	adds r1, #0x20
	add r1, r8
	movs r3, #0x80
	lsls r3, r3, #1
	strh r3, [r1, #0xa]
	strh r3, [r1, #8]
	ldr r2, _08008474 @ =_080D9130
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r2, [r0, #0xc]
	strh r2, [r1, #4]
	ldrh r0, [r0, #0xe]
	strh r0, [r1, #6]
	adds r5, #1
	cmp r5, #8
	ble _08008420
	mov r4, ip
	strh r3, [r4]
	mov r6, sl
	strh r3, [r6]
	ldr r1, _08008478 @ =0x000011E8
	adds r0, r7, r1
	movs r1, #0xc8
	str r1, [r0]
	movs r5, #0
	ldr r0, [r7, #8]
	cmp r5, r0
	bgt _080084AE
	movs r2, #0xf
	ldr r1, [sp, #0x80]
_08008466:
	stm r1!, {r2}
	adds r5, #1
	ldr r0, [r7, #8]
	cmp r5, r0
	ble _08008466
	b _080084AE
	.align 2, 0
_08008474: .4byte _080D9130
_08008478: .4byte 0x000011E8

	thumb_func_start sub_800847C
sub_800847C: @ 0x0800847C
	movs r0, #0x91
	bl m4aSongNumStart
	b _080084AE
_08008484:
	ldr r2, _0800858C @ =0x00001216
	adds r1, r7, r2
	ldrh r0, [r1]
	ldr r0, _08008590 @ =0x00000241
	strh r0, [r1]
	ldr r3, _08008594 @ =0x00001218
	adds r1, r7, r3
	ldrh r0, [r1]
	ldr r0, _08008598 @ =0x00001008
	strh r0, [r1]
	movs r5, #0
	ldr r0, [r7, #8]
	cmp r5, r0
	bgt _080084AE
	ldr r1, [sp, #0x80]
_080084A2:
	ldr r4, [sp, #0x78]
	stm r1!, {r4}
	adds r5, #1
	ldr r0, [r7, #8]
	cmp r5, r0
	ble _080084A2
_080084AE:
	ldr r6, _0800859C @ =0x00000D88
	adds r1, r7, r6
	movs r0, #0x10
	bl sub_8005DAC
	adds r0, r7, #0
	bl sub_80036E4
	adds r0, r7, #0
	bl sub_8006A28
	adds r0, r7, #0
	bl sub_8006C5C
	movs r0, #0x85
	lsls r0, r0, #5
	adds r4, r7, r0
	movs r6, #1
	str r6, [r4]
	adds r0, r7, #0
	bl spm_loadOtherGfx
	cmp r0, #0
	beq _080084EC
	bl dmaq_getVBlankDmaQueue
	ldr r1, _080085A0 @ =0x02013000
	ldr r2, _080085A4 @ =0x06012C00
	ldr r3, _080085A8 @ =0x80000800
	bl dmaq_enqueue
_080084EC:
	movs r5, #0
	str r5, [r4]
	adds r0, r7, #0
	bl sub_8003948
	ldr r0, [r7, #0xc]
	lsls r0, r0, #2
	ldr r1, [sp, #0x80]
	adds r0, r1, r0
	ldr r0, [r0]
	subs r0, #2
	cmp r0, #2
	bhi _08008520
	movs r0, #1
	bl pltt_getBuffer
	adds r2, r0, #0
	adds r2, #0x60
	ldr r0, _080085AC @ =_080AFE00
	adds r1, r0, #0
	adds r1, #0x20
	ldr r3, [r7, #0x4c]
	movs r4, #0x20
	str r4, [sp]
	bl sub_8005E04
_08008520:
	adds r0, r7, #0
	bl sub_80065CC
	adds r0, r7, #0
	bl sub_80060AC
	adds r0, r7, #0
	bl sub_8006850
	adds r0, r7, #0
	bl sub_8006784
	adds r0, r7, #0
	bl sub_8003930
	cmp r0, #0
	beq _080085C0
	ldr r0, _080085B0 @ =trns_initDefaultOutTransition
	ldr r4, _080085B4 @ =0x03004F70
	str r0, [r4, #4]
	ldr r0, _080085B8 @ =trns_applyDefaultOutTransition
	str r0, [r4]
	str r5, [r4, #8]
	strb r6, [r4, #0xe]
	bl trns_start
	movs r0, #0
	bl pltt_getBuffer
	strh r5, [r0]
	movs r0, #1
	bl pltt_setDirtyFlag
	bl main_frameProc
	ldrb r1, [r4, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08008580
	movs r5, #2
_08008572:
	bl main_frameProc
	ldrb r1, [r4, #0xc]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08008572
_08008580:
	ldr r2, _080085BC @ =0x0000109C
	adds r1, r7, r2
	movs r0, #1
	str r0, [r1]
	b _080083F0
	.align 2, 0
_0800858C: .4byte 0x00001216
_08008590: .4byte 0x00000241
_08008594: .4byte 0x00001218
_08008598: .4byte 0x00001008
_0800859C: .4byte 0x00000D88
_080085A0: .4byte 0x02013000
_080085A4: .4byte 0x06012C00
_080085A8: .4byte 0x80000800
_080085AC: .4byte _080AFE00
_080085B0: .4byte trns_initDefaultOutTransition
_080085B4: .4byte 0x03004F70
_080085B8: .4byte trns_applyDefaultOutTransition
_080085BC: .4byte 0x0000109C
_080085C0:
	movs r0, #0x92
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	bne _080085D0
	bl _080072B8
_080085D0:
	bl dmaq_getVBlankDmaQueue
	ldr r1, _080085E4 @ =0x02014000
	ldr r2, _080085E8 @ =0x06013C00
	ldr r3, _080085EC @ =0x80000E00
	bl dmaq_enqueue
	bl _080072B8
	.align 2, 0
_080085E4: .4byte 0x02014000
_080085E8: .4byte 0x06013C00
_080085EC: .4byte 0x80000E00
_080085F0:
	add sp, #0x94
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8008600
sub_8008600: @ 0x08008600
	ldr r1, _08008608 @ =_080D9344
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08008608: .4byte _080D9344

	thumb_func_start sub_800860C
sub_800860C: @ 0x0800860C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r0, [r7, #0x10]
	cmp r0, #3
	bne _08008620
	b _08008722
_08008620:
	movs r1, #2
	cmp r0, #1
	beq _08008628
	ldr r1, [r7, #0x14]
_08008628:
	ldr r2, _08008640 @ =0x000011E4
	adds r0, r7, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _08008648
	lsls r0, r1, #2
	lsls r1, r6, #1
	adds r1, r1, r6
	lsls r1, r1, #2
	adds r1, r0, r1
	ldr r3, _08008644 @ =0x000010A4
	b _08008656
	.align 2, 0
_08008640: .4byte 0x000011E4
_08008644: .4byte 0x000010A4
_08008648:
	lsls r0, r1, #2
	lsls r1, r6, #1
	adds r1, r1, r6
	lsls r1, r1, #2
	adds r1, r0, r1
	movs r3, #0x87
	lsls r3, r3, #5
_08008656:
	adds r2, r7, r3
	adds r2, r2, r1
	ldr r2, [r2]
	mov r8, r2
	mov sb, r0
	ldr r1, _0800868C @ =0x000011E4
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08008694
	lsls r5, r6, #5
	ldr r4, _08008690 @ =_080B75C0
	adds r4, r5, r4
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r5, r2
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	b _080086B2
	.align 2, 0
_0800868C: .4byte 0x000011E4
_08008690: .4byte _080B75C0
_08008694:
	lsls r5, r6, #5
	ldr r4, _08008730 @ =_080BB5A0
	adds r4, r5, r4
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r5, r3
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
_080086B2:
	mov r0, r8
	cmp r0, #0
	beq _080086FA
	movs r0, #1
	bl pltt_getBuffer
	adds r0, r5, r0
	movs r3, #0x1f
	movs r1, #0x80
	lsls r1, r1, #1
	adds r5, r0, r1
	movs r4, #0xf
_080086CA:
	ldrh r0, [r5]
	asrs r1, r0, #5
	asrs r2, r0, #0xa
	ands r0, r3
	asrs r0, r0, #1
	ands r1, r3
	asrs r1, r1, #1
	ands r2, r3
	asrs r2, r2, #1
	ands r0, r3
	ands r1, r3
	lsls r1, r1, #5
	orrs r0, r1
	ands r2, r3
	lsls r2, r2, #0xa
	orrs r0, r2
	strh r0, [r5]
	adds r5, #2
	subs r4, #1
	cmp r4, #0
	bge _080086CA
	movs r0, #1
	bl pltt_setDirtyFlag
_080086FA:
	cmp r6, #4
	bne _08008722
	ldr r2, _08008734 @ =0x0000111C
	adds r0, r7, r2
	add r0, sb
	ldr r0, [r0]
	cmp r0, #0
	beq _08008722
	ldr r4, _08008738 @ =_080B1398
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r1, r3
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
_08008722:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008730: .4byte _080BB5A0
_08008734: .4byte 0x0000111C
_08008738: .4byte _080B1398

	thumb_func_start sub_800873C
sub_800873C: @ 0x0800873C
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r0, [r3, #0x10]
	movs r1, #2
	cmp r0, #1
	beq _0800874C
	ldr r1, [r3, #0x14]
_0800874C:
	ldr r4, _0800878C @ =0x000011E4
	adds r0, r3, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _080087D4
	lsls r0, r2, #1
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r4, _08008790 @ =0x000010A4
	adds r1, r3, r4
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0800879C
	lsls r6, r2, #2
	lsls r0, r2, #3
	adds r0, r0, r6
	lsls r5, r0, #8
	ldr r6, _08008794 @ =0x02025400
	movs r4, #3
_08008776:
	adds r1, r5, r6
	ldr r0, _08008798 @ =_080A28C8
	bl LZ77UnCompWram
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r5, r5, r0
	subs r4, #1
	cmp r4, #0
	bge _08008776
	b _08008842
	.align 2, 0
_0800878C: .4byte 0x000011E4
_08008790: .4byte 0x000010A4
_08008794: .4byte 0x02025400
_08008798: .4byte _080A28C8
_0800879C:
	movs r4, #0
	lsls r6, r2, #2
	ldr r7, _080087CC @ =gTrackDefTable
	lsls r0, r2, #3
	adds r0, r0, r6
	lsls r5, r0, #8
_080087A8:
	adds r0, r6, r4
	bl track_getMKSCTrack
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	ldr r1, _080087D0 @ =0x02025400
	adds r1, r5, r1
	bl LZ77UnCompWram
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #3
	ble _080087A8
	b _08008842
	.align 2, 0
_080087CC: .4byte gTrackDefTable
_080087D0: .4byte 0x02025400
_080087D4:
	lsls r0, r2, #1
	adds r0, r0, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r4, #0x87
	lsls r4, r4, #5
	adds r1, r3, r4
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _08008814
	lsls r6, r2, #2
	lsls r0, r2, #3
	adds r0, r0, r6
	lsls r5, r0, #8
	ldr r6, _0800880C @ =0x02025400
	movs r4, #3
_080087F6:
	adds r1, r5, r6
	ldr r0, _08008810 @ =_080A4A68
	bl LZ77UnCompWram
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r5, r5, r0
	subs r4, #1
	cmp r4, #0
	bge _080087F6
	b _08008842
	.align 2, 0
_0800880C: .4byte 0x02025400
_08008810: .4byte _080A4A68
_08008814:
	movs r4, #0
	lsls r6, r2, #2
	ldr r7, _08008848 @ =gTrackDefTable
	lsls r0, r2, #3
	adds r0, r0, r6
	lsls r5, r0, #8
_08008820:
	adds r0, r6, r4
	bl track_getRetroTrack
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	ldr r1, _0800884C @ =0x02025400
	adds r1, r5, r1
	bl LZ77UnCompWram
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #3
	ble _08008820
_08008842:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008848: .4byte gTrackDefTable
_0800884C: .4byte 0x02025400

	thumb_func_start sub_8008850
sub_8008850: @ 0x08008850
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	movs r2, #2
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _08008898 @ =0x01000080
	mov r0, sp
	bl CpuFastSet
	ldr r1, _0800889C @ =0x000011E4
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0800887C
	ldr r0, [r5, #0x10]
	cmp r0, #3
	bne _080088A8
_0800887C:
	ldr r4, _080088A0 @ =_0809A8CC
	movs r0, #0
	movs r1, #0x12
	movs r2, #2
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	ldr r0, _080088A4 @ =0x00000C6C
	adds r0, r0, r5
	mov ip, r0
	b _080088E6
	.align 2, 0
_08008898: .4byte 0x01000080
_0800889C: .4byte 0x000011E4
_080088A0: .4byte _0809A8CC
_080088A4: .4byte 0x00000C6C
_080088A8:
	movs r0, #0
	movs r1, #0x13
	movs r2, #2
	bl map_getBufferPtr2d
	adds r7, r0, #0
	movs r2, #0
	ldr r1, _08008914 @ =0x00000C6C
	adds r1, r1, r5
	mov ip, r1
	movs r0, #0x80
	lsls r0, r0, #5
	adds r6, r0, #0
_080088C2:
	lsls r1, r2, #6
	lsls r0, r2, #3
	adds r4, r2, #1
	adds r2, r0, #0
	adds r2, #0x20
	adds r1, r7, r1
	movs r3, #7
_080088D0:
	adds r0, r2, #0
	orrs r0, r6
	strh r0, [r1]
	adds r2, #1
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bge _080088D0
	adds r2, r4, #0
	cmp r2, #7
	ble _080088C2
_080088E6:
	ldr r1, _08008918 @ =0x000011FE
	adds r2, r5, r1
	ldrh r1, [r2]
	ldr r0, _0800891C @ =0x0000FF7F
	ands r0, r1
	ldrh r1, [r2]
	strh r0, [r2]
	ldr r1, _08008920 @ =0x000011E4
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08008904
	ldr r0, [r5, #0x10]
	cmp r0, #3
	bne _08008924
_08008904:
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	ldrh r1, [r2]
	movs r1, #0
	orrs r0, r1
	b _08008928
	.align 2, 0
_08008914: .4byte 0x00000C6C
_08008918: .4byte 0x000011FE
_0800891C: .4byte 0x0000FF7F
_08008920: .4byte 0x000011E4
_08008924:
	ldrh r0, [r2]
	ldrh r1, [r2]
_08008928:
	strh r0, [r2]
	movs r0, #1
	mov r1, ip
	str r0, [r1]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8008938
sub_8008938: @ 0x08008938
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _08008974 @ =0x0203EC00
	ldr r2, [r0]
	movs r1, #1
	ldr r0, _08008978 @ =0x0203EBFC
	ldr r0, [r0]
	cmp r0, #1
	beq _080089F0
	cmp r0, #1
	bgt _08008950
	b _08008B3E
_08008950:
	cmp r0, #2
	beq _08008956
	b _08008B3E
_08008956:
	ldr r1, _0800897C @ =0x000011E4
	adds r0, r6, r1
	ldr r0, [r0]
	ldr r1, [r6, #0x10]
	cmp r0, #0
	beq _08008966
	cmp r1, #3
	bne _080089A8
_08008966:
	cmp r1, #3
	beq _08008984
	ldr r4, _08008980 @ =gTrackDefTable
	adds r0, r2, #0
	bl track_getMKSCTrack
	b _0800898E
	.align 2, 0
_08008974: .4byte 0x0203EC00
_08008978: .4byte 0x0203EBFC
_0800897C: .4byte 0x000011E4
_08008980: .4byte gTrackDefTable
_08008984:
	ldr r4, _080089A0 @ =gTrackDefTable
	ands r2, r1
	adds r0, r2, #0
	bl track_getBattleTrack
_0800898E:
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
	ldr r0, [r2, #0x24]
	ldr r1, _080089A4 @ =0x02004400
	bl LZ77UnCompWram
	b _080089D0
	.align 2, 0
_080089A0: .4byte gTrackDefTable
_080089A4: .4byte 0x02004400
_080089A8:
	ldr r4, _080089DC @ =gTrackDefTable
	adds r0, r2, #0
	bl track_getRetroTrack
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
	ldr r1, [r2]
	lsls r1, r1, #2
	ldr r0, _080089E0 @ =courseData_bin
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r1, r0
	ldr r2, _080089E4 @ =courseData_bin + 0xC4
	adds r1, r1, r2
	ldr r1, [r1]
	adds r0, r0, r1
	ldr r1, _080089E8 @ =0x02004400
	bl LZ77UnCompWram
_080089D0:
	ldr r1, _080089EC @ =0x0203EBFC
	movs r0, #1
	str r0, [r1]
	movs r1, #0
	b _08008B3E
	.align 2, 0
_080089DC: .4byte gTrackDefTable
_080089E0: .4byte courseData_bin
_080089E4: .4byte courseData_bin + 0xC4
_080089E8: .4byte 0x02004400
_080089EC: .4byte 0x0203EBFC
_080089F0:
	ldr r3, _08008A40 @ =0x000011E4
	adds r0, r6, r3
	ldr r0, [r0]
	ldr r1, [r6, #0x10]
	cmp r0, #0
	beq _08008A02
	adds r3, r1, #0
	cmp r3, #3
	bne _08008A74
_08008A02:
	adds r0, r2, #0
	cmp r2, #0
	bge _08008A0A
	adds r0, r2, #3
_08008A0A:
	asrs r5, r0, #2
	adds r0, r1, #0
	movs r7, #2
	cmp r0, #1
	beq _08008A16
	ldr r7, [r6, #0x14]
_08008A16:
	cmp r0, #3
	beq _08008A4C
	ldr r4, _08008A44 @ =gTrackDefTable
	adds r0, r2, #0
	bl track_getMKSCTrack
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
	lsls r0, r5, #1
	adds r0, r0, r5
	adds r0, r0, r7
	lsls r0, r0, #2
	ldr r3, _08008A48 @ =0x000010A4
	adds r1, r6, r3
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _08008A5C
	ldr r4, [r2, #0x2c]
	b _08008A5E
	.align 2, 0
_08008A40: .4byte 0x000011E4
_08008A44: .4byte gTrackDefTable
_08008A48: .4byte 0x000010A4
_08008A4C:
	ldr r4, _08008A70 @ =gTrackDefTable
	ands r2, r1
	adds r0, r2, #0
	bl track_getBattleTrack
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
_08008A5C:
	ldr r4, [r2, #0x28]
_08008A5E:
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	b _08008AEE
	.align 2, 0
_08008A70: .4byte gTrackDefTable
_08008A74:
	adds r0, r2, #0
	cmp r0, #0
	bge _08008A7C
	adds r0, #3
_08008A7C:
	asrs r5, r0, #2
	movs r7, #2
	cmp r3, #1
	beq _08008A86
	ldr r7, [r6, #0x14]
_08008A86:
	ldr r4, _08008B14 @ =_08066EAC
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x20
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	lsls r0, r5, #1
	adds r0, r0, r5
	adds r0, r0, r7
	lsls r0, r0, #2
	movs r2, #0x87
	lsls r2, r2, #5
	adds r1, r6, r2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _08008AEE
	movs r0, #0
	bl pltt_getBuffer
	movs r4, #0x1f
	adds r3, r0, #0
	adds r3, #0x20
	movs r5, #0xf
_08008ABE:
	ldrh r0, [r3]
	asrs r1, r0, #5
	asrs r2, r0, #0xa
	ands r0, r4
	asrs r0, r0, #1
	ands r1, r4
	asrs r1, r1, #1
	ands r2, r4
	asrs r2, r2, #1
	ands r0, r4
	ands r1, r4
	lsls r1, r1, #5
	orrs r0, r1
	ands r2, r4
	lsls r2, r2, #0xa
	orrs r0, r2
	strh r0, [r3]
	adds r3, #2
	subs r5, #1
	cmp r5, #0
	bge _08008ABE
	movs r0, #1
	bl pltt_setDirtyFlag
_08008AEE:
	movs r0, #1
	bl pltt_setDirtyFlag
	ldr r3, _08008B18 @ =0x000011E4
	adds r0, r6, r3
	ldr r0, [r0]
	cmp r0, #0
	beq _08008B04
	ldr r0, [r6, #0x10]
	cmp r0, #3
	bne _08008B28
_08008B04:
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08008B1C @ =0x02004400
	ldr r2, _08008B20 @ =0x06004000
	ldr r3, _08008B24 @ =0x80000A20
	bl dmaq_enqueue
	b _08008B36
	.align 2, 0
_08008B14: .4byte _08066EAC
_08008B18: .4byte 0x000011E4
_08008B1C: .4byte 0x02004400
_08008B20: .4byte 0x06004000
_08008B24: .4byte 0x80000A20
_08008B28:
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08008B48 @ =0x02004400
	ldr r2, _08008B4C @ =0x06004400
	ldr r3, _08008B50 @ =0x80000400
	bl dmaq_enqueue
_08008B36:
	ldr r1, _08008B54 @ =0x0203EBFC
	movs r0, #0
	str r0, [r1]
	movs r1, #1
_08008B3E:
	adds r0, r1, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08008B48: .4byte 0x02004400
_08008B4C: .4byte 0x06004400
_08008B50: .4byte 0x80000400
_08008B54: .4byte 0x0203EBFC

	thumb_func_start spm_loadCupGfx
spm_loadCupGfx: @ 0x08008B58
	push {r4, lr}
	ldr r0, [r0, #0x10]
	cmp r0, #3
	bne _08008B62
	b _08008CB8
_08008B62:
	cmp r1, #4
	bls _08008B68
	b _08008CF4
_08008B68:
	lsls r0, r1, #2
	ldr r1, _08008B74 @ =_08008B78
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08008B74: .4byte _08008B78
_08008B78: @ jump table
	.4byte _08008B8C @ case 0
	.4byte _08008BC4 @ case 1
	.4byte _08008BFC @ case 2
	.4byte _08008C34 @ case 3
	.4byte _08008C6C @ case 4
_08008B8C:
	ldr r4, _08008BB8 @ =_080AE07C
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xa0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	ldr r4, _08008BBC @ =_080AE11C
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xe
	adds r0, r4, #0
	movs r2, #9
	bl CpuSet
	ldr r4, _08008BC0 @ =_0807DCB4
	b _08008C96
	.align 2, 0
_08008BB8: .4byte _080AE07C
_08008BBC: .4byte _080AE11C
_08008BC0: .4byte _0807DCB4
_08008BC4:
	ldr r4, _08008BF0 @ =_080AE09C
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xa0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	ldr r4, _08008BF4 @ =_080AE130
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xe
	adds r0, r4, #0
	movs r2, #9
	bl CpuSet
	ldr r4, _08008BF8 @ =_0807DDC8
	b _08008C96
	.align 2, 0
_08008BF0: .4byte _080AE09C
_08008BF4: .4byte _080AE130
_08008BF8: .4byte _0807DDC8
_08008BFC:
	ldr r4, _08008C28 @ =_080AE0BC
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xa0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	ldr r4, _08008C2C @ =_080AE144
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xe
	adds r0, r4, #0
	movs r2, #9
	bl CpuSet
	ldr r4, _08008C30 @ =_0807DEDC
	b _08008C96
	.align 2, 0
_08008C28: .4byte _080AE0BC
_08008C2C: .4byte _080AE144
_08008C30: .4byte _0807DEDC
_08008C34:
	ldr r4, _08008C60 @ =_080AE0DC
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xa0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	ldr r4, _08008C64 @ =_080AE158
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xe
	adds r0, r4, #0
	movs r2, #9
	bl CpuSet
	ldr r4, _08008C68 @ =_0807DFF8
	b _08008C96
	.align 2, 0
_08008C60: .4byte _080AE0DC
_08008C64: .4byte _080AE158
_08008C68: .4byte _0807DFF8
_08008C6C:
	ldr r4, _08008CAC @ =_080AE0FC
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xa0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	ldr r4, _08008CB0 @ =_080AE16C
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xe
	adds r0, r4, #0
	movs r2, #9
	bl CpuSet
	ldr r4, _08008CB4 @ =_0807E10C
_08008C96:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	b _08008CF4
	.align 2, 0
_08008CAC: .4byte _080AE0FC
_08008CB0: .4byte _080AE16C
_08008CB4: .4byte _0807E10C
_08008CB8:
	ldr r4, _08008D08 @ =_080AE0DC
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xa0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	ldr r4, _08008D0C @ =_080AE158
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xe
	adds r0, r4, #0
	movs r2, #9
	bl CpuSet
	ldr r4, _08008D10 @ =_0807E10C
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
_08008CF4:
	movs r0, #1
	bl pltt_setDirtyFlag
	movs r0, #2
	bl map_setBufferDirty
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08008D08: .4byte _080AE0DC
_08008D0C: .4byte _080AE158
_08008D10: .4byte _0807E10C

	thumb_func_start sub_8008D14
sub_8008D14: @ 0x08008D14
	push {r4, lr}
	adds r3, r0, #0
	movs r0, #0xe7
	lsls r0, r0, #3
	adds r2, r3, r0
	adds r0, #0xbc
	adds r1, r3, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #7
	ble _08008D42
	movs r4, #0
	str r4, [r1]
	movs r0, #0xff
	lsls r0, r0, #3
	adds r1, r3, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #6
	ble _08008D42
	str r4, [r1]
_08008D42:
	ldr r0, [r3, #0x10]
	cmp r0, #3
	beq _08008DD8
	ldr r0, [r2]
	cmp r0, #4
	bhi _08008DFA
	lsls r0, r0, #2
	ldr r1, _08008D58 @ =_08008D5C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08008D58: .4byte _08008D5C
_08008D5C: @ jump table
	.4byte _08008D70 @ case 0
	.4byte _08008D80 @ case 1
	.4byte _08008D90 @ case 2
	.4byte _08008DA0 @ case 3
	.4byte _08008DB0 @ case 4
_08008D70:
	adds r0, r2, #0
	adds r0, #0xc0
	ldr r4, [r0]
	lsls r4, r4, #5
	ldr r0, _08008D7C @ =_0807CD88
	b _08008DBA
	.align 2, 0
_08008D7C: .4byte _0807CD88
_08008D80:
	adds r0, r2, #0
	adds r0, #0xc0
	ldr r4, [r0]
	lsls r4, r4, #5
	ldr r0, _08008D8C @ =_0807CE68
	b _08008DBA
	.align 2, 0
_08008D8C: .4byte _0807CE68
_08008D90:
	adds r0, r2, #0
	adds r0, #0xc0
	ldr r4, [r0]
	lsls r4, r4, #5
	ldr r0, _08008D9C @ =_0807CF48
	b _08008DBA
	.align 2, 0
_08008D9C: .4byte _0807CF48
_08008DA0:
	adds r0, r2, #0
	adds r0, #0xc0
	ldr r4, [r0]
	lsls r4, r4, #5
	ldr r0, _08008DAC @ =_0807D028
	b _08008DBA
	.align 2, 0
_08008DAC: .4byte _0807D028
_08008DB0:
	adds r0, r2, #0
	adds r0, #0xc0
	ldr r4, [r0]
	lsls r4, r4, #5
	ldr r0, _08008DD4 @ =_0807D108
_08008DBA:
	adds r4, r4, r0
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	b _08008DFA
	.align 2, 0
_08008DD4: .4byte _0807D108
_08008DD8:
	adds r0, r2, #0
	adds r0, #0xc0
	ldr r4, [r0]
	lsls r4, r4, #5
	ldr r0, _08008E08 @ =_0807D028
	adds r4, r4, r0
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
_08008DFA:
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08008E08: .4byte _0807D028

	thumb_func_start sub_8008E0C
sub_8008E0C: @ 0x08008E0C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r1, #0
	cmp r1, #0
	bge _08008E1E
	adds r6, r1, #3
_08008E1E:
	asrs r6, r6, #2
	movs r4, #3
	ands r4, r1
	ldr r1, _08008EDC @ =0x000011E4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08008EE0
	bl save_getSavePointer_805D9B0
	lsls r4, r4, #5
	lsls r6, r6, #7
	adds r0, r6, r0
	adds r0, r4, r0
	adds r0, #0x64
	ldrb r7, [r0]
	bl save_getSavePointer_805D9B0
	adds r0, r6, r0
	adds r0, r4, r0
	adds r0, #0x64
	ldrh r5, [r0, #2]
	movs r0, #0
	movs r1, #5
	movs r2, #0xb
	bl map_getBufferPtr2d
	adds r1, r0, #0
	movs r0, #0xd0
	lsls r0, r0, #1
	mov sb, r0
	str r0, [sp]
	movs r0, #0xf
	mov r8, r0
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r2, #0xa0
	lsls r2, r2, #1
	movs r3, #0xc
	bl sub_800E728
	movs r0, #0
	movs r1, #8
	movs r2, #0xb
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0xb0
	lsls r2, r2, #1
	movs r3, #0xf
	bl sub_800C6D4
	bl save_getSavePointer_805D9B0
	adds r0, r6, r0
	adds r0, r4, r0
	adds r0, #0x78
	ldrb r7, [r0]
	bl save_getSavePointer_805D9B0
	adds r6, r6, r0
	adds r4, r4, r6
	adds r4, #0x78
	ldrh r5, [r4, #2]
	movs r0, #0
	movs r1, #5
	movs r2, #0xe
	bl map_getBufferPtr2d
	adds r1, r0, #0
	mov r0, sb
	str r0, [sp]
	mov r0, r8
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r2, #0xa0
	lsls r2, r2, #1
	movs r3, #0xc
	bl sub_800E728
	adds r4, r5, #0
	movs r0, #0
	movs r1, #8
	movs r2, #0xe
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0xb0
	lsls r2, r2, #1
	movs r3, #0xf
	bl sub_800C6D4
	b _08008F94
	.align 2, 0
_08008EDC: .4byte 0x000011E4
_08008EE0:
	bl save_getSavePointer_805D9B0
	lsls r4, r4, #5
	lsls r6, r6, #7
	adds r0, r6, r0
	adds r0, r4, r0
	movs r5, #0xb9
	lsls r5, r5, #2
	adds r0, r0, r5
	ldrb r7, [r0]
	bl save_getSavePointer_805D9B0
	adds r0, r6, r0
	adds r0, r4, r0
	adds r0, r0, r5
	ldrh r5, [r0, #2]
	movs r0, #0
	movs r1, #5
	movs r2, #0xb
	bl map_getBufferPtr2d
	adds r1, r0, #0
	movs r0, #0xd0
	lsls r0, r0, #1
	mov sb, r0
	str r0, [sp]
	movs r0, #0xf
	mov r8, r0
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r2, #0xa0
	lsls r2, r2, #1
	movs r3, #0xc
	bl sub_800E728
	movs r0, #0
	movs r1, #8
	movs r2, #0xb
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0xb0
	lsls r2, r2, #1
	movs r3, #0xf
	bl sub_800C6D4
	bl save_getSavePointer_805D9B0
	adds r0, r6, r0
	adds r0, r4, r0
	movs r5, #0xbe
	lsls r5, r5, #2
	adds r0, r0, r5
	ldrb r7, [r0]
	bl save_getSavePointer_805D9B0
	adds r6, r6, r0
	adds r4, r4, r6
	adds r4, r4, r5
	ldrh r5, [r4, #2]
	movs r0, #0
	movs r1, #5
	movs r2, #0xe
	bl map_getBufferPtr2d
	adds r1, r0, #0
	mov r0, sb
	str r0, [sp]
	mov r0, r8
	str r0, [sp, #4]
	adds r0, r7, #0
	movs r2, #0xa0
	lsls r2, r2, #1
	movs r3, #0xc
	bl sub_800E728
	adds r4, r5, #0
	movs r0, #0
	movs r1, #8
	movs r2, #0xe
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0xb0
	lsls r2, r2, #1
	movs r3, #0xf
	bl sub_800C6D4
_08008F94:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8008FA4
sub_8008FA4: @ 0x08008FA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sb, r1
	movs r1, #0xe7
	lsls r1, r1, #3
	adds r1, r1, r0
	mov r8, r1
	movs r0, #0x10
	subs r0, r0, r2
	str r0, [sp, #0xc]
	cmp r2, #1
	bgt _08008FC6
	movs r0, #0xe
_08008FC6:
	str r0, [sp, #8]
	cmp r2, #3
	ble _08008FD2
	movs r0, #0x10
	subs r0, r0, r2
	b _08008FD4
_08008FD2:
	movs r0, #0xc
_08008FD4:
	str r0, [sp, #4]
	movs r0, #0xa
	str r0, [sp]
	movs r6, #0
	mov r0, sb
	lsls r0, r0, #1
	mov sl, r0
	add r7, sp, #0x10
	mov r1, sb
	lsls r1, r1, #2
	str r1, [sp, #0x14]
	ldr r5, _0800910C @ =0x0000053C
	add r5, r8
_08008FEE:
	lsls r0, r6, #6
	ldr r1, _08009110 @ =_080B119C
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #0xc
	bl CpuSet
	adds r5, #0x18
	adds r6, #1
	cmp r6, #7
	ble _08008FEE
	mov r1, r8
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq _0800904A
	movs r6, #0
	mov r0, sl
	add r0, sb
	lsls r0, r0, #4
	ldr r2, _0800910C @ =0x0000053C
	add r2, r8
	ldr r4, _08009114 @ =0x00000FFF
	ldr r1, _08009118 @ =0xFFFFB000
	adds r5, r1, #0
	mov r1, sl
	adds r1, #1
	adds r3, r0, r2
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r0, r2
_0800902C:
	ldrh r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	orrs r0, r5
	strh r0, [r3]
	ldrh r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	orrs r0, r5
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	adds r6, #1
	cmp r6, #0xb
	ble _0800902C
_0800904A:
	movs r6, #0
	adds r5, r7, #0
_0800904E:
	movs r0, #0
	strh r0, [r5]
	adds r2, r6, #0
	adds r2, #0xa
	movs r0, #0
	movs r1, #0x11
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r5, #0
	ldr r2, _0800911C @ =0x0100000C
	bl CpuSet
	adds r6, #1
	cmp r6, #7
	ble _0800904E
	movs r6, #0
	mov r5, sp
	ldr r7, _08009120 @ =0x00000554
	add r7, r8
	ldr r4, _0800910C @ =0x0000053C
	add r4, r8
_0800907A:
	cmp r6, sb
	beq _080090A8
	ldr r2, [r5]
	movs r0, #0
	movs r1, #0x11
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0xc
	bl CpuSet
	ldr r2, [r5]
	adds r2, #1
	movs r0, #0
	movs r1, #0x11
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r7, #0
	movs r2, #0xc
	bl CpuSet
_080090A8:
	adds r5, #4
	adds r7, #0x30
	adds r4, #0x30
	adds r6, #1
	cmp r6, #3
	ble _0800907A
	mov r4, sl
	add r4, sb
	lsls r4, r4, #4
	ldr r1, _0800910C @ =0x0000053C
	adds r5, r4, r1
	add r5, r8
	ldr r6, [sp, #0x14]
	add r6, sp
	ldr r2, [r6]
	movs r0, #0
	movs r1, #0x11
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0xc
	bl CpuSet
	ldr r0, _08009120 @ =0x00000554
	adds r4, r4, r0
	add r4, r8
	ldr r2, [r6]
	adds r2, #1
	movs r0, #0
	movs r1, #0x11
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0xc
	bl CpuSet
	movs r0, #1
	bl map_setBufferDirty
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800910C: .4byte 0x0000053C
_08009110: .4byte _080B119C
_08009114: .4byte 0x00000FFF
_08009118: .4byte 0xFFFFB000
_0800911C: .4byte 0x0100000C
_08009120: .4byte 0x00000554

	thumb_func_start sub_8009124
sub_8009124: @ 0x08009124
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	adds r2, r1, #0
	movs r4, #0xe7
	lsls r4, r4, #3
	add r4, sl
	ldr r0, _08009170 @ =0x000007E4
	add r0, sl
	ldr r0, [r0]
	cmp r0, #0
	beq _0800914E
	movs r1, #0xfd
	lsls r1, r1, #3
	add r1, sl
	movs r0, #0
	str r0, [r1]
_0800914E:
	movs r0, #0xfd
	lsls r0, r0, #3
	add r0, sl
	ldr r0, [r0]
	movs r7, #0xfe
	lsls r7, r7, #3
	add r7, sl
	ldr r6, _08009174 @ =0x000007F2
	add r6, sl
	cmp r0, #0xa
	bls _08009166
	b _08009520
_08009166:
	lsls r0, r0, #2
	ldr r1, _08009178 @ =_0800917C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08009170: .4byte 0x000007E4
_08009174: .4byte 0x000007F2
_08009178: .4byte _0800917C
_0800917C: @ jump table
	.4byte _080091A8 @ case 0
	.4byte _080091CC @ case 1
	.4byte _0800921E @ case 2
	.4byte _080093D8 @ case 3
	.4byte _08009426 @ case 4
	.4byte _0800942E @ case 5
	.4byte _0800943E @ case 6
	.4byte _08009520 @ case 7
	.4byte _0800948E @ case 8
	.4byte _0800949E @ case 9
	.4byte _080094EE @ case 10
_080091A8:
	adds r2, r4, #0
	adds r2, #0xac
	ldr r0, [r2]
	adds r7, r4, #0
	adds r7, #0xb8
	adds r6, r4, #0
	adds r6, #0xba
	cmp r0, #0
	bne _080091BC
	b _08009520
_080091BC:
	movs r1, #0
	str r1, [r2]
	adds r0, r4, #0
	adds r0, #0xb4
	str r1, [r0]
	adds r1, r4, #0
	adds r1, #0xb0
	b _080093BE
_080091CC:
	adds r1, r4, #0
	adds r1, #0xb4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x10
	bgt _08009210
	ldr r1, _0800920C @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080091E6
	adds r0, #0x3f
_080091E6:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	adds r1, r4, #0
	adds r1, #0xb8
	movs r0, #0
	ldrsh r2, [r1, r0]
	movs r0, #0xa0
	subs r0, r0, r2
	muls r0, r3, r0
	asrs r0, r0, #0xf
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r7, r1, #0
	b _0800951C
	.align 2, 0
_0800920C: .4byte gSinTable
_08009210:
	movs r0, #0
	str r0, [r1]
	adds r1, r4, #0
	adds r1, #0xb0
	ldr r0, [r1]
	adds r0, #1
	b _08009516
_0800921E:
	cmp r2, #0
	beq _08009238
	ldr r0, _08009234 @ =0x0000052C
	adds r1, r4, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _08009238
	movs r0, #1
	str r0, [r1]
	b _0800928C
	.align 2, 0
_08009234: .4byte 0x0000052C
_08009238:
	movs r2, #0xa5
	lsls r2, r2, #3
	adds r1, r4, r2
	movs r0, #0
	str r0, [r1]
	mov r1, sl
	ldr r0, [r1, #0x10]
	cmp r0, #5
	bhi _0800928C
	lsls r0, r0, #2
	ldr r1, _08009254 @ =_08009258
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08009254: .4byte _08009258
_08009258: @ jump table
	.4byte _08009270 @ case 0
	.4byte _08009274 @ case 1
	.4byte _08009274 @ case 2
	.4byte _08009284 @ case 3
	.4byte _0800928C @ case 4
	.4byte _08009274 @ case 5
_08009270:
	movs r0, #0
	b _0800928A
_08009274:
	mov r0, sl
	bl spm_getSavedCup
	ldr r1, [r4]
	cmp r1, r0
	beq _08009284
	movs r0, #0
	b _0800928A
_08009284:
	mov r0, sl
	bl spm_getSavedTrack
_0800928A:
	str r0, [r4, #4]
_0800928C:
	ldr r2, [r4]
	lsls r2, r2, #2
	ldr r1, [r4, #4]
	adds r2, r2, r1
	ldr r3, _08009300 @ =0x0203EBFC
	movs r0, #2
	str r0, [r3]
	ldr r0, _08009304 @ =0x0203EC00
	str r2, [r0]
	mov r0, sl
	movs r2, #0
	bl sub_8008FA4
	ldr r0, _08009308 @ =0x000011E4
	add r0, sl
	ldr r0, [r0]
	cmp r0, #0
	beq _080092B8
	mov r2, sl
	ldr r0, [r2, #0x10]
	cmp r0, #3
	bne _08009360
_080092B8:
	mov r1, sl
	ldr r0, [r1, #0x10]
	cmp r0, #3
	beq _08009318
	movs r5, #0
	adds r2, r4, #0
	adds r2, #0xb0
	str r2, [sp, #0xc]
	adds r7, r4, #0
	adds r7, #0xb8
	adds r6, r4, #0
	adds r6, #0xba
	ldr r0, _0800930C @ =0x06005800
	mov r8, r0
_080092D4:
	bl dmaq_getVBlankDmaQueue
	ldr r2, [r4]
	lsls r2, r2, #2
	adds r2, r2, r5
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #8
	ldr r2, _08009310 @ =0x02025400
	adds r1, r1, r2
	mov r2, r8
	ldr r3, _08009314 @ =0x80000180
	bl dmaq_enqueue
	movs r1, #0x80
	lsls r1, r1, #3
	add r8, r1
	adds r5, #1
	cmp r5, #3
	ble _080092D4
	b _0800939C
	.align 2, 0
_08009300: .4byte 0x0203EBFC
_08009304: .4byte 0x0203EC00
_08009308: .4byte 0x000011E4
_0800930C: .4byte 0x06005800
_08009310: .4byte 0x02025400
_08009314: .4byte 0x80000180
_08009318:
	adds r2, r4, #0
	adds r2, #0xb0
	str r2, [sp, #0xc]
	adds r7, r4, #0
	adds r7, #0xb8
	adds r6, r4, #0
	adds r6, #0xba
	ldr r0, _08009354 @ =0x06005800
	mov sb, r0
	movs r1, #0
	mov r8, r1
	movs r5, #3
_08009330:
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08009358 @ =0x02025400
	add r1, r8
	mov r2, sb
	ldr r3, _0800935C @ =0x80000180
	bl dmaq_enqueue
	movs r2, #0x80
	lsls r2, r2, #3
	add sb, r2
	movs r0, #0xc0
	lsls r0, r0, #2
	add r8, r0
	subs r5, #1
	cmp r5, #0
	bge _08009330
	b _0800939C
	.align 2, 0
_08009354: .4byte 0x06005800
_08009358: .4byte 0x02025400
_0800935C: .4byte 0x80000180
_08009360:
	movs r5, #0
	adds r1, r4, #0
	adds r1, #0xb0
	str r1, [sp, #0xc]
	adds r7, r4, #0
	adds r7, #0xb8
	adds r6, r4, #0
	adds r6, #0xba
	ldr r2, _080093C8 @ =0x06005800
	mov r8, r2
_08009374:
	bl dmaq_getVBlankDmaQueue
	ldr r2, [r4]
	lsls r2, r2, #2
	adds r2, r2, r5
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #8
	ldr r2, _080093CC @ =0x02025400
	adds r1, r1, r2
	mov r2, r8
	ldr r3, _080093D0 @ =0x80000180
	bl dmaq_enqueue
	movs r0, #0x80
	lsls r0, r0, #3
	add r8, r0
	adds r5, #1
	cmp r5, #3
	ble _08009374
_0800939C:
	ldr r1, _080093D4 @ =_080D94A0
	ldr r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	adds r0, r4, #0
	movs r2, #5
	bl CpuSet
	ldr r1, [sp, #0xc]
_080093BE:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	b _08009520
	.align 2, 0
_080093C8: .4byte 0x06005800
_080093CC: .4byte 0x02025400
_080093D0: .4byte 0x80000180
_080093D4: .4byte _080D94A0
_080093D8:
	adds r1, r4, #0
	adds r1, #0xb4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x10
	bgt _08009418
	ldr r1, _08009414 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080093F2
	adds r0, #0x3f
_080093F2:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #5
	rsbs r0, r0, #0
	asrs r0, r0, #0xf
	adds r0, #0xa0
	adds r1, r4, #0
	adds r1, #0xb8
	strh r0, [r1]
	adds r7, r1, #0
	b _0800951C
	.align 2, 0
_08009414: .4byte gSinTable
_08009418:
	movs r0, #0
	str r0, [r1]
	adds r1, r4, #0
	adds r1, #0xb0
	ldr r0, [r1]
	adds r0, #1
	b _08009516
_08009426:
	adds r1, r4, #0
	adds r1, #0xb0
	movs r0, #0
	b _08009516
_0800942E:
	adds r1, r4, #0
	adds r1, #0xb4
	movs r0, #0
	str r0, [r1]
	subs r1, #4
	ldr r0, [r1]
	adds r0, #1
	b _08009516
_0800943E:
	adds r1, r4, #0
	adds r1, #0xb4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x10
	bgt _08009480
	ldr r1, _0800947C @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08009458
	adds r0, #0x3f
_08009458:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	adds r1, r4, #0
	adds r1, #0xb8
	movs r0, #0
	ldrsh r2, [r1, r0]
	movs r0, #0xa0
	subs r0, r0, r2
	muls r0, r3, r0
	asrs r0, r0, #0xf
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r7, r1, #0
	b _0800951C
	.align 2, 0
_0800947C: .4byte gSinTable
_08009480:
	movs r0, #0
	str r0, [r1]
	adds r1, r4, #0
	adds r1, #0xb0
	ldr r0, [r1]
	adds r0, #1
	b _08009516
_0800948E:
	adds r1, r4, #0
	adds r1, #0xb4
	movs r0, #0
	str r0, [r1]
	subs r1, #4
	ldr r0, [r1]
	adds r0, #1
	b _08009516
_0800949E:
	adds r1, r4, #0
	adds r1, #0xb4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x10
	bgt _080094E0
	ldr r1, _080094DC @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080094B8
	adds r0, #0x3f
_080094B8:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	adds r1, r4, #0
	adds r1, #0xb8
	movs r0, #0
	ldrsh r2, [r1, r0]
	movs r0, #0xa0
	subs r0, r0, r2
	muls r0, r3, r0
	asrs r0, r0, #0xf
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	adds r7, r1, #0
	b _0800951C
	.align 2, 0
_080094DC: .4byte gSinTable
_080094E0:
	movs r0, #0
	str r0, [r1]
	adds r1, r4, #0
	adds r1, #0xb0
	ldr r0, [r1]
	adds r0, #1
	b _08009516
_080094EE:
	adds r5, r4, #0
	adds r5, #0xb4
	ldr r1, [r5]
	cmp r1, #4
	bgt _08009506
	mov r0, sl
	bl sub_800873C
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	b _08009518
_08009506:
	mov r0, sl
	bl sub_8008850
	movs r0, #0
	str r0, [r5]
	adds r1, r4, #0
	adds r1, #0xb0
	movs r0, #2
_08009516:
	str r0, [r1]
_08009518:
	adds r7, r4, #0
	adds r7, #0xb8
_0800951C:
	adds r6, r4, #0
	adds r6, #0xba
_08009520:
	ldrh r0, [r7]
	adds r0, #0xc0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08009580 @ =0xFFFF0000
	ldr r1, [sp, #8]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #8]
	ldrh r0, [r6]
	adds r0, #0x50
	lsls r0, r0, #0x10
	ldr r2, _08009584 @ =0x0000FFFF
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #8]
	ldr r0, _08009588 @ =_080C8DAC
	movs r3, #0x80
	lsls r3, r3, #1
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r1, sp, #8
	adds r2, r3, #0
	bl oam_renderCellData
	ldrh r0, [r7]
	rsbs r0, r0, #0
	movs r1, #0x90
	lsls r1, r1, #5
	add r1, sl
	ldrh r2, [r1]
	strh r0, [r1]
	ldrh r0, [r6]
	rsbs r0, r0, #0
	ldr r1, _0800958C @ =0x00001202
	add r1, sl
	ldrh r2, [r1]
	strh r0, [r1]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009580: .4byte 0xFFFF0000
_08009584: .4byte 0x0000FFFF
_08009588: .4byte _080C8DAC
_0800958C: .4byte 0x00001202

	thumb_func_start sub_8009590
sub_8009590: @ 0x08009590
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #0xe7
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _080095A4
	b _08009746
_080095A4:
	ldr r1, _080095C0 @ =0x000011E4
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _080095C4
	bl save_getSavePointer_805D9B0
	ldr r2, [r5]
	lsls r1, r2, #1
	adds r1, r1, r2
	ldr r2, [r4, #0x14]
	adds r2, r2, r1
	adds r0, #0x46
	b _080095D4
	.align 2, 0
_080095C0: .4byte 0x000011E4
_080095C4:
	bl save_getSavePointer_805D9B0
	ldr r2, [r5]
	lsls r1, r2, #1
	adds r1, r1, r2
	ldr r2, [r4, #0x14]
	adds r2, r2, r1
	adds r0, #0x55
_080095D4:
	adds r0, r0, r2
	ldrb r2, [r0]
	adds r0, r5, #0
	adds r0, #0xf8
	str r2, [r0]
	adds r4, r0, #0
	cmp r2, #7
	bls _080095E6
	b _08009746
_080095E6:
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	adds r1, r5, #0
	adds r1, #0xfc
	cmp r0, #5
	bls _080095F8
	b _0800972E
_080095F8:
	lsls r0, r0, #2
	ldr r1, _08009604 @ =_08009608
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08009604: .4byte _08009608
_08009608: @ jump table
	.4byte _08009620 @ case 0
	.4byte _08009660 @ case 1
	.4byte _080096A8 @ case 2
	.4byte _080096B2 @ case 3
	.4byte _080096C4 @ case 4
	.4byte _08009726 @ case 5
_08009620:
	bl dmaq_getVBlankDmaQueue
	ldr r1, [r4]
	lsls r1, r1, #7
	movs r3, #0x84
	lsls r3, r3, #1
	adds r1, r1, r3
	adds r1, r5, r1
	ldr r2, _08009658 @ =0x06014800
	ldr r3, _0800965C @ =0x80000040
	bl dmaq_enqueue
	adds r2, r5, #0
	adds r2, #0xfc
	movs r1, #0
	str r1, [r2]
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r5, r3
	str r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r5, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	adds r1, r2, #0
	b _0800972E
	.align 2, 0
_08009658: .4byte 0x06014800
_0800965C: .4byte 0x80000040
_08009660:
	movs r2, #0x82
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x10
	bgt _0800969C
	ldr r1, _08009698 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800967C
	adds r0, #0x3f
_0800967C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r4, r5, #0
	adds r4, #0xfc
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #5
	adds r1, r1, r0
	asrs r1, r1, #0xf
	adds r1, #1
	b _080096FC
	.align 2, 0
_08009698: .4byte gSinTable
_0800969C:
	movs r0, #0
	str r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r5, r3
	b _0800971A
_080096A8:
	adds r1, r5, #0
	adds r1, #0xfc
	movs r0, #0x80
	lsls r0, r0, #1
	b _0800972C
_080096B2:
	movs r0, #0x82
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r5, r2
	b _0800971A
_080096C4:
	movs r3, #0x82
	lsls r3, r3, #1
	adds r1, r5, r3
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x10
	bgt _08009710
	ldr r1, _0800970C @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080096E0
	adds r0, #0x3f
_080096E0:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r4, r5, #0
	adds r4, #0xfc
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #5
	adds r1, r1, r0
	rsbs r1, r1, #0
	asrs r1, r1, #0xf
	adds r1, #0x64
_080096FC:
	movs r0, #0xc8
	lsls r0, r0, #7
	bl __divsi3
	str r0, [r4]
	adds r1, r4, #0
	b _0800972E
	.align 2, 0
_0800970C: .4byte gSinTable
_08009710:
	movs r0, #0
	str r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r5, r0
_0800971A:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	adds r1, r5, #0
	adds r1, #0xfc
	b _0800972E
_08009726:
	adds r1, r5, #0
	adds r1, #0xfc
	movs r0, #0
_0800972C:
	str r0, [r1]
_0800972E:
	ldr r3, [r1]
	cmp r3, #0
	beq _08009746
	ldr r0, _08009750 @ =_080C8FE4
	adds r1, r5, #0
	adds r1, #0xf4
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	adds r2, r3, #0
	bl oam_renderCellData
_08009746:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08009750: .4byte _080C8FE4

	thumb_func_start sub_8009754
sub_8009754: @ 0x08009754
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #0xe7
	lsls r0, r0, #3
	adds r5, r4, r0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0800976E
	b _0800997A
_0800976E:
	ldr r1, _0800978C @ =0x000011E4
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08009790
	bl save_getSavePointer_805D9B0
	ldr r2, [r5]
	lsls r1, r2, #1
	adds r1, r1, r2
	ldr r2, [r4, #0x14]
	adds r2, r2, r1
	adds r0, #0x28
	b _080097A0
	.align 2, 0
_0800978C: .4byte 0x000011E4
_08009790:
	bl save_getSavePointer_805D9B0
	ldr r2, [r5]
	lsls r1, r2, #1
	adds r1, r1, r2
	ldr r2, [r4, #0x14]
	adds r2, r2, r1
	adds r0, #0x37
_080097A0:
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0
	beq _080097C6
	cmp r1, #0
	bgt _080097B8
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _080097C6
	b _080097C0
_080097B8:
	cmp r1, #1
	beq _080097C6
	cmp r1, #2
	beq _080097C6
_080097C0:
	adds r7, r5, #0
	adds r7, #0xd8
	b _080097CE
_080097C6:
	adds r0, r5, #0
	adds r0, #0xd8
	str r1, [r0]
	adds r7, r0, #0
_080097CE:
	ldr r0, [r7]
	cmp r0, #0
	bge _080097D6
	b _0800997A
_080097D6:
	adds r0, r5, #0
	adds r0, #0xec
	ldr r2, [r0]
	adds r3, r0, #0
	adds r1, r5, #0
	adds r1, #0xe8
	cmp r2, #5
	bls _080097E8
	b _080098E0
_080097E8:
	lsls r0, r2, #2
	ldr r1, _080097F4 @ =_080097F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080097F4: .4byte _080097F8
_080097F8: @ jump table
	.4byte _08009810 @ case 0
	.4byte _08009828 @ case 1
	.4byte _08009864 @ case 2
	.4byte _0800986E @ case 3
	.4byte _08009880 @ case 4
	.4byte _080098D8 @ case 5
_08009810:
	adds r2, r5, #0
	adds r2, #0xe8
	movs r1, #0
	str r1, [r2]
	adds r0, r5, #0
	adds r0, #0xf0
	str r1, [r0]
	ldr r0, [r3]
	adds r0, #1
	str r0, [r3]
	adds r1, r2, #0
	b _080098E0
_08009828:
	adds r1, r5, #0
	adds r1, #0xf0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x10
	bgt _080098C8
	ldr r1, _08009860 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08009842
	adds r0, #0x3f
_08009842:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r4, r5, #0
	adds r4, #0xe8
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #5
	adds r1, r1, r0
	asrs r1, r1, #0xf
	adds r1, #1
	b _080098B6
	.align 2, 0
_08009860: .4byte gSinTable
_08009864:
	adds r1, r5, #0
	adds r1, #0xe8
	movs r0, #0x80
	lsls r0, r0, #1
	b _080098DE
_0800986E:
	adds r1, r5, #0
	adds r1, #0xf0
	movs r0, #0
	str r0, [r1]
	ldr r0, [r3]
	adds r0, #1
	str r0, [r3]
	subs r1, #8
	b _080098E0
_08009880:
	adds r1, r5, #0
	adds r1, #0xf0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x10
	bgt _080098C8
	ldr r1, _080098C4 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800989A
	adds r0, #0x3f
_0800989A:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r4, r5, #0
	adds r4, #0xe8
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #5
	adds r1, r1, r0
	rsbs r1, r1, #0
	asrs r1, r1, #0xf
	adds r1, #0x64
_080098B6:
	movs r0, #0xc8
	lsls r0, r0, #7
	bl __divsi3
	str r0, [r4]
	adds r1, r4, #0
	b _080098E0
	.align 2, 0
_080098C4: .4byte gSinTable
_080098C8:
	movs r0, #0
	str r0, [r1]
	ldr r0, [r3]
	adds r0, #1
	str r0, [r3]
	adds r1, r5, #0
	adds r1, #0xe8
	b _080098E0
_080098D8:
	adds r1, r5, #0
	adds r1, #0xe8
	movs r0, #0
_080098DE:
	str r0, [r1]
_080098E0:
	ldr r3, [r1]
	cmp r3, #0
	beq _080098F8
	ldr r0, _08009988 @ =_080C8F60
	adds r1, r5, #0
	adds r1, #0xd4
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	adds r2, r3, #0
	bl oam_renderCellData
_080098F8:
	mov r8, r7
	movs r0, #0xdc
	adds r0, r0, r5
	mov sb, r0
	mov r1, r8
	ldr r2, [r1]
	ldr r0, [r0]
	adds r6, r5, #0
	adds r6, #0xe4
	cmp r2, r0
	beq _0800993E
	ldr r1, _0800998C @ =_080D961C
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	mov r1, r8
	ldr r0, [r1]
	mov r1, sb
	str r0, [r1]
	movs r0, #0xa
	str r0, [r6]
_0800993E:
	ldr r0, [r6]
	adds r0, #1
	str r0, [r6]
	cmp r0, #6
	ble _0800997A
	ldr r1, _08009990 @ =_080DBE28
	ldr r0, [r7]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	movs r0, #0
	str r0, [r6]
	adds r2, r5, #0
	adds r2, #0xe0
	ldr r0, [r2]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	str r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r1, _08009994 @ =0x02015E00
	bl LZ77UnCompWram
	movs r0, #0xa7
	lsls r0, r0, #3
	adds r1, r5, r0
	movs r0, #1
	str r0, [r1]
_0800997A:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009988: .4byte _080C8F60
_0800998C: .4byte _080D961C
_08009990: .4byte _080DBE28
_08009994: .4byte 0x02015E00

	thumb_func_start sub_8009998
sub_8009998: @ 0x08009998
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	movs r7, #0xe7
	lsls r7, r7, #3
	add r7, r8
	ldr r0, _080099C0 @ =0x00000C58
	add r0, r8
	ldr r0, [r0]
	cmp r0, #9
	bls _080099B4
	b _08009C3A
_080099B4:
	lsls r0, r0, #2
	ldr r1, _080099C4 @ =_080099C8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080099C0: .4byte 0x00000C58
_080099C4: .4byte _080099C8
_080099C8: @ jump table
	.4byte _08009C3A @ case 0
	.4byte _080099F0 @ case 1
	.4byte _08009A58 @ case 2
	.4byte _08009C30 @ case 3
	.4byte _08009A94 @ case 4
	.4byte _08009AF8 @ case 5
	.4byte _08009B3A @ case 6
	.4byte _08009B70 @ case 7
	.4byte _08009BE0 @ case 8
	.4byte _08009C30 @ case 9
_080099F0:
	ldr r2, _08009A48 @ =_080D95FC
	mov r1, r8
	ldr r0, [r1, #0x18]
	lsls r0, r0, #2
	adds r1, r0, r2
	ldrh r4, [r1]
	adds r2, #2
	adds r0, r0, r2
	ldrh r6, [r0]
	adds r0, r4, #0
	bl m4aSongNumStart
	ldr r5, _08009A4C @ =gMPlayTable
	ldr r0, _08009A50 @ =gSongTable
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
	movs r2, #0xa4
	lsls r2, r2, #3
	adds r1, r7, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r3, _08009A54 @ =0x00000524
	adds r1, r7, r3
	b _08009C36
	.align 2, 0
_08009A48: .4byte _080D95FC
_08009A4C: .4byte gMPlayTable
_08009A50: .4byte gSongTable
_08009A54: .4byte 0x00000524
_08009A58:
	ldr r0, _08009A84 @ =0x00000524
	adds r1, r7, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x20
	bgt _08009A88
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	rsbs r0, r0, #0
	cmp r0, #0
	bge _08009A78
	adds r0, #0x1f
_08009A78:
	asrs r0, r0, #5
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r0, r1
	b _08009C04
	.align 2, 0
_08009A84: .4byte 0x00000524
_08009A88:
	movs r0, #0xa4
	lsls r0, r0, #3
	adds r1, r7, r0
	ldr r0, [r1]
	adds r0, #1
	b _08009C38
_08009A94:
	ldr r2, _08009AE8 @ =_080D95FC
	mov r3, r8
	ldr r0, [r3, #0x18]
	lsls r0, r0, #2
	adds r1, r0, r2
	ldrh r4, [r1]
	adds r2, #2
	adds r0, r0, r2
	ldrh r6, [r0]
	adds r0, r4, #0
	bl m4aSongNumStart
	ldr r5, _08009AEC @ =gMPlayTable
	ldr r0, _08009AF0 @ =gSongTable
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
	movs r0, #0xa4
	lsls r0, r0, #3
	adds r1, r7, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, _08009AF4 @ =0x00000524
	b _08009C34
	.align 2, 0
_08009AE8: .4byte _080D95FC
_08009AEC: .4byte gMPlayTable
_08009AF0: .4byte gSongTable
_08009AF4: .4byte 0x00000524
_08009AF8:
	ldr r3, _08009B24 @ =0x00000524
	adds r2, r7, r3
	ldr r0, [r2]
	adds r1, r0, #1
	str r1, [r2]
	cmp r1, #0x10
	bgt _08009B28
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	rsbs r0, r0, #0
	cmp r0, #0
	bge _08009B18
	adds r0, #0xf
_08009B18:
	asrs r0, r0, #4
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r0, r1
	b _08009C04
	.align 2, 0
_08009B24: .4byte 0x00000524
_08009B28:
	movs r1, #0xa4
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	movs r0, #0
	str r0, [r2]
	b _08009C3A
_08009B3A:
	movs r0, #0x9c
	bl m4aSongNumStart
	movs r2, #0
	movs r3, #0xa3
	lsls r3, r3, #3
	adds r1, r7, r3
	ldr r0, _08009B68 @ =0xFFFF8000
	str r0, [r1]
	adds r3, #4
	adds r1, r7, r3
	lsls r0, r0, #4
	str r0, [r1]
	movs r0, #0xa4
	lsls r0, r0, #3
	adds r1, r7, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _08009B6C @ =0x00000524
	adds r0, r7, r1
	str r2, [r0]
	b _08009C3A
	.align 2, 0
_08009B68: .4byte 0xFFFF8000
_08009B6C: .4byte 0x00000524
_08009B70:
	ldr r2, _08009BB8 @ =0x00000524
	adds r3, r7, r2
	ldr r0, [r3]
	adds r1, r0, #1
	str r1, [r3]
	cmp r1, #0x20
	bgt _08009BC4
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #3
	rsbs r0, r0, #0
	cmp r0, #0
	bge _08009B8C
	adds r0, #0x1f
_08009B8C:
	asrs r0, r0, #5
	adds r0, #0x50
	ldr r3, _08009BBC @ =0x00000514
	adds r1, r7, r3
	strh r0, [r1]
	ldr r0, _08009BC0 @ =0x00000516
	adds r1, r7, r0
	adds r3, #8
	adds r2, r7, r3
	movs r3, #2
	ldrsh r0, [r2, r3]
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	movs r0, #0xa3
	lsls r0, r0, #3
	adds r1, r7, r0
	ldr r0, [r2]
	ldr r1, [r1]
	subs r0, r0, r1
	str r0, [r2]
	b _08009C3A
	.align 2, 0
_08009BB8: .4byte 0x00000524
_08009BBC: .4byte 0x00000514
_08009BC0: .4byte 0x00000516
_08009BC4:
	ldr r2, _08009BDC @ =0x00000516
	adds r1, r7, r2
	movs r2, #0
	movs r0, #0x68
	strh r0, [r1]
	str r2, [r3]
	movs r3, #0xa4
	lsls r3, r3, #3
	adds r1, r7, r3
	ldr r0, [r1]
	adds r0, #1
	b _08009C38
	.align 2, 0
_08009BDC: .4byte 0x00000516
_08009BE0:
	ldr r0, _08009C14 @ =0x00000524
	adds r2, r7, r0
	ldr r0, [r2]
	adds r1, r0, #1
	str r1, [r2]
	cmp r1, #0x10
	bgt _08009C20
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	rsbs r0, r0, #0
	cmp r0, #0
	bge _08009C00
	adds r0, #0xf
_08009C00:
	asrs r0, r0, #4
	adds r0, #0x18
_08009C04:
	ldr r2, _08009C18 @ =0x00000514
	adds r1, r7, r2
	strh r0, [r1]
	ldr r3, _08009C1C @ =0x00000516
	adds r1, r7, r3
	movs r0, #0x68
	strh r0, [r1]
	b _08009C3A
	.align 2, 0
_08009C14: .4byte 0x00000524
_08009C18: .4byte 0x00000514
_08009C1C: .4byte 0x00000516
_08009C20:
	movs r0, #0
	str r0, [r2]
	movs r0, #0xa4
	lsls r0, r0, #3
	adds r1, r7, r0
	ldr r0, [r1]
	adds r0, #1
	b _08009C38
_08009C30:
	movs r2, #0xa4
	lsls r2, r2, #3
_08009C34:
	adds r1, r7, r2
_08009C36:
	movs r0, #0
_08009C38:
	str r0, [r1]
_08009C3A:
	movs r3, #0xa4
	lsls r3, r3, #3
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #0
	beq _08009C74
	mov r0, r8
	ldr r1, [r0, #0x18]
	movs r0, #7
	str r0, [sp]
	mov r0, r8
	movs r2, #0x20
	movs r3, #0
	bl renderCharacterSprites
	ldr r2, _08009C80 @ =0x00000514
	adds r1, r7, r2
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r2, #0xde
	movs r3, #0xde
	bl oam_renderCellData
	movs r3, #0xa7
	lsls r3, r3, #3
	adds r1, r7, r3
	movs r0, #1
	str r0, [r1]
_08009C74:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009C80: .4byte 0x00000514

	thumb_func_start sub_8009C84
sub_8009C84: @ 0x08009C84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	movs r7, #0xe7
	lsls r7, r7, #3
	add r7, sl
	ldr r0, [r0, #0x10]
	cmp r0, #1
	beq _08009CA0
	b _08009F60
_08009CA0:
	ldr r0, _08009CB8 @ =0x00000C44
	add r0, sl
	ldr r0, [r0]
	cmp r0, #6
	bls _08009CAC
	b _08009E70
_08009CAC:
	lsls r0, r0, #2
	ldr r1, _08009CBC @ =_08009CC0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08009CB8: .4byte 0x00000C44
_08009CBC: .4byte _08009CC0
_08009CC0: @ jump table
	.4byte _08009E70 @ case 0
	.4byte _08009CDC @ case 1
	.4byte _08009CFC @ case 2
	.4byte _08009D50 @ case 3
	.4byte _08009D70 @ case 4
	.4byte _08009E00 @ case 5
	.4byte _08009E60 @ case 6
_08009CDC:
	movs r1, #0xa1
	lsls r1, r1, #3
	adds r0, r7, r1
	movs r2, #0
	str r2, [r0]
	ldr r3, _08009CF8 @ =0x0000050C
	adds r1, r7, r3
	movs r0, #2
	str r0, [r1]
	movs r1, #0xa2
	lsls r1, r1, #3
	adds r0, r7, r1
	str r2, [r0]
	b _08009E70
	.align 2, 0
_08009CF8: .4byte 0x0000050C
_08009CFC:
	movs r3, #0xa2
	lsls r3, r3, #3
	adds r2, r7, r3
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	cmp r0, #0x10
	bgt _08009D3C
	ldr r1, _08009D38 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08009D18
	adds r0, #0x3f
_08009D18:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xa1
	lsls r1, r1, #3
	adds r4, r7, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #5
	adds r1, r1, r0
	asrs r1, r1, #0xf
	adds r1, #1
	b _08009E3A
	.align 2, 0
_08009D38: .4byte gSinTable
_08009D3C:
	ldr r3, _08009D4C @ =0x0000050C
	adds r0, r7, r3
	movs r1, #3
	str r1, [r0]
	movs r0, #0
	str r0, [r2]
	b _08009E70
	.align 2, 0
_08009D4C: .4byte 0x0000050C
_08009D50:
	movs r0, #0xa1
	lsls r0, r0, #3
	adds r1, r7, r0
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r1]
	ldr r2, _08009D6C @ =0x0000050C
	adds r1, r7, r2
	movs r0, #0
	str r0, [r1]
	movs r3, #0xa6
	lsls r3, r3, #3
	b _08009DEA
	.align 2, 0
_08009D6C: .4byte 0x0000050C
_08009D70:
	movs r1, #0xa2
	lsls r1, r1, #3
	adds r0, r7, r1
	movs r5, #0
	str r5, [r0]
	ldr r2, _08009DF4 @ =0x0000050C
	adds r1, r7, r2
	movs r0, #5
	str r0, [r1]
	add r0, sp, #8
	strh r5, [r0]
	movs r0, #0
	movs r1, #5
	movs r2, #0xb
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r6, _08009DF8 @ =0x0100000C
	add r0, sp, #8
	adds r2, r6, #0
	bl CpuSet
	mov r4, sp
	adds r4, #0xa
	strh r5, [r4]
	movs r0, #0
	movs r1, #5
	movs r2, #0xc
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	add r4, sp, #0xc
	strh r5, [r4]
	movs r0, #0
	movs r1, #5
	movs r2, #0xe
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	mov r4, sp
	adds r4, #0xe
	strh r5, [r4]
	movs r0, #0
	movs r1, #5
	movs r2, #0xf
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	adds r2, r6, #0
	bl CpuSet
	ldr r3, _08009DFC @ =0x00000534
_08009DEA:
	adds r1, r7, r3
	movs r0, #1
	str r0, [r1]
	b _08009E70
	.align 2, 0
_08009DF4: .4byte 0x0000050C
_08009DF8: .4byte 0x0100000C
_08009DFC: .4byte 0x00000534
_08009E00:
	movs r0, #0xa2
	lsls r0, r0, #3
	adds r1, r7, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x10
	bgt _08009E4C
	ldr r1, _08009E48 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08009E1C
	adds r0, #0x3f
_08009E1C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xa1
	lsls r1, r1, #3
	adds r4, r7, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #5
	adds r1, r1, r0
	rsbs r1, r1, #0
	asrs r1, r1, #0xf
	adds r1, #0x64
_08009E3A:
	movs r0, #0xc8
	lsls r0, r0, #7
	bl __divsi3
	str r0, [r4]
	b _08009E70
	.align 2, 0
_08009E48: .4byte gSinTable
_08009E4C:
	movs r0, #0
	str r0, [r1]
	ldr r2, _08009E5C @ =0x0000050C
	adds r1, r7, r2
	movs r0, #6
	str r0, [r1]
	b _08009E70
	.align 2, 0
_08009E5C: .4byte 0x0000050C
_08009E60:
	movs r3, #0xa1
	lsls r3, r3, #3
	adds r0, r7, r3
	movs r1, #0
	str r1, [r0]
	ldr r2, _08009F70 @ =0x0000050C
	adds r0, r7, r2
	str r1, [r0]
_08009E70:
	movs r3, #0xa1
	lsls r3, r3, #3
	adds r3, r3, r7
	mov r8, r3
	ldr r3, [r3]
	cmp r3, #0
	beq _08009F60
	ldr r0, _08009F74 @ =_080C8F68
	ldr r1, _08009F78 @ =_080D95E8
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	adds r2, r3, #0
	bl oam_renderCellData
	ldr r0, _08009F7C @ =_080C8F7C
	ldr r1, _08009F80 @ =_080D95EC
	mov r2, r8
	ldr r3, [r2]
	str r4, [sp]
	str r4, [sp, #4]
	adds r2, r3, #0
	bl oam_renderCellData
	ldr r0, _08009F84 @ =0x000011E4
	add r0, sl
	ldr r4, [r0]
	cmp r4, #0
	bne _08009F60
	ldr r0, [r7]
	lsls r0, r0, #2
	ldr r1, [r7, #4]
	adds r6, r0, r1
	bl save_getSavePointer_805D9B0
	lsls r3, r6, #2
	mov sb, r3
	adds r1, r3, r6
	lsls r1, r1, #2
	movs r2, #0xb2
	lsls r2, r2, #3
	adds r1, r1, r2
	adds r0, r0, r1
	ldrb r1, [r0, #0xb]
	movs r0, #1
	ands r0, r1
	ldr r5, _08009F88 @ =_080B2230
	cmp r0, #0
	beq _08009ED4
	ldr r5, _08009F8C @ =_080B2250
_08009ED4:
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r3, #0xf5
	lsls r3, r3, #1
	adds r1, r1, r3
	adds r0, r5, #0
	bl LZ77UnCompWram
	movs r0, #1
	bl pltt_setDirtyFlag
	ldr r0, _08009F90 @ =0x00001130
	add r0, sl
	add r0, sb
	ldr r0, [r0]
	cmp r0, #0
	beq _08009F0C
	ldr r0, _08009F94 @ =_080C8FB4
	ldr r1, _08009F98 @ =_080D95F0
	mov r2, r8
	ldr r3, [r2]
	str r4, [sp]
	str r4, [sp, #4]
	adds r2, r3, #0
	bl oam_renderCellData
_08009F0C:
	movs r4, #0
	movs r5, #0
_08009F10:
	lsls r0, r4, #2
	movs r1, #0x8e
	lsls r1, r1, #5
	add r1, sl
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _08009F42
	ldr r0, _08009F9C @ =0x000011C8
	add r0, sl
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, r6
	bne _08009F42
	movs r3, #0xa1
	lsls r3, r3, #3
	adds r0, r7, r3
	ldr r3, [r0]
	str r5, [sp]
	str r5, [sp, #4]
	ldr r0, _08009FA0 @ =_080C8FBC
	ldr r1, _08009FA4 @ =_080D95F4
	adds r2, r3, #0
	bl oam_renderCellData
_08009F42:
	adds r4, #1
	cmp r4, #1
	ble _08009F10
	ldr r0, _08009FA8 @ =_080C8FC4
	ldr r1, _08009F98 @ =_080D95F0
	movs r3, #0xa1
	lsls r3, r3, #3
	adds r2, r7, r3
	ldr r3, [r2]
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	adds r2, r3, #0
	bl oam_renderCellData
_08009F60:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009F70: .4byte 0x0000050C
_08009F74: .4byte _080C8F68
_08009F78: .4byte _080D95E8
_08009F7C: .4byte _080C8F7C
_08009F80: .4byte _080D95EC
_08009F84: .4byte 0x000011E4
_08009F88: .4byte _080B2230
_08009F8C: .4byte _080B2250
_08009F90: .4byte 0x00001130
_08009F94: .4byte _080C8FB4
_08009F98: .4byte _080D95F0
_08009F9C: .4byte 0x000011C8
_08009FA0: .4byte _080C8FBC
_08009FA4: .4byte _080D95F4
_08009FA8: .4byte _080C8FC4

	thumb_func_start sub_8009FAC
sub_8009FAC: @ 0x08009FAC
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	movs r0, #0xe7
	lsls r0, r0, #3
	adds r5, r6, r0
	ldr r1, _08009FD0 @ =0x00000804
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #5
	bls _08009FC4
	b _0800A102
_08009FC4:
	lsls r0, r0, #2
	ldr r1, _08009FD4 @ =_08009FD8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08009FD0: .4byte 0x00000804
_08009FD4: .4byte _08009FD8
_08009FD8: @ jump table
	.4byte _08009FF0 @ case 0
	.4byte _0800A03E @ case 1
	.4byte _0800A086 @ case 2
	.4byte _0800A090 @ case 3
	.4byte _0800A0A0 @ case 4
	.4byte _0800A0FA @ case 5
_08009FF0:
	ldr r0, [r6, #0x10]
	cmp r0, #1
	beq _08009FFC
	ldr r0, [r6, #0x14]
	lsls r1, r0, #2
	b _08009FFE
_08009FFC:
	movs r1, #8
_08009FFE:
	ldr r2, _0800A024 @ =0x0000111C
	adds r0, r6, r2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0800A028
	ldr r0, [r5]
	cmp r0, #4
	bne _0800A028
	adds r0, r5, #0
	adds r0, #0xc8
	movs r1, #0
	str r1, [r0]
	adds r0, #8
	str r1, [r0]
	adds r1, r5, #0
	adds r1, #0xcc
	movs r0, #5
	b _0800A100
	.align 2, 0
_0800A024: .4byte 0x0000111C
_0800A028:
	adds r0, r5, #0
	adds r0, #0xc8
	movs r1, #0
	str r1, [r0]
	adds r0, #8
	str r1, [r0]
	adds r1, r5, #0
	adds r1, #0xcc
	ldr r0, [r1]
	adds r0, #1
	b _0800A100
_0800A03E:
	adds r1, r5, #0
	adds r1, #0xd0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x10
	bgt _0800A078
	ldr r1, _0800A074 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800A058
	adds r0, #0x3f
_0800A058:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r4, r5, #0
	adds r4, #0xc8
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #5
	adds r1, r1, r0
	asrs r1, r1, #0xf
	adds r1, #1
	b _0800A0D6
	.align 2, 0
_0800A074: .4byte gSinTable
_0800A078:
	movs r0, #0
	str r0, [r1]
	adds r1, r5, #0
	adds r1, #0xcc
	ldr r0, [r1]
	adds r0, #1
	b _0800A100
_0800A086:
	adds r1, r5, #0
	adds r1, #0xc8
	movs r0, #0x80
	lsls r0, r0, #1
	b _0800A100
_0800A090:
	adds r1, r5, #0
	adds r1, #0xd0
	movs r0, #0
	str r0, [r1]
	subs r1, #4
	ldr r0, [r1]
	adds r0, #1
	b _0800A100
_0800A0A0:
	adds r2, r5, #0
	adds r2, #0xd0
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	cmp r0, #0x10
	bgt _0800A0E8
	ldr r1, _0800A0E4 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800A0BA
	adds r0, #0x3f
_0800A0BA:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r4, r5, #0
	adds r4, #0xc8
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #5
	adds r1, r1, r0
	rsbs r1, r1, #0
	asrs r1, r1, #0xf
	adds r1, #0x64
_0800A0D6:
	movs r0, #0xc8
	lsls r0, r0, #7
	bl __divsi3
	str r0, [r4]
	b _0800A102
	.align 2, 0
_0800A0E4: .4byte gSinTable
_0800A0E8:
	adds r1, r5, #0
	adds r1, #0xc8
	movs r0, #0
	str r0, [r1]
	str r0, [r2]
	adds r1, #4
	ldr r0, [r1]
	adds r0, #1
	b _0800A100
_0800A0FA:
	adds r1, r5, #0
	adds r1, #0xc8
	movs r0, #0
_0800A100:
	str r0, [r1]
_0800A102:
	ldr r0, [r6, #0x10]
	cmp r0, #3
	beq _0800A178
	adds r4, r5, #0
	adds r4, #0xc8
	ldr r0, [r4]
	cmp r0, #0
	beq _0800A140
	ldr r1, _0800A164 @ =_080D9628
	ldr r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0800A168 @ =0x02015C00
	bl LZ77UnCompWram
	movs r0, #0xa7
	lsls r0, r0, #3
	adds r1, r5, r0
	movs r0, #1
	str r0, [r1]
	ldr r0, _0800A16C @ =_080C8D9C
	adds r1, r5, #0
	adds r1, #0xc4
	ldr r3, [r4]
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	adds r2, r3, #0
	bl oam_renderCellData
_0800A140:
	ldr r1, _0800A170 @ =0x000011E4
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0800A192
	ldr r3, [r4]
	cmp r3, #0
	beq _0800A192
	ldr r0, _0800A174 @ =_080C8FD4
	adds r1, r5, #0
	adds r1, #0xc4
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	adds r2, r3, #0
	bl oam_renderCellData
	b _0800A192
	.align 2, 0
_0800A164: .4byte _080D9628
_0800A168: .4byte 0x02015C00
_0800A16C: .4byte _080C8D9C
_0800A170: .4byte 0x000011E4
_0800A174: .4byte _080C8FD4
_0800A178:
	adds r0, r5, #0
	adds r0, #0xc8
	ldr r3, [r0]
	cmp r3, #0
	beq _0800A192
	ldr r0, _0800A19C @ =_080C8F90
	ldr r1, _0800A1A0 @ =_080D95F8
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	adds r2, r3, #0
	bl oam_renderCellData
_0800A192:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A19C: .4byte _080C8F90
_0800A1A0: .4byte _080D95F8

	thumb_func_start sub_800A1A4
sub_800A1A4: @ 0x0800A1A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sl, r0
	movs r7, #0xe7
	lsls r7, r7, #3
	add r7, sl
	movs r0, #0
	mov r8, r0
	b _0800A55A
_0800A1BE:
	mov r1, r8
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r6, r7, r0
	movs r2, #0
	mov sb, r2
	movs r0, #0xe
	ldrsb r0, [r6, r0]
	cmp r0, #9
	bls _0800A1D8
	b _0800A46C
_0800A1D8:
	lsls r0, r0, #2
	ldr r1, _0800A1E4 @ =_0800A1E8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800A1E4: .4byte _0800A1E8
_0800A1E8: @ jump table
	.4byte _0800A46C @ case 0
	.4byte _0800A210 @ case 1
	.4byte _0800A26C @ case 2
	.4byte _0800A2F0 @ case 3
	.4byte _0800A46C @ case 4
	.4byte _0800A338 @ case 5
	.4byte _0800A344 @ case 6
	.4byte _0800A3BC @ case 7
	.4byte _0800A3D0 @ case 8
	.4byte _0800A440 @ case 9
_0800A210:
	ldr r0, [r7]
	cmp r8, r0
	beq _0800A21C
	movs r0, #0x88
	lsls r0, r0, #1
	b _0800A25E
_0800A21C:
	ldr r0, [r7, #0x18]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	str r0, [r7, #0x18]
	ldr r2, _0800A264 @ =gSinTable
	lsls r0, r0, #0x1b
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800A232
	adds r0, #0x3f
_0800A232:
	asrs r1, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	ldr r1, _0800A268 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	subs r1, r1, r0
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #4
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r3, #0xb9
	lsls r3, r3, #1
	adds r0, r0, r3
_0800A25E:
	strh r0, [r6, #0xa]
	strh r0, [r6, #8]
	b _0800A46C
	.align 2, 0
_0800A264: .4byte gSinTable
_0800A268: .4byte 0x000003FF
_0800A26C:
	mov r1, sl
	ldr r0, [r1, #0x10]
	cmp r0, #3
	beq _0800A2D0
	mov r2, r8
	lsls r4, r2, #0x10
	ldr r1, [r7, #0x14]
	adds r0, r4, #0
	bl __divsi3
	ldr r2, _0800A2C8 @ =gSinTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800A28C
	adds r0, #0x3f
_0800A28C:
	asrs r1, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	ldr r5, _0800A2CC @ =0x000003FF
	ands r0, r5
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	lsrs r0, r0, #0xc
	strh r0, [r6, #0x12]
	ldr r1, [r7, #0x14]
	adds r0, r4, #0
	str r2, [sp, #0x14]
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x14]
	cmp r0, #0
	bge _0800A2B8
	adds r0, #0x3f
_0800A2B8:
	asrs r0, r0, #6
	ands r0, r5
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	lsrs r0, r0, #0xc
	b _0800A2D6
	.align 2, 0
_0800A2C8: .4byte gSinTable
_0800A2CC: .4byte 0x000003FF
_0800A2D0:
	movs r0, #0
	strh r0, [r6, #0x12]
	ldr r0, _0800A2EC @ =0x0000FFF8
_0800A2D6:
	strh r0, [r6, #0x14]
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0xa]
	strh r0, [r6, #8]
	strh r1, [r6, #0x10]
	ldrb r0, [r6, #0xe]
	adds r0, #1
	b _0800A46A
	.align 2, 0
_0800A2EC: .4byte 0x0000FFF8
_0800A2F0:
	ldrh r0, [r6, #0x10]
	adds r0, #1
	strh r0, [r6, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x64
	bgt _0800A332
	movs r3, #0xc
	ldrsh r1, [r6, r3]
	movs r0, #1
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	beq _0800A318
	ldr r3, _0800A314 @ =0xFFFFF000
	adds r0, r1, r3
	b _0800A31E
	.align 2, 0
_0800A314: .4byte 0xFFFFF000
_0800A318:
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r1, r2
_0800A31E:
	strh r0, [r6, #0xc]
	ldrh r0, [r6, #0x12]
	ldrh r3, [r6, #4]
	adds r0, r0, r3
	strh r0, [r6, #4]
	ldrh r0, [r6, #0x14]
	ldrh r1, [r6, #6]
	adds r0, r0, r1
	strh r0, [r6, #6]
	b _0800A46C
_0800A332:
	ldrb r0, [r6, #0xe]
	adds r0, #1
	b _0800A46A
_0800A338:
	mov r2, r8
	lsls r0, r2, #2
	strh r0, [r6, #0x10]
	ldrb r0, [r6, #0xe]
	adds r0, #1
	b _0800A46A
_0800A344:
	ldr r0, [r7]
	cmp r8, r0
	beq _0800A350
	movs r0, #0x88
	lsls r0, r0, #1
	b _0800A392
_0800A350:
	ldr r0, [r7, #0x18]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	str r0, [r7, #0x18]
	ldr r2, _0800A3A8 @ =gSinTable
	lsls r0, r0, #0x1b
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800A366
	adds r0, #0x3f
_0800A366:
	asrs r1, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	ldr r1, _0800A3AC @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	subs r1, r1, r0
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #4
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #0x10
	movs r3, #0xb9
	lsls r3, r3, #1
	adds r0, r0, r3
_0800A392:
	strh r0, [r6, #0xa]
	strh r0, [r6, #8]
	ldrh r1, [r6, #0x10]
	movs r2, #0x10
	ldrsh r0, [r6, r2]
	cmp r0, #0
	ble _0800A3B0
	subs r0, r1, #1
	strh r0, [r6, #0x10]
	b _0800A46C
	.align 2, 0
_0800A3A8: .4byte gSinTable
_0800A3AC: .4byte 0x000003FF
_0800A3B0:
	ldrb r0, [r6, #0xe]
	adds r0, #1
	movs r1, #0
	strb r0, [r6, #0xe]
	strh r1, [r6, #0x10]
	b _0800A46C
_0800A3BC:
	ldrh r0, [r6, #0x10]
	adds r0, #1
	strh r0, [r6, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _0800A44E
	ldrb r0, [r6, #0xe]
	adds r0, #1
	b _0800A46A
_0800A3D0:
	movs r1, #0x40
	mov sb, r1
	ldr r0, _0800A400 @ =0x000011E4
	add r0, sl
	ldr r0, [r0]
	cmp r0, #0
	bne _0800A408
	mov r2, r8
	lsls r4, r2, #5
	ldr r5, _0800A404 @ =_080B75C0
	adds r5, r4, r5
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r4, r4, r3
	adds r1, r1, r4
	adds r0, r5, #0
	movs r2, #8
	bl CpuFastSet
	b _0800A428
	.align 2, 0
_0800A400: .4byte 0x000011E4
_0800A404: .4byte _080B75C0
_0800A408:
	mov r0, r8
	lsls r4, r0, #5
	ldr r5, _0800A43C @ =_080BB5A0
	adds r5, r4, r5
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r4, r4, r2
	adds r1, r1, r4
	adds r0, r5, #0
	movs r2, #8
	bl CpuFastSet
_0800A428:
	mov r0, sl
	mov r1, r8
	bl sub_800860C
	movs r0, #1
	bl pltt_setDirtyFlag
	ldrb r0, [r6, #0xe]
	adds r0, #1
	b _0800A46A
	.align 2, 0
_0800A43C: .4byte _080BB5A0
_0800A440:
	ldrh r0, [r6, #0x10]
	adds r0, #1
	strh r0, [r6, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	bgt _0800A468
_0800A44E:
	movs r3, #0x10
	ldrsh r2, [r6, r3]
	movs r0, #0xc
	str r0, [sp]
	movs r0, #0
	movs r1, #0x80
	movs r3, #0x10
	bl sub_800E930
	mov sb, r0
	lsls r0, r0, #8
	mov sb, r0
	b _0800A46C
_0800A468:
	movs r0, #1
_0800A46A:
	strb r0, [r6, #0xe]
_0800A46C:
	mov r1, sb
	cmp r1, #0
	beq _0800A556
	ldr r0, _0800A4AC @ =0x0000FFFF
	ands r0, r1
	asrs r0, r0, #8
	cmp r0, #0x3f
	bgt _0800A4B8
	ldr r3, _0800A4B0 @ =gSinTable
	lsls r0, r0, #0x18
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800A488
	adds r0, #0x3f
_0800A488:
	asrs r0, r0, #6
	movs r2, #0x80
	lsls r2, r2, #1
	subs r0, r2, r0
	ldr r1, _0800A4B4 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	subs r1, r1, r0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0xf
	adds r0, r0, r2
	b _0800A554
	.align 2, 0
_0800A4AC: .4byte 0x0000FFFF
_0800A4B0: .4byte gSinTable
_0800A4B4: .4byte 0x000003FF
_0800A4B8:
	cmp r0, #0x7f
	bgt _0800A4EC
	subs r0, #0x40
	ldr r1, _0800A4E8 @ =gSinTable
	lsls r0, r0, #0x18
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800A4CA
	adds r0, #0x3f
_0800A4CA:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
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
	b _0800A554
	.align 2, 0
_0800A4E8: .4byte gSinTable
_0800A4EC:
	cmp r0, #0xbf
	bgt _0800A52C
	subs r0, #0x80
	ldr r3, _0800A524 @ =gSinTable
	lsls r0, r0, #0x18
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800A4FE
	adds r0, #0x3f
_0800A4FE:
	asrs r0, r0, #6
	movs r2, #0x80
	lsls r2, r2, #1
	subs r0, r2, r0
	ldr r1, _0800A528 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	subs r1, r1, r0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0xf
	adds r0, r0, r2
	b _0800A554
	.align 2, 0
_0800A524: .4byte gSinTable
_0800A528: .4byte 0x000003FF
_0800A52C:
	subs r0, #0xc0
	ldr r1, _0800A674 @ =gSinTable
	lsls r0, r0, #0x18
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800A53A
	adds r0, #0x3f
_0800A53A:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #8
	rsbs r0, r0, #0
	asrs r0, r0, #0xf
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
_0800A554:
	strh r0, [r6, #8]
_0800A556:
	movs r6, #1
	add r8, r6
_0800A55A:
	ldr r0, [r7, #0x14]
	cmp r8, r0
	bge _0800A562
	b _0800A1BE
_0800A562:
	ldr r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x1c
	adds r4, r7, r0
	ldr r5, [r4]
	cmp r5, #0
	beq _0800A5C8
	movs r1, #8
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0800A5C8
	movs r2, #0xa
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0800A5C8
	ldrh r0, [r4, #6]
	lsls r0, r0, #0x10
	ldrh r1, [r4, #4]
	orrs r1, r0
	str r1, [sp, #8]
	add r0, sp, #8
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r0, #0x18
	rsbs r0, r0, #0
	cmp r2, r0
	blt _0800A5C8
	asrs r1, r1, #0x10
	cmp r1, r0
	blt _0800A5C8
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	bgt _0800A5C8
	cmp r1, #0xc0
	bgt _0800A5C8
	movs r6, #8
	ldrsh r2, [r4, r6]
	movs r0, #0xa
	ldrsh r3, [r4, r0]
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	add r1, sp, #8
	bl oam_renderCellData
_0800A5C8:
	movs r2, #0
	mov r8, r2
	ldr r0, [r7, #0x14]
	cmp r8, r0
	bge _0800A644
	ldr r3, _0800A678 @ =0xFFE80000
	mov sb, r3
	adds r4, r7, #0
	adds r4, #0x1c
_0800A5DA:
	ldr r0, [r7]
	cmp r8, r0
	beq _0800A638
	ldr r5, [r4]
	cmp r5, #0
	beq _0800A638
	movs r6, #8
	ldrsh r0, [r4, r6]
	cmp r0, #0
	beq _0800A638
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0800A638
	ldrh r0, [r4, #6]
	lsls r0, r0, #0x10
	ldrh r2, [r4, #4]
	orrs r2, r0
	str r2, [sp, #0xc]
	add r1, sp, #0xc
	movs r6, #0
	ldrsh r3, [r1, r6]
	mov r6, sb
	asrs r0, r6, #0x10
	cmp r3, r0
	blt _0800A638
	asrs r2, r2, #0x10
	cmp r2, r0
	blt _0800A638
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r3, r0
	bgt _0800A638
	cmp r2, #0xc0
	bgt _0800A638
	movs r0, #8
	ldrsh r2, [r4, r0]
	movs r6, #0xa
	ldrsh r3, [r4, r6]
	movs r6, #0xc
	ldrsh r0, [r4, r6]
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	bl oam_renderCellData
_0800A638:
	adds r4, #0x18
	movs r0, #1
	add r8, r0
	ldr r0, [r7, #0x14]
	cmp r8, r0
	blt _0800A5DA
_0800A644:
	bl sub_802DC88
	cmp r0, #0
	beq _0800A684
	bl sub_802DCB4
	cmp r0, #0
	beq _0800A684
	mov r1, sl
	ldr r0, [r1, #0x4c]
	movs r1, #0x2f
	ands r0, r1
	cmp r0, #0xf
	bgt _0800A6C2
	ldr r0, _0800A67C @ =_080C863C
	ldr r1, _0800A680 @ =_080D963C
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r3, #0
	bl oam_renderCellData
	b _0800A6C2
	.align 2, 0
_0800A674: .4byte gSinTable
_0800A678: .4byte 0xFFE80000
_0800A67C: .4byte _080C863C
_0800A680: .4byte _080D963C
_0800A684:
	adds r4, r7, #0
	adds r4, #0x94
	ldr r5, [r4]
	cmp r5, #0
	beq _0800A6C2
	movs r2, #8
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0800A6C2
	movs r3, #0xa
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _0800A6C2
	ldrh r1, [r4, #6]
	lsls r1, r1, #0x10
	ldrh r0, [r4, #4]
	orrs r0, r1
	str r0, [sp, #0x10]
	add r1, sp, #0x10
	movs r6, #8
	ldrsh r2, [r4, r6]
	movs r0, #0xa
	ldrsh r3, [r4, r0]
	movs r6, #0xc
	ldrsh r0, [r4, r6]
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	bl oam_renderCellData
_0800A6C2:
	ldr r0, _0800A6D8 @ =0x00000604
	adds r4, r7, r0
	ldr r2, [r4]
	cmp r2, #4
	bgt _0800A6DC
	cmp r2, #1
	bge _0800A700
	cmp r2, #0
	beq _0800A6E2
	b _0800A748
	.align 2, 0
_0800A6D8: .4byte 0x00000604
_0800A6DC:
	cmp r2, #5
	beq _0800A73C
	b _0800A748
_0800A6E2:
	movs r3, #0xc0
	lsls r3, r3, #3
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0
	beq _0800A748
	str r2, [r1]
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	movs r6, #0xc1
	lsls r6, r6, #3
	adds r0, r7, r6
	str r2, [r0]
	b _0800A748
_0800A700:
	ldr r1, _0800A734 @ =_080D9640
	subs r0, r2, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0800A738 @ =_080D9650
	movs r5, #0
	str r5, [sp]
	str r5, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	movs r0, #0xc1
	lsls r0, r0, #3
	adds r1, r7, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #4
	ble _0800A748
	str r5, [r1]
	ldr r0, [r4]
	adds r0, #1
	b _0800A746
	.align 2, 0
_0800A734: .4byte _080D9640
_0800A738: .4byte _080D9650
_0800A73C:
	ldr r1, _0800A758 @ =0x000005FC
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0800A748
_0800A746:
	str r0, [r4]
_0800A748:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A758: .4byte 0x000005FC

	thumb_func_start sub_800A75C
sub_800A75C: @ 0x0800A75C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r6, r1, #0
	movs r0, #0xe7
	lsls r0, r0, #3
	adds r4, r7, r0
	movs r0, #5
	str r0, [r4, #0x14]
	movs r5, #0
	mov r8, r5
	ldr r1, _0800A794 @ =_080D94FC
	ldr r3, _0800A798 @ =0x00000754
	adds r2, r7, r3
	movs r0, #0x88
	lsls r0, r0, #1
	mov ip, r0
_0800A786:
	ldr r0, [r1]
	str r0, [r2]
	cmp r6, #0
	bne _0800A79C
	ldrh r0, [r1, #0xc]
	adds r0, #0xf0
	b _0800A7A2
	.align 2, 0
_0800A794: .4byte _080D94FC
_0800A798: .4byte 0x00000754
_0800A79C:
	movs r3, #0x8f
	lsls r3, r3, #1
	adds r0, r3, #0
_0800A7A2:
	strh r0, [r2, #4]
	cmp r6, #0
	beq _0800A7B4
	ldr r0, [r7, #0x10]
	movs r3, #0x50
	cmp r0, #0
	beq _0800A7B6
	movs r3, #0x3c
	b _0800A7B6
_0800A7B4:
	ldrh r3, [r1, #0xe]
_0800A7B6:
	strh r3, [r2, #6]
	mov r0, ip
	strh r0, [r2, #0xa]
	strh r0, [r2, #8]
	mov r3, r8
	strh r3, [r2, #0xc]
	movs r0, #1
	strb r0, [r2, #0xe]
	strh r3, [r2, #0x10]
	adds r1, #0x14
	adds r2, #0x18
	adds r5, #1
	ldr r0, [r4, #0x14]
	cmp r5, r0
	blt _0800A786
	movs r5, #0
	adds r6, r4, #0
	adds r6, #0x94
	movs r1, #0x98
	adds r1, r1, r4
	mov r8, r1
	movs r2, #0x9a
	adds r2, r2, r4
	mov sb, r2
	adds r3, r4, #0
	adds r3, #0x9e
	str r3, [sp]
	movs r1, #0x9c
	adds r1, r1, r4
	mov sl, r1
	adds r2, r4, #0
	adds r2, #0xa0
	str r2, [sp, #4]
	adds r3, #4
	str r3, [sp, #8]
	cmp r5, r0
	bge _0800A810
_0800A800:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_800860C
	adds r5, #1
	ldr r0, [r4, #0x14]
	cmp r5, r0
	blt _0800A800
_0800A810:
	ldr r2, _0800A848 @ =_080D9574
	ldr r0, [r2]
	str r0, [r6]
	ldrh r0, [r2, #0xc]
	movs r3, #0
	movs r1, #0
	mov r4, r8
	strh r0, [r4]
	ldrh r0, [r2, #0xe]
	mov r2, sb
	strh r0, [r2]
	ldr r4, [sp]
	strh r1, [r4]
	mov r0, sl
	strh r1, [r0]
	ldr r2, [sp, #4]
	strh r1, [r2]
	ldr r4, [sp, #8]
	strb r3, [r4]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A848: .4byte _080D9574

	thumb_func_start sub_800A84C
sub_800A84C: @ 0x0800A84C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r1, #0xe7
	lsls r1, r1, #3
	adds r1, r1, r0
	mov ip, r1
	movs r1, #1
	mov r2, ip
	str r1, [r2, #0x14]
	movs r4, #0
	ldr r3, _0800A8E4 @ =_080D9574
	mov sb, r3
	ldr r1, _0800A8E8 @ =_080D9560
	movs r6, #0
	movs r5, #0x88
	lsls r5, r5, #1
	adds r3, r1, #0
	adds r3, #0xc
	ldr r7, _0800A8EC @ =0x00000754
	adds r2, r0, r7
	movs r0, #1
	mov r8, r0
_0800A87C:
	ldr r0, [r1]
	str r0, [r2]
	ldrh r0, [r3]
	adds r0, #0xf0
	strh r0, [r2, #4]
	ldrh r0, [r3, #2]
	strh r0, [r2, #6]
	strh r5, [r2, #0xa]
	strh r5, [r2, #8]
	strh r6, [r2, #0xc]
	mov r7, r8
	strb r7, [r2, #0xe]
	strh r6, [r2, #0x10]
	adds r3, #0x14
	adds r2, #0x18
	adds r1, #0x14
	adds r4, #1
	mov r7, ip
	ldr r0, [r7, #0x14]
	cmp r4, r0
	blt _0800A87C
	movs r2, #0
	mov r1, ip
	adds r1, #0x94
	mov r3, sb
	ldr r0, [r3]
	str r0, [r1]
	ldrh r1, [r3, #0xc]
	mov r0, ip
	adds r0, #0x98
	movs r3, #0
	strh r1, [r0]
	mov r7, sb
	ldrh r0, [r7, #0xe]
	mov r1, ip
	adds r1, #0x9a
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x9e
	strh r2, [r0]
	subs r0, #2
	strh r2, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #2
	strb r3, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A8E4: .4byte _080D9574
_0800A8E8: .4byte _080D9560
_0800A8EC: .4byte 0x00000754

	thumb_func_start spm_loadBgGfx
spm_loadBgGfx: @ 0x0800A8F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	mov sb, r1
	movs r0, #0xe7
	lsls r0, r0, #3
	adds r0, r0, r7
	mov sl, r0
	cmp r1, #0
	beq _0800A940
	movs r5, #0xc0
	lsls r5, r5, #0x13
	movs r4, #7
_0800A912:
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0800AA0C @ =0x0203EC04
	adds r2, r5, #0
	ldr r3, _0800AA10 @ =0x81000C00
	bl dmaq_enqueue
	bl main_frameProc
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r5, r5, r1
	subs r4, #1
	cmp r4, #0
	bge _0800A912
	mov r2, sb
	cmp r2, #0
	beq _0800A940
	adds r0, r7, #0
	bl sub_8002EA4
	bl main_frameProc
_0800A940:
	ldr r4, _0800AA14 @ =_0807CD48
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xe0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuFastSet
	ldr r4, _0800AA18 @ =_080AE03C
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xa0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuFastSet
	ldr r4, _0800AA1C @ =_080B23B0
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuFastSet
	subs r4, #0x20
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	ldr r4, _0800AA20 @ =_080AACF0
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuFastSet
	ldr r4, _0800AA24 @ =_080AF2C0
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuFastSet
	ldr r4, _0800AA28 @ =_080B06DC
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xe0
	adds r0, r4, #0
	bl LZ77UnCompWram
	ldr r4, _0800AA2C @ =_080B07E4
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r1, r1, r2
	adds r0, r4, #0
	bl LZ77UnCompWram
	ldr r0, [r7, #0x10]
	cmp r0, #3
	beq _0800AA58
	ldr r1, _0800AA30 @ =0x000011E4
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0800AA38
	ldr r4, _0800AA34 @ =_080B75C0
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	b _0800AA48
	.align 2, 0
_0800AA0C: .4byte 0x0203EC04
_0800AA10: .4byte 0x81000C00
_0800AA14: .4byte _0807CD48
_0800AA18: .4byte _080AE03C
_0800AA1C: .4byte _080B23B0
_0800AA20: .4byte _080AACF0
_0800AA24: .4byte _080AF2C0
_0800AA28: .4byte _080B06DC
_0800AA2C: .4byte _080B07E4
_0800AA30: .4byte 0x000011E4
_0800AA34: .4byte _080B75C0
_0800AA38:
	ldr r4, _0800AA54 @ =_080BB5A0
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
_0800AA48:
	adds r0, r4, #0
	movs r2, #0x28
	bl CpuFastSet
	b _0800AA70
	.align 2, 0
_0800AA54: .4byte _080BB5A0
_0800AA58:
	ldr r4, _0800AB58 @ =_080B164C
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
_0800AA70:
	ldr r1, _0800AB5C @ =_080D94A0
	mov r2, sl
	ldr r0, [r2]
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
	movs r2, #5
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
	adds r0, r7, #0
	bl spm_loadOtherGfx
	bl main_frameProc
	mov r1, sb
	cmp r1, #0
	beq _0800AB3A
	ldr r0, _0800AB60 @ =_0807D1E8
	ldr r4, _0800AB64 @ =0x02008400
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800AB68 @ =0x06008000
	ldr r3, _0800AB6C @ =0x80000600
	adds r1, r4, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _0800AB70 @ =_080AE180
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r4, r2
	bl LZ77UnCompWram
	bl main_frameProc
	ldr r0, _0800AB74 @ =_080AE7C8
	movs r1, #0xc0
	lsls r1, r1, #7
	adds r4, r4, r1
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl main_frameProc
	movs r5, #0
	ldr r6, _0800AB78 @ =0x0600C000
_0800AAEA:
	lsls r4, r5, #0xd
	ldr r0, _0800AB7C @ =0x0200C400
	adds r4, r4, r0
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	adds r2, r6, #0
	ldr r3, _0800AB80 @ =0x80001000
	bl dmaq_enqueue
	bl main_frameProc
	movs r2, #0x80
	lsls r2, r2, #6
	adds r6, r6, r2
	adds r5, #1
	cmp r5, #1
	ble _0800AAEA
	ldr r0, _0800AB84 @ =_080AF320
	ldr r4, _0800AB88 @ =0x02010400
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl main_frameProc
	ldr r0, _0800AB8C @ =_080C2FA8
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r4, r2
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800AB90 @ =0x06010000
	ldr r3, _0800AB94 @ =0x80001200
	adds r1, r4, #0
	bl dmaq_enqueue
	bl main_frameProc
_0800AB3A:
	ldr r0, [r7, #0x10]
	cmp r0, #3
	beq _0800ABA8
	ldr r0, _0800AB98 @ =_080B7720
	ldr r4, _0800AB9C @ =0x02014000
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _0800ABA0 @ =_080B9950
	ldr r1, _0800ABA4 @ =0xFFFFFC00
	adds r4, r4, r1
	adds r1, r4, #0
	bl LZ77UnCompWram
	b _0800ABC0
	.align 2, 0
_0800AB58: .4byte _080B164C
_0800AB5C: .4byte _080D94A0
_0800AB60: .4byte _0807D1E8
_0800AB64: .4byte 0x02008400
_0800AB68: .4byte 0x06008000
_0800AB6C: .4byte 0x80000600
_0800AB70: .4byte _080AE180
_0800AB74: .4byte _080AE7C8
_0800AB78: .4byte 0x0600C000
_0800AB7C: .4byte 0x0200C400
_0800AB80: .4byte 0x80001000
_0800AB84: .4byte _080AF320
_0800AB88: .4byte 0x02010400
_0800AB8C: .4byte _080C2FA8
_0800AB90: .4byte 0x06010000
_0800AB94: .4byte 0x80001200
_0800AB98: .4byte _080B7720
_0800AB9C: .4byte 0x02014000
_0800ABA0: .4byte _080B9950
_0800ABA4: .4byte 0xFFFFFC00
_0800ABA8:
	ldr r0, _0800AC04 @ =_080B99EC
	ldr r4, _0800AC08 @ =0x02013C00
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _0800AC0C @ =_080B166C
	movs r2, #0x80
	lsls r2, r2, #3
	adds r4, r4, r2
	adds r1, r4, #0
	bl LZ77UnCompWram
_0800ABC0:
	ldr r0, _0800AC10 @ =_080B3014
	ldr r4, _0800AC14 @ =0x02017400
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _0800AC18 @ =_080B2470
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r5, r4, r1
	adds r1, r5, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r4, r2
	ldr r2, _0800AC1C @ =0x06017400
	ldr r3, _0800AC20 @ =0x80000400
	bl dmaq_enqueue
	ldr r1, _0800AC24 @ =0x000011E4
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0800AC30
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800AC28 @ =0x06010A00
	ldr r3, _0800AC2C @ =0x80000100
	adds r1, r5, #0
	bl dmaq_enqueue
	b _0800AC42
	.align 2, 0
_0800AC04: .4byte _080B99EC
_0800AC08: .4byte 0x02013C00
_0800AC0C: .4byte _080B166C
_0800AC10: .4byte _080B3014
_0800AC14: .4byte 0x02017400
_0800AC18: .4byte _080B2470
_0800AC1C: .4byte 0x06017400
_0800AC20: .4byte 0x80000400
_0800AC24: .4byte 0x000011E4
_0800AC28: .4byte 0x06010A00
_0800AC2C: .4byte 0x80000100
_0800AC30:
	bl dmaq_getVBlankDmaQueue
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r4, r2
	ldr r2, _0800AD40 @ =0x06010A00
	ldr r3, _0800AD44 @ =0x80000100
	bl dmaq_enqueue
_0800AC42:
	adds r0, r7, #0
	bl spm_loadOtherGfx
	bl main_frameProc
	ldr r0, _0800AD48 @ =_080B0848
	ldr r5, _0800AD4C @ =0x02016000
	adds r1, r5, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800AD50 @ =0xFFFFDC00
	adds r1, r5, r2
	ldr r2, _0800AD54 @ =0x06013800
	ldr r3, _0800AD58 @ =0x80001600
	bl dmaq_enqueue
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _0800AC9C
	ldr r0, _0800AD5C @ =_080B0B40
	movs r4, #0x84
	lsls r4, r4, #1
	add r4, sl
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _0800AD60 @ =_080B0EB0
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _0800AD64 @ =_080B0E28
	ldr r1, _0800AD68 @ =0xFFFFF000
	adds r4, r5, r1
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800AD6C @ =0x06014C00
	ldr r3, _0800AD70 @ =0x80000080
	adds r1, r4, #0
	bl dmaq_enqueue
_0800AC9C:
	adds r0, r7, #0
	bl spm_loadOtherGfx
	bl main_frameProc
	ldr r0, _0800AD74 @ =_080B9890
	movs r2, #0x80
	lsls r2, r2, #4
	adds r4, r5, r2
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800AD78 @ =0x06016400
	ldr r3, _0800AD44 @ =0x80000100
	adds r1, r4, #0
	bl dmaq_enqueue
	ldr r0, _0800AD7C @ =_080B0B00
	movs r1, #0xda
	lsls r1, r1, #5
	adds r4, r5, r1
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800AD80 @ =0x06017740
	ldr r3, _0800AD84 @ =0x80000030
	adds r1, r4, #0
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0800AD88 @ =_08063834
	ldr r2, _0800AD8C @ =0x06006800
	ldr r3, _0800AD90 @ =0x80000200
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0800AD94 @ =_080ABEFC
	ldr r2, _0800AD98 @ =0x06006C00
	ldr r3, _0800AD9C @ =0x80000400
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0800ADA0 @ =_080ACAFC
	ldr r2, _0800ADA4 @ =0x06007400
	ldr r3, _0800ADA8 @ =0x80000600
	bl dmaq_enqueue
	adds r0, r7, #0
	bl spm_loadOtherGfx
	bl main_frameProc
	ldr r0, [r7, #0x10]
	cmp r0, #3
	beq _0800ADB0
	movs r4, #0
	ldr r2, _0800ADAC @ =0x000011F4
	adds r5, r7, r2
_0800AD1E:
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_800873C
	adds r0, r7, #0
	bl spm_loadOtherGfx
	bl main_frameProc
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	adds r4, #1
	cmp r4, #4
	ble _0800AD1E
	b _0800ADD8
	.align 2, 0
_0800AD40: .4byte 0x06010A00
_0800AD44: .4byte 0x80000100
_0800AD48: .4byte _080B0848
_0800AD4C: .4byte 0x02016000
_0800AD50: .4byte 0xFFFFDC00
_0800AD54: .4byte 0x06013800
_0800AD58: .4byte 0x80001600
_0800AD5C: .4byte _080B0B40
_0800AD60: .4byte _080B0EB0
_0800AD64: .4byte _080B0E28
_0800AD68: .4byte 0xFFFFF000
_0800AD6C: .4byte 0x06014C00
_0800AD70: .4byte 0x80000080
_0800AD74: .4byte _080B9890
_0800AD78: .4byte 0x06016400
_0800AD7C: .4byte _080B0B00
_0800AD80: .4byte 0x06017740
_0800AD84: .4byte 0x80000030
_0800AD88: .4byte _08063834
_0800AD8C: .4byte 0x06006800
_0800AD90: .4byte 0x80000200
_0800AD94: .4byte _080ABEFC
_0800AD98: .4byte 0x06006C00
_0800AD9C: .4byte 0x80000400
_0800ADA0: .4byte _080ACAFC
_0800ADA4: .4byte 0x06007400
_0800ADA8: .4byte 0x80000600
_0800ADAC: .4byte 0x000011F4
_0800ADB0:
	ldr r0, _0800AE7C @ =gTrackDefTable
	mov r8, r0
	movs r5, #0
	ldr r6, _0800AE80 @ =_080D9490
	movs r4, #3
_0800ADBA:
	ldm r6!, {r0}
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	ldr r1, _0800AE84 @ =0x02025400
	adds r1, r5, r1
	bl LZ77UnCompWram
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r5, r5, r1
	subs r4, #1
	cmp r4, #0
	bge _0800ADBA
_0800ADD8:
	adds r0, r7, #0
	bl spm_loadOtherGfx
	bl main_frameProc
	mov r2, sb
	cmp r2, #0
	beq _0800AE1C
	ldr r4, _0800AE88 @ =_080AEE04
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _0800AE8C @ =0x06002000
	ldr r3, _0800AE90 @ =0x80000400
	adds r0, r4, #0
	bl dmaq_enqueue
	bl main_frameProc
_0800AE1C:
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _0800AE94 @ =0x01000140
	mov r0, sp
	bl CpuFastSet
	bl dmaq_getVBlankDmaQueue
	adds r4, r0, #0
	ldr r5, _0800AE98 @ =_080B1198
	movs r0, #0
	movs r1, #0xf
	movs r2, #0xa
	bl map_getBufferPtr2d
	adds r2, r0, #0
	ldr r3, _0800AE9C @ =0x80000100
	adds r0, r4, #0
	adds r1, r5, #0
	bl dmaq_enqueue
	adds r0, r7, #0
	bl sub_8008850
	mov r0, sl
	ldr r1, [r0]
	adds r0, r7, #0
	bl spm_loadCupGfx
	ldr r1, _0800AEA0 @ =0x000011E4
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0800AE70
	ldr r0, [r7, #0x10]
	cmp r0, #3
	bne _0800AEAC
_0800AE70:
	ldr r2, _0800AEA4 @ =0x000011FE
	adds r0, r7, r2
	ldrh r1, [r0]
	ldr r1, _0800AEA8 @ =0x00004684
	b _0800AEB4
	.align 2, 0
_0800AE7C: .4byte gTrackDefTable
_0800AE80: .4byte _080D9490
_0800AE84: .4byte 0x02025400
_0800AE88: .4byte _080AEE04
_0800AE8C: .4byte 0x06002000
_0800AE90: .4byte 0x80000400
_0800AE94: .4byte 0x01000140
_0800AE98: .4byte _080B1198
_0800AE9C: .4byte 0x80000100
_0800AEA0: .4byte 0x000011E4
_0800AEA4: .4byte 0x000011FE
_0800AEA8: .4byte 0x00004684
_0800AEAC:
	ldr r1, _0800AF0C @ =0x000011FE
	adds r0, r7, r1
	ldrh r1, [r0]
	ldr r1, _0800AF10 @ =0x00004604
_0800AEB4:
	strh r1, [r0]
	ldr r2, _0800AF14 @ =0x00001204
	adds r1, r7, r2
	ldrh r0, [r1]
	ldr r0, _0800AF18 @ =0x0000020B
	strh r0, [r1]
	ldr r0, _0800AF1C @ =0x0000120A
	adds r1, r7, r0
	ldrh r0, [r1]
	ldr r0, _0800AF20 @ =0x0000448E
	strh r0, [r1]
	subs r2, #8
	adds r1, r7, r2
	ldrh r0, [r1]
	ldr r0, _0800AF24 @ =0x00001741
	strh r0, [r1]
	mov r0, sb
	cmp r0, #0
	beq _0800AF30
	adds r2, #0x1a
	adds r1, r7, r2
	ldrh r0, [r1]
	movs r0, #0xff
	strh r0, [r1]
	ldr r0, _0800AF28 @ =0x0000121A
	adds r1, r7, r0
	ldrh r0, [r1]
	movs r0, #0x10
	strh r0, [r1]
	subs r2, #0x2e
	adds r1, r7, r2
	movs r0, #0xb4
	lsls r0, r0, #1
	str r0, [r1]
	ldr r0, _0800AF2C @ =0x000011EC
	adds r1, r7, r0
	movs r0, #0x50
	str r0, [r1]
	adds r2, #8
	adds r1, r7, r2
	movs r0, #0
	str r0, [r1]
	b _0800AF4C
	.align 2, 0
_0800AF0C: .4byte 0x000011FE
_0800AF10: .4byte 0x00004604
_0800AF14: .4byte 0x00001204
_0800AF18: .4byte 0x0000020B
_0800AF1C: .4byte 0x0000120A
_0800AF20: .4byte 0x0000448E
_0800AF24: .4byte 0x00001741
_0800AF28: .4byte 0x0000121A
_0800AF2C: .4byte 0x000011EC
_0800AF30:
	ldr r0, [r7, #0x50]
	cmp r0, #0
	bne _0800AF4C
	ldr r0, _0800AF7C @ =0x00001216
	adds r1, r7, r0
	ldrh r0, [r1]
	movs r0, #0xbd
	lsls r0, r0, #6
	strh r0, [r1]
	ldr r2, _0800AF80 @ =0x00001218
	adds r1, r7, r2
	ldrh r0, [r1]
	ldr r0, _0800AF84 @ =0x00000A06
	strh r0, [r1]
_0800AF4C:
	ldr r0, _0800AF88 @ =0x000011F8
	adds r1, r7, r0
	movs r0, #1
	str r0, [r1]
	movs r2, #0x90
	lsls r2, r2, #5
	adds r1, r7, r2
	ldrh r0, [r1]
	movs r2, #0
	ldr r0, _0800AF8C @ =0x0000FF60
	strh r0, [r1]
	ldr r1, _0800AF90 @ =0x00001202
	adds r0, r7, r1
	ldrh r1, [r0]
	strh r2, [r0]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AF7C: .4byte 0x00001216
_0800AF80: .4byte 0x00001218
_0800AF84: .4byte 0x00000A06
_0800AF88: .4byte 0x000011F8
_0800AF8C: .4byte 0x0000FF60
_0800AF90: .4byte 0x00001202

	thumb_func_start sub_800AF94
sub_800AF94: @ 0x0800AF94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	mov r8, r0
	str r1, [sp, #0x18]
	movs r7, #0xe7
	lsls r7, r7, #3
	add r7, r8
	movs r0, #0
	str r0, [sp, #0x1c]
	movs r1, #0
	str r1, [sp, #0x20]
	movs r2, #0
	str r2, [sp, #0x24]
	str r1, [r7]
	str r1, [r7, #4]
	subs r0, #1
	str r0, [r7, #8]
	str r1, [r7, #0xc]
	movs r0, #1
	str r0, [r7, #0x10]
	str r1, [r7, #0x14]
	str r1, [r7, #0x18]
	ldr r0, _0800B028 @ =0x000007E4
	add r0, r8
	str r1, [r0]
	movs r0, #0xfd
	lsls r0, r0, #3
	add r0, r8
	str r1, [r0]
	ldr r0, _0800B02C @ =0x000007EC
	add r0, r8
	str r1, [r0]
	movs r2, #0xfe
	lsls r2, r2, #3
	add r2, r8
	movs r0, #0xa0
	strh r0, [r2]
	ldr r0, _0800B030 @ =0x000007F2
	add r0, r8
	strh r1, [r0]
	ldr r0, _0800B034 @ =0x000007F4
	add r0, r8
	str r1, [r0]
	movs r0, #0xff
	lsls r0, r0, #3
	add r0, r8
	str r1, [r0]
	movs r1, #0x60
	ldr r3, [sp, #0x18]
	cmp r3, #0
	beq _0800B004
	movs r1, #0x5e
_0800B004:
	ldr r0, _0800B038 @ =0x000007FC
	add r0, r8
	strh r1, [r0]
	ldr r4, [sp, #0x18]
	cmp r4, #0
	beq _0800B054
	mov r6, r8
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _0800B040
	ldr r0, _0800B03C @ =0x000011E4
	add r0, r8
	ldr r0, [r0]
	movs r2, #0x41
	cmp r0, #0
	bne _0800B056
	movs r2, #0x3c
	b _0800B056
	.align 2, 0
_0800B028: .4byte 0x000007E4
_0800B02C: .4byte 0x000007EC
_0800B030: .4byte 0x000007F2
_0800B034: .4byte 0x000007F4
_0800B038: .4byte 0x000007FC
_0800B03C: .4byte 0x000011E4
_0800B040:
	ldr r0, _0800B050 @ =0x000011E4
	add r0, r8
	ldr r0, [r0]
	movs r2, #0x55
	cmp r0, #0
	bne _0800B056
	movs r2, #0x50
	b _0800B056
	.align 2, 0
_0800B050: .4byte 0x000011E4
_0800B054:
	movs r2, #0x30
_0800B056:
	adds r3, r7, #0
	adds r3, #0xc6
	movs r1, #0
	strh r2, [r3]
	adds r0, r7, #0
	adds r0, #0xc8
	str r1, [r0]
	adds r2, r7, #0
	adds r2, #0xcc
	str r1, [r2]
	adds r0, #8
	str r1, [r0]
	movs r1, #0x70
	str r3, [sp, #0x48]
	str r2, [sp, #0x4c]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _0800B07C
	movs r1, #0x40
_0800B07C:
	adds r0, r7, #0
	adds r0, #0xd4
	strh r1, [r0]
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _0800B0A0
	ldr r0, _0800B09C @ =0x000011E4
	add r0, r8
	ldr r0, [r0]
	movs r1, #0x6d
	cmp r0, #0
	bne _0800B0A2
	movs r1, #0x68
	b _0800B0A2
	.align 2, 0
_0800B09C: .4byte 0x000011E4
_0800B0A0:
	movs r1, #0x58
_0800B0A2:
	adds r3, r7, #0
	adds r3, #0xd6
	movs r2, #0
	strh r1, [r3]
	adds r0, r7, #0
	adds r0, #0xd8
	str r2, [r0]
	adds r1, r7, #0
	adds r1, #0xdc
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0xe0
	str r2, [r0]
	adds r0, #4
	str r2, [r0]
	adds r0, #4
	str r2, [r0]
	adds r1, #0x10
	movs r0, #5
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0xf0
	str r2, [r0]
	movs r2, #0x64
	str r3, [sp, #0x2c]
	str r1, [sp, #0x30]
	ldr r3, [sp, #0x18]
	cmp r3, #0
	beq _0800B0E2
	movs r2, #0x68
_0800B0E2:
	adds r0, r7, #0
	adds r0, #0xf4
	strh r2, [r0]
	str r0, [sp, #0x34]
	ldr r4, [sp, #0x18]
	cmp r4, #0
	beq _0800B104
	ldr r0, _0800B100 @ =0x000011E4
	add r0, r8
	ldr r0, [r0]
	movs r2, #0x65
	cmp r0, #0
	bne _0800B106
	movs r2, #0x60
	b _0800B106
	.align 2, 0
_0800B100: .4byte 0x000011E4
_0800B104:
	movs r2, #0x40
_0800B106:
	adds r4, r7, #0
	adds r4, #0xf6
	movs r1, #0
	strh r2, [r4]
	adds r0, r7, #0
	adds r0, #0xf8
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r2, r7, r6
	movs r0, #5
	str r0, [r2]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r7, r2
	str r1, [r0]
	movs r3, #0xa1
	lsls r3, r3, #3
	adds r0, r7, r3
	str r1, [r0]
	ldr r6, _0800B21C @ =0x0000050C
	adds r0, r7, r6
	str r1, [r0]
	movs r2, #0xa2
	lsls r2, r2, #3
	adds r0, r7, r2
	str r1, [r0]
	adds r3, #0xc
	adds r0, r7, r3
	movs r2, #0xa0
	lsls r2, r2, #1
	strh r2, [r0]
	adds r6, #0xa
	adds r0, r7, r6
	strh r2, [r0]
	movs r2, #0xa3
	lsls r2, r2, #3
	adds r0, r7, r2
	str r1, [r0]
	adds r3, #8
	adds r0, r7, r3
	str r1, [r0]
	adds r6, #0xa
	adds r0, r7, r6
	str r1, [r0]
	adds r2, #0xc
	adds r0, r7, r2
	str r1, [r0]
	adds r3, #0xc
	adds r0, r7, r3
	str r1, [r0]
	adds r6, #0xdc
	adds r0, r7, r6
	str r1, [r0]
	adds r2, #0xdc
	adds r0, r7, r2
	str r1, [r0]
	adds r3, #0xdc
	adds r0, r7, r3
	str r1, [r0]
	adds r6, #0xc
	adds r0, r7, r6
	str r1, [r0]
	subs r2, #0xd4
	adds r0, r7, r2
	str r1, [r0]
	subs r3, #0xd4
	adds r0, r7, r3
	str r1, [r0]
	subs r6, #0xd4
	adds r0, r7, r6
	str r1, [r0]
	adds r2, #0xc
	adds r0, r7, r2
	str r1, [r0]
	mov r0, r8
	bl sub_8001FC0
	ldr r1, _0800B220 @ =0x06003000
	movs r0, #0
	bl map_setBufferDestination
	ldr r1, _0800B224 @ =0x06001000
	movs r0, #1
	bl map_setBufferDestination
	mov r0, r8
	bl spm_getSavedCup
	mov r3, r8
	str r0, [r3, #0x1c]
	str r0, [r7]
	mov r0, r8
	bl spm_getSavedTrack
	mov r6, r8
	str r0, [r6, #0x20]
	str r0, [r7, #4]
	mov r0, r8
	ldr r1, [sp, #0x18]
	bl spm_loadBgGfx
	mov r0, r8
	bl spm_loadOtherGfx
	ldr r1, [r6, #0x18]
	movs r0, #7
	str r0, [sp]
	mov r0, r8
	movs r2, #0
	movs r3, #1
	bl renderCharacterSprites
	ldr r1, [r6, #0x10]
	str r4, [sp, #0x38]
	cmp r1, #3
	beq _0800B238
	movs r0, #2
	cmp r1, #1
	beq _0800B1FC
	ldr r0, [r6, #0x14]
_0800B1FC:
	lsls r0, r0, #2
	ldr r1, _0800B228 @ =0x0000111C
	add r1, r8
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0800B246
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0800B22C @ =_0807D694
	ldr r2, _0800B230 @ =0x06008660
	ldr r3, _0800B234 @ =0x80000100
	bl dmaq_enqueue
	b _0800B246
	.align 2, 0
_0800B21C: .4byte 0x0000050C
_0800B220: .4byte 0x06003000
_0800B224: .4byte 0x06001000
_0800B228: .4byte 0x0000111C
_0800B22C: .4byte _0807D694
_0800B230: .4byte 0x06008660
_0800B234: .4byte 0x80000100
_0800B238:
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0800B25C @ =_0807D894
	ldr r2, _0800B260 @ =0x06008660
	ldr r3, _0800B264 @ =0x80000100
	bl dmaq_enqueue
_0800B246:
	mov r1, r8
	ldr r0, [r1, #0x10]
	cmp r0, #0
	bne _0800B274
	ldr r1, _0800B268 @ =0x03000040
	movs r0, #0xa
	str r0, [r1]
	ldr r1, _0800B26C @ =0x03000044
	ldr r0, _0800B270 @ =_080D95BC
	b _0800B27E
	.align 2, 0
_0800B25C: .4byte _0807D894
_0800B260: .4byte 0x06008660
_0800B264: .4byte 0x80000100
_0800B268: .4byte 0x03000040
_0800B26C: .4byte 0x03000044
_0800B270: .4byte _080D95BC
_0800B274:
	ldr r1, _0800B2DC @ =0x03000040
	movs r0, #0xc
	str r0, [r1]
	ldr r1, _0800B2E0 @ =0x03000044
	ldr r0, _0800B2E4 @ =_080D9588
_0800B27E:
	str r0, [r1]
	ldr r2, _0800B2E8 @ =0x00000D88
	add r2, r8
	ldr r3, [r1]
	movs r0, #0x80
	movs r1, #0x18
	bl sub_8003FD0
	mov r2, sp
	adds r2, #0x10
	str r2, [sp, #0x3c]
_0800B294:
	ldr r0, _0800B2EC @ =0x0203EBFC
	ldr r0, [r0]
	cmp r0, #0
	bne _0800B2A0
	bl oam_update
_0800B2A0:
	bl main_frameProc
	movs r3, #0xa6
	lsls r3, r3, #3
	adds r0, r7, r3
	movs r2, #0
	str r2, [r0]
	ldr r4, _0800B2F0 @ =0x00000534
	adds r0, r7, r4
	str r2, [r0]
	movs r6, #0xa7
	lsls r6, r6, #3
	adds r0, r7, r6
	str r2, [r0]
	ldr r1, _0800B2F4 @ =0x000011F4
	add r1, r8
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	mov r1, r8
	ldr r0, [r1, #0x4c]
	adds r0, #1
	str r0, [r1, #0x4c]
	ldr r0, [r1, #0x10]
	cmp r0, #0
	bne _0800B2F8
	movs r0, #1
	str r0, [r7, #0xc]
	b _0800B2FA
	.align 2, 0
_0800B2DC: .4byte 0x03000040
_0800B2E0: .4byte 0x03000044
_0800B2E4: .4byte _080D9588
_0800B2E8: .4byte 0x00000D88
_0800B2EC: .4byte 0x0203EBFC
_0800B2F0: .4byte 0x00000534
_0800B2F4: .4byte 0x000011F4
_0800B2F8:
	str r2, [r7, #0xc]
_0800B2FA:
	mov r0, r8
	bl sub_8008938
	cmp r0, #0
	bne _0800B30C
	mov r0, r8
	bl sub_8003948
	b _0800B294
_0800B30C:
	ldr r2, _0800B3C4 @ =0x000005FC
	adds r0, r7, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _0800B3F4
	ldr r0, _0800B3C8 @ =0x0000112C
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	beq _0800B34C
	mov r3, r8
	ldr r0, [r3, #0x4c]
	movs r1, #0x2f
	ands r0, r1
	cmp r0, #0x1f
	bgt _0800B33C
	ldr r0, _0800B3CC @ =_080C9010
	ldr r1, _0800B3D0 @ =_080D9654
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r3, #0
	bl oam_renderCellData
_0800B33C:
	ldr r0, _0800B3D4 @ =_080C902C
	ldr r1, _0800B3D8 @ =_080D9658
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r3, #0
	bl oam_renderCellData
_0800B34C:
	mov r0, r8
	bl spm_loadOtherGfx
	ldr r0, _0800B3DC @ =0x03000040
	ldr r0, [r0]
	ldr r1, _0800B3E0 @ =0x00000D88
	add r1, r8
	bl sub_8005DAC
	mov r0, r8
	bl sub_8009590
	mov r0, r8
	bl sub_8009754
	mov r0, r8
	bl sub_800A1A4
	mov r0, r8
	bl sub_8009FAC
	mov r0, r8
	ldr r1, [sp, #0x18]
	bl sub_8009124
	mov r0, r8
	bl sub_8003948
	ldr r4, _0800B3E4 @ =0x00000534
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _0800B394
	movs r0, #1
	bl map_setBufferDirty
_0800B394:
	movs r6, #0xa7
	lsls r6, r6, #3
	adds r0, r7, r6
	ldr r0, [r0]
	cmp r0, #0
	beq _0800B3AE
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0800B3E8 @ =0x02015400
	ldr r2, _0800B3EC @ =0x06015000
	ldr r3, _0800B3F0 @ =0x80000600
	bl dmaq_enqueue
_0800B3AE:
	adds r0, r7, #0
	adds r0, #0xb0
	ldr r1, [r0]
	cmp r1, #0
	beq _0800B3BA
	b _0800B294
_0800B3BA:
	ldr r2, _0800B3C4 @ =0x000005FC
	adds r0, r7, r2
	str r1, [r0]
	b _0800B294
	.align 2, 0
_0800B3C4: .4byte 0x000005FC
_0800B3C8: .4byte 0x0000112C
_0800B3CC: .4byte _080C9010
_0800B3D0: .4byte _080D9654
_0800B3D4: .4byte _080C902C
_0800B3D8: .4byte _080D9658
_0800B3DC: .4byte 0x03000040
_0800B3E0: .4byte 0x00000D88
_0800B3E4: .4byte 0x00000534
_0800B3E8: .4byte 0x02015400
_0800B3EC: .4byte 0x06015000
_0800B3F0: .4byte 0x80000600
_0800B3F4:
	ldr r0, _0800B470 @ =0x03004F48
	ldrh r1, [r0]
	add r0, sp, #8
	strh r1, [r0]
	ldr r0, _0800B474 @ =0x03004EA0
	ldrh r0, [r0]
	ldr r3, [sp, #0x3c]
	strh r0, [r3]
	mov r4, r8
	ldr r3, [r4, #8]
	ldr r5, [r4, #0x50]
	cmp r3, #0
	ble _0800B428
	movs r2, #0
	ldr r1, [sp, #0x3c]
	adds r1, #2
	mov r0, sp
	adds r0, #0xa
	adds r4, r3, #0
_0800B41A:
	strh r2, [r1]
	strh r2, [r0]
	adds r1, #2
	adds r0, #2
	subs r4, #1
	cmp r4, #0
	bne _0800B41A
_0800B428:
	ldr r6, [sp, #0x1c]
	cmp r6, #0
	blt _0800B4A0
	cmp r6, #2
	ble _0800B43A
	cmp r6, #0x12
	bgt _0800B4A0
	cmp r6, #0xa
	blt _0800B4A0
_0800B43A:
	movs r4, #0
	cmp r4, r3
	bgt _0800B4A0
	ldr r2, [sp, #0x3c]
_0800B442:
	movs r1, #2
	ldr r0, [sp, #0x1c]
	cmp r0, #0xd
	bgt _0800B44C
	movs r1, #1
_0800B44C:
	ldrh r0, [r2]
	ands r1, r0
	cmp r1, #0
	beq _0800B498
	ldr r1, [sp, #0x1c]
	cmp r1, #2
	bgt _0800B47E
	mov r2, r8
	ldr r0, [r2, #0x10]
	cmp r0, #3
	beq _0800B468
	ldr r4, [sp, #0x18]
	cmp r4, #0
	beq _0800B478
_0800B468:
	movs r6, #5
	str r6, [sp, #0x24]
	b _0800B48E
	.align 2, 0
_0800B470: .4byte 0x03004F48
_0800B474: .4byte 0x03004EA0
_0800B478:
	movs r0, #3
	str r0, [sp, #0x24]
	b _0800B48E
_0800B47E:
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #0x24]
	ldr r2, [sp, #0x1c]
	cmp r2, #0xd
	bgt _0800B48E
	movs r4, #0x64
	str r4, [sp, #0x24]
_0800B48E:
	movs r6, #0x13
	str r6, [sp, #0x1c]
	movs r0, #0
	str r0, [sp, #0x20]
	b _0800B4A0
_0800B498:
	adds r2, #2
	adds r4, #1
	cmp r4, r3
	ble _0800B442
_0800B4A0:
	cmp r5, #0
	beq _0800B4BC
	movs r0, #0
	mov r1, r8
	str r0, [r1, #0x50]
	ldr r0, [r1, #0x10]
	movs r2, #3
	str r2, [sp, #0x24]
	cmp r0, #3
	bne _0800B4B8
	movs r4, #5
	str r4, [sp, #0x24]
_0800B4B8:
	movs r6, #0x14
	str r6, [sp, #0x1c]
_0800B4BC:
	ldr r0, [sp, #0x1c]
	cmp r0, #0x15
	bls _0800B4C6
	bl _0800C422
_0800B4C6:
	lsls r0, r0, #2
	ldr r1, _0800B4D0 @ =_0800B4D4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800B4D0: .4byte _0800B4D4
_0800B4D4: @ jump table
	.4byte _0800B52C @ case 0
	.4byte _0800B554 @ case 1
	.4byte _0800B5D8 @ case 2
	.4byte _0800B70C @ case 3
	.4byte _0800B9A0 @ case 4
	.4byte _0800BBBA @ case 5
	.4byte _0800BC8C @ case 6
	.4byte _0800BEE6 @ case 7
	.4byte _0800BF42 @ case 8
	.4byte _0800BFA6 @ case 9
	.4byte _0800C014 @ case 10
	.4byte _0800C088 @ case 11
	.4byte _0800C0F2 @ case 12
	.4byte _0800C1BC @ case 13
	.4byte _0800C014 @ case 14
	.4byte _0800C11C @ case 15
	.4byte _0800C18E @ case 16
	.4byte _0800C422 @ case 17
	.4byte _0800C1BC @ case 18
	.4byte _0800C23C @ case 19
	.4byte _0800C242 @ case 20
	.4byte _0800C408 @ case 21
_0800B52C:
	mov r1, r8
	ldr r0, [r1, #0x10]
	cmp r0, #3
	bne _0800B53E
	mov r0, r8
	ldr r1, [sp, #0x18]
	bl sub_800A84C
	b _0800B546
_0800B53E:
	mov r0, r8
	ldr r1, [sp, #0x18]
	bl sub_800A75C
_0800B546:
	movs r0, #2
	movs r1, #4
	bl irq_updateMask
	movs r2, #1
	bl _0800BF3A
_0800B554:
	ldr r4, [sp, #0x20]
	adds r4, #1
	str r4, [sp, #0x20]
	cmp r4, #0x10
	bgt _0800B5B0
	ldr r6, [sp, #0x18]
	cmp r6, #0
	beq _0800B584
	ldr r1, _0800B5A4 @ =0x00001216
	add r1, r8
	ldrh r0, [r1]
	movs r0, #0xff
	strh r0, [r1]
	lsls r0, r4, #4
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0800B578
	adds r0, #0xf
_0800B578:
	asrs r0, r0, #4
	adds r0, #0x10
	ldr r1, _0800B5A8 @ =0x0000121A
	add r1, r8
	ldrh r2, [r1]
	strh r0, [r1]
_0800B584:
	ldr r1, _0800B5AC @ =0x000011E8
	add r1, r8
	ldr r2, [sp, #0x20]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #5
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0800B598
	adds r0, #0xf
_0800B598:
	asrs r0, r0, #4
	movs r3, #0xb4
	lsls r3, r3, #1
	adds r0, r0, r3
	bl _0800C1F4
	.align 2, 0
_0800B5A4: .4byte 0x00001216
_0800B5A8: .4byte 0x0000121A
_0800B5AC: .4byte 0x000011E8
_0800B5B0:
	ldr r1, _0800B5CC @ =0x00001216
	add r1, r8
	ldrh r0, [r1]
	movs r0, #0xbd
	lsls r0, r0, #6
	strh r0, [r1]
	ldr r1, _0800B5D0 @ =0x00001218
	add r1, r8
	ldrh r0, [r1]
	ldr r0, _0800B5D4 @ =0x0000060A
	strh r0, [r1]
	movs r6, #2
	bl _0800C186
	.align 2, 0
_0800B5CC: .4byte 0x00001216
_0800B5D0: .4byte 0x00001218
_0800B5D4: .4byte 0x0000060A
_0800B5D8:
	mov r1, r8
	ldr r0, [r1, #0x10]
	cmp r0, #3
	beq _0800B5E8
	ldr r2, [sp, #0x20]
	cmp r2, #0x14
	bne _0800B5F6
	b _0800B5EE
_0800B5E8:
	ldr r3, [sp, #0x20]
	cmp r3, #0
	bne _0800B5F6
_0800B5EE:
	adds r1, r7, #0
	adds r1, #0xac
	movs r0, #1
	str r0, [r1]
_0800B5F6:
	ldr r4, [sp, #0x20]
	adds r4, #1
	str r4, [sp, #0x20]
	ldr r1, [r7, #0x14]
	lsls r0, r1, #2
	adds r0, #0x10
	cmp r4, r0
	bgt _0800B68E
	movs r4, #0
	cmp r4, r1
	blt _0800B610
	bl _0800C422
_0800B610:
	ldr r5, [sp, #0x20]
	ldr r6, _0800B63C @ =_080D94FC
	mov sb, r6
	mov sl, r4
	adds r6, r7, #0
	adds r6, #0x1c
_0800B61C:
	cmp r5, #0
	blt _0800B678
	cmp r5, #0x14
	bgt _0800B678
	mov r1, r8
	ldr r0, [r1, #0x10]
	cmp r0, #3
	bne _0800B644
	ldr r0, _0800B640 @ =_080D9560
	add r0, sl
	movs r2, #0xc
	ldrsh r0, [r0, r2]
	adds r2, r0, #0
	adds r2, #0xf0
	adds r1, r0, #0
	b _0800B668
	.align 2, 0
_0800B63C: .4byte _080D94FC
_0800B640: .4byte _080D9560
_0800B644:
	ldr r3, [sp, #0x18]
	cmp r3, #0
	bne _0800B656
	mov r1, sb
	movs r2, #0xc
	ldrsh r0, [r1, r2]
	adds r2, r0, #0
	adds r2, #0xf0
	b _0800B65A
_0800B656:
	movs r2, #0x8f
	lsls r2, r2, #1
_0800B65A:
	movs r1, #0x2e
	ldr r3, [sp, #0x18]
	cmp r3, #0
	bne _0800B668
	mov r0, sb
	movs r3, #0xc
	ldrsh r1, [r0, r3]
_0800B668:
	movs r0, #0xa
	str r0, [sp]
	adds r0, r2, #0
	adds r2, r5, #0
	movs r3, #0x14
	bl sub_800E930
	strh r0, [r6, #4]
_0800B678:
	subs r5, #4
	movs r0, #0x14
	add sb, r0
	add sl, r0
	adds r6, #0x18
	adds r4, #1
	ldr r0, [r7, #0x14]
	cmp r4, r0
	blt _0800B61C
	bl _0800C422
_0800B68E:
	movs r0, #0
	ldr r1, [sp, #0x30]
	str r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r7, r2
	str r0, [r1]
	movs r3, #0
	str r3, [sp, #0x20]
	mov r4, r8
	ldr r0, [r4, #0x10]
	cmp r0, #3
	bne _0800B6AE
	movs r6, #5
	bl sub_0800C420
_0800B6AE:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _0800B6F0
	movs r4, #0
	ldr r0, [r7, #0x14]
	ldr r1, [sp, #0x20]
	cmp r1, r0
	bge _0800B6DC
	movs r3, #0
	movs r2, #0
	adds r1, r7, #0
	adds r1, #0x24
_0800B6C6:
	ldr r0, [r7]
	cmp r4, r0
	beq _0800B6D2
	strh r2, [r1, #2]
	strh r2, [r1]
	strb r3, [r1, #6]
_0800B6D2:
	adds r1, #0x18
	adds r4, #1
	ldr r0, [r7, #0x14]
	cmp r4, r0
	blt _0800B6C6
_0800B6DC:
	ldr r2, _0800B6EC @ =0x0000050C
	adds r1, r7, r2
	movs r0, #1
	str r0, [r1]
	movs r3, #5
	str r3, [sp, #0x1c]
	bl _0800C422
	.align 2, 0
_0800B6EC: .4byte 0x0000050C
_0800B6F0:
	movs r4, #3
	str r4, [sp, #0x1c]
	bl _0800C422
_0800B6F8:
	movs r0, #0x91
	bl m4aSongNumStart
	b _0800B952
_0800B700:
	movs r0, #0x90
	bl m4aSongNumStart
	movs r6, #0xe
	str r6, [sp, #0x1c]
	b _0800B952
_0800B70C:
	movs r4, #0
	ldr r0, _0800B73C @ =0x0000112C
	add r0, r8
	mov sl, r0
	cmp r4, r3
	ble _0800B71A
	b _0800B952
_0800B71A:
	ldr r2, _0800B740 @ =_080D94B4
	movs r5, #0
	mov sb, r5
	movs r6, #1
_0800B722:
	ldr r3, [r7]
	mov r0, sp
	adds r0, r0, r5
	adds r0, #8
	ldrh r0, [r0]
	cmp r0, #0x20
	beq _0800B762
	cmp r0, #0x20
	bgt _0800B744
	cmp r0, #0x10
	beq _0800B76C
	b _0800B77E
	.align 2, 0
_0800B73C: .4byte 0x0000112C
_0800B740: .4byte _080D94B4
_0800B744:
	cmp r0, #0x40
	beq _0800B74E
	cmp r0, #0x80
	beq _0800B758
	b _0800B77E
_0800B74E:
	lsls r0, r3, #3
	adds r0, r0, r2
	movs r1, #4
	ldrsb r1, [r0, r1]
	b _0800B774
_0800B758:
	lsls r0, r3, #3
	adds r0, r0, r2
	movs r1, #5
	ldrsb r1, [r0, r1]
	b _0800B774
_0800B762:
	lsls r0, r3, #3
	adds r0, r0, r2
	movs r1, #6
	ldrsb r1, [r0, r1]
	b _0800B774
_0800B76C:
	lsls r0, r3, #3
	adds r0, r0, r2
	movs r1, #7
	ldrsb r1, [r0, r1]
_0800B774:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800B77E
	str r1, [r7]
_0800B77E:
	ldr r0, [r7]
	cmp r3, r0
	beq _0800B7EE
	movs r0, #0x8d
	bl m4aSongNumStart
	ldr r1, [r7]
	mov r0, r8
	bl spm_loadCupGfx
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r1, #2
	cmp r0, #1
	beq _0800B7A0
	mov r2, r8
	ldr r1, [r2, #0x14]
_0800B7A0:
	lsls r0, r1, #2
	ldr r1, _0800B7BC @ =0x0000111C
	add r1, r8
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0800B7C0
	ldr r0, [r7]
	cmp r0, #4
	bne _0800B7C0
	movs r0, #3
	ldr r3, [sp, #0x4c]
	str r0, [r3]
	b _0800B7C6
	.align 2, 0
_0800B7BC: .4byte 0x0000111C
_0800B7C0:
	mov r4, sb
	ldr r0, [sp, #0x4c]
	str r4, [r0]
_0800B7C6:
	movs r1, #0
	ldr r2, [sp, #0x30]
	str r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r7, r3
	str r1, [r0]
	mov r4, r8
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0800B7E6
	movs r2, #0xa5
	lsls r2, r2, #3
	adds r0, r7, r2
	str r1, [r0]
	str r1, [r7, #4]
_0800B7E6:
	adds r0, r7, #0
	adds r0, #0xac
	str r6, [r0]
	b _0800B952
_0800B7EE:
	ldr r1, [sp, #0x3c]
	adds r0, r1, r5
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0800B860
	movs r0, #0
	mov r4, r8
	ldr r2, [r4, #0x10]
	movs r1, #2
	cmp r2, #1
	beq _0800B80A
	ldr r1, [r4, #0x14]
_0800B80A:
	cmp r2, #3
	beq _0800B83E
	ldr r0, _0800B824 @ =0x000011E4
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	bne _0800B82C
	lsls r0, r3, #1
	adds r0, r0, r3
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0800B828 @ =0x000010A4
	b _0800B838
	.align 2, 0
_0800B824: .4byte 0x000011E4
_0800B828: .4byte 0x000010A4
_0800B82C:
	lsls r0, r3, #1
	adds r0, r0, r3
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0x87
	lsls r1, r1, #5
_0800B838:
	add r1, r8
	adds r1, r1, r0
	ldr r0, [r1]
_0800B83E:
	cmp r0, #0
	beq _0800B844
	b _0800B6F8
_0800B844:
	movs r0, #0x8e
	bl m4aSongNumStart
	ldr r1, _0800B85C @ =0x0000050C
	adds r0, r7, r1
	str r6, [r0]
	ldr r0, [r7]
	mov r2, r8
	str r0, [r2, #0x1c]
	movs r3, #4
	str r3, [sp, #0x1c]
	b _0800B952
	.align 2, 0
_0800B85C: .4byte 0x0000050C
_0800B860:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800B86A
	b _0800B700
_0800B86A:
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0800B944
	mov r4, r8
	ldr r0, [r4, #0x10]
	cmp r0, #3
	beq _0800B952
	ldr r0, _0800B8E4 @ =0x0000112C
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	beq _0800B952
	ldr r0, [r7, #0x14]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r7
	movs r0, #0x12
	ldrsb r0, [r1, r0]
	cmp r0, #1
	bne _0800B952
	movs r0, #0x93
	bl m4aSongNumStart
	movs r2, #0
	ldr r0, [r7, #0x14]
	adds r5, r7, #0
	adds r5, #0xb0
	cmp r2, r0
	bge _0800B8BE
	movs r3, #5
	adds r1, r7, #0
	adds r1, #0x1c
_0800B8B2:
	strb r3, [r1, #0xe]
	adds r1, #0x18
	adds r2, #1
	ldr r0, [r7, #0x14]
	cmp r2, r0
	blt _0800B8B2
_0800B8BE:
	movs r0, #8
	str r0, [r5]
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r7, r1
	str r6, [r0]
	ldr r0, _0800B8E8 @ =0x000011E4
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	bne _0800B8F8
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0800B8EC @ =0x02018000
	ldr r2, _0800B8F0 @ =0x06010A00
	ldr r3, _0800B8F4 @ =0x80000100
	bl dmaq_enqueue
	b _0800B906
	.align 2, 0
_0800B8E4: .4byte 0x0000112C
_0800B8E8: .4byte 0x000011E4
_0800B8EC: .4byte 0x02018000
_0800B8F0: .4byte 0x06010A00
_0800B8F4: .4byte 0x80000100
_0800B8F8:
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0800B914 @ =0x02017C00
	ldr r2, _0800B918 @ =0x06010A00
	ldr r3, _0800B91C @ =0x80000100
	bl dmaq_enqueue
_0800B906:
	ldr r1, _0800B920 @ =0x000011E4
	add r1, r8
	ldr r0, [r1]
	cmp r0, #0
	bne _0800B924
	str r6, [r1]
	b _0800B928
	.align 2, 0
_0800B914: .4byte 0x02017C00
_0800B918: .4byte 0x06010A00
_0800B91C: .4byte 0x80000100
_0800B920: .4byte 0x000011E4
_0800B924:
	mov r2, sb
	str r2, [r1]
_0800B928:
	mov r3, sb
	ldr r4, [sp, #0x30]
	str r3, [r4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	str r3, [r0]
	ldr r2, _0800B940 @ =0x000005FC
	adds r0, r7, r2
	str r6, [r0]
	b _0800B952
	.align 2, 0
_0800B940: .4byte 0x000005FC
_0800B944:
	adds r5, #2
	adds r4, #1
	mov r3, r8
	ldr r0, [r3, #8]
	cmp r4, r0
	bgt _0800B952
	b _0800B722
_0800B952:
	mov r4, sl
	ldr r0, [r4]
	cmp r0, #0
	bne _0800B95E
	bl _0800C422
_0800B95E:
	mov r6, r8
	ldr r0, [r6, #0x4c]
	movs r1, #0x2f
	ands r0, r1
	cmp r0, #0x1f
	bgt _0800B97A
	ldr r0, _0800B990 @ =_080C9010
	ldr r1, _0800B994 @ =_080D9654
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r3, #0
	bl oam_renderCellData
_0800B97A:
	ldr r0, _0800B998 @ =_080C902C
	ldr r1, _0800B99C @ =_080D9658
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r3, #0
	bl oam_renderCellData
	bl _0800C422
	.align 2, 0
_0800B990: .4byte _080C9010
_0800B994: .4byte _080D9654
_0800B998: .4byte _080C902C
_0800B99C: .4byte _080D9658
_0800B9A0:
	mov r1, r8
	ldr r0, [r1, #0x10]
	cmp r0, #0
	bne _0800B9E8
	ldr r2, [sp, #0x20]
	cmp r2, #8
	bgt _0800B9E8
	lsls r0, r2, #0x1b
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800B9B8
	adds r0, #0x3f
_0800B9B8:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	ldr r3, _0800BA54 @ =gSinTable
	adds r0, r0, r3
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	rsbs r0, r0, #0
	asrs r0, r0, #0xf
	movs r4, #0x86
	lsls r4, r4, #1
	adds r0, r0, r4
	adds r1, r7, #0
	adds r1, #0x98
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x9e
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
_0800B9E8:
	ldr r6, [sp, #0x20]
	adds r6, #1
	str r6, [sp, #0x20]
	cmp r6, #0x10
	ble _0800B9F4
	b _0800BB88
_0800B9F4:
	movs r4, #0
	ldr r0, [r7, #0x14]
	lsls r1, r6, #0x1a
	str r1, [sp, #0x40]
	adds r2, r7, #0
	adds r2, #0xc4
	str r2, [sp, #0x44]
	cmp r4, r0
	bge _0800BAB2
	mov sb, r1
	movs r3, #0x20
	adds r3, r3, r7
	mov ip, r3
	mov sl, r4
_0800BA10:
	mov r6, sb
	asrs r5, r6, #0x10
	adds r0, r5, #0
	cmp r5, #0
	bge _0800BA1C
	adds r0, #0x3f
_0800BA1C:
	asrs r0, r0, #6
	ldr r1, _0800BA58 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	ldr r2, _0800BA54 @ =gSinTable
	adds r6, r0, r2
	ldr r3, [r6]
	ldr r2, _0800BA5C @ =_080D94FC
	add r2, sl
	movs r0, #0xc
	ldrsh r1, [r2, r0]
	movs r0, #0x2e
	subs r0, r0, r1
	muls r0, r3, r0
	asrs r0, r0, #0xf
	ldrh r1, [r2, #0xc]
	adds r0, r0, r1
	mov r3, ip
	strh r0, [r3]
	movs r0, #0xe
	ldrsh r1, [r2, r0]
	ldr r3, [r6]
	mov r2, r8
	ldr r0, [r2, #0x10]
	cmp r0, #0
	beq _0800BA60
	movs r0, #0x3c
	b _0800BA62
	.align 2, 0
_0800BA54: .4byte gSinTable
_0800BA58: .4byte 0x000003FF
_0800BA5C: .4byte _080D94FC
_0800BA60:
	movs r0, #0x50
_0800BA62:
	subs r0, r0, r1
	muls r0, r3, r0
	asrs r0, r0, #0xf
	adds r0, r1, r0
	movs r2, #0
	mov r3, ip
	strh r0, [r3, #2]
	ldr r0, [r7]
	cmp r4, r0
	beq _0800BAA2
	mov r6, sb
	asrs r0, r6, #0x10
	cmp r0, #0
	bge _0800BA80
	adds r0, #0x3f
_0800BA80:
	asrs r0, r0, #6
	ldr r1, _0800BAEC @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	ldr r3, _0800BAF0 @ =gSinTable
	adds r0, r0, r3
	ldr r1, [r0]
	movs r0, #0x62
	muls r0, r1, r0
	asrs r0, r0, #0xf
	movs r6, #0x88
	lsls r6, r6, #1
	adds r0, r0, r6
	mov r1, ip
	strh r0, [r1, #6]
	strh r0, [r1, #4]
	strb r2, [r1, #0xa]
_0800BAA2:
	movs r2, #0x18
	add ip, r2
	movs r3, #0x14
	add sl, r3
	adds r4, #1
	ldr r0, [r7, #0x14]
	cmp r4, r0
	blt _0800BA10
_0800BAB2:
	ldr r4, [sp, #0x40]
	asrs r0, r4, #0x10
	cmp r0, #0
	bge _0800BABC
	adds r0, #0x3f
_0800BABC:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	ldr r6, _0800BAF0 @ =gSinTable
	adds r0, r0, r6
	ldr r2, [r0]
	lsls r1, r2, #1
	rsbs r0, r1, #0
	asrs r0, r0, #0xf
	adds r0, #0x60
	ldr r3, [sp, #0x44]
	strh r0, [r3]
	mov r4, r8
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0800BAFC
	ldr r0, _0800BAF4 @ =0x000011E4
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	bne _0800BAF8
	adds r0, r1, r2
	lsls r0, r0, #2
	b _0800BB18
	.align 2, 0
_0800BAEC: .4byte 0x000003FF
_0800BAF0: .4byte gSinTable
_0800BAF4: .4byte 0x000011E4
_0800BAF8:
	lsls r0, r2, #4
	b _0800BB16
_0800BAFC:
	ldr r0, _0800BB0C @ =0x000011E4
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	bne _0800BB10
	lsls r0, r2, #5
	b _0800BB18
	.align 2, 0
_0800BB0C: .4byte 0x000011E4
_0800BB10:
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #2
_0800BB16:
	adds r0, r0, r2
_0800BB18:
	asrs r0, r0, #0xf
	adds r0, #0x30
	ldr r6, [sp, #0x48]
	strh r0, [r6]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #4
	rsbs r0, r0, #0
	asrs r0, r0, #0xf
	adds r0, #0x70
	ldr r1, [sp, #0x28]
	strh r0, [r1]
	ldr r0, _0800BB44 @ =0x000011E4
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	bne _0800BB48
	lsls r0, r2, #4
	asrs r0, r0, #0xf
	adds r0, #0x58
	lsls r1, r2, #2
	b _0800BB54
	.align 2, 0
_0800BB44: .4byte 0x000011E4
_0800BB48:
	lsls r1, r2, #2
	adds r0, r1, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	asrs r0, r0, #0xf
	adds r0, #0x58
_0800BB54:
	ldr r3, [sp, #0x2c]
	strh r0, [r3]
	asrs r0, r1, #0xf
	adds r0, #0x64
	ldr r4, [sp, #0x34]
	strh r0, [r4]
	ldr r0, _0800BB70 @ =0x000011E4
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	bne _0800BB74
	lsls r0, r2, #5
	b _0800BB7C
	.align 2, 0
_0800BB70: .4byte 0x000011E4
_0800BB74:
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
_0800BB7C:
	asrs r0, r0, #0xf
	adds r0, #0x40
	ldr r6, [sp, #0x38]
	strh r0, [r6]
	bl _0800C422
_0800BB88:
	movs r4, #0
	ldr r0, [r7, #0x14]
	cmp r4, r0
	bge _0800BBA4
	movs r2, #0
	adds r1, r7, #0
	adds r1, #0x24
_0800BB96:
	strh r2, [r1, #2]
	strh r2, [r1]
	adds r1, #0x18
	adds r4, #1
	ldr r0, [r7, #0x14]
	cmp r4, r0
	blt _0800BB96
_0800BBA4:
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r2, #5
	str r2, [sp, #0x1c]
	cmp r0, #0
	beq _0800BBB4
	bl _0800C3FC
_0800BBB4:
	movs r3, #8
	bl _0800C3FA
_0800BBBA:
	movs r6, #0xa5
	lsls r6, r6, #3
	adds r1, r7, r6
	movs r0, #0
	str r0, [r1]
	movs r0, #1
	str r0, [r7, #0xc]
	movs r4, #0
	mov r1, r8
	ldr r0, [r1, #8]
	cmp r4, r0
	ble _0800BBD6
	bl _0800C422
_0800BBD6:
	ldr r5, _0800BBF8 @ =_080D94DC
	movs r3, #1
	rsbs r3, r3, #0
	ldr r2, [sp, #0x3c]
	movs r6, #0
_0800BBE0:
	ldr r1, [r7, #4]
	mov r0, sp
	adds r0, r0, r6
	adds r0, #8
	ldrh r0, [r0]
	cmp r0, #0x20
	beq _0800BC1E
	cmp r0, #0x20
	bgt _0800BBFC
	cmp r0, #0x10
	beq _0800BC2A
	b _0800BC3A
	.align 2, 0
_0800BBF8: .4byte _080D94DC
_0800BBFC:
	cmp r0, #0x40
	beq _0800BC06
	cmp r0, #0x80
	beq _0800BC12
	b _0800BC3A
_0800BC06:
	lsls r0, r1, #3
	adds r0, r0, r5
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _0800BC34
_0800BC12:
	lsls r0, r1, #3
	adds r0, r0, r5
	ldrb r0, [r0, #5]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _0800BC34
_0800BC1E:
	lsls r0, r1, #3
	adds r0, r0, r5
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _0800BC34
_0800BC2A:
	lsls r0, r1, #3
	adds r0, r0, r5
	ldrb r0, [r0, #7]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_0800BC34:
	cmp r0, r3
	beq _0800BC3A
	str r0, [r7, #4]
_0800BC3A:
	ldr r0, [r7, #4]
	cmp r1, r0
	beq _0800BC42
	b _0800C3A8
_0800BC42:
	ldrh r1, [r2]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0800BC4E
	b _0800C3D4
_0800BC4E:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800BC7C
	movs r0, #0x90
	bl m4aSongNumStart
	ldr r2, _0800BC78 @ =0x0000050C
	adds r0, r7, r2
	movs r1, #4
	str r1, [r0]
	mov r3, r8
	ldr r0, [r3, #0x10]
	movs r4, #6
	str r4, [sp, #0x1c]
	cmp r0, #3
	beq _0800BC72
	b _0800C188
_0800BC72:
	movs r6, #0xe
	b _0800C186
	.align 2, 0
_0800BC78: .4byte 0x0000050C
_0800BC7C:
	adds r2, #2
	adds r6, #2
	adds r4, #1
	mov r1, r8
	ldr r0, [r1, #8]
	cmp r4, r0
	ble _0800BBE0
	b _0800C422
_0800BC8C:
	mov r2, r8
	ldr r1, [r2, #0x10]
	cmp r1, #0
	bne _0800BCDA
	ldr r3, [sp, #0x20]
	cmp r3, #8
	bgt _0800BCD0
	lsls r0, r3, #0x1b
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800BCA4
	adds r0, #0x3f
_0800BCA4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	ldr r4, _0800BCCC @ =gSinTable
	adds r0, r0, r4
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	asrs r0, r0, #0xf
	adds r0, #0xdc
	adds r1, r7, #0
	adds r1, #0x98
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x9e
	movs r1, #0x80
	lsls r1, r1, #1
	b _0800BCD4
	.align 2, 0
_0800BCCC: .4byte gSinTable
_0800BCD0:
	adds r0, r7, #0
	adds r0, #0x9e
_0800BCD4:
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
_0800BCDA:
	ldr r6, [sp, #0x20]
	adds r6, #1
	str r6, [sp, #0x20]
	cmp r6, #0x10
	ble _0800BCE6
	b _0800BEC8
_0800BCE6:
	movs r4, #0
	ldr r0, [r7, #0x14]
	lsls r1, r6, #0x1a
	str r1, [sp, #0x40]
	adds r2, r7, #0
	adds r2, #0xc4
	str r2, [sp, #0x44]
	cmp r4, r0
	bge _0800BDAA
	mov sb, r1
	adds r6, r7, #0
	adds r6, #0x20
	mov sl, r4
	ldr r3, _0800BD4C @ =0x000003FF
	mov ip, r3
_0800BD04:
	mov r0, sb
	asrs r3, r0, #0x10
	adds r0, r3, #0
	cmp r3, #0
	bge _0800BD10
	adds r0, #0x3f
_0800BD10:
	asrs r0, r0, #6
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #2
	ldr r2, _0800BD50 @ =gSinTable
	adds r5, r0, r2
	ldr r1, _0800BD54 @ =_080D94FC
	add r1, sl
	movs r2, #0xc
	ldrsh r0, [r1, r2]
	subs r0, #0x2e
	ldr r2, [r5]
	muls r0, r2, r0
	asrs r0, r0, #0xf
	adds r0, #0x2e
	strh r0, [r6]
	movs r2, #0xe
	ldrsh r0, [r1, r2]
	ldr r2, [r5]
	mov r3, r8
	ldr r1, [r3, #0x10]
	movs r3, #0x50
	cmp r1, #0
	beq _0800BD58
	movs r3, #0x3c
	cmp r1, #0
	beq _0800BD58
	subs r0, #0x3c
	b _0800BD5A
	.align 2, 0
_0800BD4C: .4byte 0x000003FF
_0800BD50: .4byte gSinTable
_0800BD54: .4byte _080D94FC
_0800BD58:
	subs r0, #0x50
_0800BD5A:
	muls r0, r2, r0
	asrs r0, r0, #0xf
	adds r0, r3, r0
	movs r2, #0
	strh r0, [r6, #2]
	ldr r0, [r7]
	cmp r4, r0
	beq _0800BD9C
	mov r1, sb
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _0800BD74
	adds r0, #0x3f
_0800BD74:
	asrs r0, r0, #6
	mov r3, ip
	ands r0, r3
	lsls r0, r0, #2
	ldr r1, _0800BDE4 @ =gSinTable
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r1
	lsls r0, r0, #1
	rsbs r0, r0, #0
	asrs r0, r0, #0xf
	movs r3, #0xb9
	lsls r3, r3, #1
	adds r0, r0, r3
	strh r0, [r6, #6]
	strh r0, [r6, #4]
	strb r2, [r6, #0xa]
_0800BD9C:
	adds r6, #0x18
	movs r0, #0x14
	add sl, r0
	adds r4, #1
	ldr r0, [r7, #0x14]
	cmp r4, r0
	blt _0800BD04
_0800BDAA:
	ldr r1, [sp, #0x40]
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _0800BDB4
	adds r0, #0x3f
_0800BDB4:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	ldr r2, _0800BDE4 @ =gSinTable
	adds r0, r0, r2
	ldr r2, [r0]
	lsls r0, r2, #1
	asrs r0, r0, #0xf
	adds r0, #0x5e
	ldr r3, [sp, #0x44]
	strh r0, [r3]
	mov r4, r8
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0800BDEC
	ldr r0, _0800BDE8 @ =0x000011E4
	add r0, r8
	ldr r0, [r0]
	movs r3, #0x41
	cmp r0, #0
	bne _0800BDFA
	movs r3, #0x3c
	b _0800BDFA
	.align 2, 0
_0800BDE4: .4byte gSinTable
_0800BDE8: .4byte 0x000011E4
_0800BDEC:
	ldr r0, _0800BE1C @ =0x000011E4
	add r0, r8
	ldr r0, [r0]
	movs r3, #0x55
	cmp r0, #0
	bne _0800BDFA
	movs r3, #0x50
_0800BDFA:
	mov r6, r8
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _0800BE24
	ldr r0, _0800BE1C @ =0x000011E4
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	bne _0800BE20
	lsls r1, r2, #1
	adds r0, r1, r2
	lsls r0, r0, #2
	rsbs r0, r0, #0
	asrs r0, r0, #0xf
	adds r0, r3, r0
	b _0800BE48
	.align 2, 0
_0800BE1C: .4byte 0x000011E4
_0800BE20:
	lsls r0, r2, #4
	b _0800BE3E
_0800BE24:
	ldr r0, _0800BE34 @ =0x000011E4
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	bne _0800BE38
	lsls r0, r2, #5
	b _0800BE40
	.align 2, 0
_0800BE34: .4byte 0x000011E4
_0800BE38:
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #2
_0800BE3E:
	adds r0, r0, r2
_0800BE40:
	rsbs r0, r0, #0
	asrs r0, r0, #0xf
	adds r0, r3, r0
	lsls r1, r2, #1
_0800BE48:
	ldr r3, [sp, #0x48]
	strh r0, [r3]
	adds r0, r1, r2
	lsls r0, r0, #4
	asrs r0, r0, #0xf
	adds r0, #0x40
	ldr r4, [sp, #0x28]
	strh r0, [r4]
	ldr r0, _0800BE78 @ =0x000011E4
	add r0, r8
	ldr r0, [r0]
	movs r3, #0x6d
	cmp r0, #0
	bne _0800BE7C
	movs r3, #0x68
	cmp r0, #0
	bne _0800BE7C
	lsls r0, r2, #4
	rsbs r0, r0, #0
	asrs r0, r0, #0xf
	adds r0, r3, r0
	lsls r1, r2, #2
	b _0800BE8A
	.align 2, 0
_0800BE78: .4byte 0x000011E4
_0800BE7C:
	lsls r1, r2, #2
	adds r0, r1, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	rsbs r0, r0, #0
	asrs r0, r0, #0xf
	adds r0, r3, r0
_0800BE8A:
	ldr r6, [sp, #0x2c]
	strh r0, [r6]
	rsbs r0, r1, #0
	asrs r0, r0, #0xf
	adds r0, #0x68
	ldr r1, [sp, #0x34]
	strh r0, [r1]
	ldr r0, _0800BEB0 @ =0x000011E4
	add r0, r8
	ldr r0, [r0]
	movs r1, #0x65
	cmp r0, #0
	bne _0800BEB4
	movs r1, #0x60
	cmp r0, #0
	bne _0800BEB4
	lsls r0, r2, #5
	b _0800BEBC
	.align 2, 0
_0800BEB0: .4byte 0x000011E4
_0800BEB4:
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
_0800BEBC:
	rsbs r0, r0, #0
	asrs r0, r0, #0xf
	adds r0, r1, r0
	ldr r2, [sp, #0x38]
	strh r0, [r2]
	b _0800C422
_0800BEC8:
	movs r4, #0
	ldr r0, [r7, #0x14]
	cmp r4, r0
	bge _0800BEE2
	movs r2, #1
	adds r1, r7, #0
	adds r1, #0x1c
_0800BED6:
	strb r2, [r1, #0xe]
	adds r1, #0x18
	adds r4, #1
	ldr r0, [r7, #0x14]
	cmp r4, r0
	blt _0800BED6
_0800BEE2:
	movs r3, #3
	b _0800C3FA
_0800BEE6:
	ldr r6, [sp, #0x20]
	adds r6, #1
	str r6, [sp, #0x20]
	cmp r6, #6
	bgt _0800BF38
	movs r0, #1
	str r0, [r7, #0xc]
	ldr r1, [r7, #4]
	mov r0, r8
	ldr r2, [sp, #0x20]
	bl sub_8008FA4
	movs r0, #0
	str r0, [r7, #0xc]
	lsls r0, r6, #0xe
	movs r1, #6
	bl __divsi3
	ldr r1, _0800BF34 @ =gSinTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800BF16
	adds r0, #0x3f
_0800BF16:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	rsbs r0, r0, #0
	asrs r0, r0, #0xf
	movs r1, #0x86
	lsls r1, r1, #1
	adds r0, r0, r1
	b _0800BFE4
	.align 2, 0
_0800BF34: .4byte gSinTable
_0800BF38:
	movs r2, #8
_0800BF3A: @ 0x0800BF3A
	str r2, [sp, #0x1c]
	movs r3, #0
	str r3, [sp, #0x20]
	b _0800C422
_0800BF42:
	mov r4, r8
	ldr r0, [r4, #0x4c]
	movs r1, #0x2f
	ands r0, r1
	cmp r0, #0xf
	bgt _0800BF56
	adds r0, r7, #0
	adds r0, #0x9e
	adds r1, #0xd1
	b _0800BF5C
_0800BF56:
	adds r0, r7, #0
	adds r0, #0x9e
	movs r1, #0
_0800BF5C:
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	movs r4, #0
	mov r6, r8
	ldr r3, [r6, #8]
	cmp r4, r3
	ble _0800BF6E
	b _0800C422
_0800BF6E:
	ldr r2, [sp, #0x3c]
_0800BF70:
	ldrh r1, [r2]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0800BF7C
	b _0800C3EA
_0800BF7C:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800BF9C
	movs r0, #0x90
	bl m4aSongNumStart
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r2, #9
	str r2, [sp, #0x1c]
	cmp r0, #0
	beq _0800BF98
	b _0800C3FC
_0800BF98:
	movs r3, #6
	b _0800C3FA
_0800BF9C:
	adds r2, #2
	adds r4, #1
	cmp r4, r3
	ble _0800BF70
	b _0800C422
_0800BFA6:
	ldr r6, [sp, #0x20]
	adds r6, #1
	str r6, [sp, #0x20]
	cmp r6, #6
	bgt _0800C000
	ldr r1, [r7, #4]
	movs r2, #6
	subs r2, r2, r6
	mov r0, r8
	bl sub_8008FA4
	lsls r0, r6, #0xe
	movs r1, #6
	bl __divsi3
	ldr r1, _0800BFFC @ =gSinTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800BFD0
	adds r0, #0x3f
_0800BFD0:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	asrs r0, r0, #0xf
	adds r0, #0xdc
_0800BFE4:
	adds r1, r7, #0
	adds r1, #0x98
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x9e
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	b _0800C422
	.align 2, 0
_0800BFFC: .4byte gSinTable
_0800C000:
	adds r0, r7, #0
	adds r0, #0x9e
	movs r1, #0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	movs r0, #5
	str r0, [sp, #0x1c]
	str r1, [sp, #0x20]
	b _0800C422
_0800C014:
	adds r1, r7, #0
	adds r1, #0xb0
	movs r0, #5
	str r0, [r1]
	movs r1, #3
	ldr r2, [sp, #0x30]
	str r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r7, r3
	str r1, [r0]
	ldr r4, [sp, #0x4c]
	ldr r0, [r4]
	cmp r0, #2
	bgt _0800C034
	str r1, [r4]
_0800C034:
	movs r2, #0
	ldr r4, _0800C05C @ =0x03000040
	ldr r0, [r4]
	cmp r2, r0
	bge _0800C050
	movs r3, #0x11
	ldr r1, _0800C060 @ =0x00000D96
	add r1, r8
_0800C044:
	strb r3, [r1]
	adds r1, #0x18
	adds r2, #1
	ldr r0, [r4]
	cmp r2, r0
	blt _0800C044
_0800C050:
	ldr r6, [sp, #0x1c]
	cmp r6, #0xa
	beq _0800C064
	cmp r6, #0xe
	beq _0800C06A
	b _0800C1B6
	.align 2, 0
_0800C05C: .4byte 0x03000040
_0800C060: .4byte 0x00000D96
_0800C064:
	movs r0, #0xb
	str r0, [sp, #0x1c]
	b _0800C1B6
_0800C06A:
	movs r4, #0
	ldr r0, [r7, #0x14]
	cmp r4, r0
	bge _0800C084
	movs r2, #0
	adds r1, r7, #0
	adds r1, #0x1c
_0800C078:
	strb r2, [r1, #0xe]
	adds r1, #0x18
	adds r4, #1
	ldr r0, [r7, #0x14]
	cmp r4, r0
	blt _0800C078
_0800C084:
	movs r1, #0xf
	b _0800C1B4
_0800C088:
	ldr r3, [sp, #0x20]
	adds r3, #1
	str r3, [sp, #0x20]
	cmp r3, #8
	bgt _0800C0B8
	ldr r1, _0800C0E0 @ =gSinTable
	lsls r0, r3, #0x1b
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800C09E
	adds r0, #0x3f
_0800C09E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	asrs r0, r0, #0xf
	adds r0, #0xdc
	adds r1, r7, #0
	adds r1, #0x98
	strh r0, [r1]
_0800C0B8:
	adds r0, r7, #0
	adds r0, #0xb0
	ldr r0, [r0]
	cmp r0, #7
	beq _0800C0C4
	b _0800C422
_0800C0C4:
	ldr r4, [sp, #0x20]
	cmp r4, #8
	bgt _0800C0CC
	b _0800C422
_0800C0CC:
	mov r6, r8
	ldr r0, [r6, #0x10]
	cmp r0, #0
	bne _0800C0E4
	movs r0, #0xa4
	lsls r0, r0, #3
	adds r1, r7, r0
	movs r0, #1
	b _0800C0EC
	.align 2, 0
_0800C0E0: .4byte gSinTable
_0800C0E4:
	movs r2, #0xa4
	lsls r2, r2, #3
	adds r1, r7, r2
	movs r0, #4
_0800C0EC:
	str r0, [r1]
	movs r3, #0xc
	b _0800C3FA
_0800C0F2:
	ldr r6, [sp, #0x20]
	adds r6, #1
	str r6, [sp, #0x20]
	cmp r6, #0x14
	bgt _0800C0FE
	b _0800C422
_0800C0FE:
	movs r4, #0
	ldr r0, [r7, #0x14]
	cmp r4, r0
	bge _0800C118
	movs r2, #2
	adds r1, r7, #0
	adds r1, #0x1c
_0800C10C:
	strb r2, [r1, #0xe]
	adds r1, #0x18
	adds r4, #1
	ldr r0, [r7, #0x14]
	cmp r4, r0
	blt _0800C10C
_0800C118:
	movs r0, #0xd
	b _0800C3E2
_0800C11C:
	ldr r2, [sp, #0x20]
	cmp r2, #8
	bgt _0800C148
	ldr r1, _0800C180 @ =gSinTable
	lsls r0, r2, #0x1b
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800C12E
	adds r0, #0x3f
_0800C12E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	asrs r0, r0, #0xf
	adds r0, #0xdc
	adds r1, r7, #0
	adds r1, #0x98
	strh r0, [r1]
_0800C148:
	ldr r3, [sp, #0x20]
	adds r3, #1
	str r3, [sp, #0x20]
	cmp r3, #0x10
	bgt _0800C184
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	movs r4, #0x80
	lsls r4, r4, #1
	adds r2, r0, r4
	movs r4, #0
	ldr r0, [r7, #0x14]
	cmp r4, r0
	blt _0800C168
	b _0800C422
_0800C168:
	lsls r3, r3, #0xc
	adds r1, r7, #0
	adds r1, #0x24
_0800C16E:
	strh r2, [r1, #2]
	strh r2, [r1]
	strh r3, [r1, #4]
	adds r1, #0x18
	adds r4, #1
	ldr r0, [r7, #0x14]
	cmp r4, r0
	blt _0800C16E
	b _0800C422
	.align 2, 0
_0800C180: .4byte gSinTable
_0800C184:
	movs r6, #0x10
_0800C186:
	str r6, [sp, #0x1c]
_0800C188:
	movs r0, #0
	str r0, [sp, #0x20]
	b _0800C422
_0800C18E:
	ldr r1, [r7, #0x14]
	adds r5, r7, #0
	adds r5, #0xb0
	cmp r1, #0
	ble _0800C1AA
	movs r2, #0
	adds r0, r7, #0
	adds r0, #0x1c
	adds r4, r1, #0
_0800C1A0:
	str r2, [r0]
	adds r0, #0x18
	subs r4, #1
	cmp r4, #0
	bne _0800C1A0
_0800C1AA:
	ldr r0, [r5]
	cmp r0, #7
	beq _0800C1B2
	b _0800C422
_0800C1B2:
	movs r1, #0x12
_0800C1B4:
	str r1, [sp, #0x1c]
_0800C1B6:
	movs r2, #0
	str r2, [sp, #0x20]
	b _0800C422
_0800C1BC:
	ldr r3, [sp, #0x20]
	adds r3, #1
	str r3, [sp, #0x20]
	cmp r3, #0x20
	bgt _0800C218
	ldr r1, _0800C204 @ =0x00001216
	add r1, r8
	ldrh r0, [r1]
	movs r0, #0xff
	strh r0, [r1]
	lsrs r0, r3, #0x1f
	adds r0, r3, r0
	asrs r0, r0, #1
	ldr r1, _0800C208 @ =0x0000121A
	add r1, r8
	ldrh r2, [r1]
	strh r0, [r1]
	ldr r1, _0800C20C @ =0x000011E8
	add r1, r8
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #7
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0800C1F0
	adds r0, #0x1f
_0800C1F0:
	asrs r0, r0, #5
	adds r0, #0xc8
_0800C1F4:
	str r0, [r1]
	ldr r1, _0800C210 @ =0x000011F0
	add r1, r8
	ldr r0, [r1]
	ldr r4, _0800C214 @ =0xFFFFF800
	adds r0, r0, r4
	str r0, [r1]
	b _0800C422
	.align 2, 0
_0800C204: .4byte 0x00001216
_0800C208: .4byte 0x0000121A
_0800C20C: .4byte 0x000011E8
_0800C210: .4byte 0x000011F0
_0800C214: .4byte 0xFFFFF800
_0800C218:
	movs r1, #5
	rsbs r1, r1, #0
	movs r0, #1
	bl irq_updateMask
	ldr r1, [r7]
	mov r0, r8
	bl sub_8002E08
	ldr r1, [r7, #4]
	mov r0, r8
	bl sub_8002E50
	ldr r6, [sp, #0x1c]
	cmp r6, #0xd
	bne _0800C2AA
	movs r0, #1
	b _0800C670
_0800C23C:
	movs r0, #0x14
	str r0, [sp, #0x1c]
	b _0800C422
_0800C242:
	ldr r1, [r7]
	mov r0, r8
	bl sub_8002E08
	ldr r1, [r7, #4]
	mov r0, r8
	bl sub_8002E50
	ldr r1, [sp, #0x24]
	cmp r1, #3
	beq _0800C26C
	cmp r1, #3
	bgt _0800C266
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800C286
	b _0800C2B8
_0800C266:
	ldr r2, [sp, #0x24]
	cmp r2, #5
	bne _0800C2B8
_0800C26C:
	movs r0, #2
	movs r1, #4
	bl irq_updateMask
	mov r3, r8
	ldr r0, [r3, #0x10]
	cmp r0, #3
	bne _0800C2E4
	mov r0, r8
	ldr r1, [sp, #0x18]
	bl sub_800A84C
	b _0800C2EC
_0800C286:
	movs r1, #5
	rsbs r1, r1, #0
	movs r0, #1
	bl irq_updateMask
	ldr r1, _0800C2B0 @ =0x00001216
	add r1, r8
	ldrh r0, [r1]
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, _0800C2B4 @ =0x0000121A
	add r1, r8
	ldrh r0, [r1]
	movs r0, #0x10
	strh r0, [r1]
	movs r0, #1
	mov r4, r8
	str r0, [r4, #0x50]
_0800C2AA:
	movs r0, #0
	b _0800C670
	.align 2, 0
_0800C2B0: .4byte 0x00001216
_0800C2B4: .4byte 0x0000121A
_0800C2B8:
	movs r1, #5
	rsbs r1, r1, #0
	movs r0, #1
	bl irq_updateMask
	ldr r1, _0800C2DC @ =0x00001216
	add r1, r8
	ldrh r0, [r1]
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, _0800C2E0 @ =0x0000121A
	add r1, r8
	ldrh r0, [r1]
	movs r0, #0x10
	strh r0, [r1]
	movs r0, #1
	b _0800C670
	.align 2, 0
_0800C2DC: .4byte 0x00001216
_0800C2E0: .4byte 0x0000121A
_0800C2E4:
	mov r0, r8
	ldr r1, [sp, #0x18]
	bl sub_800A75C
_0800C2EC:
	movs r4, #0
	ldr r0, [r7, #0x14]
	adds r5, r7, #0
	adds r5, #0xb0
	movs r6, #0xb4
	adds r6, r6, r7
	mov sl, r6
	movs r1, #0xb8
	adds r1, r1, r7
	mov sb, r1
	cmp r4, r0
	bge _0800C33A
	adds r1, r7, #0
	adds r1, #0x20
	ldr r3, _0800C318 @ =_080D94FC
	ldr r2, _0800C31C @ =_080D9560
_0800C30C:
	mov r6, r8
	ldr r0, [r6, #0x10]
	cmp r0, #3
	bne _0800C320
	ldrh r0, [r2, #0xc]
	b _0800C32A
	.align 2, 0
_0800C318: .4byte _080D94FC
_0800C31C: .4byte _080D9560
_0800C320:
	movs r0, #0x2e
	ldr r6, [sp, #0x18]
	cmp r6, #0
	bne _0800C32A
	ldrh r0, [r3, #0xc]
_0800C32A:
	strh r0, [r1]
	adds r1, #0x18
	adds r3, #0x14
	adds r2, #0x14
	adds r4, #1
	ldr r0, [r7, #0x14]
	cmp r4, r0
	blt _0800C30C
_0800C33A:
	movs r0, #2
	str r0, [r5]
	movs r1, #0
	mov r0, sl
	str r1, [r0]
	movs r0, #0xa0
	mov r2, sb
	strh r0, [r2]
	ldr r3, [sp, #0x30]
	str r1, [r3]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r7, r4
	str r1, [r0]
	ldr r6, [sp, #0x18]
	cmp r6, #0
	beq _0800C392
	mov r1, r8
	ldr r0, [r1, #0x10]
	cmp r0, #3
	beq _0800C392
	movs r4, #0
	ldr r0, [r7, #0x14]
	cmp r4, r0
	bge _0800C38A
	movs r3, #0
	movs r2, #0
	adds r1, r7, #0
	adds r1, #0x24
_0800C374:
	ldr r0, [r7]
	cmp r4, r0
	beq _0800C380
	strh r2, [r1, #2]
	strh r2, [r1]
	strb r3, [r1, #6]
_0800C380:
	adds r1, #0x18
	adds r4, #1
	ldr r0, [r7, #0x14]
	cmp r4, r0
	blt _0800C374
_0800C38A:
	ldr r2, _0800C3A0 @ =0x0000050C
	adds r1, r7, r2
	movs r0, #1
	str r0, [r1]
_0800C392:
	ldr r1, _0800C3A4 @ =0x000011E8
	add r1, r8
	movs r0, #0xc8
	str r0, [r1]
	movs r3, #0x15
	str r3, [sp, #0x1c]
	b _0800C422
	.align 2, 0
_0800C3A0: .4byte 0x0000050C
_0800C3A4: .4byte 0x000011E8
_0800C3A8:
	ldr r4, [r7]
	lsls r4, r4, #2
	adds r4, r4, r0
	movs r0, #0x8d
	bl m4aSongNumStart
	ldr r1, _0800C3CC @ =0x0203EBFC
	movs r0, #2
	str r0, [r1]
	ldr r0, _0800C3D0 @ =0x0203EC00
	str r4, [r0]
	movs r4, #0xa6
	lsls r4, r4, #3
	adds r1, r7, r4
	movs r0, #1
	str r0, [r1]
	b _0800C422
	.align 2, 0
_0800C3CC: .4byte 0x0203EBFC
_0800C3D0: .4byte 0x0203EC00
_0800C3D4:
	movs r0, #0x8e
	bl m4aSongNumStart
	ldr r0, [r7, #4]
	mov r6, r8
	str r0, [r6, #0x20]
	movs r0, #7
_0800C3E2:
	str r0, [sp, #0x1c]
	movs r1, #0
	str r1, [sp, #0x20]
	b _0800C422
_0800C3EA:
	movs r0, #0x8f
	bl m4aSongNumStart
	ldr r2, _0800C404 @ =0x0000050C
	adds r1, r7, r2
	movs r0, #4
	str r0, [r1]
	movs r3, #0xa
_0800C3FA:
	str r3, [sp, #0x1c]
_0800C3FC:
	movs r4, #0
	str r4, [sp, #0x20]
	b _0800C422
	.align 2, 0
_0800C404: .4byte 0x0000050C
_0800C408:
	ldr r1, _0800C5E0 @ =0x00001216
	add r1, r8
	ldrh r0, [r1]
	movs r0, #0xbd
	lsls r0, r0, #6
	strh r0, [r1]
	ldr r1, _0800C5E4 @ =0x00001218
	add r1, r8
	ldrh r0, [r1]
	ldr r0, _0800C5E8 @ =0x0000060A
	strh r0, [r1]
	ldr r6, [sp, #0x24]

	thumb_func_start sub_0800C420
sub_0800C420: @ 0x0800C420
	str r6, [sp, #0x1c]
_0800C422:
	mov r0, r8
	bl spm_loadOtherGfx
	cmp r0, #0
	beq _0800C436
	movs r0, #0xa7
	lsls r0, r0, #3
	adds r1, r7, r0
	movs r0, #1
	str r0, [r1]
_0800C436:
	mov r0, r8
	bl sub_8008D14
	ldr r0, _0800C5EC @ =0x03000040
	ldr r0, [r0]
	ldr r1, _0800C5F0 @ =0x00000D88
	add r1, r8
	bl sub_8005DAC
	mov r0, r8
	bl sub_8009C84
	mov r0, r8
	bl sub_8009590
	mov r0, r8
	bl sub_8009754
	mov r0, r8
	bl sub_800A1A4
	mov r0, r8
	bl sub_8009FAC
	mov r0, r8
	ldr r1, [sp, #0x18]
	bl sub_8009124
	movs r2, #0xe7
	lsls r2, r2, #3
	add r2, r8
	mov r1, r8
	ldr r0, [r1, #0x10]
	cmp r0, #0
	bne _0800C4B4
	movs r0, #0xfd
	lsls r0, r0, #3
	add r0, r8
	ldr r3, [r0]
	cmp r3, #0
	bne _0800C4B4
	movs r1, #0xc6
	lsls r1, r1, #4
	add r1, r8
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x40
	ble _0800C4B4
	str r3, [r1]
	ldr r1, [r2, #4]
	adds r1, #1
	movs r0, #3
	ands r1, r0
	str r1, [r2, #4]
	ldr r2, [r2]
	lsls r2, r2, #2
	adds r2, r2, r1
	ldr r1, _0800C5F4 @ =0x0203EBFC
	movs r0, #2
	str r0, [r1]
	ldr r0, _0800C5F8 @ =0x0203EC00
	str r2, [r0]
_0800C4B4:
	ldr r0, [r7, #8]
	ldr r2, [r7, #4]
	cmp r0, r2
	bne _0800C4C4
	ldr r1, [r7, #0xc]
	ldr r0, [r7, #0x10]
	cmp r1, r0
	beq _0800C4D6
_0800C4C4:
	mov r0, r8
	adds r1, r2, #0
	movs r2, #0
	bl sub_8008FA4
	ldr r0, [r7, #4]
	str r0, [r7, #8]
	ldr r0, [r7, #0xc]
	str r0, [r7, #0x10]
_0800C4D6:
	movs r0, #0
	bl pltt_getBuffer
	adds r2, r0, #0
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r2, r2, r3
	ldr r0, _0800C5FC @ =_080B23B0
	adds r1, r0, #0
	adds r1, #0x20
	mov r4, r8
	ldr r3, [r4, #0x4c]
	movs r4, #0x10
	str r4, [sp]
	bl sub_8005E04
	ldr r5, _0800C600 @ =0x0000122C
	add r5, r8
	ldrh r0, [r5]
	movs r6, #0
	movs r0, #0
	strh r0, [r5]
	ldr r4, _0800C604 @ =0x000011FE
	add r4, r8
	ldrh r1, [r4]
	ldr r0, _0800C608 @ =0x0000FFBF
	ands r0, r1
	ldrh r1, [r4]
	strh r0, [r4]
	mov r0, r8
	ldr r3, [r0, #0x10]
	cmp r3, #3
	beq _0800C554
	ldr r0, _0800C60C @ =0x000011E4
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	bne _0800C554
	ldr r1, [r7]
	movs r2, #2
	cmp r3, #1
	beq _0800C52E
	mov r3, r8
	ldr r2, [r3, #0x14]
_0800C52E:
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, _0800C610 @ =0x000010A4
	add r1, r8
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0800C554
	ldrh r0, [r5]
	ldr r0, _0800C614 @ =0x00002222
	strh r0, [r5]
	ldrh r1, [r4]
	movs r0, #0x40
	orrs r1, r0
	ldrh r0, [r4]
	orrs r1, r6
	strh r1, [r4]
_0800C554:
	mov r6, r8
	ldr r4, [r6, #0x10]
	cmp r4, #1
	bne _0800C57C
	movs r1, #0xa6
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0800C57C
	ldr r1, [r7]
	lsls r1, r1, #2
	ldr r0, [r7, #4]
	adds r1, r1, r0
	mov r0, r8
	bl sub_8008E0C
	ldr r2, _0800C618 @ =0x00000534
	adds r0, r7, r2
	str r4, [r0]
_0800C57C:
	mov r0, r8
	bl sub_8009998
	mov r0, r8
	bl sub_8003948
	mov r0, r8
	bl sub_8003930
	cmp r0, #0
	beq _0800C62C
	ldr r0, _0800C61C @ =trns_initDefaultOutTransition
	ldr r5, _0800C620 @ =0x03004F70
	str r0, [r5, #4]
	ldr r0, _0800C624 @ =trns_applyDefaultOutTransition
	str r0, [r5]
	movs r4, #0
	str r4, [r5, #8]
	movs r0, #1
	strb r0, [r5, #0xe]
	bl trns_start
	movs r0, #0
	bl pltt_getBuffer
	strh r4, [r0]
	movs r0, #1
	bl pltt_setDirtyFlag
	bl main_frameProc
	ldrb r1, [r5, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800C5D6
	adds r4, r5, #0
	movs r5, #2
_0800C5C8:
	bl main_frameProc
	ldrb r1, [r4, #0xc]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0800C5C8
_0800C5D6:
	ldr r1, _0800C628 @ =0x0000109C
	add r1, r8
	movs r0, #1
	str r0, [r1]
	b _0800C2AA
	.align 2, 0
_0800C5E0: .4byte 0x00001216
_0800C5E4: .4byte 0x00001218
_0800C5E8: .4byte 0x0000060A
_0800C5EC: .4byte 0x03000040
_0800C5F0: .4byte 0x00000D88
_0800C5F4: .4byte 0x0203EBFC
_0800C5F8: .4byte 0x0203EC00
_0800C5FC: .4byte _080B23B0
_0800C600: .4byte 0x0000122C
_0800C604: .4byte 0x000011FE
_0800C608: .4byte 0x0000FFBF
_0800C60C: .4byte 0x000011E4
_0800C610: .4byte 0x000010A4
_0800C614: .4byte 0x00002222
_0800C618: .4byte 0x00000534
_0800C61C: .4byte trns_initDefaultOutTransition
_0800C620: .4byte 0x03004F70
_0800C624: .4byte trns_applyDefaultOutTransition
_0800C628: .4byte 0x0000109C
_0800C62C:
	ldr r3, _0800C660 @ =0x00000534
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #0
	beq _0800C63C
	movs r0, #1
	bl map_setBufferDirty
_0800C63C:
	movs r4, #0xa7
	lsls r4, r4, #3
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _0800C64C
	bl _0800B294
_0800C64C:
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0800C664 @ =0x02015400
	ldr r2, _0800C668 @ =0x06015000
	ldr r3, _0800C66C @ =0x80000600
	bl dmaq_enqueue
	bl _0800B294
	.align 2, 0
_0800C660: .4byte 0x00000534
_0800C664: .4byte 0x02015400
_0800C668: .4byte 0x06015000
_0800C66C: .4byte 0x80000600
_0800C670:
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_800C680
sub_800C680: @ 0x0800C680
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	mov r0, sp
	ldrh r0, [r0]
	cmp r0, #0x31
	bhi _0800C69C
_0800C690:
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r0, [r1]
	cmp r0, #0x31
	bls _0800C690
_0800C69C:
	ldr r2, _0800C6C4 @ =0x04000008
	ldrh r1, [r2]
	ldr r0, _0800C6C8 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	strh r0, [r2]
	ldr r3, _0800C6CC @ =0x0400004C
	ldrh r1, [r3]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	strh r0, [r3]
	ldrh r1, [r2]
	ldr r0, _0800C6D0 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	add sp, #4
	bx lr
	.align 2, 0
_0800C6C4: .4byte 0x04000008
_0800C6C8: .4byte 0x0000FF7F
_0800C6CC: .4byte 0x0400004C
_0800C6D0: .4byte 0x0000FFBF

	thumb_func_start sub_800C6D4
sub_800C6D4: @ 0x0800C6D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r1, #0
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r7, r3, #0xc
	add r2, sp, #4
	add r3, sp, #8
	mov r1, sp
	bl sub_804EFBC
	ldr r2, [sp]
	movs r0, #0xf
	mov sl, r0
	movs r3, #0xf
	ands r2, r3
	ldr r0, [sp, #4]
	lsrs r1, r0, #4
	mov r5, sl
	ands r1, r5
	ands r0, r3
	movs r5, #0xb
	adds r5, r5, r4
	mov sb, r5
	adds r0, r0, r4
	mov r8, r0
	adds r1, r1, r4
	mov ip, r1
	adds r5, r4, #0
	adds r5, #0xa
	adds r1, r4, r2
	ldr r0, [sp, #8]
	lsrs r2, r0, #4
	mov r0, sl
	ands r2, r0
	ldr r0, [sp, #8]
	ands r3, r0
	str r3, [sp, #0xc]
	movs r3, #1
	mov sl, r3
_0800C72E:
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r6]
	adds r0, r7, #0
	orrs r0, r5
	strh r0, [r6, #2]
	adds r0, r7, #0
	mov r3, ip
	orrs r0, r3
	strh r0, [r6, #4]
	adds r0, r7, #0
	mov r3, r8
	orrs r0, r3
	strh r0, [r6, #6]
	adds r0, r7, #0
	mov r3, sb
	orrs r0, r3
	strh r0, [r6, #8]
	adds r0, r4, r2
	orrs r0, r7
	strh r0, [r6, #0xa]
	ldr r3, [sp, #0xc]
	adds r0, r4, r3
	orrs r0, r7
	strh r0, [r6, #0xc]
	movs r0, #0x20
	add sb, r0
	add r8, r0
	add ip, r0
	adds r5, #0x20
	adds r6, #0x40
	adds r1, #0x20
	adds r4, #0x20
	movs r3, #1
	rsbs r3, r3, #0
	add sl, r3
	mov r0, sl
	cmp r0, #0
	bge _0800C72E
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_800C78C
sub_800C78C: @ 0x0800C78C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _0800C934 @ =_080A97F8
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r6, _0800C938 @ =0x80000C00
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _0800C93C @ =_080A9E2C
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r2, r5, r1
	adds r1, r4, #0
	adds r3, r6, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _0800C940 @ =_080AA56C
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	movs r3, #0xc0
	lsls r3, r3, #6
	adds r2, r5, r3
	adds r1, r4, #0
	adds r3, r6, #0
	bl dmaq_enqueue
	bl main_frameProc
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0800C944 @ =_080ACAFC
	movs r3, #0xb0
	lsls r3, r3, #7
	adds r2, r5, r3
	ldr r3, _0800C948 @ =0x80000600
	mov sb, r3
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0800C94C @ =_080ABEFC
	movs r3, #0xc8
	lsls r3, r3, #7
	adds r2, r5, r3
	ldr r3, _0800C950 @ =0x80000400
	mov r8, r3
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0800C954 @ =_08063834
	movs r3, #0xd8
	lsls r3, r3, #7
	adds r2, r5, r3
	ldr r6, _0800C958 @ =0x80000200
	adds r3, r6, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _0800C95C @ =_080776F8
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	movs r1, #0xe8
	lsls r1, r1, #7
	adds r2, r5, r1
	adds r1, r4, #0
	mov r3, sb
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0800C960 @ =_0806500C
	movs r2, #0xf0
	lsls r2, r2, #7
	adds r5, r5, r2
	ldr r3, _0800C964 @ =0x80000120
	adds r2, r5, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _0800C968 @ =_080B25A0
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800C96C @ =0x06015C00
	adds r1, r4, #0
	mov r3, r8
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _0800C970 @ =_080B2770
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800C974 @ =0x06016400
	adds r1, r4, #0
	adds r3, r6, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _0800C978 @ =_080B2858
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800C97C @ =0x06016C00
	adds r1, r4, #0
	adds r3, r6, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _0800C980 @ =_080B29C4
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800C984 @ =0x06017000
	adds r1, r4, #0
	adds r3, r6, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _0800C988 @ =_080B2BC8
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800C98C @ =0x06017800
	ldr r3, _0800C990 @ =0x80000100
	adds r1, r4, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _0800C994 @ =_080B2C38
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800C998 @ =0x06017C00
	adds r1, r4, #0
	adds r3, r6, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _0800C99C @ =_080B3014
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800C9A0 @ =0x06015000
	adds r1, r4, #0
	mov r3, sb
	bl dmaq_enqueue
	bl main_frameProc
	bl main_frameProc
	ldr r0, _0800C9A4 @ =_080B2F9C
	ldr r1, _0800C9A8 @ =0x06014C00
	bl LZ77UnCompVram
	bl main_frameProc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800C934: .4byte _080A97F8
_0800C938: .4byte 0x80000C00
_0800C93C: .4byte _080A9E2C
_0800C940: .4byte _080AA56C
_0800C944: .4byte _080ACAFC
_0800C948: .4byte 0x80000600
_0800C94C: .4byte _080ABEFC
_0800C950: .4byte 0x80000400
_0800C954: .4byte _08063834
_0800C958: .4byte 0x80000200
_0800C95C: .4byte _080776F8
_0800C960: .4byte _0806500C
_0800C964: .4byte 0x80000120
_0800C968: .4byte _080B25A0
_0800C96C: .4byte 0x06015C00
_0800C970: .4byte _080B2770
_0800C974: .4byte 0x06016400
_0800C978: .4byte _080B2858
_0800C97C: .4byte 0x06016C00
_0800C980: .4byte _080B29C4
_0800C984: .4byte 0x06017000
_0800C988: .4byte _080B2BC8
_0800C98C: .4byte 0x06017800
_0800C990: .4byte 0x80000100
_0800C994: .4byte _080B2C38
_0800C998: .4byte 0x06017C00
_0800C99C: .4byte _080B3014
_0800C9A0: .4byte 0x06015000
_0800C9A4: .4byte _080B2F9C
_0800C9A8: .4byte 0x06014C00

	thumb_func_start sub_800C9AC
sub_800C9AC: @ 0x0800C9AC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0800CA74 @ =0x00000D44
	adds r7, r4, r0
	adds r4, r7, #0
	ldr r0, _0800CA78 @ =_08079F18
	ldr r5, _0800CA7C @ =0x0200EC00
	adds r1, r5, #0
	bl LZ77UnCompWram
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _0800C9EE
	movs r2, #0
	adds r1, r5, #0
	adds r6, r1, #0
	adds r6, #0x2e
_0800C9CE:
	lsls r0, r2, #6
	adds r5, r2, #1
	adds r4, r0, r6
	adds r0, r0, r1
	adds r2, r0, #0
	adds r2, #0x32
	movs r3, #3
_0800C9DC:
	ldrh r0, [r4]
	strh r0, [r2]
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bge _0800C9DC
	adds r2, r5, #0
	cmp r2, #0x1f
	ble _0800C9CE
_0800C9EE:
	bl dmaq_getVBlankDmaQueue
	ldr r4, _0800CA7C @ =0x0200EC00
	adds r1, r4, #0
	movs r2, #0xc0
	lsls r2, r2, #0x13
	ldr r3, _0800CA80 @ =0x80000400
	bl dmaq_enqueue
	ldr r0, [r7, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800CA6E
	movs r0, #0
	adds r6, r4, #0
	adds r6, #0x80
_0800CA10:
	lsls r1, r0, #7
	adds r7, r0, #1
	adds r0, r6, r1
	adds r4, r0, #0
	adds r4, #0xd8
	adds r3, r0, #0
	adds r3, #0x58
	adds r2, r0, #0
	adds r2, #0x98
	adds r1, r1, r6
	adds r1, #0x18
	movs r5, #0x10
_0800CA28:
	ldrh r0, [r2]
	strh r0, [r1]
	ldrh r0, [r4]
	strh r0, [r3]
	adds r4, #2
	adds r3, #2
	adds r2, #2
	adds r1, #2
	subs r5, #1
	cmp r5, #0
	bge _0800CA28
	adds r0, r7, #0
	cmp r0, #6
	ble _0800CA10
	ldr r0, _0800CA84 @ =0x0200F000
	adds r4, r0, #0
	subs r4, #0xa8
	adds r3, r0, #0
	adds r3, #0x58
	adds r2, r0, #0
	subs r2, #0xe8
	adds r1, r0, #0
	adds r1, #0x18
	movs r5, #0x10
_0800CA58:
	ldrh r0, [r2]
	strh r0, [r1]
	ldrh r0, [r4]
	strh r0, [r3]
	adds r4, #2
	adds r3, #2
	adds r2, #2
	adds r1, #2
	subs r5, #1
	cmp r5, #0
	bge _0800CA58
_0800CA6E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CA74: .4byte 0x00000D44
_0800CA78: .4byte _08079F18
_0800CA7C: .4byte 0x0200EC00
_0800CA80: .4byte 0x80000400
_0800CA84: .4byte 0x0200F000

	thumb_func_start sub_800CA88
sub_800CA88: @ 0x0800CA88
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r4, r1, #0
	lsls r5, r0, #6
	ldr r6, _0800CAD0 @ =0x0200F402
	adds r1, r5, r6
	cmp r4, #4
	bgt _0800CAB2
	ldr r2, _0800CAD4 @ =0x00000321
	adds r0, r4, r2
	ldr r7, _0800CAD8 @ =0xFFFFF000
	adds r2, r7, #0
	orrs r0, r2
	strh r0, [r1]
	adds r1, #0x40
	ldr r7, _0800CADC @ =0x00000341
	adds r0, r4, r7
	orrs r0, r2
	strh r0, [r1]
_0800CAB2:
	adds r0, r6, #2
	adds r5, r5, r0
	movs r6, #0xd8
	lsls r6, r6, #2
	movs r4, #0xc0
	lsls r4, r4, #8
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _0800CAE0
	movs r1, #0
	subs r6, #0xa0
	movs r4, #0xf0
	lsls r4, r4, #8
	b _0800CAF6
	.align 2, 0
_0800CAD0: .4byte 0x0200F402
_0800CAD4: .4byte 0x00000321
_0800CAD8: .4byte 0xFFFFF000
_0800CADC: .4byte 0x00000341
_0800CAE0:
	movs r0, #7
	ands r0, r3
	bl sub_800EDB0
	movs r1, #2
	cmp r0, #3
	beq _0800CAF6
	adds r1, r0, #0
	cmp r1, #2
	bne _0800CAF6
	movs r1, #3
_0800CAF6:
	lsls r1, r1, #2
	adds r1, r6, r1
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r5]
	adds r0, r1, #1
	orrs r0, r4
	strh r0, [r5, #2]
	adds r2, r5, #0
	adds r2, #0x40
	adds r0, r1, #2
	orrs r0, r4
	strh r0, [r2]
	adds r0, r5, #0
	adds r0, #0x42
	adds r1, #3
	orrs r4, r1
	strh r4, [r0]
	ldr r0, [sp, #0x18]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r2, r8
	lsls r1, r2, #6
	ldr r2, _0800CB3C @ =0x0200F408
	adds r1, r1, r2
	movs r2, #0xc8
	lsls r2, r2, #2
	movs r3, #0xf
	bl sub_800C6D4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CB3C: .4byte 0x0200F408

	thumb_func_start sub_800CB40
sub_800CB40: @ 0x0800CB40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r1, _0800CC54 @ =0x00000D44
	adds r5, r0, r1
	movs r0, #0
	str r0, [sp, #4]
	ldr r4, _0800CC58 @ =0x0200F400
	ldr r2, _0800CC5C @ =0x01000200
	add r0, sp, #4
	adds r1, r4, #0
	bl CpuFastSet
	movs r6, #0
	ldr r2, _0800CC60 @ =0x0000032D
	adds r7, r2, #0
	ldr r0, _0800CC64 @ =0xFFFFF000
	adds r2, r0, #0
	ldr r1, _0800CC68 @ =0x0000034D
	adds r3, r1, #0
	adds r1, r4, #0
	adds r1, #0x82
	adds r4, #0x42
_0800CB74:
	adds r0, r6, r7
	orrs r0, r2
	strh r0, [r4]
	adds r0, r6, r3
	orrs r0, r2
	strh r0, [r1]
	adds r1, #2
	adds r4, #2
	adds r6, #1
	cmp r6, #6
	ble _0800CB74
	ldr r0, _0800CC6C @ =0x0200F742
	movs r6, #0
	ldr r2, [r5]
	mov sb, r2
	ldr r2, [r5, #4]
	ldr r5, [r5, #0x24]
	mov sl, r5
	movs r7, #0xcd
	lsls r7, r7, #2
	mov r8, r7
	ldr r1, _0800CC64 @ =0xFFFFF000
	adds r4, r1, #0
	adds r7, #0x20
	adds r5, r7, #0
	adds r3, r0, #0
	adds r3, #0x40
	adds r1, r0, #0
_0800CBAC:
	mov r7, r8
	adds r0, r6, r7
	orrs r0, r4
	strh r0, [r1]
	adds r0, r6, r5
	orrs r0, r4
	strh r0, [r3]
	adds r3, #2
	adds r1, #2
	adds r6, #1
	cmp r6, #5
	ble _0800CBAC
	add sb, r2
	mov r0, sb
	cmp r0, #0
	bge _0800CBCE
	adds r0, #3
_0800CBCE:
	asrs r1, r0, #2
	movs r0, #3
	mov r2, sb
	ands r0, r2
	mov r7, sl
	cmp r7, #0
	bne _0800CC70
	movs r6, #0
	lsls r0, r0, #5
	str r0, [sp, #8]
	lsls r1, r1, #7
	mov sl, r1
	mov r8, r0
	mov r7, sl
	movs r0, #3
	str r0, [sp, #0x10]
_0800CBEE:
	bl save_getSavePointer_805D9B0
	lsls r4, r6, #2
	adds r0, r7, r0
	add r0, r8
	adds r0, r4, r0
	adds r0, #0x64
	ldrb r5, [r0]
	bl save_getSavePointer_805D9B0
	adds r0, r7, r0
	add r0, r8
	adds r4, r4, r0
	adds r4, #0x64
	ldrh r0, [r4, #2]
	str r0, [sp]
	ldr r0, [sp, #0x10]
	adds r1, r6, #0
	mov r2, sb
	adds r3, r5, #0
	bl sub_800CA88
	ldr r1, [sp, #0x10]
	adds r1, #2
	str r1, [sp, #0x10]
	adds r6, #1
	cmp r6, #4
	ble _0800CBEE
	bl save_getSavePointer_805D9B0
	add r0, sl
	ldr r2, [sp, #8]
	adds r0, r2, r0
	adds r0, #0x78
	ldrb r4, [r0]
	bl save_getSavePointer_805D9B0
	add r0, sl
	ldr r7, [sp, #8]
	adds r0, r7, r0
	adds r0, #0x78
	ldrh r0, [r0, #2]
	str r0, [sp]
	movs r0, #0xf
	movs r1, #5
	mov r2, sb
	adds r3, r4, #0
	bl sub_800CA88
	b _0800CCF0
	.align 2, 0
_0800CC54: .4byte 0x00000D44
_0800CC58: .4byte 0x0200F400
_0800CC5C: .4byte 0x01000200
_0800CC60: .4byte 0x0000032D
_0800CC64: .4byte 0xFFFFF000
_0800CC68: .4byte 0x0000034D
_0800CC6C: .4byte 0x0200F742
_0800CC70:
	movs r6, #0
	lsls r0, r0, #5
	str r0, [sp, #8]
	lsls r1, r1, #7
	mov sl, r1
	mov r8, r0
	mov r7, sl
	movs r0, #3
	str r0, [sp, #0xc]
_0800CC82:
	bl save_getSavePointer_805D9B0
	lsls r4, r6, #2
	adds r0, r7, r0
	add r0, r8
	adds r0, r4, r0
	movs r1, #0xb9
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrb r5, [r0]
	bl save_getSavePointer_805D9B0
	adds r0, r7, r0
	add r0, r8
	adds r4, r4, r0
	movs r2, #0xb9
	lsls r2, r2, #2
	adds r4, r4, r2
	ldrh r0, [r4, #2]
	str r0, [sp]
	ldr r0, [sp, #0xc]
	adds r1, r6, #0
	mov r2, sb
	adds r3, r5, #0
	bl sub_800CA88
	ldr r0, [sp, #0xc]
	adds r0, #2
	str r0, [sp, #0xc]
	adds r6, #1
	cmp r6, #4
	ble _0800CC82
	bl save_getSavePointer_805D9B0
	add r0, sl
	ldr r1, [sp, #8]
	adds r0, r1, r0
	movs r4, #0xbe
	lsls r4, r4, #2
	adds r0, r0, r4
	ldrb r5, [r0]
	bl save_getSavePointer_805D9B0
	add r0, sl
	ldr r2, [sp, #8]
	adds r0, r2, r0
	adds r0, r0, r4
	ldrh r0, [r0, #2]
	str r0, [sp]
	movs r0, #0xf
	movs r1, #5
	mov r2, sb
	adds r3, r5, #0
	bl sub_800CA88
_0800CCF0:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_800CD00
sub_800CD00: @ 0x0800CD00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r4, r0, #0
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	ldr r0, _0800CF10 @ =0x00000D44
	adds r4, r4, r0
	movs r0, #0
	str r0, [sp, #0xc]
	add r0, sp, #0xc
	ldr r5, _0800CF14 @ =0x0200F400
	ldr r2, _0800CF18 @ =0x01000200
	adds r1, r5, #0
	bl CpuFastSet
	ldr r1, [r4]
	ldr r0, [r4, #4]
	adds r1, r1, r0
	mov sl, r1
	movs r2, #0
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r6, r1, #0
	ldr r7, _0800CF1C @ =0xFFFFD000
	adds r3, r7, #0
	ldr r0, _0800CF20 @ =0x000003C9
	adds r4, r0, #0
	adds r1, r5, #0
	adds r1, #0xc4
	adds r5, #0x84
_0800CD44:
	adds r0, r2, r6
	orrs r0, r3
	strh r0, [r5]
	adds r0, r2, r4
	orrs r0, r3
	strh r0, [r1]
	adds r1, #2
	adds r5, #2
	adds r2, #1
	cmp r2, #8
	ble _0800CD44
	mov r0, sl
	bl track_getMKSCTrack
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_805CE3C
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r8, r0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r8, r0
	beq _0800CE28
	mov r1, r8
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_805DE90
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov sb, r0
	adds r0, r4, #0
	bl sub_805DEB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x18]
	add r0, sp, #4
	bl sub_805DF90
	ldr r7, _0800CF14 @ =0x0200F400
	add r2, sp, #4
	movs r6, #0xc2
	lsls r6, r6, #1
	adds r7, r7, r6
	movs r4, #0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0800CDE6
	adds r5, r7, #0
	adds r5, #0x40
	adds r3, r7, #0
	movs r0, #0x1f
	mov ip, r0
_0800CDB6:
	ldrb r0, [r2]
	lsrs r1, r0, #5
	lsls r1, r1, #6
	mov r6, ip
	ands r0, r6
	adds r1, r1, r0
	movs r0, #0xf0
	lsls r0, r0, #8
	orrs r0, r1
	strh r0, [r3]
	adds r1, #0x20
	movs r0, #0xf0
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r5]
	adds r2, #1
	adds r5, #2
	adds r3, #2
	adds r4, #1
	cmp r4, #5
	bge _0800CE0C
	ldrb r0, [r2]
	cmp r0, #0
	bne _0800CDB6
_0800CDE6:
	cmp r4, #5
	bge _0800CE0C
	movs r1, #0xf
	lsls r3, r1, #0xc
	movs r0, #0x20
	adds r2, r3, #0
	orrs r2, r0
	lsls r1, r4, #1
	adds r0, r1, #0
	adds r0, #0x40
	adds r0, r0, r7
	adds r1, r1, r7
_0800CDFE:
	strh r3, [r1]
	strh r2, [r0]
	adds r0, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #5
	blt _0800CDFE
_0800CE0C:
	ldr r6, [sp, #0x18]
	str r6, [sp]
	movs r0, #8
	movs r1, #5
	movs r2, #0
	mov r3, sb
	bl sub_800CA88
	mov r7, sb
	ldr r0, [sp, #0x10]
	str r7, [r0]
	mov r1, r8
	ldr r6, [sp, #0x14]
	str r1, [r6]
_0800CE28:
	movs r6, #0
_0800CE2A:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl sub_805DC28
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r8, r0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r8, r0
	beq _0800CF24
	mov r7, r8
	lsls r0, r7, #0x18
	lsrs r5, r0, #0x18
	adds r0, r5, #0
	bl sub_805DF18
	adds r4, r0, #0
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	mov r0, sl
	bl track_getMKSCTrack
	cmp r4, r0
	bne _0800CF24
	adds r0, r5, #0
	bl sub_805DE90
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov sb, r0
	adds r0, r5, #0
	bl sub_805DEB8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x18]
	adds r0, r5, #0
	add r1, sp, #4
	bl sub_805DEE0
	ldr r6, _0800CF14 @ =0x0200F400
	add r2, sp, #4
	movs r0, #0xf
	mov sl, r0
	movs r1, #0xb1
	lsls r1, r1, #2
	adds r6, r6, r1
	movs r4, #0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0800CECC
	adds r5, r6, #0
	adds r5, #0x40
	adds r3, r6, #0
	movs r7, #0x1f
	mov ip, r7
_0800CE9C:
	ldrb r0, [r2]
	lsrs r1, r0, #5
	lsls r1, r1, #6
	mov r7, ip
	ands r0, r7
	adds r1, r1, r0
	movs r0, #0xf0
	lsls r0, r0, #8
	orrs r0, r1
	strh r0, [r3]
	adds r1, #0x20
	movs r0, #0xf0
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r5]
	adds r2, #1
	adds r5, #2
	adds r3, #2
	adds r4, #1
	cmp r4, #5
	bge _0800CEF2
	ldrb r0, [r2]
	cmp r0, #0
	bne _0800CE9C
_0800CECC:
	cmp r4, #5
	bge _0800CEF2
	mov r1, sl
	lsls r3, r1, #0xc
	movs r0, #0x20
	adds r2, r3, #0
	orrs r2, r0
	lsls r1, r4, #1
	adds r0, r1, #0
	adds r0, #0x40
	adds r0, r0, r6
	adds r1, r1, r6
_0800CEE4:
	strh r3, [r1]
	strh r2, [r0]
	adds r0, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #5
	blt _0800CEE4
_0800CEF2:
	ldr r6, [sp, #0x18]
	str r6, [sp]
	movs r0, #0xd
	movs r1, #5
	movs r2, #0
	mov r3, sb
	bl sub_800CA88
	mov r7, sb
	ldr r0, [sp, #0x10]
	str r7, [r0, #4]
	mov r1, r8
	ldr r6, [sp, #0x14]
	str r1, [r6, #4]
	b _0800CF2C
	.align 2, 0
_0800CF10: .4byte 0x00000D44
_0800CF14: .4byte 0x0200F400
_0800CF18: .4byte 0x01000200
_0800CF1C: .4byte 0xFFFFD000
_0800CF20: .4byte 0x000003C9
_0800CF24:
	adds r6, #1
	cmp r6, #1
	bgt _0800CF2C
	b _0800CE2A
_0800CF2C:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_800CF3C
sub_800CF3C: @ 0x0800CF3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	ldr r0, _0800D0DC @ =0x00000D44
	add r0, r8
	str r0, [sp]
	movs r5, #0xc0
	lsls r5, r5, #0x13
	movs r4, #7
_0800CF56:
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0800D0E0 @ =0x0203EC08
	adds r2, r5, #0
	ldr r3, _0800D0E4 @ =0x81000C00
	bl dmaq_enqueue
	bl main_frameProc
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r5, r5, r1
	subs r4, #1
	cmp r4, #0
	bge _0800CF56
	mov r0, r8
	bl sub_80038B8
	ldr r4, _0800D0E8 @ =_08076FF4
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	ldr r4, _0800D0EC @ =_080B2068
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	ldr r4, _0800D0F0 @ =_0807CD48
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
	movs r2, #0x90
	lsls r2, r2, #1
	adds r4, r4, r2
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #0
	bl pltt_getBuffer
	movs r1, #0
	strh r1, [r0]
	movs r0, #1
	bl pltt_setDirtyFlag
	bl main_frameProc
	ldr r5, _0800D0F4 @ =0x0200C400
	ldr r1, _0800D0F8 @ =0x06008000
	adds r0, r5, #0
	bl sub_800C78C
	ldr r0, _0800D0FC @ =_080B3424
	adds r1, r5, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r6, _0800D100 @ =0x06017400
	ldr r7, _0800D104 @ =0x80000060
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl dmaq_enqueue
	ldr r4, _0800D108 @ =0x000011BC
	add r4, r8
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800D028
	bl dmaq_getVBlankDmaQueue
	ldrb r1, [r4]
	adds r1, #5
	lsls r1, r1, #5
	adds r1, r1, r5
	ldr r3, _0800D10C @ =0x80000010
	adds r2, r6, #0
	bl dmaq_enqueue
_0800D028:
	ldr r4, _0800D110 @ =0x000011E2
	add r4, r8
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800D046
	bl dmaq_getVBlankDmaQueue
	ldrb r1, [r4]
	adds r1, #0xf
	lsls r1, r1, #5
	adds r1, r1, r5
	ldr r2, _0800D114 @ =0x06017460
	ldr r3, _0800D10C @ =0x80000010
	bl dmaq_enqueue
_0800D046:
	bl main_frameProc
	ldr r0, _0800D118 @ =_080B3718
	adds r1, r5, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800D11C @ =0x06007C00
	adds r1, r5, #0
	adds r3, r7, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _0800D120 @ =_0807D1E8
	adds r1, r5, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800D124 @ =0x06004000
	ldr r3, _0800D128 @ =0x80000600
	adds r1, r5, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _0800D12C @ =0x00001128
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	beq _0800D096
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0800D130 @ =_0807D694
	ldr r2, _0800D134 @ =0x06004660
	ldr r3, _0800D138 @ =0x80000100
	bl dmaq_enqueue
_0800D096:
	bl main_frameProc
	movs r7, #0
_0800D09C:
	lsls r2, r7, #1
	adds r1, r2, r7
	lsls r1, r1, #2
	ldr r0, _0800D13C @ =0x000010AC
	add r0, r8
	adds r0, r0, r1
	ldr r0, [r0]
	mov sl, r2
	cmp r0, #0
	beq _0800D148
	lsls r6, r7, #2
	adds r1, r7, #1
	str r1, [sp, #4]
	lsls r0, r7, #3
	adds r0, r0, r6
	lsls r4, r0, #8
	ldr r2, _0800D140 @ =0x02025400
	movs r5, #3
_0800D0C0:
	adds r1, r4, r2
	ldr r0, _0800D144 @ =_080A28C8
	str r2, [sp, #8]
	bl LZ77UnCompWram
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r4, r4, r0
	subs r5, #1
	ldr r2, [sp, #8]
	cmp r5, #0
	bge _0800D0C0
	b _0800D17C
	.align 2, 0
_0800D0DC: .4byte 0x00000D44
_0800D0E0: .4byte 0x0203EC08
_0800D0E4: .4byte 0x81000C00
_0800D0E8: .4byte _08076FF4
_0800D0EC: .4byte _080B2068
_0800D0F0: .4byte _0807CD48
_0800D0F4: .4byte 0x0200C400
_0800D0F8: .4byte 0x06008000
_0800D0FC: .4byte _080B3424
_0800D100: .4byte 0x06017400
_0800D104: .4byte 0x80000060
_0800D108: .4byte 0x000011BC
_0800D10C: .4byte 0x80000010
_0800D110: .4byte 0x000011E2
_0800D114: .4byte 0x06017460
_0800D118: .4byte _080B3718
_0800D11C: .4byte 0x06007C00
_0800D120: .4byte _0807D1E8
_0800D124: .4byte 0x06004000
_0800D128: .4byte 0x80000600
_0800D12C: .4byte 0x00001128
_0800D130: .4byte _0807D694
_0800D134: .4byte 0x06004660
_0800D138: .4byte 0x80000100
_0800D13C: .4byte 0x000010AC
_0800D140: .4byte 0x02025400
_0800D144: .4byte _080A28C8
_0800D148:
	movs r5, #0
	lsls r6, r7, #2
	adds r1, r7, #1
	str r1, [sp, #4]
	ldr r2, _0800D1B4 @ =gTrackDefTable
	mov sb, r2
	lsls r0, r7, #3
	adds r0, r0, r6
	lsls r4, r0, #8
_0800D15A:
	adds r0, r6, r5
	bl track_getMKSCTrack
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	ldr r1, _0800D1B8 @ =0x02025400
	adds r1, r4, r1
	bl LZ77UnCompWram
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r5, #1
	cmp r5, #3
	ble _0800D15A
_0800D17C:
	bl main_frameProc
	mov r1, sl
	adds r0, r1, r7
	lsls r0, r0, #2
	ldr r1, _0800D1BC @ =0x000010E8
	add r1, r8
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0800D1C8
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r4, r0, #8
	ldr r6, _0800D1C0 @ =0x02008400
	movs r5, #3
_0800D19C:
	adds r1, r4, r6
	ldr r0, _0800D1C4 @ =_080A4A68
	bl LZ77UnCompWram
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r4, r4, r2
	subs r5, #1
	cmp r5, #0
	bge _0800D19C
	b _0800D1F4
	.align 2, 0
_0800D1B4: .4byte gTrackDefTable
_0800D1B8: .4byte 0x02025400
_0800D1BC: .4byte 0x000010E8
_0800D1C0: .4byte 0x02008400
_0800D1C4: .4byte _080A4A68
_0800D1C8:
	movs r5, #0
	ldr r7, _0800D2D0 @ =gTrackDefTable
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r4, r0, #8
_0800D1D2:
	adds r0, r6, r5
	bl track_getRetroTrack
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	ldr r1, _0800D2D4 @ =0x02008400
	adds r1, r4, r1
	bl LZ77UnCompWram
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r5, #1
	cmp r5, #3
	ble _0800D1D2
_0800D1F4:
	bl main_frameProc
	ldr r7, [sp, #4]
	cmp r7, #4
	bgt _0800D200
	b _0800D09C
_0800D200:
	mov r0, r8
	bl sub_800E548
	bl main_frameProc
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	movs r1, #0
	strh r1, [r0]
	ldr r4, _0800D2D8 @ =_08079A68
	movs r0, #0
	movs r1, #1
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	movs r0, #0
	movs r1, #0xd
	movs r2, #2
	bl map_getBufferPtr2d
	adds r7, r0, #0
	movs r1, #0
	ldr r6, _0800D2DC @ =0x00000FFF
	movs r2, #0xb0
	lsls r2, r2, #8
	adds r5, r2, #0
_0800D242:
	lsls r0, r1, #6
	adds r4, r1, #1
	adds r2, r7, r0
	movs r3, #0xb
_0800D24A:
	ldrh r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r5
	strh r0, [r2]
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bge _0800D24A
	adds r1, r4, #0
	cmp r1, #1
	ble _0800D242
	movs r0, #1
	bl map_setBufferDirty
	ldr r4, _0800D2E0 @ =_08079F18
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	mov r0, r8
	bl sub_800C9AC
	bl main_frameProc
	ldr r0, [sp]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	adds r0, r1, r0
	cmp r0, #0
	bge _0800D294
	adds r0, #3
_0800D294:
	asrs r0, r0, #2
	bl sub_800E658
	bl main_frameProc
	mov r0, r8
	bl sub_800CB40
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0800D2E4 @ =0x0200F400
	ldr r2, _0800D2E8 @ =0x06003000
	ldr r3, _0800D2EC @ =0x80000400
	bl dmaq_enqueue
	bl main_frameProc
	mov r0, r8
	bl sub_800E5CC
	ldr r1, [sp]
	ldr r0, [r1, #0x24]
	cmp r0, #0
	bne _0800D2F8
	ldr r0, _0800D2F0 @ =0x000011FE
	add r0, r8
	ldrh r1, [r0]
	ldr r1, _0800D2F4 @ =0x00004608
	b _0800D300
	.align 2, 0
_0800D2D0: .4byte gTrackDefTable
_0800D2D4: .4byte 0x02008400
_0800D2D8: .4byte _08079A68
_0800D2DC: .4byte 0x00000FFF
_0800D2E0: .4byte _08079F18
_0800D2E4: .4byte 0x0200F400
_0800D2E8: .4byte 0x06003000
_0800D2EC: .4byte 0x80000400
_0800D2F0: .4byte 0x000011FE
_0800D2F4: .4byte 0x00004608
_0800D2F8:
	ldr r0, _0800D39C @ =0x000011FE
	add r0, r8
	ldrh r1, [r0]
	ldr r1, _0800D3A0 @ =0x00004604
_0800D300:
	strh r1, [r0]
	ldr r1, _0800D3A4 @ =0x00001204
	add r1, r8
	ldrh r0, [r1]
	movs r2, #0
	ldr r0, _0800D3A8 @ =0x00004404
	strh r0, [r1]
	ldr r1, _0800D3AC @ =0x0000120A
	add r1, r8
	ldrh r0, [r1]
	ldr r0, _0800D3B0 @ =0x0000400A
	strh r0, [r1]
	ldr r1, _0800D3B4 @ =0x00001210
	add r1, r8
	ldrh r0, [r1]
	ldr r0, _0800D3B8 @ =0x00000207
	strh r0, [r1]
	ldr r1, _0800D3BC @ =0x00001216
	add r1, r8
	ldrh r0, [r1]
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, _0800D3C0 @ =0x0000121A
	add r1, r8
	ldrh r0, [r1]
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, _0800D3C4 @ =0x000011FC
	add r1, r8
	ldrh r0, [r1]
	movs r0, #0xfa
	lsls r0, r0, #5
	strh r0, [r1]
	ldr r1, _0800D3C8 @ =0x000011F8
	add r1, r8
	movs r0, #3
	str r0, [r1]
	movs r0, #0x90
	lsls r0, r0, #5
	add r0, r8
	ldrh r1, [r0]
	strh r2, [r0]
	ldr r0, _0800D3CC @ =0x00001202
	add r0, r8
	ldrh r1, [r0]
	strh r2, [r0]
	ldr r0, _0800D3D0 @ =0x00001206
	add r0, r8
	ldrh r1, [r0]
	strh r2, [r0]
	ldr r0, _0800D3D4 @ =0x00001208
	add r0, r8
	ldrh r1, [r0]
	strh r2, [r0]
	ldr r0, _0800D3D8 @ =0x0000120C
	add r0, r8
	ldrh r1, [r0]
	strh r2, [r0]
	ldr r0, _0800D3DC @ =0x0000120E
	add r0, r8
	ldrh r1, [r0]
	strh r2, [r0]
	ldr r0, _0800D3E0 @ =0x00001212
	add r0, r8
	ldrh r1, [r0]
	strh r2, [r0]
	ldr r0, _0800D3E4 @ =0x00001214
	add r0, r8
	ldrh r1, [r0]
	strh r2, [r0]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D39C: .4byte 0x000011FE
_0800D3A0: .4byte 0x00004604
_0800D3A4: .4byte 0x00001204
_0800D3A8: .4byte 0x00004404
_0800D3AC: .4byte 0x0000120A
_0800D3B0: .4byte 0x0000400A
_0800D3B4: .4byte 0x00001210
_0800D3B8: .4byte 0x00000207
_0800D3BC: .4byte 0x00001216
_0800D3C0: .4byte 0x0000121A
_0800D3C4: .4byte 0x000011FC
_0800D3C8: .4byte 0x000011F8
_0800D3CC: .4byte 0x00001202
_0800D3D0: .4byte 0x00001206
_0800D3D4: .4byte 0x00001208
_0800D3D8: .4byte 0x0000120C
_0800D3DC: .4byte 0x0000120E
_0800D3E0: .4byte 0x00001212
_0800D3E4: .4byte 0x00001214

	thumb_func_start sub_800D3E8
sub_800D3E8: @ 0x0800D3E8
	push {r4, lr}
	ldr r1, _0800D424 @ =0x00000D44
	adds r2, r0, r1
	ldr r0, [r2, #0x28]
	adds r0, #1
	str r0, [r2, #0x28]
	cmp r0, #7
	ble _0800D408
	movs r1, #0
	str r1, [r2, #0x28]
	ldr r0, [r2, #0x2c]
	adds r0, #1
	str r0, [r2, #0x2c]
	cmp r0, #6
	ble _0800D408
	str r1, [r2, #0x2c]
_0800D408:
	ldr r1, [r2]
	ldr r0, [r2, #4]
	adds r0, r1, r0
	cmp r0, #0
	bge _0800D414
	adds r0, #3
_0800D414:
	asrs r0, r0, #2
	cmp r0, #4
	bhi _0800D4A6
	lsls r0, r0, #2
	ldr r1, _0800D428 @ =_0800D42C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800D424: .4byte 0x00000D44
_0800D428: .4byte _0800D42C
_0800D42C: @ jump table
	.4byte _0800D440 @ case 0
	.4byte _0800D44C @ case 1
	.4byte _0800D458 @ case 2
	.4byte _0800D464 @ case 3
	.4byte _0800D488 @ case 4
_0800D440:
	ldr r4, [r2, #0x2c]
	lsls r4, r4, #5
	ldr r0, _0800D448 @ =_0807CD88
	b _0800D46A
	.align 2, 0
_0800D448: .4byte _0807CD88
_0800D44C:
	ldr r4, [r2, #0x2c]
	lsls r4, r4, #5
	ldr r0, _0800D454 @ =_0807CE68
	b _0800D46A
	.align 2, 0
_0800D454: .4byte _0807CE68
_0800D458:
	ldr r4, [r2, #0x2c]
	lsls r4, r4, #5
	ldr r0, _0800D460 @ =_0807CF48
	b _0800D46A
	.align 2, 0
_0800D460: .4byte _0807CF48
_0800D464:
	ldr r4, [r2, #0x2c]
	lsls r4, r4, #5
	ldr r0, _0800D484 @ =_0807D028
_0800D46A:
	adds r4, r4, r0
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	b _0800D4A6
	.align 2, 0
_0800D484: .4byte _0807D028
_0800D488:
	ldr r4, [r2, #0x2c]
	lsls r4, r4, #5
	ldr r0, _0800D4B4 @ =_0807D108
	adds r4, r4, r0
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
_0800D4A6:
	movs r0, #1
	bl pltt_setDirtyFlag
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D4B4: .4byte _0807D108

	thumb_func_start sub_800D4B8
sub_800D4B8: @ 0x0800D4B8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, _0800D5C0 @ =0x00000D44
	adds r6, r4, r0
	movs r0, #0xee
	mov r8, r0
	movs r0, #0x60
	mov sb, r0
	ldr r5, [r6, #4]
	cmp r5, #0
	beq _0800D526
	ldrh r0, [r6, #0x20]
	adds r0, #0xee
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0800D5C4 @ =0xFFFF0000
	ldr r2, [sp, #8]
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #8]
	ldr r1, [r4, #0x4c]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldr r1, _0800D5C8 @ =gSinTable
	lsls r0, r0, #0x19
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800D4FA
	adds r0, #0x3f
_0800D4FA:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #1
	asrs r0, r0, #0xf
	adds r0, #0x60
	lsls r0, r0, #0x10
	ldr r1, _0800D5CC @ =0x0000FFFF
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #8]
	ldr r0, _0800D5D0 @ =_080C94F8
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_0800D526:
	movs r7, #0xc
	cmp r5, r7
	beq _0800D56C
	ldrh r0, [r6, #0x20]
	add r0, r8
	movs r2, #0
	add r1, sp, #8
	strh r0, [r1]
	ldr r1, [r4, #0x4c]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldr r1, _0800D5C8 @ =gSinTable
	lsls r0, r0, #0x19
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800D548
	adds r0, #0x3f
_0800D548:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #1
	rsbs r0, r0, #0
	asrs r0, r0, #0xf
	add r0, sb
	add r1, sp, #8
	strh r0, [r1, #2]
	ldr r0, _0800D5D4 @ =_080C9500
	str r2, [sp]
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_0800D56C:
	ldrh r0, [r6, #0x20]
	add r0, r8
	movs r4, #0
	add r1, sp, #8
	strh r0, [r1]
	movs r0, #0x2c
	muls r0, r5, r0
	adds r1, r7, #0
	bl __divsi3
	subs r0, #0x16
	add r0, sb
	add r5, sp, #8
	strh r0, [r5, #2]
	ldr r0, _0800D5D8 @ =_080C9318
	str r4, [sp]
	str r4, [sp, #4]
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	ldrh r0, [r6, #0x20]
	add r0, r8
	add r1, sp, #8
	strh r0, [r1]
	mov r0, sb
	strh r0, [r5, #2]
	ldr r0, _0800D5DC @ =_080C92E8
	str r4, [sp]
	str r4, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D5C0: .4byte 0x00000D44
_0800D5C4: .4byte 0xFFFF0000
_0800D5C8: .4byte gSinTable
_0800D5CC: .4byte 0x0000FFFF
_0800D5D0: .4byte _080C94F8
_0800D5D4: .4byte _080C9500
_0800D5D8: .4byte _080C9318
_0800D5DC: .4byte _080C92E8

	thumb_func_start sub_800D5E0
sub_800D5E0: @ 0x0800D5E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov sb, r0
	ldr r4, _0800D674 @ =0x00000D44
	add r4, sb
	movs r7, #0
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0xc]
_0800D5FA:
	ldr r0, [r4, #4]
	adds r0, r0, r7
	mov sl, r0
	bl save_getSavePointer_805D9B0
	mov r1, sl
	lsls r2, r1, #2
	adds r1, r2, r1
	lsls r1, r1, #2
	movs r3, #0xb2
	lsls r3, r3, #3
	adds r1, r1, r3
	adds r0, r0, r1
	ldrb r0, [r0, #0xb]
	movs r3, #1
	ands r3, r0
	ldr r0, _0800D678 @ =0x00001130
	add r0, sb
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _0800D6C2
	ldr r2, [sp, #8]
	ldr r0, _0800D67C @ =0xFFFF0000
	ands r2, r0
	movs r0, #0xd0
	orrs r2, r0
	lsls r0, r7, #0x14
	movs r1, #0xc0
	lsls r1, r1, #0xd
	adds r0, r0, r1
	ldr r1, _0800D680 @ =0x0000FFFF
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #8]
	ldr r0, [sp, #0xc]
	ldrh r1, [r0]
	ldrh r0, [r4, #0x20]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0800D67C @ =0xFFFF0000
	ands r0, r2
	orrs r0, r1
	asrs r1, r0, #0x10
	ldrh r2, [r4, #0x22]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	ldr r2, _0800D680 @ =0x0000FFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	cmp r3, #0
	beq _0800D694
	ldr r0, [r4]
	cmp r7, r0
	beq _0800D688
	ldr r0, [r4, #0x30]
	lsls r0, r0, #3
	ldr r1, _0800D684 @ =_080D9734
	b _0800D6AE
	.align 2, 0
_0800D674: .4byte 0x00000D44
_0800D678: .4byte 0x00001130
_0800D67C: .4byte 0xFFFF0000
_0800D680: .4byte 0x0000FFFF
_0800D684: .4byte _080D9734
_0800D688:
	ldr r0, [r4, #0x38]
	lsls r0, r0, #3
	ldr r1, _0800D690 @ =_080D9724
	b _0800D6AE
	.align 2, 0
_0800D690: .4byte _080D9724
_0800D694:
	ldr r0, [r4]
	cmp r7, r0
	beq _0800D6A8
	ldr r0, [r4, #0x30]
	lsls r0, r0, #3
	ldr r1, _0800D6A4 @ =_080D9694
	b _0800D6AE
	.align 2, 0
_0800D6A4: .4byte _080D9694
_0800D6A8:
	ldr r0, [r4, #0x38]
	lsls r0, r0, #3
	ldr r1, _0800D708 @ =_080D9684
_0800D6AE:
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_0800D6C2:
	movs r5, #0
	adds r3, r7, #1
	str r3, [sp, #0x10]
	add r6, sp, #8
	lsls r0, r7, #4
	adds r0, #0x18
	mov r8, r0
_0800D6D0:
	lsls r0, r5, #2
	movs r1, #0x8e
	lsls r1, r1, #5
	add r1, sb
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0800D72E
	ldr r0, _0800D70C @ =0x000011C8
	add r0, sb
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, sl
	bne _0800D72E
	ldrh r0, [r4, #0x20]
	adds r0, #0xe0
	strh r0, [r6]
	ldrh r0, [r4, #0x22]
	add r0, r8
	strh r0, [r6, #2]
	ldr r0, [r4]
	cmp r7, r0
	beq _0800D714
	ldr r0, [r4, #0x30]
	lsls r0, r0, #3
	ldr r1, _0800D710 @ =_080D96E4
	b _0800D71A
	.align 2, 0
_0800D708: .4byte _080D9684
_0800D70C: .4byte 0x000011C8
_0800D710: .4byte _080D96E4
_0800D714:
	ldr r0, [r4, #0x38]
	lsls r0, r0, #3
	ldr r1, _0800D74C @ =_080D96D4
_0800D71A:
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_0800D72E:
	adds r5, #1
	cmp r5, #1
	ble _0800D6D0
	ldr r7, [sp, #0x10]
	cmp r7, #7
	bgt _0800D73C
	b _0800D5FA
_0800D73C:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800D74C: .4byte _080D96D4

	thumb_func_start sub_800D750
sub_800D750: @ 0x0800D750
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	mov sl, r0
	ldr r7, _0800D798 @ =0x00000D44
	add r7, sl
	movs r0, #0
	str r0, [sp, #0x28]
	movs r1, #0
	str r1, [sp, #0x2c]
	movs r2, #0
	str r2, [sp, #0x30]
	movs r3, #0
	str r3, [sp, #0x34]
	movs r4, #0
	str r4, [sp, #0x38]
	str r0, [r7, #8]
	ldr r0, _0800D79C @ =0x03002E20
	ldr r6, _0800D7A0 @ =0x00000801
	adds r0, r0, r6
	ldrb r0, [r0]
	bl track_getTrackIndex
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #6
	ble _0800D7AA
	cmp r1, #0x13
	bne _0800D7A4
	movs r0, #7
	str r0, [r7]
	b _0800D7AC
	.align 2, 0
_0800D798: .4byte 0x00000D44
_0800D79C: .4byte 0x03002E20
_0800D7A0: .4byte 0x00000801
_0800D7A4:
	movs r0, #6
	str r0, [r7]
	b _0800D7AC
_0800D7AA:
	str r1, [r7]
_0800D7AC:
	ldr r0, [r7]
	subs r0, r1, r0
	str r0, [r7, #4]
	movs r0, #0
	str r0, [r7, #0x10]
	str r0, [r7, #0x14]
	str r0, [r7, #0x18]
	ldr r1, _0800D878 @ =0x0000FF90
	strh r1, [r7, #0x1c]
	strh r0, [r7, #0x1e]
	strh r0, [r7, #0x20]
	strh r0, [r7, #0x22]
	str r0, [r7, #0x28]
	str r0, [r7, #0x2c]
	str r0, [r7, #0x30]
	str r0, [r7, #0x34]
	str r0, [r7, #0x38]
	str r0, [r7, #0x3c]
	str r0, [r7, #0x24]
	mov r0, sl
	bl sub_8001FC0
	ldr r1, _0800D87C @ =0x06002000
	movs r0, #0
	bl map_setBufferDestination
	ldr r1, _0800D880 @ =0x06001000
	movs r0, #1
	bl map_setBufferDestination
	mov r0, sl
	bl sub_800CF3C
	ldr r0, [sp, #0x28]
	lsls r0, r0, #2
	str r0, [sp, #0x48]
_0800D7F4:
	ldr r0, _0800D884 @ =0x0203EC0C
	ldr r0, [r0]
	cmp r0, #0
	bne _0800D800
	bl oam_update
_0800D800:
	bl main_frameProc
	ldr r1, _0800D888 @ =0x000011F4
	add r1, sl
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	mov r1, sl
	ldr r0, [r1, #0x4c]
	adds r0, #1
	str r0, [r1, #0x4c]
	ldr r1, [r7, #0x34]
	adds r1, #1
	str r1, [r7, #0x34]
	ldr r2, _0800D88C @ =_080D9694
	ldr r3, [r7, #0x30]
	lsls r0, r3, #3
	adds r0, r0, r2
	ldrh r0, [r0, #4]
	cmp r1, r0
	ble _0800D838
	movs r1, #0
	str r1, [r7, #0x34]
	adds r0, r3, #1
	str r0, [r7, #0x30]
	cmp r0, #7
	bls _0800D838
	str r1, [r7, #0x30]
_0800D838:
	ldr r0, [r7, #0x3c]
	adds r0, #1
	str r0, [r7, #0x3c]
	ldr r2, _0800D890 @ =_080D9684
	ldr r3, [r7, #0x38]
	lsls r1, r3, #3
	adds r1, r1, r2
	ldrh r1, [r1, #4]
	cmp r0, r1
	ble _0800D85A
	movs r1, #0
	str r1, [r7, #0x3c]
	adds r0, r3, #1
	str r0, [r7, #0x38]
	cmp r0, #1
	bls _0800D85A
	str r1, [r7, #0x38]
_0800D85A:
	ldr r0, _0800D894 @ =0x03004F48
	ldrh r3, [r0]
	ldr r0, _0800D898 @ =0x03004EA0
	ldrh r4, [r0]
	ldr r2, [sp, #0x28]
	cmp r2, #9
	bls _0800D86C
	bl _0800E158
_0800D86C:
	ldr r0, _0800D89C @ =_0800D8A0
	ldr r6, [sp, #0x48]
	adds r0, r6, r0
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800D878: .4byte 0x0000FF90
_0800D87C: .4byte 0x06002000
_0800D880: .4byte 0x06001000
_0800D884: .4byte 0x0203EC0C
_0800D888: .4byte 0x000011F4
_0800D88C: .4byte _080D9694
_0800D890: .4byte _080D9684
_0800D894: .4byte 0x03004F48
_0800D898: .4byte 0x03004EA0
_0800D89C: .4byte _0800D8A0
_0800D8A0: @ jump table
	.4byte _0800D8C8 @ case 0
	.4byte _0800D928 @ case 1
	.4byte _0800DD24 @ case 2
	.4byte _0800DE48 @ case 3
	.4byte _0800DE8A @ case 4
	.4byte _0800DEDE @ case 5
	.4byte _0800DF9E @ case 6
	.4byte _0800E0F8 @ case 7
	.4byte _0800E108 @ case 8
	.4byte _0800E134 @ case 9
_0800D8C8:
	ldr r0, [sp, #0x2c]
	adds r0, #1
	str r0, [sp, #0x2c]
	cmp r0, #0x10
	bgt _0800D900
	ldr r1, _0800D8F8 @ =0x00001216
	add r1, sl
	ldrh r0, [r1]
	movs r0, #0xff
	strh r0, [r1]
	ldr r1, [sp, #0x2c]
	lsls r0, r1, #4
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0800D8E8
	adds r0, #0xf
_0800D8E8:
	asrs r0, r0, #4
	adds r0, #0x10
	ldr r1, _0800D8FC @ =0x0000121A
	add r1, sl
	ldrh r2, [r1]
	strh r0, [r1]
	bl _0800E158
	.align 2, 0
_0800D8F8: .4byte 0x00001216
_0800D8FC: .4byte 0x0000121A
_0800D900:
	ldr r0, _0800D920 @ =0x00001216
	add r0, sl
	ldrh r1, [r0]
	movs r2, #0
	strh r2, [r0]
	ldr r0, _0800D924 @ =0x00001218
	add r0, sl
	ldrh r1, [r0]
	strh r2, [r0]
	movs r2, #1
	str r2, [sp, #0x28]
	movs r3, #0
	str r3, [sp, #0x2c]
	str r2, [r7, #0x10]
	bl _0800E158
	.align 2, 0
_0800D920: .4byte 0x00001216
_0800D924: .4byte 0x00001218
_0800D928:
	ldr r5, [r7]
	ldr r6, [r7, #4]
	str r6, [sp, #0x3c]
	ldr r0, [r7, #8]
	mov r8, r0
	adds r0, r5, r6
	adds r1, r0, #0
	cmp r0, #0
	bge _0800D93C
	adds r1, r0, #3
_0800D93C:
	asrs r1, r1, #2
	str r1, [sp, #0x40]
	adds r6, r7, #4
	adds r1, r0, #0
	ldr r2, [sp, #0x3c]
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _0800D950
	subs r1, #1
_0800D950:
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _0800D95A
	adds r1, #1
_0800D95A:
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _0800D964
	subs r1, #8
_0800D964:
	movs r0, #0x10
	ands r3, r0
	cmp r3, #0
	beq _0800D96E
	adds r1, #8
_0800D96E:
	cmp r1, #0
	bge _0800D974
	movs r1, #0
_0800D974:
	cmp r1, #0x13
	ble _0800D97A
	movs r1, #0x13
_0800D97A:
	ldr r0, [sp, #0x3c]
	adds r0, #1
	cmp r1, r0
	bge _0800D984
	subs r2, r1, #1
_0800D984:
	adds r0, r2, #6
	cmp r1, r0
	ble _0800D98C
	subs r2, r1, #6
_0800D98C:
	cmp r2, #0
	bge _0800D992
	movs r2, #0
_0800D992:
	cmp r2, #0xc
	ble _0800D998
	movs r2, #0xc
_0800D998:
	subs r0, r1, r2
	str r0, [r7]
	str r2, [r6]
	ldr r1, [r7]
	ldr r0, _0800DA0C @ =0x0000112C
	add r0, sl
	ldr r0, [r0]
	cmp r0, #0
	beq _0800D9C8
	cmp r5, r1
	bne _0800D9C8
	ldr r0, [r7, #4]
	ldr r1, [sp, #0x3c]
	cmp r1, r0
	bne _0800D9C8
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r4
	cmp r0, #0
	beq _0800D9C8
	ldr r1, [r7, #8]
	movs r0, #1
	subs r0, r0, r1
	str r0, [r7, #8]
_0800D9C8:
	ldr r0, [r7, #8]
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [r7, #0x24]
	ldr r2, [r7, #4]
	lsls r1, r2, #4
	str r1, [r7, #0xc]
	cmp r8, r0
	beq _0800DA8C
	movs r0, #0x93
	bl m4aSongNumStart
	movs r0, #1
	str r0, [r7, #0x10]
	ldr r1, [r7]
	ldr r0, [r7, #4]
	adds r1, r1, r0
	adds r0, r1, #0
	cmp r1, #0
	bge _0800D9F4
	adds r0, r1, #3
_0800D9F4:
	asrs r0, r0, #2
	ldr r2, [sp, #0x40]
	cmp r2, r0
	beq _0800DA7C
	cmp r0, #4
	bhi _0800DA70
	lsls r0, r0, #2
	ldr r1, _0800DA10 @ =_0800DA14
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800DA0C: .4byte 0x0000112C
_0800DA10: .4byte _0800DA14
_0800DA14: @ jump table
	.4byte _0800DA28 @ case 0
	.4byte _0800DA30 @ case 1
	.4byte _0800DA38 @ case 2
	.4byte _0800DA40 @ case 3
	.4byte _0800DA5C @ case 4
_0800DA28:
	ldr r4, _0800DA2C @ =_0807DCB4
	b _0800DA42
	.align 2, 0
_0800DA2C: .4byte _0807DCB4
_0800DA30:
	ldr r4, _0800DA34 @ =_0807DDC8
	b _0800DA42
	.align 2, 0
_0800DA34: .4byte _0807DDC8
_0800DA38:
	ldr r4, _0800DA3C @ =_0807DEDC
	b _0800DA42
	.align 2, 0
_0800DA3C: .4byte _0807DEDC
_0800DA40:
	ldr r4, _0800DA58 @ =_0807DFF8
_0800DA42:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	b _0800DA70
	.align 2, 0
_0800DA58: .4byte _0807DFF8
_0800DA5C:
	ldr r4, _0800DA88 @ =_0807E10C
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
_0800DA70:
	movs r0, #1
	bl pltt_setDirtyFlag
	movs r0, #2
	bl map_setBufferDirty
_0800DA7C:
	movs r3, #2
	str r3, [sp, #0x28]
	movs r4, #0
	str r4, [sp, #0x2c]
	b _0800E158
	.align 2, 0
_0800DA88: .4byte _0807E10C
_0800DA8C:
	ldr r0, [r7]
	cmp r5, r0
	bne _0800DA9A
	ldr r6, [sp, #0x3c]
	cmp r6, r2
	bne _0800DA9A
	b _0800DC5C
_0800DA9A:
	movs r0, #0x8d
	bl m4aSongNumStart
	movs r0, #1
	str r0, [r7, #0x10]
	ldr r6, _0800DADC @ =0x00000D44
	add r6, sl
	ldr r0, [r6, #0x24]
	mov r8, r6
	cmp r0, #0
	bne _0800DAEC
	movs r4, #0
	ldr r5, _0800DAE0 @ =0x06005800
_0800DAB4:
	bl dmaq_getVBlankDmaQueue
	ldr r2, [r6, #4]
	adds r2, r2, r4
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #8
	ldr r2, _0800DAE4 @ =0x02025400
	adds r1, r1, r2
	adds r2, r5, #0
	ldr r3, _0800DAE8 @ =0x80000180
	bl dmaq_enqueue
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #0xb
	ble _0800DAB4
	b _0800DB16
	.align 2, 0
_0800DADC: .4byte 0x00000D44
_0800DAE0: .4byte 0x06005800
_0800DAE4: .4byte 0x02025400
_0800DAE8: .4byte 0x80000180
_0800DAEC:
	movs r4, #0
	ldr r5, _0800DB34 @ =0x06005800
_0800DAF0:
	bl dmaq_getVBlankDmaQueue
	ldr r2, [r6, #4]
	adds r2, r2, r4
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #8
	ldr r2, _0800DB38 @ =0x02008400
	adds r1, r1, r2
	adds r2, r5, #0
	ldr r3, _0800DB3C @ =0x80000180
	bl dmaq_enqueue
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r5, r5, r1
	adds r4, #1
	cmp r4, #0xb
	ble _0800DAF0
_0800DB16:
	movs r4, #0
_0800DB18:
	lsls r2, r4, #1
	adds r2, #2
	movs r0, #0
	movs r1, #0xd
	bl map_getBufferPtr2d
	mov sb, r0
	mov r2, r8
	ldr r0, [r2]
	cmp r4, r0
	bne _0800DB40
	movs r6, #0xb0
	lsls r6, r6, #8
	b _0800DB58
	.align 2, 0
_0800DB34: .4byte 0x06005800
_0800DB38: .4byte 0x02008400
_0800DB3C: .4byte 0x80000180
_0800DB40:
	mov r3, r8
	ldr r0, [r3, #4]
	adds r0, r4, r0
	movs r1, #1
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #7
	cmp r0, #0
	beq _0800DB56
	movs r1, #0xc0
	lsls r1, r1, #7
_0800DB56:
	adds r6, r1, #0
_0800DB58:
	movs r1, #0
	adds r4, #1
	mov ip, r4
	ldr r2, _0800DBB4 @ =0x00000FFF
_0800DB60:
	lsls r0, r1, #6
	adds r5, r1, #1
	mov r4, sb
	adds r3, r4, r0
	movs r4, #0xb
_0800DB6A:
	ldrh r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	orrs r0, r6
	strh r0, [r3]
	adds r3, #2
	subs r4, #1
	cmp r4, #0
	bge _0800DB6A
	adds r1, r5, #0
	cmp r1, #1
	ble _0800DB60
	mov r4, ip
	cmp r4, #7
	ble _0800DB18
	movs r0, #1
	bl map_setBufferDirty
	ldr r1, [r7]
	ldr r0, [r7, #4]
	adds r1, r1, r0
	adds r0, r1, #0
	cmp r1, #0
	bge _0800DB9C
	adds r0, r1, #3
_0800DB9C:
	asrs r0, r0, #2
	ldr r6, [sp, #0x40]
	cmp r6, r0
	beq _0800DC24
	cmp r0, #4
	bhi _0800DC18
	lsls r0, r0, #2
	ldr r1, _0800DBB8 @ =_0800DBBC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800DBB4: .4byte 0x00000FFF
_0800DBB8: .4byte _0800DBBC
_0800DBBC: @ jump table
	.4byte _0800DBD0 @ case 0
	.4byte _0800DBD8 @ case 1
	.4byte _0800DBE0 @ case 2
	.4byte _0800DBE8 @ case 3
	.4byte _0800DC04 @ case 4
_0800DBD0:
	ldr r4, _0800DBD4 @ =_0807DCB4
	b _0800DBEA
	.align 2, 0
_0800DBD4: .4byte _0807DCB4
_0800DBD8:
	ldr r4, _0800DBDC @ =_0807DDC8
	b _0800DBEA
	.align 2, 0
_0800DBDC: .4byte _0807DDC8
_0800DBE0:
	ldr r4, _0800DBE4 @ =_0807DEDC
	b _0800DBEA
	.align 2, 0
_0800DBE4: .4byte _0807DEDC
_0800DBE8:
	ldr r4, _0800DC00 @ =_0807DFF8
_0800DBEA:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	b _0800DC18
	.align 2, 0
_0800DC00: .4byte _0807DFF8
_0800DC04:
	ldr r4, _0800DC4C @ =_0807E10C
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
_0800DC18:
	movs r0, #1
	bl pltt_setDirtyFlag
	movs r0, #2
	bl map_setBufferDirty
_0800DC24:
	mov r0, sl
	bl sub_800CB40
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0800DC50 @ =0x0200F400
	ldr r2, _0800DC54 @ =0x06003000
	ldr r3, _0800DC58 @ =0x80000400
	bl dmaq_enqueue
	ldr r0, [r7, #4]
	ldr r1, [sp, #0x3c]
	cmp r1, r0
	bne _0800DC42
	b _0800E158
_0800DC42:
	mov r0, sl
	bl sub_800C9AC
	b _0800E158
	.align 2, 0
_0800DC4C: .4byte _0807E10C
_0800DC50: .4byte 0x0200F400
_0800DC54: .4byte 0x06003000
_0800DC58: .4byte 0x80000400
_0800DC5C:
	movs r0, #9
	ands r0, r4
	cmp r0, #0
	beq _0800DCF0
	ldr r3, _0800DCE4 @ =0x00000D44
	add r3, sl
	movs r5, #0
	ldr r0, [r3, #0x24]
	cmp r0, #0
	bne _0800DCC2
	ldr r2, [r3, #4]
	ldr r3, [r3]
	adds r4, r2, r3
	mov ip, r4
	lsls r1, r4, #2
	ldr r0, _0800DCE8 @ =0x00001130
	add r0, sl
	adds r0, r0, r1
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
	movs r4, #0
	movs r0, #0x8e
	lsls r0, r0, #5
	add r0, sl
	ldr r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _0800DCA2
	ldr r0, _0800DCEC @ =0x000011C8
	add r0, sl
	ldrb r0, [r0]
	cmp r0, ip
	beq _0800DCC0
_0800DCA2:
	adds r4, #1
	cmp r4, #1
	bgt _0800DCC2
	lsls r0, r4, #2
	adds r0, r6, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _0800DCA2
	ldr r0, _0800DCEC @ =0x000011C8
	add r0, sl
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r0, r2, r3
	cmp r1, r0
	bne _0800DCA2
_0800DCC0:
	adds r5, #2
_0800DCC2:
	str r5, [sp, #0x38]
	cmp r5, #0
	bne _0800DCCA
	b _0800DF74
_0800DCCA:
	ldr r0, [r7, #0x18]
	cmp r0, #0
	beq _0800DCD6
	cmp r0, #2
	bgt _0800DCD6
	b _0800E158
_0800DCD6:
	movs r0, #0x8e
	bl m4aSongNumStart
	movs r6, #4
	str r6, [sp, #0x28]
	b _0800E158
	.align 2, 0
_0800DCE4: .4byte 0x00000D44
_0800DCE8: .4byte 0x00001130
_0800DCEC: .4byte 0x000011C8
_0800DCF0:
	movs r0, #2
	ands r4, r0
	cmp r4, #0
	bne _0800DCFA
	b _0800E158
_0800DCFA:
	movs r0, #0x90
	bl m4aSongNumStart
	movs r0, #5
	str r0, [r7, #0x18]
	movs r1, #0
	movs r2, #0x11
	ldr r0, _0800DD20 @ =0x00000D96
	add r0, sl
_0800DD0C:
	strb r2, [r0]
	adds r0, #0x18
	adds r1, #1
	cmp r1, #6
	bls _0800DD0C
	movs r0, #8
	str r0, [sp, #0x28]
	movs r1, #0
	str r1, [sp, #0x2c]
	b _0800E158
	.align 2, 0
_0800DD20: .4byte 0x00000D96
_0800DD24:
	ldr r2, [sp, #0x2c]
	adds r2, #1
	str r2, [sp, #0x2c]
	cmp r2, #0x10
	bgt _0800DD5C
	ldr r1, _0800DD58 @ =gSinTable
	lsls r0, r2, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800DD3A
	adds r0, #0x3f
_0800DD3A:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	movs r3, #0x20
	ldrsh r1, [r7, r3]
	movs r0, #0x90
	subs r0, r0, r1
	muls r0, r2, r0
	asrs r0, r0, #0xf
	ldrh r4, [r7, #0x20]
	adds r0, r0, r4
	strh r0, [r7, #0x20]
	b _0800E158
	.align 2, 0
_0800DD58: .4byte gSinTable
_0800DD5C:
	ldr r6, _0800DD94 @ =0x00000D44
	add r6, sl
	ldr r0, [r6, #0x24]
	cmp r0, #0
	bne _0800DDA4
	movs r4, #0
	ldr r5, _0800DD98 @ =0x06005800
_0800DD6A:
	bl dmaq_getVBlankDmaQueue
	ldr r2, [r6, #4]
	adds r2, r2, r4
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #8
	ldr r2, _0800DD9C @ =0x02025400
	adds r1, r1, r2
	adds r2, r5, #0
	ldr r3, _0800DDA0 @ =0x80000180
	bl dmaq_enqueue
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #0xb
	ble _0800DD6A
	b _0800DDCE
	.align 2, 0
_0800DD94: .4byte 0x00000D44
_0800DD98: .4byte 0x06005800
_0800DD9C: .4byte 0x02025400
_0800DDA0: .4byte 0x80000180
_0800DDA4:
	movs r4, #0
	ldr r5, _0800DE00 @ =0x06005800
_0800DDA8:
	bl dmaq_getVBlankDmaQueue
	ldr r2, [r6, #4]
	adds r2, r2, r4
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #8
	ldr r2, _0800DE04 @ =0x02008400
	adds r1, r1, r2
	adds r2, r5, #0
	ldr r3, _0800DE08 @ =0x80000180
	bl dmaq_enqueue
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r5, r5, r1
	adds r4, #1
	cmp r4, #0xb
	ble _0800DDA8
_0800DDCE:
	mov r0, sl
	bl sub_800CB40
	bl dmaq_getVBlankDmaQueue
	ldr r4, _0800DE0C @ =0x0200F400
	ldr r2, _0800DE10 @ =0x06003000
	ldr r3, _0800DE14 @ =0x80000400
	adds r1, r4, #0
	bl dmaq_enqueue
	mov r0, sl
	bl sub_800C9AC
	ldr r2, [r7, #0x24]
	str r2, [sp, #0x30]
	ldr r3, _0800DE18 @ =0xFFFFD000
	adds r4, r4, r3
	cmp r2, #0
	bne _0800DE20
	ldr r0, _0800DE1C @ =_080B34F8
	adds r1, r4, #0
	bl LZ77UnCompWram
	b _0800DE28
	.align 2, 0
_0800DE00: .4byte 0x06005800
_0800DE04: .4byte 0x02008400
_0800DE08: .4byte 0x80000180
_0800DE0C: .4byte 0x0200F400
_0800DE10: .4byte 0x06003000
_0800DE14: .4byte 0x80000400
_0800DE18: .4byte 0xFFFFD000
_0800DE1C: .4byte _080B34F8
_0800DE20:
	ldr r0, _0800DE3C @ =_080B35FC
	adds r1, r4, #0
	bl LZ77UnCompWram
_0800DE28:
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800DE40 @ =0x060154C0
	ldr r3, _0800DE44 @ =0x80000140
	adds r1, r4, #0
	bl dmaq_enqueue
	movs r4, #3
	b _0800DE82
	.align 2, 0
_0800DE3C: .4byte _080B35FC
_0800DE40: .4byte 0x060154C0
_0800DE44: .4byte 0x80000140
_0800DE48:
	ldr r0, [sp, #0x2c]
	adds r0, #1
	str r0, [sp, #0x2c]
	cmp r0, #8
	bgt _0800DE80
	ldr r1, _0800DE7C @ =gSinTable
	lsls r0, r0, #0x1b
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800DE5E
	adds r0, #0x3f
_0800DE5E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #0x20
	ldrsh r0, [r7, r2]
	rsbs r0, r0, #0
	muls r0, r1, r0
	asrs r0, r0, #0xf
	ldrh r3, [r7, #0x20]
	adds r0, r0, r3
	strh r0, [r7, #0x20]
	b _0800E158
	.align 2, 0
_0800DE7C: .4byte gSinTable
_0800DE80:
	movs r4, #1
_0800DE82:
	str r4, [sp, #0x28]
	movs r6, #0
	str r6, [sp, #0x2c]
	b _0800E158
_0800DE8A:
	add r2, sp, #0x10
	mov r0, sl
	add r1, sp, #8
	bl sub_800CD00
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0800DEB8 @ =0x0200F400
	ldr r2, _0800DEBC @ =0x06003000
	ldr r3, _0800DEC0 @ =0x80000400
	bl dmaq_enqueue
	movs r0, #5
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x38]
	cmp r1, #2
	beq _0800DED2
	cmp r1, #2
	bgt _0800DEC4
	cmp r1, #1
	beq _0800DECC
	b _0800E158
	.align 2, 0
_0800DEB8: .4byte 0x0200F400
_0800DEBC: .4byte 0x06003000
_0800DEC0: .4byte 0x80000400
_0800DEC4:
	ldr r2, [sp, #0x38]
	cmp r2, #3
	beq _0800DED8
	b _0800E158
_0800DECC:
	movs r3, #0
	str r3, [sp, #0x34]
	b _0800E158
_0800DED2:
	movs r4, #1
	str r4, [sp, #0x34]
	b _0800E158
_0800DED8:
	movs r6, #0
	str r6, [sp, #0x34]
	b _0800E158
_0800DEDE:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _0800DEF2
	movs r0, #0x90
	bl m4aSongNumStart
	movs r0, #6
	str r0, [sp, #0x28]
	b _0800E158
_0800DEF2:
	movs r0, #9
	ands r0, r4
	cmp r0, #0
	beq _0800DF7C
	ldr r1, [r7]
	ldr r0, [r7, #4]
	adds r0, r1, r0
	cmp r0, #0
	bge _0800DF06
	adds r0, #3
_0800DF06:
	asrs r0, r0, #2
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0800DF70 @ =0x000010AC
	add r0, sl
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0800DF74
	movs r1, #9
	str r1, [sp, #0x28]
	movs r2, #0
	str r2, [sp, #0x2c]
	movs r0, #0x8e
	bl m4aSongNumStart
	ldr r3, [sp, #0x34]
	lsls r4, r3, #2
	adds r0, r4, #0
	add r0, sp
	adds r0, #8
	ldr r0, [r0]
	bl sub_800EDB0
	mov r6, sl
	str r0, [r6, #0x18]
	ldr r1, [r7]
	ldr r0, [r7, #4]
	adds r0, r1, r0
	cmp r0, #0
	bge _0800DF48
	adds r0, #3
_0800DF48:
	asrs r0, r0, #2
	mov r1, sl
	str r0, [r1, #0x1c]
	ldr r1, [r7]
	ldr r0, [r7, #4]
	adds r1, r1, r0
	movs r0, #3
	ands r1, r0
	mov r2, sl
	str r1, [r2, #0x20]
	movs r0, #4
	str r0, [r2, #0x10]
	add r0, sp, #0x10
	adds r0, r4, r0
	ldrb r0, [r0]
	movs r1, #4
	bl sub_805DB30
	b _0800E158
	.align 2, 0
_0800DF70: .4byte 0x000010AC
_0800DF74:
	movs r0, #0x91
	bl m4aSongNumStart
	b _0800E158
_0800DF7C:
	movs r0, #0xc0
	ands r4, r0
	cmp r4, #0
	bne _0800DF86
	b _0800E158
_0800DF86:
	ldr r3, [sp, #0x38]
	cmp r3, #3
	beq _0800DF8E
	b _0800E158
_0800DF8E:
	movs r0, #1
	ldr r4, [sp, #0x34]
	eors r4, r0
	str r4, [sp, #0x34]
	movs r0, #0x8d
	bl m4aSongNumStart
	b _0800E158
_0800DF9E:
	movs r0, #0xa
	str r0, [r7, #0x18]
	ldr r4, _0800DFF0 @ =_08079A68
	movs r0, #0
	movs r1, #1
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	ldr r6, _0800DFF4 @ =0x00000D44
	add r6, sl
	ldr r0, [r6, #0x24]
	mov r8, r6
	cmp r0, #0
	bne _0800E004
	movs r4, #0
	ldr r5, _0800DFF8 @ =0x06005800
_0800DFC6:
	bl dmaq_getVBlankDmaQueue
	ldr r2, [r6, #4]
	adds r2, r2, r4
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #8
	ldr r2, _0800DFFC @ =0x02025400
	adds r1, r1, r2
	adds r2, r5, #0
	ldr r3, _0800E000 @ =0x80000180
	bl dmaq_enqueue
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #0xb
	ble _0800DFC6
	b _0800E02E
	.align 2, 0
_0800DFF0: .4byte _08079A68
_0800DFF4: .4byte 0x00000D44
_0800DFF8: .4byte 0x06005800
_0800DFFC: .4byte 0x02025400
_0800E000: .4byte 0x80000180
_0800E004:
	movs r4, #0
	ldr r5, _0800E04C @ =0x06005800
_0800E008:
	bl dmaq_getVBlankDmaQueue
	ldr r2, [r6, #4]
	adds r2, r2, r4
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #8
	ldr r2, _0800E050 @ =0x02008400
	adds r1, r1, r2
	adds r2, r5, #0
	ldr r3, _0800E054 @ =0x80000180
	bl dmaq_enqueue
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r5, r5, r1
	adds r4, #1
	cmp r4, #0xb
	ble _0800E008
_0800E02E:
	movs r4, #0
_0800E030:
	lsls r2, r4, #1
	adds r2, #2
	movs r0, #0
	movs r1, #0xd
	bl map_getBufferPtr2d
	mov sb, r0
	mov r2, r8
	ldr r0, [r2]
	cmp r4, r0
	bne _0800E058
	movs r6, #0xb0
	lsls r6, r6, #8
	b _0800E070
	.align 2, 0
_0800E04C: .4byte 0x06005800
_0800E050: .4byte 0x02008400
_0800E054: .4byte 0x80000180
_0800E058:
	mov r3, r8
	ldr r0, [r3, #4]
	adds r0, r4, r0
	movs r1, #1
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #7
	cmp r0, #0
	beq _0800E06E
	movs r1, #0xc0
	lsls r1, r1, #7
_0800E06E:
	adds r6, r1, #0
_0800E070:
	movs r1, #0
	adds r4, #1
	mov ip, r4
	ldr r2, _0800E0DC @ =0x00000FFF
_0800E078:
	lsls r0, r1, #6
	adds r5, r1, #1
	mov r4, sb
	adds r3, r4, r0
	movs r4, #0xb
_0800E082:
	ldrh r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	orrs r0, r6
	strh r0, [r3]
	adds r3, #2
	subs r4, #1
	cmp r4, #0
	bge _0800E082
	adds r1, r5, #0
	cmp r1, #1
	ble _0800E078
	mov r4, ip
	cmp r4, #7
	ble _0800E030
	movs r0, #1
	bl map_setBufferDirty
	mov r0, sl
	bl sub_800CB40
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0800E0E0 @ =0x0200F400
	ldr r2, _0800E0E4 @ =0x06003000
	ldr r3, _0800E0E8 @ =0x80000400
	bl dmaq_enqueue
	ldr r1, _0800E0EC @ =0x000011FC
	add r1, sl
	ldrh r3, [r1]
	movs r6, #0x80
	lsls r6, r6, #3
	adds r0, r6, #0
	ldrh r2, [r1]
	orrs r0, r3
	strh r0, [r1]
	ldr r1, _0800E0F0 @ =0x00001204
	add r1, sl
	ldrh r0, [r1]
	ldr r0, _0800E0F4 @ =0x00004404
	strh r0, [r1]
	movs r0, #1
	str r0, [sp, #0x28]
	b _0800E158
	.align 2, 0
_0800E0DC: .4byte 0x00000FFF
_0800E0E0: .4byte 0x0200F400
_0800E0E4: .4byte 0x06003000
_0800E0E8: .4byte 0x80000400
_0800E0EC: .4byte 0x000011FC
_0800E0F0: .4byte 0x00001204
_0800E0F4: .4byte 0x00004404
_0800E0F8:
	ldr r0, [r7, #0x18]
	cmp r0, #7
	bne _0800E158
	movs r1, #8
	str r1, [sp, #0x28]
	movs r2, #0
	str r2, [sp, #0x2c]
	b _0800E158
_0800E108:
	ldr r3, [sp, #0x2c]
	adds r3, #1
	str r3, [sp, #0x2c]
	cmp r3, #0x10
	bgt _0800E130
	ldr r1, _0800E128 @ =0x00001216
	add r1, sl
	ldrh r0, [r1]
	movs r0, #0xff
	strh r0, [r1]
	ldr r0, _0800E12C @ =0x0000121A
	add r0, sl
	ldrh r1, [r0]
	strh r3, [r0]
	b _0800E158
	.align 2, 0
_0800E128: .4byte 0x00001216
_0800E12C: .4byte 0x0000121A
_0800E130:
	movs r0, #1
	b _0800E4C0
_0800E134:
	ldr r6, [sp, #0x2c]
	adds r6, #1
	str r6, [sp, #0x2c]
	cmp r6, #0x10
	ble _0800E142
	movs r0, #0
	b _0800E4C0
_0800E142:
	ldr r1, _0800E264 @ =0x00001216
	add r1, sl
	ldrh r0, [r1]
	movs r0, #0xff
	strh r0, [r1]
	ldr r0, _0800E268 @ =0x0000121A
	add r0, sl
	ldrh r1, [r0]
	mov r1, sp
	ldrh r1, [r1, #0x2c]
	strh r1, [r0]
_0800E158:
	ldrh r2, [r7, #0x20]
	movs r0, #0x90
	lsls r0, r0, #5
	add r0, sl
	ldrh r1, [r0]
	movs r5, #0
	strh r2, [r0]
	ldrh r0, [r7, #0x20]
	rsbs r0, r0, #0
	ldr r1, _0800E26C @ =0x00001206
	add r1, sl
	ldrh r2, [r1]
	strh r0, [r1]
	ldrh r2, [r7, #0x22]
	ldr r0, _0800E270 @ =0x00001208
	add r0, sl
	ldrh r1, [r0]
	strh r2, [r0]
	ldrh r0, [r7, #0x20]
	rsbs r0, r0, #0
	ldr r1, _0800E274 @ =0x0000120C
	add r1, sl
	ldrh r2, [r1]
	strh r0, [r1]
	movs r0, #0
	bl pltt_getBuffer
	adds r2, r0, #0
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r2, r2, r3
	ldr r0, _0800E278 @ =_080B23B0
	adds r1, r0, #0
	adds r1, #0x20
	mov r4, sl
	ldr r3, [r4, #0x4c]
	movs r4, #0x10
	str r4, [sp]
	bl sub_8005E04
	mov r0, sl
	bl sub_800D3E8
	mov r0, sl
	bl sub_800D4B8
	ldr r6, [sp, #0x28]
	cmp r6, #5
	beq _0800E20A
	cmp r6, #9
	beq _0800E20A
	ldr r0, _0800E27C @ =0x0000112C
	add r0, sl
	ldr r0, [r0]
	cmp r0, #0
	beq _0800E20A
	ldrh r0, [r7, #0x20]
	adds r0, #0x9c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x98
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [sp, #0x18]
	ldr r0, _0800E280 @ =_080C94D0
	add r4, sp, #0x18
	str r5, [sp]
	str r5, [sp, #4]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _0800E20A
	ldrh r0, [r7, #0x20]
	adds r0, #0x80
	strh r0, [r4]
	movs r0, #9
	strh r0, [r4, #2]
	ldr r0, _0800E284 @ =_080C9508
	str r5, [sp]
	str r5, [sp, #4]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_0800E20A:
	ldr r0, [r7, #0x24]
	cmp r0, #0
	bne _0800E21C
	ldr r1, [sp, #0x28]
	cmp r1, #2
	beq _0800E21C
	mov r0, sl
	bl sub_800D5E0
_0800E21C:
	ldr r2, [sp, #0x28]
	cmp r2, #5
	beq _0800E226
	cmp r2, #9
	bne _0800E2A8
_0800E226:
	ldr r0, _0800E288 @ =0xFFFF0000
	ldr r1, [sp, #0x1c]
	ands r1, r0
	movs r0, #0x32
	orrs r1, r0
	str r1, [sp, #0x1c]
	ldr r2, _0800E28C @ =_080D9784
	ldr r3, [sp, #0x34]
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r2, [r0]
	lsls r2, r2, #0x10
	ldr r0, _0800E290 @ =0x0000FFFF
	ands r1, r0
	orrs r1, r2
	str r1, [sp, #0x1c]
	mov r4, sl
	ldr r2, [r4, #0x4c]
	movs r0, #0x10
	ands r2, r0
	cmp r2, #0
	beq _0800E298
	ldr r0, _0800E294 @ =_080C962C
	add r1, sp, #0x1c
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r3, #0
	bl oam_renderCellData
	b _0800E2A8
	.align 2, 0
_0800E264: .4byte 0x00001216
_0800E268: .4byte 0x0000121A
_0800E26C: .4byte 0x00001206
_0800E270: .4byte 0x00001208
_0800E274: .4byte 0x0000120C
_0800E278: .4byte _080B23B0
_0800E27C: .4byte 0x0000112C
_0800E280: .4byte _080C94D0
_0800E284: .4byte _080C9508
_0800E288: .4byte 0xFFFF0000
_0800E28C: .4byte _080D9784
_0800E290: .4byte 0x0000FFFF
_0800E294: .4byte _080C962C
_0800E298:
	ldr r0, _0800E338 @ =_080C9648
	add r1, sp, #0x1c
	str r2, [sp]
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_0800E2A8:
	ldr r6, [sp, #0x28]
	cmp r6, #5
	beq _0800E350
	cmp r6, #9
	beq _0800E350
	ldr r0, [r7, #0x24]
	lsls r1, r6, #2
	str r1, [sp, #0x48]
	cmp r0, #0
	bne _0800E39A
	ldr r3, _0800E33C @ =0x00000D44
	add r3, sl
	movs r5, #0
	ldr r0, [r3, #0x24]
	cmp r0, #0
	bne _0800E31A
	ldr r2, [r3, #4]
	ldr r3, [r3]
	adds r4, r2, r3
	mov ip, r4
	lsls r1, r4, #2
	ldr r0, _0800E340 @ =0x00001130
	add r0, sl
	adds r0, r0, r1
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
	movs r4, #0
	movs r0, #0x8e
	lsls r0, r0, #5
	add r0, sl
	ldr r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	beq _0800E2FA
	ldr r0, _0800E344 @ =0x000011C8
	add r0, sl
	ldrb r0, [r0]
	cmp r0, ip
	beq _0800E318
_0800E2FA:
	adds r4, #1
	cmp r4, #1
	bgt _0800E31A
	lsls r0, r4, #2
	adds r0, r6, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _0800E2FA
	ldr r0, _0800E344 @ =0x000011C8
	add r0, sl
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r0, r2, r3
	cmp r1, r0
	bne _0800E2FA
_0800E318:
	adds r5, #2
_0800E31A:
	str r5, [sp, #0x38]
	cmp r5, #0
	beq _0800E39A
	ldr r0, _0800E348 @ =0x009A0028
	str r0, [sp, #0x20]
	ldr r0, _0800E34C @ =_080C95F4
	add r1, sp, #0x20
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r3, #0
	bl oam_renderCellData
	b _0800E39A
	.align 2, 0
_0800E338: .4byte _080C9648
_0800E33C: .4byte 0x00000D44
_0800E340: .4byte 0x00001130
_0800E344: .4byte 0x000011C8
_0800E348: .4byte 0x009A0028
_0800E34C: .4byte _080C95F4
_0800E350:
	ldr r4, _0800E4A0 @ =0x0200F604
	ldrh r0, [r4]
	cmp r0, #0
	beq _0800E370
	movs r2, #0
	movs r0, #0x32
	add r1, sp, #0x20
	strh r0, [r1]
	movs r0, #0x41
	strh r0, [r1, #2]
	ldr r0, _0800E4A4 @ =_080C95BC
	str r2, [sp]
	str r2, [sp, #4]
	movs r3, #0
	bl oam_renderCellData
_0800E370:
	movs r6, #0xa0
	lsls r6, r6, #1
	adds r0, r4, r6
	ldrh r0, [r0]
	ldr r1, [sp, #0x28]
	lsls r1, r1, #2
	str r1, [sp, #0x48]
	cmp r0, #0
	beq _0800E39A
	movs r2, #0
	movs r0, #0x32
	add r1, sp, #0x20
	strh r0, [r1]
	movs r0, #0x69
	strh r0, [r1, #2]
	ldr r0, _0800E4A8 @ =_080C93F8
	str r2, [sp]
	str r2, [sp, #4]
	movs r3, #0
	bl oam_renderCellData
_0800E39A:
	mov r2, sl
	ldr r0, [r2, #0x4c]
	ldr r2, _0800E4AC @ =gSinTable
	lsls r0, r0, #0x1b
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800E3AA
	adds r0, #0x3f
_0800E3AA:
	asrs r1, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	ldr r1, _0800E4B0 @ =0x000003FF
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
	movs r0, #1
	bl pltt_getBuffer
	movs r3, #0
	str r3, [sp, #0x44]
	movs r4, #0x1f
	mov ip, r4
	movs r6, #0x1f
	mov r8, r6
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r1, r0, r1
	str r1, [sp, #0x4c]
_0800E3E4:
	ldr r0, _0800E4B4 @ =_080D9788
	ldr r2, [sp, #0x44]
	lsls r1, r2, #1
	adds r0, r1, r0
	ldrh r2, [r0]
	mov r5, r8
	ands r5, r2
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x15
	mov r3, ip
	ands r4, r3
	lsrs r2, r2, #0x1a
	ands r2, r3
	ldr r0, _0800E4B8 @ =_080D978C
	adds r1, r1, r0
	ldrh r1, [r1]
	mov r0, r8
	ands r0, r1
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x15
	mov r6, ip
	ands r3, r6
	lsrs r1, r1, #0x1a
	ands r1, r6
	subs r0, r0, r5
	mov r6, sb
	muls r6, r0, r6
	adds r0, r6, #0
	asrs r0, r0, #0xf
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	subs r3, r3, r4
	mov r0, sb
	muls r0, r3, r0
	asrs r0, r0, #0xf
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	subs r1, r1, r2
	mov r0, sb
	muls r0, r1, r0
	asrs r0, r0, #0xf
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, r8
	ands r5, r0
	ands r4, r0
	lsls r4, r4, #5
	orrs r5, r4
	ands r2, r0
	lsls r2, r2, #0xa
	orrs r5, r2
	ldr r1, [sp, #0x4c]
	strh r5, [r1]
	adds r1, #2
	str r1, [sp, #0x4c]
	ldr r2, [sp, #0x44]
	adds r2, #1
	str r2, [sp, #0x44]
	cmp r2, #1
	ble _0800E3E4
	movs r0, #1
	bl pltt_setDirtyFlag
	ldr r2, [r7, #0x24]
	cmp r2, #0
	beq _0800E472
	bl _0800D7F4
_0800E472:
	ldr r3, [sp, #0x28]
	cmp r3, #2
	bne _0800E47C
	bl _0800D7F4
_0800E47C:
	ldrh r0, [r7, #0x20]
	adds r0, #0xd8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [sp, #0x24]
	ldr r0, _0800E4BC @ =_080C96D4
	add r1, sp, #0x24
	str r2, [sp]
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	bl _0800D7F4
	.align 2, 0
_0800E4A0: .4byte 0x0200F604
_0800E4A4: .4byte _080C95BC
_0800E4A8: .4byte _080C93F8
_0800E4AC: .4byte gSinTable
_0800E4B0: .4byte 0x000003FF
_0800E4B4: .4byte _080D9788
_0800E4B8: .4byte _080D978C
_0800E4BC: .4byte _080C96D4
_0800E4C0:
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_800E4D0
sub_800E4D0: @ 0x0800E4D0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	adds r5, r3, #0
	lsls r2, r2, #0x10
	lsrs r3, r2, #0x10
	adds r4, r3, #0
	ldr r1, [r7]
	ldr r0, [r6]
	adds r2, r1, r0
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _0800E4EE
	subs r2, #1
_0800E4EE:
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _0800E4F8
	adds r2, #1
_0800E4F8:
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _0800E502
	subs r2, #8
_0800E502:
	movs r0, #0x10
	ands r4, r0
	cmp r4, #0
	beq _0800E50C
	adds r2, #8
_0800E50C:
	cmp r2, #0
	bge _0800E512
	movs r2, #0
_0800E512:
	subs r0, r5, #1
	cmp r2, r0
	ble _0800E51A
	adds r2, r0, #0
_0800E51A:
	adds r0, r1, #1
	cmp r2, r0
	bge _0800E522
	subs r1, r2, #1
_0800E522:
	adds r0, r1, #6
	cmp r2, r0
	ble _0800E52A
	subs r1, r2, #6
_0800E52A:
	cmp r1, #0
	bge _0800E530
	movs r1, #0
_0800E530:
	adds r3, r5, #0
	subs r3, #8
	cmp r1, r3
	ble _0800E53A
	adds r1, r3, #0
_0800E53A:
	subs r0, r2, r1
	str r0, [r6]
	str r1, [r7]
	adds r0, r0, r1
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_800E548
sub_800E548: @ 0x0800E548
	push {r4, r5, r6, lr}
	ldr r1, _0800E580 @ =0x00000D44
	adds r6, r0, r1
	ldr r0, [r6, #0x24]
	cmp r0, #0
	bne _0800E590
	movs r4, #0
	ldr r5, _0800E584 @ =0x06005800
_0800E558:
	bl dmaq_getVBlankDmaQueue
	ldr r2, [r6, #4]
	adds r2, r2, r4
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #8
	ldr r2, _0800E588 @ =0x02025400
	adds r1, r1, r2
	adds r2, r5, #0
	ldr r3, _0800E58C @ =0x80000180
	bl dmaq_enqueue
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #0xb
	ble _0800E558
	b _0800E5BA
	.align 2, 0
_0800E580: .4byte 0x00000D44
_0800E584: .4byte 0x06005800
_0800E588: .4byte 0x02025400
_0800E58C: .4byte 0x80000180
_0800E590:
	movs r4, #0
	ldr r5, _0800E5C0 @ =0x06005800
_0800E594:
	bl dmaq_getVBlankDmaQueue
	ldr r2, [r6, #4]
	adds r2, r2, r4
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #8
	ldr r2, _0800E5C4 @ =0x02008400
	adds r1, r1, r2
	adds r2, r5, #0
	ldr r3, _0800E5C8 @ =0x80000180
	bl dmaq_enqueue
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r5, r5, r1
	adds r4, #1
	cmp r4, #0xb
	ble _0800E594
_0800E5BA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E5C0: .4byte 0x06005800
_0800E5C4: .4byte 0x02008400
_0800E5C8: .4byte 0x80000180

	thumb_func_start sub_800E5CC
sub_800E5CC: @ 0x0800E5CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _0800E5F8 @ =0x00000D44
	adds r1, r1, r0
	mov r8, r1
	movs r4, #0
_0800E5DA:
	lsls r2, r4, #1
	adds r2, #2
	movs r0, #0
	movs r1, #0xd
	bl map_getBufferPtr2d
	mov ip, r0
	mov r1, r8
	ldr r0, [r1]
	cmp r4, r0
	bne _0800E5FC
	movs r5, #0xb0
	lsls r5, r5, #8
	b _0800E614
	.align 2, 0
_0800E5F8: .4byte 0x00000D44
_0800E5FC:
	mov r0, r8
	ldr r1, [r0, #4]
	adds r1, r4, r1
	movs r0, #1
	ands r1, r0
	movs r0, #0xa0
	lsls r0, r0, #7
	cmp r1, #0
	beq _0800E612
	movs r0, #0xc0
	lsls r0, r0, #7
_0800E612:
	adds r5, r0, #0
_0800E614:
	movs r1, #0
	adds r6, r4, #1
	ldr r7, _0800E654 @ =0x00000FFF
_0800E61A:
	lsls r0, r1, #6
	adds r4, r1, #1
	mov r1, ip
	adds r3, r1, r0
	movs r2, #0xb
_0800E624:
	ldrh r1, [r3]
	adds r0, r7, #0
	ands r0, r1
	orrs r0, r5
	strh r0, [r3]
	adds r3, #2
	subs r2, #1
	cmp r2, #0
	bge _0800E624
	adds r1, r4, #0
	cmp r1, #1
	ble _0800E61A
	adds r4, r6, #0
	cmp r4, #7
	ble _0800E5DA
	movs r0, #1
	bl map_setBufferDirty
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E654: .4byte 0x00000FFF

	thumb_func_start sub_800E658
sub_800E658: @ 0x0800E658
	push {r4, lr}
	cmp r0, #4
	bhi _0800E6C8
	lsls r0, r0, #2
	ldr r1, _0800E668 @ =_0800E66C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800E668: .4byte _0800E66C
_0800E66C: @ jump table
	.4byte _0800E680 @ case 0
	.4byte _0800E688 @ case 1
	.4byte _0800E690 @ case 2
	.4byte _0800E698 @ case 3
	.4byte _0800E6B4 @ case 4
_0800E680:
	ldr r4, _0800E684 @ =_0807DCB4
	b _0800E69A
	.align 2, 0
_0800E684: .4byte _0807DCB4
_0800E688:
	ldr r4, _0800E68C @ =_0807DDC8
	b _0800E69A
	.align 2, 0
_0800E68C: .4byte _0807DDC8
_0800E690:
	ldr r4, _0800E694 @ =_0807DEDC
	b _0800E69A
	.align 2, 0
_0800E694: .4byte _0807DEDC
_0800E698:
	ldr r4, _0800E6B0 @ =_0807DFF8
_0800E69A:
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	b _0800E6C8
	.align 2, 0
_0800E6B0: .4byte _0807DFF8
_0800E6B4:
	ldr r4, _0800E6DC @ =_0807E10C
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
_0800E6C8:
	movs r0, #1
	bl pltt_setDirtyFlag
	movs r0, #2
	bl map_setBufferDirty
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E6DC: .4byte _0807E10C

	thumb_func_start sub_0800E6E0
sub_0800E6E0: @ 0x0800E6E0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	mov r8, r2
	movs r6, #0
	lsls r7, r3, #0xc
	adds r5, r1, #0
	adds r5, #0x40
	adds r4, r1, #0
_0800E6F6:
	mov r1, sb
	adds r0, r1, r6
	ldrb r0, [r0]
	bl sub_80143D0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add r0, r8
	adds r1, r7, #0
	orrs r1, r0
	strh r1, [r4]
	adds r0, #0x20
	orrs r0, r7
	strh r0, [r5]
	adds r5, #2
	adds r4, #2
	adds r6, #1
	cmp r6, #4
	ble _0800E6F6
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_800E728
sub_800E728: @ 0x0800E728
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	lsls r4, r3, #0xc
	movs r0, #0x10
	ands r0, r5
	cmp r0, #0
	beq _0800E744
	movs r1, #0
	ldr r7, [sp, #0x14]
	ldr r0, [sp, #0x18]
	lsls r4, r0, #0xc
	b _0800E75C
_0800E744:
	movs r0, #7
	ands r0, r5
	bl sub_800EDB0
	adds r5, r0, #0
	movs r1, #2
	cmp r5, #3
	beq _0800E75C
	adds r1, r5, #0
	cmp r1, #2
	bne _0800E75C
	movs r1, #3
_0800E75C:
	lsls r1, r1, #2
	adds r1, r7, r1
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r6]
	adds r0, r1, #1
	orrs r0, r4
	strh r0, [r6, #2]
	adds r2, r6, #0
	adds r2, #0x40
	adds r0, r1, #2
	orrs r0, r4
	strh r0, [r2]
	adds r0, r6, #0
	adds r0, #0x42
	adds r1, #3
	orrs r4, r1
	strh r4, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800E788
sub_800E788: @ 0x0800E788
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov r8, r1
	adds r5, r2, #0
	ldr r1, [sp, #0x18]
	lsls r7, r3, #0xc
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _0800E7C4
	ldr r0, [sp, #0x1c]
	lsls r0, r0, #0xc
	adds r3, r1, #0
	adds r3, #0x1b
	adds r1, #0x3b
	orrs r3, r0
	orrs r1, r0
	adds r0, r5, #0
	adds r0, #0x40
	movs r4, #4
_0800E7B4:
	strh r3, [r2]
	strh r1, [r0]
	adds r0, #2
	adds r2, #2
	subs r4, #1
	cmp r4, #0
	bge _0800E7B4
	b _0800E810
_0800E7C4:
	movs r0, #7
	ands r0, r4
	bl sub_800EDB0
	adds r4, r0, #0
	ldr r1, _0800E81C @ =_080D9774
	lsls r0, r4, #1
	adds r2, r0, r1
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r6, r5, #0
	adds r6, #0x40
	lsls r0, r0, #5
	ldrb r2, [r2]
	adds r0, r0, r2
	movs r4, #4
	lsls r0, r0, #1
	adds r1, r0, #0
	adds r1, #0x40
	mov r3, r8
	adds r2, r1, r3
	adds r3, r0, r3
_0800E7F2:
	ldrh r1, [r3]
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r5]
	ldrh r1, [r2]
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r6]
	adds r6, #2
	adds r2, #2
	adds r3, #2
	adds r5, #2
	subs r4, #1
	cmp r4, #0
	bge _0800E7F2
_0800E810:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E81C: .4byte _080D9774

	thumb_func_start sub_0800E820
sub_0800E820: @ 0x0800E820
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r4, r1, #0
	mov ip, r2
	ldr r0, [sp, #0x1c]
	lsls r0, r0, #5
	adds r3, r3, r0
	lsls r3, r3, #1
	adds r7, r7, r3
	movs r5, #0
	cmp r5, ip
	bge _0800E8AA
	ldrb r0, [r4]
	cmp r0, #0
	beq _0800E880
	ldr r0, [sp, #0x20]
	lsls r0, r0, #0xc
	mov sb, r0
	adds r2, r7, #0
	adds r2, #0x40
	adds r3, r7, #0
	movs r1, #0x1f
	mov r8, r1
_0800E854:
	ldrb r0, [r4]
	lsrs r1, r0, #5
	lsls r1, r1, #6
	mov r6, r8
	ands r0, r6
	adds r1, r1, r0
	mov r0, sb
	orrs r0, r1
	strh r0, [r3]
	adds r1, #0x20
	mov r0, sb
	orrs r1, r0
	strh r1, [r2]
	adds r4, #1
	adds r2, #2
	adds r3, #2
	adds r5, #1
	cmp r5, ip
	bge _0800E8AA
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800E854
_0800E880:
	cmp r5, ip
	bge _0800E8AA
	ldr r1, [sp, #0x20]
	lsls r4, r1, #0xc
	movs r0, #0x20
	adds r2, r4, #0
	orrs r2, r0
	lsls r1, r5, #1
	adds r0, r1, #0
	adds r0, #0x40
	adds r3, r0, r7
	adds r0, r1, r7
	mov r6, ip
	subs r5, r6, r5
_0800E89C:
	strh r4, [r0]
	strh r2, [r3]
	adds r3, #2
	adds r0, #2
	subs r5, #1
	cmp r5, #0
	bne _0800E89C
_0800E8AA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800E8B8
sub_0800E8B8: @ 0x0800E8B8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0800E924 @ =0x00000D44
	adds r3, r4, r0
	movs r6, #0
	ldr r0, [r3, #0x24]
	cmp r0, #0
	bne _0800E91C
	ldr r2, [r3, #4]
	ldr r3, [r3]
	adds r7, r2, r3
	lsls r1, r7, #2
	ldr r5, _0800E928 @ =0x00001130
	adds r0, r4, r5
	adds r0, r0, r1
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r6, r0, #0x1f
	movs r5, #0
	movs r1, #0x8e
	lsls r1, r1, #5
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0800E8F6
	adds r1, #8
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, r7
	beq _0800E91A
_0800E8F6:
	adds r5, #1
	cmp r5, #1
	bgt _0800E91C
	lsls r0, r5, #2
	movs r7, #0x8e
	lsls r7, r7, #5
	adds r1, r4, r7
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0800E8F6
	ldr r1, _0800E92C @ =0x000011C8
	adds r0, r4, r1
	adds r0, r0, r5
	ldrb r1, [r0]
	adds r0, r2, r3
	cmp r1, r0
	bne _0800E8F6
_0800E91A:
	adds r6, #2
_0800E91C:
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800E924: .4byte 0x00000D44
_0800E928: .4byte 0x00001130
_0800E92C: .4byte 0x000011C8

	thumb_func_start sub_800E930
sub_800E930: @ 0x0800E930
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r1, [sp, #0x14]
	movs r0, #0
	cmp r1, #0xd
	bls _0800E944
	b _0800EB64
_0800E944:
	lsls r0, r1, #2
	ldr r1, _0800E950 @ =_0800E954
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800E950: .4byte _0800E954
_0800E954: @ jump table
	.4byte _0800E98C @ case 0
	.4byte _0800E994 @ case 1
	.4byte _0800E9A2 @ case 2
	.4byte _0800E9B4 @ case 3
	.4byte _0800E9D2 @ case 4
	.4byte _0800E9D8 @ case 5
	.4byte _0800EA24 @ case 6
	.4byte _0800EA36 @ case 7
	.4byte _0800EA4A @ case 8
	.4byte _0800EA6A @ case 9
	.4byte _0800EA76 @ case 10
	.4byte _0800EAC8 @ case 11
	.4byte _0800EB08 @ case 12
	.4byte _0800EB30 @ case 13
_0800E98C:
	subs r0, r7, r6
	muls r0, r4, r0
	adds r1, r5, #0
	b _0800E9CA
_0800E994:
	adds r1, r4, #0
	muls r1, r4, r1
	subs r0, r7, r6
	muls r0, r1, r0
	adds r1, r5, #0
	muls r1, r5, r1
	b _0800E9CA
_0800E9A2:
	adds r0, r4, #0
	muls r0, r4, r0
	adds r1, r0, #0
	muls r1, r4, r1
	subs r0, r7, r6
	muls r0, r1, r0
	adds r1, r5, #0
	muls r1, r5, r1
	b _0800E9C8
_0800E9B4:
	adds r0, r4, #0
	muls r0, r4, r0
	muls r0, r4, r0
	adds r1, r0, #0
	muls r1, r4, r1
	subs r0, r7, r6
	muls r0, r1, r0
	adds r1, r5, #0
	muls r1, r5, r1
	muls r1, r5, r1
_0800E9C8:
	muls r1, r5, r1
_0800E9CA:
	bl __divsi3
	adds r0, r6, r0
	b _0800EB64
_0800E9D2:
	lsls r0, r4, #0x11
	adds r1, r5, #0
	b _0800E9E0
_0800E9D8:
	lsls r0, r4, #0x11
	muls r0, r4, r0
	lsls r1, r5, #4
	subs r1, r1, r5
_0800E9E0:
	bl __divsi3
	ldr r2, _0800EA1C @ =gSinTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800E9F0
	adds r0, #0x3f
_0800E9F0:
	asrs r1, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	ldr r1, _0800EA20 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	subs r0, r7, r6
	muls r0, r1, r0
	asrs r2, r0, #0xf
	subs r1, r5, r4
	adds r0, r2, #0
	muls r0, r1, r0
	muls r0, r1, r0
	adds r1, r5, #0
	muls r1, r5, r1
	bl __divsi3
	subs r0, r7, r0
	b _0800EB64
	.align 2, 0
_0800EA1C: .4byte gSinTable
_0800EA20: .4byte 0x000003FF
_0800EA24:
	subs r2, r5, r4
	subs r1, r7, r6
	adds r4, r6, r1
	adds r0, r2, #0
	muls r0, r2, r0
	muls r0, r1, r0
	adds r1, r5, #0
	muls r1, r5, r1
	b _0800EA62
_0800EA36:
	subs r2, r5, r4
	subs r1, r7, r6
	adds r4, r6, r1
	adds r0, r2, #0
	muls r0, r2, r0
	muls r0, r2, r0
	muls r0, r1, r0
	adds r1, r5, #0
	muls r1, r5, r1
	b _0800EA60
_0800EA4A:
	subs r2, r5, r4
	subs r1, r7, r6
	adds r4, r6, r1
	adds r0, r2, #0
	muls r0, r2, r0
	muls r0, r2, r0
	muls r0, r2, r0
	muls r0, r1, r0
	adds r1, r5, #0
	muls r1, r5, r1
	muls r1, r5, r1
_0800EA60:
	muls r1, r5, r1
_0800EA62:
	bl __divsi3
	subs r0, r4, r0
	b _0800EB64
_0800EA6A:
	lsls r0, r4, #0x11
	muls r0, r4, r0
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #3
	b _0800EA7E
_0800EA76:
	lsls r0, r4, #0x11
	muls r0, r4, r0
	movs r1, #0x46
	muls r1, r5, r1
_0800EA7E:
	bl __divsi3
	ldr r2, _0800EAC0 @ =gSinTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800EA8E
	adds r0, #0x3f
_0800EA8E:
	asrs r1, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	ldr r1, _0800EAC4 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	subs r1, r5, r4
	muls r0, r1, r0
	muls r0, r1, r0
	adds r1, r5, #0
	muls r1, r5, r1
	bl __divsi3
	adds r2, r0, #0
	cmp r2, #0
	bge _0800EAB6
	rsbs r2, r2, #0
_0800EAB6:
	subs r0, r7, r6
	muls r2, r0, r2
	asrs r2, r2, #0xf
	subs r0, r7, r2
	b _0800EB64
	.align 2, 0
_0800EAC0: .4byte gSinTable
_0800EAC4: .4byte 0x000003FF
_0800EAC8:
	lsls r0, r4, #0xf
	adds r1, r5, #0
	bl __divsi3
	ldr r2, _0800EB00 @ =gSinTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800EADC
	adds r0, #0x3f
_0800EADC:
	asrs r1, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	ldr r1, _0800EB04 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	subs r2, r7, r6
	movs r0, #0x80
	lsls r0, r0, #8
	subs r0, r0, r1
	muls r0, r2, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r2, r0, #0x10
	b _0800EB62
	.align 2, 0
_0800EB00: .4byte gSinTable
_0800EB04: .4byte 0x000003FF
_0800EB08:
	lsls r0, r4, #0xe
	adds r1, r5, #0
	bl __divsi3
	ldr r1, _0800EB2C @ =gSinTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800EB1C
	adds r0, #0x3f
_0800EB1C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	subs r0, r7, r6
	muls r0, r1, r0
	b _0800EB60
	.align 2, 0
_0800EB2C: .4byte gSinTable
_0800EB30:
	lsls r0, r4, #0xe
	adds r1, r5, #0
	bl __divsi3
	ldr r2, _0800EB6C @ =gSinTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800EB44
	adds r0, #0x3f
_0800EB44:
	asrs r1, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	ldr r1, _0800EB70 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	subs r2, r7, r6
	movs r0, #0x80
	lsls r0, r0, #8
	subs r0, r0, r1
	muls r0, r2, r0
_0800EB60:
	asrs r2, r0, #0xf
_0800EB62:
	adds r0, r6, r2
_0800EB64:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800EB6C: .4byte gSinTable
_0800EB70: .4byte 0x000003FF

	thumb_func_start sub_800EB74
sub_800EB74: @ 0x0800EB74
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov r8, r1
	ldr r2, _0800EBC4 @ =_080D9CC8
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldrb r1, [r4, #1]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	mov ip, r0
	ldrb r0, [r4, #5]
	lsls r0, r0, #3
	add r0, ip
	ldr r3, [r0]
	ldrh r1, [r4, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0800EBF0
	strb r0, [r4, #4]
	ldr r0, _0800EBC8 @ =0xFFFFFCFF
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	beq _0800EBD4
	cmp r0, #2
	bgt _0800EBCC
	cmp r0, #0
	blt _0800EBEA
	b _0800EBD0
	.align 2, 0
_0800EBC4: .4byte _080D9CC8
_0800EBC8: .4byte 0xFFFFFCFF
_0800EBCC:
	cmp r0, #3
	bne _0800EBEA
_0800EBD0:
	movs r0, #0
	b _0800EBE8
_0800EBD4:
	ldr r2, _0800EC1C @ =_080D9C68
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldrb r1, [r4, #1]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	subs r0, #2
_0800EBE8:
	strb r0, [r4, #5]
_0800EBEA:
	movs r0, #0
	strb r0, [r4, #8]
	strb r0, [r4, #9]
_0800EBF0:
	ldrb r6, [r4, #5]
	ldrb r0, [r4, #4]
	adds r1, r0, #1
	strb r1, [r4, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r3
	ble _0800EC96
	movs r0, #0
	strb r0, [r4, #4]
	ldrh r7, [r4, #2]
	ldr r0, _0800EC20 @ =0xFFFFFCFF
	ands r0, r7
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #1
	beq _0800EC50
	cmp r5, #1
	bgt _0800EC24
	cmp r5, #0
	beq _0800EC2A
	b _0800EC96
	.align 2, 0
_0800EC1C: .4byte _080D9C68
_0800EC20: .4byte 0xFFFFFCFF
_0800EC24:
	cmp r5, #2
	beq _0800EC80
	b _0800EC96
_0800EC2A:
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	ldrb r3, [r4, #5]
	ldr r2, _0800EC4C @ =_080D9C68
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldrb r1, [r4, #1]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r3, r0
	blt _0800EC96
	strb r5, [r4, #5]
	b _0800EC96
	.align 2, 0
_0800EC4C: .4byte _080D9C68
_0800EC50:
	ldrb r3, [r4, #5]
	ldr r2, _0800EC70 @ =_080D9C68
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldrb r1, [r4, #1]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	subs r0, #1
	cmp r3, r0
	bge _0800EC74
	adds r0, r3, #1
	b _0800EC94
	.align 2, 0
_0800EC70: .4byte _080D9C68
_0800EC74:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	orrs r0, r7
	strh r0, [r4, #2]
	b _0800EC96
_0800EC80:
	ldrb r0, [r4, #5]
	adds r1, r0, #0
	cmp r1, #0
	beq _0800EC8C
	subs r0, #1
	b _0800EC94
_0800EC8C:
	strb r1, [r4, #1]
	movs r0, #0
	strh r1, [r4, #2]
	strb r0, [r4, #4]
_0800EC94:
	strb r0, [r4, #5]
_0800EC96:
	ldrb r2, [r4, #5]
	cmp r6, r2
	bne _0800ECA8
	ldrh r1, [r4, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800ECC8
_0800ECA8:
	mov r0, r8
	cmp r0, #0
	beq _0800ECBC
	lsls r0, r2, #3
	add r0, ip
	ldr r0, [r0, #4]
	ldr r1, [r4, #0x10]
	bl LZ77UnCompVram
	b _0800ECC8
_0800ECBC:
	lsls r0, r2, #3
	add r0, ip
	ldr r0, [r0, #4]
	ldr r1, [r4, #0x10]
	bl LZ77UnCompWram
_0800ECC8:
	ldrb r6, [r4, #9]
	movs r1, #6
	ldrsh r0, [r4, r1]
	cmp r0, #2
	beq _0800ECDC
	cmp r0, #2
	ble _0800ED0A
	cmp r0, #3
	beq _0800ECFC
	b _0800ED0A
_0800ECDC:
	ldr r0, _0800ECF4 @ =_080D9D88
	ldrb r1, [r4]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	subs r0, #1
	cmp r6, r0
	bge _0800ECF8
	adds r0, r6, #1
	strb r0, [r4, #9]
	b _0800ED0A
	.align 2, 0
_0800ECF4: .4byte _080D9D88
_0800ECF8:
	movs r0, #3
	b _0800ED08
_0800ECFC:
	cmp r6, #0
	beq _0800ED06
	subs r0, r6, #1
	strb r0, [r4, #9]
	b _0800ED0A
_0800ED06:
	movs r0, #2
_0800ED08:
	strh r0, [r4, #6]
_0800ED0A:
	ldrb r2, [r4, #9]
	cmp r6, r2
	bne _0800ED1C
	ldrh r1, [r4, #2]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800ED82
_0800ED1C:
	movs r0, #6
	ldrsh r1, [r4, r0]
	cmp r1, #0
	blt _0800ED82
	cmp r1, #1
	bgt _0800ED4C
	ldr r2, _0800ED48 @ =_080D9D28
	lsls r1, r1, #2
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r2
	ldr r0, [r1]
	ldr r1, [r4, #0xc]
	movs r2, #8
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	b _0800ED82
	.align 2, 0
_0800ED48: .4byte _080D9D28
_0800ED4C:
	cmp r1, #3
	bgt _0800ED82
	ldr r1, _0800ED98 @ =_080D9D28
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r4, #0xc]
	movs r2, #0xf
	bl CpuSet
	ldr r1, _0800ED9C @ =_080D9D68
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r4, #9]
	lsls r1, r1, #1
	ldr r0, [r0]
	adds r0, r0, r1
	ldr r1, [r4, #0xc]
	adds r1, #0x1e
	movs r2, #1
	bl CpuSet
	movs r0, #1
	bl pltt_setDirtyFlag
_0800ED82:
	ldrh r1, [r4, #2]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800ED98: .4byte _080D9D28
_0800ED9C: .4byte _080D9D68

	thumb_func_start spm_menuCharIdxToCharId
spm_menuCharIdxToCharId: @ 0x0800EDA0
	ldr r1, _0800EDAC @ =_080D9790
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0800EDAC: .4byte _080D9790

	thumb_func_start sub_800EDB0
sub_800EDB0: @ 0x0800EDB0
	ldr r2, _0800EDC0 @ =_080D97B0
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r0, [r1]
	bx lr
	.align 2, 0
_0800EDC0: .4byte _080D97B0

	thumb_func_start sub_800EDC4
sub_800EDC4: @ 0x0800EDC4
	ldr r3, _0800EDD8 @ =0x03000048
	movs r1, #0
	movs r2, #0
_0800EDCA:
	adds r0, r3, r1
	strb r2, [r0]
	adds r1, #1
	cmp r1, #0xb3
	bls _0800EDCA
	bx lr
	.align 2, 0
_0800EDD8: .4byte 0x03000048

	thumb_func_start sub_800EDDC
sub_800EDDC: @ 0x0800EDDC
	ldr r0, _0800EDE0 @ =0x03000048
	bx lr
	.align 2, 0
_0800EDE0: .4byte 0x03000048

	thumb_func_start sub_800EDE4
sub_800EDE4: @ 0x0800EDE4
	ldr r0, _0800EDE8 @ =0x03000048
	bx lr
	.align 2, 0
_0800EDE8: .4byte 0x03000048

	thumb_func_start sub_800EDEC
sub_800EDEC: @ 0x0800EDEC
	ldr r0, _0800EDF0 @ =0x03000048
	bx lr
	.align 2, 0
_0800EDF0: .4byte 0x03000048

	thumb_func_start sub_800EDF4
sub_800EDF4: @ 0x0800EDF4
	ldr r0, _0800EDF8 @ =0x03000048
	bx lr
	.align 2, 0
_0800EDF8: .4byte 0x03000048

	thumb_func_start sub_800EDFC
sub_800EDFC: @ 0x0800EDFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	movs r5, #0
	movs r1, #0xa9
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r5, r0
	bge _0800EE26
	adds r6, r7, r1
	adds r4, r7, #0
	adds r4, #0x4c
_0800EE16:
	adds r0, r4, #0
	bl sub_8003BB8
	adds r4, #0x18
	adds r5, #1
	ldr r0, [r6]
	cmp r5, r0
	blt _0800EE16
_0800EE26:
	movs r5, #0
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r5, r0
	bge _0800EE72
	adds r6, r1, #0
_0800EE36:
	adds r4, r5, #1
	ldr r0, [r6]
	subs r0, r0, r4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x4c
	adds r1, r7, r1
	ldrh r2, [r1, #6]
	lsls r2, r2, #0x10
	ldrh r0, [r1, #4]
	orrs r0, r2
	str r0, [sp, #8]
	ldr r0, [r1]
	movs r5, #8
	ldrsh r2, [r1, r5]
	movs r5, #0xa
	ldrsh r3, [r1, r5]
	movs r5, #0xc
	ldrsh r1, [r1, r5]
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	add r1, sp, #8
	bl oam_renderCellData
	adds r5, r4, #0
	ldr r0, [r6]
	cmp r5, r0
	blt _0800EE36
_0800EE72:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800EE7C
sub_800EE7C: @ 0x0800EE7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov r8, r0
	movs r7, #0
	ldr r0, _0800EF00 @ =0x000004AC
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	beq _0800EE98
	b _0800F12A
_0800EE98:
	ldr r0, _0800EF04 @ =0x03000154
	mov r2, r8
	adds r2, #0x2c
	movs r6, #3
_0800EEA0:
	ldr r1, [r2]
	cmp r1, #1
	beq _0800EEAA
	cmp r1, #6
	bne _0800EEAC
_0800EEAA:
	adds r7, #1
_0800EEAC:
	adds r2, #4
	subs r6, #1
	cmp r6, #0
	bge _0800EEA0
	ldr r0, [r0]
	cmp r0, #0xb4
	bgt _0800EEBC
	movs r7, #0
_0800EEBC:
	ldr r1, _0800EF08 @ =0x000004A4
	add r1, r8
	ldr r0, [r1]
	cmp r0, r7
	beq _0800EF36
	movs r2, #0xfd
	lsls r2, r2, #2
	add r2, r8
	str r7, [r1]
	ldrh r1, [r2, #4]
	movs r0, #0x95
	lsls r0, r0, #3
	add r0, r8
	movs r3, #0
	strh r1, [r0]
	ldrh r1, [r2, #6]
	ldr r0, _0800EF0C @ =0x000004AA
	add r0, r8
	strh r1, [r0]
	strh r3, [r2, #0x10]
	cmp r7, #1
	bgt _0800EF14
	str r3, [sp, #8]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _0800EF10 @ =0x01000080
	add r0, sp, #8
	bl CpuFastSet
	b _0800EF30
	.align 2, 0
_0800EF00: .4byte 0x000004AC
_0800EF04: .4byte 0x03000154
_0800EF08: .4byte 0x000004A4
_0800EF0C: .4byte 0x000004AA
_0800EF10: .4byte 0x01000080
_0800EF14:
	ldr r1, _0800EFE0 @ =_080D9E44
	subs r0, r7, #2
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
_0800EF30:
	movs r0, #1
	bl map_setBufferDirty
_0800EF36:
	cmp r7, #1
	bgt _0800EFF0
	movs r7, #0xfd
	lsls r7, r7, #2
	add r7, r8
	ldrh r0, [r7, #0x10]
	adds r0, #1
	strh r0, [r7, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	bgt _0800EF84
	movs r1, #0x10
	ldrsh r0, [r7, r1]
	ldr r1, _0800EFE4 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800EF5E
	adds r0, #0x3f
_0800EF5E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	movs r2, #0x95
	lsls r2, r2, #3
	add r2, r8
	movs r5, #0
	ldrsh r1, [r2, r5]
	movs r0, #0x78
	subs r0, r0, r1
	muls r0, r3, r0
	asrs r0, r0, #0xf
	ldrh r2, [r2]
	adds r0, r0, r2
	strh r0, [r7, #4]
	movs r0, #0x45
	strh r0, [r7, #6]
_0800EF84:
	movs r6, #0x80
	lsls r6, r6, #1
	movs r5, #0xfb
	lsls r5, r5, #2
	add r5, r8
	ldr r2, [r5]
	movs r4, #0xb
	str r4, [sp]
	movs r0, #0x80
	adds r1, r6, #0
	movs r3, #0x10
	bl sub_800E930
	mov sb, r0
	ldr r0, _0800EFE8 @ =0x00000484
	add r0, r8
	movs r2, #4
	ldrsh r1, [r7, r2]
	movs r3, #6
	ldrsh r2, [r7, r3]
	mov r3, sb
	bl sub_801404C
	ldr r2, [r5]
	str r4, [sp]
	movs r0, #0x80
	adds r1, r6, #0
	movs r3, #0x10
	bl sub_800E930
	adds r3, r0, #0
	ldrh r1, [r7, #6]
	lsls r1, r1, #0x10
	ldrh r0, [r7, #4]
	orrs r0, r1
	str r0, [sp, #0xc]
	ldr r0, _0800EFEC @ =_080CA6E8
	add r1, sp, #0xc
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	adds r2, r3, #0
	bl oam_renderCellData
	b _0800F12A
	.align 2, 0
_0800EFE0: .4byte _080D9E44
_0800EFE4: .4byte gSinTable
_0800EFE8: .4byte 0x00000484
_0800EFEC: .4byte _080CA6E8
_0800EFF0:
	movs r6, #0
	cmp r6, r7
	blt _0800EFF8
	b _0800F12A
_0800EFF8:
	ldr r5, _0800F064 @ =0xFFFF0000
	mov sl, r5
	ldr r0, _0800F068 @ =0x0000FFFF
	mov sb, r0
	movs r4, #0xfe
	lsls r4, r4, #2
	add r4, r8
_0800F006:
	ldr r0, _0800F06C @ =_080D9E10
	subs r1, r7, #2
	adds r1, r1, r0
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #2
	ldrb r1, [r1]
	adds r3, r0, r1
	movs r0, #0xa
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0800F07A
	cmp r6, #0
	bne _0800F074
	ldrh r0, [r4, #0xc]
	adds r0, #1
	strh r0, [r4, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	bgt _0800F07A
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	ldr r1, _0800F070 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800F040
	adds r0, #0x3f
_0800F040:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	movs r1, #0x95
	lsls r1, r1, #3
	add r1, r8
	movs r5, #0
	ldrsh r0, [r1, r5]
	subs r0, r3, r0
	muls r0, r2, r0
	asrs r0, r0, #0xf
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r4]
	b _0800F076
	.align 2, 0
_0800F064: .4byte 0xFFFF0000
_0800F068: .4byte 0x0000FFFF
_0800F06C: .4byte _080D9E10
_0800F070: .4byte gSinTable
_0800F074:
	strh r3, [r4]
_0800F076:
	movs r0, #0x45
	strh r0, [r4, #2]
_0800F07A:
	cmp r6, #0
	bne _0800F0A8
	ldrh r1, [r4]
	ldr r0, [sp, #0x10]
	mov r2, sl
	ands r0, r2
	orrs r0, r1
	ldrh r1, [r4, #2]
	adds r1, #0x10
	lsls r1, r1, #0x10
	mov r3, sb
	ands r0, r3
	orrs r0, r1
	str r0, [sp, #0x10]
	ldr r0, _0800F104 @ =_080D9E14
	ldr r0, [r0]
	str r6, [sp]
	str r6, [sp, #4]
	add r1, sp, #0x10
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_0800F0A8:
	ldrh r0, [r4]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #0x14]
	mov r5, sl
	ands r1, r5
	orrs r1, r0
	ldrh r0, [r4, #2]
	adds r0, #1
	lsls r0, r0, #0x10
	mov r2, sb
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x14]
	movs r5, #0
	str r5, [sp]
	str r5, [sp, #4]
	ldr r0, _0800F108 @ =_080D9E3C
	add r1, sp, #0x14
	movs r2, #0xaa
	movs r3, #0xcc
	bl oam_renderCellData
	ldrh r1, [r4]
	ldr r0, [sp, #0x18]
	mov r3, sl
	ands r0, r3
	orrs r0, r1
	ldrh r1, [r4, #2]
	lsls r1, r1, #0x10
	mov r2, sb
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x18]
	cmp r6, #0
	bne _0800F110
	str r6, [sp]
	str r6, [sp, #4]
	ldr r0, _0800F10C @ =_080D9E2C
	add r1, sp, #0x18
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	b _0800F120
	.align 2, 0
_0800F104: .4byte _080D9E14
_0800F108: .4byte _080D9E3C
_0800F10C: .4byte _080D9E2C
_0800F110:
	str r5, [sp]
	str r5, [sp, #4]
	ldr r0, _0800F13C @ =_080D9E34
	add r1, sp, #0x18
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_0800F120:
	adds r4, #0x18
	adds r6, #1
	cmp r6, r7
	bge _0800F12A
	b _0800F006
_0800F12A:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F13C: .4byte _080D9E34

	thumb_func_start sub_800F140
sub_800F140: @ 0x0800F140
	push {lr}
	sub sp, #0xc
	ldr r1, _0800F15C @ =0x00000454
	adds r3, r0, r1
	movs r0, #0xe
	ldrsb r0, [r3, r0]
	cmp r0, #7
	bls _0800F152
	b _0800F2A4
_0800F152:
	lsls r0, r0, #2
	ldr r1, _0800F160 @ =_0800F164
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800F15C: .4byte 0x00000454
_0800F160: .4byte _0800F164
_0800F164: @ jump table
	.4byte _0800F2A4 @ case 0
	.4byte _0800F184 @ case 1
	.4byte _0800F18C @ case 2
	.4byte _0800F1CA @ case 3
	.4byte _0800F1EA @ case 4
	.4byte _0800F1F6 @ case 5
	.4byte _0800F240 @ case 6
	.4byte _0800F252 @ case 7
_0800F184:
	movs r0, #0
	strh r0, [r3, #0x10]
	movs r0, #2
	b _0800F246
_0800F18C:
	ldrh r0, [r3, #0x10]
	adds r0, #1
	strh r0, [r3, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	bgt _0800F1C0
	movs r2, #0x10
	ldrsh r0, [r3, r2]
	ldr r1, _0800F1BC @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800F1AA
	adds r0, #0x3f
_0800F1AA:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	movs r0, #4
	ldrsh r1, [r3, r0]
	movs r0, #0xf0
	b _0800F226
	.align 2, 0
_0800F1BC: .4byte gSinTable
_0800F1C0:
	movs r0, #0
	strh r0, [r3, #0x10]
	movs r0, #3
	strb r0, [r3, #0xe]
	b _0800F2A4
_0800F1CA:
	ldrh r0, [r3, #0x10]
	adds r0, #1
	movs r1, #0
	strh r0, [r3, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1e
	ble _0800F1DC
	strh r1, [r3, #0x10]
_0800F1DC:
	movs r2, #0x10
	ldrsh r0, [r3, r2]
	cmp r0, #9
	bgt _0800F248
	strh r1, [r3, #0xa]
	strh r1, [r3, #8]
	b _0800F2A4
_0800F1EA:
	movs r0, #0
	strh r0, [r3, #0x10]
	movs r0, #5
	strb r0, [r3, #0xe]
	adds r0, #0xfb
	b _0800F24C
_0800F1F6:
	ldrh r0, [r3, #0x10]
	adds r0, #1
	strh r0, [r3, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	bgt _0800F238
	movs r1, #0x10
	ldrsh r0, [r3, r1]
	ldr r1, _0800F234 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800F214
	adds r0, #0x3f
_0800F214:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	movs r0, #4
	ldrsh r1, [r3, r0]
	movs r0, #0x94
	lsls r0, r0, #1
_0800F226:
	subs r0, r0, r1
	muls r0, r2, r0
	asrs r0, r0, #0xf
	ldrh r1, [r3, #4]
	adds r0, r0, r1
	strh r0, [r3, #4]
	b _0800F2A4
	.align 2, 0
_0800F234: .4byte gSinTable
_0800F238:
	movs r0, #0
	strh r0, [r3, #0x10]
	strb r0, [r3, #0xe]
	b _0800F2A4
_0800F240:
	movs r0, #0
	strh r0, [r3, #0x10]
	movs r0, #7
_0800F246:
	strb r0, [r3, #0xe]
_0800F248:
	movs r0, #0x80
	lsls r0, r0, #1
_0800F24C:
	strh r0, [r3, #0xa]
	strh r0, [r3, #8]
	b _0800F2A4
_0800F252:
	ldrh r0, [r3, #0x10]
	adds r0, #1
	movs r1, #0
	strh r0, [r3, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	bgt _0800F28C
	movs r2, #0x10
	ldrsh r0, [r3, r2]
	ldr r1, _0800F288 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800F272
	adds r0, #0x3f
_0800F272:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #8
	rsbs r0, r0, #0
	asrs r0, r0, #0xf
	adds r0, #0xf0
	strh r0, [r3, #4]
	b _0800F2A4
	.align 2, 0
_0800F288: .4byte gSinTable
_0800F28C:
	movs r0, #0x94
	lsls r0, r0, #1
	strh r0, [r3, #4]
	movs r0, #0x90
	strh r0, [r3, #6]
	adds r0, #0x70
	strh r0, [r3, #0xa]
	strh r0, [r3, #8]
	strh r1, [r3, #0xc]
	movs r0, #0
	strb r0, [r3, #0xe]
	strh r1, [r3, #0x10]
_0800F2A4:
	movs r1, #8
	ldrsh r0, [r3, r1]
	cmp r0, #0
	beq _0800F2D0
	movs r2, #0xa
	ldrsh r0, [r3, r2]
	cmp r0, #0
	beq _0800F2D0
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
_0800F2D0:
	add sp, #0xc
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_800F2D8
sub_800F2D8: @ 0x0800F2D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp]
	adds r7, r1, #0
	adds r5, r2, #0
	adds r4, r3, #0
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	lsls r0, r0, #0xf
	bl __divsi3
	ldr r2, _0800F3C0 @ =gSinTable
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0800F302
	adds r0, #0x3f
_0800F302:
	asrs r1, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	ldr r1, _0800F3C4 @ =0x000003FF
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
	str r0, [sp, #4]
	cmp r4, #0
	ble _0800F3B0
	movs r0, #0x1f
	mov sl, r0
	movs r6, #0x1f
	mov sb, r5
	mov r8, r7
	ldr r5, [sp]
	str r5, [sp, #8]
	mov ip, r4
_0800F336:
	ldr r7, [sp, #8]
	ldrh r1, [r7]
	adds r3, r6, #0
	ands r3, r1
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x15
	mov r0, sl
	ands r4, r0
	lsrs r1, r1, #0x1a
	ands r1, r0
	mov r5, r8
	ldrh r2, [r5]
	adds r0, r6, #0
	ands r0, r2
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x15
	mov r7, sl
	ands r5, r7
	lsrs r2, r2, #0x1a
	ands r2, r7
	subs r0, r0, r3
	ldr r7, [sp, #4]
	muls r0, r7, r0
	asrs r0, r0, #0xf
	adds r3, r3, r0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	subs r0, r5, r4
	muls r0, r7, r0
	asrs r0, r0, #0xf
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	subs r2, r2, r1
	adds r0, r2, #0
	muls r0, r7, r0
	asrs r0, r0, #0xf
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ands r3, r6
	ands r4, r6
	lsls r4, r4, #5
	orrs r3, r4
	ands r1, r6
	lsls r1, r1, #0xa
	orrs r3, r1
	mov r0, sb
	strh r3, [r0]
	movs r5, #2
	add sb, r5
	add r8, r5
	ldr r7, [sp, #8]
	adds r7, #2
	str r7, [sp, #8]
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	mov r5, ip
	cmp r5, #0
	bne _0800F336
_0800F3B0:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F3C0: .4byte gSinTable
_0800F3C4: .4byte 0x000003FF

	thumb_func_start sub_800F3C8
sub_800F3C8: @ 0x0800F3C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	movs r0, #1
	mov sl, r0
	movs r0, #0xb1
	lsls r0, r0, #1
	mov sb, r0
	ldr r0, _0800F414 @ =_080C3D6A
	str r0, [sp, #8]
	movs r0, #0
	mov r8, r0
_0800F3E8:
	mov r0, sl
	lsls r1, r0, #2
	adds r0, r7, #0
	adds r0, #0x2c
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #6
	bne _0800F44C
	adds r0, r7, #0
	adds r0, #0x3c
	adds r0, r0, r1
	ldr r2, [r0]
	adds r1, r2, #1
	str r1, [r0]
	cmp r1, #0x10
	bgt _0800F41C
	adds r5, r1, #0
	ldr r6, _0800F414 @ =_080C3D6A
	add r6, r8
	ldr r4, _0800F418 @ =_080C3D7E
	b _0800F426
	.align 2, 0
_0800F414: .4byte _080C3D6A
_0800F418: .4byte _080C3D7E
_0800F41C:
	adds r5, r2, #0
	subs r5, #0xf
	ldr r6, _0800F444 @ =_080C3D7E
	add r6, r8
	ldr r4, _0800F448 @ =_080C3D74
_0800F426:
	add r4, r8
	movs r0, #0
	bl pltt_getBuffer
	adds r2, r0, #0
	add r2, sb
	str r5, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r3, #5
	bl sub_800F2D8
	b _0800F468
	.align 2, 0
_0800F444: .4byte _080C3D7E
_0800F448: .4byte _080C3D74
_0800F44C:
	adds r0, r7, #0
	adds r0, #0x3c
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	add r1, sb
	ldr r0, [sp, #8]
	movs r2, #5
	bl CpuSet
_0800F468:
	movs r0, #0x20
	add sb, r0
	ldr r0, [sp, #8]
	adds r0, #0x20
	str r0, [sp, #8]
	movs r0, #0x20
	add r8, r0
	movs r0, #1
	add sl, r0
	mov r0, sl
	cmp r0, #3
	ble _0800F3E8
	ldr r0, [r7, #0x30]
	cmp r0, #6
	bne _0800F4C8
	ldr r0, [r7, #0x40]
	cmp r0, #0x10
	bgt _0800F49C
	adds r4, r0, #0
	ldr r6, _0800F494 @ =_080C3DC8
	ldr r5, _0800F498 @ =_080C3DE8
	b _0800F4A4
	.align 2, 0
_0800F494: .4byte _080C3DC8
_0800F498: .4byte _080C3DE8
_0800F49C:
	adds r4, r0, #0
	subs r4, #0x10
	ldr r6, _0800F4C0 @ =_080C3DE8
	ldr r5, _0800F4C4 @ =_080C3DC8
_0800F4A4:
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
	b _0800F4DC
	.align 2, 0
_0800F4C0: .4byte _080C3DE8
_0800F4C4: .4byte _080C3DC8
_0800F4C8:
	ldr r4, _0800F4F4 @ =_080C3DC8
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xc0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
_0800F4DC:
	movs r0, #1
	bl pltt_setDirtyFlag
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F4F4: .4byte _080C3DC8

	thumb_func_start sub_800F4F8
sub_800F4F8: @ 0x0800F4F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r5, #0
	movs r1, #0xfa
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r5, r0
	bge _0800F606
	movs r7, #1
	movs r3, #0xfb
	lsls r3, r3, #2
	mov sb, r3
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	adds r1, r4, #0
	add r1, sb
	mov sl, r1
	movs r6, #0
	mov ip, r6
_0800F52A:
	movs r0, #0xaa
	lsls r0, r0, #2
	add r0, ip
	adds r2, r4, r0
	ldr r0, [r2, #0x20]
	cmp r0, #1
	beq _0800F570
	cmp r0, #1
	bgt _0800F542
	cmp r0, #0
	beq _0800F54C
	b _0800F5F2
_0800F542:
	cmp r0, #2
	beq _0800F580
	cmp r0, #3
	beq _0800F5C0
	b _0800F5F2
_0800F54C:
	ldr r0, _0800F56C @ =0x0000FFF0
	strh r0, [r2]
	movs r0, #0x58
	strh r0, [r2, #2]
	movs r0, #0x60
	str r0, [r2, #4]
	subs r0, #0x61
	str r0, [r2, #8]
	str r7, [r2, #0x14]
	str r5, [r2, #0x18]
	str r7, [r2, #0x20]
	str r6, [r2, #0x1c]
	movs r0, #3
	str r0, [r2, #0x24]
	b _0800F5F2
	.align 2, 0
_0800F56C: .4byte 0x0000FFF0
_0800F570:
	ldr r0, [r2, #0x1c]
	subs r0, #1
	str r0, [r2, #0x1c]
	cmp r0, #0
	bge _0800F5F2
	movs r0, #0
	str r0, [r2, #0x1c]
	b _0800F5EE
_0800F580:
	mov r3, sb
	adds r1, r4, r3
	ldr r0, [r1]
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _0800F5A2
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldr r0, [r1]
	ands r0, r3
	cmp r0, #0
	beq _0800F5A2
	ldrh r0, [r2, #2]
	adds r0, #1
	b _0800F5A6
_0800F5A2:
	ldrh r0, [r2, #2]
	subs r0, #1
_0800F5A6:
	strh r0, [r2, #2]
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, r8
	ble _0800F5F2
	ldr r3, _0800F5BC @ =0xFFFFFEF0
	adds r0, r1, r3
	strh r0, [r2]
	movs r0, #3
	b _0800F5F0
	.align 2, 0
_0800F5BC: .4byte 0xFFFFFEF0
_0800F5C0:
	mov r1, sl
	ldr r0, [r1]
	ands r0, r7
	cmp r0, #0
	beq _0800F5D0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
_0800F5D0:
	ldr r0, [r2, #4]
	adds r0, #2
	movs r1, #0x7f
	ands r0, r1
	str r0, [r2, #4]
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, r8
	ble _0800F5F2
	ldr r3, _0800F614 @ =0xFFFFFEF0
	adds r0, r1, r3
	strh r0, [r2]
	movs r0, #0x60
	str r0, [r2, #4]
_0800F5EE:
	movs r0, #2
_0800F5F0:
	str r0, [r2, #0x20]
_0800F5F2:
	adds r6, #0x42
	movs r0, #0x28
	add ip, r0
	adds r5, #1
	movs r1, #0xfa
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r5, r0
	blt _0800F52A
_0800F606:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F614: .4byte 0xFFFFFEF0

	thumb_func_start sub_800F618
sub_800F618: @ 0x0800F618
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	bl sub_800F4F8
	movs r0, #0
	mov r8, r0
	b _0800F756
_0800F630:
	mov r1, r8
	lsls r0, r1, #2
	adds r1, r0, r1
	lsls r1, r1, #3
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r1, r1, r2
	mov r3, sb
	adds r4, r3, r1
	ldr r1, [r4, #8]
	ldr r2, [r4, #4]
	mov sl, r0
	cmp r1, r2
	beq _0800F6CA
	ldr r1, _0800F658 @ =_080D9E50
	cmp r2, #0x3f
	ble _0800F65C
	movs r0, #0x7f
	subs r0, r0, r2
	b _0800F65E
	.align 2, 0
_0800F658: .4byte _080D9E50
_0800F65C:
	adds r0, r2, #0
_0800F65E:
	adds r0, r1, r0
	ldrb r3, [r0]
	ldr r0, _0800F690 @ =0x02037878
	ldr r2, [r0]
	subs r0, #4
	ldr r1, [r0]
	ldr r0, [r4, #0x14]
	cmp r0, #1
	bne _0800F698
	ldr r0, [r4, #0x18]
	muls r1, r0, r1
	adds r1, r2, r1
	lsls r0, r3, #9
	movs r2, #0x88
	lsls r2, r2, #9
	adds r0, r0, r2
	adds r7, r1, r0
	mov r3, r8
	lsls r0, r3, #0xa
	ldr r1, _0800F694 @ =0x06014000
	adds r6, r0, r1
	movs r5, #0x80
	lsls r5, r5, #2
	b _0800F6B2
	.align 2, 0
_0800F690: .4byte 0x02037878
_0800F694: .4byte 0x06014000
_0800F698:
	ldr r0, [r4, #0x18]
	muls r1, r0, r1
	adds r1, r2, r1
	lsls r0, r3, #7
	movs r2, #0xa4
	lsls r2, r2, #9
	adds r0, r0, r2
	adds r7, r1, r0
	mov r3, r8
	lsls r0, r3, #0xa
	ldr r1, _0800F708 @ =0x06014000
	adds r6, r0, r1
	movs r5, #0x80
_0800F6B2:
	bl dmaq_getVBlankDmaQueue
	lsrs r3, r5, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r3, r1
	adds r1, r7, #0
	adds r2, r6, #0
	bl dmaq_enqueue
	ldr r0, [r4, #4]
	str r0, [r4, #8]
_0800F6CA:
	ldr r0, [r4, #0x14]
	ldr r0, _0800F70C @ =_080D9ED0
	add r0, sl
	ldr r0, [r0]
	adds r5, r4, #0
	adds r5, #0xc
	ldr r6, [sp, #8]
	mov r7, r8
	adds r7, #1
	adds r2, r0, #0
	adds r1, r5, #0
	movs r3, #3
_0800F6E2:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bge _0800F6E2
	ldr r0, [r4, #4]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800F710
	ldrh r1, [r4, #0x10]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	b _0800F718
	.align 2, 0
_0800F708: .4byte 0x06014000
_0800F70C: .4byte _080D9ED0
_0800F710:
	ldrh r0, [r4, #0x10]
	ldr r3, _0800F774 @ =0x0000EFFF
	adds r1, r3, #0
	ands r0, r1
_0800F718:
	strh r0, [r4, #0x10]
	ldrh r1, [r4, #0x12]
	ldr r2, _0800F778 @ =0x0000F3FF
	adds r0, r2, #0
	ands r1, r0
	ldr r0, [r4, #0x24]
	lsls r0, r0, #0xa
	orrs r1, r0
	strh r1, [r4, #0x12]
	ldrh r0, [r4]
	mov r3, sb
	ldrh r1, [r3, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	ldrh r2, [r4, #2]
	ldrh r1, [r3, #6]
	subs r2, r2, r1
	lsls r2, r2, #0x10
	lsrs r0, r0, #0x10
	orrs r0, r2
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r5, #0
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	mov r8, r7
_0800F756:
	movs r0, #0xfa
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	cmp r8, r0
	bge _0800F764
	b _0800F630
_0800F764:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F774: .4byte 0x0000EFFF
_0800F778: .4byte 0x0000F3FF

	thumb_func_start sub_800F77C
sub_800F77C: @ 0x0800F77C
	ldr r0, _0800F824 @ =0x03000100
	ldr r1, [r0]
	movs r0, #0xfc
	lsls r0, r0, #2
	adds r2, r1, r0
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	asrs r0, r0, #2
	ldrh r3, [r1, #0x10]
	strh r0, [r1, #0x10]
	ldr r0, [r2]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	ldrh r2, [r1, #0x12]
	strh r0, [r1, #0x12]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r1]
	strh r0, [r2]
	adds r2, #8
	ldrh r0, [r1, #2]
	strh r0, [r2]
	adds r2, #8
	ldrh r0, [r1, #4]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #6]
	strh r0, [r2]
	subs r2, #8
	ldrh r0, [r1, #8]
	strh r0, [r2]
	adds r2, #0xa
	ldrh r0, [r1, #0xa]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0xc]
	strh r0, [r2]
	subs r2, #0xa
	ldrh r0, [r1, #0xe]
	strh r0, [r2]
	adds r2, #0xc
	ldrh r0, [r1, #0x10]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0x12]
	strh r0, [r2]
	subs r2, #0xc
	ldrh r0, [r1, #0x14]
	strh r0, [r2]
	adds r2, #0xe
	ldrh r0, [r1, #0x16]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0x18]
	strh r0, [r2]
	adds r2, #0x32
	ldrh r0, [r1, #0x1a]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0x1c]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0x1e]
	strh r0, [r2]
	subs r2, #0x14
	ldrh r0, [r1, #0x20]
	strh r0, [r2]
	adds r2, #4
	ldrh r0, [r1, #0x22]
	strh r0, [r2]
	subs r2, #2
	ldrh r0, [r1, #0x24]
	strh r0, [r2]
	adds r2, #4
	ldrh r0, [r1, #0x26]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0x28]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0x2a]
	strh r0, [r2]
	bx lr
	.align 2, 0
_0800F824: .4byte 0x03000100

	thumb_func_start sub_800F828
sub_800F828: @ 0x0800F828
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _0800FA24 @ =0x020378D0
	ldr r4, [r0]
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	ldr r0, _0800FA28 @ =0x020378E4
	ldr r4, [r0]
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xe0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuFastSet
	ldr r0, _0800FA2C @ =0x020378D4
	ldr r4, [r0]
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #0
	bl pltt_getBuffer
	movs r1, #0
	strh r1, [r0]
	movs r0, #1
	bl pltt_setDirtyFlag
	ldr r0, _0800FA30 @ =0x020378FC
	ldr r0, [r0]
	ldr r5, _0800FA34 @ =0x02037900
	adds r1, r5, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800FA38 @ =0x06008000
	ldr r4, _0800FA3C @ =0x80000C00
	adds r1, r5, #0
	adds r3, r4, #0
	bl dmaq_enqueue
	bl sub_8011424
	ldr r0, _0800FA40 @ =0x020378F8
	ldr r0, [r0]
	adds r1, r5, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800FA44 @ =0x06009800
	adds r1, r5, #0
	adds r3, r4, #0
	bl dmaq_enqueue
	bl sub_8011424
	ldr r0, _0800FA48 @ =0x020378F4
	ldr r0, [r0]
	adds r1, r5, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800FA4C @ =0x0600B000
	adds r1, r5, #0
	adds r3, r4, #0
	bl dmaq_enqueue
	bl sub_8011424
	ldr r0, _0800FA50 @ =0x020378C4
	ldr r0, [r0]
	adds r1, r5, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800FA54 @ =0x0600C800
	ldr r4, _0800FA58 @ =0x80000400
	adds r1, r5, #0
	adds r3, r4, #0
	bl dmaq_enqueue
	bl sub_8011424
	ldr r0, _0800FA5C @ =0x020378B8
	ldr r0, [r0]
	adds r1, r5, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800FA60 @ =0x0600EC00
	adds r1, r5, #0
	adds r3, r4, #0
	bl dmaq_enqueue
	bl sub_8011424
	ldr r0, _0800FA64 @ =0x020378B4
	ldr r0, [r0]
	adds r1, r5, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800FA68 @ =0x0600F400
	ldr r3, _0800FA6C @ =0x80000600
	adds r1, r5, #0
	bl dmaq_enqueue
	bl sub_8011424
	ldr r0, _0800FA70 @ =0x020378AC
	ldr r4, [r0]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	movs r6, #0
	str r6, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _0800FA74 @ =0x01000080
	mov r0, sp
	bl CpuFastSet
	movs r0, #1
	bl map_setBufferDirty
	bl sub_8011424
	ldr r0, _0800FA78 @ =0x020378CC
	ldr r4, [r0]
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	movs r0, #1
	bl pltt_getBuffer
	strh r6, [r0]
	movs r0, #1
	bl pltt_setDirtyFlag
	ldr r0, _0800FA7C @ =0x020378C0
	ldr r0, [r0]
	adds r1, r5, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800FA80 @ =0x06010000
	ldr r3, _0800FA84 @ =0x80000A00
	adds r1, r5, #0
	bl dmaq_enqueue
	bl sub_8011424
	ldr r0, _0800FA88 @ =0x020378F0
	ldr r0, [r0]
	adds r1, r5, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800FA8C @ =0x06011400
	ldr r3, _0800FA90 @ =0x80000040
	adds r1, r5, #0
	bl dmaq_enqueue
	bl sub_8011424
	ldr r0, _0800FA94 @ =0x020378EC
	ldr r0, [r0]
	adds r1, r5, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800FA98 @ =0x06011800
	ldr r3, _0800FA9C @ =0x80000800
	adds r1, r5, #0
	bl dmaq_enqueue
	bl sub_8011424
	ldr r0, _0800FAA0 @ =0x02037870
	movs r6, #0x80
	lsls r6, r6, #1
	ldr r4, [r0]
	movs r5, #7
_0800F9E8:
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, r1, r6
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	adds r6, #0x20
	movs r0, #0x80
	lsls r0, r0, #2
	adds r4, r4, r0
	subs r5, #1
	cmp r5, #0
	bge _0800F9E8
	movs r0, #1
	bl pltt_setDirtyFlag
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0800FAA4 @ =0x0203EC10
	ldr r2, _0800FAA8 @ =0x06013C00
	ldr r3, _0800FAAC @ =0x81000040
	bl dmaq_enqueue
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800FA24: .4byte 0x020378D0
_0800FA28: .4byte 0x020378E4
_0800FA2C: .4byte 0x020378D4
_0800FA30: .4byte 0x020378FC
_0800FA34: .4byte 0x02037900
_0800FA38: .4byte 0x06008000
_0800FA3C: .4byte 0x80000C00
_0800FA40: .4byte 0x020378F8
_0800FA44: .4byte 0x06009800
_0800FA48: .4byte 0x020378F4
_0800FA4C: .4byte 0x0600B000
_0800FA50: .4byte 0x020378C4
_0800FA54: .4byte 0x0600C800
_0800FA58: .4byte 0x80000400
_0800FA5C: .4byte 0x020378B8
_0800FA60: .4byte 0x0600EC00
_0800FA64: .4byte 0x020378B4
_0800FA68: .4byte 0x0600F400
_0800FA6C: .4byte 0x80000600
_0800FA70: .4byte 0x020378AC
_0800FA74: .4byte 0x01000080
_0800FA78: .4byte 0x020378CC
_0800FA7C: .4byte 0x020378C0
_0800FA80: .4byte 0x06010000
_0800FA84: .4byte 0x80000A00
_0800FA88: .4byte 0x020378F0
_0800FA8C: .4byte 0x06011400
_0800FA90: .4byte 0x80000040
_0800FA94: .4byte 0x020378EC
_0800FA98: .4byte 0x06011800
_0800FA9C: .4byte 0x80000800
_0800FAA0: .4byte 0x02037870
_0800FAA4: .4byte 0x0203EC10
_0800FAA8: .4byte 0x06013C00
_0800FAAC: .4byte 0x81000040

	thumb_func_start sub_800FAB0
sub_800FAB0: @ 0x0800FAB0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0800FC24 @ =0x03000100
	ldr r7, [r0]
	movs r5, #0xc0
	lsls r5, r5, #0x13
	movs r4, #0xf
_0800FAC0:
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0800FC28 @ =0x0203EC12
	adds r2, r5, #0
	ldr r3, _0800FC2C @ =0x81000C00
	bl dmaq_enqueue
	bl sub_8011424
	movs r0, #0xc0
	lsls r0, r0, #5
	adds r5, r5, r0
	subs r4, #1
	cmp r4, #0
	bge _0800FAC0
	movs r5, #0
	bl sub_800F828
	ldr r0, _0800FC30 @ =0x020378E4
	ldr r4, [r0]
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xe0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuFastSet
	movs r0, #1
	bl pltt_setDirtyFlag
	ldr r0, _0800FC34 @ =0x020378E0
	ldr r0, [r0]
	ldr r4, _0800FC38 @ =0x02037900
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800FC3C @ =0x06004000
	ldr r3, _0800FC40 @ =0x80000600
	adds r1, r4, #0
	bl dmaq_enqueue
	bl sub_8011424
	ldr r0, _0800FC44 @ =0x020378DC
	ldr r0, [r0]
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	movs r2, #0xc0
	lsls r2, r2, #0x13
	ldr r1, _0800FC48 @ =0x80000400
	mov r8, r1
	adds r1, r4, #0
	mov r3, r8
	bl dmaq_enqueue
	bl sub_8011424
	ldr r0, _0800FC4C @ =0x020378D8
	ldr r0, [r0]
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800FC50 @ =0x06000800
	ldr r6, _0800FC54 @ =0x80000280
	adds r1, r4, #0
	adds r3, r6, #0
	bl dmaq_enqueue
	bl sub_8011424
	ldr r0, _0800FC58 @ =0x020378A4
	ldr r0, [r0]
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800FC5C @ =0x06002000
	adds r1, r4, #0
	adds r3, r6, #0
	bl dmaq_enqueue
	bl sub_8011424
	ldr r0, _0800FC60 @ =_080C53CC
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800FC64 @ =0x06017800
	adds r1, r4, #0
	mov r3, r8
	bl dmaq_enqueue
	bl sub_8011424
	ldr r0, _0800FC68 @ =_080C5130
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0800FC6C @ =0x06017000
	adds r1, r4, #0
	mov r3, r8
	bl dmaq_enqueue
	bl main_frameProc
	ldrh r0, [r7, #2]
	ldr r0, _0800FC70 @ =0x00004208
	strh r0, [r7, #2]
	ldrh r0, [r7, #8]
	ldr r0, _0800FC74 @ =0x00004409
	strh r0, [r7, #8]
	ldrh r0, [r7, #0xe]
	movs r0, #6
	strh r0, [r7, #0xe]
	ldrh r0, [r7, #0x14]
	movs r0, #0x83
	lsls r0, r0, #1
	strh r0, [r7, #0x14]
	ldrh r0, [r7]
	movs r0, #0xfa
	lsls r0, r0, #5
	strh r0, [r7]
	ldrh r0, [r7, #0x1a]
	movs r0, #0xbf
	strh r0, [r7, #0x1a]
	ldrh r0, [r7, #0x1e]
	movs r0, #0x10
	strh r0, [r7, #0x1e]
	ldrh r0, [r7, #4]
	strh r5, [r7, #4]
	ldrh r0, [r7, #6]
	strh r5, [r7, #6]
	ldrh r0, [r7, #0xa]
	strh r5, [r7, #0xa]
	ldrh r0, [r7, #0xc]
	strh r5, [r7, #0xc]
	ldrh r0, [r7, #0x10]
	strh r5, [r7, #0x10]
	ldrh r0, [r7, #0x12]
	strh r5, [r7, #0x12]
	ldrh r0, [r7, #0x16]
	strh r5, [r7, #0x16]
	ldrh r0, [r7, #0x18]
	strh r5, [r7, #0x18]
	movs r2, #0xfc
	lsls r2, r2, #2
	adds r0, r7, r2
	str r5, [r0]
	ldrh r0, [r7, #0x2a]
	ldr r0, _0800FC78 @ =0x0000303F
	strh r0, [r7, #0x2a]
	ldrh r1, [r7]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	ldrh r2, [r7]
	orrs r0, r1
	strh r0, [r7]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800FC24: .4byte 0x03000100
_0800FC28: .4byte 0x0203EC12
_0800FC2C: .4byte 0x81000C00
_0800FC30: .4byte 0x020378E4
_0800FC34: .4byte 0x020378E0
_0800FC38: .4byte 0x02037900
_0800FC3C: .4byte 0x06004000
_0800FC40: .4byte 0x80000600
_0800FC44: .4byte 0x020378DC
_0800FC48: .4byte 0x80000400
_0800FC4C: .4byte 0x020378D8
_0800FC50: .4byte 0x06000800
_0800FC54: .4byte 0x80000280
_0800FC58: .4byte 0x020378A4
_0800FC5C: .4byte 0x06002000
_0800FC60: .4byte _080C53CC
_0800FC64: .4byte 0x06017800
_0800FC68: .4byte _080C5130
_0800FC6C: .4byte 0x06017000
_0800FC70: .4byte 0x00004208
_0800FC74: .4byte 0x00004409
_0800FC78: .4byte 0x0000303F

	thumb_func_start sub_0800FC7C
sub_0800FC7C: @ 0x0800FC7C
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r5, r0, #0
	ldr r0, _0800FCEC @ =0x030029C0
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	bne _0800FD00
	movs r3, #0x80
	lsls r3, r3, #6
	ands r3, r1
	cmp r3, #0
	bne _0800FD00
	movs r1, #0
	movs r2, #1
	adds r0, r4, #0
	ands r0, r2
	cmp r0, #0
	beq _0800FCB6
	str r2, [sp]
	movs r1, #1
_0800FCB6:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _0800FCC2
	str r2, [sp, #4]
	adds r1, #1
_0800FCC2:
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0800FCCE
	str r2, [sp, #8]
	adds r1, #1
_0800FCCE:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _0800FCDA
	str r2, [sp, #0xc]
	adds r1, #1
_0800FCDA:
	movs r2, #0x96
	lsls r2, r2, #3
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r1, r0
	bne _0800FCF4
	ldr r0, _0800FCF0 @ =0x030029B8
	str r3, [r0]
	b _0800FD0C
	.align 2, 0
_0800FCEC: .4byte 0x030029C0
_0800FCF0: .4byte 0x030029B8
_0800FCF4:
	ldr r1, _0800FD04 @ =0x030029B8
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x3b
	ble _0800FD08
_0800FD00:
	movs r0, #0
	b _0800FD0E
	.align 2, 0
_0800FD04: .4byte 0x030029B8
_0800FD08:
	bl sub_8012370
_0800FD0C:
	movs r0, #1
_0800FD0E:
	add sp, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start singlelink_main
singlelink_main: @ 0x0800FD18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	movs r0, #0
	str r0, [sp, #0xc]
	mov sl, r0
	movs r1, #0
	str r1, [sp, #0x10]
	ldr r0, _08010054 @ =0x030029C4
	ldr r2, [sp, #0xc]
	str r2, [r0]
	ldr r0, _08010058 @ =0x03002C50
	str r2, [r0]
	ldr r0, _0801005C @ =0x04000128
	strh r2, [r0]
	ldr r1, _08010060 @ =0x020378FC
	ldr r0, _08010064 @ =_080A97F8
	str r0, [r1]
	subs r1, #4
	ldr r0, _08010068 @ =_080A9E2C
	str r0, [r1]
	subs r1, #4
	ldr r0, _0801006C @ =_080AA56C
	str r0, [r1]
	subs r1, #4
	ldr r0, _08010070 @ =_080C3870
	str r0, [r1]
	ldr r0, _08010074 @ =0x020378EC
	ldr r2, _08010078 @ =_080C2FA8
	str r2, [r0]
	subs r1, #0xc
	ldr r0, _0801007C @ =_0807CD48
	str r0, [r1]
	subs r1, #4
	ldr r0, _08010080 @ =_0807D1E8
	str r0, [r1]
	subs r1, #4
	ldr r0, _08010084 @ =_0807DA94
	str r0, [r1]
	subs r1, #4
	ldr r0, _08010088 @ =_0807DB98
	str r0, [r1]
	subs r1, #4
	ldr r0, _0801008C @ =_080B2270
	str r0, [r1]
	subs r1, #4
	ldr r0, _08010090 @ =_080C3A8C
	str r0, [r1]
	subs r1, #4
	ldr r0, _08010094 @ =_080C3B68
	str r0, [r1]
	subs r1, #4
	ldr r0, _08010098 @ =_080C3C74
	str r0, [r1]
	subs r1, #4
	ldr r0, _0801009C @ =_080C3E08
	str r0, [r1]
	subs r1, #4
	ldr r0, _080100A0 @ =_080C41BC
	str r0, [r1]
	subs r1, #4
	ldr r0, _080100A4 @ =_080C4784
	str r0, [r1]
	subs r1, #4
	ldr r0, _080100A8 @ =_080C400C
	str r0, [r1]
	subs r1, #4
	ldr r0, _080100AC @ =_080BB758
	str r0, [r1]
	ldr r0, _080100B0 @ =0x020378B0
	str r2, [r0]
	subs r1, #8
	ldr r0, _080100B4 @ =_080C499C
	str r0, [r1]
	subs r1, #4
	ldr r0, _080100B8 @ =_080C4ED0
	str r0, [r1]
	subs r1, #4
	ldr r0, _080100BC @ =_080C4DAC
	str r0, [r1]
	subs r1, #4
	ldr r0, _080100C0 @ =sub_80324B4
	str r0, [r1]
	subs r1, #4
	ldr r0, _080100C4 @ =sub_8032B94
	str r0, [r1]
	subs r1, #0x24
	ldr r0, _080100C8 @ =characterPalettes_bin_end
	str r0, [r1]
	subs r1, #4
	movs r0, #0xb0
	lsls r0, r0, #9
	str r0, [r1]
	subs r1, #4
	ldr r0, _080100CC @ =characterPalettes_bin
	str r0, [r1]
	subs r1, #4
	ldr r0, _080100D0 @ =_0806FABC
	str r0, [r1]
	subs r1, #4
	ldr r0, _080100D4 @ =_0807CBC0
	str r0, [r1]
	subs r1, #4
	ldr r0, _080100D8 @ =_080AAE3C
	str r0, [r1]
	subs r1, #4
	ldr r0, _080100DC @ =_080AB63C
	str r0, [r1]
	ldr r6, _080100E0 @ =0x0203788C
	movs r4, #0
	ldr r5, _080100E4 @ =gTrackDefTable
_0800FDFC:
	adds r0, r4, #0
	bl track_getRetroTrack
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	stm r6!, {r0}
	adds r4, #1
	cmp r4, #3
	ble _0800FDFC
	ldr r6, _080100E8 @ =0x0203787C
	movs r4, #0
	ldr r7, _080100E4 @ =gTrackDefTable
	ldr r5, _080100EC @ =courseData_bin
_0800FE1A:
	adds r0, r4, #0
	bl track_getRetroTrack
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	adds r1, r0, r5
	ldr r2, _080100F0 @ =courseData_bin + 0xC4
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r1, r0
	stm r6!, {r1}
	adds r4, #1
	cmp r4, #3
	ble _0800FE1A
	ldr r1, _080100F4 @ =0x06001000
	movs r0, #0
	bl map_setBufferDestination
	ldr r0, _080100F8 @ =0x030029B0
	movs r4, #0
	str r4, [r0]
	ldr r0, _080100FC @ =0x030029B8
	str r4, [r0]
	ldr r5, _08010100 @ =0x03000100
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [r5]
	adds r6, r0, #0
	str r4, [sp, #8]
	ldr r2, _08010104 @ =0x01000139
	add r0, sp, #8
	adds r1, r6, #0
	bl CpuFastSet
	bl oam_init
	bl sub_800FAB0
	adds r2, r6, #0
	adds r2, #0x4c
	ldr r3, _08010108 @ =_080D9DD4
	movs r0, #0x60
	movs r1, #0x14
	bl sub_8003FD0
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r6, r3
	movs r0, #0xe
	str r0, [r1]
	movs r1, #0
	movs r2, #0xfe
	lsls r2, r2, #2
	adds r0, r6, r2
	movs r3, #0x78
	movs r5, #0x45
	movs r4, #1
	movs r2, #3
_0800FE9E:
	strh r3, [r0]
	strh r5, [r0, #2]
	strh r1, [r0, #6]
	strh r1, [r0, #4]
	strh r1, [r0, #8]
	strb r4, [r0, #0xa]
	strh r1, [r0, #0xc]
	adds r0, #0x18
	adds r3, #0x3c
	subs r2, #1
	cmp r2, #0
	bge _0800FE9E
	ldr r3, _0801010C @ =0x000004AC
	adds r0, r6, r3
	movs r4, #0
	str r4, [r0]
	ldr r1, _08010110 @ =0x000004A4
	adds r0, r6, r1
	str r4, [r0]
	movs r2, #0xfe
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrh r1, [r0]
	subs r3, #4
	adds r0, r6, r3
	movs r5, #0
	strh r1, [r0]
	ldr r1, _08010114 @ =0x000003FA
	adds r0, r6, r1
	ldrh r1, [r0]
	adds r2, #0xb2
	adds r0, r6, r2
	strh r1, [r0]
	subs r3, #0x24
	adds r0, r6, r3
	bl sub_8014044
	ldr r1, _08010118 @ =0x00000454
	adds r0, r6, r1
	ldr r1, _0801011C @ =_080CA728
	str r1, [r0]
	movs r1, #0x94
	lsls r1, r1, #1
	strh r1, [r0, #4]
	movs r1, #0x90
	strh r1, [r0, #6]
	adds r1, #0x70
	strh r1, [r0, #0xa]
	strh r1, [r0, #8]
	strh r4, [r0, #0xc]
	strb r5, [r0, #0xe]
	strh r4, [r0, #0x10]
	ldr r2, _08010120 @ =0x0000046C
	adds r0, r6, r2
	adds r1, #0xb8
	strh r1, [r0, #4]
	movs r1, #0x50
	strh r1, [r0, #6]
	strh r4, [r0, #0xa]
	strh r4, [r0, #8]
	strh r4, [r0, #0xc]
	strb r5, [r0, #0xe]
	strh r4, [r0, #0x10]
	movs r3, #0xfa
	lsls r3, r3, #2
	adds r1, r6, r3
	movs r0, #8
	str r0, [r1]
	movs r3, #0
	movs r0, #0x3c
	adds r0, r0, r6
	mov r8, r0
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r2, r6, r0
_0800FF34:
	str r4, [r2, #0x20]
	adds r2, #0x28
	adds r3, #1
	ldr r0, [r1]
	cmp r3, r0
	blt _0800FF34
	movs r0, #0
	movs r1, #0xfb
	lsls r1, r1, #2
	adds r5, r6, r1
_0800FF48:
	adds r7, r0, #1
	movs r4, #0xff
_0800FF4C:
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	adds r0, r6, #0
	bl sub_800F4F8
	subs r4, #1
	cmp r4, #0
	bge _0800FF4C
	bl sub_8011424
	adds r0, r7, #0
	cmp r0, #1
	ble _0800FF48
	mov r1, r8
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0xc
_0800FF70:
	str r2, [r0]
	subs r0, #4
	cmp r0, r1
	bge _0800FF70
	movs r2, #0x94
	lsls r2, r2, #3
	adds r0, r6, r2
	movs r7, #0
	str r7, [r0]
	ldr r3, _08010124 @ =0x0000049C
	adds r0, r6, r3
	str r7, [r0]
	movs r0, #0x28
	bl m4aSongNumStart
	ldr r4, _08010128 @ =main_dummyIrqHandler5
	adds r1, r4, #0
	cmp r4, #0
	bne _0800FF98
	ldr r1, _0801012C @ =main_dummyIrqHandler
_0800FF98:
	movs r0, #6
	bl irq_setHandler
	adds r1, r4, #0
	cmp r1, #0
	bne _0800FFA6
	ldr r1, _0801012C @ =main_dummyIrqHandler
_0800FFA6:
	movs r0, #7
	bl irq_setHandler
	ldr r5, _08010130 @ =sub_800F77C
	ldr r4, _08010134 @ =0x03002E20
	movs r0, #1
	movs r1, #2
	rsbs r1, r1, #0
	bl irq_updateMask
	str r5, [r4, #0xc]
	movs r0, #2
	ldr r1, _08010138 @ =0x00010001
	bl irq_updateMask
	ldr r1, _0801013C @ =sub_8011384
	cmp r1, #0
	bne _0800FFCC
	ldr r1, _0801012C @ =main_dummyIrqHandler
_0800FFCC:
	movs r0, #0
	bl irq_setHandler
	movs r1, #0x80
	lsls r1, r1, #9
	movs r0, #2
	bl irq_updateMask
	ldr r1, _08010140 @ =sio32MultiLoader_bin
	ldr r0, _08010144 @ =0x03000108
	str r1, [r0, #0x28]
	adds r1, r0, #0
	adds r1, #0x4b
	strb r7, [r1]
	bl sub_8011D5C

	thumb_func_start sub_800FFEC
sub_800FFEC: @ 0x0800FFEC
	bl oam_update
	bl VBlankIntrWait
	bl m4aSoundMain
	movs r0, #0xfb
	lsls r0, r0, #2
	adds r1, r6, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, [sp, #0xc]
	cmp r1, #0x12
	bgt _08010024
	ldr r2, _0801005C @ =0x04000128
	ldrh r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08010024
	ldrh r1, [r2]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08010024
	movs r2, #0x13
	str r2, [sp, #0xc]
_08010024:
	ldr r3, [sp, #0xc]
	cmp r3, #0x10
	blt _0801003A
	cmp r3, #0x15
	bgt _08010030
	b _0801019A
_08010030:
	cmp r3, #0x20
	bgt _0801003A
	cmp r3, #0x1c
	blt _0801003A
	b _0801019A
_0801003A:
	movs r2, #1
	ldr r4, _08010144 @ =0x03000108
	movs r3, #1
	adds r1, r6, #0
	adds r1, #0x30
	adds r5, r4, #0
_08010046:
	ldrb r0, [r5, #0x1d]
	asrs r0, r2
	ands r0, r3
	cmp r0, #0
	bne _08010148
	movs r0, #4
	b _08010158
	.align 2, 0
_08010054: .4byte 0x030029C4
_08010058: .4byte 0x03002C50
_0801005C: .4byte 0x04000128
_08010060: .4byte 0x020378FC
_08010064: .4byte _080A97F8
_08010068: .4byte _080A9E2C
_0801006C: .4byte _080AA56C
_08010070: .4byte _080C3870
_08010074: .4byte 0x020378EC
_08010078: .4byte _080C2FA8
_0801007C: .4byte _0807CD48
_08010080: .4byte _0807D1E8
_08010084: .4byte _0807DA94
_08010088: .4byte _0807DB98
_0801008C: .4byte _080B2270
_08010090: .4byte _080C3A8C
_08010094: .4byte _080C3B68
_08010098: .4byte _080C3C74
_0801009C: .4byte _080C3E08
_080100A0: .4byte _080C41BC
_080100A4: .4byte _080C4784
_080100A8: .4byte _080C400C
_080100AC: .4byte _080BB758
_080100B0: .4byte 0x020378B0
_080100B4: .4byte _080C499C
_080100B8: .4byte _080C4ED0
_080100BC: .4byte _080C4DAC
_080100C0: .4byte sub_80324B4
_080100C4: .4byte sub_8032B94
_080100C8: .4byte characterPalettes_bin_end
_080100CC: .4byte characterPalettes_bin
_080100D0: .4byte _0806FABC
_080100D4: .4byte _0807CBC0
_080100D8: .4byte _080AAE3C
_080100DC: .4byte _080AB63C
_080100E0: .4byte 0x0203788C
_080100E4: .4byte gTrackDefTable
_080100E8: .4byte 0x0203787C
_080100EC: .4byte courseData_bin
_080100F0: .4byte courseData_bin + 0xC4
_080100F4: .4byte 0x06001000
_080100F8: .4byte 0x030029B0
_080100FC: .4byte 0x030029B8
_08010100: .4byte 0x03000100
_08010104: .4byte 0x01000139
_08010108: .4byte _080D9DD4
_0801010C: .4byte 0x000004AC
_08010110: .4byte 0x000004A4
_08010114: .4byte 0x000003FA
_08010118: .4byte 0x00000454
_0801011C: .4byte _080CA728
_08010120: .4byte 0x0000046C
_08010124: .4byte 0x0000049C
_08010128: .4byte main_dummyIrqHandler5
_0801012C: .4byte main_dummyIrqHandler
_08010130: .4byte sub_800F77C
_08010134: .4byte 0x03002E20
_08010138: .4byte 0x00010001
_0801013C: .4byte sub_8011384
_08010140: .4byte sio32MultiLoader_bin
_08010144: .4byte 0x03000108
_08010148:
	ldrb r0, [r4, #0x1e]
	asrs r0, r2
	ands r0, r3
	cmp r0, #0
	bne _08010156
	movs r0, #5
	b _08010158
_08010156:
	movs r0, #6
_08010158:
	str r0, [r1]
	adds r1, #4
	adds r2, #1
	cmp r2, #3
	bgt _08010164
	b _08010046
_08010164:
	ldrb r0, [r4, #0x1e]
	movs r1, #0xe
	ands r1, r0
	cmp r1, #0
	beq _08010190
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	beq _0801017C
	cmp r0, #0xd1
	beq _08010180
	movs r0, #0
	b _08010182
_0801017C:
	movs r0, #1
	b _08010182
_08010180:
	movs r0, #2
_08010182:
	str r0, [r6, #0x2c]
	ldrb r0, [r4, #0x18]
	cmp r0, #0xdf
	bls _08010192
	movs r0, #3
	str r0, [r6, #0x2c]
	b _08010192
_08010190:
	str r1, [r6, #0x2c]
_08010192:
	adds r0, r4, #0
	bl sub_8011524
	str r0, [sp, #0x10]
_0801019A:
	ldr r0, [sp, #0xc]
	cmp r0, #0x2a
	bls _080101A4
	bl _08011170
_080101A4:
	lsls r0, r0, #2
	ldr r1, _080101B0 @ =_080101B4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080101B0: .4byte _080101B4
_080101B4: @ jump table
	.4byte _08010260 @ case 0
	.4byte _080102A0 @ case 1
	.4byte _0801041C @ case 2
	.4byte _080105B8 @ case 3
	.4byte _080104D8 @ case 4
	.4byte _080104FC @ case 5
	.4byte _080105FC @ case 6
	.4byte _08010694 @ case 7
	.4byte _0801073C @ case 8
	.4byte _0801076C @ case 9
	.4byte _080107C0 @ case 10
	.4byte _080107F8 @ case 11
	.4byte _08010884 @ case 12
	.4byte _08011170 @ case 13
	.4byte _080108EC @ case 14
	.4byte _080109A6 @ case 15
	.4byte _08010A6C @ case 16
	.4byte _08010B2C @ case 17
	.4byte _08010E64 @ case 18
	.4byte _08010FB4 @ case 19
	.4byte _08011008 @ case 20
	.4byte _080110B0 @ case 21
	.4byte _08011170 @ case 22
	.4byte _08011170 @ case 23
	.4byte _08011170 @ case 24
	.4byte _08011170 @ case 25
	.4byte _08011170 @ case 26
	.4byte _08011170 @ case 27
	.4byte _08011170 @ case 28
	.4byte _08011170 @ case 29
	.4byte _08011170 @ case 30
	.4byte _08011170 @ case 31
	.4byte _08011170 @ case 32
	.4byte _08011170 @ case 33
	.4byte _08011170 @ case 34
	.4byte _08011170 @ case 35
	.4byte _08011170 @ case 36
	.4byte _08010EDC @ case 37
	.4byte _08010F14 @ case 38
	.4byte _08010FB4 @ case 39
	.4byte _08011170 @ case 40
	.4byte _08011170 @ case 41
	.4byte _080110C8 @ case 42
_08010260:
	movs r1, #1
	add sl, r1
	mov r2, sl
	cmp r2, #0x10
	bgt _08010274
	ldrh r0, [r6, #0x1a]
	movs r0, #0xbf
	strh r0, [r6, #0x1a]
	bl _08011042
_08010274:
	ldrh r0, [r6, #0x1a]
	ldr r0, _08010294 @ =0x00000844
	strh r0, [r6, #0x1a]
	ldrh r0, [r6, #0x1c]
	ldr r0, _08010298 @ =0x00001008
	strh r0, [r6, #0x1c]
	movs r3, #1
	str r3, [sp, #0xc]
	movs r0, #0
	mov sl, r0
	ldr r0, _0801029C @ =0x03000154
	mov r1, sl
	str r1, [r0]
	bl _08011170
	.align 2, 0
_08010294: .4byte 0x00000844
_08010298: .4byte 0x00001008
_0801029C: .4byte 0x03000154
_080102A0:
	movs r2, #0x96
	lsls r2, r2, #3
	adds r1, r6, r2
	movs r0, #0
	str r0, [r1]
	ldr r4, _080102D8 @ =0x03000154
	adds r2, r6, #0
	adds r2, #0x30
	movs r3, #2
_080102B2:
	ldr r0, [r2]
	cmp r0, #6
	bne _080102BE
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080102BE:
	adds r2, #4
	subs r3, #1
	cmp r3, #0
	bge _080102B2
	ldr r0, [r6, #0x2c]
	cmp r0, #1
	bne _080102DC
	ldr r0, [r4]
	cmp r0, #0xb4
	bgt _080102E6
	adds r0, #1
	b _080102DE
	.align 2, 0
_080102D8: .4byte 0x03000154
_080102DC:
	movs r0, #0
_080102DE:
	str r0, [r4]
	ldr r0, [r4]
	cmp r0, #0xb4
	ble _08010304
_080102E6:
	ldr r3, _08010300 @ =0x00000454
	adds r1, r6, r3
	movs r0, #0xe
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0801031A
	movs r0, #1
	strb r0, [r1, #0xe]
	movs r0, #0x8e
	bl m4aSongNumStart
	b _0801031A
	.align 2, 0
_08010300: .4byte 0x00000454
_08010304:
	ldr r0, _08010348 @ =0x00000454
	adds r1, r6, r0
	movs r0, #0xe
	ldrsb r0, [r1, r0]
	cmp r0, #3
	bne _0801031A
	movs r0, #4
	strb r0, [r1, #0xe]
	movs r0, #0x90
	bl m4aSongNumStart
_0801031A:
	ldr r0, _0801034C @ =0x03002AE0
	ldrh r0, [r0]
	cmp r0, #2
	bne _08010354
	movs r1, #0
	movs r2, #0x11
	adds r0, r6, #0
	adds r0, #0x4c
_0801032A:
	strb r2, [r0, #0xe]
	adds r0, #0x18
	adds r1, #1
	cmp r1, #0xd
	bls _0801032A
	movs r0, #0x90
	bl m4aSongNumStart
	ldr r0, _08010350 @ =gMPlayTable
	ldr r0, [r0]
	movs r1, #2
	bl m4aMPlayFadeOut
	movs r1, #0x2a
	b _080104F2
	.align 2, 0
_08010348: .4byte 0x00000454
_0801034C: .4byte 0x03002AE0
_08010350: .4byte gMPlayTable
_08010354:
	cmp r0, #1
	beq _0801035C
	bl _08011170
_0801035C:
	ldr r0, _080103F8 @ =0x03000154
	ldr r0, [r0]
	cmp r0, #0xb4
	bgt _08010368
	bl _08011170
_08010368:
	movs r1, #0
	movs r2, #0x11
	adds r0, r6, #0
	adds r0, #0x5a
_08010370:
	strb r2, [r0]
	adds r0, #0x18
	adds r1, #1
	cmp r1, #0xd
	bls _08010370
	ldr r3, _080103FC @ =0x00000454
	adds r1, r6, r3
	movs r0, #6
	strb r0, [r1, #0xe]
	movs r0, #0x8f
	bl m4aSongNumStart
	ldr r2, _08010400 @ =gMPlayTable
	ldr r0, _08010404 @ =gSongTable
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
	movs r2, #2
	str r2, [sp, #0xc]
	movs r3, #0
	mov sl, r3
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	bl map_getBufferPtr2d
	movs r2, #0
	movs r1, #0xbf
_080103BA:
	strh r2, [r0]
	adds r0, #2
	subs r1, #1
	cmp r1, #0
	bge _080103BA
	movs r0, #1
	bl map_setBufferDirty
	ldr r0, _08010408 @ =0x020378A4
	ldr r0, [r0]
	ldr r4, _0801040C @ =0x02037900
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r5, _08010410 @ =0x02037C00
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r5, #0
	adds r1, r4, #0
	bl CpuSet
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08010414 @ =0x06002300
	ldr r3, _08010418 @ =0x80000100
	adds r1, r5, #0
	bl dmaq_enqueue
	bl _08011170
	.align 2, 0
_080103F8: .4byte 0x03000154
_080103FC: .4byte 0x00000454
_08010400: .4byte gMPlayTable
_08010404: .4byte gSongTable
_08010408: .4byte 0x020378A4
_0801040C: .4byte 0x02037900
_08010410: .4byte 0x02037C00
_08010414: .4byte 0x06002300
_08010418: .4byte 0x80000100
_0801041C:
	movs r0, #1
	add sl, r0
	mov r1, sl
	cmp r1, #0x10
	bgt _080104C8
	ldr r1, _080104BC @ =gSinTable
	mov r2, sl
	lsls r0, r2, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08010434
	adds r0, #0x3f
_08010434:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #8
	asrs r0, r0, #0xf
	ldrh r1, [r6, #4]
	strh r0, [r6, #4]
	ldr r2, _080104C0 @ =_080D9E10
	movs r3, #0x96
	lsls r3, r3, #3
	adds r5, r6, r3
	ldr r1, [r5]
	subs r0, r1, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	movs r4, #0
	adds r1, #1
	mov r7, sl
	subs r7, #4
	cmp r4, r1
	bge _08010486
	mov r8, r4
	movs r1, #0xfe
	lsls r1, r1, #2
	adds r2, r6, r1
	adds r3, r0, #0
	adds r1, r5, #0
_0801046E:
	mov r0, r8
	strb r0, [r2, #0xa]
	ldrh r0, [r6, #4]
	subs r0, r3, r0
	strh r0, [r2]
	adds r2, #0x18
	adds r3, #0x3c
	adds r4, #1
	ldr r0, [r1]
	adds r0, #1
	cmp r4, r0
	blt _0801046E
_08010486:
	cmp r7, #0xc
	bls _0801048E
	bl _08011170
_0801048E:
	ldr r0, _080104C4 @ =0x02037C1C
	movs r1, #0
_08010492:
	adds r5, r0, #0
	adds r5, #0x40
	adds r4, r1, #1
	adds r2, r0, #2
	subs r1, r0, #2
	movs r3, #0xe
_0801049E:
	ldrh r0, [r1]
	strh r0, [r1, #2]
	ldrh r0, [r2, #2]
	strh r0, [r2]
	adds r2, #2
	subs r1, #2
	subs r3, #1
	cmp r3, #0
	bge _0801049E
	adds r0, r5, #0
	adds r1, r4, #0
	cmp r1, #7
	ble _08010492
	b _0801058E
	.align 2, 0
_080104BC: .4byte gSinTable
_080104C0: .4byte _080D9E10
_080104C4: .4byte 0x02037C1C
_080104C8:
	ldr r2, _080104D4 @ =0x000004AC
	adds r1, r6, r2
	movs r0, #1
	str r0, [r1]
	movs r3, #4
	b _08010744
	.align 2, 0
_080104D4: .4byte 0x000004AC
_080104D8:
	ldrh r0, [r6, #0xc]
	adds r0, #3
	ldrh r1, [r6, #0xc]
	strh r0, [r6, #0xc]
	ldrh r0, [r6, #0xc]
	cmp r0, #0x2f
	bhi _080104EA
	bl _08011170
_080104EA:
	ldrh r0, [r6, #0xc]
	movs r0, #0x30
	strh r0, [r6, #0xc]
	movs r1, #5
_080104F2:
	str r1, [sp, #0xc]
	movs r2, #0
	mov sl, r2
	bl _08011170
_080104FC:
	movs r3, #1
	add sl, r3
	mov r0, sl
	cmp r0, #0xa
	ble _08010548
	movs r1, #3
	str r1, [sp, #0xc]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	movs r1, #0
	movs r5, #0x80
	lsls r5, r5, #2
_0801051A:
	stm r0!, {r1}
	subs r5, #1
	cmp r5, #0
	bne _0801051A
	ldr r4, _08010544 @ =_080C4E90
	movs r0, #0
	movs r1, #0
	movs r2, #9
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	movs r0, #1
	bl map_setBufferDirty
	ldrh r0, [r6, #4]
	strh r5, [r6, #4]
	bl _08011170
	.align 2, 0
_08010544: .4byte _080C4E90
_08010548:
	ldr r3, _080105A0 @ =0x02037900
	ldr r7, _080105A4 @ =0x02037C1C
	mov r4, sl
	adds r4, #2
	mov r2, sl
	lsls r2, r2, #1
	mov r8, r2
	ldr r0, _080105A8 @ =0x001FFFFF
	ands r4, r0
	movs r0, #0x38
	rsbs r0, r0, #0
	add r0, r8
	mov sb, r0
	movs r5, #7
_08010564:
	mov r1, r8
	adds r1, #2
	subs r1, r7, r1
	adds r0, r3, #0
	adds r2, r4, #0
	str r3, [sp, #0x14]
	bl CpuSet
	ldr r3, [sp, #0x14]
	mov r1, sb
	subs r0, r3, r1
	adds r1, r7, #2
	adds r2, r4, #0
	bl CpuSet
	ldr r3, [sp, #0x14]
	adds r3, #0x40
	adds r7, #0x40
	subs r5, #1
	cmp r5, #0
	bge _08010564
_0801058E:
	bl dmaq_getVBlankDmaQueue
	ldr r1, _080105AC @ =0x02037C00
	ldr r2, _080105B0 @ =0x06002300
	ldr r3, _080105B4 @ =0x80000100
	bl dmaq_enqueue
	bl _08011170
	.align 2, 0
_080105A0: .4byte 0x02037900
_080105A4: .4byte 0x02037C1C
_080105A8: .4byte 0x001FFFFF
_080105AC: .4byte 0x02037C00
_080105B0: .4byte 0x06002300
_080105B4: .4byte 0x80000100
_080105B8:
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrb r0, [r0, #0xe]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x14
	beq _080105CC
	bl _08011170
_080105CC:
	ldr r0, _080105F0 @ =0x0000000B
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080105EC
	ldr r5, _080105F4 @ =gMPlayTable
	adds r4, r0, #0
_080105DA:
	ldr r0, [r5]
	ldr r1, _080105F8 @ =gSongTable
	ldr r1, [r1, #8]
	bl MPlayStart
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _080105DA
_080105EC:
	movs r3, #7
	b _08010744
	.align 2, 0
_080105F0: .4byte 0x0000000B
_080105F4: .4byte gMPlayTable
_080105F8: .4byte gSongTable
_080105FC:
	movs r1, #1
	add sl, r1
	mov r2, sl
	cmp r2, #0x10
	bgt _08010688
	ldr r1, _08010670 @ =gSinTable
	lsls r0, r2, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08010612
	adds r0, #0x3f
_08010612:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #8
	asrs r0, r0, #0xf
	ldr r3, _08010674 @ =0xFFFFFF00
	adds r0, r0, r3
	ldrh r1, [r6, #0xa]
	strh r0, [r6, #0xa]
	ldrh r0, [r6, #0xa]
	ldrh r1, [r6, #4]
	strh r0, [r6, #4]
	ldrh r1, [r6]
	ldr r0, _08010678 @ =0x0000FEFF
	ands r0, r1
	ldrh r1, [r6]
	strh r0, [r6]
	mov r0, sl
	cmp r0, #1
	bne _0801065E
	ldr r0, _0801067C @ =0x0000000B
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0801065E
	ldr r5, _08010680 @ =gMPlayTable
	adds r4, r0, #0
_0801064C:
	ldr r0, [r5]
	ldr r1, _08010684 @ =gSongTable
	ldr r1, [r1, #8]
	bl MPlayStart
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _0801064C
_0801065E:
	mov r1, sl
	cmp r1, #5
	beq _08010668
	bl _08011170
_08010668:
	bl m4aSoundVSyncOff
	bl _08011170
	.align 2, 0
_08010670: .4byte gSinTable
_08010674: .4byte 0xFFFFFF00
_08010678: .4byte 0x0000FEFF
_0801067C: .4byte 0x0000000B
_08010680: .4byte gMPlayTable
_08010684: .4byte gSongTable
_08010688:
	movs r2, #0
	mov sl, r2
	movs r3, #7
	str r3, [sp, #0xc]
	bl _08011170
_08010694:
	ldr r0, _08010700 @ =0x03000108
	mov r8, r0
	ldrb r7, [r0, #0x18]
	cmp r7, #0
	bne _08010730
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	beq _08010730
	ldr r5, _08010704 @ =sub_800F77C
	ldr r4, _08010708 @ =0x03002E20
	movs r0, #1
	movs r1, #2
	rsbs r1, r1, #0
	bl irq_updateMask
	str r5, [r4, #0xc]
	movs r0, #2
	ldr r1, _0801070C @ =0x00010001
	bl irq_updateMask
	bl m4aSoundVSyncOff
	movs r0, #1
	ldr r1, _08010710 @ =0xFFFEFFFF
	bl irq_updateMask
	ldr r0, _08010714 @ =0x04000208
	strh r7, [r0]
	ldr r1, _08010718 @ =0x04000202
	ldr r2, _0801071C @ =0x0000FFFF
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08010720 @ =0x040000D4
	ldr r0, _08010724 @ =sio32MultiLoader_bin
	str r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r1, #4]
	ldr r0, _08010728 @ =0x84001000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _0801072C @ =0x020000C0
	movs r2, #0xfd
	lsls r2, r2, #6
	movs r0, #1
	str r0, [sp]
	mov r0, r8
	movs r3, #4
	bl sub_8011B0C
	movs r3, #8
	str r3, [sp, #0xc]
	bl _08011170
	.align 2, 0
_08010700: .4byte 0x03000108
_08010704: .4byte sub_800F77C
_08010708: .4byte 0x03002E20
_0801070C: .4byte 0x00010001
_08010710: .4byte 0xFFFEFFFF
_08010714: .4byte 0x04000208
_08010718: .4byte 0x04000202
_0801071C: .4byte 0x0000FFFF
_08010720: .4byte 0x040000D4
_08010724: .4byte sio32MultiLoader_bin
_08010728: .4byte 0x84001000
_0801072C: .4byte 0x020000C0
_08010730:
	movs r0, #0xa
	str r0, [sp, #0xc]
	movs r1, #0
	mov sl, r1
	bl _08011170
_0801073C:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	beq _0801074E
	movs r3, #0xa
_08010744:
	str r3, [sp, #0xc]
	movs r0, #0
	mov sl, r0
	bl _08011170
_0801074E:
	ldr r0, _08010768 @ =0x03000108
	bl sub_8011D98
	cmp r0, #0
	bne _0801075C
	bl _08011170
_0801075C:
	movs r1, #0
	mov sl, r1
	movs r2, #9
	str r2, [sp, #0xc]
	bl _08011170
	.align 2, 0
_08010768: .4byte 0x03000108
_0801076C:
	movs r3, #1
	add sl, r3
	mov r0, sl
	cmp r0, #0x10
	bgt _080107A8
	ldr r1, _080107A4 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08010782
	adds r0, #0x3f
_08010782:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #8
	asrs r0, r0, #0xf
	ldrh r1, [r6, #0xa]
	strh r0, [r6, #0xa]
	ldrh r0, [r6, #0xa]
	ldrh r1, [r6, #4]
	strh r0, [r6, #4]
	ldrh r0, [r6, #0x1a]
	movs r0, #0xff
	bl _080110D6
	.align 2, 0
_080107A4: .4byte gSinTable
_080107A8:
	movs r2, #0
	mov sl, r2
	movs r3, #0xe
	str r3, [sp, #0xc]
	ldrh r0, [r6, #0x1a]
	movs r0, #0xff
	strh r0, [r6, #0x1a]
	ldrh r0, [r6, #0x1e]
	movs r0, #0x10
	strh r0, [r6, #0x1e]
	bl _08011170
_080107C0:
	movs r0, #1
	add sl, r0
	mov r1, sl
	cmp r1, #0x10
	bgt _080107EC
	ldr r1, _080107E8 @ =gSinTable
	mov r2, sl
	lsls r0, r2, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080107D8
	adds r0, #0x3f
_080107D8:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #8
	asrs r0, r0, #0xf
	b _080108AC
	.align 2, 0
_080107E8: .4byte gSinTable
_080107EC:
	movs r3, #0
	mov sl, r3
	movs r0, #0xb
	str r0, [sp, #0xc]
	bl _08011170
_080107F8:
	ldr r0, _08010864 @ =_080C5EF0
	ldr r1, _08010868 @ =0x06008000
	bl LZ77UnCompVram
	ldr r4, _0801086C @ =_080C5684
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	movs r0, #1
	bl pltt_setDirtyFlag
	ldr r0, _08010870 @ =_080C5C34
	ldr r4, _08010874 @ =0x02037900
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _08010878 @ =0x06001000
	movs r5, #0xa0
	lsls r5, r5, #2
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuSet
	ldr r0, _0801087C @ =_080C4DAC
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _08010880 @ =0x06002000
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuSet
	ldrh r0, [r6]
	movs r0, #0xd4
	lsls r0, r0, #4
	strh r0, [r6]
	ldrh r0, [r6, #0xc]
	movs r0, #0x30
	strh r0, [r6, #0xc]
	movs r1, #0xc
	str r1, [sp, #0xc]
	movs r2, #0
	mov sl, r2
	bl m4aSoundVSyncOn
	movs r0, #0x92
	bl m4aSongNumStart
	bl _08011170
	.align 2, 0
_08010864: .4byte _080C5EF0
_08010868: .4byte 0x06008000
_0801086C: .4byte _080C5684
_08010870: .4byte _080C5C34
_08010874: .4byte 0x02037900
_08010878: .4byte 0x06001000
_0801087C: .4byte _080C4DAC
_08010880: .4byte 0x06002000
_08010884:
	movs r3, #1
	add sl, r3
	mov r0, sl
	cmp r0, #0x10
	bgt _080108C4
	ldr r1, _080108BC @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801089A
	adds r0, #0x3f
_0801089A:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #8
	asrs r0, r0, #0xf
	ldr r1, _080108C0 @ =0xFFFFFF00
	adds r0, r0, r1
_080108AC:
	ldrh r1, [r6, #0xa]
	strh r0, [r6, #0xa]
	ldrh r0, [r6, #0xa]
	ldrh r1, [r6, #4]
	strh r0, [r6, #4]
	bl _08011170
	.align 2, 0
_080108BC: .4byte gSinTable
_080108C0: .4byte 0xFFFFFF00
_080108C4:
	movs r2, #0
	mov sl, r2
	ldrh r0, [r6, #0x1c]
	ldr r0, _080108E4 @ =0x00001008
	strh r0, [r6, #0x1c]
	ldrh r0, [r6, #0x1a]
	ldr r0, _080108E8 @ =0x00000844
	strh r0, [r6, #0x1a]
	ldrh r0, [r6, #0x1e]
	movs r0, #0x10
	strh r0, [r6, #0x1e]
	movs r3, #0xd
	str r3, [sp, #0xc]
	bl _08011170
	.align 2, 0
_080108E4: .4byte 0x00001008
_080108E8: .4byte 0x00000844
_080108EC:
	movs r0, #0xf
	str r0, [sp, #0xc]
	ldrh r0, [r6]
	movs r5, #0
	strh r5, [r6]
	ldr r0, _080109E4 @ =0x04000208
	strh r5, [r0]
	ldr r1, _080109E8 @ =0x04000202
	ldr r2, _080109EC @ =0x0000FFFF
	adds r0, r2, #0
	strh r0, [r1]
	ldr r4, _080109F0 @ =_080C5684
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompVram
	movs r0, #1
	bl pltt_setDirtyFlag
	bl sub_8011450
	movs r0, #0
	bl pltt_getBuffer
	strh r5, [r0]
	ldr r0, _080109F4 @ =_080C5EF0
	ldr r1, _080109F8 @ =0x06008000
	bl LZ77UnCompVram
	ldr r0, _080109FC @ =_080C5924
	ldr r1, _08010A00 @ =0x06002000
	bl LZ77UnCompVram
	ldr r0, _08010A04 @ =_080C5708
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	ldr r0, _08010A08 @ =_080C580C
	ldr r1, _08010A0C @ =0x06006000
	bl LZ77UnCompVram
	ldr r0, _08010A10 @ =_080C6D9C
	ldr r1, _08010A14 @ =0x06001000
	bl LZ77UnCompVram
	bl sub_8011430
	ldr r1, _08010A18 @ =0x040000D4
	ldr r0, _08010A1C @ =mbChild_bin
	str r0, [r1]
	ldr r0, _08010A20 @ =0x02002000
	str r0, [r1, #4]
	ldr r0, _08010A24 @ =0x8400D600
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _08010A28 @ =0x020020C8
	movs r3, #0x96
	lsls r3, r3, #3
	adds r0, r6, r3
	ldr r0, [r0]
	adds r0, #1
	strb r0, [r1]
	ldrh r0, [r6, #2]
	movs r0, #0x82
	lsls r0, r0, #2
	strh r0, [r6, #2]
	ldrh r0, [r6, #8]
	ldr r0, _08010A2C @ =0x00004409
	strh r0, [r6, #8]
	ldrh r0, [r6, #0xe]
	movs r0, #0xa
	strh r0, [r6, #0xe]
	ldrh r0, [r6, #0x14]
	ldr r0, _08010A30 @ =0x00000C0A
	strh r0, [r6, #0x14]
	ldrh r0, [r6]
	movs r0, #0xf2
	lsls r0, r0, #5
	strh r0, [r6]
	ldrh r0, [r6, #0x1a]
	ldr r0, _08010A34 @ =0x00000844
	strh r0, [r6, #0x1a]
	ldrh r0, [r6, #0x1c]
	ldr r0, _08010A38 @ =0x00001008
	strh r0, [r6, #0x1c]
	ldrh r0, [r6, #0x1e]
	strh r5, [r6, #0x1e]
	ldrh r0, [r6, #0xc]
	strh r5, [r6, #0xc]
_080109A6:
	movs r0, #1
	add sl, r0
	mov r1, sl
	cmp r1, #0x10
	bgt _08010A48
	ldr r1, _08010A3C @ =gSinTable
	mov r2, sl
	lsls r0, r2, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080109BE
	adds r0, #0x3f
_080109BE:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #8
	asrs r0, r0, #0xf
	ldr r3, _08010A40 @ =0xFFFFFF00
	adds r0, r0, r3
	ldrh r1, [r6, #0xa]
	strh r0, [r6, #0xa]
	ldrh r0, [r6, #0x1a]
	ldr r0, _08010A44 @ =0x000008C4
	strh r0, [r6, #0x1a]
	movs r0, #0x10
	mov r1, sl
	subs r0, r0, r1
	b _08011050
	.align 2, 0
_080109E4: .4byte 0x04000208
_080109E8: .4byte 0x04000202
_080109EC: .4byte 0x0000FFFF
_080109F0: .4byte _080C5684
_080109F4: .4byte _080C5EF0
_080109F8: .4byte 0x06008000
_080109FC: .4byte _080C5924
_08010A00: .4byte 0x06002000
_08010A04: .4byte _080C5708
_08010A08: .4byte _080C580C
_08010A0C: .4byte 0x06006000
_08010A10: .4byte _080C6D9C
_08010A14: .4byte 0x06001000
_08010A18: .4byte 0x040000D4
_08010A1C: .4byte mbChild_bin
_08010A20: .4byte 0x02002000
_08010A24: .4byte 0x8400D600
_08010A28: .4byte 0x020020C8
_08010A2C: .4byte 0x00004409
_08010A30: .4byte 0x00000C0A
_08010A34: .4byte 0x00000844
_08010A38: .4byte 0x00001008
_08010A3C: .4byte gSinTable
_08010A40: .4byte 0xFFFFFF00
_08010A44: .4byte 0x000008C4
_08010A48:
	movs r2, #0
	mov sl, r2
	ldrh r0, [r6, #0x1c]
	ldr r0, _08010A64 @ =0x00001008
	strh r0, [r6, #0x1c]
	ldrh r0, [r6, #0x1a]
	ldr r0, _08010A68 @ =0x00000844
	strh r0, [r6, #0x1a]
	ldrh r0, [r6, #0x1e]
	movs r0, #0x10
	strh r0, [r6, #0x1e]
	movs r3, #0x10
	str r3, [sp, #0xc]
	b _08011170
	.align 2, 0
_08010A64: .4byte 0x00001008
_08010A68: .4byte 0x00000844
_08010A6C:
	movs r0, #0x11
	str r0, [sp, #0xc]
	ldr r1, _08010AE8 @ =sub_80113CC
	cmp r1, #0
	bne _08010A78
	ldr r1, _08010AEC @ =main_dummyIrqHandler
_08010A78:
	movs r0, #0
	bl irq_setHandler
	ldr r1, _08010AF0 @ =0x04000202
	ldr r2, _08010AF4 @ =0x0000FFFF
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08010AF8 @ =0x04000200
	movs r0, #1
	strh r0, [r2]
	ldr r0, _08010AFC @ =_080000B2
	ldrb r0, [r0]
	cmp r0, #0x96
	bne _08010AA8
	ldr r0, _08010B00 @ =_080000AC
	ldr r0, [r0]
	cmp r0, #0
	bne _08010AA8
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
_08010AA8:
	ldr r1, _08010B04 @ =0x04000004
	movs r0, #8
	strh r0, [r1]
	ldr r0, _08010B08 @ =0x04000208
	movs r2, #1
	strh r2, [r0]
	ldr r1, _08010B0C @ =0x030029D8
	ldr r3, _08010B10 @ =0x000004B9
	adds r0, r6, r3
	str r0, [r1]
	ldr r1, _08010B14 @ =0x000004E1
	adds r0, r6, r1
	movs r3, #0
	strb r2, [r0]
	ldr r2, _08010B18 @ =0x000004DC
	adds r1, r6, r2
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r1, _08010B1C @ =0x030029D0
	movs r0, #0xd6
	lsls r0, r0, #7
	str r0, [r1]
	ldr r0, _08010B20 @ =0x030029C4
	str r3, [r0]
	ldr r0, _08010B24 @ =_0806FABC
	ldr r1, _08010B28 @ =0x02037900
	movs r2, #0x80
	lsls r2, r2, #5
	bl CpuSet
	b _08011170
	.align 2, 0
_08010AE8: .4byte sub_80113CC
_08010AEC: .4byte main_dummyIrqHandler
_08010AF0: .4byte 0x04000202
_08010AF4: .4byte 0x0000FFFF
_08010AF8: .4byte 0x04000200
_08010AFC: .4byte _080000B2
_08010B00: .4byte _080000AC
_08010B04: .4byte 0x04000004
_08010B08: .4byte 0x04000208
_08010B0C: .4byte 0x030029D8
_08010B10: .4byte 0x000004B9
_08010B14: .4byte 0x000004E1
_08010B18: .4byte 0x000004DC
_08010B1C: .4byte 0x030029D0
_08010B20: .4byte 0x030029C4
_08010B24: .4byte _0806FABC
_08010B28: .4byte 0x02037900
_08010B2C:
	ldr r0, _08010B44 @ =0x030029C4
	ldr r1, [r0]
	adds r2, r0, #0
	cmp r1, #5
	bls _08010B38
	b _08010D7C
_08010B38:
	lsls r0, r1, #2
	ldr r1, _08010B48 @ =_08010B4C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08010B44: .4byte 0x030029C4
_08010B48: .4byte _08010B4C
_08010B4C: @ jump table
	.4byte _08010B64 @ case 0
	.4byte _08010B64 @ case 1
	.4byte _08010BE4 @ case 2
	.4byte _08010C06 @ case 3
	.4byte _08010CA0 @ case 4
	.4byte _08010D6C @ case 5
_08010B64:
	ldr r3, _08010BC0 @ =0x04000208
	movs r5, #0
	strh r5, [r3]
	ldr r2, _08010BC4 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08010BC8 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r4, _08010BCC @ =sub_8012254
	adds r1, r4, #0
	cmp r4, #0
	bne _08010B82
	ldr r1, _08010BD0 @ =main_dummyIrqHandler
_08010B82:
	movs r0, #7
	bl irq_setHandler
	adds r1, r4, #0
	cmp r1, #0
	bne _08010B90
	ldr r1, _08010BD0 @ =main_dummyIrqHandler
_08010B90:
	movs r0, #6
	bl irq_setHandler
	ldr r4, _08010BD4 @ =0x030029C0
	ldr r0, [r4]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r0, r1
	lsrs r0, r0, #8
	ldr r1, _08010BD8 @ =0x00003EDD
	bl sub_8011DF0
	movs r3, #0x9c
	lsls r3, r3, #3
	adds r0, r6, r3
	movs r1, #0
	strb r5, [r0]
	str r1, [r4]
	ldr r1, _08010BDC @ =0x030029C4
	ldr r0, [r1]
	cmp r0, #0
	bne _08010BE0
	movs r0, #3
	b _08010D7A
	.align 2, 0
_08010BC0: .4byte 0x04000208
_08010BC4: .4byte 0x04000200
_08010BC8: .4byte 0x0000FF3F
_08010BCC: .4byte sub_8012254
_08010BD0: .4byte main_dummyIrqHandler
_08010BD4: .4byte 0x030029C0
_08010BD8: .4byte 0x00003EDD
_08010BDC: .4byte 0x030029C4
_08010BE0:
	movs r0, #2
	b _08010D7A
_08010BE4:
	ldr r0, _08010C78 @ =0x030029C0
	ldr r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08010C06
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _08010C02
	ldr r0, _08010C7C @ =0x030029D8
	ldr r1, [r0]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08010C02:
	movs r0, #3
	str r0, [r2]
_08010C06:
	bl sub_8012370
	ldr r2, _08010C78 @ =0x030029C0
	ldr r0, [r2]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08010C1C
	ldr r1, _08010C80 @ =0x030029C4
	movs r0, #4
	str r0, [r1]
_08010C1C:
	ldr r1, _08010C84 @ =0x000004E1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08010C3A
	ldr r0, [r2]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08010C3A
	movs r2, #0x9c
	lsls r2, r2, #3
	adds r1, r6, r2
	movs r0, #1
	strb r0, [r1]
_08010C3A:
	ldr r3, _08010C88 @ =0x000004B4
	adds r0, r6, r3
	ldr r1, _08010C8C @ =0x000004BC
	adds r4, r6, r1
	movs r2, #0x9c
	lsls r2, r2, #3
	adds r1, r6, r2
	ldrb r2, [r1]
	adds r1, r4, #0
	bl sub_8011EE0
	ldr r1, _08010C78 @ =0x030029C0
	str r0, [r1]
	ldr r3, _08010C90 @ =0x030029BC
	ldrb r1, [r4, #5]
	ldrb r0, [r3]
	cmp r0, r1
	beq _08010C66
	strb r1, [r3]
	ldr r1, _08010C94 @ =0x03002C54
	movs r0, #0
	str r0, [r1]
_08010C66:
	ldr r2, _08010C98 @ =0x03002C50
	ldr r1, _08010C9C @ =_080D9DA8
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	b _08010D7C
	.align 2, 0
_08010C78: .4byte 0x030029C0
_08010C7C: .4byte 0x030029D8
_08010C80: .4byte 0x030029C4
_08010C84: .4byte 0x000004E1
_08010C88: .4byte 0x000004B4
_08010C8C: .4byte 0x000004BC
_08010C90: .4byte 0x030029BC
_08010C94: .4byte 0x03002C54
_08010C98: .4byte 0x03002C50
_08010C9C: .4byte _080D9DA8
_08010CA0:
	bl sub_8012388
	ldr r0, _08010D30 @ =0x030029BC
	ldrb r0, [r0]
	cmp r0, #9
	bne _08010CF2
	ldr r1, _08010D34 @ =0x04000202
	ldr r3, _08010D38 @ =0x0000FFFF
	adds r0, r3, #0
	strh r0, [r1]
	ldr r2, _08010D3C @ =0x04000200
	movs r0, #1
	strh r0, [r2]
	ldr r0, _08010D40 @ =_080000B2
	ldrb r0, [r0]
	cmp r0, #0x96
	bne _08010CD6
	ldr r0, _08010D44 @ =_080000AC
	ldr r0, [r0]
	cmp r0, #0
	bne _08010CD6
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
_08010CD6:
	ldr r1, _08010D48 @ =0x04000004
	movs r0, #0x18
	strh r0, [r1]
	ldr r1, _08010D4C @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	ldr r1, _08010D50 @ =0x000004E1
	adds r0, r6, r1
	movs r1, #0
	strb r1, [r0]
	movs r2, #0x9c
	lsls r2, r2, #3
	adds r0, r6, r2
	strb r1, [r0]
_08010CF2:
	ldr r2, _08010D3C @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08010D54 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	ldr r4, _08010D58 @ =sub_80127E4
	adds r1, r4, #0
	cmp r4, #0
	bne _08010D06
	ldr r1, _08010D5C @ =main_dummyIrqHandler
_08010D06:
	movs r0, #7
	bl irq_setHandler
	adds r1, r4, #0
	cmp r1, #0
	bne _08010D14
	ldr r1, _08010D5C @ =main_dummyIrqHandler
_08010D14:
	movs r0, #6
	bl irq_setHandler
	ldr r0, _08010D60 @ =0x030029C0
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	ldr r1, _08010D64 @ =0x03002C50
	ldr r1, [r1]
	bl sub_80128D0
	ldr r1, _08010D68 @ =0x030029C4
	movs r0, #5
	b _08010D7A
	.align 2, 0
_08010D30: .4byte 0x030029BC
_08010D34: .4byte 0x04000202
_08010D38: .4byte 0x0000FFFF
_08010D3C: .4byte 0x04000200
_08010D40: .4byte _080000B2
_08010D44: .4byte _080000AC
_08010D48: .4byte 0x04000004
_08010D4C: .4byte 0x04000208
_08010D50: .4byte 0x000004E1
_08010D54: .4byte 0x0000FF3F
_08010D58: .4byte sub_80127E4
_08010D5C: .4byte main_dummyIrqHandler
_08010D60: .4byte 0x030029C0
_08010D64: .4byte 0x03002C50
_08010D68: .4byte 0x030029C4
_08010D6C:
	ldr r0, _08010E24 @ =0x03002C54
	bl sub_80125CC
	cmp r0, #0
	beq _08010D7C
	ldr r1, _08010E28 @ =0x030029C4
	movs r0, #1
_08010D7A:
	str r0, [r1]
_08010D7C:
	movs r3, #0x80
	lsls r3, r3, #6
	mov r8, r3
	ldr r7, _08010E2C @ =0x06002386
	ldr r5, _08010E24 @ =0x03002C54
	ldr r0, _08010E30 @ =0x030029BC
	ldrb r1, [r0]
	ldr r0, _08010E34 @ =0x030029D0
	ldr r4, [r0]
	adds r2, r4, #0
	cmp r4, #0
	bge _08010D96
	adds r2, r4, #3
_08010D96:
	asrs r3, r2, #2
	muls r1, r3, r1
	ldr r0, [r5]
	adds r1, r0, r1
	lsls r2, r3, #3
	adds r2, r2, r3
	str r6, [sp]
	ldr r3, _08010E38 @ =0x000004DC
	adds r0, r6, r3
	str r0, [sp, #4]
	adds r0, r7, #0
	mov r3, r8
	bl sub_8011478
	ldr r1, _08010E3C @ =0x000004E1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08010DBE
	b _08011170
_08010DBE:
	movs r2, #0
	mov sl, r2
	movs r3, #0x12
	str r3, [sp, #0xc]
	ldr r1, _08010E40 @ =0x04000202
	ldr r2, _08010E44 @ =0x0000FFFF
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08010E48 @ =0x04000200
	movs r0, #1
	strh r0, [r2]
	ldr r0, _08010E4C @ =_080000B2
	ldrb r0, [r0]
	cmp r0, #0x96
	bne _08010DEC
	ldr r0, _08010E50 @ =_080000AC
	ldr r0, [r0]
	cmp r0, #0
	bne _08010DEC
	ldrh r1, [r2]
	mov r0, r8
	orrs r0, r1
	strh r0, [r2]
_08010DEC:
	ldr r1, _08010E54 @ =0x04000004
	movs r0, #0x18
	strh r0, [r1]
	ldr r1, _08010E58 @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	ldr r1, _08010E34 @ =0x030029D0
	movs r0, #0x88
	lsls r0, r0, #7
	str r0, [r1]
	ldr r0, _08010E5C @ =0x030029D8
	ldr r3, _08010E60 @ =0x000004B9
	adds r1, r6, r3
	str r1, [r0]
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08010E3C @ =0x000004E1
	adds r0, r6, r1
	movs r2, #0
	strb r2, [r0]
	adds r3, #0x23
	adds r1, r6, r3
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r0, _08010E28 @ =0x030029C4
	str r2, [r0]
	b _08011170
	.align 2, 0
_08010E24: .4byte 0x03002C54
_08010E28: .4byte 0x030029C4
_08010E2C: .4byte 0x06002386
_08010E30: .4byte 0x030029BC
_08010E34: .4byte 0x030029D0
_08010E38: .4byte 0x000004DC
_08010E3C: .4byte 0x000004E1
_08010E40: .4byte 0x04000202
_08010E44: .4byte 0x0000FFFF
_08010E48: .4byte 0x04000200
_08010E4C: .4byte _080000B2
_08010E50: .4byte _080000AC
_08010E54: .4byte 0x04000004
_08010E58: .4byte 0x04000208
_08010E5C: .4byte 0x030029D8
_08010E60: .4byte 0x000004B9
_08010E64:
	ldrh r0, [r6]
	ldr r1, _08010EA8 @ =0x0000FEFF
	ands r1, r0
	ldrh r0, [r6]
	strh r1, [r6]
	movs r0, #1
	add sl, r0
	mov r1, sl
	cmp r1, #0x10
	bgt _08010EB0
	ldr r1, _08010EAC @ =gSinTable
	mov r2, sl
	lsls r0, r2, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08010E86
	adds r0, #0x3f
_08010E86:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #8
	asrs r0, r0, #0xf
	ldrh r1, [r6, #0xa]
	strh r0, [r6, #0xa]
	ldrh r0, [r6, #0x1a]
	movs r0, #0xff
	strh r0, [r6, #0x1a]
	ldrh r0, [r6, #0x1e]
	mov r3, sl
	strh r3, [r6, #0x1e]
	b _08011170
	.align 2, 0
_08010EA8: .4byte 0x0000FEFF
_08010EAC: .4byte gSinTable
_08010EB0:
	movs r0, #0
	mov sl, r0
	movs r1, #0x16
	str r1, [sp, #0xc]
	ldrh r0, [r6, #0x1a]
	movs r0, #0xff
	strh r0, [r6, #0x1a]
	ldrh r0, [r6, #0x1e]
	movs r0, #0x10
	strh r0, [r6, #0x1e]
	movs r0, #1
	ldr r1, _08010ED4 @ =0xFFFEFFFF
	bl irq_updateMask
	ldr r0, _08010ED8 @ =0x0200218C
	bl _call_via_r0
	b _08011170
	.align 2, 0
_08010ED4: .4byte 0xFFFEFFFF
_08010ED8: .4byte 0x0200218C
_08010EDC:
	movs r2, #0x26
	str r2, [sp, #0xc]
	movs r3, #0
	mov sl, r3
	ldr r2, _08010F08 @ =gMPlayTable
	ldr r0, _08010F0C @ =gSongTable
	ldrh r1, [r0, #0x14]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #1
	bl m4aMPlayFadeOut
	ldrh r1, [r6]
	ldr r0, _08010F10 @ =0x0000FEFF
	ands r0, r1
	ldrh r1, [r6]
	strh r0, [r6]
	b _08011170
	.align 2, 0
_08010F08: .4byte gMPlayTable
_08010F0C: .4byte gSongTable
_08010F10: .4byte 0x0000FEFF
_08010F14:
	movs r0, #1
	add sl, r0
	mov r1, sl
	cmp r1, #0x10
	bgt _08010F60
	ldr r1, _08010F58 @ =gSinTable
	mov r2, sl
	lsls r0, r2, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08010F2C
	adds r0, #0x3f
_08010F2C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #8
	asrs r0, r0, #0xf
	ldrh r1, [r6, #0xa]
	strh r0, [r6, #0xa]
	ldr r3, _08010F5C @ =0x0000046C
	adds r2, r6, r3
	ldrh r1, [r6, #0xa]
	movs r0, #0xb8
	subs r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r6, #0x1a]
	movs r0, #0xff
	strh r0, [r6, #0x1a]
	ldrh r0, [r6, #0x1e]
	mov r0, sl
	strh r0, [r6, #0x1e]
	b _08011170
	.align 2, 0
_08010F58: .4byte gSinTable
_08010F5C: .4byte 0x0000046C
_08010F60:
	ldrh r0, [r6, #0x1a]
	movs r0, #0xff
	strh r0, [r6, #0x1a]
	ldrh r0, [r6, #0x1e]
	movs r0, #0x10
	strh r0, [r6, #0x1e]
	ldr r0, _08010FA0 @ =0x0000000B
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08010F8C
	ldr r5, _08010FA4 @ =gMPlayTable
	adds r4, r0, #0
_08010F7A:
	ldr r0, [r5]
	ldr r1, _08010FA8 @ =gSongTable
	ldr r1, [r1, #8]
	bl MPlayStart
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _08010F7A
_08010F8C:
	ldr r0, _08010FAC @ =sub_80111A8
	ldr r2, _08010FB0 @ =0x03002E20
	str r0, [r2]
	ldrb r0, [r2, #8]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r2, #8]
	movs r0, #1
	b _08011198
	.align 2, 0
_08010FA0: .4byte 0x0000000B
_08010FA4: .4byte gMPlayTable
_08010FA8: .4byte gSongTable
_08010FAC: .4byte sub_80111A8
_08010FB0: .4byte 0x03002E20
_08010FB4:
	ldrh r0, [r6]
	movs r0, #0
	strh r0, [r6]
	ldr r1, _08011058 @ =sub_80113CC
	cmp r1, #0
	bne _08010FC2
	ldr r1, _0801105C @ =main_dummyIrqHandler
_08010FC2:
	movs r0, #0
	bl irq_setHandler
	ldr r0, _08011060 @ =_080C4CCC
	ldr r4, _08011064 @ =0x02037900
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _08011068 @ =0x06001000
	movs r5, #0xa0
	lsls r5, r5, #2
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuSet
	ldr r0, _0801106C @ =_080C4DAC
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _08011070 @ =0x06002000
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuSet
	ldrh r0, [r6]
	movs r0, #0xf4
	lsls r0, r0, #4
	strh r0, [r6]
	ldrh r0, [r6, #0xc]
	movs r0, #0x30
	strh r0, [r6, #0xc]
	movs r1, #0x14
	str r1, [sp, #0xc]
	movs r2, #0
	mov sl, r2
_08011008:
	movs r3, #1
	add sl, r3
	mov r0, sl
	cmp r0, #0x10
	bgt _0801107C
	ldr r1, _08011074 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801101E
	adds r0, #0x3f
_0801101E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #8
	asrs r0, r0, #0xf
	ldr r1, _08011078 @ =0xFFFFFF00
	adds r0, r0, r1
	ldrh r1, [r6, #0xa]
	strh r0, [r6, #0xa]
	ldrh r0, [r6, #0xa]
	ldrh r1, [r6, #4]
	strh r0, [r6, #4]
	ldrh r0, [r6, #0x1a]
	movs r0, #0xbf
	strh r0, [r6, #0x1a]
	mov r2, sl
_08011042: @ 0x08011042
	lsls r0, r2, #4
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0801104C
	adds r0, #0xf
_0801104C:
	asrs r0, r0, #4
	adds r0, #0x10
_08011050:
	ldrh r1, [r6, #0x1e]
	strh r0, [r6, #0x1e]
	b _08011170
	.align 2, 0
_08011058: .4byte sub_80113CC
_0801105C: .4byte main_dummyIrqHandler
_08011060: .4byte _080C4CCC
_08011064: .4byte 0x02037900
_08011068: .4byte 0x06001000
_0801106C: .4byte _080C4DAC
_08011070: .4byte 0x06002000
_08011074: .4byte gSinTable
_08011078: .4byte 0xFFFFFF00
_0801107C:
	movs r3, #0
	mov sl, r3
	ldrh r0, [r6, #0x1c]
	ldr r0, _080110A4 @ =0x00001008
	strh r0, [r6, #0x1c]
	ldrh r0, [r6, #0x1a]
	ldr r0, _080110A8 @ =0x00000844
	strh r0, [r6, #0x1a]
	ldrh r0, [r6, #0x1e]
	movs r0, #0x10
	strh r0, [r6, #0x1e]
	movs r0, #0x15
	str r0, [sp, #0xc]
	ldr r0, _080110AC @ =0x03002C80
	mov r1, sl
	strh r1, [r0, #0x16]
	bl sio2_stop
	b _08011170
	.align 2, 0
_080110A4: .4byte 0x00001008
_080110A8: .4byte 0x00000844
_080110AC: .4byte 0x03002C80
_080110B0:
	ldr r0, _080110C4 @ =0x03002AE0
	ldrh r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08011170
	movs r2, #0x2a
	str r2, [sp, #0xc]
	b _08011170
	.align 2, 0
_080110C4: .4byte 0x03002AE0
_080110C8:
	movs r3, #1
	add sl, r3
	mov r0, sl
	cmp r0, #0x10
	bgt _080110E0
	ldrh r0, [r6, #0x1a]
	movs r0, #0xbf
_080110D6:
	strh r0, [r6, #0x1a]
	ldrh r0, [r6, #0x1e]
	mov r1, sl
	strh r1, [r6, #0x1e]
	b _08011170
_080110E0:
	mov r2, sl
	cmp r2, #0x28
	ble _08011170
	ldrh r0, [r6, #0x1a]
	movs r5, #0
	movs r0, #0xbf
	strh r0, [r6, #0x1a]
	ldrh r0, [r6, #0x1e]
	movs r0, #0x10
	strh r0, [r6, #0x1e]
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r0, _08011158 @ =title_main
	ldr r4, _0801115C @ =0x03002E20
	str r0, [r4]
	ldrb r0, [r4, #8]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r4, #8]
	bl irq_init
	ldr r1, _08011160 @ =main_vblankHandler
	cmp r1, #0
	bne _08011118
	ldr r1, _08011164 @ =main_dummyIrqHandler
_08011118:
	movs r0, #0
	bl irq_setHandler
	ldr r1, _08011168 @ =vcount_irqHandler
	cmp r1, #0
	bne _08011126
	ldr r1, _08011164 @ =main_dummyIrqHandler
_08011126:
	movs r0, #2
	bl irq_setHandler
	movs r0, #1
	movs r1, #2
	rsbs r1, r1, #0
	bl irq_updateMask
	str r5, [r4, #0xc]
	movs r0, #2
	ldr r1, _0801116C @ =0x00010001
	bl irq_updateMask
	bl vcount_init
	bl m4aSoundVSyncOn
	movs r0, #2
	movs r1, #0x80
	lsls r1, r1, #9
	bl irq_updateMask
	movs r0, #1
	b _08011198
	.align 2, 0
_08011158: .4byte title_main
_0801115C: .4byte 0x03002E20
_08011160: .4byte main_vblankHandler
_08011164: .4byte main_dummyIrqHandler
_08011168: .4byte vcount_irqHandler
_0801116C: .4byte 0x00010001
_08011170:
	adds r0, r6, #0
	bl sub_800EDFC
	adds r0, r6, #0
	bl sub_800F140
	adds r0, r6, #0
	bl sub_800EE7C
	ldr r3, [sp, #0xc]
	cmp r3, #0xd
	bgt _0801118E
	adds r0, r6, #0
	bl sub_800F618
_0801118E:
	adds r0, r6, #0
	bl sub_800F3C8
	bl sub_800FFEC
_08011198:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80111A8
sub_80111A8: @ 0x080111A8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r7, #0
	movs r0, #0
	mov r8, r0
	ldr r1, _08011248 @ =0x04000200
	movs r0, #1
	strh r0, [r1]
	ldr r1, _0801124C @ =0x06001000
	movs r0, #0
	bl map_setBufferDestination
	ldr r4, _08011250 @ =0x03000100
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	str r0, [r4]
	adds r6, r0, #0
	movs r1, #0
	ldr r3, _08011254 @ =0x000004E3
	movs r2, #0
_080111DA:
	strb r2, [r0]
	adds r0, #1
	adds r1, #1
	cmp r1, r3
	bls _080111DA
	bl oam_init
	ldr r5, _08011258 @ =sub_800F77C
	ldr r4, _0801125C @ =0x03002E20
	movs r0, #1
	movs r1, #2
	rsbs r1, r1, #0
	bl irq_updateMask
	str r5, [r4, #0xc]
	movs r0, #2
	ldr r1, _08011260 @ =0x00010001
	bl irq_updateMask
	ldr r1, _08011264 @ =sub_8011384
	cmp r1, #0
	bne _08011208
	ldr r1, _08011268 @ =main_dummyIrqHandler
_08011208:
	movs r0, #0
	bl irq_setHandler
	movs r1, #0x80
	lsls r1, r1, #9
	movs r0, #2
	bl irq_updateMask
	movs r0, #0x92
	bl m4aSongNumStart
	ldr r1, _0801126C @ =0x00000844
	mov sb, r1
	ldr r5, _08011270 @ =0x00001008
_08011224:
	bl oam_update
	bl VBlankIntrWait
	bl m4aSoundMain
	movs r2, #0xfb
	lsls r2, r2, #2
	adds r1, r6, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r7, #0
	beq _08011274
	cmp r7, #1
	beq _080112E6
	b _08011224
	.align 2, 0
_08011248: .4byte 0x04000200
_0801124C: .4byte 0x06001000
_08011250: .4byte 0x03000100
_08011254: .4byte 0x000004E3
_08011258: .4byte sub_800F77C
_0801125C: .4byte 0x03002E20
_08011260: .4byte 0x00010001
_08011264: .4byte sub_8011384
_08011268: .4byte main_dummyIrqHandler
_0801126C: .4byte 0x00000844
_08011270: .4byte 0x00001008
_08011274:
	ldrh r0, [r6]
	movs r4, #0
	strh r7, [r6]
	ldr r1, _08011334 @ =sub_80113CC
	cmp r1, #0
	bne _08011282
	ldr r1, _08011338 @ =main_dummyIrqHandler
_08011282:
	movs r0, #0
	bl irq_setHandler
	movs r4, #0xa0
	lsls r4, r4, #0x13
	ldr r0, _0801133C @ =_080C5684
	adds r1, r4, #0
	bl LZ77UnCompVram
	strh r7, [r4]
	ldr r0, _08011340 @ =_080C5EF0
	ldr r1, _08011344 @ =0x06008000
	bl LZ77UnCompVram
	ldr r0, _08011348 @ =_080C5C34
	ldr r1, _0801134C @ =0x06002000
	bl LZ77UnCompVram
	ldr r0, _08011350 @ =_080C5708
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	ldr r0, _08011354 @ =_080C580C
	ldr r1, _08011358 @ =0x06006000
	bl LZ77UnCompVram
	ldrh r0, [r6, #2]
	movs r0, #0x82
	lsls r0, r0, #2
	strh r0, [r6, #2]
	ldrh r0, [r6, #8]
	ldr r0, _0801135C @ =0x00004409
	strh r0, [r6, #8]
	ldrh r0, [r6, #0xe]
	movs r0, #0xa
	strh r0, [r6, #0xe]
	ldrh r0, [r6, #0x14]
	ldr r0, _08011360 @ =0x00000C0A
	strh r0, [r6, #0x14]
	ldrh r0, [r6]
	movs r0, #0xe4
	lsls r0, r0, #4
	strh r0, [r6]
	ldrh r0, [r6, #0x1a]
	mov r0, sb
	strh r0, [r6, #0x1a]
	ldrh r0, [r6, #0x1c]
	strh r5, [r6, #0x1c]
	movs r7, #1
_080112E6:
	movs r1, #1
	add r8, r1
	mov r2, r8
	cmp r2, #0x10
	bgt _0801136C
	ldr r1, _08011364 @ =gSinTable
	lsls r0, r2, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080112FC
	adds r0, #0x3f
_080112FC:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #8
	asrs r0, r0, #0xf
	ldr r1, _08011368 @ =0xFFFFFF00
	adds r0, r0, r1
	ldrh r1, [r6, #0xa]
	strh r0, [r6, #0xa]
	ldrh r0, [r6, #0xa]
	ldrh r1, [r6, #4]
	strh r0, [r6, #4]
	ldrh r0, [r6, #0x1a]
	movs r0, #0xbf
	strh r0, [r6, #0x1a]
	mov r2, r8
	lsls r0, r2, #4
	rsbs r0, r0, #0
	cmp r0, #0
	bge _0801132A
	adds r0, #0xf
_0801132A:
	asrs r0, r0, #4
	adds r0, #0x10
	ldrh r1, [r6, #0x1e]
	strh r0, [r6, #0x1e]
	b _08011224
	.align 2, 0
_08011334: .4byte sub_80113CC
_08011338: .4byte main_dummyIrqHandler
_0801133C: .4byte _080C5684
_08011340: .4byte _080C5EF0
_08011344: .4byte 0x06008000
_08011348: .4byte _080C5C34
_0801134C: .4byte 0x06002000
_08011350: .4byte _080C5708
_08011354: .4byte _080C580C
_08011358: .4byte 0x06006000
_0801135C: .4byte 0x00004409
_08011360: .4byte 0x00000C0A
_08011364: .4byte gSinTable
_08011368: .4byte 0xFFFFFF00
_0801136C:
	movs r0, #0
	mov r8, r0
	ldrh r0, [r6, #0x1c]
	strh r5, [r6, #0x1c]
	ldrh r0, [r6, #0x1a]
	mov r1, sb
	strh r1, [r6, #0x1a]
	ldrh r0, [r6, #0x1e]
	movs r0, #0x10
	strh r0, [r6, #0x1e]
	movs r7, #0x15
	b _08011224

	thumb_func_start sub_8011384
sub_8011384: @ 0x08011384
	push {lr}
	bl SoundVSync_rev01
	bl main_increaseFrameCounter
	ldr r1, _080113C4 @ =0x040000BA
	movs r0, #0
	strh r0, [r1]
	bl oam_cpuCopyToHw
	bl dmaq_getVBlankDmaQueue
	bl dmaq_process
	bl pltt_copyBufferToHw
	bl map_copyBuffersToHw
	bl oam_reset
	ldr r0, _080113C8 @ =0x03002E20
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _080113B8
	bl _call_via_r0
_080113B8:
	bl sub_80113F4
	bl main_setVBlankCheckFlag
	pop {r0}
	bx r0
	.align 2, 0
_080113C4: .4byte 0x040000BA
_080113C8: .4byte 0x03002E20

	thumb_func_start sub_80113CC
sub_80113CC: @ 0x080113CC
	push {lr}
	bl SoundVSync_rev01
	bl main_increaseFrameCounter
	ldr r0, _080113F0 @ =0x03002E20
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _080113E2
	bl _call_via_r0
_080113E2:
	bl sub_80113F4
	bl main_setVBlankCheckFlag
	pop {r0}
	bx r0
	.align 2, 0
_080113F0: .4byte 0x03002E20

	thumb_func_start sub_80113F4
sub_80113F4: @ 0x080113F4
	push {r4, lr}
	ldr r0, _08011414 @ =0x04000130
	ldrh r0, [r0]
	ldr r2, _08011418 @ =0x000003FF
	adds r1, r2, #0
	eors r1, r0
	ldr r4, _0801141C @ =0x03002AE0
	ldr r3, _08011420 @ =0x030029AC
	ldrh r2, [r3]
	adds r0, r1, #0
	bics r0, r2
	strh r0, [r4]
	strh r1, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011414: .4byte 0x04000130
_08011418: .4byte 0x000003FF
_0801141C: .4byte 0x03002AE0
_08011420: .4byte 0x030029AC

	thumb_func_start sub_8011424
sub_8011424: @ 0x08011424
	push {lr}
	bl main_frameProc
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8011430
sub_8011430: @ 0x08011430
	ldr r1, _0801144C @ =0x06002478
	movs r0, #0x52
	strh r0, [r1]
	adds r1, #0x40
	movs r0, #0x5d
	strh r0, [r1]
	subs r1, #0x42
	movs r0, #0x39
	strh r0, [r1]
	adds r1, #0x40
	movs r0, #0x3a
	strh r0, [r1]
	bx lr
	.align 2, 0
_0801144C: .4byte 0x06002478

	thumb_func_start sub_8011450
sub_8011450: @ 0x08011450
	push {r4, lr}
	ldr r4, _08011470 @ =_080C6EAC
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011470: .4byte _080C6EAC

	thumb_func_start main_dummyIrqHandler5
main_dummyIrqHandler5: @ 0x08011474
	bx lr
	.align 2, 0

	thumb_func_start sub_8011478
sub_8011478: @ 0x08011478
	push {r4, r5, lr}
	adds r3, r1, #0
	adds r1, r2, #0
	ldr r4, [sp, #0xc]
	ldr r5, [sp, #0x10]
	movs r0, #0xb0
	muls r0, r3, r0
	bl __divsi3
	adds r3, r0, #0
	cmp r3, #0xb0
	ble _08011492
	movs r3, #0
_08011492:
	ldr r0, [r5]
	cmp r0, r3
	bgt _080114AC
	adds r0, #0xa
	cmp r0, r3
	blt _080114AC
	str r3, [r5]
	movs r1, #0x10
	rsbs r1, r1, #0
	adds r0, r1, #0
	subs r0, r0, r3
	ldrh r1, [r4, #4]
	strh r0, [r4, #4]
_080114AC:
	ldr r0, _080114C4 @ =0x030029B0
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _080114CC
	ldrh r0, [r4, #6]
	ldr r0, _080114C8 @ =0x0000FF94
	b _080114D0
	.align 2, 0
_080114C4: .4byte 0x030029B0
_080114C8: .4byte 0x0000FF94
_080114CC:
	ldrh r0, [r4, #6]
	ldr r0, _080114E8 @ =0x0000FF93
_080114D0:
	strh r0, [r4, #6]
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	ldrh r2, [r4]
	orrs r1, r0
	strh r1, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080114E8: .4byte 0x0000FF93

	thumb_func_start sub_080114EC
sub_080114EC: @ 0x080114EC
	push {r4, lr}
	adds r4, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0xc
	movs r0, #8
	subs r0, r0, r2
	lsls r0, r0, #2
	lsls r4, r0
	cmp r2, #0
	beq _0801151E
_08011504:
	lsrs r0, r4, #0x1c
	cmp r0, #9
	bhi _0801150E
	adds r0, #0x30
	b _08011510
_0801150E:
	adds r0, #0x37
_08011510:
	orrs r0, r3
	strh r0, [r1]
	lsls r4, r4, #4
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bne _08011504
_0801151E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_8011524
sub_8011524: @ 0x08011524
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	bl sub_8011D98
	cmp r0, #0
	beq _0801153C
	b _08011A2C
_0801153C:
	adds r0, r7, #0
	adds r0, #0x4a
	ldrb r1, [r0]
	str r0, [sp]
	cmp r1, #0xf
	bls _08011550
	subs r0, r1, #1
	ldr r1, [sp]
	strb r0, [r1]
	b _08011A2C
_08011550:
	adds r0, r7, #0
	adds r0, #0x48
	ldrb r1, [r0]
	mov sl, r0
	cmp r1, #0
	beq _080115A4
	movs r1, #0
	strb r1, [r0]
	ldr r2, _08011594 @ =0x04000128
	ldrh r0, [r2]
	movs r5, #0xfc
	ands r5, r0
	cmp r5, #8
	beq _080115A4
	strb r1, [r7, #0x1e]
	strb r1, [r7, #0x18]
	strb r1, [r7, #0x1d]
	movs r0, #0xf
	ldr r3, [sp]
	strb r0, [r3]
	mov r0, sl
	strb r1, [r0]
	strh r1, [r7, #0x16]
	ldr r0, _08011598 @ =0x04000134
	strh r1, [r0]
	ldr r3, _0801159C @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _080115A0 @ =0x0400012A
	strh r1, [r0]
	movs r0, #8
	eors r0, r5
	b _08011A2E
	.align 2, 0
_08011594: .4byte 0x04000128
_08011598: .4byte 0x04000134
_0801159C: .4byte 0x00002003
_080115A0: .4byte 0x0400012A
_080115A4:
	ldrb r0, [r7, #0x18]
	cmp r0, #0xdf
	bls _08011626
	adds r0, r7, #0
	bl sub_8011C40
	adds r5, r0, #0
	cmp r5, #0
	beq _080115B8
	b _08011A2E
_080115B8:
	adds r0, r7, #0
	adds r0, #0x4b
	ldrb r0, [r0]
	cmp r0, #1
	bne _080115D4
	ldrb r0, [r7, #0x18]
	cmp r0, #0xe1
	bls _080115D4
	adds r0, r7, #0
	bl sub_8011D98
	cmp r0, #0
	bne _080115D4
	b _080119B8
_080115D4:
	adds r0, r7, #0
	bl sub_8011D98
	cmp r0, #0
	beq _080115E0
	b _08011A2C
_080115E0:
	ldrh r0, [r7, #0x16]
	adds r2, r0, #0
	cmp r2, #0
	bne _08011620
	strb r2, [r7, #0x1e]
	strb r2, [r7, #0x18]
	strb r2, [r7, #0x1d]
	movs r0, #0xf
	ldr r1, [sp]
	strb r0, [r1]
	mov r3, sl
	strb r2, [r3]
	strh r2, [r7, #0x16]
	ldr r0, _08011610 @ =0x04000134
	strh r2, [r0]
	ldr r1, _08011614 @ =0x04000128
	ldr r3, _08011618 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _0801161C @ =0x0400012A
	strh r2, [r0]
	movs r0, #0x71
	b _08011A2E
	.align 2, 0
_08011610: .4byte 0x04000134
_08011614: .4byte 0x04000128
_08011618: .4byte 0x00002003
_0801161C: .4byte 0x0400012A
_08011620:
	subs r0, #1
	strh r0, [r7, #0x16]
	b _08011A2C
_08011626:
	ldrb r0, [r7, #0x18]
	cmp r0, #2
	bne _0801162E
	b _08011768
_0801162E:
	cmp r0, #2
	bgt _0801163C
	cmp r0, #0
	beq _0801164A
	cmp r0, #1
	beq _08011708
	b _080118D8
_0801163C:
	cmp r0, #0xd0
	bne _08011642
	b _080117B4
_08011642:
	cmp r0, #0xd1
	bne _08011648
	b _08011854
_08011648:
	b _080118D8
_0801164A:
	movs r3, #0xe
	movs r5, #3
	ldr r0, _08011690 @ =0x04000120
	ldrh r0, [r0, #6]
	adds r1, r0, #0
	ldr r0, _08011694 @ =0x0000FFFF
	ldrb r2, [r7, #0x1e]
	adds r6, r2, #0
	cmp r1, r0
	bne _08011672
	adds r4, r1, #0
	ldr r1, _08011698 @ =0x04000126
_08011662:
	asrs r3, r3, #1
	subs r1, #2
	subs r5, #1
	cmp r5, #0
	beq _08011672
	ldrh r0, [r1]
	cmp r0, r4
	beq _08011662
_08011672:
	movs r0, #0xe
	ands r3, r0
	strb r3, [r7, #0x1d]
	movs r5, #3
	ldr r0, _08011690 @ =0x04000120
	ldrh r0, [r0, #6]
	adds r4, r0, #0
	asrs r0, r2, #3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080116A0
	ldr r0, _0801169C @ =0x00007208
	b _080116C6
	.align 2, 0
_08011690: .4byte 0x04000120
_08011694: .4byte 0x0000FFFF
_08011698: .4byte 0x04000126
_0801169C: .4byte 0x00007208
_080116A0:
	subs r5, #1
	cmp r5, #0
	beq _080116CC
	lsls r0, r5, #1
	ldr r1, _080116F4 @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r4, r0, #0
	adds r0, r2, #0
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080116A0
	adds r0, r1, #0
	lsls r0, r5
	movs r1, #0xe4
	lsls r1, r1, #7
	orrs r0, r1
_080116C6:
	cmp r4, r0
	beq _080116A0
	movs r3, #0
_080116CC:
	adds r0, r3, #0
	ands r0, r6
	strb r0, [r7, #0x1e]
	cmp r3, #0
	bne _080116DC
	movs r0, #0xf
	ldr r2, [sp]
	strb r0, [r2]
_080116DC:
	ldr r3, [sp]
	ldrb r0, [r3]
	cmp r0, #0
	bne _080116F8
	ldrb r0, [r7, #0x1d]
	ldrb r1, [r7, #0x1e]
	cmp r0, r1
	beq _080116FE
	adds r0, r7, #0
	bl sub_8011AB8
	b _08011708
	.align 2, 0
_080116F4: .4byte 0x04000120
_080116F8:
	subs r0, #1
	ldr r2, [sp]
	strb r0, [r2]
_080116FE:
	ldrb r1, [r7, #0x1e]
	movs r3, #0xc4
	lsls r3, r3, #7
	adds r0, r3, #0
	b _08011812
_08011708:
	adds r1, r7, #0
	adds r1, #0x49
	movs r0, #0
	strb r0, [r1]
	movs r5, #3
	mov ip, r1
	ldr r3, _08011760 @ =0x03000158
_08011716:
	lsls r0, r5, #1
	ldr r2, _08011764 @ =0x04000120
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r4, r0, #0
	asrs r0, r4, #8
	subs r2, r5, #1
	cmp r0, #0x72
	bne _08011740
	lsls r0, r2, #1
	adds r0, r0, r3
	strh r4, [r0]
	movs r0, #0xff
	ands r4, r0
	movs r0, #1
	lsls r0, r5
	cmp r4, r0
	bne _08011740
	ldrb r0, [r1]
	orrs r4, r0
	strb r4, [r1]
_08011740:
	adds r5, r2, #0
	cmp r5, #0
	bne _08011716
	ldrb r0, [r7, #0x1d]
	mov r3, ip
	ldrb r3, [r3]
	cmp r0, r3
	bne _080116FE
	movs r0, #2
	strb r0, [r7, #0x18]
	mov r0, ip
	ldrb r1, [r0]
	movs r2, #0xc2
	lsls r2, r2, #7
	b _08011810
	.align 2, 0
_08011760: .4byte 0x03000158
_08011764: .4byte 0x04000120
_08011768:
	movs r5, #3
	movs r3, #0x49
	adds r3, r3, r7
	mov ip, r3
	mov r4, ip
	movs r6, #1
	ldr r0, _080117AC @ =0x03000158
	mov sb, r0
	ldr r1, _080117B0 @ =0x04000120
	mov r8, r1
_0801177C:
	ldrb r3, [r4]
	adds r0, r3, #0
	asrs r0, r5
	ands r0, r6
	subs r2, r5, #1
	cmp r0, #0
	beq _080117A2
	lsls r0, r5, #1
	add r0, r8
	ldrh r1, [r0]
	lsls r0, r2, #1
	add r0, sb
	ldrh r0, [r0]
	cmp r1, r0
	beq _080117A2
	adds r0, r6, #0
	lsls r0, r5
	eors r3, r0
	strb r3, [r4]
_080117A2:
	adds r5, r2, #0
	cmp r5, #0
	bne _0801177C
	b _08011940
	.align 2, 0
_080117AC: .4byte 0x03000158
_080117B0: .4byte 0x04000120
_080117B4:
	movs r3, #1
	movs r5, #3
	movs r2, #0x49
	adds r2, r2, r7
	mov ip, r2
	movs r0, #0x19
	adds r0, r0, r7
	mov r8, r0
	movs r6, #0
	ldr r1, _0801181C @ =0x03000158
	mov sb, r1
_080117CA:
	lsls r0, r5, #1
	ldr r2, _08011820 @ =0x04000120
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r4, r0, #0
	subs r2, r5, #1
	mov r1, r8
	adds r0, r1, r2
	strb r4, [r0]
	mov r0, ip
	ldrb r1, [r0]
	asrs r1, r5
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08011800
	asrs r0, r4, #8
	subs r0, #0x72
	cmp r0, #1
	bls _080117F4
	b _080119BE
_080117F4:
	lsls r0, r2, #1
	add r0, sb
	ldrh r0, [r0]
	cmp r4, r0
	bne _08011800
	movs r3, #0
_08011800:
	adds r5, r2, #0
	cmp r5, #0
	bne _080117CA
	cmp r3, #0
	bne _08011824
	ldrb r1, [r7, #0x1c]
	movs r2, #0xc6
	lsls r2, r2, #7
_08011810:
	adds r0, r2, #0
_08011812:
	orrs r1, r0
	adds r0, r7, #0
	bl sub_8011A40
	b _08011A2E
	.align 2, 0
_0801181C: .4byte 0x03000158
_08011820: .4byte 0x04000120
_08011824:
	movs r0, #0xd1
	strb r0, [r7, #0x18]
	movs r3, #0x11
	movs r5, #3
	mov r1, r8
	adds r1, #2
_08011830:
	ldrb r0, [r1]
	adds r3, r3, r0
	subs r1, #1
	subs r5, #1
	cmp r5, #0
	bne _08011830
	strb r3, [r7, #0x14]
	movs r0, #0xff
	ands r3, r0
	movs r1, #0xc8
	lsls r1, r1, #7
	adds r0, r1, #0
	orrs r3, r0
	adds r0, r7, #0
	adds r1, r3, #0
	bl sub_8011A40
	b _08011A2E
_08011854:
	movs r5, #3
	movs r2, #0x49
	ldrb r1, [r2, r7]
	ldr r2, _08011894 @ =0x04000126
	movs r3, #1
_0801185E:
	ldrh r0, [r2]
	adds r4, r0, #0
	adds r0, r1, #0
	asrs r0, r5
	ands r0, r3
	cmp r0, #0
	beq _08011874
	asrs r0, r4, #8
	cmp r0, #0x73
	beq _08011874
	b _080119F4
_08011874:
	subs r2, #2
	subs r5, #1
	cmp r5, #0
	bne _0801185E
	adds r0, r7, #0
	bl MultiBoot
	adds r5, r0, #0
	cmp r5, #0
	bne _08011898
	movs r0, #0xe0
	strb r0, [r7, #0x18]
	adds r0, #0xb0
	strh r0, [r7, #0x16]
	b _08011A2C
	.align 2, 0
_08011894: .4byte 0x04000126
_08011898:
	movs r1, #0
	strb r1, [r7, #0x1e]
	strb r1, [r7, #0x18]
	strb r1, [r7, #0x1d]
	movs r0, #0xf
	ldr r3, [sp]
	strb r0, [r3]
	mov r0, sl
	strb r1, [r0]
	strh r1, [r7, #0x16]
	ldr r0, _080118C8 @ =0x04000134
	strh r1, [r0]
	ldr r2, _080118CC @ =0x04000128
	ldr r3, _080118D0 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _080118D4 @ =0x0400012A
	strh r1, [r0]
	movs r0, #0x1e
	ldr r1, [sp]
	strb r0, [r1]
	movs r0, #0x70
	b _08011A2E
	.align 2, 0
_080118C8: .4byte 0x04000134
_080118CC: .4byte 0x04000128
_080118D0: .4byte 0x00002003
_080118D4: .4byte 0x0400012A
_080118D8:
	movs r5, #3
	movs r2, #0x49
	adds r2, r2, r7
	mov ip, r2
	mov r8, ip
	movs r3, #1
	mov sb, r3
_080118E6:
	mov r0, r8
	ldrb r6, [r0]
	adds r0, r6, #0
	asrs r0, r5
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _08011920
	lsls r0, r5, #1
	ldr r2, _0801193C @ =0x04000120
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r4, r0, #0
	asrs r2, r4, #8
	ldrb r0, [r7, #0x18]
	lsrs r0, r0, #1
	movs r1, #0x62
	subs r1, r1, r0
	mov r3, sb
	lsls r3, r5
	cmp r2, r1
	bne _0801191A
	movs r0, #0xff
	ands r4, r0
	cmp r4, r3
	beq _08011920
_0801191A:
	eors r6, r3
	mov r3, r8
	strb r6, [r3]
_08011920:
	subs r5, #1
	cmp r5, #0
	bne _080118E6
	ldrb r0, [r7, #0x18]
	cmp r0, #0xc4
	bne _08011940
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #0xe
	ands r0, r1
	strb r0, [r7, #0x1e]
	strb r5, [r7, #0x18]
	b _080116FE
	.align 2, 0
_0801193C: .4byte 0x04000120
_08011940:
	mov r1, ip
	ldrb r2, [r1]
	cmp r2, #0
	bne _08011980
	strb r2, [r7, #0x1e]
	strb r2, [r7, #0x18]
	strb r2, [r7, #0x1d]
	movs r0, #0xf
	ldr r3, [sp]
	strb r0, [r3]
	mov r0, sl
	strb r2, [r0]
	strh r2, [r7, #0x16]
	ldr r0, _08011970 @ =0x04000134
	strh r2, [r0]
	ldr r1, _08011974 @ =0x04000128
	ldr r3, _08011978 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _0801197C @ =0x0400012A
	strh r2, [r0]
	movs r0, #0x50
	b _08011A2E
	.align 2, 0
_08011970: .4byte 0x04000134
_08011974: .4byte 0x04000128
_08011978: .4byte 0x00002003
_0801197C: .4byte 0x0400012A
_08011980:
	ldrb r0, [r7, #0x18]
	adds r0, #2
	strb r0, [r7, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc4
	bne _08011990
	b _080116FE
_08011990:
	ldrb r0, [r7, #0x18]
	ldr r1, [r7, #0x28]
	adds r0, r0, r1
	subs r1, r0, #3
	ldrb r2, [r1]
	lsls r2, r2, #8
	subs r0, #4
	ldrb r1, [r0]
	orrs r1, r2
	adds r0, r7, #0
	bl sub_8011A40
	adds r5, r0, #0
	cmp r5, #0
	bne _08011A2E
	adds r0, r7, #0
	adds r0, #0x4b
	ldrb r0, [r0]
	cmp r0, #1
	bne _08011A2C
_080119B8:
	bl sub_8011DA8
	b _08011550
_080119BE:
	strb r6, [r7, #0x1e]
	strb r6, [r7, #0x18]
	strb r6, [r7, #0x1d]
	movs r0, #0xf
	ldr r1, [sp]
	strb r0, [r1]
	mov r2, sl
	strb r6, [r2]
	strh r6, [r7, #0x16]
	ldr r0, _080119E4 @ =0x04000134
	strh r6, [r0]
	ldr r1, _080119E8 @ =0x04000128
	ldr r3, _080119EC @ =0x00002003
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _080119F0 @ =0x0400012A
	strh r6, [r0]
	movs r0, #0x60
	b _08011A2E
	.align 2, 0
_080119E4: .4byte 0x04000134
_080119E8: .4byte 0x04000128
_080119EC: .4byte 0x00002003
_080119F0: .4byte 0x0400012A
_080119F4:
	movs r1, #0
	strb r1, [r7, #0x1e]
	strb r1, [r7, #0x18]
	strb r1, [r7, #0x1d]
	movs r0, #0xf
	ldr r2, [sp]
	strb r0, [r2]
	mov r3, sl
	strb r1, [r3]
	strh r1, [r7, #0x16]
	ldr r0, _08011A1C @ =0x04000134
	strh r1, [r0]
	ldr r2, _08011A20 @ =0x04000128
	ldr r3, _08011A24 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _08011A28 @ =0x0400012A
	strh r1, [r0]
	movs r0, #0x60
	b _08011A2E
	.align 2, 0
_08011A1C: .4byte 0x04000134
_08011A20: .4byte 0x04000128
_08011A24: .4byte 0x00002003
_08011A28: .4byte 0x0400012A
_08011A2C:
	movs r0, #0
_08011A2E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8011A40
sub_8011A40: @ 0x08011A40
	push {r4, r5, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r5, _08011A6C @ =0x04000128
	ldrh r0, [r5]
	movs r4, #0x8c
	ands r4, r0
	cmp r4, #8
	bne _08011A78
	ldr r0, _08011A70 @ =0x0400012A
	strh r1, [r0]
	ldr r1, _08011A74 @ =0x00002083
	adds r0, r1, #0
	strh r0, [r5]
	adds r1, r2, #0
	adds r1, #0x48
	movs r0, #1
	strb r0, [r1]
	movs r0, #0
	b _08011AA4
	.align 2, 0
_08011A6C: .4byte 0x04000128
_08011A70: .4byte 0x0400012A
_08011A74: .4byte 0x00002083
_08011A78:
	movs r1, #0
	strb r1, [r2, #0x1e]
	strb r1, [r2, #0x18]
	strb r1, [r2, #0x1d]
	adds r3, r2, #0
	adds r3, #0x4a
	movs r0, #0xf
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x48
	strb r1, [r0]
	strh r1, [r2, #0x16]
	ldr r0, _08011AAC @ =0x04000134
	strh r1, [r0]
	ldr r2, _08011AB0 @ =0x00002003
	adds r0, r2, #0
	strh r0, [r5]
	ldr r0, _08011AB4 @ =0x0400012A
	strh r1, [r0]
	movs r0, #8
	eors r4, r0
	adds r0, r4, #0
_08011AA4:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08011AAC: .4byte 0x04000134
_08011AB0: .4byte 0x00002003
_08011AB4: .4byte 0x0400012A

	thumb_func_start sub_8011AB8
sub_8011AB8: @ 0x08011AB8
	adds r2, r0, #0
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	beq _08011AFC
	movs r1, #0
	strb r1, [r2, #0x1e]
	strb r1, [r2, #0x18]
	strb r1, [r2, #0x1d]
	adds r3, r2, #0
	adds r3, #0x4a
	movs r0, #0xf
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x48
	strb r1, [r0]
	strh r1, [r2, #0x16]
	ldr r0, _08011AEC @ =0x04000134
	strh r1, [r0]
	ldr r2, _08011AF0 @ =0x04000128
	ldr r3, _08011AF4 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _08011AF8 @ =0x0400012A
	strh r1, [r0]
	b _08011B08
	.align 2, 0
_08011AEC: .4byte 0x04000134
_08011AF0: .4byte 0x04000128
_08011AF4: .4byte 0x00002003
_08011AF8: .4byte 0x0400012A
_08011AFC:
	adds r1, r2, #0
	adds r1, #0x4a
	strb r0, [r1]
	strb r0, [r2, #0x1e]
	movs r0, #1
	strb r0, [r2, #0x18]
_08011B08:
	bx lr
	.align 2, 0

	thumb_func_start sub_8011B0C
sub_8011B0C: @ 0x08011B0C
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	adds r6, r1, #0
	adds r4, r2, #0
	ldr r0, [sp, #0x14]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r2, #0
	mov r1, ip
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _08011B38
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	beq _08011B38
	mov r5, ip
	adds r5, #0x4a
	ldrb r0, [r5]
	cmp r0, #0
	beq _08011B74
_08011B38:
	movs r1, #0
	mov r2, ip
	strb r1, [r2, #0x1e]
	strb r1, [r2, #0x18]
	strb r1, [r2, #0x1d]
	adds r2, #0x4a
	movs r0, #0xf
	strb r0, [r2]
	mov r0, ip
	adds r0, #0x48
	strb r1, [r0]
	mov r3, ip
	strh r1, [r3, #0x16]
	ldr r0, _08011B64 @ =0x04000134
	strh r1, [r0]
	ldr r2, _08011B68 @ =0x04000128
	ldr r4, _08011B6C @ =0x00002003
	adds r0, r4, #0
	strh r0, [r2]
	ldr r0, _08011B70 @ =0x0400012A
	strh r1, [r0]
	b _08011C3A
	.align 2, 0
_08011B64: .4byte 0x04000134
_08011B68: .4byte 0x04000128
_08011B6C: .4byte 0x00002003
_08011B70: .4byte 0x0400012A
_08011B74:
	mov r0, ip
	str r6, [r0, #0x20]
	adds r4, #0xf
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r4, r0
	subs r0, #0xf0
	adds r1, r4, r0
	ldr r0, _08011BB0 @ =0x0003FF00
	cmp r1, r0
	bls _08011BC4
	mov r1, ip
	strb r2, [r1, #0x1e]
	strb r2, [r1, #0x18]
	strb r2, [r1, #0x1d]
	movs r0, #0xf
	strb r0, [r5]
	mov r0, ip
	adds r0, #0x48
	strb r2, [r0]
	strh r2, [r1, #0x16]
	ldr r0, _08011BB4 @ =0x04000134
	strh r2, [r0]
	ldr r1, _08011BB8 @ =0x04000128
	ldr r3, _08011BBC @ =0x00002003
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _08011BC0 @ =0x0400012A
	strh r2, [r0]
	b _08011C3A
	.align 2, 0
_08011BB0: .4byte 0x0003FF00
_08011BB4: .4byte 0x04000134
_08011BB8: .4byte 0x04000128
_08011BBC: .4byte 0x00002003
_08011BC0: .4byte 0x0400012A
_08011BC4:
	adds r0, r6, r4
	mov r4, ip
	str r0, [r4, #0x24]
	lsls r1, r7, #0x18
	movs r4, #0x80
	lsls r4, r4, #0x13
	adds r0, r1, r4
	asrs r0, r0, #0x18
	adds r4, r1, #0
	cmp r0, #8
	bhi _08011C24
	lsls r0, r0, #2
	ldr r1, _08011BE4 @ =_08011BE8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08011BE4: .4byte _08011BE8
_08011BE8: @ jump table
	.4byte _08011C0C @ case 0
	.4byte _08011C0C @ case 1
	.4byte _08011C0C @ case 2
	.4byte _08011C0C @ case 3
	.4byte _08011C16 @ case 4
	.4byte _08011C1C @ case 5
	.4byte _08011C1C @ case 6
	.4byte _08011C1C @ case 7
	.4byte _08011C1C @ case 8
_08011C0C:
	lsls r2, r3, #3
	asrs r1, r4, #0x18
	movs r0, #3
	subs r0, r0, r1
	b _08011C22
_08011C16:
	movs r0, #0x38
	adds r2, r3, #0
	b _08011C22
_08011C1C:
	lsls r2, r3, #3
	asrs r0, r4, #0x18
	subs r0, #1
_08011C22:
	orrs r2, r0
_08011C24:
	movs r0, #0x3f
	ands r2, r0
	lsls r0, r2, #1
	movs r2, #0x7f
	rsbs r2, r2, #0
	adds r1, r2, #0
	orrs r0, r1
	mov r3, ip
	strb r0, [r3, #0x1c]
	movs r0, #0xd0
	strb r0, [r3, #0x18]
_08011C3A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8011C40
sub_8011C40: @ 0x08011C40
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0x18]
	cmp r0, #0xe0
	beq _08011C5C
	cmp r0, #0xe0
	blt _08011C6C
	cmp r0, #0xe8
	bgt _08011C6C
	cmp r0, #0xe7
	blt _08011C6C
	movs r4, #3
	ldrb r5, [r2, #0x1e]
	b _08011CCC
_08011C5C:
	movs r1, #0
	movs r0, #0xe1
	strb r0, [r2, #0x18]
	str r1, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #0xd
	str r0, [r2]
	b _08011CBE
_08011C6C:
	movs r4, #3
	ldrb r5, [r2, #0x1e]
	movs r6, #1
	ldr r1, _08011CC8 @ =0x04000126
_08011C74:
	ldrh r0, [r1]
	adds r3, r0, #0
	adds r0, r5, #0
	asrs r0, r4
	ands r0, r6
	cmp r0, #0
	beq _08011C88
	ldr r0, [r2, #4]
	cmp r3, r0
	bne _08011C5C
_08011C88:
	subs r1, #2
	subs r4, #1
	cmp r4, #0
	bne _08011C74
	ldrb r0, [r2, #0x18]
	adds r0, #1
	strb r0, [r2, #0x18]
	ldr r1, [r2]
	ldrh r0, [r2]
	str r0, [r2, #4]
	cmp r1, #0
	bne _08011CB6
	ldr r0, [r2, #0x28]
	adds r1, r0, #0
	adds r1, #0xac
	ldrb r1, [r1]
	adds r0, #0xad
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r2, #4]
	lsls r1, r1, #5
	str r1, [r2]
_08011CB6:
	ldr r0, [r2]
	lsrs r0, r0, #5
	str r0, [r2]
_08011CBC:
	ldrh r1, [r2]
_08011CBE:
	adds r0, r2, #0
	bl sub_8011A40
	b _08011D56
	.align 2, 0
_08011CC8: .4byte 0x04000126
_08011CCC:
	lsls r0, r4, #1
	ldr r1, _08011D14 @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r3, r0, #0
	adds r0, r5, #0
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08011CE8
	ldr r0, [r2, #4]
	cmp r3, r0
	bne _08011D18
_08011CE8:
	subs r4, #1
	cmp r4, #0
	bne _08011CCC
	ldrb r0, [r2, #0x18]
	adds r0, #1
	strb r0, [r2, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe9
	beq _08011D54
	ldr r0, [r2, #0x28]
	adds r1, r0, #0
	adds r1, #0xae
	ldrb r1, [r1]
	adds r0, #0xaf
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r2]
	str r1, [r2, #4]
	b _08011CBC
	.align 2, 0
_08011D14: .4byte 0x04000120
_08011D18:
	movs r1, #0
	strb r1, [r2, #0x1e]
	strb r1, [r2, #0x18]
	strb r1, [r2, #0x1d]
	adds r3, r2, #0
	adds r3, #0x4a
	movs r0, #0xf
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x48
	strb r1, [r0]
	strh r1, [r2, #0x16]
	ldr r0, _08011D44 @ =0x04000134
	strh r1, [r0]
	ldr r2, _08011D48 @ =0x04000128
	ldr r3, _08011D4C @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _08011D50 @ =0x0400012A
	strh r1, [r0]
	movs r0, #0x71
	b _08011D56
	.align 2, 0
_08011D44: .4byte 0x04000134
_08011D48: .4byte 0x04000128
_08011D4C: .4byte 0x00002003
_08011D50: .4byte 0x0400012A
_08011D54:
	movs r0, #0
_08011D56:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_8011D5C
sub_8011D5C: @ 0x08011D5C
	adds r2, r0, #0
	movs r1, #0
	strb r1, [r2, #0x1e]
	strb r1, [r2, #0x18]
	strb r1, [r2, #0x1d]
	adds r3, r2, #0
	adds r3, #0x4a
	movs r0, #0xf
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x48
	strb r1, [r0]
	strh r1, [r2, #0x16]
	ldr r0, _08011D88 @ =0x04000134
	strh r1, [r0]
	ldr r2, _08011D8C @ =0x04000128
	ldr r3, _08011D90 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _08011D94 @ =0x0400012A
	strh r1, [r0]
	bx lr
	.align 2, 0
_08011D88: .4byte 0x04000134
_08011D8C: .4byte 0x04000128
_08011D90: .4byte 0x00002003
_08011D94: .4byte 0x0400012A

	thumb_func_start sub_8011D98
sub_8011D98: @ 0x08011D98
	ldrb r0, [r0, #0x18]
	cmp r0, #0xe9
	beq _08011DA2
	movs r0, #0
	b _08011DA4
_08011DA2:
	movs r0, #1
_08011DA4:
	bx lr
	.align 2, 0

	thumb_func_start sub_8011DA8
sub_8011DA8: @ 0x08011DA8
	push {r4, r5, lr}
	movs r2, #0
	ldr r3, _08011DE8 @ =0x04000128
	ldrh r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08011DCC
	ldr r5, _08011DEC @ =0x0000795C
	movs r4, #0x80
_08011DBC:
	adds r2, #1
	cmp r2, r5
	bgt _08011DCC
	ldrh r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _08011DBC
_08011DCC:
	mov r2, pc
	lsrs r2, r2, #0x18
	movs r1, #0xc
	cmp r2, #2
	beq _08011DDE
	movs r1, #0xd
	cmp r2, #8
	beq _08011DDE
	movs r1, #4
_08011DDE:
	subs r0, r0, r1
	bgt _08011DDE
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011DE8: .4byte 0x04000128
_08011DEC: .4byte 0x0000795C

	thumb_func_start sub_8011DF0
sub_8011DF0: @ 0x08011DF0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	lsls r5, r1, #0x10
	lsrs r5, r5, #0x10
	ldr r3, _08011EC4 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08011EC8 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08011ECC @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r0, _08011ED0 @ =0x04000134
	strh r4, [r0]
	subs r2, #0xd8
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r2]
	ldrh r0, [r2]
	ldr r3, _08011ED4 @ =0x00004003
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
	str r0, [sp]
	ldr r4, _08011ED8 @ =0x03002AF0
	ldr r2, _08011EDC @ =0x05000051
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	strb r6, [r4, #2]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x14]
	movs r7, #0xa0
	lsls r7, r7, #1
	adds r0, r4, r7
	strh r5, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	str r0, [r4, #0x28]
	adds r0, #0x10
	str r0, [r4, #0x2c]
	movs r5, #0
	adds r2, r4, #0
	adds r4, #0xa0
	movs r3, #0
	movs r0, #0x30
	adds r0, r0, r2
	mov r8, r0
	movs r1, #0x80
	adds r1, r1, r2
	mov ip, r1
	adds r6, r2, #0
	adds r6, #0x90
	movs r7, #0x40
	adds r7, r7, r2
	mov sb, r7
_08011E72:
	lsls r1, r5, #2
	mov r7, ip
	adds r0, r3, r7
	mov r7, r8
	adds r7, #4
	mov r8, r7
	subs r7, #4
	stm r7!, {r0}
	adds r0, r3, r6
	mov r7, sb
	adds r7, #4
	mov sb, r7
	subs r7, #4
	stm r7!, {r0}
	adds r0, r2, #0
	adds r0, #0x50
	adds r1, r1, r0
	str r4, [r1]
	adds r4, #0x30
	adds r3, #0x30
	adds r5, #1
	cmp r5, #3
	ble _08011E72
	movs r0, #0
	ldr r3, _08011EC4 @ =0x04000208
	strh r0, [r3]
	ldr r2, _08011EC8 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011EC4: .4byte 0x04000208
_08011EC8: .4byte 0x04000200
_08011ECC: .4byte 0x0000FF3F
_08011ED0: .4byte 0x04000134
_08011ED4: .4byte 0x00004003
_08011ED8: .4byte 0x03002AF0
_08011EDC: .4byte 0x05000051

	thumb_func_start sub_8011EE0
sub_8011EE0: @ 0x08011EE0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	mov ip, r1
	mov r8, r2
	ldr r5, _08011F00 @ =0x04000128
	ldr r6, [r5]
	ldr r7, _08011F04 @ =0x03002AF0
	ldrb r0, [r7, #1]
	cmp r0, #0
	beq _08011F08
	cmp r0, #1
	beq _08011F74
	b _08011F82
	.align 2, 0
_08011F00: .4byte 0x04000128
_08011F04: .4byte 0x03002AF0
_08011F08:
	movs r1, #0x30
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08011F6E
	movs r0, #0x88
	adds r4, r6, #0
	ands r4, r0
	cmp r4, #8
	bne _08011F82
	movs r1, #4
	adds r0, r6, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08011F6E
	ldr r1, [r7, #0x14]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08011F6E
	ldr r3, _08011FB4 @ =0x04000208
	strh r2, [r3]
	ldr r2, _08011FB8 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08011FBC @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldrb r1, [r5, #1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #1]
	ldr r1, _08011FC0 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	subs r1, #0xf6
	ldr r0, _08011FC4 @ =0x000092C6
	str r0, [r1]
	strb r4, [r7]
	ldrb r0, [r5]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5]
_08011F6E:
	ldr r1, _08011FC8 @ =0x03002AF0
	movs r0, #1
	strb r0, [r1, #1]
_08011F74:
	mov r0, ip
	bl sub_80120CC
	mov r0, sb
	mov r1, r8
	bl sub_8011FFC
_08011F82:
	ldr r1, _08011FC8 @ =0x03002AF0
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
	ldrb r3, [r1, #3]
	ldrb r2, [r1, #8]
	movs r0, #0x10
	ands r0, r2
	orrs r3, r0
	movs r0, #0x20
	ands r0, r2
	orrs r3, r0
	movs r0, #0x40
	ands r0, r2
	orrs r3, r0
	ldrb r0, [r1, #2]
	lsls r2, r0, #8
	ldrb r0, [r1]
	cmp r0, #8
	bne _08011FCC
	movs r0, #0x80
	orrs r0, r2
	orrs r0, r3
	b _08011FD0
	.align 2, 0
_08011FB4: .4byte 0x04000208
_08011FB8: .4byte 0x04000200
_08011FBC: .4byte 0x0000FF7F
_08011FC0: .4byte 0x04000202
_08011FC4: .4byte 0x000092C6
_08011FC8: .4byte 0x03002AF0
_08011FCC:
	adds r0, r3, #0
	orrs r0, r2
_08011FD0:
	adds r2, r0, #0
	ldrb r0, [r1, #9]
	cmp r0, #0
	beq _08011FDE
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r2, r0
_08011FDE:
	adds r1, r2, #0
	lsls r0, r6, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bls _08011FEE
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r1, r0
_08011FEE:
	adds r0, r1, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8011FFC
sub_8011FFC: @ 0x08011FFC
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	ldr r5, _080120BC @ =0x03002AF0
	ldr r4, [r5, #0x28]
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #4
	ldrb r3, [r4, #1]
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	strb r2, [r4, #1]
	ldr r6, [r5, #0x28]
	ldr r1, _080120C0 @ =0x03002990
	ldrb r1, [r1, #3]
	movs r3, #1
	adds r2, r3, #0
	ands r2, r1
	lsls r2, r2, #5
	ldrb r4, [r6, #1]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r4
	orrs r1, r2
	strb r1, [r6, #1]
	ldr r4, [r5, #0x28]
	ldrb r1, [r5, #8]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	ands r3, r1
	lsls r3, r3, #6
	ldrb r2, [r4, #1]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r3
	strb r1, [r4, #1]
	ldr r2, [r5, #0x28]
	ldrb r1, [r5, #0xb]
	strb r1, [r2]
	ldr r4, [r5, #0x28]
	ldrb r2, [r5, #2]
	ldrb r1, [r5, #3]
	eors r2, r1
	movs r1, #0xf
	ands r2, r1
	ldrb r3, [r4, #1]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r4, #1]
	ldr r1, [r5, #0x28]
	strh r7, [r1, #2]
	ldr r1, [r5, #0x28]
	adds r1, #4
	ldr r2, _080120C4 @ =0x04000002
	bl CpuSet
	movs r2, #0
	ldr r1, [r5, #0x28]
_08012078:
	ldrh r0, [r1]
	adds r7, r7, r0
	adds r1, #2
	adds r2, #1
	cmp r2, #5
	bls _08012078
	adds r2, r5, #0
	ldr r1, [r2, #0x28]
	mvns r0, r7
	strh r0, [r1, #2]
	ldrb r0, [r2]
	cmp r0, #0
	beq _08012098
	ldr r1, _080120C8 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
_08012098:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x14]
	ldrb r0, [r5]
	cmp r0, #0
	beq _080120B4
	ldrb r1, [r5, #8]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080120B4
	ldr r1, _080120C8 @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_080120B4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080120BC: .4byte 0x03002AF0
_080120C0: .4byte 0x03002990
_080120C4: .4byte 0x04000002
_080120C8: .4byte 0x0400010E

	thumb_func_start sub_80120CC
sub_80120CC: @ 0x080120CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	ldr r1, _080121F4 @ =0x04000208
	movs r0, #0
	strh r0, [r1]
	ldr r6, _080121F8 @ =0x03002AF0
	adds r3, r6, #4
	add r0, sp, #4
	mov sl, r0
	adds r2, r6, #0
	adds r2, #0x40
	movs r5, #3
_080120EE:
	ldr r1, [r2, #0x10]
	ldr r0, [r2]
	str r0, [r2, #0x10]
	stm r2!, {r1}
	subs r5, #1
	cmp r5, #0
	bge _080120EE
	ldr r0, [r3]
	str r0, [sp]
	movs r2, #0
	str r2, [r3]
	ldr r1, _080121F4 @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	subs r0, r3, #4
	strb r2, [r0, #3]
	movs r5, #0
	adds r6, r0, #0
	adds r7, r6, #0
	movs r1, #0x50
	adds r1, r1, r7
	mov sb, r1
_0801211A:
	movs r4, #0
	movs r2, #0
	lsls r6, r5, #2
	adds r0, r5, #1
	mov r8, r0
	mov r1, sp
	adds r3, r1, r5
	mov r1, sb
	adds r0, r6, r1
	ldr r1, [r0]
_0801212E:
	ldrh r0, [r1]
	adds r4, r4, r0
	adds r1, #2
	adds r2, #1
	cmp r2, #5
	bls _0801212E
	ldrb r0, [r3]
	cmp r0, #0
	beq _0801218C
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	bne _0801218C
	movs r0, #1
	lsls r0, r5
	ldrb r1, [r7, #3]
	orrs r0, r1
	strb r0, [r7, #3]
	ldrb r2, [r7, #8]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1c
	mov r4, sb
	adds r3, r6, r4
	ldr r0, [r3]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	lsls r0, r5
	orrs r0, r1
	movs r1, #0xf
	ands r0, r1
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r7, #8]
	ldr r0, [r3]
	adds r0, #4
	lsls r1, r5, #3
	ldr r2, [sp, #8]
	adds r1, r2, r1
	ldr r2, _080121FC @ =0x04000002
	bl CpuSet
_0801218C:
	movs r0, #0
	str r0, [sp, #4]
	mov r4, sb
	adds r0, r6, r4
	ldr r1, [r0]
	adds r1, #4
	mov r0, sl
	ldr r2, _08012200 @ =0x05000002
	bl CpuSet
	mov r5, r8
	cmp r5, #3
	ble _0801211A
	ldr r0, _080121F8 @ =0x03002AF0
	ldrb r1, [r0, #2]
	ldrb r2, [r0, #3]
	adds r3, r1, #0
	orrs r3, r2
	strb r3, [r0, #2]
	movs r1, #1
	ands r1, r2
	adds r6, r0, #0
	cmp r1, #0
	beq _08012240
	ldrb r0, [r6]
	cmp r0, #8
	bne _08012204
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _080121DA
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r3
	bne _080121DA
	ldrb r0, [r6, #8]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r6, #8]
_080121DA:
	ldrb r4, [r6, #8]
	lsls r2, r4, #0x1c
	lsrs r2, r2, #0x1c
	movs r0, #0xe
	ldrb r3, [r6, #2]
	adds r1, r0, #0
	ands r1, r2
	ands r0, r3
	cmp r1, r0
	bne _08012224
	movs r0, #0x40
	orrs r0, r4
	b _08012222
	.align 2, 0
_080121F4: .4byte 0x04000208
_080121F8: .4byte 0x03002AF0
_080121FC: .4byte 0x04000002
_08012200: .4byte 0x05000002
_08012204:
	ldrb r2, [r6, #8]
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1f
	ldr r0, [r6, #0x50]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	orrs r1, r0
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
_08012222:
	strb r0, [r6, #8]
_08012224:
	ldrb r2, [r6, #8]
	lsls r1, r2, #0x1a
	lsrs r1, r1, #0x1f
	ldr r0, [r6, #0x50]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	orrs r0, r1
	lsls r0, r0, #5
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r6, #8]
_08012240:
	ldrb r0, [r6, #3]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8012254
sub_8012254: @ 0x08012254
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08012298 @ =0x04000120
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r2, _0801229C @ =0x03002AF0
	ldr r3, _080122A0 @ =0x04000128
	ldr r0, [r3]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	strb r0, [r2, #9]
	ldr r1, [r2, #0x14]
	movs r0, #1
	rsbs r0, r0, #0
	mov ip, r2
	cmp r1, r0
	bne _080122A4
	movs r0, #0xa0
	lsls r0, r0, #1
	add r0, ip
	ldrh r0, [r0]
	strh r0, [r3, #2]
	ldr r1, [r2, #0x2c]
	ldr r0, [r2, #0x28]
	str r0, [r2, #0x2c]
	str r1, [r2, #0x28]
	b _080122B4
	.align 2, 0
_08012298: .4byte 0x04000120
_0801229C: .4byte 0x03002AF0
_080122A0: .4byte 0x04000128
_080122A4:
	cmp r1, #0
	blt _080122B4
	mov r2, ip
	ldr r0, [r2, #0x2c]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r3, #2]
_080122B4:
	mov r1, ip
	ldr r0, [r1, #0x14]
	cmp r0, #6
	bgt _080122C0
	adds r0, #1
	str r0, [r1, #0x14]
_080122C0:
	movs r2, #0
	mov r8, r2
	mov sl, ip
	mov sb, r2
	mov r6, ip
	adds r6, #0x18
	mov r5, sp
_080122CE:
	ldrh r0, [r5]
	mov r1, r8
	lsls r7, r1, #2
	ldr r2, _080122EC @ =0x03002C30
	ldrh r2, [r2]
	cmp r0, r2
	bne _080122F0
	ldr r0, [r6]
	cmp r0, #5
	ble _080122F0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6]
	b _0801231E
	.align 2, 0
_080122EC: .4byte 0x03002C30
_080122F0:
	mov r0, sl
	adds r0, #0x30
	mov r1, sb
	adds r4, r1, r0
	ldr r2, [r6]
	ldr r3, [r4]
	lsls r0, r2, #1
	adds r0, r0, r3
	ldrh r1, [r5]
	strh r1, [r0]
	cmp r2, #5
	bne _0801231E
	mov r0, ip
	adds r0, #0x40
	adds r0, r7, r0
	ldr r1, [r0]
	str r3, [r0]
	str r1, [r4]
	mov r0, ip
	adds r0, #4
	add r0, r8
	movs r1, #1
	strb r1, [r0]
_0801231E:
	ldr r0, [r6]
	cmp r0, #6
	bgt _08012328
	adds r0, #1
	str r0, [r6]
_08012328:
	movs r2, #4
	add sb, r2
	adds r6, #4
	adds r5, #2
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #3
	ble _080122CE
	mov r2, ip
	ldrb r0, [r2]
	cmp r0, #8
	bne _08012356
	ldr r3, _08012368 @ =0x0400010E
	movs r0, #0
	strh r0, [r3]
	ldr r2, _0801236C @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0xc0
	strh r0, [r3]
_08012356:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012368: .4byte 0x0400010E
_0801236C: .4byte 0x04000128

	thumb_func_start sub_8012370
sub_8012370: @ 0x08012370
	ldr r2, _08012384 @ =0x03002AF0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08012380
	ldrb r0, [r2, #8]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #8]
_08012380:
	bx lr
	.align 2, 0
_08012384: .4byte 0x03002AF0

	thumb_func_start sub_8012388
sub_8012388: @ 0x08012388
	ldr r3, _080123BC @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _080123C0 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080123C4 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r1, _080123C8 @ =0x04000128
	ldr r2, _080123CC @ =0x00002003
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0x1c
	ldr r0, _080123D0 @ =0x000092C6
	str r0, [r1]
	adds r1, #0xf6
	movs r0, #0xc0
	strh r0, [r1]
	ldr r2, _080123D4 @ =0x03002AF0
	ldrb r1, [r2, #8]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #8]
	bx lr
	.align 2, 0
_080123BC: .4byte 0x04000208
_080123C0: .4byte 0x04000200
_080123C4: .4byte 0x0000FF3F
_080123C8: .4byte 0x04000128
_080123CC: .4byte 0x00002003
_080123D0: .4byte 0x000092C6
_080123D4: .4byte 0x03002AF0

	thumb_func_start sub_80123D8
sub_80123D8: @ 0x080123D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	movs r0, #0
	str r0, [sp, #0x18]
	movs r1, #0
	str r1, [sp, #0x1c]
	ldr r0, _080123F8 @ =0x030029CC
	ldr r2, [r0]
	cmp r2, #0
	bne _080123FC
	movs r0, #1
	b _08012558
	.align 2, 0
_080123F8: .4byte 0x030029CC
_080123FC:
	ldr r1, _08012510 @ =0x030029A8
	ldr r0, _08012514 @ =0x030029DC
	ldr r5, [r0]
	lsrs r0, r5, #1
	lsls r0, r0, #1
	ldr r1, [r1]
	adds r4, r1, r0
	mov r3, sp
	adds r3, #2
	cmp r2, #6
	ble _08012414
	movs r2, #6
_08012414:
	mov r1, sp
	ldr r6, _08012518 @ =0xFFFFAB00
	adds r0, r5, r6
	strh r0, [r1]
	movs r5, #0
	lsrs r1, r2, #1
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x24]
	ldr r2, [sp, #0x18]
	cmp r2, r1
	bhs _0801243A
_0801242C:
	ldrh r0, [r4]
	strh r0, [r3]
	adds r4, #2
	adds r3, #2
	adds r5, #1
	cmp r5, r1
	blo _0801242C
_0801243A:
	mov r0, sp
	ldr r1, [sp, #0x24]
	movs r2, #0
	bl sub_8011EE0
	mov r8, r0
	ldr r0, _0801251C @ =0x04000200
	ldrh r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r1, r0
	movs r0, #0
	bl irq_updateMask
	bl sub_8012370
	movs r0, #0xc0
	lsls r0, r0, #6
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	bne _0801253A
	ldr r0, _08012520 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	str r0, [sp, #0x20]
	movs r5, #0
	movs r6, #1
	mov sl, r6
	ldr r0, _08012524 @ =0x03000164
	mov sb, r0
_0801247A:
	mov r0, sl
	lsls r0, r5
	mov r1, r8
	ands r0, r1
	adds r2, r5, #1
	mov ip, r2
	cmp r0, #0
	beq _080124E2
	lsls r0, r5, #3
	ldr r3, [sp, #0x24]
	adds r2, r3, r0
	ldrh r1, [r2]
	ldr r6, _08012514 @ =0x030029DC
	ldr r0, [r6]
	movs r3, #0xab
	lsls r3, r3, #8
	adds r0, r0, r3
	cmp r1, r0
	bne _080124E2
	ldr r0, [sp, #0x20]
	cmp r5, r0
	beq _080124D6
	ldr r0, _08012528 @ =0x030029CC
	ldr r0, [r0]
	cmp r0, #6
	ble _080124B0
	movs r0, #6
_080124B0:
	movs r3, #0
	lsrs r4, r0, #1
	cmp r3, r4
	bhs _080124D6
	adds r7, r6, #0
	ldr r6, _0801252C @ =0x03002C34
	adds r2, #2
_080124BE:
	ldr r0, [r7]
	lsrs r0, r0, #1
	adds r0, r0, r3
	ldr r1, [r6]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r2]
	strh r1, [r0]
	adds r2, #2
	adds r3, #1
	cmp r3, r4
	blo _080124BE
_080124D6:
	mov r1, sl
	lsls r1, r5
	mov r2, sb
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_080124E2:
	mov r5, ip
	cmp r5, #1
	ble _0801247A
	ldr r3, _08012524 @ =0x03000164
	ldr r0, [r3]
	cmp r0, #3
	bne _08012530
	ldr r1, _08012528 @ =0x030029CC
	ldr r2, [r1]
	cmp r2, #6
	ble _080124FA
	movs r2, #6
_080124FA:
	movs r0, #0
	ldr r6, _08012524 @ =0x03000164
	str r0, [r6]
	ldr r0, [r1]
	subs r0, r0, r2
	str r0, [r1]
	ldr r1, _08012514 @ =0x030029DC
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
	b _08012534
	.align 2, 0
_08012510: .4byte 0x030029A8
_08012514: .4byte 0x030029DC
_08012518: .4byte 0xFFFFAB00
_0801251C: .4byte 0x04000200
_08012520: .4byte 0x04000128
_08012524: .4byte 0x03000164
_08012528: .4byte 0x030029CC
_0801252C: .4byte 0x03002C34
_08012530:
	movs r0, #1
	str r0, [sp, #0x1c]
_08012534:
	ldr r1, [sp, #0x1c]
	cmp r1, #0
	beq _08012550
_0801253A:
	ldr r2, _0801254C @ =0x03000160
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	cmp r0, #0x28
	ble _08012556
	movs r3, #2
	str r3, [sp, #0x18]
	b _08012556
	.align 2, 0
_0801254C: .4byte 0x03000160
_08012550:
	ldr r6, [sp, #0x1c]
	ldr r0, _08012568 @ =0x03000160
	str r6, [r0]
_08012556:
	ldr r0, [sp, #0x18]
_08012558:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08012568: .4byte 0x03000160

	thumb_func_start sub_0801256C
sub_0801256C: @ 0x0801256C
	ldr r0, _08012574 @ =0x030029CC
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08012574: .4byte 0x030029CC

	thumb_func_start sub_8012578
sub_8012578: @ 0x08012578
	ldr r0, _08012580 @ =0x030029DC
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08012580: .4byte 0x030029DC

	thumb_func_start sub_8012584
sub_8012584: @ 0x08012584
	push {lr}
	ldr r3, _080125B0 @ =0x030029A8
	str r0, [r3]
	ldr r0, _080125B4 @ =0x03002C34
	str r1, [r0]
	ldr r0, _080125B8 @ =0x030029CC
	str r2, [r0]
	ldr r0, _080125BC @ =0x030029DC
	movs r1, #0
	str r1, [r0]
	ldr r0, _080125C0 @ =0x03000160
	str r1, [r0]
	ldr r0, _080125C4 @ =0x03000164
	str r1, [r0]
	bl sub_8012388
	ldr r1, _080125C8 @ =0x00003EDC
	movs r0, #0
	bl sub_8011DF0
	pop {r0}
	bx r0
	.align 2, 0
_080125B0: .4byte 0x030029A8
_080125B4: .4byte 0x03002C34
_080125B8: .4byte 0x030029CC
_080125BC: .4byte 0x030029DC
_080125C0: .4byte 0x03000160
_080125C4: .4byte 0x03000164
_080125C8: .4byte 0x00003EDC

	thumb_func_start sub_80125CC
sub_80125CC: @ 0x080125CC
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	ldr r0, _080125E8 @ =0x03002990
	ldrb r1, [r0, #1]
	adds r6, r0, #0
	cmp r1, #4
	bls _080125DC
	b _080127D6
_080125DC:
	lsls r0, r1, #2
	ldr r1, _080125EC @ =_080125F0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080125E8: .4byte 0x03002990
_080125EC: .4byte _080125F0
_080125F0: @ jump table
	.4byte _08012604 @ case 0
	.4byte _0801261C @ case 1
	.4byte _080126B8 @ case 2
	.4byte _08012760 @ case 3
	.4byte _080127CC @ case 4
_08012604:
	ldr r0, [r6]
	ldr r1, _08012618 @ =0x00FF00FF
	ands r0, r1
	cmp r0, #0
	bne _08012610
	b _080127D6
_08012610:
	movs r0, #1
	strb r0, [r6, #1]
	b _080127D6
	.align 2, 0
_08012618: .4byte 0x00FF00FF
_0801261C:
	ldrb r0, [r6]
	cmp r0, #1
	bne _0801262C
	ldrb r0, [r6, #2]
	cmp r0, #5
	bhi _0801262A
	b _080127D6
_0801262A:
	b _08012636
_0801262C:
	ldr r1, _0801266C @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
_08012636:
	ldr r0, _08012670 @ =0x04000120
	movs r5, #0
	str r5, [r0]
	ldr r1, _08012674 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	ldrb r4, [r6]
	cmp r4, #1
	bne _08012684
	ldr r2, _0801266C @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08012678 @ =0x0400010C
	ldr r0, _0801267C @ =0x00C0F318
	str r0, [r1]
	ldr r3, _08012680 @ =0x04000208
	strh r5, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	strh r4, [r3]
	b _080126A4
	.align 2, 0
_0801266C: .4byte 0x04000128
_08012670: .4byte 0x04000120
_08012674: .4byte 0x04000202
_08012678: .4byte 0x0400010C
_0801267C: .4byte 0x00C0F318
_08012680: .4byte 0x04000208
_08012684:
	ldr r2, _080126B0 @ =0x04000128
	ldrh r0, [r2]
	movs r3, #0x81
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _080126B4 @ =0x04000208
	strh r5, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
_080126A4:
	movs r0, #0
	strb r0, [r6, #2]
	movs r0, #2
	strb r0, [r6, #1]
	b _080127D6
	.align 2, 0
_080126B0: .4byte 0x04000128
_080126B4: .4byte 0x04000208
_080126B8:
	ldr r7, [r6, #8]
	adds r4, r7, #0
	ldr r0, _080126D4 @ =0x030029D0
	ldr r1, [r0]
	adds r2, r1, #0
	mov ip, r0
	cmp r1, #0
	bge _080126CA
	adds r2, r1, #3
_080126CA:
	asrs r0, r2, #2
	cmp r7, r0
	ble _080126D8
	adds r4, r0, #0
	b _080126DE
	.align 2, 0
_080126D4: .4byte 0x030029D0
_080126D8:
	cmp r7, #0
	bge _080126DE
	movs r4, #0
_080126DE:
	cmp r3, #0
	beq _080126E4
	str r4, [r3]
_080126E4:
	ldrb r0, [r6]
	cmp r0, #1
	beq _0801272E
	ldr r0, [r6, #0x14]
	cmp r0, r4
	bge _0801270A
	adds r3, r6, #0
	ldr r5, [r6, #4]
_080126F4:
	ldr r2, [r3, #0x14]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r3, #0x10]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r3, #0x10]
	adds r2, #1
	str r2, [r3, #0x14]
	cmp r2, r4
	blt _080126F4
_0801270A:
	mov r1, ip
	ldr r0, [r1]
	cmp r0, #0
	bge _08012714
	adds r0, #3
_08012714:
	asrs r0, r0, #2
	cmp r7, r0
	ble _0801272E
	ldr r0, [r6, #0xc]
	ldr r1, [r6, #0x10]
	adds r0, r0, r1
	str r0, [r6, #0xc]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0801272E
	movs r0, #1
	strb r0, [r6, #3]
_0801272E:
	mov r2, ip
	ldr r0, [r2]
	adds r1, r0, #0
	cmp r0, #0
	bge _0801273A
	adds r1, r0, #3
_0801273A:
	asrs r1, r1, #2
	cmp r7, r1
	bgt _08012752
	ldrb r4, [r6, #2]
	ldr r0, _08012758 @ =0x000011D0
	muls r0, r1, r0
	ldr r1, _0801275C @ =0x00044940
	bl __divsi3
	adds r0, #8
	cmp r4, r0
	bne _080127D6
_08012752:
	movs r0, #3
	strb r0, [r6, #1]
	b _080127D6
	.align 2, 0
_08012758: .4byte 0x000011D0
_0801275C: .4byte 0x00044940
_08012760:
	ldr r3, _080127B4 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _080127B8 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080127BC @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r1, _080127C0 @ =0x04000128
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1]
	adds r0, #3
	str r0, [r1]
	subs r2, #0xe0
	movs r0, #0
	movs r1, #0
	str r0, [r2]
	str r1, [r2, #4]
	ldrb r0, [r6]
	cmp r0, #0
	beq _0801279E
	ldr r1, _080127C4 @ =0x0400010C
	movs r0, #0
	str r0, [r1]
_0801279E:
	ldr r0, _080127C8 @ =0x04000202
	movs r1, #0xc0
	strh r1, [r0]
	ldrb r0, [r6]
	cmp r0, #0
	beq _080127D2
	strb r4, [r6, #2]
	movs r0, #4
	strb r0, [r6, #1]
	b _080127D6
	.align 2, 0
_080127B4: .4byte 0x04000208
_080127B8: .4byte 0x04000200
_080127BC: .4byte 0x0000FF3F
_080127C0: .4byte 0x04000128
_080127C4: .4byte 0x0400010C
_080127C8: .4byte 0x04000202
_080127CC:
	ldrb r0, [r6, #2]
	cmp r0, #2
	bls _080127D6
_080127D2:
	movs r0, #1
	b _080127DE
_080127D6:
	ldrb r0, [r6, #2]
	adds r0, #1
	strb r0, [r6, #2]
	movs r0, #0
_080127DE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80127E4
sub_80127E4: @ 0x080127E4
	push {r4, r5, r6, r7, lr}
	ldr r6, _08012808 @ =0x04000120
	ldr r3, [r6]
	ldr r5, _0801280C @ =0x03002990
	ldrb r0, [r5]
	adds r4, r5, #0
	cmp r0, #1
	beq _08012814
	ldr r0, _08012810 @ =0x04000128
	ldrh r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r0]
	ldr r2, [r4, #8]
	cmp r2, #0
	bge _08012874
	b _0801285E
	.align 2, 0
_08012808: .4byte 0x04000120
_0801280C: .4byte 0x03002990
_08012810: .4byte 0x04000128
_08012814:
	ldr r1, _08012828 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
	ldr r1, [r4, #8]
	cmp r1, #0
	bge _08012834
	ldr r0, _0801282C @ =0xFEFEFEFE
	str r0, [r6]
	ldr r7, _08012830 @ =0x030029D0
	b _08012896
	.align 2, 0
_08012828: .4byte 0x0400010E
_0801282C: .4byte 0xFEFEFEFE
_08012830: .4byte 0x030029D0
_08012834:
	ldr r0, _08012854 @ =0x030029D0
	ldr r2, [r0]
	adds r7, r0, #0
	cmp r2, #0
	bge _08012840
	adds r2, #3
_08012840:
	asrs r0, r2, #2
	cmp r1, r0
	bge _08012858
	ldr r0, [r4, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r6]
	b _08012896
	.align 2, 0
_08012854: .4byte 0x030029D0
_08012858:
	ldr r0, [r4, #0xc]
	str r0, [r6]
	b _08012896
_0801285E:
	ldr r0, _0801286C @ =0xFEFEFEFE
	ldr r7, _08012870 @ =0x030029D0
	cmp r3, r0
	beq _08012896
	subs r0, r2, #1
	str r0, [r5, #8]
	b _08012896
	.align 2, 0
_0801286C: .4byte 0xFEFEFEFE
_08012870: .4byte 0x030029D0
_08012874:
	ldr r0, _08012890 @ =0x030029D0
	ldr r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	bge _08012880
	adds r1, #3
_08012880:
	asrs r0, r1, #2
	cmp r2, r0
	bge _08012894
	ldr r1, [r4, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	str r3, [r0]
	b _08012896
	.align 2, 0
_08012890: .4byte 0x030029D0
_08012894:
	str r3, [r4, #0xc]
_08012896:
	ldr r0, [r7]
	cmp r0, #0
	bge _0801289E
	adds r0, #3
_0801289E:
	asrs r0, r0, #2
	adds r0, #3
	ldr r1, [r4, #8]
	cmp r1, r0
	bge _080128C2
	adds r0, r1, #1
	str r0, [r4, #8]
	ldrb r0, [r4]
	cmp r0, #1
	bne _080128C2
	ldr r2, _080128C8 @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080128CC @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_080128C2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080128C8: .4byte 0x04000128
_080128CC: .4byte 0x0400010E

	thumb_func_start sub_80128D0
sub_80128D0: @ 0x080128D0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r7, r1, #0
	movs r6, #0
	ldr r3, _08012920 @ =0x04000208
	strh r6, [r3]
	ldr r2, _08012924 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08012928 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	mov r8, r0
	strh r0, [r3]
	str r6, [sp]
	ldr r4, _0801292C @ =0x03002990
	ldr r2, _08012930 @ =0x05000006
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldr r1, _08012934 @ =0x04000128
	ldr r0, _08012938 @ =0x00002003
	str r0, [r1]
	str r7, [r4, #4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #8]
	cmp r5, #0
	beq _08012970
	ldr r0, _0801293C @ =0x0400010C
	str r6, [r0]
	mov r2, r8
	strb r2, [r4]
	movs r1, #0
	ldr r2, _08012940 @ =0x030029D0
	b _0801294E
	.align 2, 0
_08012920: .4byte 0x04000208
_08012924: .4byte 0x04000200
_08012928: .4byte 0x0000FF3F
_0801292C: .4byte 0x03002990
_08012930: .4byte 0x05000006
_08012934: .4byte 0x04000128
_08012938: .4byte 0x00002003
_0801293C: .4byte 0x0400010C
_08012940: .4byte 0x030029D0
_08012944:
	lsls r0, r1, #2
	adds r0, r0, r7
	ldr r0, [r0]
	adds r6, r6, r0
	adds r1, #1
_0801294E:
	ldr r0, [r2]
	cmp r0, #0
	bge _08012956
	adds r0, #3
_08012956:
	asrs r0, r0, #2
	cmp r1, r0
	blt _08012944
	mvns r0, r6
	str r0, [r4, #0xc]
	ldr r1, _0801297C @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
_08012970:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801297C: .4byte 0x04000128

	thumb_func_start sub_8012980
sub_8012980: @ 0x08012980
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r6, r0, #0
	movs r1, #0xf3
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	mov sb, r0
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r0, [r0]
	cmp r0, sb
	beq _08012A0E
	mov r4, sb
	cmp r4, #1
	bgt _080129C8
	movs r0, #0
	str r0, [sp, #8]
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _080129C4 @ =0x01000080
	add r0, sp, #8
	bl CpuFastSet
	b _080129E6
	.align 2, 0
_080129C4: .4byte 0x01000080
_080129C8:
	ldr r1, _08012B18 @ =_080D9E44
	mov r0, sb
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
_080129E6:
	movs r0, #1
	bl map_setBufferDirty
	movs r5, #0xf8
	lsls r5, r5, #2
	adds r0, r6, r5
	mov r1, sb
	str r1, [r0]
	movs r2, #0xf7
	lsls r2, r2, #2
	adds r1, r6, r2
	movs r0, #0
	str r0, [r1]
	movs r4, #0xf6
	lsls r4, r4, #2
	adds r1, r6, r4
	subs r5, #0xc
	adds r0, r6, r5
	ldr r0, [r0]
	str r0, [r1]
_08012A0E:
	mov r0, sb
	cmp r0, #1
	ble _08012A16
	b _08012B2C
_08012A16:
	movs r2, #0xf7
	lsls r2, r2, #2
	adds r1, r6, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x10
	bgt _08012A62
	ldr r1, _08012B1C @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08012A32
	adds r0, #0x3f
_08012A32:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	movs r4, #0xf6
	lsls r4, r4, #2
	adds r2, r6, r4
	movs r5, #0
	ldrsh r1, [r2, r5]
	movs r0, #0x78
	subs r0, r0, r1
	muls r0, r3, r0
	asrs r0, r0, #0xf
	ldrh r2, [r2]
	adds r0, r0, r2
	movs r2, #0xf5
	lsls r2, r2, #2
	adds r1, r6, r2
	strh r0, [r1]
	subs r4, #2
	adds r1, r6, r4
	movs r0, #0x45
	strh r0, [r1]
_08012A62:
	movs r1, #0x80
	lsls r1, r1, #1
	movs r5, #0xff
	lsls r5, r5, #2
	adds r0, r6, r5
	ldr r2, [r0]
	movs r0, #0xb
	str r0, [sp]
	movs r0, #0x80
	movs r3, #0x10
	bl sub_800E930
	adds r3, r0, #0
	movs r1, #0xf5
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r2, _08012B20 @ =0x000003D6
	adds r1, r6, r2
	movs r4, #0xf9
	lsls r4, r4, #2
	adds r2, r6, r4
	movs r5, #0
	ldrsh r4, [r0, r5]
	movs r0, #0
	ldrsh r5, [r1, r0]
	ldr r1, _08012B24 @ =_080D9F70
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r1, [r0, #4]
	ldrh r0, [r2, #0x10]
	adds r0, #1
	strh r0, [r2, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	ble _08012AC4
	movs r0, #0
	strh r0, [r2, #0x10]
	ldrb r0, [r2, #0xe]
	adds r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _08012AC4
	movs r0, #0
	strb r0, [r2, #0xe]
_08012AC4:
	lsls r1, r4, #0x10
	adds r0, r5, #4
	lsls r0, r0, #0x10
	lsrs r1, r1, #0x10
	orrs r1, r0
	str r1, [sp, #0xc]
	ldr r1, _08012B24 @ =_080D9F70
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #0xc
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	adds r2, r3, #0
	bl oam_renderCellData
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r2, [r0]
	movs r0, #0xb
	str r0, [sp]
	movs r0, #0x80
	movs r3, #0x10
	bl sub_800E930
	adds r3, r0, #0
	ldr r0, _08012B28 @ =_080CA6E8
	movs r5, #0xf5
	lsls r5, r5, #2
	adds r1, r6, r5
	str r4, [sp]
	str r4, [sp, #4]
	adds r2, r3, #0
	bl oam_renderCellData
	b _08012C88
	.align 2, 0
_08012B18: .4byte _080D9E44
_08012B1C: .4byte gSinTable
_08012B20: .4byte 0x000003D6
_08012B24: .4byte _080D9F70
_08012B28: .4byte _080CA6E8
_08012B2C:
	movs r7, #0
	cmp r7, sb
	blt _08012B34
	b _08012C88
_08012B34:
	ldr r0, _08012BAC @ =0x0000FFFF
	mov sl, r0
_08012B38:
	ldr r0, _08012BB0 @ =_080D9F5C
	mov r1, sb
	subs r1, #2
	adds r1, r1, r0
	lsls r0, r7, #4
	subs r0, r0, r7
	lsls r0, r0, #2
	ldrb r1, [r1]
	adds r3, r0, r1
	movs r1, #0xf4
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r7, r0
	bne _08012BB8
	movs r2, #0xf7
	lsls r2, r2, #2
	adds r1, r6, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x10
	bgt _08012BA0
	ldr r1, _08012BB4 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08012B72
	adds r0, #0x3f
_08012B72:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	movs r4, #0xf6
	lsls r4, r4, #2
	adds r1, r6, r4
	movs r5, #0
	ldrsh r0, [r1, r5]
	subs r0, r3, r0
	muls r0, r2, r0
	asrs r0, r0, #0xf
	ldrh r1, [r1]
	adds r0, r0, r1
	movs r2, #0xf5
	lsls r2, r2, #2
	adds r1, r6, r2
	strh r0, [r1]
	subs r4, #2
	adds r1, r6, r4
	movs r0, #0x45
	strh r0, [r1]
_08012BA0:
	movs r5, #0xf5
	lsls r5, r5, #2
	adds r0, r6, r5
	ldr r0, [r0]
	str r0, [sp, #0x18]
	b _08012BD0
	.align 2, 0
_08012BAC: .4byte 0x0000FFFF
_08012BB0: .4byte _080D9F5C
_08012BB4: .4byte gSinTable
_08012BB8:
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #0x18]
	ldr r2, _08012C60 @ =0xFFFF0000
	ands r1, r2
	orrs r1, r0
	mov r4, sl
	ands r1, r4
	movs r0, #0x8a
	lsls r0, r0, #0xf
	orrs r1, r0
	str r1, [sp, #0x18]
_08012BD0:
	movs r5, #0xf4
	lsls r5, r5, #2
	adds r5, r5, r6
	mov r8, r5
	ldr r0, [r5]
	add r5, sp, #0x18
	cmp r7, r0
	bne _08012C12
	ldrh r0, [r5]
	ldr r1, [sp, #0x10]
	ldr r2, _08012C60 @ =0xFFFF0000
	ands r1, r2
	orrs r1, r0
	ldr r0, [sp, #0x18]
	asrs r0, r0, #0x10
	adds r0, #0x10
	lsls r0, r0, #0x10
	mov r4, sl
	ands r1, r4
	orrs r1, r0
	str r1, [sp, #0x10]
	ldr r1, _08012C64 @ =_080D9F60
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r1, sp, #0x10
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_08012C12:
	ldrh r0, [r5]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #0x14]
	ldr r2, _08012C60 @ =0xFFFF0000
	ands r1, r2
	orrs r1, r0
	ldr r0, [sp, #0x18]
	asrs r0, r0, #0x10
	adds r0, #1
	lsls r0, r0, #0x10
	mov r4, sl
	ands r1, r4
	orrs r1, r0
	str r1, [sp, #0x14]
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	ldr r0, _08012C68 @ =_080D9E3C
	add r1, sp, #0x14
	movs r2, #0xaa
	movs r3, #0xcc
	bl oam_renderCellData
	mov r1, r8
	ldr r0, [r1]
	cmp r7, r0
	bne _08012C70
	str r4, [sp]
	str r4, [sp, #4]
	ldr r0, _08012C6C @ =_080D9E2C
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	b _08012C80
	.align 2, 0
_08012C60: .4byte 0xFFFF0000
_08012C64: .4byte _080D9F60
_08012C68: .4byte _080D9E3C
_08012C6C: .4byte _080D9E2C
_08012C70:
	str r4, [sp]
	str r4, [sp, #4]
	ldr r0, _08012C98 @ =_080D9E34
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_08012C80:
	adds r7, #1
	cmp r7, sb
	bge _08012C88
	b _08012B38
_08012C88:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012C98: .4byte _080D9E34

	thumb_func_start sub_8012C9C
sub_8012C9C: @ 0x08012C9C
	push {lr}
	sub sp, #0xc
	movs r1, #0xed
	lsls r1, r1, #2
	adds r3, r0, r1
	movs r0, #0xe
	ldrsb r0, [r3, r0]
	cmp r0, #5
	bhi _08012D92
	lsls r0, r0, #2
	ldr r1, _08012CB8 @ =_08012CBC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08012CB8: .4byte _08012CBC
_08012CBC: @ jump table
	.4byte _08012D92 @ case 0
	.4byte _08012CD4 @ case 1
	.4byte _08012CDC @ case 2
	.4byte _08012D18 @ case 3
	.4byte _08012D38 @ case 4
	.4byte _08012D4A @ case 5
_08012CD4:
	movs r0, #0
	strh r0, [r3, #0x10]
	movs r0, #2
	b _08012D3E
_08012CDC:
	ldrh r0, [r3, #0x10]
	adds r0, #1
	strh r0, [r3, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	bgt _08012D10
	movs r2, #0x10
	ldrsh r0, [r3, r2]
	ldr r1, _08012D0C @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08012CFA
	adds r0, #0x3f
_08012CFA:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	movs r0, #4
	ldrsh r1, [r3, r0]
	movs r0, #0xf0
	b _08012D7A
	.align 2, 0
_08012D0C: .4byte gSinTable
_08012D10:
	movs r0, #0
	strh r0, [r3, #0x10]
	movs r0, #3
	b _08012D90
_08012D18:
	ldrh r0, [r3, #0x10]
	adds r0, #1
	movs r1, #0
	strh r0, [r3, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1e
	ble _08012D2A
	strh r1, [r3, #0x10]
_08012D2A:
	movs r2, #0x10
	ldrsh r0, [r3, r2]
	cmp r0, #9
	bgt _08012D40
	strh r1, [r3, #0xa]
	strh r1, [r3, #8]
	b _08012D92
_08012D38:
	movs r0, #0
	strh r0, [r3, #0x10]
	movs r0, #5
_08012D3E:
	strb r0, [r3, #0xe]
_08012D40:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #0xa]
	strh r0, [r3, #8]
	b _08012D92
_08012D4A:
	ldrh r0, [r3, #0x10]
	adds r0, #1
	strh r0, [r3, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	bgt _08012D8C
	movs r1, #0x10
	ldrsh r0, [r3, r1]
	ldr r1, _08012D88 @ =gSinTable
	lsls r0, r0, #0x1a
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08012D68
	adds r0, #0x3f
_08012D68:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	movs r0, #4
	ldrsh r1, [r3, r0]
	movs r0, #0x94
	lsls r0, r0, #1
_08012D7A:
	subs r0, r0, r1
	muls r0, r2, r0
	asrs r0, r0, #0xf
	ldrh r1, [r3, #4]
	adds r0, r0, r1
	strh r0, [r3, #4]
	b _08012D92
	.align 2, 0
_08012D88: .4byte gSinTable
_08012D8C:
	movs r0, #0
	strh r0, [r3, #0x10]
_08012D90:
	strb r0, [r3, #0xe]
_08012D92:
	movs r2, #8
	ldrsh r0, [r3, r2]
	cmp r0, #0
	beq _08012DBE
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	cmp r0, #0
	beq _08012DBE
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
_08012DBE:
	add sp, #0xc
	pop {r0}
	bx r0

	thumb_func_start sub_8012DC4
sub_8012DC4: @ 0x08012DC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	movs r4, #0
	movs r1, #0xff
	lsls r1, r1, #2
	mov r8, r1
	movs r7, #0x80
	lsls r7, r7, #1
	adds r3, r5, #0
	add r3, r8
	mov sb, r3
	movs r6, #0
	mov ip, r6
_08012DE6:
	movs r0, #0xa5
	lsls r0, r0, #2
	add r0, ip
	adds r2, r5, r0
	ldr r0, [r2, #0x1c]
	cmp r0, #1
	beq _08012E2C
	cmp r0, #1
	bgt _08012DFE
	cmp r0, #0
	beq _08012E08
	b _08012EB0
_08012DFE:
	cmp r0, #2
	beq _08012E3C
	cmp r0, #3
	beq _08012E7C
	b _08012EB0
_08012E08:
	ldr r0, _08012E28 @ =0x0000FFF0
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
	str r6, [r2, #0x18]
	movs r0, #3
	str r0, [r2, #0x20]
	b _08012EB0
	.align 2, 0
_08012E28: .4byte 0x0000FFF0
_08012E2C:
	ldr r0, [r2, #0x18]
	subs r0, #1
	str r0, [r2, #0x18]
	cmp r0, #0
	bge _08012EB0
	movs r0, #0
	str r0, [r2, #0x18]
	b _08012EAC
_08012E3C:
	mov r0, r8
	adds r1, r5, r0
	ldr r0, [r1]
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _08012E5E
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldr r0, [r1]
	ands r0, r3
	cmp r0, #0
	beq _08012E5E
	ldrh r0, [r2, #2]
	adds r0, #1
	b _08012E62
_08012E5E:
	ldrh r0, [r2, #2]
	subs r0, #1
_08012E62:
	strh r0, [r2, #2]
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, r7
	ble _08012EB0
	ldr r3, _08012E78 @ =0xFFFFFEF0
	adds r0, r1, r3
	strh r0, [r2]
	movs r0, #3
	b _08012EAE
	.align 2, 0
_08012E78: .4byte 0xFFFFFEF0
_08012E7C:
	mov r1, sb
	ldr r0, [r1]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08012E8E
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
_08012E8E:
	ldr r0, [r2, #4]
	adds r0, #2
	movs r1, #0x7f
	ands r0, r1
	str r0, [r2, #4]
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, r7
	ble _08012EB0
	ldr r3, _08012ECC @ =0xFFFFFEF0
	adds r0, r1, r3
	strh r0, [r2]
	movs r0, #0x60
	str r0, [r2, #4]
_08012EAC:
	movs r0, #2
_08012EAE:
	str r0, [r2, #0x1c]
_08012EB0:
	adds r6, #0x42
	movs r0, #0x24
	add ip, r0
	adds r4, #1
	cmp r4, #7
	ble _08012DE6
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012ECC: .4byte 0xFFFFFEF0

	thumb_func_start sub_8012ED0
sub_8012ED0: @ 0x08012ED0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	mov r8, r0
	bl sub_8012DC4
	movs r5, #0
	mov sb, r5
_08012EE4:
	lsls r0, r5, #3
	adds r0, r0, r5
	lsls r0, r0, #2
	movs r1, #0xa5
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r2, r8
	adds r4, r2, r0
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	cmp r0, r1
	beq _08012F32
	cmp r1, #0x3f
	ble _08012F06
	movs r0, #0x7f
	subs r0, r0, r1
	b _08012F08
_08012F06:
	adds r0, r1, #0
_08012F08:
	bl sub_8008600
	adds r2, r0, #0
	ldr r1, [r4, #0x14]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #0xd
	lsls r2, r2, #9
	ldr r1, _08012F6C @ =_08356800
	adds r2, r2, r1
	adds r0, r0, r2
	lsls r1, r5, #0xa
	ldr r2, _08012F70 @ =0x06014000
	adds r1, r1, r2
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, [r4, #4]
	str r0, [r4, #8]
_08012F32:
	ldr r1, _08012F74 @ =_080D9FC0
	lsls r0, r5, #2
	adds r0, r0, r1
	adds r6, r4, #0
	adds r6, #0xc
	ldr r7, [sp, #8]
	adds r5, #1
	ldr r2, [r0]
	adds r1, r6, #0
	movs r3, #3
_08012F46:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bge _08012F46
	ldr r0, [r4, #4]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08012F78
	ldrh r1, [r4, #0x10]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	b _08012F80
	.align 2, 0
_08012F6C: .4byte _08356800
_08012F70: .4byte 0x06014000
_08012F74: .4byte _080D9FC0
_08012F78:
	ldrh r0, [r4, #0x10]
	ldr r2, _08012FC0 @ =0x0000EFFF
	adds r1, r2, #0
	ands r0, r1
_08012F80:
	strh r0, [r4, #0x10]
	ldrh r1, [r4, #0x12]
	ldr r2, _08012FC4 @ =0x0000F3FF
	adds r0, r2, #0
	ands r1, r0
	ldr r0, [r4, #0x20]
	lsls r0, r0, #0xa
	orrs r1, r0
	strh r1, [r4, #0x12]
	ldrh r1, [r4, #2]
	lsls r1, r1, #0x10
	ldrh r0, [r4]
	orrs r0, r1
	str r0, [sp, #8]
	mov r0, sb
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r6, #0
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	cmp r5, #7
	ble _08012EE4
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012FC0: .4byte 0x0000EFFF
_08012FC4: .4byte 0x0000F3FF

	thumb_func_start sub_8012FC8
sub_8012FC8: @ 0x08012FC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	movs r0, #1
	str r0, [sp, #8]
	movs r1, #0xb1
	lsls r1, r1, #1
	mov sl, r1
	ldr r0, _08013024 @ =_080C3D6A
	str r0, [sp, #0xc]
	movs r1, #0
	mov r8, r1
	movs r0, #4
	mov sb, r0
_08012FEC:
	movs r1, #0xf3
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r1, [sp, #8]
	cmp r1, r0
	bge _0801305C
	adds r0, r7, #0
	adds r0, #0x2c
	mov r1, sb
	adds r4, r0, r1
	ldr r0, [r4]
	cmp r0, #0
	bne _0801300E
	movs r0, #0x8e
	bl m4aSongNumStart
_0801300E:
	ldr r1, [r4]
	adds r0, r1, #1
	str r0, [r4]
	cmp r0, #0x10
	bgt _0801302C
	adds r5, r0, #0
	ldr r6, _08013024 @ =_080C3D6A
	add r6, r8
	ldr r4, _08013028 @ =_080C3D7E
	b _08013036
	.align 2, 0
_08013024: .4byte _080C3D6A
_08013028: .4byte _080C3D7E
_0801302C:
	adds r5, r1, #0
	subs r5, #0xf
	ldr r6, _08013054 @ =_080C3D7E
	add r6, r8
	ldr r4, _08013058 @ =_080C3D74
_08013036:
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
	b _08013084
	.align 2, 0
_08013054: .4byte _080C3D7E
_08013058: .4byte _080C3D74
_0801305C:
	adds r0, r7, #0
	adds r0, #0x2c
	mov r1, sb
	adds r4, r0, r1
	ldr r0, [r4]
	cmp r0, #0
	ble _08013070
	movs r0, #0x90
	bl m4aSongNumStart
_08013070:
	movs r0, #0
	str r0, [r4]
	bl pltt_getBuffer
	adds r1, r0, #0
	add r1, sl
	ldr r0, [sp, #0xc]
	movs r2, #5
	bl CpuSet
_08013084:
	movs r0, #0x20
	add sl, r0
	ldr r1, [sp, #0xc]
	adds r1, #0x20
	str r1, [sp, #0xc]
	add r8, r0
	movs r0, #4
	add sb, r0
	ldr r1, [sp, #8]
	adds r1, #1
	str r1, [sp, #8]
	cmp r1, #3
	ble _08012FEC
	movs r1, #0xf3
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #1
	ble _08013104
	adds r1, #4
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #1
	bgt _080130B8
	ldr r0, [r7, #0x30]
	b _080130C2
_080130B8:
	cmp r0, #2
	bgt _080130C0
	ldr r0, [r7, #0x34]
	b _080130C2
_080130C0:
	ldr r0, [r7, #0x38]
_080130C2:
	cmp r0, #0x10
	bgt _080130D8
	adds r4, r0, #0
	ldr r6, _080130D0 @ =_080C3DC8
	ldr r5, _080130D4 @ =_080C3DE8
	b _080130E0
	.align 2, 0
_080130D0: .4byte _080C3DC8
_080130D4: .4byte _080C3DE8
_080130D8:
	adds r4, r0, #0
	subs r4, #0x10
	ldr r6, _080130FC @ =_080C3DE8
	ldr r5, _08013100 @ =_080C3DC8
_080130E0:
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
	b _08013118
	.align 2, 0
_080130FC: .4byte _080C3DE8
_08013100: .4byte _080C3DC8
_08013104:
	ldr r4, _08013130 @ =_080C3DC8
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xc0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
_08013118:
	movs r0, #1
	bl pltt_setDirtyFlag
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013130: .4byte _080C3DC8

	thumb_func_start sub_8013134
sub_8013134: @ 0x08013134
	ldr r0, _080131D8 @ =0x03000168
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r2, r1, r0
	ldr r0, [r2]
	asrs r0, r0, #2
	ldrh r3, [r1, #0x10]
	strh r0, [r1, #0x10]
	ldr r0, [r2]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	ldrh r2, [r1, #0x12]
	strh r0, [r1, #0x12]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r1]
	strh r0, [r2]
	adds r2, #8
	ldrh r0, [r1, #2]
	strh r0, [r2]
	adds r2, #8
	ldrh r0, [r1, #4]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #6]
	strh r0, [r2]
	subs r2, #8
	ldrh r0, [r1, #8]
	strh r0, [r2]
	adds r2, #0xa
	ldrh r0, [r1, #0xa]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0xc]
	strh r0, [r2]
	subs r2, #0xa
	ldrh r0, [r1, #0xe]
	strh r0, [r2]
	adds r2, #0xc
	ldrh r0, [r1, #0x10]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0x12]
	strh r0, [r2]
	subs r2, #0xc
	ldrh r0, [r1, #0x14]
	strh r0, [r2]
	adds r2, #0xe
	ldrh r0, [r1, #0x16]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0x18]
	strh r0, [r2]
	adds r2, #0x32
	ldrh r0, [r1, #0x1a]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0x1c]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0x1e]
	strh r0, [r2]
	subs r2, #0x14
	ldrh r0, [r1, #0x20]
	strh r0, [r2]
	adds r2, #4
	ldrh r0, [r1, #0x22]
	strh r0, [r2]
	subs r2, #2
	ldrh r0, [r1, #0x24]
	strh r0, [r2]
	adds r2, #4
	ldrh r0, [r1, #0x26]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0x28]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #0x2a]
	strh r0, [r2]
	bx lr
	.align 2, 0
_080131D8: .4byte 0x03000168

	thumb_func_start sub_80131DC
sub_80131DC: @ 0x080131DC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	movs r5, #0xc0
	lsls r5, r5, #0x13
	movs r4, #0xf
_080131E8:
	bl dmaq_getVBlankDmaQueue
	ldr r1, _080134D0 @ =0x0203EC14
	adds r2, r5, #0
	ldr r3, _080134D4 @ =0x81000C00
	bl dmaq_enqueue
	bl main_frameProc
	movs r0, #0xc0
	lsls r0, r0, #5
	adds r5, r5, r0
	subs r4, #1
	cmp r4, #0
	bge _080131E8
	ldr r4, _080134D8 @ =_080C3A8C
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	ldr r4, _080134DC @ =_0807CD48
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xe0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuFastSet
	ldr r0, _080134E0 @ =_0807D1E8
	ldr r4, _080134E4 @ =0x02010400
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _080134E8 @ =0x06004000
	ldr r6, _080134EC @ =0x80000600
	adds r1, r4, #0
	adds r3, r6, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _080134F0 @ =_080A97F8
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _080134F4 @ =0x06008000
	ldr r5, _080134F8 @ =0x80000C00
	adds r1, r4, #0
	adds r3, r5, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _080134FC @ =_080A9E2C
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08013500 @ =0x06009800
	adds r1, r4, #0
	adds r3, r5, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08013504 @ =_080AA56C
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08013508 @ =0x0600B000
	adds r1, r4, #0
	adds r3, r5, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _0801350C @ =_080C3E08
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08013510 @ =0x0600C800
	ldr r5, _08013514 @ =0x80000400
	adds r1, r4, #0
	adds r3, r5, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08013518 @ =_080BB758
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0801351C @ =0x0600F400
	adds r1, r4, #0
	adds r3, r6, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08013520 @ =_0807DA94
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r4, #0
	adds r3, r5, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08013524 @ =_0807DB98
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08013528 @ =0x06000800
	ldr r5, _0801352C @ =0x80000280
	adds r1, r4, #0
	adds r3, r5, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08013530 @ =_080C4DAC
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08013534 @ =0x06001800
	adds r1, r4, #0
	adds r3, r5, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r4, _08013538 @ =_080C499C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	movs r5, #0
	str r5, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _0801353C @ =0x01000080
	mov r0, sp
	bl CpuFastSet
	movs r0, #0
	movs r1, #0
	movs r2, #0x15
	bl map_getBufferPtr2d
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0
	movs r2, #0xd
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0x60
	bl CpuFastSet
	ldr r1, _08013540 @ =0x06001000
	movs r0, #0
	bl map_setBufferDestination
	movs r0, #1
	bl map_setBufferDirty
	bl main_frameProc
	ldr r4, _08013544 @ =_080C3B68
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	movs r0, #1
	bl pltt_getBuffer
	strh r5, [r0]
	movs r6, #0x80
	lsls r6, r6, #1
	ldr r5, _08013548 @ =characterPalettes_bin
	movs r4, #7
_0801339E:
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, r1, r6
	adds r0, r5, #0
	movs r2, #8
	bl CpuFastSet
	adds r6, #0x20
	movs r2, #0x80
	lsls r2, r2, #2
	adds r5, r5, r2
	subs r4, #1
	cmp r4, #0
	bge _0801339E
	movs r0, #1
	bl pltt_setDirtyFlag
	ldr r0, _0801354C @ =_080C41BC
	ldr r4, _080134E4 @ =0x02010400
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08013550 @ =0x06010000
	ldr r3, _08013554 @ =0x80000A00
	adds r1, r4, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08013558 @ =_080C3870
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0801355C @ =0x06011400
	ldr r3, _08013560 @ =0x80000040
	adds r1, r4, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08013564 @ =_080C2FA8
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08013568 @ =0x06011800
	ldr r3, _0801356C @ =0x80000800
	adds r1, r4, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08013570 @ =_080C5130
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08013574 @ =0x06017000
	ldr r5, _08013514 @ =0x80000400
	adds r1, r4, #0
	adds r3, r5, #0
	bl dmaq_enqueue
	bl main_frameProc
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08013578 @ =0x0203EC16
	ldr r2, _0801357C @ =0x06013C00
	ldr r3, _08013580 @ =0x81000040
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08013584 @ =_080C53CC
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08013588 @ =0x06017800
	adds r1, r4, #0
	adds r3, r5, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldrh r0, [r7, #2]
	movs r1, #0
	ldr r0, _0801358C @ =0x00004208
	strh r0, [r7, #2]
	ldrh r0, [r7, #8]
	ldr r0, _08013590 @ =0x00004309
	strh r0, [r7, #8]
	ldrh r0, [r7, #0xe]
	movs r0, #6
	strh r0, [r7, #0xe]
	ldrh r0, [r7, #0x14]
	movs r0, #0x83
	lsls r0, r0, #1
	strh r0, [r7, #0x14]
	ldrh r0, [r7]
	movs r0, #0xfa
	lsls r0, r0, #5
	strh r0, [r7]
	ldrh r0, [r7, #0x1a]
	movs r0, #0xbf
	strh r0, [r7, #0x1a]
	ldrh r0, [r7, #0x1e]
	movs r0, #0x10
	strh r0, [r7, #0x1e]
	ldrh r0, [r7, #4]
	strh r1, [r7, #4]
	ldrh r0, [r7, #6]
	strh r1, [r7, #6]
	ldrh r0, [r7, #0xa]
	strh r1, [r7, #0xa]
	ldrh r0, [r7, #0xc]
	strh r1, [r7, #0xc]
	ldrh r0, [r7, #0x10]
	strh r1, [r7, #0x10]
	ldrh r0, [r7, #0x12]
	strh r1, [r7, #0x12]
	ldrh r0, [r7, #0x16]
	strh r1, [r7, #0x16]
	ldrh r0, [r7, #0x18]
	strh r1, [r7, #0x18]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r7, r2
	str r1, [r0]
	ldrh r0, [r7, #0x2a]
	ldr r0, _08013594 @ =0x0000303F
	strh r0, [r7, #0x2a]
	ldrh r1, [r7]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	ldrh r2, [r7]
	orrs r0, r1
	strh r0, [r7]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080134D0: .4byte 0x0203EC14
_080134D4: .4byte 0x81000C00
_080134D8: .4byte _080C3A8C
_080134DC: .4byte _0807CD48
_080134E0: .4byte _0807D1E8
_080134E4: .4byte 0x02010400
_080134E8: .4byte 0x06004000
_080134EC: .4byte 0x80000600
_080134F0: .4byte _080A97F8
_080134F4: .4byte 0x06008000
_080134F8: .4byte 0x80000C00
_080134FC: .4byte _080A9E2C
_08013500: .4byte 0x06009800
_08013504: .4byte _080AA56C
_08013508: .4byte 0x0600B000
_0801350C: .4byte _080C3E08
_08013510: .4byte 0x0600C800
_08013514: .4byte 0x80000400
_08013518: .4byte _080BB758
_0801351C: .4byte 0x0600F400
_08013520: .4byte _0807DA94
_08013524: .4byte _0807DB98
_08013528: .4byte 0x06000800
_0801352C: .4byte 0x80000280
_08013530: .4byte _080C4DAC
_08013534: .4byte 0x06001800
_08013538: .4byte _080C499C
_0801353C: .4byte 0x01000080
_08013540: .4byte 0x06001000
_08013544: .4byte _080C3B68
_08013548: .4byte characterPalettes_bin
_0801354C: .4byte _080C41BC
_08013550: .4byte 0x06010000
_08013554: .4byte 0x80000A00
_08013558: .4byte _080C3870
_0801355C: .4byte 0x06011400
_08013560: .4byte 0x80000040
_08013564: .4byte _080C2FA8
_08013568: .4byte 0x06011800
_0801356C: .4byte 0x80000800
_08013570: .4byte _080C5130
_08013574: .4byte 0x06017000
_08013578: .4byte 0x0203EC16
_0801357C: .4byte 0x06013C00
_08013580: .4byte 0x81000040
_08013584: .4byte _080C53CC
_08013588: .4byte 0x06017800
_0801358C: .4byte 0x00004208
_08013590: .4byte 0x00004309
_08013594: .4byte 0x0000303F

	thumb_func_start multilink_main
multilink_main: @ 0x08013598
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	movs r0, #0
	str r0, [sp, #0x34]
	movs r1, #0
	str r1, [sp, #0x38]
	movs r3, #0
	str r3, [sp, #0x3c]
	movs r6, #0
	str r6, [sp, #0x40]
	str r0, [sp, #0x44]
	mov sb, r0
	str r1, [sp, #0x48]
	str r3, [sp, #0x4c]
	ldr r4, _08013754 @ =0x03002C80
	ldr r5, _08013758 @ =0x03004F50
	ldr r6, _0801375C @ =0x03002E20
	mov r8, r6
	ldr r1, _08013760 @ =0x0202A400
	movs r2, #3
	adds r0, r4, #0
	adds r0, #8
_080135CC:
	strh r3, [r0]
	subs r0, #2
	subs r2, #1
	cmp r2, #0
	bge _080135CC
	movs r6, #0
	strh r6, [r5]
	ldr r4, _08013764 @ =0x00000704
	add r4, r8
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r4, #0
	bl frmheap_init
	ldr r5, _08013768 @ =0x03000168
	ldr r2, _0801376C @ =0x00000404
	adds r0, r4, #0
	movs r1, #1
	bl frmheap_calloc
	str r0, [r5]
	adds r7, r0, #0
	bl oam_init
	ldrh r0, [r7, #0x1a]
	movs r5, #0
	movs r0, #0xbf
	strh r0, [r7, #0x1a]
	ldrh r0, [r7, #0x1e]
	movs r0, #0x10
	strh r0, [r7, #0x1e]
	movs r1, #0xf4
	lsls r1, r1, #2
	adds r0, r7, r1
	str r5, [r0]
	movs r3, #0xf5
	lsls r3, r3, #2
	adds r2, r7, r3
	movs r0, #0x78
	strh r0, [r2]
	ldr r0, _08013770 @ =0x000003D6
	adds r1, r7, r0
	movs r0, #0x45
	strh r0, [r1]
	adds r3, #4
	adds r1, r7, r3
	ldr r0, [r2]
	str r0, [r1]
	movs r1, #0xf7
	lsls r1, r1, #2
	adds r0, r7, r1
	str r5, [r0]
	adds r3, #8
	adds r0, r7, r3
	str r5, [r0]
	ldr r4, _08013774 @ =sub_8013134
	movs r0, #1
	movs r1, #2
	rsbs r1, r1, #0
	bl irq_updateMask
	mov r0, r8
	str r4, [r0, #0xc]
	movs r0, #2
	ldr r1, _08013778 @ =0x00010001
	bl irq_updateMask
	movs r0, #0x28
	bl m4aSongNumStart
	adds r0, r7, #0
	bl sub_80131DC
	adds r2, r7, #0
	adds r2, #0x3c
	ldr r3, _0801377C @ =_080D9F24
	movs r0, #0x70
	movs r1, #0x14
	bl sub_8003FD0
	movs r1, #0xed
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, _08013780 @ =_080CA728
	str r1, [r0]
	movs r1, #0x94
	lsls r1, r1, #1
	strh r1, [r0, #4]
	movs r1, #0x90
	strh r1, [r0, #6]
	adds r1, #0x70
	strh r1, [r0, #0xa]
	strh r1, [r0, #8]
	strh r5, [r0, #0xc]
	strb r6, [r0, #0xe]
	strh r5, [r0, #0x10]
	movs r3, #0xf9
	lsls r3, r3, #2
	adds r0, r7, r3
	strb r6, [r0, #0xe]
	strh r5, [r0, #0x10]
	ldr r6, [sp, #0x34]
	lsls r6, r6, #2
	str r6, [sp, #0x54]
	ldr r0, [sp, #0x38]
	adds r0, #1
	str r0, [sp, #0x50]
	movs r2, #0
	movs r1, #7
	subs r3, #0x54
	adds r0, r7, r3
_080136AA:
	str r2, [r0, #0x1c]
	subs r0, #0x24
	subs r1, #1
	cmp r1, #0
	bge _080136AA
	movs r6, #0xf3
	lsls r6, r6, #2
	adds r1, r7, r6
	movs r0, #0
	str r0, [r1]
	movs r1, #0x2c
	adds r1, r1, r7
	mov r8, r1
	movs r3, #0xff
	lsls r3, r3, #2
	adds r5, r7, r3
_080136CA:
	adds r6, r0, #1
	movs r4, #0xff
_080136CE:
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	adds r0, r7, #0
	bl sub_8012DC4
	subs r4, #1
	cmp r4, #0
	bge _080136CE
	bl main_frameProc
	adds r0, r6, #0
	cmp r0, #1
	ble _080136CA
	ldr r4, _08013754 @ =0x03002C80
	mov r1, r8
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0xc
_080136F4:
	str r2, [r0]
	subs r0, #4
	cmp r0, r1
	bge _080136F4
	ldrh r1, [r4, #0x16]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0801370C
	movs r0, #0
	strh r0, [r4, #0x16]
_0801370C:
	bl sub_8013E80
	ldr r5, _08013774 @ =sub_8013134
	ldr r4, _0801375C @ =0x03002E20
	movs r0, #1
	movs r1, #2
	rsbs r1, r1, #0
	bl irq_updateMask
	str r5, [r4, #0xc]
	movs r0, #2
	ldr r1, _08013778 @ =0x00010001
	bl irq_updateMask
_08013728:
	bl oam_update
	bl main_frameProc
	movs r6, #0x80
	lsls r6, r6, #3
	adds r1, r7, r6
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r0, #0xff
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, [sp, #0x44]
	cmp r1, #0
	beq _08013784
	subs r1, #1
	str r1, [sp, #0x44]
	b _080138DE
	.align 2, 0
_08013754: .4byte 0x03002C80
_08013758: .4byte 0x03004F50
_0801375C: .4byte 0x03002E20
_08013760: .4byte 0x0202A400
_08013764: .4byte 0x00000704
_08013768: .4byte 0x03000168
_0801376C: .4byte 0x00000404
_08013770: .4byte 0x000003D6
_08013774: .4byte sub_8013134
_08013778: .4byte 0x00010001
_0801377C: .4byte _080D9F24
_08013780: .4byte _080CA728
_08013784:
	ldr r3, [sp, #0x48]
	cmp r3, #0
	bne _08013792
	bl main_getTriggerKeys
	add r1, sp, #8
	b _08013796
_08013792:
	add r1, sp, #8
	ldr r0, _08013804 @ =0x0000E3E3
_08013796:
	strh r0, [r1]
	add r4, sp, #0x10
	add r0, sp, #8
	adds r1, r4, #0
	movs r2, #0
	bl sub_8011EE0
	adds r5, r0, #0
	ldr r0, _08013808 @ =0x04000200
	ldrh r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r1, r0
	movs r0, #0
	bl irq_updateMask
	bl sub_8012370
	movs r6, #0
	mov r8, r6
	mov sl, r6
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r0, r5
	cmp r0, #0
	bne _08013834
	movs r2, #0
	mov r4, sb
	adds r4, #1
	ldr r0, _08013804 @ =0x0000E3E3
	mov sb, r0
	add r3, sp, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	mov ip, r1
_080137DC:
	mov r0, ip
	lsls r0, r2
	ands r0, r5
	cmp r0, #0
	beq _0801381A
	adds r6, #1
	movs r1, #1
	lsls r1, r2
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08013812
	movs r0, #1
	add r8, r0
	ldrh r0, [r3]
	cmp r0, sb
	bne _0801380C
	ldr r0, [sp, #0x4c]
	orrs r0, r1
	b _08013810
	.align 2, 0
_08013804: .4byte 0x0000E3E3
_08013808: .4byte 0x04000200
_0801380C:
	ldr r0, [sp, #0x4c]
	bics r0, r1
_08013810:
	str r0, [sp, #0x4c]
_08013812:
	adds r3, #8
	adds r2, #1
	cmp r2, #3
	ble _080137DC
_0801381A:
	movs r2, #0
	movs r1, #1
_0801381E:
	ldr r0, [sp, #0x4c]
	asrs r0, r2
	ands r0, r1
	cmp r0, #0
	beq _0801382C
	movs r3, #1
	add sl, r3
_0801382C:
	adds r2, #1
	cmp r2, #3
	ble _0801381E
	b _08013848
_08013834:
	bl sub_8012388
	ldr r1, _080138C0 @ =0x00003EDE
	movs r0, #0
	bl sub_8011DF0
	movs r0, #0x1e
	str r0, [sp, #0x44]
	mov r4, sb
	adds r4, #1
_08013848:
	movs r1, #0xf3
	lsls r1, r1, #2
	adds r2, r7, r1
	str r6, [r2]
	movs r3, #0xf4
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, _080138C4 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	str r0, [r1]
	movs r0, #0
	str r0, [sp, #0x3c]
	cmp r6, #1
	ble _0801386C
	movs r3, #1
	str r3, [sp, #0x3c]
_0801386C:
	mov sb, r4
	cmp r6, r8
	bne _08013876
	movs r0, #0
	mov sb, r0
_08013876:
	mov r3, sb
	cmp r3, #8
	ble _080138A0
	movs r0, #0
	str r0, [r2]
	str r0, [r1]
	movs r6, #0
	str r0, [sp, #0x3c]
	movs r1, #0
	str r1, [sp, #0x48]
	movs r3, #0
	str r3, [sp, #0x4c]
	mov sl, r3
	bl sub_8012388
	ldr r1, _080138C0 @ =0x00003EDE
	movs r0, #0
	bl sub_8011DF0
	movs r0, #0x1e
	str r0, [sp, #0x44]
_080138A0:
	movs r1, #0
	str r1, [sp, #0x40]
	ldr r3, [sp, #0x3c]
	cmp r3, #0
	beq _080138DE
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	beq _080138C8
	movs r0, #9
	bl main_checkKeysTriggered
	cmp r0, #0
	beq _080138D6
	b _080138D2
	.align 2, 0
_080138C0: .4byte 0x00003EDE
_080138C4: .4byte 0x04000128
_080138C8:
	mov r3, sp
	ldrh r1, [r3, #0x10]
	ldr r0, _080138F0 @ =0x0000E3E3
	cmp r1, r0
	bne _080138D6
_080138D2:
	movs r0, #1
	str r0, [sp, #0x48]
_080138D6:
	cmp r6, sl
	bne _080138DE
	movs r1, #9
	str r1, [sp, #0x40]
_080138DE:
	ldr r3, [sp, #0x34]
	cmp r3, #7
	bls _080138E6
	b _08013A98
_080138E6:
	ldr r0, _080138F4 @ =_080138F8
	ldr r6, [sp, #0x54]
	adds r0, r6, r0
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080138F0: .4byte 0x0000E3E3
_080138F4: .4byte _080138F8
_080138F8: @ jump table
	.4byte _08013918 @ case 0
	.4byte _0801395C @ case 1
	.4byte _08013A98 @ case 2
	.4byte _08013A98 @ case 3
	.4byte _08013A00 @ case 4
	.4byte _08013A2C @ case 5
	.4byte _08013A00 @ case 6
	.4byte _08013A2C @ case 7
_08013918:
	ldr r0, [sp, #0x38]
	adds r0, #1
	str r0, [sp, #0x38]
	cmp r0, #0x10
	bgt _0801393E
	ldrh r0, [r7, #0x1a]
	movs r0, #0xbf
	strh r0, [r7, #0x1a]
	ldr r1, [sp, #0x38]
	lsls r0, r1, #4
	rsbs r0, r0, #0
	cmp r0, #0
	bge _08013934
	adds r0, #0xf
_08013934:
	asrs r0, r0, #4
	adds r0, #0x10
	ldrh r1, [r7, #0x1e]
	strh r0, [r7, #0x1e]
	b _08013A98
_0801393E:
	ldrh r0, [r7, #0x1a]
	ldr r0, _08013954 @ =0x00000844
	strh r0, [r7, #0x1a]
	ldrh r0, [r7, #0x1c]
	ldr r0, _08013958 @ =0x00001008
	strh r0, [r7, #0x1c]
	movs r3, #1
	str r3, [sp, #0x34]
	movs r6, #0
	str r6, [sp, #0x38]
	b _08013A98
	.align 2, 0
_08013954: .4byte 0x00000844
_08013958: .4byte 0x00001008
_0801395C:
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _08013978
	ldr r3, _08013974 @ =0x000003C2
	adds r1, r7, r3
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08013988
	movs r0, #1
	b _08013986
	.align 2, 0
_08013974: .4byte 0x000003C2
_08013978:
	ldr r6, _080139AC @ =0x000003C2
	adds r1, r7, r6
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #3
	bne _08013988
	movs r0, #4
_08013986:
	strb r0, [r1]
_08013988:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _080139B0
	movs r1, #0
	movs r2, #0x11
	adds r0, r7, #0
	adds r0, #0x3c
_08013996:
	strb r2, [r0, #0xe]
	adds r0, #0x18
	adds r1, #1
	cmp r1, #0xc
	bls _08013996
	movs r0, #0x8f
	bl m4aSongNumStart
	movs r1, #4
	str r1, [sp, #0x34]
	b _08013A98
	.align 2, 0
_080139AC: .4byte 0x000003C2
_080139B0:
	movs r0, #2
	bl main_checkKeysTriggered
	cmp r0, #0
	beq _08013A98
	bl sub_8012388
	ldr r5, _080139F4 @ =sub_8013134
	ldr r4, _080139F8 @ =0x03002E20
	movs r0, #1
	movs r1, #2
	rsbs r1, r1, #0
	bl irq_updateMask
	str r5, [r4, #0xc]
	movs r0, #2
	ldr r1, _080139FC @ =0x00010001
	bl irq_updateMask
	movs r1, #0
	movs r2, #0x11
	adds r0, r7, #0
	adds r0, #0x3c
_080139DE:
	strb r2, [r0, #0xe]
	adds r0, #0x18
	adds r1, #1
	cmp r1, #0xc
	bls _080139DE
	movs r0, #0x90
	bl m4aSongNumStart
	movs r3, #6
	str r3, [sp, #0x34]
	b _08013A98
	.align 2, 0
_080139F4: .4byte sub_8013134
_080139F8: .4byte 0x03002E20
_080139FC: .4byte 0x00010001
_08013A00:
	ldr r2, _08013A24 @ =gMPlayTable
	ldr r0, _08013A28 @ =gSongTable
	movs r6, #0xa0
	lsls r6, r6, #1
	adds r0, r0, r6
	ldrh r1, [r0, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #2
	bl m4aMPlayFadeOut
	ldr r0, [sp, #0x34]
	adds r0, #1
	str r0, [sp, #0x34]
	b _08013A98
	.align 2, 0
_08013A24: .4byte gMPlayTable
_08013A28: .4byte gSongTable
_08013A2C:
	ldr r1, [sp, #0x50]
	str r1, [sp, #0x38]
	cmp r1, #0x10
	bgt _08013A44
	ldrh r0, [r7, #0x1a]
	movs r0, #0xbf
	strh r0, [r7, #0x1a]
	ldrh r0, [r7, #0x1e]
	add r3, sp, #0x50
	ldrh r3, [r3]
	strh r3, [r7, #0x1e]
	b _08013A98
_08013A44:
	movs r4, #0
	ldr r5, _08013A68 @ =0x03002E20
	movs r0, #1
	movs r1, #2
	rsbs r1, r1, #0
	bl irq_updateMask
	str r4, [r5, #0xc]
	movs r0, #2
	ldr r1, _08013A6C @ =0x00010001
	bl irq_updateMask
	ldr r6, [sp, #0x34]
	cmp r6, #5
	beq _08013A70
	cmp r6, #7
	beq _08013A80
	b _08013A98
	.align 2, 0
_08013A68: .4byte 0x03002E20
_08013A6C: .4byte 0x00010001
_08013A70:
	ldr r0, _08013A7C @ =sub_8013B38
	str r0, [r5]
	ldrb r0, [r5, #8]
	adds r0, #1
	movs r1, #7
	b _08013A8A
	.align 2, 0
_08013A7C: .4byte sub_8013B38
_08013A80:
	ldr r0, _08013A94 @ =title_main
	str r0, [r5]
	ldrb r0, [r5, #8]
	adds r0, #1
	ldr r1, [sp, #0x34]
_08013A8A:
	ands r0, r1
	strb r0, [r5, #8]
	movs r0, #1
	b _08013B28
	.align 2, 0
_08013A94: .4byte title_main
_08013A98:
	movs r5, #0
	ldr r3, [sp, #0x34]
	lsls r3, r3, #2
	str r3, [sp, #0x54]
	ldr r6, [sp, #0x38]
	adds r6, #1
	str r6, [sp, #0x50]
	add r0, sp, #0x30
	mov r8, r0
	adds r4, r7, #0
	adds r4, #0x3c
_08013AAE:
	adds r0, r4, #0
	bl sub_8003BB8
	adds r4, #0x18
	adds r5, #1
	cmp r5, #0xc
	bls _08013AAE
	movs r5, #0
_08013ABE:
	movs r0, #0xc
	subs r0, r0, r5
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #3
	adds r4, #0x3c
	adds r4, r7, r4
	ldrh r2, [r4, #4]
	ldr r1, _08013B20 @ =0xFFFF0000
	ldr r0, [sp, #0x30]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0x30]
	ldrh r2, [r4, #6]
	lsls r2, r2, #0x10
	ldr r1, _08013B24 @ =0x0000FFFF
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0x30]
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
	mov r1, r8
	bl oam_renderCellData
	adds r5, #1
	cmp r5, #0xc
	bls _08013ABE
	adds r0, r7, #0
	bl sub_8012980
	adds r0, r7, #0
	bl sub_8012C9C
	adds r0, r7, #0
	bl sub_8012ED0
	adds r0, r7, #0
	bl sub_8012FC8
	b _08013728
	.align 2, 0
_08013B20: .4byte 0xFFFF0000
_08013B24: .4byte 0x0000FFFF
_08013B28:
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8013B38
sub_8013B38: @ 0x08013B38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	ldr r0, _08013B98 @ =0x03000168
	ldr r0, [r0]
	movs r1, #0xf3
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x28]
	movs r2, #0
	str r2, [sp, #0x30]
	mov sl, r2
	bl sub_8013F04
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x3c]
	mov r1, sp
	str r1, [sp, #0x38]
_08013B66:
	movs r2, #0
	str r2, [sp, #0x34]
	bl main_frameProc
	movs r0, #0xfc
	lsls r0, r0, #8
	ldr r1, [sp, #0x38]
	strh r0, [r1]
	mov r2, sp
	ldrh r2, [r2, #0x34]
	strh r2, [r1, #2]
	movs r4, #0
_08013B7E:
	ldr r0, [sp, #0x38]
	ldrh r5, [r0, #2]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_805DE68
	cmp r0, #0
	beq _08013B9C
	movs r0, #1
	lsls r0, r4
	orrs r0, r5
	b _08013B9E
	.align 2, 0
_08013B98: .4byte 0x03000168
_08013B9C:
	adds r0, r5, #0
_08013B9E:
	ldr r1, [sp, #0x38]
	strh r0, [r1, #2]
	adds r4, #1
	cmp r4, #2
	ble _08013B7E
	movs r0, #0
	strh r0, [r1, #4]
	movs r6, #0
	mov r2, sp
_08013BB0:
	movs r4, #0
	lsls r0, r6, #1
	mov r8, r0
	lsls r3, r6, #0x18
	adds r1, r6, #1
	mov sb, r1
_08013BBC:
	mov r1, r8
	adds r0, r1, r6
	adds r7, r0, r4
	ldrh r5, [r2, #4]
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	lsrs r0, r3, #0x18
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	bl sub_805DE38
	ldr r2, [sp, #0x44]
	ldr r3, [sp, #0x48]
	cmp r0, #0
	beq _08013BE2
	movs r0, #1
	lsls r0, r7
	orrs r0, r5
	b _08013BE4
_08013BE2:
	adds r0, r5, #0
_08013BE4:
	strh r0, [r2, #4]
	adds r4, #1
	cmp r4, #2
	ble _08013BBC
	mov r6, sb
	cmp r6, #4
	ble _08013BB0
	mov r0, sp
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl sub_8011EE0
	str r0, [sp, #0x34]
	ldr r0, _08013CDC @ =0x04000200
	ldrh r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r1, r0
	movs r0, #0
	bl irq_updateMask
	bl sub_8012370
	movs r2, #0
	str r2, [sp, #0x2c]
	movs r0, #0xc0
	lsls r0, r0, #6
	ldr r1, [sp, #0x34]
	ands r0, r1
	cmp r0, #0
	bne _08013CE0
	movs r5, #0
	str r2, [sp, #0x40]
_08013C26:
	movs r0, #0x80
	lsls r0, r0, #1
	lsls r0, r5
	ldr r1, [sp, #0x34]
	ands r0, r1
	cmp r0, #0
	beq _08013CAE
	movs r0, #1
	lsls r0, r5
	ands r0, r1
	cmp r0, #0
	beq _08013CAE
	ldr r2, [sp, #0x3c]
	ldr r1, [sp, #0x40]
	adds r0, r2, r1
	ldrh r0, [r0]
	mov sl, r1
	movs r2, #0xfc
	lsls r2, r2, #8
	cmp r0, r2
	bne _08013CAE
	movs r4, #0
	mov r0, sp
	adds r0, #0xa
	add r7, sp, #0xc
	adds r6, r0, r1
_08013C5A:
	ldrh r2, [r6]
	asrs r2, r4
	movs r0, #1
	ands r2, r0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_8013F24
	adds r4, #1
	cmp r4, #2
	ble _08013C5A
	movs r6, #0
_08013C72:
	movs r4, #0
	lsls r1, r6, #1
	mov r8, r1
	adds r2, r6, #1
	mov sb, r2
_08013C7C:
	mov r1, sl
	adds r0, r7, r1
	ldrh r3, [r0]
	mov r2, r8
	adds r0, r2, r6
	adds r0, r0, r4
	asrs r3, r0
	movs r0, #1
	ands r3, r0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_8013F60
	adds r4, #1
	cmp r4, #2
	ble _08013C7C
	mov r6, sb
	cmp r6, #4
	ble _08013C72
	movs r0, #1
	lsls r0, r5
	ldr r1, [sp, #0x30]
	orrs r1, r0
	str r1, [sp, #0x30]
_08013CAE:
	ldr r2, [sp, #0x40]
	adds r2, #8
	str r2, [sp, #0x40]
	adds r5, #1
	cmp r5, #3
	ble _08013C26
	movs r5, #0
	movs r1, #1
_08013CBE:
	ldr r0, [sp, #0x30]
	asrs r0, r5
	ands r0, r1
	cmp r0, #0
	beq _08013CCE
	ldr r0, [sp, #0x2c]
	adds r0, #1
	str r0, [sp, #0x2c]
_08013CCE:
	adds r5, #1
	cmp r5, #3
	ble _08013CBE
	movs r1, #0
	mov sl, r1
	b _08013D04
	.align 2, 0
_08013CDC: .4byte 0x04000200
_08013CE0:
	bl sub_8012388
	movs r0, #0
	ldr r1, _08013CFC @ =0x00003EDE
	bl sub_8011DF0
	movs r2, #1
	add sl, r2
	mov r0, sl
	cmp r0, #0x14
	ble _08013D04
	ldr r0, _08013D00 @ =error_main
	b _08013D18
	.align 2, 0
_08013CFC: .4byte 0x00003EDE
_08013D00: .4byte error_main
_08013D04:
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	cmp r1, r2
	beq _08013D0E
	b _08013B66
_08013D0E:
	bl sub_8001B4C
	bl sub_8001ADC
	ldr r0, _08013D38 @ =sub_8013D40
_08013D18:
	ldr r2, _08013D3C @ =0x03002E20
	str r0, [r2]
	ldrb r0, [r2, #8]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r2, #8]
	movs r0, #1
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08013D38: .4byte sub_8013D40
_08013D3C: .4byte 0x03002E20

	thumb_func_start sub_8013D40
sub_8013D40: @ 0x08013D40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08013DF0 @ =0x03000168
	ldr r0, [r0]
	movs r1, #0xf3
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r8, r0
	movs r5, #0
	movs r7, #0
	ldr r0, _08013DF4 @ =0x03004F50
	strh r7, [r0]
	bl main_frameProc
	bl main_frameProc
	bl sub_8012388
	bl sub_802DC30
	ldr r1, _08013DF8 @ =0x03002C80
	ldrh r2, [r1, #0x16]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1, #0x16]
	adds r4, r1, #0
	movs r6, #0xff
_08013D82:
	ldrh r1, [r4, #0x16]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #1
	beq _08013D98
	bl main_frameProc
	adds r5, #1
	cmp r5, #0x3c
	ble _08013D82
	movs r7, #1
_08013D98:
	ldrb r0, [r4, #1]
	cmp r0, r8
	beq _08013DA0
	movs r7, #1
_08013DA0:
	cmp r7, #0
	bne _08013E48
	movs r0, #1
	mov sb, r0
	movs r6, #0
	ldr r1, _08013DF4 @ =0x03004F50
	movs r2, #0xe0
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r3, _08013DF8 @ =0x03002C80
	mov r8, r3
	mov sl, r2
_08013DBA:
	movs r4, #0xe0
	lsls r4, r4, #5
	mov r1, r8
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _08013DDE
	adds r5, r4, #0
	mov r2, r8
	adds r2, #2
	adds r3, r0, #0
_08013DCE:
	ldrh r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	ands r4, r0
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bne _08013DCE
_08013DDE:
	bl main_frameProc
	cmp r4, sl
	beq _08013DFC
	adds r6, #1
	cmp r6, #0x3c
	ble _08013E00
	movs r7, #1
	b _08013E06
	.align 2, 0
_08013DF0: .4byte 0x03000168
_08013DF4: .4byte 0x03004F50
_08013DF8: .4byte 0x03002C80
_08013DFC:
	movs r2, #0
	mov sb, r2
_08013E00:
	mov r3, sb
	cmp r3, #0
	bne _08013DBA
_08013E06:
	ldr r1, _08013E38 @ =0x03004F50
	movs r0, #0
	strh r0, [r1]
	cmp r7, #0
	bne _08013E48
	ldr r4, _08013E3C @ =0x03002E20
	movs r0, #1
	movs r1, #2
	rsbs r1, r1, #0
	bl irq_updateMask
	str r7, [r4, #0xc]
	movs r0, #2
	ldr r1, _08013E40 @ =0x00010001
	bl irq_updateMask
	ldr r0, _08013E44 @ =spm_main
	str r0, [r4]
	ldrb r0, [r4, #8]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r4, #8]
	b _08013E62
	.align 2, 0
_08013E38: .4byte 0x03004F50
_08013E3C: .4byte 0x03002E20
_08013E40: .4byte 0x00010001
_08013E44: .4byte spm_main
_08013E48:
	ldr r1, _08013E74 @ =0x03002C80
	movs r0, #0
	strh r0, [r1, #0x16]
	bl sio2_stop
	ldr r0, _08013E78 @ =error_main
	ldr r2, _08013E7C @ =0x03002E20
	str r0, [r2]
	ldrb r0, [r2, #8]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r2, #8]
_08013E62:
	movs r0, #1
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08013E74: .4byte 0x03002C80
_08013E78: .4byte error_main
_08013E7C: .4byte 0x03002E20

	thumb_func_start sub_8013E80
sub_8013E80: @ 0x08013E80
	push {r4, r5, lr}
	movs r1, #0xc1
	rsbs r1, r1, #0
	movs r0, #1
	bl irq_updateMask
	ldr r1, _08013EE8 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	ldr r4, _08013EEC @ =sub_8012254
	adds r1, r4, #0
	cmp r4, #0
	bne _08013E9C
	ldr r1, _08013EF0 @ =main_dummyIrqHandler
_08013E9C:
	movs r0, #6
	bl irq_setHandler
	adds r1, r4, #0
	cmp r1, #0
	bne _08013EAA
	ldr r1, _08013EF0 @ =main_dummyIrqHandler
_08013EAA:
	movs r0, #7
	bl irq_setHandler
	movs r5, #0
	ldr r4, _08013EF4 @ =0x03002E20
	movs r0, #1
	movs r1, #2
	rsbs r1, r1, #0
	bl irq_updateMask
	str r5, [r4, #0xc]
	movs r0, #2
	ldr r1, _08013EF8 @ =0x00010001
	bl irq_updateMask
	ldr r1, _08013EFC @ =0x00003EDE
	movs r0, #0
	bl sub_8011DF0
	ldr r0, _08013F00 @ =0x04000200
	ldrh r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r1, r0
	movs r0, #0
	bl irq_updateMask
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013EE8: .4byte 0x04000202
_08013EEC: .4byte sub_8012254
_08013EF0: .4byte main_dummyIrqHandler
_08013EF4: .4byte 0x03002E20
_08013EF8: .4byte 0x00010001
_08013EFC: .4byte 0x00003EDE
_08013F00: .4byte 0x04000200

	thumb_func_start sub_8013F04
sub_8013F04: @ 0x08013F04
	movs r3, #0
	ldr r2, _08013F1C @ =0x03000178
	ldr r1, _08013F20 @ =0x03000170
	movs r0, #3
_08013F0C:
	strh r3, [r1]
	strh r3, [r2]
	adds r2, #2
	adds r1, #2
	subs r0, #1
	cmp r0, #0
	bge _08013F0C
	bx lr
	.align 2, 0
_08013F1C: .4byte 0x03000178
_08013F20: .4byte 0x03000170

	thumb_func_start sub_8013F24
sub_8013F24: @ 0x08013F24
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	cmp r2, #0
	beq _08013F44
	ldr r0, _08013F40 @ =0x03000170
	lsls r2, r3, #1
	adds r2, r2, r0
	movs r0, #1
	lsls r0, r4
	ldrh r1, [r2]
	orrs r0, r1
	b _08013F52
	.align 2, 0
_08013F40: .4byte 0x03000170
_08013F44:
	ldr r0, _08013F5C @ =0x03000170
	lsls r2, r3, #1
	adds r2, r2, r0
	movs r1, #1
	lsls r1, r4
	ldrh r0, [r2]
	bics r0, r1
_08013F52:
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013F5C: .4byte 0x03000170

	thumb_func_start sub_8013F60
sub_8013F60: @ 0x08013F60
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r5, r0, r2
	cmp r3, #0
	beq _08013F84
	ldr r0, _08013F80 @ =0x03000178
	lsls r2, r4, #1
	adds r2, r2, r0
	movs r0, #1
	lsls r0, r5
	ldrh r1, [r2]
	orrs r0, r1
	b _08013F92
	.align 2, 0
_08013F80: .4byte 0x03000178
_08013F84:
	ldr r0, _08013F9C @ =0x03000178
	lsls r2, r4, #1
	adds r2, r2, r0
	movs r1, #1
	lsls r1, r5
	ldrh r0, [r2]
	bics r0, r1
_08013F92:
	strh r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08013F9C: .4byte 0x03000178

	thumb_func_start sub_8013FA0
sub_8013FA0: @ 0x08013FA0
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r2, #0
	ldr r0, _08013FE0 @ =0x03002C80
	ldrb r4, [r0, #1]
	adds r6, r0, #0
	cmp r2, r4
	bge _08013FD4
	ldr r5, _08013FE4 @ =0x03000170
	ldrh r0, [r5]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08013FD4
	adds r1, r5, #0
	movs r5, #1
_08013FC2:
	adds r1, #2
	adds r2, #1
	cmp r2, r4
	bge _08013FD4
	ldrh r0, [r1]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	bne _08013FC2
_08013FD4:
	ldrb r6, [r6, #1]
	cmp r2, r6
	bge _08013FE8
	movs r0, #0
	b _08013FEA
	.align 2, 0
_08013FE0: .4byte 0x03002C80
_08013FE4: .4byte 0x03000170
_08013FE8:
	movs r0, #1
_08013FEA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_8013FF0
sub_8013FF0: @ 0x08013FF0
	push {r4, r5, r6, lr}
	lsls r2, r0, #1
	adds r2, r2, r0
	adds r2, r2, r1
	movs r3, #0
	ldr r0, _08014034 @ =0x03002C80
	ldrb r4, [r0, #1]
	adds r6, r0, #0
	cmp r3, r4
	bge _08014028
	ldr r5, _08014038 @ =0x03000178
	ldrh r0, [r5]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08014028
	adds r1, r5, #0
	movs r5, #1
_08014016:
	adds r1, #2
	adds r3, #1
	cmp r3, r4
	bge _08014028
	ldrh r0, [r1]
	asrs r0, r2
	ands r0, r5
	cmp r0, #0
	bne _08014016
_08014028:
	ldrb r6, [r6, #1]
	cmp r3, r6
	bge _0801403C
	movs r0, #0
	b _0801403E
	.align 2, 0
_08014034: .4byte 0x03002C80
_08014038: .4byte 0x03000178
_0801403C:
	movs r0, #1
_0801403E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_8014044
sub_8014044: @ 0x08014044
	movs r1, #0
	strb r1, [r0, #0xe]
	strh r1, [r0, #0x10]
	bx lr

	thumb_func_start sub_801404C
sub_801404C: @ 0x0801404C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r1, _080140B4 @ =_080D9F70
	movs r0, #0xe
	ldrsb r0, [r4, r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrb r2, [r0, #4]
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r7, r1, #0
	cmp r0, r2
	ble _08014088
	movs r0, #0
	strh r0, [r4, #0x10]
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _08014088
	movs r0, #0
	strb r0, [r4, #0xe]
_08014088:
	lsls r1, r5, #0x10
	adds r0, r6, #4
	lsls r0, r0, #0x10
	lsrs r1, r1, #0x10
	orrs r1, r0
	str r1, [sp, #8]
	movs r0, #0xe
	ldrsb r0, [r4, r0]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	add r1, sp, #8
	adds r2, r3, #0
	bl oam_renderCellData
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080140B4: .4byte _080D9F70

	thumb_func_start sub_80140B8
sub_80140B8: @ 0x080140B8
	push {r4, r5, r6, lr}
	ldrh r4, [r0]
	ldr r6, _080140F8 @ =_080D9FE0
	movs r3, #0
	movs r5, #0x80
	lsls r5, r5, #1
	lsrs r0, r4, #8
	lsls r1, r4, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080140CE:
	subs r0, r5, r3
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r2, r3, r0
	lsls r0, r2, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	lsrs r0, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, r0, r4
	cmp r0, #0
	bne _08014100
	ldr r0, _080140FC @ =_080DA1E1
	adds r0, r2, r0
	ldrb r0, [r0]
	b _08014110
	.align 2, 0
_080140F8: .4byte _080D9FE0
_080140FC: .4byte _080DA1E1
_08014100:
	cmp r0, #0
	bge _08014108
	adds r3, r2, #1
	b _0801410A
_08014108:
	adds r5, r2, #0
_0801410A:
	cmp r5, r3
	bgt _080140CE
	movs r0, #0
_08014110:
	lsls r2, r0, #0x18
	lsrs r0, r2, #0x1d
	movs r1, #0xf8
	lsls r1, r1, #0x15
	ands r1, r2
	lsrs r1, r1, #0x18
	lsls r0, r0, #6
	orrs r0, r1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8014128
sub_8014128: @ 0x08014128
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r0, [sp, #0x4c]
	mov sl, r0
	ldr r0, [sp, #0x58]
	cmp r0, #0
	beq _08014146
	movs r0, #1
_08014146:
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	lsls r0, r1, #6
	ldr r3, [sp, #0x14]
	adds r0, r3, r0
	ldr r3, [sp, #0xc]
	lsls r1, r3, #1
	adds r0, r0, r1
	str r0, [sp, #0x1c]
	mov sb, r2
	movs r0, #0
	str r0, [sp, #0x20]
	ldrb r0, [r2]
	cmp r0, #0
	beq _08014184
	cmp r0, #0xa
	beq _08014184
	cmp r0, #0xd
	beq _08014184
	mov r1, sb
_0801416E:
	adds r1, #2
	ldr r2, [sp, #0x20]
	adds r2, #1
	str r2, [sp, #0x20]
	ldrb r0, [r1]
	cmp r0, #0
	beq _08014184
	cmp r0, #0xa
	beq _08014184
	cmp r0, #0xd
	bne _0801416E
_08014184:
	movs r3, #0
	mov r8, r3
	movs r7, #0
	ldr r0, [sp, #0x20]
	cmp r7, r0
	blt _08014192
	b _080142BA
_08014192:
	movs r3, #0
	movs r1, #0
	ldr r2, [sp, #0x18]
	cmp r2, #0
	beq _08014206
	lsls r0, r7, #1
	movs r2, #1
	rsbs r2, r2, #0
	movs r5, #0
	ldr r6, _08014248 @ =0x030029C8
	mov r1, sb
	adds r4, r0, r1
_080141AA:
	adds r0, r4, #0
	str r2, [sp, #0x24]
	str r3, [sp, #0x28]
	bl sub_80140B8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	cmp r1, #0
	ble _080141C2
	add r1, sl
_080141C2:
	ldr r0, _08014248 @ =0x030029C8
	adds r0, r5, r0
	strb r1, [r0]
	adds r4, #2
	adds r5, #1
	cmp r5, #3
	ble _080141AA
	ldrb r0, [r6]
	cmp r0, #0x40
	bne _080141EC
	ldrb r0, [r6, #3]
	cmp r0, #0x40
	bne _080141EC
	ldrb r1, [r6, #1]
	subs r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r0, #0x10
	ldrb r6, [r6, #2]
	adds r2, r0, r6
_080141EC:
	adds r1, r2, #0
	cmp r1, #0
	blt _08014206
	cmp r1, #3
	beq _08014206
	cmp r1, #3
	bgt _08014206
	cmp r1, #0
	blt _08014206
	lsls r0, r1, #2
	ldr r2, [sp, #0x58]
	adds r0, r0, r2
	ldr r3, [r0]
_08014206:
	cmp r3, #0
	beq _0801426A
	movs r4, #0
	ldrb r0, [r3]
	ldr r2, [sp, #0xc]
	add r2, r8
	adds r5, r7, #4
	cmp r0, #0
	beq _08014222
_08014218:
	adds r4, #1
	adds r0, r3, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08014218
_08014222:
	cmp r1, #2
	beq _0801424C
	lsrs r0, r4, #0x1f
	adds r0, r4, r0
	asrs r4, r0, #1
	mov r0, sl
	str r0, [sp]
	ldr r1, [sp, #0x50]
	str r1, [sp, #4]
	ldr r0, [sp, #0x54]
	str r0, [sp, #8]
	adds r0, r2, #0
	ldr r1, [sp, #0x10]
	adds r2, r3, #0
	ldr r3, [sp, #0x14]
	bl sub_801445C
	b _08014264
	.align 2, 0
_08014248: .4byte 0x030029C8
_0801424C:
	mov r1, sl
	str r1, [sp]
	ldr r0, [sp, #0x50]
	str r0, [sp, #4]
	ldr r1, [sp, #0x54]
	str r1, [sp, #8]
	adds r0, r2, #0
	ldr r1, [sp, #0x10]
	adds r2, r3, #0
	ldr r3, [sp, #0x14]
	bl sub_8014480
_08014264:
	adds r7, r5, #0
	add r8, r4
	b _080142B2
_0801426A:
	mov r0, r8
	ldr r1, [sp, #0x54]
	bl __divsi3
	adds r5, r0, #0
	lsls r0, r7, #1
	add r0, sb
	bl sub_80140B8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	ble _08014286
	add r4, sl
_08014286:
	mov r0, r8
	ldr r1, [sp, #0x54]
	bl __modsi3
	lsls r1, r5, #6
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r2, [sp, #0x1c]
	adds r1, r1, r2
	ldr r3, [sp, #0x50]
	lsls r2, r3, #0xc
	adds r0, r2, #0
	orrs r0, r4
	strh r0, [r1]
	adds r1, #0x40
	adds r0, r4, #0
	adds r0, #0x20
	orrs r2, r0
	strh r2, [r1]
	adds r7, #1
	movs r0, #1
	add r8, r0
_080142B2:
	ldr r1, [sp, #0x20]
	cmp r7, r1
	bge _080142BA
	b _08014192
_080142BA:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_80142CC
sub_80142CC: @ 0x080142CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	adds r4, r1, #0
	movs r0, #1
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _080143A2
	movs r0, #0
	bl map_clearBuffer
	b _080143A2
_080142EE:
	movs r0, #0
	str r0, [sp]
	ldr r5, [r4]
	movs r0, #0x80
	lsls r0, r0, #7
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _08014308
	asrs r0, r1, #4
	movs r1, #0xf
	ands r0, r1
	adds r5, r5, r0
_08014308:
	ldr r6, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #8
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _0801431E
	asrs r0, r1, #8
	movs r1, #0xf
	ands r0, r1
	adds r6, r6, r0
_0801431E:
	ldr r7, [r4, #0xc]
	ldr r0, [r4, #0x10]
	mov sb, r0
	ldr r1, [r4, #8]
	mov r8, r1
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	lsls r1, r6, #6
	adds r0, r0, r1
	lsls r1, r5, #1
	adds r0, r0, r1
	str r0, [sp, #4]
	mov r1, r8
	ldrb r0, [r1]
	adds r4, #0x14
	str r4, [sp, #8]
	cmp r0, #0
	beq _08014356
_08014348:
	adds r1, #2
	ldr r0, [sp]
	adds r0, #1
	str r0, [sp]
	ldrb r0, [r1]
	cmp r0, #0
	bne _08014348
_08014356:
	movs r6, #0
	ldr r1, [sp]
	cmp r6, r1
	bge _080143A0
	lsls r7, r7, #0xc
_08014360:
	lsls r0, r6, #1
	add r0, r8
	bl sub_80140B8
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r6, #0
	mov r1, sb
	bl __divsi3
	adds r4, r0, #0
	adds r0, r6, #0
	mov r1, sb
	bl __modsi3
	lsls r4, r4, #6
	adds r4, r4, r0
	lsls r4, r4, #1
	ldr r0, [sp, #4]
	adds r4, r4, r0
	adds r0, r7, #0
	orrs r0, r5
	strh r0, [r4]
	adds r4, #0x40
	adds r5, #0x20
	orrs r5, r7
	strh r5, [r4]
	adds r6, #1
	ldr r1, [sp]
	cmp r6, r1
	blt _08014360
_080143A0:
	ldr r4, [sp, #8]
_080143A2:
	ldr r1, [r4]
	ldr r0, _080143CC @ =0x0000FFFF
	cmp r1, r0
	bne _080142EE
	movs r0, #2
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _080143BA
	movs r0, #1
	bl map_setBufferDirty
_080143BA:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080143CC: .4byte 0x0000FFFF

	thumb_func_start sub_80143D0
sub_80143D0: @ 0x080143D0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x1d
	movs r1, #0xf8
	lsls r1, r1, #0x15
	ands r1, r0
	lsrs r1, r1, #0x18
	lsls r2, r2, #6
	orrs r2, r1
	adds r0, r2, #0
	bx lr

	thumb_func_start sub_080143E4
sub_080143E4: @ 0x080143E4
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x16
	movs r2, #0xf8
	lsls r2, r2, #0xd
	ands r2, r1
	lsrs r2, r2, #0x10
	lsls r0, r0, #5
	adds r0, r0, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr

	thumb_func_start sub_080143FC
sub_080143FC: @ 0x080143FC
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r6, _0801443C @ =_080D9FE0
	movs r3, #0
	movs r5, #0x80
	lsls r5, r5, #1
	lsrs r0, r4, #8
	lsls r1, r4, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08014414:
	subs r0, r5, r3
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r2, r3, r0
	lsls r0, r2, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	lsrs r0, r1, #8
	lsls r1, r1, #8
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r0, r0, r4
	cmp r0, #0
	bne _08014444
	ldr r0, _08014440 @ =_080DA1E1
	adds r0, r2, r0
	ldrb r0, [r0]
	b _08014454
	.align 2, 0
_0801443C: .4byte _080D9FE0
_08014440: .4byte _080DA1E1
_08014444:
	cmp r0, #0
	bge _0801444C
	adds r3, r2, #1
	b _0801444E
_0801444C:
	adds r5, r2, #0
_0801444E:
	cmp r5, r3
	bgt _08014414
	movs r0, #0
_08014454:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_801445C
sub_801445C: @ 0x0801445C
	push {r4, r5, r6, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x24]
	ldr r5, [sp, #0x28]
	ldr r6, [sp, #0x2c]
	str r4, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	movs r4, #0
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	bl sub_8014128
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8014480
sub_8014480: @ 0x08014480
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r2
	ldr r2, [sp, #0x2c]
	mov sl, r2
	lsls r1, r1, #6
	adds r3, r3, r1
	lsls r0, r0, #1
	adds r3, r3, r0
	str r3, [sp]
	movs r7, #0
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	beq _080144B2
_080144A6:
	adds r7, #1
	mov r2, sb
	adds r0, r2, r7
	ldrb r0, [r0]
	cmp r0, #0
	bne _080144A6
_080144B2:
	movs r6, #0
	cmp r6, r7
	bge _0801450A
	ldr r0, [sp, #0x28]
	lsls r0, r0, #0xc
	mov r8, r0
_080144BE:
	mov r1, sb
	adds r0, r1, r6
	ldrb r1, [r0]
	lsrs r2, r1, #5
	movs r0, #0x1f
	ands r1, r0
	lsls r5, r2, #6
	orrs r5, r1
	cmp r5, #0
	ble _080144D6
	ldr r2, [sp, #0x24]
	adds r5, r5, r2
_080144D6:
	adds r0, r6, #0
	mov r1, sl
	bl __divsi3
	adds r4, r0, #0
	adds r0, r6, #0
	mov r1, sl
	bl __modsi3
	lsls r4, r4, #6
	adds r4, r4, r0
	lsls r4, r4, #1
	ldr r0, [sp]
	adds r4, r4, r0
	mov r0, r8
	orrs r0, r5
	strh r0, [r4]
	adds r4, #0x40
	adds r0, r5, #0
	adds r0, #0x20
	mov r1, r8
	orrs r0, r1
	strh r0, [r4]
	adds r6, #1
	cmp r6, r7
	blt _080144BE
_0801450A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801451C
sub_0801451C: @ 0x0801451C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r2, [sp]
	mov sb, r3
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x34]
	mov sl, r3
	lsls r1, r1, #6
	adds r2, r2, r1
	lsls r0, r0, #1
	adds r2, r2, r0
	str r2, [sp, #4]
	movs r7, #1
	mov r0, sb
	cmp r0, #1
	ble _08014554
	mov r6, sb
	subs r6, #1
_08014548:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r7, r0, #1
	subs r6, #1
	cmp r6, #0
	bne _08014548
_08014554:
	movs r6, #0
	cmp r6, sb
	bge _080145B2
	ldr r0, [sp, #0x30]
	lsls r0, r0, #0xc
	mov r8, r0
_08014560:
	adds r0, r6, #0
	mov r1, sl
	bl __divsi3
	adds r5, r0, #0
	ldr r0, [sp]
	adds r1, r7, #0
	bl __divsi3
	movs r1, #0xa
	bl __modsi3
	adds r4, r0, #0
	adds r4, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r6, #0
	mov r1, sl
	bl __modsi3
	lsls r5, r5, #6
	adds r5, r5, r0
	lsls r5, r5, #1
	ldr r3, [sp, #4]
	adds r5, r5, r3
	mov r0, r8
	orrs r0, r4
	strh r0, [r5]
	adds r5, #0x40
	adds r4, #0x20
	mov r0, r8
	orrs r4, r0
	strh r4, [r5]
	adds r0, r7, #0
	movs r1, #0xa
	bl __divsi3
	adds r7, r0, #0
	adds r6, #1
	cmp r6, sb
	blt _08014560
_080145B2:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080145C4
sub_080145C4: @ 0x080145C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r1, #0
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	movs r5, #0
	ldr r7, _08014620 @ =0x030029C8
	adds r4, r0, #0
_080145D8:
	adds r0, r4, #0
	bl sub_80140B8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	ble _080145E8
	adds r1, r1, r6
_080145E8:
	ldr r0, _08014620 @ =0x030029C8
	adds r0, r5, r0
	strb r1, [r0]
	adds r4, #2
	adds r5, #1
	cmp r5, #3
	ble _080145D8
	ldrb r0, [r7]
	cmp r0, #0x40
	bne _08014614
	ldrb r0, [r7, #3]
	cmp r0, #0x40
	bne _08014614
	ldrb r1, [r7, #1]
	subs r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r0, #0x10
	ldrb r7, [r7, #2]
	adds r7, r7, r0
	mov r8, r7
_08014614:
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08014620: .4byte 0x030029C8

	thumb_func_start sub_8014624
sub_8014624: @ 0x08014624
	ldr r0, _080146A0 @ =0x03000184
	ldr r2, [r0]
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r1, [r3]
	movs r0, #0xc0
	lsls r0, r0, #7
	ands r0, r1
	strh r0, [r3]
	ldrh r1, [r2]
	ldr r0, _080146A4 @ =0x00009FFF
	ands r0, r1
	ldrh r1, [r3]
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _080146A8 @ =0x04000008
	ldrh r0, [r2, #2]
	strh r0, [r1]
	adds r1, #8
	ldrh r0, [r2, #4]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r2, #6]
	strh r0, [r1]
	subs r1, #8
	ldrh r0, [r2, #8]
	strh r0, [r1]
	adds r1, #0xa
	ldrh r0, [r2, #0xa]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r2, #0xc]
	strh r0, [r1]
	subs r1, #0xa
	ldrh r0, [r2, #0xe]
	strh r0, [r1]
	adds r1, #0xc
	ldrh r0, [r2, #0x10]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r2, #0x12]
	strh r0, [r1]
	subs r1, #0xc
	ldrh r0, [r2, #0x14]
	strh r0, [r1]
	adds r1, #0xe
	ldrh r0, [r2, #0x16]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r2, #0x18]
	strh r0, [r1]
	adds r1, #0x32
	ldrh r0, [r2, #0x1a]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r2, #0x1c]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r2, #0x1e]
	strh r0, [r1]
	bx lr
	.align 2, 0
_080146A0: .4byte 0x03000184
_080146A4: .4byte 0x00009FFF
_080146A8: .4byte 0x04000008

	thumb_func_start sub_80146AC
sub_80146AC: @ 0x080146AC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r4, _080146DC @ =_080BB640
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	ldr r0, _080146E0 @ =0x0203EC18
	ldrb r0, [r0]
	lsrs r4, r0, #2
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	bne _080146E4
	movs r0, #0
	bl pltt_getBuffer
	strh r4, [r0]
	b _080146F0
	.align 2, 0
_080146DC: .4byte _080BB640
_080146E0: .4byte 0x0203EC18
_080146E4:
	movs r0, #0
	bl pltt_getBuffer
	ldr r2, _08014804 @ =0x0000FFFF
	adds r1, r2, #0
	strh r1, [r0]
_080146F0:
	ldr r4, _08014808 @ =_0807CD48
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xe0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuFastSet
	ldr r4, _0801480C @ =_080B2068
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	movs r0, #1
	bl pltt_setDirtyFlag
	ldr r0, _08014810 @ =_0807D1E8
	adds r1, r5, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r3, _08014814 @ =0x80000150
	adds r1, r5, #0
	adds r2, r6, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08014818 @ =_080A97F8
	adds r1, r5, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	movs r1, #0x80
	lsls r1, r1, #3
	adds r2, r6, r1
	ldr r4, _0801481C @ =0x80000C00
	adds r1, r5, #0
	adds r3, r4, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08014820 @ =_080A9E2C
	adds r1, r5, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	movs r1, #0xe0
	lsls r1, r1, #5
	adds r2, r6, r1
	adds r1, r5, #0
	adds r3, r4, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08014824 @ =_080AA56C
	adds r1, r5, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	movs r1, #0xd0
	lsls r1, r1, #6
	adds r2, r6, r1
	adds r1, r5, #0
	adds r3, r4, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08014828 @ =_080BB758
	adds r1, r5, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	movs r1, #0xe8
	lsls r1, r1, #7
	adds r2, r6, r1
	ldr r3, _0801482C @ =0x80000600
	adds r1, r5, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08014830 @ =_080B29C4
	adds r1, r5, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08014834 @ =0x06017000
	ldr r4, _08014838 @ =0x80000200
	adds r1, r5, #0
	adds r3, r4, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _0801483C @ =_080B2EEC
	adds r1, r5, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08014840 @ =0x06017A00
	ldr r3, _08014844 @ =0x80000100
	adds r1, r5, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08014848 @ =_080B2C38
	adds r1, r5, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0801484C @ =0x06017C00
	adds r1, r5, #0
	adds r3, r4, #0
	bl dmaq_enqueue
	bl main_frameProc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08014804: .4byte 0x0000FFFF
_08014808: .4byte _0807CD48
_0801480C: .4byte _080B2068
_08014810: .4byte _0807D1E8
_08014814: .4byte 0x80000150
_08014818: .4byte _080A97F8
_0801481C: .4byte 0x80000C00
_08014820: .4byte _080A9E2C
_08014824: .4byte _080AA56C
_08014828: .4byte _080BB758
_0801482C: .4byte 0x80000600
_08014830: .4byte _080B29C4
_08014834: .4byte 0x06017000
_08014838: .4byte 0x80000200
_0801483C: .4byte _080B2EEC
_08014840: .4byte 0x06017A00
_08014844: .4byte 0x80000100
_08014848: .4byte _080B2C38
_0801484C: .4byte 0x06017C00

	thumb_func_start sub_8014850
sub_8014850: @ 0x08014850
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, _080148E0 @ =0x02010400
	ldr r1, _080148E4 @ =0x06008000
	adds r0, r4, #0
	bl sub_80146AC
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r0, #0
	bl map_setBufferDestination
	ldr r1, _080148E8 @ =0x06001000
	movs r0, #1
	bl map_setBufferDestination
	ldr r0, _080148EC @ =_0807DA94
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _080148F0 @ =0x06002000
	ldr r3, _080148F4 @ =0x80000400
	adds r1, r4, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _080148F8 @ =_0807DB98
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _080148FC @ =0x06003000
	ldr r3, _08014900 @ =0x80000280
	adds r1, r4, #0
	bl dmaq_enqueue
	bl main_frameProc
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _08014904 @ =0x01000140
	mov r0, sp
	bl CpuFastSet
	ldr r0, _08014908 @ =0x0203EC18
	ldrb r0, [r0]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08014910
	ldr r4, _0801490C @ =_080C6F2C
	movs r0, #0
	movs r1, #0
	movs r2, #5
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	b _08014924
	.align 2, 0
_080148E0: .4byte 0x02010400
_080148E4: .4byte 0x06008000
_080148E8: .4byte 0x06001000
_080148EC: .4byte _0807DA94
_080148F0: .4byte 0x06002000
_080148F4: .4byte 0x80000400
_080148F8: .4byte _0807DB98
_080148FC: .4byte 0x06003000
_08014900: .4byte 0x80000280
_08014904: .4byte 0x01000140
_08014908: .4byte 0x0203EC18
_0801490C: .4byte _080C6F2C
_08014910:
	ldr r4, _08014998 @ =_080C745C
	movs r0, #0
	movs r1, #0
	movs r2, #8
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
_08014924:
	movs r0, #1
	bl map_setBufferDirty
	bl main_frameProc
	ldr r4, _0801499C @ =_080C7374
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	movs r0, #2
	bl map_setBufferDirty
	bl main_frameProc
	ldrh r0, [r5, #2]
	movs r1, #0
	movs r0, #8
	strh r0, [r5, #2]
	ldrh r0, [r5, #8]
	ldr r0, _080149A0 @ =0x00000209
	strh r0, [r5, #8]
	ldrh r0, [r5, #0xe]
	ldr r0, _080149A4 @ =0x0000040A
	strh r0, [r5, #0xe]
	ldrh r0, [r5, #0x14]
	ldr r0, _080149A8 @ =0x0000060B
	strh r0, [r5, #0x14]
	ldrh r0, [r5]
	movs r0, #0xfa
	lsls r0, r0, #5
	strh r0, [r5]
	ldrh r0, [r5, #4]
	strh r1, [r5, #4]
	ldrh r0, [r5, #6]
	strh r1, [r5, #6]
	ldrh r0, [r5, #0xa]
	strh r1, [r5, #0xa]
	ldrh r0, [r5, #0xc]
	strh r1, [r5, #0xc]
	ldrh r0, [r5, #0x10]
	strh r1, [r5, #0x10]
	ldrh r0, [r5, #0x12]
	strh r1, [r5, #0x12]
	ldrh r0, [r5, #0x16]
	strh r1, [r5, #0x16]
	ldrh r0, [r5, #0x18]
	strh r1, [r5, #0x18]
	str r1, [r5, #0x3c]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014998: .4byte _080C745C
_0801499C: .4byte _080C7374
_080149A0: .4byte 0x00000209
_080149A4: .4byte 0x0000040A
_080149A8: .4byte 0x0000060B

	thumb_func_start sub_80149AC
sub_80149AC: @ 0x080149AC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r0, #0
	mov r8, r0
	mov sb, r0
	ldr r7, _08014A58 @ =0x03002E20
	ldr r1, _08014A5C @ =0x00000704
	adds r4, r7, r1
	ldr r1, _08014A60 @ =0x0202A400
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r4, #0
	bl frmheap_init
	ldr r5, _08014A64 @ =0x03000184
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r4, #0
	movs r1, #1
	bl frmheap_calloc
	str r0, [r5]
	adds r6, r0, #0
	bl oam_init
	mov r2, r8
	str r2, [r6, #0x2c]
	str r2, [r6, #0x40]
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r6, r1
	str r2, [r0]
	movs r4, #0x80
	lsls r4, r4, #0x13
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r1, _08014A68 @ =0x04000040
	movs r0, #0xf0
	strh r0, [r1]
	adds r1, #4
	movs r0, #0xa0
	strh r0, [r1]
	ldr r0, _08014A6C @ =0x04000048
	mov r1, r8
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r0, #1
	movs r1, #2
	rsbs r1, r1, #0
	bl irq_updateMask
	mov r2, r8
	str r2, [r7, #0xc]
	movs r0, #2
	ldr r1, _08014A70 @ =0x00010001
	bl irq_updateMask
	ldr r5, _08014A70 @ =0x00010001
	movs r0, #2
	adds r1, r5, #0
	bl irq_updateMask
	ldr r0, _08014A74 @ =0x0203EC18
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08014A7C
	mov r0, r8
	strh r0, [r4]
	ldr r0, _08014A78 @ =0x03000180
	ldr r0, [r0]
	str r0, [r7]
	ldrb r0, [r7, #8]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r7, #8]
	b _08014C72
	.align 2, 0
_08014A58: .4byte 0x03002E20
_08014A5C: .4byte 0x00000704
_08014A60: .4byte 0x0202A400
_08014A64: .4byte 0x03000184
_08014A68: .4byte 0x04000040
_08014A6C: .4byte 0x04000048
_08014A70: .4byte 0x00010001
_08014A74: .4byte 0x0203EC18
_08014A78: .4byte 0x03000180
_08014A7C:
	adds r0, r6, #0
	bl sub_8014850
	ldrh r0, [r6, #0x1a]
	ldr r0, _08014AC0 @ =0x00000844
	strh r0, [r6, #0x1a]
	ldrh r0, [r6, #0x1c]
	ldr r0, _08014AC4 @ =0x00001008
	strh r0, [r6, #0x1c]
	ldr r4, _08014AC8 @ =sub_8014624
	movs r0, #1
	movs r1, #2
	rsbs r1, r1, #0
	bl irq_updateMask
	str r4, [r7, #0xc]
	movs r0, #2
	adds r1, r5, #0
	bl irq_updateMask
	movs r0, #2
	adds r1, r5, #0
	bl irq_updateMask
_08014AAC:
	ldr r0, [r6, #0x2c]
	cmp r0, #7
	bls _08014AB4
	b _08014BB8
_08014AB4:
	lsls r0, r0, #2
	ldr r1, _08014ACC @ =_08014AD0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08014AC0: .4byte 0x00000844
_08014AC4: .4byte 0x00001008
_08014AC8: .4byte sub_8014624
_08014ACC: .4byte _08014AD0
_08014AD0: @ jump table
	.4byte _08014AF0 @ case 0
	.4byte _08014AFC @ case 1
	.4byte _08014B1C @ case 2
	.4byte _08014B30 @ case 3
	.4byte _08014B38 @ case 4
	.4byte _08014B44 @ case 5
	.4byte _08014B5A @ case 6
	.4byte _08014B74 @ case 7
_08014AF0:
	adds r0, r6, #0
	bl sub_8014C9C
	movs r0, #1
	str r0, [r6, #0x2c]
	b _08014BB8
_08014AFC:
	adds r0, r6, #0
	mov r1, sb
	bl sub_8014E1C
	cmp r0, #0
	beq _08014B0C
	movs r0, #4
	b _08014B68
_08014B0C:
	movs r0, #2
	str r0, [r6, #0x2c]
	movs r2, #0
	mov sb, r2
	ldr r0, [r6, #0x30]
	cmp r0, #7
	bne _08014BB8
	b _08014BC0
_08014B1C:
	bl oam_update
	bl main_frameProc
	adds r0, r6, #0
	bl sub_80150F0
	movs r0, #3
	str r0, [r6, #0x2c]
	b _08014BB8
_08014B30:
	adds r0, r6, #0
	bl sub_8015190
	b _08014BC0
_08014B38:
	adds r0, r6, #0
	bl sub_801572C
	movs r0, #5
	str r0, [r6, #0x2c]
	b _08014BB8
_08014B44:
	adds r0, r6, #0
	mov r1, sb
	bl sub_8015944
	cmp r0, #0
	beq _08014BA8
	movs r0, #6
	str r0, [r6, #0x2c]
	movs r0, #0
	mov sb, r0
	b _08014BB8
_08014B5A:
	adds r0, r6, #0
	mov r1, sb
	bl sub_801600C
	cmp r0, #0
	beq _08014B70
	movs r0, #7
_08014B68:
	str r0, [r6, #0x2c]
	movs r1, #0
	mov sb, r1
	b _08014BB8
_08014B70:
	movs r0, #5
	b _08014BB2
_08014B74:
	adds r0, r6, #0
	mov r1, sb
	bl sub_8016320
	cmp r0, #0
	beq _08014BB0
	ldr r0, [r6, #0x34]
	cmp r0, #0
	beq _08014BA4
	movs r0, #2
	str r0, [r6, #0x30]
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r0, r6, #0
	adds r0, #0x5c
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r6, #0x38]
	b _08014BA8
_08014BA4:
	movs r0, #3
	str r0, [r6, #0x30]
_08014BA8:
	movs r0, #1
	str r0, [r6, #0x2c]
	mov sb, r0
	b _08014BB8
_08014BB0:
	movs r0, #6
_08014BB2:
	str r0, [r6, #0x2c]
	movs r2, #1
	mov sb, r2
_08014BB8:
	mov r0, r8
	cmp r0, #0
	bne _08014BC0
	b _08014AAC
_08014BC0:
	ldr r0, _08014BDC @ =0x03000180
	ldr r1, [r0]
	ldr r0, _08014BE0 @ =title_main
	cmp r1, r0
	beq _08014BD0
	ldr r0, _08014BE4 @ =gbm_main
	cmp r1, r0
	bne _08014BEC
_08014BD0:
	movs r0, #0
	bl pltt_getBuffer
	ldr r2, _08014BE8 @ =0x0000FFFF
	adds r1, r2, #0
	b _08014BF4
	.align 2, 0
_08014BDC: .4byte 0x03000180
_08014BE0: .4byte title_main
_08014BE4: .4byte gbm_main
_08014BE8: .4byte 0x0000FFFF
_08014BEC:
	movs r0, #0
	bl pltt_getBuffer
	movs r1, #0
_08014BF4:
	strh r1, [r0]
	movs r0, #1
	bl pltt_setDirtyFlag
	ldr r0, _08014C80 @ =trns_initDefaultOutTransition
	ldr r4, _08014C84 @ =0x03004F70
	str r0, [r4, #4]
	ldr r0, _08014C88 @ =trns_applyDefaultOutTransition
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #8]
	movs r0, #1
	strb r0, [r4, #0xe]
	bl trns_start
	bl main_frameProc
	ldrb r1, [r4, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08014C30
	movs r5, #2
_08014C22:
	bl main_frameProc
	ldrb r1, [r4, #0xc]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08014C22
_08014C30:
	ldrh r0, [r6]
	movs r5, #0
	strh r5, [r6]
	bl main_frameProc
	ldr r4, _08014C8C @ =0x03002E20
	movs r0, #1
	movs r1, #2
	rsbs r1, r1, #0
	bl irq_updateMask
	str r5, [r4, #0xc]
	movs r0, #2
	ldr r1, _08014C90 @ =0x00010001
	bl irq_updateMask
	movs r1, #7
	rsbs r1, r1, #0
	movs r0, #1
	bl irq_updateMask
	ldr r1, _08014C94 @ =main_dummyIrqHandler
	movs r0, #1
	bl irq_setHandler
	ldr r0, _08014C98 @ =0x03000180
	ldr r0, [r0]
	str r0, [r4]
	ldrb r0, [r4, #8]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r4, #8]
_08014C72:
	movs r0, #1
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08014C80: .4byte trns_initDefaultOutTransition
_08014C84: .4byte 0x03004F70
_08014C88: .4byte trns_applyDefaultOutTransition
_08014C8C: .4byte 0x03002E20
_08014C90: .4byte 0x00010001
_08014C94: .4byte main_dummyIrqHandler
_08014C98: .4byte 0x03000180

	thumb_func_start sub_8014C9C
sub_8014C9C: @ 0x08014C9C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08014CB8 @ =0x02020400
	adds r5, r0, #0
	adds r5, #8
	ldr r0, _08014CBC @ =0x0203EC18
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08014CC0
	movs r0, #5
	str r0, [r4, #0x30]
	b _08014D2E
	.align 2, 0
_08014CB8: .4byte 0x02020400
_08014CBC: .4byte 0x0203EC18
_08014CC0:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08014CCE
	movs r0, #8
	str r0, [r4, #0x30]
	b _08014D2E
_08014CCE:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08014CE0
	ldrb r0, [r5, #9]
	bl track_isRetroTrack
	cmp r0, #0
	beq _08014CE6
_08014CE0:
	movs r0, #3
	str r0, [r4, #0x30]
	b _08014D2E
_08014CE6:
	ldr r0, _08014D18 @ =0x03002E20
	ldr r1, _08014D1C @ =0x00000CAC
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	blt _08014D20
	ldrb r0, [r5, #9]
	bl sub_805CE3C
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	movs r5, #1
	rsbs r5, r5, #0
	cmp r1, r5
	bne _08014D28
	bl sub_805DC60
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, r5
	bne _08014D28
	movs r0, #1
	str r0, [r4, #0x30]
	b _08014D2E
	.align 2, 0
_08014D18: .4byte 0x03002E20
_08014D1C: .4byte 0x00000CAC
_08014D20:
	bl sub_805DCC8
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
_08014D28:
	movs r0, #0
	str r0, [r4, #0x30]
	str r1, [r4, #0x38]
_08014D2E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8014D34
sub_8014D34: @ 0x08014D34
	push {r4, lr}
	sub sp, #0x10
	ldr r0, [r0, #0x30]
	cmp r0, #8
	bhi _08014E08
	lsls r0, r0, #2
	ldr r1, _08014D48 @ =_08014D4C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08014D48: .4byte _08014D4C
_08014D4C: @ jump table
	.4byte _08014D70 @ case 0
	.4byte _08014E08 @ case 1
	.4byte _08014D70 @ case 2
	.4byte _08014D94 @ case 3
	.4byte _08014E08 @ case 4
	.4byte _08014E08 @ case 5
	.4byte _08014DB8 @ case 6
	.4byte _08014DF0 @ case 7
	.4byte _08014D70 @ case 8
_08014D70:
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _08014D8C @ =0x01000140
	mov r0, sp
	bl CpuFastSet
	ldr r4, _08014D90 @ =_080C7034
	b _08014DD2
	.align 2, 0
_08014D8C: .4byte 0x01000140
_08014D90: .4byte _080C7034
_08014D94:
	movs r0, #0
	str r0, [sp, #4]
	add r4, sp, #4
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _08014DB0 @ =0x01000140
	adds r0, r4, #0
	bl CpuFastSet
	ldr r4, _08014DB4 @ =_080C7194
	b _08014DD2
	.align 2, 0
_08014DB0: .4byte 0x01000140
_08014DB4: .4byte _080C7194
_08014DB8:
	movs r0, #0
	str r0, [sp, #8]
	add r4, sp, #8
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _08014DE8 @ =0x01000140
	adds r0, r4, #0
	bl CpuFastSet
	ldr r4, _08014DEC @ =_080C74DC
_08014DD2:
	movs r0, #0
	movs r1, #0
	movs r2, #6
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	b _08014E08
	.align 2, 0
_08014DE8: .4byte 0x01000140
_08014DEC: .4byte _080C74DC
_08014DF0:
	movs r0, #0
	str r0, [sp, #0xc]
	add r4, sp, #0xc
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _08014E18 @ =0x01000140
	adds r0, r4, #0
	bl CpuFastSet
_08014E08:
	movs r0, #1
	bl map_setBufferDirty
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08014E18: .4byte 0x01000140

	thumb_func_start sub_8014E1C
sub_8014E1C: @ 0x08014E1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	str r1, [sp, #8]
	movs r0, #0
	mov sl, r0
	mov r8, r0
	ldr r0, [r4, #0x30]
	movs r1, #1
	mov sb, r1
	cmp r0, #5
	beq _08014E40
	movs r2, #0
	mov sb, r2
_08014E40:
	bl oam_update
	bl main_frameProc
	ldr r0, [r4, #0x40]
	adds r0, #1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x3c]
	adds r0, #1
	str r0, [r4, #0x3c]
	asrs r1, r0, #2
	ldrh r2, [r4, #0x10]
	strh r1, [r4, #0x10]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	ldrh r1, [r4, #0x12]
	strh r0, [r4, #0x12]
	mov r3, sl
	cmp r3, #4
	bls _08014E6A
	b _08014FE6
_08014E6A:
	lsls r0, r3, #2
	ldr r1, _08014E74 @ =_08014E78
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08014E74: .4byte _08014E78
_08014E78: @ jump table
	.4byte _08014E8C @ case 0
	.4byte _08014ED2 @ case 1
	.4byte _08014EF0 @ case 2
	.4byte _08014F38 @ case 3
	.4byte _08014FCA @ case 4
_08014E8C:
	adds r0, r4, #0
	bl sub_8014850
	adds r0, r4, #0
	bl sub_8014D34
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _08014ECC
	ldr r0, _08014EBC @ =trns_initDefaultInTransition
	ldr r1, _08014EC0 @ =0x03004F70
	str r0, [r1, #4]
	ldr r0, _08014EC4 @ =trns_applyDefaultInTransition
	str r0, [r1]
	ldr r0, _08014EC8 @ =trns_finishDefaultInTransition
	str r0, [r1, #8]
	movs r0, #1
	strb r0, [r1, #0xe]
	bl trns_start
	movs r1, #1
	mov sl, r1
	b _08014FE6
	.align 2, 0
_08014EBC: .4byte trns_initDefaultInTransition
_08014EC0: .4byte 0x03004F70
_08014EC4: .4byte trns_applyDefaultInTransition
_08014EC8: .4byte trns_finishDefaultInTransition
_08014ECC:
	movs r2, #2
	mov sl, r2
	b _08014FE6
_08014ED2:
	ldr r0, _08014EEC @ =0x03004F70
	ldrb r1, [r0, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08014EE0
	b _08014FE6
_08014EE0:
	ldr r0, [r4, #0x30]
	cmp r0, #1
	beq _08014F2A
	cmp r0, #5
	beq _08014F2A
	b _08014FB0
	.align 2, 0
_08014EEC: .4byte 0x03004F70
_08014EF0:
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #8
	bgt _08014F10
	ldrh r0, [r4, #0x1a]
	movs r0, #0xff
	strh r0, [r4, #0x1a]
	lsls r0, r1, #4
	rsbs r0, r0, #0
	cmp r0, #0
	bge _08014F0A
	adds r0, #7
_08014F0A:
	asrs r0, r0, #3
	adds r0, #0x10
	b _08014FE2
_08014F10:
	ldrh r0, [r4, #0x1a]
	ldr r0, _08014F30 @ =0x00000844
	strh r0, [r4, #0x1a]
	ldrh r0, [r4, #0x1c]
	ldr r0, _08014F34 @ =0x00001008
	strh r0, [r4, #0x1c]
	movs r2, #0
	mov r8, r2
	ldr r0, [r4, #0x30]
	cmp r0, #1
	beq _08014F2A
	cmp r0, #5
	bne _08014FB0
_08014F2A:
	movs r3, #3
	mov sl, r3
	b _08014FE6
	.align 2, 0
_08014F30: .4byte 0x00000844
_08014F34: .4byte 0x00001008
_08014F38:
	movs r0, #0x30
	bl main_checkKeysTriggered
	cmp r0, #0
	beq _08014F52
	movs r0, #0x8d
	bl m4aSongNumStart
	movs r0, #1
	mov r1, sb
	subs r1, r0, r1
	mov sb, r1
	b _08014FE6
_08014F52:
	movs r0, #1
	bl main_checkKeysTriggered
	cmp r0, #0
	beq _08014FB4
	movs r0, #0x8e
	bl m4aSongNumStart
	mov r2, sb
	cmp r2, #0
	bne _08014F86
	ldr r0, _08014F7C @ =0x0203EC18
	ldrb r0, [r0]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08014F80
	movs r3, #4
	mov sl, r3
	b _08014FE6
	.align 2, 0
_08014F7C: .4byte 0x0203EC18
_08014F80:
	movs r0, #6
	str r0, [r4, #0x30]
	b _08014FAA
_08014F86:
	ldr r3, _08014F9C @ =0x0203EC18
	ldrb r2, [r3]
	lsrs r0, r2, #2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08014FA0
	movs r0, #3
	str r0, [r4, #0x30]
	b _08014FAA
	.align 2, 0
_08014F9C: .4byte 0x0203EC18
_08014FA0:
	movs r0, #7
	str r0, [r4, #0x30]
	movs r0, #0xfb
	ands r0, r2
	strb r0, [r3]
_08014FAA:
	adds r0, r4, #0
	bl sub_8014D34
_08014FB0:
	movs r0, #0
	b _080150E0
_08014FB4:
	movs r0, #2
	bl main_checkKeysTriggered
	cmp r0, #0
	beq _08014FE6
	movs r0, #0x90
	bl m4aSongNumStart
	movs r0, #1
	mov sb, r0
	b _08014FE6
_08014FCA:
	movs r1, #1
	add r8, r1
	mov r2, r8
	cmp r2, #8
	ble _08014FD8
	movs r0, #1
	b _080150E0
_08014FD8:
	ldrh r0, [r4, #0x1a]
	movs r0, #0xff
	strh r0, [r4, #0x1a]
	mov r3, r8
	lsls r0, r3, #1
_08014FE2:
	ldrh r1, [r4, #0x1e]
	strh r0, [r4, #0x1e]
_08014FE6:
	ldr r0, [r4, #0x30]
	cmp r0, #1
	beq _08014FF2
	cmp r0, #5
	beq _08014FF2
	b _08014E40
_08014FF2:
	ldr r0, _08015030 @ =_080C9488
	ldr r7, _08015034 @ =_080DA2E4
	movs r5, #0
	str r5, [sp]
	str r5, [sp, #4]
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	ldr r0, _08015038 @ =_080C9490
	ldr r6, _0801503C @ =_080DA2E8
	str r5, [sp]
	str r5, [sp, #4]
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	ldr r1, [r4, #0x40]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0x13
	bgt _08015044
	ldr r0, _08015040 @ =_080C9498
	adds r1, r6, #0
	mov r2, sb
	cmp r2, #0
	bne _08015058
	b _08015056
	.align 2, 0
_08015030: .4byte _080C9488
_08015034: .4byte _080DA2E4
_08015038: .4byte _080C9490
_0801503C: .4byte _080DA2E8
_08015040: .4byte _080C9498
_08015044:
	movs r2, #0x20
	ands r2, r1
	cmp r2, #0
	beq _0801506C
	ldr r0, _08015068 @ =_080C94A8
	adds r1, r6, #0
	mov r3, sb
	cmp r3, #0
	bne _08015058
_08015056:
	adds r1, r7, #0
_08015058:
	str r5, [sp]
	str r5, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	b _08015084
	.align 2, 0
_08015068: .4byte _080C94A8
_0801506C:
	ldr r0, _080150A8 @ =_080C94B8
	adds r1, r6, #0
	mov r3, sb
	cmp r3, #0
	bne _08015078
	adds r1, r7, #0
_08015078:
	str r2, [sp]
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_08015084:
	ldr r0, [r4, #0x30]
	cmp r0, #1
	bne _080150B8
	ldr r1, [r4, #0x40]
	movs r0, #0x2f
	ands r1, r0
	ldr r2, _080150AC @ =_080C9328
	cmp r1, #0xf
	bgt _08015098
	ldr r2, _080150B0 @ =_080C9308
_08015098:
	ldr r1, _080150B4 @ =_080DA2EC
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r2, #0
	movs r2, #0
	b _080150CE
	.align 2, 0
_080150A8: .4byte _080C94B8
_080150AC: .4byte _080C9328
_080150B0: .4byte _080C9308
_080150B4: .4byte _080DA2EC
_080150B8:
	ldr r0, [r4, #0x40]
	movs r1, #0x2f
	ands r0, r1
	cmp r0, #0xf
	ble _080150C4
	b _08014E40
_080150C4:
	ldr r0, _080150D8 @ =_080C94C8
	ldr r1, _080150DC @ =_080DA2F0
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
_080150CE:
	movs r3, #0
	bl oam_renderCellData
	b _08014E40
	.align 2, 0
_080150D8: .4byte _080C94C8
_080150DC: .4byte _080DA2F0
_080150E0:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80150F0
sub_80150F0: @ 0x080150F0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x30]
	cmp r0, #7
	bhi _08015144
	lsls r0, r0, #2
	ldr r1, _08015104 @ =_08015108
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08015104: .4byte _08015108
_08015108: @ jump table
	.4byte _08015128 @ case 0
	.4byte _08015144 @ case 1
	.4byte _08015128 @ case 2
	.4byte _08015144 @ case 3
	.4byte _08015144 @ case 4
	.4byte _08015144 @ case 5
	.4byte _08015134 @ case 6
	.4byte _08015144 @ case 7
_08015128:
	ldr r0, [r5, #0x38]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_805DB64
	b _08015144
_08015134:
	movs r4, #0x27
_08015136:
	bl main_frameProc
	subs r4, #1
	cmp r4, #0
	bge _08015136
	bl sub_805D740
_08015144:
	ldr r0, [r5, #0x30]
	cmp r0, #6
	bne _0801514E
	bl sub_805D30C
_0801514E:
	bl sub_805DA68
	bl save_getSavePointer_805D9B0
	movs r1, #0xbf
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrh r2, [r0]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r3, #0
	orrs r1, r2
	strh r1, [r0]
	bl sub_805D12C
	cmp r0, #0
	bne _08015174
	movs r0, #9
	str r0, [r5, #0x30]
_08015174:
	bl save_getSavePointer_805D9B0
	movs r1, #0xbf
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrh r2, [r0]
	ldr r1, _0801518C @ =0x00007FFF
	ands r1, r2
	strh r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801518C: .4byte 0x00007FFF

	thumb_func_start sub_8015190
sub_8015190: @ 0x08015190
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	bl main_frameProc
	movs r0, #0
	str r0, [sp]
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _080151C0 @ =0x01000140
	mov r0, sp
	bl CpuFastSet
	ldr r0, [r5, #0x30]
	cmp r0, #6
	beq _080151CE
	cmp r0, #6
	bgt _080151C4
	cmp r0, #3
	beq _080151D8
	b _080151FC
	.align 2, 0
_080151C0: .4byte 0x01000140
_080151C4:
	cmp r0, #7
	beq _08015210
	cmp r0, #9
	beq _080151E0
	b _080151FC
_080151CE:
	ldr r4, _080151D4 @ =_080C75A8
	b _080151E2
	.align 2, 0
_080151D4: .4byte _080C75A8
_080151D8:
	ldr r4, _080151DC @ =_080C727C
	b _080151E2
	.align 2, 0
_080151DC: .4byte _080C727C
_080151E0:
	ldr r4, _080151F8 @ =_080C72F4
_080151E2:
	movs r0, #0
	movs r1, #0
	movs r2, #8
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	b _08015210
	.align 2, 0
_080151F8: .4byte _080C72F4
_080151FC:
	ldr r4, _08015254 @ =_080C711C
	movs r0, #0
	movs r1, #0
	movs r2, #8
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
_08015210:
	movs r0, #1
	bl map_setBufferDirty
	ldr r2, _08015258 @ =0x0203EC18
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	movs r4, #0x3b
_08015222:
	bl oam_update
	bl main_frameProc
	ldr r0, [r5, #0x40]
	adds r0, #1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x3c]
	adds r0, #1
	str r0, [r5, #0x3c]
	asrs r1, r0, #2
	ldrh r2, [r5, #0x10]
	strh r1, [r5, #0x10]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	ldrh r1, [r5, #0x12]
	strh r0, [r5, #0x12]
	subs r4, #1
	cmp r4, #0
	bge _08015222
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08015254: .4byte _080C711C
_08015258: .4byte 0x0203EC18

	thumb_func_start sub_0801525C
sub_0801525C: @ 0x0801525C
	ldr r0, _08015264 @ =0x03000184
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08015264: .4byte 0x03000184

	thumb_func_start sub_8015268
sub_8015268: @ 0x08015268
	cmp r0, #0
	beq _0801527C
	ldr r0, _08015278 @ =0x0203EC18
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	b _08015286
	.align 2, 0
_08015278: .4byte 0x0203EC18
_0801527C:
	ldr r2, _08015288 @ =0x0203EC18
	ldrb r1, [r2]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
_08015286:
	bx lr
	.align 2, 0
_08015288: .4byte 0x0203EC18

	thumb_func_start sub_801528C
sub_801528C: @ 0x0801528C
	cmp r0, #0
	beq _080152A0
	ldr r0, _0801529C @ =0x0203EC18
	ldrb r1, [r0]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0]
	b _080152AA
	.align 2, 0
_0801529C: .4byte 0x0203EC18
_080152A0:
	ldr r2, _080152AC @ =0x0203EC18
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2]
_080152AA:
	bx lr
	.align 2, 0
_080152AC: .4byte 0x0203EC18

	thumb_func_start sub_80152B0
sub_80152B0: @ 0x080152B0
	cmp r0, #0
	beq _080152C4
	ldr r0, _080152C0 @ =0x0203EC18
	ldrb r1, [r0]
	movs r2, #4
	orrs r1, r2
	strb r1, [r0]
	b _080152CE
	.align 2, 0
_080152C0: .4byte 0x0203EC18
_080152C4:
	ldr r2, _080152D0 @ =0x0203EC18
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
_080152CE:
	bx lr
	.align 2, 0
_080152D0: .4byte 0x0203EC18

	thumb_func_start sub_80152D4
sub_80152D4: @ 0x080152D4
	cmp r0, #0
	beq _080152E8
	ldr r0, _080152E4 @ =0x0203EC18
	ldrb r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strb r1, [r0]
	b _080152F2
	.align 2, 0
_080152E4: .4byte 0x0203EC18
_080152E8:
	ldr r2, _080152F4 @ =0x0203EC18
	ldrb r1, [r2]
	movs r0, #0xef
	ands r0, r1
	strb r0, [r2]
_080152F2:
	bx lr
	.align 2, 0
_080152F4: .4byte 0x0203EC18

	thumb_func_start sub_80152F8
sub_80152F8: @ 0x080152F8
	cmp r0, #0
	beq _0801530C
	ldr r0, _08015308 @ =0x0203EC18
	ldrb r1, [r0]
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	b _08015316
	.align 2, 0
_08015308: .4byte 0x0203EC18
_0801530C:
	ldr r2, _08015318 @ =0x0203EC18
	ldrb r1, [r2]
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r2]
_08015316:
	bx lr
	.align 2, 0
_08015318: .4byte 0x0203EC18

	thumb_func_start sub_801531C
sub_801531C: @ 0x0801531C
	ldr r0, _0801532C @ =0x0203EC18
	ldrb r0, [r0]
	movs r1, #3
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_0801532C: .4byte 0x0203EC18

	thumb_func_start sub_8015330
sub_8015330: @ 0x08015330
	ldr r1, _08015338 @ =0x03000180
	str r0, [r1]
	bx lr
	.align 2, 0
_08015338: .4byte 0x03000180

	thumb_func_start sub_0801533C
sub_0801533C: @ 0x0801533C
	ldr r0, _08015348 @ =0x0203EC18
	ldrb r0, [r0]
	lsrs r0, r0, #2
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_08015348: .4byte 0x0203EC18

	thumb_func_start sub_801534C
sub_801534C: @ 0x0801534C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080154FC @ =_0807D1E8
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08015500 @ =0x80000600
	mov sb, r1
	adds r1, r4, #0
	adds r2, r5, #0
	mov r3, sb
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08015504 @ =_080A97F8
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	movs r3, #0x80
	lsls r3, r3, #5
	adds r2, r5, r3
	ldr r6, _08015508 @ =0x80000C00
	adds r1, r4, #0
	adds r3, r6, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _0801550C @ =_080A9E2C
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r2, r5, r1
	adds r1, r4, #0
	adds r3, r6, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08015510 @ =_080AA56C
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	movs r3, #0x80
	lsls r3, r3, #7
	adds r2, r5, r3
	adds r1, r4, #0
	adds r3, r6, #0
	bl dmaq_enqueue
	bl main_frameProc
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08015514 @ =_080ACAFC
	movs r3, #0xb0
	lsls r3, r3, #7
	adds r2, r5, r3
	mov r3, sb
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08015518 @ =_080ABEFC
	movs r3, #0xc8
	lsls r3, r3, #7
	adds r2, r5, r3
	ldr r3, _0801551C @ =0x80000400
	mov r8, r3
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08015520 @ =_08063834
	movs r3, #0xd8
	lsls r3, r3, #7
	adds r2, r5, r3
	ldr r6, _08015524 @ =0x80000200
	adds r3, r6, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08015528 @ =_080B3718
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r1, _0801552C @ =0x00007340
	adds r5, r5, r1
	ldr r3, _08015530 @ =0x80000060
	adds r1, r4, #0
	adds r2, r5, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08015534 @ =_080B25A0
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08015538 @ =0x06015C00
	adds r1, r4, #0
	mov r3, r8
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _0801553C @ =_080B2770
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08015540 @ =0x06016400
	adds r1, r4, #0
	adds r3, r6, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08015544 @ =_080B2858
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08015548 @ =0x06016C00
	adds r1, r4, #0
	adds r3, r6, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _0801554C @ =_080B29C4
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08015550 @ =0x06017000
	adds r1, r4, #0
	adds r3, r6, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08015554 @ =_080B2BC8
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08015558 @ =0x06017800
	ldr r3, _0801555C @ =0x80000100
	adds r1, r4, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08015560 @ =_080B2C38
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08015564 @ =0x06017C00
	adds r1, r4, #0
	adds r3, r6, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08015568 @ =_080B3014
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0801556C @ =0x06015000
	adds r1, r4, #0
	mov r3, sb
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08015570 @ =_080B2F9C
	ldr r1, _08015574 @ =0x06014C00
	bl LZ77UnCompVram
	bl main_frameProc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080154FC: .4byte _0807D1E8
_08015500: .4byte 0x80000600
_08015504: .4byte _080A97F8
_08015508: .4byte 0x80000C00
_0801550C: .4byte _080A9E2C
_08015510: .4byte _080AA56C
_08015514: .4byte _080ACAFC
_08015518: .4byte _080ABEFC
_0801551C: .4byte 0x80000400
_08015520: .4byte _08063834
_08015524: .4byte 0x80000200
_08015528: .4byte _080B3718
_0801552C: .4byte 0x00007340
_08015530: .4byte 0x80000060
_08015534: .4byte _080B25A0
_08015538: .4byte 0x06015C00
_0801553C: .4byte _080B2770
_08015540: .4byte 0x06016400
_08015544: .4byte _080B2858
_08015548: .4byte 0x06016C00
_0801554C: .4byte _080B29C4
_08015550: .4byte 0x06017000
_08015554: .4byte _080B2BC8
_08015558: .4byte 0x06017800
_0801555C: .4byte 0x80000100
_08015560: .4byte _080B2C38
_08015564: .4byte 0x06017C00
_08015568: .4byte _080B3014
_0801556C: .4byte 0x06015000
_08015570: .4byte _080B2F9C
_08015574: .4byte 0x06014C00

	thumb_func_start sub_8015578
sub_8015578: @ 0x08015578
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldr r4, _080156D8 @ =_080B2270
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0x80
	bl CpuFastSet
	ldr r4, _080156DC @ =_0807CD48
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xe0
	adds r0, r4, #0
	movs r2, #0x10
	bl CpuFastSet
	ldr r4, _080156E0 @ =_080AAD10
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r0, #0
	bl pltt_getBuffer
	movs r1, #0
	strh r1, [r0]
	ldr r4, _080156E4 @ =_080B2068
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	movs r0, #1
	bl pltt_setDirtyFlag
	ldr r0, _080156E8 @ =0x02010400
	ldr r1, _080156EC @ =0x06008000
	bl sub_801534C
	movs r0, #0
	ldr r1, _080156F0 @ =gTrackDefTable
	mov sb, r1
_080155EE:
	movs r5, #0
	lsls r7, r0, #2
	adds r1, r0, #1
	mov r8, r1
	lsls r0, r0, #3
	adds r0, r0, r7
	lsls r4, r0, #8
_080155FC:
	adds r0, r7, r5
	bl track_getMKSCTrack
	lsls r0, r0, #2
	add r0, sb
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	ldr r1, _080156F4 @ =0x02025400
	adds r1, r4, r1
	bl LZ77UnCompWram
	movs r0, #0xc0
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r5, #1
	cmp r5, #3
	ble _080155FC
	bl main_frameProc
	mov r0, r8
	cmp r0, #4
	ble _080155EE
	movs r5, #0
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r0, #0
	bl map_setBufferDestination
	ldr r1, _080156F8 @ =0x06001000
	movs r0, #1
	bl map_setBufferDestination
	ldr r0, _080156FC @ =_0807DA94
	ldr r4, _080156E8 @ =0x02010400
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08015700 @ =0x06002000
	ldr r3, _08015704 @ =0x80000400
	adds r1, r4, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08015708 @ =_0807DB98
	adds r1, r4, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0801570C @ =0x06003000
	ldr r3, _08015710 @ =0x80000280
	adds r1, r4, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r0, _08015714 @ =_080C78AC
	ldr r4, _08015718 @ =0x02004400
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _0801571C @ =_080C7AA0
	movs r1, #0x80
	lsls r1, r1, #7
	adds r4, r4, r1
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldrh r0, [r6, #8]
	ldr r0, _08015720 @ =0x00000209
	strh r0, [r6, #8]
	ldrh r0, [r6, #0xe]
	ldr r0, _08015724 @ =0x0000040A
	strh r0, [r6, #0xe]
	ldrh r0, [r6, #0x14]
	ldr r0, _08015728 @ =0x0000060B
	strh r0, [r6, #0x14]
	ldrh r0, [r6]
	movs r0, #0xfa
	lsls r0, r0, #5
	strh r0, [r6]
	ldrh r0, [r6, #0x1a]
	movs r0, #0xff
	strh r0, [r6, #0x1a]
	ldrh r0, [r6, #0x1e]
	movs r0, #0x10
	strh r0, [r6, #0x1e]
	ldrh r0, [r6, #0xa]
	strh r5, [r6, #0xa]
	ldrh r0, [r6, #0xc]
	strh r5, [r6, #0xc]
	ldrh r0, [r6, #0x10]
	strh r5, [r6, #0x10]
	ldrh r0, [r6, #0x12]
	strh r5, [r6, #0x12]
	ldrh r0, [r6, #0x16]
	strh r5, [r6, #0x16]
	ldrh r0, [r6, #0x18]
	strh r5, [r6, #0x18]
	str r5, [r6, #0x3c]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080156D8: .4byte _080B2270
_080156DC: .4byte _0807CD48
_080156E0: .4byte _080AAD10
_080156E4: .4byte _080B2068
_080156E8: .4byte 0x02010400
_080156EC: .4byte 0x06008000
_080156F0: .4byte gTrackDefTable
_080156F4: .4byte 0x02025400
_080156F8: .4byte 0x06001000
_080156FC: .4byte _0807DA94
_08015700: .4byte 0x06002000
_08015704: .4byte 0x80000400
_08015708: .4byte _0807DB98
_0801570C: .4byte 0x06003000
_08015710: .4byte 0x80000280
_08015714: .4byte _080C78AC
_08015718: .4byte 0x02004400
_0801571C: .4byte _080C7AA0
_08015720: .4byte 0x00000209
_08015724: .4byte 0x0000040A
_08015728: .4byte 0x0000060B

	thumb_func_start sub_801572C
sub_801572C: @ 0x0801572C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r0, [sp, #0x14]
	movs r7, #0
	adds r0, #0x60
	str r0, [sp, #0x18]
	ldr r6, [sp, #0x14]
	adds r6, #0x5c
_08015744:
	lsls r4, r7, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_805DF18
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r8, r0
	adds r0, r4, #0
	bl sub_805DE90
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	adds r0, r4, #0
	bl sub_805DEB8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	bl save_getSavePointer_805D9B0
	ldr r1, _08015784 @ =0x00000BE8
	adds r0, r0, r1
	adds r2, r7, #2
	movs r1, #1
	lsls r1, r2
	ldr r5, [r0]
	ands r5, r1
	movs r4, #0
	b _0801578A
	.align 2, 0
_08015784: .4byte 0x00000BE8
_08015788:
	adds r4, #1
_0801578A:
	cmp r4, #0x13
	bgt _08015798
	adds r0, r4, #0
	bl track_getMKSCTrack
	cmp r0, r8
	bne _08015788
_08015798:
	str r7, [r6]
	str r4, [r6, #4]
	mov r2, sl
	strb r2, [r6, #8]
	str r5, [r6, #0xc]
	mov r3, sb
	strh r3, [r6, #0x10]
	adds r6, #0x14
	adds r7, #1
	cmp r7, #9
	ble _08015744
	movs r7, #0
	ldr r5, _08015830 @ =0x02020400
	mov sl, r5
	ldr r6, [sp, #0x18]
	mov r8, r6
_080157B8:
	adds r4, r7, #1
	mov sb, r4
	cmp r4, #9
	bgt _0801581E
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #2
	mov r7, r8
	adds r7, r7, r0
	mov ip, r7
	ldr r1, [sp, #0x14]
	adds r0, r1, r0
	str r0, [sp, #0x1c]
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r2, r0, r1
	mov r5, r8
	adds r3, r0, r5
_080157DE:
	mov r6, ip
	ldr r1, [r6]
	ldr r0, [r3]
	cmp r1, r0
	ble _08015814
	mov r1, sp
	ldr r0, [sp, #0x1c]
	adds r0, #0x5c
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldm r0!, {r5, r7}
	stm r1!, {r5, r7}
	ldr r1, [sp, #0x1c]
	adds r1, #0x5c
	adds r0, r2, #0
	adds r0, #0x5c
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldm r0!, {r6, r7}
	stm r1!, {r6, r7}
	adds r1, r2, #0
	adds r1, #0x5c
	mov r0, sp
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
_08015814:
	adds r2, #0x14
	adds r3, #0x14
	adds r4, #1
	cmp r4, #9
	ble _080157DE
_0801581E:
	mov r7, sb
	cmp r7, #8
	ble _080157B8
	mov r6, sl
	adds r6, #8
	ldrb r5, [r6, #9]
	movs r4, #0
	b _08015836
	.align 2, 0
_08015830: .4byte 0x02020400
_08015834:
	adds r4, #1
_08015836:
	cmp r4, #0x13
	bgt _08015844
	adds r0, r4, #0
	bl track_getMKSCTrack
	cmp r0, r5
	bne _08015834
_08015844:
	ldr r7, [sp, #0x14]
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r7, r1
	str r4, [r0]
	ldrb r1, [r6]
	movs r2, #0x96
	lsls r2, r2, #1
	adds r0, r7, r2
	strb r1, [r0]
	ldrh r1, [r6, #2]
	movs r3, #0x9a
	lsls r3, r3, #1
	adds r0, r7, r3
	strh r1, [r0]
	ldr r0, [sp, #0x14]
	bl sub_8015578
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8015878
sub_8015878: @ 0x08015878
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r4, _08015920 @ =_080C761C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	ldr r4, _08015924 @ =_080C78AC
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	movs r0, #3
	bl map_setBufferDirty
	ldr r0, _08015928 @ =0x06005800
	mov r8, r0
	movs r7, #0
	movs r5, #9
_080158B8:
	adds r0, r6, #0
	adds r0, #0x60
	adds r0, r0, r7
	ldr r0, [r0]
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #8
	ldr r0, _0801592C @ =0x02025400
	adds r4, r4, r0
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	mov r2, r8
	ldr r3, _08015930 @ =0x80000180
	bl dmaq_enqueue
	movs r0, #0xc0
	lsls r0, r0, #2
	add r8, r0
	adds r7, #0x14
	subs r5, #1
	cmp r5, #0
	bge _080158B8
	movs r4, #0
	str r4, [sp]
	ldr r5, _08015934 @ =0x02010400
	ldr r2, _08015938 @ =0x01000008
	mov r0, sp
	adds r1, r5, #0
	bl CpuFastSet
	bl dmaq_getVBlankDmaQueue
	ldr r2, _0801593C @ =0x06004000
	ldr r3, _08015940 @ =0x80000010
	adds r1, r5, #0
	bl dmaq_enqueue
	ldrh r0, [r6, #2]
	movs r0, #4
	strh r0, [r6, #2]
	ldrh r0, [r6, #4]
	strh r4, [r6, #4]
	ldrh r0, [r6, #6]
	strh r4, [r6, #6]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015920: .4byte _080C761C
_08015924: .4byte _080C78AC
_08015928: .4byte 0x06005800
_0801592C: .4byte 0x02025400
_08015930: .4byte 0x80000180
_08015934: .4byte 0x02010400
_08015938: .4byte 0x01000008
_0801593C: .4byte 0x06004000
_08015940: .4byte 0x80000010

	thumb_func_start sub_8015944
sub_8015944: @ 0x08015944
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #0xc]
	mov sl, r0
_08015958:
	bl oam_update
	bl main_frameProc
	ldr r0, [r7, #0x40]
	adds r0, #1
	str r0, [r7, #0x40]
	ldr r0, [r7, #0x3c]
	adds r0, #1
	str r0, [r7, #0x3c]
	asrs r1, r0, #2
	ldrh r2, [r7, #0x10]
	strh r1, [r7, #0x10]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	ldrh r1, [r7, #0x12]
	strh r0, [r7, #0x12]
	ldr r1, [sp, #0xc]
	cmp r1, #5
	bls _08015982
	b _08015CBC
_08015982:
	lsls r0, r1, #2
	ldr r1, _0801598C @ =_08015990
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801598C: .4byte _08015990
_08015990: @ jump table
	.4byte _080159A8 @ case 0
	.4byte _08015AFC @ case 1
	.4byte _08015B40 @ case 2
	.4byte _08015C98 @ case 3
	.4byte _08015CBC @ case 4
	.4byte _08015C98 @ case 5
_080159A8:
	adds r0, r7, #0
	bl sub_8015878
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r6, r7, r0
	ldr r0, [r6]
	lsls r5, r0, #2
	adds r5, r5, r0
	lsls r5, r5, #2
	adds r4, r7, r5
	adds r0, r4, #0
	adds r0, #0x64
	ldrb r2, [r0]
	movs r0, #4
	movs r1, #8
	bl sub_801670C
	adds r4, #0x6c
	ldrh r2, [r4]
	movs r0, #7
	movs r1, #8
	movs r3, #0xf
	bl sub_80166D8
	movs r0, #2
	bl map_setBufferDirty
	adds r0, r7, #0
	adds r0, #0x60
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #8
	ldr r5, _08015A70 @ =0x02025400
	adds r4, r4, r5
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08015A74 @ =0x0600F400
	ldr r3, _08015A78 @ =0x80000180
	bl dmaq_enqueue
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrb r2, [r0]
	movs r0, #4
	movs r1, #0xf
	bl sub_801670C
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrh r2, [r0]
	movs r0, #7
	movs r1, #0xf
	movs r3, #0xf
	bl sub_80166D8
	movs r0, #2
	bl map_setBufferDirty
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #8
	adds r4, r4, r5
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08015A7C @ =0x0600F000
	ldr r3, _08015A78 @ =0x80000180
	bl dmaq_enqueue
	movs r4, #0
	mov sb, r6
_08015A4A:
	lsls r2, r4, #1
	movs r0, #0
	movs r1, #0x11
	bl map_getBufferPtr2d
	mov r8, r0
	mov r1, sb
	ldr r0, [r1]
	cmp r0, r4
	beq _08015A80
	movs r0, #1
	ands r0, r4
	movs r1, #0xa0
	lsls r1, r1, #7
	cmp r0, #0
	beq _08015A84
	movs r1, #0xc0
	lsls r1, r1, #7
	b _08015A84
	.align 2, 0
_08015A70: .4byte 0x02025400
_08015A74: .4byte 0x0600F400
_08015A78: .4byte 0x80000180
_08015A7C: .4byte 0x0600F000
_08015A80:
	movs r1, #0xb0
	lsls r1, r1, #8
_08015A84:
	adds r2, r1, #0
	movs r1, #0
	adds r4, #1
	mov ip, r4
	ldr r6, _08015AF0 @ =0x00000FFF
_08015A8E:
	lsls r0, r1, #6
	adds r5, r1, #1
	mov r1, r8
	adds r3, r1, r0
	movs r4, #0xb
_08015A98:
	ldrh r1, [r3]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
	adds r3, #2
	subs r4, #1
	cmp r4, #0
	bge _08015A98
	adds r1, r5, #0
	cmp r1, #1
	ble _08015A8E
	mov r4, ip
	cmp r4, #9
	ble _08015A4A
	movs r0, #1
	bl map_setBufferDirty
	movs r4, #0
	ldr r2, _08015AF4 @ =gMPlayTable
	ldr r3, _08015AF8 @ =gSongTable
	ldrh r1, [r3, #0x14]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08015ADE
	ldr r1, [r1]
	ldr r0, [r3, #0x10]
	cmp r1, r0
	bne _08015ADE
	movs r4, #1
_08015ADE:
	cmp r4, #0
	bne _08015AE8
	movs r0, #2
	bl m4aSongNumStart
_08015AE8:
	movs r0, #1
	str r0, [sp, #0xc]
	b _08015CBC
	.align 2, 0
_08015AF0: .4byte 0x00000FFF
_08015AF4: .4byte gMPlayTable
_08015AF8: .4byte gSongTable
_08015AFC:
	movs r1, #1
	add sl, r1
	mov r0, sl
	cmp r0, #8
	bgt _08015B22
	ldrh r0, [r7, #0x1a]
	movs r0, #0xff
	strh r0, [r7, #0x1a]
	mov r1, sl
	lsls r0, r1, #4
	rsbs r0, r0, #0
	cmp r0, #0
	bge _08015B18
	adds r0, #7
_08015B18:
	asrs r0, r0, #3
	adds r0, #0x10
	ldrh r1, [r7, #0x1e]
	strh r0, [r7, #0x1e]
	b _08015CBC
_08015B22:
	ldrh r0, [r7, #0x1a]
	ldr r0, _08015B38 @ =0x00000844
	strh r0, [r7, #0x1a]
	ldrh r0, [r7, #0x1c]
	ldr r0, _08015B3C @ =0x00001008
	strh r0, [r7, #0x1c]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r1, #0
	mov sl, r1
	b _08015CBC
	.align 2, 0
_08015B38: .4byte 0x00000844
_08015B3C: .4byte 0x00001008
_08015B40:
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r4, r7, r0
	ldr r5, [r4]
	bl main_getRepeatTriggerKeys
	movs r1, #0x40
	ands r1, r0
	cmp r1, #0
	beq _08015B5A
	ldr r0, [r4]
	subs r0, #1
	str r0, [r4]
_08015B5A:
	bl main_getRepeatTriggerKeys
	movs r1, #0x80
	ands r1, r0
	cmp r1, #0
	beq _08015B6C
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
_08015B6C:
	ldr r0, [r4]
	cmp r0, #0
	bge _08015B76
	movs r0, #9
	str r0, [r4]
_08015B76:
	ldr r0, [r4]
	cmp r0, #9
	ble _08015B80
	movs r0, #0
	str r0, [r4]
_08015B80:
	ldr r0, [r4]
	cmp r5, r0
	beq _08015C58
	movs r0, #0x8d
	bl m4aSongNumStart
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r6, r7, r1
	ldr r0, [r6]
	lsls r5, r0, #2
	adds r5, r5, r0
	lsls r5, r5, #2
	adds r4, r7, r5
	adds r0, r4, #0
	adds r0, #0x64
	ldrb r2, [r0]
	movs r0, #4
	movs r1, #8
	bl sub_801670C
	adds r4, #0x6c
	ldrh r2, [r4]
	movs r0, #7
	movs r1, #8
	movs r3, #0xf
	bl sub_80166D8
	movs r0, #2
	bl map_setBufferDirty
	adds r0, r7, #0
	adds r0, #0x60
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #8
	ldr r0, _08015C08 @ =0x02025400
	adds r4, r4, r0
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08015C0C @ =0x0600F400
	ldr r3, _08015C10 @ =0x80000180
	bl dmaq_enqueue
	movs r4, #0
	mov sb, r6
_08015BE2:
	lsls r2, r4, #1
	movs r0, #0
	movs r1, #0x11
	bl map_getBufferPtr2d
	mov r8, r0
	mov r1, sb
	ldr r0, [r1]
	cmp r0, r4
	beq _08015C14
	movs r0, #1
	ands r0, r4
	movs r1, #0xa0
	lsls r1, r1, #7
	cmp r0, #0
	beq _08015C18
	movs r1, #0xc0
	lsls r1, r1, #7
	b _08015C18
	.align 2, 0
_08015C08: .4byte 0x02025400
_08015C0C: .4byte 0x0600F400
_08015C10: .4byte 0x80000180
_08015C14:
	movs r1, #0xb0
	lsls r1, r1, #8
_08015C18:
	adds r2, r1, #0
	movs r1, #0
	adds r4, #1
	mov ip, r4
	ldr r6, _08015C54 @ =0x00000FFF
_08015C22:
	lsls r0, r1, #6
	adds r5, r1, #1
	mov r1, r8
	adds r3, r1, r0
	movs r4, #0xb
_08015C2C:
	ldrh r1, [r3]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
	adds r3, #2
	subs r4, #1
	cmp r4, #0
	bge _08015C2C
	adds r1, r5, #0
	cmp r1, #1
	ble _08015C22
	mov r4, ip
	cmp r4, #9
	ble _08015BE2
	movs r0, #1
	bl map_setBufferDirty
	b _08015CBC
	.align 2, 0
_08015C54: .4byte 0x00000FFF
_08015C58:
	bl main_getTriggerKeys
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08015C70
	movs r0, #0x8e
	bl m4aSongNumStart
	movs r0, #3
	str r0, [sp, #0xc]
	b _08015CBC
_08015C70:
	bl main_getTriggerKeys
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq _08015CBC
	movs r0, #0x90
	bl m4aSongNumStart
	ldr r0, _08015C94 @ =gMPlayTable
	ldr r0, [r0]
	movs r1, #1
	bl m4aMPlayFadeOut
	movs r1, #5
	str r1, [sp, #0xc]
	b _08015CBC
	.align 2, 0
_08015C94: .4byte gMPlayTable
_08015C98:
	movs r0, #1
	add sl, r0
	mov r1, sl
	cmp r1, #0x10
	bgt _08015CAE
	ldrh r0, [r7, #0x1a]
	movs r0, #0xff
	strh r0, [r7, #0x1a]
	ldrh r0, [r7, #0x1e]
	strh r1, [r7, #0x1e]
	b _08015CBC
_08015CAE:
	ldr r0, [sp, #0xc]
	cmp r0, #3
	bne _08015CB8
	movs r0, #1
	b _08015D48
_08015CB8:
	movs r0, #0
	b _08015D48
_08015CBC:
	movs r0, #0
	bl pltt_getBuffer
	adds r2, r0, #0
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r2, r2, r1
	ldr r0, _08015D40 @ =_080B23B0
	adds r1, r0, #0
	adds r1, #0x20
	ldr r3, [r7, #0x40]
	movs r4, #0x10
	str r4, [sp]
	bl sub_8005E04
	adds r6, r7, #0
	adds r6, #0x68
	movs r5, #0xf8
	lsls r5, r5, #0xe
	movs r4, #1
_08015CE4:
	lsrs r0, r5, #0x10
	lsls r0, r0, #0x10
	movs r1, #0x40
	orrs r1, r0
	str r1, [sp, #8]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _08015D44 @ =_080C922C
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	movs r0, #0xe0
	lsls r0, r0, #0xe
	adds r5, r5, r0
	subs r4, #1
	cmp r4, #0
	bge _08015CE4
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r6, r0
	ldr r0, [r0]
	movs r2, #0
	cmp r0, #0
	beq _08015D26
	movs r2, #3
_08015D26:
	ldr r3, [r7, #0x40]
	movs r0, #0x18
	movs r1, #0x48
	bl sub_801661C
	ldr r3, [r7, #0x40]
	movs r0, #0x18
	movs r1, #0x80
	movs r2, #2
	bl sub_801661C
	b _08015958
	.align 2, 0
_08015D40: .4byte _080B23B0
_08015D44: .4byte _080C922C
_08015D48:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8015D58
sub_8015D58: @ 0x08015D58
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r7, r0, #0
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r0, r7, #0
	adds r0, #0x60
	adds r0, r0, r1
	ldr r6, [r0]
	movs r0, #0
	mov r8, r0
	str r0, [sp]
	ldr r5, _08015E5C @ =0x02010400
	ldr r2, _08015E60 @ =0x01000400
	mov r0, sp
	adds r1, r5, #0
	bl CpuFastSet
	bl dmaq_getVBlankDmaQueue
	movs r2, #0xc0
	lsls r2, r2, #0x13
	ldr r4, _08015E64 @ =0x80000800
	adds r1, r5, #0
	adds r3, r4, #0
	bl dmaq_enqueue
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08015E68 @ =0x06001000
	adds r1, r5, #0
	adds r3, r4, #0
	bl dmaq_enqueue
	bl main_frameProc
	ldr r4, _08015E6C @ =_080C7AA0
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	movs r0, #2
	bl map_setBufferDirty
	ldr r4, _08015E70 @ =gTrackDefTable
	adds r0, r6, #0
	bl track_getMKSCTrack
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r4, [r0]
	ldr r0, [r4, #0x24]
	adds r1, r5, #0
	bl LZ77UnCompWram
	bl dmaq_getVBlankDmaQueue
	ldr r2, _08015E74 @ =0x06004000
	ldr r3, _08015E78 @ =0x80000A20
	adds r1, r5, #0
	bl dmaq_enqueue
	ldr r4, [r4, #0x28]
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	mov r1, r8
	str r1, [sp, #4]
	add r4, sp, #4
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	ldr r2, _08015E7C @ =0x01000200
	adds r0, r4, #0
	bl CpuFastSet
	ldr r4, _08015E80 @ =_0809A8CC
	movs r0, #0
	movs r1, #1
	movs r2, #3
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	movs r0, #1
	bl map_setBufferDirty
	lsls r4, r6, #1
	adds r4, r4, r6
	lsls r4, r4, #8
	ldr r0, _08015E84 @ =0x02025400
	adds r4, r4, r0
	ldr r5, _08015E88 @ =0x0600F000
	bl dmaq_getVBlankDmaQueue
	ldr r3, _08015E8C @ =0x80000180
	adds r1, r4, #0
	adds r2, r5, #0
	bl dmaq_enqueue
	ldrh r0, [r7, #2]
	ldr r0, _08015E90 @ =0x00004084
	strh r0, [r7, #2]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015E5C: .4byte 0x02010400
_08015E60: .4byte 0x01000400
_08015E64: .4byte 0x80000800
_08015E68: .4byte 0x06001000
_08015E6C: .4byte _080C7AA0
_08015E70: .4byte gTrackDefTable
_08015E74: .4byte 0x06004000
_08015E78: .4byte 0x80000A20
_08015E7C: .4byte 0x01000200
_08015E80: .4byte _0809A8CC
_08015E84: .4byte 0x02025400
_08015E88: .4byte 0x0600F000
_08015E8C: .4byte 0x80000180
_08015E90: .4byte 0x00004084

	thumb_func_start sub_8015E94
sub_8015E94: @ 0x08015E94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r8, r0
	movs r0, #0x9c
	lsls r0, r0, #1
	add r0, r8
	ldr r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	mov r0, r8
	adds r0, #0x60
	adds r0, r0, r1
	ldr r2, [r0]
	adds r1, r2, #0
	cmp r2, #0
	bge _08015EC0
	adds r1, r2, #3
_08015EC0:
	asrs r1, r1, #2
	movs r0, #3
	ands r2, r0
	movs r0, #0
	str r0, [sp]
	movs r7, #0
	lsls r2, r2, #5
	str r2, [sp, #0xc]
	str r2, [sp, #4]
	lsls r1, r1, #7
	str r1, [sp, #0x10]
	str r1, [sp, #8]
_08015ED8:
	bl save_getSavePointer_805D9B0
	lsls r4, r7, #2
	ldr r1, [sp, #8]
	adds r0, r1, r0
	ldr r1, [sp, #4]
	adds r0, r1, r0
	adds r0, r4, r0
	adds r0, #0x64
	ldrb r5, [r0]
	bl save_getSavePointer_805D9B0
	ldr r1, [sp, #8]
	adds r0, r1, r0
	ldr r1, [sp, #4]
	adds r0, r1, r0
	adds r4, r4, r0
	adds r4, #0x64
	ldrh r6, [r4, #2]
	lsls r0, r7, #1
	mov sb, r0
	mov r4, sb
	adds r4, #5
	movs r0, #0xf
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_801670C
	movs r0, #0x11
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_8016740
	adds r2, r6, #0
	movs r0, #0x16
	adds r1, r4, #0
	movs r3, #0xf
	bl sub_80166D8
	adds r7, #1
	mov sl, r7
	ldr r1, [sp]
	cmp r1, #0
	bne _08015FAC
	movs r2, #0x9e
	lsls r2, r2, #1
	add r2, r8
	movs r3, #0xa0
	lsls r3, r3, #1
	add r3, r8
	str r1, [r3]
	str r1, [r2]
	movs r0, #0x9c
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r7, r8
	adds r1, r7, r0
	adds r0, r1, #0
	adds r0, #0x64
	ldrb r0, [r0]
	cmp r0, r5
	bne _08015FAC
	adds r0, r1, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	cmp r0, r6
	bne _08015FAC
	movs r0, #1
	str r0, [sp]
	movs r0, #0x6c
	str r0, [r2]
	mov r0, sb
	adds r0, #6
	lsls r0, r0, #3
	str r0, [r3]
	movs r0, #1
	movs r1, #0x11
	adds r2, r4, #0
	bl map_getBufferPtr2d
	adds r5, r0, #0
	movs r1, #0
	ldr r7, _08016008 @ =0x00000FFF
	movs r0, #0xe0
	lsls r0, r0, #8
	adds r6, r0, #0
_08015F8C:
	lsls r0, r1, #6
	adds r4, r1, #1
	adds r2, r0, r5
	movs r3, #0xb
_08015F94:
	ldrh r1, [r2]
	adds r0, r7, #0
	ands r0, r1
	orrs r0, r6
	strh r0, [r2]
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bge _08015F94
	adds r1, r4, #0
	cmp r1, #1
	ble _08015F8C
_08015FAC:
	mov r7, sl
	cmp r7, #4
	ble _08015ED8
	bl save_getSavePointer_805D9B0
	ldr r1, [sp, #0x10]
	adds r0, r1, r0
	ldr r7, [sp, #0xc]
	adds r0, r7, r0
	adds r0, #0x78
	ldrb r5, [r0]
	bl save_getSavePointer_805D9B0
	ldr r1, [sp, #0x10]
	adds r0, r1, r0
	adds r0, r7, r0
	adds r0, #0x78
	ldrh r6, [r0, #2]
	movs r0, #0xf
	movs r1, #0x11
	adds r2, r5, #0
	bl sub_801670C
	movs r0, #0x11
	movs r1, #0x11
	adds r2, r5, #0
	bl sub_8016740
	adds r2, r6, #0
	movs r0, #0x16
	movs r1, #0x11
	movs r3, #0xf
	bl sub_80166D8
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
_08016008: .4byte 0x00000FFF

	thumb_func_start sub_801600C
sub_801600C: @ 0x0801600C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r5, r0, #0
	movs r0, #0
	mov sl, r0
	mov sb, r0
	movs r1, #0
	str r1, [sp, #0xc]
	movs r2, #0
	str r2, [sp, #0x10]
	movs r0, #0x80
	str r0, [sp, #0x14]
	movs r1, #1
	str r1, [sp, #0x18]
_08016030:
	bl oam_update
	bl main_frameProc
	ldr r0, [r5, #0x40]
	adds r0, #1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x3c]
	adds r0, #1
	str r0, [r5, #0x3c]
	asrs r1, r0, #2
	ldrh r2, [r5, #0x10]
	strh r1, [r5, #0x10]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	ldrh r1, [r5, #0x12]
	strh r0, [r5, #0x12]
	mov r2, sl
	cmp r2, #4
	bls _0801605A
	b _08016152
_0801605A:
	lsls r0, r2, #2
	ldr r1, _08016064 @ =_08016068
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08016064: .4byte _08016068
_08016068: @ jump table
	.4byte _0801607C @ case 0
	.4byte _0801608E @ case 1
	.4byte _080160D0 @ case 2
	.4byte _0801612C @ case 3
	.4byte _0801612C @ case 4
_0801607C:
	adds r0, r5, #0
	bl sub_8015D58
	adds r0, r5, #0
	bl sub_8015E94
	movs r0, #1
	mov sl, r0
	b _08016152
_0801608E:
	movs r1, #1
	add sb, r1
	mov r2, sb
	cmp r2, #8
	bgt _080160B2
	ldrh r0, [r5, #0x1a]
	movs r0, #0xff
	strh r0, [r5, #0x1a]
	lsls r0, r2, #4
	rsbs r0, r0, #0
	cmp r0, #0
	bge _080160A8
	adds r0, #7
_080160A8:
	asrs r0, r0, #3
	adds r0, #0x10
	ldrh r1, [r5, #0x1e]
	strh r0, [r5, #0x1e]
	b _08016152
_080160B2:
	ldrh r0, [r5, #0x1a]
	ldr r0, _080160C8 @ =0x00000844
	strh r0, [r5, #0x1a]
	ldrh r0, [r5, #0x1c]
	ldr r0, _080160CC @ =0x00001008
	strh r0, [r5, #0x1c]
	movs r0, #2
	mov sl, r0
	movs r1, #0
	mov sb, r1
	b _08016152
	.align 2, 0
_080160C8: .4byte 0x00000844
_080160CC: .4byte 0x00001008
_080160D0:
	movs r0, #0x30
	bl main_checkKeysTriggered
	cmp r0, #0
	beq _080160EA
	movs r0, #0x8d
	bl m4aSongNumStart
	movs r0, #1
	ldr r2, [sp, #0xc]
	subs r2, r0, r2
	str r2, [sp, #0xc]
	b _08016152
_080160EA:
	movs r0, #1
	bl main_checkKeysTriggered
	cmp r0, #0
	beq _0801610E
	movs r0, #0
	str r0, [sp, #0x18]
	movs r1, #0
	str r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _08016120
	movs r0, #0x8e
	bl m4aSongNumStart
	movs r0, #3
	mov sl, r0
	b _08016152
_0801610E:
	movs r0, #2
	bl main_checkKeysTriggered
	cmp r0, #0
	beq _08016152
	movs r2, #0
	str r2, [sp, #0x18]
	movs r0, #0
	str r0, [sp, #0x10]
_08016120:
	movs r0, #0x90
	bl m4aSongNumStart
	movs r1, #4
	mov sl, r1
	b _08016152
_0801612C:
	movs r2, #1
	add sb, r2
	mov r0, sb
	cmp r0, #0x10
	bgt _08016144
	ldrh r0, [r5, #0x1a]
	movs r0, #0xff
	strh r0, [r5, #0x1a]
	ldrh r0, [r5, #0x1e]
	mov r1, sb
	strh r1, [r5, #0x1e]
	b _08016152
_08016144:
	mov r2, sl
	cmp r2, #3
	bne _0801614E
	movs r0, #1
	b _08016274
_0801614E:
	movs r0, #0
	b _08016274
_08016152:
	movs r0, #0
	bl pltt_getBuffer
	adds r2, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r2, r2, r0
	ldr r0, _08016200 @ =_080AAD3C
	adds r1, r0, #0
	adds r1, #0x40
	ldr r3, [r5, #0x40]
	movs r4, #0x10
	str r4, [sp]
	bl sub_8005E04
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r1, r1, r5
	mov r8, r1
	ldr r1, [r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r7, r5, #0
	adds r7, #0x68
	adds r0, r7, r0
	ldr r0, [r0]
	movs r2, #0
	cmp r0, #0
	beq _08016190
	movs r2, #3
_08016190:
	ldr r3, [r5, #0x40]
	movs r0, #0x48
	movs r1, #0x78
	bl sub_801661C
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r6, [r0]
	cmp r6, #0
	beq _080161D2
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r4, [r0]
	cmp r4, #0
	beq _080161D2
	mov r2, r8
	ldr r0, [r2]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r7, r1
	ldr r0, [r1]
	movs r2, #0
	cmp r0, #0
	beq _080161C8
	movs r2, #3
_080161C8:
	ldr r3, [r5, #0x40]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_801661C
_080161D2:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _08016208
	ldr r1, [sp, #0x10]
	adds r1, #1
	str r1, [sp, #0x10]
	cmp r1, #0x20
	bgt _08016236
	ldr r1, _08016204 @ =gSinTable
	ldr r2, [sp, #0x10]
	lsls r0, r2, #0x19
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080161F0
	adds r0, #0x3f
_080161F0:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [sp, #0x14]
	rsbs r0, r2, #0
	b _0801622E
	.align 2, 0
_08016200: .4byte _080AAD3C
_08016204: .4byte gSinTable
_08016208:
	ldr r0, [sp, #0x10]
	adds r0, #1
	str r0, [sp, #0x10]
	cmp r0, #0x20
	bgt _08016236
	ldr r1, _0801626C @ =gSinTable
	lsls r0, r0, #0x19
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0801621E
	adds r0, #0x3f
_0801621E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0x80
	ldr r2, [sp, #0x14]
	subs r0, r0, r2
_0801622E:
	muls r0, r1, r0
	asrs r0, r0, #0xf
	adds r2, r2, r0
	str r2, [sp, #0x14]
_08016236:
	ldrh r0, [r5, #4]
	movs r2, #0
	mov r0, sp
	ldrh r0, [r0, #0x14]
	strh r0, [r5, #4]
	movs r0, #0x20
	ldr r1, [sp, #0x14]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xe0
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [sp, #8]
	ldr r0, _08016270 @ =_080C9174
	str r2, [sp]
	str r2, [sp, #4]
	add r1, sp, #8
	movs r3, #0
	bl oam_renderCellData
	ldr r1, [r5, #0x40]
	ldr r0, [sp, #0xc]
	bl sub_8016778
	b _08016030
	.align 2, 0
_0801626C: .4byte gSinTable
_08016270: .4byte _080C9174
_08016274:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_8016284
sub_8016284: @ 0x08016284
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r4, _0801630C @ =_080C761C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	ldr r4, _08016310 @ =_080C7D80
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	adds r0, r4, #0
	bl LZ77UnCompWram
	movs r0, #3
	bl map_setBufferDirty
	ldr r0, _08016314 @ =0x06005800
	mov r8, r0
	movs r7, #0
	movs r6, #9
_080162C2:
	adds r0, r5, #0
	adds r0, #0x60
	adds r0, r0, r7
	ldr r0, [r0]
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #8
	ldr r0, _08016318 @ =0x02025400
	adds r4, r4, r0
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	mov r2, r8
	ldr r3, _0801631C @ =0x80000180
	bl dmaq_enqueue
	movs r0, #0xc0
	lsls r0, r0, #2
	add r8, r0
	adds r7, #0x14
	subs r6, #1
	cmp r6, #0
	bge _080162C2
	movs r1, #0
	ldrh r0, [r5, #2]
	movs r0, #4
	strh r0, [r5, #2]
	ldrh r0, [r5, #4]
	strh r1, [r5, #4]
	ldrh r0, [r5, #6]
	strh r1, [r5, #6]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801630C: .4byte _080C761C
_08016310: .4byte _080C7D80
_08016314: .4byte 0x06005800
_08016318: .4byte 0x02025400
_0801631C: .4byte 0x80000180

	thumb_func_start sub_8016320
sub_8016320: @ 0x08016320
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	movs r0, #0
	mov r8, r0
	mov sl, r0
	movs r1, #0
	str r1, [sp, #0xc]
_08016338:
	bl oam_update
	bl main_frameProc
	ldr r0, [r7, #0x40]
	adds r0, #1
	str r0, [r7, #0x40]
	ldr r0, [r7, #0x3c]
	adds r0, #1
	str r0, [r7, #0x3c]
	asrs r1, r0, #2
	ldrh r2, [r7, #0x10]
	strh r1, [r7, #0x10]
	rsbs r0, r0, #0
	asrs r0, r0, #2
	ldrh r1, [r7, #0x12]
	strh r0, [r7, #0x12]
	mov r0, r8
	cmp r0, #4
	bls _08016362
	b _0801657A
_08016362:
	lsls r0, r0, #2
	ldr r1, _0801636C @ =_08016370
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801636C: .4byte _08016370
_08016370: @ jump table
	.4byte _08016384 @ case 0
	.4byte _080164A4 @ case 1
	.4byte _080164E8 @ case 2
	.4byte _08016556 @ case 3
	.4byte _08016556 @ case 4
_08016384:
	adds r0, r7, #0
	bl sub_8016284
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r6, r7, r1
	ldr r0, [r6]
	lsls r5, r0, #2
	adds r5, r5, r0
	lsls r5, r5, #2
	adds r4, r7, r5
	adds r0, r4, #0
	adds r0, #0x64
	ldrb r2, [r0]
	movs r0, #4
	movs r1, #4
	bl sub_801670C
	adds r4, #0x6c
	ldrh r2, [r4]
	movs r0, #7
	movs r1, #4
	movs r3, #0xf
	bl sub_80166D8
	movs r0, #2
	bl map_setBufferDirty
	adds r0, r7, #0
	adds r0, #0x60
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #8
	ldr r5, _0801644C @ =0x02025400
	adds r4, r4, r5
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08016450 @ =0x0600F400
	ldr r3, _08016454 @ =0x80000180
	bl dmaq_enqueue
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrb r2, [r0]
	movs r0, #4
	movs r1, #0xb
	bl sub_801670C
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrh r2, [r0]
	movs r0, #7
	movs r1, #0xb
	movs r3, #0xf
	bl sub_80166D8
	movs r0, #2
	bl map_setBufferDirty
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #8
	adds r4, r4, r5
	bl dmaq_getVBlankDmaQueue
	adds r1, r4, #0
	ldr r2, _08016458 @ =0x0600F000
	ldr r3, _08016454 @ =0x80000180
	bl dmaq_enqueue
	movs r4, #0
	mov sb, r6
_08016426:
	lsls r2, r4, #1
	movs r0, #0
	movs r1, #0x11
	bl map_getBufferPtr2d
	mov r8, r0
	mov r1, sb
	ldr r0, [r1]
	cmp r0, r4
	beq _0801645C
	movs r0, #1
	ands r0, r4
	movs r1, #0xa0
	lsls r1, r1, #7
	cmp r0, #0
	beq _08016460
	movs r1, #0xc0
	lsls r1, r1, #7
	b _08016460
	.align 2, 0
_0801644C: .4byte 0x02025400
_08016450: .4byte 0x0600F400
_08016454: .4byte 0x80000180
_08016458: .4byte 0x0600F000
_0801645C:
	movs r1, #0xb0
	lsls r1, r1, #8
_08016460:
	adds r2, r1, #0
	movs r1, #0
	adds r4, #1
	mov ip, r4
	ldr r6, _080164A0 @ =0x00000FFF
_0801646A:
	lsls r0, r1, #6
	adds r5, r1, #1
	mov r1, r8
	adds r3, r1, r0
	movs r4, #0xb
_08016474:
	ldrh r1, [r3]
	adds r0, r6, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
	adds r3, #2
	subs r4, #1
	cmp r4, #0
	bge _08016474
	adds r1, r5, #0
	cmp r1, #1
	ble _0801646A
	mov r4, ip
	cmp r4, #9
	ble _08016426
	movs r0, #1
	bl map_setBufferDirty
	movs r0, #1
	mov r8, r0
	b _0801657A
	.align 2, 0
_080164A0: .4byte 0x00000FFF
_080164A4:
	movs r1, #1
	add sl, r1
	mov r0, sl
	cmp r0, #8
	bgt _080164CA
	ldrh r0, [r7, #0x1a]
	movs r0, #0xff
	strh r0, [r7, #0x1a]
	mov r1, sl
	lsls r0, r1, #4
	rsbs r0, r0, #0
	cmp r0, #0
	bge _080164C0
	adds r0, #7
_080164C0:
	asrs r0, r0, #3
	adds r0, #0x10
	ldrh r1, [r7, #0x1e]
	strh r0, [r7, #0x1e]
	b _0801657A
_080164CA:
	ldrh r0, [r7, #0x1a]
	ldr r0, _080164E0 @ =0x00000844
	strh r0, [r7, #0x1a]
	ldrh r0, [r7, #0x1c]
	ldr r0, _080164E4 @ =0x00001008
	strh r0, [r7, #0x1c]
	movs r0, #2
	mov r8, r0
	movs r1, #0
	mov sl, r1
	b _0801657A
	.align 2, 0
_080164E0: .4byte 0x00000844
_080164E4: .4byte 0x00001008
_080164E8:
	movs r0, #0x30
	bl main_checkKeysTriggered
	adds r4, r0, #0
	cmp r4, #0
	beq _08016504
	movs r0, #0x8d
	bl m4aSongNumStart
	movs r0, #1
	ldr r1, [sp, #0xc]
	subs r1, r0, r1
	str r1, [sp, #0xc]
	b _0801657A
_08016504:
	movs r0, #1
	bl main_checkKeysTriggered
	cmp r0, #0
	beq _08016540
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _08016524
	movs r0, #0x8e
	bl m4aSongNumStart
	movs r1, #3
	mov r8, r1
	movs r0, #1
	str r0, [r7, #0x34]
	b _08016530
_08016524:
	movs r0, #0x8e
	bl m4aSongNumStart
	movs r0, #3
	mov r8, r0
	str r4, [r7, #0x34]
_08016530:
	ldr r0, _0801653C @ =gMPlayTable
	ldr r0, [r0]
	movs r1, #1
	bl m4aMPlayFadeOut
	b _0801657A
	.align 2, 0
_0801653C: .4byte gMPlayTable
_08016540:
	movs r0, #2
	bl main_checkKeysTriggered
	cmp r0, #0
	beq _0801657A
	movs r0, #0x90
	bl m4aSongNumStart
	movs r1, #4
	mov r8, r1
	b _0801657A
_08016556:
	movs r0, #1
	add sl, r0
	mov r1, sl
	cmp r1, #0x10
	bgt _0801656C
	ldrh r0, [r7, #0x1a]
	movs r0, #0xff
	strh r0, [r7, #0x1a]
	ldrh r0, [r7, #0x1e]
	strh r1, [r7, #0x1e]
	b _0801657A
_0801656C:
	mov r0, r8
	cmp r0, #3
	bne _08016576
	movs r0, #1
	b _0801660C
_08016576:
	movs r0, #0
	b _0801660C
_0801657A:
	movs r0, #0
	bl pltt_getBuffer
	adds r2, r0, #0
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r2, r2, r1
	ldr r0, _08016604 @ =_080B23B0
	adds r1, r0, #0
	adds r1, #0x20
	ldr r3, [r7, #0x40]
	movs r4, #0x10
	str r4, [sp]
	bl sub_8005E04
	adds r6, r7, #0
	adds r6, #0x68
	movs r5, #0xf0
	lsls r5, r5, #0xd
	movs r4, #1
_080165A2:
	lsrs r0, r5, #0x10
	lsls r0, r0, #0x10
	movs r1, #0x40
	orrs r1, r0
	str r1, [sp, #8]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _08016608 @ =_080C922C
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	movs r0, #0xe0
	lsls r0, r0, #0xe
	adds r5, r5, r0
	subs r4, #1
	cmp r4, #0
	bge _080165A2
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r6, r0
	ldr r0, [r0]
	movs r2, #0
	cmp r0, #0
	beq _080165E4
	movs r2, #3
_080165E4:
	ldr r3, [r7, #0x40]
	movs r0, #0x18
	movs r1, #0x28
	bl sub_801661C
	ldr r3, [r7, #0x40]
	movs r0, #0x18
	movs r1, #0x60
	movs r2, #2
	bl sub_801661C
	ldr r1, [r7, #0x40]
	ldr r0, [sp, #0xc]
	bl sub_8016778
	b _08016338
	.align 2, 0
_08016604: .4byte _080B23B0
_08016608: .4byte _080C922C
_0801660C:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_801661C
sub_801661C: @ 0x0801661C
	push {lr}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r0, r0, #0x10
	orrs r0, r1
	str r0, [sp, #8]
	cmp r2, #1
	beq _0801665C
	cmp r2, #1
	bgt _08016638
	cmp r2, #0
	beq _08016642
	b _080166CA
_08016638:
	cmp r2, #2
	beq _08016674
	cmp r2, #3
	beq _080166AC
	b _080166CA
_08016642:
	movs r0, #0x2f
	ands r0, r3
	ldr r1, _08016654 @ =_080C9328
	cmp r0, #0xf
	bgt _0801664E
	ldr r1, _08016658 @ =_080C9308
_0801664E:
	str r2, [sp]
	str r2, [sp, #4]
	b _08016698
	.align 2, 0
_08016654: .4byte _080C9328
_08016658: .4byte _080C9308
_0801665C:
	movs r0, #0x2f
	ands r0, r3
	ldr r1, _0801666C @ =_080C9330
	cmp r0, #0xf
	bgt _08016692
	ldr r1, _08016670 @ =_080C9310
	b _08016692
	.align 2, 0
_0801666C: .4byte _080C9330
_08016670: .4byte _080C9310
_08016674:
	movs r0, #0x3f
	ands r0, r3
	cmp r0, #0x14
	ble _08016690
	ldr r1, _08016688 @ =_080C9480
	cmp r0, #0x29
	bgt _08016692
	ldr r1, _0801668C @ =_080C9478
	b _08016692
	.align 2, 0
_08016688: .4byte _080C9480
_0801668C: .4byte _080C9478
_08016690:
	ldr r1, _080166A8 @ =_080C9470
_08016692:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
_08016698:
	adds r0, r1, #0
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	b _080166CA
	.align 2, 0
_080166A8: .4byte _080C9470
_080166AC:
	movs r0, #0x2f
	ands r0, r3
	ldr r1, _080166D0 @ =_080C9748
	cmp r0, #0xf
	bgt _080166B8
	ldr r1, _080166D4 @ =_080C9740
_080166B8:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r1, #0
	add r1, sp, #8
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_080166CA:
	add sp, #0xc
	pop {r0}
	bx r0
	.align 2, 0
_080166D0: .4byte _080C9748
_080166D4: .4byte _080C9740

	thumb_func_start sub_80166D8
sub_80166D8: @ 0x080166D8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	mov r8, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #1
	adds r1, r5, #0
	adds r2, r6, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	movs r2, #0xc8
	lsls r2, r2, #2
	adds r0, r4, #0
	mov r3, r8
	bl sub_800C6D4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_801670C
sub_801670C: @ 0x0801670C
	push {r4, r5, lr}
	sub sp, #8
	adds r3, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	movs r0, #1
	adds r1, r3, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	adds r1, r0, #0
	movs r2, #0xd8
	lsls r2, r2, #2
	movs r0, #0xb0
	lsls r0, r0, #2
	str r0, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r3, #9
	bl sub_800E728
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_8016740
sub_8016740: @ 0x08016740
	push {r4, r5, lr}
	sub sp, #8
	adds r3, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	movs r0, #1
	adds r1, r3, #0
	adds r2, r4, #0
	bl map_getBufferPtr2d
	adds r2, r0, #0
	ldr r1, _08016774 @ =0x02008400
	movs r0, #0xc8
	lsls r0, r0, #2
	str r0, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r3, #0xf
	bl sub_800E788
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08016774: .4byte 0x02008400

	thumb_func_start sub_8016778
sub_8016778: @ 0x08016778
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	ldr r0, _080167B8 @ =_080C9488
	ldr r7, _080167BC @ =_080DA2F4
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	ldr r0, _080167C0 @ =_080C9490
	ldr r5, _080167C4 @ =_080DA2F8
	str r4, [sp]
	str r4, [sp, #4]
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	movs r0, #0x1f
	mov r1, r8
	ands r0, r1
	cmp r0, #0x13
	bgt _080167CC
	ldr r0, _080167C8 @ =_080C9498
	b _080167D8
	.align 2, 0
_080167B8: .4byte _080C9488
_080167BC: .4byte _080DA2F4
_080167C0: .4byte _080C9490
_080167C4: .4byte _080DA2F8
_080167C8: .4byte _080C9498
_080167CC:
	movs r2, #0x20
	mov r0, r8
	ands r2, r0
	cmp r2, #0
	beq _080167F4
	ldr r0, _080167F0 @ =_080C94A8
_080167D8:
	adds r1, r5, #0
	cmp r6, #0
	bne _080167E0
	adds r1, r7, #0
_080167E0:
	str r4, [sp]
	str r4, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
	b _0801680A
	.align 2, 0
_080167F0: .4byte _080C94A8
_080167F4:
	ldr r0, _08016818 @ =_080C94B8
	adds r1, r5, #0
	cmp r6, #0
	bne _080167FE
	adds r1, r7, #0
_080167FE:
	str r2, [sp]
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl oam_renderCellData
_0801680A:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016818: .4byte _080C94B8