glabel func_80001B60
/* 2760 80001B60 3C0A800B */  lui        $t2, %hi(D_800ABDD0)
/* 2764 80001B64 254ABDD0 */  addiu      $t2, $t2, %lo(D_800ABDD0)
/* 2768 80001B68 8D430000 */  lw         $v1, ($t2)
/* 276C 80001B6C AFA40000 */  sw         $a0, ($sp)
/* 2770 80001B70 3C0FE700 */  lui        $t7, 0xe700
/* 2774 80001B74 246E0008 */  addiu      $t6, $v1, 8
/* 2778 80001B78 AD4E0000 */  sw         $t6, ($t2)
/* 277C 80001B7C AC6F0000 */  sw         $t7, ($v1)
/* 2780 80001B80 AC600004 */  sw         $zero, 4($v1)
/* 2784 80001B84 00601025 */  or         $v0, $v1, $zero
/* 2788 80001B88 8D430000 */  lw         $v1, ($t2)
/* 278C 80001B8C 3C19E300 */  lui        $t9, 0xe300
/* 2790 80001B90 37391201 */  ori        $t9, $t9, 0x1201
/* 2794 80001B94 24780008 */  addiu      $t8, $v1, 8
/* 2798 80001B98 AD580000 */  sw         $t8, ($t2)
/* 279C 80001B9C 240C2000 */  addiu      $t4, $zero, 0x2000
/* 27A0 80001BA0 AC6C0004 */  sw         $t4, 4($v1)
/* 27A4 80001BA4 AC790000 */  sw         $t9, ($v1)
/* 27A8 80001BA8 00602025 */  or         $a0, $v1, $zero
/* 27AC 80001BAC 8D430000 */  lw         $v1, ($t2)
/* 27B0 80001BB0 3C0B8013 */  lui        $t3, %hi(D_80133DE4)
/* 27B4 80001BB4 3C0EF800 */  lui        $t6, 0xf800
/* 27B8 80001BB8 246D0008 */  addiu      $t5, $v1, 8
/* 27BC 80001BBC AD4D0000 */  sw         $t5, ($t2)
/* 27C0 80001BC0 256B3DE4 */  addiu      $t3, $t3, %lo(D_80133DE4)
/* 27C4 80001BC4 AC6E0000 */  sw         $t6, ($v1)
/* 27C8 80001BC8 8D660000 */  lw         $a2, ($t3)
/* 27CC 80001BCC 00602825 */  or         $a1, $v1, $zero
/* 27D0 80001BD0 90CC0038 */  lbu        $t4, 0x38($a2)
/* 27D4 80001BD4 90D90039 */  lbu        $t9, 0x39($a2)
/* 27D8 80001BD8 90D8003B */  lbu        $t8, 0x3b($a2)
/* 27DC 80001BDC 90CF003A */  lbu        $t7, 0x3a($a2)
/* 27E0 80001BE0 000C6E00 */  sll        $t5, $t4, 0x18
/* 27E4 80001BE4 00196400 */  sll        $t4, $t9, 0x10
/* 27E8 80001BE8 030D7025 */  or         $t6, $t8, $t5
/* 27EC 80001BEC 01CCC025 */  or         $t8, $t6, $t4
/* 27F0 80001BF0 000FCA00 */  sll        $t9, $t7, 8
/* 27F4 80001BF4 03197025 */  or         $t6, $t8, $t9
/* 27F8 80001BF8 AC6E0004 */  sw         $t6, 4($v1)
/* 27FC 80001BFC 8D430000 */  lw         $v1, ($t2)
/* 2800 80001C00 3C0DDB08 */  lui        $t5, 0xdb08
/* 2804 80001C04 3C180001 */  lui        $t8, 1
/* 2808 80001C08 246C0008 */  addiu      $t4, $v1, 8
/* 280C 80001C0C AD4C0000 */  sw         $t4, ($t2)
/* 2810 80001C10 AC6D0000 */  sw         $t5, ($v1)
/* 2814 80001C14 8D660000 */  lw         $a2, ($t3)
/* 2818 80001C18 3718F400 */  ori        $t8, $t8, 0xf400
/* 281C 80001C1C 00603825 */  or         $a3, $v1, $zero
/* 2820 80001C20 8CC80030 */  lw         $t0, 0x30($a2)
/* 2824 80001C24 8CCF0034 */  lw         $t7, 0x34($a2)
/* 2828 80001C28 00086823 */  negu       $t5, $t0
/* 282C 80001C2C 01E84823 */  subu       $t1, $t7, $t0
/* 2830 80001C30 0309001A */  div        $zero, $t8, $t1
/* 2834 80001C34 15200002 */  bnez       $t1, .L80001C40
/* 2838 80001C38 00000000 */   nop
/* 283C 80001C3C 0007000D */  break      7
.L80001C40:
/* 2840 80001C40 2401FFFF */   addiu     $at, $zero, -1
/* 2844 80001C44 15210004 */  bne        $t1, $at, .L80001C58
/* 2848 80001C48 3C018000 */   lui       $at, 0x8000
/* 284C 80001C4C 17010002 */  bne        $t8, $at, .L80001C58
/* 2850 80001C50 00000000 */   nop
/* 2854 80001C54 0006000D */  break      6
.L80001C58:
/* 2858 80001C58 03000821 */   addu      $at, $t8, $zero
/* 285C 80001C5C 000D7A00 */  sll        $t7, $t5, 8
/* 2860 80001C60 01F8C021 */  addu       $t8, $t7, $t8
/* 2864 80001C64 0000C812 */  mflo       $t9
/* 2868 80001C68 03207025 */  or         $t6, $t9, $zero
/* 286C 80001C6C 000E6400 */  sll        $t4, $t6, 0x10
/* 2870 80001C70 0309001A */  div        $zero, $t8, $t1
/* 2874 80001C74 0000C812 */  mflo       $t9
/* 2878 80001C78 332EFFFF */  andi       $t6, $t9, 0xffff
/* 287C 80001C7C 018E6825 */  or         $t5, $t4, $t6
/* 2880 80001C80 15200002 */  bnez       $t1, .L80001C8C
/* 2884 80001C84 00000000 */   nop
/* 2888 80001C88 0007000D */  break      7
.L80001C8C:
/* 288C 80001C8C 2401FFFF */   addiu     $at, $zero, -1
/* 2890 80001C90 15210004 */  bne        $t1, $at, .L80001CA4
/* 2894 80001C94 3C018000 */   lui       $at, 0x8000
/* 2898 80001C98 17010002 */  bne        $t8, $at, .L80001CA4
/* 289C 80001C9C 00000000 */   nop
/* 28A0 80001CA0 0006000D */  break      6
.L80001CA4:
/* 28A4 80001CA4 ACED0004 */   sw        $t5, 4($a3)
/* 28A8 80001CA8 03E00008 */  jr         $ra
/* 28AC 80001CAC 00000000 */   nop