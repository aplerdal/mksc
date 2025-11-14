#include "common.h"

extern s16 unk_03002C60[10];
extern s8 unk_030029D4;
extern s8 unk_03002C40[4][4];
extern s8 unk_030029B4;
extern s8 unk_03002C58[4];

void sub_08001A84(){
    s32 i, j;
    
    unk_030029D4 = 0;
    for (i = 0; i < 4; i++){
        for (j = 0; j < 4; j++){
            unk_03002C40[i][j] = 0;
        }    
    }
}
void sub_08001ABC(void) {
    int i;

    unk_030029B4 = 0;
    for (i = 0; i < 4; i++){
        unk_03002C58[i] = 0;
    }
}
void sub_8001ADC(){
    int i, j, i2;
    unk_030029D4 = 0;
    for (i = 0; i < 4; i++){
        for (j = 0; j < 4; j++){
            unk_03002C40[i][j] = 0;
        }
    }
    unk_030029B4 = 0;
    for (i2 = 0; i2 < 4; i2++){
        unk_03002C58[i2] = 0;
    }
}

void sub_8001B30(void){
    int i;
    for (i = 0; i < 10; i++) {
        unk_03002C60[i] = 0;
    }
    unk_03002C60[5] = 1;
}