.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80013130
/* 13D30 80013130 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 13D34 80013134 00057880 */  sll        $t7, $a1, 2
/* 13D38 80013138 01E57823 */  subu       $t7, $t7, $a1
/* 13D3C 8001313C 3C188007 */  lui        $t8, %hi(D_80074EB8)
/* 13D40 80013140 27184EB8 */  addiu      $t8, $t8, %lo(D_80074EB8)
/* 13D44 80013144 000F7880 */  sll        $t7, $t7, 2
/* 13D48 80013148 AFBF001C */  sw         $ra, 0x1c($sp)
/* 13D4C 8001314C AFA40038 */  sw         $a0, 0x38($sp)
/* 13D50 80013150 01F83821 */  addu       $a3, $t7, $t8
/* 13D54 80013154 AFB00018 */  sw         $s0, 0x18($sp)
/* 13D58 80013158 AFA5003C */  sw         $a1, 0x3c($sp)
/* 13D5C 8001315C AFA60040 */  sw         $a2, 0x40($sp)
/* 13D60 80013160 8CE40000 */  lw         $a0, ($a3)
/* 13D64 80013164 0C002114 */  jal        func_80008450
/* 13D68 80013168 AFA70024 */   sw        $a3, 0x24($sp)
/* 13D6C 8001316C 3C03800B */  lui        $v1, %hi(D_800AE504)
/* 13D70 80013170 8C63E504 */  lw         $v1, %lo(D_800AE504)($v1)
/* 13D74 80013174 24010008 */  addiu      $at, $zero, 8
/* 13D78 80013178 8FA70024 */  lw         $a3, 0x24($sp)
/* 13D7C 8001317C 10610003 */  beq        $v1, $at, .L8001318C
/* 13D80 80013180 00408025 */   or        $s0, $v0, $zero
/* 13D84 80013184 24010012 */  addiu      $at, $zero, 0x12
/* 13D88 80013188 14610005 */  bne        $v1, $at, .L800131A0
.L8001318C:
/* 13D8C 8001318C 02002025 */   or        $a0, $s0, $zero
/* 13D90 80013190 24056000 */  addiu      $a1, $zero, 0x6000
/* 13D94 80013194 0C00237A */  jal        func_80008DE8
/* 13D98 80013198 AFA70024 */   sw        $a3, 0x24($sp)
/* 13D9C 8001319C 8FA70024 */  lw         $a3, 0x24($sp)
.L800131A0:
/* 13DA0 800131A0 8E020054 */  lw         $v0, 0x54($s0)
/* 13DA4 800131A4 8FB9003C */  lw         $t9, 0x3c($sp)
/* 13DA8 800131A8 3C058007 */  lui        $a1, 0x8007
/* 13DAC 800131AC 24440018 */  addiu      $a0, $v0, 0x18
/* 13DB0 800131B0 A0590000 */  sb         $t9, ($v0)
/* 13DB4 800131B4 C4E40004 */  lwc1       $f4, 4($a3)
/* 13DB8 800131B8 E4440028 */  swc1       $f4, 0x28($v0)
/* 13DBC 800131BC 8CE80008 */  lw         $t0, 8($a3)
/* 13DC0 800131C0 AFA20030 */  sw         $v0, 0x30($sp)
/* 13DC4 800131C4 00084880 */  sll        $t1, $t0, 2
/* 13DC8 800131C8 00A92821 */  addu       $a1, $a1, $t1
/* 13DCC 800131CC 0C002973 */  jal        func_8000A5CC
/* 13DD0 800131D0 8CA5B4B0 */   lw        $a1, -0x4b50($a1)
/* 13DD4 800131D4 8FAA0040 */  lw         $t2, 0x40($sp)
/* 13DD8 800131D8 8FA20030 */  lw         $v0, 0x30($sp)
/* 13DDC 800131DC 3C058007 */  lui        $a1, %hi(D_8006B090)
/* 13DE0 800131E0 000A5880 */  sll        $t3, $t2, 2
/* 13DE4 800131E4 00AB2821 */  addu       $a1, $a1, $t3
/* 13DE8 800131E8 8CA5B090 */  lw         $a1, %lo(D_8006B090)($a1)
/* 13DEC 800131EC 0C002973 */  jal        func_8000A5CC
/* 13DF0 800131F0 2444000C */   addiu     $a0, $v0, 0xc
/* 13DF4 800131F4 8FA20030 */  lw         $v0, 0x30($sp)
/* 13DF8 800131F8 8FAC0038 */  lw         $t4, 0x38($sp)
/* 13DFC 800131FC 02002025 */  or         $a0, $s0, $zero
/* 13E00 80013200 A0400001 */  sb         $zero, 1($v0)
/* 13E04 80013204 0C00219D */  jal        func_80008674
/* 13E08 80013208 AC4C0004 */   sw        $t4, 4($v0)
/* 13E0C 8001320C 8FAD0038 */  lw         $t5, 0x38($sp)
/* 13E10 80013210 8DA30054 */  lw         $v1, 0x54($t5)
/* 13E14 80013214 8C640404 */  lw         $a0, 0x404($v1)
/* 13E18 80013218 0C001FA3 */  jal        func_80007E8C
/* 13E1C 8001321C AFA3002C */   sw        $v1, 0x2c($sp)
/* 13E20 80013220 10400003 */  beqz       $v0, .L80013230
/* 13E24 80013224 00402025 */   or        $a0, $v0, $zero
/* 13E28 80013228 0C0021EF */  jal        func_800087BC
/* 13E2C 8001322C 00000000 */   nop
.L80013230:
/* 13E30 80013230 8E0E0038 */  lw         $t6, 0x38($s0)
/* 13E34 80013234 8FAF002C */  lw         $t7, 0x2c($sp)
/* 13E38 80013238 02001025 */  or         $v0, $s0, $zero
/* 13E3C 8001323C ADEE0404 */  sw         $t6, 0x404($t7)
/* 13E40 80013240 8FBF001C */  lw         $ra, 0x1c($sp)
/* 13E44 80013244 8FB00018 */  lw         $s0, 0x18($sp)
/* 13E48 80013248 27BD0038 */  addiu      $sp, $sp, 0x38
/* 13E4C 8001324C 03E00008 */  jr         $ra
/* 13E50 80013250 00000000 */   nop

glabel func_80013254
/* 13E54 80013254 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13E58 80013258 AFA40020 */  sw         $a0, 0x20($sp)
/* 13E5C 8001325C AFBF0014 */  sw         $ra, 0x14($sp)
/* 13E60 80013260 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 13E64 80013264 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 13E68 80013268 2405002C */  addiu      $a1, $zero, 0x2c
/* 13E6C 8001326C 0C00E03D */  jal        func_800380F4
/* 13E70 80013270 2406007A */   addiu     $a2, $zero, 0x7a
/* 13E74 80013274 3C058007 */  lui        $a1, %hi(D_8006B320)
/* 13E78 80013278 8CA5B320 */  lw         $a1, %lo(D_8006B320)($a1)
/* 13E7C 8001327C 2444000C */  addiu      $a0, $v0, 0xc
/* 13E80 80013280 0C002973 */  jal        func_8000A5CC
/* 13E84 80013284 AFA2001C */   sw        $v0, 0x1c($sp)
/* 13E88 80013288 8FA3001C */  lw         $v1, 0x1c($sp)
/* 13E8C 8001328C 3C058007 */  lui        $a1, %hi(D_8006B4B0)
/* 13E90 80013290 8CA5B4B0 */  lw         $a1, %lo(D_8006B4B0)($a1)
/* 13E94 80013294 0C002973 */  jal        func_8000A5CC
/* 13E98 80013298 24640018 */   addiu     $a0, $v1, 0x18
/* 13E9C 8001329C 8FA3001C */  lw         $v1, 0x1c($sp)
/* 13EA0 800132A0 3C013F80 */  lui        $at, 0x3f80
/* 13EA4 800132A4 44810000 */  mtc1       $at, $f0
/* 13EA8 800132A8 240200FF */  addiu      $v0, $zero, 0xff
/* 13EAC 800132AC A0620027 */  sb         $v0, 0x27($v1)
/* 13EB0 800132B0 A0620026 */  sb         $v0, 0x26($v1)
/* 13EB4 800132B4 A0620025 */  sb         $v0, 0x25($v1)
/* 13EB8 800132B8 A0620024 */  sb         $v0, 0x24($v1)
/* 13EBC 800132BC AC600004 */  sw         $zero, 4($v1)
/* 13EC0 800132C0 E4600008 */  swc1       $f0, 8($v1)
/* 13EC4 800132C4 E4600028 */  swc1       $f0, 0x28($v1)
/* 13EC8 800132C8 8FAF0020 */  lw         $t7, 0x20($sp)
/* 13ECC 800132CC ADE30054 */  sw         $v1, 0x54($t7)
/* 13ED0 800132D0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13ED4 800132D4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 13ED8 800132D8 03E00008 */  jr         $ra
/* 13EDC 800132DC 00000000 */   nop

glabel func_800132E0
/* 13EE0 800132E0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 13EE4 800132E4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 13EE8 800132E8 AFB10018 */  sw         $s1, 0x18($sp)
/* 13EEC 800132EC AFB00014 */  sw         $s0, 0x14($sp)
/* 13EF0 800132F0 8C910054 */  lw         $s1, 0x54($a0)
/* 13EF4 800132F4 3C01800B */  lui        $at, %hi(D_800AE4E4)
/* 13EF8 800132F8 C426E4E4 */  lwc1       $f6, %lo(D_800AE4E4)($at)
/* 13EFC 800132FC C6240008 */  lwc1       $f4, 8($s1)
/* 13F00 80013300 00808025 */  or         $s0, $a0, $zero
/* 13F04 80013304 24050079 */  addiu      $a1, $zero, 0x79
/* 13F08 80013308 46062202 */  mul.s      $f8, $f4, $f6
/* 13F0C 8001330C E7A80040 */  swc1       $f8, 0x40($sp)
/* 13F10 80013310 8E240004 */  lw         $a0, 4($s1)
/* 13F14 80013314 0C0058FF */  jal        func_800163FC
/* 13F18 80013318 AFA4003C */   sw        $a0, 0x3c($sp)
/* 13F1C 8001331C C44A0044 */  lwc1       $f10, 0x44($v0)
/* 13F20 80013320 02002025 */  or         $a0, $s0, $zero
/* 13F24 80013324 E60A0018 */  swc1       $f10, 0x18($s0)
/* 13F28 80013328 C4500048 */  lwc1       $f16, 0x48($v0)
/* 13F2C 8001332C C6040018 */  lwc1       $f4, 0x18($s0)
/* 13F30 80013330 E610001C */  swc1       $f16, 0x1c($s0)
/* 13F34 80013334 C452004C */  lwc1       $f18, 0x4c($v0)
/* 13F38 80013338 C606001C */  lwc1       $f6, 0x1c($s0)
/* 13F3C 8001333C E6040044 */  swc1       $f4, 0x44($s0)
/* 13F40 80013340 E6120020 */  swc1       $f18, 0x20($s0)
/* 13F44 80013344 C6080020 */  lwc1       $f8, 0x20($s0)
/* 13F48 80013348 E6060048 */  swc1       $f6, 0x48($s0)
/* 13F4C 8001334C 0C0026AE */  jal        func_80009AB8
/* 13F50 80013350 E608004C */   swc1      $f8, 0x4c($s0)
/* 13F54 80013354 3C0E800B */  lui        $t6, %hi(D_800ABDD8)
/* 13F58 80013358 8DCEBDD8 */  lw         $t6, %lo(D_800ABDD8)($t6)
/* 13F5C 8001335C 3C18800B */  lui        $t8, %hi(D_800ABCF0)
/* 13F60 80013360 2718BCF0 */  addiu      $t8, $t8, %lo(D_800ABCF0)
/* 13F64 80013364 000E78C0 */  sll        $t7, $t6, 3
/* 13F68 80013368 01EE7823 */  subu       $t7, $t7, $t6
/* 13F6C 8001336C 000F7940 */  sll        $t7, $t7, 5
/* 13F70 80013370 01F81021 */  addu       $v0, $t7, $t8
/* 13F74 80013374 C4500000 */  lwc1       $f16, ($v0)
/* 13F78 80013378 C60A0044 */  lwc1       $f10, 0x44($s0)
/* 13F7C 8001337C C4460004 */  lwc1       $f6, 4($v0)
/* 13F80 80013380 27A40028 */  addiu      $a0, $sp, 0x28
/* 13F84 80013384 46105481 */  sub.s      $f18, $f10, $f16
/* 13F88 80013388 C4500008 */  lwc1       $f16, 8($v0)
/* 13F8C 8001338C E7B20028 */  swc1       $f18, 0x28($sp)
/* 13F90 80013390 C6040048 */  lwc1       $f4, 0x48($s0)
/* 13F94 80013394 46062201 */  sub.s      $f8, $f4, $f6
/* 13F98 80013398 E7A8002C */  swc1       $f8, 0x2c($sp)
/* 13F9C 8001339C C60A004C */  lwc1       $f10, 0x4c($s0)
/* 13FA0 800133A0 46105481 */  sub.s      $f18, $f10, $f16
/* 13FA4 800133A4 0C00E974 */  jal        func_8003A5D0
/* 13FA8 800133A8 E7B20030 */   swc1      $f18, 0x30($sp)
/* 13FAC 800133AC 8FA2003C */  lw         $v0, 0x3c($sp)
/* 13FB0 800133B0 3C01800A */  lui        $at, %hi(D_800A26A0)
/* 13FB4 800133B4 C42C26A0 */  lwc1       $f12, %lo(D_800A26A0)($at)
/* 13FB8 800133B8 3C01447A */  lui        $at, 0x447a
/* 13FBC 800133BC 44813000 */  mtc1       $at, $f6
/* 13FC0 800133C0 C4440000 */  lwc1       $f4, ($v0)
/* 13FC4 800133C4 3C01800A */  lui        $at, %hi(D_800A26A4)
/* 13FC8 800133C8 C43026A4 */  lwc1       $f16, %lo(D_800A26A4)($at)
/* 13FCC 800133CC 46062202 */  mul.s      $f8, $f4, $f6
/* 13FD0 800133D0 3C014080 */  lui        $at, 0x4080
/* 13FD4 800133D4 2624000C */  addiu      $a0, $s1, 0xc
/* 13FD8 800133D8 27A50044 */  addiu      $a1, $sp, 0x44
/* 13FDC 800133DC 46004280 */  add.s      $f10, $f8, $f0
/* 13FE0 800133E0 46105082 */  mul.s      $f2, $f10, $f16
/* 13FE4 800133E4 460C103C */  c.lt.s     $f2, $f12
/* 13FE8 800133E8 00000000 */  nop
/* 13FEC 800133EC 45020004 */  bc1fl      .L80013400
/* 13FF0 800133F0 44810000 */   mtc1      $at, $f0
/* 13FF4 800133F4 10000008 */  b          .L80013418
/* 13FF8 800133F8 46006086 */   mov.s     $f2, $f12
/* 13FFC 800133FC 44810000 */  mtc1       $at, $f0
.L80013400:
/* 14000 80013400 00000000 */  nop
/* 14004 80013404 4602003C */  c.lt.s     $f0, $f2
/* 14008 80013408 00000000 */  nop
/* 1400C 8001340C 45020003 */  bc1fl      .L8001341C
/* 14010 80013410 C4520024 */   lwc1      $f18, 0x24($v0)
/* 14014 80013414 46000086 */  mov.s      $f2, $f0
.L80013418:
/* 14018 80013418 C4520024 */  lwc1       $f18, 0x24($v0)
.L8001341C:
/* 1401C 8001341C 3C014220 */  lui        $at, 0x4220
/* 14020 80013420 44813000 */  mtc1       $at, $f6
/* 14024 80013424 46029102 */  mul.s      $f4, $f18, $f2
/* 14028 80013428 C60A001C */  lwc1       $f10, 0x1c($s0)
/* 1402C 8001342C 3C014334 */  lui        $at, 0x4334
/* 14030 80013430 46062202 */  mul.s      $f8, $f4, $f6
/* 14034 80013434 46085400 */  add.s      $f16, $f10, $f8
/* 14038 80013438 E610001C */  swc1       $f16, 0x1c($s0)
/* 1403C 8001343C C6320028 */  lwc1       $f18, 0x28($s1)
/* 14040 80013440 46121082 */  mul.s      $f2, $f2, $f18
/* 14044 80013444 E6020000 */  swc1       $f2, ($s0)
/* 14048 80013448 E6020004 */  swc1       $f2, 4($s0)
/* 1404C 8001344C E6020008 */  swc1       $f2, 8($s0)
/* 14050 80013450 82390001 */  lb         $t9, 1($s1)
/* 14054 80013454 13200023 */  beqz       $t9, .L800134E4
/* 14058 80013458 00000000 */   nop
/* 1405C 8001345C C6040010 */  lwc1       $f4, 0x10($s0)
/* 14060 80013460 44813000 */  mtc1       $at, $f6
/* 14064 80013464 44806000 */  mtc1       $zero, $f12
/* 14068 80013468 3C0143B4 */  lui        $at, 0x43b4
/* 1406C 8001346C 46062280 */  add.s      $f10, $f4, $f6
/* 14070 80013470 E60A0010 */  swc1       $f10, 0x10($s0)
/* 14074 80013474 C6000010 */  lwc1       $f0, 0x10($s0)
/* 14078 80013478 460C003C */  c.lt.s     $f0, $f12
/* 1407C 8001347C 00000000 */  nop
/* 14080 80013480 4502000B */  bc1fl      .L800134B0
/* 14084 80013484 3C0143B4 */   lui       $at, 0x43b4
/* 14088 80013488 44811000 */  mtc1       $at, $f2
/* 1408C 8001348C 00000000 */  nop
/* 14090 80013490 46020200 */  add.s      $f8, $f0, $f2
.L80013494:
/* 14094 80013494 E6080010 */  swc1       $f8, 0x10($s0)
/* 14098 80013498 C6000010 */  lwc1       $f0, 0x10($s0)
/* 1409C 8001349C 460C003C */  c.lt.s     $f0, $f12
/* 140A0 800134A0 00000000 */  nop
/* 140A4 800134A4 4503FFFB */  bc1tl      .L80013494
/* 140A8 800134A8 46020200 */   add.s     $f8, $f0, $f2
/* 140AC 800134AC 3C0143B4 */  lui        $at, 0x43b4
.L800134B0:
/* 140B0 800134B0 44811000 */  mtc1       $at, $f2
/* 140B4 800134B4 00000000 */  nop
/* 140B8 800134B8 4600103E */  c.le.s     $f2, $f0
/* 140BC 800134BC 00000000 */  nop
/* 140C0 800134C0 45000008 */  bc1f       .L800134E4
/* 140C4 800134C4 00000000 */   nop
/* 140C8 800134C8 46020401 */  sub.s      $f16, $f0, $f2
.L800134CC:
/* 140CC 800134CC E6100010 */  swc1       $f16, 0x10($s0)
/* 140D0 800134D0 C6000010 */  lwc1       $f0, 0x10($s0)
/* 140D4 800134D4 4600103E */  c.le.s     $f2, $f0
/* 140D8 800134D8 00000000 */  nop
/* 140DC 800134DC 4503FFFB */  bc1tl      .L800134CC
/* 140E0 800134E0 46020401 */   sub.s     $f16, $f0, $f2
.L800134E4:
/* 140E4 800134E4 0C002980 */  jal        func_8000A600
/* 140E8 800134E8 8FA60040 */   lw        $a2, 0x40($sp)
/* 140EC 800134EC 26240018 */  addiu      $a0, $s1, 0x18
/* 140F0 800134F0 27A50044 */  addiu      $a1, $sp, 0x44
/* 140F4 800134F4 0C002980 */  jal        func_8000A600
/* 140F8 800134F8 8FA60040 */   lw        $a2, 0x40($sp)
/* 140FC 800134FC 24010001 */  addiu      $at, $zero, 1
/* 14100 80013500 14410005 */  bne        $v0, $at, .L80013518
/* 14104 80013504 8FA80044 */   lw        $t0, 0x44($sp)
/* 14108 80013508 0C0021EF */  jal        func_800087BC
/* 1410C 8001350C 02002025 */   or        $a0, $s0, $zero
/* 14110 80013510 10000003 */  b          .L80013520
/* 14114 80013514 8FBF001C */   lw        $ra, 0x1c($sp)
.L80013518:
/* 14118 80013518 A2280027 */  sb         $t0, 0x27($s1)
/* 1411C 8001351C 8FBF001C */  lw         $ra, 0x1c($sp)
.L80013520:
/* 14120 80013520 8FB00014 */  lw         $s0, 0x14($sp)
/* 14124 80013524 8FB10018 */  lw         $s1, 0x18($sp)
/* 14128 80013528 03E00008 */  jr         $ra
/* 1412C 8001352C 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_80013530
/* 14130 80013530 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 14134 80013534 AFBF0014 */  sw         $ra, 0x14($sp)
/* 14138 80013538 AFA40020 */  sw         $a0, 0x20($sp)
/* 1413C 8001353C 8C830054 */  lw         $v1, 0x54($a0)
/* 14140 80013540 3C04800B */  lui        $a0, %hi(D_800ABDD0)
/* 14144 80013544 2484BDD0 */  addiu      $a0, $a0, %lo(D_800ABDD0)
/* 14148 80013548 84660014 */  lh         $a2, 0x14($v1)
/* 1414C 8001354C 24050004 */  addiu      $a1, $zero, 4
/* 14150 80013550 0C00309B */  jal        func_8000C26C
/* 14154 80013554 AFA3001C */   sw        $v1, 0x1c($sp)
/* 14158 80013558 3C06800B */  lui        $a2, %hi(D_800ABDD0)
/* 1415C 8001355C 24C6BDD0 */  addiu      $a2, $a2, %lo(D_800ABDD0)
/* 14160 80013560 8CC50000 */  lw         $a1, ($a2)
/* 14164 80013564 8FA3001C */  lw         $v1, 0x1c($sp)
/* 14168 80013568 3C18FA00 */  lui        $t8, 0xfa00
/* 1416C 8001356C 24AF0008 */  addiu      $t7, $a1, 8
/* 14170 80013570 ACCF0000 */  sw         $t7, ($a2)
/* 14174 80013574 ACB80000 */  sw         $t8, ($a1)
/* 14178 80013578 906B0025 */  lbu        $t3, 0x25($v1)
/* 1417C 8001357C 90680024 */  lbu        $t0, 0x24($v1)
/* 14180 80013580 906F0026 */  lbu        $t7, 0x26($v1)
/* 14184 80013584 906A0027 */  lbu        $t2, 0x27($v1)
/* 14188 80013588 000B6400 */  sll        $t4, $t3, 0x10
/* 1418C 8001358C 00084E00 */  sll        $t1, $t0, 0x18
/* 14190 80013590 012C6825 */  or         $t5, $t1, $t4
/* 14194 80013594 000FC200 */  sll        $t8, $t7, 8
/* 14198 80013598 01B8C825 */  or         $t9, $t5, $t8
/* 1419C 8001359C 032A5825 */  or         $t3, $t9, $t2
/* 141A0 800135A0 ACAB0004 */  sw         $t3, 4($a1)
/* 141A4 800135A4 8FA90020 */  lw         $t1, 0x20($sp)
/* 141A8 800135A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 141AC 800135AC 8D220030 */  lw         $v0, 0x30($t1)
/* 141B0 800135B0 03E00008 */  jr         $ra
/* 141B4 800135B4 27BD0020 */   addiu     $sp, $sp, 0x20
/* 141B8 800135B8 00000000 */  nop
/* 141BC 800135BC 00000000 */  nop
