glabel func_800006E4
/* 12E4 800006E4 3C038013 */  lui        $v1, %hi(D_80133DE4)
/* 12E8 800006E8 8C633DE4 */  lw         $v1, %lo(D_80133DE4)($v1)
/* 12EC 800006EC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 12F0 800006F0 AFBF0024 */  sw         $ra, 0x24($sp)
/* 12F4 800006F4 8C6F0050 */  lw         $t7, 0x50($v1)
/* 12F8 800006F8 8C6E0054 */  lw         $t6, 0x54($v1)
/* 12FC 800006FC 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 1300 80000700 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 1304 80000704 24060140 */  addiu      $a2, $zero, 0x140
/* 1308 80000708 0C00E03D */  jal        func_800380F4
/* 130C 8000070C 01CF2823 */   subu      $a1, $t6, $t7
/* 1310 80000710 3C03800B */  lui        $v1, %hi(D_800ABDE0)
/* 1314 80000714 2463BDE0 */  addiu      $v1, $v1, %lo(D_800ABDE0)
/* 1318 80000718 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 131C 8000071C AC620000 */  sw         $v0, ($v1)
/* 1320 80000720 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 1324 80000724 0C00DFEF */  jal        func_80037FBC
/* 1328 80000728 00402825 */   or        $a1, $v0, $zero
/* 132C 8000072C 3C038013 */  lui        $v1, %hi(D_80133DE4)
/* 1330 80000730 8C633DE4 */  lw         $v1, %lo(D_80133DE4)($v1)
/* 1334 80000734 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 1338 80000738 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 133C 8000073C 8C680050 */  lw         $t0, 0x50($v1)
/* 1340 80000740 8C690060 */  lw         $t1, 0x60($v1)
/* 1344 80000744 8C780058 */  lw         $t8, 0x58($v1)
/* 1348 80000748 2406014C */  addiu      $a2, $zero, 0x14c
/* 134C 8000074C 01285023 */  subu       $t2, $t1, $t0
/* 1350 80000750 000A58C0 */  sll        $t3, $t2, 3
/* 1354 80000754 0308C823 */  subu       $t9, $t8, $t0
/* 1358 80000758 0C00E075 */  jal        func_800381D4
/* 135C 8000075C 032B2821 */   addu      $a1, $t9, $t3
/* 1360 80000760 3C038013 */  lui        $v1, %hi(D_80133DE4)
/* 1364 80000764 8C633DE4 */  lw         $v1, %lo(D_80133DE4)($v1)
/* 1368 80000768 AFA2002C */  sw         $v0, 0x2c($sp)
/* 136C 8000076C 3C05800B */  lui        $a1, 0x800b
/* 1370 80000770 8C6D0054 */  lw         $t5, 0x54($v1)
/* 1374 80000774 8C680050 */  lw         $t0, 0x50($v1)
/* 1378 80000778 8C6C0058 */  lw         $t4, 0x58($v1)
/* 137C 8000077C 8C640048 */  lw         $a0, 0x48($v1)
/* 1380 80000780 01A87023 */  subu       $t6, $t5, $t0
/* 1384 80000784 AFAE0010 */  sw         $t6, 0x10($sp)
/* 1388 80000788 8C6F005C */  lw         $t7, 0x5c($v1)
/* 138C 8000078C 8CA5BDE0 */  lw         $a1, -0x4220($a1)
/* 1390 80000790 00403025 */  or         $a2, $v0, $zero
/* 1394 80000794 01E8C023 */  subu       $t8, $t7, $t0
/* 1398 80000798 AFB80014 */  sw         $t8, 0x14($sp)
/* 139C 8000079C 8C690060 */  lw         $t1, 0x60($v1)
/* 13A0 800007A0 01883823 */  subu       $a3, $t4, $t0
/* 13A4 800007A4 01285023 */  subu       $t2, $t1, $t0
/* 13A8 800007A8 0C00B441 */  jal        func_8002D104
/* 13AC 800007AC AFAA0018 */   sw        $t2, 0x18($sp)
/* 13B0 800007B0 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 13B4 800007B4 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 13B8 800007B8 0C00E152 */  jal        func_80038548
/* 13BC 800007BC 8FA5002C */   lw        $a1, 0x2c($sp)
/* 13C0 800007C0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 13C4 800007C4 27BD0038 */  addiu      $sp, $sp, 0x38
/* 13C8 800007C8 03E00008 */  jr         $ra
/* 13CC 800007CC 00000000 */   nop