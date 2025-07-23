#pragma once

#include "common.h"

typedef s32 Q8;
typedef s32 Q4;

static inline s32 round_q8(Q8 value) {
    if (value < 0) value += 0x7F;
    return value >> 8;
}

static inline s32 round_q5(Q4 value) {
    if (value < 0) value += 0x1F;
    return value >> 5;
}

static inline s32 round_q4(Q4 value) {
    if (value < 0) value += 0xF;
    return value >> 4;
}