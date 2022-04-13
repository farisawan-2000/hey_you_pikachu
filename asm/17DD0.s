.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800171D0
/* 17DD0 800171D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 17DD4 800171D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 17DD8 800171D8 3C04800B */  lui        $a0, %hi(D_800B6930)
/* 17DDC 800171DC 3C050003 */  lui        $a1, 3
/* 17DE0 800171E0 34A52000 */  ori        $a1, $a1, 0x2000
/* 17DE4 800171E4 24846930 */  addiu      $a0, $a0, %lo(D_800B6930)
/* 17DE8 800171E8 2406001F */  addiu      $a2, $zero, 0x1f
/* 17DEC 800171EC 0C00FDC0 */  jal        func_8003F700
/* 17DF0 800171F0 24070010 */   addiu     $a3, $zero, 0x10
/* 17DF4 800171F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 17DF8 800171F8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 17DFC 800171FC 03E00008 */  jr         $ra
/* 17E00 80017200 00000000 */   nop

glabel func_80017204
/* 17E04 80017204 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 17E08 80017208 AFBF0014 */  sw         $ra, 0x14($sp)
/* 17E0C 8001720C 3C04800B */  lui        $a0, %hi(D_800B6930)
/* 17E10 80017210 0C00FDDC */  jal        func_8003F770
/* 17E14 80017214 24846930 */   addiu     $a0, $a0, %lo(D_800B6930)
/* 17E18 80017218 8FBF0014 */  lw         $ra, 0x14($sp)
/* 17E1C 8001721C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 17E20 80017220 03E00008 */  jr         $ra
/* 17E24 80017224 00000000 */   nop

glabel func_80017228
/* 17E28 80017228 3C188007 */  lui        $t8, %hi(D_80077778)
/* 17E2C 8001722C 27187778 */  addiu      $t8, $t8, %lo(D_80077778)
/* 17E30 80017230 00057880 */  sll        $t7, $a1, 2
/* 17E34 80017234 01F81021 */  addu       $v0, $t7, $t8
/* 17E38 80017238 8C430000 */  lw         $v1, ($v0)
/* 17E3C 8001723C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 17E40 80017240 8C480004 */  lw         $t0, 4($v0)
/* 17E44 80017244 3C1900B7 */  lui        $t9, 0xb7
/* 17E48 80017248 AFBF0014 */  sw         $ra, 0x14($sp)
/* 17E4C 8001724C AFA50024 */  sw         $a1, 0x24($sp)
/* 17E50 80017250 00C03825 */  or         $a3, $a2, $zero
/* 17E54 80017254 27397EB0 */  addiu      $t9, $t9, 0x7eb0
/* 17E58 80017258 AFA70028 */  sw         $a3, 0x28($sp)
/* 17E5C 8001725C 00792821 */  addu       $a1, $v1, $t9
/* 17E60 80017260 AFA30018 */  sw         $v1, 0x18($sp)
/* 17E64 80017264 0C00FE12 */  jal        func_8003F848
/* 17E68 80017268 01033023 */   subu      $a2, $t0, $v1
/* 17E6C 8001726C 8FA70028 */  lw         $a3, 0x28($sp)
/* 17E70 80017270 8FA30018 */  lw         $v1, 0x18($sp)
/* 17E74 80017274 8CE90000 */  lw         $t1, ($a3)
/* 17E78 80017278 01235023 */  subu       $t2, $t1, $v1
/* 17E7C 8001727C ACEA0000 */  sw         $t2, ($a3)
/* 17E80 80017280 8FBF0014 */  lw         $ra, 0x14($sp)
/* 17E84 80017284 27BD0020 */  addiu      $sp, $sp, 0x20
/* 17E88 80017288 03E00008 */  jr         $ra
/* 17E8C 8001728C 00000000 */   nop

glabel func_80017290
/* 17E90 80017290 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 17E94 80017294 AFBF0014 */  sw         $ra, 0x14($sp)
/* 17E98 80017298 AFA40020 */  sw         $a0, 0x20($sp)
/* 17E9C 8001729C 0C005C8A */  jal        func_80017228
/* 17EA0 800172A0 27A6001C */   addiu     $a2, $sp, 0x1c
/* 17EA4 800172A4 24010004 */  addiu      $at, $zero, 4
/* 17EA8 800172A8 54410004 */  bnel       $v0, $at, .L800172BC
/* 17EAC 800172AC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 17EB0 800172B0 0C00FED3 */  jal        func_8003FB4C
/* 17EB4 800172B4 8FA40020 */   lw        $a0, 0x20($sp)
/* 17EB8 800172B8 8FBF0014 */  lw         $ra, 0x14($sp)
.L800172BC:
/* 17EBC 800172BC 8FA2001C */  lw         $v0, 0x1c($sp)
/* 17EC0 800172C0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 17EC4 800172C4 03E00008 */  jr         $ra
/* 17EC8 800172C8 00000000 */   nop

glabel func_800172CC
/* 17ECC 800172CC 04800003 */  bltz       $a0, .L800172DC
/* 17ED0 800172D0 288100E6 */   slti      $at, $a0, 0xe6
/* 17ED4 800172D4 14200004 */  bnez       $at, .L800172E8
/* 17ED8 800172D8 00047080 */   sll       $t6, $a0, 2
.L800172DC:
/* 17EDC 800172DC 3C02800A */  lui        $v0, %hi(D_800A3624)
/* 17EE0 800172E0 03E00008 */  jr         $ra
/* 17EE4 800172E4 24423624 */   addiu     $v0, $v0, %lo(D_800A3624)
.L800172E8:
/* 17EE8 800172E8 3C028007 */  lui        $v0, %hi(D_80076CB0)
/* 17EEC 800172EC 004E1021 */  addu       $v0, $v0, $t6
/* 17EF0 800172F0 8C426CB0 */  lw         $v0, %lo(D_80076CB0)($v0)
/* 17EF4 800172F4 03E00008 */  jr         $ra
/* 17EF8 800172F8 00000000 */   nop
/* 17EFC 800172FC 00000000 */  nop
