glabel func_80002384
/* 2F84 80002384 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2F88 80002388 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2F8C 8000238C 0C00022B */  jal        func_800008AC
/* 2F90 80002390 00000000 */   nop
/* 2F94 80002394 3C0E8009 */  lui        $t6, %hi(D_80088F18)
/* 2F98 80002398 8DCE8F18 */  lw         $t6, %lo(D_80088F18)($t6)
/* 2F9C 8000239C 3C04800B */  lui        $a0, %hi(D_800ABDD8)
/* 2FA0 800023A0 11C00005 */  beqz       $t6, .L800023B8
/* 2FA4 800023A4 00000000 */   nop
/* 2FA8 800023A8 0C0006A8 */  jal        func_80001AA0
/* 2FAC 800023AC 8C84BDD8 */   lw        $a0, %lo(D_800ABDD8)($a0)
/* 2FB0 800023B0 0C000142 */  jal        func_80000508
/* 2FB4 800023B4 00000000 */   nop
.L800023B8:
/* 2FB8 800023B8 3C07800B */  lui        $a3, %hi(D_800ABDD0)
/* 2FBC 800023BC 24E7BDD0 */  addiu      $a3, $a3, %lo(D_800ABDD0)
/* 2FC0 800023C0 8CE20000 */  lw         $v0, ($a3)
/* 2FC4 800023C4 3C18E700 */  lui        $t8, 0xe700
/* 2FC8 800023C8 3C0EE300 */  lui        $t6, 0xe300
/* 2FCC 800023CC 244F0008 */  addiu      $t7, $v0, 8
/* 2FD0 800023D0 ACEF0000 */  sw         $t7, ($a3)
/* 2FD4 800023D4 AC400004 */  sw         $zero, 4($v0)
/* 2FD8 800023D8 AC580000 */  sw         $t8, ($v0)
/* 2FDC 800023DC 8CE20000 */  lw         $v0, ($a3)
/* 2FE0 800023E0 35CE0A01 */  ori        $t6, $t6, 0xa01
/* 2FE4 800023E4 3C18FCFF */  lui        $t8, 0xfcff
/* 2FE8 800023E8 24590008 */  addiu      $t9, $v0, 8
/* 2FEC 800023EC ACF90000 */  sw         $t9, ($a3)
/* 2FF0 800023F0 AC400004 */  sw         $zero, 4($v0)
/* 2FF4 800023F4 AC4E0000 */  sw         $t6, ($v0)
/* 2FF8 800023F8 8CE20000 */  lw         $v0, ($a3)
/* 2FFC 800023FC 2419FFFF */  addiu      $t9, $zero, -1
/* 3000 80002400 3718FFFF */  ori        $t8, $t8, 0xffff
/* 3004 80002404 244F0008 */  addiu      $t7, $v0, 8
/* 3008 80002408 ACEF0000 */  sw         $t7, ($a3)
/* 300C 8000240C AC590004 */  sw         $t9, 4($v0)
/* 3010 80002410 AC580000 */  sw         $t8, ($v0)
/* 3014 80002414 8CE20000 */  lw         $v0, ($a3)
/* 3018 80002418 3C180F0A */  lui        $t8, 0xf0a
/* 301C 8000241C 3C0FE200 */  lui        $t7, 0xe200
/* 3020 80002420 244E0008 */  addiu      $t6, $v0, 8
/* 3024 80002424 ACEE0000 */  sw         $t6, ($a3)
/* 3028 80002428 35EF001C */  ori        $t7, $t7, 0x1c
/* 302C 8000242C 37184000 */  ori        $t8, $t8, 0x4000
/* 3030 80002430 AC580004 */  sw         $t8, 4($v0)
/* 3034 80002434 AC4F0000 */  sw         $t7, ($v0)
/* 3038 80002438 8CE20000 */  lw         $v0, ($a3)
/* 303C 8000243C 3C0F004F */  lui        $t7, 0x4f
/* 3040 80002440 35EFC3BC */  ori        $t7, $t7, 0xc3bc
/* 3044 80002444 24590008 */  addiu      $t9, $v0, 8
/* 3048 80002448 ACF90000 */  sw         $t9, ($a3)
/* 304C 8000244C 3C0EED00 */  lui        $t6, 0xed00
/* 3050 80002450 AC4E0000 */  sw         $t6, ($v0)
/* 3054 80002454 AC4F0004 */  sw         $t7, 4($v0)
/* 3058 80002458 8CE20000 */  lw         $v0, ($a3)
/* 305C 8000245C 3C1FF64B */  lui        $ra, 0xf64b
/* 3060 80002460 3C19004A */  lui        $t9, 0x4a
/* 3064 80002464 24580008 */  addiu      $t8, $v0, 8
/* 3068 80002468 ACF80000 */  sw         $t8, ($a3)
/* 306C 8000246C 37FF0370 */  ori        $ra, $ra, 0x370
/* 3070 80002470 3739C050 */  ori        $t9, $t9, 0xc050
/* 3074 80002474 AC590004 */  sw         $t9, 4($v0)
/* 3078 80002478 AC5F0000 */  sw         $ra, ($v0)
/* 307C 8000247C 8CE20000 */  lw         $v0, ($a3)
/* 3080 80002480 3C0F0005 */  lui        $t7, 5
/* 3084 80002484 35EF036C */  ori        $t7, $t7, 0x36c
/* 3088 80002488 244E0008 */  addiu      $t6, $v0, 8
/* 308C 8000248C ACEE0000 */  sw         $t6, ($a3)
/* 3090 80002490 3C18800B */  lui        $t8, %hi(D_800AE4C0)
/* 3094 80002494 2718E4C0 */  addiu      $t8, $t8, %lo(D_800AE4C0)
/* 3098 80002498 3C06800B */  lui        $a2, %hi(D_800ABDD4)
/* 309C 8000249C AC4F0004 */  sw         $t7, 4($v0)
/* 30A0 800024A0 AC5F0000 */  sw         $ra, ($v0)
/* 30A4 800024A4 AFB80010 */  sw         $t8, 0x10($sp)
/* 30A8 800024A8 24C6BDD4 */  addiu      $a2, $a2, %lo(D_800ABDD4)
/* 30AC 800024AC 24040001 */  addiu      $a0, $zero, 1
/* 30B0 800024B0 0C00F17B */  jal        func_8003C5EC
/* 30B4 800024B4 24050040 */   addiu     $a1, $zero, 0x40
/* 30B8 800024B8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 30BC 800024BC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 30C0 800024C0 03E00008 */  jr         $ra
/* 30C4 800024C4 00000000 */   nop
