	.include "asm/macros.inc"

	.syntax unified
	.section .rodata

	.global gSinTable @ 0x080E645C
	.global gSinTable
gSinTable: @ 0x080E645C
	.incbin "baserom.gba", 0x000E645C, 0x00000020

	.global _080E647C
_080E647C:
	.incbin "baserom.gba", 0x000E647C, 0x00000020

	.global _080E649C
_080E649C:
	.incbin "baserom.gba", 0x000E649C, 0x00000380

	.global _080E681C
_080E681C:
	.incbin "baserom.gba", 0x000E681C, 0x00000040

	.global _080E685C
_080E685C:
	.incbin "baserom.gba", 0x000E685C, 0x00000180

	.global _080E69DC
_080E69DC:
	.incbin "baserom.gba", 0x000E69DC, 0x00000900

	.global _080E72DC
_080E72DC:
	.incbin "baserom.gba", 0x000E72DC, 0x00000180

	.global _080E745C
_080E745C:
	.incbin "baserom.gba", 0x000E745C, 0x00000008

	.global gMkscCups
gMkscCups: @ 0x080E7464
	.incbin "baserom.gba", 0x000E7464, 0x00000004

	.global _080E7468
_080E7468:
	.incbin "baserom.gba", 0x000E7468, 0x0000005C

	.global gRetroCups
gRetroCups: @ 0x080E74C4
	.incbin "baserom.gba", 0x000E74C4, 0x00000004

	.global _080E74C8
_080E74C8:
	.incbin "baserom.gba", 0x000E74C8, 0x0000004C

	.global gRetroBattleCup
gRetroBattleCup: @ 0x080E7514
	.incbin "baserom.gba", 0x000E7514, 0x00000010

	.global gBattleCup
gBattleCup: @ 0x080E7524
	.incbin "baserom.gba", 0x000E7524, 0x00000010

	.global _080E7534
_080E7534:
	.incbin "baserom.gba", 0x000E7534, 0x00000038

	.global _080E756C
_080E756C:
	.incbin "baserom.gba", 0x000E756C, 0x00000038

	.global _080E75A4
_080E75A4:
	.incbin "baserom.gba", 0x000E75A4, 0x00000038

	.global _080E75DC
_080E75DC:
	.incbin "baserom.gba", 0x000E75DC, 0x00000038

	.global _080E7614
_080E7614:
	.incbin "baserom.gba", 0x000E7614, 0x00000038

	.global _080E764C
_080E764C:
	.incbin "baserom.gba", 0x000E764C, 0x00000038

	.global _080E7684
_080E7684:
	.incbin "baserom.gba", 0x000E7684, 0x00000038

	.global _080E76BC
_080E76BC:
	.incbin "baserom.gba", 0x000E76BC, 0x00000038

	.global _080E76F4
_080E76F4:
	.incbin "baserom.gba", 0x000E76F4, 0x00000038

	.global _080E772C
_080E772C:
	.incbin "baserom.gba", 0x000E772C, 0x00000038

	.global _080E7764
_080E7764:
	.incbin "baserom.gba", 0x000E7764, 0x00000038

	.global _080E779C
_080E779C:
	.incbin "baserom.gba", 0x000E779C, 0x00000038

	.global _080E77D4
_080E77D4:
	.incbin "baserom.gba", 0x000E77D4, 0x00000038

	.global _080E780C
_080E780C:
	.incbin "baserom.gba", 0x000E780C, 0x00000038

	.global _080E7844
_080E7844:
	.incbin "baserom.gba", 0x000E7844, 0x00000038

	.global _080E787C
_080E787C:
	.incbin "baserom.gba", 0x000E787C, 0x00000038

	.global _080E78B4
_080E78B4:
	.incbin "baserom.gba", 0x000E78B4, 0x00000038

	.global _080E78EC
_080E78EC:
	.incbin "baserom.gba", 0x000E78EC, 0x00000038

	.global _080E7924
_080E7924:
	.incbin "baserom.gba", 0x000E7924, 0x00000038

	.global _080E795C
_080E795C:
	.incbin "baserom.gba", 0x000E795C, 0x00000068

	.global _080E79C4
_080E79C4:
	.incbin "baserom.gba", 0x000E79C4, 0x00000008

	.global _080E79CC
_080E79CC:
	.incbin "baserom.gba", 0x000E79CC, 0x00000030

	.global _080E79FC
_080E79FC:
	.incbin "baserom.gba", 0x000E79FC, 0x00000008

	.global _080E7A04
_080E7A04:
	.incbin "baserom.gba", 0x000E7A04, 0x00000038

	.global _080E7A3C
_080E7A3C:
	.incbin "baserom.gba", 0x000E7A3C, 0x00000038

	.global _080E7A74
_080E7A74:
	.incbin "baserom.gba", 0x000E7A74, 0x00000038

	.global _080E7AAC
_080E7AAC:
	.incbin "baserom.gba", 0x000E7AAC, 0x00000038

	.global _080E7AE4
_080E7AE4:
	.incbin "baserom.gba", 0x000E7AE4, 0x00000038

	.global _080E7B1C
_080E7B1C:
	.incbin "baserom.gba", 0x000E7B1C, 0x00000038

	.global _080E7B54
_080E7B54:
	.incbin "baserom.gba", 0x000E7B54, 0x00000038

	.global _080E7B8C
_080E7B8C:
	.incbin "baserom.gba", 0x000E7B8C, 0x00000038

	.global _080E7BC4
_080E7BC4:
	.incbin "baserom.gba", 0x000E7BC4, 0x00000038

	.global _080E7BFC
_080E7BFC:
	.incbin "baserom.gba", 0x000E7BFC, 0x00000038

	.global _080E7C34
_080E7C34:
	.incbin "baserom.gba", 0x000E7C34, 0x00000038

	.global _080E7C6C
_080E7C6C:
	.incbin "baserom.gba", 0x000E7C6C, 0x00000038

	.global _080E7CA4
_080E7CA4:
	.incbin "baserom.gba", 0x000E7CA4, 0x00000038

	.global _080E7CDC
_080E7CDC:
	.incbin "baserom.gba", 0x000E7CDC, 0x00000038

	.global _080E7D14
_080E7D14:
	.incbin "baserom.gba", 0x000E7D14, 0x00000038

	.global _080E7D4C
_080E7D4C:
	.incbin "baserom.gba", 0x000E7D4C, 0x00000038

	.global _080E7D84
_080E7D84:
	.incbin "baserom.gba", 0x000E7D84, 0x00000038

	.global _080E7DBC
_080E7DBC:
	.incbin "baserom.gba", 0x000E7DBC, 0x00000038

	.global _080E7DF4
_080E7DF4:
	.incbin "baserom.gba", 0x000E7DF4, 0x00000038

	.global _080E7E2C
_080E7E2C:
	.incbin "baserom.gba", 0x000E7E2C, 0x00000038

	.global _080E7E64
_080E7E64:
	.incbin "baserom.gba", 0x000E7E64, 0x00000038

	.global _080E7E9C
_080E7E9C:
	.incbin "baserom.gba", 0x000E7E9C, 0x00000038

	.global _080E7ED4
_080E7ED4:
	.incbin "baserom.gba", 0x000E7ED4, 0x00000038

	.global _080E7F0C
_080E7F0C:
	.incbin "baserom.gba", 0x000E7F0C, 0x00000038

	.global _080E7F44
_080E7F44:
	.incbin "baserom.gba", 0x000E7F44, 0x00000038

	.global _080E7F7C
_080E7F7C:
	.incbin "baserom.gba", 0x000E7F7C, 0x00000038

	.global _080E7FB4
_080E7FB4:
	.incbin "baserom.gba", 0x000E7FB4, 0x00000038

	.global gTrackDefTable
gTrackDefTable: @ 0x080E7FEC
	.incbin "baserom.gba", 0x000E7FEC, 0x00000060

	.global _080E804C
_080E804C:
	.incbin "baserom.gba", 0x000E804C, 0x00000080

	.global _080E80CC
_080E80CC:
	.incbin "baserom.gba", 0x000E80CC, 0x00000058

	.global _080E8124
_080E8124:
	.incbin "baserom.gba", 0x000E8124, 0x00000004

	.global _080E8128
_080E8128:
	.incbin "baserom.gba", 0x000E8128, 0x00000004

	.global _080E812C
_080E812C:
	.incbin "baserom.gba", 0x000E812C, 0x00000004

	.global _080E8130
_080E8130:
	.incbin "baserom.gba", 0x000E8130, 0x00000030

	.global _080E8160
_080E8160:
	.incbin "baserom.gba", 0x000E8160, 0x00000030

	.global _080E8190
_080E8190:
	.incbin "baserom.gba", 0x000E8190, 0x00000030

	.global _080E81C0
_080E81C0:
	.incbin "baserom.gba", 0x000E81C0, 0x00000008

	.global _080E81C8
_080E81C8:
	.incbin "baserom.gba", 0x000E81C8, 0x00000008

	.global _080E81D0
_080E81D0:
	.incbin "baserom.gba", 0x000E81D0, 0x00000008

	.global _080E81D8
_080E81D8:
	.incbin "baserom.gba", 0x000E81D8, 0x00000048

	.global _080E8220
_080E8220:
	.incbin "baserom.gba", 0x000E8220, 0x00000020

	.global _080E8240
_080E8240:
	.incbin "baserom.gba", 0x000E8240, 0x00000020

	.global _080E8260
_080E8260:
	.incbin "baserom.gba", 0x000E8260, 0x00000020

	.global _080E8280
_080E8280:
	.incbin "baserom.gba", 0x000E8280, 0x00000008

	.global _080E8288
_080E8288:
	.incbin "baserom.gba", 0x000E8288, 0x00000018

	.global _080E82A0
_080E82A0:
	.incbin "baserom.gba", 0x000E82A0, 0x00000048

	.global _080E82E8
_080E82E8:
	.incbin "baserom.gba", 0x000E82E8, 0x00000008

	.global _080E82F0
_080E82F0:
	.incbin "baserom.gba", 0x000E82F0, 0x00000020

	.global _080E8310
_080E8310:
	.incbin "baserom.gba", 0x000E8310, 0x00000012

	.global _080E8322
_080E8322:
	.incbin "baserom.gba", 0x000E8322, 0x00000040

	.global _080E8362
_080E8362:
	.incbin "baserom.gba", 0x000E8362, 0x00000012

	.global _080E8374
_080E8374:
	.incbin "baserom.gba", 0x000E8374, 0x00001800

	.global _080E9B74
_080E9B74:
	.incbin "baserom.gba", 0x000E9B74, 0x00001808

	.global _080EB37C
_080EB37C:
	.incbin "baserom.gba", 0x000EB37C, 0x00000010

	.global _080EB38C
_080EB38C:
	.incbin "baserom.gba", 0x000EB38C, 0x00000010

	.global _080EB39C
_080EB39C:
	.incbin "baserom.gba", 0x000EB39C, 0x00000384

	.global _080EB720
_080EB720:
	.incbin "baserom.gba", 0x000EB720, 0x00000018

	.global _080EB738
_080EB738:
	.incbin "baserom.gba", 0x000EB738, 0x00000018

	.global _080EB750
_080EB750:
	.incbin "baserom.gba", 0x000EB750, 0x00000018

	.global _080EB768
_080EB768:
	.incbin "baserom.gba", 0x000EB768, 0x00000018

	.global _080EB780
_080EB780:
	.incbin "baserom.gba", 0x000EB780, 0x00000018

	.global _080EB798
_080EB798:
	.incbin "baserom.gba", 0x000EB798, 0x00000018

	.global _080EB7B0
_080EB7B0:
	.incbin "baserom.gba", 0x000EB7B0, 0x00000018

	.global _080EB7C8
_080EB7C8:
	.incbin "baserom.gba", 0x000EB7C8, 0x00000018

	.global _080EB7E0
_080EB7E0:
	.incbin "baserom.gba", 0x000EB7E0, 0x00000018

	.global _080EB7F8
_080EB7F8:
	.incbin "baserom.gba", 0x000EB7F8, 0x00000018

	.global _080EB810
_080EB810:
	.incbin "baserom.gba", 0x000EB810, 0x00000018

	.global _080EB828
_080EB828:
	.incbin "baserom.gba", 0x000EB828, 0x00000018

	.global _080EB840
_080EB840:
	.incbin "baserom.gba", 0x000EB840, 0x00000018

	.global _080EB858
_080EB858:
	.incbin "baserom.gba", 0x000EB858, 0x00000018

	.global _080EB870
_080EB870:
	.incbin "baserom.gba", 0x000EB870, 0x00000018

	.global _080EB888
_080EB888:
	.incbin "baserom.gba", 0x000EB888, 0x00000018

	.global _080EB8A0
_080EB8A0:
	.incbin "baserom.gba", 0x000EB8A0, 0x00000018

	.global _080EB8B8
_080EB8B8:
	.incbin "baserom.gba", 0x000EB8B8, 0x00000018

	.global _080EB8D0
_080EB8D0:
	.incbin "baserom.gba", 0x000EB8D0, 0x00000018

	.global _080EB8E8
_080EB8E8:
	.incbin "baserom.gba", 0x000EB8E8, 0x000001F8

	.global _080EBAE0
_080EBAE0:
	.incbin "baserom.gba", 0x000EBAE0, 0x00000028

	.global _080EBB08
_080EBB08:
	.incbin "baserom.gba", 0x000EBB08, 0x00000028

	.global _080EBB30
_080EBB30:
	.incbin "baserom.gba", 0x000EBB30, 0x00000028

	.global _080EBB58
_080EBB58:
	.incbin "baserom.gba", 0x000EBB58, 0x00000028

	.global _080EBB80
_080EBB80:
	.incbin "baserom.gba", 0x000EBB80, 0x00000028

	.global _080EBBA8
_080EBBA8:
	.incbin "baserom.gba", 0x000EBBA8, 0x00000028

	.global _080EBBD0
_080EBBD0:
	.incbin "baserom.gba", 0x000EBBD0, 0x00000028

	.global _080EBBF8
_080EBBF8:
	.incbin "baserom.gba", 0x000EBBF8, 0x00000028

	.global _080EBC20
_080EBC20:
	.incbin "baserom.gba", 0x000EBC20, 0x00000028

	.global _080EBC48
_080EBC48:
	.incbin "baserom.gba", 0x000EBC48, 0x00000028

	.global _080EBC70
_080EBC70:
	.incbin "baserom.gba", 0x000EBC70, 0x00000028

	.global _080EBC98
_080EBC98:
	.incbin "baserom.gba", 0x000EBC98, 0x00000028

	.global _080EBCC0
_080EBCC0:
	.incbin "baserom.gba", 0x000EBCC0, 0x00000028

	.global _080EBCE8
_080EBCE8:
	.incbin "baserom.gba", 0x000EBCE8, 0x00000028

	.global _080EBD10
_080EBD10:
	.incbin "baserom.gba", 0x000EBD10, 0x00000028

	.global _080EBD38
_080EBD38:
	.incbin "baserom.gba", 0x000EBD38, 0x00000028

	.global _080EBD60
_080EBD60:
	.incbin "baserom.gba", 0x000EBD60, 0x000000C8

	.global _080EBE28
_080EBE28:
	.incbin "baserom.gba", 0x000EBE28, 0x00000002

	.global _080EBE2A
_080EBE2A:
	.incbin "baserom.gba", 0x000EBE2A, 0x00000002

	.global _080EBE2C
_080EBE2C:
	.incbin "baserom.gba", 0x000EBE2C, 0x00000002

	.global _080EBE2E
_080EBE2E:
	.incbin "baserom.gba", 0x000EBE2E, 0x00000002

	.global _080EBE30
_080EBE30:
	.incbin "baserom.gba", 0x000EBE30, 0x00000002

	.global _080EBE32
_080EBE32:
	.incbin "baserom.gba", 0x000EBE32, 0x00000002

	.global _080EBE34
_080EBE34:
	.incbin "baserom.gba", 0x000EBE34, 0x00000002

	.global _080EBE36
_080EBE36:
	.incbin "baserom.gba", 0x000EBE36, 0x00000072

	.global _080EBEA8
_080EBEA8:
	.incbin "baserom.gba", 0x000EBEA8, 0x00000010

	.global _080EBEB8
_080EBEB8:
	.incbin "baserom.gba", 0x000EBEB8, 0x00000010

	.global _080EBEC8
_080EBEC8:
	.incbin "baserom.gba", 0x000EBEC8, 0x00000080

	.global _080EBF48
_080EBF48:
	.incbin "baserom.gba", 0x000EBF48, 0x0000000E

	.global _080EBF56
_080EBF56:
	.incbin "baserom.gba", 0x000EBF56, 0x00000002

	.global _080EBF58
_080EBF58:
	.incbin "baserom.gba", 0x000EBF58, 0x00000020

	.global _080EBF78
_080EBF78:
	.incbin "baserom.gba", 0x000EBF78, 0x00000002

	.global _080EBF7A
_080EBF7A:
	.incbin "baserom.gba", 0x000EBF7A, 0x000000EC

	.global _080EC066
_080EC066:
	.incbin "baserom.gba", 0x000EC066, 0x00000012

	.global _080EC078
_080EC078:
	.incbin "baserom.gba", 0x000EC078, 0x00000060

	.global _080EC0D8
_080EC0D8:
	.incbin "baserom.gba", 0x000EC0D8, 0x00000002

	.global _080EC0DA
_080EC0DA:
	.incbin "baserom.gba", 0x000EC0DA, 0x00000002

	.global _080EC0DC
_080EC0DC:
	.incbin "baserom.gba", 0x000EC0DC, 0x00000002

	.global _080EC0DE
_080EC0DE:
	.incbin "baserom.gba", 0x000EC0DE, 0x00000002

	.global _080EC0E0
_080EC0E0:
	.incbin "baserom.gba", 0x000EC0E0, 0x00000002

	.global _080EC0E2
_080EC0E2:
	.incbin "baserom.gba", 0x000EC0E2, 0x000000F6

	.global _080EC1D8
_080EC1D8:
	.incbin "baserom.gba", 0x000EC1D8, 0x0000000E

	.global _080EC1E6
_080EC1E6:
	.incbin "baserom.gba", 0x000EC1E6, 0x00000002

	.global _080EC1E8
_080EC1E8:
	.incbin "baserom.gba", 0x000EC1E8, 0x00000040

	.global _080EC228
_080EC228:
	.incbin "baserom.gba", 0x000EC228, 0x00000020

	.global _080EC248
_080EC248:
	.incbin "baserom.gba", 0x000EC248, 0x0000001C

	.global _080EC264
_080EC264:
	.incbin "baserom.gba", 0x000EC264, 0x00000004

	.global _080EC268
_080EC268:
	.incbin "baserom.gba", 0x000EC268, 0x00000018

	.global _080EC280
_080EC280:
	.incbin "baserom.gba", 0x000EC280, 0x00000040

	.global _080EC2C0
_080EC2C0:
	.incbin "baserom.gba", 0x000EC2C0, 0x00000040

	.global _080EC300
_080EC300:
	.incbin "baserom.gba", 0x000EC300, 0x0000008F

	.global _080EC38F
_080EC38F:
	.incbin "baserom.gba", 0x000EC38F, 0x00000349

	.global _080EC6D8
_080EC6D8:
	.incbin "baserom.gba", 0x000EC6D8, 0x00000004

	.global _080EC6DC
_080EC6DC:
	.incbin "baserom.gba", 0x000EC6DC, 0x00000020

	.global _080EC6FC
_080EC6FC:
	.incbin "baserom.gba", 0x000EC6FC, 0x00000020

	.global _080EC71C
_080EC71C:
	.incbin "baserom.gba", 0x000EC71C, 0x00000014

	.global _080EC730
_080EC730:
	.incbin "baserom.gba", 0x000EC730, 0x00000020

	.global _080EC750
_080EC750:
	.incbin "baserom.gba", 0x000EC750, 0x00000020

	.global _080EC770
_080EC770:
	.incbin "baserom.gba", 0x000EC770, 0x00000008

	.global _080EC778
_080EC778:
	.incbin "baserom.gba", 0x000EC778, 0x00000008

	.global _080EC780
_080EC780:
	.incbin "baserom.gba", 0x000EC780, 0x00000008

	.global _080EC788
_080EC788:
	.incbin "baserom.gba", 0x000EC788, 0x00000008

	.global _080EC790
_080EC790:
	.incbin "baserom.gba", 0x000EC790, 0x00000020

	.global _080EC7B0
_080EC7B0:
	.incbin "baserom.gba", 0x000EC7B0, 0x0000000E

	.global _080EC7BE
_080EC7BE:
	.incbin "baserom.gba", 0x000EC7BE, 0x00000002

	.global _080EC7C0
_080EC7C0:
	.incbin "baserom.gba", 0x000EC7C0, 0x00000066

	.global _080EC826
_080EC826:
	.incbin "baserom.gba", 0x000EC826, 0x0000001E

	.global _080EC844
_080EC844:
	.incbin "baserom.gba", 0x000EC844, 0x00000002

	.global _080EC846
_080EC846:
	.incbin "baserom.gba", 0x000EC846, 0x0000000E

	.global _080EC854
_080EC854:
	.incbin "baserom.gba", 0x000EC854, 0x00000001

	.global _080EC855
_080EC855:
	.incbin "baserom.gba", 0x000EC855, 0x0000000E

	.global _080EC863
_080EC863:
	.incbin "baserom.gba", 0x000EC863, 0x00000051

	.global _080EC8B4
_080EC8B4:
	.incbin "baserom.gba", 0x000EC8B4, 0x00000004

	.global _080EC8B8
_080EC8B8:
	.incbin "baserom.gba", 0x000EC8B8, 0x0000003C

	.global _080EC8F4
_080EC8F4:
	.incbin "baserom.gba", 0x000EC8F4, 0x00000028

	.global _080EC91C
_080EC91C:
	.incbin "baserom.gba", 0x000EC91C, 0x00000018

	.global _080EC934
_080EC934:
	.incbin "baserom.gba", 0x000EC934, 0x00000018

	.global _080EC94C
_080EC94C:
	.incbin "baserom.gba", 0x000EC94C, 0x00000002

	.global _080EC94E
_080EC94E:
	.incbin "baserom.gba", 0x000EC94E, 0x00000002

	.global _080EC950
_080EC950:
	.incbin "baserom.gba", 0x000EC950, 0x00000002

	.global _080EC952
_080EC952:
	.incbin "baserom.gba", 0x000EC952, 0x00000002

	.global _080EC954
_080EC954:
	.incbin "baserom.gba", 0x000EC954, 0x0000001C

	.global _080EC970
_080EC970:
	.incbin "baserom.gba", 0x000EC970, 0x0000003C

	.global _080EC9AC
_080EC9AC:
	.incbin "baserom.gba", 0x000EC9AC, 0x000001C4

	.global _080ECB70
_080ECB70:
	.incbin "baserom.gba", 0x000ECB70, 0x00000006

	.global _080ECB76
_080ECB76:
	.incbin "baserom.gba", 0x000ECB76, 0x00000002

	.global _080ECB78
_080ECB78:
	.incbin "baserom.gba", 0x000ECB78, 0x00000010

	.global _080ECB88
_080ECB88:
	.incbin "baserom.gba", 0x000ECB88, 0x00000010

	.global _080ECB98
_080ECB98:
	.incbin "baserom.gba", 0x000ECB98, 0x00000010

	.global _080ECBA8
_080ECBA8:
	.incbin "baserom.gba", 0x000ECBA8, 0x00000010

	.global _080ECBB8
_080ECBB8:
	.incbin "baserom.gba", 0x000ECBB8, 0x00000010

	.global _080ECBC8
_080ECBC8:
	.incbin "baserom.gba", 0x000ECBC8, 0x00000004

	.global _080ECBCC
_080ECBCC:
	.incbin "baserom.gba", 0x000ECBCC, 0x00000002

	.global _080ECBCE
_080ECBCE:
	.incbin "baserom.gba", 0x000ECBCE, 0x0000003A

	.global _080ECC08
_080ECC08:
	.incbin "baserom.gba", 0x000ECC08, 0x00000002

	.global _080ECC0A
_080ECC0A:
	.incbin "baserom.gba", 0x000ECC0A, 0x00000002

	.global _080ECC0C
_080ECC0C:
	.incbin "baserom.gba", 0x000ECC0C, 0x00000002

	.global _080ECC0E
_080ECC0E:
	.incbin "baserom.gba", 0x000ECC0E, 0x0000003A

	.global _080ECC48
_080ECC48:
	.incbin "baserom.gba", 0x000ECC48, 0x00000002

	.global _080ECC4A
_080ECC4A:
	.incbin "baserom.gba", 0x000ECC4A, 0x0000001E

	.global _080ECC68
_080ECC68:
	.incbin "baserom.gba", 0x000ECC68, 0x00000002

	.global _080ECC6A
_080ECC6A:
	.incbin "baserom.gba", 0x000ECC6A, 0x0000001E

	.global _080ECC88
_080ECC88:
	.incbin "baserom.gba", 0x000ECC88, 0x00000002

	.global _080ECC8A
_080ECC8A:
	.incbin "baserom.gba", 0x000ECC8A, 0x0000001E

	.global _080ECCA8
_080ECCA8:
	.incbin "baserom.gba", 0x000ECCA8, 0x00000001

	.global _080ECCA9
_080ECCA9:
	.incbin "baserom.gba", 0x000ECCA9, 0x00000001

	.global _080ECCAA
_080ECCAA:
	.incbin "baserom.gba", 0x000ECCAA, 0x00000022

	.global _080ECCCC
_080ECCCC:
	.incbin "baserom.gba", 0x000ECCCC, 0x0000000C

	.global _080ECCD8
_080ECCD8:
	.incbin "baserom.gba", 0x000ECCD8, 0x0000000C

	.global _080ECCE4
_080ECCE4:
	.incbin "baserom.gba", 0x000ECCE4, 0x00000003

	.global _080ECCE7
_080ECCE7:
	.incbin "baserom.gba", 0x000ECCE7, 0x00000003

	.global _080ECCEA
_080ECCEA:
	.incbin "baserom.gba", 0x000ECCEA, 0x00000001

	.global _080ECCEB
_080ECCEB:
	.incbin "baserom.gba", 0x000ECCEB, 0x00000003

	.global _080ECCEE
_080ECCEE:
	.incbin "baserom.gba", 0x000ECCEE, 0x00000001

	.global _080ECCEF
_080ECCEF:
	.incbin "baserom.gba", 0x000ECCEF, 0x00000003

	.global _080ECCF2
_080ECCF2:
	.incbin "baserom.gba", 0x000ECCF2, 0x00000001

	.global _080ECCF3
_080ECCF3:
	.incbin "baserom.gba", 0x000ECCF3, 0x00000003

	.global _080ECCF6
_080ECCF6:
	.incbin "baserom.gba", 0x000ECCF6, 0x00000001

	.global _080ECCF7
_080ECCF7:
	.incbin "baserom.gba", 0x000ECCF7, 0x00000003

	.global _080ECCFA
_080ECCFA:
	.incbin "baserom.gba", 0x000ECCFA, 0x00000001

	.global _080ECCFB
_080ECCFB:
	.incbin "baserom.gba", 0x000ECCFB, 0x00000003

	.global _080ECCFE
_080ECCFE:
	.incbin "baserom.gba", 0x000ECCFE, 0x00000002

	.global _080ECD00
_080ECD00:
	.incbin "baserom.gba", 0x000ECD00, 0x00000030

	.global _080ECD30
_080ECD30:
	.incbin "baserom.gba", 0x000ECD30, 0x0000000C

	.global _080ECD3C
_080ECD3C:
	.incbin "baserom.gba", 0x000ECD3C, 0x00000020

	.global _080ECD5C
_080ECD5C:
	.incbin "baserom.gba", 0x000ECD5C, 0x0000003F

	.global _080ECD9B
_080ECD9B:
	.incbin "baserom.gba", 0x000ECD9B, 0x00000001

	.global _080ECD9C
_080ECD9C:
	.incbin "baserom.gba", 0x000ECD9C, 0x00000040

	.global _080ECDDC
_080ECDDC:
	.incbin "baserom.gba", 0x000ECDDC, 0x00000004

	.global _080ECDE0
_080ECDE0:
	.incbin "baserom.gba", 0x000ECDE0, 0x00000010

	.global _080ECDF0
_080ECDF0:
	.incbin "baserom.gba", 0x000ECDF0, 0x00000004

	.global _080ECDF4
_080ECDF4:
	.incbin "baserom.gba", 0x000ECDF4, 0x00000004

	.global _080ECDF8
_080ECDF8:
	.incbin "baserom.gba", 0x000ECDF8, 0x00000024

	.global _080ECE1C
_080ECE1C:
	.incbin "baserom.gba", 0x000ECE1C, 0x00000034

	.global _080ECE50
_080ECE50:
	.incbin "baserom.gba", 0x000ECE50, 0x00000034

	.global _080ECE84
_080ECE84:
	.incbin "baserom.gba", 0x000ECE84, 0x0000002C

	.global _080ECEB0
_080ECEB0:
	.incbin "baserom.gba", 0x000ECEB0, 0x00000034

	.global _080ECEE4
_080ECEE4:
	.incbin "baserom.gba", 0x000ECEE4, 0x0000002C

	.global _080ECF10
_080ECF10:
	.incbin "baserom.gba", 0x000ECF10, 0x0000003C

	.global _080ECF4C
_080ECF4C:
	.incbin "baserom.gba", 0x000ECF4C, 0x0000003C

	.global _080ECF88
_080ECF88:
	.incbin "baserom.gba", 0x000ECF88, 0x0000003C

	.global _080ECFC4
_080ECFC4:
	.incbin "baserom.gba", 0x000ECFC4, 0x00000034

	.global _080ECFF8
_080ECFF8:
	.incbin "baserom.gba", 0x000ECFF8, 0x00000034

	.global _080ED02C
_080ED02C:
	.incbin "baserom.gba", 0x000ED02C, 0x0000002C

	.global _080ED058
_080ED058:
	.incbin "baserom.gba", 0x000ED058, 0x00000014

	.global _080ED06C
_080ED06C:
	.incbin "baserom.gba", 0x000ED06C, 0x00000014

	.global _080ED080
_080ED080:
	.incbin "baserom.gba", 0x000ED080, 0x00000028

	.global _080ED0A8
_080ED0A8:
	.incbin "baserom.gba", 0x000ED0A8, 0x00000100

	.global _080ED1A8
_080ED1A8:
	.incbin "baserom.gba", 0x000ED1A8, 0x00000100

	.global _080ED2A8
_080ED2A8:
	.incbin "baserom.gba", 0x000ED2A8, 0x00000100

	.global _080ED3A8
_080ED3A8:
	.incbin "baserom.gba", 0x000ED3A8, 0x00000100

	.global _080ED4A8
_080ED4A8:
	.incbin "baserom.gba", 0x000ED4A8, 0x00000100

	.global _080ED5A8
_080ED5A8:
	.incbin "baserom.gba", 0x000ED5A8, 0x00000100

	.global _080ED6A8
_080ED6A8:
	.incbin "baserom.gba", 0x000ED6A8, 0x00000100

	.global _080ED7A8
_080ED7A8:
	.incbin "baserom.gba", 0x000ED7A8, 0x00000100

	.global _080ED8A8
_080ED8A8:
	.incbin "baserom.gba", 0x000ED8A8, 0x00000104

	.global _080ED9AC
_080ED9AC:
	.incbin "baserom.gba", 0x000ED9AC, 0x00000020

	.global _080ED9CC
_080ED9CC:
	.incbin "baserom.gba", 0x000ED9CC, 0x00000004

	.global _080ED9D0
_080ED9D0:
	.incbin "baserom.gba", 0x000ED9D0, 0x00000034

	.global _080EDA04
_080EDA04:
	.incbin "baserom.gba", 0x000EDA04, 0x00000070

	.global _080EDA74
_080EDA74:
	.incbin "baserom.gba", 0x000EDA74, 0x00000020

	.global _080EDA94
_080EDA94:
	.incbin "baserom.gba", 0x000EDA94, 0x00000020

	.global _080EDAB4
_080EDAB4:
	.incbin "baserom.gba", 0x000EDAB4, 0x00000018

	.global _080EDACC
_080EDACC:
	.incbin "baserom.gba", 0x000EDACC, 0x00000018

	.global _080EDAE4
_080EDAE4:
	.incbin "baserom.gba", 0x000EDAE4, 0x00000018

	.global _080EDAFC
_080EDAFC:
	.incbin "baserom.gba", 0x000EDAFC, 0x0000000C

	.global _080EDB08
_080EDB08:
	.incbin "baserom.gba", 0x000EDB08, 0x0000000C

	.global _080EDB14
_080EDB14:
	.incbin "baserom.gba", 0x000EDB14, 0x00000120

	.global _080EDC34
_080EDC34:
	.incbin "baserom.gba", 0x000EDC34, 0x00000014

	.global _080EDC48
_080EDC48:
	.incbin "baserom.gba", 0x000EDC48, 0x00000004

	.global _080EDC4C
_080EDC4C:
	.incbin "baserom.gba", 0x000EDC4C, 0x00000004

	.global _080EDC50
_080EDC50:
	.incbin "baserom.gba", 0x000EDC50, 0x000000E4

	.global _080EDD34
_080EDD34:
	.incbin "baserom.gba", 0x000EDD34, 0x00000002

	.global _080EDD36
_080EDD36:
	.incbin "baserom.gba", 0x000EDD36, 0x00000002

	.global _080EDD38
_080EDD38:
	.incbin "baserom.gba", 0x000EDD38, 0x00000002

	.global _080EDD3A
_080EDD3A:
	.incbin "baserom.gba", 0x000EDD3A, 0x00000002

	.global _080EDD3C
_080EDD3C:
	.incbin "baserom.gba", 0x000EDD3C, 0x00000004

	.global _080EDD40
_080EDD40:
	.incbin "baserom.gba", 0x000EDD40, 0x00000020

	.global _080EDD60
_080EDD60:
	.incbin "baserom.gba", 0x000EDD60, 0x00000040

	.global _080EDDA0
_080EDDA0:
	.incbin "baserom.gba", 0x000EDDA0, 0x00000840

	.global _080EE5E0
_080EE5E0:
	.incbin "baserom.gba", 0x000EE5E0, 0x00000004

	.global _080EE5E4
_080EE5E4:
	.incbin "baserom.gba", 0x000EE5E4, 0x00000020

	.global _080EE604
_080EE604:
	.incbin "baserom.gba", 0x000EE604, 0x00000020

	.global _080EE624
_080EE624:
	.incbin "baserom.gba", 0x000EE624, 0x00000020

	.global _080EE644
_080EE644:
	.incbin "baserom.gba", 0x000EE644, 0x00000018

	.global _080EE65C
_080EE65C:
	.incbin "baserom.gba", 0x000EE65C, 0x00000022

	.global _080EE67E
_080EE67E:
	.incbin "baserom.gba", 0x000EE67E, 0x00000002

	.global _080EE680
_080EE680:
	.incbin "baserom.gba", 0x000EE680, 0x00000014

	.global _080EE694
_080EE694:
	.incbin "baserom.gba", 0x000EE694, 0x00000012

	.global _080EE6A6
_080EE6A6:
	.incbin "baserom.gba", 0x000EE6A6, 0x0000003C

	.global _080EE6E2
_080EE6E2:
	.incbin "baserom.gba", 0x000EE6E2, 0x00000002

	.global _080EE6E4
_080EE6E4:
	.incbin "baserom.gba", 0x000EE6E4, 0x00000002

	.global _080EE6E6
_080EE6E6:
	.incbin "baserom.gba", 0x000EE6E6, 0x00000002

	.global _080EE6E8
_080EE6E8:
	.incbin "baserom.gba", 0x000EE6E8, 0x00000002

	.global _080EE6EA
_080EE6EA:
	.incbin "baserom.gba", 0x000EE6EA, 0x00000002

	.global _080EE6EC
_080EE6EC:
	.incbin "baserom.gba", 0x000EE6EC, 0x00000002

	.global _080EE6EE
_080EE6EE:
	.incbin "baserom.gba", 0x000EE6EE, 0x00000002

	.global _080EE6F0
_080EE6F0:
	.incbin "baserom.gba", 0x000EE6F0, 0x00000002

	.global _080EE6F2
_080EE6F2:
	.incbin "baserom.gba", 0x000EE6F2, 0x00000002

	.global _080EE6F4
_080EE6F4:
	.incbin "baserom.gba", 0x000EE6F4, 0x00000002

	.global _080EE6F6
_080EE6F6:
	.incbin "baserom.gba", 0x000EE6F6, 0x00000002

	.global _080EE6F8
_080EE6F8:
	.incbin "baserom.gba", 0x000EE6F8, 0x00000002

	.global _080EE6FA
_080EE6FA:
	.incbin "baserom.gba", 0x000EE6FA, 0x0000000A

	.global _080EE704
_080EE704:
	.incbin "baserom.gba", 0x000EE704, 0x00000020

	.global _080EE724
_080EE724:
	.incbin "baserom.gba", 0x000EE724, 0x00000020

	.global _080EE744
_080EE744:
	.incbin "baserom.gba", 0x000EE744, 0x00000008

	.global _080EE74C
_080EE74C:
	.incbin "baserom.gba", 0x000EE74C, 0x00000008

	.global _080EE754
_080EE754:
	.incbin "baserom.gba", 0x000EE754, 0x00000008

	.global _080EE75C
_080EE75C:
	.incbin "baserom.gba", 0x000EE75C, 0x00000008

	.global _080EE764
_080EE764:
	.incbin "baserom.gba", 0x000EE764, 0x00000008

	.global _080EE76C
_080EE76C:
	.incbin "baserom.gba", 0x000EE76C, 0x0000003C

	.global _080EE7A8
_080EE7A8:
	.incbin "baserom.gba", 0x000EE7A8, 0x00000010

	.global _080EE7B8
_080EE7B8:
	.incbin "baserom.gba", 0x000EE7B8, 0x00000010

	.global _080EE7C8
_080EE7C8:
	.incbin "baserom.gba", 0x000EE7C8, 0x00000024

	.global _080EE7EC
_080EE7EC:
	.incbin "baserom.gba", 0x000EE7EC, 0x0000003C

	.global _080EE828
_080EE828:
	.incbin "baserom.gba", 0x000EE828, 0x0000003C

	.global _080EE864
_080EE864:
	.incbin "baserom.gba", 0x000EE864, 0x0000003C

	.global _080EE8A0
_080EE8A0:
	.incbin "baserom.gba", 0x000EE8A0, 0x0000003C

	.global _080EE8DC
_080EE8DC:
	.incbin "baserom.gba", 0x000EE8DC, 0x0000003C

	.global _080EE918
_080EE918:
	.incbin "baserom.gba", 0x000EE918, 0x00000054

	.global _080EE96C
_080EE96C:
	.incbin "baserom.gba", 0x000EE96C, 0x00000054

	.global _080EE9C0
_080EE9C0:
	.incbin "baserom.gba", 0x000EE9C0, 0x00000054

	.global _080EEA14
_080EEA14:
	.incbin "baserom.gba", 0x000EEA14, 0x00000054

	.global _080EEA68
_080EEA68:
	.incbin "baserom.gba", 0x000EEA68, 0x00000054

	.global _080EEABC
_080EEABC:
	.incbin "baserom.gba", 0x000EEABC, 0x00000054

	.global _080EEB10
_080EEB10:
	.incbin "baserom.gba", 0x000EEB10, 0x00000054

	.global _080EEB64
_080EEB64:
	.incbin "baserom.gba", 0x000EEB64, 0x0000006C

	.global _080EEBD0
_080EEBD0:
	.incbin "baserom.gba", 0x000EEBD0, 0x0000006C

	.global _080EEC3C
_080EEC3C:
	.incbin "baserom.gba", 0x000EEC3C, 0x0000006C

	.global _080EECA8
_080EECA8:
	.incbin "baserom.gba", 0x000EECA8, 0x0000006C

	.global _080EED14
_080EED14:
	.incbin "baserom.gba", 0x000EED14, 0x0000006C

	.global _080EED80
_080EED80:
	.incbin "baserom.gba", 0x000EED80, 0x0000006C

	.global _080EEDEC
_080EEDEC:
	.incbin "baserom.gba", 0x000EEDEC, 0x0000006C

	.global _080EEE58
_080EEE58:
	.incbin "baserom.gba", 0x000EEE58, 0x0000006C

	.global _080EEEC4
_080EEEC4:
	.incbin "baserom.gba", 0x000EEEC4, 0x0000006C

	.global _080EEF30
_080EEF30:
	.incbin "baserom.gba", 0x000EEF30, 0x0000001C

	.global _080EEF4C
_080EEF4C:
	.incbin "baserom.gba", 0x000EEF4C, 0x0000001C

	.global _080EEF68
_080EEF68:
	.incbin "baserom.gba", 0x000EEF68, 0x0000001C

	.global _080EEF84
_080EEF84:
	.incbin "baserom.gba", 0x000EEF84, 0x000000CC

	.global _080EF050
_080EF050:
	.incbin "baserom.gba", 0x000EF050, 0x00000004

	.global _080EF054
_080EF054:
	.incbin "baserom.gba", 0x000EF054, 0x0000007C

	.global _080EF0D0
_080EF0D0:
	.incbin "baserom.gba", 0x000EF0D0, 0x000000C0

	.global _080EF190
_080EF190:
	.incbin "baserom.gba", 0x000EF190, 0x00000038

	.global _080EF1C8
_080EF1C8:
	.incbin "baserom.gba", 0x000EF1C8, 0x00000018

	.global _080EF1E0
_080EF1E0:
	.incbin "baserom.gba", 0x000EF1E0, 0x00000018

	.global _080EF1F8
_080EF1F8:
	.incbin "baserom.gba", 0x000EF1F8, 0x00000148

	.global _080EF340
_080EF340:
	.incbin "baserom.gba", 0x000EF340, 0x00000048

	.global _080EF388
_080EF388:
	.incbin "baserom.gba", 0x000EF388, 0x000000B8

	.global _080EF440
_080EF440:
	.incbin "baserom.gba", 0x000EF440, 0x00000040

	.global _080EF480
_080EF480:
	.incbin "baserom.gba", 0x000EF480, 0x000000B8

	.global _080EF538
_080EF538:
	.incbin "baserom.gba", 0x000EF538, 0x00000040

	.global _080EF578
_080EF578:
	.incbin "baserom.gba", 0x000EF578, 0x00000258

	.global _080EF7D0
_080EF7D0:
	.incbin "baserom.gba", 0x000EF7D0, 0x00000040

	.global _080EF810
_080EF810:
	.incbin "baserom.gba", 0x000EF810, 0x00000040

	.global _080EF850
_080EF850:
	.incbin "baserom.gba", 0x000EF850, 0x00000028

	.global _080EF878
_080EF878:
	.incbin "baserom.gba", 0x000EF878, 0x00000020

	.global _080EF898
_080EF898:
	.incbin "baserom.gba", 0x000EF898, 0x00000018

	.global _080EF8B0
_080EF8B0:
	.incbin "baserom.gba", 0x000EF8B0, 0x00000038

	.global _080EF8E8
_080EF8E8:
	.incbin "baserom.gba", 0x000EF8E8, 0x00000018

	.global _080EF900
_080EF900:
	.incbin "baserom.gba", 0x000EF900, 0x00000038

	.global _080EF938
_080EF938:
	.incbin "baserom.gba", 0x000EF938, 0x00000018

	.global _080EF950
_080EF950:
	.incbin "baserom.gba", 0x000EF950, 0x00000038

	.global _080EF988
_080EF988:
	.incbin "baserom.gba", 0x000EF988, 0x00000018

	.global _080EF9A0
_080EF9A0:
	.incbin "baserom.gba", 0x000EF9A0, 0x00000030

	.global _080EF9D0
_080EF9D0:
	.incbin "baserom.gba", 0x000EF9D0, 0x00000010

	.global _080EF9E0
_080EF9E0:
	.incbin "baserom.gba", 0x000EF9E0, 0x00000040

	.global _080EFA20
_080EFA20:
	.incbin "baserom.gba", 0x000EFA20, 0x00000020

	.global _080EFA40
_080EFA40:
	.incbin "baserom.gba", 0x000EFA40, 0x00000038

	.global _080EFA78
_080EFA78:
	.incbin "baserom.gba", 0x000EFA78, 0x00000020

	.global _080EFA98
_080EFA98:
	.incbin "baserom.gba", 0x000EFA98, 0x00000028

	.global _080EFAC0
_080EFAC0:
	.incbin "baserom.gba", 0x000EFAC0, 0x00000020

	.global _080EFAE0
_080EFAE0:
	.incbin "baserom.gba", 0x000EFAE0, 0x00000040

	.global _080EFB20
_080EFB20:
	.incbin "baserom.gba", 0x000EFB20, 0x00000028

	.global _080EFB48
_080EFB48:
	.incbin "baserom.gba", 0x000EFB48, 0x00000008

	.global _080EFB50
_080EFB50:
	.incbin "baserom.gba", 0x000EFB50, 0x00000078

	.global _080EFBC8
_080EFBC8:
	.incbin "baserom.gba", 0x000EFBC8, 0x00000028

	.global _080EFBF0
_080EFBF0:
	.incbin "baserom.gba", 0x000EFBF0, 0x00000030

	.global _080EFC20
_080EFC20:
	.incbin "baserom.gba", 0x000EFC20, 0x00000030

	.global _080EFC50
_080EFC50:
	.incbin "baserom.gba", 0x000EFC50, 0x00000024

	.global _080EFC74
_080EFC74:
	.incbin "baserom.gba", 0x000EFC74, 0x00000010

	.global _080EFC84
_080EFC84:
	.incbin "baserom.gba", 0x000EFC84, 0x000000C0

	.global _080EFD44
_080EFD44:
	.incbin "baserom.gba", 0x000EFD44, 0x00000014

	.global _080EFD58
_080EFD58:
	.incbin "baserom.gba", 0x000EFD58, 0x00000014

	.global _080EFD6C
_080EFD6C:
	.incbin "baserom.gba", 0x000EFD6C, 0x00000040

	.global _080EFDAC
_080EFDAC:
	.incbin "baserom.gba", 0x000EFDAC, 0x00000018

	.global _080EFDC4
_080EFDC4:
	.incbin "baserom.gba", 0x000EFDC4, 0x00000024

	.global _080EFDE8
_080EFDE8:
	.incbin "baserom.gba", 0x000EFDE8, 0x00000060

	.global _080EFE48
_080EFE48:
	.incbin "baserom.gba", 0x000EFE48, 0x00000040

	.global _080EFE88
_080EFE88:
	.incbin "baserom.gba", 0x000EFE88, 0x00000060

	.global _080EFEE8
_080EFEE8:
	.incbin "baserom.gba", 0x000EFEE8, 0x00000020

	.global _080EFF08
_080EFF08:
	.incbin "baserom.gba", 0x000EFF08, 0x00000020

	.global _080EFF28
_080EFF28:
	.incbin "baserom.gba", 0x000EFF28, 0x00000040

	.global _080EFF68
_080EFF68:
	.incbin "baserom.gba", 0x000EFF68, 0x00000020

	.global _080EFF88
_080EFF88:
	.incbin "baserom.gba", 0x000EFF88, 0x00000040

	.global _080EFFC8
_080EFFC8:
	.incbin "baserom.gba", 0x000EFFC8, 0x00000020

	.global _080EFFE8
_080EFFE8:
	.incbin "baserom.gba", 0x000EFFE8, 0x00000020

	.global _080F0008
_080F0008:
	.incbin "baserom.gba", 0x000F0008, 0x00000020

	.global _080F0028
_080F0028:
	.incbin "baserom.gba", 0x000F0028, 0x00000020

	.global _080F0048
_080F0048:
	.incbin "baserom.gba", 0x000F0048, 0x00000020

	.global _080F0068
_080F0068:
	.incbin "baserom.gba", 0x000F0068, 0x00000020

	.global _080F0088
_080F0088:
	.incbin "baserom.gba", 0x000F0088, 0x00000020

	.global _080F00A8
_080F00A8:
	.incbin "baserom.gba", 0x000F00A8, 0x00000020

	.global _080F00C8
_080F00C8:
	.incbin "baserom.gba", 0x000F00C8, 0x00000020

	.global _080F00E8
_080F00E8:
	.incbin "baserom.gba", 0x000F00E8, 0x00000020

	.global _080F0108
_080F0108:
	.incbin "baserom.gba", 0x000F0108, 0x00000020

	.global _080F0128
_080F0128:
	.incbin "baserom.gba", 0x000F0128, 0x00000020

	.global _080F0148
_080F0148:
	.incbin "baserom.gba", 0x000F0148, 0x00000020

	.global _080F0168
_080F0168:
	.incbin "baserom.gba", 0x000F0168, 0x00000020

	.global _080F0188
_080F0188:
	.incbin "baserom.gba", 0x000F0188, 0x00000020

	.global _080F01A8
_080F01A8:
	.incbin "baserom.gba", 0x000F01A8, 0x00000020

	.global _080F01C8
_080F01C8:
	.incbin "baserom.gba", 0x000F01C8, 0x00000020

	.global _080F01E8
_080F01E8:
	.incbin "baserom.gba", 0x000F01E8, 0x00000020

	.global _080F0208
_080F0208:
	.incbin "baserom.gba", 0x000F0208, 0x00000020

	.global _080F0228
_080F0228:
	.incbin "baserom.gba", 0x000F0228, 0x00000020

	.global _080F0248
_080F0248:
	.incbin "baserom.gba", 0x000F0248, 0x00000020

	.global _080F0268
_080F0268:
	.incbin "baserom.gba", 0x000F0268, 0x00000020

	.global _080F0288
_080F0288:
	.incbin "baserom.gba", 0x000F0288, 0x00000020

	.global _080F02A8
_080F02A8:
	.incbin "baserom.gba", 0x000F02A8, 0x00000020

	.global _080F02C8
_080F02C8:
	.incbin "baserom.gba", 0x000F02C8, 0x00000020

	.global _080F02E8
_080F02E8:
	.incbin "baserom.gba", 0x000F02E8, 0x00000020

	.global _080F0308
_080F0308:
	.incbin "baserom.gba", 0x000F0308, 0x00000020

	.global _080F0328
_080F0328:
	.incbin "baserom.gba", 0x000F0328, 0x00000020

	.global _080F0348
_080F0348:
	.incbin "baserom.gba", 0x000F0348, 0x00000020

	.global _080F0368
_080F0368:
	.incbin "baserom.gba", 0x000F0368, 0x00000020

	.global _080F0388
_080F0388:
	.incbin "baserom.gba", 0x000F0388, 0x00000020

	.global _080F03A8
_080F03A8:
	.incbin "baserom.gba", 0x000F03A8, 0x00000020

	.global _080F03C8
_080F03C8:
	.incbin "baserom.gba", 0x000F03C8, 0x00000020

	.global _080F03E8
_080F03E8:
	.incbin "baserom.gba", 0x000F03E8, 0x00000020

	.global _080F0408
_080F0408:
	.incbin "baserom.gba", 0x000F0408, 0x00000020

	.global _080F0428
_080F0428:
	.incbin "baserom.gba", 0x000F0428, 0x00000020

	.global _080F0448
_080F0448:
	.incbin "baserom.gba", 0x000F0448, 0x00000020

	.global _080F0468
_080F0468:
	.incbin "baserom.gba", 0x000F0468, 0x00000020

	.global _080F0488
_080F0488:
	.incbin "baserom.gba", 0x000F0488, 0x00000020

	.global _080F04A8
_080F04A8:
	.incbin "baserom.gba", 0x000F04A8, 0x00000020

	.global _080F04C8
_080F04C8:
	.incbin "baserom.gba", 0x000F04C8, 0x00000020

	.global _080F04E8
_080F04E8:
	.incbin "baserom.gba", 0x000F04E8, 0x00000020

	.global _080F0508
_080F0508:
	.incbin "baserom.gba", 0x000F0508, 0x00000020

	.global _080F0528
_080F0528:
	.incbin "baserom.gba", 0x000F0528, 0x00000020

	.global _080F0548
_080F0548:
	.incbin "baserom.gba", 0x000F0548, 0x00000020

	.global _080F0568
_080F0568:
	.incbin "baserom.gba", 0x000F0568, 0x00000020

	.global _080F0588
_080F0588:
	.incbin "baserom.gba", 0x000F0588, 0x00000020

	.global _080F05A8
_080F05A8:
	.incbin "baserom.gba", 0x000F05A8, 0x00000020

	.global _080F05C8
_080F05C8:
	.incbin "baserom.gba", 0x000F05C8, 0x00000020

	.global _080F05E8
_080F05E8:
	.incbin "baserom.gba", 0x000F05E8, 0x00000020

	.global _080F0608
_080F0608:
	.incbin "baserom.gba", 0x000F0608, 0x00000020

	.global _080F0628
_080F0628:
	.incbin "baserom.gba", 0x000F0628, 0x00000020

	.global _080F0648
_080F0648:
	.incbin "baserom.gba", 0x000F0648, 0x00000020

	.global _080F0668
_080F0668:
	.incbin "baserom.gba", 0x000F0668, 0x00000020

	.global _080F0688
_080F0688:
	.incbin "baserom.gba", 0x000F0688, 0x00000020

	.global _080F06A8
_080F06A8:
	.incbin "baserom.gba", 0x000F06A8, 0x00000020

	.global _080F06C8
_080F06C8:
	.incbin "baserom.gba", 0x000F06C8, 0x00000020

	.global _080F06E8
_080F06E8:
	.incbin "baserom.gba", 0x000F06E8, 0x00000020

	.global _080F0708
_080F0708:
	.incbin "baserom.gba", 0x000F0708, 0x00000020

	.global _080F0728
_080F0728:
	.incbin "baserom.gba", 0x000F0728, 0x00000020

	.global _080F0748
_080F0748:
	.incbin "baserom.gba", 0x000F0748, 0x00000020

	.global _080F0768
_080F0768:
	.incbin "baserom.gba", 0x000F0768, 0x00000020

	.global _080F0788
_080F0788:
	.incbin "baserom.gba", 0x000F0788, 0x00000020

	.global _080F07A8
_080F07A8:
	.incbin "baserom.gba", 0x000F07A8, 0x00000020

	.global _080F07C8
_080F07C8:
	.incbin "baserom.gba", 0x000F07C8, 0x00000080

	.global _080F0848
_080F0848:
	.incbin "baserom.gba", 0x000F0848, 0x00000060

	.global _080F08A8
_080F08A8:
	.incbin "baserom.gba", 0x000F08A8, 0x00000020

	.global _080F08C8
_080F08C8:
	.incbin "baserom.gba", 0x000F08C8, 0x00000020

	.global _080F08E8
_080F08E8:
	.incbin "baserom.gba", 0x000F08E8, 0x00000020

	.global _080F0908
_080F0908:
	.incbin "baserom.gba", 0x000F0908, 0x00000020

	.global _080F0928
_080F0928:
	.incbin "baserom.gba", 0x000F0928, 0x00000020

	.global _080F0948
_080F0948:
	.incbin "baserom.gba", 0x000F0948, 0x00000020

	.global _080F0968
_080F0968:
	.incbin "baserom.gba", 0x000F0968, 0x00000020

	.global _080F0988
_080F0988:
	.incbin "baserom.gba", 0x000F0988, 0x00000020

	.global _080F09A8
_080F09A8:
	.incbin "baserom.gba", 0x000F09A8, 0x00000020

	.global _080F09C8
_080F09C8:
	.incbin "baserom.gba", 0x000F09C8, 0x00000020

	.global _080F09E8
_080F09E8:
	.incbin "baserom.gba", 0x000F09E8, 0x00000020

	.global _080F0A08
_080F0A08:
	.incbin "baserom.gba", 0x000F0A08, 0x00000020

	.global _080F0A28
_080F0A28:
	.incbin "baserom.gba", 0x000F0A28, 0x00000020

	.global _080F0A48
_080F0A48:
	.incbin "baserom.gba", 0x000F0A48, 0x00000020

	.global _080F0A68
_080F0A68:
	.incbin "baserom.gba", 0x000F0A68, 0x00000020

	.global _080F0A88
_080F0A88:
	.incbin "baserom.gba", 0x000F0A88, 0x00000020

	.global _080F0AA8
_080F0AA8:
	.incbin "baserom.gba", 0x000F0AA8, 0x00000020

	.global _080F0AC8
_080F0AC8:
	.incbin "baserom.gba", 0x000F0AC8, 0x00000020

	.global _080F0AE8
_080F0AE8:
	.incbin "baserom.gba", 0x000F0AE8, 0x00000020

	.global _080F0B08
_080F0B08:
	.incbin "baserom.gba", 0x000F0B08, 0x00000020

	.global _080F0B28
_080F0B28:
	.incbin "baserom.gba", 0x000F0B28, 0x00000020

	.global _080F0B48
_080F0B48:
	.incbin "baserom.gba", 0x000F0B48, 0x00000020

	.global _080F0B68
_080F0B68:
	.incbin "baserom.gba", 0x000F0B68, 0x00000020

	.global _080F0B88
_080F0B88:
	.incbin "baserom.gba", 0x000F0B88, 0x00000020

	.global _080F0BA8
_080F0BA8:
	.incbin "baserom.gba", 0x000F0BA8, 0x00000020

	.global _080F0BC8
_080F0BC8:
	.incbin "baserom.gba", 0x000F0BC8, 0x00000020

	.global _080F0BE8
_080F0BE8:
	.incbin "baserom.gba", 0x000F0BE8, 0x00000020

	.global _080F0C08
_080F0C08:
	.incbin "baserom.gba", 0x000F0C08, 0x00000020

	.global _080F0C28
_080F0C28:
	.incbin "baserom.gba", 0x000F0C28, 0x00000020

	.global _080F0C48
_080F0C48:
	.incbin "baserom.gba", 0x000F0C48, 0x00000020

	.global _080F0C68
_080F0C68:
	.incbin "baserom.gba", 0x000F0C68, 0x00000020

	.global _080F0C88
_080F0C88:
	.incbin "baserom.gba", 0x000F0C88, 0x00000020

	.global _080F0CA8
_080F0CA8:
	.incbin "baserom.gba", 0x000F0CA8, 0x00000020

	.global _080F0CC8
_080F0CC8:
	.incbin "baserom.gba", 0x000F0CC8, 0x00000020

	.global _080F0CE8
_080F0CE8:
	.incbin "baserom.gba", 0x000F0CE8, 0x00000020

	.global _080F0D08
_080F0D08:
	.incbin "baserom.gba", 0x000F0D08, 0x00000020

	.global _080F0D28
_080F0D28:
	.incbin "baserom.gba", 0x000F0D28, 0x00000020

	.global _080F0D48
_080F0D48:
	.incbin "baserom.gba", 0x000F0D48, 0x00000020

	.global _080F0D68
_080F0D68:
	.incbin "baserom.gba", 0x000F0D68, 0x00000020

	.global _080F0D88
_080F0D88:
	.incbin "baserom.gba", 0x000F0D88, 0x00000020

	.global _080F0DA8
_080F0DA8:
	.incbin "baserom.gba", 0x000F0DA8, 0x00000020

	.global _080F0DC8
_080F0DC8:
	.incbin "baserom.gba", 0x000F0DC8, 0x00000020

	.global _080F0DE8
_080F0DE8:
	.incbin "baserom.gba", 0x000F0DE8, 0x00000020

	.global _080F0E08
_080F0E08:
	.incbin "baserom.gba", 0x000F0E08, 0x00000008

	.global _080F0E10
_080F0E10:
	.incbin "baserom.gba", 0x000F0E10, 0x00000018

	.global _080F0E28
_080F0E28:
	.incbin "baserom.gba", 0x000F0E28, 0x00000020

	.global _080F0E48
_080F0E48:
	.incbin "baserom.gba", 0x000F0E48, 0x00000020

	.global _080F0E68
_080F0E68:
	.incbin "baserom.gba", 0x000F0E68, 0x00000020

	.global _080F0E88
_080F0E88:
	.incbin "baserom.gba", 0x000F0E88, 0x00000020

	.global _080F0EA8
_080F0EA8:
	.incbin "baserom.gba", 0x000F0EA8, 0x00000020

	.global _080F0EC8
_080F0EC8:
	.incbin "baserom.gba", 0x000F0EC8, 0x00000020

	.global _080F0EE8
_080F0EE8:
	.incbin "baserom.gba", 0x000F0EE8, 0x00000040

	.global _080F0F28
_080F0F28:
	.incbin "baserom.gba", 0x000F0F28, 0x00000020

	.global _080F0F48
_080F0F48:
	.incbin "baserom.gba", 0x000F0F48, 0x00000020

	.global _080F0F68
_080F0F68:
	.incbin "baserom.gba", 0x000F0F68, 0x00000020

	.global _080F0F88
_080F0F88:
	.incbin "baserom.gba", 0x000F0F88, 0x00000020

	.global _080F0FA8
_080F0FA8:
	.incbin "baserom.gba", 0x000F0FA8, 0x00000020

	.global _080F0FC8
_080F0FC8:
	.incbin "baserom.gba", 0x000F0FC8, 0x00000020

	.global _080F0FE8
_080F0FE8:
	.incbin "baserom.gba", 0x000F0FE8, 0x00000020

	.global _080F1008
_080F1008:
	.incbin "baserom.gba", 0x000F1008, 0x00000008

	.global _080F1010
_080F1010:
	.incbin "baserom.gba", 0x000F1010, 0x00000044

	.global _080F1054
_080F1054:
	.incbin "baserom.gba", 0x000F1054, 0x0000000C

	.global _080F1060
_080F1060:
	.incbin "baserom.gba", 0x000F1060, 0x00000028

	.global _080F1088
_080F1088:
	.incbin "baserom.gba", 0x000F1088, 0x00000018

	.global _080F10A0
_080F10A0:
	.incbin "baserom.gba", 0x000F10A0, 0x00000078

	.global _080F1118
_080F1118:
	.incbin "baserom.gba", 0x000F1118, 0x00000018

	.global _080F1130
_080F1130:
	.incbin "baserom.gba", 0x000F1130, 0x00000024

	.global _080F1154
_080F1154:
	.incbin "baserom.gba", 0x000F1154, 0x00000020

	.global _080F1174
_080F1174:
	.incbin "baserom.gba", 0x000F1174, 0x00000014

	.global _080F1188
_080F1188:
	.incbin "baserom.gba", 0x000F1188, 0x00000018

	.global _080F11A0
_080F11A0:
	.incbin "baserom.gba", 0x000F11A0, 0x00000020

	.global _080F11C0
_080F11C0:
	.incbin "baserom.gba", 0x000F11C0, 0x00000018

	.global _080F11D8
_080F11D8:
	.incbin "baserom.gba", 0x000F11D8, 0x00000014

	.global _080F11EC
_080F11EC:
	.incbin "baserom.gba", 0x000F11EC, 0x00000018

	.global _080F1204
_080F1204:
	.incbin "baserom.gba", 0x000F1204, 0x00000024

	.global _080F1228
_080F1228:
	.incbin "baserom.gba", 0x000F1228, 0x00000034

	.global _080F125C
_080F125C:
	.incbin "baserom.gba", 0x000F125C, 0x00000010

	.global _080F126C
_080F126C:
	.incbin "baserom.gba", 0x000F126C, 0x00000020

	.global _080F128C
_080F128C:
	.incbin "baserom.gba", 0x000F128C, 0x000000E0

	.global _080F136C
_080F136C:
	.incbin "baserom.gba", 0x000F136C, 0x000000E0

	.global _080F144C
_080F144C:
	.incbin "baserom.gba", 0x000F144C, 0x000000E0

	.global _080F152C
_080F152C:
	.incbin "baserom.gba", 0x000F152C, 0x000000E0

	.global _080F160C
_080F160C:
	.incbin "baserom.gba", 0x000F160C, 0x000000F8

	.global _080F1704
_080F1704:
	.incbin "baserom.gba", 0x000F1704, 0x00000018

	.global _080F171C
_080F171C:
	.incbin "baserom.gba", 0x000F171C, 0x00000050

	.global _080F176C
_080F176C:
	.incbin "baserom.gba", 0x000F176C, 0x00000068

	.global _080F17D4
_080F17D4:
	.incbin "baserom.gba", 0x000F17D4, 0x000000B8

	.global _080F188C
_080F188C:
	.incbin "baserom.gba", 0x000F188C, 0x000000F8

	.global _080F1984
_080F1984:
	.incbin "baserom.gba", 0x000F1984, 0x00000098

	.global _080F1A1C
_080F1A1C:
	.incbin "baserom.gba", 0x000F1A1C, 0x00000018

	.global _080F1A34
_080F1A34:
	.incbin "baserom.gba", 0x000F1A34, 0x000000F8

	.global _080F1B2C
_080F1B2C:
	.incbin "baserom.gba", 0x000F1B2C, 0x0000000C

	.global _080F1B38
_080F1B38:
	.incbin "baserom.gba", 0x000F1B38, 0x00000050

	.global _080F1B88
_080F1B88:
	.incbin "baserom.gba", 0x000F1B88, 0x00000014

	.global _080F1B9C
_080F1B9C:
	.incbin "baserom.gba", 0x000F1B9C, 0x00000080

	.global _080F1C1C
_080F1C1C:
	.incbin "baserom.gba", 0x000F1C1C, 0x00000014

	.global _080F1C30
_080F1C30:
	.incbin "baserom.gba", 0x000F1C30, 0x00000080

	.global _080F1CB0
_080F1CB0:
	.incbin "baserom.gba", 0x000F1CB0, 0x00000030

	.global _080F1CE0
_080F1CE0:
	.incbin "baserom.gba", 0x000F1CE0, 0x00000128

	.global _080F1E08
_080F1E08:
	.incbin "baserom.gba", 0x000F1E08, 0x0000002C

	.global _080F1E34
_080F1E34:
	.incbin "baserom.gba", 0x000F1E34, 0x00000110

	.global _080F1F44
_080F1F44:
	.incbin "baserom.gba", 0x000F1F44, 0x0000001C

	.global _080F1F60
_080F1F60:
	.incbin "baserom.gba", 0x000F1F60, 0x0000001C

	.global _080F1F7C
_080F1F7C:
	.incbin "baserom.gba", 0x000F1F7C, 0x00000128

	.global _080F20A4
_080F20A4:
	.incbin "baserom.gba", 0x000F20A4, 0x00000010

	.global _080F20B4
_080F20B4:
	.incbin "baserom.gba", 0x000F20B4, 0x00000068

	.global _080F211C
_080F211C:
	.incbin "baserom.gba", 0x000F211C, 0x00000010

	.global _080F212C
_080F212C:
	.incbin "baserom.gba", 0x000F212C, 0x00000098

	.global _080F21C4
_080F21C4:
	.incbin "baserom.gba", 0x000F21C4, 0x0000000C

	.global _080F21D0
_080F21D0:
	.incbin "baserom.gba", 0x000F21D0, 0x00000050

	.global _080F2220
_080F2220:
	.incbin "baserom.gba", 0x000F2220, 0x00000010

	.global _080F2230
_080F2230:
	.incbin "baserom.gba", 0x000F2230, 0x00000068

	.global _080F2298
_080F2298:
	.incbin "baserom.gba", 0x000F2298, 0x00000050

	.global _080F22E8
_080F22E8:
	.incbin "baserom.gba", 0x000F22E8, 0x00000020

	.global _080F2308
_080F2308:
	.incbin "baserom.gba", 0x000F2308, 0x000000C8

	.global _080F23D0
_080F23D0:
	.incbin "baserom.gba", 0x000F23D0, 0x00000018

	.global _080F23E8
_080F23E8:
	.incbin "baserom.gba", 0x000F23E8, 0x000000F8

	.global _080F24E0
_080F24E0:
	.incbin "baserom.gba", 0x000F24E0, 0x0000000C

	.global _080F24EC
_080F24EC:
	.incbin "baserom.gba", 0x000F24EC, 0x00000068

	.global _080F2554
_080F2554:
	.incbin "baserom.gba", 0x000F2554, 0x00000018

	.global _080F256C
_080F256C:
	.incbin "baserom.gba", 0x000F256C, 0x000000F8

	.global _080F2664
_080F2664:
	.incbin "baserom.gba", 0x000F2664, 0x00000098

	.global _080F26FC
_080F26FC:
	.incbin "baserom.gba", 0x000F26FC, 0x00000098

	.global _080F2794
_080F2794:
	.incbin "baserom.gba", 0x000F2794, 0x00000020

	.global _080F27B4
_080F27B4:
	.incbin "baserom.gba", 0x000F27B4, 0x000000C8

	.global _080F287C
_080F287C:
	.incbin "baserom.gba", 0x000F287C, 0x00000024

	.global _080F28A0
_080F28A0:
	.incbin "baserom.gba", 0x000F28A0, 0x000000E0

	.global _080F2980
_080F2980:
	.incbin "baserom.gba", 0x000F2980, 0x00000038

	.global _080F29B8
_080F29B8:
	.incbin "baserom.gba", 0x000F29B8, 0x00000038

	.global _080F29F0
_080F29F0:
	.incbin "baserom.gba", 0x000F29F0, 0x00000038

	.global _080F2A28
_080F2A28:
	.incbin "baserom.gba", 0x000F2A28, 0x00000048

	.global _080F2A70
_080F2A70:
	.incbin "baserom.gba", 0x000F2A70, 0x00000038

	.global _080F2AA8
_080F2AA8:
	.incbin "baserom.gba", 0x000F2AA8, 0x00000018

	.global _080F2AC0
_080F2AC0:
	.incbin "baserom.gba", 0x000F2AC0, 0x00000001

	.global _080F2AC1
_080F2AC1:
	.incbin "baserom.gba", 0x000F2AC1, 0x00000001

	.global _080F2AC2
_080F2AC2:
	.incbin "baserom.gba", 0x000F2AC2, 0x0000001A

	.global _080F2ADC
_080F2ADC:
	.incbin "baserom.gba", 0x000F2ADC, 0x0000001C

	.global _080F2AF8
_080F2AF8:
	.incbin "baserom.gba", 0x000F2AF8, 0x0000001C

	.global _080F2B14
_080F2B14:
	.incbin "baserom.gba", 0x000F2B14, 0x00000024

	.global _080F2B38
_080F2B38:
	.incbin "baserom.gba", 0x000F2B38, 0x00000020

	.global _080F2B58
_080F2B58:
	.incbin "baserom.gba", 0x000F2B58, 0x00000024

	.global _080F2B7C
_080F2B7C:
	.incbin "baserom.gba", 0x000F2B7C, 0x00000034

	.global _080F2BB0
_080F2BB0:
	.incbin "baserom.gba", 0x000F2BB0, 0x00000024

	.global _080F2BD4
_080F2BD4:
	.incbin "baserom.gba", 0x000F2BD4, 0x00000020

	.global _080F2BF4
_080F2BF4:
	.incbin "baserom.gba", 0x000F2BF4, 0x00000020

	.global _080F2C14
_080F2C14:
	.incbin "baserom.gba", 0x000F2C14, 0x00000001

	.global _080F2C15
_080F2C15:
	.incbin "baserom.gba", 0x000F2C15, 0x0000000D

	.global _080F2C22
_080F2C22:
	.incbin "baserom.gba", 0x000F2C22, 0x00000001

	.global _080F2C23
_080F2C23:
	.incbin "baserom.gba", 0x000F2C23, 0x00000015

	.global _080F2C38
_080F2C38:
	.incbin "baserom.gba", 0x000F2C38, 0x00000001

	.global _080F2C39
_080F2C39:
	.incbin "baserom.gba", 0x000F2C39, 0x0000000F

	.global _080F2C48
_080F2C48:
	.incbin "baserom.gba", 0x000F2C48, 0x00000001

	.global _080F2C49
_080F2C49:
	.incbin "baserom.gba", 0x000F2C49, 0x00000007

	.global _080F2C50
_080F2C50:
	.incbin "baserom.gba", 0x000F2C50, 0x00000001

	.global _080F2C51
_080F2C51:
	.incbin "baserom.gba", 0x000F2C51, 0x00000003

	.global _080F2C54
_080F2C54:
	.incbin "baserom.gba", 0x000F2C54, 0x00000001

	.global _080F2C55
_080F2C55:
	.incbin "baserom.gba", 0x000F2C55, 0x00000001

	.global _080F2C56
_080F2C56:
	.incbin "baserom.gba", 0x000F2C56, 0x0000002A

	.global _080F2C80
_080F2C80:
	.incbin "baserom.gba", 0x000F2C80, 0x00000002

	.global _080F2C82
_080F2C82:
	.incbin "baserom.gba", 0x000F2C82, 0x00000004

	.global _080F2C86
_080F2C86:
	.incbin "baserom.gba", 0x000F2C86, 0x00000001

	.global _080F2C87
_080F2C87:
	.incbin "baserom.gba", 0x000F2C87, 0x00000001

	.global _080F2C88
_080F2C88:
	.incbin "baserom.gba", 0x000F2C88, 0x00000004

	.global _080F2C8C
_080F2C8C:
	.incbin "baserom.gba", 0x000F2C8C, 0x00000001

	.global _080F2C8D
_080F2C8D:
	.incbin "baserom.gba", 0x000F2C8D, 0x00000001

	.global _080F2C8E
_080F2C8E:
	.incbin "baserom.gba", 0x000F2C8E, 0x0000002E

	.global _080F2CBC
_080F2CBC:
	.incbin "baserom.gba", 0x000F2CBC, 0x00000030

	.global _080F2CEC
_080F2CEC:
	.incbin "baserom.gba", 0x000F2CEC, 0x00000030

	.global _080F2D1C
_080F2D1C:
	.incbin "baserom.gba", 0x000F2D1C, 0x00000030

	.global _080F2D4C
_080F2D4C:
	.incbin "baserom.gba", 0x000F2D4C, 0x00000030

	.global _080F2D7C
_080F2D7C:
	.incbin "baserom.gba", 0x000F2D7C, 0x00000030

	.global _080F2DAC
_080F2DAC:
	.incbin "baserom.gba", 0x000F2DAC, 0x00000030

	.global _080F2DDC
_080F2DDC:
	.incbin "baserom.gba", 0x000F2DDC, 0x00000040

	.global _080F2E1C
_080F2E1C:
	.incbin "baserom.gba", 0x000F2E1C, 0x00000098

	.global _080F2EB4
_080F2EB4:
	.incbin "baserom.gba", 0x000F2EB4, 0x00000030

	.global _080F2EE4
_080F2EE4:
	.incbin "baserom.gba", 0x000F2EE4, 0x00000020

	.global _080F2F04
_080F2F04:
	.incbin "baserom.gba", 0x000F2F04, 0x00000028

	.global _080F2F2C
_080F2F2C:
	.incbin "baserom.gba", 0x000F2F2C, 0x00000024

	.global _080F2F50
_080F2F50:
	.incbin "baserom.gba", 0x000F2F50, 0x00000024

	.global _080F2F74
_080F2F74:
	.incbin "baserom.gba", 0x000F2F74, 0x00000008

	.global _080F2F7C
_080F2F7C:
	.incbin "baserom.gba", 0x000F2F7C, 0x00000068

	.global _080F2FE4
_080F2FE4:
	.incbin "baserom.gba", 0x000F2FE4, 0x00000030

	.global _080F3014
_080F3014:
	.incbin "baserom.gba", 0x000F3014, 0x00000020

	.global _080F3034
_080F3034:
	.incbin "baserom.gba", 0x000F3034, 0x00000010

	.global _080F3044
_080F3044:
	.incbin "baserom.gba", 0x000F3044, 0x00000070

	.global _080F30B4
_080F30B4:
	.incbin "baserom.gba", 0x000F30B4, 0x00000048

	.global _080F30FC
_080F30FC:
	.incbin "baserom.gba", 0x000F30FC, 0x00000001

	.global _080F30FD
_080F30FD:
	.incbin "baserom.gba", 0x000F30FD, 0x00000001

	.global _080F30FE
_080F30FE:
	.incbin "baserom.gba", 0x000F30FE, 0x0000002E

	.global _080F312C
_080F312C:
	.incbin "baserom.gba", 0x000F312C, 0x00000018

	.global _080F3144
_080F3144:
	.incbin "baserom.gba", 0x000F3144, 0x00000014

	.global _080F3158
_080F3158:
	.incbin "baserom.gba", 0x000F3158, 0x00000028

	.global _080F3180
_080F3180:
	.incbin "baserom.gba", 0x000F3180, 0x00000010

	.global _080F3190
_080F3190:
	.incbin "baserom.gba", 0x000F3190, 0x00000010

	.global _080F31A0
_080F31A0:
	.incbin "baserom.gba", 0x000F31A0, 0x00000010

	.global _080F31B0
_080F31B0:
	.incbin "baserom.gba", 0x000F31B0, 0x00000010

	.global _080F31C0
_080F31C0:
	.incbin "baserom.gba", 0x000F31C0, 0x00000010