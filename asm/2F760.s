.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8002EB60
/* 2F760 8002EB60 03E00008 */  jr         $ra
/* 2F764 8002EB64 AFA40000 */   sw        $a0, ($sp)

glabel func_8002EB68
/* 2F768 8002EB68 3C02800F */  lui        $v0, %hi(D_800EF6A0)
/* 2F76C 8002EB6C 2442F6A0 */  addiu      $v0, $v0, %lo(D_800EF6A0)
/* 2F770 8002EB70 C4440010 */  lwc1       $f4, 0x10($v0)
/* 2F774 8002EB74 C4460014 */  lwc1       $f6, 0x14($v0)
/* 2F778 8002EB78 C44A000C */  lwc1       $f10, 0xc($v0)
/* 2F77C 8002EB7C C4500018 */  lwc1       $f16, 0x18($v0)
/* 2F780 8002EB80 46062200 */  add.s      $f8, $f4, $f6
/* 2F784 8002EB84 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 2F788 8002EB88 AFA50054 */  sw         $a1, 0x54($sp)
/* 2F78C 8002EB8C 46105480 */  add.s      $f18, $f10, $f16
/* 2F790 8002EB90 AFA60058 */  sw         $a2, 0x58($sp)
/* 2F794 8002EB94 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2F798 8002EB98 AFA40050 */  sw         $a0, 0x50($sp)
/* 2F79C 8002EB9C 44069000 */  mfc1       $a2, $f18
/* 2F7A0 8002EBA0 44054000 */  mfc1       $a1, $f8
/* 2F7A4 8002EBA4 27A4001C */  addiu      $a0, $sp, 0x1c
/* 2F7A8 8002EBA8 0C00E665 */  jal        func_80039994
/* 2F7AC 8002EBAC 24070000 */   addiu     $a3, $zero, 0
/* 2F7B0 8002EBB0 27A4001C */  addiu      $a0, $sp, 0x1c
/* 2F7B4 8002EBB4 8FA50054 */  lw         $a1, 0x54($sp)
/* 2F7B8 8002EBB8 8FA60058 */  lw         $a2, 0x58($sp)
/* 2F7BC 8002EBBC 0C00E623 */  jal        func_8003988C
/* 2F7C0 8002EBC0 24070000 */   addiu     $a3, $zero, 0
/* 2F7C4 8002EBC4 8FA20050 */  lw         $v0, 0x50($sp)
/* 2F7C8 8002EBC8 27A4001C */  addiu      $a0, $sp, 0x1c
/* 2F7CC 8002EBCC 2445000C */  addiu      $a1, $v0, 0xc
/* 2F7D0 8002EBD0 24460010 */  addiu      $a2, $v0, 0x10
/* 2F7D4 8002EBD4 0C00EDD9 */  jal        func_8003B764
/* 2F7D8 8002EBD8 24470014 */   addiu     $a3, $v0, 0x14
/* 2F7DC 8002EBDC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2F7E0 8002EBE0 27BD0050 */  addiu      $sp, $sp, 0x50
/* 2F7E4 8002EBE4 03E00008 */  jr         $ra
/* 2F7E8 8002EBE8 00000000 */   nop

glabel func_8002EBEC
/* 2F7EC 8002EBEC 44856000 */  mtc1       $a1, $f12
/* 2F7F0 8002EBF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2F7F4 8002EBF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2F7F8 8002EBF8 0C001FA3 */  jal        func_80007E8C
/* 2F7FC 8002EBFC E7AC001C */   swc1      $f12, 0x1c($sp)
/* 2F800 8002EC00 C7AC001C */  lwc1       $f12, 0x1c($sp)
/* 2F804 8002EC04 10400017 */  beqz       $v0, .L8002EC64
/* 2F808 8002EC08 00402025 */   or        $a0, $v0, $zero
/* 2F80C 8002EC0C 944E0034 */  lhu        $t6, 0x34($v0)
/* 2F810 8002EC10 24010086 */  addiu      $at, $zero, 0x86
/* 2F814 8002EC14 3C038013 */  lui        $v1, %hi(D_80133DE4)
/* 2F818 8002EC18 15C10006 */  bne        $t6, $at, .L8002EC34
/* 2F81C 8002EC1C 24633DE4 */   addiu     $v1, $v1, %lo(D_80133DE4)
/* 2F820 8002EC20 44056000 */  mfc1       $a1, $f12
/* 2F824 8002EC24 0C044CD2 */  jal        func_80113348
/* 2F828 8002EC28 00000000 */   nop
/* 2F82C 8002EC2C 1000000E */  b          .L8002EC68
/* 2F830 8002EC30 8FBF0014 */   lw        $ra, 0x14($sp)
.L8002EC34:
/* 2F834 8002EC34 8C6F0000 */  lw         $t7, ($v1)
/* 2F838 8002EC38 C5E4000C */  lwc1       $f4, 0xc($t7)
/* 2F83C 8002EC3C 460C2182 */  mul.s      $f6, $f4, $f12
/* 2F840 8002EC40 E4460000 */  swc1       $f6, ($v0)
/* 2F844 8002EC44 8C780000 */  lw         $t8, ($v1)
/* 2F848 8002EC48 C708000C */  lwc1       $f8, 0xc($t8)
/* 2F84C 8002EC4C 460C4282 */  mul.s      $f10, $f8, $f12
/* 2F850 8002EC50 E44A0004 */  swc1       $f10, 4($v0)
/* 2F854 8002EC54 8C790000 */  lw         $t9, ($v1)
/* 2F858 8002EC58 C730000C */  lwc1       $f16, 0xc($t9)
/* 2F85C 8002EC5C 460C8482 */  mul.s      $f18, $f16, $f12
/* 2F860 8002EC60 E4520008 */  swc1       $f18, 8($v0)
.L8002EC64:
/* 2F864 8002EC64 8FBF0014 */  lw         $ra, 0x14($sp)
.L8002EC68:
/* 2F868 8002EC68 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2F86C 8002EC6C 03E00008 */  jr         $ra
/* 2F870 8002EC70 00000000 */   nop

glabel func_8002EC74
/* 2F874 8002EC74 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 2F878 8002EC78 AFBF0034 */  sw         $ra, 0x34($sp)
/* 2F87C 8002EC7C AFB30030 */  sw         $s3, 0x30($sp)
/* 2F880 8002EC80 AFB2002C */  sw         $s2, 0x2c($sp)
/* 2F884 8002EC84 AFB10028 */  sw         $s1, 0x28($sp)
/* 2F888 8002EC88 AFB00024 */  sw         $s0, 0x24($sp)
/* 2F88C 8002EC8C F7B60018 */  sdc1       $f22, 0x18($sp)
/* 2F890 8002EC90 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 2F894 8002EC94 8C8E0014 */  lw         $t6, 0x14($a0)
/* 2F898 8002EC98 3C01800A */  lui        $at, %hi(D_800A5F54)
/* 2F89C 8002EC9C C4365F54 */  lwc1       $f22, %lo(D_800A5F54)($at)
/* 2F8A0 8002ECA0 000E7880 */  sll        $t7, $t6, 2
/* 2F8A4 8002ECA4 01EE7821 */  addu       $t7, $t7, $t6
/* 2F8A8 8002ECA8 000F7900 */  sll        $t7, $t7, 4
/* 2F8AC 8002ECAC 3C013F00 */  lui        $at, 0x3f00
/* 2F8B0 8002ECB0 008F1021 */  addu       $v0, $a0, $t7
/* 2F8B4 8002ECB4 4481A000 */  mtc1       $at, $f20
/* 2F8B8 8002ECB8 00809825 */  or         $s3, $a0, $zero
/* 2F8BC 8002ECBC 24510028 */  addiu      $s1, $v0, 0x28
/* 2F8C0 8002ECC0 00008025 */  or         $s0, $zero, $zero
/* 2F8C4 8002ECC4 2412000A */  addiu      $s2, $zero, 0xa
.L8002ECC8:
/* 2F8C8 8002ECC8 8E220004 */  lw         $v0, 4($s1)
/* 2F8CC 8002ECCC 0010C080 */  sll        $t8, $s0, 2
/* 2F8D0 8002ECD0 0278C821 */  addu       $t9, $s3, $t8
/* 2F8D4 8002ECD4 14400003 */  bnez       $v0, .L8002ECE4
/* 2F8D8 8002ECD8 00402025 */   or        $a0, $v0, $zero
/* 2F8DC 8002ECDC 10000001 */  b          .L8002ECE4
/* 2F8E0 8002ECE0 8F2400C8 */   lw        $a0, 0xc8($t9)
.L8002ECE4:
/* 2F8E4 8002ECE4 56000007 */  bnel       $s0, $zero, .L8002ED04
/* 2F8E8 8002ECE8 4405B000 */   mfc1      $a1, $f22
/* 2F8EC 8002ECEC 4405A000 */  mfc1       $a1, $f20
/* 2F8F0 8002ECF0 0C00BAFB */  jal        func_8002EBEC
/* 2F8F4 8002ECF4 00000000 */   nop
/* 2F8F8 8002ECF8 10000005 */  b          .L8002ED10
/* 2F8FC 8002ECFC 26100001 */   addiu     $s0, $s0, 1
/* 2F900 8002ED00 4405B000 */  mfc1       $a1, $f22
.L8002ED04:
/* 2F904 8002ED04 0C00BAFB */  jal        func_8002EBEC
/* 2F908 8002ED08 00000000 */   nop
/* 2F90C 8002ED0C 26100001 */  addiu      $s0, $s0, 1
.L8002ED10:
/* 2F910 8002ED10 1612FFED */  bne        $s0, $s2, .L8002ECC8
/* 2F914 8002ED14 26310008 */   addiu     $s1, $s1, 8
/* 2F918 8002ED18 8FBF0034 */  lw         $ra, 0x34($sp)
/* 2F91C 8002ED1C D7B40010 */  ldc1       $f20, 0x10($sp)
/* 2F920 8002ED20 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 2F924 8002ED24 8FB00024 */  lw         $s0, 0x24($sp)
/* 2F928 8002ED28 8FB10028 */  lw         $s1, 0x28($sp)
/* 2F92C 8002ED2C 8FB2002C */  lw         $s2, 0x2c($sp)
/* 2F930 8002ED30 8FB30030 */  lw         $s3, 0x30($sp)
/* 2F934 8002ED34 03E00008 */  jr         $ra
/* 2F938 8002ED38 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8002ED3C
/* 2F93C 8002ED3C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2F940 8002ED40 AFB30020 */  sw         $s3, 0x20($sp)
/* 2F944 8002ED44 AFB10018 */  sw         $s1, 0x18($sp)
/* 2F948 8002ED48 AFB00014 */  sw         $s0, 0x14($sp)
/* 2F94C 8002ED4C 3C10800F */  lui        $s0, 0x800f
/* 2F950 8002ED50 3C11800F */  lui        $s1, %hi(D_800F1BE0)
/* 2F954 8002ED54 3C13800F */  lui        $s3, %hi(D_800F1C58)
/* 2F958 8002ED58 AFBF0024 */  sw         $ra, 0x24($sp)
/* 2F95C 8002ED5C AFB2001C */  sw         $s2, 0x1c($sp)
/* 2F960 8002ED60 26731C58 */  addiu      $s3, $s3, %lo(D_800F1C58)
/* 2F964 8002ED64 26311BE0 */  addiu      $s1, $s1, %lo(D_800F1BE0)
/* 2F968 8002ED68 26101C08 */  addiu      $s0, $s0, 0x1c08
.L8002ED6C:
/* 2F96C 8002ED6C 8E2E002C */  lw         $t6, 0x2c($s1)
/* 2F970 8002ED70 02009025 */  or         $s2, $s0, $zero
/* 2F974 8002ED74 AE200028 */  sw         $zero, 0x28($s1)
/* 2F978 8002ED78 51C00006 */  beql       $t6, $zero, .L8002ED94
/* 2F97C 8002ED7C 26100008 */   addiu     $s0, $s0, 8
/* 2F980 8002ED80 0C001FA3 */  jal        func_80007E8C
/* 2F984 8002ED84 8E040004 */   lw        $a0, 4($s0)
/* 2F988 8002ED88 0C044EDE */  jal        func_80113B78
/* 2F98C 8002ED8C 00402025 */   or        $a0, $v0, $zero
/* 2F990 8002ED90 26100008 */  addiu      $s0, $s0, 8
.L8002ED94:
/* 2F994 8002ED94 26310008 */  addiu      $s1, $s1, 8
/* 2F998 8002ED98 1613FFF4 */  bne        $s0, $s3, .L8002ED6C
/* 2F99C 8002ED9C AE400004 */   sw        $zero, 4($s2)
/* 2F9A0 8002EDA0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 2F9A4 8002EDA4 8FB00014 */  lw         $s0, 0x14($sp)
/* 2F9A8 8002EDA8 8FB10018 */  lw         $s1, 0x18($sp)
/* 2F9AC 8002EDAC 8FB2001C */  lw         $s2, 0x1c($sp)
/* 2F9B0 8002EDB0 8FB30020 */  lw         $s3, 0x20($sp)
/* 2F9B4 8002EDB4 03E00008 */  jr         $ra
/* 2F9B8 8002EDB8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002EDBC
/* 2F9BC 8002EDBC 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 2F9C0 8002EDC0 3C0F800A */  lui        $t7, 0x800a
/* 2F9C4 8002EDC4 AFBF002C */  sw         $ra, 0x2c($sp)
/* 2F9C8 8002EDC8 AFB40028 */  sw         $s4, 0x28($sp)
/* 2F9CC 8002EDCC AFB30024 */  sw         $s3, 0x24($sp)
/* 2F9D0 8002EDD0 AFB20020 */  sw         $s2, 0x20($sp)
/* 2F9D4 8002EDD4 AFB1001C */  sw         $s1, 0x1c($sp)
/* 2F9D8 8002EDD8 AFB00018 */  sw         $s0, 0x18($sp)
/* 2F9DC 8002EDDC 25EFA654 */  addiu      $t7, $t7, -0x59ac
/* 2F9E0 8002EDE0 8DE10000 */  lw         $at, ($t7)
/* 2F9E4 8002EDE4 27AE003C */  addiu      $t6, $sp, 0x3c
/* 2F9E8 8002EDE8 8DE80004 */  lw         $t0, 4($t7)
/* 2F9EC 8002EDEC ADC10000 */  sw         $at, ($t6)
/* 2F9F0 8002EDF0 8DE10008 */  lw         $at, 8($t7)
/* 2F9F4 8002EDF4 3C04800F */  lui        $a0, %hi(D_800F1BE0)
/* 2F9F8 8002EDF8 ADC80004 */  sw         $t0, 4($t6)
/* 2F9FC 8002EDFC ADC10008 */  sw         $at, 8($t6)
/* 2FA00 8002EE00 8C841BE0 */  lw         $a0, %lo(D_800F1BE0)($a0)
/* 2FA04 8002EE04 0C00237A */  jal        func_80008DE8
/* 2FA08 8002EE08 24052002 */   addiu     $a1, $zero, 0x2002
/* 2FA0C 8002EE0C 3C09800F */  lui        $t1, %hi(D_800F1BE0)
/* 2FA10 8002EE10 8D291BE0 */  lw         $t1, %lo(D_800F1BE0)($t1)
/* 2FA14 8002EE14 C7A4003C */  lwc1       $f4, 0x3c($sp)
/* 2FA18 8002EE18 3C0A800F */  lui        $t2, %hi(D_800F1BE0)
/* 2FA1C 8002EE1C 3C0B800F */  lui        $t3, 0x800f
/* 2FA20 8002EE20 E5240018 */  swc1       $f4, 0x18($t1)
/* 2FA24 8002EE24 8D4A1BE0 */  lw         $t2, %lo(D_800F1BE0)($t2)
/* 2FA28 8002EE28 C7A60040 */  lwc1       $f6, 0x40($sp)
/* 2FA2C 8002EE2C 3C13800F */  lui        $s3, 0x800f
/* 2FA30 8002EE30 3C14800F */  lui        $s4, %hi(D_800F1C80)
/* 2FA34 8002EE34 E546001C */  swc1       $f6, 0x1c($t2)
/* 2FA38 8002EE38 8D6B1BE0 */  lw         $t3, 0x1be0($t3)
/* 2FA3C 8002EE3C C7A80044 */  lwc1       $f8, 0x44($sp)
/* 2FA40 8002EE40 26941C80 */  addiu      $s4, $s4, %lo(D_800F1C80)
/* 2FA44 8002EE44 26731BE0 */  addiu      $s3, $s3, 0x1be0
/* 2FA48 8002EE48 E5680020 */  swc1       $f8, 0x20($t3)
/* 2FA4C 8002EE4C 00008825 */  or         $s1, $zero, $zero
.L8002EE50:
/* 2FA50 8002EE50 02609025 */  or         $s2, $s3, $zero
.L8002EE54:
/* 2FA54 8002EE54 0C001FA3 */  jal        func_80007E8C
/* 2FA58 8002EE58 8E44002C */   lw        $a0, 0x2c($s2)
/* 2FA5C 8002EE5C 1040000A */  beqz       $v0, .L8002EE88
/* 2FA60 8002EE60 00408025 */   or        $s0, $v0, $zero
/* 2FA64 8002EE64 00402025 */  or         $a0, $v0, $zero
/* 2FA68 8002EE68 0C00237A */  jal        func_80008DE8
/* 2FA6C 8002EE6C 24052002 */   addiu     $a1, $zero, 0x2002
/* 2FA70 8002EE70 C7AA003C */  lwc1       $f10, 0x3c($sp)
/* 2FA74 8002EE74 E60A0018 */  swc1       $f10, 0x18($s0)
/* 2FA78 8002EE78 C7B00040 */  lwc1       $f16, 0x40($sp)
/* 2FA7C 8002EE7C E610001C */  swc1       $f16, 0x1c($s0)
/* 2FA80 8002EE80 C7B20044 */  lwc1       $f18, 0x44($sp)
/* 2FA84 8002EE84 E6120020 */  swc1       $f18, 0x20($s0)
.L8002EE88:
/* 2FA88 8002EE88 26310008 */  addiu      $s1, $s1, 8
/* 2FA8C 8002EE8C 2A210050 */  slti       $at, $s1, 0x50
/* 2FA90 8002EE90 1420FFF0 */  bnez       $at, .L8002EE54
/* 2FA94 8002EE94 26520008 */   addiu     $s2, $s2, 8
/* 2FA98 8002EE98 26730050 */  addiu      $s3, $s3, 0x50
/* 2FA9C 8002EE9C 0274082B */  sltu       $at, $s3, $s4
/* 2FAA0 8002EEA0 5420FFEB */  bnel       $at, $zero, .L8002EE50
/* 2FAA4 8002EEA4 00008825 */   or        $s1, $zero, $zero
/* 2FAA8 8002EEA8 3C11800F */  lui        $s1, %hi(D_800F1BE0)
/* 2FAAC 8002EEAC 3C12800F */  lui        $s2, %hi(D_800F1C08)
/* 2FAB0 8002EEB0 26521C08 */  addiu      $s2, $s2, %lo(D_800F1C08)
/* 2FAB4 8002EEB4 26311BE0 */  addiu      $s1, $s1, %lo(D_800F1BE0)
.L8002EEB8:
/* 2FAB8 8002EEB8 0C001FA3 */  jal        func_80007E8C
/* 2FABC 8002EEBC 8E2400C8 */   lw        $a0, 0xc8($s1)
/* 2FAC0 8002EEC0 1040000A */  beqz       $v0, .L8002EEEC
/* 2FAC4 8002EEC4 00408025 */   or        $s0, $v0, $zero
/* 2FAC8 8002EEC8 00402025 */  or         $a0, $v0, $zero
/* 2FACC 8002EECC 0C00237A */  jal        func_80008DE8
/* 2FAD0 8002EED0 24052002 */   addiu     $a1, $zero, 0x2002
/* 2FAD4 8002EED4 C7A4003C */  lwc1       $f4, 0x3c($sp)
/* 2FAD8 8002EED8 E6040018 */  swc1       $f4, 0x18($s0)
/* 2FADC 8002EEDC C7A60040 */  lwc1       $f6, 0x40($sp)
/* 2FAE0 8002EEE0 E606001C */  swc1       $f6, 0x1c($s0)
/* 2FAE4 8002EEE4 C7A80044 */  lwc1       $f8, 0x44($sp)
/* 2FAE8 8002EEE8 E6080020 */  swc1       $f8, 0x20($s0)
.L8002EEEC:
/* 2FAEC 8002EEEC 26310004 */  addiu      $s1, $s1, 4
/* 2FAF0 8002EEF0 1632FFF1 */  bne        $s1, $s2, .L8002EEB8
/* 2FAF4 8002EEF4 00000000 */   nop
/* 2FAF8 8002EEF8 3C04800F */  lui        $a0, %hi(D_800F1CD4)
/* 2FAFC 8002EEFC 0C001FA3 */  jal        func_80007E8C
/* 2FB00 8002EF00 8C841CD4 */   lw        $a0, %lo(D_800F1CD4)($a0)
/* 2FB04 8002EF04 1040000A */  beqz       $v0, .L8002EF30
/* 2FB08 8002EF08 00408025 */   or        $s0, $v0, $zero
/* 2FB0C 8002EF0C 00402025 */  or         $a0, $v0, $zero
/* 2FB10 8002EF10 0C00237A */  jal        func_80008DE8
/* 2FB14 8002EF14 24052002 */   addiu     $a1, $zero, 0x2002
/* 2FB18 8002EF18 C7AA003C */  lwc1       $f10, 0x3c($sp)
/* 2FB1C 8002EF1C E60A0018 */  swc1       $f10, 0x18($s0)
/* 2FB20 8002EF20 C7B00040 */  lwc1       $f16, 0x40($sp)
/* 2FB24 8002EF24 E610001C */  swc1       $f16, 0x1c($s0)
/* 2FB28 8002EF28 C7B20044 */  lwc1       $f18, 0x44($sp)
/* 2FB2C 8002EF2C E6120020 */  swc1       $f18, 0x20($s0)
.L8002EF30:
/* 2FB30 8002EF30 3C04800F */  lui        $a0, %hi(D_800F1CDC)
/* 2FB34 8002EF34 0C001FA3 */  jal        func_80007E8C
/* 2FB38 8002EF38 8C841CDC */   lw        $a0, %lo(D_800F1CDC)($a0)
/* 2FB3C 8002EF3C 1040000A */  beqz       $v0, .L8002EF68
/* 2FB40 8002EF40 00408025 */   or        $s0, $v0, $zero
/* 2FB44 8002EF44 00402025 */  or         $a0, $v0, $zero
/* 2FB48 8002EF48 0C00237A */  jal        func_80008DE8
/* 2FB4C 8002EF4C 24052002 */   addiu     $a1, $zero, 0x2002
/* 2FB50 8002EF50 C7A4003C */  lwc1       $f4, 0x3c($sp)
/* 2FB54 8002EF54 E6040018 */  swc1       $f4, 0x18($s0)
/* 2FB58 8002EF58 C7A60040 */  lwc1       $f6, 0x40($sp)
/* 2FB5C 8002EF5C E606001C */  swc1       $f6, 0x1c($s0)
/* 2FB60 8002EF60 C7A80044 */  lwc1       $f8, 0x44($sp)
/* 2FB64 8002EF64 E6080020 */  swc1       $f8, 0x20($s0)
.L8002EF68:
/* 2FB68 8002EF68 8FBF002C */  lw         $ra, 0x2c($sp)
/* 2FB6C 8002EF6C 8FB00018 */  lw         $s0, 0x18($sp)
/* 2FB70 8002EF70 8FB1001C */  lw         $s1, 0x1c($sp)
/* 2FB74 8002EF74 8FB20020 */  lw         $s2, 0x20($sp)
/* 2FB78 8002EF78 8FB30024 */  lw         $s3, 0x24($sp)
/* 2FB7C 8002EF7C 8FB40028 */  lw         $s4, 0x28($sp)
/* 2FB80 8002EF80 03E00008 */  jr         $ra
/* 2FB84 8002EF84 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_8002EF88
/* 2FB88 8002EF88 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2FB8C 8002EF8C AFBF0024 */  sw         $ra, 0x24($sp)
/* 2FB90 8002EF90 3C04800F */  lui        $a0, %hi(D_800F1BE0)
/* 2FB94 8002EF94 AFB30020 */  sw         $s3, 0x20($sp)
/* 2FB98 8002EF98 AFB2001C */  sw         $s2, 0x1c($sp)
/* 2FB9C 8002EF9C AFB10018 */  sw         $s1, 0x18($sp)
/* 2FBA0 8002EFA0 AFB00014 */  sw         $s0, 0x14($sp)
/* 2FBA4 8002EFA4 8C841BE0 */  lw         $a0, %lo(D_800F1BE0)($a0)
/* 2FBA8 8002EFA8 0C002394 */  jal        func_80008E50
/* 2FBAC 8002EFAC 24050002 */   addiu     $a1, $zero, 2
/* 2FBB0 8002EFB0 3C12800F */  lui        $s2, %hi(D_800F1BE0)
/* 2FBB4 8002EFB4 3C13800F */  lui        $s3, %hi(D_800F1C80)
/* 2FBB8 8002EFB8 26731C80 */  addiu      $s3, $s3, %lo(D_800F1C80)
/* 2FBBC 8002EFBC 26521BE0 */  addiu      $s2, $s2, %lo(D_800F1BE0)
/* 2FBC0 8002EFC0 00008025 */  or         $s0, $zero, $zero
.L8002EFC4:
/* 2FBC4 8002EFC4 02408825 */  or         $s1, $s2, $zero
.L8002EFC8:
/* 2FBC8 8002EFC8 0C001FA3 */  jal        func_80007E8C
/* 2FBCC 8002EFCC 8E24002C */   lw        $a0, 0x2c($s1)
/* 2FBD0 8002EFD0 10400003 */  beqz       $v0, .L8002EFE0
/* 2FBD4 8002EFD4 00402025 */   or        $a0, $v0, $zero
/* 2FBD8 8002EFD8 0C002394 */  jal        func_80008E50
/* 2FBDC 8002EFDC 24050002 */   addiu     $a1, $zero, 2
.L8002EFE0:
/* 2FBE0 8002EFE0 26100008 */  addiu      $s0, $s0, 8
/* 2FBE4 8002EFE4 2A010050 */  slti       $at, $s0, 0x50
/* 2FBE8 8002EFE8 1420FFF7 */  bnez       $at, .L8002EFC8
/* 2FBEC 8002EFEC 26310008 */   addiu     $s1, $s1, 8
/* 2FBF0 8002EFF0 26520050 */  addiu      $s2, $s2, 0x50
/* 2FBF4 8002EFF4 0253082B */  sltu       $at, $s2, $s3
/* 2FBF8 8002EFF8 5420FFF2 */  bnel       $at, $zero, .L8002EFC4
/* 2FBFC 8002EFFC 00008025 */   or        $s0, $zero, $zero
/* 2FC00 8002F000 3C10800F */  lui        $s0, %hi(D_800F1BE0)
/* 2FC04 8002F004 3C11800F */  lui        $s1, %hi(D_800F1C08)
/* 2FC08 8002F008 26311C08 */  addiu      $s1, $s1, %lo(D_800F1C08)
/* 2FC0C 8002F00C 26101BE0 */  addiu      $s0, $s0, %lo(D_800F1BE0)
.L8002F010:
/* 2FC10 8002F010 0C001FA3 */  jal        func_80007E8C
/* 2FC14 8002F014 8E0400C8 */   lw        $a0, 0xc8($s0)
/* 2FC18 8002F018 10400003 */  beqz       $v0, .L8002F028
/* 2FC1C 8002F01C 00402025 */   or        $a0, $v0, $zero
/* 2FC20 8002F020 0C002394 */  jal        func_80008E50
/* 2FC24 8002F024 24050002 */   addiu     $a1, $zero, 2
.L8002F028:
/* 2FC28 8002F028 26100004 */  addiu      $s0, $s0, 4
/* 2FC2C 8002F02C 1611FFF8 */  bne        $s0, $s1, .L8002F010
/* 2FC30 8002F030 00000000 */   nop
/* 2FC34 8002F034 3C04800F */  lui        $a0, %hi(D_800F1CD4)
/* 2FC38 8002F038 0C001FA3 */  jal        func_80007E8C
/* 2FC3C 8002F03C 8C841CD4 */   lw        $a0, %lo(D_800F1CD4)($a0)
/* 2FC40 8002F040 10400003 */  beqz       $v0, .L8002F050
/* 2FC44 8002F044 00402025 */   or        $a0, $v0, $zero
/* 2FC48 8002F048 0C002394 */  jal        func_80008E50
/* 2FC4C 8002F04C 24050002 */   addiu     $a1, $zero, 2
.L8002F050:
/* 2FC50 8002F050 3C04800F */  lui        $a0, %hi(D_800F1CDC)
/* 2FC54 8002F054 0C001FA3 */  jal        func_80007E8C
/* 2FC58 8002F058 8C841CDC */   lw        $a0, %lo(D_800F1CDC)($a0)
/* 2FC5C 8002F05C 10400003 */  beqz       $v0, .L8002F06C
/* 2FC60 8002F060 00402025 */   or        $a0, $v0, $zero
/* 2FC64 8002F064 0C002394 */  jal        func_80008E50
/* 2FC68 8002F068 24050002 */   addiu     $a1, $zero, 2
.L8002F06C:
/* 2FC6C 8002F06C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 2FC70 8002F070 8FB00014 */  lw         $s0, 0x14($sp)
/* 2FC74 8002F074 8FB10018 */  lw         $s1, 0x18($sp)
/* 2FC78 8002F078 8FB2001C */  lw         $s2, 0x1c($sp)
/* 2FC7C 8002F07C 8FB30020 */  lw         $s3, 0x20($sp)
/* 2FC80 8002F080 03E00008 */  jr         $ra
/* 2FC84 8002F084 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002F088
/* 2FC88 8002F088 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2FC8C 8002F08C AFB00014 */  sw         $s0, 0x14($sp)
/* 2FC90 8002F090 AFA40020 */  sw         $a0, 0x20($sp)
/* 2FC94 8002F094 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2FC98 8002F098 AFB10018 */  sw         $s1, 0x18($sp)
/* 2FC9C 8002F09C 00A08025 */  or         $s0, $a1, $zero
/* 2FCA0 8002F0A0 8CB10054 */  lw         $s1, 0x54($a1)
/* 2FCA4 8002F0A4 00A02025 */  or         $a0, $a1, $zero
/* 2FCA8 8002F0A8 0C045011 */  jal        func_80114044
/* 2FCAC 8002F0AC 24050001 */   addiu     $a1, $zero, 1
/* 2FCB0 8002F0B0 240E0004 */  addiu      $t6, $zero, 4
/* 2FCB4 8002F0B4 A22E0006 */  sb         $t6, 6($s1)
/* 2FCB8 8002F0B8 02002025 */  or         $a0, $s0, $zero
/* 2FCBC 8002F0BC 0C04510F */  jal        func_8011443C
/* 2FCC0 8002F0C0 24050005 */   addiu     $a1, $zero, 5
/* 2FCC4 8002F0C4 8E2F0000 */  lw         $t7, ($s1)
/* 2FCC8 8002F0C8 3C01BFFF */  lui        $at, 0xbfff
/* 2FCCC 8002F0CC 3421FFFF */  ori        $at, $at, 0xffff
/* 2FCD0 8002F0D0 01E1C024 */  and        $t8, $t7, $at
/* 2FCD4 8002F0D4 AE380000 */  sw         $t8, ($s1)
/* 2FCD8 8002F0D8 02002025 */  or         $a0, $s0, $zero
/* 2FCDC 8002F0DC 0C00237A */  jal        func_80008DE8
/* 2FCE0 8002F0E0 24052000 */   addiu     $a1, $zero, 0x2000
/* 2FCE4 8002F0E4 8FA20020 */  lw         $v0, 0x20($sp)
/* 2FCE8 8002F0E8 8E190038 */  lw         $t9, 0x38($s0)
/* 2FCEC 8002F0EC AC590004 */  sw         $t9, 4($v0)
/* 2FCF0 8002F0F0 86280004 */  lh         $t0, 4($s1)
/* 2FCF4 8002F0F4 AC480000 */  sw         $t0, ($v0)
/* 2FCF8 8002F0F8 0C044FF2 */  jal        func_80113FC8
/* 2FCFC 8002F0FC 8E040038 */   lw        $a0, 0x38($s0)
/* 2FD00 8002F100 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2FD04 8002F104 8FB00014 */  lw         $s0, 0x14($sp)
/* 2FD08 8002F108 8FB10018 */  lw         $s1, 0x18($sp)
/* 2FD0C 8002F10C 03E00008 */  jr         $ra
/* 2FD10 8002F110 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8002F114
/* 2FD14 8002F114 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 2FD18 8002F118 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2FD1C 8002F11C AFA40030 */  sw         $a0, 0x30($sp)
/* 2FD20 8002F120 AFA50034 */  sw         $a1, 0x34($sp)
/* 2FD24 8002F124 8C880054 */  lw         $t0, 0x54($a0)
/* 2FD28 8002F128 8FB80034 */  lw         $t8, 0x34($sp)
/* 2FD2C 8002F12C 3C028012 */  lui        $v0, 0x8012
/* 2FD30 8002F130 85070004 */  lh         $a3, 4($t0)
/* 2FD34 8002F134 0018C880 */  sll        $t9, $t8, 2
/* 2FD38 8002F138 24010003 */  addiu      $at, $zero, 3
/* 2FD3C 8002F13C 000778C0 */  sll        $t7, $a3, 3
/* 2FD40 8002F140 01E77823 */  subu       $t7, $t7, $a3
/* 2FD44 8002F144 000F7880 */  sll        $t7, $t7, 2
/* 2FD48 8002F148 01E77821 */  addu       $t7, $t7, $a3
/* 2FD4C 8002F14C 000F7880 */  sll        $t7, $t7, 2
/* 2FD50 8002F150 004F1021 */  addu       $v0, $v0, $t7
/* 2FD54 8002F154 80425AB1 */  lb         $v0, 0x5ab1($v0)
/* 2FD58 8002F158 0338C821 */  addu       $t9, $t9, $t8
/* 2FD5C 8002F15C 0019C900 */  sll        $t9, $t9, 4
/* 2FD60 8002F160 10410003 */  beq        $v0, $at, .L8002F170
/* 2FD64 8002F164 3C09800F */   lui       $t1, %hi(D_800F1BE0)
/* 2FD68 8002F168 24010002 */  addiu      $at, $zero, 2
/* 2FD6C 8002F16C 14410031 */  bne        $v0, $at, .L8002F234
.L8002F170:
/* 2FD70 8002F170 25291BE0 */   addiu     $t1, $t1, %lo(D_800F1BE0)
/* 2FD74 8002F174 03292821 */  addu       $a1, $t9, $t1
/* 2FD78 8002F178 8CAA0028 */  lw         $t2, 0x28($a1)
/* 2FD7C 8002F17C 00A01825 */  or         $v1, $a1, $zero
/* 2FD80 8002F180 24620028 */  addiu      $v0, $v1, 0x28
/* 2FD84 8002F184 14EA0004 */  bne        $a3, $t2, .L8002F198
/* 2FD88 8002F188 24040010 */   addiu     $a0, $zero, 0x10
/* 2FD8C 8002F18C AC400000 */  sw         $zero, ($v0)
/* 2FD90 8002F190 AC400004 */  sw         $zero, 4($v0)
/* 2FD94 8002F194 85070004 */  lh         $a3, 4($t0)
.L8002F198:
/* 2FD98 8002F198 8C6B0030 */  lw         $t3, 0x30($v1)
/* 2FD9C 8002F19C 24620030 */  addiu      $v0, $v1, 0x30
/* 2FDA0 8002F1A0 54EB0004 */  bnel       $a3, $t3, .L8002F1B4
/* 2FDA4 8002F1A4 24A30010 */   addiu     $v1, $a1, 0x10
/* 2FDA8 8002F1A8 AC400000 */  sw         $zero, ($v0)
/* 2FDAC 8002F1AC AC400004 */  sw         $zero, 4($v0)
/* 2FDB0 8002F1B0 24A30010 */  addiu      $v1, $a1, 0x10
.L8002F1B4:
/* 2FDB4 8002F1B4 24050050 */  addiu      $a1, $zero, 0x50
.L8002F1B8:
/* 2FDB8 8002F1B8 85070004 */  lh         $a3, 4($t0)
/* 2FDBC 8002F1BC 8C6C0028 */  lw         $t4, 0x28($v1)
/* 2FDC0 8002F1C0 24840020 */  addiu      $a0, $a0, 0x20
/* 2FDC4 8002F1C4 24620028 */  addiu      $v0, $v1, 0x28
/* 2FDC8 8002F1C8 54EC0005 */  bnel       $a3, $t4, .L8002F1E0
/* 2FDCC 8002F1CC 8C6D0030 */   lw        $t5, 0x30($v1)
/* 2FDD0 8002F1D0 AC400000 */  sw         $zero, ($v0)
/* 2FDD4 8002F1D4 AC400004 */  sw         $zero, 4($v0)
/* 2FDD8 8002F1D8 85070004 */  lh         $a3, 4($t0)
/* 2FDDC 8002F1DC 8C6D0030 */  lw         $t5, 0x30($v1)
.L8002F1E0:
/* 2FDE0 8002F1E0 24620030 */  addiu      $v0, $v1, 0x30
/* 2FDE4 8002F1E4 54ED0005 */  bnel       $a3, $t5, .L8002F1FC
/* 2FDE8 8002F1E8 8C6E0038 */   lw        $t6, 0x38($v1)
/* 2FDEC 8002F1EC AC400000 */  sw         $zero, ($v0)
/* 2FDF0 8002F1F0 AC400004 */  sw         $zero, 4($v0)
/* 2FDF4 8002F1F4 85070004 */  lh         $a3, 4($t0)
/* 2FDF8 8002F1F8 8C6E0038 */  lw         $t6, 0x38($v1)
.L8002F1FC:
/* 2FDFC 8002F1FC 24620038 */  addiu      $v0, $v1, 0x38
/* 2FE00 8002F200 54EE0005 */  bnel       $a3, $t6, .L8002F218
/* 2FE04 8002F204 8C6F0040 */   lw        $t7, 0x40($v1)
/* 2FE08 8002F208 AC400000 */  sw         $zero, ($v0)
/* 2FE0C 8002F20C AC400004 */  sw         $zero, 4($v0)
/* 2FE10 8002F210 85070004 */  lh         $a3, 4($t0)
/* 2FE14 8002F214 8C6F0040 */  lw         $t7, 0x40($v1)
.L8002F218:
/* 2FE18 8002F218 24620040 */  addiu      $v0, $v1, 0x40
/* 2FE1C 8002F21C 14EF0003 */  bne        $a3, $t7, .L8002F22C
/* 2FE20 8002F220 00000000 */   nop
/* 2FE24 8002F224 AC400000 */  sw         $zero, ($v0)
/* 2FE28 8002F228 AC400004 */  sw         $zero, 4($v0)
.L8002F22C:
/* 2FE2C 8002F22C 1485FFE2 */  bne        $a0, $a1, .L8002F1B8
/* 2FE30 8002F230 24630020 */   addiu     $v1, $v1, 0x20
.L8002F234:
/* 2FE34 8002F234 8FB80034 */  lw         $t8, 0x34($sp)
/* 2FE38 8002F238 000648C0 */  sll        $t1, $a2, 3
/* 2FE3C 8002F23C 3C0C800F */  lui        $t4, 0x800f
/* 2FE40 8002F240 0018C880 */  sll        $t9, $t8, 2
/* 2FE44 8002F244 0338C821 */  addu       $t9, $t9, $t8
/* 2FE48 8002F248 0019C900 */  sll        $t9, $t9, 4
/* 2FE4C 8002F24C 03295021 */  addu       $t2, $t9, $t1
/* 2FE50 8002F250 254B0028 */  addiu      $t3, $t2, 0x28
/* 2FE54 8002F254 258C1BE0 */  addiu      $t4, $t4, 0x1be0
/* 2FE58 8002F258 016C2021 */  addu       $a0, $t3, $t4
/* 2FE5C 8002F25C AFA4001C */  sw         $a0, 0x1c($sp)
/* 2FE60 8002F260 0C00BC22 */  jal        func_8002F088
/* 2FE64 8002F264 8FA50030 */   lw        $a1, 0x30($sp)
/* 2FE68 8002F268 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2FE6C 8002F26C 8FA2001C */  lw         $v0, 0x1c($sp)
/* 2FE70 8002F270 27BD0030 */  addiu      $sp, $sp, 0x30
/* 2FE74 8002F274 03E00008 */  jr         $ra
/* 2FE78 8002F278 00000000 */   nop

glabel func_8002F27C
/* 2FE7C 8002F27C 00057080 */  sll        $t6, $a1, 2
/* 2FE80 8002F280 01C57021 */  addu       $t6, $t6, $a1
/* 2FE84 8002F284 000E7100 */  sll        $t6, $t6, 4
/* 2FE88 8002F288 3C18800F */  lui        $t8, %hi(D_800F1BE0)
/* 2FE8C 8002F28C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2FE90 8002F290 27181BE0 */  addiu      $t8, $t8, %lo(D_800F1BE0)
/* 2FE94 8002F294 25CF0028 */  addiu      $t7, $t6, 0x28
/* 2FE98 8002F298 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2FE9C 8002F29C 01F81021 */  addu       $v0, $t7, $t8
/* 2FEA0 8002F2A0 00003025 */  or         $a2, $zero, $zero
/* 2FEA4 8002F2A4 2403000A */  addiu      $v1, $zero, 0xa
.L8002F2A8:
/* 2FEA8 8002F2A8 8C590004 */  lw         $t9, 4($v0)
/* 2FEAC 8002F2AC 57200009 */  bnel       $t9, $zero, .L8002F2D4
/* 2FEB0 8002F2B0 24C60001 */   addiu     $a2, $a2, 1
/* 2FEB4 8002F2B4 8C480000 */  lw         $t0, ($v0)
/* 2FEB8 8002F2B8 55000006 */  bnel       $t0, $zero, .L8002F2D4
/* 2FEBC 8002F2BC 24C60001 */   addiu     $a2, $a2, 1
/* 2FEC0 8002F2C0 0C00BC45 */  jal        func_8002F114
/* 2FEC4 8002F2C4 00000000 */   nop
/* 2FEC8 8002F2C8 10000006 */  b          .L8002F2E4
/* 2FECC 8002F2CC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 2FED0 8002F2D0 24C60001 */  addiu      $a2, $a2, 1
.L8002F2D4:
/* 2FED4 8002F2D4 14C3FFF4 */  bne        $a2, $v1, .L8002F2A8
/* 2FED8 8002F2D8 24420008 */   addiu     $v0, $v0, 8
/* 2FEDC 8002F2DC 00001025 */  or         $v0, $zero, $zero
/* 2FEE0 8002F2E0 8FBF0014 */  lw         $ra, 0x14($sp)
.L8002F2E4:
/* 2FEE4 8002F2E4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2FEE8 8002F2E8 03E00008 */  jr         $ra
/* 2FEEC 8002F2EC 00000000 */   nop

glabel func_8002F2F0
/* 2FEF0 8002F2F0 3C0E800F */  lui        $t6, %hi(D_800F1CD4)
/* 2FEF4 8002F2F4 8DCE1CD4 */  lw         $t6, %lo(D_800F1CD4)($t6)
/* 2FEF8 8002F2F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2FEFC 8002F2FC AFBF0014 */  sw         $ra, 0x14($sp)
/* 2FF00 8002F300 11C00005 */  beqz       $t6, .L8002F318
/* 2FF04 8002F304 AFA40018 */   sw        $a0, 0x18($sp)
/* 2FF08 8002F308 0C001FA3 */  jal        func_80007E8C
/* 2FF0C 8002F30C 01C02025 */   or        $a0, $t6, $zero
/* 2FF10 8002F310 0C044EDE */  jal        func_80113B78
/* 2FF14 8002F314 00402025 */   or        $a0, $v0, $zero
.L8002F318:
/* 2FF18 8002F318 3C04800F */  lui        $a0, %hi(D_800F1CD0)
/* 2FF1C 8002F31C 24841CD0 */  addiu      $a0, $a0, %lo(D_800F1CD0)
/* 2FF20 8002F320 0C00BC22 */  jal        func_8002F088
/* 2FF24 8002F324 8FA50018 */   lw        $a1, 0x18($sp)
/* 2FF28 8002F328 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2FF2C 8002F32C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2FF30 8002F330 03E00008 */  jr         $ra
/* 2FF34 8002F334 00000000 */   nop

glabel func_8002F338
/* 2FF38 8002F338 3C0E800F */  lui        $t6, %hi(D_800F1CDC)
/* 2FF3C 8002F33C 8DCE1CDC */  lw         $t6, %lo(D_800F1CDC)($t6)
/* 2FF40 8002F340 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2FF44 8002F344 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2FF48 8002F348 11C00005 */  beqz       $t6, .L8002F360
/* 2FF4C 8002F34C AFA40018 */   sw        $a0, 0x18($sp)
/* 2FF50 8002F350 0C001FA3 */  jal        func_80007E8C
/* 2FF54 8002F354 01C02025 */   or        $a0, $t6, $zero
/* 2FF58 8002F358 0C044EDE */  jal        func_80113B78
/* 2FF5C 8002F35C 00402025 */   or        $a0, $v0, $zero
.L8002F360:
/* 2FF60 8002F360 3C04800F */  lui        $a0, %hi(D_800F1CD8)
/* 2FF64 8002F364 24841CD8 */  addiu      $a0, $a0, %lo(D_800F1CD8)
/* 2FF68 8002F368 0C00BC22 */  jal        func_8002F088
/* 2FF6C 8002F36C 8FA50018 */   lw        $a1, 0x18($sp)
/* 2FF70 8002F370 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2FF74 8002F374 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2FF78 8002F378 03E00008 */  jr         $ra
/* 2FF7C 8002F37C 00000000 */   nop

glabel func_8002F380
/* 2FF80 8002F380 000470C0 */  sll        $t6, $a0, 3
/* 2FF84 8002F384 01C47023 */  subu       $t6, $t6, $a0
/* 2FF88 8002F388 000E7080 */  sll        $t6, $t6, 2
/* 2FF8C 8002F38C 01C47021 */  addu       $t6, $t6, $a0
/* 2FF90 8002F390 3C0F8012 */  lui        $t7, %hi(D_80125A40)
/* 2FF94 8002F394 25EF5A40 */  addiu      $t7, $t7, %lo(D_80125A40)
/* 2FF98 8002F398 000E7080 */  sll        $t6, $t6, 2
/* 2FF9C 8002F39C 01CF1021 */  addu       $v0, $t6, $t7
/* 2FFA0 8002F3A0 80430071 */  lb         $v1, 0x71($v0)
/* 2FFA4 8002F3A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2FFA8 8002F3A8 24010003 */  addiu      $at, $zero, 3
/* 2FFAC 8002F3AC 10610006 */  beq        $v1, $at, .L8002F3C8
/* 2FFB0 8002F3B0 AFBF0014 */   sw        $ra, 0x14($sp)
/* 2FFB4 8002F3B4 24010002 */  addiu      $at, $zero, 2
/* 2FFB8 8002F3B8 50610004 */  beql       $v1, $at, .L8002F3CC
/* 2FFBC 8002F3BC 84440072 */   lh        $a0, 0x72($v0)
/* 2FFC0 8002F3C0 1000000A */  b          .L8002F3EC
/* 2FFC4 8002F3C4 00001025 */   or        $v0, $zero, $zero
.L8002F3C8:
/* 2FFC8 8002F3C8 84440072 */  lh         $a0, 0x72($v0)
.L8002F3CC:
/* 2FFCC 8002F3CC 2401FFFF */  addiu      $at, $zero, -1
/* 2FFD0 8002F3D0 14810003 */  bne        $a0, $at, .L8002F3E0
/* 2FFD4 8002F3D4 00000000 */   nop
/* 2FFD8 8002F3D8 10000004 */  b          .L8002F3EC
/* 2FFDC 8002F3DC 00001025 */   or        $v0, $zero, $zero
.L8002F3E0:
/* 2FFE0 8002F3E0 0C00CB11 */  jal        func_80032C44
/* 2FFE4 8002F3E4 24050001 */   addiu     $a1, $zero, 1
/* 2FFE8 8002F3E8 24020001 */  addiu      $v0, $zero, 1
.L8002F3EC:
/* 2FFEC 8002F3EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2FFF0 8002F3F0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2FFF4 8002F3F4 03E00008 */  jr         $ra
/* 2FFF8 8002F3F8 00000000 */   nop

glabel func_8002F3FC
/* 2FFFC 8002F3FC 00047080 */  sll        $t6, $a0, 2
/* 30000 8002F400 01C47021 */  addu       $t6, $t6, $a0
/* 30004 8002F404 000E7100 */  sll        $t6, $t6, 4
/* 30008 8002F408 000578C0 */  sll        $t7, $a1, 3
/* 3000C 8002F40C 3C19800F */  lui        $t9, %hi(D_800F1BE0)
/* 30010 8002F410 27391BE0 */  addiu      $t9, $t9, %lo(D_800F1BE0)
/* 30014 8002F414 01CFC021 */  addu       $t8, $t6, $t7
/* 30018 8002F418 03191021 */  addu       $v0, $t8, $t9
/* 3001C 8002F41C 8C48002C */  lw         $t0, 0x2c($v0)
/* 30020 8002F420 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 30024 8002F424 AFBF001C */  sw         $ra, 0x1c($sp)
/* 30028 8002F428 15000003 */  bnez       $t0, .L8002F438
/* 3002C 8002F42C AFB00018 */   sw        $s0, 0x18($sp)
/* 30030 8002F430 1000002E */  b          .L8002F4EC
/* 30034 8002F434 00001025 */   or        $v0, $zero, $zero
.L8002F438:
/* 30038 8002F438 24500028 */  addiu      $s0, $v0, 0x28
/* 3003C 8002F43C 8E090000 */  lw         $t1, ($s0)
/* 30040 8002F440 3C038012 */  lui        $v1, 0x8012
/* 30044 8002F444 24010005 */  addiu      $at, $zero, 5
/* 30048 8002F448 000950C0 */  sll        $t2, $t1, 3
/* 3004C 8002F44C 01495023 */  subu       $t2, $t2, $t1
/* 30050 8002F450 000A5080 */  sll        $t2, $t2, 2
/* 30054 8002F454 01495021 */  addu       $t2, $t2, $t1
/* 30058 8002F458 000A5080 */  sll        $t2, $t2, 2
/* 3005C 8002F45C 006A1821 */  addu       $v1, $v1, $t2
/* 30060 8002F460 80635AB1 */  lb         $v1, 0x5ab1($v1)
/* 30064 8002F464 54610004 */  bnel       $v1, $at, .L8002F478
/* 30068 8002F468 24010002 */   addiu     $at, $zero, 2
/* 3006C 8002F46C 1000001F */  b          .L8002F4EC
/* 30070 8002F470 00001025 */   or        $v0, $zero, $zero
/* 30074 8002F474 24010002 */  addiu      $at, $zero, 2
.L8002F478:
/* 30078 8002F478 14610003 */  bne        $v1, $at, .L8002F488
/* 3007C 8002F47C 00000000 */   nop
/* 30080 8002F480 1000001A */  b          .L8002F4EC
/* 30084 8002F484 00001025 */   or        $v0, $zero, $zero
.L8002F488:
/* 30088 8002F488 0C001FA3 */  jal        func_80007E8C
/* 3008C 8002F48C 8E040004 */   lw        $a0, 4($s0)
/* 30090 8002F490 AFA20024 */  sw         $v0, 0x24($sp)
/* 30094 8002F494 8C430054 */  lw         $v1, 0x54($v0)
/* 30098 8002F498 00402025 */  or         $a0, $v0, $zero
/* 3009C 8002F49C 00002825 */  or         $a1, $zero, $zero
/* 300A0 8002F4A0 A0600006 */  sb         $zero, 6($v1)
/* 300A4 8002F4A4 AC600008 */  sw         $zero, 8($v1)
/* 300A8 8002F4A8 0C04510F */  jal        func_8011443C
/* 300AC 8002F4AC AFA30020 */   sw        $v1, 0x20($sp)
/* 300B0 8002F4B0 8FA30020 */  lw         $v1, 0x20($sp)
/* 300B4 8002F4B4 3C01BFFF */  lui        $at, 0xbfff
/* 300B8 8002F4B8 3421FFFF */  ori        $at, $at, 0xffff
/* 300BC 8002F4BC 8C6B0000 */  lw         $t3, ($v1)
/* 300C0 8002F4C0 24052000 */  addiu      $a1, $zero, 0x2000
/* 300C4 8002F4C4 01616024 */  and        $t4, $t3, $at
/* 300C8 8002F4C8 AC6C0000 */  sw         $t4, ($v1)
/* 300CC 8002F4CC 0C002394 */  jal        func_80008E50
/* 300D0 8002F4D0 8FA40024 */   lw        $a0, 0x24($sp)
/* 300D4 8002F4D4 8FAD0024 */  lw         $t5, 0x24($sp)
/* 300D8 8002F4D8 0C045003 */  jal        func_8011400C
/* 300DC 8002F4DC 8DA40038 */   lw        $a0, 0x38($t5)
/* 300E0 8002F4E0 AE000000 */  sw         $zero, ($s0)
/* 300E4 8002F4E4 AE000004 */  sw         $zero, 4($s0)
/* 300E8 8002F4E8 8FA20024 */  lw         $v0, 0x24($sp)
.L8002F4EC:
/* 300EC 8002F4EC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 300F0 8002F4F0 8FB00018 */  lw         $s0, 0x18($sp)
/* 300F4 8002F4F4 27BD0030 */  addiu      $sp, $sp, 0x30
/* 300F8 8002F4F8 03E00008 */  jr         $ra
/* 300FC 8002F4FC 00000000 */   nop

glabel func_8002F500
/* 30100 8002F500 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 30104 8002F504 AFA40030 */  sw         $a0, 0x30($sp)
/* 30108 8002F508 AFBF001C */  sw         $ra, 0x1c($sp)
/* 3010C 8002F50C 00A02025 */  or         $a0, $a1, $zero
/* 30110 8002F510 AFB00018 */  sw         $s0, 0x18($sp)
/* 30114 8002F514 0C00BCFF */  jal        func_8002F3FC
/* 30118 8002F518 00C02825 */   or        $a1, $a2, $zero
/* 3011C 8002F51C 14400003 */  bnez       $v0, .L8002F52C
/* 30120 8002F520 00408025 */   or        $s0, $v0, $zero
/* 30124 8002F524 10000019 */  b          .L8002F58C
/* 30128 8002F528 00001025 */   or        $v0, $zero, $zero
.L8002F52C:
/* 3012C 8002F52C 8E020054 */  lw         $v0, 0x54($s0)
/* 30130 8002F530 02002025 */  or         $a0, $s0, $zero
/* 30134 8002F534 24052000 */  addiu      $a1, $zero, 0x2000
/* 30138 8002F538 0C00237A */  jal        func_80008DE8
/* 3013C 8002F53C AFA20024 */   sw        $v0, 0x24($sp)
/* 30140 8002F540 8FA20024 */  lw         $v0, 0x24($sp)
/* 30144 8002F544 240E0001 */  addiu      $t6, $zero, 1
/* 30148 8002F548 02002025 */  or         $a0, $s0, $zero
/* 3014C 8002F54C 24050003 */  addiu      $a1, $zero, 3
/* 30150 8002F550 A04E0006 */  sb         $t6, 6($v0)
/* 30154 8002F554 0C04510F */  jal        func_8011443C
/* 30158 8002F558 AC400008 */   sw        $zero, 8($v0)
/* 3015C 8002F55C 8FA20024 */  lw         $v0, 0x24($sp)
/* 30160 8002F560 3C014000 */  lui        $at, 0x4000
/* 30164 8002F564 3C04800F */  lui        $a0, %hi(D_800F1BE0)
/* 30168 8002F568 8C4F0000 */  lw         $t7, ($v0)
/* 3016C 8002F56C 24841BE0 */  addiu      $a0, $a0, %lo(D_800F1BE0)
/* 30170 8002F570 01E1C025 */  or         $t8, $t7, $at
/* 30174 8002F574 AC580000 */  sw         $t8, ($v0)
/* 30178 8002F578 8FA80030 */  lw         $t0, 0x30($sp)
/* 3017C 8002F57C 8E190038 */  lw         $t9, 0x38($s0)
/* 30180 8002F580 0C00BB1D */  jal        func_8002EC74
/* 30184 8002F584 AD190084 */   sw        $t9, 0x84($t0)
/* 30188 8002F588 02001025 */  or         $v0, $s0, $zero
.L8002F58C:
/* 3018C 8002F58C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 30190 8002F590 8FB00018 */  lw         $s0, 0x18($sp)
/* 30194 8002F594 27BD0030 */  addiu      $sp, $sp, 0x30
/* 30198 8002F598 03E00008 */  jr         $ra
/* 3019C 8002F59C 00000000 */   nop

glabel func_8002F5A0
/* 301A0 8002F5A0 27BDFF60 */  addiu      $sp, $sp, -0xa0
/* 301A4 8002F5A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 301A8 8002F5A8 AFA500A4 */  sw         $a1, 0xa4($sp)
/* 301AC 8002F5AC 8C820054 */  lw         $v0, 0x54($a0)
/* 301B0 8002F5B0 24050001 */  addiu      $a1, $zero, 1
/* 301B4 8002F5B4 0C04539D */  jal        func_80114E74
/* 301B8 8002F5B8 84440004 */   lh        $a0, 4($v0)
/* 301BC 8002F5BC 27A4001C */  addiu      $a0, $sp, 0x1c
/* 301C0 8002F5C0 8FA500A4 */  lw         $a1, 0xa4($sp)
/* 301C4 8002F5C4 0C014E38 */  jal        sprintf
/* 301C8 8002F5C8 00403025 */   or        $a2, $v0, $zero
/* 301CC 8002F5CC 00002025 */  or         $a0, $zero, $zero
/* 301D0 8002F5D0 3C054060 */  lui        $a1, 0x4060
/* 301D4 8002F5D4 0C009E62 */  jal        func_80027988
/* 301D8 8002F5D8 27A6001C */   addiu     $a2, $sp, 0x1c
/* 301DC 8002F5DC 0C002C3F */  jal        func_8000B0FC
/* 301E0 8002F5E0 00000000 */   nop
/* 301E4 8002F5E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 301E8 8002F5E8 3C01800F */  lui        $at, %hi(D_800F1D20)
/* 301EC 8002F5EC AC231D20 */  sw         $v1, %lo(D_800F1D20)($at)
/* 301F0 8002F5F0 03E00008 */  jr         $ra
/* 301F4 8002F5F4 27BD00A0 */   addiu     $sp, $sp, 0xa0

glabel func_8002F5F8
/* 301F8 8002F5F8 8C820054 */  lw         $v0, 0x54($a0)
/* 301FC 8002F5FC 3C038012 */  lui        $v1, 0x8012
/* 30200 8002F600 24060001 */  addiu      $a2, $zero, 1
/* 30204 8002F604 844E0004 */  lh         $t6, 4($v0)
/* 30208 8002F608 24010003 */  addiu      $at, $zero, 3
/* 3020C 8002F60C 000E78C0 */  sll        $t7, $t6, 3
/* 30210 8002F610 01EE7823 */  subu       $t7, $t7, $t6
/* 30214 8002F614 000F7880 */  sll        $t7, $t7, 2
/* 30218 8002F618 01EE7821 */  addu       $t7, $t7, $t6
/* 3021C 8002F61C 000F7880 */  sll        $t7, $t7, 2
/* 30220 8002F620 006F1821 */  addu       $v1, $v1, $t7
/* 30224 8002F624 80635AB1 */  lb         $v1, 0x5ab1($v1)
/* 30228 8002F628 14660007 */  bne        $v1, $a2, .L8002F648
/* 3022C 8002F62C 00000000 */   nop
/* 30230 8002F630 14A00003 */  bnez       $a1, .L8002F640
/* 30234 8002F634 00000000 */   nop
/* 30238 8002F638 03E00008 */  jr         $ra
/* 3023C 8002F63C 24020001 */   addiu     $v0, $zero, 1
.L8002F640:
/* 30240 8002F640 03E00008 */  jr         $ra
/* 30244 8002F644 00001025 */   or        $v0, $zero, $zero
.L8002F648:
/* 30248 8002F648 10610005 */  beq        $v1, $at, .L8002F660
/* 3024C 8002F64C 24010002 */   addiu     $at, $zero, 2
/* 30250 8002F650 10610003 */  beq        $v1, $at, .L8002F660
/* 30254 8002F654 24010005 */   addiu     $at, $zero, 5
/* 30258 8002F658 14610007 */  bne        $v1, $at, .L8002F678
/* 3025C 8002F65C 00001025 */   or        $v0, $zero, $zero
.L8002F660:
/* 30260 8002F660 14A60003 */  bne        $a1, $a2, .L8002F670
/* 30264 8002F664 00000000 */   nop
/* 30268 8002F668 03E00008 */  jr         $ra
/* 3026C 8002F66C 24020001 */   addiu     $v0, $zero, 1
.L8002F670:
/* 30270 8002F670 03E00008 */  jr         $ra
/* 30274 8002F674 00001025 */   or        $v0, $zero, $zero
.L8002F678:
/* 30278 8002F678 03E00008 */  jr         $ra
/* 3027C 8002F67C 00000000 */   nop

glabel func_8002F680
/* 30280 8002F680 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 30284 8002F684 AFBF0014 */  sw         $ra, 0x14($sp)
/* 30288 8002F688 AFA40018 */  sw         $a0, 0x18($sp)
/* 3028C 8002F68C 0C002C3F */  jal        func_8000B0FC
/* 30290 8002F690 AC850018 */   sw        $a1, 0x18($a0)
/* 30294 8002F694 8FAF0018 */  lw         $t7, 0x18($sp)
/* 30298 8002F698 ADE20020 */  sw         $v0, 0x20($t7)
/* 3029C 8002F69C ADE30024 */  sw         $v1, 0x24($t7)
/* 302A0 8002F6A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 302A4 8002F6A4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 302A8 8002F6A8 03E00008 */  jr         $ra
/* 302AC 8002F6AC 00000000 */   nop

glabel func_8002F6B0
/* 302B0 8002F6B0 3C02800F */  lui        $v0, %hi(D_800F1BE0)
/* 302B4 8002F6B4 24421BE0 */  addiu      $v0, $v0, %lo(D_800F1BE0)
/* 302B8 8002F6B8 8C4E0014 */  lw         $t6, 0x14($v0)
/* 302BC 8002F6BC 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 302C0 8002F6C0 AFB00018 */  sw         $s0, 0x18($sp)
/* 302C4 8002F6C4 000E7880 */  sll        $t7, $t6, 2
/* 302C8 8002F6C8 01EE7821 */  addu       $t7, $t7, $t6
/* 302CC 8002F6CC 000F7900 */  sll        $t7, $t7, 4
/* 302D0 8002F6D0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 302D4 8002F6D4 AFA40040 */  sw         $a0, 0x40($sp)
/* 302D8 8002F6D8 004F8021 */  addu       $s0, $v0, $t7
/* 302DC 8002F6DC 26100028 */  addiu      $s0, $s0, 0x28
/* 302E0 8002F6E0 0C001FA3 */  jal        func_80007E8C
/* 302E4 8002F6E4 8E040004 */   lw        $a0, 4($s0)
/* 302E8 8002F6E8 8E180000 */  lw         $t8, ($s0)
/* 302EC 8002F6EC 3C028012 */  lui        $v0, 0x8012
/* 302F0 8002F6F0 24010002 */  addiu      $at, $zero, 2
/* 302F4 8002F6F4 0018C8C0 */  sll        $t9, $t8, 3
/* 302F8 8002F6F8 0338C823 */  subu       $t9, $t9, $t8
/* 302FC 8002F6FC 0019C880 */  sll        $t9, $t9, 2
/* 30300 8002F700 0338C821 */  addu       $t9, $t9, $t8
/* 30304 8002F704 0019C880 */  sll        $t9, $t9, 2
/* 30308 8002F708 00591021 */  addu       $v0, $v0, $t9
/* 3030C 8002F70C 80425AB1 */  lb         $v0, 0x5ab1($v0)
/* 30310 8002F710 8FA40040 */  lw         $a0, 0x40($sp)
/* 30314 8002F714 10410015 */  beq        $v0, $at, .L8002F76C
/* 30318 8002F718 24010005 */   addiu     $at, $zero, 5
/* 3031C 8002F71C 1441001D */  bne        $v0, $at, .L8002F794
/* 30320 8002F720 8FA90040 */   lw        $t1, 0x40($sp)
/* 30324 8002F724 8FA40040 */  lw         $a0, 0x40($sp)
/* 30328 8002F728 0C0446F9 */  jal        func_80111BE4
/* 3032C 8002F72C 240500C5 */   addiu     $a1, $zero, 0xc5
/* 30330 8002F730 24080002 */  addiu      $t0, $zero, 2
/* 30334 8002F734 3C01800F */  lui        $at, %hi(D_800F1D18)
/* 30338 8002F738 3C053DCC */  lui        $a1, 0x3dcc
/* 3033C 8002F73C 3C06800A */  lui        $a2, %hi(D_800A5D54)
/* 30340 8002F740 AC281D18 */  sw         $t0, %lo(D_800F1D18)($at)
/* 30344 8002F744 24C65D54 */  addiu      $a2, $a2, %lo(D_800A5D54)
/* 30348 8002F748 34A5CCCD */  ori        $a1, $a1, 0xcccd
/* 3034C 8002F74C 0C009E62 */  jal        func_80027988
/* 30350 8002F750 00002025 */   or        $a0, $zero, $zero
/* 30354 8002F754 3C04800F */  lui        $a0, %hi(D_800F1BE0)
/* 30358 8002F758 24841BE0 */  addiu      $a0, $a0, %lo(D_800F1BE0)
/* 3035C 8002F75C 0C00BDA0 */  jal        func_8002F680
/* 30360 8002F760 24050003 */   addiu     $a1, $zero, 3
/* 30364 8002F764 1000008B */  b          .L8002F994
/* 30368 8002F768 8FBF001C */   lw        $ra, 0x1c($sp)
.L8002F76C:
/* 3036C 8002F76C 0C0446F9 */  jal        func_80111BE4
/* 30370 8002F770 24050092 */   addiu     $a1, $zero, 0x92
/* 30374 8002F774 0C001FA3 */  jal        func_80007E8C
/* 30378 8002F778 8E040004 */   lw        $a0, 4($s0)
/* 3037C 8002F77C 3C05800A */  lui        $a1, %hi(D_800A5D58)
/* 30380 8002F780 24A55D58 */  addiu      $a1, $a1, %lo(D_800A5D58)
/* 30384 8002F784 0C00BD68 */  jal        func_8002F5A0
/* 30388 8002F788 00402025 */   or        $a0, $v0, $zero
/* 3038C 8002F78C 10000081 */  b          .L8002F994
/* 30390 8002F790 8FBF001C */   lw        $ra, 0x1c($sp)
.L8002F794:
/* 30394 8002F794 0C001FA3 */  jal        func_80007E8C
/* 30398 8002F798 8D240084 */   lw        $a0, 0x84($t1)
/* 3039C 8002F79C 10400042 */  beqz       $v0, .L8002F8A8
/* 303A0 8002F7A0 AFA20030 */   sw        $v0, 0x30($sp)
/* 303A4 8002F7A4 3C05800F */  lui        $a1, %hi(D_800F1BF4)
/* 303A8 8002F7A8 8CA51BF4 */  lw         $a1, %lo(D_800F1BF4)($a1)
/* 303AC 8002F7AC 0C00BD7E */  jal        func_8002F5F8
/* 303B0 8002F7B0 00402025 */   or        $a0, $v0, $zero
/* 303B4 8002F7B4 14400014 */  bnez       $v0, .L8002F808
/* 303B8 8002F7B8 3C0B800F */   lui       $t3, 0x800f
/* 303BC 8002F7BC 8FA40040 */  lw         $a0, 0x40($sp)
/* 303C0 8002F7C0 0C0446F9 */  jal        func_80111BE4
/* 303C4 8002F7C4 24050092 */   addiu     $a1, $zero, 0x92
/* 303C8 8002F7C8 3C0A800F */  lui        $t2, %hi(D_800F1BF4)
/* 303CC 8002F7CC 8D4A1BF4 */  lw         $t2, %lo(D_800F1BF4)($t2)
/* 303D0 8002F7D0 24010001 */  addiu      $at, $zero, 1
/* 303D4 8002F7D4 8FA40030 */  lw         $a0, 0x30($sp)
/* 303D8 8002F7D8 15410007 */  bne        $t2, $at, .L8002F7F8
/* 303DC 8002F7DC 3C05800A */   lui       $a1, 0x800a
/* 303E0 8002F7E0 3C05800A */  lui        $a1, %hi(D_800A5D78)
/* 303E4 8002F7E4 24A55D78 */  addiu      $a1, $a1, %lo(D_800A5D78)
/* 303E8 8002F7E8 0C00BD68 */  jal        func_8002F5A0
/* 303EC 8002F7EC 8FA40030 */   lw        $a0, 0x30($sp)
/* 303F0 8002F7F0 10000068 */  b          .L8002F994
/* 303F4 8002F7F4 8FBF001C */   lw        $ra, 0x1c($sp)
.L8002F7F8:
/* 303F8 8002F7F8 0C00BD68 */  jal        func_8002F5A0
/* 303FC 8002F7FC 24A55D9C */   addiu     $a1, $a1, 0x5d9c
/* 30400 8002F800 10000064 */  b          .L8002F994
/* 30404 8002F804 8FBF001C */   lw        $ra, 0x1c($sp)
.L8002F808:
/* 30408 8002F808 8D6B1BF4 */  lw         $t3, 0x1bf4($t3)
/* 3040C 8002F80C 24010001 */  addiu      $at, $zero, 1
/* 30410 8002F810 8FAC0030 */  lw         $t4, 0x30($sp)
/* 30414 8002F814 15610021 */  bne        $t3, $at, .L8002F89C
/* 30418 8002F818 00008025 */   or        $s0, $zero, $zero
/* 3041C 8002F81C 8D850054 */  lw         $a1, 0x54($t4)
.L8002F820:
/* 30420 8002F820 3C0D800F */  lui        $t5, %hi(D_800F1BF4)
/* 30424 8002F824 8DAD1BF4 */  lw         $t5, %lo(D_800F1BF4)($t5)
/* 30428 8002F828 3C04800F */  lui        $a0, 0x800f
/* 3042C 8002F82C AFA50024 */  sw         $a1, 0x24($sp)
/* 30430 8002F830 000D7080 */  sll        $t6, $t5, 2
/* 30434 8002F834 01CD7021 */  addu       $t6, $t6, $t5
/* 30438 8002F838 000E7100 */  sll        $t6, $t6, 4
/* 3043C 8002F83C 01D07821 */  addu       $t7, $t6, $s0
/* 30440 8002F840 008F2021 */  addu       $a0, $a0, $t7
/* 30444 8002F844 0C001FA3 */  jal        func_80007E8C
/* 30448 8002F848 8C841C0C */   lw        $a0, 0x1c0c($a0)
/* 3044C 8002F84C 1040000F */  beqz       $v0, .L8002F88C
/* 30450 8002F850 8FA50024 */   lw        $a1, 0x24($sp)
/* 30454 8002F854 8C430054 */  lw         $v1, 0x54($v0)
/* 30458 8002F858 84B80004 */  lh         $t8, 4($a1)
/* 3045C 8002F85C 84790004 */  lh         $t9, 4($v1)
/* 30460 8002F860 5719000B */  bnel       $t8, $t9, .L8002F890
/* 30464 8002F864 26100008 */   addiu     $s0, $s0, 8
/* 30468 8002F868 8FA40040 */  lw         $a0, 0x40($sp)
/* 3046C 8002F86C 0C0446F9 */  jal        func_80111BE4
/* 30470 8002F870 24050092 */   addiu     $a1, $zero, 0x92
/* 30474 8002F874 3C05800A */  lui        $a1, %hi(D_800A5DC0)
/* 30478 8002F878 24A55DC0 */  addiu      $a1, $a1, %lo(D_800A5DC0)
/* 3047C 8002F87C 0C00BD68 */  jal        func_8002F5A0
/* 30480 8002F880 8FA40030 */   lw        $a0, 0x30($sp)
/* 30484 8002F884 10000043 */  b          .L8002F994
/* 30488 8002F888 8FBF001C */   lw        $ra, 0x1c($sp)
.L8002F88C:
/* 3048C 8002F88C 26100008 */  addiu      $s0, $s0, 8
.L8002F890:
/* 30490 8002F890 24010050 */  addiu      $at, $zero, 0x50
/* 30494 8002F894 1601FFE2 */  bne        $s0, $at, .L8002F820
/* 30498 8002F898 00000000 */   nop
.L8002F89C:
/* 3049C 8002F89C 8FA40030 */  lw         $a0, 0x30($sp)
/* 304A0 8002F8A0 0C045011 */  jal        func_80114044
/* 304A4 8002F8A4 24050001 */   addiu     $a1, $zero, 1
.L8002F8A8:
/* 304A8 8002F8A8 3C05800F */  lui        $a1, %hi(D_800F1BF4)
/* 304AC 8002F8AC 8CA51BF4 */  lw         $a1, %lo(D_800F1BF4)($a1)
/* 304B0 8002F8B0 8FA40040 */  lw         $a0, 0x40($sp)
/* 304B4 8002F8B4 0C00BD40 */  jal        func_8002F500
/* 304B8 8002F8B8 00003025 */   or        $a2, $zero, $zero
/* 304BC 8002F8BC 8FA80030 */  lw         $t0, 0x30($sp)
/* 304C0 8002F8C0 00408025 */  or         $s0, $v0, $zero
/* 304C4 8002F8C4 3C05800F */  lui        $a1, %hi(D_800F1BF4)
/* 304C8 8002F8C8 11000004 */  beqz       $t0, .L8002F8DC
/* 304CC 8002F8CC 01002025 */   or        $a0, $t0, $zero
/* 304D0 8002F8D0 8CA51BF4 */  lw         $a1, %lo(D_800F1BF4)($a1)
/* 304D4 8002F8D4 0C00BC45 */  jal        func_8002F114
/* 304D8 8002F8D8 00003025 */   or        $a2, $zero, $zero
.L8002F8DC:
/* 304DC 8002F8DC 1200000F */  beqz       $s0, .L8002F91C
/* 304E0 8002F8E0 8FA90030 */   lw        $t1, 0x30($sp)
/* 304E4 8002F8E4 1120000D */  beqz       $t1, .L8002F91C
/* 304E8 8002F8E8 8FA40040 */   lw        $a0, 0x40($sp)
/* 304EC 8002F8EC 0C0446F9 */  jal        func_80111BE4
/* 304F0 8002F8F0 240500C5 */   addiu     $a1, $zero, 0xc5
/* 304F4 8002F8F4 3C05800A */  lui        $a1, %hi(D_800A5DE0)
/* 304F8 8002F8F8 24A55DE0 */  addiu      $a1, $a1, %lo(D_800A5DE0)
/* 304FC 8002F8FC 0C00BD68 */  jal        func_8002F5A0
/* 30500 8002F900 8FA40030 */   lw        $a0, 0x30($sp)
/* 30504 8002F904 3C05800A */  lui        $a1, %hi(D_800A5DF8)
/* 30508 8002F908 24A55DF8 */  addiu      $a1, $a1, %lo(D_800A5DF8)
/* 3050C 8002F90C 0C00BD68 */  jal        func_8002F5A0
/* 30510 8002F910 02002025 */   or        $a0, $s0, $zero
/* 30514 8002F914 1000001F */  b          .L8002F994
/* 30518 8002F918 8FBF001C */   lw        $ra, 0x1c($sp)
.L8002F91C:
/* 3051C 8002F91C 1200000A */  beqz       $s0, .L8002F948
/* 30520 8002F920 8FAA0030 */   lw        $t2, 0x30($sp)
/* 30524 8002F924 8FA40040 */  lw         $a0, 0x40($sp)
/* 30528 8002F928 0C0446F9 */  jal        func_80111BE4
/* 3052C 8002F92C 240500C5 */   addiu     $a1, $zero, 0xc5
/* 30530 8002F930 3C05800A */  lui        $a1, %hi(D_800A5E1C)
/* 30534 8002F934 24A55E1C */  addiu      $a1, $a1, %lo(D_800A5E1C)
/* 30538 8002F938 0C00BD68 */  jal        func_8002F5A0
/* 3053C 8002F93C 02002025 */   or        $a0, $s0, $zero
/* 30540 8002F940 10000014 */  b          .L8002F994
/* 30544 8002F944 8FBF001C */   lw        $ra, 0x1c($sp)
.L8002F948:
/* 30548 8002F948 1140000A */  beqz       $t2, .L8002F974
/* 3054C 8002F94C 8FA40040 */   lw        $a0, 0x40($sp)
/* 30550 8002F950 8FA40040 */  lw         $a0, 0x40($sp)
/* 30554 8002F954 0C0446F9 */  jal        func_80111BE4
/* 30558 8002F958 240500C5 */   addiu     $a1, $zero, 0xc5
/* 3055C 8002F95C 3C05800A */  lui        $a1, %hi(D_800A5E38)
/* 30560 8002F960 24A55E38 */  addiu      $a1, $a1, %lo(D_800A5E38)
/* 30564 8002F964 0C00BD68 */  jal        func_8002F5A0
/* 30568 8002F968 8FA40030 */   lw        $a0, 0x30($sp)
/* 3056C 8002F96C 10000009 */  b          .L8002F994
/* 30570 8002F970 8FBF001C */   lw        $ra, 0x1c($sp)
.L8002F974:
/* 30574 8002F974 0C0446F9 */  jal        func_80111BE4
/* 30578 8002F978 24050092 */   addiu     $a1, $zero, 0x92
/* 3057C 8002F97C 3C06800A */  lui        $a2, %hi(D_800A5E50)
/* 30580 8002F980 24C65E50 */  addiu      $a2, $a2, %lo(D_800A5E50)
/* 30584 8002F984 00002025 */  or         $a0, $zero, $zero
/* 30588 8002F988 0C009E62 */  jal        func_80027988
/* 3058C 8002F98C 3C054000 */   lui       $a1, 0x4000
/* 30590 8002F990 8FBF001C */  lw         $ra, 0x1c($sp)
.L8002F994:
/* 30594 8002F994 8FB00018 */  lw         $s0, 0x18($sp)
/* 30598 8002F998 27BD0040 */  addiu      $sp, $sp, 0x40
/* 3059C 8002F99C 03E00008 */  jr         $ra
/* 305A0 8002F9A0 00000000 */   nop

glabel func_8002F9A4
/* 305A4 8002F9A4 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 305A8 8002F9A8 AFBF0044 */  sw         $ra, 0x44($sp)
/* 305AC 8002F9AC AFB50040 */  sw         $s5, 0x40($sp)
/* 305B0 8002F9B0 0080A825 */  or         $s5, $a0, $zero
/* 305B4 8002F9B4 AFB4003C */  sw         $s4, 0x3c($sp)
/* 305B8 8002F9B8 AFB30038 */  sw         $s3, 0x38($sp)
/* 305BC 8002F9BC AFB20034 */  sw         $s2, 0x34($sp)
/* 305C0 8002F9C0 AFB10030 */  sw         $s1, 0x30($sp)
/* 305C4 8002F9C4 AFB0002C */  sw         $s0, 0x2c($sp)
/* 305C8 8002F9C8 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 305CC 8002F9CC 0C00BAD8 */  jal        func_8002EB60
/* 305D0 8002F9D0 F7B40018 */   sdc1      $f20, 0x18($sp)
/* 305D4 8002F9D4 3C01447A */  lui        $at, 0x447a
/* 305D8 8002F9D8 3C12800A */  lui        $s2, %hi(D_8009A5C8)
/* 305DC 8002F9DC 4481A000 */  mtc1       $at, $f20
/* 305E0 8002F9E0 4480B000 */  mtc1       $zero, $f22
/* 305E4 8002F9E4 2652A5C8 */  addiu      $s2, $s2, %lo(D_8009A5C8)
/* 305E8 8002F9E8 00008825 */  or         $s1, $zero, $zero
/* 305EC 8002F9EC 00009825 */  or         $s3, $zero, $zero
/* 305F0 8002F9F0 2414FFFF */  addiu      $s4, $zero, -1
.L8002F9F4:
/* 305F4 8002F9F4 8E440000 */  lw         $a0, ($s2)
/* 305F8 8002F9F8 52840006 */  beql       $s4, $a0, .L8002FA14
/* 305FC 8002F9FC 8E4E0004 */   lw        $t6, 4($s2)
/* 30600 8002FA00 0C00CB07 */  jal        __osSpSetPc
/* 30604 8002FA04 00000000 */   nop
/* 30608 8002FA08 1040000F */  beqz       $v0, .L8002FA48
/* 3060C 8002FA0C 02B38021 */   addu      $s0, $s5, $s3
/* 30610 8002FA10 8E4E0004 */  lw         $t6, 4($s2)
.L8002FA14:
/* 30614 8002FA14 4406A000 */  mfc1       $a2, $f20
/* 30618 8002FA18 4407B000 */  mfc1       $a3, $f22
/* 3061C 8002FA1C 4600A306 */  mov.s      $f12, $f20
/* 30620 8002FA20 4600A386 */  mov.s      $f14, $f20
/* 30624 8002FA24 E7B60010 */  swc1       $f22, 0x10($sp)
/* 30628 8002FA28 0C044E51 */  jal        func_80113944
/* 3062C 8002FA2C AFAE0014 */   sw        $t6, 0x14($sp)
/* 30630 8002FA30 00402025 */  or         $a0, $v0, $zero
/* 30634 8002FA34 24050001 */  addiu      $a1, $zero, 1
/* 30638 8002FA38 0C00BC45 */  jal        func_8002F114
/* 3063C 8002FA3C 02203025 */   or        $a2, $s1, $zero
/* 30640 8002FA40 10000004 */  b          .L8002FA54
/* 30644 8002FA44 26310001 */   addiu     $s1, $s1, 1
.L8002FA48:
/* 30648 8002FA48 AE00007C */  sw         $zero, 0x7c($s0)
/* 3064C 8002FA4C AE000078 */  sw         $zero, 0x78($s0)
/* 30650 8002FA50 26310001 */  addiu      $s1, $s1, 1
.L8002FA54:
/* 30654 8002FA54 2A21000A */  slti       $at, $s1, 0xa
/* 30658 8002FA58 26730008 */  addiu      $s3, $s3, 8
/* 3065C 8002FA5C 1420FFE5 */  bnez       $at, .L8002F9F4
/* 30660 8002FA60 26520008 */   addiu     $s2, $s2, 8
/* 30664 8002FA64 00008825 */  or         $s1, $zero, $zero
/* 30668 8002FA68 02A08025 */  or         $s0, $s5, $zero
/* 3066C 8002FA6C 2412000A */  addiu      $s2, $zero, 0xa
.L8002FA70:
/* 30670 8002FA70 8E0F0028 */  lw         $t7, 0x28($s0)
/* 30674 8002FA74 51E0000E */  beql       $t7, $zero, .L8002FAB0
/* 30678 8002FA78 26310001 */   addiu     $s1, $s1, 1
/* 3067C 8002FA7C E7B60010 */  swc1       $f22, 0x10($sp)
/* 30680 8002FA80 8E180028 */  lw         $t8, 0x28($s0)
/* 30684 8002FA84 4406A000 */  mfc1       $a2, $f20
/* 30688 8002FA88 4407B000 */  mfc1       $a3, $f22
/* 3068C 8002FA8C 4600A306 */  mov.s      $f12, $f20
/* 30690 8002FA90 4600A386 */  mov.s      $f14, $f20
/* 30694 8002FA94 0C044E51 */  jal        func_80113944
/* 30698 8002FA98 AFB80014 */   sw        $t8, 0x14($sp)
/* 3069C 8002FA9C 00402025 */  or         $a0, $v0, $zero
/* 306A0 8002FAA0 00002825 */  or         $a1, $zero, $zero
/* 306A4 8002FAA4 0C00BC45 */  jal        func_8002F114
/* 306A8 8002FAA8 02203025 */   or        $a2, $s1, $zero
/* 306AC 8002FAAC 26310001 */  addiu      $s1, $s1, 1
.L8002FAB0:
/* 306B0 8002FAB0 1632FFEF */  bne        $s1, $s2, .L8002FA70
/* 306B4 8002FAB4 26100008 */   addiu     $s0, $s0, 8
/* 306B8 8002FAB8 8EB900F0 */  lw         $t9, 0xf0($s5)
/* 306BC 8002FABC 26B000F0 */  addiu      $s0, $s5, 0xf0
/* 306C0 8002FAC0 5320000D */  beql       $t9, $zero, .L8002FAF8
/* 306C4 8002FAC4 8EA900F8 */   lw        $t1, 0xf8($s5)
/* 306C8 8002FAC8 E7B60010 */  swc1       $f22, 0x10($sp)
/* 306CC 8002FACC 8E080000 */  lw         $t0, ($s0)
/* 306D0 8002FAD0 4406A000 */  mfc1       $a2, $f20
/* 306D4 8002FAD4 4407B000 */  mfc1       $a3, $f22
/* 306D8 8002FAD8 4600A306 */  mov.s      $f12, $f20
/* 306DC 8002FADC 4600A386 */  mov.s      $f14, $f20
/* 306E0 8002FAE0 0C044E51 */  jal        func_80113944
/* 306E4 8002FAE4 AFA80014 */   sw        $t0, 0x14($sp)
/* 306E8 8002FAE8 AE000000 */  sw         $zero, ($s0)
/* 306EC 8002FAEC 0C00BCBC */  jal        func_8002F2F0
/* 306F0 8002FAF0 00402025 */   or        $a0, $v0, $zero
/* 306F4 8002FAF4 8EA900F8 */  lw         $t1, 0xf8($s5)
.L8002FAF8:
/* 306F8 8002FAF8 26B000F8 */  addiu      $s0, $s5, 0xf8
/* 306FC 8002FAFC 1120000C */  beqz       $t1, .L8002FB30
/* 30700 8002FB00 00000000 */   nop
/* 30704 8002FB04 E7B60010 */  swc1       $f22, 0x10($sp)
/* 30708 8002FB08 8E0A0000 */  lw         $t2, ($s0)
/* 3070C 8002FB0C 4406A000 */  mfc1       $a2, $f20
/* 30710 8002FB10 4407B000 */  mfc1       $a3, $f22
/* 30714 8002FB14 4600A306 */  mov.s      $f12, $f20
/* 30718 8002FB18 4600A386 */  mov.s      $f14, $f20
/* 3071C 8002FB1C 0C044E51 */  jal        func_80113944
/* 30720 8002FB20 AFAA0014 */   sw        $t2, 0x14($sp)
/* 30724 8002FB24 AE000000 */  sw         $zero, ($s0)
/* 30728 8002FB28 0C00BCCE */  jal        func_8002F338
/* 3072C 8002FB2C 00402025 */   or        $a0, $v0, $zero
.L8002FB30:
/* 30730 8002FB30 0C00BAD8 */  jal        func_8002EB60
/* 30734 8002FB34 02A02025 */   or        $a0, $s5, $zero
/* 30738 8002FB38 8FBF0044 */  lw         $ra, 0x44($sp)
/* 3073C 8002FB3C D7B40018 */  ldc1       $f20, 0x18($sp)
/* 30740 8002FB40 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 30744 8002FB44 8FB0002C */  lw         $s0, 0x2c($sp)
/* 30748 8002FB48 8FB10030 */  lw         $s1, 0x30($sp)
/* 3074C 8002FB4C 8FB20034 */  lw         $s2, 0x34($sp)
/* 30750 8002FB50 8FB30038 */  lw         $s3, 0x38($sp)
/* 30754 8002FB54 8FB4003C */  lw         $s4, 0x3c($sp)
/* 30758 8002FB58 8FB50040 */  lw         $s5, 0x40($sp)
/* 3075C 8002FB5C 03E00008 */  jr         $ra
/* 30760 8002FB60 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8002FB64
/* 30764 8002FB64 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 30768 8002FB68 AFBF003C */  sw         $ra, 0x3c($sp)
/* 3076C 8002FB6C 3C04800A */  lui        $a0, 0x800a
/* 30770 8002FB70 AFB40038 */  sw         $s4, 0x38($sp)
/* 30774 8002FB74 AFB30034 */  sw         $s3, 0x34($sp)
/* 30778 8002FB78 AFB20030 */  sw         $s2, 0x30($sp)
/* 3077C 8002FB7C AFB1002C */  sw         $s1, 0x2c($sp)
/* 30780 8002FB80 AFB00028 */  sw         $s0, 0x28($sp)
/* 30784 8002FB84 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 30788 8002FB88 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 3078C 8002FB8C 0C002114 */  jal        func_80008450
/* 30790 8002FB90 2484A3F0 */   addiu     $a0, $a0, -0x5c10
/* 30794 8002FB94 00408025 */  or         $s0, $v0, $zero
/* 30798 8002FB98 00402025 */  or         $a0, $v0, $zero
/* 3079C 8002FB9C 0C00237A */  jal        func_80008DE8
/* 307A0 8002FBA0 24052000 */   addiu     $a1, $zero, 0x2000
/* 307A4 8002FBA4 0C00219D */  jal        func_80008674
/* 307A8 8002FBA8 02002025 */   or        $a0, $s0, $zero
/* 307AC 8002FBAC 3C128013 */  lui        $s2, %hi(D_80133DE4)
/* 307B0 8002FBB0 26523DE4 */  addiu      $s2, $s2, %lo(D_80133DE4)
/* 307B4 8002FBB4 8E4E0000 */  lw         $t6, ($s2)
/* 307B8 8002FBB8 3C01800F */  lui        $at, 0x800f
/* 307BC 8002FBBC 3C09800F */  lui        $t1, 0x800f
/* 307C0 8002FBC0 C5C4000C */  lwc1       $f4, 0xc($t6)
/* 307C4 8002FBC4 3C04800F */  lui        $a0, 0x800f
/* 307C8 8002FBC8 3C05800F */  lui        $a1, 0x800f
/* 307CC 8002FBCC E6040000 */  swc1       $f4, ($s0)
/* 307D0 8002FBD0 8E4F0000 */  lw         $t7, ($s2)
/* 307D4 8002FBD4 3C11800F */  lui        $s1, 0x800f
/* 307D8 8002FBD8 3C14800F */  lui        $s4, 0x800f
/* 307DC 8002FBDC C5E6000C */  lwc1       $f6, 0xc($t7)
/* 307E0 8002FBE0 3C13800A */  lui        $s3, 0x800a
/* 307E4 8002FBE4 4480A000 */  mtc1       $zero, $f20
/* 307E8 8002FBE8 E6060004 */  swc1       $f6, 4($s0)
/* 307EC 8002FBEC 8E580000 */  lw         $t8, ($s2)
/* 307F0 8002FBF0 24A51C80 */  addiu      $a1, $a1, 0x1c80
/* 307F4 8002FBF4 24841BE0 */  addiu      $a0, $a0, 0x1be0
/* 307F8 8002FBF8 C708000C */  lwc1       $f8, 0xc($t8)
/* 307FC 8002FBFC 2673A540 */  addiu      $s3, $s3, -0x5ac0
/* 30800 8002FC00 26941C08 */  addiu      $s4, $s4, 0x1c08
/* 30804 8002FC04 E6080008 */  swc1       $f8, 8($s0)
/* 30808 8002FC08 AC301BE0 */  sw         $s0, 0x1be0($at)
/* 3080C 8002FC0C 8E19002C */  lw         $t9, 0x2c($s0)
/* 30810 8002FC10 26311BE0 */  addiu      $s1, $s1, 0x1be0
/* 30814 8002FC14 8F280028 */  lw         $t0, 0x28($t9)
/* 30818 8002FC18 AC281BE4 */  sw         $t0, 0x1be4($at)
/* 3081C 8002FC1C 8D291BE4 */  lw         $t1, 0x1be4($t1)
/* 30820 8002FC20 3C01800F */  lui        $at, %hi(D_800F1BE8)
/* 30824 8002FC24 8D2A0028 */  lw         $t2, 0x28($t1)
/* 30828 8002FC28 AC2A1BE8 */  sw         $t2, %lo(D_800F1BE8)($at)
/* 3082C 8002FC2C 00001025 */  or         $v0, $zero, $zero
.L8002FC30:
/* 30830 8002FC30 00801825 */  or         $v1, $a0, $zero
.L8002FC34:
/* 30834 8002FC34 24420001 */  addiu      $v0, $v0, 1
/* 30838 8002FC38 2841000A */  slti       $at, $v0, 0xa
/* 3083C 8002FC3C 24630008 */  addiu      $v1, $v1, 8
/* 30840 8002FC40 1420FFFC */  bnez       $at, .L8002FC34
/* 30844 8002FC44 AC600024 */   sw        $zero, 0x24($v1)
/* 30848 8002FC48 24840050 */  addiu      $a0, $a0, 0x50
/* 3084C 8002FC4C 0085082B */  sltu       $at, $a0, $a1
/* 30850 8002FC50 5420FFF7 */  bnel       $at, $zero, .L8002FC30
/* 30854 8002FC54 00001025 */   or        $v0, $zero, $zero
/* 30858 8002FC58 3C01800F */  lui        $at, %hi(D_800F1CD4)
/* 3085C 8002FC5C AC201CD4 */  sw         $zero, %lo(D_800F1CD4)($at)
/* 30860 8002FC60 3C01800F */  lui        $at, %hi(D_800F1CDC)
/* 30864 8002FC64 AC201CDC */  sw         $zero, %lo(D_800F1CDC)($at)
/* 30868 8002FC68 3C01800A */  lui        $at, %hi(D_800A5F58)
/* 3086C 8002FC6C C4365F58 */  lwc1       $f22, %lo(D_800A5F58)($at)
.L8002FC70:
/* 30870 8002FC70 0C002114 */  jal        func_80008450
/* 30874 8002FC74 02602025 */   or        $a0, $s3, $zero
/* 30878 8002FC78 00408025 */  or         $s0, $v0, $zero
/* 3087C 8002FC7C 00402025 */  or         $a0, $v0, $zero
/* 30880 8002FC80 0C00237A */  jal        func_80008DE8
/* 30884 8002FC84 24052000 */   addiu     $a1, $zero, 0x2000
/* 30888 8002FC88 0C00219D */  jal        func_80008674
/* 3088C 8002FC8C 02002025 */   or        $a0, $s0, $zero
/* 30890 8002FC90 E614000C */  swc1       $f20, 0xc($s0)
/* 30894 8002FC94 E6140010 */  swc1       $f20, 0x10($s0)
/* 30898 8002FC98 E6140014 */  swc1       $f20, 0x14($s0)
/* 3089C 8002FC9C E6140018 */  swc1       $f20, 0x18($s0)
/* 308A0 8002FCA0 E614001C */  swc1       $f20, 0x1c($s0)
/* 308A4 8002FCA4 E6140020 */  swc1       $f20, 0x20($s0)
/* 308A8 8002FCA8 8E4B0000 */  lw         $t3, ($s2)
/* 308AC 8002FCAC 8E0E0038 */  lw         $t6, 0x38($s0)
/* 308B0 8002FCB0 26310004 */  addiu      $s1, $s1, 4
/* 308B4 8002FCB4 C56A000C */  lwc1       $f10, 0xc($t3)
/* 308B8 8002FCB8 0234082B */  sltu       $at, $s1, $s4
/* 308BC 8002FCBC 46165402 */  mul.s      $f16, $f10, $f22
/* 308C0 8002FCC0 E6100000 */  swc1       $f16, ($s0)
/* 308C4 8002FCC4 8E4C0000 */  lw         $t4, ($s2)
/* 308C8 8002FCC8 C592000C */  lwc1       $f18, 0xc($t4)
/* 308CC 8002FCCC 46169102 */  mul.s      $f4, $f18, $f22
/* 308D0 8002FCD0 E6040004 */  swc1       $f4, 4($s0)
/* 308D4 8002FCD4 8E4D0000 */  lw         $t5, ($s2)
/* 308D8 8002FCD8 C5A6000C */  lwc1       $f6, 0xc($t5)
/* 308DC 8002FCDC 46163202 */  mul.s      $f8, $f6, $f22
/* 308E0 8002FCE0 E6080008 */  swc1       $f8, 8($s0)
/* 308E4 8002FCE4 1420FFE2 */  bnez       $at, .L8002FC70
/* 308E8 8002FCE8 AE2E00C4 */   sw        $t6, 0xc4($s1)
/* 308EC 8002FCEC 3C10800F */  lui        $s0, 0x800f
/* 308F0 8002FCF0 3C11800A */  lui        $s1, %hi(D_8009A64C)
/* 308F4 8002FCF4 3C13800A */  lui        $s3, %hi(D_8009A654)
/* 308F8 8002FCF8 3C128007 */  lui        $s2, %hi(D_80074DE0)
/* 308FC 8002FCFC 26524DE0 */  addiu      $s2, $s2, %lo(D_80074DE0)
/* 30900 8002FD00 2673A654 */  addiu      $s3, $s3, %lo(D_8009A654)
/* 30904 8002FD04 2631A64C */  addiu      $s1, $s1, %lo(D_8009A64C)
/* 30908 8002FD08 26101D28 */  addiu      $s0, $s0, 0x1d28
.L8002FD0C:
/* 3090C 8002FD0C AE000000 */  sw         $zero, ($s0)
/* 30910 8002FD10 02002025 */  or         $a0, $s0, $zero
/* 30914 8002FD14 8E250000 */  lw         $a1, ($s1)
/* 30918 8002FD18 0C00F770 */  jal        func_8003DDC0
/* 3091C 8002FD1C 02403025 */   or        $a2, $s2, $zero
/* 30920 8002FD20 26310004 */  addiu      $s1, $s1, 4
/* 30924 8002FD24 1633FFF9 */  bne        $s1, $s3, .L8002FD0C
/* 30928 8002FD28 26100004 */   addiu     $s0, $s0, 4
/* 3092C 8002FD2C 3C04800F */  lui        $a0, %hi(D_800F1BE0)
/* 30930 8002FD30 0C00BE69 */  jal        func_8002F9A4
/* 30934 8002FD34 24841BE0 */   addiu     $a0, $a0, %lo(D_800F1BE0)
/* 30938 8002FD38 8FBF003C */  lw         $ra, 0x3c($sp)
/* 3093C 8002FD3C D7B40018 */  ldc1       $f20, 0x18($sp)
/* 30940 8002FD40 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 30944 8002FD44 8FB00028 */  lw         $s0, 0x28($sp)
/* 30948 8002FD48 8FB1002C */  lw         $s1, 0x2c($sp)
/* 3094C 8002FD4C 8FB20030 */  lw         $s2, 0x30($sp)
/* 30950 8002FD50 8FB30034 */  lw         $s3, 0x34($sp)
/* 30954 8002FD54 8FB40038 */  lw         $s4, 0x38($sp)
/* 30958 8002FD58 03E00008 */  jr         $ra
/* 3095C 8002FD5C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8002FD60
/* 30960 8002FD60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 30964 8002FD64 AFBF0014 */  sw         $ra, 0x14($sp)
/* 30968 8002FD68 3C04800F */  lui        $a0, %hi(D_800F1BE0)
/* 3096C 8002FD6C 24841BE0 */  addiu      $a0, $a0, %lo(D_800F1BE0)
/* 30970 8002FD70 0C014388 */  jal        _bzero
/* 30974 8002FD74 24050100 */   addiu     $a1, $zero, 0x100
/* 30978 8002FD78 240E0001 */  addiu      $t6, $zero, 1
/* 3097C 8002FD7C 3C01800F */  lui        $at, %hi(D_800F1BF4)
/* 30980 8002FD80 AC2E1BF4 */  sw         $t6, %lo(D_800F1BF4)($at)
/* 30984 8002FD84 3C0F800F */  lui        $t7, %hi(D_800F1BE0)
/* 30988 8002FD88 3C01800F */  lui        $at, %hi(D_800F1D18)
/* 3098C 8002FD8C 25E51BE0 */  addiu      $a1, $t7, %lo(D_800F1BE0)
/* 30990 8002FD90 3C07800F */  lui        $a3, %hi(D_800F1C80)
/* 30994 8002FD94 AC201D18 */  sw         $zero, %lo(D_800F1D18)($at)
/* 30998 8002FD98 24E71C80 */  addiu      $a3, $a3, %lo(D_800F1C80)
/* 3099C 8002FD9C 00A03025 */  or         $a2, $a1, $zero
/* 309A0 8002FDA0 2404000A */  addiu      $a0, $zero, 0xa
.L8002FDA4:
/* 309A4 8002FDA4 ACA0002C */  sw         $zero, 0x2c($a1)
/* 309A8 8002FDA8 ACA00028 */  sw         $zero, 0x28($a1)
/* 309AC 8002FDAC ACA00034 */  sw         $zero, 0x34($a1)
/* 309B0 8002FDB0 ACA00030 */  sw         $zero, 0x30($a1)
/* 309B4 8002FDB4 24030002 */  addiu      $v1, $zero, 2
/* 309B8 8002FDB8 24C20010 */  addiu      $v0, $a2, 0x10
.L8002FDBC:
/* 309BC 8002FDBC 24630004 */  addiu      $v1, $v1, 4
/* 309C0 8002FDC0 AC400034 */  sw         $zero, 0x34($v0)
/* 309C4 8002FDC4 AC400030 */  sw         $zero, 0x30($v0)
/* 309C8 8002FDC8 AC40003C */  sw         $zero, 0x3c($v0)
/* 309CC 8002FDCC AC400038 */  sw         $zero, 0x38($v0)
/* 309D0 8002FDD0 AC400044 */  sw         $zero, 0x44($v0)
/* 309D4 8002FDD4 AC400040 */  sw         $zero, 0x40($v0)
/* 309D8 8002FDD8 24420020 */  addiu      $v0, $v0, 0x20
/* 309DC 8002FDDC AC40000C */  sw         $zero, 0xc($v0)
/* 309E0 8002FDE0 1464FFF6 */  bne        $v1, $a0, .L8002FDBC
/* 309E4 8002FDE4 AC400008 */   sw        $zero, 8($v0)
/* 309E8 8002FDE8 24A50050 */  addiu      $a1, $a1, 0x50
/* 309EC 8002FDEC 14A7FFED */  bne        $a1, $a3, .L8002FDA4
/* 309F0 8002FDF0 24C60050 */   addiu     $a2, $a2, 0x50
/* 309F4 8002FDF4 3C01800F */  lui        $at, %hi(D_800F1CD4)
/* 309F8 8002FDF8 AC201CD4 */  sw         $zero, %lo(D_800F1CD4)($at)
/* 309FC 8002FDFC AC201CD0 */  sw         $zero, 0x1cd0($at)
/* 30A00 8002FE00 3C01800F */  lui        $at, %hi(D_800F1CDC)
/* 30A04 8002FE04 8FBF0014 */  lw         $ra, 0x14($sp)
/* 30A08 8002FE08 AC201CDC */  sw         $zero, %lo(D_800F1CDC)($at)
/* 30A0C 8002FE0C AC201CD8 */  sw         $zero, 0x1cd8($at)
/* 30A10 8002FE10 3C01800F */  lui        $at, %hi(D_800F1C58)
/* 30A14 8002FE14 241800A4 */  addiu      $t8, $zero, 0xa4
/* 30A18 8002FE18 AC381C58 */  sw         $t8, %lo(D_800F1C58)($at)
/* 30A1C 8002FE1C 03E00008 */  jr         $ra
/* 30A20 8002FE20 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002FE24
/* 30A24 8002FE24 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 30A28 8002FE28 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 30A2C 8002FE2C AFBF002C */  sw         $ra, 0x2c($sp)
/* 30A30 8002FE30 AFB20028 */  sw         $s2, 0x28($sp)
/* 30A34 8002FE34 AFB10024 */  sw         $s1, 0x24($sp)
/* 30A38 8002FE38 AFB00020 */  sw         $s0, 0x20($sp)
/* 30A3C 8002FE3C 4480A000 */  mtc1       $zero, $f20
/* 30A40 8002FE40 8C8E0004 */  lw         $t6, 4($a0)
/* 30A44 8002FE44 3C014334 */  lui        $at, 0x4334
/* 30A48 8002FE48 44812000 */  mtc1       $at, $f4
/* 30A4C 8002FE4C E5D4000C */  swc1       $f20, 0xc($t6)
/* 30A50 8002FE50 8C8F0004 */  lw         $t7, 4($a0)
/* 30A54 8002FE54 00808825 */  or         $s1, $a0, $zero
/* 30A58 8002FE58 00008025 */  or         $s0, $zero, $zero
/* 30A5C 8002FE5C E5F40010 */  swc1       $f20, 0x10($t7)
/* 30A60 8002FE60 8C980004 */  lw         $t8, 4($a0)
/* 30A64 8002FE64 24120050 */  addiu      $s2, $zero, 0x50
/* 30A68 8002FE68 E7140014 */  swc1       $f20, 0x14($t8)
/* 30A6C 8002FE6C 8C990008 */  lw         $t9, 8($a0)
/* 30A70 8002FE70 E7340018 */  swc1       $f20, 0x18($t9)
/* 30A74 8002FE74 8C880008 */  lw         $t0, 8($a0)
/* 30A78 8002FE78 E514001C */  swc1       $f20, 0x1c($t0)
/* 30A7C 8002FE7C 8C890008 */  lw         $t1, 8($a0)
/* 30A80 8002FE80 E5340020 */  swc1       $f20, 0x20($t1)
/* 30A84 8002FE84 AC80000C */  sw         $zero, 0xc($a0)
/* 30A88 8002FE88 E4840010 */  swc1       $f4, 0x10($a0)
/* 30A8C 8002FE8C 8E2A0014 */  lw         $t2, 0x14($s1)
.L8002FE90:
/* 30A90 8002FE90 000A5880 */  sll        $t3, $t2, 2
/* 30A94 8002FE94 016A5821 */  addu       $t3, $t3, $t2
/* 30A98 8002FE98 000B5900 */  sll        $t3, $t3, 4
/* 30A9C 8002FE9C 022B6021 */  addu       $t4, $s1, $t3
/* 30AA0 8002FEA0 01906821 */  addu       $t5, $t4, $s0
/* 30AA4 8002FEA4 8DA4002C */  lw         $a0, 0x2c($t5)
/* 30AA8 8002FEA8 50800007 */  beql       $a0, $zero, .L8002FEC8
/* 30AAC 8002FEAC 26100008 */   addiu     $s0, $s0, 8
/* 30AB0 8002FEB0 0C001FA3 */  jal        func_80007E8C
/* 30AB4 8002FEB4 00000000 */   nop
/* 30AB8 8002FEB8 E454000C */  swc1       $f20, 0xc($v0)
/* 30ABC 8002FEBC E4540010 */  swc1       $f20, 0x10($v0)
/* 30AC0 8002FEC0 E4540014 */  swc1       $f20, 0x14($v0)
/* 30AC4 8002FEC4 26100008 */  addiu      $s0, $s0, 8
.L8002FEC8:
/* 30AC8 8002FEC8 5612FFF1 */  bnel       $s0, $s2, .L8002FE90
/* 30ACC 8002FECC 8E2A0014 */   lw        $t2, 0x14($s1)
/* 30AD0 8002FED0 8FBF002C */  lw         $ra, 0x2c($sp)
/* 30AD4 8002FED4 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 30AD8 8002FED8 8FB00020 */  lw         $s0, 0x20($sp)
/* 30ADC 8002FEDC 8FB10024 */  lw         $s1, 0x24($sp)
/* 30AE0 8002FEE0 8FB20028 */  lw         $s2, 0x28($sp)
/* 30AE4 8002FEE4 03E00008 */  jr         $ra
/* 30AE8 8002FEE8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8002FEEC
/* 30AEC 8002FEEC 27BDFF60 */  addiu      $sp, $sp, -0xa0
/* 30AF0 8002FEF0 AFB30054 */  sw         $s3, 0x54($sp)
/* 30AF4 8002FEF4 3C13800F */  lui        $s3, %hi(D_800F1BE0)
/* 30AF8 8002FEF8 26731BE0 */  addiu      $s3, $s3, %lo(D_800F1BE0)
/* 30AFC 8002FEFC 8E6E0014 */  lw         $t6, 0x14($s3)
/* 30B00 8002FF00 3C01C0C0 */  lui        $at, 0xc0c0
/* 30B04 8002FF04 44812000 */  mtc1       $at, $f4
/* 30B08 8002FF08 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 30B0C 8002FF0C 4486A000 */  mtc1       $a2, $f20
/* 30B10 8002FF10 F7BA0030 */  sdc1       $f26, 0x30($sp)
/* 30B14 8002FF14 3C01C0A0 */  lui        $at, 0xc0a0
/* 30B18 8002FF18 000E7880 */  sll        $t7, $t6, 2
/* 30B1C 8002FF1C F7BC0038 */  sdc1       $f28, 0x38($sp)
/* 30B20 8002FF20 4481D000 */  mtc1       $at, $f26
/* 30B24 8002FF24 01EE7821 */  addu       $t7, $t7, $t6
/* 30B28 8002FF28 AFB70064 */  sw         $s7, 0x64($sp)
/* 30B2C 8002FF2C AFB60060 */  sw         $s6, 0x60($sp)
/* 30B30 8002FF30 F7B80028 */  sdc1       $f24, 0x28($sp)
/* 30B34 8002FF34 000F7900 */  sll        $t7, $t7, 4
/* 30B38 8002FF38 3C0143B4 */  lui        $at, 0x43b4
/* 30B3C 8002FF3C 46142700 */  add.s      $f28, $f4, $f20
/* 30B40 8002FF40 AFBE0068 */  sw         $fp, 0x68($sp)
/* 30B44 8002FF44 AFB5005C */  sw         $s5, 0x5c($sp)
/* 30B48 8002FF48 AFB40058 */  sw         $s4, 0x58($sp)
/* 30B4C 8002FF4C AFB20050 */  sw         $s2, 0x50($sp)
/* 30B50 8002FF50 AFB1004C */  sw         $s1, 0x4c($sp)
/* 30B54 8002FF54 F7BE0040 */  sdc1       $f30, 0x40($sp)
/* 30B58 8002FF58 026F1021 */  addu       $v0, $s3, $t7
/* 30B5C 8002FF5C 3C16800B */  lui        $s6, 0x800b
/* 30B60 8002FF60 3C17800F */  lui        $s7, 0x800f
/* 30B64 8002FF64 4481A000 */  mtc1       $at, $f20
/* 30B68 8002FF68 4480C000 */  mtc1       $zero, $f24
/* 30B6C 8002FF6C 46006786 */  mov.s      $f30, $f12
/* 30B70 8002FF70 AFBF006C */  sw         $ra, 0x6c($sp)
/* 30B74 8002FF74 AFB00048 */  sw         $s0, 0x48($sp)
/* 30B78 8002FF78 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 30B7C 8002FF7C E7AE00A4 */  swc1       $f14, 0xa4($sp)
/* 30B80 8002FF80 24520028 */  addiu      $s2, $v0, 0x28
/* 30B84 8002FF84 26F71CE8 */  addiu      $s7, $s7, 0x1ce8
/* 30B88 8002FF88 26D6E4E4 */  addiu      $s6, $s6, -0x1b1c
/* 30B8C 8002FF8C 00008825 */  or         $s1, $zero, $zero
/* 30B90 8002FF90 24140086 */  addiu      $s4, $zero, 0x86
/* 30B94 8002FF94 2415000A */  addiu      $s5, $zero, 0xa
/* 30B98 8002FF98 27BE007C */  addiu      $fp, $sp, 0x7c
.L8002FF9C:
/* 30B9C 8002FF9C 8E440004 */  lw         $a0, 4($s2)
/* 30BA0 8002FFA0 0011C080 */  sll        $t8, $s1, 2
/* 30BA4 8002FFA4 0278C821 */  addu       $t9, $s3, $t8
/* 30BA8 8002FFA8 10800005 */  beqz       $a0, .L8002FFC0
/* 30BAC 8002FFAC 00000000 */   nop
/* 30BB0 8002FFB0 0C001FA3 */  jal        func_80007E8C
/* 30BB4 8002FFB4 00000000 */   nop
/* 30BB8 8002FFB8 10000004 */  b          .L8002FFCC
/* 30BBC 8002FFBC 00408025 */   or        $s0, $v0, $zero
.L8002FFC0:
/* 30BC0 8002FFC0 0C001FA3 */  jal        func_80007E8C
/* 30BC4 8002FFC4 8F2400C8 */   lw        $a0, 0xc8($t9)
/* 30BC8 8002FFC8 00408025 */  or         $s0, $v0, $zero
.L8002FFCC:
/* 30BCC 8002FFCC 44913000 */  mtc1       $s1, $f6
/* 30BD0 8002FFD0 3C014210 */  lui        $at, 0x4210
/* 30BD4 8002FFD4 44815000 */  mtc1       $at, $f10
/* 30BD8 8002FFD8 46803220 */  cvt.s.w    $f8, $f6
/* 30BDC 8002FFDC 3C0142B4 */  lui        $at, 0x42b4
/* 30BE0 8002FFE0 44812000 */  mtc1       $at, $f4
/* 30BE4 8002FFE4 460A4402 */  mul.s      $f16, $f8, $f10
/* 30BE8 8002FFE8 461E8480 */  add.s      $f18, $f16, $f30
/* 30BEC 8002FFEC 46049581 */  sub.s      $f22, $f18, $f4
/* 30BF0 8002FFF0 0C00F134 */  jal        func_8003C4D0
/* 30BF4 8002FFF4 4600B306 */   mov.s     $f12, $f22
/* 30BF8 8002FFF8 46000180 */  add.s      $f6, $f0, $f0
/* 30BFC 8002FFFC 4600B306 */  mov.s      $f12, $f22
/* 30C00 80030000 0C00F0F7 */  jal        func_8003C3DC
/* 30C04 80030004 E7A6007C */   swc1      $f6, 0x7c($sp)
/* 30C08 80030008 3C013F00 */  lui        $at, 0x3f00
/* 30C0C 8003000C 44814000 */  mtc1       $at, $f8
/* 30C10 80030010 C7B000A4 */  lwc1       $f16, 0xa4($sp)
/* 30C14 80030014 4600B306 */  mov.s      $f12, $f22
/* 30C18 80030018 46080282 */  mul.s      $f10, $f0, $f8
/* 30C1C 8003001C 46105480 */  add.s      $f18, $f10, $f16
/* 30C20 80030020 0C00F0F7 */  jal        func_8003C3DC
/* 30C24 80030024 E7B20080 */   swc1      $f18, 0x80($sp)
/* 30C28 80030028 3C013FC0 */  lui        $at, 0x3fc0
/* 30C2C 8003002C 44812000 */  mtc1       $at, $f4
/* 30C30 80030030 02E02025 */  or         $a0, $s7, $zero
/* 30C34 80030034 03C02825 */  or         $a1, $fp, $zero
/* 30C38 80030038 46040182 */  mul.s      $f6, $f0, $f4
/* 30C3C 8003003C 26060018 */  addiu      $a2, $s0, 0x18
/* 30C40 80030040 4606E201 */  sub.s      $f8, $f28, $f6
/* 30C44 80030044 0C00FEE4 */  jal        func_8003FB90
/* 30C48 80030048 E7A80084 */   swc1      $f8, 0x84($sp)
/* 30C4C 8003004C 16200005 */  bnez       $s1, .L80030064
/* 30C50 80030050 02002025 */   or        $a0, $s0, $zero
/* 30C54 80030054 96080034 */  lhu        $t0, 0x34($s0)
/* 30C58 80030058 3C01800F */  lui        $at, 0x800f
/* 30C5C 8003005C 12880006 */  beq        $s4, $t0, .L80030078
/* 30C60 80030060 00000000 */   nop
.L80030064:
/* 30C64 80030064 4405D000 */  mfc1       $a1, $f26
/* 30C68 80030068 0C00BADA */  jal        func_8002EB68
/* 30C6C 8003006C 3C064334 */   lui       $a2, 0x4334
/* 30C70 80030070 1000001F */  b          .L800300F0
/* 30C74 80030074 00000000 */   nop
.L80030078:
/* 30C78 80030078 C4201BF0 */  lwc1       $f0, 0x1bf0($at)
/* 30C7C 8003007C 3C0142C8 */  lui        $at, 0x42c8
/* 30C80 80030080 44818000 */  mtc1       $at, $f16
/* 30C84 80030084 C6CA0000 */  lwc1       $f10, ($s6)
/* 30C88 80030088 4405D000 */  mfc1       $a1, $f26
/* 30C8C 8003008C 3C01800F */  lui        $at, 0x800f
/* 30C90 80030090 46105482 */  mul.s      $f18, $f10, $f16
/* 30C94 80030094 02002025 */  or         $a0, $s0, $zero
/* 30C98 80030098 46120000 */  add.s      $f0, $f0, $f18
/* 30C9C 8003009C 4618003C */  c.lt.s     $f0, $f24
/* 30CA0 800300A0 00000000 */  nop
/* 30CA4 800300A4 45020007 */  bc1fl      .L800300C4
/* 30CA8 800300A8 4600A03E */   c.le.s    $f20, $f0
/* 30CAC 800300AC 46140000 */  add.s      $f0, $f0, $f20
.L800300B0:
/* 30CB0 800300B0 4618003C */  c.lt.s     $f0, $f24
/* 30CB4 800300B4 00000000 */  nop
/* 30CB8 800300B8 4503FFFD */  bc1tl      .L800300B0
/* 30CBC 800300BC 46140000 */   add.s     $f0, $f0, $f20
/* 30CC0 800300C0 4600A03E */  c.le.s     $f20, $f0
.L800300C4:
/* 30CC4 800300C4 00000000 */  nop
/* 30CC8 800300C8 45020007 */  bc1fl      .L800300E8
/* 30CCC 800300CC 44060000 */   mfc1      $a2, $f0
/* 30CD0 800300D0 46140001 */  sub.s      $f0, $f0, $f20
.L800300D4:
/* 30CD4 800300D4 4600A03E */  c.le.s     $f20, $f0
/* 30CD8 800300D8 00000000 */  nop
/* 30CDC 800300DC 4503FFFD */  bc1tl      .L800300D4
/* 30CE0 800300E0 46140001 */   sub.s     $f0, $f0, $f20
/* 30CE4 800300E4 44060000 */  mfc1       $a2, $f0
.L800300E8:
/* 30CE8 800300E8 0C00BADA */  jal        func_8002EB68
/* 30CEC 800300EC E4201BF0 */   swc1      $f0, 0x1bf0($at)
.L800300F0:
/* 30CF0 800300F0 0C0024C2 */  jal        func_80009308
/* 30CF4 800300F4 02002025 */   or        $a0, $s0, $zero
/* 30CF8 800300F8 26310001 */  addiu      $s1, $s1, 1
/* 30CFC 800300FC 1635FFA7 */  bne        $s1, $s5, .L8002FF9C
/* 30D00 80030100 26520008 */   addiu     $s2, $s2, 8
/* 30D04 80030104 3C04800F */  lui        $a0, %hi(D_800EF724)
/* 30D08 80030108 8C84F724 */  lw         $a0, %lo(D_800EF724)($a0)
/* 30D0C 8003010C 50800017 */  beql       $a0, $zero, .L8003016C
/* 30D10 80030110 8FBF006C */   lw        $ra, 0x6c($sp)
/* 30D14 80030114 0C001FA3 */  jal        func_80007E8C
/* 30D18 80030118 00000000 */   nop
/* 30D1C 8003011C 10400012 */  beqz       $v0, .L80030168
/* 30D20 80030120 00408025 */   or        $s0, $v0, $zero
/* 30D24 80030124 3C01BFC0 */  lui        $at, 0xbfc0
/* 30D28 80030128 44813000 */  mtc1       $at, $f6
/* 30D2C 8003012C 3C01C080 */  lui        $at, 0xc080
/* 30D30 80030130 44814000 */  mtc1       $at, $f8
/* 30D34 80030134 44802000 */  mtc1       $zero, $f4
/* 30D38 80030138 02E02025 */  or         $a0, $s7, $zero
/* 30D3C 8003013C 03C02825 */  or         $a1, $fp, $zero
/* 30D40 80030140 24460018 */  addiu      $a2, $v0, 0x18
/* 30D44 80030144 E7A60080 */  swc1       $f6, 0x80($sp)
/* 30D48 80030148 E7A80084 */  swc1       $f8, 0x84($sp)
/* 30D4C 8003014C 0C00FEE4 */  jal        func_8003FB90
/* 30D50 80030150 E7A4007C */   swc1      $f4, 0x7c($sp)
/* 30D54 80030154 E618000C */  swc1       $f24, 0xc($s0)
/* 30D58 80030158 E6180010 */  swc1       $f24, 0x10($s0)
/* 30D5C 8003015C E6180014 */  swc1       $f24, 0x14($s0)
/* 30D60 80030160 0C0024C2 */  jal        func_80009308
/* 30D64 80030164 02002025 */   or        $a0, $s0, $zero
.L80030168:
/* 30D68 80030168 8FBF006C */  lw         $ra, 0x6c($sp)
.L8003016C:
/* 30D6C 8003016C D7B40018 */  ldc1       $f20, 0x18($sp)
/* 30D70 80030170 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 30D74 80030174 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 30D78 80030178 D7BA0030 */  ldc1       $f26, 0x30($sp)
/* 30D7C 8003017C D7BC0038 */  ldc1       $f28, 0x38($sp)
/* 30D80 80030180 D7BE0040 */  ldc1       $f30, 0x40($sp)
/* 30D84 80030184 8FB00048 */  lw         $s0, 0x48($sp)
/* 30D88 80030188 8FB1004C */  lw         $s1, 0x4c($sp)
/* 30D8C 8003018C 8FB20050 */  lw         $s2, 0x50($sp)
/* 30D90 80030190 8FB30054 */  lw         $s3, 0x54($sp)
/* 30D94 80030194 8FB40058 */  lw         $s4, 0x58($sp)
/* 30D98 80030198 8FB5005C */  lw         $s5, 0x5c($sp)
/* 30D9C 8003019C 8FB60060 */  lw         $s6, 0x60($sp)
/* 30DA0 800301A0 8FB70064 */  lw         $s7, 0x64($sp)
/* 30DA4 800301A4 8FBE0068 */  lw         $fp, 0x68($sp)
/* 30DA8 800301A8 03E00008 */  jr         $ra
/* 30DAC 800301AC 27BD00A0 */   addiu     $sp, $sp, 0xa0

glabel func_800301B0
/* 30DB0 800301B0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 30DB4 800301B4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 30DB8 800301B8 AFB00018 */  sw         $s0, 0x18($sp)
/* 30DBC 800301BC 8C8E0014 */  lw         $t6, 0x14($a0)
/* 30DC0 800301C0 2403000C */  addiu      $v1, $zero, 0xc
/* 30DC4 800301C4 3C02800A */  lui        $v0, %hi(D_8009A5B0)
/* 30DC8 800301C8 01C30019 */  multu      $t6, $v1
/* 30DCC 800301CC 2442A5B0 */  addiu      $v0, $v0, %lo(D_8009A5B0)
/* 30DD0 800301D0 44856000 */  mtc1       $a1, $f12
/* 30DD4 800301D4 00808025 */  or         $s0, $a0, $zero
/* 30DD8 800301D8 27A50024 */  addiu      $a1, $sp, 0x24
/* 30DDC 800301DC 00007812 */  mflo       $t7
/* 30DE0 800301E0 004FC021 */  addu       $t8, $v0, $t7
/* 30DE4 800301E4 C7040000 */  lwc1       $f4, ($t8)
/* 30DE8 800301E8 E7A40024 */  swc1       $f4, 0x24($sp)
/* 30DEC 800301EC 8C990014 */  lw         $t9, 0x14($a0)
/* 30DF0 800301F0 03230019 */  multu      $t9, $v1
/* 30DF4 800301F4 00004012 */  mflo       $t0
/* 30DF8 800301F8 00484821 */  addu       $t1, $v0, $t0
/* 30DFC 800301FC C5260004 */  lwc1       $f6, 4($t1)
/* 30E00 80030200 E7A60028 */  swc1       $f6, 0x28($sp)
/* 30E04 80030204 8C8A0014 */  lw         $t2, 0x14($a0)
/* 30E08 80030208 C7AA0028 */  lwc1       $f10, 0x28($sp)
/* 30E0C 8003020C 3C04800F */  lui        $a0, %hi(D_800F1CE8)
/* 30E10 80030210 01430019 */  multu      $t2, $v1
/* 30E14 80030214 460C5400 */  add.s      $f16, $f10, $f12
/* 30E18 80030218 24841CE8 */  addiu      $a0, $a0, %lo(D_800F1CE8)
/* 30E1C 8003021C 00005812 */  mflo       $t3
/* 30E20 80030220 004B6021 */  addu       $t4, $v0, $t3
/* 30E24 80030224 C5880008 */  lwc1       $f8, 8($t4)
/* 30E28 80030228 E7B00028 */  swc1       $f16, 0x28($sp)
/* 30E2C 8003022C E7A8002C */  swc1       $f8, 0x2c($sp)
/* 30E30 80030230 8E060000 */  lw         $a2, ($s0)
/* 30E34 80030234 0C00FEE4 */  jal        func_8003FB90
/* 30E38 80030238 24C60018 */   addiu     $a2, $a2, 0x18
/* 30E3C 8003023C 8E0D0014 */  lw         $t5, 0x14($s0)
/* 30E40 80030240 3C05C0A0 */  lui        $a1, 0xc0a0
/* 30E44 80030244 3C064334 */  lui        $a2, 0x4334
/* 30E48 80030248 15A00007 */  bnez       $t5, .L80030268
/* 30E4C 8003024C 00000000 */   nop
/* 30E50 80030250 8E040000 */  lw         $a0, ($s0)
/* 30E54 80030254 3C05C0A0 */  lui        $a1, 0xc0a0
/* 30E58 80030258 0C00BADA */  jal        func_8002EB68
/* 30E5C 8003025C 3C064352 */   lui       $a2, 0x4352
/* 30E60 80030260 10000003 */  b          .L80030270
/* 30E64 80030264 00000000 */   nop
.L80030268:
/* 30E68 80030268 0C00BADA */  jal        func_8002EB68
/* 30E6C 8003026C 8E040000 */   lw        $a0, ($s0)
.L80030270:
/* 30E70 80030270 0C0024C2 */  jal        func_80009308
/* 30E74 80030274 8E040000 */   lw        $a0, ($s0)
/* 30E78 80030278 8FBF001C */  lw         $ra, 0x1c($sp)
/* 30E7C 8003027C 8FB00018 */  lw         $s0, 0x18($sp)
/* 30E80 80030280 27BD0030 */  addiu      $sp, $sp, 0x30
/* 30E84 80030284 03E00008 */  jr         $ra
/* 30E88 80030288 00000000 */   nop

glabel func_8003028C
/* 30E8C 8003028C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 30E90 80030290 AFBF0014 */  sw         $ra, 0x14($sp)
/* 30E94 80030294 0C002C3F */  jal        func_8000B0FC
/* 30E98 80030298 00000000 */   nop
/* 30E9C 8003029C 3C0E800F */  lui        $t6, %hi(D_800F1D20)
/* 30EA0 800302A0 8DCE1D20 */  lw         $t6, %lo(D_800F1D20)($t6)
/* 30EA4 800302A4 24180000 */  addiu      $t8, $zero, 0
/* 30EA8 800302A8 00584023 */  subu       $t0, $v0, $t8
/* 30EAC 800302AC 006E082B */  sltu       $at, $v1, $t6
/* 30EB0 800302B0 01014023 */  subu       $t0, $t0, $at
/* 30EB4 800302B4 006E4823 */  subu       $t1, $v1, $t6
/* 30EB8 800302B8 15000002 */  bnez       $t0, .L800302C4
/* 30EBC 800302BC 2D210BB9 */   sltiu     $at, $t1, 0xbb9
/* 30EC0 800302C0 1420001F */  bnez       $at, .L80030340
.L800302C4:
/* 30EC4 800302C4 3C07800A */   lui       $a3, %hi(D_8009A660)
/* 30EC8 800302C8 8CE7A660 */  lw         $a3, %lo(D_8009A660)($a3)
/* 30ECC 800302CC 3C06800A */  lui        $a2, %hi(D_8009A634)
/* 30ED0 800302D0 00002025 */  or         $a0, $zero, $zero
/* 30ED4 800302D4 00077880 */  sll        $t7, $a3, 2
/* 30ED8 800302D8 00CF3021 */  addu       $a2, $a2, $t7
/* 30EDC 800302DC 8CC6A634 */  lw         $a2, %lo(D_8009A634)($a2)
/* 30EE0 800302E0 0C009E62 */  jal        func_80027988
/* 30EE4 800302E4 3C054060 */   lui       $a1, 0x4060
/* 30EE8 800302E8 3C07800A */  lui        $a3, %hi(D_8009A660)
/* 30EEC 800302EC 8CE7A660 */  lw         $a3, %lo(D_8009A660)($a3)
/* 30EF0 800302F0 3C01800A */  lui        $at, 0x800a
/* 30EF4 800302F4 24E70001 */  addiu      $a3, $a3, 1
/* 30EF8 800302F8 04E10004 */  bgez       $a3, .L8003030C
/* 30EFC 800302FC 00000000 */   nop
/* 30F00 80030300 24E70006 */  addiu      $a3, $a3, 6
.L80030304:
/* 30F04 80030304 04E2FFFF */  bltzl      $a3, .L80030304
/* 30F08 80030308 24E70006 */   addiu     $a3, $a3, 6
.L8003030C:
/* 30F0C 8003030C AC27A660 */  sw         $a3, -0x59a0($at)
/* 30F10 80030310 28E10006 */  slti       $at, $a3, 6
/* 30F14 80030314 14200006 */  bnez       $at, .L80030330
/* 30F18 80030318 24E7FFFA */   addiu     $a3, $a3, -6
.L8003031C:
/* 30F1C 8003031C 28E10006 */  slti       $at, $a3, 6
/* 30F20 80030320 5020FFFE */  beql       $at, $zero, .L8003031C
/* 30F24 80030324 24E7FFFA */   addiu     $a3, $a3, -6
/* 30F28 80030328 3C01800A */  lui        $at, %hi(D_8009A660)
/* 30F2C 8003032C AC27A660 */  sw         $a3, %lo(D_8009A660)($at)
.L80030330:
/* 30F30 80030330 0C002C3F */  jal        func_8000B0FC
/* 30F34 80030334 00000000 */   nop
/* 30F38 80030338 3C01800F */  lui        $at, %hi(D_800F1D20)
/* 30F3C 8003033C AC231D20 */  sw         $v1, %lo(D_800F1D20)($at)
.L80030340:
/* 30F40 80030340 8FBF0014 */  lw         $ra, 0x14($sp)
/* 30F44 80030344 27BD0018 */  addiu      $sp, $sp, 0x18
/* 30F48 80030348 03E00008 */  jr         $ra
/* 30F4C 8003034C 00000000 */   nop

glabel func_80030350
/* 30F50 80030350 3C02800F */  lui        $v0, %hi(D_800F1BF4)
/* 30F54 80030354 8C421BF4 */  lw         $v0, %lo(D_800F1BF4)($v0)
/* 30F58 80030358 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 30F5C 8003035C AFB00018 */  sw         $s0, 0x18($sp)
/* 30F60 80030360 00808025 */  or         $s0, $a0, $zero
/* 30F64 80030364 3C04800A */  lui        $a0, 0x800a
/* 30F68 80030368 00021880 */  sll        $v1, $v0, 2
/* 30F6C 8003036C AFBF001C */  sw         $ra, 0x1c($sp)
/* 30F70 80030370 00832021 */  addu       $a0, $a0, $v1
/* 30F74 80030374 3C058007 */  lui        $a1, %hi(D_80074DE0)
/* 30F78 80030378 24A54DE0 */  addiu      $a1, $a1, %lo(D_80074DE0)
/* 30F7C 8003037C 8C84A64C */  lw         $a0, -0x59b4($a0)
/* 30F80 80030380 AFA30024 */  sw         $v1, 0x24($sp)
/* 30F84 80030384 0C00FDB7 */  jal        func_8003F6DC
/* 30F88 80030388 24060001 */   addiu     $a2, $zero, 1
/* 30F8C 8003038C 8E030000 */  lw         $v1, ($s0)
/* 30F90 80030390 3C0FE700 */  lui        $t7, 0xe700
/* 30F94 80030394 3C19E200 */  lui        $t9, 0xe200
/* 30F98 80030398 246E0008 */  addiu      $t6, $v1, 8
/* 30F9C 8003039C AE0E0000 */  sw         $t6, ($s0)
/* 30FA0 800303A0 AC600004 */  sw         $zero, 4($v1)
/* 30FA4 800303A4 AC6F0000 */  sw         $t7, ($v1)
/* 30FA8 800303A8 8E030000 */  lw         $v1, ($s0)
/* 30FAC 800303AC 3C090050 */  lui        $t1, 0x50
/* 30FB0 800303B0 35294240 */  ori        $t1, $t1, 0x4240
/* 30FB4 800303B4 24780008 */  addiu      $t8, $v1, 8
/* 30FB8 800303B8 AE180000 */  sw         $t8, ($s0)
/* 30FBC 800303BC 3739001C */  ori        $t9, $t9, 0x1c
/* 30FC0 800303C0 AC790000 */  sw         $t9, ($v1)
/* 30FC4 800303C4 AC690004 */  sw         $t1, 4($v1)
/* 30FC8 800303C8 8E030000 */  lw         $v1, ($s0)
/* 30FCC 800303CC 3C0BFC11 */  lui        $t3, 0xfc11
/* 30FD0 800303D0 356BFE23 */  ori        $t3, $t3, 0xfe23
/* 30FD4 800303D4 246A0008 */  addiu      $t2, $v1, 8
/* 30FD8 800303D8 AE0A0000 */  sw         $t2, ($s0)
/* 30FDC 800303DC 240CF7FB */  addiu      $t4, $zero, -0x805
/* 30FE0 800303E0 AC6C0004 */  sw         $t4, 4($v1)
/* 30FE4 800303E4 AC6B0000 */  sw         $t3, ($v1)
/* 30FE8 800303E8 8E030000 */  lw         $v1, ($s0)
/* 30FEC 800303EC 240F00C8 */  addiu      $t7, $zero, 0xc8
/* 30FF0 800303F0 3C0EFA00 */  lui        $t6, 0xfa00
/* 30FF4 800303F4 246D0008 */  addiu      $t5, $v1, 8
/* 30FF8 800303F8 AE0D0000 */  sw         $t5, ($s0)
/* 30FFC 800303FC AC6F0004 */  sw         $t7, 4($v1)
/* 31000 80030400 AC6E0000 */  sw         $t6, ($v1)
/* 31004 80030404 8E030000 */  lw         $v1, ($s0)
/* 31008 80030408 24590028 */  addiu      $t9, $v0, 0x28
/* 3100C 8003040C 332903FF */  andi       $t1, $t9, 0x3ff
/* 31010 80030410 00095380 */  sll        $t2, $t1, 0xe
/* 31014 80030414 3C01F600 */  lui        $at, 0xf600
/* 31018 80030418 24780008 */  addiu      $t8, $v1, 8
/* 3101C 8003041C AE180000 */  sw         $t8, ($s0)
/* 31020 80030420 01415825 */  or         $t3, $t2, $at
/* 31024 80030424 3C0D0007 */  lui        $t5, 7
/* 31028 80030428 35ADC2F4 */  ori        $t5, $t5, 0xc2f4
/* 3102C 8003042C 356C033C */  ori        $t4, $t3, 0x33c
/* 31030 80030430 AC6C0000 */  sw         $t4, ($v1)
/* 31034 80030434 AC6D0004 */  sw         $t5, 4($v1)
/* 31038 80030438 0C00F389 */  jal        func_8003CE24
/* 3103C 8003043C 8E040000 */   lw        $a0, ($s0)
/* 31040 80030440 0C00F563 */  jal        func_8003D58C
/* 31044 80030444 00002025 */   or        $a0, $zero, $zero
/* 31048 80030448 0C00F3DE */  jal        func_8003CF78
/* 3104C 8003044C 00000000 */   nop
/* 31050 80030450 3C048006 */  lui        $a0, %hi(D_80063800)
/* 31054 80030454 0C00F560 */  jal        func_8003D580
/* 31058 80030458 24843800 */   addiu     $a0, $a0, %lo(D_80063800)
/* 3105C 8003045C 0C00F56B */  jal        func_8003D5AC
/* 31060 80030460 24040001 */   addiu     $a0, $zero, 1
/* 31064 80030464 3C013F80 */  lui        $at, 0x3f80
/* 31068 80030468 44816000 */  mtc1       $at, $f12
/* 3106C 8003046C 0C00F566 */  jal        func_8003D598
/* 31070 80030470 46006386 */   mov.s     $f14, $f12
/* 31074 80030474 00002025 */  or         $a0, $zero, $zero
/* 31078 80030478 00002825 */  or         $a1, $zero, $zero
/* 3107C 8003047C 2406013F */  addiu      $a2, $zero, 0x13f
/* 31080 80030480 0C00F4C7 */  jal        func_8003D31C
/* 31084 80030484 240700EF */   addiu     $a3, $zero, 0xef
/* 31088 80030488 240400FF */  addiu      $a0, $zero, 0xff
/* 3108C 8003048C 240500FF */  addiu      $a1, $zero, 0xff
/* 31090 80030490 240600FF */  addiu      $a2, $zero, 0xff
/* 31094 80030494 0C00F528 */  jal        func_8003D4A0
/* 31098 80030498 240700FE */   addiu     $a3, $zero, 0xfe
/* 3109C 8003049C 24040024 */  addiu      $a0, $zero, 0x24
/* 310A0 800304A0 0C00F4F9 */  jal        func_8003D3E4
/* 310A4 800304A4 240500BE */   addiu     $a1, $zero, 0xbe
/* 310A8 800304A8 8FAE0024 */  lw         $t6, 0x24($sp)
/* 310AC 800304AC 3C04800F */  lui        $a0, %hi(D_800F1D28)
/* 310B0 800304B0 008E2021 */  addu       $a0, $a0, $t6
/* 310B4 800304B4 0C00F57B */  jal        func_8003D5EC
/* 310B8 800304B8 8C841D28 */   lw        $a0, %lo(D_800F1D28)($a0)
/* 310BC 800304BC 0C00F3DA */  jal        func_8003CF68
/* 310C0 800304C0 02002025 */   or        $a0, $s0, $zero
/* 310C4 800304C4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 310C8 800304C8 8FB00018 */  lw         $s0, 0x18($sp)
/* 310CC 800304CC 27BD0048 */  addiu      $sp, $sp, 0x48
/* 310D0 800304D0 03E00008 */  jr         $ra
/* 310D4 800304D4 00000000 */   nop

glabel func_800304D8
/* 310D8 800304D8 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 310DC 800304DC AFB00038 */  sw         $s0, 0x38($sp)
/* 310E0 800304E0 00808025 */  or         $s0, $a0, $zero
/* 310E4 800304E4 AFBF003C */  sw         $ra, 0x3c($sp)
/* 310E8 800304E8 AFA60088 */  sw         $a2, 0x88($sp)
/* 310EC 800304EC AFA7008C */  sw         $a3, 0x8c($sp)
/* 310F0 800304F0 27A60070 */  addiu      $a2, $sp, 0x70
/* 310F4 800304F4 0C003066 */  jal        func_8000C198
/* 310F8 800304F8 24040005 */   addiu     $a0, $zero, 5
/* 310FC 800304FC 8E020000 */  lw         $v0, ($s0)
/* 31100 80030500 3C0FE700 */  lui        $t7, 0xe700
/* 31104 80030504 24010002 */  addiu      $at, $zero, 2
/* 31108 80030508 244E0008 */  addiu      $t6, $v0, 8
/* 3110C 8003050C AE0E0000 */  sw         $t6, ($s0)
/* 31110 80030510 AC400004 */  sw         $zero, 4($v0)
/* 31114 80030514 AC4F0000 */  sw         $t7, ($v0)
/* 31118 80030518 93B8007D */  lbu        $t8, 0x7d($sp)
/* 3111C 8003051C 3C0E0101 */  lui        $t6, 0x101
/* 31120 80030520 25CEC8C8 */  addiu      $t6, $t6, -0x3738
/* 31124 80030524 1701000A */  bne        $t8, $at, .L80030550
/* 31128 80030528 3C0DDE00 */   lui       $t5, 0xde00
/* 3112C 8003052C 8E020000 */  lw         $v0, ($s0)
/* 31130 80030530 3C08E300 */  lui        $t0, 0xe300
/* 31134 80030534 35081001 */  ori        $t0, $t0, 0x1001
/* 31138 80030538 24590008 */  addiu      $t9, $v0, 8
/* 3113C 8003053C AE190000 */  sw         $t9, ($s0)
/* 31140 80030540 34098000 */  ori        $t1, $zero, 0x8000
/* 31144 80030544 AC490004 */  sw         $t1, 4($v0)
/* 31148 80030548 10000008 */  b          .L8003056C
/* 3114C 8003054C AC480000 */   sw        $t0, ($v0)
.L80030550:
/* 31150 80030550 8E020000 */  lw         $v0, ($s0)
/* 31154 80030554 3C0BE300 */  lui        $t3, 0xe300
/* 31158 80030558 356B1001 */  ori        $t3, $t3, 0x1001
/* 3115C 8003055C 244A0008 */  addiu      $t2, $v0, 8
/* 31160 80030560 AE0A0000 */  sw         $t2, ($s0)
/* 31164 80030564 AC400004 */  sw         $zero, 4($v0)
/* 31168 80030568 AC4B0000 */  sw         $t3, ($v0)
.L8003056C:
/* 3116C 8003056C 8E020000 */  lw         $v0, ($s0)
/* 31170 80030570 24080001 */  addiu      $t0, $zero, 1
/* 31174 80030574 24090001 */  addiu      $t1, $zero, 1
/* 31178 80030578 244C0008 */  addiu      $t4, $v0, 8
/* 3117C 8003057C AE0C0000 */  sw         $t4, ($s0)
/* 31180 80030580 AC4E0004 */  sw         $t6, 4($v0)
/* 31184 80030584 AC4D0000 */  sw         $t5, ($v0)
/* 31188 80030588 97B9007A */  lhu        $t9, 0x7a($sp)
/* 3118C 8003058C 97B80078 */  lhu        $t8, 0x78($sp)
/* 31190 80030590 93AF007C */  lbu        $t7, 0x7c($sp)
/* 31194 80030594 AFA90028 */  sw         $t1, 0x28($sp)
/* 31198 80030598 AFA80024 */  sw         $t0, 0x24($sp)
/* 3119C 8003059C AFA00020 */  sw         $zero, 0x20($sp)
/* 311A0 800305A0 AFA0001C */  sw         $zero, 0x1c($sp)
/* 311A4 800305A4 93A7007D */  lbu        $a3, 0x7d($sp)
/* 311A8 800305A8 8FA60074 */  lw         $a2, 0x74($sp)
/* 311AC 800305AC 8FA50070 */  lw         $a1, 0x70($sp)
/* 311B0 800305B0 02002025 */  or         $a0, $s0, $zero
/* 311B4 800305B4 AFB90018 */  sw         $t9, 0x18($sp)
/* 311B8 800305B8 AFB80014 */  sw         $t8, 0x14($sp)
/* 311BC 800305BC 0C010A10 */  jal        func_80042840
/* 311C0 800305C0 AFAF0010 */   sw        $t7, 0x10($sp)
/* 311C4 800305C4 8E020000 */  lw         $v0, ($s0)
/* 311C8 800305C8 8FA60088 */  lw         $a2, 0x88($sp)
/* 311CC 800305CC 8FA7008C */  lw         $a3, 0x8c($sp)
/* 311D0 800305D0 C7A20098 */  lwc1       $f2, 0x98($sp)
/* 311D4 800305D4 C7B0009C */  lwc1       $f16, 0x9c($sp)
/* 311D8 800305D8 244A0008 */  addiu      $t2, $v0, 8
/* 311DC 800305DC AE0A0000 */  sw         $t2, ($s0)
/* 311E0 800305E0 8FAB0090 */  lw         $t3, 0x90($sp)
/* 311E4 800305E4 44862000 */  mtc1       $a2, $f4
/* 311E8 800305E8 3C014080 */  lui        $at, 0x4080
/* 311EC 800305EC 256CFFFF */  addiu      $t4, $t3, -1
/* 311F0 800305F0 448C4000 */  mtc1       $t4, $f8
/* 311F4 800305F4 468021A0 */  cvt.s.w    $f6, $f4
/* 311F8 800305F8 44810000 */  mtc1       $at, $f0
/* 311FC 800305FC 8FA80094 */  lw         $t0, 0x94($sp)
/* 31200 80030600 3C01E400 */  lui        $at, 0xe400
/* 31204 80030604 44809000 */  mtc1       $zero, $f18
/* 31208 80030608 468042A0 */  cvt.s.w    $f10, $f8
/* 3120C 8003060C 2509FFFF */  addiu      $t1, $t0, -1
/* 31210 80030610 00074080 */  sll        $t0, $a3, 2
/* 31214 80030614 46025102 */  mul.s      $f4, $f10, $f2
/* 31218 80030618 46043200 */  add.s      $f8, $f6, $f4
/* 3121C 8003061C 44872000 */  mtc1       $a3, $f4
/* 31220 80030620 46004282 */  mul.s      $f10, $f8, $f0
/* 31224 80030624 46802220 */  cvt.s.w    $f8, $f4
/* 31228 80030628 4600518D */  trunc.w.s  $f6, $f10
/* 3122C 8003062C 44895000 */  mtc1       $t1, $f10
/* 31230 80030630 31090FFF */  andi       $t1, $t0, 0xfff
/* 31234 80030634 440E3000 */  mfc1       $t6, $f6
/* 31238 80030638 468051A0 */  cvt.s.w    $f6, $f10
/* 3123C 8003063C 31CF0FFF */  andi       $t7, $t6, 0xfff
/* 31240 80030640 000FC300 */  sll        $t8, $t7, 0xc
/* 31244 80030644 0301C825 */  or         $t9, $t8, $at
/* 31248 80030648 3C014480 */  lui        $at, 0x4480
/* 3124C 8003064C 46103102 */  mul.s      $f4, $f6, $f16
/* 31250 80030650 00067080 */  sll        $t6, $a2, 2
/* 31254 80030654 31CF0FFF */  andi       $t7, $t6, 0xfff
/* 31258 80030658 000FC300 */  sll        $t8, $t7, 0xc
/* 3125C 8003065C 03095025 */  or         $t2, $t8, $t1
/* 31260 80030660 AC4A0004 */  sw         $t2, 4($v0)
/* 31264 80030664 3C0EF100 */  lui        $t6, 0xf100
/* 31268 80030668 46044280 */  add.s      $f10, $f8, $f4
/* 3126C 8003066C 44812000 */  mtc1       $at, $f4
/* 31270 80030670 3C013F00 */  lui        $at, 0x3f00
/* 31274 80030674 46005182 */  mul.s      $f6, $f10, $f0
/* 31278 80030678 46022003 */  div.s      $f0, $f4, $f2
/* 3127C 8003067C 4600320D */  trunc.w.s  $f8, $f6
/* 31280 80030680 440B4000 */  mfc1       $t3, $f8
/* 31284 80030684 00000000 */  nop
/* 31288 80030688 316C0FFF */  andi       $t4, $t3, 0xfff
/* 3128C 8003068C 032C6825 */  or         $t5, $t9, $t4
/* 31290 80030690 AC4D0000 */  sw         $t5, ($v0)
/* 31294 80030694 8E020000 */  lw         $v0, ($s0)
/* 31298 80030698 340CFFE0 */  ori        $t4, $zero, 0xffe0
/* 3129C 8003069C 3C19E100 */  lui        $t9, 0xe100
/* 312A0 800306A0 244B0008 */  addiu      $t3, $v0, 8
/* 312A4 800306A4 AE0B0000 */  sw         $t3, ($s0)
/* 312A8 800306A8 AC4C0004 */  sw         $t4, 4($v0)
/* 312AC 800306AC AC590000 */  sw         $t9, ($v0)
/* 312B0 800306B0 8E050000 */  lw         $a1, ($s0)
/* 312B4 800306B4 4600903E */  c.le.s     $f18, $f0
/* 312B8 800306B8 24AD0008 */  addiu      $t5, $a1, 8
/* 312BC 800306BC AE0D0000 */  sw         $t5, ($s0)
/* 312C0 800306C0 45000005 */  bc1f       .L800306D8
/* 312C4 800306C4 ACAE0000 */   sw        $t6, ($a1)
/* 312C8 800306C8 3C013F00 */  lui        $at, 0x3f00
/* 312CC 800306CC 44817000 */  mtc1       $at, $f14
/* 312D0 800306D0 10000004 */  b          .L800306E4
/* 312D4 800306D4 460E0300 */   add.s     $f12, $f0, $f14
.L800306D8:
/* 312D8 800306D8 44817000 */  mtc1       $at, $f14
/* 312DC 800306DC 00000000 */  nop
/* 312E0 800306E0 460E0301 */  sub.s      $f12, $f0, $f14
.L800306E4:
/* 312E4 800306E4 3C01C480 */  lui        $at, 0xc480
/* 312E8 800306E8 44815000 */  mtc1       $at, $f10
/* 312EC 800306EC 4600620D */  trunc.w.s  $f8, $f12
/* 312F0 800306F0 46105003 */  div.s      $f0, $f10, $f16
/* 312F4 800306F4 4600903E */  c.le.s     $f18, $f0
/* 312F8 800306F8 00000000 */  nop
/* 312FC 800306FC 45020004 */  bc1fl      .L80030710
/* 31300 80030700 460E0081 */   sub.s     $f2, $f0, $f14
/* 31304 80030704 10000002 */  b          .L80030710
/* 31308 80030708 460E0080 */   add.s     $f2, $f0, $f14
/* 3130C 8003070C 460E0081 */  sub.s      $f2, $f0, $f14
.L80030710:
/* 31310 80030710 4600118D */  trunc.w.s  $f6, $f2
/* 31314 80030714 440B4000 */  mfc1       $t3, $f8
/* 31318 80030718 3C0ED700 */  lui        $t6, 0xd700
/* 3131C 8003071C 3C0F7FFF */  lui        $t7, 0x7fff
/* 31320 80030720 44083000 */  mfc1       $t0, $f6
/* 31324 80030724 000BCC00 */  sll        $t9, $t3, 0x10
/* 31328 80030728 3C09DB08 */  lui        $t1, 0xdb08
/* 3132C 8003072C 3118FFFF */  andi       $t8, $t0, 0xffff
/* 31330 80030730 03196025 */  or         $t4, $t8, $t9
/* 31334 80030734 ACAC0004 */  sw         $t4, 4($a1)
/* 31338 80030738 8E020000 */  lw         $v0, ($s0)
/* 3133C 8003073C 35290010 */  ori        $t1, $t1, 0x10
/* 31340 80030740 240A7FFF */  addiu      $t2, $zero, 0x7fff
/* 31344 80030744 244D0008 */  addiu      $t5, $v0, 8
/* 31348 80030748 AE0D0000 */  sw         $t5, ($s0)
/* 3134C 8003074C AC4F0004 */  sw         $t7, 4($v0)
/* 31350 80030750 AC4E0000 */  sw         $t6, ($v0)
/* 31354 80030754 8E020000 */  lw         $v0, ($s0)
/* 31358 80030758 24480008 */  addiu      $t0, $v0, 8
/* 3135C 8003075C AE080000 */  sw         $t0, ($s0)
/* 31360 80030760 AC4A0004 */  sw         $t2, 4($v0)
/* 31364 80030764 AC490000 */  sw         $t1, ($v0)
/* 31368 80030768 8FBF003C */  lw         $ra, 0x3c($sp)
/* 3136C 8003076C 8FB00038 */  lw         $s0, 0x38($sp)
/* 31370 80030770 27BD0080 */  addiu      $sp, $sp, 0x80
/* 31374 80030774 03E00008 */  jr         $ra
/* 31378 80030778 00000000 */   nop

glabel func_8003077C
/* 3137C 8003077C 27BDFF48 */  addiu      $sp, $sp, -0xb8
/* 31380 80030780 AFBF002C */  sw         $ra, 0x2c($sp)
/* 31384 80030784 AFB00028 */  sw         $s0, 0x28($sp)
/* 31388 80030788 8C820000 */  lw         $v0, ($a0)
/* 3138C 8003078C 3C0AE700 */  lui        $t2, 0xe700
/* 31390 80030790 3C0B800B */  lui        $t3, %hi(D_800ABDD0)
/* 31394 80030794 244E0008 */  addiu      $t6, $v0, 8
/* 31398 80030798 AC8E0000 */  sw         $t6, ($a0)
/* 3139C 8003079C 256BBDD0 */  addiu      $t3, $t3, %lo(D_800ABDD0)
/* 313A0 800307A0 AC400004 */  sw         $zero, 4($v0)
/* 313A4 800307A4 AC4A0000 */  sw         $t2, ($v0)
/* 313A8 800307A8 8D660000 */  lw         $a2, ($t3)
/* 313AC 800307AC 3C18E300 */  lui        $t8, 0xe300
/* 313B0 800307B0 37180A01 */  ori        $t8, $t8, 0xa01
/* 313B4 800307B4 24CF0008 */  addiu      $t7, $a2, 8
/* 313B8 800307B8 AD6F0000 */  sw         $t7, ($t3)
/* 313BC 800307BC ACC00004 */  sw         $zero, 4($a2)
/* 313C0 800307C0 ACD80000 */  sw         $t8, ($a2)
/* 313C4 800307C4 8C820000 */  lw         $v0, ($a0)
/* 313C8 800307C8 3C0E0050 */  lui        $t6, 0x50
/* 313CC 800307CC 3C0DE200 */  lui        $t5, 0xe200
/* 313D0 800307D0 24590008 */  addiu      $t9, $v0, 8
/* 313D4 800307D4 AC990000 */  sw         $t9, ($a0)
/* 313D8 800307D8 AC400004 */  sw         $zero, 4($v0)
/* 313DC 800307DC AC4A0000 */  sw         $t2, ($v0)
/* 313E0 800307E0 8C820000 */  lw         $v0, ($a0)
/* 313E4 800307E4 35AD001C */  ori        $t5, $t5, 0x1c
/* 313E8 800307E8 35CE4240 */  ori        $t6, $t6, 0x4240
/* 313EC 800307EC 244C0008 */  addiu      $t4, $v0, 8
/* 313F0 800307F0 AC8C0000 */  sw         $t4, ($a0)
/* 313F4 800307F4 AC4E0004 */  sw         $t6, 4($v0)
/* 313F8 800307F8 AC4D0000 */  sw         $t5, ($v0)
/* 313FC 800307FC 8C820000 */  lw         $v0, ($a0)
/* 31400 80030800 3C19FF2F */  lui        $t9, 0xff2f
/* 31404 80030804 3C18FC11 */  lui        $t8, 0xfc11
/* 31408 80030808 244F0008 */  addiu      $t7, $v0, 8
/* 3140C 8003080C AC8F0000 */  sw         $t7, ($a0)
/* 31410 80030810 37189623 */  ori        $t8, $t8, 0x9623
/* 31414 80030814 3739FFFF */  ori        $t9, $t9, 0xffff
/* 31418 80030818 00808025 */  or         $s0, $a0, $zero
/* 3141C 8003081C AC590004 */  sw         $t9, 4($v0)
/* 31420 80030820 0C002C3F */  jal        func_8000B0FC
/* 31424 80030824 AC580000 */   sw        $t8, ($v0)
/* 31428 80030828 3C0C800F */  lui        $t4, %hi(D_800F1C00)
/* 3142C 8003082C 3C0D800F */  lui        $t5, %hi(D_800F1C04)
/* 31430 80030830 8DAD1C04 */  lw         $t5, %lo(D_800F1C04)($t5)
/* 31434 80030834 8D8C1C00 */  lw         $t4, %lo(D_800F1C00)($t4)
/* 31438 80030838 006D082B */  sltu       $at, $v1, $t5
/* 3143C 8003083C 004C2023 */  subu       $a0, $v0, $t4
/* 31440 80030840 00812023 */  subu       $a0, $a0, $at
/* 31444 80030844 0C0148C6 */  jal        __ull_to_f
/* 31448 80030848 006D2823 */   subu      $a1, $v1, $t5
/* 3144C 8003084C 3C013FE0 */  lui        $at, 0x3fe0
/* 31450 80030850 44817800 */  mtc1       $at, $f15
/* 31454 80030854 3C014348 */  lui        $at, 0x4348
/* 31458 80030858 44812000 */  mtc1       $at, $f4
/* 3145C 8003085C 44807000 */  mtc1       $zero, $f14
/* 31460 80030860 E7A00094 */  swc1       $f0, 0x94($sp)
/* 31464 80030864 46040183 */  div.s      $f6, $f0, $f4
/* 31468 80030868 3C0E800F */  lui        $t6, 0x800f
/* 3146C 8003086C 240C0020 */  addiu      $t4, $zero, 0x20
/* 31470 80030870 3C0DFA00 */  lui        $t5, 0xfa00
/* 31474 80030874 2418FF80 */  addiu      $t8, $zero, -0x80
/* 31478 80030878 02002025 */  or         $a0, $s0, $zero
/* 3147C 8003087C 240500F5 */  addiu      $a1, $zero, 0xf5
/* 31480 80030880 24060024 */  addiu      $a2, $zero, 0x24
/* 31484 80030884 24070070 */  addiu      $a3, $zero, 0x70
/* 31488 80030888 240F0020 */  addiu      $t7, $zero, 0x20
/* 3148C 8003088C 24190020 */  addiu      $t9, $zero, 0x20
/* 31490 80030890 460030A1 */  cvt.d.s    $f2, $f6
/* 31494 80030894 4622703E */  c.le.d     $f14, $f2
/* 31498 80030898 00000000 */  nop
/* 3149C 8003089C 45020004 */  bc1fl      .L800308B0
/* 314A0 800308A0 462E1301 */   sub.d     $f12, $f2, $f14
/* 314A4 800308A4 10000003 */  b          .L800308B4
/* 314A8 800308A8 462E1301 */   sub.d     $f12, $f2, $f14
/* 314AC 800308AC 462E1301 */  sub.d      $f12, $f2, $f14
.L800308B0:
/* 314B0 800308B0 46206307 */  neg.d      $f12, $f12
.L800308B4:
/* 314B4 800308B4 8DCE1BEC */  lw         $t6, 0x1bec($t6)
/* 314B8 800308B8 24010001 */  addiu      $at, $zero, 1
/* 314BC 800308BC 55C1002F */  bnel       $t6, $at, .L8003097C
/* 314C0 800308C0 8E020000 */   lw        $v0, ($s0)
/* 314C4 800308C4 462C7201 */  sub.d      $f8, $f14, $f12
/* 314C8 800308C8 3C013FF0 */  lui        $at, 0x3ff0
/* 314CC 800308CC 44815800 */  mtc1       $at, $f11
/* 314D0 800308D0 44805000 */  mtc1       $zero, $f10
/* 314D4 800308D4 3C014200 */  lui        $at, 0x4200
/* 314D8 800308D8 44819000 */  mtc1       $at, $f18
/* 314DC 800308DC 462A4400 */  add.d      $f16, $f8, $f10
/* 314E0 800308E0 8E020000 */  lw         $v0, ($s0)
/* 314E4 800308E4 3C18FA00 */  lui        $t8, 0xfa00
/* 314E8 800308E8 2419FFFF */  addiu      $t9, $zero, -1
/* 314EC 800308EC 46208020 */  cvt.s.d    $f0, $f16
/* 314F0 800308F0 244F0008 */  addiu      $t7, $v0, 8
/* 314F4 800308F4 AE0F0000 */  sw         $t7, ($s0)
/* 314F8 800308F8 AC590004 */  sw         $t9, 4($v0)
/* 314FC 800308FC 46009102 */  mul.s      $f4, $f18, $f0
/* 31500 80030900 AC580000 */  sw         $t8, ($v0)
/* 31504 80030904 24180080 */  addiu      $t8, $zero, 0x80
/* 31508 80030908 24190020 */  addiu      $t9, $zero, 0x20
/* 3150C 8003090C 240E0034 */  addiu      $t6, $zero, 0x34
/* 31510 80030910 AFB90010 */  sw         $t9, 0x10($sp)
/* 31514 80030914 F7AC0030 */  sdc1       $f12, 0x30($sp)
/* 31518 80030918 4600218D */  trunc.w.s  $f6, $f4
/* 3151C 8003091C E7A0001C */  swc1       $f0, 0x1c($sp)
/* 31520 80030920 E7A00018 */  swc1       $f0, 0x18($sp)
/* 31524 80030924 AFAC0014 */  sw         $t4, 0x14($sp)
/* 31528 80030928 44033000 */  mfc1       $v1, $f6
/* 3152C 8003092C 02002025 */  or         $a0, $s0, $zero
/* 31530 80030930 240500F5 */  addiu      $a1, $zero, 0xf5
/* 31534 80030934 00404025 */  or         $t0, $v0, $zero
/* 31538 80030938 04610003 */  bgez       $v1, .L80030948
/* 3153C 8003093C 00036843 */   sra       $t5, $v1, 1
/* 31540 80030940 24610001 */  addiu      $at, $v1, 1
/* 31544 80030944 00016843 */  sra        $t5, $at, 1
.L80030948:
/* 31548 80030948 01CD3023 */  subu       $a2, $t6, $t5
/* 3154C 8003094C 04610003 */  bgez       $v1, .L8003095C
/* 31550 80030950 00037843 */   sra       $t7, $v1, 1
/* 31554 80030954 00000000 */  nop
/* 31558 80030958 00017843 */  sra        $t7, $at, 1
.L8003095C:
/* 3155C 8003095C 0C00C136 */  jal        func_800304D8
/* 31560 80030960 030F3823 */   subu      $a3, $t8, $t7
/* 31564 80030964 3C013FE0 */  lui        $at, 0x3fe0
/* 31568 80030968 44817800 */  mtc1       $at, $f15
/* 3156C 8003096C 44807000 */  mtc1       $zero, $f14
/* 31570 80030970 10000013 */  b          .L800309C0
/* 31574 80030974 D7AC0030 */   ldc1      $f12, 0x30($sp)
/* 31578 80030978 8E020000 */  lw         $v0, ($s0)
.L8003097C:
/* 3157C 8003097C 3C013F80 */  lui        $at, 0x3f80
/* 31580 80030980 44814000 */  mtc1       $at, $f8
/* 31584 80030984 244E0008 */  addiu      $t6, $v0, 8
/* 31588 80030988 AE0E0000 */  sw         $t6, ($s0)
/* 3158C 8003098C AC580004 */  sw         $t8, 4($v0)
/* 31590 80030990 AC4D0000 */  sw         $t5, ($v0)
/* 31594 80030994 44815000 */  mtc1       $at, $f10
/* 31598 80030998 F7AC0030 */  sdc1       $f12, 0x30($sp)
/* 3159C 8003099C AFB90014 */  sw         $t9, 0x14($sp)
/* 315A0 800309A0 AFAF0010 */  sw         $t7, 0x10($sp)
/* 315A4 800309A4 E7A80018 */  swc1       $f8, 0x18($sp)
/* 315A8 800309A8 0C00C136 */  jal        func_800304D8
/* 315AC 800309AC E7AA001C */   swc1      $f10, 0x1c($sp)
/* 315B0 800309B0 3C013FE0 */  lui        $at, 0x3fe0
/* 315B4 800309B4 44817800 */  mtc1       $at, $f15
/* 315B8 800309B8 44807000 */  mtc1       $zero, $f14
/* 315BC 800309BC D7AC0030 */  ldc1       $f12, 0x30($sp)
.L800309C0:
/* 315C0 800309C0 3C0C800F */  lui        $t4, %hi(D_800F1BEC)
/* 315C4 800309C4 8D8C1BEC */  lw         $t4, %lo(D_800F1BEC)($t4)
/* 315C8 800309C8 2401FFFF */  addiu      $at, $zero, -1
/* 315CC 800309CC 3C19FA00 */  lui        $t9, 0xfa00
/* 315D0 800309D0 1581002E */  bne        $t4, $at, .L80030A8C
/* 315D4 800309D4 240DFF80 */   addiu     $t5, $zero, -0x80
/* 315D8 800309D8 462C7401 */  sub.d      $f16, $f14, $f12
/* 315DC 800309DC 3C013FF0 */  lui        $at, 0x3ff0
/* 315E0 800309E0 44819800 */  mtc1       $at, $f19
/* 315E4 800309E4 44809000 */  mtc1       $zero, $f18
/* 315E8 800309E8 3C014200 */  lui        $at, 0x4200
/* 315EC 800309EC 44813000 */  mtc1       $at, $f6
/* 315F0 800309F0 46328100 */  add.d      $f4, $f16, $f18
/* 315F4 800309F4 8E020000 */  lw         $v0, ($s0)
/* 315F8 800309F8 3C0DFA00 */  lui        $t5, 0xfa00
/* 315FC 800309FC 2418FFFF */  addiu      $t8, $zero, -1
/* 31600 80030A00 46202020 */  cvt.s.d    $f0, $f4
/* 31604 80030A04 244E0008 */  addiu      $t6, $v0, 8
/* 31608 80030A08 AE0E0000 */  sw         $t6, ($s0)
/* 3160C 80030A0C AC580004 */  sw         $t8, 4($v0)
/* 31610 80030A10 46003202 */  mul.s      $f8, $f6, $f0
/* 31614 80030A14 AC4D0000 */  sw         $t5, ($v0)
/* 31618 80030A18 240D0080 */  addiu      $t5, $zero, 0x80
/* 3161C 80030A1C 24180020 */  addiu      $t8, $zero, 0x20
/* 31620 80030A20 240C010C */  addiu      $t4, $zero, 0x10c
/* 31624 80030A24 240F0020 */  addiu      $t7, $zero, 0x20
/* 31628 80030A28 AFAF0014 */  sw         $t7, 0x14($sp)
/* 3162C 80030A2C 4600428D */  trunc.w.s  $f10, $f8
/* 31630 80030A30 AFB80010 */  sw         $t8, 0x10($sp)
/* 31634 80030A34 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 31638 80030A38 E7A00018 */  swc1       $f0, 0x18($sp)
/* 3163C 80030A3C 44035000 */  mfc1       $v1, $f10
/* 31640 80030A40 02002025 */  or         $a0, $s0, $zero
/* 31644 80030A44 240500F6 */  addiu      $a1, $zero, 0xf6
/* 31648 80030A48 00404025 */  or         $t0, $v0, $zero
/* 3164C 80030A4C 04610003 */  bgez       $v1, .L80030A5C
/* 31650 80030A50 0003C843 */   sra       $t9, $v1, 1
/* 31654 80030A54 24610001 */  addiu      $at, $v1, 1
/* 31658 80030A58 0001C843 */  sra        $t9, $at, 1
.L80030A5C:
/* 3165C 80030A5C 01993023 */  subu       $a2, $t4, $t9
/* 31660 80030A60 04610003 */  bgez       $v1, .L80030A70
/* 31664 80030A64 00037043 */   sra       $t6, $v1, 1
/* 31668 80030A68 00000000 */  nop
/* 3166C 80030A6C 00017043 */  sra        $t6, $at, 1
.L80030A70:
/* 31670 80030A70 0C00C136 */  jal        func_800304D8
/* 31674 80030A74 01AE3823 */   subu      $a3, $t5, $t6
/* 31678 80030A78 3C013FE0 */  lui        $at, 0x3fe0
/* 3167C 80030A7C 44817800 */  mtc1       $at, $f15
/* 31680 80030A80 44807000 */  mtc1       $zero, $f14
/* 31684 80030A84 10000018 */  b          .L80030AE8
/* 31688 80030A88 00000000 */   nop
.L80030A8C:
/* 3168C 80030A8C 8E020000 */  lw         $v0, ($s0)
/* 31690 80030A90 3C013F80 */  lui        $at, 0x3f80
/* 31694 80030A94 44818000 */  mtc1       $at, $f16
/* 31698 80030A98 244C0008 */  addiu      $t4, $v0, 8
/* 3169C 80030A9C AE0C0000 */  sw         $t4, ($s0)
/* 316A0 80030AA0 AC4D0004 */  sw         $t5, 4($v0)
/* 316A4 80030AA4 AC590000 */  sw         $t9, ($v0)
/* 316A8 80030AA8 44819000 */  mtc1       $at, $f18
/* 316AC 80030AAC 240E0020 */  addiu      $t6, $zero, 0x20
/* 316B0 80030AB0 24180020 */  addiu      $t8, $zero, 0x20
/* 316B4 80030AB4 AFB80014 */  sw         $t8, 0x14($sp)
/* 316B8 80030AB8 AFAE0010 */  sw         $t6, 0x10($sp)
/* 316BC 80030ABC 02002025 */  or         $a0, $s0, $zero
/* 316C0 80030AC0 240500F6 */  addiu      $a1, $zero, 0xf6
/* 316C4 80030AC4 240600FC */  addiu      $a2, $zero, 0xfc
/* 316C8 80030AC8 24070070 */  addiu      $a3, $zero, 0x70
/* 316CC 80030ACC E7B00018 */  swc1       $f16, 0x18($sp)
/* 316D0 80030AD0 0C00C136 */  jal        func_800304D8
/* 316D4 80030AD4 E7B2001C */   swc1      $f18, 0x1c($sp)
/* 316D8 80030AD8 3C013FE0 */  lui        $at, 0x3fe0
/* 316DC 80030ADC 44817800 */  mtc1       $at, $f15
/* 316E0 80030AE0 44807000 */  mtc1       $zero, $f14
/* 316E4 80030AE4 00000000 */  nop
.L80030AE8:
/* 316E8 80030AE8 3C04800F */  lui        $a0, %hi(D_800F1BF4)
/* 316EC 80030AEC 8C841BF4 */  lw         $a0, %lo(D_800F1BF4)($a0)
/* 316F0 80030AF0 24010001 */  addiu      $at, $zero, 1
/* 316F4 80030AF4 3C0F800F */  lui        $t7, %hi(D_800F1BF8)
/* 316F8 80030AF8 1481005D */  bne        $a0, $at, .L80030C70
/* 316FC 80030AFC 00000000 */   nop
/* 31700 80030B00 8DEF1BF8 */  lw         $t7, %lo(D_800F1BF8)($t7)
/* 31704 80030B04 24010003 */  addiu      $at, $zero, 3
/* 31708 80030B08 3C0C800F */  lui        $t4, %hi(D_800F1D18)
/* 3170C 80030B0C 15E10040 */  bne        $t7, $at, .L80030C10
/* 31710 80030B10 240500F7 */   addiu     $a1, $zero, 0xf7
/* 31714 80030B14 8D8C1D18 */  lw         $t4, %lo(D_800F1D18)($t4)
/* 31718 80030B18 24010002 */  addiu      $at, $zero, 2
/* 3171C 80030B1C 3C19800F */  lui        $t9, %hi(D_800F1D1C)
/* 31720 80030B20 5181003C */  beql       $t4, $at, .L80030C14
/* 31724 80030B24 8E020000 */   lw        $v0, ($s0)
/* 31728 80030B28 8F391D1C */  lw         $t9, %lo(D_800F1D1C)($t9)
/* 3172C 80030B2C C7A40094 */  lwc1       $f4, 0x94($sp)
/* 31730 80030B30 3C014396 */  lui        $at, 0x4396
/* 31734 80030B34 13240036 */  beq        $t9, $a0, .L80030C10
/* 31738 80030B38 3C0EFA00 */   lui       $t6, 0xfa00
/* 3173C 80030B3C 44813000 */  mtc1       $at, $f6
/* 31740 80030B40 3C013FF0 */  lui        $at, 0x3ff0
/* 31744 80030B44 44818800 */  mtc1       $at, $f17
/* 31748 80030B48 46062203 */  div.s      $f8, $f4, $f6
/* 3174C 80030B4C 46004021 */  cvt.d.s    $f0, $f8
/* 31750 80030B50 4620703E */  c.le.d     $f14, $f0
/* 31754 80030B54 00000000 */  nop
/* 31758 80030B58 45020004 */  bc1fl      .L80030B6C
/* 3175C 80030B5C 462E0301 */   sub.d     $f12, $f0, $f14
/* 31760 80030B60 10000003 */  b          .L80030B70
/* 31764 80030B64 462E0301 */   sub.d     $f12, $f0, $f14
/* 31768 80030B68 462E0301 */  sub.d      $f12, $f0, $f14
.L80030B6C:
/* 3176C 80030B6C 46206307 */  neg.d      $f12, $f12
.L80030B70:
/* 31770 80030B70 462C7281 */  sub.d      $f10, $f14, $f12
/* 31774 80030B74 44808000 */  mtc1       $zero, $f16
/* 31778 80030B78 3C014200 */  lui        $at, 0x4200
/* 3177C 80030B7C 44812000 */  mtc1       $at, $f4
/* 31780 80030B80 46305480 */  add.d      $f18, $f10, $f16
/* 31784 80030B84 8E020000 */  lw         $v0, ($s0)
/* 31788 80030B88 2418FFFF */  addiu      $t8, $zero, -1
/* 3178C 80030B8C 241900A0 */  addiu      $t9, $zero, 0xa0
/* 31790 80030B90 46209020 */  cvt.s.d    $f0, $f18
/* 31794 80030B94 244D0008 */  addiu      $t5, $v0, 8
/* 31798 80030B98 AE0D0000 */  sw         $t5, ($s0)
/* 3179C 80030B9C AC580004 */  sw         $t8, 4($v0)
/* 317A0 80030BA0 46002182 */  mul.s      $f6, $f4, $f0
/* 317A4 80030BA4 AC4E0000 */  sw         $t6, ($v0)
/* 317A8 80030BA8 240E0020 */  addiu      $t6, $zero, 0x20
/* 317AC 80030BAC 24180020 */  addiu      $t8, $zero, 0x20
/* 317B0 80030BB0 240D0044 */  addiu      $t5, $zero, 0x44
/* 317B4 80030BB4 AFB80014 */  sw         $t8, 0x14($sp)
/* 317B8 80030BB8 AFAE0010 */  sw         $t6, 0x10($sp)
/* 317BC 80030BBC 4600320D */  trunc.w.s  $f8, $f6
/* 317C0 80030BC0 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 317C4 80030BC4 E7A00018 */  swc1       $f0, 0x18($sp)
/* 317C8 80030BC8 02002025 */  or         $a0, $s0, $zero
/* 317CC 80030BCC 44084000 */  mfc1       $t0, $f8
/* 317D0 80030BD0 240500F7 */  addiu      $a1, $zero, 0xf7
/* 317D4 80030BD4 00401825 */  or         $v1, $v0, $zero
/* 317D8 80030BD8 05010003 */  bgez       $t0, .L80030BE8
/* 317DC 80030BDC 00086043 */   sra       $t4, $t0, 1
/* 317E0 80030BE0 25010001 */  addiu      $at, $t0, 1
/* 317E4 80030BE4 00016043 */  sra        $t4, $at, 1
.L80030BE8:
/* 317E8 80030BE8 01804025 */  or         $t0, $t4, $zero
/* 317EC 80030BEC 032C3023 */  subu       $a2, $t9, $t4
/* 317F0 80030BF0 0C00C136 */  jal        func_800304D8
/* 317F4 80030BF4 01AC3823 */   subu      $a3, $t5, $t4
/* 317F8 80030BF8 3C013FE0 */  lui        $at, 0x3fe0
/* 317FC 80030BFC 44817800 */  mtc1       $at, $f15
/* 31800 80030C00 44807000 */  mtc1       $zero, $f14
/* 31804 80030C04 3C04800F */  lui        $a0, %hi(D_800F1BF4)
/* 31808 80030C08 10000019 */  b          .L80030C70
/* 3180C 80030C0C 8C841BF4 */   lw        $a0, %lo(D_800F1BF4)($a0)
.L80030C10:
/* 31810 80030C10 8E020000 */  lw         $v0, ($s0)
.L80030C14:
/* 31814 80030C14 3C013F80 */  lui        $at, 0x3f80
/* 31818 80030C18 3C0CFA00 */  lui        $t4, 0xfa00
/* 3181C 80030C1C 244F0008 */  addiu      $t7, $v0, 8
/* 31820 80030C20 AE0F0000 */  sw         $t7, ($s0)
/* 31824 80030C24 2419FF80 */  addiu      $t9, $zero, -0x80
/* 31828 80030C28 44810000 */  mtc1       $at, $f0
/* 3182C 80030C2C AC590004 */  sw         $t9, 4($v0)
/* 31830 80030C30 AC4C0000 */  sw         $t4, ($v0)
/* 31834 80030C34 240D0020 */  addiu      $t5, $zero, 0x20
/* 31838 80030C38 240E0020 */  addiu      $t6, $zero, 0x20
/* 3183C 80030C3C AFAE0014 */  sw         $t6, 0x14($sp)
/* 31840 80030C40 AFAD0010 */  sw         $t5, 0x10($sp)
/* 31844 80030C44 02002025 */  or         $a0, $s0, $zero
/* 31848 80030C48 24060090 */  addiu      $a2, $zero, 0x90
/* 3184C 80030C4C 24070034 */  addiu      $a3, $zero, 0x34
/* 31850 80030C50 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 31854 80030C54 0C00C136 */  jal        func_800304D8
/* 31858 80030C58 E7A00018 */   swc1      $f0, 0x18($sp)
/* 3185C 80030C5C 3C013FE0 */  lui        $at, 0x3fe0
/* 31860 80030C60 3C04800F */  lui        $a0, %hi(D_800F1BF4)
/* 31864 80030C64 44817800 */  mtc1       $at, $f15
/* 31868 80030C68 44807000 */  mtc1       $zero, $f14
/* 3186C 80030C6C 8C841BF4 */  lw         $a0, %lo(D_800F1BF4)($a0)
.L80030C70:
/* 31870 80030C70 1480004E */  bnez       $a0, .L80030DAC
/* 31874 80030C74 3C18800F */   lui       $t8, %hi(D_800F1BF8)
/* 31878 80030C78 8F181BF8 */  lw         $t8, %lo(D_800F1BF8)($t8)
/* 3187C 80030C7C 24010003 */  addiu      $at, $zero, 3
/* 31880 80030C80 3C0F800F */  lui        $t7, %hi(D_800F1D1C)
/* 31884 80030C84 17010036 */  bne        $t8, $at, .L80030D60
/* 31888 80030C88 240500F4 */   addiu     $a1, $zero, 0xf4
/* 3188C 80030C8C 8DEF1D1C */  lw         $t7, %lo(D_800F1D1C)($t7)
/* 31890 80030C90 C7AA0094 */  lwc1       $f10, 0x94($sp)
/* 31894 80030C94 3C014396 */  lui        $at, 0x4396
/* 31898 80030C98 11E40031 */  beq        $t7, $a0, .L80030D60
/* 3189C 80030C9C 3C19FA00 */   lui       $t9, 0xfa00
/* 318A0 80030CA0 44818000 */  mtc1       $at, $f16
/* 318A4 80030CA4 3C013FF0 */  lui        $at, 0x3ff0
/* 318A8 80030CA8 44813800 */  mtc1       $at, $f7
/* 318AC 80030CAC 46105483 */  div.s      $f18, $f10, $f16
/* 318B0 80030CB0 46009021 */  cvt.d.s    $f0, $f18
/* 318B4 80030CB4 4620703E */  c.le.d     $f14, $f0
/* 318B8 80030CB8 462E0081 */  sub.d      $f2, $f0, $f14
/* 318BC 80030CBC 45020004 */  bc1fl      .L80030CD0
/* 318C0 80030CC0 46201307 */   neg.d     $f12, $f2
/* 318C4 80030CC4 10000002 */  b          .L80030CD0
/* 318C8 80030CC8 46201306 */   mov.d     $f12, $f2
/* 318CC 80030CCC 46201307 */  neg.d      $f12, $f2
.L80030CD0:
/* 318D0 80030CD0 462C7101 */  sub.d      $f4, $f14, $f12
/* 318D4 80030CD4 44803000 */  mtc1       $zero, $f6
/* 318D8 80030CD8 3C014200 */  lui        $at, 0x4200
/* 318DC 80030CDC 44815000 */  mtc1       $at, $f10
/* 318E0 80030CE0 46262200 */  add.d      $f8, $f4, $f6
/* 318E4 80030CE4 8E020000 */  lw         $v0, ($s0)
/* 318E8 80030CE8 240DFFFF */  addiu      $t5, $zero, -1
/* 318EC 80030CEC 240F00A0 */  addiu      $t7, $zero, 0xa0
/* 318F0 80030CF0 46204020 */  cvt.s.d    $f0, $f8
/* 318F4 80030CF4 244C0008 */  addiu      $t4, $v0, 8
/* 318F8 80030CF8 AE0C0000 */  sw         $t4, ($s0)
/* 318FC 80030CFC AC4D0004 */  sw         $t5, 4($v0)
/* 31900 80030D00 46005402 */  mul.s      $f16, $f10, $f0
/* 31904 80030D04 AC590000 */  sw         $t9, ($v0)
/* 31908 80030D08 24190020 */  addiu      $t9, $zero, 0x20
/* 3190C 80030D0C 240D0020 */  addiu      $t5, $zero, 0x20
/* 31910 80030D10 240C00C4 */  addiu      $t4, $zero, 0xc4
/* 31914 80030D14 AFAD0014 */  sw         $t5, 0x14($sp)
/* 31918 80030D18 AFB90010 */  sw         $t9, 0x10($sp)
/* 3191C 80030D1C 4600848D */  trunc.w.s  $f18, $f16
/* 31920 80030D20 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 31924 80030D24 E7A00018 */  swc1       $f0, 0x18($sp)
/* 31928 80030D28 02002025 */  or         $a0, $s0, $zero
/* 3192C 80030D2C 44089000 */  mfc1       $t0, $f18
/* 31930 80030D30 240500F4 */  addiu      $a1, $zero, 0xf4
/* 31934 80030D34 00401825 */  or         $v1, $v0, $zero
/* 31938 80030D38 05010003 */  bgez       $t0, .L80030D48
/* 3193C 80030D3C 0008C043 */   sra       $t8, $t0, 1
/* 31940 80030D40 25010001 */  addiu      $at, $t0, 1
/* 31944 80030D44 0001C043 */  sra        $t8, $at, 1
.L80030D48:
/* 31948 80030D48 03004025 */  or         $t0, $t8, $zero
/* 3194C 80030D4C 01F83023 */  subu       $a2, $t7, $t8
/* 31950 80030D50 0C00C136 */  jal        func_800304D8
/* 31954 80030D54 01983823 */   subu      $a3, $t4, $t8
/* 31958 80030D58 10000014 */  b          .L80030DAC
/* 3195C 80030D5C 00000000 */   nop
.L80030D60:
/* 31960 80030D60 8E020000 */  lw         $v0, ($s0)
/* 31964 80030D64 3C013F80 */  lui        $at, 0x3f80
/* 31968 80030D68 3C18FA00 */  lui        $t8, 0xfa00
/* 3196C 80030D6C 244E0008 */  addiu      $t6, $v0, 8
/* 31970 80030D70 AE0E0000 */  sw         $t6, ($s0)
/* 31974 80030D74 240FFF80 */  addiu      $t7, $zero, -0x80
/* 31978 80030D78 44810000 */  mtc1       $at, $f0
/* 3197C 80030D7C AC4F0004 */  sw         $t7, 4($v0)
/* 31980 80030D80 AC580000 */  sw         $t8, ($v0)
/* 31984 80030D84 240C0020 */  addiu      $t4, $zero, 0x20
/* 31988 80030D88 24190020 */  addiu      $t9, $zero, 0x20
/* 3198C 80030D8C AFB90014 */  sw         $t9, 0x14($sp)
/* 31990 80030D90 AFAC0010 */  sw         $t4, 0x10($sp)
/* 31994 80030D94 02002025 */  or         $a0, $s0, $zero
/* 31998 80030D98 24060090 */  addiu      $a2, $zero, 0x90
/* 3199C 80030D9C 240700B4 */  addiu      $a3, $zero, 0xb4
/* 319A0 80030DA0 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 319A4 80030DA4 0C00C136 */  jal        func_800304D8
/* 319A8 80030DA8 E7A00018 */   swc1      $f0, 0x18($sp)
.L80030DAC:
/* 319AC 80030DAC 3C0D800F */  lui        $t5, %hi(D_800F1BEC)
/* 319B0 80030DB0 8DAD1BEC */  lw         $t5, %lo(D_800F1BEC)($t5)
/* 319B4 80030DB4 3C0E800F */  lui        $t6, %hi(D_800F1BF4)
/* 319B8 80030DB8 55A00067 */  bnel       $t5, $zero, .L80030F58
/* 319BC 80030DBC 8FBF002C */   lw        $ra, 0x2c($sp)
/* 319C0 80030DC0 8DCE1BF4 */  lw         $t6, %lo(D_800F1BF4)($t6)
/* 319C4 80030DC4 3C04800F */  lui        $a0, 0x800f
/* 319C8 80030DC8 000EC080 */  sll        $t8, $t6, 2
/* 319CC 80030DCC 030EC021 */  addu       $t8, $t8, $t6
/* 319D0 80030DD0 0018C100 */  sll        $t8, $t8, 4
/* 319D4 80030DD4 00982021 */  addu       $a0, $a0, $t8
/* 319D8 80030DD8 0C001FA3 */  jal        func_80007E8C
/* 319DC 80030DDC 8C841C0C */   lw        $a0, 0x1c0c($a0)
/* 319E0 80030DE0 1040005C */  beqz       $v0, .L80030F54
/* 319E4 80030DE4 3C04800F */   lui       $a0, %hi(D_800F1BF4)
/* 319E8 80030DE8 8C841BF4 */  lw         $a0, %lo(D_800F1BF4)($a0)
/* 319EC 80030DEC 3C014010 */  lui        $at, 0x4010
/* 319F0 80030DF0 3C0D800F */  lui        $t5, 0x800f
/* 319F4 80030DF4 14800021 */  bnez       $a0, .L80030E7C
/* 319F8 80030DF8 00000000 */   nop
/* 319FC 80030DFC C4440024 */  lwc1       $f4, 0x24($v0)
/* 31A00 80030E00 44816800 */  mtc1       $at, $f13
/* 31A04 80030E04 44806000 */  mtc1       $zero, $f12
/* 31A08 80030E08 460021A1 */  cvt.d.s    $f6, $f4
/* 31A0C 80030E0C 3C013FF0 */  lui        $at, 0x3ff0
/* 31A10 80030E10 462C3202 */  mul.d      $f8, $f6, $f12
/* 31A14 80030E14 44815800 */  mtc1       $at, $f11
/* 31A18 80030E18 44805000 */  mtc1       $zero, $f10
/* 31A1C 80030E1C 3C013F80 */  lui        $at, 0x3f80
/* 31A20 80030E20 462040A0 */  cvt.s.d    $f2, $f8
/* 31A24 80030E24 46001021 */  cvt.d.s    $f0, $f2
/* 31A28 80030E28 462A003C */  c.lt.d     $f0, $f10
/* 31A2C 80030E2C 00000000 */  nop
/* 31A30 80030E30 45020005 */  bc1fl      .L80030E48
/* 31A34 80030E34 4620603C */   c.lt.d    $f12, $f0
/* 31A38 80030E38 44811000 */  mtc1       $at, $f2
/* 31A3C 80030E3C 10000008 */  b          .L80030E60
/* 31A40 80030E40 8E020000 */   lw        $v0, ($s0)
/* 31A44 80030E44 4620603C */  c.lt.d     $f12, $f0
.L80030E48:
/* 31A48 80030E48 3C014080 */  lui        $at, 0x4080
/* 31A4C 80030E4C 45020004 */  bc1fl      .L80030E60
/* 31A50 80030E50 8E020000 */   lw        $v0, ($s0)
/* 31A54 80030E54 44811000 */  mtc1       $at, $f2
/* 31A58 80030E58 00000000 */  nop
/* 31A5C 80030E5C 8E020000 */  lw         $v0, ($s0)
.L80030E60:
/* 31A60 80030E60 3C0CFA00 */  lui        $t4, 0xfa00
/* 31A64 80030E64 2419FFC8 */  addiu      $t9, $zero, -0x38
/* 31A68 80030E68 244F0008 */  addiu      $t7, $v0, 8
/* 31A6C 80030E6C AE0F0000 */  sw         $t7, ($s0)
/* 31A70 80030E70 AC590004 */  sw         $t9, 4($v0)
/* 31A74 80030E74 1000001D */  b          .L80030EEC
/* 31A78 80030E78 AC4C0000 */   sw        $t4, ($v0)
.L80030E7C:
/* 31A7C 80030E7C 8DAD1BF4 */  lw         $t5, 0x1bf4($t5)
/* 31A80 80030E80 3C02800F */  lui        $v0, 0x800f
/* 31A84 80030E84 3C038012 */  lui        $v1, 0x8012
/* 31A88 80030E88 000D7080 */  sll        $t6, $t5, 2
/* 31A8C 80030E8C 01CD7021 */  addu       $t6, $t6, $t5
/* 31A90 80030E90 000E7100 */  sll        $t6, $t6, 4
/* 31A94 80030E94 004E1021 */  addu       $v0, $v0, $t6
/* 31A98 80030E98 8C421C08 */  lw         $v0, 0x1c08($v0)
/* 31A9C 80030E9C 24010002 */  addiu      $at, $zero, 2
/* 31AA0 80030EA0 0002C0C0 */  sll        $t8, $v0, 3
/* 31AA4 80030EA4 0302C023 */  subu       $t8, $t8, $v0
/* 31AA8 80030EA8 0018C080 */  sll        $t8, $t8, 2
/* 31AAC 80030EAC 0302C021 */  addu       $t8, $t8, $v0
/* 31AB0 80030EB0 0018C080 */  sll        $t8, $t8, 2
/* 31AB4 80030EB4 00781821 */  addu       $v1, $v1, $t8
/* 31AB8 80030EB8 80635AB1 */  lb         $v1, 0x5ab1($v1)
/* 31ABC 80030EBC 10610025 */  beq        $v1, $at, .L80030F54
/* 31AC0 80030EC0 24010005 */   addiu     $at, $zero, 5
/* 31AC4 80030EC4 10610023 */  beq        $v1, $at, .L80030F54
/* 31AC8 80030EC8 3C0CFA00 */   lui       $t4, 0xfa00
/* 31ACC 80030ECC 8E020000 */  lw         $v0, ($s0)
/* 31AD0 80030ED0 3C014000 */  lui        $at, 0x4000
/* 31AD4 80030ED4 241996C8 */  addiu      $t9, $zero, -0x6938
/* 31AD8 80030ED8 244F0008 */  addiu      $t7, $v0, 8
/* 31ADC 80030EDC AE0F0000 */  sw         $t7, ($s0)
/* 31AE0 80030EE0 44811000 */  mtc1       $at, $f2
/* 31AE4 80030EE4 AC590004 */  sw         $t9, 4($v0)
/* 31AE8 80030EE8 AC4C0000 */  sw         $t4, ($v0)
.L80030EEC:
/* 31AEC 80030EEC 3C014200 */  lui        $at, 0x4200
/* 31AF0 80030EF0 44818000 */  mtc1       $at, $f16
/* 31AF4 80030EF4 3C05800A */  lui        $a1, %hi(D_8009A664)
/* 31AF8 80030EF8 24A5A664 */  addiu      $a1, $a1, %lo(D_8009A664)
/* 31AFC 80030EFC 46028482 */  mul.s      $f18, $f16, $f2
/* 31B00 80030F00 241800A0 */  addiu      $t8, $zero, 0xa0
/* 31B04 80030F04 240C0096 */  addiu      $t4, $zero, 0x96
/* 31B08 80030F08 24030020 */  addiu      $v1, $zero, 0x20
/* 31B0C 80030F0C ACA3000C */  sw         $v1, 0xc($a1)
/* 31B10 80030F10 ACA30010 */  sw         $v1, 0x10($a1)
/* 31B14 80030F14 E4A2001C */  swc1       $f2, 0x1c($a1)
/* 31B18 80030F18 4600910D */  trunc.w.s  $f4, $f18
/* 31B1C 80030F1C E4A20020 */  swc1       $f2, 0x20($a1)
/* 31B20 80030F20 24040005 */  addiu      $a0, $zero, 5
/* 31B24 80030F24 02003025 */  or         $a2, $s0, $zero
/* 31B28 80030F28 44022000 */  mfc1       $v0, $f4
/* 31B2C 80030F2C 00000000 */  nop
/* 31B30 80030F30 04410003 */  bgez       $v0, .L80030F40
/* 31B34 80030F34 00027043 */   sra       $t6, $v0, 1
/* 31B38 80030F38 24410001 */  addiu      $at, $v0, 1
/* 31B3C 80030F3C 00017043 */  sra        $t6, $at, 1
.L80030F40:
/* 31B40 80030F40 030E7823 */  subu       $t7, $t8, $t6
/* 31B44 80030F44 018EC823 */  subu       $t9, $t4, $t6
/* 31B48 80030F48 ACAF0004 */  sw         $t7, 4($a1)
/* 31B4C 80030F4C 0C0030D5 */  jal        func_8000C354
/* 31B50 80030F50 ACB90008 */   sw        $t9, 8($a1)
.L80030F54:
/* 31B54 80030F54 8FBF002C */  lw         $ra, 0x2c($sp)
.L80030F58:
/* 31B58 80030F58 8FB00028 */  lw         $s0, 0x28($sp)
/* 31B5C 80030F5C 27BD00B8 */  addiu      $sp, $sp, 0xb8
/* 31B60 80030F60 03E00008 */  jr         $ra
/* 31B64 80030F64 00000000 */   nop

glabel func_80030F68
/* 31B68 80030F68 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 31B6C 80030F6C AFBF0024 */  sw         $ra, 0x24($sp)
/* 31B70 80030F70 AFA40028 */  sw         $a0, 0x28($sp)
/* 31B74 80030F74 AFB30020 */  sw         $s3, 0x20($sp)
/* 31B78 80030F78 AFB2001C */  sw         $s2, 0x1c($sp)
/* 31B7C 80030F7C AFB10018 */  sw         $s1, 0x18($sp)
/* 31B80 80030F80 AFB00014 */  sw         $s0, 0x14($sp)
/* 31B84 80030F84 0C0025B5 */  jal        func_800096D4
/* 31B88 80030F88 00002025 */   or        $a0, $zero, $zero
/* 31B8C 80030F8C 3C02800A */  lui        $v0, %hi(D_8009A6AC)
/* 31B90 80030F90 2442A6AC */  addiu      $v0, $v0, %lo(D_8009A6AC)
/* 31B94 80030F94 90440000 */  lbu        $a0, ($v0)
/* 31B98 80030F98 90450001 */  lbu        $a1, 1($v0)
/* 31B9C 80030F9C 90460002 */  lbu        $a2, 2($v0)
/* 31BA0 80030FA0 0C0005AC */  jal        func_800016B0
/* 31BA4 80030FA4 90470003 */   lbu       $a3, 3($v0)
/* 31BA8 80030FA8 3C10800B */  lui        $s0, %hi(D_800ABDD8)
/* 31BAC 80030FAC 2610BDD8 */  addiu      $s0, $s0, %lo(D_800ABDD8)
/* 31BB0 80030FB0 8E040000 */  lw         $a0, ($s0)
/* 31BB4 80030FB4 0C000453 */  jal        func_8000114C
/* 31BB8 80030FB8 00002825 */   or        $a1, $zero, $zero
/* 31BBC 80030FBC 0C000486 */  jal        func_80001218
/* 31BC0 80030FC0 8E040000 */   lw        $a0, ($s0)
/* 31BC4 80030FC4 0C0004C9 */  jal        func_80001324
/* 31BC8 80030FC8 8E040000 */   lw        $a0, ($s0)
/* 31BCC 80030FCC 3C03800F */  lui        $v1, %hi(D_800F1CE0)
/* 31BD0 80030FD0 24631CE0 */  addiu      $v1, $v1, %lo(D_800F1CE0)
/* 31BD4 80030FD4 8C620000 */  lw         $v0, ($v1)
/* 31BD8 80030FD8 28410002 */  slti       $at, $v0, 2
/* 31BDC 80030FDC 10200003 */  beqz       $at, .L80030FEC
/* 31BE0 80030FE0 244E0001 */   addiu     $t6, $v0, 1
/* 31BE4 80030FE4 1000003D */  b          .L800310DC
/* 31BE8 80030FE8 AC6E0000 */   sw        $t6, ($v1)
.L80030FEC:
/* 31BEC 80030FEC 3C0F800F */  lui        $t7, %hi(D_800F1BF4)
/* 31BF0 80030FF0 8DEF1BF4 */  lw         $t7, %lo(D_800F1BF4)($t7)
/* 31BF4 80030FF4 3C13800F */  lui        $s3, %hi(D_800F1BE0)
/* 31BF8 80030FF8 26731BE0 */  addiu      $s3, $s3, %lo(D_800F1BE0)
/* 31BFC 80030FFC 000FC080 */  sll        $t8, $t7, 2
/* 31C00 80031000 030FC021 */  addu       $t8, $t8, $t7
/* 31C04 80031004 0018C100 */  sll        $t8, $t8, 4
/* 31C08 80031008 02789021 */  addu       $s2, $s3, $t8
/* 31C0C 8003100C 3C04800F */  lui        $a0, %hi(D_800F1BE0)
/* 31C10 80031010 26520028 */  addiu      $s2, $s2, 0x28
/* 31C14 80031014 8C841BE0 */  lw         $a0, %lo(D_800F1BE0)($a0)
/* 31C18 80031018 0C0025E1 */  jal        func_80009784
/* 31C1C 8003101C 24052000 */   addiu     $a1, $zero, 0x2000
/* 31C20 80031020 0C00C0A3 */  jal        func_8003028C
/* 31C24 80031024 00000000 */   nop
/* 31C28 80031028 02408825 */  or         $s1, $s2, $zero
/* 31C2C 8003102C 2412000A */  addiu      $s2, $zero, 0xa
/* 31C30 80031030 00008025 */  or         $s0, $zero, $zero
.L80031034:
/* 31C34 80031034 8E240004 */  lw         $a0, 4($s1)
/* 31C38 80031038 0010C880 */  sll        $t9, $s0, 2
/* 31C3C 8003103C 02794021 */  addu       $t0, $s3, $t9
/* 31C40 80031040 14800005 */  bnez       $a0, .L80031058
/* 31C44 80031044 00000000 */   nop
/* 31C48 80031048 0C001FA3 */  jal        func_80007E8C
/* 31C4C 8003104C 8D0400C8 */   lw        $a0, 0xc8($t0)
/* 31C50 80031050 10000004 */  b          .L80031064
/* 31C54 80031054 00402025 */   or        $a0, $v0, $zero
.L80031058:
/* 31C58 80031058 0C001FA3 */  jal        func_80007E8C
/* 31C5C 8003105C 00000000 */   nop
/* 31C60 80031060 00402025 */  or         $a0, $v0, $zero
.L80031064:
/* 31C64 80031064 50400004 */  beql       $v0, $zero, .L80031078
/* 31C68 80031068 26100001 */   addiu     $s0, $s0, 1
/* 31C6C 8003106C 0C0025E1 */  jal        func_80009784
/* 31C70 80031070 24052000 */   addiu     $a1, $zero, 0x2000
/* 31C74 80031074 26100001 */  addiu      $s0, $s0, 1
.L80031078:
/* 31C78 80031078 1612FFEE */  bne        $s0, $s2, .L80031034
/* 31C7C 8003107C 26310008 */   addiu     $s1, $s1, 8
/* 31C80 80031080 3C04800F */  lui        $a0, %hi(D_800EF724)
/* 31C84 80031084 8C84F724 */  lw         $a0, %lo(D_800EF724)($a0)
/* 31C88 80031088 10800007 */  beqz       $a0, .L800310A8
/* 31C8C 8003108C 00000000 */   nop
/* 31C90 80031090 0C001FA3 */  jal        func_80007E8C
/* 31C94 80031094 00000000 */   nop
/* 31C98 80031098 10400003 */  beqz       $v0, .L800310A8
/* 31C9C 8003109C 00402025 */   or        $a0, $v0, $zero
/* 31CA0 800310A0 0C0025E1 */  jal        func_80009784
/* 31CA4 800310A4 24052000 */   addiu     $a1, $zero, 0x2000
.L800310A8:
/* 31CA8 800310A8 3C09800F */  lui        $t1, %hi(D_800F1BF8)
/* 31CAC 800310AC 8D291BF8 */  lw         $t1, %lo(D_800F1BF8)($t1)
/* 31CB0 800310B0 24010005 */  addiu      $at, $zero, 5
/* 31CB4 800310B4 15210005 */  bne        $t1, $at, .L800310CC
/* 31CB8 800310B8 00000000 */   nop
/* 31CBC 800310BC 0C00B0EF */  jal        func_8002C3BC
/* 31CC0 800310C0 00000000 */   nop
/* 31CC4 800310C4 10000006 */  b          .L800310E0
/* 31CC8 800310C8 8FBF0024 */   lw        $ra, 0x24($sp)
.L800310CC:
/* 31CCC 800310CC 0C00C0D4 */  jal        func_80030350
/* 31CD0 800310D0 8FA40028 */   lw        $a0, 0x28($sp)
/* 31CD4 800310D4 0C00C1DF */  jal        func_8003077C
/* 31CD8 800310D8 8FA40028 */   lw        $a0, 0x28($sp)
.L800310DC:
/* 31CDC 800310DC 8FBF0024 */  lw         $ra, 0x24($sp)
.L800310E0:
/* 31CE0 800310E0 8FB00014 */  lw         $s0, 0x14($sp)
/* 31CE4 800310E4 8FB10018 */  lw         $s1, 0x18($sp)
/* 31CE8 800310E8 8FB2001C */  lw         $s2, 0x1c($sp)
/* 31CEC 800310EC 8FB30020 */  lw         $s3, 0x20($sp)
/* 31CF0 800310F0 03E00008 */  jr         $ra
/* 31CF4 800310F4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800310F8
/* 31CF8 800310F8 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 31CFC 800310FC AFB00020 */  sw         $s0, 0x20($sp)
/* 31D00 80031100 00808025 */  or         $s0, $a0, $zero
/* 31D04 80031104 AFBF002C */  sw         $ra, 0x2c($sp)
/* 31D08 80031108 AFB10024 */  sw         $s1, 0x24($sp)
/* 31D0C 8003110C 00A08825 */  or         $s1, $a1, $zero
/* 31D10 80031110 AFB20028 */  sw         $s2, 0x28($sp)
/* 31D14 80031114 0C001283 */  jal        func_80004A0C
/* 31D18 80031118 00002025 */   or        $a0, $zero, $zero
/* 31D1C 8003111C 0C002CB2 */  jal        func_8000B2C8
/* 31D20 80031120 24040001 */   addiu     $a0, $zero, 1
/* 31D24 80031124 3C04800F */  lui        $a0, %hi(D_800EF724)
/* 31D28 80031128 0C001FA3 */  jal        func_80007E8C
/* 31D2C 8003112C 8C84F724 */   lw        $a0, %lo(D_800EF724)($a0)
/* 31D30 80031130 10400012 */  beqz       $v0, .L8003117C
/* 31D34 80031134 AFA20034 */   sw        $v0, 0x34($sp)
/* 31D38 80031138 12200010 */  beqz       $s1, .L8003117C
/* 31D3C 8003113C 8C440054 */   lw        $a0, 0x54($v0)
/* 31D40 80031140 848E0004 */  lh         $t6, 4($a0)
/* 31D44 80031144 3C188012 */  lui        $t8, 0x8012
/* 31D48 80031148 24010001 */  addiu      $at, $zero, 1
/* 31D4C 8003114C 000E78C0 */  sll        $t7, $t6, 3
/* 31D50 80031150 01EE7823 */  subu       $t7, $t7, $t6
/* 31D54 80031154 000F7880 */  sll        $t7, $t7, 2
/* 31D58 80031158 01EE7821 */  addu       $t7, $t7, $t6
/* 31D5C 8003115C 000F7880 */  sll        $t7, $t7, 2
/* 31D60 80031160 030FC021 */  addu       $t8, $t8, $t7
/* 31D64 80031164 83185AB1 */  lb         $t8, 0x5ab1($t8)
/* 31D68 80031168 24100001 */  addiu      $s0, $zero, 1
/* 31D6C 8003116C 17010003 */  bne        $t8, $at, .L8003117C
/* 31D70 80031170 00000000 */   nop
/* 31D74 80031174 10000001 */  b          .L8003117C
/* 31D78 80031178 00008025 */   or        $s0, $zero, $zero
.L8003117C:
/* 31D7C 8003117C 2401FFFF */  addiu      $at, $zero, -1
/* 31D80 80031180 12010003 */  beq        $s0, $at, .L80031190
/* 31D84 80031184 3C12800F */   lui       $s2, %hi(D_800F1BE0)
/* 31D88 80031188 3C01800F */  lui        $at, %hi(D_800F1BF4)
/* 31D8C 8003118C AC301BF4 */  sw         $s0, %lo(D_800F1BF4)($at)
.L80031190:
/* 31D90 80031190 26521BE0 */  addiu      $s2, $s2, %lo(D_800F1BE0)
/* 31D94 80031194 02402025 */  or         $a0, $s2, $zero
/* 31D98 80031198 0C00BDA0 */  jal        func_8002F680
/* 31D9C 8003119C 00002825 */   or        $a1, $zero, $zero
/* 31DA0 800311A0 0C00BF89 */  jal        func_8002FE24
/* 31DA4 800311A4 02402025 */   or        $a0, $s2, $zero
/* 31DA8 800311A8 0C00BB1D */  jal        func_8002EC74
/* 31DAC 800311AC 02402025 */   or        $a0, $s2, $zero
/* 31DB0 800311B0 3C04800F */  lui        $a0, %hi(D_800F1BF4)
/* 31DB4 800311B4 8C841BF4 */  lw         $a0, %lo(D_800F1BF4)($a0)
/* 31DB8 800311B8 3C01800F */  lui        $at, %hi(D_800F1CE0)
/* 31DBC 800311BC AC201CE0 */  sw         $zero, %lo(D_800F1CE0)($at)
/* 31DC0 800311C0 0004C880 */  sll        $t9, $a0, 2
/* 31DC4 800311C4 0324C821 */  addu       $t9, $t9, $a0
/* 31DC8 800311C8 0019C900 */  sll        $t9, $t9, 4
/* 31DCC 800311CC 02591021 */  addu       $v0, $s2, $t9
/* 31DD0 800311D0 3C01800F */  lui        $at, %hi(D_800F1D1C)
/* 31DD4 800311D4 24510028 */  addiu      $s1, $v0, 0x28
/* 31DD8 800311D8 24120050 */  addiu      $s2, $zero, 0x50
/* 31DDC 800311DC 00008025 */  or         $s0, $zero, $zero
/* 31DE0 800311E0 AC241D1C */  sw         $a0, %lo(D_800F1D1C)($at)
.L800311E4:
/* 31DE4 800311E4 0C001FA3 */  jal        func_80007E8C
/* 31DE8 800311E8 8E240004 */   lw        $a0, 4($s1)
/* 31DEC 800311EC 26100008 */  addiu      $s0, $s0, 8
/* 31DF0 800311F0 1612FFFC */  bne        $s0, $s2, .L800311E4
/* 31DF4 800311F4 26310008 */   addiu     $s1, $s1, 8
/* 31DF8 800311F8 8FA40034 */  lw         $a0, 0x34($sp)
/* 31DFC 800311FC 10800007 */  beqz       $a0, .L8003121C
/* 31E00 80031200 00000000 */   nop
/* 31E04 80031204 0C00237A */  jal        func_80008DE8
/* 31E08 80031208 24052000 */   addiu     $a1, $zero, 0x2000
/* 31E0C 8003120C 3C04800F */  lui        $a0, %hi(D_800EF724)
/* 31E10 80031210 8C84F724 */  lw         $a0, %lo(D_800EF724)($a0)
/* 31E14 80031214 0C00BAFB */  jal        func_8002EBEC
/* 31E18 80031218 3C053F00 */   lui       $a1, 0x3f00
.L8003121C:
/* 31E1C 8003121C 0C00BBE2 */  jal        func_8002EF88
/* 31E20 80031220 00000000 */   nop
/* 31E24 80031224 2408001E */  addiu      $t0, $zero, 0x1e
/* 31E28 80031228 AFA80010 */  sw         $t0, 0x10($sp)
/* 31E2C 8003122C 24040001 */  addiu      $a0, $zero, 1
/* 31E30 80031230 2405001E */  addiu      $a1, $zero, 0x1e
/* 31E34 80031234 2406001E */  addiu      $a2, $zero, 0x1e
/* 31E38 80031238 0C0013C9 */  jal        func_80004F24
/* 31E3C 8003123C 2407001E */   addiu     $a3, $zero, 0x1e
/* 31E40 80031240 0C002C3F */  jal        func_8000B0FC
/* 31E44 80031244 00000000 */   nop
/* 31E48 80031248 8FBF002C */  lw         $ra, 0x2c($sp)
/* 31E4C 8003124C 246BF448 */  addiu      $t3, $v1, -0xbb8
/* 31E50 80031250 3C01800F */  lui        $at, %hi(D_800F1D20)
/* 31E54 80031254 8FB00020 */  lw         $s0, 0x20($sp)
/* 31E58 80031258 8FB10024 */  lw         $s1, 0x24($sp)
/* 31E5C 8003125C 8FB20028 */  lw         $s2, 0x28($sp)
/* 31E60 80031260 AC2B1D20 */  sw         $t3, %lo(D_800F1D20)($at)
/* 31E64 80031264 03E00008 */  jr         $ra
/* 31E68 80031268 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8003126C
/* 31E6C 8003126C 3C04800F */  lui        $a0, %hi(D_800F1BE0)
/* 31E70 80031270 24841BE0 */  addiu      $a0, $a0, %lo(D_800F1BE0)
/* 31E74 80031274 8C8E0014 */  lw         $t6, 0x14($a0)
/* 31E78 80031278 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 31E7C 8003127C AFB20028 */  sw         $s2, 0x28($sp)
/* 31E80 80031280 000E7880 */  sll        $t7, $t6, 2
/* 31E84 80031284 01EE7821 */  addu       $t7, $t7, $t6
/* 31E88 80031288 000F7900 */  sll        $t7, $t7, 4
/* 31E8C 8003128C AFB10024 */  sw         $s1, 0x24($sp)
/* 31E90 80031290 AFB00020 */  sw         $s0, 0x20($sp)
/* 31E94 80031294 008F1021 */  addu       $v0, $a0, $t7
/* 31E98 80031298 AFBF002C */  sw         $ra, 0x2c($sp)
/* 31E9C 8003129C 24510028 */  addiu      $s1, $v0, 0x28
/* 31EA0 800312A0 00008025 */  or         $s0, $zero, $zero
/* 31EA4 800312A4 24120050 */  addiu      $s2, $zero, 0x50
.L800312A8:
/* 31EA8 800312A8 0C001FA3 */  jal        func_80007E8C
/* 31EAC 800312AC 8E240004 */   lw        $a0, 4($s1)
/* 31EB0 800312B0 26100008 */  addiu      $s0, $s0, 8
/* 31EB4 800312B4 1612FFFC */  bne        $s0, $s2, .L800312A8
/* 31EB8 800312B8 26310008 */   addiu     $s1, $s1, 8
/* 31EBC 800312BC 3C04800F */  lui        $a0, %hi(D_800EF724)
/* 31EC0 800312C0 8C84F724 */  lw         $a0, %lo(D_800EF724)($a0)
/* 31EC4 800312C4 1080000A */  beqz       $a0, .L800312F0
/* 31EC8 800312C8 00000000 */   nop
/* 31ECC 800312CC 0C001FA3 */  jal        func_80007E8C
/* 31ED0 800312D0 00000000 */   nop
/* 31ED4 800312D4 00402025 */  or         $a0, $v0, $zero
/* 31ED8 800312D8 0C002394 */  jal        func_80008E50
/* 31EDC 800312DC 24052000 */   addiu     $a1, $zero, 0x2000
/* 31EE0 800312E0 3C04800F */  lui        $a0, %hi(D_800EF724)
/* 31EE4 800312E4 8C84F724 */  lw         $a0, %lo(D_800EF724)($a0)
/* 31EE8 800312E8 0C00BAFB */  jal        func_8002EBEC
/* 31EEC 800312EC 3C053F80 */   lui       $a1, 0x3f80
.L800312F0:
/* 31EF0 800312F0 0C009EA2 */  jal        func_80027A88
/* 31EF4 800312F4 00000000 */   nop
/* 31EF8 800312F8 0C00BB6F */  jal        func_8002EDBC
/* 31EFC 800312FC 00000000 */   nop
/* 31F00 80031300 2418001E */  addiu      $t8, $zero, 0x1e
/* 31F04 80031304 AFB80010 */  sw         $t8, 0x10($sp)
/* 31F08 80031308 00002025 */  or         $a0, $zero, $zero
/* 31F0C 8003130C 2405001E */  addiu      $a1, $zero, 0x1e
/* 31F10 80031310 2406001E */  addiu      $a2, $zero, 0x1e
/* 31F14 80031314 0C0013C9 */  jal        func_80004F24
/* 31F18 80031318 2407001E */   addiu     $a3, $zero, 0x1e
/* 31F1C 8003131C 3C10800F */  lui        $s0, %hi(D_800F1D18)
/* 31F20 80031320 26101D18 */  addiu      $s0, $s0, %lo(D_800F1D18)
/* 31F24 80031324 8E020000 */  lw         $v0, ($s0)
/* 31F28 80031328 24010001 */  addiu      $at, $zero, 1
/* 31F2C 8003132C 10400008 */  beqz       $v0, .L80031350
/* 31F30 80031330 00000000 */   nop
/* 31F34 80031334 1041000A */  beq        $v0, $at, .L80031360
/* 31F38 80031338 3C04800F */   lui       $a0, 0x800f
/* 31F3C 8003133C 24010002 */  addiu      $at, $zero, 2
/* 31F40 80031340 1041000C */  beq        $v0, $at, .L80031374
/* 31F44 80031344 00000000 */   nop
/* 31F48 80031348 1000000E */  b          .L80031384
/* 31F4C 8003134C 8FBF002C */   lw        $ra, 0x2c($sp)
.L80031350:
/* 31F50 80031350 0C002CB2 */  jal        func_8000B2C8
/* 31F54 80031354 00002025 */   or        $a0, $zero, $zero
/* 31F58 80031358 1000000A */  b          .L80031384
/* 31F5C 8003135C 8FBF002C */   lw        $ra, 0x2c($sp)
.L80031360:
/* 31F60 80031360 8C841D1C */  lw         $a0, 0x1d1c($a0)
/* 31F64 80031364 0C00C43E */  jal        func_800310F8
/* 31F68 80031368 00002825 */   or        $a1, $zero, $zero
/* 31F6C 8003136C 10000005 */  b          .L80031384
/* 31F70 80031370 8FBF002C */   lw        $ra, 0x2c($sp)
.L80031374:
/* 31F74 80031374 0C046A1E */  jal        func_8011A878
/* 31F78 80031378 00000000 */   nop
/* 31F7C 8003137C AE000000 */  sw         $zero, ($s0)
/* 31F80 80031380 8FBF002C */  lw         $ra, 0x2c($sp)
.L80031384:
/* 31F84 80031384 8FB00020 */  lw         $s0, 0x20($sp)
/* 31F88 80031388 8FB10024 */  lw         $s1, 0x24($sp)
/* 31F8C 8003138C 8FB20028 */  lw         $s2, 0x28($sp)
/* 31F90 80031390 03E00008 */  jr         $ra
/* 31F94 80031394 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80031398
/* 31F98 80031398 3C07800F */  lui        $a3, %hi(D_800F1BE0)
/* 31F9C 8003139C 24E71BE0 */  addiu      $a3, $a3, %lo(D_800F1BE0)
/* 31FA0 800313A0 8CEE0018 */  lw         $t6, 0x18($a3)
/* 31FA4 800313A4 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 31FA8 800313A8 24010005 */  addiu      $at, $zero, 5
/* 31FAC 800313AC 15C1000E */  bne        $t6, $at, .L800313E8
/* 31FB0 800313B0 AFBF001C */   sw        $ra, 0x1c($sp)
/* 31FB4 800313B4 3C02800B */  lui        $v0, %hi(D_800AD54C)
/* 31FB8 800313B8 8C42D54C */  lw         $v0, %lo(D_800AD54C)($v0)
/* 31FBC 800313BC 304F8000 */  andi       $t7, $v0, 0x8000
/* 31FC0 800313C0 51E000D4 */  beql       $t7, $zero, .L80031714
/* 31FC4 800313C4 8FBF001C */   lw        $ra, 0x1c($sp)
/* 31FC8 800313C8 0C00B10F */  jal        func_8002C43C
/* 31FCC 800313CC 00000000 */   nop
/* 31FD0 800313D0 3C04800F */  lui        $a0, %hi(D_800F1BE0)
/* 31FD4 800313D4 24841BE0 */  addiu      $a0, $a0, %lo(D_800F1BE0)
/* 31FD8 800313D8 0C00BDA0 */  jal        func_8002F680
/* 31FDC 800313DC 24050002 */   addiu     $a1, $zero, 2
/* 31FE0 800313E0 100000CC */  b          .L80031714
/* 31FE4 800313E4 8FBF001C */   lw        $ra, 0x1c($sp)
.L800313E8:
/* 31FE8 800313E8 3C18800F */  lui        $t8, %hi(D_800F1BF8)
/* 31FEC 800313EC 8F181BF8 */  lw         $t8, %lo(D_800F1BF8)($t8)
/* 31FF0 800313F0 24010002 */  addiu      $at, $zero, 2
/* 31FF4 800313F4 3C19800F */  lui        $t9, %hi(D_800F1BEC)
/* 31FF8 800313F8 570100C6 */  bnel       $t8, $at, .L80031714
/* 31FFC 800313FC 8FBF001C */   lw        $ra, 0x1c($sp)
/* 32000 80031400 8F391BEC */  lw         $t9, %lo(D_800F1BEC)($t9)
/* 32004 80031404 3C02800B */  lui        $v0, %hi(D_800AD54C)
/* 32008 80031408 572000C2 */  bnel       $t9, $zero, .L80031714
/* 3200C 8003140C 8FBF001C */   lw        $ra, 0x1c($sp)
/* 32010 80031410 8C42D54C */  lw         $v0, %lo(D_800AD54C)($v0)
/* 32014 80031414 3C01800F */  lui        $at, 0x800f
/* 32018 80031418 00002025 */  or         $a0, $zero, $zero
/* 3201C 8003141C 30481000 */  andi       $t0, $v0, 0x1000
/* 32020 80031420 11000010 */  beqz       $t0, .L80031464
/* 32024 80031424 30494000 */   andi      $t1, $v0, 0x4000
/* 32028 80031428 3C06800A */  lui        $a2, %hi(D_800A5EB0)
/* 3202C 8003142C AC201D18 */  sw         $zero, 0x1d18($at)
/* 32030 80031430 24C65EB0 */  addiu      $a2, $a2, %lo(D_800A5EB0)
/* 32034 80031434 0C009E62 */  jal        func_80027988
/* 32038 80031438 3C053F80 */   lui       $a1, 0x3f80
/* 3203C 8003143C 3C04800F */  lui        $a0, %hi(D_800F1BE0)
/* 32040 80031440 24841BE0 */  addiu      $a0, $a0, %lo(D_800F1BE0)
/* 32044 80031444 0C00BDA0 */  jal        func_8002F680
/* 32048 80031448 24050003 */   addiu     $a1, $zero, 3
/* 3204C 8003144C 3C04800F */  lui        $a0, %hi(D_800EF6A0)
/* 32050 80031450 2484F6A0 */  addiu      $a0, $a0, %lo(D_800EF6A0)
/* 32054 80031454 0C0446F9 */  jal        func_80111BE4
/* 32058 80031458 240500B8 */   addiu     $a1, $zero, 0xb8
/* 3205C 8003145C 100000AD */  b          .L80031714
/* 32060 80031460 8FBF001C */   lw        $ra, 0x1c($sp)
.L80031464:
/* 32064 80031464 11200057 */  beqz       $t1, .L800315C4
/* 32068 80031468 304B8000 */   andi      $t3, $v0, 0x8000
/* 3206C 8003146C 3C0A800F */  lui        $t2, %hi(D_800F1BF4)
/* 32070 80031470 8D4A1BF4 */  lw         $t2, %lo(D_800F1BF4)($t2)
/* 32074 80031474 3C0D800A */  lui        $t5, %hi(D_800A5EE0)
/* 32078 80031478 25AD5EE0 */  addiu      $t5, $t5, %lo(D_800A5EE0)
/* 3207C 8003147C 000A5880 */  sll        $t3, $t2, 2
/* 32080 80031480 016A5821 */  addu       $t3, $t3, $t2
/* 32084 80031484 000B5900 */  sll        $t3, $t3, 4
/* 32088 80031488 00EB1021 */  addu       $v0, $a3, $t3
/* 3208C 8003148C 8C4C002C */  lw         $t4, 0x2c($v0)
/* 32090 80031490 51800008 */  beql       $t4, $zero, .L800314B4
/* 32094 80031494 AFA00060 */   sw        $zero, 0x60($sp)
/* 32098 80031498 8C440028 */  lw         $a0, 0x28($v0)
/* 3209C 8003149C 24050001 */  addiu      $a1, $zero, 1
/* 320A0 800314A0 0C0453D3 */  jal        func_80114F4C
/* 320A4 800314A4 AFA40060 */   sw        $a0, 0x60($sp)
/* 320A8 800314A8 10000003 */  b          .L800314B8
/* 320AC 800314AC AFA2005C */   sw        $v0, 0x5c($sp)
/* 320B0 800314B0 AFA00060 */  sw         $zero, 0x60($sp)
.L800314B4:
/* 320B4 800314B4 AFAD005C */  sw         $t5, 0x5c($sp)
.L800314B8:
/* 320B8 800314B8 00002025 */  or         $a0, $zero, $zero
/* 320BC 800314BC 00002825 */  or         $a1, $zero, $zero
/* 320C0 800314C0 0C00B0D2 */  jal        func_8002C348
/* 320C4 800314C4 00003025 */   or        $a2, $zero, $zero
/* 320C8 800314C8 10400091 */  beqz       $v0, .L80031710
/* 320CC 800314CC 8FA70060 */   lw        $a3, 0x60($sp)
/* 320D0 800314D0 10E00022 */  beqz       $a3, .L8003155C
/* 320D4 800314D4 000770C0 */   sll       $t6, $a3, 3
/* 320D8 800314D8 01C77023 */  subu       $t6, $t6, $a3
/* 320DC 800314DC 000E7080 */  sll        $t6, $t6, 2
/* 320E0 800314E0 01C77021 */  addu       $t6, $t6, $a3
/* 320E4 800314E4 000E7080 */  sll        $t6, $t6, 2
/* 320E8 800314E8 3C028012 */  lui        $v0, %hi(D_80125AB1)
/* 320EC 800314EC 004E1021 */  addu       $v0, $v0, $t6
/* 320F0 800314F0 80425AB1 */  lb         $v0, %lo(D_80125AB1)($v0)
/* 320F4 800314F4 24010002 */  addiu      $at, $zero, 2
/* 320F8 800314F8 00E02025 */  or         $a0, $a3, $zero
/* 320FC 800314FC 10410004 */  beq        $v0, $at, .L80031510
/* 32100 80031500 24050001 */   addiu     $a1, $zero, 1
/* 32104 80031504 24010005 */  addiu      $at, $zero, 5
/* 32108 80031508 14410004 */  bne        $v0, $at, .L8003151C
/* 3210C 8003150C 3C06800A */   lui       $a2, 0x800a
.L80031510:
/* 32110 80031510 3C06800A */  lui        $a2, %hi(D_800A5F4C)
/* 32114 80031514 10000002 */  b          .L80031520
/* 32118 80031518 24C65F4C */   addiu     $a2, $a2, %lo(D_800A5F4C)
.L8003151C:
/* 3211C 8003151C 24C65F50 */  addiu      $a2, $a2, 0x5f50
.L80031520:
/* 32120 80031520 0C04539D */  jal        func_80114E74
/* 32124 80031524 AFA60024 */   sw        $a2, 0x24($sp)
/* 32128 80031528 AFA20028 */  sw         $v0, 0x28($sp)
/* 3212C 8003152C 0C0453BA */  jal        func_80114EE8
/* 32130 80031530 8FA40060 */   lw        $a0, 0x60($sp)
/* 32134 80031534 3C05800A */  lui        $a1, %hi(D_800A5F3C)
/* 32138 80031538 24A55F3C */  addiu      $a1, $a1, %lo(D_800A5F3C)
/* 3213C 8003153C 8FA60024 */  lw         $a2, 0x24($sp)
/* 32140 80031540 27A40034 */  addiu      $a0, $sp, 0x34
/* 32144 80031544 8FA70028 */  lw         $a3, 0x28($sp)
/* 32148 80031548 0C014E38 */  jal        sprintf
/* 3214C 8003154C AFA20010 */   sw        $v0, 0x10($sp)
/* 32150 80031550 0C00B0B9 */  jal        func_8002C2E4
/* 32154 80031554 27A40034 */   addiu     $a0, $sp, 0x34
/* 32158 80031558 8FA70060 */  lw         $a3, 0x60($sp)
.L8003155C:
/* 3215C 8003155C 000778C0 */  sll        $t7, $a3, 3
/* 32160 80031560 01E77823 */  subu       $t7, $t7, $a3
/* 32164 80031564 000F7880 */  sll        $t7, $t7, 2
/* 32168 80031568 01E77821 */  addu       $t7, $t7, $a3
/* 3216C 8003156C 3C188012 */  lui        $t8, %hi(D_80125A40)
/* 32170 80031570 27185A40 */  addiu      $t8, $t8, %lo(D_80125A40)
/* 32174 80031574 000F7880 */  sll        $t7, $t7, 2
/* 32178 80031578 01F8C821 */  addu       $t9, $t7, $t8
/* 3217C 8003157C AFB90020 */  sw         $t9, 0x20($sp)
/* 32180 80031580 0C00B0B9 */  jal        func_8002C2E4
/* 32184 80031584 8FA4005C */   lw        $a0, 0x5c($sp)
/* 32188 80031588 8FA80020 */  lw         $t0, 0x20($sp)
/* 3218C 8003158C 3C04800A */  lui        $a0, %hi(D_8009A618)
/* 32190 80031590 81090071 */  lb         $t1, 0x71($t0)
/* 32194 80031594 00095080 */  sll        $t2, $t1, 2
/* 32198 80031598 008A2021 */  addu       $a0, $a0, $t2
/* 3219C 8003159C 0C00B0B9 */  jal        func_8002C2E4
/* 321A0 800315A0 8C84A618 */   lw        $a0, %lo(D_8009A618)($a0)
/* 321A4 800315A4 0C00B0FF */  jal        func_8002C3FC
/* 321A8 800315A8 00000000 */   nop
/* 321AC 800315AC 3C04800F */  lui        $a0, %hi(D_800F1BE0)
/* 321B0 800315B0 24841BE0 */  addiu      $a0, $a0, %lo(D_800F1BE0)
/* 321B4 800315B4 0C00BDA0 */  jal        func_8002F680
/* 321B8 800315B8 24050005 */   addiu     $a1, $zero, 5
/* 321BC 800315BC 10000055 */  b          .L80031714
/* 321C0 800315C0 8FBF001C */   lw        $ra, 0x1c($sp)
.L800315C4:
/* 321C4 800315C4 11600006 */  beqz       $t3, .L800315E0
/* 321C8 800315C8 304C0300 */   andi      $t4, $v0, 0x300
/* 321CC 800315CC 3C04800F */  lui        $a0, %hi(D_800EF6A0)
/* 321D0 800315D0 0C00BDAC */  jal        func_8002F6B0
/* 321D4 800315D4 2484F6A0 */   addiu     $a0, $a0, %lo(D_800EF6A0)
/* 321D8 800315D8 1000004E */  b          .L80031714
/* 321DC 800315DC 8FBF001C */   lw        $ra, 0x1c($sp)
.L800315E0:
/* 321E0 800315E0 1180002C */  beqz       $t4, .L80031694
/* 321E4 800315E4 30480400 */   andi      $t0, $v0, 0x400
/* 321E8 800315E8 304D0100 */  andi       $t5, $v0, 0x100
/* 321EC 800315EC 11A00005 */  beqz       $t5, .L80031604
/* 321F0 800315F0 3C04800F */   lui       $a0, 0x800f
/* 321F4 800315F4 240EFFFF */  addiu      $t6, $zero, -1
/* 321F8 800315F8 3C01800F */  lui        $at, %hi(D_800F1BEC)
/* 321FC 800315FC 10000004 */  b          .L80031610
/* 32200 80031600 AC2E1BEC */   sw        $t6, %lo(D_800F1BEC)($at)
.L80031604:
/* 32204 80031604 240F0001 */  addiu      $t7, $zero, 1
/* 32208 80031608 3C01800F */  lui        $at, %hi(D_800F1BEC)
/* 3220C 8003160C AC2F1BEC */  sw         $t7, %lo(D_800F1BEC)($at)
.L80031610:
/* 32210 80031610 2484F6A0 */  addiu      $a0, $a0, -0x960
/* 32214 80031614 0C0446F9 */  jal        func_80111BE4
/* 32218 80031618 240500AD */   addiu     $a1, $zero, 0xad
/* 3221C 8003161C 0C002C3F */  jal        func_8000B0FC
/* 32220 80031620 00000000 */   nop
/* 32224 80031624 3C01800F */  lui        $at, %hi(D_800F1C00)
/* 32228 80031628 AC221C00 */  sw         $v0, %lo(D_800F1C00)($at)
/* 3222C 8003162C AC231C04 */  sw         $v1, 0x1c04($at)
/* 32230 80031630 3C18800F */  lui        $t8, %hi(D_800F1BF4)
/* 32234 80031634 8F181BF4 */  lw         $t8, %lo(D_800F1BF4)($t8)
/* 32238 80031638 3C04800F */  lui        $a0, 0x800f
/* 3223C 8003163C 3C053E99 */  lui        $a1, 0x3e99
/* 32240 80031640 0018C880 */  sll        $t9, $t8, 2
/* 32244 80031644 0338C821 */  addu       $t9, $t9, $t8
/* 32248 80031648 0019C900 */  sll        $t9, $t9, 4
/* 3224C 8003164C 00992021 */  addu       $a0, $a0, $t9
/* 32250 80031650 8C841C0C */  lw         $a0, 0x1c0c($a0)
/* 32254 80031654 14800008 */  bnez       $a0, .L80031678
/* 32258 80031658 00000000 */   nop
/* 3225C 8003165C 3C04800F */  lui        $a0, %hi(D_800F1CA8)
/* 32260 80031660 3C053E99 */  lui        $a1, 0x3e99
/* 32264 80031664 34A5999A */  ori        $a1, $a1, 0x999a
/* 32268 80031668 0C00BAFB */  jal        func_8002EBEC
/* 3226C 8003166C 8C841CA8 */   lw        $a0, %lo(D_800F1CA8)($a0)
/* 32270 80031670 10000004 */  b          .L80031684
/* 32274 80031674 3C014334 */   lui       $at, 0x4334
.L80031678:
/* 32278 80031678 0C00BAFB */  jal        func_8002EBEC
/* 3227C 8003167C 34A5999A */   ori       $a1, $a1, 0x999a
/* 32280 80031680 3C014334 */  lui        $at, 0x4334
.L80031684:
/* 32284 80031684 44812000 */  mtc1       $at, $f4
/* 32288 80031688 3C01800F */  lui        $at, %hi(D_800F1BF0)
/* 3228C 8003168C 10000020 */  b          .L80031710
/* 32290 80031690 E4241BF0 */   swc1      $f4, %lo(D_800F1BF0)($at)
.L80031694:
/* 32294 80031694 11000003 */  beqz       $t0, .L800316A4
/* 32298 80031698 3C09800F */   lui       $t1, %hi(D_800F1BF4)
/* 3229C 8003169C 8D291BF4 */  lw         $t1, %lo(D_800F1BF4)($t1)
/* 322A0 800316A0 11200006 */  beqz       $t1, .L800316BC
.L800316A4:
/* 322A4 800316A4 304A0800 */   andi      $t2, $v0, 0x800
/* 322A8 800316A8 11400019 */  beqz       $t2, .L80031710
/* 322AC 800316AC 3C0B800F */   lui       $t3, %hi(D_800F1BF4)
/* 322B0 800316B0 8D6B1BF4 */  lw         $t3, %lo(D_800F1BF4)($t3)
/* 322B4 800316B4 24010001 */  addiu      $at, $zero, 1
/* 322B8 800316B8 15610015 */  bne        $t3, $at, .L80031710
.L800316BC:
/* 322BC 800316BC 240C0001 */   addiu     $t4, $zero, 1
/* 322C0 800316C0 3C01800F */  lui        $at, %hi(D_800F1D18)
/* 322C4 800316C4 AC2C1D18 */  sw         $t4, %lo(D_800F1D18)($at)
/* 322C8 800316C8 00E02025 */  or         $a0, $a3, $zero
/* 322CC 800316CC 0C00BDA0 */  jal        func_8002F680
/* 322D0 800316D0 24050003 */   addiu     $a1, $zero, 3
/* 322D4 800316D4 3C04800F */  lui        $a0, %hi(D_800EF6A0)
/* 322D8 800316D8 2484F6A0 */  addiu      $a0, $a0, %lo(D_800EF6A0)
/* 322DC 800316DC 0C0446F9 */  jal        func_80111BE4
/* 322E0 800316E0 240500B8 */   addiu     $a1, $zero, 0xb8
/* 322E4 800316E4 3C02800B */  lui        $v0, %hi(D_800AD54C)
/* 322E8 800316E8 8C42D54C */  lw         $v0, %lo(D_800AD54C)($v0)
/* 322EC 800316EC 240E0001 */  addiu      $t6, $zero, 1
/* 322F0 800316F0 3C01800F */  lui        $at, 0x800f
/* 322F4 800316F4 304D0400 */  andi       $t5, $v0, 0x400
/* 322F8 800316F8 11A00004 */  beqz       $t5, .L8003170C
/* 322FC 800316FC 00000000 */   nop
/* 32300 80031700 3C01800F */  lui        $at, %hi(D_800F1D1C)
/* 32304 80031704 10000002 */  b          .L80031710
/* 32308 80031708 AC2E1D1C */   sw        $t6, %lo(D_800F1D1C)($at)
.L8003170C:
/* 3230C 8003170C AC201D1C */  sw         $zero, 0x1d1c($at)
.L80031710:
/* 32310 80031710 8FBF001C */  lw         $ra, 0x1c($sp)
.L80031714:
/* 32314 80031714 27BD0070 */  addiu      $sp, $sp, 0x70
/* 32318 80031718 03E00008 */  jr         $ra
/* 3231C 8003171C 00000000 */   nop

glabel func_80031720
/* 32320 80031720 8C8E0014 */  lw         $t6, 0x14($a0)
/* 32324 80031724 8C98000C */  lw         $t8, 0xc($a0)
/* 32328 80031728 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3232C 8003172C 000E7880 */  sll        $t7, $t6, 2
/* 32330 80031730 01EE7821 */  addu       $t7, $t7, $t6
/* 32334 80031734 000F7900 */  sll        $t7, $t7, 4
/* 32338 80031738 008F1021 */  addu       $v0, $a0, $t7
/* 3233C 8003173C 1B00002D */  blez       $t8, .L800317F4
/* 32340 80031740 24420028 */   addiu     $v0, $v0, 0x28
/* 32344 80031744 8C410048 */  lw         $at, 0x48($v0)
/* 32348 80031748 27AA0018 */  addiu      $t2, $sp, 0x18
/* 3234C 8003174C 24490048 */  addiu      $t1, $v0, 0x48
/* 32350 80031750 AD410000 */  sw         $at, ($t2)
/* 32354 80031754 8C4B004C */  lw         $t3, 0x4c($v0)
/* 32358 80031758 24440040 */  addiu      $a0, $v0, 0x40
/* 3235C 8003175C 2485FFF8 */  addiu      $a1, $a0, -8
/* 32360 80031760 AD4B0004 */  sw         $t3, 4($t2)
/* 32364 80031764 8D2DFFFC */  lw         $t5, -4($t1)
/* 32368 80031768 8D21FFF8 */  lw         $at, -8($t1)
/* 3236C 8003176C 2486FFF0 */  addiu      $a2, $a0, -0x10
/* 32370 80031770 2487FFE8 */  addiu      $a3, $a0, -0x18
/* 32374 80031774 2488FFE0 */  addiu      $t0, $a0, -0x20
/* 32378 80031778 24030008 */  addiu      $v1, $zero, 8
/* 3237C 8003177C AD2D0004 */  sw         $t5, 4($t1)
/* 32380 80031780 AD210000 */  sw         $at, ($t1)
.L80031784:
/* 32384 80031784 8CA10000 */  lw         $at, ($a1)
/* 32388 80031788 2463FFFC */  addiu      $v1, $v1, -4
/* 3238C 8003178C 2484FFE0 */  addiu      $a0, $a0, -0x20
/* 32390 80031790 AC810020 */  sw         $at, 0x20($a0)
/* 32394 80031794 8CAF0004 */  lw         $t7, 4($a1)
/* 32398 80031798 24A5FFE0 */  addiu      $a1, $a1, -0x20
/* 3239C 8003179C 24C6FFE0 */  addiu      $a2, $a2, -0x20
/* 323A0 800317A0 AC8F0024 */  sw         $t7, 0x24($a0)
/* 323A4 800317A4 8CC10020 */  lw         $at, 0x20($a2)
/* 323A8 800317A8 24E7FFE0 */  addiu      $a3, $a3, -0x20
/* 323AC 800317AC 2508FFE0 */  addiu      $t0, $t0, -0x20
/* 323B0 800317B0 ACA10020 */  sw         $at, 0x20($a1)
/* 323B4 800317B4 8CD90024 */  lw         $t9, 0x24($a2)
/* 323B8 800317B8 ACB90024 */  sw         $t9, 0x24($a1)
/* 323BC 800317BC 8CE10020 */  lw         $at, 0x20($a3)
/* 323C0 800317C0 ACC10020 */  sw         $at, 0x20($a2)
/* 323C4 800317C4 8CEC0024 */  lw         $t4, 0x24($a3)
/* 323C8 800317C8 ACCC0024 */  sw         $t4, 0x24($a2)
/* 323CC 800317CC 8D010020 */  lw         $at, 0x20($t0)
/* 323D0 800317D0 ACE10020 */  sw         $at, 0x20($a3)
/* 323D4 800317D4 8D0E0024 */  lw         $t6, 0x24($t0)
/* 323D8 800317D8 1460FFEA */  bnez       $v1, .L80031784
/* 323DC 800317DC ACEE0024 */   sw        $t6, 0x24($a3)
/* 323E0 800317E0 8D410000 */  lw         $at, ($t2)
/* 323E4 800317E4 AC410000 */  sw         $at, ($v0)
/* 323E8 800317E8 8D580004 */  lw         $t8, 4($t2)
/* 323EC 800317EC 1000002C */  b          .L800318A0
/* 323F0 800317F0 AC580004 */   sw        $t8, 4($v0)
.L800317F4:
/* 323F4 800317F4 8C410000 */  lw         $at, ($v0)
/* 323F8 800317F8 27AA0018 */  addiu      $t2, $sp, 0x18
/* 323FC 800317FC 24440008 */  addiu      $a0, $v0, 8
/* 32400 80031800 AD410000 */  sw         $at, ($t2)
/* 32404 80031804 8C4B0004 */  lw         $t3, 4($v0)
/* 32408 80031808 24850008 */  addiu      $a1, $a0, 8
/* 3240C 8003180C 24860010 */  addiu      $a2, $a0, 0x10
/* 32410 80031810 AD4B0004 */  sw         $t3, 4($t2)
/* 32414 80031814 8C4D000C */  lw         $t5, 0xc($v0)
/* 32418 80031818 8C410008 */  lw         $at, 8($v0)
/* 3241C 8003181C 24870018 */  addiu      $a3, $a0, 0x18
/* 32420 80031820 24880020 */  addiu      $t0, $a0, 0x20
/* 32424 80031824 24030001 */  addiu      $v1, $zero, 1
/* 32428 80031828 24090009 */  addiu      $t1, $zero, 9
/* 3242C 8003182C AC4D0004 */  sw         $t5, 4($v0)
/* 32430 80031830 AC410000 */  sw         $at, ($v0)
.L80031834:
/* 32434 80031834 8CA10000 */  lw         $at, ($a1)
/* 32438 80031838 24630004 */  addiu      $v1, $v1, 4
/* 3243C 8003183C 24840020 */  addiu      $a0, $a0, 0x20
/* 32440 80031840 AC81FFE0 */  sw         $at, -0x20($a0)
/* 32444 80031844 8CAF0004 */  lw         $t7, 4($a1)
/* 32448 80031848 24A50020 */  addiu      $a1, $a1, 0x20
/* 3244C 8003184C 24C60020 */  addiu      $a2, $a2, 0x20
/* 32450 80031850 AC8FFFE4 */  sw         $t7, -0x1c($a0)
/* 32454 80031854 8CC1FFE0 */  lw         $at, -0x20($a2)
/* 32458 80031858 24E70020 */  addiu      $a3, $a3, 0x20
/* 3245C 8003185C 25080020 */  addiu      $t0, $t0, 0x20
/* 32460 80031860 ACA1FFE0 */  sw         $at, -0x20($a1)
/* 32464 80031864 8CD9FFE4 */  lw         $t9, -0x1c($a2)
/* 32468 80031868 ACB9FFE4 */  sw         $t9, -0x1c($a1)
/* 3246C 8003186C 8CE1FFE0 */  lw         $at, -0x20($a3)
/* 32470 80031870 ACC1FFE0 */  sw         $at, -0x20($a2)
/* 32474 80031874 8CECFFE4 */  lw         $t4, -0x1c($a3)
/* 32478 80031878 ACCCFFE4 */  sw         $t4, -0x1c($a2)
/* 3247C 8003187C 8D01FFE0 */  lw         $at, -0x20($t0)
/* 32480 80031880 ACE1FFE0 */  sw         $at, -0x20($a3)
/* 32484 80031884 8D0EFFE4 */  lw         $t6, -0x1c($t0)
/* 32488 80031888 1469FFEA */  bne        $v1, $t1, .L80031834
/* 3248C 8003188C ACEEFFE4 */   sw        $t6, -0x1c($a3)
/* 32490 80031890 8D410000 */  lw         $at, ($t2)
/* 32494 80031894 AC410048 */  sw         $at, 0x48($v0)
/* 32498 80031898 8D580004 */  lw         $t8, 4($t2)
/* 3249C 8003189C AC58004C */  sw         $t8, 0x4c($v0)
.L800318A0:
/* 324A0 800318A0 03E00008 */  jr         $ra
/* 324A4 800318A4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800318A8
/* 324A8 800318A8 3C02800F */  lui        $v0, %hi(D_800F1BE0)
/* 324AC 800318AC 24421BE0 */  addiu      $v0, $v0, %lo(D_800F1BE0)
/* 324B0 800318B0 8C4E0014 */  lw         $t6, 0x14($v0)
/* 324B4 800318B4 8C48000C */  lw         $t0, 0xc($v0)
/* 324B8 800318B8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 324BC 800318BC 000E7880 */  sll        $t7, $t6, 2
/* 324C0 800318C0 01EE7821 */  addu       $t7, $t7, $t6
/* 324C4 800318C4 000F7900 */  sll        $t7, $t7, 4
/* 324C8 800318C8 004FC021 */  addu       $t8, $v0, $t7
/* 324CC 800318CC 27190028 */  addiu      $t9, $t8, 0x28
/* 324D0 800318D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 324D4 800318D4 11000026 */  beqz       $t0, .L80031970
/* 324D8 800318D8 AFB9002C */   sw        $t9, 0x2c($sp)
/* 324DC 800318DC 0C002C3F */  jal        func_8000B0FC
/* 324E0 800318E0 00000000 */   nop
/* 324E4 800318E4 3C0A800F */  lui        $t2, %hi(D_800F1C00)
/* 324E8 800318E8 3C0B800F */  lui        $t3, %hi(D_800F1C04)
/* 324EC 800318EC 8D6B1C04 */  lw         $t3, %lo(D_800F1C04)($t3)
/* 324F0 800318F0 8D4A1C00 */  lw         $t2, %lo(D_800F1C00)($t2)
/* 324F4 800318F4 006B082B */  sltu       $at, $v1, $t3
/* 324F8 800318F8 004A2023 */  subu       $a0, $v0, $t2
/* 324FC 800318FC 00812023 */  subu       $a0, $a0, $at
/* 32500 80031900 0C0148C6 */  jal        __ull_to_f
/* 32504 80031904 006B2823 */   subu      $a1, $v1, $t3
/* 32508 80031908 3C014348 */  lui        $at, 0x4348
/* 3250C 8003190C 44812000 */  mtc1       $at, $f4
/* 32510 80031910 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 32514 80031914 3C04800F */  lui        $a0, 0x800f
/* 32518 80031918 4600203E */  c.le.s     $f4, $f0
/* 3251C 8003191C 00000000 */  nop
/* 32520 80031920 45000011 */  bc1f       .L80031968
/* 32524 80031924 00000000 */   nop
/* 32528 80031928 0C00C5C8 */  jal        func_80031720
/* 3252C 8003192C 24841BE0 */   addiu     $a0, $a0, 0x1be0
/* 32530 80031930 8FA9002C */  lw         $t1, 0x2c($sp)
/* 32534 80031934 3C053F00 */  lui        $a1, 0x3f00
/* 32538 80031938 8D240004 */  lw         $a0, 4($t1)
/* 3253C 8003193C 14800006 */  bnez       $a0, .L80031958
/* 32540 80031940 00000000 */   nop
/* 32544 80031944 3C04800F */  lui        $a0, %hi(D_800F1CA8)
/* 32548 80031948 0C00BAFB */  jal        func_8002EBEC
/* 3254C 8003194C 8C841CA8 */   lw        $a0, %lo(D_800F1CA8)($a0)
/* 32550 80031950 10000003 */  b          .L80031960
/* 32554 80031954 00000000 */   nop
.L80031958:
/* 32558 80031958 0C00BAFB */  jal        func_8002EBEC
/* 3255C 8003195C 3C053F00 */   lui       $a1, 0x3f00
.L80031960:
/* 32560 80031960 3C01800F */  lui        $at, %hi(D_800F1BEC)
/* 32564 80031964 AC201BEC */  sw         $zero, %lo(D_800F1BEC)($at)
.L80031968:
/* 32568 80031968 10000004 */  b          .L8003197C
/* 3256C 8003196C 00000000 */   nop
.L80031970:
/* 32570 80031970 44803000 */  mtc1       $zero, $f6
/* 32574 80031974 00000000 */  nop
/* 32578 80031978 E7A6001C */  swc1       $f6, 0x1c($sp)
.L8003197C:
/* 3257C 8003197C 3C0C800F */  lui        $t4, %hi(D_800F1BEC)
/* 32580 80031980 8D8C1BEC */  lw         $t4, %lo(D_800F1BEC)($t4)
/* 32584 80031984 3C014210 */  lui        $at, 0x4210
/* 32588 80031988 44818000 */  mtc1       $at, $f16
/* 3258C 8003198C 448C4000 */  mtc1       $t4, $f8
/* 32590 80031990 C7A4001C */  lwc1       $f4, 0x1c($sp)
/* 32594 80031994 44807000 */  mtc1       $zero, $f14
/* 32598 80031998 468042A0 */  cvt.s.w    $f10, $f8
/* 3259C 8003199C 3C014348 */  lui        $at, 0x4348
/* 325A0 800319A0 44814000 */  mtc1       $at, $f8
/* 325A4 800319A4 44067000 */  mfc1       $a2, $f14
/* 325A8 800319A8 46105482 */  mul.s      $f18, $f10, $f16
/* 325AC 800319AC 00000000 */  nop
/* 325B0 800319B0 46049182 */  mul.s      $f6, $f18, $f4
/* 325B4 800319B4 0C00BFBB */  jal        func_8002FEEC
/* 325B8 800319B8 46083303 */   div.s     $f12, $f6, $f8
/* 325BC 800319BC 3C04800F */  lui        $a0, %hi(D_800F1BE0)
/* 325C0 800319C0 24841BE0 */  addiu      $a0, $a0, %lo(D_800F1BE0)
/* 325C4 800319C4 0C00C06C */  jal        func_800301B0
/* 325C8 800319C8 24050000 */   addiu     $a1, $zero, 0
/* 325CC 800319CC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 325D0 800319D0 27BD0038 */  addiu      $sp, $sp, 0x38
/* 325D4 800319D4 03E00008 */  jr         $ra
/* 325D8 800319D8 00000000 */   nop

glabel func_800319DC
/* 325DC 800319DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 325E0 800319E0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 325E4 800319E4 0C002C3F */  jal        func_8000B0FC
/* 325E8 800319E8 00000000 */   nop
/* 325EC 800319EC 3C0E800F */  lui        $t6, %hi(D_800F1C00)
/* 325F0 800319F0 3C0F800F */  lui        $t7, %hi(D_800F1C04)
/* 325F4 800319F4 8DEF1C04 */  lw         $t7, %lo(D_800F1C04)($t7)
/* 325F8 800319F8 8DCE1C00 */  lw         $t6, %lo(D_800F1C00)($t6)
/* 325FC 800319FC 006F082B */  sltu       $at, $v1, $t7
/* 32600 80031A00 004E2023 */  subu       $a0, $v0, $t6
/* 32604 80031A04 00812023 */  subu       $a0, $a0, $at
/* 32608 80031A08 0C0148C6 */  jal        __ull_to_f
/* 3260C 80031A0C 006F2823 */   subu      $a1, $v1, $t7
/* 32610 80031A10 3C014396 */  lui        $at, 0x4396
/* 32614 80031A14 44818000 */  mtc1       $at, $f16
/* 32618 80031A18 46000086 */  mov.s      $f2, $f0
/* 3261C 80031A1C 3C01800F */  lui        $at, 0x800f
/* 32620 80031A20 4600803E */  c.le.s     $f16, $f0
/* 32624 80031A24 24180002 */  addiu      $t8, $zero, 2
/* 32628 80031A28 3C19800F */  lui        $t9, %hi(D_800F1BF4)
/* 3262C 80031A2C 45000003 */  bc1f       .L80031A3C
/* 32630 80031A30 00000000 */   nop
/* 32634 80031A34 46008086 */  mov.s      $f2, $f16
/* 32638 80031A38 AC381BF8 */  sw         $t8, 0x1bf8($at)
.L80031A3C:
/* 3263C 80031A3C 8F391BF4 */  lw         $t9, %lo(D_800F1BF4)($t9)
/* 32640 80031A40 57200024 */  bnel       $t9, $zero, .L80031AD4
/* 32644 80031A44 46101003 */   div.s     $f0, $f2, $f16
/* 32648 80031A48 46101003 */  div.s      $f0, $f2, $f16
/* 3264C 80031A4C 3C013F80 */  lui        $at, 0x3f80
/* 32650 80031A50 44819000 */  mtc1       $at, $f18
/* 32654 80031A54 3C0142B4 */  lui        $at, 0x42b4
/* 32658 80031A58 44813000 */  mtc1       $at, $f6
/* 3265C 80031A5C 3C0143B4 */  lui        $at, 0x43b4
/* 32660 80031A60 44815000 */  mtc1       $at, $f10
/* 32664 80031A64 3C08800F */  lui        $t0, %hi(D_800F1BE4)
/* 32668 80031A68 8D081BE4 */  lw         $t0, %lo(D_800F1BE4)($t0)
/* 3266C 80031A6C 3C01BF80 */  lui        $at, 0xbf80
/* 32670 80031A70 3C09800F */  lui        $t1, 0x800f
/* 32674 80031A74 46000107 */  neg.s      $f4, $f0
/* 32678 80031A78 46062202 */  mul.s      $f8, $f4, $f6
/* 3267C 80031A7C 44812000 */  mtc1       $at, $f4
/* 32680 80031A80 3C01800A */  lui        $at, 0x800a
/* 32684 80031A84 46005302 */  mul.s      $f12, $f10, $f0
/* 32688 80031A88 00000000 */  nop
/* 3268C 80031A8C 46002182 */  mul.s      $f6, $f4, $f0
/* 32690 80031A90 E508000C */  swc1       $f8, 0xc($t0)
/* 32694 80031A94 8D291BF4 */  lw         $t1, 0x1bf4($t1)
/* 32698 80031A98 00095080 */  sll        $t2, $t1, 2
/* 3269C 80031A9C 01495023 */  subu       $t2, $t2, $t1
/* 326A0 80031AA0 000A5080 */  sll        $t2, $t2, 2
/* 326A4 80031AA4 46009101 */  sub.s      $f4, $f18, $f0
/* 326A8 80031AA8 002A0821 */  addu       $at, $at, $t2
/* 326AC 80031AAC 46003202 */  mul.s      $f8, $f6, $f0
/* 326B0 80031AB0 C42AA5B8 */  lwc1       $f10, -0x5a48($at)
/* 326B4 80031AB4 46045182 */  mul.s      $f6, $f10, $f4
/* 326B8 80031AB8 46124380 */  add.s      $f14, $f8, $f18
/* 326BC 80031ABC 44063000 */  mfc1       $a2, $f6
/* 326C0 80031AC0 0C00BFBB */  jal        func_8002FEEC
/* 326C4 80031AC4 00000000 */   nop
/* 326C8 80031AC8 1000001C */  b          .L80031B3C
/* 326CC 80031ACC 00000000 */   nop
/* 326D0 80031AD0 46101003 */  div.s      $f0, $f2, $f16
.L80031AD4:
/* 326D4 80031AD4 3C013F80 */  lui        $at, 0x3f80
/* 326D8 80031AD8 44819000 */  mtc1       $at, $f18
/* 326DC 80031ADC 3C01437A */  lui        $at, 0x437a
/* 326E0 80031AE0 44814000 */  mtc1       $at, $f8
/* 326E4 80031AE4 3C0B800F */  lui        $t3, %hi(D_800F1BE8)
/* 326E8 80031AE8 8D6B1BE8 */  lw         $t3, %lo(D_800F1BE8)($t3)
/* 326EC 80031AEC 3C0C800F */  lui        $t4, 0x800f
/* 326F0 80031AF0 3C0143B4 */  lui        $at, 0x43b4
/* 326F4 80031AF4 44812000 */  mtc1       $at, $f4
/* 326F8 80031AF8 3C01800A */  lui        $at, 0x800a
/* 326FC 80031AFC 46080282 */  mul.s      $f10, $f0, $f8
/* 32700 80031B00 E56A0020 */  swc1       $f10, 0x20($t3)
/* 32704 80031B04 8D8C1BF4 */  lw         $t4, 0x1bf4($t4)
/* 32708 80031B08 46002302 */  mul.s      $f12, $f4, $f0
/* 3270C 80031B0C 46009281 */  sub.s      $f10, $f18, $f0
/* 32710 80031B10 000C6880 */  sll        $t5, $t4, 2
/* 32714 80031B14 01AC6823 */  subu       $t5, $t5, $t4
/* 32718 80031B18 000D6880 */  sll        $t5, $t5, 2
/* 3271C 80031B1C 002D0821 */  addu       $at, $at, $t5
/* 32720 80031B20 46000182 */  mul.s      $f6, $f0, $f0
/* 32724 80031B24 C428A5B8 */  lwc1       $f8, -0x5a48($at)
/* 32728 80031B28 460A4102 */  mul.s      $f4, $f8, $f10
/* 3272C 80031B2C 46123381 */  sub.s      $f14, $f6, $f18
/* 32730 80031B30 44062000 */  mfc1       $a2, $f4
/* 32734 80031B34 0C00BFBB */  jal        func_8002FEEC
/* 32738 80031B38 00000000 */   nop
.L80031B3C:
/* 3273C 80031B3C 3C04800F */  lui        $a0, %hi(D_800F1BE0)
/* 32740 80031B40 24841BE0 */  addiu      $a0, $a0, %lo(D_800F1BE0)
/* 32744 80031B44 0C00C06C */  jal        func_800301B0
/* 32748 80031B48 24050000 */   addiu     $a1, $zero, 0
/* 3274C 80031B4C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 32750 80031B50 27BD0018 */  addiu      $sp, $sp, 0x18
/* 32754 80031B54 03E00008 */  jr         $ra
/* 32758 80031B58 00000000 */   nop

glabel func_80031B5C
/* 3275C 80031B5C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 32760 80031B60 AFBF0014 */  sw         $ra, 0x14($sp)
/* 32764 80031B64 0C002C3F */  jal        func_8000B0FC
/* 32768 80031B68 00000000 */   nop
/* 3276C 80031B6C 3C0E800F */  lui        $t6, %hi(D_800F1C00)
/* 32770 80031B70 3C0F800F */  lui        $t7, %hi(D_800F1C04)
/* 32774 80031B74 8DEF1C04 */  lw         $t7, %lo(D_800F1C04)($t7)
/* 32778 80031B78 8DCE1C00 */  lw         $t6, %lo(D_800F1C00)($t6)
/* 3277C 80031B7C 006F082B */  sltu       $at, $v1, $t7
/* 32780 80031B80 004E2023 */  subu       $a0, $v0, $t6
/* 32784 80031B84 00812023 */  subu       $a0, $a0, $at
/* 32788 80031B88 0C0148C6 */  jal        __ull_to_f
/* 3278C 80031B8C 006F2823 */   subu      $a1, $v1, $t7
/* 32790 80031B90 3C014396 */  lui        $at, 0x4396
/* 32794 80031B94 44819000 */  mtc1       $at, $f18
/* 32798 80031B98 46000406 */  mov.s      $f16, $f0
/* 3279C 80031B9C 3C18800F */  lui        $t8, 0x800f
/* 327A0 80031BA0 4600903E */  c.le.s     $f18, $f0
/* 327A4 80031BA4 00000000 */  nop
/* 327A8 80031BA8 4500000F */  bc1f       .L80031BE8
/* 327AC 80031BAC 00000000 */   nop
/* 327B0 80031BB0 44806000 */  mtc1       $zero, $f12
/* 327B4 80031BB4 3C0644FA */  lui        $a2, 0x44fa
/* 327B8 80031BB8 0C00BFBB */  jal        func_8002FEEC
/* 327BC 80031BBC 46006386 */   mov.s     $f14, $f12
/* 327C0 80031BC0 3C04800F */  lui        $a0, %hi(D_800F1BE0)
/* 327C4 80031BC4 24841BE0 */  addiu      $a0, $a0, %lo(D_800F1BE0)
/* 327C8 80031BC8 0C00C06C */  jal        func_800301B0
/* 327CC 80031BCC 24050000 */   addiu     $a1, $zero, 0
/* 327D0 80031BD0 3C04800F */  lui        $a0, %hi(D_800F1BE0)
/* 327D4 80031BD4 24841BE0 */  addiu      $a0, $a0, %lo(D_800F1BE0)
/* 327D8 80031BD8 0C00BDA0 */  jal        func_8002F680
/* 327DC 80031BDC 24050004 */   addiu     $a1, $zero, 4
/* 327E0 80031BE0 10000048 */  b          .L80031D04
/* 327E4 80031BE4 8FBF0014 */   lw        $ra, 0x14($sp)
.L80031BE8:
/* 327E8 80031BE8 8F181BF4 */  lw         $t8, 0x1bf4($t8)
/* 327EC 80031BEC 57000023 */  bnel       $t8, $zero, .L80031C7C
/* 327F0 80031BF0 46128003 */   div.s     $f0, $f16, $f18
/* 327F4 80031BF4 46128003 */  div.s      $f0, $f16, $f18
/* 327F8 80031BF8 3C013F80 */  lui        $at, 0x3f80
/* 327FC 80031BFC 44811000 */  mtc1       $at, $f2
/* 32800 80031C00 3C0142B4 */  lui        $at, 0x42b4
/* 32804 80031C04 44814000 */  mtc1       $at, $f8
/* 32808 80031C08 3C0143B4 */  lui        $at, 0x43b4
/* 3280C 80031C0C 3C19800F */  lui        $t9, %hi(D_800F1BE4)
/* 32810 80031C10 8F391BE4 */  lw         $t9, %lo(D_800F1BE4)($t9)
/* 32814 80031C14 3C08800F */  lui        $t0, 0x800f
/* 32818 80031C18 46001101 */  sub.s      $f4, $f2, $f0
/* 3281C 80031C1C 46002187 */  neg.s      $f6, $f4
/* 32820 80031C20 44812000 */  mtc1       $at, $f4
/* 32824 80031C24 46083282 */  mul.s      $f10, $f6, $f8
/* 32828 80031C28 3C01BF80 */  lui        $at, 0xbf80
/* 3282C 80031C2C 44813000 */  mtc1       $at, $f6
/* 32830 80031C30 46002302 */  mul.s      $f12, $f4, $f0
/* 32834 80031C34 3C01800A */  lui        $at, 0x800a
/* 32838 80031C38 46003202 */  mul.s      $f8, $f6, $f0
/* 3283C 80031C3C E72A000C */  swc1       $f10, 0xc($t9)
/* 32840 80031C40 8D081BF4 */  lw         $t0, 0x1bf4($t0)
/* 32844 80031C44 00084880 */  sll        $t1, $t0, 2
/* 32848 80031C48 01284823 */  subu       $t1, $t1, $t0
/* 3284C 80031C4C 00094880 */  sll        $t1, $t1, 2
/* 32850 80031C50 00290821 */  addu       $at, $at, $t1
/* 32854 80031C54 46004282 */  mul.s      $f10, $f8, $f0
/* 32858 80031C58 C424A5B8 */  lwc1       $f4, -0x5a48($at)
/* 3285C 80031C5C 46002182 */  mul.s      $f6, $f4, $f0
/* 32860 80031C60 46025380 */  add.s      $f14, $f10, $f2
/* 32864 80031C64 44063000 */  mfc1       $a2, $f6
/* 32868 80031C68 0C00BFBB */  jal        func_8002FEEC
/* 3286C 80031C6C 00000000 */   nop
/* 32870 80031C70 1000001F */  b          .L80031CF0
/* 32874 80031C74 00000000 */   nop
/* 32878 80031C78 46128003 */  div.s      $f0, $f16, $f18
.L80031C7C:
/* 3287C 80031C7C 3C013F80 */  lui        $at, 0x3f80
/* 32880 80031C80 44814000 */  mtc1       $at, $f8
/* 32884 80031C84 3C01437A */  lui        $at, 0x437a
/* 32888 80031C88 44815000 */  mtc1       $at, $f10
/* 3288C 80031C8C 3C0A800F */  lui        $t2, %hi(D_800F1BE8)
/* 32890 80031C90 8D4A1BE8 */  lw         $t2, %lo(D_800F1BE8)($t2)
/* 32894 80031C94 3C0B800F */  lui        $t3, 0x800f
/* 32898 80031C98 3C0143B4 */  lui        $at, 0x43b4
/* 3289C 80031C9C 44813000 */  mtc1       $at, $f6
/* 328A0 80031CA0 3C013F80 */  lui        $at, 0x3f80
/* 328A4 80031CA4 46004081 */  sub.s      $f2, $f8, $f0
/* 328A8 80031CA8 460A1102 */  mul.s      $f4, $f2, $f10
/* 328AC 80031CAC 44815000 */  mtc1       $at, $f10
/* 328B0 80031CB0 3C01800A */  lui        $at, 0x800a
/* 328B4 80031CB4 46003302 */  mul.s      $f12, $f6, $f0
/* 328B8 80031CB8 00000000 */  nop
/* 328BC 80031CBC 46021202 */  mul.s      $f8, $f2, $f2
/* 328C0 80031CC0 E5440020 */  swc1       $f4, 0x20($t2)
/* 328C4 80031CC4 8D6B1BF4 */  lw         $t3, 0x1bf4($t3)
/* 328C8 80031CC8 000B6080 */  sll        $t4, $t3, 2
/* 328CC 80031CCC 018B6023 */  subu       $t4, $t4, $t3
/* 328D0 80031CD0 000C6080 */  sll        $t4, $t4, 2
/* 328D4 80031CD4 002C0821 */  addu       $at, $at, $t4
/* 328D8 80031CD8 C424A5B8 */  lwc1       $f4, -0x5a48($at)
/* 328DC 80031CDC 460A4381 */  sub.s      $f14, $f8, $f10
/* 328E0 80031CE0 46002182 */  mul.s      $f6, $f4, $f0
/* 328E4 80031CE4 44063000 */  mfc1       $a2, $f6
/* 328E8 80031CE8 0C00BFBB */  jal        func_8002FEEC
/* 328EC 80031CEC 00000000 */   nop
.L80031CF0:
/* 328F0 80031CF0 3C04800F */  lui        $a0, %hi(D_800F1BE0)
/* 328F4 80031CF4 24841BE0 */  addiu      $a0, $a0, %lo(D_800F1BE0)
/* 328F8 80031CF8 0C00C06C */  jal        func_800301B0
/* 328FC 80031CFC 24050000 */   addiu     $a1, $zero, 0
/* 32900 80031D00 8FBF0014 */  lw         $ra, 0x14($sp)
.L80031D04:
/* 32904 80031D04 27BD0018 */  addiu      $sp, $sp, 0x18
/* 32908 80031D08 03E00008 */  jr         $ra
/* 3290C 80031D0C 00000000 */   nop

glabel func_80031D10
/* 32910 80031D10 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 32914 80031D14 AFBF0014 */  sw         $ra, 0x14($sp)
/* 32918 80031D18 0C002C3F */  jal        func_8000B0FC
/* 3291C 80031D1C 00000000 */   nop
/* 32920 80031D20 3C0E800F */  lui        $t6, %hi(D_800F1C00)
/* 32924 80031D24 3C0F800F */  lui        $t7, %hi(D_800F1C04)
/* 32928 80031D28 8DEF1C04 */  lw         $t7, %lo(D_800F1C04)($t7)
/* 3292C 80031D2C 8DCE1C00 */  lw         $t6, %lo(D_800F1C00)($t6)
/* 32930 80031D30 006F082B */  sltu       $at, $v1, $t7
/* 32934 80031D34 004E2023 */  subu       $a0, $v0, $t6
/* 32938 80031D38 00812023 */  subu       $a0, $a0, $at
/* 3293C 80031D3C 0C0148C6 */  jal        __ull_to_f
/* 32940 80031D40 006F2823 */   subu      $a1, $v1, $t7
/* 32944 80031D44 3C014348 */  lui        $at, 0x4348
/* 32948 80031D48 44812000 */  mtc1       $at, $f4
/* 3294C 80031D4C 46000086 */  mov.s      $f2, $f0
/* 32950 80031D50 3C18800F */  lui        $t8, %hi(D_800F1D18)
/* 32954 80031D54 4600203E */  c.le.s     $f4, $f0
/* 32958 80031D58 3C02800F */  lui        $v0, 0x800f
/* 3295C 80031D5C 45010004 */  bc1t       .L80031D70
/* 32960 80031D60 00000000 */   nop
/* 32964 80031D64 8F181D18 */  lw         $t8, %lo(D_800F1D18)($t8)
/* 32968 80031D68 13000027 */  beqz       $t8, .L80031E08
/* 3296C 80031D6C 00000000 */   nop
.L80031D70:
/* 32970 80031D70 8C421BF8 */  lw         $v0, 0x1bf8($v0)
/* 32974 80031D74 24010004 */  addiu      $at, $zero, 4
/* 32978 80031D78 1440001D */  bnez       $v0, .L80031DF0
/* 3297C 80031D7C 00000000 */   nop
/* 32980 80031D80 44806000 */  mtc1       $zero, $f12
/* 32984 80031D84 3C04800F */  lui        $a0, %hi(D_800F1BE0)
/* 32988 80031D88 24841BE0 */  addiu      $a0, $a0, %lo(D_800F1BE0)
/* 3298C 80031D8C 44056000 */  mfc1       $a1, $f12
/* 32990 80031D90 0C00C06C */  jal        func_800301B0
/* 32994 80031D94 00000000 */   nop
/* 32998 80031D98 3C04800F */  lui        $a0, %hi(D_800F1BE0)
/* 3299C 80031D9C 24841BE0 */  addiu      $a0, $a0, %lo(D_800F1BE0)
/* 329A0 80031DA0 0C00BDA0 */  jal        func_8002F680
/* 329A4 80031DA4 24050001 */   addiu     $a1, $zero, 1
/* 329A8 80031DA8 3C04800F */  lui        $a0, %hi(D_800EF6A0)
/* 329AC 80031DAC 2484F6A0 */  addiu      $a0, $a0, %lo(D_800EF6A0)
/* 329B0 80031DB0 0C0446F9 */  jal        func_80111BE4
/* 329B4 80031DB4 240500B9 */   addiu     $a1, $zero, 0xb9
/* 329B8 80031DB8 3C19800F */  lui        $t9, %hi(D_800F1BF4)
/* 329BC 80031DBC 8F391BF4 */  lw         $t9, %lo(D_800F1BF4)($t9)
/* 329C0 80031DC0 3C04800F */  lui        $a0, %hi(D_800EF6A0)
/* 329C4 80031DC4 2484F6A0 */  addiu      $a0, $a0, %lo(D_800EF6A0)
/* 329C8 80031DC8 17200005 */  bnez       $t9, .L80031DE0
/* 329CC 80031DCC 00000000 */   nop
/* 329D0 80031DD0 0C0446F9 */  jal        func_80111BE4
/* 329D4 80031DD4 240500B5 */   addiu     $a1, $zero, 0xb5
/* 329D8 80031DD8 10000039 */  b          .L80031EC0
/* 329DC 80031DDC 8FBF0014 */   lw        $ra, 0x14($sp)
.L80031DE0:
/* 329E0 80031DE0 0C0446F9 */  jal        func_80111BE4
/* 329E4 80031DE4 240500B6 */   addiu     $a1, $zero, 0xb6
/* 329E8 80031DE8 10000035 */  b          .L80031EC0
/* 329EC 80031DEC 8FBF0014 */   lw        $ra, 0x14($sp)
.L80031DF0:
/* 329F0 80031DF0 54410033 */  bnel       $v0, $at, .L80031EC0
/* 329F4 80031DF4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 329F8 80031DF8 0C00C49B */  jal        func_8003126C
/* 329FC 80031DFC 00000000 */   nop
/* 32A00 80031E00 1000002F */  b          .L80031EC0
/* 32A04 80031E04 8FBF0014 */   lw        $ra, 0x14($sp)
.L80031E08:
/* 32A08 80031E08 3C02800F */  lui        $v0, %hi(D_800F1BF8)
/* 32A0C 80031E0C 8C421BF8 */  lw         $v0, %lo(D_800F1BF8)($v0)
/* 32A10 80031E10 3C0644FA */  lui        $a2, 0x44fa
/* 32A14 80031E14 24010004 */  addiu      $at, $zero, 4
/* 32A18 80031E18 14400016 */  bnez       $v0, .L80031E74
/* 32A1C 80031E1C 00000000 */   nop
/* 32A20 80031E20 44806000 */  mtc1       $zero, $f12
/* 32A24 80031E24 E7A2001C */  swc1       $f2, 0x1c($sp)
/* 32A28 80031E28 0C00BFBB */  jal        func_8002FEEC
/* 32A2C 80031E2C 46006386 */   mov.s     $f14, $f12
/* 32A30 80031E30 3C014348 */  lui        $at, 0x4348
/* 32A34 80031E34 C7A2001C */  lwc1       $f2, 0x1c($sp)
/* 32A38 80031E38 44813000 */  mtc1       $at, $f6
/* 32A3C 80031E3C 3C014170 */  lui        $at, 0x4170
/* 32A40 80031E40 44815000 */  mtc1       $at, $f10
/* 32A44 80031E44 46061203 */  div.s      $f8, $f2, $f6
/* 32A48 80031E48 3C01C170 */  lui        $at, 0xc170
/* 32A4C 80031E4C 44819000 */  mtc1       $at, $f18
/* 32A50 80031E50 3C04800F */  lui        $a0, %hi(D_800F1BE0)
/* 32A54 80031E54 24841BE0 */  addiu      $a0, $a0, %lo(D_800F1BE0)
/* 32A58 80031E58 460A4402 */  mul.s      $f16, $f8, $f10
/* 32A5C 80031E5C 46128100 */  add.s      $f4, $f16, $f18
/* 32A60 80031E60 44052000 */  mfc1       $a1, $f4
/* 32A64 80031E64 0C00C06C */  jal        func_800301B0
/* 32A68 80031E68 00000000 */   nop
/* 32A6C 80031E6C 10000014 */  b          .L80031EC0
/* 32A70 80031E70 8FBF0014 */   lw        $ra, 0x14($sp)
.L80031E74:
/* 32A74 80031E74 14410011 */  bne        $v0, $at, .L80031EBC
/* 32A78 80031E78 3C0644FA */   lui       $a2, 0x44fa
/* 32A7C 80031E7C 44806000 */  mtc1       $zero, $f12
/* 32A80 80031E80 E7A2001C */  swc1       $f2, 0x1c($sp)
/* 32A84 80031E84 0C00BFBB */  jal        func_8002FEEC
/* 32A88 80031E88 46006386 */   mov.s     $f14, $f12
/* 32A8C 80031E8C 3C014348 */  lui        $at, 0x4348
/* 32A90 80031E90 C7A2001C */  lwc1       $f2, 0x1c($sp)
/* 32A94 80031E94 44813000 */  mtc1       $at, $f6
/* 32A98 80031E98 3C01C170 */  lui        $at, 0xc170
/* 32A9C 80031E9C 44815000 */  mtc1       $at, $f10
/* 32AA0 80031EA0 46061203 */  div.s      $f8, $f2, $f6
/* 32AA4 80031EA4 3C04800F */  lui        $a0, %hi(D_800F1BE0)
/* 32AA8 80031EA8 24841BE0 */  addiu      $a0, $a0, %lo(D_800F1BE0)
/* 32AAC 80031EAC 460A4402 */  mul.s      $f16, $f8, $f10
/* 32AB0 80031EB0 44058000 */  mfc1       $a1, $f16
/* 32AB4 80031EB4 0C00C06C */  jal        func_800301B0
/* 32AB8 80031EB8 00000000 */   nop
.L80031EBC:
/* 32ABC 80031EBC 8FBF0014 */  lw         $ra, 0x14($sp)
.L80031EC0:
/* 32AC0 80031EC0 27BD0028 */  addiu      $sp, $sp, 0x28
/* 32AC4 80031EC4 03E00008 */  jr         $ra
/* 32AC8 80031EC8 00000000 */   nop

glabel func_80031ECC
/* 32ACC 80031ECC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 32AD0 80031ED0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 32AD4 80031ED4 3C04800F */  lui        $a0, %hi(D_800F1CE8)
/* 32AD8 80031ED8 0C000200 */  jal        func_80000800
/* 32ADC 80031EDC 24841CE8 */   addiu     $a0, $a0, %lo(D_800F1CE8)
/* 32AE0 80031EE0 3C0E800F */  lui        $t6, %hi(D_800F1BF8)
/* 32AE4 80031EE4 8DCE1BF8 */  lw         $t6, %lo(D_800F1BF8)($t6)
/* 32AE8 80031EE8 2DC10006 */  sltiu      $at, $t6, 6
/* 32AEC 80031EEC 10200014 */  beqz       $at, .L80031F40
/* 32AF0 80031EF0 000E7080 */   sll       $t6, $t6, 2
/* 32AF4 80031EF4 3C01800A */  lui        $at, %hi(D_800A5F5C)
/* 32AF8 80031EF8 002E0821 */  addu       $at, $at, $t6
/* 32AFC 80031EFC 8C2E5F5C */  lw         $t6, %lo(D_800A5F5C)($at)
/* 32B00 80031F00 01C00008 */  jr         $t6
/* 32B04 80031F04 00000000 */   nop
/* 32B08 80031F08 0C00C744 */  jal        func_80031D10
/* 32B0C 80031F0C 00000000 */   nop
/* 32B10 80031F10 1000000C */  b          .L80031F44
/* 32B14 80031F14 8FBF0014 */   lw        $ra, 0x14($sp)
/* 32B18 80031F18 0C00C677 */  jal        func_800319DC
/* 32B1C 80031F1C 00000000 */   nop
/* 32B20 80031F20 10000008 */  b          .L80031F44
/* 32B24 80031F24 8FBF0014 */   lw        $ra, 0x14($sp)
/* 32B28 80031F28 0C00C62A */  jal        func_800318A8
/* 32B2C 80031F2C 00000000 */   nop
/* 32B30 80031F30 10000004 */  b          .L80031F44
/* 32B34 80031F34 8FBF0014 */   lw        $ra, 0x14($sp)
/* 32B38 80031F38 0C00C6D7 */  jal        func_80031B5C
/* 32B3C 80031F3C 00000000 */   nop
.L80031F40:
/* 32B40 80031F40 8FBF0014 */  lw         $ra, 0x14($sp)
.L80031F44:
/* 32B44 80031F44 27BD0018 */  addiu      $sp, $sp, 0x18
/* 32B48 80031F48 03E00008 */  jr         $ra
/* 32B4C 80031F4C 00000000 */   nop

glabel func_80031F50
/* 32B50 80031F50 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 32B54 80031F54 AFBF0014 */  sw         $ra, 0x14($sp)
/* 32B58 80031F58 AFA60030 */  sw         $a2, 0x30($sp)
/* 32B5C 80031F5C AFA70034 */  sw         $a3, 0x34($sp)
/* 32B60 80031F60 0C0033A7 */  jal        func_8000CE9C
/* 32B64 80031F64 27A6001C */   addiu     $a2, $sp, 0x1c
/* 32B68 80031F68 8FAF0034 */  lw         $t7, 0x34($sp)
/* 32B6C 80031F6C 8FAE0030 */  lw         $t6, 0x30($sp)
/* 32B70 80031F70 27A4001C */  addiu      $a0, $sp, 0x1c
/* 32B74 80031F74 000FC100 */  sll        $t8, $t7, 4
/* 32B78 80031F78 01D82821 */  addu       $a1, $t6, $t8
/* 32B7C 80031F7C 0C00E939 */  jal        func_8003A4E4
/* 32B80 80031F80 24A50010 */   addiu     $a1, $a1, 0x10
/* 32B84 80031F84 8FBF0014 */  lw         $ra, 0x14($sp)
/* 32B88 80031F88 27BD0028 */  addiu      $sp, $sp, 0x28
/* 32B8C 80031F8C 03E00008 */  jr         $ra
/* 32B90 80031F90 00000000 */   nop

glabel func_80031F94
/* 32B94 80031F94 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 32B98 80031F98 AFBF0014 */  sw         $ra, 0x14($sp)
/* 32B9C 80031F9C 94820072 */  lhu        $v0, 0x72($a0)
/* 32BA0 80031FA0 44856000 */  mtc1       $a1, $f12
/* 32BA4 80031FA4 44867000 */  mtc1       $a2, $f14
/* 32BA8 80031FA8 384E0001 */  xori       $t6, $v0, 1
/* 32BAC 80031FAC 000E7880 */  sll        $t7, $t6, 2
/* 32BB0 80031FB0 01EE7821 */  addu       $t7, $t7, $t6
/* 32BB4 80031FB4 000F78C0 */  sll        $t7, $t7, 3
/* 32BB8 80031FB8 0C00C7D4 */  jal        func_80031F50
/* 32BBC 80031FBC 008F3021 */   addu      $a2, $a0, $t7
/* 32BC0 80031FC0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 32BC4 80031FC4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 32BC8 80031FC8 03E00008 */  jr         $ra
/* 32BCC 80031FCC 00000000 */   nop

glabel func_80031FD0
/* 32BD0 80031FD0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 32BD4 80031FD4 00057080 */  sll        $t6, $a1, 2
/* 32BD8 80031FD8 AFB20030 */  sw         $s2, 0x30($sp)
/* 32BDC 80031FDC F7B60020 */  sdc1       $f22, 0x20($sp)
/* 32BE0 80031FE0 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 32BE4 80031FE4 01C57021 */  addu       $t6, $t6, $a1
/* 32BE8 80031FE8 3C0143B4 */  lui        $at, 0x43b4
/* 32BEC 80031FEC AFB40038 */  sw         $s4, 0x38($sp)
/* 32BF0 80031FF0 AFB30034 */  sw         $s3, 0x34($sp)
/* 32BF4 80031FF4 AFB1002C */  sw         $s1, 0x2c($sp)
/* 32BF8 80031FF8 AFB00028 */  sw         $s0, 0x28($sp)
/* 32BFC 80031FFC 000E70C0 */  sll        $t6, $t6, 3
/* 32C00 80032000 3C12800B */  lui        $s2, %hi(D_800AE4E4)
/* 32C04 80032004 4481A000 */  mtc1       $at, $f20
/* 32C08 80032008 4480B000 */  mtc1       $zero, $f22
/* 32C0C 8003200C AFBF003C */  sw         $ra, 0x3c($sp)
/* 32C10 80032010 2652E4E4 */  addiu      $s2, $s2, %lo(D_800AE4E4)
/* 32C14 80032014 008E9821 */  addu       $s3, $a0, $t6
/* 32C18 80032018 24900050 */  addiu      $s0, $a0, 0x50
/* 32C1C 8003201C 00008825 */  or         $s1, $zero, $zero
/* 32C20 80032020 24140002 */  addiu      $s4, $zero, 2
.L80032024:
/* 32C24 80032024 C6040008 */  lwc1       $f4, 8($s0)
/* 32C28 80032028 C6460000 */  lwc1       $f6, ($s2)
/* 32C2C 8003202C C60A0000 */  lwc1       $f10, ($s0)
/* 32C30 80032030 C612000C */  lwc1       $f18, 0xc($s0)
/* 32C34 80032034 46062202 */  mul.s      $f8, $f4, $f6
/* 32C38 80032038 02603025 */  or         $a2, $s3, $zero
/* 32C3C 8003203C 02203825 */  or         $a3, $s1, $zero
/* 32C40 80032040 46085400 */  add.s      $f16, $f10, $f8
/* 32C44 80032044 C60A0004 */  lwc1       $f10, 4($s0)
/* 32C48 80032048 E6100000 */  swc1       $f16, ($s0)
/* 32C4C 8003204C C6440000 */  lwc1       $f4, ($s2)
/* 32C50 80032050 C6000000 */  lwc1       $f0, ($s0)
/* 32C54 80032054 46049182 */  mul.s      $f6, $f18, $f4
/* 32C58 80032058 4616003C */  c.lt.s     $f0, $f22
/* 32C5C 8003205C 46065200 */  add.s      $f8, $f10, $f6
/* 32C60 80032060 45000008 */  bc1f       .L80032084
/* 32C64 80032064 E6080004 */   swc1      $f8, 4($s0)
/* 32C68 80032068 46140400 */  add.s      $f16, $f0, $f20
.L8003206C:
/* 32C6C 8003206C E6100000 */  swc1       $f16, ($s0)
/* 32C70 80032070 C6000000 */  lwc1       $f0, ($s0)
/* 32C74 80032074 4616003C */  c.lt.s     $f0, $f22
/* 32C78 80032078 00000000 */  nop
/* 32C7C 8003207C 4503FFFB */  bc1tl      .L8003206C
/* 32C80 80032080 46140400 */   add.s     $f16, $f0, $f20
.L80032084:
/* 32C84 80032084 4600A03E */  c.le.s     $f20, $f0
/* 32C88 80032088 00000000 */  nop
/* 32C8C 8003208C 45020009 */  bc1fl      .L800320B4
/* 32C90 80032090 C60E0004 */   lwc1      $f14, 4($s0)
/* 32C94 80032094 46140481 */  sub.s      $f18, $f0, $f20
.L80032098:
/* 32C98 80032098 E6120000 */  swc1       $f18, ($s0)
/* 32C9C 8003209C C6000000 */  lwc1       $f0, ($s0)
/* 32CA0 800320A0 4600A03E */  c.le.s     $f20, $f0
/* 32CA4 800320A4 00000000 */  nop
/* 32CA8 800320A8 4503FFFB */  bc1tl      .L80032098
/* 32CAC 800320AC 46140481 */   sub.s     $f18, $f0, $f20
/* 32CB0 800320B0 C60E0004 */  lwc1       $f14, 4($s0)
.L800320B4:
/* 32CB4 800320B4 4616703C */  c.lt.s     $f14, $f22
/* 32CB8 800320B8 00000000 */  nop
/* 32CBC 800320BC 45020009 */  bc1fl      .L800320E4
/* 32CC0 800320C0 460EA03E */   c.le.s    $f20, $f14
/* 32CC4 800320C4 46147100 */  add.s      $f4, $f14, $f20
.L800320C8:
/* 32CC8 800320C8 E6040004 */  swc1       $f4, 4($s0)
/* 32CCC 800320CC C60E0004 */  lwc1       $f14, 4($s0)
/* 32CD0 800320D0 4616703C */  c.lt.s     $f14, $f22
/* 32CD4 800320D4 00000000 */  nop
/* 32CD8 800320D8 4503FFFB */  bc1tl      .L800320C8
/* 32CDC 800320DC 46147100 */   add.s     $f4, $f14, $f20
/* 32CE0 800320E0 460EA03E */  c.le.s     $f20, $f14
.L800320E4:
/* 32CE4 800320E4 00000000 */  nop
/* 32CE8 800320E8 45000008 */  bc1f       .L8003210C
/* 32CEC 800320EC 00000000 */   nop
/* 32CF0 800320F0 46147281 */  sub.s      $f10, $f14, $f20
.L800320F4:
/* 32CF4 800320F4 E60A0004 */  swc1       $f10, 4($s0)
/* 32CF8 800320F8 C60E0004 */  lwc1       $f14, 4($s0)
/* 32CFC 800320FC 460EA03E */  c.le.s     $f20, $f14
/* 32D00 80032100 00000000 */  nop
/* 32D04 80032104 4503FFFB */  bc1tl      .L800320F4
/* 32D08 80032108 46147281 */   sub.s     $f10, $f14, $f20
.L8003210C:
/* 32D0C 8003210C 0C00C7D4 */  jal        func_80031F50
/* 32D10 80032110 C60C0000 */   lwc1      $f12, ($s0)
/* 32D14 80032114 26310001 */  addiu      $s1, $s1, 1
/* 32D18 80032118 1634FFC2 */  bne        $s1, $s4, .L80032024
/* 32D1C 8003211C 26100010 */   addiu     $s0, $s0, 0x10
/* 32D20 80032120 8FBF003C */  lw         $ra, 0x3c($sp)
/* 32D24 80032124 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 32D28 80032128 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 32D2C 8003212C 8FB00028 */  lw         $s0, 0x28($sp)
/* 32D30 80032130 8FB1002C */  lw         $s1, 0x2c($sp)
/* 32D34 80032134 8FB20030 */  lw         $s2, 0x30($sp)
/* 32D38 80032138 8FB30034 */  lw         $s3, 0x34($sp)
/* 32D3C 8003213C 8FB40038 */  lw         $s4, 0x38($sp)
/* 32D40 80032140 03E00008 */  jr         $ra
/* 32D44 80032144 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_80032148
/* 32D48 80032148 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 32D4C 8003214C AFBF0034 */  sw         $ra, 0x34($sp)
/* 32D50 80032150 AFB50030 */  sw         $s5, 0x30($sp)
/* 32D54 80032154 AFB4002C */  sw         $s4, 0x2c($sp)
/* 32D58 80032158 AFB30028 */  sw         $s3, 0x28($sp)
/* 32D5C 8003215C AFB20024 */  sw         $s2, 0x24($sp)
/* 32D60 80032160 AFB10020 */  sw         $s1, 0x20($sp)
/* 32D64 80032164 AFB0001C */  sw         $s0, 0x1c($sp)
/* 32D68 80032168 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 32D6C 8003216C 3C01800B */  lui        $at, %hi(D_800AE4E4)
/* 32D70 80032170 C426E4E4 */  lwc1       $f6, %lo(D_800AE4E4)($at)
/* 32D74 80032174 C4840078 */  lwc1       $f4, 0x78($a0)
/* 32D78 80032178 44808000 */  mtc1       $zero, $f16
/* 32D7C 8003217C 3C11800A */  lui        $s1, 0x800a
/* 32D80 80032180 46062201 */  sub.s      $f8, $f4, $f6
/* 32D84 80032184 3C15800A */  lui        $s5, %hi(D_8009A6E0)
/* 32D88 80032188 240E0002 */  addiu      $t6, $zero, 2
/* 32D8C 8003218C 3C013F00 */  lui        $at, 0x3f00
/* 32D90 80032190 E4880078 */  swc1       $f8, 0x78($a0)
/* 32D94 80032194 C48A0078 */  lwc1       $f10, 0x78($a0)
/* 32D98 80032198 26B5A6E0 */  addiu      $s5, $s5, %lo(D_8009A6E0)
/* 32D9C 8003219C 2631A6C0 */  addiu      $s1, $s1, -0x5940
/* 32DA0 800321A0 4610503C */  c.lt.s     $f10, $f16
/* 32DA4 800321A4 24900050 */  addiu      $s0, $a0, 0x50
/* 32DA8 800321A8 27B20044 */  addiu      $s2, $sp, 0x44
/* 32DAC 800321AC 27B30040 */  addiu      $s3, $sp, 0x40
/* 32DB0 800321B0 4500001E */  bc1f       .L8003222C
/* 32DB4 800321B4 27B4003C */   addiu     $s4, $sp, 0x3c
/* 32DB8 800321B8 44819000 */  mtc1       $at, $f18
/* 32DBC 800321BC 3C014000 */  lui        $at, 0x4000
/* 32DC0 800321C0 4481A000 */  mtc1       $at, $f20
/* 32DC4 800321C4 A48E0070 */  sh         $t6, 0x70($a0)
/* 32DC8 800321C8 E4920078 */  swc1       $f18, 0x78($a0)
.L800321CC:
/* 32DCC 800321CC 02202025 */  or         $a0, $s1, $zero
/* 32DD0 800321D0 0C00E957 */  jal        func_8003A55C
/* 32DD4 800321D4 02402825 */   or        $a1, $s2, $zero
/* 32DD8 800321D8 02402025 */  or         $a0, $s2, $zero
/* 32DDC 800321DC 02602825 */  or         $a1, $s3, $zero
/* 32DE0 800321E0 0C003298 */  jal        func_8000CA60
/* 32DE4 800321E4 02803025 */   or        $a2, $s4, $zero
/* 32DE8 800321E8 C7A40040 */  lwc1       $f4, 0x40($sp)
/* 32DEC 800321EC C6060000 */  lwc1       $f6, ($s0)
/* 32DF0 800321F0 0C00EDB5 */  jal        func_8003B6D4
/* 32DF4 800321F4 46062301 */   sub.s     $f12, $f4, $f6
/* 32DF8 800321F8 46140202 */  mul.s      $f8, $f0, $f20
/* 32DFC 800321FC C6100004 */  lwc1       $f16, 4($s0)
/* 32E00 80032200 E6080008 */  swc1       $f8, 8($s0)
/* 32E04 80032204 C7AA003C */  lwc1       $f10, 0x3c($sp)
/* 32E08 80032208 0C00EDB5 */  jal        func_8003B6D4
/* 32E0C 8003220C 46105301 */   sub.s     $f12, $f10, $f16
/* 32E10 80032210 46140482 */  mul.s      $f18, $f0, $f20
/* 32E14 80032214 26310010 */  addiu      $s1, $s1, 0x10
/* 32E18 80032218 26100010 */  addiu      $s0, $s0, 0x10
/* 32E1C 8003221C 1635FFEB */  bne        $s1, $s5, .L800321CC
/* 32E20 80032220 E612FFFC */   swc1      $f18, -4($s0)
/* 32E24 80032224 10000004 */  b          .L80032238
/* 32E28 80032228 8FBF0034 */   lw        $ra, 0x34($sp)
.L8003222C:
/* 32E2C 8003222C 0C00C7F4 */  jal        func_80031FD0
/* 32E30 80032230 00000000 */   nop
/* 32E34 80032234 8FBF0034 */  lw         $ra, 0x34($sp)
.L80032238:
/* 32E38 80032238 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 32E3C 8003223C 8FB0001C */  lw         $s0, 0x1c($sp)
/* 32E40 80032240 8FB10020 */  lw         $s1, 0x20($sp)
/* 32E44 80032244 8FB20024 */  lw         $s2, 0x24($sp)
/* 32E48 80032248 8FB30028 */  lw         $s3, 0x28($sp)
/* 32E4C 8003224C 8FB4002C */  lw         $s4, 0x2c($sp)
/* 32E50 80032250 8FB50030 */  lw         $s5, 0x30($sp)
/* 32E54 80032254 03E00008 */  jr         $ra
/* 32E58 80032258 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_8003225C
/* 32E5C 8003225C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 32E60 80032260 AFBF0014 */  sw         $ra, 0x14($sp)
/* 32E64 80032264 3C01800B */  lui        $at, %hi(D_800AE4E4)
/* 32E68 80032268 C426E4E4 */  lwc1       $f6, %lo(D_800AE4E4)($at)
/* 32E6C 8003226C C4840078 */  lwc1       $f4, 0x78($a0)
/* 32E70 80032270 44808000 */  mtc1       $zero, $f16
/* 32E74 80032274 46062201 */  sub.s      $f8, $f4, $f6
/* 32E78 80032278 E4880078 */  swc1       $f8, 0x78($a0)
/* 32E7C 8003227C C48A0078 */  lwc1       $f10, 0x78($a0)
/* 32E80 80032280 4610503C */  c.lt.s     $f10, $f16
/* 32E84 80032284 00000000 */  nop
/* 32E88 80032288 45000005 */  bc1f       .L800322A0
/* 32E8C 8003228C 00000000 */   nop
/* 32E90 80032290 0C00C8AE */  jal        func_800322B8
/* 32E94 80032294 00000000 */   nop
/* 32E98 80032298 10000004 */  b          .L800322AC
/* 32E9C 8003229C 8FBF0014 */   lw        $ra, 0x14($sp)
.L800322A0:
/* 32EA0 800322A0 0C00C7F4 */  jal        func_80031FD0
/* 32EA4 800322A4 00000000 */   nop
/* 32EA8 800322A8 8FBF0014 */  lw         $ra, 0x14($sp)
.L800322AC:
/* 32EAC 800322AC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 32EB0 800322B0 03E00008 */  jr         $ra
/* 32EB4 800322B4 00000000 */   nop

glabel func_800322B8
/* 32EB8 800322B8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 32EBC 800322BC 3C0E800A */  lui        $t6, %hi(D_8009A6B0)
/* 32EC0 800322C0 27A20000 */  addiu      $v0, $sp, 0
/* 32EC4 800322C4 25CEA6B0 */  addiu      $t6, $t6, %lo(D_8009A6B0)
/* 32EC8 800322C8 25D90024 */  addiu      $t9, $t6, 0x24
/* 32ECC 800322CC 00404025 */  or         $t0, $v0, $zero
.L800322D0:
/* 32ED0 800322D0 8DC10000 */  lw         $at, ($t6)
/* 32ED4 800322D4 25CE000C */  addiu      $t6, $t6, 0xc
/* 32ED8 800322D8 2508000C */  addiu      $t0, $t0, 0xc
/* 32EDC 800322DC AD01FFF4 */  sw         $at, -0xc($t0)
/* 32EE0 800322E0 8DC1FFF8 */  lw         $at, -8($t6)
/* 32EE4 800322E4 AD01FFF8 */  sw         $at, -8($t0)
/* 32EE8 800322E8 8DC1FFFC */  lw         $at, -4($t6)
/* 32EEC 800322EC 15D9FFF8 */  bne        $t6, $t9, .L800322D0
/* 32EF0 800322F0 AD01FFFC */   sw        $at, -4($t0)
/* 32EF4 800322F4 8DC10000 */  lw         $at, ($t6)
/* 32EF8 800322F8 00406025 */  or         $t4, $v0, $zero
/* 32EFC 800322FC 00806825 */  or         $t5, $a0, $zero
/* 32F00 80032300 244B0024 */  addiu      $t3, $v0, 0x24
/* 32F04 80032304 AD010000 */  sw         $at, ($t0)
.L80032308:
/* 32F08 80032308 8D810000 */  lw         $at, ($t4)
/* 32F0C 8003230C 258C000C */  addiu      $t4, $t4, 0xc
/* 32F10 80032310 25AD000C */  addiu      $t5, $t5, 0xc
/* 32F14 80032314 ADA1001C */  sw         $at, 0x1c($t5)
/* 32F18 80032318 8D81FFF8 */  lw         $at, -8($t4)
/* 32F1C 8003231C ADA10020 */  sw         $at, 0x20($t5)
/* 32F20 80032320 8D81FFFC */  lw         $at, -4($t4)
/* 32F24 80032324 158BFFF8 */  bne        $t4, $t3, .L80032308
/* 32F28 80032328 ADA10024 */   sw        $at, 0x24($t5)
/* 32F2C 8003232C 8D810000 */  lw         $at, ($t4)
/* 32F30 80032330 00407025 */  or         $t6, $v0, $zero
/* 32F34 80032334 00804025 */  or         $t0, $a0, $zero
/* 32F38 80032338 24590024 */  addiu      $t9, $v0, 0x24
/* 32F3C 8003233C ADA10028 */  sw         $at, 0x28($t5)
.L80032340:
/* 32F40 80032340 8DC10000 */  lw         $at, ($t6)
/* 32F44 80032344 25CE000C */  addiu      $t6, $t6, 0xc
/* 32F48 80032348 2508000C */  addiu      $t0, $t0, 0xc
/* 32F4C 8003234C AD01FFF4 */  sw         $at, -0xc($t0)
/* 32F50 80032350 8DC1FFF8 */  lw         $at, -8($t6)
/* 32F54 80032354 AD01FFF8 */  sw         $at, -8($t0)
/* 32F58 80032358 8DC1FFFC */  lw         $at, -4($t6)
/* 32F5C 8003235C 15D9FFF8 */  bne        $t6, $t9, .L80032340
/* 32F60 80032360 AD01FFFC */   sw        $at, -4($t0)
/* 32F64 80032364 8DC10000 */  lw         $at, ($t6)
/* 32F68 80032368 27BD0028 */  addiu      $sp, $sp, 0x28
/* 32F6C 8003236C AD010000 */  sw         $at, ($t0)
/* 32F70 80032370 A4800070 */  sh         $zero, 0x70($a0)
/* 32F74 80032374 03E00008 */  jr         $ra
/* 32F78 80032378 A4800072 */   sh        $zero, 0x72($a0)

glabel func_8003237C
/* 32F7C 8003237C 03E00008 */  jr         $ra
/* 32F80 80032380 A4800070 */   sh        $zero, 0x70($a0)

glabel func_80032384
/* 32F84 80032384 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 32F88 80032388 44856000 */  mtc1       $a1, $f12
/* 32F8C 8003238C AFB50028 */  sw         $s5, 0x28($sp)
/* 32F90 80032390 AFB40024 */  sw         $s4, 0x24($sp)
/* 32F94 80032394 AFB30020 */  sw         $s3, 0x20($sp)
/* 32F98 80032398 AFB2001C */  sw         $s2, 0x1c($sp)
/* 32F9C 8003239C AFB10018 */  sw         $s1, 0x18($sp)
/* 32FA0 800323A0 AFB00014 */  sw         $s0, 0x14($sp)
/* 32FA4 800323A4 AFBF002C */  sw         $ra, 0x2c($sp)
/* 32FA8 800323A8 240E0001 */  addiu      $t6, $zero, 1
/* 32FAC 800323AC 00809825 */  or         $s3, $a0, $zero
/* 32FB0 800323B0 A48E0070 */  sh         $t6, 0x70($a0)
/* 32FB4 800323B4 24900050 */  addiu      $s0, $a0, 0x50
/* 32FB8 800323B8 00008825 */  or         $s1, $zero, $zero
/* 32FBC 800323BC 00C09025 */  or         $s2, $a2, $zero
/* 32FC0 800323C0 27B4003C */  addiu      $s4, $sp, 0x3c
/* 32FC4 800323C4 24150020 */  addiu      $s5, $zero, 0x20
/* 32FC8 800323C8 E48C0074 */  swc1       $f12, 0x74($a0)
/* 32FCC 800323CC E48C0078 */  swc1       $f12, 0x78($a0)
.L800323D0:
/* 32FD0 800323D0 966F0072 */  lhu        $t7, 0x72($s3)
/* 32FD4 800323D4 02802825 */  or         $a1, $s4, $zero
/* 32FD8 800323D8 000FC080 */  sll        $t8, $t7, 2
/* 32FDC 800323DC 030FC021 */  addu       $t8, $t8, $t7
/* 32FE0 800323E0 0018C0C0 */  sll        $t8, $t8, 3
/* 32FE4 800323E4 0278C821 */  addu       $t9, $s3, $t8
/* 32FE8 800323E8 03312021 */  addu       $a0, $t9, $s1
/* 32FEC 800323EC 0C00E957 */  jal        func_8003A55C
/* 32FF0 800323F0 24840010 */   addiu     $a0, $a0, 0x10
/* 32FF4 800323F4 02802025 */  or         $a0, $s4, $zero
/* 32FF8 800323F8 02002825 */  or         $a1, $s0, $zero
/* 32FFC 800323FC 0C003298 */  jal        func_8000CA60
/* 33000 80032400 26060004 */   addiu     $a2, $s0, 4
/* 33004 80032404 C6440000 */  lwc1       $f4, ($s2)
/* 33008 80032408 26310010 */  addiu      $s1, $s1, 0x10
/* 3300C 8003240C 26520008 */  addiu      $s2, $s2, 8
/* 33010 80032410 E6040008 */  swc1       $f4, 8($s0)
/* 33014 80032414 C646FFFC */  lwc1       $f6, -4($s2)
/* 33018 80032418 26100010 */  addiu      $s0, $s0, 0x10
/* 3301C 8003241C 1635FFEC */  bne        $s1, $s5, .L800323D0
/* 33020 80032420 E606FFFC */   swc1      $f6, -4($s0)
/* 33024 80032424 8FBF002C */  lw         $ra, 0x2c($sp)
/* 33028 80032428 8FB00014 */  lw         $s0, 0x14($sp)
/* 3302C 8003242C 8FB10018 */  lw         $s1, 0x18($sp)
/* 33030 80032430 8FB2001C */  lw         $s2, 0x1c($sp)
/* 33034 80032434 8FB30020 */  lw         $s3, 0x20($sp)
/* 33038 80032438 8FB40024 */  lw         $s4, 0x24($sp)
/* 3303C 8003243C 8FB50028 */  lw         $s5, 0x28($sp)
/* 33040 80032440 03E00008 */  jr         $ra
/* 33044 80032444 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_80032448
/* 33048 80032448 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3304C 8003244C AFBF0014 */  sw         $ra, 0x14($sp)
/* 33050 80032450 94820070 */  lhu        $v0, 0x70($a0)
/* 33054 80032454 1040000A */  beqz       $v0, .L80032480
/* 33058 80032458 0002C080 */   sll       $t8, $v0, 2
/* 3305C 8003245C 948E0072 */  lhu        $t6, 0x72($a0)
/* 33060 80032460 3C19800A */  lui        $t9, %hi(D_8009A6D8)
/* 33064 80032464 0338C821 */  addu       $t9, $t9, $t8
/* 33068 80032468 39CF0001 */  xori       $t7, $t6, 1
/* 3306C 8003246C A48F0072 */  sh         $t7, 0x72($a0)
/* 33070 80032470 8F39A6D8 */  lw         $t9, %lo(D_8009A6D8)($t9)
/* 33074 80032474 31E5FFFF */  andi       $a1, $t7, 0xffff
/* 33078 80032478 0320F809 */  jalr       $t9
/* 3307C 8003247C 00000000 */   nop
.L80032480:
/* 33080 80032480 8FBF0014 */  lw         $ra, 0x14($sp)
/* 33084 80032484 27BD0018 */  addiu      $sp, $sp, 0x18
/* 33088 80032488 03E00008 */  jr         $ra
/* 3308C 8003248C 00000000 */   nop

glabel func_80032490
/* 33090 80032490 8C8E0004 */  lw         $t6, 4($a0)
/* 33094 80032494 00001025 */  or         $v0, $zero, $zero
/* 33098 80032498 15C0000D */  bnez       $t6, .L800324D0
/* 3309C 8003249C 00000000 */   nop
/* 330A0 800324A0 8C830000 */  lw         $v1, ($a0)
/* 330A4 800324A4 24630008 */  addiu      $v1, $v1, 8
.L800324A8:
/* 330A8 800324A8 8C6F0004 */  lw         $t7, 4($v1)
/* 330AC 800324AC 8C78FFFC */  lw         $t8, -4($v1)
/* 330B0 800324B0 8C680000 */  lw         $t0, ($v1)
/* 330B4 800324B4 24630008 */  addiu      $v1, $v1, 8
/* 330B8 800324B8 01F8C821 */  addu       $t9, $t7, $t8
/* 330BC 800324BC 11000003 */  beqz       $t0, .L800324CC
/* 330C0 800324C0 AC79FFFC */   sw        $t9, -4($v1)
/* 330C4 800324C4 1000FFF8 */  b          .L800324A8
/* 330C8 800324C8 24420001 */   addiu     $v0, $v0, 1
.L800324CC:
/* 330CC 800324CC AC820004 */  sw         $v0, 4($a0)
.L800324D0:
/* 330D0 800324D0 03E00008 */  jr         $ra
/* 330D4 800324D4 00000000 */   nop

glabel func_800324D8
/* 330D8 800324D8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 330DC 800324DC AFBF0014 */  sw         $ra, 0x14($sp)
/* 330E0 800324E0 0C00C924 */  jal        func_80032490
/* 330E4 800324E4 AFA40028 */   sw        $a0, 0x28($sp)
/* 330E8 800324E8 8FA50028 */  lw         $a1, 0x28($sp)
/* 330EC 800324EC 8CAE0004 */  lw         $t6, 4($a1)
/* 330F0 800324F0 8CA30000 */  lw         $v1, ($a1)
/* 330F4 800324F4 000E78C0 */  sll        $t7, $t6, 3
/* 330F8 800324F8 006FC021 */  addu       $t8, $v1, $t7
/* 330FC 800324FC 8F040004 */  lw         $a0, 4($t8)
/* 33100 80032500 0C00EAC8 */  jal        func_8003AB20
/* 33104 80032504 AFA3001C */   sw        $v1, 0x1c($sp)
/* 33108 80032508 8FA3001C */  lw         $v1, 0x1c($sp)
/* 3310C 8003250C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 33110 80032510 8C640000 */  lw         $a0, ($v1)
/* 33114 80032514 5080000C */  beql       $a0, $zero, .L80032548
/* 33118 80032518 00001025 */   or        $v0, $zero, $zero
/* 3311C 8003251C 8C790004 */  lw         $t9, 4($v1)
.L80032520:
/* 33120 80032520 0322082A */  slt        $at, $t9, $v0
/* 33124 80032524 54200004 */  bnel       $at, $zero, .L80032538
/* 33128 80032528 8C640008 */   lw        $a0, 8($v1)
/* 3312C 8003252C 10000006 */  b          .L80032548
/* 33130 80032530 00801025 */   or        $v0, $a0, $zero
/* 33134 80032534 8C640008 */  lw         $a0, 8($v1)
.L80032538:
/* 33138 80032538 24630008 */  addiu      $v1, $v1, 8
/* 3313C 8003253C 5480FFF8 */  bnel       $a0, $zero, .L80032520
/* 33140 80032540 8C790004 */   lw        $t9, 4($v1)
/* 33144 80032544 00001025 */  or         $v0, $zero, $zero
.L80032548:
/* 33148 80032548 03E00008 */  jr         $ra
/* 3314C 8003254C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80032550
/* 33150 80032550 3C0E800A */  lui        $t6, %hi(D_8009ADC4)
/* 33154 80032554 25CEADC4 */  addiu      $t6, $t6, %lo(D_8009ADC4)
/* 33158 80032558 8DC10000 */  lw         $at, ($t6)
/* 3315C 8003255C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 33160 80032560 27A60008 */  addiu      $a2, $sp, 8
/* 33164 80032564 ACC10000 */  sw         $at, ($a2)
/* 33168 80032568 8DD90004 */  lw         $t9, 4($t6)
/* 3316C 8003256C 24030002 */  addiu      $v1, $zero, 2
/* 33170 80032570 00036880 */  sll        $t5, $v1, 2
/* 33174 80032574 ACD90004 */  sw         $t9, 4($a2)
/* 33178 80032578 8DC10008 */  lw         $at, 8($t6)
/* 3317C 8003257C 00CD2821 */  addu       $a1, $a2, $t5
/* 33180 80032580 3C0C800F */  lui        $t4, %hi(D_800F2544)
/* 33184 80032584 ACC10008 */  sw         $at, 8($a2)
/* 33188 80032588 8DD9000C */  lw         $t9, 0xc($t6)
/* 3318C 8003258C 258C2544 */  addiu      $t4, $t4, %lo(D_800F2544)
/* 33190 80032590 006C2021 */  addu       $a0, $v1, $t4
/* 33194 80032594 ACD9000C */  sw         $t9, 0xc($a2)
/* 33198 80032598 8DC10010 */  lw         $at, 0x10($t6)
/* 3319C 8003259C ACC10010 */  sw         $at, 0x10($a2)
/* 331A0 800325A0 8DD90014 */  lw         $t9, 0x14($t6)
/* 331A4 800325A4 3C01800F */  lui        $at, %hi(D_800F2544)
/* 331A8 800325A8 ACD90014 */  sw         $t9, 0x14($a2)
/* 331AC 800325AC 8FA20008 */  lw         $v0, 8($sp)
/* 331B0 800325B0 8FA9000C */  lw         $t1, 0xc($sp)
/* 331B4 800325B4 A0202544 */  sb         $zero, %lo(D_800F2544)($at)
/* 331B8 800325B8 2442000B */  addiu      $v0, $v0, 0xb
/* 331BC 800325BC 000240C2 */  srl        $t0, $v0, 3
/* 331C0 800325C0 A0282545 */  sb         $t0, 0x2545($at)
/* 331C4 800325C4 8CB80000 */  lw         $t8, ($a1)
/* 331C8 800325C8 252A000B */  addiu      $t2, $t1, 0xb
/* 331CC 800325CC 000A58C2 */  srl        $t3, $t2, 3
/* 331D0 800325D0 8CB90004 */  lw         $t9, 4($a1)
/* 331D4 800325D4 010B1021 */  addu       $v0, $t0, $t3
/* 331D8 800325D8 270F000B */  addiu      $t7, $t8, 0xb
/* 331DC 800325DC 8CAA0008 */  lw         $t2, 8($a1)
/* 331E0 800325E0 A0820000 */  sb         $v0, ($a0)
/* 331E4 800325E4 000F70C2 */  srl        $t6, $t7, 3
/* 331E8 800325E8 004E1021 */  addu       $v0, $v0, $t6
/* 331EC 800325EC 2728000B */  addiu      $t0, $t9, 0xb
/* 331F0 800325F0 000848C2 */  srl        $t1, $t0, 3
/* 331F4 800325F4 A0820001 */  sb         $v0, 1($a0)
/* 331F8 800325F8 00491021 */  addu       $v0, $v0, $t1
/* 331FC 800325FC 254B000B */  addiu      $t3, $t2, 0xb
/* 33200 80032600 000B60C2 */  srl        $t4, $t3, 3
/* 33204 80032604 A0820002 */  sb         $v0, 2($a0)
/* 33208 80032608 004C1021 */  addu       $v0, $v0, $t4
/* 3320C 8003260C A0820003 */  sb         $v0, 3($a0)
/* 33210 80032610 03E00008 */  jr         $ra
/* 33214 80032614 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80032618
/* 33218 80032618 3C0E800A */  lui        $t6, %hi(D_8009ADDC)
/* 3321C 8003261C 25CEADDC */  addiu      $t6, $t6, %lo(D_8009ADDC)
/* 33220 80032620 8DC10000 */  lw         $at, ($t6)
/* 33224 80032624 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 33228 80032628 27A30000 */  addiu      $v1, $sp, 0
/* 3322C 8003262C AC610000 */  sw         $at, ($v1)
/* 33230 80032630 8DD90004 */  lw         $t9, 4($t6)
/* 33234 80032634 00044080 */  sll        $t0, $a0, 2
/* 33238 80032638 00684821 */  addu       $t1, $v1, $t0
/* 3323C 8003263C AC790004 */  sw         $t9, 4($v1)
/* 33240 80032640 8DC10008 */  lw         $at, 8($t6)
/* 33244 80032644 AC610008 */  sw         $at, 8($v1)
/* 33248 80032648 8DD9000C */  lw         $t9, 0xc($t6)
/* 3324C 8003264C AC79000C */  sw         $t9, 0xc($v1)
/* 33250 80032650 8DC10010 */  lw         $at, 0x10($t6)
/* 33254 80032654 AC610010 */  sw         $at, 0x10($v1)
/* 33258 80032658 8DD90014 */  lw         $t9, 0x14($t6)
/* 3325C 8003265C AC790014 */  sw         $t9, 0x14($v1)
/* 33260 80032660 8D220000 */  lw         $v0, ($t1)
/* 33264 80032664 03E00008 */  jr         $ra
/* 33268 80032668 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8003266C
/* 3326C 8003266C 03E00008 */  jr         $ra
/* 33270 80032670 00000000 */   nop

glabel func_80032674
/* 33274 80032674 03E00008 */  jr         $ra
/* 33278 80032678 00000000 */   nop

glabel func_8003267C
/* 3327C 8003267C 3C06800A */  lui        $a2, %hi(D_8009A6F4)
/* 33280 80032680 3C0A800F */  lui        $t2, %hi(D_800F1D30)
/* 33284 80032684 00001025 */  or         $v0, $zero, $zero
/* 33288 80032688 00001825 */  or         $v1, $zero, $zero
/* 3328C 8003268C 254A1D30 */  addiu      $t2, $t2, %lo(D_800F1D30)
/* 33290 80032690 24C6A6F4 */  addiu      $a2, $a2, %lo(D_8009A6F4)
/* 33294 80032694 00002025 */  or         $a0, $zero, $zero
/* 33298 80032698 240C0008 */  addiu      $t4, $zero, 8
/* 3329C 8003269C 240B00F4 */  addiu      $t3, $zero, 0xf4
.L800326A0:
/* 332A0 800326A0 10400003 */  beqz       $v0, .L800326B0
/* 332A4 800326A4 8CC50000 */   lw        $a1, ($a2)
/* 332A8 800326A8 00001025 */  or         $v0, $zero, $zero
/* 332AC 800326AC 24630001 */  addiu      $v1, $v1, 1
.L800326B0:
/* 332B0 800326B0 24A70007 */  addiu      $a3, $a1, 7
/* 332B4 800326B4 04E10003 */  bgez       $a3, .L800326C4
/* 332B8 800326B8 000770C3 */   sra       $t6, $a3, 3
/* 332BC 800326BC 24E10007 */  addiu      $at, $a3, 7
/* 332C0 800326C0 000170C3 */  sra        $t6, $at, 3
.L800326C4:
/* 332C4 800326C4 006E7821 */  addu       $t7, $v1, $t6
/* 332C8 800326C8 25F8FFFF */  addiu      $t8, $t7, -1
/* 332CC 800326CC 030E001A */  div        $zero, $t8, $t6
/* 332D0 800326D0 0000C812 */  mflo       $t9
/* 332D4 800326D4 01C03825 */  or         $a3, $t6, $zero
/* 332D8 800326D8 3C09800A */  lui        $t1, %hi(D_8009A754)
/* 332DC 800326DC 03270019 */  multu      $t9, $a3
/* 332E0 800326E0 2529A754 */  addiu      $t1, $t1, %lo(D_8009A754)
/* 332E4 800326E4 14E00002 */  bnez       $a3, .L800326F0
/* 332E8 800326E8 00000000 */   nop
/* 332EC 800326EC 0007000D */  break      7
.L800326F0:
/* 332F0 800326F0 2401FFFF */   addiu     $at, $zero, -1
/* 332F4 800326F4 14E10004 */  bne        $a3, $at, .L80032708
/* 332F8 800326F8 3C018000 */   lui       $at, 0x8000
/* 332FC 800326FC 17010002 */  bne        $t8, $at, .L80032708
/* 33300 80032700 00000000 */   nop
/* 33304 80032704 0006000D */  break      6
.L80032708:
/* 33308 80032708 00001812 */   mflo      $v1
/* 3330C 8003270C 00004025 */  or         $t0, $zero, $zero
/* 33310 80032710 00000000 */  nop
.L80032714:
/* 33314 80032714 8D2D0000 */  lw         $t5, ($t1)
/* 33318 80032718 000870C0 */  sll        $t6, $t0, 3
/* 3331C 8003271C 0008C8C0 */  sll        $t9, $t0, 3
/* 33320 80032720 148D000C */  bne        $a0, $t5, .L80032754
/* 33324 80032724 014E3821 */   addu      $a3, $t2, $t6
/* 33328 80032728 ACE20004 */  sw         $v0, 4($a3)
/* 3332C 8003272C 00451021 */  addu       $v0, $v0, $a1
/* 33330 80032730 28410008 */  slti       $at, $v0, 8
/* 33334 80032734 14200007 */  bnez       $at, .L80032754
/* 33338 80032738 ACE30000 */   sw        $v1, ($a3)
/* 3333C 8003273C 04410003 */  bgez       $v0, .L8003274C
/* 33340 80032740 000278C3 */   sra       $t7, $v0, 3
/* 33344 80032744 24410007 */  addiu      $at, $v0, 7
/* 33348 80032748 000178C3 */  sra        $t7, $at, 3
.L8003274C:
/* 3334C 8003274C 006F1821 */  addu       $v1, $v1, $t7
/* 33350 80032750 00001025 */  or         $v0, $zero, $zero
.L80032754:
/* 33354 80032754 8D380004 */  lw         $t8, 4($t1)
/* 33358 80032758 01593821 */  addu       $a3, $t2, $t9
/* 3335C 8003275C 000878C0 */  sll        $t7, $t0, 3
/* 33360 80032760 5498000D */  bnel       $a0, $t8, .L80032798
/* 33364 80032764 8D2E0008 */   lw        $t6, 8($t1)
/* 33368 80032768 ACE2000C */  sw         $v0, 0xc($a3)
/* 3336C 8003276C 00451021 */  addu       $v0, $v0, $a1
/* 33370 80032770 28410008 */  slti       $at, $v0, 8
/* 33374 80032774 14200007 */  bnez       $at, .L80032794
/* 33378 80032778 ACE30008 */   sw        $v1, 8($a3)
/* 3337C 8003277C 04410003 */  bgez       $v0, .L8003278C
/* 33380 80032780 000268C3 */   sra       $t5, $v0, 3
/* 33384 80032784 24410007 */  addiu      $at, $v0, 7
/* 33388 80032788 000168C3 */  sra        $t5, $at, 3
.L8003278C:
/* 3338C 8003278C 006D1821 */  addu       $v1, $v1, $t5
/* 33390 80032790 00001025 */  or         $v0, $zero, $zero
.L80032794:
/* 33394 80032794 8D2E0008 */  lw         $t6, 8($t1)
.L80032798:
/* 33398 80032798 014F3821 */  addu       $a3, $t2, $t7
/* 3339C 8003279C 548E000D */  bnel       $a0, $t6, .L800327D4
/* 333A0 800327A0 8D39000C */   lw        $t9, 0xc($t1)
/* 333A4 800327A4 ACE20014 */  sw         $v0, 0x14($a3)
/* 333A8 800327A8 00451021 */  addu       $v0, $v0, $a1
/* 333AC 800327AC 28410008 */  slti       $at, $v0, 8
/* 333B0 800327B0 14200007 */  bnez       $at, .L800327D0
/* 333B4 800327B4 ACE30010 */   sw        $v1, 0x10($a3)
/* 333B8 800327B8 04410003 */  bgez       $v0, .L800327C8
/* 333BC 800327BC 0002C0C3 */   sra       $t8, $v0, 3
/* 333C0 800327C0 24410007 */  addiu      $at, $v0, 7
/* 333C4 800327C4 0001C0C3 */  sra        $t8, $at, 3
.L800327C8:
/* 333C8 800327C8 00781821 */  addu       $v1, $v1, $t8
/* 333CC 800327CC 00001025 */  or         $v0, $zero, $zero
.L800327D0:
/* 333D0 800327D0 8D39000C */  lw         $t9, 0xc($t1)
.L800327D4:
/* 333D4 800327D4 5499000F */  bnel       $a0, $t9, .L80032814
/* 333D8 800327D8 25080004 */   addiu     $t0, $t0, 4
/* 333DC 800327DC 000868C0 */  sll        $t5, $t0, 3
/* 333E0 800327E0 014D3821 */  addu       $a3, $t2, $t5
/* 333E4 800327E4 ACE2001C */  sw         $v0, 0x1c($a3)
/* 333E8 800327E8 00451021 */  addu       $v0, $v0, $a1
/* 333EC 800327EC 28410008 */  slti       $at, $v0, 8
/* 333F0 800327F0 14200007 */  bnez       $at, .L80032810
/* 333F4 800327F4 ACE30018 */   sw        $v1, 0x18($a3)
/* 333F8 800327F8 04410003 */  bgez       $v0, .L80032808
/* 333FC 800327FC 000270C3 */   sra       $t6, $v0, 3
/* 33400 80032800 24410007 */  addiu      $at, $v0, 7
/* 33404 80032804 000170C3 */  sra        $t6, $at, 3
.L80032808:
/* 33408 80032808 006E1821 */  addu       $v1, $v1, $t6
/* 3340C 8003280C 00001025 */  or         $v0, $zero, $zero
.L80032810:
/* 33410 80032810 25080004 */  addiu      $t0, $t0, 4
.L80032814:
/* 33414 80032814 150BFFBF */  bne        $t0, $t3, .L80032714
/* 33418 80032818 25290010 */   addiu     $t1, $t1, 0x10
/* 3341C 8003281C 24840001 */  addiu      $a0, $a0, 1
/* 33420 80032820 148CFF9F */  bne        $a0, $t4, .L800326A0
/* 33424 80032824 24C6000C */   addiu     $a2, $a2, 0xc
/* 33428 80032828 03E00008 */  jr         $ra
/* 3342C 8003282C 00000000 */   nop

glabel func_80032830
/* 33430 80032830 00047080 */  sll        $t6, $a0, 2
/* 33434 80032834 3C05800A */  lui        $a1, %hi(D_8009A754)
/* 33438 80032838 00AE2821 */  addu       $a1, $a1, $t6
/* 3343C 8003283C 8CA5A754 */  lw         $a1, %lo(D_8009A754)($a1)
/* 33440 80032840 00001025 */  or         $v0, $zero, $zero
/* 33444 80032844 2CA10008 */  sltiu      $at, $a1, 8
/* 33448 80032848 10200045 */  beqz       $at, .L80032960
/* 3344C 8003284C 00057880 */   sll       $t7, $a1, 2
/* 33450 80032850 3C01800A */  lui        $at, %hi(D_800A60A4)
/* 33454 80032854 002F0821 */  addu       $at, $at, $t7
/* 33458 80032858 8C2F60A4 */  lw         $t7, %lo(D_800A60A4)($at)
/* 3345C 8003285C 01E00008 */  jr         $t7
/* 33460 80032860 00000000 */   nop
/* 33464 80032864 0004C0C0 */  sll        $t8, $a0, 3
/* 33468 80032868 3C19800F */  lui        $t9, %hi(D_800F1D30)
/* 3346C 8003286C 0338C821 */  addu       $t9, $t9, $t8
/* 33470 80032870 8F391D30 */  lw         $t9, %lo(D_800F1D30)($t9)
/* 33474 80032874 3C02800F */  lui        $v0, %hi(D_800F24D0)
/* 33478 80032878 00591021 */  addu       $v0, $v0, $t9
/* 3347C 8003287C 03E00008 */  jr         $ra
/* 33480 80032880 8C4224D0 */   lw        $v0, %lo(D_800F24D0)($v0)
/* 33484 80032884 000440C0 */  sll        $t0, $a0, 3
/* 33488 80032888 3C09800F */  lui        $t1, %hi(D_800F1D30)
/* 3348C 8003288C 01284821 */  addu       $t1, $t1, $t0
/* 33490 80032890 8D291D30 */  lw         $t1, %lo(D_800F1D30)($t1)
/* 33494 80032894 3C02800F */  lui        $v0, %hi(D_800F24D0)
/* 33498 80032898 00491021 */  addu       $v0, $v0, $t1
/* 3349C 8003289C 03E00008 */  jr         $ra
/* 334A0 800328A0 844224D0 */   lh        $v0, %lo(D_800F24D0)($v0)
/* 334A4 800328A4 000450C0 */  sll        $t2, $a0, 3
/* 334A8 800328A8 3C0B800F */  lui        $t3, %hi(D_800F1D30)
/* 334AC 800328AC 016A5821 */  addu       $t3, $t3, $t2
/* 334B0 800328B0 8D6B1D30 */  lw         $t3, %lo(D_800F1D30)($t3)
/* 334B4 800328B4 3C02800F */  lui        $v0, %hi(D_800F24D0)
/* 334B8 800328B8 004B1021 */  addu       $v0, $v0, $t3
/* 334BC 800328BC 03E00008 */  jr         $ra
/* 334C0 800328C0 944224D0 */   lhu       $v0, %lo(D_800F24D0)($v0)
/* 334C4 800328C4 000460C0 */  sll        $t4, $a0, 3
/* 334C8 800328C8 3C0D800F */  lui        $t5, %hi(D_800F1D30)
/* 334CC 800328CC 01AC6821 */  addu       $t5, $t5, $t4
/* 334D0 800328D0 8DAD1D30 */  lw         $t5, %lo(D_800F1D30)($t5)
/* 334D4 800328D4 3C02800F */  lui        $v0, %hi(D_800F24D0)
/* 334D8 800328D8 004D1021 */  addu       $v0, $v0, $t5
/* 334DC 800328DC 03E00008 */  jr         $ra
/* 334E0 800328E0 804224D0 */   lb        $v0, %lo(D_800F24D0)($v0)
/* 334E4 800328E4 000470C0 */  sll        $t6, $a0, 3
/* 334E8 800328E8 3C0F800F */  lui        $t7, %hi(D_800F1D30)
/* 334EC 800328EC 01EE7821 */  addu       $t7, $t7, $t6
/* 334F0 800328F0 8DEF1D30 */  lw         $t7, %lo(D_800F1D30)($t7)
/* 334F4 800328F4 3C02800F */  lui        $v0, %hi(D_800F24D0)
/* 334F8 800328F8 004F1021 */  addu       $v0, $v0, $t7
/* 334FC 800328FC 03E00008 */  jr         $ra
/* 33500 80032900 904224D0 */   lbu       $v0, %lo(D_800F24D0)($v0)
/* 33504 80032904 3C19800F */  lui        $t9, %hi(D_800F1D30)
/* 33508 80032908 00055880 */  sll        $t3, $a1, 2
/* 3350C 8003290C 27391D30 */  addiu      $t9, $t9, %lo(D_800F1D30)
/* 33510 80032910 0004C0C0 */  sll        $t8, $a0, 3
/* 33514 80032914 01655823 */  subu       $t3, $t3, $a1
/* 33518 80032918 03191821 */  addu       $v1, $t8, $t9
/* 3351C 8003291C 000B5880 */  sll        $t3, $t3, 2
/* 33520 80032920 3C0C800A */  lui        $t4, %hi(D_8009A6F4)
/* 33524 80032924 8C680000 */  lw         $t0, ($v1)
/* 33528 80032928 018B6021 */  addu       $t4, $t4, $t3
/* 3352C 8003292C 8D8CA6F4 */  lw         $t4, %lo(D_8009A6F4)($t4)
/* 33530 80032930 3C09800F */  lui        $t1, %hi(D_800F24D0)
/* 33534 80032934 01284821 */  addu       $t1, $t1, $t0
/* 33538 80032938 912924D0 */  lbu        $t1, %lo(D_800F24D0)($t1)
/* 3353C 8003293C 8C6A0004 */  lw         $t2, 4($v1)
/* 33540 80032940 240E0001 */  addiu      $t6, $zero, 1
/* 33544 80032944 258D001F */  addiu      $t5, $t4, 0x1f
/* 33548 80032948 01AE7804 */  sllv       $t7, $t6, $t5
/* 3354C 8003294C 000FC040 */  sll        $t8, $t7, 1
/* 33550 80032950 2719FFFF */  addiu      $t9, $t8, -1
/* 33554 80032954 01493007 */  srav       $a2, $t1, $t2
/* 33558 80032958 03E00008 */  jr         $ra
/* 3355C 8003295C 00D91024 */   and       $v0, $a2, $t9
.L80032960:
/* 33560 80032960 03E00008 */  jr         $ra
/* 33564 80032964 00000000 */   nop

glabel func_80032968
/* 33568 80032968 00047080 */  sll        $t6, $a0, 2
/* 3356C 8003296C 3C03800A */  lui        $v1, %hi(D_8009A754)
/* 33570 80032970 006E1821 */  addu       $v1, $v1, $t6
/* 33574 80032974 8C63A754 */  lw         $v1, %lo(D_8009A754)($v1)
/* 33578 80032978 3C18800A */  lui        $t8, %hi(D_8009A6F4)
/* 3357C 8003297C 2718A6F4 */  addiu      $t8, $t8, %lo(D_8009A6F4)
/* 33580 80032980 00037880 */  sll        $t7, $v1, 2
/* 33584 80032984 01E37823 */  subu       $t7, $t7, $v1
/* 33588 80032988 000F7880 */  sll        $t7, $t7, 2
/* 3358C 8003298C 01F83021 */  addu       $a2, $t7, $t8
/* 33590 80032990 8CC70004 */  lw         $a3, 4($a2)
/* 33594 80032994 00C01025 */  or         $v0, $a2, $zero
/* 33598 80032998 0003C880 */  sll        $t9, $v1, 2
/* 3359C 8003299C 00A7082A */  slt        $at, $a1, $a3
/* 335A0 800329A0 50200004 */  beql       $at, $zero, .L800329B4
/* 335A4 800329A4 8C470008 */   lw        $a3, 8($v0)
/* 335A8 800329A8 10000006 */  b          .L800329C4
/* 335AC 800329AC 00E02825 */   or        $a1, $a3, $zero
/* 335B0 800329B0 8C470008 */  lw         $a3, 8($v0)
.L800329B4:
/* 335B4 800329B4 00E5082A */  slt        $at, $a3, $a1
/* 335B8 800329B8 50200003 */  beql       $at, $zero, .L800329C8
/* 335BC 800329BC 2C610008 */   sltiu     $at, $v1, 8
/* 335C0 800329C0 00E02825 */  or         $a1, $a3, $zero
.L800329C4:
/* 335C4 800329C4 2C610008 */  sltiu      $at, $v1, 8
.L800329C8:
/* 335C8 800329C8 10200051 */  beqz       $at, .L80032B10
/* 335CC 800329CC 3C01800A */   lui       $at, %hi(D_800A60C4)
/* 335D0 800329D0 00390821 */  addu       $at, $at, $t9
/* 335D4 800329D4 8C3960C4 */  lw         $t9, %lo(D_800A60C4)($at)
/* 335D8 800329D8 03200008 */  jr         $t9
/* 335DC 800329DC 00000000 */   nop
/* 335E0 800329E0 000458C0 */  sll        $t3, $a0, 3
/* 335E4 800329E4 3C0C800F */  lui        $t4, %hi(D_800F1D30)
/* 335E8 800329E8 018B6021 */  addu       $t4, $t4, $t3
/* 335EC 800329EC 8D8C1D30 */  lw         $t4, %lo(D_800F1D30)($t4)
/* 335F0 800329F0 3C0A800F */  lui        $t2, %hi(D_800F24D0)
/* 335F4 800329F4 254A24D0 */  addiu      $t2, $t2, %lo(D_800F24D0)
/* 335F8 800329F8 014C6821 */  addu       $t5, $t2, $t4
/* 335FC 800329FC ADA50000 */  sw         $a1, ($t5)
/* 33600 80032A00 03E00008 */  jr         $ra
/* 33604 80032A04 00A01025 */   or        $v0, $a1, $zero
/* 33608 80032A08 000470C0 */  sll        $t6, $a0, 3
/* 3360C 80032A0C 3C0F800F */  lui        $t7, %hi(D_800F1D30)
/* 33610 80032A10 01EE7821 */  addu       $t7, $t7, $t6
/* 33614 80032A14 8DEF1D30 */  lw         $t7, %lo(D_800F1D30)($t7)
/* 33618 80032A18 3C0A800F */  lui        $t2, %hi(D_800F24D0)
/* 3361C 80032A1C 254A24D0 */  addiu      $t2, $t2, %lo(D_800F24D0)
/* 33620 80032A20 014FC021 */  addu       $t8, $t2, $t7
/* 33624 80032A24 A7050000 */  sh         $a1, ($t8)
/* 33628 80032A28 03E00008 */  jr         $ra
/* 3362C 80032A2C 00A01025 */   or        $v0, $a1, $zero
/* 33630 80032A30 0004C8C0 */  sll        $t9, $a0, 3
/* 33634 80032A34 3C0B800F */  lui        $t3, %hi(D_800F1D30)
/* 33638 80032A38 01795821 */  addu       $t3, $t3, $t9
/* 3363C 80032A3C 8D6B1D30 */  lw         $t3, %lo(D_800F1D30)($t3)
/* 33640 80032A40 3C0A800F */  lui        $t2, %hi(D_800F24D0)
/* 33644 80032A44 254A24D0 */  addiu      $t2, $t2, %lo(D_800F24D0)
/* 33648 80032A48 014B6021 */  addu       $t4, $t2, $t3
/* 3364C 80032A4C A5850000 */  sh         $a1, ($t4)
/* 33650 80032A50 03E00008 */  jr         $ra
/* 33654 80032A54 00A01025 */   or        $v0, $a1, $zero
/* 33658 80032A58 000468C0 */  sll        $t5, $a0, 3
/* 3365C 80032A5C 3C0E800F */  lui        $t6, %hi(D_800F1D30)
/* 33660 80032A60 01CD7021 */  addu       $t6, $t6, $t5
/* 33664 80032A64 8DCE1D30 */  lw         $t6, %lo(D_800F1D30)($t6)
/* 33668 80032A68 3C0A800F */  lui        $t2, %hi(D_800F24D0)
/* 3366C 80032A6C 254A24D0 */  addiu      $t2, $t2, %lo(D_800F24D0)
/* 33670 80032A70 014E7821 */  addu       $t7, $t2, $t6
/* 33674 80032A74 A1E50000 */  sb         $a1, ($t7)
/* 33678 80032A78 03E00008 */  jr         $ra
/* 3367C 80032A7C 00A01025 */   or        $v0, $a1, $zero
/* 33680 80032A80 0004C0C0 */  sll        $t8, $a0, 3
/* 33684 80032A84 3C19800F */  lui        $t9, %hi(D_800F1D30)
/* 33688 80032A88 0338C821 */  addu       $t9, $t9, $t8
/* 3368C 80032A8C 8F391D30 */  lw         $t9, %lo(D_800F1D30)($t9)
/* 33690 80032A90 3C0A800F */  lui        $t2, %hi(D_800F24D0)
/* 33694 80032A94 254A24D0 */  addiu      $t2, $t2, %lo(D_800F24D0)
/* 33698 80032A98 01595821 */  addu       $t3, $t2, $t9
/* 3369C 80032A9C A1650000 */  sb         $a1, ($t3)
/* 336A0 80032AA0 03E00008 */  jr         $ra
/* 336A4 80032AA4 00A01025 */   or        $v0, $a1, $zero
/* 336A8 80032AA8 8CCE0000 */  lw         $t6, ($a2)
/* 336AC 80032AAC 3C0D800F */  lui        $t5, %hi(D_800F1D30)
/* 336B0 80032AB0 25AD1D30 */  addiu      $t5, $t5, %lo(D_800F1D30)
/* 336B4 80032AB4 000460C0 */  sll        $t4, $a0, 3
/* 336B8 80032AB8 24180001 */  addiu      $t8, $zero, 1
/* 336BC 80032ABC 25CF001F */  addiu      $t7, $t6, 0x1f
/* 336C0 80032AC0 01F8C804 */  sllv       $t9, $t8, $t7
/* 336C4 80032AC4 018D1021 */  addu       $v0, $t4, $t5
/* 336C8 80032AC8 8C580000 */  lw         $t8, ($v0)
/* 336CC 80032ACC 3C0A800F */  lui        $t2, %hi(D_800F24D0)
/* 336D0 80032AD0 8C490004 */  lw         $t1, 4($v0)
/* 336D4 80032AD4 254A24D0 */  addiu      $t2, $t2, %lo(D_800F24D0)
/* 336D8 80032AD8 00195840 */  sll        $t3, $t9, 1
/* 336DC 80032ADC 01584021 */  addu       $t0, $t2, $t8
/* 336E0 80032AE0 910F0000 */  lbu        $t7, ($t0)
/* 336E4 80032AE4 256CFFFF */  addiu      $t4, $t3, -1
/* 336E8 80032AE8 012C6804 */  sllv       $t5, $t4, $t1
/* 336EC 80032AEC 01A0C827 */  not        $t9, $t5
/* 336F0 80032AF0 01F95824 */  and        $t3, $t7, $t9
/* 336F4 80032AF4 A10B0000 */  sb         $t3, ($t0)
/* 336F8 80032AF8 8C4C0000 */  lw         $t4, ($v0)
/* 336FC 80032AFC 01257004 */  sllv       $t6, $a1, $t1
/* 33700 80032B00 014C4021 */  addu       $t0, $t2, $t4
/* 33704 80032B04 910D0000 */  lbu        $t5, ($t0)
/* 33708 80032B08 01AE7025 */  or         $t6, $t5, $t6
/* 3370C 80032B0C A10E0000 */  sb         $t6, ($t0)
.L80032B10:
/* 33710 80032B10 03E00008 */  jr         $ra
/* 33714 80032B14 00A01025 */   or        $v0, $a1, $zero

glabel func_80032B18
/* 33718 80032B18 00047080 */  sll        $t6, $a0, 2
/* 3371C 80032B1C 3C0F800A */  lui        $t7, %hi(D_8009A754)
/* 33720 80032B20 01EE7821 */  addu       $t7, $t7, $t6
/* 33724 80032B24 8DEFA754 */  lw         $t7, %lo(D_8009A754)($t7)
/* 33728 80032B28 3C19800A */  lui        $t9, %hi(D_8009A6F4)
/* 3372C 80032B2C 2739A6F4 */  addiu      $t9, $t9, %lo(D_8009A6F4)
/* 33730 80032B30 000FC080 */  sll        $t8, $t7, 2
/* 33734 80032B34 030FC023 */  subu       $t8, $t8, $t7
/* 33738 80032B38 0018C080 */  sll        $t8, $t8, 2
/* 3373C 80032B3C 03191821 */  addu       $v1, $t8, $t9
/* 33740 80032B40 03E00008 */  jr         $ra
/* 33744 80032B44 8C620004 */   lw        $v0, 4($v1)

glabel func_80032B48
/* 33748 80032B48 00047080 */  sll        $t6, $a0, 2
/* 3374C 80032B4C 3C0F800A */  lui        $t7, %hi(D_8009A754)
/* 33750 80032B50 01EE7821 */  addu       $t7, $t7, $t6
/* 33754 80032B54 8DEFA754 */  lw         $t7, %lo(D_8009A754)($t7)
/* 33758 80032B58 3C19800A */  lui        $t9, %hi(D_8009A6F4)
/* 3375C 80032B5C 2739A6F4 */  addiu      $t9, $t9, %lo(D_8009A6F4)
/* 33760 80032B60 000FC080 */  sll        $t8, $t7, 2
/* 33764 80032B64 030FC023 */  subu       $t8, $t8, $t7
/* 33768 80032B68 0018C080 */  sll        $t8, $t8, 2
/* 3376C 80032B6C 03191821 */  addu       $v1, $t8, $t9
/* 33770 80032B70 03E00008 */  jr         $ra
/* 33774 80032B74 8C620008 */   lw        $v0, 8($v1)

glabel func_80032B78
/* 33778 80032B78 00047040 */  sll        $t6, $a0, 1
/* 3377C 80032B7C 05C1000F */  bgez       $t6, .L80032BBC
/* 33780 80032B80 00801025 */   or        $v0, $a0, $zero
/* 33784 80032B84 3C013FFF */  lui        $at, 0x3fff
/* 33788 80032B88 3421FFFF */  ori        $at, $at, 0xffff
/* 3378C 80032B8C 3C19800B */  lui        $t9, %hi(D_800AE4F8)
/* 33790 80032B90 8F39E4F8 */  lw         $t9, %lo(D_800AE4F8)($t9)
/* 33794 80032B94 00817824 */  and        $t7, $a0, $at
/* 33798 80032B98 000FC080 */  sll        $t8, $t7, 2
/* 3379C 80032B9C 030FC023 */  subu       $t8, $t8, $t7
/* 337A0 80032BA0 0018C140 */  sll        $t8, $t8, 5
/* 337A4 80032BA4 00194080 */  sll        $t0, $t9, 2
/* 337A8 80032BA8 03084821 */  addu       $t1, $t8, $t0
/* 337AC 80032BAC 3C02800A */  lui        $v0, %hi(D_8009AB28)
/* 337B0 80032BB0 00491021 */  addu       $v0, $v0, $t1
/* 337B4 80032BB4 03E00008 */  jr         $ra
/* 337B8 80032BB8 8C42AB28 */   lw        $v0, %lo(D_8009AB28)($v0)
.L80032BBC:
/* 337BC 80032BBC 03E00008 */  jr         $ra
/* 337C0 80032BC0 00000000 */   nop

glabel func_80032BC4
/* 337C4 80032BC4 03E00008 */  jr         $ra
/* 337C8 80032BC8 00000000 */   nop

glabel func_80032BCC
/* 337CC 80032BCC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 337D0 80032BD0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 337D4 80032BD4 0C00CADE */  jal        func_80032B78
/* 337D8 80032BD8 00000000 */   nop
/* 337DC 80032BDC 0C00CAC6 */  jal        func_80032B18
/* 337E0 80032BE0 00402025 */   or        $a0, $v0, $zero
/* 337E4 80032BE4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 337E8 80032BE8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 337EC 80032BEC 03E00008 */  jr         $ra
/* 337F0 80032BF0 00000000 */   nop

glabel func_80032BF4
/* 337F4 80032BF4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 337F8 80032BF8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 337FC 80032BFC 0C00CADE */  jal        func_80032B78
/* 33800 80032C00 00000000 */   nop
/* 33804 80032C04 0C00CAD2 */  jal        func_80032B48
/* 33808 80032C08 00402025 */   or        $a0, $v0, $zero
/* 3380C 80032C0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 33810 80032C10 27BD0018 */  addiu      $sp, $sp, 0x18
/* 33814 80032C14 03E00008 */  jr         $ra
/* 33818 80032C18 00000000 */   nop

glabel __osSpSetPc
/* 3381C 80032C1C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 33820 80032C20 AFBF0014 */  sw         $ra, 0x14($sp)
/* 33824 80032C24 0C00CADE */  jal        func_80032B78
/* 33828 80032C28 00000000 */   nop
/* 3382C 80032C2C 0C00CA0C */  jal        func_80032830
/* 33830 80032C30 00402025 */   or        $a0, $v0, $zero
/* 33834 80032C34 8FBF0014 */  lw         $ra, 0x14($sp)
/* 33838 80032C38 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3383C 80032C3C 03E00008 */  jr         $ra
/* 33840 80032C40 00000000 */   nop

glabel func_80032C44
/* 33844 80032C44 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 33848 80032C48 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3384C 80032C4C 0C00CADE */  jal        func_80032B78
/* 33850 80032C50 AFA5001C */   sw        $a1, 0x1c($sp)
/* 33854 80032C54 00402025 */  or         $a0, $v0, $zero
/* 33858 80032C58 0C00CA5A */  jal        func_80032968
/* 3385C 80032C5C 8FA5001C */   lw        $a1, 0x1c($sp)
/* 33860 80032C60 8FBF0014 */  lw         $ra, 0x14($sp)
/* 33864 80032C64 27BD0018 */  addiu      $sp, $sp, 0x18
/* 33868 80032C68 03E00008 */  jr         $ra
/* 3386C 80032C6C 00000000 */   nop

glabel func_80032C70
/* 33870 80032C70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 33874 80032C74 AFBF0014 */  sw         $ra, 0x14($sp)
/* 33878 80032C78 AFA40018 */  sw         $a0, 0x18($sp)
/* 3387C 80032C7C 0C00CB07 */  jal        __osSpSetPc
/* 33880 80032C80 AFA5001C */   sw        $a1, 0x1c($sp)
/* 33884 80032C84 8FAE001C */  lw         $t6, 0x1c($sp)
/* 33888 80032C88 8FA40018 */  lw         $a0, 0x18($sp)
/* 3388C 80032C8C 0C00CB11 */  jal        func_80032C44
/* 33890 80032C90 004E2821 */   addu      $a1, $v0, $t6
/* 33894 80032C94 8FBF0014 */  lw         $ra, 0x14($sp)
/* 33898 80032C98 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3389C 80032C9C 03E00008 */  jr         $ra
/* 338A0 80032CA0 00000000 */   nop

glabel func_80032CA4
/* 338A4 80032CA4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 338A8 80032CA8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 338AC 80032CAC 0C00CADE */  jal        func_80032B78
/* 338B0 80032CB0 00000000 */   nop
/* 338B4 80032CB4 2401FFFF */  addiu      $at, $zero, -1
/* 338B8 80032CB8 14410003 */  bne        $v0, $at, .L80032CC8
/* 338BC 80032CBC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 338C0 80032CC0 10000002 */  b          .L80032CCC
/* 338C4 80032CC4 00001025 */   or        $v0, $zero, $zero
.L80032CC8:
/* 338C8 80032CC8 24020001 */  addiu      $v0, $zero, 1
.L80032CCC:
/* 338CC 80032CCC 03E00008 */  jr         $ra
/* 338D0 80032CD0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80032CD4
/* 338D4 80032CD4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 338D8 80032CD8 3C02800F */  lui        $v0, %hi(D_800F2544)
/* 338DC 80032CDC 24422544 */  addiu      $v0, $v0, %lo(D_800F2544)
/* 338E0 80032CE0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 338E4 80032CE4 3C06800A */  lui        $a2, %hi(D_8009A6F0)
/* 338E8 80032CE8 24C6A6F0 */  addiu      $a2, $a2, %lo(D_8009A6F0)
/* 338EC 80032CEC 90440000 */  lbu        $a0, ($v0)
/* 338F0 80032CF0 90450003 */  lbu        $a1, 3($v0)
/* 338F4 80032CF4 0C001170 */  jal        func_800045C0
/* 338F8 80032CF8 24070001 */   addiu     $a3, $zero, 1
/* 338FC 80032CFC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 33900 80032D00 27BD0018 */  addiu      $sp, $sp, 0x18
/* 33904 80032D04 03E00008 */  jr         $ra
/* 33908 80032D08 00000000 */   nop

glabel func_80032D0C
/* 3390C 80032D0C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 33910 80032D10 3C02800F */  lui        $v0, %hi(D_800F2544)
/* 33914 80032D14 24422544 */  addiu      $v0, $v0, %lo(D_800F2544)
/* 33918 80032D18 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3391C 80032D1C 3C06800A */  lui        $a2, %hi(D_8009A6F0)
/* 33920 80032D20 24C6A6F0 */  addiu      $a2, $a2, %lo(D_8009A6F0)
/* 33924 80032D24 90440000 */  lbu        $a0, ($v0)
/* 33928 80032D28 90450003 */  lbu        $a1, 3($v0)
/* 3392C 80032D2C 0C001147 */  jal        func_8000451C
/* 33930 80032D30 24070001 */   addiu     $a3, $zero, 1
/* 33934 80032D34 8FBF0014 */  lw         $ra, 0x14($sp)
/* 33938 80032D38 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3393C 80032D3C 03E00008 */  jr         $ra
/* 33940 80032D40 00000000 */   nop

glabel func_80032D44
/* 33944 80032D44 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 33948 80032D48 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3394C 80032D4C AFA40018 */  sw         $a0, 0x18($sp)
/* 33950 80032D50 3C05800F */  lui        $a1, %hi(D_800EF790)
/* 33954 80032D54 8CA5F790 */  lw         $a1, %lo(D_800EF790)($a1)
/* 33958 80032D58 0C00CB11 */  jal        func_80032C44
/* 3395C 80032D5C 24040001 */   addiu     $a0, $zero, 1
/* 33960 80032D60 3C05800F */  lui        $a1, %hi(D_800EF796)
/* 33964 80032D64 90A5F796 */  lbu        $a1, %lo(D_800EF796)($a1)
/* 33968 80032D68 0C00CB11 */  jal        func_80032C44
/* 3396C 80032D6C 24040002 */   addiu     $a0, $zero, 2
/* 33970 80032D70 3C05800F */  lui        $a1, %hi(D_800EF79C)
/* 33974 80032D74 8CA5F79C */  lw         $a1, %lo(D_800EF79C)($a1)
/* 33978 80032D78 0C00CB11 */  jal        func_80032C44
/* 3397C 80032D7C 24040003 */   addiu     $a0, $zero, 3
/* 33980 80032D80 0C00C986 */  jal        func_80032618
/* 33984 80032D84 8FA40018 */   lw        $a0, 0x18($sp)
/* 33988 80032D88 8FAE0018 */  lw         $t6, 0x18($sp)
/* 3398C 80032D8C 3C03800F */  lui        $v1, %hi(D_800F2544)
/* 33990 80032D90 24632544 */  addiu      $v1, $v1, %lo(D_800F2544)
/* 33994 80032D94 0062C021 */  addu       $t8, $v1, $v0
/* 33998 80032D98 3C06800F */  lui        $a2, %hi(D_800F24D0)
/* 3399C 80032D9C 006E7821 */  addu       $t7, $v1, $t6
/* 339A0 80032DA0 91E40000 */  lbu        $a0, ($t7)
/* 339A4 80032DA4 24C624D0 */  addiu      $a2, $a2, %lo(D_800F24D0)
/* 339A8 80032DA8 93050000 */  lbu        $a1, ($t8)
/* 339AC 80032DAC 0C001170 */  jal        func_800045C0
/* 339B0 80032DB0 24070074 */   addiu     $a3, $zero, 0x74
/* 339B4 80032DB4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 339B8 80032DB8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 339BC 80032DBC 03E00008 */  jr         $ra
/* 339C0 80032DC0 00000000 */   nop

glabel func_80032DC4
/* 339C4 80032DC4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 339C8 80032DC8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 339CC 80032DCC 0C00C986 */  jal        func_80032618
/* 339D0 80032DD0 AFA40018 */   sw        $a0, 0x18($sp)
/* 339D4 80032DD4 8FAE0018 */  lw         $t6, 0x18($sp)
/* 339D8 80032DD8 3C03800F */  lui        $v1, %hi(D_800F2544)
/* 339DC 80032DDC 24632544 */  addiu      $v1, $v1, %lo(D_800F2544)
/* 339E0 80032DE0 0062C021 */  addu       $t8, $v1, $v0
/* 339E4 80032DE4 3C06800F */  lui        $a2, %hi(D_800F24D0)
/* 339E8 80032DE8 006E7821 */  addu       $t7, $v1, $t6
/* 339EC 80032DEC 91E40000 */  lbu        $a0, ($t7)
/* 339F0 80032DF0 24C624D0 */  addiu      $a2, $a2, %lo(D_800F24D0)
/* 339F4 80032DF4 93050000 */  lbu        $a1, ($t8)
/* 339F8 80032DF8 0C001147 */  jal        func_8000451C
/* 339FC 80032DFC 24070074 */   addiu     $a3, $zero, 0x74
/* 33A00 80032E00 8FBF0014 */  lw         $ra, 0x14($sp)
/* 33A04 80032E04 27BD0018 */  addiu      $sp, $sp, 0x18
/* 33A08 80032E08 03E00008 */  jr         $ra
/* 33A0C 80032E0C 00000000 */   nop

glabel func_80032E10
/* 33A10 80032E10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 33A14 80032E14 AFBF0014 */  sw         $ra, 0x14($sp)
/* 33A18 80032E18 0C00CB07 */  jal        __osSpSetPc
/* 33A1C 80032E1C 2404000C */   addiu     $a0, $zero, 0xc
/* 33A20 80032E20 0C0449F7 */  jal        func_801127DC
/* 33A24 80032E24 00402025 */   or        $a0, $v0, $zero
/* 33A28 80032E28 0C00CB07 */  jal        __osSpSetPc
/* 33A2C 80032E2C 24040001 */   addiu     $a0, $zero, 1
/* 33A30 80032E30 3C01800F */  lui        $at, %hi(D_800EF790)
/* 33A34 80032E34 AC22F790 */  sw         $v0, %lo(D_800EF790)($at)
/* 33A38 80032E38 0C00CB07 */  jal        __osSpSetPc
/* 33A3C 80032E3C 24040002 */   addiu     $a0, $zero, 2
/* 33A40 80032E40 3C01800F */  lui        $at, %hi(D_800EF796)
/* 33A44 80032E44 A022F796 */  sb         $v0, %lo(D_800EF796)($at)
/* 33A48 80032E48 0C00CB07 */  jal        __osSpSetPc
/* 33A4C 80032E4C 24040003 */   addiu     $a0, $zero, 3
/* 33A50 80032E50 3C01800F */  lui        $at, %hi(D_800EF79C)
/* 33A54 80032E54 AC22F79C */  sw         $v0, %lo(D_800EF79C)($at)
/* 33A58 80032E58 0C00CB07 */  jal        __osSpSetPc
/* 33A5C 80032E5C 24040009 */   addiu     $a0, $zero, 9
/* 33A60 80032E60 240E0002 */  addiu      $t6, $zero, 2
/* 33A64 80032E64 0C007E8A */  jal        func_8001FA28
/* 33A68 80032E68 01C22023 */   subu      $a0, $t6, $v0
/* 33A6C 80032E6C 3C013F80 */  lui        $at, 0x3f80
/* 33A70 80032E70 44816000 */  mtc1       $at, $f12
/* 33A74 80032E74 0C044A7A */  jal        func_801129E8
/* 33A78 80032E78 00000000 */   nop
/* 33A7C 80032E7C 3C013F80 */  lui        $at, 0x3f80
/* 33A80 80032E80 44816000 */  mtc1       $at, $f12
/* 33A84 80032E84 0C044AA6 */  jal        func_80112A98
/* 33A88 80032E88 00000000 */   nop
/* 33A8C 80032E8C 0C00CB07 */  jal        __osSpSetPc
/* 33A90 80032E90 00002025 */   or        $a0, $zero, $zero
/* 33A94 80032E94 0C00AB41 */  jal        func_8002AD04
/* 33A98 80032E98 00402025 */   or        $a0, $v0, $zero
/* 33A9C 80032E9C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 33AA0 80032EA0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 33AA4 80032EA4 03E00008 */  jr         $ra
/* 33AA8 80032EA8 00000000 */   nop

glabel func_80032EAC
/* 33AAC 80032EAC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 33AB0 80032EB0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 33AB4 80032EB4 3C04800F */  lui        $a0, %hi(D_800F24D0)
/* 33AB8 80032EB8 248424D0 */  addiu      $a0, $a0, %lo(D_800F24D0)
/* 33ABC 80032EBC 0C014388 */  jal        _bzero
/* 33AC0 80032EC0 24050074 */   addiu     $a1, $zero, 0x74
/* 33AC4 80032EC4 24040044 */  addiu      $a0, $zero, 0x44
/* 33AC8 80032EC8 0C00CB11 */  jal        func_80032C44
/* 33ACC 80032ECC 24050001 */   addiu     $a1, $zero, 1
/* 33AD0 80032ED0 2404003B */  addiu      $a0, $zero, 0x3b
/* 33AD4 80032ED4 0C00CB11 */  jal        func_80032C44
/* 33AD8 80032ED8 24050001 */   addiu     $a1, $zero, 1
/* 33ADC 80032EDC 24040056 */  addiu      $a0, $zero, 0x56
/* 33AE0 80032EE0 0C00CB11 */  jal        func_80032C44
/* 33AE4 80032EE4 24050001 */   addiu     $a1, $zero, 1
/* 33AE8 80032EE8 0C00CAFD */  jal        func_80032BF4
/* 33AEC 80032EEC 2404000A */   addiu     $a0, $zero, 0xa
/* 33AF0 80032EF0 2404000A */  addiu      $a0, $zero, 0xa
/* 33AF4 80032EF4 0C00CB11 */  jal        func_80032C44
/* 33AF8 80032EF8 00402825 */   or        $a1, $v0, $zero
/* 33AFC 80032EFC 0C00CAFD */  jal        func_80032BF4
/* 33B00 80032F00 2404000B */   addiu     $a0, $zero, 0xb
/* 33B04 80032F04 2404000B */  addiu      $a0, $zero, 0xb
/* 33B08 80032F08 04410003 */  bgez       $v0, .L80032F18
/* 33B0C 80032F0C 00022843 */   sra       $a1, $v0, 1
/* 33B10 80032F10 24410001 */  addiu      $at, $v0, 1
/* 33B14 80032F14 00012843 */  sra        $a1, $at, 1
.L80032F18:
/* 33B18 80032F18 0C00CB11 */  jal        func_80032C44
/* 33B1C 80032F1C 00000000 */   nop
/* 33B20 80032F20 8FBF0014 */  lw         $ra, 0x14($sp)
/* 33B24 80032F24 27BD0018 */  addiu      $sp, $sp, 0x18
/* 33B28 80032F28 03E00008 */  jr         $ra
/* 33B2C 80032F2C 00000000 */   nop

glabel func_80032F30
/* 33B30 80032F30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 33B34 80032F34 AFBF0014 */  sw         $ra, 0x14($sp)
/* 33B38 80032F38 3C04800F */  lui        $a0, %hi(D_800F24D0)
/* 33B3C 80032F3C 248424D0 */  addiu      $a0, $a0, %lo(D_800F24D0)
/* 33B40 80032F40 0C014388 */  jal        _bzero
/* 33B44 80032F44 24050074 */   addiu     $a1, $zero, 0x74
/* 33B48 80032F48 3C04800F */  lui        $a0, %hi(D_800F1D30)
/* 33B4C 80032F4C 24841D30 */  addiu      $a0, $a0, %lo(D_800F1D30)
/* 33B50 80032F50 0C014388 */  jal        _bzero
/* 33B54 80032F54 240507A0 */   addiu     $a1, $zero, 0x7a0
/* 33B58 80032F58 0C00C99B */  jal        func_8003266C
/* 33B5C 80032F5C 00000000 */   nop
/* 33B60 80032F60 0C00CAF1 */  jal        func_80032BC4
/* 33B64 80032F64 00000000 */   nop
/* 33B68 80032F68 0C00C99F */  jal        func_8003267C
/* 33B6C 80032F6C 00000000 */   nop
/* 33B70 80032F70 0C00C99D */  jal        func_80032674
/* 33B74 80032F74 00000000 */   nop
/* 33B78 80032F78 0C00CBAB */  jal        func_80032EAC
/* 33B7C 80032F7C 00000000 */   nop
/* 33B80 80032F80 0C00C954 */  jal        func_80032550
/* 33B84 80032F84 00000000 */   nop
/* 33B88 80032F88 8FBF0014 */  lw         $ra, 0x14($sp)
/* 33B8C 80032F8C 3C01800A */  lui        $at, %hi(D_8009A6F0)
/* 33B90 80032F90 A020A6F0 */  sb         $zero, %lo(D_8009A6F0)($at)
/* 33B94 80032F94 03E00008 */  jr         $ra
/* 33B98 80032F98 27BD0018 */   addiu     $sp, $sp, 0x18
/* 33B9C 80032F9C 00000000 */  nop
