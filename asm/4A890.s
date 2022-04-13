.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80049C90
/* 4A890 80049C90 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 4A894 80049C94 AFB00014 */  sw         $s0, 0x14($sp)
/* 4A898 80049C98 00808025 */  or         $s0, $a0, $zero
/* 4A89C 80049C9C AFBF0034 */  sw         $ra, 0x34($sp)
/* 4A8A0 80049CA0 AFB70030 */  sw         $s7, 0x30($sp)
/* 4A8A4 80049CA4 AFB6002C */  sw         $s6, 0x2c($sp)
/* 4A8A8 80049CA8 AFB50028 */  sw         $s5, 0x28($sp)
/* 4A8AC 80049CAC AFB40024 */  sw         $s4, 0x24($sp)
/* 4A8B0 80049CB0 AFB30020 */  sw         $s3, 0x20($sp)
/* 4A8B4 80049CB4 AFB2001C */  sw         $s2, 0x1c($sp)
/* 4A8B8 80049CB8 AFB10018 */  sw         $s1, 0x18($sp)
/* 4A8BC 80049CBC 001070C0 */  sll        $t6, $s0, 3
/* 4A8C0 80049CC0 0080B025 */  or         $s6, $a0, $zero
/* 4A8C4 80049CC4 00E0B825 */  or         $s7, $a3, $zero
/* 4A8C8 80049CC8 ACE40000 */  sw         $a0, ($a3)
/* 4A8CC 80049CCC 25D00004 */  addiu      $s0, $t6, 4
/* 4A8D0 80049CD0 18800018 */  blez       $a0, .L80049D34
/* 4A8D4 80049CD4 0000A825 */   or        $s5, $zero, $zero
/* 4A8D8 80049CD8 00047880 */  sll        $t7, $a0, 2
/* 4A8DC 80049CDC 00EF9021 */  addu       $s2, $a3, $t7
/* 4A8E0 80049CE0 00C08825 */  or         $s1, $a2, $zero
/* 4A8E4 80049CE4 00A09825 */  or         $s3, $a1, $zero
/* 4A8E8 80049CE8 00E0A025 */  or         $s4, $a3, $zero
.L80049CEC:
/* 4A8EC 80049CEC 8E380000 */  lw         $t8, ($s1)
/* 4A8F0 80049CF0 02F03021 */  addu       $a2, $s7, $s0
/* 4A8F4 80049CF4 AE580004 */  sw         $t8, 4($s2)
/* 4A8F8 80049CF8 8E250000 */  lw         $a1, ($s1)
/* 4A8FC 80049CFC 0C012922 */  jal        func_8004A488
/* 4A900 80049D00 8E640000 */   lw        $a0, ($s3)
/* 4A904 80049D04 02028021 */  addu       $s0, $s0, $v0
/* 4A908 80049D08 32190003 */  andi       $t9, $s0, 3
/* 4A90C 80049D0C 13200003 */  beqz       $t9, .L80049D1C
/* 4A910 80049D10 26B50001 */   addiu     $s5, $s5, 1
/* 4A914 80049D14 36080003 */  ori        $t0, $s0, 3
/* 4A918 80049D18 25100001 */  addiu      $s0, $t0, 1
.L80049D1C:
/* 4A91C 80049D1C 26520004 */  addiu      $s2, $s2, 4
/* 4A920 80049D20 26310004 */  addiu      $s1, $s1, 4
/* 4A924 80049D24 26730004 */  addiu      $s3, $s3, 4
/* 4A928 80049D28 26940004 */  addiu      $s4, $s4, 4
/* 4A92C 80049D2C 16B6FFEF */  bne        $s5, $s6, .L80049CEC
/* 4A930 80049D30 AE900000 */   sw        $s0, ($s4)
.L80049D34:
/* 4A934 80049D34 8FBF0034 */  lw         $ra, 0x34($sp)
/* 4A938 80049D38 02001025 */  or         $v0, $s0, $zero
/* 4A93C 80049D3C 8FB00014 */  lw         $s0, 0x14($sp)
/* 4A940 80049D40 8FB10018 */  lw         $s1, 0x18($sp)
/* 4A944 80049D44 8FB2001C */  lw         $s2, 0x1c($sp)
/* 4A948 80049D48 8FB30020 */  lw         $s3, 0x20($sp)
/* 4A94C 80049D4C 8FB40024 */  lw         $s4, 0x24($sp)
/* 4A950 80049D50 8FB50028 */  lw         $s5, 0x28($sp)
/* 4A954 80049D54 8FB6002C */  lw         $s6, 0x2c($sp)
/* 4A958 80049D58 8FB70030 */  lw         $s7, 0x30($sp)
/* 4A95C 80049D5C 03E00008 */  jr         $ra
/* 4A960 80049D60 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80049D64
/* 4A964 80049D64 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4A968 80049D68 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4A96C 80049D6C 00803025 */  or         $a2, $a0, $zero
/* 4A970 80049D70 14800007 */  bnez       $a0, .L80049D90
/* 4A974 80049D74 00A03825 */   or        $a3, $a1, $zero
/* 4A978 80049D78 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 4A97C 80049D7C 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 4A980 80049D80 0C00E03D */  jal        func_800380F4
/* 4A984 80049D84 2406003E */   addiu     $a2, $zero, 0x3e
/* 4A988 80049D88 10000019 */  b          .L80049DF0
/* 4A98C 80049D8C 8FBF0014 */   lw        $ra, 0x14($sp)
.L80049D90:
/* 4A990 80049D90 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 4A994 80049D94 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 4A998 80049D98 00C02825 */  or         $a1, $a2, $zero
/* 4A99C 80049D9C AFA60018 */  sw         $a2, 0x18($sp)
/* 4A9A0 80049DA0 0C00E13C */  jal        func_800384F0
/* 4A9A4 80049DA4 AFA7001C */   sw        $a3, 0x1c($sp)
/* 4A9A8 80049DA8 8FA7001C */  lw         $a3, 0x1c($sp)
/* 4A9AC 80049DAC 8FA60018 */  lw         $a2, 0x18($sp)
/* 4A9B0 80049DB0 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 4A9B4 80049DB4 0047082A */  slt        $at, $v0, $a3
/* 4A9B8 80049DB8 1020000C */  beqz       $at, .L80049DEC
/* 4A9BC 80049DBC 00C01025 */   or        $v0, $a2, $zero
/* 4A9C0 80049DC0 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 4A9C4 80049DC4 00C02825 */  or         $a1, $a2, $zero
/* 4A9C8 80049DC8 0C00E152 */  jal        func_80038548
/* 4A9CC 80049DCC AFA7001C */   sw        $a3, 0x1c($sp)
/* 4A9D0 80049DD0 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 4A9D4 80049DD4 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 4A9D8 80049DD8 8FA5001C */  lw         $a1, 0x1c($sp)
/* 4A9DC 80049DDC 0C00E03D */  jal        func_800380F4
/* 4A9E0 80049DE0 24060041 */   addiu     $a2, $zero, 0x41
/* 4A9E4 80049DE4 10000002 */  b          .L80049DF0
/* 4A9E8 80049DE8 8FBF0014 */   lw        $ra, 0x14($sp)
.L80049DEC:
/* 4A9EC 80049DEC 8FBF0014 */  lw         $ra, 0x14($sp)
.L80049DF0:
/* 4A9F0 80049DF0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4A9F4 80049DF4 03E00008 */  jr         $ra
/* 4A9F8 80049DF8 00000000 */   nop

glabel func_80049DFC
/* 4A9FC 80049DFC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4AA00 80049E00 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4AA04 80049E04 27A50018 */  addiu      $a1, $sp, 0x18
/* 4AA08 80049E08 0C00DEC7 */  jal        func_80037B1C
/* 4AA0C 80049E0C 24060004 */   addiu     $a2, $zero, 4
/* 4AA10 80049E10 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4AA14 80049E14 8FA20018 */  lw         $v0, 0x18($sp)
/* 4AA18 80049E18 27BD0020 */  addiu      $sp, $sp, 0x20
/* 4AA1C 80049E1C 03E00008 */  jr         $ra
/* 4AA20 80049E20 00000000 */   nop

glabel func_80049E24
/* 4AA24 80049E24 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4AA28 80049E28 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4AA2C 80049E2C 0C01277F */  jal        func_80049DFC
/* 4AA30 80049E30 00000000 */   nop
/* 4AA34 80049E34 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4AA38 80049E38 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4AA3C 80049E3C 03E00008 */  jr         $ra
/* 4AA40 80049E40 00000000 */   nop

glabel func_80049E44
/* 4AA44 80049E44 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 4AA48 80049E48 AFBF001C */  sw         $ra, 0x1c($sp)
/* 4AA4C 80049E4C AFB00018 */  sw         $s0, 0x18($sp)
/* 4AA50 80049E50 AFA40038 */  sw         $a0, 0x38($sp)
/* 4AA54 80049E54 00A08025 */  or         $s0, $a1, $zero
/* 4AA58 80049E58 AFA60040 */  sw         $a2, 0x40($sp)
/* 4AA5C 80049E5C 0C01277F */  jal        func_80049DFC
/* 4AA60 80049E60 00A02025 */   or        $a0, $a1, $zero
/* 4AA64 80049E64 8FA30038 */  lw         $v1, 0x38($sp)
/* 4AA68 80049E68 00403825 */  or         $a3, $v0, $zero
/* 4AA6C 80049E6C 000778C0 */  sll        $t7, $a3, 3
/* 4AA70 80049E70 10600009 */  beqz       $v1, .L80049E98
/* 4AA74 80049E74 25E70004 */   addiu     $a3, $t7, 4
/* 4AA78 80049E78 00037080 */  sll        $t6, $v1, 2
/* 4AA7C 80049E7C 020E2821 */  addu       $a1, $s0, $t6
/* 4AA80 80049E80 00A02025 */  or         $a0, $a1, $zero
/* 4AA84 80049E84 0C01277F */  jal        func_80049DFC
/* 4AA88 80049E88 AFA50020 */   sw        $a1, 0x20($sp)
/* 4AA8C 80049E8C 8FA50020 */  lw         $a1, 0x20($sp)
/* 4AA90 80049E90 10000003 */  b          .L80049EA0
/* 4AA94 80049E94 00403825 */   or        $a3, $v0, $zero
.L80049E98:
/* 4AA98 80049E98 0003C080 */  sll        $t8, $v1, 2
/* 4AA9C 80049E9C 02182821 */  addu       $a1, $s0, $t8
.L80049EA0:
/* 4AAA0 80049EA0 24A40004 */  addiu      $a0, $a1, 4
/* 4AAA4 80049EA4 0C01277F */  jal        func_80049DFC
/* 4AAA8 80049EA8 AFA70028 */   sw        $a3, 0x28($sp)
/* 4AAAC 80049EAC 8FA70028 */  lw         $a3, 0x28($sp)
/* 4AAB0 80049EB0 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 4AAB4 80049EB4 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 4AAB8 80049EB8 00472823 */  subu       $a1, $v0, $a3
/* 4AABC 80049EBC AFA50030 */  sw         $a1, 0x30($sp)
/* 4AAC0 80049EC0 0C00E075 */  jal        func_800381D4
/* 4AAC4 80049EC4 2406005F */   addiu     $a2, $zero, 0x5f
/* 4AAC8 80049EC8 8FA70028 */  lw         $a3, 0x28($sp)
/* 4AACC 80049ECC AFA20024 */  sw         $v0, 0x24($sp)
/* 4AAD0 80049ED0 00402825 */  or         $a1, $v0, $zero
/* 4AAD4 80049ED4 8FA60030 */  lw         $a2, 0x30($sp)
/* 4AAD8 80049ED8 0C00DEC7 */  jal        func_80037B1C
/* 4AADC 80049EDC 02072021 */   addu      $a0, $s0, $a3
/* 4AAE0 80049EE0 8FA40038 */  lw         $a0, 0x38($sp)
/* 4AAE4 80049EE4 0C0127CB */  jal        func_80049F2C
/* 4AAE8 80049EE8 02002825 */   or        $a1, $s0, $zero
/* 4AAEC 80049EEC 8FA40040 */  lw         $a0, 0x40($sp)
/* 4AAF0 80049EF0 0C012759 */  jal        func_80049D64
/* 4AAF4 80049EF4 00402825 */   or        $a1, $v0, $zero
/* 4AAF8 80049EF8 AFA20040 */  sw         $v0, 0x40($sp)
/* 4AAFC 80049EFC 8FA40024 */  lw         $a0, 0x24($sp)
/* 4AB00 80049F00 0C0127DD */  jal        func_80049F74
/* 4AB04 80049F04 00402825 */   or        $a1, $v0, $zero
/* 4AB08 80049F08 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 4AB0C 80049F0C 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 4AB10 80049F10 0C00E152 */  jal        func_80038548
/* 4AB14 80049F14 8FA50024 */   lw        $a1, 0x24($sp)
/* 4AB18 80049F18 8FBF001C */  lw         $ra, 0x1c($sp)
/* 4AB1C 80049F1C 8FA20040 */  lw         $v0, 0x40($sp)
/* 4AB20 80049F20 8FB00018 */  lw         $s0, 0x18($sp)
/* 4AB24 80049F24 03E00008 */  jr         $ra
/* 4AB28 80049F28 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80049F2C
/* 4AB2C 80049F2C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4AB30 80049F30 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4AB34 80049F34 AFA40018 */  sw         $a0, 0x18($sp)
/* 4AB38 80049F38 AFA5001C */  sw         $a1, 0x1c($sp)
/* 4AB3C 80049F3C 0C01277F */  jal        func_80049DFC
/* 4AB40 80049F40 00A02025 */   or        $a0, $a1, $zero
/* 4AB44 80049F44 8FAF0018 */  lw         $t7, 0x18($sp)
/* 4AB48 80049F48 8FAE001C */  lw         $t6, 0x1c($sp)
/* 4AB4C 80049F4C 00024080 */  sll        $t0, $v0, 2
/* 4AB50 80049F50 000FC080 */  sll        $t8, $t7, 2
/* 4AB54 80049F54 01D8C821 */  addu       $t9, $t6, $t8
/* 4AB58 80049F58 03282021 */  addu       $a0, $t9, $t0
/* 4AB5C 80049F5C 0C01277F */  jal        func_80049DFC
/* 4AB60 80049F60 24840004 */   addiu     $a0, $a0, 4
/* 4AB64 80049F64 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4AB68 80049F68 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4AB6C 80049F6C 03E00008 */  jr         $ra
/* 4AB70 80049F70 00000000 */   nop

glabel func_80049F74
/* 4AB74 80049F74 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 4AB78 80049F78 3C09800A */  lui        $t1, %hi(D_8009D984)
/* 4AB7C 80049F7C 2529D984 */  addiu      $t1, $t1, %lo(D_8009D984)
/* 4AB80 80049F80 91220000 */  lbu        $v0, ($t1)
/* 4AB84 80049F84 AFB00020 */  sw         $s0, 0x20($sp)
/* 4AB88 80049F88 AFBF0044 */  sw         $ra, 0x44($sp)
/* 4AB8C 80049F8C AFBE0040 */  sw         $fp, 0x40($sp)
/* 4AB90 80049F90 AFB7003C */  sw         $s7, 0x3c($sp)
/* 4AB94 80049F94 AFB60038 */  sw         $s6, 0x38($sp)
/* 4AB98 80049F98 AFB50034 */  sw         $s5, 0x34($sp)
/* 4AB9C 80049F9C AFB40030 */  sw         $s4, 0x30($sp)
/* 4ABA0 80049FA0 AFB3002C */  sw         $s3, 0x2c($sp)
/* 4ABA4 80049FA4 AFB20028 */  sw         $s2, 0x28($sp)
/* 4ABA8 80049FA8 AFB10024 */  sw         $s1, 0x24($sp)
/* 4ABAC 80049FAC 00A08025 */  or         $s0, $a1, $zero
/* 4ABB0 80049FB0 10400003 */  beqz       $v0, .L80049FC0
/* 4ABB4 80049FB4 AFA40084 */   sw        $a0, 0x84($sp)
.L80049FB8:
/* 4ABB8 80049FB8 1440FFFF */  bnez       $v0, .L80049FB8
/* 4ABBC 80049FBC 00000000 */   nop
.L80049FC0:
/* 4ABC0 80049FC0 244E0001 */  addiu      $t6, $v0, 1
/* 4ABC4 80049FC4 A12E0000 */  sb         $t6, ($t1)
/* 4ABC8 80049FC8 8C880004 */  lw         $t0, 4($a0)
/* 4ABCC 80049FCC 248F0008 */  addiu      $t7, $a0, 8
/* 4ABD0 80049FD0 AFAF0084 */  sw         $t7, 0x84($sp)
/* 4ABD4 80049FD4 00A81821 */  addu       $v1, $a1, $t0
/* 4ABD8 80049FD8 AFA3007C */  sw         $v1, 0x7c($sp)
/* 4ABDC 80049FDC 8DF9FFF8 */  lw         $t9, -8($t7)
/* 4ABE0 80049FE0 8FAB0084 */  lw         $t3, 0x84($sp)
/* 4ABE4 80049FE4 00A3082A */  slt        $at, $a1, $v1
/* 4ABE8 80049FE8 0721002B */  bgez       $t9, .L8004A098
/* 4ABEC 80049FEC 256E0001 */   addiu     $t6, $t3, 1
/* 4ABF0 80049FF0 19000115 */  blez       $t0, .L8004A448
/* 4ABF4 80049FF4 00001825 */   or        $v1, $zero, $zero
/* 4ABF8 80049FF8 31040003 */  andi       $a0, $t0, 3
/* 4ABFC 80049FFC 1080000C */  beqz       $a0, .L8004A030
/* 4AC00 8004A000 00801025 */   or        $v0, $a0, $zero
.L8004A004:
/* 4AC04 8004A004 8FAA0084 */  lw         $t2, 0x84($sp)
/* 4AC08 8004A008 24630001 */  addiu      $v1, $v1, 1
/* 4AC0C 8004A00C 26100001 */  addiu      $s0, $s0, 1
/* 4AC10 8004A010 914B0000 */  lbu        $t3, ($t2)
/* 4AC14 8004A014 A20BFFFF */  sb         $t3, -1($s0)
/* 4AC18 8004A018 8FAC0084 */  lw         $t4, 0x84($sp)
/* 4AC1C 8004A01C 258D0001 */  addiu      $t5, $t4, 1
/* 4AC20 8004A020 1443FFF8 */  bne        $v0, $v1, .L8004A004
/* 4AC24 8004A024 AFAD0084 */   sw        $t5, 0x84($sp)
/* 4AC28 8004A028 50680108 */  beql       $v1, $t0, .L8004A44C
/* 4AC2C 8004A02C 912D0000 */   lbu       $t5, ($t1)
.L8004A030:
/* 4AC30 8004A030 8FAE0084 */  lw         $t6, 0x84($sp)
/* 4AC34 8004A034 24630004 */  addiu      $v1, $v1, 4
/* 4AC38 8004A038 26100004 */  addiu      $s0, $s0, 4
/* 4AC3C 8004A03C 91CF0000 */  lbu        $t7, ($t6)
/* 4AC40 8004A040 A20FFFFC */  sb         $t7, -4($s0)
/* 4AC44 8004A044 8FB80084 */  lw         $t8, 0x84($sp)
/* 4AC48 8004A048 27190001 */  addiu      $t9, $t8, 1
/* 4AC4C 8004A04C AFB90084 */  sw         $t9, 0x84($sp)
/* 4AC50 8004A050 932A0000 */  lbu        $t2, ($t9)
/* 4AC54 8004A054 A20AFFFD */  sb         $t2, -3($s0)
/* 4AC58 8004A058 8FAB0084 */  lw         $t3, 0x84($sp)
/* 4AC5C 8004A05C 256C0001 */  addiu      $t4, $t3, 1
/* 4AC60 8004A060 AFAC0084 */  sw         $t4, 0x84($sp)
/* 4AC64 8004A064 918D0000 */  lbu        $t5, ($t4)
/* 4AC68 8004A068 A20DFFFE */  sb         $t5, -2($s0)
/* 4AC6C 8004A06C 8FAE0084 */  lw         $t6, 0x84($sp)
/* 4AC70 8004A070 25CF0001 */  addiu      $t7, $t6, 1
/* 4AC74 8004A074 AFAF0084 */  sw         $t7, 0x84($sp)
/* 4AC78 8004A078 91F80000 */  lbu        $t8, ($t7)
/* 4AC7C 8004A07C A218FFFF */  sb         $t8, -1($s0)
/* 4AC80 8004A080 8FB90084 */  lw         $t9, 0x84($sp)
/* 4AC84 8004A084 272A0001 */  addiu      $t2, $t9, 1
/* 4AC88 8004A088 1468FFE9 */  bne        $v1, $t0, .L8004A030
/* 4AC8C 8004A08C AFAA0084 */   sw        $t2, 0x84($sp)
/* 4AC90 8004A090 100000EE */  b          .L8004A44C
/* 4AC94 8004A094 912D0000 */   lbu       $t5, ($t1)
.L8004A098:
/* 4AC98 8004A098 916C0000 */  lbu        $t4, ($t3)
/* 4AC9C 8004A09C AFAE0084 */  sw         $t6, 0x84($sp)
/* 4ACA0 8004A0A0 25CA0001 */  addiu      $t2, $t6, 1
/* 4ACA4 8004A0A4 000C6A00 */  sll        $t5, $t4, 8
/* 4ACA8 8004A0A8 AFAD0074 */  sw         $t5, 0x74($sp)
/* 4ACAC 8004A0AC 91D80000 */  lbu        $t8, ($t6)
/* 4ACB0 8004A0B0 240C0007 */  addiu      $t4, $zero, 7
/* 4ACB4 8004A0B4 AFAC0078 */  sw         $t4, 0x78($sp)
/* 4ACB8 8004A0B8 01B8C821 */  addu       $t9, $t5, $t8
/* 4ACBC 8004A0BC AFB90074 */  sw         $t9, 0x74($sp)
/* 4ACC0 8004A0C0 102000E1 */  beqz       $at, .L8004A448
/* 4ACC4 8004A0C4 AFAA0084 */   sw        $t2, 0x84($sp)
/* 4ACC8 8004A0C8 3C158010 */  lui        $s5, %hi(D_800FB570)
/* 4ACCC 8004A0CC 3C148010 */  lui        $s4, %hi(D_800FB770)
/* 4ACD0 8004A0D0 3C118010 */  lui        $s1, %hi(D_800FB970)
/* 4ACD4 8004A0D4 2631B970 */  addiu      $s1, $s1, %lo(D_800FB970)
/* 4ACD8 8004A0D8 2694B770 */  addiu      $s4, $s4, %lo(D_800FB770)
/* 4ACDC 8004A0DC 26B5B570 */  addiu      $s5, $s5, %lo(D_800FB570)
/* 4ACE0 8004A0E0 AFA80070 */  sw         $t0, 0x70($sp)
/* 4ACE4 8004A0E4 27BE0078 */  addiu      $fp, $sp, 0x78
/* 4ACE8 8004A0E8 27B70074 */  addiu      $s7, $sp, 0x74
/* 4ACEC 8004A0EC 27B60084 */  addiu      $s6, $sp, 0x84
/* 4ACF0 8004A0F0 24040008 */  addiu      $a0, $zero, 8
.L8004A0F4:
/* 4ACF4 8004A0F4 02C02825 */  or         $a1, $s6, $zero
/* 4ACF8 8004A0F8 02E03025 */  or         $a2, $s7, $zero
/* 4ACFC 8004A0FC 0C01293B */  jal        func_8004A4EC
/* 4AD00 8004A100 03C03825 */   or        $a3, $fp, $zero
/* 4AD04 8004A104 00409825 */  or         $s3, $v0, $zero
/* 4AD08 8004A108 24040008 */  addiu      $a0, $zero, 8
/* 4AD0C 8004A10C 02C02825 */  or         $a1, $s6, $zero
/* 4AD10 8004A110 02E03025 */  or         $a2, $s7, $zero
/* 4AD14 8004A114 0C01293B */  jal        func_8004A4EC
/* 4AD18 8004A118 03C03825 */   or        $a3, $fp, $zero
/* 4AD1C 8004A11C 00136A00 */  sll        $t5, $s3, 8
/* 4AD20 8004A120 3C018010 */  lui        $at, %hi(D_800FDB70)
/* 4AD24 8004A124 004D9021 */  addu       $s2, $v0, $t5
/* 4AD28 8004A128 AC31DB70 */  sw         $s1, %lo(D_800FDB70)($at)
/* 4AD2C 8004A12C 24040005 */  addiu      $a0, $zero, 5
/* 4AD30 8004A130 24050003 */  addiu      $a1, $zero, 3
/* 4AD34 8004A134 02C03025 */  or         $a2, $s6, $zero
/* 4AD38 8004A138 02E03825 */  or         $a3, $s7, $zero
/* 4AD3C 8004A13C 0C01294B */  jal        func_8004A52C
/* 4AD40 8004A140 AFBE0010 */   sw        $fp, 0x10($sp)
/* 4AD44 8004A144 02C02025 */  or         $a0, $s6, $zero
/* 4AD48 8004A148 02E02825 */  or         $a1, $s7, $zero
/* 4AD4C 8004A14C 0C0129CE */  jal        func_8004A738
/* 4AD50 8004A150 03C03025 */   or        $a2, $fp, $zero
/* 4AD54 8004A154 24040004 */  addiu      $a0, $zero, 4
/* 4AD58 8004A158 00002825 */  or         $a1, $zero, $zero
/* 4AD5C 8004A15C 02C03025 */  or         $a2, $s6, $zero
/* 4AD60 8004A160 02E03825 */  or         $a3, $s7, $zero
/* 4AD64 8004A164 0C01294B */  jal        func_8004A52C
/* 4AD68 8004A168 AFBE0010 */   sw        $fp, 0x10($sp)
/* 4AD6C 8004A16C 1A4000AF */  blez       $s2, .L8004A42C
/* 4AD70 8004A170 8FA40078 */   lw        $a0, 0x78($sp)
.L8004A174:
/* 4AD74 8004A174 8FAB0074 */  lw         $t3, 0x74($sp)
/* 4AD78 8004A178 2652FFFF */  addiu      $s2, $s2, -1
/* 4AD7C 8004A17C 008B7807 */  srav       $t7, $t3, $a0
/* 4AD80 8004A180 31F801FE */  andi       $t8, $t7, 0x1fe
/* 4AD84 8004A184 0298C821 */  addu       $t9, $s4, $t8
/* 4AD88 8004A188 97220000 */  lhu        $v0, ($t9)
/* 4AD8C 8004A18C 00027400 */  sll        $t6, $v0, 0x10
/* 4AD90 8004A190 05C3001C */  bgezl      $t6, .L8004A204
/* 4AD94 8004A194 00026A43 */   sra       $t5, $v0, 9
/* 4AD98 8004A198 2484FFFC */  addiu      $a0, $a0, -4
.L8004A19C:
/* 4AD9C 8004A19C 0483000F */  bgezl      $a0, .L8004A1DC
/* 4ADA0 8004A1A0 8FAF0074 */   lw        $t7, 0x74($sp)
/* 4ADA4 8004A1A4 8FAA0084 */  lw         $t2, 0x84($sp)
/* 4ADA8 8004A1A8 8FAD0074 */  lw         $t5, 0x74($sp)
/* 4ADAC 8004A1AC AFA40078 */  sw         $a0, 0x78($sp)
/* 4ADB0 8004A1B0 914C0000 */  lbu        $t4, ($t2)
/* 4ADB4 8004A1B4 31AB00FF */  andi       $t3, $t5, 0xff
/* 4ADB8 8004A1B8 000B7A00 */  sll        $t7, $t3, 8
/* 4ADBC 8004A1BC 248D0008 */  addiu      $t5, $a0, 8
/* 4ADC0 8004A1C0 25590001 */  addiu      $t9, $t2, 1
/* 4ADC4 8004A1C4 018FC021 */  addu       $t8, $t4, $t7
/* 4ADC8 8004A1C8 AFB80074 */  sw         $t8, 0x74($sp)
/* 4ADCC 8004A1CC AFB90084 */  sw         $t9, 0x84($sp)
/* 4ADD0 8004A1D0 AFAD0078 */  sw         $t5, 0x78($sp)
/* 4ADD4 8004A1D4 01A02025 */  or         $a0, $t5, $zero
/* 4ADD8 8004A1D8 8FAF0074 */  lw         $t7, 0x74($sp)
.L8004A1DC:
/* 4ADDC 8004A1DC 304B7FFF */  andi       $t3, $v0, 0x7fff
/* 4ADE0 8004A1E0 022B6021 */  addu       $t4, $s1, $t3
/* 4ADE4 8004A1E4 008FC007 */  srav       $t8, $t7, $a0
/* 4ADE8 8004A1E8 330A001E */  andi       $t2, $t8, 0x1e
/* 4ADEC 8004A1EC 018AC821 */  addu       $t9, $t4, $t2
/* 4ADF0 8004A1F0 97220000 */  lhu        $v0, ($t9)
/* 4ADF4 8004A1F4 00027400 */  sll        $t6, $v0, 0x10
/* 4ADF8 8004A1F8 05C2FFE8 */  bltzl      $t6, .L8004A19C
/* 4ADFC 8004A1FC 2484FFFC */   addiu     $a0, $a0, -4
/* 4AE00 8004A200 00026A43 */  sra        $t5, $v0, 9
.L8004A204:
/* 4AE04 8004A204 008D2023 */  subu       $a0, $a0, $t5
/* 4AE08 8004A208 0481000C */  bgez       $a0, .L8004A23C
/* 4AE0C 8004A20C AFA40078 */   sw        $a0, 0x78($sp)
/* 4AE10 8004A210 8FAB0084 */  lw         $t3, 0x84($sp)
/* 4AE14 8004A214 8FB80074 */  lw         $t8, 0x74($sp)
/* 4AE18 8004A218 916F0000 */  lbu        $t7, ($t3)
/* 4AE1C 8004A21C 330C00FF */  andi       $t4, $t8, 0xff
/* 4AE20 8004A220 000C5200 */  sll        $t2, $t4, 8
/* 4AE24 8004A224 24980008 */  addiu      $t8, $a0, 8
/* 4AE28 8004A228 256E0001 */  addiu      $t6, $t3, 1
/* 4AE2C 8004A22C 01EAC821 */  addu       $t9, $t7, $t2
/* 4AE30 8004A230 AFB90074 */  sw         $t9, 0x74($sp)
/* 4AE34 8004A234 AFAE0084 */  sw         $t6, 0x84($sp)
/* 4AE38 8004A238 AFB80078 */  sw         $t8, 0x78($sp)
.L8004A23C:
/* 4AE3C 8004A23C 304C01FF */  andi       $t4, $v0, 0x1ff
/* 4AE40 8004A240 29810100 */  slti       $at, $t4, 0x100
/* 4AE44 8004A244 8FA40078 */  lw         $a0, 0x78($sp)
/* 4AE48 8004A248 10200004 */  beqz       $at, .L8004A25C
/* 4AE4C 8004A24C 01801025 */   or        $v0, $t4, $zero
/* 4AE50 8004A250 A20C0000 */  sb         $t4, ($s0)
/* 4AE54 8004A254 10000073 */  b          .L8004A424
/* 4AE58 8004A258 26100001 */   addiu     $s0, $s0, 1
.L8004A25C:
/* 4AE5C 8004A25C 8FAF0074 */  lw         $t7, 0x74($sp)
/* 4AE60 8004A260 2447FF03 */  addiu      $a3, $v0, -0xfd
/* 4AE64 8004A264 2448FF03 */  addiu      $t0, $v0, -0xfd
/* 4AE68 8004A268 008F5007 */  srav       $t2, $t7, $a0
/* 4AE6C 8004A26C 315901FE */  andi       $t9, $t2, 0x1fe
/* 4AE70 8004A270 02B95821 */  addu       $t3, $s5, $t9
/* 4AE74 8004A274 95630000 */  lhu        $v1, ($t3)
/* 4AE78 8004A278 00037400 */  sll        $t6, $v1, 0x10
/* 4AE7C 8004A27C 05C3001C */  bgezl      $t6, .L8004A2F0
/* 4AE80 8004A280 00036243 */   sra       $t4, $v1, 9
/* 4AE84 8004A284 2484FFFC */  addiu      $a0, $a0, -4
.L8004A288:
/* 4AE88 8004A288 0483000F */  bgezl      $a0, .L8004A2C8
/* 4AE8C 8004A28C 8FAA0074 */   lw        $t2, 0x74($sp)
/* 4AE90 8004A290 8FAD0084 */  lw         $t5, 0x84($sp)
/* 4AE94 8004A294 8FAC0074 */  lw         $t4, 0x74($sp)
/* 4AE98 8004A298 AFA40078 */  sw         $a0, 0x78($sp)
/* 4AE9C 8004A29C 91B80000 */  lbu        $t8, ($t5)
/* 4AEA0 8004A2A0 318F00FF */  andi       $t7, $t4, 0xff
/* 4AEA4 8004A2A4 000F5200 */  sll        $t2, $t7, 8
/* 4AEA8 8004A2A8 248C0008 */  addiu      $t4, $a0, 8
/* 4AEAC 8004A2AC 25AB0001 */  addiu      $t3, $t5, 1
/* 4AEB0 8004A2B0 030AC821 */  addu       $t9, $t8, $t2
/* 4AEB4 8004A2B4 AFB90074 */  sw         $t9, 0x74($sp)
/* 4AEB8 8004A2B8 AFAB0084 */  sw         $t3, 0x84($sp)
/* 4AEBC 8004A2BC AFAC0078 */  sw         $t4, 0x78($sp)
/* 4AEC0 8004A2C0 01802025 */  or         $a0, $t4, $zero
/* 4AEC4 8004A2C4 8FAA0074 */  lw         $t2, 0x74($sp)
.L8004A2C8:
/* 4AEC8 8004A2C8 306F7FFF */  andi       $t7, $v1, 0x7fff
/* 4AECC 8004A2CC 022FC021 */  addu       $t8, $s1, $t7
/* 4AED0 8004A2D0 008AC807 */  srav       $t9, $t2, $a0
/* 4AED4 8004A2D4 332D001E */  andi       $t5, $t9, 0x1e
/* 4AED8 8004A2D8 030D5821 */  addu       $t3, $t8, $t5
/* 4AEDC 8004A2DC 95630000 */  lhu        $v1, ($t3)
/* 4AEE0 8004A2E0 00037400 */  sll        $t6, $v1, 0x10
/* 4AEE4 8004A2E4 05C2FFE8 */  bltzl      $t6, .L8004A288
/* 4AEE8 8004A2E8 2484FFFC */   addiu     $a0, $a0, -4
/* 4AEEC 8004A2EC 00036243 */  sra        $t4, $v1, 9
.L8004A2F0:
/* 4AEF0 8004A2F0 008C2023 */  subu       $a0, $a0, $t4
/* 4AEF4 8004A2F4 0483000F */  bgezl      $a0, .L8004A334
/* 4AEF8 8004A2F8 307801FF */   andi      $t8, $v1, 0x1ff
/* 4AEFC 8004A2FC 8FAF0084 */  lw         $t7, 0x84($sp)
/* 4AF00 8004A300 8FB90074 */  lw         $t9, 0x74($sp)
/* 4AF04 8004A304 AFA40078 */  sw         $a0, 0x78($sp)
/* 4AF08 8004A308 91EA0000 */  lbu        $t2, ($t7)
/* 4AF0C 8004A30C 333800FF */  andi       $t8, $t9, 0xff
/* 4AF10 8004A310 00186A00 */  sll        $t5, $t8, 8
/* 4AF14 8004A314 24990008 */  addiu      $t9, $a0, 8
/* 4AF18 8004A318 25EE0001 */  addiu      $t6, $t7, 1
/* 4AF1C 8004A31C 014D5821 */  addu       $t3, $t2, $t5
/* 4AF20 8004A320 AFAB0074 */  sw         $t3, 0x74($sp)
/* 4AF24 8004A324 AFAE0084 */  sw         $t6, 0x84($sp)
/* 4AF28 8004A328 AFB90078 */  sw         $t9, 0x78($sp)
/* 4AF2C 8004A32C 03202025 */  or         $a0, $t9, $zero
/* 4AF30 8004A330 307801FF */  andi       $t8, $v1, 0x1ff
.L8004A334:
/* 4AF34 8004A334 2B010002 */  slti       $at, $t8, 2
/* 4AF38 8004A338 03001825 */  or         $v1, $t8, $zero
/* 4AF3C 8004A33C 14200019 */  bnez       $at, .L8004A3A4
/* 4AF40 8004A340 0018302B */   sltu      $a2, $zero, $t8
/* 4AF44 8004A344 8FAD0074 */  lw         $t5, 0x74($sp)
.L8004A348:
/* 4AF48 8004A348 00065040 */  sll        $t2, $a2, 1
/* 4AF4C 8004A34C 2463FFFF */  addiu      $v1, $v1, -1
/* 4AF50 8004A350 008D5807 */  srav       $t3, $t5, $a0
/* 4AF54 8004A354 316F01FF */  andi       $t7, $t3, 0x1ff
/* 4AF58 8004A358 000F7203 */  sra        $t6, $t7, 8
/* 4AF5C 8004A35C 2484FFFF */  addiu      $a0, $a0, -1
/* 4AF60 8004A360 0481000D */  bgez       $a0, .L8004A398
/* 4AF64 8004A364 014E3021 */   addu      $a2, $t2, $t6
/* 4AF68 8004A368 8FAC0084 */  lw         $t4, 0x84($sp)
/* 4AF6C 8004A36C AFA40078 */  sw         $a0, 0x78($sp)
/* 4AF70 8004A370 31B800FF */  andi       $t8, $t5, 0xff
/* 4AF74 8004A374 91990000 */  lbu        $t9, ($t4)
/* 4AF78 8004A378 00185A00 */  sll        $t3, $t8, 8
/* 4AF7C 8004A37C 248D0008 */  addiu      $t5, $a0, 8
/* 4AF80 8004A380 258A0001 */  addiu      $t2, $t4, 1
/* 4AF84 8004A384 032B7821 */  addu       $t7, $t9, $t3
/* 4AF88 8004A388 AFAF0074 */  sw         $t7, 0x74($sp)
/* 4AF8C 8004A38C AFAA0084 */  sw         $t2, 0x84($sp)
/* 4AF90 8004A390 AFAD0078 */  sw         $t5, 0x78($sp)
/* 4AF94 8004A394 01A02025 */  or         $a0, $t5, $zero
.L8004A398:
/* 4AF98 8004A398 28610002 */  slti       $at, $v1, 2
/* 4AF9C 8004A39C 5020FFEA */  beql       $at, $zero, .L8004A348
/* 4AFA0 8004A3A0 8FAD0074 */   lw        $t5, 0x74($sp)
.L8004A3A4:
/* 4AFA4 8004A3A4 00001825 */  or         $v1, $zero, $zero
/* 4AFA8 8004A3A8 18E0001E */  blez       $a3, .L8004A424
/* 4AFAC 8004A3AC AFA40078 */   sw        $a0, 0x78($sp)
/* 4AFB0 8004A3B0 31180003 */  andi       $t8, $t0, 3
/* 4AFB4 8004A3B4 1300000B */  beqz       $t8, .L8004A3E4
/* 4AFB8 8004A3B8 03002825 */   or        $a1, $t8, $zero
/* 4AFBC 8004A3BC 02061023 */  subu       $v0, $s0, $a2
/* 4AFC0 8004A3C0 AFA40078 */  sw         $a0, 0x78($sp)
.L8004A3C4:
/* 4AFC4 8004A3C4 9059FFFF */  lbu        $t9, -1($v0)
/* 4AFC8 8004A3C8 24630001 */  addiu      $v1, $v1, 1
/* 4AFCC 8004A3CC 26100001 */  addiu      $s0, $s0, 1
/* 4AFD0 8004A3D0 24420001 */  addiu      $v0, $v0, 1
/* 4AFD4 8004A3D4 14A3FFFB */  bne        $a1, $v1, .L8004A3C4
/* 4AFD8 8004A3D8 A219FFFF */   sb        $t9, -1($s0)
/* 4AFDC 8004A3DC 10670010 */  beq        $v1, $a3, .L8004A420
/* 4AFE0 8004A3E0 8FA40078 */   lw        $a0, 0x78($sp)
.L8004A3E4:
/* 4AFE4 8004A3E4 02061023 */  subu       $v0, $s0, $a2
/* 4AFE8 8004A3E8 AFA40078 */  sw         $a0, 0x78($sp)
.L8004A3EC:
/* 4AFEC 8004A3EC 904BFFFF */  lbu        $t3, -1($v0)
/* 4AFF0 8004A3F0 24630004 */  addiu      $v1, $v1, 4
/* 4AFF4 8004A3F4 26100004 */  addiu      $s0, $s0, 4
/* 4AFF8 8004A3F8 A20BFFFC */  sb         $t3, -4($s0)
/* 4AFFC 8004A3FC 904F0000 */  lbu        $t7, ($v0)
/* 4B000 8004A400 24420004 */  addiu      $v0, $v0, 4
/* 4B004 8004A404 A20FFFFD */  sb         $t7, -3($s0)
/* 4B008 8004A408 904CFFFD */  lbu        $t4, -3($v0)
/* 4B00C 8004A40C A20CFFFE */  sb         $t4, -2($s0)
/* 4B010 8004A410 904AFFFE */  lbu        $t2, -2($v0)
/* 4B014 8004A414 1467FFF5 */  bne        $v1, $a3, .L8004A3EC
/* 4B018 8004A418 A20AFFFF */   sb        $t2, -1($s0)
/* 4B01C 8004A41C 8FA40078 */  lw         $a0, 0x78($sp)
.L8004A420:
/* 4B020 8004A420 AFA40078 */  sw         $a0, 0x78($sp)
.L8004A424:
/* 4B024 8004A424 1E40FF53 */  bgtz       $s2, .L8004A174
/* 4B028 8004A428 8FA40078 */   lw        $a0, 0x78($sp)
.L8004A42C:
/* 4B02C 8004A42C 8FAE007C */  lw         $t6, 0x7c($sp)
/* 4B030 8004A430 020E082A */  slt        $at, $s0, $t6
/* 4B034 8004A434 5420FF2F */  bnel       $at, $zero, .L8004A0F4
/* 4B038 8004A438 24040008 */   addiu     $a0, $zero, 8
/* 4B03C 8004A43C 3C09800A */  lui        $t1, %hi(D_8009D984)
/* 4B040 8004A440 2529D984 */  addiu      $t1, $t1, %lo(D_8009D984)
/* 4B044 8004A444 8FA80070 */  lw         $t0, 0x70($sp)
.L8004A448:
/* 4B048 8004A448 912D0000 */  lbu        $t5, ($t1)
.L8004A44C:
/* 4B04C 8004A44C 8FBF0044 */  lw         $ra, 0x44($sp)
/* 4B050 8004A450 8FB00020 */  lw         $s0, 0x20($sp)
/* 4B054 8004A454 8FB10024 */  lw         $s1, 0x24($sp)
/* 4B058 8004A458 8FB20028 */  lw         $s2, 0x28($sp)
/* 4B05C 8004A45C 8FB3002C */  lw         $s3, 0x2c($sp)
/* 4B060 8004A460 8FB40030 */  lw         $s4, 0x30($sp)
/* 4B064 8004A464 8FB50034 */  lw         $s5, 0x34($sp)
/* 4B068 8004A468 8FB60038 */  lw         $s6, 0x38($sp)
/* 4B06C 8004A46C 8FB7003C */  lw         $s7, 0x3c($sp)
/* 4B070 8004A470 8FBE0040 */  lw         $fp, 0x40($sp)
/* 4B074 8004A474 25B8FFFF */  addiu      $t8, $t5, -1
/* 4B078 8004A478 A1380000 */  sb         $t8, ($t1)
/* 4B07C 8004A47C 27BD0088 */  addiu      $sp, $sp, 0x88
/* 4B080 8004A480 03E00008 */  jr         $ra
/* 4B084 8004A484 01001025 */   or        $v0, $t0, $zero

glabel func_8004A488
/* 4B088 8004A488 AFA40000 */  sw         $a0, ($sp)
/* 4B08C 8004A48C AFA50004 */  sw         $a1, 4($sp)
/* 4B090 8004A490 AFA60008 */  sw         $a2, 8($sp)
/* 4B094 8004A494 03E00008 */  jr         $ra
/* 4B098 8004A498 00001025 */   or        $v0, $zero, $zero

glabel func_8004A49C
/* 4B09C 8004A49C 8CEE0000 */  lw         $t6, ($a3)
/* 4B0A0 8004A4A0 01C47823 */  subu       $t7, $t6, $a0
/* 4B0A4 8004A4A4 05E1000F */  bgez       $t7, .L8004A4E4
/* 4B0A8 8004A4A8 ACEF0000 */   sw        $t7, ($a3)
.L8004A4AC:
/* 4B0AC 8004A4AC 8CB90000 */  lw         $t9, ($a1)
/* 4B0B0 8004A4B0 8CC90000 */  lw         $t1, ($a2)
/* 4B0B4 8004A4B4 93280000 */  lbu        $t0, ($t9)
/* 4B0B8 8004A4B8 312A00FF */  andi       $t2, $t1, 0xff
/* 4B0BC 8004A4BC 000A5A00 */  sll        $t3, $t2, 8
/* 4B0C0 8004A4C0 010B6021 */  addu       $t4, $t0, $t3
/* 4B0C4 8004A4C4 ACCC0000 */  sw         $t4, ($a2)
/* 4B0C8 8004A4C8 8CAD0000 */  lw         $t5, ($a1)
/* 4B0CC 8004A4CC 25AE0001 */  addiu      $t6, $t5, 1
/* 4B0D0 8004A4D0 ACAE0000 */  sw         $t6, ($a1)
/* 4B0D4 8004A4D4 8CEF0000 */  lw         $t7, ($a3)
/* 4B0D8 8004A4D8 25F80008 */  addiu      $t8, $t7, 8
/* 4B0DC 8004A4DC 0700FFF3 */  bltz       $t8, .L8004A4AC
/* 4B0E0 8004A4E0 ACF80000 */   sw        $t8, ($a3)
.L8004A4E4:
/* 4B0E4 8004A4E4 03E00008 */  jr         $ra
/* 4B0E8 8004A4E8 00000000 */   nop

glabel func_8004A4EC
/* 4B0EC 8004A4EC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 4B0F0 8004A4F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4B0F4 8004A4F4 8CEF0000 */  lw         $t7, ($a3)
/* 4B0F8 8004A4F8 8CCE0000 */  lw         $t6, ($a2)
/* 4B0FC 8004A4FC 24080009 */  addiu      $t0, $zero, 9
/* 4B100 8004A500 01044823 */  subu       $t1, $t0, $a0
/* 4B104 8004A504 01EEC007 */  srav       $t8, $t6, $t7
/* 4B108 8004A508 331901FF */  andi       $t9, $t8, 0x1ff
/* 4B10C 8004A50C 01395007 */  srav       $t2, $t9, $t1
/* 4B110 8004A510 0C012927 */  jal        func_8004A49C
/* 4B114 8004A514 AFAA001C */   sw        $t2, 0x1c($sp)
/* 4B118 8004A518 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4B11C 8004A51C 8FA2001C */  lw         $v0, 0x1c($sp)
/* 4B120 8004A520 27BD0020 */  addiu      $sp, $sp, 0x20
/* 4B124 8004A524 03E00008 */  jr         $ra
/* 4B128 8004A528 00000000 */   nop

glabel func_8004A52C
/* 4B12C 8004A52C 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 4B130 8004A530 AFB40028 */  sw         $s4, 0x28($sp)
/* 4B134 8004A534 00A0A025 */  or         $s4, $a1, $zero
/* 4B138 8004A538 AFB5002C */  sw         $s5, 0x2c($sp)
/* 4B13C 8004A53C AFB30024 */  sw         $s3, 0x24($sp)
/* 4B140 8004A540 8FB30078 */  lw         $s3, 0x78($sp)
/* 4B144 8004A544 00C0A825 */  or         $s5, $a2, $zero
/* 4B148 8004A548 AFB20020 */  sw         $s2, 0x20($sp)
/* 4B14C 8004A54C 00C02825 */  or         $a1, $a2, $zero
/* 4B150 8004A550 00E09025 */  or         $s2, $a3, $zero
/* 4B154 8004A554 AFBF003C */  sw         $ra, 0x3c($sp)
/* 4B158 8004A558 AFB60030 */  sw         $s6, 0x30($sp)
/* 4B15C 8004A55C AFB1001C */  sw         $s1, 0x1c($sp)
/* 4B160 8004A560 AFB00018 */  sw         $s0, 0x18($sp)
/* 4B164 8004A564 00E03025 */  or         $a2, $a3, $zero
/* 4B168 8004A568 00808025 */  or         $s0, $a0, $zero
/* 4B16C 8004A56C AFBE0038 */  sw         $fp, 0x38($sp)
/* 4B170 8004A570 AFB70034 */  sw         $s7, 0x34($sp)
/* 4B174 8004A574 00008825 */  or         $s1, $zero, $zero
/* 4B178 8004A578 0000B025 */  or         $s6, $zero, $zero
/* 4B17C 8004A57C 0C01293B */  jal        func_8004A4EC
/* 4B180 8004A580 02603825 */   or        $a3, $s3, $zero
/* 4B184 8004A584 14400014 */  bnez       $v0, .L8004A5D8
/* 4B188 8004A588 AFA20064 */   sw        $v0, 0x64($sp)
/* 4B18C 8004A58C 02002025 */  or         $a0, $s0, $zero
/* 4B190 8004A590 02A02825 */  or         $a1, $s5, $zero
/* 4B194 8004A594 02403025 */  or         $a2, $s2, $zero
/* 4B198 8004A598 0C01293B */  jal        func_8004A4EC
/* 4B19C 8004A59C 02603825 */   or        $a3, $s3, $zero
/* 4B1A0 8004A5A0 3C0F8010 */  lui        $t7, %hi(D_800FB570)
/* 4B1A4 8004A5A4 25EFB570 */  addiu      $t7, $t7, %lo(D_800FB570)
/* 4B1A8 8004A5A8 00117040 */  sll        $t6, $s1, 1
/* 4B1AC 8004A5AC 3C048010 */  lui        $a0, %hi(D_800FB770)
/* 4B1B0 8004A5B0 2484B770 */  addiu      $a0, $a0, %lo(D_800FB770)
/* 4B1B4 8004A5B4 01CF1821 */  addu       $v1, $t6, $t7
.L8004A5B8:
/* 4B1B8 8004A5B8 24630008 */  addiu      $v1, $v1, 8
/* 4B1BC 8004A5BC A462FFFA */  sh         $v0, -6($v1)
/* 4B1C0 8004A5C0 A462FFFC */  sh         $v0, -4($v1)
/* 4B1C4 8004A5C4 A462FFFE */  sh         $v0, -2($v1)
/* 4B1C8 8004A5C8 1464FFFB */  bne        $v1, $a0, .L8004A5B8
/* 4B1CC 8004A5CC A462FFF8 */   sh        $v0, -8($v1)
/* 4B1D0 8004A5D0 1000004E */  b          .L8004A70C
/* 4B1D4 8004A5D4 8FBF003C */   lw        $ra, 0x3c($sp)
.L8004A5D8:
/* 4B1D8 8004A5D8 18400046 */  blez       $v0, .L8004A6F4
/* 4B1DC 8004A5DC 0011C040 */   sll       $t8, $s1, 1
/* 4B1E0 8004A5E0 8FA80064 */  lw         $t0, 0x64($sp)
/* 4B1E4 8004A5E4 3C198010 */  lui        $t9, %hi(D_800FB170)
/* 4B1E8 8004A5E8 2739B170 */  addiu      $t9, $t9, %lo(D_800FB170)
/* 4B1EC 8004A5EC 00084840 */  sll        $t1, $t0, 1
/* 4B1F0 8004A5F0 01395021 */  addu       $t2, $t1, $t9
/* 4B1F4 8004A5F4 3C1E800A */  lui        $fp, %hi(D_8009D960)
/* 4B1F8 8004A5F8 27DED960 */  addiu      $fp, $fp, %lo(D_8009D960)
/* 4B1FC 8004A5FC AFAA0044 */  sw         $t2, 0x44($sp)
/* 4B200 8004A600 03198021 */  addu       $s0, $t8, $t9
/* 4B204 8004A604 24170017 */  addiu      $s7, $zero, 0x17
/* 4B208 8004A608 24040003 */  addiu      $a0, $zero, 3
.L8004A60C:
/* 4B20C 8004A60C 02A02825 */  or         $a1, $s5, $zero
/* 4B210 8004A610 02403025 */  or         $a2, $s2, $zero
/* 4B214 8004A614 0C01293B */  jal        func_8004A4EC
/* 4B218 8004A618 02603825 */   or        $a3, $s3, $zero
/* 4B21C 8004A61C 28410007 */  slti       $at, $v0, 7
/* 4B220 8004A620 14200011 */  bnez       $at, .L8004A668
/* 4B224 8004A624 00401825 */   or        $v1, $v0, $zero
/* 4B228 8004A628 8E6C0000 */  lw         $t4, ($s3)
/* 4B22C 8004A62C 8E4B0000 */  lw         $t3, ($s2)
/* 4B230 8004A630 24110001 */  addiu      $s1, $zero, 1
/* 4B234 8004A634 02EC6823 */  subu       $t5, $s7, $t4
/* 4B238 8004A638 01AB1804 */  sllv       $v1, $t3, $t5
/* 4B23C 8004A63C 04610005 */  bgez       $v1, .L8004A654
/* 4B240 8004A640 02A02825 */   or        $a1, $s5, $zero
.L8004A644:
/* 4B244 8004A644 00037040 */  sll        $t6, $v1, 1
/* 4B248 8004A648 26310001 */  addiu      $s1, $s1, 1
/* 4B24C 8004A64C 05C0FFFD */  bltz       $t6, .L8004A644
/* 4B250 8004A650 01C01825 */   or        $v1, $t6, $zero
.L8004A654:
/* 4B254 8004A654 02202025 */  or         $a0, $s1, $zero
/* 4B258 8004A658 02403025 */  or         $a2, $s2, $zero
/* 4B25C 8004A65C 0C012927 */  jal        func_8004A49C
/* 4B260 8004A660 02603825 */   or        $a3, $s3, $zero
/* 4B264 8004A664 26230006 */  addiu      $v1, $s1, 6
.L8004A668:
/* 4B268 8004A668 00037840 */  sll        $t7, $v1, 1
/* 4B26C 8004A66C 03CFC021 */  addu       $t8, $fp, $t7
/* 4B270 8004A670 97080000 */  lhu        $t0, ($t8)
/* 4B274 8004A674 2694FFFF */  addiu      $s4, $s4, -1
/* 4B278 8004A678 A6030000 */  sh         $v1, ($s0)
/* 4B27C 8004A67C 26100002 */  addiu      $s0, $s0, 2
/* 4B280 8004A680 16800018 */  bnez       $s4, .L8004A6E4
/* 4B284 8004A684 02C8B021 */   addu      $s6, $s6, $t0
/* 4B288 8004A688 24040002 */  addiu      $a0, $zero, 2
/* 4B28C 8004A68C 02A02825 */  or         $a1, $s5, $zero
/* 4B290 8004A690 02403025 */  or         $a2, $s2, $zero
/* 4B294 8004A694 0C01293B */  jal        func_8004A4EC
/* 4B298 8004A698 02603825 */   or        $a3, $s3, $zero
/* 4B29C 8004A69C 18400011 */  blez       $v0, .L8004A6E4
/* 4B2A0 8004A6A0 00401825 */   or        $v1, $v0, $zero
/* 4B2A4 8004A6A4 30450003 */  andi       $a1, $v0, 3
/* 4B2A8 8004A6A8 00052823 */  negu       $a1, $a1
/* 4B2AC 8004A6AC 10A00006 */  beqz       $a1, .L8004A6C8
/* 4B2B0 8004A6B0 00A22021 */   addu      $a0, $a1, $v0
.L8004A6B4:
/* 4B2B4 8004A6B4 2463FFFF */  addiu      $v1, $v1, -1
/* 4B2B8 8004A6B8 A6000000 */  sh         $zero, ($s0)
/* 4B2BC 8004A6BC 1483FFFD */  bne        $a0, $v1, .L8004A6B4
/* 4B2C0 8004A6C0 26100002 */   addiu     $s0, $s0, 2
/* 4B2C4 8004A6C4 10600007 */  beqz       $v1, .L8004A6E4
.L8004A6C8:
/* 4B2C8 8004A6C8 2463FFFC */   addiu     $v1, $v1, -4
/* 4B2CC 8004A6CC A6000000 */  sh         $zero, ($s0)
/* 4B2D0 8004A6D0 A6000002 */  sh         $zero, 2($s0)
/* 4B2D4 8004A6D4 A6000004 */  sh         $zero, 4($s0)
/* 4B2D8 8004A6D8 A6000006 */  sh         $zero, 6($s0)
/* 4B2DC 8004A6DC 1460FFFA */  bnez       $v1, .L8004A6C8
/* 4B2E0 8004A6E0 26100008 */   addiu     $s0, $s0, 8
.L8004A6E4:
/* 4B2E4 8004A6E4 8FA90044 */  lw         $t1, 0x44($sp)
/* 4B2E8 8004A6E8 0209082B */  sltu       $at, $s0, $t1
/* 4B2EC 8004A6EC 5420FFC7 */  bnel       $at, $zero, .L8004A60C
/* 4B2F0 8004A6F0 24040003 */   addiu     $a0, $zero, 3
.L8004A6F4:
/* 4B2F4 8004A6F4 3C068010 */  lui        $a2, %hi(D_800FB570)
/* 4B2F8 8004A6F8 24C6B570 */  addiu      $a2, $a2, %lo(D_800FB570)
/* 4B2FC 8004A6FC 8FA40064 */  lw         $a0, 0x64($sp)
/* 4B300 8004A700 0C012A29 */  jal        func_8004A8A4
/* 4B304 8004A704 02C02825 */   or        $a1, $s6, $zero
/* 4B308 8004A708 8FBF003C */  lw         $ra, 0x3c($sp)
.L8004A70C:
/* 4B30C 8004A70C 8FB00018 */  lw         $s0, 0x18($sp)
/* 4B310 8004A710 8FB1001C */  lw         $s1, 0x1c($sp)
/* 4B314 8004A714 8FB20020 */  lw         $s2, 0x20($sp)
/* 4B318 8004A718 8FB30024 */  lw         $s3, 0x24($sp)
/* 4B31C 8004A71C 8FB40028 */  lw         $s4, 0x28($sp)
/* 4B320 8004A720 8FB5002C */  lw         $s5, 0x2c($sp)
/* 4B324 8004A724 8FB60030 */  lw         $s6, 0x30($sp)
/* 4B328 8004A728 8FB70034 */  lw         $s7, 0x34($sp)
/* 4B32C 8004A72C 8FBE0038 */  lw         $fp, 0x38($sp)
/* 4B330 8004A730 03E00008 */  jr         $ra
/* 4B334 8004A734 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_8004A738
/* 4B338 8004A738 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 4B33C 8004A73C AFB30024 */  sw         $s3, 0x24($sp)
/* 4B340 8004A740 AFB20020 */  sw         $s2, 0x20($sp)
/* 4B344 8004A744 AFB1001C */  sw         $s1, 0x1c($sp)
/* 4B348 8004A748 00808825 */  or         $s1, $a0, $zero
/* 4B34C 8004A74C 00A09025 */  or         $s2, $a1, $zero
/* 4B350 8004A750 00C09825 */  or         $s3, $a2, $zero
/* 4B354 8004A754 AFBF003C */  sw         $ra, 0x3c($sp)
/* 4B358 8004A758 AFB40028 */  sw         $s4, 0x28($sp)
/* 4B35C 8004A75C AFB00018 */  sw         $s0, 0x18($sp)
/* 4B360 8004A760 AFBE0038 */  sw         $fp, 0x38($sp)
/* 4B364 8004A764 AFB70034 */  sw         $s7, 0x34($sp)
/* 4B368 8004A768 AFB60030 */  sw         $s6, 0x30($sp)
/* 4B36C 8004A76C AFB5002C */  sw         $s5, 0x2c($sp)
/* 4B370 8004A770 00008025 */  or         $s0, $zero, $zero
/* 4B374 8004A774 0000A025 */  or         $s4, $zero, $zero
/* 4B378 8004A778 02603825 */  or         $a3, $s3, $zero
/* 4B37C 8004A77C 02403025 */  or         $a2, $s2, $zero
/* 4B380 8004A780 02202825 */  or         $a1, $s1, $zero
/* 4B384 8004A784 0C01293B */  jal        func_8004A4EC
/* 4B388 8004A788 24040009 */   addiu     $a0, $zero, 9
/* 4B38C 8004A78C 18400034 */  blez       $v0, .L8004A860
/* 4B390 8004A790 0040A825 */   or        $s5, $v0, $zero
/* 4B394 8004A794 3C168010 */  lui        $s6, %hi(D_800FB570)
/* 4B398 8004A798 26D6B570 */  addiu      $s6, $s6, %lo(D_800FB570)
/* 4B39C 8004A79C 241E0002 */  addiu      $fp, $zero, 2
/* 4B3A0 8004A7A0 24170001 */  addiu      $s7, $zero, 1
.L8004A7A4:
/* 4B3A4 8004A7A4 02C02025 */  or         $a0, $s6, $zero
/* 4B3A8 8004A7A8 02202825 */  or         $a1, $s1, $zero
/* 4B3AC 8004A7AC 02403025 */  or         $a2, $s2, $zero
/* 4B3B0 8004A7B0 0C012A7D */  jal        func_8004A9F4
/* 4B3B4 8004A7B4 02603825 */   or        $a3, $s3, $zero
/* 4B3B8 8004A7B8 10400007 */  beqz       $v0, .L8004A7D8
/* 4B3BC 8004A7BC 02E01825 */   or        $v1, $s7, $zero
/* 4B3C0 8004A7C0 10570007 */  beq        $v0, $s7, .L8004A7E0
/* 4B3C4 8004A7C4 24040004 */   addiu     $a0, $zero, 4
/* 4B3C8 8004A7C8 105E000C */  beq        $v0, $fp, .L8004A7FC
/* 4B3CC 8004A7CC 24040009 */   addiu     $a0, $zero, 9
/* 4B3D0 8004A7D0 10000011 */  b          .L8004A818
/* 4B3D4 8004A7D4 24030001 */   addiu     $v1, $zero, 1
.L8004A7D8:
/* 4B3D8 8004A7D8 10000010 */  b          .L8004A81C
/* 4B3DC 8004A7DC 00002025 */   or        $a0, $zero, $zero
.L8004A7E0:
/* 4B3E0 8004A7E0 02202825 */  or         $a1, $s1, $zero
/* 4B3E4 8004A7E4 02403025 */  or         $a2, $s2, $zero
/* 4B3E8 8004A7E8 0C01293B */  jal        func_8004A4EC
/* 4B3EC 8004A7EC 02603825 */   or        $a3, $s3, $zero
/* 4B3F0 8004A7F0 24430003 */  addiu      $v1, $v0, 3
/* 4B3F4 8004A7F4 10000009 */  b          .L8004A81C
/* 4B3F8 8004A7F8 00002025 */   or        $a0, $zero, $zero
.L8004A7FC:
/* 4B3FC 8004A7FC 02202825 */  or         $a1, $s1, $zero
/* 4B400 8004A800 02403025 */  or         $a2, $s2, $zero
/* 4B404 8004A804 0C01293B */  jal        func_8004A4EC
/* 4B408 8004A808 02603825 */   or        $a3, $s3, $zero
/* 4B40C 8004A80C 24430014 */  addiu      $v1, $v0, 0x14
/* 4B410 8004A810 10000002 */  b          .L8004A81C
/* 4B414 8004A814 00002025 */   or        $a0, $zero, $zero
.L8004A818:
/* 4B418 8004A818 2444FFFE */  addiu      $a0, $v0, -2
.L8004A81C:
/* 4B41C 8004A81C 1860000A */  blez       $v1, .L8004A848
/* 4B420 8004A820 0004C040 */   sll       $t8, $a0, 1
/* 4B424 8004A824 3C0F8010 */  lui        $t7, %hi(D_800FB170)
/* 4B428 8004A828 25EFB170 */  addiu      $t7, $t7, %lo(D_800FB170)
/* 4B42C 8004A82C 00107040 */  sll        $t6, $s0, 1
/* 4B430 8004A830 01CF1021 */  addu       $v0, $t6, $t7
.L8004A834:
/* 4B434 8004A834 2463FFFF */  addiu      $v1, $v1, -1
/* 4B438 8004A838 A4440000 */  sh         $a0, ($v0)
/* 4B43C 8004A83C 26100001 */  addiu      $s0, $s0, 1
/* 4B440 8004A840 1C60FFFC */  bgtz       $v1, .L8004A834
/* 4B444 8004A844 24420002 */   addiu     $v0, $v0, 2
.L8004A848:
/* 4B448 8004A848 3C19800A */  lui        $t9, %hi(D_8009D960)
/* 4B44C 8004A84C 0338C821 */  addu       $t9, $t9, $t8
/* 4B450 8004A850 9739D960 */  lhu        $t9, %lo(D_8009D960)($t9)
/* 4B454 8004A854 0215082A */  slt        $at, $s0, $s5
/* 4B458 8004A858 1420FFD2 */  bnez       $at, .L8004A7A4
/* 4B45C 8004A85C 0299A021 */   addu      $s4, $s4, $t9
.L8004A860:
/* 4B460 8004A860 3C068010 */  lui        $a2, %hi(D_800FB770)
/* 4B464 8004A864 24C6B770 */  addiu      $a2, $a2, %lo(D_800FB770)
/* 4B468 8004A868 02A02025 */  or         $a0, $s5, $zero
/* 4B46C 8004A86C 0C012A29 */  jal        func_8004A8A4
/* 4B470 8004A870 02802825 */   or        $a1, $s4, $zero
/* 4B474 8004A874 8FBF003C */  lw         $ra, 0x3c($sp)
/* 4B478 8004A878 8FB00018 */  lw         $s0, 0x18($sp)
/* 4B47C 8004A87C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 4B480 8004A880 8FB20020 */  lw         $s2, 0x20($sp)
/* 4B484 8004A884 8FB30024 */  lw         $s3, 0x24($sp)
/* 4B488 8004A888 8FB40028 */  lw         $s4, 0x28($sp)
/* 4B48C 8004A88C 8FB5002C */  lw         $s5, 0x2c($sp)
/* 4B490 8004A890 8FB60030 */  lw         $s6, 0x30($sp)
/* 4B494 8004A894 8FB70034 */  lw         $s7, 0x34($sp)
/* 4B498 8004A898 8FBE0038 */  lw         $fp, 0x38($sp)
/* 4B49C 8004A89C 03E00008 */  jr         $ra
/* 4B4A0 8004A8A0 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8004A8A4
/* 4B4A4 8004A8A4 24AEFFFF */  addiu      $t6, $a1, -1
/* 4B4A8 8004A8A8 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 4B4AC 8004A8AC 000E7A03 */  sra        $t7, $t6, 8
/* 4B4B0 8004A8B0 000FC040 */  sll        $t8, $t7, 1
/* 4B4B4 8004A8B4 AFB1000C */  sw         $s1, 0xc($sp)
/* 4B4B8 8004A8B8 AFB00008 */  sw         $s0, 8($sp)
/* 4B4BC 8004A8BC 03061821 */  addu       $v1, $t8, $a2
/* 4B4C0 8004A8C0 3C0C8010 */  lui        $t4, %hi(D_800FDB70)
/* 4B4C4 8004A8C4 00808025 */  or         $s0, $a0, $zero
/* 4B4C8 8004A8C8 24020080 */  addiu      $v0, $zero, 0x80
/* 4B4CC 8004A8CC 24630002 */  addiu      $v1, $v1, 2
/* 4B4D0 8004A8D0 258CDB70 */  addiu      $t4, $t4, %lo(D_800FDB70)
/* 4B4D4 8004A8D4 24110011 */  addiu      $s1, $zero, 0x11
/* 4B4D8 8004A8D8 24070001 */  addiu      $a3, $zero, 1
/* 4B4DC 8004A8DC 340D8000 */  ori        $t5, $zero, 0x8000
.L8004A8E0:
/* 4B4E0 8004A8E0 1A000023 */  blez       $s0, .L8004A970
/* 4B4E4 8004A8E4 00002025 */   or        $a0, $zero, $zero
/* 4B4E8 8004A8E8 3C058010 */  lui        $a1, %hi(D_800FB170)
/* 4B4EC 8004A8EC 24A5B170 */  addiu      $a1, $a1, %lo(D_800FB170)
.L8004A8F0:
/* 4B4F0 8004A8F0 94B90000 */  lhu        $t9, ($a1)
/* 4B4F4 8004A8F4 28E10009 */  slti       $at, $a3, 9
/* 4B4F8 8004A8F8 54F9001B */  bnel       $a3, $t9, .L8004A968
/* 4B4FC 8004A8FC 24840001 */   addiu     $a0, $a0, 1
/* 4B500 8004A900 10200003 */  beqz       $at, .L8004A910
/* 4B504 8004A904 00004825 */   or        $t1, $zero, $zero
/* 4B508 8004A908 10000004 */  b          .L8004A91C
/* 4B50C 8004A90C 00E04025 */   or        $t0, $a3, $zero
.L8004A910:
/* 4B510 8004A910 24E8FFFF */  addiu      $t0, $a3, -1
/* 4B514 8004A914 310E0003 */  andi       $t6, $t0, 3
/* 4B518 8004A918 25C80005 */  addiu      $t0, $t6, 5
.L8004A91C:
/* 4B51C 8004A91C 00087A40 */  sll        $t7, $t0, 9
/* 4B520 8004A920 18400010 */  blez       $v0, .L8004A964
/* 4B524 8004A924 01E44021 */   addu      $t0, $t7, $a0
/* 4B528 8004A928 304B0003 */  andi       $t3, $v0, 3
/* 4B52C 8004A92C 11600006 */  beqz       $t3, .L8004A948
/* 4B530 8004A930 01605025 */   or        $t2, $t3, $zero
.L8004A934:
/* 4B534 8004A934 25290001 */  addiu      $t1, $t1, 1
/* 4B538 8004A938 A4C80000 */  sh         $t0, ($a2)
/* 4B53C 8004A93C 1549FFFD */  bne        $t2, $t1, .L8004A934
/* 4B540 8004A940 24C60002 */   addiu     $a2, $a2, 2
/* 4B544 8004A944 11220007 */  beq        $t1, $v0, .L8004A964
.L8004A948:
/* 4B548 8004A948 25290004 */   addiu     $t1, $t1, 4
/* 4B54C 8004A94C A4C80002 */  sh         $t0, 2($a2)
/* 4B550 8004A950 A4C80004 */  sh         $t0, 4($a2)
/* 4B554 8004A954 A4C80006 */  sh         $t0, 6($a2)
/* 4B558 8004A958 24C60008 */  addiu      $a2, $a2, 8
/* 4B55C 8004A95C 1522FFFA */  bne        $t1, $v0, .L8004A948
/* 4B560 8004A960 A4C8FFF8 */   sh        $t0, -8($a2)
.L8004A964:
/* 4B564 8004A964 24840001 */  addiu      $a0, $a0, 1
.L8004A968:
/* 4B568 8004A968 1490FFE1 */  bne        $a0, $s0, .L8004A8F0
/* 4B56C 8004A96C 24A50002 */   addiu     $a1, $a1, 2
.L8004A970:
/* 4B570 8004A970 0002C043 */  sra        $t8, $v0, 1
/* 4B574 8004A974 17000018 */  bnez       $t8, .L8004A9D8
/* 4B578 8004A978 03001025 */   or        $v0, $t8, $zero
/* 4B57C 8004A97C 28E10011 */  slti       $at, $a3, 0x11
/* 4B580 8004A980 50200016 */  beql       $at, $zero, .L8004A9DC
/* 4B584 8004A984 24E70001 */   addiu     $a3, $a3, 1
/* 4B588 8004A988 8D840000 */  lw         $a0, ($t4)
/* 4B58C 8004A98C 00C01025 */  or         $v0, $a2, $zero
/* 4B590 8004A990 0043082A */  slt        $at, $v0, $v1
/* 4B594 8004A994 1020000E */  beqz       $at, .L8004A9D0
/* 4B598 8004A998 00803025 */   or        $a2, $a0, $zero
/* 4B59C 8004A99C 3C048010 */  lui        $a0, %hi(D_800FB970)
/* 4B5A0 8004A9A0 2484B970 */  addiu      $a0, $a0, %lo(D_800FB970)
.L8004A9A4:
/* 4B5A4 8004A9A4 8D990000 */  lw         $t9, ($t4)
/* 4B5A8 8004A9A8 24420002 */  addiu      $v0, $v0, 2
/* 4B5AC 8004A9AC 0043082A */  slt        $at, $v0, $v1
/* 4B5B0 8004A9B0 03247023 */  subu       $t6, $t9, $a0
/* 4B5B4 8004A9B4 01CD7821 */  addu       $t7, $t6, $t5
/* 4B5B8 8004A9B8 A44FFFFE */  sh         $t7, -2($v0)
/* 4B5BC 8004A9BC 8D980000 */  lw         $t8, ($t4)
/* 4B5C0 8004A9C0 27190020 */  addiu      $t9, $t8, 0x20
/* 4B5C4 8004A9C4 1420FFF7 */  bnez       $at, .L8004A9A4
/* 4B5C8 8004A9C8 AD990000 */   sw        $t9, ($t4)
/* 4B5CC 8004A9CC 03202025 */  or         $a0, $t9, $zero
.L8004A9D0:
/* 4B5D0 8004A9D0 00801825 */  or         $v1, $a0, $zero
/* 4B5D4 8004A9D4 24020008 */  addiu      $v0, $zero, 8
.L8004A9D8:
/* 4B5D8 8004A9D8 24E70001 */  addiu      $a3, $a3, 1
.L8004A9DC:
/* 4B5DC 8004A9DC 14F1FFC0 */  bne        $a3, $s1, .L8004A8E0
/* 4B5E0 8004A9E0 00000000 */   nop
/* 4B5E4 8004A9E4 8FB00008 */  lw         $s0, 8($sp)
/* 4B5E8 8004A9E8 8FB1000C */  lw         $s1, 0xc($sp)
/* 4B5EC 8004A9EC 03E00008 */  jr         $ra
/* 4B5F0 8004A9F0 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_8004A9F4
/* 4B5F4 8004A9F4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4B5F8 8004A9F8 AFBF002C */  sw         $ra, 0x2c($sp)
/* 4B5FC 8004A9FC AFB40028 */  sw         $s4, 0x28($sp)
/* 4B600 8004AA00 AFB30024 */  sw         $s3, 0x24($sp)
/* 4B604 8004AA04 AFB20020 */  sw         $s2, 0x20($sp)
/* 4B608 8004AA08 AFB1001C */  sw         $s1, 0x1c($sp)
/* 4B60C 8004AA0C AFB00018 */  sw         $s0, 0x18($sp)
/* 4B610 8004AA10 8CEF0000 */  lw         $t7, ($a3)
/* 4B614 8004AA14 8CCE0000 */  lw         $t6, ($a2)
/* 4B618 8004AA18 3C138010 */  lui        $s3, 0x8010
/* 4B61C 8004AA1C 00C08825 */  or         $s1, $a2, $zero
/* 4B620 8004AA20 01EEC007 */  srav       $t8, $t6, $t7
/* 4B624 8004AA24 331901FE */  andi       $t9, $t8, 0x1fe
/* 4B628 8004AA28 03244021 */  addu       $t0, $t9, $a0
/* 4B62C 8004AA2C 95100000 */  lhu        $s0, ($t0)
/* 4B630 8004AA30 00E09025 */  or         $s2, $a3, $zero
/* 4B634 8004AA34 00A0A025 */  or         $s4, $a1, $zero
/* 4B638 8004AA38 00104C00 */  sll        $t1, $s0, 0x10
/* 4B63C 8004AA3C 05210011 */  bgez       $t1, .L8004AA84
/* 4B640 8004AA40 2673B970 */   addiu     $s3, $s3, -0x4690
/* 4B644 8004AA44 24040004 */  addiu      $a0, $zero, 4
.L8004AA48:
/* 4B648 8004AA48 02802825 */  or         $a1, $s4, $zero
/* 4B64C 8004AA4C 02203025 */  or         $a2, $s1, $zero
/* 4B650 8004AA50 0C012927 */  jal        func_8004A49C
/* 4B654 8004AA54 02403825 */   or        $a3, $s2, $zero
/* 4B658 8004AA58 8E2A0000 */  lw         $t2, ($s1)
/* 4B65C 8004AA5C 8E4B0000 */  lw         $t3, ($s2)
/* 4B660 8004AA60 320F7FFF */  andi       $t7, $s0, 0x7fff
/* 4B664 8004AA64 016A6007 */  srav       $t4, $t2, $t3
/* 4B668 8004AA68 318D001E */  andi       $t5, $t4, 0x1e
/* 4B66C 8004AA6C 01B37021 */  addu       $t6, $t5, $s3
/* 4B670 8004AA70 01CFC021 */  addu       $t8, $t6, $t7
/* 4B674 8004AA74 97100000 */  lhu        $s0, ($t8)
/* 4B678 8004AA78 0010CC00 */  sll        $t9, $s0, 0x10
/* 4B67C 8004AA7C 0722FFF2 */  bltzl      $t9, .L8004AA48
/* 4B680 8004AA80 24040004 */   addiu     $a0, $zero, 4
.L8004AA84:
/* 4B684 8004AA84 00102243 */  sra        $a0, $s0, 9
/* 4B688 8004AA88 02802825 */  or         $a1, $s4, $zero
/* 4B68C 8004AA8C 02203025 */  or         $a2, $s1, $zero
/* 4B690 8004AA90 0C012927 */  jal        func_8004A49C
/* 4B694 8004AA94 02403825 */   or        $a3, $s2, $zero
/* 4B698 8004AA98 8FBF002C */  lw         $ra, 0x2c($sp)
/* 4B69C 8004AA9C 320201FF */  andi       $v0, $s0, 0x1ff
/* 4B6A0 8004AAA0 8FB00018 */  lw         $s0, 0x18($sp)
/* 4B6A4 8004AAA4 8FB1001C */  lw         $s1, 0x1c($sp)
/* 4B6A8 8004AAA8 8FB20020 */  lw         $s2, 0x20($sp)
/* 4B6AC 8004AAAC 8FB30024 */  lw         $s3, 0x24($sp)
/* 4B6B0 8004AAB0 8FB40028 */  lw         $s4, 0x28($sp)
/* 4B6B4 8004AAB4 03E00008 */  jr         $ra
/* 4B6B8 8004AAB8 27BD0030 */   addiu     $sp, $sp, 0x30
/* 4B6BC 8004AABC 00000000 */  nop
