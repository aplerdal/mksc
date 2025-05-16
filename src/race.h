#pragma once

#include "common.h"

extern u16 gKeyBuf[4];
extern u16 gKeyTriggerBuf[4];

extern u16 DAT_03002c96;
extern u16 DAT_03003a9c;
extern u16 DAT_03004f50;
extern u16 DAT_03002c82[];
extern void* PTR_03004f70;
extern void* PTR_03004f74;
extern void* PTR_03004f78;
extern u8 DAT_03004f7e;
extern u8 DAT_03004f7c;
extern u32 dword_3005C50;
extern s32 DAT_03003acc;
extern u16 DAT_030066e4;
extern u8 DAT_030066e0;

extern void rand_tick();
extern bool32 FUN_0802dc88();
extern void FUN_0802bf94(RaceState* raceState);
extern void FUN_0802fd3c();
extern void FUN_0802fe4c(u32 param1);
extern void FUN_08048d44(RaceState* raceState);
extern void FUN_0804a4d8(RaceState* raceState);
extern void FUN_0804ae08(RaceState* raceState);
extern void FUN_0804d8f8();
extern void FUN_08050f74();
extern void FUN_080515bc();
extern void FUN_08051f84();
extern void FUN_080524cc();
extern void FUN_08052a4c();
extern void FUN_0805a7c0();
extern void FUN_08052020();
extern void FUN_0805207c();
extern void FUN_080520b4();
extern void FUN_08030630();

extern void FUN_08051fd0();
extern void FUN_080514b0();
extern void FUN_08051554();
extern void FUN_080521c4();
extern void FUN_080520d4();
extern void FUN_08052168();

extern u32 sub_8032c2c(RaceState* raceState);