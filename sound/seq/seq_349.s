@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_349_grp, bank_013
	.equ	seq_349_pri, 100
	.equ	seq_349_rev, 0
	.equ	seq_349_mvl, 127
	.equ	seq_349_key, 0

	.section .rodata
	.global	seq_349
	.align	2

@*********************** Track 01 ***********************@

seq_349_0:
	.byte	KEYSH , seq_349_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 29
	.byte		VOL   , 90*seq_349_mvl/mxv
	.byte		BENDR , 8
	.byte		BEND  , c_v+0
	.byte		N76   , Gn3 , v127
	.byte	W02
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		VOL   , 88*seq_349_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-2
	.byte	W01
	.byte		VOL   , 85*seq_349_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		VOL   , 81*seq_349_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W01
	.byte		VOL   , 77*seq_349_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-6
	.byte	W01
	.byte		VOL   , 74*seq_349_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		VOL   , 70*seq_349_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-8
	.byte	W01
	.byte		VOL   , 67*seq_349_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-10
	.byte	W01
	.byte		VOL   , 63*seq_349_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-11
	.byte	W01
	.byte		VOL   , 60*seq_349_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-12
	.byte	W01
	.byte		VOL   , 56*seq_349_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-14
	.byte	W01
	.byte		VOL   , 53*seq_349_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-15
	.byte	W01
	.byte		VOL   , 49*seq_349_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-16
	.byte	W01
	.byte		VOL   , 46*seq_349_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-20
	.byte	W01
	.byte		VOL   , 42*seq_349_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-24
	.byte	W01
	.byte		VOL   , 38*seq_349_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-28
	.byte	W01
	.byte		VOL   , 35*seq_349_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-32
	.byte	W01
	.byte		VOL   , 31*seq_349_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-36
	.byte	W01
	.byte		VOL   , 28*seq_349_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-40
	.byte	W01
	.byte		VOL   , 24*seq_349_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-44
	.byte	W01
	.byte		VOL   , 21*seq_349_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-48
	.byte	W01
	.byte		VOL   , 17*seq_349_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-52
	.byte	W01
	.byte		VOL   , 14*seq_349_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-56
	.byte	W01
	.byte		VOL   , 10*seq_349_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-60
	.byte	W01
	.byte		VOL   , 7*seq_349_mvl/mxv
	.byte	W02
	.byte		BEND  , c_v-64
	.byte	W01
	.byte		VOL   , 3*seq_349_mvl/mxv
	.byte	W03
	.byte		        0*seq_349_mvl/mxv
	.byte	W18
	.byte	FINE

@******************************************************@

	.align	2

seq_349:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_349_pri	@ Priority
	.byte	seq_349_rev	@ Reverb

	.word	seq_349_grp

	.word	seq_349_0

	.end