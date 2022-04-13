glabel func_80002D7C
/* 397C 80002D7C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3980 80002D80 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3984 80002D84 0C000A09 */  jal        func_80002824
/* 3988 80002D88 AFA40018 */   sw        $a0, 0x18($sp)
/* 398C 80002D8C 24010002 */  addiu      $at, $zero, 2
/* 3990 80002D90 54410016 */  bnel       $v0, $at, .L80002DEC
/* 3994 80002D94 8FAA0018 */   lw        $t2, 0x18($sp)
/* 3998 80002D98 0C000A13 */  jal        func_8000284C
/* 399C 80002D9C 8FA40018 */   lw        $a0, 0x18($sp)
/* 39A0 80002DA0 00402025 */  or         $a0, $v0, $zero
/* 39A4 80002DA4 0C014738 */  jal        __osMotorAccess
/* 39A8 80002DA8 00002825 */   or        $a1, $zero, $zero
/* 39AC 80002DAC 1440000E */  bnez       $v0, .L80002DE8
/* 39B0 80002DB0 8FAE0018 */   lw        $t6, 0x18($sp)
/* 39B4 80002DB4 000E7880 */  sll        $t7, $t6, 2
/* 39B8 80002DB8 01EE7823 */  subu       $t7, $t7, $t6
/* 39BC 80002DBC 3C18800B */  lui        $t8, %hi(D_800AD0E0)
/* 39C0 80002DC0 2718D0E0 */  addiu      $t8, $t8, %lo(D_800AD0E0)
/* 39C4 80002DC4 000F78C0 */  sll        $t7, $t7, 3
/* 39C8 80002DC8 01F81021 */  addu       $v0, $t7, $t8
/* 39CC 80002DCC 8C590010 */  lw         $t9, 0x10($v0)
/* 39D0 80002DD0 27280001 */  addiu      $t0, $t9, 1
/* 39D4 80002DD4 29010003 */  slti       $at, $t0, 3
/* 39D8 80002DD8 1420000B */  bnez       $at, .L80002E08
/* 39DC 80002DDC AC480010 */   sw        $t0, 0x10($v0)
/* 39E0 80002DE0 10000009 */  b          .L80002E08
/* 39E4 80002DE4 AC400000 */   sw        $zero, ($v0)
.L80002DE8:
/* 39E8 80002DE8 8FAA0018 */  lw         $t2, 0x18($sp)
.L80002DEC:
/* 39EC 80002DEC 3C0C800B */  lui        $t4, %hi(D_800AD0E0)
/* 39F0 80002DF0 258CD0E0 */  addiu      $t4, $t4, %lo(D_800AD0E0)
/* 39F4 80002DF4 000A5880 */  sll        $t3, $t2, 2
/* 39F8 80002DF8 016A5823 */  subu       $t3, $t3, $t2
/* 39FC 80002DFC 000B58C0 */  sll        $t3, $t3, 3
/* 3A00 80002E00 0C000AE7 */  jal        func_80002B9C
/* 3A04 80002E04 016C2021 */   addu      $a0, $t3, $t4
.L80002E08:
/* 3A08 80002E08 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3A0C 80002E0C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3A10 80002E10 03E00008 */  jr         $ra
/* 3A14 80002E14 00000000 */   nop
