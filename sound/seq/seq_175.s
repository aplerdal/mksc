@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_175_grp, bank_044
	.equ	seq_175_pri, 20
	.equ	seq_175_rev, 0
	.equ	seq_175_mvl, 127
	.equ	seq_175_key, 0

	.section .rodata
	.global	seq_175
	.align	2

@*********************** Track 01 ***********************@

seq_175_0:
	.byte		VOL   , 127*seq_175_mvl/mxv
	.byte	KEYSH , seq_175_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 89
	.byte		N32   , As2 , v127
	.byte	W96
	.byte	FINE

@******************************************************@

	.align	2

seq_175:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_175_pri	@ Priority
	.byte	seq_175_rev	@ Reverb

	.word	seq_175_grp

	.word	seq_175_0

	.end