glabel func_8000159C
/* 219C 8000159C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 21A0 800015A0 3C0E800B */  lui        $t6, %hi(D_800ABDB8)
/* 21A4 800015A4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 21A8 800015A8 25CEBDB8 */  addiu      $t6, $t6, %lo(D_800ABDB8)
/* 21AC 800015AC 0C000518 */  jal        func_80001460
/* 21B0 800015B0 AFAE0010 */   sw        $t6, 0x10($sp)
/* 21B4 800015B4 3C05800B */  lui        $a1, %hi(D_800ABDC0)
/* 21B8 800015B8 24A5BDC0 */  addiu      $a1, $a1, %lo(D_800ABDC0)
/* 21BC 800015BC 0C00053A */  jal        func_800014E8
/* 21C0 800015C0 C7AC0030 */   lwc1      $f12, 0x30($sp)
/* 21C4 800015C4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 21C8 800015C8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 21CC 800015CC 03E00008 */  jr         $ra
/* 21D0 800015D0 00000000 */   nop
