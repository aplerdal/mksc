@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	song_horn_dk_grp, bank_044
	.equ	song_horn_dk_pri, 10
	.equ	song_horn_dk_rev, 0
	.equ	song_horn_dk_mvl, 127
	.equ	song_horn_dk_key, 0

	.section .rodata
	.global	song_horn_dk
	.align	2

@*********************** Track 01 ***********************@

song_horn_dk_0:
	.byte		VOL   , 110*song_horn_dk_mvl/mxv
	.byte	KEYSH , song_horn_dk_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 26
	.byte		N19   , Cn3 , v127
	.byte	W24
	.byte	FINE

@******************************************************@

	.align	2

song_horn_dk:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song_horn_dk_pri	@ Priority
	.byte	song_horn_dk_rev	@ Reverb

	.word	song_horn_dk_grp

	.word	song_horn_dk_0

	.end