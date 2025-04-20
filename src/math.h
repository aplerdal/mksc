#pragma once

typedef struct
{
    s16 x;
    s16 y;
} Vec2s16;

extern int gSinTable[];

static inline int math_sin(s16 angle)
{
    return gSinTable[(angle / 64) & 0x3FF];
}

static inline int math_cos(s16 angle)
{
    return gSinTable[(256 - angle / 64) & 0x3FF];
}

static inline int math_abs(int x)
{
    if (x < 0)
        x = -x;
    return x;
}
