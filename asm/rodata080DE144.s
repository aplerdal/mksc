	.include "asm/macros.inc"

	.syntax unified
	.section .rodata
	
	.global _080DE144
_080DE144: .4byte main_dummyIrqHandler

	.global _080DE148
_080DE148: .4byte main_dummyIrqHandler

	.global _080DE14C
_080DE14C: .4byte main_dummyIrqHandler

	.global _080DE150
_080DE150: .4byte main_dummyIrqHandler

	.global _080DE154
_080DE154: .4byte main_dummyIrqHandler

	.global _080DE158
_080DE158: .4byte main_dummyIrqHandler

	.global _080DE15C
_080DE15C: .4byte main_dummyIrqHandler

	.global _080DE160
_080DE160: .4byte main_dummyIrqHandler

	.global _080DE164
_080DE164: .4byte main_dummyIrqHandler

	.global _080DE168
_080DE168: .4byte main_dummyIrqHandler

	.global _080DE16C
_080DE16C: .4byte main_dummyIrqHandler

	.global _080DE170
_080DE170: .4byte main_dummyIrqHandler

	.global _080DE174
_080DE174: .4byte main_dummyIrqHandler

	.global _080DE178
_080DE178: .4byte main_dummyIrqHandler

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