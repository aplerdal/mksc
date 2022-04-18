@ File generated by m4a2s Song-Module
	.include "MPlayDef.s"

	.equ	seq_378_grp, bank_045
	.equ	seq_378_pri, 70
	.equ	seq_378_rev, 0
	.equ	seq_378_mvl, 127
	.equ	seq_378_key, 0

	.section .rodata
	.global	seq_378
	.align	2

@*********************** Track 01 ***********************@

seq_378_0:
	.byte	KEYSH , seq_378_key+0
	.byte	TEMPO , 120/2
	.byte		VOICE , 5
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*seq_378_mvl/mxv
	.byte		N01   , Gs2 , v127
	.byte	W01
	.byte		        Ds2 , v120
	.byte	W01
	.byte		        Dn3 , v088
	.byte	W01
	.byte		N02   , Fs3 , v080
	.byte	W02
	.byte		        An2 , v060
	.byte	W02
	.byte		        Gn2 , v044
	.byte	W88
	.byte	W01
	.byte	FINE

@*********************** Track 02 ***********************@

seq_378_1:
	.byte	KEYSH , seq_378_key+0
	.byte		VOICE , 8
	.byte		VOL   , 50*seq_378_mvl/mxv
	.byte		N02   , Fs7 , v068
	.byte	W02
	.byte		        Ds8 , v044
	.byte	W03
	.byte		        Ds8 , v032
	.byte	W03
	.byte		        Ds8 , v024
	.byte	W88
	.byte	FINE

@******************************************************@

	.align	2

seq_378:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	seq_378_pri	@ Priority
	.byte	seq_378_rev	@ Reverb

	.word	seq_378_grp

	.word	seq_378_0
	.word	seq_378_1

	.end