.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80004970
/* 5570 80004970 3C038006 */  lui        $v1, %hi(D_80063500)
/* 5574 80004974 24633500 */  addiu      $v1, $v1, %lo(D_80063500)
/* 5578 80004978 8C6E0000 */  lw         $t6, ($v1)
/* 557C 8000497C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5580 80004980 44867000 */  mtc1       $a2, $f14
/* 5584 80004984 25C20001 */  addiu      $v0, $t6, 1
/* 5588 80004988 44876000 */  mtc1       $a3, $f12
/* 558C 8000498C 2C410008 */  sltiu      $at, $v0, 8
/* 5590 80004990 00A03025 */  or         $a2, $a1, $zero
/* 5594 80004994 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5598 80004998 AFA50024 */  sw         $a1, 0x24($sp)
/* 559C 8000499C 14200003 */  bnez       $at, .L800049AC
/* 55A0 800049A0 AC620000 */   sw        $v0, ($v1)
/* 55A4 800049A4 AC600000 */  sw         $zero, ($v1)
/* 55A8 800049A8 00001025 */  or         $v0, $zero, $zero
.L800049AC:
/* 55AC 800049AC 0002C080 */  sll        $t8, $v0, 2
/* 55B0 800049B0 0302C023 */  subu       $t8, $t8, $v0
/* 55B4 800049B4 3C19800B */  lui        $t9, %hi(D_800AD480)
/* 55B8 800049B8 2739D480 */  addiu      $t9, $t9, %lo(D_800AD480)
/* 55BC 800049BC 0018C0C0 */  sll        $t8, $t8, 3
/* 55C0 800049C0 03192821 */  addu       $a1, $t8, $t9
/* 55C4 800049C4 24080007 */  addiu      $t0, $zero, 7
/* 55C8 800049C8 A4A80000 */  sh         $t0, ($a1)
/* 55CC 800049CC C7A40030 */  lwc1       $f4, 0x30($sp)
/* 55D0 800049D0 E4AC0010 */  swc1       $f12, 0x10($a1)
/* 55D4 800049D4 E4AE000C */  swc1       $f14, 0xc($a1)
/* 55D8 800049D8 ACA60008 */  sw         $a2, 8($a1)
/* 55DC 800049DC ACA40004 */  sw         $a0, 4($a1)
/* 55E0 800049E0 E4A40014 */  swc1       $f4, 0x14($a1)
/* 55E4 800049E4 0C000A1F */  jal        func_8000287C
/* 55E8 800049E8 AFA5001C */   sw        $a1, 0x1c($sp)
/* 55EC 800049EC 8FA5001C */  lw         $a1, 0x1c($sp)
/* 55F0 800049F0 00402025 */  or         $a0, $v0, $zero
/* 55F4 800049F4 0C014C64 */  jal        osSendMesg
/* 55F8 800049F8 24060001 */   addiu     $a2, $zero, 1
/* 55FC 800049FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5600 80004A00 27BD0020 */  addiu      $sp, $sp, 0x20
/* 5604 80004A04 03E00008 */  jr         $ra
/* 5608 80004A08 00000000 */   nop

glabel func_80004A0C
/* 560C 80004A0C 44800000 */  mtc1       $zero, $f0
/* 5610 80004A10 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5614 80004A14 AFBF001C */  sw         $ra, 0x1c($sp)
/* 5618 80004A18 44060000 */  mfc1       $a2, $f0
/* 561C 80004A1C 44070000 */  mfc1       $a3, $f0
/* 5620 80004A20 24050002 */  addiu      $a1, $zero, 2
/* 5624 80004A24 0C00125C */  jal        func_80004970
/* 5628 80004A28 E7A00010 */   swc1      $f0, 0x10($sp)
/* 562C 80004A2C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 5630 80004A30 27BD0020 */  addiu      $sp, $sp, 0x20
/* 5634 80004A34 03E00008 */  jr         $ra
/* 5638 80004A38 00000000 */   nop

glabel func_80004A3C
/* 563C 80004A3C 44856000 */  mtc1       $a1, $f12
/* 5640 80004A40 44867000 */  mtc1       $a2, $f14
/* 5644 80004A44 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5648 80004A48 AFA7002C */  sw         $a3, 0x2c($sp)
/* 564C 80004A4C C7A4002C */  lwc1       $f4, 0x2c($sp)
/* 5650 80004A50 AFBF001C */  sw         $ra, 0x1c($sp)
/* 5654 80004A54 44066000 */  mfc1       $a2, $f12
/* 5658 80004A58 44077000 */  mfc1       $a3, $f14
/* 565C 80004A5C 00002825 */  or         $a1, $zero, $zero
/* 5660 80004A60 0C00125C */  jal        func_80004970
/* 5664 80004A64 E7A40010 */   swc1      $f4, 0x10($sp)
/* 5668 80004A68 8FBF001C */  lw         $ra, 0x1c($sp)
/* 566C 80004A6C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 5670 80004A70 03E00008 */  jr         $ra
/* 5674 80004A74 00000000 */   nop

glabel func_80004A78
/* 5678 80004A78 44800000 */  mtc1       $zero, $f0
/* 567C 80004A7C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5680 80004A80 AFBF001C */  sw         $ra, 0x1c($sp)
/* 5684 80004A84 44060000 */  mfc1       $a2, $f0
/* 5688 80004A88 44070000 */  mfc1       $a3, $f0
/* 568C 80004A8C 24050001 */  addiu      $a1, $zero, 1
/* 5690 80004A90 0C00125C */  jal        func_80004970
/* 5694 80004A94 E7A00010 */   swc1      $f0, 0x10($sp)
/* 5698 80004A98 8FBF001C */  lw         $ra, 0x1c($sp)
/* 569C 80004A9C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 56A0 80004AA0 03E00008 */  jr         $ra
/* 56A4 80004AA4 00000000 */   nop

glabel func_80004AA8
/* 56A8 80004AA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 56AC 80004AAC AFBF0014 */  sw         $ra, 0x14($sp)
/* 56B0 80004AB0 0C000CE5 */  jal        func_80003394
/* 56B4 80004AB4 00000000 */   nop
/* 56B8 80004AB8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 56BC 80004ABC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 56C0 80004AC0 03E00008 */  jr         $ra
/* 56C4 80004AC4 00000000 */   nop
/* 56C8 80004AC8 00000000 */  nop
/* 56CC 80004ACC 00000000 */  nop
