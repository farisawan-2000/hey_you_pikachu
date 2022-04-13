.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800135C0
/* 141C0 800135C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 141C4 800135C4 8FAE0030 */  lw         $t6, 0x30($sp)
/* 141C8 800135C8 AFA50024 */  sw         $a1, 0x24($sp)
/* 141CC 800135CC AFBF0014 */  sw         $ra, 0x14($sp)
/* 141D0 800135D0 AFA40020 */  sw         $a0, 0x20($sp)
/* 141D4 800135D4 01C72823 */  subu       $a1, $t6, $a3
/* 141D8 800135D8 AFA60028 */  sw         $a2, 0x28($sp)
/* 141DC 800135DC AFA5001C */  sw         $a1, 0x1c($sp)
/* 141E0 800135E0 00E02025 */  or         $a0, $a3, $zero
/* 141E4 800135E4 0C014388 */  jal        _bzero
/* 141E8 800135E8 AFA7002C */   sw        $a3, 0x2c($sp)
/* 141EC 800135EC 8FA40034 */  lw         $a0, 0x34($sp)
/* 141F0 800135F0 8FAF0038 */  lw         $t7, 0x38($sp)
/* 141F4 800135F4 01E42823 */  subu       $a1, $t7, $a0
/* 141F8 800135F8 0C014388 */  jal        _bzero
/* 141FC 800135FC AFA50018 */   sw        $a1, 0x18($sp)
/* 14200 80013600 8FA4002C */  lw         $a0, 0x2c($sp)
/* 14204 80013604 0C014E18 */  jal        osInvalICache
/* 14208 80013608 8FA5001C */   lw        $a1, 0x1c($sp)
/* 1420C 8001360C 8FA40034 */  lw         $a0, 0x34($sp)
/* 14210 80013610 0C014CD0 */  jal        osInvalDCache
/* 14214 80013614 8FA50018 */   lw        $a1, 0x18($sp)
/* 14218 80013618 8FA40020 */  lw         $a0, 0x20($sp)
/* 1421C 8001361C 8FB80024 */  lw         $t8, 0x24($sp)
/* 14220 80013620 8FA50028 */  lw         $a1, 0x28($sp)
/* 14224 80013624 0C00DEC7 */  jal        func_80037B1C
/* 14228 80013628 03043023 */   subu      $a2, $t8, $a0
/* 1422C 8001362C 8FA4003C */  lw         $a0, 0x3c($sp)
/* 14230 80013630 8FB90040 */  lw         $t9, 0x40($sp)
/* 14234 80013634 0C014388 */  jal        _bzero
/* 14238 80013638 03242823 */   subu      $a1, $t9, $a0
/* 1423C 8001363C 8FA20040 */  lw         $v0, 0x40($sp)
/* 14240 80013640 8FBF0014 */  lw         $ra, 0x14($sp)
/* 14244 80013644 2401FFF0 */  addiu      $at, $zero, -0x10
/* 14248 80013648 2442000F */  addiu      $v0, $v0, 0xf
/* 1424C 8001364C 00414024 */  and        $t0, $v0, $at
/* 14250 80013650 01001025 */  or         $v0, $t0, $zero
/* 14254 80013654 03E00008 */  jr         $ra
/* 14258 80013658 27BD0020 */   addiu     $sp, $sp, 0x20
/* 1425C 8001365C 00000000 */  nop
