glabel func_80002E94
/* 3A94 80002E94 00047080 */  sll        $t6, $a0, 2
/* 3A98 80002E98 01C47021 */  addu       $t6, $t6, $a0
/* 3A9C 80002E9C 00047880 */  sll        $t7, $a0, 2
/* 3AA0 80002EA0 000E70C0 */  sll        $t6, $t6, 3
/* 3AA4 80002EA4 3C01800B */  lui        $at, 0x800b
/* 3AA8 80002EA8 01E47823 */  subu       $t7, $t7, $a0
/* 3AAC 80002EAC 3C18800B */  lui        $t8, %hi(D_800AD0E0)
/* 3AB0 80002EB0 002E0821 */  addu       $at, $at, $t6
/* 3AB4 80002EB4 2718D0E0 */  addiu      $t8, $t8, %lo(D_800AD0E0)
/* 3AB8 80002EB8 000F78C0 */  sll        $t7, $t7, 3
/* 3ABC 80002EBC AC20D140 */  sw         $zero, -0x2ec0($at)
/* 3AC0 80002EC0 01F81021 */  addu       $v0, $t7, $t8
/* 3AC4 80002EC4 24190004 */  addiu      $t9, $zero, 4
/* 3AC8 80002EC8 AC590000 */  sw         $t9, ($v0)
/* 3ACC 80002ECC 03E00008 */  jr         $ra
/* 3AD0 80002ED0 AC400010 */   sw        $zero, 0x10($v0)
