.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel sqrt
/* 49B50 80048F50 03E00008 */  jr         $ra
/* 49B54 80048F54 46206004 */   sqrt.d    $f0, $f12
/* 49B58 80048F58 00000000 */  nop
/* 49B5C 80048F5C 00000000 */  nop
