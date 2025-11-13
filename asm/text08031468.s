	.include "asm/macros.inc"

	.syntax unified
	.text

	thumb_func_start loadtrack_loadTileset
loadtrack_loadTileset: @ 0x08031468
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r2, #0
	adds r0, r5, #0
	adds r0, #0x30
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08031500
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _080314E0
	ldrb r1, [r5, #3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080314CC
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, [r0]
	mov r8, r0
	ldr r7, _080314C8 @ =0x06008000
	adds r4, r5, r1
	movs r6, #3
_0803149E:
	ldrh r1, [r4]
	cmp r1, #0
	beq _080314B6
	mov r2, r8
	ldr r0, [r2]
	adds r0, r5, r0
	adds r0, r0, r1
	adds r1, r7, #0
	bl LZ77UnCompVram
	bl main_frameProc
_080314B6:
	movs r0, #0x80
	lsls r0, r0, #5
	adds r7, r7, r0
	adds r4, #2
	subs r6, #1
	cmp r6, #0
	bge _0803149E
	b _08031576
	.align 2, 0
_080314C8: .4byte 0x06008000
_080314CC:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r0, [r0]
	adds r0, r5, r0
	ldr r1, _080314DC @ =0x06008000
	bl LZ77UnCompVram
	b _08031576
	.align 2, 0
_080314DC: .4byte 0x06008000
_080314E0:
	bl dmaq_getVBlankDmaQueue
	adds r1, r5, #0
	adds r1, #0x80
	ldr r1, [r1]
	adds r1, r5, r1
	ldr r2, _080314F8 @ =0x06008000
	ldr r3, _080314FC @ =0x84001000
	bl dmaq_enqueue
	b _08031576
	.align 2, 0
_080314F8: .4byte 0x06008000
_080314FC: .4byte 0x84001000
_08031500:
	adds r0, r2, r1
	lsls r0, r0, #0x18
	ldr r1, _08031558 @ =gTrackDefTable
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0]
	lsls r0, r0, #2
	ldr r1, _0803155C @ =courseData_bin
	adds r0, r0, r1
	ldr r2, [r0]
	adds r4, r2, r1
	ldrb r1, [r4, #3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08031568
	ldr r1, _08031560 @ =courseData_bin+0x80
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r7, _08031564 @ =0x06008000
	adds r5, r4, r0
	movs r6, #3
_0803152E:
	ldrh r1, [r5]
	cmp r1, #0
	beq _08031548
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	adds r0, r4, r0
	adds r0, r0, r1
	adds r1, r7, #0
	bl LZ77UnCompVram
	bl main_frameProc
_08031548:
	movs r2, #0x80
	lsls r2, r2, #5
	adds r7, r7, r2
	adds r5, #2
	subs r6, #1
	cmp r6, #0
	bge _0803152E
	b _08031576
	.align 2, 0
_08031558: .4byte gTrackDefTable
_0803155C: .4byte courseData_bin
_08031560: .4byte courseData_bin+0x80
_08031564: .4byte 0x06008000
_08031568:
	ldr r1, _0803158C @ =courseData_bin+0x80
	adds r0, r2, r1
	ldr r0, [r0]
	adds r0, r4, r0
	ldr r1, _08031590 @ =0x06008000
	bl LZ77UnCompVram
_08031576:
	bl main_frameProc
	ldr r0, _08031594 @ =_08076C1C
	ldr r1, _08031598 @ =0x0600B800
	bl LZ77UnCompVram
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803158C: .4byte courseData_bin+0x80
_08031590: .4byte 0x06008000
_08031594: .4byte _08076C1C
_08031598: .4byte 0x0600B800

	thumb_func_start sub_803159C
sub_803159C: @ 0x0803159C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r2, #0
	adds r0, r7, #0
	adds r0, #0xec
	ldrb r2, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08031614
	adds r0, r7, #0
	adds r0, #0xe4
	ldr r2, [r0]
	mov r8, r0
	movs r0, #0xe8
	adds r0, r0, r7
	mov sb, r0
	cmp r2, #0
	beq _08031698
	ldrb r1, [r7, #3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08031604
	ldr r6, _08031600 @ =0x06010000
	adds r4, r7, r2
	movs r5, #1
_080315D8:
	ldrh r1, [r4]
	cmp r1, #0
	beq _080315F0
	mov r2, r8
	ldr r0, [r2]
	adds r0, r7, r0
	adds r0, r0, r1
	adds r1, r6, #0
	bl LZ77UnCompVram
	bl main_frameProc
_080315F0:
	movs r0, #0x80
	lsls r0, r0, #5
	adds r6, r6, r0
	adds r4, #2
	subs r5, #1
	cmp r5, #0
	bge _080315D8
	b _08031698
	.align 2, 0
_08031600: .4byte 0x06010000
_08031604:
	adds r0, r7, r2
	ldr r1, _08031610 @ =0x06010000
	bl LZ77UnCompVram
	b _08031698
	.align 2, 0
_08031610: .4byte 0x06010000
_08031614:
	adds r0, r2, r1
	lsls r0, r0, #0x18
	ldr r1, _08031674 @ =gTrackDefTable
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0]
	lsls r0, r0, #2
	ldr r1, _08031678 @ =courseData_bin
	adds r0, r0, r1
	ldr r2, [r0]
	adds r5, r2, r1
	ldrb r1, [r5, #3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08031684
	ldr r1, _0803167C @ =courseData_bin+0xE4
	adds r0, r2, r1
	ldr r0, [r0]
	movs r2, #0xe8
	adds r2, r2, r7
	mov sb, r2
	ldr r1, _08031680 @ =0x06010000
	mov r8, r1
	adds r4, r5, r0
	movs r6, #1
_0803164A:
	ldrh r1, [r4]
	cmp r1, #0
	beq _08031664
	adds r0, r5, #0
	adds r0, #0xe4
	ldr r0, [r0]
	adds r0, r5, r0
	adds r0, r0, r1
	mov r1, r8
	bl LZ77UnCompVram
	bl main_frameProc
_08031664:
	movs r2, #0x80
	lsls r2, r2, #5
	add r8, r2
	adds r4, #2
	subs r6, #1
	cmp r6, #0
	bge _0803164A
	b _08031698
	.align 2, 0
_08031674: .4byte gTrackDefTable
_08031678: .4byte courseData_bin
_0803167C: .4byte courseData_bin+0xE4
_08031680: .4byte 0x06010000
_08031684:
	ldr r1, _080316C0 @ =courseData_bin+0xE4
	adds r0, r2, r1
	ldr r0, [r0]
	adds r0, r5, r0
	ldr r1, _080316C4 @ =0x06010000
	bl LZ77UnCompVram
	movs r2, #0xe8
	adds r2, r2, r7
	mov sb, r2
_08031698:
	mov r1, sb
	ldr r0, [r1]
	cmp r0, #0
	beq _080316B2
	adds r4, r7, r0
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0x18
	bl CpuFastSet
_080316B2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080316C0: .4byte courseData_bin+0xE4
_080316C4: .4byte 0x06010000

	thumb_func_start sub_80316C8
sub_80316C8: @ 0x080316C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080316E8 @ =gTrackDefTable
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r0, [r0, #8]
	subs r0, #1
	cmp r0, #0x32
	bls _080316DE
	b _08031980
_080316DE:
	lsls r0, r0, #2
	ldr r1, _080316EC @ =_080316F0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080316E8: .4byte gTrackDefTable
_080316EC: .4byte _080316F0
_080316F0: @ jump table
	.4byte _08031974 @ case 0
	.4byte _080317D0 @ case 1
	.4byte _080317BC @ case 2
	.4byte _080317F8 @ case 3
	.4byte _08031980 @ case 4
	.4byte _080318AC @ case 5
	.4byte _080317E4 @ case 6
	.4byte _0803180C @ case 7
	.4byte _08031980 @ case 8
	.4byte _0803185C @ case 9
	.4byte _08031820 @ case 10
	.4byte _08031980 @ case 11
	.4byte _08031834 @ case 12
	.4byte _080318FC @ case 13
	.4byte _08031848 @ case 14
	.4byte _080318C0 @ case 15
	.4byte _08031884 @ case 16
	.4byte _08031898 @ case 17
	.4byte _08031870 @ case 18
	.4byte _080318D4 @ case 19
	.4byte _080318E8 @ case 20
	.4byte _08031910 @ case 21
	.4byte _08031960 @ case 22
	.4byte _08031980 @ case 23
	.4byte _08031980 @ case 24
	.4byte _08031980 @ case 25
	.4byte _08031980 @ case 26
	.4byte _08031924 @ case 27
	.4byte _08031974 @ case 28
	.4byte _08031980 @ case 29
	.4byte _08031980 @ case 30
	.4byte _08031980 @ case 31
	.4byte _08031980 @ case 32
	.4byte _08031980 @ case 33
	.4byte _08031980 @ case 34
	.4byte _08031980 @ case 35
	.4byte _08031938 @ case 36
	.4byte _08031980 @ case 37
	.4byte _08031980 @ case 38
	.4byte _08031980 @ case 39
	.4byte _08031980 @ case 40
	.4byte _08031980 @ case 41
	.4byte _08031938 @ case 42
	.4byte _08031980 @ case 43
	.4byte _08031980 @ case 44
	.4byte _08031980 @ case 45
	.4byte _08031980 @ case 46
	.4byte _08031980 @ case 47
	.4byte _08031980 @ case 48
	.4byte _08031980 @ case 49
	.4byte _0803194C @ case 50
_080317BC:
	bl sub_803478C
	ldr r0, _080317C8 @ =0x00000514
	adds r1, r4, r0
	ldr r0, _080317CC @ =sub_80345E0
	b _0803197E
	.align 2, 0
_080317C8: .4byte 0x00000514
_080317CC: .4byte sub_80345E0
_080317D0:
	bl nullsub_5
	ldr r0, _080317DC @ =0x00000514
	adds r1, r4, r0
	ldr r0, _080317E0 @ =sub_8034E20
	b _0803197E
	.align 2, 0
_080317DC: .4byte 0x00000514
_080317E0: .4byte sub_8034E20
_080317E4:
	bl sub_803478C
	ldr r0, _080317F0 @ =0x00000514
	adds r1, r4, r0
	ldr r0, _080317F4 @ =sub_80345E0
	b _0803197E
	.align 2, 0
_080317F0: .4byte 0x00000514
_080317F4: .4byte sub_80345E0
_080317F8:
	bl nullsub_4
	ldr r0, _08031804 @ =0x00000514
	adds r1, r4, r0
	ldr r0, _08031808 @ =sub_803414C
	b _0803197E
	.align 2, 0
_08031804: .4byte 0x00000514
_08031808: .4byte sub_803414C
_0803180C:
	bl sub_803456C
	ldr r0, _08031818 @ =0x00000514
	adds r1, r4, r0
	ldr r0, _0803181C @ =sub_8034224
	b _0803197E
	.align 2, 0
_08031818: .4byte 0x00000514
_0803181C: .4byte sub_8034224
_08031820:
	bl sub_8034984
	ldr r0, _0803182C @ =0x00000514
	adds r1, r4, r0
	ldr r0, _08031830 @ =sub_80347B8
	b _0803197E
	.align 2, 0
_0803182C: .4byte 0x00000514
_08031830: .4byte sub_80347B8
_08031834:
	bl sub_8035618
	ldr r0, _08031840 @ =0x00000514
	adds r1, r4, r0
	ldr r0, _08031844 @ =sub_8034FA8
	b _0803197E
	.align 2, 0
_08031840: .4byte 0x00000514
_08031844: .4byte sub_8034FA8
_08031848:
	bl sub_8034CDC
	ldr r0, _08031854 @ =0x00000514
	adds r1, r4, r0
	ldr r0, _08031858 @ =sub_80349B0
	b _0803197E
	.align 2, 0
_08031854: .4byte 0x00000514
_08031858: .4byte sub_80349B0
_0803185C:
	bl sub_8035658
	ldr r0, _08031868 @ =0x00000514
	adds r1, r4, r0
	ldr r0, _0803186C @ =sub_80356D0
	b _0803197E
	.align 2, 0
_08031868: .4byte 0x00000514
_0803186C: .4byte sub_80356D0
_08031870:
	bl sub_8035CF4
	ldr r0, _0803187C @ =0x00000514
	adds r1, r4, r0
	ldr r0, _08031880 @ =sub_8035B48
	b _0803197E
	.align 2, 0
_0803187C: .4byte 0x00000514
_08031880: .4byte sub_8035B48
_08031884:
	bl sub_803603C
	ldr r0, _08031890 @ =0x00000514
	adds r1, r4, r0
	ldr r0, _08031894 @ =sub_8035D40
	b _0803197E
	.align 2, 0
_08031890: .4byte 0x00000514
_08031894: .4byte sub_8035D40
_08031898:
	bl nullsub_7
	ldr r0, _080318A4 @ =0x00000514
	adds r1, r4, r0
	ldr r0, _080318A8 @ =sub_8036F9C
	b _0803197E
	.align 2, 0
_080318A4: .4byte 0x00000514
_080318A8: .4byte sub_8036F9C
_080318AC:
	bl sub_8036520
	ldr r0, _080318B8 @ =0x00000514
	adds r1, r4, r0
	ldr r0, _080318BC @ =SunsetWilds_HandlePalettes_803616C
	b _0803197E
	.align 2, 0
_080318B8: .4byte 0x00000514
_080318BC: .4byte SunsetWilds_HandlePalettes_803616C
_080318C0:
	bl sub_8036D1C
	ldr r0, _080318CC @ =0x00000514
	adds r1, r4, r0
	ldr r0, _080318D0 @ =sub_8036608
	b _0803197E
	.align 2, 0
_080318CC: .4byte 0x00000514
_080318D0: .4byte sub_8036608
_080318D4:
	bl sub_8036EA4
	ldr r0, _080318E0 @ =0x00000514
	adds r1, r4, r0
	ldr r0, _080318E4 @ =sub_8036D60
	b _0803197E
	.align 2, 0
_080318E0: .4byte 0x00000514
_080318E4: .4byte sub_8036D60
_080318E8:
	bl sub_803615C
	ldr r0, _080318F4 @ =0x00000514
	adds r1, r4, r0
	ldr r0, _080318F8 @ =sub_803608C
	b _0803197E
	.align 2, 0
_080318F4: .4byte 0x00000514
_080318F8: .4byte sub_803608C
_080318FC:
	bl nullsub_6
	ldr r0, _08031908 @ =0x00000514
	adds r1, r4, r0
	ldr r0, _0803190C @ =sub_8036EC4
	b _0803197E
	.align 2, 0
_08031908: .4byte 0x00000514
_0803190C: .4byte sub_8036EC4
_08031910:
	bl sub_8034E0C
	ldr r0, _0803191C @ =0x00000514
	adds r1, r4, r0
	ldr r0, _08031920 @ =sub_8034D08
	b _0803197E
	.align 2, 0
_0803191C: .4byte 0x00000514
_08031920: .4byte sub_8034D08
_08031924:
	bl sub_8037168
	ldr r0, _08031930 @ =0x00000514
	adds r1, r4, r0
	ldr r0, _08031934 @ =sub_8037068
	b _0803197E
	.align 2, 0
_08031930: .4byte 0x00000514
_08031934: .4byte sub_8037068
_08031938:
	bl nullsub_8
	ldr r0, _08031944 @ =0x00000514
	adds r1, r4, r0
	ldr r0, _08031948 @ =sub_803770C
	b _0803197E
	.align 2, 0
_08031944: .4byte 0x00000514
_08031948: .4byte sub_803770C
_0803194C:
	bl sub_80378EC
	ldr r0, _08031958 @ =0x00000514
	adds r1, r4, r0
	ldr r0, _0803195C @ =sub_80377E4
	b _0803197E
	.align 2, 0
_08031958: .4byte 0x00000514
_0803195C: .4byte sub_80377E4
_08031960:
	bl sub_80376BC
	ldr r0, _0803196C @ =0x00000514
	adds r1, r4, r0
	ldr r0, _08031970 @ =sub_803719C
	b _0803197E
	.align 2, 0
_0803196C: .4byte 0x00000514
_08031970: .4byte sub_803719C
_08031974:
	bl nullsub_3
	ldr r0, _08031988 @ =0x00000514
	adds r1, r4, r0
	ldr r0, _0803198C @ =sub_8034044
_0803197E:
	str r0, [r1]
_08031980:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08031988: .4byte 0x00000514
_0803198C: .4byte sub_8034044

	thumb_func_start loadtrack_8031990
loadtrack_8031990: @ 0x08031990
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, _08031AB0 @ =gTrackDefTable
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov r8, r0
	ldr r0, [r0]
	lsls r0, r0, #2
	ldr r1, _08031AB4 @ =courseData_bin
	adds r0, r0, r1
	ldr r0, [r0]
	adds r6, r0, r1
	movs r0, #0
	str r0, [r5]
	movs r2, #0
	movs r1, #0xf
	ldr r3, _08031AB8 @ =0x00000554
	adds r0, r5, r3
_080319BC:
	str r2, [r0]
	subs r0, #4
	subs r1, #1
	cmp r1, #0
	bge _080319BC
	movs r1, #0xaf
	lsls r1, r1, #3
	adds r0, r5, r1
	mov r3, r8
	str r3, [r0]
	subs r1, #4
	adds r0, r5, r1
	str r6, [r0]
	ldr r2, _08031ABC @ =0x0400000C
	ldr r3, _08031AC0 @ =0x00003889
	adds r1, r3, #0
	movs r0, #0xc0
	lsls r0, r0, #8
	orrs r0, r1
	strh r0, [r2]
	bl main_frameProc
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl loadtrack_loadTileset
	adds r0, r6, #0
	adds r0, #0x84
	ldr r4, [r0]
	adds r4, r6, r4
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0x18
	bl CpuFastSet
	ldr r4, _08031AC4 @ =_08076DE8
	movs r0, #0
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0x60
	adds r0, r4, #0
	movs r2, #8
	bl CpuFastSet
	bl main_frameProc
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_803159C
	adds r0, r5, #0
	bl sub_80329BC
	bl main_frameProc
	adds r0, r5, #0
	adds r0, #0xa4
	adds r1, r6, #0
	bl sub_8032E8C
	bl main_frameProc
	adds r0, r6, #0
	adds r0, #0xf0
	ldr r0, [r0]
	cmp r0, #0
	bne _08031A54
	adds r0, r5, #0
	bl sub_8032428
_08031A54:
	bl main_frameProc
	adds r0, r6, #0
	adds r0, #0xca
	ldrb r0, [r0]
	cmp r0, #0
	bne _08031A6E
	adds r0, r5, #0
	bl sub_8032D9C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r5, #0x20]
_08031A6E:
	adds r0, r5, #0
	bl loadtrack_8031F9C
	adds r0, r6, #0
	adds r0, #0xc0
	ldrh r0, [r0]
	str r0, [r5, #4]
	bl main_frameProc
	mov r0, r8
	bl track_loadSky
	bl main_frameProc
	adds r0, r5, #0
	adds r1, r7, #0
	bl sub_80316C8
	ldr r0, _08031AB0 @ =gTrackDefTable
	lsls r1, r7, #2
	adds r0, r1, r0
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	subs r0, #2
	adds r5, r1, #0
	cmp r0, #0x21
	bls _08031AA6
	b _08031BA4
_08031AA6:
	lsls r0, r0, #2
	ldr r1, _08031AC8 @ =_08031ACC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08031AB0: .4byte gTrackDefTable
_08031AB4: .4byte courseData_bin
_08031AB8: .4byte 0x00000554
_08031ABC: .4byte 0x0400000C
_08031AC0: .4byte 0x00003889
_08031AC4: .4byte _08076DE8
_08031AC8: .4byte _08031ACC
_08031ACC: @ jump table
	.4byte _08031B5C @ case 0
	.4byte _08031B54 @ case 1
	.4byte _08031BA4 @ case 2
	.4byte _08031BA4 @ case 3
	.4byte _08031B6C @ case 4
	.4byte _08031BA4 @ case 5
	.4byte _08031BA4 @ case 6
	.4byte _08031BA4 @ case 7
	.4byte _08031BA4 @ case 8
	.4byte _08031B54 @ case 9
	.4byte _08031BA4 @ case 10
	.4byte _08031B64 @ case 11
	.4byte _08031B88 @ case 12
	.4byte _08031BA4 @ case 13
	.4byte _08031BA4 @ case 14
	.4byte _08031BA4 @ case 15
	.4byte _08031BA4 @ case 16
	.4byte _08031BA4 @ case 17
	.4byte _08031BA4 @ case 18
	.4byte _08031BA4 @ case 19
	.4byte _08031BA4 @ case 20
	.4byte _08031BA4 @ case 21
	.4byte _08031BA4 @ case 22
	.4byte _08031BA4 @ case 23
	.4byte _08031BA4 @ case 24
	.4byte _08031BA4 @ case 25
	.4byte _08031BA4 @ case 26
	.4byte _08031BA4 @ case 27
	.4byte _08031BA4 @ case 28
	.4byte _08031BA4 @ case 29
	.4byte _08031BA4 @ case 30
	.4byte _08031BA4 @ case 31
	.4byte _08031BA4 @ case 32
	.4byte _08031B54 @ case 33
_08031B54:
	ldr r4, _08031B58 @ =_08066EF4
	b _08031B6E
	.align 2, 0
_08031B58: .4byte _08066EF4
_08031B5C:
	ldr r4, _08031B60 @ =_08066EEC
	b _08031B6E
	.align 2, 0
_08031B60: .4byte _08066EEC
_08031B64:
	ldr r4, _08031B68 @ =_08066F04
	b _08031B6E
	.align 2, 0
_08031B68: .4byte _08066F04
_08031B6C:
	ldr r4, _08031B84 @ =_08066EFC
_08031B6E:
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xce
	adds r0, r4, #0
	movs r2, #4
	bl CpuSet
	b _08031BA4
	.align 2, 0
_08031B84: .4byte _08066EFC
_08031B88:
	movs r0, #1
	bl pltt_getBuffer
	adds r4, r0, #0
	adds r4, #0xf6
	movs r0, #1
	bl pltt_getBuffer
	adds r1, r0, #0
	adds r1, #0xb6
	adds r0, r4, #0
	movs r2, #3
	bl CpuSet
_08031BA4:
	ldr r0, _08031BD4 @ =gTrackDefTable
	adds r4, r5, r0
	ldr r0, [r4]
	ldr r0, [r0, #0x10]
	cmp r0, #8
	bne _08031BBE
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08031BD8 @ =_08068F0C
	ldr r2, _08031BDC @ =0x06013F60
	ldr r3, _08031BE0 @ =0x80000040
	bl dmaq_enqueue
_08031BBE:
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	subs r0, #2
	cmp r0, #0x31
	bls _08031BCA
	b _08031DF6
_08031BCA:
	lsls r0, r0, #2
	ldr r1, _08031BE4 @ =_08031BE8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08031BD4: .4byte gTrackDefTable
_08031BD8: .4byte _08068F0C
_08031BDC: .4byte 0x06013F60
_08031BE0: .4byte 0x80000040
_08031BE4: .4byte _08031BE8
_08031BE8: @ jump table
	.4byte _08031CB0 @ case 0
	.4byte _08031D34 @ case 1
	.4byte _08031DF6 @ case 2
	.4byte _08031CB0 @ case 3
	.4byte _08031DF6 @ case 4
	.4byte _08031DF6 @ case 5
	.4byte _08031DF6 @ case 6
	.4byte _08031CE8 @ case 7
	.4byte _08031CE0 @ case 8
	.4byte _08031DF6 @ case 9
	.4byte _08031DF6 @ case 10
	.4byte _08031CC8 @ case 11
	.4byte _08031DF6 @ case 12
	.4byte _08031DF6 @ case 13
	.4byte _08031D00 @ case 14
	.4byte _08031D60 @ case 15
	.4byte _08031DF6 @ case 16
	.4byte _08031D8C @ case 17
	.4byte _08031DF6 @ case 18
	.4byte _08031D68 @ case 19
	.4byte _08031DF6 @ case 20
	.4byte _08031D3C @ case 21
	.4byte _08031DF6 @ case 22
	.4byte _08031DF6 @ case 23
	.4byte _08031DF6 @ case 24
	.4byte _08031DF6 @ case 25
	.4byte _08031DF6 @ case 26
	.4byte _08031DF6 @ case 27
	.4byte _08031DF6 @ case 28
	.4byte _08031DF6 @ case 29
	.4byte _08031DF6 @ case 30
	.4byte _08031DC4 @ case 31
	.4byte _08031DF6 @ case 32
	.4byte _08031D34 @ case 33
	.4byte _08031DF6 @ case 34
	.4byte _08031DF6 @ case 35
	.4byte _08031DF6 @ case 36
	.4byte _08031DF6 @ case 37
	.4byte _08031DF6 @ case 38
	.4byte _08031DF6 @ case 39
	.4byte _08031DCC @ case 40
	.4byte _08031DF6 @ case 41
	.4byte _08031DEC @ case 42
	.4byte _08031DF6 @ case 43
	.4byte _08031DF6 @ case 44
	.4byte _08031DF6 @ case 45
	.4byte _08031DF6 @ case 46
	.4byte _08031DAC @ case 47
	.4byte _08031DF6 @ case 48
	.4byte _08031DA4 @ case 49
_08031CB0:
	ldr r1, _08031CC0 @ =_080F128C
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	ldr r1, _08031CC4 @ =_080F136C
	b _08031DD8
	.align 2, 0
_08031CC0: .4byte _080F128C
_08031CC4: .4byte _080F136C
_08031CC8:
	ldr r1, _08031CD8 @ =_080F144C
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	ldr r1, _08031CDC @ =_080F152C
	b _08031DD8
	.align 2, 0
_08031CD8: .4byte _080F144C
_08031CDC: .4byte _080F152C
_08031CE0:
	ldr r1, _08031CE4 @ =_080F160C
	b _08031DD8
	.align 2, 0
_08031CE4: .4byte _080F160C
_08031CE8:
	ldr r1, _08031CF8 @ =_080F171C
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	ldr r1, _08031CFC @ =_080F176C
	b _08031DD8
	.align 2, 0
_08031CF8: .4byte _080F171C
_08031CFC: .4byte _080F176C
_08031D00:
	ldr r1, _08031D24 @ =_080F17D4
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	ldr r1, _08031D28 @ =_080F188C
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	ldr r1, _08031D2C @ =_080F1984
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	ldr r1, _08031D30 @ =_080F1A34
	b _08031DD8
	.align 2, 0
_08031D24: .4byte _080F17D4
_08031D28: .4byte _080F188C
_08031D2C: .4byte _080F1984
_08031D30: .4byte _080F1A34
_08031D34:
	ldr r1, _08031D38 @ =_080F212C
	b _08031DD8
	.align 2, 0
_08031D38: .4byte _080F212C
_08031D3C:
	ldr r1, _08031D54 @ =_080F21D0
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	ldr r1, _08031D58 @ =_080F2230
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	ldr r1, _08031D5C @ =_080F2298
	b _08031DD8
	.align 2, 0
_08031D54: .4byte _080F21D0
_08031D58: .4byte _080F2230
_08031D5C: .4byte _080F2298
_08031D60:
	ldr r1, _08031D64 @ =_080F256C
	b _08031DD8
	.align 2, 0
_08031D64: .4byte _080F256C
_08031D68:
	ldr r1, _08031D80 @ =_080F256C
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	ldr r1, _08031D84 @ =_080F2664
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	ldr r1, _08031D88 @ =_080F26FC
	b _08031DD8
	.align 2, 0
_08031D80: .4byte _080F256C
_08031D84: .4byte _080F2664
_08031D88: .4byte _080F26FC
_08031D8C:
	ldr r1, _08031D9C @ =_080F27B4
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	ldr r1, _08031DA0 @ =_080F28A0
	b _08031DD8
	.align 2, 0
_08031D9C: .4byte _080F27B4
_08031DA0: .4byte _080F28A0
_08031DA4:
	ldr r1, _08031DA8 @ =_080F27B4
	b _08031DD8
	.align 2, 0
_08031DA8: .4byte _080F27B4
_08031DAC:
	ldr r1, _08031DBC @ =_080F2664
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	ldr r1, _08031DC0 @ =_080F26FC
	b _08031DD8
	.align 2, 0
_08031DBC: .4byte _080F2664
_08031DC0: .4byte _080F26FC
_08031DC4:
	ldr r1, _08031DC8 @ =_080F20B4
	b _08031DD8
	.align 2, 0
_08031DC8: .4byte _080F20B4
_08031DCC:
	ldr r1, _08031DE4 @ =_080F2308
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	ldr r1, _08031DE8 @ =_080F23E8
_08031DD8:
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	b _08031DF6
	.align 2, 0
_08031DE4: .4byte _080F2308
_08031DE8: .4byte _080F23E8
_08031DEC:
	ldr r1, _08031E0C @ =_080F24EC
	movs r0, #0
	movs r2, #0
	bl sub_8030224
_08031DF6:
	ldr r1, _08031E10 @ =_080F1B38
	movs r0, #0
	movs r2, #0
	bl sub_8030224
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031E0C: .4byte _080F24EC
_08031E10: .4byte _080F1B38

	thumb_func_start sub_8031E14
sub_8031E14: @ 0x08031E14
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r2, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _08031EB8 @ =0x03002E20
	movs r1, #0xff
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08031E4A
	ldr r1, _08031EBC @ =0x00000514
	adds r0, r3, r1
	ldr r2, [r0]
	cmp r2, #0
	beq _08031E4A
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldr r1, _08031EC0 @ =0x030021B0
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bl _call_via_r2
_08031E4A:
	ldr r2, _08031EB8 @ =0x03002E20
	ldr r0, _08031EC4 @ =0x0000057C
	adds r2, r2, r0
	movs r3, #0x80
	lsls r3, r3, #0x13
	ldrh r1, [r3]
	ldr r0, _08031EC8 @ =0x00007040
	ands r0, r1
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _08031ECC @ =0x04000050
	ldr r0, [r2, #4]
	str r0, [r1]
	subs r1, #0x46
	ldrh r0, [r2, #8]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r2, #0xa]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r2, #0xc]
	strh r0, [r1]
	adds r1, #6
	ldrh r0, [r2, #0xe]
	strh r0, [r1]
	adds r3, #0x16
	ldr r4, _08031EC0 @ =0x030021B0
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldrh r0, [r2, #0x10]
	subs r0, r0, r1
	strh r0, [r3]
	ldr r1, _08031ED0 @ =0x04000018
	ldrh r0, [r2, #0x12]
	strh r0, [r1]
	adds r3, #4
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldrh r0, [r2, #0x14]
	subs r0, r0, r1
	strh r0, [r3]
	ldr r1, _08031ED4 @ =0x0400001C
	ldrh r0, [r2, #0x16]
	strh r0, [r1]
	adds r3, #4
	movs r1, #0
	ldrsb r1, [r4, r1]
	ldrh r0, [r2, #0x18]
	subs r0, r0, r1
	strh r0, [r3]
	strb r5, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08031EB8: .4byte 0x03002E20
_08031EBC: .4byte 0x00000514
_08031EC0: .4byte 0x030021B0
_08031EC4: .4byte 0x0000057C
_08031EC8: .4byte 0x00007040
_08031ECC: .4byte 0x04000050
_08031ED0: .4byte 0x04000018
_08031ED4: .4byte 0x0400001C

	thumb_func_start sub_8031ED8
sub_8031ED8: @ 0x08031ED8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r1, _08031F10 @ =0x00000574
	adds r0, r6, r1
	ldr r7, [r0]
	adds r0, r7, #0
	adds r0, #0x98
	ldr r0, [r0]
	movs r4, #0
	cmp r0, #0
	beq _08031EF4
	adds r4, r7, r0
_08031EF4:
	cmp r4, #0
	beq _08031F90
	ldrb r0, [r4]
	cmp r0, #0
	beq _08031F90
	ldr r3, _08031F14 @ =0x03003621
	mov r8, r3
_08031F02:
	adds r0, #0x7f
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _08031F18
	adds r4, #4
	b _08031F8A
	.align 2, 0
_08031F10: .4byte 0x00000574
_08031F14: .4byte 0x03003621
_08031F18:
	adds r4, #1
	mov r1, r8
	ldrb r0, [r1]
	bl sub_8032BC8
	cmp r0, #0
	beq _08031F34
	lsls r2, r5, #4
	adds r1, r6, #0
	adds r1, #0x24
	adds r1, r1, r2
	ldrb r0, [r4]
	lsls r0, r0, #0x13
	b _08031F46
_08031F34:
	lsls r2, r5, #4
	adds r1, r6, #0
	adds r1, #0x24
	adds r1, r1, r2
	ldrb r0, [r4]
	lsls r0, r0, #0x13
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r0, r0, r3
_08031F46:
	str r0, [r1]
	adds r4, #1
	adds r1, r6, #0
	adds r1, #0x28
	adds r1, r1, r2
	ldrb r0, [r4]
	lsls r0, r0, #0x13
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r0, r0, r3
	str r0, [r1]
	adds r4, #1
	adds r0, r7, #0
	adds r0, #0xca
	ldrb r1, [r0]
	cmp r1, #0
	beq _08031F80
	adds r1, r6, #0
	adds r1, #0x2c
	adds r1, r1, r2
	ldr r2, _08031F7C @ =_080E745C
	lsls r0, r5, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	str r0, [r1]
	b _08031F88
	.align 2, 0
_08031F7C: .4byte _080E745C
_08031F80:
	adds r0, r6, #0
	adds r0, #0x2c
	adds r0, r0, r2
	str r1, [r0]
_08031F88:
	adds r4, #1
_08031F8A:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08031F02
_08031F90:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start loadtrack_8031F9C
loadtrack_8031F9C: @ 0x08031F9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r7, r0, #0
	ldr r0, _08031FD4 @ =0x03002E20
	adds r3, r0, #0
	adds r3, #0x24
	ldr r1, _08031FD8 @ =0x000007FE
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _08031FF6
	cmp r1, r0
	bgt _08031FDC
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _08031FEE
	b _0803220A
	.align 2, 0
_08031FD4: .4byte 0x03002E20
_08031FD8: .4byte 0x000007FE
_08031FDC:
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	beq _0803207A
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	beq _08031FEE
	b _0803220A
_08031FEE:
	adds r0, r7, #0
	bl sub_8031ED8
	b _0803220A
_08031FF6:
	mov r2, sp
	ldr r3, _08032014 @ =0x00000574
	adds r0, r7, r3
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x98
	ldr r0, [r0]
	movs r1, #0
	cmp r0, #0
	beq _0803200C
	adds r1, r3, r0
_0803200C:
	cmp r1, #0
	beq _08032060
	b _0803205A
	.align 2, 0
_08032014: .4byte 0x00000574
_08032018:
	cmp r0, #0x89
	bne _08032038
	adds r1, #1
	ldrb r0, [r1]
	lsls r0, r0, #0x13
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r0, r0, r3
	str r0, [r2]
	adds r1, #1
	ldrb r0, [r1]
	lsls r0, r0, #0x13
	adds r0, r0, r3
	str r0, [r2, #4]
	adds r1, #2
	b _0803205A
_08032038:
	cmp r0, #0x8a
	bne _08032058
	adds r1, #1
	ldrb r0, [r1]
	lsls r0, r0, #0x13
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r0, r0, r3
	str r0, [r2, #8]
	adds r1, #1
	ldrb r0, [r1]
	lsls r0, r0, #0x13
	adds r0, r0, r3
	str r0, [r2, #0xc]
	adds r1, #2
	b _0803205A
_08032058:
	adds r1, #4
_0803205A:
	ldrb r0, [r1]
	cmp r0, #0
	bne _08032018
_08032060:
	ldr r0, [sp]
	ldr r1, [sp, #8]
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r7, #0x24]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r7, #0x28]
	movs r0, #0
	str r0, [r7, #0x2c]
	b _0803220A
_0803207A:
	ldr r1, _0803209C @ =0x00000574
	adds r0, r7, r1
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x98
	ldr r0, [r0]
	movs r1, #0
	cmp r0, #0
	beq _0803208E
	adds r1, r2, r0
_0803208E:
	adds r2, r7, #0
	adds r2, #0x2c
	str r2, [sp, #0x20]
	cmp r1, #0
	beq _080320E8
	b _080320E2
	.align 2, 0
_0803209C: .4byte 0x00000574
_080320A0:
	cmp r0, #0x89
	bne _080320C0
	adds r1, #1
	ldrb r0, [r1]
	lsls r0, r0, #0x13
	movs r2, #0x80
	lsls r2, r2, #0xb
	adds r0, r0, r2
	str r0, [sp, #0x10]
	adds r1, #1
	ldrb r0, [r1]
	lsls r0, r0, #0x13
	adds r0, r0, r2
	str r0, [sp, #0x14]
	adds r1, #2
	b _080320E2
_080320C0:
	cmp r0, #0x8a
	bne _080320E0
	adds r1, #1
	ldrb r0, [r1]
	lsls r0, r0, #0x13
	movs r2, #0x80
	lsls r2, r2, #0xb
	adds r0, r0, r2
	str r0, [sp, #0x18]
	adds r1, #1
	ldrb r0, [r1]
	lsls r0, r0, #0x13
	adds r0, r0, r2
	str r0, [sp, #0x1c]
	adds r1, #2
	b _080320E2
_080320E0:
	adds r1, #4
_080320E2:
	ldrb r0, [r1]
	cmp r0, #0
	bne _080320A0
_080320E8:
	ldr r1, _080320FC @ =0x000007D7
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #3
	beq _08032168
	cmp r0, #3
	bgt _08032100
	cmp r0, #2
	beq _08032106
	b _080321FA
	.align 2, 0
_080320FC: .4byte 0x000007D7
_08032100:
	cmp r0, #4
	beq _08032194
	b _080321FA
_08032106:
	add r6, sp, #0x10
	ldr r4, [sp, #0x10]
	lsls r0, r4, #1
	ldr r2, [r6, #8]
	mov sl, r2
	add r0, sl
	movs r1, #3
	bl __divsi3
	mov sb, r0
	str r0, [r7, #0x24]
	ldr r5, [r6, #4]
	lsls r0, r5, #1
	ldr r6, [r6, #0xc]
	mov r8, r6
	add r0, r8
	movs r1, #3
	bl __divsi3
	adds r6, r0, #0
	str r6, [r7, #0x28]
	add r4, sl
	add r4, sl
	adds r0, r4, #0
	movs r1, #3
	bl __divsi3
	adds r4, r0, #0
	str r4, [r7, #0x34]
	add r5, r8
	add r5, r8
	adds r0, r5, #0
	movs r1, #3
	bl __divsi3
	ldr r1, _08032164 @ =0xFFFF0000
	mov r3, sb
	ands r3, r1
	str r3, [r7, #0x24]
	ands r6, r1
	str r6, [r7, #0x28]
	ands r4, r1
	str r4, [r7, #0x34]
	ands r0, r1
	str r0, [r7, #0x38]
	b _080321FA
	.align 2, 0
_08032164: .4byte 0xFFFF0000
_08032168:
	add r2, sp, #0x10
	ldr r0, [sp, #0x10]
	str r0, [r7, #0x24]
	ldr r1, [r2, #4]
	str r1, [r7, #0x28]
	ldr r3, [r2, #8]
	adds r0, r0, r3
	asrs r0, r0, #1
	ldr r2, [r2, #0xc]
	adds r1, r1, r2
	asrs r1, r1, #1
	str r3, [r7, #0x44]
	str r2, [r7, #0x48]
	ldr r2, _08032190 @ =0xFFFF0000
	ands r0, r2
	str r0, [r7, #0x34]
	ands r1, r2
	str r1, [r7, #0x38]
	b _080321FA
	.align 2, 0
_08032190: .4byte 0xFFFF0000
_08032194:
	add r6, sp, #0x10
	ldr r4, [sp, #0x10]
	str r4, [r7, #0x24]
	ldr r5, [r6, #4]
	str r5, [r7, #0x28]
	lsls r0, r4, #1
	ldr r1, [r6, #8]
	mov sl, r1
	add r0, sl
	movs r1, #3
	bl __divsi3
	mov r8, r0
	str r0, [r7, #0x34]
	lsls r0, r5, #1
	ldr r6, [r6, #0xc]
	mov sb, r6
	add r0, sb
	movs r1, #3
	bl __divsi3
	adds r6, r0, #0
	str r6, [r7, #0x38]
	add r4, sl
	add r4, sl
	adds r0, r4, #0
	movs r1, #3
	bl __divsi3
	adds r4, r0, #0
	str r4, [r7, #0x44]
	add r5, sb
	add r5, sb
	adds r0, r5, #0
	movs r1, #3
	bl __divsi3
	mov r2, sl
	str r2, [r7, #0x54]
	mov r3, sb
	str r3, [r7, #0x58]
	ldr r1, _0803221C @ =0xFFFF0000
	mov r2, r8
	ands r2, r1
	str r2, [r7, #0x34]
	ands r6, r1
	str r6, [r7, #0x38]
	ands r4, r1
	str r4, [r7, #0x44]
	ands r0, r1
	str r0, [r7, #0x48]
_080321FA:
	ldr r1, [sp, #0x20]
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0x30
_08032202:
	str r2, [r0]
	subs r0, #0x10
	cmp r0, r1
	bge _08032202
_0803220A:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803221C: .4byte 0xFFFF0000

	thumb_func_start sub_8032220
sub_8032220: @ 0x08032220
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov ip, r0
	adds r4, r1, #0
	mov sb, r2
	ldrb r1, [r4, #1]
	ldrb r0, [r4, #2]
	lsls r0, r0, #8
	adds r7, r1, r0
	ldrb r1, [r4, #3]
	ldrb r0, [r4, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r8, r1
	cmp r3, #0
	beq _08032252
	mov r1, ip
	ldrb r0, [r1]
	subs r0, #1
	cmp r3, r0
	bne _0803225C
_08032252:
	adds r0, r3, #0
	subs r0, #0x80
	mov r6, ip
	strb r0, [r6, #3]
	b _08032260
_0803225C:
	mov r0, ip
	strb r3, [r0, #3]
_08032260:
	mov r1, ip
	ldrb r5, [r1, #1]
	ldrb r0, [r4]
	cmp r0, #4
	bls _0803226C
	b _08032416
_0803226C:
	lsls r0, r0, #2
	ldr r1, _08032278 @ =_0803227C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08032278: .4byte _0803227C
_0803227C: @ jump table
	.4byte _08032290 @ case 0
	.4byte _080322E2 @ case 1
	.4byte _08032332 @ case 2
	.4byte _08032380 @ case 3
	.4byte _080323CC @ case 4
_08032290:
	ldrb r1, [r4, #5]
	ldrb r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	adds r2, r1, #1
	ldrb r1, [r4, #7]
	ldrb r0, [r4, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	adds r4, r1, #1
	movs r3, #0
	cmp r3, r4
	blt _080322AC
	b _08032416
_080322AC:
	add sb, r7
_080322AE:
	mov r6, r8
	adds r0, r6, r3
	adds r3, #1
	str r3, [sp]
	cmp r0, r5
	bge _080322DA
	movs r3, #0
	cmp r3, r2
	bge _080322DA
	adds r1, r0, #0
	muls r1, r5, r1
	add r1, sb
_080322C6:
	adds r0, r7, r3
	cmp r0, r5
	bge _080322D2
	mov r0, ip
	ldrb r0, [r0, #3]
	strb r0, [r1]
_080322D2:
	adds r1, #1
	adds r3, #1
	cmp r3, r2
	blt _080322C6
_080322DA:
	ldr r3, [sp]
	cmp r3, r4
	blt _080322AE
	b _08032416
_080322E2:
	ldrb r1, [r4, #5]
	ldrb r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	adds r4, r1, #1
	movs r3, #0
	cmp r3, r4
	blt _080322F4
	b _08032416
_080322F4:
	mov r1, r8
	adds r0, r1, r3
	adds r6, r3, #1
	str r6, [sp]
	cmp r0, r5
	bge _0803232A
	subs r2, r4, r3
	movs r3, #0
	cmp r3, r2
	bge _0803232A
	adds r1, r0, #0
	muls r1, r5, r1
	mov sl, r1
	mov r6, sb
	adds r6, r7, r6
	adds r1, r6, #0
	add r1, sl
_08032316:
	adds r0, r7, r3
	cmp r0, r5
	bge _08032322
	mov r0, ip
	ldrb r0, [r0, #3]
	strb r0, [r1]
_08032322:
	adds r1, #1
	adds r3, #1
	cmp r3, r2
	blt _08032316
_0803232A:
	ldr r3, [sp]
	cmp r3, r4
	blt _080322F4
	b _08032416
_08032332:
	ldrb r1, [r4, #5]
	ldrb r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	adds r4, r1, #1
	movs r3, #0
	cmp r3, r4
	bge _08032416
_08032342:
	mov r1, r8
	adds r0, r1, r3
	adds r6, r3, #1
	str r6, [sp]
	cmp r0, r5
	bge _08032378
	subs r2, r4, r3
	movs r3, #0
	cmp r3, r2
	bge _08032378
	adds r1, r0, #0
	muls r1, r5, r1
	mov sl, r1
	mov r6, sb
	adds r6, r7, r6
	adds r1, r6, #0
	add r1, sl
_08032364:
	subs r0, r7, r3
	cmp r0, r5
	bge _08032370
	mov r0, ip
	ldrb r0, [r0, #3]
	strb r0, [r1]
_08032370:
	subs r1, #1
	adds r3, #1
	cmp r3, r2
	blt _08032364
_08032378:
	ldr r3, [sp]
	cmp r3, r4
	blt _08032342
	b _08032416
_08032380:
	ldrb r1, [r4, #5]
	ldrb r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	adds r4, r1, #1
	movs r3, #0
	cmp r3, r4
	bge _08032416
_08032390:
	adds r1, r3, #1
	str r1, [sp]
	mov r6, r8
	subs r1, r6, r3
	cmp r1, r5
	bge _080323C4
	subs r2, r4, r3
	movs r3, #0
	cmp r3, r2
	bge _080323C4
	adds r0, r1, #0
	muls r0, r5, r0
	mov sl, r0
	mov r1, sb
	adds r1, r7, r1
	add r1, sl
_080323B0:
	subs r0, r7, r3
	cmp r0, r5
	bge _080323BC
	mov r6, ip
	ldrb r6, [r6, #3]
	strb r6, [r1]
_080323BC:
	subs r1, #1
	adds r3, #1
	cmp r3, r2
	blt _080323B0
_080323C4:
	ldr r3, [sp]
	cmp r3, r4
	blt _08032390
	b _08032416
_080323CC:
	ldrb r1, [r4, #5]
	ldrb r0, [r4, #6]
	lsls r0, r0, #8
	adds r1, r1, r0
	adds r4, r1, #1
	movs r3, #0
	cmp r3, r4
	bge _08032416
_080323DC:
	adds r0, r3, #1
	str r0, [sp]
	mov r6, r8
	subs r1, r6, r3
	cmp r1, r5
	bge _08032410
	subs r2, r4, r3
	movs r3, #0
	cmp r3, r2
	bge _08032410
	adds r0, r1, #0
	muls r0, r5, r0
	mov sl, r0
	mov r1, sb
	adds r1, r7, r1
	add r1, sl
_080323FC:
	adds r0, r7, r3
	cmp r0, r5
	bge _08032408
	mov r6, ip
	ldrb r6, [r6, #3]
	strb r6, [r1]
_08032408:
	adds r1, #1
	adds r3, #1
	cmp r3, r2
	blt _080323FC
_08032410:
	ldr r3, [sp]
	cmp r3, r4
	blt _080323DC
_08032416:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8032428
sub_8032428: @ 0x08032428
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r1, r0, #0
	adds r1, #0xbc
	ldr r3, [r1, #0x2c]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r7, _080324A0 @ =0x02025400
	ldr r1, _080324A4 @ =0x00000574
	adds r0, r0, r1
	ldr r1, [r0]
	add r5, sp, #4
	adds r0, r1, #0
	adds r0, #0xcc
	ldr r0, [r0]
	adds r1, r1, r0
	ldrb r2, [r1, #1]
	adds r2, r1, r2
	ldrb r0, [r1, #2]
	lsls r0, r0, #8
	adds r6, r2, r0
	strb r3, [r5, #1]
	strb r3, [r5, #2]
	ldrb r0, [r1]
	strb r0, [r5]
	ldr r1, _080324A8 @ =0x03002E20
	ldrb r0, [r5]
	strh r0, [r1, #0x38]
	ldr r0, _080324AC @ =0x7F7F7F7F
	str r0, [sp]
	mov r0, sp
	adds r1, r7, #0
	ldr r2, _080324B0 @ =0x01001000
	bl CpuFastSet
	movs r4, #0
	ldrb r0, [r5]
	cmp r4, r0
	bge _08032498
_08032476:
	movs r0, #0x1f
	ands r0, r4
	cmp r0, #0x1f
	bne _08032482
	bl main_frameProc
_08032482:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_8032220
	adds r6, #0xc
	adds r4, #1
	ldrb r1, [r5]
	cmp r4, r1
	blt _08032476
_08032498:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080324A0: .4byte 0x02025400
_080324A4: .4byte 0x00000574
_080324A8: .4byte 0x03002E20
_080324AC: .4byte 0x7F7F7F7F
_080324B0: .4byte 0x01001000

	thumb_func_start sub_80324B4
sub_80324B4: @ 0x080324B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	str r1, [sp, #0xc]
	lsls r0, r0, #0x18
	ldr r1, _08032730 @ =gTrackDefTable
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0]
	lsls r0, r0, #2
	ldr r1, _08032734 @ =courseData_bin
	adds r0, r0, r1
	ldr r6, [r0]
	adds r1, r1, r6
	mov sb, r1
	ldr r5, [sp, #0xc]
	str r5, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #1
	mov sl, r0
	mov r0, sb
	adds r1, r5, #0
	movs r2, #0x40
	bl CpuFastSet
	add r5, sl
	ldr r1, _08032738 @ =courseData_bin+0xC4
	adds r1, r1, r6
	mov r8, r1
	ldr r1, [r1]
	ldr r2, _0803273C @ =courseData_bin+0xD4
	adds r0, r6, r2
	ldr r0, [r0]
	mov r2, sb
	adds r3, r2, r0
	subs r4, r1, r0
	add sl, r4
	adds r2, r4, #0
	cmp r4, #0
	bge _0803250E
	adds r2, r4, #3
_0803250E:
	asrs r2, r2, #2
	ldr r0, _08032740 @ =0x001FFFFF
	ands r2, r0
	adds r0, r3, #0
	adds r1, r5, #0
	bl CpuFastSet
	adds r5, r5, r4
	ldr r1, _08032744 @ =courseData_bin+0x80
	adds r7, r6, r1
	ldr r1, [r7]
	mov r2, r8
	ldr r0, [r2]
	mov r2, sb
	adds r3, r2, r0
	subs r4, r1, r0
	add sl, r4
	adds r2, r4, #0
	cmp r4, #0
	bge _08032538
	adds r2, r4, #3
_08032538:
	asrs r2, r2, #2
	ldr r0, _08032740 @ =0x001FFFFF
	ands r2, r0
	adds r0, r3, #0
	adds r1, r5, #0
	bl CpuFastSet
	adds r5, r5, r4
	ldr r1, _08032748 @ =courseData_bin+0x84
	adds r1, r1, r6
	mov r8, r1
	ldr r1, [r1]
	ldr r0, [r7]
	mov r2, sb
	adds r3, r2, r0
	subs r4, r1, r0
	add sl, r4
	adds r2, r4, #0
	cmp r4, #0
	bge _08032562
	adds r2, r4, #3
_08032562:
	asrs r2, r2, #2
	ldr r0, _08032740 @ =0x001FFFFF
	ands r2, r0
	adds r0, r3, #0
	adds r1, r5, #0
	bl CpuFastSet
	adds r5, r5, r4
	ldr r1, _0803274C @ =courseData_bin+0x88
	adds r1, r6, r1
	str r1, [sp, #0x14]
	ldr r1, [r1]
	mov r2, r8
	ldr r0, [r2]
	mov r2, sb
	adds r3, r2, r0
	subs r4, r1, r0
	add sl, r4
	adds r2, r4, #0
	cmp r4, #0
	bge _0803258E
	adds r2, r4, #3
_0803258E:
	asrs r2, r2, #2
	ldr r0, _08032740 @ =0x001FFFFF
	ands r2, r0
	adds r0, r3, #0
	adds r1, r5, #0
	bl CpuFastSet
	adds r5, r5, r4
	ldr r1, _08032750 @ =courseData_bin+0xCC
	adds r7, r6, r1
	ldr r1, [r7]
	ldr r2, [sp, #0x14]
	ldr r0, [r2]
	mov r2, sb
	adds r3, r2, r0
	subs r4, r1, r0
	add sl, r4
	adds r2, r4, #0
	cmp r4, #0
	bge _080325B8
	adds r2, r4, #3
_080325B8:
	asrs r2, r2, #2
	ldr r0, _08032740 @ =0x001FFFFF
	ands r2, r0
	adds r0, r3, #0
	adds r1, r5, #0
	bl CpuFastSet
	adds r5, r5, r4
	ldr r1, [sp, #0xc]
	adds r1, #0x8c
	mov r8, r1
	ldr r0, [r7]
	str r0, [r1]
	ldr r2, _08032754 @ =courseData_bin+0x94
	adds r2, r6, r2
	str r2, [sp, #0x18]
	ldr r1, _08032758 @ =courseData_bin+0x8C
	adds r0, r6, r1
	ldr r1, [r2]
	ldr r0, [r0]
	subs r4, r1, r0
	add sl, r4
	movs r1, #0
	cmp r0, #0
	beq _080325EE
	mov r2, sb
	adds r1, r2, r0
_080325EE:
	adds r2, r4, #0
	cmp r4, #0
	bge _080325F6
	adds r2, r4, #3
_080325F6:
	asrs r2, r2, #2
	ldr r0, _08032740 @ =0x001FFFFF
	ands r2, r0
	adds r0, r1, #0
	adds r1, r5, #0
	bl CpuFastSet
	adds r5, r5, r4
	ldr r7, [sp, #0xc]
	adds r7, #0x94
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r4
	str r0, [r7]
	ldr r2, _0803275C @ =courseData_bin+0x98
	adds r6, r6, r2
	ldr r0, [r6]
	ldr r2, [sp, #0x18]
	ldr r1, [r2]
	subs r4, r0, r1
	add sl, r4
	movs r0, #0
	cmp r1, #0
	beq _0803262A
	mov r2, sb
	adds r0, r2, r1
_0803262A:
	adds r2, r4, #0
	cmp r4, #0
	bge _08032632
	adds r2, r4, #3
_08032632:
	asrs r2, r2, #2
	ldr r1, _08032740 @ =0x001FFFFF
	ands r2, r1
	adds r1, r5, #0
	bl CpuFastSet
	adds r5, r5, r4
	ldr r1, [sp, #0xc]
	adds r1, #0x98
	ldr r0, [r7]
	adds r0, r0, r4
	str r0, [r1]
	movs r4, #0x80
	add sl, r4
	ldr r0, [r6]
	movs r3, #0
	adds r6, r1, #0
	cmp r0, #0
	beq _0803265C
	mov r2, sb
	adds r3, r2, r0
_0803265C:
	movs r2, #0x20
	adds r0, r3, #0
	adds r1, r5, #0
	bl CpuFastSet
	adds r5, r5, r4
	ldr r0, [sp, #0x10]
	adds r0, #0xcc
	movs r1, #0
	str r1, [r0]
	ldr r0, [sp, #0x10]
	adds r0, #0xd8
	str r1, [r0]
	ldr r0, [sp, #0x10]
	adds r0, #0xf0
	str r0, [sp, #0x1c]
	ldr r0, [r6]
	adds r0, r0, r4
	ldr r1, [sp, #0x1c]
	str r0, [r1]
	movs r3, #0x40
	add r7, sp, #4
	mov r4, sb
	adds r4, #0xcc
	ldr r2, [r4]
	add r2, sb
	ldrb r1, [r2, #1]
	adds r1, r2, r1
	ldrb r0, [r2, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	mov r8, r1
	strb r3, [r7, #1]
	strb r3, [r7, #2]
	ldrb r0, [r2]
	strb r0, [r7]
	ldr r1, _08032760 @ =0x03002E20
	ldrb r0, [r7]
	strh r0, [r1, #0x38]
	ldr r0, _08032764 @ =0x7F7F7F7F
	str r0, [sp]
	mov r0, sp
	ldr r1, _08032768 @ =0x02037900
	ldr r2, _0803276C @ =0x01000400
	bl CpuFastSet
	movs r6, #0
	ldr r2, [sp, #0x1c]
	str r2, [sp, #0x24]
	str r4, [sp, #0x20]
	ldr r4, [sp, #0x10]
	adds r4, #0xc2
	ldr r0, [sp, #0x10]
	adds r0, #0xf4
	str r0, [sp, #0x28]
	mov r1, sb
	adds r1, #0x8c
	str r1, [sp, #0x2c]
	ldrb r2, [r7]
	cmp r6, r2
	bge _080326EE
_080326D6:
	adds r0, r7, #0
	mov r1, r8
	ldr r2, _08032768 @ =0x02037900
	adds r3, r6, #0
	bl sub_8032220
	movs r0, #0xc
	add r8, r0
	adds r6, #1
	ldrb r1, [r7]
	cmp r6, r1
	blt _080326D6
_080326EE:
	ldr r0, _08032760 @ =0x03002E20
	ldrh r0, [r0, #0x38]
	strh r0, [r4]
	movs r4, #0x80
	lsls r4, r4, #5
	add sl, r4
	ldr r0, _08032768 @ =0x02037900
	asrs r2, r4, #2
	adds r1, r5, #0
	bl CpuFastSet
	adds r5, r5, r4
	ldr r2, [sp, #0x24]
	ldr r0, [r2]
	adds r0, r0, r4
	ldr r1, [sp, #0x28]
	str r0, [r1]
	ldr r2, [sp, #0x20]
	ldr r0, [r2]
	add r0, sb
	ldrb r1, [r0, #3]
	adds r1, r0, r1
	ldrb r0, [r0, #4]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldr r2, [sp, #0x2c]
	ldr r0, [r2]
	cmp r0, #0
	beq _08032770
	add r0, sb
	subs r4, r0, r1
	b _08032772
	.align 2, 0
_08032730: .4byte gTrackDefTable
_08032734: .4byte courseData_bin
_08032738: .4byte courseData_bin+0xC4
_0803273C: .4byte courseData_bin+0xD4
_08032740: .4byte 0x001FFFFF
_08032744: .4byte courseData_bin+0x80
_08032748: .4byte courseData_bin+0x84
_0803274C: .4byte courseData_bin+0x88
_08032750: .4byte courseData_bin+0xCC
_08032754: .4byte courseData_bin+0x94
_08032758: .4byte courseData_bin+0x8C
_0803275C: .4byte courseData_bin+0x98
_08032760: .4byte 0x03002E20
_08032764: .4byte 0x7F7F7F7F
_08032768: .4byte 0x02037900
_0803276C: .4byte 0x01000400
_08032770:
	rsbs r4, r1, #0
_08032772:
	add sl, r4
	lsrs r2, r4, #0x1f
	adds r2, r4, r2
	lsls r2, r2, #0xa
	lsrs r2, r2, #0xb
	adds r0, r1, #0
	adds r1, r5, #0
	bl CpuSet
	mov r0, sl
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8032798
sub_8032798: @ 0x08032798
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov ip, r3
	adds r0, r4, #0
	cmp r4, #0
	bge _080327B2
	adds r0, r4, #7
_080327B2:
	asrs r7, r0, #3
	adds r2, r5, #0
	cmp r5, #0
	bge _080327BC
	adds r2, r5, #7
_080327BC:
	asrs r2, r2, #3
	lsls r1, r2, #1
	adds r6, #0xbc
	ldr r0, [r6, #0x2c]
	muls r0, r1, r0
	ldr r1, _08032838 @ =0x02010400
	adds r0, r0, r1
	adds r0, r0, r7
	mov r8, r0
	movs r3, #0x7f
	adds r0, r7, #0
	ands r0, r3
	ldr r1, [r6, #0x14]
	adds r1, r1, r0
	ands r2, r3
	lsls r2, r2, #7
	adds r2, r1, r2
	adds r0, r6, #0
	adds r3, r4, #0
	cmp r4, #0
	bge _080327E8
	adds r3, #0xf
_080327E8:
	asrs r1, r3, #4
	ldr r3, [r0, #0x40]
	adds r0, r3, #0
	subs r0, #0x20
	cmp r1, r0
	blt _0803281A
	adds r0, r3, #0
	adds r0, #0x20
	cmp r1, r0
	bgt _0803281A
	adds r0, r5, #0
	cmp r5, #0
	bge _08032804
	adds r0, #0xf
_08032804:
	asrs r4, r0, #4
	ldr r3, [r6, #0x44]
	adds r0, r3, #0
	subs r0, #0x20
	cmp r4, r0
	blt _0803281A
	adds r0, r3, #0
	adds r0, #0x20
	movs r3, #0
	cmp r4, r0
	ble _0803281C
_0803281A:
	movs r3, #1
_0803281C:
	cmp r3, #0
	bne _0803284A
	movs r3, #2
	rsbs r3, r3, #0
	ands r3, r2
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _0803283C
	ldrb r0, [r3]
	mov r2, ip
	lsls r1, r2, #8
	b _08032846
	.align 2, 0
_08032838: .4byte 0x02010400
_0803283C:
	ldrh r1, [r3]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	mov r1, ip
_08032846:
	orrs r0, r1
	strh r0, [r3]
_0803284A:
	mov r0, ip
	mov r2, r8
	strb r0, [r2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_803285C
sub_803285C: @ 0x0803285C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov r8, r1
	mov sb, r2
	lsls r5, r3, #0x18
	lsrs r5, r5, #0x18
	movs r3, #0
	bl sub_80328D4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_8032AD0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_8032B10
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r0, r8
	cmp r0, #0
	bge _0803289E
	adds r0, #7
_0803289E:
	asrs r0, r0, #3
	subs r0, r7, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r3, r0, #1
	mov r2, sb
	cmp r2, #0
	bge _080328B0
	adds r2, #7
_080328B0:
	asrs r1, r2, #3
	subs r1, r4, r1
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0xf
	asrs r1, r1, #0x10
	bl sub_802EAEC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_80328D4
sub_80328D4: @ 0x080328D4
	cmp r1, #0
	bge _080328DA
	adds r1, #0xf
_080328DA:
	asrs r3, r1, #4
	cmp r2, #0
	bge _080328E2
	adds r2, #0xf
_080328E2:
	asrs r1, r2, #4
	ldr r2, _080328FC @ =0x00000574
	adds r0, r0, r2
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	muls r0, r1, r0
	lsls r0, r0, #6
	adds r0, r3, r0
	ldr r1, _08032900 @ =0x02025400
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_080328FC: .4byte 0x00000574
_08032900: .4byte 0x02025400

	thumb_func_start sub_8032904
sub_8032904: @ 0x08032904
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, [r1]
	cmp r2, #0
	bge _08032912
	ldr r0, _0803294C @ =0x0000FFFF
	adds r2, r2, r0
_08032912:
	asrs r2, r2, #0x10
	ldr r1, [r1, #4]
	cmp r1, #0
	bge _0803291E
	ldr r4, _0803294C @ =0x0000FFFF
	adds r1, r1, r4
_0803291E:
	asrs r1, r1, #0x10
	adds r0, r2, #0
	cmp r0, #0
	bge _08032928
	adds r0, #0xf
_08032928:
	asrs r2, r0, #4
	cmp r1, #0
	bge _08032930
	adds r1, #0xf
_08032930:
	asrs r1, r1, #4
	ldr r4, _08032950 @ =0x00000574
	adds r0, r3, r4
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	muls r0, r1, r0
	lsls r0, r0, #6
	adds r0, r2, r0
	ldr r1, _08032954 @ =0x02025400
	adds r0, r0, r1
	ldrb r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0803294C: .4byte 0x0000FFFF
_08032950: .4byte 0x00000574
_08032954: .4byte 0x02025400

	thumb_func_start sub_08032958
sub_08032958: @ 0x08032958
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _08032970 @ =0x00000574
	adds r0, r0, r2
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0x88
	ldr r2, [r2]
	adds r0, r0, r2
	adds r0, r0, r1
	bx lr
	.align 2, 0
_08032970: .4byte 0x00000574

	thumb_func_start sub_8032974
sub_8032974: @ 0x08032974
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _0803298C @ =0x00000574
	adds r0, r0, r2
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0x88
	ldr r2, [r2]
	adds r0, r0, r2
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0803298C: .4byte 0x00000574

	thumb_func_start sub_8032990
sub_8032990: @ 0x08032990
	push {r4, lr}
	adds r4, r0, #0
	bl sub_8032CA0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080329B4 @ =0x00000574
	adds r4, r4, r1
	ldr r1, [r4]
	adds r2, r1, #0
	adds r2, #0x88
	ldr r2, [r2]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080329B4: .4byte 0x00000574

	thumb_func_start sub_80329B8
sub_80329B8: @ 0x080329B8
	ldr r0, [r0, #0x20]
	bx lr

	thumb_func_start sub_80329BC
sub_80329BC: @ 0x080329BC
	ldr r2, _080329DC @ =0x00000574
	adds r1, r0, r2
	ldr r2, [r1]
	adds r0, #0xbc
	ldr r1, [r2, #0x24]
	adds r1, r2, r1
	str r1, [r0, #4]
	ldr r1, [r2, #8]
	adds r1, r2, r1
	str r1, [r0, #0xc]
	adds r1, r2, #0
	adds r1, #0xd4
	ldr r1, [r1]
	adds r2, r2, r1
	str r2, [r0, #0x1c]
	bx lr
	.align 2, 0
_080329DC: .4byte 0x00000574

	thumb_func_start sub_80329E0
sub_80329E0: @ 0x080329E0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	lsls r4, r3, #0x10
	lsrs r4, r4, #0x10
	adds r0, #0xbc
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r1, r2, #0
	bl sub_8033A5C
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	mov r2, r8
	adds r3, r4, #0
	bl sub_8032A18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8032A18
sub_8032A18: @ 0x08032A18
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	cmp r1, #0
	bge _08032A28
	ldr r0, _08032A50 @ =0x0007FFFF
	adds r1, r1, r0
_08032A28:
	asrs r1, r1, #0x13
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	cmp r2, #0
	bge _08032A38
	ldr r5, _08032A50 @ =0x0007FFFF
	adds r2, r2, r5
_08032A38:
	asrs r2, r2, #0x13
	ands r2, r0
	adds r0, r4, #0
	adds r0, #0xbc
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	bl sub_8033838
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08032A50: .4byte 0x0007FFFF

	thumb_func_start loadtrack_loadCoinLocations
loadtrack_loadCoinLocations: @ 0x08032A54
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _08032A74 @ =0x00000574
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x90
	ldr r0, [r0]
	movs r2, #0
	cmp r0, #0
	beq _08032A6C
	adds r2, r1, r0
_08032A6C:
	adds r4, r2, #0
	cmp r4, #0
	beq _08032A94
	b _08032A8C
	.align 2, 0
_08032A74: .4byte 0x00000574
_08032A78:
	ldrb r1, [r4]
	adds r4, #1
	ldrb r2, [r4]
	adds r4, #2
	lsls r1, r1, #3
	lsls r2, r2, #3
	adds r0, r5, #0
	movs r3, #0xc0
	bl sub_8032798
_08032A8C:
	ldrb r0, [r4]
	adds r4, #1
	cmp r0, #0
	bne _08032A78
_08032A94:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08032A9C
sub_08032A9C: @ 0x08032A9C
	bx lr
	.align 2, 0

	thumb_func_start sub_8032AA0
sub_8032AA0: @ 0x08032AA0
	push {r4, lr}
	mov ip, r0
	ldr r4, [sp, #8]
	lsls r1, r1, #4
	adds r0, #0x24
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	mov r0, ip
	adds r0, #0x28
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3]
	mov r0, ip
	adds r0, #0x2c
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08032ACC
sub_08032ACC: @ 0x08032ACC
	movs r0, #0
	bx lr

	thumb_func_start sub_8032AD0
sub_8032AD0: @ 0x08032AD0
	push {r4, lr}
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r4, #0x7f
	ands r4, r1
	ldr r3, _08032B0C @ =0x00000574
	adds r1, r0, r3
	ldr r1, [r1]
	adds r3, r1, #0
	adds r3, #0xcc
	ldr r3, [r3]
	adds r1, r1, r3
	ldrb r3, [r1, #3]
	adds r3, r1, r3
	ldrb r1, [r1, #4]
	lsls r1, r1, #8
	adds r3, r3, r1
	ldrh r0, [r0, #0x14]
	muls r0, r2, r0
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r3, r3, r0
	ldrb r0, [r3]
	ldrb r1, [r3, #1]
	lsls r1, r1, #8
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08032B0C: .4byte 0x00000574

	thumb_func_start sub_8032B10
sub_8032B10: @ 0x08032B10
	push {r4, lr}
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r4, #0x7f
	ands r4, r1
	ldr r3, _08032B4C @ =0x00000574
	adds r1, r0, r3
	ldr r1, [r1]
	adds r3, r1, #0
	adds r3, #0xcc
	ldr r3, [r3]
	adds r1, r1, r3
	ldrb r3, [r1, #3]
	adds r3, r1, r3
	ldrb r1, [r1, #4]
	lsls r1, r1, #8
	adds r3, r3, r1
	ldrh r0, [r0, #0x14]
	muls r0, r2, r0
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r3, r3, r0
	ldrb r0, [r3, #2]
	ldrb r1, [r3, #3]
	lsls r1, r1, #8
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08032B4C: .4byte 0x00000574

	thumb_func_start sub_8032B50
sub_8032B50: @ 0x08032B50
	push {r4, lr}
	movs r4, #0x7f
	ands r4, r1
	ldr r2, _08032B88 @ =0x00000574
	adds r1, r0, r2
	ldr r1, [r1]
	adds r2, r1, #0
	adds r2, #0xcc
	ldr r2, [r2]
	adds r1, r1, r2
	ldrb r2, [r1, #3]
	adds r2, r1, r2
	ldrb r1, [r1, #4]
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r1, _08032B8C @ =0x03002E20
	ldrh r3, [r0, #0x14]
	ldr r0, _08032B90 @ =0x00000C88
	adds r1, r1, r0
	ldrb r0, [r1]
	muls r0, r3, r0
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r2, r2, r0
	ldrb r0, [r2, #4]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08032B88: .4byte 0x00000574
_08032B8C: .4byte 0x03002E20
_08032B90: .4byte 0x00000C88

	thumb_func_start sub_8032B94
sub_8032B94: @ 0x08032B94
	push {r4, lr}
	lsls r0, r0, #0x18
	ldr r2, _08032BC0 @ =gTrackDefTable
	lsrs r0, r0, #0x16
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0, #4]
	lsls r0, r0, #2
	ldr r2, _08032BC4 @ =skyData_bin
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r0, r2
	movs r4, #0xa0
	lsls r4, r4, #6
	asrs r2, r4, #2
	bl CpuFastSet
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08032BC0: .4byte gTrackDefTable
_08032BC4: .4byte skyData_bin

	thumb_func_start sub_8032BC8
sub_8032BC8: @ 0x08032BC8
	lsrs r0, r0, #5
	movs r1, #1
	ands r0, r1
	bx lr

	thumb_func_start sub_08032BD0
sub_08032BD0: @ 0x08032BD0
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0
	bge _08032BDA
	adds r1, #7
_08032BDA:
	asrs r3, r1, #3
	cmp r2, #0
	bge _08032BE2
	adds r2, #7
_08032BE2:
	asrs r0, r2, #3
	lsls r0, r0, #1
	adds r1, r4, #0
	adds r1, #0xbc
	ldr r1, [r1, #0x2c]
	muls r0, r1, r0
	ldr r1, _08032BFC @ =0x02010400
	adds r0, r0, r1
	adds r0, r3, r0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08032BFC: .4byte 0x02010400

	thumb_func_start sub_08032C00
sub_08032C00: @ 0x08032C00
	push {r4, lr}
	adds r3, r0, #0
	adds r3, #0xbc
	cmp r1, #0
	bge _08032C0C
	adds r1, #7
_08032C0C:
	asrs r0, r1, #3
	movs r4, #0x7f
	ands r0, r4
	ldr r1, [r3, #0x14]
	adds r1, r1, r0
	cmp r2, #0
	bge _08032C1C
	adds r2, #7
_08032C1C:
	asrs r0, r2, #3
	ands r0, r4
	lsls r0, r0, #7
	adds r0, r1, r0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8032C2C
sub_8032C2C: @ 0x08032C2C
	movs r1, #0xaf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0, #0x10]
	bx lr

	thumb_func_start sub_8032C38
sub_8032C38: @ 0x08032C38
	movs r1, #0xaf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0, #0x18]
	bx lr

	thumb_func_start sub_8032C44
sub_8032C44: @ 0x08032C44
	movs r1, #0xaf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	bx lr

	thumb_func_start sub_8032C50
sub_8032C50: @ 0x08032C50
	cmp r1, #0
	blt _08032C6C
	adds r3, r0, #0
	adds r3, #0xbc
	ldr r0, [r3, #0x2c]
	lsls r0, r0, #0x14
	cmp r1, r0
	bge _08032C6C
	cmp r2, #0
	blt _08032C6C
	ldr r0, [r3, #0x30]
	lsls r0, r0, #0x14
	cmp r2, r0
	blt _08032C70
_08032C6C:
	movs r0, #1
	b _08032C72
_08032C70:
	movs r0, #0
_08032C72:
	bx lr

	thumb_func_start sub_8032C74
sub_8032C74: @ 0x08032C74
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrh r0, [r0, #0x14]
	subs r0, #1
	cmp r1, r0
	beq _08032C88
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _08032C8A
_08032C88:
	movs r0, #0
_08032C8A:
	bx lr

	thumb_func_start sub_8032C8C
sub_8032C8C: @ 0x08032C8C
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0
	bne _08032C98
	ldrb r0, [r2, #0x14]
_08032C98:
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr

	thumb_func_start sub_8032CA0
sub_8032CA0: @ 0x08032CA0
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0
	bge _08032CAA
	adds r1, #7
_08032CAA:
	asrs r3, r1, #3
	cmp r2, #0
	bge _08032CB2
	adds r2, #7
_08032CB2:
	asrs r0, r2, #3
	lsls r0, r0, #1
	adds r1, r4, #0
	adds r1, #0xbc
	ldr r1, [r1, #0x2c]
	muls r0, r1, r0
	ldr r1, _08032CCC @ =0x02010400
	adds r0, r0, r1
	adds r0, r3, r0
	ldrb r0, [r0]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08032CCC: .4byte 0x02010400

	thumb_func_start sub_8032CD0
sub_8032CD0: @ 0x08032CD0
	ldr r1, _08032CE4 @ =0x00000574
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0xca
	ldrb r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_08032CE4: .4byte 0x00000574

	thumb_func_start sub_08032CE8
sub_08032CE8: @ 0x08032CE8
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r3, _08032D08 @ =0x00000574
	adds r0, r0, r3
	ldr r0, [r0]
	adds r3, r0, #0
	adds r3, #0xe0
	ldr r3, [r3]
	lsrs r1, r1, #0x15
	adds r0, r0, r3
	adds r1, r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	bx lr
	.align 2, 0
_08032D08: .4byte 0x00000574

	thumb_func_start sub_8032D0C
sub_8032D0C: @ 0x08032D0C
	adds r2, r0, #0
	ldr r0, _08032D34 @ =0x03002E20
	ldr r1, _08032D38 @ =0x00000801
	adds r0, r0, r1
	ldrb r0, [r0]
	lsrs r0, r0, #5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08032D40
	ldr r1, _08032D3C @ =0x00000574
	adds r0, r2, r1
	ldr r0, [r0]
	adds r0, #0xca
	ldrb r0, [r0]
	cmp r0, #0
	bne _08032D40
	movs r0, #2
	b _08032D42
	.align 2, 0
_08032D34: .4byte 0x03002E20
_08032D38: .4byte 0x00000801
_08032D3C: .4byte 0x00000574
_08032D40:
	movs r0, #1
_08032D42:
	bx lr

	thumb_func_start sub_8032D44
sub_8032D44: @ 0x08032D44
	ldr r1, _08032D58 @ =0x00000574
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x84
	ldr r1, [r1]
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08032D58: .4byte 0x00000574

	thumb_func_start sub_08032D5C
sub_08032D5C: @ 0x08032D5C
	movs r1, #0xaf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #4]
	lsls r0, r0, #2
	ldr r1, _08032D7C @ =skyData_bin
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_08032D7C: .4byte skyData_bin

	thumb_func_start sub_8032D80
sub_8032D80: @ 0x08032D80
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	ldr r2, _08032D98 @ =gTrackDefTable
	lsrs r0, r0, #0x16
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	lsrs r1, r1, #0x16
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	bx lr
	.align 2, 0
_08032D98: .4byte gTrackDefTable

	thumb_func_start sub_8032D9C
sub_8032D9C: @ 0x08032D9C
	ldr r1, _08032DB8 @ =0x00000574
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x98
	ldr r0, [r0]
	movs r2, #0
	cmp r0, #0
	beq _08032DB0
	adds r2, r1, r0
_08032DB0:
	movs r0, #0
	cmp r2, #0
	beq _08032DCE
	b _08032DBE
	.align 2, 0
_08032DB8: .4byte 0x00000574
_08032DBC:
	adds r2, #4
_08032DBE:
	ldrb r1, [r2]
	cmp r1, #0
	beq _08032DCE
	cmp r1, #0x8b
	bne _08032DBC
	ldrb r0, [r2, #2]
	lsls r0, r0, #3
	adds r0, #8
_08032DCE:
	bx lr

	thumb_func_start sub_08032DD0
sub_08032DD0: @ 0x08032DD0
	push {lr}
	adds r2, r0, #0
	lsls r0, r2, #3
	adds r2, r0, #0
	subs r2, #8
	lsls r0, r1, #3
	adds r1, r0, #0
	subs r1, #8
	cmp r2, #0
	bne _08032DF8
	cmp r1, #0
	bne _08032DEC
	movs r0, #0x80
	b _08032E2C
_08032DEC:
	mvns r0, r1
	asrs r1, r0, #0x1f
	movs r0, #0x80
	lsls r0, r0, #8
	ands r1, r0
	b _08032E1C
_08032DF8:
	cmp r1, #0
	bne _08032E0C
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r2, #0
	bge _08032E08
	movs r0, #0xc0
	lsls r0, r0, #8
_08032E08:
	adds r1, r0, #0
	b _08032E1C
_08032E0C:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_802EC38
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08032E1C:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08032E26
	adds r0, #0xff
_08032E26:
	asrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_08032E2C:
	pop {r1}
	bx r1

	thumb_func_start sub_08032E30
sub_08032E30: @ 0x08032E30
	ldrb r1, [r0, #1]
	adds r1, r0, r1
	ldrb r0, [r0, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_08032E40
sub_08032E40: @ 0x08032E40
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0xbc
	adds r0, r1, #0
	cmp r1, #0
	bge _08032E4E
	adds r0, #0xf
_08032E4E:
	asrs r4, r0, #4
	ldr r3, [r5, #0x40]
	adds r0, r3, #0
	subs r0, #0x20
	cmp r4, r0
	blt _08032E82
	adds r0, r3, #0
	adds r0, #0x20
	cmp r4, r0
	bgt _08032E82
	adds r0, r2, #0
	cmp r2, #0
	bge _08032E6A
	adds r0, #0xf
_08032E6A:
	asrs r3, r0, #4
	ldr r1, [r5, #0x44]
	adds r0, r1, #0
	subs r0, #0x20
	cmp r3, r0
	blt _08032E82
	adds r0, r1, #0
	adds r0, #0x20
	cmp r3, r0
	bgt _08032E82
	movs r0, #0
	b _08032E84
_08032E82:
	movs r0, #1
_08032E84:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_8032E8C
sub_8032E8C: @ 0x08032E8C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0
	str r0, [r5, #0x18]
	adds r6, r5, #0
	adds r6, #0x18
	ldrb r1, [r4, #4]
	ldrb r2, [r4, #5]
	adds r0, r6, #0
	bl sub_8033998
	ldr r1, [r5, #0x38]
	ldrb r0, [r4, #3]
	movs r2, #2
	ands r2, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r6, #0
	bl sub_8033A08
	ldr r0, _08032ECC @ =0x0600C000
	str r0, [r5, #0x2c]
	adds r0, r4, #0
	adds r0, #0xd4
	ldr r0, [r0]
	adds r4, r4, r0
	str r4, [r5, #0x34]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08032ECC: .4byte 0x0600C000

	thumb_func_start sub_08032ED0
sub_08032ED0: @ 0x08032ED0
	ldr r1, [r0, #0x10]
	str r1, [r0, #0x18]
	bx lr
	.align 2, 0

	thumb_func_start sub_8032ED8
sub_8032ED8: @ 0x08032ED8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	ldr r4, [r0, #0x38]
	lsls r0, r4, #1
	mov r1, r8
	ldr r2, [r1, #0x24]
	subs r1, r2, #1
	ands r0, r1
	adds r1, r0, #0
	muls r1, r2, r1
	mov r2, r8
	ldr r0, [r2, #0x14]
	adds r0, r0, r1
	mov sb, r0
	cmp r4, #0
	blt _08032F1A
	ldr r0, [r2, #0x30]
	cmp r4, r0
	bge _08032F1A
	ldr r0, [r2, #0x28]
	ldr r2, [r2, #0x34]
	adds r6, r0, #0
	cmn r2, r6
	blt _08032F1A
	mov r5, r8
	ldr r3, [r5, #0x2c]
	mov ip, r3
	cmp r2, r3
	blt _08032F3C
_08032F1A:
	mov r1, sb
	mov r0, r8
	ldr r6, [r0, #0x28]
	cmp r6, #0
	bgt _08032F26
	b _0803312A
_08032F26:
	movs r2, #0
	lsls r3, r6, #1
	adds r5, r6, #0
_08032F2C:
	strh r2, [r1]
	adds r0, r3, r1
	strh r2, [r0]
	adds r1, #2
	subs r5, #1
	cmp r5, #0
	bne _08032F2C
	b _0803312A
_08032F3C:
	adds r0, r4, #0
	muls r0, r3, r0
	lsls r0, r0, #2
	lsls r1, r2, #1
	adds r0, r0, r1
	mov sl, r0
	cmp r2, #0
	bge _08032FB0
	subs r3, r6, #1
	ands r3, r2
	subs r2, r6, r3
	lsls r0, r3, #1
	mov r5, sb
	adds r1, r0, r5
	adds r7, r4, #0
	cmp r2, #0
	ble _08032F70
	movs r4, #0
	lsls r5, r6, #1
_08032F62:
	strh r4, [r1]
	adds r0, r5, r1
	strh r4, [r0]
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bne _08032F62
_08032F70:
	mov r1, ip
	lsls r0, r1, #2
	adds r1, r7, #0
	muls r1, r0, r1
	mov r2, sb
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08032F9E
	cmp r3, #0
	bgt _08032F88
	b _0803312A
_08032F88:
	movs r4, #0
	lsls r1, r6, #1
	adds r5, r3, #0
_08032F8E:
	strh r4, [r2]
	adds r0, r1, r2
	strh r4, [r0]
	adds r2, #2
	subs r5, #1
	cmp r5, #0
	bne _08032F8E
	b _0803312A
_08032F9E:
	mov r2, r8
	ldr r4, [r2, #0x20]
	adds r4, r4, r1
	ldr r5, _08032FAC @ =0x001FFFFF
	ands r5, r3
	b _08033048
	.align 2, 0
_08032FAC: .4byte 0x001FFFFF
_08032FB0:
	subs r0, r3, r6
	cmp r2, r0
	ble _08033010
	subs r3, r6, #1
	ands r3, r2
	mov r1, sb
	cmp r3, #0
	ble _08032FD4
	movs r4, #0
	lsls r5, r6, #1
	adds r2, r3, #0
_08032FC6:
	strh r4, [r1]
	adds r0, r5, r1
	strh r4, [r0]
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bne _08032FC6
_08032FD4:
	subs r7, r6, r3
	lsls r0, r3, #1
	add sb, r0
	mov r2, sb
	movs r0, #1
	rsbs r0, r0, #0
	cmp sl, r0
	bne _08033000
	cmp r7, #0
	bgt _08032FEA
	b _0803312A
_08032FEA:
	movs r3, #0
	lsls r1, r6, #1
	adds r5, r7, #0
_08032FF0:
	strh r3, [r2]
	adds r0, r1, r2
	strh r3, [r0]
	adds r2, #2
	subs r5, #1
	cmp r5, #0
	bne _08032FF0
	b _0803312A
_08033000:
	mov r2, r8
	ldr r4, [r2, #0x20]
	add r4, sl
	ldr r5, _0803300C @ =0x001FFFFF
	ands r5, r7
	b _08033048
	.align 2, 0
_0803300C: .4byte 0x001FFFFF
_08033010:
	subs r5, r6, #1
	ands r5, r2
	cmp r5, #0
	bne _08033070
	mov r2, sb
	movs r0, #1
	rsbs r0, r0, #0
	cmp sl, r0
	bne _0803303E
	cmp r5, r6
	blt _08033028
	b _0803312A
_08033028:
	movs r3, #0
	lsls r4, r6, #1
	adds r1, r6, #0
_0803302E:
	strh r3, [r2]
	adds r0, r4, r2
	strh r3, [r0]
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _0803302E
	b _0803312A
_0803303E:
	mov r2, r8
	ldr r4, [r2, #0x20]
	add r4, sl
	ldr r5, _0803306C @ =0x001FFFFF
	ands r5, r6
_08033048:
	adds r0, r4, #0
	mov r1, sb
	adds r2, r5, #0
	bl CpuSet
	mov r1, r8
	ldr r0, [r1, #0x2c]
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r1, [r1, #0x28]
	lsls r1, r1, #1
	add r1, sb
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuSet
	b _0803312A
	.align 2, 0
_0803306C: .4byte 0x001FFFFF
_08033070:
	adds r7, r5, #0
	subs r0, r6, r7
	lsls r0, r0, #1
	mov r2, sl
	adds r1, r0, r2
	mov r2, sb
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080330A0
	lsls r5, r7, #1
	cmp r7, #0
	ble _080330CC
	movs r4, #0
	lsls r1, r6, #1
	adds r3, r7, #0
_08033090:
	strh r4, [r2]
	adds r0, r1, r2
	strh r4, [r0]
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bne _08033090
	b _080330CC
_080330A0:
	mov r5, r8
	ldr r4, [r5, #0x20]
	adds r4, r4, r1
	ldr r5, _080330FC @ =0x001FFFFF
	ands r5, r7
	adds r0, r4, #0
	mov r1, sb
	adds r2, r5, #0
	bl CpuSet
	mov r1, r8
	ldr r0, [r1, #0x2c]
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r1, [r1, #0x28]
	lsls r1, r1, #1
	add r1, sb
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuSet
	lsls r5, r7, #1
_080330CC:
	mov r2, r8
	ldr r1, [r2, #0x28]
	subs r7, r1, r7
	add sb, r5
	mov r2, sb
	movs r0, #1
	rsbs r0, r0, #0
	adds r6, r1, #0
	cmp sl, r0
	bne _08033100
	cmp r7, #0
	ble _0803312A
	movs r3, #0
	lsls r5, r6, #1
	adds r1, r7, #0
_080330EA:
	strh r3, [r2]
	adds r0, r5, r2
	strh r3, [r0]
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _080330EA
	b _0803312A
	.align 2, 0
_080330FC: .4byte 0x001FFFFF
_08033100:
	mov r5, r8
	ldr r4, [r5, #0x20]
	add r4, sl
	ldr r5, _08033138 @ =0x001FFFFF
	ands r5, r7
	adds r0, r4, #0
	mov r1, sb
	adds r2, r5, #0
	bl CpuSet
	mov r1, r8
	ldr r0, [r1, #0x2c]
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r1, [r1, #0x28]
	lsls r1, r1, #1
	add r1, sb
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuSet
_0803312A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033138: .4byte 0x001FFFFF

	thumb_func_start sub_803313C
sub_803313C: @ 0x0803313C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov ip, r0
	ldr r1, [r0, #0x34]
	lsls r0, r1, #1
	str r0, [sp]
	mov r2, ip
	ldr r0, [r2, #0x24]
	subs r0, #1
	ldr r3, [sp]
	ands r3, r0
	str r3, [sp]
	cmp r1, #0
	blt _08033178
	ldr r4, [r2, #0x2c]
	str r4, [sp, #0x14]
	cmp r1, r4
	bge _08033178
	ldr r0, [r2, #0x28]
	adds r6, r0, #0
	ldr r4, [r2, #0x38]
	cmn r4, r6
	blt _08033178
	ldr r5, [r2, #0x30]
	cmp r4, r5
	blt _080331A8
_08033178:
	movs r1, #0x96
	lsls r1, r1, #2
	add r1, ip
	mov r7, ip
	ldr r6, [r7, #0x28]
	ldr r0, [sp]
	asrs r0, r0, #0x1f
	str r0, [sp, #8]
	ldr r2, [r7, #0x14]
	str r2, [sp, #0xc]
	cmp r6, #0
	bgt _08033192
	b _0803345A
_08033192:
	movs r3, #0
	lsls r4, r6, #1
	adds r2, r6, #0
_08033198:
	strh r3, [r1]
	adds r0, r4, r1
	strh r3, [r0]
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bne _08033198
	b _0803345A
_080331A8:
	ldr r3, [sp, #0x14]
	lsls r3, r3, #2
	str r3, [sp, #4]
	adds r3, r4, #0
	ldr r7, [sp, #4]
	adds r2, r3, #0
	muls r2, r7, r2
	mov r0, ip
	ldr r1, [r0, #0x34]
	lsls r0, r1, #1
	adds r2, r2, r0
	str r2, [sp, #0x18]
	mov r8, r1
	cmp r3, #0
	bge _08033258
	subs r4, r6, #1
	ands r4, r3
	subs r3, r6, r4
	lsls r0, r4, #1
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r7, ip
	adds r2, r7, r0
	adds r7, r1, #0
	add r7, ip
	ldr r0, [sp]
	asrs r0, r0, #0x1f
	str r0, [sp, #8]
	mov r1, ip
	ldr r1, [r1, #0x14]
	str r1, [sp, #0xc]
	cmp r3, #0
	ble _080331FE
	movs r5, #0
	lsls r1, r6, #1
_080331F0:
	strh r5, [r2]
	adds r0, r1, r2
	strh r5, [r0]
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bne _080331F0
_080331FE:
	mov r2, r8
	lsls r1, r2, #1
	adds r2, r7, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08033228
	cmp r4, #0
	bgt _08033212
	b _0803345A
_08033212:
	movs r3, #0
	lsls r5, r6, #1
	adds r1, r4, #0
_08033218:
	strh r3, [r2]
	adds r0, r5, r2
	strh r3, [r0]
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bne _08033218
	b _0803345A
_08033228:
	mov r3, ip
	ldr r0, [r3, #0x20]
	adds r3, r0, r1
	cmp r4, #0
	bgt _08033234
	b _0803345A
_08033234:
	lsls r7, r6, #1
	mov r8, r7
	ldr r0, [sp, #0x14]
	lsls r7, r0, #1
	lsls r5, r0, #2
_0803323E:
	ldrh r0, [r3]
	strh r0, [r2]
	mov r0, r8
	adds r1, r0, r2
	adds r0, r7, r3
	ldrh r0, [r0]
	strh r0, [r1]
	adds r2, #2
	adds r3, r3, r5
	subs r4, #1
	cmp r4, #0
	bne _0803323E
	b _0803345A
_08033258:
	subs r0, r5, r6
	cmp r3, r0
	ble _080332F2
	subs r4, r6, #1
	ands r4, r3
	movs r1, #0x96
	lsls r1, r1, #2
	add r1, ip
	ldr r2, [sp]
	asrs r2, r2, #0x1f
	str r2, [sp, #8]
	mov r3, ip
	ldr r3, [r3, #0x14]
	str r3, [sp, #0xc]
	cmp r4, #0
	ble _0803328C
	movs r5, #0
	lsls r2, r6, #1
	adds r3, r4, #0
_0803327E:
	strh r5, [r1]
	adds r0, r2, r1
	strh r5, [r0]
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bne _0803327E
_0803328C:
	subs r1, r6, r4
	lsls r0, r4, #1
	movs r4, #0x96
	lsls r4, r4, #2
	adds r0, r0, r4
	mov r7, ip
	adds r3, r7, r0
	movs r0, #1
	rsbs r0, r0, #0
	ldr r2, [sp, #0x18]
	cmp r2, r0
	bne _080332BE
	cmp r1, #0
	bgt _080332AA
	b _0803345A
_080332AA:
	movs r2, #0
	lsls r4, r6, #1
_080332AE:
	strh r2, [r3]
	adds r0, r4, r3
	strh r2, [r0]
	adds r3, #2
	subs r1, #1
	cmp r1, #0
	bne _080332AE
	b _0803345A
_080332BE:
	mov r4, ip
	ldr r0, [r4, #0x20]
	ldr r7, [sp, #0x18]
	adds r2, r0, r7
	cmp r1, #0
	bgt _080332CC
	b _0803345A
_080332CC:
	lsls r0, r6, #1
	mov r8, r0
	ldr r4, [sp, #0x14]
	lsls r7, r4, #1
	lsls r5, r4, #2
	adds r4, r1, #0
_080332D8:
	ldrh r0, [r2]
	strh r0, [r3]
	mov r0, r8
	adds r1, r0, r3
	adds r0, r7, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r3, #2
	adds r2, r2, r5
	subs r4, #1
	cmp r4, #0
	bne _080332D8
	b _0803345A
_080332F2:
	subs r1, r6, #1
	ands r1, r4
	cmp r1, #0
	bne _08033372
	movs r3, #0x96
	lsls r3, r3, #2
	add r3, ip
	movs r0, #1
	rsbs r0, r0, #0
	ldr r2, [sp, #0x18]
	cmp r2, r0
	bne _08033332
	ldr r4, [sp]
	asrs r4, r4, #0x1f
	str r4, [sp, #8]
	mov r7, ip
	ldr r7, [r7, #0x14]
	str r7, [sp, #0xc]
	cmp r1, r6
	blt _0803331C
	b _0803345A
_0803331C:
	movs r2, #0
	lsls r4, r6, #1
	adds r1, r6, #0
_08033322:
	strh r2, [r3]
	adds r0, r4, r3
	strh r2, [r0]
	adds r3, #2
	subs r1, #1
	cmp r1, #0
	bne _08033322
	b _0803345A
_08033332:
	mov r2, ip
	ldr r0, [r2, #0x20]
	ldr r4, [sp, #0x18]
	adds r2, r0, r4
	ldr r7, [sp]
	asrs r7, r7, #0x1f
	str r7, [sp, #8]
	mov r0, ip
	ldr r0, [r0, #0x14]
	str r0, [sp, #0xc]
	cmp r1, r6
	blt _0803334C
	b _0803345A
_0803334C:
	lsls r1, r6, #1
	mov r8, r1
	ldr r4, [sp, #0x14]
	lsls r7, r4, #1
	ldr r5, [sp, #4]
	adds r4, r6, #0
_08033358:
	ldrh r0, [r2]
	strh r0, [r3]
	mov r0, r8
	adds r1, r0, r3
	adds r0, r7, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r3, #2
	adds r2, r2, r5
	subs r4, #1
	cmp r4, #0
	bne _08033358
	b _0803345A
_08033372:
	adds r5, r1, #0
	subs r0, r6, r5
	ldr r1, [sp, #4]
	muls r0, r1, r0
	ldr r2, [sp, #0x18]
	adds r1, r2, r0
	movs r3, #0x96
	lsls r3, r3, #2
	add r3, ip
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080333B6
	lsls r4, r5, #1
	str r4, [sp, #0x10]
	ldr r7, [sp]
	asrs r7, r7, #0x1f
	str r7, [sp, #8]
	mov r0, ip
	ldr r0, [r0, #0x14]
	str r0, [sp, #0xc]
	cmp r5, #0
	ble _080333FA
	movs r4, #0
	lsls r2, r6, #1
	adds r1, r5, #0
_080333A6:
	strh r4, [r3]
	adds r0, r2, r3
	strh r4, [r0]
	adds r3, #2
	subs r1, #1
	cmp r1, #0
	bne _080333A6
	b _080333FA
_080333B6:
	mov r2, ip
	ldr r0, [r2, #0x20]
	adds r2, r0, r1
	lsls r4, r5, #1
	str r4, [sp, #0x10]
	ldr r7, [sp]
	asrs r7, r7, #0x1f
	str r7, [sp, #8]
	mov r0, ip
	ldr r0, [r0, #0x14]
	str r0, [sp, #0xc]
	cmp r5, #0
	ble _080333FA
	lsls r1, r6, #1
	mov sl, r1
	ldr r4, [sp, #0x14]
	lsls r4, r4, #1
	mov sb, r4
	ldr r7, [sp, #4]
	mov r8, r7
	adds r4, r5, #0
_080333E0:
	ldrh r0, [r2]
	strh r0, [r3]
	mov r0, sl
	adds r1, r0, r3
	mov r7, sb
	adds r0, r7, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r3, #2
	add r2, r8
	subs r4, #1
	cmp r4, #0
	bne _080333E0
_080333FA:
	subs r1, r6, r5
	ldr r2, [sp, #0x10]
	movs r3, #0x96
	lsls r3, r3, #2
	adds r0, r2, r3
	mov r4, ip
	adds r3, r4, r0
	movs r0, #1
	rsbs r0, r0, #0
	ldr r7, [sp, #0x18]
	cmp r7, r0
	bne _0803342A
	cmp r1, #0
	ble _0803345A
	movs r2, #0
	lsls r4, r6, #1
_0803341A:
	strh r2, [r3]
	adds r0, r4, r3
	strh r2, [r0]
	adds r3, #2
	subs r1, #1
	cmp r1, #0
	bne _0803341A
	b _0803345A
_0803342A:
	mov r2, ip
	ldr r0, [r2, #0x20]
	ldr r4, [sp, #0x18]
	adds r2, r0, r4
	cmp r1, #0
	ble _0803345A
	lsls r7, r6, #1
	mov r8, r7
	ldr r0, [sp, #0x14]
	lsls r7, r0, #1
	lsls r5, r0, #2
	adds r4, r1, #0
_08033442:
	ldrh r0, [r2]
	strh r0, [r3]
	mov r0, r8
	adds r1, r0, r3
	adds r0, r7, r2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r3, #2
	adds r2, r2, r5
	subs r4, #1
	cmp r4, #0
	bne _08033442
_0803345A:
	movs r4, #0x96
	lsls r4, r4, #2
	add r4, ip
	ldr r1, [sp, #0xc]
	ldr r3, [sp]
	adds r2, r1, r3
	cmp r6, #0
	ble _08033490
	mov r7, ip
	ldr r1, [r7, #0x24]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	lsls r5, r0, #1
	lsls r7, r1, #1
	adds r3, r6, #0
_0803347A:
	ldrh r0, [r4]
	strh r0, [r2]
	adds r1, r5, r2
	adds r0, r5, r4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r4, #2
	adds r2, r2, r7
	subs r3, #1
	cmp r3, #0
	bne _0803347A
_08033490:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_80334A0
sub_80334A0: @ 0x080334A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r4, [r7, #0x38]
	lsls r0, r4, #1
	ldr r2, [r7, #0x24]
	subs r1, r2, #1
	ands r0, r1
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, _08033504 @ =0x02000000
	adds r1, r1, r0
	mov r8, r1
	cmp r4, #0
	blt _080334DA
	ldr r0, [r7, #0x30]
	cmp r4, r0
	bge _080334DA
	ldr r6, [r7, #0x28]
	ldr r2, [r7, #0x34]
	cmn r2, r6
	blt _080334DA
	ldr r3, [r7, #0x2c]
	cmp r2, r3
	blt _0803350C
_080334DA:
	ldr r4, [r7, #0x28]
	mov r0, sp
	movs r5, #0
	strh r5, [r0]
	ldr r0, _08033508 @ =0x001FFFFF
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r4, r0
	mov r0, sp
	mov r1, r8
	adds r2, r4, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r5, [r0]
	ldr r1, [r7, #0x28]
	lsls r1, r1, #1
	add r1, r8
	b _0803374A
	.align 2, 0
_08033504: .4byte 0x02000000
_08033508: .4byte 0x001FFFFF
_0803350C:
	adds r0, r4, #0
	muls r0, r3, r0
	lsls r0, r0, #2
	lsls r1, r2, #1
	adds r0, r0, r1
	mov sb, r0
	cmp r2, #0
	bge _080335AC
	subs r0, r6, #1
	ands r0, r2
	mov sb, r0
	subs r5, r6, r0
	lsls r4, r0, #1
	add r4, r8
	mov r0, sp
	movs r1, #0
	mov sl, r1
	strh r1, [r0]
	ldr r2, _08033598 @ =0x001FFFFF
	ands r5, r2
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r5, r0
	mov r0, sp
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuSet
	mov r6, sp
	adds r6, #2
	mov r1, sl
	strh r1, [r6]
	ldr r0, [r7, #0x28]
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl CpuSet
	ldr r0, [r7, #0x2c]
	lsls r0, r0, #2
	ldr r1, [r7, #0x38]
	muls r1, r0, r1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0803359C
	mov r0, sp
	mov r2, sl
	strh r2, [r0]
	ldr r4, _08033598 @ =0x001FFFFF
	mov r0, sb
	ands r4, r0
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r4, r1
	mov r0, sp
	mov r1, r8
	adds r2, r4, #0
	bl CpuSet
	mov r2, sl
	strh r2, [r6]
	ldr r1, [r7, #0x28]
	lsls r1, r1, #1
	add r1, r8
	adds r0, r6, #0
	b _0803374A
	.align 2, 0
_08033598: .4byte 0x001FFFFF
_0803359C:
	ldr r4, [r7, #0x20]
	adds r4, r4, r1
	ldr r5, _080335A8 @ =0x001FFFFF
	mov r0, sb
	ands r5, r0
	b _0803367C
	.align 2, 0
_080335A8: .4byte 0x001FFFFF
_080335AC:
	subs r0, r3, r6
	cmp r2, r0
	ble _08033638
	subs r5, r6, #1
	ands r5, r2
	mov r0, sp
	movs r1, #0
	mov sl, r1
	strh r1, [r0]
	adds r4, r5, #0
	ldr r2, _08033624 @ =0x001FFFFF
	ands r4, r2
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r4, r0
	mov r0, sp
	mov r1, r8
	adds r2, r4, #0
	bl CpuSet
	mov r6, sp
	adds r6, #2
	mov r1, sl
	strh r1, [r6]
	ldr r1, [r7, #0x28]
	lsls r1, r1, #1
	add r1, r8
	adds r0, r6, #0
	adds r2, r4, #0
	bl CpuSet
	ldr r0, [r7, #0x28]
	subs r1, r0, r5
	lsls r5, r5, #1
	add r8, r5
	movs r0, #1
	rsbs r0, r0, #0
	cmp sb, r0
	bne _08033628
	mov r0, sp
	mov r2, sl
	strh r2, [r0]
	ldr r4, _08033624 @ =0x001FFFFF
	ands r4, r1
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r4, r0
	mov r0, sp
	mov r1, r8
	adds r2, r4, #0
	bl CpuSet
	mov r1, sl
	strh r1, [r6]
	ldr r1, [r7, #0x28]
	lsls r1, r1, #1
	add r1, r8
	adds r0, r6, #0
	b _0803374A
	.align 2, 0
_08033624: .4byte 0x001FFFFF
_08033628:
	ldr r4, [r7, #0x20]
	add r4, sb
	ldr r5, _08033634 @ =0x001FFFFF
	ands r5, r1
	b _0803367C
	.align 2, 0
_08033634: .4byte 0x001FFFFF
_08033638:
	subs r5, r6, #1
	ands r5, r2
	cmp r5, #0
	bne _080336A0
	movs r0, #1
	rsbs r0, r0, #0
	cmp sb, r0
	bne _08033674
	mov r0, sp
	strh r5, [r0]
	ldr r4, _08033670 @ =0x001FFFFF
	ands r4, r6
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r4, r0
	mov r0, sp
	mov r1, r8
	adds r2, r4, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r5, [r0]
	ldr r1, [r7, #0x28]
	lsls r1, r1, #1
	add r1, r8
	b _0803374A
	.align 2, 0
_08033670: .4byte 0x001FFFFF
_08033674:
	ldr r4, [r7, #0x20]
	add r4, sb
	ldr r5, _0803369C @ =0x001FFFFF
	ands r5, r6
_0803367C:
	adds r0, r4, #0
	mov r1, r8
	adds r2, r5, #0
	bl CpuSet
	ldr r0, [r7, #0x2c]
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r1, [r7, #0x28]
	lsls r1, r1, #1
	add r1, r8
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuSet
	b _0803377E
	.align 2, 0
_0803369C: .4byte 0x001FFFFF
_080336A0:
	mov sl, r5
	subs r0, r6, r5
	lsls r0, r0, #1
	mov r2, sb
	adds r5, r0, r2
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	bne _080336E8
	mov r0, sp
	movs r5, #0
	strh r5, [r0]
	ldr r4, _080336E4 @ =0x001FFFFF
	mov r0, sl
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r4, r0
	mov r0, sp
	mov r1, r8
	adds r2, r4, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r5, [r0]
	ldr r1, [r7, #0x28]
	lsls r1, r1, #1
	add r1, r8
	adds r2, r4, #0
	bl CpuSet
	b _08033710
	.align 2, 0
_080336E4: .4byte 0x001FFFFF
_080336E8:
	ldr r4, [r7, #0x20]
	adds r4, r4, r5
	ldr r5, _08033754 @ =0x001FFFFF
	mov r1, sl
	ands r5, r1
	adds r0, r4, #0
	mov r1, r8
	adds r2, r5, #0
	bl CpuSet
	ldr r0, [r7, #0x2c]
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r1, [r7, #0x28]
	lsls r1, r1, #1
	add r1, r8
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuSet
_08033710:
	ldr r0, [r7, #0x28]
	mov r2, sl
	subs r1, r0, r2
	lsls r0, r2, #1
	mov r2, r8
	adds r6, r0, r2
	movs r0, #1
	rsbs r0, r0, #0
	cmp sb, r0
	bne _08033758
	mov r0, sp
	movs r5, #0
	strh r5, [r0]
	ldr r4, _08033754 @ =0x001FFFFF
	ands r4, r1
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r4, r0
	mov r0, sp
	adds r1, r6, #0
	adds r2, r4, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r5, [r0]
	ldr r1, [r7, #0x28]
	lsls r1, r1, #1
	adds r1, r6, r1
_0803374A:
	adds r2, r4, #0
	bl CpuSet
	b _0803377E
	.align 2, 0
_08033754: .4byte 0x001FFFFF
_08033758:
	ldr r4, [r7, #0x20]
	add r4, sb
	ldr r5, _08033790 @ =0x001FFFFF
	ands r5, r1
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl CpuSet
	ldr r0, [r7, #0x2c]
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r1, [r7, #0x28]
	lsls r1, r1, #1
	adds r1, r6, r1
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuSet
_0803377E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033790: .4byte 0x001FFFFF

	thumb_func_start sub_8033794
sub_8033794: @ 0x08033794
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x28]
	lsrs r1, r2, #0x1f
	adds r1, r2, r1
	asrs r1, r1, #1
	ldr r0, [r4, #0x40]
	subs r0, r0, r1
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x38]
	asrs r2, r2, #3
	cmp r2, #0
	ble _0803381A
	adds r5, r2, #0
_080337B4:
	adds r0, r4, #0
	bl sub_80334A0
	ldr r0, [r4, #0x38]
	adds r0, #1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_80334A0
	ldr r0, [r4, #0x38]
	adds r0, #1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_80334A0
	ldr r0, [r4, #0x38]
	adds r0, #1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_80334A0
	ldr r0, [r4, #0x38]
	adds r0, #1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_80334A0
	ldr r0, [r4, #0x38]
	adds r0, #1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_80334A0
	ldr r0, [r4, #0x38]
	adds r0, #1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_80334A0
	ldr r0, [r4, #0x38]
	adds r0, #1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_80334A0
	ldr r0, [r4, #0x38]
	adds r0, #1
	str r0, [r4, #0x38]
	subs r5, #1
	cmp r5, #0
	bne _080337B4
_0803381A:
	bl dmaq_getVBlankDmaQueue
	ldr r1, _08033830 @ =0x02000000
	ldr r2, [r4, #0x14]
	ldr r3, _08033834 @ =0x80002000
	bl dmaq_enqueue
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08033830: .4byte 0x02000000
_08033834: .4byte 0x80002000

	thumb_func_start sub_8033838
sub_8033838: @ 0x08033838
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov ip, r1
	mov r8, r2
	ldr r0, [r4, #0x24]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r2, r0, #0
	subs r2, #8
	lsls r3, r3, #0x10
	ldr r7, _080338E4 @ =gSinTable
	movs r0, #0x80
	lsls r0, r0, #0x17
	adds r3, r3, r0
	asrs r3, r3, #0x10
	adds r0, r3, #0
	cmp r3, #0
	bge _08033864
	adds r0, #0x3f
_08033864:
	asrs r1, r0, #6
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	ldr r6, _080338E8 @ =0x000003FF
	ands r0, r6
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	muls r0, r2, r0
	cmp r0, #0
	bge _08033880
	ldr r5, _080338EC @ =0x00007FFF
	adds r0, r0, r5
_08033880:
	asrs r5, r0, #0xf
	adds r0, r1, #0
	ands r0, r6
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	muls r0, r2, r0
	cmp r0, #0
	bge _08033896
	ldr r1, _080338EC @ =0x00007FFF
	adds r0, r0, r1
_08033896:
	asrs r2, r0, #0xf
	mov r1, ip
	subs r0, r1, r5
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r5, r0, #1
	mov r0, r8
	subs r2, r0, r2
	lsrs r0, r2, #0x1f
	adds r2, r2, r0
	asrs r3, r2, #1
	ldr r1, [r4, #0x40]
	str r1, [r4, #0x48]
	ldr r0, [r4, #0x44]
	str r0, [r4, #0x4c]
	str r5, [r4, #0x40]
	str r3, [r4, #0x44]
	subs r7, r5, r1
	subs r6, r3, r0
	ldr r0, [r4, #0x28]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r2, r0, #1
	rsbs r0, r2, #0
	cmp r6, r0
	blt _080338D6
	cmp r2, r6
	blt _080338D6
	cmp r7, r0
	blt _080338D6
	cmp r2, r7
	bge _080338F0
_080338D6:
	adds r0, r4, #0
	mov r1, ip
	mov r2, r8
	bl sub_8033794
	b _0803398E
	.align 2, 0
_080338E4: .4byte gSinTable
_080338E8: .4byte 0x000003FF
_080338EC: .4byte 0x00007FFF
_080338F0:
	cmp r6, #0
	beq _08033938
	subs r0, r5, r2
	str r0, [r4, #0x34]
	cmp r6, #0
	bge _0803391A
	subs r0, r3, r2
	str r0, [r4, #0x38]
	movs r5, #0
	cmp r5, r6
	ble _08033938
_08033906:
	adds r0, r4, #0
	bl sub_8032ED8
	ldr r0, [r4, #0x38]
	adds r0, #1
	str r0, [r4, #0x38]
	subs r5, #1
	cmp r5, r6
	bgt _08033906
	b _08033938
_0803391A:
	adds r0, r3, r2
	subs r0, #1
	str r0, [r4, #0x38]
	cmp r6, #0
	ble _08033938
	adds r5, r6, #0
_08033926:
	adds r0, r4, #0
	bl sub_8032ED8
	ldr r0, [r4, #0x38]
	subs r0, #1
	str r0, [r4, #0x38]
	subs r5, #1
	cmp r5, #0
	bne _08033926
_08033938:
	cmp r7, #0
	beq _0803398E
	ldr r0, [r4, #0x28]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r1, r0, #1
	ldr r0, [r4, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x38]
	cmp r7, #0
	bge _0803396E
	ldr r0, [r4, #0x40]
	subs r0, r0, r1
	str r0, [r4, #0x34]
	movs r5, #0
	cmp r5, r7
	ble _0803398E
_0803395A:
	adds r0, r4, #0
	bl sub_803313C
	ldr r0, [r4, #0x34]
	adds r0, #1
	str r0, [r4, #0x34]
	subs r5, #1
	cmp r5, r7
	bgt _0803395A
	b _0803398E
_0803396E:
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	subs r0, #1
	str r0, [r4, #0x34]
	cmp r7, #0
	ble _0803398E
	adds r5, r7, #0
_0803397C:
	adds r0, r4, #0
	bl sub_803313C
	ldr r0, [r4, #0x34]
	subs r0, #1
	str r0, [r4, #0x34]
	subs r5, #1
	cmp r5, #0
	bne _0803397C
_0803398E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_8033998
sub_8033998: @ 0x08033998
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	movs r0, #0
	str r0, [r3]
	ldr r0, _080339C4 @ =0x0400000C
	ldrh r0, [r0]
	movs r2, #0xc0
	lsls r2, r2, #8
	adds r1, r2, #0
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r1, r0
	beq _080339DA
	cmp r1, r0
	bgt _080339C8
	cmp r1, #0
	beq _080339D6
	b _080339E6
	.align 2, 0
_080339C4: .4byte 0x0400000C
_080339C8:
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	beq _080339DE
	cmp r1, r2
	beq _080339E2
	b _080339E6
_080339D6:
	movs r0, #0x10
	b _080339E4
_080339DA:
	movs r0, #0x20
	b _080339E4
_080339DE:
	movs r0, #0x40
	b _080339E4
_080339E2:
	movs r0, #0x80
_080339E4:
	str r0, [r3, #0x24]
_080339E6:
	ldr r0, [r3, #0x24]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [r3, #0x28]
	lsls r0, r4, #6
	str r0, [r3, #0x2c]
	lsls r0, r5, #6
	str r0, [r3, #0x30]
	ldr r0, _08033A04 @ =0x02010400
	str r0, [r3, #0x20]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08033A04: .4byte 0x02010400

	thumb_func_start sub_8033A08
sub_8033A08: @ 0x08033A08
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r7, [r0, #0x1c]
	cmp r2, #0
	beq _08033A4A
	adds r6, r1, #0
	adds r5, r7, #0
	movs r0, #0xf
	mov r8, r0
_08033A1C:
	ldrh r0, [r5]
	cmp r0, #0
	beq _08033A34
	adds r4, r7, r0
	bl main_frameProc
	adds r0, r4, #0
	adds r1, r6, #0
	bl LZ77UnCompWram
	bl main_frameProc
_08033A34:
	movs r0, #0x80
	lsls r0, r0, #5
	adds r6, r6, r0
	adds r5, #2
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	mov r0, r8
	cmp r0, #0
	bge _08033A1C
	b _08033A50
_08033A4A:
	adds r0, r7, #0
	bl LZ77UnCompWram
_08033A50:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_8033A5C
sub_8033A5C: @ 0x08033A5C
	ldr r3, [r0, #0x40]
	str r3, [r0, #0x48]
	ldr r3, [r0, #0x44]
	str r3, [r0, #0x4c]
	str r1, [r0, #0x40]
	str r2, [r0, #0x44]
	bx lr
	.align 2, 0

	thumb_func_start sub_08033A6C
sub_08033A6C: @ 0x08033A6C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _08033A94
	cmp r3, #0
	ble _08033ABE
	movs r2, #0
	ldr r0, [r6, #0x28]
	lsls r4, r0, #1
_08033A84:
	strh r2, [r1]
	adds r0, r4, r1
	strh r2, [r0]
	adds r1, #2
	subs r3, #1
	cmp r3, #0
	bne _08033A84
	b _08033ABE
_08033A94:
	asrs r0, r2, #1
	lsls r0, r0, #1
	ldr r4, [r6, #0x20]
	adds r4, r4, r0
	ldr r5, _08033AC4 @ =0x001FFFFF
	ands r5, r3
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl CpuSet
	ldr r0, [r6, #0x2c]
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r1, [r6, #0x28]
	lsls r1, r1, #1
	adds r1, r7, r1
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuSet
_08033ABE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033AC4: .4byte 0x001FFFFF

	thumb_func_start sub_08033AC8
sub_08033AC8: @ 0x08033AC8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r2, #0
	adds r5, r3, #0
	lsls r1, r1, #1
	movs r0, #0x96
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r2, r4, r1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne _08033AFC
	cmp r5, #0
	ble _08033B2E
	movs r1, #0
	ldr r0, [r4, #0x28]
	lsls r4, r0, #1
_08033AEC:
	strh r1, [r2]
	adds r0, r4, r2
	strh r1, [r0]
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bne _08033AEC
	b _08033B2E
_08033AFC:
	asrs r0, r6, #1
	lsls r0, r0, #1
	ldr r1, [r4, #0x20]
	adds r3, r1, r0
	cmp r5, #0
	ble _08033B2E
	ldr r0, [r4, #0x28]
	lsls r0, r0, #1
	mov ip, r0
	ldr r0, [r4, #0x2c]
	lsls r7, r0, #1
	lsls r6, r0, #2
	adds r4, r5, #0
_08033B16:
	ldrh r0, [r3]
	strh r0, [r2]
	mov r0, ip
	adds r1, r0, r2
	adds r0, r7, r3
	ldrh r0, [r0]
	strh r0, [r1]
	adds r2, #2
	adds r3, r3, r6
	subs r4, #1
	cmp r4, #0
	bne _08033B16
_08033B2E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08033B34
sub_08033B34: @ 0x08033B34
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _08033B74
	mov r0, sp
	movs r5, #0
	strh r5, [r0]
	ldr r4, _08033B70 @ =0x001FFFFF
	ands r4, r3
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r4, r0
	mov r0, sp
	adds r2, r4, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r5, [r0]
	ldr r1, [r6, #0x28]
	lsls r1, r1, #1
	adds r1, r7, r1
	adds r2, r4, #0
	bl CpuSet
	b _08033B9E
	.align 2, 0
_08033B70: .4byte 0x001FFFFF
_08033B74:
	asrs r0, r2, #1
	lsls r0, r0, #1
	ldr r4, [r6, #0x20]
	adds r4, r4, r0
	ldr r5, _08033BA8 @ =0x001FFFFF
	ands r5, r3
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl CpuSet
	ldr r0, [r6, #0x2c]
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r1, [r6, #0x28]
	lsls r1, r1, #1
	adds r1, r7, r1
	adds r0, r4, #0
	adds r2, r5, #0
	bl CpuSet
_08033B9E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033BA8: .4byte 0x001FFFFF