.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80004AD0
/* 56D0 80004AD0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 56D4 80004AD4 AFB20028 */  sw         $s2, 0x28($sp)
/* 56D8 80004AD8 AFB10024 */  sw         $s1, 0x24($sp)
/* 56DC 80004ADC AFB00020 */  sw         $s0, 0x20($sp)
/* 56E0 80004AE0 3C11800B */  lui        $s1, %hi(D_800AD5A0)
/* 56E4 80004AE4 3C12800B */  lui        $s2, %hi(D_800AD7A0)
/* 56E8 80004AE8 AFBF002C */  sw         $ra, 0x2c($sp)
/* 56EC 80004AEC 2652D7A0 */  addiu      $s2, $s2, %lo(D_800AD7A0)
/* 56F0 80004AF0 2631D5A0 */  addiu      $s1, $s1, %lo(D_800AD5A0)
/* 56F4 80004AF4 24100010 */  addiu      $s0, $zero, 0x10
.L80004AF8:
/* 56F8 80004AF8 0C01482C */  jal        osGetTime
/* 56FC 80004AFC 00000000 */   nop
/* 5700 80004B00 00002825 */  or         $a1, $zero, $zero
/* 5704 80004B04 02202025 */  or         $a0, $s1, $zero
.L80004B08:
/* 5708 80004B08 24A50004 */  addiu      $a1, $a1, 4
/* 570C 80004B0C AC820008 */  sw         $v0, 8($a0)
/* 5710 80004B10 AC83000C */  sw         $v1, 0xc($a0)
/* 5714 80004B14 AC820010 */  sw         $v0, 0x10($a0)
/* 5718 80004B18 AC830014 */  sw         $v1, 0x14($a0)
/* 571C 80004B1C AC820018 */  sw         $v0, 0x18($a0)
/* 5720 80004B20 AC83001C */  sw         $v1, 0x1c($a0)
/* 5724 80004B24 24840020 */  addiu      $a0, $a0, 0x20
/* 5728 80004B28 AC82FFE0 */  sw         $v0, -0x20($a0)
/* 572C 80004B2C 14B0FFF6 */  bne        $a1, $s0, .L80004B08
/* 5730 80004B30 AC83FFE4 */   sw        $v1, -0x1c($a0)
/* 5734 80004B34 26310080 */  addiu      $s1, $s1, 0x80
/* 5738 80004B38 1632FFEF */  bne        $s1, $s2, .L80004AF8
/* 573C 80004B3C 00000000 */   nop
/* 5740 80004B40 3C04800B */  lui        $a0, %hi(D_800AD7A0)
/* 5744 80004B44 2484D7A0 */  addiu      $a0, $a0, %lo(D_800AD7A0)
/* 5748 80004B48 0C014388 */  jal        _bzero
/* 574C 80004B4C 24050200 */   addiu     $a1, $zero, 0x200
/* 5750 80004B50 3C04800B */  lui        $a0, %hi(D_800AD9A0)
/* 5754 80004B54 2484D9A0 */  addiu      $a0, $a0, %lo(D_800AD9A0)
/* 5758 80004B58 0C014388 */  jal        _bzero
/* 575C 80004B5C 24050010 */   addiu     $a1, $zero, 0x10
/* 5760 80004B60 240E001E */  addiu      $t6, $zero, 0x1e
/* 5764 80004B64 AFAE0010 */  sw         $t6, 0x10($sp)
/* 5768 80004B68 00002025 */  or         $a0, $zero, $zero
/* 576C 80004B6C 2405001E */  addiu      $a1, $zero, 0x1e
/* 5770 80004B70 2406001E */  addiu      $a2, $zero, 0x1e
/* 5774 80004B74 0C0013C9 */  jal        func_80004F24
/* 5778 80004B78 2407001E */   addiu     $a3, $zero, 0x1e
/* 577C 80004B7C 0C0013C6 */  jal        osViExtendVStart
/* 5780 80004B80 24040F00 */   addiu     $a0, $zero, 0xf00
/* 5784 80004B84 3C01800A */  lui        $at, %hi(D_800A01F4)
/* 5788 80004B88 C42C01F4 */  lwc1       $f12, %lo(D_800A01F4)($at)
/* 578C 80004B8C 3C01800A */  lui        $at, %hi(D_800A01F8)
/* 5790 80004B90 0C0013D9 */  jal        func_80004F64
/* 5794 80004B94 C42E01F8 */   lwc1      $f14, %lo(D_800A01F8)($at)
/* 5798 80004B98 3C04800B */  lui        $a0, %hi(D_800AD540)
/* 579C 80004B9C 2484D540 */  addiu      $a0, $a0, %lo(D_800AD540)
/* 57A0 80004BA0 0C014388 */  jal        _bzero
/* 57A4 80004BA4 24050060 */   addiu     $a1, $zero, 0x60
/* 57A8 80004BA8 8FBF002C */  lw         $ra, 0x2c($sp)
/* 57AC 80004BAC 8FB00020 */  lw         $s0, 0x20($sp)
/* 57B0 80004BB0 8FB10024 */  lw         $s1, 0x24($sp)
/* 57B4 80004BB4 8FB20028 */  lw         $s2, 0x28($sp)
/* 57B8 80004BB8 03E00008 */  jr         $ra
/* 57BC 80004BBC 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80004BC0
/* 57C0 80004BC0 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 57C4 80004BC4 AFBF002C */  sw         $ra, 0x2c($sp)
/* 57C8 80004BC8 AFB50028 */  sw         $s5, 0x28($sp)
/* 57CC 80004BCC AFB40024 */  sw         $s4, 0x24($sp)
/* 57D0 80004BD0 AFB30020 */  sw         $s3, 0x20($sp)
/* 57D4 80004BD4 AFB2001C */  sw         $s2, 0x1c($sp)
/* 57D8 80004BD8 AFB10018 */  sw         $s1, 0x18($sp)
/* 57DC 80004BDC 0C01482C */  jal        osGetTime
/* 57E0 80004BE0 AFB00014 */   sw        $s0, 0x14($sp)
/* 57E4 80004BE4 3C14800B */  lui        $s4, 0x800b
/* 57E8 80004BE8 3C13800B */  lui        $s3, 0x800b
/* 57EC 80004BEC 3C12800B */  lui        $s2, %hi(D_800AD5A0)
/* 57F0 80004BF0 3C11800B */  lui        $s1, %hi(D_800AD7A0)
/* 57F4 80004BF4 AFA20068 */  sw         $v0, 0x68($sp)
/* 57F8 80004BF8 AFA3006C */  sw         $v1, 0x6c($sp)
/* 57FC 80004BFC 2631D7A0 */  addiu      $s1, $s1, %lo(D_800AD7A0)
/* 5800 80004C00 2652D5A0 */  addiu      $s2, $s2, %lo(D_800AD5A0)
/* 5804 80004C04 2673D9B8 */  addiu      $s3, $s3, -0x2648
/* 5808 80004C08 2694D9C0 */  addiu      $s4, $s4, -0x2640
/* 580C 80004C0C 00008025 */  or         $s0, $zero, $zero
/* 5810 80004C10 24150010 */  addiu      $s5, $zero, 0x10
/* 5814 80004C14 27A40058 */  addiu      $a0, $sp, 0x58
.L80004C18:
/* 5818 80004C18 0C000EB0 */  jal        func_80003AC0
/* 581C 80004C1C 02002825 */   or        $a1, $s0, $zero
/* 5820 80004C20 104000B0 */  beqz       $v0, .L80004EE4
/* 5824 80004C24 00107080 */   sll       $t6, $s0, 2
/* 5828 80004C28 3C0A800B */  lui        $t2, %hi(D_800AD9C8)
/* 582C 80004C2C 8D4AD9C8 */  lw         $t2, %lo(D_800AD9C8)($t2)
/* 5830 80004C30 01D07023 */  subu       $t6, $t6, $s0
/* 5834 80004C34 3C0F800B */  lui        $t7, %hi(D_800AD540)
/* 5838 80004C38 3C19800B */  lui        $t9, %hi(D_800AD9A0)
/* 583C 80004C3C 2739D9A0 */  addiu      $t9, $t9, %lo(D_800AD9A0)
/* 5840 80004C40 25EFD540 */  addiu      $t7, $t7, %lo(D_800AD540)
/* 5844 80004C44 000E70C0 */  sll        $t6, $t6, 3
/* 5848 80004C48 0010C080 */  sll        $t8, $s0, 2
/* 584C 80004C4C 03194821 */  addu       $t1, $t8, $t9
/* 5850 80004C50 11400021 */  beqz       $t2, .L80004CD8
/* 5854 80004C54 01CF4021 */   addu      $t0, $t6, $t7
/* 5858 80004C58 3C0B800B */  lui        $t3, %hi(D_800AD9D4)
/* 585C 80004C5C 83A2005A */  lb         $v0, 0x5a($sp)
/* 5860 80004C60 8D6BD9D4 */  lw         $t3, %lo(D_800AD9D4)($t3)
/* 5864 80004C64 97AC0058 */  lhu        $t4, 0x58($sp)
/* 5868 80004C68 3C0E800B */  lui        $t6, 0x800b
/* 586C 80004C6C 004B082A */  slt        $at, $v0, $t3
/* 5870 80004C70 10200004 */  beqz       $at, .L80004C84
/* 5874 80004C74 3C19800B */   lui       $t9, 0x800b
/* 5878 80004C78 358D0240 */  ori        $t5, $t4, 0x240
/* 587C 80004C7C 10000007 */  b          .L80004C9C
/* 5880 80004C80 A7AD0058 */   sh        $t5, 0x58($sp)
.L80004C84:
/* 5884 80004C84 8DCED9D8 */  lw         $t6, -0x2628($t6)
/* 5888 80004C88 97AF0058 */  lhu        $t7, 0x58($sp)
/* 588C 80004C8C 01C2082A */  slt        $at, $t6, $v0
/* 5890 80004C90 10200002 */  beqz       $at, .L80004C9C
/* 5894 80004C94 35F80140 */   ori       $t8, $t7, 0x140
/* 5898 80004C98 A7B80058 */  sh         $t8, 0x58($sp)
.L80004C9C:
/* 589C 80004C9C 83A2005B */  lb         $v0, 0x5b($sp)
/* 58A0 80004CA0 8F39D9D0 */  lw         $t9, -0x2630($t9)
/* 58A4 80004CA4 97AA0058 */  lhu        $t2, 0x58($sp)
/* 58A8 80004CA8 3C0C800B */  lui        $t4, 0x800b
/* 58AC 80004CAC 0059082A */  slt        $at, $v0, $t9
/* 58B0 80004CB0 10200003 */  beqz       $at, .L80004CC0
/* 58B4 80004CB4 354B0480 */   ori       $t3, $t2, 0x480
/* 58B8 80004CB8 10000007 */  b          .L80004CD8
/* 58BC 80004CBC A7AB0058 */   sh        $t3, 0x58($sp)
.L80004CC0:
/* 58C0 80004CC0 8D8CD9CC */  lw         $t4, -0x2634($t4)
/* 58C4 80004CC4 97AD0058 */  lhu        $t5, 0x58($sp)
/* 58C8 80004CC8 0182082A */  slt        $at, $t4, $v0
/* 58CC 80004CCC 10200002 */  beqz       $at, .L80004CD8
/* 58D0 80004CD0 35AE0880 */   ori       $t6, $t5, 0x880
/* 58D4 80004CD4 A7AE0058 */  sh         $t6, 0x58($sp)
.L80004CD8:
/* 58D8 80004CD8 97B80058 */  lhu        $t8, 0x58($sp)
/* 58DC 80004CDC 8D2F0000 */  lw         $t7, ($t1)
/* 58E0 80004CE0 3C07800B */  lui        $a3, 0x800b
/* 58E4 80004CE4 AD180000 */  sw         $t8, ($t0)
/* 58E8 80004CE8 97B90058 */  lhu        $t9, 0x58($sp)
/* 58EC 80004CEC 01F81026 */  xor        $v0, $t7, $t8
/* 58F0 80004CF0 00002025 */  or         $a0, $zero, $zero
/* 58F4 80004CF4 03225024 */  and        $t2, $t9, $v0
/* 58F8 80004CF8 AD0A0004 */  sw         $t2, 4($t0)
/* 58FC 80004CFC 8D2B0000 */  lw         $t3, ($t1)
/* 5900 80004D00 24030001 */  addiu      $v1, $zero, 1
/* 5904 80004D04 01626024 */  and        $t4, $t3, $v0
/* 5908 80004D08 AD0C0008 */  sw         $t4, 8($t0)
/* 590C 80004D0C 83AD005A */  lb         $t5, 0x5a($sp)
/* 5910 80004D10 AD0D0010 */  sw         $t5, 0x10($t0)
/* 5914 80004D14 83AE005B */  lb         $t6, 0x5b($sp)
/* 5918 80004D18 AD0E0014 */  sw         $t6, 0x14($t0)
/* 591C 80004D1C 97AF0058 */  lhu        $t7, 0x58($sp)
/* 5920 80004D20 97A60058 */  lhu        $a2, 0x58($sp)
/* 5924 80004D24 AD2F0000 */  sw         $t7, ($t1)
/* 5928 80004D28 8D050004 */  lw         $a1, 4($t0)
/* 592C 80004D2C 8CE7D9B0 */  lw         $a3, -0x2650($a3)
.L80004D30:
/* 5930 80004D30 8D180004 */  lw         $t8, 4($t0)
/* 5934 80004D34 000410C0 */  sll        $v0, $a0, 3
/* 5938 80004D38 8FAA0068 */  lw         $t2, 0x68($sp)
/* 593C 80004D3C 0303C824 */  and        $t9, $t8, $v1
/* 5940 80004D40 13200013 */  beqz       $t9, .L80004D90
/* 5944 80004D44 8FAB006C */   lw        $t3, 0x6c($sp)
/* 5948 80004D48 001061C0 */  sll        $t4, $s0, 7
/* 594C 80004D4C 024C6821 */  addu       $t5, $s2, $t4
/* 5950 80004D50 01A27021 */  addu       $t6, $t5, $v0
/* 5954 80004D54 ADCA0000 */  sw         $t2, ($t6)
/* 5958 80004D58 ADCB0004 */  sw         $t3, 4($t6)
/* 595C 80004D5C 8E6D0004 */  lw         $t5, 4($s3)
/* 5960 80004D60 8FB9006C */  lw         $t9, 0x6c($sp)
/* 5964 80004D64 8FB80068 */  lw         $t8, 0x68($sp)
/* 5968 80004D68 8E6C0000 */  lw         $t4, ($s3)
/* 596C 80004D6C 032D5821 */  addu       $t3, $t9, $t5
/* 5970 80004D70 001079C0 */  sll        $t7, $s0, 7
/* 5974 80004D74 016D082B */  sltu       $at, $t3, $t5
/* 5978 80004D78 022F7021 */  addu       $t6, $s1, $t7
/* 597C 80004D7C 00385021 */  addu       $t2, $at, $t8
/* 5980 80004D80 01C2C021 */  addu       $t8, $t6, $v0
/* 5984 80004D84 014C5021 */  addu       $t2, $t2, $t4
/* 5988 80004D88 AF0A0000 */  sw         $t2, ($t8)
/* 598C 80004D8C AF0B0004 */  sw         $t3, 4($t8)
.L80004D90:
/* 5990 80004D90 00C3C824 */  and        $t9, $a2, $v1
/* 5994 80004D94 03276024 */  and        $t4, $t9, $a3
/* 5998 80004D98 11800018 */  beqz       $t4, .L80004DFC
/* 599C 80004D9C 001069C0 */   sll       $t5, $s0, 7
/* 59A0 80004DA0 022D7821 */  addu       $t7, $s1, $t5
/* 59A4 80004DA4 000470C0 */  sll        $t6, $a0, 3
/* 59A8 80004DA8 01EE1021 */  addu       $v0, $t7, $t6
/* 59AC 80004DAC 8C580000 */  lw         $t8, ($v0)
/* 59B0 80004DB0 8FAA0068 */  lw         $t2, 0x68($sp)
/* 59B4 80004DB4 8C590004 */  lw         $t9, 4($v0)
/* 59B8 80004DB8 8FAB006C */  lw         $t3, 0x6c($sp)
/* 59BC 80004DBC 0158082B */  sltu       $at, $t2, $t8
/* 59C0 80004DC0 1420000E */  bnez       $at, .L80004DFC
/* 59C4 80004DC4 030A082B */   sltu      $at, $t8, $t2
/* 59C8 80004DC8 14200003 */  bnez       $at, .L80004DD8
/* 59CC 80004DCC 0179082B */   sltu      $at, $t3, $t9
/* 59D0 80004DD0 5420000B */  bnel       $at, $zero, .L80004E00
/* 59D4 80004DD4 8D190004 */   lw        $t9, 4($t0)
.L80004DD8:
/* 59D8 80004DD8 8E8D0004 */  lw         $t5, 4($s4)
/* 59DC 80004DDC 8E8C0000 */  lw         $t4, ($s4)
/* 59E0 80004DE0 00A32825 */  or         $a1, $a1, $v1
/* 59E4 80004DE4 016D7821 */  addu       $t7, $t3, $t5
/* 59E8 80004DE8 01ED082B */  sltu       $at, $t7, $t5
/* 59EC 80004DEC 002A7021 */  addu       $t6, $at, $t2
/* 59F0 80004DF0 01CC7021 */  addu       $t6, $t6, $t4
/* 59F4 80004DF4 AC4E0000 */  sw         $t6, ($v0)
/* 59F8 80004DF8 AC4F0004 */  sw         $t7, 4($v0)
.L80004DFC:
/* 59FC 80004DFC 8D190004 */  lw         $t9, 4($t0)
.L80004E00:
/* 5A00 80004E00 0003C040 */  sll        $t8, $v1, 1
/* 5A04 80004E04 03001825 */  or         $v1, $t8, $zero
/* 5A08 80004E08 03385024 */  and        $t2, $t9, $t8
/* 5A0C 80004E0C 11400015 */  beqz       $t2, .L80004E64
/* 5A10 80004E10 000410C0 */   sll       $v0, $a0, 3
/* 5A14 80004E14 001059C0 */  sll        $t3, $s0, 7
/* 5A18 80004E18 8FAC0068 */  lw         $t4, 0x68($sp)
/* 5A1C 80004E1C 8FAD006C */  lw         $t5, 0x6c($sp)
/* 5A20 80004E20 024B7021 */  addu       $t6, $s2, $t3
/* 5A24 80004E24 01C27821 */  addu       $t7, $t6, $v0
/* 5A28 80004E28 ADEC0008 */  sw         $t4, 8($t7)
/* 5A2C 80004E2C ADED000C */  sw         $t5, 0xc($t7)
/* 5A30 80004E30 8E6B0004 */  lw         $t3, 4($s3)
/* 5A34 80004E34 8FB9006C */  lw         $t9, 0x6c($sp)
/* 5A38 80004E38 8FB80068 */  lw         $t8, 0x68($sp)
/* 5A3C 80004E3C 8E6A0000 */  lw         $t2, ($s3)
/* 5A40 80004E40 032B7821 */  addu       $t7, $t9, $t3
/* 5A44 80004E44 001061C0 */  sll        $t4, $s0, 7
/* 5A48 80004E48 01EB082B */  sltu       $at, $t7, $t3
/* 5A4C 80004E4C 022C6821 */  addu       $t5, $s1, $t4
/* 5A50 80004E50 00387021 */  addu       $t6, $at, $t8
/* 5A54 80004E54 01A2C021 */  addu       $t8, $t5, $v0
/* 5A58 80004E58 01CA7021 */  addu       $t6, $t6, $t2
/* 5A5C 80004E5C AF0E0008 */  sw         $t6, 8($t8)
/* 5A60 80004E60 AF0F000C */  sw         $t7, 0xc($t8)
.L80004E64:
/* 5A64 80004E64 00C3C824 */  and        $t9, $a2, $v1
/* 5A68 80004E68 03275024 */  and        $t2, $t9, $a3
/* 5A6C 80004E6C 11400018 */  beqz       $t2, .L80004ED0
/* 5A70 80004E70 001059C0 */   sll       $t3, $s0, 7
/* 5A74 80004E74 022B6021 */  addu       $t4, $s1, $t3
/* 5A78 80004E78 000468C0 */  sll        $t5, $a0, 3
/* 5A7C 80004E7C 018D1021 */  addu       $v0, $t4, $t5
/* 5A80 80004E80 8C580008 */  lw         $t8, 8($v0)
/* 5A84 80004E84 8FAE0068 */  lw         $t6, 0x68($sp)
/* 5A88 80004E88 8C59000C */  lw         $t9, 0xc($v0)
/* 5A8C 80004E8C 8FAF006C */  lw         $t7, 0x6c($sp)
/* 5A90 80004E90 01D8082B */  sltu       $at, $t6, $t8
/* 5A94 80004E94 1420000E */  bnez       $at, .L80004ED0
/* 5A98 80004E98 030E082B */   sltu      $at, $t8, $t6
/* 5A9C 80004E9C 14200003 */  bnez       $at, .L80004EAC
/* 5AA0 80004EA0 01F9082B */   sltu      $at, $t7, $t9
/* 5AA4 80004EA4 5420000B */  bnel       $at, $zero, .L80004ED4
/* 5AA8 80004EA8 24840002 */   addiu     $a0, $a0, 2
.L80004EAC:
/* 5AAC 80004EAC 8E8B0004 */  lw         $t3, 4($s4)
/* 5AB0 80004EB0 8E8A0000 */  lw         $t2, ($s4)
/* 5AB4 80004EB4 00A32825 */  or         $a1, $a1, $v1
/* 5AB8 80004EB8 01EB6821 */  addu       $t5, $t7, $t3
/* 5ABC 80004EBC 01AB082B */  sltu       $at, $t5, $t3
/* 5AC0 80004EC0 002E6021 */  addu       $t4, $at, $t6
/* 5AC4 80004EC4 018A6021 */  addu       $t4, $t4, $t2
/* 5AC8 80004EC8 AC4C0008 */  sw         $t4, 8($v0)
/* 5ACC 80004ECC AC4D000C */  sw         $t5, 0xc($v0)
.L80004ED0:
/* 5AD0 80004ED0 24840002 */  addiu      $a0, $a0, 2
.L80004ED4:
/* 5AD4 80004ED4 0003C040 */  sll        $t8, $v1, 1
/* 5AD8 80004ED8 1495FF95 */  bne        $a0, $s5, .L80004D30
/* 5ADC 80004EDC 03001825 */   or        $v1, $t8, $zero
/* 5AE0 80004EE0 AD05000C */  sw         $a1, 0xc($t0)
.L80004EE4:
/* 5AE4 80004EE4 26100001 */  addiu      $s0, $s0, 1
/* 5AE8 80004EE8 24010004 */  addiu      $at, $zero, 4
/* 5AEC 80004EEC 5601FF4A */  bnel       $s0, $at, .L80004C18
/* 5AF0 80004EF0 27A40058 */   addiu     $a0, $sp, 0x58
/* 5AF4 80004EF4 8FBF002C */  lw         $ra, 0x2c($sp)
/* 5AF8 80004EF8 8FB00014 */  lw         $s0, 0x14($sp)
/* 5AFC 80004EFC 8FB10018 */  lw         $s1, 0x18($sp)
/* 5B00 80004F00 8FB2001C */  lw         $s2, 0x1c($sp)
/* 5B04 80004F04 8FB30020 */  lw         $s3, 0x20($sp)
/* 5B08 80004F08 8FB40024 */  lw         $s4, 0x24($sp)
/* 5B0C 80004F0C 8FB50028 */  lw         $s5, 0x28($sp)
/* 5B10 80004F10 03E00008 */  jr         $ra
/* 5B14 80004F14 27BD0070 */   addiu     $sp, $sp, 0x70

glabel osViExtendVStart
/* 5B18 80004F18 3C01800B */  lui        $at, %hi(__additional_scanline)
/* 5B1C 80004F1C 03E00008 */  jr         $ra
/* 5B20 80004F20 AC24D9B0 */   sw        $a0, %lo(__additional_scanline)($at)

glabel func_80004F24
/* 5B24 80004F24 3C01800B */  lui        $at, %hi(D_800AD9C8)
/* 5B28 80004F28 1080000C */  beqz       $a0, .L80004F5C
/* 5B2C 80004F2C AC24D9C8 */   sw        $a0, %lo(D_800AD9C8)($at)
/* 5B30 80004F30 3C01800B */  lui        $at, %hi(D_800AD9CC)
/* 5B34 80004F34 AC25D9CC */  sw         $a1, %lo(D_800AD9CC)($at)
/* 5B38 80004F38 3C01800B */  lui        $at, %hi(D_800AD9D0)
/* 5B3C 80004F3C 00067023 */  negu       $t6, $a2
/* 5B40 80004F40 AC2ED9D0 */  sw         $t6, %lo(D_800AD9D0)($at)
/* 5B44 80004F44 8FB80010 */  lw         $t8, 0x10($sp)
/* 5B48 80004F48 3C01800B */  lui        $at, %hi(D_800AD9D4)
/* 5B4C 80004F4C 00077823 */  negu       $t7, $a3
/* 5B50 80004F50 AC2FD9D4 */  sw         $t7, %lo(D_800AD9D4)($at)
/* 5B54 80004F54 3C01800B */  lui        $at, %hi(D_800AD9D8)
/* 5B58 80004F58 AC38D9D8 */  sw         $t8, %lo(D_800AD9D8)($at)
.L80004F5C:
/* 5B5C 80004F5C 03E00008 */  jr         $ra
/* 5B60 80004F60 00000000 */   nop

glabel func_80004F64
/* 5B64 80004F64 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5B68 80004F68 E7AC0018 */  swc1       $f12, 0x18($sp)
/* 5B6C 80004F6C 3C01800A */  lui        $at, %hi(D_800A01FC)
/* 5B70 80004F70 C42601FC */  lwc1       $f6, %lo(D_800A01FC)($at)
/* 5B74 80004F74 C7A40018 */  lwc1       $f4, 0x18($sp)
/* 5B78 80004F78 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5B7C 80004F7C E7AE001C */  swc1       $f14, 0x1c($sp)
/* 5B80 80004F80 46062302 */  mul.s      $f12, $f4, $f6
/* 5B84 80004F84 0C014886 */  jal        __f_to_ull
/* 5B88 80004F88 00000000 */   nop
/* 5B8C 80004F8C 00402025 */  or         $a0, $v0, $zero
/* 5B90 80004F90 00602825 */  or         $a1, $v1, $zero
/* 5B94 80004F94 24060000 */  addiu      $a2, $zero, 0
/* 5B98 80004F98 0C01492E */  jal        __ll_mul
/* 5B9C 80004F9C 24070BB8 */   addiu     $a3, $zero, 0xbb8
/* 5BA0 80004FA0 00402025 */  or         $a0, $v0, $zero
/* 5BA4 80004FA4 00602825 */  or         $a1, $v1, $zero
/* 5BA8 80004FA8 24060000 */  addiu      $a2, $zero, 0
/* 5BAC 80004FAC 0C0148EE */  jal        __ull_div
/* 5BB0 80004FB0 24070040 */   addiu     $a3, $zero, 0x40
/* 5BB4 80004FB4 3C01800B */  lui        $at, %hi(D_800AD9B8)
/* 5BB8 80004FB8 AC22D9B8 */  sw         $v0, %lo(D_800AD9B8)($at)
/* 5BBC 80004FBC AC23D9BC */  sw         $v1, -0x2644($at)
/* 5BC0 80004FC0 3C01800A */  lui        $at, %hi(D_800A0200)
/* 5BC4 80004FC4 C42A0200 */  lwc1       $f10, %lo(D_800A0200)($at)
/* 5BC8 80004FC8 C7A8001C */  lwc1       $f8, 0x1c($sp)
/* 5BCC 80004FCC 460A4302 */  mul.s      $f12, $f8, $f10
/* 5BD0 80004FD0 0C014886 */  jal        __f_to_ull
/* 5BD4 80004FD4 00000000 */   nop
/* 5BD8 80004FD8 00402025 */  or         $a0, $v0, $zero
/* 5BDC 80004FDC 00602825 */  or         $a1, $v1, $zero
/* 5BE0 80004FE0 24060000 */  addiu      $a2, $zero, 0
/* 5BE4 80004FE4 0C01492E */  jal        __ll_mul
/* 5BE8 80004FE8 24070BB8 */   addiu     $a3, $zero, 0xbb8
/* 5BEC 80004FEC 00402025 */  or         $a0, $v0, $zero
/* 5BF0 80004FF0 00602825 */  or         $a1, $v1, $zero
/* 5BF4 80004FF4 24060000 */  addiu      $a2, $zero, 0
/* 5BF8 80004FF8 0C0148EE */  jal        __ull_div
/* 5BFC 80004FFC 24070040 */   addiu     $a3, $zero, 0x40
/* 5C00 80005000 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5C04 80005004 3C01800B */  lui        $at, %hi(D_800AD9C0)
/* 5C08 80005008 AC22D9C0 */  sw         $v0, %lo(D_800AD9C0)($at)
/* 5C0C 8000500C AC23D9C4 */  sw         $v1, -0x263c($at)
/* 5C10 80005010 03E00008 */  jr         $ra
/* 5C14 80005014 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80005018
/* 5C18 80005018 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 5C1C 8000501C AFBF0014 */  sw         $ra, 0x14($sp)
/* 5C20 80005020 AFA50054 */  sw         $a1, 0x54($sp)
/* 5C24 80005024 0C01482C */  jal        osGetTime
/* 5C28 80005028 AFA40050 */   sw        $a0, 0x50($sp)
/* 5C2C 8000502C 8FA70050 */  lw         $a3, 0x50($sp)
/* 5C30 80005030 AFA20038 */  sw         $v0, 0x38($sp)
/* 5C34 80005034 AFA20040 */  sw         $v0, 0x40($sp)
/* 5C38 80005038 00077080 */  sll        $t6, $a3, 2
/* 5C3C 8000503C 01C77023 */  subu       $t6, $t6, $a3
/* 5C40 80005040 000E70C0 */  sll        $t6, $t6, 3
/* 5C44 80005044 3C06800B */  lui        $a2, 0x800b
/* 5C48 80005048 AFA3003C */  sw         $v1, 0x3c($sp)
/* 5C4C 8000504C AFA30044 */  sw         $v1, 0x44($sp)
/* 5C50 80005050 00CE3021 */  addu       $a2, $a2, $t6
/* 5C54 80005054 3C02800B */  lui        $v0, %hi(D_800AD5A0)
/* 5C58 80005058 2442D5A0 */  addiu      $v0, $v0, %lo(D_800AD5A0)
/* 5C5C 8000505C 8CC6D540 */  lw         $a2, -0x2ac0($a2)
/* 5C60 80005060 24030010 */  addiu      $v1, $zero, 0x10
/* 5C64 80005064 00002025 */  or         $a0, $zero, $zero
/* 5C68 80005068 24050001 */  addiu      $a1, $zero, 1
.L8000506C:
/* 5C6C 8000506C 00C57824 */  and        $t7, $a2, $a1
/* 5C70 80005070 11E00015 */  beqz       $t7, .L800050C8
/* 5C74 80005074 0007C1C0 */   sll       $t8, $a3, 7
/* 5C78 80005078 0058C821 */  addu       $t9, $v0, $t8
/* 5C7C 8000507C 000440C0 */  sll        $t0, $a0, 3
/* 5C80 80005080 03284821 */  addu       $t1, $t9, $t0
/* 5C84 80005084 8D2A0000 */  lw         $t2, ($t1)
/* 5C88 80005088 8FAE0040 */  lw         $t6, 0x40($sp)
/* 5C8C 8000508C 8D2B0004 */  lw         $t3, 4($t1)
/* 5C90 80005090 8FAF0044 */  lw         $t7, 0x44($sp)
/* 5C94 80005094 01CA082B */  sltu       $at, $t6, $t2
/* 5C98 80005098 AFAA0018 */  sw         $t2, 0x18($sp)
/* 5C9C 8000509C 01406025 */  or         $t4, $t2, $zero
/* 5CA0 800050A0 AFAB001C */  sw         $t3, 0x1c($sp)
/* 5CA4 800050A4 14200008 */  bnez       $at, .L800050C8
/* 5CA8 800050A8 01606825 */   or        $t5, $t3, $zero
/* 5CAC 800050AC 014E082B */  sltu       $at, $t2, $t6
/* 5CB0 800050B0 14200003 */  bnez       $at, .L800050C0
/* 5CB4 800050B4 016F082B */   sltu      $at, $t3, $t7
/* 5CB8 800050B8 50200004 */  beql       $at, $zero, .L800050CC
/* 5CBC 800050BC 24840001 */   addiu     $a0, $a0, 1
.L800050C0:
/* 5CC0 800050C0 AFAC0040 */  sw         $t4, 0x40($sp)
/* 5CC4 800050C4 AFAD0044 */  sw         $t5, 0x44($sp)
.L800050C8:
/* 5CC8 800050C8 24840001 */  addiu      $a0, $a0, 1
.L800050CC:
/* 5CCC 800050CC 0005C040 */  sll        $t8, $a1, 1
/* 5CD0 800050D0 1483FFE6 */  bne        $a0, $v1, .L8000506C
/* 5CD4 800050D4 03002825 */   or        $a1, $t8, $zero
/* 5CD8 800050D8 8FA80038 */  lw         $t0, 0x38($sp)
/* 5CDC 800050DC 8FA9003C */  lw         $t1, 0x3c($sp)
/* 5CE0 800050E0 8FAA0040 */  lw         $t2, 0x40($sp)
/* 5CE4 800050E4 8FAB0044 */  lw         $t3, 0x44($sp)
/* 5CE8 800050E8 24060000 */  addiu      $a2, $zero, 0
/* 5CEC 800050EC 010A2023 */  subu       $a0, $t0, $t2
/* 5CF0 800050F0 012B082B */  sltu       $at, $t1, $t3
/* 5CF4 800050F4 00812023 */  subu       $a0, $a0, $at
/* 5CF8 800050F8 24070040 */  addiu      $a3, $zero, 0x40
/* 5CFC 800050FC 0C01492E */  jal        __ll_mul
/* 5D00 80005100 012B2823 */   subu      $a1, $t1, $t3
/* 5D04 80005104 00402025 */  or         $a0, $v0, $zero
/* 5D08 80005108 00602825 */  or         $a1, $v1, $zero
/* 5D0C 8000510C 24060000 */  addiu      $a2, $zero, 0
/* 5D10 80005110 0C0148EE */  jal        __ull_div
/* 5D14 80005114 24070BB8 */   addiu     $a3, $zero, 0xbb8
/* 5D18 80005118 00402025 */  or         $a0, $v0, $zero
/* 5D1C 8000511C 0C0148C6 */  jal        __ull_to_f
/* 5D20 80005120 00602825 */   or        $a1, $v1, $zero
/* 5D24 80005124 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5D28 80005128 3C01800A */  lui        $at, %hi(D_800A0204)
/* 5D2C 8000512C C4240204 */  lwc1       $f4, %lo(D_800A0204)($at)
/* 5D30 80005130 27BD0050 */  addiu      $sp, $sp, 0x50
/* 5D34 80005134 03E00008 */  jr         $ra
/* 5D38 80005138 46040003 */   div.s     $f0, $f0, $f4

glabel func_8000513C
/* 5D3C 8000513C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5D40 80005140 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5D44 80005144 0C000A04 */  jal        func_80002810
/* 5D48 80005148 AFA40020 */   sw        $a0, 0x20($sp)
/* 5D4C 8000514C 8FA40020 */  lw         $a0, 0x20($sp)
/* 5D50 80005150 0C000ABA */  jal        func_80002AE8
/* 5D54 80005154 AFA2001C */   sw        $v0, 0x1c($sp)
/* 5D58 80005158 1040000B */  beqz       $v0, .L80005188
/* 5D5C 8000515C 8FA3001C */   lw        $v1, 0x1c($sp)
/* 5D60 80005160 906E0003 */  lbu        $t6, 3($v1)
/* 5D64 80005164 55C00009 */  bnel       $t6, $zero, .L8000518C
/* 5D68 80005168 00001025 */   or        $v0, $zero, $zero
/* 5D6C 8000516C 946F0000 */  lhu        $t7, ($v1)
/* 5D70 80005170 24010005 */  addiu      $at, $zero, 5
/* 5D74 80005174 31F81F07 */  andi       $t8, $t7, 0x1f07
/* 5D78 80005178 57010004 */  bnel       $t8, $at, .L8000518C
/* 5D7C 8000517C 00001025 */   or        $v0, $zero, $zero
/* 5D80 80005180 10000002 */  b          .L8000518C
/* 5D84 80005184 24020001 */   addiu     $v0, $zero, 1
.L80005188:
/* 5D88 80005188 00001025 */  or         $v0, $zero, $zero
.L8000518C:
/* 5D8C 8000518C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5D90 80005190 27BD0020 */  addiu      $sp, $sp, 0x20
/* 5D94 80005194 03E00008 */  jr         $ra
/* 5D98 80005198 00000000 */   nop
/* 5D9C 8000519C 00000000 */  nop
