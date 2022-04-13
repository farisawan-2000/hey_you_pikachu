glabel func_80002764
/* 3364 80002764 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 3368 80002768 AFBF001C */  sw         $ra, 0x1c($sp)
/* 336C 8000276C AFA40030 */  sw         $a0, 0x30($sp)
/* 3370 80002770 AFA50034 */  sw         $a1, 0x34($sp)
/* 3374 80002774 0C000A1F */  jal        func_8000287C
/* 3378 80002778 AFA60038 */   sw        $a2, 0x38($sp)
/* 337C 8000277C 3C05800B */  lui        $a1, %hi(D_800ACE70)
/* 3380 80002780 24A5CE70 */  addiu      $a1, $a1, %lo(D_800ACE70)
/* 3384 80002784 8FA40030 */  lw         $a0, 0x30($sp)
/* 3388 80002788 0C00FFCF */  jal        func_8003FF3C
/* 338C 8000278C 00403025 */   or        $a2, $v0, $zero
/* 3390 80002790 8FAE0034 */  lw         $t6, 0x34($sp)
/* 3394 80002794 8FAF0038 */  lw         $t7, 0x38($sp)
/* 3398 80002798 3C18800B */  lui        $t8, %hi(D_800ACE70)
/* 339C 8000279C 2718CE70 */  addiu      $t8, $t8, %lo(D_800ACE70)
/* 33A0 800027A0 3C04800B */  lui        $a0, 0x800b
/* 33A4 800027A4 3C068000 */  lui        $a2, %hi(func_80002650)
/* 33A8 800027A8 2419003C */  addiu      $t9, $zero, 0x3c
/* 33AC 800027AC AFA00024 */  sw         $zero, 0x24($sp)
/* 33B0 800027B0 AFB90014 */  sw         $t9, 0x14($sp)
/* 33B4 800027B4 24C62650 */  addiu      $a2, $a2, %lo(func_80002650)
/* 33B8 800027B8 2484C4C0 */  addiu      $a0, $a0, -0x3b40
/* 33BC 800027BC AFB80010 */  sw         $t8, 0x10($sp)
/* 33C0 800027C0 24050028 */  addiu      $a1, $zero, 0x28
/* 33C4 800027C4 27A70024 */  addiu      $a3, $sp, 0x24
/* 33C8 800027C8 AFAE0028 */  sw         $t6, 0x28($sp)
/* 33CC 800027CC 0C0142A8 */  jal        osCreateThread
/* 33D0 800027D0 AFAF002C */   sw        $t7, 0x2c($sp)
/* 33D4 800027D4 3C04800B */  lui        $a0, %hi(D_800AC4C0)
/* 33D8 800027D8 0C0142FC */  jal        osStartThread
/* 33DC 800027DC 2484C4C0 */   addiu     $a0, $a0, %lo(D_800AC4C0)
/* 33E0 800027E0 8FA80024 */  lw         $t0, 0x24($sp)
/* 33E4 800027E4 55000007 */  bnel       $t0, $zero, .L80002804
/* 33E8 800027E8 8FBF001C */   lw        $ra, 0x1c($sp)
.L800027EC:
/* 33EC 800027EC 0C0145A4 */  jal        osYieldThread
/* 33F0 800027F0 00000000 */   nop
/* 33F4 800027F4 8FA90024 */  lw         $t1, 0x24($sp)
/* 33F8 800027F8 1120FFFC */  beqz       $t1, .L800027EC
/* 33FC 800027FC 00000000 */   nop
/* 3400 80002800 8FBF001C */  lw         $ra, 0x1c($sp)
.L80002804:
/* 3404 80002804 27BD0030 */  addiu      $sp, $sp, 0x30
/* 3408 80002808 03E00008 */  jr         $ra
/* 340C 8000280C 00000000 */   nop
