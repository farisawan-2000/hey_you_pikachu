.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001C110
/* 1CD10 8001C110 3C01800B */  lui        $at, %hi(D_800B6990)
/* 1CD14 8001C114 3C03800B */  lui        $v1, %hi(D_800B6998)
/* 1CD18 8001C118 3C02800B */  lui        $v0, %hi(D_800B69B8)
/* 1CD1C 8001C11C 244269B8 */  addiu      $v0, $v0, %lo(D_800B69B8)
/* 1CD20 8001C120 24636998 */  addiu      $v1, $v1, %lo(D_800B6998)
/* 1CD24 8001C124 AC206990 */  sw         $zero, %lo(D_800B6990)($at)
/* 1CD28 8001C128 AC206994 */  sw         $zero, 0x6994($at)
.L8001C12C:
/* 1CD2C 8001C12C 24630010 */  addiu      $v1, $v1, 0x10
/* 1CD30 8001C130 AC60FFF4 */  sw         $zero, -0xc($v1)
/* 1CD34 8001C134 AC60FFF8 */  sw         $zero, -8($v1)
/* 1CD38 8001C138 AC60FFFC */  sw         $zero, -4($v1)
/* 1CD3C 8001C13C 1462FFFB */  bne        $v1, $v0, .L8001C12C
/* 1CD40 8001C140 AC60FFF0 */   sw        $zero, -0x10($v1)
/* 1CD44 8001C144 3C01800B */  lui        $at, %hi(D_800B69B8)
/* 1CD48 8001C148 03E00008 */  jr         $ra
/* 1CD4C 8001C14C AC2069B8 */   sw        $zero, %lo(D_800B69B8)($at)

glabel func_8001C150
/* 1CD50 8001C150 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1CD54 8001C154 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1CD58 8001C158 AFB10018 */  sw         $s1, 0x18($sp)
/* 1CD5C 8001C15C 00808825 */  or         $s1, $a0, $zero
/* 1CD60 8001C160 AFB00014 */  sw         $s0, 0x14($sp)
/* 1CD64 8001C164 AFA5002C */  sw         $a1, 0x2c($sp)
/* 1CD68 8001C168 AFA60030 */  sw         $a2, 0x30($sp)
/* 1CD6C 8001C16C 0C00208F */  jal        func_8000823C
/* 1CD70 8001C170 AFA70034 */   sw        $a3, 0x34($sp)
/* 1CD74 8001C174 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 1CD78 8001C178 00408025 */  or         $s0, $v0, $zero
/* 1CD7C 8001C17C 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 1CD80 8001C180 24050010 */  addiu      $a1, $zero, 0x10
/* 1CD84 8001C184 0C00E03D */  jal        func_800380F4
/* 1CD88 8001C188 24060040 */   addiu     $a2, $zero, 0x40
/* 1CD8C 8001C18C 00402025 */  or         $a0, $v0, $zero
/* 1CD90 8001C190 24050010 */  addiu      $a1, $zero, 0x10
/* 1CD94 8001C194 0C014388 */  jal        _bzero
/* 1CD98 8001C198 AFA20020 */   sw        $v0, 0x20($sp)
/* 1CD9C 8001C19C 8FA30020 */  lw         $v1, 0x20($sp)
/* 1CDA0 8001C1A0 8FAE0030 */  lw         $t6, 0x30($sp)
/* 1CDA4 8001C1A4 24080087 */  addiu      $t0, $zero, 0x87
/* 1CDA8 8001C1A8 02002025 */  or         $a0, $s0, $zero
/* 1CDAC 8001C1AC AC6E0004 */  sw         $t6, 4($v1)
/* 1CDB0 8001C1B0 8FAF0034 */  lw         $t7, 0x34($sp)
/* 1CDB4 8001C1B4 AC6F0008 */  sw         $t7, 8($v1)
/* 1CDB8 8001C1B8 8FB8002C */  lw         $t8, 0x2c($sp)
/* 1CDBC 8001C1BC AC780000 */  sw         $t8, ($v1)
/* 1CDC0 8001C1C0 8FB90038 */  lw         $t9, 0x38($sp)
/* 1CDC4 8001C1C4 AC79000C */  sw         $t9, 0xc($v1)
/* 1CDC8 8001C1C8 A6080034 */  sh         $t0, 0x34($s0)
/* 1CDCC 8001C1CC 0C00213A */  jal        func_800084E8
/* 1CDD0 8001C1D0 AE030054 */   sw        $v1, 0x54($s0)
/* 1CDD4 8001C1D4 0C00219D */  jal        func_80008674
/* 1CDD8 8001C1D8 00402025 */   or        $a0, $v0, $zero
/* 1CDDC 8001C1DC C6240000 */  lwc1       $f4, ($s1)
/* 1CDE0 8001C1E0 3C04800B */  lui        $a0, %hi(D_800B69B8)
/* 1CDE4 8001C1E4 248469B8 */  addiu      $a0, $a0, %lo(D_800B69B8)
/* 1CDE8 8001C1E8 E6040018 */  swc1       $f4, 0x18($s0)
/* 1CDEC 8001C1EC C6260004 */  lwc1       $f6, 4($s1)
/* 1CDF0 8001C1F0 8E090038 */  lw         $t1, 0x38($s0)
/* 1CDF4 8001C1F4 3C01800B */  lui        $at, 0x800b
/* 1CDF8 8001C1F8 E606001C */  swc1       $f6, 0x1c($s0)
/* 1CDFC 8001C1FC C6280008 */  lwc1       $f8, 8($s1)
/* 1CE00 8001C200 E6080020 */  swc1       $f8, 0x20($s0)
/* 1CE04 8001C204 C62A0000 */  lwc1       $f10, ($s1)
/* 1CE08 8001C208 E60A0044 */  swc1       $f10, 0x44($s0)
/* 1CE0C 8001C20C C6300004 */  lwc1       $f16, 4($s1)
/* 1CE10 8001C210 E6100048 */  swc1       $f16, 0x48($s0)
/* 1CE14 8001C214 C6320008 */  lwc1       $f18, 8($s1)
/* 1CE18 8001C218 E612004C */  swc1       $f18, 0x4c($s0)
/* 1CE1C 8001C21C 8C830000 */  lw         $v1, ($a0)
/* 1CE20 8001C220 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1CE24 8001C224 8FB10018 */  lw         $s1, 0x18($sp)
/* 1CE28 8001C228 00035080 */  sll        $t2, $v1, 2
/* 1CE2C 8001C22C 002A0821 */  addu       $at, $at, $t2
/* 1CE30 8001C230 8FB00014 */  lw         $s0, 0x14($sp)
/* 1CE34 8001C234 AC296990 */  sw         $t1, 0x6990($at)
/* 1CE38 8001C238 246B0001 */  addiu      $t3, $v1, 1
/* 1CE3C 8001C23C AC8B0000 */  sw         $t3, ($a0)
/* 1CE40 8001C240 03E00008 */  jr         $ra
/* 1CE44 8001C244 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8001C248
/* 1CE48 8001C248 00047080 */  sll        $t6, $a0, 2
/* 1CE4C 8001C24C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1CE50 8001C250 3C04800B */  lui        $a0, %hi(D_800B6990)
/* 1CE54 8001C254 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1CE58 8001C258 008E2021 */  addu       $a0, $a0, $t6
/* 1CE5C 8001C25C AFA5001C */  sw         $a1, 0x1c($sp)
/* 1CE60 8001C260 0C001FA3 */  jal        func_80007E8C
/* 1CE64 8001C264 8C846990 */   lw        $a0, %lo(D_800B6990)($a0)
/* 1CE68 8001C268 8C430054 */  lw         $v1, 0x54($v0)
/* 1CE6C 8001C26C 8FAF001C */  lw         $t7, 0x1c($sp)
/* 1CE70 8001C270 AC6F000C */  sw         $t7, 0xc($v1)
/* 1CE74 8001C274 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1CE78 8001C278 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1CE7C 8001C27C 03E00008 */  jr         $ra
/* 1CE80 8001C280 00000000 */   nop

glabel func_8001C284
/* 1CE84 8001C284 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1CE88 8001C288 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1CE8C 8001C28C 8C830054 */  lw         $v1, 0x54($a0)
/* 1CE90 8001C290 24010001 */  addiu      $at, $zero, 1
/* 1CE94 8001C294 8C620000 */  lw         $v0, ($v1)
/* 1CE98 8001C298 1040000A */  beqz       $v0, .L8001C2C4
/* 1CE9C 8001C29C 00000000 */   nop
/* 1CEA0 8001C2A0 10410012 */  beq        $v0, $at, .L8001C2EC
/* 1CEA4 8001C2A4 24010002 */   addiu     $at, $zero, 2
/* 1CEA8 8001C2A8 1041001A */  beq        $v0, $at, .L8001C314
/* 1CEAC 8001C2AC 3C04800B */   lui       $a0, 0x800b
/* 1CEB0 8001C2B0 24010003 */  addiu      $at, $zero, 3
/* 1CEB4 8001C2B4 10410020 */  beq        $v0, $at, .L8001C338
/* 1CEB8 8001C2B8 3C04800B */   lui       $a0, 0x800b
/* 1CEBC 8001C2BC 10000023 */  b          .L8001C34C
/* 1CEC0 8001C2C0 8FBF0014 */   lw        $ra, 0x14($sp)
.L8001C2C4:
/* 1CEC4 8001C2C4 0C043A56 */  jal        func_8010E958
/* 1CEC8 8001C2C8 8C640004 */   lw        $a0, 4($v1)
/* 1CECC 8001C2CC 3C04800B */  lui        $a0, %hi(D_800B69C0)
/* 1CED0 8001C2D0 3C05800A */  lui        $a1, %hi(D_800A38DC)
/* 1CED4 8001C2D4 24A538DC */  addiu      $a1, $a1, %lo(D_800A38DC)
/* 1CED8 8001C2D8 248469C0 */  addiu      $a0, $a0, %lo(D_800B69C0)
/* 1CEDC 8001C2DC 0C014E38 */  jal        sprintf
/* 1CEE0 8001C2E0 00403025 */   or        $a2, $v0, $zero
/* 1CEE4 8001C2E4 10000019 */  b          .L8001C34C
/* 1CEE8 8001C2E8 8FBF0014 */   lw        $ra, 0x14($sp)
.L8001C2EC:
/* 1CEEC 8001C2EC 0C043A56 */  jal        func_8010E958
/* 1CEF0 8001C2F0 8C640004 */   lw        $a0, 4($v1)
/* 1CEF4 8001C2F4 3C04800B */  lui        $a0, %hi(D_800B69C0)
/* 1CEF8 8001C2F8 3C05800A */  lui        $a1, %hi(D_800A38FC)
/* 1CEFC 8001C2FC 24A538FC */  addiu      $a1, $a1, %lo(D_800A38FC)
/* 1CF00 8001C300 248469C0 */  addiu      $a0, $a0, %lo(D_800B69C0)
/* 1CF04 8001C304 0C014E38 */  jal        sprintf
/* 1CF08 8001C308 00403025 */   or        $a2, $v0, $zero
/* 1CF0C 8001C30C 1000000F */  b          .L8001C34C
/* 1CF10 8001C310 8FBF0014 */   lw        $ra, 0x14($sp)
.L8001C314:
/* 1CF14 8001C314 8C6E0004 */  lw         $t6, 4($v1)
/* 1CF18 8001C318 3C058008 */  lui        $a1, %hi(D_80078120)
/* 1CF1C 8001C31C 248469C0 */  addiu      $a0, $a0, 0x69c0
/* 1CF20 8001C320 000E7880 */  sll        $t7, $t6, 2
/* 1CF24 8001C324 00AF2821 */  addu       $a1, $a1, $t7
/* 1CF28 8001C328 0C014E38 */  jal        sprintf
/* 1CF2C 8001C32C 8CA58120 */   lw        $a1, %lo(D_80078120)($a1)
/* 1CF30 8001C330 10000006 */  b          .L8001C34C
/* 1CF34 8001C334 8FBF0014 */   lw        $ra, 0x14($sp)
.L8001C338:
/* 1CF38 8001C338 3C058008 */  lui        $a1, %hi(D_80078120)
/* 1CF3C 8001C33C 8CA58120 */  lw         $a1, %lo(D_80078120)($a1)
/* 1CF40 8001C340 0C014E38 */  jal        sprintf
/* 1CF44 8001C344 248469C0 */   addiu     $a0, $a0, 0x69c0
/* 1CF48 8001C348 8FBF0014 */  lw         $ra, 0x14($sp)
.L8001C34C:
/* 1CF4C 8001C34C 3C02800B */  lui        $v0, %hi(D_800B69C0)
/* 1CF50 8001C350 244269C0 */  addiu      $v0, $v0, %lo(D_800B69C0)
/* 1CF54 8001C354 03E00008 */  jr         $ra
/* 1CF58 8001C358 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8001C35C
/* 1CF5C 8001C35C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1CF60 8001C360 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1CF64 8001C364 8C820054 */  lw         $v0, 0x54($a0)
/* 1CF68 8001C368 3C04800B */  lui        $a0, %hi(D_800B6A88)
/* 1CF6C 8001C36C 24846A88 */  addiu      $a0, $a0, %lo(D_800B6A88)
/* 1CF70 8001C370 8C4E000C */  lw         $t6, 0xc($v0)
/* 1CF74 8001C374 3C05800A */  lui        $a1, 0x800a
/* 1CF78 8001C378 2DC10005 */  sltiu      $at, $t6, 5
/* 1CF7C 8001C37C 10200029 */  beqz       $at, .L8001C424
/* 1CF80 8001C380 000E7080 */   sll       $t6, $t6, 2
/* 1CF84 8001C384 3C01800A */  lui        $at, %hi(D_800A39DC)
/* 1CF88 8001C388 002E0821 */  addu       $at, $at, $t6
/* 1CF8C 8001C38C 8C2E39DC */  lw         $t6, %lo(D_800A39DC)($at)
/* 1CF90 8001C390 01C00008 */  jr         $t6
/* 1CF94 8001C394 00000000 */   nop
/* 1CF98 8001C398 3C04800B */  lui        $a0, %hi(D_800B6A88)
/* 1CF9C 8001C39C 3C05800A */  lui        $a1, %hi(D_800A391C)
/* 1CFA0 8001C3A0 24A5391C */  addiu      $a1, $a1, %lo(D_800A391C)
/* 1CFA4 8001C3A4 0C014E38 */  jal        sprintf
/* 1CFA8 8001C3A8 24846A88 */   addiu     $a0, $a0, %lo(D_800B6A88)
/* 1CFAC 8001C3AC 10000020 */  b          .L8001C430
/* 1CFB0 8001C3B0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1CFB4 8001C3B4 3C04800B */  lui        $a0, %hi(D_800B6A88)
/* 1CFB8 8001C3B8 3C05800A */  lui        $a1, %hi(D_800A3934)
/* 1CFBC 8001C3BC 24A53934 */  addiu      $a1, $a1, %lo(D_800A3934)
/* 1CFC0 8001C3C0 0C014E38 */  jal        sprintf
/* 1CFC4 8001C3C4 24846A88 */   addiu     $a0, $a0, %lo(D_800B6A88)
/* 1CFC8 8001C3C8 10000019 */  b          .L8001C430
/* 1CFCC 8001C3CC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1CFD0 8001C3D0 3C04800B */  lui        $a0, %hi(D_800B6A88)
/* 1CFD4 8001C3D4 3C05800A */  lui        $a1, %hi(D_800A3944)
/* 1CFD8 8001C3D8 24A53944 */  addiu      $a1, $a1, %lo(D_800A3944)
/* 1CFDC 8001C3DC 0C014E38 */  jal        sprintf
/* 1CFE0 8001C3E0 24846A88 */   addiu     $a0, $a0, %lo(D_800B6A88)
/* 1CFE4 8001C3E4 10000012 */  b          .L8001C430
/* 1CFE8 8001C3E8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1CFEC 8001C3EC 3C04800B */  lui        $a0, %hi(D_800B6A88)
/* 1CFF0 8001C3F0 3C05800A */  lui        $a1, %hi(D_800A3964)
/* 1CFF4 8001C3F4 24A53964 */  addiu      $a1, $a1, %lo(D_800A3964)
/* 1CFF8 8001C3F8 0C014E38 */  jal        sprintf
/* 1CFFC 8001C3FC 24846A88 */   addiu     $a0, $a0, %lo(D_800B6A88)
/* 1D000 8001C400 1000000B */  b          .L8001C430
/* 1D004 8001C404 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1D008 8001C408 3C04800B */  lui        $a0, %hi(D_800B6A88)
/* 1D00C 8001C40C 3C05800A */  lui        $a1, %hi(D_800A3994)
/* 1D010 8001C410 24A53994 */  addiu      $a1, $a1, %lo(D_800A3994)
/* 1D014 8001C414 0C014E38 */  jal        sprintf
/* 1D018 8001C418 24846A88 */   addiu     $a0, $a0, %lo(D_800B6A88)
/* 1D01C 8001C41C 10000004 */  b          .L8001C430
/* 1D020 8001C420 8FBF0014 */   lw        $ra, 0x14($sp)
.L8001C424:
/* 1D024 8001C424 0C014E38 */  jal        sprintf
/* 1D028 8001C428 24A539B8 */   addiu     $a1, $a1, 0x39b8
/* 1D02C 8001C42C 8FBF0014 */  lw         $ra, 0x14($sp)
.L8001C430:
/* 1D030 8001C430 3C02800B */  lui        $v0, %hi(D_800B6A88)
/* 1D034 8001C434 24426A88 */  addiu      $v0, $v0, %lo(D_800B6A88)
/* 1D038 8001C438 03E00008 */  jr         $ra
/* 1D03C 8001C43C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8001C440
/* 1D040 8001C440 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1D044 8001C444 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D048 8001C448 0C007A0C */  jal        func_8001E830
/* 1D04C 8001C44C 00000000 */   nop
/* 1D050 8001C450 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D054 8001C454 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1D058 8001C458 03E00008 */  jr         $ra
/* 1D05C 8001C45C 00000000 */   nop

glabel func_8001C460
/* 1D060 8001C460 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1D064 8001C464 AFA40018 */  sw         $a0, 0x18($sp)
/* 1D068 8001C468 24A7000F */  addiu      $a3, $a1, 0xf
/* 1D06C 8001C46C 2401FFF0 */  addiu      $at, $zero, -0x10
/* 1D070 8001C470 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D074 8001C474 00E12824 */  and        $a1, $a3, $at
/* 1D078 8001C478 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 1D07C 8001C47C 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 1D080 8001C480 AFA5001C */  sw         $a1, 0x1c($sp)
/* 1D084 8001C484 0C00E03D */  jal        func_800380F4
/* 1D088 8001C488 24060033 */   addiu     $a2, $zero, 0x33
/* 1D08C 8001C48C 3C03800B */  lui        $v1, %hi(D_800B6B50)
/* 1D090 8001C490 24636B50 */  addiu      $v1, $v1, %lo(D_800B6B50)
/* 1D094 8001C494 3C04800B */  lui        $a0, %hi(D_800B6B58)
/* 1D098 8001C498 AC620000 */  sw         $v0, ($v1)
/* 1D09C 8001C49C 8FA6001C */  lw         $a2, 0x1c($sp)
/* 1D0A0 8001C4A0 24846B58 */  addiu      $a0, $a0, %lo(D_800B6B58)
/* 1D0A4 8001C4A4 0C00DFC0 */  jal        func_80037F00
/* 1D0A8 8001C4A8 00402825 */   or        $a1, $v0, $zero
/* 1D0AC 8001C4AC 3C04800B */  lui        $a0, %hi(D_800B6B68)
/* 1D0B0 8001C4B0 24846B68 */  addiu      $a0, $a0, %lo(D_800B6B68)
/* 1D0B4 8001C4B4 0C01059C */  jal        func_80041670
/* 1D0B8 8001C4B8 8FA50018 */   lw        $a1, 0x18($sp)
/* 1D0BC 8001C4BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D0C0 8001C4C0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1D0C4 8001C4C4 03E00008 */  jr         $ra
/* 1D0C8 8001C4C8 00000000 */   nop

glabel func_8001C4CC
/* 1D0CC 8001C4CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1D0D0 8001C4D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D0D4 8001C4D4 3C04800B */  lui        $a0, %hi(D_800B6B68)
/* 1D0D8 8001C4D8 0C0105FB */  jal        func_800417EC
/* 1D0DC 8001C4DC 24846B68 */   addiu     $a0, $a0, %lo(D_800B6B68)
/* 1D0E0 8001C4E0 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 1D0E4 8001C4E4 3C05800B */  lui        $a1, %hi(D_800B6B50)
/* 1D0E8 8001C4E8 8CA56B50 */  lw         $a1, %lo(D_800B6B50)($a1)
/* 1D0EC 8001C4EC 0C00E152 */  jal        func_80038548
/* 1D0F0 8001C4F0 24842960 */   addiu     $a0, $a0, %lo(D_800F2960)
/* 1D0F4 8001C4F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D0F8 8001C4F8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1D0FC 8001C4FC 03E00008 */  jr         $ra
/* 1D100 8001C500 00000000 */   nop

glabel func_8001C504
/* 1D104 8001C504 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1D108 8001C508 AFA40028 */  sw         $a0, 0x28($sp)
/* 1D10C 8001C50C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D110 8001C510 00A03025 */  or         $a2, $a1, $zero
/* 1D114 8001C514 24A40008 */  addiu      $a0, $a1, 8
/* 1D118 8001C518 27A5001C */  addiu      $a1, $sp, 0x1c
/* 1D11C 8001C51C 0C00E957 */  jal        func_8003A55C
/* 1D120 8001C520 AFA6002C */   sw        $a2, 0x2c($sp)
/* 1D124 8001C524 8FA6002C */  lw         $a2, 0x2c($sp)
/* 1D128 8001C528 C7A4001C */  lwc1       $f4, 0x1c($sp)
/* 1D12C 8001C52C C7B00020 */  lwc1       $f16, 0x20($sp)
/* 1D130 8001C530 80CE000B */  lb         $t6, 0xb($a2)
/* 1D134 8001C534 8FB90028 */  lw         $t9, 0x28($sp)
/* 1D138 8001C538 27A5001C */  addiu      $a1, $sp, 0x1c
/* 1D13C 8001C53C 448E3000 */  mtc1       $t6, $f6
/* 1D140 8001C540 00000000 */  nop
/* 1D144 8001C544 46803220 */  cvt.s.w    $f8, $f6
/* 1D148 8001C548 46082282 */  mul.s      $f10, $f4, $f8
/* 1D14C 8001C54C C7A80024 */  lwc1       $f8, 0x24($sp)
/* 1D150 8001C550 E7AA001C */  swc1       $f10, 0x1c($sp)
/* 1D154 8001C554 80CF000B */  lb         $t7, 0xb($a2)
/* 1D158 8001C558 448F9000 */  mtc1       $t7, $f18
/* 1D15C 8001C55C 00000000 */  nop
/* 1D160 8001C560 468091A0 */  cvt.s.w    $f6, $f18
/* 1D164 8001C564 46068102 */  mul.s      $f4, $f16, $f6
/* 1D168 8001C568 E7A40020 */  swc1       $f4, 0x20($sp)
/* 1D16C 8001C56C 80D8000B */  lb         $t8, 0xb($a2)
/* 1D170 8001C570 44985000 */  mtc1       $t8, $f10
/* 1D174 8001C574 00000000 */  nop
/* 1D178 8001C578 468054A0 */  cvt.s.w    $f18, $f10
/* 1D17C 8001C57C 46124402 */  mul.s      $f16, $f8, $f18
/* 1D180 8001C580 E7B00024 */  swc1       $f16, 0x24($sp)
/* 1D184 8001C584 0C0450EF */  jal        func_801143BC
/* 1D188 8001C588 8F240038 */   lw        $a0, 0x38($t9)
/* 1D18C 8001C58C 8FA40028 */  lw         $a0, 0x28($sp)
/* 1D190 8001C590 3C053F00 */  lui        $a1, 0x3f00
/* 1D194 8001C594 3C06447A */  lui        $a2, 0x447a
/* 1D198 8001C598 0C045369 */  jal        func_80114DA4
/* 1D19C 8001C59C 24070000 */   addiu     $a3, $zero, 0
/* 1D1A0 8001C5A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D1A4 8001C5A4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1D1A8 8001C5A8 03E00008 */  jr         $ra
/* 1D1AC 8001C5AC 00000000 */   nop

glabel func_8001C5B0
/* 1D1B0 8001C5B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1D1B4 8001C5B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D1B8 8001C5B8 90AE0006 */  lbu        $t6, 6($a1)
/* 1D1BC 8001C5BC 3C198008 */  lui        $t9, %hi(D_80078130)
/* 1D1C0 8001C5C0 000E7880 */  sll        $t7, $t6, 2
/* 1D1C4 8001C5C4 032FC821 */  addu       $t9, $t9, $t7
/* 1D1C8 8001C5C8 8F398130 */  lw         $t9, %lo(D_80078130)($t9)
/* 1D1CC 8001C5CC 0320F809 */  jalr       $t9
/* 1D1D0 8001C5D0 00000000 */   nop
/* 1D1D4 8001C5D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D1D8 8001C5D8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1D1DC 8001C5DC 03E00008 */  jr         $ra
/* 1D1E0 8001C5E0 00000000 */   nop

glabel func_8001C5E4
/* 1D1E4 8001C5E4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1D1E8 8001C5E8 AFB50028 */  sw         $s5, 0x28($sp)
/* 1D1EC 8001C5EC AFBF002C */  sw         $ra, 0x2c($sp)
/* 1D1F0 8001C5F0 AFB40024 */  sw         $s4, 0x24($sp)
/* 1D1F4 8001C5F4 AFB30020 */  sw         $s3, 0x20($sp)
/* 1D1F8 8001C5F8 AFB2001C */  sw         $s2, 0x1c($sp)
/* 1D1FC 8001C5FC AFB10018 */  sw         $s1, 0x18($sp)
/* 1D200 8001C600 AFB00014 */  sw         $s0, 0x14($sp)
/* 1D204 8001C604 8C930038 */  lw         $s3, 0x38($a0)
/* 1D208 8001C608 3C15800B */  lui        $s5, %hi(D_800B6B68)
/* 1D20C 8001C60C 26B56B68 */  addiu      $s5, $s5, %lo(D_800B6B68)
/* 1D210 8001C610 00A09025 */  or         $s2, $a1, $zero
/* 1D214 8001C614 0080A025 */  or         $s4, $a0, $zero
/* 1D218 8001C618 02A02025 */  or         $a0, $s5, $zero
/* 1D21C 8001C61C 0C01081E */  jal        func_80042078
/* 1D220 8001C620 02602825 */   or        $a1, $s3, $zero
/* 1D224 8001C624 10400016 */  beqz       $v0, .L8001C680
/* 1D228 8001C628 00408025 */   or        $s0, $v0, $zero
/* 1D22C 8001C62C 3C11800B */  lui        $s1, %hi(D_800B6B58)
/* 1D230 8001C630 26316B58 */  addiu      $s1, $s1, %lo(D_800B6B58)
.L8001C634:
/* 1D234 8001C634 12400003 */  beqz       $s2, .L8001C644
/* 1D238 8001C638 02802025 */   or        $a0, $s4, $zero
/* 1D23C 8001C63C 0240F809 */  jalr       $s2
/* 1D240 8001C640 02002825 */   or        $a1, $s0, $zero
.L8001C644:
/* 1D244 8001C644 960E0004 */  lhu        $t6, 4($s0)
/* 1D248 8001C648 02202025 */  or         $a0, $s1, $zero
/* 1D24C 8001C64C 31CF0001 */  andi       $t7, $t6, 1
/* 1D250 8001C650 51E00004 */  beql       $t7, $zero, .L8001C664
/* 1D254 8001C654 02202025 */   or        $a0, $s1, $zero
/* 1D258 8001C658 0C00E152 */  jal        func_80038548
/* 1D25C 8001C65C 8E050008 */   lw        $a1, 8($s0)
/* 1D260 8001C660 02202025 */  or         $a0, $s1, $zero
.L8001C664:
/* 1D264 8001C664 0C00E152 */  jal        func_80038548
/* 1D268 8001C668 02002825 */   or        $a1, $s0, $zero
/* 1D26C 8001C66C 02A02025 */  or         $a0, $s5, $zero
/* 1D270 8001C670 0C01082D */  jal        func_800420B4
/* 1D274 8001C674 02602825 */   or        $a1, $s3, $zero
/* 1D278 8001C678 1440FFEE */  bnez       $v0, .L8001C634
/* 1D27C 8001C67C 00408025 */   or        $s0, $v0, $zero
.L8001C680:
/* 1D280 8001C680 02A02025 */  or         $a0, $s5, $zero
/* 1D284 8001C684 0C010795 */  jal        func_80041E54
/* 1D288 8001C688 02602825 */   or        $a1, $s3, $zero
/* 1D28C 8001C68C 96980036 */  lhu        $t8, 0x36($s4)
/* 1D290 8001C690 3319F7FF */  andi       $t9, $t8, 0xf7ff
/* 1D294 8001C694 A6990036 */  sh         $t9, 0x36($s4)
/* 1D298 8001C698 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1D29C 8001C69C 8FB50028 */  lw         $s5, 0x28($sp)
/* 1D2A0 8001C6A0 8FB40024 */  lw         $s4, 0x24($sp)
/* 1D2A4 8001C6A4 8FB30020 */  lw         $s3, 0x20($sp)
/* 1D2A8 8001C6A8 8FB2001C */  lw         $s2, 0x1c($sp)
/* 1D2AC 8001C6AC 8FB10018 */  lw         $s1, 0x18($sp)
/* 1D2B0 8001C6B0 8FB00014 */  lw         $s0, 0x14($sp)
/* 1D2B4 8001C6B4 03E00008 */  jr         $ra
/* 1D2B8 8001C6B8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8001C6BC
/* 1D2BC 8001C6BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1D2C0 8001C6C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D2C4 8001C6C4 948E0034 */  lhu        $t6, 0x34($a0)
/* 1D2C8 8001C6C8 3C058008 */  lui        $a1, 0x8008
/* 1D2CC 8001C6CC 000E7880 */  sll        $t7, $t6, 2
/* 1D2D0 8001C6D0 01EE7823 */  subu       $t7, $t7, $t6
/* 1D2D4 8001C6D4 000F78C0 */  sll        $t7, $t7, 3
/* 1D2D8 8001C6D8 00AF2821 */  addu       $a1, $a1, $t7
/* 1D2DC 8001C6DC 0C007179 */  jal        func_8001C5E4
/* 1D2E0 8001C6E0 8CA58154 */   lw        $a1, -0x7eac($a1)
/* 1D2E4 8001C6E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D2E8 8001C6E8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1D2EC 8001C6EC 03E00008 */  jr         $ra
/* 1D2F0 8001C6F0 00000000 */   nop

glabel func_8001C6F4
/* 1D2F4 8001C6F4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1D2F8 8001C6F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D2FC 8001C6FC 0C007179 */  jal        func_8001C5E4
/* 1D300 8001C700 00002825 */   or        $a1, $zero, $zero
/* 1D304 8001C704 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D308 8001C708 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1D30C 8001C70C 03E00008 */  jr         $ra
/* 1D310 8001C710 00000000 */   nop

glabel func_8001C714
/* 1D314 8001C714 3C03800B */  lui        $v1, %hi(D_800B6B68)
/* 1D318 8001C718 24636B68 */  addiu      $v1, $v1, %lo(D_800B6B68)
/* 1D31C 8001C71C 8C6E0014 */  lw         $t6, 0x14($v1)
/* 1D320 8001C720 8C6F001C */  lw         $t7, 0x1c($v1)
/* 1D324 8001C724 03E00008 */  jr         $ra
/* 1D328 8001C728 01CF1023 */   subu      $v0, $t6, $t7

glabel func_8001C72C
/* 1D32C 8001C72C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1D330 8001C730 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D334 8001C734 948E0036 */  lhu        $t6, 0x36($a0)
/* 1D338 8001C738 00803825 */  or         $a3, $a0, $zero
/* 1D33C 8001C73C 35CF0800 */  ori        $t7, $t6, 0x800
/* 1D340 8001C740 A48F0036 */  sh         $t7, 0x36($a0)
/* 1D344 8001C744 3C04800B */  lui        $a0, %hi(D_800B6B68)
/* 1D348 8001C748 24846B68 */  addiu      $a0, $a0, %lo(D_800B6B68)
/* 1D34C 8001C74C 0C010695 */  jal        func_80041A54
/* 1D350 8001C750 8CE60038 */   lw        $a2, 0x38($a3)
/* 1D354 8001C754 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D358 8001C758 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1D35C 8001C75C 03E00008 */  jr         $ra
/* 1D360 8001C760 00000000 */   nop

glabel func_8001C764
/* 1D364 8001C764 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1D368 8001C768 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D36C 8001C76C AFA40018 */  sw         $a0, 0x18($sp)
/* 1D370 8001C770 AFA60020 */  sw         $a2, 0x20($sp)
/* 1D374 8001C774 8CAE0050 */  lw         $t6, 0x50($a1)
/* 1D378 8001C778 95CF0036 */  lhu        $t7, 0x36($t6)
/* 1D37C 8001C77C 31F80030 */  andi       $t8, $t7, 0x30
/* 1D380 8001C780 13000003 */  beqz       $t8, .L8001C790
/* 1D384 8001C784 00000000 */   nop
/* 1D388 8001C788 1000001A */  b          .L8001C7F4
/* 1D38C 8001C78C 00001025 */   or        $v0, $zero, $zero
.L8001C790:
/* 1D390 8001C790 0C0071C5 */  jal        func_8001C714
/* 1D394 8001C794 00000000 */   nop
/* 1D398 8001C798 1C400003 */  bgtz       $v0, .L8001C7A8
/* 1D39C 8001C79C 3C04800B */   lui       $a0, %hi(D_800B6B58)
/* 1D3A0 8001C7A0 10000014 */  b          .L8001C7F4
/* 1D3A4 8001C7A4 00001025 */   or        $v0, $zero, $zero
.L8001C7A8:
/* 1D3A8 8001C7A8 24846B58 */  addiu      $a0, $a0, %lo(D_800B6B58)
/* 1D3AC 8001C7AC 2405000C */  addiu      $a1, $zero, 0xc
/* 1D3B0 8001C7B0 0C00E03D */  jal        func_800380F4
/* 1D3B4 8001C7B4 240600C6 */   addiu     $a2, $zero, 0xc6
/* 1D3B8 8001C7B8 14400003 */  bnez       $v0, .L8001C7C8
/* 1D3BC 8001C7BC 00401825 */   or        $v1, $v0, $zero
/* 1D3C0 8001C7C0 1000000C */  b          .L8001C7F4
/* 1D3C4 8001C7C4 00001025 */   or        $v0, $zero, $zero
.L8001C7C8:
/* 1D3C8 8001C7C8 8FA40018 */  lw         $a0, 0x18($sp)
/* 1D3CC 8001C7CC 50800005 */  beql       $a0, $zero, .L8001C7E4
/* 1D3D0 8001C7D0 AC400000 */   sw        $zero, ($v0)
/* 1D3D4 8001C7D4 8C990038 */  lw         $t9, 0x38($a0)
/* 1D3D8 8001C7D8 10000002 */  b          .L8001C7E4
/* 1D3DC 8001C7DC AC590000 */   sw        $t9, ($v0)
/* 1D3E0 8001C7E0 AC400000 */  sw         $zero, ($v0)
.L8001C7E4:
/* 1D3E4 8001C7E4 93A80023 */  lbu        $t0, 0x23($sp)
/* 1D3E8 8001C7E8 A4600004 */  sh         $zero, 4($v1)
/* 1D3EC 8001C7EC 00601025 */  or         $v0, $v1, $zero
/* 1D3F0 8001C7F0 A0680006 */  sb         $t0, 6($v1)
.L8001C7F4:
/* 1D3F4 8001C7F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D3F8 8001C7F8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1D3FC 8001C7FC 03E00008 */  jr         $ra
/* 1D400 8001C800 00000000 */   nop

glabel func_8001C804
/* 1D404 8001C804 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1D408 8001C808 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1D40C 8001C80C AFA60020 */  sw         $a2, 0x20($sp)
/* 1D410 8001C810 AFA5001C */  sw         $a1, 0x1c($sp)
/* 1D414 8001C814 0C0071D9 */  jal        func_8001C764
/* 1D418 8001C818 00003025 */   or        $a2, $zero, $zero
/* 1D41C 8001C81C 10400007 */  beqz       $v0, .L8001C83C
/* 1D420 8001C820 00402825 */   or        $a1, $v0, $zero
/* 1D424 8001C824 27AE0020 */  addiu      $t6, $sp, 0x20
/* 1D428 8001C828 8DC10000 */  lw         $at, ($t6)
/* 1D42C 8001C82C A8410008 */  swl        $at, 8($v0)
/* 1D430 8001C830 B841000B */  swr        $at, 0xb($v0)
/* 1D434 8001C834 0C0071CB */  jal        func_8001C72C
/* 1D438 8001C838 8FA4001C */   lw        $a0, 0x1c($sp)
.L8001C83C:
/* 1D43C 8001C83C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1D440 8001C840 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1D444 8001C844 03E00008 */  jr         $ra
/* 1D448 8001C848 00000000 */   nop

glabel func_8001C84C
/* 1D44C 8001C84C 03E00008 */  jr         $ra
/* 1D450 8001C850 00000000 */   nop
/* 1D454 8001C854 00000000 */  nop
/* 1D458 8001C858 00000000 */  nop
/* 1D45C 8001C85C 00000000 */  nop
