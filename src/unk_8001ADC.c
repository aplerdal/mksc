#include "common.h"

extern unsigned char unk_030029B4;
extern unsigned char unk_030029D4;
extern unsigned char unk_03002C40[4][4];
extern unsigned char unk_03002C58[4];

void sub_8001ADC()
{
    int i, j;
    int i1;
    unk_030029D4 = 0;
    for (i = 0; i < 4; i++)
    {
        for (j = 0; j < 4; j++)
        {
            unk_03002C40[i][j] = 0;
        }
    }
    unk_030029B4 = 0;

    for (i1 = 0; i1 < 4; i1++)
    {
        unk_03002C58[i1] = 0;
    }
}