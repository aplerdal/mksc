@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_129_grp, bank_044
	.equ	seq_129_pri, 30
	.equ	seq_129_rev, 0
	.equ	seq_129_mvl, 127
	.equ	seq_129_key, 0

	.section .rodata
	.global	seq_129
	.align	2

@*********************** Track 01 ***********************@

seq_129_0:
	.byte	KEYSH , seq_129_key+0
	.byte	TEMPO , 150/2
	.byte		VOICE , 106
	.byte		VOL   , 110*seq_129_mvl/mxv
	.byte		N07   , En2 , v127
	.byte	W07
	.byte		        Cn3 , v080
	.byte	W07
	.byte		N06   , Fs2 , v108
	.byte	W06
	.byte		        Cs3 , v072
	.byte	W06
	.byte		N05   , Gs2 , v100
	.byte	W05
	.byte		        Dn3 , v064
	.byte	W05
	.byte		N04   , As2 , v088
	.byte	W04
	.byte		        Ds3 , v056
	.byte	W04
	.byte		N03   , Cn3 , v080
	.byte	W03
	.byte		        En3 , v048
	.byte	W03
	.byte		N02   , Dn3 , v068
	.byte	W02
	.byte		        Fn3 , v040
	.byte	W02
	.byte		        En3 , v060
	.byte	W02
	.byte		        Fs3 , v032
	.byte	W02
	.byte		        Fn3 , v048
	.byte	W02
	.byte		        Gn3 , v024
	.byte	W02
	.byte		        Fs3 , v040
	.byte	W02
	.byte		        Gs3 , v016
	.byte	W08
	.byte	FINE

@******************************************************@

	.align	2

seq_129:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_129_pri	@ Priority
	.byte	seq_129_rev	@ Reverb

	.word	seq_129_grp

	.word	seq_129_0

	.end