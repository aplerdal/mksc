	.align
	.arm
rom_header:
	b start_vector

    // nintendo logo data
	.incbin "baserom.gba", 0x00000004, 0x0000009C

    // title
	.global _080000A0
_080000A0:
	.ascii "MARIO KART\0\0"

    // game code
	.global _080000AC
_080000AC:
	.ascii "AMKE"

    // maker code
	.ascii "01"

    // fixed value
	.global _080000B2
_080000B2:
	.byte 0x96

    // main unit code
	.byte 0

    // device type
	.byte 0

    // reserved
	.byte 0, 0, 0, 0, 0, 0, 0

    // software version
	.byte 0

    // crc
	.byte 8

    // reserved
	.byte 0, 0
