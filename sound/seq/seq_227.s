@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_227_grp, bank_013
	.equ	seq_227_pri, 100
	.equ	seq_227_rev, 0
	.equ	seq_227_mvl, 127
	.equ	seq_227_key, 0

	.section .rodata
	.global	seq_227
	.align	2

@*********************** Track 01 ***********************@

seq_227_0:
	.byte		VOL   , 127*seq_227_mvl/mxv
	.byte	KEYSH , seq_227_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 28
	.byte		N68   , Cn3 , v127
	.byte	W24
	.byte	W24
	.byte	W24
	.byte	FINE

@******************************************************@

	.align	2

seq_227:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_227_pri	@ Priority
	.byte	seq_227_rev	@ Reverb

	.word	seq_227_grp

	.word	seq_227_0

	.end