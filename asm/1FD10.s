.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001F110
/* 1FD10 8001F110 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1FD14 8001F114 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1FD18 8001F118 3C048009 */  lui        $a0, 0x8009
/* 1FD1C 8001F11C E7AC0020 */  swc1       $f12, 0x20($sp)
/* 1FD20 8001F120 E7AE0024 */  swc1       $f14, 0x24($sp)
/* 1FD24 8001F124 AFA60028 */  sw         $a2, 0x28($sp)
/* 1FD28 8001F128 AFA7002C */  sw         $a3, 0x2c($sp)
/* 1FD2C 8001F12C 0C002114 */  jal        func_80008450
/* 1FD30 8001F130 24848E20 */   addiu     $a0, $a0, -0x71e0
/* 1FD34 8001F134 3C01800A */  lui        $at, %hi(D_800A4804)
/* 1FD38 8001F138 C4204804 */  lwc1       $f0, %lo(D_800A4804)($at)
/* 1FD3C 8001F13C C7A20020 */  lwc1       $f2, 0x20($sp)
/* 1FD40 8001F140 C7AC0024 */  lwc1       $f12, 0x24($sp)
/* 1FD44 8001F144 C7AE0028 */  lwc1       $f14, 0x28($sp)
/* 1FD48 8001F148 AFA2001C */  sw         $v0, 0x1c($sp)
/* 1FD4C 8001F14C E4400008 */  swc1       $f0, 8($v0)
/* 1FD50 8001F150 E4400004 */  swc1       $f0, 4($v0)
/* 1FD54 8001F154 E4400000 */  swc1       $f0, ($v0)
/* 1FD58 8001F158 E4420018 */  swc1       $f2, 0x18($v0)
/* 1FD5C 8001F15C E4420044 */  swc1       $f2, 0x44($v0)
/* 1FD60 8001F160 E44C001C */  swc1       $f12, 0x1c($v0)
/* 1FD64 8001F164 E44C0048 */  swc1       $f12, 0x48($v0)
/* 1FD68 8001F168 E44E0020 */  swc1       $f14, 0x20($v0)
/* 1FD6C 8001F16C E44E004C */  swc1       $f14, 0x4c($v0)
/* 1FD70 8001F170 8FAE002C */  lw         $t6, 0x2c($sp)
/* 1FD74 8001F174 00402025 */  or         $a0, $v0, $zero
/* 1FD78 8001F178 0C00219D */  jal        func_80008674
/* 1FD7C 8001F17C A44E0034 */   sh        $t6, 0x34($v0)
/* 1FD80 8001F180 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1FD84 8001F184 8FA2001C */  lw         $v0, 0x1c($sp)
/* 1FD88 8001F188 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1FD8C 8001F18C 03E00008 */  jr         $ra
/* 1FD90 8001F190 00000000 */   nop

glabel func_8001F194
/* 1FD94 8001F194 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1FD98 8001F198 AFA40018 */  sw         $a0, 0x18($sp)
/* 1FD9C 8001F19C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1FDA0 8001F1A0 3C04800B */  lui        $a0, %hi(D_800B6C60)
/* 1FDA4 8001F1A4 3C05800A */  lui        $a1, %hi(D_800A47D8)
/* 1FDA8 8001F1A8 24A547D8 */  addiu      $a1, $a1, %lo(D_800A47D8)
/* 1FDAC 8001F1AC 0C014E38 */  jal        sprintf
/* 1FDB0 8001F1B0 24846C60 */   addiu     $a0, $a0, %lo(D_800B6C60)
/* 1FDB4 8001F1B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1FDB8 8001F1B8 3C02800B */  lui        $v0, %hi(D_800B6C60)
/* 1FDBC 8001F1BC 24426C60 */  addiu      $v0, $v0, %lo(D_800B6C60)
/* 1FDC0 8001F1C0 03E00008 */  jr         $ra
/* 1FDC4 8001F1C4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8001F1C8
/* 1FDC8 8001F1C8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1FDCC 8001F1CC AFBF0014 */  sw         $ra, 0x14($sp)
/* 1FDD0 8001F1D0 0C007A0C */  jal        func_8001E830
/* 1FDD4 8001F1D4 00000000 */   nop
/* 1FDD8 8001F1D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1FDDC 8001F1DC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1FDE0 8001F1E0 03E00008 */  jr         $ra
/* 1FDE4 8001F1E4 00000000 */   nop
/* 1FDE8 8001F1E8 00000000 */  nop
/* 1FDEC 8001F1EC 00000000 */  nop
