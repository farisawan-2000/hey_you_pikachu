glabel func_80002998
/* 3598 80002998 3C01800B */  lui        $at, %hi(D_800AD07C)
/* 359C 8000299C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 35A0 800029A0 240F0003 */  addiu      $t7, $zero, 3
/* 35A4 800029A4 240E0003 */  addiu      $t6, $zero, 3
/* 35A8 800029A8 AFA40018 */  sw         $a0, 0x18($sp)
/* 35AC 800029AC AC2FD07C */  sw         $t7, %lo(D_800AD07C)($at)
/* 35B0 800029B0 AC2ED078 */  sw         $t6, -0x2f88($at)
/* 35B4 800029B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 35B8 800029B8 3C01800B */  lui        $at, %hi(D_800AD084)
/* 35BC 800029BC 24180003 */  addiu      $t8, $zero, 3
/* 35C0 800029C0 24190003 */  addiu      $t9, $zero, 3
/* 35C4 800029C4 3C04800B */  lui        $a0, %hi(D_800AD088)
/* 35C8 800029C8 3C05800B */  lui        $a1, %hi(D_800AD0A0)
/* 35CC 800029CC AC39D084 */  sw         $t9, %lo(D_800AD084)($at)
/* 35D0 800029D0 AC38D080 */  sw         $t8, -0x2f80($at)
/* 35D4 800029D4 24A5D0A0 */  addiu      $a1, $a1, %lo(D_800AD0A0)
/* 35D8 800029D8 2484D088 */  addiu      $a0, $a0, %lo(D_800AD088)
/* 35DC 800029DC 0C0145B8 */  jal        osCreateMesgQueue
/* 35E0 800029E0 24060010 */   addiu     $a2, $zero, 0x10
/* 35E4 800029E4 3C04800B */  lui        $a0, %hi(D_800AD038)
/* 35E8 800029E8 3C05800B */  lui        $a1, %hi(D_800AD050)
/* 35EC 800029EC 24A5D050 */  addiu      $a1, $a1, %lo(D_800AD050)
/* 35F0 800029F0 2484D038 */  addiu      $a0, $a0, %lo(D_800AD038)
/* 35F4 800029F4 0C0145B8 */  jal        osCreateMesgQueue
/* 35F8 800029F8 2406000A */   addiu     $a2, $zero, 0xa
/* 35FC 800029FC 3C05800B */  lui        $a1, %hi(D_800AD038)
/* 3600 80002A00 24A5D038 */  addiu      $a1, $a1, %lo(D_800AD038)
/* 3604 80002A04 24040005 */  addiu      $a0, $zero, 5
/* 3608 80002A08 0C0145C4 */  jal        osSetEventMesg
/* 360C 80002A0C 24060001 */   addiu     $a2, $zero, 1
/* 3610 80002A10 3C04800B */  lui        $a0, %hi(D_800AD038)
/* 3614 80002A14 3C05800B */  lui        $a1, %hi(D_800ACE88)
/* 3618 80002A18 24A5CE88 */  addiu      $a1, $a1, %lo(D_800ACE88)
/* 361C 80002A1C 0C0145F4 */  jal        osContReset
/* 3620 80002A20 2484D038 */   addiu     $a0, $a0, %lo(D_800AD038)
/* 3624 80002A24 0C014640 */  jal        osContSetCh
/* 3628 80002A28 93A4001B */   lbu       $a0, 0x1b($sp)
/* 362C 80002A2C 8FA80018 */  lw         $t0, 0x18($sp)
/* 3630 80002A30 24090001 */  addiu      $t1, $zero, 1
/* 3634 80002A34 3C01800B */  lui        $at, 0x800b
/* 3638 80002A38 01095004 */  sllv       $t2, $t1, $t0
/* 363C 80002A3C 254BFFFF */  addiu      $t3, $t2, -1
/* 3640 80002A40 3C04800B */  lui        $a0, 0x800b
/* 3644 80002A44 3C05800B */  lui        $a1, %hi(D_800ACE81)
/* 3648 80002A48 3C06800B */  lui        $a2, %hi(D_800ACE88)
/* 364C 80002A4C A02BCE80 */  sb         $t3, -0x3180($at)
/* 3650 80002A50 24C6CE88 */  addiu      $a2, $a2, %lo(D_800ACE88)
/* 3654 80002A54 24A5CE81 */  addiu      $a1, $a1, %lo(D_800ACE81)
/* 3658 80002A58 0C014658 */  jal        osContInit
/* 365C 80002A5C 2484D038 */   addiu     $a0, $a0, -0x2fc8
/* 3660 80002A60 3C03800B */  lui        $v1, %hi(D_800ACE81)
/* 3664 80002A64 2463CE81 */  addiu      $v1, $v1, %lo(D_800ACE81)
/* 3668 80002A68 3C0D800B */  lui        $t5, %hi(D_800ACE80)
/* 366C 80002A6C 91ADCE80 */  lbu        $t5, %lo(D_800ACE80)($t5)
/* 3670 80002A70 906C0000 */  lbu        $t4, ($v1)
/* 3674 80002A74 018D7024 */  and        $t6, $t4, $t5
/* 3678 80002A78 0C000A22 */  jal        func_80002888
/* 367C 80002A7C A06E0000 */   sb        $t6, ($v1)
/* 3680 80002A80 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3684 80002A84 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3688 80002A88 03E00008 */  jr         $ra
/* 368C 80002A8C 00000000 */   nop
