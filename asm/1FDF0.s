.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001F1F0
/* 1FDF0 8001F1F0 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 1FDF4 8001F1F4 AFB00018 */  sw         $s0, 0x18($sp)
/* 1FDF8 8001F1F8 00808025 */  or         $s0, $a0, $zero
/* 1FDFC 8001F1FC 3C0E8009 */  lui        $t6, %hi(D_80088E60)
/* 1FE00 8001F200 27A40028 */  addiu      $a0, $sp, 0x28
/* 1FE04 8001F204 25CE8E60 */  addiu      $t6, $t6, %lo(D_80088E60)
/* 1FE08 8001F208 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1FE0C 8001F20C AFA50064 */  sw         $a1, 0x64($sp)
/* 1FE10 8001F210 AFA60068 */  sw         $a2, 0x68($sp)
/* 1FE14 8001F214 AFA7006C */  sw         $a3, 0x6c($sp)
/* 1FE18 8001F218 25D90030 */  addiu      $t9, $t6, 0x30
/* 1FE1C 8001F21C 00804025 */  or         $t0, $a0, $zero
.L8001F220:
/* 1FE20 8001F220 8DC10000 */  lw         $at, ($t6)
/* 1FE24 8001F224 25CE000C */  addiu      $t6, $t6, 0xc
/* 1FE28 8001F228 2508000C */  addiu      $t0, $t0, 0xc
/* 1FE2C 8001F22C AD01FFF4 */  sw         $at, -0xc($t0)
/* 1FE30 8001F230 8DC1FFF8 */  lw         $at, -8($t6)
/* 1FE34 8001F234 AD01FFF8 */  sw         $at, -8($t0)
/* 1FE38 8001F238 8DC1FFFC */  lw         $at, -4($t6)
/* 1FE3C 8001F23C 15D9FFF8 */  bne        $t6, $t9, .L8001F220
/* 1FE40 8001F240 AD01FFFC */   sw        $at, -4($t0)
/* 1FE44 8001F244 8DC10000 */  lw         $at, ($t6)
/* 1FE48 8001F248 AD010000 */  sw         $at, ($t0)
/* 1FE4C 8001F24C 8DD90004 */  lw         $t9, 4($t6)
/* 1FE50 8001F250 0C002114 */  jal        func_80008450
/* 1FE54 8001F254 AD190004 */   sw        $t9, 4($t0)
/* 1FE58 8001F258 3C038013 */  lui        $v1, %hi(D_80133DE4)
/* 1FE5C 8001F25C 24633DE4 */  addiu      $v1, $v1, %lo(D_80133DE4)
/* 1FE60 8001F260 8C690000 */  lw         $t1, ($v1)
/* 1FE64 8001F264 C7A60064 */  lwc1       $f6, 0x64($sp)
/* 1FE68 8001F268 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 1FE6C 8001F26C C524000C */  lwc1       $f4, 0xc($t1)
/* 1FE70 8001F270 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 1FE74 8001F274 24050010 */  addiu      $a1, $zero, 0x10
/* 1FE78 8001F278 46062202 */  mul.s      $f8, $f4, $f6
/* 1FE7C 8001F27C 24060033 */  addiu      $a2, $zero, 0x33
/* 1FE80 8001F280 E4480000 */  swc1       $f8, ($v0)
/* 1FE84 8001F284 8C6A0000 */  lw         $t2, ($v1)
/* 1FE88 8001F288 C54A000C */  lwc1       $f10, 0xc($t2)
/* 1FE8C 8001F28C E44A0004 */  swc1       $f10, 4($v0)
/* 1FE90 8001F290 8C6B0000 */  lw         $t3, ($v1)
/* 1FE94 8001F294 C7B20068 */  lwc1       $f18, 0x68($sp)
/* 1FE98 8001F298 C570000C */  lwc1       $f16, 0xc($t3)
/* 1FE9C 8001F29C 46128102 */  mul.s      $f4, $f16, $f18
/* 1FEA0 8001F2A0 E4440008 */  swc1       $f4, 8($v0)
/* 1FEA4 8001F2A4 C6060000 */  lwc1       $f6, ($s0)
/* 1FEA8 8001F2A8 E4460018 */  swc1       $f6, 0x18($v0)
/* 1FEAC 8001F2AC C6080004 */  lwc1       $f8, 4($s0)
/* 1FEB0 8001F2B0 E448001C */  swc1       $f8, 0x1c($v0)
/* 1FEB4 8001F2B4 C60A0008 */  lwc1       $f10, 8($s0)
/* 1FEB8 8001F2B8 E44A0020 */  swc1       $f10, 0x20($v0)
/* 1FEBC 8001F2BC C6100000 */  lwc1       $f16, ($s0)
/* 1FEC0 8001F2C0 E4500044 */  swc1       $f16, 0x44($v0)
/* 1FEC4 8001F2C4 C6120004 */  lwc1       $f18, 4($s0)
/* 1FEC8 8001F2C8 E4520048 */  swc1       $f18, 0x48($v0)
/* 1FECC 8001F2CC C6040008 */  lwc1       $f4, 8($s0)
/* 1FED0 8001F2D0 E444004C */  swc1       $f4, 0x4c($v0)
/* 1FED4 8001F2D4 0C00E03D */  jal        func_800380F4
/* 1FED8 8001F2D8 AFA20024 */   sw        $v0, 0x24($sp)
/* 1FEDC 8001F2DC C7A60064 */  lwc1       $f6, 0x64($sp)
/* 1FEE0 8001F2E0 8FA40024 */  lw         $a0, 0x24($sp)
/* 1FEE4 8001F2E4 E4460000 */  swc1       $f6, ($v0)
/* 1FEE8 8001F2E8 C7A80068 */  lwc1       $f8, 0x68($sp)
/* 1FEEC 8001F2EC A0400008 */  sb         $zero, 8($v0)
/* 1FEF0 8001F2F0 E4480004 */  swc1       $f8, 4($v0)
/* 1FEF4 8001F2F4 8FAC006C */  lw         $t4, 0x6c($sp)
/* 1FEF8 8001F2F8 AC4C000C */  sw         $t4, 0xc($v0)
/* 1FEFC 8001F2FC 0C00219D */  jal        func_80008674
/* 1FF00 8001F300 AC820054 */   sw        $v0, 0x54($a0)
/* 1FF04 8001F304 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1FF08 8001F308 8FB00018 */  lw         $s0, 0x18($sp)
/* 1FF0C 8001F30C 27BD0060 */  addiu      $sp, $sp, 0x60
/* 1FF10 8001F310 03E00008 */  jr         $ra
/* 1FF14 8001F314 00000000 */   nop

glabel func_8001F318
/* 1FF18 8001F318 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 1FF1C 8001F31C 3C038007 */  lui        $v1, %hi(D_800760A8)
/* 1FF20 8001F320 8C6360A8 */  lw         $v1, %lo(D_800760A8)($v1)
/* 1FF24 8001F324 F7B40008 */  sdc1       $f20, 8($sp)
/* 1FF28 8001F328 C4900044 */  lwc1       $f16, 0x44($a0)
/* 1FF2C 8001F32C C4640044 */  lwc1       $f4, 0x44($v1)
/* 1FF30 8001F330 8C820054 */  lw         $v0, 0x54($a0)
/* 1FF34 8001F334 C48C0048 */  lwc1       $f12, 0x48($a0)
/* 1FF38 8001F338 C480004C */  lwc1       $f0, 0x4c($a0)
/* 1FF3C 8001F33C E7A40024 */  swc1       $f4, 0x24($sp)
/* 1FF40 8001F340 C7AA0024 */  lwc1       $f10, 0x24($sp)
/* 1FF44 8001F344 C4660048 */  lwc1       $f6, 0x48($v1)
/* 1FF48 8001F348 3C05800F */  lui        $a1, %hi(D_800EF6A0)
/* 1FF4C 8001F34C 4610503E */  c.le.s     $f10, $f16
/* 1FF50 8001F350 E7A60020 */  swc1       $f6, 0x20($sp)
/* 1FF54 8001F354 C468004C */  lwc1       $f8, 0x4c($v1)
/* 1FF58 8001F358 24A5F6A0 */  addiu      $a1, $a1, %lo(D_800EF6A0)
/* 1FF5C 8001F35C C4B20000 */  lwc1       $f18, ($a1)
/* 1FF60 8001F360 C4AE0004 */  lwc1       $f14, 4($a1)
/* 1FF64 8001F364 C4A20008 */  lwc1       $f2, 8($a1)
/* 1FF68 8001F368 45000003 */  bc1f       .L8001F378
/* 1FF6C 8001F36C E7A8001C */   swc1      $f8, 0x1c($sp)
/* 1FF70 8001F370 10000004 */  b          .L8001F384
/* 1FF74 8001F374 460A8501 */   sub.s     $f20, $f16, $f10
.L8001F378:
/* 1FF78 8001F378 C7A40024 */  lwc1       $f4, 0x24($sp)
/* 1FF7C 8001F37C 46048501 */  sub.s      $f20, $f16, $f4
/* 1FF80 8001F380 4600A507 */  neg.s      $f20, $f20
.L8001F384:
/* 1FF84 8001F384 C4460000 */  lwc1       $f6, ($v0)
/* 1FF88 8001F388 C7AA001C */  lwc1       $f10, 0x1c($sp)
/* 1FF8C 8001F38C E7A60010 */  swc1       $f6, 0x10($sp)
/* 1FF90 8001F390 C7A80010 */  lwc1       $f8, 0x10($sp)
/* 1FF94 8001F394 4608A03C */  c.lt.s     $f20, $f8
/* 1FF98 8001F398 00000000 */  nop
/* 1FF9C 8001F39C 45020016 */  bc1fl      .L8001F3F8
/* 1FFA0 8001F3A0 4610903E */   c.le.s    $f18, $f16
/* 1FFA4 8001F3A4 4600503E */  c.le.s     $f10, $f0
/* 1FFA8 8001F3A8 C7A4001C */  lwc1       $f4, 0x1c($sp)
/* 1FFAC 8001F3AC C7A80020 */  lwc1       $f8, 0x20($sp)
/* 1FFB0 8001F3B0 45020004 */  bc1fl      .L8001F3C4
/* 1FFB4 8001F3B4 46040501 */   sub.s     $f20, $f0, $f4
/* 1FFB8 8001F3B8 10000003 */  b          .L8001F3C8
/* 1FFBC 8001F3BC 460A0501 */   sub.s     $f20, $f0, $f10
/* 1FFC0 8001F3C0 46040501 */  sub.s      $f20, $f0, $f4
.L8001F3C4:
/* 1FFC4 8001F3C4 4600A507 */  neg.s      $f20, $f20
.L8001F3C8:
/* 1FFC8 8001F3C8 C4460004 */  lwc1       $f6, 4($v0)
/* 1FFCC 8001F3CC 4606A03C */  c.lt.s     $f20, $f6
/* 1FFD0 8001F3D0 00000000 */  nop
/* 1FFD4 8001F3D4 45020008 */  bc1fl      .L8001F3F8
/* 1FFD8 8001F3D8 4610903E */   c.le.s    $f18, $f16
/* 1FFDC 8001F3DC 4608603E */  c.le.s     $f12, $f8
/* 1FFE0 8001F3E0 00000000 */  nop
/* 1FFE4 8001F3E4 45020004 */  bc1fl      .L8001F3F8
/* 1FFE8 8001F3E8 4610903E */   c.le.s    $f18, $f16
/* 1FFEC 8001F3EC 10000020 */  b          .L8001F470
/* 1FFF0 8001F3F0 A0400008 */   sb        $zero, 8($v0)
/* 1FFF4 8001F3F4 4610903E */  c.le.s     $f18, $f16
.L8001F3F8:
/* 1FFF8 8001F3F8 C7AA0010 */  lwc1       $f10, 0x10($sp)
/* 1FFFC 8001F3FC 45020004 */  bc1fl      .L8001F410
/* 20000 8001F400 46128501 */   sub.s     $f20, $f16, $f18
/* 20004 8001F404 10000003 */  b          .L8001F414
/* 20008 8001F408 46128501 */   sub.s     $f20, $f16, $f18
/* 2000C 8001F40C 46128501 */  sub.s      $f20, $f16, $f18
.L8001F410:
/* 20010 8001F410 4600A507 */  neg.s      $f20, $f20
.L8001F414:
/* 20014 8001F414 460AA03C */  c.lt.s     $f20, $f10
/* 20018 8001F418 00000000 */  nop
/* 2001C 8001F41C 45020014 */  bc1fl      .L8001F470
/* 20020 8001F420 A0400008 */   sb        $zero, 8($v0)
/* 20024 8001F424 4600103E */  c.le.s     $f2, $f0
/* 20028 8001F428 C4500004 */  lwc1       $f16, 4($v0)
/* 2002C 8001F42C 45020004 */  bc1fl      .L8001F440
/* 20030 8001F430 46020501 */   sub.s     $f20, $f0, $f2
/* 20034 8001F434 10000003 */  b          .L8001F444
/* 20038 8001F438 46020501 */   sub.s     $f20, $f0, $f2
/* 2003C 8001F43C 46020501 */  sub.s      $f20, $f0, $f2
.L8001F440:
/* 20040 8001F440 4600A507 */  neg.s      $f20, $f20
.L8001F444:
/* 20044 8001F444 4610A03C */  c.lt.s     $f20, $f16
/* 20048 8001F448 00000000 */  nop
/* 2004C 8001F44C 45020008 */  bc1fl      .L8001F470
/* 20050 8001F450 A0400008 */   sb        $zero, 8($v0)
/* 20054 8001F454 460E603E */  c.le.s     $f12, $f14
/* 20058 8001F458 240E0001 */  addiu      $t6, $zero, 1
/* 2005C 8001F45C 45020004 */  bc1fl      .L8001F470
/* 20060 8001F460 A0400008 */   sb        $zero, 8($v0)
/* 20064 8001F464 10000002 */  b          .L8001F470
/* 20068 8001F468 A04E0008 */   sb        $t6, 8($v0)
/* 2006C 8001F46C A0400008 */  sb         $zero, 8($v0)
.L8001F470:
/* 20070 8001F470 D7B40008 */  ldc1       $f20, 8($sp)
/* 20074 8001F474 03E00008 */  jr         $ra
/* 20078 8001F478 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8001F47C
/* 2007C 8001F47C 8C820054 */  lw         $v0, 0x54($a0)
/* 20080 8001F480 3C04800B */  lui        $a0, %hi(D_800ABDD0)
/* 20084 8001F484 2484BDD0 */  addiu      $a0, $a0, %lo(D_800ABDD0)
/* 20088 8001F488 904E0008 */  lbu        $t6, 8($v0)
/* 2008C 8001F48C 3C18FA00 */  lui        $t8, 0xfa00
/* 20090 8001F490 3C09FA00 */  lui        $t1, 0xfa00
/* 20094 8001F494 15C0000C */  bnez       $t6, .L8001F4C8
/* 20098 8001F498 3C020101 */   lui       $v0, 0x101
/* 2009C 8001F49C 3C04800B */  lui        $a0, %hi(D_800ABDD0)
/* 200A0 8001F4A0 2484BDD0 */  addiu      $a0, $a0, %lo(D_800ABDD0)
/* 200A4 8001F4A4 8C830000 */  lw         $v1, ($a0)
/* 200A8 8001F4A8 2419003C */  addiu      $t9, $zero, 0x3c
/* 200AC 8001F4AC 3C020101 */  lui        $v0, 0x101
/* 200B0 8001F4B0 246F0008 */  addiu      $t7, $v1, 8
/* 200B4 8001F4B4 AC8F0000 */  sw         $t7, ($a0)
/* 200B8 8001F4B8 2442CCB0 */  addiu      $v0, $v0, -0x3350
/* 200BC 8001F4BC AC790004 */  sw         $t9, 4($v1)
/* 200C0 8001F4C0 03E00008 */  jr         $ra
/* 200C4 8001F4C4 AC780000 */   sw        $t8, ($v1)
.L8001F4C8:
/* 200C8 8001F4C8 8C830000 */  lw         $v1, ($a0)
/* 200CC 8001F4CC 3C0AB400 */  lui        $t2, 0xb400
/* 200D0 8001F4D0 354A00B4 */  ori        $t2, $t2, 0xb4
/* 200D4 8001F4D4 24680008 */  addiu      $t0, $v1, 8
/* 200D8 8001F4D8 AC880000 */  sw         $t0, ($a0)
/* 200DC 8001F4DC AC6A0004 */  sw         $t2, 4($v1)
/* 200E0 8001F4E0 AC690000 */  sw         $t1, ($v1)
/* 200E4 8001F4E4 03E00008 */  jr         $ra
/* 200E8 8001F4E8 2442CCB0 */   addiu     $v0, $v0, -0x3350
/* 200EC 8001F4EC 00000000 */  nop
