@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_384_grp, bank_044
	.equ	seq_384_pri, 70
	.equ	seq_384_rev, 0
	.equ	seq_384_mvl, 127
	.equ	seq_384_key, 0

	.section .rodata
	.global	seq_384
	.align	2

@*********************** Track 01 ***********************@

seq_384_0:
	.byte	KEYSH , seq_384_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 89
	.byte		VOL   , 110*seq_384_mvl/mxv
	.byte		BENDR , 8
	.byte		BEND  , c_v+0
	.byte		N42   , Bn2 , v127
	.byte	W02
	.byte		BEND  , c_v-7
	.byte	W02
	.byte		        c_v-13
	.byte	W02
	.byte		        c_v-18
	.byte	W02
	.byte		VOL   , 108*seq_384_mvl/mxv
	.byte		BEND  , c_v-23
	.byte	W02
	.byte		VOL   , 103*seq_384_mvl/mxv
	.byte		BEND  , c_v-28
	.byte	W02
	.byte		VOL   , 99*seq_384_mvl/mxv
	.byte		BEND  , c_v-33
	.byte	W02
	.byte		VOL   , 95*seq_384_mvl/mxv
	.byte		BEND  , c_v-37
	.byte	W02
	.byte		VOL   , 90*seq_384_mvl/mxv
	.byte		BEND  , c_v-41
	.byte	W02
	.byte		VOL   , 86*seq_384_mvl/mxv
	.byte		BEND  , c_v-45
	.byte	W02
	.byte		VOL   , 82*seq_384_mvl/mxv
	.byte		BEND  , c_v-48
	.byte	W02
	.byte		VOL   , 77*seq_384_mvl/mxv
	.byte		BEND  , c_v-52
	.byte	W02
	.byte		VOL   , 73*seq_384_mvl/mxv
	.byte		BEND  , c_v-54
	.byte	W02
	.byte		VOL   , 69*seq_384_mvl/mxv
	.byte		BEND  , c_v-57
	.byte	W02
	.byte		VOL   , 64*seq_384_mvl/mxv
	.byte		BEND  , c_v-59
	.byte	W02
	.byte		VOL   , 60*seq_384_mvl/mxv
	.byte		BEND  , c_v-60
	.byte	W02
	.byte		VOL   , 56*seq_384_mvl/mxv
	.byte		BEND  , c_v-62
	.byte	W02
	.byte		VOL   , 51*seq_384_mvl/mxv
	.byte		BEND  , c_v-63
	.byte	W02
	.byte		VOL   , 47*seq_384_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W02
	.byte		VOL   , 38*seq_384_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W02
	.byte		VOL   , 30*seq_384_mvl/mxv
	.byte		BEND  , c_v-64
	.byte	W08
	.byte	FINE

@******************************************************@

	.align	2

seq_384:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_384_pri	@ Priority
	.byte	seq_384_rev	@ Reverb

	.word	seq_384_grp

	.word	seq_384_0

	.end