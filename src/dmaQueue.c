#include "common.h"
#include "dmaQueue.h"

// static u8 sHeap[0x600];
extern u8 dmaq_sHeap[0x600];

static DmaQueue sVBlankDmaQueue;

void dmaq_process(DmaQueue* queue)
{
    DmaQueueEntry* entry;
    const u8* src;
    u32 srcMode;
    u8* dst;
    u32 shift;
    u32 left;
    int size;
    u32 dstMode;
    FrameHeap* heap;

    if (!queue->inUse)
    {
        queue->inUse = TRUE;
        entry = (DmaQueueEntry*)queue->list.head;
        heap = &queue->heap;
        while (entry)
        {
            vu32* dmaRegs = (vu32*)REG_ADDR_DMA3;
            src = entry->src;
            dst = entry->dst;
            shift = entry->config & (DMA_32BIT << 16) ? 2 : 1;
            left = (entry->config & 0xFFFF) << shift;
            srcMode = entry->config & 0x1800000;
            dstMode = entry->config & 0x600000;
            do
            {
                size = left > 2048 ? 2048 : left;
                dmaRegs[0] = (u32)src;
                dmaRegs[1] = (u32)dst;
                dmaRegs[2] = entry->config & 0xFFFF0000 | ((size >> shift) & 0xFFFF);

                switch (srcMode)
                {
                    case DMA_SRC_INC << 16:
                        src += size;
                        break;
                    case DMA_SRC_DEC << 16:
                        src -= size;
                        break;
                }
                switch (dstMode)
                {
                    case DMA_DEST_INC << 16:
                        dst += size;
                        break;
                    case DMA_DEST_DEC << 16:
                        dst -= size;
                        break;
                }

                left -= size;
            } while (left);
            entry = (DmaQueueEntry*)entry->link.next;
        }
        frmheap_reset(heap);
        queue->list.tail = NULL;
        queue->list.head = NULL;
    }
    queue->inUse = FALSE;
}

void dmaq_init(DmaQueue* queue)
{
    frmheap_init(&queue->heap, dmaq_sHeap, sizeof(dmaq_sHeap));
    queue->list.tail = NULL;
    queue->list.head = NULL;
    queue->inUse = FALSE;
}

void dmaq_reset(DmaQueue* queue)
{
    bool32 one;
    do
    {
        one = TRUE;
    } while (0);
    while (queue->inUse)
        ;
    queue->inUse = one;
    frmheap_reset(&queue->heap);
    queue->list.tail = NULL;
    queue->list.head = NULL;
    queue->inUse = FALSE;
}

DmaQueueEntry* dmaq_enqueue(DmaQueue* queue, const void* src, void* dst, u32 config)
{
    DmaQueueEntry* result;
    bool32 one;
    do
    {
        one = TRUE;
    } while (0);
    while (queue->inUse)
        ;
    queue->inUse = one;
    result = (DmaQueueEntry*)frmheap_calloc(&queue->heap, 1, sizeof(DmaQueueEntry));
    if (result)
    {
        result->src = src;
        result->dst = dst;
        result->config = config;
        list_insertTailSingle(&queue->list, &result->link);
    }
    queue->inUse = FALSE;
    return result;
}

DmaQueue* dmaq_getVBlankDmaQueue(void)
{
    return &sVBlankDmaQueue;
}

bool32 dmaq_beginUse(DmaQueue* queue)
{
    bool32 result;
    if (queue->inUse)
        result = FALSE;
    else
    {
        queue->inUse = TRUE;
        result = TRUE;
    }
    return result;
}

void dmaq_endUse(DmaQueue* queue)
{
    queue->inUse = FALSE;
}
