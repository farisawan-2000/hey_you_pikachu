glabel func_800007D0
/* 13D0 800007D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13D4 800007D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13D8 800007D8 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 13DC 800007DC 3C05800B */  lui        $a1, %hi(D_800ABDE0)
/* 13E0 800007E0 8CA5BDE0 */  lw         $a1, %lo(D_800ABDE0)($a1)
/* 13E4 800007E4 0C00E152 */  jal        func_80038548
/* 13E8 800007E8 24842960 */   addiu     $a0, $a0, %lo(D_800F2960)
/* 13EC 800007EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13F0 800007F0 3C01800B */  lui        $at, %hi(D_800ABDE0)
/* 13F4 800007F4 AC20BDE0 */  sw         $zero, %lo(D_800ABDE0)($at)
/* 13F8 800007F8 03E00008 */  jr         $ra
/* 13FC 800007FC 27BD0018 */   addiu     $sp, $sp, 0x18
