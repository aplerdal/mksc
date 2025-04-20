#include "common.h"
#include "list.h"
#include "frameHeap.h"
#include "vcount.h"

VCountState gVCountState;

static u8 sHeapSpace[0x100];

void vcount_init(void)
{
    REG_DISPSTAT_STRUCT->vcountCmp = 0;
    REG_DISPSTAT_STRUCT->vcountIrq = FALSE;
    gVCountState.curEntry = NULL;
    frmheap_init(&gVCountState.heap, sHeapSpace, sizeof(sHeapSpace));
    list_init(&gVCountState.list);
}

void vcount_reset(void)
{
    REG_DISPSTAT_STRUCT->vcountCmp = 0;
    REG_DISPSTAT_STRUCT->vcountIrq = FALSE;
    gVCountState.curEntry = NULL;
    frmheap_reset(&gVCountState.heap);
    list_init(&gVCountState.list);
}

VCountEntry* vcount_register(int vcount, VCount_fn func)
{
    VCountEntry* result;
    VCountEntry* i;
    VCountEntry* next;
    volatile DispStat* dispstat;

    result = (VCountEntry*)frmheap_calloc(&gVCountState.heap, 1, sizeof(VCountEntry));
    if (result)
    {
        result->vcount = vcount;
        result->func = func;

        i = (VCountEntry*)list_getHead(&gVCountState.list);
        while (1)
        {
            if (i)
            {
                if (i->vcount > vcount)
                {
                    list_insertBefore(&gVCountState.list, &i->link, &result->link);
                    break;
                }
            }
            else
            {
                list_insertTail(&gVCountState.list, &result->link);
                break;
            }
            i = (VCountEntry*)list_getNext(&gVCountState.list, &i->link);
        }

        next = (VCountEntry*)list_getHead(&gVCountState.list);
        dispstat = REG_DISPSTAT_STRUCT;
        gVCountState.curEntry = next;
        dispstat->vcountCmp = next->vcount;
        dispstat->vcountIrq = TRUE;
    }
    return result;
}

void vcount_unregister(VCountEntry* entry)
{
    list_remove(&gVCountState.list, &entry->link);
}

void vcount_irqHandler(void)
{
    VCountEntry* entry;
    volatile DispStat* dispstat;

    entry = gVCountState.curEntry;
    entry->func();

    entry = (VCountEntry*)list_getNext(&gVCountState.list, &entry->link);
    if (!entry)
        entry = (VCountEntry*)list_getHead(&gVCountState.list);

    dispstat = REG_DISPSTAT_STRUCT;
    gVCountState.curEntry = entry;
    dispstat->vcountCmp = entry->vcount;
    dispstat->vcountIrq = TRUE;
}