.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8000C140
/* CD40 8000C140 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CD44 8000C144 AFBF0014 */  sw         $ra, 0x14($sp)
/* CD48 8000C148 3C04800B */  lui        $a0, %hi(D_800B67B0)
/* CD4C 8000C14C 3C050001 */  lui        $a1, 1
/* CD50 8000C150 34A5E000 */  ori        $a1, $a1, 0xe000
/* CD54 8000C154 248467B0 */  addiu      $a0, $a0, %lo(D_800B67B0)
/* CD58 8000C158 2406003D */  addiu      $a2, $zero, 0x3d
/* CD5C 8000C15C 0C00FDC0 */  jal        func_8003F700
/* CD60 8000C160 24070020 */   addiu     $a3, $zero, 0x20
/* CD64 8000C164 8FBF0014 */  lw         $ra, 0x14($sp)
/* CD68 8000C168 27BD0018 */  addiu      $sp, $sp, 0x18
/* CD6C 8000C16C 03E00008 */  jr         $ra
/* CD70 8000C170 00000000 */   nop

glabel func_8000C174
/* CD74 8000C174 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CD78 8000C178 AFBF0014 */  sw         $ra, 0x14($sp)
/* CD7C 8000C17C 3C04800B */  lui        $a0, %hi(D_800B67B0)
/* CD80 8000C180 0C00FDDC */  jal        func_8003F770
/* CD84 8000C184 248467B0 */   addiu     $a0, $a0, %lo(D_800B67B0)
/* CD88 8000C188 8FBF0014 */  lw         $ra, 0x14($sp)
/* CD8C 8000C18C 27BD0018 */  addiu      $sp, $sp, 0x18
/* CD90 8000C190 03E00008 */  jr         $ra
/* CD94 8000C194 00000000 */   nop

glabel func_8000C198
/* CD98 8000C198 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* CD9C 8000C19C AFBF001C */  sw         $ra, 0x1c($sp)
/* CDA0 8000C1A0 AFA50034 */  sw         $a1, 0x34($sp)
/* CDA4 8000C1A4 04A00008 */  bltz       $a1, .L8000C1C8
/* CDA8 8000C1A8 AFA60038 */   sw        $a2, 0x38($sp)
/* CDAC 8000C1AC 00041080 */  sll        $v0, $a0, 2
/* CDB0 8000C1B0 3C0F8007 */  lui        $t7, %hi(D_8006B54C)
/* CDB4 8000C1B4 01E27821 */  addu       $t7, $t7, $v0
/* CDB8 8000C1B8 8DEFB54C */  lw         $t7, %lo(D_8006B54C)($t7)
/* CDBC 8000C1BC 00AF082A */  slt        $at, $a1, $t7
/* CDC0 8000C1C0 14200002 */  bnez       $at, .L8000C1CC
/* CDC4 8000C1C4 00000000 */   nop
.L8000C1C8:
/* CDC8 8000C1C8 00041080 */  sll        $v0, $a0, 2
.L8000C1CC:
/* CDCC 8000C1CC 3C198007 */  lui        $t9, %hi(D_8006B520)
/* CDD0 8000C1D0 8FA80034 */  lw         $t0, 0x34($sp)
/* CDD4 8000C1D4 0322C821 */  addu       $t9, $t9, $v0
/* CDD8 8000C1D8 8F39B520 */  lw         $t9, %lo(D_8006B520)($t9)
/* CDDC 8000C1DC 00084900 */  sll        $t1, $t0, 4
/* CDE0 8000C1E0 8FB80038 */  lw         $t8, 0x38($sp)
/* CDE4 8000C1E4 03295021 */  addu       $t2, $t9, $t1
/* CDE8 8000C1E8 8D410000 */  lw         $at, ($t2)
/* CDEC 8000C1EC 27B90028 */  addiu      $t9, $sp, 0x28
/* CDF0 8000C1F0 27A8002C */  addiu      $t0, $sp, 0x2c
/* CDF4 8000C1F4 AF010000 */  sw         $at, ($t8)
/* CDF8 8000C1F8 8D4C0004 */  lw         $t4, 4($t2)
/* CDFC 8000C1FC AF0C0004 */  sw         $t4, 4($t8)
/* CE00 8000C200 8D410008 */  lw         $at, 8($t2)
/* CE04 8000C204 AF010008 */  sw         $at, 8($t8)
/* CE08 8000C208 8D4C000C */  lw         $t4, 0xc($t2)
/* CE0C 8000C20C AF0C000C */  sw         $t4, 0xc($t8)
/* CE10 8000C210 8FAD0038 */  lw         $t5, 0x38($sp)
/* CE14 8000C214 8DA10000 */  lw         $at, ($t5)
/* CE18 8000C218 AFA10000 */  sw         $at, ($sp)
/* CE1C 8000C21C 8DAF0004 */  lw         $t7, 4($t5)
/* CE20 8000C220 8FA40000 */  lw         $a0, ($sp)
/* CE24 8000C224 AFAF0004 */  sw         $t7, 4($sp)
/* CE28 8000C228 8DA60008 */  lw         $a2, 8($t5)
/* CE2C 8000C22C 8FA50004 */  lw         $a1, 4($sp)
/* CE30 8000C230 AFA60008 */  sw         $a2, 8($sp)
/* CE34 8000C234 8DA7000C */  lw         $a3, 0xc($t5)
/* CE38 8000C238 AFB90014 */  sw         $t9, 0x14($sp)
/* CE3C 8000C23C AFA80010 */  sw         $t0, 0x10($sp)
/* CE40 8000C240 0C0031C1 */  jal        func_8000C704
/* CE44 8000C244 AFA7000C */   sw        $a3, 0xc($sp)
/* CE48 8000C248 8FA20038 */  lw         $v0, 0x38($sp)
/* CE4C 8000C24C 8FA9002C */  lw         $t1, 0x2c($sp)
/* CE50 8000C250 AC490000 */  sw         $t1, ($v0)
/* CE54 8000C254 8FAB0028 */  lw         $t3, 0x28($sp)
/* CE58 8000C258 AC4B0004 */  sw         $t3, 4($v0)
/* CE5C 8000C25C 8FBF001C */  lw         $ra, 0x1c($sp)
/* CE60 8000C260 27BD0030 */  addiu      $sp, $sp, 0x30
/* CE64 8000C264 03E00008 */  jr         $ra
/* CE68 8000C268 00000000 */   nop

glabel func_8000C26C
/* CE6C 8000C26C 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* CE70 8000C270 AFB00038 */  sw         $s0, 0x38($sp)
/* CE74 8000C274 AFBF003C */  sw         $ra, 0x3c($sp)
/* CE78 8000C278 AFA60068 */  sw         $a2, 0x68($sp)
/* CE7C 8000C27C 8C8E0000 */  lw         $t6, ($a0)
/* CE80 8000C280 00808025 */  or         $s0, $a0, $zero
/* CE84 8000C284 00A02025 */  or         $a0, $a1, $zero
/* CE88 8000C288 00C02825 */  or         $a1, $a2, $zero
/* CE8C 8000C28C 27A6004C */  addiu      $a2, $sp, 0x4c
/* CE90 8000C290 0C003066 */  jal        func_8000C198
/* CE94 8000C294 AFAE005C */   sw        $t6, 0x5c($sp)
/* CE98 8000C298 8E020000 */  lw         $v0, ($s0)
/* CE9C 8000C29C 3C18E700 */  lui        $t8, 0xe700
/* CEA0 8000C2A0 24010002 */  addiu      $at, $zero, 2
/* CEA4 8000C2A4 244F0008 */  addiu      $t7, $v0, 8
/* CEA8 8000C2A8 AE0F0000 */  sw         $t7, ($s0)
/* CEAC 8000C2AC AC400004 */  sw         $zero, 4($v0)
/* CEB0 8000C2B0 AC580000 */  sw         $t8, ($v0)
/* CEB4 8000C2B4 93B90059 */  lbu        $t9, 0x59($sp)
/* CEB8 8000C2B8 3C09E300 */  lui        $t1, 0xe300
/* CEBC 8000C2BC 24180002 */  addiu      $t8, $zero, 2
/* CEC0 8000C2C0 17210009 */  bne        $t9, $at, .L8000C2E8
/* CEC4 8000C2C4 02002025 */   or        $a0, $s0, $zero
/* CEC8 8000C2C8 8E020000 */  lw         $v0, ($s0)
/* CECC 8000C2CC 35291001 */  ori        $t1, $t1, 0x1001
/* CED0 8000C2D0 340A8000 */  ori        $t2, $zero, 0x8000
/* CED4 8000C2D4 24480008 */  addiu      $t0, $v0, 8
/* CED8 8000C2D8 AE080000 */  sw         $t0, ($s0)
/* CEDC 8000C2DC AC4A0004 */  sw         $t2, 4($v0)
/* CEE0 8000C2E0 10000008 */  b          .L8000C304
/* CEE4 8000C2E4 AC490000 */   sw        $t1, ($v0)
.L8000C2E8:
/* CEE8 8000C2E8 8E020000 */  lw         $v0, ($s0)
/* CEEC 8000C2EC 3C0CE300 */  lui        $t4, 0xe300
/* CEF0 8000C2F0 358C1001 */  ori        $t4, $t4, 0x1001
/* CEF4 8000C2F4 244B0008 */  addiu      $t3, $v0, 8
/* CEF8 8000C2F8 AE0B0000 */  sw         $t3, ($s0)
/* CEFC 8000C2FC AC400004 */  sw         $zero, 4($v0)
/* CF00 8000C300 AC4C0000 */  sw         $t4, ($v0)
.L8000C304:
/* CF04 8000C304 93AD0058 */  lbu        $t5, 0x58($sp)
/* CF08 8000C308 97AE0054 */  lhu        $t6, 0x54($sp)
/* CF0C 8000C30C 97AF0056 */  lhu        $t7, 0x56($sp)
/* CF10 8000C310 24190002 */  addiu      $t9, $zero, 2
/* CF14 8000C314 AFB90020 */  sw         $t9, 0x20($sp)
/* CF18 8000C318 8FA5004C */  lw         $a1, 0x4c($sp)
/* CF1C 8000C31C 8FA60050 */  lw         $a2, 0x50($sp)
/* CF20 8000C320 93A70059 */  lbu        $a3, 0x59($sp)
/* CF24 8000C324 AFB8001C */  sw         $t8, 0x1c($sp)
/* CF28 8000C328 AFA00024 */  sw         $zero, 0x24($sp)
/* CF2C 8000C32C AFA00028 */  sw         $zero, 0x28($sp)
/* CF30 8000C330 AFAD0010 */  sw         $t5, 0x10($sp)
/* CF34 8000C334 AFAE0014 */  sw         $t6, 0x14($sp)
/* CF38 8000C338 0C010A10 */  jal        func_80042840
/* CF3C 8000C33C AFAF0018 */   sw        $t7, 0x18($sp)
/* CF40 8000C340 8FBF003C */  lw         $ra, 0x3c($sp)
/* CF44 8000C344 8FA2005C */  lw         $v0, 0x5c($sp)
/* CF48 8000C348 8FB00038 */  lw         $s0, 0x38($sp)
/* CF4C 8000C34C 03E00008 */  jr         $ra
/* CF50 8000C350 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_8000C354
/* CF54 8000C354 27BDFF40 */  addiu      $sp, $sp, -0xc0
/* CF58 8000C358 AFBF005C */  sw         $ra, 0x5c($sp)
/* CF5C 8000C35C AFB20058 */  sw         $s2, 0x58($sp)
/* CF60 8000C360 AFB10054 */  sw         $s1, 0x54($sp)
/* CF64 8000C364 AFB00050 */  sw         $s0, 0x50($sp)
/* CF68 8000C368 F7B80048 */  sdc1       $f24, 0x48($sp)
/* CF6C 8000C36C F7B60040 */  sdc1       $f22, 0x40($sp)
/* CF70 8000C370 F7B40038 */  sdc1       $f20, 0x38($sp)
/* CF74 8000C374 3C01800A */  lui        $at, %hi(D_800A0CBC)
/* CF78 8000C378 C4220CBC */  lwc1       $f2, %lo(D_800A0CBC)($at)
/* CF7C 8000C37C C4A0001C */  lwc1       $f0, 0x1c($a1)
/* CF80 8000C380 00A08025 */  or         $s0, $a1, $zero
/* CF84 8000C384 00C08825 */  or         $s1, $a2, $zero
/* CF88 8000C388 4602003C */  c.lt.s     $f0, $f2
/* CF8C 8000C38C 3C01800A */  lui        $at, %hi(D_800A0CC0)
/* CF90 8000C390 45020007 */  bc1fl      .L8000C3B0
/* CF94 8000C394 C6000020 */   lwc1      $f0, 0x20($s0)
/* CF98 8000C398 C4240CC0 */  lwc1       $f4, %lo(D_800A0CC0)($at)
/* CF9C 8000C39C 4600203C */  c.lt.s     $f4, $f0
/* CFA0 8000C3A0 00000000 */  nop
/* CFA4 8000C3A4 450300CF */  bc1tl      .L8000C6E4
/* CFA8 8000C3A8 8FBF005C */   lw        $ra, 0x5c($sp)
/* CFAC 8000C3AC C6000020 */  lwc1       $f0, 0x20($s0)
.L8000C3B0:
/* CFB0 8000C3B0 3C01800A */  lui        $at, 0x800a
/* CFB4 8000C3B4 3C0FDE00 */  lui        $t7, 0xde00
/* CFB8 8000C3B8 4602003C */  c.lt.s     $f0, $f2
/* CFBC 8000C3BC 00000000 */  nop
/* CFC0 8000C3C0 45020007 */  bc1fl      .L8000C3E0
/* CFC4 8000C3C4 8E220000 */   lw        $v0, ($s1)
/* CFC8 8000C3C8 C4260CC4 */  lwc1       $f6, 0xcc4($at)
/* CFCC 8000C3CC 4600303C */  c.lt.s     $f6, $f0
/* CFD0 8000C3D0 00000000 */  nop
/* CFD4 8000C3D4 450300C3 */  bc1tl      .L8000C6E4
/* CFD8 8000C3D8 8FBF005C */   lw        $ra, 0x5c($sp)
/* CFDC 8000C3DC 8E220000 */  lw         $v0, ($s1)
.L8000C3E0:
/* CFE0 8000C3E0 3C180101 */  lui        $t8, 0x101
/* CFE4 8000C3E4 2718C8C8 */  addiu      $t8, $t8, -0x3738
/* CFE8 8000C3E8 244E0008 */  addiu      $t6, $v0, 8
/* CFEC 8000C3EC AE2E0000 */  sw         $t6, ($s1)
/* CFF0 8000C3F0 AC580004 */  sw         $t8, 4($v0)
/* CFF4 8000C3F4 AC4F0000 */  sw         $t7, ($v0)
/* CFF8 8000C3F8 8E050000 */  lw         $a1, ($s0)
/* CFFC 8000C3FC 3C12E300 */  lui        $s2, 0xe300
/* D000 8000C400 36521001 */  ori        $s2, $s2, 0x1001
/* D004 8000C404 04A000A7 */  bltz       $a1, .L8000C6A4
/* D008 8000C408 3C014080 */   lui       $at, 0x4080
/* D00C 8000C40C 4481B000 */  mtc1       $at, $f22
/* D010 8000C410 3C013F00 */  lui        $at, 0x3f00
/* D014 8000C414 4481A000 */  mtc1       $at, $f20
/* D018 8000C418 4480C000 */  mtc1       $zero, $f24
/* D01C 8000C41C AFA400C0 */  sw         $a0, 0xc0($sp)
/* D020 8000C420 8FA400C0 */  lw         $a0, 0xc0($sp)
.L8000C424:
/* D024 8000C424 0C003066 */  jal        func_8000C198
/* D028 8000C428 27A600AC */   addiu     $a2, $sp, 0xac
/* D02C 8000C42C 8E220000 */  lw         $v0, ($s1)
/* D030 8000C430 3C0AE700 */  lui        $t2, 0xe700
/* D034 8000C434 24010002 */  addiu      $at, $zero, 2
/* D038 8000C438 24590008 */  addiu      $t9, $v0, 8
/* D03C 8000C43C AE390000 */  sw         $t9, ($s1)
/* D040 8000C440 AC400004 */  sw         $zero, 4($v0)
/* D044 8000C444 AC4A0000 */  sw         $t2, ($v0)
/* D048 8000C448 93AB00B9 */  lbu        $t3, 0xb9($sp)
/* D04C 8000C44C 24030001 */  addiu      $v1, $zero, 1
/* D050 8000C450 02202025 */  or         $a0, $s1, $zero
/* D054 8000C454 55610009 */  bnel       $t3, $at, .L8000C47C
/* D058 8000C458 8E220000 */   lw        $v0, ($s1)
/* D05C 8000C45C 8E220000 */  lw         $v0, ($s1)
/* D060 8000C460 340D8000 */  ori        $t5, $zero, 0x8000
/* D064 8000C464 244C0008 */  addiu      $t4, $v0, 8
/* D068 8000C468 AE2C0000 */  sw         $t4, ($s1)
/* D06C 8000C46C AC4D0004 */  sw         $t5, 4($v0)
/* D070 8000C470 10000006 */  b          .L8000C48C
/* D074 8000C474 AC520000 */   sw        $s2, ($v0)
/* D078 8000C478 8E220000 */  lw         $v0, ($s1)
.L8000C47C:
/* D07C 8000C47C 244E0008 */  addiu      $t6, $v0, 8
/* D080 8000C480 AE2E0000 */  sw         $t6, ($s1)
/* D084 8000C484 AC400004 */  sw         $zero, 4($v0)
/* D088 8000C488 AC520000 */  sw         $s2, ($v0)
.L8000C48C:
/* D08C 8000C48C 97A900B4 */  lhu        $t1, 0xb4($sp)
/* D090 8000C490 97A800B6 */  lhu        $t0, 0xb6($sp)
/* D094 8000C494 8FA500AC */  lw         $a1, 0xac($sp)
/* D098 8000C498 252FFFFF */  addiu      $t7, $t1, -1
/* D09C 8000C49C 012FC024 */  and        $t8, $t1, $t7
/* D0A0 8000C4A0 13000003 */  beqz       $t8, .L8000C4B0
/* D0A4 8000C4A4 2519FFFF */   addiu     $t9, $t0, -1
/* D0A8 8000C4A8 10000001 */  b          .L8000C4B0
/* D0AC 8000C4AC 00001825 */   or        $v1, $zero, $zero
.L8000C4B0:
/* D0B0 8000C4B0 01195024 */  and        $t2, $t0, $t9
/* D0B4 8000C4B4 11400003 */  beqz       $t2, .L8000C4C4
/* D0B8 8000C4B8 8FA600B0 */   lw        $a2, 0xb0($sp)
/* D0BC 8000C4BC 10000002 */  b          .L8000C4C8
/* D0C0 8000C4C0 00001025 */   or        $v0, $zero, $zero
.L8000C4C4:
/* D0C4 8000C4C4 24020001 */  addiu      $v0, $zero, 1
.L8000C4C8:
/* D0C8 8000C4C8 93AB00B8 */  lbu        $t3, 0xb8($sp)
/* D0CC 8000C4CC 93A700B9 */  lbu        $a3, 0xb9($sp)
/* D0D0 8000C4D0 AFA90014 */  sw         $t1, 0x14($sp)
/* D0D4 8000C4D4 AFA80018 */  sw         $t0, 0x18($sp)
/* D0D8 8000C4D8 AFA0001C */  sw         $zero, 0x1c($sp)
/* D0DC 8000C4DC AFA00020 */  sw         $zero, 0x20($sp)
/* D0E0 8000C4E0 AFA30024 */  sw         $v1, 0x24($sp)
/* D0E4 8000C4E4 AFA20028 */  sw         $v0, 0x28($sp)
/* D0E8 8000C4E8 0C010A10 */  jal        func_80042840
/* D0EC 8000C4EC AFAB0010 */   sw        $t3, 0x10($sp)
/* D0F0 8000C4F0 8E02000C */  lw         $v0, 0xc($s0)
/* D0F4 8000C4F4 97A600B4 */  lhu        $a2, 0xb4($sp)
/* D0F8 8000C4F8 97A500B6 */  lhu        $a1, 0xb6($sp)
/* D0FC 8000C4FC 04400003 */  bltz       $v0, .L8000C50C
/* D100 8000C500 00000000 */   nop
/* D104 8000C504 10000001 */  b          .L8000C50C
/* D108 8000C508 00403025 */   or        $a2, $v0, $zero
.L8000C50C:
/* D10C 8000C50C 8E020010 */  lw         $v0, 0x10($s0)
/* D110 8000C510 44864000 */  mtc1       $a2, $f8
/* D114 8000C514 04400003 */  bltz       $v0, .L8000C524
/* D118 8000C518 00000000 */   nop
/* D11C 8000C51C 10000001 */  b          .L8000C524
/* D120 8000C520 00402825 */   or        $a1, $v0, $zero
.L8000C524:
/* D124 8000C524 8E220000 */  lw         $v0, ($s1)
/* D128 8000C528 468042A0 */  cvt.s.w    $f10, $f8
/* D12C 8000C52C 3C01E400 */  lui        $at, 0xe400
/* D130 8000C530 244C0008 */  addiu      $t4, $v0, 8
/* D134 8000C534 AE2C0000 */  sw         $t4, ($s1)
/* D138 8000C538 8E0D0004 */  lw         $t5, 4($s0)
/* D13C 8000C53C C610001C */  lwc1       $f16, 0x1c($s0)
/* D140 8000C540 8E0B0008 */  lw         $t3, 8($s0)
/* D144 8000C544 448D2000 */  mtc1       $t5, $f4
/* D148 8000C548 46105482 */  mul.s      $f18, $f10, $f16
/* D14C 8000C54C 468021A0 */  cvt.s.w    $f6, $f4
/* D150 8000C550 44852000 */  mtc1       $a1, $f4
/* D154 8000C554 46123200 */  add.s      $f8, $f6, $f18
/* D158 8000C558 C6120020 */  lwc1       $f18, 0x20($s0)
/* D15C 8000C55C 468021A0 */  cvt.s.w    $f6, $f4
/* D160 8000C560 46164282 */  mul.s      $f10, $f8, $f22
/* D164 8000C564 4600540D */  trunc.w.s  $f16, $f10
/* D168 8000C568 448B5000 */  mtc1       $t3, $f10
/* D16C 8000C56C 46123202 */  mul.s      $f8, $f6, $f18
/* D170 8000C570 440F8000 */  mfc1       $t7, $f16
/* D174 8000C574 00000000 */  nop
/* D178 8000C578 31F80FFF */  andi       $t8, $t7, 0xfff
/* D17C 8000C57C 46805420 */  cvt.s.w    $f16, $f10
/* D180 8000C580 0018CB00 */  sll        $t9, $t8, 0xc
/* D184 8000C584 03215025 */  or         $t2, $t9, $at
/* D188 8000C588 3C014480 */  lui        $at, 0x4480
/* D18C 8000C58C 44815000 */  mtc1       $at, $f10
/* D190 8000C590 3C01C480 */  lui        $at, 0xc480
/* D194 8000C594 46088100 */  add.s      $f4, $f16, $f8
/* D198 8000C598 44814000 */  mtc1       $at, $f8
/* D19C 8000C59C 46162182 */  mul.s      $f6, $f4, $f22
/* D1A0 8000C5A0 4600348D */  trunc.w.s  $f18, $f6
/* D1A4 8000C5A4 440D9000 */  mfc1       $t5, $f18
/* D1A8 8000C5A8 00000000 */  nop
/* D1AC 8000C5AC 31AE0FFF */  andi       $t6, $t5, 0xfff
/* D1B0 8000C5B0 014E7825 */  or         $t7, $t2, $t6
/* D1B4 8000C5B4 AC4F0000 */  sw         $t7, ($v0)
/* D1B8 8000C5B8 8E180004 */  lw         $t8, 4($s0)
/* D1BC 8000C5BC 8E0D0008 */  lw         $t5, 8($s0)
/* D1C0 8000C5C0 0018C880 */  sll        $t9, $t8, 2
/* D1C4 8000C5C4 332B0FFF */  andi       $t3, $t9, 0xfff
/* D1C8 8000C5C8 000D5080 */  sll        $t2, $t5, 2
/* D1CC 8000C5CC 314E0FFF */  andi       $t6, $t2, 0xfff
/* D1D0 8000C5D0 000B6300 */  sll        $t4, $t3, 0xc
/* D1D4 8000C5D4 018E7825 */  or         $t7, $t4, $t6
/* D1D8 8000C5D8 AC4F0004 */  sw         $t7, 4($v0)
/* D1DC 8000C5DC 8E220000 */  lw         $v0, ($s1)
/* D1E0 8000C5E0 3C19E100 */  lui        $t9, 0xe100
/* D1E4 8000C5E4 24580008 */  addiu      $t8, $v0, 8
/* D1E8 8000C5E8 AE380000 */  sw         $t8, ($s1)
/* D1EC 8000C5EC AC590000 */  sw         $t9, ($v0)
/* D1F0 8000C5F0 8E0D0018 */  lw         $t5, 0x18($s0)
/* D1F4 8000C5F4 97AB00B6 */  lhu        $t3, 0xb6($sp)
/* D1F8 8000C5F8 016D5023 */  subu       $t2, $t3, $t5
/* D1FC 8000C5FC 8E0B0014 */  lw         $t3, 0x14($s0)
/* D200 8000C600 254CFFFF */  addiu      $t4, $t2, -1
/* D204 8000C604 000C7140 */  sll        $t6, $t4, 5
/* D208 8000C608 31CFFFFF */  andi       $t7, $t6, 0xffff
/* D20C 8000C60C 000B6D40 */  sll        $t5, $t3, 0x15
/* D210 8000C610 01AF5025 */  or         $t2, $t5, $t7
/* D214 8000C614 AC4A0004 */  sw         $t2, 4($v0)
/* D218 8000C618 8E230000 */  lw         $v1, ($s1)
/* D21C 8000C61C 3C0EF100 */  lui        $t6, 0xf100
/* D220 8000C620 246C0008 */  addiu      $t4, $v1, 8
/* D224 8000C624 AE2C0000 */  sw         $t4, ($s1)
/* D228 8000C628 AC6E0000 */  sw         $t6, ($v1)
/* D22C 8000C62C C610001C */  lwc1       $f16, 0x1c($s0)
/* D230 8000C630 46105003 */  div.s      $f0, $f10, $f16
/* D234 8000C634 4600C03E */  c.le.s     $f24, $f0
/* D238 8000C638 00000000 */  nop
/* D23C 8000C63C 45020004 */  bc1fl      .L8000C650
/* D240 8000C640 46140301 */   sub.s     $f12, $f0, $f20
/* D244 8000C644 10000002 */  b          .L8000C650
/* D248 8000C648 46140300 */   add.s     $f12, $f0, $f20
/* D24C 8000C64C 46140301 */  sub.s      $f12, $f0, $f20
.L8000C650:
/* D250 8000C650 C6040020 */  lwc1       $f4, 0x20($s0)
/* D254 8000C654 4600648D */  trunc.w.s  $f18, $f12
/* D258 8000C658 46044003 */  div.s      $f0, $f8, $f4
/* D25C 8000C65C 4600C03E */  c.le.s     $f24, $f0
/* D260 8000C660 00000000 */  nop
/* D264 8000C664 45020004 */  bc1fl      .L8000C678
/* D268 8000C668 46140081 */   sub.s     $f2, $f0, $f20
/* D26C 8000C66C 10000002 */  b          .L8000C678
/* D270 8000C670 46140080 */   add.s     $f2, $f0, $f20
/* D274 8000C674 46140081 */  sub.s      $f2, $f0, $f20
.L8000C678:
/* D278 8000C678 4600118D */  trunc.w.s  $f6, $f2
/* D27C 8000C67C 440A9000 */  mfc1       $t2, $f18
/* D280 8000C680 26100024 */  addiu      $s0, $s0, 0x24
/* D284 8000C684 44193000 */  mfc1       $t9, $f6
/* D288 8000C688 000A6400 */  sll        $t4, $t2, 0x10
/* D28C 8000C68C 332BFFFF */  andi       $t3, $t9, 0xffff
/* D290 8000C690 016C7025 */  or         $t6, $t3, $t4
/* D294 8000C694 AC6E0004 */  sw         $t6, 4($v1)
/* D298 8000C698 8E050000 */  lw         $a1, ($s0)
/* D29C 8000C69C 04A3FF61 */  bgezl      $a1, .L8000C424
/* D2A0 8000C6A0 8FA400C0 */   lw        $a0, 0xc0($sp)
.L8000C6A4:
/* D2A4 8000C6A4 8E220000 */  lw         $v0, ($s1)
/* D2A8 8000C6A8 3C19D700 */  lui        $t9, 0xd700
/* D2AC 8000C6AC 3C0D7FFF */  lui        $t5, 0x7fff
/* D2B0 8000C6B0 24580008 */  addiu      $t8, $v0, 8
/* D2B4 8000C6B4 AE380000 */  sw         $t8, ($s1)
/* D2B8 8000C6B8 AC4D0004 */  sw         $t5, 4($v0)
/* D2BC 8000C6BC AC590000 */  sw         $t9, ($v0)
/* D2C0 8000C6C0 8E220000 */  lw         $v0, ($s1)
/* D2C4 8000C6C4 3C0ADB08 */  lui        $t2, 0xdb08
/* D2C8 8000C6C8 354A0010 */  ori        $t2, $t2, 0x10
/* D2CC 8000C6CC 244F0008 */  addiu      $t7, $v0, 8
/* D2D0 8000C6D0 AE2F0000 */  sw         $t7, ($s1)
/* D2D4 8000C6D4 240B7FFF */  addiu      $t3, $zero, 0x7fff
/* D2D8 8000C6D8 AC4B0004 */  sw         $t3, 4($v0)
/* D2DC 8000C6DC AC4A0000 */  sw         $t2, ($v0)
/* D2E0 8000C6E0 8FBF005C */  lw         $ra, 0x5c($sp)
.L8000C6E4:
/* D2E4 8000C6E4 D7B40038 */  ldc1       $f20, 0x38($sp)
/* D2E8 8000C6E8 D7B60040 */  ldc1       $f22, 0x40($sp)
/* D2EC 8000C6EC D7B80048 */  ldc1       $f24, 0x48($sp)
/* D2F0 8000C6F0 8FB00050 */  lw         $s0, 0x50($sp)
/* D2F4 8000C6F4 8FB10054 */  lw         $s1, 0x54($sp)
/* D2F8 8000C6F8 8FB20058 */  lw         $s2, 0x58($sp)
/* D2FC 8000C6FC 03E00008 */  jr         $ra
/* D300 8000C700 27BD00C0 */   addiu     $sp, $sp, 0xc0

glabel func_8000C704
/* D304 8000C704 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* D308 8000C708 AFA60030 */  sw         $a2, 0x30($sp)
/* D30C 8000C70C 97A20030 */  lhu        $v0, 0x30($sp)
/* D310 8000C710 AFBF0014 */  sw         $ra, 0x14($sp)
/* D314 8000C714 AFA40028 */  sw         $a0, 0x28($sp)
/* D318 8000C718 28410011 */  slti       $at, $v0, 0x11
/* D31C 8000C71C AFA5002C */  sw         $a1, 0x2c($sp)
/* D320 8000C720 14200003 */  bnez       $at, .L8000C730
/* D324 8000C724 AFA70034 */   sw        $a3, 0x34($sp)
/* D328 8000C728 10000002 */  b          .L8000C734
/* D32C 8000C72C 00401825 */   or        $v1, $v0, $zero
.L8000C730:
/* D330 8000C730 24030010 */  addiu      $v1, $zero, 0x10
.L8000C734:
/* D334 8000C734 97B80032 */  lhu        $t8, 0x32($sp)
/* D338 8000C738 93A80034 */  lbu        $t0, 0x34($sp)
/* D33C 8000C73C 8FAE0028 */  lw         $t6, 0x28($sp)
/* D340 8000C740 00780019 */  multu      $v1, $t8
/* D344 8000C744 3C0F00D7 */  lui        $t7, 0xd7
/* D348 8000C748 25EF9490 */  addiu      $t7, $t7, -0x6b70
/* D34C 8000C74C 3C04800B */  lui        $a0, %hi(D_800B67B0)
/* D350 8000C750 248467B0 */  addiu      $a0, $a0, %lo(D_800B67B0)
/* D354 8000C754 8FA70038 */  lw         $a3, 0x38($sp)
/* D358 8000C758 01CF2821 */  addu       $a1, $t6, $t7
/* D35C 8000C75C 0000C812 */  mflo       $t9
/* D360 8000C760 01193004 */  sllv       $a2, $t9, $t0
/* D364 8000C764 00064843 */  sra        $t1, $a2, 1
/* D368 8000C768 0C00FE12 */  jal        func_8003F848
/* D36C 8000C76C 01203025 */   or        $a2, $t1, $zero
/* D370 8000C770 93AA0035 */  lbu        $t2, 0x35($sp)
/* D374 8000C774 24010002 */  addiu      $at, $zero, 2
/* D378 8000C778 00401825 */  or         $v1, $v0, $zero
/* D37C 8000C77C 11410004 */  beq        $t2, $at, .L8000C790
/* D380 8000C780 3C04800B */   lui       $a0, 0x800b
/* D384 8000C784 8FAB003C */  lw         $t3, 0x3c($sp)
/* D388 8000C788 10000013 */  b          .L8000C7D8
/* D38C 8000C78C AD600000 */   sw        $zero, ($t3)
.L8000C790:
/* D390 8000C790 8FAC002C */  lw         $t4, 0x2c($sp)
/* D394 8000C794 3C0D00D7 */  lui        $t5, 0xd7
/* D398 8000C798 25AD9490 */  addiu      $t5, $t5, -0x6b70
/* D39C 8000C79C 248467B0 */  addiu      $a0, $a0, 0x67b0
/* D3A0 8000C7A0 24060020 */  addiu      $a2, $zero, 0x20
/* D3A4 8000C7A4 8FA7003C */  lw         $a3, 0x3c($sp)
/* D3A8 8000C7A8 AFA3001C */  sw         $v1, 0x1c($sp)
/* D3AC 8000C7AC 0C00FE12 */  jal        func_8003F848
/* D3B0 8000C7B0 018D2821 */   addu      $a1, $t4, $t5
/* D3B4 8000C7B4 8FA3001C */  lw         $v1, 0x1c($sp)
/* D3B8 8000C7B8 24040004 */  addiu      $a0, $zero, 4
/* D3BC 8000C7BC 10640003 */  beq        $v1, $a0, .L8000C7CC
/* D3C0 8000C7C0 00000000 */   nop
/* D3C4 8000C7C4 54440004 */  bnel       $v0, $a0, .L8000C7D8
/* D3C8 8000C7C8 24020001 */   addiu     $v0, $zero, 1
.L8000C7CC:
/* D3CC 8000C7CC 10000002 */  b          .L8000C7D8
/* D3D0 8000C7D0 00001025 */   or        $v0, $zero, $zero
/* D3D4 8000C7D4 24020001 */  addiu      $v0, $zero, 1
.L8000C7D8:
/* D3D8 8000C7D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* D3DC 8000C7DC 27BD0028 */  addiu      $sp, $sp, 0x28
/* D3E0 8000C7E0 03E00008 */  jr         $ra
/* D3E4 8000C7E4 00000000 */   nop
/* D3E8 8000C7E8 00000000 */  nop
/* D3EC 8000C7EC 00000000 */  nop
