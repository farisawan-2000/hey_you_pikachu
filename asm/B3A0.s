.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8000A7A0
/* B3A0 8000A7A0 03E00008 */  jr         $ra
/* B3A4 8000A7A4 00000000 */   nop

glabel func_8000A7A8
/* B3A8 8000A7A8 3C01800B */  lui        $at, %hi(D_800AE4F0)
/* B3AC 8000A7AC AC20E4F0 */  sw         $zero, %lo(D_800AE4F0)($at)
/* B3B0 8000A7B0 3C01800B */  lui        $at, %hi(D_800B66F0)
/* B3B4 8000A7B4 AC2066F0 */  sw         $zero, %lo(D_800B66F0)($at)
/* B3B8 8000A7B8 3C01800B */  lui        $at, %hi(D_800AE504)
/* B3BC 8000A7BC 240E0012 */  addiu      $t6, $zero, 0x12
/* B3C0 8000A7C0 3C02800B */  lui        $v0, %hi(D_800AE500)
/* B3C4 8000A7C4 AC2EE504 */  sw         $t6, %lo(D_800AE504)($at)
/* B3C8 8000A7C8 2442E500 */  addiu      $v0, $v0, %lo(D_800AE500)
/* B3CC 8000A7CC 240F0016 */  addiu      $t7, $zero, 0x16
/* B3D0 8000A7D0 AC4F0000 */  sw         $t7, ($v0)
/* B3D4 8000A7D4 3C01800B */  lui        $at, %hi(D_800AE4F8)
/* B3D8 8000A7D8 3C03800B */  lui        $v1, %hi(D_800AE4FC)
/* B3DC 8000A7DC AC2FE4F8 */  sw         $t7, %lo(D_800AE4F8)($at)
/* B3E0 8000A7E0 2463E4FC */  addiu      $v1, $v1, %lo(D_800AE4FC)
/* B3E4 8000A7E4 27BDFF88 */  addiu      $sp, $sp, -0x78
/* B3E8 8000A7E8 AC600000 */  sw         $zero, ($v1)
/* B3EC 8000A7EC 3C01800B */  lui        $at, %hi(D_800AE4F4)
/* B3F0 8000A7F0 AC20E4F4 */  sw         $zero, %lo(D_800AE4F4)($at)
/* B3F4 8000A7F4 AFBF0064 */  sw         $ra, 0x64($sp)
/* B3F8 8000A7F8 AFA40078 */  sw         $a0, 0x78($sp)
/* B3FC 8000A7FC 3C01800F */  lui        $at, %hi(D_800F0B70)
/* B400 8000A800 24080001 */  addiu      $t0, $zero, 1
/* B404 8000A804 AC280B70 */  sw         $t0, %lo(D_800F0B70)($at)
/* B408 8000A808 2404006E */  addiu      $a0, $zero, 0x6e
/* B40C 8000A80C 0C0109F2 */  jal        func_800427C8
/* B410 8000A810 2405006E */   addiu     $a1, $zero, 0x6e
/* B414 8000A814 3C028000 */  lui        $v0, %hi(osTvType)
/* B418 8000A818 8C420300 */  lw         $v0, %lo(osTvType)($v0)
/* B41C 8000A81C 8FA40078 */  lw         $a0, 0x78($sp)
/* B420 8000A820 24050064 */  addiu      $a1, $zero, 0x64
/* B424 8000A824 10400008 */  beqz       $v0, .L8000A848
/* B428 8000A828 24060064 */   addiu     $a2, $zero, 0x64
/* B42C 8000A82C 24010001 */  addiu      $at, $zero, 1
/* B430 8000A830 10410009 */  beq        $v0, $at, .L8000A858
/* B434 8000A834 24010002 */   addiu     $at, $zero, 2
/* B438 8000A838 10410005 */  beq        $v0, $at, .L8000A850
/* B43C 8000A83C 00000000 */   nop
/* B440 8000A840 10000006 */  b          .L8000A85C
/* B444 8000A844 00001025 */   or        $v0, $zero, $zero
.L8000A848:
/* B448 8000A848 10000004 */  b          .L8000A85C
/* B44C 8000A84C 2402000E */   addiu     $v0, $zero, 0xe
.L8000A850:
/* B450 8000A850 10000002 */  b          .L8000A85C
/* B454 8000A854 2402001C */   addiu     $v0, $zero, 0x1c
.L8000A858:
/* B458 8000A858 00001025 */  or         $v0, $zero, $zero
.L8000A85C:
/* B45C 8000A85C 24090001 */  addiu      $t1, $zero, 1
/* B460 8000A860 AFA90010 */  sw         $t1, 0x10($sp)
/* B464 8000A864 304700FF */  andi       $a3, $v0, 0xff
/* B468 8000A868 0C00FF0C */  jal        func_8003FC30
/* B46C 8000A86C AFA20074 */   sw        $v0, 0x74($sp)
/* B470 8000A870 8FA40078 */  lw         $a0, 0x78($sp)
/* B474 8000A874 24050032 */  addiu      $a1, $zero, 0x32
/* B478 8000A878 24060032 */  addiu      $a2, $zero, 0x32
/* B47C 8000A87C 0C007DA0 */  jal        func_8001F680
/* B480 8000A880 24077D00 */   addiu     $a3, $zero, 0x7d00
/* B484 8000A884 8FA20074 */  lw         $v0, 0x74($sp)
/* B488 8000A888 3C0B800A */  lui        $t3, %hi(D_8009DCB0)
/* B48C 8000A88C 256BDCB0 */  addiu      $t3, $t3, %lo(D_8009DCB0)
/* B490 8000A890 00025080 */  sll        $t2, $v0, 2
/* B494 8000A894 01425021 */  addu       $t2, $t2, $v0
/* B498 8000A898 000A5100 */  sll        $t2, $t2, 4
/* B49C 8000A89C 014B1821 */  addu       $v1, $t2, $t3
/* B4A0 8000A8A0 00607025 */  or         $t6, $v1, $zero
/* B4A4 8000A8A4 246D0048 */  addiu      $t5, $v1, 0x48
/* B4A8 8000A8A8 03A07825 */  or         $t7, $sp, $zero
.L8000A8AC:
/* B4AC 8000A8AC 8DC10000 */  lw         $at, ($t6)
/* B4B0 8000A8B0 25CE000C */  addiu      $t6, $t6, 0xc
/* B4B4 8000A8B4 25EF000C */  addiu      $t7, $t7, 0xc
/* B4B8 8000A8B8 ADE1FFF4 */  sw         $at, -0xc($t7)
/* B4BC 8000A8BC 8DC1FFF8 */  lw         $at, -8($t6)
/* B4C0 8000A8C0 ADE1FFF8 */  sw         $at, -8($t7)
/* B4C4 8000A8C4 8DC1FFFC */  lw         $at, -4($t6)
/* B4C8 8000A8C8 15CDFFF8 */  bne        $t6, $t5, .L8000A8AC
/* B4CC 8000A8CC ADE1FFFC */   sw        $at, -4($t7)
/* B4D0 8000A8D0 8DC10000 */  lw         $at, ($t6)
/* B4D4 8000A8D4 24180140 */  addiu      $t8, $zero, 0x140
/* B4D8 8000A8D8 241900F0 */  addiu      $t9, $zero, 0xf0
/* B4DC 8000A8DC ADE10000 */  sw         $at, ($t7)
/* B4E0 8000A8E0 8DCD0004 */  lw         $t5, 4($t6)
/* B4E4 8000A8E4 24080010 */  addiu      $t0, $zero, 0x10
/* B4E8 8000A8E8 ADED0004 */  sw         $t5, 4($t7)
/* B4EC 8000A8EC 8FA7000C */  lw         $a3, 0xc($sp)
/* B4F0 8000A8F0 8FA60008 */  lw         $a2, 8($sp)
/* B4F4 8000A8F4 8FA50004 */  lw         $a1, 4($sp)
/* B4F8 8000A8F8 8FA40000 */  lw         $a0, ($sp)
/* B4FC 8000A8FC AFA3006C */  sw         $v1, 0x6c($sp)
/* B500 8000A900 AFA80058 */  sw         $t0, 0x58($sp)
/* B504 8000A904 AFB90054 */  sw         $t9, 0x54($sp)
/* B508 8000A908 0C00F227 */  jal        func_8003C89C
/* B50C 8000A90C AFB80050 */   sw        $t8, 0x50($sp)
/* B510 8000A910 0C014D58 */  jal        osViSetMode
/* B514 8000A914 8FA4006C */   lw        $a0, 0x6c($sp)
/* B518 8000A918 0C014D70 */  jal        osViBlack
/* B51C 8000A91C 24040001 */   addiu     $a0, $zero, 1
/* B520 8000A920 3C098000 */  lui        $t1, %hi(osTvType)
/* B524 8000A924 8D290300 */  lw         $t1, %lo(osTvType)($t1)
/* B528 8000A928 24010001 */  addiu      $at, $zero, 1
/* B52C 8000A92C 11210003 */  beq        $t1, $at, .L8000A93C
/* B530 8000A930 00000000 */   nop
.L8000A934:
/* B534 8000A934 1000FFFF */  b          .L8000A934
/* B538 8000A938 00000000 */   nop
.L8000A93C:
/* B53C 8000A93C 0C014D8C */  jal        osViSetSpecialFeatures
/* B540 8000A940 24040040 */   addiu     $a0, $zero, 0x40
/* B544 8000A944 0C014D8C */  jal        osViSetSpecialFeatures
/* B548 8000A948 24040008 */   addiu     $a0, $zero, 8
/* B54C 8000A94C 0C014D8C */  jal        osViSetSpecialFeatures
/* B550 8000A950 24040002 */   addiu     $a0, $zero, 2
/* B554 8000A954 8FA40078 */  lw         $a0, 0x78($sp)
/* B558 8000A958 24050004 */  addiu      $a1, $zero, 4
/* B55C 8000A95C 0C0009D9 */  jal        func_80002764
/* B560 8000A960 24060008 */   addiu     $a2, $zero, 8
/* B564 8000A964 0C0013C6 */  jal        osViExtendVStart
/* B568 8000A968 24040F0F */   addiu     $a0, $zero, 0xf0f
/* B56C 8000A96C 3C01800A */  lui        $at, %hi(D_800A0BF0)
/* B570 8000A970 C42C0BF0 */  lwc1       $f12, %lo(D_800A0BF0)($at)
/* B574 8000A974 3C01800A */  lui        $at, %hi(D_800A0BF4)
/* B578 8000A978 0C0013D9 */  jal        func_80004F64
/* B57C 8000A97C C42E0BF4 */   lwc1      $f14, %lo(D_800A0BF4)($at)
/* B580 8000A980 0C008538 */  jal        func_800214E0
/* B584 8000A984 00000000 */   nop
/* B588 8000A988 0C00BF58 */  jal        func_8002FD60
/* B58C 8000A98C 00000000 */   nop
/* B590 8000A990 3C04800B */  lui        $a0, %hi(D_800B6778)
/* B594 8000A994 24846778 */  addiu      $a0, $a0, %lo(D_800B6778)
/* B598 8000A998 0C014388 */  jal        _bzero
/* B59C 8000A99C 24050020 */   addiu     $a1, $zero, 0x20
/* B5A0 8000A9A0 0C00DA98 */  jal        func_80036A60
/* B5A4 8000A9A4 00000000 */   nop
/* B5A8 8000A9A8 8FBF0064 */  lw         $ra, 0x64($sp)
/* B5AC 8000A9AC 240A0001 */  addiu      $t2, $zero, 1
/* B5B0 8000A9B0 3C01800B */  lui        $at, %hi(D_800AE510)
/* B5B4 8000A9B4 AC2AE510 */  sw         $t2, %lo(D_800AE510)($at)
/* B5B8 8000A9B8 03E00008 */  jr         $ra
/* B5BC 8000A9BC 27BD0078 */   addiu     $sp, $sp, 0x78

glabel func_8000A9C0
/* B5C0 8000A9C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B5C4 8000A9C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* B5C8 8000A9C8 0C043983 */  jal        func_8010E60C
/* B5CC 8000A9CC 00000000 */   nop
/* B5D0 8000A9D0 3C0E800B */  lui        $t6, %hi(D_800AE504)
/* B5D4 8000A9D4 8DCEE504 */  lw         $t6, %lo(D_800AE504)($t6)
/* B5D8 8000A9D8 24010012 */  addiu      $at, $zero, 0x12
/* B5DC 8000A9DC 11C10003 */  beq        $t6, $at, .L8000A9EC
/* B5E0 8000A9E0 00000000 */   nop
/* B5E4 8000A9E4 0C002CB2 */  jal        func_8000B2C8
/* B5E8 8000A9E8 24040004 */   addiu     $a0, $zero, 4
.L8000A9EC:
/* B5EC 8000A9EC 0C00AA82 */  jal        func_8002AA08
/* B5F0 8000A9F0 00000000 */   nop
/* B5F4 8000A9F4 0C00CB29 */  jal        func_80032CA4
/* B5F8 8000A9F8 3C044000 */   lui       $a0, 0x4000
/* B5FC 8000A9FC 10400003 */  beqz       $v0, .L8000AA0C
/* B600 8000AA00 3C044000 */   lui       $a0, 0x4000
/* B604 8000AA04 0C00CB1C */  jal        func_80032C70
/* B608 8000AA08 24050001 */   addiu     $a1, $zero, 1
.L8000AA0C:
/* B60C 8000AA0C 00002025 */  or         $a0, $zero, $zero
/* B610 8000AA10 24050118 */  addiu      $a1, $zero, 0x118
/* B614 8000AA14 0C00CDE1 */  jal        func_80033784
/* B618 8000AA18 240600C8 */   addiu     $a2, $zero, 0xc8
/* B61C 8000AA1C 3C0F8013 */  lui        $t7, %hi(D_80133DE4)
/* B620 8000AA20 8DEF3DE4 */  lw         $t7, %lo(D_80133DE4)($t7)
/* B624 8000AA24 00002025 */  or         $a0, $zero, $zero
/* B628 8000AA28 24060001 */  addiu      $a2, $zero, 1
/* B62C 8000AA2C 0C00CE9C */  jal        func_80033A70
/* B630 8000AA30 8DE50064 */   lw        $a1, 0x64($t7)
/* B634 8000AA34 3C04800A */  lui        $a0, %hi(D_800A08F4)
/* B638 8000AA38 248408F4 */  addiu      $a0, $a0, %lo(D_800A08F4)
/* B63C 8000AA3C 0C002ED2 */  jal        func_8000BB48
/* B640 8000AA40 24050001 */   addiu     $a1, $zero, 1
/* B644 8000AA44 0C0001B9 */  jal        func_800006E4
/* B648 8000AA48 00000000 */   nop
/* B64C 8000AA4C 3C04800F */  lui        $a0, %hi(D_800F2960)
/* B650 8000AA50 3C05800A */  lui        $a1, %hi(D_800A0908)
/* B654 8000AA54 24A50908 */  addiu      $a1, $a1, %lo(D_800A0908)
/* B658 8000AA58 0C00E1A4 */  jal        func_80038690
/* B65C 8000AA5C 24842960 */   addiu     $a0, $a0, %lo(D_800F2960)
/* B660 8000AA60 3C04800A */  lui        $a0, %hi(D_800A091C)
/* B664 8000AA64 2484091C */  addiu      $a0, $a0, %lo(D_800A091C)
/* B668 8000AA68 0C002ED2 */  jal        func_8000BB48
/* B66C 8000AA6C 00002825 */   or        $a1, $zero, $zero
/* B670 8000AA70 0C044F1E */  jal        func_80113C78
/* B674 8000AA74 00000000 */   nop
/* B678 8000AA78 3C04800F */  lui        $a0, %hi(D_800F2960)
/* B67C 8000AA7C 3C05800A */  lui        $a1, %hi(D_800A0930)
/* B680 8000AA80 24A50930 */  addiu      $a1, $a1, %lo(D_800A0930)
/* B684 8000AA84 0C00E1A4 */  jal        func_80038690
/* B688 8000AA88 24842960 */   addiu     $a0, $a0, %lo(D_800F2960)
/* B68C 8000AA8C 0C002602 */  jal        func_80009808
/* B690 8000AA90 00000000 */   nop
/* B694 8000AA94 3C018007 */  lui        $at, %hi(D_800760A8)
/* B698 8000AA98 3C04800F */  lui        $a0, %hi(D_800F2960)
/* B69C 8000AA9C 3C05800A */  lui        $a1, %hi(D_800A0948)
/* B6A0 8000AAA0 AC2060A8 */  sw         $zero, %lo(D_800760A8)($at)
/* B6A4 8000AAA4 24A50948 */  addiu      $a1, $a1, %lo(D_800A0948)
/* B6A8 8000AAA8 0C00E1A4 */  jal        func_80038690
/* B6AC 8000AAAC 24842960 */   addiu     $a0, $a0, %lo(D_800F2960)
/* B6B0 8000AAB0 3C04800A */  lui        $a0, %hi(D_800A095C)
/* B6B4 8000AAB4 2484095C */  addiu      $a0, $a0, %lo(D_800A095C)
/* B6B8 8000AAB8 0C002ED2 */  jal        func_8000BB48
/* B6BC 8000AABC 24050001 */   addiu     $a1, $zero, 1
/* B6C0 8000AAC0 0C043930 */  jal        func_8010E4C0
/* B6C4 8000AAC4 00000000 */   nop
/* B6C8 8000AAC8 3C04800F */  lui        $a0, %hi(D_800F2960)
/* B6CC 8000AACC 3C05800A */  lui        $a1, %hi(D_800A096C)
/* B6D0 8000AAD0 24A5096C */  addiu      $a1, $a1, %lo(D_800A096C)
/* B6D4 8000AAD4 0C00E1A4 */  jal        func_80038690
/* B6D8 8000AAD8 24842960 */   addiu     $a0, $a0, %lo(D_800F2960)
/* B6DC 8000AADC 3C04800A */  lui        $a0, %hi(D_800A0980)
/* B6E0 8000AAE0 24840980 */  addiu      $a0, $a0, %lo(D_800A0980)
/* B6E4 8000AAE4 0C002ED2 */  jal        func_8000BB48
/* B6E8 8000AAE8 24050001 */   addiu     $a1, $zero, 1
/* B6EC 8000AAEC 0C0447D0 */  jal        func_80111F40
/* B6F0 8000AAF0 00000000 */   nop
/* B6F4 8000AAF4 3C04800F */  lui        $a0, %hi(D_800F2960)
/* B6F8 8000AAF8 3C05800A */  lui        $a1, %hi(D_800A0990)
/* B6FC 8000AAFC 24A50990 */  addiu      $a1, $a1, %lo(D_800A0990)
/* B700 8000AB00 0C00E1A4 */  jal        func_80038690
/* B704 8000AB04 24842960 */   addiu     $a0, $a0, %lo(D_800F2960)
/* B708 8000AB08 0C044B28 */  jal        func_80112CA0
/* B70C 8000AB0C 00000000 */   nop
/* B710 8000AB10 3C04800F */  lui        $a0, %hi(D_800F2960)
/* B714 8000AB14 3C05800A */  lui        $a1, %hi(D_800A09B0)
/* B718 8000AB18 24A509B0 */  addiu      $a1, $a1, %lo(D_800A09B0)
/* B71C 8000AB1C 0C00E1A4 */  jal        func_80038690
/* B720 8000AB20 24842960 */   addiu     $a0, $a0, %lo(D_800F2960)
/* B724 8000AB24 0C046EB2 */  jal        func_8011BAC8
/* B728 8000AB28 00000000 */   nop
/* B72C 8000AB2C 3C04800A */  lui        $a0, %hi(D_800A09C4)
/* B730 8000AB30 248409C4 */  addiu      $a0, $a0, %lo(D_800A09C4)
/* B734 8000AB34 0C002ED2 */  jal        func_8000BB48
/* B738 8000AB38 24050001 */   addiu     $a1, $zero, 1
/* B73C 8000AB3C 0C00BED9 */  jal        func_8002FB64
/* B740 8000AB40 00000000 */   nop
/* B744 8000AB44 3C04800F */  lui        $a0, %hi(D_800F2960)
/* B748 8000AB48 3C05800A */  lui        $a1, %hi(D_800A09D8)
/* B74C 8000AB4C 24A509D8 */  addiu      $a1, $a1, %lo(D_800A09D8)
/* B750 8000AB50 0C00E1A4 */  jal        func_80038690
/* B754 8000AB54 24842960 */   addiu     $a0, $a0, %lo(D_800F2960)
/* B758 8000AB58 3C04800A */  lui        $a0, %hi(D_800A09F0)
/* B75C 8000AB5C 248409F0 */  addiu      $a0, $a0, %lo(D_800A09F0)
/* B760 8000AB60 0C002ED2 */  jal        func_8000BB48
/* B764 8000AB64 24050001 */   addiu     $a1, $zero, 1
/* B768 8000AB68 0C0011EE */  jal        func_800047B8
/* B76C 8000AB6C 24040001 */   addiu     $a0, $zero, 1
/* B770 8000AB70 00002025 */  or         $a0, $zero, $zero
/* B774 8000AB74 0C0011D7 */  jal        func_8000475C
/* B778 8000AB78 00002825 */   or        $a1, $zero, $zero
/* B77C 8000AB7C 24040001 */  addiu      $a0, $zero, 1
/* B780 8000AB80 0C00120F */  jal        func_8000483C
/* B784 8000AB84 24052020 */   addiu     $a1, $zero, 0x2020
/* B788 8000AB88 0C0011F9 */  jal        func_800047E4
/* B78C 8000AB8C 00002025 */   or        $a0, $zero, $zero
/* B790 8000AB90 0C001204 */  jal        func_80004810
/* B794 8000AB94 00002025 */   or        $a0, $zero, $zero
/* B798 8000AB98 3C018007 */  lui        $at, %hi(D_800722D0)
/* B79C 8000AB9C AC2022D0 */  sw         $zero, %lo(D_800722D0)($at)
/* B7A0 8000ABA0 3C018007 */  lui        $at, %hi(D_800722D4)
/* B7A4 8000ABA4 AC2022D4 */  sw         $zero, %lo(D_800722D4)($at)
/* B7A8 8000ABA8 0C0011E3 */  jal        func_8000478C
/* B7AC 8000ABAC 00002025 */   or        $a0, $zero, $zero
/* B7B0 8000ABB0 0C00ADAC */  jal        func_8002B6B0
/* B7B4 8000ABB4 00000000 */   nop
/* B7B8 8000ABB8 3C04800F */  lui        $a0, %hi(D_800F2960)
/* B7BC 8000ABBC 3C05800A */  lui        $a1, %hi(D_800A0A04)
/* B7C0 8000ABC0 24A50A04 */  addiu      $a1, $a1, %lo(D_800A0A04)
/* B7C4 8000ABC4 0C00E1A4 */  jal        func_80038690
/* B7C8 8000ABC8 24842960 */   addiu     $a0, $a0, %lo(D_800F2960)
/* B7CC 8000ABCC 3C04800A */  lui        $a0, %hi(D_800A0A1C)
/* B7D0 8000ABD0 24840A1C */  addiu      $a0, $a0, %lo(D_800A0A1C)
/* B7D4 8000ABD4 0C002ED2 */  jal        func_8000BB48
/* B7D8 8000ABD8 24050001 */   addiu     $a1, $zero, 1
/* B7DC 8000ABDC 0C04394F */  jal        func_8010E53C
/* B7E0 8000ABE0 00000000 */   nop
/* B7E4 8000ABE4 3C04800A */  lui        $a0, %hi(D_800A0A2C)
/* B7E8 8000ABE8 24840A2C */  addiu      $a0, $a0, %lo(D_800A0A2C)
/* B7EC 8000ABEC 0C002ED2 */  jal        func_8000BB48
/* B7F0 8000ABF0 24050001 */   addiu     $a1, $zero, 1
/* B7F4 8000ABF4 8FBF0014 */  lw         $ra, 0x14($sp)
/* B7F8 8000ABF8 27BD0018 */  addiu      $sp, $sp, 0x18
/* B7FC 8000ABFC 03E00008 */  jr         $ra
/* B800 8000AC00 00000000 */   nop

glabel func_8000AC04
/* B804 8000AC04 3C01800B */  lui        $at, %hi(D_800B66F4)
/* B808 8000AC08 AC2066F4 */  sw         $zero, %lo(D_800B66F4)($at)
/* B80C 8000AC0C 3C01800B */  lui        $at, %hi(D_800B676C)
/* B810 8000AC10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B814 8000AC14 AC20676C */  sw         $zero, %lo(D_800B676C)($at)
/* B818 8000AC18 AFBF0014 */  sw         $ra, 0x14($sp)
/* B81C 8000AC1C 3C01800B */  lui        $at, %hi(D_800B66F8)
/* B820 8000AC20 3C04800F */  lui        $a0, %hi(D_800F2960)
/* B824 8000AC24 3C05800A */  lui        $a1, %hi(D_800A0A3C)
/* B828 8000AC28 AC2066F8 */  sw         $zero, %lo(D_800B66F8)($at)
/* B82C 8000AC2C 24A50A3C */  addiu      $a1, $a1, %lo(D_800A0A3C)
/* B830 8000AC30 0C00E1A4 */  jal        func_80038690
/* B834 8000AC34 24842960 */   addiu     $a0, $a0, %lo(D_800F2960)
/* B838 8000AC38 0C002B2E */  jal        func_8000ACB8
/* B83C 8000AC3C 00000000 */   nop
/* B840 8000AC40 0C001283 */  jal        func_80004A0C
/* B844 8000AC44 00002025 */   or        $a0, $zero, $zero
/* B848 8000AC48 3C0E800B */  lui        $t6, %hi(D_800AE4F0)
/* B84C 8000AC4C 8DCEE4F0 */  lw         $t6, %lo(D_800AE4F0)($t6)
/* B850 8000AC50 3C028006 */  lui        $v0, %hi(D_80063828)
/* B854 8000AC54 000E7900 */  sll        $t7, $t6, 4
/* B858 8000AC58 004F1021 */  addu       $v0, $v0, $t7
/* B85C 8000AC5C 8C423828 */  lw         $v0, %lo(D_80063828)($v0)
/* B860 8000AC60 50400004 */  beql       $v0, $zero, .L8000AC74
/* B864 8000AC64 00002025 */   or        $a0, $zero, $zero
/* B868 8000AC68 0040F809 */  jalr       $v0
/* B86C 8000AC6C 00000000 */   nop
/* B870 8000AC70 00002025 */  or         $a0, $zero, $zero
.L8000AC74:
/* B874 8000AC74 0C0011D7 */  jal        func_8000475C
/* B878 8000AC78 00002825 */   or        $a1, $zero, $zero
/* B87C 8000AC7C 0C008C26 */  jal        func_80023098
/* B880 8000AC80 00000000 */   nop
/* B884 8000AC84 0C00EAA2 */  jal        func_8003AA88
/* B888 8000AC88 00000000 */   nop
/* B88C 8000AC8C 0C004869 */  jal        func_800121A4
/* B890 8000AC90 00000000 */   nop
/* B894 8000AC94 3C04800F */  lui        $a0, %hi(D_800F2960)
/* B898 8000AC98 3C05800A */  lui        $a1, %hi(D_800A0A50)
/* B89C 8000AC9C 24A50A50 */  addiu      $a1, $a1, %lo(D_800A0A50)
/* B8A0 8000ACA0 0C00E1A4 */  jal        func_80038690
/* B8A4 8000ACA4 24842960 */   addiu     $a0, $a0, %lo(D_800F2960)
/* B8A8 8000ACA8 8FBF0014 */  lw         $ra, 0x14($sp)
/* B8AC 8000ACAC 27BD0018 */  addiu      $sp, $sp, 0x18
/* B8B0 8000ACB0 03E00008 */  jr         $ra
/* B8B4 8000ACB4 00000000 */   nop

glabel func_8000ACB8
/* B8B8 8000ACB8 3C01800B */  lui        $at, %hi(D_800B6750)
/* B8BC 8000ACBC AC206750 */  sw         $zero, %lo(D_800B6750)($at)
/* B8C0 8000ACC0 3C01800B */  lui        $at, %hi(D_800B6754)
/* B8C4 8000ACC4 AC206754 */  sw         $zero, %lo(D_800B6754)($at)
/* B8C8 8000ACC8 3C01800B */  lui        $at, %hi(D_800B675C)
/* B8CC 8000ACCC 240E0000 */  addiu      $t6, $zero, 0
/* B8D0 8000ACD0 240F0000 */  addiu      $t7, $zero, 0
/* B8D4 8000ACD4 AC2F675C */  sw         $t7, %lo(D_800B675C)($at)
/* B8D8 8000ACD8 AC2E6758 */  sw         $t6, 0x6758($at)
/* B8DC 8000ACDC 3C01800A */  lui        $at, %hi(D_800A0BF8)
/* B8E0 8000ACE0 C4240BF8 */  lwc1       $f4, %lo(D_800A0BF8)($at)
/* B8E4 8000ACE4 3C01800B */  lui        $at, %hi(D_800AE4E4)
/* B8E8 8000ACE8 24180000 */  addiu      $t8, $zero, 0
/* B8EC 8000ACEC E424E4E4 */  swc1       $f4, %lo(D_800AE4E4)($at)
/* B8F0 8000ACF0 3C018006 */  lui        $at, %hi(D_80063834)
/* B8F4 8000ACF4 24190000 */  addiu      $t9, $zero, 0
/* B8F8 8000ACF8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B8FC 8000ACFC AC393834 */  sw         $t9, %lo(D_80063834)($at)
/* B900 8000AD00 AC383830 */  sw         $t8, 0x3830($at)
/* B904 8000AD04 AFBF0014 */  sw         $ra, 0x14($sp)
/* B908 8000AD08 3C018006 */  lui        $at, %hi(D_8006383C)
/* B90C 8000AD0C 24080000 */  addiu      $t0, $zero, 0
/* B910 8000AD10 24090000 */  addiu      $t1, $zero, 0
/* B914 8000AD14 AC29383C */  sw         $t1, %lo(D_8006383C)($at)
/* B918 8000AD18 0C01482C */  jal        osGetTime
/* B91C 8000AD1C AC283838 */   sw        $t0, 0x3838($at)
/* B920 8000AD20 00402025 */  or         $a0, $v0, $zero
/* B924 8000AD24 00602825 */  or         $a1, $v1, $zero
/* B928 8000AD28 24060000 */  addiu      $a2, $zero, 0
/* B92C 8000AD2C 0C01492E */  jal        __ll_mul
/* B930 8000AD30 24070040 */   addiu     $a3, $zero, 0x40
/* B934 8000AD34 00402025 */  or         $a0, $v0, $zero
/* B938 8000AD38 00602825 */  or         $a1, $v1, $zero
/* B93C 8000AD3C 24060000 */  addiu      $a2, $zero, 0
/* B940 8000AD40 0C0148EE */  jal        __ull_div
/* B944 8000AD44 24070BB8 */   addiu     $a3, $zero, 0xbb8
/* B948 8000AD48 3C018006 */  lui        $at, %hi(D_80063840)
/* B94C 8000AD4C 3C0A8006 */  lui        $t2, %hi(D_80063830)
/* B950 8000AD50 3C0B8006 */  lui        $t3, %hi(D_80063834)
/* B954 8000AD54 8D6B3834 */  lw         $t3, %lo(D_80063834)($t3)
/* B958 8000AD58 8D4A3830 */  lw         $t2, %lo(D_80063830)($t2)
/* B95C 8000AD5C AC223840 */  sw         $v0, %lo(D_80063840)($at)
/* B960 8000AD60 AC233844 */  sw         $v1, 0x3844($at)
/* B964 8000AD64 3C018006 */  lui        $at, %hi(D_8006384C)
/* B968 8000AD68 3C0C8006 */  lui        $t4, %hi(D_80063838)
/* B96C 8000AD6C 3C0D8006 */  lui        $t5, %hi(D_8006383C)
/* B970 8000AD70 8DAD383C */  lw         $t5, %lo(D_8006383C)($t5)
/* B974 8000AD74 8D8C3838 */  lw         $t4, %lo(D_80063838)($t4)
/* B978 8000AD78 AC2B384C */  sw         $t3, %lo(D_8006384C)($at)
/* B97C 8000AD7C AC2A3848 */  sw         $t2, 0x3848($at)
/* B980 8000AD80 3C01800B */  lui        $at, %hi(D_800B66EC)
/* B984 8000AD84 3C04800B */  lui        $a0, %hi(D_800B6700)
/* B988 8000AD88 24846700 */  addiu      $a0, $a0, %lo(D_800B6700)
/* B98C 8000AD8C 24050050 */  addiu      $a1, $zero, 0x50
/* B990 8000AD90 AC2D66EC */  sw         $t5, %lo(D_800B66EC)($at)
/* B994 8000AD94 0C014388 */  jal        _bzero
/* B998 8000AD98 AC2C66E8 */   sw        $t4, 0x66e8($at)
/* B99C 8000AD9C 0C01482C */  jal        osGetTime
/* B9A0 8000ADA0 00000000 */   nop
/* B9A4 8000ADA4 8FBF0014 */  lw         $ra, 0x14($sp)
/* B9A8 8000ADA8 3C01800B */  lui        $at, %hi(D_800B6760)
/* B9AC 8000ADAC AC226760 */  sw         $v0, %lo(D_800B6760)($at)
/* B9B0 8000ADB0 AC236764 */  sw         $v1, 0x6764($at)
/* B9B4 8000ADB4 03E00008 */  jr         $ra
/* B9B8 8000ADB8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000ADBC
/* B9BC 8000ADBC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* B9C0 8000ADC0 AFA40018 */  sw         $a0, 0x18($sp)
/* B9C4 8000ADC4 3C04800B */  lui        $a0, %hi(D_800B6750)
/* B9C8 8000ADC8 24846750 */  addiu      $a0, $a0, %lo(D_800B6750)
/* B9CC 8000ADCC 8C820000 */  lw         $v0, ($a0)
/* B9D0 8000ADD0 3C0F800B */  lui        $t7, %hi(D_800B6700)
/* B9D4 8000ADD4 25EF6700 */  addiu      $t7, $t7, %lo(D_800B6700)
/* B9D8 8000ADD8 000270C0 */  sll        $t6, $v0, 3
/* B9DC 8000ADDC 01CF1821 */  addu       $v1, $t6, $t7
/* B9E0 8000ADE0 8C6B0004 */  lw         $t3, 4($v1)
/* B9E4 8000ADE4 3C08800B */  lui        $t0, %hi(D_800B6758)
/* B9E8 8000ADE8 8C6A0000 */  lw         $t2, ($v1)
/* B9EC 8000ADEC 8FB80018 */  lw         $t8, 0x18($sp)
/* B9F0 8000ADF0 25086758 */  addiu      $t0, $t0, %lo(D_800B6758)
/* B9F4 8000ADF4 8D0F0004 */  lw         $t7, 4($t0)
/* B9F8 8000ADF8 00AB082B */  sltu       $at, $a1, $t3
/* B9FC 8000ADFC 00AB6823 */  subu       $t5, $a1, $t3
/* BA00 8000AE00 030A6023 */  subu       $t4, $t8, $t2
/* BA04 8000AE04 01816023 */  subu       $t4, $t4, $at
/* BA08 8000AE08 01AFC821 */  addu       $t9, $t5, $t7
/* BA0C 8000AE0C 8D0E0000 */  lw         $t6, ($t0)
/* BA10 8000AE10 032F082B */  sltu       $at, $t9, $t7
/* BA14 8000AE14 002CC021 */  addu       $t8, $at, $t4
/* BA18 8000AE18 8FAA0018 */  lw         $t2, 0x18($sp)
/* BA1C 8000AE1C 24490001 */  addiu      $t1, $v0, 1
/* BA20 8000AE20 2921000A */  slti       $at, $t1, 0xa
/* BA24 8000AE24 030EC021 */  addu       $t8, $t8, $t6
/* BA28 8000AE28 AFBF0014 */  sw         $ra, 0x14($sp)
/* BA2C 8000AE2C AFA5001C */  sw         $a1, 0x1c($sp)
/* BA30 8000AE30 AD180000 */  sw         $t8, ($t0)
/* BA34 8000AE34 AD190004 */  sw         $t9, 4($t0)
/* BA38 8000AE38 AC650004 */  sw         $a1, 4($v1)
/* BA3C 8000AE3C AC890000 */  sw         $t1, ($a0)
/* BA40 8000AE40 14200002 */  bnez       $at, .L8000AE4C
/* BA44 8000AE44 AC6A0000 */   sw        $t2, ($v1)
/* BA48 8000AE48 AC800000 */  sw         $zero, ($a0)
.L8000AE4C:
/* BA4C 8000AE4C 3C03800B */  lui        $v1, %hi(D_800B6754)
/* BA50 8000AE50 24636754 */  addiu      $v1, $v1, %lo(D_800B6754)
/* BA54 8000AE54 8C620000 */  lw         $v0, ($v1)
/* BA58 8000AE58 24060000 */  addiu      $a2, $zero, 0
/* BA5C 8000AE5C 24070040 */  addiu      $a3, $zero, 0x40
/* BA60 8000AE60 2841000A */  slti       $at, $v0, 0xa
/* BA64 8000AE64 10200002 */  beqz       $at, .L8000AE70
/* BA68 8000AE68 244D0001 */   addiu     $t5, $v0, 1
/* BA6C 8000AE6C AC6D0000 */  sw         $t5, ($v1)
.L8000AE70:
/* BA70 8000AE70 8D040000 */  lw         $a0, ($t0)
/* BA74 8000AE74 0C01492E */  jal        __ll_mul
/* BA78 8000AE78 8D050004 */   lw        $a1, 4($t0)
/* BA7C 8000AE7C 00402025 */  or         $a0, $v0, $zero
/* BA80 8000AE80 00602825 */  or         $a1, $v1, $zero
/* BA84 8000AE84 24060000 */  addiu      $a2, $zero, 0
/* BA88 8000AE88 0C0148EE */  jal        __ull_div
/* BA8C 8000AE8C 24070BB8 */   addiu     $a3, $zero, 0xbb8
/* BA90 8000AE90 00402025 */  or         $a0, $v0, $zero
/* BA94 8000AE94 0C0148C6 */  jal        __ull_to_f
/* BA98 8000AE98 00602825 */   or        $a1, $v1, $zero
/* BA9C 8000AE9C 3C01800A */  lui        $at, %hi(D_800A0BFC)
/* BAA0 8000AEA0 C42C0BFC */  lwc1       $f12, %lo(D_800A0BFC)($at)
/* BAA4 8000AEA4 3C01800A */  lui        $at, %hi(D_800A0C00)
/* BAA8 8000AEA8 C4240C00 */  lwc1       $f4, %lo(D_800A0C00)($at)
/* BAAC 8000AEAC 3C0E800B */  lui        $t6, %hi(D_800B6754)
/* BAB0 8000AEB0 8DCE6754 */  lw         $t6, %lo(D_800B6754)($t6)
/* BAB4 8000AEB4 46040183 */  div.s      $f6, $f0, $f4
/* BAB8 8000AEB8 8FBF0014 */  lw         $ra, 0x14($sp)
/* BABC 8000AEBC 448E4000 */  mtc1       $t6, $f8
/* BAC0 8000AEC0 3C01800A */  lui        $at, 0x800a
/* BAC4 8000AEC4 27BD0018 */  addiu      $sp, $sp, 0x18
/* BAC8 8000AEC8 468042A0 */  cvt.s.w    $f10, $f8
/* BACC 8000AECC 460A3083 */  div.s      $f2, $f6, $f10
/* BAD0 8000AED0 460C103C */  c.lt.s     $f2, $f12
/* BAD4 8000AED4 00000000 */  nop
/* BAD8 8000AED8 45000003 */  bc1f       .L8000AEE8
/* BADC 8000AEDC 00000000 */   nop
/* BAE0 8000AEE0 10000007 */  b          .L8000AF00
/* BAE4 8000AEE4 46006086 */   mov.s     $f2, $f12
.L8000AEE8:
/* BAE8 8000AEE8 C4200C04 */  lwc1       $f0, 0xc04($at)
/* BAEC 8000AEEC 4602003C */  c.lt.s     $f0, $f2
/* BAF0 8000AEF0 00000000 */  nop
/* BAF4 8000AEF4 45000002 */  bc1f       .L8000AF00
/* BAF8 8000AEF8 00000000 */   nop
/* BAFC 8000AEFC 46000086 */  mov.s      $f2, $f0
.L8000AF00:
/* BB00 8000AF00 03E00008 */  jr         $ra
/* BB04 8000AF04 46001006 */   mov.s     $f0, $f2

glabel func_8000AF08
/* BB08 8000AF08 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* BB0C 8000AF0C AFBF0014 */  sw         $ra, 0x14($sp)
/* BB10 8000AF10 0C01482C */  jal        osGetTime
/* BB14 8000AF14 00000000 */   nop
/* BB18 8000AF18 3C07800B */  lui        $a3, %hi(D_800B6760)
/* BB1C 8000AF1C 24E76760 */  addiu      $a3, $a3, %lo(D_800B6760)
/* BB20 8000AF20 8CEE0000 */  lw         $t6, ($a3)
/* BB24 8000AF24 8CEF0004 */  lw         $t7, 4($a3)
/* BB28 8000AF28 3C06800B */  lui        $a2, %hi(D_800AE4E8)
/* BB2C 8000AF2C 004EC023 */  subu       $t8, $v0, $t6
/* BB30 8000AF30 006F082B */  sltu       $at, $v1, $t7
/* BB34 8000AF34 24C6E4E8 */  addiu      $a2, $a2, %lo(D_800AE4E8)
/* BB38 8000AF38 03012023 */  subu       $a0, $t8, $at
/* BB3C 8000AF3C 006F2823 */  subu       $a1, $v1, $t7
/* BB40 8000AF40 AFA20030 */  sw         $v0, 0x30($sp)
/* BB44 8000AF44 AFA30034 */  sw         $v1, 0x34($sp)
/* BB48 8000AF48 ACC50004 */  sw         $a1, 4($a2)
/* BB4C 8000AF4C ACC40000 */  sw         $a0, ($a2)
/* BB50 8000AF50 ACE30004 */  sw         $v1, 4($a3)
/* BB54 8000AF54 0C002B6F */  jal        func_8000ADBC
/* BB58 8000AF58 ACE20000 */   sw        $v0, ($a3)
/* BB5C 8000AF5C 3C02800B */  lui        $v0, %hi(D_800AE4E4)
/* BB60 8000AF60 2442E4E4 */  addiu      $v0, $v0, %lo(D_800AE4E4)
/* BB64 8000AF64 3C03800B */  lui        $v1, %hi(D_800B6768)
/* BB68 8000AF68 24636768 */  addiu      $v1, $v1, %lo(D_800B6768)
/* BB6C 8000AF6C E4400000 */  swc1       $f0, ($v0)
/* BB70 8000AF70 C4460000 */  lwc1       $f6, ($v0)
/* BB74 8000AF74 C4640000 */  lwc1       $f4, ($v1)
/* BB78 8000AF78 8FA40030 */  lw         $a0, 0x30($sp)
/* BB7C 8000AF7C 8FA50034 */  lw         $a1, 0x34($sp)
/* BB80 8000AF80 46062200 */  add.s      $f8, $f4, $f6
/* BB84 8000AF84 24060000 */  addiu      $a2, $zero, 0
/* BB88 8000AF88 24070040 */  addiu      $a3, $zero, 0x40
/* BB8C 8000AF8C 0C01492E */  jal        __ll_mul
/* BB90 8000AF90 E4680000 */   swc1      $f8, ($v1)
/* BB94 8000AF94 00402025 */  or         $a0, $v0, $zero
/* BB98 8000AF98 00602825 */  or         $a1, $v1, $zero
/* BB9C 8000AF9C 24060000 */  addiu      $a2, $zero, 0
/* BBA0 8000AFA0 0C0148EE */  jal        __ull_div
/* BBA4 8000AFA4 24070BB8 */   addiu     $a3, $zero, 0xbb8
/* BBA8 8000AFA8 3C098006 */  lui        $t1, %hi(D_80063844)
/* BBAC 8000AFAC 8D293844 */  lw         $t1, %lo(D_80063844)($t1)
/* BBB0 8000AFB0 3C088006 */  lui        $t0, %hi(D_80063840)
/* BBB4 8000AFB4 8D083840 */  lw         $t0, %lo(D_80063840)($t0)
/* BBB8 8000AFB8 0069082B */  sltu       $at, $v1, $t1
/* BBBC 8000AFBC AFA20038 */  sw         $v0, 0x38($sp)
/* BBC0 8000AFC0 00485023 */  subu       $t2, $v0, $t0
/* BBC4 8000AFC4 AFA3003C */  sw         $v1, 0x3c($sp)
/* BBC8 8000AFC8 01415023 */  subu       $t2, $t2, $at
/* BBCC 8000AFCC AFA9001C */  sw         $t1, 0x1c($sp)
/* BBD0 8000AFD0 00695823 */  subu       $t3, $v1, $t1
/* BBD4 8000AFD4 AFA80018 */  sw         $t0, 0x18($sp)
/* BBD8 8000AFD8 15400003 */  bnez       $t2, .L8000AFE8
/* BBDC 8000AFDC 2D6103E9 */   sltiu     $at, $t3, 0x3e9
/* BBE0 8000AFE0 1420001A */  bnez       $at, .L8000B04C
/* BBE4 8000AFE4 00000000 */   nop
.L8000AFE8:
/* BBE8 8000AFE8 8FAC0038 */  lw         $t4, 0x38($sp)
/* BBEC 8000AFEC 8FAD003C */  lw         $t5, 0x3c($sp)
/* BBF0 8000AFF0 24060000 */  addiu      $a2, $zero, 0
/* BBF4 8000AFF4 01882023 */  subu       $a0, $t4, $t0
/* BBF8 8000AFF8 01A9082B */  sltu       $at, $t5, $t1
/* BBFC 8000AFFC 00812023 */  subu       $a0, $a0, $at
/* BC00 8000B000 240703E8 */  addiu      $a3, $zero, 0x3e8
/* BC04 8000B004 0C0148EE */  jal        __ull_div
/* BC08 8000B008 01A92823 */   subu      $a1, $t5, $t1
/* BC0C 8000B00C 3C0F8006 */  lui        $t7, %hi(D_80063834)
/* BC10 8000B010 8DEF3834 */  lw         $t7, %lo(D_80063834)($t7)
/* BC14 8000B014 3C0E8006 */  lui        $t6, %hi(D_80063830)
/* BC18 8000B018 8DCE3830 */  lw         $t6, %lo(D_80063830)($t6)
/* BC1C 8000B01C 006FC821 */  addu       $t9, $v1, $t7
/* BC20 8000B020 032F082B */  sltu       $at, $t9, $t7
/* BC24 8000B024 0022C021 */  addu       $t8, $at, $v0
/* BC28 8000B028 3C018006 */  lui        $at, %hi(D_80063830)
/* BC2C 8000B02C 030EC021 */  addu       $t8, $t8, $t6
/* BC30 8000B030 8FAA0038 */  lw         $t2, 0x38($sp)
/* BC34 8000B034 8FAB003C */  lw         $t3, 0x3c($sp)
/* BC38 8000B038 AC383830 */  sw         $t8, %lo(D_80063830)($at)
/* BC3C 8000B03C AC393834 */  sw         $t9, 0x3834($at)
/* BC40 8000B040 3C018006 */  lui        $at, %hi(D_80063840)
/* BC44 8000B044 AC2A3840 */  sw         $t2, %lo(D_80063840)($at)
/* BC48 8000B048 AC2B3844 */  sw         $t3, 0x3844($at)
.L8000B04C:
/* BC4C 8000B04C 3C0D8006 */  lui        $t5, %hi(D_80063834)
/* BC50 8000B050 3C098006 */  lui        $t1, %hi(D_8006384C)
/* BC54 8000B054 8D29384C */  lw         $t1, %lo(D_8006384C)($t1)
/* BC58 8000B058 8DAD3834 */  lw         $t5, %lo(D_80063834)($t5)
/* BC5C 8000B05C 3C0C8006 */  lui        $t4, %hi(D_80063830)
/* BC60 8000B060 3C088006 */  lui        $t0, %hi(D_80063848)
/* BC64 8000B064 8D083848 */  lw         $t0, %lo(D_80063848)($t0)
/* BC68 8000B068 8D8C3830 */  lw         $t4, %lo(D_80063830)($t4)
/* BC6C 8000B06C 01A9082B */  sltu       $at, $t5, $t1
/* BC70 8000B070 01A97823 */  subu       $t7, $t5, $t1
/* BC74 8000B074 01887023 */  subu       $t6, $t4, $t0
/* BC78 8000B078 01C17023 */  subu       $t6, $t6, $at
/* BC7C 8000B07C AFAE0018 */  sw         $t6, 0x18($sp)
/* BC80 8000B080 AFAF001C */  sw         $t7, 0x1c($sp)
/* BC84 8000B084 01E02825 */  or         $a1, $t7, $zero
/* BC88 8000B088 15C00002 */  bnez       $t6, .L8000B094
/* BC8C 8000B08C 2DE103E9 */   sltiu     $at, $t7, 0x3e9
/* BC90 8000B090 14200016 */  bnez       $at, .L8000B0EC
.L8000B094:
/* BC94 8000B094 01C02025 */   or        $a0, $t6, $zero
/* BC98 8000B098 24060000 */  addiu      $a2, $zero, 0
/* BC9C 8000B09C 0C0148EE */  jal        __ull_div
/* BCA0 8000B0A0 240703E8 */   addiu     $a3, $zero, 0x3e8
/* BCA4 8000B0A4 3C198006 */  lui        $t9, %hi(D_8006383C)
/* BCA8 8000B0A8 8F39383C */  lw         $t9, %lo(D_8006383C)($t9)
/* BCAC 8000B0AC 3C188006 */  lui        $t8, %hi(D_80063838)
/* BCB0 8000B0B0 8F183838 */  lw         $t8, %lo(D_80063838)($t8)
/* BCB4 8000B0B4 00795821 */  addu       $t3, $v1, $t9
/* BCB8 8000B0B8 0179082B */  sltu       $at, $t3, $t9
/* BCBC 8000B0BC 00225021 */  addu       $t2, $at, $v0
/* BCC0 8000B0C0 3C018006 */  lui        $at, 0x8006
/* BCC4 8000B0C4 3C0C8006 */  lui        $t4, %hi(D_80063830)
/* BCC8 8000B0C8 3C0D8006 */  lui        $t5, %hi(D_80063834)
/* BCCC 8000B0CC 01585021 */  addu       $t2, $t2, $t8
/* BCD0 8000B0D0 8DAD3834 */  lw         $t5, %lo(D_80063834)($t5)
/* BCD4 8000B0D4 8D8C3830 */  lw         $t4, %lo(D_80063830)($t4)
/* BCD8 8000B0D8 AC2A3838 */  sw         $t2, 0x3838($at)
/* BCDC 8000B0DC AC2B383C */  sw         $t3, 0x383c($at)
/* BCE0 8000B0E0 3C018006 */  lui        $at, %hi(D_8006384C)
/* BCE4 8000B0E4 AC2D384C */  sw         $t5, %lo(D_8006384C)($at)
/* BCE8 8000B0E8 AC2C3848 */  sw         $t4, 0x3848($at)
.L8000B0EC:
/* BCEC 8000B0EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* BCF0 8000B0F0 27BD0040 */  addiu      $sp, $sp, 0x40
/* BCF4 8000B0F4 03E00008 */  jr         $ra
/* BCF8 8000B0F8 00000000 */   nop

glabel func_8000B0FC
/* BCFC 8000B0FC 3C028006 */  lui        $v0, %hi(D_80063830)
/* BD00 8000B100 3C038006 */  lui        $v1, %hi(D_80063834)
/* BD04 8000B104 8C633834 */  lw         $v1, %lo(D_80063834)($v1)
/* BD08 8000B108 03E00008 */  jr         $ra
/* BD0C 8000B10C 8C423830 */   lw        $v0, %lo(D_80063830)($v0)

glabel func_8000B110
/* BD10 8000B110 3C028006 */  lui        $v0, %hi(D_80063838)
/* BD14 8000B114 3C038006 */  lui        $v1, %hi(D_8006383C)
/* BD18 8000B118 8C63383C */  lw         $v1, %lo(D_8006383C)($v1)
/* BD1C 8000B11C 03E00008 */  jr         $ra
/* BD20 8000B120 8C423838 */   lw        $v0, %lo(D_80063838)($v0)

glabel func_8000B124
/* BD24 8000B124 44802000 */  mtc1       $zero, $f4
/* BD28 8000B128 3C01800B */  lui        $at, %hi(D_800B6768)
/* BD2C 8000B12C 03E00008 */  jr         $ra
/* BD30 8000B130 E4246768 */   swc1      $f4, %lo(D_800B6768)($at)

glabel func_8000B134
/* BD34 8000B134 3C01800B */  lui        $at, %hi(D_800B6768)
/* BD38 8000B138 C4246768 */  lwc1       $f4, %lo(D_800B6768)($at)
/* BD3C 8000B13C 3C01447A */  lui        $at, 0x447a
/* BD40 8000B140 44813000 */  mtc1       $at, $f6
/* BD44 8000B144 240105DC */  addiu      $at, $zero, 0x5dc
/* BD48 8000B148 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BD4C 8000B14C 46062202 */  mul.s      $f8, $f4, $f6
/* BD50 8000B150 AFBF0014 */  sw         $ra, 0x14($sp)
/* BD54 8000B154 4600428D */  trunc.w.s  $f10, $f8
/* BD58 8000B158 440F5000 */  mfc1       $t7, $f10
/* BD5C 8000B15C 00000000 */  nop
/* BD60 8000B160 01E1001A */  div        $zero, $t7, $at
/* BD64 8000B164 0000C010 */  mfhi       $t8
/* BD68 8000B168 44988000 */  mtc1       $t8, $f16
/* BD6C 8000B16C 3C01800A */  lui        $at, %hi(D_800A0C08)
/* BD70 8000B170 C4240C08 */  lwc1       $f4, %lo(D_800A0C08)($at)
/* BD74 8000B174 468084A0 */  cvt.s.w    $f18, $f16
/* BD78 8000B178 46049302 */  mul.s      $f12, $f18, $f4
/* BD7C 8000B17C 0C00F0F7 */  jal        func_8003C3DC
/* BD80 8000B180 00000000 */   nop
/* BD84 8000B184 3C0142FE */  lui        $at, 0x42fe
/* BD88 8000B188 44813000 */  mtc1       $at, $f6
/* BD8C 8000B18C 3C014300 */  lui        $at, 0x4300
/* BD90 8000B190 44815000 */  mtc1       $at, $f10
/* BD94 8000B194 46060202 */  mul.s      $f8, $f0, $f6
/* BD98 8000B198 8FBF0014 */  lw         $ra, 0x14($sp)
/* BD9C 8000B19C 27BD0018 */  addiu      $sp, $sp, 0x18
/* BDA0 8000B1A0 460A4400 */  add.s      $f16, $f8, $f10
/* BDA4 8000B1A4 4600848D */  trunc.w.s  $f18, $f16
/* BDA8 8000B1A8 44029000 */  mfc1       $v0, $f18
/* BDAC 8000B1AC 00000000 */  nop
/* BDB0 8000B1B0 04410003 */  bgez       $v0, .L8000B1C0
/* BDB4 8000B1B4 00401825 */   or        $v1, $v0, $zero
/* BDB8 8000B1B8 10000005 */  b          .L8000B1D0
/* BDBC 8000B1BC 00001825 */   or        $v1, $zero, $zero
.L8000B1C0:
/* BDC0 8000B1C0 28410100 */  slti       $at, $v0, 0x100
/* BDC4 8000B1C4 14200002 */  bnez       $at, .L8000B1D0
/* BDC8 8000B1C8 00000000 */   nop
/* BDCC 8000B1CC 240300FF */  addiu      $v1, $zero, 0xff
.L8000B1D0:
/* BDD0 8000B1D0 03E00008 */  jr         $ra
/* BDD4 8000B1D4 306200FF */   andi      $v0, $v1, 0xff

glabel func_8000B1D8
/* BDD8 8000B1D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BDDC 8000B1DC 3C01800B */  lui        $at, %hi(D_800B66F0)
/* BDE0 8000B1E0 AFBF0014 */  sw         $ra, 0x14($sp)
/* BDE4 8000B1E4 AC2466F0 */  sw         $a0, %lo(D_800B66F0)($at)
/* BDE8 8000B1E8 0C0011F9 */  jal        func_800047E4
/* BDEC 8000B1EC 00002025 */   or        $a0, $zero, $zero
/* BDF0 8000B1F0 0C001204 */  jal        func_80004810
/* BDF4 8000B1F4 00002025 */   or        $a0, $zero, $zero
/* BDF8 8000B1F8 3C018007 */  lui        $at, %hi(D_800722D0)
/* BDFC 8000B1FC AC2022D0 */  sw         $zero, %lo(D_800722D0)($at)
/* BE00 8000B200 3C018007 */  lui        $at, %hi(D_800722D4)
/* BE04 8000B204 AC2022D4 */  sw         $zero, %lo(D_800722D4)($at)
/* BE08 8000B208 3C01800B */  lui        $at, %hi(D_800B676C)
/* BE0C 8000B20C 240E0001 */  addiu      $t6, $zero, 1
/* BE10 8000B210 AC2E676C */  sw         $t6, %lo(D_800B676C)($at)
/* BE14 8000B214 3C01800B */  lui        $at, %hi(D_800B66F8)
/* BE18 8000B218 AC2066F8 */  sw         $zero, %lo(D_800B66F8)($at)
/* BE1C 8000B21C 0C001283 */  jal        func_80004A0C
/* BE20 8000B220 00002025 */   or        $a0, $zero, $zero
/* BE24 8000B224 8FBF0014 */  lw         $ra, 0x14($sp)
/* BE28 8000B228 27BD0018 */  addiu      $sp, $sp, 0x18
/* BE2C 8000B22C 03E00008 */  jr         $ra
/* BE30 8000B230 00000000 */   nop

glabel func_8000B234
/* BE34 8000B234 03E00008 */  jr         $ra
/* BE38 8000B238 AFA40000 */   sw        $a0, ($sp)

glabel func_8000B23C
/* BE3C 8000B23C 3C0F8006 */  lui        $t7, %hi(D_8006383C)
/* BE40 8000B240 3C19800B */  lui        $t9, %hi(D_800B66EC)
/* BE44 8000B244 8F3966EC */  lw         $t9, %lo(D_800B66EC)($t9)
/* BE48 8000B248 8DEF383C */  lw         $t7, %lo(D_8006383C)($t7)
/* BE4C 8000B24C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BE50 8000B250 AFBF0014 */  sw         $ra, 0x14($sp)
/* BE54 8000B254 24040004 */  addiu      $a0, $zero, 4
/* BE58 8000B258 0C00CB1C */  jal        func_80032C70
/* BE5C 8000B25C 01F92823 */   subu      $a1, $t7, $t9
/* BE60 8000B260 8FBF0014 */  lw         $ra, 0x14($sp)
/* BE64 8000B264 3C0A8006 */  lui        $t2, %hi(D_80063838)
/* BE68 8000B268 3C0B8006 */  lui        $t3, %hi(D_8006383C)
/* BE6C 8000B26C 8D6B383C */  lw         $t3, %lo(D_8006383C)($t3)
/* BE70 8000B270 8D4A3838 */  lw         $t2, %lo(D_80063838)($t2)
/* BE74 8000B274 3C01800B */  lui        $at, %hi(D_800B66EC)
/* BE78 8000B278 27BD0018 */  addiu      $sp, $sp, 0x18
/* BE7C 8000B27C AC2B66EC */  sw         $t3, %lo(D_800B66EC)($at)
/* BE80 8000B280 03E00008 */  jr         $ra
/* BE84 8000B284 AC2A66E8 */   sw        $t2, 0x66e8($at)

glabel func_8000B288
/* BE88 8000B288 3C0E8007 */  lui        $t6, %hi(D_800760A8)
/* BE8C 8000B28C 8DCE60A8 */  lw         $t6, %lo(D_800760A8)($t6)
/* BE90 8000B290 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BE94 8000B294 AFBF0014 */  sw         $ra, 0x14($sp)
/* BE98 8000B298 8DC20054 */  lw         $v0, 0x54($t6)
/* BE9C 8000B29C 24040005 */  addiu      $a0, $zero, 5
/* BEA0 8000B2A0 8C4F01B8 */  lw         $t7, 0x1b8($v0)
/* BEA4 8000B2A4 C5E40010 */  lwc1       $f4, 0x10($t7)
/* BEA8 8000B2A8 4600218D */  trunc.w.s  $f6, $f4
/* BEAC 8000B2AC 44053000 */  mfc1       $a1, $f6
/* BEB0 8000B2B0 0C00CB1C */  jal        func_80032C70
/* BEB4 8000B2B4 00000000 */   nop
/* BEB8 8000B2B8 8FBF0014 */  lw         $ra, 0x14($sp)
/* BEBC 8000B2BC 27BD0018 */  addiu      $sp, $sp, 0x18
/* BEC0 8000B2C0 03E00008 */  jr         $ra
/* BEC4 8000B2C4 00000000 */   nop

glabel func_8000B2C8
/* BEC8 8000B2C8 3C01800B */  lui        $at, %hi(D_800AE504)
/* BECC 8000B2CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* BED0 8000B2D0 AC24E504 */  sw         $a0, %lo(D_800AE504)($at)
/* BED4 8000B2D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* BED8 8000B2D8 3C01800B */  lui        $at, %hi(D_800B6770)
/* BEDC 8000B2DC 240E0001 */  addiu      $t6, $zero, 1
/* BEE0 8000B2E0 0C002C3F */  jal        func_8000B0FC
/* BEE4 8000B2E4 AC2E6770 */   sw        $t6, %lo(D_800B6770)($at)
/* BEE8 8000B2E8 3C01800B */  lui        $at, %hi(D_800AE508)
/* BEEC 8000B2EC AC23E508 */  sw         $v1, %lo(D_800AE508)($at)
/* BEF0 8000B2F0 3C01800B */  lui        $at, %hi(D_800B66F8)
/* BEF4 8000B2F4 0C002C8F */  jal        func_8000B23C
/* BEF8 8000B2F8 AC2066F8 */   sw        $zero, %lo(D_800B66F8)($at)
/* BEFC 8000B2FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* BF00 8000B300 27BD0018 */  addiu      $sp, $sp, 0x18
/* BF04 8000B304 03E00008 */  jr         $ra
/* BF08 8000B308 00000000 */   nop

glabel func_8000B30C
/* BF0C 8000B30C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* BF10 8000B310 AFBF0024 */  sw         $ra, 0x24($sp)
/* BF14 8000B314 0C0024FF */  jal        func_800093FC
/* BF18 8000B318 AFB00020 */   sw        $s0, 0x20($sp)
/* BF1C 8000B31C 3C0E800B */  lui        $t6, %hi(D_800AE504)
/* BF20 8000B320 8DCEE504 */  lw         $t6, %lo(D_800AE504)($t6)
/* BF24 8000B324 2DC10013 */  sltiu      $at, $t6, 0x13
/* BF28 8000B328 102001A9 */  beqz       $at, .L8000B9D0
/* BF2C 8000B32C 000E7080 */   sll       $t6, $t6, 2
/* BF30 8000B330 3C01800A */  lui        $at, %hi(D_800A0C0C)
/* BF34 8000B334 002E0821 */  addu       $at, $at, $t6
/* BF38 8000B338 8C2E0C0C */  lw         $t6, %lo(D_800A0C0C)($at)
/* BF3C 8000B33C 01C00008 */  jr         $t6
/* BF40 8000B340 00000000 */   nop
/* BF44 8000B344 3C0F800A */  lui        $t7, %hi(D_8009B580)
/* BF48 8000B348 8DEFB580 */  lw         $t7, %lo(D_8009B580)($t7)
/* BF4C 8000B34C 2401FFFF */  addiu      $at, $zero, -1
/* BF50 8000B350 00008025 */  or         $s0, $zero, $zero
/* BF54 8000B354 11E10007 */  beq        $t7, $at, .L8000B374
/* BF58 8000B358 00000000 */   nop
/* BF5C 8000B35C 0C00DABD */  jal        func_80036AF4
/* BF60 8000B360 00000000 */   nop
/* BF64 8000B364 0C002CB2 */  jal        func_8000B2C8
/* BF68 8000B368 2404000D */   addiu     $a0, $zero, 0xd
/* BF6C 8000B36C 10000198 */  b          .L8000B9D0
/* BF70 8000B370 00000000 */   nop
.L8000B374:
/* BF74 8000B374 5E000004 */  bgtzl      $s0, .L8000B388
/* BF78 8000B378 26100001 */   addiu     $s0, $s0, 1
/* BF7C 8000B37C 0C0448D1 */  jal        func_80112344
/* BF80 8000B380 02002025 */   or        $a0, $s0, $zero
/* BF84 8000B384 26100001 */  addiu      $s0, $s0, 1
.L8000B388:
/* BF88 8000B388 24010003 */  addiu      $at, $zero, 3
/* BF8C 8000B38C 1601FFF9 */  bne        $s0, $at, .L8000B374
/* BF90 8000B390 00000000 */   nop
/* BF94 8000B394 3C02800B */  lui        $v0, %hi(D_800AE504)
/* BF98 8000B398 8C42E504 */  lw         $v0, %lo(D_800AE504)($v0)
/* BF9C 8000B39C 24010003 */  addiu      $at, $zero, 3
/* BFA0 8000B3A0 10400003 */  beqz       $v0, .L8000B3B0
/* BFA4 8000B3A4 00000000 */   nop
/* BFA8 8000B3A8 14410189 */  bne        $v0, $at, .L8000B9D0
/* BFAC 8000B3AC 00000000 */   nop
.L8000B3B0:
/* BFB0 8000B3B0 0C044BC4 */  jal        func_80112F10
/* BFB4 8000B3B4 00000000 */   nop
/* BFB8 8000B3B8 0C0024D1 */  jal        func_80009344
/* BFBC 8000B3BC 00002025 */   or        $a0, $zero, $zero
/* BFC0 8000B3C0 10000183 */  b          .L8000B9D0
/* BFC4 8000B3C4 00000000 */   nop
/* BFC8 8000B3C8 0C00D5F1 */  jal        func_800357C4
/* BFCC 8000B3CC 00000000 */   nop
/* BFD0 8000B3D0 1000017F */  b          .L8000B9D0
/* BFD4 8000B3D4 00000000 */   nop
/* BFD8 8000B3D8 0C00A2E1 */  jal        func_80028B84
/* BFDC 8000B3DC 00000000 */   nop
/* BFE0 8000B3E0 1000017B */  b          .L8000B9D0
/* BFE4 8000B3E4 00000000 */   nop
/* BFE8 8000B3E8 0C00A735 */  jal        func_80029CD4
/* BFEC 8000B3EC 00000000 */   nop
/* BFF0 8000B3F0 10000177 */  b          .L8000B9D0
/* BFF4 8000B3F4 00000000 */   nop
/* BFF8 8000B3F8 3C18800B */  lui        $t8, %hi(D_800B6770)
/* BFFC 8000B3FC 8F186770 */  lw         $t8, %lo(D_800B6770)($t8)
/* C000 8000B400 00002025 */  or         $a0, $zero, $zero
/* C004 8000B404 00002825 */  or         $a1, $zero, $zero
/* C008 8000B408 1300000C */  beqz       $t8, .L8000B43C
/* C00C 8000B40C 3C01800B */   lui       $at, 0x800b
/* C010 8000B410 3C01800A */  lui        $at, %hi(D_800A0C58)
/* C014 8000B414 C4240C58 */  lwc1       $f4, %lo(D_800A0C58)($at)
/* C018 8000B418 00003025 */  or         $a2, $zero, $zero
/* C01C 8000B41C 240700FF */  addiu      $a3, $zero, 0xff
/* C020 8000B420 0C00059E */  jal        func_80001678
/* C024 8000B424 E7A40010 */   swc1      $f4, 0x10($sp)
/* C028 8000B428 0C002CA2 */  jal        func_8000B288
/* C02C 8000B42C 00000000 */   nop
/* C030 8000B430 3C01800B */  lui        $at, %hi(D_800B6770)
/* C034 8000B434 10000009 */  b          .L8000B45C
/* C038 8000B438 AC206770 */   sw        $zero, %lo(D_800B6770)($at)
.L8000B43C:
/* C03C 8000B43C 44803000 */  mtc1       $zero, $f6
/* C040 8000B440 C428BDCC */  lwc1       $f8, -0x4234($at)
/* C044 8000B444 46083032 */  c.eq.s     $f6, $f8
/* C048 8000B448 00000000 */  nop
/* C04C 8000B44C 45000003 */  bc1f       .L8000B45C
/* C050 8000B450 00000000 */   nop
/* C054 8000B454 0C002C76 */  jal        func_8000B1D8
/* C058 8000B458 00002025 */   or        $a0, $zero, $zero
.L8000B45C:
/* C05C 8000B45C 0C0024D1 */  jal        func_80009344
/* C060 8000B460 00002025 */   or        $a0, $zero, $zero
/* C064 8000B464 1000015A */  b          .L8000B9D0
/* C068 8000B468 00000000 */   nop
/* C06C 8000B46C 3C19800B */  lui        $t9, %hi(D_800B6770)
/* C070 8000B470 8F396770 */  lw         $t9, %lo(D_800B6770)($t9)
/* C074 8000B474 24080001 */  addiu      $t0, $zero, 1
/* C078 8000B478 00002025 */  or         $a0, $zero, $zero
/* C07C 8000B47C 1320000F */  beqz       $t9, .L8000B4BC
/* C080 8000B480 3C01800B */   lui       $at, 0x800b
/* C084 8000B484 3C01800F */  lui        $at, %hi(D_800F0B74)
/* C088 8000B488 AC280B74 */  sw         $t0, %lo(D_800F0B74)($at)
/* C08C 8000B48C 3C01800A */  lui        $at, %hi(D_800A0C5C)
/* C090 8000B490 C42A0C5C */  lwc1       $f10, %lo(D_800A0C5C)($at)
/* C094 8000B494 00002825 */  or         $a1, $zero, $zero
/* C098 8000B498 00003025 */  or         $a2, $zero, $zero
/* C09C 8000B49C 240700FF */  addiu      $a3, $zero, 0xff
/* C0A0 8000B4A0 0C00059E */  jal        func_80001678
/* C0A4 8000B4A4 E7AA0010 */   swc1      $f10, 0x10($sp)
/* C0A8 8000B4A8 0C002CA2 */  jal        func_8000B288
/* C0AC 8000B4AC 00000000 */   nop
/* C0B0 8000B4B0 3C01800B */  lui        $at, %hi(D_800B6770)
/* C0B4 8000B4B4 10000009 */  b          .L8000B4DC
/* C0B8 8000B4B8 AC206770 */   sw        $zero, %lo(D_800B6770)($at)
.L8000B4BC:
/* C0BC 8000B4BC 44808000 */  mtc1       $zero, $f16
/* C0C0 8000B4C0 C432BDCC */  lwc1       $f18, -0x4234($at)
/* C0C4 8000B4C4 46128032 */  c.eq.s     $f16, $f18
/* C0C8 8000B4C8 00000000 */  nop
/* C0CC 8000B4CC 45000003 */  bc1f       .L8000B4DC
/* C0D0 8000B4D0 00000000 */   nop
/* C0D4 8000B4D4 0C002CB2 */  jal        func_8000B2C8
/* C0D8 8000B4D8 24040005 */   addiu     $a0, $zero, 5
.L8000B4DC:
/* C0DC 8000B4DC 0C0024D1 */  jal        func_80009344
/* C0E0 8000B4E0 00002025 */   or        $a0, $zero, $zero
/* C0E4 8000B4E4 1000013A */  b          .L8000B9D0
/* C0E8 8000B4E8 00000000 */   nop
/* C0EC 8000B4EC 3C09800B */  lui        $t1, %hi(D_800B6770)
/* C0F0 8000B4F0 8D296770 */  lw         $t1, %lo(D_800B6770)($t1)
/* C0F4 8000B4F4 24040003 */  addiu      $a0, $zero, 3
/* C0F8 8000B4F8 3C01800B */  lui        $at, 0x800b
/* C0FC 8000B4FC 51200015 */  beql       $t1, $zero, .L8000B554
/* C100 8000B500 44803000 */   mtc1      $zero, $f6
/* C104 8000B504 3C01800A */  lui        $at, %hi(D_800A0C60)
/* C108 8000B508 8C260C60 */  lw         $a2, %lo(D_800A0C60)($at)
/* C10C 8000B50C 0C007F04 */  jal        func_8001FC10
/* C110 8000B510 8C270C64 */   lw        $a3, 0xc64($at)
/* C114 8000B514 3C01800A */  lui        $at, %hi(D_800A0C68)
/* C118 8000B518 C4240C68 */  lwc1       $f4, %lo(D_800A0C68)($at)
/* C11C 8000B51C 00002025 */  or         $a0, $zero, $zero
/* C120 8000B520 00002825 */  or         $a1, $zero, $zero
/* C124 8000B524 00003025 */  or         $a2, $zero, $zero
/* C128 8000B528 240700FF */  addiu      $a3, $zero, 0xff
/* C12C 8000B52C 0C00059E */  jal        func_80001678
/* C130 8000B530 E7A40010 */   swc1      $f4, 0x10($sp)
/* C134 8000B534 0C002CA2 */  jal        func_8000B288
/* C138 8000B538 00000000 */   nop
/* C13C 8000B53C 0C001283 */  jal        func_80004A0C
/* C140 8000B540 00002025 */   or        $a0, $zero, $zero
/* C144 8000B544 3C01800B */  lui        $at, %hi(D_800B6770)
/* C148 8000B548 1000000D */  b          .L8000B580
/* C14C 8000B54C AC206770 */   sw        $zero, %lo(D_800B6770)($at)
/* C150 8000B550 44803000 */  mtc1       $zero, $f6
.L8000B554:
/* C154 8000B554 C428BDCC */  lwc1       $f8, -0x4234($at)
/* C158 8000B558 24040003 */  addiu      $a0, $zero, 3
/* C15C 8000B55C 24060000 */  addiu      $a2, $zero, 0
/* C160 8000B560 46083032 */  c.eq.s     $f6, $f8
/* C164 8000B564 00000000 */  nop
/* C168 8000B568 45000005 */  bc1f       .L8000B580
/* C16C 8000B56C 00000000 */   nop
/* C170 8000B570 0C007F04 */  jal        func_8001FC10
/* C174 8000B574 24070000 */   addiu     $a3, $zero, 0
/* C178 8000B578 0C002CB2 */  jal        func_8000B2C8
/* C17C 8000B57C 24040008 */   addiu     $a0, $zero, 8
.L8000B580:
/* C180 8000B580 0C0024D1 */  jal        func_80009344
/* C184 8000B584 00002025 */   or        $a0, $zero, $zero
/* C188 8000B588 10000111 */  b          .L8000B9D0
/* C18C 8000B58C 00000000 */   nop
/* C190 8000B590 0C00DE3E */  jal        func_800378F8
/* C194 8000B594 00000000 */   nop
/* C198 8000B598 1040010D */  beqz       $v0, .L8000B9D0
/* C19C 8000B59C 00000000 */   nop
/* C1A0 8000B5A0 0C002CB2 */  jal        func_8000B2C8
/* C1A4 8000B5A4 00002025 */   or        $a0, $zero, $zero
/* C1A8 8000B5A8 10000109 */  b          .L8000B9D0
/* C1AC 8000B5AC 00000000 */   nop
/* C1B0 8000B5B0 3C0A800B */  lui        $t2, %hi(D_800B6770)
/* C1B4 8000B5B4 8D4A6770 */  lw         $t2, %lo(D_800B6770)($t2)
/* C1B8 8000B5B8 00002025 */  or         $a0, $zero, $zero
/* C1BC 8000B5BC 00002825 */  or         $a1, $zero, $zero
/* C1C0 8000B5C0 1140000E */  beqz       $t2, .L8000B5FC
/* C1C4 8000B5C4 3C01800B */   lui       $at, 0x800b
/* C1C8 8000B5C8 3C01800A */  lui        $at, %hi(D_800A0C6C)
/* C1CC 8000B5CC C42A0C6C */  lwc1       $f10, %lo(D_800A0C6C)($at)
/* C1D0 8000B5D0 00003025 */  or         $a2, $zero, $zero
/* C1D4 8000B5D4 2407001E */  addiu      $a3, $zero, 0x1e
/* C1D8 8000B5D8 0C00059E */  jal        func_80001678
/* C1DC 8000B5DC E7AA0010 */   swc1      $f10, 0x10($sp)
/* C1E0 8000B5E0 0C002CA2 */  jal        func_8000B288
/* C1E4 8000B5E4 00000000 */   nop
/* C1E8 8000B5E8 0C001283 */  jal        func_80004A0C
/* C1EC 8000B5EC 00002025 */   or        $a0, $zero, $zero
/* C1F0 8000B5F0 3C01800B */  lui        $at, %hi(D_800B6770)
/* C1F4 8000B5F4 10000009 */  b          .L8000B61C
/* C1F8 8000B5F8 AC206770 */   sw        $zero, %lo(D_800B6770)($at)
.L8000B5FC:
/* C1FC 8000B5FC 44808000 */  mtc1       $zero, $f16
/* C200 8000B600 C432BDCC */  lwc1       $f18, -0x4234($at)
/* C204 8000B604 46128032 */  c.eq.s     $f16, $f18
/* C208 8000B608 00000000 */  nop
/* C20C 8000B60C 45000003 */  bc1f       .L8000B61C
/* C210 8000B610 00000000 */   nop
/* C214 8000B614 0C002CB2 */  jal        func_8000B2C8
/* C218 8000B618 2404000E */   addiu     $a0, $zero, 0xe
.L8000B61C:
/* C21C 8000B61C 0C0024D1 */  jal        func_80009344
/* C220 8000B620 00002025 */   or        $a0, $zero, $zero
/* C224 8000B624 100000EA */  b          .L8000B9D0
/* C228 8000B628 00000000 */   nop
/* C22C 8000B62C 3C0B800B */  lui        $t3, %hi(D_800B6770)
/* C230 8000B630 8D6B6770 */  lw         $t3, %lo(D_800B6770)($t3)
/* C234 8000B634 3C04800B */  lui        $a0, %hi(D_800B6778)
/* C238 8000B638 24846778 */  addiu      $a0, $a0, %lo(D_800B6778)
/* C23C 8000B63C 1160001C */  beqz       $t3, .L8000B6B0
/* C240 8000B640 3C0D800B */   lui       $t5, 0x800b
/* C244 8000B644 0C0049CC */  jal        func_80012730
/* C248 8000B648 24050005 */   addiu     $a1, $zero, 5
/* C24C 8000B64C 3C04800B */  lui        $a0, %hi(D_800B6778)
/* C250 8000B650 24846778 */  addiu      $a0, $a0, %lo(D_800B6778)
/* C254 8000B654 0C004B3C */  jal        func_80012CF0
/* C258 8000B658 00002825 */   or        $a1, $zero, $zero
/* C25C 8000B65C 3C04800B */  lui        $a0, %hi(D_800B6778)
/* C260 8000B660 24846778 */  addiu      $a0, $a0, %lo(D_800B6778)
/* C264 8000B664 00002825 */  or         $a1, $zero, $zero
/* C268 8000B668 0C004B39 */  jal        func_80012CE4
/* C26C 8000B66C 24060064 */   addiu     $a2, $zero, 0x64
/* C270 8000B670 3C108006 */  lui        $s0, %hi(D_80063854)
/* C274 8000B674 26103854 */  addiu      $s0, $s0, %lo(D_80063854)
.L8000B678:
/* C278 8000B678 3C04800B */  lui        $a0, %hi(D_800B6778)
/* C27C 8000B67C 24846778 */  addiu      $a0, $a0, %lo(D_800B6778)
/* C280 8000B680 0C004B48 */  jal        func_80012D20
/* C284 8000B684 8E050000 */   lw        $a1, ($s0)
/* C288 8000B688 3C0C8006 */  lui        $t4, %hi(D_80063868)
/* C28C 8000B68C 258C3868 */  addiu      $t4, $t4, %lo(D_80063868)
/* C290 8000B690 26100004 */  addiu      $s0, $s0, 4
/* C294 8000B694 160CFFF8 */  bne        $s0, $t4, .L8000B678
/* C298 8000B698 00000000 */   nop
/* C29C 8000B69C 0C002C49 */  jal        func_8000B124
/* C2A0 8000B6A0 00000000 */   nop
/* C2A4 8000B6A4 3C01800B */  lui        $at, %hi(D_800B6770)
/* C2A8 8000B6A8 1000000C */  b          .L8000B6DC
/* C2AC 8000B6AC AC206770 */   sw        $zero, %lo(D_800B6770)($at)
.L8000B6B0:
/* C2B0 8000B6B0 8DADD544 */  lw         $t5, -0x2abc($t5)
/* C2B4 8000B6B4 3C04800B */  lui        $a0, %hi(D_800B6778)
/* C2B8 8000B6B8 31AE8000 */  andi       $t6, $t5, 0x8000
/* C2BC 8000B6BC 11C00007 */  beqz       $t6, .L8000B6DC
/* C2C0 8000B6C0 00000000 */   nop
/* C2C4 8000B6C4 0C004A0B */  jal        osStopTimer
/* C2C8 8000B6C8 24846778 */   addiu     $a0, $a0, %lo(D_800B6778)
/* C2CC 8000B6CC 3C01800B */  lui        $at, %hi(D_800B678C)
/* C2D0 8000B6D0 AC20678C */  sw         $zero, %lo(D_800B678C)($at)
/* C2D4 8000B6D4 0C002CB2 */  jal        func_8000B2C8
/* C2D8 8000B6D8 24040010 */   addiu     $a0, $zero, 0x10
.L8000B6DC:
/* C2DC 8000B6DC 0C0024D1 */  jal        func_80009344
/* C2E0 8000B6E0 00002025 */   or        $a0, $zero, $zero
/* C2E4 8000B6E4 100000BA */  b          .L8000B9D0
/* C2E8 8000B6E8 00000000 */   nop
/* C2EC 8000B6EC 3C0F800B */  lui        $t7, %hi(D_800B6770)
/* C2F0 8000B6F0 8DEF6770 */  lw         $t7, %lo(D_800B6770)($t7)
/* C2F4 8000B6F4 3C02800B */  lui        $v0, %hi(D_800AE510)
/* C2F8 8000B6F8 11E00019 */  beqz       $t7, .L8000B760
/* C2FC 8000B6FC 00000000 */   nop
/* C300 8000B700 8C42E510 */  lw         $v0, %lo(D_800AE510)($v0)
/* C304 8000B704 24010001 */  addiu      $at, $zero, 1
/* C308 8000B708 10410005 */  beq        $v0, $at, .L8000B720
/* C30C 8000B70C 24010002 */   addiu     $at, $zero, 2
/* C310 8000B710 10410009 */  beq        $v0, $at, .L8000B738
/* C314 8000B714 00000000 */   nop
/* C318 8000B718 1000000C */  b          .L8000B74C
/* C31C 8000B71C 00000000 */   nop
.L8000B720:
/* C320 8000B720 3C02800A */  lui        $v0, %hi(D_8009A6F0)
/* C324 8000B724 2442A6F0 */  addiu      $v0, $v0, %lo(D_8009A6F0)
/* C328 8000B728 90580000 */  lbu        $t8, ($v0)
/* C32C 8000B72C 37190001 */  ori        $t9, $t8, 1
/* C330 8000B730 10000006 */  b          .L8000B74C
/* C334 8000B734 A0590000 */   sb        $t9, ($v0)
.L8000B738:
/* C338 8000B738 3C02800A */  lui        $v0, %hi(D_8009A6F0)
/* C33C 8000B73C 2442A6F0 */  addiu      $v0, $v0, %lo(D_8009A6F0)
/* C340 8000B740 90480000 */  lbu        $t0, ($v0)
/* C344 8000B744 35090002 */  ori        $t1, $t0, 2
/* C348 8000B748 A0490000 */  sb         $t1, ($v0)
.L8000B74C:
/* C34C 8000B74C 0C00CB35 */  jal        func_80032CD4
/* C350 8000B750 00000000 */   nop
/* C354 8000B754 3C01800B */  lui        $at, %hi(D_800B6770)
/* C358 8000B758 10000007 */  b          .L8000B778
/* C35C 8000B75C AC206770 */   sw        $zero, %lo(D_800B6770)($at)
.L8000B760:
/* C360 8000B760 0C001120 */  jal        func_80004480
/* C364 8000B764 00000000 */   nop
/* C368 8000B768 10400003 */  beqz       $v0, .L8000B778
/* C36C 8000B76C 00000000 */   nop
/* C370 8000B770 0C002CB2 */  jal        func_8000B2C8
/* C374 8000B774 2404000F */   addiu     $a0, $zero, 0xf
.L8000B778:
/* C378 8000B778 0C0024D1 */  jal        func_80009344
/* C37C 8000B77C 00002025 */   or        $a0, $zero, $zero
/* C380 8000B780 10000093 */  b          .L8000B9D0
/* C384 8000B784 00000000 */   nop
/* C388 8000B788 3C0A800B */  lui        $t2, %hi(D_800B6770)
/* C38C 8000B78C 8D4A6770 */  lw         $t2, %lo(D_800B6770)($t2)
/* C390 8000B790 3C04800F */  lui        $a0, %hi(D_800EF6A0)
/* C394 8000B794 2484F6A0 */  addiu      $a0, $a0, %lo(D_800EF6A0)
/* C398 8000B798 11400017 */  beqz       $t2, .L8000B7F8
/* C39C 8000B79C 00000000 */   nop
/* C3A0 8000B7A0 0C0446F9 */  jal        func_80111BE4
/* C3A4 8000B7A4 24050086 */   addiu     $a1, $zero, 0x86
/* C3A8 8000B7A8 3C04800B */  lui        $a0, %hi(D_800AE510)
/* C3AC 8000B7AC 0C00CB51 */  jal        func_80032D44
/* C3B0 8000B7B0 8C84E510 */   lw        $a0, %lo(D_800AE510)($a0)
/* C3B4 8000B7B4 3C01800B */  lui        $at, %hi(D_800B6770)
/* C3B8 8000B7B8 3C04800B */  lui        $a0, %hi(D_800B6778)
/* C3BC 8000B7BC AC206770 */  sw         $zero, %lo(D_800B6770)($at)
/* C3C0 8000B7C0 24846778 */  addiu      $a0, $a0, %lo(D_800B6778)
/* C3C4 8000B7C4 0C0049CC */  jal        func_80012730
/* C3C8 8000B7C8 24050005 */   addiu     $a1, $zero, 5
/* C3CC 8000B7CC 3C04800B */  lui        $a0, %hi(D_800B6778)
/* C3D0 8000B7D0 24846778 */  addiu      $a0, $a0, %lo(D_800B6778)
/* C3D4 8000B7D4 0C004B3C */  jal        func_80012CF0
/* C3D8 8000B7D8 00002825 */   or        $a1, $zero, $zero
/* C3DC 8000B7DC 3C04800B */  lui        $a0, %hi(D_800B6778)
/* C3E0 8000B7E0 24846778 */  addiu      $a0, $a0, %lo(D_800B6778)
/* C3E4 8000B7E4 00002825 */  or         $a1, $zero, $zero
/* C3E8 8000B7E8 0C004B39 */  jal        func_80012CE4
/* C3EC 8000B7EC 24060064 */   addiu     $a2, $zero, 0x64
/* C3F0 8000B7F0 10000030 */  b          .L8000B8B4
/* C3F4 8000B7F4 00000000 */   nop
.L8000B7F8:
/* C3F8 8000B7F8 0C00113F */  jal        func_800044FC
/* C3FC 8000B7FC 00000000 */   nop
/* C400 8000B800 10400008 */  beqz       $v0, .L8000B824
/* C404 8000B804 3C108006 */   lui       $s0, 0x8006
/* C408 8000B808 24010002 */  addiu      $at, $zero, 2
/* C40C 8000B80C 10410029 */  beq        $v0, $at, .L8000B8B4
/* C410 8000B810 24010005 */   addiu     $at, $zero, 5
/* C414 8000B814 10410016 */  beq        $v0, $at, .L8000B870
/* C418 8000B818 3C108006 */   lui       $s0, %hi(D_80063868)
/* C41C 8000B81C 10000025 */  b          .L8000B8B4
/* C420 8000B820 00000000 */   nop
.L8000B824:
/* C424 8000B824 26103868 */  addiu      $s0, $s0, %lo(D_80063868)
.L8000B828:
/* C428 8000B828 3C04800B */  lui        $a0, %hi(D_800B6778)
/* C42C 8000B82C 24846778 */  addiu      $a0, $a0, %lo(D_800B6778)
/* C430 8000B830 0C004B48 */  jal        func_80012D20
/* C434 8000B834 8E050000 */   lw        $a1, ($s0)
/* C438 8000B838 3C0B8006 */  lui        $t3, %hi(D_80063878)
/* C43C 8000B83C 256B3878 */  addiu      $t3, $t3, %lo(D_80063878)
/* C440 8000B840 26100004 */  addiu      $s0, $s0, 4
/* C444 8000B844 160BFFF8 */  bne        $s0, $t3, .L8000B828
/* C448 8000B848 00000000 */   nop
/* C44C 8000B84C 0C002C49 */  jal        func_8000B124
/* C450 8000B850 00000000 */   nop
/* C454 8000B854 340C8000 */  ori        $t4, $zero, 0x8000
/* C458 8000B858 3C01800B */  lui        $at, %hi(D_800B6798)
/* C45C 8000B85C A42C6798 */  sh         $t4, %lo(D_800B6798)($at)
/* C460 8000B860 0C002CB2 */  jal        func_8000B2C8
/* C464 8000B864 24040011 */   addiu     $a0, $zero, 0x11
/* C468 8000B868 10000012 */  b          .L8000B8B4
/* C46C 8000B86C 00000000 */   nop
.L8000B870:
/* C470 8000B870 26103878 */  addiu      $s0, $s0, 0x3878
.L8000B874:
/* C474 8000B874 3C04800B */  lui        $a0, %hi(D_800B6778)
/* C478 8000B878 24846778 */  addiu      $a0, $a0, %lo(D_800B6778)
/* C47C 8000B87C 0C004B48 */  jal        func_80012D20
/* C480 8000B880 8E050000 */   lw        $a1, ($s0)
/* C484 8000B884 3C0D8006 */  lui        $t5, %hi(D_8006388C)
/* C488 8000B888 25AD388C */  addiu      $t5, $t5, %lo(D_8006388C)
/* C48C 8000B88C 26100004 */  addiu      $s0, $s0, 4
/* C490 8000B890 160DFFF8 */  bne        $s0, $t5, .L8000B874
/* C494 8000B894 00000000 */   nop
/* C498 8000B898 0C002C49 */  jal        func_8000B124
/* C49C 8000B89C 00000000 */   nop
/* C4A0 8000B8A0 240E1000 */  addiu      $t6, $zero, 0x1000
/* C4A4 8000B8A4 3C01800B */  lui        $at, %hi(D_800B6798)
/* C4A8 8000B8A8 A42E6798 */  sh         $t6, %lo(D_800B6798)($at)
/* C4AC 8000B8AC 0C002CB2 */  jal        func_8000B2C8
/* C4B0 8000B8B0 24040011 */   addiu     $a0, $zero, 0x11
.L8000B8B4:
/* C4B4 8000B8B4 0C0024D1 */  jal        func_80009344
/* C4B8 8000B8B8 00002025 */   or        $a0, $zero, $zero
/* C4BC 8000B8BC 10000044 */  b          .L8000B9D0
/* C4C0 8000B8C0 00000000 */   nop
/* C4C4 8000B8C4 3C0F800B */  lui        $t7, %hi(D_800AD544)
/* C4C8 8000B8C8 3C18800B */  lui        $t8, %hi(D_800B6798)
/* C4CC 8000B8CC 97186798 */  lhu        $t8, %lo(D_800B6798)($t8)
/* C4D0 8000B8D0 8DEFD544 */  lw         $t7, %lo(D_800AD544)($t7)
/* C4D4 8000B8D4 24040003 */  addiu      $a0, $zero, 3
/* C4D8 8000B8D8 3C01800A */  lui        $at, %hi(D_800A0C70)
/* C4DC 8000B8DC 01F8C824 */  and        $t9, $t7, $t8
/* C4E0 8000B8E0 13200025 */  beqz       $t9, .L8000B978
/* C4E4 8000B8E4 00000000 */   nop
/* C4E8 8000B8E8 8C260C70 */  lw         $a2, %lo(D_800A0C70)($at)
/* C4EC 8000B8EC 0C007F04 */  jal        func_8001FC10
/* C4F0 8000B8F0 8C270C74 */   lw        $a3, 0xc74($at)
/* C4F4 8000B8F4 44802000 */  mtc1       $zero, $f4
/* C4F8 8000B8F8 00002025 */  or         $a0, $zero, $zero
/* C4FC 8000B8FC 00002825 */  or         $a1, $zero, $zero
/* C500 8000B900 00003025 */  or         $a2, $zero, $zero
/* C504 8000B904 240700FF */  addiu      $a3, $zero, 0xff
/* C508 8000B908 0C00059E */  jal        func_80001678
/* C50C 8000B90C E7A40010 */   swc1      $f4, 0x10($sp)
/* C510 8000B910 3C04800B */  lui        $a0, %hi(D_800B6778)
/* C514 8000B914 0C004A0B */  jal        osStopTimer
/* C518 8000B918 24846778 */   addiu     $a0, $a0, %lo(D_800B6778)
/* C51C 8000B91C 3C08800B */  lui        $t0, %hi(D_800AE50C)
/* C520 8000B920 8D08E50C */  lw         $t0, %lo(D_800AE50C)($t0)
/* C524 8000B924 3C01800B */  lui        $at, %hi(D_800B678C)
/* C528 8000B928 AC20678C */  sw         $zero, %lo(D_800B678C)($at)
/* C52C 8000B92C 1100000E */  beqz       $t0, .L8000B968
/* C530 8000B930 00002025 */   or        $a0, $zero, $zero
/* C534 8000B934 24040016 */  addiu      $a0, $zero, 0x16
/* C538 8000B938 0C043966 */  jal        func_8010E598
/* C53C 8000B93C 00002825 */   or        $a1, $zero, $zero
/* C540 8000B940 0C008538 */  jal        func_800214E0
/* C544 8000B944 00000000 */   nop
/* C548 8000B948 0C00AB41 */  jal        func_8002AD04
/* C54C 8000B94C 00002025 */   or        $a0, $zero, $zero
/* C550 8000B950 0C002CB2 */  jal        func_8000B2C8
/* C554 8000B954 24040012 */   addiu     $a0, $zero, 0x12
/* C558 8000B958 0C002C76 */  jal        func_8000B1D8
/* C55C 8000B95C 00002025 */   or        $a0, $zero, $zero
/* C560 8000B960 10000005 */  b          .L8000B978
/* C564 8000B964 00000000 */   nop
.L8000B968:
/* C568 8000B968 0C043966 */  jal        func_8010E598
/* C56C 8000B96C 00002825 */   or        $a1, $zero, $zero
/* C570 8000B970 0C002C76 */  jal        func_8000B1D8
/* C574 8000B974 00002025 */   or        $a0, $zero, $zero
.L8000B978:
/* C578 8000B978 0C0024D1 */  jal        func_80009344
/* C57C 8000B97C 00002025 */   or        $a0, $zero, $zero
/* C580 8000B980 10000013 */  b          .L8000B9D0
/* C584 8000B984 00000000 */   nop
/* C588 8000B988 0C00C4E6 */  jal        func_80031398
/* C58C 8000B98C 00000000 */   nop
/* C590 8000B990 0C00C7B3 */  jal        func_80031ECC
/* C594 8000B994 00000000 */   nop
/* C598 8000B998 1000000D */  b          .L8000B9D0
/* C59C 8000B99C 00000000 */   nop
/* C5A0 8000B9A0 0C046836 */  jal        func_8011A0D8
/* C5A4 8000B9A4 00000000 */   nop
/* C5A8 8000B9A8 0C0469DE */  jal        func_8011A778
/* C5AC 8000B9AC 00000000 */   nop
/* C5B0 8000B9B0 10000007 */  b          .L8000B9D0
/* C5B4 8000B9B4 00000000 */   nop
/* C5B8 8000B9B8 0C00B1A9 */  jal        func_8002C6A4
/* C5BC 8000B9BC 00000000 */   nop
/* C5C0 8000B9C0 10000003 */  b          .L8000B9D0
/* C5C4 8000B9C4 00000000 */   nop
/* C5C8 8000B9C8 0C00B9B1 */  jal        func_8002E6C4
/* C5CC 8000B9CC 00000000 */   nop
.L8000B9D0:
/* C5D0 8000B9D0 3C09800B */  lui        $t1, %hi(D_800AD558)
/* C5D4 8000B9D4 2529D558 */  addiu      $t1, $t1, %lo(D_800AD558)
/* C5D8 8000B9D8 AFA90028 */  sw         $t1, 0x28($sp)
/* C5DC 8000B9DC 24100001 */  addiu      $s0, $zero, 1
.L8000B9E0:
/* C5E0 8000B9E0 0C00856A */  jal        func_800215A8
/* C5E4 8000B9E4 02002025 */   or        $a0, $s0, $zero
/* C5E8 8000B9E8 0C002C8D */  jal        func_8000B234
/* C5EC 8000B9EC 8FA40028 */   lw        $a0, 0x28($sp)
/* C5F0 8000B9F0 8FAA0028 */  lw         $t2, 0x28($sp)
/* C5F4 8000B9F4 26100001 */  addiu      $s0, $s0, 1
/* C5F8 8000B9F8 24010003 */  addiu      $at, $zero, 3
/* C5FC 8000B9FC 254B0018 */  addiu      $t3, $t2, 0x18
/* C600 8000BA00 1601FFF7 */  bne        $s0, $at, .L8000B9E0
/* C604 8000BA04 AFAB0028 */   sw        $t3, 0x28($sp)
/* C608 8000BA08 8FBF0024 */  lw         $ra, 0x24($sp)
/* C60C 8000BA0C 8FB00020 */  lw         $s0, 0x20($sp)
/* C610 8000BA10 27BD0040 */  addiu      $sp, $sp, 0x40
/* C614 8000BA14 03E00008 */  jr         $ra
/* C618 8000BA18 00000000 */   nop

glabel func_8000BA1C
/* C61C 8000BA1C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* C620 8000BA20 3C013F80 */  lui        $at, 0x3f80
/* C624 8000BA24 AFBF0034 */  sw         $ra, 0x34($sp)
/* C628 8000BA28 44816000 */  mtc1       $at, $f12
/* C62C 8000BA2C AFB60030 */  sw         $s6, 0x30($sp)
/* C630 8000BA30 AFB5002C */  sw         $s5, 0x2c($sp)
/* C634 8000BA34 AFB40028 */  sw         $s4, 0x28($sp)
/* C638 8000BA38 AFB30024 */  sw         $s3, 0x24($sp)
/* C63C 8000BA3C AFB20020 */  sw         $s2, 0x20($sp)
/* C640 8000BA40 AFB1001C */  sw         $s1, 0x1c($sp)
/* C644 8000BA44 AFB00018 */  sw         $s0, 0x18($sp)
/* C648 8000BA48 0C014DE4 */  jal        osViSetYScale
/* C64C 8000BA4C AFA0003C */   sw        $zero, 0x3c($sp)
/* C650 8000BA50 0C001283 */  jal        func_80004A0C
/* C654 8000BA54 00002025 */   or        $a0, $zero, $zero
/* C658 8000BA58 0C007E77 */  jal        func_8001F9DC
/* C65C 8000BA5C 00000000 */   nop
/* C660 8000BA60 3C10800B */  lui        $s0, %hi(D_800B66F4)
/* C664 8000BA64 261066F4 */  addiu      $s0, $s0, %lo(D_800B66F4)
/* C668 8000BA68 8E0E0000 */  lw         $t6, ($s0)
/* C66C 8000BA6C 24160004 */  addiu      $s6, $zero, 4
/* C670 8000BA70 24150003 */  addiu      $s5, $zero, 3
/* C674 8000BA74 11C0001B */  beqz       $t6, .L8000BAE4
/* C678 8000BA78 24140002 */   addiu     $s4, $zero, 2
/* C67C 8000BA7C 3C11800B */  lui        $s1, %hi(D_800AE4C0)
/* C680 8000BA80 2631E4C0 */  addiu      $s1, $s1, %lo(D_800AE4C0)
/* C684 8000BA84 24130001 */  addiu      $s3, $zero, 1
/* C688 8000BA88 27B2003C */  addiu      $s2, $sp, 0x3c
/* C68C 8000BA8C 02202025 */  or         $a0, $s1, $zero
.L8000BA90:
/* C690 8000BA90 02402825 */  or         $a1, $s2, $zero
/* C694 8000BA94 0C014554 */  jal        osRecvMesg
/* C698 8000BA98 02603025 */   or        $a2, $s3, $zero
/* C69C 8000BA9C 8FAF003C */  lw         $t7, 0x3c($sp)
/* C6A0 8000BAA0 85E30000 */  lh         $v1, ($t7)
/* C6A4 8000BAA4 5073000D */  beql       $v1, $s3, .L8000BADC
/* C6A8 8000BAA8 8E080000 */   lw        $t0, ($s0)
/* C6AC 8000BAAC 50740008 */  beql       $v1, $s4, .L8000BAD0
/* C6B0 8000BAB0 8E180000 */   lw        $t8, ($s0)
/* C6B4 8000BAB4 50750009 */  beql       $v1, $s5, .L8000BADC
/* C6B8 8000BAB8 8E080000 */   lw        $t0, ($s0)
/* C6BC 8000BABC 50760007 */  beql       $v1, $s6, .L8000BADC
/* C6C0 8000BAC0 8E080000 */   lw        $t0, ($s0)
/* C6C4 8000BAC4 10000005 */  b          .L8000BADC
/* C6C8 8000BAC8 8E080000 */   lw        $t0, ($s0)
/* C6CC 8000BACC 8E180000 */  lw         $t8, ($s0)
.L8000BAD0:
/* C6D0 8000BAD0 2719FFFF */  addiu      $t9, $t8, -1
/* C6D4 8000BAD4 AE190000 */  sw         $t9, ($s0)
/* C6D8 8000BAD8 8E080000 */  lw         $t0, ($s0)
.L8000BADC:
/* C6DC 8000BADC 5500FFEC */  bnel       $t0, $zero, .L8000BA90
/* C6E0 8000BAE0 02202025 */   or        $a0, $s1, $zero
.L8000BAE4:
/* C6E4 8000BAE4 3C11800B */  lui        $s1, %hi(D_800AE4C0)
/* C6E8 8000BAE8 2631E4C0 */  addiu      $s1, $s1, %lo(D_800AE4C0)
/* C6EC 8000BAEC 27B2003C */  addiu      $s2, $sp, 0x3c
.L8000BAF0:
/* C6F0 8000BAF0 0C014DF8 */  jal        func_800537E0
/* C6F4 8000BAF4 00000000 */   nop
/* C6F8 8000BAF8 10400006 */  beqz       $v0, .L8000BB14
/* C6FC 8000BAFC 02202025 */   or        $a0, $s1, $zero
/* C700 8000BB00 02402825 */  or         $a1, $s2, $zero
/* C704 8000BB04 0C014554 */  jal        osRecvMesg
/* C708 8000BB08 24060001 */   addiu     $a2, $zero, 1
/* C70C 8000BB0C 1000FFF8 */  b          .L8000BAF0
/* C710 8000BB10 00000000 */   nop
.L8000BB14:
/* C714 8000BB14 1000FFFF */  b          .L8000BB14
/* C718 8000BB18 00000000 */   nop
/* C71C 8000BB1C 00000000 */  nop
/* C720 8000BB20 8FBF0034 */  lw         $ra, 0x34($sp)
/* C724 8000BB24 8FB00018 */  lw         $s0, 0x18($sp)
/* C728 8000BB28 8FB1001C */  lw         $s1, 0x1c($sp)
/* C72C 8000BB2C 8FB20020 */  lw         $s2, 0x20($sp)
/* C730 8000BB30 8FB30024 */  lw         $s3, 0x24($sp)
/* C734 8000BB34 8FB40028 */  lw         $s4, 0x28($sp)
/* C738 8000BB38 8FB5002C */  lw         $s5, 0x2c($sp)
/* C73C 8000BB3C 8FB60030 */  lw         $s6, 0x30($sp)
/* C740 8000BB40 03E00008 */  jr         $ra
/* C744 8000BB44 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8000BB48
/* C748 8000BB48 3C0E8006 */  lui        $t6, %hi(D_80063850)
/* C74C 8000BB4C 8DCE3850 */  lw         $t6, %lo(D_80063850)($t6)
/* C750 8000BB50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C754 8000BB54 AFBF0014 */  sw         $ra, 0x14($sp)
/* C758 8000BB58 AFA40018 */  sw         $a0, 0x18($sp)
/* C75C 8000BB5C 15C00007 */  bnez       $t6, .L8000BB7C
/* C760 8000BB60 AFA5001C */   sw        $a1, 0x1c($sp)
/* C764 8000BB64 0C01010B */  jal        func_8004042C
/* C768 8000BB68 00000000 */   nop
/* C76C 8000BB6C 50400004 */  beql       $v0, $zero, .L8000BB80
/* C770 8000BB70 8FBF0014 */   lw        $ra, 0x14($sp)
/* C774 8000BB74 0C002E87 */  jal        func_8000BA1C
/* C778 8000BB78 00000000 */   nop
.L8000BB7C:
/* C77C 8000BB7C 8FBF0014 */  lw         $ra, 0x14($sp)
.L8000BB80:
/* C780 8000BB80 27BD0018 */  addiu      $sp, $sp, 0x18
/* C784 8000BB84 03E00008 */  jr         $ra
/* C788 8000BB88 00000000 */   nop

glabel func_8000BB8C
/* C78C 8000BB8C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* C790 8000BB90 AFB30020 */  sw         $s3, 0x20($sp)
/* C794 8000BB94 AFB2001C */  sw         $s2, 0x1c($sp)
/* C798 8000BB98 AFB00014 */  sw         $s0, 0x14($sp)
/* C79C 8000BB9C AFB10018 */  sw         $s1, 0x18($sp)
/* C7A0 8000BBA0 24020001 */  addiu      $v0, $zero, 1
/* C7A4 8000BBA4 3C10800B */  lui        $s0, 0x800b
/* C7A8 8000BBA8 3C12800B */  lui        $s2, 0x800b
/* C7AC 8000BBAC 3C13800B */  lui        $s3, %hi(D_800B66F8)
/* C7B0 8000BBB0 3C01800B */  lui        $at, %hi(D_800B679C)
/* C7B4 8000BBB4 AFBF0024 */  sw         $ra, 0x24($sp)
/* C7B8 8000BBB8 AC22679C */  sw         $v0, %lo(D_800B679C)($at)
/* C7BC 8000BBBC 267366F8 */  addiu      $s3, $s3, %lo(D_800B66F8)
/* C7C0 8000BBC0 2652676C */  addiu      $s2, $s2, 0x676c
/* C7C4 8000BBC4 261066F4 */  addiu      $s0, $s0, 0x66f4
/* C7C8 8000BBC8 24110001 */  addiu      $s1, $zero, 1
.L8000BBCC:
/* C7CC 8000BBCC 3C04800B */  lui        $a0, %hi(D_800AE4C0)
/* C7D0 8000BBD0 3C058006 */  lui        $a1, %hi(D_8006388C)
/* C7D4 8000BBD4 24A5388C */  addiu      $a1, $a1, %lo(D_8006388C)
/* C7D8 8000BBD8 2484E4C0 */  addiu      $a0, $a0, %lo(D_800AE4C0)
/* C7DC 8000BBDC 0C014554 */  jal        osRecvMesg
/* C7E0 8000BBE0 02203025 */   or        $a2, $s1, $zero
/* C7E4 8000BBE4 3C0E8006 */  lui        $t6, %hi(D_8006388C)
/* C7E8 8000BBE8 8DCE388C */  lw         $t6, %lo(D_8006388C)($t6)
/* C7EC 8000BBEC 24010002 */  addiu      $at, $zero, 2
/* C7F0 8000BBF0 85C20000 */  lh         $v0, ($t6)
/* C7F4 8000BBF4 5051000A */  beql       $v0, $s1, .L8000BC20
/* C7F8 8000BBF8 8E0F0000 */   lw        $t7, ($s0)
/* C7FC 8000BBFC 10410037 */  beq        $v0, $at, .L8000BCDC
/* C800 8000BC00 24010003 */   addiu     $at, $zero, 3
/* C804 8000BC04 1041004F */  beq        $v0, $at, .L8000BD44
/* C808 8000BC08 24010004 */   addiu     $at, $zero, 4
/* C80C 8000BC0C 1041FFEF */  beq        $v0, $at, .L8000BBCC
/* C810 8000BC10 00000000 */   nop
/* C814 8000BC14 1000FFED */  b          .L8000BBCC
/* C818 8000BC18 00000000 */   nop
/* C81C 8000BC1C 8E0F0000 */  lw         $t7, ($s0)
.L8000BC20:
/* C820 8000BC20 15E0FFEA */  bnez       $t7, .L8000BBCC
/* C824 8000BC24 00000000 */   nop
/* C828 8000BC28 8E580000 */  lw         $t8, ($s2)
/* C82C 8000BC2C 5700004A */  bnel       $t8, $zero, .L8000BD58
/* C830 8000BC30 8FBF0024 */   lw        $ra, 0x24($sp)
/* C834 8000BC34 0C002BC2 */  jal        func_8000AF08
/* C838 8000BC38 00000000 */   nop
/* C83C 8000BC3C 0C0012F0 */  jal        func_80004BC0
/* C840 8000BC40 00000000 */   nop
/* C844 8000BC44 0C0049AD */  jal        func_800126B4
/* C848 8000BC48 00000000 */   nop
/* C84C 8000BC4C 8E790000 */  lw         $t9, ($s3)
/* C850 8000BC50 3C01800B */  lui        $at, %hi(D_800B67A0)
/* C854 8000BC54 17200003 */  bnez       $t9, .L8000BC64
/* C858 8000BC58 00000000 */   nop
/* C85C 8000BC5C 10000005 */  b          .L8000BC74
/* C860 8000BC60 AC2067A0 */   sw        $zero, %lo(D_800B67A0)($at)
.L8000BC64:
/* C864 8000BC64 0C000816 */  jal        func_80002058
/* C868 8000BC68 00000000 */   nop
/* C86C 8000BC6C 3C01800B */  lui        $at, %hi(D_800B67A0)
/* C870 8000BC70 AC3167A0 */  sw         $s1, %lo(D_800B67A0)($at)
.L8000BC74:
/* C874 8000BC74 3C04800B */  lui        $a0, %hi(D_800B6930)
/* C878 8000BC78 0C00FEDB */  jal        func_8003FB6C
/* C87C 8000BC7C 24846930 */   addiu     $a0, $a0, %lo(D_800B6930)
/* C880 8000BC80 AE710000 */  sw         $s1, ($s3)
/* C884 8000BC84 3C08800B */  lui        $t0, %hi(D_800AE4F0)
/* C888 8000BC88 8D08E4F0 */  lw         $t0, %lo(D_800AE4F0)($t0)
/* C88C 8000BC8C 3C028006 */  lui        $v0, %hi(D_80063820)
/* C890 8000BC90 00084900 */  sll        $t1, $t0, 4
/* C894 8000BC94 00491021 */  addu       $v0, $v0, $t1
/* C898 8000BC98 8C423820 */  lw         $v0, %lo(D_80063820)($v0)
/* C89C 8000BC9C 10400003 */  beqz       $v0, .L8000BCAC
/* C8A0 8000BCA0 00000000 */   nop
/* C8A4 8000BCA4 0040F809 */  jalr       $v0
/* C8A8 8000BCA8 00000000 */   nop
.L8000BCAC:
/* C8AC 8000BCAC 0C044AD2 */  jal        func_80112B48
/* C8B0 8000BCB0 00000000 */   nop
/* C8B4 8000BCB4 3C0A800B */  lui        $t2, %hi(D_800B67A0)
/* C8B8 8000BCB8 8D4A67A0 */  lw         $t2, %lo(D_800B67A0)($t2)
/* C8BC 8000BCBC 1140FFC3 */  beqz       $t2, .L8000BBCC
/* C8C0 8000BCC0 00000000 */   nop
/* C8C4 8000BCC4 0C0008E1 */  jal        func_80002384
/* C8C8 8000BCC8 00000000 */   nop
/* C8CC 8000BCCC 8E0B0000 */  lw         $t3, ($s0)
/* C8D0 8000BCD0 256C0001 */  addiu      $t4, $t3, 1
/* C8D4 8000BCD4 1000FFBD */  b          .L8000BBCC
/* C8D8 8000BCD8 AE0C0000 */   sw        $t4, ($s0)
.L8000BCDC:
/* C8DC 8000BCDC 8E0D0000 */  lw         $t5, ($s0)
/* C8E0 8000BCE0 3C02800B */  lui        $v0, %hi(D_800B679C)
/* C8E4 8000BCE4 8C42679C */  lw         $v0, %lo(D_800B679C)($v0)
/* C8E8 8000BCE8 25AEFFFF */  addiu      $t6, $t5, -1
/* C8EC 8000BCEC AE0E0000 */  sw         $t6, ($s0)
/* C8F0 8000BCF0 1040000C */  beqz       $v0, .L8000BD24
/* C8F4 8000BCF4 2C410004 */   sltiu     $at, $v0, 4
/* C8F8 8000BCF8 10200005 */  beqz       $at, .L8000BD10
/* C8FC 8000BCFC 00002025 */   or        $a0, $zero, $zero
/* C900 8000BD00 24420001 */  addiu      $v0, $v0, 1
/* C904 8000BD04 3C01800B */  lui        $at, %hi(D_800B679C)
/* C908 8000BD08 10000006 */  b          .L8000BD24
/* C90C 8000BD0C AC22679C */   sw        $v0, %lo(D_800B679C)($at)
.L8000BD10:
/* C910 8000BD10 3C01800B */  lui        $at, %hi(D_800B679C)
/* C914 8000BD14 0C014D70 */  jal        osViBlack
/* C918 8000BD18 AC22679C */   sw        $v0, %lo(D_800B679C)($at)
/* C91C 8000BD1C 3C01800B */  lui        $at, %hi(D_800B679C)
/* C920 8000BD20 AC20679C */  sw         $zero, %lo(D_800B679C)($at)
.L8000BD24:
/* C924 8000BD24 8E4F0000 */  lw         $t7, ($s2)
/* C928 8000BD28 11E0FFA8 */  beqz       $t7, .L8000BBCC
/* C92C 8000BD2C 00000000 */   nop
/* C930 8000BD30 8E180000 */  lw         $t8, ($s0)
/* C934 8000BD34 1700FFA5 */  bnez       $t8, .L8000BBCC
/* C938 8000BD38 00000000 */   nop
/* C93C 8000BD3C 10000006 */  b          .L8000BD58
/* C940 8000BD40 8FBF0024 */   lw        $ra, 0x24($sp)
.L8000BD44:
/* C944 8000BD44 0C002E87 */  jal        func_8000BA1C
/* C948 8000BD48 00000000 */   nop
/* C94C 8000BD4C 1000FF9F */  b          .L8000BBCC
/* C950 8000BD50 00000000 */   nop
/* C954 8000BD54 8FBF0024 */  lw         $ra, 0x24($sp)
.L8000BD58:
/* C958 8000BD58 8FB00014 */  lw         $s0, 0x14($sp)
/* C95C 8000BD5C 8FB10018 */  lw         $s1, 0x18($sp)
/* C960 8000BD60 8FB2001C */  lw         $s2, 0x1c($sp)
/* C964 8000BD64 8FB30020 */  lw         $s3, 0x20($sp)
/* C968 8000BD68 03E00008 */  jr         $ra
/* C96C 8000BD6C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8000BD70
/* C970 8000BD70 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* C974 8000BD74 AFBF0044 */  sw         $ra, 0x44($sp)
/* C978 8000BD78 AFB00034 */  sw         $s0, 0x34($sp)
/* C97C 8000BD7C 00808025 */  or         $s0, $a0, $zero
/* C980 8000BD80 AFB30040 */  sw         $s3, 0x40($sp)
/* C984 8000BD84 AFB2003C */  sw         $s2, 0x3c($sp)
/* C988 8000BD88 AFB10038 */  sw         $s1, 0x38($sp)
/* C98C 8000BD8C 0C0029EA */  jal        func_8000A7A8
/* C990 8000BD90 F7B40028 */   sdc1      $f20, 0x28($sp)
/* C994 8000BD94 3C11800B */  lui        $s1, %hi(D_800AE4C0)
/* C998 8000BD98 2631E4C0 */  addiu      $s1, $s1, %lo(D_800AE4C0)
/* C99C 8000BD9C 3C05800B */  lui        $a1, %hi(D_800AE518)
/* C9A0 8000BDA0 24A5E518 */  addiu      $a1, $a1, %lo(D_800AE518)
/* C9A4 8000BDA4 02202025 */  or         $a0, $s1, $zero
/* C9A8 8000BDA8 0C0145B8 */  jal        osCreateMesgQueue
/* C9AC 8000BDAC 24060008 */   addiu     $a2, $zero, 8
/* C9B0 8000BDB0 3C05800B */  lui        $a1, %hi(D_800AE4D8)
/* C9B4 8000BDB4 24A5E4D8 */  addiu      $a1, $a1, %lo(D_800AE4D8)
/* C9B8 8000BDB8 02002025 */  or         $a0, $s0, $zero
/* C9BC 8000BDBC 0C00FFCF */  jal        func_8003FF3C
/* C9C0 8000BDC0 02203025 */   or        $a2, $s1, $zero
/* C9C4 8000BDC4 0C00FF8F */  jal        func_8003FE3C
/* C9C8 8000BDC8 02002025 */   or        $a0, $s0, $zero
/* C9CC 8000BDCC 3C01800B */  lui        $at, 0x800b
/* C9D0 8000BDD0 3C138006 */  lui        $s3, 0x8006
/* C9D4 8000BDD4 3C12803E */  lui        $s2, 0x803e
/* C9D8 8000BDD8 3C11800F */  lui        $s1, 0x800f
/* C9DC 8000BDDC 3C10800B */  lui        $s0, %hi(D_800AE4F0)
/* C9E0 8000BDE0 4480A800 */  mtc1       $zero, $f21
/* C9E4 8000BDE4 4480A000 */  mtc1       $zero, $f20
/* C9E8 8000BDE8 AC22E4E0 */  sw         $v0, -0x1b20($at)
/* C9EC 8000BDEC 2610E4F0 */  addiu      $s0, $s0, %lo(D_800AE4F0)
/* C9F0 8000BDF0 26312960 */  addiu      $s1, $s1, 0x2960
/* C9F4 8000BDF4 2652A800 */  addiu      $s2, $s2, -0x5800
/* C9F8 8000BDF8 26733850 */  addiu      $s3, $s3, 0x3850
.L8000BDFC:
/* C9FC 8000BDFC 8E0E0000 */  lw         $t6, ($s0)
/* CA00 8000BE00 3C04800A */  lui        $a0, %hi(D_800A0B48)
/* CA04 8000BE04 24840B48 */  addiu      $a0, $a0, %lo(D_800A0B48)
/* CA08 8000BE08 15C0002E */  bnez       $t6, .L8000BEC4
/* CA0C 8000BE0C 00000000 */   nop
/* CA10 8000BE10 0C002ED2 */  jal        func_8000BB48
/* CA14 8000BE14 00002825 */   or        $a1, $zero, $zero
/* CA18 8000BE18 3C0F8012 */  lui        $t7, 0x8012
/* CA1C 8000BE1C 3C188012 */  lui        $t8, 0x8012
/* CA20 8000BE20 3C198013 */  lui        $t9, %hi(D_80133DE0)
/* CA24 8000BE24 3C088013 */  lui        $t0, %hi(D_80133DE0)
/* CA28 8000BE28 3C098013 */  lui        $t1, %hi(D_80134270)
/* CA2C 8000BE2C 25294270 */  addiu      $t1, $t1, %lo(D_80134270)
/* CA30 8000BE30 25083DE0 */  addiu      $t0, $t0, %lo(D_80133DE0)
/* CA34 8000BE34 27393DE0 */  addiu      $t9, $t9, %lo(D_80133DE0)
/* CA38 8000BE38 27183430 */  addiu      $t8, $t8, 0x3430
/* CA3C 8000BE3C 25EF3430 */  addiu      $t7, $t7, 0x3430
/* CA40 8000BE40 3C04000B */  lui        $a0, 0xb
/* CA44 8000BE44 3C05000E */  lui        $a1, 0xe
/* CA48 8000BE48 3C068011 */  lui        $a2, %hi(D_8010AAF0)
/* CA4C 8000BE4C 3C078011 */  lui        $a3, %hi(D_8010AAF0)
/* CA50 8000BE50 24E7AAF0 */  addiu      $a3, $a3, %lo(D_8010AAF0)
/* CA54 8000BE54 24C6AAF0 */  addiu      $a2, $a2, %lo(D_8010AAF0)
/* CA58 8000BE58 24A5CF60 */  addiu      $a1, $a1, -0x30a0
/* CA5C 8000BE5C 24843C70 */  addiu      $a0, $a0, 0x3c70
/* CA60 8000BE60 AFAF0010 */  sw         $t7, 0x10($sp)
/* CA64 8000BE64 AFB80014 */  sw         $t8, 0x14($sp)
/* CA68 8000BE68 AFB90018 */  sw         $t9, 0x18($sp)
/* CA6C 8000BE6C AFA8001C */  sw         $t0, 0x1c($sp)
/* CA70 8000BE70 0C004D70 */  jal        func_800135C0
/* CA74 8000BE74 AFA90020 */   sw        $t1, 0x20($sp)
/* CA78 8000BE78 3C04800A */  lui        $a0, %hi(D_800A0B54)
/* CA7C 8000BE7C 24840B54 */  addiu      $a0, $a0, %lo(D_800A0B54)
/* CA80 8000BE80 0C002ED2 */  jal        func_8000BB48
/* CA84 8000BE84 24050001 */   addiu     $a1, $zero, 1
/* CA88 8000BE88 0C043994 */  jal        func_8010E650
/* CA8C 8000BE8C 00000000 */   nop
/* CA90 8000BE90 0C00DFE2 */  jal        func_80037F88
/* CA94 8000BE94 00402025 */   or        $a0, $v0, $zero
/* CA98 8000BE98 3C04800A */  lui        $a0, %hi(D_800A0B64)
/* CA9C 8000BE9C 24840B64 */  addiu      $a0, $a0, %lo(D_800A0B64)
/* CAA0 8000BEA0 0C002ED2 */  jal        func_8000BB48
/* CAA4 8000BEA4 00002825 */   or        $a1, $zero, $zero
/* CAA8 8000BEA8 24040140 */  addiu      $a0, $zero, 0x140
/* CAAC 8000BEAC 240500F0 */  addiu      $a1, $zero, 0xf0
/* CAB0 8000BEB0 0C00F34C */  jal        func_8003CD30
/* CAB4 8000BEB4 240600DA */   addiu     $a2, $zero, 0xda
/* CAB8 8000BEB8 3C048006 */  lui        $a0, %hi(D_80063800)
/* CABC 8000BEBC 0C00F560 */  jal        func_8003D580
/* CAC0 8000BEC0 24843800 */   addiu     $a0, $a0, %lo(D_80063800)
.L8000BEC4:
/* CAC4 8000BEC4 3C0400B1 */  lui        $a0, 0xb1
/* CAC8 8000BEC8 0C008C9F */  jal        func_8002327C
/* CACC 8000BECC 248440C0 */   addiu     $a0, $a0, 0x40c0
/* CAD0 8000BED0 3C05800A */  lui        $a1, %hi(D_800A0B94)
/* CAD4 8000BED4 24A50B94 */  addiu      $a1, $a1, %lo(D_800A0B94)
/* CAD8 8000BED8 0C00E1A4 */  jal        func_80038690
/* CADC 8000BEDC 02202025 */   or        $a0, $s1, $zero
/* CAE0 8000BEE0 0C000146 */  jal        func_80000518
/* CAE4 8000BEE4 00000000 */   nop
/* CAE8 8000BEE8 3C05800A */  lui        $a1, %hi(D_800A0BAC)
/* CAEC 8000BEEC 24A50BAC */  addiu      $a1, $a1, %lo(D_800A0BAC)
/* CAF0 8000BEF0 0C00E1A4 */  jal        func_80038690
/* CAF4 8000BEF4 02202025 */   or        $a0, $s1, $zero
/* CAF8 8000BEF8 3C04800A */  lui        $a0, %hi(D_800A0BBC)
/* CAFC 8000BEFC 24840BBC */  addiu      $a0, $a0, %lo(D_800A0BBC)
/* CB00 8000BF00 0C002ED2 */  jal        func_8000BB48
/* CB04 8000BF04 24050001 */   addiu     $a1, $zero, 1
/* CB08 8000BF08 0C009E3D */  jal        func_800278F4
/* CB0C 8000BF0C 00000000 */   nop
/* CB10 8000BF10 0C0077F5 */  jal        func_8001DFD4
/* CB14 8000BF14 00000000 */   nop
/* CB18 8000BF18 0C005C74 */  jal        func_800171D0
/* CB1C 8000BF1C 00000000 */   nop
/* CB20 8000BF20 0C003050 */  jal        func_8000C140
/* CB24 8000BF24 00000000 */   nop
/* CB28 8000BF28 0C003C03 */  jal        func_8000F00C
/* CB2C 8000BF2C 00000000 */   nop
/* CB30 8000BF30 0C009AAB */  jal        myfree
/* CB34 8000BF34 00000000 */   nop
/* CB38 8000BF38 3C04800A */  lui        $a0, %hi(D_800A0BC8)
/* CB3C 8000BF3C 24840BC8 */  addiu      $a0, $a0, %lo(D_800A0BC8)
/* CB40 8000BF40 0C002ED2 */  jal        func_8000BB48
/* CB44 8000BF44 24050001 */   addiu     $a1, $zero, 1
/* CB48 8000BF48 3C04800B */  lui        $a0, %hi(D_800AE4E0)
/* CB4C 8000BF4C 3C05803B */  lui        $a1, %hi(D_803B5000)
/* CB50 8000BF50 240A1000 */  addiu      $t2, $zero, 0x1000
/* CB54 8000BF54 AFAA0010 */  sw         $t2, 0x10($sp)
/* CB58 8000BF58 24A55000 */  addiu      $a1, $a1, %lo(D_803B5000)
/* CB5C 8000BF5C 8C84E4E0 */  lw         $a0, %lo(D_800AE4E0)($a0)
/* CB60 8000BF60 02403025 */  or         $a2, $s2, $zero
/* CB64 8000BF64 0C00F140 */  jal        func_8003C500
/* CB68 8000BF68 2407000C */   addiu     $a3, $zero, 0xc
/* CB6C 8000BF6C 0C002B01 */  jal        func_8000AC04
/* CB70 8000BF70 00000000 */   nop
/* CB74 8000BF74 00002025 */  or         $a0, $zero, $zero
/* CB78 8000BF78 0C001F72 */  jal        func_80007DC8
/* CB7C 8000BF7C 2405000A */   addiu     $a1, $zero, 0xa
/* CB80 8000BF80 240400B3 */  addiu      $a0, $zero, 0xb3
/* CB84 8000BF84 0C001F72 */  jal        func_80007DC8
/* CB88 8000BF88 2405000A */   addiu     $a1, $zero, 0xa
/* CB8C 8000BF8C 8E0B0000 */  lw         $t3, ($s0)
/* CB90 8000BF90 15600003 */  bnez       $t3, .L8000BFA0
/* CB94 8000BF94 00000000 */   nop
/* CB98 8000BF98 0C008568 */  jal        func_800215A0
/* CB9C 8000BF9C 00000000 */   nop
.L8000BFA0:
/* CBA0 8000BFA0 0C002B2E */  jal        func_8000ACB8
/* CBA4 8000BFA4 00000000 */   nop
/* CBA8 8000BFA8 240C0001 */  addiu      $t4, $zero, 1
/* CBAC 8000BFAC 0C002EE3 */  jal        func_8000BB8C
/* CBB0 8000BFB0 AE6C0000 */   sw        $t4, ($s3)
/* CBB4 8000BFB4 0C00305D */  jal        func_8000C174
/* CBB8 8000BFB8 AE600000 */   sw        $zero, ($s3)
/* CBBC 8000BFBC 0C005C81 */  jal        func_80017204
/* CBC0 8000BFC0 00000000 */   nop
/* CBC4 8000BFC4 0C00780A */  jal        func_8001E028
/* CBC8 8000BFC8 00000000 */   nop
/* CBCC 8000BFCC 0C009E49 */  jal        func_80027924
/* CBD0 8000BFD0 00000000 */   nop
/* CBD4 8000BFD4 4406A800 */  mfc1       $a2, $f21
/* CBD8 8000BFD8 4407A000 */  mfc1       $a3, $f20
/* CBDC 8000BFDC 0C007F04 */  jal        func_8001FC10
/* CBE0 8000BFE0 24040001 */   addiu     $a0, $zero, 1
/* CBE4 8000BFE4 0C014E00 */  jal        osViSwapBuffer
/* CBE8 8000BFE8 02402025 */   or        $a0, $s2, $zero
/* CBEC 8000BFEC 0C014D70 */  jal        osViBlack
/* CBF0 8000BFF0 24040001 */   addiu     $a0, $zero, 1
/* CBF4 8000BFF4 3C0D800B */  lui        $t5, %hi(D_800B66F0)
/* CBF8 8000BFF8 8DAD66F0 */  lw         $t5, %lo(D_800B66F0)($t5)
/* CBFC 8000BFFC 1000FF7F */  b          .L8000BDFC
/* CC00 8000C000 AE0D0000 */   sw        $t5, ($s0)
/* CC04 8000C004 00000000 */  nop
/* CC08 8000C008 00000000 */  nop
/* CC0C 8000C00C 00000000 */  nop
/* CC10 8000C010 00000000 */  nop
/* CC14 8000C014 00000000 */  nop
/* CC18 8000C018 00000000 */  nop
/* CC1C 8000C01C 00000000 */  nop
/* CC20 8000C020 8FBF0044 */  lw         $ra, 0x44($sp)
/* CC24 8000C024 D7B40028 */  ldc1       $f20, 0x28($sp)
/* CC28 8000C028 8FB00034 */  lw         $s0, 0x34($sp)
/* CC2C 8000C02C 8FB10038 */  lw         $s1, 0x38($sp)
/* CC30 8000C030 8FB2003C */  lw         $s2, 0x3c($sp)
/* CC34 8000C034 8FB30040 */  lw         $s3, 0x40($sp)
/* CC38 8000C038 03E00008 */  jr         $ra
/* CC3C 8000C03C 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8000C040
/* CC40 8000C040 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CC44 8000C044 00803825 */  or         $a3, $a0, $zero
/* CC48 8000C048 3C0E800B */  lui        $t6, %hi(D_800B6538)
/* CC4C 8000C04C AFBF001C */  sw         $ra, 0x1c($sp)
/* CC50 8000C050 25CE6538 */  addiu      $t6, $t6, %lo(D_800B6538)
/* CC54 8000C054 3C04800B */  lui        $a0, %hi(D_800B6538)
/* CC58 8000C058 3C068001 */  lui        $a2, %hi(func_8000BD70)
/* CC5C 8000C05C 240F000A */  addiu      $t7, $zero, 0xa
/* CC60 8000C060 AFAF0014 */  sw         $t7, 0x14($sp)
/* CC64 8000C064 24C6BD70 */  addiu      $a2, $a2, %lo(func_8000BD70)
/* CC68 8000C068 24846538 */  addiu      $a0, $a0, %lo(D_800B6538)
/* CC6C 8000C06C AFAE0010 */  sw         $t6, 0x10($sp)
/* CC70 8000C070 0C0142A8 */  jal        osCreateThread
/* CC74 8000C074 2405001E */   addiu     $a1, $zero, 0x1e
/* CC78 8000C078 3C04800B */  lui        $a0, %hi(D_800B6538)
/* CC7C 8000C07C 0C0142FC */  jal        osStartThread
/* CC80 8000C080 24846538 */   addiu     $a0, $a0, %lo(D_800B6538)
/* CC84 8000C084 8FBF001C */  lw         $ra, 0x1c($sp)
/* CC88 8000C088 27BD0020 */  addiu      $sp, $sp, 0x20
/* CC8C 8000C08C 03E00008 */  jr         $ra
/* CC90 8000C090 00000000 */   nop

glabel func_8000C094
/* CC94 8000C094 3C0E800B */  lui        $t6, %hi(D_800B678C)
/* CC98 8000C098 8DCE678C */  lw         $t6, %lo(D_800B678C)($t6)
/* CC9C 8000C09C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CCA0 8000C0A0 AFBF001C */  sw         $ra, 0x1c($sp)
/* CCA4 8000C0A4 51C00021 */  beql       $t6, $zero, .L8000C12C
/* CCA8 8000C0A8 8FBF001C */   lw        $ra, 0x1c($sp)
/* CCAC 8000C0AC 0C002C4D */  jal        func_8000B134
/* CCB0 8000C0B0 00000000 */   nop
/* CCB4 8000C0B4 3C04800B */  lui        $a0, %hi(D_800B6778)
/* CCB8 8000C0B8 24846778 */  addiu      $a0, $a0, %lo(D_800B6778)
/* CCBC 8000C0BC 8C850000 */  lw         $a1, ($a0)
/* CCC0 8000C0C0 240F00FF */  addiu      $t7, $zero, 0xff
/* CCC4 8000C0C4 AFAF0010 */  sw         $t7, 0x10($sp)
/* CCC8 8000C0C8 240600FF */  addiu      $a2, $zero, 0xff
/* CCCC 8000C0CC 240700FF */  addiu      $a3, $zero, 0xff
/* CCD0 8000C0D0 AFA20014 */  sw         $v0, 0x14($sp)
/* CCD4 8000C0D4 0C004B04 */  jal        func_80012C10
/* CCD8 8000C0D8 24A5FFFF */   addiu     $a1, $a1, -1
/* CCDC 8000C0DC 3C05800B */  lui        $a1, %hi(D_800ABDD0)
/* CCE0 8000C0E0 24A5BDD0 */  addiu      $a1, $a1, %lo(D_800ABDD0)
/* CCE4 8000C0E4 8CA20000 */  lw         $v0, ($a1)
/* CCE8 8000C0E8 3C19E700 */  lui        $t9, 0xe700
/* CCEC 8000C0EC 3C09E300 */  lui        $t1, 0xe300
/* CCF0 8000C0F0 24580008 */  addiu      $t8, $v0, 8
/* CCF4 8000C0F4 ACB80000 */  sw         $t8, ($a1)
/* CCF8 8000C0F8 AC400004 */  sw         $zero, 4($v0)
/* CCFC 8000C0FC AC590000 */  sw         $t9, ($v0)
/* CD00 8000C100 8CA20000 */  lw         $v0, ($a1)
/* CD04 8000C104 35290A01 */  ori        $t1, $t1, 0xa01
/* CD08 8000C108 3C04800B */  lui        $a0, %hi(D_800B6778)
/* CD0C 8000C10C 24480008 */  addiu      $t0, $v0, 8
/* CD10 8000C110 ACA80000 */  sw         $t0, ($a1)
/* CD14 8000C114 24846778 */  addiu      $a0, $a0, %lo(D_800B6778)
/* CD18 8000C118 24060002 */  addiu      $a2, $zero, 2
/* CD1C 8000C11C AC400004 */  sw         $zero, 4($v0)
/* CD20 8000C120 0C004A18 */  jal        func_80012860
/* CD24 8000C124 AC490000 */   sw        $t1, ($v0)
/* CD28 8000C128 8FBF001C */  lw         $ra, 0x1c($sp)
.L8000C12C:
/* CD2C 8000C12C 27BD0020 */  addiu      $sp, $sp, 0x20
/* CD30 8000C130 03E00008 */  jr         $ra
/* CD34 8000C134 00000000 */   nop
/* CD38 8000C138 00000000 */  nop
/* CD3C 8000C13C 00000000 */  nop
