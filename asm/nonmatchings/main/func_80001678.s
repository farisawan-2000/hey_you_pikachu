glabel func_80001678
/* 2278 80001678 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 227C 8000167C 3C0E800B */  lui        $t6, %hi(D_800ABDC4)
/* 2280 80001680 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2284 80001684 25CEBDC4 */  addiu      $t6, $t6, %lo(D_800ABDC4)
/* 2288 80001688 0C000518 */  jal        func_80001460
/* 228C 8000168C AFAE0010 */   sw        $t6, 0x10($sp)
/* 2290 80001690 3C05800B */  lui        $a1, %hi(D_800ABDCC)
/* 2294 80001694 24A5BDCC */  addiu      $a1, $a1, %lo(D_800ABDCC)
/* 2298 80001698 0C00053A */  jal        func_800014E8
/* 229C 8000169C C7AC0030 */   lwc1      $f12, 0x30($sp)
/* 22A0 800016A0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 22A4 800016A4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 22A8 800016A8 03E00008 */  jr         $ra
/* 22AC 800016AC 00000000 */   nop
