glabel func_8000330C
/* 3F0C 8000330C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 3F10 80003310 AFB20020 */  sw         $s2, 0x20($sp)
/* 3F14 80003314 AFB1001C */  sw         $s1, 0x1c($sp)
/* 3F18 80003318 AFB40028 */  sw         $s4, 0x28($sp)
/* 3F1C 8000331C AFB30024 */  sw         $s3, 0x24($sp)
/* 3F20 80003320 AFB00018 */  sw         $s0, 0x18($sp)
/* 3F24 80003324 3C11800B */  lui        $s1, %hi(D_800AD0E0)
/* 3F28 80003328 3C12800B */  lui        $s2, %hi(D_800AD140)
/* 3F2C 8000332C AFBF002C */  sw         $ra, 0x2c($sp)
/* 3F30 80003330 2652D140 */  addiu      $s2, $s2, %lo(D_800AD140)
/* 3F34 80003334 2631D0E0 */  addiu      $s1, $s1, %lo(D_800AD0E0)
/* 3F38 80003338 00008025 */  or         $s0, $zero, $zero
/* 3F3C 8000333C 24130003 */  addiu      $s3, $zero, 3
/* 3F40 80003340 24140004 */  addiu      $s4, $zero, 4
.L80003344:
/* 3F44 80003344 AE200000 */  sw         $zero, ($s1)
/* 3F48 80003348 AE400000 */  sw         $zero, ($s2)
/* 3F4C 8000334C 0C000A09 */  jal        func_80002824
/* 3F50 80003350 02002025 */   or        $a0, $s0, $zero
/* 3F54 80003354 54530004 */  bnel       $v0, $s3, .L80003368
/* 3F58 80003358 26100001 */   addiu     $s0, $s0, 1
/* 3F5C 8000335C 0C000AC8 */  jal        func_80002B20
/* 3F60 80003360 02002025 */   or        $a0, $s0, $zero
/* 3F64 80003364 26100001 */  addiu      $s0, $s0, 1
.L80003368:
/* 3F68 80003368 26310018 */  addiu      $s1, $s1, 0x18
/* 3F6C 8000336C 1614FFF5 */  bne        $s0, $s4, .L80003344
/* 3F70 80003370 26520028 */   addiu     $s2, $s2, 0x28
/* 3F74 80003374 8FBF002C */  lw         $ra, 0x2c($sp)
/* 3F78 80003378 8FB00018 */  lw         $s0, 0x18($sp)
/* 3F7C 8000337C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 3F80 80003380 8FB20020 */  lw         $s2, 0x20($sp)
/* 3F84 80003384 8FB30024 */  lw         $s3, 0x24($sp)
/* 3F88 80003388 8FB40028 */  lw         $s4, 0x28($sp)
/* 3F8C 8000338C 03E00008 */  jr         $ra
/* 3F90 80003390 27BD0030 */   addiu     $sp, $sp, 0x30