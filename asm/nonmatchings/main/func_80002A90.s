glabel func_80002A90
/* 3690 80002A90 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3694 80002A94 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3698 80002A98 3C04800B */  lui        $a0, %hi(D_800AD038)
/* 369C 80002A9C 0C014710 */  jal        osContStartQuery
/* 36A0 80002AA0 2484D038 */   addiu     $a0, $a0, %lo(D_800AD038)
/* 36A4 80002AA4 3C04800B */  lui        $a0, %hi(D_800AD038)
/* 36A8 80002AA8 2484D038 */  addiu      $a0, $a0, %lo(D_800AD038)
/* 36AC 80002AAC 00002825 */  or         $a1, $zero, $zero
/* 36B0 80002AB0 0C014554 */  jal        osRecvMesg
/* 36B4 80002AB4 24060001 */   addiu     $a2, $zero, 1
/* 36B8 80002AB8 3C04800B */  lui        $a0, %hi(D_800ACE88)
/* 36BC 80002ABC 0C01472F */  jal        osContGetQuery
/* 36C0 80002AC0 2484CE88 */   addiu     $a0, $a0, %lo(D_800ACE88)
/* 36C4 80002AC4 0C000A22 */  jal        func_80002888
/* 36C8 80002AC8 00000000 */   nop
/* 36CC 80002ACC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 36D0 80002AD0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 36D4 80002AD4 03E00008 */  jr         $ra
/* 36D8 80002AD8 00000000 */   nop
