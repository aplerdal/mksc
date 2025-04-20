#pragma once

typedef struct ListLinkSingle
{
    struct ListLinkSingle* next;
} ListLinkSingle;

typedef struct ListLinkDouble
{
    struct ListLinkDouble* next;
    struct ListLinkDouble* prev;
} ListLinkDouble;

typedef struct
{
    void* head;
    void* tail;
} List;

void list_insertHeadSingle(List* list, ListLinkSingle* item);
void list_insertTailSingle(List* list, ListLinkSingle* item);
ListLinkSingle* list_takeHeadSingle(List* list);

bool32 list_isEmpty(List* list);
void* list_getHead(List* list);
void* list_getTail(List* list);
ListLinkDouble* list_getNext(List* list, ListLinkDouble* item);
ListLinkDouble* list_getPrevious(List* list, ListLinkDouble* item);
void list_insertHead(List* list, ListLinkDouble* item);
void list_insertTail(List* list, ListLinkDouble* item);
void list_insertBefore(List* list, ListLinkDouble* target, ListLinkDouble* item);
void list_insertAfter(List* list, ListLinkDouble* target, ListLinkDouble* item);
ListLinkDouble* list_takeHead(List* list);
ListLinkDouble* list_takeTail(List* list);
void list_remove(List* list, ListLinkDouble* item);
void list_init(List* list);
