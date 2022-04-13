.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8003F700
/* 40300 8003F700 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 40304 8003F704 AFA40018 */  sw         $a0, 0x18($sp)
/* 40308 8003F708 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4030C 8003F70C AFA60020 */  sw         $a2, 0x20($sp)
/* 40310 8003F710 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 40314 8003F714 AFA5001C */  sw         $a1, 0x1c($sp)
/* 40318 8003F718 AFA70024 */  sw         $a3, 0x24($sp)
/* 4031C 8003F71C 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 40320 8003F720 0C00E03D */  jal        func_800380F4
/* 40324 8003F724 24060015 */   addiu     $a2, $zero, 0x15
/* 40328 8003F728 8FA30018 */  lw         $v1, 0x18($sp)
/* 4032C 8003F72C 00402825 */  or         $a1, $v0, $zero
/* 40330 8003F730 AC620000 */  sw         $v0, ($v1)
/* 40334 8003F734 8FA6001C */  lw         $a2, 0x1c($sp)
/* 40338 8003F738 0C00DFC0 */  jal        func_80037F00
/* 4033C 8003F73C 24640004 */   addiu     $a0, $v1, 4
/* 40340 8003F740 8FA40018 */  lw         $a0, 0x18($sp)
/* 40344 8003F744 8FA50020 */  lw         $a1, 0x20($sp)
/* 40348 8003F748 0C01059C */  jal        func_80041670
/* 4034C 8003F74C 24840014 */   addiu     $a0, $a0, 0x14
/* 40350 8003F750 8FA40018 */  lw         $a0, 0x18($sp)
/* 40354 8003F754 8FA50024 */  lw         $a1, 0x24($sp)
/* 40358 8003F758 0C00DEFB */  jal        func_80037BEC
/* 4035C 8003F75C 24840034 */   addiu     $a0, $a0, 0x34
/* 40360 8003F760 8FBF0014 */  lw         $ra, 0x14($sp)
/* 40364 8003F764 27BD0018 */  addiu      $sp, $sp, 0x18
/* 40368 8003F768 03E00008 */  jr         $ra
/* 4036C 8003F76C 00000000 */   nop

glabel func_8003F770
/* 40370 8003F770 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 40374 8003F774 AFBF0014 */  sw         $ra, 0x14($sp)
/* 40378 8003F778 AFA40018 */  sw         $a0, 0x18($sp)
/* 4037C 8003F77C 0C00DF1D */  jal        func_80037C74
/* 40380 8003F780 24840034 */   addiu     $a0, $a0, 0x34
/* 40384 8003F784 8FA40018 */  lw         $a0, 0x18($sp)
/* 40388 8003F788 0C0105FB */  jal        func_800417EC
/* 4038C 8003F78C 24840014 */   addiu     $a0, $a0, 0x14
/* 40390 8003F790 8FAE0018 */  lw         $t6, 0x18($sp)
/* 40394 8003F794 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 40398 8003F798 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 4039C 8003F79C 0C00E152 */  jal        func_80038548
/* 403A0 8003F7A0 8DC50000 */   lw        $a1, ($t6)
/* 403A4 8003F7A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 403A8 8003F7A8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 403AC 8003F7AC 03E00008 */  jr         $ra
/* 403B0 8003F7B0 00000000 */   nop

glabel func_8003F7B4
/* 403B4 8003F7B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 403B8 8003F7B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 403BC 8003F7BC AFA5001C */  sw         $a1, 0x1c($sp)
/* 403C0 8003F7C0 24A50010 */  addiu      $a1, $a1, 0x10
/* 403C4 8003F7C4 24840004 */  addiu      $a0, $a0, 4
/* 403C8 8003F7C8 0C00E03D */  jal        func_800380F4
/* 403CC 8003F7CC 24060032 */   addiu     $a2, $zero, 0x32
/* 403D0 8003F7D0 14400003 */  bnez       $v0, .L8003F7E0
/* 403D4 8003F7D4 00401825 */   or        $v1, $v0, $zero
/* 403D8 8003F7D8 10000008 */  b          .L8003F7FC
/* 403DC 8003F7DC 00001025 */   or        $v0, $zero, $zero
.L8003F7E0:
/* 403E0 8003F7E0 AC600000 */  sw         $zero, ($v1)
/* 403E4 8003F7E4 8FAE001C */  lw         $t6, 0x1c($sp)
/* 403E8 8003F7E8 246F0010 */  addiu      $t7, $v1, 0x10
/* 403EC 8003F7EC AC600008 */  sw         $zero, 8($v1)
/* 403F0 8003F7F0 AC6F000C */  sw         $t7, 0xc($v1)
/* 403F4 8003F7F4 00601025 */  or         $v0, $v1, $zero
/* 403F8 8003F7F8 AC6E0004 */  sw         $t6, 4($v1)
.L8003F7FC:
/* 403FC 8003F7FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 40400 8003F800 27BD0018 */  addiu      $sp, $sp, 0x18
/* 40404 8003F804 03E00008 */  jr         $ra
/* 40408 8003F808 00000000 */   nop

glabel func_8003F80C
/* 4040C 8003F80C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 40410 8003F810 AFBF0014 */  sw         $ra, 0x14($sp)
/* 40414 8003F814 AFA40018 */  sw         $a0, 0x18($sp)
/* 40418 8003F818 AFA5001C */  sw         $a1, 0x1c($sp)
/* 4041C 8003F81C 8CA50008 */  lw         $a1, 8($a1)
/* 40420 8003F820 0C010785 */  jal        func_80041E14
/* 40424 8003F824 24840014 */   addiu     $a0, $a0, 0x14
/* 40428 8003F828 8FA40018 */  lw         $a0, 0x18($sp)
/* 4042C 8003F82C 8FA5001C */  lw         $a1, 0x1c($sp)
/* 40430 8003F830 0C00E152 */  jal        func_80038548
/* 40434 8003F834 24840004 */   addiu     $a0, $a0, 4
/* 40438 8003F838 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4043C 8003F83C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 40440 8003F840 03E00008 */  jr         $ra
/* 40444 8003F844 00000000 */   nop

glabel func_8003F848
/* 40448 8003F848 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 4044C 8003F84C AFA40028 */  sw         $a0, 0x28($sp)
/* 40450 8003F850 AFBF001C */  sw         $ra, 0x1c($sp)
/* 40454 8003F854 24840014 */  addiu      $a0, $a0, 0x14
/* 40458 8003F858 AFB00018 */  sw         $s0, 0x18($sp)
/* 4045C 8003F85C AFA5002C */  sw         $a1, 0x2c($sp)
/* 40460 8003F860 AFA60030 */  sw         $a2, 0x30($sp)
/* 40464 8003F864 AFA70034 */  sw         $a3, 0x34($sp)
/* 40468 8003F868 0C0107EC */  jal        func_80041FB0
/* 4046C 8003F86C AFA40020 */   sw        $a0, 0x20($sp)
/* 40470 8003F870 10400017 */  beqz       $v0, .L8003F8D0
/* 40474 8003F874 00408025 */   or        $s0, $v0, $zero
/* 40478 8003F878 8C4E0004 */  lw         $t6, 4($v0)
/* 4047C 8003F87C 8FAF0030 */  lw         $t7, 0x30($sp)
/* 40480 8003F880 8FA40028 */  lw         $a0, 0x28($sp)
/* 40484 8003F884 01CF082B */  sltu       $at, $t6, $t7
/* 40488 8003F888 1420000F */  bnez       $at, .L8003F8C8
/* 4048C 8003F88C 00000000 */   nop
/* 40490 8003F890 8C580000 */  lw         $t8, ($v0)
/* 40494 8003F894 8C48000C */  lw         $t0, 0xc($v0)
/* 40498 8003F898 37190001 */  ori        $t9, $t8, 1
/* 4049C 8003F89C AC590000 */  sw         $t9, ($v0)
/* 404A0 8003F8A0 8FA90034 */  lw         $t1, 0x34($sp)
/* 404A4 8003F8A4 AD280000 */  sw         $t0, ($t1)
/* 404A8 8003F8A8 8C4A0000 */  lw         $t2, ($v0)
/* 404AC 8003F8AC 314B0002 */  andi       $t3, $t2, 2
/* 404B0 8003F8B0 11600003 */  beqz       $t3, .L8003F8C0
/* 404B4 8003F8B4 00000000 */   nop
/* 404B8 8003F8B8 10000020 */  b          .L8003F93C
/* 404BC 8003F8BC 24020004 */   addiu     $v0, $zero, 4
.L8003F8C0:
/* 404C0 8003F8C0 1000001E */  b          .L8003F93C
/* 404C4 8003F8C4 24020003 */   addiu     $v0, $zero, 3
.L8003F8C8:
/* 404C8 8003F8C8 0C00FE03 */  jal        func_8003F80C
/* 404CC 8003F8CC 02002825 */   or        $a1, $s0, $zero
.L8003F8D0:
/* 404D0 8003F8D0 8FA40028 */  lw         $a0, 0x28($sp)
/* 404D4 8003F8D4 0C00FE8F */  jal        func_8003FA3C
/* 404D8 8003F8D8 8FA50030 */   lw        $a1, 0x30($sp)
/* 404DC 8003F8DC 14400003 */  bnez       $v0, .L8003F8EC
/* 404E0 8003F8E0 00408025 */   or        $s0, $v0, $zero
/* 404E4 8003F8E4 0C010701 */  jal        func_80041C04
/* 404E8 8003F8E8 8FA40020 */   lw        $a0, 0x20($sp)
.L8003F8EC:
/* 404EC 8003F8EC 8FA5002C */  lw         $a1, 0x2c($sp)
/* 404F0 8003F8F0 8FAC0030 */  lw         $t4, 0x30($sp)
/* 404F4 8003F8F4 8E06000C */  lw         $a2, 0xc($s0)
/* 404F8 8003F8F8 AE050008 */  sw         $a1, 8($s0)
/* 404FC 8003F8FC AE0C0004 */  sw         $t4, 4($s0)
/* 40500 8003F900 8FA40028 */  lw         $a0, 0x28($sp)
/* 40504 8003F904 8FA70030 */  lw         $a3, 0x30($sp)
/* 40508 8003F908 0C00DF85 */  jal        func_80037E14
/* 4050C 8003F90C 24840034 */   addiu     $a0, $a0, 0x34
/* 40510 8003F910 8FA40020 */  lw         $a0, 0x20($sp)
/* 40514 8003F914 02002825 */  or         $a1, $s0, $zero
/* 40518 8003F918 0C010695 */  jal        func_80041A54
/* 4051C 8003F91C 8FA6002C */   lw        $a2, 0x2c($sp)
/* 40520 8003F920 8E0D0000 */  lw         $t5, ($s0)
/* 40524 8003F924 8E0F000C */  lw         $t7, 0xc($s0)
/* 40528 8003F928 24020004 */  addiu      $v0, $zero, 4
/* 4052C 8003F92C 35AE0003 */  ori        $t6, $t5, 3
/* 40530 8003F930 AE0E0000 */  sw         $t6, ($s0)
/* 40534 8003F934 8FB80034 */  lw         $t8, 0x34($sp)
/* 40538 8003F938 AF0F0000 */  sw         $t7, ($t8)
.L8003F93C:
/* 4053C 8003F93C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 40540 8003F940 8FB00018 */  lw         $s0, 0x18($sp)
/* 40544 8003F944 27BD0028 */  addiu      $sp, $sp, 0x28
/* 40548 8003F948 03E00008 */  jr         $ra
/* 4054C 8003F94C 00000000 */   nop

glabel func_8003F950
/* 40550 8003F950 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 40554 8003F954 AFA40028 */  sw         $a0, 0x28($sp)
/* 40558 8003F958 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4055C 8003F95C 24840014 */  addiu      $a0, $a0, 0x14
/* 40560 8003F960 AFA5002C */  sw         $a1, 0x2c($sp)
/* 40564 8003F964 AFA60030 */  sw         $a2, 0x30($sp)
/* 40568 8003F968 AFA70034 */  sw         $a3, 0x34($sp)
/* 4056C 8003F96C 0C0107EC */  jal        func_80041FB0
/* 40570 8003F970 AFA4001C */   sw        $a0, 0x1c($sp)
/* 40574 8003F974 10400014 */  beqz       $v0, .L8003F9C8
/* 40578 8003F978 00402825 */   or        $a1, $v0, $zero
/* 4057C 8003F97C 8C4E0000 */  lw         $t6, ($v0)
/* 40580 8003F980 24180002 */  addiu      $t8, $zero, 2
/* 40584 8003F984 24190001 */  addiu      $t9, $zero, 1
/* 40588 8003F988 31CF0001 */  andi       $t7, $t6, 1
/* 4058C 8003F98C 51E00004 */  beql       $t7, $zero, .L8003F9A0
/* 40590 8003F990 AFB90020 */   sw        $t9, 0x20($sp)
/* 40594 8003F994 10000002 */  b          .L8003F9A0
/* 40598 8003F998 AFB80020 */   sw        $t8, 0x20($sp)
/* 4059C 8003F99C AFB90020 */  sw         $t9, 0x20($sp)
.L8003F9A0:
/* 405A0 8003F9A0 8FA80030 */  lw         $t0, 0x30($sp)
/* 405A4 8003F9A4 8C490004 */  lw         $t1, 4($v0)
/* 405A8 8003F9A8 8FAA002C */  lw         $t2, 0x2c($sp)
/* 405AC 8003F9AC 55090019 */  bnel       $t0, $t1, .L8003FA14
/* 405B0 8003F9B0 8CAD0000 */   lw        $t5, ($a1)
/* 405B4 8003F9B4 8C4B0008 */  lw         $t3, 8($v0)
/* 405B8 8003F9B8 514B0016 */  beql       $t2, $t3, .L8003FA14
/* 405BC 8003F9BC 8CAD0000 */   lw        $t5, ($a1)
/* 405C0 8003F9C0 10000014 */  b          .L8003FA14
/* 405C4 8003F9C4 8CAD0000 */   lw        $t5, ($a1)
.L8003F9C8:
/* 405C8 8003F9C8 AFA00020 */  sw         $zero, 0x20($sp)
/* 405CC 8003F9CC 8FA40028 */  lw         $a0, 0x28($sp)
/* 405D0 8003F9D0 0C00FE8F */  jal        func_8003FA3C
/* 405D4 8003F9D4 8FA50030 */   lw        $a1, 0x30($sp)
/* 405D8 8003F9D8 14400005 */  bnez       $v0, .L8003F9F0
/* 405DC 8003F9DC 00402825 */   or        $a1, $v0, $zero
/* 405E0 8003F9E0 8FA4001C */  lw         $a0, 0x1c($sp)
/* 405E4 8003F9E4 0C010701 */  jal        func_80041C04
/* 405E8 8003F9E8 AFA20024 */   sw        $v0, 0x24($sp)
/* 405EC 8003F9EC 8FA50024 */  lw         $a1, 0x24($sp)
.L8003F9F0:
/* 405F0 8003F9F0 8FA6002C */  lw         $a2, 0x2c($sp)
/* 405F4 8003F9F4 8FAC0030 */  lw         $t4, 0x30($sp)
/* 405F8 8003F9F8 ACA60008 */  sw         $a2, 8($a1)
/* 405FC 8003F9FC ACAC0004 */  sw         $t4, 4($a1)
/* 40600 8003FA00 AFA50024 */  sw         $a1, 0x24($sp)
/* 40604 8003FA04 0C010695 */  jal        func_80041A54
/* 40608 8003FA08 8FA4001C */   lw        $a0, 0x1c($sp)
/* 4060C 8003FA0C 8FA50024 */  lw         $a1, 0x24($sp)
/* 40610 8003FA10 8CAD0000 */  lw         $t5, ($a1)
.L8003FA14:
/* 40614 8003FA14 8CAF000C */  lw         $t7, 0xc($a1)
/* 40618 8003FA18 35AE0001 */  ori        $t6, $t5, 1
/* 4061C 8003FA1C ACAE0000 */  sw         $t6, ($a1)
/* 40620 8003FA20 8FB80034 */  lw         $t8, 0x34($sp)
/* 40624 8003FA24 AF0F0000 */  sw         $t7, ($t8)
/* 40628 8003FA28 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4062C 8003FA2C 8FA20020 */  lw         $v0, 0x20($sp)
/* 40630 8003FA30 27BD0028 */  addiu      $sp, $sp, 0x28
/* 40634 8003FA34 03E00008 */  jr         $ra
/* 40638 8003FA38 00000000 */   nop

glabel func_8003FA3C
/* 4063C 8003FA3C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 40640 8003FA40 AFB2001C */  sw         $s2, 0x1c($sp)
/* 40644 8003FA44 AFB10018 */  sw         $s1, 0x18($sp)
/* 40648 8003FA48 00809025 */  or         $s2, $a0, $zero
/* 4064C 8003FA4C AFBF0024 */  sw         $ra, 0x24($sp)
/* 40650 8003FA50 AFB30020 */  sw         $s3, 0x20($sp)
/* 40654 8003FA54 24910014 */  addiu      $s1, $a0, 0x14
/* 40658 8003FA58 00A09825 */  or         $s3, $a1, $zero
/* 4065C 8003FA5C AFB00014 */  sw         $s0, 0x14($sp)
/* 40660 8003FA60 0C010801 */  jal        func_80042004
/* 40664 8003FA64 02202025 */   or        $a0, $s1, $zero
/* 40668 8003FA68 00408025 */  or         $s0, $v0, $zero
.L8003FA6C:
/* 4066C 8003FA6C 0C010701 */  jal        func_80041C04
/* 40670 8003FA70 02202025 */   or        $a0, $s1, $zero
/* 40674 8003FA74 10400007 */  beqz       $v0, .L8003FA94
/* 40678 8003FA78 02402025 */   or        $a0, $s2, $zero
/* 4067C 8003FA7C 0C00FDED */  jal        func_8003F7B4
/* 40680 8003FA80 02602825 */   or        $a1, $s3, $zero
/* 40684 8003FA84 10400003 */  beqz       $v0, .L8003FA94
/* 40688 8003FA88 00000000 */   nop
/* 4068C 8003FA8C 10000010 */  b          .L8003FAD0
/* 40690 8003FA90 8FBF0024 */   lw        $ra, 0x24($sp)
.L8003FA94:
/* 40694 8003FA94 12000005 */  beqz       $s0, .L8003FAAC
/* 40698 8003FA98 02402025 */   or        $a0, $s2, $zero
/* 4069C 8003FA9C 8E0E0000 */  lw         $t6, ($s0)
/* 406A0 8003FAA0 31CF0003 */  andi       $t7, $t6, 3
/* 406A4 8003FAA4 11E00003 */  beqz       $t7, .L8003FAB4
/* 406A8 8003FAA8 00000000 */   nop
.L8003FAAC:
/* 406AC 8003FAAC 10000007 */  b          .L8003FACC
/* 406B0 8003FAB0 00001025 */   or        $v0, $zero, $zero
.L8003FAB4:
/* 406B4 8003FAB4 0C00FE03 */  jal        func_8003F80C
/* 406B8 8003FAB8 02002825 */   or        $a1, $s0, $zero
/* 406BC 8003FABC 0C01080A */  jal        func_80042028
/* 406C0 8003FAC0 02202025 */   or        $a0, $s1, $zero
/* 406C4 8003FAC4 1000FFE9 */  b          .L8003FA6C
/* 406C8 8003FAC8 00408025 */   or        $s0, $v0, $zero
.L8003FACC:
/* 406CC 8003FACC 8FBF0024 */  lw         $ra, 0x24($sp)
.L8003FAD0:
/* 406D0 8003FAD0 8FB00014 */  lw         $s0, 0x14($sp)
/* 406D4 8003FAD4 8FB10018 */  lw         $s1, 0x18($sp)
/* 406D8 8003FAD8 8FB2001C */  lw         $s2, 0x1c($sp)
/* 406DC 8003FADC 8FB30020 */  lw         $s3, 0x20($sp)
/* 406E0 8003FAE0 03E00008 */  jr         $ra
/* 406E4 8003FAE4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8003FAE8
/* 406E8 8003FAE8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 406EC 8003FAEC AFBF0014 */  sw         $ra, 0x14($sp)
/* 406F0 8003FAF0 AFA40018 */  sw         $a0, 0x18($sp)
/* 406F4 8003FAF4 24840034 */  addiu      $a0, $a0, 0x34
/* 406F8 8003FAF8 0C00DFA8 */  jal        func_80037EA0
/* 406FC 8003FAFC AFA5001C */   sw        $a1, 0x1c($sp)
/* 40700 8003FB00 8FAE0018 */  lw         $t6, 0x18($sp)
/* 40704 8003FB04 8FA5001C */  lw         $a1, 0x1c($sp)
/* 40708 8003FB08 8DC20020 */  lw         $v0, 0x20($t6)
/* 4070C 8003FB0C 5040000C */  beql       $v0, $zero, .L8003FB40
/* 40710 8003FB10 8FBF0014 */   lw        $ra, 0x14($sp)
/* 40714 8003FB14 8C430004 */  lw         $v1, 4($v0)
.L8003FB18:
/* 40718 8003FB18 00A0C027 */  not        $t8, $a1
/* 4071C 8003FB1C 8C640000 */  lw         $a0, ($v1)
/* 40720 8003FB20 00857824 */  and        $t7, $a0, $a1
/* 40724 8003FB24 11E00005 */  beqz       $t7, .L8003FB3C
/* 40728 8003FB28 0098C824 */   and       $t9, $a0, $t8
/* 4072C 8003FB2C AC790000 */  sw         $t9, ($v1)
/* 40730 8003FB30 8C420008 */  lw         $v0, 8($v0)
/* 40734 8003FB34 5440FFF8 */  bnel       $v0, $zero, .L8003FB18
/* 40738 8003FB38 8C430004 */   lw        $v1, 4($v0)
.L8003FB3C:
/* 4073C 8003FB3C 8FBF0014 */  lw         $ra, 0x14($sp)
.L8003FB40:
/* 40740 8003FB40 27BD0018 */  addiu      $sp, $sp, 0x18
/* 40744 8003FB44 03E00008 */  jr         $ra
/* 40748 8003FB48 00000000 */   nop

glabel func_8003FB4C
/* 4074C 8003FB4C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 40750 8003FB50 AFBF0014 */  sw         $ra, 0x14($sp)
/* 40754 8003FB54 0C00FEBA */  jal        func_8003FAE8
/* 40758 8003FB58 24050002 */   addiu     $a1, $zero, 2
/* 4075C 8003FB5C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 40760 8003FB60 27BD0018 */  addiu      $sp, $sp, 0x18
/* 40764 8003FB64 03E00008 */  jr         $ra
/* 40768 8003FB68 00000000 */   nop

glabel func_8003FB6C
/* 4076C 8003FB6C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 40770 8003FB70 AFBF0014 */  sw         $ra, 0x14($sp)
/* 40774 8003FB74 0C00FEBA */  jal        func_8003FAE8
/* 40778 8003FB78 24050003 */   addiu     $a1, $zero, 3
/* 4077C 8003FB7C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 40780 8003FB80 27BD0018 */  addiu      $sp, $sp, 0x18
/* 40784 8003FB84 03E00008 */  jr         $ra
/* 40788 8003FB88 00000000 */   nop
/* 4078C 8003FB8C 00000000 */  nop
