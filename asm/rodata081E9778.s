	.include "asm/macros.inc"

	.syntax unified
	.section .rodata

	.global _081E9778
_081E9778:
	.incbin "baserom.gba", 0x001E9778, 0x0000000C

	.global sFlashList
sFlashList: .4byte _081E9864

	.global _081E9788
_081E9788: .4byte _081E9960

	.global _081E978C
_081E978C: .4byte _081E98E8

	.global _081E9790
_081E9790: .4byte _081E9914

	.global _081E9794
_081E9794: .4byte DefaultFlash

	.global _081E9798
_081E9798: .4byte sFlashList

	.global _081E979C
_081E979C:
	.incbin "baserom.gba", 0x001E979C, 0x00000028

	.global _081E97C4
_081E97C4: .4byte FlashTimerIntr

	.global _081E97C8
_081E97C8:
	.incbin "baserom.gba", 0x001E97C8, 0x00000028

	.global _081E97F0
_081E97F0: .4byte ReadFlash1

	.global _081E97F4
_081E97F4: .4byte SetReadFlash1

	.global _081E97F8
_081E97F8:
	.incbin "baserom.gba", 0x001E97F8, 0x0000000C

	.global _081E9804
_081E9804: .4byte ReadFlash_Core

	.global _081E9808
_081E9808: .4byte ReadFlash

	.global _081E980C
_081E980C: .4byte DefaultFlash

	.global _081E9810
_081E9810: .4byte VerifyFlashSector_Core

	.global _081E9814
_081E9814: .4byte VerifyFlashSector

	.global _081E9818
_081E9818: .4byte DefaultFlash

	.global _081E981C
_081E981C:
	.incbin "baserom.gba", 0x001E981C, 0x00000004

	.global _081E9820
_081E9820:
	.incbin "baserom.gba", 0x001E9820, 0x00000018

	.global DefaultFlash
DefaultFlash: .4byte ProgramFlashSector_LE

	.global _081E983C
_081E983C: .4byte EraseFlashChip_LE

	.global _081E9840
_081E9840: .4byte EraseFlashSector_LE

	.global _081E9844
_081E9844: .4byte PollingSR_COMMON

	.global _081E9848
_081E9848: .4byte _081E9820

	.global _081E984C
_081E984C:
	.incbin "baserom.gba", 0x001E984C, 0x00000004

	.global _081E9850
_081E9850:
	.incbin "baserom.gba", 0x001E9850, 0x00000004

	.global _081E9854
_081E9854:
	.incbin "baserom.gba", 0x001E9854, 0x00000010

	.global _081E9864
_081E9864: .4byte ProgramFlashSector_LE

	.global _081E9868
_081E9868: .4byte EraseFlashChip_LE

	.global _081E986C
_081E986C: .4byte EraseFlashSector_LE

	.global _081E9870
_081E9870: .4byte PollingSR_COMMON

	.global _081E9874
_081E9874: .4byte _081E9820

	.global _081E9878
_081E9878:
	.incbin "baserom.gba", 0x001E9878, 0x00000014

	.global _081E988C
_081E988C:
	.incbin "baserom.gba", 0x001E988C, 0x0000001C

	.global _081E98A8
_081E98A8: .4byte VerifyFlashCoreFF

	.global _081E98AC
_081E98AC: .4byte VerifyFlashErase

	.global _081E98B0
_081E98B0:
	.incbin "baserom.gba", 0x001E98B0, 0x00000008

	.global _081E98B8
_081E98B8:
	.incbin "baserom.gba", 0x001E98B8, 0x00000018

	.global _081E98D0
_081E98D0:
	.incbin "baserom.gba", 0x001E98D0, 0x00000018

	.global _081E98E8
_081E98E8: .4byte ProgramFlashSector_MX

	.global _081E98EC
_081E98EC: .4byte EraseFlashChip_LE

	.global _081E98F0
_081E98F0: .4byte EraseFlashSector_LE

	.global _081E98F4
_081E98F4: .4byte PollingSR_COMMON

	.global _081E98F8
_081E98F8: .4byte _081E98B8

	.global _081E98FC
_081E98FC:
	.incbin "baserom.gba", 0x001E98FC, 0x00000018

	.global _081E9914
_081E9914: .4byte ProgramFlashSector_MX

	.global _081E9918
_081E9918: .4byte EraseFlashChip_LE

	.global _081E991C
_081E991C: .4byte EraseFlashSector_LE

	.global _081E9920
_081E9920: .4byte PollingSR_COMMON

	.global _081E9924
_081E9924: .4byte _081E98D0

	.global _081E9928
_081E9928:
	.incbin "baserom.gba", 0x001E9928, 0x00000020

	.global _081E9948
_081E9948:
	.incbin "baserom.gba", 0x001E9948, 0x00000018

	.global _081E9960
_081E9960: .4byte ProgramFlash4KB_AT

	.global _081E9964
_081E9964: .4byte EraseFlashChip_AT

	.global _081E9968
_081E9968: .4byte EraseFlash4KB_AT

	.global _081E996C
_081E996C: .4byte PollingSR_COMMON

	.global _081E9970
_081E9970: .4byte _081E9948

	.global _081E9974
_081E9974:
	.incbin "baserom.gba", 0x001E9974, 0x00000004

	.global _081E9978
_081E9978:
	.incbin "baserom.gba", 0x001E9978, 0x00000010

	.global _081E9988
_081E9988:
	.incbin "baserom.gba", 0x001E9988, 0x00000004

	.global _081E998C
_081E998C: .4byte ProgramFlashSector_AT

	.global _081E9990
_081E9990: .4byte EraseFlashChip_AT

	.global _081E9994
_081E9994: .4byte EraseFlashSector_AT

	.global _081E9998
_081E9998: .4byte PollingSR_COMMON

	.global _081E999C
_081E999C: .4byte _081E9948

	.global _081E99A0
_081E99A0:
	.incbin "baserom.gba", 0x001E99A0, 0x00000004

	.global _081E99A4
_081E99A4:
	.incbin "baserom.gba", 0x001E99A4, 0x00000004

	.global _081E99A8
_081E99A8:
	.incbin "baserom.gba", 0x001E99A8, 0x00000008

	.global _081E99B0
_081E99B0:
	.incbin "baserom.gba", 0x001E99B0, 0x00000008

	.global _081E99B8
_081E99B8: .4byte _081E998C

	.global _081E99BC
_081E99BC:
	.incbin "baserom.gba", 0x001E99BC, 0x00000004

	.global _081E99C0
_081E99C0: .4byte _081E998C

	.global _081E99C4
_081E99C4:
	.incbin "baserom.gba", 0x001E99C4, 0x00000004

	.global _081E99C8
_081E99C8: .4byte _081E998C

	.global _081E99CC
_081E99CC: .4byte _081E998C

	.global _081E99D0
_081E99D0:
	.incbin "baserom.gba", 0x001E99D0, 0x00000004

	.global _081E99D4
_081E99D4: .4byte _081E998C

	.global _081E99D8
_081E99D8:
	.incbin "baserom.gba", 0x001E99D8, 0x00000004

	.global _081E99DC
_081E99DC: .4byte _081E9960