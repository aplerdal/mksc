@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_273_grp, bank_013
	.equ	seq_273_pri, 100
	.equ	seq_273_rev, 0
	.equ	seq_273_mvl, 127
	.equ	seq_273_key, 0

	.section .rodata
	.global	seq_273
	.align	2

@*********************** Track 01 ***********************@

seq_273_0:
	.byte		VOL   , 110*seq_273_mvl/mxv
	.byte	KEYSH , seq_273_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 30
	.byte		N05   , Dn3 , v127
	.byte	W06
	.byte		        As2 
	.byte	W06
	.byte		N18   , Cs3 
	.byte	W12
	.byte	W06
	.byte		N05   , Gs2 
	.byte	W09
	.byte		N32   , As2 
	.byte	W09
	.byte	W24
	.byte	FINE

@******************************************************@

	.align	2

seq_273:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_273_pri	@ Priority
	.byte	seq_273_rev	@ Reverb

	.word	seq_273_grp

	.word	seq_273_0

	.end