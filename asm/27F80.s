.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80027380
/* 27F80 80027380 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 27F84 80027384 8FAE003C */  lw         $t6, 0x3c($sp)
/* 27F88 80027388 44866000 */  mtc1       $a2, $f12
/* 27F8C 8002738C 24030026 */  addiu      $v1, $zero, 0x26
/* 27F90 80027390 15C30003 */  bne        $t6, $v1, .L800273A0
/* 27F94 80027394 AFBF0024 */   sw        $ra, 0x24($sp)
/* 27F98 80027398 240F0001 */  addiu      $t7, $zero, 1
/* 27F9C 8002739C AFAF003C */  sw         $t7, 0x3c($sp)
.L800273A0:
/* 27FA0 800273A0 8FA20040 */  lw         $v0, 0x40($sp)
/* 27FA4 800273A4 44066000 */  mfc1       $a2, $f12
/* 27FA8 800273A8 C7A40038 */  lwc1       $f4, 0x38($sp)
/* 27FAC 800273AC 54430003 */  bnel       $v0, $v1, .L800273BC
/* 27FB0 800273B0 8FB8003C */   lw        $t8, 0x3c($sp)
/* 27FB4 800273B4 24020025 */  addiu      $v0, $zero, 0x25
/* 27FB8 800273B8 8FB8003C */  lw         $t8, 0x3c($sp)
.L800273BC:
/* 27FBC 800273BC E7A40010 */  swc1       $f4, 0x10($sp)
/* 27FC0 800273C0 AFA20018 */  sw         $v0, 0x18($sp)
/* 27FC4 800273C4 0C0027B5 */  jal        func_80009ED4
/* 27FC8 800273C8 AFB80014 */   sw        $t8, 0x14($sp)
/* 27FCC 800273CC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 27FD0 800273D0 27BD0028 */  addiu      $sp, $sp, 0x28
/* 27FD4 800273D4 03E00008 */  jr         $ra
/* 27FD8 800273D8 00000000 */   nop

glabel func_800273DC
/* 27FDC 800273DC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 27FE0 800273E0 44800000 */  mtc1       $zero, $f0
/* 27FE4 800273E4 3C0143B4 */  lui        $at, 0x43b4
/* 27FE8 800273E8 44812000 */  mtc1       $at, $f4
/* 27FEC 800273EC AFBF0024 */  sw         $ra, 0x24($sp)
/* 27FF0 800273F0 240E0001 */  addiu      $t6, $zero, 1
/* 27FF4 800273F4 240F0025 */  addiu      $t7, $zero, 0x25
/* 27FF8 800273F8 AFAF0018 */  sw         $t7, 0x18($sp)
/* 27FFC 800273FC AFAE0014 */  sw         $t6, 0x14($sp)
/* 28000 80027400 27A7002C */  addiu      $a3, $sp, 0x2c
/* 28004 80027404 3C064248 */  lui        $a2, 0x4248
/* 28008 80027408 E7A0002C */  swc1       $f0, 0x2c($sp)
/* 2800C 8002740C E7A00030 */  swc1       $f0, 0x30($sp)
/* 28010 80027410 E7A00034 */  swc1       $f0, 0x34($sp)
/* 28014 80027414 0C0027B5 */  jal        func_80009ED4
/* 28018 80027418 E7A40010 */   swc1      $f4, 0x10($sp)
/* 2801C 8002741C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 28020 80027420 27BD0038 */  addiu      $sp, $sp, 0x38
/* 28024 80027424 03E00008 */  jr         $ra
/* 28028 80027428 00000000 */   nop
/* 2802C 8002742C 00000000 */  nop
