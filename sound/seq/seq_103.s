@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_103_grp, bank_044
	.equ	seq_103_pri, 20
	.equ	seq_103_rev, 0
	.equ	seq_103_mvl, 127
	.equ	seq_103_key, 0

	.section .rodata
	.global	seq_103
	.align	2

@*********************** Track 01 ***********************@

seq_103_0:
	.byte		VOL   , 55*seq_103_mvl/mxv
	.byte	KEYSH , seq_103_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 41
	.byte		N04   , Fn3 , v127
	.byte	W06
	.byte		        Cn4 , v116
	.byte	W06
	.byte		        Fn4 , v124
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte		        Fn5 , v127
	.byte	W06
	.byte		        An4 , v112
	.byte	W06
	.byte		        Cn5 , v124
	.byte	W06
	.byte		        Fn5 , v108
	.byte	W06
	.byte		        Fn3 , v127
	.byte	W06
	.byte		        Cn4 , v116
	.byte	W06
	.byte		        Fn4 , v124
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte	TEMPO , 134/2
	.byte		        Fn5 , v127
	.byte	W06
	.byte		        An4 , v112
	.byte	W06
	.byte	TEMPO , 120/2
	.byte		        Cn5 , v127
	.byte	W06
	.byte		        Fn5 , v120
	.byte	W06
	.byte	TEMPO , 104/2
	.byte		        Fn3 , v127
	.byte	W06
	.byte		        Cn4 , v116
	.byte	W06
	.byte	TEMPO , 90/2
	.byte		        Fn4 , v124
	.byte	W06
	.byte		        Cn5 , v120
	.byte	W06
	.byte	TEMPO , 74/2
	.byte		        Fn5 , v127
	.byte	W06
	.byte		        An4 , v112
	.byte	W06
	.byte	TEMPO , 60/2
	.byte		        Cn5 , v124
	.byte	W06
	.byte		        Fn5 , v108
	.byte	W06
	.byte	FINE

@******************************************************@

	.align	2

seq_103:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_103_pri	@ Priority
	.byte	seq_103_rev	@ Reverb

	.word	seq_103_grp

	.word	seq_103_0

	.end