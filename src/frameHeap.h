#pragma once

typedef struct
{
    u8* head;
    u8* ptr;
    u32 size;
} FrameHeap;

void frmheap_init(FrameHeap* heap, void* address, u32 size);
void frmheap_reset(FrameHeap* heap);
void* frmheap_calloc(FrameHeap* heap, int elements, int elemSize);
