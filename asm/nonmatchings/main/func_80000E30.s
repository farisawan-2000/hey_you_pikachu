glabel func_80000E30
/* 1A30 80000E30 44866000 */  mtc1       $a2, $f12
/* 1A34 80000E34 44800000 */  mtc1       $zero, $f0
/* 1A38 80000E38 00000000 */  nop
/* 1A3C 80000E3C 4600603E */  c.le.s     $f12, $f0
/* 1A40 80000E40 00000000 */  nop
/* 1A44 80000E44 4502000B */  bc1fl      .L80000E74
/* 1A48 80000E48 4600603C */   c.lt.s    $f12, $f0
/* 1A4C 80000E4C 90AE0000 */  lbu        $t6, ($a1)
/* 1A50 80000E50 A08E0000 */  sb         $t6, ($a0)
/* 1A54 80000E54 90AF0001 */  lbu        $t7, 1($a1)
/* 1A58 80000E58 A08F0001 */  sb         $t7, 1($a0)
/* 1A5C 80000E5C 90B80002 */  lbu        $t8, 2($a1)
/* 1A60 80000E60 A0980002 */  sb         $t8, 2($a0)
/* 1A64 80000E64 90B90003 */  lbu        $t9, 3($a1)
/* 1A68 80000E68 03E00008 */  jr         $ra
/* 1A6C 80000E6C A0990003 */   sb        $t9, 3($a0)
/* 1A70 80000E70 4600603C */  c.lt.s     $f12, $f0
.L80000E74:
/* 1A74 80000E74 00000000 */  nop
/* 1A78 80000E78 45000004 */  bc1f       .L80000E8C
/* 1A7C 80000E7C 3C013F80 */   lui       $at, 0x3f80
/* 1A80 80000E80 44811000 */  mtc1       $at, $f2
/* 1A84 80000E84 10000009 */  b          .L80000EAC
/* 1A88 80000E88 46000306 */   mov.s     $f12, $f0
.L80000E8C:
/* 1A8C 80000E8C 3C013F80 */  lui        $at, 0x3f80
/* 1A90 80000E90 44811000 */  mtc1       $at, $f2
/* 1A94 80000E94 00000000 */  nop
/* 1A98 80000E98 460C103C */  c.lt.s     $f2, $f12
/* 1A9C 80000E9C 00000000 */  nop
/* 1AA0 80000EA0 45020003 */  bc1fl      .L80000EB0
/* 1AA4 80000EA4 90A80000 */   lbu       $t0, ($a1)
/* 1AA8 80000EA8 46001306 */  mov.s      $f12, $f2
.L80000EAC:
/* 1AAC 80000EAC 90A80000 */  lbu        $t0, ($a1)
.L80000EB0:
/* 1AB0 80000EB0 460C1001 */  sub.s      $f0, $f2, $f12
/* 1AB4 80000EB4 44882000 */  mtc1       $t0, $f4
/* 1AB8 80000EB8 05010005 */  bgez       $t0, .L80000ED0
/* 1ABC 80000EBC 468021A0 */   cvt.s.w   $f6, $f4
/* 1AC0 80000EC0 3C014F80 */  lui        $at, 0x4f80
/* 1AC4 80000EC4 44814000 */  mtc1       $at, $f8
/* 1AC8 80000EC8 00000000 */  nop
/* 1ACC 80000ECC 46083180 */  add.s      $f6, $f6, $f8
.L80000ED0:
/* 1AD0 80000ED0 90890000 */  lbu        $t1, ($a0)
/* 1AD4 80000ED4 46003282 */  mul.s      $f10, $f6, $f0
/* 1AD8 80000ED8 44898000 */  mtc1       $t1, $f16
/* 1ADC 80000EDC 05210005 */  bgez       $t1, .L80000EF4
/* 1AE0 80000EE0 468084A0 */   cvt.s.w   $f18, $f16
/* 1AE4 80000EE4 3C014F80 */  lui        $at, 0x4f80
/* 1AE8 80000EE8 44812000 */  mtc1       $at, $f4
/* 1AEC 80000EEC 00000000 */  nop
/* 1AF0 80000EF0 46049480 */  add.s      $f18, $f18, $f4
.L80000EF4:
/* 1AF4 80000EF4 460C9202 */  mul.s      $f8, $f18, $f12
/* 1AF8 80000EF8 46085180 */  add.s      $f6, $f10, $f8
/* 1AFC 80000EFC 4600340D */  trunc.w.s  $f16, $f6
/* 1B00 80000F00 44038000 */  mfc1       $v1, $f16
/* 1B04 80000F04 00000000 */  nop
/* 1B08 80000F08 04610003 */  bgez       $v1, .L80000F18
/* 1B0C 80000F0C 00601025 */   or        $v0, $v1, $zero
/* 1B10 80000F10 10000005 */  b          .L80000F28
/* 1B14 80000F14 00001025 */   or        $v0, $zero, $zero
.L80000F18:
/* 1B18 80000F18 28610100 */  slti       $at, $v1, 0x100
/* 1B1C 80000F1C 54200003 */  bnel       $at, $zero, .L80000F2C
/* 1B20 80000F20 A0820000 */   sb        $v0, ($a0)
/* 1B24 80000F24 240200FF */  addiu      $v0, $zero, 0xff
.L80000F28:
/* 1B28 80000F28 A0820000 */  sb         $v0, ($a0)
.L80000F2C:
/* 1B2C 80000F2C 90AB0001 */  lbu        $t3, 1($a1)
/* 1B30 80000F30 3C014F80 */  lui        $at, 0x4f80
/* 1B34 80000F34 24840001 */  addiu      $a0, $a0, 1
/* 1B38 80000F38 448B2000 */  mtc1       $t3, $f4
/* 1B3C 80000F3C 24A50001 */  addiu      $a1, $a1, 1
/* 1B40 80000F40 05610004 */  bgez       $t3, .L80000F54
/* 1B44 80000F44 468024A0 */   cvt.s.w   $f18, $f4
/* 1B48 80000F48 44815000 */  mtc1       $at, $f10
/* 1B4C 80000F4C 00000000 */  nop
/* 1B50 80000F50 460A9480 */  add.s      $f18, $f18, $f10
.L80000F54:
/* 1B54 80000F54 908C0000 */  lbu        $t4, ($a0)
/* 1B58 80000F58 46009202 */  mul.s      $f8, $f18, $f0
/* 1B5C 80000F5C 3C014F80 */  lui        $at, 0x4f80
/* 1B60 80000F60 448C3000 */  mtc1       $t4, $f6
/* 1B64 80000F64 05810004 */  bgez       $t4, .L80000F78
/* 1B68 80000F68 46803420 */   cvt.s.w   $f16, $f6
/* 1B6C 80000F6C 44812000 */  mtc1       $at, $f4
/* 1B70 80000F70 00000000 */  nop
/* 1B74 80000F74 46048400 */  add.s      $f16, $f16, $f4
.L80000F78:
/* 1B78 80000F78 460C8282 */  mul.s      $f10, $f16, $f12
/* 1B7C 80000F7C 460A4480 */  add.s      $f18, $f8, $f10
/* 1B80 80000F80 4600918D */  trunc.w.s  $f6, $f18
/* 1B84 80000F84 44033000 */  mfc1       $v1, $f6
/* 1B88 80000F88 00000000 */  nop
/* 1B8C 80000F8C 04610003 */  bgez       $v1, .L80000F9C
/* 1B90 80000F90 00601025 */   or        $v0, $v1, $zero
/* 1B94 80000F94 10000005 */  b          .L80000FAC
/* 1B98 80000F98 00001025 */   or        $v0, $zero, $zero
.L80000F9C:
/* 1B9C 80000F9C 28610100 */  slti       $at, $v1, 0x100
/* 1BA0 80000FA0 54200003 */  bnel       $at, $zero, .L80000FB0
/* 1BA4 80000FA4 A0820000 */   sb        $v0, ($a0)
/* 1BA8 80000FA8 240200FF */  addiu      $v0, $zero, 0xff
.L80000FAC:
/* 1BAC 80000FAC A0820000 */  sb         $v0, ($a0)
.L80000FB0:
/* 1BB0 80000FB0 90AE0001 */  lbu        $t6, 1($a1)
/* 1BB4 80000FB4 24840001 */  addiu      $a0, $a0, 1
/* 1BB8 80000FB8 24A50001 */  addiu      $a1, $a1, 1
/* 1BBC 80000FBC 448E2000 */  mtc1       $t6, $f4
/* 1BC0 80000FC0 3C014F80 */  lui        $at, 0x4f80
/* 1BC4 80000FC4 05C10004 */  bgez       $t6, .L80000FD8
/* 1BC8 80000FC8 46802420 */   cvt.s.w   $f16, $f4
/* 1BCC 80000FCC 44814000 */  mtc1       $at, $f8
/* 1BD0 80000FD0 00000000 */  nop
/* 1BD4 80000FD4 46088400 */  add.s      $f16, $f16, $f8
.L80000FD8:
/* 1BD8 80000FD8 908F0000 */  lbu        $t7, ($a0)
/* 1BDC 80000FDC 46008282 */  mul.s      $f10, $f16, $f0
/* 1BE0 80000FE0 3C014F80 */  lui        $at, 0x4f80
/* 1BE4 80000FE4 448F9000 */  mtc1       $t7, $f18
/* 1BE8 80000FE8 05E10004 */  bgez       $t7, .L80000FFC
/* 1BEC 80000FEC 468091A0 */   cvt.s.w   $f6, $f18
/* 1BF0 80000FF0 44812000 */  mtc1       $at, $f4
/* 1BF4 80000FF4 00000000 */  nop
/* 1BF8 80000FF8 46043180 */  add.s      $f6, $f6, $f4
.L80000FFC:
/* 1BFC 80000FFC 460C3202 */  mul.s      $f8, $f6, $f12
/* 1C00 80001000 46085400 */  add.s      $f16, $f10, $f8
/* 1C04 80001004 4600848D */  trunc.w.s  $f18, $f16
/* 1C08 80001008 44039000 */  mfc1       $v1, $f18
/* 1C0C 8000100C 00000000 */  nop
/* 1C10 80001010 04610003 */  bgez       $v1, .L80001020
/* 1C14 80001014 00601025 */   or        $v0, $v1, $zero
/* 1C18 80001018 10000005 */  b          .L80001030
/* 1C1C 8000101C 00001025 */   or        $v0, $zero, $zero
.L80001020:
/* 1C20 80001020 28610100 */  slti       $at, $v1, 0x100
/* 1C24 80001024 54200003 */  bnel       $at, $zero, .L80001034
/* 1C28 80001028 A0820000 */   sb        $v0, ($a0)
/* 1C2C 8000102C 240200FF */  addiu      $v0, $zero, 0xff
.L80001030:
/* 1C30 80001030 A0820000 */  sb         $v0, ($a0)
.L80001034:
/* 1C34 80001034 90B90001 */  lbu        $t9, 1($a1)
/* 1C38 80001038 24840001 */  addiu      $a0, $a0, 1
/* 1C3C 8000103C 24A50001 */  addiu      $a1, $a1, 1
/* 1C40 80001040 44992000 */  mtc1       $t9, $f4
/* 1C44 80001044 3C014F80 */  lui        $at, 0x4f80
/* 1C48 80001048 07210004 */  bgez       $t9, .L8000105C
/* 1C4C 8000104C 468021A0 */   cvt.s.w   $f6, $f4
/* 1C50 80001050 44815000 */  mtc1       $at, $f10
/* 1C54 80001054 00000000 */  nop
/* 1C58 80001058 460A3180 */  add.s      $f6, $f6, $f10
.L8000105C:
/* 1C5C 8000105C 90880000 */  lbu        $t0, ($a0)
/* 1C60 80001060 46003202 */  mul.s      $f8, $f6, $f0
/* 1C64 80001064 3C014F80 */  lui        $at, 0x4f80
/* 1C68 80001068 44888000 */  mtc1       $t0, $f16
/* 1C6C 8000106C 05010004 */  bgez       $t0, .L80001080
/* 1C70 80001070 468084A0 */   cvt.s.w   $f18, $f16
/* 1C74 80001074 44812000 */  mtc1       $at, $f4
/* 1C78 80001078 00000000 */  nop
/* 1C7C 8000107C 46049480 */  add.s      $f18, $f18, $f4
.L80001080:
/* 1C80 80001080 460C9282 */  mul.s      $f10, $f18, $f12
/* 1C84 80001084 460A4180 */  add.s      $f6, $f8, $f10
/* 1C88 80001088 4600340D */  trunc.w.s  $f16, $f6
/* 1C8C 8000108C 44038000 */  mfc1       $v1, $f16
/* 1C90 80001090 00000000 */  nop
/* 1C94 80001094 04610003 */  bgez       $v1, .L800010A4
/* 1C98 80001098 00601025 */   or        $v0, $v1, $zero
/* 1C9C 8000109C 10000005 */  b          .L800010B4
/* 1CA0 800010A0 00001025 */   or        $v0, $zero, $zero
.L800010A4:
/* 1CA4 800010A4 28610100 */  slti       $at, $v1, 0x100
/* 1CA8 800010A8 54200003 */  bnel       $at, $zero, .L800010B8
/* 1CAC 800010AC A0820000 */   sb        $v0, ($a0)
/* 1CB0 800010B0 240200FF */  addiu      $v0, $zero, 0xff
.L800010B4:
/* 1CB4 800010B4 A0820000 */  sb         $v0, ($a0)
.L800010B8:
/* 1CB8 800010B8 03E00008 */  jr         $ra
/* 1CBC 800010BC 00000000 */   nop