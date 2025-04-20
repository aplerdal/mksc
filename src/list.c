#include "common.h"
#include "list.h"

void list_insertHeadSingle(List* list, ListLinkSingle* item)
{
    ListLinkSingle* head = list->head;
    item->next = head;
    if (!head)
        list->tail = item;
    list->head = item;
}

void list_insertTailSingle(List* list, ListLinkSingle* item)
{
    ListLinkSingle* tail;

    item->next = NULL;
    tail = list->tail;
    if (tail)
        tail->next = item;
    else
        list->head = item;
    list->tail = item;
}

ListLinkSingle* list_takeHeadSingle(List* list)
{
    ListLinkSingle* head = list->head;
    list->head = head->next;
    if (!list->head)
        list->tail = NULL;
    head->next = NULL;
    return head;
}

bool32 list_isEmpty(List* list)
{
    return list->head == NULL;
}

void* list_getHead(List* list)
{
    return list->head;
}

void* list_getTail(List* list)
{
    return list->tail;
}

ListLinkDouble* list_getNext(List* list, ListLinkDouble* item)
{
    return item->next;
}

ListLinkDouble* list_getPrevious(List* list, ListLinkDouble* item)
{
    return item->prev;
}

void list_insertHead(List* list, ListLinkDouble* item)
{
    ListLinkDouble* head;

    item->prev = NULL;
    head = list->head;
    item->next = head;
    if (head)
        head->prev = item;
    else
        list->tail = item;
    list->head = item;
}

void list_insertTail(List* list, ListLinkDouble* item)
{
    ListLinkDouble* tail = list->tail;
    item->prev = tail;
    item->next = NULL;
    if (tail)
        tail->next = item;
    else
        list->head = item;
    list->tail = item;
}

void list_insertBefore(List* list, ListLinkDouble* target, ListLinkDouble* item)
{
    item->prev = target->prev;
    item->next = target;
    if (target->prev)
        target->prev->next = item;
    else
        list->head = item;
    target->prev = item;
}

void list_insertAfter(List* list, ListLinkDouble* target, ListLinkDouble* item)
{
    item->prev = target;
    item->next = target->next;
    if (target->next)
        target->next->prev = item;
    else
        list->tail = item;
    target->next = item;
}

ListLinkDouble* list_takeHead(List* list)
{
    ListLinkDouble* item = list->head;
    list->head = item->next;
    if (item->next)
        item->next->prev = NULL;
    else
        list->tail = NULL;
    item->next = NULL;
    item->prev = NULL;
    return item;
}

ListLinkDouble* list_takeTail(List* list)
{
    ListLinkDouble* item = list->tail;
    list->tail = item->prev;
    if (item->prev)
        item->prev->next = NULL;
    else
        list->head = NULL;
    item->next = NULL;
    item->prev = NULL;
    return item;
}

void list_remove(List* list, ListLinkDouble* item)
{
    if (item == list->head)
        list->head = item->next;
    else
        item->prev->next = item->next;
    if (item == list->tail)
        list->tail = item->prev;
    else
        item->next->prev = item->prev;
    item->next = NULL;
    item->prev = NULL;
}

void list_init(List* list)
{
    list->tail = NULL;
    list->head = NULL;
}
