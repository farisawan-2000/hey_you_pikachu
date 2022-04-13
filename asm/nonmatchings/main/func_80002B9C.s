glabel func_80002B9C
/* 379C 80002B9C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 37A0 80002BA0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 37A4 80002BA4 240E0002 */  addiu      $t6, $zero, 2
/* 37A8 80002BA8 AC8E0000 */  sw         $t6, ($a0)
/* 37AC 80002BAC AC800010 */  sw         $zero, 0x10($a0)
/* 37B0 80002BB0 0C01482C */  jal        osGetTime
/* 37B4 80002BB4 AFA40018 */   sw        $a0, 0x18($sp)
/* 37B8 80002BB8 8FA40018 */  lw         $a0, 0x18($sp)
/* 37BC 80002BBC AC820008 */  sw         $v0, 8($a0)
/* 37C0 80002BC0 AC83000C */  sw         $v1, 0xc($a0)
/* 37C4 80002BC4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 37C8 80002BC8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 37CC 80002BCC 03E00008 */  jr         $ra
/* 37D0 80002BD0 00000000 */   nop
