@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	song_horn_bowser_grp, bank_044
	.equ	song_horn_bowser_pri, 10
	.equ	song_horn_bowser_rev, 0
	.equ	song_horn_bowser_mvl, 127
	.equ	song_horn_bowser_key, 0

	.section .rodata
	.global	song_horn_bowser
	.align	2

@*********************** Track 01 ***********************@

song_horn_bowser_0:
	.byte		VOL   , 105*song_horn_bowser_mvl/mxv
	.byte	KEYSH , song_horn_bowser_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 27
	.byte		N24   , Cn3 , v127
	.byte	W24
	.byte	FINE

@******************************************************@

	.align	2

song_horn_bowser:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	song_horn_bowser_pri	@ Priority
	.byte	song_horn_bowser_rev	@ Reverb

	.word	song_horn_bowser_grp

	.word	song_horn_bowser_0

	.end