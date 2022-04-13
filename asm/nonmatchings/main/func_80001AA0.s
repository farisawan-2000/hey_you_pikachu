glabel func_80001AA0
/* 26A0 80001AA0 3C02800F */  lui        $v0, %hi(D_800F2988)
/* 26A4 80001AA4 8C422988 */  lw         $v0, %lo(D_800F2988)($v0)
/* 26A8 80001AA8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 26AC 80001AAC 3C0F800B */  lui        $t7, %hi(D_800ABDF0)
/* 26B0 80001AB0 3C19800B */  lui        $t9, %hi(D_800ABEB0)
/* 26B4 80001AB4 25EFBDF0 */  addiu      $t7, $t7, %lo(D_800ABDF0)
/* 26B8 80001AB8 2739BEB0 */  addiu      $t9, $t9, %lo(D_800ABEB0)
/* 26BC 80001ABC 00027100 */  sll        $t6, $v0, 4
/* 26C0 80001AC0 0002C1C0 */  sll        $t8, $v0, 7
/* 26C4 80001AC4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 26C8 80001AC8 01CF2821 */  addu       $a1, $t6, $t7
/* 26CC 80001ACC 03193021 */  addu       $a2, $t8, $t9
/* 26D0 80001AD0 AFA40020 */  sw         $a0, 0x20($sp)
/* 26D4 80001AD4 AFA6001C */  sw         $a2, 0x1c($sp)
/* 26D8 80001AD8 0C000611 */  jal        func_80001844
/* 26DC 80001ADC AFA50018 */   sw        $a1, 0x18($sp)
/* 26E0 80001AE0 3C05800B */  lui        $a1, %hi(D_800ABDD0)
/* 26E4 80001AE4 24A5BDD0 */  addiu      $a1, $a1, %lo(D_800ABDD0)
/* 26E8 80001AE8 8CA30000 */  lw         $v1, ($a1)
/* 26EC 80001AEC 3C0ADB0E */  lui        $t2, 0xdb0e
/* 26F0 80001AF0 3C0CDC08 */  lui        $t4, 0xdc08
/* 26F4 80001AF4 24690008 */  addiu      $t1, $v1, 8
/* 26F8 80001AF8 ACA90000 */  sw         $t1, ($a1)
/* 26FC 80001AFC AC620004 */  sw         $v0, 4($v1)
/* 2700 80001B00 AC6A0000 */  sw         $t2, ($v1)
/* 2704 80001B04 8CA30000 */  lw         $v1, ($a1)
/* 2708 80001B08 358C0008 */  ori        $t4, $t4, 8
/* 270C 80001B0C 3C0FDA38 */  lui        $t7, 0xda38
/* 2710 80001B10 246B0008 */  addiu      $t3, $v1, 8
/* 2714 80001B14 ACAB0000 */  sw         $t3, ($a1)
/* 2718 80001B18 AC6C0000 */  sw         $t4, ($v1)
/* 271C 80001B1C 8FAD0018 */  lw         $t5, 0x18($sp)
/* 2720 80001B20 35EF0007 */  ori        $t7, $t7, 7
/* 2724 80001B24 3C018000 */  lui        $at, 0x8000
/* 2728 80001B28 AC6D0004 */  sw         $t5, 4($v1)
/* 272C 80001B2C 8CA30000 */  lw         $v1, ($a1)
/* 2730 80001B30 246E0008 */  addiu      $t6, $v1, 8
/* 2734 80001B34 ACAE0000 */  sw         $t6, ($a1)
/* 2738 80001B38 AC6F0000 */  sw         $t7, ($v1)
/* 273C 80001B3C 8FB8001C */  lw         $t8, 0x1c($sp)
/* 2740 80001B40 0301C821 */  addu       $t9, $t8, $at
/* 2744 80001B44 AC790004 */  sw         $t9, 4($v1)
/* 2748 80001B48 0C0006D8 */  jal        func_80001B60
/* 274C 80001B4C 8FA40020 */   lw        $a0, 0x20($sp)
/* 2750 80001B50 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2754 80001B54 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2758 80001B58 03E00008 */  jr         $ra
/* 275C 80001B5C 00000000 */   nop
