glabel func_800024C8
/* 30C8 800024C8 AFA40000 */  sw         $a0, ($sp)
/* 30CC 800024CC 8FA40014 */  lw         $a0, 0x14($sp)
/* 30D0 800024D0 AFA50004 */  sw         $a1, 4($sp)
/* 30D4 800024D4 AFA60008 */  sw         $a2, 8($sp)
/* 30D8 800024D8 AFA7000C */  sw         $a3, 0xc($sp)
/* 30DC 800024DC C4800008 */  lwc1       $f0, 8($a0)
/* 30E0 800024E0 C7A40004 */  lwc1       $f4, 4($sp)
/* 30E4 800024E4 C7A60000 */  lwc1       $f6, ($sp)
/* 30E8 800024E8 46000007 */  neg.s      $f0, $f0
/* 30EC 800024EC 4600203C */  c.lt.s     $f4, $f0
/* 30F0 800024F0 00000000 */  nop
/* 30F4 800024F4 45010005 */  bc1t       .L8000250C
/* 30F8 800024F8 00000000 */   nop
/* 30FC 800024FC 4606003C */  c.lt.s     $f0, $f6
/* 3100 80002500 C7AA0008 */  lwc1       $f10, 8($sp)
/* 3104 80002504 45020004 */  bc1fl      .L80002518
/* 3108 80002508 C4880000 */   lwc1      $f8, ($a0)
.L8000250C:
/* 310C 8000250C 03E00008 */  jr         $ra
/* 3110 80002510 00001025 */   or        $v0, $zero, $zero
/* 3114 80002514 C4880000 */  lwc1       $f8, ($a0)
.L80002518:
/* 3118 80002518 C7A40010 */  lwc1       $f4, 0x10($sp)
/* 311C 8000251C C4900004 */  lwc1       $f16, 4($a0)
/* 3120 80002520 460A4082 */  mul.s      $f2, $f8, $f10
/* 3124 80002524 46040000 */  add.s      $f0, $f0, $f4
/* 3128 80002528 C7B2000C */  lwc1       $f18, 0xc($sp)
/* 312C 8000252C 00001025 */  or         $v0, $zero, $zero
/* 3130 80002530 46128302 */  mul.s      $f12, $f16, $f18
/* 3134 80002534 4600103C */  c.lt.s     $f2, $f0
/* 3138 80002538 00000000 */  nop
/* 313C 8000253C 45000011 */  bc1f       .L80002584
/* 3140 80002540 00000000 */   nop
/* 3144 80002544 46001187 */  neg.s      $f6, $f2
/* 3148 80002548 4600303C */  c.lt.s     $f6, $f0
/* 314C 8000254C 00000000 */  nop
/* 3150 80002550 4500000C */  bc1f       .L80002584
/* 3154 80002554 00000000 */   nop
/* 3158 80002558 4600603C */  c.lt.s     $f12, $f0
/* 315C 8000255C 00000000 */  nop
/* 3160 80002560 45000008 */  bc1f       .L80002584
/* 3164 80002564 00000000 */   nop
/* 3168 80002568 46006207 */  neg.s      $f8, $f12
/* 316C 8000256C 4600403C */  c.lt.s     $f8, $f0
/* 3170 80002570 00000000 */  nop
/* 3174 80002574 45000003 */  bc1f       .L80002584
/* 3178 80002578 00000000 */   nop
/* 317C 8000257C 03E00008 */  jr         $ra
/* 3180 80002580 24020001 */   addiu     $v0, $zero, 1
.L80002584:
/* 3184 80002584 03E00008 */  jr         $ra
/* 3188 80002588 00000000 */   nop
