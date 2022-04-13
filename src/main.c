#include <ultra64.h>
#include "common.h"

extern OSThread gIdleThread;
void IdleMain(void *);
// this points to end of stack
extern u64 D_800A9DE8[];

void main(void) {
    // __osInitialize_common();
    osInitialize();
    // osAiSetFrequency(10000);
    osCreateThread(&gIdleThread, 10, &IdleMain, 0, &D_800A9DE8, 10);
    osStartThread(&gIdleThread);
}

// IdleMain
#pragma GLOBAL_ASM("asm/nonmatchings/main/func_800004B4.s")

void func_80000500(void) {
}

void func_80000508(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/n_alSynFreeFX.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80000518.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_800006E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_800007D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80000800.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_800008AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_800009C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80000AD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80000B38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80000CE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80000D3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80000E30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_800010C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_8000114C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80001218.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80001324.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80001430.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80001460.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_800014E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80001530.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_8000159C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_800015D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80001678.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_800016B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80001844.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80001AA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80001B60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80001CB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80001DF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80002058.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80002384.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_800024C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_8000258C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80002650.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80002764.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80002810.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80002824.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80002838.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_8000284C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80002870.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_8000287C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80002888.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80002998.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80002A90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80002ADC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80002AE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80002B20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80002B9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80002BD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80002CF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80002D7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80002E18.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80002E84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80002E8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80002E94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80002ED4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_8000302C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80003078.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_8000317C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_8000330C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_80003394.s")
