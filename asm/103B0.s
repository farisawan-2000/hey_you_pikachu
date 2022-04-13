.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8000F7B0
/* 103B0 8000F7B0 AFA40000 */  sw         $a0, ($sp)
/* 103B4 8000F7B4 03E00008 */  jr         $ra
/* 103B8 8000F7B8 24020001 */   addiu     $v0, $zero, 1

glabel func_8000F7BC
/* 103BC 8000F7BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 103C0 8000F7C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 103C4 8000F7C4 8C820054 */  lw         $v0, 0x54($a0)
/* 103C8 8000F7C8 3C01800A */  lui        $at, %hi(D_800A25B4)
/* 103CC 8000F7CC C42425B4 */  lwc1       $f4, %lo(D_800A25B4)($at)
/* 103D0 8000F7D0 C4400138 */  lwc1       $f0, 0x138($v0)
/* 103D4 8000F7D4 3C01800A */  lui        $at, %hi(D_800A25B8)
/* 103D8 8000F7D8 4604003C */  c.lt.s     $f0, $f4
/* 103DC 8000F7DC 00000000 */  nop
/* 103E0 8000F7E0 45020023 */  bc1fl      .L8000F870
/* 103E4 8000F7E4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 103E8 8000F7E8 C42625B8 */  lwc1       $f6, %lo(D_800A25B8)($at)
/* 103EC 8000F7EC 3C01800A */  lui        $at, %hi(D_800A25BC)
/* 103F0 8000F7F0 4600303C */  c.lt.s     $f6, $f0
/* 103F4 8000F7F4 00000000 */  nop
/* 103F8 8000F7F8 4502001D */  bc1fl      .L8000F870
/* 103FC 8000F7FC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 10400 8000F800 C42825BC */  lwc1       $f8, %lo(D_800A25BC)($at)
/* 10404 8000F804 3C01800A */  lui        $at, %hi(D_800A25C0)
/* 10408 8000F808 4608003C */  c.lt.s     $f0, $f8
/* 1040C 8000F80C 00000000 */  nop
/* 10410 8000F810 4502000D */  bc1fl      .L8000F848
/* 10414 8000F814 AC4001BC */   sw        $zero, 0x1bc($v0)
/* 10418 8000F818 C42A25C0 */  lwc1       $f10, %lo(D_800A25C0)($at)
/* 1041C 8000F81C 3C014120 */  lui        $at, 0x4120
/* 10420 8000F820 4600503C */  c.lt.s     $f10, $f0
/* 10424 8000F824 00000000 */  nop
/* 10428 8000F828 45020007 */  bc1fl      .L8000F848
/* 1042C 8000F82C AC4001BC */   sw        $zero, 0x1bc($v0)
/* 10430 8000F830 44818000 */  mtc1       $at, $f16
/* 10434 8000F834 3C01800B */  lui        $at, %hi(D_800AE4E4)
/* 10438 8000F838 C432E4E4 */  lwc1       $f18, %lo(D_800AE4E4)($at)
/* 1043C 8000F83C 46128102 */  mul.s      $f4, $f16, $f18
/* 10440 8000F840 E44401DC */  swc1       $f4, 0x1dc($v0)
/* 10444 8000F844 AC4001BC */  sw         $zero, 0x1bc($v0)
.L8000F848:
/* 10448 8000F848 3C01800A */  lui        $at, %hi(D_800A25C4)
/* 1044C 8000F84C C42625C4 */  lwc1       $f6, %lo(D_800A25C4)($at)
/* 10450 8000F850 3C01800B */  lui        $at, %hi(D_800AE4E4)
/* 10454 8000F854 C428E4E4 */  lwc1       $f8, %lo(D_800AE4E4)($at)
/* 10458 8000F858 24060001 */  addiu      $a2, $zero, 1
/* 1045C 8000F85C 46083282 */  mul.s      $f10, $f6, $f8
/* 10460 8000F860 44055000 */  mfc1       $a1, $f10
/* 10464 8000F864 0C0057E5 */  jal        func_80015F94
/* 10468 8000F868 00000000 */   nop
/* 1046C 8000F86C 8FBF0014 */  lw         $ra, 0x14($sp)
.L8000F870:
/* 10470 8000F870 27BD0018 */  addiu      $sp, $sp, 0x18
/* 10474 8000F874 00001025 */  or         $v0, $zero, $zero
/* 10478 8000F878 03E00008 */  jr         $ra
/* 1047C 8000F87C 00000000 */   nop

glabel func_8000F880
/* 10480 8000F880 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10484 8000F884 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10488 8000F888 3C0540DE */  lui        $a1, 0x40de
/* 1048C 8000F88C 0C003E4D */  jal        func_8000F934
/* 10490 8000F890 34A588CE */   ori       $a1, $a1, 0x88ce
/* 10494 8000F894 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10498 8000F898 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1049C 8000F89C 03E00008 */  jr         $ra
/* 104A0 8000F8A0 00000000 */   nop

glabel func_8000F8A4
/* 104A4 8000F8A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 104A8 8000F8A8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 104AC 8000F8AC 3C054109 */  lui        $a1, 0x4109
/* 104B0 8000F8B0 0C003E4D */  jal        func_8000F934
/* 104B4 8000F8B4 34A5EA4B */   ori       $a1, $a1, 0xea4b
/* 104B8 8000F8B8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 104BC 8000F8BC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 104C0 8000F8C0 03E00008 */  jr         $ra
/* 104C4 8000F8C4 00000000 */   nop

glabel func_8000F8C8
/* 104C8 8000F8C8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 104CC 8000F8CC AFBF0014 */  sw         $ra, 0x14($sp)
/* 104D0 8000F8D0 3C053FB4 */  lui        $a1, 0x3fb4
/* 104D4 8000F8D4 0C003E4D */  jal        func_8000F934
/* 104D8 8000F8D8 34A59EED */   ori       $a1, $a1, 0x9eed
/* 104DC 8000F8DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 104E0 8000F8E0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 104E4 8000F8E4 03E00008 */  jr         $ra
/* 104E8 8000F8E8 00000000 */   nop

glabel func_8000F8EC
/* 104EC 8000F8EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 104F0 8000F8F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 104F4 8000F8F4 3C05405A */  lui        $a1, 0x405a
/* 104F8 8000F8F8 0C003E4D */  jal        func_8000F934
/* 104FC 8000F8FC 34A5A305 */   ori       $a1, $a1, 0xa305
/* 10500 8000F900 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10504 8000F904 27BD0018 */  addiu      $sp, $sp, 0x18
/* 10508 8000F908 03E00008 */  jr         $ra
/* 1050C 8000F90C 00000000 */   nop

glabel func_8000F910
/* 10510 8000F910 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10514 8000F914 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10518 8000F918 3C053FA2 */  lui        $a1, 0x3fa2
/* 1051C 8000F91C 0C003E4D */  jal        func_8000F934
/* 10520 8000F920 34A58F5C */   ori       $a1, $a1, 0x8f5c
/* 10524 8000F924 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10528 8000F928 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1052C 8000F92C 03E00008 */  jr         $ra
/* 10530 8000F930 00000000 */   nop

glabel func_8000F934
/* 10534 8000F934 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 10538 8000F938 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1053C 8000F93C AFB10018 */  sw         $s1, 0x18($sp)
/* 10540 8000F940 AFB00014 */  sw         $s0, 0x14($sp)
/* 10544 8000F944 AFA50044 */  sw         $a1, 0x44($sp)
/* 10548 8000F948 00808825 */  or         $s1, $a0, $zero
/* 1054C 8000F94C 8C900054 */  lw         $s0, 0x54($a0)
/* 10550 8000F950 0C0058FF */  jal        func_800163FC
/* 10554 8000F954 2405003E */   addiu     $a1, $zero, 0x3e
/* 10558 8000F958 C4440044 */  lwc1       $f4, 0x44($v0)
/* 1055C 8000F95C 3C013F80 */  lui        $at, 0x3f80
/* 10560 8000F960 44815000 */  mtc1       $at, $f10
/* 10564 8000F964 E7A40028 */  swc1       $f4, 0x28($sp)
/* 10568 8000F968 C4460048 */  lwc1       $f6, 0x48($v0)
/* 1056C 8000F96C 44808000 */  mtc1       $zero, $f16
/* 10570 8000F970 2404003C */  addiu      $a0, $zero, 0x3c
/* 10574 8000F974 E7A6002C */  swc1       $f6, 0x2c($sp)
/* 10578 8000F978 C448004C */  lwc1       $f8, 0x4c($v0)
/* 1057C 8000F97C E7A80030 */  swc1       $f8, 0x30($sp)
/* 10580 8000F980 E60A01F8 */  swc1       $f10, 0x1f8($s0)
/* 10584 8000F984 C7A40030 */  lwc1       $f4, 0x30($sp)
/* 10588 8000F988 C61201F4 */  lwc1       $f18, 0x1f4($s0)
/* 1058C 8000F98C C7A80028 */  lwc1       $f8, 0x28($sp)
/* 10590 8000F990 C60601EC */  lwc1       $f6, 0x1ec($s0)
/* 10594 8000F994 46049081 */  sub.s      $f2, $f18, $f4
/* 10598 8000F998 46083301 */  sub.s      $f12, $f6, $f8
/* 1059C 8000F99C 46021282 */  mul.s      $f10, $f2, $f2
/* 105A0 8000F9A0 C60601A4 */  lwc1       $f6, 0x1a4($s0)
/* 105A4 8000F9A4 460C6482 */  mul.s      $f18, $f12, $f12
/* 105A8 8000F9A8 46003221 */  cvt.d.s    $f8, $f6
/* 105AC 8000F9AC 46125100 */  add.s      $f4, $f10, $f18
/* 105B0 8000F9B0 46002021 */  cvt.d.s    $f0, $f4
/* 105B4 8000F9B4 46200004 */  sqrt.d     $f0, $f0
/* 105B8 8000F9B8 46280281 */  sub.d      $f10, $f0, $f8
/* 105BC 8000F9BC 462053A0 */  cvt.s.d    $f14, $f10
/* 105C0 8000F9C0 4610703C */  c.lt.s     $f14, $f16
/* 105C4 8000F9C4 00000000 */  nop
/* 105C8 8000F9C8 45000002 */  bc1f       .L8000F9D4
/* 105CC 8000F9CC 00000000 */   nop
/* 105D0 8000F9D0 46008386 */  mov.s      $f14, $f16
.L8000F9D4:
/* 105D4 8000F9D4 0C00EAC8 */  jal        func_8003AB20
/* 105D8 8000F9D8 E7AE0038 */   swc1      $f14, 0x38($sp)
/* 105DC 8000F9DC C7A20044 */  lwc1       $f2, 0x44($sp)
/* 105E0 8000F9E0 C7AE0038 */  lwc1       $f14, 0x38($sp)
/* 105E4 8000F9E4 244EFFF1 */  addiu      $t6, $v0, -0xf
/* 105E8 8000F9E8 448E9000 */  mtc1       $t6, $f18
/* 105EC 8000F9EC 46027003 */  div.s      $f0, $f14, $f2
/* 105F0 8000F9F0 3C013FC0 */  lui        $at, 0x3fc0
/* 105F4 8000F9F4 44813000 */  mtc1       $at, $f6
/* 105F8 8000F9F8 3C01800A */  lui        $at, 0x800a
/* 105FC 8000F9FC 46809120 */  cvt.s.w    $f4, $f18
/* 10600 8000FA00 E60401A0 */  swc1       $f4, 0x1a0($s0)
/* 10604 8000FA04 4606003C */  c.lt.s     $f0, $f6
/* 10608 8000FA08 00000000 */  nop
/* 1060C 8000FA0C 45020018 */  bc1fl      .L8000FA70
/* 10610 8000FA10 00001025 */   or        $v0, $zero, $zero
/* 10614 8000FA14 C42825C8 */  lwc1       $f8, 0x25c8($at)
/* 10618 8000FA18 240500C6 */  addiu      $a1, $zero, 0xc6
/* 1061C 8000FA1C 02202025 */  or         $a0, $s1, $zero
/* 10620 8000FA20 46081032 */  c.eq.s     $f2, $f8
/* 10624 8000FA24 00000000 */  nop
/* 10628 8000FA28 45000005 */  bc1f       .L8000FA40
/* 1062C 8000FA2C 00000000 */   nop
/* 10630 8000FA30 0C003DB3 */  jal        func_8000F6CC
/* 10634 8000FA34 02202025 */   or        $a0, $s1, $zero
/* 10638 8000FA38 1000000D */  b          .L8000FA70
/* 1063C 8000FA3C 24020001 */   addiu     $v0, $zero, 1
.L8000FA40:
/* 10640 8000FA40 0C04637C */  jal        func_80118DF0
/* 10644 8000FA44 E7A00020 */   swc1      $f0, 0x20($sp)
/* 10648 8000FA48 02202025 */  or         $a0, $s1, $zero
/* 1064C 8000FA4C 0C0462E6 */  jal        func_80118B98
/* 10650 8000FA50 3C054396 */   lui       $a1, 0x4396
/* 10654 8000FA54 0C003DC5 */  jal        func_8000F714
/* 10658 8000FA58 02202025 */   or        $a0, $s1, $zero
/* 1065C 8000FA5C 0C003D31 */  jal        func_8000F4C4
/* 10660 8000FA60 02202025 */   or        $a0, $s1, $zero
/* 10664 8000FA64 C7AA0020 */  lwc1       $f10, 0x20($sp)
/* 10668 8000FA68 E60A01F8 */  swc1       $f10, 0x1f8($s0)
/* 1066C 8000FA6C 00001025 */  or         $v0, $zero, $zero
.L8000FA70:
/* 10670 8000FA70 8FBF001C */  lw         $ra, 0x1c($sp)
/* 10674 8000FA74 8FB00014 */  lw         $s0, 0x14($sp)
/* 10678 8000FA78 8FB10018 */  lw         $s1, 0x18($sp)
/* 1067C 8000FA7C 03E00008 */  jr         $ra
/* 10680 8000FA80 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8000FA84
/* 10684 8000FA84 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 10688 8000FA88 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1068C 8000FA8C 8C820054 */  lw         $v0, 0x54($a0)
/* 10690 8000FA90 AFA40028 */  sw         $a0, 0x28($sp)
/* 10694 8000FA94 0C04637C */  jal        func_80118DF0
/* 10698 8000FA98 AFA20024 */   sw        $v0, 0x24($sp)
/* 1069C 8000FA9C 8FA40028 */  lw         $a0, 0x28($sp)
/* 106A0 8000FAA0 0C0462E6 */  jal        func_80118B98
/* 106A4 8000FAA4 3C054396 */   lui       $a1, 0x4396
/* 106A8 8000FAA8 8FA20024 */  lw         $v0, 0x24($sp)
/* 106AC 8000FAAC 3C013F80 */  lui        $at, 0x3f80
/* 106B0 8000FAB0 44812000 */  mtc1       $at, $f4
/* 106B4 8000FAB4 C44601F8 */  lwc1       $f6, 0x1f8($v0)
/* 106B8 8000FAB8 27A40018 */  addiu      $a0, $sp, 0x18
/* 106BC 8000FABC 46062032 */  c.eq.s     $f4, $f6
/* 106C0 8000FAC0 00000000 */  nop
/* 106C4 8000FAC4 45030013 */  bc1tl      .L8000FB14
/* 106C8 8000FAC8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 106CC 8000FACC 0C002018 */  jal        func_80008060
/* 106D0 8000FAD0 AFA20024 */   sw        $v0, 0x24($sp)
/* 106D4 8000FAD4 8FA20024 */  lw         $v0, 0x24($sp)
/* 106D8 8000FAD8 C7A80018 */  lwc1       $f8, 0x18($sp)
/* 106DC 8000FADC C7B2001C */  lwc1       $f18, 0x1c($sp)
/* 106E0 8000FAE0 C44A01F8 */  lwc1       $f10, 0x1f8($v0)
/* 106E4 8000FAE4 27A40018 */  addiu      $a0, $sp, 0x18
/* 106E8 8000FAE8 460A4402 */  mul.s      $f16, $f8, $f10
/* 106EC 8000FAEC C7A80020 */  lwc1       $f8, 0x20($sp)
/* 106F0 8000FAF0 E7B00018 */  swc1       $f16, 0x18($sp)
/* 106F4 8000FAF4 C44401F8 */  lwc1       $f4, 0x1f8($v0)
/* 106F8 8000FAF8 46049182 */  mul.s      $f6, $f18, $f4
/* 106FC 8000FAFC E7A6001C */  swc1       $f6, 0x1c($sp)
/* 10700 8000FB00 C44A01F8 */  lwc1       $f10, 0x1f8($v0)
/* 10704 8000FB04 460A4402 */  mul.s      $f16, $f8, $f10
/* 10708 8000FB08 0C002021 */  jal        func_80008084
/* 1070C 8000FB0C E7B00020 */   swc1      $f16, 0x20($sp)
/* 10710 8000FB10 8FBF0014 */  lw         $ra, 0x14($sp)
.L8000FB14:
/* 10714 8000FB14 27BD0028 */  addiu      $sp, $sp, 0x28
/* 10718 8000FB18 00001025 */  or         $v0, $zero, $zero
/* 1071C 8000FB1C 03E00008 */  jr         $ra
/* 10720 8000FB20 00000000 */   nop

glabel func_8000FB24
/* 10724 8000FB24 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 10728 8000FB28 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1072C 8000FB2C 8C820054 */  lw         $v0, 0x54($a0)
/* 10730 8000FB30 27A40018 */  addiu      $a0, $sp, 0x18
/* 10734 8000FB34 0C002018 */  jal        func_80008060
/* 10738 8000FB38 AFA20024 */   sw        $v0, 0x24($sp)
/* 1073C 8000FB3C 8FA20024 */  lw         $v0, 0x24($sp)
/* 10740 8000FB40 C7A40018 */  lwc1       $f4, 0x18($sp)
/* 10744 8000FB44 C7AA001C */  lwc1       $f10, 0x1c($sp)
/* 10748 8000FB48 C44601F8 */  lwc1       $f6, 0x1f8($v0)
/* 1074C 8000FB4C 27A40018 */  addiu      $a0, $sp, 0x18
/* 10750 8000FB50 46062202 */  mul.s      $f8, $f4, $f6
/* 10754 8000FB54 C7A40020 */  lwc1       $f4, 0x20($sp)
/* 10758 8000FB58 E7A80018 */  swc1       $f8, 0x18($sp)
/* 1075C 8000FB5C C45001F8 */  lwc1       $f16, 0x1f8($v0)
/* 10760 8000FB60 46105482 */  mul.s      $f18, $f10, $f16
/* 10764 8000FB64 E7B2001C */  swc1       $f18, 0x1c($sp)
/* 10768 8000FB68 C44601F8 */  lwc1       $f6, 0x1f8($v0)
/* 1076C 8000FB6C 46062202 */  mul.s      $f8, $f4, $f6
/* 10770 8000FB70 0C002021 */  jal        func_80008084
/* 10774 8000FB74 E7A80020 */   swc1      $f8, 0x20($sp)
/* 10778 8000FB78 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1077C 8000FB7C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 10780 8000FB80 00001025 */  or         $v0, $zero, $zero
/* 10784 8000FB84 03E00008 */  jr         $ra
/* 10788 8000FB88 00000000 */   nop

glabel func_8000FB8C
/* 1078C 8000FB8C 3C01800B */  lui        $at, %hi(D_800AE4E4)
/* 10790 8000FB90 44856000 */  mtc1       $a1, $f12
/* 10794 8000FB94 C424E4E4 */  lwc1       $f4, %lo(D_800AE4E4)($at)
/* 10798 8000FB98 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1079C 8000FB9C AFBF0014 */  sw         $ra, 0x14($sp)
/* 107A0 8000FBA0 460C2182 */  mul.s      $f6, $f4, $f12
/* 107A4 8000FBA4 8C8E0054 */  lw         $t6, 0x54($a0)
/* 107A8 8000FBA8 AFA40030 */  sw         $a0, 0x30($sp)
/* 107AC 8000FBAC AFAE002C */  sw         $t6, 0x2c($sp)
/* 107B0 8000FBB0 0C04637C */  jal        func_80118DF0
/* 107B4 8000FBB4 E7A60028 */   swc1      $f6, 0x28($sp)
/* 107B8 8000FBB8 8FA40030 */  lw         $a0, 0x30($sp)
/* 107BC 8000FBBC 0C0462E6 */  jal        func_80118B98
/* 107C0 8000FBC0 3C054396 */   lui       $a1, 0x4396
/* 107C4 8000FBC4 3C188013 */  lui        $t8, %hi(D_80133DE4)
/* 107C8 8000FBC8 8F183DE4 */  lw         $t8, %lo(D_80133DE4)($t8)
/* 107CC 8000FBCC 8FAF0030 */  lw         $t7, 0x30($sp)
/* 107D0 8000FBD0 3C013F80 */  lui        $at, 0x3f80
/* 107D4 8000FBD4 C70A000C */  lwc1       $f10, 0xc($t8)
/* 107D8 8000FBD8 C5E80000 */  lwc1       $f8, ($t7)
/* 107DC 8000FBDC 44819000 */  mtc1       $at, $f18
/* 107E0 8000FBE0 3C013F00 */  lui        $at, 0x3f00
/* 107E4 8000FBE4 460A4403 */  div.s      $f16, $f8, $f10
/* 107E8 8000FBE8 44813000 */  mtc1       $at, $f6
/* 107EC 8000FBEC 3C013FF0 */  lui        $at, 0x3ff0
/* 107F0 8000FBF0 44818800 */  mtc1       $at, $f17
/* 107F4 8000FBF4 2404000A */  addiu      $a0, $zero, 0xa
/* 107F8 8000FBF8 46128101 */  sub.s      $f4, $f16, $f18
/* 107FC 8000FBFC 44808000 */  mtc1       $zero, $f16
/* 10800 8000FC00 46062202 */  mul.s      $f8, $f4, $f6
/* 10804 8000FC04 C7A40028 */  lwc1       $f4, 0x28($sp)
/* 10808 8000FC08 460021A1 */  cvt.d.s    $f6, $f4
/* 1080C 8000FC0C 460042A1 */  cvt.d.s    $f10, $f8
/* 10810 8000FC10 462A8480 */  add.d      $f18, $f16, $f10
/* 10814 8000FC14 46323202 */  mul.d      $f8, $f6, $f18
/* 10818 8000FC18 46204420 */  cvt.s.d    $f16, $f8
/* 1081C 8000FC1C 0C00EAC8 */  jal        func_8003AB20
/* 10820 8000FC20 E7B00028 */   swc1      $f16, 0x28($sp)
/* 10824 8000FC24 2459FFFC */  addiu      $t9, $v0, -4
/* 10828 8000FC28 44995000 */  mtc1       $t9, $f10
/* 1082C 8000FC2C C7B20028 */  lwc1       $f18, 0x28($sp)
/* 10830 8000FC30 44803000 */  mtc1       $zero, $f6
/* 10834 8000FC34 46805120 */  cvt.s.w    $f4, $f10
/* 10838 8000FC38 27A4001C */  addiu      $a0, $sp, 0x1c
/* 1083C 8000FC3C E7A60020 */  swc1       $f6, 0x20($sp)
/* 10840 8000FC40 46009207 */  neg.s      $f8, $f18
/* 10844 8000FC44 E7A4001C */  swc1       $f4, 0x1c($sp)
/* 10848 8000FC48 0C002021 */  jal        func_80008084
/* 1084C 8000FC4C E7A80024 */   swc1      $f8, 0x24($sp)
/* 10850 8000FC50 8FA8002C */  lw         $t0, 0x2c($sp)
/* 10854 8000FC54 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10858 8000FC58 00001025 */  or         $v0, $zero, $zero
/* 1085C 8000FC5C 950901EA */  lhu        $t1, 0x1ea($t0)
/* 10860 8000FC60 11200003 */  beqz       $t1, .L8000FC70
/* 10864 8000FC64 00000000 */   nop
/* 10868 8000FC68 10000001 */  b          .L8000FC70
/* 1086C 8000FC6C 24020001 */   addiu     $v0, $zero, 1
.L8000FC70:
/* 10870 8000FC70 03E00008 */  jr         $ra
/* 10874 8000FC74 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8000FC78
/* 10878 8000FC78 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1087C 8000FC7C AFBF0014 */  sw         $ra, 0x14($sp)
/* 10880 8000FC80 0C003EE3 */  jal        func_8000FB8C
/* 10884 8000FC84 3C054248 */   lui       $a1, 0x4248
/* 10888 8000FC88 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1088C 8000FC8C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 10890 8000FC90 03E00008 */  jr         $ra
/* 10894 8000FC94 00000000 */   nop

glabel func_8000FC98
/* 10898 8000FC98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1089C 8000FC9C AFBF0014 */  sw         $ra, 0x14($sp)
/* 108A0 8000FCA0 0C003EE3 */  jal        func_8000FB8C
/* 108A4 8000FCA4 3C0543C8 */   lui       $a1, 0x43c8
/* 108A8 8000FCA8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 108AC 8000FCAC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 108B0 8000FCB0 03E00008 */  jr         $ra
/* 108B4 8000FCB4 00000000 */   nop

glabel func_8000FCB8
/* 108B8 8000FCB8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 108BC 8000FCBC AFBF0014 */  sw         $ra, 0x14($sp)
/* 108C0 8000FCC0 8C820054 */  lw         $v0, 0x54($a0)
/* 108C4 8000FCC4 C4860044 */  lwc1       $f6, 0x44($a0)
/* 108C8 8000FCC8 44805000 */  mtc1       $zero, $f10
/* 108CC 8000FCCC C44401EC */  lwc1       $f4, 0x1ec($v0)
/* 108D0 8000FCD0 00802825 */  or         $a1, $a0, $zero
/* 108D4 8000FCD4 E7AA002C */  swc1       $f10, 0x2c($sp)
/* 108D8 8000FCD8 46062201 */  sub.s      $f8, $f4, $f6
/* 108DC 8000FCDC E7A80028 */  swc1       $f8, 0x28($sp)
/* 108E0 8000FCE0 C492004C */  lwc1       $f18, 0x4c($a0)
/* 108E4 8000FCE4 C45001F4 */  lwc1       $f16, 0x1f4($v0)
/* 108E8 8000FCE8 AFA50038 */  sw         $a1, 0x38($sp)
/* 108EC 8000FCEC 27A40028 */  addiu      $a0, $sp, 0x28
/* 108F0 8000FCF0 46128101 */  sub.s      $f4, $f16, $f18
/* 108F4 8000FCF4 AFA20034 */  sw         $v0, 0x34($sp)
/* 108F8 8000FCF8 0C0032A9 */  jal        func_8000CAA4
/* 108FC 8000FCFC E7A40030 */   swc1      $f4, 0x30($sp)
/* 10900 8000FD00 8FA20034 */  lw         $v0, 0x34($sp)
/* 10904 8000FD04 C4460010 */  lwc1       $f6, 0x10($v0)
/* 10908 8000FD08 0C00EDB5 */  jal        func_8003B6D4
/* 1090C 8000FD0C 46060301 */   sub.s     $f12, $f0, $f6
/* 10910 8000FD10 3C014120 */  lui        $at, 0x4120
/* 10914 8000FD14 44814000 */  mtc1       $at, $f8
/* 10918 8000FD18 46000005 */  abs.s      $f0, $f0
/* 1091C 8000FD1C 00001025 */  or         $v0, $zero, $zero
/* 10920 8000FD20 4608003C */  c.lt.s     $f0, $f8
/* 10924 8000FD24 00000000 */  nop
/* 10928 8000FD28 4500001D */  bc1f       .L8000FDA0
/* 1092C 8000FD2C 00000000 */   nop
/* 10930 8000FD30 0C00EADA */  jal        func_8003AB68
/* 10934 8000FD34 00000000 */   nop
/* 10938 8000FD38 44828000 */  mtc1       $v0, $f16
/* 1093C 8000FD3C 3C013FE0 */  lui        $at, 0x3fe0
/* 10940 8000FD40 44815800 */  mtc1       $at, $f11
/* 10944 8000FD44 44805000 */  mtc1       $zero, $f10
/* 10948 8000FD48 04410006 */  bgez       $v0, .L8000FD64
/* 1094C 8000FD4C 468084A1 */   cvt.d.w   $f18, $f16
/* 10950 8000FD50 3C0141F0 */  lui        $at, 0x41f0
/* 10954 8000FD54 44812800 */  mtc1       $at, $f5
/* 10958 8000FD58 44802000 */  mtc1       $zero, $f4
/* 1095C 8000FD5C 00000000 */  nop
/* 10960 8000FD60 46249480 */  add.d      $f18, $f18, $f4
.L8000FD64:
/* 10964 8000FD64 3C013DF0 */  lui        $at, 0x3df0
/* 10968 8000FD68 44813800 */  mtc1       $at, $f7
/* 1096C 8000FD6C 44803000 */  mtc1       $zero, $f6
/* 10970 8000FD70 240500C0 */  addiu      $a1, $zero, 0xc0
/* 10974 8000FD74 46269202 */  mul.d      $f8, $f18, $f6
/* 10978 8000FD78 4628503C */  c.lt.d     $f10, $f8
/* 1097C 8000FD7C 00000000 */  nop
/* 10980 8000FD80 45000003 */  bc1f       .L8000FD90
/* 10984 8000FD84 00000000 */   nop
/* 10988 8000FD88 10000001 */  b          .L8000FD90
/* 1098C 8000FD8C 240500BF */   addiu     $a1, $zero, 0xbf
.L8000FD90:
/* 10990 8000FD90 0C003DB3 */  jal        func_8000F6CC
/* 10994 8000FD94 8FA40038 */   lw        $a0, 0x38($sp)
/* 10998 8000FD98 10000001 */  b          .L8000FDA0
/* 1099C 8000FD9C 24020001 */   addiu     $v0, $zero, 1
.L8000FDA0:
/* 109A0 8000FDA0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 109A4 8000FDA4 27BD0038 */  addiu      $sp, $sp, 0x38
/* 109A8 8000FDA8 03E00008 */  jr         $ra
/* 109AC 8000FDAC 00000000 */   nop

glabel func_8000FDB0
/* 109B0 8000FDB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 109B4 8000FDB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 109B8 8000FDB8 0C04637C */  jal        func_80118DF0
/* 109BC 8000FDBC AFA40018 */   sw        $a0, 0x18($sp)
/* 109C0 8000FDC0 8FA40018 */  lw         $a0, 0x18($sp)
/* 109C4 8000FDC4 0C0462E6 */  jal        func_80118B98
/* 109C8 8000FDC8 3C0542C8 */   lui       $a1, 0x42c8
/* 109CC 8000FDCC 50400004 */  beql       $v0, $zero, .L8000FDE0
/* 109D0 8000FDD0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 109D4 8000FDD4 0C003D31 */  jal        func_8000F4C4
/* 109D8 8000FDD8 8FA40018 */   lw        $a0, 0x18($sp)
/* 109DC 8000FDDC 8FBF0014 */  lw         $ra, 0x14($sp)
.L8000FDE0:
/* 109E0 8000FDE0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 109E4 8000FDE4 00001025 */  or         $v0, $zero, $zero
/* 109E8 8000FDE8 03E00008 */  jr         $ra
/* 109EC 8000FDEC 00000000 */   nop

glabel func_8000FDF0
/* 109F0 8000FDF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 109F4 8000FDF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 109F8 8000FDF8 AFA40018 */  sw         $a0, 0x18($sp)
/* 109FC 8000FDFC 0C046320 */  jal        func_80118C80
/* 10A00 8000FE00 3C0542C8 */   lui       $a1, 0x42c8
/* 10A04 8000FE04 50400004 */  beql       $v0, $zero, .L8000FE18
/* 10A08 8000FE08 8FBF0014 */   lw        $ra, 0x14($sp)
/* 10A0C 8000FE0C 0C003D31 */  jal        func_8000F4C4
/* 10A10 8000FE10 8FA40018 */   lw        $a0, 0x18($sp)
/* 10A14 8000FE14 8FBF0014 */  lw         $ra, 0x14($sp)
.L8000FE18:
/* 10A18 8000FE18 27BD0018 */  addiu      $sp, $sp, 0x18
/* 10A1C 8000FE1C 00001025 */  or         $v0, $zero, $zero
/* 10A20 8000FE20 03E00008 */  jr         $ra
/* 10A24 8000FE24 00000000 */   nop

glabel func_8000FE28
/* 10A28 8000FE28 03E00008 */  jr         $ra
/* 10A2C 8000FE2C 00000000 */   nop

glabel func_8000FE30
/* 10A30 8000FE30 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 10A34 8000FE34 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10A38 8000FE38 8C820054 */  lw         $v0, 0x54($a0)
/* 10A3C 8000FE3C C4860044 */  lwc1       $f6, 0x44($a0)
/* 10A40 8000FE40 44805000 */  mtc1       $zero, $f10
/* 10A44 8000FE44 C44401EC */  lwc1       $f4, 0x1ec($v0)
/* 10A48 8000FE48 00803025 */  or         $a2, $a0, $zero
/* 10A4C 8000FE4C E7AA0024 */  swc1       $f10, 0x24($sp)
/* 10A50 8000FE50 46062201 */  sub.s      $f8, $f4, $f6
/* 10A54 8000FE54 E7A80020 */  swc1       $f8, 0x20($sp)
/* 10A58 8000FE58 C492004C */  lwc1       $f18, 0x4c($a0)
/* 10A5C 8000FE5C C45001F4 */  lwc1       $f16, 0x1f4($v0)
/* 10A60 8000FE60 AFA60030 */  sw         $a2, 0x30($sp)
/* 10A64 8000FE64 27A40020 */  addiu      $a0, $sp, 0x20
/* 10A68 8000FE68 46128101 */  sub.s      $f4, $f16, $f18
/* 10A6C 8000FE6C AFA2002C */  sw         $v0, 0x2c($sp)
/* 10A70 8000FE70 0C0032A9 */  jal        func_8000CAA4
/* 10A74 8000FE74 E7A40028 */   swc1      $f4, 0x28($sp)
/* 10A78 8000FE78 8FA2002C */  lw         $v0, 0x2c($sp)
/* 10A7C 8000FE7C C4460010 */  lwc1       $f6, 0x10($v0)
/* 10A80 8000FE80 0C00EDB5 */  jal        func_8003B6D4
/* 10A84 8000FE84 46060301 */   sub.s     $f12, $f0, $f6
/* 10A88 8000FE88 44804000 */  mtc1       $zero, $f8
/* 10A8C 8000FE8C 8FA60030 */  lw         $a2, 0x30($sp)
/* 10A90 8000FE90 00001025 */  or         $v0, $zero, $zero
/* 10A94 8000FE94 4608003C */  c.lt.s     $f0, $f8
/* 10A98 8000FE98 00C02025 */  or         $a0, $a2, $zero
/* 10A9C 8000FE9C 45000005 */  bc1f       .L8000FEB4
/* 10AA0 8000FEA0 00000000 */   nop
/* 10AA4 8000FEA4 0C003DB3 */  jal        func_8000F6CC
/* 10AA8 8000FEA8 24050022 */   addiu     $a1, $zero, 0x22
/* 10AAC 8000FEAC 10000001 */  b          .L8000FEB4
/* 10AB0 8000FEB0 24020001 */   addiu     $v0, $zero, 1
.L8000FEB4:
/* 10AB4 8000FEB4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10AB8 8000FEB8 27BD0030 */  addiu      $sp, $sp, 0x30
/* 10ABC 8000FEBC 03E00008 */  jr         $ra
/* 10AC0 8000FEC0 00000000 */   nop

glabel func_8000FEC4
/* 10AC4 8000FEC4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 10AC8 8000FEC8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10ACC 8000FECC 8C820054 */  lw         $v0, 0x54($a0)
/* 10AD0 8000FED0 C4860044 */  lwc1       $f6, 0x44($a0)
/* 10AD4 8000FED4 44805000 */  mtc1       $zero, $f10
/* 10AD8 8000FED8 C44401EC */  lwc1       $f4, 0x1ec($v0)
/* 10ADC 8000FEDC 00803025 */  or         $a2, $a0, $zero
/* 10AE0 8000FEE0 E7AA0024 */  swc1       $f10, 0x24($sp)
/* 10AE4 8000FEE4 46062201 */  sub.s      $f8, $f4, $f6
/* 10AE8 8000FEE8 E7A80020 */  swc1       $f8, 0x20($sp)
/* 10AEC 8000FEEC C492004C */  lwc1       $f18, 0x4c($a0)
/* 10AF0 8000FEF0 C45001F4 */  lwc1       $f16, 0x1f4($v0)
/* 10AF4 8000FEF4 AFA60030 */  sw         $a2, 0x30($sp)
/* 10AF8 8000FEF8 27A40020 */  addiu      $a0, $sp, 0x20
/* 10AFC 8000FEFC 46128101 */  sub.s      $f4, $f16, $f18
/* 10B00 8000FF00 AFA2002C */  sw         $v0, 0x2c($sp)
/* 10B04 8000FF04 0C0032A9 */  jal        func_8000CAA4
/* 10B08 8000FF08 E7A40028 */   swc1      $f4, 0x28($sp)
/* 10B0C 8000FF0C 8FA2002C */  lw         $v0, 0x2c($sp)
/* 10B10 8000FF10 C4460010 */  lwc1       $f6, 0x10($v0)
/* 10B14 8000FF14 0C00EDB5 */  jal        func_8003B6D4
/* 10B18 8000FF18 46060301 */   sub.s     $f12, $f0, $f6
/* 10B1C 8000FF1C 3C0141A0 */  lui        $at, 0x41a0
/* 10B20 8000FF20 44814000 */  mtc1       $at, $f8
/* 10B24 8000FF24 46000086 */  mov.s      $f2, $f0
/* 10B28 8000FF28 46000005 */  abs.s      $f0, $f0
/* 10B2C 8000FF2C 8FA60030 */  lw         $a2, 0x30($sp)
/* 10B30 8000FF30 4608003C */  c.lt.s     $f0, $f8
/* 10B34 8000FF34 00C02025 */  or         $a0, $a2, $zero
/* 10B38 8000FF38 45020006 */  bc1fl      .L8000FF54
/* 10B3C 8000FF3C 44805000 */   mtc1      $zero, $f10
/* 10B40 8000FF40 0C003DB3 */  jal        func_8000F6CC
/* 10B44 8000FF44 240500BE */   addiu     $a1, $zero, 0xbe
/* 10B48 8000FF48 1000000C */  b          .L8000FF7C
/* 10B4C 8000FF4C 24020001 */   addiu     $v0, $zero, 1
/* 10B50 8000FF50 44805000 */  mtc1       $zero, $f10
.L8000FF54:
/* 10B54 8000FF54 00C02025 */  or         $a0, $a2, $zero
/* 10B58 8000FF58 00001025 */  or         $v0, $zero, $zero
/* 10B5C 8000FF5C 460A103C */  c.lt.s     $f2, $f10
/* 10B60 8000FF60 00000000 */  nop
/* 10B64 8000FF64 45000005 */  bc1f       .L8000FF7C
/* 10B68 8000FF68 00000000 */   nop
/* 10B6C 8000FF6C 0C003DB3 */  jal        func_8000F6CC
/* 10B70 8000FF70 240500C4 */   addiu     $a1, $zero, 0xc4
/* 10B74 8000FF74 10000001 */  b          .L8000FF7C
/* 10B78 8000FF78 24020001 */   addiu     $v0, $zero, 1
.L8000FF7C:
/* 10B7C 8000FF7C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10B80 8000FF80 27BD0030 */  addiu      $sp, $sp, 0x30
/* 10B84 8000FF84 03E00008 */  jr         $ra
/* 10B88 8000FF88 00000000 */   nop

glabel func_8000FF8C
/* 10B8C 8000FF8C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10B90 8000FF90 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10B94 8000FF94 8C8E0054 */  lw         $t6, 0x54($a0)
/* 10B98 8000FF98 AFA40020 */  sw         $a0, 0x20($sp)
/* 10B9C 8000FF9C 0C04637C */  jal        func_80118DF0
/* 10BA0 8000FFA0 AFAE001C */   sw        $t6, 0x1c($sp)
/* 10BA4 8000FFA4 8FAF001C */  lw         $t7, 0x1c($sp)
/* 10BA8 8000FFA8 8FA40020 */  lw         $a0, 0x20($sp)
/* 10BAC 8000FFAC 8DF801BC */  lw         $t8, 0x1bc($t7)
/* 10BB0 8000FFB0 13000005 */  beqz       $t8, .L8000FFC8
/* 10BB4 8000FFB4 00000000 */   nop
/* 10BB8 8000FFB8 0C0462E6 */  jal        func_80118B98
/* 10BBC 8000FFBC 3C054434 */   lui       $a1, 0x4434
/* 10BC0 8000FFC0 10000004 */  b          .L8000FFD4
/* 10BC4 8000FFC4 8FBF0014 */   lw        $ra, 0x14($sp)
.L8000FFC8:
/* 10BC8 8000FFC8 0C0462E6 */  jal        func_80118B98
/* 10BCC 8000FFCC 3C054370 */   lui       $a1, 0x4370
/* 10BD0 8000FFD0 8FBF0014 */  lw         $ra, 0x14($sp)
.L8000FFD4:
/* 10BD4 8000FFD4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 10BD8 8000FFD8 00001025 */  or         $v0, $zero, $zero
/* 10BDC 8000FFDC 03E00008 */  jr         $ra
/* 10BE0 8000FFE0 00000000 */   nop

glabel func_8000FFE4
/* 10BE4 8000FFE4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 10BE8 8000FFE8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10BEC 8000FFEC 8C820054 */  lw         $v0, 0x54($a0)
/* 10BF0 8000FFF0 C4860044 */  lwc1       $f6, 0x44($a0)
/* 10BF4 8000FFF4 44805000 */  mtc1       $zero, $f10
/* 10BF8 8000FFF8 C44401EC */  lwc1       $f4, 0x1ec($v0)
/* 10BFC 8000FFFC 00803025 */  or         $a2, $a0, $zero
/* 10C00 80010000 E7AA0024 */  swc1       $f10, 0x24($sp)
/* 10C04 80010004 46062201 */  sub.s      $f8, $f4, $f6
/* 10C08 80010008 E7A80020 */  swc1       $f8, 0x20($sp)
/* 10C0C 8001000C C492004C */  lwc1       $f18, 0x4c($a0)
/* 10C10 80010010 C45001F4 */  lwc1       $f16, 0x1f4($v0)
/* 10C14 80010014 AFA60030 */  sw         $a2, 0x30($sp)
/* 10C18 80010018 27A40020 */  addiu      $a0, $sp, 0x20
/* 10C1C 8001001C 46128101 */  sub.s      $f4, $f16, $f18
/* 10C20 80010020 AFA2002C */  sw         $v0, 0x2c($sp)
/* 10C24 80010024 0C0032A9 */  jal        func_8000CAA4
/* 10C28 80010028 E7A40028 */   swc1      $f4, 0x28($sp)
/* 10C2C 8001002C 8FA2002C */  lw         $v0, 0x2c($sp)
/* 10C30 80010030 C4460010 */  lwc1       $f6, 0x10($v0)
/* 10C34 80010034 0C00EDB5 */  jal        func_8003B6D4
/* 10C38 80010038 46060301 */   sub.s     $f12, $f0, $f6
/* 10C3C 8001003C 3C0141A0 */  lui        $at, 0x41a0
/* 10C40 80010040 44814000 */  mtc1       $at, $f8
/* 10C44 80010044 46000086 */  mov.s      $f2, $f0
/* 10C48 80010048 46000005 */  abs.s      $f0, $f0
/* 10C4C 8001004C 8FA60030 */  lw         $a2, 0x30($sp)
/* 10C50 80010050 4608003C */  c.lt.s     $f0, $f8
/* 10C54 80010054 00C02025 */  or         $a0, $a2, $zero
/* 10C58 80010058 45020006 */  bc1fl      .L80010074
/* 10C5C 8001005C 44805000 */   mtc1      $zero, $f10
/* 10C60 80010060 0C003DB3 */  jal        func_8000F6CC
/* 10C64 80010064 240500C1 */   addiu     $a1, $zero, 0xc1
/* 10C68 80010068 1000000C */  b          .L8001009C
/* 10C6C 8001006C 24020001 */   addiu     $v0, $zero, 1
/* 10C70 80010070 44805000 */  mtc1       $zero, $f10
.L80010074:
/* 10C74 80010074 00C02025 */  or         $a0, $a2, $zero
/* 10C78 80010078 00001025 */  or         $v0, $zero, $zero
/* 10C7C 8001007C 460A103C */  c.lt.s     $f2, $f10
/* 10C80 80010080 00000000 */  nop
/* 10C84 80010084 45000005 */  bc1f       .L8001009C
/* 10C88 80010088 00000000 */   nop
/* 10C8C 8001008C 0C003DB3 */  jal        func_8000F6CC
/* 10C90 80010090 240500C5 */   addiu     $a1, $zero, 0xc5
/* 10C94 80010094 10000001 */  b          .L8001009C
/* 10C98 80010098 24020001 */   addiu     $v0, $zero, 1
.L8001009C:
/* 10C9C 8001009C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10CA0 800100A0 27BD0030 */  addiu      $sp, $sp, 0x30
/* 10CA4 800100A4 03E00008 */  jr         $ra
/* 10CA8 800100A8 00000000 */   nop

glabel func_800100AC
/* 10CAC 800100AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10CB0 800100B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10CB4 800100B4 8C820054 */  lw         $v0, 0x54($a0)
/* 10CB8 800100B8 8C4E01BC */  lw         $t6, 0x1bc($v0)
/* 10CBC 800100BC 11C00005 */  beqz       $t6, .L800100D4
/* 10CC0 800100C0 00000000 */   nop
/* 10CC4 800100C4 0C046320 */  jal        func_80118C80
/* 10CC8 800100C8 3C054434 */   lui       $a1, 0x4434
/* 10CCC 800100CC 10000004 */  b          .L800100E0
/* 10CD0 800100D0 8FBF0014 */   lw        $ra, 0x14($sp)
.L800100D4:
/* 10CD4 800100D4 0C046320 */  jal        func_80118C80
/* 10CD8 800100D8 3C054370 */   lui       $a1, 0x4370
/* 10CDC 800100DC 8FBF0014 */  lw         $ra, 0x14($sp)
.L800100E0:
/* 10CE0 800100E0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 10CE4 800100E4 00001025 */  or         $v0, $zero, $zero
/* 10CE8 800100E8 03E00008 */  jr         $ra
/* 10CEC 800100EC 00000000 */   nop

glabel func_800100F0
/* 10CF0 800100F0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 10CF4 800100F4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 10CF8 800100F8 AFA40048 */  sw         $a0, 0x48($sp)
/* 10CFC 800100FC AFA5004C */  sw         $a1, 0x4c($sp)
/* 10D00 80010100 8C8E0054 */  lw         $t6, 0x54($a0)
/* 10D04 80010104 3C02800F */  lui        $v0, %hi(D_800EF6A0)
/* 10D08 80010108 2442F6A0 */  addiu      $v0, $v0, %lo(D_800EF6A0)
/* 10D0C 8001010C AFAE0044 */  sw         $t6, 0x44($sp)
/* 10D10 80010110 C4840044 */  lwc1       $f4, 0x44($a0)
/* 10D14 80010114 C4460000 */  lwc1       $f6, ($v0)
/* 10D18 80010118 44805000 */  mtc1       $zero, $f10
/* 10D1C 8001011C C4520008 */  lwc1       $f18, 8($v0)
/* 10D20 80010120 46062201 */  sub.s      $f8, $f4, $f6
/* 10D24 80010124 E7AA003C */  swc1       $f10, 0x3c($sp)
/* 10D28 80010128 00802825 */  or         $a1, $a0, $zero
/* 10D2C 8001012C E7A80038 */  swc1       $f8, 0x38($sp)
/* 10D30 80010130 C490004C */  lwc1       $f16, 0x4c($a0)
/* 10D34 80010134 AFA50048 */  sw         $a1, 0x48($sp)
/* 10D38 80010138 27A40038 */  addiu      $a0, $sp, 0x38
/* 10D3C 8001013C 46128101 */  sub.s      $f4, $f16, $f18
/* 10D40 80010140 0C0032A9 */  jal        func_8000CAA4
/* 10D44 80010144 E7A40040 */   swc1      $f4, 0x40($sp)
/* 10D48 80010148 8FAF0044 */  lw         $t7, 0x44($sp)
/* 10D4C 8001014C 46000386 */  mov.s      $f14, $f0
/* 10D50 80010150 3C013FF0 */  lui        $at, 0x3ff0
/* 10D54 80010154 C5EC0010 */  lwc1       $f12, 0x10($t7)
/* 10D58 80010158 44814800 */  mtc1       $at, $f9
/* 10D5C 8001015C 44804000 */  mtc1       $zero, $f8
/* 10D60 80010160 460C0181 */  sub.s      $f6, $f0, $f12
/* 10D64 80010164 3C01800B */  lui        $at, 0x800b
/* 10D68 80010168 C7AA004C */  lwc1       $f10, 0x4c($sp)
/* 10D6C 8001016C 46003021 */  cvt.d.s    $f0, $f6
/* 10D70 80010170 46200005 */  abs.d      $f0, $f0
/* 10D74 80010174 4628003C */  c.lt.d     $f0, $f8
/* 10D78 80010178 00000000 */  nop
/* 10D7C 8001017C 45000003 */  bc1f       .L8001018C
/* 10D80 80010180 00000000 */   nop
/* 10D84 80010184 1000001E */  b          .L80010200
/* 10D88 80010188 24020001 */   addiu     $v0, $zero, 1
.L8001018C:
/* 10D8C 8001018C C430E4E4 */  lwc1       $f16, -0x1b1c($at)
/* 10D90 80010190 3C063F80 */  lui        $a2, 0x3f80
/* 10D94 80010194 3C0742B4 */  lui        $a3, 0x42b4
/* 10D98 80010198 46105482 */  mul.s      $f18, $f10, $f16
/* 10D9C 8001019C E7AE0034 */  swc1       $f14, 0x34($sp)
/* 10DA0 800101A0 0C00F097 */  jal        func_8003C25C
/* 10DA4 800101A4 E7B20010 */   swc1      $f18, 0x10($sp)
/* 10DA8 800101A8 8FB80044 */  lw         $t8, 0x44($sp)
/* 10DAC 800101AC 8FA40048 */  lw         $a0, 0x48($sp)
/* 10DB0 800101B0 24060001 */  addiu      $a2, $zero, 1
/* 10DB4 800101B4 C7040010 */  lwc1       $f4, 0x10($t8)
/* 10DB8 800101B8 46040181 */  sub.s      $f6, $f0, $f4
/* 10DBC 800101BC 44053000 */  mfc1       $a1, $f6
/* 10DC0 800101C0 0C0057E5 */  jal        func_80015F94
/* 10DC4 800101C4 00000000 */   nop
/* 10DC8 800101C8 8FB90044 */  lw         $t9, 0x44($sp)
/* 10DCC 800101CC C7A80034 */  lwc1       $f8, 0x34($sp)
/* 10DD0 800101D0 3C013F80 */  lui        $at, 0x3f80
/* 10DD4 800101D4 C72A0010 */  lwc1       $f10, 0x10($t9)
/* 10DD8 800101D8 44818000 */  mtc1       $at, $f16
/* 10DDC 800101DC 00001025 */  or         $v0, $zero, $zero
/* 10DE0 800101E0 460A4001 */  sub.s      $f0, $f8, $f10
/* 10DE4 800101E4 46000005 */  abs.s      $f0, $f0
/* 10DE8 800101E8 4610003C */  c.lt.s     $f0, $f16
/* 10DEC 800101EC 00000000 */  nop
/* 10DF0 800101F0 45000003 */  bc1f       .L80010200
/* 10DF4 800101F4 00000000 */   nop
/* 10DF8 800101F8 10000001 */  b          .L80010200
/* 10DFC 800101FC 24020001 */   addiu     $v0, $zero, 1
.L80010200:
/* 10E00 80010200 8FBF001C */  lw         $ra, 0x1c($sp)
/* 10E04 80010204 27BD0048 */  addiu      $sp, $sp, 0x48
/* 10E08 80010208 03E00008 */  jr         $ra
/* 10E0C 8001020C 00000000 */   nop

glabel func_80010210
/* 10E10 80010210 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10E14 80010214 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10E18 80010218 0C00403C */  jal        func_800100F0
/* 10E1C 8001021C 3C054434 */   lui       $a1, 0x4434
/* 10E20 80010220 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10E24 80010224 27BD0018 */  addiu      $sp, $sp, 0x18
/* 10E28 80010228 00001025 */  or         $v0, $zero, $zero
/* 10E2C 8001022C 03E00008 */  jr         $ra
/* 10E30 80010230 00000000 */   nop

glabel func_80010234
/* 10E34 80010234 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10E38 80010238 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10E3C 8001023C 8C820054 */  lw         $v0, 0x54($a0)
/* 10E40 80010240 944E01EA */  lhu        $t6, 0x1ea($v0)
/* 10E44 80010244 51C00006 */  beql       $t6, $zero, .L80010260
/* 10E48 80010248 8C4F01BC */   lw        $t7, 0x1bc($v0)
/* 10E4C 8001024C 0C003DB3 */  jal        func_8000F6CC
/* 10E50 80010250 2405003D */   addiu     $a1, $zero, 0x3d
/* 10E54 80010254 10000007 */  b          .L80010274
/* 10E58 80010258 24020001 */   addiu     $v0, $zero, 1
/* 10E5C 8001025C 8C4F01BC */  lw         $t7, 0x1bc($v0)
.L80010260:
/* 10E60 80010260 00001025 */  or         $v0, $zero, $zero
/* 10E64 80010264 15E00003 */  bnez       $t7, .L80010274
/* 10E68 80010268 00000000 */   nop
/* 10E6C 8001026C 10000001 */  b          .L80010274
/* 10E70 80010270 24020001 */   addiu     $v0, $zero, 1
.L80010274:
/* 10E74 80010274 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10E78 80010278 27BD0018 */  addiu      $sp, $sp, 0x18
/* 10E7C 8001027C 03E00008 */  jr         $ra
/* 10E80 80010280 00000000 */   nop

glabel func_80010284
/* 10E84 80010284 8C820054 */  lw         $v0, 0x54($a0)
/* 10E88 80010288 8C4E01BC */  lw         $t6, 0x1bc($v0)
/* 10E8C 8001028C 00001025 */  or         $v0, $zero, $zero
/* 10E90 80010290 15C00003 */  bnez       $t6, .L800102A0
/* 10E94 80010294 00000000 */   nop
/* 10E98 80010298 03E00008 */  jr         $ra
/* 10E9C 8001029C 24020001 */   addiu     $v0, $zero, 1
.L800102A0:
/* 10EA0 800102A0 03E00008 */  jr         $ra
/* 10EA4 800102A4 00000000 */   nop

glabel func_800102A8
/* 10EA8 800102A8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10EAC 800102AC AFBF0014 */  sw         $ra, 0x14($sp)
/* 10EB0 800102B0 8C820054 */  lw         $v0, 0x54($a0)
/* 10EB4 800102B4 0C00EAC8 */  jal        func_8003AB20
/* 10EB8 800102B8 8444011C */   lh        $a0, 0x11c($v0)
/* 10EBC 800102BC 28410004 */  slti       $at, $v0, 4
/* 10EC0 800102C0 14200003 */  bnez       $at, .L800102D0
/* 10EC4 800102C4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 10EC8 800102C8 10000002 */  b          .L800102D4
/* 10ECC 800102CC 24020001 */   addiu     $v0, $zero, 1
.L800102D0:
/* 10ED0 800102D0 00001025 */  or         $v0, $zero, $zero
.L800102D4:
/* 10ED4 800102D4 03E00008 */  jr         $ra
/* 10ED8 800102D8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800102DC
/* 10EDC 800102DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10EE0 800102E0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10EE4 800102E4 0C04637C */  jal        func_80118DF0
/* 10EE8 800102E8 AFA40018 */   sw        $a0, 0x18($sp)
/* 10EEC 800102EC 8FA40018 */  lw         $a0, 0x18($sp)
/* 10EF0 800102F0 0C0462E6 */  jal        func_80118B98
/* 10EF4 800102F4 3C0542F0 */   lui       $a1, 0x42f0
/* 10EF8 800102F8 10400003 */  beqz       $v0, .L80010308
/* 10EFC 800102FC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 10F00 80010300 10000002 */  b          .L8001030C
/* 10F04 80010304 24020001 */   addiu     $v0, $zero, 1
.L80010308:
/* 10F08 80010308 00001025 */  or         $v0, $zero, $zero
.L8001030C:
/* 10F0C 8001030C 03E00008 */  jr         $ra
/* 10F10 80010310 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80010314
/* 10F14 80010314 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10F18 80010318 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10F1C 8001031C 0C04637C */  jal        func_80118DF0
/* 10F20 80010320 AFA40018 */   sw        $a0, 0x18($sp)
/* 10F24 80010324 8FA40018 */  lw         $a0, 0x18($sp)
/* 10F28 80010328 0C0462E6 */  jal        func_80118B98
/* 10F2C 8001032C 3C0544B4 */   lui       $a1, 0x44b4
/* 10F30 80010330 10400003 */  beqz       $v0, .L80010340
/* 10F34 80010334 8FBF0014 */   lw        $ra, 0x14($sp)
/* 10F38 80010338 10000002 */  b          .L80010344
/* 10F3C 8001033C 24020001 */   addiu     $v0, $zero, 1
.L80010340:
/* 10F40 80010340 00001025 */  or         $v0, $zero, $zero
.L80010344:
/* 10F44 80010344 03E00008 */  jr         $ra
/* 10F48 80010348 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8001034C
/* 10F4C 8001034C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 10F50 80010350 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10F54 80010354 8C820054 */  lw         $v0, 0x54($a0)
/* 10F58 80010358 C4860044 */  lwc1       $f6, 0x44($a0)
/* 10F5C 8001035C 44805000 */  mtc1       $zero, $f10
/* 10F60 80010360 C44401EC */  lwc1       $f4, 0x1ec($v0)
/* 10F64 80010364 00803825 */  or         $a3, $a0, $zero
/* 10F68 80010368 E7AA002C */  swc1       $f10, 0x2c($sp)
/* 10F6C 8001036C 46062201 */  sub.s      $f8, $f4, $f6
/* 10F70 80010370 E7A80028 */  swc1       $f8, 0x28($sp)
/* 10F74 80010374 C492004C */  lwc1       $f18, 0x4c($a0)
/* 10F78 80010378 C45001F4 */  lwc1       $f16, 0x1f4($v0)
/* 10F7C 8001037C AFA70038 */  sw         $a3, 0x38($sp)
/* 10F80 80010380 27A40028 */  addiu      $a0, $sp, 0x28
/* 10F84 80010384 46128101 */  sub.s      $f4, $f16, $f18
/* 10F88 80010388 0C0032A9 */  jal        func_8000CAA4
/* 10F8C 8001038C E7A40030 */   swc1      $f4, 0x30($sp)
/* 10F90 80010390 44050000 */  mfc1       $a1, $f0
/* 10F94 80010394 8FA40038 */  lw         $a0, 0x38($sp)
/* 10F98 80010398 0C0057C7 */  jal        func_80015F1C
/* 10F9C 8001039C 24060001 */   addiu     $a2, $zero, 1
/* 10FA0 800103A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10FA4 800103A4 27BD0038 */  addiu      $sp, $sp, 0x38
/* 10FA8 800103A8 24020001 */  addiu      $v0, $zero, 1
/* 10FAC 800103AC 03E00008 */  jr         $ra
/* 10FB0 800103B0 00000000 */   nop

glabel func_800103B4
/* 10FB4 800103B4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 10FB8 800103B8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 10FBC 800103BC AFB00018 */  sw         $s0, 0x18($sp)
/* 10FC0 800103C0 8C900054 */  lw         $s0, 0x54($a0)
/* 10FC4 800103C4 0C04637C */  jal        func_80118DF0
/* 10FC8 800103C8 AFA40040 */   sw        $a0, 0x40($sp)
/* 10FCC 800103CC 8FA40040 */  lw         $a0, 0x40($sp)
/* 10FD0 800103D0 0C0462E6 */  jal        func_80118B98
/* 10FD4 800103D4 3C054396 */   lui       $a1, 0x4396
/* 10FD8 800103D8 8FA60040 */  lw         $a2, 0x40($sp)
/* 10FDC 800103DC C60401EC */  lwc1       $f4, 0x1ec($s0)
/* 10FE0 800103E0 44805000 */  mtc1       $zero, $f10
/* 10FE4 800103E4 C4C60044 */  lwc1       $f6, 0x44($a2)
/* 10FE8 800103E8 27A40024 */  addiu      $a0, $sp, 0x24
/* 10FEC 800103EC E7AA0028 */  swc1       $f10, 0x28($sp)
/* 10FF0 800103F0 46062201 */  sub.s      $f8, $f4, $f6
/* 10FF4 800103F4 E7A80024 */  swc1       $f8, 0x24($sp)
/* 10FF8 800103F8 C61001F4 */  lwc1       $f16, 0x1f4($s0)
/* 10FFC 800103FC C4D2004C */  lwc1       $f18, 0x4c($a2)
/* 11000 80010400 46128101 */  sub.s      $f4, $f16, $f18
/* 11004 80010404 0C00E974 */  jal        func_8003A5D0
/* 11008 80010408 E7A4002C */   swc1      $f4, 0x2c($sp)
/* 1100C 8001040C C6060204 */  lwc1       $f6, 0x204($s0)
/* 11010 80010410 C60801A4 */  lwc1       $f8, 0x1a4($s0)
/* 11014 80010414 44801000 */  mtc1       $zero, $f2
/* 11018 80010418 46083280 */  add.s      $f10, $f6, $f8
/* 1101C 8001041C 460A003C */  c.lt.s     $f0, $f10
/* 11020 80010420 00000000 */  nop
/* 11024 80010424 45010005 */  bc1t       .L8001043C
/* 11028 80010428 00000000 */   nop
/* 1102C 8001042C 960E01EA */  lhu        $t6, 0x1ea($s0)
/* 11030 80010430 3C01800B */  lui        $at, %hi(D_800AE4E4)
/* 11034 80010434 11C00003 */  beqz       $t6, .L80010444
/* 11038 80010438 00000000 */   nop
.L8001043C:
/* 1103C 8001043C 1000000B */  b          .L8001046C
/* 11040 80010440 24020001 */   addiu     $v0, $zero, 1
.L80010444:
/* 11044 80010444 C430E4E4 */  lwc1       $f16, %lo(D_800AE4E4)($at)
/* 11048 80010448 3C01447A */  lui        $at, 0x447a
/* 1104C 8001044C 44819000 */  mtc1       $at, $f18
/* 11050 80010450 E7A20030 */  swc1       $f2, 0x30($sp)
/* 11054 80010454 E7A20034 */  swc1       $f2, 0x34($sp)
/* 11058 80010458 46128102 */  mul.s      $f4, $f16, $f18
/* 1105C 8001045C 27A40030 */  addiu      $a0, $sp, 0x30
/* 11060 80010460 0C00202A */  jal        func_800080A8
/* 11064 80010464 E7A40038 */   swc1      $f4, 0x38($sp)
/* 11068 80010468 00001025 */  or         $v0, $zero, $zero
.L8001046C:
/* 1106C 8001046C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 11070 80010470 8FB00018 */  lw         $s0, 0x18($sp)
/* 11074 80010474 27BD0040 */  addiu      $sp, $sp, 0x40
/* 11078 80010478 03E00008 */  jr         $ra
/* 1107C 8001047C 00000000 */   nop

glabel func_80010480
/* 11080 80010480 3C0E8013 */  lui        $t6, %hi(D_80133DE4)
/* 11084 80010484 8DCE3DE4 */  lw         $t6, %lo(D_80133DE4)($t6)
/* 11088 80010488 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1108C 8001048C AFBF0014 */  sw         $ra, 0x14($sp)
/* 11090 80010490 C4880000 */  lwc1       $f8, ($a0)
/* 11094 80010494 C5CA000C */  lwc1       $f10, 0xc($t6)
/* 11098 80010498 3C01800B */  lui        $at, %hi(D_800AE4E4)
/* 1109C 8001049C C424E4E4 */  lwc1       $f4, %lo(D_800AE4E4)($at)
/* 110A0 800104A0 460A4403 */  div.s      $f16, $f8, $f10
/* 110A4 800104A4 3C0143C8 */  lui        $at, 0x43c8
/* 110A8 800104A8 44813000 */  mtc1       $at, $f6
/* 110AC 800104AC 3C013F80 */  lui        $at, 0x3f80
/* 110B0 800104B0 44819000 */  mtc1       $at, $f18
/* 110B4 800104B4 46062002 */  mul.s      $f0, $f4, $f6
/* 110B8 800104B8 3C013F00 */  lui        $at, 0x3f00
/* 110BC 800104BC 44813000 */  mtc1       $at, $f6
/* 110C0 800104C0 3C013FF0 */  lui        $at, 0x3ff0
/* 110C4 800104C4 44818800 */  mtc1       $at, $f17
/* 110C8 800104C8 2404000A */  addiu      $a0, $zero, 0xa
/* 110CC 800104CC 46128101 */  sub.s      $f4, $f16, $f18
/* 110D0 800104D0 44808000 */  mtc1       $zero, $f16
/* 110D4 800104D4 46062202 */  mul.s      $f8, $f4, $f6
/* 110D8 800104D8 46000121 */  cvt.d.s    $f4, $f0
/* 110DC 800104DC 460042A1 */  cvt.d.s    $f10, $f8
/* 110E0 800104E0 462A8480 */  add.d      $f18, $f16, $f10
/* 110E4 800104E4 46322182 */  mul.d      $f6, $f4, $f18
/* 110E8 800104E8 46203020 */  cvt.s.d    $f0, $f6
/* 110EC 800104EC 0C00EAC8 */  jal        func_8003AB20
/* 110F0 800104F0 E7A0001C */   swc1      $f0, 0x1c($sp)
/* 110F4 800104F4 244FFFFC */  addiu      $t7, $v0, -4
/* 110F8 800104F8 448F4000 */  mtc1       $t7, $f8
/* 110FC 800104FC C7A0001C */  lwc1       $f0, 0x1c($sp)
/* 11100 80010500 44805000 */  mtc1       $zero, $f10
/* 11104 80010504 46804420 */  cvt.s.w    $f16, $f8
/* 11108 80010508 27A40020 */  addiu      $a0, $sp, 0x20
/* 1110C 8001050C E7A00028 */  swc1       $f0, 0x28($sp)
/* 11110 80010510 E7AA0024 */  swc1       $f10, 0x24($sp)
/* 11114 80010514 0C00202A */  jal        func_800080A8
/* 11118 80010518 E7B00020 */   swc1      $f16, 0x20($sp)
/* 1111C 8001051C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11120 80010520 27BD0030 */  addiu      $sp, $sp, 0x30
/* 11124 80010524 00001025 */  or         $v0, $zero, $zero
/* 11128 80010528 03E00008 */  jr         $ra
/* 1112C 8001052C 00000000 */   nop

glabel func_80010530
/* 11130 80010530 3C0E8013 */  lui        $t6, %hi(D_80133DE4)
/* 11134 80010534 8DCE3DE4 */  lw         $t6, %lo(D_80133DE4)($t6)
/* 11138 80010538 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1113C 8001053C AFBF0014 */  sw         $ra, 0x14($sp)
/* 11140 80010540 C4880000 */  lwc1       $f8, ($a0)
/* 11144 80010544 C5CA000C */  lwc1       $f10, 0xc($t6)
/* 11148 80010548 3C01800B */  lui        $at, %hi(D_800AE4E4)
/* 1114C 8001054C C424E4E4 */  lwc1       $f4, %lo(D_800AE4E4)($at)
/* 11150 80010550 460A4403 */  div.s      $f16, $f8, $f10
/* 11154 80010554 3C014416 */  lui        $at, 0x4416
/* 11158 80010558 44813000 */  mtc1       $at, $f6
/* 1115C 8001055C 3C013F80 */  lui        $at, 0x3f80
/* 11160 80010560 44819000 */  mtc1       $at, $f18
/* 11164 80010564 46062002 */  mul.s      $f0, $f4, $f6
/* 11168 80010568 3C013F00 */  lui        $at, 0x3f00
/* 1116C 8001056C 44813000 */  mtc1       $at, $f6
/* 11170 80010570 3C013FF0 */  lui        $at, 0x3ff0
/* 11174 80010574 44818800 */  mtc1       $at, $f17
/* 11178 80010578 2404000A */  addiu      $a0, $zero, 0xa
/* 1117C 8001057C 46128101 */  sub.s      $f4, $f16, $f18
/* 11180 80010580 44808000 */  mtc1       $zero, $f16
/* 11184 80010584 46062202 */  mul.s      $f8, $f4, $f6
/* 11188 80010588 46000121 */  cvt.d.s    $f4, $f0
/* 1118C 8001058C 460042A1 */  cvt.d.s    $f10, $f8
/* 11190 80010590 462A8480 */  add.d      $f18, $f16, $f10
/* 11194 80010594 46322182 */  mul.d      $f6, $f4, $f18
/* 11198 80010598 46203020 */  cvt.s.d    $f0, $f6
/* 1119C 8001059C 0C00EAC8 */  jal        func_8003AB20
/* 111A0 800105A0 E7A0001C */   swc1      $f0, 0x1c($sp)
/* 111A4 800105A4 244FFFFC */  addiu      $t7, $v0, -4
/* 111A8 800105A8 448F4000 */  mtc1       $t7, $f8
/* 111AC 800105AC C7A0001C */  lwc1       $f0, 0x1c($sp)
/* 111B0 800105B0 44805000 */  mtc1       $zero, $f10
/* 111B4 800105B4 46804420 */  cvt.s.w    $f16, $f8
/* 111B8 800105B8 27A40020 */  addiu      $a0, $sp, 0x20
/* 111BC 800105BC E7A00028 */  swc1       $f0, 0x28($sp)
/* 111C0 800105C0 E7AA0024 */  swc1       $f10, 0x24($sp)
/* 111C4 800105C4 0C00202A */  jal        func_800080A8
/* 111C8 800105C8 E7B00020 */   swc1      $f16, 0x20($sp)
/* 111CC 800105CC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 111D0 800105D0 27BD0030 */  addiu      $sp, $sp, 0x30
/* 111D4 800105D4 00001025 */  or         $v0, $zero, $zero
/* 111D8 800105D8 03E00008 */  jr         $ra
/* 111DC 800105DC 00000000 */   nop

glabel func_800105E0
/* 111E0 800105E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 111E4 800105E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 111E8 800105E8 AFA40018 */  sw         $a0, 0x18($sp)
/* 111EC 800105EC 0C00EAC8 */  jal        func_8003AB20
/* 111F0 800105F0 2404000A */   addiu     $a0, $zero, 0xa
/* 111F4 800105F4 244EFFFB */  addiu      $t6, $v0, -5
/* 111F8 800105F8 448E2000 */  mtc1       $t6, $f4
/* 111FC 800105FC 8FA40018 */  lw         $a0, 0x18($sp)
/* 11200 80010600 24060001 */  addiu      $a2, $zero, 1
/* 11204 80010604 46802120 */  cvt.s.w    $f4, $f4
/* 11208 80010608 44052000 */  mfc1       $a1, $f4
/* 1120C 8001060C 0C0057E5 */  jal        func_80015F94
/* 11210 80010610 00000000 */   nop
/* 11214 80010614 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11218 80010618 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1121C 8001061C 00001025 */  or         $v0, $zero, $zero
/* 11220 80010620 03E00008 */  jr         $ra
/* 11224 80010624 00000000 */   nop

glabel func_80010628
/* 11228 80010628 3C01800B */  lui        $at, %hi(D_800AE4E4)
/* 1122C 8001062C C424E4E4 */  lwc1       $f4, %lo(D_800AE4E4)($at)
/* 11230 80010630 3C01457A */  lui        $at, 0x457a
/* 11234 80010634 44813000 */  mtc1       $at, $f6
/* 11238 80010638 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1123C 8001063C AFBF0014 */  sw         $ra, 0x14($sp)
/* 11240 80010640 46062002 */  mul.s      $f0, $f4, $f6
/* 11244 80010644 8C8E0054 */  lw         $t6, 0x54($a0)
/* 11248 80010648 AFA40030 */  sw         $a0, 0x30($sp)
/* 1124C 8001064C 3C054234 */  lui        $a1, 0x4234
/* 11250 80010650 00003025 */  or         $a2, $zero, $zero
/* 11254 80010654 AFAE002C */  sw         $t6, 0x2c($sp)
/* 11258 80010658 0C0057E5 */  jal        func_80015F94
/* 1125C 8001065C E7A0001C */   swc1      $f0, 0x1c($sp)
/* 11260 80010660 8FAF002C */  lw         $t7, 0x2c($sp)
/* 11264 80010664 3C0142B4 */  lui        $at, 0x42b4
/* 11268 80010668 44814000 */  mtc1       $at, $f8
/* 1126C 8001066C C5E2000C */  lwc1       $f2, 0xc($t7)
/* 11270 80010670 8FA70030 */  lw         $a3, 0x30($sp)
/* 11274 80010674 C7A0001C */  lwc1       $f0, 0x1c($sp)
/* 11278 80010678 4602403C */  c.lt.s     $f8, $f2
/* 1127C 8001067C 3C014387 */  lui        $at, 0x4387
/* 11280 80010680 45020009 */  bc1fl      .L800106A8
/* 11284 80010684 3C013FC0 */   lui       $at, 0x3fc0
/* 11288 80010688 44815000 */  mtc1       $at, $f10
/* 1128C 8001068C 00000000 */  nop
/* 11290 80010690 460A103C */  c.lt.s     $f2, $f10
/* 11294 80010694 00000000 */  nop
/* 11298 80010698 45020003 */  bc1fl      .L800106A8
/* 1129C 8001069C 3C013FC0 */   lui       $at, 0x3fc0
/* 112A0 800106A0 46000007 */  neg.s      $f0, $f0
/* 112A4 800106A4 3C013FC0 */  lui        $at, 0x3fc0
.L800106A8:
/* 112A8 800106A8 44819000 */  mtc1       $at, $f18
/* 112AC 800106AC C4F0001C */  lwc1       $f16, 0x1c($a3)
/* 112B0 800106B0 44801000 */  mtc1       $zero, $f2
/* 112B4 800106B4 27A40020 */  addiu      $a0, $sp, 0x20
/* 112B8 800106B8 46128100 */  add.s      $f4, $f16, $f18
/* 112BC 800106BC E4E4001C */  swc1       $f4, 0x1c($a3)
/* 112C0 800106C0 E7A00028 */  swc1       $f0, 0x28($sp)
/* 112C4 800106C4 E7A20024 */  swc1       $f2, 0x24($sp)
/* 112C8 800106C8 0C00202A */  jal        func_800080A8
/* 112CC 800106CC E7A20020 */   swc1      $f2, 0x20($sp)
/* 112D0 800106D0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 112D4 800106D4 27BD0030 */  addiu      $sp, $sp, 0x30
/* 112D8 800106D8 00001025 */  or         $v0, $zero, $zero
/* 112DC 800106DC 03E00008 */  jr         $ra
/* 112E0 800106E0 00000000 */   nop

glabel func_800106E4
/* 112E4 800106E4 3C01800B */  lui        $at, %hi(D_800AE4E4)
/* 112E8 800106E8 C424E4E4 */  lwc1       $f4, %lo(D_800AE4E4)($at)
/* 112EC 800106EC 3C01800A */  lui        $at, %hi(D_800A25CC)
/* 112F0 800106F0 C42625CC */  lwc1       $f6, %lo(D_800A25CC)($at)
/* 112F4 800106F4 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 112F8 800106F8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 112FC 800106FC 46062202 */  mul.s      $f8, $f4, $f6
/* 11300 80010700 AFB10018 */  sw         $s1, 0x18($sp)
/* 11304 80010704 AFB00014 */  sw         $s0, 0x14($sp)
/* 11308 80010708 8C910054 */  lw         $s1, 0x54($a0)
/* 1130C 8001070C 00808025 */  or         $s0, $a0, $zero
/* 11310 80010710 0C04637C */  jal        func_80118DF0
/* 11314 80010714 E7A80028 */   swc1      $f8, 0x28($sp)
/* 11318 80010718 02002025 */  or         $a0, $s0, $zero
/* 1131C 8001071C 0C0462E6 */  jal        func_80118B98
/* 11320 80010720 3C054396 */   lui       $a1, 0x4396
/* 11324 80010724 0C00EAC8 */  jal        func_8003AB20
/* 11328 80010728 2404000A */   addiu     $a0, $zero, 0xa
/* 1132C 8001072C 244EFFFB */  addiu      $t6, $v0, -5
/* 11330 80010730 448E5000 */  mtc1       $t6, $f10
/* 11334 80010734 02002025 */  or         $a0, $s0, $zero
/* 11338 80010738 24060001 */  addiu      $a2, $zero, 1
/* 1133C 8001073C 468052A0 */  cvt.s.w    $f10, $f10
/* 11340 80010740 44055000 */  mfc1       $a1, $f10
/* 11344 80010744 0C0057E5 */  jal        func_80015F94
/* 11348 80010748 00000000 */   nop
/* 1134C 8001074C 02002025 */  or         $a0, $s0, $zero
/* 11350 80010750 3C054234 */  lui        $a1, 0x4234
/* 11354 80010754 0C0057E5 */  jal        func_80015F94
/* 11358 80010758 00003025 */   or        $a2, $zero, $zero
/* 1135C 8001075C 3C0142B4 */  lui        $at, 0x42b4
/* 11360 80010760 44818000 */  mtc1       $at, $f16
/* 11364 80010764 C620000C */  lwc1       $f0, 0xc($s1)
/* 11368 80010768 3C014387 */  lui        $at, 0x4387
/* 1136C 8001076C 4600803C */  c.lt.s     $f16, $f0
/* 11370 80010770 00000000 */  nop
/* 11374 80010774 4502000A */  bc1fl      .L800107A0
/* 11378 80010778 3C013FC0 */   lui       $at, 0x3fc0
/* 1137C 8001077C 44819000 */  mtc1       $at, $f18
/* 11380 80010780 C7A40028 */  lwc1       $f4, 0x28($sp)
/* 11384 80010784 4612003C */  c.lt.s     $f0, $f18
/* 11388 80010788 00000000 */  nop
/* 1138C 8001078C 45020004 */  bc1fl      .L800107A0
/* 11390 80010790 3C013FC0 */   lui       $at, 0x3fc0
/* 11394 80010794 46002187 */  neg.s      $f6, $f4
/* 11398 80010798 E7A60028 */  swc1       $f6, 0x28($sp)
/* 1139C 8001079C 3C013FC0 */  lui        $at, 0x3fc0
.L800107A0:
/* 113A0 800107A0 44815000 */  mtc1       $at, $f10
/* 113A4 800107A4 C608001C */  lwc1       $f8, 0x1c($s0)
/* 113A8 800107A8 44800000 */  mtc1       $zero, $f0
/* 113AC 800107AC 27A40038 */  addiu      $a0, $sp, 0x38
/* 113B0 800107B0 460A4400 */  add.s      $f16, $f8, $f10
/* 113B4 800107B4 E610001C */  swc1       $f16, 0x1c($s0)
/* 113B8 800107B8 C7B20028 */  lwc1       $f18, 0x28($sp)
/* 113BC 800107BC E7A0003C */  swc1       $f0, 0x3c($sp)
/* 113C0 800107C0 E7A00038 */  swc1       $f0, 0x38($sp)
/* 113C4 800107C4 0C00202A */  jal        func_800080A8
/* 113C8 800107C8 E7B20040 */   swc1      $f18, 0x40($sp)
/* 113CC 800107CC C62401EC */  lwc1       $f4, 0x1ec($s1)
/* 113D0 800107D0 C6060044 */  lwc1       $f6, 0x44($s0)
/* 113D4 800107D4 44805000 */  mtc1       $zero, $f10
/* 113D8 800107D8 27A4002C */  addiu      $a0, $sp, 0x2c
/* 113DC 800107DC 46062201 */  sub.s      $f8, $f4, $f6
/* 113E0 800107E0 E7AA0030 */  swc1       $f10, 0x30($sp)
/* 113E4 800107E4 E7A8002C */  swc1       $f8, 0x2c($sp)
/* 113E8 800107E8 C612004C */  lwc1       $f18, 0x4c($s0)
/* 113EC 800107EC C63001F4 */  lwc1       $f16, 0x1f4($s1)
/* 113F0 800107F0 46128101 */  sub.s      $f4, $f16, $f18
/* 113F4 800107F4 0C00E974 */  jal        func_8003A5D0
/* 113F8 800107F8 E7A40034 */   swc1      $f4, 0x34($sp)
/* 113FC 800107FC C6260204 */  lwc1       $f6, 0x204($s1)
/* 11400 80010800 C62801A4 */  lwc1       $f8, 0x1a4($s1)
/* 11404 80010804 8FBF001C */  lw         $ra, 0x1c($sp)
/* 11408 80010808 00001025 */  or         $v0, $zero, $zero
/* 1140C 8001080C 46083280 */  add.s      $f10, $f6, $f8
/* 11410 80010810 460A003C */  c.lt.s     $f0, $f10
/* 11414 80010814 00000000 */  nop
/* 11418 80010818 45000003 */  bc1f       .L80010828
/* 1141C 8001081C 00000000 */   nop
/* 11420 80010820 10000001 */  b          .L80010828
/* 11424 80010824 24020001 */   addiu     $v0, $zero, 1
.L80010828:
/* 11428 80010828 8FB00014 */  lw         $s0, 0x14($sp)
/* 1142C 8001082C 8FB10018 */  lw         $s1, 0x18($sp)
/* 11430 80010830 03E00008 */  jr         $ra
/* 11434 80010834 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_80010838
/* 11438 80010838 3C014000 */  lui        $at, 0x4000
/* 1143C 8001083C 44813000 */  mtc1       $at, $f6
/* 11440 80010840 C484001C */  lwc1       $f4, 0x1c($a0)
/* 11444 80010844 00001025 */  or         $v0, $zero, $zero
/* 11448 80010848 46062200 */  add.s      $f8, $f4, $f6
/* 1144C 8001084C 03E00008 */  jr         $ra
/* 11450 80010850 E488001C */   swc1      $f8, 0x1c($a0)

glabel func_80010854
/* 11454 80010854 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11458 80010858 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1145C 8001085C 8C820054 */  lw         $v0, 0x54($a0)
/* 11460 80010860 3C01800A */  lui        $at, 0x800a
/* 11464 80010864 8C4E01BC */  lw         $t6, 0x1bc($v0)
/* 11468 80010868 24020001 */  addiu      $v0, $zero, 1
/* 1146C 8001086C 11C0000A */  beqz       $t6, .L80010898
/* 11470 80010870 00000000 */   nop
/* 11474 80010874 44800000 */  mtc1       $zero, $f0
/* 11478 80010878 C42425D0 */  lwc1       $f4, 0x25d0($at)
/* 1147C 8001087C 27A40018 */  addiu      $a0, $sp, 0x18
/* 11480 80010880 E7A00018 */  swc1       $f0, 0x18($sp)
/* 11484 80010884 E7A4001C */  swc1       $f4, 0x1c($sp)
/* 11488 80010888 0C00202A */  jal        func_800080A8
/* 1148C 8001088C E7A00020 */   swc1      $f0, 0x20($sp)
/* 11490 80010890 10000001 */  b          .L80010898
/* 11494 80010894 00001025 */   or        $v0, $zero, $zero
.L80010898:
/* 11498 80010898 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1149C 8001089C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 114A0 800108A0 03E00008 */  jr         $ra
/* 114A4 800108A4 00000000 */   nop

glabel func_800108A8
/* 114A8 800108A8 3C013F00 */  lui        $at, 0x3f00
/* 114AC 800108AC 44813000 */  mtc1       $at, $f6
/* 114B0 800108B0 C484001C */  lwc1       $f4, 0x1c($a0)
/* 114B4 800108B4 00001025 */  or         $v0, $zero, $zero
/* 114B8 800108B8 46062200 */  add.s      $f8, $f4, $f6
/* 114BC 800108BC 03E00008 */  jr         $ra
/* 114C0 800108C0 E488001C */   swc1      $f8, 0x1c($a0)

glabel func_800108C4
/* 114C4 800108C4 3C013F00 */  lui        $at, 0x3f00
/* 114C8 800108C8 44813000 */  mtc1       $at, $f6
/* 114CC 800108CC C484001C */  lwc1       $f4, 0x1c($a0)
/* 114D0 800108D0 00001025 */  or         $v0, $zero, $zero
/* 114D4 800108D4 46062201 */  sub.s      $f8, $f4, $f6
/* 114D8 800108D8 03E00008 */  jr         $ra
/* 114DC 800108DC E488001C */   swc1      $f8, 0x1c($a0)

glabel func_800108E0
/* 114E0 800108E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 114E4 800108E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 114E8 800108E8 3C0541A0 */  lui        $a1, 0x41a0
/* 114EC 800108EC 0C0057E5 */  jal        func_80015F94
/* 114F0 800108F0 24060001 */   addiu     $a2, $zero, 1
/* 114F4 800108F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 114F8 800108F8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 114FC 800108FC 00001025 */  or         $v0, $zero, $zero
/* 11500 80010900 03E00008 */  jr         $ra
/* 11504 80010904 00000000 */   nop

glabel func_80010908
/* 11508 80010908 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1150C 8001090C AFBF0014 */  sw         $ra, 0x14($sp)
/* 11510 80010910 8C820054 */  lw         $v0, 0x54($a0)
/* 11514 80010914 00003025 */  or         $a2, $zero, $zero
/* 11518 80010918 C444000C */  lwc1       $f4, 0xc($v0)
/* 1151C 8001091C 46002187 */  neg.s      $f6, $f4
/* 11520 80010920 44053000 */  mfc1       $a1, $f6
/* 11524 80010924 0C0057E5 */  jal        func_80015F94
/* 11528 80010928 00000000 */   nop
/* 1152C 8001092C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11530 80010930 27BD0018 */  addiu      $sp, $sp, 0x18
/* 11534 80010934 00001025 */  or         $v0, $zero, $zero
/* 11538 80010938 03E00008 */  jr         $ra
/* 1153C 8001093C 00000000 */   nop

glabel func_80010940
/* 11540 80010940 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 11544 80010944 AFBF0014 */  sw         $ra, 0x14($sp)
/* 11548 80010948 8C820054 */  lw         $v0, 0x54($a0)
/* 1154C 8001094C C4860048 */  lwc1       $f6, 0x48($a0)
/* 11550 80010950 C48A0004 */  lwc1       $f10, 4($a0)
/* 11554 80010954 C44401F0 */  lwc1       $f4, 0x1f0($v0)
/* 11558 80010958 3C013F80 */  lui        $at, 0x3f80
/* 1155C 8001095C 44818000 */  mtc1       $at, $f16
/* 11560 80010960 46062201 */  sub.s      $f8, $f4, $f6
/* 11564 80010964 00803825 */  or         $a3, $a0, $zero
/* 11568 80010968 3C014396 */  lui        $at, 0x4396
/* 1156C 8001096C 460A4083 */  div.s      $f2, $f8, $f10
/* 11570 80010970 46001305 */  abs.s      $f12, $f2
/* 11574 80010974 4610603C */  c.lt.s     $f12, $f16
/* 11578 80010978 00000000 */  nop
/* 1157C 8001097C 45020004 */  bc1fl      .L80010990
/* 11580 80010980 44819000 */   mtc1      $at, $f18
/* 11584 80010984 1000002B */  b          .L80010A34
/* 11588 80010988 24020001 */   addiu     $v0, $zero, 1
/* 1158C 8001098C 44819000 */  mtc1       $at, $f18
.L80010990:
/* 11590 80010990 3C01800B */  lui        $at, %hi(D_800AE4E4)
/* 11594 80010994 C424E4E4 */  lwc1       $f4, %lo(D_800AE4E4)($at)
/* 11598 80010998 44800000 */  mtc1       $zero, $f0
/* 1159C 8001099C 46049382 */  mul.s      $f14, $f18, $f4
/* 115A0 800109A0 460E603C */  c.lt.s     $f12, $f14
/* 115A4 800109A4 00000000 */  nop
/* 115A8 800109A8 45020003 */  bc1fl      .L800109B8
/* 115AC 800109AC 4602003C */   c.lt.s    $f0, $f2
/* 115B0 800109B0 46006386 */  mov.s      $f14, $f12
/* 115B4 800109B4 4602003C */  c.lt.s     $f0, $f2
.L800109B8:
/* 115B8 800109B8 E7A00030 */  swc1       $f0, 0x30($sp)
/* 115BC 800109BC 45020004 */  bc1fl      .L800109D0
/* 115C0 800109C0 4600103C */   c.lt.s    $f2, $f0
/* 115C4 800109C4 10000008 */  b          .L800109E8
/* 115C8 800109C8 24020001 */   addiu     $v0, $zero, 1
/* 115CC 800109CC 4600103C */  c.lt.s     $f2, $f0
.L800109D0:
/* 115D0 800109D0 00001825 */  or         $v1, $zero, $zero
/* 115D4 800109D4 45000003 */  bc1f       .L800109E4
/* 115D8 800109D8 00000000 */   nop
/* 115DC 800109DC 10000001 */  b          .L800109E4
/* 115E0 800109E0 2403FFFF */   addiu     $v1, $zero, -1
.L800109E4:
/* 115E4 800109E4 00601025 */  or         $v0, $v1, $zero
.L800109E8:
/* 115E8 800109E8 44823000 */  mtc1       $v0, $f6
/* 115EC 800109EC E7A00038 */  swc1       $f0, 0x38($sp)
/* 115F0 800109F0 27A40030 */  addiu      $a0, $sp, 0x30
/* 115F4 800109F4 46803220 */  cvt.s.w    $f8, $f6
/* 115F8 800109F8 AFA70040 */  sw         $a3, 0x40($sp)
/* 115FC 800109FC 460E4282 */  mul.s      $f10, $f8, $f14
/* 11600 80010A00 0C00202A */  jal        func_800080A8
/* 11604 80010A04 E7AA0034 */   swc1      $f10, 0x34($sp)
/* 11608 80010A08 3C01800A */  lui        $at, %hi(D_800A25D4)
/* 1160C 80010A0C C43025D4 */  lwc1       $f16, %lo(D_800A25D4)($at)
/* 11610 80010A10 3C01800B */  lui        $at, %hi(D_800AE4E4)
/* 11614 80010A14 C432E4E4 */  lwc1       $f18, %lo(D_800AE4E4)($at)
/* 11618 80010A18 8FA40040 */  lw         $a0, 0x40($sp)
/* 1161C 80010A1C 24060001 */  addiu      $a2, $zero, 1
/* 11620 80010A20 46128102 */  mul.s      $f4, $f16, $f18
/* 11624 80010A24 44052000 */  mfc1       $a1, $f4
/* 11628 80010A28 0C0057E5 */  jal        func_80015F94
/* 1162C 80010A2C 00000000 */   nop
/* 11630 80010A30 00001025 */  or         $v0, $zero, $zero
.L80010A34:
/* 11634 80010A34 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11638 80010A38 27BD0040 */  addiu      $sp, $sp, 0x40
/* 1163C 80010A3C 03E00008 */  jr         $ra
/* 11640 80010A40 00000000 */   nop

glabel func_80010A44
/* 11644 80010A44 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11648 80010A48 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1164C 80010A4C 8C820054 */  lw         $v0, 0x54($a0)
/* 11650 80010A50 00003025 */  or         $a2, $zero, $zero
/* 11654 80010A54 C444000C */  lwc1       $f4, 0xc($v0)
/* 11658 80010A58 46002187 */  neg.s      $f6, $f4
/* 1165C 80010A5C 44053000 */  mfc1       $a1, $f6
/* 11660 80010A60 0C0057E5 */  jal        func_80015F94
/* 11664 80010A64 00000000 */   nop
/* 11668 80010A68 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1166C 80010A6C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 11670 80010A70 00001025 */  or         $v0, $zero, $zero
/* 11674 80010A74 03E00008 */  jr         $ra
/* 11678 80010A78 00000000 */   nop

glabel func_80010A7C
/* 1167C 80010A7C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11680 80010A80 AFBF001C */  sw         $ra, 0x1c($sp)
/* 11684 80010A84 AFB00018 */  sw         $s0, 0x18($sp)
/* 11688 80010A88 8C820054 */  lw         $v0, 0x54($a0)
/* 1168C 80010A8C 00808025 */  or         $s0, $a0, $zero
/* 11690 80010A90 00003025 */  or         $a2, $zero, $zero
/* 11694 80010A94 C444000C */  lwc1       $f4, 0xc($v0)
/* 11698 80010A98 AFA20024 */  sw         $v0, 0x24($sp)
/* 1169C 80010A9C 46002187 */  neg.s      $f6, $f4
/* 116A0 80010AA0 44053000 */  mfc1       $a1, $f6
/* 116A4 80010AA4 0C0057E5 */  jal        func_80015F94
/* 116A8 80010AA8 00000000 */   nop
/* 116AC 80010AAC 8FA20024 */  lw         $v0, 0x24($sp)
/* 116B0 80010AB0 02002025 */  or         $a0, $s0, $zero
/* 116B4 80010AB4 24060001 */  addiu      $a2, $zero, 1
/* 116B8 80010AB8 C4480010 */  lwc1       $f8, 0x10($v0)
/* 116BC 80010ABC 46004287 */  neg.s      $f10, $f8
/* 116C0 80010AC0 44055000 */  mfc1       $a1, $f10
/* 116C4 80010AC4 0C0057E5 */  jal        func_80015F94
/* 116C8 80010AC8 00000000 */   nop
/* 116CC 80010ACC 02002025 */  or         $a0, $s0, $zero
/* 116D0 80010AD0 3C05C2B4 */  lui        $a1, 0xc2b4
/* 116D4 80010AD4 0C0057E5 */  jal        func_80015F94
/* 116D8 80010AD8 24060001 */   addiu     $a2, $zero, 1
/* 116DC 80010ADC 02002025 */  or         $a0, $s0, $zero
/* 116E0 80010AE0 3C054120 */  lui        $a1, 0x4120
/* 116E4 80010AE4 0C0057E5 */  jal        func_80015F94
/* 116E8 80010AE8 00003025 */   or        $a2, $zero, $zero
/* 116EC 80010AEC 02002025 */  or         $a0, $s0, $zero
/* 116F0 80010AF0 3C0542B4 */  lui        $a1, 0x42b4
/* 116F4 80010AF4 0C0057E5 */  jal        func_80015F94
/* 116F8 80010AF8 24060001 */   addiu     $a2, $zero, 1
/* 116FC 80010AFC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 11700 80010B00 8FB00018 */  lw         $s0, 0x18($sp)
/* 11704 80010B04 27BD0028 */  addiu      $sp, $sp, 0x28
/* 11708 80010B08 03E00008 */  jr         $ra
/* 1170C 80010B0C 00001025 */   or        $v0, $zero, $zero

glabel func_80010B10
/* 11710 80010B10 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 11714 80010B14 AFBF001C */  sw         $ra, 0x1c($sp)
/* 11718 80010B18 AFB00018 */  sw         $s0, 0x18($sp)
/* 1171C 80010B1C 8C900054 */  lw         $s0, 0x54($a0)
/* 11720 80010B20 0C04637C */  jal        func_80118DF0
/* 11724 80010B24 AFA40030 */   sw        $a0, 0x30($sp)
/* 11728 80010B28 8FA40030 */  lw         $a0, 0x30($sp)
/* 1172C 80010B2C 0C0462E6 */  jal        func_80118B98
/* 11730 80010B30 3C054396 */   lui       $a1, 0x4396
/* 11734 80010B34 8FA60030 */  lw         $a2, 0x30($sp)
/* 11738 80010B38 C60401EC */  lwc1       $f4, 0x1ec($s0)
/* 1173C 80010B3C 44805000 */  mtc1       $zero, $f10
/* 11740 80010B40 C4C60044 */  lwc1       $f6, 0x44($a2)
/* 11744 80010B44 27A40020 */  addiu      $a0, $sp, 0x20
/* 11748 80010B48 E7AA0024 */  swc1       $f10, 0x24($sp)
/* 1174C 80010B4C 46062201 */  sub.s      $f8, $f4, $f6
/* 11750 80010B50 E7A80020 */  swc1       $f8, 0x20($sp)
/* 11754 80010B54 C61001F4 */  lwc1       $f16, 0x1f4($s0)
/* 11758 80010B58 C4D2004C */  lwc1       $f18, 0x4c($a2)
/* 1175C 80010B5C 46128101 */  sub.s      $f4, $f16, $f18
/* 11760 80010B60 0C00E974 */  jal        func_8003A5D0
/* 11764 80010B64 E7A40028 */   swc1      $f4, 0x28($sp)
/* 11768 80010B68 C6060204 */  lwc1       $f6, 0x204($s0)
/* 1176C 80010B6C C60801A4 */  lwc1       $f8, 0x1a4($s0)
/* 11770 80010B70 8FBF001C */  lw         $ra, 0x1c($sp)
/* 11774 80010B74 00001025 */  or         $v0, $zero, $zero
/* 11778 80010B78 46083280 */  add.s      $f10, $f6, $f8
/* 1177C 80010B7C 460A003C */  c.lt.s     $f0, $f10
/* 11780 80010B80 00000000 */  nop
/* 11784 80010B84 45000003 */  bc1f       .L80010B94
/* 11788 80010B88 00000000 */   nop
/* 1178C 80010B8C 10000001 */  b          .L80010B94
/* 11790 80010B90 24020001 */   addiu     $v0, $zero, 1
.L80010B94:
/* 11794 80010B94 8FB00018 */  lw         $s0, 0x18($sp)
/* 11798 80010B98 03E00008 */  jr         $ra
/* 1179C 80010B9C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80010BA0
/* 117A0 80010BA0 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 117A4 80010BA4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 117A8 80010BA8 8C8E0054 */  lw         $t6, 0x54($a0)
/* 117AC 80010BAC AFA40070 */  sw         $a0, 0x70($sp)
/* 117B0 80010BB0 0C04637C */  jal        func_80118DF0
/* 117B4 80010BB4 AFAE006C */   sw        $t6, 0x6c($sp)
/* 117B8 80010BB8 8FA2006C */  lw         $v0, 0x6c($sp)
/* 117BC 80010BBC 8FA30070 */  lw         $v1, 0x70($sp)
/* 117C0 80010BC0 27A40054 */  addiu      $a0, $sp, 0x54
/* 117C4 80010BC4 C44401EC */  lwc1       $f4, 0x1ec($v0)
/* 117C8 80010BC8 C4660044 */  lwc1       $f6, 0x44($v1)
/* 117CC 80010BCC 46062201 */  sub.s      $f8, $f4, $f6
/* 117D0 80010BD0 E7A80054 */  swc1       $f8, 0x54($sp)
/* 117D4 80010BD4 C44A01F0 */  lwc1       $f10, 0x1f0($v0)
/* 117D8 80010BD8 C4640048 */  lwc1       $f4, 0x48($v1)
/* 117DC 80010BDC 46045181 */  sub.s      $f6, $f10, $f4
/* 117E0 80010BE0 E7A60058 */  swc1       $f6, 0x58($sp)
/* 117E4 80010BE4 C44801F4 */  lwc1       $f8, 0x1f4($v0)
/* 117E8 80010BE8 C46A004C */  lwc1       $f10, 0x4c($v1)
/* 117EC 80010BEC 460A4101 */  sub.s      $f4, $f8, $f10
/* 117F0 80010BF0 0C00E974 */  jal        func_8003A5D0
/* 117F4 80010BF4 E7A4005C */   swc1      $f4, 0x5c($sp)
/* 117F8 80010BF8 8FAF006C */  lw         $t7, 0x6c($sp)
/* 117FC 80010BFC 3C013F80 */  lui        $at, 0x3f80
/* 11800 80010C00 44813000 */  mtc1       $at, $f6
/* 11804 80010C04 C5E801A4 */  lwc1       $f8, 0x1a4($t7)
/* 11808 80010C08 C7A40054 */  lwc1       $f4, 0x54($sp)
/* 1180C 80010C0C 27A40060 */  addiu      $a0, $sp, 0x60
/* 11810 80010C10 46083280 */  add.s      $f10, $f6, $f8
/* 11814 80010C14 460A003C */  c.lt.s     $f0, $f10
/* 11818 80010C18 00000000 */  nop
/* 1181C 80010C1C 45020004 */  bc1fl      .L80010C30
/* 11820 80010C20 44803000 */   mtc1      $zero, $f6
/* 11824 80010C24 100000BD */  b          .L80010F1C
/* 11828 80010C28 24020001 */   addiu     $v0, $zero, 1
/* 1182C 80010C2C 44803000 */  mtc1       $zero, $f6
.L80010C30:
/* 11830 80010C30 C7A8005C */  lwc1       $f8, 0x5c($sp)
/* 11834 80010C34 E7A40060 */  swc1       $f4, 0x60($sp)
/* 11838 80010C38 E7A60064 */  swc1       $f6, 0x64($sp)
/* 1183C 80010C3C 0C00E974 */  jal        func_8003A5D0
/* 11840 80010C40 E7A80068 */   swc1      $f8, 0x68($sp)
/* 11844 80010C44 3C014120 */  lui        $at, 0x4120
/* 11848 80010C48 44819000 */  mtc1       $at, $f18
/* 1184C 80010C4C 3C013F00 */  lui        $at, 0x3f00
/* 11850 80010C50 44815000 */  mtc1       $at, $f10
/* 11854 80010C54 3C0142C8 */  lui        $at, 0x42c8
/* 11858 80010C58 44812000 */  mtc1       $at, $f4
/* 1185C 80010C5C 460A0382 */  mul.s      $f14, $f0, $f10
/* 11860 80010C60 E7A00048 */  swc1       $f0, 0x48($sp)
/* 11864 80010C64 460E903C */  c.lt.s     $f18, $f14
/* 11868 80010C68 00000000 */  nop
/* 1186C 80010C6C 45020004 */  bc1fl      .L80010C80
/* 11870 80010C70 46009086 */   mov.s     $f2, $f18
/* 11874 80010C74 10000002 */  b          .L80010C80
/* 11878 80010C78 46007086 */   mov.s     $f2, $f14
/* 1187C 80010C7C 46009086 */  mov.s      $f2, $f18
.L80010C80:
/* 11880 80010C80 4602203C */  c.lt.s     $f4, $f2
/* 11884 80010C84 3C0142C8 */  lui        $at, 0x42c8
/* 11888 80010C88 27A40054 */  addiu      $a0, $sp, 0x54
/* 1188C 80010C8C 45020005 */  bc1fl      .L80010CA4
/* 11890 80010C90 460E903C */   c.lt.s    $f18, $f14
/* 11894 80010C94 44811000 */  mtc1       $at, $f2
/* 11898 80010C98 10000009 */  b          .L80010CC0
/* 1189C 80010C9C 00000000 */   nop
/* 118A0 80010CA0 460E903C */  c.lt.s     $f18, $f14
.L80010CA4:
/* 118A4 80010CA4 00000000 */  nop
/* 118A8 80010CA8 45020004 */  bc1fl      .L80010CBC
/* 118AC 80010CAC 46009306 */   mov.s     $f12, $f18
/* 118B0 80010CB0 10000002 */  b          .L80010CBC
/* 118B4 80010CB4 46007306 */   mov.s     $f12, $f14
/* 118B8 80010CB8 46009306 */  mov.s      $f12, $f18
.L80010CBC:
/* 118BC 80010CBC 46006086 */  mov.s      $f2, $f12
.L80010CC0:
/* 118C0 80010CC0 3C01800B */  lui        $at, %hi(D_800AE4E4)
/* 118C4 80010CC4 C426E4E4 */  lwc1       $f6, %lo(D_800AE4E4)($at)
/* 118C8 80010CC8 46061302 */  mul.s      $f12, $f2, $f6
/* 118CC 80010CCC 460C003E */  c.le.s     $f0, $f12
/* 118D0 80010CD0 00000000 */  nop
/* 118D4 80010CD4 45000016 */  bc1f       .L80010D30
/* 118D8 80010CD8 00000000 */   nop
/* 118DC 80010CDC 44804000 */  mtc1       $zero, $f8
/* 118E0 80010CE0 8FA40070 */  lw         $a0, 0x70($sp)
/* 118E4 80010CE4 4600403C */  c.lt.s     $f8, $f0
/* 118E8 80010CE8 00000000 */  nop
/* 118EC 80010CEC 4502000C */  bc1fl      .L80010D20
/* 118F0 80010CF0 C7A40048 */   lwc1      $f4, 0x48($sp)
/* 118F4 80010CF4 0C0462E6 */  jal        func_80118B98
/* 118F8 80010CF8 3C054434 */   lui       $a1, 0x4434
/* 118FC 80010CFC 3C014120 */  lui        $at, 0x4120
/* 11900 80010D00 44819000 */  mtc1       $at, $f18
/* 11904 80010D04 14400005 */  bnez       $v0, .L80010D1C
/* 11908 80010D08 3C01800B */   lui       $at, %hi(D_800AE4E4)
/* 1190C 80010D0C 44805000 */  mtc1       $zero, $f10
/* 11910 80010D10 C430E4E4 */  lwc1       $f16, %lo(D_800AE4E4)($at)
/* 11914 80010D14 10000030 */  b          .L80010DD8
/* 11918 80010D18 E7AA004C */   swc1      $f10, 0x4c($sp)
.L80010D1C:
/* 1191C 80010D1C C7A40048 */  lwc1       $f4, 0x48($sp)
.L80010D20:
/* 11920 80010D20 3C01800B */  lui        $at, %hi(D_800AE4E4)
/* 11924 80010D24 C430E4E4 */  lwc1       $f16, %lo(D_800AE4E4)($at)
/* 11928 80010D28 1000002B */  b          .L80010DD8
/* 1192C 80010D2C E7A4004C */   swc1      $f4, 0x4c($sp)
.L80010D30:
/* 11930 80010D30 0C0032A9 */  jal        func_8000CAA4
/* 11934 80010D34 E7AC004C */   swc1      $f12, 0x4c($sp)
/* 11938 80010D38 3C01800B */  lui        $at, %hi(D_800AE4E4)
/* 1193C 80010D3C C430E4E4 */  lwc1       $f16, %lo(D_800AE4E4)($at)
/* 11940 80010D40 3C014396 */  lui        $at, 0x4396
/* 11944 80010D44 44813000 */  mtc1       $at, $f6
/* 11948 80010D48 3C0142C8 */  lui        $at, 0x42c8
/* 1194C 80010D4C 44814000 */  mtc1       $at, $f8
/* 11950 80010D50 46103302 */  mul.s      $f12, $f6, $f16
/* 11954 80010D54 C7AA0048 */  lwc1       $f10, 0x48($sp)
/* 11958 80010D58 3C014333 */  lui        $at, 0x4333
/* 1195C 80010D5C E7A00044 */  swc1       $f0, 0x44($sp)
/* 11960 80010D60 460A4102 */  mul.s      $f4, $f8, $f10
/* 11964 80010D64 44814000 */  mtc1       $at, $f8
/* 11968 80010D68 8FB8006C */  lw         $t8, 0x6c($sp)
/* 1196C 80010D6C 3C0640A0 */  lui        $a2, 0x40a0
/* 11970 80010D70 3C074334 */  lui        $a3, 0x4334
/* 11974 80010D74 46102182 */  mul.s      $f6, $f4, $f16
/* 11978 80010D78 46064381 */  sub.s      $f14, $f8, $f6
/* 1197C 80010D7C 460E603C */  c.lt.s     $f12, $f14
/* 11980 80010D80 00000000 */  nop
/* 11984 80010D84 45020004 */  bc1fl      .L80010D98
/* 11988 80010D88 46006086 */   mov.s     $f2, $f12
/* 1198C 80010D8C 10000002 */  b          .L80010D98
/* 11990 80010D90 46007086 */   mov.s     $f2, $f14
/* 11994 80010D94 46006086 */  mov.s      $f2, $f12
.L80010D98:
/* 11998 80010D98 C70C0010 */  lwc1       $f12, 0x10($t8)
/* 1199C 80010D9C E7A20010 */  swc1       $f2, 0x10($sp)
/* 119A0 80010DA0 0C00F097 */  jal        func_8003C25C
/* 119A4 80010DA4 C7AE0044 */   lwc1      $f14, 0x44($sp)
/* 119A8 80010DA8 8FB9006C */  lw         $t9, 0x6c($sp)
/* 119AC 80010DAC 8FA40070 */  lw         $a0, 0x70($sp)
/* 119B0 80010DB0 24060001 */  addiu      $a2, $zero, 1
/* 119B4 80010DB4 C72A0010 */  lwc1       $f10, 0x10($t9)
/* 119B8 80010DB8 460A0101 */  sub.s      $f4, $f0, $f10
/* 119BC 80010DBC 44052000 */  mfc1       $a1, $f4
/* 119C0 80010DC0 0C0057E5 */  jal        func_80015F94
/* 119C4 80010DC4 00000000 */   nop
/* 119C8 80010DC8 3C014120 */  lui        $at, 0x4120
/* 119CC 80010DCC 44819000 */  mtc1       $at, $f18
/* 119D0 80010DD0 3C01800B */  lui        $at, %hi(D_800AE4E4)
/* 119D4 80010DD4 C430E4E4 */  lwc1       $f16, %lo(D_800AE4E4)($at)
.L80010DD8:
/* 119D8 80010DD8 44804000 */  mtc1       $zero, $f8
/* 119DC 80010DDC C7A60058 */  lwc1       $f6, 0x58($sp)
/* 119E0 80010DE0 3C013F00 */  lui        $at, 0x3f00
/* 119E4 80010DE4 C7AE0058 */  lwc1       $f14, 0x58($sp)
/* 119E8 80010DE8 4606403C */  c.lt.s     $f8, $f6
/* 119EC 80010DEC 44814000 */  mtc1       $at, $f8
/* 119F0 80010DF0 3C013F00 */  lui        $at, 0x3f00
/* 119F4 80010DF4 C7AA0058 */  lwc1       $f10, 0x58($sp)
/* 119F8 80010DF8 45020004 */  bc1fl      .L80010E0C
/* 119FC 80010DFC 44802000 */   mtc1      $zero, $f4
/* 11A00 80010E00 1000000A */  b          .L80010E2C
/* 11A04 80010E04 24030001 */   addiu     $v1, $zero, 1
/* 11A08 80010E08 44802000 */  mtc1       $zero, $f4
.L80010E0C:
/* 11A0C 80010E0C 00001025 */  or         $v0, $zero, $zero
/* 11A10 80010E10 4604503C */  c.lt.s     $f10, $f4
/* 11A14 80010E14 00000000 */  nop
/* 11A18 80010E18 45000003 */  bc1f       .L80010E28
/* 11A1C 80010E1C 00000000 */   nop
/* 11A20 80010E20 10000001 */  b          .L80010E28
/* 11A24 80010E24 2402FFFF */   addiu     $v0, $zero, -1
.L80010E28:
/* 11A28 80010E28 00401825 */  or         $v1, $v0, $zero
.L80010E2C:
/* 11A2C 80010E2C 46007385 */  abs.s      $f14, $f14
/* 11A30 80010E30 46087182 */  mul.s      $f6, $f14, $f8
/* 11A34 80010E34 4606903C */  c.lt.s     $f18, $f6
/* 11A38 80010E38 00000000 */  nop
/* 11A3C 80010E3C 45020007 */  bc1fl      .L80010E5C
/* 11A40 80010E40 46009086 */   mov.s     $f2, $f18
/* 11A44 80010E44 44815000 */  mtc1       $at, $f10
/* 11A48 80010E48 00000000 */  nop
/* 11A4C 80010E4C 460A7082 */  mul.s      $f2, $f14, $f10
/* 11A50 80010E50 10000003 */  b          .L80010E60
/* 11A54 80010E54 3C0142C8 */   lui       $at, 0x42c8
/* 11A58 80010E58 46009086 */  mov.s      $f2, $f18
.L80010E5C:
/* 11A5C 80010E5C 3C0142C8 */  lui        $at, 0x42c8
.L80010E60:
/* 11A60 80010E60 44812000 */  mtc1       $at, $f4
/* 11A64 80010E64 3C013F00 */  lui        $at, 0x3f00
/* 11A68 80010E68 4602203C */  c.lt.s     $f4, $f2
/* 11A6C 80010E6C 44832000 */  mtc1       $v1, $f4
/* 11A70 80010E70 45020006 */  bc1fl      .L80010E8C
/* 11A74 80010E74 44814000 */   mtc1      $at, $f8
/* 11A78 80010E78 3C0142C8 */  lui        $at, 0x42c8
/* 11A7C 80010E7C 44811000 */  mtc1       $at, $f2
/* 11A80 80010E80 10000010 */  b          .L80010EC4
/* 11A84 80010E84 46802220 */   cvt.s.w   $f8, $f4
/* 11A88 80010E88 44814000 */  mtc1       $at, $f8
.L80010E8C:
/* 11A8C 80010E8C 3C013F00 */  lui        $at, 0x3f00
/* 11A90 80010E90 46087182 */  mul.s      $f6, $f14, $f8
/* 11A94 80010E94 4606903C */  c.lt.s     $f18, $f6
/* 11A98 80010E98 00000000 */  nop
/* 11A9C 80010E9C 45020007 */  bc1fl      .L80010EBC
/* 11AA0 80010EA0 46009306 */   mov.s     $f12, $f18
/* 11AA4 80010EA4 44815000 */  mtc1       $at, $f10
/* 11AA8 80010EA8 00000000 */  nop
/* 11AAC 80010EAC 460A7302 */  mul.s      $f12, $f14, $f10
/* 11AB0 80010EB0 10000003 */  b          .L80010EC0
/* 11AB4 80010EB4 46006086 */   mov.s     $f2, $f12
/* 11AB8 80010EB8 46009306 */  mov.s      $f12, $f18
.L80010EBC:
/* 11ABC 80010EBC 46006086 */  mov.s      $f2, $f12
.L80010EC0:
/* 11AC0 80010EC0 46802220 */  cvt.s.w    $f8, $f4
.L80010EC4:
/* 11AC4 80010EC4 44805000 */  mtc1       $zero, $f10
/* 11AC8 80010EC8 46081182 */  mul.s      $f6, $f2, $f8
/* 11ACC 80010ECC 00000000 */  nop
/* 11AD0 80010ED0 46103302 */  mul.s      $f12, $f6, $f16
/* 11AD4 80010ED4 46006005 */  abs.s      $f0, $f12
/* 11AD8 80010ED8 4600703E */  c.le.s     $f14, $f0
/* 11ADC 80010EDC 00000000 */  nop
/* 11AE0 80010EE0 45000002 */  bc1f       .L80010EEC
/* 11AE4 80010EE4 00000000 */   nop
/* 11AE8 80010EE8 C7AC0058 */  lwc1       $f12, 0x58($sp)
.L80010EEC:
/* 11AEC 80010EEC 8FA20070 */  lw         $v0, 0x70($sp)
/* 11AF0 80010EF0 E7AA0060 */  swc1       $f10, 0x60($sp)
/* 11AF4 80010EF4 C7A6004C */  lwc1       $f6, 0x4c($sp)
/* 11AF8 80010EF8 C4440004 */  lwc1       $f4, 4($v0)
/* 11AFC 80010EFC 27A40060 */  addiu      $a0, $sp, 0x60
/* 11B00 80010F00 46046203 */  div.s      $f8, $f12, $f4
/* 11B04 80010F04 E7A80064 */  swc1       $f8, 0x64($sp)
/* 11B08 80010F08 C44A0008 */  lwc1       $f10, 8($v0)
/* 11B0C 80010F0C 460A3103 */  div.s      $f4, $f6, $f10
/* 11B10 80010F10 0C00202A */  jal        func_800080A8
/* 11B14 80010F14 E7A40068 */   swc1      $f4, 0x68($sp)
/* 11B18 80010F18 00001025 */  or         $v0, $zero, $zero
.L80010F1C:
/* 11B1C 80010F1C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 11B20 80010F20 27BD0070 */  addiu      $sp, $sp, 0x70
/* 11B24 80010F24 03E00008 */  jr         $ra
/* 11B28 80010F28 00000000 */   nop

glabel func_80010F2C
/* 11B2C 80010F2C 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 11B30 80010F30 AFBF001C */  sw         $ra, 0x1c($sp)
/* 11B34 80010F34 8C830054 */  lw         $v1, 0x54($a0)
/* 11B38 80010F38 AFA40068 */  sw         $a0, 0x68($sp)
/* 11B3C 80010F3C 0C04637C */  jal        func_80118DF0
/* 11B40 80010F40 AFA30064 */   sw        $v1, 0x64($sp)
/* 11B44 80010F44 3C048013 */  lui        $a0, %hi(D_80133DE0)
/* 11B48 80010F48 24843DE0 */  addiu      $a0, $a0, %lo(D_80133DE0)
/* 11B4C 80010F4C 8FA30064 */  lw         $v1, 0x64($sp)
/* 11B50 80010F50 8C820000 */  lw         $v0, ($a0)
/* 11B54 80010F54 C46201EC */  lwc1       $f2, 0x1ec($v1)
/* 11B58 80010F58 C4400008 */  lwc1       $f0, 8($v0)
/* 11B5C 80010F5C 4600103C */  c.lt.s     $f2, $f0
/* 11B60 80010F60 00000000 */  nop
/* 11B64 80010F64 45020004 */  bc1fl      .L80010F78
/* 11B68 80010F68 C4440014 */   lwc1      $f4, 0x14($v0)
/* 11B6C 80010F6C 10000008 */  b          .L80010F90
/* 11B70 80010F70 E46001EC */   swc1      $f0, 0x1ec($v1)
/* 11B74 80010F74 C4440014 */  lwc1       $f4, 0x14($v0)
.L80010F78:
/* 11B78 80010F78 46040300 */  add.s      $f12, $f0, $f4
/* 11B7C 80010F7C 4602603C */  c.lt.s     $f12, $f2
/* 11B80 80010F80 00000000 */  nop
/* 11B84 80010F84 45020003 */  bc1fl      .L80010F94
/* 11B88 80010F88 8FA50068 */   lw        $a1, 0x68($sp)
/* 11B8C 80010F8C E46C01EC */  swc1       $f12, 0x1ec($v1)
.L80010F90:
/* 11B90 80010F90 8FA50068 */  lw         $a1, 0x68($sp)
.L80010F94:
/* 11B94 80010F94 C46201F4 */  lwc1       $f2, 0x1f4($v1)
/* 11B98 80010F98 C4A60048 */  lwc1       $f6, 0x48($a1)
/* 11B9C 80010F9C E46601F0 */  swc1       $f6, 0x1f0($v1)
/* 11BA0 80010FA0 8C820000 */  lw         $v0, ($a0)
/* 11BA4 80010FA4 C4400010 */  lwc1       $f0, 0x10($v0)
/* 11BA8 80010FA8 4600103C */  c.lt.s     $f2, $f0
/* 11BAC 80010FAC 00000000 */  nop
/* 11BB0 80010FB0 45020004 */  bc1fl      .L80010FC4
/* 11BB4 80010FB4 C448001C */   lwc1      $f8, 0x1c($v0)
/* 11BB8 80010FB8 10000008 */  b          .L80010FDC
/* 11BBC 80010FBC E46001F4 */   swc1      $f0, 0x1f4($v1)
/* 11BC0 80010FC0 C448001C */  lwc1       $f8, 0x1c($v0)
.L80010FC4:
/* 11BC4 80010FC4 46080300 */  add.s      $f12, $f0, $f8
/* 11BC8 80010FC8 4602603C */  c.lt.s     $f12, $f2
/* 11BCC 80010FCC 00000000 */  nop
/* 11BD0 80010FD0 45020003 */  bc1fl      .L80010FE0
/* 11BD4 80010FD4 C46A01EC */   lwc1      $f10, 0x1ec($v1)
/* 11BD8 80010FD8 E46C01F4 */  swc1       $f12, 0x1f4($v1)
.L80010FDC:
/* 11BDC 80010FDC C46A01EC */  lwc1       $f10, 0x1ec($v1)
.L80010FE0:
/* 11BE0 80010FE0 C4A40044 */  lwc1       $f4, 0x44($a1)
/* 11BE4 80010FE4 27A4004C */  addiu      $a0, $sp, 0x4c
/* 11BE8 80010FE8 46045181 */  sub.s      $f6, $f10, $f4
/* 11BEC 80010FEC E7A6004C */  swc1       $f6, 0x4c($sp)
/* 11BF0 80010FF0 C4AA0048 */  lwc1       $f10, 0x48($a1)
/* 11BF4 80010FF4 C46801F0 */  lwc1       $f8, 0x1f0($v1)
/* 11BF8 80010FF8 460A4101 */  sub.s      $f4, $f8, $f10
/* 11BFC 80010FFC E7A40050 */  swc1       $f4, 0x50($sp)
/* 11C00 80011000 C4A8004C */  lwc1       $f8, 0x4c($a1)
/* 11C04 80011004 C46601F4 */  lwc1       $f6, 0x1f4($v1)
/* 11C08 80011008 AFA30064 */  sw         $v1, 0x64($sp)
/* 11C0C 8001100C 46083281 */  sub.s      $f10, $f6, $f8
/* 11C10 80011010 0C00E974 */  jal        func_8003A5D0
/* 11C14 80011014 E7AA0054 */   swc1      $f10, 0x54($sp)
/* 11C18 80011018 8FA30064 */  lw         $v1, 0x64($sp)
/* 11C1C 8001101C 3C013F80 */  lui        $at, 0x3f80
/* 11C20 80011020 44812000 */  mtc1       $at, $f4
/* 11C24 80011024 C46601A4 */  lwc1       $f6, 0x1a4($v1)
/* 11C28 80011028 C7AA004C */  lwc1       $f10, 0x4c($sp)
/* 11C2C 8001102C 27A40058 */  addiu      $a0, $sp, 0x58
/* 11C30 80011030 46062200 */  add.s      $f8, $f4, $f6
/* 11C34 80011034 4608003C */  c.lt.s     $f0, $f8
/* 11C38 80011038 00000000 */  nop
/* 11C3C 8001103C 45020004 */  bc1fl      .L80011050
/* 11C40 80011040 44802000 */   mtc1      $zero, $f4
/* 11C44 80011044 10000073 */  b          .L80011214
/* 11C48 80011048 24020001 */   addiu     $v0, $zero, 1
/* 11C4C 8001104C 44802000 */  mtc1       $zero, $f4
.L80011050:
/* 11C50 80011050 C7A60054 */  lwc1       $f6, 0x54($sp)
/* 11C54 80011054 E7AA0058 */  swc1       $f10, 0x58($sp)
/* 11C58 80011058 AFA30064 */  sw         $v1, 0x64($sp)
/* 11C5C 8001105C E7A60060 */  swc1       $f6, 0x60($sp)
/* 11C60 80011060 0C00E974 */  jal        func_8003A5D0
/* 11C64 80011064 E7A4005C */   swc1      $f4, 0x5c($sp)
/* 11C68 80011068 3C014120 */  lui        $at, 0x4120
/* 11C6C 8001106C 44816000 */  mtc1       $at, $f12
/* 11C70 80011070 3C013F00 */  lui        $at, 0x3f00
/* 11C74 80011074 44814000 */  mtc1       $at, $f8
/* 11C78 80011078 8FA30064 */  lw         $v1, 0x64($sp)
/* 11C7C 8001107C 46000486 */  mov.s      $f18, $f0
/* 11C80 80011080 46080082 */  mul.s      $f2, $f0, $f8
/* 11C84 80011084 3C01800B */  lui        $at, 0x800b
/* 11C88 80011088 27A4004C */  addiu      $a0, $sp, 0x4c
/* 11C8C 8001108C 4602603C */  c.lt.s     $f12, $f2
/* 11C90 80011090 00000000 */  nop
/* 11C94 80011094 45020004 */  bc1fl      .L800110A8
/* 11C98 80011098 46006386 */   mov.s     $f14, $f12
/* 11C9C 8001109C 10000002 */  b          .L800110A8
/* 11CA0 800110A0 46001386 */   mov.s     $f14, $f2
/* 11CA4 800110A4 46006386 */  mov.s      $f14, $f12
.L800110A8:
/* 11CA8 800110A8 460E603C */  c.lt.s     $f12, $f14
/* 11CAC 800110AC 00000000 */  nop
/* 11CB0 800110B0 45020004 */  bc1fl      .L800110C4
/* 11CB4 800110B4 4602603C */   c.lt.s    $f12, $f2
/* 11CB8 800110B8 10000009 */  b          .L800110E0
/* 11CBC 800110BC 46006086 */   mov.s     $f2, $f12
/* 11CC0 800110C0 4602603C */  c.lt.s     $f12, $f2
.L800110C4:
/* 11CC4 800110C4 00000000 */  nop
/* 11CC8 800110C8 45020004 */  bc1fl      .L800110DC
/* 11CCC 800110CC 46006386 */   mov.s     $f14, $f12
/* 11CD0 800110D0 10000002 */  b          .L800110DC
/* 11CD4 800110D4 46001386 */   mov.s     $f14, $f2
/* 11CD8 800110D8 46006386 */  mov.s      $f14, $f12
.L800110DC:
/* 11CDC 800110DC 46007086 */  mov.s      $f2, $f14
.L800110E0:
/* 11CE0 800110E0 C42AE4E4 */  lwc1       $f10, -0x1b1c($at)
/* 11CE4 800110E4 460A1402 */  mul.s      $f16, $f2, $f10
/* 11CE8 800110E8 4610003E */  c.le.s     $f0, $f16
/* 11CEC 800110EC 00000000 */  nop
/* 11CF0 800110F0 45020012 */  bc1fl      .L8001113C
/* 11CF4 800110F4 AFA30064 */   sw        $v1, 0x64($sp)
/* 11CF8 800110F8 44802000 */  mtc1       $zero, $f4
/* 11CFC 800110FC 8FA40068 */  lw         $a0, 0x68($sp)
/* 11D00 80011100 3C054434 */  lui        $a1, 0x4434
/* 11D04 80011104 4600203C */  c.lt.s     $f4, $f0
/* 11D08 80011108 00000000 */  nop
/* 11D0C 8001110C 45000008 */  bc1f       .L80011130
/* 11D10 80011110 00000000 */   nop
/* 11D14 80011114 0C0462E6 */  jal        func_80118B98
/* 11D18 80011118 E7B20044 */   swc1      $f18, 0x44($sp)
/* 11D1C 8001111C 14400004 */  bnez       $v0, .L80011130
/* 11D20 80011120 C7B20044 */   lwc1      $f18, 0x44($sp)
/* 11D24 80011124 44808000 */  mtc1       $zero, $f16
/* 11D28 80011128 10000030 */  b          .L800111EC
/* 11D2C 8001112C 44804000 */   mtc1      $zero, $f8
.L80011130:
/* 11D30 80011130 1000002D */  b          .L800111E8
/* 11D34 80011134 46009406 */   mov.s     $f16, $f18
/* 11D38 80011138 AFA30064 */  sw         $v1, 0x64($sp)
.L8001113C:
/* 11D3C 8001113C E7B00048 */  swc1       $f16, 0x48($sp)
/* 11D40 80011140 0C0032A9 */  jal        func_8000CAA4
/* 11D44 80011144 E7B20044 */   swc1      $f18, 0x44($sp)
/* 11D48 80011148 3C01800B */  lui        $at, %hi(D_800AE4E4)
/* 11D4C 8001114C C422E4E4 */  lwc1       $f2, %lo(D_800AE4E4)($at)
/* 11D50 80011150 3C014396 */  lui        $at, 0x4396
/* 11D54 80011154 44813000 */  mtc1       $at, $f6
/* 11D58 80011158 3C014333 */  lui        $at, 0x4333
/* 11D5C 8001115C 44814000 */  mtc1       $at, $f8
/* 11D60 80011160 3C0142C8 */  lui        $at, 0x42c8
/* 11D64 80011164 46023302 */  mul.s      $f12, $f6, $f2
/* 11D68 80011168 C7B20044 */  lwc1       $f18, 0x44($sp)
/* 11D6C 8001116C 44815000 */  mtc1       $at, $f10
/* 11D70 80011170 8FA30064 */  lw         $v1, 0x64($sp)
/* 11D74 80011174 C7B00048 */  lwc1       $f16, 0x48($sp)
/* 11D78 80011178 46125102 */  mul.s      $f4, $f10, $f18
/* 11D7C 8001117C E7A00040 */  swc1       $f0, 0x40($sp)
/* 11D80 80011180 3C0640A0 */  lui        $a2, 0x40a0
/* 11D84 80011184 3C074334 */  lui        $a3, 0x4334
/* 11D88 80011188 46022182 */  mul.s      $f6, $f4, $f2
/* 11D8C 8001118C 46064381 */  sub.s      $f14, $f8, $f6
/* 11D90 80011190 460E603C */  c.lt.s     $f12, $f14
/* 11D94 80011194 00000000 */  nop
/* 11D98 80011198 45020004 */  bc1fl      .L800111AC
/* 11D9C 8001119C 46006086 */   mov.s     $f2, $f12
/* 11DA0 800111A0 10000002 */  b          .L800111AC
/* 11DA4 800111A4 46007086 */   mov.s     $f2, $f14
/* 11DA8 800111A8 46006086 */  mov.s      $f2, $f12
.L800111AC:
/* 11DAC 800111AC C46C0010 */  lwc1       $f12, 0x10($v1)
/* 11DB0 800111B0 E7B00048 */  swc1       $f16, 0x48($sp)
/* 11DB4 800111B4 AFA30064 */  sw         $v1, 0x64($sp)
/* 11DB8 800111B8 E7A20010 */  swc1       $f2, 0x10($sp)
/* 11DBC 800111BC 0C00F097 */  jal        func_8003C25C
/* 11DC0 800111C0 C7AE0040 */   lwc1      $f14, 0x40($sp)
/* 11DC4 800111C4 8FA30064 */  lw         $v1, 0x64($sp)
/* 11DC8 800111C8 8FA40068 */  lw         $a0, 0x68($sp)
/* 11DCC 800111CC 24060001 */  addiu      $a2, $zero, 1
/* 11DD0 800111D0 C46A0010 */  lwc1       $f10, 0x10($v1)
/* 11DD4 800111D4 460A0101 */  sub.s      $f4, $f0, $f10
/* 11DD8 800111D8 44052000 */  mfc1       $a1, $f4
/* 11DDC 800111DC 0C0057E5 */  jal        func_80015F94
/* 11DE0 800111E0 00000000 */   nop
/* 11DE4 800111E4 C7B00048 */  lwc1       $f16, 0x48($sp)
.L800111E8:
/* 11DE8 800111E8 44804000 */  mtc1       $zero, $f8
.L800111EC:
/* 11DEC 800111EC 44803000 */  mtc1       $zero, $f6
/* 11DF0 800111F0 8FAE0068 */  lw         $t6, 0x68($sp)
/* 11DF4 800111F4 E7A80058 */  swc1       $f8, 0x58($sp)
/* 11DF8 800111F8 E7A6005C */  swc1       $f6, 0x5c($sp)
/* 11DFC 800111FC C5CA0008 */  lwc1       $f10, 8($t6)
/* 11E00 80011200 27A40058 */  addiu      $a0, $sp, 0x58
/* 11E04 80011204 460A8103 */  div.s      $f4, $f16, $f10
/* 11E08 80011208 0C00202A */  jal        func_800080A8
/* 11E0C 8001120C E7A40060 */   swc1      $f4, 0x60($sp)
/* 11E10 80011210 00001025 */  or         $v0, $zero, $zero
.L80011214:
/* 11E14 80011214 8FBF001C */  lw         $ra, 0x1c($sp)
/* 11E18 80011218 27BD0068 */  addiu      $sp, $sp, 0x68
/* 11E1C 8001121C 03E00008 */  jr         $ra
/* 11E20 80011220 00000000 */   nop

glabel func_80011224
/* 11E24 80011224 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 11E28 80011228 AFBF001C */  sw         $ra, 0x1c($sp)
/* 11E2C 8001122C AFB00018 */  sw         $s0, 0x18($sp)
/* 11E30 80011230 8C900054 */  lw         $s0, 0x54($a0)
/* 11E34 80011234 0C04637C */  jal        func_80118DF0
/* 11E38 80011238 AFA40038 */   sw        $a0, 0x38($sp)
/* 11E3C 8001123C 8FA50038 */  lw         $a1, 0x38($sp)
/* 11E40 80011240 00003825 */  or         $a3, $zero, $zero
/* 11E44 80011244 C4AC0018 */  lwc1       $f12, 0x18($a1)
/* 11E48 80011248 C4AE001C */  lwc1       $f14, 0x1c($a1)
/* 11E4C 8001124C 0C042F10 */  jal        func_8010BC40
/* 11E50 80011250 8CA60020 */   lw        $a2, 0x20($a1)
/* 11E54 80011254 8FA50038 */  lw         $a1, 0x38($sp)
/* 11E58 80011258 C4A20048 */  lwc1       $f2, 0x48($a1)
/* 11E5C 8001125C 4600103C */  c.lt.s     $f2, $f0
/* 11E60 80011260 00000000 */  nop
/* 11E64 80011264 45020005 */  bc1fl      .L8001127C
/* 11E68 80011268 46001181 */   sub.s     $f6, $f2, $f0
/* 11E6C 8001126C 44802000 */  mtc1       $zero, $f4
/* 11E70 80011270 10000003 */  b          .L80011280
/* 11E74 80011274 E60401F8 */   swc1      $f4, 0x1f8($s0)
/* 11E78 80011278 46001181 */  sub.s      $f6, $f2, $f0
.L8001127C:
/* 11E7C 8001127C E60601F8 */  swc1       $f6, 0x1f8($s0)
.L80011280:
/* 11E80 80011280 C60801EC */  lwc1       $f8, 0x1ec($s0)
/* 11E84 80011284 C4AA0044 */  lwc1       $f10, 0x44($a1)
/* 11E88 80011288 44809000 */  mtc1       $zero, $f18
/* 11E8C 8001128C 27A40028 */  addiu      $a0, $sp, 0x28
/* 11E90 80011290 460A4401 */  sub.s      $f16, $f8, $f10
/* 11E94 80011294 E7B2002C */  swc1       $f18, 0x2c($sp)
/* 11E98 80011298 E7B00028 */  swc1       $f16, 0x28($sp)
/* 11E9C 8001129C C4A6004C */  lwc1       $f6, 0x4c($a1)
/* 11EA0 800112A0 C60401F4 */  lwc1       $f4, 0x1f4($s0)
/* 11EA4 800112A4 46062201 */  sub.s      $f8, $f4, $f6
/* 11EA8 800112A8 0C00E974 */  jal        func_8003A5D0
/* 11EAC 800112AC E7A80030 */   swc1      $f8, 0x30($sp)
/* 11EB0 800112B0 C60A0204 */  lwc1       $f10, 0x204($s0)
/* 11EB4 800112B4 C61001A4 */  lwc1       $f16, 0x1a4($s0)
/* 11EB8 800112B8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 11EBC 800112BC 46105480 */  add.s      $f18, $f10, $f16
/* 11EC0 800112C0 4612003C */  c.lt.s     $f0, $f18
/* 11EC4 800112C4 00000000 */  nop
/* 11EC8 800112C8 45020004 */  bc1fl      .L800112DC
/* 11ECC 800112CC 960E01EA */   lhu       $t6, 0x1ea($s0)
/* 11ED0 800112D0 10000007 */  b          .L800112F0
/* 11ED4 800112D4 24020001 */   addiu     $v0, $zero, 1
/* 11ED8 800112D8 960E01EA */  lhu        $t6, 0x1ea($s0)
.L800112DC:
/* 11EDC 800112DC 00001025 */  or         $v0, $zero, $zero
/* 11EE0 800112E0 11C00003 */  beqz       $t6, .L800112F0
/* 11EE4 800112E4 00000000 */   nop
/* 11EE8 800112E8 10000001 */  b          .L800112F0
/* 11EEC 800112EC 24020001 */   addiu     $v0, $zero, 1
.L800112F0:
/* 11EF0 800112F0 8FB00018 */  lw         $s0, 0x18($sp)
/* 11EF4 800112F4 03E00008 */  jr         $ra
/* 11EF8 800112F8 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800112FC
/* 11EFC 800112FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11F00 80011300 AFBF0014 */  sw         $ra, 0x14($sp)
/* 11F04 80011304 0C0044CF */  jal        func_8001133C
/* 11F08 80011308 3C0543FA */   lui       $a1, 0x43fa
/* 11F0C 8001130C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11F10 80011310 27BD0018 */  addiu      $sp, $sp, 0x18
/* 11F14 80011314 03E00008 */  jr         $ra
/* 11F18 80011318 00000000 */   nop

glabel func_8001131C
/* 11F1C 8001131C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11F20 80011320 AFBF0014 */  sw         $ra, 0x14($sp)
/* 11F24 80011324 0C0044CF */  jal        func_8001133C
/* 11F28 80011328 3C054448 */   lui       $a1, 0x4448
/* 11F2C 8001132C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11F30 80011330 27BD0018 */  addiu      $sp, $sp, 0x18
/* 11F34 80011334 03E00008 */  jr         $ra
/* 11F38 80011338 00000000 */   nop

glabel func_8001133C
/* 11F3C 8001133C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 11F40 80011340 AFBF001C */  sw         $ra, 0x1c($sp)
/* 11F44 80011344 AFB00018 */  sw         $s0, 0x18($sp)
/* 11F48 80011348 00808025 */  or         $s0, $a0, $zero
/* 11F4C 8001134C 0C04637C */  jal        func_80118DF0
/* 11F50 80011350 AFA5003C */   sw        $a1, 0x3c($sp)
/* 11F54 80011354 02002025 */  or         $a0, $s0, $zero
/* 11F58 80011358 0C0462E6 */  jal        func_80118B98
/* 11F5C 8001135C 3C054396 */   lui       $a1, 0x4396
/* 11F60 80011360 3C01800B */  lui        $at, %hi(D_800AE4E4)
/* 11F64 80011364 C424E4E4 */  lwc1       $f4, %lo(D_800AE4E4)($at)
/* 11F68 80011368 C7A6003C */  lwc1       $f6, 0x3c($sp)
/* 11F6C 8001136C 44800000 */  mtc1       $zero, $f0
/* 11F70 80011370 27A40028 */  addiu      $a0, $sp, 0x28
/* 11F74 80011374 46062202 */  mul.s      $f8, $f4, $f6
/* 11F78 80011378 E7A00028 */  swc1       $f0, 0x28($sp)
/* 11F7C 8001137C E7A0002C */  swc1       $f0, 0x2c($sp)
/* 11F80 80011380 0C00202A */  jal        func_800080A8
/* 11F84 80011384 E7A80030 */   swc1      $f8, 0x30($sp)
/* 11F88 80011388 C60C0018 */  lwc1       $f12, 0x18($s0)
/* 11F8C 8001138C C60E001C */  lwc1       $f14, 0x1c($s0)
/* 11F90 80011390 8E060020 */  lw         $a2, 0x20($s0)
/* 11F94 80011394 0C042F10 */  jal        func_8010BC40
/* 11F98 80011398 00003825 */   or        $a3, $zero, $zero
/* 11F9C 8001139C C60A001C */  lwc1       $f10, 0x1c($s0)
/* 11FA0 800113A0 3C014120 */  lui        $at, 0x4120
/* 11FA4 800113A4 44811000 */  mtc1       $at, $f2
/* 11FA8 800113A8 46005401 */  sub.s      $f16, $f10, $f0
/* 11FAC 800113AC 4602803C */  c.lt.s     $f16, $f2
/* 11FB0 800113B0 00000000 */  nop
/* 11FB4 800113B4 45020008 */  bc1fl      .L800113D8
/* 11FB8 800113B8 8FBF001C */   lw        $ra, 0x1c($sp)
/* 11FBC 800113BC 46020100 */  add.s      $f4, $f0, $f2
/* 11FC0 800113C0 C6120018 */  lwc1       $f18, 0x18($s0)
/* 11FC4 800113C4 C6060020 */  lwc1       $f6, 0x20($s0)
/* 11FC8 800113C8 E604001C */  swc1       $f4, 0x1c($s0)
/* 11FCC 800113CC E6120018 */  swc1       $f18, 0x18($s0)
/* 11FD0 800113D0 E6060020 */  swc1       $f6, 0x20($s0)
/* 11FD4 800113D4 8FBF001C */  lw         $ra, 0x1c($sp)
.L800113D8:
/* 11FD8 800113D8 8FB00018 */  lw         $s0, 0x18($sp)
/* 11FDC 800113DC 27BD0038 */  addiu      $sp, $sp, 0x38
/* 11FE0 800113E0 03E00008 */  jr         $ra
/* 11FE4 800113E4 00001025 */   or        $v0, $zero, $zero

glabel func_800113E8
/* 11FE8 800113E8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11FEC 800113EC AFBF001C */  sw         $ra, 0x1c($sp)
/* 11FF0 800113F0 AFB00018 */  sw         $s0, 0x18($sp)
/* 11FF4 800113F4 0C04637C */  jal        func_80118DF0
/* 11FF8 800113F8 00808025 */   or        $s0, $a0, $zero
/* 11FFC 800113FC 02002025 */  or         $a0, $s0, $zero
/* 12000 80011400 0C0462E6 */  jal        func_80118B98
/* 12004 80011404 3C054396 */   lui       $a1, 0x4396
/* 12008 80011408 C60C0018 */  lwc1       $f12, 0x18($s0)
/* 1200C 8001140C C60E001C */  lwc1       $f14, 0x1c($s0)
/* 12010 80011410 8E060020 */  lw         $a2, 0x20($s0)
/* 12014 80011414 0C042F10 */  jal        func_8010BC40
/* 12018 80011418 00003825 */   or        $a3, $zero, $zero
/* 1201C 8001141C 3C014138 */  lui        $at, 0x4138
/* 12020 80011420 44813000 */  mtc1       $at, $f6
/* 12024 80011424 C6040018 */  lwc1       $f4, 0x18($s0)
/* 12028 80011428 C60A0020 */  lwc1       $f10, 0x20($s0)
/* 1202C 8001142C 46060200 */  add.s      $f8, $f0, $f6
/* 12030 80011430 E6040018 */  swc1       $f4, 0x18($s0)
/* 12034 80011434 E60A0020 */  swc1       $f10, 0x20($s0)
/* 12038 80011438 00001025 */  or         $v0, $zero, $zero
/* 1203C 8001143C E608001C */  swc1       $f8, 0x1c($s0)
/* 12040 80011440 8FBF001C */  lw         $ra, 0x1c($sp)
/* 12044 80011444 8FB00018 */  lw         $s0, 0x18($sp)
/* 12048 80011448 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1204C 8001144C 03E00008 */  jr         $ra
/* 12050 80011450 00000000 */   nop

glabel func_80011454
/* 12054 80011454 8C830054 */  lw         $v1, 0x54($a0)
/* 12058 80011458 44802000 */  mtc1       $zero, $f4
/* 1205C 8001145C 00001025 */  or         $v0, $zero, $zero
/* 12060 80011460 E46401F8 */  swc1       $f4, 0x1f8($v1)
/* 12064 80011464 C4860000 */  lwc1       $f6, ($a0)
/* 12068 80011468 03E00008 */  jr         $ra
/* 1206C 8001146C E4860004 */   swc1      $f6, 4($a0)

glabel func_80011470
/* 12070 80011470 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12074 80011474 AFBF0014 */  sw         $ra, 0x14($sp)
/* 12078 80011478 8C830054 */  lw         $v1, 0x54($a0)
/* 1207C 8001147C 3C0143B4 */  lui        $at, 0x43b4
/* 12080 80011480 44812000 */  mtc1       $at, $f4
/* 12084 80011484 C46201F8 */  lwc1       $f2, 0x1f8($v1)
/* 12088 80011488 3C014352 */  lui        $at, 0x4352
/* 1208C 8001148C 4602203E */  c.le.s     $f4, $f2
/* 12090 80011490 00000000 */  nop
/* 12094 80011494 45020008 */  bc1fl      .L800114B8
/* 12098 80011498 44815000 */   mtc1      $at, $f10
/* 1209C 8001149C C4860000 */  lwc1       $f6, ($a0)
/* 120A0 800114A0 44804000 */  mtc1       $zero, $f8
/* 120A4 800114A4 24020001 */  addiu      $v0, $zero, 1
/* 120A8 800114A8 E4860004 */  swc1       $f6, 4($a0)
/* 120AC 800114AC 1000001A */  b          .L80011518
/* 120B0 800114B0 E46801F8 */   swc1      $f8, 0x1f8($v1)
/* 120B4 800114B4 44815000 */  mtc1       $at, $f10
.L800114B8:
/* 120B8 800114B8 AFA3001C */  sw         $v1, 0x1c($sp)
/* 120BC 800114BC AFA40020 */  sw         $a0, 0x20($sp)
/* 120C0 800114C0 0C00F0F7 */  jal        func_8003C3DC
/* 120C4 800114C4 460A1300 */   add.s     $f12, $f2, $f10
/* 120C8 800114C8 3C01800A */  lui        $at, %hi(D_800A25D8)
/* 120CC 800114CC C43025D8 */  lwc1       $f16, %lo(D_800A25D8)($at)
/* 120D0 800114D0 3C01BF00 */  lui        $at, 0xbf00
/* 120D4 800114D4 44819000 */  mtc1       $at, $f18
/* 120D8 800114D8 3C013F80 */  lui        $at, 0x3f80
/* 120DC 800114DC 44814000 */  mtc1       $at, $f8
/* 120E0 800114E0 46120101 */  sub.s      $f4, $f0, $f18
/* 120E4 800114E4 8FA40020 */  lw         $a0, 0x20($sp)
/* 120E8 800114E8 8FA3001C */  lw         $v1, 0x1c($sp)
/* 120EC 800114EC 3C014220 */  lui        $at, 0x4220
/* 120F0 800114F0 46048182 */  mul.s      $f6, $f16, $f4
/* 120F4 800114F4 C4920000 */  lwc1       $f18, ($a0)
/* 120F8 800114F8 00001025 */  or         $v0, $zero, $zero
/* 120FC 800114FC 46064280 */  add.s      $f10, $f8, $f6
/* 12100 80011500 44814000 */  mtc1       $at, $f8
/* 12104 80011504 460A9402 */  mul.s      $f16, $f18, $f10
/* 12108 80011508 E4900004 */  swc1       $f16, 4($a0)
/* 1210C 8001150C C46401F8 */  lwc1       $f4, 0x1f8($v1)
/* 12110 80011510 46082180 */  add.s      $f6, $f4, $f8
/* 12114 80011514 E46601F8 */  swc1       $f6, 0x1f8($v1)
.L80011518:
/* 12118 80011518 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1211C 8001151C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 12120 80011520 03E00008 */  jr         $ra
/* 12124 80011524 00000000 */   nop

glabel func_80011528
/* 12128 80011528 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1212C 8001152C AFBF0014 */  sw         $ra, 0x14($sp)
/* 12130 80011530 8C830054 */  lw         $v1, 0x54($a0)
/* 12134 80011534 3C01800A */  lui        $at, %hi(D_800A25DC)
/* 12138 80011538 C43025DC */  lwc1       $f16, %lo(D_800A25DC)($at)
/* 1213C 8001153C 3C014487 */  lui        $at, 0x4487
/* 12140 80011540 44812000 */  mtc1       $at, $f4
/* 12144 80011544 C46201F8 */  lwc1       $f2, 0x1f8($v1)
/* 12148 80011548 3C01800A */  lui        $at, 0x800a
/* 1214C 8001154C 4602203E */  c.le.s     $f4, $f2
/* 12150 80011550 00000000 */  nop
/* 12154 80011554 45000007 */  bc1f       .L80011574
/* 12158 80011558 00000000 */   nop
/* 1215C 8001155C C4860000 */  lwc1       $f6, ($a0)
/* 12160 80011560 44804000 */  mtc1       $zero, $f8
/* 12164 80011564 24020001 */  addiu      $v0, $zero, 1
/* 12168 80011568 E4860004 */  swc1       $f6, 4($a0)
/* 1216C 8001156C 1000002B */  b          .L8001161C
/* 12170 80011570 E46801F8 */   swc1      $f8, 0x1f8($v1)
.L80011574:
/* 12174 80011574 D42A25E0 */  ldc1       $f10, 0x25e0($at)
/* 12178 80011578 46001021 */  cvt.d.s    $f0, $f2
/* 1217C 8001157C 46001386 */  mov.s      $f14, $f2
/* 12180 80011580 4620503E */  c.le.d     $f10, $f0
/* 12184 80011584 3C01800A */  lui        $at, %hi(D_800A25E8)
/* 12188 80011588 45000002 */  bc1f       .L80011594
/* 1218C 8001158C 00000000 */   nop
/* 12190 80011590 C43025E8 */  lwc1       $f16, %lo(D_800A25E8)($at)
.L80011594:
/* 12194 80011594 3C01800A */  lui        $at, %hi(D_800A25F0)
/* 12198 80011598 D43225F0 */  ldc1       $f18, %lo(D_800A25F0)($at)
/* 1219C 8001159C 3C01800A */  lui        $at, 0x800a
/* 121A0 800115A0 4620903C */  c.lt.d     $f18, $f0
/* 121A4 800115A4 00000000 */  nop
/* 121A8 800115A8 45020003 */  bc1fl      .L800115B8
/* 121AC 800115AC 3C014352 */   lui       $at, 0x4352
/* 121B0 800115B0 C43025F8 */  lwc1       $f16, 0x25f8($at)
/* 121B4 800115B4 3C014352 */  lui        $at, 0x4352
.L800115B8:
/* 121B8 800115B8 44812000 */  mtc1       $at, $f4
/* 121BC 800115BC AFA30024 */  sw         $v1, 0x24($sp)
/* 121C0 800115C0 AFA40028 */  sw         $a0, 0x28($sp)
/* 121C4 800115C4 E7B00018 */  swc1       $f16, 0x18($sp)
/* 121C8 800115C8 0C00F0F7 */  jal        func_8003C3DC
/* 121CC 800115CC 46047300 */   add.s     $f12, $f14, $f4
/* 121D0 800115D0 3C013F80 */  lui        $at, 0x3f80
/* 121D4 800115D4 44813000 */  mtc1       $at, $f6
/* 121D8 800115D8 3C01BF00 */  lui        $at, 0xbf00
/* 121DC 800115DC 44814000 */  mtc1       $at, $f8
/* 121E0 800115E0 C7B00018 */  lwc1       $f16, 0x18($sp)
/* 121E4 800115E4 8FA40028 */  lw         $a0, 0x28($sp)
/* 121E8 800115E8 46080281 */  sub.s      $f10, $f0, $f8
/* 121EC 800115EC 8FA30024 */  lw         $v1, 0x24($sp)
/* 121F0 800115F0 C4880000 */  lwc1       $f8, ($a0)
/* 121F4 800115F4 3C014220 */  lui        $at, 0x4220
/* 121F8 800115F8 460A8482 */  mul.s      $f18, $f16, $f10
/* 121FC 800115FC 00001025 */  or         $v0, $zero, $zero
/* 12200 80011600 46123100 */  add.s      $f4, $f6, $f18
/* 12204 80011604 44819000 */  mtc1       $at, $f18
/* 12208 80011608 46044282 */  mul.s      $f10, $f8, $f4
/* 1220C 8001160C E48A0004 */  swc1       $f10, 4($a0)
/* 12210 80011610 C46601F8 */  lwc1       $f6, 0x1f8($v1)
/* 12214 80011614 46123200 */  add.s      $f8, $f6, $f18
/* 12218 80011618 E46801F8 */  swc1       $f8, 0x1f8($v1)
.L8001161C:
/* 1221C 8001161C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12220 80011620 27BD0028 */  addiu      $sp, $sp, 0x28
/* 12224 80011624 03E00008 */  jr         $ra
/* 12228 80011628 00000000 */   nop

glabel func_8001162C
/* 1222C 8001162C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 12230 80011630 AFA5004C */  sw         $a1, 0x4c($sp)
/* 12234 80011634 3C01800B */  lui        $at, %hi(D_800AE4E4)
/* 12238 80011638 C424E4E4 */  lwc1       $f4, %lo(D_800AE4E4)($at)
/* 1223C 8001163C C7A6004C */  lwc1       $f6, 0x4c($sp)
/* 12240 80011640 AFBF0014 */  sw         $ra, 0x14($sp)
/* 12244 80011644 AFA40048 */  sw         $a0, 0x48($sp)
/* 12248 80011648 46062202 */  mul.s      $f8, $f4, $f6
/* 1224C 8001164C 0C002C3F */  jal        func_8000B0FC
/* 12250 80011650 E7A80034 */   swc1      $f8, 0x34($sp)
/* 12254 80011654 00402025 */  or         $a0, $v0, $zero
/* 12258 80011658 0C0148C6 */  jal        __ull_to_f
/* 1225C 8001165C 00602825 */   or        $a1, $v1, $zero
/* 12260 80011660 3C0143B4 */  lui        $at, 0x43b4
/* 12264 80011664 44811000 */  mtc1       $at, $f2
/* 12268 80011668 3C01800A */  lui        $at, %hi(D_800A25FC)
/* 1226C 8001166C C43225FC */  lwc1       $f18, %lo(D_800A25FC)($at)
/* 12270 80011670 46020282 */  mul.s      $f10, $f0, $f2
/* 12274 80011674 3C01800A */  lui        $at, %hi(D_800A2600)
/* 12278 80011678 C4282600 */  lwc1       $f8, %lo(D_800A2600)($at)
/* 1227C 8001167C C7A6004C */  lwc1       $f6, 0x4c($sp)
/* 12280 80011680 44808000 */  mtc1       $zero, $f16
/* 12284 80011684 46125102 */  mul.s      $f4, $f10, $f18
/* 12288 80011688 00000000 */  nop
/* 1228C 8001168C 46083282 */  mul.s      $f10, $f6, $f8
/* 12290 80011690 00000000 */  nop
/* 12294 80011694 460A2302 */  mul.s      $f12, $f4, $f10
/* 12298 80011698 4610603C */  c.lt.s     $f12, $f16
/* 1229C 8001169C 00000000 */  nop
/* 122A0 800116A0 45000006 */  bc1f       .L800116BC
/* 122A4 800116A4 00000000 */   nop
/* 122A8 800116A8 46026300 */  add.s      $f12, $f12, $f2
.L800116AC:
/* 122AC 800116AC 4610603C */  c.lt.s     $f12, $f16
/* 122B0 800116B0 00000000 */  nop
/* 122B4 800116B4 4503FFFD */  bc1tl      .L800116AC
/* 122B8 800116B8 46026300 */   add.s     $f12, $f12, $f2
.L800116BC:
/* 122BC 800116BC 460C103E */  c.le.s     $f2, $f12
/* 122C0 800116C0 00000000 */  nop
/* 122C4 800116C4 45000006 */  bc1f       .L800116E0
/* 122C8 800116C8 00000000 */   nop
/* 122CC 800116CC 46026301 */  sub.s      $f12, $f12, $f2
.L800116D0:
/* 122D0 800116D0 460C103E */  c.le.s     $f2, $f12
/* 122D4 800116D4 00000000 */  nop
/* 122D8 800116D8 4503FFFD */  bc1tl      .L800116D0
/* 122DC 800116DC 46026301 */   sub.s     $f12, $f12, $f2
.L800116E0:
/* 122E0 800116E0 0C00F0F7 */  jal        func_8003C3DC
/* 122E4 800116E4 E7AC0030 */   swc1      $f12, 0x30($sp)
/* 122E8 800116E8 3C01800A */  lui        $at, %hi(D_800A2608)
/* 122EC 800116EC D4322608 */  ldc1       $f18, %lo(D_800A2608)($at)
/* 122F0 800116F0 460001A1 */  cvt.d.s    $f6, $f0
/* 122F4 800116F4 8FA20048 */  lw         $v0, 0x48($sp)
/* 122F8 800116F8 46269202 */  mul.d      $f8, $f18, $f6
/* 122FC 800116FC 3C013FF0 */  lui        $at, 0x3ff0
/* 12300 80011700 44812800 */  mtc1       $at, $f5
/* 12304 80011704 44802000 */  mtc1       $zero, $f4
/* 12308 80011708 C4520000 */  lwc1       $f18, ($v0)
/* 1230C 8001170C C7AC0030 */  lwc1       $f12, 0x30($sp)
/* 12310 80011710 460091A1 */  cvt.d.s    $f6, $f18
/* 12314 80011714 46282280 */  add.d      $f10, $f4, $f8
/* 12318 80011718 462A3102 */  mul.d      $f4, $f6, $f10
/* 1231C 8001171C 46202220 */  cvt.s.d    $f8, $f4
/* 12320 80011720 0C00F0F7 */  jal        func_8003C3DC
/* 12324 80011724 E4480004 */   swc1      $f8, 4($v0)
/* 12328 80011728 3C01800A */  lui        $at, %hi(D_800A2610)
/* 1232C 8001172C D4322610 */  ldc1       $f18, %lo(D_800A2610)($at)
/* 12330 80011730 460001A1 */  cvt.d.s    $f6, $f0
/* 12334 80011734 8FAE0048 */  lw         $t6, 0x48($sp)
/* 12338 80011738 46269282 */  mul.d      $f10, $f18, $f6
/* 1233C 8001173C 3C013FF0 */  lui        $at, 0x3ff0
/* 12340 80011740 44812800 */  mtc1       $at, $f5
/* 12344 80011744 44802000 */  mtc1       $zero, $f4
/* 12348 80011748 C5C20000 */  lwc1       $f2, ($t6)
/* 1234C 8001174C 2404000A */  addiu      $a0, $zero, 0xa
/* 12350 80011750 460014A1 */  cvt.d.s    $f18, $f2
/* 12354 80011754 462A2200 */  add.d      $f8, $f4, $f10
/* 12358 80011758 46289182 */  mul.d      $f6, $f18, $f8
/* 1235C 8001175C 46203320 */  cvt.s.d    $f12, $f6
/* 12360 80011760 46026283 */  div.s      $f10, $f12, $f2
/* 12364 80011764 E5CC0008 */  swc1       $f12, 8($t6)
/* 12368 80011768 C7A40034 */  lwc1       $f4, 0x34($sp)
/* 1236C 8001176C 460A2482 */  mul.s      $f18, $f4, $f10
/* 12370 80011770 0C00EAC8 */  jal        func_8003AB20
/* 12374 80011774 E7B20034 */   swc1      $f18, 0x34($sp)
/* 12378 80011778 244FFFFC */  addiu      $t7, $v0, -4
/* 1237C 8001177C 448F4000 */  mtc1       $t7, $f8
/* 12380 80011780 44808000 */  mtc1       $zero, $f16
/* 12384 80011784 C7A40034 */  lwc1       $f4, 0x34($sp)
/* 12388 80011788 468041A0 */  cvt.s.w    $f6, $f8
/* 1238C 8001178C 27A40038 */  addiu      $a0, $sp, 0x38
/* 12390 80011790 E7A40040 */  swc1       $f4, 0x40($sp)
/* 12394 80011794 E7B0003C */  swc1       $f16, 0x3c($sp)
/* 12398 80011798 0C00202A */  jal        func_800080A8
/* 1239C 8001179C E7A60038 */   swc1      $f6, 0x38($sp)
/* 123A0 800117A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 123A4 800117A4 27BD0048 */  addiu      $sp, $sp, 0x48
/* 123A8 800117A8 00001025 */  or         $v0, $zero, $zero
/* 123AC 800117AC 03E00008 */  jr         $ra
/* 123B0 800117B0 00000000 */   nop

glabel func_800117B4
/* 123B4 800117B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 123B8 800117B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 123BC 800117BC 0C00458B */  jal        func_8001162C
/* 123C0 800117C0 3C054316 */   lui       $a1, 0x4316
/* 123C4 800117C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 123C8 800117C8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 123CC 800117CC 03E00008 */  jr         $ra
/* 123D0 800117D0 00000000 */   nop

glabel func_800117D4
/* 123D4 800117D4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 123D8 800117D8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 123DC 800117DC AFB10018 */  sw         $s1, 0x18($sp)
/* 123E0 800117E0 AFB00014 */  sw         $s0, 0x14($sp)
/* 123E4 800117E4 00808825 */  or         $s1, $a0, $zero
/* 123E8 800117E8 0C04637C */  jal        func_80118DF0
/* 123EC 800117EC 8C900054 */   lw        $s0, 0x54($a0)
/* 123F0 800117F0 02202025 */  or         $a0, $s1, $zero
/* 123F4 800117F4 0C0462E6 */  jal        func_80118B98
/* 123F8 800117F8 3C054396 */   lui       $a1, 0x4396
/* 123FC 800117FC C60401EC */  lwc1       $f4, 0x1ec($s0)
/* 12400 80011800 C6260044 */  lwc1       $f6, 0x44($s1)
/* 12404 80011804 44805000 */  mtc1       $zero, $f10
/* 12408 80011808 27A40024 */  addiu      $a0, $sp, 0x24
/* 1240C 8001180C 46062201 */  sub.s      $f8, $f4, $f6
/* 12410 80011810 E7AA0028 */  swc1       $f10, 0x28($sp)
/* 12414 80011814 E7A80024 */  swc1       $f8, 0x24($sp)
/* 12418 80011818 C632004C */  lwc1       $f18, 0x4c($s1)
/* 1241C 8001181C C61001F4 */  lwc1       $f16, 0x1f4($s0)
/* 12420 80011820 46128101 */  sub.s      $f4, $f16, $f18
/* 12424 80011824 0C00E974 */  jal        func_8003A5D0
/* 12428 80011828 E7A4002C */   swc1      $f4, 0x2c($sp)
/* 1242C 8001182C C6060204 */  lwc1       $f6, 0x204($s0)
/* 12430 80011830 C60801A4 */  lwc1       $f8, 0x1a4($s0)
/* 12434 80011834 46083280 */  add.s      $f10, $f6, $f8
/* 12438 80011838 460A003C */  c.lt.s     $f0, $f10
/* 1243C 8001183C 00000000 */  nop
/* 12440 80011840 45010004 */  bc1t       .L80011854
/* 12444 80011844 00000000 */   nop
/* 12448 80011848 960E01EA */  lhu        $t6, 0x1ea($s0)
/* 1244C 8001184C 11C00003 */  beqz       $t6, .L8001185C
/* 12450 80011850 00000000 */   nop
.L80011854:
/* 12454 80011854 10000003 */  b          .L80011864
/* 12458 80011858 24020001 */   addiu     $v0, $zero, 1
.L8001185C:
/* 1245C 8001185C 0C0045ED */  jal        func_800117B4
/* 12460 80011860 02202025 */   or        $a0, $s1, $zero
.L80011864:
/* 12464 80011864 8FBF001C */  lw         $ra, 0x1c($sp)
/* 12468 80011868 8FB00014 */  lw         $s0, 0x14($sp)
/* 1246C 8001186C 8FB10018 */  lw         $s1, 0x18($sp)
/* 12470 80011870 03E00008 */  jr         $ra
/* 12474 80011874 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_80011878
/* 12478 80011878 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1247C 8001187C AFBF0014 */  sw         $ra, 0x14($sp)
/* 12480 80011880 0C00458B */  jal        func_8001162C
/* 12484 80011884 3C054396 */   lui       $a1, 0x4396
/* 12488 80011888 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1248C 8001188C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 12490 80011890 03E00008 */  jr         $ra
/* 12494 80011894 00000000 */   nop

glabel func_80011898
/* 12498 80011898 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1249C 8001189C AFBF001C */  sw         $ra, 0x1c($sp)
/* 124A0 800118A0 AFB10018 */  sw         $s1, 0x18($sp)
/* 124A4 800118A4 AFB00014 */  sw         $s0, 0x14($sp)
/* 124A8 800118A8 00808825 */  or         $s1, $a0, $zero
/* 124AC 800118AC 0C04637C */  jal        func_80118DF0
/* 124B0 800118B0 8C900054 */   lw        $s0, 0x54($a0)
/* 124B4 800118B4 02202025 */  or         $a0, $s1, $zero
/* 124B8 800118B8 0C0462E6 */  jal        func_80118B98
/* 124BC 800118BC 3C054396 */   lui       $a1, 0x4396
/* 124C0 800118C0 C60401EC */  lwc1       $f4, 0x1ec($s0)
/* 124C4 800118C4 C6260044 */  lwc1       $f6, 0x44($s1)
/* 124C8 800118C8 44805000 */  mtc1       $zero, $f10
/* 124CC 800118CC 27A40024 */  addiu      $a0, $sp, 0x24
/* 124D0 800118D0 46062201 */  sub.s      $f8, $f4, $f6
/* 124D4 800118D4 E7AA0028 */  swc1       $f10, 0x28($sp)
/* 124D8 800118D8 E7A80024 */  swc1       $f8, 0x24($sp)
/* 124DC 800118DC C632004C */  lwc1       $f18, 0x4c($s1)
/* 124E0 800118E0 C61001F4 */  lwc1       $f16, 0x1f4($s0)
/* 124E4 800118E4 46128101 */  sub.s      $f4, $f16, $f18
/* 124E8 800118E8 0C00E974 */  jal        func_8003A5D0
/* 124EC 800118EC E7A4002C */   swc1      $f4, 0x2c($sp)
/* 124F0 800118F0 C6060204 */  lwc1       $f6, 0x204($s0)
/* 124F4 800118F4 4606003C */  c.lt.s     $f0, $f6
/* 124F8 800118F8 00000000 */  nop
/* 124FC 800118FC 45010004 */  bc1t       .L80011910
/* 12500 80011900 00000000 */   nop
/* 12504 80011904 960E01EA */  lhu        $t6, 0x1ea($s0)
/* 12508 80011908 11C00003 */  beqz       $t6, .L80011918
/* 1250C 8001190C 00000000 */   nop
.L80011910:
/* 12510 80011910 10000003 */  b          .L80011920
/* 12514 80011914 24020001 */   addiu     $v0, $zero, 1
.L80011918:
/* 12518 80011918 0C00461E */  jal        func_80011878
/* 1251C 8001191C 02202025 */   or        $a0, $s1, $zero
.L80011920:
/* 12520 80011920 8FBF001C */  lw         $ra, 0x1c($sp)
/* 12524 80011924 8FB00014 */  lw         $s0, 0x14($sp)
/* 12528 80011928 8FB10018 */  lw         $s1, 0x18($sp)
/* 1252C 8001192C 03E00008 */  jr         $ra
/* 12530 80011930 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_80011934
/* 12534 80011934 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12538 80011938 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1253C 8001193C 0C00458B */  jal        func_8001162C
/* 12540 80011940 3C054461 */   lui       $a1, 0x4461
/* 12544 80011944 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12548 80011948 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1254C 8001194C 03E00008 */  jr         $ra
/* 12550 80011950 00000000 */   nop

glabel func_80011954
/* 12554 80011954 C4800000 */  lwc1       $f0, ($a0)
/* 12558 80011958 00001025 */  or         $v0, $zero, $zero
/* 1255C 8001195C E4800004 */  swc1       $f0, 4($a0)
/* 12560 80011960 03E00008 */  jr         $ra
/* 12564 80011964 E4800008 */   swc1      $f0, 8($a0)

glabel func_80011968
/* 12568 80011968 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1256C 8001196C AFBF0014 */  sw         $ra, 0x14($sp)
/* 12570 80011970 8C820054 */  lw         $v0, 0x54($a0)
/* 12574 80011974 AFA40030 */  sw         $a0, 0x30($sp)
/* 12578 80011978 0C04637C */  jal        func_80118DF0
/* 1257C 8001197C AFA2002C */   sw        $v0, 0x2c($sp)
/* 12580 80011980 8FA2002C */  lw         $v0, 0x2c($sp)
/* 12584 80011984 8FA50030 */  lw         $a1, 0x30($sp)
/* 12588 80011988 44805000 */  mtc1       $zero, $f10
/* 1258C 8001198C C44401EC */  lwc1       $f4, 0x1ec($v0)
/* 12590 80011990 C4A60044 */  lwc1       $f6, 0x44($a1)
/* 12594 80011994 E7AA0024 */  swc1       $f10, 0x24($sp)
/* 12598 80011998 27A40020 */  addiu      $a0, $sp, 0x20
/* 1259C 8001199C 46062201 */  sub.s      $f8, $f4, $f6
/* 125A0 800119A0 E7A80020 */  swc1       $f8, 0x20($sp)
/* 125A4 800119A4 C45001F4 */  lwc1       $f16, 0x1f4($v0)
/* 125A8 800119A8 C4B2004C */  lwc1       $f18, 0x4c($a1)
/* 125AC 800119AC 46128101 */  sub.s      $f4, $f16, $f18
/* 125B0 800119B0 0C00E974 */  jal        func_8003A5D0
/* 125B4 800119B4 E7A40028 */   swc1      $f4, 0x28($sp)
/* 125B8 800119B8 8FA2002C */  lw         $v0, 0x2c($sp)
/* 125BC 800119BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 125C0 800119C0 C4460204 */  lwc1       $f6, 0x204($v0)
/* 125C4 800119C4 C44801A4 */  lwc1       $f8, 0x1a4($v0)
/* 125C8 800119C8 46083280 */  add.s      $f10, $f6, $f8
/* 125CC 800119CC 460A003C */  c.lt.s     $f0, $f10
/* 125D0 800119D0 00000000 */  nop
/* 125D4 800119D4 45020004 */  bc1fl      .L800119E8
/* 125D8 800119D8 944E01EA */   lhu       $t6, 0x1ea($v0)
/* 125DC 800119DC 10000007 */  b          .L800119FC
/* 125E0 800119E0 24020001 */   addiu     $v0, $zero, 1
/* 125E4 800119E4 944E01EA */  lhu        $t6, 0x1ea($v0)
.L800119E8:
/* 125E8 800119E8 00001025 */  or         $v0, $zero, $zero
/* 125EC 800119EC 11C00003 */  beqz       $t6, .L800119FC
/* 125F0 800119F0 00000000 */   nop
/* 125F4 800119F4 10000001 */  b          .L800119FC
/* 125F8 800119F8 24020001 */   addiu     $v0, $zero, 1
.L800119FC:
/* 125FC 800119FC 03E00008 */  jr         $ra
/* 12600 80011A00 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80011A04
/* 12604 80011A04 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 12608 80011A08 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1260C 80011A0C 8C8E0054 */  lw         $t6, 0x54($a0)
/* 12610 80011A10 AFA40038 */  sw         $a0, 0x38($sp)
/* 12614 80011A14 0C04637C */  jal        func_80118DF0
/* 12618 80011A18 AFAE0034 */   sw        $t6, 0x34($sp)
/* 1261C 80011A1C 8FA40038 */  lw         $a0, 0x38($sp)
/* 12620 80011A20 0C0462E6 */  jal        func_80118B98
/* 12624 80011A24 3C054396 */   lui       $a1, 0x4396
/* 12628 80011A28 8FA20034 */  lw         $v0, 0x34($sp)
/* 1262C 80011A2C 8FA60038 */  lw         $a2, 0x38($sp)
/* 12630 80011A30 3C01800B */  lui        $at, 0x800b
/* 12634 80011A34 C44401EC */  lwc1       $f4, 0x1ec($v0)
/* 12638 80011A38 C4C60044 */  lwc1       $f6, 0x44($a2)
/* 1263C 80011A3C 44800000 */  mtc1       $zero, $f0
/* 12640 80011A40 27A40028 */  addiu      $a0, $sp, 0x28
/* 12644 80011A44 46062201 */  sub.s      $f8, $f4, $f6
/* 12648 80011A48 C424E4E4 */  lwc1       $f4, -0x1b1c($at)
/* 1264C 80011A4C 3C0143FA */  lui        $at, 0x43fa
/* 12650 80011A50 44813000 */  mtc1       $at, $f6
/* 12654 80011A54 E7A8001C */  swc1       $f8, 0x1c($sp)
/* 12658 80011A58 E7A00020 */  swc1       $f0, 0x20($sp)
/* 1265C 80011A5C 46062202 */  mul.s      $f8, $f4, $f6
/* 12660 80011A60 C44A01F4 */  lwc1       $f10, 0x1f4($v0)
/* 12664 80011A64 C4D0004C */  lwc1       $f16, 0x4c($a2)
/* 12668 80011A68 E7A0002C */  swc1       $f0, 0x2c($sp)
/* 1266C 80011A6C E7A00028 */  swc1       $f0, 0x28($sp)
/* 12670 80011A70 46105481 */  sub.s      $f18, $f10, $f16
/* 12674 80011A74 E7A80030 */  swc1       $f8, 0x30($sp)
/* 12678 80011A78 0C00202A */  jal        func_800080A8
/* 1267C 80011A7C E7B20024 */   swc1      $f18, 0x24($sp)
/* 12680 80011A80 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12684 80011A84 27BD0038 */  addiu      $sp, $sp, 0x38
/* 12688 80011A88 00001025 */  or         $v0, $zero, $zero
/* 1268C 80011A8C 03E00008 */  jr         $ra
/* 12690 80011A90 00000000 */   nop

glabel func_80011A94
/* 12694 80011A94 27BDFF30 */  addiu      $sp, $sp, -0xd0
/* 12698 80011A98 AFBF005C */  sw         $ra, 0x5c($sp)
/* 1269C 80011A9C AFB00058 */  sw         $s0, 0x58($sp)
/* 126A0 80011AA0 F7B40050 */  sdc1       $f20, 0x50($sp)
/* 126A4 80011AA4 8C8E0054 */  lw         $t6, 0x54($a0)
/* 126A8 80011AA8 00808025 */  or         $s0, $a0, $zero
/* 126AC 80011AAC 3C048007 */  lui        $a0, %hi(D_800760A8)
/* 126B0 80011AB0 8C8460A8 */  lw         $a0, %lo(D_800760A8)($a0)
/* 126B4 80011AB4 24050035 */  addiu      $a1, $zero, 0x35
/* 126B8 80011AB8 0C0058FF */  jal        func_800163FC
/* 126BC 80011ABC AFAE00CC */   sw        $t6, 0xcc($sp)
/* 126C0 80011AC0 C4440044 */  lwc1       $f4, 0x44($v0)
/* 126C4 80011AC4 00401825 */  or         $v1, $v0, $zero
/* 126C8 80011AC8 E6040018 */  swc1       $f4, 0x18($s0)
/* 126CC 80011ACC C4460048 */  lwc1       $f6, 0x48($v0)
/* 126D0 80011AD0 E606001C */  swc1       $f6, 0x1c($s0)
/* 126D4 80011AD4 C448004C */  lwc1       $f8, 0x4c($v0)
/* 126D8 80011AD8 E6080020 */  swc1       $f8, 0x20($s0)
/* 126DC 80011ADC 944F0036 */  lhu        $t7, 0x36($v0)
/* 126E0 80011AE0 00001025 */  or         $v0, $zero, $zero
/* 126E4 80011AE4 31F88000 */  andi       $t8, $t7, 0x8000
/* 126E8 80011AE8 13000003 */  beqz       $t8, .L80011AF8
/* 126EC 80011AEC 00000000 */   nop
/* 126F0 80011AF0 10000001 */  b          .L80011AF8
/* 126F4 80011AF4 24020001 */   addiu     $v0, $zero, 1
.L80011AF8:
/* 126F8 80011AF8 38590001 */  xori       $t9, $v0, 1
/* 126FC 80011AFC 00194880 */  sll        $t1, $t9, 2
/* 12700 80011B00 00695021 */  addu       $t2, $v1, $t1
/* 12704 80011B04 8D4B003C */  lw         $t3, 0x3c($t2)
/* 12708 80011B08 03A07025 */  or         $t6, $sp, $zero
/* 1270C 80011B0C 256D003C */  addiu      $t5, $t3, 0x3c
.L80011B10:
/* 12710 80011B10 8D610000 */  lw         $at, ($t3)
/* 12714 80011B14 256B000C */  addiu      $t3, $t3, 0xc
/* 12718 80011B18 25CE000C */  addiu      $t6, $t6, 0xc
/* 1271C 80011B1C ADC1FFF4 */  sw         $at, -0xc($t6)
/* 12720 80011B20 8D61FFF8 */  lw         $at, -8($t3)
/* 12724 80011B24 ADC1FFF8 */  sw         $at, -8($t6)
/* 12728 80011B28 8D61FFFC */  lw         $at, -4($t3)
/* 1272C 80011B2C 156DFFF8 */  bne        $t3, $t5, .L80011B10
/* 12730 80011B30 ADC1FFFC */   sw        $at, -4($t6)
/* 12734 80011B34 8D610000 */  lw         $at, ($t3)
/* 12738 80011B38 27AF0094 */  addiu      $t7, $sp, 0x94
/* 1273C 80011B3C ADC10000 */  sw         $at, ($t6)
/* 12740 80011B40 8FA7000C */  lw         $a3, 0xc($sp)
/* 12744 80011B44 8FA60008 */  lw         $a2, 8($sp)
/* 12748 80011B48 8FA50004 */  lw         $a1, 4($sp)
/* 1274C 80011B4C 8FA40000 */  lw         $a0, ($sp)
/* 12750 80011B50 0C00E749 */  jal        func_80039D24
/* 12754 80011B54 AFAF0040 */   sw        $t7, 0x40($sp)
/* 12758 80011B58 4480A000 */  mtc1       $zero, $f20
/* 1275C 80011B5C 3C01C2C8 */  lui        $at, 0xc2c8
/* 12760 80011B60 44815000 */  mtc1       $at, $f10
/* 12764 80011B64 27A50088 */  addiu      $a1, $sp, 0x88
/* 12768 80011B68 00A03025 */  or         $a2, $a1, $zero
/* 1276C 80011B6C 27A40094 */  addiu      $a0, $sp, 0x94
/* 12770 80011B70 E7B40088 */  swc1       $f20, 0x88($sp)
/* 12774 80011B74 E7B4008C */  swc1       $f20, 0x8c($sp)
/* 12778 80011B78 0C00E578 */  jal        func_800395E0
/* 1277C 80011B7C E7AA0090 */   swc1      $f10, 0x90($sp)
/* 12780 80011B80 27A40088 */  addiu      $a0, $sp, 0x88
/* 12784 80011B84 27A50084 */  addiu      $a1, $sp, 0x84
/* 12788 80011B88 0C00EFE8 */  jal        func_8003BFA0
/* 1278C 80011B8C 27A60080 */   addiu     $a2, $sp, 0x80
/* 12790 80011B90 8FB800CC */  lw         $t8, 0xcc($sp)
/* 12794 80011B94 C7B00084 */  lwc1       $f16, 0x84($sp)
/* 12798 80011B98 02002025 */  or         $a0, $s0, $zero
/* 1279C 80011B9C C712000C */  lwc1       $f18, 0xc($t8)
/* 127A0 80011BA0 00003025 */  or         $a2, $zero, $zero
/* 127A4 80011BA4 46128101 */  sub.s      $f4, $f16, $f18
/* 127A8 80011BA8 44052000 */  mfc1       $a1, $f4
/* 127AC 80011BAC 0C0057E5 */  jal        func_80015F94
/* 127B0 80011BB0 00000000 */   nop
/* 127B4 80011BB4 8FB900CC */  lw         $t9, 0xcc($sp)
/* 127B8 80011BB8 C7A60080 */  lwc1       $f6, 0x80($sp)
/* 127BC 80011BBC 3C0142B4 */  lui        $at, 0x42b4
/* 127C0 80011BC0 C7280010 */  lwc1       $f8, 0x10($t9)
/* 127C4 80011BC4 44818000 */  mtc1       $at, $f16
/* 127C8 80011BC8 02002025 */  or         $a0, $s0, $zero
/* 127CC 80011BCC 46083281 */  sub.s      $f10, $f6, $f8
/* 127D0 80011BD0 24060001 */  addiu      $a2, $zero, 1
/* 127D4 80011BD4 46105480 */  add.s      $f18, $f10, $f16
/* 127D8 80011BD8 44059000 */  mfc1       $a1, $f18
/* 127DC 80011BDC 0C0057E5 */  jal        func_80015F94
/* 127E0 80011BE0 00000000 */   nop
/* 127E4 80011BE4 0C0462CC */  jal        func_80118B30
/* 127E8 80011BE8 02002025 */   or        $a0, $s0, $zero
/* 127EC 80011BEC 10400028 */  beqz       $v0, .L80011C90
/* 127F0 80011BF0 02002025 */   or        $a0, $s0, $zero
/* 127F4 80011BF4 24050073 */  addiu      $a1, $zero, 0x73
/* 127F8 80011BF8 0C0058FF */  jal        func_800163FC
/* 127FC 80011BFC AFA200C4 */   sw        $v0, 0xc4($sp)
/* 12800 80011C00 8E09002C */  lw         $t1, 0x2c($s0)
/* 12804 80011C04 8FA700C4 */  lw         $a3, 0xc4($sp)
/* 12808 80011C08 00404025 */  or         $t0, $v0, $zero
/* 1280C 80011C0C 8D25002C */  lw         $a1, 0x2c($t1)
/* 12810 80011C10 50A2000E */  beql       $a1, $v0, .L80011C4C
/* 12814 80011C14 C4F20048 */   lwc1      $f18, 0x48($a3)
.L80011C18:
/* 12818 80011C18 8CA3002C */  lw         $v1, 0x2c($a1)
/* 1281C 80011C1C 8CA40054 */  lw         $a0, 0x54($a1)
/* 12820 80011C20 8C660054 */  lw         $a2, 0x54($v1)
/* 12824 80011C24 E4940004 */  swc1       $f20, 4($a0)
/* 12828 80011C28 C4640014 */  lwc1       $f4, 0x14($v1)
/* 1282C 80011C2C C4860000 */  lwc1       $f6, ($a0)
/* 12830 80011C30 C4CA0000 */  lwc1       $f10, ($a2)
/* 12834 80011C34 46062200 */  add.s      $f8, $f4, $f6
/* 12838 80011C38 460A4401 */  sub.s      $f16, $f8, $f10
/* 1283C 80011C3C E4B00014 */  swc1       $f16, 0x14($a1)
/* 12840 80011C40 1468FFF5 */  bne        $v1, $t0, .L80011C18
/* 12844 80011C44 00602825 */   or        $a1, $v1, $zero
/* 12848 80011C48 C4F20048 */  lwc1       $f18, 0x48($a3)
.L80011C4C:
/* 1284C 80011C4C C4440048 */  lwc1       $f4, 0x48($v0)
/* 12850 80011C50 8FAA00CC */  lw         $t2, 0xcc($sp)
/* 12854 80011C54 3C07C2B4 */  lui        $a3, 0xc2b4
/* 12858 80011C58 46049001 */  sub.s      $f0, $f18, $f4
/* 1285C 80011C5C C54C01A4 */  lwc1       $f12, 0x1a4($t2)
/* 12860 80011C60 3C0641A0 */  lui        $a2, 0x41a0
/* 12864 80011C64 46000085 */  abs.s      $f2, $f0
/* 12868 80011C68 4602603C */  c.lt.s     $f12, $f2
/* 1286C 80011C6C 00000000 */  nop
/* 12870 80011C70 45020008 */  bc1fl      .L80011C94
/* 12874 80011C74 8FBF005C */   lw        $ra, 0x5c($sp)
/* 12878 80011C78 44807000 */  mtc1       $zero, $f14
/* 1287C 80011C7C E7A20010 */  swc1       $f2, 0x10($sp)
/* 12880 80011C80 0C00EA85 */  jal        func_8003AA14
/* 12884 80011C84 AFA8007C */   sw        $t0, 0x7c($sp)
/* 12888 80011C88 8FA8007C */  lw         $t0, 0x7c($sp)
/* 1288C 80011C8C E5000014 */  swc1       $f0, 0x14($t0)
.L80011C90:
/* 12890 80011C90 8FBF005C */  lw         $ra, 0x5c($sp)
.L80011C94:
/* 12894 80011C94 D7B40050 */  ldc1       $f20, 0x50($sp)
/* 12898 80011C98 8FB00058 */  lw         $s0, 0x58($sp)
/* 1289C 80011C9C 27BD00D0 */  addiu      $sp, $sp, 0xd0
/* 128A0 80011CA0 03E00008 */  jr         $ra
/* 128A4 80011CA4 00001025 */   or        $v0, $zero, $zero
/* 128A8 80011CA8 00000000 */  nop
/* 128AC 80011CAC 00000000 */  nop
