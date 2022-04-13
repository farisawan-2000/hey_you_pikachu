.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80000400
/* 1000 80000400 3C08800B */  lui        $t0, %hi(D_800A8C00)
/* 1004 80000404 3C090005 */  lui        $t1, 5
/* 1008 80000408 25088C00 */  addiu      $t0, $t0, %lo(D_800A8C00)
/* 100C 8000040C 35297A80 */  ori        $t1, $t1, 0x7a80
.L80000410:
/* 1010 80000410 2129FFF8 */  addi       $t1, $t1, -8
/* 1014 80000414 AD000000 */  sw         $zero, ($t0)
/* 1018 80000418 AD000004 */  sw         $zero, 4($t0)
/* 101C 8000041C 1520FFFC */  bnez       $t1, .L80000410
/* 1020 80000420 21080008 */   addi      $t0, $t0, 8
/* 1024 80000424 3C0A8000 */  lui        $t2, %hi(D_80000450)
/* 1028 80000428 3C1D800B */  lui        $sp, %hi(D_800A9000)
/* 102C 8000042C 254A0450 */  addiu      $t2, $t2, %lo(D_80000450)
/* 1030 80000430 01400008 */  jr         $t2
/* 1034 80000434 27BD9000 */   addiu     $sp, $sp, %lo(D_800A9000)
/* 1038 80000438 00000000 */  nop
/* 103C 8000043C 00000000 */  nop
/* 1040 80000440 00000000 */  nop
/* 1044 80000444 00000000 */  nop
/* 1048 80000448 00000000 */  nop
/* 104C 8000044C 00000000 */  nop
