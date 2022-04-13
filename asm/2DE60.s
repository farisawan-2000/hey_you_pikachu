.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8002D260
/* 2DE60 8002D260 3C03800F */  lui        $v1, %hi(D_800F1BD0)
/* 2DE64 8002D264 24631BD0 */  addiu      $v1, $v1, %lo(D_800F1BD0)
/* 2DE68 8002D268 3C02800F */  lui        $v0, %hi(D_800F1BB0)
/* 2DE6C 8002D26C C4640000 */  lwc1       $f4, ($v1)
/* 2DE70 8002D270 C4660004 */  lwc1       $f6, 4($v1)
/* 2DE74 8002D274 C4680008 */  lwc1       $f8, 8($v1)
/* 2DE78 8002D278 24421BB0 */  addiu      $v0, $v0, %lo(D_800F1BB0)
/* 2DE7C 8002D27C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2DE80 8002D280 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2DE84 8002D284 E4440000 */  swc1       $f4, ($v0)
/* 2DE88 8002D288 E4460004 */  swc1       $f6, 4($v0)
/* 2DE8C 8002D28C E4480008 */  swc1       $f8, 8($v0)
/* 2DE90 8002D290 C48A0000 */  lwc1       $f10, ($a0)
/* 2DE94 8002D294 3C05800F */  lui        $a1, %hi(D_800F1BC0)
/* 2DE98 8002D298 24A51BC0 */  addiu      $a1, $a1, %lo(D_800F1BC0)
/* 2DE9C 8002D29C E4AA0000 */  swc1       $f10, ($a1)
/* 2DEA0 8002D2A0 C4900004 */  lwc1       $f16, 4($a0)
/* 2DEA4 8002D2A4 E4B00004 */  swc1       $f16, 4($a1)
/* 2DEA8 8002D2A8 C4920008 */  lwc1       $f18, 8($a0)
/* 2DEAC 8002D2AC 0C002C3F */  jal        func_8000B0FC
/* 2DEB0 8002D2B0 E4B20008 */   swc1      $f18, 8($a1)
/* 2DEB4 8002D2B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2DEB8 8002D2B8 3C01800F */  lui        $at, %hi(D_800F1BDC)
/* 2DEBC 8002D2BC AC231BDC */  sw         $v1, %lo(D_800F1BDC)($at)
/* 2DEC0 8002D2C0 03E00008 */  jr         $ra
/* 2DEC4 8002D2C4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002D2C8
/* 2DEC8 8002D2C8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2DECC 8002D2CC AFBF0014 */  sw         $ra, 0x14($sp)
/* 2DED0 8002D2D0 C4840000 */  lwc1       $f4, ($a0)
/* 2DED4 8002D2D4 3C02800F */  lui        $v0, %hi(D_800F1BB0)
/* 2DED8 8002D2D8 24421BB0 */  addiu      $v0, $v0, %lo(D_800F1BB0)
/* 2DEDC 8002D2DC E4440000 */  swc1       $f4, ($v0)
/* 2DEE0 8002D2E0 C4860004 */  lwc1       $f6, 4($a0)
/* 2DEE4 8002D2E4 3C03800F */  lui        $v1, %hi(D_800F1BC0)
/* 2DEE8 8002D2E8 24631BC0 */  addiu      $v1, $v1, %lo(D_800F1BC0)
/* 2DEEC 8002D2EC E4460004 */  swc1       $f6, 4($v0)
/* 2DEF0 8002D2F0 C4880008 */  lwc1       $f8, 8($a0)
/* 2DEF4 8002D2F4 3C05800F */  lui        $a1, %hi(D_800F1BD0)
/* 2DEF8 8002D2F8 24A51BD0 */  addiu      $a1, $a1, %lo(D_800F1BD0)
/* 2DEFC 8002D2FC E4480008 */  swc1       $f8, 8($v0)
/* 2DF00 8002D300 C48A0000 */  lwc1       $f10, ($a0)
/* 2DF04 8002D304 E46A0000 */  swc1       $f10, ($v1)
/* 2DF08 8002D308 C4900004 */  lwc1       $f16, 4($a0)
/* 2DF0C 8002D30C E4700004 */  swc1       $f16, 4($v1)
/* 2DF10 8002D310 C4920008 */  lwc1       $f18, 8($a0)
/* 2DF14 8002D314 E4720008 */  swc1       $f18, 8($v1)
/* 2DF18 8002D318 C4840000 */  lwc1       $f4, ($a0)
/* 2DF1C 8002D31C E4A40000 */  swc1       $f4, ($a1)
/* 2DF20 8002D320 C4860004 */  lwc1       $f6, 4($a0)
/* 2DF24 8002D324 E4A60004 */  swc1       $f6, 4($a1)
/* 2DF28 8002D328 C4880008 */  lwc1       $f8, 8($a0)
/* 2DF2C 8002D32C 0C002C3F */  jal        func_8000B0FC
/* 2DF30 8002D330 E4A80008 */   swc1      $f8, 8($a1)
/* 2DF34 8002D334 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2DF38 8002D338 3C01800F */  lui        $at, %hi(D_800F1BDC)
/* 2DF3C 8002D33C AC231BDC */  sw         $v1, %lo(D_800F1BDC)($at)
/* 2DF40 8002D340 03E00008 */  jr         $ra
/* 2DF44 8002D344 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002D348
/* 2DF48 8002D348 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2DF4C 8002D34C AFBF001C */  sw         $ra, 0x1c($sp)
/* 2DF50 8002D350 0C002C3F */  jal        func_8000B0FC
/* 2DF54 8002D354 AFA40020 */   sw        $a0, 0x20($sp)
/* 2DF58 8002D358 00402025 */  or         $a0, $v0, $zero
/* 2DF5C 8002D35C 0C0148C6 */  jal        __ull_to_f
/* 2DF60 8002D360 00602825 */   or        $a1, $v1, $zero
/* 2DF64 8002D364 3C0E800F */  lui        $t6, %hi(D_800F1BDC)
/* 2DF68 8002D368 8DCE1BDC */  lw         $t6, %lo(D_800F1BDC)($t6)
/* 2DF6C 8002D36C 3C04800F */  lui        $a0, %hi(D_800F1BB0)
/* 2DF70 8002D370 3C05800F */  lui        $a1, %hi(D_800F1BC0)
/* 2DF74 8002D374 448E2000 */  mtc1       $t6, $f4
/* 2DF78 8002D378 24A51BC0 */  addiu      $a1, $a1, %lo(D_800F1BC0)
/* 2DF7C 8002D37C 24841BB0 */  addiu      $a0, $a0, %lo(D_800F1BB0)
/* 2DF80 8002D380 8FA60020 */  lw         $a2, 0x20($sp)
/* 2DF84 8002D384 3C074416 */  lui        $a3, 0x4416
/* 2DF88 8002D388 05C10005 */  bgez       $t6, .L8002D3A0
/* 2DF8C 8002D38C 468021A0 */   cvt.s.w   $f6, $f4
/* 2DF90 8002D390 3C014F80 */  lui        $at, 0x4f80
/* 2DF94 8002D394 44814000 */  mtc1       $at, $f8
/* 2DF98 8002D398 00000000 */  nop
/* 2DF9C 8002D39C 46083180 */  add.s      $f6, $f6, $f8
.L8002D3A0:
/* 2DFA0 8002D3A0 46060281 */  sub.s      $f10, $f0, $f6
/* 2DFA4 8002D3A4 0C0036F9 */  jal        func_8000DBE4
/* 2DFA8 8002D3A8 E7AA0010 */   swc1      $f10, 0x10($sp)
/* 2DFAC 8002D3AC 8FA60020 */  lw         $a2, 0x20($sp)
/* 2DFB0 8002D3B0 3C04800F */  lui        $a0, %hi(D_800F1BD0)
/* 2DFB4 8002D3B4 24841BD0 */  addiu      $a0, $a0, %lo(D_800F1BD0)
/* 2DFB8 8002D3B8 C4D00000 */  lwc1       $f16, ($a2)
/* 2DFBC 8002D3BC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2DFC0 8002D3C0 E4900000 */  swc1       $f16, ($a0)
/* 2DFC4 8002D3C4 C4D20004 */  lwc1       $f18, 4($a2)
/* 2DFC8 8002D3C8 E4920004 */  swc1       $f18, 4($a0)
/* 2DFCC 8002D3CC C4C40008 */  lwc1       $f4, 8($a2)
/* 2DFD0 8002D3D0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2DFD4 8002D3D4 03E00008 */  jr         $ra
/* 2DFD8 8002D3D8 E4840008 */   swc1      $f4, 8($a0)

glabel func_8002D3DC
/* 2DFDC 8002D3DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2DFE0 8002D3E0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2DFE4 8002D3E4 0C044A09 */  jal        func_80112824
/* 2DFE8 8002D3E8 AFA40018 */   sw        $a0, 0x18($sp)
/* 2DFEC 8002D3EC 8FA50018 */  lw         $a1, 0x18($sp)
/* 2DFF0 8002D3F0 3C03800A */  lui        $v1, %hi(D_80099DC0)
/* 2DFF4 8002D3F4 24639DC0 */  addiu      $v1, $v1, %lo(D_80099DC0)
/* 2DFF8 8002D3F8 00057080 */  sll        $t6, $a1, 2
/* 2DFFC 8002D3FC 01C57021 */  addu       $t6, $t6, $a1
/* 2E000 8002D400 000E7080 */  sll        $t6, $t6, 2
/* 2E004 8002D404 01C57023 */  subu       $t6, $t6, $a1
/* 2E008 8002D408 000E7080 */  sll        $t6, $t6, 2
/* 2E00C 8002D40C 006E7821 */  addu       $t7, $v1, $t6
/* 2E010 8002D410 0002C080 */  sll        $t8, $v0, 2
/* 2E014 8002D414 01F8C821 */  addu       $t9, $t7, $t8
/* 2E018 8002D418 8F280000 */  lw         $t0, ($t9)
/* 2E01C 8002D41C 00054880 */  sll        $t1, $a1, 2
/* 2E020 8002D420 01254821 */  addu       $t1, $t1, $a1
/* 2E024 8002D424 05010003 */  bgez       $t0, .L8002D434
/* 2E028 8002D428 00094880 */   sll       $t1, $t1, 2
/* 2E02C 8002D42C 1000000D */  b          .L8002D464
/* 2E030 8002D430 00001025 */   or        $v0, $zero, $zero
.L8002D434:
/* 2E034 8002D434 01254823 */  subu       $t1, $t1, $a1
/* 2E038 8002D438 00094880 */  sll        $t1, $t1, 2
/* 2E03C 8002D43C 00695021 */  addu       $t2, $v1, $t1
/* 2E040 8002D440 8D44000C */  lw         $a0, 0xc($t2)
/* 2E044 8002D444 2401FFFF */  addiu      $at, $zero, -1
/* 2E048 8002D448 24020001 */  addiu      $v0, $zero, 1
/* 2E04C 8002D44C 10810005 */  beq        $a0, $at, .L8002D464
/* 2E050 8002D450 00000000 */   nop
/* 2E054 8002D454 0C00CB07 */  jal        __osSpSetPc
/* 2E058 8002D458 00000000 */   nop
/* 2E05C 8002D45C 10000002 */  b          .L8002D468
/* 2E060 8002D460 8FBF0014 */   lw        $ra, 0x14($sp)
.L8002D464:
/* 2E064 8002D464 8FBF0014 */  lw         $ra, 0x14($sp)
.L8002D468:
/* 2E068 8002D468 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2E06C 8002D46C 03E00008 */  jr         $ra
/* 2E070 8002D470 00000000 */   nop

glabel func_8002D474
/* 2E074 8002D474 27BDFE90 */  addiu      $sp, $sp, -0x170
/* 2E078 8002D478 AFB60040 */  sw         $s6, 0x40($sp)
/* 2E07C 8002D47C AFB1002C */  sw         $s1, 0x2c($sp)
/* 2E080 8002D480 AFB00028 */  sw         $s0, 0x28($sp)
/* 2E084 8002D484 3C0E800A */  lui        $t6, 0x800a
/* 2E088 8002D488 3C10800A */  lui        $s0, 0x800a
/* 2E08C 8002D48C 27B10128 */  addiu      $s1, $sp, 0x128
/* 2E090 8002D490 3C16E200 */  lui        $s6, 0xe200
/* 2E094 8002D494 AFB40038 */  sw         $s4, 0x38($sp)
/* 2E098 8002D498 AFB30034 */  sw         $s3, 0x34($sp)
/* 2E09C 8002D49C AFB20030 */  sw         $s2, 0x30($sp)
/* 2E0A0 8002D4A0 25CEA11C */  addiu      $t6, $t6, -0x5ee4
/* 2E0A4 8002D4A4 3C12E700 */  lui        $s2, 0xe700
/* 2E0A8 8002D4A8 00809825 */  or         $s3, $a0, $zero
/* 2E0AC 8002D4AC 27B400E0 */  addiu      $s4, $sp, 0xe0
/* 2E0B0 8002D4B0 36D6001C */  ori        $s6, $s6, 0x1c
/* 2E0B4 8002D4B4 2610A114 */  addiu      $s0, $s0, -0x5eec
/* 2E0B8 8002D4B8 AFBF004C */  sw         $ra, 0x4c($sp)
/* 2E0BC 8002D4BC AFBE0048 */  sw         $fp, 0x48($sp)
/* 2E0C0 8002D4C0 AFB70044 */  sw         $s7, 0x44($sp)
/* 2E0C4 8002D4C4 AFB5003C */  sw         $s5, 0x3c($sp)
/* 2E0C8 8002D4C8 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 2E0CC 8002D4CC F7B40018 */  sdc1       $f20, 0x18($sp)
/* 2E0D0 8002D4D0 25D90048 */  addiu      $t9, $t6, 0x48
/* 2E0D4 8002D4D4 02204025 */  or         $t0, $s1, $zero
.L8002D4D8:
/* 2E0D8 8002D4D8 8DC10000 */  lw         $at, ($t6)
/* 2E0DC 8002D4DC 25CE000C */  addiu      $t6, $t6, 0xc
/* 2E0E0 8002D4E0 2508000C */  addiu      $t0, $t0, 0xc
/* 2E0E4 8002D4E4 AD01FFF4 */  sw         $at, -0xc($t0)
/* 2E0E8 8002D4E8 8DC1FFF8 */  lw         $at, -8($t6)
/* 2E0EC 8002D4EC AD01FFF8 */  sw         $at, -8($t0)
/* 2E0F0 8002D4F0 8DC1FFFC */  lw         $at, -4($t6)
/* 2E0F4 8002D4F4 15D9FFF8 */  bne        $t6, $t9, .L8002D4D8
/* 2E0F8 8002D4F8 AD01FFFC */   sw        $at, -4($t0)
/* 2E0FC 8002D4FC 3C09800A */  lui        $t1, %hi(D_8009A164)
/* 2E100 8002D500 2529A164 */  addiu      $t1, $t1, %lo(D_8009A164)
/* 2E104 8002D504 252C0048 */  addiu      $t4, $t1, 0x48
/* 2E108 8002D508 02806825 */  or         $t5, $s4, $zero
.L8002D50C:
/* 2E10C 8002D50C 8D210000 */  lw         $at, ($t1)
/* 2E110 8002D510 2529000C */  addiu      $t1, $t1, 0xc
/* 2E114 8002D514 25AD000C */  addiu      $t5, $t5, 0xc
/* 2E118 8002D518 ADA1FFF4 */  sw         $at, -0xc($t5)
/* 2E11C 8002D51C 8D21FFF8 */  lw         $at, -8($t1)
/* 2E120 8002D520 ADA1FFF8 */  sw         $at, -8($t5)
/* 2E124 8002D524 8D21FFFC */  lw         $at, -4($t1)
/* 2E128 8002D528 152CFFF8 */  bne        $t1, $t4, .L8002D50C
/* 2E12C 8002D52C ADA1FFFC */   sw        $at, -4($t5)
/* 2E130 8002D530 3C0F800A */  lui        $t7, %hi(D_8009A1AC)
/* 2E134 8002D534 25EFA1AC */  addiu      $t7, $t7, %lo(D_8009A1AC)
/* 2E138 8002D538 25E80048 */  addiu      $t0, $t7, 0x48
/* 2E13C 8002D53C 27B80098 */  addiu      $t8, $sp, 0x98
.L8002D540:
/* 2E140 8002D540 8DE10000 */  lw         $at, ($t7)
/* 2E144 8002D544 25EF000C */  addiu      $t7, $t7, 0xc
/* 2E148 8002D548 2718000C */  addiu      $t8, $t8, 0xc
/* 2E14C 8002D54C AF01FFF4 */  sw         $at, -0xc($t8)
/* 2E150 8002D550 8DE1FFF8 */  lw         $at, -8($t7)
/* 2E154 8002D554 AF01FFF8 */  sw         $at, -8($t8)
/* 2E158 8002D558 8DE1FFFC */  lw         $at, -4($t7)
/* 2E15C 8002D55C 15E8FFF8 */  bne        $t7, $t0, .L8002D540
/* 2E160 8002D560 AF01FFFC */   sw        $at, -4($t8)
/* 2E164 8002D564 8E620000 */  lw         $v0, ($s3)
/* 2E168 8002D568 3C0C0050 */  lui        $t4, 0x50
/* 2E16C 8002D56C 358C4240 */  ori        $t4, $t4, 0x4240
/* 2E170 8002D570 244B0008 */  addiu      $t3, $v0, 8
/* 2E174 8002D574 AE6B0000 */  sw         $t3, ($s3)
/* 2E178 8002D578 AC400004 */  sw         $zero, 4($v0)
/* 2E17C 8002D57C AC520000 */  sw         $s2, ($v0)
/* 2E180 8002D580 8E620000 */  lw         $v0, ($s3)
/* 2E184 8002D584 3C0DFCFF */  lui        $t5, 0xfcff
/* 2E188 8002D588 3C0EFF2C */  lui        $t6, 0xff2c
/* 2E18C 8002D58C 244A0008 */  addiu      $t2, $v0, 8
/* 2E190 8002D590 AE6A0000 */  sw         $t2, ($s3)
/* 2E194 8002D594 AC4C0004 */  sw         $t4, 4($v0)
/* 2E198 8002D598 AC560000 */  sw         $s6, ($v0)
/* 2E19C 8002D59C 8E620000 */  lw         $v0, ($s3)
/* 2E1A0 8002D5A0 35CEFE7F */  ori        $t6, $t6, 0xfe7f
/* 2E1A4 8002D5A4 35AD97FF */  ori        $t5, $t5, 0x97ff
/* 2E1A8 8002D5A8 24490008 */  addiu      $t1, $v0, 8
/* 2E1AC 8002D5AC AE690000 */  sw         $t1, ($s3)
/* 2E1B0 8002D5B0 AC4E0004 */  sw         $t6, 4($v0)
/* 2E1B4 8002D5B4 AC4D0000 */  sw         $t5, ($v0)
/* 2E1B8 8002D5B8 8E620000 */  lw         $v0, ($s3)
/* 2E1BC 8002D5BC 3C08FA00 */  lui        $t0, 0xfa00
/* 2E1C0 8002D5C0 3C01FF00 */  lui        $at, 0xff00
/* 2E1C4 8002D5C4 24590008 */  addiu      $t9, $v0, 8
/* 2E1C8 8002D5C8 AE790000 */  sw         $t9, ($s3)
/* 2E1CC 8002D5CC AC480000 */  sw         $t0, ($v0)
/* 2E1D0 8002D5D0 8E0F0000 */  lw         $t7, ($s0)
/* 2E1D4 8002D5D4 3C03800F */  lui        $v1, %hi(D_800F1B74)
/* 2E1D8 8002D5D8 240C0025 */  addiu      $t4, $zero, 0x25
/* 2E1DC 8002D5DC 31F800FF */  andi       $t8, $t7, 0xff
/* 2E1E0 8002D5E0 03015825 */  or         $t3, $t8, $at
/* 2E1E4 8002D5E4 AC4B0004 */  sw         $t3, 4($v0)
/* 2E1E8 8002D5E8 8C631B74 */  lw         $v1, %lo(D_800F1B74)($v1)
/* 2E1EC 8002D5EC 24010002 */  addiu      $at, $zero, 2
/* 2E1F0 8002D5F0 241E004C */  addiu      $fp, $zero, 0x4c
/* 2E1F4 8002D5F4 10610008 */  beq        $v1, $at, .L8002D618
/* 2E1F8 8002D5F8 00601025 */   or        $v0, $v1, $zero
/* 2E1FC 8002D5FC 24010005 */  addiu      $at, $zero, 5
/* 2E200 8002D600 10410005 */  beq        $v0, $at, .L8002D618
/* 2E204 8002D604 24010007 */   addiu     $at, $zero, 7
/* 2E208 8002D608 10410003 */  beq        $v0, $at, .L8002D618
/* 2E20C 8002D60C 240A0010 */   addiu     $t2, $zero, 0x10
/* 2E210 8002D610 10000002 */  b          .L8002D61C
/* 2E214 8002D614 AFAA0128 */   sw        $t2, 0x128($sp)
.L8002D618:
/* 2E218 8002D618 AFAC0128 */  sw         $t4, 0x128($sp)
.L8002D61C:
/* 2E21C 8002D61C 007E0019 */  multu      $v1, $fp
/* 2E220 8002D620 3C17800A */  lui        $s7, %hi(D_80099DC0)
/* 2E224 8002D624 26F79DC0 */  addiu      $s7, $s7, %lo(D_80099DC0)
/* 2E228 8002D628 24040007 */  addiu      $a0, $zero, 7
/* 2E22C 8002D62C 02202825 */  or         $a1, $s1, $zero
/* 2E230 8002D630 02603025 */  or         $a2, $s3, $zero
/* 2E234 8002D634 00004812 */  mflo       $t1
/* 2E238 8002D638 02E91021 */  addu       $v0, $s7, $t1
/* 2E23C 8002D63C 8C4D0020 */  lw         $t5, 0x20($v0)
/* 2E240 8002D640 8C4E0024 */  lw         $t6, 0x24($v0)
/* 2E244 8002D644 AFAD012C */  sw         $t5, 0x12c($sp)
/* 2E248 8002D648 0C0030D5 */  jal        func_8000C354
/* 2E24C 8002D64C AFAE0130 */   sw        $t6, 0x130($sp)
/* 2E250 8002D650 3C19800A */  lui        $t9, %hi(D_8009A110)
/* 2E254 8002D654 8F39A110 */  lw         $t9, %lo(D_8009A110)($t9)
/* 2E258 8002D658 24010003 */  addiu      $at, $zero, 3
/* 2E25C 8002D65C 24150008 */  addiu      $s5, $zero, 8
/* 2E260 8002D660 17210006 */  bne        $t9, $at, .L8002D67C
/* 2E264 8002D664 3C0D0050 */   lui       $t5, 0x50
/* 2E268 8002D668 3C05800A */  lui        $a1, %hi(D_8009A118)
/* 2E26C 8002D66C 24A5A118 */  addiu      $a1, $a1, %lo(D_8009A118)
/* 2E270 8002D670 8CA20000 */  lw         $v0, ($a1)
/* 2E274 8002D674 10000005 */  b          .L8002D68C
/* 2E278 8002D678 00022100 */   sll       $a0, $v0, 4
.L8002D67C:
/* 2E27C 8002D67C 3C05800A */  lui        $a1, %hi(D_8009A118)
/* 2E280 8002D680 24A5A118 */  addiu      $a1, $a1, %lo(D_8009A118)
/* 2E284 8002D684 8CA20000 */  lw         $v0, ($a1)
/* 2E288 8002D688 00402025 */  or         $a0, $v0, $zero
.L8002D68C:
/* 2E28C 8002D68C 8E080000 */  lw         $t0, ($s0)
/* 2E290 8002D690 35AD4240 */  ori        $t5, $t5, 0x4240
/* 2E294 8002D694 3C19FCFF */  lui        $t9, 0xfcff
/* 2E298 8002D698 01041821 */  addu       $v1, $t0, $a0
/* 2E29C 8002D69C 28610100 */  slti       $at, $v1, 0x100
/* 2E2A0 8002D6A0 14200006 */  bnez       $at, .L8002D6BC
/* 2E2A4 8002D6A4 AE030000 */   sw        $v1, ($s0)
/* 2E2A8 8002D6A8 241800FF */  addiu      $t8, $zero, 0xff
/* 2E2AC 8002D6AC 00025823 */  negu       $t3, $v0
/* 2E2B0 8002D6B0 AE180000 */  sw         $t8, ($s0)
/* 2E2B4 8002D6B4 10000005 */  b          .L8002D6CC
/* 2E2B8 8002D6B8 ACAB0000 */   sw        $t3, ($a1)
.L8002D6BC:
/* 2E2BC 8002D6BC 04610003 */  bgez       $v1, .L8002D6CC
/* 2E2C0 8002D6C0 00025023 */   negu      $t2, $v0
/* 2E2C4 8002D6C4 AE000000 */  sw         $zero, ($s0)
/* 2E2C8 8002D6C8 ACAA0000 */  sw         $t2, ($a1)
.L8002D6CC:
/* 2E2CC 8002D6CC 8E620000 */  lw         $v0, ($s3)
/* 2E2D0 8002D6D0 3C08FFFC */  lui        $t0, 0xfffc
/* 2E2D4 8002D6D4 3508F279 */  ori        $t0, $t0, 0xf279
/* 2E2D8 8002D6D8 244C0008 */  addiu      $t4, $v0, 8
/* 2E2DC 8002D6DC AE6C0000 */  sw         $t4, ($s3)
/* 2E2E0 8002D6E0 AC400004 */  sw         $zero, 4($v0)
/* 2E2E4 8002D6E4 AC520000 */  sw         $s2, ($v0)
/* 2E2E8 8002D6E8 8E620000 */  lw         $v0, ($s3)
/* 2E2EC 8002D6EC 3739FFFF */  ori        $t9, $t9, 0xffff
/* 2E2F0 8002D6F0 3C01800A */  lui        $at, 0x800a
/* 2E2F4 8002D6F4 24490008 */  addiu      $t1, $v0, 8
/* 2E2F8 8002D6F8 AE690000 */  sw         $t1, ($s3)
/* 2E2FC 8002D6FC AC4D0004 */  sw         $t5, 4($v0)
/* 2E300 8002D700 AC560000 */  sw         $s6, ($v0)
/* 2E304 8002D704 8E620000 */  lw         $v0, ($s3)
/* 2E308 8002D708 24160004 */  addiu      $s6, $zero, 4
/* 2E30C 8002D70C 00008025 */  or         $s0, $zero, $zero
/* 2E310 8002D710 244E0008 */  addiu      $t6, $v0, 8
/* 2E314 8002D714 AE6E0000 */  sw         $t6, ($s3)
/* 2E318 8002D718 AC480004 */  sw         $t0, 4($v0)
/* 2E31C 8002D71C AC590000 */  sw         $t9, ($v0)
/* 2E320 8002D720 C4365A74 */  lwc1       $f22, 0x5a74($at)
/* 2E324 8002D724 3C01800A */  lui        $at, %hi(D_800A5A78)
/* 2E328 8002D728 C4345A78 */  lwc1       $f20, %lo(D_800A5A78)($at)
.L8002D72C:
/* 2E32C 8002D72C 0C00B4F7 */  jal        func_8002D3DC
/* 2E330 8002D730 02002025 */   or        $a0, $s0, $zero
/* 2E334 8002D734 10400043 */  beqz       $v0, .L8002D844
/* 2E338 8002D738 24040007 */   addiu     $a0, $zero, 7
/* 2E33C 8002D73C 021E0019 */  multu      $s0, $fp
/* 2E340 8002D740 00104880 */  sll        $t1, $s0, 2
/* 2E344 8002D744 01304821 */  addu       $t1, $t1, $s0
/* 2E348 8002D748 00094880 */  sll        $t1, $t1, 2
/* 2E34C 8002D74C 01304823 */  subu       $t1, $t1, $s0
/* 2E350 8002D750 02806025 */  or         $t4, $s4, $zero
/* 2E354 8002D754 00094880 */  sll        $t1, $t1, 2
/* 2E358 8002D758 02802825 */  or         $a1, $s4, $zero
/* 2E35C 8002D75C 02603025 */  or         $a2, $s3, $zero
/* 2E360 8002D760 00007812 */  mflo       $t7
/* 2E364 8002D764 02EFC021 */  addu       $t8, $s7, $t7
/* 2E368 8002D768 270A0024 */  addiu      $t2, $t8, 0x24
.L8002D76C:
/* 2E36C 8002D76C 8F01001C */  lw         $at, 0x1c($t8)
/* 2E370 8002D770 2718000C */  addiu      $t8, $t8, 0xc
/* 2E374 8002D774 258C000C */  addiu      $t4, $t4, 0xc
/* 2E378 8002D778 AD81FFF4 */  sw         $at, -0xc($t4)
/* 2E37C 8002D77C 8F010014 */  lw         $at, 0x14($t8)
/* 2E380 8002D780 AD81FFF8 */  sw         $at, -8($t4)
/* 2E384 8002D784 8F010018 */  lw         $at, 0x18($t8)
/* 2E388 8002D788 170AFFF8 */  bne        $t8, $t2, .L8002D76C
/* 2E38C 8002D78C AD81FFFC */   sw        $at, -4($t4)
/* 2E390 8002D790 0C0030D5 */  jal        func_8000C354
/* 2E394 8002D794 02E99021 */   addu      $s2, $s7, $t1
/* 2E398 8002D798 0C044A09 */  jal        func_80112824
/* 2E39C 8002D79C 00000000 */   nop
/* 2E3A0 8002D7A0 00026880 */  sll        $t5, $v0, 2
/* 2E3A4 8002D7A4 024D7021 */  addu       $t6, $s2, $t5
/* 2E3A8 8002D7A8 8DD10040 */  lw         $s1, 0x40($t6)
/* 2E3AC 8002D7AC 06220026 */  bltzl      $s1, .L8002D848
/* 2E3B0 8002D7B0 26100001 */   addiu     $s0, $s0, 1
/* 2E3B4 8002D7B4 16160005 */  bne        $s0, $s6, .L8002D7CC
/* 2E3B8 8002D7B8 8FAF00E4 */   lw        $t7, 0xe4($sp)
/* 2E3BC 8002D7BC 8FB900E4 */  lw         $t9, 0xe4($sp)
/* 2E3C0 8002D7C0 2728FFE5 */  addiu      $t0, $t9, -0x1b
/* 2E3C4 8002D7C4 10000003 */  b          .L8002D7D4
/* 2E3C8 8002D7C8 AFA8009C */   sw        $t0, 0x9c($sp)
.L8002D7CC:
/* 2E3CC 8002D7CC 25EB0037 */  addiu      $t3, $t7, 0x37
/* 2E3D0 8002D7D0 AFAB009C */  sw         $t3, 0x9c($sp)
.L8002D7D4:
/* 2E3D4 8002D7D4 0C002C4D */  jal        func_8000B134
/* 2E3D8 8002D7D8 00000000 */   nop
/* 2E3DC 8002D7DC 320A0001 */  andi       $t2, $s0, 1
/* 2E3E0 8002D7E0 11400003 */  beqz       $t2, .L8002D7F0
/* 2E3E4 8002D7E4 304300FF */   andi      $v1, $v0, 0xff
/* 2E3E8 8002D7E8 10000002 */  b          .L8002D7F4
/* 2E3EC 8002D7EC 4600A006 */   mov.s     $f0, $f20
.L8002D7F0:
/* 2E3F0 8002D7F0 4600B006 */  mov.s      $f0, $f22
.L8002D7F4:
/* 2E3F4 8002D7F4 44832000 */  mtc1       $v1, $f4
/* 2E3F8 8002D7F8 3C014F80 */  lui        $at, 0x4f80
/* 2E3FC 8002D7FC 04610004 */  bgez       $v1, .L8002D810
/* 2E400 8002D800 468021A0 */   cvt.s.w   $f6, $f4
/* 2E404 8002D804 44814000 */  mtc1       $at, $f8
/* 2E408 8002D808 00000000 */  nop
/* 2E40C 8002D80C 46083180 */  add.s      $f6, $f6, $f8
.L8002D810:
/* 2E410 8002D810 8FB800E8 */  lw         $t8, 0xe8($sp)
/* 2E414 8002D814 46060282 */  mul.s      $f10, $f0, $f6
/* 2E418 8002D818 AFB10098 */  sw         $s1, 0x98($sp)
/* 2E41C 8002D81C 44988000 */  mtc1       $t8, $f16
/* 2E420 8002D820 24040007 */  addiu      $a0, $zero, 7
/* 2E424 8002D824 27A50098 */  addiu      $a1, $sp, 0x98
/* 2E428 8002D828 02603025 */  or         $a2, $s3, $zero
/* 2E42C 8002D82C 468084A0 */  cvt.s.w    $f18, $f16
/* 2E430 8002D830 46125100 */  add.s      $f4, $f10, $f18
/* 2E434 8002D834 4600220D */  trunc.w.s  $f8, $f4
/* 2E438 8002D838 44094000 */  mfc1       $t1, $f8
/* 2E43C 8002D83C 0C0030D5 */  jal        func_8000C354
/* 2E440 8002D840 AFA900A0 */   sw        $t1, 0xa0($sp)
.L8002D844:
/* 2E444 8002D844 26100001 */  addiu      $s0, $s0, 1
.L8002D848:
/* 2E448 8002D848 02B0082A */  slt        $at, $s5, $s0
/* 2E44C 8002D84C 1020FFB7 */  beqz       $at, .L8002D72C
/* 2E450 8002D850 00000000 */   nop
/* 2E454 8002D854 8FBF004C */  lw         $ra, 0x4c($sp)
/* 2E458 8002D858 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 2E45C 8002D85C D7B60020 */  ldc1       $f22, 0x20($sp)
/* 2E460 8002D860 8FB00028 */  lw         $s0, 0x28($sp)
/* 2E464 8002D864 8FB1002C */  lw         $s1, 0x2c($sp)
/* 2E468 8002D868 8FB20030 */  lw         $s2, 0x30($sp)
/* 2E46C 8002D86C 8FB30034 */  lw         $s3, 0x34($sp)
/* 2E470 8002D870 8FB40038 */  lw         $s4, 0x38($sp)
/* 2E474 8002D874 8FB5003C */  lw         $s5, 0x3c($sp)
/* 2E478 8002D878 8FB60040 */  lw         $s6, 0x40($sp)
/* 2E47C 8002D87C 8FB70044 */  lw         $s7, 0x44($sp)
/* 2E480 8002D880 8FBE0048 */  lw         $fp, 0x48($sp)
/* 2E484 8002D884 03E00008 */  jr         $ra
/* 2E488 8002D888 27BD0170 */   addiu     $sp, $sp, 0x170

glabel func_8002D88C
/* 2E48C 8002D88C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2E490 8002D890 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2E494 8002D894 0C044A09 */  jal        func_80112824
/* 2E498 8002D898 AFA40018 */   sw        $a0, 0x18($sp)
/* 2E49C 8002D89C 8FA40018 */  lw         $a0, 0x18($sp)
/* 2E4A0 8002D8A0 00027880 */  sll        $t7, $v0, 2
/* 2E4A4 8002D8A4 3C19800A */  lui        $t9, 0x800a
/* 2E4A8 8002D8A8 00047080 */  sll        $t6, $a0, 2
/* 2E4AC 8002D8AC 01C47021 */  addu       $t6, $t6, $a0
/* 2E4B0 8002D8B0 000E7080 */  sll        $t6, $t6, 2
/* 2E4B4 8002D8B4 01C47023 */  subu       $t6, $t6, $a0
/* 2E4B8 8002D8B8 000E7080 */  sll        $t6, $t6, 2
/* 2E4BC 8002D8BC 01CFC021 */  addu       $t8, $t6, $t7
/* 2E4C0 8002D8C0 0338C821 */  addu       $t9, $t9, $t8
/* 2E4C4 8002D8C4 8F399DC0 */  lw         $t9, -0x6240($t9)
/* 2E4C8 8002D8C8 07210003 */  bgez       $t9, .L8002D8D8
/* 2E4CC 8002D8CC 00000000 */   nop
/* 2E4D0 8002D8D0 10000008 */  b          .L8002D8F4
/* 2E4D4 8002D8D4 00001025 */   or        $v0, $zero, $zero
.L8002D8D8:
/* 2E4D8 8002D8D8 0C00B4F7 */  jal        func_8002D3DC
/* 2E4DC 8002D8DC 00000000 */   nop
/* 2E4E0 8002D8E0 50400004 */  beql       $v0, $zero, .L8002D8F4
/* 2E4E4 8002D8E4 24020001 */   addiu     $v0, $zero, 1
/* 2E4E8 8002D8E8 10000002 */  b          .L8002D8F4
/* 2E4EC 8002D8EC 00001025 */   or        $v0, $zero, $zero
/* 2E4F0 8002D8F0 24020001 */  addiu      $v0, $zero, 1
.L8002D8F4:
/* 2E4F4 8002D8F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2E4F8 8002D8F8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2E4FC 8002D8FC 03E00008 */  jr         $ra
/* 2E500 8002D900 00000000 */   nop

glabel func_8002D904
/* 2E504 8002D904 27BDFF18 */  addiu      $sp, $sp, -0xe8
/* 2E508 8002D908 AFB10024 */  sw         $s1, 0x24($sp)
/* 2E50C 8002D90C 3C013F80 */  lui        $at, 0x3f80
/* 2E510 8002D910 00808825 */  or         $s1, $a0, $zero
/* 2E514 8002D914 44810000 */  mtc1       $at, $f0
/* 2E518 8002D918 AFBF0044 */  sw         $ra, 0x44($sp)
/* 2E51C 8002D91C AFBE0040 */  sw         $fp, 0x40($sp)
/* 2E520 8002D920 AFB7003C */  sw         $s7, 0x3c($sp)
/* 2E524 8002D924 AFB60038 */  sw         $s6, 0x38($sp)
/* 2E528 8002D928 AFB50034 */  sw         $s5, 0x34($sp)
/* 2E52C 8002D92C AFB40030 */  sw         $s4, 0x30($sp)
/* 2E530 8002D930 AFB3002C */  sw         $s3, 0x2c($sp)
/* 2E534 8002D934 AFB20028 */  sw         $s2, 0x28($sp)
/* 2E538 8002D938 AFB00020 */  sw         $s0, 0x20($sp)
/* 2E53C 8002D93C F7B40018 */  sdc1       $f20, 0x18($sp)
/* 2E540 8002D940 27A400C4 */  addiu      $a0, $sp, 0xc4
/* 2E544 8002D944 27A2007C */  addiu      $v0, $sp, 0x7c
/* 2E548 8002D948 24030040 */  addiu      $v1, $zero, 0x40
.L8002D94C:
/* 2E54C 8002D94C 24420024 */  addiu      $v0, $v0, 0x24
/* 2E550 8002D950 AC43FFE8 */  sw         $v1, -0x18($v0)
/* 2E554 8002D954 AC43FFEC */  sw         $v1, -0x14($v0)
/* 2E558 8002D958 AC40FFF0 */  sw         $zero, -0x10($v0)
/* 2E55C 8002D95C AC40FFF4 */  sw         $zero, -0xc($v0)
/* 2E560 8002D960 E440FFF8 */  swc1       $f0, -8($v0)
/* 2E564 8002D964 1444FFF9 */  bne        $v0, $a0, .L8002D94C
/* 2E568 8002D968 E440FFFC */   swc1      $f0, -4($v0)
/* 2E56C 8002D96C 3C1EE200 */  lui        $fp, 0xe200
/* 2E570 8002D970 3C14800A */  lui        $s4, %hi(D_80099DC0)
/* 2E574 8002D974 26949DC0 */  addiu      $s4, $s4, %lo(D_80099DC0)
/* 2E578 8002D978 37DE001C */  ori        $fp, $fp, 0x1c
/* 2E57C 8002D97C 00009025 */  or         $s2, $zero, $zero
/* 2E580 8002D980 27B7007C */  addiu      $s7, $sp, 0x7c
/* 2E584 8002D984 3C16E700 */  lui        $s6, 0xe700
/* 2E588 8002D988 2415004C */  addiu      $s5, $zero, 0x4c
.L8002D98C:
/* 2E58C 8002D98C 0C00B623 */  jal        func_8002D88C
/* 2E590 8002D990 02402025 */   or        $a0, $s2, $zero
/* 2E594 8002D994 50400035 */  beql       $v0, $zero, .L8002DA6C
/* 2E598 8002D998 26520001 */   addiu     $s2, $s2, 1
/* 2E59C 8002D99C 02550019 */  multu      $s2, $s5
/* 2E5A0 8002D9A0 8FAB0088 */  lw         $t3, 0x88($sp)
/* 2E5A4 8002D9A4 240F0006 */  addiu      $t7, $zero, 6
/* 2E5A8 8002D9A8 24180007 */  addiu      $t8, $zero, 7
/* 2E5AC 8002D9AC 2419FFFF */  addiu      $t9, $zero, -1
/* 2E5B0 8002D9B0 AFAF007C */  sw         $t7, 0x7c($sp)
/* 2E5B4 8002D9B4 AFB800A0 */  sw         $t8, 0xa0($sp)
/* 2E5B8 8002D9B8 AFB900C4 */  sw         $t9, 0xc4($sp)
/* 2E5BC 8002D9BC 3C190050 */  lui        $t9, 0x50
/* 2E5C0 8002D9C0 37394240 */  ori        $t9, $t9, 0x4240
/* 2E5C4 8002D9C4 00007012 */  mflo       $t6
/* 2E5C8 8002D9C8 028E8021 */  addu       $s0, $s4, $t6
/* 2E5CC 8002D9CC 8E130020 */  lw         $s3, 0x20($s0)
/* 2E5D0 8002D9D0 8E080024 */  lw         $t0, 0x24($s0)
/* 2E5D4 8002D9D4 240E0080 */  addiu      $t6, $zero, 0x80
/* 2E5D8 8002D9D8 2669FFF0 */  addiu      $t1, $s3, -0x10
/* 2E5DC 8002D9DC 250A0008 */  addiu      $t2, $t0, 8
/* 2E5E0 8002D9E0 01696821 */  addu       $t5, $t3, $t1
/* 2E5E4 8002D9E4 AFA90080 */  sw         $t1, 0x80($sp)
/* 2E5E8 8002D9E8 AFAA0084 */  sw         $t2, 0x84($sp)
/* 2E5EC 8002D9EC AFAD00A4 */  sw         $t5, 0xa4($sp)
/* 2E5F0 8002D9F0 AFAA00A8 */  sw         $t2, 0xa8($sp)
/* 2E5F4 8002D9F4 8E220000 */  lw         $v0, ($s1)
/* 2E5F8 8002D9F8 3C0AFCFF */  lui        $t2, 0xfcff
/* 2E5FC 8002D9FC 3C0BFF2C */  lui        $t3, 0xff2c
/* 2E600 8002DA00 244F0008 */  addiu      $t7, $v0, 8
/* 2E604 8002DA04 AE2F0000 */  sw         $t7, ($s1)
/* 2E608 8002DA08 AC400004 */  sw         $zero, 4($v0)
/* 2E60C 8002DA0C AC560000 */  sw         $s6, ($v0)
/* 2E610 8002DA10 8E220000 */  lw         $v0, ($s1)
/* 2E614 8002DA14 356BFE7F */  ori        $t3, $t3, 0xfe7f
/* 2E618 8002DA18 354A97FF */  ori        $t2, $t2, 0x97ff
/* 2E61C 8002DA1C 24580008 */  addiu      $t8, $v0, 8
/* 2E620 8002DA20 AE380000 */  sw         $t8, ($s1)
/* 2E624 8002DA24 AC590004 */  sw         $t9, 4($v0)
/* 2E628 8002DA28 AC5E0000 */  sw         $fp, ($v0)
/* 2E62C 8002DA2C 8E220000 */  lw         $v0, ($s1)
/* 2E630 8002DA30 3C0DFA00 */  lui        $t5, 0xfa00
/* 2E634 8002DA34 24040007 */  addiu      $a0, $zero, 7
/* 2E638 8002DA38 24490008 */  addiu      $t1, $v0, 8
/* 2E63C 8002DA3C AE290000 */  sw         $t1, ($s1)
/* 2E640 8002DA40 AC4B0004 */  sw         $t3, 4($v0)
/* 2E644 8002DA44 AC4A0000 */  sw         $t2, ($v0)
/* 2E648 8002DA48 8E220000 */  lw         $v0, ($s1)
/* 2E64C 8002DA4C 02E02825 */  or         $a1, $s7, $zero
/* 2E650 8002DA50 02203025 */  or         $a2, $s1, $zero
/* 2E654 8002DA54 244C0008 */  addiu      $t4, $v0, 8
/* 2E658 8002DA58 AE2C0000 */  sw         $t4, ($s1)
/* 2E65C 8002DA5C AC4E0004 */  sw         $t6, 4($v0)
/* 2E660 8002DA60 0C0030D5 */  jal        func_8000C354
/* 2E664 8002DA64 AC4D0000 */   sw        $t5, ($v0)
/* 2E668 8002DA68 26520001 */  addiu      $s2, $s2, 1
.L8002DA6C:
/* 2E66C 8002DA6C 2A410009 */  slti       $at, $s2, 9
/* 2E670 8002DA70 1420FFC6 */  bnez       $at, .L8002D98C
/* 2E674 8002DA74 00000000 */   nop
/* 2E678 8002DA78 3C014004 */  lui        $at, 0x4004
/* 2E67C 8002DA7C 4481A800 */  mtc1       $at, $f21
/* 2E680 8002DA80 4480A000 */  mtc1       $zero, $f20
/* 2E684 8002DA84 00009025 */  or         $s2, $zero, $zero
/* 2E688 8002DA88 241E0009 */  addiu      $fp, $zero, 9
.L8002DA8C:
/* 2E68C 8002DA8C 0C00B623 */  jal        func_8002D88C
/* 2E690 8002DA90 02402025 */   or        $a0, $s2, $zero
/* 2E694 8002DA94 50400031 */  beql       $v0, $zero, .L8002DB5C
/* 2E698 8002DA98 26520001 */   addiu     $s2, $s2, 1
/* 2E69C 8002DA9C 02550019 */  multu      $s2, $s5
/* 2E6A0 8002DAA0 3C02800A */  lui        $v0, %hi(D_8009A1F4)
/* 2E6A4 8002DAA4 8C42A1F4 */  lw         $v0, %lo(D_8009A1F4)($v0)
/* 2E6A8 8002DAA8 44822000 */  mtc1       $v0, $f4
/* 2E6AC 8002DAAC 00000000 */  nop
/* 2E6B0 8002DAB0 46802320 */  cvt.s.w    $f12, $f4
/* 2E6B4 8002DAB4 00007812 */  mflo       $t7
/* 2E6B8 8002DAB8 028F8021 */  addu       $s0, $s4, $t7
/* 2E6BC 8002DABC 0C00F0F7 */  jal        func_8003C3DC
/* 2E6C0 8002DAC0 8E130020 */   lw        $s3, 0x20($s0)
/* 2E6C4 8002DAC4 460001A1 */  cvt.d.s    $f6, $f0
/* 2E6C8 8002DAC8 8E090024 */  lw         $t1, 0x24($s0)
/* 2E6CC 8002DACC 46343202 */  mul.d      $f8, $f6, $f20
/* 2E6D0 8002DAD0 8FAE0088 */  lw         $t6, 0x88($sp)
/* 2E6D4 8002DAD4 266CFFF0 */  addiu      $t4, $s3, -0x10
/* 2E6D8 8002DAD8 240A0008 */  addiu      $t2, $zero, 8
/* 2E6DC 8002DADC 240BFFFF */  addiu      $t3, $zero, -1
/* 2E6E0 8002DAE0 01CCC021 */  addu       $t8, $t6, $t4
/* 2E6E4 8002DAE4 AFAA007C */  sw         $t2, 0x7c($sp)
/* 2E6E8 8002DAE8 AFBE00A0 */  sw         $fp, 0xa0($sp)
/* 2E6EC 8002DAEC 4620428D */  trunc.w.d  $f10, $f8
/* 2E6F0 8002DAF0 AFAB00C4 */  sw         $t3, 0xc4($sp)
/* 2E6F4 8002DAF4 AFAC0080 */  sw         $t4, 0x80($sp)
/* 2E6F8 8002DAF8 AFB800A4 */  sw         $t8, 0xa4($sp)
/* 2E6FC 8002DAFC 44195000 */  mfc1       $t9, $f10
/* 2E700 8002DB00 3C0CFFFC */  lui        $t4, 0xfffc
/* 2E704 8002DB04 3C0BFCFF */  lui        $t3, 0xfcff
/* 2E708 8002DB08 03294021 */  addu       $t0, $t9, $t1
/* 2E70C 8002DB0C 250DFFF8 */  addiu      $t5, $t0, -8
/* 2E710 8002DB10 AFAD0084 */  sw         $t5, 0x84($sp)
/* 2E714 8002DB14 AFAD00A8 */  sw         $t5, 0xa8($sp)
/* 2E718 8002DB18 8E220000 */  lw         $v0, ($s1)
/* 2E71C 8002DB1C 356BFFFF */  ori        $t3, $t3, 0xffff
/* 2E720 8002DB20 358CF279 */  ori        $t4, $t4, 0xf279
/* 2E724 8002DB24 24490008 */  addiu      $t1, $v0, 8
/* 2E728 8002DB28 AE290000 */  sw         $t1, ($s1)
/* 2E72C 8002DB2C AC400004 */  sw         $zero, 4($v0)
/* 2E730 8002DB30 AC560000 */  sw         $s6, ($v0)
/* 2E734 8002DB34 8E220000 */  lw         $v0, ($s1)
/* 2E738 8002DB38 24040007 */  addiu      $a0, $zero, 7
/* 2E73C 8002DB3C 02E02825 */  or         $a1, $s7, $zero
/* 2E740 8002DB40 244A0008 */  addiu      $t2, $v0, 8
/* 2E744 8002DB44 AE2A0000 */  sw         $t2, ($s1)
/* 2E748 8002DB48 02203025 */  or         $a2, $s1, $zero
/* 2E74C 8002DB4C AC4C0004 */  sw         $t4, 4($v0)
/* 2E750 8002DB50 0C0030D5 */  jal        func_8000C354
/* 2E754 8002DB54 AC4B0000 */   sw        $t3, ($v0)
/* 2E758 8002DB58 26520001 */  addiu      $s2, $s2, 1
.L8002DB5C:
/* 2E75C 8002DB5C 165EFFCB */  bne        $s2, $fp, .L8002DA8C
/* 2E760 8002DB60 00000000 */   nop
/* 2E764 8002DB64 3C02800A */  lui        $v0, %hi(D_8009A1F4)
/* 2E768 8002DB68 8C42A1F4 */  lw         $v0, %lo(D_8009A1F4)($v0)
/* 2E76C 8002DB6C 3C01800A */  lui        $at, 0x800a
/* 2E770 8002DB70 24420005 */  addiu      $v0, $v0, 5
/* 2E774 8002DB74 04410004 */  bgez       $v0, .L8002DB88
/* 2E778 8002DB78 00000000 */   nop
/* 2E77C 8002DB7C 24420168 */  addiu      $v0, $v0, 0x168
.L8002DB80:
/* 2E780 8002DB80 0442FFFF */  bltzl      $v0, .L8002DB80
/* 2E784 8002DB84 24420168 */   addiu     $v0, $v0, 0x168
.L8002DB88:
/* 2E788 8002DB88 AC22A1F4 */  sw         $v0, -0x5e0c($at)
/* 2E78C 8002DB8C 28410168 */  slti       $at, $v0, 0x168
/* 2E790 8002DB90 14200006 */  bnez       $at, .L8002DBAC
/* 2E794 8002DB94 2442FE98 */   addiu     $v0, $v0, -0x168
.L8002DB98:
/* 2E798 8002DB98 28410168 */  slti       $at, $v0, 0x168
/* 2E79C 8002DB9C 5020FFFE */  beql       $at, $zero, .L8002DB98
/* 2E7A0 8002DBA0 2442FE98 */   addiu     $v0, $v0, -0x168
/* 2E7A4 8002DBA4 3C01800A */  lui        $at, %hi(D_8009A1F4)
/* 2E7A8 8002DBA8 AC22A1F4 */  sw         $v0, %lo(D_8009A1F4)($at)
.L8002DBAC:
/* 2E7AC 8002DBAC 8FBF0044 */  lw         $ra, 0x44($sp)
/* 2E7B0 8002DBB0 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 2E7B4 8002DBB4 8FB00020 */  lw         $s0, 0x20($sp)
/* 2E7B8 8002DBB8 8FB10024 */  lw         $s1, 0x24($sp)
/* 2E7BC 8002DBBC 8FB20028 */  lw         $s2, 0x28($sp)
/* 2E7C0 8002DBC0 8FB3002C */  lw         $s3, 0x2c($sp)
/* 2E7C4 8002DBC4 8FB40030 */  lw         $s4, 0x30($sp)
/* 2E7C8 8002DBC8 8FB50034 */  lw         $s5, 0x34($sp)
/* 2E7CC 8002DBCC 8FB60038 */  lw         $s6, 0x38($sp)
/* 2E7D0 8002DBD0 8FB7003C */  lw         $s7, 0x3c($sp)
/* 2E7D4 8002DBD4 8FBE0040 */  lw         $fp, 0x40($sp)
/* 2E7D8 8002DBD8 03E00008 */  jr         $ra
/* 2E7DC 8002DBDC 27BD00E8 */   addiu     $sp, $sp, 0xe8

glabel func_8002DBE0
/* 2E7E0 8002DBE0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2E7E4 8002DBE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2E7E8 8002DBE8 8C820000 */  lw         $v0, ($a0)
/* 2E7EC 8002DBEC 3C0FE700 */  lui        $t7, 0xe700
/* 2E7F0 8002DBF0 3C19E200 */  lui        $t9, 0xe200
/* 2E7F4 8002DBF4 244E0008 */  addiu      $t6, $v0, 8
/* 2E7F8 8002DBF8 AC8E0000 */  sw         $t6, ($a0)
/* 2E7FC 8002DBFC AC400004 */  sw         $zero, 4($v0)
/* 2E800 8002DC00 AC4F0000 */  sw         $t7, ($v0)
/* 2E804 8002DC04 8C820000 */  lw         $v0, ($a0)
/* 2E808 8002DC08 3C090050 */  lui        $t1, 0x50
/* 2E80C 8002DC0C 35294240 */  ori        $t1, $t1, 0x4240
/* 2E810 8002DC10 24580008 */  addiu      $t8, $v0, 8
/* 2E814 8002DC14 AC980000 */  sw         $t8, ($a0)
/* 2E818 8002DC18 3739001C */  ori        $t9, $t9, 0x1c
/* 2E81C 8002DC1C AC590000 */  sw         $t9, ($v0)
/* 2E820 8002DC20 AC490004 */  sw         $t1, 4($v0)
/* 2E824 8002DC24 8C820000 */  lw         $v0, ($a0)
/* 2E828 8002DC28 3C0BFCFF */  lui        $t3, 0xfcff
/* 2E82C 8002DC2C 3C0CFF2C */  lui        $t4, 0xff2c
/* 2E830 8002DC30 244A0008 */  addiu      $t2, $v0, 8
/* 2E834 8002DC34 AC8A0000 */  sw         $t2, ($a0)
/* 2E838 8002DC38 358CFE7F */  ori        $t4, $t4, 0xfe7f
/* 2E83C 8002DC3C 356B97FF */  ori        $t3, $t3, 0x97ff
/* 2E840 8002DC40 AC4B0000 */  sw         $t3, ($v0)
/* 2E844 8002DC44 AC4C0004 */  sw         $t4, 4($v0)
/* 2E848 8002DC48 8C820000 */  lw         $v0, ($a0)
/* 2E84C 8002DC4C 240F00C0 */  addiu      $t7, $zero, 0xc0
/* 2E850 8002DC50 3C0EFA00 */  lui        $t6, 0xfa00
/* 2E854 8002DC54 244D0008 */  addiu      $t5, $v0, 8
/* 2E858 8002DC58 AC8D0000 */  sw         $t5, ($a0)
/* 2E85C 8002DC5C AC4F0004 */  sw         $t7, 4($v0)
/* 2E860 8002DC60 AC4E0000 */  sw         $t6, ($v0)
/* 2E864 8002DC64 0C044A09 */  jal        func_80112824
/* 2E868 8002DC68 AFA40018 */   sw        $a0, 0x18($sp)
/* 2E86C 8002DC6C 0002C0C0 */  sll        $t8, $v0, 3
/* 2E870 8002DC70 0302C021 */  addu       $t8, $t8, $v0
/* 2E874 8002DC74 3C19800A */  lui        $t9, %hi(D_8009A1F8)
/* 2E878 8002DC78 2739A1F8 */  addiu      $t9, $t9, %lo(D_8009A1F8)
/* 2E87C 8002DC7C 0018C100 */  sll        $t8, $t8, 4
/* 2E880 8002DC80 03192821 */  addu       $a1, $t8, $t9
/* 2E884 8002DC84 8FA60018 */  lw         $a2, 0x18($sp)
/* 2E888 8002DC88 0C0030D5 */  jal        func_8000C354
/* 2E88C 8002DC8C 24040007 */   addiu     $a0, $zero, 7
/* 2E890 8002DC90 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2E894 8002DC94 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2E898 8002DC98 03E00008 */  jr         $ra
/* 2E89C 8002DC9C 00000000 */   nop

glabel func_8002DCA0
/* 2E8A0 8002DCA0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2E8A4 8002DCA4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2E8A8 8002DCA8 AFB00018 */  sw         $s0, 0x18($sp)
/* 2E8AC 8002DCAC 0C00CEDE */  jal        func_80033B78
/* 2E8B0 8002DCB0 00808025 */   or        $s0, $a0, $zero
/* 2E8B4 8002DCB4 8E020000 */  lw         $v0, ($s0)
/* 2E8B8 8002DCB8 3C0FE700 */  lui        $t7, 0xe700
/* 2E8BC 8002DCBC 3C19E300 */  lui        $t9, 0xe300
/* 2E8C0 8002DCC0 244E0008 */  addiu      $t6, $v0, 8
/* 2E8C4 8002DCC4 AE0E0000 */  sw         $t6, ($s0)
/* 2E8C8 8002DCC8 AC400004 */  sw         $zero, 4($v0)
/* 2E8CC 8002DCCC AC4F0000 */  sw         $t7, ($v0)
/* 2E8D0 8002DCD0 8E020000 */  lw         $v0, ($s0)
/* 2E8D4 8002DCD4 37390A01 */  ori        $t9, $t9, 0xa01
/* 2E8D8 8002DCD8 02002025 */  or         $a0, $s0, $zero
/* 2E8DC 8002DCDC 24580008 */  addiu      $t8, $v0, 8
/* 2E8E0 8002DCE0 AE180000 */  sw         $t8, ($s0)
/* 2E8E4 8002DCE4 AC400004 */  sw         $zero, 4($v0)
/* 2E8E8 8002DCE8 0C00B51D */  jal        func_8002D474
/* 2E8EC 8002DCEC AC590000 */   sw        $t9, ($v0)
/* 2E8F0 8002DCF0 0C00B641 */  jal        func_8002D904
/* 2E8F4 8002DCF4 02002025 */   or        $a0, $s0, $zero
/* 2E8F8 8002DCF8 0C0025B5 */  jal        func_800096D4
/* 2E8FC 8002DCFC 24042000 */   addiu     $a0, $zero, 0x2000
/* 2E900 8002DD00 8E020000 */  lw         $v0, ($s0)
/* 2E904 8002DD04 3C09E700 */  lui        $t1, 0xe700
/* 2E908 8002DD08 3C0BE300 */  lui        $t3, 0xe300
/* 2E90C 8002DD0C 24480008 */  addiu      $t0, $v0, 8
/* 2E910 8002DD10 AE080000 */  sw         $t0, ($s0)
/* 2E914 8002DD14 AC400004 */  sw         $zero, 4($v0)
/* 2E918 8002DD18 AC490000 */  sw         $t1, ($v0)
/* 2E91C 8002DD1C 8E020000 */  lw         $v0, ($s0)
/* 2E920 8002DD20 356B0A01 */  ori        $t3, $t3, 0xa01
/* 2E924 8002DD24 02002025 */  or         $a0, $s0, $zero
/* 2E928 8002DD28 244A0008 */  addiu      $t2, $v0, 8
/* 2E92C 8002DD2C AE0A0000 */  sw         $t2, ($s0)
/* 2E930 8002DD30 AC400004 */  sw         $zero, 4($v0)
/* 2E934 8002DD34 0C00B6F8 */  jal        func_8002DBE0
/* 2E938 8002DD38 AC4B0000 */   sw        $t3, ($v0)
/* 2E93C 8002DD3C 0C008844 */  jal        func_80022110
/* 2E940 8002DD40 02002025 */   or        $a0, $s0, $zero
/* 2E944 8002DD44 3C04800B */  lui        $a0, %hi(D_800ABDD8)
/* 2E948 8002DD48 8C84BDD8 */  lw         $a0, %lo(D_800ABDD8)($a0)
/* 2E94C 8002DD4C 0C000453 */  jal        func_8000114C
/* 2E950 8002DD50 00002825 */   or        $a1, $zero, $zero
/* 2E954 8002DD54 0C0004C9 */  jal        func_80001324
/* 2E958 8002DD58 00002025 */   or        $a0, $zero, $zero
/* 2E95C 8002DD5C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2E960 8002DD60 8FB00018 */  lw         $s0, 0x18($sp)
/* 2E964 8002DD64 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2E968 8002DD68 03E00008 */  jr         $ra
/* 2E96C 8002DD6C 00000000 */   nop

glabel func_8002DD70
/* 2E970 8002DD70 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 2E974 8002DD74 AFB00018 */  sw         $s0, 0x18($sp)
/* 2E978 8002DD78 3C108007 */  lui        $s0, %hi(D_800760A8)
/* 2E97C 8002DD7C 261060A8 */  addiu      $s0, $s0, %lo(D_800760A8)
/* 2E980 8002DD80 8E0E0000 */  lw         $t6, ($s0)
/* 2E984 8002DD84 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2E988 8002DD88 27A40034 */  addiu      $a0, $sp, 0x34
/* 2E98C 8002DD8C 8DCF0054 */  lw         $t7, 0x54($t6)
/* 2E990 8002DD90 0C00B4D2 */  jal        func_8002D348
/* 2E994 8002DD94 AFAF0020 */   sw        $t7, 0x20($sp)
/* 2E998 8002DD98 8FA60020 */  lw         $a2, 0x20($sp)
/* 2E99C 8002DD9C 3C04800F */  lui        $a0, %hi(D_800F1B78)
/* 2E9A0 8002DDA0 24841B78 */  addiu      $a0, $a0, %lo(D_800F1B78)
/* 2E9A4 8002DDA4 27A50034 */  addiu      $a1, $sp, 0x34
/* 2E9A8 8002DDA8 0C00FEE4 */  jal        func_8003FB90
/* 2E9AC 8002DDAC 24C601EC */   addiu     $a2, $a2, 0x1ec
/* 2E9B0 8002DDB0 3C02800A */  lui        $v0, %hi(D_8009A104)
/* 2E9B4 8002DDB4 2442A104 */  addiu      $v0, $v0, %lo(D_8009A104)
/* 2E9B8 8002DDB8 C4440000 */  lwc1       $f4, ($v0)
/* 2E9BC 8002DDBC C4460004 */  lwc1       $f6, 4($v0)
/* 2E9C0 8002DDC0 C4480008 */  lwc1       $f8, 8($v0)
/* 2E9C4 8002DDC4 3C04800F */  lui        $a0, %hi(D_800F1B78)
/* 2E9C8 8002DDC8 24841B78 */  addiu      $a0, $a0, %lo(D_800F1B78)
/* 2E9CC 8002DDCC 27A50034 */  addiu      $a1, $sp, 0x34
/* 2E9D0 8002DDD0 27A6004C */  addiu      $a2, $sp, 0x4c
/* 2E9D4 8002DDD4 E7A40034 */  swc1       $f4, 0x34($sp)
/* 2E9D8 8002DDD8 E7A60038 */  swc1       $f6, 0x38($sp)
/* 2E9DC 8002DDDC 0C00FEE4 */  jal        func_8003FB90
/* 2E9E0 8002DDE0 E7A8003C */   swc1      $f8, 0x3c($sp)
/* 2E9E4 8002DDE4 8E040000 */  lw         $a0, ($s0)
/* 2E9E8 8002DDE8 0C0058FF */  jal        func_800163FC
/* 2E9EC 8002DDEC 24050047 */   addiu     $a1, $zero, 0x47
/* 2E9F0 8002DDF0 8E040000 */  lw         $a0, ($s0)
/* 2E9F4 8002DDF4 C4500048 */  lwc1       $f16, 0x48($v0)
/* 2E9F8 8002DDF8 2405004C */  addiu      $a1, $zero, 0x4c
/* 2E9FC 8002DDFC C48A0048 */  lwc1       $f10, 0x48($a0)
/* 2EA00 8002DE00 46105481 */  sub.s      $f18, $f10, $f16
/* 2EA04 8002DE04 0C0058FF */  jal        func_800163FC
/* 2EA08 8002DE08 E7B20030 */   swc1      $f18, 0x30($sp)
/* 2EA0C 8002DE0C 8E040000 */  lw         $a0, ($s0)
/* 2EA10 8002DE10 C4460048 */  lwc1       $f6, 0x48($v0)
/* 2EA14 8002DE14 C7A80030 */  lwc1       $f8, 0x30($sp)
/* 2EA18 8002DE18 C4840048 */  lwc1       $f4, 0x48($a0)
/* 2EA1C 8002DE1C 3C014000 */  lui        $at, 0x4000
/* 2EA20 8002DE20 44818000 */  mtc1       $at, $f16
/* 2EA24 8002DE24 46062001 */  sub.s      $f0, $f4, $f6
/* 2EA28 8002DE28 C7A40050 */  lwc1       $f4, 0x50($sp)
/* 2EA2C 8002DE2C 46080280 */  add.s      $f10, $f0, $f8
/* 2EA30 8002DE30 C7A8004C */  lwc1       $f8, 0x4c($sp)
/* 2EA34 8002DE34 46105483 */  div.s      $f18, $f10, $f16
/* 2EA38 8002DE38 46122180 */  add.s      $f6, $f4, $f18
/* 2EA3C 8002DE3C E7A60050 */  swc1       $f6, 0x50($sp)
/* 2EA40 8002DE40 E4880018 */  swc1       $f8, 0x18($a0)
/* 2EA44 8002DE44 8E180000 */  lw         $t8, ($s0)
/* 2EA48 8002DE48 C7AA0050 */  lwc1       $f10, 0x50($sp)
/* 2EA4C 8002DE4C E70A001C */  swc1       $f10, 0x1c($t8)
/* 2EA50 8002DE50 8E190000 */  lw         $t9, ($s0)
/* 2EA54 8002DE54 C7B00054 */  lwc1       $f16, 0x54($sp)
/* 2EA58 8002DE58 E7300020 */  swc1       $f16, 0x20($t9)
/* 2EA5C 8002DE5C 8E080000 */  lw         $t0, ($s0)
/* 2EA60 8002DE60 C7A4004C */  lwc1       $f4, 0x4c($sp)
/* 2EA64 8002DE64 E5040044 */  swc1       $f4, 0x44($t0)
/* 2EA68 8002DE68 8E090000 */  lw         $t1, ($s0)
/* 2EA6C 8002DE6C C7B20050 */  lwc1       $f18, 0x50($sp)
/* 2EA70 8002DE70 E5320048 */  swc1       $f18, 0x48($t1)
/* 2EA74 8002DE74 8E0A0000 */  lw         $t2, ($s0)
/* 2EA78 8002DE78 C7A60054 */  lwc1       $f6, 0x54($sp)
/* 2EA7C 8002DE7C E546004C */  swc1       $f6, 0x4c($t2)
/* 2EA80 8002DE80 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2EA84 8002DE84 8FB00018 */  lw         $s0, 0x18($sp)
/* 2EA88 8002DE88 27BD0058 */  addiu      $sp, $sp, 0x58
/* 2EA8C 8002DE8C 03E00008 */  jr         $ra
/* 2EA90 8002DE90 00000000 */   nop

glabel func_8002DE94
/* 2EA94 8002DE94 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 2EA98 8002DE98 3C0E800B */  lui        $t6, %hi(D_800ABDD8)
/* 2EA9C 8002DE9C 8DCEBDD8 */  lw         $t6, %lo(D_800ABDD8)($t6)
/* 2EAA0 8002DEA0 AFB00014 */  sw         $s0, 0x14($sp)
/* 2EAA4 8002DEA4 3C108007 */  lui        $s0, %hi(D_800760A8)
/* 2EAA8 8002DEA8 261060A8 */  addiu      $s0, $s0, %lo(D_800760A8)
/* 2EAAC 8002DEAC 8E040000 */  lw         $a0, ($s0)
/* 2EAB0 8002DEB0 000E78C0 */  sll        $t7, $t6, 3
/* 2EAB4 8002DEB4 3C18800B */  lui        $t8, %hi(D_800ABCF0)
/* 2EAB8 8002DEB8 01EE7823 */  subu       $t7, $t7, $t6
/* 2EABC 8002DEBC AFBF001C */  sw         $ra, 0x1c($sp)
/* 2EAC0 8002DEC0 AFB10018 */  sw         $s1, 0x18($sp)
/* 2EAC4 8002DEC4 000F7940 */  sll        $t7, $t7, 5
/* 2EAC8 8002DEC8 2718BCF0 */  addiu      $t8, $t8, %lo(D_800ABCF0)
/* 2EACC 8002DECC 01F8C821 */  addu       $t9, $t7, $t8
/* 2EAD0 8002DED0 8C910054 */  lw         $s1, 0x54($a0)
/* 2EAD4 8002DED4 AFB90030 */  sw         $t9, 0x30($sp)
/* 2EAD8 8002DED8 0C00237A */  jal        func_80008DE8
/* 2EADC 8002DEDC 24056000 */   addiu     $a1, $zero, 0x6000
/* 2EAE0 8002DEE0 0C00B75C */  jal        func_8002DD70
/* 2EAE4 8002DEE4 00000000 */   nop
/* 2EAE8 8002DEE8 0C00482B */  jal        func_800120AC
/* 2EAEC 8002DEEC 8E040000 */   lw        $a0, ($s0)
/* 2EAF0 8002DEF0 0C003D35 */  jal        func_8000F4D4
/* 2EAF4 8002DEF4 8E040000 */   lw        $a0, ($s0)
/* 2EAF8 8002DEF8 8FA20030 */  lw         $v0, 0x30($sp)
/* 2EAFC 8002DEFC 8E060000 */  lw         $a2, ($s0)
/* 2EB00 8002DF00 27A40038 */  addiu      $a0, $sp, 0x38
/* 2EB04 8002DF04 C4440000 */  lwc1       $f4, ($v0)
/* 2EB08 8002DF08 C4C60044 */  lwc1       $f6, 0x44($a2)
/* 2EB0C 8002DF0C 46062201 */  sub.s      $f8, $f4, $f6
/* 2EB10 8002DF10 E7A80038 */  swc1       $f8, 0x38($sp)
/* 2EB14 8002DF14 C44A0004 */  lwc1       $f10, 4($v0)
/* 2EB18 8002DF18 C4D00048 */  lwc1       $f16, 0x48($a2)
/* 2EB1C 8002DF1C 46105481 */  sub.s      $f18, $f10, $f16
/* 2EB20 8002DF20 E7B2003C */  swc1       $f18, 0x3c($sp)
/* 2EB24 8002DF24 C4440008 */  lwc1       $f4, 8($v0)
/* 2EB28 8002DF28 C4C6004C */  lwc1       $f6, 0x4c($a2)
/* 2EB2C 8002DF2C 46062201 */  sub.s      $f8, $f4, $f6
/* 2EB30 8002DF30 0C0032A9 */  jal        func_8000CAA4
/* 2EB34 8002DF34 E7A80040 */   swc1      $f8, 0x40($sp)
/* 2EB38 8002DF38 E7A00028 */  swc1       $f0, 0x28($sp)
/* 2EB3C 8002DF3C C62A000C */  lwc1       $f10, 0xc($s1)
/* 2EB40 8002DF40 8E040000 */  lw         $a0, ($s0)
/* 2EB44 8002DF44 00003025 */  or         $a2, $zero, $zero
/* 2EB48 8002DF48 46005407 */  neg.s      $f16, $f10
/* 2EB4C 8002DF4C 44058000 */  mfc1       $a1, $f16
/* 2EB50 8002DF50 0C0057E5 */  jal        func_80015F94
/* 2EB54 8002DF54 00000000 */   nop
/* 2EB58 8002DF58 C7B20028 */  lwc1       $f18, 0x28($sp)
/* 2EB5C 8002DF5C C6240010 */  lwc1       $f4, 0x10($s1)
/* 2EB60 8002DF60 8E040000 */  lw         $a0, ($s0)
/* 2EB64 8002DF64 24060001 */  addiu      $a2, $zero, 1
/* 2EB68 8002DF68 46049181 */  sub.s      $f6, $f18, $f4
/* 2EB6C 8002DF6C 44053000 */  mfc1       $a1, $f6
/* 2EB70 8002DF70 0C0057E5 */  jal        func_80015F94
/* 2EB74 8002DF74 00000000 */   nop
/* 2EB78 8002DF78 AE20019C */  sw         $zero, 0x19c($s1)
/* 2EB7C 8002DF7C 3C08800F */  lui        $t0, %hi(D_800F1B74)
/* 2EB80 8002DF80 8D081B74 */  lw         $t0, %lo(D_800F1B74)($t0)
/* 2EB84 8002DF84 3C0B800A */  lui        $t3, %hi(D_80099DC0)
/* 2EB88 8002DF88 256B9DC0 */  addiu      $t3, $t3, %lo(D_80099DC0)
/* 2EB8C 8002DF8C 00084880 */  sll        $t1, $t0, 2
/* 2EB90 8002DF90 01284821 */  addu       $t1, $t1, $t0
/* 2EB94 8002DF94 00094880 */  sll        $t1, $t1, 2
/* 2EB98 8002DF98 01284823 */  subu       $t1, $t1, $t0
/* 2EB9C 8002DF9C 00094880 */  sll        $t1, $t1, 2
/* 2EBA0 8002DFA0 252A0010 */  addiu      $t2, $t1, 0x10
/* 2EBA4 8002DFA4 3C04800F */  lui        $a0, %hi(D_800F1B78)
/* 2EBA8 8002DFA8 24841B78 */  addiu      $a0, $a0, %lo(D_800F1B78)
/* 2EBAC 8002DFAC 014B2821 */  addu       $a1, $t2, $t3
/* 2EBB0 8002DFB0 0C00FEE4 */  jal        func_8003FB90
/* 2EBB4 8002DFB4 262601EC */   addiu     $a2, $s1, 0x1ec
/* 2EBB8 8002DFB8 3C0C800F */  lui        $t4, %hi(D_800F1B74)
/* 2EBBC 8002DFBC 8D8C1B74 */  lw         $t4, %lo(D_800F1B74)($t4)
/* 2EBC0 8002DFC0 3C0F800A */  lui        $t7, %hi(D_80099DC0)
/* 2EBC4 8002DFC4 25EF9DC0 */  addiu      $t7, $t7, %lo(D_80099DC0)
/* 2EBC8 8002DFC8 000C6880 */  sll        $t5, $t4, 2
/* 2EBCC 8002DFCC 01AC6821 */  addu       $t5, $t5, $t4
/* 2EBD0 8002DFD0 000D6880 */  sll        $t5, $t5, 2
/* 2EBD4 8002DFD4 01AC6823 */  subu       $t5, $t5, $t4
/* 2EBD8 8002DFD8 000D6880 */  sll        $t5, $t5, 2
/* 2EBDC 8002DFDC 25AE0010 */  addiu      $t6, $t5, 0x10
/* 2EBE0 8002DFE0 0C00B4B2 */  jal        func_8002D2C8
/* 2EBE4 8002DFE4 01CF2021 */   addu      $a0, $t6, $t7
/* 2EBE8 8002DFE8 3C01800F */  lui        $at, %hi(D_800F1B70)
/* 2EBEC 8002DFEC AC201B70 */  sw         $zero, %lo(D_800F1B70)($at)
/* 2EBF0 8002DFF0 8E040000 */  lw         $a0, ($s0)
/* 2EBF4 8002DFF4 24050057 */  addiu      $a1, $zero, 0x57
/* 2EBF8 8002DFF8 0C00481E */  jal        func_80012078
/* 2EBFC 8002DFFC 24060002 */   addiu     $a2, $zero, 2
/* 2EC00 8002E000 8E040000 */  lw         $a0, ($s0)
/* 2EC04 8002E004 0C005C64 */  jal        func_80017190
/* 2EC08 8002E008 2405000C */   addiu     $a1, $zero, 0xc
/* 2EC0C 8002E00C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2EC10 8002E010 8FB00014 */  lw         $s0, 0x14($sp)
/* 2EC14 8002E014 8FB10018 */  lw         $s1, 0x18($sp)
/* 2EC18 8002E018 03E00008 */  jr         $ra
/* 2EC1C 8002E01C 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_8002E020
/* 2EC20 8002E020 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2EC24 8002E024 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2EC28 8002E028 0C002C3F */  jal        func_8000B0FC
/* 2EC2C 8002E02C AFA40018 */   sw        $a0, 0x18($sp)
/* 2EC30 8002E030 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2EC34 8002E034 3C01800F */  lui        $at, %hi(D_800F1BA8)
/* 2EC38 8002E038 8FAF0018 */  lw         $t7, 0x18($sp)
/* 2EC3C 8002E03C AC231BA8 */  sw         $v1, %lo(D_800F1BA8)($at)
/* 2EC40 8002E040 3C01800A */  lui        $at, %hi(D_8009A110)
/* 2EC44 8002E044 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2EC48 8002E048 03E00008 */  jr         $ra
/* 2EC4C 8002E04C AC2FA110 */   sw        $t7, %lo(D_8009A110)($at)

glabel func_8002E050
/* 2EC50 8002E050 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2EC54 8002E054 3C068007 */  lui        $a2, %hi(D_800760A8)
/* 2EC58 8002E058 24C660A8 */  addiu      $a2, $a2, %lo(D_800760A8)
/* 2EC5C 8002E05C AFBF0014 */  sw         $ra, 0x14($sp)
/* 2EC60 8002E060 0C00482B */  jal        func_800120AC
/* 2EC64 8002E064 8CC40000 */   lw        $a0, ($a2)
/* 2EC68 8002E068 0C044A09 */  jal        func_80112824
/* 2EC6C 8002E06C 00000000 */   nop
/* 2EC70 8002E070 3C0E800F */  lui        $t6, %hi(D_800F1B74)
/* 2EC74 8002E074 8DCE1B74 */  lw         $t6, %lo(D_800F1B74)($t6)
/* 2EC78 8002E078 0002C080 */  sll        $t8, $v0, 2
/* 2EC7C 8002E07C 3C03800A */  lui        $v1, 0x800a
/* 2EC80 8002E080 000E7880 */  sll        $t7, $t6, 2
/* 2EC84 8002E084 01EE7821 */  addu       $t7, $t7, $t6
/* 2EC88 8002E088 000F7880 */  sll        $t7, $t7, 2
/* 2EC8C 8002E08C 01EE7823 */  subu       $t7, $t7, $t6
/* 2EC90 8002E090 000F7880 */  sll        $t7, $t7, 2
/* 2EC94 8002E094 01F8C821 */  addu       $t9, $t7, $t8
/* 2EC98 8002E098 00791821 */  addu       $v1, $v1, $t9
/* 2EC9C 8002E09C 8C639DC0 */  lw         $v1, -0x6240($v1)
/* 2ECA0 8002E0A0 3C068007 */  lui        $a2, %hi(D_800760A8)
/* 2ECA4 8002E0A4 24010009 */  addiu      $at, $zero, 9
/* 2ECA8 8002E0A8 10610004 */  beq        $v1, $at, .L8002E0BC
/* 2ECAC 8002E0AC 24C660A8 */   addiu     $a2, $a2, %lo(D_800760A8)
/* 2ECB0 8002E0B0 2401000A */  addiu      $at, $zero, 0xa
/* 2ECB4 8002E0B4 14610006 */  bne        $v1, $at, .L8002E0D0
/* 2ECB8 8002E0B8 00000000 */   nop
.L8002E0BC:
/* 2ECBC 8002E0BC 8CC40000 */  lw         $a0, ($a2)
/* 2ECC0 8002E0C0 0C00480D */  jal        func_80012034
/* 2ECC4 8002E0C4 2405002C */   addiu     $a1, $zero, 0x2c
/* 2ECC8 8002E0C8 1000001E */  b          .L8002E144
/* 2ECCC 8002E0CC 8FBF0014 */   lw        $ra, 0x14($sp)
.L8002E0D0:
/* 2ECD0 8002E0D0 0C00EAC8 */  jal        func_8003AB20
/* 2ECD4 8002E0D4 24040003 */   addiu     $a0, $zero, 3
/* 2ECD8 8002E0D8 3C068007 */  lui        $a2, %hi(D_800760A8)
/* 2ECDC 8002E0DC 10400009 */  beqz       $v0, .L8002E104
/* 2ECE0 8002E0E0 24C660A8 */   addiu     $a2, $a2, %lo(D_800760A8)
/* 2ECE4 8002E0E4 24010001 */  addiu      $at, $zero, 1
/* 2ECE8 8002E0E8 1041000F */  beq        $v0, $at, .L8002E128
/* 2ECEC 8002E0EC 2405003F */   addiu     $a1, $zero, 0x3f
/* 2ECF0 8002E0F0 24010002 */  addiu      $at, $zero, 2
/* 2ECF4 8002E0F4 10410010 */  beq        $v0, $at, .L8002E138
/* 2ECF8 8002E0F8 24050054 */   addiu     $a1, $zero, 0x54
/* 2ECFC 8002E0FC 10000011 */  b          .L8002E144
/* 2ED00 8002E100 8FBF0014 */   lw        $ra, 0x14($sp)
.L8002E104:
/* 2ED04 8002E104 8CC90000 */  lw         $t1, ($a2)
/* 2ED08 8002E108 24080003 */  addiu      $t0, $zero, 3
/* 2ED0C 8002E10C 24050039 */  addiu      $a1, $zero, 0x39
/* 2ED10 8002E110 8D2A0054 */  lw         $t2, 0x54($t1)
/* 2ED14 8002E114 A548013C */  sh         $t0, 0x13c($t2)
/* 2ED18 8002E118 0C00480D */  jal        func_80012034
/* 2ED1C 8002E11C 8CC40000 */   lw        $a0, ($a2)
/* 2ED20 8002E120 10000008 */  b          .L8002E144
/* 2ED24 8002E124 8FBF0014 */   lw        $ra, 0x14($sp)
.L8002E128:
/* 2ED28 8002E128 0C00480D */  jal        func_80012034
/* 2ED2C 8002E12C 8CC40000 */   lw        $a0, ($a2)
/* 2ED30 8002E130 10000004 */  b          .L8002E144
/* 2ED34 8002E134 8FBF0014 */   lw        $ra, 0x14($sp)
.L8002E138:
/* 2ED38 8002E138 0C00480D */  jal        func_80012034
/* 2ED3C 8002E13C 8CC40000 */   lw        $a0, ($a2)
/* 2ED40 8002E140 8FBF0014 */  lw         $ra, 0x14($sp)
.L8002E144:
/* 2ED44 8002E144 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2ED48 8002E148 03E00008 */  jr         $ra
/* 2ED4C 8002E14C 00000000 */   nop

glabel func_8002E150
/* 2ED50 8002E150 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 2ED54 8002E154 AFB40028 */  sw         $s4, 0x28($sp)
/* 2ED58 8002E158 AFB30024 */  sw         $s3, 0x24($sp)
/* 2ED5C 8002E15C AFB20020 */  sw         $s2, 0x20($sp)
/* 2ED60 8002E160 AFB1001C */  sw         $s1, 0x1c($sp)
/* 2ED64 8002E164 00A09025 */  or         $s2, $a1, $zero
/* 2ED68 8002E168 00809825 */  or         $s3, $a0, $zero
/* 2ED6C 8002E16C 00C0A025 */  or         $s4, $a2, $zero
/* 2ED70 8002E170 AFBF002C */  sw         $ra, 0x2c($sp)
/* 2ED74 8002E174 AFB00018 */  sw         $s0, 0x18($sp)
/* 2ED78 8002E178 14C00002 */  bnez       $a2, .L8002E184
/* 2ED7C 8002E17C 00008825 */   or        $s1, $zero, $zero
/* 2ED80 8002E180 24140001 */  addiu      $s4, $zero, 1
.L8002E184:
/* 2ED84 8002E184 3C10800F */  lui        $s0, %hi(D_800F1B74)
/* 2ED88 8002E188 26101B74 */  addiu      $s0, $s0, %lo(D_800F1B74)
/* 2ED8C 8002E18C 0C00B4F7 */  jal        func_8002D3DC
/* 2ED90 8002E190 8E040000 */   lw        $a0, ($s0)
/* 2ED94 8002E194 54400013 */  bnel       $v0, $zero, .L8002E1E4
/* 2ED98 8002E198 8FBF002C */   lw        $ra, 0x2c($sp)
/* 2ED9C 8002E19C 8E0E0000 */  lw         $t6, ($s0)
.L8002E1A0:
/* 2EDA0 8002E1A0 01D42021 */  addu       $a0, $t6, $s4
/* 2EDA4 8002E1A4 0244082A */  slt        $at, $s2, $a0
/* 2EDA8 8002E1A8 10200004 */  beqz       $at, .L8002E1BC
/* 2EDAC 8002E1AC AE040000 */   sw        $a0, ($s0)
/* 2EDB0 8002E1B0 AE130000 */  sw         $s3, ($s0)
/* 2EDB4 8002E1B4 10000006 */  b          .L8002E1D0
/* 2EDB8 8002E1B8 02602025 */   or        $a0, $s3, $zero
.L8002E1BC:
/* 2EDBC 8002E1BC 0093082A */  slt        $at, $a0, $s3
/* 2EDC0 8002E1C0 10200003 */  beqz       $at, .L8002E1D0
/* 2EDC4 8002E1C4 00000000 */   nop
/* 2EDC8 8002E1C8 AE120000 */  sw         $s2, ($s0)
/* 2EDCC 8002E1CC 02402025 */  or         $a0, $s2, $zero
.L8002E1D0:
/* 2EDD0 8002E1D0 0C00B4F7 */  jal        func_8002D3DC
/* 2EDD4 8002E1D4 26310001 */   addiu     $s1, $s1, 1
/* 2EDD8 8002E1D8 5040FFF1 */  beql       $v0, $zero, .L8002E1A0
/* 2EDDC 8002E1DC 8E0E0000 */   lw        $t6, ($s0)
/* 2EDE0 8002E1E0 8FBF002C */  lw         $ra, 0x2c($sp)
.L8002E1E4:
/* 2EDE4 8002E1E4 8FB00018 */  lw         $s0, 0x18($sp)
/* 2EDE8 8002E1E8 8FB1001C */  lw         $s1, 0x1c($sp)
/* 2EDEC 8002E1EC 8FB20020 */  lw         $s2, 0x20($sp)
/* 2EDF0 8002E1F0 8FB30024 */  lw         $s3, 0x24($sp)
/* 2EDF4 8002E1F4 8FB40028 */  lw         $s4, 0x28($sp)
/* 2EDF8 8002E1F8 03E00008 */  jr         $ra
/* 2EDFC 8002E1FC 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8002E200
/* 2EE00 8002E200 3C0E800B */  lui        $t6, %hi(D_800AD54C)
/* 2EE04 8002E204 8DCED54C */  lw         $t6, %lo(D_800AD54C)($t6)
/* 2EE08 8002E208 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 2EE0C 8002E20C AFBF001C */  sw         $ra, 0x1c($sp)
/* 2EE10 8002E210 31CF4000 */  andi       $t7, $t6, 0x4000
/* 2EE14 8002E214 11E00016 */  beqz       $t7, .L8002E270
/* 2EE18 8002E218 3C02800B */   lui       $v0, 0x800b
/* 2EE1C 8002E21C 3C01800A */  lui        $at, %hi(D_800A5A7C)
/* 2EE20 8002E220 C4245A7C */  lwc1       $f4, %lo(D_800A5A7C)($at)
/* 2EE24 8002E224 00002025 */  or         $a0, $zero, $zero
/* 2EE28 8002E228 00002825 */  or         $a1, $zero, $zero
/* 2EE2C 8002E22C 00003025 */  or         $a2, $zero, $zero
/* 2EE30 8002E230 240700FE */  addiu      $a3, $zero, 0xfe
/* 2EE34 8002E234 0C00059E */  jal        func_80001678
/* 2EE38 8002E238 E7A40010 */   swc1      $f4, 0x10($sp)
/* 2EE3C 8002E23C 3C01800A */  lui        $at, %hi(D_800A5A80)
/* 2EE40 8002E240 8C265A80 */  lw         $a2, %lo(D_800A5A80)($at)
/* 2EE44 8002E244 8C275A84 */  lw         $a3, 0x5a84($at)
/* 2EE48 8002E248 3C013FF0 */  lui        $at, 0x3ff0
/* 2EE4C 8002E24C 44813800 */  mtc1       $at, $f7
/* 2EE50 8002E250 44803000 */  mtc1       $zero, $f6
/* 2EE54 8002E254 2404FFFF */  addiu      $a0, $zero, -1
/* 2EE58 8002E258 0C008C54 */  jal        func_80023150
/* 2EE5C 8002E25C F7A60010 */   sdc1      $f6, 0x10($sp)
/* 2EE60 8002E260 0C00B808 */  jal        func_8002E020
/* 2EE64 8002E264 24040004 */   addiu     $a0, $zero, 4
/* 2EE68 8002E268 100000B0 */  b          .L8002E52C
/* 2EE6C 8002E26C 8FBF001C */   lw        $ra, 0x1c($sp)
.L8002E270:
/* 2EE70 8002E270 8C42D54C */  lw         $v0, -0x2ab4($v0)
/* 2EE74 8002E274 3C19800B */  lui        $t9, 0x800b
/* 2EE78 8002E278 3C048007 */  lui        $a0, 0x8007
/* 2EE7C 8002E27C 30588000 */  andi       $t8, $v0, 0x8000
/* 2EE80 8002E280 13000009 */  beqz       $t8, .L8002E2A8
/* 2EE84 8002E284 00000000 */   nop
/* 2EE88 8002E288 0C007F92 */  jal        func_8001FE48
/* 2EE8C 8002E28C 240400C5 */   addiu     $a0, $zero, 0xc5
/* 2EE90 8002E290 0C00B814 */  jal        func_8002E050
/* 2EE94 8002E294 00000000 */   nop
/* 2EE98 8002E298 0C00B808 */  jal        func_8002E020
/* 2EE9C 8002E29C 24040003 */   addiu     $a0, $zero, 3
/* 2EEA0 8002E2A0 100000A2 */  b          .L8002E52C
/* 2EEA4 8002E2A4 8FBF001C */   lw        $ra, 0x1c($sp)
.L8002E2A8:
/* 2EEA8 8002E2A8 8F39D540 */  lw         $t9, -0x2ac0($t9)
/* 2EEAC 8002E2AC 3C02800F */  lui        $v0, %hi(D_800F1B70)
/* 2EEB0 8002E2B0 24421B70 */  addiu      $v0, $v0, %lo(D_800F1B70)
/* 2EEB4 8002E2B4 33280F00 */  andi       $t0, $t9, 0xf00
/* 2EEB8 8002E2B8 51000008 */  beql       $t0, $zero, .L8002E2DC
/* 2EEBC 8002E2BC AC400000 */   sw        $zero, ($v0)
/* 2EEC0 8002E2C0 3C02800F */  lui        $v0, %hi(D_800F1B70)
/* 2EEC4 8002E2C4 24421B70 */  addiu      $v0, $v0, %lo(D_800F1B70)
/* 2EEC8 8002E2C8 8C490000 */  lw         $t1, ($v0)
/* 2EECC 8002E2CC 252A0001 */  addiu      $t2, $t1, 1
/* 2EED0 8002E2D0 10000002 */  b          .L8002E2DC
/* 2EED4 8002E2D4 AC4A0000 */   sw        $t2, ($v0)
/* 2EED8 8002E2D8 AC400000 */  sw         $zero, ($v0)
.L8002E2DC:
/* 2EEDC 8002E2DC 0C046480 */  jal        func_80119200
/* 2EEE0 8002E2E0 8C8460A8 */   lw        $a0, 0x60a8($a0)
/* 2EEE4 8002E2E4 1040004B */  beqz       $v0, .L8002E414
/* 2EEE8 8002E2E8 3C0B8007 */   lui       $t3, %hi(D_800760A8)
/* 2EEEC 8002E2EC 8D6B60A8 */  lw         $t3, %lo(D_800760A8)($t3)
/* 2EEF0 8002E2F0 24010012 */  addiu      $at, $zero, 0x12
/* 2EEF4 8002E2F4 3C0A800A */  lui        $t2, %hi(D_8009A3B4)
/* 2EEF8 8002E2F8 8D630054 */  lw         $v1, 0x54($t3)
/* 2EEFC 8002E2FC 254AA3B4 */  addiu      $t2, $t2, %lo(D_8009A3B4)
/* 2EF00 8002E300 8C6C021C */  lw         $t4, 0x21c($v1)
/* 2EF04 8002E304 2463021C */  addiu      $v1, $v1, 0x21c
/* 2EF08 8002E308 5581003B */  bnel       $t4, $at, .L8002E3F8
/* 2EF0C 8002E30C 8D410000 */   lw        $at, ($t2)
/* 2EF10 8002E310 8C6D0004 */  lw         $t5, 4($v1)
/* 2EF14 8002E314 2401000A */  addiu      $at, $zero, 0xa
/* 2EF18 8002E318 55A1001C */  bnel       $t5, $at, .L8002E38C
/* 2EF1C 8002E31C 8C620004 */   lw        $v0, 4($v1)
/* 2EF20 8002E320 0C044A09 */  jal        func_80112824
/* 2EF24 8002E324 AFA30044 */   sw        $v1, 0x44($sp)
/* 2EF28 8002E328 24010002 */  addiu      $at, $zero, 2
/* 2EF2C 8002E32C 14410016 */  bne        $v0, $at, .L8002E388
/* 2EF30 8002E330 8FA30044 */   lw        $v1, 0x44($sp)
/* 2EF34 8002E334 3C0E800A */  lui        $t6, %hi(D_8009A3A8)
/* 2EF38 8002E338 25CEA3A8 */  addiu      $t6, $t6, %lo(D_8009A3A8)
/* 2EF3C 8002E33C 8DC10000 */  lw         $at, ($t6)
/* 2EF40 8002E340 27A40034 */  addiu      $a0, $sp, 0x34
/* 2EF44 8002E344 2419000A */  addiu      $t9, $zero, 0xa
/* 2EF48 8002E348 AC810000 */  sw         $at, ($a0)
/* 2EF4C 8002E34C 8DD80004 */  lw         $t8, 4($t6)
/* 2EF50 8002E350 AC980004 */  sw         $t8, 4($a0)
/* 2EF54 8002E354 8DC10008 */  lw         $at, 8($t6)
/* 2EF58 8002E358 AC810008 */  sw         $at, 8($a0)
/* 2EF5C 8002E35C 3C01800F */  lui        $at, %hi(D_800F1B74)
/* 2EF60 8002E360 0C00B498 */  jal        func_8002D260
/* 2EF64 8002E364 AC391B74 */   sw        $t9, %lo(D_800F1B74)($at)
/* 2EF68 8002E368 0C007F92 */  jal        func_8001FE48
/* 2EF6C 8002E36C 240400C5 */   addiu     $a0, $zero, 0xc5
/* 2EF70 8002E370 0C00B814 */  jal        func_8002E050
/* 2EF74 8002E374 00000000 */   nop
/* 2EF78 8002E378 0C00B808 */  jal        func_8002E020
/* 2EF7C 8002E37C 24040003 */   addiu     $a0, $zero, 3
/* 2EF80 8002E380 1000006A */  b          .L8002E52C
/* 2EF84 8002E384 8FBF001C */   lw        $ra, 0x1c($sp)
.L8002E388:
/* 2EF88 8002E388 8C620004 */  lw         $v0, 4($v1)
.L8002E38C:
/* 2EF8C 8002E38C 3C07800A */  lui        $a3, 0x800a
/* 2EF90 8002E390 04410004 */  bgez       $v0, .L8002E3A4
/* 2EF94 8002E394 2841000A */   slti      $at, $v0, 0xa
/* 2EF98 8002E398 AC600004 */  sw         $zero, 4($v1)
/* 2EF9C 8002E39C 10000005 */  b          .L8002E3B4
/* 2EFA0 8002E3A0 00001025 */   or        $v0, $zero, $zero
.L8002E3A4:
/* 2EFA4 8002E3A4 54200004 */  bnel       $at, $zero, .L8002E3B8
/* 2EFA8 8002E3A8 00024880 */   sll       $t1, $v0, 2
/* 2EFAC 8002E3AC 24020009 */  addiu      $v0, $zero, 9
/* 2EFB0 8002E3B0 AC620004 */  sw         $v0, 4($v1)
.L8002E3B4:
/* 2EFB4 8002E3B4 00024880 */  sll        $t1, $v0, 2
.L8002E3B8:
/* 2EFB8 8002E3B8 00E93821 */  addu       $a3, $a3, $t1
/* 2EFBC 8002E3BC 8CE4A3C4 */  lw         $a0, -0x5c3c($a3)
/* 2EFC0 8002E3C0 0C00B4F7 */  jal        func_8002D3DC
/* 2EFC4 8002E3C4 AFA40040 */   sw        $a0, 0x40($sp)
/* 2EFC8 8002E3C8 10400012 */  beqz       $v0, .L8002E414
/* 2EFCC 8002E3CC 8FA70040 */   lw        $a3, 0x40($sp)
/* 2EFD0 8002E3D0 3C01800F */  lui        $at, %hi(D_800F1B74)
/* 2EFD4 8002E3D4 3C048007 */  lui        $a0, %hi(D_800760A8)
/* 2EFD8 8002E3D8 AC271B74 */  sw         $a3, %lo(D_800F1B74)($at)
/* 2EFDC 8002E3DC 8C8460A8 */  lw         $a0, %lo(D_800760A8)($a0)
/* 2EFE0 8002E3E0 24050001 */  addiu      $a1, $zero, 1
/* 2EFE4 8002E3E4 0C004C4C */  jal        func_80013130
/* 2EFE8 8002E3E8 240600A4 */   addiu     $a2, $zero, 0xa4
/* 2EFEC 8002E3EC 10000009 */  b          .L8002E414
/* 2EFF0 8002E3F0 00000000 */   nop
/* 2EFF4 8002E3F4 8D410000 */  lw         $at, ($t2)
.L8002E3F8:
/* 2EFF8 8002E3F8 27A40028 */  addiu      $a0, $sp, 0x28
/* 2EFFC 8002E3FC AC810000 */  sw         $at, ($a0)
/* 2F000 8002E400 8D4D0004 */  lw         $t5, 4($t2)
/* 2F004 8002E404 AC8D0004 */  sw         $t5, 4($a0)
/* 2F008 8002E408 8D410008 */  lw         $at, 8($t2)
/* 2F00C 8002E40C 0C00B498 */  jal        func_8002D260
/* 2F010 8002E410 AC810008 */   sw        $at, 8($a0)
.L8002E414:
/* 2F014 8002E414 3C02800B */  lui        $v0, %hi(D_800AD54C)
/* 2F018 8002E418 8C42D54C */  lw         $v0, %lo(D_800AD54C)($v0)
/* 2F01C 8002E41C AFA00048 */  sw         $zero, 0x48($sp)
/* 2F020 8002E420 240E0001 */  addiu      $t6, $zero, 1
/* 2F024 8002E424 304F0500 */  andi       $t7, $v0, 0x500
/* 2F028 8002E428 11E0000B */  beqz       $t7, .L8002E458
/* 2F02C 8002E42C 3C08800B */   lui       $t0, 0x800b
/* 2F030 8002E430 3C02800F */  lui        $v0, %hi(D_800F1B74)
/* 2F034 8002E434 24421B74 */  addiu      $v0, $v0, %lo(D_800F1B74)
/* 2F038 8002E438 8C580000 */  lw         $t8, ($v0)
/* 2F03C 8002E43C AFAE0048 */  sw         $t6, 0x48($sp)
/* 2F040 8002E440 240400AD */  addiu      $a0, $zero, 0xad
/* 2F044 8002E444 27190001 */  addiu      $t9, $t8, 1
/* 2F048 8002E448 0C007F92 */  jal        func_8001FE48
/* 2F04C 8002E44C AC590000 */   sw        $t9, ($v0)
/* 2F050 8002E450 10000010 */  b          .L8002E494
/* 2F054 8002E454 00000000 */   nop
.L8002E458:
/* 2F058 8002E458 8D08D540 */  lw         $t0, -0x2ac0($t0)
/* 2F05C 8002E45C 304C0A00 */  andi       $t4, $v0, 0xa00
/* 2F060 8002E460 31090500 */  andi       $t1, $t0, 0x500
/* 2F064 8002E464 1520000B */  bnez       $t1, .L8002E494
/* 2F068 8002E468 00000000 */   nop
/* 2F06C 8002E46C 11800009 */  beqz       $t4, .L8002E494
/* 2F070 8002E470 240BFFFF */   addiu     $t3, $zero, -1
/* 2F074 8002E474 3C0A800F */  lui        $t2, %hi(D_800F1B74)
/* 2F078 8002E478 8D4A1B74 */  lw         $t2, %lo(D_800F1B74)($t2)
/* 2F07C 8002E47C 3C01800F */  lui        $at, %hi(D_800F1B74)
/* 2F080 8002E480 AFAB0048 */  sw         $t3, 0x48($sp)
/* 2F084 8002E484 254DFFFF */  addiu      $t5, $t2, -1
/* 2F088 8002E488 AC2D1B74 */  sw         $t5, %lo(D_800F1B74)($at)
/* 2F08C 8002E48C 0C007F92 */  jal        func_8001FE48
/* 2F090 8002E490 240400AD */   addiu     $a0, $zero, 0xad
.L8002E494:
/* 2F094 8002E494 3C02800F */  lui        $v0, %hi(D_800F1B74)
/* 2F098 8002E498 8C421B74 */  lw         $v0, %lo(D_800F1B74)($v0)
/* 2F09C 8002E49C 00002025 */  or         $a0, $zero, $zero
/* 2F0A0 8002E4A0 24050008 */  addiu      $a1, $zero, 8
/* 2F0A4 8002E4A4 04410005 */  bgez       $v0, .L8002E4BC
/* 2F0A8 8002E4A8 28410009 */   slti      $at, $v0, 9
/* 2F0AC 8002E4AC 240F0008 */  addiu      $t7, $zero, 8
/* 2F0B0 8002E4B0 3C01800F */  lui        $at, %hi(D_800F1B74)
/* 2F0B4 8002E4B4 10000004 */  b          .L8002E4C8
/* 2F0B8 8002E4B8 AC2F1B74 */   sw        $t7, %lo(D_800F1B74)($at)
.L8002E4BC:
/* 2F0BC 8002E4BC 14200002 */  bnez       $at, .L8002E4C8
/* 2F0C0 8002E4C0 3C01800F */   lui       $at, %hi(D_800F1B74)
/* 2F0C4 8002E4C4 AC201B74 */  sw         $zero, %lo(D_800F1B74)($at)
.L8002E4C8:
/* 2F0C8 8002E4C8 0C00B854 */  jal        func_8002E150
/* 2F0CC 8002E4CC 8FA60048 */   lw        $a2, 0x48($sp)
/* 2F0D0 8002E4D0 3C02800F */  lui        $v0, %hi(D_800F1B74)
/* 2F0D4 8002E4D4 8C421B74 */  lw         $v0, %lo(D_800F1B74)($v0)
/* 2F0D8 8002E4D8 3C0E800A */  lui        $t6, %hi(D_8009A3C0)
/* 2F0DC 8002E4DC 8DCEA3C0 */  lw         $t6, %lo(D_8009A3C0)($t6)
/* 2F0E0 8002E4E0 0002C080 */  sll        $t8, $v0, 2
/* 2F0E4 8002E4E4 0302C021 */  addu       $t8, $t8, $v0
/* 2F0E8 8002E4E8 11C2000F */  beq        $t6, $v0, .L8002E528
/* 2F0EC 8002E4EC 0018C080 */   sll       $t8, $t8, 2
/* 2F0F0 8002E4F0 0302C023 */  subu       $t8, $t8, $v0
/* 2F0F4 8002E4F4 0018C080 */  sll        $t8, $t8, 2
/* 2F0F8 8002E4F8 3C08800A */  lui        $t0, %hi(D_80099DC0)
/* 2F0FC 8002E4FC 25089DC0 */  addiu      $t0, $t0, %lo(D_80099DC0)
/* 2F100 8002E500 27190010 */  addiu      $t9, $t8, 0x10
/* 2F104 8002E504 0C00B498 */  jal        func_8002D260
/* 2F108 8002E508 03282021 */   addu      $a0, $t9, $t0
/* 2F10C 8002E50C 3C09800F */  lui        $t1, %hi(D_800F1B74)
/* 2F110 8002E510 8D291B74 */  lw         $t1, %lo(D_800F1B74)($t1)
/* 2F114 8002E514 3C01800A */  lui        $at, %hi(D_8009A3C0)
/* 2F118 8002E518 240C00FF */  addiu      $t4, $zero, 0xff
/* 2F11C 8002E51C AC29A3C0 */  sw         $t1, %lo(D_8009A3C0)($at)
/* 2F120 8002E520 3C01800A */  lui        $at, %hi(D_8009A114)
/* 2F124 8002E524 AC2CA114 */  sw         $t4, %lo(D_8009A114)($at)
.L8002E528:
/* 2F128 8002E528 8FBF001C */  lw         $ra, 0x1c($sp)
.L8002E52C:
/* 2F12C 8002E52C 27BD0058 */  addiu      $sp, $sp, 0x58
/* 2F130 8002E530 03E00008 */  jr         $ra
/* 2F134 8002E534 00000000 */   nop

glabel func_8002E538
/* 2F138 8002E538 3C0E800B */  lui        $t6, %hi(D_800AE4F8)
/* 2F13C 8002E53C 8DCEE4F8 */  lw         $t6, %lo(D_800AE4F8)($t6)
/* 2F140 8002E540 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2F144 8002E544 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2F148 8002E548 2DC10011 */  sltiu      $at, $t6, 0x11
/* 2F14C 8002E54C 10200019 */  beqz       $at, .L8002E5B4
/* 2F150 8002E550 000E7080 */   sll       $t6, $t6, 2
/* 2F154 8002E554 3C01800A */  lui        $at, %hi(D_800A5A88)
/* 2F158 8002E558 002E0821 */  addu       $at, $at, $t6
/* 2F15C 8002E55C 8C2E5A88 */  lw         $t6, %lo(D_800A5A88)($at)
/* 2F160 8002E560 01C00008 */  jr         $t6
/* 2F164 8002E564 00000000 */   nop
/* 2F168 8002E568 3C01800F */  lui        $at, %hi(D_800F1B74)
/* 2F16C 8002E56C 10000013 */  b          .L8002E5BC
/* 2F170 8002E570 AC201B74 */   sw        $zero, %lo(D_800F1B74)($at)
/* 2F174 8002E574 240F0003 */  addiu      $t7, $zero, 3
/* 2F178 8002E578 3C01800F */  lui        $at, %hi(D_800F1B74)
/* 2F17C 8002E57C 1000000F */  b          .L8002E5BC
/* 2F180 8002E580 AC2F1B74 */   sw        $t7, %lo(D_800F1B74)($at)
/* 2F184 8002E584 24180001 */  addiu      $t8, $zero, 1
/* 2F188 8002E588 3C01800F */  lui        $at, %hi(D_800F1B74)
/* 2F18C 8002E58C 1000000B */  b          .L8002E5BC
/* 2F190 8002E590 AC381B74 */   sw        $t8, %lo(D_800F1B74)($at)
/* 2F194 8002E594 24190008 */  addiu      $t9, $zero, 8
/* 2F198 8002E598 3C01800F */  lui        $at, %hi(D_800F1B74)
/* 2F19C 8002E59C 10000007 */  b          .L8002E5BC
/* 2F1A0 8002E5A0 AC391B74 */   sw        $t9, %lo(D_800F1B74)($at)
/* 2F1A4 8002E5A4 24080006 */  addiu      $t0, $zero, 6
/* 2F1A8 8002E5A8 3C01800F */  lui        $at, %hi(D_800F1B74)
/* 2F1AC 8002E5AC 10000003 */  b          .L8002E5BC
/* 2F1B0 8002E5B0 AC281B74 */   sw        $t0, %lo(D_800F1B74)($at)
.L8002E5B4:
/* 2F1B4 8002E5B4 3C01800F */  lui        $at, %hi(D_800F1B74)
/* 2F1B8 8002E5B8 AC201B74 */  sw         $zero, %lo(D_800F1B74)($at)
.L8002E5BC:
/* 2F1BC 8002E5BC 00002025 */  or         $a0, $zero, $zero
/* 2F1C0 8002E5C0 24050008 */  addiu      $a1, $zero, 8
/* 2F1C4 8002E5C4 0C00B854 */  jal        func_8002E150
/* 2F1C8 8002E5C8 24060001 */   addiu     $a2, $zero, 1
/* 2F1CC 8002E5CC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2F1D0 8002E5D0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2F1D4 8002E5D4 03E00008 */  jr         $ra
/* 2F1D8 8002E5D8 00000000 */   nop

glabel func_8002E5DC
/* 2F1DC 8002E5DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2F1E0 8002E5E0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2F1E4 8002E5E4 0C0011E3 */  jal        func_8000478C
/* 2F1E8 8002E5E8 2404001F */   addiu     $a0, $zero, 0x1f
/* 2F1EC 8002E5EC 3C048007 */  lui        $a0, %hi(D_800760A8)
/* 2F1F0 8002E5F0 8C8460A8 */  lw         $a0, %lo(D_800760A8)($a0)
/* 2F1F4 8002E5F4 0C0462E3 */  jal        func_80118B8C
/* 2F1F8 8002E5F8 24050002 */   addiu     $a1, $zero, 2
/* 2F1FC 8002E5FC 0C008BF1 */  jal        func_80022FC4
/* 2F200 8002E600 24040004 */   addiu     $a0, $zero, 4
/* 2F204 8002E604 0C0011F9 */  jal        func_800047E4
/* 2F208 8002E608 24040001 */   addiu     $a0, $zero, 1
/* 2F20C 8002E60C 0C001204 */  jal        func_80004810
/* 2F210 8002E610 24040001 */   addiu     $a0, $zero, 1
/* 2F214 8002E614 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2F218 8002E618 24020001 */  addiu      $v0, $zero, 1
/* 2F21C 8002E61C 3C018007 */  lui        $at, %hi(D_800722D0)
/* 2F220 8002E620 AC2222D0 */  sw         $v0, %lo(D_800722D0)($at)
/* 2F224 8002E624 3C018007 */  lui        $at, %hi(D_800722D4)
/* 2F228 8002E628 AC2222D4 */  sw         $v0, %lo(D_800722D4)($at)
/* 2F22C 8002E62C 03E00008 */  jr         $ra
/* 2F230 8002E630 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002E634
/* 2F234 8002E634 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2F238 8002E638 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2F23C 8002E63C 0C044A09 */  jal        func_80112824
/* 2F240 8002E640 00000000 */   nop
/* 2F244 8002E644 10400009 */  beqz       $v0, .L8002E66C
/* 2F248 8002E648 00002025 */   or        $a0, $zero, $zero
/* 2F24C 8002E64C 24010001 */  addiu      $at, $zero, 1
/* 2F250 8002E650 1041000B */  beq        $v0, $at, .L8002E680
/* 2F254 8002E654 00002025 */   or        $a0, $zero, $zero
/* 2F258 8002E658 24010002 */  addiu      $at, $zero, 2
/* 2F25C 8002E65C 1041000D */  beq        $v0, $at, .L8002E694
/* 2F260 8002E660 00002025 */   or        $a0, $zero, $zero
/* 2F264 8002E664 10000010 */  b          .L8002E6A8
/* 2F268 8002E668 00002025 */   or        $a0, $zero, $zero
.L8002E66C:
/* 2F26C 8002E66C 2405000C */  addiu      $a1, $zero, 0xc
/* 2F270 8002E670 0C00CE9C */  jal        func_80033A70
/* 2F274 8002E674 24060001 */   addiu     $a2, $zero, 1
/* 2F278 8002E678 1000000F */  b          .L8002E6B8
/* 2F27C 8002E67C 8FBF0014 */   lw        $ra, 0x14($sp)
.L8002E680:
/* 2F280 8002E680 2405000D */  addiu      $a1, $zero, 0xd
/* 2F284 8002E684 0C00CE9C */  jal        func_80033A70
/* 2F288 8002E688 24060001 */   addiu     $a2, $zero, 1
/* 2F28C 8002E68C 1000000A */  b          .L8002E6B8
/* 2F290 8002E690 8FBF0014 */   lw        $ra, 0x14($sp)
.L8002E694:
/* 2F294 8002E694 2405000E */  addiu      $a1, $zero, 0xe
/* 2F298 8002E698 0C00CE9C */  jal        func_80033A70
/* 2F29C 8002E69C 24060001 */   addiu     $a2, $zero, 1
/* 2F2A0 8002E6A0 10000005 */  b          .L8002E6B8
/* 2F2A4 8002E6A4 8FBF0014 */   lw        $ra, 0x14($sp)
.L8002E6A8:
/* 2F2A8 8002E6A8 2405000E */  addiu      $a1, $zero, 0xe
/* 2F2AC 8002E6AC 0C00CE9C */  jal        func_80033A70
/* 2F2B0 8002E6B0 24060001 */   addiu     $a2, $zero, 1
/* 2F2B4 8002E6B4 8FBF0014 */  lw         $ra, 0x14($sp)
.L8002E6B8:
/* 2F2B8 8002E6B8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2F2BC 8002E6BC 03E00008 */  jr         $ra
/* 2F2C0 8002E6C0 00000000 */   nop

glabel func_8002E6C4
/* 2F2C4 8002E6C4 3C0E8007 */  lui        $t6, %hi(D_800760A8)
/* 2F2C8 8002E6C8 8DCE60A8 */  lw         $t6, %lo(D_800760A8)($t6)
/* 2F2CC 8002E6CC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2F2D0 8002E6D0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2F2D4 8002E6D4 8DCF0054 */  lw         $t7, 0x54($t6)
/* 2F2D8 8002E6D8 0C044948 */  jal        func_80112520
/* 2F2DC 8002E6DC AFAF0024 */   sw        $t7, 0x24($sp)
/* 2F2E0 8002E6E0 3C04800F */  lui        $a0, %hi(D_800F1B78)
/* 2F2E4 8002E6E4 0C000200 */  jal        func_80000800
/* 2F2E8 8002E6E8 24841B78 */   addiu     $a0, $a0, %lo(D_800F1B78)
/* 2F2EC 8002E6EC 3C048007 */  lui        $a0, %hi(D_800760A8)
/* 2F2F0 8002E6F0 0C00483C */  jal        func_800120F0
/* 2F2F4 8002E6F4 8C8460A8 */   lw        $a0, %lo(D_800760A8)($a0)
/* 2F2F8 8002E6F8 10400005 */  beqz       $v0, .L8002E710
/* 2F2FC 8002E6FC 3C048007 */   lui       $a0, %hi(D_800760A8)
/* 2F300 8002E700 8C8460A8 */  lw         $a0, %lo(D_800760A8)($a0)
/* 2F304 8002E704 24050057 */  addiu      $a1, $zero, 0x57
/* 2F308 8002E708 0C00481E */  jal        func_80012078
/* 2F30C 8002E70C 24060002 */   addiu     $a2, $zero, 2
.L8002E710:
/* 2F310 8002E710 3C18800F */  lui        $t8, %hi(D_800F1B70)
/* 2F314 8002E714 8F181B70 */  lw         $t8, %lo(D_800F1B70)($t8)
/* 2F318 8002E718 8FB90024 */  lw         $t9, 0x24($sp)
/* 2F31C 8002E71C 8FA90024 */  lw         $t1, 0x24($sp)
/* 2F320 8002E720 2B010065 */  slti       $at, $t8, 0x65
/* 2F324 8002E724 54200010 */  bnel       $at, $zero, .L8002E768
/* 2F328 8002E728 852A013C */   lh        $t2, 0x13c($t1)
/* 2F32C 8002E72C 8728013C */  lh         $t0, 0x13c($t9)
/* 2F330 8002E730 2401000E */  addiu      $at, $zero, 0xe
/* 2F334 8002E734 3C048007 */  lui        $a0, %hi(D_800760A8)
/* 2F338 8002E738 11010016 */  beq        $t0, $at, .L8002E794
/* 2F33C 8002E73C 00000000 */   nop
/* 2F340 8002E740 0C00482B */  jal        func_800120AC
/* 2F344 8002E744 8C8460A8 */   lw        $a0, %lo(D_800760A8)($a0)
/* 2F348 8002E748 3C048007 */  lui        $a0, %hi(D_800760A8)
/* 2F34C 8002E74C 8C8460A8 */  lw         $a0, %lo(D_800760A8)($a0)
/* 2F350 8002E750 24050057 */  addiu      $a1, $zero, 0x57
/* 2F354 8002E754 0C00481E */  jal        func_80012078
/* 2F358 8002E758 2406000E */   addiu     $a2, $zero, 0xe
/* 2F35C 8002E75C 1000000D */  b          .L8002E794
/* 2F360 8002E760 00000000 */   nop
/* 2F364 8002E764 852A013C */  lh         $t2, 0x13c($t1)
.L8002E768:
/* 2F368 8002E768 24010002 */  addiu      $at, $zero, 2
/* 2F36C 8002E76C 3C048007 */  lui        $a0, %hi(D_800760A8)
/* 2F370 8002E770 11410008 */  beq        $t2, $at, .L8002E794
/* 2F374 8002E774 00000000 */   nop
/* 2F378 8002E778 0C00482B */  jal        func_800120AC
/* 2F37C 8002E77C 8C8460A8 */   lw        $a0, %lo(D_800760A8)($a0)
/* 2F380 8002E780 3C048007 */  lui        $a0, %hi(D_800760A8)
/* 2F384 8002E784 8C8460A8 */  lw         $a0, %lo(D_800760A8)($a0)
/* 2F388 8002E788 24050057 */  addiu      $a1, $zero, 0x57
/* 2F38C 8002E78C 0C00481E */  jal        func_80012078
/* 2F390 8002E790 24060002 */   addiu     $a2, $zero, 2
.L8002E794:
/* 2F394 8002E794 3C0B800A */  lui        $t3, %hi(D_8009A110)
/* 2F398 8002E798 8D6BA110 */  lw         $t3, %lo(D_8009A110)($t3)
/* 2F39C 8002E79C 2D610006 */  sltiu      $at, $t3, 6
/* 2F3A0 8002E7A0 102000E8 */  beqz       $at, .L8002EB44
/* 2F3A4 8002E7A4 000B5880 */   sll       $t3, $t3, 2
/* 2F3A8 8002E7A8 3C01800A */  lui        $at, %hi(D_800A5ACC)
/* 2F3AC 8002E7AC 002B0821 */  addu       $at, $at, $t3
/* 2F3B0 8002E7B0 8C2B5ACC */  lw         $t3, %lo(D_800A5ACC)($at)
/* 2F3B4 8002E7B4 01600008 */  jr         $t3
/* 2F3B8 8002E7B8 00000000 */   nop
/* 2F3BC 8002E7BC 0C00B977 */  jal        func_8002E5DC
/* 2F3C0 8002E7C0 00000000 */   nop
/* 2F3C4 8002E7C4 0C00B98D */  jal        func_8002E634
/* 2F3C8 8002E7C8 00000000 */   nop
/* 2F3CC 8002E7CC 00002025 */  or         $a0, $zero, $zero
/* 2F3D0 8002E7D0 00002825 */  or         $a1, $zero, $zero
/* 2F3D4 8002E7D4 00003025 */  or         $a2, $zero, $zero
/* 2F3D8 8002E7D8 00003825 */  or         $a3, $zero, $zero
/* 2F3DC 8002E7DC 0C000575 */  jal        func_800015D4
/* 2F3E0 8002E7E0 AFA00010 */   sw        $zero, 0x10($sp)
/* 2F3E4 8002E7E4 3C01800A */  lui        $at, %hi(D_800A5AE4)
/* 2F3E8 8002E7E8 C4245AE4 */  lwc1       $f4, %lo(D_800A5AE4)($at)
/* 2F3EC 8002E7EC 00002025 */  or         $a0, $zero, $zero
/* 2F3F0 8002E7F0 00002825 */  or         $a1, $zero, $zero
/* 2F3F4 8002E7F4 00003025 */  or         $a2, $zero, $zero
/* 2F3F8 8002E7F8 00003825 */  or         $a3, $zero, $zero
/* 2F3FC 8002E7FC 0C00059E */  jal        func_80001678
/* 2F400 8002E800 E7A40010 */   swc1      $f4, 0x10($sp)
/* 2F404 8002E804 0C00B94E */  jal        func_8002E538
/* 2F408 8002E808 00000000 */   nop
/* 2F40C 8002E80C 0C00B7A5 */  jal        func_8002DE94
/* 2F410 8002E810 00000000 */   nop
/* 2F414 8002E814 240C001E */  addiu      $t4, $zero, 0x1e
/* 2F418 8002E818 AFAC0010 */  sw         $t4, 0x10($sp)
/* 2F41C 8002E81C 24040001 */  addiu      $a0, $zero, 1
/* 2F420 8002E820 2405001E */  addiu      $a1, $zero, 0x1e
/* 2F424 8002E824 2406001E */  addiu      $a2, $zero, 0x1e
/* 2F428 8002E828 0C0013C9 */  jal        func_80004F24
/* 2F42C 8002E82C 2407001E */   addiu     $a3, $zero, 0x1e
/* 2F430 8002E830 0C00BB4F */  jal        func_8002ED3C
/* 2F434 8002E834 00000000 */   nop
/* 2F438 8002E838 0C044A09 */  jal        func_80112824
/* 2F43C 8002E83C 00000000 */   nop
/* 2F440 8002E840 10400008 */  beqz       $v0, .L8002E864
/* 2F444 8002E844 3C01800A */   lui       $at, 0x800a
/* 2F448 8002E848 24010001 */  addiu      $at, $zero, 1
/* 2F44C 8002E84C 1041000D */  beq        $v0, $at, .L8002E884
/* 2F450 8002E850 24010002 */   addiu     $at, $zero, 2
/* 2F454 8002E854 10410014 */  beq        $v0, $at, .L8002E8A8
/* 2F458 8002E858 00000000 */   nop
/* 2F45C 8002E85C 10000019 */  b          .L8002E8C4
/* 2F460 8002E860 00000000 */   nop
.L8002E864:
/* 2F464 8002E864 D4205AE8 */  ldc1       $f0, 0x5ae8($at)
/* 2F468 8002E868 24040009 */  addiu      $a0, $zero, 9
/* 2F46C 8002E86C 44070000 */  mfc1       $a3, $f0
/* 2F470 8002E870 44060800 */  mfc1       $a2, $f1
/* 2F474 8002E874 0C008C54 */  jal        func_80023150
/* 2F478 8002E878 F7A00010 */   sdc1      $f0, 0x10($sp)
/* 2F47C 8002E87C 10000011 */  b          .L8002E8C4
/* 2F480 8002E880 00000000 */   nop
.L8002E884:
/* 2F484 8002E884 3C01800A */  lui        $at, %hi(D_800A5AF0)
/* 2F488 8002E888 D4205AF0 */  ldc1       $f0, %lo(D_800A5AF0)($at)
/* 2F48C 8002E88C 2404000A */  addiu      $a0, $zero, 0xa
/* 2F490 8002E890 44070000 */  mfc1       $a3, $f0
/* 2F494 8002E894 44060800 */  mfc1       $a2, $f1
/* 2F498 8002E898 0C008C54 */  jal        func_80023150
/* 2F49C 8002E89C F7A00010 */   sdc1      $f0, 0x10($sp)
/* 2F4A0 8002E8A0 10000008 */  b          .L8002E8C4
/* 2F4A4 8002E8A4 00000000 */   nop
.L8002E8A8:
/* 2F4A8 8002E8A8 3C01800A */  lui        $at, %hi(D_800A5AF8)
/* 2F4AC 8002E8AC D4205AF8 */  ldc1       $f0, %lo(D_800A5AF8)($at)
/* 2F4B0 8002E8B0 24040008 */  addiu      $a0, $zero, 8
/* 2F4B4 8002E8B4 44070000 */  mfc1       $a3, $f0
/* 2F4B8 8002E8B8 44060800 */  mfc1       $a2, $f1
/* 2F4BC 8002E8BC 0C008C54 */  jal        func_80023150
/* 2F4C0 8002E8C0 F7A00010 */   sdc1      $f0, 0x10($sp)
.L8002E8C4:
/* 2F4C4 8002E8C4 0C00B808 */  jal        func_8002E020
/* 2F4C8 8002E8C8 24040001 */   addiu     $a0, $zero, 1
/* 2F4CC 8002E8CC 0C0024D1 */  jal        func_80009344
/* 2F4D0 8002E8D0 24044000 */   addiu     $a0, $zero, 0x4000
/* 2F4D4 8002E8D4 1000009C */  b          .L8002EB48
/* 2F4D8 8002E8D8 8FBF001C */   lw        $ra, 0x1c($sp)
/* 2F4DC 8002E8DC 3C01800B */  lui        $at, %hi(D_800ABDCC)
/* 2F4E0 8002E8E0 C428BDCC */  lwc1       $f8, %lo(D_800ABDCC)($at)
/* 2F4E4 8002E8E4 44803000 */  mtc1       $zero, $f6
/* 2F4E8 8002E8E8 00000000 */  nop
/* 2F4EC 8002E8EC 46083032 */  c.eq.s     $f6, $f8
/* 2F4F0 8002E8F0 00000000 */  nop
/* 2F4F4 8002E8F4 45000003 */  bc1f       .L8002E904
/* 2F4F8 8002E8F8 00000000 */   nop
/* 2F4FC 8002E8FC 0C00B808 */  jal        func_8002E020
/* 2F500 8002E900 24040002 */   addiu     $a0, $zero, 2
.L8002E904:
/* 2F504 8002E904 0C00B75C */  jal        func_8002DD70
/* 2F508 8002E908 00000000 */   nop
/* 2F50C 8002E90C 0C0024D1 */  jal        func_80009344
/* 2F510 8002E910 24044000 */   addiu     $a0, $zero, 0x4000
/* 2F514 8002E914 1000008C */  b          .L8002EB48
/* 2F518 8002E918 8FBF001C */   lw        $ra, 0x1c($sp)
/* 2F51C 8002E91C 0C00B880 */  jal        func_8002E200
/* 2F520 8002E920 00000000 */   nop
/* 2F524 8002E924 0C00B75C */  jal        func_8002DD70
/* 2F528 8002E928 00000000 */   nop
/* 2F52C 8002E92C 0C0024D1 */  jal        func_80009344
/* 2F530 8002E930 24044000 */   addiu     $a0, $zero, 0x4000
/* 2F534 8002E934 10000084 */  b          .L8002EB48
/* 2F538 8002E938 8FBF001C */   lw        $ra, 0x1c($sp)
/* 2F53C 8002E93C 0C002C3F */  jal        func_8000B0FC
/* 2F540 8002E940 00000000 */   nop
/* 2F544 8002E944 3C0D800F */  lui        $t5, %hi(D_800F1BA8)
/* 2F548 8002E948 8DAD1BA8 */  lw         $t5, %lo(D_800F1BA8)($t5)
/* 2F54C 8002E94C 240E0000 */  addiu      $t6, $zero, 0
/* 2F550 8002E950 004EC023 */  subu       $t8, $v0, $t6
/* 2F554 8002E954 006D082B */  sltu       $at, $v1, $t5
/* 2F558 8002E958 0301C023 */  subu       $t8, $t8, $at
/* 2F55C 8002E95C 006DC823 */  subu       $t9, $v1, $t5
/* 2F560 8002E960 17000002 */  bnez       $t8, .L8002E96C
/* 2F564 8002E964 2F2105DD */   sltiu     $at, $t9, 0x5dd
/* 2F568 8002E968 14200014 */  bnez       $at, .L8002E9BC
.L8002E96C:
/* 2F56C 8002E96C 3C01800A */   lui       $at, %hi(D_800A5B00)
/* 2F570 8002E970 C42A5B00 */  lwc1       $f10, %lo(D_800A5B00)($at)
/* 2F574 8002E974 00002025 */  or         $a0, $zero, $zero
/* 2F578 8002E978 00002825 */  or         $a1, $zero, $zero
/* 2F57C 8002E97C 00003025 */  or         $a2, $zero, $zero
/* 2F580 8002E980 240700FE */  addiu      $a3, $zero, 0xfe
/* 2F584 8002E984 0C00059E */  jal        func_80001678
/* 2F588 8002E988 E7AA0010 */   swc1      $f10, 0x10($sp)
/* 2F58C 8002E98C 3C01800A */  lui        $at, %hi(D_800A5B08)
/* 2F590 8002E990 D4205B08 */  ldc1       $f0, %lo(D_800A5B08)($at)
/* 2F594 8002E994 3C013FF0 */  lui        $at, 0x3ff0
/* 2F598 8002E998 44818800 */  mtc1       $at, $f17
/* 2F59C 8002E99C 44808000 */  mtc1       $zero, $f16
/* 2F5A0 8002E9A0 44070000 */  mfc1       $a3, $f0
/* 2F5A4 8002E9A4 44060800 */  mfc1       $a2, $f1
/* 2F5A8 8002E9A8 2404FFFF */  addiu      $a0, $zero, -1
/* 2F5AC 8002E9AC 0C008C54 */  jal        func_80023150
/* 2F5B0 8002E9B0 F7B00010 */   sdc1      $f16, 0x10($sp)
/* 2F5B4 8002E9B4 0C00B808 */  jal        func_8002E020
/* 2F5B8 8002E9B8 24040005 */   addiu     $a0, $zero, 5
.L8002E9BC:
/* 2F5BC 8002E9BC 0C00B75C */  jal        func_8002DD70
/* 2F5C0 8002E9C0 00000000 */   nop
/* 2F5C4 8002E9C4 0C0024D1 */  jal        func_80009344
/* 2F5C8 8002E9C8 24044000 */   addiu     $a0, $zero, 0x4000
/* 2F5CC 8002E9CC 1000005E */  b          .L8002EB48
/* 2F5D0 8002E9D0 8FBF001C */   lw        $ra, 0x1c($sp)
/* 2F5D4 8002E9D4 3C01800B */  lui        $at, %hi(D_800ABDCC)
/* 2F5D8 8002E9D8 C424BDCC */  lwc1       $f4, %lo(D_800ABDCC)($at)
/* 2F5DC 8002E9DC 44809000 */  mtc1       $zero, $f18
/* 2F5E0 8002E9E0 00002025 */  or         $a0, $zero, $zero
/* 2F5E4 8002E9E4 46049032 */  c.eq.s     $f18, $f4
/* 2F5E8 8002E9E8 00000000 */  nop
/* 2F5EC 8002E9EC 45000028 */  bc1f       .L8002EA90
/* 2F5F0 8002E9F0 00000000 */   nop
/* 2F5F4 8002E9F4 0C045895 */  jal        func_80116254
/* 2F5F8 8002E9F8 24050001 */   addiu     $a1, $zero, 1
/* 2F5FC 8002E9FC 0C044A09 */  jal        func_80112824
/* 2F600 8002EA00 00000000 */   nop
/* 2F604 8002EA04 14400007 */  bnez       $v0, .L8002EA24
/* 2F608 8002EA08 00002025 */   or        $a0, $zero, $zero
/* 2F60C 8002EA0C 0C043966 */  jal        func_8010E598
/* 2F610 8002EA10 24050002 */   addiu     $a1, $zero, 2
/* 2F614 8002EA14 0C002C76 */  jal        func_8000B1D8
/* 2F618 8002EA18 00002025 */   or        $a0, $zero, $zero
/* 2F61C 8002EA1C 10000010 */  b          .L8002EA60
/* 2F620 8002EA20 2408001E */   addiu     $t0, $zero, 0x1e
.L8002EA24:
/* 2F624 8002EA24 0C044A09 */  jal        func_80112824
/* 2F628 8002EA28 00000000 */   nop
/* 2F62C 8002EA2C 24010001 */  addiu      $at, $zero, 1
/* 2F630 8002EA30 14410006 */  bne        $v0, $at, .L8002EA4C
/* 2F634 8002EA34 24040002 */   addiu     $a0, $zero, 2
/* 2F638 8002EA38 24040002 */  addiu      $a0, $zero, 2
/* 2F63C 8002EA3C 0C043966 */  jal        func_8010E598
/* 2F640 8002EA40 24050001 */   addiu     $a1, $zero, 1
/* 2F644 8002EA44 10000003 */  b          .L8002EA54
/* 2F648 8002EA48 00000000 */   nop
.L8002EA4C:
/* 2F64C 8002EA4C 0C043966 */  jal        func_8010E598
/* 2F650 8002EA50 24050002 */   addiu     $a1, $zero, 2
.L8002EA54:
/* 2F654 8002EA54 0C002C76 */  jal        func_8000B1D8
/* 2F658 8002EA58 00002025 */   or        $a0, $zero, $zero
/* 2F65C 8002EA5C 2408001E */  addiu      $t0, $zero, 0x1e
.L8002EA60:
/* 2F660 8002EA60 AFA80010 */  sw         $t0, 0x10($sp)
/* 2F664 8002EA64 00002025 */  or         $a0, $zero, $zero
/* 2F668 8002EA68 2405001E */  addiu      $a1, $zero, 0x1e
/* 2F66C 8002EA6C 2406001E */  addiu      $a2, $zero, 0x1e
/* 2F670 8002EA70 0C0013C9 */  jal        func_80004F24
/* 2F674 8002EA74 2407001E */   addiu     $a3, $zero, 0x1e
/* 2F678 8002EA78 0C00CB07 */  jal        __osSpSetPc
/* 2F67C 8002EA7C 2404000C */   addiu     $a0, $zero, 0xc
/* 2F680 8002EA80 0C0449F7 */  jal        func_801127DC
/* 2F684 8002EA84 00402025 */   or        $a0, $v0, $zero
/* 2F688 8002EA88 0C00B808 */  jal        func_8002E020
/* 2F68C 8002EA8C 00002025 */   or        $a0, $zero, $zero
.L8002EA90:
/* 2F690 8002EA90 0C00B75C */  jal        func_8002DD70
/* 2F694 8002EA94 00000000 */   nop
/* 2F698 8002EA98 0C0024D1 */  jal        func_80009344
/* 2F69C 8002EA9C 24044000 */   addiu     $a0, $zero, 0x4000
/* 2F6A0 8002EAA0 10000029 */  b          .L8002EB48
/* 2F6A4 8002EAA4 8FBF001C */   lw        $ra, 0x1c($sp)
/* 2F6A8 8002EAA8 3C01800B */  lui        $at, %hi(D_800ABDCC)
/* 2F6AC 8002EAAC C428BDCC */  lwc1       $f8, %lo(D_800ABDCC)($at)
/* 2F6B0 8002EAB0 44803000 */  mtc1       $zero, $f6
/* 2F6B4 8002EAB4 00000000 */  nop
/* 2F6B8 8002EAB8 46083032 */  c.eq.s     $f6, $f8
/* 2F6BC 8002EABC 00000000 */  nop
/* 2F6C0 8002EAC0 4500001C */  bc1f       .L8002EB34
/* 2F6C4 8002EAC4 00000000 */   nop
/* 2F6C8 8002EAC8 0C044A09 */  jal        func_80112824
/* 2F6CC 8002EACC 00000000 */   nop
/* 2F6D0 8002EAD0 3C09800F */  lui        $t1, %hi(D_800F1B74)
/* 2F6D4 8002EAD4 8D291B74 */  lw         $t1, %lo(D_800F1B74)($t1)
/* 2F6D8 8002EAD8 00025880 */  sll        $t3, $v0, 2
/* 2F6DC 8002EADC 3C04800A */  lui        $a0, 0x800a
/* 2F6E0 8002EAE0 00095080 */  sll        $t2, $t1, 2
/* 2F6E4 8002EAE4 01495021 */  addu       $t2, $t2, $t1
/* 2F6E8 8002EAE8 000A5080 */  sll        $t2, $t2, 2
/* 2F6EC 8002EAEC 01495023 */  subu       $t2, $t2, $t1
/* 2F6F0 8002EAF0 000A5080 */  sll        $t2, $t2, 2
/* 2F6F4 8002EAF4 014B6021 */  addu       $t4, $t2, $t3
/* 2F6F8 8002EAF8 008C2021 */  addu       $a0, $a0, $t4
/* 2F6FC 8002EAFC 8C849DC0 */  lw         $a0, -0x6240($a0)
/* 2F700 8002EB00 0C043966 */  jal        func_8010E598
/* 2F704 8002EB04 00002825 */   or        $a1, $zero, $zero
/* 2F708 8002EB08 0C002C76 */  jal        func_8000B1D8
/* 2F70C 8002EB0C 00002025 */   or        $a0, $zero, $zero
/* 2F710 8002EB10 240D001E */  addiu      $t5, $zero, 0x1e
/* 2F714 8002EB14 AFAD0010 */  sw         $t5, 0x10($sp)
/* 2F718 8002EB18 00002025 */  or         $a0, $zero, $zero
/* 2F71C 8002EB1C 2405001E */  addiu      $a1, $zero, 0x1e
/* 2F720 8002EB20 2406001E */  addiu      $a2, $zero, 0x1e
/* 2F724 8002EB24 0C0013C9 */  jal        func_80004F24
/* 2F728 8002EB28 2407001E */   addiu     $a3, $zero, 0x1e
/* 2F72C 8002EB2C 0C00B808 */  jal        func_8002E020
/* 2F730 8002EB30 00002025 */   or        $a0, $zero, $zero
.L8002EB34:
/* 2F734 8002EB34 0C00B75C */  jal        func_8002DD70
/* 2F738 8002EB38 00000000 */   nop
/* 2F73C 8002EB3C 0C0024D1 */  jal        func_80009344
/* 2F740 8002EB40 24044000 */   addiu     $a0, $zero, 0x4000
.L8002EB44:
/* 2F744 8002EB44 8FBF001C */  lw         $ra, 0x1c($sp)
.L8002EB48:
/* 2F748 8002EB48 27BD0028 */  addiu      $sp, $sp, 0x28
/* 2F74C 8002EB4C 03E00008 */  jr         $ra
/* 2F750 8002EB50 00000000 */   nop
/* 2F754 8002EB54 00000000 */  nop
/* 2F758 8002EB58 00000000 */  nop
/* 2F75C 8002EB5C 00000000 */  nop
