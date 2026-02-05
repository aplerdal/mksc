	.include "asm/macros.inc"

	.syntax unified
	.text
	thumb_func_start race_main
race_main: @ 0805167C
	push {r4, r5, r6, r7, lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	add sp, #-0x014
	ldr r4, _080516E0 @ =0x03002E20
	ldr r0, _080516E4 @ =0x03004F50
	movs r7, #0x00
	strh r7, [r0, #0x00]
	movs r5, #0x00
	movs r0, #0x01
	movs r1, #0x02
	negs r1, r1
	bl irq_updateMask
	str r5, [r4, #0x0C]
	movs r0, #0x02
	ldr r1, _080516E8 @ =0x00010001
	bl irq_updateMask
	bl main_frameProc
	movs r0, #0xA0
	lsls r0, r0, #0x13
	strh r5, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r5, [r0, #0x00]
	ldr r0, _080516EC @ =0x000007FB
	adds r6, r4, r0
	ldrb r0, [r6, #0x00]
	cmp r0, #0x01
	bls _0805170C
	bl sub_802DC88
	cmp r0, #0x00
	beq _080516D2
	ldr r1, _080516F0 @ =0x03002C80
	ldrb r0, [r1, #0x01]
	ldrb r6, [r6, #0x00]
	cmp r0, r6
	beq _080516F8
_080516D2:
	ldr r0, _080516F0 @ =0x03002C80
	strh r5, [r0, #0x16]
	bl sio2_stop
	ldr r1, _080516F4 @ =0x000007FC
	adds r0, r4, r1
	b _08051710
_080516E0: .4byte 0x03002E20
_080516E4: .4byte 0x03004F50
_080516E8: .4byte 0x00010001
_080516EC: .4byte 0x000007FB
_080516F0: .4byte 0x03002C80
_080516F4: .4byte 0x000007FC
_080516F8:
	ldrb r1, [r1, #0x00]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldr r2, _08051708 @ =0x000007FC
	adds r0, r4, r2
	strb r1, [r0, #0x00]
	b _08051712
	.align 2, 0
_08051708: .4byte 0x000007FC
_0805170C:
	ldr r3, _080517B0 @ =0x000007FC
	adds r0, r4, r3
_08051710:
	strb r7, [r0, #0x00]
_08051712:
	ldr r4, _080517B4 @ =0x03002E44
	ldr r7, _080517B8 @ =0x00000814
	adds r2, r4, r7
	movs r1, #0xFB
	lsls r1, r1, #0x03
	adds r0, r4, r1
	ldrb r1, [r0, #0x00]
	lsls r1, r1, #0x02
	ldr r3, _080517BC @ =0x000007F4
	adds r0, r4, r3
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	str r0, [r2, #0x00]
	bl sub_80515BC
	movs r0, #0x01
	bl oam_802FE4C
	bl oam_update
	bl main_frameProc
	ldr r0, _080517B4 @ =0x03002E44
	bl sub_8048D44
	bl main_frameProc
	bl sub_8050F74
	bl main_frameProc
	ldr r0, _080517B4 @ =0x03002E44
	bl sub_804AE08
	bl main_frameProc
	subs r7, #0x3A
	adds r0, r4, r7
	ldrh r1, [r0, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x04
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x01
	adds r2, r7, #0x0
	adds r4, r4, r2
	mov r10, r4
	cmp r0, r1
	bne _08051782
	ldrh r1, [r4, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _08051782
	bl sub_80524CC
_08051782:
	movs r0, #0x01
	bl pltt_setDirtyFlag
	ldr r3, _080517B4 @ =0x03002E44
	ldr r4, _080517C0 @ =0x00000C58
	adds r1, r3, r4
	movs r0, #0x00
	str r0, [r1, #0x00]
	bl sub_805A7C0
	ldr r0, _080517B4 @ =0x03002E44
	bl sub_8032C2C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x0C
	beq _080517C8
	cmp r0, #0x0C
	bgt _080517C4
	cmp r0, #0x00
	beq _080517C8
	b _080517D0
	.align 2, 0
_080517B0: .4byte 0x000007FC
_080517B4: .4byte 0x03002E44
_080517B8: .4byte 0x00000814
_080517BC: .4byte 0x000007F4
_080517C0: .4byte 0x00000C58
_080517C4:
	cmp r0, #0x10
	bne _080517D0
_080517C8:
	movs r0, #0x27
	bl m4aSongNumStart
	b _080517D6
_080517D0:
	movs r0, #0x26
	bl m4aSongNumStart
_080517D6:
	mov r7, r10
	ldrh r2, [r7, #0x00]
	movs r1, #0xF0
	lsls r1, r1, #0x04
	ands r1, r2
	movs r0, #0x80
	lsls r0, r0, #0x02
	cmp r1, r0
	beq _08051804
	cmp r1, r0
	bgt _08051804
	movs r0, #0x80
	lsls r0, r0, #0x01
	cmp r1, r0
	bne _08051804
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0x00
	bne _08051804
	movs r0, #0x03
	bl m4aSongNumStart
	b _0805180A
_08051804:
	movs r0, #0x04
	bl m4aSongNumStart
_0805180A:
	ldr r1, _0805187C @ =0x03002E20
	movs r0, #0x00
	str r0, [r1, #0x10]
	movs r0, #0x01
	mov r9, r0
	movs r6, #0x00
	ldr r1, _08051880 @ =0x03004F50
	movs r2, #0xE0
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	strh r0, [r1, #0x00]
	movs r4, #0xFD
	lsls r4, r4, #0x03
	ldr r3, _08051884 @ =0x03002E44
	adds r4, r3, r4
	str r4, [sp, #0x008]
	ldr r7, _08051888 @ =0x00000C88
	adds r7, r3, r7
	str r7, [sp, #0x00C]
	ldr r0, _0805188C @ =0x000007D4
	adds r0, r3, r0
	str r0, [sp, #0x004]
	ldr r7, _08051890 @ =0x03002C80
	mov r8, r7
_0805183A:
	movs r4, #0xE0
	lsls r4, r4, #0x05
	ldrb r0, [r7, #0x01]
	cmp r0, #0x00
	beq _0805185E
	adds r5, r4, #0x0
	mov r2, r8
	adds r2, #0x02
	mov r1, r8
	ldrb r3, [r1, #0x01]
_0805184E:
	ldrh r1, [r2, #0x00]
	adds r0, r5, #0x0
	ands r0, r1
	ands r4, r0
	adds r2, #0x02
	subs r3, #0x01
	cmp r3, #0x00
	bne _0805184E
_0805185E:
	bl main_frameProc
	movs r2, #0xE0
	lsls r2, r2, #0x05
	cmp r4, r2
	beq _08051894
	adds r6, #0x01
	cmp r6, #0xB4
	ble _08051898
	movs r0, #0x00
	strh r0, [r7, #0x16]
	bl sio2_stop
	b _0805189E
	.align 2, 0
_0805187C: .4byte 0x03002E20
_08051880: .4byte 0x03004F50
_08051884: .4byte 0x03002E44
_08051888: .4byte 0x00000C88
_0805188C: .4byte 0x000007D4
_08051890: .4byte 0x03002C80
_08051894:
	movs r3, #0x00
	mov r9, r3
_08051898:
	mov r4, r9
	cmp r4, #0x00
	bne _0805183A
_0805189E:
	ldr r1, _08051900 @ =0x03004F50
	movs r0, #0x00
	strh r0, [r1, #0x00]
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2, #0x00]
	movs r7, #0xB0
	lsls r7, r7, #0x05
	adds r1, r7, #0x0
	orrs r0, r1
	strh r0, [r2, #0x00]
	ldr r5, _08051904 @ =0x08051F85
	ldr r4, _08051908 @ =0x03002E20
	movs r0, #0x01
	movs r1, #0x02
	negs r1, r1
	bl irq_updateMask
	str r5, [r4, #0x0C]
	movs r0, #0x02
	ldr r1, _0805190C @ =0x00010001
	bl irq_updateMask
	ldr r1, _08051910 @ =0x00010004
	movs r0, #0x02
	bl irq_updateMask
	ldr r1, _08051914 @ =0x03002E44
	ldr r2, _08051918 @ =0x000007DA
	adds r0, r1, r2
	ldrh r1, [r0, #0x00]
	movs r0, #0xF0
	lsls r0, r0, #0x04
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	bne _0805191C
	mov r3, r10
	ldrh r1, [r3, #0x00]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0x00
	bne _0805191C
	bl main_frameProc
	bl sub_8052A4C
	b _08051932
_08051900: .4byte 0x03004F50
_08051904: .4byte sub_8051F84
_08051908: .4byte 0x03002E20
_0805190C: .4byte 0x00010001
_08051910: .4byte 0x00010004
_08051914: .4byte 0x03002E44
_08051918: .4byte 0x000007DA
_0805191C:
	ldr r0, _08051968 @ =0x08052021
	ldr r1, _0805196C @ =0x03004F70
	str r0, [r1, #0x04]
	ldr r0, _08051970 @ =0x0805207D
	str r0, [r1, #0x00]
	ldr r0, _08051974 @ =0x080520B5
	str r0, [r1, #0x08]
	movs r0, #0x03
	strb r0, [r1, #0x0E]
	bl trns_start
_08051932:
	movs r4, #0x01
	str r4, [sp, #0x000]
	ldr r1, _08051978 @ =0x03005C50
	movs r0, #0x00
	str r0, [r1, #0x00]
	ldr r7, [sp, #0x008]
	strb r0, [r7, #0x00]
_08051940:
	ldr r0, _08051978 @ =0x03005C50
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08051A12
	ldr r0, [sp, #0x000]
	cmp r0, #0x00
	beq _08051A12
	ldr r2, [sp, #0x00C]
	ldr r1, [r2, #0x00]
	cmp r1, #0x00
	bge _0805197C
	movs r0, #0x80
	lsls r0, r0, #0x17
	ands r1, r0
	cmp r1, #0x00
	beq _080519A4
	bl sub_801531C
	b _080519A4
	.align 2, 0
_08051968: .4byte sub_8052020
_0805196C: .4byte 0x03004F70
_08051970: .4byte sub_805207C
_08051974: .4byte sub_80520B4
_08051978: .4byte 0x03005C50
_0805197C:
	ldr r3, _080519E0 @ =0x03002E44
	ldr r4, _080519E4 @ =0x000007DA
	adds r0, r3, r4
	ldrh r0, [r0, #0x00]
	movs r7, #0x80
	lsls r7, r7, #0x02
	adds r1, r7, #0x0
	ands r0, r1
	cmp r0, #0x00
	beq _080519A4
	ldr r1, [sp, #0x008]
	ldrb r0, [r1, #0x00]
	cmp r0, #0x02
	blt _080519A4
	cmp r0, #0x03
	ble _080519A0
	cmp r0, #0x05
	bne _080519A4
_080519A0:
	bl sub_801531C
_080519A4:
	ldr r0, _080519E8 @ =0x08102414
	ldr r1, [r0, #0x00]
	ldrh r0, [r1, #0x04]
	cmp r0, #0x00
	beq _080519B6
	adds r0, r1, #0x0
	movs r1, #0x02
	bl m4aMPlayFadeOut
_080519B6:
	ldr r2, _080519E0 @ =0x03002E44
	ldr r3, _080519E4 @ =0x000007DA
	adds r0, r2, r3
	ldrh r1, [r0, #0x00]
	movs r4, #0xF0
	lsls r4, r4, #0x04
	adds r0, r4, #0x0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x01
	cmp r0, r1
	bne _080519FC
	ldr r0, _080519EC @ =0x080514B1
	ldr r7, _080519F0 @ =0x03004F70
	str r0, [r7, #0x04]
	ldr r0, _080519F4 @ =0x08051555
	str r0, [r7, #0x00]
	ldr r0, _080519F8 @ =0x08051FD1
	str r0, [r7, #0x08]
	b _08051A0A
	.align 2, 0
_080519E0: .4byte 0x03002E44
_080519E4: .4byte 0x000007DA
_080519E8: .4byte 0x08102414
_080519EC: .4byte sub_80514B0
_080519F0: .4byte 0x03004F70
_080519F4: .4byte sub_8051554
_080519F8: .4byte sub_8051FD0
_080519FC:
	ldr r0, _08051A70 @ =0x080520D5
	ldr r1, _08051A74 @ =0x03004F70
	str r0, [r1, #0x04]
	ldr r0, _08051A78 @ =0x08052169
	str r0, [r1, #0x00]
	ldr r0, _08051A7C @ =0x080521C5
	str r0, [r1, #0x08]
_08051A0A:
	bl trns_start
	movs r2, #0x00
	str r2, [sp, #0x000]
_08051A12:
	bl oam_update
	bl main_frameProc
	ldr r3, [sp, #0x004]
	ldrb r1, [r3, #0x00]
	movs r0, #0x40
	ands r0, r1
	movs r1, #0x00
	cmp r0, #0x00
	bne _08051A2A
	movs r1, #0x01
_08051A2A:
	adds r0, r1, #0x0
	bl oam_802FE4C
	ldr r4, _08051A80 @ =0x03002E44
	ldr r7, _08051A84 @ =0x000007D7
	adds r5, r4, r7
	ldrb r0, [r5, #0x00]
	cmp r0, #0x01
	bls _08051A90
	movs r4, #0x00
	bl sub_802DC88
	cmp r0, #0x00
	bne _08051A48
	movs r4, #0x01
_08051A48:
	ldr r1, _08051A88 @ =0x03002C80
	ldrb r0, [r1, #0x16]
	cmp r0, #0x01
	beq _08051A52
	movs r4, #0x01
_08051A52:
	ldrb r0, [r1, #0x01]
	ldrb r5, [r5, #0x00]
	cmp r0, r5
	beq _08051A5C
	movs r4, #0x01
_08051A5C:
	cmp r4, #0x00
	beq _08051A90
	movs r0, #0x0C
	ldr r1, [sp, #0x008]
	strb r0, [r1, #0x00]
	ldr r1, _08051A8C @ =0x03005C50
	movs r0, #0x01
	str r0, [r1, #0x00]
	b _08051D3A
	.align 2, 0
_08051A70: .4byte sub_80520D4
_08051A74: .4byte 0x03004F70
_08051A78: .4byte sub_8052168
_08051A7C: .4byte sub_80521C4
_08051A80: .4byte 0x03002E44
_08051A84: .4byte 0x000007D7
_08051A88: .4byte 0x03002C80
_08051A8C: .4byte 0x03005C50
_08051A90:
	movs r6, #0x00
	ldr r2, _08051BB8 @ =0x03004EA0
	mov r12, r2
	movs r3, #0x10
	mov r10, r3
	movs r4, #0x80
	mov r9, r4
	movs r7, #0x40
	mov r8, r7
_08051AA2:
	movs r1, #0x00
	lsls r5, r6, #0x01
	ldr r2, _08051BBC @ =0x03004F30
	adds r0, r5, r2
	ldrh r2, [r0, #0x00]
	adds r0, r2, #0x0
	mov r3, r10
	ands r0, r3
	cmp r0, #0x00
	beq _08051ABA
	movs r1, #0x80
	lsls r1, r1, #0x01
_08051ABA:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0x00
	beq _08051ACA
	movs r4, #0x80
	lsls r4, r4, #0x02
	adds r0, r4, #0x0
	orrs r1, r0
_08051ACA:
	adds r0, r2, #0x0
	mov r7, r9
	ands r0, r7
	cmp r0, #0x00
	beq _08051AE0
	movs r3, #0x80
	lsls r3, r3, #0x03
	adds r0, r3, #0x0
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
_08051AE0:
	adds r0, r2, #0x0
	mov r4, r8
	ands r0, r4
	cmp r0, #0x00
	beq _08051AF6
	movs r7, #0x80
	lsls r7, r7, #0x04
	adds r0, r7, #0x0
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
_08051AF6:
	movs r0, #0x02
	ands r0, r2
	cmp r0, #0x00
	beq _08051B0A
	movs r3, #0x80
	lsls r3, r3, #0x07
	adds r0, r3, #0x0
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
_08051B0A:
	movs r7, #0x01
	adds r0, r2, #0x0
	ands r0, r7
	cmp r0, #0x00
	beq _08051B20
	movs r4, #0x80
	lsls r4, r4, #0x08
	adds r0, r4, #0x0
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
_08051B20:
	movs r3, #0x80
	lsls r3, r3, #0x01
	adds r0, r2, #0x0
	ands r0, r3
	cmp r0, #0x00
	beq _08051B30
	mov r0, r10
	orrs r1, r0
_08051B30:
	movs r4, #0x80
	lsls r4, r4, #0x02
	ands r2, r4
	cmp r2, #0x00
	beq _08051B3E
	mov r2, r8
	orrs r1, r2
_08051B3E:
	mov r2, r12
	adds r0, r5, r2
	ldrh r2, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r3
	cmp r0, #0x00
	beq _08051B54
	movs r0, #0x04
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
_08051B54:
	adds r0, r2, #0x0
	ands r0, r4
	cmp r0, #0x00
	beq _08051B60
	mov r3, r9
	orrs r1, r3
_08051B60:
	movs r0, #0x04
	ands r0, r2
	cmp r0, #0x00
	beq _08051B74
	movs r4, #0x80
	lsls r4, r4, #0x06
	adds r0, r4, #0x0
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
_08051B74:
	movs r3, #0x08
	ands r2, r3
	cmp r2, #0x00
	beq _08051B88
	movs r2, #0x80
	lsls r2, r2, #0x05
	adds r0, r2, #0x0
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
_08051B88:
	ldr r4, _08051BC0 @ =0x03002E44
	ldr r2, _08051BC4 @ =0x0000081C
	adds r0, r4, r2
	adds r0, r0, r5
	strh r1, [r0, #0x00]
	adds r6, #0x01
	cmp r6, #0x03
	ble _08051AA2
	ldr r4, [sp, #0x004]
	ldrb r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08051BCC
	ldr r0, _08051BC0 @ =0x03002E44
	bl sub_802D07C
	cmp r0, #0x00
	beq _08051BB0
	b _08051D3A
_08051BB0:
	ldr r0, _08051BC8 @ =0x03005C50
	str r7, [r0, #0x00]
	b _08051D3A
	.align 2, 0
_08051BB8: .4byte 0x03004EA0
_08051BBC: .4byte 0x03004F30
_08051BC0: .4byte 0x03002E44
_08051BC4: .4byte 0x0000081C
_08051BC8: .4byte 0x03005C50
_08051BCC:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0x00
	beq _08051BEC
	movs r0, #0x0F
	ands r0, r1
	cmp r0, #0x03
	bne _08051BEC
	mov r7, r12
	ldrh r0, [r7, #0x00]
	ands r0, r3
	cmp r0, #0x00
	beq _08051BEC
	ldr r0, _08051D68 @ =0x03002E44
	bl sub_802BF94
_08051BEC:
	ldr r4, _08051D6C @ =0x03002E20
	ldr r0, [r4, #0x10]
	adds r0, #0x01
	str r0, [r4, #0x10]
	bl sub_8043840
	bl sub_804D8F8
	ldr r0, _08051D68 @ =0x03002E44
	bl sub_804A4D8
	ldr r0, [sp, #0x000]
	cmp r0, #0x00
	beq _08051C12
	ldr r0, _08051D70 @ =0x03005C50
	ldr r0, [r0, #0x00]
	cmp r0, #0x00
	beq _08051C12
	b _08051D3A
_08051C12:
	ldr r0, _08051D68 @ =0x03002E44
	bl sub_804978C
	ldr r0, _08051D68 @ =0x03002E44
	bl sub_804AEFC
	bl sub_8051014
	bl sub_80484E0
	ldr r0, _08051D68 @ =0x03002E44
	bl sub_8049850
	ldr r0, _08051D68 @ =0x03002E44
	bl sub_804A878
	ldr r0, _08051D68 @ =0x03002E44
	bl sub_804C0A8
	ldr r0, _08051D68 @ =0x03002E44
	bl sub_8049B0C
	ldr r0, _08051D68 @ =0x03002E44
	bl sub_8049D78
	ldr r0, _08051D68 @ =0x03002E44
	bl sub_804C38C
	bl sub_804389C
	ldr r1, _08051D68 @ =0x03002E44
	ldr r2, _08051D74 @ =0x000007DA
	adds r0, r1, r2
	ldrh r1, [r0, #0x00]
	movs r3, #0xF0
	lsls r3, r3, #0x04
	adds r0, r3, #0x0
	ands r0, r1
	movs r7, #0x80
	lsls r7, r7, #0x02
	cmp r0, r7
	bne _08051D2A
	ldr r0, [r4, #0x10]
	ldr r2, _08051D78 @ =0x080E645C
	lsls r0, r0, #0x1A
	asrs r0, r0, #0x10
	cmp r0, #0x00
	bge _08051C74
	adds r0, #0x3F
_08051C74:
	asrs r1, r0, #0x06
	movs r0, #0x80
	lsls r0, r0, #0x01
	subs r0, r0, r1
	ldr r1, _08051D7C @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #0x02
	adds r0, r0, r2
	ldr r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x08
	subs r0, r0, r1
	lsrs r1, r0, #0x1F
	adds r0, r0, r1
	asrs r0, r0, #0x01
	mov r8, r0
	movs r0, #0x00
	mov r10, r0
	movs r1, #0x1F
	mov r9, r1
_08051C9C:
	ldr r0, _08051D80 @ =0x080AADFC
	mov r2, r10
	lsls r3, r2, #0x01
	adds r0, r3, r0
	ldrh r4, [r0, #0x00]
	adds r6, r4, #0x0
	movs r7, #0x1F
	ands r6, r7
	lsrs r5, r4, #0x05
	mov r0, r9
	ands r5, r0
	lsrs r4, r4, #0x0A
	ands r4, r0
	ldr r0, _08051D84 @ =0x080AAE1C
	adds r0, r3, r0
	ldrh r2, [r0, #0x00]
	adds r0, r2, #0x0
	ands r0, r7
	lsrs r1, r2, #0x05
	mov r7, r9
	ands r1, r7
	lsrs r2, r2, #0x0A
	ands r2, r7
	subs r0, r0, r6
	mov r7, r8
	muls r7, r0
	adds r0, r7, #0x0
	asrs r0, r0, #0x0F
	adds r6, r6, r0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	subs r1, r1, r5
	mov r0, r8
	muls r0, r1
	asrs r0, r0, #0x0F
	adds r5, r5, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	subs r2, r2, r4
	mov r0, r8
	muls r0, r2
	asrs r0, r0, #0x0F
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x00
	str r3, [sp, #0x010]
	bl pltt_getBuffer
	ldr r3, [sp, #0x010]
	adds r3, r3, r0
	movs r0, #0xA0
	lsls r0, r0, #0x01
	adds r3, r3, r0
	movs r1, #0x1F
	ands r6, r1
	ands r5, r1
	lsls r5, r5, #0x05
	orrs r6, r5
	ands r4, r1
	lsls r4, r4, #0x0A
	orrs r6, r4
	strh r6, [r3, #0x00]
	movs r2, #0x01
	add r10, r2
	mov r3, r10
	cmp r3, #0x0F
	ble _08051C9C
	movs r0, #0x01
	bl pltt_setDirtyFlag
_08051D2A:
	ldr r4, [sp, #0x004]
	ldrb r1, [r4, #0x00]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0x00
	beq _08051D3A
	bl m4aMPlayAllStop
_08051D3A:
	ldr r7, [sp, #0x000]
	cmp r7, #0x00
	beq _08051D42
	b _08051940
_08051D42:
	ldr r0, _08051D88 @ =0x03004F70
	ldrb r1, [r0, #0x0C]
	movs r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08051D50
	b _08051940
_08051D50:
	movs r4, #0x00
	movs r7, #0x00
	ldr r2, [sp, #0x00C]
	ldr r1, [r2, #0x00]
	cmp r1, #0x00
	bge _08051D8C
	movs r0, #0x80
	lsls r0, r0, #0x17
	ands r1, r0
	cmp r1, #0x00
	beq _08051DB0
	b _08051DAA
_08051D68: .4byte 0x03002E44
_08051D6C: .4byte 0x03002E20
_08051D70: .4byte 0x03005C50
_08051D74: .4byte 0x000007DA
_08051D78: .4byte gSinTable
_08051D7C: .4byte 0x000003FF
_08051D80: .4byte 0x080AADFC
_08051D84: .4byte 0x080AAE1C
_08051D88: .4byte 0x03004F70
_08051D8C:
	ldr r3, _08051DC8 @ =0x03002E44
	ldr r1, _08051DCC @ =0x000007DA
	adds r0, r3, r1
	ldrh r1, [r0, #0x00]
	movs r0, #0x80
	lsls r0, r0, #0x02
	ands r0, r1
	cmp r0, #0x00
	beq _08051DB0
	ldr r2, [sp, #0x008]
	ldrb r0, [r2, #0x00]
	cmp r0, #0x05
	bgt _08051DB0
	cmp r0, #0x02
	blt _08051DB0
_08051DAA:
	bl sub_801531C
	adds r7, r0, #0x0
_08051DB0:
	ldr r3, [sp, #0x008]
	ldrb r0, [r3, #0x00]
	subs r0, #0x01
	cmp r0, #0x0B
	bls _08051DBC
	b _08051ED2
_08051DBC:
	lsls r0, r0, #0x02
	ldr r1, _08051DD0 @ =0x08051DD4
	adds r0, r0, r1
	ldr r0, [r0, #0x00]
	mov pc, r0
	.align 2, 0
_08051DC8: .4byte 0x03002E44
_08051DCC: .4byte 0x000007DA
_08051DD0: .4byte _08051DD4
_08051DD4: @ jump table
	.4byte _08051E04 @ case 0
	.4byte _08051E50 @ case 1
	.4byte _08051E64 @ case 2
	.4byte _08051E78 @ case 3
	.4byte _08051ED0 @ case 4
	.4byte _08051EA0 @ case 5
	.4byte _08051EAC @ case 6
	.4byte _08051E8C @ case 7
	.4byte _08051EB4 @ case 8
	.4byte _08051ED2 @ case 9
	.4byte _08051ED2 @ case 10
	.4byte _08051EC8 @ case 11
_08051E04:
	ldr r4, [sp, #4]
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _08051E44 @ =0x03002E44
	ldr r1, _08051E48 @ =0x000007DA
	adds r5, r0, r1
	ldrh r0, [r5]
	movs r4, #0xf0
	lsls r4, r4, #4
	ands r4, r0
	ldr r0, _08051E44 @ =0x03002E44
	bl sub_8002B68
	ldrh r0, [r5]
	ldr r2, _08051E4C @ =0x00007FFF
	ands r2, r0
	strh r2, [r5]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r4, r0
	bne _08051E92
	cmp r6, #0
	beq _08051E92
	movs r1, #0x80
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5]
	b _08051E92
	.align 2, 0
_08051E44: .4byte 0x03002E44
_08051E48: .4byte 0x000007DA
_08051E4C: .4byte 0x00007FFF
_08051E50:
	ldr r0, _08051E5C @ =0x03002E44
	bl sub_8002BD4
	ldr r4, _08051E60 @ =spm_main
	b _08051ED2
	.align 2, 0
_08051E5C: .4byte 0x03002E44
_08051E60: .4byte spm_main
_08051E64:
	ldr r0, _08051E70 @ =0x03002E44
	bl sub_8002BE8
	ldr r4, _08051E74 @ =spm_main
	b _08051ED2
	.align 2, 0
_08051E70: .4byte 0x03002E44
_08051E74: .4byte spm_main
_08051E78:
	ldr r0, _08051E84 @ =0x03002E44
	bl sub_8002BFC
	ldr r4, _08051E88 @ =spm_main
	b _08051ED2
	.align 2, 0
_08051E84: .4byte 0x03002E44
_08051E88: .4byte spm_main
_08051E8C:
	ldr r0, _08051E98 @ =0x03002E44
	bl sub_8001CA8
_08051E92:
	ldr r4, _08051E9C @ =race_main
	b _08051ED2
	.align 2, 0
_08051E98: .4byte 0x03002E44
_08051E9C: .4byte race_main
_08051EA0:
	ldr r0, _08051EA8 @ =0x03002E44
	bl sub_8001D74
	b _08051E92
	.align 2, 0
_08051EA8: .4byte 0x03002E44
_08051EAC:
	ldr r4, _08051EB0 @ =sub_8028B90
	b _08051ED2
	.align 2, 0
_08051EB0: .4byte sub_8028B90
_08051EB4:
	ldr r0, _08051EC0 @ =0x03002E44
	bl sub_8002C10
	ldr r4, _08051EC4 @ =spm_main
	b _08051ED2
	.align 2, 0
_08051EC0: .4byte 0x03002E44
_08051EC4: .4byte spm_main
_08051EC8:
	ldr r4, _08051ECC @ =error_main
	b _08051ED2
	.align 2, 0
_08051ECC: .4byte error_main
_08051ED0:
	ldr r4, _08051EF0 @ =title_main
_08051ED2:
	cmp r7, #0x00
	beq _08051EFC
	adds r0, r4, #0x0
	bl sub_8015330
	ldr r0, _08051EF4 @ =0x080149AD
	ldr r2, _08051EF8 @ =0x03002E20
	str r0, [r2, #0x00]
	ldrb r0, [r2, #0x08]
	adds r0, #0x01
	movs r1, #0x07
	ands r0, r1
	strb r0, [r2, #0x08]
	b _08051F0A
	.align 2, 0
_08051EF0: .4byte title_main
_08051EF4: .4byte sub_80149AC
_08051EF8: .4byte 0x03002E20
_08051EFC:
	ldr r0, _08051F70 @ =0x03002E20
	str r4, [r0, #0x00]
	ldrb r1, [r0, #0x08]
	adds r1, #0x01
	movs r2, #0x07
	ands r1, r2
	strb r1, [r0, #0x08]
_08051F0A:
	movs r0, #0x01
	bl oam_802FE4C
	ldr r0, _08051F74 @ =0x0000000B
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x00
	beq _08051F30
	ldr r5, _08051F78 @ =0x08102414
	adds r4, r0, #0x0
_08051F1E:
	ldr r0, [r5, #0x00]
	ldr r1, _08051F7C @ =0x08102498
	ldr r1, [r1, #0x08]
	bl MPlayStart
	adds r5, #0x0C
	subs r4, #0x01
	cmp r4, #0x00
	bne _08051F1E
_08051F30:
	bl main_frameProc
	movs r1, #0x05
	negs r1, r1
	movs r0, #0x01
	bl irq_updateMask
	movs r5, #0x00
	ldr r4, _08051F70 @ =0x03002E20
	movs r0, #0x01
	movs r1, #0x02
	negs r1, r1
	bl irq_updateMask
	str r5, [r4, #0x0C]
	movs r0, #0x02
	ldr r1, _08051F80 @ =0x00010001
	bl irq_updateMask
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r5, [r0, #0x00]
	movs r0, #0x01
	add sp, #0x014
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08051F70: .4byte 0x03002E20
_08051F74: .4byte 0x0000000B
_08051F78: .4byte 0x08102414
_08051F7C: .4byte 0x08102498
_08051F80: .4byte 0x00010001
