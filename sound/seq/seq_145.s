@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_145_grp, bank_044
	.equ	seq_145_pri, 30
	.equ	seq_145_rev, 0
	.equ	seq_145_mvl, 127
	.equ	seq_145_key, 0

	.section .rodata
	.global	seq_145
	.align	2

@*********************** Track 01 ***********************@

seq_145_0:
	.byte		VOL   , 100*seq_145_mvl/mxv
	.byte	KEYSH , seq_145_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 31
	.byte		N02   , Cn2 , v127
	.byte	W04
	.byte		N17   , Cn2 , v108
	.byte	W20
	.byte	FINE

@******************************************************@

	.align	2

seq_145:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_145_pri	@ Priority
	.byte	seq_145_rev	@ Reverb

	.word	seq_145_grp

	.word	seq_145_0

	.end