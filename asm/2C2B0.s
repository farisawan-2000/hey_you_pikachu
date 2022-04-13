.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8002B6B0
/* 2C2B0 8002B6B0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2C2B4 8002B6B4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 2C2B8 8002B6B8 3C04800F */  lui        $a0, %hi(D_800F1080)
/* 2C2BC 8002B6BC AFB30020 */  sw         $s3, 0x20($sp)
/* 2C2C0 8002B6C0 AFB2001C */  sw         $s2, 0x1c($sp)
/* 2C2C4 8002B6C4 AFB10018 */  sw         $s1, 0x18($sp)
/* 2C2C8 8002B6C8 AFB00014 */  sw         $s0, 0x14($sp)
/* 2C2CC 8002B6CC 24841080 */  addiu      $a0, $a0, %lo(D_800F1080)
/* 2C2D0 8002B6D0 0C014388 */  jal        _bzero
/* 2C2D4 8002B6D4 24050028 */   addiu     $a1, $zero, 0x28
/* 2C2D8 8002B6D8 3C04800F */  lui        $a0, %hi(D_800F10B0)
/* 2C2DC 8002B6DC 248410B0 */  addiu      $a0, $a0, %lo(D_800F10B0)
/* 2C2E0 8002B6E0 0C014388 */  jal        _bzero
/* 2C2E4 8002B6E4 240509C4 */   addiu     $a1, $zero, 0x9c4
/* 2C2E8 8002B6E8 3C01800F */  lui        $at, %hi(D_800F10A8)
/* 2C2EC 8002B6EC AC2010A8 */  sw         $zero, %lo(D_800F10A8)($at)
/* 2C2F0 8002B6F0 3C01800F */  lui        $at, %hi(D_800F1AB4)
/* 2C2F4 8002B6F4 AC201AB4 */  sw         $zero, %lo(D_800F1AB4)($at)
/* 2C2F8 8002B6F8 24030001 */  addiu      $v1, $zero, 1
/* 2C2FC 8002B6FC 3C01800F */  lui        $at, %hi(D_800F1AB8)
/* 2C300 8002B700 AC231AB8 */  sw         $v1, %lo(D_800F1AB8)($at)
/* 2C304 8002B704 3C01800F */  lui        $at, %hi(D_800F1A80)
/* 2C308 8002B708 AC201A80 */  sw         $zero, %lo(D_800F1A80)($at)
/* 2C30C 8002B70C 3C01800F */  lui        $at, %hi(D_800F1ABC)
/* 2C310 8002B710 AC201ABC */  sw         $zero, %lo(D_800F1ABC)($at)
/* 2C314 8002B714 3C01800F */  lui        $at, %hi(D_800F1A74)
/* 2C318 8002B718 AC201A74 */  sw         $zero, %lo(D_800F1A74)($at)
/* 2C31C 8002B71C 3C01800F */  lui        $at, %hi(D_800F1A78)
/* 2C320 8002B720 AC201A78 */  sw         $zero, %lo(D_800F1A78)($at)
/* 2C324 8002B724 3C01800F */  lui        $at, %hi(D_800F1A7C)
/* 2C328 8002B728 AC231A7C */  sw         $v1, %lo(D_800F1A7C)($at)
/* 2C32C 8002B72C 3C01800F */  lui        $at, 0x800f
/* 2C330 8002B730 240E0004 */  addiu      $t6, $zero, 4
/* 2C334 8002B734 3C11800F */  lui        $s1, 0x800f
/* 2C338 8002B738 3C10800A */  lui        $s0, 0x800a
/* 2C33C 8002B73C 3C13800A */  lui        $s3, %hi(D_80099DBC)
/* 2C340 8002B740 3C128007 */  lui        $s2, %hi(D_8006B090)
/* 2C344 8002B744 AC2E1AC0 */  sw         $t6, 0x1ac0($at)
/* 2C348 8002B748 2652B090 */  addiu      $s2, $s2, %lo(D_8006B090)
/* 2C34C 8002B74C 26739DBC */  addiu      $s3, $s3, %lo(D_80099DBC)
/* 2C350 8002B750 26109DA4 */  addiu      $s0, $s0, -0x625c
/* 2C354 8002B754 26311AD4 */  addiu      $s1, $s1, 0x1ad4
.L8002B758:
/* 2C358 8002B758 8E0F0000 */  lw         $t7, ($s0)
/* 2C35C 8002B75C 02202025 */  or         $a0, $s1, $zero
/* 2C360 8002B760 000FC080 */  sll        $t8, $t7, 2
/* 2C364 8002B764 0258C821 */  addu       $t9, $s2, $t8
/* 2C368 8002B768 0C002973 */  jal        func_8000A5CC
/* 2C36C 8002B76C 8F250000 */   lw        $a1, ($t9)
/* 2C370 8002B770 26100004 */  addiu      $s0, $s0, 4
/* 2C374 8002B774 1613FFF8 */  bne        $s0, $s3, .L8002B758
/* 2C378 8002B778 2631000C */   addiu     $s1, $s1, 0xc
/* 2C37C 8002B77C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 2C380 8002B780 8FB00014 */  lw         $s0, 0x14($sp)
/* 2C384 8002B784 8FB10018 */  lw         $s1, 0x18($sp)
/* 2C388 8002B788 8FB2001C */  lw         $s2, 0x1c($sp)
/* 2C38C 8002B78C 8FB30020 */  lw         $s3, 0x20($sp)
/* 2C390 8002B790 03E00008 */  jr         $ra
/* 2C394 8002B794 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002B798
/* 2C398 8002B798 3C03800F */  lui        $v1, %hi(D_800F1AB4)
/* 2C39C 8002B79C 24631AB4 */  addiu      $v1, $v1, %lo(D_800F1AB4)
/* 2C3A0 8002B7A0 8C620000 */  lw         $v0, ($v1)
/* 2C3A4 8002B7A4 3C01800F */  lui        $at, %hi(D_800F1A88)
/* 2C3A8 8002B7A8 3C05800F */  lui        $a1, 0x800f
/* 2C3AC 8002B7AC 00027080 */  sll        $t6, $v0, 2
/* 2C3B0 8002B7B0 002E0821 */  addu       $at, $at, $t6
/* 2C3B4 8002B7B4 244F0001 */  addiu      $t7, $v0, 1
/* 2C3B8 8002B7B8 AC241A88 */  sw         $a0, %lo(D_800F1A88)($at)
/* 2C3BC 8002B7BC AC6F0000 */  sw         $t7, ($v1)
/* 2C3C0 8002B7C0 05E10005 */  bgez       $t7, .L8002B7D8
/* 2C3C4 8002B7C4 01E01025 */   or        $v0, $t7, $zero
.L8002B7C8:
/* 2C3C8 8002B7C8 2458000B */  addiu      $t8, $v0, 0xb
/* 2C3CC 8002B7CC AC780000 */  sw         $t8, ($v1)
/* 2C3D0 8002B7D0 0700FFFD */  bltz       $t8, .L8002B7C8
/* 2C3D4 8002B7D4 03001025 */   or        $v0, $t8, $zero
.L8002B7D8:
/* 2C3D8 8002B7D8 2841000B */  slti       $at, $v0, 0xb
/* 2C3DC 8002B7DC 14200006 */  bnez       $at, .L8002B7F8
/* 2C3E0 8002B7E0 24A51AB8 */   addiu     $a1, $a1, 0x1ab8
.L8002B7E4:
/* 2C3E4 8002B7E4 2459FFF5 */  addiu      $t9, $v0, -0xb
/* 2C3E8 8002B7E8 2B21000B */  slti       $at, $t9, 0xb
/* 2C3EC 8002B7EC AC790000 */  sw         $t9, ($v1)
/* 2C3F0 8002B7F0 1020FFFC */  beqz       $at, .L8002B7E4
/* 2C3F4 8002B7F4 03201025 */   or        $v0, $t9, $zero
.L8002B7F8:
/* 2C3F8 8002B7F8 8CA30000 */  lw         $v1, ($a1)
/* 2C3FC 8002B7FC 1462000F */  bne        $v1, $v0, .L8002B83C
/* 2C400 8002B800 24680001 */   addiu     $t0, $v1, 1
/* 2C404 8002B804 ACA80000 */  sw         $t0, ($a1)
/* 2C408 8002B808 05010005 */  bgez       $t0, .L8002B820
/* 2C40C 8002B80C 01001825 */   or        $v1, $t0, $zero
.L8002B810:
/* 2C410 8002B810 2469000B */  addiu      $t1, $v1, 0xb
/* 2C414 8002B814 ACA90000 */  sw         $t1, ($a1)
/* 2C418 8002B818 0520FFFD */  bltz       $t1, .L8002B810
/* 2C41C 8002B81C 01201825 */   or        $v1, $t1, $zero
.L8002B820:
/* 2C420 8002B820 2861000B */  slti       $at, $v1, 0xb
/* 2C424 8002B824 14200005 */  bnez       $at, .L8002B83C
.L8002B828:
/* 2C428 8002B828 246AFFF5 */   addiu     $t2, $v1, -0xb
/* 2C42C 8002B82C 2941000B */  slti       $at, $t2, 0xb
/* 2C430 8002B830 ACAA0000 */  sw         $t2, ($a1)
/* 2C434 8002B834 1020FFFC */  beqz       $at, .L8002B828
/* 2C438 8002B838 01401825 */   or        $v1, $t2, $zero
.L8002B83C:
/* 2C43C 8002B83C 03E00008 */  jr         $ra
/* 2C440 8002B840 00801025 */   or        $v0, $a0, $zero

glabel func_8002B844
/* 2C444 8002B844 3C02800F */  lui        $v0, %hi(D_800F1AB4)
/* 2C448 8002B848 24421AB4 */  addiu      $v0, $v0, %lo(D_800F1AB4)
/* 2C44C 8002B84C 8C4E0000 */  lw         $t6, ($v0)
/* 2C450 8002B850 3C08800F */  lui        $t0, 0x800f
/* 2C454 8002B854 25C3FFFF */  addiu      $v1, $t6, -1
/* 2C458 8002B858 04610005 */  bgez       $v1, .L8002B870
/* 2C45C 8002B85C AC430000 */   sw        $v1, ($v0)
.L8002B860:
/* 2C460 8002B860 2478000B */  addiu      $t8, $v1, 0xb
/* 2C464 8002B864 AC580000 */  sw         $t8, ($v0)
/* 2C468 8002B868 0700FFFD */  bltz       $t8, .L8002B860
/* 2C46C 8002B86C 03001825 */   or        $v1, $t8, $zero
.L8002B870:
/* 2C470 8002B870 2861000B */  slti       $at, $v1, 0xb
/* 2C474 8002B874 14200005 */  bnez       $at, .L8002B88C
.L8002B878:
/* 2C478 8002B878 2479FFF5 */   addiu     $t9, $v1, -0xb
/* 2C47C 8002B87C 2B21000B */  slti       $at, $t9, 0xb
/* 2C480 8002B880 AC590000 */  sw         $t9, ($v0)
/* 2C484 8002B884 1020FFFC */  beqz       $at, .L8002B878
/* 2C488 8002B888 03201825 */   or        $v1, $t9, $zero
.L8002B88C:
/* 2C48C 8002B88C 8D081AB8 */  lw         $t0, 0x1ab8($t0)
/* 2C490 8002B890 24690001 */  addiu      $t1, $v1, 1
/* 2C494 8002B894 55030010 */  bnel       $t0, $v1, .L8002B8D8
/* 2C498 8002B898 00036080 */   sll       $t4, $v1, 2
/* 2C49C 8002B89C AC490000 */  sw         $t1, ($v0)
/* 2C4A0 8002B8A0 05210005 */  bgez       $t1, .L8002B8B8
/* 2C4A4 8002B8A4 01201825 */   or        $v1, $t1, $zero
.L8002B8A8:
/* 2C4A8 8002B8A8 246A000B */  addiu      $t2, $v1, 0xb
/* 2C4AC 8002B8AC AC4A0000 */  sw         $t2, ($v0)
/* 2C4B0 8002B8B0 0540FFFD */  bltz       $t2, .L8002B8A8
/* 2C4B4 8002B8B4 01401825 */   or        $v1, $t2, $zero
.L8002B8B8:
/* 2C4B8 8002B8B8 2861000B */  slti       $at, $v1, 0xb
/* 2C4BC 8002B8BC 14200005 */  bnez       $at, .L8002B8D4
.L8002B8C0:
/* 2C4C0 8002B8C0 246BFFF5 */   addiu     $t3, $v1, -0xb
/* 2C4C4 8002B8C4 2961000B */  slti       $at, $t3, 0xb
/* 2C4C8 8002B8C8 AC4B0000 */  sw         $t3, ($v0)
/* 2C4CC 8002B8CC 1020FFFC */  beqz       $at, .L8002B8C0
/* 2C4D0 8002B8D0 01601825 */   or        $v1, $t3, $zero
.L8002B8D4:
/* 2C4D4 8002B8D4 00036080 */  sll        $t4, $v1, 2
.L8002B8D8:
/* 2C4D8 8002B8D8 3C02800F */  lui        $v0, %hi(D_800F1A88)
/* 2C4DC 8002B8DC 004C1021 */  addu       $v0, $v0, $t4
/* 2C4E0 8002B8E0 03E00008 */  jr         $ra
/* 2C4E4 8002B8E4 8C421A88 */   lw        $v0, %lo(D_800F1A88)($v0)

glabel func_8002B8E8
/* 2C4E8 8002B8E8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2C4EC 8002B8EC AFBF0014 */  sw         $ra, 0x14($sp)
/* 2C4F0 8002B8F0 3C01800F */  lui        $at, %hi(D_800F1AC0)
/* 2C4F4 8002B8F4 0C002C3F */  jal        func_8000B0FC
/* 2C4F8 8002B8F8 AC241AC0 */   sw        $a0, %lo(D_800F1AC0)($at)
/* 2C4FC 8002B8FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2C500 8002B900 3C01800F */  lui        $at, %hi(D_800F1AC4)
/* 2C504 8002B904 AC231AC4 */  sw         $v1, %lo(D_800F1AC4)($at)
/* 2C508 8002B908 03E00008 */  jr         $ra
/* 2C50C 8002B90C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002B910
/* 2C510 8002B910 3C0A800F */  lui        $t2, %hi(D_800F1A7C)
/* 2C514 8002B914 254A1A7C */  addiu      $t2, $t2, %lo(D_800F1A7C)
/* 2C518 8002B918 8D4E0000 */  lw         $t6, ($t2)
/* 2C51C 8002B91C 27BDFF50 */  addiu      $sp, $sp, -0xb0
/* 2C520 8002B920 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2C524 8002B924 AFA500B4 */  sw         $a1, 0xb4($sp)
/* 2C528 8002B928 11C0008B */  beqz       $t6, .L8002BB58
/* 2C52C 8002B92C 00803825 */   or        $a3, $a0, $zero
/* 2C530 8002B930 8C820000 */  lw         $v0, ($a0)
/* 2C534 8002B934 3C09E700 */  lui        $t1, 0xe700
/* 2C538 8002B938 3C19E200 */  lui        $t9, 0xe200
/* 2C53C 8002B93C 244F0008 */  addiu      $t7, $v0, 8
/* 2C540 8002B940 AC8F0000 */  sw         $t7, ($a0)
/* 2C544 8002B944 AC400004 */  sw         $zero, 4($v0)
/* 2C548 8002B948 AC490000 */  sw         $t1, ($v0)
/* 2C54C 8002B94C 8C820000 */  lw         $v0, ($a0)
/* 2C550 8002B950 3C0B0050 */  lui        $t3, 0x50
/* 2C554 8002B954 356B4240 */  ori        $t3, $t3, 0x4240
/* 2C558 8002B958 24580008 */  addiu      $t8, $v0, 8
/* 2C55C 8002B95C ACF80000 */  sw         $t8, ($a3)
/* 2C560 8002B960 3739001C */  ori        $t9, $t9, 0x1c
/* 2C564 8002B964 AC590000 */  sw         $t9, ($v0)
/* 2C568 8002B968 AC4B0004 */  sw         $t3, 4($v0)
/* 2C56C 8002B96C 8CE20000 */  lw         $v0, ($a3)
/* 2C570 8002B970 3C0DFC11 */  lui        $t5, 0xfc11
/* 2C574 8002B974 35ADFE23 */  ori        $t5, $t5, 0xfe23
/* 2C578 8002B978 244C0008 */  addiu      $t4, $v0, 8
/* 2C57C 8002B97C ACEC0000 */  sw         $t4, ($a3)
/* 2C580 8002B980 240EF7FB */  addiu      $t6, $zero, -0x805
/* 2C584 8002B984 AC4E0004 */  sw         $t6, 4($v0)
/* 2C588 8002B988 AC4D0000 */  sw         $t5, ($v0)
/* 2C58C 8002B98C 8CE20000 */  lw         $v0, ($a3)
/* 2C590 8002B990 3C18FA00 */  lui        $t8, 0xfa00
/* 2C594 8002B994 2401FF00 */  addiu      $at, $zero, -0x100
/* 2C598 8002B998 244F0008 */  addiu      $t7, $v0, 8
/* 2C59C 8002B99C ACEF0000 */  sw         $t7, ($a3)
/* 2C5A0 8002B9A0 AC580000 */  sw         $t8, ($v0)
/* 2C5A4 8002B9A4 8FB900B4 */  lw         $t9, 0xb4($sp)
/* 2C5A8 8002B9A8 3C0FE300 */  lui        $t7, 0xe300
/* 2C5AC 8002B9AC 35EF0C00 */  ori        $t7, $t7, 0xc00
/* 2C5B0 8002B9B0 332B00FF */  andi       $t3, $t9, 0xff
/* 2C5B4 8002B9B4 01616025 */  or         $t4, $t3, $at
/* 2C5B8 8002B9B8 AC4C0004 */  sw         $t4, 4($v0)
/* 2C5BC 8002B9BC 8CE20000 */  lw         $v0, ($a3)
/* 2C5C0 8002B9C0 3C19E300 */  lui        $t9, 0xe300
/* 2C5C4 8002B9C4 37390F00 */  ori        $t9, $t9, 0xf00
/* 2C5C8 8002B9C8 244D0008 */  addiu      $t5, $v0, 8
/* 2C5CC 8002B9CC ACED0000 */  sw         $t5, ($a3)
/* 2C5D0 8002B9D0 AC400004 */  sw         $zero, 4($v0)
/* 2C5D4 8002B9D4 AC490000 */  sw         $t1, ($v0)
/* 2C5D8 8002B9D8 8CE20000 */  lw         $v0, ($a3)
/* 2C5DC 8002B9DC 3C0CE300 */  lui        $t4, 0xe300
/* 2C5E0 8002B9E0 358C1201 */  ori        $t4, $t4, 0x1201
/* 2C5E4 8002B9E4 244E0008 */  addiu      $t6, $v0, 8
/* 2C5E8 8002B9E8 ACEE0000 */  sw         $t6, ($a3)
/* 2C5EC 8002B9EC AC400004 */  sw         $zero, 4($v0)
/* 2C5F0 8002B9F0 AC4F0000 */  sw         $t7, ($v0)
/* 2C5F4 8002B9F4 8CE20000 */  lw         $v0, ($a3)
/* 2C5F8 8002B9F8 240D2000 */  addiu      $t5, $zero, 0x2000
/* 2C5FC 8002B9FC 3C0FE300 */  lui        $t7, 0xe300
/* 2C600 8002BA00 24580008 */  addiu      $t8, $v0, 8
/* 2C604 8002BA04 ACF80000 */  sw         $t8, ($a3)
/* 2C608 8002BA08 AC400004 */  sw         $zero, 4($v0)
/* 2C60C 8002BA0C AC590000 */  sw         $t9, ($v0)
/* 2C610 8002BA10 8CE20000 */  lw         $v0, ($a3)
/* 2C614 8002BA14 24180C00 */  addiu      $t8, $zero, 0xc00
/* 2C618 8002BA18 35EF1402 */  ori        $t7, $t7, 0x1402
/* 2C61C 8002BA1C 244B0008 */  addiu      $t3, $v0, 8
/* 2C620 8002BA20 ACEB0000 */  sw         $t3, ($a3)
/* 2C624 8002BA24 AC4D0004 */  sw         $t5, 4($v0)
/* 2C628 8002BA28 AC4C0000 */  sw         $t4, ($v0)
/* 2C62C 8002BA2C 8CE20000 */  lw         $v0, ($a3)
/* 2C630 8002BA30 3C0BE300 */  lui        $t3, 0xe300
/* 2C634 8002BA34 356B0D01 */  ori        $t3, $t3, 0xd01
/* 2C638 8002BA38 244E0008 */  addiu      $t6, $v0, 8
/* 2C63C 8002BA3C ACEE0000 */  sw         $t6, ($a3)
/* 2C640 8002BA40 AC580004 */  sw         $t8, 4($v0)
/* 2C644 8002BA44 AC4F0000 */  sw         $t7, ($v0)
/* 2C648 8002BA48 8CE20000 */  lw         $v0, ($a3)
/* 2C64C 8002BA4C 3C0DE300 */  lui        $t5, 0xe300
/* 2C650 8002BA50 35AD1001 */  ori        $t5, $t5, 0x1001
/* 2C654 8002BA54 24590008 */  addiu      $t9, $v0, 8
/* 2C658 8002BA58 ACF90000 */  sw         $t9, ($a3)
/* 2C65C 8002BA5C AC400004 */  sw         $zero, 4($v0)
/* 2C660 8002BA60 AC4B0000 */  sw         $t3, ($v0)
/* 2C664 8002BA64 8CE20000 */  lw         $v0, ($a3)
/* 2C668 8002BA68 340E8000 */  ori        $t6, $zero, 0x8000
/* 2C66C 8002BA6C 3C18D700 */  lui        $t8, 0xd700
/* 2C670 8002BA70 244C0008 */  addiu      $t4, $v0, 8
/* 2C674 8002BA74 ACEC0000 */  sw         $t4, ($a3)
/* 2C678 8002BA78 AC4E0004 */  sw         $t6, 4($v0)
/* 2C67C 8002BA7C AC4D0000 */  sw         $t5, ($v0)
/* 2C680 8002BA80 8CE20000 */  lw         $v0, ($a3)
/* 2C684 8002BA84 37180002 */  ori        $t8, $t8, 2
/* 2C688 8002BA88 3C197FFF */  lui        $t9, 0x7fff
/* 2C68C 8002BA8C 244F0008 */  addiu      $t7, $v0, 8
/* 2C690 8002BA90 ACEF0000 */  sw         $t7, ($a3)
/* 2C694 8002BA94 AC590004 */  sw         $t9, 4($v0)
/* 2C698 8002BA98 AC580000 */  sw         $t8, ($v0)
/* 2C69C 8002BA9C 8CE20000 */  lw         $v0, ($a3)
/* 2C6A0 8002BAA0 3C0CDB08 */  lui        $t4, 0xdb08
/* 2C6A4 8002BAA4 358C0010 */  ori        $t4, $t4, 0x10
/* 2C6A8 8002BAA8 244B0008 */  addiu      $t3, $v0, 8
/* 2C6AC 8002BAAC ACEB0000 */  sw         $t3, ($a3)
/* 2C6B0 8002BAB0 240D7FFF */  addiu      $t5, $zero, 0x7fff
/* 2C6B4 8002BAB4 AC4D0004 */  sw         $t5, 4($v0)
/* 2C6B8 8002BAB8 AC4C0000 */  sw         $t4, ($v0)
/* 2C6BC 8002BABC 8CE20000 */  lw         $v0, ($a3)
/* 2C6C0 8002BAC0 3C19800F */  lui        $t9, %hi(D_800F1AC8)
/* 2C6C4 8002BAC4 27391AC8 */  addiu      $t9, $t9, %lo(D_800F1AC8)
/* 2C6C8 8002BAC8 244E0008 */  addiu      $t6, $v0, 8
/* 2C6CC 8002BACC ACEE0000 */  sw         $t6, ($a3)
/* 2C6D0 8002BAD0 AC400004 */  sw         $zero, 4($v0)
/* 2C6D4 8002BAD4 AC490000 */  sw         $t1, ($v0)
/* 2C6D8 8002BAD8 8D4F0000 */  lw         $t7, ($t2)
/* 2C6DC 8002BADC 3C06800B */  lui        $a2, %hi(D_800AE4E4)
/* 2C6E0 8002BAE0 8CC6E4E4 */  lw         $a2, %lo(D_800AE4E4)($a2)
/* 2C6E4 8002BAE4 000FC080 */  sll        $t8, $t7, 2
/* 2C6E8 8002BAE8 030FC023 */  subu       $t8, $t8, $t7
/* 2C6EC 8002BAEC 0018C080 */  sll        $t8, $t8, 2
/* 2C6F0 8002BAF0 03192021 */  addu       $a0, $t8, $t9
/* 2C6F4 8002BAF4 AFA700B0 */  sw         $a3, 0xb0($sp)
/* 2C6F8 8002BAF8 0C002980 */  jal        func_8000A600
/* 2C6FC 8002BAFC 27A50054 */   addiu     $a1, $sp, 0x54
/* 2C700 8002BB00 3C013F80 */  lui        $at, 0x3f80
/* 2C704 8002BB04 44810000 */  mtc1       $at, $f0
/* 2C708 8002BB08 8FAB0054 */  lw         $t3, 0x54($sp)
/* 2C70C 8002BB0C 240C001F */  addiu      $t4, $zero, 0x1f
/* 2C710 8002BB10 240D001F */  addiu      $t5, $zero, 0x1f
/* 2C714 8002BB14 240E0030 */  addiu      $t6, $zero, 0x30
/* 2C718 8002BB18 240F0030 */  addiu      $t7, $zero, 0x30
/* 2C71C 8002BB1C 2418FFFF */  addiu      $t8, $zero, -1
/* 2C720 8002BB20 8FA600B0 */  lw         $a2, 0xb0($sp)
/* 2C724 8002BB24 AFAC006C */  sw         $t4, 0x6c($sp)
/* 2C728 8002BB28 AFAD0070 */  sw         $t5, 0x70($sp)
/* 2C72C 8002BB2C AFAE0074 */  sw         $t6, 0x74($sp)
/* 2C730 8002BB30 AFAF0078 */  sw         $t7, 0x78($sp)
/* 2C734 8002BB34 AFA0007C */  sw         $zero, 0x7c($sp)
/* 2C738 8002BB38 AFA00080 */  sw         $zero, 0x80($sp)
/* 2C73C 8002BB3C AFB8008C */  sw         $t8, 0x8c($sp)
/* 2C740 8002BB40 24040005 */  addiu      $a0, $zero, 5
/* 2C744 8002BB44 27A50068 */  addiu      $a1, $sp, 0x68
/* 2C748 8002BB48 AFAB0068 */  sw         $t3, 0x68($sp)
/* 2C74C 8002BB4C E7A00084 */  swc1       $f0, 0x84($sp)
/* 2C750 8002BB50 0C0030D5 */  jal        func_8000C354
/* 2C754 8002BB54 E7A00088 */   swc1      $f0, 0x88($sp)
.L8002BB58:
/* 2C758 8002BB58 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2C75C 8002BB5C 27BD00B0 */  addiu      $sp, $sp, 0xb0
/* 2C760 8002BB60 03E00008 */  jr         $ra
/* 2C764 8002BB64 00000000 */   nop

glabel func_8002BB68
/* 2C768 8002BB68 8C830000 */  lw         $v1, ($a0)
/* 2C76C 8002BB6C 3C0FE700 */  lui        $t7, 0xe700
/* 2C770 8002BB70 3C19E200 */  lui        $t9, 0xe200
/* 2C774 8002BB74 246E0008 */  addiu      $t6, $v1, 8
/* 2C778 8002BB78 AC8E0000 */  sw         $t6, ($a0)
/* 2C77C 8002BB7C AC600004 */  sw         $zero, 4($v1)
/* 2C780 8002BB80 AC6F0000 */  sw         $t7, ($v1)
/* 2C784 8002BB84 8C830000 */  lw         $v1, ($a0)
/* 2C788 8002BB88 3C090050 */  lui        $t1, 0x50
/* 2C78C 8002BB8C 35294240 */  ori        $t1, $t1, 0x4240
/* 2C790 8002BB90 24780008 */  addiu      $t8, $v1, 8
/* 2C794 8002BB94 AC980000 */  sw         $t8, ($a0)
/* 2C798 8002BB98 3739001C */  ori        $t9, $t9, 0x1c
/* 2C79C 8002BB9C AC790000 */  sw         $t9, ($v1)
/* 2C7A0 8002BBA0 AC690004 */  sw         $t1, 4($v1)
/* 2C7A4 8002BBA4 8C830000 */  lw         $v1, ($a0)
/* 2C7A8 8002BBA8 3C0BFCFF */  lui        $t3, 0xfcff
/* 2C7AC 8002BBAC 3C0CFFFD */  lui        $t4, 0xfffd
/* 2C7B0 8002BBB0 246A0008 */  addiu      $t2, $v1, 8
/* 2C7B4 8002BBB4 AC8A0000 */  sw         $t2, ($a0)
/* 2C7B8 8002BBB8 358CF6FB */  ori        $t4, $t4, 0xf6fb
/* 2C7BC 8002BBBC 356BFFFF */  ori        $t3, $t3, 0xffff
/* 2C7C0 8002BBC0 AC6B0000 */  sw         $t3, ($v1)
/* 2C7C4 8002BBC4 AC6C0004 */  sw         $t4, 4($v1)
/* 2C7C8 8002BBC8 8C830000 */  lw         $v1, ($a0)
/* 2C7CC 8002BBCC 30AF00FF */  andi       $t7, $a1, 0xff
/* 2C7D0 8002BBD0 3C0EFA00 */  lui        $t6, 0xfa00
/* 2C7D4 8002BBD4 246D0008 */  addiu      $t5, $v1, 8
/* 2C7D8 8002BBD8 AC8D0000 */  sw         $t5, ($a0)
/* 2C7DC 8002BBDC AC6F0004 */  sw         $t7, 4($v1)
/* 2C7E0 8002BBE0 AC6E0000 */  sw         $t6, ($v1)
/* 2C7E4 8002BBE4 8C830000 */  lw         $v1, ($a0)
/* 2C7E8 8002BBE8 3C09000B */  lui        $t1, 0xb
/* 2C7EC 8002BBEC 3C19F644 */  lui        $t9, 0xf644
/* 2C7F0 8002BBF0 24780008 */  addiu      $t8, $v1, 8
/* 2C7F4 8002BBF4 AC980000 */  sw         $t8, ($a0)
/* 2C7F8 8002BBF8 37394334 */  ori        $t9, $t9, 0x4334
/* 2C7FC 8002BBFC 3529C0DC */  ori        $t1, $t1, 0xc0dc
/* 2C800 8002BC00 AC690004 */  sw         $t1, 4($v1)
/* 2C804 8002BC04 03E00008 */  jr         $ra
/* 2C808 8002BC08 AC790000 */   sw        $t9, ($v1)

glabel func_8002BC0C
/* 2C80C 8002BC0C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 2C810 8002BC10 AFB50048 */  sw         $s5, 0x48($sp)
/* 2C814 8002BC14 AFB2003C */  sw         $s2, 0x3c($sp)
/* 2C818 8002BC18 AFB00034 */  sw         $s0, 0x34($sp)
/* 2C81C 8002BC1C 00C08025 */  or         $s0, $a2, $zero
/* 2C820 8002BC20 00A09025 */  or         $s2, $a1, $zero
/* 2C824 8002BC24 0080A825 */  or         $s5, $a0, $zero
/* 2C828 8002BC28 AFBF004C */  sw         $ra, 0x4c($sp)
/* 2C82C 8002BC2C AFB40044 */  sw         $s4, 0x44($sp)
/* 2C830 8002BC30 AFB30040 */  sw         $s3, 0x40($sp)
/* 2C834 8002BC34 AFB10038 */  sw         $s1, 0x38($sp)
/* 2C838 8002BC38 04E10003 */  bgez       $a3, .L8002BC48
/* 2C83C 8002BC3C F7B40028 */   sdc1      $f20, 0x28($sp)
/* 2C840 8002BC40 10000005 */  b          .L8002BC58
/* 2C844 8002BC44 00003825 */   or        $a3, $zero, $zero
.L8002BC48:
/* 2C848 8002BC48 28E10100 */  slti       $at, $a3, 0x100
/* 2C84C 8002BC4C 54200003 */  bnel       $at, $zero, .L8002BC5C
/* 2C850 8002BC50 8EA20000 */   lw        $v0, ($s5)
/* 2C854 8002BC54 240700FF */  addiu      $a3, $zero, 0xff
.L8002BC58:
/* 2C858 8002BC58 8EA20000 */  lw         $v0, ($s5)
.L8002BC5C:
/* 2C85C 8002BC5C 3C0FE700 */  lui        $t7, 0xe700
/* 2C860 8002BC60 30E800FF */  andi       $t0, $a3, 0xff
/* 2C864 8002BC64 244E0008 */  addiu      $t6, $v0, 8
/* 2C868 8002BC68 AEAE0000 */  sw         $t6, ($s5)
/* 2C86C 8002BC6C AC400004 */  sw         $zero, 4($v0)
/* 2C870 8002BC70 AC4F0000 */  sw         $t7, ($v0)
/* 2C874 8002BC74 8EA20000 */  lw         $v0, ($s5)
/* 2C878 8002BC78 2401DC00 */  addiu      $at, $zero, -0x2400
/* 2C87C 8002BC7C 01014825 */  or         $t1, $t0, $at
/* 2C880 8002BC80 24580008 */  addiu      $t8, $v0, 8
/* 2C884 8002BC84 AEB80000 */  sw         $t8, ($s5)
/* 2C888 8002BC88 3C19FA00 */  lui        $t9, 0xfa00
/* 2C88C 8002BC8C 28E100FF */  slti       $at, $a3, 0xff
/* 2C890 8002BC90 AC590000 */  sw         $t9, ($v0)
/* 2C894 8002BC94 1020000B */  beqz       $at, .L8002BCC4
/* 2C898 8002BC98 AC490004 */   sw        $t1, 4($v0)
/* 2C89C 8002BC9C 8EA20000 */  lw         $v0, ($s5)
/* 2C8A0 8002BCA0 3C0BE200 */  lui        $t3, 0xe200
/* 2C8A4 8002BCA4 3C0C0050 */  lui        $t4, 0x50
/* 2C8A8 8002BCA8 244A0008 */  addiu      $t2, $v0, 8
/* 2C8AC 8002BCAC AEAA0000 */  sw         $t2, ($s5)
/* 2C8B0 8002BCB0 358C41C8 */  ori        $t4, $t4, 0x41c8
/* 2C8B4 8002BCB4 356B001C */  ori        $t3, $t3, 0x1c
/* 2C8B8 8002BCB8 AC4B0000 */  sw         $t3, ($v0)
/* 2C8BC 8002BCBC 1000000A */  b          .L8002BCE8
/* 2C8C0 8002BCC0 AC4C0004 */   sw        $t4, 4($v0)
.L8002BCC4:
/* 2C8C4 8002BCC4 8EA20000 */  lw         $v0, ($s5)
/* 2C8C8 8002BCC8 3C0EE200 */  lui        $t6, 0xe200
/* 2C8CC 8002BCCC 3C0F0055 */  lui        $t7, 0x55
/* 2C8D0 8002BCD0 244D0008 */  addiu      $t5, $v0, 8
/* 2C8D4 8002BCD4 AEAD0000 */  sw         $t5, ($s5)
/* 2C8D8 8002BCD8 35EF3048 */  ori        $t7, $t7, 0x3048
/* 2C8DC 8002BCDC 35CE001C */  ori        $t6, $t6, 0x1c
/* 2C8E0 8002BCE0 AC4E0000 */  sw         $t6, ($v0)
/* 2C8E4 8002BCE4 AC4F0004 */  sw         $t7, 4($v0)
.L8002BCE8:
/* 2C8E8 8002BCE8 3C19800F */  lui        $t9, %hi(D_800F1ABC)
/* 2C8EC 8002BCEC 8F391ABC */  lw         $t9, %lo(D_800F1ABC)($t9)
/* 2C8F0 8002BCF0 3C18800F */  lui        $t8, %hi(D_800F1080)
/* 2C8F4 8002BCF4 3C013F80 */  lui        $at, 0x3f80
/* 2C8F8 8002BCF8 27111080 */  addiu      $s1, $t8, %lo(D_800F1080)
/* 2C8FC 8002BCFC 3C14800F */  lui        $s4, 0x800f
/* 2C900 8002BD00 3C13800F */  lui        $s3, %hi(D_800F1ABC)
/* 2C904 8002BD04 00194080 */  sll        $t0, $t9, 2
/* 2C908 8002BD08 4481A000 */  mtc1       $at, $f20
/* 2C90C 8002BD0C 01111021 */  addu       $v0, $t0, $s1
/* 2C910 8002BD10 26731ABC */  addiu      $s3, $s3, %lo(D_800F1ABC)
/* 2C914 8002BD14 269410A8 */  addiu      $s4, $s4, 0x10a8
.L8002BD18:
/* 2C918 8002BD18 8C450000 */  lw         $a1, ($v0)
/* 2C91C 8002BD1C 02A02025 */  or         $a0, $s5, $zero
/* 2C920 8002BD20 50A00017 */  beql       $a1, $zero, .L8002BD80
/* 2C924 8002BD24 26100014 */   addiu     $s0, $s0, 0x14
/* 2C928 8002BD28 8CA90004 */  lw         $t1, 4($a1)
/* 2C92C 8002BD2C 02403025 */  or         $a2, $s2, $zero
/* 2C930 8002BD30 02003825 */  or         $a3, $s0, $zero
/* 2C934 8002BD34 01325021 */  addu       $t2, $t1, $s2
/* 2C938 8002BD38 AFAA0010 */  sw         $t2, 0x10($sp)
/* 2C93C 8002BD3C 8CAB0008 */  lw         $t3, 8($a1)
/* 2C940 8002BD40 E7B40024 */  swc1       $f20, 0x24($sp)
/* 2C944 8002BD44 E7B40020 */  swc1       $f20, 0x20($sp)
/* 2C948 8002BD48 01706021 */  addu       $t4, $t3, $s0
/* 2C94C 8002BD4C AFAC0014 */  sw         $t4, 0x14($sp)
/* 2C950 8002BD50 AFA0001C */  sw         $zero, 0x1c($sp)
/* 2C954 8002BD54 0C00F5D9 */  jal        func_8003D764
/* 2C958 8002BD58 AFA00018 */   sw        $zero, 0x18($sp)
/* 2C95C 8002BD5C 8E6D0000 */  lw         $t5, ($s3)
/* 2C960 8002BD60 000D7080 */  sll        $t6, $t5, 2
/* 2C964 8002BD64 022E1021 */  addu       $v0, $s1, $t6
/* 2C968 8002BD68 8C4F0000 */  lw         $t7, ($v0)
/* 2C96C 8002BD6C 8DF90008 */  lw         $t9, 8($t7)
/* 2C970 8002BD70 02198021 */  addu       $s0, $s0, $t9
/* 2C974 8002BD74 10000002 */  b          .L8002BD80
/* 2C978 8002BD78 26100004 */   addiu     $s0, $s0, 4
/* 2C97C 8002BD7C 26100014 */  addiu      $s0, $s0, 0x14
.L8002BD80:
/* 2C980 8002BD80 26310008 */  addiu      $s1, $s1, 8
/* 2C984 8002BD84 1634FFE4 */  bne        $s1, $s4, .L8002BD18
/* 2C988 8002BD88 24420008 */   addiu     $v0, $v0, 8
/* 2C98C 8002BD8C 8FBF004C */  lw         $ra, 0x4c($sp)
/* 2C990 8002BD90 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 2C994 8002BD94 8FB00034 */  lw         $s0, 0x34($sp)
/* 2C998 8002BD98 8FB10038 */  lw         $s1, 0x38($sp)
/* 2C99C 8002BD9C 8FB2003C */  lw         $s2, 0x3c($sp)
/* 2C9A0 8002BDA0 8FB30040 */  lw         $s3, 0x40($sp)
/* 2C9A4 8002BDA4 8FB40044 */  lw         $s4, 0x44($sp)
/* 2C9A8 8002BDA8 8FB50048 */  lw         $s5, 0x48($sp)
/* 2C9AC 8002BDAC 03E00008 */  jr         $ra
/* 2C9B0 8002BDB0 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_8002BDB4
/* 2C9B4 8002BDB4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2C9B8 8002BDB8 AFB00020 */  sw         $s0, 0x20($sp)
/* 2C9BC 8002BDBC 00808025 */  or         $s0, $a0, $zero
/* 2C9C0 8002BDC0 AFBF0024 */  sw         $ra, 0x24($sp)
/* 2C9C4 8002BDC4 0C00F389 */  jal        func_8003CE24
/* 2C9C8 8002BDC8 8C840000 */   lw        $a0, ($a0)
/* 2C9CC 8002BDCC 0C00F3DE */  jal        func_8003CF78
/* 2C9D0 8002BDD0 00000000 */   nop
/* 2C9D4 8002BDD4 3C048006 */  lui        $a0, %hi(D_80063800)
/* 2C9D8 8002BDD8 0C00F560 */  jal        func_8003D580
/* 2C9DC 8002BDDC 24843800 */   addiu     $a0, $a0, %lo(D_80063800)
/* 2C9E0 8002BDE0 0C00F3DA */  jal        func_8003CF68
/* 2C9E4 8002BDE4 02002025 */   or        $a0, $s0, $zero
/* 2C9E8 8002BDE8 3C0E800F */  lui        $t6, %hi(D_800F1AC0)
/* 2C9EC 8002BDEC 8DCE1AC0 */  lw         $t6, %lo(D_800F1AC0)($t6)
/* 2C9F0 8002BDF0 24010002 */  addiu      $at, $zero, 2
/* 2C9F4 8002BDF4 02002025 */  or         $a0, $s0, $zero
/* 2C9F8 8002BDF8 15C1001B */  bne        $t6, $at, .L8002BE68
/* 2C9FC 8002BDFC 24050036 */   addiu     $a1, $zero, 0x36
/* 2CA00 8002BE00 0C002C3F */  jal        func_8000B0FC
/* 2CA04 8002BE04 00000000 */   nop
/* 2CA08 8002BE08 3C0F800F */  lui        $t7, %hi(D_800F1AC4)
/* 2CA0C 8002BE0C 8DEF1AC4 */  lw         $t7, %lo(D_800F1AC4)($t7)
/* 2CA10 8002BE10 24180000 */  addiu      $t8, $zero, 0
/* 2CA14 8002BE14 00582023 */  subu       $a0, $v0, $t8
/* 2CA18 8002BE18 006F082B */  sltu       $at, $v1, $t7
/* 2CA1C 8002BE1C 00812023 */  subu       $a0, $a0, $at
/* 2CA20 8002BE20 0C0148C6 */  jal        __ull_to_f
/* 2CA24 8002BE24 006F2823 */   subu      $a1, $v1, $t7
/* 2CA28 8002BE28 3C01437F */  lui        $at, 0x437f
/* 2CA2C 8002BE2C 44817000 */  mtc1       $at, $f14
/* 2CA30 8002BE30 44806000 */  mtc1       $zero, $f12
/* 2CA34 8002BE34 3C0642B4 */  lui        $a2, 0x42b4
/* 2CA38 8002BE38 3C074120 */  lui        $a3, 0x4120
/* 2CA3C 8002BE3C 0C00EA85 */  jal        func_8003AA14
/* 2CA40 8002BE40 E7A00010 */   swc1      $f0, 0x10($sp)
/* 2CA44 8002BE44 4600010D */  trunc.w.s  $f4, $f0
/* 2CA48 8002BE48 02002025 */  or         $a0, $s0, $zero
/* 2CA4C 8002BE4C 24050035 */  addiu      $a1, $zero, 0x35
/* 2CA50 8002BE50 24060053 */  addiu      $a2, $zero, 0x53
/* 2CA54 8002BE54 44072000 */  mfc1       $a3, $f4
/* 2CA58 8002BE58 0C00AF03 */  jal        func_8002BC0C
/* 2CA5C 8002BE5C 00000000 */   nop
/* 2CA60 8002BE60 1000000A */  b          .L8002BE8C
/* 2CA64 8002BE64 8FBF0024 */   lw        $ra, 0x24($sp)
.L8002BE68:
/* 2CA68 8002BE68 24060054 */  addiu      $a2, $zero, 0x54
/* 2CA6C 8002BE6C 0C00AF03 */  jal        func_8002BC0C
/* 2CA70 8002BE70 24070050 */   addiu     $a3, $zero, 0x50
/* 2CA74 8002BE74 02002025 */  or         $a0, $s0, $zero
/* 2CA78 8002BE78 24050035 */  addiu      $a1, $zero, 0x35
/* 2CA7C 8002BE7C 24060053 */  addiu      $a2, $zero, 0x53
/* 2CA80 8002BE80 0C00AF03 */  jal        func_8002BC0C
/* 2CA84 8002BE84 240700FF */   addiu     $a3, $zero, 0xff
/* 2CA88 8002BE88 8FBF0024 */  lw         $ra, 0x24($sp)
.L8002BE8C:
/* 2CA8C 8002BE8C 8FB00020 */  lw         $s0, 0x20($sp)
/* 2CA90 8002BE90 27BD0028 */  addiu      $sp, $sp, 0x28
/* 2CA94 8002BE94 03E00008 */  jr         $ra
/* 2CA98 8002BE98 00000000 */   nop

glabel func_8002BE9C
/* 2CA9C 8002BE9C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2CAA0 8002BEA0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2CAA4 8002BEA4 AFA40018 */  sw         $a0, 0x18($sp)
/* 2CAA8 8002BEA8 0C00F389 */  jal        func_8003CE24
/* 2CAAC 8002BEAC 8C840000 */   lw        $a0, ($a0)
/* 2CAB0 8002BEB0 0C00F3DE */  jal        func_8003CF78
/* 2CAB4 8002BEB4 00000000 */   nop
/* 2CAB8 8002BEB8 3C048006 */  lui        $a0, %hi(D_80063800)
/* 2CABC 8002BEBC 0C00F560 */  jal        func_8003D580
/* 2CAC0 8002BEC0 24843800 */   addiu     $a0, $a0, %lo(D_80063800)
/* 2CAC4 8002BEC4 0C002C4D */  jal        func_8000B134
/* 2CAC8 8002BEC8 00000000 */   nop
/* 2CACC 8002BECC 240400FF */  addiu      $a0, $zero, 0xff
/* 2CAD0 8002BED0 240500FF */  addiu      $a1, $zero, 0xff
/* 2CAD4 8002BED4 240600FF */  addiu      $a2, $zero, 0xff
/* 2CAD8 8002BED8 0C00F528 */  jal        func_8003D4A0
/* 2CADC 8002BEDC 00403825 */   or        $a3, $v0, $zero
/* 2CAE0 8002BEE0 3C0F800F */  lui        $t7, %hi(D_800F10A8)
/* 2CAE4 8002BEE4 8DEF10A8 */  lw         $t7, %lo(D_800F10A8)($t7)
/* 2CAE8 8002BEE8 24190140 */  addiu      $t9, $zero, 0x140
/* 2CAEC 8002BEEC 2405009F */  addiu      $a1, $zero, 0x9f
/* 2CAF0 8002BEF0 8DF80004 */  lw         $t8, 4($t7)
/* 2CAF4 8002BEF4 03382023 */  subu       $a0, $t9, $t8
/* 2CAF8 8002BEF8 04810003 */  bgez       $a0, .L8002BF08
/* 2CAFC 8002BEFC 00044043 */   sra       $t0, $a0, 1
/* 2CB00 8002BF00 24810001 */  addiu      $at, $a0, 1
/* 2CB04 8002BF04 00014043 */  sra        $t0, $at, 1
.L8002BF08:
/* 2CB08 8002BF08 0C00F4F9 */  jal        func_8003D3E4
/* 2CB0C 8002BF0C 2504FFE0 */   addiu     $a0, $t0, -0x20
/* 2CB10 8002BF10 3C04800F */  lui        $a0, %hi(D_800F10A8)
/* 2CB14 8002BF14 0C00F57B */  jal        func_8003D5EC
/* 2CB18 8002BF18 8C8410A8 */   lw        $a0, %lo(D_800F10A8)($a0)
/* 2CB1C 8002BF1C 0C00F3DA */  jal        func_8003CF68
/* 2CB20 8002BF20 8FA40018 */   lw        $a0, 0x18($sp)
/* 2CB24 8002BF24 0C00F3DE */  jal        func_8003CF78
/* 2CB28 8002BF28 00000000 */   nop
/* 2CB2C 8002BF2C 3C048006 */  lui        $a0, %hi(D_80063800)
/* 2CB30 8002BF30 0C00F560 */  jal        func_8003D580
/* 2CB34 8002BF34 24843800 */   addiu     $a0, $a0, %lo(D_80063800)
/* 2CB38 8002BF38 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2CB3C 8002BF3C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2CB40 8002BF40 03E00008 */  jr         $ra
/* 2CB44 8002BF44 00000000 */   nop

glabel func_8002BF48
/* 2CB48 8002BF48 3C18800F */  lui        $t8, %hi(D_800F1ABC)
/* 2CB4C 8002BF4C 8F181ABC */  lw         $t8, %lo(D_800F1ABC)($t8)
/* 2CB50 8002BF50 3C0F800F */  lui        $t7, %hi(D_800F1080)
/* 2CB54 8002BF54 25EF1080 */  addiu      $t7, $t7, %lo(D_800F1080)
/* 2CB58 8002BF58 000470C0 */  sll        $t6, $a0, 3
/* 2CB5C 8002BF5C 01CF1021 */  addu       $v0, $t6, $t7
/* 2CB60 8002BF60 0018C880 */  sll        $t9, $t8, 2
/* 2CB64 8002BF64 00593821 */  addu       $a3, $v0, $t9
/* 2CB68 8002BF68 8CE80000 */  lw         $t0, ($a3)
/* 2CB6C 8002BF6C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2CB70 8002BF70 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2CB74 8002BF74 AFA60030 */  sw         $a2, 0x30($sp)
/* 2CB78 8002BF78 1100000C */  beqz       $t0, .L8002BFAC
/* 2CB7C 8002BF7C AFA8001C */   sw        $t0, 0x1c($sp)
/* 2CB80 8002BF80 01002025 */  or         $a0, $t0, $zero
/* 2CB84 8002BF84 AFA20024 */  sw         $v0, 0x24($sp)
/* 2CB88 8002BF88 0C00FD94 */  jal        func_8003F650
/* 2CB8C 8002BF8C AFA5002C */   sw        $a1, 0x2c($sp)
/* 2CB90 8002BF90 3C0A800F */  lui        $t2, %hi(D_800F1ABC)
/* 2CB94 8002BF94 8D4A1ABC */  lw         $t2, %lo(D_800F1ABC)($t2)
/* 2CB98 8002BF98 8FA20024 */  lw         $v0, 0x24($sp)
/* 2CB9C 8002BF9C 8FA5002C */  lw         $a1, 0x2c($sp)
/* 2CBA0 8002BFA0 000A5880 */  sll        $t3, $t2, 2
/* 2CBA4 8002BFA4 004B3821 */  addu       $a3, $v0, $t3
/* 2CBA8 8002BFA8 ACE00000 */  sw         $zero, ($a3)
.L8002BFAC:
/* 2CBAC 8002BFAC 50A0000B */  beql       $a1, $zero, .L8002BFDC
/* 2CBB0 8002BFB0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 2CBB4 8002BFB4 90AC0000 */  lbu        $t4, ($a1)
/* 2CBB8 8002BFB8 8FAD0030 */  lw         $t5, 0x30($sp)
/* 2CBBC 8002BFBC 00E02025 */  or         $a0, $a3, $zero
/* 2CBC0 8002BFC0 11800005 */  beqz       $t4, .L8002BFD8
/* 2CBC4 8002BFC4 000D7100 */   sll       $t6, $t5, 4
/* 2CBC8 8002BFC8 3C0F8007 */  lui        $t7, %hi(D_80074DE0)
/* 2CBCC 8002BFCC 25EF4DE0 */  addiu      $t7, $t7, %lo(D_80074DE0)
/* 2CBD0 8002BFD0 0C00F770 */  jal        func_8003DDC0
/* 2CBD4 8002BFD4 01CF3021 */   addu      $a2, $t6, $t7
.L8002BFD8:
/* 2CBD8 8002BFD8 8FBF0014 */  lw         $ra, 0x14($sp)
.L8002BFDC:
/* 2CBDC 8002BFDC 27BD0028 */  addiu      $sp, $sp, 0x28
/* 2CBE0 8002BFE0 03E00008 */  jr         $ra
/* 2CBE4 8002BFE4 00000000 */   nop

glabel func_8002BFE8
/* 2CBE8 8002BFE8 3C07800F */  lui        $a3, %hi(D_800F10A8)
/* 2CBEC 8002BFEC 24E710A8 */  addiu      $a3, $a3, %lo(D_800F10A8)
/* 2CBF0 8002BFF0 8CE50000 */  lw         $a1, ($a3)
/* 2CBF4 8002BFF4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2CBF8 8002BFF8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2CBFC 8002BFFC 10A00006 */  beqz       $a1, .L8002C018
/* 2CC00 8002C000 AFA40018 */   sw        $a0, 0x18($sp)
/* 2CC04 8002C004 0C00FD94 */  jal        func_8003F650
/* 2CC08 8002C008 00A02025 */   or        $a0, $a1, $zero
/* 2CC0C 8002C00C 3C07800F */  lui        $a3, %hi(D_800F10A8)
/* 2CC10 8002C010 24E710A8 */  addiu      $a3, $a3, %lo(D_800F10A8)
/* 2CC14 8002C014 ACE00000 */  sw         $zero, ($a3)
.L8002C018:
/* 2CC18 8002C018 3C068007 */  lui        $a2, %hi(D_80074DE0)
/* 2CC1C 8002C01C 24C64DE0 */  addiu      $a2, $a2, %lo(D_80074DE0)
/* 2CC20 8002C020 00E02025 */  or         $a0, $a3, $zero
/* 2CC24 8002C024 0C00F770 */  jal        func_8003DDC0
/* 2CC28 8002C028 8FA50018 */   lw        $a1, 0x18($sp)
/* 2CC2C 8002C02C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2CC30 8002C030 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2CC34 8002C034 03E00008 */  jr         $ra
/* 2CC38 8002C038 00000000 */   nop

glabel func_8002C03C
/* 2CC3C 8002C03C 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 2CC40 8002C040 AFB6002C */  sw         $s6, 0x2c($sp)
/* 2CC44 8002C044 AFB50028 */  sw         $s5, 0x28($sp)
/* 2CC48 8002C048 AFB40024 */  sw         $s4, 0x24($sp)
/* 2CC4C 8002C04C AFB30020 */  sw         $s3, 0x20($sp)
/* 2CC50 8002C050 AFB2001C */  sw         $s2, 0x1c($sp)
/* 2CC54 8002C054 AFB10018 */  sw         $s1, 0x18($sp)
/* 2CC58 8002C058 AFB00014 */  sw         $s0, 0x14($sp)
/* 2CC5C 8002C05C 00A0A825 */  or         $s5, $a1, $zero
/* 2CC60 8002C060 AFBF0034 */  sw         $ra, 0x34($sp)
/* 2CC64 8002C064 AFB70030 */  sw         $s7, 0x30($sp)
/* 2CC68 8002C068 00808025 */  or         $s0, $a0, $zero
/* 2CC6C 8002C06C 00008825 */  or         $s1, $zero, $zero
/* 2CC70 8002C070 2412000C */  addiu      $s2, $zero, 0xc
/* 2CC74 8002C074 2413000A */  addiu      $s3, $zero, 0xa
/* 2CC78 8002C078 27B40085 */  addiu      $s4, $sp, 0x85
/* 2CC7C 8002C07C 27B60054 */  addiu      $s6, $sp, 0x54
/* 2CC80 8002C080 27A70054 */  addiu      $a3, $sp, 0x54
.L8002C084:
/* 2CC84 8002C084 92030000 */  lbu        $v1, ($s0)
/* 2CC88 8002C088 14600013 */  bnez       $v1, .L8002C0D8
/* 2CC8C 8002C08C 00601025 */   or        $v0, $v1, $zero
/* 2CC90 8002C090 A0E00000 */  sb         $zero, ($a3)
/* 2CC94 8002C094 02202025 */  or         $a0, $s1, $zero
/* 2CC98 8002C098 02C02825 */  or         $a1, $s6, $zero
/* 2CC9C 8002C09C 0C00AFD2 */  jal        func_8002BF48
/* 2CCA0 8002C0A0 02A03025 */   or        $a2, $s5, $zero
/* 2CCA4 8002C0A4 26310001 */  addiu      $s1, $s1, 1
/* 2CCA8 8002C0A8 2A210005 */  slti       $at, $s1, 5
/* 2CCAC 8002C0AC 10200008 */  beqz       $at, .L8002C0D0
/* 2CCB0 8002C0B0 02202025 */   or        $a0, $s1, $zero
.L8002C0B4:
/* 2CCB4 8002C0B4 00002825 */  or         $a1, $zero, $zero
/* 2CCB8 8002C0B8 0C00AFD2 */  jal        func_8002BF48
/* 2CCBC 8002C0BC 02A03025 */   or        $a2, $s5, $zero
/* 2CCC0 8002C0C0 26310001 */  addiu      $s1, $s1, 1
/* 2CCC4 8002C0C4 2A210005 */  slti       $at, $s1, 5
/* 2CCC8 8002C0C8 5420FFFA */  bnel       $at, $zero, .L8002C0B4
/* 2CCCC 8002C0CC 02202025 */   or        $a0, $s1, $zero
.L8002C0D0:
/* 2CCD0 8002C0D0 10000028 */  b          .L8002C174
/* 2CCD4 8002C0D4 00001025 */   or        $v0, $zero, $zero
.L8002C0D8:
/* 2CCD8 8002C0D8 16420013 */  bne        $s2, $v0, .L8002C128
/* 2CCDC 8002C0DC 00000000 */   nop
/* 2CCE0 8002C0E0 A0E00000 */  sb         $zero, ($a3)
/* 2CCE4 8002C0E4 02202025 */  or         $a0, $s1, $zero
/* 2CCE8 8002C0E8 02C02825 */  or         $a1, $s6, $zero
/* 2CCEC 8002C0EC 0C00AFD2 */  jal        func_8002BF48
/* 2CCF0 8002C0F0 02A03025 */   or        $a2, $s5, $zero
/* 2CCF4 8002C0F4 26310001 */  addiu      $s1, $s1, 1
/* 2CCF8 8002C0F8 2A210005 */  slti       $at, $s1, 5
/* 2CCFC 8002C0FC 10200008 */  beqz       $at, .L8002C120
/* 2CD00 8002C100 02202025 */   or        $a0, $s1, $zero
.L8002C104:
/* 2CD04 8002C104 00002825 */  or         $a1, $zero, $zero
/* 2CD08 8002C108 0C00AFD2 */  jal        func_8002BF48
/* 2CD0C 8002C10C 02A03025 */   or        $a2, $s5, $zero
/* 2CD10 8002C110 26310001 */  addiu      $s1, $s1, 1
/* 2CD14 8002C114 2A210005 */  slti       $at, $s1, 5
/* 2CD18 8002C118 5420FFFA */  bnel       $at, $zero, .L8002C104
/* 2CD1C 8002C11C 02202025 */   or        $a0, $s1, $zero
.L8002C120:
/* 2CD20 8002C120 10000014 */  b          .L8002C174
/* 2CD24 8002C124 26020001 */   addiu     $v0, $s0, 1
.L8002C128:
/* 2CD28 8002C128 56620005 */  bnel       $s3, $v0, .L8002C140
/* 2CD2C 8002C12C 24E70001 */   addiu     $a3, $a3, 1
/* 2CD30 8002C130 A0E00000 */  sb         $zero, ($a3)
/* 2CD34 8002C134 10000005 */  b          .L8002C14C
/* 2CD38 8002C138 26100001 */   addiu     $s0, $s0, 1
/* 2CD3C 8002C13C 24E70001 */  addiu      $a3, $a3, 1
.L8002C140:
/* 2CD40 8002C140 A0E3FFFF */  sb         $v1, -1($a3)
/* 2CD44 8002C144 14F4FFCF */  bne        $a3, $s4, .L8002C084
/* 2CD48 8002C148 26100001 */   addiu     $s0, $s0, 1
.L8002C14C:
/* 2CD4C 8002C14C A3A00085 */  sb         $zero, 0x85($sp)
/* 2CD50 8002C150 02202025 */  or         $a0, $s1, $zero
/* 2CD54 8002C154 02C02825 */  or         $a1, $s6, $zero
/* 2CD58 8002C158 0C00AFD2 */  jal        func_8002BF48
/* 2CD5C 8002C15C 02A03025 */   or        $a2, $s5, $zero
/* 2CD60 8002C160 26310001 */  addiu      $s1, $s1, 1
/* 2CD64 8002C164 2A210005 */  slti       $at, $s1, 5
/* 2CD68 8002C168 5420FFC6 */  bnel       $at, $zero, .L8002C084
/* 2CD6C 8002C16C 27A70054 */   addiu     $a3, $sp, 0x54
/* 2CD70 8002C170 26020001 */  addiu      $v0, $s0, 1
.L8002C174:
/* 2CD74 8002C174 8FBF0034 */  lw         $ra, 0x34($sp)
/* 2CD78 8002C178 8FB00014 */  lw         $s0, 0x14($sp)
/* 2CD7C 8002C17C 8FB10018 */  lw         $s1, 0x18($sp)
/* 2CD80 8002C180 8FB2001C */  lw         $s2, 0x1c($sp)
/* 2CD84 8002C184 8FB30020 */  lw         $s3, 0x20($sp)
/* 2CD88 8002C188 8FB40024 */  lw         $s4, 0x24($sp)
/* 2CD8C 8002C18C 8FB50028 */  lw         $s5, 0x28($sp)
/* 2CD90 8002C190 8FB6002C */  lw         $s6, 0x2c($sp)
/* 2CD94 8002C194 8FB70030 */  lw         $s7, 0x30($sp)
/* 2CD98 8002C198 03E00008 */  jr         $ra
/* 2CD9C 8002C19C 27BD0088 */   addiu     $sp, $sp, 0x88

glabel func_8002C1A0
/* 2CDA0 8002C1A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2CDA4 8002C1A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2CDA8 8002C1A8 0C00ADE6 */  jal        func_8002B798
/* 2CDAC 8002C1AC AFA40018 */   sw        $a0, 0x18($sp)
/* 2CDB0 8002C1B0 3C03800F */  lui        $v1, %hi(D_800F1ABC)
/* 2CDB4 8002C1B4 24631ABC */  addiu      $v1, $v1, %lo(D_800F1ABC)
/* 2CDB8 8002C1B8 8C6E0000 */  lw         $t6, ($v1)
/* 2CDBC 8002C1BC 3C05800F */  lui        $a1, %hi(D_800F1A78)
/* 2CDC0 8002C1C0 8FA40018 */  lw         $a0, 0x18($sp)
/* 2CDC4 8002C1C4 39CF0001 */  xori       $t7, $t6, 1
/* 2CDC8 8002C1C8 AC6F0000 */  sw         $t7, ($v1)
/* 2CDCC 8002C1CC 0C00B00F */  jal        func_8002C03C
/* 2CDD0 8002C1D0 8CA51A78 */   lw        $a1, %lo(D_800F1A78)($a1)
/* 2CDD4 8002C1D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2CDD8 8002C1D8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2CDDC 8002C1DC 03E00008 */  jr         $ra
/* 2CDE0 8002C1E0 00000000 */   nop

glabel func_8002C1E4
/* 2CDE4 8002C1E4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2CDE8 8002C1E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2CDEC 8002C1EC 3C04800F */  lui        $a0, %hi(D_800F10B0)
/* 2CDF0 8002C1F0 248410B0 */  addiu      $a0, $a0, %lo(D_800F10B0)
/* 2CDF4 8002C1F4 0C014388 */  jal        _bzero
/* 2CDF8 8002C1F8 240509C4 */   addiu     $a1, $zero, 0x9c4
/* 2CDFC 8002C1FC 3C0E800F */  lui        $t6, %hi(D_800F10B0)
/* 2CE00 8002C200 25CE10B0 */  addiu      $t6, $t6, %lo(D_800F10B0)
/* 2CE04 8002C204 3C01800F */  lui        $at, %hi(D_800F1A80)
/* 2CE08 8002C208 3C02800F */  lui        $v0, %hi(D_800F1AB8)
/* 2CE0C 8002C20C AC2E1A80 */  sw         $t6, %lo(D_800F1A80)($at)
/* 2CE10 8002C210 24421AB8 */  addiu      $v0, $v0, %lo(D_800F1AB8)
/* 2CE14 8002C214 AC400000 */  sw         $zero, ($v0)
/* 2CE18 8002C218 3C01800F */  lui        $at, %hi(D_800F1AB4)
/* 2CE1C 8002C21C 24180001 */  addiu      $t8, $zero, 1
/* 2CE20 8002C220 3C04800A */  lui        $a0, %hi(D_800A58D4)
/* 2CE24 8002C224 AC381AB4 */  sw         $t8, %lo(D_800F1AB4)($at)
/* 2CE28 8002C228 0C00AFFA */  jal        func_8002BFE8
/* 2CE2C 8002C22C 248458D4 */   addiu     $a0, $a0, %lo(D_800A58D4)
/* 2CE30 8002C230 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2CE34 8002C234 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2CE38 8002C238 03E00008 */  jr         $ra
/* 2CE3C 8002C23C 00000000 */   nop

glabel func_8002C240
/* 2CE40 8002C240 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 2CE44 8002C244 AFB40028 */  sw         $s4, 0x28($sp)
/* 2CE48 8002C248 AFB30024 */  sw         $s3, 0x24($sp)
/* 2CE4C 8002C24C AFB20020 */  sw         $s2, 0x20($sp)
/* 2CE50 8002C250 3C13800F */  lui        $s3, 0x800f
/* 2CE54 8002C254 3C14800F */  lui        $s4, %hi(D_800F10B0)
/* 2CE58 8002C258 AFBF002C */  sw         $ra, 0x2c($sp)
/* 2CE5C 8002C25C AFB1001C */  sw         $s1, 0x1c($sp)
/* 2CE60 8002C260 AFB00018 */  sw         $s0, 0x18($sp)
/* 2CE64 8002C264 269410B0 */  addiu      $s4, $s4, %lo(D_800F10B0)
/* 2CE68 8002C268 26731080 */  addiu      $s3, $s3, 0x1080
/* 2CE6C 8002C26C 24120002 */  addiu      $s2, $zero, 2
/* 2CE70 8002C270 00008825 */  or         $s1, $zero, $zero
.L8002C274:
/* 2CE74 8002C274 02608025 */  or         $s0, $s3, $zero
.L8002C278:
/* 2CE78 8002C278 8E040000 */  lw         $a0, ($s0)
/* 2CE7C 8002C27C 50800004 */  beql       $a0, $zero, .L8002C290
/* 2CE80 8002C280 26310001 */   addiu     $s1, $s1, 1
/* 2CE84 8002C284 0C00FD94 */  jal        func_8003F650
/* 2CE88 8002C288 00000000 */   nop
/* 2CE8C 8002C28C 26310001 */  addiu      $s1, $s1, 1
.L8002C290:
/* 2CE90 8002C290 26100004 */  addiu      $s0, $s0, 4
/* 2CE94 8002C294 1632FFF8 */  bne        $s1, $s2, .L8002C278
/* 2CE98 8002C298 AE00FFFC */   sw        $zero, -4($s0)
/* 2CE9C 8002C29C 26730008 */  addiu      $s3, $s3, 8
/* 2CEA0 8002C2A0 5674FFF4 */  bnel       $s3, $s4, .L8002C274
/* 2CEA4 8002C2A4 00008825 */   or        $s1, $zero, $zero
/* 2CEA8 8002C2A8 240E0004 */  addiu      $t6, $zero, 4
/* 2CEAC 8002C2AC 3C01800F */  lui        $at, %hi(D_800F1AC0)
/* 2CEB0 8002C2B0 AC2E1AC0 */  sw         $t6, %lo(D_800F1AC0)($at)
/* 2CEB4 8002C2B4 0C002CB2 */  jal        func_8000B2C8
/* 2CEB8 8002C2B8 00002025 */   or        $a0, $zero, $zero
/* 2CEBC 8002C2BC 0C04467D */  jal        func_801119F4
/* 2CEC0 8002C2C0 00002025 */   or        $a0, $zero, $zero
/* 2CEC4 8002C2C4 8FBF002C */  lw         $ra, 0x2c($sp)
/* 2CEC8 8002C2C8 8FB00018 */  lw         $s0, 0x18($sp)
/* 2CECC 8002C2CC 8FB1001C */  lw         $s1, 0x1c($sp)
/* 2CED0 8002C2D0 8FB20020 */  lw         $s2, 0x20($sp)
/* 2CED4 8002C2D4 8FB30024 */  lw         $s3, 0x24($sp)
/* 2CED8 8002C2D8 8FB40028 */  lw         $s4, 0x28($sp)
/* 2CEDC 8002C2DC 03E00008 */  jr         $ra
/* 2CEE0 8002C2E0 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8002C2E4
/* 2CEE4 8002C2E4 3C05800F */  lui        $a1, %hi(D_800F10B0)
/* 2CEE8 8002C2E8 24A510B0 */  addiu      $a1, $a1, %lo(D_800F10B0)
/* 2CEEC 8002C2EC 90AE0000 */  lbu        $t6, ($a1)
/* 2CEF0 8002C2F0 00001025 */  or         $v0, $zero, $zero
/* 2CEF4 8002C2F4 11C00007 */  beqz       $t6, .L8002C314
/* 2CEF8 8002C2F8 284109C5 */   slti      $at, $v0, 0x9c5
.L8002C2FC:
/* 2CEFC 8002C2FC 10200010 */  beqz       $at, .L8002C340
/* 2CF00 8002C300 24420001 */   addiu     $v0, $v0, 1
/* 2CF04 8002C304 00A27821 */  addu       $t7, $a1, $v0
/* 2CF08 8002C308 91F80000 */  lbu        $t8, ($t7)
/* 2CF0C 8002C30C 5700FFFB */  bnel       $t8, $zero, .L8002C2FC
/* 2CF10 8002C310 284109C5 */   slti      $at, $v0, 0x9c5
.L8002C314:
/* 2CF14 8002C314 90830000 */  lbu        $v1, ($a0)
/* 2CF18 8002C318 10600009 */  beqz       $v1, .L8002C340
/* 2CF1C 8002C31C 284109C5 */   slti      $at, $v0, 0x9c5
.L8002C320:
/* 2CF20 8002C320 10200007 */  beqz       $at, .L8002C340
/* 2CF24 8002C324 00A2C821 */   addu      $t9, $a1, $v0
/* 2CF28 8002C328 A3230000 */  sb         $v1, ($t9)
/* 2CF2C 8002C32C 90830001 */  lbu        $v1, 1($a0)
/* 2CF30 8002C330 24420001 */  addiu      $v0, $v0, 1
/* 2CF34 8002C334 24840001 */  addiu      $a0, $a0, 1
/* 2CF38 8002C338 5460FFF9 */  bnel       $v1, $zero, .L8002C320
/* 2CF3C 8002C33C 284109C5 */   slti      $at, $v0, 0x9c5
.L8002C340:
/* 2CF40 8002C340 03E00008 */  jr         $ra
/* 2CF44 8002C344 00000000 */   nop

glabel func_8002C348
/* 2CF48 8002C348 3C0E800F */  lui        $t6, %hi(D_800F1AC0)
/* 2CF4C 8002C34C 8DCE1AC0 */  lw         $t6, %lo(D_800F1AC0)($t6)
/* 2CF50 8002C350 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2CF54 8002C354 24010004 */  addiu      $at, $zero, 4
/* 2CF58 8002C358 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2CF5C 8002C35C AFA40018 */  sw         $a0, 0x18($sp)
/* 2CF60 8002C360 AFA5001C */  sw         $a1, 0x1c($sp)
/* 2CF64 8002C364 11C10003 */  beq        $t6, $at, .L8002C374
/* 2CF68 8002C368 AFA60020 */   sw        $a2, 0x20($sp)
/* 2CF6C 8002C36C 1000000F */  b          .L8002C3AC
/* 2CF70 8002C370 00001025 */   or        $v0, $zero, $zero
.L8002C374:
/* 2CF74 8002C374 0C00B079 */  jal        func_8002C1E4
/* 2CF78 8002C378 00000000 */   nop
/* 2CF7C 8002C37C 0C00AE3A */  jal        func_8002B8E8
/* 2CF80 8002C380 00002025 */   or        $a0, $zero, $zero
/* 2CF84 8002C384 8FAF0018 */  lw         $t7, 0x18($sp)
/* 2CF88 8002C388 8FB80020 */  lw         $t8, 0x20($sp)
/* 2CF8C 8002C38C 3C01800F */  lui        $at, %hi(D_800F1A7C)
/* 2CF90 8002C390 AC2F1A7C */  sw         $t7, %lo(D_800F1A7C)($at)
/* 2CF94 8002C394 8FB9001C */  lw         $t9, 0x1c($sp)
/* 2CF98 8002C398 3C01800F */  lui        $at, %hi(D_800F1A74)
/* 2CF9C 8002C39C AC381A74 */  sw         $t8, %lo(D_800F1A74)($at)
/* 2CFA0 8002C3A0 3C01800F */  lui        $at, %hi(D_800F1A78)
/* 2CFA4 8002C3A4 24020001 */  addiu      $v0, $zero, 1
/* 2CFA8 8002C3A8 AC391A78 */  sw         $t9, %lo(D_800F1A78)($at)
.L8002C3AC:
/* 2CFAC 8002C3AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2CFB0 8002C3B0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2CFB4 8002C3B4 03E00008 */  jr         $ra
/* 2CFB8 8002C3B8 00000000 */   nop

glabel func_8002C3BC
/* 2CFBC 8002C3BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2CFC0 8002C3C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2CFC4 8002C3C4 3C04800B */  lui        $a0, %hi(D_800ABDD0)
/* 2CFC8 8002C3C8 2484BDD0 */  addiu      $a0, $a0, %lo(D_800ABDD0)
/* 2CFCC 8002C3CC 0C00AEDA */  jal        func_8002BB68
/* 2CFD0 8002C3D0 240500BE */   addiu     $a1, $zero, 0xbe
/* 2CFD4 8002C3D4 3C04800B */  lui        $a0, %hi(D_800ABDD0)
/* 2CFD8 8002C3D8 0C00AF6D */  jal        func_8002BDB4
/* 2CFDC 8002C3DC 2484BDD0 */   addiu     $a0, $a0, %lo(D_800ABDD0)
/* 2CFE0 8002C3E0 3C04800B */  lui        $a0, %hi(D_800ABDD0)
/* 2CFE4 8002C3E4 0C00AFA7 */  jal        func_8002BE9C
/* 2CFE8 8002C3E8 2484BDD0 */   addiu     $a0, $a0, %lo(D_800ABDD0)
/* 2CFEC 8002C3EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2CFF0 8002C3F0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2CFF4 8002C3F4 03E00008 */  jr         $ra
/* 2CFF8 8002C3F8 00000000 */   nop

glabel func_8002C3FC
/* 2CFFC 8002C3FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2D000 8002C400 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2D004 8002C404 3C04800F */  lui        $a0, %hi(D_800F10B0)
/* 2D008 8002C408 0C00B068 */  jal        func_8002C1A0
/* 2D00C 8002C40C 248410B0 */   addiu     $a0, $a0, %lo(D_800F10B0)
/* 2D010 8002C410 3C03800F */  lui        $v1, %hi(D_800F1A80)
/* 2D014 8002C414 24631A80 */  addiu      $v1, $v1, %lo(D_800F1A80)
/* 2D018 8002C418 10400003 */  beqz       $v0, .L8002C428
/* 2D01C 8002C41C AC620000 */   sw        $v0, ($v1)
/* 2D020 8002C420 10000002 */  b          .L8002C42C
/* 2D024 8002C424 24020001 */   addiu     $v0, $zero, 1
.L8002C428:
/* 2D028 8002C428 00001025 */  or         $v0, $zero, $zero
.L8002C42C:
/* 2D02C 8002C42C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2D030 8002C430 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2D034 8002C434 03E00008 */  jr         $ra
/* 2D038 8002C438 00000000 */   nop

glabel func_8002C43C
/* 2D03C 8002C43C 240E0004 */  addiu      $t6, $zero, 4
/* 2D040 8002C440 3C01800F */  lui        $at, %hi(D_800F1AC0)
/* 2D044 8002C444 03E00008 */  jr         $ra
/* 2D048 8002C448 AC2E1AC0 */   sw        $t6, %lo(D_800F1AC0)($at)

glabel func_8002C44C
/* 2D04C 8002C44C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2D050 8002C450 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2D054 8002C454 AFB00018 */  sw         $s0, 0x18($sp)
/* 2D058 8002C458 0C0025B5 */  jal        func_800096D4
/* 2D05C 8002C45C 00002025 */   or        $a0, $zero, $zero
/* 2D060 8002C460 3C04800B */  lui        $a0, %hi(D_800ABDD8)
/* 2D064 8002C464 3C05800F */  lui        $a1, %hi(D_800F1A74)
/* 2D068 8002C468 8CA51A74 */  lw         $a1, %lo(D_800F1A74)($a1)
/* 2D06C 8002C46C 0C000453 */  jal        func_8000114C
/* 2D070 8002C470 8C84BDD8 */   lw        $a0, %lo(D_800ABDD8)($a0)
/* 2D074 8002C474 3C04800B */  lui        $a0, %hi(D_800ABDD8)
/* 2D078 8002C478 0C000486 */  jal        func_80001218
/* 2D07C 8002C47C 8C84BDD8 */   lw        $a0, %lo(D_800ABDD8)($a0)
/* 2D080 8002C480 3C10800B */  lui        $s0, %hi(D_800ABDD0)
/* 2D084 8002C484 2610BDD0 */  addiu      $s0, $s0, %lo(D_800ABDD0)
/* 2D088 8002C488 0C008BF4 */  jal        func_80022FD0
/* 2D08C 8002C48C 02002025 */   or        $a0, $s0, $zero
/* 2D090 8002C490 3C04800B */  lui        $a0, %hi(D_800ABDD8)
/* 2D094 8002C494 0C0004C9 */  jal        func_80001324
/* 2D098 8002C498 8C84BDD8 */   lw        $a0, %lo(D_800ABDD8)($a0)
/* 2D09C 8002C49C 8E020000 */  lw         $v0, ($s0)
/* 2D0A0 8002C4A0 3C0FE700 */  lui        $t7, 0xe700
/* 2D0A4 8002C4A4 3C19E300 */  lui        $t9, 0xe300
/* 2D0A8 8002C4A8 244E0008 */  addiu      $t6, $v0, 8
/* 2D0AC 8002C4AC AE0E0000 */  sw         $t6, ($s0)
/* 2D0B0 8002C4B0 AC400004 */  sw         $zero, 4($v0)
/* 2D0B4 8002C4B4 AC4F0000 */  sw         $t7, ($v0)
/* 2D0B8 8002C4B8 8E020000 */  lw         $v0, ($s0)
/* 2D0BC 8002C4BC 37390A01 */  ori        $t9, $t9, 0xa01
/* 2D0C0 8002C4C0 3C08800F */  lui        $t0, %hi(D_800F1AC0)
/* 2D0C4 8002C4C4 24580008 */  addiu      $t8, $v0, 8
/* 2D0C8 8002C4C8 AE180000 */  sw         $t8, ($s0)
/* 2D0CC 8002C4CC AC400004 */  sw         $zero, 4($v0)
/* 2D0D0 8002C4D0 AC590000 */  sw         $t9, ($v0)
/* 2D0D4 8002C4D4 8D081AC0 */  lw         $t0, %lo(D_800F1AC0)($t0)
/* 2D0D8 8002C4D8 2D010005 */  sltiu      $at, $t0, 5
/* 2D0DC 8002C4DC 1020006C */  beqz       $at, .L8002C690
/* 2D0E0 8002C4E0 00084080 */   sll       $t0, $t0, 2
/* 2D0E4 8002C4E4 3C01800A */  lui        $at, %hi(D_800A58EC)
/* 2D0E8 8002C4E8 00280821 */  addu       $at, $at, $t0
/* 2D0EC 8002C4EC 8C2858EC */  lw         $t0, %lo(D_800A58EC)($at)
/* 2D0F0 8002C4F0 01000008 */  jr         $t0
/* 2D0F4 8002C4F4 00000000 */   nop
/* 2D0F8 8002C4F8 02002025 */  or         $a0, $s0, $zero
/* 2D0FC 8002C4FC 0C00AEDA */  jal        func_8002BB68
/* 2D100 8002C500 240500AA */   addiu     $a1, $zero, 0xaa
/* 2D104 8002C504 02002025 */  or         $a0, $s0, $zero
/* 2D108 8002C508 0C00AE44 */  jal        func_8002B910
/* 2D10C 8002C50C 240500FF */   addiu     $a1, $zero, 0xff
/* 2D110 8002C510 0C00AF6D */  jal        func_8002BDB4
/* 2D114 8002C514 02002025 */   or        $a0, $s0, $zero
/* 2D118 8002C518 0C00AFA7 */  jal        func_8002BE9C
/* 2D11C 8002C51C 02002025 */   or        $a0, $s0, $zero
/* 2D120 8002C520 1000005C */  b          .L8002C694
/* 2D124 8002C524 8FBF001C */   lw        $ra, 0x1c($sp)
/* 2D128 8002C528 02002025 */  or         $a0, $s0, $zero
/* 2D12C 8002C52C 0C00AEDA */  jal        func_8002BB68
/* 2D130 8002C530 240500AA */   addiu     $a1, $zero, 0xaa
/* 2D134 8002C534 02002025 */  or         $a0, $s0, $zero
/* 2D138 8002C538 0C00AE44 */  jal        func_8002B910
/* 2D13C 8002C53C 240500FF */   addiu     $a1, $zero, 0xff
/* 2D140 8002C540 0C00AF6D */  jal        func_8002BDB4
/* 2D144 8002C544 02002025 */   or        $a0, $s0, $zero
/* 2D148 8002C548 10000052 */  b          .L8002C694
/* 2D14C 8002C54C 8FBF001C */   lw        $ra, 0x1c($sp)
/* 2D150 8002C550 0C002C3F */  jal        func_8000B0FC
/* 2D154 8002C554 00000000 */   nop
/* 2D158 8002C558 3C09800F */  lui        $t1, %hi(D_800F1AC4)
/* 2D15C 8002C55C 8D291AC4 */  lw         $t1, %lo(D_800F1AC4)($t1)
/* 2D160 8002C560 240A0000 */  addiu      $t2, $zero, 0
/* 2D164 8002C564 004A3023 */  subu       $a2, $v0, $t2
/* 2D168 8002C568 0069082B */  sltu       $at, $v1, $t1
/* 2D16C 8002C56C 00C13023 */  subu       $a2, $a2, $at
/* 2D170 8002C570 24040000 */  addiu      $a0, $zero, 0
/* 2D174 8002C574 240500FF */  addiu      $a1, $zero, 0xff
/* 2D178 8002C578 0C01492E */  jal        __ll_mul
/* 2D17C 8002C57C 00693823 */   subu      $a3, $v1, $t1
/* 2D180 8002C580 00402025 */  or         $a0, $v0, $zero
/* 2D184 8002C584 00602825 */  or         $a1, $v1, $zero
/* 2D188 8002C588 24060000 */  addiu      $a2, $zero, 0
/* 2D18C 8002C58C 0C0148EE */  jal        __ull_div
/* 2D190 8002C590 2407012C */   addiu     $a3, $zero, 0x12c
/* 2D194 8002C594 00602025 */  or         $a0, $v1, $zero
/* 2D198 8002C598 04610003 */  bgez       $v1, .L8002C5A8
/* 2D19C 8002C59C 00603025 */   or        $a2, $v1, $zero
/* 2D1A0 8002C5A0 10000005 */  b          .L8002C5B8
/* 2D1A4 8002C5A4 00003025 */   or        $a2, $zero, $zero
.L8002C5A8:
/* 2D1A8 8002C5A8 28810100 */  slti       $at, $a0, 0x100
/* 2D1AC 8002C5AC 54200003 */  bnel       $at, $zero, .L8002C5BC
/* 2D1B0 8002C5B0 02002025 */   or        $a0, $s0, $zero
/* 2D1B4 8002C5B4 240600FF */  addiu      $a2, $zero, 0xff
.L8002C5B8:
/* 2D1B8 8002C5B8 02002025 */  or         $a0, $s0, $zero
.L8002C5BC:
/* 2D1BC 8002C5BC 04C10003 */  bgez       $a2, .L8002C5CC
/* 2D1C0 8002C5C0 00062843 */   sra       $a1, $a2, 1
/* 2D1C4 8002C5C4 24C10001 */  addiu      $at, $a2, 1
/* 2D1C8 8002C5C8 00012843 */  sra        $a1, $at, 1
.L8002C5CC:
/* 2D1CC 8002C5CC 0C00AEDA */  jal        func_8002BB68
/* 2D1D0 8002C5D0 AFA60024 */   sw        $a2, 0x24($sp)
/* 2D1D4 8002C5D4 8FA50024 */  lw         $a1, 0x24($sp)
/* 2D1D8 8002C5D8 0C00AE44 */  jal        func_8002B910
/* 2D1DC 8002C5DC 02002025 */   or        $a0, $s0, $zero
/* 2D1E0 8002C5E0 1000002C */  b          .L8002C694
/* 2D1E4 8002C5E4 8FBF001C */   lw        $ra, 0x1c($sp)
/* 2D1E8 8002C5E8 0C002C3F */  jal        func_8000B0FC
/* 2D1EC 8002C5EC 00000000 */   nop
/* 2D1F0 8002C5F0 3C18800F */  lui        $t8, %hi(D_800F1AC4)
/* 2D1F4 8002C5F4 8F181AC4 */  lw         $t8, %lo(D_800F1AC4)($t8)
/* 2D1F8 8002C5F8 240D012C */  addiu      $t5, $zero, 0x12c
/* 2D1FC 8002C5FC 240C0000 */  addiu      $t4, $zero, 0
/* 2D200 8002C600 01827023 */  subu       $t6, $t4, $v0
/* 2D204 8002C604 01A3082B */  sltu       $at, $t5, $v1
/* 2D208 8002C608 01A37823 */  subu       $t7, $t5, $v1
/* 2D20C 8002C60C 01C17023 */  subu       $t6, $t6, $at
/* 2D210 8002C610 01F83821 */  addu       $a3, $t7, $t8
/* 2D214 8002C614 00F8082B */  sltu       $at, $a3, $t8
/* 2D218 8002C618 002E3021 */  addu       $a2, $at, $t6
/* 2D21C 8002C61C 24080000 */  addiu      $t0, $zero, 0
/* 2D220 8002C620 00C83021 */  addu       $a2, $a2, $t0
/* 2D224 8002C624 24040000 */  addiu      $a0, $zero, 0
/* 2D228 8002C628 0C01492E */  jal        __ll_mul
/* 2D22C 8002C62C 240500FF */   addiu     $a1, $zero, 0xff
/* 2D230 8002C630 00402025 */  or         $a0, $v0, $zero
/* 2D234 8002C634 00602825 */  or         $a1, $v1, $zero
/* 2D238 8002C638 24060000 */  addiu      $a2, $zero, 0
/* 2D23C 8002C63C 0C0148EE */  jal        __ull_div
/* 2D240 8002C640 2407012C */   addiu     $a3, $zero, 0x12c
/* 2D244 8002C644 00602025 */  or         $a0, $v1, $zero
/* 2D248 8002C648 04610003 */  bgez       $v1, .L8002C658
/* 2D24C 8002C64C 00603025 */   or        $a2, $v1, $zero
/* 2D250 8002C650 10000005 */  b          .L8002C668
/* 2D254 8002C654 00003025 */   or        $a2, $zero, $zero
.L8002C658:
/* 2D258 8002C658 28810100 */  slti       $at, $a0, 0x100
/* 2D25C 8002C65C 54200003 */  bnel       $at, $zero, .L8002C66C
/* 2D260 8002C660 02002025 */   or        $a0, $s0, $zero
/* 2D264 8002C664 240600FF */  addiu      $a2, $zero, 0xff
.L8002C668:
/* 2D268 8002C668 02002025 */  or         $a0, $s0, $zero
.L8002C66C:
/* 2D26C 8002C66C 04C10003 */  bgez       $a2, .L8002C67C
/* 2D270 8002C670 00062843 */   sra       $a1, $a2, 1
/* 2D274 8002C674 24C10001 */  addiu      $at, $a2, 1
/* 2D278 8002C678 00012843 */  sra        $a1, $at, 1
.L8002C67C:
/* 2D27C 8002C67C 0C00AEDA */  jal        func_8002BB68
/* 2D280 8002C680 AFA60024 */   sw        $a2, 0x24($sp)
/* 2D284 8002C684 8FA50024 */  lw         $a1, 0x24($sp)
/* 2D288 8002C688 0C00AE44 */  jal        func_8002B910
/* 2D28C 8002C68C 02002025 */   or        $a0, $s0, $zero
.L8002C690:
/* 2D290 8002C690 8FBF001C */  lw         $ra, 0x1c($sp)
.L8002C694:
/* 2D294 8002C694 8FB00018 */  lw         $s0, 0x18($sp)
/* 2D298 8002C698 27BD0028 */  addiu      $sp, $sp, 0x28
/* 2D29C 8002C69C 03E00008 */  jr         $ra
/* 2D2A0 8002C6A0 00000000 */   nop

glabel func_8002C6A4
/* 2D2A4 8002C6A4 3C0E800F */  lui        $t6, %hi(D_800F1AC0)
/* 2D2A8 8002C6A8 8DCE1AC0 */  lw         $t6, %lo(D_800F1AC0)($t6)
/* 2D2AC 8002C6AC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2D2B0 8002C6B0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2D2B4 8002C6B4 2DC10005 */  sltiu      $at, $t6, 5
/* 2D2B8 8002C6B8 10200058 */  beqz       $at, .L8002C81C
/* 2D2BC 8002C6BC AFB00018 */   sw        $s0, 0x18($sp)
/* 2D2C0 8002C6C0 000E7080 */  sll        $t6, $t6, 2
/* 2D2C4 8002C6C4 3C01800A */  lui        $at, %hi(D_800A5900)
/* 2D2C8 8002C6C8 002E0821 */  addu       $at, $at, $t6
/* 2D2CC 8002C6CC 8C2E5900 */  lw         $t6, %lo(D_800A5900)($at)
/* 2D2D0 8002C6D0 01C00008 */  jr         $t6
/* 2D2D4 8002C6D4 00000000 */   nop
/* 2D2D8 8002C6D8 3C0F800B */  lui        $t7, %hi(D_800AD54C)
/* 2D2DC 8002C6DC 8DEFD54C */  lw         $t7, %lo(D_800AD54C)($t7)
/* 2D2E0 8002C6E0 3C10800F */  lui        $s0, %hi(D_800F1A80)
/* 2D2E4 8002C6E4 26101A80 */  addiu      $s0, $s0, %lo(D_800F1A80)
/* 2D2E8 8002C6E8 31F88000 */  andi       $t8, $t7, 0x8000
/* 2D2EC 8002C6EC 1300000A */  beqz       $t8, .L8002C718
/* 2D2F0 8002C6F0 00000000 */   nop
/* 2D2F4 8002C6F4 8E190000 */  lw         $t9, ($s0)
/* 2D2F8 8002C6F8 17200005 */  bnez       $t9, .L8002C710
/* 2D2FC 8002C6FC 00000000 */   nop
/* 2D300 8002C700 0C00AE3A */  jal        func_8002B8E8
/* 2D304 8002C704 24040003 */   addiu     $a0, $zero, 3
/* 2D308 8002C708 10000003 */  b          .L8002C718
/* 2D30C 8002C70C 00000000 */   nop
.L8002C710:
/* 2D310 8002C710 0C00AE3A */  jal        func_8002B8E8
/* 2D314 8002C714 24040002 */   addiu     $a0, $zero, 2
.L8002C718:
/* 2D318 8002C718 3C01800B */  lui        $at, %hi(D_800AD54C)
/* 2D31C 8002C71C AC20D54C */  sw         $zero, %lo(D_800AD54C)($at)
/* 2D320 8002C720 3C01800B */  lui        $at, %hi(D_800AD548)
/* 2D324 8002C724 AC20D548 */  sw         $zero, %lo(D_800AD548)($at)
/* 2D328 8002C728 3C01800B */  lui        $at, %hi(D_800AD544)
/* 2D32C 8002C72C AC20D544 */  sw         $zero, %lo(D_800AD544)($at)
/* 2D330 8002C730 3C01800B */  lui        $at, %hi(D_800AD540)
/* 2D334 8002C734 10000039 */  b          .L8002C81C
/* 2D338 8002C738 AC20D540 */   sw        $zero, %lo(D_800AD540)($at)
/* 2D33C 8002C73C 0C002C3F */  jal        func_8000B0FC
/* 2D340 8002C740 00000000 */   nop
/* 2D344 8002C744 3C08800F */  lui        $t0, %hi(D_800F1AC4)
/* 2D348 8002C748 8D081AC4 */  lw         $t0, %lo(D_800F1AC4)($t0)
/* 2D34C 8002C74C 240A0000 */  addiu      $t2, $zero, 0
/* 2D350 8002C750 004A6023 */  subu       $t4, $v0, $t2
/* 2D354 8002C754 0068082B */  sltu       $at, $v1, $t0
/* 2D358 8002C758 01816023 */  subu       $t4, $t4, $at
/* 2D35C 8002C75C 00686823 */  subu       $t5, $v1, $t0
/* 2D360 8002C760 15800002 */  bnez       $t4, .L8002C76C
/* 2D364 8002C764 2DA1005B */   sltiu     $at, $t5, 0x5b
/* 2D368 8002C768 1420002C */  bnez       $at, .L8002C81C
.L8002C76C:
/* 2D36C 8002C76C 3C10800F */   lui       $s0, %hi(D_800F1A80)
/* 2D370 8002C770 26101A80 */  addiu      $s0, $s0, %lo(D_800F1A80)
/* 2D374 8002C774 0C00B068 */  jal        func_8002C1A0
/* 2D378 8002C778 8E040000 */   lw        $a0, ($s0)
/* 2D37C 8002C77C 0C002C49 */  jal        func_8000B124
/* 2D380 8002C780 AE020000 */   sw        $v0, ($s0)
/* 2D384 8002C784 0C00AE3A */  jal        func_8002B8E8
/* 2D388 8002C788 24040001 */   addiu     $a0, $zero, 1
/* 2D38C 8002C78C 10000023 */  b          .L8002C81C
/* 2D390 8002C790 00000000 */   nop
/* 2D394 8002C794 0C002C3F */  jal        func_8000B0FC
/* 2D398 8002C798 00000000 */   nop
/* 2D39C 8002C79C 3C09800F */  lui        $t1, %hi(D_800F1AC4)
/* 2D3A0 8002C7A0 8D291AC4 */  lw         $t1, %lo(D_800F1AC4)($t1)
/* 2D3A4 8002C7A4 240E0000 */  addiu      $t6, $zero, 0
/* 2D3A8 8002C7A8 004EC023 */  subu       $t8, $v0, $t6
/* 2D3AC 8002C7AC 0069082B */  sltu       $at, $v1, $t1
/* 2D3B0 8002C7B0 0301C023 */  subu       $t8, $t8, $at
/* 2D3B4 8002C7B4 0069C823 */  subu       $t9, $v1, $t1
/* 2D3B8 8002C7B8 17000003 */  bnez       $t8, .L8002C7C8
/* 2D3BC 8002C7BC 2F21012D */   sltiu     $at, $t9, 0x12d
/* 2D3C0 8002C7C0 14200016 */  bnez       $at, .L8002C81C
/* 2D3C4 8002C7C4 00000000 */   nop
.L8002C7C8:
/* 2D3C8 8002C7C8 0C002C49 */  jal        func_8000B124
/* 2D3CC 8002C7CC 00000000 */   nop
/* 2D3D0 8002C7D0 0C00AE3A */  jal        func_8002B8E8
/* 2D3D4 8002C7D4 24040001 */   addiu     $a0, $zero, 1
/* 2D3D8 8002C7D8 10000010 */  b          .L8002C81C
/* 2D3DC 8002C7DC 00000000 */   nop
/* 2D3E0 8002C7E0 0C002C3F */  jal        func_8000B0FC
/* 2D3E4 8002C7E4 00000000 */   nop
/* 2D3E8 8002C7E8 3C08800F */  lui        $t0, %hi(D_800F1AC4)
/* 2D3EC 8002C7EC 8D081AC4 */  lw         $t0, %lo(D_800F1AC4)($t0)
/* 2D3F0 8002C7F0 240A0000 */  addiu      $t2, $zero, 0
/* 2D3F4 8002C7F4 004A6023 */  subu       $t4, $v0, $t2
/* 2D3F8 8002C7F8 0068082B */  sltu       $at, $v1, $t0
/* 2D3FC 8002C7FC 01816023 */  subu       $t4, $t4, $at
/* 2D400 8002C800 00686823 */  subu       $t5, $v1, $t0
/* 2D404 8002C804 15800003 */  bnez       $t4, .L8002C814
/* 2D408 8002C808 2DA1012D */   sltiu     $at, $t5, 0x12d
/* 2D40C 8002C80C 14200003 */  bnez       $at, .L8002C81C
/* 2D410 8002C810 00000000 */   nop
.L8002C814:
/* 2D414 8002C814 0C00B090 */  jal        func_8002C240
/* 2D418 8002C818 00000000 */   nop
.L8002C81C:
/* 2D41C 8002C81C 3C09800F */  lui        $t1, %hi(D_800F1A74)
/* 2D420 8002C820 8D291A74 */  lw         $t1, %lo(D_800F1A74)($t1)
/* 2D424 8002C824 00008025 */  or         $s0, $zero, $zero
/* 2D428 8002C828 5120000E */  beql       $t1, $zero, .L8002C864
/* 2D42C 8002C82C 8FBF001C */   lw        $ra, 0x1c($sp)
.L8002C830:
/* 2D430 8002C830 5E000004 */  bgtzl      $s0, .L8002C844
/* 2D434 8002C834 26100001 */   addiu     $s0, $s0, 1
/* 2D438 8002C838 0C0448D1 */  jal        func_80112344
/* 2D43C 8002C83C 02002025 */   or        $a0, $s0, $zero
/* 2D440 8002C840 26100001 */  addiu      $s0, $s0, 1
.L8002C844:
/* 2D444 8002C844 24010003 */  addiu      $at, $zero, 3
/* 2D448 8002C848 1601FFF9 */  bne        $s0, $at, .L8002C830
/* 2D44C 8002C84C 00000000 */   nop
/* 2D450 8002C850 0C044BC4 */  jal        func_80112F10
/* 2D454 8002C854 00000000 */   nop
/* 2D458 8002C858 0C0024D1 */  jal        func_80009344
/* 2D45C 8002C85C 00002025 */   or        $a0, $zero, $zero
/* 2D460 8002C860 8FBF001C */  lw         $ra, 0x1c($sp)
.L8002C864:
/* 2D464 8002C864 8FB00018 */  lw         $s0, 0x18($sp)
/* 2D468 8002C868 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2D46C 8002C86C 03E00008 */  jr         $ra
/* 2D470 8002C870 00000000 */   nop

glabel func_8002C874
/* 2D474 8002C874 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2D478 8002C878 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2D47C 8002C87C 0C04467D */  jal        func_801119F4
/* 2D480 8002C880 2404FFFF */   addiu     $a0, $zero, -1
/* 2D484 8002C884 3C04800F */  lui        $a0, %hi(D_800F10B0)
/* 2D488 8002C888 0C00B068 */  jal        func_8002C1A0
/* 2D48C 8002C88C 248410B0 */   addiu     $a0, $a0, %lo(D_800F10B0)
/* 2D490 8002C890 3C01800F */  lui        $at, %hi(D_800F1A80)
/* 2D494 8002C894 AC221A80 */  sw         $v0, %lo(D_800F1A80)($at)
/* 2D498 8002C898 0C002CB2 */  jal        func_8000B2C8
/* 2D49C 8002C89C 24040003 */   addiu     $a0, $zero, 3
/* 2D4A0 8002C8A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2D4A4 8002C8A4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2D4A8 8002C8A8 03E00008 */  jr         $ra
/* 2D4AC 8002C8AC 00000000 */   nop

glabel func_8002C8B0
/* 2D4B0 8002C8B0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 2D4B4 8002C8B4 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 2D4B8 8002C8B8 4487B000 */  mtc1       $a3, $f22
/* 2D4BC 8002C8BC AFBF0034 */  sw         $ra, 0x34($sp)
/* 2D4C0 8002C8C0 AFB00030 */  sw         $s0, 0x30($sp)
/* 2D4C4 8002C8C4 00C08025 */  or         $s0, $a2, $zero
/* 2D4C8 8002C8C8 F7B80028 */  sdc1       $f24, 0x28($sp)
/* 2D4CC 8002C8CC F7B40018 */  sdc1       $f20, 0x18($sp)
/* 2D4D0 8002C8D0 AFA40050 */  sw         $a0, 0x50($sp)
/* 2D4D4 8002C8D4 0C0071C5 */  jal        func_8001C714
/* 2D4D8 8002C8D8 AFA50054 */   sw        $a1, 0x54($sp)
/* 2D4DC 8002C8DC 28410004 */  slti       $at, $v0, 4
/* 2D4E0 8002C8E0 10200003 */  beqz       $at, .L8002C8F0
/* 2D4E4 8002C8E4 00000000 */   nop
/* 2D4E8 8002C8E8 100000A4 */  b          .L8002CB7C
/* 2D4EC 8002C8EC 00001025 */   or        $v0, $zero, $zero
.L8002C8F0:
/* 2D4F0 8002C8F0 3C01800A */  lui        $at, %hi(D_800A5948)
/* 2D4F4 8002C8F4 C4245948 */  lwc1       $f4, %lo(D_800A5948)($at)
/* 2D4F8 8002C8F8 3C013F80 */  lui        $at, 0x3f80
/* 2D4FC 8002C8FC 4604B03C */  c.lt.s     $f22, $f4
/* 2D500 8002C900 00000000 */  nop
/* 2D504 8002C904 45020031 */  bc1fl      .L8002C9CC
/* 2D508 8002C908 44819000 */   mtc1      $at, $f18
/* 2D50C 8002C90C 0C00EADA */  jal        func_8003AB68
/* 2D510 8002C910 00000000 */   nop
/* 2D514 8002C914 3C013DF0 */  lui        $at, 0x3df0
/* 2D518 8002C918 4481B800 */  mtc1       $at, $f23
/* 2D51C 8002C91C 44823000 */  mtc1       $v0, $f6
/* 2D520 8002C920 3C013FE0 */  lui        $at, 0x3fe0
/* 2D524 8002C924 4481C800 */  mtc1       $at, $f25
/* 2D528 8002C928 4480B000 */  mtc1       $zero, $f22
/* 2D52C 8002C92C 4480C000 */  mtc1       $zero, $f24
/* 2D530 8002C930 04410006 */  bgez       $v0, .L8002C94C
/* 2D534 8002C934 46803221 */   cvt.d.w   $f8, $f6
/* 2D538 8002C938 3C0141F0 */  lui        $at, 0x41f0
/* 2D53C 8002C93C 44815800 */  mtc1       $at, $f11
/* 2D540 8002C940 44805000 */  mtc1       $zero, $f10
/* 2D544 8002C944 00000000 */  nop
/* 2D548 8002C948 462A4200 */  add.d      $f8, $f8, $f10
.L8002C94C:
/* 2D54C 8002C94C 46364402 */  mul.d      $f16, $f8, $f22
/* 2D550 8002C950 3C01800A */  lui        $at, %hi(D_800A5950)
/* 2D554 8002C954 D4245950 */  ldc1       $f4, %lo(D_800A5950)($at)
/* 2D558 8002C958 3C013F00 */  lui        $at, 0x3f00
/* 2D55C 8002C95C 44814000 */  mtc1       $at, $f8
/* 2D560 8002C960 00000000 */  nop
/* 2D564 8002C964 E7A80044 */  swc1       $f8, 0x44($sp)
/* 2D568 8002C968 46388481 */  sub.d      $f18, $f16, $f24
/* 2D56C 8002C96C 46249182 */  mul.d      $f6, $f18, $f4
/* 2D570 8002C970 462032A0 */  cvt.s.d    $f10, $f6
/* 2D574 8002C974 0C00EADA */  jal        func_8003AB68
/* 2D578 8002C978 E7AA0040 */   swc1      $f10, 0x40($sp)
/* 2D57C 8002C97C 44828000 */  mtc1       $v0, $f16
/* 2D580 8002C980 3C014120 */  lui        $at, 0x4120
/* 2D584 8002C984 44810000 */  mtc1       $at, $f0
/* 2D588 8002C988 04410006 */  bgez       $v0, .L8002C9A4
/* 2D58C 8002C98C 468084A1 */   cvt.d.w   $f18, $f16
/* 2D590 8002C990 3C0141F0 */  lui        $at, 0x41f0
/* 2D594 8002C994 44812800 */  mtc1       $at, $f5
/* 2D598 8002C998 44802000 */  mtc1       $zero, $f4
/* 2D59C 8002C99C 00000000 */  nop
/* 2D5A0 8002C9A0 46249480 */  add.d      $f18, $f18, $f4
.L8002C9A4:
/* 2D5A4 8002C9A4 46369182 */  mul.d      $f6, $f18, $f22
/* 2D5A8 8002C9A8 3C01800A */  lui        $at, %hi(D_800A5958)
/* 2D5AC 8002C9AC D4285958 */  ldc1       $f8, %lo(D_800A5958)($at)
/* 2D5B0 8002C9B0 46000506 */  mov.s      $f20, $f0
/* 2D5B4 8002C9B4 46383281 */  sub.d      $f10, $f6, $f24
/* 2D5B8 8002C9B8 46285402 */  mul.d      $f16, $f10, $f8
/* 2D5BC 8002C9BC 46208120 */  cvt.s.d    $f4, $f16
/* 2D5C0 8002C9C0 1000004B */  b          .L8002CAF0
/* 2D5C4 8002C9C4 E7A40048 */   swc1      $f4, 0x48($sp)
/* 2D5C8 8002C9C8 44819000 */  mtc1       $at, $f18
.L8002C9CC:
/* 2D5CC 8002C9CC 0C00EADA */  jal        func_8003AB68
/* 2D5D0 8002C9D0 46169503 */   div.s     $f20, $f18, $f22
/* 2D5D4 8002C9D4 3C013DF0 */  lui        $at, 0x3df0
/* 2D5D8 8002C9D8 4481B800 */  mtc1       $at, $f23
/* 2D5DC 8002C9DC 44823000 */  mtc1       $v0, $f6
/* 2D5E0 8002C9E0 3C013FE0 */  lui        $at, 0x3fe0
/* 2D5E4 8002C9E4 4481C800 */  mtc1       $at, $f25
/* 2D5E8 8002C9E8 4480B000 */  mtc1       $zero, $f22
/* 2D5EC 8002C9EC 4480C000 */  mtc1       $zero, $f24
/* 2D5F0 8002C9F0 04410006 */  bgez       $v0, .L8002CA0C
/* 2D5F4 8002C9F4 468032A1 */   cvt.d.w   $f10, $f6
/* 2D5F8 8002C9F8 3C0141F0 */  lui        $at, 0x41f0
/* 2D5FC 8002C9FC 44814800 */  mtc1       $at, $f9
/* 2D600 8002CA00 44804000 */  mtc1       $zero, $f8
/* 2D604 8002CA04 00000000 */  nop
/* 2D608 8002CA08 46285280 */  add.d      $f10, $f10, $f8
.L8002CA0C:
/* 2D60C 8002CA0C 46365402 */  mul.d      $f16, $f10, $f22
/* 2D610 8002CA10 3C01800A */  lui        $at, %hi(D_800A5960)
/* 2D614 8002CA14 D4325960 */  ldc1       $f18, %lo(D_800A5960)($at)
/* 2D618 8002CA18 C6080000 */  lwc1       $f8, ($s0)
/* 2D61C 8002CA1C 46388101 */  sub.d      $f4, $f16, $f24
/* 2D620 8002CA20 46322182 */  mul.d      $f6, $f4, $f18
/* 2D624 8002CA24 00000000 */  nop
/* 2D628 8002CA28 46144282 */  mul.s      $f10, $f8, $f20
/* 2D62C 8002CA2C 46005421 */  cvt.d.s    $f16, $f10
/* 2D630 8002CA30 46303100 */  add.d      $f4, $f6, $f16
/* 2D634 8002CA34 462024A0 */  cvt.s.d    $f18, $f4
/* 2D638 8002CA38 0C00EADA */  jal        func_8003AB68
/* 2D63C 8002CA3C E6120000 */   swc1      $f18, ($s0)
/* 2D640 8002CA40 44824000 */  mtc1       $v0, $f8
/* 2D644 8002CA44 3C0141F0 */  lui        $at, 0x41f0
/* 2D648 8002CA48 04410005 */  bgez       $v0, .L8002CA60
/* 2D64C 8002CA4C 468042A1 */   cvt.d.w   $f10, $f8
/* 2D650 8002CA50 44813800 */  mtc1       $at, $f7
/* 2D654 8002CA54 44803000 */  mtc1       $zero, $f6
/* 2D658 8002CA58 00000000 */  nop
/* 2D65C 8002CA5C 46265280 */  add.d      $f10, $f10, $f6
.L8002CA60:
/* 2D660 8002CA60 46365402 */  mul.d      $f16, $f10, $f22
/* 2D664 8002CA64 3C01800A */  lui        $at, %hi(D_800A5968)
/* 2D668 8002CA68 D4325968 */  ldc1       $f18, %lo(D_800A5968)($at)
/* 2D66C 8002CA6C C6060004 */  lwc1       $f6, 4($s0)
/* 2D670 8002CA70 46388101 */  sub.d      $f4, $f16, $f24
/* 2D674 8002CA74 46322202 */  mul.d      $f8, $f4, $f18
/* 2D678 8002CA78 00000000 */  nop
/* 2D67C 8002CA7C 46143282 */  mul.s      $f10, $f6, $f20
/* 2D680 8002CA80 46005421 */  cvt.d.s    $f16, $f10
/* 2D684 8002CA84 46304100 */  add.d      $f4, $f8, $f16
/* 2D688 8002CA88 462024A0 */  cvt.s.d    $f18, $f4
/* 2D68C 8002CA8C 0C00EADA */  jal        func_8003AB68
/* 2D690 8002CA90 E6120004 */   swc1      $f18, 4($s0)
/* 2D694 8002CA94 44823000 */  mtc1       $v0, $f6
/* 2D698 8002CA98 3C014120 */  lui        $at, 0x4120
/* 2D69C 8002CA9C 44810000 */  mtc1       $at, $f0
/* 2D6A0 8002CAA0 04410006 */  bgez       $v0, .L8002CABC
/* 2D6A4 8002CAA4 468032A1 */   cvt.d.w   $f10, $f6
/* 2D6A8 8002CAA8 3C0141F0 */  lui        $at, 0x41f0
/* 2D6AC 8002CAAC 44814800 */  mtc1       $at, $f9
/* 2D6B0 8002CAB0 44804000 */  mtc1       $zero, $f8
/* 2D6B4 8002CAB4 00000000 */  nop
/* 2D6B8 8002CAB8 46285280 */  add.d      $f10, $f10, $f8
.L8002CABC:
/* 2D6BC 8002CABC 46365402 */  mul.d      $f16, $f10, $f22
/* 2D6C0 8002CAC0 3C01800A */  lui        $at, %hi(D_800A5970)
/* 2D6C4 8002CAC4 D4325970 */  ldc1       $f18, %lo(D_800A5970)($at)
/* 2D6C8 8002CAC8 C6080008 */  lwc1       $f8, 8($s0)
/* 2D6CC 8002CACC 46388101 */  sub.d      $f4, $f16, $f24
/* 2D6D0 8002CAD0 46322182 */  mul.d      $f6, $f4, $f18
/* 2D6D4 8002CAD4 00000000 */  nop
/* 2D6D8 8002CAD8 46144282 */  mul.s      $f10, $f8, $f20
/* 2D6DC 8002CADC 46005421 */  cvt.d.s    $f16, $f10
/* 2D6E0 8002CAE0 4600A502 */  mul.s      $f20, $f20, $f0
/* 2D6E4 8002CAE4 46303100 */  add.d      $f4, $f6, $f16
/* 2D6E8 8002CAE8 462024A0 */  cvt.s.d    $f18, $f4
/* 2D6EC 8002CAEC E6120008 */  swc1       $f18, 8($s0)
.L8002CAF0:
/* 2D6F0 8002CAF0 3C01800A */  lui        $at, %hi(D_800A5978)
/* 2D6F4 8002CAF4 C4285978 */  lwc1       $f8, %lo(D_800A5978)($at)
/* 2D6F8 8002CAF8 02002025 */  or         $a0, $s0, $zero
/* 2D6FC 8002CAFC 4608A03C */  c.lt.s     $f20, $f8
/* 2D700 8002CB00 00000000 */  nop
/* 2D704 8002CB04 45000003 */  bc1f       .L8002CB14
/* 2D708 8002CB08 00000000 */   nop
/* 2D70C 8002CB0C 1000001B */  b          .L8002CB7C
/* 2D710 8002CB10 24020001 */   addiu     $v0, $zero, 1
.L8002CB14:
/* 2D714 8002CB14 0C00E939 */  jal        func_8003A4E4
/* 2D718 8002CB18 27A5004C */   addiu     $a1, $sp, 0x4c
/* 2D71C 8002CB1C 3C014120 */  lui        $at, 0x4120
/* 2D720 8002CB20 44810000 */  mtc1       $at, $f0
/* 2D724 8002CB24 00000000 */  nop
/* 2D728 8002CB28 4600A03C */  c.lt.s     $f20, $f0
/* 2D72C 8002CB2C 00000000 */  nop
/* 2D730 8002CB30 45020006 */  bc1fl      .L8002CB4C
/* 2D734 8002CB34 4600018D */   trunc.w.s $f6, $f0
/* 2D738 8002CB38 4600A28D */  trunc.w.s  $f10, $f20
/* 2D73C 8002CB3C 440F5000 */  mfc1       $t7, $f10
/* 2D740 8002CB40 10000005 */  b          .L8002CB58
/* 2D744 8002CB44 A3AF004F */   sb        $t7, 0x4f($sp)
/* 2D748 8002CB48 4600018D */  trunc.w.s  $f6, $f0
.L8002CB4C:
/* 2D74C 8002CB4C 44193000 */  mfc1       $t9, $f6
/* 2D750 8002CB50 00000000 */  nop
/* 2D754 8002CB54 A3B9004F */  sb         $t9, 0x4f($sp)
.L8002CB58:
/* 2D758 8002CB58 8BA8004C */  lwl        $t0, 0x4c($sp)
/* 2D75C 8002CB5C 9BA8004F */  lwr        $t0, 0x4f($sp)
/* 2D760 8002CB60 8FA40050 */  lw         $a0, 0x50($sp)
/* 2D764 8002CB64 8FA50054 */  lw         $a1, 0x54($sp)
/* 2D768 8002CB68 ABA80008 */  swl        $t0, 8($sp)
/* 2D76C 8002CB6C BBA8000B */  swr        $t0, 0xb($sp)
/* 2D770 8002CB70 0C007201 */  jal        func_8001C804
/* 2D774 8002CB74 8FA60008 */   lw        $a2, 8($sp)
/* 2D778 8002CB78 24020001 */  addiu      $v0, $zero, 1
.L8002CB7C:
/* 2D77C 8002CB7C 8FBF0034 */  lw         $ra, 0x34($sp)
/* 2D780 8002CB80 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 2D784 8002CB84 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 2D788 8002CB88 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 2D78C 8002CB8C 8FB00030 */  lw         $s0, 0x30($sp)
/* 2D790 8002CB90 03E00008 */  jr         $ra
/* 2D794 8002CB94 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_8002CB98
/* 2D798 8002CB98 03E00008 */  jr         $ra
/* 2D79C 8002CB9C 00000000 */   nop

glabel func_8002CBA0
/* 2D7A0 8002CBA0 03E00008 */  jr         $ra
/* 2D7A4 8002CBA4 00000000 */   nop

glabel func_8002CBA8
/* 2D7A8 8002CBA8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2D7AC 8002CBAC AFBF0014 */  sw         $ra, 0x14($sp)
/* 2D7B0 8002CBB0 948E0036 */  lhu        $t6, 0x36($a0)
/* 2D7B4 8002CBB4 00802825 */  or         $a1, $a0, $zero
/* 2D7B8 8002CBB8 3C01800A */  lui        $at, %hi(D_800A597C)
/* 2D7BC 8002CBBC 31CF00F0 */  andi       $t7, $t6, 0xf0
/* 2D7C0 8002CBC0 15E00009 */  bnez       $t7, .L8002CBE8
/* 2D7C4 8002CBC4 00000000 */   nop
/* 2D7C8 8002CBC8 C4840024 */  lwc1       $f4, 0x24($a0)
/* 2D7CC 8002CBCC C426597C */  lwc1       $f6, %lo(D_800A597C)($at)
/* 2D7D0 8002CBD0 3C04800F */  lui        $a0, %hi(D_800F1B20)
/* 2D7D4 8002CBD4 3C013E00 */  lui        $at, 0x3e00
/* 2D7D8 8002CBD8 4606203C */  c.lt.s     $f4, $f6
/* 2D7DC 8002CBDC 24841B20 */  addiu      $a0, $a0, %lo(D_800F1B20)
/* 2D7E0 8002CBE0 45020004 */  bc1fl      .L8002CBF4
/* 2D7E4 8002CBE4 44810000 */   mtc1      $at, $f0
.L8002CBE8:
/* 2D7E8 8002CBE8 1000002E */  b          .L8002CCA4
/* 2D7EC 8002CBEC 00001025 */   or        $v0, $zero, $zero
/* 2D7F0 8002CBF0 44810000 */  mtc1       $at, $f0
.L8002CBF4:
/* 2D7F4 8002CBF4 3C01800F */  lui        $at, %hi(D_800F1B44)
/* 2D7F8 8002CBF8 C42A1B44 */  lwc1       $f10, %lo(D_800F1B44)($at)
/* 2D7FC 8002CBFC C4A8004C */  lwc1       $f8, 0x4c($a1)
/* 2D800 8002CC00 3C01800F */  lui        $at, %hi(D_800F1B40)
/* 2D804 8002CC04 C4A60044 */  lwc1       $f6, 0x44($a1)
/* 2D808 8002CC08 460A4400 */  add.s      $f16, $f8, $f10
/* 2D80C 8002CC0C C4281B40 */  lwc1       $f8, %lo(D_800F1B40)($at)
/* 2D810 8002CC10 3C010001 */  lui        $at, 1
/* 2D814 8002CC14 3421E240 */  ori        $at, $at, 0xe240
/* 2D818 8002CC18 46083280 */  add.s      $f10, $f6, $f8
/* 2D81C 8002CC1C 46008482 */  mul.s      $f18, $f16, $f0
/* 2D820 8002CC20 00000000 */  nop
/* 2D824 8002CC24 46005402 */  mul.s      $f16, $f10, $f0
/* 2D828 8002CC28 4600910D */  trunc.w.s  $f4, $f18
/* 2D82C 8002CC2C 4600848D */  trunc.w.s  $f18, $f16
/* 2D830 8002CC30 44192000 */  mfc1       $t9, $f4
/* 2D834 8002CC34 440A9000 */  mfc1       $t2, $f18
/* 2D838 8002CC38 001940C0 */  sll        $t0, $t9, 3
/* 2D83C 8002CC3C 01194021 */  addu       $t0, $t0, $t9
/* 2D840 8002CC40 000A5880 */  sll        $t3, $t2, 2
/* 2D844 8002CC44 016A5823 */  subu       $t3, $t3, $t2
/* 2D848 8002CC48 000B5880 */  sll        $t3, $t3, 2
/* 2D84C 8002CC4C 016A5823 */  subu       $t3, $t3, $t2
/* 2D850 8002CC50 000B5880 */  sll        $t3, $t3, 2
/* 2D854 8002CC54 00084080 */  sll        $t0, $t0, 2
/* 2D858 8002CC58 01194023 */  subu       $t0, $t0, $t9
/* 2D85C 8002CC5C 016A5823 */  subu       $t3, $t3, $t2
/* 2D860 8002CC60 000B5880 */  sll        $t3, $t3, 2
/* 2D864 8002CC64 00084080 */  sll        $t0, $t0, 2
/* 2D868 8002CC68 01194023 */  subu       $t0, $t0, $t9
/* 2D86C 8002CC6C 016A5821 */  addu       $t3, $t3, $t2
/* 2D870 8002CC70 010B1021 */  addu       $v0, $t0, $t3
/* 2D874 8002CC74 00411021 */  addu       $v0, $v0, $at
/* 2D878 8002CC78 14400003 */  bnez       $v0, .L8002CC88
/* 2D87C 8002CC7C 00403025 */   or        $a2, $v0, $zero
/* 2D880 8002CC80 10000001 */  b          .L8002CC88
/* 2D884 8002CC84 24060001 */   addiu     $a2, $zero, 1
.L8002CC88:
/* 2D888 8002CC88 0C010695 */  jal        func_80041A54
/* 2D88C 8002CC8C AFA6001C */   sw        $a2, 0x1c($sp)
/* 2D890 8002CC90 10400003 */  beqz       $v0, .L8002CCA0
/* 2D894 8002CC94 8FA6001C */   lw        $a2, 0x1c($sp)
/* 2D898 8002CC98 10000002 */  b          .L8002CCA4
/* 2D89C 8002CC9C 00C01025 */   or        $v0, $a2, $zero
.L8002CCA0:
/* 2D8A0 8002CCA0 00001025 */  or         $v0, $zero, $zero
.L8002CCA4:
/* 2D8A4 8002CCA4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2D8A8 8002CCA8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2D8AC 8002CCAC 03E00008 */  jr         $ra
/* 2D8B0 8002CCB0 00000000 */   nop

glabel func_8002CCB4
/* 2D8B4 8002CCB4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2D8B8 8002CCB8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2D8BC 8002CCBC AFA40018 */  sw         $a0, 0x18($sp)
/* 2D8C0 8002CCC0 8CA60000 */  lw         $a2, ($a1)
/* 2D8C4 8002CCC4 3C04800F */  lui        $a0, %hi(D_800F1B20)
/* 2D8C8 8002CCC8 00A03825 */  or         $a3, $a1, $zero
/* 2D8CC 8002CCCC 10C00006 */  beqz       $a2, .L8002CCE8
/* 2D8D0 8002CCD0 24841B20 */   addiu     $a0, $a0, %lo(D_800F1B20)
/* 2D8D4 8002CCD4 8FA50018 */  lw         $a1, 0x18($sp)
/* 2D8D8 8002CCD8 0C0107CF */  jal        func_80041F3C
/* 2D8DC 8002CCDC AFA7001C */   sw        $a3, 0x1c($sp)
/* 2D8E0 8002CCE0 8FA7001C */  lw         $a3, 0x1c($sp)
/* 2D8E4 8002CCE4 ACE00000 */  sw         $zero, ($a3)
.L8002CCE8:
/* 2D8E8 8002CCE8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2D8EC 8002CCEC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2D8F0 8002CCF0 03E00008 */  jr         $ra
/* 2D8F4 8002CCF4 00000000 */   nop

glabel func_8002CCF8
/* 2D8F8 8002CCF8 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 2D8FC 8002CCFC AFBF0034 */  sw         $ra, 0x34($sp)
/* 2D900 8002CD00 AFB60030 */  sw         $s6, 0x30($sp)
/* 2D904 8002CD04 AFB5002C */  sw         $s5, 0x2c($sp)
/* 2D908 8002CD08 AFB40028 */  sw         $s4, 0x28($sp)
/* 2D90C 8002CD0C AFB30024 */  sw         $s3, 0x24($sp)
/* 2D910 8002CD10 AFB20020 */  sw         $s2, 0x20($sp)
/* 2D914 8002CD14 AFB1001C */  sw         $s1, 0x1c($sp)
/* 2D918 8002CD18 AFB00018 */  sw         $s0, 0x18($sp)
/* 2D91C 8002CD1C 3C01800A */  lui        $at, %hi(D_800A5980)
/* 2D920 8002CD20 C4265980 */  lwc1       $f6, %lo(D_800A5980)($at)
/* 2D924 8002CD24 C4840024 */  lwc1       $f4, 0x24($a0)
/* 2D928 8002CD28 3C15800F */  lui        $s5, %hi(D_800F1B20)
/* 2D92C 8002CD2C 00808825 */  or         $s1, $a0, $zero
/* 2D930 8002CD30 4606203C */  c.lt.s     $f4, $f6
/* 2D934 8002CD34 26B51B20 */  addiu      $s5, $s5, %lo(D_800F1B20)
/* 2D938 8002CD38 3C013E00 */  lui        $at, 0x3e00
/* 2D93C 8002CD3C 0000A025 */  or         $s4, $zero, $zero
/* 2D940 8002CD40 45000003 */  bc1f       .L8002CD50
/* 2D944 8002CD44 02A02025 */   or        $a0, $s5, $zero
/* 2D948 8002CD48 10000057 */  b          .L8002CEA8
/* 2D94C 8002CD4C 00001025 */   or        $v0, $zero, $zero
.L8002CD50:
/* 2D950 8002CD50 44810000 */  mtc1       $at, $f0
/* 2D954 8002CD54 3C01800F */  lui        $at, %hi(D_800F1B44)
/* 2D958 8002CD58 C42A1B44 */  lwc1       $f10, %lo(D_800F1B44)($at)
/* 2D95C 8002CD5C C628004C */  lwc1       $f8, 0x4c($s1)
/* 2D960 8002CD60 3C01800F */  lui        $at, %hi(D_800F1B40)
/* 2D964 8002CD64 C6260044 */  lwc1       $f6, 0x44($s1)
/* 2D968 8002CD68 460A4400 */  add.s      $f16, $f8, $f10
/* 2D96C 8002CD6C C4281B40 */  lwc1       $f8, %lo(D_800F1B40)($at)
/* 2D970 8002CD70 3C010001 */  lui        $at, 1
/* 2D974 8002CD74 3421E240 */  ori        $at, $at, 0xe240
/* 2D978 8002CD78 46083280 */  add.s      $f10, $f6, $f8
/* 2D97C 8002CD7C 46008482 */  mul.s      $f18, $f16, $f0
/* 2D980 8002CD80 00000000 */  nop
/* 2D984 8002CD84 46005402 */  mul.s      $f16, $f10, $f0
/* 2D988 8002CD88 4600910D */  trunc.w.s  $f4, $f18
/* 2D98C 8002CD8C 4600848D */  trunc.w.s  $f18, $f16
/* 2D990 8002CD90 440F2000 */  mfc1       $t7, $f4
/* 2D994 8002CD94 44089000 */  mfc1       $t0, $f18
/* 2D998 8002CD98 000FC0C0 */  sll        $t8, $t7, 3
/* 2D99C 8002CD9C 030FC021 */  addu       $t8, $t8, $t7
/* 2D9A0 8002CDA0 00084880 */  sll        $t1, $t0, 2
/* 2D9A4 8002CDA4 01284823 */  subu       $t1, $t1, $t0
/* 2D9A8 8002CDA8 00094880 */  sll        $t1, $t1, 2
/* 2D9AC 8002CDAC 01284823 */  subu       $t1, $t1, $t0
/* 2D9B0 8002CDB0 00094880 */  sll        $t1, $t1, 2
/* 2D9B4 8002CDB4 0018C080 */  sll        $t8, $t8, 2
/* 2D9B8 8002CDB8 030FC023 */  subu       $t8, $t8, $t7
/* 2D9BC 8002CDBC 01284823 */  subu       $t1, $t1, $t0
/* 2D9C0 8002CDC0 00094880 */  sll        $t1, $t1, 2
/* 2D9C4 8002CDC4 0018C080 */  sll        $t8, $t8, 2
/* 2D9C8 8002CDC8 030FC023 */  subu       $t8, $t8, $t7
/* 2D9CC 8002CDCC 01284821 */  addu       $t1, $t1, $t0
/* 2D9D0 8002CDD0 03091021 */  addu       $v0, $t8, $t1
/* 2D9D4 8002CDD4 00411021 */  addu       $v0, $v0, $at
/* 2D9D8 8002CDD8 14400003 */  bnez       $v0, .L8002CDE8
/* 2D9DC 8002CDDC 00409825 */   or        $s3, $v0, $zero
/* 2D9E0 8002CDE0 10000001 */  b          .L8002CDE8
/* 2D9E4 8002CDE4 24130001 */   addiu     $s3, $zero, 1
.L8002CDE8:
/* 2D9E8 8002CDE8 0C01081E */  jal        func_80042078
/* 2D9EC 8002CDEC 02602825 */   or        $a1, $s3, $zero
/* 2D9F0 8002CDF0 1040002C */  beqz       $v0, .L8002CEA4
/* 2D9F4 8002CDF4 00408025 */   or        $s0, $v0, $zero
/* 2D9F8 8002CDF8 24160086 */  addiu      $s6, $zero, 0x86
/* 2D9FC 8002CDFC 27B20040 */  addiu      $s2, $sp, 0x40
.L8002CE00:
/* 2DA00 8002CE00 50510024 */  beql       $v0, $s1, .L8002CE94
/* 2DA04 8002CE04 02A02025 */   or        $a0, $s5, $zero
/* 2DA08 8002CE08 944A0036 */  lhu        $t2, 0x36($v0)
/* 2DA0C 8002CE0C 314B00C0 */  andi       $t3, $t2, 0xc0
/* 2DA10 8002CE10 55600020 */  bnel       $t3, $zero, .L8002CE94
/* 2DA14 8002CE14 02A02025 */   or        $a0, $s5, $zero
/* 2DA18 8002CE18 C6040044 */  lwc1       $f4, 0x44($s0)
/* 2DA1C 8002CE1C C6260044 */  lwc1       $f6, 0x44($s1)
/* 2DA20 8002CE20 02402025 */  or         $a0, $s2, $zero
/* 2DA24 8002CE24 46062201 */  sub.s      $f8, $f4, $f6
/* 2DA28 8002CE28 E7A80040 */  swc1       $f8, 0x40($sp)
/* 2DA2C 8002CE2C C6300048 */  lwc1       $f16, 0x48($s1)
/* 2DA30 8002CE30 C60A0048 */  lwc1       $f10, 0x48($s0)
/* 2DA34 8002CE34 46105481 */  sub.s      $f18, $f10, $f16
/* 2DA38 8002CE38 E7B20044 */  swc1       $f18, 0x44($sp)
/* 2DA3C 8002CE3C C626004C */  lwc1       $f6, 0x4c($s1)
/* 2DA40 8002CE40 C604004C */  lwc1       $f4, 0x4c($s0)
/* 2DA44 8002CE44 46062201 */  sub.s      $f8, $f4, $f6
/* 2DA48 8002CE48 0C00E974 */  jal        func_8003A5D0
/* 2DA4C 8002CE4C E7A80048 */   swc1      $f8, 0x48($sp)
/* 2DA50 8002CE50 C62A0024 */  lwc1       $f10, 0x24($s1)
/* 2DA54 8002CE54 C6100024 */  lwc1       $f16, 0x24($s0)
/* 2DA58 8002CE58 46105480 */  add.s      $f18, $f10, $f16
/* 2DA5C 8002CE5C 4600903C */  c.lt.s     $f18, $f0
/* 2DA60 8002CE60 00000000 */  nop
/* 2DA64 8002CE64 4503000B */  bc1tl      .L8002CE94
/* 2DA68 8002CE68 02A02025 */   or        $a0, $s5, $zero
/* 2DA6C 8002CE6C 960C0034 */  lhu        $t4, 0x34($s0)
/* 2DA70 8002CE70 0200A025 */  or         $s4, $s0, $zero
/* 2DA74 8002CE74 02202025 */  or         $a0, $s1, $zero
/* 2DA78 8002CE78 16CC0005 */  bne        $s6, $t4, .L8002CE90
/* 2DA7C 8002CE7C 02002825 */   or        $a1, $s0, $zero
/* 2DA80 8002CE80 44070000 */  mfc1       $a3, $f0
/* 2DA84 8002CE84 0C00B22C */  jal        func_8002C8B0
/* 2DA88 8002CE88 02403025 */   or        $a2, $s2, $zero
/* 2DA8C 8002CE8C 10400005 */  beqz       $v0, .L8002CEA4
.L8002CE90:
/* 2DA90 8002CE90 02A02025 */   or        $a0, $s5, $zero
.L8002CE94:
/* 2DA94 8002CE94 0C01082D */  jal        func_800420B4
/* 2DA98 8002CE98 02602825 */   or        $a1, $s3, $zero
/* 2DA9C 8002CE9C 1440FFD8 */  bnez       $v0, .L8002CE00
/* 2DAA0 8002CEA0 00408025 */   or        $s0, $v0, $zero
.L8002CEA4:
/* 2DAA4 8002CEA4 02801025 */  or         $v0, $s4, $zero
.L8002CEA8:
/* 2DAA8 8002CEA8 8FBF0034 */  lw         $ra, 0x34($sp)
/* 2DAAC 8002CEAC 8FB00018 */  lw         $s0, 0x18($sp)
/* 2DAB0 8002CEB0 8FB1001C */  lw         $s1, 0x1c($sp)
/* 2DAB4 8002CEB4 8FB20020 */  lw         $s2, 0x20($sp)
/* 2DAB8 8002CEB8 8FB30024 */  lw         $s3, 0x24($sp)
/* 2DABC 8002CEBC 8FB40028 */  lw         $s4, 0x28($sp)
/* 2DAC0 8002CEC0 8FB5002C */  lw         $s5, 0x2c($sp)
/* 2DAC4 8002CEC4 8FB60030 */  lw         $s6, 0x30($sp)
/* 2DAC8 8002CEC8 03E00008 */  jr         $ra
/* 2DACC 8002CECC 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_8002CED0
/* 2DAD0 8002CED0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2DAD4 8002CED4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2DAD8 8002CED8 0C00EADA */  jal        func_8003AB68
/* 2DADC 8002CEDC 00000000 */   nop
/* 2DAE0 8002CEE0 44822000 */  mtc1       $v0, $f4
/* 2DAE4 8002CEE4 44805000 */  mtc1       $zero, $f10
/* 2DAE8 8002CEE8 04410006 */  bgez       $v0, .L8002CF04
/* 2DAEC 8002CEEC 468021A1 */   cvt.d.w   $f6, $f4
/* 2DAF0 8002CEF0 3C0141F0 */  lui        $at, 0x41f0
/* 2DAF4 8002CEF4 44814800 */  mtc1       $at, $f9
/* 2DAF8 8002CEF8 44804000 */  mtc1       $zero, $f8
/* 2DAFC 8002CEFC 00000000 */  nop
/* 2DB00 8002CF00 46283180 */  add.d      $f6, $f6, $f8
.L8002CF04:
/* 2DB04 8002CF04 3C013DF0 */  lui        $at, 0x3df0
/* 2DB08 8002CF08 44815800 */  mtc1       $at, $f11
/* 2DB0C 8002CF0C 3C013FE0 */  lui        $at, 0x3fe0
/* 2DB10 8002CF10 44819800 */  mtc1       $at, $f19
/* 2DB14 8002CF14 462A3402 */  mul.d      $f16, $f6, $f10
/* 2DB18 8002CF18 44809000 */  mtc1       $zero, $f18
/* 2DB1C 8002CF1C 3C014020 */  lui        $at, 0x4020
/* 2DB20 8002CF20 44814800 */  mtc1       $at, $f9
/* 2DB24 8002CF24 44804000 */  mtc1       $zero, $f8
/* 2DB28 8002CF28 3C01800F */  lui        $at, %hi(D_800F1B40)
/* 2DB2C 8002CF2C 46309101 */  sub.d      $f4, $f18, $f16
/* 2DB30 8002CF30 46282182 */  mul.d      $f6, $f4, $f8
/* 2DB34 8002CF34 462032A0 */  cvt.s.d    $f10, $f6
/* 2DB38 8002CF38 0C00EADA */  jal        func_8003AB68
/* 2DB3C 8002CF3C E42A1B40 */   swc1      $f10, %lo(D_800F1B40)($at)
/* 2DB40 8002CF40 44829000 */  mtc1       $v0, $f18
/* 2DB44 8002CF44 44804000 */  mtc1       $zero, $f8
/* 2DB48 8002CF48 04410006 */  bgez       $v0, .L8002CF64
/* 2DB4C 8002CF4C 46809421 */   cvt.d.w   $f16, $f18
/* 2DB50 8002CF50 3C0141F0 */  lui        $at, 0x41f0
/* 2DB54 8002CF54 44812800 */  mtc1       $at, $f5
/* 2DB58 8002CF58 44802000 */  mtc1       $zero, $f4
/* 2DB5C 8002CF5C 00000000 */  nop
/* 2DB60 8002CF60 46248400 */  add.d      $f16, $f16, $f4
.L8002CF64:
/* 2DB64 8002CF64 3C013DF0 */  lui        $at, 0x3df0
/* 2DB68 8002CF68 44814800 */  mtc1       $at, $f9
/* 2DB6C 8002CF6C 3C013FE0 */  lui        $at, 0x3fe0
/* 2DB70 8002CF70 44815800 */  mtc1       $at, $f11
/* 2DB74 8002CF74 46288182 */  mul.d      $f6, $f16, $f8
/* 2DB78 8002CF78 44805000 */  mtc1       $zero, $f10
/* 2DB7C 8002CF7C 3C014020 */  lui        $at, 0x4020
/* 2DB80 8002CF80 44812800 */  mtc1       $at, $f5
/* 2DB84 8002CF84 44802000 */  mtc1       $zero, $f4
/* 2DB88 8002CF88 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2DB8C 8002CF8C 3C01800F */  lui        $at, 0x800f
/* 2DB90 8002CF90 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2DB94 8002CF94 46265481 */  sub.d      $f18, $f10, $f6
/* 2DB98 8002CF98 46249402 */  mul.d      $f16, $f18, $f4
/* 2DB9C 8002CF9C 46208220 */  cvt.s.d    $f8, $f16
/* 2DBA0 8002CFA0 03E00008 */  jr         $ra
/* 2DBA4 8002CFA4 E4281B44 */   swc1      $f8, 0x1b44($at)

glabel func_8002CFA8
/* 2DBA8 8002CFA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2DBAC 8002CFAC AFBF0014 */  sw         $ra, 0x14($sp)
/* 2DBB0 8002CFB0 3C04800F */  lui        $a0, %hi(D_800F1B20)
/* 2DBB4 8002CFB4 24841B20 */  addiu      $a0, $a0, %lo(D_800F1B20)
/* 2DBB8 8002CFB8 0C01059C */  jal        func_80041670
/* 2DBBC 8002CFBC 240501F3 */   addiu     $a1, $zero, 0x1f3
/* 2DBC0 8002CFC0 44800000 */  mtc1       $zero, $f0
/* 2DBC4 8002CFC4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2DBC8 8002CFC8 3C01800F */  lui        $at, %hi(D_800F1B40)
/* 2DBCC 8002CFCC E4201B40 */  swc1       $f0, %lo(D_800F1B40)($at)
/* 2DBD0 8002CFD0 3C01800F */  lui        $at, %hi(D_800F1B44)
/* 2DBD4 8002CFD4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2DBD8 8002CFD8 03E00008 */  jr         $ra
/* 2DBDC 8002CFDC E4201B44 */   swc1      $f0, %lo(D_800F1B44)($at)

glabel func_8002CFE0
/* 2DBE0 8002CFE0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2DBE4 8002CFE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2DBE8 8002CFE8 3C04800F */  lui        $a0, %hi(D_800F1B20)
/* 2DBEC 8002CFEC 0C0105FB */  jal        func_800417EC
/* 2DBF0 8002CFF0 24841B20 */   addiu     $a0, $a0, %lo(D_800F1B20)
/* 2DBF4 8002CFF4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2DBF8 8002CFF8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2DBFC 8002CFFC 03E00008 */  jr         $ra
/* 2DC00 8002D000 00000000 */   nop
/* 2DC04 8002D004 00000000 */  nop
/* 2DC08 8002D008 00000000 */  nop
/* 2DC0C 8002D00C 00000000 */  nop
