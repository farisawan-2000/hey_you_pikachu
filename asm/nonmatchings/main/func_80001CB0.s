glabel func_80001CB0
/* 28B0 80001CB0 3C0E800B */  lui        $t6, %hi(D_800AC4B4)
/* 28B4 80001CB4 8DCEC4B4 */  lw         $t6, %lo(D_800AC4B4)($t6)
/* 28B8 80001CB8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 28BC 80001CBC AFBF001C */  sw         $ra, 0x1c($sp)
/* 28C0 80001CC0 15C00008 */  bnez       $t6, .L80001CE4
/* 28C4 80001CC4 AFA40020 */   sw        $a0, 0x20($sp)
/* 28C8 80001CC8 240F0001 */  addiu      $t7, $zero, 1
/* 28CC 80001CCC 3C01800B */  lui        $at, %hi(D_800AC4B0)
/* 28D0 80001CD0 44802000 */  mtc1       $zero, $f4
/* 28D4 80001CD4 AC2FC4B0 */  sw         $t7, %lo(D_800AC4B0)($at)
/* 28D8 80001CD8 3C01800B */  lui        $at, %hi(D_800AC4B8)
/* 28DC 80001CDC 10000042 */  b          .L80001DE8
/* 28E0 80001CE0 E424C4B8 */   swc1      $f4, %lo(D_800AC4B8)($at)
.L80001CE4:
/* 28E4 80001CE4 3C18800B */  lui        $t8, %hi(D_800AC4B0)
/* 28E8 80001CE8 8F18C4B0 */  lw         $t8, %lo(D_800AC4B0)($t8)
/* 28EC 80001CEC 1300000B */  beqz       $t8, .L80001D1C
/* 28F0 80001CF0 00000000 */   nop
/* 28F4 80001CF4 0C0052CF */  jal        func_80014B3C
/* 28F8 80001CF8 00000000 */   nop
/* 28FC 80001CFC 3C01800B */  lui        $at, %hi(D_800AC4B8)
/* 2900 80001D00 C426C4B8 */  lwc1       $f6, %lo(D_800AC4B8)($at)
/* 2904 80001D04 3C018006 */  lui        $at, %hi(D_800633E8)
/* 2908 80001D08 46060201 */  sub.s      $f8, $f0, $f6
/* 290C 80001D0C E42833E8 */  swc1       $f8, %lo(D_800633E8)($at)
/* 2910 80001D10 3C01800B */  lui        $at, %hi(D_800AC4B0)
/* 2914 80001D14 10000034 */  b          .L80001DE8
/* 2918 80001D18 AC20C4B0 */   sw        $zero, %lo(D_800AC4B0)($at)
.L80001D1C:
/* 291C 80001D1C 0C0052CF */  jal        func_80014B3C
/* 2920 80001D20 00000000 */   nop
/* 2924 80001D24 3C018006 */  lui        $at, %hi(D_800633E8)
/* 2928 80001D28 C42A33E8 */  lwc1       $f10, %lo(D_800633E8)($at)
/* 292C 80001D2C 24020001 */  addiu      $v0, $zero, 1
/* 2930 80001D30 3C014F00 */  lui        $at, 0x4f00
/* 2934 80001D34 460A0081 */  sub.s      $f2, $f0, $f10
/* 2938 80001D38 8FA40020 */  lw         $a0, 0x20($sp)
/* 293C 80001D3C 2405006E */  addiu      $a1, $zero, 0x6e
/* 2940 80001D40 24060028 */  addiu      $a2, $zero, 0x28
/* 2944 80001D44 46021400 */  add.s      $f16, $f2, $f2
/* 2948 80001D48 2407002D */  addiu      $a3, $zero, 0x2d
/* 294C 80001D4C 4459F800 */  cfc1       $t9, $31
/* 2950 80001D50 44C2F800 */  ctc1       $v0, $31
/* 2954 80001D54 00000000 */  nop
/* 2958 80001D58 460084A4 */  cvt.w.s    $f18, $f16
/* 295C 80001D5C 4442F800 */  cfc1       $v0, $31
/* 2960 80001D60 00000000 */  nop
/* 2964 80001D64 30420078 */  andi       $v0, $v0, 0x78
/* 2968 80001D68 50400013 */  beql       $v0, $zero, .L80001DB8
/* 296C 80001D6C 44029000 */   mfc1      $v0, $f18
/* 2970 80001D70 44819000 */  mtc1       $at, $f18
/* 2974 80001D74 24020001 */  addiu      $v0, $zero, 1
/* 2978 80001D78 46128481 */  sub.s      $f18, $f16, $f18
/* 297C 80001D7C 44C2F800 */  ctc1       $v0, $31
/* 2980 80001D80 00000000 */  nop
/* 2984 80001D84 460094A4 */  cvt.w.s    $f18, $f18
/* 2988 80001D88 4442F800 */  cfc1       $v0, $31
/* 298C 80001D8C 00000000 */  nop
/* 2990 80001D90 30420078 */  andi       $v0, $v0, 0x78
/* 2994 80001D94 14400005 */  bnez       $v0, .L80001DAC
/* 2998 80001D98 00000000 */   nop
/* 299C 80001D9C 44029000 */  mfc1       $v0, $f18
/* 29A0 80001DA0 3C018000 */  lui        $at, 0x8000
/* 29A4 80001DA4 10000007 */  b          .L80001DC4
/* 29A8 80001DA8 00411025 */   or        $v0, $v0, $at
.L80001DAC:
/* 29AC 80001DAC 10000005 */  b          .L80001DC4
/* 29B0 80001DB0 2402FFFF */   addiu     $v0, $zero, -1
/* 29B4 80001DB4 44029000 */  mfc1       $v0, $f18
.L80001DB8:
/* 29B8 80001DB8 00000000 */  nop
/* 29BC 80001DBC 0440FFFB */  bltz       $v0, .L80001DAC
/* 29C0 80001DC0 00000000 */   nop
.L80001DC4:
/* 29C4 80001DC4 44D9F800 */  ctc1       $t9, $31
/* 29C8 80001DC8 2C410097 */  sltiu      $at, $v0, 0x97
/* 29CC 80001DCC 14200002 */  bnez       $at, .L80001DD8
/* 29D0 80001DD0 00401825 */   or        $v1, $v0, $zero
/* 29D4 80001DD4 24030096 */  addiu      $v1, $zero, 0x96
.L80001DD8:
/* 29D8 80001DD8 44802000 */  mtc1       $zero, $f4
/* 29DC 80001DDC AFA30010 */  sw         $v1, 0x10($sp)
/* 29E0 80001DE0 0C00054C */  jal        func_80001530
/* 29E4 80001DE4 E7A40014 */   swc1      $f4, 0x14($sp)
.L80001DE8:
/* 29E8 80001DE8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 29EC 80001DEC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 29F0 80001DF0 03E00008 */  jr         $ra
/* 29F4 80001DF4 00000000 */   nop