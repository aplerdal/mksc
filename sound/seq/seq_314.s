@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_314_grp, bank_013
	.equ	seq_314_pri, 100
	.equ	seq_314_rev, 0
	.equ	seq_314_mvl, 127
	.equ	seq_314_key, 0

	.section .rodata
	.global	seq_314
	.align	2

@*********************** Track 01 ***********************@

seq_314_0:
	.byte	KEYSH , seq_314_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 30
	.byte		VOL   , 115*seq_314_mvl/mxv
	.byte		BENDR , 5
	.byte		N04   , An3 , v127
	.byte	W04
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		N03   , Fn3 
	.byte	W02
	.byte		BEND  , c_v-4
	.byte	W02
	.byte		N15   , Gs3 
	.byte	W01
	.byte		BEND  , c_v-8
	.byte	W03
	.byte		        c_v-12
	.byte	W03
	.byte		        c_v-16
	.byte	W03
	.byte		        c_v-19
	.byte	W03
	.byte		        c_v-23
	.byte	W02
	.byte		VOL   , 108*seq_314_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-27
	.byte	W01
	.byte		N04   , Ds3 
	.byte	W01
	.byte		VOL   , 101*seq_314_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-31
	.byte	W02
	.byte		VOL   , 94*seq_314_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-34
	.byte		N28   , Fn3 
	.byte	W02
	.byte		VOL   , 86*seq_314_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-38
	.byte	W02
	.byte		VOL   , 79*seq_314_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-42
	.byte	W02
	.byte		VOL   , 72*seq_314_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-46
	.byte	W02
	.byte		VOL   , 65*seq_314_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-49
	.byte	W02
	.byte		VOL   , 57*seq_314_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-53
	.byte	W02
	.byte		VOL   , 50*seq_314_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-57
	.byte	W02
	.byte		VOL   , 43*seq_314_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-61
	.byte	W02
	.byte		VOL   , 36*seq_314_mvl/mxv
	.byte	W01
	.byte		BEND  , c_v-64
	.byte	W02
	.byte		VOL   , 28*seq_314_mvl/mxv
	.byte	W15
	.byte	FINE

@******************************************************@

	.align	2

seq_314:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_314_pri	@ Priority
	.byte	seq_314_rev	@ Reverb

	.word	seq_314_grp

	.word	seq_314_0

	.end