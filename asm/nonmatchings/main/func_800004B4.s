glabel func_800004B4
/* 10B4 800004B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10B8 800004B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10BC 800004BC 0C00DEB8 */  jal        func_80037AE0
/* 10C0 800004C0 AFA40018 */   sw        $a0, 0x18($sp)
/* 10C4 800004C4 0C00DEBA */  jal        func_80037AE8
/* 10C8 800004C8 00000000 */   nop
/* 10CC 800004CC 3C04800B */  lui        $a0, %hi(D_800A9000)
/* 10D0 800004D0 0C003010 */  jal        func_8000C040
/* 10D4 800004D4 24849000 */   addiu     $a0, $a0, %lo(D_800A9000)
/* 10D8 800004D8 00002025 */  or         $a0, $zero, $zero
/* 10DC 800004DC 0C014350 */  jal        osSetThreadPri
/* 10E0 800004E0 00002825 */   or        $a1, $zero, $zero
.L800004E4:
/* 10E4 800004E4 1000FFFF */  b          .L800004E4
/* 10E8 800004E8 00000000 */   nop
/* 10EC 800004EC 00000000 */  nop
/* 10F0 800004F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10F4 800004F4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 10F8 800004F8 03E00008 */  jr         $ra
/* 10FC 800004FC 00000000 */   nop
