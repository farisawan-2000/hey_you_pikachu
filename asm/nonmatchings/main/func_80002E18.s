glabel func_80002E18
/* 3A18 80002E18 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3A1C 80002E1C AFBF0014 */  sw         $ra, 0x14($sp)
/* 3A20 80002E20 0C01482C */  jal        osGetTime
/* 3A24 80002E24 AFA40018 */   sw        $a0, 0x18($sp)
/* 3A28 80002E28 8FAE0018 */  lw         $t6, 0x18($sp)
/* 3A2C 80002E2C 3C18800B */  lui        $t8, %hi(D_800AD0E0)
/* 3A30 80002E30 2718D0E0 */  addiu      $t8, $t8, %lo(D_800AD0E0)
/* 3A34 80002E34 000E7880 */  sll        $t7, $t6, 2
/* 3A38 80002E38 01EE7823 */  subu       $t7, $t7, $t6
/* 3A3C 80002E3C 000F78C0 */  sll        $t7, $t7, 3
/* 3A40 80002E40 01F82021 */  addu       $a0, $t7, $t8
/* 3A44 80002E44 8C880008 */  lw         $t0, 8($a0)
/* 3A48 80002E48 8C89000C */  lw         $t1, 0xc($a0)
/* 3A4C 80002E4C 0048082B */  sltu       $at, $v0, $t0
/* 3A50 80002E50 14200008 */  bnez       $at, .L80002E74
/* 3A54 80002E54 0102082B */   sltu      $at, $t0, $v0
/* 3A58 80002E58 14200004 */  bnez       $at, .L80002E6C
/* 3A5C 80002E5C 24190004 */   addiu     $t9, $zero, 4
/* 3A60 80002E60 0069082B */  sltu       $at, $v1, $t1
/* 3A64 80002E64 54200004 */  bnel       $at, $zero, .L80002E78
/* 3A68 80002E68 8FBF0014 */   lw        $ra, 0x14($sp)
.L80002E6C:
/* 3A6C 80002E6C AC990000 */  sw         $t9, ($a0)
/* 3A70 80002E70 AC800010 */  sw         $zero, 0x10($a0)
.L80002E74:
/* 3A74 80002E74 8FBF0014 */  lw         $ra, 0x14($sp)
.L80002E78:
/* 3A78 80002E78 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3A7C 80002E7C 03E00008 */  jr         $ra
/* 3A80 80002E80 00000000 */   nop
