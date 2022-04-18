@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_131_grp, bank_044
	.equ	seq_131_pri, 26
	.equ	seq_131_rev, 0
	.equ	seq_131_mvl, 127
	.equ	seq_131_key, 0

	.section .rodata
	.global	seq_131
	.align	2

@*********************** Track 01 ***********************@

seq_131_0:
	.byte	KEYSH , seq_131_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 107
	.byte		VOL   , 50*seq_131_mvl/mxv
	.byte		N02   , An3 , v127
	.byte	W02
	.byte		        Gn3 
	.byte	W02
	.byte		        En3 
	.byte	W02
	.byte		        Cn3 
	.byte	W02
	.byte		        Bn2 
	.byte	W02
	.byte		        Gn2 
	.byte	W14
	.byte	FINE

@*********************** Track 02 ***********************@

seq_131_1:
	.byte	KEYSH , seq_131_key+0
	.byte		VOICE , 108
	.byte		VOL   , 50*seq_131_mvl/mxv
	.byte		BENDR , 2
	.byte		BEND  , c_v-24
	.byte		N02   , An3 , v064
	.byte	W02
	.byte		        Gn3 
	.byte	W02
	.byte		        En3 
	.byte	W02
	.byte		        Cn3 
	.byte	W02
	.byte		        Bn2 
	.byte	W02
	.byte		        Gn2 
	.byte	W14
	.byte	FINE

@******************************************************@

	.align	2

seq_131:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_131_pri	@ Priority
	.byte	seq_131_rev	@ Reverb

	.word	seq_131_grp

	.word	seq_131_0
	.word	seq_131_1

	.end