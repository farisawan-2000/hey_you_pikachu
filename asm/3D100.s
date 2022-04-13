.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8003C500
/* 3D100 8003C500 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3D104 8003C504 AFA5001C */  sw         $a1, 0x1c($sp)
/* 3D108 8003C508 3C01800F */  lui        $at, %hi(D_800F2990)
/* 3D10C 8003C50C AC242990 */  sw         $a0, %lo(D_800F2990)($at)
/* 3D110 8003C510 00072880 */  sll        $a1, $a3, 2
/* 3D114 8003C514 3C01800F */  lui        $at, %hi(D_800F2984)
/* 3D118 8003C518 00A72823 */  subu       $a1, $a1, $a3
/* 3D11C 8003C51C AFA40018 */  sw         $a0, 0x18($sp)
/* 3D120 8003C520 AC272984 */  sw         $a3, %lo(D_800F2984)($at)
/* 3D124 8003C524 00052880 */  sll        $a1, $a1, 2
/* 3D128 8003C528 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3D12C 8003C52C AFA60020 */  sw         $a2, 0x20($sp)
/* 3D130 8003C530 3C01800F */  lui        $at, %hi(D_800F2988)
/* 3D134 8003C534 00A72823 */  subu       $a1, $a1, $a3
/* 3D138 8003C538 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 3D13C 8003C53C AC202988 */  sw         $zero, %lo(D_800F2988)($at)
/* 3D140 8003C540 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 3D144 8003C544 000528C0 */  sll        $a1, $a1, 3
/* 3D148 8003C548 0C00E03D */  jal        func_800380F4
/* 3D14C 8003C54C 2406004D */   addiu     $a2, $zero, 0x4d
/* 3D150 8003C550 3C01800F */  lui        $at, %hi(D_800F2980)
/* 3D154 8003C554 AC222980 */  sw         $v0, %lo(D_800F2980)($at)
/* 3D158 8003C558 8FAF001C */  lw         $t7, 0x1c($sp)
/* 3D15C 8003C55C 8FB80020 */  lw         $t8, 0x20($sp)
/* 3D160 8003C560 3C03800F */  lui        $v1, %hi(D_800F2998)
/* 3D164 8003C564 3C01800F */  lui        $at, %hi(D_800F298C)
/* 3D168 8003C568 24632998 */  addiu      $v1, $v1, %lo(D_800F2998)
/* 3D16C 8003C56C AC20298C */  sw         $zero, %lo(D_800F298C)($at)
/* 3D170 8003C570 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 3D174 8003C574 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 3D178 8003C578 24050400 */  addiu      $a1, $zero, 0x400
/* 3D17C 8003C57C 24060055 */  addiu      $a2, $zero, 0x55
/* 3D180 8003C580 AC6F0000 */  sw         $t7, ($v1)
/* 3D184 8003C584 0C00E03D */  jal        func_800380F4
/* 3D188 8003C588 AC780004 */   sw        $t8, 4($v1)
/* 3D18C 8003C58C 3C01800F */  lui        $at, %hi(D_800F29A8)
/* 3D190 8003C590 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 3D194 8003C594 AC2229A8 */  sw         $v0, %lo(D_800F29A8)($at)
/* 3D198 8003C598 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 3D19C 8003C59C 24050C00 */  addiu      $a1, $zero, 0xc00
/* 3D1A0 8003C5A0 0C00E03D */  jal        func_800380F4
/* 3D1A4 8003C5A4 24060059 */   addiu     $a2, $zero, 0x59
/* 3D1A8 8003C5A8 8FA30028 */  lw         $v1, 0x28($sp)
/* 3D1AC 8003C5AC 3C01800F */  lui        $at, %hi(D_800F29AC)
/* 3D1B0 8003C5B0 AC2229AC */  sw         $v0, %lo(D_800F29AC)($at)
/* 3D1B4 8003C5B4 3C01800F */  lui        $at, %hi(D_800F29A4)
/* 3D1B8 8003C5B8 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 3D1BC 8003C5BC 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 3D1C0 8003C5C0 2406005E */  addiu      $a2, $zero, 0x5e
/* 3D1C4 8003C5C4 AC2329A4 */  sw         $v1, %lo(D_800F29A4)($at)
/* 3D1C8 8003C5C8 0C00E03D */  jal        func_800380F4
/* 3D1CC 8003C5CC 000328C0 */   sll       $a1, $v1, 3
/* 3D1D0 8003C5D0 3C01800F */  lui        $at, %hi(D_800F29A0)
/* 3D1D4 8003C5D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3D1D8 8003C5D8 AC2229A0 */  sw         $v0, %lo(D_800F29A0)($at)
/* 3D1DC 8003C5DC 3C02800F */  lui        $v0, %hi(D_800F2980)
/* 3D1E0 8003C5E0 8C422980 */  lw         $v0, %lo(D_800F2980)($v0)
/* 3D1E4 8003C5E4 03E00008 */  jr         $ra
/* 3D1E8 8003C5E8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8003C5EC
/* 3D1EC 8003C5EC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 3D1F0 8003C5F0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 3D1F4 8003C5F4 AFB00018 */  sw         $s0, 0x18($sp)
/* 3D1F8 8003C5F8 AFA60040 */  sw         $a2, 0x40($sp)
/* 3D1FC 8003C5FC 8CE20000 */  lw         $v0, ($a3)
/* 3D200 8003C600 3C0FE900 */  lui        $t7, 0xe900
/* 3D204 8003C604 3C0B800F */  lui        $t3, 0x800f
/* 3D208 8003C608 244E0008 */  addiu      $t6, $v0, 8
/* 3D20C 8003C60C ACEE0000 */  sw         $t6, ($a3)
/* 3D210 8003C610 AC400004 */  sw         $zero, 4($v0)
/* 3D214 8003C614 AC4F0000 */  sw         $t7, ($v0)
/* 3D218 8003C618 8CE20000 */  lw         $v0, ($a3)
/* 3D21C 8003C61C 3C19DF00 */  lui        $t9, 0xdf00
/* 3D220 8003C620 256B2988 */  addiu      $t3, $t3, 0x2988
/* 3D224 8003C624 24580008 */  addiu      $t8, $v0, 8
/* 3D228 8003C628 ACF80000 */  sw         $t8, ($a3)
/* 3D22C 8003C62C AC400004 */  sw         $zero, 4($v0)
/* 3D230 8003C630 AC590000 */  sw         $t9, ($v0)
/* 3D234 8003C634 8D6F0000 */  lw         $t7, ($t3)
/* 3D238 8003C638 3C19800F */  lui        $t9, %hi(D_800F2980)
/* 3D23C 8003C63C 8FAD0040 */  lw         $t5, 0x40($sp)
/* 3D240 8003C640 000FC080 */  sll        $t8, $t7, 2
/* 3D244 8003C644 030FC023 */  subu       $t8, $t8, $t7
/* 3D248 8003C648 8F392980 */  lw         $t9, %lo(D_800F2980)($t9)
/* 3D24C 8003C64C 0018C080 */  sll        $t8, $t8, 2
/* 3D250 8003C650 030FC023 */  subu       $t8, $t8, $t7
/* 3D254 8003C654 0018C0C0 */  sll        $t8, $t8, 3
/* 3D258 8003C658 8CEE0000 */  lw         $t6, ($a3)
/* 3D25C 8003C65C 8DA90000 */  lw         $t1, ($t5)
/* 3D260 8003C660 03198021 */  addu       $s0, $t8, $t9
/* 3D264 8003C664 3C0C8006 */  lui        $t4, %hi(rspbootTextStart)
/* 3D268 8003C668 01C95023 */  subu       $t2, $t6, $t1
/* 3D26C 8003C66C 3C0E8006 */  lui        $t6, %hi(D_80060120)
/* 3D270 8003C670 258C0050 */  addiu      $t4, $t4, %lo(rspbootTextStart)
/* 3D274 8003C674 25CE0120 */  addiu      $t6, $t6, %lo(D_80060120)
/* 3D278 8003C678 3C19800A */  lui        $t9, %hi(D_8009D41C)
/* 3D27C 8003C67C 240D0001 */  addiu      $t5, $zero, 1
/* 3D280 8003C680 01CC7823 */  subu       $t7, $t6, $t4
/* 3D284 8003C684 2739D41C */  addiu      $t9, $t9, %lo(D_8009D41C)
/* 3D288 8003C688 0004C100 */  sll        $t8, $a0, 4
/* 3D28C 8003C68C AE0A0044 */  sw         $t2, 0x44($s0)
/* 3D290 8003C690 AE0D0010 */  sw         $t5, 0x10($s0)
/* 3D294 8003C694 AE000014 */  sw         $zero, 0x14($s0)
/* 3D298 8003C698 AE0C0018 */  sw         $t4, 0x18($s0)
/* 3D29C 8003C69C AE0F001C */  sw         $t7, 0x1c($s0)
/* 3D2A0 8003C6A0 03191021 */  addu       $v0, $t8, $t9
/* 3D2A4 8003C6A4 AE090040 */  sw         $t1, 0x40($s0)
/* 3D2A8 8003C6A8 8C4D0000 */  lw         $t5, ($v0)
/* 3D2AC 8003C6AC 240F0800 */  addiu      $t7, $zero, 0x800
/* 3D2B0 8003C6B0 3C18800F */  lui        $t8, 0x800f
/* 3D2B4 8003C6B4 AE0D0020 */  sw         $t5, 0x20($s0)
/* 3D2B8 8003C6B8 8C4E0004 */  lw         $t6, 4($v0)
/* 3D2BC 8003C6BC AE0F002C */  sw         $t7, 0x2c($s0)
/* 3D2C0 8003C6C0 3C03800F */  lui        $v1, %hi(D_800F29A0)
/* 3D2C4 8003C6C4 AE0E0028 */  sw         $t6, 0x28($s0)
/* 3D2C8 8003C6C8 8F1829A8 */  lw         $t8, 0x29a8($t8)
/* 3D2CC 8003C6CC 24190400 */  addiu      $t9, $zero, 0x400
/* 3D2D0 8003C6D0 246329A0 */  addiu      $v1, $v1, %lo(D_800F29A0)
/* 3D2D4 8003C6D4 AE190034 */  sw         $t9, 0x34($s0)
/* 3D2D8 8003C6D8 AE180030 */  sw         $t8, 0x30($s0)
/* 3D2DC 8003C6DC 8C6D0000 */  lw         $t5, ($v1)
/* 3D2E0 8003C6E0 3C0F800F */  lui        $t7, %hi(D_800F29A4)
/* 3D2E4 8003C6E4 AE0D0038 */  sw         $t5, 0x38($s0)
/* 3D2E8 8003C6E8 8C4E0008 */  lw         $t6, 8($v0)
/* 3D2EC 8003C6EC 11C00007 */  beqz       $t6, .L8003C70C
/* 3D2F0 8003C6F0 00000000 */   nop
/* 3D2F4 8003C6F4 8DEF29A4 */  lw         $t7, %lo(D_800F29A4)($t7)
/* 3D2F8 8003C6F8 8C790000 */  lw         $t9, ($v1)
/* 3D2FC 8003C6FC 000FC0C0 */  sll        $t8, $t7, 3
/* 3D300 8003C700 03196821 */  addu       $t5, $t8, $t9
/* 3D304 8003C704 10000004 */  b          .L8003C718
/* 3D308 8003C708 AE0D003C */   sw        $t5, 0x3c($s0)
.L8003C70C:
/* 3D30C 8003C70C 3C0E800F */  lui        $t6, %hi(D_800F29A4)
/* 3D310 8003C710 8DCE29A4 */  lw         $t6, %lo(D_800F29A4)($t6)
/* 3D314 8003C714 AE0E003C */  sw         $t6, 0x3c($s0)
.L8003C718:
/* 3D318 8003C718 3C0F800F */  lui        $t7, %hi(D_800F29AC)
/* 3D31C 8003C71C 8DEF29AC */  lw         $t7, %lo(D_800F29AC)($t7)
/* 3D320 8003C720 24180C00 */  addiu      $t8, $zero, 0xc00
/* 3D324 8003C724 AE18004C */  sw         $t8, 0x4c($s0)
/* 3D328 8003C728 AE000000 */  sw         $zero, ($s0)
/* 3D32C 8003C72C AE050008 */  sw         $a1, 8($s0)
/* 3D330 8003C730 AE0F0048 */  sw         $t7, 0x48($s0)
/* 3D334 8003C734 8FB90048 */  lw         $t9, 0x48($sp)
/* 3D338 8003C738 30A20040 */  andi       $v0, $a1, 0x40
/* 3D33C 8003C73C 10400005 */  beqz       $v0, .L8003C754
/* 3D340 8003C740 AE190050 */   sw        $t9, 0x50($s0)
/* 3D344 8003C744 3C0D800A */  lui        $t5, %hi(D_8009D418)
/* 3D348 8003C748 25ADD418 */  addiu      $t5, $t5, %lo(D_8009D418)
/* 3D34C 8003C74C 10000004 */  b          .L8003C760
/* 3D350 8003C750 AE0D0054 */   sw        $t5, 0x54($s0)
.L8003C754:
/* 3D354 8003C754 3C0E800A */  lui        $t6, %hi(D_8009D414)
/* 3D358 8003C758 25CED414 */  addiu      $t6, $t6, %lo(D_8009D414)
/* 3D35C 8003C75C AE0E0054 */  sw         $t6, 0x54($s0)
.L8003C760:
/* 3D360 8003C760 3C0F800F */  lui        $t7, %hi(D_800F298C)
/* 3D364 8003C764 8DEF298C */  lw         $t7, %lo(D_800F298C)($t7)
/* 3D368 8003C768 3C19800F */  lui        $t9, %hi(D_800F2998)
/* 3D36C 8003C76C 000FC080 */  sll        $t8, $t7, 2
/* 3D370 8003C770 0338C821 */  addu       $t9, $t9, $t8
/* 3D374 8003C774 8F392998 */  lw         $t9, %lo(D_800F2998)($t9)
/* 3D378 8003C778 AE19000C */  sw         $t9, 0xc($s0)
/* 3D37C 8003C77C AFA70044 */  sw         $a3, 0x44($sp)
/* 3D380 8003C780 0C0150F4 */  jal        osWritebackDCacheAll
/* 3D384 8003C784 AFA20024 */   sw        $v0, 0x24($sp)
/* 3D388 8003C788 3C04800F */  lui        $a0, %hi(D_800F2990)
/* 3D38C 8003C78C 8C842990 */  lw         $a0, %lo(D_800F2990)($a0)
/* 3D390 8003C790 02002825 */  or         $a1, $s0, $zero
/* 3D394 8003C794 0C014C64 */  jal        osSendMesg
/* 3D398 8003C798 24060001 */   addiu     $a2, $zero, 1
/* 3D39C 8003C79C 8FA20024 */  lw         $v0, 0x24($sp)
/* 3D3A0 8003C7A0 3C0B800F */  lui        $t3, %hi(D_800F2988)
/* 3D3A4 8003C7A4 256B2988 */  addiu      $t3, $t3, %lo(D_800F2988)
/* 3D3A8 8003C7A8 10400006 */  beqz       $v0, .L8003C7C4
/* 3D3AC 8003C7AC 8FA70044 */   lw        $a3, 0x44($sp)
/* 3D3B0 8003C7B0 3C02800F */  lui        $v0, %hi(D_800F298C)
/* 3D3B4 8003C7B4 2442298C */  addiu      $v0, $v0, %lo(D_800F298C)
/* 3D3B8 8003C7B8 8C4D0000 */  lw         $t5, ($v0)
/* 3D3BC 8003C7BC 39AE0001 */  xori       $t6, $t5, 1
/* 3D3C0 8003C7C0 AC4E0000 */  sw         $t6, ($v0)
.L8003C7C4:
/* 3D3C4 8003C7C4 8D6F0000 */  lw         $t7, ($t3)
/* 3D3C8 8003C7C8 3C0D800F */  lui        $t5, %hi(D_800F2984)
/* 3D3CC 8003C7CC 25F80001 */  addiu      $t8, $t7, 1
/* 3D3D0 8003C7D0 AD780000 */  sw         $t8, ($t3)
/* 3D3D4 8003C7D4 8DAD2984 */  lw         $t5, %lo(D_800F2984)($t5)
/* 3D3D8 8003C7D8 030D082A */  slt        $at, $t8, $t5
/* 3D3DC 8003C7DC 54200003 */  bnel       $at, $zero, .L8003C7EC
/* 3D3E0 8003C7E0 8CEE0000 */   lw        $t6, ($a3)
/* 3D3E4 8003C7E4 AD600000 */  sw         $zero, ($t3)
/* 3D3E8 8003C7E8 8CEE0000 */  lw         $t6, ($a3)
.L8003C7EC:
/* 3D3EC 8003C7EC 8FAF0040 */  lw         $t7, 0x40($sp)
/* 3D3F0 8003C7F0 ADEE0000 */  sw         $t6, ($t7)
/* 3D3F4 8003C7F4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 3D3F8 8003C7F8 8FB00018 */  lw         $s0, 0x18($sp)
/* 3D3FC 8003C7FC 27BD0038 */  addiu      $sp, $sp, 0x38
/* 3D400 8003C800 03E00008 */  jr         $ra
/* 3D404 8003C804 00000000 */   nop

glabel func_8003C808
/* 3D408 8003C808 00047100 */  sll        $t6, $a0, 4
/* 3D40C 8003C80C 3C03800A */  lui        $v1, %hi(D_8009D420)
/* 3D410 8003C810 006E1821 */  addu       $v1, $v1, $t6
/* 3D414 8003C814 3C05800A */  lui        $a1, %hi(D_8009D43C)
/* 3D418 8003C818 3C08800A */  lui        $t0, %hi(D_8009D43C)
/* 3D41C 8003C81C 8C63D420 */  lw         $v1, %lo(D_8009D420)($v1)
/* 3D420 8003C820 2508D43C */  addiu      $t0, $t0, %lo(D_8009D43C)
/* 3D424 8003C824 90A5D43C */  lbu        $a1, %lo(D_8009D43C)($a1)
/* 3D428 8003C828 00001025 */  or         $v0, $zero, $zero
/* 3D42C 8003C82C 24091000 */  addiu      $t1, $zero, 0x1000
.L8003C830:
/* 3D430 8003C830 906F0000 */  lbu        $t7, ($v1)
/* 3D434 8003C834 24420001 */  addiu      $v0, $v0, 1
/* 3D438 8003C838 00002025 */  or         $a0, $zero, $zero
/* 3D43C 8003C83C 15E50009 */  bne        $t7, $a1, .L8003C864
/* 3D440 8003C840 00603025 */   or        $a2, $v1, $zero
/* 3D444 8003C844 3C07800A */  lui        $a3, %hi(D_8009D43C)
/* 3D448 8003C848 24E7D43C */  addiu      $a3, $a3, %lo(D_8009D43C)
.L8003C84C:
/* 3D44C 8003C84C 90D80001 */  lbu        $t8, 1($a2)
/* 3D450 8003C850 90F90001 */  lbu        $t9, 1($a3)
/* 3D454 8003C854 24840001 */  addiu      $a0, $a0, 1
/* 3D458 8003C858 24C60001 */  addiu      $a2, $a2, 1
/* 3D45C 8003C85C 1319FFFB */  beq        $t8, $t9, .L8003C84C
/* 3D460 8003C860 24E70001 */   addiu     $a3, $a3, 1
.L8003C864:
/* 3D464 8003C864 01045021 */  addu       $t2, $t0, $a0
/* 3D468 8003C868 914B0000 */  lbu        $t3, ($t2)
/* 3D46C 8003C86C 15600003 */  bnez       $t3, .L8003C87C
/* 3D470 8003C870 00000000 */   nop
/* 3D474 8003C874 03E00008 */  jr         $ra
/* 3D478 8003C878 00601025 */   or        $v0, $v1, $zero
.L8003C87C:
/* 3D47C 8003C87C 1449FFEC */  bne        $v0, $t1, .L8003C830
/* 3D480 8003C880 24630001 */   addiu     $v1, $v1, 1
/* 3D484 8003C884 3C02800A */  lui        $v0, %hi(D_8009D44C)
/* 3D488 8003C888 2442D44C */  addiu      $v0, $v0, %lo(D_8009D44C)
/* 3D48C 8003C88C 03E00008 */  jr         $ra
/* 3D490 8003C890 00000000 */   nop

glabel func_8003C894
/* 3D494 8003C894 03E00008 */  jr         $ra
/* 3D498 8003C898 AFA40000 */   sw        $a0, ($sp)

glabel func_8003C89C
/* 3D49C 8003C89C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3D4A0 8003C8A0 AFA40018 */  sw         $a0, 0x18($sp)
/* 3D4A4 8003C8A4 3C04800F */  lui        $a0, %hi(D_800F29B0)
/* 3D4A8 8003C8A8 248429B0 */  addiu      $a0, $a0, %lo(D_800F29B0)
/* 3D4AC 8003C8AC AFA5001C */  sw         $a1, 0x1c($sp)
/* 3D4B0 8003C8B0 AFA60020 */  sw         $a2, 0x20($sp)
/* 3D4B4 8003C8B4 27AE0018 */  addiu      $t6, $sp, 0x18
/* 3D4B8 8003C8B8 8FA6006C */  lw         $a2, 0x6c($sp)
/* 3D4BC 8003C8BC 8FA50068 */  lw         $a1, 0x68($sp)
/* 3D4C0 8003C8C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3D4C4 8003C8C4 AFA70024 */  sw         $a3, 0x24($sp)
/* 3D4C8 8003C8C8 240300F0 */  addiu      $v1, $zero, 0xf0
/* 3D4CC 8003C8CC 25D90048 */  addiu      $t9, $t6, 0x48
/* 3D4D0 8003C8D0 00804025 */  or         $t0, $a0, $zero
.L8003C8D4:
/* 3D4D4 8003C8D4 8DC10000 */  lw         $at, ($t6)
/* 3D4D8 8003C8D8 25CE000C */  addiu      $t6, $t6, 0xc
/* 3D4DC 8003C8DC 2508000C */  addiu      $t0, $t0, 0xc
/* 3D4E0 8003C8E0 AD01FFF4 */  sw         $at, -0xc($t0)
/* 3D4E4 8003C8E4 8DC1FFF8 */  lw         $at, -8($t6)
/* 3D4E8 8003C8E8 AD01FFF8 */  sw         $at, -8($t0)
/* 3D4EC 8003C8EC 8DC1FFFC */  lw         $at, -4($t6)
/* 3D4F0 8003C8F0 15D9FFF8 */  bne        $t6, $t9, .L8003C8D4
/* 3D4F4 8003C8F4 AD01FFFC */   sw        $at, -4($t0)
/* 3D4F8 8003C8F8 00A60019 */  multu      $a1, $a2
/* 3D4FC 8003C8FC 8DC10000 */  lw         $at, ($t6)
/* 3D500 8003C900 00055A80 */  sll        $t3, $a1, 0xa
/* 3D504 8003C904 AD010000 */  sw         $at, ($t0)
/* 3D508 8003C908 8DD90004 */  lw         $t9, 4($t6)
/* 3D50C 8003C90C AD190004 */  sw         $t9, 4($t0)
/* 3D510 8003C910 8FAD0070 */  lw         $t5, 0x70($sp)
/* 3D514 8003C914 00004812 */  mflo       $t1
/* 3D518 8003C918 00000000 */  nop
/* 3D51C 8003C91C 00000000 */  nop
/* 3D520 8003C920 0123001A */  div        $zero, $t1, $v1
/* 3D524 8003C924 14600002 */  bnez       $v1, .L8003C930
/* 3D528 8003C928 00000000 */   nop
/* 3D52C 8003C92C 0007000D */  break      7
.L8003C930:
/* 3D530 8003C930 2401FFFF */   addiu     $at, $zero, -1
/* 3D534 8003C934 14610004 */  bne        $v1, $at, .L8003C948
/* 3D538 8003C938 3C018000 */   lui       $at, 0x8000
/* 3D53C 8003C93C 15210002 */  bne        $t1, $at, .L8003C948
/* 3D540 8003C940 00000000 */   nop
/* 3D544 8003C944 0006000D */  break      6
.L8003C948:
/* 3D548 8003C948 00005012 */   mflo      $t2
/* 3D54C 8003C94C 3C01800F */  lui        $at, %hi(D_800F29B8)
/* 3D550 8003C950 AC2A29B8 */  sw         $t2, %lo(D_800F29B8)($at)
/* 3D554 8003C954 24010280 */  addiu      $at, $zero, 0x280
/* 3D558 8003C958 0161001A */  div        $zero, $t3, $at
/* 3D55C 8003C95C 00006012 */  mflo       $t4
/* 3D560 8003C960 3C01800F */  lui        $at, %hi(D_800F29D0)
/* 3D564 8003C964 AC2C29D0 */  sw         $t4, %lo(D_800F29D0)($at)
/* 3D568 8003C968 05A10003 */  bgez       $t5, .L8003C978
/* 3D56C 8003C96C 000DC0C3 */   sra       $t8, $t5, 3
/* 3D570 8003C970 25A10007 */  addiu      $at, $t5, 7
/* 3D574 8003C974 0001C0C3 */  sra        $t8, $at, 3
.L8003C978:
/* 3D578 8003C978 03050019 */  multu      $t8, $a1
/* 3D57C 8003C97C 00001012 */  mflo       $v0
/* 3D580 8003C980 AC820028 */  sw         $v0, 0x28($a0)
/* 3D584 8003C984 00000000 */  nop
/* 3D588 8003C988 00460019 */  multu      $v0, $a2
/* 3D58C 8003C98C 00007812 */  mflo       $t7
/* 3D590 8003C990 00000000 */  nop
/* 3D594 8003C994 00000000 */  nop
/* 3D598 8003C998 01E3001A */  div        $zero, $t7, $v1
/* 3D59C 8003C99C 0000C812 */  mflo       $t9
/* 3D5A0 8003C9A0 AC99003C */  sw         $t9, 0x3c($a0)
/* 3D5A4 8003C9A4 14600002 */  bnez       $v1, .L8003C9B0
/* 3D5A8 8003C9A8 00000000 */   nop
/* 3D5AC 8003C9AC 0007000D */  break      7
.L8003C9B0:
/* 3D5B0 8003C9B0 2401FFFF */   addiu     $at, $zero, -1
/* 3D5B4 8003C9B4 14610004 */  bne        $v1, $at, .L8003C9C8
/* 3D5B8 8003C9B8 3C018000 */   lui       $at, 0x8000
/* 3D5BC 8003C9BC 15E10002 */  bne        $t7, $at, .L8003C9C8
/* 3D5C0 8003C9C0 00000000 */   nop
/* 3D5C4 8003C9C4 0006000D */  break      6
.L8003C9C8:
/* 3D5C8 8003C9C8 0C014D58 */   jal       osViSetMode
/* 3D5CC 8003C9CC 00000000 */   nop
/* 3D5D0 8003C9D0 0C014D70 */  jal        osViBlack
/* 3D5D4 8003C9D4 24040001 */   addiu     $a0, $zero, 1
/* 3D5D8 8003C9D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3D5DC 8003C9DC 8FAE0068 */  lw         $t6, 0x68($sp)
/* 3D5E0 8003C9E0 3C01800A */  lui        $at, %hi(D_8009D410)
/* 3D5E4 8003C9E4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3D5E8 8003C9E8 03E00008 */  jr         $ra
/* 3D5EC 8003C9EC AC2ED410 */   sw        $t6, %lo(D_8009D410)($at)

glabel func_8003C9F0
/* 3D5F0 8003C9F0 00E51023 */  subu       $v0, $a3, $a1
/* 3D5F4 8003C9F4 00024040 */  sll        $t0, $v0, 1
/* 3D5F8 8003C9F8 250E0002 */  addiu      $t6, $t0, 2
/* 3D5FC 8003C9FC A48E0000 */  sh         $t6, ($a0)
/* 3D600 8003CA00 8FAF0010 */  lw         $t7, 0x10($sp)
/* 3D604 8003CA04 0005C880 */  sll        $t9, $a1, 2
/* 3D608 8003CA08 03285821 */  addu       $t3, $t9, $t0
/* 3D60C 8003CA0C 01E61823 */  subu       $v1, $t7, $a2
/* 3D610 8003CA10 00034840 */  sll        $t1, $v1, 1
/* 3D614 8003CA14 24590001 */  addiu      $t9, $v0, 1
/* 3D618 8003CA18 44992000 */  mtc1       $t9, $f4
/* 3D61C 8003CA1C 25380002 */  addiu      $t8, $t1, 2
/* 3D620 8003CA20 A4980002 */  sh         $t8, 2($a0)
/* 3D624 8003CA24 A480000E */  sh         $zero, 0xe($a0)
/* 3D628 8003CA28 8498000E */  lh         $t8, 0xe($a0)
/* 3D62C 8003CA2C 00066880 */  sll        $t5, $a2, 2
/* 3D630 8003CA30 468021A0 */  cvt.s.w    $f6, $f4
/* 3D634 8003CA34 240A01FF */  addiu      $t2, $zero, 0x1ff
/* 3D638 8003CA38 01A97021 */  addu       $t6, $t5, $t1
/* 3D63C 8003CA3C 25CF0002 */  addiu      $t7, $t6, 2
/* 3D640 8003CA40 256C0002 */  addiu      $t4, $t3, 2
/* 3D644 8003CA44 A48A0004 */  sh         $t2, 4($a0)
/* 3D648 8003CA48 A48C0008 */  sh         $t4, 8($a0)
/* 3D64C 8003CA4C A48F000A */  sh         $t7, 0xa($a0)
/* 3D650 8003CA50 A48A000C */  sh         $t2, 0xc($a0)
/* 3D654 8003CA54 A4980006 */  sh         $t8, 6($a0)
/* 3D658 8003CA58 C7A8001C */  lwc1       $f8, 0x1c($sp)
/* 3D65C 8003CA5C 246B0001 */  addiu      $t3, $v1, 1
/* 3D660 8003CA60 448B8000 */  mtc1       $t3, $f16
/* 3D664 8003CA64 46083282 */  mul.s      $f10, $f6, $f8
/* 3D668 8003CA68 8FAC0018 */  lw         $t4, 0x18($sp)
/* 3D66C 8003CA6C 8FAD0014 */  lw         $t5, 0x14($sp)
/* 3D670 8003CA70 448C3000 */  mtc1       $t4, $f6
/* 3D674 8003CA74 468084A0 */  cvt.s.w    $f18, $f16
/* 3D678 8003CA78 46803220 */  cvt.s.w    $f8, $f6
/* 3D67C 8003CA7C 46125103 */  div.s      $f4, $f10, $f18
/* 3D680 8003CA80 448D5000 */  mtc1       $t5, $f10
/* 3D684 8003CA84 00000000 */  nop
/* 3D688 8003CA88 468054A0 */  cvt.s.w    $f18, $f10
/* 3D68C 8003CA8C 46082402 */  mul.s      $f16, $f4, $f8
/* 3D690 8003CA90 03E00008 */  jr         $ra
/* 3D694 8003CA94 46128003 */   div.s     $f0, $f16, $f18

glabel func_8003CA98
/* 3D698 8003CA98 27BDFEE8 */  addiu      $sp, $sp, -0x118
/* 3D69C 8003CA9C 3C0F800A */  lui        $t7, %hi(D_8009D454)
/* 3D6A0 8003CAA0 AFB00008 */  sw         $s0, 8($sp)
/* 3D6A4 8003CAA4 3C02800A */  lui        $v0, %hi(D_8009D410)
/* 3D6A8 8003CAA8 25EFD454 */  addiu      $t7, $t7, %lo(D_8009D454)
/* 3D6AC 8003CAAC 2442D410 */  addiu      $v0, $v0, %lo(D_8009D410)
/* 3D6B0 8003CAB0 00808025 */  or         $s0, $a0, $zero
/* 3D6B4 8003CAB4 AFB5001C */  sw         $s5, 0x1c($sp)
/* 3D6B8 8003CAB8 AFB40018 */  sw         $s4, 0x18($sp)
/* 3D6BC 8003CABC AFB30014 */  sw         $s3, 0x14($sp)
/* 3D6C0 8003CAC0 AFB20010 */  sw         $s2, 0x10($sp)
/* 3D6C4 8003CAC4 AFB1000C */  sw         $s1, 0xc($sp)
/* 3D6C8 8003CAC8 AFA60120 */  sw         $a2, 0x120($sp)
/* 3D6CC 8003CACC 25F900B4 */  addiu      $t9, $t7, 0xb4
/* 3D6D0 8003CAD0 27AE0058 */  addiu      $t6, $sp, 0x58
.L8003CAD4:
/* 3D6D4 8003CAD4 8DE10000 */  lw         $at, ($t7)
/* 3D6D8 8003CAD8 25EF000C */  addiu      $t7, $t7, 0xc
/* 3D6DC 8003CADC 25CE000C */  addiu      $t6, $t6, 0xc
/* 3D6E0 8003CAE0 ADC1FFF4 */  sw         $at, -0xc($t6)
/* 3D6E4 8003CAE4 8DE1FFF8 */  lw         $at, -8($t7)
/* 3D6E8 8003CAE8 ADC1FFF8 */  sw         $at, -8($t6)
/* 3D6EC 8003CAEC 8DE1FFFC */  lw         $at, -4($t7)
/* 3D6F0 8003CAF0 15F9FFF8 */  bne        $t7, $t9, .L8003CAD4
/* 3D6F4 8003CAF4 ADC1FFFC */   sw        $at, -4($t6)
/* 3D6F8 8003CAF8 8DE10000 */  lw         $at, ($t7)
/* 3D6FC 8003CAFC 8DF90004 */  lw         $t9, 4($t7)
/* 3D700 8003CB00 3C08800F */  lui        $t0, 0x800f
/* 3D704 8003CB04 ADC10000 */  sw         $at, ($t6)
/* 3D708 8003CB08 95E10008 */  lhu        $at, 8($t7)
/* 3D70C 8003CB0C ADD90004 */  sw         $t9, 4($t6)
/* 3D710 8003CB10 3C0A800F */  lui        $t2, %hi(D_800F29A0)
/* 3D714 8003CB14 A5C10008 */  sh         $at, 8($t6)
/* 3D718 8003CB18 8C4B0000 */  lw         $t3, ($v0)
/* 3D71C 8003CB1C 254A29A0 */  addiu      $t2, $t2, %lo(D_800F29A0)
/* 3D720 8003CB20 25082998 */  addiu      $t0, $t0, 0x2998
/* 3D724 8003CB24 1160007A */  beqz       $t3, .L8003CD10
/* 3D728 8003CB28 00054840 */   sll       $t1, $a1, 1
/* 3D72C 8003CB2C 2407003A */  addiu      $a3, $zero, 0x3a
/* 3D730 8003CB30 24040005 */  addiu      $a0, $zero, 5
/* 3D734 8003CB34 24030008 */  addiu      $v1, $zero, 8
/* 3D738 8003CB38 8FB90120 */  lw         $t9, 0x120($sp)
.L8003CB3C:
/* 3D73C 8003CB3C 8D180000 */  lw         $t8, ($t0)
/* 3D740 8003CB40 25080004 */  addiu      $t0, $t0, 4
/* 3D744 8003CB44 01790019 */  multu      $t3, $t9
/* 3D748 8003CB48 02002825 */  or         $a1, $s0, $zero
/* 3D74C 8003CB4C 00007812 */  mflo       $t7
/* 3D750 8003CB50 000F7040 */  sll        $t6, $t7, 1
/* 3D754 8003CB54 920F0000 */  lbu        $t7, ($s0)
/* 3D758 8003CB58 030EC821 */  addu       $t9, $t8, $t6
/* 3D75C 8003CB5C 03293021 */  addu       $a2, $t9, $t1
/* 3D760 8003CB60 11E00069 */  beqz       $t7, .L8003CD08
/* 3D764 8003CB64 00000000 */   nop
/* 3D768 8003CB68 90AC0000 */  lbu        $t4, ($a1)
/* 3D76C 8003CB6C 318B00FF */  andi       $t3, $t4, 0xff
.L8003CB70:
/* 3D770 8003CB70 29610030 */  slti       $at, $t3, 0x30
/* 3D774 8003CB74 14200007 */  bnez       $at, .L8003CB94
/* 3D778 8003CB78 01606825 */   or        $t5, $t3, $zero
/* 3D77C 8003CB7C 2961003A */  slti       $at, $t3, 0x3a
/* 3D780 8003CB80 10200004 */  beqz       $at, .L8003CB94
/* 3D784 8003CB84 256BFFD0 */   addiu     $t3, $t3, -0x30
/* 3D788 8003CB88 317800FF */  andi       $t8, $t3, 0xff
/* 3D78C 8003CB8C 10000015 */  b          .L8003CBE4
/* 3D790 8003CB90 03005825 */   or        $t3, $t8, $zero
.L8003CB94:
/* 3D794 8003CB94 29A10061 */  slti       $at, $t5, 0x61
/* 3D798 8003CB98 14200006 */  bnez       $at, .L8003CBB4
/* 3D79C 8003CB9C 29A1007B */   slti      $at, $t5, 0x7b
/* 3D7A0 8003CBA0 10200004 */  beqz       $at, .L8003CBB4
/* 3D7A4 8003CBA4 25ABFFA9 */   addiu     $t3, $t5, -0x57
/* 3D7A8 8003CBA8 316E00FF */  andi       $t6, $t3, 0xff
/* 3D7AC 8003CBAC 1000000D */  b          .L8003CBE4
/* 3D7B0 8003CBB0 01C05825 */   or        $t3, $t6, $zero
.L8003CBB4:
/* 3D7B4 8003CBB4 29A10041 */  slti       $at, $t5, 0x41
/* 3D7B8 8003CBB8 14200006 */  bnez       $at, .L8003CBD4
/* 3D7BC 8003CBBC 29A1005B */   slti      $at, $t5, 0x5b
/* 3D7C0 8003CBC0 10200004 */  beqz       $at, .L8003CBD4
/* 3D7C4 8003CBC4 25ABFFC9 */   addiu     $t3, $t5, -0x37
/* 3D7C8 8003CBC8 317900FF */  andi       $t9, $t3, 0xff
/* 3D7CC 8003CBCC 10000005 */  b          .L8003CBE4
/* 3D7D0 8003CBD0 03205825 */   or        $t3, $t9, $zero
.L8003CBD4:
/* 3D7D4 8003CBD4 14ED0003 */  bne        $a3, $t5, .L8003CBE4
/* 3D7D8 8003CBD8 240B0024 */   addiu     $t3, $zero, 0x24
/* 3D7DC 8003CBDC 10000001 */  b          .L8003CBE4
/* 3D7E0 8003CBE0 240B0025 */   addiu     $t3, $zero, 0x25
.L8003CBE4:
/* 3D7E4 8003CBE4 000B7880 */  sll        $t7, $t3, 2
/* 3D7E8 8003CBE8 01EB7821 */  addu       $t7, $t7, $t3
/* 3D7EC 8003CBEC 27B80058 */  addiu      $t8, $sp, 0x58
/* 3D7F0 8003CBF0 01F89021 */  addu       $s2, $t7, $t8
/* 3D7F4 8003CBF4 00006025 */  or         $t4, $zero, $zero
/* 3D7F8 8003CBF8 00C06825 */  or         $t5, $a2, $zero
.L8003CBFC:
/* 3D7FC 8003CBFC 00005825 */  or         $t3, $zero, $zero
/* 3D800 8003CC00 92510000 */  lbu        $s1, ($s2)
/* 3D804 8003CC04 01A0A825 */  or         $s5, $t5, $zero
.L8003CC08:
/* 3D808 8003CC08 322E0080 */  andi       $t6, $s1, 0x80
/* 3D80C 8003CC0C 11C00003 */  beqz       $t6, .L8003CC1C
/* 3D810 8003CC10 02209825 */   or        $s3, $s1, $zero
/* 3D814 8003CC14 10000002 */  b          .L8003CC20
/* 3D818 8003CC18 3414FFFF */   ori       $s4, $zero, 0xffff
.L8003CC1C:
/* 3D81C 8003CC1C 24140001 */  addiu      $s4, $zero, 1
.L8003CC20:
/* 3D820 8003CC20 A6B40000 */  sh         $s4, ($s5)
/* 3D824 8003CC24 8C590000 */  lw         $t9, ($v0)
/* 3D828 8003CC28 00138840 */  sll        $s1, $s3, 1
/* 3D82C 8003CC2C 323300FF */  andi       $s3, $s1, 0xff
/* 3D830 8003CC30 00197840 */  sll        $t7, $t9, 1
/* 3D834 8003CC34 32790080 */  andi       $t9, $s3, 0x80
/* 3D838 8003CC38 02AFC021 */  addu       $t8, $s5, $t7
/* 3D83C 8003CC3C 13200003 */  beqz       $t9, .L8003CC4C
/* 3D840 8003CC40 A7140000 */   sh        $s4, ($t8)
/* 3D844 8003CC44 10000002 */  b          .L8003CC50
/* 3D848 8003CC48 3414FFFF */   ori       $s4, $zero, 0xffff
.L8003CC4C:
/* 3D84C 8003CC4C 24140001 */  addiu      $s4, $zero, 1
.L8003CC50:
/* 3D850 8003CC50 A6B40002 */  sh         $s4, 2($s5)
/* 3D854 8003CC54 8C4F0000 */  lw         $t7, ($v0)
/* 3D858 8003CC58 00138840 */  sll        $s1, $s3, 1
/* 3D85C 8003CC5C 323300FF */  andi       $s3, $s1, 0xff
/* 3D860 8003CC60 000FC040 */  sll        $t8, $t7, 1
/* 3D864 8003CC64 02B87021 */  addu       $t6, $s5, $t8
/* 3D868 8003CC68 326F0080 */  andi       $t7, $s3, 0x80
/* 3D86C 8003CC6C 11E00003 */  beqz       $t7, .L8003CC7C
/* 3D870 8003CC70 A5D40002 */   sh        $s4, 2($t6)
/* 3D874 8003CC74 10000002 */  b          .L8003CC80
/* 3D878 8003CC78 3414FFFF */   ori       $s4, $zero, 0xffff
.L8003CC7C:
/* 3D87C 8003CC7C 24140001 */  addiu      $s4, $zero, 1
.L8003CC80:
/* 3D880 8003CC80 A6B40004 */  sh         $s4, 4($s5)
/* 3D884 8003CC84 8C580000 */  lw         $t8, ($v0)
/* 3D888 8003CC88 00138840 */  sll        $s1, $s3, 1
/* 3D88C 8003CC8C 323300FF */  andi       $s3, $s1, 0xff
/* 3D890 8003CC90 00187040 */  sll        $t6, $t8, 1
/* 3D894 8003CC94 02AEC821 */  addu       $t9, $s5, $t6
/* 3D898 8003CC98 32780080 */  andi       $t8, $s3, 0x80
/* 3D89C 8003CC9C 13000003 */  beqz       $t8, .L8003CCAC
/* 3D8A0 8003CCA0 A7340004 */   sh        $s4, 4($t9)
/* 3D8A4 8003CCA4 10000002 */  b          .L8003CCB0
/* 3D8A8 8003CCA8 3414FFFF */   ori       $s4, $zero, 0xffff
.L8003CCAC:
/* 3D8AC 8003CCAC 24140001 */  addiu      $s4, $zero, 1
.L8003CCB0:
/* 3D8B0 8003CCB0 A6B40006 */  sh         $s4, 6($s5)
/* 3D8B4 8003CCB4 8C4E0000 */  lw         $t6, ($v0)
/* 3D8B8 8003CCB8 00138840 */  sll        $s1, $s3, 1
/* 3D8BC 8003CCBC 323800FF */  andi       $t8, $s1, 0xff
/* 3D8C0 8003CCC0 000EC840 */  sll        $t9, $t6, 1
/* 3D8C4 8003CCC4 02B97821 */  addu       $t7, $s5, $t9
/* 3D8C8 8003CCC8 256B0004 */  addiu      $t3, $t3, 4
/* 3D8CC 8003CCCC A5F40006 */  sh         $s4, 6($t7)
/* 3D8D0 8003CCD0 26B50008 */  addiu      $s5, $s5, 8
/* 3D8D4 8003CCD4 1563FFCC */  bne        $t3, $v1, .L8003CC08
/* 3D8D8 8003CCD8 03008825 */   or        $s1, $t8, $zero
/* 3D8DC 8003CCDC 8C4B0000 */  lw         $t3, ($v0)
/* 3D8E0 8003CCE0 258C0001 */  addiu      $t4, $t4, 1
/* 3D8E4 8003CCE4 26520001 */  addiu      $s2, $s2, 1
/* 3D8E8 8003CCE8 000BC880 */  sll        $t9, $t3, 2
/* 3D8EC 8003CCEC 1584FFC3 */  bne        $t4, $a0, .L8003CBFC
/* 3D8F0 8003CCF0 01B96821 */   addu      $t5, $t5, $t9
/* 3D8F4 8003CCF4 90AC0001 */  lbu        $t4, 1($a1)
/* 3D8F8 8003CCF8 24A50001 */  addiu      $a1, $a1, 1
/* 3D8FC 8003CCFC 24C60010 */  addiu      $a2, $a2, 0x10
/* 3D900 8003CD00 5580FF9B */  bnel       $t4, $zero, .L8003CB70
/* 3D904 8003CD04 318B00FF */   andi      $t3, $t4, 0xff
.L8003CD08:
/* 3D908 8003CD08 550AFF8C */  bnel       $t0, $t2, .L8003CB3C
/* 3D90C 8003CD0C 8FB90120 */   lw        $t9, 0x120($sp)
.L8003CD10:
/* 3D910 8003CD10 8FB00008 */  lw         $s0, 8($sp)
/* 3D914 8003CD14 8FB1000C */  lw         $s1, 0xc($sp)
/* 3D918 8003CD18 8FB20010 */  lw         $s2, 0x10($sp)
/* 3D91C 8003CD1C 8FB30014 */  lw         $s3, 0x14($sp)
/* 3D920 8003CD20 8FB40018 */  lw         $s4, 0x18($sp)
/* 3D924 8003CD24 8FB5001C */  lw         $s5, 0x1c($sp)
/* 3D928 8003CD28 03E00008 */  jr         $ra
/* 3D92C 8003CD2C 27BD0118 */   addiu     $sp, $sp, 0x118

glabel func_8003CD30
/* 3D930 8003CD30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3D934 8003CD34 AFA5001C */  sw         $a1, 0x1c($sp)
/* 3D938 8003CD38 000671C0 */  sll        $t6, $a2, 7
/* 3D93C 8003CD3C AFA40018 */  sw         $a0, 0x18($sp)
/* 3D940 8003CD40 25C5000F */  addiu      $a1, $t6, 0xf
/* 3D944 8003CD44 2401FFF0 */  addiu      $at, $zero, -0x10
/* 3D948 8003CD48 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3D94C 8003CD4C AFA60020 */  sw         $a2, 0x20($sp)
/* 3D950 8003CD50 00A17824 */  and        $t7, $a1, $at
/* 3D954 8003CD54 3C04800F */  lui        $a0, %hi(D_800F2A60)
/* 3D958 8003CD58 24842A60 */  addiu      $a0, $a0, %lo(D_800F2A60)
/* 3D95C 8003CD5C 01E02825 */  or         $a1, $t7, $zero
/* 3D960 8003CD60 240600F1 */  addiu      $a2, $zero, 0xf1
/* 3D964 8003CD64 0C00FDC0 */  jal        func_8003F700
/* 3D968 8003CD68 24070004 */   addiu     $a3, $zero, 4
/* 3D96C 8003CD6C 2406000A */  addiu      $a2, $zero, 0xa
/* 3D970 8003CD70 8FA40018 */  lw         $a0, 0x18($sp)
/* 3D974 8003CD74 8FA5001C */  lw         $a1, 0x1c($sp)
/* 3D978 8003CD78 3C01800F */  lui        $at, %hi(D_800F2A10)
/* 3D97C 8003CD7C 0086001A */  div        $zero, $a0, $a2
/* 3D980 8003CD80 00001012 */  mflo       $v0
/* 3D984 8003CD84 AC242A10 */  sw         $a0, %lo(D_800F2A10)($at)
/* 3D988 8003CD88 3C01800F */  lui        $at, %hi(D_800F2A14)
/* 3D98C 8003CD8C 00A6001A */  div        $zero, $a1, $a2
/* 3D990 8003CD90 AC252A14 */  sw         $a1, %lo(D_800F2A14)($at)
/* 3D994 8003CD94 14C00002 */  bnez       $a2, .L8003CDA0
/* 3D998 8003CD98 00000000 */   nop
/* 3D99C 8003CD9C 0007000D */  break      7
.L8003CDA0:
/* 3D9A0 8003CDA0 2401FFFF */   addiu     $at, $zero, -1
/* 3D9A4 8003CDA4 14C10004 */  bne        $a2, $at, .L8003CDB8
/* 3D9A8 8003CDA8 3C018000 */   lui       $at, 0x8000
/* 3D9AC 8003CDAC 14810002 */  bne        $a0, $at, .L8003CDB8
/* 3D9B0 8003CDB0 00000000 */   nop
/* 3D9B4 8003CDB4 0006000D */  break      6
.L8003CDB8:
/* 3D9B8 8003CDB8 3C01800F */   lui       $at, %hi(D_800F2A00)
/* 3D9BC 8003CDBC 2458FFFF */  addiu      $t8, $v0, -1
/* 3D9C0 8003CDC0 AC382A00 */  sw         $t8, %lo(D_800F2A00)($at)
/* 3D9C4 8003CDC4 14C00002 */  bnez       $a2, .L8003CDD0
/* 3D9C8 8003CDC8 00000000 */   nop
/* 3D9CC 8003CDCC 0007000D */  break      7
.L8003CDD0:
/* 3D9D0 8003CDD0 2401FFFF */   addiu     $at, $zero, -1
/* 3D9D4 8003CDD4 14C10004 */  bne        $a2, $at, .L8003CDE8
/* 3D9D8 8003CDD8 3C018000 */   lui       $at, 0x8000
/* 3D9DC 8003CDDC 14A10002 */  bne        $a1, $at, .L8003CDE8
/* 3D9E0 8003CDE0 00000000 */   nop
/* 3D9E4 8003CDE4 0006000D */  break      6
.L8003CDE8:
/* 3D9E8 8003CDE8 00001812 */   mflo      $v1
/* 3D9EC 8003CDEC 2479FFFF */  addiu      $t9, $v1, -1
/* 3D9F0 8003CDF0 3C01800F */  lui        $at, %hi(D_800F2A04)
/* 3D9F4 8003CDF4 AC392A04 */  sw         $t9, %lo(D_800F2A04)($at)
/* 3D9F8 8003CDF8 3C01800F */  lui        $at, %hi(D_800F2A08)
/* 3D9FC 8003CDFC 00824023 */  subu       $t0, $a0, $v0
/* 3DA00 8003CE00 AC282A08 */  sw         $t0, %lo(D_800F2A08)($at)
/* 3DA04 8003CE04 3C01800F */  lui        $at, %hi(D_800F2A0C)
/* 3DA08 8003CE08 00A34823 */  subu       $t1, $a1, $v1
/* 3DA0C 8003CE0C 0C00F3DE */  jal        func_8003CF78
/* 3DA10 8003CE10 AC292A0C */   sw        $t1, %lo(D_800F2A0C)($at)
/* 3DA14 8003CE14 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3DA18 8003CE18 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3DA1C 8003CE1C 03E00008 */  jr         $ra
/* 3DA20 8003CE20 00000000 */   nop

glabel func_8003CE24
/* 3DA24 8003CE24 3C03800F */  lui        $v1, %hi(D_800F2A18)
/* 3DA28 8003CE28 24632A18 */  addiu      $v1, $v1, %lo(D_800F2A18)
/* 3DA2C 8003CE2C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 3DA30 8003CE30 AC640000 */  sw         $a0, ($v1)
/* 3DA34 8003CE34 248F0008 */  addiu      $t7, $a0, 8
/* 3DA38 8003CE38 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3DA3C 8003CE3C AFA40038 */  sw         $a0, 0x38($sp)
/* 3DA40 8003CE40 AC6F0000 */  sw         $t7, ($v1)
/* 3DA44 8003CE44 3C18E700 */  lui        $t8, 0xe700
/* 3DA48 8003CE48 AC980000 */  sw         $t8, ($a0)
/* 3DA4C 8003CE4C AC800004 */  sw         $zero, 4($a0)
/* 3DA50 8003CE50 8C620000 */  lw         $v0, ($v1)
/* 3DA54 8003CE54 3C0EE300 */  lui        $t6, 0xe300
/* 3DA58 8003CE58 35CE0A01 */  ori        $t6, $t6, 0xa01
/* 3DA5C 8003CE5C 24590008 */  addiu      $t9, $v0, 8
/* 3DA60 8003CE60 AC790000 */  sw         $t9, ($v1)
/* 3DA64 8003CE64 AC400004 */  sw         $zero, 4($v0)
/* 3DA68 8003CE68 AC4E0000 */  sw         $t6, ($v0)
/* 3DA6C 8003CE6C 8C620000 */  lw         $v0, ($v1)
/* 3DA70 8003CE70 3C18E300 */  lui        $t8, 0xe300
/* 3DA74 8003CE74 37180C00 */  ori        $t8, $t8, 0xc00
/* 3DA78 8003CE78 244F0008 */  addiu      $t7, $v0, 8
/* 3DA7C 8003CE7C AC6F0000 */  sw         $t7, ($v1)
/* 3DA80 8003CE80 AC400004 */  sw         $zero, 4($v0)
/* 3DA84 8003CE84 AC580000 */  sw         $t8, ($v0)
/* 3DA88 8003CE88 8C620000 */  lw         $v0, ($v1)
/* 3DA8C 8003CE8C 3C0EE300 */  lui        $t6, 0xe300
/* 3DA90 8003CE90 35CE1402 */  ori        $t6, $t6, 0x1402
/* 3DA94 8003CE94 24590008 */  addiu      $t9, $v0, 8
/* 3DA98 8003CE98 AC790000 */  sw         $t9, ($v1)
/* 3DA9C 8003CE9C 240F0C00 */  addiu      $t7, $zero, 0xc00
/* 3DAA0 8003CEA0 AC4F0004 */  sw         $t7, 4($v0)
/* 3DAA4 8003CEA4 AC4E0000 */  sw         $t6, ($v0)
/* 3DAA8 8003CEA8 8C620000 */  lw         $v0, ($v1)
/* 3DAAC 8003CEAC 3C19E300 */  lui        $t9, 0xe300
/* 3DAB0 8003CEB0 37391201 */  ori        $t9, $t9, 0x1201
/* 3DAB4 8003CEB4 24580008 */  addiu      $t8, $v0, 8
/* 3DAB8 8003CEB8 AC780000 */  sw         $t8, ($v1)
/* 3DABC 8003CEBC 240E2000 */  addiu      $t6, $zero, 0x2000
/* 3DAC0 8003CEC0 AC4E0004 */  sw         $t6, 4($v0)
/* 3DAC4 8003CEC4 AC590000 */  sw         $t9, ($v0)
/* 3DAC8 8003CEC8 8C620000 */  lw         $v0, ($v1)
/* 3DACC 8003CECC 3C18E300 */  lui        $t8, 0xe300
/* 3DAD0 8003CED0 37180F00 */  ori        $t8, $t8, 0xf00
/* 3DAD4 8003CED4 244F0008 */  addiu      $t7, $v0, 8
/* 3DAD8 8003CED8 AC6F0000 */  sw         $t7, ($v1)
/* 3DADC 8003CEDC AC400004 */  sw         $zero, 4($v0)
/* 3DAE0 8003CEE0 AC580000 */  sw         $t8, ($v0)
/* 3DAE4 8003CEE4 8C620000 */  lw         $v0, ($v1)
/* 3DAE8 8003CEE8 3C0EE200 */  lui        $t6, 0xe200
/* 3DAEC 8003CEEC 35CE1E01 */  ori        $t6, $t6, 0x1e01
/* 3DAF0 8003CEF0 24590008 */  addiu      $t9, $v0, 8
/* 3DAF4 8003CEF4 AC790000 */  sw         $t9, ($v1)
/* 3DAF8 8003CEF8 AC400004 */  sw         $zero, 4($v0)
/* 3DAFC 8003CEFC AC4E0000 */  sw         $t6, ($v0)
/* 3DB00 8003CF00 8C620000 */  lw         $v0, ($v1)
/* 3DB04 8003CF04 3C0EFF2F */  lui        $t6, 0xff2f
/* 3DB08 8003CF08 3C18FC11 */  lui        $t8, 0xfc11
/* 3DB0C 8003CF0C 244F0008 */  addiu      $t7, $v0, 8
/* 3DB10 8003CF10 AC6F0000 */  sw         $t7, ($v1)
/* 3DB14 8003CF14 AFA20018 */  sw         $v0, 0x18($sp)
/* 3DB18 8003CF18 37189623 */  ori        $t8, $t8, 0x9623
/* 3DB1C 8003CF1C 35CEFFFF */  ori        $t6, $t6, 0xffff
/* 3DB20 8003CF20 AC4E0004 */  sw         $t6, 4($v0)
/* 3DB24 8003CF24 AC580000 */  sw         $t8, ($v0)
/* 3DB28 8003CF28 3C04800F */  lui        $a0, 0x800f
/* 3DB2C 8003CF2C 3C05800F */  lui        $a1, %hi(D_800F2A24)
/* 3DB30 8003CF30 3C06800F */  lui        $a2, %hi(D_800F2A28)
/* 3DB34 8003CF34 3C07800F */  lui        $a3, %hi(D_800F2A2C)
/* 3DB38 8003CF38 8CE72A2C */  lw         $a3, %lo(D_800F2A2C)($a3)
/* 3DB3C 8003CF3C 8CC62A28 */  lw         $a2, %lo(D_800F2A28)($a2)
/* 3DB40 8003CF40 8CA52A24 */  lw         $a1, %lo(D_800F2A24)($a1)
/* 3DB44 8003CF44 0C00F528 */  jal        func_8003D4A0
/* 3DB48 8003CF48 8C842A20 */   lw        $a0, 0x2a20($a0)
/* 3DB4C 8003CF4C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3DB50 8003CF50 3C0F800A */  lui        $t7, %hi(D_800A7040)
/* 3DB54 8003CF54 25EF7040 */  addiu      $t7, $t7, %lo(D_800A7040)
/* 3DB58 8003CF58 3C01800F */  lui        $at, %hi(D_800F2A58)
/* 3DB5C 8003CF5C AC2F2A58 */  sw         $t7, %lo(D_800F2A58)($at)
/* 3DB60 8003CF60 03E00008 */  jr         $ra
/* 3DB64 8003CF64 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8003CF68
/* 3DB68 8003CF68 3C0E800F */  lui        $t6, %hi(D_800F2A18)
/* 3DB6C 8003CF6C 8DCE2A18 */  lw         $t6, %lo(D_800F2A18)($t6)
/* 3DB70 8003CF70 03E00008 */  jr         $ra
/* 3DB74 8003CF74 AC8E0000 */   sw        $t6, ($a0)

glabel func_8003CF78
/* 3DB78 8003CF78 3C02800F */  lui        $v0, %hi(D_800F2A20)
/* 3DB7C 8003CF7C 24422A20 */  addiu      $v0, $v0, %lo(D_800F2A20)
/* 3DB80 8003CF80 240300FF */  addiu      $v1, $zero, 0xff
/* 3DB84 8003CF84 AC430000 */  sw         $v1, ($v0)
/* 3DB88 8003CF88 AC430004 */  sw         $v1, 4($v0)
/* 3DB8C 8003CF8C AC430008 */  sw         $v1, 8($v0)
/* 3DB90 8003CF90 AC43000C */  sw         $v1, 0xc($v0)
/* 3DB94 8003CF94 3C0E800F */  lui        $t6, %hi(D_800F2A00)
/* 3DB98 8003CF98 8DCE2A00 */  lw         $t6, %lo(D_800F2A00)($t6)
/* 3DB9C 8003CF9C 3C0F800F */  lui        $t7, %hi(D_800F2A04)
/* 3DBA0 8003CFA0 8DEF2A04 */  lw         $t7, %lo(D_800F2A04)($t7)
/* 3DBA4 8003CFA4 3C01800F */  lui        $at, %hi(D_800F2A30)
/* 3DBA8 8003CFA8 3C18800F */  lui        $t8, %hi(D_800F2A08)
/* 3DBAC 8003CFAC AC2E2A30 */  sw         $t6, %lo(D_800F2A30)($at)
/* 3DBB0 8003CFB0 8F182A08 */  lw         $t8, %lo(D_800F2A08)($t8)
/* 3DBB4 8003CFB4 3C01800F */  lui        $at, %hi(D_800F2A34)
/* 3DBB8 8003CFB8 AC2F2A34 */  sw         $t7, %lo(D_800F2A34)($at)
/* 3DBBC 8003CFBC 3C01800F */  lui        $at, %hi(D_800F2A38)
/* 3DBC0 8003CFC0 3C19800F */  lui        $t9, %hi(D_800F2A0C)
/* 3DBC4 8003CFC4 8F392A0C */  lw         $t9, %lo(D_800F2A0C)($t9)
/* 3DBC8 8003CFC8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3DBCC 8003CFCC AC382A38 */  sw         $t8, %lo(D_800F2A38)($at)
/* 3DBD0 8003CFD0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3DBD4 8003CFD4 3C01800F */  lui        $at, %hi(D_800F2A3C)
/* 3DBD8 8003CFD8 00002025 */  or         $a0, $zero, $zero
/* 3DBDC 8003CFDC 00002825 */  or         $a1, $zero, $zero
/* 3DBE0 8003CFE0 0C00F4F9 */  jal        func_8003D3E4
/* 3DBE4 8003CFE4 AC392A3C */   sw        $t9, %lo(D_800F2A3C)($at)
/* 3DBE8 8003CFE8 3C013F80 */  lui        $at, 0x3f80
/* 3DBEC 8003CFEC 44810000 */  mtc1       $at, $f0
/* 3DBF0 8003CFF0 3C01800F */  lui        $at, %hi(D_800F2A48)
/* 3DBF4 8003CFF4 AC202A48 */  sw         $zero, %lo(D_800F2A48)($at)
/* 3DBF8 8003CFF8 3C01800F */  lui        $at, %hi(D_800F2A4C)
/* 3DBFC 8003CFFC 24080001 */  addiu      $t0, $zero, 1
/* 3DC00 8003D000 AC282A4C */  sw         $t0, %lo(D_800F2A4C)($at)
/* 3DC04 8003D004 3C01800F */  lui        $at, %hi(D_800F2A50)
/* 3DC08 8003D008 E4202A50 */  swc1       $f0, %lo(D_800F2A50)($at)
/* 3DC0C 8003D00C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3DC10 8003D010 3C01800F */  lui        $at, %hi(D_800F2A54)
/* 3DC14 8003D014 3C09800A */  lui        $t1, %hi(D_800A7040)
/* 3DC18 8003D018 E4202A54 */  swc1       $f0, %lo(D_800F2A54)($at)
/* 3DC1C 8003D01C 3C01800F */  lui        $at, %hi(D_800F2A58)
/* 3DC20 8003D020 25297040 */  addiu      $t1, $t1, %lo(D_800A7040)
/* 3DC24 8003D024 AC292A58 */  sw         $t1, %lo(D_800F2A58)($at)
/* 3DC28 8003D028 03E00008 */  jr         $ra
/* 3DC2C 8003D02C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8003D030
/* 3DC30 8003D030 27BDFBB8 */  addiu      $sp, $sp, -0x448
/* 3DC34 8003D034 AFB00210 */  sw         $s0, 0x210($sp)
/* 3DC38 8003D038 AFA40448 */  sw         $a0, 0x448($sp)
/* 3DC3C 8003D03C 27B00244 */  addiu      $s0, $sp, 0x244
/* 3DC40 8003D040 AFA5044C */  sw         $a1, 0x44c($sp)
/* 3DC44 8003D044 27AE044C */  addiu      $t6, $sp, 0x44c
/* 3DC48 8003D048 AFBF0224 */  sw         $ra, 0x224($sp)
/* 3DC4C 8003D04C AFB40220 */  sw         $s4, 0x220($sp)
/* 3DC50 8003D050 AFB3021C */  sw         $s3, 0x21c($sp)
/* 3DC54 8003D054 AFB20218 */  sw         $s2, 0x218($sp)
/* 3DC58 8003D058 AFB10214 */  sw         $s1, 0x214($sp)
/* 3DC5C 8003D05C AFA60450 */  sw         $a2, 0x450($sp)
/* 3DC60 8003D060 AFA70454 */  sw         $a3, 0x454($sp)
/* 3DC64 8003D064 25D801F8 */  addiu      $t8, $t6, 0x1f8
/* 3DC68 8003D068 8FA50448 */  lw         $a1, 0x448($sp)
/* 3DC6C 8003D06C 02002025 */  or         $a0, $s0, $zero
/* 3DC70 8003D070 03A0C825 */  or         $t9, $sp, $zero
.L8003D074:
/* 3DC74 8003D074 89C10000 */  lwl        $at, ($t6)
/* 3DC78 8003D078 99C10003 */  lwr        $at, 3($t6)
/* 3DC7C 8003D07C 25CE000C */  addiu      $t6, $t6, 0xc
/* 3DC80 8003D080 2739000C */  addiu      $t9, $t9, 0xc
/* 3DC84 8003D084 AB21FFFC */  swl        $at, -4($t9)
/* 3DC88 8003D088 BB21FFFF */  swr        $at, -1($t9)
/* 3DC8C 8003D08C 89C1FFF8 */  lwl        $at, -8($t6)
/* 3DC90 8003D090 99C1FFFB */  lwr        $at, -5($t6)
/* 3DC94 8003D094 AB210000 */  swl        $at, ($t9)
/* 3DC98 8003D098 BB210003 */  swr        $at, 3($t9)
/* 3DC9C 8003D09C 89C1FFFC */  lwl        $at, -4($t6)
/* 3DCA0 8003D0A0 99C1FFFF */  lwr        $at, -1($t6)
/* 3DCA4 8003D0A4 AB210004 */  swl        $at, 4($t9)
/* 3DCA8 8003D0A8 15D8FFF2 */  bne        $t6, $t8, .L8003D074
/* 3DCAC 8003D0AC BB210007 */   swr       $at, 7($t9)
/* 3DCB0 8003D0B0 89C10000 */  lwl        $at, ($t6)
/* 3DCB4 8003D0B4 99C10003 */  lwr        $at, 3($t6)
/* 3DCB8 8003D0B8 AB210008 */  swl        $at, 8($t9)
/* 3DCBC 8003D0BC BB21000B */  swr        $at, 0xb($t9)
/* 3DCC0 8003D0C0 89D80004 */  lwl        $t8, 4($t6)
/* 3DCC4 8003D0C4 99D80007 */  lwr        $t8, 7($t6)
/* 3DCC8 8003D0C8 AB38000C */  swl        $t8, 0xc($t9)
/* 3DCCC 8003D0CC BB38000F */  swr        $t8, 0xf($t9)
/* 3DCD0 8003D0D0 8FA7000C */  lw         $a3, 0xc($sp)
/* 3DCD4 8003D0D4 0C014E38 */  jal        sprintf
/* 3DCD8 8003D0D8 8FA60008 */   lw        $a2, 8($sp)
/* 3DCDC 8003D0DC 3C06800F */  lui        $a2, %hi(D_800F2A18)
/* 3DCE0 8003D0E0 24C62A18 */  addiu      $a2, $a2, %lo(D_800F2A18)
/* 3DCE4 8003D0E4 8CC30000 */  lw         $v1, ($a2)
/* 3DCE8 8003D0E8 3C09E700 */  lui        $t1, 0xe700
/* 3DCEC 8003D0EC 3C0BE300 */  lui        $t3, 0xe300
/* 3DCF0 8003D0F0 24680008 */  addiu      $t0, $v1, 8
/* 3DCF4 8003D0F4 ACC80000 */  sw         $t0, ($a2)
/* 3DCF8 8003D0F8 AC600004 */  sw         $zero, 4($v1)
/* 3DCFC 8003D0FC AC690000 */  sw         $t1, ($v1)
/* 3DD00 8003D100 8CC30000 */  lw         $v1, ($a2)
/* 3DD04 8003D104 356B1001 */  ori        $t3, $t3, 0x1001
/* 3DD08 8003D108 02009025 */  or         $s2, $s0, $zero
/* 3DD0C 8003D10C 246A0008 */  addiu      $t2, $v1, 8
/* 3DD10 8003D110 ACCA0000 */  sw         $t2, ($a2)
/* 3DD14 8003D114 AC600004 */  sw         $zero, 4($v1)
/* 3DD18 8003D118 AC6B0000 */  sw         $t3, ($v1)
/* 3DD1C 8003D11C 93AC0244 */  lbu        $t4, 0x244($sp)
/* 3DD20 8003D120 27AD0244 */  addiu      $t5, $sp, 0x244
/* 3DD24 8003D124 2414000A */  addiu      $s4, $zero, 0xa
/* 3DD28 8003D128 11800022 */  beqz       $t4, .L8003D1B4
/* 3DD2C 8003D12C 24130001 */   addiu     $s3, $zero, 1
/* 3DD30 8003D130 91A40000 */  lbu        $a0, ($t5)
/* 3DD34 8003D134 8FB0023C */  lw         $s0, 0x23c($sp)
/* 3DD38 8003D138 308F0080 */  andi       $t7, $a0, 0x80
.L8003D13C:
/* 3DD3C 8003D13C 11E00008 */  beqz       $t7, .L8003D160
/* 3DD40 8003D140 00008825 */   or        $s1, $zero, $zero
/* 3DD44 8003D144 924E0001 */  lbu        $t6, 1($s2)
/* 3DD48 8003D148 0004C200 */  sll        $t8, $a0, 8
/* 3DD4C 8003D14C 02608825 */  or         $s1, $s3, $zero
/* 3DD50 8003D150 26520001 */  addiu      $s2, $s2, 1
/* 3DD54 8003D154 0C0126F4 */  jal        func_80049BD0
/* 3DD58 8003D158 030E2025 */   or        $a0, $t8, $t6
/* 3DD5C 8003D15C 00408025 */  or         $s0, $v0, $zero
.L8003D160:
/* 3DD60 8003D160 56330006 */  bnel       $s1, $s3, .L8003D17C
/* 3DD64 8003D164 92440000 */   lbu       $a0, ($s2)
/* 3DD68 8003D168 0C00F85F */  jal        func_8003E17C
/* 3DD6C 8003D16C 02002025 */   or        $a0, $s0, $zero
/* 3DD70 8003D170 1000000C */  b          .L8003D1A4
/* 3DD74 8003D174 92440001 */   lbu       $a0, 1($s2)
/* 3DD78 8003D178 92440000 */  lbu        $a0, ($s2)
.L8003D17C:
/* 3DD7C 8003D17C 3C19800F */  lui        $t9, %hi(D_800F2A38)
/* 3DD80 8003D180 16840005 */  bne        $s4, $a0, .L8003D198
/* 3DD84 8003D184 00000000 */   nop
/* 3DD88 8003D188 8F392A38 */  lw         $t9, %lo(D_800F2A38)($t9)
/* 3DD8C 8003D18C 3C01800F */  lui        $at, %hi(D_800F2A40)
/* 3DD90 8003D190 10000003 */  b          .L8003D1A0
/* 3DD94 8003D194 AC392A40 */   sw        $t9, %lo(D_800F2A40)($at)
.L8003D198:
/* 3DD98 8003D198 0C00F8F6 */  jal        func_8003E3D8
/* 3DD9C 8003D19C 00000000 */   nop
.L8003D1A0:
/* 3DDA0 8003D1A0 92440001 */  lbu        $a0, 1($s2)
.L8003D1A4:
/* 3DDA4 8003D1A4 26520001 */  addiu      $s2, $s2, 1
/* 3DDA8 8003D1A8 5480FFE4 */  bnel       $a0, $zero, .L8003D13C
/* 3DDAC 8003D1AC 308F0080 */   andi      $t7, $a0, 0x80
/* 3DDB0 8003D1B0 AFB0023C */  sw         $s0, 0x23c($sp)
.L8003D1B4:
/* 3DDB4 8003D1B4 24040010 */  addiu      $a0, $zero, 0x10
/* 3DDB8 8003D1B8 0C00F478 */  jal        func_8003D1E0
/* 3DDBC 8003D1BC 24050010 */   addiu     $a1, $zero, 0x10
/* 3DDC0 8003D1C0 8FBF0224 */  lw         $ra, 0x224($sp)
/* 3DDC4 8003D1C4 8FB00210 */  lw         $s0, 0x210($sp)
/* 3DDC8 8003D1C8 8FB10214 */  lw         $s1, 0x214($sp)
/* 3DDCC 8003D1CC 8FB20218 */  lw         $s2, 0x218($sp)
/* 3DDD0 8003D1D0 8FB3021C */  lw         $s3, 0x21c($sp)
/* 3DDD4 8003D1D4 8FB40220 */  lw         $s4, 0x220($sp)
/* 3DDD8 8003D1D8 03E00008 */  jr         $ra
/* 3DDDC 8003D1DC 27BD0448 */   addiu     $sp, $sp, 0x448

glabel func_8003D1E0
/* 3DDE0 8003D1E0 44842000 */  mtc1       $a0, $f4
/* 3DDE4 8003D1E4 3C013FE0 */  lui        $at, 0x3fe0
/* 3DDE8 8003D1E8 44811800 */  mtc1       $at, $f3
/* 3DDEC 8003D1EC 468021A0 */  cvt.s.w    $f6, $f4
/* 3DDF0 8003D1F0 3C01800F */  lui        $at, %hi(D_800F2A50)
/* 3DDF4 8003D1F4 C4282A50 */  lwc1       $f8, %lo(D_800F2A50)($at)
/* 3DDF8 8003D1F8 44801000 */  mtc1       $zero, $f2
/* 3DDFC 8003D1FC 3C02800F */  lui        $v0, %hi(D_800F2A40)
/* 3DE00 8003D200 24422A40 */  addiu      $v0, $v0, %lo(D_800F2A40)
/* 3DE04 8003D204 46083282 */  mul.s      $f10, $f6, $f8
/* 3DE08 8003D208 8C590000 */  lw         $t9, ($v0)
/* 3DE0C 8003D20C 3C0E800F */  lui        $t6, %hi(D_800F2A38)
/* 3DE10 8003D210 8DCE2A38 */  lw         $t6, %lo(D_800F2A38)($t6)
/* 3DE14 8003D214 24AFFFFF */  addiu      $t7, $a1, -1
/* 3DE18 8003D218 46005421 */  cvt.d.s    $f16, $f10
/* 3DE1C 8003D21C 46228480 */  add.d      $f18, $f16, $f2
/* 3DE20 8003D220 4620910D */  trunc.w.d  $f4, $f18
/* 3DE24 8003D224 44182000 */  mfc1       $t8, $f4
/* 3DE28 8003D228 00000000 */  nop
/* 3DE2C 8003D22C 03194021 */  addu       $t0, $t8, $t9
/* 3DE30 8003D230 01C8082A */  slt        $at, $t6, $t0
/* 3DE34 8003D234 50200014 */  beql       $at, $zero, .L8003D288
/* 3DE38 8003D238 448F4000 */   mtc1      $t7, $f8
/* 3DE3C 8003D23C 44853000 */  mtc1       $a1, $f6
/* 3DE40 8003D240 3C09800F */  lui        $t1, %hi(D_800F2A30)
/* 3DE44 8003D244 8D292A30 */  lw         $t1, %lo(D_800F2A30)($t1)
/* 3DE48 8003D248 46803220 */  cvt.s.w    $f8, $f6
/* 3DE4C 8003D24C 3C01800F */  lui        $at, %hi(D_800F2A54)
/* 3DE50 8003D250 AC490000 */  sw         $t1, ($v0)
/* 3DE54 8003D254 C42A2A54 */  lwc1       $f10, %lo(D_800F2A54)($at)
/* 3DE58 8003D258 3C07800F */  lui        $a3, %hi(D_800F2A44)
/* 3DE5C 8003D25C 24E72A44 */  addiu      $a3, $a3, %lo(D_800F2A44)
/* 3DE60 8003D260 460A4402 */  mul.s      $f16, $f8, $f10
/* 3DE64 8003D264 8CEC0000 */  lw         $t4, ($a3)
/* 3DE68 8003D268 460084A1 */  cvt.d.s    $f18, $f16
/* 3DE6C 8003D26C 46229100 */  add.d      $f4, $f18, $f2
/* 3DE70 8003D270 4620218D */  trunc.w.d  $f6, $f4
/* 3DE74 8003D274 440B3000 */  mfc1       $t3, $f6
/* 3DE78 8003D278 00000000 */  nop
/* 3DE7C 8003D27C 018B6821 */  addu       $t5, $t4, $t3
/* 3DE80 8003D280 ACED0000 */  sw         $t5, ($a3)
/* 3DE84 8003D284 448F4000 */  mtc1       $t7, $f8
.L8003D288:
/* 3DE88 8003D288 3C01800F */  lui        $at, %hi(D_800F2A54)
/* 3DE8C 8003D28C C4202A54 */  lwc1       $f0, %lo(D_800F2A54)($at)
/* 3DE90 8003D290 468042A0 */  cvt.s.w    $f10, $f8
/* 3DE94 8003D294 3C07800F */  lui        $a3, %hi(D_800F2A44)
/* 3DE98 8003D298 24E72A44 */  addiu      $a3, $a3, %lo(D_800F2A44)
/* 3DE9C 8003D29C 8CE20000 */  lw         $v0, ($a3)
/* 3DEA0 8003D2A0 3C04800F */  lui        $a0, %hi(D_800F2A3C)
/* 3DEA4 8003D2A4 8C842A3C */  lw         $a0, %lo(D_800F2A3C)($a0)
/* 3DEA8 8003D2A8 46005402 */  mul.s      $f16, $f10, $f0
/* 3DEAC 8003D2AC 460084A1 */  cvt.d.s    $f18, $f16
/* 3DEB0 8003D2B0 46229100 */  add.d      $f4, $f18, $f2
/* 3DEB4 8003D2B4 4620218D */  trunc.w.d  $f6, $f4
/* 3DEB8 8003D2B8 44063000 */  mfc1       $a2, $f6
/* 3DEBC 8003D2BC 00000000 */  nop
/* 3DEC0 8003D2C0 00C2C821 */  addu       $t9, $a2, $v0
/* 3DEC4 8003D2C4 0099082A */  slt        $at, $a0, $t9
/* 3DEC8 8003D2C8 10200012 */  beqz       $at, .L8003D314
/* 3DECC 8003D2CC 00000000 */   nop
/* 3DED0 8003D2D0 44854000 */  mtc1       $a1, $f8
/* 3DED4 8003D2D4 3C013FE0 */  lui        $at, 0x3fe0
/* 3DED8 8003D2D8 44812800 */  mtc1       $at, $f5
/* 3DEDC 8003D2DC 468042A0 */  cvt.s.w    $f10, $f8
/* 3DEE0 8003D2E0 44802000 */  mtc1       $zero, $f4
/* 3DEE4 8003D2E4 46005402 */  mul.s      $f16, $f10, $f0
/* 3DEE8 8003D2E8 460084A1 */  cvt.d.s    $f18, $f16
/* 3DEEC 8003D2EC 46249180 */  add.d      $f6, $f18, $f4
/* 3DEF0 8003D2F0 4620320D */  trunc.w.d  $f8, $f6
/* 3DEF4 8003D2F4 44034000 */  mfc1       $v1, $f8
/* 3DEF8 8003D2F8 00000000 */  nop
.L8003D2FC:
/* 3DEFC 8003D2FC 00434023 */  subu       $t0, $v0, $v1
/* 3DF00 8003D300 00C84821 */  addu       $t1, $a2, $t0
/* 3DF04 8003D304 0089082A */  slt        $at, $a0, $t1
/* 3DF08 8003D308 ACE80000 */  sw         $t0, ($a3)
/* 3DF0C 8003D30C 1420FFFB */  bnez       $at, .L8003D2FC
/* 3DF10 8003D310 01001025 */   or        $v0, $t0, $zero
.L8003D314:
/* 3DF14 8003D314 03E00008 */  jr         $ra
/* 3DF18 8003D318 00000000 */   nop

glabel func_8003D31C
/* 3DF1C 8003D31C 00C4082A */  slt        $at, $a2, $a0
/* 3DF20 8003D320 10200004 */  beqz       $at, .L8003D334
/* 3DF24 8003D324 3C03800F */   lui       $v1, 0x800f
/* 3DF28 8003D328 00C01025 */  or         $v0, $a2, $zero
/* 3DF2C 8003D32C 00803025 */  or         $a2, $a0, $zero
/* 3DF30 8003D330 00402025 */  or         $a0, $v0, $zero
.L8003D334:
/* 3DF34 8003D334 00E5082A */  slt        $at, $a3, $a1
/* 3DF38 8003D338 10200004 */  beqz       $at, .L8003D34C
/* 3DF3C 8003D33C 24632A30 */   addiu     $v1, $v1, 0x2a30
/* 3DF40 8003D340 00E01025 */  or         $v0, $a3, $zero
/* 3DF44 8003D344 00A03825 */  or         $a3, $a1, $zero
/* 3DF48 8003D348 00402825 */  or         $a1, $v0, $zero
.L8003D34C:
/* 3DF4C 8003D34C 04810003 */  bgez       $a0, .L8003D35C
/* 3DF50 8003D350 3C01800F */   lui       $at, 0x800f
/* 3DF54 8003D354 10000002 */  b          .L8003D360
/* 3DF58 8003D358 00001025 */   or        $v0, $zero, $zero
.L8003D35C:
/* 3DF5C 8003D35C 00801025 */  or         $v0, $a0, $zero
.L8003D360:
/* 3DF60 8003D360 AC620000 */  sw         $v0, ($v1)
/* 3DF64 8003D364 04A10003 */  bgez       $a1, .L8003D374
/* 3DF68 8003D368 AC222A40 */   sw        $v0, 0x2a40($at)
/* 3DF6C 8003D36C 10000002 */  b          .L8003D378
/* 3DF70 8003D370 00001025 */   or        $v0, $zero, $zero
.L8003D374:
/* 3DF74 8003D374 00A01025 */  or         $v0, $a1, $zero
.L8003D378:
/* 3DF78 8003D378 3C04800F */  lui        $a0, %hi(D_800F2A34)
/* 3DF7C 8003D37C 24842A34 */  addiu      $a0, $a0, %lo(D_800F2A34)
/* 3DF80 8003D380 AC820000 */  sw         $v0, ($a0)
/* 3DF84 8003D384 3C03800F */  lui        $v1, %hi(D_800F2A10)
/* 3DF88 8003D388 8C632A10 */  lw         $v1, %lo(D_800F2A10)($v1)
/* 3DF8C 8003D38C 3C01800F */  lui        $at, %hi(D_800F2A44)
/* 3DF90 8003D390 AC222A44 */  sw         $v0, %lo(D_800F2A44)($at)
/* 3DF94 8003D394 00C3082A */  slt        $at, $a2, $v1
/* 3DF98 8003D398 14200005 */  bnez       $at, .L8003D3B0
/* 3DF9C 8003D39C 3C02800F */   lui       $v0, 0x800f
/* 3DFA0 8003D3A0 2478FFFF */  addiu      $t8, $v1, -1
/* 3DFA4 8003D3A4 3C01800F */  lui        $at, %hi(D_800F2A38)
/* 3DFA8 8003D3A8 10000003 */  b          .L8003D3B8
/* 3DFAC 8003D3AC AC382A38 */   sw        $t8, %lo(D_800F2A38)($at)
.L8003D3B0:
/* 3DFB0 8003D3B0 3C01800F */  lui        $at, %hi(D_800F2A38)
/* 3DFB4 8003D3B4 AC262A38 */  sw         $a2, %lo(D_800F2A38)($at)
.L8003D3B8:
/* 3DFB8 8003D3B8 8C422A14 */  lw         $v0, 0x2a14($v0)
/* 3DFBC 8003D3BC 00E2082A */  slt        $at, $a3, $v0
/* 3DFC0 8003D3C0 14200004 */  bnez       $at, .L8003D3D4
/* 3DFC4 8003D3C4 2459FFFF */   addiu     $t9, $v0, -1
/* 3DFC8 8003D3C8 3C01800F */  lui        $at, %hi(D_800F2A3C)
/* 3DFCC 8003D3CC 03E00008 */  jr         $ra
/* 3DFD0 8003D3D0 AC392A3C */   sw        $t9, %lo(D_800F2A3C)($at)
.L8003D3D4:
/* 3DFD4 8003D3D4 3C01800F */  lui        $at, %hi(D_800F2A3C)
/* 3DFD8 8003D3D8 AC272A3C */  sw         $a3, %lo(D_800F2A3C)($at)
/* 3DFDC 8003D3DC 03E00008 */  jr         $ra
/* 3DFE0 8003D3E0 00000000 */   nop

glabel func_8003D3E4
/* 3DFE4 8003D3E4 3C0E800F */  lui        $t6, %hi(D_800F2A30)
/* 3DFE8 8003D3E8 8DCE2A30 */  lw         $t6, %lo(D_800F2A30)($t6)
/* 3DFEC 8003D3EC 3C18800F */  lui        $t8, %hi(D_800F2A34)
/* 3DFF0 8003D3F0 8F182A34 */  lw         $t8, %lo(D_800F2A34)($t8)
/* 3DFF4 8003D3F4 3C01800F */  lui        $at, %hi(D_800F2A40)
/* 3DFF8 8003D3F8 01C47821 */  addu       $t7, $t6, $a0
/* 3DFFC 8003D3FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3E000 8003D400 AC2F2A40 */  sw         $t7, %lo(D_800F2A40)($at)
/* 3E004 8003D404 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3E008 8003D408 3C01800F */  lui        $at, %hi(D_800F2A44)
/* 3E00C 8003D40C 0305C821 */  addu       $t9, $t8, $a1
/* 3E010 8003D410 AC392A44 */  sw         $t9, %lo(D_800F2A44)($at)
/* 3E014 8003D414 24050010 */  addiu      $a1, $zero, 0x10
/* 3E018 8003D418 0C00F478 */  jal        func_8003D1E0
/* 3E01C 8003D41C 24040010 */   addiu     $a0, $zero, 0x10
/* 3E020 8003D420 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3E024 8003D424 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3E028 8003D428 03E00008 */  jr         $ra
/* 3E02C 8003D42C 00000000 */   nop

glabel func_8003D430
/* 3E030 8003D430 3C0E800F */  lui        $t6, %hi(D_800F2A30)
/* 3E034 8003D434 8DCE2A30 */  lw         $t6, %lo(D_800F2A30)($t6)
/* 3E038 8003D438 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3E03C 8003D43C AFBF0014 */  sw         $ra, 0x14($sp)
/* 3E040 8003D440 3C01800F */  lui        $at, %hi(D_800F2A40)
/* 3E044 8003D444 01C47821 */  addu       $t7, $t6, $a0
/* 3E048 8003D448 AC2F2A40 */  sw         $t7, %lo(D_800F2A40)($at)
/* 3E04C 8003D44C 24040010 */  addiu      $a0, $zero, 0x10
/* 3E050 8003D450 0C00F478 */  jal        func_8003D1E0
/* 3E054 8003D454 24050010 */   addiu     $a1, $zero, 0x10
/* 3E058 8003D458 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3E05C 8003D45C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3E060 8003D460 03E00008 */  jr         $ra
/* 3E064 8003D464 00000000 */   nop

glabel func_8003D468
/* 3E068 8003D468 3C0E800F */  lui        $t6, %hi(D_800F2A34)
/* 3E06C 8003D46C 8DCE2A34 */  lw         $t6, %lo(D_800F2A34)($t6)
/* 3E070 8003D470 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3E074 8003D474 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3E078 8003D478 3C01800F */  lui        $at, %hi(D_800F2A44)
/* 3E07C 8003D47C 01C47821 */  addu       $t7, $t6, $a0
/* 3E080 8003D480 AC2F2A44 */  sw         $t7, %lo(D_800F2A44)($at)
/* 3E084 8003D484 24040010 */  addiu      $a0, $zero, 0x10
/* 3E088 8003D488 0C00F478 */  jal        func_8003D1E0
/* 3E08C 8003D48C 24050010 */   addiu     $a1, $zero, 0x10
/* 3E090 8003D490 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3E094 8003D494 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3E098 8003D498 03E00008 */  jr         $ra
/* 3E09C 8003D49C 00000000 */   nop

glabel func_8003D4A0
/* 3E0A0 8003D4A0 3C0A800F */  lui        $t2, %hi(D_800F2A18)
/* 3E0A4 8003D4A4 254A2A18 */  addiu      $t2, $t2, %lo(D_800F2A18)
/* 3E0A8 8003D4A8 3C09800F */  lui        $t1, %hi(D_800F2A20)
/* 3E0AC 8003D4AC 8D430000 */  lw         $v1, ($t2)
/* 3E0B0 8003D4B0 25292A20 */  addiu      $t1, $t1, %lo(D_800F2A20)
/* 3E0B4 8003D4B4 AD240000 */  sw         $a0, ($t1)
/* 3E0B8 8003D4B8 246E0008 */  addiu      $t6, $v1, 8
/* 3E0BC 8003D4BC AD250004 */  sw         $a1, 4($t1)
/* 3E0C0 8003D4C0 AD260008 */  sw         $a2, 8($t1)
/* 3E0C4 8003D4C4 AD27000C */  sw         $a3, 0xc($t1)
/* 3E0C8 8003D4C8 AD4E0000 */  sw         $t6, ($t2)
/* 3E0CC 8003D4CC 3C0FE700 */  lui        $t7, 0xe700
/* 3E0D0 8003D4D0 AC6F0000 */  sw         $t7, ($v1)
/* 3E0D4 8003D4D4 AC600004 */  sw         $zero, 4($v1)
/* 3E0D8 8003D4D8 8D430000 */  lw         $v1, ($t2)
/* 3E0DC 8003D4DC 3C19FA00 */  lui        $t9, 0xfa00
/* 3E0E0 8003D4E0 240100FF */  addiu      $at, $zero, 0xff
/* 3E0E4 8003D4E4 24780008 */  addiu      $t8, $v1, 8
/* 3E0E8 8003D4E8 AD580000 */  sw         $t8, ($t2)
/* 3E0EC 8003D4EC AC790000 */  sw         $t9, ($v1)
/* 3E0F0 8003D4F0 8D2E0000 */  lw         $t6, ($t1)
/* 3E0F4 8003D4F4 8D2B000C */  lw         $t3, 0xc($t1)
/* 3E0F8 8003D4F8 8D390004 */  lw         $t9, 4($t1)
/* 3E0FC 8003D4FC 000E7E00 */  sll        $t7, $t6, 0x18
/* 3E100 8003D500 316C00FF */  andi       $t4, $t3, 0xff
/* 3E104 8003D504 018FC025 */  or         $t8, $t4, $t7
/* 3E108 8003D508 8D2C0008 */  lw         $t4, 8($t1)
/* 3E10C 8003D50C 332B00FF */  andi       $t3, $t9, 0xff
/* 3E110 8003D510 000B6C00 */  sll        $t5, $t3, 0x10
/* 3E114 8003D514 318F00FF */  andi       $t7, $t4, 0xff
/* 3E118 8003D518 000FCA00 */  sll        $t9, $t7, 8
/* 3E11C 8003D51C 030D7025 */  or         $t6, $t8, $t5
/* 3E120 8003D520 01D95825 */  or         $t3, $t6, $t9
/* 3E124 8003D524 14E1000B */  bne        $a3, $at, .L8003D554
/* 3E128 8003D528 AC6B0004 */   sw        $t3, 4($v1)
/* 3E12C 8003D52C 8D430000 */  lw         $v1, ($t2)
/* 3E130 8003D530 3C0DE200 */  lui        $t5, 0xe200
/* 3E134 8003D534 3C0C0055 */  lui        $t4, 0x55
/* 3E138 8003D538 24780008 */  addiu      $t8, $v1, 8
/* 3E13C 8003D53C AD580000 */  sw         $t8, ($t2)
/* 3E140 8003D540 358C3048 */  ori        $t4, $t4, 0x3048
/* 3E144 8003D544 35AD001C */  ori        $t5, $t5, 0x1c
/* 3E148 8003D548 AC6D0000 */  sw         $t5, ($v1)
/* 3E14C 8003D54C 03E00008 */  jr         $ra
/* 3E150 8003D550 AC6C0004 */   sw        $t4, 4($v1)
.L8003D554:
/* 3E154 8003D554 8D430000 */  lw         $v1, ($t2)
/* 3E158 8003D558 3C0EE200 */  lui        $t6, 0xe200
/* 3E15C 8003D55C 3C190050 */  lui        $t9, 0x50
/* 3E160 8003D560 246F0008 */  addiu      $t7, $v1, 8
/* 3E164 8003D564 AD4F0000 */  sw         $t7, ($t2)
/* 3E168 8003D568 373941C8 */  ori        $t9, $t9, 0x41c8
/* 3E16C 8003D56C 35CE001C */  ori        $t6, $t6, 0x1c
/* 3E170 8003D570 AC6E0000 */  sw         $t6, ($v1)
/* 3E174 8003D574 AC790004 */  sw         $t9, 4($v1)
/* 3E178 8003D578 03E00008 */  jr         $ra
/* 3E17C 8003D57C 00000000 */   nop

glabel func_8003D580
/* 3E180 8003D580 3C01800F */  lui        $at, %hi(D_800F2A58)
/* 3E184 8003D584 03E00008 */  jr         $ra
/* 3E188 8003D588 AC242A58 */   sw        $a0, %lo(D_800F2A58)($at)

glabel func_8003D58C
/* 3E18C 8003D58C 3C01800F */  lui        $at, %hi(D_800F2A48)
/* 3E190 8003D590 03E00008 */  jr         $ra
/* 3E194 8003D594 AC242A48 */   sw        $a0, %lo(D_800F2A48)($at)

glabel func_8003D598
/* 3E198 8003D598 3C01800F */  lui        $at, %hi(D_800F2A50)
/* 3E19C 8003D59C E42C2A50 */  swc1       $f12, %lo(D_800F2A50)($at)
/* 3E1A0 8003D5A0 3C01800F */  lui        $at, %hi(D_800F2A54)
/* 3E1A4 8003D5A4 03E00008 */  jr         $ra
/* 3E1A8 8003D5A8 E42E2A54 */   swc1      $f14, %lo(D_800F2A54)($at)

glabel func_8003D5AC
/* 3E1AC 8003D5AC 3C01800F */  lui        $at, %hi(D_800F2A4C)
/* 3E1B0 8003D5B0 03E00008 */  jr         $ra
/* 3E1B4 8003D5B4 AC242A4C */   sw        $a0, %lo(D_800F2A4C)($at)

glabel func_8003D5B8
/* 3E1B8 8003D5B8 3C0E800F */  lui        $t6, %hi(D_800F2A00)
/* 3E1BC 8003D5BC 8DCE2A00 */  lw         $t6, %lo(D_800F2A00)($t6)
/* 3E1C0 8003D5C0 3C0F800F */  lui        $t7, %hi(D_800F2A04)
/* 3E1C4 8003D5C4 3C18800F */  lui        $t8, %hi(D_800F2A08)
/* 3E1C8 8003D5C8 AC8E0000 */  sw         $t6, ($a0)
/* 3E1CC 8003D5CC 8DEF2A04 */  lw         $t7, %lo(D_800F2A04)($t7)
/* 3E1D0 8003D5D0 3C19800F */  lui        $t9, %hi(D_800F2A0C)
/* 3E1D4 8003D5D4 ACAF0000 */  sw         $t7, ($a1)
/* 3E1D8 8003D5D8 8F182A08 */  lw         $t8, %lo(D_800F2A08)($t8)
/* 3E1DC 8003D5DC ACD80000 */  sw         $t8, ($a2)
/* 3E1E0 8003D5E0 8F392A0C */  lw         $t9, %lo(D_800F2A0C)($t9)
/* 3E1E4 8003D5E4 03E00008 */  jr         $ra
/* 3E1E8 8003D5E8 ACF90000 */   sw        $t9, ($a3)

glabel func_8003D5EC
/* 3E1EC 8003D5EC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3E1F0 8003D5F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3E1F4 8003D5F4 8C8E0004 */  lw         $t6, 4($a0)
/* 3E1F8 8003D5F8 3C06800F */  lui        $a2, %hi(D_800F2A18)
/* 3E1FC 8003D5FC 24C62A18 */  addiu      $a2, $a2, %lo(D_800F2A18)
/* 3E200 8003D600 AFAE001C */  sw         $t6, 0x1c($sp)
/* 3E204 8003D604 8C8F0008 */  lw         $t7, 8($a0)
/* 3E208 8003D608 00802825 */  or         $a1, $a0, $zero
/* 3E20C 8003D60C 00C02025 */  or         $a0, $a2, $zero
/* 3E210 8003D610 0C00F761 */  jal        func_8003DD84
/* 3E214 8003D614 AFAF0018 */   sw        $t7, 0x18($sp)
/* 3E218 8003D618 3C013FE0 */  lui        $at, 0x3fe0
/* 3E21C 8003D61C 44816800 */  mtc1       $at, $f13
/* 3E220 8003D620 3C014480 */  lui        $at, 0x4480
/* 3E224 8003D624 44817000 */  mtc1       $at, $f14
/* 3E228 8003D628 3C01800F */  lui        $at, %hi(D_800F2A50)
/* 3E22C 8003D62C C4202A50 */  lwc1       $f0, %lo(D_800F2A50)($at)
/* 3E230 8003D630 3C01800F */  lui        $at, %hi(D_800F2A54)
/* 3E234 8003D634 C4222A54 */  lwc1       $f2, %lo(D_800F2A54)($at)
/* 3E238 8003D638 46007103 */  div.s      $f4, $f14, $f0
/* 3E23C 8003D63C 44806000 */  mtc1       $zero, $f12
/* 3E240 8003D640 8FAC001C */  lw         $t4, 0x1c($sp)
/* 3E244 8003D644 3C09800F */  lui        $t1, %hi(D_800F2A40)
/* 3E248 8003D648 25292A40 */  addiu      $t1, $t1, %lo(D_800F2A40)
/* 3E24C 8003D64C 8D2F0000 */  lw         $t7, ($t1)
/* 3E250 8003D650 3C06800F */  lui        $a2, %hi(D_800F2A18)
/* 3E254 8003D654 24C62A18 */  addiu      $a2, $a2, %lo(D_800F2A18)
/* 3E258 8003D658 8CC20000 */  lw         $v0, ($a2)
/* 3E25C 8003D65C 3C0A800F */  lui        $t2, %hi(D_800F2A44)
/* 3E260 8003D660 254A2A44 */  addiu      $t2, $t2, %lo(D_800F2A44)
/* 3E264 8003D664 244B0008 */  addiu      $t3, $v0, 8
/* 3E268 8003D668 ACCB0000 */  sw         $t3, ($a2)
/* 3E26C 8003D66C 3C01E400 */  lui        $at, 0xe400
/* 3E270 8003D670 46027403 */  div.s      $f16, $f14, $f2
/* 3E274 8003D674 460021A1 */  cvt.d.s    $f6, $f4
/* 3E278 8003D678 462C3200 */  add.d      $f8, $f6, $f12
/* 3E27C 8003D67C 4620428D */  trunc.w.d  $f10, $f8
/* 3E280 8003D680 448C4000 */  mtc1       $t4, $f8
/* 3E284 8003D684 460084A1 */  cvt.d.s    $f18, $f16
/* 3E288 8003D688 44075000 */  mfc1       $a3, $f10
/* 3E28C 8003D68C 468042A0 */  cvt.s.w    $f10, $f8
/* 3E290 8003D690 462C9100 */  add.d      $f4, $f18, $f12
/* 3E294 8003D694 46005402 */  mul.s      $f16, $f10, $f0
/* 3E298 8003D698 4620218D */  trunc.w.d  $f6, $f4
/* 3E29C 8003D69C 4600848D */  trunc.w.s  $f18, $f16
/* 3E2A0 8003D6A0 44083000 */  mfc1       $t0, $f6
/* 3E2A4 8003D6A4 440E9000 */  mfc1       $t6, $f18
/* 3E2A8 8003D6A8 00000000 */  nop
/* 3E2AC 8003D6AC 01CFC021 */  addu       $t8, $t6, $t7
/* 3E2B0 8003D6B0 8FAF0018 */  lw         $t7, 0x18($sp)
/* 3E2B4 8003D6B4 0018C880 */  sll        $t9, $t8, 2
/* 3E2B8 8003D6B8 332B0FFF */  andi       $t3, $t9, 0xfff
/* 3E2BC 8003D6BC 448F2000 */  mtc1       $t7, $f4
/* 3E2C0 8003D6C0 8D4E0000 */  lw         $t6, ($t2)
/* 3E2C4 8003D6C4 000B6300 */  sll        $t4, $t3, 0xc
/* 3E2C8 8003D6C8 468021A0 */  cvt.s.w    $f6, $f4
/* 3E2CC 8003D6CC 01816825 */  or         $t5, $t4, $at
/* 3E2D0 8003D6D0 46023202 */  mul.s      $f8, $f6, $f2
/* 3E2D4 8003D6D4 4600428D */  trunc.w.s  $f10, $f8
/* 3E2D8 8003D6D8 44195000 */  mfc1       $t9, $f10
/* 3E2DC 8003D6DC 00000000 */  nop
/* 3E2E0 8003D6E0 01D95821 */  addu       $t3, $t6, $t9
/* 3E2E4 8003D6E4 000B6080 */  sll        $t4, $t3, 2
/* 3E2E8 8003D6E8 318F0FFF */  andi       $t7, $t4, 0xfff
/* 3E2EC 8003D6EC 01AFC025 */  or         $t8, $t5, $t7
/* 3E2F0 8003D6F0 AC580000 */  sw         $t8, ($v0)
/* 3E2F4 8003D6F4 8D2E0000 */  lw         $t6, ($t1)
/* 3E2F8 8003D6F8 8D4D0000 */  lw         $t5, ($t2)
/* 3E2FC 8003D6FC 000EC880 */  sll        $t9, $t6, 2
/* 3E300 8003D700 332B0FFF */  andi       $t3, $t9, 0xfff
/* 3E304 8003D704 000D7880 */  sll        $t7, $t5, 2
/* 3E308 8003D708 31F80FFF */  andi       $t8, $t7, 0xfff
/* 3E30C 8003D70C 000B6300 */  sll        $t4, $t3, 0xc
/* 3E310 8003D710 01987025 */  or         $t6, $t4, $t8
/* 3E314 8003D714 AC4E0004 */  sw         $t6, 4($v0)
/* 3E318 8003D718 8CC20000 */  lw         $v0, ($a2)
/* 3E31C 8003D71C 3C0BE100 */  lui        $t3, 0xe100
/* 3E320 8003D720 0007C400 */  sll        $t8, $a3, 0x10
/* 3E324 8003D724 24590008 */  addiu      $t9, $v0, 8
/* 3E328 8003D728 ACD90000 */  sw         $t9, ($a2)
/* 3E32C 8003D72C AC400004 */  sw         $zero, 4($v0)
/* 3E330 8003D730 AC4B0000 */  sw         $t3, ($v0)
/* 3E334 8003D734 8CC20000 */  lw         $v0, ($a2)
/* 3E338 8003D738 310EFFFF */  andi       $t6, $t0, 0xffff
/* 3E33C 8003D73C 030EC825 */  or         $t9, $t8, $t6
/* 3E340 8003D740 244D0008 */  addiu      $t5, $v0, 8
/* 3E344 8003D744 ACCD0000 */  sw         $t5, ($a2)
/* 3E348 8003D748 3C0FF100 */  lui        $t7, 0xf100
/* 3E34C 8003D74C AC4F0000 */  sw         $t7, ($v0)
/* 3E350 8003D750 AC590004 */  sw         $t9, 4($v0)
/* 3E354 8003D754 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3E358 8003D758 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3E35C 8003D75C 03E00008 */  jr         $ra
/* 3E360 8003D760 00000000 */   nop

glabel func_8003D764
/* 3E364 8003D764 27BDFF68 */  addiu      $sp, $sp, -0x98
/* 3E368 8003D768 AFB60048 */  sw         $s6, 0x48($sp)
/* 3E36C 8003D76C AFB50044 */  sw         $s5, 0x44($sp)
/* 3E370 8003D770 AFB3003C */  sw         $s3, 0x3c($sp)
/* 3E374 8003D774 AFB10034 */  sw         $s1, 0x34($sp)
/* 3E378 8003D778 00C08825 */  or         $s1, $a2, $zero
/* 3E37C 8003D77C 00809825 */  or         $s3, $a0, $zero
/* 3E380 8003D780 00E0A825 */  or         $s5, $a3, $zero
/* 3E384 8003D784 00A0B025 */  or         $s6, $a1, $zero
/* 3E388 8003D788 AFBF0054 */  sw         $ra, 0x54($sp)
/* 3E38C 8003D78C AFBE0050 */  sw         $fp, 0x50($sp)
/* 3E390 8003D790 AFB7004C */  sw         $s7, 0x4c($sp)
/* 3E394 8003D794 AFB40040 */  sw         $s4, 0x40($sp)
/* 3E398 8003D798 AFB20038 */  sw         $s2, 0x38($sp)
/* 3E39C 8003D79C AFB00030 */  sw         $s0, 0x30($sp)
/* 3E3A0 8003D7A0 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 3E3A4 8003D7A4 04C10004 */  bgez       $a2, .L8003D7B8
/* 3E3A8 8003D7A8 F7B40020 */   sdc1      $f20, 0x20($sp)
/* 3E3AC 8003D7AC 00067023 */  negu       $t6, $a2
/* 3E3B0 8003D7B0 AFAE00B0 */  sw         $t6, 0xb0($sp)
/* 3E3B4 8003D7B4 00008825 */  or         $s1, $zero, $zero
.L8003D7B8:
/* 3E3B8 8003D7B8 06A10004 */  bgez       $s5, .L8003D7CC
/* 3E3BC 8003D7BC 3C02800F */   lui       $v0, %hi(D_800F2A10)
/* 3E3C0 8003D7C0 0015A023 */  negu       $s4, $s5
/* 3E3C4 8003D7C4 AFB400B4 */  sw         $s4, 0xb4($sp)
/* 3E3C8 8003D7C8 0000A825 */  or         $s5, $zero, $zero
.L8003D7CC:
/* 3E3CC 8003D7CC 8FA700A8 */  lw         $a3, 0xa8($sp)
/* 3E3D0 8003D7D0 8C422A10 */  lw         $v0, %lo(D_800F2A10)($v0)
/* 3E3D4 8003D7D4 8FB400B4 */  lw         $s4, 0xb4($sp)
/* 3E3D8 8003D7D8 8FA800AC */  lw         $t0, 0xac($sp)
/* 3E3DC 8003D7DC 0047082A */  slt        $at, $v0, $a3
/* 3E3E0 8003D7E0 10200002 */  beqz       $at, .L8003D7EC
/* 3E3E4 8003D7E4 8FAF00B0 */   lw        $t7, 0xb0($sp)
/* 3E3E8 8003D7E8 00403825 */  or         $a3, $v0, $zero
.L8003D7EC:
/* 3E3EC 8003D7EC 3C02800F */  lui        $v0, %hi(D_800F2A14)
/* 3E3F0 8003D7F0 8C422A14 */  lw         $v0, %lo(D_800F2A14)($v0)
/* 3E3F4 8003D7F4 0048082A */  slt        $at, $v0, $t0
/* 3E3F8 8003D7F8 50200003 */  beql       $at, $zero, .L8003D808
/* 3E3FC 8003D7FC 8EC40004 */   lw        $a0, 4($s6)
/* 3E400 8003D800 00404025 */  or         $t0, $v0, $zero
/* 3E404 8003D804 8EC40004 */  lw         $a0, 4($s6)
.L8003D808:
/* 3E408 8003D808 01E4082A */  slt        $at, $t7, $a0
/* 3E40C 8003D80C 5020007E */  beql       $at, $zero, .L8003DA08
/* 3E410 8003D810 8FBF0054 */   lw        $ra, 0x54($sp)
/* 3E414 8003D814 8EC50008 */  lw         $a1, 8($s6)
/* 3E418 8003D818 00F11023 */  subu       $v0, $a3, $s1
/* 3E41C 8003D81C 24430001 */  addiu      $v1, $v0, 1
/* 3E420 8003D820 0285082A */  slt        $at, $s4, $a1
/* 3E424 8003D824 10200077 */  beqz       $at, .L8003DA04
/* 3E428 8003D828 008F3023 */   subu      $a2, $a0, $t7
/* 3E42C 8003D82C 00C3082A */  slt        $at, $a2, $v1
/* 3E430 8003D830 10200002 */  beqz       $at, .L8003D83C
/* 3E434 8003D834 01E0C025 */   or        $t8, $t7, $zero
/* 3E438 8003D838 00C01825 */  or         $v1, $a2, $zero
.L8003D83C:
/* 3E43C 8003D83C 01151023 */  subu       $v0, $t0, $s5
/* 3E440 8003D840 24420001 */  addiu      $v0, $v0, 1
/* 3E444 8003D844 00B42023 */  subu       $a0, $a1, $s4
/* 3E448 8003D848 0082082A */  slt        $at, $a0, $v0
/* 3E44C 8003D84C 10200002 */  beqz       $at, .L8003D858
/* 3E450 8003D850 00409025 */   or        $s2, $v0, $zero
/* 3E454 8003D854 00809025 */  or         $s2, $a0, $zero
.L8003D858:
/* 3E458 8003D858 5860006B */  blezl      $v1, .L8003DA08
/* 3E45C 8003D85C 8FBF0054 */   lw        $ra, 0x54($sp)
/* 3E460 8003D860 1A400068 */  blez       $s2, .L8003DA04
/* 3E464 8003D864 24191000 */   addiu     $t9, $zero, 0x1000
/* 3E468 8003D868 0323001A */  div        $zero, $t9, $v1
/* 3E46C 8003D86C 00008012 */  mflo       $s0
/* 3E470 8003D870 0223B821 */  addu       $s7, $s1, $v1
/* 3E474 8003D874 14600002 */  bnez       $v1, .L8003D880
/* 3E478 8003D878 00000000 */   nop
/* 3E47C 8003D87C 0007000D */  break      7
.L8003D880:
/* 3E480 8003D880 2401FFFF */   addiu     $at, $zero, -1
/* 3E484 8003D884 14610004 */  bne        $v1, $at, .L8003D898
/* 3E488 8003D888 3C018000 */   lui       $at, 0x8000
/* 3E48C 8003D88C 17210002 */  bne        $t9, $at, .L8003D898
/* 3E490 8003D890 00000000 */   nop
/* 3E494 8003D894 0006000D */  break      6
.L8003D898:
/* 3E498 8003D898 00175080 */   sll       $t2, $s7, 2
/* 3E49C 8003D89C 1A400059 */  blez       $s2, .L8003DA04
/* 3E4A0 8003D8A0 AFB6009C */   sw        $s6, 0x9c($sp)
/* 3E4A4 8003D8A4 314B0FFF */  andi       $t3, $t2, 0xfff
/* 3E4A8 8003D8A8 000B6300 */  sll        $t4, $t3, 0xc
/* 3E4AC 8003D8AC 3C01E400 */  lui        $at, 0xe400
/* 3E4B0 8003D8B0 0181B825 */  or         $s7, $t4, $at
/* 3E4B4 8003D8B4 3C014480 */  lui        $at, 0x4480
/* 3E4B8 8003D8B8 44812000 */  mtc1       $at, $f4
/* 3E4BC 8003D8BC C7A600B8 */  lwc1       $f6, 0xb8($sp)
/* 3E4C0 8003D8C0 3C013F00 */  lui        $at, 0x3f00
/* 3E4C4 8003D8C4 44815000 */  mtc1       $at, $f10
/* 3E4C8 8003D8C8 46062203 */  div.s      $f8, $f4, $f6
/* 3E4CC 8003D8CC 3C014480 */  lui        $at, 0x4480
/* 3E4D0 8003D8D0 44812000 */  mtc1       $at, $f4
/* 3E4D4 8003D8D4 C7B600BC */  lwc1       $f22, 0xbc($sp)
/* 3E4D8 8003D8D8 3C013F00 */  lui        $at, 0x3f00
/* 3E4DC 8003D8DC 8FB800B0 */  lw         $t8, 0xb0($sp)
/* 3E4E0 8003D8E0 0011F080 */  sll        $fp, $s1, 2
/* 3E4E4 8003D8E4 33CE0FFF */  andi       $t6, $fp, 0xfff
/* 3E4E8 8003D8E8 0303B021 */  addu       $s6, $t8, $v1
/* 3E4EC 8003D8EC 00184540 */  sll        $t0, $t8, 0x15
/* 3E4F0 8003D8F0 26D6FFFF */  addiu      $s6, $s6, -1
/* 3E4F4 8003D8F4 000EF300 */  sll        $fp, $t6, 0xc
/* 3E4F8 8003D8F8 46162183 */  div.s      $f6, $f4, $f22
/* 3E4FC 8003D8FC 460A4400 */  add.s      $f16, $f8, $f10
/* 3E500 8003D900 44814000 */  mtc1       $at, $f8
/* 3E504 8003D904 4600848D */  trunc.w.s  $f18, $f16
/* 3E508 8003D908 440C9000 */  mfc1       $t4, $f18
/* 3E50C 8003D90C 00000000 */  nop
/* 3E510 8003D910 000C6C00 */  sll        $t5, $t4, 0x10
/* 3E514 8003D914 46083280 */  add.s      $f10, $f6, $f8
/* 3E518 8003D918 4600540D */  trunc.w.s  $f16, $f10
/* 3E51C 8003D91C 440F8000 */  mfc1       $t7, $f16
/* 3E520 8003D920 00000000 */  nop
/* 3E524 8003D924 31F8FFFF */  andi       $t8, $t7, 0xffff
/* 3E528 8003D928 01B84825 */  or         $t1, $t5, $t8
.L8003D92C:
/* 3E52C 8003D92C 0250082A */  slt        $at, $s2, $s0
/* 3E530 8003D930 10200002 */  beqz       $at, .L8003D93C
/* 3E534 8003D934 8FA600B0 */   lw        $a2, 0xb0($sp)
/* 3E538 8003D938 02408025 */  or         $s0, $s2, $zero
.L8003D93C:
/* 3E53C 8003D93C 44909000 */  mtc1       $s0, $f18
/* 3E540 8003D940 02908821 */  addu       $s1, $s4, $s0
/* 3E544 8003D944 2639FFFF */  addiu      $t9, $s1, -1
/* 3E548 8003D948 46809120 */  cvt.s.w    $f4, $f18
/* 3E54C 8003D94C AFB90014 */  sw         $t9, 0x14($sp)
/* 3E550 8003D950 02602025 */  or         $a0, $s3, $zero
/* 3E554 8003D954 8FA5009C */  lw         $a1, 0x9c($sp)
/* 3E558 8003D958 02803825 */  or         $a3, $s4, $zero
/* 3E55C 8003D95C AFB60010 */  sw         $s6, 0x10($sp)
/* 3E560 8003D960 46162502 */  mul.s      $f20, $f4, $f22
/* 3E564 8003D964 AFA80064 */  sw         $t0, 0x64($sp)
/* 3E568 8003D968 0C00F68F */  jal        func_8003DA3C
/* 3E56C 8003D96C AFA9005C */   sw        $t1, 0x5c($sp)
/* 3E570 8003D970 8E620000 */  lw         $v0, ($s3)
/* 3E574 8003D974 44953000 */  mtc1       $s5, $f6
/* 3E578 8003D978 02B05821 */  addu       $t3, $s5, $s0
/* 3E57C 8003D97C 8FA80064 */  lw         $t0, 0x64($sp)
/* 3E580 8003D980 8FA9005C */  lw         $t1, 0x5c($sp)
/* 3E584 8003D984 000B6080 */  sll        $t4, $t3, 2
/* 3E588 8003D988 00156880 */  sll        $t5, $s5, 2
/* 3E58C 8003D98C 244A0008 */  addiu      $t2, $v0, 8
/* 3E590 8003D990 46803220 */  cvt.s.w    $f8, $f6
/* 3E594 8003D994 AE6A0000 */  sw         $t2, ($s3)
/* 3E598 8003D998 31B80FFF */  andi       $t8, $t5, 0xfff
/* 3E59C 8003D99C 318E0FFF */  andi       $t6, $t4, 0xfff
/* 3E5A0 8003D9A0 02EE7825 */  or         $t7, $s7, $t6
/* 3E5A4 8003D9A4 03D8C825 */  or         $t9, $fp, $t8
/* 3E5A8 8003D9A8 AC590004 */  sw         $t9, 4($v0)
/* 3E5AC 8003D9AC AC4F0000 */  sw         $t7, ($v0)
/* 3E5B0 8003D9B0 8E620000 */  lw         $v0, ($s3)
/* 3E5B4 8003D9B4 46144280 */  add.s      $f10, $f8, $f20
/* 3E5B8 8003D9B8 00146140 */  sll        $t4, $s4, 5
/* 3E5BC 8003D9BC 244A0008 */  addiu      $t2, $v0, 8
/* 3E5C0 8003D9C0 AE6A0000 */  sw         $t2, ($s3)
/* 3E5C4 8003D9C4 318EFFFF */  andi       $t6, $t4, 0xffff
/* 3E5C8 8003D9C8 3C0BE100 */  lui        $t3, 0xe100
/* 3E5CC 8003D9CC 010E7825 */  or         $t7, $t0, $t6
/* 3E5D0 8003D9D0 AC4F0004 */  sw         $t7, 4($v0)
/* 3E5D4 8003D9D4 AC4B0000 */  sw         $t3, ($v0)
/* 3E5D8 8003D9D8 4600540D */  trunc.w.s  $f16, $f10
/* 3E5DC 8003D9DC 8E620000 */  lw         $v0, ($s3)
/* 3E5E0 8003D9E0 02509023 */  subu       $s2, $s2, $s0
/* 3E5E4 8003D9E4 3C18F100 */  lui        $t8, 0xf100
/* 3E5E8 8003D9E8 244D0008 */  addiu      $t5, $v0, 8
/* 3E5EC 8003D9EC AE6D0000 */  sw         $t5, ($s3)
/* 3E5F0 8003D9F0 44158000 */  mfc1       $s5, $f16
/* 3E5F4 8003D9F4 0220A025 */  or         $s4, $s1, $zero
/* 3E5F8 8003D9F8 AC490004 */  sw         $t1, 4($v0)
/* 3E5FC 8003D9FC 1E40FFCB */  bgtz       $s2, .L8003D92C
/* 3E600 8003DA00 AC580000 */   sw        $t8, ($v0)
.L8003DA04:
/* 3E604 8003DA04 8FBF0054 */  lw         $ra, 0x54($sp)
.L8003DA08:
/* 3E608 8003DA08 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 3E60C 8003DA0C D7B60028 */  ldc1       $f22, 0x28($sp)
/* 3E610 8003DA10 8FB00030 */  lw         $s0, 0x30($sp)
/* 3E614 8003DA14 8FB10034 */  lw         $s1, 0x34($sp)
/* 3E618 8003DA18 8FB20038 */  lw         $s2, 0x38($sp)
/* 3E61C 8003DA1C 8FB3003C */  lw         $s3, 0x3c($sp)
/* 3E620 8003DA20 8FB40040 */  lw         $s4, 0x40($sp)
/* 3E624 8003DA24 8FB50044 */  lw         $s5, 0x44($sp)
/* 3E628 8003DA28 8FB60048 */  lw         $s6, 0x48($sp)
/* 3E62C 8003DA2C 8FB7004C */  lw         $s7, 0x4c($sp)
/* 3E630 8003DA30 8FBE0050 */  lw         $fp, 0x50($sp)
/* 3E634 8003DA34 03E00008 */  jr         $ra
/* 3E638 8003DA38 27BD0098 */   addiu     $sp, $sp, 0x98

glabel func_8003DA3C
/* 3E63C 8003DA3C 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 3E640 8003DA40 AFB1000C */  sw         $s1, 0xc($sp)
/* 3E644 8003DA44 8FB10078 */  lw         $s1, 0x78($sp)
/* 3E648 8003DA48 AFB00008 */  sw         $s0, 8($sp)
/* 3E64C 8003DA4C 00C08025 */  or         $s0, $a2, $zero
/* 3E650 8003DA50 0226082A */  slt        $at, $s1, $a2
/* 3E654 8003DA54 10200003 */  beqz       $at, .L8003DA64
/* 3E658 8003DA58 8FA8007C */   lw        $t0, 0x7c($sp)
/* 3E65C 8003DA5C 02208025 */  or         $s0, $s1, $zero
/* 3E660 8003DA60 00C08825 */  or         $s1, $a2, $zero
.L8003DA64:
/* 3E664 8003DA64 0107082A */  slt        $at, $t0, $a3
/* 3E668 8003DA68 10200003 */  beqz       $at, .L8003DA78
/* 3E66C 8003DA6C 00E01025 */   or        $v0, $a3, $zero
/* 3E670 8003DA70 01003825 */  or         $a3, $t0, $zero
/* 3E674 8003DA74 00404025 */  or         $t0, $v0, $zero
.L8003DA78:
/* 3E678 8003DA78 06010002 */  bgez       $s0, .L8003DA84
/* 3E67C 8003DA7C 00000000 */   nop
/* 3E680 8003DA80 00008025 */  or         $s0, $zero, $zero
.L8003DA84:
/* 3E684 8003DA84 04E30003 */  bgezl      $a3, .L8003DA94
/* 3E688 8003DA88 8CA20004 */   lw        $v0, 4($a1)
/* 3E68C 8003DA8C 00003825 */  or         $a3, $zero, $zero
/* 3E690 8003DA90 8CA20004 */  lw         $v0, 4($a1)
.L8003DA94:
/* 3E694 8003DA94 2442FFFF */  addiu      $v0, $v0, -1
/* 3E698 8003DA98 0051082A */  slt        $at, $v0, $s1
/* 3E69C 8003DA9C 50200003 */  beql       $at, $zero, .L8003DAAC
/* 3E6A0 8003DAA0 8CA20008 */   lw        $v0, 8($a1)
/* 3E6A4 8003DAA4 00408825 */  or         $s1, $v0, $zero
/* 3E6A8 8003DAA8 8CA20008 */  lw         $v0, 8($a1)
.L8003DAAC:
/* 3E6AC 8003DAAC 2442FFFF */  addiu      $v0, $v0, -1
/* 3E6B0 8003DAB0 0048082A */  slt        $at, $v0, $t0
/* 3E6B4 8003DAB4 50200003 */  beql       $at, $zero, .L8003DAC4
/* 3E6B8 8003DAB8 0230082A */   slt       $at, $s1, $s0
/* 3E6BC 8003DABC 00404025 */  or         $t0, $v0, $zero
/* 3E6C0 8003DAC0 0230082A */  slt        $at, $s1, $s0
.L8003DAC4:
/* 3E6C4 8003DAC4 142000AB */  bnez       $at, .L8003DD74
/* 3E6C8 8003DAC8 0107082A */   slt       $at, $t0, $a3
/* 3E6CC 8003DACC 542000AA */  bnel       $at, $zero, .L8003DD78
/* 3E6D0 8003DAD0 8FB00008 */   lw        $s0, 8($sp)
/* 3E6D4 8003DAD4 8C820000 */  lw         $v0, ($a0)
/* 3E6D8 8003DAD8 3C09E700 */  lui        $t1, 0xe700
/* 3E6DC 8003DADC 3C0BF500 */  lui        $t3, 0xf500
/* 3E6E0 8003DAE0 244E0008 */  addiu      $t6, $v0, 8
/* 3E6E4 8003DAE4 AC8E0000 */  sw         $t6, ($a0)
/* 3E6E8 8003DAE8 AC400004 */  sw         $zero, 4($v0)
/* 3E6EC 8003DAEC 10A000A1 */  beqz       $a1, .L8003DD74
/* 3E6F0 8003DAF0 AC490000 */   sw        $t1, ($v0)
/* 3E6F4 8003DAF4 8CAF000C */  lw         $t7, 0xc($a1)
/* 3E6F8 8003DAF8 24010002 */  addiu      $at, $zero, 2
/* 3E6FC 8003DAFC 340E8000 */  ori        $t6, $zero, 0x8000
/* 3E700 8003DB00 15E10032 */  bne        $t7, $at, .L8003DBCC
/* 3E704 8003DB04 3C19E300 */   lui       $t9, 0xe300
/* 3E708 8003DB08 8C820000 */  lw         $v0, ($a0)
/* 3E70C 8003DB0C 3C19E300 */  lui        $t9, 0xe300
/* 3E710 8003DB10 37391001 */  ori        $t9, $t9, 0x1001
/* 3E714 8003DB14 24580008 */  addiu      $t8, $v0, 8
/* 3E718 8003DB18 AC980000 */  sw         $t8, ($a0)
/* 3E71C 8003DB1C AC4E0004 */  sw         $t6, 4($v0)
/* 3E720 8003DB20 AC590000 */  sw         $t9, ($v0)
/* 3E724 8003DB24 8C820000 */  lw         $v0, ($a0)
/* 3E728 8003DB28 3C18FD10 */  lui        $t8, 0xfd10
/* 3E72C 8003DB2C 3C19800F */  lui        $t9, %hi(D_800F2A58)
/* 3E730 8003DB30 244F0008 */  addiu      $t7, $v0, 8
/* 3E734 8003DB34 AC8F0000 */  sw         $t7, ($a0)
/* 3E738 8003DB38 AC580000 */  sw         $t8, ($v0)
/* 3E73C 8003DB3C 8F392A58 */  lw         $t9, %lo(D_800F2A58)($t9)
/* 3E740 8003DB40 3C0FE800 */  lui        $t7, 0xe800
/* 3E744 8003DB44 3C0A0700 */  lui        $t2, 0x700
/* 3E748 8003DB48 AC590004 */  sw         $t9, 4($v0)
/* 3E74C 8003DB4C 8C820000 */  lw         $v0, ($a0)
/* 3E750 8003DB50 3C19F500 */  lui        $t9, 0xf500
/* 3E754 8003DB54 37390100 */  ori        $t9, $t9, 0x100
/* 3E758 8003DB58 244E0008 */  addiu      $t6, $v0, 8
/* 3E75C 8003DB5C AC8E0000 */  sw         $t6, ($a0)
/* 3E760 8003DB60 AC400004 */  sw         $zero, 4($v0)
/* 3E764 8003DB64 AC4F0000 */  sw         $t7, ($v0)
/* 3E768 8003DB68 8C820000 */  lw         $v0, ($a0)
/* 3E76C 8003DB6C 3C0FE600 */  lui        $t7, 0xe600
/* 3E770 8003DB70 24580008 */  addiu      $t8, $v0, 8
/* 3E774 8003DB74 AC980000 */  sw         $t8, ($a0)
/* 3E778 8003DB78 AC4A0004 */  sw         $t2, 4($v0)
/* 3E77C 8003DB7C AC590000 */  sw         $t9, ($v0)
/* 3E780 8003DB80 8C820000 */  lw         $v0, ($a0)
/* 3E784 8003DB84 3C19F000 */  lui        $t9, 0xf000
/* 3E788 8003DB88 244E0008 */  addiu      $t6, $v0, 8
/* 3E78C 8003DB8C AC8E0000 */  sw         $t6, ($a0)
/* 3E790 8003DB90 AC400004 */  sw         $zero, 4($v0)
/* 3E794 8003DB94 AC4F0000 */  sw         $t7, ($v0)
/* 3E798 8003DB98 8C820000 */  lw         $v0, ($a0)
/* 3E79C 8003DB9C 3C0E0703 */  lui        $t6, 0x703
/* 3E7A0 8003DBA0 35CEC000 */  ori        $t6, $t6, 0xc000
/* 3E7A4 8003DBA4 24580008 */  addiu      $t8, $v0, 8
/* 3E7A8 8003DBA8 AC980000 */  sw         $t8, ($a0)
/* 3E7AC 8003DBAC AC4E0004 */  sw         $t6, 4($v0)
/* 3E7B0 8003DBB0 AC590000 */  sw         $t9, ($v0)
/* 3E7B4 8003DBB4 8C820000 */  lw         $v0, ($a0)
/* 3E7B8 8003DBB8 244F0008 */  addiu      $t7, $v0, 8
/* 3E7BC 8003DBBC AC8F0000 */  sw         $t7, ($a0)
/* 3E7C0 8003DBC0 AC400004 */  sw         $zero, 4($v0)
/* 3E7C4 8003DBC4 10000008 */  b          .L8003DBE8
/* 3E7C8 8003DBC8 AC490000 */   sw        $t1, ($v0)
.L8003DBCC:
/* 3E7CC 8003DBCC 8C820000 */  lw         $v0, ($a0)
/* 3E7D0 8003DBD0 37391001 */  ori        $t9, $t9, 0x1001
/* 3E7D4 8003DBD4 3C0A0700 */  lui        $t2, 0x700
/* 3E7D8 8003DBD8 24580008 */  addiu      $t8, $v0, 8
/* 3E7DC 8003DBDC AC980000 */  sw         $t8, ($a0)
/* 3E7E0 8003DBE0 AC400004 */  sw         $zero, 4($v0)
/* 3E7E4 8003DBE4 AC590000 */  sw         $t9, ($v0)
.L8003DBE8:
/* 3E7E8 8003DBE8 8C820000 */  lw         $v0, ($a0)
/* 3E7EC 8003DBEC 3C01FD00 */  lui        $at, 0xfd00
/* 3E7F0 8003DBF0 02301823 */  subu       $v1, $s1, $s0
/* 3E7F4 8003DBF4 244E0008 */  addiu      $t6, $v0, 8
/* 3E7F8 8003DBF8 AC8E0000 */  sw         $t6, ($a0)
/* 3E7FC 8003DBFC 8CAF000C */  lw         $t7, 0xc($a1)
/* 3E800 8003DC00 24630001 */  addiu      $v1, $v1, 1
/* 3E804 8003DC04 00076880 */  sll        $t5, $a3, 2
/* 3E808 8003DC08 31F80007 */  andi       $t8, $t7, 7
/* 3E80C 8003DC0C 0018CD40 */  sll        $t9, $t8, 0x15
/* 3E810 8003DC10 8CB80004 */  lw         $t8, 4($a1)
/* 3E814 8003DC14 03217025 */  or         $t6, $t9, $at
/* 3E818 8003DC18 3C010008 */  lui        $at, 8
/* 3E81C 8003DC1C 01C17825 */  or         $t7, $t6, $at
/* 3E820 8003DC20 0018C843 */  sra        $t9, $t8, 1
/* 3E824 8003DC24 272EFFFF */  addiu      $t6, $t9, -1
/* 3E828 8003DC28 31D80FFF */  andi       $t8, $t6, 0xfff
/* 3E82C 8003DC2C 01F8C825 */  or         $t9, $t7, $t8
/* 3E830 8003DC30 AC590000 */  sw         $t9, ($v0)
/* 3E834 8003DC34 8CAE0000 */  lw         $t6, ($a1)
/* 3E838 8003DC38 0003C043 */  sra        $t8, $v1, 1
/* 3E83C 8003DC3C 27030007 */  addiu      $v1, $t8, 7
/* 3E840 8003DC40 AC4E0004 */  sw         $t6, 4($v0)
/* 3E844 8003DC44 8C820000 */  lw         $v0, ($a0)
/* 3E848 8003DC48 0003C8C3 */  sra        $t9, $v1, 3
/* 3E84C 8003DC4C 332E01FF */  andi       $t6, $t9, 0x1ff
/* 3E850 8003DC50 244F0008 */  addiu      $t7, $v0, 8
/* 3E854 8003DC54 AC8F0000 */  sw         $t7, ($a0)
/* 3E858 8003DC58 8CB8000C */  lw         $t8, 0xc($a1)
/* 3E85C 8003DC5C 000E1A40 */  sll        $v1, $t6, 9
/* 3E860 8003DC60 AC4A0004 */  sw         $t2, 4($v0)
/* 3E864 8003DC64 33190007 */  andi       $t9, $t8, 7
/* 3E868 8003DC68 00197540 */  sll        $t6, $t9, 0x15
/* 3E86C 8003DC6C 01CB7825 */  or         $t7, $t6, $t3
/* 3E870 8003DC70 01E1C025 */  or         $t8, $t7, $at
/* 3E874 8003DC74 0303C825 */  or         $t9, $t8, $v1
/* 3E878 8003DC78 AC590000 */  sw         $t9, ($v0)
/* 3E87C 8003DC7C 8C820000 */  lw         $v0, ($a0)
/* 3E880 8003DC80 3C0FE600 */  lui        $t7, 0xe600
/* 3E884 8003DC84 31B90FFF */  andi       $t9, $t5, 0xfff
/* 3E888 8003DC88 244E0008 */  addiu      $t6, $v0, 8
/* 3E88C 8003DC8C AC8E0000 */  sw         $t6, ($a0)
/* 3E890 8003DC90 AC400004 */  sw         $zero, 4($v0)
/* 3E894 8003DC94 AC4F0000 */  sw         $t7, ($v0)
/* 3E898 8003DC98 8C820000 */  lw         $v0, ($a0)
/* 3E89C 8003DC9C 00107040 */  sll        $t6, $s0, 1
/* 3E8A0 8003DCA0 31CF0FFF */  andi       $t7, $t6, 0xfff
/* 3E8A4 8003DCA4 24580008 */  addiu      $t8, $v0, 8
/* 3E8A8 8003DCA8 AC980000 */  sw         $t8, ($a0)
/* 3E8AC 8003DCAC 000FC300 */  sll        $t8, $t7, 0xc
/* 3E8B0 8003DCB0 03206825 */  or         $t5, $t9, $zero
/* 3E8B4 8003DCB4 3C01F400 */  lui        $at, 0xf400
/* 3E8B8 8003DCB8 0301C825 */  or         $t9, $t8, $at
/* 3E8BC 8003DCBC 032D7025 */  or         $t6, $t9, $t5
/* 3E8C0 8003DCC0 0011C840 */  sll        $t9, $s1, 1
/* 3E8C4 8003DCC4 00087880 */  sll        $t7, $t0, 2
/* 3E8C8 8003DCC8 AC4E0000 */  sw         $t6, ($v0)
/* 3E8CC 8003DCCC 332E0FFF */  andi       $t6, $t9, 0xfff
/* 3E8D0 8003DCD0 31F80FFF */  andi       $t8, $t7, 0xfff
/* 3E8D4 8003DCD4 000E7B00 */  sll        $t7, $t6, 0xc
/* 3E8D8 8003DCD8 01EAC825 */  or         $t9, $t7, $t2
/* 3E8DC 8003DCDC 03387025 */  or         $t6, $t9, $t8
/* 3E8E0 8003DCE0 AFB80014 */  sw         $t8, 0x14($sp)
/* 3E8E4 8003DCE4 AC4E0004 */  sw         $t6, 4($v0)
/* 3E8E8 8003DCE8 8C820000 */  lw         $v0, ($a0)
/* 3E8EC 8003DCEC 3C01F200 */  lui        $at, 0xf200
/* 3E8F0 8003DCF0 AFA20028 */  sw         $v0, 0x28($sp)
/* 3E8F4 8003DCF4 244F0008 */  addiu      $t7, $v0, 8
/* 3E8F8 8003DCF8 AC8F0000 */  sw         $t7, ($a0)
/* 3E8FC 8003DCFC 8FB90028 */  lw         $t9, 0x28($sp)
/* 3E900 8003DD00 AF290000 */  sw         $t1, ($t9)
/* 3E904 8003DD04 AF200004 */  sw         $zero, 4($t9)
/* 3E908 8003DD08 8C820000 */  lw         $v0, ($a0)
/* 3E90C 8003DD0C AFA20024 */  sw         $v0, 0x24($sp)
/* 3E910 8003DD10 24580008 */  addiu      $t8, $v0, 8
/* 3E914 8003DD14 AC980000 */  sw         $t8, ($a0)
/* 3E918 8003DD18 8CAE000C */  lw         $t6, 0xc($a1)
/* 3E91C 8003DD1C 31CF0007 */  andi       $t7, $t6, 7
/* 3E920 8003DD20 000FCD40 */  sll        $t9, $t7, 0x15
/* 3E924 8003DD24 8FAF0024 */  lw         $t7, 0x24($sp)
/* 3E928 8003DD28 032BC025 */  or         $t8, $t9, $t3
/* 3E92C 8003DD2C 03037025 */  or         $t6, $t8, $v1
/* 3E930 8003DD30 ADEE0000 */  sw         $t6, ($t7)
/* 3E934 8003DD34 ADE00004 */  sw         $zero, 4($t7)
/* 3E938 8003DD38 8C820000 */  lw         $v0, ($a0)
/* 3E93C 8003DD3C 0010C080 */  sll        $t8, $s0, 2
/* 3E940 8003DD40 330E0FFF */  andi       $t6, $t8, 0xfff
/* 3E944 8003DD44 24590008 */  addiu      $t9, $v0, 8
/* 3E948 8003DD48 AC990000 */  sw         $t9, ($a0)
/* 3E94C 8003DD4C 000E7B00 */  sll        $t7, $t6, 0xc
/* 3E950 8003DD50 01E1C825 */  or         $t9, $t7, $at
/* 3E954 8003DD54 032DC025 */  or         $t8, $t9, $t5
/* 3E958 8003DD58 AC580000 */  sw         $t8, ($v0)
/* 3E95C 8003DD5C 8FB80014 */  lw         $t8, 0x14($sp)
/* 3E960 8003DD60 00117080 */  sll        $t6, $s1, 2
/* 3E964 8003DD64 31CF0FFF */  andi       $t7, $t6, 0xfff
/* 3E968 8003DD68 000FCB00 */  sll        $t9, $t7, 0xc
/* 3E96C 8003DD6C 03387025 */  or         $t6, $t9, $t8
/* 3E970 8003DD70 AC4E0004 */  sw         $t6, 4($v0)
.L8003DD74:
/* 3E974 8003DD74 8FB00008 */  lw         $s0, 8($sp)
.L8003DD78:
/* 3E978 8003DD78 8FB1000C */  lw         $s1, 0xc($sp)
/* 3E97C 8003DD7C 03E00008 */  jr         $ra
/* 3E980 8003DD80 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_8003DD84
/* 3E984 8003DD84 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3E988 8003DD88 AFBF001C */  sw         $ra, 0x1c($sp)
/* 3E98C 8003DD8C 8CAE0004 */  lw         $t6, 4($a1)
/* 3E990 8003DD90 00003025 */  or         $a2, $zero, $zero
/* 3E994 8003DD94 00003825 */  or         $a3, $zero, $zero
/* 3E998 8003DD98 25CFFFFF */  addiu      $t7, $t6, -1
/* 3E99C 8003DD9C AFAF0010 */  sw         $t7, 0x10($sp)
/* 3E9A0 8003DDA0 8CB80008 */  lw         $t8, 8($a1)
/* 3E9A4 8003DDA4 2719FFFF */  addiu      $t9, $t8, -1
/* 3E9A8 8003DDA8 0C00F68F */  jal        func_8003DA3C
/* 3E9AC 8003DDAC AFB90014 */   sw        $t9, 0x14($sp)
/* 3E9B0 8003DDB0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 3E9B4 8003DDB4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3E9B8 8003DDB8 03E00008 */  jr         $ra
/* 3E9BC 8003DDBC 00000000 */   nop

glabel func_8003DDC0
/* 3E9C0 8003DDC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3E9C4 8003DDC4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3E9C8 8003DDC8 AFA40018 */  sw         $a0, 0x18($sp)
/* 3E9CC 8003DDCC 14C00004 */  bnez       $a2, .L8003DDE0
/* 3E9D0 8003DDD0 AFA5001C */   sw        $a1, 0x1c($sp)
/* 3E9D4 8003DDD4 0C00F780 */  jal        func_8003DE00
/* 3E9D8 8003DDD8 AFA60020 */   sw        $a2, 0x20($sp)
/* 3E9DC 8003DDDC 8FA60020 */  lw         $a2, 0x20($sp)
.L8003DDE0:
/* 3E9E0 8003DDE0 10C00003 */  beqz       $a2, .L8003DDF0
/* 3E9E4 8003DDE4 8FA40018 */   lw        $a0, 0x18($sp)
/* 3E9E8 8003DDE8 0C00FA25 */  jal        func_8003E894
/* 3E9EC 8003DDEC 8FA5001C */   lw        $a1, 0x1c($sp)
.L8003DDF0:
/* 3E9F0 8003DDF0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3E9F4 8003DDF4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3E9F8 8003DDF8 03E00008 */  jr         $ra
/* 3E9FC 8003DDFC 00000000 */   nop

glabel func_8003DE00
/* 3EA00 8003DE00 27BDFF50 */  addiu      $sp, $sp, -0xb0
/* 3EA04 8003DE04 AFBF003C */  sw         $ra, 0x3c($sp)
/* 3EA08 8003DE08 AFB1001C */  sw         $s1, 0x1c($sp)
/* 3EA0C 8003DE0C AFA400B0 */  sw         $a0, 0xb0($sp)
/* 3EA10 8003DE10 240E0010 */  addiu      $t6, $zero, 0x10
/* 3EA14 8003DE14 00A08825 */  or         $s1, $a1, $zero
/* 3EA18 8003DE18 AFBE0038 */  sw         $fp, 0x38($sp)
/* 3EA1C 8003DE1C AFB70034 */  sw         $s7, 0x34($sp)
/* 3EA20 8003DE20 AFB60030 */  sw         $s6, 0x30($sp)
/* 3EA24 8003DE24 AFB5002C */  sw         $s5, 0x2c($sp)
/* 3EA28 8003DE28 AFB40028 */  sw         $s4, 0x28($sp)
/* 3EA2C 8003DE2C AFB30024 */  sw         $s3, 0x24($sp)
/* 3EA30 8003DE30 AFB20020 */  sw         $s2, 0x20($sp)
/* 3EA34 8003DE34 AFB00018 */  sw         $s0, 0x18($sp)
/* 3EA38 8003DE38 AFA600B8 */  sw         $a2, 0xb8($sp)
/* 3EA3C 8003DE3C AFAE00A8 */  sw         $t6, 0xa8($sp)
/* 3EA40 8003DE40 0C0126AB */  jal        func_80049AAC
/* 3EA44 8003DE44 00A02025 */   or        $a0, $a1, $zero
/* 3EA48 8003DE48 240F0080 */  addiu      $t7, $zero, 0x80
/* 3EA4C 8003DE4C 28410081 */  slti       $at, $v0, 0x81
/* 3EA50 8003DE50 00401825 */  or         $v1, $v0, $zero
/* 3EA54 8003DE54 14200002 */  bnez       $at, .L8003DE60
/* 3EA58 8003DE58 AFAF0094 */   sw        $t7, 0x94($sp)
/* 3EA5C 8003DE5C 24030080 */  addiu      $v1, $zero, 0x80
.L8003DE60:
/* 3EA60 8003DE60 14600004 */  bnez       $v1, .L8003DE74
/* 3EA64 8003DE64 3C12800F */   lui       $s2, %hi(D_800F2960)
/* 3EA68 8003DE68 8FB800B0 */  lw         $t8, 0xb0($sp)
/* 3EA6C 8003DE6C 100000A0 */  b          .L8003E0F0
/* 3EA70 8003DE70 AF000000 */   sw        $zero, ($t8)
.L8003DE74:
/* 3EA74 8003DE74 26522960 */  addiu      $s2, $s2, %lo(D_800F2960)
/* 3EA78 8003DE78 02402025 */  or         $a0, $s2, $zero
/* 3EA7C 8003DE7C 24050010 */  addiu      $a1, $zero, 0x10
/* 3EA80 8003DE80 2406027F */  addiu      $a2, $zero, 0x27f
/* 3EA84 8003DE84 0C00E03D */  jal        func_800380F4
/* 3EA88 8003DE88 AFA30098 */   sw        $v1, 0x98($sp)
/* 3EA8C 8003DE8C 8FB00098 */  lw         $s0, 0x98($sp)
/* 3EA90 8003DE90 AFA20060 */  sw         $v0, 0x60($sp)
/* 3EA94 8003DE94 02402025 */  or         $a0, $s2, $zero
/* 3EA98 8003DE98 00102980 */  sll        $a1, $s0, 6
/* 3EA9C 8003DE9C 00A08025 */  or         $s0, $a1, $zero
/* 3EAA0 8003DEA0 0C00E03D */  jal        func_800380F4
/* 3EAA4 8003DEA4 24060282 */   addiu     $a2, $zero, 0x282
/* 3EAA8 8003DEA8 AFA20074 */  sw         $v0, 0x74($sp)
/* 3EAAC 8003DEAC 00402025 */  or         $a0, $v0, $zero
/* 3EAB0 8003DEB0 0C014388 */  jal        _bzero
/* 3EAB4 8003DEB4 02002825 */   or        $a1, $s0, $zero
/* 3EAB8 8003DEB8 AFB10064 */  sw         $s1, 0x64($sp)
/* 3EABC 8003DEBC AFA00084 */  sw         $zero, 0x84($sp)
/* 3EAC0 8003DEC0 92290000 */  lbu        $t1, ($s1)
/* 3EAC4 8003DEC4 241E0007 */  addiu      $fp, $zero, 7
/* 3EAC8 8003DEC8 2417000C */  addiu      $s7, $zero, 0xc
/* 3EACC 8003DECC 1120007C */  beqz       $t1, .L8003E0C0
/* 3EAD0 8003DED0 312200FF */   andi      $v0, $t1, 0xff
/* 3EAD4 8003DED4 AFA00090 */  sw         $zero, 0x90($sp)
/* 3EAD8 8003DED8 24160008 */  addiu      $s6, $zero, 8
/* 3EADC 8003DEDC 304B0080 */  andi       $t3, $v0, 0x80
.L8003DEE0:
/* 3EAE0 8003DEE0 8FA80090 */  lw         $t0, 0x90($sp)
/* 3EAE4 8003DEE4 11600020 */  beqz       $t3, .L8003DF68
/* 3EAE8 8003DEE8 00009825 */   or        $s3, $zero, $zero
/* 3EAEC 8003DEEC 25080001 */  addiu      $t0, $t0, 1
/* 3EAF0 8003DEF0 29010080 */  slti       $at, $t0, 0x80
/* 3EAF4 8003DEF4 10200010 */  beqz       $at, .L8003DF38
/* 3EAF8 8003DEF8 24150004 */   addiu     $s5, $zero, 4
/* 3EAFC 8003DEFC 8FA30064 */  lw         $v1, 0x64($sp)
/* 3EB00 8003DF00 AFA80090 */  sw         $t0, 0x90($sp)
/* 3EB04 8003DF04 250D0001 */  addiu      $t5, $t0, 1
/* 3EB08 8003DF08 AFAD0090 */  sw         $t5, 0x90($sp)
/* 3EB0C 8003DF0C 906F0001 */  lbu        $t7, 1($v1)
/* 3EB10 8003DF10 00027200 */  sll        $t6, $v0, 8
/* 3EB14 8003DF14 24630001 */  addiu      $v1, $v1, 1
/* 3EB18 8003DF18 02C0A825 */  or         $s5, $s6, $zero
/* 3EB1C 8003DF1C AFA30064 */  sw         $v1, 0x64($sp)
/* 3EB20 8003DF20 0C0126F4 */  jal        func_80049BD0
/* 3EB24 8003DF24 01CF2025 */   or        $a0, $t6, $t7
/* 3EB28 8003DF28 0C012ABF */  jal        func_8004AAFC
/* 3EB2C 8003DF2C 00402025 */   or        $a0, $v0, $zero
/* 3EB30 8003DF30 1000001C */  b          .L8003DFA4
/* 3EB34 8003DF34 00402025 */   or        $a0, $v0, $zero
.L8003DF38:
/* 3EB38 8003DF38 3C04800F */  lui        $a0, %hi(D_800F2A48)
/* 3EB3C 8003DF3C 8C842A48 */  lw         $a0, %lo(D_800F2A48)($a0)
/* 3EB40 8003DF40 27A5005C */  addiu      $a1, $sp, 0x5c
/* 3EB44 8003DF44 27A60058 */  addiu      $a2, $sp, 0x58
/* 3EB48 8003DF48 0004C080 */  sll        $t8, $a0, 2
/* 3EB4C 8003DF4C 0304C023 */  subu       $t8, $t8, $a0
/* 3EB50 8003DF50 00182180 */  sll        $a0, $t8, 6
/* 3EB54 8003DF54 27A70054 */  addiu      $a3, $sp, 0x54
/* 3EB58 8003DF58 0C012AB0 */  jal        func_8004AAC0
/* 3EB5C 8003DF5C AFA80090 */   sw        $t0, 0x90($sp)
/* 3EB60 8003DF60 10000010 */  b          .L8003DFA4
/* 3EB64 8003DF64 00402025 */   or        $a0, $v0, $zero
.L8003DF68:
/* 3EB68 8003DF68 3C19800F */  lui        $t9, %hi(D_800F2A48)
/* 3EB6C 8003DF6C 8F392A48 */  lw         $t9, %lo(D_800F2A48)($t9)
/* 3EB70 8003DF70 25080001 */  addiu      $t0, $t0, 1
/* 3EB74 8003DF74 24150004 */  addiu      $s5, $zero, 4
/* 3EB78 8003DF78 00194880 */  sll        $t1, $t9, 2
/* 3EB7C 8003DF7C 01394823 */  subu       $t1, $t1, $t9
/* 3EB80 8003DF80 00094980 */  sll        $t1, $t1, 6
/* 3EB84 8003DF84 00492021 */  addu       $a0, $v0, $t1
/* 3EB88 8003DF88 2484FFE0 */  addiu      $a0, $a0, -0x20
/* 3EB8C 8003DF8C AFA80090 */  sw         $t0, 0x90($sp)
/* 3EB90 8003DF90 27A5005C */  addiu      $a1, $sp, 0x5c
/* 3EB94 8003DF94 27A60058 */  addiu      $a2, $sp, 0x58
/* 3EB98 8003DF98 0C012AB0 */  jal        func_8004AAC0
/* 3EB9C 8003DF9C 27A70054 */   addiu     $a3, $sp, 0x54
/* 3EBA0 8003DFA0 00402025 */  or         $a0, $v0, $zero
.L8003DFA4:
/* 3EBA4 8003DFA4 0C00F848 */  jal        func_8003E120
/* 3EBA8 8003DFA8 27A5004C */   addiu     $a1, $sp, 0x4c
/* 3EBAC 8003DFAC 8FAA004C */  lw         $t2, 0x4c($sp)
/* 3EBB0 8003DFB0 24010004 */  addiu      $at, $zero, 4
/* 3EBB4 8003DFB4 00408825 */  or         $s1, $v0, $zero
/* 3EBB8 8003DFB8 55410004 */  bnel       $t2, $at, .L8003DFCC
/* 3EBBC 8003DFBC 8FB40098 */   lw        $s4, 0x98($sp)
/* 3EBC0 8003DFC0 0C00FDAE */  jal        func_8003F6B8
/* 3EBC4 8003DFC4 00000000 */   nop
/* 3EBC8 8003DFC8 8FB40098 */  lw         $s4, 0x98($sp)
.L8003DFCC:
/* 3EBCC 8003DFCC 8FAB0074 */  lw         $t3, 0x74($sp)
/* 3EBD0 8003DFD0 8FAC0084 */  lw         $t4, 0x84($sp)
/* 3EBD4 8003DFD4 00146880 */  sll        $t5, $s4, 2
/* 3EBD8 8003DFD8 01A0A025 */  or         $s4, $t5, $zero
/* 3EBDC 8003DFDC 02208025 */  or         $s0, $s1, $zero
/* 3EBE0 8003DFE0 016C9021 */  addu       $s2, $t3, $t4
.L8003DFE4:
/* 3EBE4 8003DFE4 16B60007 */  bne        $s5, $s6, .L8003E004
/* 3EBE8 8003DFE8 8FB1005C */   lw        $s1, 0x5c($sp)
/* 3EBEC 8003DFEC 02002025 */  or         $a0, $s0, $zero
/* 3EBF0 8003DFF0 02402825 */  or         $a1, $s2, $zero
/* 3EBF4 8003DFF4 0C014984 */  jal        bcopy
/* 3EBF8 8003DFF8 02C03025 */   or        $a2, $s6, $zero
/* 3EBFC 8003DFFC 1000001E */  b          .L8003E078
/* 3EC00 8003E000 26100008 */   addiu     $s0, $s0, 8
.L8003E004:
/* 3EC04 8003E004 26310001 */  addiu      $s1, $s1, 1
/* 3EC08 8003E008 06210003 */  bgez       $s1, .L8003E018
/* 3EC0C 8003E00C 00117043 */   sra       $t6, $s1, 1
/* 3EC10 8003E010 26210001 */  addiu      $at, $s1, 1
/* 3EC14 8003E014 00017043 */  sra        $t6, $at, 1
.L8003E018:
/* 3EC18 8003E018 01C08825 */  or         $s1, $t6, $zero
/* 3EC1C 8003E01C 02402025 */  or         $a0, $s2, $zero
/* 3EC20 8003E020 0C014388 */  jal        _bzero
/* 3EC24 8003E024 24050004 */   addiu     $a1, $zero, 4
/* 3EC28 8003E028 8FA20054 */  lw         $v0, 0x54($sp)
/* 3EC2C 8003E02C 8FB80058 */  lw         $t8, 0x58($sp)
/* 3EC30 8003E030 02E27823 */  subu       $t7, $s7, $v0
/* 3EC34 8003E034 026F082A */  slt        $at, $s3, $t7
/* 3EC38 8003E038 1420000F */  bnez       $at, .L8003E078
/* 3EC3C 8003E03C 0302C823 */   subu      $t9, $t8, $v0
/* 3EC40 8003E040 2729000C */  addiu      $t1, $t9, 0xc
/* 3EC44 8003E044 0269082A */  slt        $at, $s3, $t1
/* 3EC48 8003E048 1020000B */  beqz       $at, .L8003E078
/* 3EC4C 8003E04C 8FAA005C */   lw        $t2, 0x5c($sp)
/* 3EC50 8003E050 03CA5823 */  subu       $t3, $fp, $t2
/* 3EC54 8003E054 02002025 */  or         $a0, $s0, $zero
/* 3EC58 8003E058 05610003 */  bgez       $t3, .L8003E068
/* 3EC5C 8003E05C 000B6083 */   sra       $t4, $t3, 2
/* 3EC60 8003E060 25610003 */  addiu      $at, $t3, 3
/* 3EC64 8003E064 00016083 */  sra        $t4, $at, 2
.L8003E068:
/* 3EC68 8003E068 01922821 */  addu       $a1, $t4, $s2
/* 3EC6C 8003E06C 0C014984 */  jal        bcopy
/* 3EC70 8003E070 02203025 */   or        $a2, $s1, $zero
/* 3EC74 8003E074 02118021 */  addu       $s0, $s0, $s1
.L8003E078:
/* 3EC78 8003E078 8FAD00A8 */  lw         $t5, 0xa8($sp)
/* 3EC7C 8003E07C 26730001 */  addiu      $s3, $s3, 1
/* 3EC80 8003E080 02549021 */  addu       $s2, $s2, $s4
/* 3EC84 8003E084 166DFFD7 */  bne        $s3, $t5, .L8003DFE4
/* 3EC88 8003E088 00000000 */   nop
/* 3EC8C 8003E08C 8FAE0064 */  lw         $t6, 0x64($sp)
/* 3EC90 8003E090 8FB80084 */  lw         $t8, 0x84($sp)
/* 3EC94 8003E094 8FA90090 */  lw         $t1, 0x90($sp)
/* 3EC98 8003E098 25CF0001 */  addiu      $t7, $t6, 1
/* 3EC9C 8003E09C 0315C821 */  addu       $t9, $t8, $s5
/* 3ECA0 8003E0A0 AFB90084 */  sw         $t9, 0x84($sp)
/* 3ECA4 8003E0A4 AFAF0064 */  sw         $t7, 0x64($sp)
/* 3ECA8 8003E0A8 91E20000 */  lbu        $v0, ($t7)
/* 3ECAC 8003E0AC 8FAA0094 */  lw         $t2, 0x94($sp)
/* 3ECB0 8003E0B0 10400003 */  beqz       $v0, .L8003E0C0
/* 3ECB4 8003E0B4 012A082A */   slt       $at, $t1, $t2
/* 3ECB8 8003E0B8 5420FF89 */  bnel       $at, $zero, .L8003DEE0
/* 3ECBC 8003E0BC 304B0080 */   andi      $t3, $v0, 0x80
.L8003E0C0:
/* 3ECC0 8003E0C0 8FA20060 */  lw         $v0, 0x60($sp)
/* 3ECC4 8003E0C4 240B0004 */  addiu      $t3, $zero, 4
/* 3ECC8 8003E0C8 240E0010 */  addiu      $t6, $zero, 0x10
/* 3ECCC 8003E0CC AC4B000C */  sw         $t3, 0xc($v0)
/* 3ECD0 8003E0D0 8FAC0098 */  lw         $t4, 0x98($sp)
/* 3ECD4 8003E0D4 AC4E0008 */  sw         $t6, 8($v0)
/* 3ECD8 8003E0D8 000C68C0 */  sll        $t5, $t4, 3
/* 3ECDC 8003E0DC AC4D0004 */  sw         $t5, 4($v0)
/* 3ECE0 8003E0E0 8FB80074 */  lw         $t8, 0x74($sp)
/* 3ECE4 8003E0E4 AC580000 */  sw         $t8, ($v0)
/* 3ECE8 8003E0E8 8FB900B0 */  lw         $t9, 0xb0($sp)
/* 3ECEC 8003E0EC AF220000 */  sw         $v0, ($t9)
.L8003E0F0:
/* 3ECF0 8003E0F0 8FBF003C */  lw         $ra, 0x3c($sp)
/* 3ECF4 8003E0F4 8FB00018 */  lw         $s0, 0x18($sp)
/* 3ECF8 8003E0F8 8FB1001C */  lw         $s1, 0x1c($sp)
/* 3ECFC 8003E0FC 8FB20020 */  lw         $s2, 0x20($sp)
/* 3ED00 8003E100 8FB30024 */  lw         $s3, 0x24($sp)
/* 3ED04 8003E104 8FB40028 */  lw         $s4, 0x28($sp)
/* 3ED08 8003E108 8FB5002C */  lw         $s5, 0x2c($sp)
/* 3ED0C 8003E10C 8FB60030 */  lw         $s6, 0x30($sp)
/* 3ED10 8003E110 8FB70034 */  lw         $s7, 0x34($sp)
/* 3ED14 8003E114 8FBE0038 */  lw         $fp, 0x38($sp)
/* 3ED18 8003E118 03E00008 */  jr         $ra
/* 3ED1C 8003E11C 27BD00B0 */   addiu     $sp, $sp, 0xb0

glabel func_8003E120
/* 3ED20 8003E120 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3ED24 8003E124 AFA40020 */  sw         $a0, 0x20($sp)
/* 3ED28 8003E128 8FAE0020 */  lw         $t6, 0x20($sp)
/* 3ED2C 8003E12C 3C0F007B */  lui        $t7, 0x7b
/* 3ED30 8003E130 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3ED34 8003E134 AFA50024 */  sw         $a1, 0x24($sp)
/* 3ED38 8003E138 25EF7A10 */  addiu      $t7, $t7, 0x7a10
/* 3ED3C 8003E13C 3C04800F */  lui        $a0, %hi(D_800F2A60)
/* 3ED40 8003E140 AFA0001C */  sw         $zero, 0x1c($sp)
/* 3ED44 8003E144 24842A60 */  addiu      $a0, $a0, %lo(D_800F2A60)
/* 3ED48 8003E148 27A7001C */  addiu      $a3, $sp, 0x1c
/* 3ED4C 8003E14C 24060080 */  addiu      $a2, $zero, 0x80
/* 3ED50 8003E150 0C00FE12 */  jal        func_8003F848
/* 3ED54 8003E154 01CF2821 */   addu      $a1, $t6, $t7
/* 3ED58 8003E158 8FA30024 */  lw         $v1, 0x24($sp)
/* 3ED5C 8003E15C 50600003 */  beql       $v1, $zero, .L8003E16C
/* 3ED60 8003E160 8FBF0014 */   lw        $ra, 0x14($sp)
/* 3ED64 8003E164 AC620000 */  sw         $v0, ($v1)
/* 3ED68 8003E168 8FBF0014 */  lw         $ra, 0x14($sp)
.L8003E16C:
/* 3ED6C 8003E16C 8FA2001C */  lw         $v0, 0x1c($sp)
/* 3ED70 8003E170 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3ED74 8003E174 03E00008 */  jr         $ra
/* 3ED78 8003E178 00000000 */   nop

glabel func_8003E17C
/* 3ED7C 8003E17C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3ED80 8003E180 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3ED84 8003E184 0C012ABF */  jal        func_8004AAFC
/* 3ED88 8003E188 00000000 */   nop
/* 3ED8C 8003E18C 3C06800F */  lui        $a2, %hi(D_800F2A18)
/* 3ED90 8003E190 24C62A18 */  addiu      $a2, $a2, %lo(D_800F2A18)
/* 3ED94 8003E194 8CC30000 */  lw         $v1, ($a2)
/* 3ED98 8003E198 3C0FFD90 */  lui        $t7, 0xfd90
/* 3ED9C 8003E19C 00402025 */  or         $a0, $v0, $zero
/* 3EDA0 8003E1A0 246E0008 */  addiu      $t6, $v1, 8
/* 3EDA4 8003E1A4 ACCE0000 */  sw         $t6, ($a2)
/* 3EDA8 8003E1A8 AC6F0000 */  sw         $t7, ($v1)
/* 3EDAC 8003E1AC 00002825 */  or         $a1, $zero, $zero
/* 3EDB0 8003E1B0 0C00F848 */  jal        func_8003E120
/* 3EDB4 8003E1B4 AFA30018 */   sw        $v1, 0x18($sp)
/* 3EDB8 8003E1B8 8FAD0018 */  lw         $t5, 0x18($sp)
/* 3EDBC 8003E1BC 3C06800F */  lui        $a2, %hi(D_800F2A18)
/* 3EDC0 8003E1C0 24C62A18 */  addiu      $a2, $a2, %lo(D_800F2A18)
/* 3EDC4 8003E1C4 ADA20004 */  sw         $v0, 4($t5)
/* 3EDC8 8003E1C8 8CC30000 */  lw         $v1, ($a2)
/* 3EDCC 8003E1CC 3C19F590 */  lui        $t9, 0xf590
/* 3EDD0 8003E1D0 3C0E0700 */  lui        $t6, 0x700
/* 3EDD4 8003E1D4 24780008 */  addiu      $t8, $v1, 8
/* 3EDD8 8003E1D8 ACD80000 */  sw         $t8, ($a2)
/* 3EDDC 8003E1DC AC6E0004 */  sw         $t6, 4($v1)
/* 3EDE0 8003E1E0 AC790000 */  sw         $t9, ($v1)
/* 3EDE4 8003E1E4 8CC30000 */  lw         $v1, ($a2)
/* 3EDE8 8003E1E8 3C18E600 */  lui        $t8, 0xe600
/* 3EDEC 8003E1EC 3C0EF300 */  lui        $t6, 0xf300
/* 3EDF0 8003E1F0 246F0008 */  addiu      $t7, $v1, 8
/* 3EDF4 8003E1F4 ACCF0000 */  sw         $t7, ($a2)
/* 3EDF8 8003E1F8 AC600004 */  sw         $zero, 4($v1)
/* 3EDFC 8003E1FC AC780000 */  sw         $t8, ($v1)
/* 3EE00 8003E200 8CC30000 */  lw         $v1, ($a2)
/* 3EE04 8003E204 3C0F0703 */  lui        $t7, 0x703
/* 3EE08 8003E208 35EFF800 */  ori        $t7, $t7, 0xf800
/* 3EE0C 8003E20C 24790008 */  addiu      $t9, $v1, 8
/* 3EE10 8003E210 ACD90000 */  sw         $t9, ($a2)
/* 3EE14 8003E214 AC6F0004 */  sw         $t7, 4($v1)
/* 3EE18 8003E218 AC6E0000 */  sw         $t6, ($v1)
/* 3EE1C 8003E21C 8CC30000 */  lw         $v1, ($a2)
/* 3EE20 8003E220 3C19E700 */  lui        $t9, 0xe700
/* 3EE24 8003E224 3C0FF580 */  lui        $t7, 0xf580
/* 3EE28 8003E228 24780008 */  addiu      $t8, $v1, 8
/* 3EE2C 8003E22C ACD80000 */  sw         $t8, ($a2)
/* 3EE30 8003E230 AC600004 */  sw         $zero, 4($v1)
/* 3EE34 8003E234 AC790000 */  sw         $t9, ($v1)
/* 3EE38 8003E238 8CC30000 */  lw         $v1, ($a2)
/* 3EE3C 8003E23C 35EF0200 */  ori        $t7, $t7, 0x200
/* 3EE40 8003E240 3C19F200 */  lui        $t9, 0xf200
/* 3EE44 8003E244 246E0008 */  addiu      $t6, $v1, 8
/* 3EE48 8003E248 ACCE0000 */  sw         $t6, ($a2)
/* 3EE4C 8003E24C AC600004 */  sw         $zero, 4($v1)
/* 3EE50 8003E250 AC6F0000 */  sw         $t7, ($v1)
/* 3EE54 8003E254 8CC30000 */  lw         $v1, ($a2)
/* 3EE58 8003E258 3C0E0003 */  lui        $t6, 3
/* 3EE5C 8003E25C 35CEC03C */  ori        $t6, $t6, 0xc03c
/* 3EE60 8003E260 24780008 */  addiu      $t8, $v1, 8
/* 3EE64 8003E264 ACD80000 */  sw         $t8, ($a2)
/* 3EE68 8003E268 24040010 */  addiu      $a0, $zero, 0x10
/* 3EE6C 8003E26C 24050010 */  addiu      $a1, $zero, 0x10
/* 3EE70 8003E270 AC6E0004 */  sw         $t6, 4($v1)
/* 3EE74 8003E274 0C00F478 */  jal        func_8003D1E0
/* 3EE78 8003E278 AC790000 */   sw        $t9, ($v1)
/* 3EE7C 8003E27C 3C013FE0 */  lui        $at, 0x3fe0
/* 3EE80 8003E280 44810800 */  mtc1       $at, $f1
/* 3EE84 8003E284 3C014180 */  lui        $at, 0x4180
/* 3EE88 8003E288 44817000 */  mtc1       $at, $f14
/* 3EE8C 8003E28C 3C0A800F */  lui        $t2, %hi(D_800F2A50)
/* 3EE90 8003E290 254A2A50 */  addiu      $t2, $t2, %lo(D_800F2A50)
/* 3EE94 8003E294 3C014480 */  lui        $at, 0x4480
/* 3EE98 8003E298 44818000 */  mtc1       $at, $f16
/* 3EE9C 8003E29C C5420000 */  lwc1       $f2, ($t2)
/* 3EEA0 8003E2A0 3C01800F */  lui        $at, %hi(D_800F2A54)
/* 3EEA4 8003E2A4 C42C2A54 */  lwc1       $f12, %lo(D_800F2A54)($at)
/* 3EEA8 8003E2A8 46028103 */  div.s      $f4, $f16, $f2
/* 3EEAC 8003E2AC 44800000 */  mtc1       $zero, $f0
/* 3EEB0 8003E2B0 3C06800F */  lui        $a2, %hi(D_800F2A18)
/* 3EEB4 8003E2B4 24C62A18 */  addiu      $a2, $a2, %lo(D_800F2A18)
/* 3EEB8 8003E2B8 8CC30000 */  lw         $v1, ($a2)
/* 3EEBC 8003E2BC 3C07800F */  lui        $a3, %hi(D_800F2A40)
/* 3EEC0 8003E2C0 24E72A40 */  addiu      $a3, $a3, %lo(D_800F2A40)
/* 3EEC4 8003E2C4 8CF80000 */  lw         $t8, ($a3)
/* 3EEC8 8003E2C8 24790008 */  addiu      $t9, $v1, 8
/* 3EECC 8003E2CC ACD90000 */  sw         $t9, ($a2)
/* 3EED0 8003E2D0 3C0B800F */  lui        $t3, %hi(D_800F2A44)
/* 3EED4 8003E2D4 3C01E400 */  lui        $at, 0xe400
/* 3EED8 8003E2D8 256B2A44 */  addiu      $t3, $t3, %lo(D_800F2A44)
/* 3EEDC 8003E2DC 460C8483 */  div.s      $f18, $f16, $f12
/* 3EEE0 8003E2E0 460021A1 */  cvt.d.s    $f6, $f4
/* 3EEE4 8003E2E4 46203200 */  add.d      $f8, $f6, $f0
/* 3EEE8 8003E2E8 4620428D */  trunc.w.d  $f10, $f8
/* 3EEEC 8003E2EC 46009121 */  cvt.d.s    $f4, $f18
/* 3EEF0 8003E2F0 44085000 */  mfc1       $t0, $f10
/* 3EEF4 8003E2F4 46027282 */  mul.s      $f10, $f14, $f2
/* 3EEF8 8003E2F8 46202180 */  add.d      $f6, $f4, $f0
/* 3EEFC 8003E2FC 460C7102 */  mul.s      $f4, $f14, $f12
/* 3EF00 8003E300 4600548D */  trunc.w.s  $f18, $f10
/* 3EF04 8003E304 4620320D */  trunc.w.d  $f8, $f6
/* 3EF08 8003E308 440F9000 */  mfc1       $t7, $f18
/* 3EF0C 8003E30C 4600218D */  trunc.w.s  $f6, $f4
/* 3EF10 8003E310 01F8C821 */  addu       $t9, $t7, $t8
/* 3EF14 8003E314 00197080 */  sll        $t6, $t9, 2
/* 3EF18 8003E318 31CF0FFF */  andi       $t7, $t6, 0xfff
/* 3EF1C 8003E31C 000FC300 */  sll        $t8, $t7, 0xc
/* 3EF20 8003E320 0301C825 */  or         $t9, $t8, $at
/* 3EF24 8003E324 44183000 */  mfc1       $t8, $f6
/* 3EF28 8003E328 8D6E0000 */  lw         $t6, ($t3)
/* 3EF2C 8003E32C 44094000 */  mfc1       $t1, $f8
/* 3EF30 8003E330 01D87821 */  addu       $t7, $t6, $t8
/* 3EF34 8003E334 000F7080 */  sll        $t6, $t7, 2
/* 3EF38 8003E338 31D80FFF */  andi       $t8, $t6, 0xfff
/* 3EF3C 8003E33C 03387825 */  or         $t7, $t9, $t8
/* 3EF40 8003E340 AC6F0000 */  sw         $t7, ($v1)
/* 3EF44 8003E344 8CEE0000 */  lw         $t6, ($a3)
/* 3EF48 8003E348 000EC880 */  sll        $t9, $t6, 2
/* 3EF4C 8003E34C 8D6E0000 */  lw         $t6, ($t3)
/* 3EF50 8003E350 33380FFF */  andi       $t8, $t9, 0xfff
/* 3EF54 8003E354 00187B00 */  sll        $t7, $t8, 0xc
/* 3EF58 8003E358 000EC880 */  sll        $t9, $t6, 2
/* 3EF5C 8003E35C 33380FFF */  andi       $t8, $t9, 0xfff
/* 3EF60 8003E360 01F87025 */  or         $t6, $t7, $t8
/* 3EF64 8003E364 AC6E0004 */  sw         $t6, 4($v1)
/* 3EF68 8003E368 8CC30000 */  lw         $v1, ($a2)
/* 3EF6C 8003E36C 3C0FE100 */  lui        $t7, 0xe100
/* 3EF70 8003E370 3C0EF100 */  lui        $t6, 0xf100
/* 3EF74 8003E374 24790008 */  addiu      $t9, $v1, 8
/* 3EF78 8003E378 ACD90000 */  sw         $t9, ($a2)
/* 3EF7C 8003E37C AC600004 */  sw         $zero, 4($v1)
/* 3EF80 8003E380 AC6F0000 */  sw         $t7, ($v1)
/* 3EF84 8003E384 8CC30000 */  lw         $v1, ($a2)
/* 3EF88 8003E388 00087C00 */  sll        $t7, $t0, 0x10
/* 3EF8C 8003E38C 24780008 */  addiu      $t8, $v1, 8
/* 3EF90 8003E390 ACD80000 */  sw         $t8, ($a2)
/* 3EF94 8003E394 3138FFFF */  andi       $t8, $t1, 0xffff
/* 3EF98 8003E398 AC6E0000 */  sw         $t6, ($v1)
/* 3EF9C 8003E39C 01F87025 */  or         $t6, $t7, $t8
/* 3EFA0 8003E3A0 AC6E0004 */  sw         $t6, 4($v1)
/* 3EFA4 8003E3A4 C5480000 */  lwc1       $f8, ($t2)
/* 3EFA8 8003E3A8 8CF90000 */  lw         $t9, ($a3)
/* 3EFAC 8003E3AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3EFB0 8003E3B0 46087282 */  mul.s      $f10, $f14, $f8
/* 3EFB4 8003E3B4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 3EFB8 8003E3B8 460054A1 */  cvt.d.s    $f18, $f10
/* 3EFBC 8003E3BC 46209100 */  add.d      $f4, $f18, $f0
/* 3EFC0 8003E3C0 4620218D */  trunc.w.d  $f6, $f4
/* 3EFC4 8003E3C4 44183000 */  mfc1       $t8, $f6
/* 3EFC8 8003E3C8 00000000 */  nop
/* 3EFCC 8003E3CC 03387021 */  addu       $t6, $t9, $t8
/* 3EFD0 8003E3D0 03E00008 */  jr         $ra
/* 3EFD4 8003E3D4 ACEE0000 */   sw        $t6, ($a3)

glabel func_8003E3D8
/* 3EFD8 8003E3D8 3C0F800F */  lui        $t7, %hi(D_800F2A48)
/* 3EFDC 8003E3DC 8DEF2A48 */  lw         $t7, %lo(D_800F2A48)($t7)
/* 3EFE0 8003E3E0 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 3EFE4 8003E3E4 AFA40070 */  sw         $a0, 0x70($sp)
/* 3EFE8 8003E3E8 93AE0073 */  lbu        $t6, 0x73($sp)
/* 3EFEC 8003E3EC 000FC080 */  sll        $t8, $t7, 2
/* 3EFF0 8003E3F0 030FC023 */  subu       $t8, $t8, $t7
/* 3EFF4 8003E3F4 0018C180 */  sll        $t8, $t8, 6
/* 3EFF8 8003E3F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3EFFC 8003E3FC 01D82021 */  addu       $a0, $t6, $t8
/* 3F000 8003E400 2484FFE0 */  addiu      $a0, $a0, -0x20
/* 3F004 8003E404 27A50064 */  addiu      $a1, $sp, 0x64
/* 3F008 8003E408 27A60060 */  addiu      $a2, $sp, 0x60
/* 3F00C 8003E40C 0C012AB0 */  jal        func_8004AAC0
/* 3F010 8003E410 27A70058 */   addiu     $a3, $sp, 0x58
/* 3F014 8003E414 3C19800F */  lui        $t9, %hi(D_800F2A4C)
/* 3F018 8003E418 8F392A4C */  lw         $t9, %lo(D_800F2A4C)($t9)
/* 3F01C 8003E41C 24010001 */  addiu      $at, $zero, 1
/* 3F020 8003E420 00402025 */  or         $a0, $v0, $zero
/* 3F024 8003E424 17210003 */  bne        $t9, $at, .L8003E434
/* 3F028 8003E428 3C06800F */   lui       $a2, %hi(D_800F2A18)
/* 3F02C 8003E42C 10000002 */  b          .L8003E438
/* 3F030 8003E430 0000F825 */   or        $ra, $zero, $zero
.L8003E434:
/* 3F034 8003E434 241F0008 */  addiu      $ra, $zero, 8
.L8003E438:
/* 3F038 8003E438 8FA20064 */  lw         $v0, 0x64($sp)
/* 3F03C 8003E43C 24C62A18 */  addiu      $a2, $a2, %lo(D_800F2A18)
/* 3F040 8003E440 8CC30000 */  lw         $v1, ($a2)
/* 3F044 8003E444 24420001 */  addiu      $v0, $v0, 1
/* 3F048 8003E448 304F00FE */  andi       $t7, $v0, 0xfe
/* 3F04C 8003E44C 000FC043 */  sra        $t8, $t7, 1
/* 3F050 8003E450 AFAF0068 */  sw         $t7, 0x68($sp)
/* 3F054 8003E454 2719FFFF */  addiu      $t9, $t8, -1
/* 3F058 8003E458 246E0008 */  addiu      $t6, $v1, 8
/* 3F05C 8003E45C ACCE0000 */  sw         $t6, ($a2)
/* 3F060 8003E460 332F0FFF */  andi       $t7, $t9, 0xfff
/* 3F064 8003E464 3C01FD88 */  lui        $at, 0xfd88
/* 3F068 8003E468 01E17025 */  or         $t6, $t7, $at
/* 3F06C 8003E46C AC6E0000 */  sw         $t6, ($v1)
/* 3F070 8003E470 AFBF0054 */  sw         $ra, 0x54($sp)
/* 3F074 8003E474 00002825 */  or         $a1, $zero, $zero
/* 3F078 8003E478 0C00F848 */  jal        func_8003E120
/* 3F07C 8003E47C AFA30048 */   sw        $v1, 0x48($sp)
/* 3F080 8003E480 8FAD0048 */  lw         $t5, 0x48($sp)
/* 3F084 8003E484 8FBF0054 */  lw         $ra, 0x54($sp)
/* 3F088 8003E488 3C06800F */  lui        $a2, %hi(D_800F2A18)
/* 3F08C 8003E48C ADA20004 */  sw         $v0, 4($t5)
/* 3F090 8003E490 8FA40068 */  lw         $a0, 0x68($sp)
/* 3F094 8003E494 24C62A18 */  addiu      $a2, $a2, %lo(D_800F2A18)
/* 3F098 8003E498 8CC30000 */  lw         $v1, ($a2)
/* 3F09C 8003E49C 2484FFFF */  addiu      $a0, $a0, -1
/* 3F0A0 8003E4A0 0004C880 */  sll        $t9, $a0, 2
/* 3F0A4 8003E4A4 27270001 */  addiu      $a3, $t9, 1
/* 3F0A8 8003E4A8 00077843 */  sra        $t7, $a3, 1
/* 3F0AC 8003E4AC 25E70007 */  addiu      $a3, $t7, 7
/* 3F0B0 8003E4B0 24780008 */  addiu      $t8, $v1, 8
/* 3F0B4 8003E4B4 ACD80000 */  sw         $t8, ($a2)
/* 3F0B8 8003E4B8 000770C3 */  sra        $t6, $a3, 3
/* 3F0BC 8003E4BC 31D801FF */  andi       $t8, $t6, 0x1ff
/* 3F0C0 8003E4C0 00183A40 */  sll        $a3, $t8, 9
/* 3F0C4 8003E4C4 3C01F588 */  lui        $at, 0xf588
/* 3F0C8 8003E4C8 00E17825 */  or         $t7, $a3, $at
/* 3F0CC 8003E4CC 3C0E0700 */  lui        $t6, 0x700
/* 3F0D0 8003E4D0 AC6E0004 */  sw         $t6, 4($v1)
/* 3F0D4 8003E4D4 AC6F0000 */  sw         $t7, ($v1)
/* 3F0D8 8003E4D8 8CC30000 */  lw         $v1, ($a2)
/* 3F0DC 8003E4DC 03202025 */  or         $a0, $t9, $zero
/* 3F0E0 8003E4E0 3C19E600 */  lui        $t9, 0xe600
/* 3F0E4 8003E4E4 24780008 */  addiu      $t8, $v1, 8
/* 3F0E8 8003E4E8 ACD80000 */  sw         $t8, ($a2)
/* 3F0EC 8003E4EC AC600004 */  sw         $zero, 4($v1)
/* 3F0F0 8003E4F0 AC790000 */  sw         $t9, ($v1)
/* 3F0F4 8003E4F4 8CC30000 */  lw         $v1, ($a2)
/* 3F0F8 8003E4F8 0004C040 */  sll        $t8, $a0, 1
/* 3F0FC 8003E4FC 3C0EF400 */  lui        $t6, 0xf400
/* 3F100 8003E500 246F0008 */  addiu      $t7, $v1, 8
/* 3F104 8003E504 ACCF0000 */  sw         $t7, ($a2)
/* 3F108 8003E508 33190FFF */  andi       $t9, $t8, 0xfff
/* 3F10C 8003E50C AC6E0000 */  sw         $t6, ($v1)
/* 3F110 8003E510 8FB80060 */  lw         $t8, 0x60($sp)
/* 3F114 8003E514 00197B00 */  sll        $t7, $t9, 0xc
/* 3F118 8003E518 3C010700 */  lui        $at, 0x700
/* 3F11C 8003E51C 01E17025 */  or         $t6, $t7, $at
/* 3F120 8003E520 270FFFFF */  addiu      $t7, $t8, -1
/* 3F124 8003E524 000FC100 */  sll        $t8, $t7, 4
/* 3F128 8003E528 33190FFF */  andi       $t9, $t8, 0xfff
/* 3F12C 8003E52C 01D97825 */  or         $t7, $t6, $t9
/* 3F130 8003E530 AC6F0004 */  sw         $t7, 4($v1)
/* 3F134 8003E534 8CC30000 */  lw         $v1, ($a2)
/* 3F138 8003E538 3C0EE700 */  lui        $t6, 0xe700
/* 3F13C 8003E53C 3C01F580 */  lui        $at, 0xf580
/* 3F140 8003E540 24780008 */  addiu      $t8, $v1, 8
/* 3F144 8003E544 ACD80000 */  sw         $t8, ($a2)
/* 3F148 8003E548 AC600004 */  sw         $zero, 4($v1)
/* 3F14C 8003E54C AC6E0000 */  sw         $t6, ($v1)
/* 3F150 8003E550 8CC30000 */  lw         $v1, ($a2)
/* 3F154 8003E554 00E17825 */  or         $t7, $a3, $at
/* 3F158 8003E558 3C0EF200 */  lui        $t6, 0xf200
/* 3F15C 8003E55C 24790008 */  addiu      $t9, $v1, 8
/* 3F160 8003E560 ACD90000 */  sw         $t9, ($a2)
/* 3F164 8003E564 AC600004 */  sw         $zero, 4($v1)
/* 3F168 8003E568 AC6F0000 */  sw         $t7, ($v1)
/* 3F16C 8003E56C 8CC30000 */  lw         $v1, ($a2)
/* 3F170 8003E570 0004C880 */  sll        $t9, $a0, 2
/* 3F174 8003E574 332F0FFF */  andi       $t7, $t9, 0xfff
/* 3F178 8003E578 24780008 */  addiu      $t8, $v1, 8
/* 3F17C 8003E57C ACD80000 */  sw         $t8, ($a2)
/* 3F180 8003E580 AC6E0000 */  sw         $t6, ($v1)
/* 3F184 8003E584 8FAE0060 */  lw         $t6, 0x60($sp)
/* 3F188 8003E588 000FC300 */  sll        $t8, $t7, 0xc
/* 3F18C 8003E58C 3C02800F */  lui        $v0, 0x800f
/* 3F190 8003E590 25CFFFFF */  addiu      $t7, $t6, -1
/* 3F194 8003E594 000F7100 */  sll        $t6, $t7, 4
/* 3F198 8003E598 31D90FFF */  andi       $t9, $t6, 0xfff
/* 3F19C 8003E59C 03197825 */  or         $t7, $t8, $t9
/* 3F1A0 8003E5A0 AC6F0004 */  sw         $t7, 4($v1)
/* 3F1A4 8003E5A4 8C422A4C */  lw         $v0, 0x2a4c($v0)
/* 3F1A8 8003E5A8 8FAE0064 */  lw         $t6, 0x64($sp)
/* 3F1AC 8003E5AC 24030001 */  addiu      $v1, $zero, 1
/* 3F1B0 8003E5B0 14620004 */  bne        $v1, $v0, .L8003E5C4
/* 3F1B4 8003E5B4 29C10003 */   slti      $at, $t6, 3
/* 3F1B8 8003E5B8 10200002 */  beqz       $at, .L8003E5C4
/* 3F1BC 8003E5BC 24180003 */   addiu     $t8, $zero, 3
/* 3F1C0 8003E5C0 AFB80064 */  sw         $t8, 0x64($sp)
.L8003E5C4:
/* 3F1C4 8003E5C4 14620004 */  bne        $v1, $v0, .L8003E5D8
/* 3F1C8 8003E5C8 03E02025 */   or        $a0, $ra, $zero
/* 3F1CC 8003E5CC 8FA40064 */  lw         $a0, 0x64($sp)
/* 3F1D0 8003E5D0 10000001 */  b          .L8003E5D8
/* 3F1D4 8003E5D4 24840001 */   addiu     $a0, $a0, 1
.L8003E5D8:
/* 3F1D8 8003E5D8 AFBF0054 */  sw         $ra, 0x54($sp)
/* 3F1DC 8003E5DC 0C00F478 */  jal        func_8003D1E0
/* 3F1E0 8003E5E0 24050010 */   addiu     $a1, $zero, 0x10
/* 3F1E4 8003E5E4 8FBF0054 */  lw         $ra, 0x54($sp)
/* 3F1E8 8003E5E8 8FB90064 */  lw         $t9, 0x64($sp)
/* 3F1EC 8003E5EC 3C0E800F */  lui        $t6, %hi(D_800F2A4C)
/* 3F1F0 8003E5F0 8DCE2A4C */  lw         $t6, %lo(D_800F2A4C)($t6)
/* 3F1F4 8003E5F4 03F91023 */  subu       $v0, $ra, $t9
/* 3F1F8 8003E5F8 3C06800F */  lui        $a2, %hi(D_800F2A18)
/* 3F1FC 8003E5FC 24C62A18 */  addiu      $a2, $a2, %lo(D_800F2A18)
/* 3F200 8003E600 04410003 */  bgez       $v0, .L8003E610
/* 3F204 8003E604 00027843 */   sra       $t7, $v0, 1
/* 3F208 8003E608 24410001 */  addiu      $at, $v0, 1
/* 3F20C 8003E60C 00017843 */  sra        $t7, $at, 1
.L8003E610:
/* 3F210 8003E610 24010001 */  addiu      $at, $zero, 1
/* 3F214 8003E614 01E01025 */  or         $v0, $t7, $zero
/* 3F218 8003E618 11C10015 */  beq        $t6, $at, .L8003E670
/* 3F21C 8003E61C 01E05025 */   or        $t2, $t7, $zero
/* 3F220 8003E620 44822000 */  mtc1       $v0, $f4
/* 3F224 8003E624 3C0B800F */  lui        $t3, %hi(D_800F2A50)
/* 3F228 8003E628 256B2A50 */  addiu      $t3, $t3, %lo(D_800F2A50)
/* 3F22C 8003E62C 468021A0 */  cvt.s.w    $f6, $f4
/* 3F230 8003E630 C5680000 */  lwc1       $f8, ($t3)
/* 3F234 8003E634 3C013FE0 */  lui        $at, 0x3fe0
/* 3F238 8003E638 44810800 */  mtc1       $at, $f1
/* 3F23C 8003E63C 44800000 */  mtc1       $zero, $f0
/* 3F240 8003E640 3C07800F */  lui        $a3, %hi(D_800F2A40)
/* 3F244 8003E644 46083282 */  mul.s      $f10, $f6, $f8
/* 3F248 8003E648 24E72A40 */  addiu      $a3, $a3, %lo(D_800F2A40)
/* 3F24C 8003E64C 8CEF0000 */  lw         $t7, ($a3)
/* 3F250 8003E650 3C01800F */  lui        $at, 0x800f
/* 3F254 8003E654 46005421 */  cvt.d.s    $f16, $f10
/* 3F258 8003E658 46208480 */  add.d      $f18, $f16, $f0
/* 3F25C 8003E65C 4620910D */  trunc.w.d  $f4, $f18
/* 3F260 8003E660 44192000 */  mfc1       $t9, $f4
/* 3F264 8003E664 00000000 */  nop
/* 3F268 8003E668 01F97021 */  addu       $t6, $t7, $t9
/* 3F26C 8003E66C AC2E2A40 */  sw         $t6, 0x2a40($at)
.L8003E670:
/* 3F270 8003E670 3C013FE0 */  lui        $at, 0x3fe0
/* 3F274 8003E674 44810800 */  mtc1       $at, $f1
/* 3F278 8003E678 3C0B800F */  lui        $t3, %hi(D_800F2A50)
/* 3F27C 8003E67C 256B2A50 */  addiu      $t3, $t3, %lo(D_800F2A50)
/* 3F280 8003E680 3C014480 */  lui        $at, 0x4480
/* 3F284 8003E684 44817000 */  mtc1       $at, $f14
/* 3F288 8003E688 C5620000 */  lwc1       $f2, ($t3)
/* 3F28C 8003E68C 3C0C800F */  lui        $t4, %hi(D_800F2A54)
/* 3F290 8003E690 258C2A54 */  addiu      $t4, $t4, %lo(D_800F2A54)
/* 3F294 8003E694 46027183 */  div.s      $f6, $f14, $f2
/* 3F298 8003E698 C58C0000 */  lwc1       $f12, ($t4)
/* 3F29C 8003E69C 44800000 */  mtc1       $zero, $f0
/* 3F2A0 8003E6A0 8FB80058 */  lw         $t8, 0x58($sp)
/* 3F2A4 8003E6A4 8CC30000 */  lw         $v1, ($a2)
/* 3F2A8 8003E6A8 3C07800F */  lui        $a3, %hi(D_800F2A40)
/* 3F2AC 8003E6AC 270FFFF4 */  addiu      $t7, $t8, -0xc
/* 3F2B0 8003E6B0 AFAF0058 */  sw         $t7, 0x58($sp)
/* 3F2B4 8003E6B4 8FAF0064 */  lw         $t7, 0x64($sp)
/* 3F2B8 8003E6B8 24780008 */  addiu      $t8, $v1, 8
/* 3F2BC 8003E6BC 24E72A40 */  addiu      $a3, $a3, %lo(D_800F2A40)
/* 3F2C0 8003E6C0 ACD80000 */  sw         $t8, ($a2)
/* 3F2C4 8003E6C4 8CF80000 */  lw         $t8, ($a3)
/* 3F2C8 8003E6C8 3C01E400 */  lui        $at, 0xe400
/* 3F2CC 8003E6CC 3C0D800F */  lui        $t5, %hi(D_800F2A44)
/* 3F2D0 8003E6D0 25AD2A44 */  addiu      $t5, $t5, %lo(D_800F2A44)
/* 3F2D4 8003E6D4 460C7483 */  div.s      $f18, $f14, $f12
/* 3F2D8 8003E6D8 46003221 */  cvt.d.s    $f8, $f6
/* 3F2DC 8003E6DC 46204280 */  add.d      $f10, $f8, $f0
/* 3F2E0 8003E6E0 4620540D */  trunc.w.d  $f16, $f10
/* 3F2E4 8003E6E4 448F5000 */  mtc1       $t7, $f10
/* 3F2E8 8003E6E8 46009121 */  cvt.d.s    $f4, $f18
/* 3F2EC 8003E6EC 44088000 */  mfc1       $t0, $f16
/* 3F2F0 8003E6F0 46805420 */  cvt.s.w    $f16, $f10
/* 3F2F4 8003E6F4 46202180 */  add.d      $f6, $f4, $f0
/* 3F2F8 8003E6F8 46028482 */  mul.s      $f18, $f16, $f2
/* 3F2FC 8003E6FC 4620320D */  trunc.w.d  $f8, $f6
/* 3F300 8003E700 46009121 */  cvt.d.s    $f4, $f18
/* 3F304 8003E704 44094000 */  mfc1       $t1, $f8
/* 3F308 8003E708 46202180 */  add.d      $f6, $f4, $f0
/* 3F30C 8003E70C 4620320D */  trunc.w.d  $f8, $f6
/* 3F310 8003E710 440E4000 */  mfc1       $t6, $f8
/* 3F314 8003E714 00000000 */  nop
/* 3F318 8003E718 01D87821 */  addu       $t7, $t6, $t8
/* 3F31C 8003E71C 000FC880 */  sll        $t9, $t7, 2
/* 3F320 8003E720 332E0FFF */  andi       $t6, $t9, 0xfff
/* 3F324 8003E724 000EC300 */  sll        $t8, $t6, 0xc
/* 3F328 8003E728 8FAE0058 */  lw         $t6, 0x58($sp)
/* 3F32C 8003E72C 8FB90060 */  lw         $t9, 0x60($sp)
/* 3F330 8003E730 03017825 */  or         $t7, $t8, $at
/* 3F334 8003E734 24010001 */  addiu      $at, $zero, 1
/* 3F338 8003E738 032EC023 */  subu       $t8, $t9, $t6
/* 3F33C 8003E73C 44985000 */  mtc1       $t8, $f10
/* 3F340 8003E740 8DB80000 */  lw         $t8, ($t5)
/* 3F344 8003E744 46805420 */  cvt.s.w    $f16, $f10
/* 3F348 8003E748 460C8482 */  mul.s      $f18, $f16, $f12
/* 3F34C 8003E74C 46009121 */  cvt.d.s    $f4, $f18
/* 3F350 8003E750 46202180 */  add.d      $f6, $f4, $f0
/* 3F354 8003E754 4620320D */  trunc.w.d  $f8, $f6
/* 3F358 8003E758 440E4000 */  mfc1       $t6, $f8
/* 3F35C 8003E75C 00000000 */  nop
/* 3F360 8003E760 030EC821 */  addu       $t9, $t8, $t6
/* 3F364 8003E764 0019C080 */  sll        $t8, $t9, 2
/* 3F368 8003E768 330E0FFF */  andi       $t6, $t8, 0xfff
/* 3F36C 8003E76C 01EEC825 */  or         $t9, $t7, $t6
/* 3F370 8003E770 AC790000 */  sw         $t9, ($v1)
/* 3F374 8003E774 8FB80058 */  lw         $t8, 0x58($sp)
/* 3F378 8003E778 C5920000 */  lwc1       $f18, ($t4)
/* 3F37C 8003E77C 00187823 */  negu       $t7, $t8
/* 3F380 8003E780 448F5000 */  mtc1       $t7, $f10
/* 3F384 8003E784 8DB80000 */  lw         $t8, ($t5)
/* 3F388 8003E788 46805420 */  cvt.s.w    $f16, $f10
/* 3F38C 8003E78C 46128102 */  mul.s      $f4, $f16, $f18
/* 3F390 8003E790 460021A1 */  cvt.d.s    $f6, $f4
/* 3F394 8003E794 46203200 */  add.d      $f8, $f6, $f0
/* 3F398 8003E798 4620428D */  trunc.w.d  $f10, $f8
/* 3F39C 8003E79C 44195000 */  mfc1       $t9, $f10
/* 3F3A0 8003E7A0 00000000 */  nop
/* 3F3A4 8003E7A4 03197821 */  addu       $t7, $t8, $t9
/* 3F3A8 8003E7A8 8CF90000 */  lw         $t9, ($a3)
/* 3F3AC 8003E7AC 000F7080 */  sll        $t6, $t7, 2
/* 3F3B0 8003E7B0 31D80FFF */  andi       $t8, $t6, 0xfff
/* 3F3B4 8003E7B4 00197880 */  sll        $t7, $t9, 2
/* 3F3B8 8003E7B8 31EE0FFF */  andi       $t6, $t7, 0xfff
/* 3F3BC 8003E7BC 000ECB00 */  sll        $t9, $t6, 0xc
/* 3F3C0 8003E7C0 03387825 */  or         $t7, $t9, $t8
/* 3F3C4 8003E7C4 AC6F0004 */  sw         $t7, 4($v1)
/* 3F3C8 8003E7C8 8CC30000 */  lw         $v1, ($a2)
/* 3F3CC 8003E7CC 3C19E100 */  lui        $t9, 0xe100
/* 3F3D0 8003E7D0 3C0FF100 */  lui        $t7, 0xf100
/* 3F3D4 8003E7D4 246E0008 */  addiu      $t6, $v1, 8
/* 3F3D8 8003E7D8 ACCE0000 */  sw         $t6, ($a2)
/* 3F3DC 8003E7DC AC600004 */  sw         $zero, 4($v1)
/* 3F3E0 8003E7E0 AC790000 */  sw         $t9, ($v1)
/* 3F3E4 8003E7E4 8CC30000 */  lw         $v1, ($a2)
/* 3F3E8 8003E7E8 0008CC00 */  sll        $t9, $t0, 0x10
/* 3F3EC 8003E7EC 3C0E800F */  lui        $t6, 0x800f
/* 3F3F0 8003E7F0 24780008 */  addiu      $t8, $v1, 8
/* 3F3F4 8003E7F4 ACD80000 */  sw         $t8, ($a2)
/* 3F3F8 8003E7F8 3138FFFF */  andi       $t8, $t1, 0xffff
/* 3F3FC 8003E7FC AC6F0000 */  sw         $t7, ($v1)
/* 3F400 8003E800 03387825 */  or         $t7, $t9, $t8
/* 3F404 8003E804 AC6F0004 */  sw         $t7, 4($v1)
/* 3F408 8003E808 8DCE2A4C */  lw         $t6, 0x2a4c($t6)
/* 3F40C 8003E80C 03EAC823 */  subu       $t9, $ra, $t2
/* 3F410 8003E810 8FB80064 */  lw         $t8, 0x64($sp)
/* 3F414 8003E814 51C1000F */  beql       $t6, $at, .L8003E854
/* 3F418 8003E818 270E0001 */   addiu     $t6, $t8, 1
/* 3F41C 8003E81C 44998000 */  mtc1       $t9, $f16
/* 3F420 8003E820 C5640000 */  lwc1       $f4, ($t3)
/* 3F424 8003E824 8CEE0000 */  lw         $t6, ($a3)
/* 3F428 8003E828 468084A0 */  cvt.s.w    $f18, $f16
/* 3F42C 8003E82C 46049182 */  mul.s      $f6, $f18, $f4
/* 3F430 8003E830 46003221 */  cvt.d.s    $f8, $f6
/* 3F434 8003E834 46204280 */  add.d      $f10, $f8, $f0
/* 3F438 8003E838 4620540D */  trunc.w.d  $f16, $f10
/* 3F43C 8003E83C 440F8000 */  mfc1       $t7, $f16
/* 3F440 8003E840 00000000 */  nop
/* 3F444 8003E844 01CFC821 */  addu       $t9, $t6, $t7
/* 3F448 8003E848 1000000E */  b          .L8003E884
/* 3F44C 8003E84C ACF90000 */   sw        $t9, ($a3)
/* 3F450 8003E850 270E0001 */  addiu      $t6, $t8, 1
.L8003E854:
/* 3F454 8003E854 448E9000 */  mtc1       $t6, $f18
/* 3F458 8003E858 C5660000 */  lwc1       $f6, ($t3)
/* 3F45C 8003E85C 8CF80000 */  lw         $t8, ($a3)
/* 3F460 8003E860 46809120 */  cvt.s.w    $f4, $f18
/* 3F464 8003E864 46062202 */  mul.s      $f8, $f4, $f6
/* 3F468 8003E868 460042A1 */  cvt.d.s    $f10, $f8
/* 3F46C 8003E86C 46205400 */  add.d      $f16, $f10, $f0
/* 3F470 8003E870 4620848D */  trunc.w.d  $f18, $f16
/* 3F474 8003E874 44199000 */  mfc1       $t9, $f18
/* 3F478 8003E878 00000000 */  nop
/* 3F47C 8003E87C 03197021 */  addu       $t6, $t8, $t9
/* 3F480 8003E880 ACEE0000 */  sw         $t6, ($a3)
.L8003E884:
/* 3F484 8003E884 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3F488 8003E888 27BD0070 */  addiu      $sp, $sp, 0x70
/* 3F48C 8003E88C 03E00008 */  jr         $ra
/* 3F490 8003E890 00000000 */   nop

glabel func_8003E894
/* 3F494 8003E894 27BDFF48 */  addiu      $sp, $sp, -0xb8
/* 3F498 8003E898 AFBF003C */  sw         $ra, 0x3c($sp)
/* 3F49C 8003E89C AFBE0038 */  sw         $fp, 0x38($sp)
/* 3F4A0 8003E8A0 AFB70034 */  sw         $s7, 0x34($sp)
/* 3F4A4 8003E8A4 AFB60030 */  sw         $s6, 0x30($sp)
/* 3F4A8 8003E8A8 AFB5002C */  sw         $s5, 0x2c($sp)
/* 3F4AC 8003E8AC AFB40028 */  sw         $s4, 0x28($sp)
/* 3F4B0 8003E8B0 AFB30024 */  sw         $s3, 0x24($sp)
/* 3F4B4 8003E8B4 AFB20020 */  sw         $s2, 0x20($sp)
/* 3F4B8 8003E8B8 AFB1001C */  sw         $s1, 0x1c($sp)
/* 3F4BC 8003E8BC AFB00018 */  sw         $s0, 0x18($sp)
/* 3F4C0 8003E8C0 AFA400B8 */  sw         $a0, 0xb8($sp)
/* 3F4C4 8003E8C4 8CCE0000 */  lw         $t6, ($a2)
/* 3F4C8 8003E8C8 00A08825 */  or         $s1, $a1, $zero
/* 3F4CC 8003E8CC 2416000F */  addiu      $s6, $zero, 0xf
/* 3F4D0 8003E8D0 AFAE00B4 */  sw         $t6, 0xb4($sp)
/* 3F4D4 8003E8D4 8CCF0004 */  lw         $t7, 4($a2)
/* 3F4D8 8003E8D8 AFA600C0 */  sw         $a2, 0xc0($sp)
/* 3F4DC 8003E8DC 00A02025 */  or         $a0, $a1, $zero
/* 3F4E0 8003E8E0 0C0126AB */  jal        func_80049AAC
/* 3F4E4 8003E8E4 AFAF00B0 */   sw        $t7, 0xb0($sp)
/* 3F4E8 8003E8E8 14400004 */  bnez       $v0, .L8003E8FC
/* 3F4EC 8003E8EC 02202025 */   or        $a0, $s1, $zero
/* 3F4F0 8003E8F0 8FB800B8 */  lw         $t8, 0xb8($sp)
/* 3F4F4 8003E8F4 100000C6 */  b          .L8003EC10
/* 3F4F8 8003E8F8 AF000000 */   sw        $zero, ($t8)
.L8003E8FC:
/* 3F4FC 8003E8FC 3C06800F */  lui        $a2, %hi(D_800F2A4C)
/* 3F500 8003E900 8CC62A4C */  lw         $a2, %lo(D_800F2A4C)($a2)
/* 3F504 8003E904 0C00FB36 */  jal        func_8003ECD8
/* 3F508 8003E908 8FA500C0 */   lw        $a1, 0xc0($sp)
/* 3F50C 8003E90C 8FA800B0 */  lw         $t0, 0xb0($sp)
/* 3F510 8003E910 04410004 */  bgez       $v0, .L8003E924
/* 3F514 8003E914 30590003 */   andi      $t9, $v0, 3
/* 3F518 8003E918 13200002 */  beqz       $t9, .L8003E924
/* 3F51C 8003E91C 00000000 */   nop
/* 3F520 8003E920 2739FFFC */  addiu      $t9, $t9, -4
.L8003E924:
/* 3F524 8003E924 03221821 */  addu       $v1, $t9, $v0
/* 3F528 8003E928 00680019 */  multu      $v1, $t0
/* 3F52C 8003E92C AFA3009C */  sw         $v1, 0x9c($sp)
/* 3F530 8003E930 2406034D */  addiu      $a2, $zero, 0x34d
/* 3F534 8003E934 00002012 */  mflo       $a0
/* 3F538 8003E938 00044880 */  sll        $t1, $a0, 2
/* 3F53C 8003E93C 01202025 */  or         $a0, $t1, $zero
/* 3F540 8003E940 04810003 */  bgez       $a0, .L8003E950
/* 3F544 8003E944 000450C3 */   sra       $t2, $a0, 3
/* 3F548 8003E948 24810007 */  addiu      $at, $a0, 7
/* 3F54C 8003E94C 000150C3 */  sra        $t2, $at, 3
.L8003E950:
/* 3F550 8003E950 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 3F554 8003E954 01408025 */  or         $s0, $t2, $zero
/* 3F558 8003E958 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 3F55C 8003E95C 0C00E03D */  jal        func_800380F4
/* 3F560 8003E960 01402825 */   or        $a1, $t2, $zero
/* 3F564 8003E964 AFA20088 */  sw         $v0, 0x88($sp)
/* 3F568 8003E968 00402025 */  or         $a0, $v0, $zero
/* 3F56C 8003E96C 0C014388 */  jal        _bzero
/* 3F570 8003E970 02002825 */   or        $a1, $s0, $zero
/* 3F574 8003E974 AFA000A8 */  sw         $zero, 0xa8($sp)
/* 3F578 8003E978 AFB10078 */  sw         $s1, 0x78($sp)
/* 3F57C 8003E97C 922B0000 */  lbu        $t3, ($s1)
/* 3F580 8003E980 11600094 */  beqz       $t3, .L8003EBD4
/* 3F584 8003E984 27A40078 */   addiu     $a0, $sp, 0x78
.L8003E988:
/* 3F588 8003E988 0C00FBB8 */  jal        func_8003EEE0
/* 3F58C 8003E98C 27A5006C */   addiu     $a1, $sp, 0x6c
/* 3F590 8003E990 3401A2A0 */  ori        $at, $zero, 0xa2a0
/* 3F594 8003E994 14410009 */  bne        $v0, $at, .L8003E9BC
/* 3F598 8003E998 00408825 */   or        $s1, $v0, $zero
/* 3F59C 8003E99C 8FAC006C */  lw         $t4, 0x6c($sp)
/* 3F5A0 8003E9A0 000C6880 */  sll        $t5, $t4, 2
/* 3F5A4 8003E9A4 05A10003 */  bgez       $t5, .L8003E9B4
/* 3F5A8 8003E9A8 000D70C3 */   sra       $t6, $t5, 3
/* 3F5AC 8003E9AC 25A10007 */  addiu      $at, $t5, 7
/* 3F5B0 8003E9B0 000170C3 */  sra        $t6, $at, 3
.L8003E9B4:
/* 3F5B4 8003E9B4 10000083 */  b          .L8003EBC4
/* 3F5B8 8003E9B8 AFAE00A8 */   sw        $t6, 0xa8($sp)
.L8003E9BC:
/* 3F5BC 8003E9BC 3401A3A0 */  ori        $at, $zero, 0xa3a0
/* 3F5C0 8003E9C0 14410003 */  bne        $v0, $at, .L8003E9D0
/* 3F5C4 8003E9C4 02202025 */   or        $a0, $s1, $zero
/* 3F5C8 8003E9C8 1000007E */  b          .L8003EBC4
/* 3F5CC 8003E9CC 8FB6006C */   lw        $s6, 0x6c($sp)
.L8003E9D0:
/* 3F5D0 8003E9D0 8FB200B4 */  lw         $s2, 0xb4($sp)
/* 3F5D4 8003E9D4 3C06800F */  lui        $a2, %hi(D_800F2A4C)
/* 3F5D8 8003E9D8 8CC62A4C */  lw         $a2, %lo(D_800F2A4C)($a2)
/* 3F5DC 8003E9DC 00127880 */  sll        $t7, $s2, 2
/* 3F5E0 8003E9E0 01E09025 */  or         $s2, $t7, $zero
/* 3F5E4 8003E9E4 8FA500C0 */  lw         $a1, 0xc0($sp)
/* 3F5E8 8003E9E8 06410003 */  bgez       $s2, .L8003E9F8
/* 3F5EC 8003E9EC 0012C0C3 */   sra       $t8, $s2, 3
/* 3F5F0 8003E9F0 26410007 */  addiu      $at, $s2, 7
/* 3F5F4 8003E9F4 0001C0C3 */  sra        $t8, $at, 3
.L8003E9F8:
/* 3F5F8 8003E9F8 03009025 */  or         $s2, $t8, $zero
/* 3F5FC 8003E9FC 0C00FD3F */  jal        func_8003F4FC
/* 3F600 8003EA00 03008025 */   or        $s0, $t8, $zero
/* 3F604 8003EA04 3C06800F */  lui        $a2, %hi(D_800F2A4C)
/* 3F608 8003EA08 AFA200A0 */  sw         $v0, 0xa0($sp)
/* 3F60C 8003EA0C 8CC62A4C */  lw         $a2, %lo(D_800F2A4C)($a2)
/* 3F610 8003EA10 02202025 */  or         $a0, $s1, $zero
/* 3F614 8003EA14 0C00FB9D */  jal        func_8003EE74
/* 3F618 8003EA18 8FA500C0 */   lw        $a1, 0xc0($sp)
/* 3F61C 8003EA1C 0002C880 */  sll        $t9, $v0, 2
/* 3F620 8003EA20 07210003 */  bgez       $t9, .L8003EA30
/* 3F624 8003EA24 001940C3 */   sra       $t0, $t9, 3
/* 3F628 8003EA28 27210007 */  addiu      $at, $t9, 7
/* 3F62C 8003EA2C 000140C3 */  sra        $t0, $at, 3
.L8003EA30:
/* 3F630 8003EA30 3C06800F */  lui        $a2, %hi(D_800F2A4C)
/* 3F634 8003EA34 AFA80090 */  sw         $t0, 0x90($sp)
/* 3F638 8003EA38 8CC62A4C */  lw         $a2, %lo(D_800F2A4C)($a2)
/* 3F63C 8003EA3C 02202025 */  or         $a0, $s1, $zero
/* 3F640 8003EA40 0C00FB64 */  jal        func_8003ED90
/* 3F644 8003EA44 8FA500C0 */   lw        $a1, 0xc0($sp)
/* 3F648 8003EA48 00024880 */  sll        $t1, $v0, 2
/* 3F64C 8003EA4C 05210003 */  bgez       $t1, .L8003EA5C
/* 3F650 8003EA50 000950C3 */   sra       $t2, $t1, 3
/* 3F654 8003EA54 25210007 */  addiu      $at, $t1, 7
/* 3F658 8003EA58 000150C3 */  sra        $t2, $at, 3
.L8003EA5C:
/* 3F65C 8003EA5C 3401A1A0 */  ori        $at, $zero, 0xa1a0
/* 3F660 8003EA60 12210054 */  beq        $s1, $at, .L8003EBB4
/* 3F664 8003EA64 AFAA0094 */   sw        $t2, 0x94($sp)
/* 3F668 8003EA68 02202025 */  or         $a0, $s1, $zero
/* 3F66C 8003EA6C 8FA500C0 */  lw         $a1, 0xc0($sp)
/* 3F670 8003EA70 0C00FB10 */  jal        func_8003EC40
/* 3F674 8003EA74 00009825 */   or        $s3, $zero, $zero
/* 3F678 8003EA78 8FAD00B0 */  lw         $t5, 0xb0($sp)
/* 3F67C 8003EA7C 8FAB0088 */  lw         $t3, 0x88($sp)
/* 3F680 8003EA80 8FAC00A8 */  lw         $t4, 0xa8($sp)
/* 3F684 8003EA84 0040A025 */  or         $s4, $v0, $zero
/* 3F688 8003EA88 19A0004A */  blez       $t5, .L8003EBB4
/* 3F68C 8003EA8C 016CA821 */   addu      $s5, $t3, $t4
/* 3F690 8003EA90 8FB700A0 */  lw         $s7, 0xa0($sp)
/* 3F694 8003EA94 8FBE009C */  lw         $fp, 0x9c($sp)
/* 3F698 8003EA98 00177080 */  sll        $t6, $s7, 2
/* 3F69C 8003EA9C 01C0B825 */  or         $s7, $t6, $zero
/* 3F6A0 8003EAA0 001EC080 */  sll        $t8, $fp, 2
/* 3F6A4 8003EAA4 06E10003 */  bgez       $s7, .L8003EAB4
/* 3F6A8 8003EAA8 001778C3 */   sra       $t7, $s7, 3
/* 3F6AC 8003EAAC 26E10007 */  addiu      $at, $s7, 7
/* 3F6B0 8003EAB0 000178C3 */  sra        $t7, $at, 3
.L8003EAB4:
/* 3F6B4 8003EAB4 0300F025 */  or         $fp, $t8, $zero
/* 3F6B8 8003EAB8 01E0B825 */  or         $s7, $t7, $zero
/* 3F6BC 8003EABC 07C10003 */  bgez       $fp, .L8003EACC
/* 3F6C0 8003EAC0 001EC8C3 */   sra       $t9, $fp, 3
/* 3F6C4 8003EAC4 27C10007 */  addiu      $at, $fp, 7
/* 3F6C8 8003EAC8 0001C8C3 */  sra        $t9, $at, 3
.L8003EACC:
/* 3F6CC 8003EACC 0320F025 */  or         $fp, $t9, $zero
.L8003EAD0:
/* 3F6D0 8003EAD0 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 3F6D4 8003EAD4 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 3F6D8 8003EAD8 02402825 */  or         $a1, $s2, $zero
/* 3F6DC 8003EADC 0C00E03D */  jal        func_800380F4
/* 3F6E0 8003EAE0 24060372 */   addiu     $a2, $zero, 0x372
/* 3F6E4 8003EAE4 00408825 */  or         $s1, $v0, $zero
/* 3F6E8 8003EAE8 02802025 */  or         $a0, $s4, $zero
/* 3F6EC 8003EAEC 00402825 */  or         $a1, $v0, $zero
/* 3F6F0 8003EAF0 0C014984 */  jal        bcopy
/* 3F6F4 8003EAF4 02403025 */   or        $a2, $s2, $zero
/* 3F6F8 8003EAF8 2401000F */  addiu      $at, $zero, 0xf
/* 3F6FC 8003EAFC 52C10021 */  beql       $s6, $at, .L8003EB84
/* 3F700 8003EB00 02372021 */   addu      $a0, $s1, $s7
/* 3F704 8003EB04 1A40001E */  blez       $s2, .L8003EB80
/* 3F708 8003EB08 00001825 */   or        $v1, $zero, $zero
/* 3F70C 8003EB0C 00164100 */  sll        $t0, $s6, 4
/* 3F710 8003EB10 32460003 */  andi       $a2, $s2, 3
/* 3F714 8003EB14 10C0000A */  beqz       $a2, .L8003EB40
/* 3F718 8003EB18 01162021 */   addu      $a0, $t0, $s6
/* 3F71C 8003EB1C 00C02825 */  or         $a1, $a2, $zero
/* 3F720 8003EB20 02201021 */  addu       $v0, $s1, $zero
.L8003EB24:
/* 3F724 8003EB24 90490000 */  lbu        $t1, ($v0)
/* 3F728 8003EB28 24630001 */  addiu      $v1, $v1, 1
/* 3F72C 8003EB2C 24420001 */  addiu      $v0, $v0, 1
/* 3F730 8003EB30 01245024 */  and        $t2, $t1, $a0
/* 3F734 8003EB34 14A3FFFB */  bne        $a1, $v1, .L8003EB24
/* 3F738 8003EB38 A04AFFFF */   sb        $t2, -1($v0)
/* 3F73C 8003EB3C 10720010 */  beq        $v1, $s2, .L8003EB80
.L8003EB40:
/* 3F740 8003EB40 02231021 */   addu      $v0, $s1, $v1
.L8003EB44:
/* 3F744 8003EB44 904D0001 */  lbu        $t5, 1($v0)
/* 3F748 8003EB48 904F0002 */  lbu        $t7, 2($v0)
/* 3F74C 8003EB4C 90590003 */  lbu        $t9, 3($v0)
/* 3F750 8003EB50 904B0000 */  lbu        $t3, ($v0)
/* 3F754 8003EB54 24630004 */  addiu      $v1, $v1, 4
/* 3F758 8003EB58 01A47024 */  and        $t6, $t5, $a0
/* 3F75C 8003EB5C 01E4C024 */  and        $t8, $t7, $a0
/* 3F760 8003EB60 03244024 */  and        $t0, $t9, $a0
/* 3F764 8003EB64 01646024 */  and        $t4, $t3, $a0
/* 3F768 8003EB68 A0480003 */  sb         $t0, 3($v0)
/* 3F76C 8003EB6C A0580002 */  sb         $t8, 2($v0)
/* 3F770 8003EB70 A04E0001 */  sb         $t6, 1($v0)
/* 3F774 8003EB74 24420004 */  addiu      $v0, $v0, 4
/* 3F778 8003EB78 1470FFF2 */  bne        $v1, $s0, .L8003EB44
/* 3F77C 8003EB7C A04CFFFC */   sb        $t4, -4($v0)
.L8003EB80:
/* 3F780 8003EB80 02372021 */  addu       $a0, $s1, $s7
.L8003EB84:
/* 3F784 8003EB84 02A02825 */  or         $a1, $s5, $zero
/* 3F788 8003EB88 0C014984 */  jal        bcopy
/* 3F78C 8003EB8C 8FA60090 */   lw        $a2, 0x90($sp)
/* 3F790 8003EB90 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 3F794 8003EB94 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 3F798 8003EB98 0C00E152 */  jal        func_80038548
/* 3F79C 8003EB9C 02202825 */   or        $a1, $s1, $zero
/* 3F7A0 8003EBA0 8FA900B0 */  lw         $t1, 0xb0($sp)
/* 3F7A4 8003EBA4 26730001 */  addiu      $s3, $s3, 1
/* 3F7A8 8003EBA8 02BEA821 */  addu       $s5, $s5, $fp
/* 3F7AC 8003EBAC 1669FFC8 */  bne        $s3, $t1, .L8003EAD0
/* 3F7B0 8003EBB0 0292A021 */   addu      $s4, $s4, $s2
.L8003EBB4:
/* 3F7B4 8003EBB4 8FAA00A8 */  lw         $t2, 0xa8($sp)
/* 3F7B8 8003EBB8 8FAB0094 */  lw         $t3, 0x94($sp)
/* 3F7BC 8003EBBC 014B6021 */  addu       $t4, $t2, $t3
/* 3F7C0 8003EBC0 AFAC00A8 */  sw         $t4, 0xa8($sp)
.L8003EBC4:
/* 3F7C4 8003EBC4 8FAD0078 */  lw         $t5, 0x78($sp)
/* 3F7C8 8003EBC8 91AE0000 */  lbu        $t6, ($t5)
/* 3F7CC 8003EBCC 55C0FF6E */  bnel       $t6, $zero, .L8003E988
/* 3F7D0 8003EBD0 27A40078 */   addiu     $a0, $sp, 0x78
.L8003EBD4:
/* 3F7D4 8003EBD4 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 3F7D8 8003EBD8 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 3F7DC 8003EBDC 24050010 */  addiu      $a1, $zero, 0x10
/* 3F7E0 8003EBE0 0C00E03D */  jal        func_800380F4
/* 3F7E4 8003EBE4 24060383 */   addiu     $a2, $zero, 0x383
/* 3F7E8 8003EBE8 240F0002 */  addiu      $t7, $zero, 2
/* 3F7EC 8003EBEC AC4F000C */  sw         $t7, 0xc($v0)
/* 3F7F0 8003EBF0 8FB8009C */  lw         $t8, 0x9c($sp)
/* 3F7F4 8003EBF4 AC580004 */  sw         $t8, 4($v0)
/* 3F7F8 8003EBF8 8FB900B0 */  lw         $t9, 0xb0($sp)
/* 3F7FC 8003EBFC AC590008 */  sw         $t9, 8($v0)
/* 3F800 8003EC00 8FA80088 */  lw         $t0, 0x88($sp)
/* 3F804 8003EC04 AC480000 */  sw         $t0, ($v0)
/* 3F808 8003EC08 8FA900B8 */  lw         $t1, 0xb8($sp)
/* 3F80C 8003EC0C AD220000 */  sw         $v0, ($t1)
.L8003EC10:
/* 3F810 8003EC10 8FBF003C */  lw         $ra, 0x3c($sp)
/* 3F814 8003EC14 8FB00018 */  lw         $s0, 0x18($sp)
/* 3F818 8003EC18 8FB1001C */  lw         $s1, 0x1c($sp)
/* 3F81C 8003EC1C 8FB20020 */  lw         $s2, 0x20($sp)
/* 3F820 8003EC20 8FB30024 */  lw         $s3, 0x24($sp)
/* 3F824 8003EC24 8FB40028 */  lw         $s4, 0x28($sp)
/* 3F828 8003EC28 8FB5002C */  lw         $s5, 0x2c($sp)
/* 3F82C 8003EC2C 8FB60030 */  lw         $s6, 0x30($sp)
/* 3F830 8003EC30 8FB70034 */  lw         $s7, 0x34($sp)
/* 3F834 8003EC34 8FBE0038 */  lw         $fp, 0x38($sp)
/* 3F838 8003EC38 03E00008 */  jr         $ra
/* 3F83C 8003EC3C 27BD00B8 */   addiu     $sp, $sp, 0xb8

glabel func_8003EC40
/* 3F840 8003EC40 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 3F844 8003EC44 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3F848 8003EC48 8CAF0004 */  lw         $t7, 4($a1)
/* 3F84C 8003EC4C 8CAE0000 */  lw         $t6, ($a1)
/* 3F850 8003EC50 01CF0019 */  multu      $t6, $t7
/* 3F854 8003EC54 0000C012 */  mflo       $t8
/* 3F858 8003EC58 0018C880 */  sll        $t9, $t8, 2
/* 3F85C 8003EC5C 07210003 */  bgez       $t9, .L8003EC6C
/* 3F860 8003EC60 001940C3 */   sra       $t0, $t9, 3
/* 3F864 8003EC64 27210007 */  addiu      $at, $t9, 7
/* 3F868 8003EC68 000140C3 */  sra        $t0, $at, 3
.L8003EC6C:
/* 3F86C 8003EC6C AFA8002C */  sw         $t0, 0x2c($sp)
/* 3F870 8003EC70 8CA90008 */  lw         $t1, 8($a1)
/* 3F874 8003EC74 AFA50034 */  sw         $a1, 0x34($sp)
/* 3F878 8003EC78 0C00FD74 */  jal        func_8003F5D0
/* 3F87C 8003EC7C AFA90028 */   sw        $t1, 0x28($sp)
/* 3F880 8003EC80 8FA50034 */  lw         $a1, 0x34($sp)
/* 3F884 8003EC84 000258C0 */  sll        $t3, $v0, 3
/* 3F888 8003EC88 8FAD0028 */  lw         $t5, 0x28($sp)
/* 3F88C 8003EC8C 8CAA000C */  lw         $t2, 0xc($a1)
/* 3F890 8003EC90 3C04800F */  lui        $a0, %hi(D_800F2A60)
/* 3F894 8003EC94 24842A60 */  addiu      $a0, $a0, %lo(D_800F2A60)
/* 3F898 8003EC98 014B6021 */  addu       $t4, $t2, $t3
/* 3F89C 8003EC9C 8D830000 */  lw         $v1, ($t4)
/* 3F8A0 8003ECA0 8FA6002C */  lw         $a2, 0x2c($sp)
/* 3F8A4 8003ECA4 27A70020 */  addiu      $a3, $sp, 0x20
/* 3F8A8 8003ECA8 0C00FE12 */  jal        func_8003F848
/* 3F8AC 8003ECAC 01A32821 */   addu      $a1, $t5, $v1
/* 3F8B0 8003ECB0 24010004 */  addiu      $at, $zero, 4
/* 3F8B4 8003ECB4 54410004 */  bnel       $v0, $at, .L8003ECC8
/* 3F8B8 8003ECB8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 3F8BC 8003ECBC 0C00FDAE */  jal        func_8003F6B8
/* 3F8C0 8003ECC0 00000000 */   nop
/* 3F8C4 8003ECC4 8FBF0014 */  lw         $ra, 0x14($sp)
.L8003ECC8:
/* 3F8C8 8003ECC8 8FA20020 */  lw         $v0, 0x20($sp)
/* 3F8CC 8003ECCC 27BD0030 */  addiu      $sp, $sp, 0x30
/* 3F8D0 8003ECD0 03E00008 */  jr         $ra
/* 3F8D4 8003ECD4 00000000 */   nop

glabel func_8003ECD8
/* 3F8D8 8003ECD8 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 3F8DC 8003ECDC AFBF0034 */  sw         $ra, 0x34($sp)
/* 3F8E0 8003ECE0 AFB60030 */  sw         $s6, 0x30($sp)
/* 3F8E4 8003ECE4 AFB5002C */  sw         $s5, 0x2c($sp)
/* 3F8E8 8003ECE8 AFB40028 */  sw         $s4, 0x28($sp)
/* 3F8EC 8003ECEC AFB30024 */  sw         $s3, 0x24($sp)
/* 3F8F0 8003ECF0 AFB20020 */  sw         $s2, 0x20($sp)
/* 3F8F4 8003ECF4 AFB1001C */  sw         $s1, 0x1c($sp)
/* 3F8F8 8003ECF8 AFB00018 */  sw         $s0, 0x18($sp)
/* 3F8FC 8003ECFC AFA40040 */  sw         $a0, 0x40($sp)
/* 3F900 8003ED00 908E0000 */  lbu        $t6, ($a0)
/* 3F904 8003ED04 00C08825 */  or         $s1, $a2, $zero
/* 3F908 8003ED08 00A0B025 */  or         $s6, $a1, $zero
/* 3F90C 8003ED0C 11C00015 */  beqz       $t6, .L8003ED64
/* 3F910 8003ED10 00008025 */   or        $s0, $zero, $zero
/* 3F914 8003ED14 3415A3A0 */  ori        $s5, $zero, 0xa3a0
/* 3F918 8003ED18 3414A2A0 */  ori        $s4, $zero, 0xa2a0
/* 3F91C 8003ED1C 27B3003C */  addiu      $s3, $sp, 0x3c
/* 3F920 8003ED20 27B20040 */  addiu      $s2, $sp, 0x40
/* 3F924 8003ED24 02402025 */  or         $a0, $s2, $zero
.L8003ED28:
/* 3F928 8003ED28 0C00FBB8 */  jal        func_8003EEE0
/* 3F92C 8003ED2C 02602825 */   or        $a1, $s3, $zero
/* 3F930 8003ED30 14540003 */  bne        $v0, $s4, .L8003ED40
/* 3F934 8003ED34 00402025 */   or        $a0, $v0, $zero
/* 3F938 8003ED38 10000006 */  b          .L8003ED54
/* 3F93C 8003ED3C 8FB0003C */   lw        $s0, 0x3c($sp)
.L8003ED40:
/* 3F940 8003ED40 10550004 */  beq        $v0, $s5, .L8003ED54
/* 3F944 8003ED44 02C02825 */   or        $a1, $s6, $zero
/* 3F948 8003ED48 0C00FB64 */  jal        func_8003ED90
/* 3F94C 8003ED4C 02203025 */   or        $a2, $s1, $zero
/* 3F950 8003ED50 02028021 */  addu       $s0, $s0, $v0
.L8003ED54:
/* 3F954 8003ED54 8FAF0040 */  lw         $t7, 0x40($sp)
/* 3F958 8003ED58 91F80000 */  lbu        $t8, ($t7)
/* 3F95C 8003ED5C 5700FFF2 */  bnel       $t8, $zero, .L8003ED28
/* 3F960 8003ED60 02402025 */   or        $a0, $s2, $zero
.L8003ED64:
/* 3F964 8003ED64 8FBF0034 */  lw         $ra, 0x34($sp)
/* 3F968 8003ED68 02001025 */  or         $v0, $s0, $zero
/* 3F96C 8003ED6C 8FB00018 */  lw         $s0, 0x18($sp)
/* 3F970 8003ED70 8FB1001C */  lw         $s1, 0x1c($sp)
/* 3F974 8003ED74 8FB20020 */  lw         $s2, 0x20($sp)
/* 3F978 8003ED78 8FB30024 */  lw         $s3, 0x24($sp)
/* 3F97C 8003ED7C 8FB40028 */  lw         $s4, 0x28($sp)
/* 3F980 8003ED80 8FB5002C */  lw         $s5, 0x2c($sp)
/* 3F984 8003ED84 8FB60030 */  lw         $s6, 0x30($sp)
/* 3F988 8003ED88 03E00008 */  jr         $ra
/* 3F98C 8003ED8C 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_8003ED90
/* 3F990 8003ED90 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3F994 8003ED94 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3F998 8003ED98 AFA40020 */  sw         $a0, 0x20($sp)
/* 3F99C 8003ED9C AFA60028 */  sw         $a2, 0x28($sp)
/* 3F9A0 8003EDA0 8CAE0000 */  lw         $t6, ($a1)
/* 3F9A4 8003EDA4 AFA50024 */  sw         $a1, 0x24($sp)
/* 3F9A8 8003EDA8 0C00FB81 */  jal        func_8003EE04
/* 3F9AC 8003EDAC AFAE001C */   sw        $t6, 0x1c($sp)
/* 3F9B0 8003EDB0 24030001 */  addiu      $v1, $zero, 1
/* 3F9B4 8003EDB4 8FA50024 */  lw         $a1, 0x24($sp)
/* 3F9B8 8003EDB8 10430003 */  beq        $v0, $v1, .L8003EDC8
/* 3F9BC 8003EDBC 8FA60028 */   lw        $a2, 0x28($sp)
/* 3F9C0 8003EDC0 14C30003 */  bne        $a2, $v1, .L8003EDD0
/* 3F9C4 8003EDC4 00003825 */   or        $a3, $zero, $zero
.L8003EDC8:
/* 3F9C8 8003EDC8 10000001 */  b          .L8003EDD0
/* 3F9CC 8003EDCC 24070002 */   addiu     $a3, $zero, 2
.L8003EDD0:
/* 3F9D0 8003EDD0 8FA40020 */  lw         $a0, 0x20($sp)
/* 3F9D4 8003EDD4 0C00FB9D */  jal        func_8003EE74
/* 3F9D8 8003EDD8 AFA70018 */   sw        $a3, 0x18($sp)
/* 3F9DC 8003EDDC 8FA70018 */  lw         $a3, 0x18($sp)
/* 3F9E0 8003EDE0 8FA5001C */  lw         $a1, 0x1c($sp)
/* 3F9E4 8003EDE4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3F9E8 8003EDE8 00472021 */  addu       $a0, $v0, $a3
/* 3F9EC 8003EDEC 00A4082A */  slt        $at, $a1, $a0
/* 3F9F0 8003EDF0 10200002 */  beqz       $at, .L8003EDFC
/* 3F9F4 8003EDF4 27BD0020 */   addiu     $sp, $sp, 0x20
/* 3F9F8 8003EDF8 00A02025 */  or         $a0, $a1, $zero
.L8003EDFC:
/* 3F9FC 8003EDFC 03E00008 */  jr         $ra
/* 3FA00 8003EE00 00801025 */   or        $v0, $a0, $zero

glabel func_8003EE04
/* 3FA04 8003EE04 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3FA08 8003EE08 3401A1A0 */  ori        $at, $zero, 0xa1a0
/* 3FA0C 8003EE0C AFBF0014 */  sw         $ra, 0x14($sp)
/* 3FA10 8003EE10 14810003 */  bne        $a0, $at, .L8003EE20
/* 3FA14 8003EE14 AFA5001C */   sw        $a1, 0x1c($sp)
/* 3FA18 8003EE18 10000012 */  b          .L8003EE64
/* 3FA1C 8003EE1C 00001025 */   or        $v0, $zero, $zero
.L8003EE20:
/* 3FA20 8003EE20 8FA5001C */  lw         $a1, 0x1c($sp)
/* 3FA24 8003EE24 24060001 */  addiu      $a2, $zero, 1
/* 3FA28 8003EE28 0C00FD3F */  jal        func_8003F4FC
/* 3FA2C 8003EE2C AFA40018 */   sw        $a0, 0x18($sp)
/* 3FA30 8003EE30 1440000B */  bnez       $v0, .L8003EE60
/* 3FA34 8003EE34 8FA40018 */   lw        $a0, 0x18($sp)
/* 3FA38 8003EE38 8FA5001C */  lw         $a1, 0x1c($sp)
/* 3FA3C 8003EE3C 0C00FD55 */  jal        func_8003F554
/* 3FA40 8003EE40 24060001 */   addiu     $a2, $zero, 1
/* 3FA44 8003EE44 8FAF001C */  lw         $t7, 0x1c($sp)
/* 3FA48 8003EE48 244E0001 */  addiu      $t6, $v0, 1
/* 3FA4C 8003EE4C 8DF80000 */  lw         $t8, ($t7)
/* 3FA50 8003EE50 55D80004 */  bnel       $t6, $t8, .L8003EE64
/* 3FA54 8003EE54 24020001 */   addiu     $v0, $zero, 1
/* 3FA58 8003EE58 10000002 */  b          .L8003EE64
/* 3FA5C 8003EE5C 00001025 */   or        $v0, $zero, $zero
.L8003EE60:
/* 3FA60 8003EE60 24020001 */  addiu      $v0, $zero, 1
.L8003EE64:
/* 3FA64 8003EE64 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3FA68 8003EE68 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3FA6C 8003EE6C 03E00008 */  jr         $ra
/* 3FA70 8003EE70 00000000 */   nop

glabel func_8003EE74
/* 3FA74 8003EE74 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3FA78 8003EE78 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3FA7C 8003EE7C AFA40020 */  sw         $a0, 0x20($sp)
/* 3FA80 8003EE80 AFA50024 */  sw         $a1, 0x24($sp)
/* 3FA84 8003EE84 0C00FD3F */  jal        func_8003F4FC
/* 3FA88 8003EE88 AFA60028 */   sw        $a2, 0x28($sp)
/* 3FA8C 8003EE8C 04410003 */  bgez       $v0, .L8003EE9C
/* 3FA90 8003EE90 00027043 */   sra       $t6, $v0, 1
/* 3FA94 8003EE94 24410001 */  addiu      $at, $v0, 1
/* 3FA98 8003EE98 00017043 */  sra        $t6, $at, 1
.L8003EE9C:
/* 3FA9C 8003EE9C 000E7840 */  sll        $t7, $t6, 1
/* 3FAA0 8003EEA0 AFAF001C */  sw         $t7, 0x1c($sp)
/* 3FAA4 8003EEA4 8FA40020 */  lw         $a0, 0x20($sp)
/* 3FAA8 8003EEA8 8FA50024 */  lw         $a1, 0x24($sp)
/* 3FAAC 8003EEAC 0C00FD55 */  jal        func_8003F554
/* 3FAB0 8003EEB0 8FA60028 */   lw        $a2, 0x28($sp)
/* 3FAB4 8003EEB4 8FA8001C */  lw         $t0, 0x1c($sp)
/* 3FAB8 8003EEB8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3FABC 8003EEBC 04410003 */  bgez       $v0, .L8003EECC
/* 3FAC0 8003EEC0 0002C043 */   sra       $t8, $v0, 1
/* 3FAC4 8003EEC4 24410001 */  addiu      $at, $v0, 1
/* 3FAC8 8003EEC8 0001C043 */  sra        $t8, $at, 1
.L8003EECC:
/* 3FACC 8003EECC 0018C840 */  sll        $t9, $t8, 1
/* 3FAD0 8003EED0 03281023 */  subu       $v0, $t9, $t0
/* 3FAD4 8003EED4 24420002 */  addiu      $v0, $v0, 2
/* 3FAD8 8003EED8 03E00008 */  jr         $ra
/* 3FADC 8003EEDC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8003EEE0
/* 3FAE0 8003EEE0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3FAE4 8003EEE4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 3FAE8 8003EEE8 AFB00018 */  sw         $s0, 0x18($sp)
/* 3FAEC 8003EEEC AFA5002C */  sw         $a1, 0x2c($sp)
/* 3FAF0 8003EEF0 00808025 */  or         $s0, $a0, $zero
/* 3FAF4 8003EEF4 AFA00024 */  sw         $zero, 0x24($sp)
/* 3FAF8 8003EEF8 0C00FBE2 */  jal        func_8003EF88
/* 3FAFC 8003EEFC 27A50024 */   addiu     $a1, $sp, 0x24
/* 3FB00 8003EF00 8FA30024 */  lw         $v1, 0x24($sp)
/* 3FB04 8003EF04 02002025 */  or         $a0, $s0, $zero
/* 3FB08 8003EF08 54600004 */  bnel       $v1, $zero, .L8003EF1C
/* 3FB0C 8003EF0C 8FA30024 */   lw        $v1, 0x24($sp)
/* 3FB10 8003EF10 0C00FBF3 */  jal        func_8003EFCC
/* 3FB14 8003EF14 27A50024 */   addiu     $a1, $sp, 0x24
/* 3FB18 8003EF18 8FA30024 */  lw         $v1, 0x24($sp)
.L8003EF1C:
/* 3FB1C 8003EF1C 02002025 */  or         $a0, $s0, $zero
/* 3FB20 8003EF20 54600004 */  bnel       $v1, $zero, .L8003EF34
/* 3FB24 8003EF24 8FA30024 */   lw        $v1, 0x24($sp)
/* 3FB28 8003EF28 0C00FC98 */  jal        func_8003F260
/* 3FB2C 8003EF2C 27A50024 */   addiu     $a1, $sp, 0x24
/* 3FB30 8003EF30 8FA30024 */  lw         $v1, 0x24($sp)
.L8003EF34:
/* 3FB34 8003EF34 02002025 */  or         $a0, $s0, $zero
/* 3FB38 8003EF38 27A50024 */  addiu      $a1, $sp, 0x24
/* 3FB3C 8003EF3C 54600004 */  bnel       $v1, $zero, .L8003EF50
/* 3FB40 8003EF40 8FA30024 */   lw        $v1, 0x24($sp)
/* 3FB44 8003EF44 0C00FCCA */  jal        func_8003F328
/* 3FB48 8003EF48 8FA6002C */   lw        $a2, 0x2c($sp)
/* 3FB4C 8003EF4C 8FA30024 */  lw         $v1, 0x24($sp)
.L8003EF50:
/* 3FB50 8003EF50 02002025 */  or         $a0, $s0, $zero
/* 3FB54 8003EF54 27A50024 */  addiu      $a1, $sp, 0x24
/* 3FB58 8003EF58 14600004 */  bnez       $v1, .L8003EF6C
/* 3FB5C 8003EF5C 00000000 */   nop
/* 3FB60 8003EF60 0C00FCF4 */  jal        func_8003F3D0
/* 3FB64 8003EF64 8FA6002C */   lw        $a2, 0x2c($sp)
/* 3FB68 8003EF68 8FA30024 */  lw         $v1, 0x24($sp)
.L8003EF6C:
/* 3FB6C 8003EF6C 14600002 */  bnez       $v1, .L8003EF78
/* 3FB70 8003EF70 8FBF001C */   lw        $ra, 0x1c($sp)
/* 3FB74 8003EF74 3403A1A9 */  ori        $v1, $zero, 0xa1a9
.L8003EF78:
/* 3FB78 8003EF78 8FB00018 */  lw         $s0, 0x18($sp)
/* 3FB7C 8003EF7C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 3FB80 8003EF80 03E00008 */  jr         $ra
/* 3FB84 8003EF84 00601025 */   or        $v0, $v1, $zero

glabel func_8003EF88
/* 3FB88 8003EF88 AFA50004 */  sw         $a1, 4($sp)
/* 3FB8C 8003EF8C 8C830000 */  lw         $v1, ($a0)
/* 3FB90 8003EF90 00003025 */  or         $a2, $zero, $zero
/* 3FB94 8003EF94 8FB80004 */  lw         $t8, 4($sp)
/* 3FB98 8003EF98 90620000 */  lbu        $v0, ($v1)
/* 3FB9C 8003EF9C 304E0080 */  andi       $t6, $v0, 0x80
/* 3FBA0 8003EFA0 11C00007 */  beqz       $t6, .L8003EFC0
/* 3FBA4 8003EFA4 00402825 */   or        $a1, $v0, $zero
/* 3FBA8 8003EFA8 90620001 */  lbu        $v0, 1($v1)
/* 3FBAC 8003EFAC 00057A00 */  sll        $t7, $a1, 8
/* 3FBB0 8003EFB0 24630002 */  addiu      $v1, $v1, 2
/* 3FBB4 8003EFB4 01E22825 */  or         $a1, $t7, $v0
/* 3FBB8 8003EFB8 AF050000 */  sw         $a1, ($t8)
/* 3FBBC 8003EFBC 24060001 */  addiu      $a2, $zero, 1
.L8003EFC0:
/* 3FBC0 8003EFC0 AC830000 */  sw         $v1, ($a0)
/* 3FBC4 8003EFC4 03E00008 */  jr         $ra
/* 3FBC8 8003EFC8 00C01025 */   or        $v0, $a2, $zero

glabel func_8003EFCC
/* 3FBCC 8003EFCC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3FBD0 8003EFD0 AFBF001C */  sw         $ra, 0x1c($sp)
/* 3FBD4 8003EFD4 AFB10018 */  sw         $s1, 0x18($sp)
/* 3FBD8 8003EFD8 AFB00014 */  sw         $s0, 0x14($sp)
/* 3FBDC 8003EFDC AFA40020 */  sw         $a0, 0x20($sp)
/* 3FBE0 8003EFE0 AFA50024 */  sw         $a1, 0x24($sp)
/* 3FBE4 8003EFE4 8C8F0000 */  lw         $t7, ($a0)
/* 3FBE8 8003EFE8 00008825 */  or         $s1, $zero, $zero
/* 3FBEC 8003EFEC 91F00000 */  lbu        $s0, ($t7)
/* 3FBF0 8003EFF0 0C00FC22 */  jal        func_8003F088
/* 3FBF4 8003EFF4 02002025 */   or        $a0, $s0, $zero
/* 3FBF8 8003EFF8 24030001 */  addiu      $v1, $zero, 1
/* 3FBFC 8003EFFC 14430003 */  bne        $v0, $v1, .L8003F00C
/* 3FC00 8003F000 320400FF */   andi      $a0, $s0, 0xff
/* 3FC04 8003F004 10000015 */  b          .L8003F05C
/* 3FC08 8003F008 00608825 */   or        $s1, $v1, $zero
.L8003F00C:
/* 3FC0C 8003F00C 0C00FC30 */  jal        func_8003F0C0
/* 3FC10 8003F010 8FA50024 */   lw        $a1, 0x24($sp)
/* 3FC14 8003F014 24030001 */  addiu      $v1, $zero, 1
/* 3FC18 8003F018 14430003 */  bne        $v0, $v1, .L8003F028
/* 3FC1C 8003F01C 320400FF */   andi      $a0, $s0, 0xff
/* 3FC20 8003F020 1000000E */  b          .L8003F05C
/* 3FC24 8003F024 00608825 */   or        $s1, $v1, $zero
.L8003F028:
/* 3FC28 8003F028 0C00FC3E */  jal        func_8003F0F8
/* 3FC2C 8003F02C 8FA50024 */   lw        $a1, 0x24($sp)
/* 3FC30 8003F030 24030001 */  addiu      $v1, $zero, 1
/* 3FC34 8003F034 14430003 */  bne        $v0, $v1, .L8003F044
/* 3FC38 8003F038 320400FF */   andi      $a0, $s0, 0xff
/* 3FC3C 8003F03C 10000007 */  b          .L8003F05C
/* 3FC40 8003F040 00608825 */   or        $s1, $v1, $zero
.L8003F044:
/* 3FC44 8003F044 0C00FC4C */  jal        func_8003F130
/* 3FC48 8003F048 8FA50024 */   lw        $a1, 0x24($sp)
/* 3FC4C 8003F04C 24030001 */  addiu      $v1, $zero, 1
/* 3FC50 8003F050 14430002 */  bne        $v0, $v1, .L8003F05C
/* 3FC54 8003F054 00000000 */   nop
/* 3FC58 8003F058 00608825 */  or         $s1, $v1, $zero
.L8003F05C:
/* 3FC5C 8003F05C 16230004 */  bne        $s1, $v1, .L8003F070
/* 3FC60 8003F060 8FA20020 */   lw        $v0, 0x20($sp)
/* 3FC64 8003F064 8C580000 */  lw         $t8, ($v0)
/* 3FC68 8003F068 27190001 */  addiu      $t9, $t8, 1
/* 3FC6C 8003F06C AC590000 */  sw         $t9, ($v0)
.L8003F070:
/* 3FC70 8003F070 8FBF001C */  lw         $ra, 0x1c($sp)
/* 3FC74 8003F074 02201025 */  or         $v0, $s1, $zero
/* 3FC78 8003F078 8FB10018 */  lw         $s1, 0x18($sp)
/* 3FC7C 8003F07C 8FB00014 */  lw         $s0, 0x14($sp)
/* 3FC80 8003F080 03E00008 */  jr         $ra
/* 3FC84 8003F084 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8003F088
/* 3FC88 8003F088 308E00FF */  andi       $t6, $a0, 0xff
/* 3FC8C 8003F08C 29C10030 */  slti       $at, $t6, 0x30
/* 3FC90 8003F090 14200008 */  bnez       $at, .L8003F0B4
/* 3FC94 8003F094 AFA40000 */   sw        $a0, ($sp)
/* 3FC98 8003F098 29C1003A */  slti       $at, $t6, 0x3a
/* 3FC9C 8003F09C 10200005 */  beqz       $at, .L8003F0B4
/* 3FCA0 8003F0A0 24020001 */   addiu     $v0, $zero, 1
/* 3FCA4 8003F0A4 3401A380 */  ori        $at, $zero, 0xa380
/* 3FCA8 8003F0A8 01C17821 */  addu       $t7, $t6, $at
/* 3FCAC 8003F0AC 03E00008 */  jr         $ra
/* 3FCB0 8003F0B0 ACAF0000 */   sw        $t7, ($a1)
.L8003F0B4:
/* 3FCB4 8003F0B4 00001025 */  or         $v0, $zero, $zero
/* 3FCB8 8003F0B8 03E00008 */  jr         $ra
/* 3FCBC 8003F0BC 00000000 */   nop

glabel func_8003F0C0
/* 3FCC0 8003F0C0 308E00FF */  andi       $t6, $a0, 0xff
/* 3FCC4 8003F0C4 29C10061 */  slti       $at, $t6, 0x61
/* 3FCC8 8003F0C8 14200008 */  bnez       $at, .L8003F0EC
/* 3FCCC 8003F0CC AFA40000 */   sw        $a0, ($sp)
/* 3FCD0 8003F0D0 29C1007B */  slti       $at, $t6, 0x7b
/* 3FCD4 8003F0D4 10200005 */  beqz       $at, .L8003F0EC
/* 3FCD8 8003F0D8 24020001 */   addiu     $v0, $zero, 1
/* 3FCDC 8003F0DC 3401A380 */  ori        $at, $zero, 0xa380
/* 3FCE0 8003F0E0 01C17821 */  addu       $t7, $t6, $at
/* 3FCE4 8003F0E4 03E00008 */  jr         $ra
/* 3FCE8 8003F0E8 ACAF0000 */   sw        $t7, ($a1)
.L8003F0EC:
/* 3FCEC 8003F0EC 00001025 */  or         $v0, $zero, $zero
/* 3FCF0 8003F0F0 03E00008 */  jr         $ra
/* 3FCF4 8003F0F4 00000000 */   nop

glabel func_8003F0F8
/* 3FCF8 8003F0F8 308E00FF */  andi       $t6, $a0, 0xff
/* 3FCFC 8003F0FC 29C10041 */  slti       $at, $t6, 0x41
/* 3FD00 8003F100 14200008 */  bnez       $at, .L8003F124
/* 3FD04 8003F104 AFA40000 */   sw        $a0, ($sp)
/* 3FD08 8003F108 29C1005B */  slti       $at, $t6, 0x5b
/* 3FD0C 8003F10C 10200005 */  beqz       $at, .L8003F124
/* 3FD10 8003F110 24020001 */   addiu     $v0, $zero, 1
/* 3FD14 8003F114 3401A380 */  ori        $at, $zero, 0xa380
/* 3FD18 8003F118 01C17821 */  addu       $t7, $t6, $at
/* 3FD1C 8003F11C 03E00008 */  jr         $ra
/* 3FD20 8003F120 ACAF0000 */   sw        $t7, ($a1)
.L8003F124:
/* 3FD24 8003F124 00001025 */  or         $v0, $zero, $zero
/* 3FD28 8003F128 03E00008 */  jr         $ra
/* 3FD2C 8003F12C 00000000 */   nop

glabel func_8003F130
/* 3FD30 8003F130 308E00FF */  andi       $t6, $a0, 0xff
/* 3FD34 8003F134 25CFFFE0 */  addiu      $t7, $t6, -0x20
/* 3FD38 8003F138 2DE10020 */  sltiu      $at, $t7, 0x20
/* 3FD3C 8003F13C 10200043 */  beqz       $at, .L8003F24C
/* 3FD40 8003F140 AFA40000 */   sw        $a0, ($sp)
/* 3FD44 8003F144 000F7880 */  sll        $t7, $t7, 2
/* 3FD48 8003F148 3C01800A */  lui        $at, %hi(D_800A71A4)
/* 3FD4C 8003F14C 002F0821 */  addu       $at, $at, $t7
/* 3FD50 8003F150 8C2F71A4 */  lw         $t7, %lo(D_800A71A4)($at)
/* 3FD54 8003F154 01E00008 */  jr         $t7
/* 3FD58 8003F158 00000000 */   nop
/* 3FD5C 8003F15C 3418A1A0 */  ori        $t8, $zero, 0xa1a0
/* 3FD60 8003F160 1000003C */  b          .L8003F254
/* 3FD64 8003F164 ACB80000 */   sw        $t8, ($a1)
/* 3FD68 8003F168 3419A1A4 */  ori        $t9, $zero, 0xa1a4
/* 3FD6C 8003F16C 10000039 */  b          .L8003F254
/* 3FD70 8003F170 ACB90000 */   sw        $t9, ($a1)
/* 3FD74 8003F174 3408A1A5 */  ori        $t0, $zero, 0xa1a5
/* 3FD78 8003F178 10000036 */  b          .L8003F254
/* 3FD7C 8003F17C ACA80000 */   sw        $t0, ($a1)
/* 3FD80 8003F180 3409A1A7 */  ori        $t1, $zero, 0xa1a7
/* 3FD84 8003F184 10000033 */  b          .L8003F254
/* 3FD88 8003F188 ACA90000 */   sw        $t1, ($a1)
/* 3FD8C 8003F18C 340AA1A8 */  ori        $t2, $zero, 0xa1a8
/* 3FD90 8003F190 10000030 */  b          .L8003F254
/* 3FD94 8003F194 ACAA0000 */   sw        $t2, ($a1)
/* 3FD98 8003F198 340BA1A9 */  ori        $t3, $zero, 0xa1a9
/* 3FD9C 8003F19C 1000002D */  b          .L8003F254
/* 3FDA0 8003F1A0 ACAB0000 */   sw        $t3, ($a1)
/* 3FDA4 8003F1A4 340CA1AA */  ori        $t4, $zero, 0xa1aa
/* 3FDA8 8003F1A8 1000002A */  b          .L8003F254
/* 3FDAC 8003F1AC ACAC0000 */   sw        $t4, ($a1)
/* 3FDB0 8003F1B0 340DA1C7 */  ori        $t5, $zero, 0xa1c7
/* 3FDB4 8003F1B4 10000027 */  b          .L8003F254
/* 3FDB8 8003F1B8 ACAD0000 */   sw        $t5, ($a1)
/* 3FDBC 8003F1BC 340EA1C9 */  ori        $t6, $zero, 0xa1c9
/* 3FDC0 8003F1C0 10000024 */  b          .L8003F254
/* 3FDC4 8003F1C4 ACAE0000 */   sw        $t6, ($a1)
/* 3FDC8 8003F1C8 340FA1CA */  ori        $t7, $zero, 0xa1ca
/* 3FDCC 8003F1CC 10000021 */  b          .L8003F254
/* 3FDD0 8003F1D0 ACAF0000 */   sw        $t7, ($a1)
/* 3FDD4 8003F1D4 3418A1CB */  ori        $t8, $zero, 0xa1cb
/* 3FDD8 8003F1D8 1000001E */  b          .L8003F254
/* 3FDDC 8003F1DC ACB80000 */   sw        $t8, ($a1)
/* 3FDE0 8003F1E0 3419A1DC */  ori        $t9, $zero, 0xa1dc
/* 3FDE4 8003F1E4 1000001B */  b          .L8003F254
/* 3FDE8 8003F1E8 ACB90000 */   sw        $t9, ($a1)
/* 3FDEC 8003F1EC 3408A1DD */  ori        $t0, $zero, 0xa1dd
/* 3FDF0 8003F1F0 10000018 */  b          .L8003F254
/* 3FDF4 8003F1F4 ACA80000 */   sw        $t0, ($a1)
/* 3FDF8 8003F1F8 3409A1E1 */  ori        $t1, $zero, 0xa1e1
/* 3FDFC 8003F1FC 10000015 */  b          .L8003F254
/* 3FE00 8003F200 ACA90000 */   sw        $t1, ($a1)
/* 3FE04 8003F204 340AA1E3 */  ori        $t2, $zero, 0xa1e3
/* 3FE08 8003F208 10000012 */  b          .L8003F254
/* 3FE0C 8003F20C ACAA0000 */   sw        $t2, ($a1)
/* 3FE10 8003F210 340BA1E4 */  ori        $t3, $zero, 0xa1e4
/* 3FE14 8003F214 1000000F */  b          .L8003F254
/* 3FE18 8003F218 ACAB0000 */   sw        $t3, ($a1)
/* 3FE1C 8003F21C 340CA1F0 */  ori        $t4, $zero, 0xa1f0
/* 3FE20 8003F220 1000000C */  b          .L8003F254
/* 3FE24 8003F224 ACAC0000 */   sw        $t4, ($a1)
/* 3FE28 8003F228 340DA1F3 */  ori        $t5, $zero, 0xa1f3
/* 3FE2C 8003F22C 10000009 */  b          .L8003F254
/* 3FE30 8003F230 ACAD0000 */   sw        $t5, ($a1)
/* 3FE34 8003F234 340EA1F5 */  ori        $t6, $zero, 0xa1f5
/* 3FE38 8003F238 10000006 */  b          .L8003F254
/* 3FE3C 8003F23C ACAE0000 */   sw        $t6, ($a1)
/* 3FE40 8003F240 340FA1F6 */  ori        $t7, $zero, 0xa1f6
/* 3FE44 8003F244 10000003 */  b          .L8003F254
/* 3FE48 8003F248 ACAF0000 */   sw        $t7, ($a1)
.L8003F24C:
/* 3FE4C 8003F24C 03E00008 */  jr         $ra
/* 3FE50 8003F250 00001025 */   or        $v0, $zero, $zero
.L8003F254:
/* 3FE54 8003F254 24020001 */  addiu      $v0, $zero, 1
/* 3FE58 8003F258 03E00008 */  jr         $ra
/* 3FE5C 8003F25C 00000000 */   nop

glabel func_8003F260
/* 3FE60 8003F260 8C830000 */  lw         $v1, ($a0)
/* 3FE64 8003F264 24080040 */  addiu      $t0, $zero, 0x40
/* 3FE68 8003F268 00A03825 */  or         $a3, $a1, $zero
/* 3FE6C 8003F26C 90620000 */  lbu        $v0, ($v1)
/* 3FE70 8003F270 00003025 */  or         $a2, $zero, $zero
/* 3FE74 8003F274 5502002A */  bnel       $t0, $v0, .L8003F320
/* 3FE78 8003F278 AC830000 */   sw        $v1, ($a0)
/* 3FE7C 8003F27C 90650001 */  lbu        $a1, 1($v1)
/* 3FE80 8003F280 24630001 */  addiu      $v1, $v1, 1
/* 3FE84 8003F284 340EA1F7 */  ori        $t6, $zero, 0xa1f7
/* 3FE88 8003F288 15050004 */  bne        $t0, $a1, .L8003F29C
/* 3FE8C 8003F28C 28A10030 */   slti      $at, $a1, 0x30
/* 3FE90 8003F290 ACEE0000 */  sw         $t6, ($a3)
/* 3FE94 8003F294 1000001D */  b          .L8003F30C
/* 3FE98 8003F298 24060001 */   addiu     $a2, $zero, 1
.L8003F29C:
/* 3FE9C 8003F29C 14200007 */  bnez       $at, .L8003F2BC
/* 3FEA0 8003F2A0 28A1003A */   slti      $at, $a1, 0x3a
/* 3FEA4 8003F2A4 10200005 */  beqz       $at, .L8003F2BC
/* 3FEA8 8003F2A8 3401A280 */   ori       $at, $zero, 0xa280
/* 3FEAC 8003F2AC 00A17821 */  addu       $t7, $a1, $at
/* 3FEB0 8003F2B0 ACEF0000 */  sw         $t7, ($a3)
/* 3FEB4 8003F2B4 10000015 */  b          .L8003F30C
/* 3FEB8 8003F2B8 24060001 */   addiu     $a2, $zero, 1
.L8003F2BC:
/* 3FEBC 8003F2BC 28A10041 */  slti       $at, $a1, 0x41
/* 3FEC0 8003F2C0 14200007 */  bnez       $at, .L8003F2E0
/* 3FEC4 8003F2C4 28A1005B */   slti      $at, $a1, 0x5b
/* 3FEC8 8003F2C8 10200005 */  beqz       $at, .L8003F2E0
/* 3FECC 8003F2CC 3401A280 */   ori       $at, $zero, 0xa280
/* 3FED0 8003F2D0 00A1C021 */  addu       $t8, $a1, $at
/* 3FED4 8003F2D4 ACF80000 */  sw         $t8, ($a3)
/* 3FED8 8003F2D8 1000000C */  b          .L8003F30C
/* 3FEDC 8003F2DC 24060001 */   addiu     $a2, $zero, 1
.L8003F2E0:
/* 3FEE0 8003F2E0 28A10061 */  slti       $at, $a1, 0x61
/* 3FEE4 8003F2E4 14200008 */  bnez       $at, .L8003F308
/* 3FEE8 8003F2E8 3409A1F7 */   ori       $t1, $zero, 0xa1f7
/* 3FEEC 8003F2EC 28A1007B */  slti       $at, $a1, 0x7b
/* 3FEF0 8003F2F0 10200005 */  beqz       $at, .L8003F308
/* 3FEF4 8003F2F4 3401A280 */   ori       $at, $zero, 0xa280
/* 3FEF8 8003F2F8 00A1C821 */  addu       $t9, $a1, $at
/* 3FEFC 8003F2FC ACF90000 */  sw         $t9, ($a3)
/* 3FF00 8003F300 10000002 */  b          .L8003F30C
/* 3FF04 8003F304 24060001 */   addiu     $a2, $zero, 1
.L8003F308:
/* 3FF08 8003F308 ACE90000 */  sw         $t1, ($a3)
.L8003F30C:
/* 3FF0C 8003F30C 24010001 */  addiu      $at, $zero, 1
/* 3FF10 8003F310 54C10003 */  bnel       $a2, $at, .L8003F320
/* 3FF14 8003F314 AC830000 */   sw        $v1, ($a0)
/* 3FF18 8003F318 24630001 */  addiu      $v1, $v1, 1
/* 3FF1C 8003F31C AC830000 */  sw         $v1, ($a0)
.L8003F320:
/* 3FF20 8003F320 03E00008 */  jr         $ra
/* 3FF24 8003F324 00C01025 */   or        $v0, $a2, $zero

glabel func_8003F328
/* 3FF28 8003F328 AFA50004 */  sw         $a1, 4($sp)
/* 3FF2C 8003F32C AFA60008 */  sw         $a2, 8($sp)
/* 3FF30 8003F330 8C830000 */  lw         $v1, ($a0)
/* 3FF34 8003F334 24080023 */  addiu      $t0, $zero, 0x23
/* 3FF38 8003F338 00003825 */  or         $a3, $zero, $zero
/* 3FF3C 8003F33C 90620000 */  lbu        $v0, ($v1)
/* 3FF40 8003F340 55020021 */  bnel       $t0, $v0, .L8003F3C8
/* 3FF44 8003F344 AC830000 */   sw        $v1, ($a0)
/* 3FF48 8003F348 90620001 */  lbu        $v0, 1($v1)
/* 3FF4C 8003F34C 00003025 */  or         $a2, $zero, $zero
/* 3FF50 8003F350 24630001 */  addiu      $v1, $v1, 1
/* 3FF54 8003F354 15020006 */  bne        $t0, $v0, .L8003F370
/* 3FF58 8003F358 00003825 */   or        $a3, $zero, $zero
/* 3FF5C 8003F35C 340EA1F4 */  ori        $t6, $zero, 0xa1f4
/* 3FF60 8003F360 ACAE0000 */  sw         $t6, ($a1)
/* 3FF64 8003F364 24630001 */  addiu      $v1, $v1, 1
/* 3FF68 8003F368 10000016 */  b          .L8003F3C4
/* 3FF6C 8003F36C 24070001 */   addiu     $a3, $zero, 1
.L8003F370:
/* 3FF70 8003F370 24090003 */  addiu      $t1, $zero, 3
/* 3FF74 8003F374 2408000A */  addiu      $t0, $zero, 0xa
.L8003F378:
/* 3FF78 8003F378 90620000 */  lbu        $v0, ($v1)
/* 3FF7C 8003F37C 28410030 */  slti       $at, $v0, 0x30
/* 3FF80 8003F380 1420000A */  bnez       $at, .L8003F3AC
/* 3FF84 8003F384 2841003A */   slti      $at, $v0, 0x3a
/* 3FF88 8003F388 50200009 */  beql       $at, $zero, .L8003F3B0
/* 3FF8C 8003F38C 8FB90008 */   lw        $t9, 8($sp)
/* 3FF90 8003F390 00C80019 */  multu      $a2, $t0
/* 3FF94 8003F394 24E70001 */  addiu      $a3, $a3, 1
/* 3FF98 8003F398 24630001 */  addiu      $v1, $v1, 1
/* 3FF9C 8003F39C 0000C012 */  mflo       $t8
/* 3FFA0 8003F3A0 03023021 */  addu       $a2, $t8, $v0
/* 3FFA4 8003F3A4 14E9FFF4 */  bne        $a3, $t1, .L8003F378
/* 3FFA8 8003F3A8 24C6FFD0 */   addiu     $a2, $a2, -0x30
.L8003F3AC:
/* 3FFAC 8003F3AC 8FB90008 */  lw         $t9, 8($sp)
.L8003F3B0:
/* 3FFB0 8003F3B0 340AA2A0 */  ori        $t2, $zero, 0xa2a0
/* 3FFB4 8003F3B4 24070001 */  addiu      $a3, $zero, 1
/* 3FFB8 8003F3B8 AF260000 */  sw         $a2, ($t9)
/* 3FFBC 8003F3BC 8FAB0004 */  lw         $t3, 4($sp)
/* 3FFC0 8003F3C0 AD6A0000 */  sw         $t2, ($t3)
.L8003F3C4:
/* 3FFC4 8003F3C4 AC830000 */  sw         $v1, ($a0)
.L8003F3C8:
/* 3FFC8 8003F3C8 03E00008 */  jr         $ra
/* 3FFCC 8003F3CC 00E01025 */   or        $v0, $a3, $zero

glabel func_8003F3D0
/* 3FFD0 8003F3D0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3FFD4 8003F3D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3FFD8 8003F3D8 AFA40028 */  sw         $a0, 0x28($sp)
/* 3FFDC 8003F3DC AFA5002C */  sw         $a1, 0x2c($sp)
/* 3FFE0 8003F3E0 AFA60030 */  sw         $a2, 0x30($sp)
/* 3FFE4 8003F3E4 8C830000 */  lw         $v1, ($a0)
/* 3FFE8 8003F3E8 2402005E */  addiu      $v0, $zero, 0x5e
/* 3FFEC 8003F3EC 00004025 */  or         $t0, $zero, $zero
/* 3FFF0 8003F3F0 90670000 */  lbu        $a3, ($v1)
/* 3FFF4 8003F3F4 54470020 */  bnel       $v0, $a3, .L8003F478
/* 3FFF8 8003F3F8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 3FFFC 8003F3FC 90670001 */  lbu        $a3, 1($v1)
/* 40000 8003F400 24630001 */  addiu      $v1, $v1, 1
/* 40004 8003F404 27A5001C */  addiu      $a1, $sp, 0x1c
/* 40008 8003F408 14470005 */  bne        $v0, $a3, .L8003F420
/* 4000C 8003F40C 30E400FF */   andi      $a0, $a3, 0xff
/* 40010 8003F410 240F000F */  addiu      $t7, $zero, 0xf
/* 40014 8003F414 AFAF001C */  sw         $t7, 0x1c($sp)
/* 40018 8003F418 1000000B */  b          .L8003F448
/* 4001C 8003F41C 24080001 */   addiu     $t0, $zero, 1
.L8003F420:
/* 40020 8003F420 AFA30024 */  sw         $v1, 0x24($sp)
/* 40024 8003F424 0C00FD22 */  jal        func_8003F488
/* 40028 8003F428 AFA80018 */   sw        $t0, 0x18($sp)
/* 4002C 8003F42C 8FA30024 */  lw         $v1, 0x24($sp)
/* 40030 8003F430 14400004 */  bnez       $v0, .L8003F444
/* 40034 8003F434 8FA80018 */   lw        $t0, 0x18($sp)
/* 40038 8003F438 2418000F */  addiu      $t8, $zero, 0xf
/* 4003C 8003F43C 10000002 */  b          .L8003F448
/* 40040 8003F440 AFB8001C */   sw        $t8, 0x1c($sp)
.L8003F444:
/* 40044 8003F444 24080001 */  addiu      $t0, $zero, 1
.L8003F448:
/* 40048 8003F448 8FB9001C */  lw         $t9, 0x1c($sp)
/* 4004C 8003F44C 8FA90030 */  lw         $t1, 0x30($sp)
/* 40050 8003F450 340AA3A0 */  ori        $t2, $zero, 0xa3a0
/* 40054 8003F454 24010001 */  addiu      $at, $zero, 1
/* 40058 8003F458 AD390000 */  sw         $t9, ($t1)
/* 4005C 8003F45C 8FAB002C */  lw         $t3, 0x2c($sp)
/* 40060 8003F460 AD6A0000 */  sw         $t2, ($t3)
/* 40064 8003F464 15010002 */  bne        $t0, $at, .L8003F470
/* 40068 8003F468 8FAC0028 */   lw        $t4, 0x28($sp)
/* 4006C 8003F46C 24630001 */  addiu      $v1, $v1, 1
.L8003F470:
/* 40070 8003F470 AD830000 */  sw         $v1, ($t4)
/* 40074 8003F474 8FBF0014 */  lw         $ra, 0x14($sp)
.L8003F478:
/* 40078 8003F478 27BD0028 */  addiu      $sp, $sp, 0x28
/* 4007C 8003F47C 01001025 */  or         $v0, $t0, $zero
/* 40080 8003F480 03E00008 */  jr         $ra
/* 40084 8003F484 00000000 */   nop

glabel func_8003F488
/* 40088 8003F488 308E00FF */  andi       $t6, $a0, 0xff
/* 4008C 8003F48C 29C10030 */  slti       $at, $t6, 0x30
/* 40090 8003F490 AFA40000 */  sw         $a0, ($sp)
/* 40094 8003F494 14200006 */  bnez       $at, .L8003F4B0
/* 40098 8003F498 01C01025 */   or        $v0, $t6, $zero
/* 4009C 8003F49C 29C1003A */  slti       $at, $t6, 0x3a
/* 400A0 8003F4A0 10200003 */  beqz       $at, .L8003F4B0
/* 400A4 8003F4A4 25CFFFD0 */   addiu     $t7, $t6, -0x30
/* 400A8 8003F4A8 10000011 */  b          .L8003F4F0
/* 400AC 8003F4AC ACAF0000 */   sw        $t7, ($a1)
.L8003F4B0:
/* 400B0 8003F4B0 28410041 */  slti       $at, $v0, 0x41
/* 400B4 8003F4B4 14200005 */  bnez       $at, .L8003F4CC
/* 400B8 8003F4B8 28410047 */   slti      $at, $v0, 0x47
/* 400BC 8003F4BC 10200003 */  beqz       $at, .L8003F4CC
/* 400C0 8003F4C0 2458FFC9 */   addiu     $t8, $v0, -0x37
/* 400C4 8003F4C4 1000000A */  b          .L8003F4F0
/* 400C8 8003F4C8 ACB80000 */   sw        $t8, ($a1)
.L8003F4CC:
/* 400CC 8003F4CC 28410061 */  slti       $at, $v0, 0x61
/* 400D0 8003F4D0 14200005 */  bnez       $at, .L8003F4E8
/* 400D4 8003F4D4 28410067 */   slti      $at, $v0, 0x67
/* 400D8 8003F4D8 10200003 */  beqz       $at, .L8003F4E8
/* 400DC 8003F4DC 2459FFA9 */   addiu     $t9, $v0, -0x57
/* 400E0 8003F4E0 10000003 */  b          .L8003F4F0
/* 400E4 8003F4E4 ACB90000 */   sw        $t9, ($a1)
.L8003F4E8:
/* 400E8 8003F4E8 03E00008 */  jr         $ra
/* 400EC 8003F4EC 00001025 */   or        $v0, $zero, $zero
.L8003F4F0:
/* 400F0 8003F4F0 24020001 */  addiu      $v0, $zero, 1
/* 400F4 8003F4F4 03E00008 */  jr         $ra
/* 400F8 8003F4F8 00000000 */   nop

glabel func_8003F4FC
/* 400FC 8003F4FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 40100 8003F500 3401A1A0 */  ori        $at, $zero, 0xa1a0
/* 40104 8003F504 AFBF0014 */  sw         $ra, 0x14($sp)
/* 40108 8003F508 14810003 */  bne        $a0, $at, .L8003F518
/* 4010C 8003F50C AFA5001C */   sw        $a1, 0x1c($sp)
/* 40110 8003F510 1000000C */  b          .L8003F544
/* 40114 8003F514 00001025 */   or        $v0, $zero, $zero
.L8003F518:
/* 40118 8003F518 24010001 */  addiu      $at, $zero, 1
/* 4011C 8003F51C 14C10009 */  bne        $a2, $at, .L8003F544
/* 40120 8003F520 00001025 */   or        $v0, $zero, $zero
/* 40124 8003F524 0C00FD74 */  jal        func_8003F5D0
/* 40128 8003F528 8FA5001C */   lw        $a1, 0x1c($sp)
/* 4012C 8003F52C 8FAE001C */  lw         $t6, 0x1c($sp)
/* 40130 8003F530 0002C0C0 */  sll        $t8, $v0, 3
/* 40134 8003F534 8DCF000C */  lw         $t7, 0xc($t6)
/* 40138 8003F538 01F8C821 */  addu       $t9, $t7, $t8
/* 4013C 8003F53C 10000001 */  b          .L8003F544
/* 40140 8003F540 83220004 */   lb        $v0, 4($t9)
.L8003F544:
/* 40144 8003F544 8FBF0014 */  lw         $ra, 0x14($sp)
/* 40148 8003F548 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4014C 8003F54C 03E00008 */  jr         $ra
/* 40150 8003F550 00000000 */   nop

glabel func_8003F554
/* 40154 8003F554 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 40158 8003F558 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4015C 8003F55C 3401A1A0 */  ori        $at, $zero, 0xa1a0
/* 40160 8003F560 1481000C */  bne        $a0, $at, .L8003F594
/* 40164 8003F564 8CA30000 */   lw        $v1, ($a1)
/* 40168 8003F568 24010001 */  addiu      $at, $zero, 1
/* 4016C 8003F56C 14C10003 */  bne        $a2, $at, .L8003F57C
/* 40170 8003F570 00000000 */   nop
/* 40174 8003F574 10000012 */  b          .L8003F5C0
/* 40178 8003F578 24020001 */   addiu     $v0, $zero, 1
.L8003F57C:
/* 4017C 8003F57C 04610003 */  bgez       $v1, .L8003F58C
/* 40180 8003F580 00031043 */   sra       $v0, $v1, 1
/* 40184 8003F584 24610001 */  addiu      $at, $v1, 1
/* 40188 8003F588 00011043 */  sra        $v0, $at, 1
.L8003F58C:
/* 4018C 8003F58C 1000000C */  b          .L8003F5C0
/* 40190 8003F590 2442FFFF */   addiu     $v0, $v0, -1
.L8003F594:
/* 40194 8003F594 24010001 */  addiu      $at, $zero, 1
/* 40198 8003F598 14C10009 */  bne        $a2, $at, .L8003F5C0
/* 4019C 8003F59C 2462FFFF */   addiu     $v0, $v1, -1
/* 401A0 8003F5A0 0C00FD74 */  jal        func_8003F5D0
/* 401A4 8003F5A4 AFA5001C */   sw        $a1, 0x1c($sp)
/* 401A8 8003F5A8 8FA5001C */  lw         $a1, 0x1c($sp)
/* 401AC 8003F5AC 000278C0 */  sll        $t7, $v0, 3
/* 401B0 8003F5B0 8CAE000C */  lw         $t6, 0xc($a1)
/* 401B4 8003F5B4 01CFC021 */  addu       $t8, $t6, $t7
/* 401B8 8003F5B8 10000001 */  b          .L8003F5C0
/* 401BC 8003F5BC 83020005 */   lb        $v0, 5($t8)
.L8003F5C0:
/* 401C0 8003F5C0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 401C4 8003F5C4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 401C8 8003F5C8 03E00008 */  jr         $ra
/* 401CC 8003F5CC 00000000 */   nop

glabel func_8003F5D0
/* 401D0 8003F5D0 30827F7F */  andi       $v0, $a0, 0x7f7f
/* 401D4 8003F5D4 27BDFFF8 */  addiu      $sp, $sp, -8
/* 401D8 8003F5D8 28412580 */  slti       $at, $v0, 0x2580
/* 401DC 8003F5DC 10200006 */  beqz       $at, .L8003F5F8
/* 401E0 8003F5E0 AFA5000C */   sw        $a1, 0xc($sp)
/* 401E4 8003F5E4 28412520 */  slti       $at, $v0, 0x2520
/* 401E8 8003F5E8 14200003 */  bnez       $at, .L8003F5F8
/* 401EC 8003F5EC 244EDC50 */   addiu     $t6, $v0, -0x23b0
/* 401F0 8003F5F0 10000014 */  b          .L8003F644
/* 401F4 8003F5F4 AFAE0000 */   sw        $t6, ($sp)
.L8003F5F8:
/* 401F8 8003F5F8 28412420 */  slti       $at, $v0, 0x2420
/* 401FC 8003F5FC 14200003 */  bnez       $at, .L8003F60C
/* 40200 8003F600 244FDCF0 */   addiu     $t7, $v0, -0x2310
/* 40204 8003F604 1000000F */  b          .L8003F644
/* 40208 8003F608 AFAF0000 */   sw        $t7, ($sp)
.L8003F60C:
/* 4020C 8003F60C 28412330 */  slti       $at, $v0, 0x2330
/* 40210 8003F610 14200003 */  bnez       $at, .L8003F620
/* 40214 8003F614 2458DD90 */   addiu     $t8, $v0, -0x2270
/* 40218 8003F618 1000000A */  b          .L8003F644
/* 4021C 8003F61C AFB80000 */   sw        $t8, ($sp)
.L8003F620:
/* 40220 8003F620 28412220 */  slti       $at, $v0, 0x2220
/* 40224 8003F624 14200003 */  bnez       $at, .L8003F634
/* 40228 8003F628 2459DE40 */   addiu     $t9, $v0, -0x21c0
/* 4022C 8003F62C 10000005 */  b          .L8003F644
/* 40230 8003F630 AFB90000 */   sw        $t9, ($sp)
.L8003F634:
/* 40234 8003F634 28412120 */  slti       $at, $v0, 0x2120
/* 40238 8003F638 14200002 */  bnez       $at, .L8003F644
/* 4023C 8003F63C 2448DEE0 */   addiu     $t0, $v0, -0x2120
/* 40240 8003F640 AFA80000 */  sw         $t0, ($sp)
.L8003F644:
/* 40244 8003F644 8FA20000 */  lw         $v0, ($sp)
/* 40248 8003F648 03E00008 */  jr         $ra
/* 4024C 8003F64C 27BD0008 */   addiu     $sp, $sp, 8

glabel func_8003F650
/* 40250 8003F650 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 40254 8003F654 AFBF0014 */  sw         $ra, 0x14($sp)
/* 40258 8003F658 1080000A */  beqz       $a0, .L8003F684
/* 4025C 8003F65C 00803025 */   or        $a2, $a0, $zero
/* 40260 8003F660 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 40264 8003F664 8CC50000 */  lw         $a1, ($a2)
/* 40268 8003F668 AFA60018 */  sw         $a2, 0x18($sp)
/* 4026C 8003F66C 0C00E152 */  jal        func_80038548
/* 40270 8003F670 24842960 */   addiu     $a0, $a0, %lo(D_800F2960)
/* 40274 8003F674 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 40278 8003F678 8FA50018 */  lw         $a1, 0x18($sp)
/* 4027C 8003F67C 0C00E152 */  jal        func_80038548
/* 40280 8003F680 24842960 */   addiu     $a0, $a0, %lo(D_800F2960)
.L8003F684:
/* 40284 8003F684 8FBF0014 */  lw         $ra, 0x14($sp)
/* 40288 8003F688 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4028C 8003F68C 03E00008 */  jr         $ra
/* 40290 8003F690 00000000 */   nop

glabel func_8003F694
/* 40294 8003F694 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 40298 8003F698 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4029C 8003F69C 3C04800F */  lui        $a0, %hi(D_800F2A60)
/* 402A0 8003F6A0 0C00FEDB */  jal        func_8003FB6C
/* 402A4 8003F6A4 24842A60 */   addiu     $a0, $a0, %lo(D_800F2A60)
/* 402A8 8003F6A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 402AC 8003F6AC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 402B0 8003F6B0 03E00008 */  jr         $ra
/* 402B4 8003F6B4 00000000 */   nop

glabel func_8003F6B8
/* 402B8 8003F6B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 402BC 8003F6BC AFBF0014 */  sw         $ra, 0x14($sp)
/* 402C0 8003F6C0 3C04800F */  lui        $a0, %hi(D_800F2A60)
/* 402C4 8003F6C4 0C00FED3 */  jal        func_8003FB4C
/* 402C8 8003F6C8 24842A60 */   addiu     $a0, $a0, %lo(D_800F2A60)
/* 402CC 8003F6CC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 402D0 8003F6D0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 402D4 8003F6D4 03E00008 */  jr         $ra
/* 402D8 8003F6D8 00000000 */   nop

glabel func_8003F6DC
/* 402DC 8003F6DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 402E0 8003F6E0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 402E4 8003F6E4 0C00FB36 */  jal        func_8003ECD8
/* 402E8 8003F6E8 00000000 */   nop
/* 402EC 8003F6EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 402F0 8003F6F0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 402F4 8003F6F4 03E00008 */  jr         $ra
/* 402F8 8003F6F8 00000000 */   nop
/* 402FC 8003F6FC 00000000 */  nop
