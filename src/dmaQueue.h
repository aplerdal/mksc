#pragma once
#include "list.h"
#include "frameHeap.h"

typedef struct
{
    ListLinkSingle link;
    const void* src;
    void* dst;
    u32 config;
} DmaQueueEntry;

typedef struct
{
    List list;
    FrameHeap heap;
    volatile bool32 inUse;
} DmaQueue;

void dmaq_process(DmaQueue* queue);
void dmaq_init(DmaQueue* queue);
void dmaq_reset(DmaQueue* queue);
DmaQueueEntry* dmaq_enqueue(DmaQueue* queue, const void* src, void* dst, u32 config);
DmaQueue* dmaq_getVBlankDmaQueue(void);
bool32 dmaq_beginUse(DmaQueue* queue);
void dmaq_endUse(DmaQueue* queue);

static inline void dmaq_enqueueVBlank(const void* src, void* dst, u32 config)
{
    dmaq_enqueue(dmaq_getVBlankDmaQueue(), src, dst, config);
}
