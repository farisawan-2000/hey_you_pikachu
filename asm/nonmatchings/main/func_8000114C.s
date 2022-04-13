glabel func_8000114C
/* 1D4C 8000114C 000470C0 */  sll        $t6, $a0, 3
/* 1D50 80001150 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1D54 80001154 01C47023 */  subu       $t6, $t6, $a0
/* 1D58 80001158 3C0F800B */  lui        $t7, %hi(D_800ABCF0)
/* 1D5C 8000115C AFB00018 */  sw         $s0, 0x18($sp)
/* 1D60 80001160 25EFBCF0 */  addiu      $t7, $t7, %lo(D_800ABCF0)
/* 1D64 80001164 000E7140 */  sll        $t6, $t6, 5
/* 1D68 80001168 01CF8021 */  addu       $s0, $t6, $t7
/* 1D6C 8000116C AFBF001C */  sw         $ra, 0x1c($sp)
/* 1D70 80001170 AFA50024 */  sw         $a1, 0x24($sp)
/* 1D74 80001174 260500D4 */  addiu      $a1, $s0, 0xd4
/* 1D78 80001178 260400D8 */  addiu      $a0, $s0, 0xd8
/* 1D7C 8000117C 0C000430 */  jal        func_800010C0
/* 1D80 80001180 260600DC */   addiu     $a2, $s0, 0xdc
/* 1D84 80001184 260400C0 */  addiu      $a0, $s0, 0xc0
/* 1D88 80001188 260500BC */  addiu      $a1, $s0, 0xbc
/* 1D8C 8000118C 0C000430 */  jal        func_800010C0
/* 1D90 80001190 260600C4 */   addiu     $a2, $s0, 0xc4
/* 1D94 80001194 8FB80024 */  lw         $t8, 0x24($sp)
/* 1D98 80001198 260400CC */  addiu      $a0, $s0, 0xcc
/* 1D9C 8000119C 260500C8 */  addiu      $a1, $s0, 0xc8
/* 1DA0 800011A0 53000004 */  beql       $t8, $zero, .L800011B4
/* 1DA4 800011A4 920B00CF */   lbu       $t3, 0xcf($s0)
/* 1DA8 800011A8 0C000430 */  jal        func_800010C0
/* 1DAC 800011AC 260600D0 */   addiu     $a2, $s0, 0xd0
/* 1DB0 800011B0 920B00CF */  lbu        $t3, 0xcf($s0)
.L800011B4:
/* 1DB4 800011B4 240C00FF */  addiu      $t4, $zero, 0xff
/* 1DB8 800011B8 921900C0 */  lbu        $t9, 0xc0($s0)
/* 1DBC 800011BC 018B6823 */  subu       $t5, $t4, $t3
/* 1DC0 800011C0 448D2000 */  mtc1       $t5, $f4
/* 1DC4 800011C4 920800C1 */  lbu        $t0, 0xc1($s0)
/* 1DC8 800011C8 920900C2 */  lbu        $t1, 0xc2($s0)
/* 1DCC 800011CC 920A00C3 */  lbu        $t2, 0xc3($s0)
/* 1DD0 800011D0 468021A0 */  cvt.s.w    $f6, $f4
/* 1DD4 800011D4 3C01800A */  lui        $at, %hi(D_8009FC90)
/* 1DD8 800011D8 A21900B8 */  sb         $t9, 0xb8($s0)
/* 1DDC 800011DC A20800B9 */  sb         $t0, 0xb9($s0)
/* 1DE0 800011E0 A20900BA */  sb         $t1, 0xba($s0)
/* 1DE4 800011E4 A20A00BB */  sb         $t2, 0xbb($s0)
/* 1DE8 800011E8 C428FC90 */  lwc1       $f8, %lo(D_8009FC90)($at)
/* 1DEC 800011EC 260400B8 */  addiu      $a0, $s0, 0xb8
/* 1DF0 800011F0 260500CC */  addiu      $a1, $s0, 0xcc
/* 1DF4 800011F4 46083282 */  mul.s      $f10, $f6, $f8
/* 1DF8 800011F8 44065000 */  mfc1       $a2, $f10
/* 1DFC 800011FC 0C00038C */  jal        func_80000E30
/* 1E00 80001200 00000000 */   nop
/* 1E04 80001204 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1E08 80001208 8FB00018 */  lw         $s0, 0x18($sp)
/* 1E0C 8000120C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1E10 80001210 03E00008 */  jr         $ra
/* 1E14 80001214 00000000 */   nop
