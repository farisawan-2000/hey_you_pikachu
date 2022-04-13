.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8003FC30
/* 40830 8003FC30 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 40834 8003FC34 93AE004B */  lbu        $t6, 0x4b($sp)
/* 40838 8003FC38 AFBF0024 */  sw         $ra, 0x24($sp)
/* 4083C 8003FC3C AFB00020 */  sw         $s0, 0x20($sp)
/* 40840 8003FC40 AFA5003C */  sw         $a1, 0x3c($sp)
/* 40844 8003FC44 AFA60040 */  sw         $a2, 0x40($sp)
/* 40848 8003FC48 AFA70044 */  sw         $a3, 0x44($sp)
/* 4084C 8003FC4C 3C0F800A */  lui        $t7, %hi(D_8009D524)
/* 40850 8003FC50 AC8E0680 */  sw         $t6, 0x680($a0)
/* 40854 8003FC54 00808025 */  or         $s0, $a0, $zero
/* 40858 8003FC58 25EFD524 */  addiu      $t7, $t7, %lo(D_8009D524)
/* 4085C 8003FC5C ADE00000 */  sw         $zero, ($t7)
/* 40860 8003FC60 24180001 */  addiu      $t8, $zero, 1
/* 40864 8003FC64 24190001 */  addiu      $t9, $zero, 1
/* 40868 8003FC68 24080003 */  addiu      $t0, $zero, 3
/* 4086C 8003FC6C AE00066C */  sw         $zero, 0x66c($s0)
/* 40870 8003FC70 AE000670 */  sw         $zero, 0x670($s0)
/* 40874 8003FC74 AE000674 */  sw         $zero, 0x674($s0)
/* 40878 8003FC78 AE000668 */  sw         $zero, 0x668($s0)
/* 4087C 8003FC7C AE180678 */  sw         $t8, 0x678($s0)
/* 40880 8003FC80 AE00067C */  sw         $zero, 0x67c($s0)
/* 40884 8003FC84 A6190000 */  sh         $t9, ($s0)
/* 40888 8003FC88 A6080002 */  sh         $t0, 2($s0)
/* 4088C 8003FC8C 26040074 */  addiu      $a0, $s0, 0x74
/* 40890 8003FC90 AFA40034 */  sw         $a0, 0x34($sp)
/* 40894 8003FC94 2605008C */  addiu      $a1, $s0, 0x8c
/* 40898 8003FC98 0C0145B8 */  jal        osCreateMesgQueue
/* 4089C 8003FC9C 24060008 */   addiu     $a2, $zero, 8
/* 408A0 8003FCA0 260400AC */  addiu      $a0, $s0, 0xac
/* 408A4 8003FCA4 AFA40030 */  sw         $a0, 0x30($sp)
/* 408A8 8003FCA8 260500C4 */  addiu      $a1, $s0, 0xc4
/* 408AC 8003FCAC 0C0145B8 */  jal        osCreateMesgQueue
/* 408B0 8003FCB0 24060008 */   addiu     $a2, $zero, 8
/* 408B4 8003FCB4 260400E4 */  addiu      $a0, $s0, 0xe4
/* 408B8 8003FCB8 AFA4002C */  sw         $a0, 0x2c($sp)
/* 408BC 8003FCBC 260500FC */  addiu      $a1, $s0, 0xfc
/* 408C0 8003FCC0 0C0145B8 */  jal        osCreateMesgQueue
/* 408C4 8003FCC4 24060008 */   addiu     $a2, $zero, 8
/* 408C8 8003FCC8 2604003C */  addiu      $a0, $s0, 0x3c
/* 408CC 8003FCCC 26050054 */  addiu      $a1, $s0, 0x54
/* 408D0 8003FCD0 0C0145B8 */  jal        osCreateMesgQueue
/* 408D4 8003FCD4 24060008 */   addiu     $a2, $zero, 8
/* 408D8 8003FCD8 26040004 */  addiu      $a0, $s0, 4
/* 408DC 8003FCDC 2605001C */  addiu      $a1, $s0, 0x1c
/* 408E0 8003FCE0 0C0145B8 */  jal        osCreateMesgQueue
/* 408E4 8003FCE4 24060008 */   addiu     $a2, $zero, 8
/* 408E8 8003FCE8 2604011C */  addiu      $a0, $s0, 0x11c
/* 408EC 8003FCEC 26050134 */  addiu      $a1, $s0, 0x134
/* 408F0 8003FCF0 0C0145B8 */  jal        osCreateMesgQueue
/* 408F4 8003FCF4 24060008 */   addiu     $a2, $zero, 8
/* 408F8 8003FCF8 0C015100 */  jal        osCreateViManager
/* 408FC 8003FCFC 240400FE */   addiu     $a0, $zero, 0xfe
/* 40900 8003FD00 93A90047 */  lbu        $t1, 0x47($sp)
/* 40904 8003FD04 3C0B800A */  lui        $t3, %hi(D_8009DCB0)
/* 40908 8003FD08 256BDCB0 */  addiu      $t3, $t3, %lo(D_8009DCB0)
/* 4090C 8003FD0C 00095080 */  sll        $t2, $t1, 2
/* 40910 8003FD10 01495021 */  addu       $t2, $t2, $t1
/* 40914 8003FD14 000A5100 */  sll        $t2, $t2, 4
/* 40918 8003FD18 0C014D58 */  jal        osViSetMode
/* 4091C 8003FD1C 014B2021 */   addu      $a0, $t2, $t3
/* 40920 8003FD20 0C014D70 */  jal        osViBlack
/* 40924 8003FD24 24040001 */   addiu     $a0, $zero, 1
/* 40928 8003FD28 8FA40034 */  lw         $a0, 0x34($sp)
/* 4092C 8003FD2C 2405029A */  addiu      $a1, $zero, 0x29a
/* 40930 8003FD30 0C0151C4 */  jal        osViSetEvent
/* 40934 8003FD34 93A6004B */   lbu       $a2, 0x4b($sp)
/* 40938 8003FD38 24040004 */  addiu      $a0, $zero, 4
/* 4093C 8003FD3C 8FA50030 */  lw         $a1, 0x30($sp)
/* 40940 8003FD40 0C0145C4 */  jal        osSetEventMesg
/* 40944 8003FD44 2406029B */   addiu     $a2, $zero, 0x29b
/* 40948 8003FD48 24040009 */  addiu      $a0, $zero, 9
/* 4094C 8003FD4C 8FA5002C */  lw         $a1, 0x2c($sp)
/* 40950 8003FD50 0C0145C4 */  jal        osSetEventMesg
/* 40954 8003FD54 2406029C */   addiu     $a2, $zero, 0x29c
/* 40958 8003FD58 2404000E */  addiu      $a0, $zero, 0xe
/* 4095C 8003FD5C 8FA50034 */  lw         $a1, 0x34($sp)
/* 40960 8003FD60 0C0145C4 */  jal        osSetEventMesg
/* 40964 8003FD64 2406029D */   addiu     $a2, $zero, 0x29d
/* 40968 8003FD68 8FAD0040 */  lw         $t5, 0x40($sp)
/* 4096C 8003FD6C 8FA5003C */  lw         $a1, 0x3c($sp)
/* 40970 8003FD70 3C0C800F */  lui        $t4, %hi(D_800F4AC0)
/* 40974 8003FD74 258C4AC0 */  addiu      $t4, $t4, %lo(D_800F4AC0)
/* 40978 8003FD78 26040158 */  addiu      $a0, $s0, 0x158
/* 4097C 8003FD7C 3C068004 */  lui        $a2, %hi(func_8003FE44)
/* 40980 8003FD80 25AE000A */  addiu      $t6, $t5, 0xa
/* 40984 8003FD84 AFAE0014 */  sw         $t6, 0x14($sp)
/* 40988 8003FD88 24C6FE44 */  addiu      $a2, $a2, %lo(func_8003FE44)
/* 4098C 8003FD8C AFA40034 */  sw         $a0, 0x34($sp)
/* 40990 8003FD90 AFAC0010 */  sw         $t4, 0x10($sp)
/* 40994 8003FD94 02003825 */  or         $a3, $s0, $zero
/* 40998 8003FD98 0C0142A8 */  jal        osCreateThread
/* 4099C 8003FD9C 24A50002 */   addiu     $a1, $a1, 2
/* 409A0 8003FDA0 0C0142FC */  jal        osStartThread
/* 409A4 8003FDA4 8FA40034 */   lw        $a0, 0x34($sp)
/* 409A8 8003FDA8 8FB80040 */  lw         $t8, 0x40($sp)
/* 409AC 8003FDAC 8FA5003C */  lw         $a1, 0x3c($sp)
/* 409B0 8003FDB0 3C0F800F */  lui        $t7, %hi(D_800F6AC0)
/* 409B4 8003FDB4 25EF6AC0 */  addiu      $t7, $t7, %lo(D_800F6AC0)
/* 409B8 8003FDB8 26040308 */  addiu      $a0, $s0, 0x308
/* 409BC 8003FDBC 3C068004 */  lui        $a2, %hi(func_80040064)
/* 409C0 8003FDC0 27190005 */  addiu      $t9, $t8, 5
/* 409C4 8003FDC4 AFB90014 */  sw         $t9, 0x14($sp)
/* 409C8 8003FDC8 24C60064 */  addiu      $a2, $a2, %lo(func_80040064)
/* 409CC 8003FDCC AFA40034 */  sw         $a0, 0x34($sp)
/* 409D0 8003FDD0 AFAF0010 */  sw         $t7, 0x10($sp)
/* 409D4 8003FDD4 02003825 */  or         $a3, $s0, $zero
/* 409D8 8003FDD8 0C0142A8 */  jal        osCreateThread
/* 409DC 8003FDDC 24A50001 */   addiu     $a1, $a1, 1
/* 409E0 8003FDE0 0C0142FC */  jal        osStartThread
/* 409E4 8003FDE4 8FA40034 */   lw        $a0, 0x34($sp)
/* 409E8 8003FDE8 8FA90040 */  lw         $t1, 0x40($sp)
/* 409EC 8003FDEC 3C088010 */  lui        $t0, %hi(D_800F8AC0)
/* 409F0 8003FDF0 25088AC0 */  addiu      $t0, $t0, %lo(D_800F8AC0)
/* 409F4 8003FDF4 260404B8 */  addiu      $a0, $s0, 0x4b8
/* 409F8 8003FDF8 3C068004 */  lui        $a2, %hi(func_80040200)
/* 409FC 8003FDFC 24C60200 */  addiu      $a2, $a2, %lo(func_80040200)
/* 40A00 8003FE00 AFA40034 */  sw         $a0, 0x34($sp)
/* 40A04 8003FE04 AFA80010 */  sw         $t0, 0x10($sp)
/* 40A08 8003FE08 8FA5003C */  lw         $a1, 0x3c($sp)
/* 40A0C 8003FE0C 02003825 */  or         $a3, $s0, $zero
/* 40A10 8003FE10 0C0142A8 */  jal        osCreateThread
/* 40A14 8003FE14 AFA90014 */   sw        $t1, 0x14($sp)
/* 40A18 8003FE18 0C0142FC */  jal        osStartThread
/* 40A1C 8003FE1C 8FA40034 */   lw        $a0, 0x34($sp)
/* 40A20 8003FE20 8FBF0024 */  lw         $ra, 0x24($sp)
/* 40A24 8003FE24 8FB00020 */  lw         $s0, 0x20($sp)
/* 40A28 8003FE28 27BD0038 */  addiu      $sp, $sp, 0x38
/* 40A2C 8003FE2C 03E00008 */  jr         $ra
/* 40A30 8003FE30 00000000 */   nop

glabel func_8003FE34
/* 40A34 8003FE34 03E00008 */  jr         $ra
/* 40A38 8003FE38 24820004 */   addiu     $v0, $a0, 4

glabel func_8003FE3C
/* 40A3C 8003FE3C 03E00008 */  jr         $ra
/* 40A40 8003FE40 2482003C */   addiu     $v0, $a0, 0x3c

glabel func_8003FE44
/* 40A44 8003FE44 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 40A48 8003FE48 AFB50028 */  sw         $s5, 0x28($sp)
/* 40A4C 8003FE4C AFB10018 */  sw         $s1, 0x18($sp)
/* 40A50 8003FE50 AFB70030 */  sw         $s7, 0x30($sp)
/* 40A54 8003FE54 AFB6002C */  sw         $s6, 0x2c($sp)
/* 40A58 8003FE58 AFB40024 */  sw         $s4, 0x24($sp)
/* 40A5C 8003FE5C AFB30020 */  sw         $s3, 0x20($sp)
/* 40A60 8003FE60 AFB2001C */  sw         $s2, 0x1c($sp)
/* 40A64 8003FE64 AFB00014 */  sw         $s0, 0x14($sp)
/* 40A68 8003FE68 3C11800A */  lui        $s1, 0x800a
/* 40A6C 8003FE6C 3C15800A */  lui        $s5, %hi(D_8009D524)
/* 40A70 8003FE70 00808025 */  or         $s0, $a0, $zero
/* 40A74 8003FE74 AFBF0034 */  sw         $ra, 0x34($sp)
/* 40A78 8003FE78 AFA00044 */  sw         $zero, 0x44($sp)
/* 40A7C 8003FE7C 26B5D524 */  addiu      $s5, $s5, %lo(D_8009D524)
/* 40A80 8003FE80 2631D520 */  addiu      $s1, $s1, -0x2ae0
/* 40A84 8003FE84 27B20044 */  addiu      $s2, $sp, 0x44
/* 40A88 8003FE88 2413029A */  addiu      $s3, $zero, 0x29a
/* 40A8C 8003FE8C 2414029D */  addiu      $s4, $zero, 0x29d
/* 40A90 8003FE90 24160001 */  addiu      $s6, $zero, 1
/* 40A94 8003FE94 24970074 */  addiu      $s7, $a0, 0x74
/* 40A98 8003FE98 02E02025 */  or         $a0, $s7, $zero
.L8003FE9C:
/* 40A9C 8003FE9C 02402825 */  or         $a1, $s2, $zero
/* 40AA0 8003FEA0 0C014554 */  jal        osRecvMesg
/* 40AA4 8003FEA4 02C03025 */   or        $a2, $s6, $zero
/* 40AA8 8003FEA8 8E2E0000 */  lw         $t6, ($s1)
/* 40AAC 8003FEAC 8FB80044 */  lw         $t8, 0x44($sp)
/* 40AB0 8003FEB0 02002025 */  or         $a0, $s0, $zero
/* 40AB4 8003FEB4 25CF0001 */  addiu      $t7, $t6, 1
/* 40AB8 8003FEB8 13130005 */  beq        $t8, $s3, .L8003FED0
/* 40ABC 8003FEBC AE2F0000 */   sw        $t7, ($s1)
/* 40AC0 8003FEC0 13140007 */  beq        $t8, $s4, .L8003FEE0
/* 40AC4 8003FEC4 02002025 */   or        $a0, $s0, $zero
/* 40AC8 8003FEC8 1000FFF4 */  b          .L8003FE9C
/* 40ACC 8003FECC 02E02025 */   or        $a0, $s7, $zero
.L8003FED0:
/* 40AD0 8003FED0 0C010005 */  jal        func_80040014
/* 40AD4 8003FED4 02002825 */   or        $a1, $s0, $zero
/* 40AD8 8003FED8 1000FFF0 */  b          .L8003FE9C
/* 40ADC 8003FEDC 02E02025 */   or        $a0, $s7, $zero
.L8003FEE0:
/* 40AE0 8003FEE0 AEB60000 */  sw         $s6, ($s5)
/* 40AE4 8003FEE4 0C010005 */  jal        func_80040014
/* 40AE8 8003FEE8 26050002 */   addiu     $a1, $s0, 2
/* 40AEC 8003FEEC 1000FFEB */  b          .L8003FE9C
/* 40AF0 8003FEF0 02E02025 */   or        $a0, $s7, $zero
/* 40AF4 8003FEF4 00000000 */  nop
/* 40AF8 8003FEF8 00000000 */  nop
/* 40AFC 8003FEFC 00000000 */  nop
/* 40B00 8003FF00 00000000 */  nop
/* 40B04 8003FF04 00000000 */  nop
/* 40B08 8003FF08 00000000 */  nop
/* 40B0C 8003FF0C 00000000 */  nop
/* 40B10 8003FF10 8FBF0034 */  lw         $ra, 0x34($sp)
/* 40B14 8003FF14 8FB00014 */  lw         $s0, 0x14($sp)
/* 40B18 8003FF18 8FB10018 */  lw         $s1, 0x18($sp)
/* 40B1C 8003FF1C 8FB2001C */  lw         $s2, 0x1c($sp)
/* 40B20 8003FF20 8FB30020 */  lw         $s3, 0x20($sp)
/* 40B24 8003FF24 8FB40024 */  lw         $s4, 0x24($sp)
/* 40B28 8003FF28 8FB50028 */  lw         $s5, 0x28($sp)
/* 40B2C 8003FF2C 8FB6002C */  lw         $s6, 0x2c($sp)
/* 40B30 8003FF30 8FB70030 */  lw         $s7, 0x30($sp)
/* 40B34 8003FF34 03E00008 */  jr         $ra
/* 40B38 8003FF38 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8003FF3C
/* 40B3C 8003FF3C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 40B40 8003FF40 AFBF0014 */  sw         $ra, 0x14($sp)
/* 40B44 8003FF44 AFA40018 */  sw         $a0, 0x18($sp)
/* 40B48 8003FF48 AFA60020 */  sw         $a2, 0x20($sp)
/* 40B4C 8003FF4C 24040001 */  addiu      $a0, $zero, 1
/* 40B50 8003FF50 0C014E80 */  jal        osSetIntMask
/* 40B54 8003FF54 AFA5001C */   sw        $a1, 0x1c($sp)
/* 40B58 8003FF58 8FA5001C */  lw         $a1, 0x1c($sp)
/* 40B5C 8003FF5C 8FAE0020 */  lw         $t6, 0x20($sp)
/* 40B60 8003FF60 8FA30018 */  lw         $v1, 0x18($sp)
/* 40B64 8003FF64 00402025 */  or         $a0, $v0, $zero
/* 40B68 8003FF68 ACAE0004 */  sw         $t6, 4($a1)
/* 40B6C 8003FF6C 8C6F0668 */  lw         $t7, 0x668($v1)
/* 40B70 8003FF70 ACAF0000 */  sw         $t7, ($a1)
/* 40B74 8003FF74 0C014E80 */  jal        osSetIntMask
/* 40B78 8003FF78 AC650668 */   sw        $a1, 0x668($v1)
/* 40B7C 8003FF7C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 40B80 8003FF80 27BD0018 */  addiu      $sp, $sp, 0x18
/* 40B84 8003FF84 03E00008 */  jr         $ra
/* 40B88 8003FF88 00000000 */   nop

glabel func_8003FF8C
/* 40B8C 8003FF8C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 40B90 8003FF90 AFBF0014 */  sw         $ra, 0x14($sp)
/* 40B94 8003FF94 AFA40020 */  sw         $a0, 0x20($sp)
/* 40B98 8003FF98 8C830668 */  lw         $v1, 0x668($a0)
/* 40B9C 8003FF9C AFA00018 */  sw         $zero, 0x18($sp)
/* 40BA0 8003FFA0 AFA50024 */  sw         $a1, 0x24($sp)
/* 40BA4 8003FFA4 24040001 */  addiu      $a0, $zero, 1
/* 40BA8 8003FFA8 0C014E80 */  jal        osSetIntMask
/* 40BAC 8003FFAC AFA3001C */   sw        $v1, 0x1c($sp)
/* 40BB0 8003FFB0 8FA3001C */  lw         $v1, 0x1c($sp)
/* 40BB4 8003FFB4 8FA50024 */  lw         $a1, 0x24($sp)
/* 40BB8 8003FFB8 8FA60018 */  lw         $a2, 0x18($sp)
/* 40BBC 8003FFBC 1060000F */  beqz       $v1, .L8003FFFC
/* 40BC0 8003FFC0 00402025 */   or        $a0, $v0, $zero
.L8003FFC4:
/* 40BC4 8003FFC4 5465000A */  bnel       $v1, $a1, .L8003FFF0
/* 40BC8 8003FFC8 00603025 */   or        $a2, $v1, $zero
/* 40BCC 8003FFCC 10C00004 */  beqz       $a2, .L8003FFE0
/* 40BD0 8003FFD0 8FB90020 */   lw        $t9, 0x20($sp)
/* 40BD4 8003FFD4 8CAF0000 */  lw         $t7, ($a1)
/* 40BD8 8003FFD8 10000008 */  b          .L8003FFFC
/* 40BDC 8003FFDC ACCF0000 */   sw        $t7, ($a2)
.L8003FFE0:
/* 40BE0 8003FFE0 8CB80000 */  lw         $t8, ($a1)
/* 40BE4 8003FFE4 10000005 */  b          .L8003FFFC
/* 40BE8 8003FFE8 AF380668 */   sw        $t8, 0x668($t9)
/* 40BEC 8003FFEC 00603025 */  or         $a2, $v1, $zero
.L8003FFF0:
/* 40BF0 8003FFF0 8C630000 */  lw         $v1, ($v1)
/* 40BF4 8003FFF4 1460FFF3 */  bnez       $v1, .L8003FFC4
/* 40BF8 8003FFF8 00000000 */   nop
.L8003FFFC:
/* 40BFC 8003FFFC 0C014E80 */  jal        osSetIntMask
/* 40C00 80040000 00000000 */   nop
/* 40C04 80040004 8FBF0014 */  lw         $ra, 0x14($sp)
/* 40C08 80040008 27BD0020 */  addiu      $sp, $sp, 0x20
/* 40C0C 8004000C 03E00008 */  jr         $ra
/* 40C10 80040010 00000000 */   nop

glabel func_80040014
/* 40C14 80040014 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 40C18 80040018 AFBF001C */  sw         $ra, 0x1c($sp)
/* 40C1C 8004001C AFB10018 */  sw         $s1, 0x18($sp)
/* 40C20 80040020 AFB00014 */  sw         $s0, 0x14($sp)
/* 40C24 80040024 8C900668 */  lw         $s0, 0x668($a0)
/* 40C28 80040028 00A08825 */  or         $s1, $a1, $zero
/* 40C2C 8004002C 52000009 */  beql       $s0, $zero, .L80040054
/* 40C30 80040030 8FBF001C */   lw        $ra, 0x1c($sp)
/* 40C34 80040034 8E040004 */  lw         $a0, 4($s0)
.L80040038:
/* 40C38 80040038 02202825 */  or         $a1, $s1, $zero
/* 40C3C 8004003C 0C014C64 */  jal        osSendMesg
/* 40C40 80040040 00003025 */   or        $a2, $zero, $zero
/* 40C44 80040044 8E100000 */  lw         $s0, ($s0)
/* 40C48 80040048 5600FFFB */  bnel       $s0, $zero, .L80040038
/* 40C4C 8004004C 8E040004 */   lw        $a0, 4($s0)
/* 40C50 80040050 8FBF001C */  lw         $ra, 0x1c($sp)
.L80040054:
/* 40C54 80040054 8FB00014 */  lw         $s0, 0x14($sp)
/* 40C58 80040058 8FB10018 */  lw         $s1, 0x18($sp)
/* 40C5C 8004005C 03E00008 */  jr         $ra
/* 40C60 80040060 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80040064
/* 40C64 80040064 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 40C68 80040068 AFBE0038 */  sw         $fp, 0x38($sp)
/* 40C6C 8004006C AFB70034 */  sw         $s7, 0x34($sp)
/* 40C70 80040070 AFB60030 */  sw         $s6, 0x30($sp)
/* 40C74 80040074 AFB5002C */  sw         $s5, 0x2c($sp)
/* 40C78 80040078 AFB40028 */  sw         $s4, 0x28($sp)
/* 40C7C 8004007C AFB20020 */  sw         $s2, 0x20($sp)
/* 40C80 80040080 AFB1001C */  sw         $s1, 0x1c($sp)
/* 40C84 80040084 00809025 */  or         $s2, $a0, $zero
/* 40C88 80040088 AFBF003C */  sw         $ra, 0x3c($sp)
/* 40C8C 8004008C AFB30024 */  sw         $s3, 0x24($sp)
/* 40C90 80040090 AFB00018 */  sw         $s0, 0x18($sp)
/* 40C94 80040094 AFA0005C */  sw         $zero, 0x5c($sp)
/* 40C98 80040098 AFA00058 */  sw         $zero, 0x58($sp)
/* 40C9C 8004009C 00008825 */  or         $s1, $zero, $zero
/* 40CA0 800400A0 27B4005C */  addiu      $s4, $sp, 0x5c
/* 40CA4 800400A4 24950004 */  addiu      $s5, $a0, 4
/* 40CA8 800400A8 27B60058 */  addiu      $s6, $sp, 0x58
/* 40CAC 800400AC 24170001 */  addiu      $s7, $zero, 1
/* 40CB0 800400B0 241E0002 */  addiu      $fp, $zero, 2
/* 40CB4 800400B4 02A02025 */  or         $a0, $s5, $zero
.L800400B8:
/* 40CB8 800400B8 02C02825 */  or         $a1, $s6, $zero
/* 40CBC 800400BC 0C014554 */  jal        osRecvMesg
/* 40CC0 800400C0 24060001 */   addiu     $a2, $zero, 1
/* 40CC4 800400C4 8FAE0058 */  lw         $t6, 0x58($sp)
/* 40CC8 800400C8 8DC40040 */  lw         $a0, 0x40($t6)
/* 40CCC 800400CC 0C0151DC */  jal        osWritebackDCache
/* 40CD0 800400D0 8DC50044 */   lw        $a1, 0x44($t6)
/* 40CD4 800400D4 8E53066C */  lw         $s3, 0x66c($s2)
/* 40CD8 800400D8 5260000E */  beql       $s3, $zero, .L80040114
/* 40CDC 800400DC 8FAF0058 */   lw        $t7, 0x58($sp)
/* 40CE0 800400E0 0C0151FC */  jal        osSpTaskYield
/* 40CE4 800400E4 265000AC */   addiu     $s0, $s2, 0xac
/* 40CE8 800400E8 02002025 */  or         $a0, $s0, $zero
/* 40CEC 800400EC 02802825 */  or         $a1, $s4, $zero
/* 40CF0 800400F0 0C014554 */  jal        osRecvMesg
/* 40CF4 800400F4 24060001 */   addiu     $a2, $zero, 1
/* 40CF8 800400F8 0C015204 */  jal        osSpTaskYielded
/* 40CFC 800400FC 26640010 */   addiu     $a0, $s3, 0x10
/* 40D00 80040100 10400003 */  beqz       $v0, .L80040110
/* 40D04 80040104 03C08825 */   or        $s1, $fp, $zero
/* 40D08 80040108 10000001 */  b          .L80040110
/* 40D0C 8004010C 02E08825 */   or        $s1, $s7, $zero
.L80040110:
/* 40D10 80040110 8FAF0058 */  lw         $t7, 0x58($sp)
.L80040114:
/* 40D14 80040114 265000AC */  addiu      $s0, $s2, 0xac
/* 40D18 80040118 AE4F0670 */  sw         $t7, 0x670($s2)
/* 40D1C 8004011C 8FA40058 */  lw         $a0, 0x58($sp)
/* 40D20 80040120 0C01525F */  jal        osSpTaskLoad
/* 40D24 80040124 24840010 */   addiu     $a0, $a0, 0x10
/* 40D28 80040128 8FA40058 */  lw         $a0, 0x58($sp)
/* 40D2C 8004012C 0C0152B9 */  jal        osSpTaskStartGo
/* 40D30 80040130 24840010 */   addiu     $a0, $a0, 0x10
/* 40D34 80040134 02002025 */  or         $a0, $s0, $zero
/* 40D38 80040138 02802825 */  or         $a1, $s4, $zero
/* 40D3C 8004013C 0C014554 */  jal        osRecvMesg
/* 40D40 80040140 24060001 */   addiu     $a2, $zero, 1
/* 40D44 80040144 8E580674 */  lw         $t8, 0x674($s2)
/* 40D48 80040148 AE400670 */  sw         $zero, 0x670($s2)
/* 40D4C 8004014C 2644011C */  addiu      $a0, $s2, 0x11c
/* 40D50 80040150 13000003 */  beqz       $t8, .L80040160
/* 40D54 80040154 02802825 */   or        $a1, $s4, $zero
/* 40D58 80040158 0C014C64 */  jal        osSendMesg
/* 40D5C 8004015C 24060001 */   addiu     $a2, $zero, 1
.L80040160:
/* 40D60 80040160 16370008 */  bne        $s1, $s7, .L80040184
/* 40D64 80040164 00000000 */   nop
/* 40D68 80040168 26700010 */  addiu      $s0, $s3, 0x10
/* 40D6C 8004016C 0C01525F */  jal        osSpTaskLoad
/* 40D70 80040170 02002025 */   or        $a0, $s0, $zero
/* 40D74 80040174 0C0152B9 */  jal        osSpTaskStartGo
/* 40D78 80040178 02002025 */   or        $a0, $s0, $zero
/* 40D7C 8004017C 10000007 */  b          .L8004019C
/* 40D80 80040180 8FB90058 */   lw        $t9, 0x58($sp)
.L80040184:
/* 40D84 80040184 163E0004 */  bne        $s1, $fp, .L80040198
/* 40D88 80040188 02002025 */   or        $a0, $s0, $zero
/* 40D8C 8004018C 02802825 */  or         $a1, $s4, $zero
/* 40D90 80040190 0C014C64 */  jal        osSendMesg
/* 40D94 80040194 24060001 */   addiu     $a2, $zero, 1
.L80040198:
/* 40D98 80040198 8FB90058 */  lw         $t9, 0x58($sp)
.L8004019C:
/* 40D9C 8004019C 24060001 */  addiu      $a2, $zero, 1
/* 40DA0 800401A0 00008825 */  or         $s1, $zero, $zero
/* 40DA4 800401A4 8F240050 */  lw         $a0, 0x50($t9)
/* 40DA8 800401A8 0C014C64 */  jal        osSendMesg
/* 40DAC 800401AC 8F250054 */   lw        $a1, 0x54($t9)
/* 40DB0 800401B0 1000FFC1 */  b          .L800400B8
/* 40DB4 800401B4 02A02025 */   or        $a0, $s5, $zero
/* 40DB8 800401B8 00000000 */  nop
/* 40DBC 800401BC 00000000 */  nop
/* 40DC0 800401C0 00000000 */  nop
/* 40DC4 800401C4 00000000 */  nop
/* 40DC8 800401C8 00000000 */  nop
/* 40DCC 800401CC 00000000 */  nop
/* 40DD0 800401D0 8FBF003C */  lw         $ra, 0x3c($sp)
/* 40DD4 800401D4 8FB00018 */  lw         $s0, 0x18($sp)
/* 40DD8 800401D8 8FB1001C */  lw         $s1, 0x1c($sp)
/* 40DDC 800401DC 8FB20020 */  lw         $s2, 0x20($sp)
/* 40DE0 800401E0 8FB30024 */  lw         $s3, 0x24($sp)
/* 40DE4 800401E4 8FB40028 */  lw         $s4, 0x28($sp)
/* 40DE8 800401E8 8FB5002C */  lw         $s5, 0x2c($sp)
/* 40DEC 800401EC 8FB60030 */  lw         $s6, 0x30($sp)
/* 40DF0 800401F0 8FB70034 */  lw         $s7, 0x34($sp)
/* 40DF4 800401F4 8FBE0038 */  lw         $fp, 0x38($sp)
/* 40DF8 800401F8 03E00008 */  jr         $ra
/* 40DFC 800401FC 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_80040200
/* 40E00 80040200 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 40E04 80040204 AFB50028 */  sw         $s5, 0x28($sp)
/* 40E08 80040208 AFB40024 */  sw         $s4, 0x24($sp)
/* 40E0C 8004020C AFB30020 */  sw         $s3, 0x20($sp)
/* 40E10 80040210 AFB00014 */  sw         $s0, 0x14($sp)
/* 40E14 80040214 00808025 */  or         $s0, $a0, $zero
/* 40E18 80040218 AFBF002C */  sw         $ra, 0x2c($sp)
/* 40E1C 8004021C AFB2001C */  sw         $s2, 0x1c($sp)
/* 40E20 80040220 AFB10018 */  sw         $s1, 0x18($sp)
/* 40E24 80040224 AFA00044 */  sw         $zero, 0x44($sp)
/* 40E28 80040228 AFA00040 */  sw         $zero, 0x40($sp)
/* 40E2C 8004022C 27B30044 */  addiu      $s3, $sp, 0x44
/* 40E30 80040230 27B40040 */  addiu      $s4, $sp, 0x40
/* 40E34 80040234 2495003C */  addiu      $s5, $a0, 0x3c
/* 40E38 80040238 02A02025 */  or         $a0, $s5, $zero
.L8004023C:
/* 40E3C 8004023C 02802825 */  or         $a1, $s4, $zero
/* 40E40 80040240 0C014554 */  jal        osRecvMesg
/* 40E44 80040244 24060001 */   addiu     $a2, $zero, 1
/* 40E48 80040248 02002025 */  or         $a0, $s0, $zero
/* 40E4C 8004024C 0C0100DD */  jal        func_80040374
/* 40E50 80040250 8FA50040 */   lw        $a1, 0x40($sp)
/* 40E54 80040254 8E0E0670 */  lw         $t6, 0x670($s0)
/* 40E58 80040258 8FAF0040 */  lw         $t7, 0x40($sp)
/* 40E5C 8004025C 2604011C */  addiu      $a0, $s0, 0x11c
/* 40E60 80040260 11C00005 */  beqz       $t6, .L80040278
/* 40E64 80040264 02602825 */   or        $a1, $s3, $zero
/* 40E68 80040268 AE0F0674 */  sw         $t7, 0x674($s0)
/* 40E6C 8004026C 0C014554 */  jal        osRecvMesg
/* 40E70 80040270 24060001 */   addiu     $a2, $zero, 1
/* 40E74 80040274 AE000674 */  sw         $zero, 0x674($s0)
.L80040278:
/* 40E78 80040278 8FB80040 */  lw         $t8, 0x40($sp)
/* 40E7C 8004027C 261100AC */  addiu      $s1, $s0, 0xac
/* 40E80 80040280 261200E4 */  addiu      $s2, $s0, 0xe4
/* 40E84 80040284 AE18066C */  sw         $t8, 0x66c($s0)
/* 40E88 80040288 8FA40040 */  lw         $a0, 0x40($sp)
/* 40E8C 8004028C 0C01525F */  jal        osSpTaskLoad
/* 40E90 80040290 24840010 */   addiu     $a0, $a0, 0x10
/* 40E94 80040294 8FA40040 */  lw         $a0, 0x40($sp)
/* 40E98 80040298 0C0152B9 */  jal        osSpTaskStartGo
/* 40E9C 8004029C 24840010 */   addiu     $a0, $a0, 0x10
/* 40EA0 800402A0 02202025 */  or         $a0, $s1, $zero
/* 40EA4 800402A4 02602825 */  or         $a1, $s3, $zero
/* 40EA8 800402A8 0C014554 */  jal        osRecvMesg
/* 40EAC 800402AC 24060001 */   addiu     $a2, $zero, 1
/* 40EB0 800402B0 AE00066C */  sw         $zero, 0x66c($s0)
/* 40EB4 800402B4 02402025 */  or         $a0, $s2, $zero
/* 40EB8 800402B8 02602825 */  or         $a1, $s3, $zero
/* 40EBC 800402BC 0C014554 */  jal        osRecvMesg
/* 40EC0 800402C0 24060001 */   addiu     $a2, $zero, 1
/* 40EC4 800402C4 8FB90040 */  lw         $t9, 0x40($sp)
/* 40EC8 800402C8 8F280008 */  lw         $t0, 8($t9)
/* 40ECC 800402CC 31090040 */  andi       $t1, $t0, 0x40
/* 40ED0 800402D0 51200012 */  beql       $t1, $zero, .L8004031C
/* 40ED4 800402D4 8FAF0040 */   lw        $t7, 0x40($sp)
/* 40ED8 800402D8 8E0A067C */  lw         $t2, 0x67c($s0)
/* 40EDC 800402DC 254B0001 */  addiu      $t3, $t2, 1
/* 40EE0 800402E0 AE0B067C */  sw         $t3, 0x67c($s0)
/* 40EE4 800402E4 8FAC0040 */  lw         $t4, 0x40($sp)
/* 40EE8 800402E8 0C014E00 */  jal        osViSwapBuffer
/* 40EEC 800402EC 8D84000C */   lw        $a0, 0xc($t4)
/* 40EF0 800402F0 8E0D0678 */  lw         $t5, 0x678($s0)
/* 40EF4 800402F4 51A00009 */  beql       $t5, $zero, .L8004031C
/* 40EF8 800402F8 8FAF0040 */   lw        $t7, 0x40($sp)
/* 40EFC 800402FC 8E0E067C */  lw         $t6, 0x67c($s0)
/* 40F00 80040300 2DC10015 */  sltiu      $at, $t6, 0x15
/* 40F04 80040304 54200005 */  bnel       $at, $zero, .L8004031C
/* 40F08 80040308 8FAF0040 */   lw        $t7, 0x40($sp)
/* 40F0C 8004030C 0C014D70 */  jal        osViBlack
/* 40F10 80040310 00002025 */   or        $a0, $zero, $zero
/* 40F14 80040314 AE000678 */  sw         $zero, 0x678($s0)
/* 40F18 80040318 8FAF0040 */  lw         $t7, 0x40($sp)
.L8004031C:
/* 40F1C 8004031C 24060001 */  addiu      $a2, $zero, 1
/* 40F20 80040320 8DE40050 */  lw         $a0, 0x50($t7)
/* 40F24 80040324 0C014C64 */  jal        osSendMesg
/* 40F28 80040328 8DE50054 */   lw        $a1, 0x54($t7)
/* 40F2C 8004032C 1000FFC3 */  b          .L8004023C
/* 40F30 80040330 02A02025 */   or        $a0, $s5, $zero
/* 40F34 80040334 00000000 */  nop
/* 40F38 80040338 00000000 */  nop
/* 40F3C 8004033C 00000000 */  nop
/* 40F40 80040340 00000000 */  nop
/* 40F44 80040344 00000000 */  nop
/* 40F48 80040348 00000000 */  nop
/* 40F4C 8004034C 00000000 */  nop
/* 40F50 80040350 8FBF002C */  lw         $ra, 0x2c($sp)
/* 40F54 80040354 8FB00014 */  lw         $s0, 0x14($sp)
/* 40F58 80040358 8FB10018 */  lw         $s1, 0x18($sp)
/* 40F5C 8004035C 8FB2001C */  lw         $s2, 0x1c($sp)
/* 40F60 80040360 8FB30020 */  lw         $s3, 0x20($sp)
/* 40F64 80040364 8FB40024 */  lw         $s4, 0x24($sp)
/* 40F68 80040368 8FB50028 */  lw         $s5, 0x28($sp)
/* 40F6C 8004036C 03E00008 */  jr         $ra
/* 40F70 80040370 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_80040374
/* 40F74 80040374 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 40F78 80040378 AFBF002C */  sw         $ra, 0x2c($sp)
/* 40F7C 8004037C AFB40028 */  sw         $s4, 0x28($sp)
/* 40F80 80040380 AFB30024 */  sw         $s3, 0x24($sp)
/* 40F84 80040384 AFB20020 */  sw         $s2, 0x20($sp)
/* 40F88 80040388 AFB1001C */  sw         $s1, 0x1c($sp)
/* 40F8C 8004038C AFB00018 */  sw         $s0, 0x18($sp)
/* 40F90 80040390 AFA00044 */  sw         $zero, 0x44($sp)
/* 40F94 80040394 00808825 */  or         $s1, $a0, $zero
/* 40F98 80040398 0C0152CC */  jal        osViGetCurrentFramebuffer
/* 40F9C 8004039C 8CB3000C */   lw        $s3, 0xc($a1)
/* 40FA0 800403A0 50530005 */  beql       $v0, $s3, .L800403B8
/* 40FA4 800403A4 27B2003C */   addiu     $s2, $sp, 0x3c
/* 40FA8 800403A8 0C0152DC */  jal        func_80054B70
/* 40FAC 800403AC 00000000 */   nop
/* 40FB0 800403B0 14530016 */  bne        $v0, $s3, .L8004040C
/* 40FB4 800403B4 27B2003C */   addiu     $s2, $sp, 0x3c
.L800403B8:
/* 40FB8 800403B8 2630011C */  addiu      $s0, $s1, 0x11c
/* 40FBC 800403BC 27B40044 */  addiu      $s4, $sp, 0x44
/* 40FC0 800403C0 02003025 */  or         $a2, $s0, $zero
/* 40FC4 800403C4 02402825 */  or         $a1, $s2, $zero
/* 40FC8 800403C8 0C00FFCF */  jal        func_8003FF3C
/* 40FCC 800403CC 02202025 */   or        $a0, $s1, $zero
/* 40FD0 800403D0 02002025 */  or         $a0, $s0, $zero
/* 40FD4 800403D4 02802825 */  or         $a1, $s4, $zero
/* 40FD8 800403D8 0C014554 */  jal        osRecvMesg
/* 40FDC 800403DC 24060001 */   addiu     $a2, $zero, 1
/* 40FE0 800403E0 02202025 */  or         $a0, $s1, $zero
/* 40FE4 800403E4 0C00FFE3 */  jal        func_8003FF8C
/* 40FE8 800403E8 02402825 */   or        $a1, $s2, $zero
/* 40FEC 800403EC 0C0152CC */  jal        osViGetCurrentFramebuffer
/* 40FF0 800403F0 00000000 */   nop
/* 40FF4 800403F4 5053FFF0 */  beql       $v0, $s3, .L800403B8
/* 40FF8 800403F8 27B2003C */   addiu     $s2, $sp, 0x3c
/* 40FFC 800403FC 0C0152DC */  jal        func_80054B70
/* 41000 80040400 00000000 */   nop
/* 41004 80040404 5053FFEC */  beql       $v0, $s3, .L800403B8
/* 41008 80040408 27B2003C */   addiu     $s2, $sp, 0x3c
.L8004040C:
/* 4100C 8004040C 8FBF002C */  lw         $ra, 0x2c($sp)
/* 41010 80040410 8FB00018 */  lw         $s0, 0x18($sp)
/* 41014 80040414 8FB1001C */  lw         $s1, 0x1c($sp)
/* 41018 80040418 8FB20020 */  lw         $s2, 0x20($sp)
/* 4101C 8004041C 8FB30024 */  lw         $s3, 0x24($sp)
/* 41020 80040420 8FB40028 */  lw         $s4, 0x28($sp)
/* 41024 80040424 03E00008 */  jr         $ra
/* 41028 80040428 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8004042C
/* 4102C 8004042C 3C0E800A */  lui        $t6, %hi(D_8009D524)
/* 41030 80040430 25CED524 */  addiu      $t6, $t6, %lo(D_8009D524)
/* 41034 80040434 03E00008 */  jr         $ra
/* 41038 80040438 8DC20000 */   lw        $v0, ($t6)
/* 4103C 8004043C 00000000 */  nop
