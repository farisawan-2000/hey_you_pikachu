.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001E830
/* 1F430 8001E830 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 1F434 8001E834 AFBF003C */  sw         $ra, 0x3c($sp)
/* 1F438 8001E838 AFB60038 */  sw         $s6, 0x38($sp)
/* 1F43C 8001E83C AFB50034 */  sw         $s5, 0x34($sp)
/* 1F440 8001E840 AFB40030 */  sw         $s4, 0x30($sp)
/* 1F444 8001E844 AFB3002C */  sw         $s3, 0x2c($sp)
/* 1F448 8001E848 AFB20028 */  sw         $s2, 0x28($sp)
/* 1F44C 8001E84C AFB10024 */  sw         $s1, 0x24($sp)
/* 1F450 8001E850 AFB00020 */  sw         $s0, 0x20($sp)
/* 1F454 8001E854 44800000 */  mtc1       $zero, $f0
/* 1F458 8001E858 C4840000 */  lwc1       $f4, ($a0)
/* 1F45C 8001E85C 0080B025 */  or         $s6, $a0, $zero
/* 1F460 8001E860 46040032 */  c.eq.s     $f0, $f4
/* 1F464 8001E864 00000000 */  nop
/* 1F468 8001E868 4501000C */  bc1t       .L8001E89C
/* 1F46C 8001E86C 00000000 */   nop
/* 1F470 8001E870 C4860004 */  lwc1       $f6, 4($a0)
/* 1F474 8001E874 46060032 */  c.eq.s     $f0, $f6
/* 1F478 8001E878 00000000 */  nop
/* 1F47C 8001E87C 45010007 */  bc1t       .L8001E89C
/* 1F480 8001E880 00000000 */   nop
/* 1F484 8001E884 C4880008 */  lwc1       $f8, 8($a0)
/* 1F488 8001E888 3C014000 */  lui        $at, 0x4000
/* 1F48C 8001E88C 46080032 */  c.eq.s     $f0, $f8
/* 1F490 8001E890 00000000 */  nop
/* 1F494 8001E894 45020004 */  bc1fl      .L8001E8A8
/* 1F498 8001E898 C6CA0024 */   lwc1      $f10, 0x24($s6)
.L8001E89C:
/* 1F49C 8001E89C 1000006C */  b          .L8001EA50
/* 1F4A0 8001E8A0 00001025 */   or        $v0, $zero, $zero
/* 1F4A4 8001E8A4 C6CA0024 */  lwc1       $f10, 0x24($s6)
.L8001E8A8:
/* 1F4A8 8001E8A8 44818000 */  mtc1       $at, $f16
/* 1F4AC 8001E8AC 27B50050 */  addiu      $s5, $sp, 0x50
/* 1F4B0 8001E8B0 02A03025 */  or         $a2, $s5, $zero
/* 1F4B4 8001E8B4 46105302 */  mul.s      $f12, $f10, $f16
/* 1F4B8 8001E8B8 0C0433FE */  jal        func_8010CFF8
/* 1F4BC 8001E8BC 26C50044 */   addiu     $a1, $s6, 0x44
/* 1F4C0 8001E8C0 10400003 */  beqz       $v0, .L8001E8D0
/* 1F4C4 8001E8C4 3C0E800F */   lui       $t6, %hi(D_800EF724)
/* 1F4C8 8001E8C8 10000002 */  b          .L8001E8D4
/* 1F4CC 8001E8CC 24140004 */   addiu     $s4, $zero, 4
.L8001E8D0:
/* 1F4D0 8001E8D0 0000A025 */  or         $s4, $zero, $zero
.L8001E8D4:
/* 1F4D4 8001E8D4 8DCEF724 */  lw         $t6, %lo(D_800EF724)($t6)
/* 1F4D8 8001E8D8 8ECF0038 */  lw         $t7, 0x38($s6)
/* 1F4DC 8001E8DC 36980003 */  ori        $t8, $s4, 3
/* 1F4E0 8001E8E0 15CF0003 */  bne        $t6, $t7, .L8001E8F0
/* 1F4E4 8001E8E4 00000000 */   nop
/* 1F4E8 8001E8E8 10000030 */  b          .L8001E9AC
/* 1F4EC 8001E8EC 0300A025 */   or        $s4, $t8, $zero
.L8001E8F0:
/* 1F4F0 8001E8F0 16800003 */  bnez       $s4, .L8001E900
/* 1F4F4 8001E8F4 00008025 */   or        $s0, $zero, $zero
/* 1F4F8 8001E8F8 10000055 */  b          .L8001EA50
/* 1F4FC 8001E8FC 00001025 */   or        $v0, $zero, $zero
.L8001E900:
/* 1F500 8001E900 3C118009 */  lui        $s1, %hi(D_80088C88)
/* 1F504 8001E904 3C12800A */  lui        $s2, %hi(D_800A4780)
/* 1F508 8001E908 26524780 */  addiu      $s2, $s2, %lo(D_800A4780)
/* 1F50C 8001E90C 26318C88 */  addiu      $s1, $s1, %lo(D_80088C88)
/* 1F510 8001E910 24130002 */  addiu      $s3, $zero, 2
.L8001E914:
/* 1F514 8001E914 8E210000 */  lw         $at, ($s1)
/* 1F518 8001E918 AFA10000 */  sw         $at, ($sp)
/* 1F51C 8001E91C 8E280004 */  lw         $t0, 4($s1)
/* 1F520 8001E920 8FA40000 */  lw         $a0, ($sp)
/* 1F524 8001E924 AFA80004 */  sw         $t0, 4($sp)
/* 1F528 8001E928 8E210008 */  lw         $at, 8($s1)
/* 1F52C 8001E92C 8FA50004 */  lw         $a1, 4($sp)
/* 1F530 8001E930 AFA10008 */  sw         $at, 8($sp)
/* 1F534 8001E934 8E27000C */  lw         $a3, 0xc($s1)
/* 1F538 8001E938 8FA60008 */  lw         $a2, 8($sp)
/* 1F53C 8001E93C AFA7000C */  sw         $a3, 0xc($sp)
/* 1F540 8001E940 8E210010 */  lw         $at, 0x10($s1)
/* 1F544 8001E944 AFB50014 */  sw         $s5, 0x14($sp)
/* 1F548 8001E948 0C000932 */  jal        func_800024C8
/* 1F54C 8001E94C AFA10010 */   sw        $at, 0x10($sp)
/* 1F550 8001E950 10400004 */  beqz       $v0, .L8001E964
/* 1F554 8001E954 00104880 */   sll       $t1, $s0, 2
/* 1F558 8001E958 02495021 */  addu       $t2, $s2, $t1
/* 1F55C 8001E95C 8D4B0000 */  lw         $t3, ($t2)
/* 1F560 8001E960 028BA025 */  or         $s4, $s4, $t3
.L8001E964:
/* 1F564 8001E964 26100001 */  addiu      $s0, $s0, 1
/* 1F568 8001E968 1613FFEA */  bne        $s0, $s3, .L8001E914
/* 1F56C 8001E96C 26310014 */   addiu     $s1, $s1, 0x14
/* 1F570 8001E970 328C0002 */  andi       $t4, $s4, 2
/* 1F574 8001E974 1180000D */  beqz       $t4, .L8001E9AC
/* 1F578 8001E978 3C014140 */   lui       $at, 0x4140
/* 1F57C 8001E97C 44819000 */  mtc1       $at, $f18
/* 1F580 8001E980 3C01800F */  lui        $at, %hi(D_800EF6A4)
/* 1F584 8001E984 C426F6A4 */  lwc1       $f6, %lo(D_800EF6A4)($at)
/* 1F588 8001E988 C6C40048 */  lwc1       $f4, 0x48($s6)
/* 1F58C 8001E98C 2401FFFD */  addiu      $at, $zero, -3
/* 1F590 8001E990 02816824 */  and        $t5, $s4, $at
/* 1F594 8001E994 46062201 */  sub.s      $f8, $f4, $f6
/* 1F598 8001E998 4608903C */  c.lt.s     $f18, $f8
/* 1F59C 8001E99C 00000000 */  nop
/* 1F5A0 8001E9A0 45000002 */  bc1f       .L8001E9AC
/* 1F5A4 8001E9A4 00000000 */   nop
/* 1F5A8 8001E9A8 35B40001 */  ori        $s4, $t5, 1
.L8001E9AC:
/* 1F5AC 8001E9AC 3C0F8007 */  lui        $t7, %hi(D_800760A8)
/* 1F5B0 8001E9B0 8DEF60A8 */  lw         $t7, %lo(D_800760A8)($t7)
/* 1F5B4 8001E9B4 32980003 */  andi       $t8, $s4, 3
/* 1F5B8 8001E9B8 52CF0025 */  beql       $s6, $t7, .L8001EA50
/* 1F5BC 8001E9BC 02801025 */   or        $v0, $s4, $zero
/* 1F5C0 8001E9C0 13000022 */  beqz       $t8, .L8001EA4C
/* 1F5C4 8001E9C4 3C19800F */   lui       $t9, %hi(D_800EF724)
/* 1F5C8 8001E9C8 8F39F724 */  lw         $t9, %lo(D_800EF724)($t9)
/* 1F5CC 8001E9CC 8EC80038 */  lw         $t0, 0x38($s6)
/* 1F5D0 8001E9D0 3C02800B */  lui        $v0, %hi(D_800B6C50)
/* 1F5D4 8001E9D4 24426C50 */  addiu      $v0, $v0, %lo(D_800B6C50)
/* 1F5D8 8001E9D8 17280005 */  bne        $t9, $t0, .L8001E9F0
/* 1F5DC 8001E9DC C7A00050 */   lwc1      $f0, 0x50($sp)
/* 1F5E0 8001E9E0 3C01CF00 */  lui        $at, 0xcf00
/* 1F5E4 8001E9E4 44811000 */  mtc1       $at, $f2
/* 1F5E8 8001E9E8 1000000E */  b          .L8001EA24
/* 1F5EC 8001E9EC C44A0000 */   lwc1      $f10, ($v0)
.L8001E9F0:
/* 1F5F0 8001E9F0 3C014248 */  lui        $at, 0x4248
/* 1F5F4 8001E9F4 44815000 */  mtc1       $at, $f10
/* 1F5F8 8001E9F8 46000305 */  abs.s      $f12, $f0
/* 1F5FC 8001E9FC C7A00054 */  lwc1       $f0, 0x54($sp)
/* 1F600 8001EA00 460A6402 */  mul.s      $f16, $f12, $f10
/* 1F604 8001EA04 3C014220 */  lui        $at, 0x4220
/* 1F608 8001EA08 44819000 */  mtc1       $at, $f18
/* 1F60C 8001EA0C 46000005 */  abs.s      $f0, $f0
/* 1F610 8001EA10 C7A40058 */  lwc1       $f4, 0x58($sp)
/* 1F614 8001EA14 46120202 */  mul.s      $f8, $f0, $f18
/* 1F618 8001EA18 46048181 */  sub.s      $f6, $f16, $f4
/* 1F61C 8001EA1C 46064080 */  add.s      $f2, $f8, $f6
/* 1F620 8001EA20 C44A0000 */  lwc1       $f10, ($v0)
.L8001EA24:
/* 1F624 8001EA24 3C01800B */  lui        $at, %hi(D_800B6C58)
/* 1F628 8001EA28 460A103C */  c.lt.s     $f2, $f10
/* 1F62C 8001EA2C 00000000 */  nop
/* 1F630 8001EA30 45020007 */  bc1fl      .L8001EA50
/* 1F634 8001EA34 02801025 */   or        $v0, $s4, $zero
/* 1F638 8001EA38 AC346C58 */  sw         $s4, %lo(D_800B6C58)($at)
/* 1F63C 8001EA3C 8EC90038 */  lw         $t1, 0x38($s6)
/* 1F640 8001EA40 3C01800B */  lui        $at, %hi(D_800B6C54)
/* 1F644 8001EA44 AC296C54 */  sw         $t1, %lo(D_800B6C54)($at)
/* 1F648 8001EA48 E4420000 */  swc1       $f2, ($v0)
.L8001EA4C:
/* 1F64C 8001EA4C 02801025 */  or         $v0, $s4, $zero
.L8001EA50:
/* 1F650 8001EA50 8FBF003C */  lw         $ra, 0x3c($sp)
/* 1F654 8001EA54 8FB00020 */  lw         $s0, 0x20($sp)
/* 1F658 8001EA58 8FB10024 */  lw         $s1, 0x24($sp)
/* 1F65C 8001EA5C 8FB20028 */  lw         $s2, 0x28($sp)
/* 1F660 8001EA60 8FB3002C */  lw         $s3, 0x2c($sp)
/* 1F664 8001EA64 8FB40030 */  lw         $s4, 0x30($sp)
/* 1F668 8001EA68 8FB50034 */  lw         $s5, 0x34($sp)
/* 1F66C 8001EA6C 8FB60038 */  lw         $s6, 0x38($sp)
/* 1F670 8001EA70 03E00008 */  jr         $ra
/* 1F674 8001EA74 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_8001EA78
/* 1F678 8001EA78 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1F67C 8001EA7C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1F680 8001EA80 3C048009 */  lui        $a0, %hi(D_80088C50)
/* 1F684 8001EA84 0C002114 */  jal        func_80008450
/* 1F688 8001EA88 24848C50 */   addiu     $a0, $a0, %lo(D_80088C50)
/* 1F68C 8001EA8C AFA2001C */  sw         $v0, 0x1c($sp)
/* 1F690 8001EA90 0C00219D */  jal        func_80008674
/* 1F694 8001EA94 00402025 */   or        $a0, $v0, $zero
/* 1F698 8001EA98 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1F69C 8001EA9C 8FA2001C */  lw         $v0, 0x1c($sp)
/* 1F6A0 8001EAA0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1F6A4 8001EAA4 03E00008 */  jr         $ra
/* 1F6A8 8001EAA8 00000000 */   nop

glabel func_8001EAAC
/* 1F6AC 8001EAAC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1F6B0 8001EAB0 AFA40018 */  sw         $a0, 0x18($sp)
/* 1F6B4 8001EAB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1F6B8 8001EAB8 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 1F6BC 8001EABC 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 1F6C0 8001EAC0 24050050 */  addiu      $a1, $zero, 0x50
/* 1F6C4 8001EAC4 0C00E03D */  jal        func_800380F4
/* 1F6C8 8001EAC8 24060142 */   addiu     $a2, $zero, 0x142
/* 1F6CC 8001EACC AC400000 */  sw         $zero, ($v0)
/* 1F6D0 8001EAD0 3C01800B */  lui        $at, %hi(D_800B6C5C)
/* 1F6D4 8001EAD4 AC206C5C */  sw         $zero, %lo(D_800B6C5C)($at)
/* 1F6D8 8001EAD8 AC400004 */  sw         $zero, 4($v0)
/* 1F6DC 8001EADC 8FAE0018 */  lw         $t6, 0x18($sp)
/* 1F6E0 8001EAE0 ADC20054 */  sw         $v0, 0x54($t6)
/* 1F6E4 8001EAE4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1F6E8 8001EAE8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1F6EC 8001EAEC 03E00008 */  jr         $ra
/* 1F6F0 8001EAF0 00000000 */   nop

glabel func_8001EAF4
/* 1F6F4 8001EAF4 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 1F6F8 8001EAF8 AFB2001C */  sw         $s2, 0x1c($sp)
/* 1F6FC 8001EAFC AFBF0024 */  sw         $ra, 0x24($sp)
/* 1F700 8001EB00 AFB30020 */  sw         $s3, 0x20($sp)
/* 1F704 8001EB04 AFB10018 */  sw         $s1, 0x18($sp)
/* 1F708 8001EB08 AFB00014 */  sw         $s0, 0x14($sp)
/* 1F70C 8001EB0C 00809025 */  or         $s2, $a0, $zero
/* 1F710 8001EB10 8C900054 */  lw         $s0, 0x54($a0)
/* 1F714 8001EB14 3C04800B */  lui        $a0, %hi(D_800B6C54)
/* 1F718 8001EB18 0C0462B3 */  jal        func_80118ACC
/* 1F71C 8001EB1C 8C846C54 */   lw        $a0, %lo(D_800B6C54)($a0)
/* 1F720 8001EB20 3C04800F */  lui        $a0, %hi(D_800EF6A0)
/* 1F724 8001EB24 3C06800B */  lui        $a2, %hi(D_800B6C58)
/* 1F728 8001EB28 00409825 */  or         $s3, $v0, $zero
/* 1F72C 8001EB2C 8CC66C58 */  lw         $a2, %lo(D_800B6C58)($a2)
/* 1F730 8001EB30 2484F6A0 */  addiu      $a0, $a0, %lo(D_800EF6A0)
/* 1F734 8001EB34 0C0445E1 */  jal        func_80111784
/* 1F738 8001EB38 00402825 */   or        $a1, $v0, $zero
/* 1F73C 8001EB3C 1660000F */  bnez       $s3, .L8001EB7C
/* 1F740 8001EB40 AFA2005C */   sw        $v0, 0x5c($sp)
/* 1F744 8001EB44 8E0E0000 */  lw         $t6, ($s0)
/* 1F748 8001EB48 51C0000D */  beql       $t6, $zero, .L8001EB80
/* 1F74C 8001EB4C 8FB9005C */   lw        $t9, 0x5c($sp)
/* 1F750 8001EB50 0C0462B3 */  jal        func_80118ACC
/* 1F754 8001EB54 8E040004 */   lw        $a0, 4($s0)
/* 1F758 8001EB58 10400007 */  beqz       $v0, .L8001EB78
/* 1F75C 8001EB5C 00409825 */   or        $s3, $v0, $zero
/* 1F760 8001EB60 240F0001 */  addiu      $t7, $zero, 1
/* 1F764 8001EB64 AFAF005C */  sw         $t7, 0x5c($sp)
/* 1F768 8001EB68 8E180004 */  lw         $t8, 4($s0)
/* 1F76C 8001EB6C 3C01800B */  lui        $at, %hi(D_800B6C54)
/* 1F770 8001EB70 10000002 */  b          .L8001EB7C
/* 1F774 8001EB74 AC386C54 */   sw        $t8, %lo(D_800B6C54)($at)
.L8001EB78:
/* 1F778 8001EB78 AFA0005C */  sw         $zero, 0x5c($sp)
.L8001EB7C:
/* 1F77C 8001EB7C 8FB9005C */  lw         $t9, 0x5c($sp)
.L8001EB80:
/* 1F780 8001EB80 132000DE */  beqz       $t9, .L8001EEFC
/* 1F784 8001EB84 00000000 */   nop
/* 1F788 8001EB88 126000DC */  beqz       $s3, .L8001EEFC
/* 1F78C 8001EB8C 00000000 */   nop
/* 1F790 8001EB90 8E080000 */  lw         $t0, ($s0)
/* 1F794 8001EB94 8FAB005C */  lw         $t3, 0x5c($sp)
/* 1F798 8001EB98 3C09800B */  lui        $t1, %hi(D_800B6C54)
/* 1F79C 8001EB9C 17280004 */  bne        $t9, $t0, .L8001EBB0
/* 1F7A0 8001EBA0 000B60C0 */   sll       $t4, $t3, 3
/* 1F7A4 8001EBA4 8D296C54 */  lw         $t1, %lo(D_800B6C54)($t1)
/* 1F7A8 8001EBA8 8E0A0004 */  lw         $t2, 4($s0)
/* 1F7AC 8001EBAC 112A0039 */  beq        $t1, $t2, .L8001EC94
.L8001EBB0:
/* 1F7B0 8001EBB0 018B6021 */   addu      $t4, $t4, $t3
/* 1F7B4 8001EBB4 3C0D8009 */  lui        $t5, %hi(D_80088CB0)
/* 1F7B8 8001EBB8 25AD8CB0 */  addiu      $t5, $t5, %lo(D_80088CB0)
/* 1F7BC 8001EBBC 000C6080 */  sll        $t4, $t4, 2
/* 1F7C0 8001EBC0 018D8821 */  addu       $s1, $t4, $t5
/* 1F7C4 8001EBC4 8E2E0000 */  lw         $t6, ($s1)
/* 1F7C8 8001EBC8 3C058007 */  lui        $a1, %hi(D_8006B090)
/* 1F7CC 8001EBCC 26040008 */  addiu      $a0, $s0, 8
/* 1F7D0 8001EBD0 000E7880 */  sll        $t7, $t6, 2
/* 1F7D4 8001EBD4 00AF2821 */  addu       $a1, $a1, $t7
/* 1F7D8 8001EBD8 0C002973 */  jal        func_8000A5CC
/* 1F7DC 8001EBDC 8CA5B090 */   lw        $a1, %lo(D_8006B090)($a1)
/* 1F7E0 8001EBE0 8E380004 */  lw         $t8, 4($s1)
/* 1F7E4 8001EBE4 3C058007 */  lui        $a1, %hi(D_8006B4B0)
/* 1F7E8 8001EBE8 26040014 */  addiu      $a0, $s0, 0x14
/* 1F7EC 8001EBEC 0018C880 */  sll        $t9, $t8, 2
/* 1F7F0 8001EBF0 00B92821 */  addu       $a1, $a1, $t9
/* 1F7F4 8001EBF4 0C002973 */  jal        func_8000A5CC
/* 1F7F8 8001EBF8 8CA5B4B0 */   lw        $a1, %lo(D_8006B4B0)($a1)
/* 1F7FC 8001EBFC 8E280008 */  lw         $t0, 8($s1)
/* 1F800 8001EC00 3C058007 */  lui        $a1, %hi(D_8006B4EC)
/* 1F804 8001EC04 26040020 */  addiu      $a0, $s0, 0x20
/* 1F808 8001EC08 00084880 */  sll        $t1, $t0, 2
/* 1F80C 8001EC0C 00A92821 */  addu       $a1, $a1, $t1
/* 1F810 8001EC10 0C002973 */  jal        func_8000A5CC
/* 1F814 8001EC14 8CA5B4EC */   lw        $a1, %lo(D_8006B4EC)($a1)
/* 1F818 8001EC18 8E2A000C */  lw         $t2, 0xc($s1)
/* 1F81C 8001EC1C 3C058007 */  lui        $a1, %hi(D_8006B4EC)
/* 1F820 8001EC20 2604002C */  addiu      $a0, $s0, 0x2c
/* 1F824 8001EC24 000A5880 */  sll        $t3, $t2, 2
/* 1F828 8001EC28 00AB2821 */  addu       $a1, $a1, $t3
/* 1F82C 8001EC2C 0C002973 */  jal        func_8000A5CC
/* 1F830 8001EC30 8CA5B4EC */   lw        $a1, %lo(D_8006B4EC)($a1)
/* 1F834 8001EC34 8E2C0010 */  lw         $t4, 0x10($s1)
/* 1F838 8001EC38 3C058007 */  lui        $a1, %hi(D_8006B4EC)
/* 1F83C 8001EC3C 26040038 */  addiu      $a0, $s0, 0x38
/* 1F840 8001EC40 000C6880 */  sll        $t5, $t4, 2
/* 1F844 8001EC44 00AD2821 */  addu       $a1, $a1, $t5
/* 1F848 8001EC48 0C002973 */  jal        func_8000A5CC
/* 1F84C 8001EC4C 8CA5B4EC */   lw        $a1, %lo(D_8006B4EC)($a1)
/* 1F850 8001EC50 8E2E0014 */  lw         $t6, 0x14($s1)
/* 1F854 8001EC54 3C058007 */  lui        $a1, %hi(D_8006B4EC)
/* 1F858 8001EC58 26040044 */  addiu      $a0, $s0, 0x44
/* 1F85C 8001EC5C 000E7880 */  sll        $t7, $t6, 2
/* 1F860 8001EC60 00AF2821 */  addu       $a1, $a1, $t7
/* 1F864 8001EC64 0C002973 */  jal        func_8000A5CC
/* 1F868 8001EC68 8CA5B4EC */   lw        $a1, %lo(D_8006B4EC)($a1)
/* 1F86C 8001EC6C 0C007F92 */  jal        func_8001FE48
/* 1F870 8001EC70 8E240018 */   lw        $a0, 0x18($s1)
/* 1F874 8001EC74 8E380000 */  lw         $t8, ($s1)
/* 1F878 8001EC78 3C038009 */  lui        $v1, %hi(D_80088CB0)
/* 1F87C 8001EC7C 24638CB0 */  addiu      $v1, $v1, %lo(D_80088CB0)
/* 1F880 8001EC80 AC780024 */  sw         $t8, 0x24($v1)
/* 1F884 8001EC84 C624001C */  lwc1       $f4, 0x1c($s1)
/* 1F888 8001EC88 E4640040 */  swc1       $f4, 0x40($v1)
/* 1F88C 8001EC8C C6260020 */  lwc1       $f6, 0x20($s1)
/* 1F890 8001EC90 E4660044 */  swc1       $f6, 0x44($v1)
.L8001EC94:
/* 1F894 8001EC94 8FB9005C */  lw         $t9, 0x5c($sp)
/* 1F898 8001EC98 3C098009 */  lui        $t1, %hi(D_80088CB0)
/* 1F89C 8001EC9C 25298CB0 */  addiu      $t1, $t1, %lo(D_80088CB0)
/* 1F8A0 8001ECA0 001940C0 */  sll        $t0, $t9, 3
/* 1F8A4 8001ECA4 01194021 */  addu       $t0, $t0, $t9
/* 1F8A8 8001ECA8 00084080 */  sll        $t0, $t0, 2
/* 1F8AC 8001ECAC 3C06800B */  lui        $a2, 0x800b
/* 1F8B0 8001ECB0 260A0014 */  addiu      $t2, $s0, 0x14
/* 1F8B4 8001ECB4 260B0020 */  addiu      $t3, $s0, 0x20
/* 1F8B8 8001ECB8 260C002C */  addiu      $t4, $s0, 0x2c
/* 1F8BC 8001ECBC 260D0038 */  addiu      $t5, $s0, 0x38
/* 1F8C0 8001ECC0 260E0044 */  addiu      $t6, $s0, 0x44
/* 1F8C4 8001ECC4 AFAE002C */  sw         $t6, 0x2c($sp)
/* 1F8C8 8001ECC8 AFAD0030 */  sw         $t5, 0x30($sp)
/* 1F8CC 8001ECCC AFAC0034 */  sw         $t4, 0x34($sp)
/* 1F8D0 8001ECD0 AFAB0038 */  sw         $t3, 0x38($sp)
/* 1F8D4 8001ECD4 AFAA003C */  sw         $t2, 0x3c($sp)
/* 1F8D8 8001ECD8 8CC6E4E4 */  lw         $a2, -0x1b1c($a2)
/* 1F8DC 8001ECDC 01098821 */  addu       $s1, $t0, $t1
/* 1F8E0 8001ECE0 26040008 */  addiu      $a0, $s0, 8
/* 1F8E4 8001ECE4 0C002980 */  jal        func_8000A600
/* 1F8E8 8001ECE8 27A5004C */   addiu     $a1, $sp, 0x4c
/* 1F8EC 8001ECEC 3C06800B */  lui        $a2, %hi(D_800AE4E4)
/* 1F8F0 8001ECF0 8CC6E4E4 */  lw         $a2, %lo(D_800AE4E4)($a2)
/* 1F8F4 8001ECF4 8FA4003C */  lw         $a0, 0x3c($sp)
/* 1F8F8 8001ECF8 0C002980 */  jal        func_8000A600
/* 1F8FC 8001ECFC 27A5004C */   addiu     $a1, $sp, 0x4c
/* 1F900 8001ED00 3C06800B */  lui        $a2, %hi(D_800AE4E4)
/* 1F904 8001ED04 8CC6E4E4 */  lw         $a2, %lo(D_800AE4E4)($a2)
/* 1F908 8001ED08 8FA40038 */  lw         $a0, 0x38($sp)
/* 1F90C 8001ED0C 0C002980 */  jal        func_8000A600
/* 1F910 8001ED10 27A5004C */   addiu     $a1, $sp, 0x4c
/* 1F914 8001ED14 3C06800B */  lui        $a2, %hi(D_800AE4E4)
/* 1F918 8001ED18 8CC6E4E4 */  lw         $a2, %lo(D_800AE4E4)($a2)
/* 1F91C 8001ED1C 8FA40034 */  lw         $a0, 0x34($sp)
/* 1F920 8001ED20 0C002980 */  jal        func_8000A600
/* 1F924 8001ED24 27A5004C */   addiu     $a1, $sp, 0x4c
/* 1F928 8001ED28 3C06800B */  lui        $a2, %hi(D_800AE4E4)
/* 1F92C 8001ED2C 8CC6E4E4 */  lw         $a2, %lo(D_800AE4E4)($a2)
/* 1F930 8001ED30 8FA40030 */  lw         $a0, 0x30($sp)
/* 1F934 8001ED34 0C002980 */  jal        func_8000A600
/* 1F938 8001ED38 27A5004C */   addiu     $a1, $sp, 0x4c
/* 1F93C 8001ED3C 3C06800B */  lui        $a2, %hi(D_800AE4E4)
/* 1F940 8001ED40 8CC6E4E4 */  lw         $a2, %lo(D_800AE4E4)($a2)
/* 1F944 8001ED44 8FA4002C */  lw         $a0, 0x2c($sp)
/* 1F948 8001ED48 0C002980 */  jal        func_8000A600
/* 1F94C 8001ED4C 27A5004C */   addiu     $a1, $sp, 0x4c
/* 1F950 8001ED50 C6680044 */  lwc1       $f8, 0x44($s3)
/* 1F954 8001ED54 02402025 */  or         $a0, $s2, $zero
/* 1F958 8001ED58 E6480018 */  swc1       $f8, 0x18($s2)
/* 1F95C 8001ED5C C66A0048 */  lwc1       $f10, 0x48($s3)
/* 1F960 8001ED60 C6520018 */  lwc1       $f18, 0x18($s2)
/* 1F964 8001ED64 E64A001C */  swc1       $f10, 0x1c($s2)
/* 1F968 8001ED68 C670004C */  lwc1       $f16, 0x4c($s3)
/* 1F96C 8001ED6C C644001C */  lwc1       $f4, 0x1c($s2)
/* 1F970 8001ED70 E6520044 */  swc1       $f18, 0x44($s2)
/* 1F974 8001ED74 E6500020 */  swc1       $f16, 0x20($s2)
/* 1F978 8001ED78 C6460020 */  lwc1       $f6, 0x20($s2)
/* 1F97C 8001ED7C E6440048 */  swc1       $f4, 0x48($s2)
/* 1F980 8001ED80 0C0026AE */  jal        func_80009AB8
/* 1F984 8001ED84 E646004C */   swc1      $f6, 0x4c($s2)
/* 1F988 8001ED88 860F004C */  lh         $t7, 0x4c($s0)
/* 1F98C 8001ED8C 3C01800A */  lui        $at, %hi(D_800A47A8)
/* 1F990 8001ED90 C42247A8 */  lwc1       $f2, %lo(D_800A47A8)($at)
/* 1F994 8001ED94 448F4000 */  mtc1       $t7, $f8
/* 1F998 8001ED98 C6400000 */  lwc1       $f0, ($s2)
/* 1F99C 8001ED9C 24010086 */  addiu      $at, $zero, 0x86
/* 1F9A0 8001EDA0 468042A0 */  cvt.s.w    $f10, $f8
/* 1F9A4 8001EDA4 46025402 */  mul.s      $f16, $f10, $f2
/* 1F9A8 8001EDA8 00000000 */  nop
/* 1F9AC 8001EDAC 46100482 */  mul.s      $f18, $f0, $f16
/* 1F9B0 8001EDB0 E6520004 */  swc1       $f18, 4($s2)
/* 1F9B4 8001EDB4 86180040 */  lh         $t8, 0x40($s0)
/* 1F9B8 8001EDB8 44982000 */  mtc1       $t8, $f4
/* 1F9BC 8001EDBC 00000000 */  nop
/* 1F9C0 8001EDC0 468021A0 */  cvt.s.w    $f6, $f4
/* 1F9C4 8001EDC4 46023202 */  mul.s      $f8, $f6, $f2
/* 1F9C8 8001EDC8 00000000 */  nop
/* 1F9CC 8001EDCC 46080282 */  mul.s      $f10, $f0, $f8
/* 1F9D0 8001EDD0 E64A0008 */  swc1       $f10, 8($s2)
/* 1F9D4 8001EDD4 96640034 */  lhu        $a0, 0x34($s3)
/* 1F9D8 8001EDD8 14810018 */  bne        $a0, $at, .L8001EE3C
/* 1F9DC 8001EDDC 00000000 */   nop
/* 1F9E0 8001EDE0 44808000 */  mtc1       $zero, $f16
/* 1F9E4 8001EDE4 8E620054 */  lw         $v0, 0x54($s3)
/* 1F9E8 8001EDE8 24040074 */  addiu      $a0, $zero, 0x74
/* 1F9EC 8001EDEC E7B00050 */  swc1       $f16, 0x50($sp)
/* 1F9F0 8001EDF0 84590004 */  lh         $t9, 4($v0)
/* 1F9F4 8001EDF4 3C038012 */  lui        $v1, %hi(D_80125A40)
/* 1F9F8 8001EDF8 24635A40 */  addiu      $v1, $v1, %lo(D_80125A40)
/* 1F9FC 8001EDFC 03240019 */  multu      $t9, $a0
/* 1FA00 8001EE00 C6720004 */  lwc1       $f18, 4($s3)
/* 1FA04 8001EE04 00004012 */  mflo       $t0
/* 1FA08 8001EE08 00684821 */  addu       $t1, $v1, $t0
/* 1FA0C 8001EE0C C5240038 */  lwc1       $f4, 0x38($t1)
/* 1FA10 8001EE10 46049182 */  mul.s      $f6, $f18, $f4
/* 1FA14 8001EE14 E7A60054 */  swc1       $f6, 0x54($sp)
/* 1FA18 8001EE18 844A0004 */  lh         $t2, 4($v0)
/* 1FA1C 8001EE1C C6680008 */  lwc1       $f8, 8($s3)
/* 1FA20 8001EE20 01440019 */  multu      $t2, $a0
/* 1FA24 8001EE24 00005812 */  mflo       $t3
/* 1FA28 8001EE28 006B6021 */  addu       $t4, $v1, $t3
/* 1FA2C 8001EE2C C58A0034 */  lwc1       $f10, 0x34($t4)
/* 1FA30 8001EE30 460A4402 */  mul.s      $f16, $f8, $f10
/* 1FA34 8001EE34 1000001B */  b          .L8001EEA4
/* 1FA38 8001EE38 E7B00058 */   swc1      $f16, 0x58($sp)
.L8001EE3C:
/* 1FA3C 8001EE3C 18800012 */  blez       $a0, .L8001EE88
/* 1FA40 8001EE40 28810026 */   slti      $at, $a0, 0x26
/* 1FA44 8001EE44 50200011 */  beql       $at, $zero, .L8001EE8C
/* 1FA48 8001EE48 44802000 */   mtc1      $zero, $f4
/* 1FA4C 8001EE4C 0C0079CC */  jal        func_8001E730
/* 1FA50 8001EE50 27A50050 */   addiu     $a1, $sp, 0x50
/* 1FA54 8001EE54 C7B20054 */  lwc1       $f18, 0x54($sp)
/* 1FA58 8001EE58 C6640004 */  lwc1       $f4, 4($s3)
/* 1FA5C 8001EE5C C7A80058 */  lwc1       $f8, 0x58($sp)
/* 1FA60 8001EE60 3C01800A */  lui        $at, %hi(D_800A47AC)
/* 1FA64 8001EE64 46049182 */  mul.s      $f6, $f18, $f4
/* 1FA68 8001EE68 44809000 */  mtc1       $zero, $f18
/* 1FA6C 8001EE6C C42247AC */  lwc1       $f2, %lo(D_800A47AC)($at)
/* 1FA70 8001EE70 E7A60054 */  swc1       $f6, 0x54($sp)
/* 1FA74 8001EE74 C66A0008 */  lwc1       $f10, 8($s3)
/* 1FA78 8001EE78 E7B20050 */  swc1       $f18, 0x50($sp)
/* 1FA7C 8001EE7C 460A4402 */  mul.s      $f16, $f8, $f10
/* 1FA80 8001EE80 10000008 */  b          .L8001EEA4
/* 1FA84 8001EE84 E7B00058 */   swc1      $f16, 0x58($sp)
.L8001EE88:
/* 1FA88 8001EE88 44802000 */  mtc1       $zero, $f4
.L8001EE8C:
/* 1FA8C 8001EE8C 00000000 */  nop
/* 1FA90 8001EE90 E7A40050 */  swc1       $f4, 0x50($sp)
/* 1FA94 8001EE94 C6660024 */  lwc1       $f6, 0x24($s3)
/* 1FA98 8001EE98 E7A60054 */  swc1       $f6, 0x54($sp)
/* 1FA9C 8001EE9C C6680024 */  lwc1       $f8, 0x24($s3)
/* 1FAA0 8001EEA0 E7A80058 */  swc1       $f8, 0x58($sp)
.L8001EEA4:
/* 1FAA4 8001EEA4 860D0034 */  lh         $t5, 0x34($s0)
/* 1FAA8 8001EEA8 C62A0020 */  lwc1       $f10, 0x20($s1)
/* 1FAAC 8001EEAC C7B00054 */  lwc1       $f16, 0x54($sp)
/* 1FAB0 8001EEB0 448D2000 */  mtc1       $t5, $f4
/* 1FAB4 8001EEB4 27A40050 */  addiu      $a0, $sp, 0x50
/* 1FAB8 8001EEB8 46105482 */  mul.s      $f18, $f10, $f16
/* 1FABC 8001EEBC C630001C */  lwc1       $f16, 0x1c($s1)
/* 1FAC0 8001EEC0 468021A0 */  cvt.s.w    $f6, $f4
/* 1FAC4 8001EEC4 C7A40058 */  lwc1       $f4, 0x58($sp)
/* 1FAC8 8001EEC8 46023202 */  mul.s      $f8, $f6, $f2
/* 1FACC 8001EECC 46089280 */  add.s      $f10, $f18, $f8
/* 1FAD0 8001EED0 46048182 */  mul.s      $f6, $f16, $f4
/* 1FAD4 8001EED4 E7AA0054 */  swc1       $f10, 0x54($sp)
/* 1FAD8 8001EED8 860E0028 */  lh         $t6, 0x28($s0)
/* 1FADC 8001EEDC 000E7823 */  negu       $t7, $t6
/* 1FAE0 8001EEE0 448F9000 */  mtc1       $t7, $f18
/* 1FAE4 8001EEE4 00000000 */  nop
/* 1FAE8 8001EEE8 46809220 */  cvt.s.w    $f8, $f18
/* 1FAEC 8001EEEC 46024282 */  mul.s      $f10, $f8, $f2
/* 1FAF0 8001EEF0 46065401 */  sub.s      $f16, $f10, $f6
/* 1FAF4 8001EEF4 0C00202A */  jal        func_800080A8
/* 1FAF8 8001EEF8 E7B00058 */   swc1      $f16, 0x58($sp)
.L8001EEFC:
/* 1FAFC 8001EEFC 3C18800B */  lui        $t8, %hi(D_800B6C54)
/* 1FB00 8001EF00 8F186C54 */  lw         $t8, %lo(D_800B6C54)($t8)
/* 1FB04 8001EF04 3C01800B */  lui        $at, 0x800b
/* 1FB08 8001EF08 AE180004 */  sw         $t8, 4($s0)
/* 1FB0C 8001EF0C 8FB9005C */  lw         $t9, 0x5c($sp)
/* 1FB10 8001EF10 AE190000 */  sw         $t9, ($s0)
/* 1FB14 8001EF14 8FA8005C */  lw         $t0, 0x5c($sp)
/* 1FB18 8001EF18 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1FB1C 8001EF1C 8FB30020 */  lw         $s3, 0x20($sp)
/* 1FB20 8001EF20 AC286C5C */  sw         $t0, 0x6c5c($at)
/* 1FB24 8001EF24 3C01800B */  lui        $at, %hi(D_800B6C58)
/* 1FB28 8001EF28 AC206C58 */  sw         $zero, %lo(D_800B6C58)($at)
/* 1FB2C 8001EF2C 3C01800B */  lui        $at, %hi(D_800B6C54)
/* 1FB30 8001EF30 AC206C54 */  sw         $zero, %lo(D_800B6C54)($at)
/* 1FB34 8001EF34 3C014F00 */  lui        $at, 0x4f00
/* 1FB38 8001EF38 44812000 */  mtc1       $at, $f4
/* 1FB3C 8001EF3C 3C01800B */  lui        $at, 0x800b
/* 1FB40 8001EF40 8FB2001C */  lw         $s2, 0x1c($sp)
/* 1FB44 8001EF44 8FB10018 */  lw         $s1, 0x18($sp)
/* 1FB48 8001EF48 8FB00014 */  lw         $s0, 0x14($sp)
/* 1FB4C 8001EF4C 27BD0068 */  addiu      $sp, $sp, 0x68
/* 1FB50 8001EF50 03E00008 */  jr         $ra
/* 1FB54 8001EF54 E4246C50 */   swc1      $f4, 0x6c50($at)

glabel func_8001EF58
/* 1FB58 8001EF58 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1FB5C 8001EF5C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1FB60 8001EF60 AFA40020 */  sw         $a0, 0x20($sp)
/* 1FB64 8001EF64 8C870054 */  lw         $a3, 0x54($a0)
/* 1FB68 8001EF68 3C04800B */  lui        $a0, %hi(D_800ABDD0)
/* 1FB6C 8001EF6C 2484BDD0 */  addiu      $a0, $a0, %lo(D_800ABDD0)
/* 1FB70 8001EF70 8CEF0000 */  lw         $t7, ($a3)
/* 1FB74 8001EF74 24050005 */  addiu      $a1, $zero, 5
/* 1FB78 8001EF78 55E00004 */  bnel       $t7, $zero, .L8001EF8C
/* 1FB7C 8001EF7C 84E60010 */   lh        $a2, 0x10($a3)
/* 1FB80 8001EF80 10000033 */  b          .L8001F050
/* 1FB84 8001EF84 00001025 */   or        $v0, $zero, $zero
/* 1FB88 8001EF88 84E60010 */  lh         $a2, 0x10($a3)
.L8001EF8C:
/* 1FB8C 8001EF8C 0C00309B */  jal        func_8000C26C
/* 1FB90 8001EF90 AFA7001C */   sw        $a3, 0x1c($sp)
/* 1FB94 8001EF94 3C04800B */  lui        $a0, %hi(D_800ABDD0)
/* 1FB98 8001EF98 2484BDD0 */  addiu      $a0, $a0, %lo(D_800ABDD0)
/* 1FB9C 8001EF9C 8C820000 */  lw         $v0, ($a0)
/* 1FBA0 8001EFA0 8FA7001C */  lw         $a3, 0x1c($sp)
/* 1FBA4 8001EFA4 3C19E700 */  lui        $t9, 0xe700
/* 1FBA8 8001EFA8 24580008 */  addiu      $t8, $v0, 8
/* 1FBAC 8001EFAC AC980000 */  sw         $t8, ($a0)
/* 1FBB0 8001EFB0 AC400004 */  sw         $zero, 4($v0)
/* 1FBB4 8001EFB4 AC590000 */  sw         $t9, ($v0)
/* 1FBB8 8001EFB8 8C820000 */  lw         $v0, ($a0)
/* 1FBBC 8001EFBC 3C09FA00 */  lui        $t1, 0xfa00
/* 1FBC0 8001EFC0 2401FF00 */  addiu      $at, $zero, -0x100
/* 1FBC4 8001EFC4 24480008 */  addiu      $t0, $v0, 8
/* 1FBC8 8001EFC8 AC880000 */  sw         $t0, ($a0)
/* 1FBCC 8001EFCC AC490000 */  sw         $t1, ($v0)
/* 1FBD0 8001EFD0 84EA001C */  lh         $t2, 0x1c($a3)
/* 1FBD4 8001EFD4 3C0E8007 */  lui        $t6, %hi(D_800760A8)
/* 1FBD8 8001EFD8 3C08E200 */  lui        $t0, 0xe200
/* 1FBDC 8001EFDC 314B00FF */  andi       $t3, $t2, 0xff
/* 1FBE0 8001EFE0 01616025 */  or         $t4, $t3, $at
/* 1FBE4 8001EFE4 AC4C0004 */  sw         $t4, 4($v0)
/* 1FBE8 8001EFE8 8DCE60A8 */  lw         $t6, %lo(D_800760A8)($t6)
/* 1FBEC 8001EFEC 8CED0004 */  lw         $t5, 4($a3)
/* 1FBF0 8001EFF0 3C0BE200 */  lui        $t3, 0xe200
/* 1FBF4 8001EFF4 8DCF0054 */  lw         $t7, 0x54($t6)
/* 1FBF8 8001EFF8 3508001C */  ori        $t0, $t0, 0x1c
/* 1FBFC 8001EFFC 356B001C */  ori        $t3, $t3, 0x1c
/* 1FC00 8001F000 8DF80190 */  lw         $t8, 0x190($t7)
/* 1FC04 8001F004 55B8000A */  bnel       $t5, $t8, .L8001F030
/* 1FC08 8001F008 8C820000 */   lw        $v0, ($a0)
/* 1FC0C 8001F00C 8C820000 */  lw         $v0, ($a0)
/* 1FC10 8001F010 3C090050 */  lui        $t1, 0x50
/* 1FC14 8001F014 35294240 */  ori        $t1, $t1, 0x4240
/* 1FC18 8001F018 24590008 */  addiu      $t9, $v0, 8
/* 1FC1C 8001F01C AC990000 */  sw         $t9, ($a0)
/* 1FC20 8001F020 AC490004 */  sw         $t1, 4($v0)
/* 1FC24 8001F024 10000008 */  b          .L8001F048
/* 1FC28 8001F028 AC480000 */   sw        $t0, ($v0)
/* 1FC2C 8001F02C 8C820000 */  lw         $v0, ($a0)
.L8001F030:
/* 1FC30 8001F030 3C0C0050 */  lui        $t4, 0x50
/* 1FC34 8001F034 358C4A50 */  ori        $t4, $t4, 0x4a50
/* 1FC38 8001F038 244A0008 */  addiu      $t2, $v0, 8
/* 1FC3C 8001F03C AC8A0000 */  sw         $t2, ($a0)
/* 1FC40 8001F040 AC4C0004 */  sw         $t4, 4($v0)
/* 1FC44 8001F044 AC4B0000 */  sw         $t3, ($v0)
.L8001F048:
/* 1FC48 8001F048 8FAE0020 */  lw         $t6, 0x20($sp)
/* 1FC4C 8001F04C 8DC20030 */  lw         $v0, 0x30($t6)
.L8001F050:
/* 1FC50 8001F050 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1FC54 8001F054 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1FC58 8001F058 03E00008 */  jr         $ra
/* 1FC5C 8001F05C 00000000 */   nop

glabel func_8001F060
/* 1FC60 8001F060 3C02800B */  lui        $v0, %hi(D_800B6C54)
/* 1FC64 8001F064 03E00008 */  jr         $ra
/* 1FC68 8001F068 8C426C54 */   lw        $v0, %lo(D_800B6C54)($v0)

glabel func_8001F06C
/* 1FC6C 8001F06C 3C02800B */  lui        $v0, %hi(D_800B6C5C)
/* 1FC70 8001F070 03E00008 */  jr         $ra
/* 1FC74 8001F074 8C426C5C */   lw        $v0, %lo(D_800B6C5C)($v0)

glabel func_8001F078
/* 1FC78 8001F078 44842000 */  mtc1       $a0, $f4
/* 1FC7C 8001F07C 3C01800A */  lui        $at, %hi(D_800A47B0)
/* 1FC80 8001F080 C42847B0 */  lwc1       $f8, %lo(D_800A47B0)($at)
/* 1FC84 8001F084 468021A0 */  cvt.s.w    $f6, $f4
/* 1FC88 8001F088 3C028009 */  lui        $v0, %hi(D_80088C88)
/* 1FC8C 8001F08C 24428C88 */  addiu      $v0, $v0, %lo(D_80088C88)
/* 1FC90 8001F090 46083002 */  mul.s      $f0, $f6, $f8
/* 1FC94 8001F094 E4400008 */  swc1       $f0, 8($v0)
/* 1FC98 8001F098 03E00008 */  jr         $ra
/* 1FC9C 8001F09C E440000C */   swc1      $f0, 0xc($v0)

glabel func_8001F0A0
/* 1FCA0 8001F0A0 44842000 */  mtc1       $a0, $f4
/* 1FCA4 8001F0A4 3C01800A */  lui        $at, %hi(D_800A47B4)
/* 1FCA8 8001F0A8 C42847B4 */  lwc1       $f8, %lo(D_800A47B4)($at)
/* 1FCAC 8001F0AC 468021A0 */  cvt.s.w    $f6, $f4
/* 1FCB0 8001F0B0 3C018009 */  lui        $at, %hi(D_80088C98)
/* 1FCB4 8001F0B4 46083282 */  mul.s      $f10, $f6, $f8
/* 1FCB8 8001F0B8 03E00008 */  jr         $ra
/* 1FCBC 8001F0BC E42A8C98 */   swc1      $f10, %lo(D_80088C98)($at)

glabel func_8001F0C0
/* 1FCC0 8001F0C0 44842000 */  mtc1       $a0, $f4
/* 1FCC4 8001F0C4 3C01800A */  lui        $at, %hi(D_800A47B8)
/* 1FCC8 8001F0C8 C42847B8 */  lwc1       $f8, %lo(D_800A47B8)($at)
/* 1FCCC 8001F0CC 468021A0 */  cvt.s.w    $f6, $f4
/* 1FCD0 8001F0D0 3C028009 */  lui        $v0, %hi(D_80088C88)
/* 1FCD4 8001F0D4 24428C88 */  addiu      $v0, $v0, %lo(D_80088C88)
/* 1FCD8 8001F0D8 46083002 */  mul.s      $f0, $f6, $f8
/* 1FCDC 8001F0DC E440001C */  swc1       $f0, 0x1c($v0)
/* 1FCE0 8001F0E0 03E00008 */  jr         $ra
/* 1FCE4 8001F0E4 E4400020 */   swc1      $f0, 0x20($v0)

glabel func_8001F0E8
/* 1FCE8 8001F0E8 44842000 */  mtc1       $a0, $f4
/* 1FCEC 8001F0EC 3C01800A */  lui        $at, %hi(D_800A47BC)
/* 1FCF0 8001F0F0 C42847BC */  lwc1       $f8, %lo(D_800A47BC)($at)
/* 1FCF4 8001F0F4 468021A0 */  cvt.s.w    $f6, $f4
/* 1FCF8 8001F0F8 3C018009 */  lui        $at, %hi(D_80088CAC)
/* 1FCFC 8001F0FC 46083282 */  mul.s      $f10, $f6, $f8
/* 1FD00 8001F100 03E00008 */  jr         $ra
/* 1FD04 8001F104 E42A8CAC */   swc1      $f10, %lo(D_80088CAC)($at)
/* 1FD08 8001F108 00000000 */  nop
/* 1FD0C 8001F10C 00000000 */  nop
