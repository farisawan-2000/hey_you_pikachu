glabel func_80000CE4
/* 18E4 80000CE4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 18E8 80000CE8 10800006 */  beqz       $a0, .L80000D04
/* 18EC 80000CEC AFBF0024 */   sw        $ra, 0x24($sp)
/* 18F0 80000CF0 3C04800B */  lui        $a0, %hi(D_800ABDD0)
/* 18F4 80000CF4 0C00CEDE */  jal        func_80033B78
/* 18F8 80000CF8 2484BDD0 */   addiu     $a0, $a0, %lo(D_800ABDD0)
/* 18FC 80000CFC 1000000C */  b          .L80000D30
/* 1900 80000D00 8FBF0024 */   lw        $ra, 0x24($sp)
.L80000D04:
/* 1904 80000D04 240E0001 */  addiu      $t6, $zero, 1
/* 1908 80000D08 AFAE001C */  sw         $t6, 0x1c($sp)
/* 190C 80000D0C 00002025 */  or         $a0, $zero, $zero
/* 1910 80000D10 00002825 */  or         $a1, $zero, $zero
/* 1914 80000D14 2406013F */  addiu      $a2, $zero, 0x13f
/* 1918 80000D18 240700EF */  addiu      $a3, $zero, 0xef
/* 191C 80000D1C AFA00010 */  sw         $zero, 0x10($sp)
/* 1920 80000D20 AFA00014 */  sw         $zero, 0x14($sp)
/* 1924 80000D24 0C0002CE */  jal        func_80000B38
/* 1928 80000D28 AFA00018 */   sw        $zero, 0x18($sp)
/* 192C 80000D2C 8FBF0024 */  lw         $ra, 0x24($sp)
.L80000D30:
/* 1930 80000D30 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1934 80000D34 03E00008 */  jr         $ra
/* 1938 80000D38 00000000 */   nop
