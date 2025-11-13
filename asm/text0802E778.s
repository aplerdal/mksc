	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start sub_802E778
sub_802E778: @ 0x0802E778
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	cmp r0, #0
	bge _0802E788
	rsbs r0, r0, #0
_0802E788:
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	cmp r1, #0
	bge _0802E794
	rsbs r1, r1, #0
_0802E794:
	adds r6, r1, #0
	movs r7, #0
	ldr r2, [sp, #4]
	cmp r7, r2
	bhi _0802E7A8
	cmp r7, r2
	bne _0802E7B4
	ldr r3, [sp]
	cmp r6, r3
	bls _0802E7B4
_0802E7A8:
	ldr r4, [sp]
	ldr r5, [sp, #4]
	str r6, [sp]
	str r7, [sp, #4]
	adds r7, r5, #0
	adds r6, r4, #0
_0802E7B4:
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	bne _0802E7C0
	ldr r0, [sp]
	b _0802E89E
_0802E7C0:
	ldr r0, [sp, #4]
	cmp r0, #0
	bhi _0802E7D6
	cmp r0, #0
	bne _0802E7D0
	ldr r2, [sp]
	cmp r2, #0xff
	bhi _0802E7D6
_0802E7D0:
	movs r3, #0x10
	mov sb, r3
	b _0802E7DA
_0802E7D6:
	movs r0, #0
	mov sb, r0
_0802E7DA:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	mov r2, sb
	bl __ashldi3
	str r0, [sp]
	str r1, [sp, #4]
	adds r1, r7, #0
	adds r0, r6, #0
	mov r2, sb
	bl __ashldi3
	adds r7, r1, #0
	adds r6, r0, #0
	movs r2, #0
	mov r8, r2
_0802E7FA:
	lsrs r3, r6, #0x10
	lsls r2, r7, #0x10
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r6, #0x10
	ldr r2, [sp]
	ldr r3, [sp, #4]
	bl __udivdi3
	adds r5, r1, #0
	adds r4, r0, #0
	adds r3, r5, #0
	adds r2, r4, #0
	bl __muldi3
	lsls r3, r1, #0x10
	lsrs r2, r0, #0x10
	adds r4, r3, #0
	orrs r4, r2
	lsrs r5, r1, #0x10
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	ldr r3, _0802E8B0 @ =0x00000000
	ldr r2, _0802E8AC @ =0x00040000
	adds r2, r2, r4
	adcs r3, r5
	lsls r5, r3, #0x18
	lsrs r4, r2, #8
	adds r2, r5, #0
	orrs r2, r4
	lsrs r3, r3, #8
	bl __udivdi3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	adds r3, r5, #0
	adds r2, r4, #0
	bl __muldi3
	lsls r3, r1, #0x11
	lsrs r2, r0, #0xf
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r1, #0xf
	ldr r2, [sp]
	ldr r3, [sp, #4]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp]
	str r3, [sp, #4]
	adds r1, r7, #0
	adds r0, r6, #0
	adds r3, r5, #0
	adds r2, r4, #0
	bl __muldi3
	lsls r3, r1, #0x10
	lsrs r2, r0, #0x10
	adds r6, r3, #0
	orrs r6, r2
	lsrs r7, r1, #0x10
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #2
	bls _0802E7FA
	ldr r0, [sp]
	ldr r1, [sp, #4]
	mov r2, sb
	bl __lshrdi3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, _0802E8B4 @ =0x7FFFFFFF
	ands r0, r4
_0802E89E:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802E8AC: .4byte 0x00040000
_0802E8B0: .4byte 0x00000000
_0802E8B4: .4byte 0x7FFFFFFF

	thumb_func_start sub_802E8B8
sub_802E8B8: @ 0x0802E8B8
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	lsls r4, r5, #0x10
	asrs r2, r4, #0x10
	cmp r2, #0
	bne _0802E8E2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _0802E8D8
	movs r0, #0x80
	lsls r0, r0, #7
	b _0802EA92
_0802E8D8:
	cmp r0, #0
	bge _0802E8F0
	movs r0, #0xc0
	lsls r0, r0, #8
	b _0802EA92
_0802E8E2:
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	adds r1, r0, #0
	cmp r3, #0
	bne _0802E8FE
	cmp r2, #0
	ble _0802E8F4
_0802E8F0:
	movs r0, #0
	b _0802EA92
_0802E8F4:
	cmp r2, #0
	bge _0802E8F0
	movs r0, #0x80
	lsls r0, r0, #8
	b _0802EA92
_0802E8FE:
	movs r0, #1
	mov ip, r0
	movs r7, #1
	movs r6, #0
	movs r0, #0
	cmp r2, #0
	blt _0802E93A
	cmp r3, #0
	blt _0802E936
	cmp r2, r3
	ble _0802E91E
	lsrs r4, r4, #0x10
	mov ip, r4
	lsrs r7, r1, #0x10
	movs r0, #1
	b _0802E9EA
_0802E91E:
	cmp r2, r3
	bge _0802E930
	lsrs r1, r1, #0x10
	mov ip, r1
	lsrs r7, r4, #0x10
	movs r6, #0x80
	lsls r6, r6, #7
	movs r0, #0xff
	b _0802E9EA
_0802E930:
	movs r6, #0x80
	lsls r6, r6, #6
	b _0802E9EA
_0802E936:
	cmp r2, #0
	bgt _0802E9B4
_0802E93A:
	asrs r2, r1, #0x10
	cmp r2, #0
	blt _0802E974
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	cmp r0, r2
	bge _0802E95A
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r6, #0x80
	lsls r6, r6, #7
	movs r0, #1
	b _0802E9EA
_0802E95A:
	cmp r0, r2
	ble _0802E96E
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	lsrs r7, r1, #0x10
	movs r6, #0x80
	lsls r6, r6, #8
	movs r0, #0xff
	b _0802E9EA
_0802E96E:
	movs r6, #0xc0
	lsls r6, r6, #7
	b _0802E9E8
_0802E974:
	lsls r0, r5, #0x10
	asrs r3, r0, #0x10
	adds r4, r0, #0
	cmp r3, #0
	bgt _0802E9B4
	rsbs r3, r3, #0
	rsbs r2, r2, #0
	cmp r3, r2
	ble _0802E998
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	lsls r0, r2, #0x10
	lsrs r7, r0, #0x10
	movs r6, #0x80
	lsls r6, r6, #8
	movs r0, #1
	b _0802E9EA
_0802E998:
	cmp r3, r2
	bge _0802E9AE
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	lsls r0, r3, #0x10
	lsrs r7, r0, #0x10
	movs r6, #0xc0
	lsls r6, r6, #8
	movs r0, #0xff
	b _0802E9EA
_0802E9AE:
	movs r6, #0xa0
	lsls r6, r6, #8
	b _0802E9E8
_0802E9B4:
	adds r3, r4, #0
	asrs r2, r3, #0x10
	asrs r0, r1, #0x10
	rsbs r0, r0, #0
	cmp r2, r0
	bge _0802E9D0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	lsrs r7, r3, #0x10
	movs r6, #0xc0
	lsls r6, r6, #8
	movs r0, #1
	b _0802E9EA
_0802E9D0:
	cmp r2, r0
	ble _0802E9E4
	lsrs r4, r4, #0x10
	mov ip, r4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r6, #0x80
	lsls r6, r6, #9
	movs r0, #0xff
	b _0802E9EA
_0802E9E4:
	movs r6, #0xe0
	lsls r6, r6, #8
_0802E9E8:
	movs r0, #0
_0802E9EA:
	cmp r0, #1
	beq _0802E9F4
	cmp r0, #0xff
	beq _0802EA44
	b _0802EA8E
_0802E9F4:
	lsls r0, r7, #0x10
	mov r1, ip
	bl Div
	adds r5, r0, #0
	cmp r5, #0
	bne _0802EA06
	movs r0, #0
	b _0802EA38
_0802EA06:
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r5, r0
	bne _0802EA14
	movs r0, #0x80
	lsls r0, r0, #6
	b _0802EA38
_0802EA14:
	lsrs r1, r5, #8
	movs r2, #0xff
	ands r1, r2
	ands r5, r2
	ldr r3, _0802EA40 @ =_080DE1EC
	lsls r0, r1, #1
	adds r0, r0, r3
	ldrh r4, [r0]
	adds r1, #1
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r0, [r1]
	subs r0, r0, r4
	ands r0, r2
	muls r0, r5, r0
	asrs r0, r0, #8
	ands r0, r2
	adds r0, r4, r0
_0802EA38:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r6, r6, r0
	b _0802EA8E
	.align 2, 0
_0802EA40: .4byte _080DE1EC
_0802EA44:
	lsls r0, r7, #0x10
	mov r1, ip
	bl Div
	adds r5, r0, #0
	cmp r5, #0
	bne _0802EA56
	movs r0, #0
	b _0802EA88
_0802EA56:
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r5, r0
	bne _0802EA64
	movs r0, #0x80
	lsls r0, r0, #6
	b _0802EA88
_0802EA64:
	lsrs r1, r5, #8
	movs r2, #0xff
	ands r1, r2
	ands r5, r2
	ldr r3, _0802EA98 @ =_080DE1EC
	lsls r0, r1, #1
	adds r0, r0, r3
	ldrh r4, [r0]
	adds r1, #1
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r0, [r1]
	subs r0, r0, r4
	ands r0, r2
	muls r0, r5, r0
	asrs r0, r0, #8
	ands r0, r2
	adds r0, r4, r0
_0802EA88:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r6, r6, r0
_0802EA8E:
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
_0802EA92:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802EA98: .4byte _080DE1EC

	thumb_func_start sub_802EA9C
sub_802EA9C: @ 0x0802EA9C
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0
	bne _0802EAA8
	movs r0, #0
	b _0802EAE4
_0802EAA8:
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r4, r0
	beq _0802EAE0
	lsrs r1, r4, #8
	movs r2, #0xff
	ands r1, r2
	ands r4, r2
	ldr r3, _0802EADC @ =_080DE1EC
	lsls r0, r1, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	adds r1, #1
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r1, [r1]
	subs r1, r1, r0
	ands r1, r2
	muls r1, r4, r1
	asrs r1, r1, #8
	ands r1, r2
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0802EAE4
	.align 2, 0
_0802EADC: .4byte _080DE1EC
_0802EAE0:
	movs r0, #0x80
	lsls r0, r0, #6
_0802EAE4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_802EAEC
sub_802EAEC: @ 0x0802EAEC
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	movs r6, #0
	movs r5, #0
	lsrs r3, r0, #0x10
	cmp r0, #0
	ble _0802EB0A
	lsls r1, r4, #0x10
	asrs r0, r1, #0x10
	mvns r0, r0
	lsrs r2, r0, #0x1f
	adds r0, r1, #0
	b _0802EB14
_0802EB0A:
	lsls r0, r4, #0x10
	movs r2, #3
	cmp r0, #0
	ble _0802EB14
	movs r2, #2
_0802EB14:
	cmp r2, #1
	beq _0802EB30
	cmp r2, #1
	bgt _0802EB22
	cmp r2, #0
	beq _0802EB2C
	b _0802EB74
_0802EB22:
	cmp r2, #2
	beq _0802EB42
	cmp r2, #3
	beq _0802EB56
	b _0802EB74
_0802EB2C:
	lsls r0, r3, #0x18
	b _0802EB6C
_0802EB30:
	cmp r0, #0
	bne _0802EB3A
	movs r0, #0x80
	lsls r0, r0, #7
	b _0802EBBA
_0802EB3A:
	lsls r0, r3, #0x18
	lsrs r6, r0, #0x18
	lsls r0, r4, #0x18
	b _0802EB72
_0802EB42:
	cmp r3, #0
	bne _0802EB4C
	movs r0, #0x80
	lsls r0, r0, #8
	b _0802EBBA
_0802EB4C:
	rsbs r0, r3, #0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r0, r4, #0x18
	b _0802EB72
_0802EB56:
	cmp r3, #0
	bne _0802EB5E
	movs r0, #0
	b _0802EBBA
_0802EB5E:
	cmp r0, #0
	bne _0802EB68
	movs r0, #0xc0
	lsls r0, r0, #8
	b _0802EBBA
_0802EB68:
	rsbs r0, r3, #0
	lsls r0, r0, #0x18
_0802EB6C:
	lsrs r6, r0, #0x18
	rsbs r0, r4, #0
	lsls r0, r0, #0x18
_0802EB72:
	lsrs r5, r0, #0x18
_0802EB74:
	ldr r1, _0802EB90 @ =_080DE3FC
	lsls r0, r5, #7
	subs r0, #0x81
	adds r0, r6, r0
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	cmp r2, #2
	beq _0802EBA0
	cmp r2, #2
	bgt _0802EB94
	cmp r2, #1
	beq _0802EB9A
	b _0802EBB6
	.align 2, 0
_0802EB90: .4byte _080DE3FC
_0802EB94:
	cmp r2, #3
	beq _0802EBB0
	b _0802EBB6
_0802EB9A:
	movs r0, #0x80
	lsls r0, r0, #8
	b _0802EBB4
_0802EBA0:
	movs r0, #0x80
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r0, _0802EBAC @ =0x0000FFFF
	ands r1, r0
	b _0802EBB6
	.align 2, 0
_0802EBAC: .4byte 0x0000FFFF
_0802EBB0:
	movs r0, #0x80
	lsls r0, r0, #9
_0802EBB4:
	subs r1, r0, r1
_0802EBB6:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
_0802EBBA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_802EBC0
sub_802EBC0: @ 0x0802EBC0
	push {r4, r5, r6, lr}
	cmp r0, #0
	bge _0802EBC8
	rsbs r0, r0, #0
_0802EBC8:
	ldr r2, _0802EC18 @ =0x7FFFFFFF
	adds r4, r2, #0
	ands r4, r0
	cmp r1, #0
	bge _0802EBD4
	rsbs r1, r1, #0
_0802EBD4:
	adds r5, r2, #0
	ands r5, r1
	cmp r4, r5
	bhs _0802EBE2
	adds r0, r4, #0
	adds r4, r5, #0
	adds r5, r0, #0
_0802EBE2:
	cmp r5, #0
	beq _0802EC0E
	movs r6, #2
_0802EBE8:
	adds r0, r5, #0
	adds r1, r4, #0
	bl Div
	adds r2, r0, #0
	adds r0, r2, #0
	muls r0, r2, r0
	adds r2, r0, #0
	adds r1, r2, #4
	bl Div
	adds r2, r0, #0
	lsls r0, r2, #1
	muls r0, r4, r0
	adds r4, r4, r0
	muls r5, r2, r5
	subs r6, #1
	cmp r6, #0
	bge _0802EBE8
_0802EC0E:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0802EC18: .4byte 0x7FFFFFFF

	thumb_func_start sub_0802EC1C
sub_0802EC1C: @ 0x0802EC1C
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1

	thumb_func_start sub_802EC38
sub_802EC38: @ 0x0802EC38
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x17
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
