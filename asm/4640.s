.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80003A40
/* 4640 80003A40 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4644 80003A44 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4648 80003A48 0C000AB7 */  jal        func_80002ADC
/* 464C 80003A4C 00000000 */   nop
/* 4650 80003A50 5040000E */  beql       $v0, $zero, .L80003A8C
/* 4654 80003A54 8FBF0014 */   lw        $ra, 0x14($sp)
/* 4658 80003A58 0C000A1C */  jal        func_80002870
/* 465C 80003A5C 00000000 */   nop
/* 4660 80003A60 AFA2001C */  sw         $v0, 0x1c($sp)
/* 4664 80003A64 0C014BEC */  jal        osContStartReadData
/* 4668 80003A68 00402025 */   or        $a0, $v0, $zero
/* 466C 80003A6C 8FA4001C */  lw         $a0, 0x1c($sp)
/* 4670 80003A70 00002825 */  or         $a1, $zero, $zero
/* 4674 80003A74 0C014554 */  jal        osRecvMesg
/* 4678 80003A78 24060001 */   addiu     $a2, $zero, 1
/* 467C 80003A7C 3C04800B */  lui        $a0, %hi(D_800AD400)
/* 4680 80003A80 0C014C0D */  jal        osContGetReadData
/* 4684 80003A84 2484D400 */   addiu     $a0, $a0, %lo(D_800AD400)
/* 4688 80003A88 8FBF0014 */  lw         $ra, 0x14($sp)
.L80003A8C:
/* 468C 80003A8C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 4690 80003A90 03E00008 */  jr         $ra
/* 4694 80003A94 00000000 */   nop

glabel func_80003A98
/* 4698 80003A98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 469C 80003A9C AFBF0014 */  sw         $ra, 0x14($sp)
/* 46A0 80003AA0 3C04800B */  lui        $a0, %hi(D_800AD400)
/* 46A4 80003AA4 2484D400 */  addiu      $a0, $a0, %lo(D_800AD400)
/* 46A8 80003AA8 0C014388 */  jal        _bzero
/* 46AC 80003AAC 24050018 */   addiu     $a1, $zero, 0x18
/* 46B0 80003AB0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 46B4 80003AB4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 46B8 80003AB8 03E00008 */  jr         $ra
/* 46BC 80003ABC 00000000 */   nop

glabel func_80003AC0
/* 46C0 80003AC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 46C4 80003AC4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 46C8 80003AC8 00803025 */  or         $a2, $a0, $zero
/* 46CC 80003ACC AFA5001C */  sw         $a1, 0x1c($sp)
/* 46D0 80003AD0 AFA60018 */  sw         $a2, 0x18($sp)
/* 46D4 80003AD4 0C000ABA */  jal        func_80002AE8
/* 46D8 80003AD8 00A02025 */   or        $a0, $a1, $zero
/* 46DC 80003ADC 10400012 */  beqz       $v0, .L80003B28
/* 46E0 80003AE0 8FA60018 */   lw        $a2, 0x18($sp)
/* 46E4 80003AE4 8FAE001C */  lw         $t6, 0x1c($sp)
/* 46E8 80003AE8 3C18800B */  lui        $t8, %hi(D_800AD400)
/* 46EC 80003AEC 2718D400 */  addiu      $t8, $t8, %lo(D_800AD400)
/* 46F0 80003AF0 000E7880 */  sll        $t7, $t6, 2
/* 46F4 80003AF4 01EE7823 */  subu       $t7, $t7, $t6
/* 46F8 80003AF8 000F7840 */  sll        $t7, $t7, 1
/* 46FC 80003AFC 01F8C821 */  addu       $t9, $t7, $t8
/* 4700 80003B00 8B210000 */  lwl        $at, ($t9)
/* 4704 80003B04 9B210003 */  lwr        $at, 3($t9)
/* 4708 80003B08 A8C10000 */  swl        $at, ($a2)
/* 470C 80003B0C B8C10003 */  swr        $at, 3($a2)
/* 4710 80003B10 97210004 */  lhu        $at, 4($t9)
/* 4714 80003B14 A4C10004 */  sh         $at, 4($a2)
/* 4718 80003B18 90C20004 */  lbu        $v0, 4($a2)
/* 471C 80003B1C 2C4A0001 */  sltiu      $t2, $v0, 1
/* 4720 80003B20 10000005 */  b          .L80003B38
/* 4724 80003B24 01401025 */   or        $v0, $t2, $zero
.L80003B28:
/* 4728 80003B28 00C02025 */  or         $a0, $a2, $zero
/* 472C 80003B2C 0C014388 */  jal        _bzero
/* 4730 80003B30 24050006 */   addiu     $a1, $zero, 6
/* 4734 80003B34 00001025 */  or         $v0, $zero, $zero
.L80003B38:
/* 4738 80003B38 8FBF0014 */  lw         $ra, 0x14($sp)
/* 473C 80003B3C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4740 80003B40 03E00008 */  jr         $ra
/* 4744 80003B44 00000000 */   nop
/* 4748 80003B48 00000000 */  nop
/* 474C 80003B4C 00000000 */  nop
