	.include "asm/macros.inc"

	.syntax unified
	.section .rodata

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
	.incbin "baserom.gba", 0x000E7534, 0x00000014

	.global _080E7548
_080E7548: .4byte _080EB3A4

	.global _080E754C
_080E754C:
	.incbin "baserom.gba", 0x000E754C, 0x00000004

	.global _080E7550
_080E7550: .4byte _080EBAE0

	.global _080E7554
_080E7554: .4byte _080EB720

	.global _080E7558
_080E7558: .4byte _08087C0C

	.global _080E755C
_080E755C: .4byte _08087B58

	.global _080E7560
_080E7560:
	.incbin "baserom.gba", 0x000E7560, 0x00000004

	.global _080E7564
_080E7564: .4byte _080A0F48

	.global _080E7568
_080E7568:
	.incbin "baserom.gba", 0x000E7568, 0x00000004

	.global _080E756C
_080E756C:
	.incbin "baserom.gba", 0x000E756C, 0x00000014

	.global _080E7580
_080E7580: .4byte _080EB3C5

	.global _080E7584
_080E7584:
	.incbin "baserom.gba", 0x000E7584, 0x00000004

	.global _080E7588
_080E7588: .4byte _080EBB08

	.global _080E758C
_080E758C: .4byte _080EB738

	.global _080E7590
_080E7590: .4byte _08085294

	.global _080E7594
_080E7594: .4byte _080851DC

	.global _080E7598
_080E7598:
	.incbin "baserom.gba", 0x000E7598, 0x00000004

	.global _080E759C
_080E759C: .4byte _080A1084

	.global _080E75A0
_080E75A0:
	.incbin "baserom.gba", 0x000E75A0, 0x00000004

	.global _080E75A4
_080E75A4:
	.incbin "baserom.gba", 0x000E75A4, 0x00000014

	.global _080E75B8
_080E75B8: .4byte _080EB3DA

	.global _080E75BC
_080E75BC:
	.incbin "baserom.gba", 0x000E75BC, 0x00000004

	.global _080E75C0
_080E75C0: .4byte _080EBB30

	.global _080E75C4
_080E75C4: .4byte _080EB750

	.global _080E75C8
_080E75C8: .4byte _08091718

	.global _080E75CC
_080E75CC: .4byte _08091660

	.global _080E75D0
_080E75D0:
	.incbin "baserom.gba", 0x000E75D0, 0x00000004

	.global _080E75D4
_080E75D4: .4byte _080A1D0C

	.global _080E75D8
_080E75D8:
	.incbin "baserom.gba", 0x000E75D8, 0x00000004

	.global _080E75DC
_080E75DC:
	.incbin "baserom.gba", 0x000E75DC, 0x00000014

	.global _080E75F0
_080E75F0: .4byte _080EB403

	.global _080E75F4
_080E75F4:
	.incbin "baserom.gba", 0x000E75F4, 0x00000004

	.global _080E75F8
_080E75F8: .4byte _080EBB58

	.global _080E75FC
_080E75FC: .4byte _080EB768

	.global _080E7600
_080E7600: .4byte _0808B698

	.global _080E7604
_080E7604: .4byte _0808B5E0

	.global _080E7608
_080E7608:
	.incbin "baserom.gba", 0x000E7608, 0x00000004

	.global _080E760C
_080E760C: .4byte _080A1308

	.global _080E7610
_080E7610:
	.incbin "baserom.gba", 0x000E7610, 0x00000004

	.global _080E7614
_080E7614:
	.incbin "baserom.gba", 0x000E7614, 0x00000014

	.global _080E7628
_080E7628: .4byte _080EB424

	.global _080E762C
_080E762C:
	.incbin "baserom.gba", 0x000E762C, 0x00000004

	.global _080E7630
_080E7630: .4byte _080EBB80

	.global _080E7634
_080E7634: .4byte _080EB780

	.global _080E7638
_080E7638: .4byte _080889DC

	.global _080E763C
_080E763C: .4byte _08088924

	.global _080E7640
_080E7640:
	.incbin "baserom.gba", 0x000E7640, 0x00000004

	.global _080E7644
_080E7644: .4byte _080A196C

	.global _080E7648
_080E7648:
	.incbin "baserom.gba", 0x000E7648, 0x00000004

	.global _080E764C
_080E764C:
	.incbin "baserom.gba", 0x000E764C, 0x00000014

	.global _080E7660
_080E7660: .4byte _080EB44D

	.global _080E7664
_080E7664:
	.incbin "baserom.gba", 0x000E7664, 0x00000004

	.global _080E7668
_080E7668: .4byte _080EBBA8

	.global _080E766C
_080E766C: .4byte _080EB798

	.global _080E7670
_080E7670: .4byte _0808A7C4

	.global _080E7674
_080E7674: .4byte _0808A70C

	.global _080E7678
_080E7678:
	.incbin "baserom.gba", 0x000E7678, 0x00000004

	.global _080E767C
_080E767C: .4byte _080A11B4

	.global _080E7680
_080E7680:
	.incbin "baserom.gba", 0x000E7680, 0x00000004

	.global _080E7684
_080E7684:
	.incbin "baserom.gba", 0x000E7684, 0x00000014

	.global _080E7698
_080E7698: .4byte _080EB482

	.global _080E769C
_080E769C:
	.incbin "baserom.gba", 0x000E769C, 0x00000004

	.global _080E76A0
_080E76A0: .4byte _080EBBD0

	.global _080E76A4
_080E76A4: .4byte _080EB7B0

	.global _080E76A8
_080E76A8: .4byte _08089A04

	.global _080E76AC
_080E76AC: .4byte _0808994C

	.global _080E76B0
_080E76B0:
	.incbin "baserom.gba", 0x000E76B0, 0x00000004

	.global _080E76B4
_080E76B4: .4byte _080A20D4

	.global _080E76B8
_080E76B8:
	.incbin "baserom.gba", 0x000E76B8, 0x00000004

	.global _080E76BC
_080E76BC:
	.incbin "baserom.gba", 0x000E76BC, 0x00000014

	.global _080E76D0
_080E76D0: .4byte _080EB4AF

	.global _080E76D4
_080E76D4:
	.incbin "baserom.gba", 0x000E76D4, 0x00000004

	.global _080E76D8
_080E76D8: .4byte _080EBBF8

	.global _080E76DC
_080E76DC: .4byte _080EB7C8

	.global _080E76E0
_080E76E0: .4byte _0808C43C

	.global _080E76E4
_080E76E4: .4byte _0808C384

	.global _080E76E8
_080E76E8:
	.incbin "baserom.gba", 0x000E76E8, 0x00000004

	.global _080E76EC
_080E76EC: .4byte _080A1810

	.global _080E76F0
_080E76F0:
	.incbin "baserom.gba", 0x000E76F0, 0x00000004

	.global _080E76F4
_080E76F4:
	.incbin "baserom.gba", 0x000E76F4, 0x00000014

	.global _080E7708
_080E7708: .4byte _080EB4D0

	.global _080E770C
_080E770C:
	.incbin "baserom.gba", 0x000E770C, 0x00000004

	.global _080E7710
_080E7710: .4byte _080EBC20

	.global _080E7714
_080E7714: .4byte _080EB7E0

	.global _080E7718
_080E7718: .4byte _08086C10

	.global _080E771C
_080E771C: .4byte _08086B58

	.global _080E7720
_080E7720:
	.incbin "baserom.gba", 0x000E7720, 0x00000004

	.global _080E7724
_080E7724: .4byte _080A1478

	.global _080E7728
_080E7728:
	.incbin "baserom.gba", 0x000E7728, 0x00000004

	.global _080E772C
_080E772C:
	.incbin "baserom.gba", 0x000E772C, 0x00000014

	.global _080E7740
_080E7740: .4byte _080EB4E5

	.global _080E7744
_080E7744:
	.incbin "baserom.gba", 0x000E7744, 0x00000004

	.global _080E7748
_080E7748: .4byte _080EBC48

	.global _080E774C
_080E774C: .4byte _080EB7F8

	.global _080E7750
_080E7750: .4byte _08085F98

	.global _080E7754
_080E7754: .4byte _08085EE0

	.global _080E7758
_080E7758:
	.incbin "baserom.gba", 0x000E7758, 0x00000004

	.global _080E775C
_080E775C: .4byte _080A1BEC

	.global _080E7760
_080E7760:
	.incbin "baserom.gba", 0x000E7760, 0x00000004

	.global _080E7764
_080E7764:
	.incbin "baserom.gba", 0x000E7764, 0x00000014

	.global _080E7778
_080E7778: .4byte _080EB54B

	.global _080E777C
_080E777C:
	.incbin "baserom.gba", 0x000E777C, 0x00000004

	.global _080E7780
_080E7780: .4byte _080EBC98

	.global _080E7784
_080E7784: .4byte _080EB828

	.global _080E7788
_080E7788: .4byte _0808D388

	.global _080E778C
_080E778C: .4byte _0808D2D0

	.global _080E7790
_080E7790:
	.incbin "baserom.gba", 0x000E7790, 0x00000004

	.global _080E7794
_080E7794: .4byte _080A2208

	.global _080E7798
_080E7798:
	.incbin "baserom.gba", 0x000E7798, 0x00000004

	.global _080E779C
_080E779C:
	.incbin "baserom.gba", 0x000E779C, 0x00000014

	.global _080E77B0
_080E77B0: .4byte _080EB580

	.global _080E77B4
_080E77B4:
	.incbin "baserom.gba", 0x000E77B4, 0x00000004

	.global _080E77B8
_080E77B8: .4byte _080EBCC0

	.global _080E77BC
_080E77BC: .4byte _080EB840

	.global _080E77C0
_080E77C0: .4byte _080907B0

	.global _080E77C4
_080E77C4: .4byte _080906F8

	.global _080E77C8
_080E77C8:
	.incbin "baserom.gba", 0x000E77C8, 0x00000004

	.global _080E77CC
_080E77CC: .4byte _080A1E5C

	.global _080E77D0
_080E77D0:
	.incbin "baserom.gba", 0x000E77D0, 0x00000004

	.global _080E77D4
_080E77D4:
	.incbin "baserom.gba", 0x000E77D4, 0x00000014

	.global _080E77E8
_080E77E8: .4byte _080EB5AD

	.global _080E77EC
_080E77EC:
	.incbin "baserom.gba", 0x000E77EC, 0x00000004

	.global _080E77F0
_080E77F0: .4byte _080EBCE8

	.global _080E77F4
_080E77F4: .4byte _080EB858

	.global _080E77F8
_080E77F8: .4byte _0808EDD0

	.global _080E77FC
_080E77FC: .4byte _0808ED18

	.global _080E7800
_080E7800:
	.incbin "baserom.gba", 0x000E7800, 0x00000004

	.global _080E7804
_080E7804: .4byte _080A15AC

	.global _080E7808
_080E7808:
	.incbin "baserom.gba", 0x000E7808, 0x00000004

	.global _080E780C
_080E780C:
	.incbin "baserom.gba", 0x000E780C, 0x00000014

	.global _080E7820
_080E7820: .4byte _080EB5DA

	.global _080E7824
_080E7824:
	.incbin "baserom.gba", 0x000E7824, 0x00000004

	.global _080E7828
_080E7828: .4byte _080EBD10

	.global _080E782C
_080E782C: .4byte _080EB870

	.global _080E7830
_080E7830: .4byte _0808E2D8

	.global _080E7834
_080E7834: .4byte _0808E220

	.global _080E7838
_080E7838:
	.incbin "baserom.gba", 0x000E7838, 0x00000004

	.global _080E783C
_080E783C: .4byte _080A16C0

	.global _080E7840
_080E7840:
	.incbin "baserom.gba", 0x000E7840, 0x00000004

	.global _080E7844
_080E7844:
	.incbin "baserom.gba", 0x000E7844, 0x00000014

	.global _080E7858
_080E7858: .4byte _080EB603

	.global _080E785C
_080E785C:
	.incbin "baserom.gba", 0x000E785C, 0x00000004

	.global _080E7860
_080E7860: .4byte _080EBD38

	.global _080E7864
_080E7864: .4byte _080EB888

	.global _080E7868
_080E7868: .4byte _0808FC60

	.global _080E786C
_080E786C: .4byte _0808FBA8

	.global _080E7870
_080E7870: .4byte _080B15A4

	.global _080E7874
_080E7874: .4byte _080A277C

	.global _080E7878
_080E7878:
	.incbin "baserom.gba", 0x000E7878, 0x00000004

	.global _080E787C
_080E787C:
	.incbin "baserom.gba", 0x000E787C, 0x00000014

	.global _080E7890
_080E7890: .4byte _080EB512

	.global _080E7894
_080E7894:
	.incbin "baserom.gba", 0x000E7894, 0x00000004

	.global _080E7898
_080E7898: .4byte _080EBC70

	.global _080E789C
_080E789C: .4byte _080EB810

	.global _080E78A0
_080E78A0: .4byte _08092590

	.global _080E78A4
_080E78A4: .4byte _080924D8

	.global _080E78A8
_080E78A8:
	.incbin "baserom.gba", 0x000E78A8, 0x00000004

	.global _080E78AC
_080E78AC: .4byte _080A1F90

	.global _080E78B0
_080E78B0:
	.incbin "baserom.gba", 0x000E78B0, 0x00000004

	.global _080E78B4
_080E78B4:
	.incbin "baserom.gba", 0x000E78B4, 0x00000014

	.global _080E78C8
_080E78C8: .4byte _080EB665

	.global _080E78CC
_080E78CC:
	.incbin "baserom.gba", 0x000E78CC, 0x00000004

	.global _080E78D0
_080E78D0: .4byte _080EBCE8

	.global _080E78D4
_080E78D4: .4byte _080EB8D0

	.global _080E78D8
_080E78D8: .4byte _08093478

	.global _080E78DC
_080E78DC: .4byte _080933C4

	.global _080E78E0
_080E78E0: .4byte _080B146C

	.global _080E78E4
_080E78E4: .4byte _080A24B8

	.global _080E78E8
_080E78E8:
	.incbin "baserom.gba", 0x000E78E8, 0x00000004

	.global _080E78EC
_080E78EC:
	.incbin "baserom.gba", 0x000E78EC, 0x00000014

	.global _080E7900
_080E7900: .4byte _080EB686

	.global _080E7904
_080E7904:
	.incbin "baserom.gba", 0x000E7904, 0x00000004

	.global _080E7908
_080E7908: .4byte _080EBC98

	.global _080E790C
_080E790C: .4byte _080EB8E8

	.global _080E7910
_080E7910: .4byte _08095308

	.global _080E7914
_080E7914: .4byte _08095250

	.global _080E7918
_080E7918: .4byte _080B14F8

	.global _080E791C
_080E791C: .4byte _080A261C

	.global _080E7920
_080E7920:
	.incbin "baserom.gba", 0x000E7920, 0x00000004

	.global _080E7924
_080E7924:
	.incbin "baserom.gba", 0x000E7924, 0x00000014

	.global _080E7938
_080E7938: .4byte _080EB634

	.global _080E793C
_080E793C:
	.incbin "baserom.gba", 0x000E793C, 0x00000004

	.global _080E7940
_080E7940: .4byte _080EBD60

	.global _080E7944
_080E7944: .4byte _080EB8A0

	.global _080E7948
_080E7948: .4byte _080942E0

	.global _080E794C
_080E794C: .4byte _08094228

	.global _080E7950
_080E7950:
	.incbin "baserom.gba", 0x000E7950, 0x00000004

	.global _080E7954
_080E7954: .4byte _080A1A9C

	.global _080E7958
_080E7958:
	.incbin "baserom.gba", 0x000E7958, 0x00000004

	.global _080E795C
_080E795C:
	.incbin "baserom.gba", 0x000E795C, 0x00000014

	.global _080E7970
_080E7970: .4byte _080EB6DF

	.global _080E7974
_080E7974:
	.incbin "baserom.gba", 0x000E7974, 0x00000004

	.global _080E7978
_080E7978: .4byte _080EBBA8

	.global _080E797C
_080E797C: .4byte _080EB8B8

	.global _080E7980
_080E7980: .4byte _08096404

	.global _080E7984
_080E7984: .4byte _0809634C

	.global _080E7988
_080E7988: .4byte _080B13B8

	.global _080E798C
_080E798C: .4byte _080A2358

	.global _080E7990
_080E7990:
	.incbin "baserom.gba", 0x000E7990, 0x00000004

	.global _080E7994
_080E7994:
	.incbin "baserom.gba", 0x000E7994, 0x0000001C

	.global _080E79B0
_080E79B0: .4byte _080EBE00

	.global _080E79B4
_080E79B4:
	.incbin "baserom.gba", 0x000E79B4, 0x00000004

	.global _080E79B8
_080E79B8: .4byte _0809738C

	.global _080E79BC
_080E79BC: .4byte _080972D4

	.global _080E79C0
_080E79C0:
	.incbin "baserom.gba", 0x000E79C0, 0x00000004

	.global _080E79C4
_080E79C4: .4byte _080A29B4

	.global _080E79C8
_080E79C8:
	.incbin "baserom.gba", 0x000E79C8, 0x00000004

	.global _080E79CC
_080E79CC:
	.incbin "baserom.gba", 0x000E79CC, 0x0000001C

	.global _080E79E8
_080E79E8: .4byte _080EBE00

	.global _080E79EC
_080E79EC:
	.incbin "baserom.gba", 0x000E79EC, 0x00000004

	.global _080E79F0
_080E79F0: .4byte _08098020

	.global _080E79F4
_080E79F4: .4byte _08097F68

	.global _080E79F8
_080E79F8:
	.incbin "baserom.gba", 0x000E79F8, 0x00000004

	.global _080E79FC
_080E79FC: .4byte _080A2B04

	.global _080E7A00
_080E7A00:
	.incbin "baserom.gba", 0x000E7A00, 0x00000004

	.global _080E7A04
_080E7A04:
	.incbin "baserom.gba", 0x000E7A04, 0x0000001C

	.global _080E7A20
_080E7A20: .4byte _080EBE00

	.global _080E7A24
_080E7A24:
	.incbin "baserom.gba", 0x000E7A24, 0x00000004

	.global _080E7A28
_080E7A28: .4byte _080990CC

	.global _080E7A2C
_080E7A2C: .4byte _0809901C

	.global _080E7A30
_080E7A30:
	.incbin "baserom.gba", 0x000E7A30, 0x00000004

	.global _080E7A34
_080E7A34: .4byte _080A2C48

	.global _080E7A38
_080E7A38:
	.incbin "baserom.gba", 0x000E7A38, 0x00000004

	.global _080E7A3C
_080E7A3C:
	.incbin "baserom.gba", 0x000E7A3C, 0x0000001C

	.global _080E7A58
_080E7A58: .4byte _080EBE00

	.global _080E7A5C
_080E7A5C:
	.incbin "baserom.gba", 0x000E7A5C, 0x00000004

	.global _080E7A60
_080E7A60: .4byte _08099DB4

	.global _080E7A64
_080E7A64: .4byte _08099CFC

	.global _080E7A68
_080E7A68:
	.incbin "baserom.gba", 0x000E7A68, 0x00000004

	.global _080E7A6C
_080E7A6C: .4byte _080A2D8C

	.global _080E7A70
_080E7A70:
	.incbin "baserom.gba", 0x000E7A70, 0x00000004

	.global _080E7A74
_080E7A74:
	.incbin "baserom.gba", 0x000E7A74, 0x0000001C

	.global _080E7A90
_080E7A90: .4byte _080EBE00

	.global _080E7A94
_080E7A94:
	.incbin "baserom.gba", 0x000E7A94, 0x00000018

	.global _080E7AAC
_080E7AAC:
	.incbin "baserom.gba", 0x000E7AAC, 0x0000001C

	.global _080E7AC8
_080E7AC8: .4byte _080EBE00

	.global _080E7ACC
_080E7ACC: .4byte _080EB960

	.global _080E7AD0
_080E7AD0:
	.incbin "baserom.gba", 0x000E7AD0, 0x0000000C

	.global _080E7ADC
_080E7ADC: .4byte _080A34A4

	.global _080E7AE0
_080E7AE0:
	.incbin "baserom.gba", 0x000E7AE0, 0x00000004

	.global _080E7AE4
_080E7AE4:
	.incbin "baserom.gba", 0x000E7AE4, 0x0000001C

	.global _080E7B00
_080E7B00: .4byte _080EBE00

	.global _080E7B04
_080E7B04: .4byte _080EB978

	.global _080E7B08
_080E7B08:
	.incbin "baserom.gba", 0x000E7B08, 0x0000000C

	.global _080E7B14
_080E7B14: .4byte _080A35F0

	.global _080E7B18
_080E7B18:
	.incbin "baserom.gba", 0x000E7B18, 0x00000004

	.global _080E7B1C
_080E7B1C:
	.incbin "baserom.gba", 0x000E7B1C, 0x0000001C

	.global _080E7B38
_080E7B38: .4byte _080EBE00

	.global _080E7B3C
_080E7B3C: .4byte _080EB990

	.global _080E7B40
_080E7B40:
	.incbin "baserom.gba", 0x000E7B40, 0x0000000C

	.global _080E7B4C
_080E7B4C: .4byte _080A3750

	.global _080E7B50
_080E7B50:
	.incbin "baserom.gba", 0x000E7B50, 0x00000004

	.global _080E7B54
_080E7B54:
	.incbin "baserom.gba", 0x000E7B54, 0x0000001C

	.global _080E7B70
_080E7B70: .4byte _080EBE00

	.global _080E7B74
_080E7B74: .4byte _080EB9A8

	.global _080E7B78
_080E7B78:
	.incbin "baserom.gba", 0x000E7B78, 0x0000000C

	.global _080E7B84
_080E7B84: .4byte _080A38C8

	.global _080E7B88
_080E7B88:
	.incbin "baserom.gba", 0x000E7B88, 0x00000004

	.global _080E7B8C
_080E7B8C:
	.incbin "baserom.gba", 0x000E7B8C, 0x0000001C

	.global _080E7BA8
_080E7BA8: .4byte _080EBE00

	.global _080E7BAC
_080E7BAC: .4byte _080EB9C0

	.global _080E7BB0
_080E7BB0:
	.incbin "baserom.gba", 0x000E7BB0, 0x0000000C

	.global _080E7BBC
_080E7BBC: .4byte _080A3A34

	.global _080E7BC0
_080E7BC0:
	.incbin "baserom.gba", 0x000E7BC0, 0x00000004

	.global _080E7BC4
_080E7BC4:
	.incbin "baserom.gba", 0x000E7BC4, 0x0000001C

	.global _080E7BE0
_080E7BE0: .4byte _080EBE00

	.global _080E7BE4
_080E7BE4: .4byte _080EB9D8

	.global _080E7BE8
_080E7BE8:
	.incbin "baserom.gba", 0x000E7BE8, 0x0000000C

	.global _080E7BF4
_080E7BF4: .4byte _080A3B90

	.global _080E7BF8
_080E7BF8:
	.incbin "baserom.gba", 0x000E7BF8, 0x00000004

	.global _080E7BFC
_080E7BFC:
	.incbin "baserom.gba", 0x000E7BFC, 0x0000001C

	.global _080E7C18
_080E7C18: .4byte _080EBE00

	.global _080E7C1C
_080E7C1C: .4byte _080EB9F0

	.global _080E7C20
_080E7C20:
	.incbin "baserom.gba", 0x000E7C20, 0x0000000C

	.global _080E7C2C
_080E7C2C: .4byte _080A3CD8

	.global _080E7C30
_080E7C30:
	.incbin "baserom.gba", 0x000E7C30, 0x00000004

	.global _080E7C34
_080E7C34:
	.incbin "baserom.gba", 0x000E7C34, 0x0000001C

	.global _080E7C50
_080E7C50: .4byte _080EBE00

	.global _080E7C54
_080E7C54: .4byte _080EBA08

	.global _080E7C58
_080E7C58:
	.incbin "baserom.gba", 0x000E7C58, 0x0000000C

	.global _080E7C64
_080E7C64: .4byte _080A3E14

	.global _080E7C68
_080E7C68:
	.incbin "baserom.gba", 0x000E7C68, 0x00000004

	.global _080E7C6C
_080E7C6C:
	.incbin "baserom.gba", 0x000E7C6C, 0x0000001C

	.global _080E7C88
_080E7C88: .4byte _080EBE00

	.global _080E7C8C
_080E7C8C: .4byte _080EBA20

	.global _080E7C90
_080E7C90:
	.incbin "baserom.gba", 0x000E7C90, 0x0000000C

	.global _080E7C9C
_080E7C9C: .4byte _080A3F60

	.global _080E7CA0
_080E7CA0:
	.incbin "baserom.gba", 0x000E7CA0, 0x00000004

	.global _080E7CA4
_080E7CA4:
	.incbin "baserom.gba", 0x000E7CA4, 0x0000001C

	.global _080E7CC0
_080E7CC0: .4byte _080EBE00

	.global _080E7CC4
_080E7CC4: .4byte _080EBA38

	.global _080E7CC8
_080E7CC8:
	.incbin "baserom.gba", 0x000E7CC8, 0x0000000C

	.global _080E7CD4
_080E7CD4: .4byte _080A40EC

	.global _080E7CD8
_080E7CD8:
	.incbin "baserom.gba", 0x000E7CD8, 0x00000004

	.global _080E7CDC
_080E7CDC:
	.incbin "baserom.gba", 0x000E7CDC, 0x0000001C

	.global _080E7CF8
_080E7CF8: .4byte _080EBE00

	.global _080E7CFC
_080E7CFC: .4byte _080EBA50

	.global _080E7D00
_080E7D00:
	.incbin "baserom.gba", 0x000E7D00, 0x0000000C

	.global _080E7D0C
_080E7D0C: .4byte _080A423C

	.global _080E7D10
_080E7D10:
	.incbin "baserom.gba", 0x000E7D10, 0x00000004

	.global _080E7D14
_080E7D14:
	.incbin "baserom.gba", 0x000E7D14, 0x0000001C

	.global _080E7D30
_080E7D30: .4byte _080EBE00

	.global _080E7D34
_080E7D34: .4byte _080EBA68

	.global _080E7D38
_080E7D38:
	.incbin "baserom.gba", 0x000E7D38, 0x0000000C

	.global _080E7D44
_080E7D44: .4byte _080A438C

	.global _080E7D48
_080E7D48:
	.incbin "baserom.gba", 0x000E7D48, 0x00000004

	.global _080E7D4C
_080E7D4C:
	.incbin "baserom.gba", 0x000E7D4C, 0x0000001C

	.global _080E7D68
_080E7D68: .4byte _080EBE00

	.global _080E7D6C
_080E7D6C: .4byte _080EBA80

	.global _080E7D70
_080E7D70:
	.incbin "baserom.gba", 0x000E7D70, 0x0000000C

	.global _080E7D7C
_080E7D7C: .4byte _080A44F0

	.global _080E7D80
_080E7D80:
	.incbin "baserom.gba", 0x000E7D80, 0x00000004

	.global _080E7D84
_080E7D84:
	.incbin "baserom.gba", 0x000E7D84, 0x0000001C

	.global _080E7DA0
_080E7DA0: .4byte _080EBE00

	.global _080E7DA4
_080E7DA4: .4byte _080EBA98

	.global _080E7DA8
_080E7DA8:
	.incbin "baserom.gba", 0x000E7DA8, 0x0000000C

	.global _080E7DB4
_080E7DB4: .4byte _080A4634

	.global _080E7DB8
_080E7DB8:
	.incbin "baserom.gba", 0x000E7DB8, 0x00000004

	.global _080E7DBC
_080E7DBC:
	.incbin "baserom.gba", 0x000E7DBC, 0x0000001C

	.global _080E7DD8
_080E7DD8: .4byte _080EBE00

	.global _080E7DDC
_080E7DDC: .4byte _080EBAB0

	.global _080E7DE0
_080E7DE0:
	.incbin "baserom.gba", 0x000E7DE0, 0x0000000C

	.global _080E7DEC
_080E7DEC: .4byte _080A47AC

	.global _080E7DF0
_080E7DF0:
	.incbin "baserom.gba", 0x000E7DF0, 0x00000004

	.global _080E7DF4
_080E7DF4:
	.incbin "baserom.gba", 0x000E7DF4, 0x0000001C

	.global _080E7E10
_080E7E10: .4byte _080EBE00

	.global _080E7E14
_080E7E14: .4byte _080EBAC8

	.global _080E7E18
_080E7E18:
	.incbin "baserom.gba", 0x000E7E18, 0x0000000C

	.global _080E7E24
_080E7E24: .4byte _080A491C

	.global _080E7E28
_080E7E28:
	.incbin "baserom.gba", 0x000E7E28, 0x00000004

	.global _080E7E2C
_080E7E2C:
	.incbin "baserom.gba", 0x000E7E2C, 0x0000001C

	.global _080E7E48
_080E7E48: .4byte _080EBE00

	.global _080E7E4C
_080E7E4C:
	.incbin "baserom.gba", 0x000E7E4C, 0x00000018

	.global _080E7E64
_080E7E64:
	.incbin "baserom.gba", 0x000E7E64, 0x0000001C

	.global _080E7E80
_080E7E80: .4byte _080EBE00

	.global _080E7E84
_080E7E84:
	.incbin "baserom.gba", 0x000E7E84, 0x00000018

	.global _080E7E9C
_080E7E9C:
	.incbin "baserom.gba", 0x000E7E9C, 0x0000001C

	.global _080E7EB8
_080E7EB8: .4byte _080EBE00

	.global _080E7EBC
_080E7EBC:
	.incbin "baserom.gba", 0x000E7EBC, 0x00000018

	.global _080E7ED4
_080E7ED4:
	.incbin "baserom.gba", 0x000E7ED4, 0x0000001C

	.global _080E7EF0
_080E7EF0: .4byte _080EBE00

	.global _080E7EF4
_080E7EF4:
	.incbin "baserom.gba", 0x000E7EF4, 0x00000018

	.global _080E7F0C
_080E7F0C:
	.incbin "baserom.gba", 0x000E7F0C, 0x0000001C

	.global _080E7F28
_080E7F28: .4byte _080EBE00

	.global _080E7F2C
_080E7F2C: .4byte _080EB900

	.global _080E7F30
_080E7F30:
	.incbin "baserom.gba", 0x000E7F30, 0x0000000C

	.global _080E7F3C
_080E7F3C: .4byte _080A2EDC

	.global _080E7F40
_080E7F40:
	.incbin "baserom.gba", 0x000E7F40, 0x00000004

	.global _080E7F44
_080E7F44:
	.incbin "baserom.gba", 0x000E7F44, 0x0000001C

	.global _080E7F60
_080E7F60: .4byte _080EBE00

	.global _080E7F64
_080E7F64: .4byte _080EB918

	.global _080E7F68
_080E7F68:
	.incbin "baserom.gba", 0x000E7F68, 0x0000000C

	.global _080E7F74
_080E7F74: .4byte _080A3038

	.global _080E7F78
_080E7F78:
	.incbin "baserom.gba", 0x000E7F78, 0x00000004

	.global _080E7F7C
_080E7F7C:
	.incbin "baserom.gba", 0x000E7F7C, 0x0000001C

	.global _080E7F98
_080E7F98: .4byte _080EBE00

	.global _080E7F9C
_080E7F9C: .4byte _080EB930

	.global _080E7FA0
_080E7FA0:
	.incbin "baserom.gba", 0x000E7FA0, 0x0000000C

	.global _080E7FAC
_080E7FAC: .4byte _080A31B8

	.global _080E7FB0
_080E7FB0:
	.incbin "baserom.gba", 0x000E7FB0, 0x00000004

	.global _080E7FB4
_080E7FB4:
	.incbin "baserom.gba", 0x000E7FB4, 0x0000001C

	.global _080E7FD0
_080E7FD0: .4byte _080EBE00

	.global _080E7FD4
_080E7FD4: .4byte _080EB948

	.global _080E7FD8
_080E7FD8:
	.incbin "baserom.gba", 0x000E7FD8, 0x0000000C

	.global _080E7FE4
_080E7FE4: .4byte _080A3334

	.global _080E7FE8
_080E7FE8:
	.incbin "baserom.gba", 0x000E7FE8, 0x00000004

	.global gTrackDefTable
gTrackDefTable: @ 0x080E7FEC
	.incbin "baserom.gba", 0x000E7FEC, 0x00000010

	.global _080E7FFC
_080E7FFC: .4byte _080E7534

	.global _080E8000
_080E8000: .4byte _080E756C

	.global _080E8004
_080E8004: .4byte _080E75A4

	.global _080E8008
_080E8008: .4byte _080E75DC

	.global _080E800C
_080E800C: .4byte _080E7614

	.global _080E8010
_080E8010: .4byte _080E764C

	.global _080E8014
_080E8014: .4byte _080E7684

	.global _080E8018
_080E8018: .4byte _080E76BC

	.global _080E801C
_080E801C: .4byte _080E76F4

	.global _080E8020
_080E8020: .4byte _080E772C

	.global _080E8024
_080E8024: .4byte _080E787C

	.global _080E8028
_080E8028: .4byte _080E7764

	.global _080E802C
_080E802C: .4byte _080E779C

	.global _080E8030
_080E8030: .4byte _080E77D4

	.global _080E8034
_080E8034: .4byte _080E780C

	.global _080E8038
_080E8038: .4byte _080E7844

	.global _080E803C
_080E803C: .4byte _080E7924

	.global _080E8040
_080E8040: .4byte _080E78B4

	.global _080E8044
_080E8044: .4byte _080E78EC

	.global _080E8048
_080E8048: .4byte _080E795C

	.global _080E804C
_080E804C: .4byte _080E7994

	.global _080E8050
_080E8050: .4byte _080E79CC

	.global _080E8054
_080E8054: .4byte _080E7A04

	.global _080E8058
_080E8058: .4byte _080E7A3C

	.global _080E805C
_080E805C: .4byte _080E7A74

	.global _080E8060
_080E8060:
	.incbin "baserom.gba", 0x000E8060, 0x0000000C

	.global _080E806C
_080E806C: .4byte _080E7F0C

	.global _080E8070
_080E8070: .4byte _080E7F44

	.global _080E8074
_080E8074: .4byte _080E7F7C

	.global _080E8078
_080E8078: .4byte _080E7FB4

	.global _080E807C
_080E807C: .4byte _080E7AAC

	.global _080E8080
_080E8080: .4byte _080E7AE4

	.global _080E8084
_080E8084: .4byte _080E7B1C

	.global _080E8088
_080E8088: .4byte _080E7B54

	.global _080E808C
_080E808C: .4byte _080E7B8C

	.global _080E8090
_080E8090: .4byte _080E7BC4

	.global _080E8094
_080E8094: .4byte _080E7BFC

	.global _080E8098
_080E8098: .4byte _080E7C34

	.global _080E809C
_080E809C: .4byte _080E7C6C

	.global _080E80A0
_080E80A0: .4byte _080E7CA4

	.global _080E80A4
_080E80A4: .4byte _080E7CDC

	.global _080E80A8
_080E80A8: .4byte _080E7D14

	.global _080E80AC
_080E80AC: .4byte _080E7D4C

	.global _080E80B0
_080E80B0: .4byte _080E7D84

	.global _080E80B4
_080E80B4: .4byte _080E7DBC

	.global _080E80B8
_080E80B8: .4byte _080E7DF4

	.global _080E80BC
_080E80BC: .4byte _080E7E2C

	.global _080E80C0
_080E80C0: .4byte _080E7E64

	.global _080E80C4
_080E80C4: .4byte _080E7E9C

	.global _080E80C8
_080E80C8: .4byte _080E7ED4

	.global _080E80CC
_080E80CC: .4byte _080760FC

	.global _080E80D0
_080E80D0: .4byte _08076104

	.global _080E80D4
_080E80D4: .4byte _0807610C

	.global _080E80D8
_080E80D8: .4byte _08076114

	.global _080E80DC
_080E80DC: .4byte _0807267C

	.global _080E80E0
_080E80E0: .4byte _080729BC

	.global _080E80E4
_080E80E4: .4byte _08072CFC

	.global _080E80E8
_080E80E8: .4byte _0807303C

	.global _080E80EC
_080E80EC: .4byte _0807337C

	.global _080E80F0
_080E80F0: .4byte _080736BC

	.global _080E80F4
_080E80F4: .4byte _080739FC

	.global _080E80F8
_080E80F8: .4byte _08073D3C

	.global _080E80FC
_080E80FC: .4byte _0807407C

	.global _080E8100
_080E8100: .4byte _080743BC

	.global _080E8104
_080E8104: .4byte _080746FC

	.global _080E8108
_080E8108: .4byte _08074A3C

	.global _080E810C
_080E810C: .4byte _08074D7C

	.global _080E8110
_080E8110: .4byte _080750BC

	.global _080E8114
_080E8114: .4byte _080753FC

	.global _080E8118
_080E8118: .4byte _0807573C

	.global _080E811C
_080E811C: .4byte _08075A7C

	.global _080E8120
_080E8120: .4byte _08075DBC

	.global _080E8124
_080E8124: .4byte _080E80DC

	.global _080E8128
_080E8128: .4byte _080E80F4

	.global _080E812C
_080E812C: .4byte _080E810C

	.global _080E8130
_080E8130: .4byte _0807617C

	.global _080E8134
_080E8134: .4byte _08076190

	.global _080E8138
_080E8138: .4byte _080761A4

	.global _080E813C
_080E813C: .4byte _080761B8

	.global _080E8140
_080E8140: .4byte _080761CC

	.global _080E8144
_080E8144: .4byte _080761E0

	.global _080E8148
_080E8148: .4byte _080761F4

	.global _080E814C
_080E814C: .4byte _080761E0

	.global _080E8150
_080E8150: .4byte _080761CC

	.global _080E8154
_080E8154: .4byte _080761B8

	.global _080E8158
_080E8158: .4byte _080761A4

	.global _080E815C
_080E815C: .4byte _08076190

	.global _080E8160
_080E8160: .4byte _08076208

	.global _080E8164
_080E8164: .4byte _08076228

	.global _080E8168
_080E8168: .4byte _08076248

	.global _080E816C
_080E816C: .4byte _08076268

	.global _080E8170
_080E8170: .4byte _08076288

	.global _080E8174
_080E8174: .4byte _080762A8

	.global _080E8178
_080E8178: .4byte _080762C8

	.global _080E817C
_080E817C: .4byte _080762E8

	.global _080E8180
_080E8180: .4byte _08076308

	.global _080E8184
_080E8184: .4byte _08076328

	.global _080E8188
_080E8188: .4byte _08076348

	.global _080E818C
_080E818C: .4byte _08076368

	.global _080E8190
_080E8190: .4byte _08076388

	.global _080E8194
_080E8194: .4byte _08076394

	.global _080E8198
_080E8198: .4byte _080763A0

	.global _080E819C
_080E819C: .4byte _080763AC

	.global _080E81A0
_080E81A0: .4byte _080763B8

	.global _080E81A4
_080E81A4: .4byte _080763C4

	.global _080E81A8
_080E81A8: .4byte _080763D0

	.global _080E81AC
_080E81AC: .4byte _080763C4

	.global _080E81B0
_080E81B0: .4byte _080763B8

	.global _080E81B4
_080E81B4: .4byte _080763AC

	.global _080E81B8
_080E81B8: .4byte _080763A0

	.global _080E81BC
_080E81BC: .4byte _08076394

	.global _080E81C0
_080E81C0: .4byte _080763DC

	.global _080E81C4
_080E81C4: .4byte _080763E8

	.global _080E81C8
_080E81C8: .4byte _080763E2

	.global _080E81CC
_080E81CC: .4byte _080763EE

	.global _080E81D0
_080E81D0:
	.incbin "baserom.gba", 0x000E81D0, 0x00000008

	.global _080E81D8
_080E81D8:
	.incbin "baserom.gba", 0x000E81D8, 0x00000008

	.global _080E81E0
_080E81E0:
	.incbin "baserom.gba", 0x000E81E0, 0x00000004

	.global _080E81E4
_080E81E4: .4byte _0807CA88

	.global _080E81E8
_080E81E8:
	.incbin "baserom.gba", 0x000E81E8, 0x0000000C

	.global _080E81F4
_080E81F4: .4byte _0807CA98

	.global _080E81F8
_080E81F8:
	.incbin "baserom.gba", 0x000E81F8, 0x0000000C

	.global _080E8204
_080E8204: .4byte _0807CAA8

	.global _080E8208
_080E8208:
	.incbin "baserom.gba", 0x000E8208, 0x00000018

	.global _080E8220
_080E8220:
	.incbin "baserom.gba", 0x000E8220, 0x0000000C

	.global _080E822C
_080E822C: .4byte sub_080355A4

	.global _080E8230
_080E8230:
	.incbin "baserom.gba", 0x000E8230, 0x00000004

	.global _080E8234
_080E8234: .4byte _080E81E0

	.global _080E8238
_080E8238:
	.incbin "baserom.gba", 0x000E8238, 0x00000008

	.global _080E8240
_080E8240:
	.incbin "baserom.gba", 0x000E8240, 0x0000000C

	.global _080E824C
_080E824C: .4byte sub_080355A4

	.global _080E8250
_080E8250:
	.incbin "baserom.gba", 0x000E8250, 0x00000004

	.global _080E8254
_080E8254: .4byte _080E81E0

	.global _080E8258
_080E8258:
	.incbin "baserom.gba", 0x000E8258, 0x00000008

	.global _080E8260
_080E8260: .4byte _080767C4

	.global _080E8264
_080E8264: .4byte _080767D4

	.global _080E8268
_080E8268: .4byte _080767E4

	.global _080E826C
_080E826C: .4byte _080767F4

	.global _080E8270
_080E8270: .4byte _08076804

	.global _080E8274
_080E8274: .4byte _08076814

	.global _080E8278
_080E8278: .4byte _08076824

	.global _080E827C
_080E827C: .4byte _08076834

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
_080E82F0: .4byte _08076844

	.global _080E82F4
_080E82F4: .4byte _08076864

	.global _080E82F8
_080E82F8: .4byte _08076884

	.global _080E82FC
_080E82FC: .4byte _080768A4

	.global _080E8300
_080E8300: .4byte _080768C4

	.global _080E8304
_080E8304: .4byte _080768A4

	.global _080E8308
_080E8308: .4byte _08076884

	.global _080E830C
_080E830C: .4byte _08076864

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
	.incbin "baserom.gba", 0x000EB39C, 0x00000008

	.global _080EB3A4
_080EB3A4:
	.incbin "baserom.gba", 0x000EB3A4, 33

	.global _080EB3C5
_080EB3C5:
	.incbin "baserom.gba", 0x000EB3C5, 21


	.global _080EB3DA
_080EB3DA:
	.incbin "baserom.gba", 0x000EB3DA, 41

	.global _080EB403
_080EB403:
	.incbin "baserom.gba", 0x000EB403, 33

	.global _080EB424
_080EB424:
	.incbin "baserom.gba", 0x000EB424, 41

	.global _080EB44D
_080EB44D:
	.incbin "baserom.gba", 0x000EB44D, 53

	.global _080EB482
_080EB482:
	.incbin "baserom.gba", 0x000EB482, 45

	.global _080EB4AF
_080EB4AF:
	.incbin "baserom.gba", 0x000EB4AF, 33

	.global _080EB4D0
_080EB4D0:
	.incbin "baserom.gba", 0x000EB4D0, 21

	.global _080EB4E5
_080EB4E5:
	.incbin "baserom.gba", 0x000EB4E5, 45

	.global _080E
_080EB512:
	.incbin "baserom.gba", 0x000EB512, 57

	.global _080EB54B
_080EB54B:
	.incbin "baserom.gba", 0x000EB54B, 53

	.global _080EB580
_080EB580:
	.incbin "baserom.gba", 0x000EB580, 45

	.global _080EB5AD
_080EB5AD:
	.incbin "baserom.gba", 0x000EB5AD, 45

	.global _080EB5DA
_080EB5DA:
	.incbin "baserom.gba", 0x000EB5DA, 41

	.global _080EB603
_080EB603:
	.incbin "baserom.gba", 0x000EB603, 49

	.global _080EB634
_080EB634:
	.incbin "baserom.gba", 0x000EB634, 49

	.global _080EB665
_080EB665:
	.incbin "baserom.gba", 0x000EB665, 33

	.global _080EB686
_080EB686:
	.incbin "baserom.gba", 0x000EB686, 89

	.global _080EB6DF
_080EB6DF:
	.incbin "baserom.gba", 0x000EB6DF, 65

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
	.incbin "baserom.gba", 0x000EB8E8, 0x00000018

	.global _080EB900
_080EB900:
	.incbin "baserom.gba", 0x000EB900, 0x00000018

	.global _080EB918
_080EB918:
	.incbin "baserom.gba", 0x000EB918, 0x00000018

	.global _080EB930
_080EB930:
	.incbin "baserom.gba", 0x000EB930, 0x00000018

	.global _080EB948
_080EB948:
	.incbin "baserom.gba", 0x000EB948, 0x00000018

	.global _080EB960
_080EB960:
	.incbin "baserom.gba", 0x000EB960, 0x00000018

	.global _080EB978
_080EB978:
	.incbin "baserom.gba", 0x000EB978, 0x00000018

	.global _080EB990
_080EB990:
	.incbin "baserom.gba", 0x000EB990, 0x00000018

	.global _080EB9A8
_080EB9A8:
	.incbin "baserom.gba", 0x000EB9A8, 0x00000018

	.global _080EB9C0
_080EB9C0:
	.incbin "baserom.gba", 0x000EB9C0, 0x00000018

	.global _080EB9D8
_080EB9D8:
	.incbin "baserom.gba", 0x000EB9D8, 0x00000018

	.global _080EB9F0
_080EB9F0:
	.incbin "baserom.gba", 0x000EB9F0, 0x00000018

	.global _080EBA08
_080EBA08:
	.incbin "baserom.gba", 0x000EBA08, 0x00000018

	.global _080EBA20
_080EBA20:
	.incbin "baserom.gba", 0x000EBA20, 0x00000018

	.global _080EBA38
_080EBA38:
	.incbin "baserom.gba", 0x000EBA38, 0x00000018

	.global _080EBA50
_080EBA50:
	.incbin "baserom.gba", 0x000EBA50, 0x00000018

	.global _080EBA68
_080EBA68:
	.incbin "baserom.gba", 0x000EBA68, 0x00000018

	.global _080EBA80
_080EBA80:
	.incbin "baserom.gba", 0x000EBA80, 0x00000018

	.global _080EBA98
_080EBA98:
	.incbin "baserom.gba", 0x000EBA98, 0x00000018

	.global _080EBAB0
_080EBAB0:
	.incbin "baserom.gba", 0x000EBAB0, 0x00000018

	.global _080EBAC8
_080EBAC8:
	.incbin "baserom.gba", 0x000EBAC8, 0x00000018

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
	.incbin "baserom.gba", 0x000EBD60, 0x000000A0

	.global _080EBE00
_080EBE00:
	.incbin "baserom.gba", 0x000EBE00, 0x00000028

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
	.incbin "baserom.gba", 0x000EC790, 0x00000004

	.global _080EC794
_080EC794: .4byte sub_0803DDCC

	.global _080EC798
_080EC798:
	.incbin "baserom.gba", 0x000EC798, 0x0000000C

	.global _080EC7A4
_080EC7A4: .4byte sub_0803DDD8

	.global _080EC7A8
_080EC7A8:
	.incbin "baserom.gba", 0x000EC7A8, 0x00000008

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
_080ED9AC: .4byte _0806D73C

	.global _080ED9B0
_080ED9B0: .4byte _0806D93C

	.global _080ED9B4
_080ED9B4: .4byte _0806DB3C

	.global _080ED9B8
_080ED9B8: .4byte _0806DD3C

	.global _080ED9BC
_080ED9BC: .4byte _0806DF3C

	.global _080ED9C0
_080ED9C0: .4byte _0806E13C

	.global _080ED9C4
_080ED9C4: .4byte _0806E33C

	.global _080ED9C8
_080ED9C8: .4byte _0806E53C

	.global _080ED9CC
_080ED9CC: .4byte _0807AC74

	.global _080ED9D0
_080ED9D0:
	.incbin "baserom.gba", 0x000ED9D0, 0x00000004

	.global _080ED9D4
_080ED9D4: .4byte _0807AC7C

	.global _080ED9D8
_080ED9D8:
	.incbin "baserom.gba", 0x000ED9D8, 0x00000004

	.global _080ED9DC
_080ED9DC: .4byte _0807AC8C

	.global _080ED9E0
_080ED9E0:
	.incbin "baserom.gba", 0x000ED9E0, 0x00000004

	.global _080ED9E4
_080ED9E4: .4byte _0807ACA0

	.global _080ED9E8
_080ED9E8:
	.incbin "baserom.gba", 0x000ED9E8, 0x00000004

	.global _080ED9EC
_080ED9EC: .4byte _0807ACB4

	.global _080ED9F0
_080ED9F0:
	.incbin "baserom.gba", 0x000ED9F0, 0x00000004

	.global _080ED9F4
_080ED9F4: .4byte _0807ACC8

	.global _080ED9F8
_080ED9F8:
	.incbin "baserom.gba", 0x000ED9F8, 0x0000000C

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
_080EDAB4: .4byte _0807ABB4

	.global _080EDAB8
_080EDAB8: .4byte _0807ABBC

	.global _080EDABC
_080EDABC: .4byte _0807ABC4

	.global _080EDAC0
_080EDAC0: .4byte _0807ABCC

	.global _080EDAC4
_080EDAC4: .4byte _0807ABD4

	.global _080EDAC8
_080EDAC8: .4byte _0807ABDC

	.global _080EDACC
_080EDACC: .4byte _0807ABE4

	.global _080EDAD0
_080EDAD0: .4byte _0807ABEC

	.global _080EDAD4
_080EDAD4: .4byte _0807ABF4

	.global _080EDAD8
_080EDAD8: .4byte _0807ABFC

	.global _080EDADC
_080EDADC: .4byte _0807AC04

	.global _080EDAE0
_080EDAE0: .4byte _0807AC0C

	.global _080EDAE4
_080EDAE4: .4byte _0807AC14

	.global _080EDAE8
_080EDAE8: .4byte _0807AC1C

	.global _080EDAEC
_080EDAEC: .4byte _0807AC24

	.global _080EDAF0
_080EDAF0: .4byte _0807AC2C

	.global _080EDAF4
_080EDAF4: .4byte _0807AC34

	.global _080EDAF8
_080EDAF8: .4byte _0807AC3C

	.global _080EDAFC
_080EDAFC:
	.incbin "baserom.gba", 0x000EDAFC, 0x0000000C

	.global _080EDB08
_080EDB08:
	.incbin "baserom.gba", 0x000EDB08, 0x0000000C

	.global _080EDB14
_080EDB14:
	.incbin "baserom.gba", 0x000EDB14, 0x00000004

	.global _080EDB18
_080EDB18: .4byte _0807AC4C

	.global _080EDB1C
_080EDB1C:
	.incbin "baserom.gba", 0x000EDB1C, 0x00000004

	.global _080EDB20
_080EDB20: .4byte sub_0804850C

	.global _080EDB24
_080EDB24:
	.incbin "baserom.gba", 0x000EDB24, 0x00000004

	.global _080EDB28
_080EDB28: .4byte sub_08048544

	.global _080EDB2C
_080EDB2C:
	.incbin "baserom.gba", 0x000EDB2C, 0x0000000C

	.global _080EDB38
_080EDB38: .4byte sub_08048564

	.global _080EDB3C
_080EDB3C:
	.incbin "baserom.gba", 0x000EDB3C, 0x0000000C

	.global _080EDB48
_080EDB48: .4byte sub_0804858C

	.global _080EDB4C
_080EDB4C:
	.incbin "baserom.gba", 0x000EDB4C, 0x0000001C

	.global _080EDB68
_080EDB68: .4byte sub_080485B4

	.global _080EDB6C
_080EDB6C:
	.incbin "baserom.gba", 0x000EDB6C, 0x00000004

	.global _080EDB70
_080EDB70: .4byte _0807AC4C

	.global _080EDB74
_080EDB74:
	.incbin "baserom.gba", 0x000EDB74, 0x0000001C

	.global _080EDB90
_080EDB90: .4byte sub_08048544

	.global _080EDB94
_080EDB94:
	.incbin "baserom.gba", 0x000EDB94, 0x00000004

	.global _080EDB98
_080EDB98: .4byte _0807AC4C

	.global _080EDB9C
_080EDB9C:
	.incbin "baserom.gba", 0x000EDB9C, 0x0000001C

	.global _080EDBB8
_080EDBB8: .4byte sub_08048564

	.global _080EDBBC
_080EDBBC:
	.incbin "baserom.gba", 0x000EDBBC, 0x00000004

	.global _080EDBC0
_080EDBC0: .4byte _0807AC4C

	.global _080EDBC4
_080EDBC4:
	.incbin "baserom.gba", 0x000EDBC4, 0x0000001C

	.global _080EDBE0
_080EDBE0: .4byte sub_0804858C

	.global _080EDBE4
_080EDBE4:
	.incbin "baserom.gba", 0x000EDBE4, 0x00000004

	.global _080EDBE8
_080EDBE8: .4byte _0807AC4C

	.global _080EDBEC
_080EDBEC:
	.incbin "baserom.gba", 0x000EDBEC, 0x0000001C

	.global _080EDC08
_080EDC08: .4byte sub_080485B4

	.global _080EDC0C
_080EDC0C:
	.incbin "baserom.gba", 0x000EDC0C, 0x00000004

	.global _080EDC10
_080EDC10: .4byte _0807AC4C

	.global _080EDC14
_080EDC14:
	.incbin "baserom.gba", 0x000EDC14, 0x00000020

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
_080EE704: .4byte _0806590C

	.global _080EE708
_080EE708: .4byte _08065A6C

	.global _080EE70C
_080EE70C: .4byte _08065BCC

	.global _080EE710
_080EE710: .4byte _08065D2C

	.global _080EE714
_080EE714: .4byte _08065E8C

	.global _080EE718
_080EE718: .4byte _08065FEC

	.global _080EE71C
_080EE71C: .4byte _0806614C

	.global _080EE720
_080EE720: .4byte _080662AC

	.global _080EE724
_080EE724: .4byte _08071A7C

	.global _080EE728
_080EE728: .4byte _08071BFC

	.global _080EE72C
_080EE72C: .4byte _08071D7C

	.global _080EE730
_080EE730: .4byte _08071EFC

	.global _080EE734
_080EE734: .4byte _0807207C

	.global _080EE738
_080EE738: .4byte _080721FC

	.global _080EE73C
_080EE73C: .4byte _0807237C

	.global _080EE740
_080EE740: .4byte _080724FC

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
	.incbin "baserom.gba", 0x000EF0D0, 0x00000004

	.global _080EF0D4
_080EF0D4: .4byte sub_080505D8

	.global _080EF0D8
_080EF0D8:
	.incbin "baserom.gba", 0x000EF0D8, 0x00000004

	.global _080EF0DC
_080EF0DC: .4byte _0807C820

	.global _080EF0E0
_080EF0E0:
	.incbin "baserom.gba", 0x000EF0E0, 0x0000000C

	.global _080EF0EC
_080EF0EC: .4byte sub_804FEA0

	.global _080EF0F0
_080EF0F0:
	.incbin "baserom.gba", 0x000EF0F0, 0x00000004

	.global _080EF0F4
_080EF0F4: .4byte sub_08050C18

	.global _080EF0F8
_080EF0F8:
	.incbin "baserom.gba", 0x000EF0F8, 0x00000014

	.global _080EF10C
_080EF10C: .4byte sub_804FEA0

	.global _080EF110
_080EF110:
	.incbin "baserom.gba", 0x000EF110, 0x0000000C

	.global _080EF11C
_080EF11C: .4byte sub_080503B4

	.global _080EF120
_080EF120:
	.incbin "baserom.gba", 0x000EF120, 0x00000014

	.global _080EF134
_080EF134: .4byte sub_804FEA0

	.global _080EF138
_080EF138:
	.incbin "baserom.gba", 0x000EF138, 0x00000014

	.global _080EF14C
_080EF14C: .4byte sub_804FEA0

	.global _080EF150
_080EF150:
	.incbin "baserom.gba", 0x000EF150, 0x00000014

	.global _080EF164
_080EF164: .4byte sub_804FEA0

	.global _080EF168
_080EF168:
	.incbin "baserom.gba", 0x000EF168, 0x00000014

	.global _080EF17C
_080EF17C: .4byte sub_804FEA0

	.global _080EF180
_080EF180:
	.incbin "baserom.gba", 0x000EF180, 0x00000010

	.global _080EF190
_080EF190:
	.incbin "baserom.gba", 0x000EF190, 0x00000004

	.global _080EF194
_080EF194: .4byte sub_080505D8

	.global _080EF198
_080EF198:
	.incbin "baserom.gba", 0x000EF198, 0x00000004

	.global _080EF19C
_080EF19C: .4byte _0807C820

	.global _080EF1A0
_080EF1A0:
	.incbin "baserom.gba", 0x000EF1A0, 0x00000014

	.global _080EF1B4
_080EF1B4: .4byte sub_080503B4

	.global _080EF1B8
_080EF1B8:
	.incbin "baserom.gba", 0x000EF1B8, 0x00000010

	.global _080EF1C8
_080EF1C8:
	.incbin "baserom.gba", 0x000EF1C8, 0x00000004

	.global _080EF1CC
_080EF1CC: .4byte sub_08050794

	.global _080EF1D0
_080EF1D0:
	.incbin "baserom.gba", 0x000EF1D0, 0x0000000C

	.global _080EF1DC
_080EF1DC: .4byte _080EF898

	.global _080EF1E0
_080EF1E0:
	.incbin "baserom.gba", 0x000EF1E0, 0x00000004

	.global _080EF1E4
_080EF1E4: .4byte sub_08050794

	.global _080EF1E8
_080EF1E8:
	.incbin "baserom.gba", 0x000EF1E8, 0x0000000C

	.global _080EF1F4
_080EF1F4: .4byte _080EF898

	.global _080EF1F8
_080EF1F8:
	.incbin "baserom.gba", 0x000EF1F8, 0x00000004

	.global _080EF1FC
_080EF1FC: .4byte sub_08050B34

	.global _080EF200
_080EF200:
	.incbin "baserom.gba", 0x000EF200, 0x00000004

	.global _080EF204
_080EF204: .4byte sub_08050BE4

	.global _080EF208
_080EF208:
	.incbin "baserom.gba", 0x000EF208, 0x0000000C

	.global _080EF214
_080EF214: .4byte sub_08050B38

	.global _080EF218
_080EF218:
	.incbin "baserom.gba", 0x000EF218, 0x00000004

	.global _080EF21C
_080EF21C: .4byte sub_080507D4

	.global _080EF220
_080EF220:
	.incbin "baserom.gba", 0x000EF220, 0x00000004

	.global _080EF224
_080EF224: .4byte sub_0805050C

	.global _080EF228
_080EF228:
	.incbin "baserom.gba", 0x000EF228, 0x00000004

	.global _080EF22C
_080EF22C: .4byte _0807C7CC

	.global _080EF230
_080EF230:
	.incbin "baserom.gba", 0x000EF230, 0x0000000C

	.global _080EF23C
_080EF23C: .4byte sub_804FEA0

	.global _080EF240
_080EF240:
	.incbin "baserom.gba", 0x000EF240, 0x00000004

	.global _080EF244
_080EF244: .4byte sub_08050C18

	.global _080EF248
_080EF248:
	.incbin "baserom.gba", 0x000EF248, 0x0000000C

	.global _080EF254
_080EF254: .4byte sub_08050DB8

	.global _080EF258
_080EF258:
	.incbin "baserom.gba", 0x000EF258, 0x00000014

	.global _080EF26C
_080EF26C: .4byte sub_804FEA0

	.global _080EF270
_080EF270:
	.incbin "baserom.gba", 0x000EF270, 0x0000001C

	.global _080EF28C
_080EF28C: .4byte sub_804FEA0

	.global _080EF290
_080EF290:
	.incbin "baserom.gba", 0x000EF290, 0x0000001C

	.global _080EF2AC
_080EF2AC: .4byte sub_804FEA0

	.global _080EF2B0
_080EF2B0:
	.incbin "baserom.gba", 0x000EF2B0, 0x00000014

	.global _080EF2C4
_080EF2C4: .4byte sub_804FEA0

	.global _080EF2C8
_080EF2C8:
	.incbin "baserom.gba", 0x000EF2C8, 0x0000001C

	.global _080EF2E4
_080EF2E4: .4byte sub_804FEA0

	.global _080EF2E8
_080EF2E8:
	.incbin "baserom.gba", 0x000EF2E8, 0x00000004

	.global _080EF2EC
_080EF2EC: .4byte sub_08050E48

	.global _080EF2F0
_080EF2F0:
	.incbin "baserom.gba", 0x000EF2F0, 0x00000014

	.global _080EF304
_080EF304: .4byte sub_804FEA0

	.global _080EF308
_080EF308:
	.incbin "baserom.gba", 0x000EF308, 0x0000000C

	.global _080EF314
_080EF314: .4byte sub_08050574

	.global _080EF318
_080EF318:
	.incbin "baserom.gba", 0x000EF318, 0x00000004

	.global _080EF31C
_080EF31C: .4byte sub_08050E64

	.global _080EF320
_080EF320:
	.incbin "baserom.gba", 0x000EF320, 0x0000000C

	.global _080EF32C
_080EF32C: .4byte sub_08050B28

	.global _080EF330
_080EF330:
	.incbin "baserom.gba", 0x000EF330, 0x00000004

	.global _080EF334
_080EF334: .4byte sub_08050E78

	.global _080EF338
_080EF338:
	.incbin "baserom.gba", 0x000EF338, 0x00000004

	.global _080EF33C
_080EF33C: .4byte _080EF898

	.global _080EF340
_080EF340:
	.incbin "baserom.gba", 0x000EF340, 0x00000004

	.global _080EF344
_080EF344: .4byte sub_08050B34

	.global _080EF348
_080EF348:
	.incbin "baserom.gba", 0x000EF348, 0x00000004

	.global _080EF34C
_080EF34C: .4byte sub_08050BE4

	.global _080EF350
_080EF350:
	.incbin "baserom.gba", 0x000EF350, 0x0000000C

	.global _080EF35C
_080EF35C: .4byte sub_0805050C

	.global _080EF360
_080EF360:
	.incbin "baserom.gba", 0x000EF360, 0x0000000C

	.global _080EF36C
_080EF36C: .4byte sub_08050574

	.global _080EF370
_080EF370:
	.incbin "baserom.gba", 0x000EF370, 0x00000004

	.global _080EF374
_080EF374: .4byte sub_08050E64

	.global _080EF378
_080EF378:
	.incbin "baserom.gba", 0x000EF378, 0x0000000C

	.global _080EF384
_080EF384: .4byte _080EF898

	.global _080EF388
_080EF388:
	.incbin "baserom.gba", 0x000EF388, 0x00000004

	.global _080EF38C
_080EF38C: .4byte sub_08050688

	.global _080EF390
_080EF390:
	.incbin "baserom.gba", 0x000EF390, 0x00000004

	.global _080EF394
_080EF394: .4byte _0807C7E0

	.global _080EF398
_080EF398:
	.incbin "baserom.gba", 0x000EF398, 0x0000000C

	.global _080EF3A4
_080EF3A4: .4byte sub_804FEA0

	.global _080EF3A8
_080EF3A8:
	.incbin "baserom.gba", 0x000EF3A8, 0x00000004

	.global _080EF3AC
_080EF3AC: .4byte sub_08050C18

	.global _080EF3B0
_080EF3B0:
	.incbin "baserom.gba", 0x000EF3B0, 0x0000000C

	.global _080EF3BC
_080EF3BC: .4byte _0807C7F0

	.global _080EF3C0
_080EF3C0:
	.incbin "baserom.gba", 0x000EF3C0, 0x0000000C

	.global _080EF3CC
_080EF3CC: .4byte sub_804FEA0

	.global _080EF3D0
_080EF3D0:
	.incbin "baserom.gba", 0x000EF3D0, 0x0000000C

	.global _080EF3DC
_080EF3DC: .4byte _0807C800

	.global _080EF3E0
_080EF3E0:
	.incbin "baserom.gba", 0x000EF3E0, 0x0000000C

	.global _080EF3EC
_080EF3EC: .4byte sub_804FEA0

	.global _080EF3F0
_080EF3F0:
	.incbin "baserom.gba", 0x000EF3F0, 0x0000000C

	.global _080EF3FC
_080EF3FC: .4byte _0807C810

	.global _080EF400
_080EF400:
	.incbin "baserom.gba", 0x000EF400, 0x0000000C

	.global _080EF40C
_080EF40C: .4byte sub_804FEA0

	.global _080EF410
_080EF410:
	.incbin "baserom.gba", 0x000EF410, 0x0000000C

	.global _080EF41C
_080EF41C: .4byte sub_08050DB8

	.global _080EF420
_080EF420:
	.incbin "baserom.gba", 0x000EF420, 0x0000000C

	.global _080EF42C
_080EF42C: .4byte sub_080506F0

	.global _080EF430
_080EF430:
	.incbin "baserom.gba", 0x000EF430, 0x0000000C

	.global _080EF43C
_080EF43C: .4byte _080EF898

	.global _080EF440
_080EF440:
	.incbin "baserom.gba", 0x000EF440, 0x00000004

	.global _080EF444
_080EF444: .4byte sub_08050688

	.global _080EF448
_080EF448:
	.incbin "baserom.gba", 0x000EF448, 0x00000004

	.global _080EF44C
_080EF44C: .4byte _0807C7E0

	.global _080EF450
_080EF450:
	.incbin "baserom.gba", 0x000EF450, 0x0000000C

	.global _080EF45C
_080EF45C: .4byte sub_08050DB8

	.global _080EF460
_080EF460:
	.incbin "baserom.gba", 0x000EF460, 0x0000000C

	.global _080EF46C
_080EF46C: .4byte sub_080506F0

	.global _080EF470
_080EF470:
	.incbin "baserom.gba", 0x000EF470, 0x0000000C

	.global _080EF47C
_080EF47C: .4byte _080EF898

	.global _080EF480
_080EF480:
	.incbin "baserom.gba", 0x000EF480, 0x00000004

	.global _080EF484
_080EF484: .4byte sub_08050688

	.global _080EF488
_080EF488:
	.incbin "baserom.gba", 0x000EF488, 0x00000004

	.global _080EF48C
_080EF48C: .4byte _0807C7E0

	.global _080EF490
_080EF490:
	.incbin "baserom.gba", 0x000EF490, 0x0000000C

	.global _080EF49C
_080EF49C: .4byte sub_804FEA0

	.global _080EF4A0
_080EF4A0:
	.incbin "baserom.gba", 0x000EF4A0, 0x00000004

	.global _080EF4A4
_080EF4A4: .4byte sub_08050C18

	.global _080EF4A8
_080EF4A8:
	.incbin "baserom.gba", 0x000EF4A8, 0x0000000C

	.global _080EF4B4
_080EF4B4: .4byte _0807C7F0

	.global _080EF4B8
_080EF4B8:
	.incbin "baserom.gba", 0x000EF4B8, 0x0000000C

	.global _080EF4C4
_080EF4C4: .4byte sub_804FEA0

	.global _080EF4C8
_080EF4C8:
	.incbin "baserom.gba", 0x000EF4C8, 0x0000000C

	.global _080EF4D4
_080EF4D4: .4byte _0807C800

	.global _080EF4D8
_080EF4D8:
	.incbin "baserom.gba", 0x000EF4D8, 0x0000000C

	.global _080EF4E4
_080EF4E4: .4byte sub_804FEA0

	.global _080EF4E8
_080EF4E8:
	.incbin "baserom.gba", 0x000EF4E8, 0x0000000C

	.global _080EF4F4
_080EF4F4: .4byte _0807C810

	.global _080EF4F8
_080EF4F8:
	.incbin "baserom.gba", 0x000EF4F8, 0x0000000C

	.global _080EF504
_080EF504: .4byte sub_804FEA0

	.global _080EF508
_080EF508:
	.incbin "baserom.gba", 0x000EF508, 0x0000000C

	.global _080EF514
_080EF514: .4byte sub_08050DB8

	.global _080EF518
_080EF518:
	.incbin "baserom.gba", 0x000EF518, 0x0000000C

	.global _080EF524
_080EF524: .4byte sub_080506F0

	.global _080EF528
_080EF528:
	.incbin "baserom.gba", 0x000EF528, 0x0000000C

	.global _080EF534
_080EF534: .4byte _080EF898

	.global _080EF538
_080EF538:
	.incbin "baserom.gba", 0x000EF538, 0x00000004

	.global _080EF53C
_080EF53C: .4byte sub_08050688

	.global _080EF540
_080EF540:
	.incbin "baserom.gba", 0x000EF540, 0x00000004

	.global _080EF544
_080EF544: .4byte _0807C7E0

	.global _080EF548
_080EF548:
	.incbin "baserom.gba", 0x000EF548, 0x0000000C

	.global _080EF554
_080EF554: .4byte sub_08050DB8

	.global _080EF558
_080EF558:
	.incbin "baserom.gba", 0x000EF558, 0x0000000C

	.global _080EF564
_080EF564: .4byte sub_080506F0

	.global _080EF568
_080EF568:
	.incbin "baserom.gba", 0x000EF568, 0x0000000C

	.global _080EF574
_080EF574: .4byte _080EF898

	.global _080EF578
_080EF578:
	.incbin "baserom.gba", 0x000EF578, 0x00000004

	.global _080EF57C
_080EF57C: .4byte sub_0805045C

	.global _080EF580
_080EF580:
	.incbin "baserom.gba", 0x000EF580, 0x00000004

	.global _080EF584
_080EF584: .4byte _0807C844

	.global _080EF588
_080EF588:
	.incbin "baserom.gba", 0x000EF588, 0x0000000C

	.global _080EF594
_080EF594: .4byte sub_804FEA0

	.global _080EF598
_080EF598:
	.incbin "baserom.gba", 0x000EF598, 0x00000004

	.global _080EF59C
_080EF59C: .4byte sub_08050C44

	.global _080EF5A0
_080EF5A0:
	.incbin "baserom.gba", 0x000EF5A0, 0x0000001C

	.global _080EF5BC
_080EF5BC: .4byte _0807C854

	.global _080EF5C0
_080EF5C0:
	.incbin "baserom.gba", 0x000EF5C0, 0x0000000C

	.global _080EF5CC
_080EF5CC: .4byte sub_804FEA0

	.global _080EF5D0
_080EF5D0:
	.incbin "baserom.gba", 0x000EF5D0, 0x0000000C

	.global _080EF5DC
_080EF5DC: .4byte _0807C864

	.global _080EF5E0
_080EF5E0:
	.incbin "baserom.gba", 0x000EF5E0, 0x0000000C

	.global _080EF5EC
_080EF5EC: .4byte sub_804FEA0

	.global _080EF5F0
_080EF5F0:
	.incbin "baserom.gba", 0x000EF5F0, 0x0000000C

	.global _080EF5FC
_080EF5FC: .4byte sub_08050DF8

	.global _080EF600
_080EF600:
	.incbin "baserom.gba", 0x000EF600, 0x0000000C

	.global _080EF60C
_080EF60C: .4byte _0807C874

	.global _080EF610
_080EF610:
	.incbin "baserom.gba", 0x000EF610, 0x0000000C

	.global _080EF61C
_080EF61C: .4byte sub_804FEA0

	.global _080EF620
_080EF620:
	.incbin "baserom.gba", 0x000EF620, 0x0000000C

	.global _080EF62C
_080EF62C: .4byte _0807C884

	.global _080EF630
_080EF630:
	.incbin "baserom.gba", 0x000EF630, 0x0000000C

	.global _080EF63C
_080EF63C: .4byte sub_804FEA0

	.global _080EF640
_080EF640:
	.incbin "baserom.gba", 0x000EF640, 0x0000000C

	.global _080EF64C
_080EF64C: .4byte _0807C894

	.global _080EF650
_080EF650:
	.incbin "baserom.gba", 0x000EF650, 0x0000000C

	.global _080EF65C
_080EF65C: .4byte sub_804FEA0

	.global _080EF660
_080EF660:
	.incbin "baserom.gba", 0x000EF660, 0x00000014

	.global _080EF674
_080EF674: .4byte _0807C8A8

	.global _080EF678
_080EF678:
	.incbin "baserom.gba", 0x000EF678, 0x0000000C

	.global _080EF684
_080EF684: .4byte sub_804FEA0

	.global _080EF688
_080EF688:
	.incbin "baserom.gba", 0x000EF688, 0x0000000C

	.global _080EF694
_080EF694: .4byte _0807C8B8

	.global _080EF698
_080EF698:
	.incbin "baserom.gba", 0x000EF698, 0x0000000C

	.global _080EF6A4
_080EF6A4: .4byte sub_804FEA0

	.global _080EF6A8
_080EF6A8:
	.incbin "baserom.gba", 0x000EF6A8, 0x0000000C

	.global _080EF6B4
_080EF6B4: .4byte _0807C844

	.global _080EF6B8
_080EF6B8:
	.incbin "baserom.gba", 0x000EF6B8, 0x0000000C

	.global _080EF6C4
_080EF6C4: .4byte sub_804FEA0

	.global _080EF6C8
_080EF6C8:
	.incbin "baserom.gba", 0x000EF6C8, 0x0000000C

	.global _080EF6D4
_080EF6D4: .4byte _0807C854

	.global _080EF6D8
_080EF6D8:
	.incbin "baserom.gba", 0x000EF6D8, 0x0000000C

	.global _080EF6E4
_080EF6E4: .4byte sub_804FEA0

	.global _080EF6E8
_080EF6E8:
	.incbin "baserom.gba", 0x000EF6E8, 0x0000000C

	.global _080EF6F4
_080EF6F4: .4byte _0807C864

	.global _080EF6F8
_080EF6F8:
	.incbin "baserom.gba", 0x000EF6F8, 0x0000000C

	.global _080EF704
_080EF704: .4byte sub_804FEA0

	.global _080EF708
_080EF708:
	.incbin "baserom.gba", 0x000EF708, 0x00000014

	.global _080EF71C
_080EF71C: .4byte _0807C874

	.global _080EF720
_080EF720:
	.incbin "baserom.gba", 0x000EF720, 0x0000000C

	.global _080EF72C
_080EF72C: .4byte sub_804FEA0

	.global _080EF730
_080EF730:
	.incbin "baserom.gba", 0x000EF730, 0x0000000C

	.global _080EF73C
_080EF73C: .4byte _0807C884

	.global _080EF740
_080EF740:
	.incbin "baserom.gba", 0x000EF740, 0x0000000C

	.global _080EF74C
_080EF74C: .4byte sub_804FEA0

	.global _080EF750
_080EF750:
	.incbin "baserom.gba", 0x000EF750, 0x0000000C

	.global _080EF75C
_080EF75C: .4byte _0807C894

	.global _080EF760
_080EF760:
	.incbin "baserom.gba", 0x000EF760, 0x0000000C

	.global _080EF76C
_080EF76C: .4byte sub_804FEA0

	.global _080EF770
_080EF770:
	.incbin "baserom.gba", 0x000EF770, 0x0000000C

	.global _080EF77C
_080EF77C: .4byte sub_08050754

	.global _080EF780
_080EF780:
	.incbin "baserom.gba", 0x000EF780, 0x0000000C

	.global _080EF78C
_080EF78C: .4byte _0807C8A8

	.global _080EF790
_080EF790:
	.incbin "baserom.gba", 0x000EF790, 0x0000000C

	.global _080EF79C
_080EF79C: .4byte sub_804FEA0

	.global _080EF7A0
_080EF7A0:
	.incbin "baserom.gba", 0x000EF7A0, 0x0000000C

	.global _080EF7AC
_080EF7AC: .4byte _0807C8B8

	.global _080EF7B0
_080EF7B0:
	.incbin "baserom.gba", 0x000EF7B0, 0x0000000C

	.global _080EF7BC
_080EF7BC: .4byte sub_804FEA0

	.global _080EF7C0
_080EF7C0:
	.incbin "baserom.gba", 0x000EF7C0, 0x0000000C

	.global _080EF7CC
_080EF7CC: .4byte _080EF898

	.global _080EF7D0
_080EF7D0:
	.incbin "baserom.gba", 0x000EF7D0, 0x00000004

	.global _080EF7D4
_080EF7D4: .4byte sub_0805045C

	.global _080EF7D8
_080EF7D8:
	.incbin "baserom.gba", 0x000EF7D8, 0x00000004

	.global _080EF7DC
_080EF7DC: .4byte _0807C844

	.global _080EF7E0
_080EF7E0:
	.incbin "baserom.gba", 0x000EF7E0, 0x0000000C

	.global _080EF7EC
_080EF7EC: .4byte sub_08050DF8

	.global _080EF7F0
_080EF7F0:
	.incbin "baserom.gba", 0x000EF7F0, 0x0000000C

	.global _080EF7FC
_080EF7FC: .4byte sub_08050754

	.global _080EF800
_080EF800:
	.incbin "baserom.gba", 0x000EF800, 0x0000000C

	.global _080EF80C
_080EF80C: .4byte _080EF898

	.global _080EF810
_080EF810:
	.incbin "baserom.gba", 0x000EF810, 0x0000000C

	.global _080EF81C
_080EF81C: .4byte sub_08050B64

	.global _080EF820
_080EF820:
	.incbin "baserom.gba", 0x000EF820, 0x00000004

	.global _080EF824
_080EF824: .4byte _0807C830

	.global _080EF828
_080EF828:
	.incbin "baserom.gba", 0x000EF828, 0x0000000C

	.global _080EF834
_080EF834: .4byte sub_804FEA0

	.global _080EF838
_080EF838:
	.incbin "baserom.gba", 0x000EF838, 0x00000018

	.global _080EF850
_080EF850:
	.incbin "baserom.gba", 0x000EF850, 0x0000000C

	.global _080EF85C
_080EF85C: .4byte sub_08050B64

	.global _080EF860
_080EF860:
	.incbin "baserom.gba", 0x000EF860, 0x00000018

	.global _080EF878
_080EF878:
	.incbin "baserom.gba", 0x000EF878, 0x00000004

	.global _080EF87C
_080EF87C: .4byte sub_08050C68

	.global _080EF880
_080EF880:
	.incbin "baserom.gba", 0x000EF880, 0x00000004

	.global _080EF884
_080EF884: .4byte sub_08050C18

	.global _080EF888
_080EF888:
	.incbin "baserom.gba", 0x000EF888, 0x00000010

	.global _080EF898
_080EF898:
	.incbin "baserom.gba", 0x000EF898, 0x00000004

	.global _080EF89C
_080EF89C: .4byte sub_08050BEC

	.global _080EF8A0
_080EF8A0:
	.incbin "baserom.gba", 0x000EF8A0, 0x00000010

	.global _080EF8B0
_080EF8B0:
	.incbin "baserom.gba", 0x000EF8B0, 0x00000004

	.global _080EF8B4
_080EF8B4: .4byte sub_08050CB8

	.global _080EF8B8
_080EF8B8:
	.incbin "baserom.gba", 0x000EF8B8, 0x00000004

	.global _080EF8BC
_080EF8BC: .4byte _0807C830

	.global _080EF8C0
_080EF8C0:
	.incbin "baserom.gba", 0x000EF8C0, 0x0000000C

	.global _080EF8CC
_080EF8CC: .4byte sub_804FEA0

	.global _080EF8D0
_080EF8D0:
	.incbin "baserom.gba", 0x000EF8D0, 0x00000004

	.global _080EF8D4
_080EF8D4: .4byte sub_08050C18

	.global _080EF8D8
_080EF8D8:
	.incbin "baserom.gba", 0x000EF8D8, 0x00000010

	.global _080EF8E8
_080EF8E8:
	.incbin "baserom.gba", 0x000EF8E8, 0x00000004

	.global _080EF8EC
_080EF8EC: .4byte sub_08050CB8

	.global _080EF8F0
_080EF8F0:
	.incbin "baserom.gba", 0x000EF8F0, 0x00000010

	.global _080EF900
_080EF900:
	.incbin "baserom.gba", 0x000EF900, 0x00000004

	.global _080EF904
_080EF904: .4byte _0807C830

	.global _080EF908
_080EF908:
	.incbin "baserom.gba", 0x000EF908, 0x0000000C

	.global _080EF914
_080EF914: .4byte sub_804FEA0

	.global _080EF918
_080EF918:
	.incbin "baserom.gba", 0x000EF918, 0x00000004

	.global _080EF91C
_080EF91C: .4byte sub_08050C18

	.global _080EF920
_080EF920:
	.incbin "baserom.gba", 0x000EF920, 0x00000004

	.global _080EF924
_080EF924: .4byte sub_0804F9E4

	.global _080EF928
_080EF928:
	.incbin "baserom.gba", 0x000EF928, 0x00000010

	.global _080EF938
_080EF938:
	.incbin "baserom.gba", 0x000EF938, 0x00000004

	.global _080EF93C
_080EF93C: .4byte sub_0804F9E4

	.global _080EF940
_080EF940:
	.incbin "baserom.gba", 0x000EF940, 0x00000010

	.global _080EF950
_080EF950:
	.incbin "baserom.gba", 0x000EF950, 0x00000004

	.global _080EF954
_080EF954: .4byte _0807C830

	.global _080EF958
_080EF958:
	.incbin "baserom.gba", 0x000EF958, 0x0000000C

	.global _080EF964
_080EF964: .4byte sub_804FEA0

	.global _080EF968
_080EF968:
	.incbin "baserom.gba", 0x000EF968, 0x00000004

	.global _080EF96C
_080EF96C: .4byte sub_08050C18

	.global _080EF970
_080EF970:
	.incbin "baserom.gba", 0x000EF970, 0x00000004

	.global _080EF974
_080EF974: .4byte sub_0804F9E4

	.global _080EF978
_080EF978:
	.incbin "baserom.gba", 0x000EF978, 0x00000010

	.global _080EF988
_080EF988:
	.incbin "baserom.gba", 0x000EF988, 0x00000004

	.global _080EF98C
_080EF98C: .4byte sub_0804F9E4

	.global _080EF990
_080EF990:
	.incbin "baserom.gba", 0x000EF990, 0x00000010

	.global _080EF9A0
_080EF9A0:
	.incbin "baserom.gba", 0x000EF9A0, 0x00000004

	.global _080EF9A4
_080EF9A4: .4byte _0807C830

	.global _080EF9A8
_080EF9A8:
	.incbin "baserom.gba", 0x000EF9A8, 0x0000000C

	.global _080EF9B4
_080EF9B4: .4byte sub_804FEA0

	.global _080EF9B8
_080EF9B8:
	.incbin "baserom.gba", 0x000EF9B8, 0x00000004

	.global _080EF9BC
_080EF9BC: .4byte sub_08050C18

	.global _080EF9C0
_080EF9C0:
	.incbin "baserom.gba", 0x000EF9C0, 0x00000010

	.global _080EF9D0
_080EF9D0:
	.incbin "baserom.gba", 0x000EF9D0, 0x00000010

	.global _080EF9E0
_080EF9E0:
	.incbin "baserom.gba", 0x000EF9E0, 0x00000004

	.global _080EF9E4
_080EF9E4: .4byte sub_08050C9C

	.global _080EF9E8
_080EF9E8:
	.incbin "baserom.gba", 0x000EF9E8, 0x00000004

	.global _080EF9EC
_080EF9EC: .4byte _0807C830

	.global _080EF9F0
_080EF9F0:
	.incbin "baserom.gba", 0x000EF9F0, 0x0000000C

	.global _080EF9FC
_080EF9FC: .4byte sub_804FEA0

	.global _080EFA00
_080EFA00:
	.incbin "baserom.gba", 0x000EFA00, 0x00000004

	.global _080EFA04
_080EFA04: .4byte sub_08050C18

	.global _080EFA08
_080EFA08:
	.incbin "baserom.gba", 0x000EFA08, 0x0000000C

	.global _080EFA14
_080EFA14: .4byte _080EF898

	.global _080EFA18
_080EFA18:
	.incbin "baserom.gba", 0x000EFA18, 0x00000008

	.global _080EFA20
_080EFA20:
	.incbin "baserom.gba", 0x000EFA20, 0x00000004

	.global _080EFA24
_080EFA24: .4byte sub_08050C9C

	.global _080EFA28
_080EFA28:
	.incbin "baserom.gba", 0x000EFA28, 0x0000000C

	.global _080EFA34
_080EFA34: .4byte _080EF898

	.global _080EFA38
_080EFA38:
	.incbin "baserom.gba", 0x000EFA38, 0x00000008

	.global _080EFA40
_080EFA40:
	.incbin "baserom.gba", 0x000EFA40, 0x00000004

	.global _080EFA44
_080EFA44: .4byte sub_804FB74

	.global _080EFA48
_080EFA48:
	.incbin "baserom.gba", 0x000EFA48, 0x00000004

	.global _080EFA4C
_080EFA4C: .4byte _0807C830

	.global _080EFA50
_080EFA50:
	.incbin "baserom.gba", 0x000EFA50, 0x0000000C

	.global _080EFA5C
_080EFA5C: .4byte sub_804FEA0

	.global _080EFA60
_080EFA60:
	.incbin "baserom.gba", 0x000EFA60, 0x00000004

	.global _080EFA64
_080EFA64: .4byte sub_08050C44

	.global _080EFA68
_080EFA68:
	.incbin "baserom.gba", 0x000EFA68, 0x00000010

	.global _080EFA78
_080EFA78:
	.incbin "baserom.gba", 0x000EFA78, 0x00000004

	.global _080EFA7C
_080EFA7C: .4byte sub_804FB74

	.global _080EFA80
_080EFA80:
	.incbin "baserom.gba", 0x000EFA80, 0x00000004

	.global _080EFA84
_080EFA84: .4byte sub_08050C44

	.global _080EFA88
_080EFA88:
	.incbin "baserom.gba", 0x000EFA88, 0x00000010

	.global _080EFA98
_080EFA98:
	.incbin "baserom.gba", 0x000EFA98, 0x00000014

	.global _080EFAAC
_080EFAAC: .4byte sub_804FC00

	.global _080EFAB0
_080EFAB0:
	.incbin "baserom.gba", 0x000EFAB0, 0x00000010

	.global _080EFAC0
_080EFAC0:
	.incbin "baserom.gba", 0x000EFAC0, 0x00000004

	.global _080EFAC4
_080EFAC4: .4byte _0807C8C8

	.global _080EFAC8
_080EFAC8:
	.incbin "baserom.gba", 0x000EFAC8, 0x00000004

	.global _080EFACC
_080EFACC: .4byte sub_08050C44

	.global _080EFAD0
_080EFAD0:
	.incbin "baserom.gba", 0x000EFAD0, 0x00000010

	.global _080EFAE0
_080EFAE0:
	.incbin "baserom.gba", 0x000EFAE0, 0x00000014

	.global _080EFAF4
_080EFAF4: .4byte sub_08050EBC

	.global _080EFAF8
_080EFAF8:
	.incbin "baserom.gba", 0x000EFAF8, 0x00000004

	.global _080EFAFC
_080EFAFC: .4byte sub_804FD6C

	.global _080EFB00
_080EFB00:
	.incbin "baserom.gba", 0x000EFB00, 0x0000000C

	.global _080EFB0C
_080EFB0C: .4byte sub_08050EE0

	.global _080EFB10
_080EFB10:
	.incbin "baserom.gba", 0x000EFB10, 0x00000010

	.global _080EFB20
_080EFB20:
	.incbin "baserom.gba", 0x000EFB20, 0x00000014

	.global _080EFB34
_080EFB34: .4byte sub_804FE0C

	.global _080EFB38
_080EFB38:
	.incbin "baserom.gba", 0x000EFB38, 0x00000010

	.global _080EFB48
_080EFB48:
	.incbin "baserom.gba", 0x000EFB48, 0x00000008

	.global _080EFB50
_080EFB50:
	.incbin "baserom.gba", 0x000EFB50, 0x00000004

	.global _080EFB54
_080EFB54: .4byte sub_08050F04

	.global _080EFB58
_080EFB58:
	.incbin "baserom.gba", 0x000EFB58, 0x00000004

	.global _080EFB5C
_080EFB5C: .4byte _0807C8D0

	.global _080EFB60
_080EFB60:
	.incbin "baserom.gba", 0x000EFB60, 0x00000004

	.global _080EFB64
_080EFB64: .4byte sub_08050C44

	.global _080EFB68
_080EFB68:
	.incbin "baserom.gba", 0x000EFB68, 0x0000000C

	.global _080EFB74
_080EFB74: .4byte _0807C8E0

	.global _080EFB78
_080EFB78:
	.incbin "baserom.gba", 0x000EFB78, 0x0000000C

	.global _080EFB84
_080EFB84: .4byte _0807C8F4

	.global _080EFB88
_080EFB88:
	.incbin "baserom.gba", 0x000EFB88, 0x0000000C

	.global _080EFB94
_080EFB94: .4byte _0807C908

	.global _080EFB98
_080EFB98:
	.incbin "baserom.gba", 0x000EFB98, 0x0000000C

	.global _080EFBA4
_080EFBA4: .4byte _0807C91C

	.global _080EFBA8
_080EFBA8:
	.incbin "baserom.gba", 0x000EFBA8, 0x0000000C

	.global _080EFBB4
_080EFBB4: .4byte _0807C92C

	.global _080EFBB8
_080EFBB8:
	.incbin "baserom.gba", 0x000EFBB8, 0x00000010

	.global _080EFBC8
_080EFBC8:
	.incbin "baserom.gba", 0x000EFBC8, 0x00000014

	.global _080EFBDC
_080EFBDC: .4byte sub_804FC60

	.global _080EFBE0
_080EFBE0:
	.incbin "baserom.gba", 0x000EFBE0, 0x00000010

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
_080EFC74: .4byte _080EFBF0

	.global _080EFC78
_080EFC78: .4byte _080EFC20

	.global _080EFC7C
_080EFC7C: .4byte _080EFC50

	.global _080EFC80
_080EFC80: .4byte _080EFC50

	.global _080EFC84
_080EFC84:
	.incbin "baserom.gba", 0x000EFC84, 0x000000C0

	.global _080EFD44
_080EFD44: .4byte _08076E08

	.global _080EFD48
_080EFD48: .4byte _08076E28

	.global _080EFD4C
_080EFD4C: .4byte _08076E48

	.global _080EFD50
_080EFD50: .4byte _08076E68

	.global _080EFD54
_080EFD54: .4byte _08076E88

	.global _080EFD58
_080EFD58: .4byte _0809FE54

	.global _080EFD5C
_080EFD5C: .4byte _080A01F4

	.global _080EFD60
_080EFD60: .4byte _080A0550

	.global _080EFD64
_080EFD64: .4byte _080A0900

	.global _080EFD68
_080EFD68: .4byte _080A0BE0

	.global _080EFD6C
_080EFD6C:
	.incbin "baserom.gba", 0x000EFD6C, 0x00000004

	.global _080EFD70
_080EFD70: .4byte sub_08052F10

	.global _080EFD74
_080EFD74:
	.incbin "baserom.gba", 0x000EFD74, 0x00000004

	.global _080EFD78
_080EFD78: .4byte sub_08052658

	.global _080EFD7C
_080EFD7C:
	.incbin "baserom.gba", 0x000EFD7C, 0x0000001C

	.global _080EFD98
_080EFD98: .4byte sub_080527E0

	.global _080EFD9C
_080EFD9C:
	.incbin "baserom.gba", 0x000EFD9C, 0x00000004

	.global _080EFDA0
_080EFDA0: .4byte sub_08052F6C

	.global _080EFDA4
_080EFDA4:
	.incbin "baserom.gba", 0x000EFDA4, 0x00000008

	.global _080EFDAC
_080EFDAC:
	.incbin "baserom.gba", 0x000EFDAC, 0x00000004

	.global _080EFDB0
_080EFDB0: .4byte sub_08052F8C

	.global _080EFDB4
_080EFDB4:
	.incbin "baserom.gba", 0x000EFDB4, 0x00000004

	.global _080EFDB8
_080EFDB8: .4byte sub_08052FEC

	.global _080EFDBC
_080EFDBC:
	.incbin "baserom.gba", 0x000EFDBC, 0x00000008

	.global _080EFDC4
_080EFDC4:
	.incbin "baserom.gba", 0x000EFDC4, 0x00000024

	.global _080EFDE8
_080EFDE8: .4byte _0807B9B8

	.global _080EFDEC
_080EFDEC:
	.incbin "baserom.gba", 0x000EFDEC, 0x00000004

	.global _080EFDF0
_080EFDF0: .4byte _0807B9B8

	.global _080EFDF4
_080EFDF4:
	.incbin "baserom.gba", 0x000EFDF4, 0x00000004

	.global _080EFDF8
_080EFDF8: .4byte _0807B9C0

	.global _080EFDFC
_080EFDFC:
	.incbin "baserom.gba", 0x000EFDFC, 0x00000004

	.global _080EFE00
_080EFE00: .4byte _0807B9C8

	.global _080EFE04
_080EFE04:
	.incbin "baserom.gba", 0x000EFE04, 0x00000004

	.global _080EFE08
_080EFE08: .4byte _0807B9D8

	.global _080EFE0C
_080EFE0C:
	.incbin "baserom.gba", 0x000EFE0C, 0x00000004

	.global _080EFE10
_080EFE10: .4byte _0807B9D8

	.global _080EFE14
_080EFE14:
	.incbin "baserom.gba", 0x000EFE14, 0x00000004

	.global _080EFE18
_080EFE18: .4byte _0807B9E0

	.global _080EFE1C
_080EFE1C:
	.incbin "baserom.gba", 0x000EFE1C, 0x00000004

	.global _080EFE20
_080EFE20: .4byte _0807B9E8

	.global _080EFE24
_080EFE24:
	.incbin "baserom.gba", 0x000EFE24, 0x00000004

	.global _080EFE28
_080EFE28: .4byte _0807B9F8

	.global _080EFE2C
_080EFE2C:
	.incbin "baserom.gba", 0x000EFE2C, 0x00000004

	.global _080EFE30
_080EFE30: .4byte _0807B9F8

	.global _080EFE34
_080EFE34:
	.incbin "baserom.gba", 0x000EFE34, 0x00000004

	.global _080EFE38
_080EFE38: .4byte _0807BA00

	.global _080EFE3C
_080EFE3C:
	.incbin "baserom.gba", 0x000EFE3C, 0x00000004

	.global _080EFE40
_080EFE40: .4byte _0807BA08

	.global _080EFE44
_080EFE44:
	.incbin "baserom.gba", 0x000EFE44, 0x00000004

	.global _080EFE48
_080EFE48: .4byte _0807BA18

	.global _080EFE4C
_080EFE4C:
	.incbin "baserom.gba", 0x000EFE4C, 0x00000004

	.global _080EFE50
_080EFE50: .4byte _0807BA18

	.global _080EFE54
_080EFE54:
	.incbin "baserom.gba", 0x000EFE54, 0x00000004

	.global _080EFE58
_080EFE58: .4byte _0807BA18

	.global _080EFE5C
_080EFE5C:
	.incbin "baserom.gba", 0x000EFE5C, 0x00000004

	.global _080EFE60
_080EFE60: .4byte _0807BA20

	.global _080EFE64
_080EFE64:
	.incbin "baserom.gba", 0x000EFE64, 0x00000004

	.global _080EFE68
_080EFE68: .4byte _0807BA28

	.global _080EFE6C
_080EFE6C:
	.incbin "baserom.gba", 0x000EFE6C, 0x00000004

	.global _080EFE70
_080EFE70: .4byte _0807BA28

	.global _080EFE74
_080EFE74:
	.incbin "baserom.gba", 0x000EFE74, 0x00000004

	.global _080EFE78
_080EFE78: .4byte _0807BA28

	.global _080EFE7C
_080EFE7C:
	.incbin "baserom.gba", 0x000EFE7C, 0x00000004

	.global _080EFE80
_080EFE80: .4byte _0807BA30

	.global _080EFE84
_080EFE84:
	.incbin "baserom.gba", 0x000EFE84, 0x00000004

	.global _080EFE88
_080EFE88: .4byte _0807BA38

	.global _080EFE8C
_080EFE8C:
	.incbin "baserom.gba", 0x000EFE8C, 0x00000004

	.global _080EFE90
_080EFE90: .4byte _0807BA38

	.global _080EFE94
_080EFE94:
	.incbin "baserom.gba", 0x000EFE94, 0x00000004

	.global _080EFE98
_080EFE98: .4byte _0807BA38

	.global _080EFE9C
_080EFE9C:
	.incbin "baserom.gba", 0x000EFE9C, 0x00000004

	.global _080EFEA0
_080EFEA0: .4byte _0807BA40

	.global _080EFEA4
_080EFEA4:
	.incbin "baserom.gba", 0x000EFEA4, 0x00000004

	.global _080EFEA8
_080EFEA8: .4byte _0807B9B8

	.global _080EFEAC
_080EFEAC:
	.incbin "baserom.gba", 0x000EFEAC, 0x00000004

	.global _080EFEB0
_080EFEB0: .4byte _0807B9B8

	.global _080EFEB4
_080EFEB4:
	.incbin "baserom.gba", 0x000EFEB4, 0x00000004

	.global _080EFEB8
_080EFEB8: .4byte _0807B9C0

	.global _080EFEBC
_080EFEBC:
	.incbin "baserom.gba", 0x000EFEBC, 0x00000004

	.global _080EFEC0
_080EFEC0: .4byte _0807B9C8

	.global _080EFEC4
_080EFEC4:
	.incbin "baserom.gba", 0x000EFEC4, 0x00000004

	.global _080EFEC8
_080EFEC8: .4byte _0807B9D0

	.global _080EFECC
_080EFECC:
	.incbin "baserom.gba", 0x000EFECC, 0x00000004

	.global _080EFED0
_080EFED0: .4byte _0807B9D0

	.global _080EFED4
_080EFED4:
	.incbin "baserom.gba", 0x000EFED4, 0x00000004

	.global _080EFED8
_080EFED8: .4byte _0807B9D0

	.global _080EFEDC
_080EFEDC:
	.incbin "baserom.gba", 0x000EFEDC, 0x00000004

	.global _080EFEE0
_080EFEE0: .4byte _0807B9D0

	.global _080EFEE4
_080EFEE4:
	.incbin "baserom.gba", 0x000EFEE4, 0x00000004

	.global _080EFEE8
_080EFEE8: .4byte _0807C940

	.global _080EFEEC
_080EFEEC:
	.incbin "baserom.gba", 0x000EFEEC, 0x00000004

	.global _080EFEF0
_080EFEF0: .4byte _0807C948

	.global _080EFEF4
_080EFEF4:
	.incbin "baserom.gba", 0x000EFEF4, 0x00000004

	.global _080EFEF8
_080EFEF8: .4byte _0807C950

	.global _080EFEFC
_080EFEFC:
	.incbin "baserom.gba", 0x000EFEFC, 0x00000004

	.global _080EFF00
_080EFF00: .4byte _0807C958

	.global _080EFF04
_080EFF04:
	.incbin "baserom.gba", 0x000EFF04, 0x00000004

	.global _080EFF08
_080EFF08: .4byte _0807C960

	.global _080EFF0C
_080EFF0C:
	.incbin "baserom.gba", 0x000EFF0C, 0x00000004

	.global _080EFF10
_080EFF10: .4byte _0807C968

	.global _080EFF14
_080EFF14:
	.incbin "baserom.gba", 0x000EFF14, 0x00000004

	.global _080EFF18
_080EFF18: .4byte _0807C970

	.global _080EFF1C
_080EFF1C:
	.incbin "baserom.gba", 0x000EFF1C, 0x00000004

	.global _080EFF20
_080EFF20: .4byte _0807C970

	.global _080EFF24
_080EFF24:
	.incbin "baserom.gba", 0x000EFF24, 0x00000004

	.global _080EFF28
_080EFF28: .4byte _0807C978

	.global _080EFF2C
_080EFF2C:
	.incbin "baserom.gba", 0x000EFF2C, 0x00000004

	.global _080EFF30
_080EFF30: .4byte _0807C980

	.global _080EFF34
_080EFF34:
	.incbin "baserom.gba", 0x000EFF34, 0x00000004

	.global _080EFF38
_080EFF38: .4byte _0807C988

	.global _080EFF3C
_080EFF3C:
	.incbin "baserom.gba", 0x000EFF3C, 0x00000004

	.global _080EFF40
_080EFF40: .4byte _0807C988

	.global _080EFF44
_080EFF44:
	.incbin "baserom.gba", 0x000EFF44, 0x00000004

	.global _080EFF48
_080EFF48: .4byte _0807C9A8

	.global _080EFF4C
_080EFF4C:
	.incbin "baserom.gba", 0x000EFF4C, 0x00000004

	.global _080EFF50
_080EFF50: .4byte _0807C9B0

	.global _080EFF54
_080EFF54:
	.incbin "baserom.gba", 0x000EFF54, 0x00000004

	.global _080EFF58
_080EFF58: .4byte _0807C9B8

	.global _080EFF5C
_080EFF5C:
	.incbin "baserom.gba", 0x000EFF5C, 0x00000004

	.global _080EFF60
_080EFF60: .4byte _0807C9C0

	.global _080EFF64
_080EFF64:
	.incbin "baserom.gba", 0x000EFF64, 0x00000004

	.global _080EFF68
_080EFF68: .4byte _0807C9E8

	.global _080EFF6C
_080EFF6C:
	.incbin "baserom.gba", 0x000EFF6C, 0x00000004

	.global _080EFF70
_080EFF70: .4byte _0807C9F0

	.global _080EFF74
_080EFF74:
	.incbin "baserom.gba", 0x000EFF74, 0x00000004

	.global _080EFF78
_080EFF78: .4byte _0807C9F8

	.global _080EFF7C
_080EFF7C:
	.incbin "baserom.gba", 0x000EFF7C, 0x00000004

	.global _080EFF80
_080EFF80: .4byte _0807CA00

	.global _080EFF84
_080EFF84:
	.incbin "baserom.gba", 0x000EFF84, 0x00000004

	.global _080EFF88
_080EFF88: .4byte _0807CA08

	.global _080EFF8C
_080EFF8C:
	.incbin "baserom.gba", 0x000EFF8C, 0x00000004

	.global _080EFF90
_080EFF90: .4byte _0807CA10

	.global _080EFF94
_080EFF94:
	.incbin "baserom.gba", 0x000EFF94, 0x00000004

	.global _080EFF98
_080EFF98: .4byte _0807CA18

	.global _080EFF9C
_080EFF9C:
	.incbin "baserom.gba", 0x000EFF9C, 0x00000004

	.global _080EFFA0
_080EFFA0: .4byte _0807CA20

	.global _080EFFA4
_080EFFA4:
	.incbin "baserom.gba", 0x000EFFA4, 0x00000004

	.global _080EFFA8
_080EFFA8: .4byte _0807CA28

	.global _080EFFAC
_080EFFAC:
	.incbin "baserom.gba", 0x000EFFAC, 0x00000004

	.global _080EFFB0
_080EFFB0: .4byte _0807CA30

	.global _080EFFB4
_080EFFB4:
	.incbin "baserom.gba", 0x000EFFB4, 0x00000004

	.global _080EFFB8
_080EFFB8: .4byte _0807CA38

	.global _080EFFBC
_080EFFBC:
	.incbin "baserom.gba", 0x000EFFBC, 0x00000004

	.global _080EFFC0
_080EFFC0: .4byte _0807CA40

	.global _080EFFC4
_080EFFC4:
	.incbin "baserom.gba", 0x000EFFC4, 0x00000004

	.global _080EFFC8
_080EFFC8: .4byte _0807CA48

	.global _080EFFCC
_080EFFCC:
	.incbin "baserom.gba", 0x000EFFCC, 0x00000004

	.global _080EFFD0
_080EFFD0: .4byte _0807CA48

	.global _080EFFD4
_080EFFD4:
	.incbin "baserom.gba", 0x000EFFD4, 0x00000004

	.global _080EFFD8
_080EFFD8: .4byte _0807CA58

	.global _080EFFDC
_080EFFDC:
	.incbin "baserom.gba", 0x000EFFDC, 0x00000004

	.global _080EFFE0
_080EFFE0: .4byte _0807CA58

	.global _080EFFE4
_080EFFE4:
	.incbin "baserom.gba", 0x000EFFE4, 0x00000004

	.global _080EFFE8
_080EFFE8: .4byte _0807CA50

	.global _080EFFEC
_080EFFEC:
	.incbin "baserom.gba", 0x000EFFEC, 0x00000004

	.global _080EFFF0
_080EFFF0: .4byte _0807CA50

	.global _080EFFF4
_080EFFF4:
	.incbin "baserom.gba", 0x000EFFF4, 0x00000004

	.global _080EFFF8
_080EFFF8: .4byte _0807CA60

	.global _080EFFFC
_080EFFFC:
	.incbin "baserom.gba", 0x000EFFFC, 0x00000004

	.global _080F0000
_080F0000: .4byte _0807CA60

	.global _080F0004
_080F0004:
	.incbin "baserom.gba", 0x000F0004, 0x00000004

	.global _080F0008
_080F0008: .4byte _0807BAF8

	.global _080F000C
_080F000C:
	.incbin "baserom.gba", 0x000F000C, 0x00000004

	.global _080F0010
_080F0010: .4byte _0807BAF8

	.global _080F0014
_080F0014:
	.incbin "baserom.gba", 0x000F0014, 0x00000004

	.global _080F0018
_080F0018: .4byte _0807BB08

	.global _080F001C
_080F001C:
	.incbin "baserom.gba", 0x000F001C, 0x00000004

	.global _080F0020
_080F0020: .4byte _0807BB08

	.global _080F0024
_080F0024:
	.incbin "baserom.gba", 0x000F0024, 0x00000004

	.global _080F0028
_080F0028: .4byte _0807BB00

	.global _080F002C
_080F002C:
	.incbin "baserom.gba", 0x000F002C, 0x00000004

	.global _080F0030
_080F0030: .4byte _0807BB00

	.global _080F0034
_080F0034:
	.incbin "baserom.gba", 0x000F0034, 0x00000004

	.global _080F0038
_080F0038: .4byte _0807BB10

	.global _080F003C
_080F003C:
	.incbin "baserom.gba", 0x000F003C, 0x00000004

	.global _080F0040
_080F0040: .4byte _0807BB10

	.global _080F0044
_080F0044:
	.incbin "baserom.gba", 0x000F0044, 0x00000004

	.global _080F0048
_080F0048: .4byte _0807BAE8

	.global _080F004C
_080F004C:
	.incbin "baserom.gba", 0x000F004C, 0x00000004

	.global _080F0050
_080F0050: .4byte _0807BAE8

	.global _080F0054
_080F0054:
	.incbin "baserom.gba", 0x000F0054, 0x00000004

	.global _080F0058
_080F0058: .4byte _0807BAF0

	.global _080F005C
_080F005C:
	.incbin "baserom.gba", 0x000F005C, 0x00000004

	.global _080F0060
_080F0060: .4byte _0807BAF0

	.global _080F0064
_080F0064:
	.incbin "baserom.gba", 0x000F0064, 0x00000004

	.global _080F0068
_080F0068: .4byte _0807BE78

	.global _080F006C
_080F006C:
	.incbin "baserom.gba", 0x000F006C, 0x00000004

	.global _080F0070
_080F0070: .4byte _0807BE78

	.global _080F0074
_080F0074:
	.incbin "baserom.gba", 0x000F0074, 0x00000004

	.global _080F0078
_080F0078: .4byte _0807BE78

	.global _080F007C
_080F007C:
	.incbin "baserom.gba", 0x000F007C, 0x00000004

	.global _080F0080
_080F0080: .4byte _0807BE78

	.global _080F0084
_080F0084:
	.incbin "baserom.gba", 0x000F0084, 0x00000004

	.global _080F0088
_080F0088: .4byte _0807BE98

	.global _080F008C
_080F008C:
	.incbin "baserom.gba", 0x000F008C, 0x00000004

	.global _080F0090
_080F0090: .4byte _0807BE98

	.global _080F0094
_080F0094:
	.incbin "baserom.gba", 0x000F0094, 0x00000004

	.global _080F0098
_080F0098: .4byte _0807BE98

	.global _080F009C
_080F009C:
	.incbin "baserom.gba", 0x000F009C, 0x00000004

	.global _080F00A0
_080F00A0: .4byte _0807BE98

	.global _080F00A4
_080F00A4:
	.incbin "baserom.gba", 0x000F00A4, 0x00000004

	.global _080F00A8
_080F00A8: .4byte _0807BEC0

	.global _080F00AC
_080F00AC:
	.incbin "baserom.gba", 0x000F00AC, 0x00000004

	.global _080F00B0
_080F00B0: .4byte _0807BEC0

	.global _080F00B4
_080F00B4:
	.incbin "baserom.gba", 0x000F00B4, 0x00000004

	.global _080F00B8
_080F00B8: .4byte _0807BEC0

	.global _080F00BC
_080F00BC:
	.incbin "baserom.gba", 0x000F00BC, 0x00000004

	.global _080F00C0
_080F00C0: .4byte _0807BEC0

	.global _080F00C4
_080F00C4:
	.incbin "baserom.gba", 0x000F00C4, 0x00000004

	.global _080F00C8
_080F00C8: .4byte _0807BEEC

	.global _080F00CC
_080F00CC:
	.incbin "baserom.gba", 0x000F00CC, 0x00000004

	.global _080F00D0
_080F00D0: .4byte _0807BEEC

	.global _080F00D4
_080F00D4:
	.incbin "baserom.gba", 0x000F00D4, 0x00000004

	.global _080F00D8
_080F00D8: .4byte _0807BEEC

	.global _080F00DC
_080F00DC:
	.incbin "baserom.gba", 0x000F00DC, 0x00000004

	.global _080F00E0
_080F00E0: .4byte _0807BEEC

	.global _080F00E4
_080F00E4:
	.incbin "baserom.gba", 0x000F00E4, 0x00000004

	.global _080F00E8
_080F00E8: .4byte _0807BF18

	.global _080F00EC
_080F00EC:
	.incbin "baserom.gba", 0x000F00EC, 0x00000004

	.global _080F00F0
_080F00F0: .4byte _0807BF18

	.global _080F00F4
_080F00F4:
	.incbin "baserom.gba", 0x000F00F4, 0x00000004

	.global _080F00F8
_080F00F8: .4byte _0807BF18

	.global _080F00FC
_080F00FC:
	.incbin "baserom.gba", 0x000F00FC, 0x00000004

	.global _080F0100
_080F0100: .4byte _0807BF18

	.global _080F0104
_080F0104:
	.incbin "baserom.gba", 0x000F0104, 0x00000004

	.global _080F0108
_080F0108: .4byte _0807BF2C

	.global _080F010C
_080F010C:
	.incbin "baserom.gba", 0x000F010C, 0x00000004

	.global _080F0110
_080F0110: .4byte _0807BF2C

	.global _080F0114
_080F0114:
	.incbin "baserom.gba", 0x000F0114, 0x00000004

	.global _080F0118
_080F0118: .4byte _0807BF2C

	.global _080F011C
_080F011C:
	.incbin "baserom.gba", 0x000F011C, 0x00000004

	.global _080F0120
_080F0120: .4byte _0807BF2C

	.global _080F0124
_080F0124:
	.incbin "baserom.gba", 0x000F0124, 0x00000004

	.global _080F0128
_080F0128: .4byte _0807BA48

	.global _080F012C
_080F012C:
	.incbin "baserom.gba", 0x000F012C, 0x00000004

	.global _080F0130
_080F0130: .4byte _0807BA50

	.global _080F0134
_080F0134:
	.incbin "baserom.gba", 0x000F0134, 0x00000004

	.global _080F0138
_080F0138: .4byte _0807BA58

	.global _080F013C
_080F013C:
	.incbin "baserom.gba", 0x000F013C, 0x00000004

	.global _080F0140
_080F0140: .4byte _0807BA60

	.global _080F0144
_080F0144:
	.incbin "baserom.gba", 0x000F0144, 0x00000004

	.global _080F0148
_080F0148: .4byte _0807BA68

	.global _080F014C
_080F014C:
	.incbin "baserom.gba", 0x000F014C, 0x00000004

	.global _080F0150
_080F0150: .4byte _0807BA70

	.global _080F0154
_080F0154:
	.incbin "baserom.gba", 0x000F0154, 0x00000004

	.global _080F0158
_080F0158: .4byte _0807BA78

	.global _080F015C
_080F015C:
	.incbin "baserom.gba", 0x000F015C, 0x00000004

	.global _080F0160
_080F0160: .4byte _0807BA80

	.global _080F0164
_080F0164:
	.incbin "baserom.gba", 0x000F0164, 0x00000004

	.global _080F0168
_080F0168: .4byte _0807BA88

	.global _080F016C
_080F016C:
	.incbin "baserom.gba", 0x000F016C, 0x00000004

	.global _080F0170
_080F0170: .4byte _0807BA90

	.global _080F0174
_080F0174:
	.incbin "baserom.gba", 0x000F0174, 0x00000004

	.global _080F0178
_080F0178: .4byte _0807BA98

	.global _080F017C
_080F017C:
	.incbin "baserom.gba", 0x000F017C, 0x00000004

	.global _080F0180
_080F0180: .4byte _0807BAA0

	.global _080F0184
_080F0184:
	.incbin "baserom.gba", 0x000F0184, 0x00000004

	.global _080F0188
_080F0188: .4byte _0807BAA8

	.global _080F018C
_080F018C:
	.incbin "baserom.gba", 0x000F018C, 0x00000004

	.global _080F0190
_080F0190: .4byte _0807BAB0

	.global _080F0194
_080F0194:
	.incbin "baserom.gba", 0x000F0194, 0x00000004

	.global _080F0198
_080F0198: .4byte _0807BAB8

	.global _080F019C
_080F019C:
	.incbin "baserom.gba", 0x000F019C, 0x00000004

	.global _080F01A0
_080F01A0: .4byte _0807BAC0

	.global _080F01A4
_080F01A4:
	.incbin "baserom.gba", 0x000F01A4, 0x00000004

	.global _080F01A8
_080F01A8: .4byte _0807BAC8

	.global _080F01AC
_080F01AC:
	.incbin "baserom.gba", 0x000F01AC, 0x00000004

	.global _080F01B0
_080F01B0: .4byte _0807BAD0

	.global _080F01B4
_080F01B4:
	.incbin "baserom.gba", 0x000F01B4, 0x00000004

	.global _080F01B8
_080F01B8: .4byte _0807BAD8

	.global _080F01BC
_080F01BC:
	.incbin "baserom.gba", 0x000F01BC, 0x00000004

	.global _080F01C0
_080F01C0: .4byte _0807BAE0

	.global _080F01C4
_080F01C4:
	.incbin "baserom.gba", 0x000F01C4, 0x00000004

	.global _080F01C8
_080F01C8: .4byte _0807BB18

	.global _080F01CC
_080F01CC:
	.incbin "baserom.gba", 0x000F01CC, 0x00000004

	.global _080F01D0
_080F01D0: .4byte _0807BB18

	.global _080F01D4
_080F01D4:
	.incbin "baserom.gba", 0x000F01D4, 0x00000004

	.global _080F01D8
_080F01D8: .4byte _0807BB28

	.global _080F01DC
_080F01DC:
	.incbin "baserom.gba", 0x000F01DC, 0x00000004

	.global _080F01E0
_080F01E0: .4byte _0807BB38

	.global _080F01E4
_080F01E4:
	.incbin "baserom.gba", 0x000F01E4, 0x00000004

	.global _080F01E8
_080F01E8: .4byte _0807BB20

	.global _080F01EC
_080F01EC:
	.incbin "baserom.gba", 0x000F01EC, 0x00000004

	.global _080F01F0
_080F01F0: .4byte _0807BB20

	.global _080F01F4
_080F01F4:
	.incbin "baserom.gba", 0x000F01F4, 0x00000004

	.global _080F01F8
_080F01F8: .4byte _0807BB30

	.global _080F01FC
_080F01FC:
	.incbin "baserom.gba", 0x000F01FC, 0x00000004

	.global _080F0200
_080F0200: .4byte _0807BB40

	.global _080F0204
_080F0204:
	.incbin "baserom.gba", 0x000F0204, 0x00000004

	.global _080F0208
_080F0208: .4byte _0807BB48

	.global _080F020C
_080F020C:
	.incbin "baserom.gba", 0x000F020C, 0x00000004

	.global _080F0210
_080F0210: .4byte _0807BB50

	.global _080F0214
_080F0214:
	.incbin "baserom.gba", 0x000F0214, 0x00000004

	.global _080F0218
_080F0218: .4byte _0807BB58

	.global _080F021C
_080F021C:
	.incbin "baserom.gba", 0x000F021C, 0x00000004

	.global _080F0220
_080F0220: .4byte _0807BB60

	.global _080F0224
_080F0224:
	.incbin "baserom.gba", 0x000F0224, 0x00000004

	.global _080F0228
_080F0228: .4byte _0807BB98

	.global _080F022C
_080F022C:
	.incbin "baserom.gba", 0x000F022C, 0x00000004

	.global _080F0230
_080F0230: .4byte _0807BBA8

	.global _080F0234
_080F0234:
	.incbin "baserom.gba", 0x000F0234, 0x00000004

	.global _080F0238
_080F0238: .4byte _0807BBB8

	.global _080F023C
_080F023C:
	.incbin "baserom.gba", 0x000F023C, 0x00000004

	.global _080F0240
_080F0240: .4byte _0807BBC8

	.global _080F0244
_080F0244:
	.incbin "baserom.gba", 0x000F0244, 0x00000004

	.global _080F0248
_080F0248: .4byte _0807BBA0

	.global _080F024C
_080F024C:
	.incbin "baserom.gba", 0x000F024C, 0x00000004

	.global _080F0250
_080F0250: .4byte _0807BBB0

	.global _080F0254
_080F0254:
	.incbin "baserom.gba", 0x000F0254, 0x00000004

	.global _080F0258
_080F0258: .4byte _0807BBC0

	.global _080F025C
_080F025C:
	.incbin "baserom.gba", 0x000F025C, 0x00000004

	.global _080F0260
_080F0260: .4byte _0807BBD0

	.global _080F0264
_080F0264:
	.incbin "baserom.gba", 0x000F0264, 0x00000004

	.global _080F0268
_080F0268: .4byte _0807BB68

	.global _080F026C
_080F026C:
	.incbin "baserom.gba", 0x000F026C, 0x00000004

	.global _080F0270
_080F0270: .4byte _0807BB68

	.global _080F0274
_080F0274:
	.incbin "baserom.gba", 0x000F0274, 0x00000004

	.global _080F0278
_080F0278: .4byte _0807BB78

	.global _080F027C
_080F027C:
	.incbin "baserom.gba", 0x000F027C, 0x00000004

	.global _080F0280
_080F0280: .4byte _0807BB88

	.global _080F0284
_080F0284:
	.incbin "baserom.gba", 0x000F0284, 0x00000004

	.global _080F0288
_080F0288: .4byte _0807BB70

	.global _080F028C
_080F028C:
	.incbin "baserom.gba", 0x000F028C, 0x00000004

	.global _080F0290
_080F0290: .4byte _0807BB70

	.global _080F0294
_080F0294:
	.incbin "baserom.gba", 0x000F0294, 0x00000004

	.global _080F0298
_080F0298: .4byte _0807BB80

	.global _080F029C
_080F029C:
	.incbin "baserom.gba", 0x000F029C, 0x00000004

	.global _080F02A0
_080F02A0: .4byte _0807BB90

	.global _080F02A4
_080F02A4:
	.incbin "baserom.gba", 0x000F02A4, 0x00000004

	.global _080F02A8
_080F02A8: .4byte _0807BBD8

	.global _080F02AC
_080F02AC:
	.incbin "baserom.gba", 0x000F02AC, 0x00000004

	.global _080F02B0
_080F02B0: .4byte _0807BBD8

	.global _080F02B4
_080F02B4:
	.incbin "baserom.gba", 0x000F02B4, 0x00000004

	.global _080F02B8
_080F02B8: .4byte _0807BBE0

	.global _080F02BC
_080F02BC:
	.incbin "baserom.gba", 0x000F02BC, 0x00000004

	.global _080F02C0
_080F02C0: .4byte _0807BBE8

	.global _080F02C4
_080F02C4:
	.incbin "baserom.gba", 0x000F02C4, 0x00000004

	.global _080F02C8
_080F02C8: .4byte _0807BBF0

	.global _080F02CC
_080F02CC:
	.incbin "baserom.gba", 0x000F02CC, 0x00000004

	.global _080F02D0
_080F02D0: .4byte _0807BBF0

	.global _080F02D4
_080F02D4:
	.incbin "baserom.gba", 0x000F02D4, 0x00000004

	.global _080F02D8
_080F02D8: .4byte _0807BBF8

	.global _080F02DC
_080F02DC:
	.incbin "baserom.gba", 0x000F02DC, 0x00000004

	.global _080F02E0
_080F02E0: .4byte _0807BC00

	.global _080F02E4
_080F02E4:
	.incbin "baserom.gba", 0x000F02E4, 0x00000004

	.global _080F02E8
_080F02E8: .4byte _0807BC68

	.global _080F02EC
_080F02EC:
	.incbin "baserom.gba", 0x000F02EC, 0x00000004

	.global _080F02F0
_080F02F0: .4byte _0807BC68

	.global _080F02F4
_080F02F4:
	.incbin "baserom.gba", 0x000F02F4, 0x00000004

	.global _080F02F8
_080F02F8: .4byte _0807BC70

	.global _080F02FC
_080F02FC:
	.incbin "baserom.gba", 0x000F02FC, 0x00000004

	.global _080F0300
_080F0300: .4byte _0807BC78

	.global _080F0304
_080F0304:
	.incbin "baserom.gba", 0x000F0304, 0x00000004

	.global _080F0308
_080F0308: .4byte _0807BC80

	.global _080F030C
_080F030C:
	.incbin "baserom.gba", 0x000F030C, 0x00000004

	.global _080F0310
_080F0310: .4byte _0807BC80

	.global _080F0314
_080F0314:
	.incbin "baserom.gba", 0x000F0314, 0x00000004

	.global _080F0318
_080F0318: .4byte _0807BC88

	.global _080F031C
_080F031C:
	.incbin "baserom.gba", 0x000F031C, 0x00000004

	.global _080F0320
_080F0320: .4byte _0807BC90

	.global _080F0324
_080F0324:
	.incbin "baserom.gba", 0x000F0324, 0x00000004

	.global _080F0328
_080F0328: .4byte _0807BCA8

	.global _080F032C
_080F032C:
	.incbin "baserom.gba", 0x000F032C, 0x00000004

	.global _080F0330
_080F0330: .4byte _0807BCA8

	.global _080F0334
_080F0334:
	.incbin "baserom.gba", 0x000F0334, 0x00000004

	.global _080F0338
_080F0338: .4byte _0807BCB0

	.global _080F033C
_080F033C:
	.incbin "baserom.gba", 0x000F033C, 0x00000004

	.global _080F0340
_080F0340: .4byte _0807BCB8

	.global _080F0344
_080F0344:
	.incbin "baserom.gba", 0x000F0344, 0x00000004

	.global _080F0348
_080F0348: .4byte _0807BD10

	.global _080F034C
_080F034C:
	.incbin "baserom.gba", 0x000F034C, 0x00000004

	.global _080F0350
_080F0350: .4byte _0807BD10

	.global _080F0354
_080F0354:
	.incbin "baserom.gba", 0x000F0354, 0x00000004

	.global _080F0358
_080F0358: .4byte _0807BD18

	.global _080F035C
_080F035C:
	.incbin "baserom.gba", 0x000F035C, 0x00000004

	.global _080F0360
_080F0360: .4byte _0807BD20

	.global _080F0364
_080F0364:
	.incbin "baserom.gba", 0x000F0364, 0x00000004

	.global _080F0368
_080F0368: .4byte _0807C448

	.global _080F036C
_080F036C:
	.incbin "baserom.gba", 0x000F036C, 0x00000004

	.global _080F0370
_080F0370: .4byte _0807C448

	.global _080F0374
_080F0374:
	.incbin "baserom.gba", 0x000F0374, 0x00000004

	.global _080F0378
_080F0378: .4byte _0807C450

	.global _080F037C
_080F037C:
	.incbin "baserom.gba", 0x000F037C, 0x00000004

	.global _080F0380
_080F0380: .4byte _0807C458

	.global _080F0384
_080F0384:
	.incbin "baserom.gba", 0x000F0384, 0x00000004

	.global _080F0388
_080F0388: .4byte _0807C460

	.global _080F038C
_080F038C:
	.incbin "baserom.gba", 0x000F038C, 0x00000004

	.global _080F0390
_080F0390: .4byte _0807C460

	.global _080F0394
_080F0394:
	.incbin "baserom.gba", 0x000F0394, 0x00000004

	.global _080F0398
_080F0398: .4byte _0807C468

	.global _080F039C
_080F039C:
	.incbin "baserom.gba", 0x000F039C, 0x00000004

	.global _080F03A0
_080F03A0: .4byte _0807C470

	.global _080F03A4
_080F03A4:
	.incbin "baserom.gba", 0x000F03A4, 0x00000004

	.global _080F03A8
_080F03A8: .4byte _0807C6B4

	.global _080F03AC
_080F03AC:
	.incbin "baserom.gba", 0x000F03AC, 0x00000004

	.global _080F03B0
_080F03B0: .4byte _0807C6B4

	.global _080F03B4
_080F03B4:
	.incbin "baserom.gba", 0x000F03B4, 0x00000004

	.global _080F03B8
_080F03B8: .4byte _0807C6BC

	.global _080F03BC
_080F03BC:
	.incbin "baserom.gba", 0x000F03BC, 0x00000004

	.global _080F03C0
_080F03C0: .4byte _0807C6C4

	.global _080F03C4
_080F03C4:
	.incbin "baserom.gba", 0x000F03C4, 0x00000004

	.global _080F03C8
_080F03C8: .4byte _0807BC08

	.global _080F03CC
_080F03CC:
	.incbin "baserom.gba", 0x000F03CC, 0x00000004

	.global _080F03D0
_080F03D0: .4byte _0807BC08

	.global _080F03D4
_080F03D4:
	.incbin "baserom.gba", 0x000F03D4, 0x00000004

	.global _080F03D8
_080F03D8: .4byte _0807BC10

	.global _080F03DC
_080F03DC:
	.incbin "baserom.gba", 0x000F03DC, 0x00000004

	.global _080F03E0
_080F03E0: .4byte _0807BC18

	.global _080F03E4
_080F03E4:
	.incbin "baserom.gba", 0x000F03E4, 0x00000004

	.global _080F03E8
_080F03E8: .4byte _0807BCC0

	.global _080F03EC
_080F03EC:
	.incbin "baserom.gba", 0x000F03EC, 0x00000004

	.global _080F03F0
_080F03F0: .4byte _0807BCC0

	.global _080F03F4
_080F03F4:
	.incbin "baserom.gba", 0x000F03F4, 0x00000004

	.global _080F03F8
_080F03F8: .4byte _0807BCC8

	.global _080F03FC
_080F03FC:
	.incbin "baserom.gba", 0x000F03FC, 0x00000004

	.global _080F0400
_080F0400: .4byte _0807BCD0

	.global _080F0404
_080F0404:
	.incbin "baserom.gba", 0x000F0404, 0x00000004

	.global _080F0408
_080F0408: .4byte _0807BC20

	.global _080F040C
_080F040C:
	.incbin "baserom.gba", 0x000F040C, 0x00000004

	.global _080F0410
_080F0410: .4byte _0807BC20

	.global _080F0414
_080F0414:
	.incbin "baserom.gba", 0x000F0414, 0x00000004

	.global _080F0418
_080F0418: .4byte _0807BC28

	.global _080F041C
_080F041C:
	.incbin "baserom.gba", 0x000F041C, 0x00000004

	.global _080F0420
_080F0420: .4byte _0807BC28

	.global _080F0424
_080F0424:
	.incbin "baserom.gba", 0x000F0424, 0x00000004

	.global _080F0428
_080F0428: .4byte _0807BC30

	.global _080F042C
_080F042C:
	.incbin "baserom.gba", 0x000F042C, 0x00000004

	.global _080F0430
_080F0430: .4byte _0807BC30

	.global _080F0434
_080F0434:
	.incbin "baserom.gba", 0x000F0434, 0x00000004

	.global _080F0438
_080F0438: .4byte _0807BC38

	.global _080F043C
_080F043C:
	.incbin "baserom.gba", 0x000F043C, 0x00000004

	.global _080F0440
_080F0440: .4byte _0807BC38

	.global _080F0444
_080F0444:
	.incbin "baserom.gba", 0x000F0444, 0x00000004

	.global _080F0448
_080F0448: .4byte _0807BC40

	.global _080F044C
_080F044C:
	.incbin "baserom.gba", 0x000F044C, 0x00000004

	.global _080F0450
_080F0450: .4byte _0807BC40

	.global _080F0454
_080F0454:
	.incbin "baserom.gba", 0x000F0454, 0x00000004

	.global _080F0458
_080F0458: .4byte _0807BC48

	.global _080F045C
_080F045C:
	.incbin "baserom.gba", 0x000F045C, 0x00000004

	.global _080F0460
_080F0460: .4byte _0807BC50

	.global _080F0464
_080F0464:
	.incbin "baserom.gba", 0x000F0464, 0x00000004

	.global _080F0468
_080F0468: .4byte _0807BC58

	.global _080F046C
_080F046C:
	.incbin "baserom.gba", 0x000F046C, 0x00000004

	.global _080F0470
_080F0470: .4byte _0807BC58

	.global _080F0474
_080F0474:
	.incbin "baserom.gba", 0x000F0474, 0x00000004

	.global _080F0478
_080F0478: .4byte _0807BC60

	.global _080F047C
_080F047C:
	.incbin "baserom.gba", 0x000F047C, 0x00000004

	.global _080F0480
_080F0480: .4byte _0807BC60

	.global _080F0484
_080F0484:
	.incbin "baserom.gba", 0x000F0484, 0x00000004

	.global _080F0488
_080F0488: .4byte _0807BC98

	.global _080F048C
_080F048C:
	.incbin "baserom.gba", 0x000F048C, 0x00000004

	.global _080F0490
_080F0490: .4byte _0807BC98

	.global _080F0494
_080F0494:
	.incbin "baserom.gba", 0x000F0494, 0x00000004

	.global _080F0498
_080F0498: .4byte _0807BCA0

	.global _080F049C
_080F049C:
	.incbin "baserom.gba", 0x000F049C, 0x00000004

	.global _080F04A0
_080F04A0: .4byte _0807BCA0

	.global _080F04A4
_080F04A4:
	.incbin "baserom.gba", 0x000F04A4, 0x00000004

	.global _080F04A8
_080F04A8: .4byte _0807BCD8

	.global _080F04AC
_080F04AC:
	.incbin "baserom.gba", 0x000F04AC, 0x00000004

	.global _080F04B0
_080F04B0: .4byte _0807BCE0

	.global _080F04B4
_080F04B4:
	.incbin "baserom.gba", 0x000F04B4, 0x00000004

	.global _080F04B8
_080F04B8: .4byte _0807BCE8

	.global _080F04BC
_080F04BC:
	.incbin "baserom.gba", 0x000F04BC, 0x00000004

	.global _080F04C0
_080F04C0: .4byte _0807BCF0

	.global _080F04C4
_080F04C4:
	.incbin "baserom.gba", 0x000F04C4, 0x00000004

	.global _080F04C8
_080F04C8: .4byte _0807BCF8

	.global _080F04CC
_080F04CC:
	.incbin "baserom.gba", 0x000F04CC, 0x00000004

	.global _080F04D0
_080F04D0: .4byte _0807BCF8

	.global _080F04D4
_080F04D4:
	.incbin "baserom.gba", 0x000F04D4, 0x00000004

	.global _080F04D8
_080F04D8: .4byte _0807BD00

	.global _080F04DC
_080F04DC:
	.incbin "baserom.gba", 0x000F04DC, 0x00000004

	.global _080F04E0
_080F04E0: .4byte _0807BD08

	.global _080F04E4
_080F04E4:
	.incbin "baserom.gba", 0x000F04E4, 0x00000004

	.global _080F04E8
_080F04E8: .4byte _0807BD30

	.global _080F04EC
_080F04EC:
	.incbin "baserom.gba", 0x000F04EC, 0x00000004

	.global _080F04F0
_080F04F0: .4byte _0807BD38

	.global _080F04F4
_080F04F4:
	.incbin "baserom.gba", 0x000F04F4, 0x00000004

	.global _080F04F8
_080F04F8: .4byte _0807BD40

	.global _080F04FC
_080F04FC:
	.incbin "baserom.gba", 0x000F04FC, 0x00000004

	.global _080F0500
_080F0500: .4byte _0807BD48

	.global _080F0504
_080F0504:
	.incbin "baserom.gba", 0x000F0504, 0x00000004

	.global _080F0508
_080F0508: .4byte _0807BDA8

	.global _080F050C
_080F050C:
	.incbin "baserom.gba", 0x000F050C, 0x00000004

	.global _080F0510
_080F0510: .4byte _0807BDB0

	.global _080F0514
_080F0514:
	.incbin "baserom.gba", 0x000F0514, 0x00000004

	.global _080F0518
_080F0518: .4byte _0807BDB8

	.global _080F051C
_080F051C:
	.incbin "baserom.gba", 0x000F051C, 0x00000004

	.global _080F0520
_080F0520: .4byte _0807BDC0

	.global _080F0524
_080F0524:
	.incbin "baserom.gba", 0x000F0524, 0x00000004

	.global _080F0528
_080F0528: .4byte _0807BD50

	.global _080F052C
_080F052C:
	.incbin "baserom.gba", 0x000F052C, 0x00000004

	.global _080F0530
_080F0530: .4byte _0807BD50

	.global _080F0534
_080F0534:
	.incbin "baserom.gba", 0x000F0534, 0x00000004

	.global _080F0538
_080F0538: .4byte _0807BD58

	.global _080F053C
_080F053C:
	.incbin "baserom.gba", 0x000F053C, 0x00000004

	.global _080F0540
_080F0540: .4byte _0807BD60

	.global _080F0544
_080F0544:
	.incbin "baserom.gba", 0x000F0544, 0x00000004

	.global _080F0548
_080F0548: .4byte _0807BD68

	.global _080F054C
_080F054C:
	.incbin "baserom.gba", 0x000F054C, 0x00000004

	.global _080F0550
_080F0550: .4byte _0807BD78

	.global _080F0554
_080F0554:
	.incbin "baserom.gba", 0x000F0554, 0x00000004

	.global _080F0558
_080F0558: .4byte _0807BD88

	.global _080F055C
_080F055C:
	.incbin "baserom.gba", 0x000F055C, 0x00000004

	.global _080F0560
_080F0560: .4byte _0807BD98

	.global _080F0564
_080F0564:
	.incbin "baserom.gba", 0x000F0564, 0x00000004

	.global _080F0568
_080F0568: .4byte _0807BD70

	.global _080F056C
_080F056C:
	.incbin "baserom.gba", 0x000F056C, 0x00000004

	.global _080F0570
_080F0570: .4byte _0807BD80

	.global _080F0574
_080F0574:
	.incbin "baserom.gba", 0x000F0574, 0x00000004

	.global _080F0578
_080F0578: .4byte _0807BD90

	.global _080F057C
_080F057C:
	.incbin "baserom.gba", 0x000F057C, 0x00000004

	.global _080F0580
_080F0580: .4byte _0807BDA0

	.global _080F0584
_080F0584:
	.incbin "baserom.gba", 0x000F0584, 0x00000004

	.global _080F0588
_080F0588: .4byte _0807BDCC

	.global _080F058C
_080F058C:
	.incbin "baserom.gba", 0x000F058C, 0x00000004

	.global _080F0590
_080F0590: .4byte _0807BDCC

	.global _080F0594
_080F0594:
	.incbin "baserom.gba", 0x000F0594, 0x00000004

	.global _080F0598
_080F0598: .4byte _0807BDEC

	.global _080F059C
_080F059C:
	.incbin "baserom.gba", 0x000F059C, 0x00000004

	.global _080F05A0
_080F05A0: .4byte _0807BDF4

	.global _080F05A4
_080F05A4:
	.incbin "baserom.gba", 0x000F05A4, 0x00000004

	.global _080F05A8
_080F05A8: .4byte _0807BDD4

	.global _080F05AC
_080F05AC:
	.incbin "baserom.gba", 0x000F05AC, 0x00000004

	.global _080F05B0
_080F05B0: .4byte _0807BDD4

	.global _080F05B4
_080F05B4:
	.incbin "baserom.gba", 0x000F05B4, 0x00000004

	.global _080F05B8
_080F05B8: .4byte _0807BDEC

	.global _080F05BC
_080F05BC:
	.incbin "baserom.gba", 0x000F05BC, 0x00000004

	.global _080F05C0
_080F05C0: .4byte _0807BDF4

	.global _080F05C4
_080F05C4:
	.incbin "baserom.gba", 0x000F05C4, 0x00000004

	.global _080F05C8
_080F05C8: .4byte _0807BDDC

	.global _080F05CC
_080F05CC:
	.incbin "baserom.gba", 0x000F05CC, 0x00000004

	.global _080F05D0
_080F05D0: .4byte _0807BDDC

	.global _080F05D4
_080F05D4:
	.incbin "baserom.gba", 0x000F05D4, 0x00000004

	.global _080F05D8
_080F05D8: .4byte _0807BDEC

	.global _080F05DC
_080F05DC:
	.incbin "baserom.gba", 0x000F05DC, 0x00000004

	.global _080F05E0
_080F05E0: .4byte _0807BDF4

	.global _080F05E4
_080F05E4:
	.incbin "baserom.gba", 0x000F05E4, 0x00000004

	.global _080F05E8
_080F05E8: .4byte _0807BDE4

	.global _080F05EC
_080F05EC:
	.incbin "baserom.gba", 0x000F05EC, 0x00000004

	.global _080F05F0
_080F05F0: .4byte _0807BDE4

	.global _080F05F4
_080F05F4:
	.incbin "baserom.gba", 0x000F05F4, 0x00000004

	.global _080F05F8
_080F05F8: .4byte _0807BDEC

	.global _080F05FC
_080F05FC:
	.incbin "baserom.gba", 0x000F05FC, 0x00000004

	.global _080F0600
_080F0600: .4byte _0807BDF4

	.global _080F0604
_080F0604:
	.incbin "baserom.gba", 0x000F0604, 0x00000004

	.global _080F0608
_080F0608: .4byte _0807BDFC

	.global _080F060C
_080F060C:
	.incbin "baserom.gba", 0x000F060C, 0x00000004

	.global _080F0610
_080F0610: .4byte _0807BDFC

	.global _080F0614
_080F0614:
	.incbin "baserom.gba", 0x000F0614, 0x00000004

	.global _080F0618
_080F0618: .4byte _0807BDEC

	.global _080F061C
_080F061C:
	.incbin "baserom.gba", 0x000F061C, 0x00000004

	.global _080F0620
_080F0620: .4byte _0807BDF4

	.global _080F0624
_080F0624:
	.incbin "baserom.gba", 0x000F0624, 0x00000004

	.global _080F0628
_080F0628: .4byte _0807BE08

	.global _080F062C
_080F062C:
	.incbin "baserom.gba", 0x000F062C, 0x00000004

	.global _080F0630
_080F0630: .4byte _0807BE08

	.global _080F0634
_080F0634:
	.incbin "baserom.gba", 0x000F0634, 0x00000004

	.global _080F0638
_080F0638: .4byte _0807BE10

	.global _080F063C
_080F063C:
	.incbin "baserom.gba", 0x000F063C, 0x00000004

	.global _080F0640
_080F0640: .4byte _0807BE18

	.global _080F0644
_080F0644:
	.incbin "baserom.gba", 0x000F0644, 0x00000004

	.global _080F0648
_080F0648: .4byte _0807BE20

	.global _080F064C
_080F064C:
	.incbin "baserom.gba", 0x000F064C, 0x00000004

	.global _080F0650
_080F0650: .4byte _0807BE20

	.global _080F0654
_080F0654:
	.incbin "baserom.gba", 0x000F0654, 0x00000004

	.global _080F0658
_080F0658: .4byte _0807BE28

	.global _080F065C
_080F065C:
	.incbin "baserom.gba", 0x000F065C, 0x00000004

	.global _080F0660
_080F0660: .4byte _0807BE30

	.global _080F0664
_080F0664:
	.incbin "baserom.gba", 0x000F0664, 0x00000004

	.global _080F0668
_080F0668: .4byte _0807BE38

	.global _080F066C
_080F066C:
	.incbin "baserom.gba", 0x000F066C, 0x00000004

	.global _080F0670
_080F0670: .4byte _0807BE40

	.global _080F0674
_080F0674:
	.incbin "baserom.gba", 0x000F0674, 0x00000004

	.global _080F0678
_080F0678: .4byte _0807BE48

	.global _080F067C
_080F067C:
	.incbin "baserom.gba", 0x000F067C, 0x00000004

	.global _080F0680
_080F0680: .4byte _0807BE50

	.global _080F0684
_080F0684:
	.incbin "baserom.gba", 0x000F0684, 0x00000004

	.global _080F0688
_080F0688: .4byte _0807BE58

	.global _080F068C
_080F068C:
	.incbin "baserom.gba", 0x000F068C, 0x00000004

	.global _080F0690
_080F0690: .4byte _0807BE60

	.global _080F0694
_080F0694:
	.incbin "baserom.gba", 0x000F0694, 0x00000004

	.global _080F0698
_080F0698: .4byte _0807BE68

	.global _080F069C
_080F069C:
	.incbin "baserom.gba", 0x000F069C, 0x00000004

	.global _080F06A0
_080F06A0: .4byte _0807BE70

	.global _080F06A4
_080F06A4:
	.incbin "baserom.gba", 0x000F06A4, 0x00000004

	.global _080F06A8
_080F06A8: .4byte _0807BF80

	.global _080F06AC
_080F06AC:
	.incbin "baserom.gba", 0x000F06AC, 0x00000004

	.global _080F06B0
_080F06B0: .4byte _0807BF80

	.global _080F06B4
_080F06B4:
	.incbin "baserom.gba", 0x000F06B4, 0x00000004

	.global _080F06B8
_080F06B8: .4byte _0807BF88

	.global _080F06BC
_080F06BC:
	.incbin "baserom.gba", 0x000F06BC, 0x00000004

	.global _080F06C0
_080F06C0: .4byte _0807BF90

	.global _080F06C4
_080F06C4:
	.incbin "baserom.gba", 0x000F06C4, 0x00000004

	.global _080F06C8
_080F06C8: .4byte _0807BFA0

	.global _080F06CC
_080F06CC:
	.incbin "baserom.gba", 0x000F06CC, 0x00000004

	.global _080F06D0
_080F06D0: .4byte _0807BFA0

	.global _080F06D4
_080F06D4:
	.incbin "baserom.gba", 0x000F06D4, 0x00000004

	.global _080F06D8
_080F06D8: .4byte _0807BFA8

	.global _080F06DC
_080F06DC:
	.incbin "baserom.gba", 0x000F06DC, 0x00000004

	.global _080F06E0
_080F06E0: .4byte _0807BFB0

	.global _080F06E4
_080F06E4:
	.incbin "baserom.gba", 0x000F06E4, 0x00000004

	.global _080F06E8
_080F06E8: .4byte _0807BFC0

	.global _080F06EC
_080F06EC:
	.incbin "baserom.gba", 0x000F06EC, 0x00000004

	.global _080F06F0
_080F06F0: .4byte _0807BFC0

	.global _080F06F4
_080F06F4:
	.incbin "baserom.gba", 0x000F06F4, 0x00000004

	.global _080F06F8
_080F06F8: .4byte _0807C038

	.global _080F06FC
_080F06FC:
	.incbin "baserom.gba", 0x000F06FC, 0x00000004

	.global _080F0700
_080F0700: .4byte _0807C048

	.global _080F0704
_080F0704:
	.incbin "baserom.gba", 0x000F0704, 0x00000004

	.global _080F0708
_080F0708: .4byte _0807BFD4

	.global _080F070C
_080F070C:
	.incbin "baserom.gba", 0x000F070C, 0x00000004

	.global _080F0710
_080F0710: .4byte _0807BFD4

	.global _080F0714
_080F0714:
	.incbin "baserom.gba", 0x000F0714, 0x00000004

	.global _080F0718
_080F0718: .4byte _0807C040

	.global _080F071C
_080F071C:
	.incbin "baserom.gba", 0x000F071C, 0x00000004

	.global _080F0720
_080F0720: .4byte _0807C050

	.global _080F0724
_080F0724:
	.incbin "baserom.gba", 0x000F0724, 0x00000004

	.global _080F0728
_080F0728: .4byte _0807BFE8

	.global _080F072C
_080F072C:
	.incbin "baserom.gba", 0x000F072C, 0x00000004

	.global _080F0730
_080F0730: .4byte _0807BFE8

	.global _080F0734
_080F0734:
	.incbin "baserom.gba", 0x000F0734, 0x00000004

	.global _080F0738
_080F0738: .4byte _0807C038

	.global _080F073C
_080F073C:
	.incbin "baserom.gba", 0x000F073C, 0x00000004

	.global _080F0740
_080F0740: .4byte _0807C048

	.global _080F0744
_080F0744:
	.incbin "baserom.gba", 0x000F0744, 0x00000004

	.global _080F0748
_080F0748: .4byte _0807BFFC

	.global _080F074C
_080F074C:
	.incbin "baserom.gba", 0x000F074C, 0x00000004

	.global _080F0750
_080F0750: .4byte _0807BFFC

	.global _080F0754
_080F0754:
	.incbin "baserom.gba", 0x000F0754, 0x00000004

	.global _080F0758
_080F0758: .4byte _0807C040

	.global _080F075C
_080F075C:
	.incbin "baserom.gba", 0x000F075C, 0x00000004

	.global _080F0760
_080F0760: .4byte _0807C050

	.global _080F0764
_080F0764:
	.incbin "baserom.gba", 0x000F0764, 0x00000004

	.global _080F0768
_080F0768: .4byte _0807C010

	.global _080F076C
_080F076C:
	.incbin "baserom.gba", 0x000F076C, 0x00000004

	.global _080F0770
_080F0770: .4byte _0807C010

	.global _080F0774
_080F0774:
	.incbin "baserom.gba", 0x000F0774, 0x00000004

	.global _080F0778
_080F0778: .4byte _0807C038

	.global _080F077C
_080F077C:
	.incbin "baserom.gba", 0x000F077C, 0x00000004

	.global _080F0780
_080F0780: .4byte _0807C048

	.global _080F0784
_080F0784:
	.incbin "baserom.gba", 0x000F0784, 0x00000004

	.global _080F0788
_080F0788: .4byte _0807C024

	.global _080F078C
_080F078C:
	.incbin "baserom.gba", 0x000F078C, 0x00000004

	.global _080F0790
_080F0790: .4byte _0807C038

	.global _080F0794
_080F0794:
	.incbin "baserom.gba", 0x000F0794, 0x00000004

	.global _080F0798
_080F0798: .4byte _0807C040

	.global _080F079C
_080F079C:
	.incbin "baserom.gba", 0x000F079C, 0x00000004

	.global _080F07A0
_080F07A0: .4byte _0807C050

	.global _080F07A4
_080F07A4:
	.incbin "baserom.gba", 0x000F07A4, 0x00000004

	.global _080F07A8
_080F07A8: .4byte _0807C058

	.global _080F07AC
_080F07AC:
	.incbin "baserom.gba", 0x000F07AC, 0x00000004

	.global _080F07B0
_080F07B0: .4byte _0807C058

	.global _080F07B4
_080F07B4:
	.incbin "baserom.gba", 0x000F07B4, 0x00000004

	.global _080F07B8
_080F07B8: .4byte _0807C068

	.global _080F07BC
_080F07BC:
	.incbin "baserom.gba", 0x000F07BC, 0x00000004

	.global _080F07C0
_080F07C0: .4byte _0807C070

	.global _080F07C4
_080F07C4:
	.incbin "baserom.gba", 0x000F07C4, 0x00000004

	.global _080F07C8
_080F07C8: .4byte _0807C0B0

	.global _080F07CC
_080F07CC:
	.incbin "baserom.gba", 0x000F07CC, 0x00000004

	.global _080F07D0
_080F07D0: .4byte _0807C0B0

	.global _080F07D4
_080F07D4:
	.incbin "baserom.gba", 0x000F07D4, 0x00000004

	.global _080F07D8
_080F07D8: .4byte _0807C0C0

	.global _080F07DC
_080F07DC:
	.incbin "baserom.gba", 0x000F07DC, 0x00000004

	.global _080F07E0
_080F07E0: .4byte _0807C0C8

	.global _080F07E4
_080F07E4:
	.incbin "baserom.gba", 0x000F07E4, 0x00000004

	.global _080F07E8
_080F07E8: .4byte _0807C078

	.global _080F07EC
_080F07EC:
	.incbin "baserom.gba", 0x000F07EC, 0x00000004

	.global _080F07F0
_080F07F0: .4byte _0807C078

	.global _080F07F4
_080F07F4:
	.incbin "baserom.gba", 0x000F07F4, 0x00000004

	.global _080F07F8
_080F07F8: .4byte _0807C088

	.global _080F07FC
_080F07FC:
	.incbin "baserom.gba", 0x000F07FC, 0x00000004

	.global _080F0800
_080F0800: .4byte _0807C090

	.global _080F0804
_080F0804:
	.incbin "baserom.gba", 0x000F0804, 0x00000004

	.global _080F0808
_080F0808: .4byte _0807C080

	.global _080F080C
_080F080C:
	.incbin "baserom.gba", 0x000F080C, 0x00000004

	.global _080F0810
_080F0810: .4byte _0807C080

	.global _080F0814
_080F0814:
	.incbin "baserom.gba", 0x000F0814, 0x00000004

	.global _080F0818
_080F0818: .4byte _0807C088

	.global _080F081C
_080F081C:
	.incbin "baserom.gba", 0x000F081C, 0x00000004

	.global _080F0820
_080F0820: .4byte _0807C090

	.global _080F0824
_080F0824:
	.incbin "baserom.gba", 0x000F0824, 0x00000004

	.global _080F0828
_080F0828: .4byte _0807C098

	.global _080F082C
_080F082C:
	.incbin "baserom.gba", 0x000F082C, 0x00000004

	.global _080F0830
_080F0830: .4byte _0807C098

	.global _080F0834
_080F0834:
	.incbin "baserom.gba", 0x000F0834, 0x00000004

	.global _080F0838
_080F0838: .4byte _0807C0A0

	.global _080F083C
_080F083C:
	.incbin "baserom.gba", 0x000F083C, 0x00000004

	.global _080F0840
_080F0840: .4byte _0807C0A8

	.global _080F0844
_080F0844:
	.incbin "baserom.gba", 0x000F0844, 0x00000004

	.global _080F0848
_080F0848: .4byte _0807C0E8

	.global _080F084C
_080F084C:
	.incbin "baserom.gba", 0x000F084C, 0x00000004

	.global _080F0850
_080F0850: .4byte _0807C0E8

	.global _080F0854
_080F0854:
	.incbin "baserom.gba", 0x000F0854, 0x00000004

	.global _080F0858
_080F0858: .4byte _0807C100

	.global _080F085C
_080F085C:
	.incbin "baserom.gba", 0x000F085C, 0x00000004

	.global _080F0860
_080F0860: .4byte _0807C118

	.global _080F0864
_080F0864:
	.incbin "baserom.gba", 0x000F0864, 0x00000004

	.global _080F0868
_080F0868: .4byte _0807C0F0

	.global _080F086C
_080F086C:
	.incbin "baserom.gba", 0x000F086C, 0x00000004

	.global _080F0870
_080F0870: .4byte _0807C0F8

	.global _080F0874
_080F0874:
	.incbin "baserom.gba", 0x000F0874, 0x00000004

	.global _080F0878
_080F0878: .4byte _0807C108

	.global _080F087C
_080F087C:
	.incbin "baserom.gba", 0x000F087C, 0x00000004

	.global _080F0880
_080F0880: .4byte _0807C120

	.global _080F0884
_080F0884:
	.incbin "baserom.gba", 0x000F0884, 0x00000004

	.global _080F0888
_080F0888: .4byte _0807C0F8

	.global _080F088C
_080F088C:
	.incbin "baserom.gba", 0x000F088C, 0x00000004

	.global _080F0890
_080F0890: .4byte _0807C0F8

	.global _080F0894
_080F0894:
	.incbin "baserom.gba", 0x000F0894, 0x00000004

	.global _080F0898
_080F0898: .4byte _0807C110

	.global _080F089C
_080F089C:
	.incbin "baserom.gba", 0x000F089C, 0x00000004

	.global _080F08A0
_080F08A0: .4byte _0807C128

	.global _080F08A4
_080F08A4:
	.incbin "baserom.gba", 0x000F08A4, 0x00000004

	.global _080F08A8
_080F08A8: .4byte _0807C130

	.global _080F08AC
_080F08AC:
	.incbin "baserom.gba", 0x000F08AC, 0x00000004

	.global _080F08B0
_080F08B0: .4byte _0807C130

	.global _080F08B4
_080F08B4:
	.incbin "baserom.gba", 0x000F08B4, 0x00000004

	.global _080F08B8
_080F08B8: .4byte _0807C138

	.global _080F08BC
_080F08BC:
	.incbin "baserom.gba", 0x000F08BC, 0x00000004

	.global _080F08C0
_080F08C0: .4byte _0807C140

	.global _080F08C4
_080F08C4:
	.incbin "baserom.gba", 0x000F08C4, 0x00000004

	.global _080F08C8
_080F08C8: .4byte _0807C150

	.global _080F08CC
_080F08CC:
	.incbin "baserom.gba", 0x000F08CC, 0x00000004

	.global _080F08D0
_080F08D0: .4byte _0807C150

	.global _080F08D4
_080F08D4:
	.incbin "baserom.gba", 0x000F08D4, 0x00000004

	.global _080F08D8
_080F08D8: .4byte _0807C158

	.global _080F08DC
_080F08DC:
	.incbin "baserom.gba", 0x000F08DC, 0x00000004

	.global _080F08E0
_080F08E0: .4byte _0807C160

	.global _080F08E4
_080F08E4:
	.incbin "baserom.gba", 0x000F08E4, 0x00000004

	.global _080F08E8
_080F08E8: .4byte _0807C168

	.global _080F08EC
_080F08EC:
	.incbin "baserom.gba", 0x000F08EC, 0x00000004

	.global _080F08F0
_080F08F0: .4byte _0807C170

	.global _080F08F4
_080F08F4:
	.incbin "baserom.gba", 0x000F08F4, 0x00000004

	.global _080F08F8
_080F08F8: .4byte _0807C178

	.global _080F08FC
_080F08FC:
	.incbin "baserom.gba", 0x000F08FC, 0x00000004

	.global _080F0900
_080F0900: .4byte _0807C180

	.global _080F0904
_080F0904:
	.incbin "baserom.gba", 0x000F0904, 0x00000004

	.global _080F0908
_080F0908: .4byte _0807C188

	.global _080F090C
_080F090C:
	.incbin "baserom.gba", 0x000F090C, 0x00000004

	.global _080F0910
_080F0910: .4byte _0807C190

	.global _080F0914
_080F0914:
	.incbin "baserom.gba", 0x000F0914, 0x00000004

	.global _080F0918
_080F0918: .4byte _0807C198

	.global _080F091C
_080F091C:
	.incbin "baserom.gba", 0x000F091C, 0x00000004

	.global _080F0920
_080F0920: .4byte _0807C1A0

	.global _080F0924
_080F0924:
	.incbin "baserom.gba", 0x000F0924, 0x00000004

	.global _080F0928
_080F0928: .4byte _0807C1A8

	.global _080F092C
_080F092C:
	.incbin "baserom.gba", 0x000F092C, 0x00000004

	.global _080F0930
_080F0930: .4byte _0807C1C8

	.global _080F0934
_080F0934:
	.incbin "baserom.gba", 0x000F0934, 0x00000004

	.global _080F0938
_080F0938: .4byte _0807C1E8

	.global _080F093C
_080F093C:
	.incbin "baserom.gba", 0x000F093C, 0x00000004

	.global _080F0940
_080F0940: .4byte _0807C208

	.global _080F0944
_080F0944:
	.incbin "baserom.gba", 0x000F0944, 0x00000004

	.global _080F0948
_080F0948: .4byte _0807C1B8

	.global _080F094C
_080F094C:
	.incbin "baserom.gba", 0x000F094C, 0x00000004

	.global _080F0950
_080F0950: .4byte _0807C1D8

	.global _080F0954
_080F0954:
	.incbin "baserom.gba", 0x000F0954, 0x00000004

	.global _080F0958
_080F0958: .4byte _0807C1F8

	.global _080F095C
_080F095C:
	.incbin "baserom.gba", 0x000F095C, 0x00000004

	.global _080F0960
_080F0960: .4byte _0807C208

	.global _080F0964
_080F0964:
	.incbin "baserom.gba", 0x000F0964, 0x00000004

	.global _080F0968
_080F0968: .4byte _0807C210

	.global _080F096C
_080F096C:
	.incbin "baserom.gba", 0x000F096C, 0x00000004

	.global _080F0970
_080F0970: .4byte _0807C218

	.global _080F0974
_080F0974:
	.incbin "baserom.gba", 0x000F0974, 0x00000004

	.global _080F0978
_080F0978: .4byte _0807C220

	.global _080F097C
_080F097C:
	.incbin "baserom.gba", 0x000F097C, 0x00000004

	.global _080F0980
_080F0980: .4byte _0807C228

	.global _080F0984
_080F0984:
	.incbin "baserom.gba", 0x000F0984, 0x00000004

	.global _080F0988
_080F0988: .4byte _0807C230

	.global _080F098C
_080F098C:
	.incbin "baserom.gba", 0x000F098C, 0x00000004

	.global _080F0990
_080F0990: .4byte _0807C238

	.global _080F0994
_080F0994:
	.incbin "baserom.gba", 0x000F0994, 0x00000004

	.global _080F0998
_080F0998: .4byte _0807C240

	.global _080F099C
_080F099C:
	.incbin "baserom.gba", 0x000F099C, 0x00000004

	.global _080F09A0
_080F09A0: .4byte _0807C248

	.global _080F09A4
_080F09A4:
	.incbin "baserom.gba", 0x000F09A4, 0x00000004

	.global _080F09A8
_080F09A8: .4byte _0807C250

	.global _080F09AC
_080F09AC:
	.incbin "baserom.gba", 0x000F09AC, 0x00000004

	.global _080F09B0
_080F09B0: .4byte _0807C270

	.global _080F09B4
_080F09B4:
	.incbin "baserom.gba", 0x000F09B4, 0x00000004

	.global _080F09B8
_080F09B8: .4byte _0807C290

	.global _080F09BC
_080F09BC:
	.incbin "baserom.gba", 0x000F09BC, 0x00000004

	.global _080F09C0
_080F09C0: .4byte _0807C2B0

	.global _080F09C4
_080F09C4:
	.incbin "baserom.gba", 0x000F09C4, 0x00000004

	.global _080F09C8
_080F09C8: .4byte _0807C260

	.global _080F09CC
_080F09CC:
	.incbin "baserom.gba", 0x000F09CC, 0x00000004

	.global _080F09D0
_080F09D0: .4byte _0807C280

	.global _080F09D4
_080F09D4:
	.incbin "baserom.gba", 0x000F09D4, 0x00000004

	.global _080F09D8
_080F09D8: .4byte _0807C2A0

	.global _080F09DC
_080F09DC:
	.incbin "baserom.gba", 0x000F09DC, 0x00000004

	.global _080F09E0
_080F09E0: .4byte _0807C2B0

	.global _080F09E4
_080F09E4:
	.incbin "baserom.gba", 0x000F09E4, 0x00000004

	.global _080F09E8
_080F09E8: .4byte _0807C2D0

	.global _080F09EC
_080F09EC:
	.incbin "baserom.gba", 0x000F09EC, 0x00000004

	.global _080F09F0
_080F09F0: .4byte _0807C2D8

	.global _080F09F4
_080F09F4:
	.incbin "baserom.gba", 0x000F09F4, 0x00000004

	.global _080F09F8
_080F09F8: .4byte _0807C2E0

	.global _080F09FC
_080F09FC:
	.incbin "baserom.gba", 0x000F09FC, 0x00000004

	.global _080F0A00
_080F0A00: .4byte _0807C2E8

	.global _080F0A04
_080F0A04:
	.incbin "baserom.gba", 0x000F0A04, 0x00000004

	.global _080F0A08
_080F0A08: .4byte _0807C2F0

	.global _080F0A0C
_080F0A0C:
	.incbin "baserom.gba", 0x000F0A0C, 0x00000004

	.global _080F0A10
_080F0A10: .4byte _0807C2F0

	.global _080F0A14
_080F0A14:
	.incbin "baserom.gba", 0x000F0A14, 0x00000004

	.global _080F0A18
_080F0A18: .4byte _0807C2F8

	.global _080F0A1C
_080F0A1C:
	.incbin "baserom.gba", 0x000F0A1C, 0x00000004

	.global _080F0A20
_080F0A20: .4byte _0807C300

	.global _080F0A24
_080F0A24:
	.incbin "baserom.gba", 0x000F0A24, 0x00000004

	.global _080F0A28
_080F0A28: .4byte _0807C308

	.global _080F0A2C
_080F0A2C:
	.incbin "baserom.gba", 0x000F0A2C, 0x00000004

	.global _080F0A30
_080F0A30: .4byte _0807C308

	.global _080F0A34
_080F0A34:
	.incbin "baserom.gba", 0x000F0A34, 0x00000004

	.global _080F0A38
_080F0A38: .4byte _0807C308

	.global _080F0A3C
_080F0A3C:
	.incbin "baserom.gba", 0x000F0A3C, 0x00000004

	.global _080F0A40
_080F0A40: .4byte _0807C308

	.global _080F0A44
_080F0A44:
	.incbin "baserom.gba", 0x000F0A44, 0x00000004

	.global _080F0A48
_080F0A48: .4byte _0807C310

	.global _080F0A4C
_080F0A4C:
	.incbin "baserom.gba", 0x000F0A4C, 0x00000004

	.global _080F0A50
_080F0A50: .4byte _0807C310

	.global _080F0A54
_080F0A54:
	.incbin "baserom.gba", 0x000F0A54, 0x00000004

	.global _080F0A58
_080F0A58: .4byte _0807C310

	.global _080F0A5C
_080F0A5C:
	.incbin "baserom.gba", 0x000F0A5C, 0x00000004

	.global _080F0A60
_080F0A60: .4byte _0807C310

	.global _080F0A64
_080F0A64:
	.incbin "baserom.gba", 0x000F0A64, 0x00000004

	.global _080F0A68
_080F0A68: .4byte _0807C338

	.global _080F0A6C
_080F0A6C:
	.incbin "baserom.gba", 0x000F0A6C, 0x00000004

	.global _080F0A70
_080F0A70: .4byte _0807C338

	.global _080F0A74
_080F0A74:
	.incbin "baserom.gba", 0x000F0A74, 0x00000004

	.global _080F0A78
_080F0A78: .4byte _0807C338

	.global _080F0A7C
_080F0A7C:
	.incbin "baserom.gba", 0x000F0A7C, 0x00000004

	.global _080F0A80
_080F0A80: .4byte _0807C338

	.global _080F0A84
_080F0A84:
	.incbin "baserom.gba", 0x000F0A84, 0x00000004

	.global _080F0A88
_080F0A88: .4byte _0807C364

	.global _080F0A8C
_080F0A8C:
	.incbin "baserom.gba", 0x000F0A8C, 0x00000004

	.global _080F0A90
_080F0A90: .4byte _0807C364

	.global _080F0A94
_080F0A94:
	.incbin "baserom.gba", 0x000F0A94, 0x00000004

	.global _080F0A98
_080F0A98: .4byte _0807C364

	.global _080F0A9C
_080F0A9C:
	.incbin "baserom.gba", 0x000F0A9C, 0x00000004

	.global _080F0AA0
_080F0AA0: .4byte _0807C364

	.global _080F0AA4
_080F0AA4:
	.incbin "baserom.gba", 0x000F0AA4, 0x00000004

	.global _080F0AA8
_080F0AA8: .4byte _0807C410

	.global _080F0AAC
_080F0AAC:
	.incbin "baserom.gba", 0x000F0AAC, 0x00000004

	.global _080F0AB0
_080F0AB0: .4byte _0807C418

	.global _080F0AB4
_080F0AB4:
	.incbin "baserom.gba", 0x000F0AB4, 0x00000004

	.global _080F0AB8
_080F0AB8: .4byte _0807C420

	.global _080F0ABC
_080F0ABC:
	.incbin "baserom.gba", 0x000F0ABC, 0x00000004

	.global _080F0AC0
_080F0AC0: .4byte _0807C428

	.global _080F0AC4
_080F0AC4:
	.incbin "baserom.gba", 0x000F0AC4, 0x00000004

	.global _080F0AC8
_080F0AC8: .4byte _0807C430

	.global _080F0ACC
_080F0ACC:
	.incbin "baserom.gba", 0x000F0ACC, 0x00000004

	.global _080F0AD0
_080F0AD0: .4byte _0807C430

	.global _080F0AD4
_080F0AD4:
	.incbin "baserom.gba", 0x000F0AD4, 0x00000004

	.global _080F0AD8
_080F0AD8: .4byte _0807C438

	.global _080F0ADC
_080F0ADC:
	.incbin "baserom.gba", 0x000F0ADC, 0x00000004

	.global _080F0AE0
_080F0AE0: .4byte _0807C440

	.global _080F0AE4
_080F0AE4:
	.incbin "baserom.gba", 0x000F0AE4, 0x00000004

	.global _080F0AE8
_080F0AE8: .4byte _0807C380

	.global _080F0AEC
_080F0AEC:
	.incbin "baserom.gba", 0x000F0AEC, 0x00000004

	.global _080F0AF0
_080F0AF0: .4byte _0807C380

	.global _080F0AF4
_080F0AF4:
	.incbin "baserom.gba", 0x000F0AF4, 0x00000004

	.global _080F0AF8
_080F0AF8: .4byte _0807C3B8

	.global _080F0AFC
_080F0AFC:
	.incbin "baserom.gba", 0x000F0AFC, 0x00000004

	.global _080F0B00
_080F0B00: .4byte _0807C3F0

	.global _080F0B04
_080F0B04:
	.incbin "baserom.gba", 0x000F0B04, 0x00000004

	.global _080F0B08
_080F0B08: .4byte _0807C388

	.global _080F0B0C
_080F0B0C:
	.incbin "baserom.gba", 0x000F0B0C, 0x00000004

	.global _080F0B10
_080F0B10: .4byte _0807C388

	.global _080F0B14
_080F0B14:
	.incbin "baserom.gba", 0x000F0B14, 0x00000004

	.global _080F0B18
_080F0B18: .4byte _0807C3C0

	.global _080F0B1C
_080F0B1C:
	.incbin "baserom.gba", 0x000F0B1C, 0x00000004

	.global _080F0B20
_080F0B20: .4byte _0807C3F8

	.global _080F0B24
_080F0B24:
	.incbin "baserom.gba", 0x000F0B24, 0x00000004

	.global _080F0B28
_080F0B28: .4byte _0807C390

	.global _080F0B2C
_080F0B2C:
	.incbin "baserom.gba", 0x000F0B2C, 0x00000004

	.global _080F0B30
_080F0B30: .4byte _0807C390

	.global _080F0B34
_080F0B34:
	.incbin "baserom.gba", 0x000F0B34, 0x00000004

	.global _080F0B38
_080F0B38: .4byte _0807C3C8

	.global _080F0B3C
_080F0B3C:
	.incbin "baserom.gba", 0x000F0B3C, 0x00000004

	.global _080F0B40
_080F0B40: .4byte _0807C400

	.global _080F0B44
_080F0B44:
	.incbin "baserom.gba", 0x000F0B44, 0x00000004

	.global _080F0B48
_080F0B48: .4byte _0807C398

	.global _080F0B4C
_080F0B4C:
	.incbin "baserom.gba", 0x000F0B4C, 0x00000004

	.global _080F0B50
_080F0B50: .4byte _0807C398

	.global _080F0B54
_080F0B54:
	.incbin "baserom.gba", 0x000F0B54, 0x00000004

	.global _080F0B58
_080F0B58: .4byte _0807C3D0

	.global _080F0B5C
_080F0B5C:
	.incbin "baserom.gba", 0x000F0B5C, 0x00000004

	.global _080F0B60
_080F0B60: .4byte _0807C3F8

	.global _080F0B64
_080F0B64:
	.incbin "baserom.gba", 0x000F0B64, 0x00000004

	.global _080F0B68
_080F0B68: .4byte _0807C3A0

	.global _080F0B6C
_080F0B6C:
	.incbin "baserom.gba", 0x000F0B6C, 0x00000004

	.global _080F0B70
_080F0B70: .4byte _0807C3A0

	.global _080F0B74
_080F0B74:
	.incbin "baserom.gba", 0x000F0B74, 0x00000004

	.global _080F0B78
_080F0B78: .4byte _0807C3D8

	.global _080F0B7C
_080F0B7C:
	.incbin "baserom.gba", 0x000F0B7C, 0x00000004

	.global _080F0B80
_080F0B80: .4byte _0807C408

	.global _080F0B84
_080F0B84:
	.incbin "baserom.gba", 0x000F0B84, 0x00000004

	.global _080F0B88
_080F0B88: .4byte _0807C3A8

	.global _080F0B8C
_080F0B8C:
	.incbin "baserom.gba", 0x000F0B8C, 0x00000004

	.global _080F0B90
_080F0B90: .4byte _0807C3A8

	.global _080F0B94
_080F0B94:
	.incbin "baserom.gba", 0x000F0B94, 0x00000004

	.global _080F0B98
_080F0B98: .4byte _0807C3E0

	.global _080F0B9C
_080F0B9C:
	.incbin "baserom.gba", 0x000F0B9C, 0x00000004

	.global _080F0BA0
_080F0BA0: .4byte _0807C3F8

	.global _080F0BA4
_080F0BA4:
	.incbin "baserom.gba", 0x000F0BA4, 0x00000004

	.global _080F0BA8
_080F0BA8: .4byte _0807C3B0

	.global _080F0BAC
_080F0BAC:
	.incbin "baserom.gba", 0x000F0BAC, 0x00000004

	.global _080F0BB0
_080F0BB0: .4byte _0807C3B0

	.global _080F0BB4
_080F0BB4:
	.incbin "baserom.gba", 0x000F0BB4, 0x00000004

	.global _080F0BB8
_080F0BB8: .4byte _0807C3E8

	.global _080F0BBC
_080F0BBC:
	.incbin "baserom.gba", 0x000F0BBC, 0x00000004

	.global _080F0BC0
_080F0BC0: .4byte _0807C3F8

	.global _080F0BC4
_080F0BC4:
	.incbin "baserom.gba", 0x000F0BC4, 0x00000004

	.global _080F0BC8
_080F0BC8: .4byte _0807C478

	.global _080F0BCC
_080F0BCC:
	.incbin "baserom.gba", 0x000F0BCC, 0x00000004

	.global _080F0BD0
_080F0BD0: .4byte _0807C478

	.global _080F0BD4
_080F0BD4:
	.incbin "baserom.gba", 0x000F0BD4, 0x00000004

	.global _080F0BD8
_080F0BD8: .4byte _0807C480

	.global _080F0BDC
_080F0BDC:
	.incbin "baserom.gba", 0x000F0BDC, 0x00000004

	.global _080F0BE0
_080F0BE0: .4byte _0807C488

	.global _080F0BE4
_080F0BE4:
	.incbin "baserom.gba", 0x000F0BE4, 0x00000004

	.global _080F0BE8
_080F0BE8: .4byte _0807C490

	.global _080F0BEC
_080F0BEC:
	.incbin "baserom.gba", 0x000F0BEC, 0x00000004

	.global _080F0BF0
_080F0BF0: .4byte _0807C490

	.global _080F0BF4
_080F0BF4:
	.incbin "baserom.gba", 0x000F0BF4, 0x00000004

	.global _080F0BF8
_080F0BF8: .4byte _0807C498

	.global _080F0BFC
_080F0BFC:
	.incbin "baserom.gba", 0x000F0BFC, 0x00000004

	.global _080F0C00
_080F0C00: .4byte _0807C4A0

	.global _080F0C04
_080F0C04:
	.incbin "baserom.gba", 0x000F0C04, 0x00000004

	.global _080F0C08
_080F0C08: .4byte _0807C4A8

	.global _080F0C0C
_080F0C0C:
	.incbin "baserom.gba", 0x000F0C0C, 0x00000004

	.global _080F0C10
_080F0C10: .4byte _0807C4A8

	.global _080F0C14
_080F0C14:
	.incbin "baserom.gba", 0x000F0C14, 0x00000004

	.global _080F0C18
_080F0C18: .4byte _0807C4D8

	.global _080F0C1C
_080F0C1C:
	.incbin "baserom.gba", 0x000F0C1C, 0x00000004

	.global _080F0C20
_080F0C20: .4byte _0807C508

	.global _080F0C24
_080F0C24:
	.incbin "baserom.gba", 0x000F0C24, 0x00000004

	.global _080F0C28
_080F0C28: .4byte _0807C4B0

	.global _080F0C2C
_080F0C2C:
	.incbin "baserom.gba", 0x000F0C2C, 0x00000004

	.global _080F0C30
_080F0C30: .4byte _0807C4B0

	.global _080F0C34
_080F0C34:
	.incbin "baserom.gba", 0x000F0C34, 0x00000004

	.global _080F0C38
_080F0C38: .4byte _0807C4E0

	.global _080F0C3C
_080F0C3C:
	.incbin "baserom.gba", 0x000F0C3C, 0x00000004

	.global _080F0C40
_080F0C40: .4byte _0807C508

	.global _080F0C44
_080F0C44:
	.incbin "baserom.gba", 0x000F0C44, 0x00000004

	.global _080F0C48
_080F0C48: .4byte _0807C4B8

	.global _080F0C4C
_080F0C4C:
	.incbin "baserom.gba", 0x000F0C4C, 0x00000004

	.global _080F0C50
_080F0C50: .4byte _0807C4B8

	.global _080F0C54
_080F0C54:
	.incbin "baserom.gba", 0x000F0C54, 0x00000004

	.global _080F0C58
_080F0C58: .4byte _0807C4E8

	.global _080F0C5C
_080F0C5C:
	.incbin "baserom.gba", 0x000F0C5C, 0x00000004

	.global _080F0C60
_080F0C60: .4byte _0807C510

	.global _080F0C64
_080F0C64:
	.incbin "baserom.gba", 0x000F0C64, 0x00000004

	.global _080F0C68
_080F0C68: .4byte _0807C4C0

	.global _080F0C6C
_080F0C6C:
	.incbin "baserom.gba", 0x000F0C6C, 0x00000004

	.global _080F0C70
_080F0C70: .4byte _0807C4C0

	.global _080F0C74
_080F0C74:
	.incbin "baserom.gba", 0x000F0C74, 0x00000004

	.global _080F0C78
_080F0C78: .4byte _0807C4F0

	.global _080F0C7C
_080F0C7C:
	.incbin "baserom.gba", 0x000F0C7C, 0x00000004

	.global _080F0C80
_080F0C80: .4byte _0807C518

	.global _080F0C84
_080F0C84:
	.incbin "baserom.gba", 0x000F0C84, 0x00000004

	.global _080F0C88
_080F0C88: .4byte _0807C4C8

	.global _080F0C8C
_080F0C8C:
	.incbin "baserom.gba", 0x000F0C8C, 0x00000004

	.global _080F0C90
_080F0C90: .4byte _0807C4C8

	.global _080F0C94
_080F0C94:
	.incbin "baserom.gba", 0x000F0C94, 0x00000004

	.global _080F0C98
_080F0C98: .4byte _0807C4F8

	.global _080F0C9C
_080F0C9C:
	.incbin "baserom.gba", 0x000F0C9C, 0x00000004

	.global _080F0CA0
_080F0CA0: .4byte _0807C518

	.global _080F0CA4
_080F0CA4:
	.incbin "baserom.gba", 0x000F0CA4, 0x00000004

	.global _080F0CA8
_080F0CA8: .4byte _0807C4D0

	.global _080F0CAC
_080F0CAC:
	.incbin "baserom.gba", 0x000F0CAC, 0x00000004

	.global _080F0CB0
_080F0CB0: .4byte _0807C4D0

	.global _080F0CB4
_080F0CB4:
	.incbin "baserom.gba", 0x000F0CB4, 0x00000004

	.global _080F0CB8
_080F0CB8: .4byte _0807C500

	.global _080F0CBC
_080F0CBC:
	.incbin "baserom.gba", 0x000F0CBC, 0x00000004

	.global _080F0CC0
_080F0CC0: .4byte _0807C520

	.global _080F0CC4
_080F0CC4:
	.incbin "baserom.gba", 0x000F0CC4, 0x00000004

	.global _080F0CC8
_080F0CC8: .4byte _0807C528

	.global _080F0CCC
_080F0CCC:
	.incbin "baserom.gba", 0x000F0CCC, 0x00000004

	.global _080F0CD0
_080F0CD0: .4byte _0807C528

	.global _080F0CD4
_080F0CD4:
	.incbin "baserom.gba", 0x000F0CD4, 0x00000004

	.global _080F0CD8
_080F0CD8: .4byte _0807C530

	.global _080F0CDC
_080F0CDC:
	.incbin "baserom.gba", 0x000F0CDC, 0x00000004

	.global _080F0CE0
_080F0CE0: .4byte _0807C538

	.global _080F0CE4
_080F0CE4:
	.incbin "baserom.gba", 0x000F0CE4, 0x00000004

	.global _080F0CE8
_080F0CE8: .4byte _0807C578

	.global _080F0CEC
_080F0CEC:
	.incbin "baserom.gba", 0x000F0CEC, 0x00000004

	.global _080F0CF0
_080F0CF0: .4byte _0807C578

	.global _080F0CF4
_080F0CF4:
	.incbin "baserom.gba", 0x000F0CF4, 0x00000004

	.global _080F0CF8
_080F0CF8: .4byte _0807C578

	.global _080F0CFC
_080F0CFC:
	.incbin "baserom.gba", 0x000F0CFC, 0x00000004

	.global _080F0D00
_080F0D00: .4byte _0807C578

	.global _080F0D04
_080F0D04:
	.incbin "baserom.gba", 0x000F0D04, 0x00000004

	.global _080F0D08
_080F0D08: .4byte _0807C594

	.global _080F0D0C
_080F0D0C:
	.incbin "baserom.gba", 0x000F0D0C, 0x00000004

	.global _080F0D10
_080F0D10: .4byte _0807C594

	.global _080F0D14
_080F0D14:
	.incbin "baserom.gba", 0x000F0D14, 0x00000004

	.global _080F0D18
_080F0D18: .4byte _0807C594

	.global _080F0D1C
_080F0D1C:
	.incbin "baserom.gba", 0x000F0D1C, 0x00000004

	.global _080F0D20
_080F0D20: .4byte _0807C594

	.global _080F0D24
_080F0D24:
	.incbin "baserom.gba", 0x000F0D24, 0x00000004

	.global _080F0D28
_080F0D28: .4byte _0807C5C0

	.global _080F0D2C
_080F0D2C:
	.incbin "baserom.gba", 0x000F0D2C, 0x00000004

	.global _080F0D30
_080F0D30: .4byte _0807C5C0

	.global _080F0D34
_080F0D34:
	.incbin "baserom.gba", 0x000F0D34, 0x00000004

	.global _080F0D38
_080F0D38: .4byte _0807C5C0

	.global _080F0D3C
_080F0D3C:
	.incbin "baserom.gba", 0x000F0D3C, 0x00000004

	.global _080F0D40
_080F0D40: .4byte _0807C5C0

	.global _080F0D44
_080F0D44:
	.incbin "baserom.gba", 0x000F0D44, 0x00000004

	.global _080F0D48
_080F0D48: .4byte _0807C5F4

	.global _080F0D4C
_080F0D4C:
	.incbin "baserom.gba", 0x000F0D4C, 0x00000004

	.global _080F0D50
_080F0D50: .4byte _0807C5FC

	.global _080F0D54
_080F0D54:
	.incbin "baserom.gba", 0x000F0D54, 0x00000004

	.global _080F0D58
_080F0D58: .4byte _0807C604

	.global _080F0D5C
_080F0D5C:
	.incbin "baserom.gba", 0x000F0D5C, 0x00000004

	.global _080F0D60
_080F0D60: .4byte _0807C60C

	.global _080F0D64
_080F0D64:
	.incbin "baserom.gba", 0x000F0D64, 0x00000004

	.global _080F0D68
_080F0D68: .4byte _0807C614

	.global _080F0D6C
_080F0D6C:
	.incbin "baserom.gba", 0x000F0D6C, 0x00000004

	.global _080F0D70
_080F0D70: .4byte _0807C614

	.global _080F0D74
_080F0D74:
	.incbin "baserom.gba", 0x000F0D74, 0x00000004

	.global _080F0D78
_080F0D78: .4byte _0807C62C

	.global _080F0D7C
_080F0D7C:
	.incbin "baserom.gba", 0x000F0D7C, 0x00000004

	.global _080F0D80
_080F0D80: .4byte _0807C62C

	.global _080F0D84
_080F0D84:
	.incbin "baserom.gba", 0x000F0D84, 0x00000004

	.global _080F0D88
_080F0D88: .4byte _0807C61C

	.global _080F0D8C
_080F0D8C:
	.incbin "baserom.gba", 0x000F0D8C, 0x00000004

	.global _080F0D90
_080F0D90: .4byte _0807C61C

	.global _080F0D94
_080F0D94:
	.incbin "baserom.gba", 0x000F0D94, 0x00000004

	.global _080F0D98
_080F0D98: .4byte _0807C634

	.global _080F0D9C
_080F0D9C:
	.incbin "baserom.gba", 0x000F0D9C, 0x00000004

	.global _080F0DA0
_080F0DA0: .4byte _0807C634

	.global _080F0DA4
_080F0DA4:
	.incbin "baserom.gba", 0x000F0DA4, 0x00000004

	.global _080F0DA8
_080F0DA8: .4byte _0807C624

	.global _080F0DAC
_080F0DAC:
	.incbin "baserom.gba", 0x000F0DAC, 0x00000004

	.global _080F0DB0
_080F0DB0: .4byte _0807C624

	.global _080F0DB4
_080F0DB4:
	.incbin "baserom.gba", 0x000F0DB4, 0x00000004

	.global _080F0DB8
_080F0DB8: .4byte _0807C63C

	.global _080F0DBC
_080F0DBC:
	.incbin "baserom.gba", 0x000F0DBC, 0x00000004

	.global _080F0DC0
_080F0DC0: .4byte _0807C63C

	.global _080F0DC4
_080F0DC4:
	.incbin "baserom.gba", 0x000F0DC4, 0x00000004

	.global _080F0DC8
_080F0DC8: .4byte _0807C644

	.global _080F0DCC
_080F0DCC:
	.incbin "baserom.gba", 0x000F0DCC, 0x00000004

	.global _080F0DD0
_080F0DD0: .4byte _0807C64C

	.global _080F0DD4
_080F0DD4:
	.incbin "baserom.gba", 0x000F0DD4, 0x00000004

	.global _080F0DD8
_080F0DD8: .4byte _0807C654

	.global _080F0DDC
_080F0DDC:
	.incbin "baserom.gba", 0x000F0DDC, 0x00000004

	.global _080F0DE0
_080F0DE0: .4byte _0807C65C

	.global _080F0DE4
_080F0DE4:
	.incbin "baserom.gba", 0x000F0DE4, 0x00000004

	.global _080F0DE8
_080F0DE8: .4byte _0807C664

	.global _080F0DEC
_080F0DEC:
	.incbin "baserom.gba", 0x000F0DEC, 0x00000004

	.global _080F0DF0
_080F0DF0: .4byte _0807C664

	.global _080F0DF4
_080F0DF4:
	.incbin "baserom.gba", 0x000F0DF4, 0x00000004

	.global _080F0DF8
_080F0DF8: .4byte _0807C66C

	.global _080F0DFC
_080F0DFC:
	.incbin "baserom.gba", 0x000F0DFC, 0x00000004

	.global _080F0E00
_080F0E00: .4byte _0807C674

	.global _080F0E04
_080F0E04:
	.incbin "baserom.gba", 0x000F0E04, 0x00000004

	.global _080F0E08
_080F0E08: .4byte _0807C694

	.global _080F0E0C
_080F0E0C:
	.incbin "baserom.gba", 0x000F0E0C, 0x00000004

	.global _080F0E10
_080F0E10: .4byte _0807C69C

	.global _080F0E14
_080F0E14:
	.incbin "baserom.gba", 0x000F0E14, 0x00000004

	.global _080F0E18
_080F0E18: .4byte _0807C6A4

	.global _080F0E1C
_080F0E1C:
	.incbin "baserom.gba", 0x000F0E1C, 0x00000004

	.global _080F0E20
_080F0E20: .4byte _0807C6AC

	.global _080F0E24
_080F0E24:
	.incbin "baserom.gba", 0x000F0E24, 0x00000004

	.global _080F0E28
_080F0E28: .4byte _0807C6CC

	.global _080F0E2C
_080F0E2C:
	.incbin "baserom.gba", 0x000F0E2C, 0x00000004

	.global _080F0E30
_080F0E30: .4byte _0807C6CC

	.global _080F0E34
_080F0E34:
	.incbin "baserom.gba", 0x000F0E34, 0x00000004

	.global _080F0E38
_080F0E38: .4byte _0807C6D4

	.global _080F0E3C
_080F0E3C:
	.incbin "baserom.gba", 0x000F0E3C, 0x00000004

	.global _080F0E40
_080F0E40: .4byte _0807C6DC

	.global _080F0E44
_080F0E44:
	.incbin "baserom.gba", 0x000F0E44, 0x00000004

	.global _080F0E48
_080F0E48: .4byte _0807C6E4

	.global _080F0E4C
_080F0E4C:
	.incbin "baserom.gba", 0x000F0E4C, 0x00000004

	.global _080F0E50
_080F0E50: .4byte _0807C6E4

	.global _080F0E54
_080F0E54:
	.incbin "baserom.gba", 0x000F0E54, 0x00000004

	.global _080F0E58
_080F0E58: .4byte _0807C6EC

	.global _080F0E5C
_080F0E5C:
	.incbin "baserom.gba", 0x000F0E5C, 0x00000004

	.global _080F0E60
_080F0E60: .4byte _0807C6F4

	.global _080F0E64
_080F0E64:
	.incbin "baserom.gba", 0x000F0E64, 0x00000004

	.global _080F0E68
_080F0E68: .4byte _0807C6FC

	.global _080F0E6C
_080F0E6C:
	.incbin "baserom.gba", 0x000F0E6C, 0x00000004

	.global _080F0E70
_080F0E70: .4byte _0807C6FC

	.global _080F0E74
_080F0E74:
	.incbin "baserom.gba", 0x000F0E74, 0x00000004

	.global _080F0E78
_080F0E78: .4byte _0807C70C

	.global _080F0E7C
_080F0E7C:
	.incbin "baserom.gba", 0x000F0E7C, 0x00000004

	.global _080F0E80
_080F0E80: .4byte _0807C71C

	.global _080F0E84
_080F0E84:
	.incbin "baserom.gba", 0x000F0E84, 0x00000004

	.global _080F0E88
_080F0E88: .4byte _0807C704

	.global _080F0E8C
_080F0E8C:
	.incbin "baserom.gba", 0x000F0E8C, 0x00000004

	.global _080F0E90
_080F0E90: .4byte _0807C704

	.global _080F0E94
_080F0E94:
	.incbin "baserom.gba", 0x000F0E94, 0x00000004

	.global _080F0E98
_080F0E98: .4byte _0807C714

	.global _080F0E9C
_080F0E9C:
	.incbin "baserom.gba", 0x000F0E9C, 0x00000004

	.global _080F0EA0
_080F0EA0: .4byte _0807C71C

	.global _080F0EA4
_080F0EA4:
	.incbin "baserom.gba", 0x000F0EA4, 0x00000004

	.global _080F0EA8
_080F0EA8: .4byte _0807C724

	.global _080F0EAC
_080F0EAC:
	.incbin "baserom.gba", 0x000F0EAC, 0x00000004

	.global _080F0EB0
_080F0EB0: .4byte _0807C724

	.global _080F0EB4
_080F0EB4:
	.incbin "baserom.gba", 0x000F0EB4, 0x00000004

	.global _080F0EB8
_080F0EB8: .4byte _0807C734

	.global _080F0EBC
_080F0EBC:
	.incbin "baserom.gba", 0x000F0EBC, 0x00000004

	.global _080F0EC0
_080F0EC0: .4byte _0807C744

	.global _080F0EC4
_080F0EC4:
	.incbin "baserom.gba", 0x000F0EC4, 0x00000004

	.global _080F0EC8
_080F0EC8: .4byte _0807C72C

	.global _080F0ECC
_080F0ECC:
	.incbin "baserom.gba", 0x000F0ECC, 0x00000004

	.global _080F0ED0
_080F0ED0: .4byte _0807C72C

	.global _080F0ED4
_080F0ED4:
	.incbin "baserom.gba", 0x000F0ED4, 0x00000004

	.global _080F0ED8
_080F0ED8: .4byte _0807C73C

	.global _080F0EDC
_080F0EDC:
	.incbin "baserom.gba", 0x000F0EDC, 0x00000004

	.global _080F0EE0
_080F0EE0: .4byte _0807C744

	.global _080F0EE4
_080F0EE4:
	.incbin "baserom.gba", 0x000F0EE4, 0x00000004

	.global _080F0EE8
_080F0EE8: .4byte _0807C74C

	.global _080F0EEC
_080F0EEC:
	.incbin "baserom.gba", 0x000F0EEC, 0x00000004

	.global _080F0EF0
_080F0EF0: .4byte _0807C74C

	.global _080F0EF4
_080F0EF4:
	.incbin "baserom.gba", 0x000F0EF4, 0x00000004

	.global _080F0EF8
_080F0EF8: .4byte _0807C754

	.global _080F0EFC
_080F0EFC:
	.incbin "baserom.gba", 0x000F0EFC, 0x00000004

	.global _080F0F00
_080F0F00: .4byte _0807C754

	.global _080F0F04
_080F0F04:
	.incbin "baserom.gba", 0x000F0F04, 0x00000004

	.global _080F0F08
_080F0F08: .4byte _0807C75C

	.global _080F0F0C
_080F0F0C:
	.incbin "baserom.gba", 0x000F0F0C, 0x00000004

	.global _080F0F10
_080F0F10: .4byte _0807C75C

	.global _080F0F14
_080F0F14:
	.incbin "baserom.gba", 0x000F0F14, 0x00000004

	.global _080F0F18
_080F0F18: .4byte _0807C764

	.global _080F0F1C
_080F0F1C:
	.incbin "baserom.gba", 0x000F0F1C, 0x00000004

	.global _080F0F20
_080F0F20: .4byte _0807C764

	.global _080F0F24
_080F0F24:
	.incbin "baserom.gba", 0x000F0F24, 0x00000004

	.global _080F0F28
_080F0F28: .4byte _0807C76C

	.global _080F0F2C
_080F0F2C:
	.incbin "baserom.gba", 0x000F0F2C, 0x00000004

	.global _080F0F30
_080F0F30: .4byte _0807C76C

	.global _080F0F34
_080F0F34:
	.incbin "baserom.gba", 0x000F0F34, 0x00000004

	.global _080F0F38
_080F0F38: .4byte _0807C76C

	.global _080F0F3C
_080F0F3C:
	.incbin "baserom.gba", 0x000F0F3C, 0x00000004

	.global _080F0F40
_080F0F40: .4byte _0807C76C

	.global _080F0F44
_080F0F44:
	.incbin "baserom.gba", 0x000F0F44, 0x00000004

	.global _080F0F48
_080F0F48: .4byte _0807C774

	.global _080F0F4C
_080F0F4C:
	.incbin "baserom.gba", 0x000F0F4C, 0x00000004

	.global _080F0F50
_080F0F50: .4byte _0807C774

	.global _080F0F54
_080F0F54:
	.incbin "baserom.gba", 0x000F0F54, 0x00000004

	.global _080F0F58
_080F0F58: .4byte _0807C774

	.global _080F0F5C
_080F0F5C:
	.incbin "baserom.gba", 0x000F0F5C, 0x00000004

	.global _080F0F60
_080F0F60: .4byte _0807C774

	.global _080F0F64
_080F0F64:
	.incbin "baserom.gba", 0x000F0F64, 0x00000004

	.global _080F0F68
_080F0F68: .4byte _0807C77C

	.global _080F0F6C
_080F0F6C:
	.incbin "baserom.gba", 0x000F0F6C, 0x00000004

	.global _080F0F70
_080F0F70: .4byte _0807C77C

	.global _080F0F74
_080F0F74:
	.incbin "baserom.gba", 0x000F0F74, 0x00000004

	.global _080F0F78
_080F0F78: .4byte _0807C77C

	.global _080F0F7C
_080F0F7C:
	.incbin "baserom.gba", 0x000F0F7C, 0x00000004

	.global _080F0F80
_080F0F80: .4byte _0807C77C

	.global _080F0F84
_080F0F84:
	.incbin "baserom.gba", 0x000F0F84, 0x00000004

	.global _080F0F88
_080F0F88: .4byte _0807C78C

	.global _080F0F8C
_080F0F8C:
	.incbin "baserom.gba", 0x000F0F8C, 0x00000004

	.global _080F0F90
_080F0F90: .4byte _0807C78C

	.global _080F0F94
_080F0F94:
	.incbin "baserom.gba", 0x000F0F94, 0x00000004

	.global _080F0F98
_080F0F98: .4byte _0807C78C

	.global _080F0F9C
_080F0F9C:
	.incbin "baserom.gba", 0x000F0F9C, 0x00000004

	.global _080F0FA0
_080F0FA0: .4byte _0807C78C

	.global _080F0FA4
_080F0FA4:
	.incbin "baserom.gba", 0x000F0FA4, 0x00000004

	.global _080F0FA8
_080F0FA8: .4byte _0807C79C

	.global _080F0FAC
_080F0FAC:
	.incbin "baserom.gba", 0x000F0FAC, 0x00000004

	.global _080F0FB0
_080F0FB0: .4byte _0807C79C

	.global _080F0FB4
_080F0FB4:
	.incbin "baserom.gba", 0x000F0FB4, 0x00000004

	.global _080F0FB8
_080F0FB8: .4byte _0807C7A4

	.global _080F0FBC
_080F0FBC:
	.incbin "baserom.gba", 0x000F0FBC, 0x00000004

	.global _080F0FC0
_080F0FC0: .4byte _0807C7AC

	.global _080F0FC4
_080F0FC4:
	.incbin "baserom.gba", 0x000F0FC4, 0x00000004

	.global _080F0FC8
_080F0FC8: .4byte _0807C7B4

	.global _080F0FCC
_080F0FCC:
	.incbin "baserom.gba", 0x000F0FCC, 0x00000004

	.global _080F0FD0
_080F0FD0: .4byte _0807C7B4

	.global _080F0FD4
_080F0FD4:
	.incbin "baserom.gba", 0x000F0FD4, 0x00000004

	.global _080F0FD8
_080F0FD8: .4byte _0807C7BC

	.global _080F0FDC
_080F0FDC:
	.incbin "baserom.gba", 0x000F0FDC, 0x00000004

	.global _080F0FE0
_080F0FE0: .4byte _0807C7C4

	.global _080F0FE4
_080F0FE4:
	.incbin "baserom.gba", 0x000F0FE4, 0x00000004

	.global _080F0FE8
_080F0FE8: .4byte _0807C0D0

	.global _080F0FEC
_080F0FEC:
	.incbin "baserom.gba", 0x000F0FEC, 0x00000004

	.global _080F0FF0
_080F0FF0: .4byte _0807C0D0

	.global _080F0FF4
_080F0FF4:
	.incbin "baserom.gba", 0x000F0FF4, 0x00000004

	.global _080F0FF8
_080F0FF8: .4byte _0807C0D8

	.global _080F0FFC
_080F0FFC:
	.incbin "baserom.gba", 0x000F0FFC, 0x00000004

	.global _080F1000
_080F1000: .4byte _0807C0E0

	.global _080F1004
_080F1004:
	.incbin "baserom.gba", 0x000F1004, 0x00000004

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
	.incbin "baserom.gba", 0x000F128C, 0x0000000C

	.global _080F1298
_080F1298: .4byte sub_0805A020

	.global _080F129C
_080F129C:
	.incbin "baserom.gba", 0x000F129C, 0x00000014

	.global _080F12B0
_080F12B0: .4byte sub_0805A020

	.global _080F12B4
_080F12B4:
	.incbin "baserom.gba", 0x000F12B4, 0x00000014

	.global _080F12C8
_080F12C8: .4byte sub_0805A020

	.global _080F12CC
_080F12CC:
	.incbin "baserom.gba", 0x000F12CC, 0x00000014

	.global _080F12E0
_080F12E0: .4byte sub_0805A020

	.global _080F12E4
_080F12E4:
	.incbin "baserom.gba", 0x000F12E4, 0x00000014

	.global _080F12F8
_080F12F8: .4byte sub_0805A020

	.global _080F12FC
_080F12FC:
	.incbin "baserom.gba", 0x000F12FC, 0x00000014

	.global _080F1310
_080F1310: .4byte sub_0805A020

	.global _080F1314
_080F1314:
	.incbin "baserom.gba", 0x000F1314, 0x00000014

	.global _080F1328
_080F1328: .4byte sub_0805A020

	.global _080F132C
_080F132C:
	.incbin "baserom.gba", 0x000F132C, 0x00000014

	.global _080F1340
_080F1340: .4byte sub_0805A020

	.global _080F1344
_080F1344:
	.incbin "baserom.gba", 0x000F1344, 0x00000014

	.global _080F1358
_080F1358: .4byte sub_0805A020

	.global _080F135C
_080F135C:
	.incbin "baserom.gba", 0x000F135C, 0x00000010

	.global _080F136C
_080F136C:
	.incbin "baserom.gba", 0x000F136C, 0x0000000C

	.global _080F1378
_080F1378: .4byte sub_0805A060

	.global _080F137C
_080F137C:
	.incbin "baserom.gba", 0x000F137C, 0x00000014

	.global _080F1390
_080F1390: .4byte sub_0805A060

	.global _080F1394
_080F1394:
	.incbin "baserom.gba", 0x000F1394, 0x00000014

	.global _080F13A8
_080F13A8: .4byte sub_0805A060

	.global _080F13AC
_080F13AC:
	.incbin "baserom.gba", 0x000F13AC, 0x00000014

	.global _080F13C0
_080F13C0: .4byte sub_0805A060

	.global _080F13C4
_080F13C4:
	.incbin "baserom.gba", 0x000F13C4, 0x00000014

	.global _080F13D8
_080F13D8: .4byte sub_0805A060

	.global _080F13DC
_080F13DC:
	.incbin "baserom.gba", 0x000F13DC, 0x00000014

	.global _080F13F0
_080F13F0: .4byte sub_0805A060

	.global _080F13F4
_080F13F4:
	.incbin "baserom.gba", 0x000F13F4, 0x00000014

	.global _080F1408
_080F1408: .4byte sub_0805A060

	.global _080F140C
_080F140C:
	.incbin "baserom.gba", 0x000F140C, 0x00000014

	.global _080F1420
_080F1420: .4byte sub_0805A060

	.global _080F1424
_080F1424:
	.incbin "baserom.gba", 0x000F1424, 0x00000014

	.global _080F1438
_080F1438: .4byte sub_0805A060

	.global _080F143C
_080F143C:
	.incbin "baserom.gba", 0x000F143C, 0x00000010

	.global _080F144C
_080F144C:
	.incbin "baserom.gba", 0x000F144C, 0x0000000C

	.global _080F1458
_080F1458: .4byte sub_0805A020

	.global _080F145C
_080F145C:
	.incbin "baserom.gba", 0x000F145C, 0x00000014

	.global _080F1470
_080F1470: .4byte sub_0805A020

	.global _080F1474
_080F1474:
	.incbin "baserom.gba", 0x000F1474, 0x00000014

	.global _080F1488
_080F1488: .4byte sub_0805A020

	.global _080F148C
_080F148C:
	.incbin "baserom.gba", 0x000F148C, 0x00000014

	.global _080F14A0
_080F14A0: .4byte sub_0805A020

	.global _080F14A4
_080F14A4:
	.incbin "baserom.gba", 0x000F14A4, 0x00000014

	.global _080F14B8
_080F14B8: .4byte sub_0805A020

	.global _080F14BC
_080F14BC:
	.incbin "baserom.gba", 0x000F14BC, 0x00000014

	.global _080F14D0
_080F14D0: .4byte sub_0805A020

	.global _080F14D4
_080F14D4:
	.incbin "baserom.gba", 0x000F14D4, 0x00000014

	.global _080F14E8
_080F14E8: .4byte sub_0805A020

	.global _080F14EC
_080F14EC:
	.incbin "baserom.gba", 0x000F14EC, 0x00000014

	.global _080F1500
_080F1500: .4byte sub_0805A020

	.global _080F1504
_080F1504:
	.incbin "baserom.gba", 0x000F1504, 0x00000014

	.global _080F1518
_080F1518: .4byte sub_0805A020

	.global _080F151C
_080F151C:
	.incbin "baserom.gba", 0x000F151C, 0x00000010

	.global _080F152C
_080F152C:
	.incbin "baserom.gba", 0x000F152C, 0x0000000C

	.global _080F1538
_080F1538: .4byte sub_0805A060

	.global _080F153C
_080F153C:
	.incbin "baserom.gba", 0x000F153C, 0x00000014

	.global _080F1550
_080F1550: .4byte sub_0805A060

	.global _080F1554
_080F1554:
	.incbin "baserom.gba", 0x000F1554, 0x00000014

	.global _080F1568
_080F1568: .4byte sub_0805A060

	.global _080F156C
_080F156C:
	.incbin "baserom.gba", 0x000F156C, 0x00000014

	.global _080F1580
_080F1580: .4byte sub_0805A060

	.global _080F1584
_080F1584:
	.incbin "baserom.gba", 0x000F1584, 0x00000014

	.global _080F1598
_080F1598: .4byte sub_0805A060

	.global _080F159C
_080F159C:
	.incbin "baserom.gba", 0x000F159C, 0x00000014

	.global _080F15B0
_080F15B0: .4byte sub_0805A060

	.global _080F15B4
_080F15B4:
	.incbin "baserom.gba", 0x000F15B4, 0x00000014

	.global _080F15C8
_080F15C8: .4byte sub_0805A060

	.global _080F15CC
_080F15CC:
	.incbin "baserom.gba", 0x000F15CC, 0x00000014

	.global _080F15E0
_080F15E0: .4byte sub_0805A060

	.global _080F15E4
_080F15E4:
	.incbin "baserom.gba", 0x000F15E4, 0x00000014

	.global _080F15F8
_080F15F8: .4byte sub_0805A060

	.global _080F15FC
_080F15FC:
	.incbin "baserom.gba", 0x000F15FC, 0x00000010

	.global _080F160C
_080F160C:
	.incbin "baserom.gba", 0x000F160C, 0x0000000C

	.global _080F1618
_080F1618: .4byte sub_0805A0A0

	.global _080F161C
_080F161C:
	.incbin "baserom.gba", 0x000F161C, 0x00000014

	.global _080F1630
_080F1630: .4byte sub_0805A0A0

	.global _080F1634
_080F1634:
	.incbin "baserom.gba", 0x000F1634, 0x00000014

	.global _080F1648
_080F1648: .4byte sub_0805A0A0

	.global _080F164C
_080F164C:
	.incbin "baserom.gba", 0x000F164C, 0x00000014

	.global _080F1660
_080F1660: .4byte sub_0805A0A0

	.global _080F1664
_080F1664:
	.incbin "baserom.gba", 0x000F1664, 0x00000014

	.global _080F1678
_080F1678: .4byte sub_0805A0A0

	.global _080F167C
_080F167C:
	.incbin "baserom.gba", 0x000F167C, 0x00000014

	.global _080F1690
_080F1690: .4byte sub_0805A0A0

	.global _080F1694
_080F1694:
	.incbin "baserom.gba", 0x000F1694, 0x00000014

	.global _080F16A8
_080F16A8: .4byte sub_0805A0A0

	.global _080F16AC
_080F16AC:
	.incbin "baserom.gba", 0x000F16AC, 0x00000014

	.global _080F16C0
_080F16C0: .4byte sub_0805A0A0

	.global _080F16C4
_080F16C4:
	.incbin "baserom.gba", 0x000F16C4, 0x00000014

	.global _080F16D8
_080F16D8: .4byte sub_0805A0A0

	.global _080F16DC
_080F16DC:
	.incbin "baserom.gba", 0x000F16DC, 0x00000014

	.global _080F16F0
_080F16F0: .4byte sub_0805A0A0

	.global _080F16F4
_080F16F4:
	.incbin "baserom.gba", 0x000F16F4, 0x00000010

	.global _080F1704
_080F1704: .4byte _080712EC

	.global _080F1708
_080F1708: .4byte _080712F0

	.global _080F170C
_080F170C: .4byte _080712F4

	.global _080F1710
_080F1710: .4byte _080712F8

	.global _080F1714
_080F1714: .4byte _080712FC

	.global _080F1718
_080F1718: .4byte _08071300

	.global _080F171C
_080F171C:
	.incbin "baserom.gba", 0x000F171C, 0x0000000C

	.global _080F1728
_080F1728: .4byte sub_0805A0D0

	.global _080F172C
_080F172C:
	.incbin "baserom.gba", 0x000F172C, 0x00000014

	.global _080F1740
_080F1740: .4byte sub_0805A0D0

	.global _080F1744
_080F1744:
	.incbin "baserom.gba", 0x000F1744, 0x00000014

	.global _080F1758
_080F1758: .4byte sub_0805A0D0

	.global _080F175C
_080F175C:
	.incbin "baserom.gba", 0x000F175C, 0x00000010

	.global _080F176C
_080F176C:
	.incbin "baserom.gba", 0x000F176C, 0x0000000C

	.global _080F1778
_080F1778: .4byte sub_0805A0FC

	.global _080F177C
_080F177C:
	.incbin "baserom.gba", 0x000F177C, 0x00000014

	.global _080F1790
_080F1790: .4byte sub_0805A0FC

	.global _080F1794
_080F1794:
	.incbin "baserom.gba", 0x000F1794, 0x00000014

	.global _080F17A8
_080F17A8: .4byte sub_0805A0FC

	.global _080F17AC
_080F17AC:
	.incbin "baserom.gba", 0x000F17AC, 0x00000014

	.global _080F17C0
_080F17C0: .4byte sub_0805A0FC

	.global _080F17C4
_080F17C4:
	.incbin "baserom.gba", 0x000F17C4, 0x00000010

	.global _080F17D4
_080F17D4:
	.incbin "baserom.gba", 0x000F17D4, 0x00000014

	.global _080F17E8
_080F17E8: .4byte sub_0805A128

	.global _080F17EC
_080F17EC:
	.incbin "baserom.gba", 0x000F17EC, 0x00000014

	.global _080F1800
_080F1800: .4byte sub_0805A128

	.global _080F1804
_080F1804:
	.incbin "baserom.gba", 0x000F1804, 0x00000014

	.global _080F1818
_080F1818: .4byte sub_0805A128

	.global _080F181C
_080F181C:
	.incbin "baserom.gba", 0x000F181C, 0x00000014

	.global _080F1830
_080F1830: .4byte sub_0805A128

	.global _080F1834
_080F1834:
	.incbin "baserom.gba", 0x000F1834, 0x00000014

	.global _080F1848
_080F1848: .4byte sub_0805A128

	.global _080F184C
_080F184C:
	.incbin "baserom.gba", 0x000F184C, 0x00000014

	.global _080F1860
_080F1860: .4byte sub_0805A128

	.global _080F1864
_080F1864:
	.incbin "baserom.gba", 0x000F1864, 0x00000014

	.global _080F1878
_080F1878: .4byte sub_0805A128

	.global _080F187C
_080F187C:
	.incbin "baserom.gba", 0x000F187C, 0x00000010

	.global _080F188C
_080F188C:
	.incbin "baserom.gba", 0x000F188C, 0x0000000C

	.global _080F1898
_080F1898: .4byte sub_0805A154

	.global _080F189C
_080F189C:
	.incbin "baserom.gba", 0x000F189C, 0x00000014

	.global _080F18B0
_080F18B0: .4byte sub_0805A154

	.global _080F18B4
_080F18B4:
	.incbin "baserom.gba", 0x000F18B4, 0x00000014

	.global _080F18C8
_080F18C8: .4byte sub_0805A154

	.global _080F18CC
_080F18CC:
	.incbin "baserom.gba", 0x000F18CC, 0x00000014

	.global _080F18E0
_080F18E0: .4byte sub_0805A154

	.global _080F18E4
_080F18E4:
	.incbin "baserom.gba", 0x000F18E4, 0x00000014

	.global _080F18F8
_080F18F8: .4byte sub_0805A154

	.global _080F18FC
_080F18FC:
	.incbin "baserom.gba", 0x000F18FC, 0x00000014

	.global _080F1910
_080F1910: .4byte sub_0805A154

	.global _080F1914
_080F1914:
	.incbin "baserom.gba", 0x000F1914, 0x00000014

	.global _080F1928
_080F1928: .4byte sub_0805A154

	.global _080F192C
_080F192C:
	.incbin "baserom.gba", 0x000F192C, 0x00000014

	.global _080F1940
_080F1940: .4byte sub_0805A154

	.global _080F1944
_080F1944:
	.incbin "baserom.gba", 0x000F1944, 0x00000014

	.global _080F1958
_080F1958: .4byte sub_0805A154

	.global _080F195C
_080F195C:
	.incbin "baserom.gba", 0x000F195C, 0x00000014

	.global _080F1970
_080F1970: .4byte sub_0805A154

	.global _080F1974
_080F1974:
	.incbin "baserom.gba", 0x000F1974, 0x00000010

	.global _080F1984
_080F1984:
	.incbin "baserom.gba", 0x000F1984, 0x0000000C

	.global _080F1990
_080F1990: .4byte sub_0805A188

	.global _080F1994
_080F1994:
	.incbin "baserom.gba", 0x000F1994, 0x00000014

	.global _080F19A8
_080F19A8: .4byte sub_0805A188

	.global _080F19AC
_080F19AC:
	.incbin "baserom.gba", 0x000F19AC, 0x00000014

	.global _080F19C0
_080F19C0: .4byte sub_0805A188

	.global _080F19C4
_080F19C4:
	.incbin "baserom.gba", 0x000F19C4, 0x00000014

	.global _080F19D8
_080F19D8: .4byte sub_0805A188

	.global _080F19DC
_080F19DC:
	.incbin "baserom.gba", 0x000F19DC, 0x00000014

	.global _080F19F0
_080F19F0: .4byte sub_0805A188

	.global _080F19F4
_080F19F4:
	.incbin "baserom.gba", 0x000F19F4, 0x00000014

	.global _080F1A08
_080F1A08: .4byte sub_0805A188

	.global _080F1A0C
_080F1A0C:
	.incbin "baserom.gba", 0x000F1A0C, 0x00000010

	.global _080F1A1C
_080F1A1C: .4byte _0807179C

	.global _080F1A20
_080F1A20: .4byte _080717A0

	.global _080F1A24
_080F1A24: .4byte _080717A4

	.global _080F1A28
_080F1A28: .4byte _080717A8

	.global _080F1A2C
_080F1A2C: .4byte _080717AC

	.global _080F1A30
_080F1A30: .4byte _080717B0

	.global _080F1A34
_080F1A34:
	.incbin "baserom.gba", 0x000F1A34, 0x0000000C

	.global _080F1A40
_080F1A40: .4byte sub_0805A1B4

	.global _080F1A44
_080F1A44:
	.incbin "baserom.gba", 0x000F1A44, 0x00000014

	.global _080F1A58
_080F1A58: .4byte sub_0805A1B4

	.global _080F1A5C
_080F1A5C:
	.incbin "baserom.gba", 0x000F1A5C, 0x00000014

	.global _080F1A70
_080F1A70: .4byte sub_0805A1B4

	.global _080F1A74
_080F1A74:
	.incbin "baserom.gba", 0x000F1A74, 0x00000014

	.global _080F1A88
_080F1A88: .4byte sub_0805A1B4

	.global _080F1A8C
_080F1A8C:
	.incbin "baserom.gba", 0x000F1A8C, 0x00000014

	.global _080F1AA0
_080F1AA0: .4byte sub_0805A1B4

	.global _080F1AA4
_080F1AA4:
	.incbin "baserom.gba", 0x000F1AA4, 0x00000014

	.global _080F1AB8
_080F1AB8: .4byte sub_0805A1B4

	.global _080F1ABC
_080F1ABC:
	.incbin "baserom.gba", 0x000F1ABC, 0x00000014

	.global _080F1AD0
_080F1AD0: .4byte sub_0805A1B4

	.global _080F1AD4
_080F1AD4:
	.incbin "baserom.gba", 0x000F1AD4, 0x00000014

	.global _080F1AE8
_080F1AE8: .4byte sub_0805A1B4

	.global _080F1AEC
_080F1AEC:
	.incbin "baserom.gba", 0x000F1AEC, 0x00000014

	.global _080F1B00
_080F1B00: .4byte sub_0805A1B4

	.global _080F1B04
_080F1B04:
	.incbin "baserom.gba", 0x000F1B04, 0x00000014

	.global _080F1B18
_080F1B18: .4byte sub_0805A1B4

	.global _080F1B1C
_080F1B1C:
	.incbin "baserom.gba", 0x000F1B1C, 0x00000010

	.global _080F1B2C
_080F1B2C: .4byte _080717B4

	.global _080F1B30
_080F1B30: .4byte _080717B8

	.global _080F1B34
_080F1B34: .4byte _080717BC

	.global _080F1B38
_080F1B38:
	.incbin "baserom.gba", 0x000F1B38, 0x0000000C

	.global _080F1B44
_080F1B44: .4byte sub_0805A1E4

	.global _080F1B48
_080F1B48:
	.incbin "baserom.gba", 0x000F1B48, 0x00000014

	.global _080F1B5C
_080F1B5C: .4byte sub_0805A1E4

	.global _080F1B60
_080F1B60:
	.incbin "baserom.gba", 0x000F1B60, 0x00000014

	.global _080F1B74
_080F1B74: .4byte sub_0805A1E4

	.global _080F1B78
_080F1B78:
	.incbin "baserom.gba", 0x000F1B78, 0x00000010

	.global _080F1B88
_080F1B88: .4byte _080763F4

	.global _080F1B8C
_080F1B8C: .4byte _08076400

	.global _080F1B90
_080F1B90: .4byte _0807640C

	.global _080F1B94
_080F1B94: .4byte _08076418

	.global _080F1B98
_080F1B98: .4byte _08076424

	.global _080F1B9C
_080F1B9C:
	.incbin "baserom.gba", 0x000F1B9C, 0x0000000C

	.global _080F1BA8
_080F1BA8: .4byte sub_0805A214

	.global _080F1BAC
_080F1BAC:
	.incbin "baserom.gba", 0x000F1BAC, 0x00000014

	.global _080F1BC0
_080F1BC0: .4byte sub_0805A214

	.global _080F1BC4
_080F1BC4:
	.incbin "baserom.gba", 0x000F1BC4, 0x00000014

	.global _080F1BD8
_080F1BD8: .4byte sub_0805A214

	.global _080F1BDC
_080F1BDC:
	.incbin "baserom.gba", 0x000F1BDC, 0x00000014

	.global _080F1BF0
_080F1BF0: .4byte sub_0805A214

	.global _080F1BF4
_080F1BF4:
	.incbin "baserom.gba", 0x000F1BF4, 0x00000014

	.global _080F1C08
_080F1C08: .4byte sub_0805A214

	.global _080F1C0C
_080F1C0C:
	.incbin "baserom.gba", 0x000F1C0C, 0x00000010

	.global _080F1C1C
_080F1C1C: .4byte _08076430

	.global _080F1C20
_080F1C20: .4byte _08076450

	.global _080F1C24
_080F1C24: .4byte _08076470

	.global _080F1C28
_080F1C28: .4byte _08076490

	.global _080F1C2C
_080F1C2C: .4byte _080764B0

	.global _080F1C30
_080F1C30:
	.incbin "baserom.gba", 0x000F1C30, 0x0000000C

	.global _080F1C3C
_080F1C3C: .4byte sub_0805A244

	.global _080F1C40
_080F1C40:
	.incbin "baserom.gba", 0x000F1C40, 0x00000014

	.global _080F1C54
_080F1C54: .4byte sub_0805A244

	.global _080F1C58
_080F1C58:
	.incbin "baserom.gba", 0x000F1C58, 0x00000014

	.global _080F1C6C
_080F1C6C: .4byte sub_0805A244

	.global _080F1C70
_080F1C70:
	.incbin "baserom.gba", 0x000F1C70, 0x00000014

	.global _080F1C84
_080F1C84: .4byte sub_0805A244

	.global _080F1C88
_080F1C88:
	.incbin "baserom.gba", 0x000F1C88, 0x00000014

	.global _080F1C9C
_080F1C9C: .4byte sub_0805A244

	.global _080F1CA0
_080F1CA0:
	.incbin "baserom.gba", 0x000F1CA0, 0x00000010

	.global _080F1CB0
_080F1CB0: .4byte _080764D0

	.global _080F1CB4
_080F1CB4: .4byte _080764DC

	.global _080F1CB8
_080F1CB8: .4byte _080764E8

	.global _080F1CBC
_080F1CBC: .4byte _080764F4

	.global _080F1CC0
_080F1CC0: .4byte _08076500

	.global _080F1CC4
_080F1CC4: .4byte _0807650C

	.global _080F1CC8
_080F1CC8: .4byte _08076518

	.global _080F1CCC
_080F1CCC: .4byte _08076524

	.global _080F1CD0
_080F1CD0: .4byte _08076530

	.global _080F1CD4
_080F1CD4: .4byte _0807653C

	.global _080F1CD8
_080F1CD8: .4byte _08076548

	.global _080F1CDC
_080F1CDC: .4byte _08076554

	.global _080F1CE0
_080F1CE0:
	.incbin "baserom.gba", 0x000F1CE0, 0x0000000C

	.global _080F1CEC
_080F1CEC: .4byte sub_0805A274

	.global _080F1CF0
_080F1CF0:
	.incbin "baserom.gba", 0x000F1CF0, 0x00000014

	.global _080F1D04
_080F1D04: .4byte sub_0805A274

	.global _080F1D08
_080F1D08:
	.incbin "baserom.gba", 0x000F1D08, 0x00000014

	.global _080F1D1C
_080F1D1C: .4byte sub_0805A274

	.global _080F1D20
_080F1D20:
	.incbin "baserom.gba", 0x000F1D20, 0x00000014

	.global _080F1D34
_080F1D34: .4byte sub_0805A274

	.global _080F1D38
_080F1D38:
	.incbin "baserom.gba", 0x000F1D38, 0x00000014

	.global _080F1D4C
_080F1D4C: .4byte sub_0805A274

	.global _080F1D50
_080F1D50:
	.incbin "baserom.gba", 0x000F1D50, 0x00000014

	.global _080F1D64
_080F1D64: .4byte sub_0805A274

	.global _080F1D68
_080F1D68:
	.incbin "baserom.gba", 0x000F1D68, 0x00000014

	.global _080F1D7C
_080F1D7C: .4byte sub_0805A274

	.global _080F1D80
_080F1D80:
	.incbin "baserom.gba", 0x000F1D80, 0x00000014

	.global _080F1D94
_080F1D94: .4byte sub_0805A274

	.global _080F1D98
_080F1D98:
	.incbin "baserom.gba", 0x000F1D98, 0x00000014

	.global _080F1DAC
_080F1DAC: .4byte sub_0805A274

	.global _080F1DB0
_080F1DB0:
	.incbin "baserom.gba", 0x000F1DB0, 0x00000014

	.global _080F1DC4
_080F1DC4: .4byte sub_0805A274

	.global _080F1DC8
_080F1DC8:
	.incbin "baserom.gba", 0x000F1DC8, 0x00000014

	.global _080F1DDC
_080F1DDC: .4byte sub_0805A274

	.global _080F1DE0
_080F1DE0:
	.incbin "baserom.gba", 0x000F1DE0, 0x00000014

	.global _080F1DF4
_080F1DF4: .4byte sub_0805A274

	.global _080F1DF8
_080F1DF8:
	.incbin "baserom.gba", 0x000F1DF8, 0x00000010

	.global _080F1E08
_080F1E08: .4byte _08076560

	.global _080F1E0C
_080F1E0C: .4byte _0807656C

	.global _080F1E10
_080F1E10: .4byte _08076578

	.global _080F1E14
_080F1E14: .4byte _08076584

	.global _080F1E18
_080F1E18: .4byte _08076590

	.global _080F1E1C
_080F1E1C: .4byte _0807659C

	.global _080F1E20
_080F1E20: .4byte _080765A8

	.global _080F1E24
_080F1E24: .4byte _080765B4

	.global _080F1E28
_080F1E28: .4byte _080765C0

	.global _080F1E2C
_080F1E2C: .4byte _080765CC

	.global _080F1E30
_080F1E30: .4byte _080765D8

	.global _080F1E34
_080F1E34:
	.incbin "baserom.gba", 0x000F1E34, 0x0000000C

	.global _080F1E40
_080F1E40: .4byte sub_0805A2A4

	.global _080F1E44
_080F1E44:
	.incbin "baserom.gba", 0x000F1E44, 0x00000014

	.global _080F1E58
_080F1E58: .4byte sub_0805A2A4

	.global _080F1E5C
_080F1E5C:
	.incbin "baserom.gba", 0x000F1E5C, 0x00000014

	.global _080F1E70
_080F1E70: .4byte sub_0805A2A4

	.global _080F1E74
_080F1E74:
	.incbin "baserom.gba", 0x000F1E74, 0x00000014

	.global _080F1E88
_080F1E88: .4byte sub_0805A2A4

	.global _080F1E8C
_080F1E8C:
	.incbin "baserom.gba", 0x000F1E8C, 0x00000014

	.global _080F1EA0
_080F1EA0: .4byte sub_0805A2A4

	.global _080F1EA4
_080F1EA4:
	.incbin "baserom.gba", 0x000F1EA4, 0x00000014

	.global _080F1EB8
_080F1EB8: .4byte sub_0805A2A4

	.global _080F1EBC
_080F1EBC:
	.incbin "baserom.gba", 0x000F1EBC, 0x00000014

	.global _080F1ED0
_080F1ED0: .4byte sub_0805A2A4

	.global _080F1ED4
_080F1ED4:
	.incbin "baserom.gba", 0x000F1ED4, 0x00000014

	.global _080F1EE8
_080F1EE8: .4byte sub_0805A2A4

	.global _080F1EEC
_080F1EEC:
	.incbin "baserom.gba", 0x000F1EEC, 0x00000014

	.global _080F1F00
_080F1F00: .4byte sub_0805A2A4

	.global _080F1F04
_080F1F04:
	.incbin "baserom.gba", 0x000F1F04, 0x00000014

	.global _080F1F18
_080F1F18: .4byte sub_0805A2A4

	.global _080F1F1C
_080F1F1C:
	.incbin "baserom.gba", 0x000F1F1C, 0x00000014

	.global _080F1F30
_080F1F30: .4byte sub_0805A2A4

	.global _080F1F34
_080F1F34:
	.incbin "baserom.gba", 0x000F1F34, 0x00000010

	.global _080F1F44
_080F1F44: .4byte _080765E4

	.global _080F1F48
_080F1F48: .4byte _08076604

	.global _080F1F4C
_080F1F4C: .4byte _08076624

	.global _080F1F50
_080F1F50: .4byte _08076644

	.global _080F1F54
_080F1F54: .4byte _08076664

	.global _080F1F58
_080F1F58: .4byte _08076684

	.global _080F1F5C
_080F1F5C: .4byte _080766A4

	.global _080F1F60
_080F1F60: .4byte _080766C4

	.global _080F1F64
_080F1F64: .4byte _080766E4

	.global _080F1F68
_080F1F68: .4byte _08076704

	.global _080F1F6C
_080F1F6C: .4byte _08076724

	.global _080F1F70
_080F1F70: .4byte _08076744

	.global _080F1F74
_080F1F74: .4byte _08076764

	.global _080F1F78
_080F1F78: .4byte _08076784

	.global _080F1F7C
_080F1F7C:
	.incbin "baserom.gba", 0x000F1F7C, 0x0000000C

	.global _080F1F88
_080F1F88: .4byte sub_0805A320

	.global _080F1F8C
_080F1F8C:
	.incbin "baserom.gba", 0x000F1F8C, 0x00000014

	.global _080F1FA0
_080F1FA0: .4byte sub_0805A320

	.global _080F1FA4
_080F1FA4:
	.incbin "baserom.gba", 0x000F1FA4, 0x00000014

	.global _080F1FB8
_080F1FB8: .4byte sub_0805A320

	.global _080F1FBC
_080F1FBC:
	.incbin "baserom.gba", 0x000F1FBC, 0x00000014

	.global _080F1FD0
_080F1FD0: .4byte sub_0805A320

	.global _080F1FD4
_080F1FD4:
	.incbin "baserom.gba", 0x000F1FD4, 0x00000014

	.global _080F1FE8
_080F1FE8: .4byte sub_0805A320

	.global _080F1FEC
_080F1FEC:
	.incbin "baserom.gba", 0x000F1FEC, 0x00000014

	.global _080F2000
_080F2000: .4byte sub_0805A320

	.global _080F2004
_080F2004:
	.incbin "baserom.gba", 0x000F2004, 0x00000014

	.global _080F2018
_080F2018: .4byte sub_0805A320

	.global _080F201C
_080F201C:
	.incbin "baserom.gba", 0x000F201C, 0x00000014

	.global _080F2030
_080F2030: .4byte sub_0805A320

	.global _080F2034
_080F2034:
	.incbin "baserom.gba", 0x000F2034, 0x00000014

	.global _080F2048
_080F2048: .4byte sub_0805A320

	.global _080F204C
_080F204C:
	.incbin "baserom.gba", 0x000F204C, 0x00000014

	.global _080F2060
_080F2060: .4byte sub_0805A320

	.global _080F2064
_080F2064:
	.incbin "baserom.gba", 0x000F2064, 0x00000014

	.global _080F2078
_080F2078: .4byte sub_0805A320

	.global _080F207C
_080F207C:
	.incbin "baserom.gba", 0x000F207C, 0x00000014

	.global _080F2090
_080F2090: .4byte sub_0805A320

	.global _080F2094
_080F2094:
	.incbin "baserom.gba", 0x000F2094, 0x00000010

	.global _080F20A4
_080F20A4: .4byte _080717C0

	.global _080F20A8
_080F20A8: .4byte _080717C8

	.global _080F20AC
_080F20AC: .4byte _080717D0

	.global _080F20B0
_080F20B0: .4byte _080717D8

	.global _080F20B4
_080F20B4:
	.incbin "baserom.gba", 0x000F20B4, 0x0000000C

	.global _080F20C0
_080F20C0: .4byte sub_0805A36C

	.global _080F20C4
_080F20C4:
	.incbin "baserom.gba", 0x000F20C4, 0x00000014

	.global _080F20D8
_080F20D8: .4byte sub_0805A36C

	.global _080F20DC
_080F20DC:
	.incbin "baserom.gba", 0x000F20DC, 0x00000014

	.global _080F20F0
_080F20F0: .4byte sub_0805A36C

	.global _080F20F4
_080F20F4:
	.incbin "baserom.gba", 0x000F20F4, 0x00000014

	.global _080F2108
_080F2108: .4byte sub_0805A36C

	.global _080F210C
_080F210C:
	.incbin "baserom.gba", 0x000F210C, 0x00000010

	.global _080F211C
_080F211C: .4byte _0807611C

	.global _080F2120
_080F2120: .4byte _08076130

	.global _080F2124
_080F2124: .4byte _08076144

	.global _080F2128
_080F2128: .4byte _08076158

	.global _080F212C
_080F212C:
	.incbin "baserom.gba", 0x000F212C, 0x0000000C

	.global _080F2138
_080F2138: .4byte sub_0805A39C

	.global _080F213C
_080F213C:
	.incbin "baserom.gba", 0x000F213C, 0x00000014

	.global _080F2150
_080F2150: .4byte sub_0805A39C

	.global _080F2154
_080F2154:
	.incbin "baserom.gba", 0x000F2154, 0x00000014

	.global _080F2168
_080F2168: .4byte sub_0805A39C

	.global _080F216C
_080F216C:
	.incbin "baserom.gba", 0x000F216C, 0x00000014

	.global _080F2180
_080F2180: .4byte sub_0805A39C

	.global _080F2184
_080F2184:
	.incbin "baserom.gba", 0x000F2184, 0x00000014

	.global _080F2198
_080F2198: .4byte sub_0805A39C

	.global _080F219C
_080F219C:
	.incbin "baserom.gba", 0x000F219C, 0x00000014

	.global _080F21B0
_080F21B0: .4byte sub_0805A39C

	.global _080F21B4
_080F21B4:
	.incbin "baserom.gba", 0x000F21B4, 0x00000010

	.global _080F21C4
_080F21C4: .4byte _080713A4

	.global _080F21C8
_080F21C8: .4byte _080713AC

	.global _080F21CC
_080F21CC: .4byte _080713B4

	.global _080F21D0
_080F21D0:
	.incbin "baserom.gba", 0x000F21D0, 0x0000000C

	.global _080F21DC
_080F21DC: .4byte sub_0805A3CC

	.global _080F21E0
_080F21E0:
	.incbin "baserom.gba", 0x000F21E0, 0x00000014

	.global _080F21F4
_080F21F4: .4byte sub_0805A3CC

	.global _080F21F8
_080F21F8:
	.incbin "baserom.gba", 0x000F21F8, 0x00000014

	.global _080F220C
_080F220C: .4byte sub_0805A3CC

	.global _080F2210
_080F2210:
	.incbin "baserom.gba", 0x000F2210, 0x00000010

	.global _080F2220
_080F2220: .4byte _0807143C

	.global _080F2224
_080F2224: .4byte _0807145C

	.global _080F2228
_080F2228: .4byte _0807147C

	.global _080F222C
_080F222C: .4byte _0807149C

	.global _080F2230
_080F2230:
	.incbin "baserom.gba", 0x000F2230, 0x0000000C

	.global _080F223C
_080F223C: .4byte sub_0805A3FC

	.global _080F2240
_080F2240:
	.incbin "baserom.gba", 0x000F2240, 0x00000014

	.global _080F2254
_080F2254: .4byte sub_0805A3FC

	.global _080F2258
_080F2258:
	.incbin "baserom.gba", 0x000F2258, 0x00000014

	.global _080F226C
_080F226C: .4byte sub_0805A3FC

	.global _080F2270
_080F2270:
	.incbin "baserom.gba", 0x000F2270, 0x00000014

	.global _080F2284
_080F2284: .4byte sub_0805A3FC

	.global _080F2288
_080F2288:
	.incbin "baserom.gba", 0x000F2288, 0x00000010

	.global _080F2298
_080F2298:
	.incbin "baserom.gba", 0x000F2298, 0x0000000C

	.global _080F22A4
_080F22A4: .4byte sub_0805A42C

	.global _080F22A8
_080F22A8:
	.incbin "baserom.gba", 0x000F22A8, 0x00000014

	.global _080F22BC
_080F22BC: .4byte sub_0805A42C

	.global _080F22C0
_080F22C0:
	.incbin "baserom.gba", 0x000F22C0, 0x00000014

	.global _080F22D4
_080F22D4: .4byte sub_0805A42C

	.global _080F22D8
_080F22D8:
	.incbin "baserom.gba", 0x000F22D8, 0x00000010

	.global _080F22E8
_080F22E8: .4byte _080717E0

	.global _080F22EC
_080F22EC: .4byte _080717EC

	.global _080F22F0
_080F22F0: .4byte _080717F8

	.global _080F22F4
_080F22F4: .4byte _08071804

	.global _080F22F8
_080F22F8: .4byte _08071810

	.global _080F22FC
_080F22FC: .4byte _0807181C

	.global _080F2300
_080F2300: .4byte _08071828

	.global _080F2304
_080F2304: .4byte _08071834

	.global _080F2308
_080F2308:
	.incbin "baserom.gba", 0x000F2308, 0x0000000C

	.global _080F2314
_080F2314: .4byte sub_0805A474

	.global _080F2318
_080F2318:
	.incbin "baserom.gba", 0x000F2318, 0x00000014

	.global _080F232C
_080F232C: .4byte sub_0805A474

	.global _080F2330
_080F2330:
	.incbin "baserom.gba", 0x000F2330, 0x00000014

	.global _080F2344
_080F2344: .4byte sub_0805A474

	.global _080F2348
_080F2348:
	.incbin "baserom.gba", 0x000F2348, 0x00000014

	.global _080F235C
_080F235C: .4byte sub_0805A474

	.global _080F2360
_080F2360:
	.incbin "baserom.gba", 0x000F2360, 0x00000014

	.global _080F2374
_080F2374: .4byte sub_0805A474

	.global _080F2378
_080F2378:
	.incbin "baserom.gba", 0x000F2378, 0x00000014

	.global _080F238C
_080F238C: .4byte sub_0805A474

	.global _080F2390
_080F2390:
	.incbin "baserom.gba", 0x000F2390, 0x00000014

	.global _080F23A4
_080F23A4: .4byte sub_0805A474

	.global _080F23A8
_080F23A8:
	.incbin "baserom.gba", 0x000F23A8, 0x00000014

	.global _080F23BC
_080F23BC: .4byte sub_0805A474

	.global _080F23C0
_080F23C0:
	.incbin "baserom.gba", 0x000F23C0, 0x00000010

	.global _080F23D0
_080F23D0: .4byte _08071840

	.global _080F23D4
_080F23D4: .4byte _08071848

	.global _080F23D8
_080F23D8: .4byte _08071850

	.global _080F23DC
_080F23DC: .4byte _08071858

	.global _080F23E0
_080F23E0: .4byte _08071860

	.global _080F23E4
_080F23E4: .4byte _08071868

	.global _080F23E8
_080F23E8:
	.incbin "baserom.gba", 0x000F23E8, 0x0000000C

	.global _080F23F4
_080F23F4: .4byte sub_0805A4A4

	.global _080F23F8
_080F23F8:
	.incbin "baserom.gba", 0x000F23F8, 0x00000014

	.global _080F240C
_080F240C: .4byte sub_0805A4A4

	.global _080F2410
_080F2410:
	.incbin "baserom.gba", 0x000F2410, 0x00000014

	.global _080F2424
_080F2424: .4byte sub_0805A4A4

	.global _080F2428
_080F2428:
	.incbin "baserom.gba", 0x000F2428, 0x00000014

	.global _080F243C
_080F243C: .4byte sub_0805A4A4

	.global _080F2440
_080F2440:
	.incbin "baserom.gba", 0x000F2440, 0x00000014

	.global _080F2454
_080F2454: .4byte sub_0805A4A4

	.global _080F2458
_080F2458:
	.incbin "baserom.gba", 0x000F2458, 0x00000014

	.global _080F246C
_080F246C: .4byte sub_0805A4A4

	.global _080F2470
_080F2470:
	.incbin "baserom.gba", 0x000F2470, 0x00000014

	.global _080F2484
_080F2484: .4byte sub_0805A4A4

	.global _080F2488
_080F2488:
	.incbin "baserom.gba", 0x000F2488, 0x00000014

	.global _080F249C
_080F249C: .4byte sub_0805A4A4

	.global _080F24A0
_080F24A0:
	.incbin "baserom.gba", 0x000F24A0, 0x00000014

	.global _080F24B4
_080F24B4: .4byte sub_0805A4A4

	.global _080F24B8
_080F24B8:
	.incbin "baserom.gba", 0x000F24B8, 0x00000014

	.global _080F24CC
_080F24CC: .4byte sub_0805A4A4

	.global _080F24D0
_080F24D0:
	.incbin "baserom.gba", 0x000F24D0, 0x00000010

	.global _080F24E0
_080F24E0: .4byte _08071870

	.global _080F24E4
_080F24E4: .4byte _0807187C

	.global _080F24E8
_080F24E8: .4byte _08071888

	.global _080F24EC
_080F24EC:
	.incbin "baserom.gba", 0x000F24EC, 0x0000000C

	.global _080F24F8
_080F24F8: .4byte sub_0805A4D4

	.global _080F24FC
_080F24FC:
	.incbin "baserom.gba", 0x000F24FC, 0x00000014

	.global _080F2510
_080F2510: .4byte sub_0805A4D4

	.global _080F2514
_080F2514:
	.incbin "baserom.gba", 0x000F2514, 0x00000014

	.global _080F2528
_080F2528: .4byte sub_0805A4D4

	.global _080F252C
_080F252C:
	.incbin "baserom.gba", 0x000F252C, 0x00000014

	.global _080F2540
_080F2540: .4byte sub_0805A4D4

	.global _080F2544
_080F2544:
	.incbin "baserom.gba", 0x000F2544, 0x00000010

	.global _080F2554
_080F2554: .4byte _08071894

	.global _080F2558
_080F2558: .4byte _0807189C

	.global _080F255C
_080F255C: .4byte _080718A4

	.global _080F2560
_080F2560: .4byte _080718AC

	.global _080F2564
_080F2564: .4byte _080718B4

	.global _080F2568
_080F2568: .4byte _080718BC

	.global _080F256C
_080F256C:
	.incbin "baserom.gba", 0x000F256C, 0x0000000C

	.global _080F2578
_080F2578: .4byte sub_0805A504

	.global _080F257C
_080F257C:
	.incbin "baserom.gba", 0x000F257C, 0x00000014

	.global _080F2590
_080F2590: .4byte sub_0805A504

	.global _080F2594
_080F2594:
	.incbin "baserom.gba", 0x000F2594, 0x00000014

	.global _080F25A8
_080F25A8: .4byte sub_0805A504

	.global _080F25AC
_080F25AC:
	.incbin "baserom.gba", 0x000F25AC, 0x00000014

	.global _080F25C0
_080F25C0: .4byte sub_0805A504

	.global _080F25C4
_080F25C4:
	.incbin "baserom.gba", 0x000F25C4, 0x00000014

	.global _080F25D8
_080F25D8: .4byte sub_0805A504

	.global _080F25DC
_080F25DC:
	.incbin "baserom.gba", 0x000F25DC, 0x00000014

	.global _080F25F0
_080F25F0: .4byte sub_0805A504

	.global _080F25F4
_080F25F4:
	.incbin "baserom.gba", 0x000F25F4, 0x00000014

	.global _080F2608
_080F2608: .4byte sub_0805A504

	.global _080F260C
_080F260C:
	.incbin "baserom.gba", 0x000F260C, 0x00000014

	.global _080F2620
_080F2620: .4byte sub_0805A504

	.global _080F2624
_080F2624:
	.incbin "baserom.gba", 0x000F2624, 0x00000014

	.global _080F2638
_080F2638: .4byte sub_0805A504

	.global _080F263C
_080F263C:
	.incbin "baserom.gba", 0x000F263C, 0x00000014

	.global _080F2650
_080F2650: .4byte sub_0805A504

	.global _080F2654
_080F2654:
	.incbin "baserom.gba", 0x000F2654, 0x00000010

	.global _080F2664
_080F2664:
	.incbin "baserom.gba", 0x000F2664, 0x0000000C

	.global _080F2670
_080F2670: .4byte sub_0805A534

	.global _080F2674
_080F2674:
	.incbin "baserom.gba", 0x000F2674, 0x00000014

	.global _080F2688
_080F2688: .4byte sub_0805A534

	.global _080F268C
_080F268C:
	.incbin "baserom.gba", 0x000F268C, 0x00000014

	.global _080F26A0
_080F26A0: .4byte sub_0805A534

	.global _080F26A4
_080F26A4:
	.incbin "baserom.gba", 0x000F26A4, 0x00000014

	.global _080F26B8
_080F26B8: .4byte sub_0805A534

	.global _080F26BC
_080F26BC:
	.incbin "baserom.gba", 0x000F26BC, 0x00000014

	.global _080F26D0
_080F26D0: .4byte sub_0805A534

	.global _080F26D4
_080F26D4:
	.incbin "baserom.gba", 0x000F26D4, 0x00000014

	.global _080F26E8
_080F26E8: .4byte sub_0805A534

	.global _080F26EC
_080F26EC:
	.incbin "baserom.gba", 0x000F26EC, 0x00000010

	.global _080F26FC
_080F26FC:
	.incbin "baserom.gba", 0x000F26FC, 0x0000000C

	.global _080F2708
_080F2708: .4byte sub_0805A560

	.global _080F270C
_080F270C:
	.incbin "baserom.gba", 0x000F270C, 0x00000014

	.global _080F2720
_080F2720: .4byte sub_0805A560

	.global _080F2724
_080F2724:
	.incbin "baserom.gba", 0x000F2724, 0x00000014

	.global _080F2738
_080F2738: .4byte sub_0805A560

	.global _080F273C
_080F273C:
	.incbin "baserom.gba", 0x000F273C, 0x00000014

	.global _080F2750
_080F2750: .4byte sub_0805A560

	.global _080F2754
_080F2754:
	.incbin "baserom.gba", 0x000F2754, 0x00000014

	.global _080F2768
_080F2768: .4byte sub_0805A560

	.global _080F276C
_080F276C:
	.incbin "baserom.gba", 0x000F276C, 0x00000014

	.global _080F2780
_080F2780: .4byte sub_0805A560

	.global _080F2784
_080F2784:
	.incbin "baserom.gba", 0x000F2784, 0x00000010

	.global _080F2794
_080F2794: .4byte _08071944

	.global _080F2798
_080F2798: .4byte _08071950

	.global _080F279C
_080F279C: .4byte _0807195C

	.global _080F27A0
_080F27A0: .4byte _08071968

	.global _080F27A4
_080F27A4: .4byte _08071974

	.global _080F27A8
_080F27A8: .4byte _08071980

	.global _080F27AC
_080F27AC: .4byte _0807198C

	.global _080F27B0
_080F27B0: .4byte _08071998

	.global _080F27B4
_080F27B4:
	.incbin "baserom.gba", 0x000F27B4, 0x0000000C

	.global _080F27C0
_080F27C0: .4byte sub_0805A58C

	.global _080F27C4
_080F27C4:
	.incbin "baserom.gba", 0x000F27C4, 0x00000014

	.global _080F27D8
_080F27D8: .4byte sub_0805A58C

	.global _080F27DC
_080F27DC:
	.incbin "baserom.gba", 0x000F27DC, 0x00000014

	.global _080F27F0
_080F27F0: .4byte sub_0805A58C

	.global _080F27F4
_080F27F4:
	.incbin "baserom.gba", 0x000F27F4, 0x00000014

	.global _080F2808
_080F2808: .4byte sub_0805A58C

	.global _080F280C
_080F280C:
	.incbin "baserom.gba", 0x000F280C, 0x00000014

	.global _080F2820
_080F2820: .4byte sub_0805A58C

	.global _080F2824
_080F2824:
	.incbin "baserom.gba", 0x000F2824, 0x00000014

	.global _080F2838
_080F2838: .4byte sub_0805A58C

	.global _080F283C
_080F283C:
	.incbin "baserom.gba", 0x000F283C, 0x00000014

	.global _080F2850
_080F2850: .4byte sub_0805A58C

	.global _080F2854
_080F2854:
	.incbin "baserom.gba", 0x000F2854, 0x00000014

	.global _080F2868
_080F2868: .4byte sub_0805A58C

	.global _080F286C
_080F286C:
	.incbin "baserom.gba", 0x000F286C, 0x00000010

	.global _080F287C
_080F287C: .4byte _080719A4

	.global _080F2880
_080F2880: .4byte _080719BC

	.global _080F2884
_080F2884: .4byte _080719D4

	.global _080F2888
_080F2888: .4byte _080719EC

	.global _080F288C
_080F288C: .4byte _08071A04

	.global _080F2890
_080F2890: .4byte _08071A1C

	.global _080F2894
_080F2894: .4byte _08071A34

	.global _080F2898
_080F2898: .4byte _08071A4C

	.global _080F289C
_080F289C: .4byte _08071A64

	.global _080F28A0
_080F28A0:
	.incbin "baserom.gba", 0x000F28A0, 0x0000000C

	.global _080F28AC
_080F28AC: .4byte sub_0805A5BC

	.global _080F28B0
_080F28B0:
	.incbin "baserom.gba", 0x000F28B0, 0x00000014

	.global _080F28C4
_080F28C4: .4byte sub_0805A5BC

	.global _080F28C8
_080F28C8:
	.incbin "baserom.gba", 0x000F28C8, 0x00000014

	.global _080F28DC
_080F28DC: .4byte sub_0805A5BC

	.global _080F28E0
_080F28E0:
	.incbin "baserom.gba", 0x000F28E0, 0x00000014

	.global _080F28F4
_080F28F4: .4byte sub_0805A5BC

	.global _080F28F8
_080F28F8:
	.incbin "baserom.gba", 0x000F28F8, 0x00000014

	.global _080F290C
_080F290C: .4byte sub_0805A5BC

	.global _080F2910
_080F2910:
	.incbin "baserom.gba", 0x000F2910, 0x00000014

	.global _080F2924
_080F2924: .4byte sub_0805A5BC

	.global _080F2928
_080F2928:
	.incbin "baserom.gba", 0x000F2928, 0x00000014

	.global _080F293C
_080F293C: .4byte sub_0805A5BC

	.global _080F2940
_080F2940:
	.incbin "baserom.gba", 0x000F2940, 0x00000014

	.global _080F2954
_080F2954: .4byte sub_0805A5BC

	.global _080F2958
_080F2958:
	.incbin "baserom.gba", 0x000F2958, 0x00000014

	.global _080F296C
_080F296C: .4byte sub_0805A5BC

	.global _080F2970
_080F2970:
	.incbin "baserom.gba", 0x000F2970, 0x00000010

	.global _080F2980
_080F2980:
	.incbin "baserom.gba", 0x000F2980, 0x00000004

	.global _080F2984
_080F2984: .4byte _0807AF1C

	.global _080F2988
_080F2988:
	.incbin "baserom.gba", 0x000F2988, 0x0000000C

	.global _080F2994
_080F2994: .4byte _0807AF24

	.global _080F2998
_080F2998:
	.incbin "baserom.gba", 0x000F2998, 0x0000000C

	.global _080F29A4
_080F29A4: .4byte _0807AF2C

	.global _080F29A8
_080F29A8:
	.incbin "baserom.gba", 0x000F29A8, 0x00000010

	.global _080F29B8
_080F29B8:
	.incbin "baserom.gba", 0x000F29B8, 0x00000004

	.global _080F29BC
_080F29BC: .4byte _0807AF34

	.global _080F29C0
_080F29C0:
	.incbin "baserom.gba", 0x000F29C0, 0x0000000C

	.global _080F29CC
_080F29CC: .4byte _0807AF3C

	.global _080F29D0
_080F29D0:
	.incbin "baserom.gba", 0x000F29D0, 0x0000000C

	.global _080F29DC
_080F29DC: .4byte _0807AF44

	.global _080F29E0
_080F29E0:
	.incbin "baserom.gba", 0x000F29E0, 0x00000010

	.global _080F29F0
_080F29F0:
	.incbin "baserom.gba", 0x000F29F0, 0x00000004

	.global _080F29F4
_080F29F4: .4byte _0807AF4C

	.global _080F29F8
_080F29F8:
	.incbin "baserom.gba", 0x000F29F8, 0x0000000C

	.global _080F2A04
_080F2A04: .4byte _0807AF54

	.global _080F2A08
_080F2A08:
	.incbin "baserom.gba", 0x000F2A08, 0x0000000C

	.global _080F2A14
_080F2A14: .4byte _0807AF5C

	.global _080F2A18
_080F2A18:
	.incbin "baserom.gba", 0x000F2A18, 0x00000010

	.global _080F2A28
_080F2A28:
	.incbin "baserom.gba", 0x000F2A28, 0x00000004

	.global _080F2A2C
_080F2A2C: .4byte _0807AF64

	.global _080F2A30
_080F2A30:
	.incbin "baserom.gba", 0x000F2A30, 0x0000000C

	.global _080F2A3C
_080F2A3C: .4byte _0807AF6C

	.global _080F2A40
_080F2A40:
	.incbin "baserom.gba", 0x000F2A40, 0x0000000C

	.global _080F2A4C
_080F2A4C: .4byte _0807AF74

	.global _080F2A50
_080F2A50:
	.incbin "baserom.gba", 0x000F2A50, 0x00000020

	.global _080F2A70
_080F2A70:
	.incbin "baserom.gba", 0x000F2A70, 0x00000004

	.global _080F2A74
_080F2A74: .4byte _0807C938

	.global _080F2A78
_080F2A78:
	.incbin "baserom.gba", 0x000F2A78, 0x00000004

	.global _080F2A7C
_080F2A7C: .4byte sub_0805A790

	.global _080F2A80
_080F2A80:
	.incbin "baserom.gba", 0x000F2A80, 0x00000004

	.global _080F2A84
_080F2A84: .4byte sub_0805A758

	.global _080F2A88
_080F2A88:
	.incbin "baserom.gba", 0x000F2A88, 0x0000000C

	.global _080F2A94
_080F2A94: .4byte sub_0805A79C

	.global _080F2A98
_080F2A98:
	.incbin "baserom.gba", 0x000F2A98, 0x00000010

	.global _080F2AA8
_080F2AA8:
	.incbin "baserom.gba", 0x000F2AA8, 0x0000000C

	.global _080F2AB4
_080F2AB4: .4byte sub_0805A7AC

	.global _080F2AB8
_080F2AB8:
	.incbin "baserom.gba", 0x000F2AB8, 0x00000008

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
_080F2BF4: .4byte _080F2ADC

	.global _080F2BF8
_080F2BF8: .4byte _080F2AF8

	.global _080F2BFC
_080F2BFC: .4byte _080F2B14

	.global _080F2C00
_080F2C00: .4byte _080F2B38

	.global _080F2C04
_080F2C04: .4byte _080F2B58

	.global _080F2C08
_080F2C08: .4byte _080F2B7C

	.global _080F2C0C
_080F2C0C: .4byte _080F2BB0

	.global _080F2C10
_080F2C10: .4byte _080F2BD4

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
_080F2CBC: .4byte _0807B0C8

	.global _080F2CC0
_080F2CC0:
	.incbin "baserom.gba", 0x000F2CC0, 0x00000004

	.global _080F2CC4
_080F2CC4: .4byte _0807B0E8

	.global _080F2CC8
_080F2CC8:
	.incbin "baserom.gba", 0x000F2CC8, 0x00000004

	.global _080F2CCC
_080F2CCC: .4byte _0807B108

	.global _080F2CD0
_080F2CD0:
	.incbin "baserom.gba", 0x000F2CD0, 0x00000004

	.global _080F2CD4
_080F2CD4: .4byte _0807B128

	.global _080F2CD8
_080F2CD8:
	.incbin "baserom.gba", 0x000F2CD8, 0x00000004

	.global _080F2CDC
_080F2CDC: .4byte _0807B148

	.global _080F2CE0
_080F2CE0:
	.incbin "baserom.gba", 0x000F2CE0, 0x0000000C

	.global _080F2CEC
_080F2CEC: .4byte _0807B280

	.global _080F2CF0
_080F2CF0:
	.incbin "baserom.gba", 0x000F2CF0, 0x00000004

	.global _080F2CF4
_080F2CF4: .4byte _0807B2A8

	.global _080F2CF8
_080F2CF8:
	.incbin "baserom.gba", 0x000F2CF8, 0x00000004

	.global _080F2CFC
_080F2CFC: .4byte _0807B2D0

	.global _080F2D00
_080F2D00:
	.incbin "baserom.gba", 0x000F2D00, 0x00000004

	.global _080F2D04
_080F2D04: .4byte _0807B2F8

	.global _080F2D08
_080F2D08:
	.incbin "baserom.gba", 0x000F2D08, 0x00000004

	.global _080F2D0C
_080F2D0C: .4byte _0807B320

	.global _080F2D10
_080F2D10:
	.incbin "baserom.gba", 0x000F2D10, 0x0000000C

	.global _080F2D1C
_080F2D1C: .4byte _0807B168

	.global _080F2D20
_080F2D20:
	.incbin "baserom.gba", 0x000F2D20, 0x00000004

	.global _080F2D24
_080F2D24: .4byte _0807B184

	.global _080F2D28
_080F2D28:
	.incbin "baserom.gba", 0x000F2D28, 0x00000004

	.global _080F2D2C
_080F2D2C: .4byte _0807B1A0

	.global _080F2D30
_080F2D30:
	.incbin "baserom.gba", 0x000F2D30, 0x00000004

	.global _080F2D34
_080F2D34: .4byte _0807B1BC

	.global _080F2D38
_080F2D38:
	.incbin "baserom.gba", 0x000F2D38, 0x00000004

	.global _080F2D3C
_080F2D3C: .4byte _0807B1D8

	.global _080F2D40
_080F2D40:
	.incbin "baserom.gba", 0x000F2D40, 0x0000000C

	.global _080F2D4C
_080F2D4C: .4byte _0807B348

	.global _080F2D50
_080F2D50:
	.incbin "baserom.gba", 0x000F2D50, 0x00000004

	.global _080F2D54
_080F2D54: .4byte _0807B35C

	.global _080F2D58
_080F2D58:
	.incbin "baserom.gba", 0x000F2D58, 0x00000004

	.global _080F2D5C
_080F2D5C: .4byte _0807B370

	.global _080F2D60
_080F2D60:
	.incbin "baserom.gba", 0x000F2D60, 0x00000004

	.global _080F2D64
_080F2D64: .4byte _0807B384

	.global _080F2D68
_080F2D68:
	.incbin "baserom.gba", 0x000F2D68, 0x00000004

	.global _080F2D6C
_080F2D6C: .4byte _0807B398

	.global _080F2D70
_080F2D70:
	.incbin "baserom.gba", 0x000F2D70, 0x0000000C

	.global _080F2D7C
_080F2D7C: .4byte _0807B1F4

	.global _080F2D80
_080F2D80:
	.incbin "baserom.gba", 0x000F2D80, 0x00000004

	.global _080F2D84
_080F2D84: .4byte _0807B210

	.global _080F2D88
_080F2D88:
	.incbin "baserom.gba", 0x000F2D88, 0x00000004

	.global _080F2D8C
_080F2D8C: .4byte _0807B22C

	.global _080F2D90
_080F2D90:
	.incbin "baserom.gba", 0x000F2D90, 0x00000004

	.global _080F2D94
_080F2D94: .4byte _0807B248

	.global _080F2D98
_080F2D98:
	.incbin "baserom.gba", 0x000F2D98, 0x00000004

	.global _080F2D9C
_080F2D9C: .4byte _0807B264

	.global _080F2DA0
_080F2DA0:
	.incbin "baserom.gba", 0x000F2DA0, 0x0000000C

	.global _080F2DAC
_080F2DAC: .4byte _0807B3AC

	.global _080F2DB0
_080F2DB0:
	.incbin "baserom.gba", 0x000F2DB0, 0x00000004

	.global _080F2DB4
_080F2DB4: .4byte _0807B3C0

	.global _080F2DB8
_080F2DB8:
	.incbin "baserom.gba", 0x000F2DB8, 0x00000004

	.global _080F2DBC
_080F2DBC: .4byte _0807B3D4

	.global _080F2DC0
_080F2DC0:
	.incbin "baserom.gba", 0x000F2DC0, 0x00000004

	.global _080F2DC4
_080F2DC4: .4byte _0807B3E8

	.global _080F2DC8
_080F2DC8:
	.incbin "baserom.gba", 0x000F2DC8, 0x00000004

	.global _080F2DCC
_080F2DCC: .4byte _0807B3FC

	.global _080F2DD0
_080F2DD0:
	.incbin "baserom.gba", 0x000F2DD0, 0x0000000C

	.global _080F2DDC
_080F2DDC: .4byte _0807B410

	.global _080F2DE0
_080F2DE0:
	.incbin "baserom.gba", 0x000F2DE0, 0x00000004

	.global _080F2DE4
_080F2DE4: .4byte _0807B418

	.global _080F2DE8
_080F2DE8:
	.incbin "baserom.gba", 0x000F2DE8, 0x00000004

	.global _080F2DEC
_080F2DEC: .4byte _0807B420

	.global _080F2DF0
_080F2DF0:
	.incbin "baserom.gba", 0x000F2DF0, 0x00000004

	.global _080F2DF4
_080F2DF4: .4byte _0807B430

	.global _080F2DF8
_080F2DF8:
	.incbin "baserom.gba", 0x000F2DF8, 0x00000004

	.global _080F2DFC
_080F2DFC: .4byte _0807B428

	.global _080F2E00
_080F2E00:
	.incbin "baserom.gba", 0x000F2E00, 0x00000004

	.global _080F2E04
_080F2E04: .4byte _0807B410

	.global _080F2E08
_080F2E08:
	.incbin "baserom.gba", 0x000F2E08, 0x00000004

	.global _080F2E0C
_080F2E0C: .4byte _0807B418

	.global _080F2E10
_080F2E10:
	.incbin "baserom.gba", 0x000F2E10, 0x0000000C

	.global _080F2E1C
_080F2E1C: .4byte _0807B410

	.global _080F2E20
_080F2E20:
	.incbin "baserom.gba", 0x000F2E20, 0x00000004

	.global _080F2E24
_080F2E24: .4byte _0807B418

	.global _080F2E28
_080F2E28:
	.incbin "baserom.gba", 0x000F2E28, 0x00000004

	.global _080F2E2C
_080F2E2C: .4byte _0807B420

	.global _080F2E30
_080F2E30:
	.incbin "baserom.gba", 0x000F2E30, 0x00000004

	.global _080F2E34
_080F2E34: .4byte _0807B430

	.global _080F2E38
_080F2E38:
	.incbin "baserom.gba", 0x000F2E38, 0x00000004

	.global _080F2E3C
_080F2E3C: .4byte _0807B428

	.global _080F2E40
_080F2E40:
	.incbin "baserom.gba", 0x000F2E40, 0x00000004

	.global _080F2E44
_080F2E44: .4byte _0807B410

	.global _080F2E48
_080F2E48:
	.incbin "baserom.gba", 0x000F2E48, 0x00000004

	.global _080F2E4C
_080F2E4C: .4byte _0807B418

	.global _080F2E50
_080F2E50:
	.incbin "baserom.gba", 0x000F2E50, 0x00000004

	.global _080F2E54
_080F2E54: .4byte _0807B420

	.global _080F2E58
_080F2E58:
	.incbin "baserom.gba", 0x000F2E58, 0x00000004

	.global _080F2E5C
_080F2E5C: .4byte _0807B430

	.global _080F2E60
_080F2E60:
	.incbin "baserom.gba", 0x000F2E60, 0x00000004

	.global _080F2E64
_080F2E64: .4byte _0807B428

	.global _080F2E68
_080F2E68:
	.incbin "baserom.gba", 0x000F2E68, 0x00000004

	.global _080F2E6C
_080F2E6C: .4byte _0807B410

	.global _080F2E70
_080F2E70:
	.incbin "baserom.gba", 0x000F2E70, 0x00000004

	.global _080F2E74
_080F2E74: .4byte _0807B418

	.global _080F2E78
_080F2E78:
	.incbin "baserom.gba", 0x000F2E78, 0x00000004

	.global _080F2E7C
_080F2E7C: .4byte _0807B420

	.global _080F2E80
_080F2E80:
	.incbin "baserom.gba", 0x000F2E80, 0x00000004

	.global _080F2E84
_080F2E84: .4byte _0807B430

	.global _080F2E88
_080F2E88:
	.incbin "baserom.gba", 0x000F2E88, 0x00000004

	.global _080F2E8C
_080F2E8C: .4byte _0807B428

	.global _080F2E90
_080F2E90:
	.incbin "baserom.gba", 0x000F2E90, 0x00000004

	.global _080F2E94
_080F2E94: .4byte _0807B410

	.global _080F2E98
_080F2E98:
	.incbin "baserom.gba", 0x000F2E98, 0x00000004

	.global _080F2E9C
_080F2E9C: .4byte _0807B418

	.global _080F2EA0
_080F2EA0:
	.incbin "baserom.gba", 0x000F2EA0, 0x00000004

	.global _080F2EA4
_080F2EA4: .4byte _0807B420

	.global _080F2EA8
_080F2EA8:
	.incbin "baserom.gba", 0x000F2EA8, 0x0000000C

	.global _080F2EB4
_080F2EB4: .4byte _0807B410

	.global _080F2EB8
_080F2EB8:
	.incbin "baserom.gba", 0x000F2EB8, 0x00000004

	.global _080F2EBC
_080F2EBC: .4byte _0807B418

	.global _080F2EC0
_080F2EC0:
	.incbin "baserom.gba", 0x000F2EC0, 0x00000004

	.global _080F2EC4
_080F2EC4: .4byte _0807B420

	.global _080F2EC8
_080F2EC8:
	.incbin "baserom.gba", 0x000F2EC8, 0x00000004

	.global _080F2ECC
_080F2ECC: .4byte _0807B428

	.global _080F2ED0
_080F2ED0:
	.incbin "baserom.gba", 0x000F2ED0, 0x00000004

	.global _080F2ED4
_080F2ED4: .4byte _0807B410

	.global _080F2ED8
_080F2ED8:
	.incbin "baserom.gba", 0x000F2ED8, 0x0000000C

	.global _080F2EE4
_080F2EE4: .4byte _0807B430

	.global _080F2EE8
_080F2EE8:
	.incbin "baserom.gba", 0x000F2EE8, 0x0000000C

	.global _080F2EF4
_080F2EF4: .4byte _0807B430

	.global _080F2EF8
_080F2EF8:
	.incbin "baserom.gba", 0x000F2EF8, 0x0000000C

	.global _080F2F04
_080F2F04: .4byte _080F2DDC

	.global _080F2F08
_080F2F08: .4byte _080F2E1C

	.global _080F2F0C
_080F2F0C: .4byte _080F2E1C

	.global _080F2F10
_080F2F10: .4byte _080F2E1C

	.global _080F2F14
_080F2F14: .4byte _080F2E1C

	.global _080F2F18
_080F2F18: .4byte _080F2E1C

	.global _080F2F1C
_080F2F1C: .4byte _080F2E1C

	.global _080F2F20
_080F2F20: .4byte _080F2E1C

	.global _080F2F24
_080F2F24: .4byte _080F2E1C

	.global _080F2F28
_080F2F28: .4byte _080F2E1C

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
_080F2F7C: .4byte _0807ACFC

	.global _080F2F80
_080F2F80:
	.incbin "baserom.gba", 0x000F2F80, 0x00000004

	.global _080F2F84
_080F2F84: .4byte _0807AD04

	.global _080F2F88
_080F2F88:
	.incbin "baserom.gba", 0x000F2F88, 0x00000004

	.global _080F2F8C
_080F2F8C: .4byte _0807AD0C

	.global _080F2F90
_080F2F90:
	.incbin "baserom.gba", 0x000F2F90, 0x00000004

	.global _080F2F94
_080F2F94: .4byte _0807AD4C

	.global _080F2F98
_080F2F98:
	.incbin "baserom.gba", 0x000F2F98, 0x00000004

	.global _080F2F9C
_080F2F9C: .4byte _0807AD98

	.global _080F2FA0
_080F2FA0:
	.incbin "baserom.gba", 0x000F2FA0, 0x00000004

	.global _080F2FA4
_080F2FA4: .4byte _0807ACFC

	.global _080F2FA8
_080F2FA8:
	.incbin "baserom.gba", 0x000F2FA8, 0x00000004

	.global _080F2FAC
_080F2FAC: .4byte _0807ADCC

	.global _080F2FB0
_080F2FB0:
	.incbin "baserom.gba", 0x000F2FB0, 0x00000004

	.global _080F2FB4
_080F2FB4: .4byte _0807AE18

	.global _080F2FB8
_080F2FB8:
	.incbin "baserom.gba", 0x000F2FB8, 0x00000004

	.global _080F2FBC
_080F2FBC: .4byte _0807AD04

	.global _080F2FC0
_080F2FC0:
	.incbin "baserom.gba", 0x000F2FC0, 0x00000004

	.global _080F2FC4
_080F2FC4: .4byte _0807AD0C

	.global _080F2FC8
_080F2FC8:
	.incbin "baserom.gba", 0x000F2FC8, 0x00000004

	.global _080F2FCC
_080F2FCC: .4byte _0807ADCC

	.global _080F2FD0
_080F2FD0:
	.incbin "baserom.gba", 0x000F2FD0, 0x00000004

	.global _080F2FD4
_080F2FD4: .4byte _0807AE18

	.global _080F2FD8
_080F2FD8:
	.incbin "baserom.gba", 0x000F2FD8, 0x0000000C

	.global _080F2FE4
_080F2FE4: .4byte _0807AE50

	.global _080F2FE8
_080F2FE8:
	.incbin "baserom.gba", 0x000F2FE8, 0x00000004

	.global _080F2FEC
_080F2FEC: .4byte _0807AEEC

	.global _080F2FF0
_080F2FF0:
	.incbin "baserom.gba", 0x000F2FF0, 0x00000004

	.global _080F2FF4
_080F2FF4: .4byte _0807AE58

	.global _080F2FF8
_080F2FF8:
	.incbin "baserom.gba", 0x000F2FF8, 0x00000004

	.global _080F2FFC
_080F2FFC: .4byte _0807AE60

	.global _080F3000
_080F3000:
	.incbin "baserom.gba", 0x000F3000, 0x00000004

	.global _080F3004
_080F3004: .4byte _0807AEA0

	.global _080F3008
_080F3008:
	.incbin "baserom.gba", 0x000F3008, 0x0000000C

	.global _080F3014
_080F3014: .4byte _0807AEF4

	.global _080F3018
_080F3018:
	.incbin "baserom.gba", 0x000F3018, 0x00000004

	.global _080F301C
_080F301C: .4byte _0807AEFC

	.global _080F3020
_080F3020:
	.incbin "baserom.gba", 0x000F3020, 0x00000004

	.global _080F3024
_080F3024: .4byte _0807AF04

	.global _080F3028
_080F3028:
	.incbin "baserom.gba", 0x000F3028, 0x0000000C

	.global _080F3034
_080F3034: .4byte _0807B0C0

	.global _080F3038
_080F3038:
	.incbin "baserom.gba", 0x000F3038, 0x0000000C

	.global _080F3044
_080F3044: .4byte _0807B53C

	.global _080F3048
_080F3048:
	.incbin "baserom.gba", 0x000F3048, 0x00000004

	.global _080F304C
_080F304C: .4byte _0807B564

	.global _080F3050
_080F3050:
	.incbin "baserom.gba", 0x000F3050, 0x00000004

	.global _080F3054
_080F3054: .4byte _0807B590

	.global _080F3058
_080F3058:
	.incbin "baserom.gba", 0x000F3058, 0x00000004

	.global _080F305C
_080F305C: .4byte _0807B5C4

	.global _080F3060
_080F3060:
	.incbin "baserom.gba", 0x000F3060, 0x00000004

	.global _080F3064
_080F3064: .4byte _0807B5EC

	.global _080F3068
_080F3068:
	.incbin "baserom.gba", 0x000F3068, 0x00000004

	.global _080F306C
_080F306C: .4byte _0807B53C

	.global _080F3070
_080F3070:
	.incbin "baserom.gba", 0x000F3070, 0x00000004

	.global _080F3074
_080F3074: .4byte _0807B614

	.global _080F3078
_080F3078:
	.incbin "baserom.gba", 0x000F3078, 0x00000004

	.global _080F307C
_080F307C: .4byte _0807B63C

	.global _080F3080
_080F3080:
	.incbin "baserom.gba", 0x000F3080, 0x00000004

	.global _080F3084
_080F3084: .4byte _0807B65C

	.global _080F3088
_080F3088:
	.incbin "baserom.gba", 0x000F3088, 0x00000004

	.global _080F308C
_080F308C: .4byte _0807B68C

	.global _080F3090
_080F3090:
	.incbin "baserom.gba", 0x000F3090, 0x00000004

	.global _080F3094
_080F3094: .4byte _0807B53C

	.global _080F3098
_080F3098:
	.incbin "baserom.gba", 0x000F3098, 0x00000004

	.global _080F309C
_080F309C: .4byte _0807B564

	.global _080F30A0
_080F30A0:
	.incbin "baserom.gba", 0x000F30A0, 0x00000004

	.global _080F30A4
_080F30A4: .4byte _0807B590

	.global _080F30A8
_080F30A8:
	.incbin "baserom.gba", 0x000F30A8, 0x0000000C

	.global _080F30B4
_080F30B4: .4byte _0807B6B0

	.global _080F30B8
_080F30B8:
	.incbin "baserom.gba", 0x000F30B8, 0x00000004

	.global _080F30BC
_080F30BC: .4byte _0807B6C4

	.global _080F30C0
_080F30C0:
	.incbin "baserom.gba", 0x000F30C0, 0x00000004

	.global _080F30C4
_080F30C4: .4byte _0807B6D8

	.global _080F30C8
_080F30C8:
	.incbin "baserom.gba", 0x000F30C8, 0x00000004

	.global _080F30CC
_080F30CC: .4byte _0807B6F8

	.global _080F30D0
_080F30D0:
	.incbin "baserom.gba", 0x000F30D0, 0x00000004

	.global _080F30D4
_080F30D4: .4byte _0807B730

	.global _080F30D8
_080F30D8:
	.incbin "baserom.gba", 0x000F30D8, 0x00000004

	.global _080F30DC
_080F30DC: .4byte _0807B788

	.global _080F30E0
_080F30E0:
	.incbin "baserom.gba", 0x000F30E0, 0x00000004

	.global _080F30E4
_080F30E4: .4byte _0807B7BC

	.global _080F30E8
_080F30E8:
	.incbin "baserom.gba", 0x000F30E8, 0x00000004

	.global _080F30EC
_080F30EC: .4byte _0807B7DC

	.global _080F30F0
_080F30F0:
	.incbin "baserom.gba", 0x000F30F0, 0x0000000C

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
_080F312C: .4byte _0807B7F0

	.global _080F3130
_080F3130:
	.incbin "baserom.gba", 0x000F3130, 0x00000004

	.global _080F3134
_080F3134: .4byte _0807B7F8

	.global _080F3138
_080F3138:
	.incbin "baserom.gba", 0x000F3138, 0x0000000C

	.global _080F3144
_080F3144: .4byte _0807B7F0

	.global _080F3148
_080F3148:
	.incbin "baserom.gba", 0x000F3148, 0x00000010

	.global _080F3158
_080F3158: .4byte _0807B800

	.global _080F315C
_080F315C:
	.incbin "baserom.gba", 0x000F315C, 0x00000004

	.global _080F3160
_080F3160: .4byte _0807B81C

	.global _080F3164
_080F3164:
	.incbin "baserom.gba", 0x000F3164, 0x00000004

	.global _080F3168
_080F3168: .4byte _0807B860

	.global _080F316C
_080F316C:
	.incbin "baserom.gba", 0x000F316C, 0x0000000C

	.global _080F3178
_080F3178:
	.incbin "baserom.gba", 0x000F3178, 0x00000008

	.global _080F3180
_080F3180: .4byte _080F3178

	.global _080F3184
_080F3184:
	.incbin "baserom.gba", 0x000F3184, 0x0000000C

	.global _080F3190
_080F3190: .4byte _080F3178

	.global _080F3194
_080F3194:
	.incbin "baserom.gba", 0x000F3194, 0x0000000C

	.global _080F31A0
_080F31A0:
	.incbin "baserom.gba", 0x000F31A0, 0x00000008

	.global _080F31A8
_080F31A8:
	.incbin "baserom.gba", 0x000F31A8, 0x00000008

	.global _080F31B0
_080F31B0: .4byte _080F31A8

	.global _080F31B4
_080F31B4:
	.incbin "baserom.gba", 0x000F31B4, 0x0000000C

	.global _080F31C0
_080F31C0:
	.incbin "baserom.gba", 0x000F31C0, 0x00000010