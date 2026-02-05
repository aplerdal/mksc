	.include "asm/macros.inc"

	.syntax unified
	.section .rodata

	.global dword_81E9B1C
dword_81E9B1C: @ 0x081E9B1C
	.incbin "baserom.gba", 0x001E9B1C, 0x000000B0

	.global dword_81E9BCC
dword_81E9BCC: @ 0x081E9BCC
	.incbin "baserom.gba", 0x001E9BCC, 0x0000005C

	.space 0x4A3D8, 0xFF
