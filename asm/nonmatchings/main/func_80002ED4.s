glabel func_80002ED4
/* 3AD4 80002ED4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 3AD8 80002ED8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 3ADC 80002EDC AFB00018 */  sw         $s0, 0x18($sp)
/* 3AE0 80002EE0 0C01482C */  jal        osGetTime
/* 3AE4 80002EE4 AFA40040 */   sw        $a0, 0x40($sp)
/* 3AE8 80002EE8 8FAE0040 */  lw         $t6, 0x40($sp)
/* 3AEC 80002EEC 3C18800B */  lui        $t8, %hi(D_800AD140)
/* 3AF0 80002EF0 2718D140 */  addiu      $t8, $t8, %lo(D_800AD140)
/* 3AF4 80002EF4 000E7880 */  sll        $t7, $t6, 2
/* 3AF8 80002EF8 01EE7821 */  addu       $t7, $t7, $t6
/* 3AFC 80002EFC 000F78C0 */  sll        $t7, $t7, 3
/* 3B00 80002F00 01F88021 */  addu       $s0, $t7, $t8
/* 3B04 80002F04 8E080008 */  lw         $t0, 8($s0)
/* 3B08 80002F08 8E09000C */  lw         $t1, 0xc($s0)
/* 3B0C 80002F0C 0048082B */  sltu       $at, $v0, $t0
/* 3B10 80002F10 14200008 */  bnez       $at, .L80002F34
/* 3B14 80002F14 0102082B */   sltu      $at, $t0, $v0
/* 3B18 80002F18 14200004 */  bnez       $at, .L80002F2C
/* 3B1C 80002F1C 24190001 */   addiu     $t9, $zero, 1
/* 3B20 80002F20 0069082B */  sltu       $at, $v1, $t1
/* 3B24 80002F24 14200003 */  bnez       $at, .L80002F34
/* 3B28 80002F28 00000000 */   nop
.L80002F2C:
/* 3B2C 80002F2C 1000003A */  b          .L80003018
/* 3B30 80002F30 AE190000 */   sw        $t9, ($s0)
.L80002F34:
/* 3B34 80002F34 0C01482C */  jal        osGetTime
/* 3B38 80002F38 00000000 */   nop
/* 3B3C 80002F3C 8E0A0010 */  lw         $t2, 0x10($s0)
/* 3B40 80002F40 8E0B0014 */  lw         $t3, 0x14($s0)
/* 3B44 80002F44 004A082B */  sltu       $at, $v0, $t2
/* 3B48 80002F48 AFAA0020 */  sw         $t2, 0x20($sp)
/* 3B4C 80002F4C 14200032 */  bnez       $at, .L80003018
/* 3B50 80002F50 AFAB0024 */   sw        $t3, 0x24($sp)
/* 3B54 80002F54 0142082B */  sltu       $at, $t2, $v0
/* 3B58 80002F58 14200004 */  bnez       $at, .L80002F6C
/* 3B5C 80002F5C 8FAF0024 */   lw        $t7, 0x24($sp)
/* 3B60 80002F60 006B082B */  sltu       $at, $v1, $t3
/* 3B64 80002F64 5420002D */  bnel       $at, $zero, .L8000301C
/* 3B68 80002F68 8FBF001C */   lw        $ra, 0x1c($sp)
.L80002F6C:
/* 3B6C 80002F6C 8E19001C */  lw         $t9, 0x1c($s0)
/* 3B70 80002F70 8FAE0020 */  lw         $t6, 0x20($sp)
/* 3B74 80002F74 8E180018 */  lw         $t8, 0x18($s0)
/* 3B78 80002F78 01F94821 */  addu       $t1, $t7, $t9
/* 3B7C 80002F7C 0139082B */  sltu       $at, $t1, $t9
/* 3B80 80002F80 002E4021 */  addu       $t0, $at, $t6
/* 3B84 80002F84 01184021 */  addu       $t0, $t0, $t8
/* 3B88 80002F88 AE080010 */  sw         $t0, 0x10($s0)
/* 3B8C 80002F8C 0C01482C */  jal        osGetTime
/* 3B90 80002F90 AE090014 */   sw        $t1, 0x14($s0)
/* 3B94 80002F94 8E0A0010 */  lw         $t2, 0x10($s0)
/* 3B98 80002F98 8E0B0014 */  lw         $t3, 0x14($s0)
/* 3B9C 80002F9C 004A082B */  sltu       $at, $v0, $t2
/* 3BA0 80002FA0 14200009 */  bnez       $at, .L80002FC8
/* 3BA4 80002FA4 0142082B */   sltu      $at, $t2, $v0
/* 3BA8 80002FA8 14200003 */  bnez       $at, .L80002FB8
/* 3BAC 80002FAC 0163082B */   sltu      $at, $t3, $v1
/* 3BB0 80002FB0 50200006 */  beql       $at, $zero, .L80002FCC
/* 3BB4 80002FB4 8FAC0040 */   lw        $t4, 0x40($sp)
.L80002FB8:
/* 3BB8 80002FB8 0C01482C */  jal        osGetTime
/* 3BBC 80002FBC 00000000 */   nop
/* 3BC0 80002FC0 AE020010 */  sw         $v0, 0x10($s0)
/* 3BC4 80002FC4 AE030014 */  sw         $v1, 0x14($s0)
.L80002FC8:
/* 3BC8 80002FC8 8FAC0040 */  lw         $t4, 0x40($sp)
.L80002FCC:
/* 3BCC 80002FCC 3C0E800B */  lui        $t6, %hi(D_800AD0E0)
/* 3BD0 80002FD0 25CED0E0 */  addiu      $t6, $t6, %lo(D_800AD0E0)
/* 3BD4 80002FD4 000C6880 */  sll        $t5, $t4, 2
/* 3BD8 80002FD8 01AC6823 */  subu       $t5, $t5, $t4
/* 3BDC 80002FDC 000D68C0 */  sll        $t5, $t5, 3
/* 3BE0 80002FE0 01AE2021 */  addu       $a0, $t5, $t6
/* 3BE4 80002FE4 240F0003 */  addiu      $t7, $zero, 3
/* 3BE8 80002FE8 AC8F0000 */  sw         $t7, ($a0)
/* 3BEC 80002FEC 0C01482C */  jal        osGetTime
/* 3BF0 80002FF0 AFA4002C */   sw        $a0, 0x2c($sp)
/* 3BF4 80002FF4 8E190024 */  lw         $t9, 0x24($s0)
/* 3BF8 80002FF8 8FA4002C */  lw         $a0, 0x2c($sp)
/* 3BFC 80002FFC 8E180020 */  lw         $t8, 0x20($s0)
/* 3C00 80003000 00794821 */  addu       $t1, $v1, $t9
/* 3C04 80003004 0139082B */  sltu       $at, $t1, $t9
/* 3C08 80003008 00224021 */  addu       $t0, $at, $v0
/* 3C0C 8000300C 01184021 */  addu       $t0, $t0, $t8
/* 3C10 80003010 AC880008 */  sw         $t0, 8($a0)
/* 3C14 80003014 AC89000C */  sw         $t1, 0xc($a0)
.L80003018:
/* 3C18 80003018 8FBF001C */  lw         $ra, 0x1c($sp)
.L8000301C:
/* 3C1C 8000301C 8FB00018 */  lw         $s0, 0x18($sp)
/* 3C20 80003020 27BD0040 */  addiu      $sp, $sp, 0x40
/* 3C24 80003024 03E00008 */  jr         $ra
/* 3C28 80003028 00000000 */   nop
