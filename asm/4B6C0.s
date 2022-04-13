.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8004AAC0
/* 4B6C0 8004AAC0 3C038005 */  lui        $v1, %hi(D_8004B5DC)
/* 4B6C4 8004AAC4 000440C0 */  sll        $t0, $a0, 3
/* 4B6C8 8004AAC8 2463B5DC */  addiu      $v1, $v1, %lo(D_8004B5DC)
/* 4B6CC 8004AACC 01034820 */  add        $t1, $t0, $v1
/* 4B6D0 8004AAD0 91380004 */  lbu        $t8, 4($t1)
/* 4B6D4 8004AAD4 91390005 */  lbu        $t9, 5($t1)
/* 4B6D8 8004AAD8 3C010007 */  lui        $at, 7
/* 4B6DC 8004AADC ACB80000 */  sw         $t8, ($a1)
/* 4B6E0 8004AAE0 ACD90000 */  sw         $t9, ($a2)
/* 4B6E4 8004AAE4 85280006 */  lh         $t0, 6($t1)
/* 4B6E8 8004AAE8 3421EE80 */  ori        $at, $at, 0xee80
/* 4B6EC 8004AAEC ACE80000 */  sw         $t0, ($a3)
/* 4B6F0 8004AAF0 8D220000 */  lw         $v0, ($t1)
/* 4B6F4 8004AAF4 03E00008 */  jr         $ra
/* 4B6F8 8004AAF8 00411020 */   add       $v0, $v0, $at

glabel func_8004AAFC
/* 4B6FC 8004AAFC 34018800 */  ori        $at, $zero, 0x8800
/* 4B700 8004AB00 0081082A */  slt        $at, $a0, $at
/* 4B704 8004AB04 14200010 */  bnez       $at, .L8004AB48
/* 4B708 8004AB08 240600BC */   addiu     $a2, $zero, 0xbc
/* 4B70C 8004AB0C 00042A02 */  srl        $a1, $a0, 8
/* 4B710 8004AB10 20A5FF78 */  addi       $a1, $a1, -0x88
/* 4B714 8004AB14 00C50019 */  multu      $a2, $a1
/* 4B718 8004AB18 308700FF */  andi       $a3, $a0, 0xff
/* 4B71C 8004AB1C 20E7FFC0 */  addi       $a3, $a3, -0x40
/* 4B720 8004AB20 28E10040 */  slti       $at, $a3, 0x40
/* 4B724 8004AB24 00003012 */  mflo       $a2
/* 4B728 8004AB28 54200003 */  bnel       $at, $zero, .L8004AB38
/* 4B72C 8004AB2C 00003012 */   mflo      $a2
/* 4B730 8004AB30 20E7FFFF */  addi       $a3, $a3, -1
/* 4B734 8004AB34 00003012 */  mflo       $a2
.L8004AB38:
/* 4B738 8004AB38 20E7030A */  addi       $a3, $a3, 0x30a
/* 4B73C 8004AB3C 00E63820 */  add        $a3, $a3, $a2
/* 4B740 8004AB40 03E00008 */  jr         $ra
/* 4B744 8004AB44 000711C0 */   sll       $v0, $a3, 7
.L8004AB48:
/* 4B748 8004AB48 00042A02 */  srl        $a1, $a0, 8
/* 4B74C 8004AB4C 20A5FF7F */  addi       $a1, $a1, -0x81
/* 4B750 8004AB50 00C50019 */  multu      $a2, $a1
/* 4B754 8004AB54 308700FF */  andi       $a3, $a0, 0xff
/* 4B758 8004AB58 20E7FFC0 */  addi       $a3, $a3, -0x40
/* 4B75C 8004AB5C 28E10040 */  slti       $at, $a3, 0x40
/* 4B760 8004AB60 00003012 */  mflo       $a2
/* 4B764 8004AB64 54200003 */  bnel       $at, $zero, .L8004AB74
/* 4B768 8004AB68 00003012 */   mflo      $a2
/* 4B76C 8004AB6C 20E7FFFF */  addi       $a3, $a3, -1
/* 4B770 8004AB70 00003012 */  mflo       $a2
.L8004AB74:
/* 4B774 8004AB74 00E63820 */  add        $a3, $a3, $a2
/* 4B778 8004AB78 3C068005 */  lui        $a2, %hi(D_8004AB94)
/* 4B77C 8004AB7C 00073840 */  sll        $a3, $a3, 1
/* 4B780 8004AB80 24C6AB94 */  addiu      $a2, $a2, %lo(D_8004AB94)
/* 4B784 8004AB84 00E63820 */  add        $a3, $a3, $a2
/* 4B788 8004AB88 84E60000 */  lh         $a2, ($a3)
/* 4B78C 8004AB8C 03E00008 */  jr         $ra
