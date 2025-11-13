	.include "asm/macros.inc"

	.syntax unified
	.text
	thumb_func_start sub_08001A84
sub_08001A84: @ 0x08001A84
	push {r4, lr}
	ldr r1, _08001AB4 @ =0x030029D4
	movs r0, #0
	strb r0, [r1]
	movs r1, #0
	ldr r4, _08001AB8 @ =0x03002C40
	movs r3, #0
_08001A92:
	lsls r0, r1, #2
	adds r2, r1, #1
	movs r1, #3
	adds r0, r0, r4
	adds r0, #3
_08001A9C:
	strb r3, [r0]
	subs r0, #1
	subs r1, #1
	cmp r1, #0
	bge _08001A9C
	adds r1, r2, #0
	cmp r1, #3
	ble _08001A92
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08001AB4: .4byte 0x030029D4
_08001AB8: .4byte 0x03002C40

	thumb_func_start sub_08001ABC
sub_08001ABC: @ 0x08001ABC
	ldr r1, _08001AD4 @ =0x030029B4
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08001AD8 @ =0x03002C58
	movs r2, #0
	adds r0, r1, #3
_08001AC8:
	strb r2, [r0]
	subs r0, #1
	cmp r0, r1
	bge _08001AC8
	bx lr
	.align 2, 0
_08001AD4: .4byte 0x030029B4
_08001AD8: .4byte 0x03002C58

	thumb_func_start sub_8001ADC
sub_8001ADC: @ 0x08001ADC
	push {r4, r5, lr}
	ldr r1, _08001B20 @ =0x030029D4
	movs r0, #0
	strb r0, [r1]
	movs r1, #0
	ldr r5, _08001B24 @ =0x030029B4
	ldr r4, _08001B28 @ =0x03002C40
	movs r3, #0
_08001AEC:
	lsls r0, r1, #2
	adds r2, r1, #1
	movs r1, #3
	adds r0, r0, r4
	adds r0, #3
_08001AF6:
	strb r3, [r0]
	subs r0, #1
	subs r1, #1
	cmp r1, #0
	bge _08001AF6
	adds r1, r2, #0
	cmp r1, #3
	ble _08001AEC
	movs r0, #0
	strb r0, [r5]
	ldr r1, _08001B2C @ =0x03002C58
	movs r2, #0
	adds r0, r1, #3
_08001B10:
	strb r2, [r0]
	subs r0, #1
	cmp r0, r1
	bge _08001B10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001B20: .4byte 0x030029D4
_08001B24: .4byte 0x030029B4
_08001B28: .4byte 0x03002C40
_08001B2C: .4byte 0x03002C58

