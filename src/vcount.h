#pragma once
#include "list.h"
#include "frameHeap.h"

typedef void (*VCount_fn)(void);

typedef struct
{
    ListLinkDouble link;
    int vcount;
    VCount_fn func;
} VCountEntry;

typedef struct
{
    List list;
    FrameHeap heap;
    VCountEntry* curEntry;
} VCountState;

typedef struct
{
    u16 vblank : 1;
    u16 hblank : 1;
    u16 vCountMatch : 1;
    u16 vblankIrq : 1;
    u16 hblankIrq : 1;
    u16 vcountIrq : 1;
    u16 padding : 2;
    u8 vcountCmp;
} DispStat;

#define REG_DISPSTAT_STRUCT ((volatile DispStat*)REG_ADDR_DISPSTAT)

extern VCountState gVCountState;

void vcount_init(void);
void vcount_reset(void);
VCountEntry* vcount_register(int vcount, VCount_fn func);
void vcount_unregister(VCountEntry* entry);
void vcount_irqHandler(void);
