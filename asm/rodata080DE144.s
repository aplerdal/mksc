	.include "asm/macros.inc"

	.syntax unified
	.section .rodata
	
	.global _080DE144
_080DE144:
	.incbin "baserom.gba", 0x000DE144, 0x00000038

	.global _080DE17C
_080DE17C:
	.incbin "baserom.gba", 0x000DE17C, 0x0000004C

	.global _080DE1C8
_080DE1C8:
	.incbin "baserom.gba", 0x000DE1C8, 0x00000024

	.global _080DE1EC
_080DE1EC:
	.incbin "baserom.gba", 0x000DE1EC, 0x0000010E

	.global _080DE2FA
_080DE2FA:
	.incbin "baserom.gba", 0x000DE2FA, 0x00000102

	.global _080DE3FC
_080DE3FC:
	.incbin "baserom.gba", 0x000DE3FC, 0x00008000
