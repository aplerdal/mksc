@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_324_grp, bank_013
	.equ	seq_324_pri, 100
	.equ	seq_324_rev, 0
	.equ	seq_324_mvl, 127
	.equ	seq_324_key, 0

	.section .rodata
	.global	seq_324
	.align	2

@*********************** Track 01 ***********************@

seq_324_0:
	.byte	KEYSH , seq_324_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 4
	.byte		VOL   , 100*seq_324_mvl/mxv
	.byte		BENDR , 8
	.byte		BEND  , c_v+0
	.byte		N84   , Gs3 , v127
	.byte	W12
	.byte		BEND  , c_v+0
	.byte	W02
	.byte		VOL   , 99*seq_324_mvl/mxv
	.byte		BEND  , c_v-3
	.byte	W02
	.byte		        c_v-5
	.byte	W02
	.byte		VOL   , 93*seq_324_mvl/mxv
	.byte		BEND  , c_v-7
	.byte	W02
	.byte		        c_v-9
	.byte	W02
	.byte		VOL   , 88*seq_324_mvl/mxv
	.byte		BEND  , c_v-11
	.byte	W02
	.byte		        c_v-13
	.byte	W02
	.byte		VOL   , 83*seq_324_mvl/mxv
	.byte		BEND  , c_v-15
	.byte	W02
	.byte		        c_v-18
	.byte	W02
	.byte		VOL   , 77*seq_324_mvl/mxv
	.byte		BEND  , c_v-20
	.byte	W02
	.byte		        c_v-22
	.byte	W02
	.byte		VOL   , 72*seq_324_mvl/mxv
	.byte		BEND  , c_v-24
	.byte	W02
	.byte		        c_v-26
	.byte	W02
	.byte		VOL   , 67*seq_324_mvl/mxv
	.byte		BEND  , c_v-28
	.byte	W02
	.byte		        c_v-30
	.byte	W02
	.byte		VOL   , 62*seq_324_mvl/mxv
	.byte		BEND  , c_v-32
	.byte	W02
	.byte		        c_v-35
	.byte	W02
	.byte		VOL   , 56*seq_324_mvl/mxv
	.byte		BEND  , c_v-37
	.byte	W02
	.byte		        c_v-39
	.byte	W02
	.byte		VOL   , 51*seq_324_mvl/mxv
	.byte		BEND  , c_v-41
	.byte	W02
	.byte		        c_v-43
	.byte	W02
	.byte		VOL   , 46*seq_324_mvl/mxv
	.byte		BEND  , c_v-45
	.byte	W02
	.byte		        c_v-47
	.byte	W02
	.byte		VOL   , 40*seq_324_mvl/mxv
	.byte		BEND  , c_v-50
	.byte	W02
	.byte		        c_v-52
	.byte	W02
	.byte		VOL   , 36*seq_324_mvl/mxv
	.byte		BEND  , c_v-54
	.byte	W02
	.byte		        c_v-56
	.byte	W02
	.byte		VOL   , 30*seq_324_mvl/mxv
	.byte		BEND  , c_v-58
	.byte	W02
	.byte		        c_v-60
	.byte	W02
	.byte		VOL   , 25*seq_324_mvl/mxv
	.byte		BEND  , c_v-62
	.byte	W02
	.byte		        c_v-64
	.byte	W02
	.byte		VOL   , 20*seq_324_mvl/mxv
	.byte	W04
	.byte		        15*seq_324_mvl/mxv
	.byte	W18
	.byte	FINE

@******************************************************@

	.align	2

seq_324:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_324_pri	@ Priority
	.byte	seq_324_rev	@ Reverb

	.word	seq_324_grp

	.word	seq_324_0

	.end