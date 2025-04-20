#include "common.h"
#include "actorList.h"

bool32 actlist_isEmpty(actlist_t* list)
{
    return list->head == NULL;
}

void actlist_init(actlist_t* list)
{
    list->tail = NULL;
    list->head = NULL;
}

void actlist_insertHead(actlist_t* list, Actor* item)
{
    Actor* head;
    Actor* prev;

    prev = NULL;
    head = list->head;
    item->prev = prev;
    item->next = head;

    if (head)
        head->prev = item;
    else
        list->tail = item;
    list->head = item;
}

void actlist_insertTail(actlist_t* list, Actor* item)
{
    Actor* tail;
    Actor* next;

    tail = list->tail;
    next = NULL;
    item->prev = tail;
    item->next = next;
    if (tail)
        tail->next = item;
    else
        list->head = item;
    list->tail = item;
}

void actlist_insertBefore(actlist_t* list, Actor* target, Actor* item)
{
    item->prev = target->prev;
    item->next = target;
    if (target->prev)
        target->prev->next = item;
    else
        list->head = item;
    target->prev = item;
}

void actlist_insertAfter(actlist_t* list, Actor* target, Actor* item)
{
    Actor* next = target->next;
    item->prev = target;
    item->next = next;
    if (target->next)
        target->next->prev = item;
    else
        list->tail = item;
    target->next = item;
}

Actor* actlist_takeHead(actlist_t* list)
{
    Actor* item = list->head;
    list->head = item->next;
    if (list->head)
        list->head->prev = NULL;
    else
        list->tail = NULL;
    item->prev = NULL;
    item->next = NULL;
    return item;
}

Actor* actlist_takeTail(actlist_t* list)
{
    Actor* item = list->tail;
    list->tail = item->prev;
    if (list->tail)
        list->tail->next = NULL;
    else
        list->head = NULL;
    item->prev = NULL;
    item->next = NULL;
    return item;
}

void actlist_remove(actlist_t* list, Actor* item)
{
    Actor* item2 = item;
    if (item2 == list->head)
        actlist_takeHead(list);
    else if (item2 == list->tail)
        actlist_takeTail(list);
    else
    {
        item2->prev->next = item2->next;
        item2->next->prev = item2->prev;
        item2->prev = NULL;
        item2->next = NULL;
    }
}

void actlist_clear(actlist_t* list)
{
    list->tail = NULL;
    list->head = NULL;
}
