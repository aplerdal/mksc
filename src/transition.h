#pragma once

#define TRNS_FLAG_INIT_FRAME   (1 << 0)
#define TRNS_FLAG_UPDATE_FRAME (1 << 1)
#define TRNS_FLAG_SUSPENDED    (1 << 7)

typedef void (*Transition_fn)(void);

typedef struct
{
    Transition_fn applyFunc;
    Transition_fn initFunc;
    Transition_fn finishFunc;
    u8 flags;
    s8 waitCounter;
    u8 updateDelay;
    u8 frame;
} TransitionState;

extern TransitionState gTransitionState;

void trns_update(void);
void trns_init(void);
void trns_start(void);
void trns_initDefaultInTransition(void);
void trns_applyDefaultInTransition(void);
void trns_finishDefaultInTransition(void);
void trns_initDefaultOutTransition(void);
void trns_applyDefaultOutTransition(void);

static inline void trns_setInitFunc(Transition_fn func)
{
    gTransitionState.initFunc = func;
}
