glabel main
/* 1050 80000450 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1054 80000454 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1058 80000458 0C0141A7 */  jal        __osInitialize_common
/* 105C 8000045C 00000000 */   nop
/* 1060 80000460 0C014254 */  jal        osAiSetFrequency
/* 1064 80000464 24042710 */   addiu     $a0, $zero, 0x2710
/* 1068 80000468 3C0E800B */  lui        $t6, %hi(D_800A9DE8)
/* 106C 8000046C 25CE9DE8 */  addiu      $t6, $t6, %lo(D_800A9DE8)
/* 1070 80000470 3C04800B */  lui        $a0, %hi(gIdleThread)
/* 1074 80000474 3C068000 */  lui        $a2, %hi(IdleMain)
/* 1078 80000478 240F000A */  addiu      $t7, $zero, 0xa
/* 107C 8000047C AFAF0014 */  sw         $t7, 0x14($sp)
/* 1080 80000480 24C604B4 */  addiu      $a2, $a2, %lo(IdleMain)
/* 1084 80000484 24849688 */  addiu      $a0, $a0, %lo(gIdleThread)
/* 1088 80000488 AFAE0010 */  sw         $t6, 0x10($sp)
/* 108C 8000048C 2405000A */  addiu      $a1, $zero, 0xa
/* 1090 80000490 0C0142A8 */  jal        osCreateThread
/* 1094 80000494 00003825 */   or        $a3, $zero, $zero
/* 1098 80000498 3C04800B */  lui        $a0, %hi(gIdleThread)
/* 109C 8000049C 0C0142FC */  jal        osStartThread
/* 10A0 800004A0 24849688 */   addiu     $a0, $a0, %lo(gIdleThread)
/* 10A4 800004A4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 10A8 800004A8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 10AC 800004AC 03E00008 */  jr         $ra
/* 10B0 800004B0 00000000 */   nop
