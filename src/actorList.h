#pragma once
#include "actor.h"

typedef struct
{
    struct Actor* head;
    struct Actor* tail;
} ActorList;

bool32 actlist_isEmpty(ActorList* list);
void actlist_init(ActorList* list);
void actlist_insertHead(ActorList* list, Actor* item);
void actlist_insertTail(ActorList* list, Actor* item);
void actlist_insertBefore(ActorList* list, Actor* target, Actor* item);
void actlist_insertAfter(ActorList* list, Actor* target, Actor* item);
Actor* actlist_takeHead(ActorList* list);
Actor* actlist_takeTail(ActorList* list);
void actlist_remove(ActorList* list, Actor* item);
void actlist_clear(ActorList* list);