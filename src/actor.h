#pragma once
#include "math.h"

struct Actor;

typedef void (*ActorCollide)(struct Actor* a, struct Actor* b);

typedef struct Actor
{
    int posX;
    int posY;
    int posZ;
    u8 sizeX;
    u8 sizeY;
    u8 sizeZ;
    u16 typeFlags;
    int updateFunc;
    ActorCollide collideFunc;
    Vec2s16 drawPos;
    Vec2s16 positionS16;
    u16 drawScale;
    u16 field_26;
    int field_28;
    int field_2C;
    int field_30;
    u16 flags;
    u8 checkpointId;
    u16 field_38;
    struct Actor* next;
    struct Actor* prev;
} Actor;
