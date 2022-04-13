.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001F680
/* 20280 8001F680 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 20284 8001F684 3C0E8009 */  lui        $t6, %hi(D_80088EE4)
/* 20288 8001F688 8DCE8EE4 */  lw         $t6, %lo(D_80088EE4)($t6)
/* 2028C 8001F68C AFB0002C */  sw         $s0, 0x2c($sp)
/* 20290 8001F690 00E08025 */  or         $s0, $a3, $zero
/* 20294 8001F694 AFBF0034 */  sw         $ra, 0x34($sp)
/* 20298 8001F698 AFB10030 */  sw         $s1, 0x30($sp)
/* 2029C 8001F69C AFA40080 */  sw         $a0, 0x80($sp)
/* 202A0 8001F6A0 AFA50084 */  sw         $a1, 0x84($sp)
/* 202A4 8001F6A4 11C00003 */  beqz       $t6, .L8001F6B4
/* 202A8 8001F6A8 AFA60088 */   sw        $a2, 0x88($sp)
/* 202AC 8001F6AC 100000C6 */  b          .L8001F9C8
/* 202B0 8001F6B0 00001025 */   or        $v0, $zero, $zero
.L8001F6B4:
/* 202B4 8001F6B4 27B10070 */  addiu      $s1, $sp, 0x70
/* 202B8 8001F6B8 3C05800B */  lui        $a1, %hi(D_800B6E00)
/* 202BC 8001F6BC 3C060003 */  lui        $a2, 3
/* 202C0 8001F6C0 34C65B60 */  ori        $a2, $a2, 0x5b60
/* 202C4 8001F6C4 24A56E00 */  addiu      $a1, $a1, %lo(D_800B6E00)
/* 202C8 8001F6C8 0C014E58 */  jal        alHeapInit
/* 202CC 8001F6CC 02202025 */   or        $a0, $s1, $zero
/* 202D0 8001F6D0 02202025 */  or         $a0, $s1, $zero
/* 202D4 8001F6D4 24050040 */  addiu      $a1, $zero, 0x40
/* 202D8 8001F6D8 0C01248D */  jal        func_80049234
/* 202DC 8001F6DC 2406000A */   addiu     $a2, $zero, 0xa
/* 202E0 8001F6E0 3C078006 */  lui        $a3, %hi(D_80063510)
/* 202E4 8001F6E4 8CE73510 */  lw         $a3, %lo(D_80063510)($a3)
/* 202E8 8001F6E8 24180004 */  addiu      $t8, $zero, 4
/* 202EC 8001F6EC AFB80010 */  sw         $t8, 0x10($sp)
/* 202F0 8001F6F0 000778C0 */  sll        $t7, $a3, 3
/* 202F4 8001F6F4 25E70002 */  addiu      $a3, $t7, 2
/* 202F8 8001F6F8 00002025 */  or         $a0, $zero, $zero
/* 202FC 8001F6FC 00002825 */  or         $a1, $zero, $zero
/* 20300 8001F700 0C014E68 */  jal        alHeapDBAlloc
/* 20304 8001F704 02203025 */   or        $a2, $s1, $zero
/* 20308 8001F708 3C198006 */  lui        $t9, %hi(D_80063510)
/* 2030C 8001F70C 8F393510 */  lw         $t9, %lo(D_80063510)($t9)
/* 20310 8001F710 AFA2006C */  sw         $v0, 0x6c($sp)
/* 20314 8001F714 3C088006 */  lui        $t0, %hi(D_80063514)
/* 20318 8001F718 AC590000 */  sw         $t9, ($v0)
/* 2031C 8001F71C 8D083514 */  lw         $t0, %lo(D_80063514)($t0)
/* 20320 8001F720 240503E8 */  addiu      $a1, $zero, 0x3e8
/* 20324 8001F724 8FAC006C */  lw         $t4, 0x6c($sp)
/* 20328 8001F728 01100019 */  multu      $t0, $s0
/* 2032C 8001F72C 2406FFF8 */  addiu      $a2, $zero, -8
/* 20330 8001F730 3C0D8006 */  lui        $t5, 0x8006
/* 20334 8001F734 3C038006 */  lui        $v1, %hi(D_80063510)
/* 20338 8001F738 24633510 */  addiu      $v1, $v1, %lo(D_80063510)
/* 2033C 8001F73C 00001025 */  or         $v0, $zero, $zero
/* 20340 8001F740 00002025 */  or         $a0, $zero, $zero
/* 20344 8001F744 00004812 */  mflo       $t1
/* 20348 8001F748 00000000 */  nop
/* 2034C 8001F74C 00000000 */  nop
/* 20350 8001F750 0125001A */  div        $zero, $t1, $a1
/* 20354 8001F754 00005012 */  mflo       $t2
/* 20358 8001F758 01465824 */  and        $t3, $t2, $a2
/* 2035C 8001F75C AD8B0004 */  sw         $t3, 4($t4)
/* 20360 8001F760 8DAD3510 */  lw         $t5, 0x3510($t5)
/* 20364 8001F764 14A00002 */  bnez       $a1, .L8001F770
/* 20368 8001F768 00000000 */   nop
/* 2036C 8001F76C 0007000D */  break      7
.L8001F770:
/* 20370 8001F770 2401FFFF */   addiu     $at, $zero, -1
/* 20374 8001F774 14A10004 */  bne        $a1, $at, .L8001F788
/* 20378 8001F778 3C018000 */   lui       $at, 0x8000
/* 2037C 8001F77C 15210002 */  bne        $t1, $at, .L8001F788
/* 20380 8001F780 00000000 */   nop
/* 20384 8001F784 0006000D */  break      6
.L8001F788:
/* 20388 8001F788 19A00049 */   blez      $t5, .L8001F8B0
/* 2038C 8001F78C 00000000 */   nop
/* 20390 8001F790 8C6E0008 */  lw         $t6, 8($v1)
.L8001F794:
/* 20394 8001F794 8FA8006C */  lw         $t0, 0x6c($sp)
/* 20398 8001F798 24840001 */  addiu      $a0, $a0, 1
/* 2039C 8001F79C 01D00019 */  multu      $t6, $s0
/* 203A0 8001F7A0 01024821 */  addu       $t1, $t0, $v0
/* 203A4 8001F7A4 24630020 */  addiu      $v1, $v1, 0x20
/* 203A8 8001F7A8 00007812 */  mflo       $t7
/* 203AC 8001F7AC 00000000 */  nop
/* 203B0 8001F7B0 00000000 */  nop
/* 203B4 8001F7B4 01E5001A */  div        $zero, $t7, $a1
/* 203B8 8001F7B8 0000C012 */  mflo       $t8
/* 203BC 8001F7BC 0306C824 */  and        $t9, $t8, $a2
/* 203C0 8001F7C0 AD390008 */  sw         $t9, 8($t1)
/* 203C4 8001F7C4 8C6AFFEC */  lw         $t2, -0x14($v1)
/* 203C8 8001F7C8 8FAE006C */  lw         $t6, 0x6c($sp)
/* 203CC 8001F7CC 14A00002 */  bnez       $a1, .L8001F7D8
/* 203D0 8001F7D0 00000000 */   nop
/* 203D4 8001F7D4 0007000D */  break      7
.L8001F7D8:
/* 203D8 8001F7D8 2401FFFF */   addiu     $at, $zero, -1
/* 203DC 8001F7DC 14A10004 */  bne        $a1, $at, .L8001F7F0
/* 203E0 8001F7E0 3C018000 */   lui       $at, 0x8000
/* 203E4 8001F7E4 15E10002 */  bne        $t7, $at, .L8001F7F0
/* 203E8 8001F7E8 00000000 */   nop
/* 203EC 8001F7EC 0006000D */  break      6
.L8001F7F0:
/* 203F0 8001F7F0 01500019 */   multu     $t2, $s0
/* 203F4 8001F7F4 01C27821 */  addu       $t7, $t6, $v0
/* 203F8 8001F7F8 00005812 */  mflo       $t3
/* 203FC 8001F7FC 00000000 */  nop
/* 20400 8001F800 00000000 */  nop
/* 20404 8001F804 0165001A */  div        $zero, $t3, $a1
/* 20408 8001F808 00006012 */  mflo       $t4
/* 2040C 8001F80C 01866824 */  and        $t5, $t4, $a2
/* 20410 8001F810 ADED000C */  sw         $t5, 0xc($t7)
/* 20414 8001F814 8FA8006C */  lw         $t0, 0x6c($sp)
/* 20418 8001F818 8C78FFF0 */  lw         $t8, -0x10($v1)
/* 2041C 8001F81C 14A00002 */  bnez       $a1, .L8001F828
/* 20420 8001F820 00000000 */   nop
/* 20424 8001F824 0007000D */  break      7
.L8001F828:
/* 20428 8001F828 2401FFFF */   addiu     $at, $zero, -1
/* 2042C 8001F82C 14A10004 */  bne        $a1, $at, .L8001F840
/* 20430 8001F830 3C018000 */   lui       $at, 0x8000
/* 20434 8001F834 15610002 */  bne        $t3, $at, .L8001F840
/* 20438 8001F838 00000000 */   nop
/* 2043C 8001F83C 0006000D */  break      6
.L8001F840:
/* 20440 8001F840 0102C821 */   addu      $t9, $t0, $v0
/* 20444 8001F844 AF380010 */  sw         $t8, 0x10($t9)
/* 20448 8001F848 8FAA006C */  lw         $t2, 0x6c($sp)
/* 2044C 8001F84C 8C69FFF4 */  lw         $t1, -0xc($v1)
/* 20450 8001F850 01425821 */  addu       $t3, $t2, $v0
/* 20454 8001F854 AD690014 */  sw         $t1, 0x14($t3)
/* 20458 8001F858 8FAE006C */  lw         $t6, 0x6c($sp)
/* 2045C 8001F85C 8C6CFFF8 */  lw         $t4, -8($v1)
/* 20460 8001F860 01C26821 */  addu       $t5, $t6, $v0
/* 20464 8001F864 ADAC0018 */  sw         $t4, 0x18($t5)
/* 20468 8001F868 8FA8006C */  lw         $t0, 0x6c($sp)
/* 2046C 8001F86C 8C6FFFFC */  lw         $t7, -4($v1)
/* 20470 8001F870 3C0D8006 */  lui        $t5, 0x8006
/* 20474 8001F874 0102C021 */  addu       $t8, $t0, $v0
/* 20478 8001F878 AF0F001C */  sw         $t7, 0x1c($t8)
/* 2047C 8001F87C 8FAA006C */  lw         $t2, 0x6c($sp)
/* 20480 8001F880 8C790000 */  lw         $t9, ($v1)
/* 20484 8001F884 01424821 */  addu       $t1, $t2, $v0
/* 20488 8001F888 AD390020 */  sw         $t9, 0x20($t1)
/* 2048C 8001F88C 8FAE006C */  lw         $t6, 0x6c($sp)
/* 20490 8001F890 8C6B0004 */  lw         $t3, 4($v1)
/* 20494 8001F894 01C26021 */  addu       $t4, $t6, $v0
/* 20498 8001F898 AD8B0024 */  sw         $t3, 0x24($t4)
/* 2049C 8001F89C 8DAD3510 */  lw         $t5, 0x3510($t5)
/* 204A0 8001F8A0 24420020 */  addiu      $v0, $v0, 0x20
/* 204A4 8001F8A4 008D082A */  slt        $at, $a0, $t5
/* 204A8 8001F8A8 5420FFBA */  bnel       $at, $zero, .L8001F794
/* 204AC 8001F8AC 8C6E0008 */   lw        $t6, 8($v1)
.L8001F8B0:
/* 204B0 8001F8B0 3C0A8005 */  lui        $t2, %hi(D_80049160)
/* 204B4 8001F8B4 24080020 */  addiu      $t0, $zero, 0x20
/* 204B8 8001F8B8 240F0080 */  addiu      $t7, $zero, 0x80
/* 204BC 8001F8BC 24180006 */  addiu      $t8, $zero, 6
/* 204C0 8001F8C0 254A9160 */  addiu      $t2, $t2, %lo(D_80049160)
/* 204C4 8001F8C4 AFA0004C */  sw         $zero, 0x4c($sp)
/* 204C8 8001F8C8 AFA80050 */  sw         $t0, 0x50($sp)
/* 204CC 8001F8CC AFAF0054 */  sw         $t7, 0x54($sp)
/* 204D0 8001F8D0 A3B80068 */  sb         $t8, 0x68($sp)
/* 204D4 8001F8D4 AFB10060 */  sw         $s1, 0x60($sp)
/* 204D8 8001F8D8 AFAA005C */  sw         $t2, 0x5c($sp)
/* 204DC 8001F8DC 0C014254 */  jal        osAiSetFrequency
/* 204E0 8001F8E0 02002025 */   or        $a0, $s0, $zero
/* 204E4 8001F8E4 3C10800F */  lui        $s0, %hi(D_800EC968)
/* 204E8 8001F8E8 2610C968 */  addiu      $s0, $s0, %lo(D_800EC968)
/* 204EC 8001F8EC AFA20064 */  sw         $v0, 0x64($sp)
/* 204F0 8001F8F0 02002025 */  or         $a0, $s0, $zero
/* 204F4 8001F8F4 0C013618 */  jal        n_alInit
/* 204F8 8001F8F8 27A5004C */   addiu     $a1, $sp, 0x4c
/* 204FC 8001F8FC 3C050085 */  lui        $a1, 0x85
/* 20500 8001F900 3C060086 */  lui        $a2, 0x86
/* 20504 8001F904 3C070086 */  lui        $a3, 0x86
/* 20508 8001F908 24E70C80 */  addiu      $a3, $a3, 0xc80
/* 2050C 8001F90C 24C60C80 */  addiu      $a2, $a2, 0xc80
/* 20510 8001F910 24A5F5F0 */  addiu      $a1, $a1, -0xa10
/* 20514 8001F914 0C0080D0 */  jal        func_80020340
/* 20518 8001F918 02202025 */   or        $a0, $s1, $zero
/* 2051C 8001F91C 3C038009 */  lui        $v1, %hi(D_80088EE0)
/* 20520 8001F920 24638EE0 */  addiu      $v1, $v1, %lo(D_80088EE0)
/* 20524 8001F924 AC620000 */  sw         $v0, ($v1)
/* 20528 8001F928 02202025 */  or         $a0, $s1, $zero
/* 2052C 8001F92C 0C007E9E */  jal        func_8001FA78
/* 20530 8001F930 00402825 */   or        $a1, $v0, $zero
/* 20534 8001F934 02002025 */  or         $a0, $s0, $zero
/* 20538 8001F938 02202825 */  or         $a1, $s1, $zero
/* 2053C 8001F93C 0C0084E3 */  jal        func_8002138C
/* 20540 8001F940 24060020 */   addiu     $a2, $zero, 0x20
/* 20544 8001F944 3C198005 */  lui        $t9, 0x8005
/* 20548 8001F948 3C098006 */  lui        $t1, %hi(D_80060120)
/* 2054C 8001F94C 3C0E800B */  lui        $t6, %hi(D_800A8130)
/* 20550 8001F950 3C01800F */  lui        $at, 0x800f
/* 20554 8001F954 25CE8130 */  addiu      $t6, $t6, %lo(D_800A8130)
/* 20558 8001F958 25290120 */  addiu      $t1, $t1, %lo(D_80060120)
/* 2055C 8001F95C 2739DBD8 */  addiu      $t9, $t9, -0x2428
/* 20560 8001F960 240B00B8 */  addiu      $t3, $zero, 0xb8
/* 20564 8001F964 240C0200 */  addiu      $t4, $zero, 0x200
/* 20568 8001F968 AC22C960 */  sw         $v0, -0x36a0($at)
/* 2056C 8001F96C AFAC0020 */  sw         $t4, 0x20($sp)
/* 20570 8001F970 AFAB001C */  sw         $t3, 0x1c($sp)
/* 20574 8001F974 AFB90010 */  sw         $t9, 0x10($sp)
/* 20578 8001F978 AFA90014 */  sw         $t1, 0x14($sp)
/* 2057C 8001F97C AFAE0018 */  sw         $t6, 0x18($sp)
/* 20580 8001F980 8FA40080 */  lw         $a0, 0x80($sp)
/* 20584 8001F984 02202825 */  or         $a1, $s1, $zero
/* 20588 8001F988 8FA60084 */  lw         $a2, 0x84($sp)
/* 2058C 8001F98C 0C0125AE */  jal        func_800496B8
/* 20590 8001F990 8FA70088 */   lw        $a3, 0x88($sp)
/* 20594 8001F994 8FA80074 */  lw         $t0, 0x74($sp)
/* 20598 8001F998 8FAF0070 */  lw         $t7, 0x70($sp)
/* 2059C 8001F99C 240D0001 */  addiu      $t5, $zero, 1
/* 205A0 8001F9A0 3C018009 */  lui        $at, %hi(D_80088EE4)
/* 205A4 8001F9A4 AC2D8EE4 */  sw         $t5, %lo(D_80088EE4)($at)
/* 205A8 8001F9A8 3C010003 */  lui        $at, 3
/* 205AC 8001F9AC 34215B61 */  ori        $at, $at, 0x5b61
/* 205B0 8001F9B0 010F1823 */  subu       $v1, $t0, $t7
/* 205B4 8001F9B4 0061082A */  slt        $at, $v1, $at
/* 205B8 8001F9B8 14200003 */  bnez       $at, .L8001F9C8
/* 205BC 8001F9BC 00601025 */   or        $v0, $v1, $zero
.L8001F9C0:
/* 205C0 8001F9C0 1000FFFF */  b          .L8001F9C0
/* 205C4 8001F9C4 00000000 */   nop
.L8001F9C8:
/* 205C8 8001F9C8 8FBF0034 */  lw         $ra, 0x34($sp)
/* 205CC 8001F9CC 8FB0002C */  lw         $s0, 0x2c($sp)
/* 205D0 8001F9D0 8FB10030 */  lw         $s1, 0x30($sp)
/* 205D4 8001F9D4 03E00008 */  jr         $ra
/* 205D8 8001F9D8 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_8001F9DC
/* 205DC 8001F9DC 3C028009 */  lui        $v0, %hi(D_80088EE4)
/* 205E0 8001F9E0 24428EE4 */  addiu      $v0, $v0, %lo(D_80088EE4)
/* 205E4 8001F9E4 8C4E0000 */  lw         $t6, ($v0)
/* 205E8 8001F9E8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 205EC 8001F9EC AFBF0014 */  sw         $ra, 0x14($sp)
/* 205F0 8001F9F0 15C00003 */  bnez       $t6, .L8001FA00
/* 205F4 8001F9F4 00000000 */   nop
/* 205F8 8001F9F8 10000007 */  b          .L8001FA18
/* 205FC 8001F9FC 00001025 */   or        $v0, $zero, $zero
.L8001FA00:
/* 20600 8001FA00 0C0125A0 */  jal        func_80049680
/* 20604 8001FA04 AC400000 */   sw        $zero, ($v0)
/* 20608 8001FA08 3C04800F */  lui        $a0, %hi(D_800EC968)
/* 2060C 8001FA0C 0C01362B */  jal        n_alClose
/* 20610 8001FA10 2484C968 */   addiu     $a0, $a0, %lo(D_800EC968)
/* 20614 8001FA14 2402FFFF */  addiu      $v0, $zero, -1
.L8001FA18:
/* 20618 8001FA18 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2061C 8001FA1C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 20620 8001FA20 03E00008 */  jr         $ra
/* 20624 8001FA24 00000000 */   nop

glabel func_8001FA28
/* 20628 8001FA28 3C018009 */  lui        $at, %hi(D_80088EE8)
/* 2062C 8001FA2C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 20630 8001FA30 00802825 */  or         $a1, $a0, $zero
/* 20634 8001FA34 AC248EE8 */  sw         $a0, %lo(D_80088EE8)($at)
/* 20638 8001FA38 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2063C 8001FA3C 3C04800F */  lui        $a0, %hi(D_800EC9C8)
/* 20640 8001FA40 2484C9C8 */  addiu      $a0, $a0, %lo(D_800EC9C8)
/* 20644 8001FA44 0C001D78 */  jal        func_800075E0
/* 20648 8001FA48 AFA50018 */   sw        $a1, 0x18($sp)
/* 2064C 8001FA4C 3C04800F */  lui        $a0, %hi(D_800EC960)
/* 20650 8001FA50 8FA50018 */  lw         $a1, 0x18($sp)
/* 20654 8001FA54 0C0084A8 */  jal        func_800212A0
/* 20658 8001FA58 8C84C960 */   lw        $a0, %lo(D_800EC960)($a0)
/* 2065C 8001FA5C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 20660 8001FA60 27BD0018 */  addiu      $sp, $sp, 0x18
/* 20664 8001FA64 03E00008 */  jr         $ra
/* 20668 8001FA68 00000000 */   nop

glabel func_8001FA6C
/* 2066C 8001FA6C 3C028009 */  lui        $v0, %hi(D_80088EE8)
/* 20670 8001FA70 03E00008 */  jr         $ra
/* 20674 8001FA74 8C428EE8 */   lw        $v0, %lo(D_80088EE8)($v0)

glabel func_8001FA78
/* 20678 8001FA78 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 2067C 8001FA7C AFB5003C */  sw         $s5, 0x3c($sp)
/* 20680 8001FA80 AFB40038 */  sw         $s4, 0x38($sp)
/* 20684 8001FA84 00A0A025 */  or         $s4, $a1, $zero
/* 20688 8001FA88 3C15800F */  lui        $s5, %hi(D_800EC9C8)
/* 2068C 8001FA8C 3C0E800F */  lui        $t6, %hi(D_800EEA18)
/* 20690 8001FA90 26B5C9C8 */  addiu      $s5, $s5, %lo(D_800EC9C8)
/* 20694 8001FA94 AFBF0044 */  sw         $ra, 0x44($sp)
/* 20698 8001FA98 AFA40048 */  sw         $a0, 0x48($sp)
/* 2069C 8001FA9C 25CEEA18 */  addiu      $t6, $t6, %lo(D_800EEA18)
/* 206A0 8001FAA0 3C05800A */  lui        $a1, 0x800a
/* 206A4 8001FAA4 AFB60040 */  sw         $s6, 0x40($sp)
/* 206A8 8001FAA8 AFB30034 */  sw         $s3, 0x34($sp)
/* 206AC 8001FAAC AFB20030 */  sw         $s2, 0x30($sp)
/* 206B0 8001FAB0 AFB1002C */  sw         $s1, 0x2c($sp)
/* 206B4 8001FAB4 AFB00028 */  sw         $s0, 0x28($sp)
/* 206B8 8001FAB8 8CA5D9C0 */  lw         $a1, -0x2640($a1)
/* 206BC 8001FABC AFAE0010 */  sw         $t6, 0x10($sp)
/* 206C0 8001FAC0 02A02025 */  or         $a0, $s5, $zero
/* 206C4 8001FAC4 24060002 */  addiu      $a2, $zero, 2
/* 206C8 8001FAC8 0C001D08 */  jal        func_80007420
/* 206CC 8001FACC 24070028 */   addiu     $a3, $zero, 0x28
/* 206D0 8001FAD0 3C10800F */  lui        $s0, 0x800f
/* 206D4 8001FAD4 3C11800F */  lui        $s1, 0x800f
/* 206D8 8001FAD8 3C12800F */  lui        $s2, %hi(D_800ED1CC)
/* 206DC 8001FADC 3C138000 */  lui        $s3, %hi(func_800059E4)
/* 206E0 8001FAE0 3C16800F */  lui        $s6, %hi(D_800EF18C)
/* 206E4 8001FAE4 26D6F18C */  addiu      $s6, $s6, %lo(D_800EF18C)
/* 206E8 8001FAE8 267359E4 */  addiu      $s3, $s3, %lo(func_800059E4)
/* 206EC 8001FAEC 2652D1CC */  addiu      $s2, $s2, %lo(D_800ED1CC)
/* 206F0 8001FAF0 2631CBF0 */  addiu      $s1, $s1, -0x3410
/* 206F4 8001FAF4 2610C9F0 */  addiu      $s0, $s0, -0x3610
.L8001FAF8:
/* 206F8 8001FAF8 0C0015F4 */  jal        func_800057D0
/* 206FC 8001FAFC 02202025 */   or        $a0, $s1, $zero
/* 20700 8001FB00 AE0007D8 */  sw         $zero, 0x7d8($s0)
/* 20704 8001FB04 8E860004 */  lw         $a2, 4($s4)
/* 20708 8001FB08 AFB30018 */  sw         $s3, 0x18($sp)
/* 2070C 8001FB0C AFB10014 */  sw         $s1, 0x14($sp)
/* 20710 8001FB10 AFB20010 */  sw         $s2, 0x10($sp)
/* 20714 8001FB14 02002025 */  or         $a0, $s0, $zero
/* 20718 8001FB18 02A02825 */  or         $a1, $s5, $zero
/* 2071C 8001FB1C 0C00182A */  jal        func_800060A8
/* 20720 8001FB20 24070014 */   addiu     $a3, $zero, 0x14
/* 20724 8001FB24 265207F0 */  addiu      $s2, $s2, 0x7f0
/* 20728 8001FB28 261007F0 */  addiu      $s0, $s0, 0x7f0
/* 2072C 8001FB2C 1656FFF2 */  bne        $s2, $s6, .L8001FAF8
/* 20730 8001FB30 263107F0 */   addiu     $s1, $s1, 0x7f0
/* 20734 8001FB34 8FBF0044 */  lw         $ra, 0x44($sp)
/* 20738 8001FB38 8FB00028 */  lw         $s0, 0x28($sp)
/* 2073C 8001FB3C 8FB1002C */  lw         $s1, 0x2c($sp)
/* 20740 8001FB40 8FB20030 */  lw         $s2, 0x30($sp)
/* 20744 8001FB44 8FB30034 */  lw         $s3, 0x34($sp)
/* 20748 8001FB48 8FB40038 */  lw         $s4, 0x38($sp)
/* 2074C 8001FB4C 8FB5003C */  lw         $s5, 0x3c($sp)
/* 20750 8001FB50 8FB60040 */  lw         $s6, 0x40($sp)
/* 20754 8001FB54 03E00008 */  jr         $ra
/* 20758 8001FB58 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8001FB5C
/* 2075C 8001FB5C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 20760 8001FB60 AFB20028 */  sw         $s2, 0x28($sp)
/* 20764 8001FB64 AFB10024 */  sw         $s1, 0x24($sp)
/* 20768 8001FB68 AFB00020 */  sw         $s0, 0x20($sp)
/* 2076C 8001FB6C 3C10800F */  lui        $s0, 0x800f
/* 20770 8001FB70 3C11800F */  lui        $s1, %hi(D_800EC9F0)
/* 20774 8001FB74 3C12800F */  lui        $s2, %hi(D_800EEBB0)
/* 20778 8001FB78 AFBF002C */  sw         $ra, 0x2c($sp)
/* 2077C 8001FB7C AFA40030 */  sw         $a0, 0x30($sp)
/* 20780 8001FB80 2652EBB0 */  addiu      $s2, $s2, %lo(D_800EEBB0)
/* 20784 8001FB84 2631C9F0 */  addiu      $s1, $s1, %lo(D_800EC9F0)
/* 20788 8001FB88 2610CBF0 */  addiu      $s0, $s0, -0x3410
.L8001FB8C:
/* 2078C 8001FB8C 0C0016DC */  jal        func_80005B70
/* 20790 8001FB90 02002025 */   or        $a0, $s0, $zero
/* 20794 8001FB94 50400015 */  beql       $v0, $zero, .L8001FBEC
/* 20798 8001FB98 261007F0 */   addiu     $s0, $s0, 0x7f0
/* 2079C 8001FB9C 3C128009 */  lui        $s2, %hi(D_80088EF4)
/* 207A0 8001FBA0 26528EF4 */  addiu      $s2, $s2, %lo(D_80088EF4)
/* 207A4 8001FBA4 8E4E0000 */  lw         $t6, ($s2)
/* 207A8 8001FBA8 02002025 */  or         $a0, $s0, $zero
/* 207AC 8001FBAC 8FA50030 */  lw         $a1, 0x30($sp)
/* 207B0 8001FBB0 0C001602 */  jal        func_80005808
/* 207B4 8001FBB4 AE2E07D8 */   sw        $t6, 0x7d8($s1)
/* 207B8 8001FBB8 3C013FF0 */  lui        $at, 0x3ff0
/* 207BC 8001FBBC 44812800 */  mtc1       $at, $f5
/* 207C0 8001FBC0 44802000 */  mtc1       $zero, $f4
/* 207C4 8001FBC4 02002025 */  or         $a0, $s0, $zero
/* 207C8 8001FBC8 24060000 */  addiu      $a2, $zero, 0
/* 207CC 8001FBCC 24070000 */  addiu      $a3, $zero, 0
/* 207D0 8001FBD0 0C00163D */  jal        func_800058F4
/* 207D4 8001FBD4 F7A40010 */   sdc1      $f4, 0x10($sp)
/* 207D8 8001FBD8 8E420000 */  lw         $v0, ($s2)
/* 207DC 8001FBDC 244F0001 */  addiu      $t7, $v0, 1
/* 207E0 8001FBE0 10000005 */  b          .L8001FBF8
/* 207E4 8001FBE4 AE4F0000 */   sw        $t7, ($s2)
/* 207E8 8001FBE8 261007F0 */  addiu      $s0, $s0, 0x7f0
.L8001FBEC:
/* 207EC 8001FBEC 1612FFE7 */  bne        $s0, $s2, .L8001FB8C
/* 207F0 8001FBF0 263107F0 */   addiu     $s1, $s1, 0x7f0
/* 207F4 8001FBF4 00001025 */  or         $v0, $zero, $zero
.L8001FBF8:
/* 207F8 8001FBF8 8FBF002C */  lw         $ra, 0x2c($sp)
/* 207FC 8001FBFC 8FB00020 */  lw         $s0, 0x20($sp)
/* 20800 8001FC00 8FB10024 */  lw         $s1, 0x24($sp)
/* 20804 8001FC04 8FB20028 */  lw         $s2, 0x28($sp)
/* 20808 8001FC08 03E00008 */  jr         $ra
/* 2080C 8001FC0C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8001FC10
/* 20810 8001FC10 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 20814 8001FC14 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 20818 8001FC18 4487A000 */  mtc1       $a3, $f20
/* 2081C 8001FC1C 4486A800 */  mtc1       $a2, $f21
/* 20820 8001FC20 308F0002 */  andi       $t7, $a0, 2
/* 20824 8001FC24 AFBF0024 */  sw         $ra, 0x24($sp)
/* 20828 8001FC28 AFB10020 */  sw         $s1, 0x20($sp)
/* 2082C 8001FC2C AFB0001C */  sw         $s0, 0x1c($sp)
/* 20830 8001FC30 11E0000F */  beqz       $t7, .L8001FC70
/* 20834 8001FC34 AFA40028 */   sw        $a0, 0x28($sp)
/* 20838 8001FC38 3C10800F */  lui        $s0, %hi(D_800EC9F0)
/* 2083C 8001FC3C 3C11800F */  lui        $s1, %hi(D_800EE9B0)
/* 20840 8001FC40 2631E9B0 */  addiu      $s1, $s1, %lo(D_800EE9B0)
/* 20844 8001FC44 2610C9F0 */  addiu      $s0, $s0, %lo(D_800EC9F0)
/* 20848 8001FC48 8E0407D8 */  lw         $a0, 0x7d8($s0)
.L8001FC4C:
/* 2084C 8001FC4C 50800006 */  beql       $a0, $zero, .L8001FC68
/* 20850 8001FC50 261007F0 */   addiu     $s0, $s0, 0x7f0
/* 20854 8001FC54 4406A800 */  mfc1       $a2, $f21
/* 20858 8001FC58 4407A000 */  mfc1       $a3, $f20
/* 2085C 8001FC5C 0C00809C */  jal        func_80020270
/* 20860 8001FC60 00000000 */   nop
/* 20864 8001FC64 261007F0 */  addiu      $s0, $s0, 0x7f0
.L8001FC68:
/* 20868 8001FC68 5611FFF8 */  bnel       $s0, $s1, .L8001FC4C
/* 2086C 8001FC6C 8E0407D8 */   lw        $a0, 0x7d8($s0)
.L8001FC70:
/* 20870 8001FC70 8FB80028 */  lw         $t8, 0x28($sp)
/* 20874 8001FC74 3C04800F */  lui        $a0, %hi(D_800EC960)
/* 20878 8001FC78 33190001 */  andi       $t9, $t8, 1
/* 2087C 8001FC7C 53200004 */  beql       $t9, $zero, .L8001FC90
/* 20880 8001FC80 8FBF0024 */   lw        $ra, 0x24($sp)
/* 20884 8001FC84 0C0082A8 */  jal        func_80020AA0
/* 20888 8001FC88 8C84C960 */   lw        $a0, %lo(D_800EC960)($a0)
/* 2088C 8001FC8C 8FBF0024 */  lw         $ra, 0x24($sp)
.L8001FC90:
/* 20890 8001FC90 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 20894 8001FC94 8FB0001C */  lw         $s0, 0x1c($sp)
/* 20898 8001FC98 8FB10020 */  lw         $s1, 0x20($sp)
/* 2089C 8001FC9C 03E00008 */  jr         $ra
/* 208A0 8001FCA0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8001FCA4
/* 208A4 8001FCA4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 208A8 8001FCA8 AFB1001C */  sw         $s1, 0x1c($sp)
/* 208AC 8001FCAC 308F0002 */  andi       $t7, $a0, 2
/* 208B0 8001FCB0 AFBF0024 */  sw         $ra, 0x24($sp)
/* 208B4 8001FCB4 AFB20020 */  sw         $s2, 0x20($sp)
/* 208B8 8001FCB8 AFB00018 */  sw         $s0, 0x18($sp)
/* 208BC 8001FCBC AFA40028 */  sw         $a0, 0x28($sp)
/* 208C0 8001FCC0 11E0000B */  beqz       $t7, .L8001FCF0
/* 208C4 8001FCC4 00008825 */   or        $s1, $zero, $zero
/* 208C8 8001FCC8 3C10800F */  lui        $s0, %hi(D_800ECBF0)
/* 208CC 8001FCCC 3C12800F */  lui        $s2, %hi(D_800EEBB0)
/* 208D0 8001FCD0 2652EBB0 */  addiu      $s2, $s2, %lo(D_800EEBB0)
/* 208D4 8001FCD4 2610CBF0 */  addiu      $s0, $s0, %lo(D_800ECBF0)
.L8001FCD8:
/* 208D8 8001FCD8 0C0016DC */  jal        func_80005B70
/* 208DC 8001FCDC 02002025 */   or        $a0, $s0, $zero
/* 208E0 8001FCE0 261007F0 */  addiu      $s0, $s0, 0x7f0
/* 208E4 8001FCE4 2C580001 */  sltiu      $t8, $v0, 1
/* 208E8 8001FCE8 1612FFFB */  bne        $s0, $s2, .L8001FCD8
/* 208EC 8001FCEC 02388821 */   addu      $s1, $s1, $t8
.L8001FCF0:
/* 208F0 8001FCF0 8FB90028 */  lw         $t9, 0x28($sp)
/* 208F4 8001FCF4 3C04800F */  lui        $a0, %hi(D_800EC960)
/* 208F8 8001FCF8 33280001 */  andi       $t0, $t9, 1
/* 208FC 8001FCFC 51000005 */  beql       $t0, $zero, .L8001FD14
/* 20900 8001FD00 8FBF0024 */   lw        $ra, 0x24($sp)
/* 20904 8001FD04 0C00842F */  jal        func_800210BC
/* 20908 8001FD08 8C84C960 */   lw        $a0, %lo(D_800EC960)($a0)
/* 2090C 8001FD0C 02228821 */  addu       $s1, $s1, $v0
/* 20910 8001FD10 8FBF0024 */  lw         $ra, 0x24($sp)
.L8001FD14:
/* 20914 8001FD14 02201025 */  or         $v0, $s1, $zero
/* 20918 8001FD18 8FB1001C */  lw         $s1, 0x1c($sp)
/* 2091C 8001FD1C 8FB00018 */  lw         $s0, 0x18($sp)
/* 20920 8001FD20 8FB20020 */  lw         $s2, 0x20($sp)
/* 20924 8001FD24 03E00008 */  jr         $ra
/* 20928 8001FD28 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8001FD2C
/* 2092C 8001FD2C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 20930 8001FD30 AFBF0014 */  sw         $ra, 0x14($sp)
/* 20934 8001FD34 14800003 */  bnez       $a0, .L8001FD44
/* 20938 8001FD38 00802825 */   or        $a1, $a0, $zero
/* 2093C 8001FD3C 10000013 */  b          .L8001FD8C
/* 20940 8001FD40 00001025 */   or        $v0, $zero, $zero
.L8001FD44:
/* 20944 8001FD44 3C02800F */  lui        $v0, %hi(D_800EC9F0)
/* 20948 8001FD48 3C03800F */  lui        $v1, %hi(D_800EE9B0)
/* 2094C 8001FD4C 2463E9B0 */  addiu      $v1, $v1, %lo(D_800EE9B0)
/* 20950 8001FD50 2442C9F0 */  addiu      $v0, $v0, %lo(D_800EC9F0)
/* 20954 8001FD54 8C4E07D8 */  lw         $t6, 0x7d8($v0)
.L8001FD58:
/* 20958 8001FD58 54AE0007 */  bnel       $a1, $t6, .L8001FD78
/* 2095C 8001FD5C 244207F0 */   addiu     $v0, $v0, 0x7f0
/* 20960 8001FD60 0C0016DC */  jal        func_80005B70
/* 20964 8001FD64 24440200 */   addiu     $a0, $v0, 0x200
/* 20968 8001FD68 2C4F0001 */  sltiu      $t7, $v0, 1
/* 2096C 8001FD6C 10000007 */  b          .L8001FD8C
/* 20970 8001FD70 01E01025 */   or        $v0, $t7, $zero
/* 20974 8001FD74 244207F0 */  addiu      $v0, $v0, 0x7f0
.L8001FD78:
/* 20978 8001FD78 5443FFF7 */  bnel       $v0, $v1, .L8001FD58
/* 2097C 8001FD7C 8C4E07D8 */   lw        $t6, 0x7d8($v0)
/* 20980 8001FD80 3C04800F */  lui        $a0, %hi(D_800EC960)
/* 20984 8001FD84 0C008443 */  jal        func_8002110C
/* 20988 8001FD88 8C84C960 */   lw        $a0, %lo(D_800EC960)($a0)
.L8001FD8C:
/* 2098C 8001FD8C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 20990 8001FD90 27BD0018 */  addiu      $sp, $sp, 0x18
/* 20994 8001FD94 03E00008 */  jr         $ra
/* 20998 8001FD98 00000000 */   nop

glabel func_8001FD9C
/* 2099C 8001FD9C 24070058 */  addiu      $a3, $zero, 0x58
/* 209A0 8001FDA0 0087001A */  div        $zero, $a0, $a3
/* 209A4 8001FDA4 3C0E8009 */  lui        $t6, %hi(D_80088EE0)
/* 209A8 8001FDA8 8DCE8EE0 */  lw         $t6, %lo(D_80088EE0)($t6)
/* 209AC 8001FDAC 00001812 */  mflo       $v1
/* 209B0 8001FDB0 2463007C */  addiu      $v1, $v1, 0x7c
/* 209B4 8001FDB4 8DC20004 */  lw         $v0, 4($t6)
/* 209B8 8001FDB8 14E00002 */  bnez       $a3, .L8001FDC4
/* 209BC 8001FDBC 00000000 */   nop
/* 209C0 8001FDC0 0007000D */  break      7
.L8001FDC4:
/* 209C4 8001FDC4 2401FFFF */   addiu     $at, $zero, -1
/* 209C8 8001FDC8 14E10004 */  bne        $a3, $at, .L8001FDDC
/* 209CC 8001FDCC 3C018000 */   lui       $at, 0x8000
/* 209D0 8001FDD0 14810002 */  bne        $a0, $at, .L8001FDDC
/* 209D4 8001FDD4 00000000 */   nop
/* 209D8 8001FDD8 0006000D */  break      6
.L8001FDDC:
/* 209DC 8001FDDC 844F0000 */   lh        $t7, ($v0)
/* 209E0 8001FDE0 0003C080 */  sll        $t8, $v1, 2
/* 209E4 8001FDE4 0058C821 */  addu       $t9, $v0, $t8
/* 209E8 8001FDE8 006F082A */  slt        $at, $v1, $t7
/* 209EC 8001FDEC 10200014 */  beqz       $at, .L8001FE40
/* 209F0 8001FDF0 00001025 */   or        $v0, $zero, $zero
/* 209F4 8001FDF4 0087001A */  div        $zero, $a0, $a3
/* 209F8 8001FDF8 8F26000C */  lw         $a2, 0xc($t9)
/* 209FC 8001FDFC 14E00002 */  bnez       $a3, .L8001FE08
/* 20A00 8001FE00 00000000 */   nop
/* 20A04 8001FE04 0007000D */  break      7
.L8001FE08:
/* 20A08 8001FE08 2401FFFF */   addiu     $at, $zero, -1
/* 20A0C 8001FE0C 14E10004 */  bne        $a3, $at, .L8001FE20
/* 20A10 8001FE10 3C018000 */   lui       $at, 0x8000
/* 20A14 8001FE14 14810002 */  bne        $a0, $at, .L8001FE20
/* 20A18 8001FE18 00000000 */   nop
/* 20A1C 8001FE1C 0006000D */  break      6
.L8001FE20:
/* 20A20 8001FE20 84C8000E */   lh        $t0, 0xe($a2)
/* 20A24 8001FE24 00002810 */  mfhi       $a1
/* 20A28 8001FE28 00054880 */  sll        $t1, $a1, 2
/* 20A2C 8001FE2C 00A8082A */  slt        $at, $a1, $t0
/* 20A30 8001FE30 10200003 */  beqz       $at, .L8001FE40
/* 20A34 8001FE34 00C95021 */   addu      $t2, $a2, $t1
/* 20A38 8001FE38 03E00008 */  jr         $ra
/* 20A3C 8001FE3C 8D420010 */   lw        $v0, 0x10($t2)
.L8001FE40:
/* 20A40 8001FE40 03E00008 */  jr         $ra
/* 20A44 8001FE44 00000000 */   nop

glabel func_8001FE48
/* 20A48 8001FE48 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 20A4C 8001FE4C AFBF0014 */  sw         $ra, 0x14($sp)
/* 20A50 8001FE50 0C007F67 */  jal        func_8001FD9C
/* 20A54 8001FE54 00000000 */   nop
/* 20A58 8001FE58 3C04800F */  lui        $a0, %hi(D_800EC960)
/* 20A5C 8001FE5C 8C84C960 */  lw         $a0, %lo(D_800EC960)($a0)
/* 20A60 8001FE60 0C0081AC */  jal        func_800206B0
/* 20A64 8001FE64 00402825 */   or        $a1, $v0, $zero
/* 20A68 8001FE68 8FBF0014 */  lw         $ra, 0x14($sp)
/* 20A6C 8001FE6C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 20A70 8001FE70 03E00008 */  jr         $ra
/* 20A74 8001FE74 00000000 */   nop

glabel func_8001FE78
/* 20A78 8001FE78 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 20A7C 8001FE7C 00A03025 */  or         $a2, $a1, $zero
/* 20A80 8001FE80 00802825 */  or         $a1, $a0, $zero
/* 20A84 8001FE84 AFA40018 */  sw         $a0, 0x18($sp)
/* 20A88 8001FE88 AFBF0014 */  sw         $ra, 0x14($sp)
/* 20A8C 8001FE8C 3C04800F */  lui        $a0, %hi(D_800EC960)
/* 20A90 8001FE90 8C84C960 */  lw         $a0, %lo(D_800EC960)($a0)
/* 20A94 8001FE94 0C008391 */  jal        func_80020E44
/* 20A98 8001FE98 2407FFFF */   addiu     $a3, $zero, -1
/* 20A9C 8001FE9C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 20AA0 8001FEA0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 20AA4 8001FEA4 03E00008 */  jr         $ra
/* 20AA8 8001FEA8 00000000 */   nop

glabel func_8001FEAC
/* 20AAC 8001FEAC 00A03025 */  or         $a2, $a1, $zero
/* 20AB0 8001FEB0 000671C0 */  sll        $t6, $a2, 7
/* 20AB4 8001FEB4 01C67023 */  subu       $t6, $t6, $a2
/* 20AB8 8001FEB8 01C03025 */  or         $a2, $t6, $zero
/* 20ABC 8001FEBC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 20AC0 8001FEC0 AFA40018 */  sw         $a0, 0x18($sp)
/* 20AC4 8001FEC4 00802825 */  or         $a1, $a0, $zero
/* 20AC8 8001FEC8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 20ACC 8001FECC 04C10003 */  bgez       $a2, .L8001FEDC
/* 20AD0 8001FED0 00067A03 */   sra       $t7, $a2, 8
/* 20AD4 8001FED4 24C100FF */  addiu      $at, $a2, 0xff
/* 20AD8 8001FED8 00017A03 */  sra        $t7, $at, 8
.L8001FEDC:
/* 20ADC 8001FEDC 3C04800F */  lui        $a0, %hi(D_800EC960)
/* 20AE0 8001FEE0 01E03025 */  or         $a2, $t7, $zero
/* 20AE4 8001FEE4 0C008312 */  jal        func_80020C48
/* 20AE8 8001FEE8 8C84C960 */   lw        $a0, %lo(D_800EC960)($a0)
/* 20AEC 8001FEEC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 20AF0 8001FEF0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 20AF4 8001FEF4 03E00008 */  jr         $ra
/* 20AF8 8001FEF8 00000000 */   nop

glabel func_8001FEFC
/* 20AFC 8001FEFC 3C0142C8 */  lui        $at, 0x42c8
/* 20B00 8001FF00 44856000 */  mtc1       $a1, $f12
/* 20B04 8001FF04 44812000 */  mtc1       $at, $f4
/* 20B08 8001FF08 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 20B0C 8001FF0C AFA40018 */  sw         $a0, 0x18($sp)
/* 20B10 8001FF10 46046182 */  mul.s      $f6, $f12, $f4
/* 20B14 8001FF14 AFBF0014 */  sw         $ra, 0x14($sp)
/* 20B18 8001FF18 4600320D */  trunc.w.s  $f8, $f6
/* 20B1C 8001FF1C 44044000 */  mfc1       $a0, $f8
/* 20B20 8001FF20 0C014CBC */  jal        alCents2Ratio
/* 20B24 8001FF24 00000000 */   nop
/* 20B28 8001FF28 460002A1 */  cvt.d.s    $f10, $f0
/* 20B2C 8001FF2C 3C04800F */  lui        $a0, %hi(D_800EC960)
/* 20B30 8001FF30 44075000 */  mfc1       $a3, $f10
/* 20B34 8001FF34 44065800 */  mfc1       $a2, $f11
/* 20B38 8001FF38 8C84C960 */  lw         $a0, %lo(D_800EC960)($a0)
/* 20B3C 8001FF3C 0C008350 */  jal        func_80020D40
/* 20B40 8001FF40 8FA50018 */   lw        $a1, 0x18($sp)
/* 20B44 8001FF44 8FBF0014 */  lw         $ra, 0x14($sp)
/* 20B48 8001FF48 27BD0018 */  addiu      $sp, $sp, 0x18
/* 20B4C 8001FF4C 03E00008 */  jr         $ra
/* 20B50 8001FF50 00000000 */   nop

glabel func_8001FF54
/* 20B54 8001FF54 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 20B58 8001FF58 00A03025 */  or         $a2, $a1, $zero
/* 20B5C 8001FF5C 00802825 */  or         $a1, $a0, $zero
/* 20B60 8001FF60 AFA40018 */  sw         $a0, 0x18($sp)
/* 20B64 8001FF64 AFBF0014 */  sw         $ra, 0x14($sp)
/* 20B68 8001FF68 3C04800F */  lui        $a0, %hi(D_800EC960)
/* 20B6C 8001FF6C 0C0083F6 */  jal        func_80020FD8
/* 20B70 8001FF70 8C84C960 */   lw        $a0, %lo(D_800EC960)($a0)
/* 20B74 8001FF74 8FBF0014 */  lw         $ra, 0x14($sp)
/* 20B78 8001FF78 27BD0018 */  addiu      $sp, $sp, 0x18
/* 20B7C 8001FF7C 03E00008 */  jr         $ra
/* 20B80 8001FF80 00000000 */   nop

glabel func_8001FF84
/* 20B84 8001FF84 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 20B88 8001FF88 44876000 */  mtc1       $a3, $f12
/* 20B8C 8001FF8C 44866800 */  mtc1       $a2, $f13
/* 20B90 8001FF90 14800003 */  bnez       $a0, .L8001FFA0
/* 20B94 8001FF94 AFBF0014 */   sw        $ra, 0x14($sp)
/* 20B98 8001FF98 10000012 */  b          .L8001FFE4
/* 20B9C 8001FF9C 00001025 */   or        $v0, $zero, $zero
.L8001FFA0:
/* 20BA0 8001FFA0 3C02800F */  lui        $v0, %hi(D_800EC9F0)
/* 20BA4 8001FFA4 3C03800F */  lui        $v1, %hi(D_800EE9B0)
/* 20BA8 8001FFA8 2463E9B0 */  addiu      $v1, $v1, %lo(D_800EE9B0)
/* 20BAC 8001FFAC 2442C9F0 */  addiu      $v0, $v0, %lo(D_800EC9F0)
/* 20BB0 8001FFB0 8C4E07D8 */  lw         $t6, 0x7d8($v0)
.L8001FFB4:
/* 20BB4 8001FFB4 548E0008 */  bnel       $a0, $t6, .L8001FFD8
/* 20BB8 8001FFB8 244207F0 */   addiu     $v0, $v0, 0x7f0
/* 20BBC 8001FFBC 44066800 */  mfc1       $a2, $f13
/* 20BC0 8001FFC0 44076000 */  mfc1       $a3, $f12
/* 20BC4 8001FFC4 0C0016E4 */  jal        func_80005B90
/* 20BC8 8001FFC8 24440200 */   addiu     $a0, $v0, 0x200
/* 20BCC 8001FFCC 10000005 */  b          .L8001FFE4
/* 20BD0 8001FFD0 24020001 */   addiu     $v0, $zero, 1
/* 20BD4 8001FFD4 244207F0 */  addiu      $v0, $v0, 0x7f0
.L8001FFD8:
/* 20BD8 8001FFD8 5443FFF6 */  bnel       $v0, $v1, .L8001FFB4
/* 20BDC 8001FFDC 8C4E07D8 */   lw        $t6, 0x7d8($v0)
/* 20BE0 8001FFE0 00001025 */  or         $v0, $zero, $zero
.L8001FFE4:
/* 20BE4 8001FFE4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 20BE8 8001FFE8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 20BEC 8001FFEC 03E00008 */  jr         $ra
/* 20BF0 8001FFF0 00000000 */   nop

glabel func_8001FFF4
/* 20BF4 8001FFF4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 20BF8 8001FFF8 14800006 */  bnez       $a0, .L80020014
/* 20BFC 8001FFFC AFBF0014 */   sw        $ra, 0x14($sp)
/* 20C00 80020000 3C01BFF0 */  lui        $at, 0xbff0
/* 20C04 80020004 44810800 */  mtc1       $at, $f1
/* 20C08 80020008 44800000 */  mtc1       $zero, $f0
/* 20C0C 8002000C 10000014 */  b          .L80020060
/* 20C10 80020010 8FBF0014 */   lw        $ra, 0x14($sp)
.L80020014:
/* 20C14 80020014 3C02800F */  lui        $v0, %hi(D_800EC9F0)
/* 20C18 80020018 3C03800F */  lui        $v1, %hi(D_800EE9B0)
/* 20C1C 8002001C 2463E9B0 */  addiu      $v1, $v1, %lo(D_800EE9B0)
/* 20C20 80020020 2442C9F0 */  addiu      $v0, $v0, %lo(D_800EC9F0)
/* 20C24 80020024 8C4E07D8 */  lw         $t6, 0x7d8($v0)
.L80020028:
/* 20C28 80020028 548E0006 */  bnel       $a0, $t6, .L80020044
/* 20C2C 8002002C 244207F0 */   addiu     $v0, $v0, 0x7f0
/* 20C30 80020030 0C0016F0 */  jal        func_80005BC0
/* 20C34 80020034 24440200 */   addiu     $a0, $v0, 0x200
/* 20C38 80020038 10000009 */  b          .L80020060
/* 20C3C 8002003C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 20C40 80020040 244207F0 */  addiu      $v0, $v0, 0x7f0
.L80020044:
/* 20C44 80020044 5443FFF8 */  bnel       $v0, $v1, .L80020028
/* 20C48 80020048 8C4E07D8 */   lw        $t6, 0x7d8($v0)
/* 20C4C 8002004C 3C01BFF0 */  lui        $at, 0xbff0
/* 20C50 80020050 44810800 */  mtc1       $at, $f1
/* 20C54 80020054 44800000 */  mtc1       $zero, $f0
/* 20C58 80020058 00000000 */  nop
/* 20C5C 8002005C 8FBF0014 */  lw         $ra, 0x14($sp)
.L80020060:
/* 20C60 80020060 27BD0018 */  addiu      $sp, $sp, 0x18
/* 20C64 80020064 03E00008 */  jr         $ra
/* 20C68 80020068 00000000 */   nop

glabel func_8002006C
/* 20C6C 8002006C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 20C70 80020070 308F0002 */  andi       $t7, $a0, 2
/* 20C74 80020074 AFBF0014 */  sw         $ra, 0x14($sp)
/* 20C78 80020078 AFA40018 */  sw         $a0, 0x18($sp)
/* 20C7C 8002007C 11E0000C */  beqz       $t7, .L800200B0
/* 20C80 80020080 AFA5001C */   sw        $a1, 0x1c($sp)
/* 20C84 80020084 44852000 */  mtc1       $a1, $f4
/* 20C88 80020088 3C01800A */  lui        $at, %hi(D_800A4880)
/* 20C8C 8002008C D4284880 */  ldc1       $f8, %lo(D_800A4880)($at)
/* 20C90 80020090 468021A1 */  cvt.d.w    $f6, $f4
/* 20C94 80020094 3C04800F */  lui        $a0, %hi(D_800EC9C8)
/* 20C98 80020098 2484C9C8 */  addiu      $a0, $a0, %lo(D_800EC9C8)
/* 20C9C 8002009C 46283283 */  div.d      $f10, $f6, $f8
/* 20CA0 800200A0 44075000 */  mfc1       $a3, $f10
/* 20CA4 800200A4 44065800 */  mfc1       $a2, $f11
/* 20CA8 800200A8 0C001D4E */  jal        func_80007538
/* 20CAC 800200AC 00000000 */   nop
.L800200B0:
/* 20CB0 800200B0 8FB90018 */  lw         $t9, 0x18($sp)
/* 20CB4 800200B4 3C04800F */  lui        $a0, 0x800f
/* 20CB8 800200B8 8FA5001C */  lw         $a1, 0x1c($sp)
/* 20CBC 800200BC 33280001 */  andi       $t0, $t9, 1
/* 20CC0 800200C0 51000004 */  beql       $t0, $zero, .L800200D4
/* 20CC4 800200C4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 20CC8 800200C8 0C0084E0 */  jal        func_80021380
/* 20CCC 800200CC 8C84C960 */   lw        $a0, -0x36a0($a0)
/* 20CD0 800200D0 8FBF0014 */  lw         $ra, 0x14($sp)
.L800200D4:
/* 20CD4 800200D4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 20CD8 800200D8 03E00008 */  jr         $ra
/* 20CDC 800200DC 00000000 */   nop

glabel func_800200E0
/* 20CE0 800200E0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 20CE4 800200E4 F7BA0030 */  sdc1       $f26, 0x30($sp)
/* 20CE8 800200E8 4487D000 */  mtc1       $a3, $f26
/* 20CEC 800200EC 4486D800 */  mtc1       $a2, $f27
/* 20CF0 800200F0 AFBF004C */  sw         $ra, 0x4c($sp)
/* 20CF4 800200F4 AFB30048 */  sw         $s3, 0x48($sp)
/* 20CF8 800200F8 AFB20044 */  sw         $s2, 0x44($sp)
/* 20CFC 800200FC AFB10040 */  sw         $s1, 0x40($sp)
/* 20D00 80020100 AFB0003C */  sw         $s0, 0x3c($sp)
/* 20D04 80020104 F7B80028 */  sdc1       $f24, 0x28($sp)
/* 20D08 80020108 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 20D0C 8002010C 0C007ED7 */  jal        func_8001FB5C
/* 20D10 80020110 F7B40018 */   sdc1      $f20, 0x18($sp)
/* 20D14 80020114 3C013FF0 */  lui        $at, 0x3ff0
/* 20D18 80020118 4481C800 */  mtc1       $at, $f25
/* 20D1C 8002011C 3C01800A */  lui        $at, 0x800a
/* 20D20 80020120 3C10800F */  lui        $s0, 0x800f
/* 20D24 80020124 3C12800F */  lui        $s2, %hi(D_800EE9B0)
/* 20D28 80020128 4480C000 */  mtc1       $zero, $f24
/* 20D2C 8002012C 4480A800 */  mtc1       $zero, $f21
/* 20D30 80020130 4480A000 */  mtc1       $zero, $f20
/* 20D34 80020134 00409825 */  or         $s3, $v0, $zero
/* 20D38 80020138 2652E9B0 */  addiu      $s2, $s2, %lo(D_800EE9B0)
/* 20D3C 8002013C 2610C9F0 */  addiu      $s0, $s0, -0x3610
/* 20D40 80020140 D4364888 */  ldc1       $f22, 0x4888($at)
/* 20D44 80020144 8E0E07D8 */  lw         $t6, 0x7d8($s0)
.L80020148:
/* 20D48 80020148 26110200 */  addiu      $s1, $s0, 0x200
/* 20D4C 8002014C 02202025 */  or         $a0, $s1, $zero
/* 20D50 80020150 566E000B */  bnel       $s3, $t6, .L80020180
/* 20D54 80020154 261007F0 */   addiu     $s0, $s0, 0x7f0
/* 20D58 80020158 4406A800 */  mfc1       $a2, $f21
/* 20D5C 8002015C 4407A000 */  mfc1       $a3, $f20
/* 20D60 80020160 0C00163D */  jal        func_800058F4
/* 20D64 80020164 F7B60010 */   sdc1      $f22, 0x10($sp)
/* 20D68 80020168 4406D800 */  mfc1       $a2, $f27
/* 20D6C 8002016C 4407D000 */  mfc1       $a3, $f26
/* 20D70 80020170 02202025 */  or         $a0, $s1, $zero
/* 20D74 80020174 0C00163D */  jal        func_800058F4
/* 20D78 80020178 F7B80010 */   sdc1      $f24, 0x10($sp)
/* 20D7C 8002017C 261007F0 */  addiu      $s0, $s0, 0x7f0
.L80020180:
/* 20D80 80020180 5612FFF1 */  bnel       $s0, $s2, .L80020148
/* 20D84 80020184 8E0E07D8 */   lw        $t6, 0x7d8($s0)
/* 20D88 80020188 8FBF004C */  lw         $ra, 0x4c($sp)
/* 20D8C 8002018C 02601025 */  or         $v0, $s3, $zero
/* 20D90 80020190 8FB30048 */  lw         $s3, 0x48($sp)
/* 20D94 80020194 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 20D98 80020198 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 20D9C 8002019C D7B80028 */  ldc1       $f24, 0x28($sp)
/* 20DA0 800201A0 D7BA0030 */  ldc1       $f26, 0x30($sp)
/* 20DA4 800201A4 8FB0003C */  lw         $s0, 0x3c($sp)
/* 20DA8 800201A8 8FB10040 */  lw         $s1, 0x40($sp)
/* 20DAC 800201AC 8FB20044 */  lw         $s2, 0x44($sp)
/* 20DB0 800201B0 03E00008 */  jr         $ra
/* 20DB4 800201B4 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_800201B8
/* 20DB8 800201B8 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 20DBC 800201BC F7B40018 */  sdc1       $f20, 0x18($sp)
/* 20DC0 800201C0 4487A000 */  mtc1       $a3, $f20
/* 20DC4 800201C4 4486A800 */  mtc1       $a2, $f21
/* 20DC8 800201C8 AFB30038 */  sw         $s3, 0x38($sp)
/* 20DCC 800201CC 00809825 */  or         $s3, $a0, $zero
/* 20DD0 800201D0 AFBF003C */  sw         $ra, 0x3c($sp)
/* 20DD4 800201D4 AFB20034 */  sw         $s2, 0x34($sp)
/* 20DD8 800201D8 AFB10030 */  sw         $s1, 0x30($sp)
/* 20DDC 800201DC AFB0002C */  sw         $s0, 0x2c($sp)
/* 20DE0 800201E0 14800003 */  bnez       $a0, .L800201F0
/* 20DE4 800201E4 F7B60020 */   sdc1      $f22, 0x20($sp)
/* 20DE8 800201E8 10000018 */  b          .L8002024C
/* 20DEC 800201EC 00001025 */   or        $v0, $zero, $zero
.L800201F0:
/* 20DF0 800201F0 3C10800F */  lui        $s0, %hi(D_800EC9F0)
/* 20DF4 800201F4 3C01800A */  lui        $at, %hi(D_800A4890)
/* 20DF8 800201F8 3C12800F */  lui        $s2, %hi(D_800EE9B0)
/* 20DFC 800201FC 2652E9B0 */  addiu      $s2, $s2, %lo(D_800EE9B0)
/* 20E00 80020200 D4364890 */  ldc1       $f22, %lo(D_800A4890)($at)
/* 20E04 80020204 2610C9F0 */  addiu      $s0, $s0, %lo(D_800EC9F0)
/* 20E08 80020208 8E0E07D8 */  lw         $t6, 0x7d8($s0)
.L8002020C:
/* 20E0C 8002020C 26110200 */  addiu      $s1, $s0, 0x200
/* 20E10 80020210 02202025 */  or         $a0, $s1, $zero
/* 20E14 80020214 566E000A */  bnel       $s3, $t6, .L80020240
/* 20E18 80020218 261007F0 */   addiu     $s0, $s0, 0x7f0
/* 20E1C 8002021C 4406A800 */  mfc1       $a2, $f21
/* 20E20 80020220 4407A000 */  mfc1       $a3, $f20
/* 20E24 80020224 0C00163D */  jal        func_800058F4
/* 20E28 80020228 F7B60010 */   sdc1      $f22, 0x10($sp)
/* 20E2C 8002022C 4406A800 */  mfc1       $a2, $f21
/* 20E30 80020230 4407A000 */  mfc1       $a3, $f20
/* 20E34 80020234 0C001619 */  jal        func_80005864
/* 20E38 80020238 02202025 */   or        $a0, $s1, $zero
/* 20E3C 8002023C 261007F0 */  addiu      $s0, $s0, 0x7f0
.L80020240:
/* 20E40 80020240 5612FFF2 */  bnel       $s0, $s2, .L8002020C
/* 20E44 80020244 8E0E07D8 */   lw        $t6, 0x7d8($s0)
/* 20E48 80020248 00001025 */  or         $v0, $zero, $zero
.L8002024C:
/* 20E4C 8002024C 8FBF003C */  lw         $ra, 0x3c($sp)
/* 20E50 80020250 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 20E54 80020254 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 20E58 80020258 8FB0002C */  lw         $s0, 0x2c($sp)
/* 20E5C 8002025C 8FB10030 */  lw         $s1, 0x30($sp)
/* 20E60 80020260 8FB20034 */  lw         $s2, 0x34($sp)
/* 20E64 80020264 8FB30038 */  lw         $s3, 0x38($sp)
/* 20E68 80020268 03E00008 */  jr         $ra
/* 20E6C 8002026C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_80020270
/* 20E70 80020270 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 20E74 80020274 44876000 */  mtc1       $a3, $f12
/* 20E78 80020278 44866800 */  mtc1       $a2, $f13
/* 20E7C 8002027C AFBF0014 */  sw         $ra, 0x14($sp)
/* 20E80 80020280 AFA40018 */  sw         $a0, 0x18($sp)
/* 20E84 80020284 14800003 */  bnez       $a0, .L80020294
/* 20E88 80020288 00802825 */   or        $a1, $a0, $zero
/* 20E8C 8002028C 1000000D */  b          .L800202C4
/* 20E90 80020290 00001025 */   or        $v0, $zero, $zero
.L80020294:
/* 20E94 80020294 3C04800F */  lui        $a0, %hi(D_800EC960)
/* 20E98 80020298 8C84C960 */  lw         $a0, %lo(D_800EC960)($a0)
/* 20E9C 8002029C AFA50018 */  sw         $a1, 0x18($sp)
/* 20EA0 800202A0 0C0082DA */  jal        func_80020B68
/* 20EA4 800202A4 F7AC0020 */   sdc1      $f12, 0x20($sp)
/* 20EA8 800202A8 D7AC0020 */  ldc1       $f12, 0x20($sp)
/* 20EAC 800202AC 8FA40018 */  lw         $a0, 0x18($sp)
/* 20EB0 800202B0 44076000 */  mfc1       $a3, $f12
/* 20EB4 800202B4 44066800 */  mfc1       $a2, $f13
/* 20EB8 800202B8 0C00806E */  jal        func_800201B8
/* 20EBC 800202BC 00000000 */   nop
/* 20EC0 800202C0 00001025 */  or         $v0, $zero, $zero
.L800202C4:
/* 20EC4 800202C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 20EC8 800202C8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 20ECC 800202CC 03E00008 */  jr         $ra
/* 20ED0 800202D0 00000000 */   nop

glabel func_800202D4
/* 20ED4 800202D4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 20ED8 800202D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 20EDC 800202DC AFA00018 */  sw         $zero, 0x18($sp)
/* 20EE0 800202E0 0C014E80 */  jal        osSetIntMask
/* 20EE4 800202E4 24040001 */   addiu     $a0, $zero, 1
/* 20EE8 800202E8 3C0F800F */  lui        $t7, %hi(D_800EC980)
/* 20EEC 800202EC 8DEFC980 */  lw         $t7, %lo(D_800EC980)($t7)
/* 20EF0 800202F0 3C0E800F */  lui        $t6, %hi(D_800EC980)
/* 20EF4 800202F4 8FA50018 */  lw         $a1, 0x18($sp)
/* 20EF8 800202F8 00402025 */  or         $a0, $v0, $zero
/* 20EFC 800202FC 11E00006 */  beqz       $t7, .L80020318
/* 20F00 80020300 25CEC980 */   addiu     $t6, $t6, %lo(D_800EC980)
/* 20F04 80020304 8DC20000 */  lw         $v0, ($t6)
/* 20F08 80020308 8C420000 */  lw         $v0, ($v0)
.L8002030C:
/* 20F0C 8002030C 24A50001 */  addiu      $a1, $a1, 1
/* 20F10 80020310 5440FFFE */  bnel       $v0, $zero, .L8002030C
/* 20F14 80020314 8C420000 */   lw        $v0, ($v0)
.L80020318:
/* 20F18 80020318 0C014E80 */  jal        osSetIntMask
/* 20F1C 8002031C AFA50018 */   sw        $a1, 0x18($sp)
/* 20F20 80020320 8FBF0014 */  lw         $ra, 0x14($sp)
/* 20F24 80020324 8FA20018 */  lw         $v0, 0x18($sp)
/* 20F28 80020328 27BD0020 */  addiu      $sp, $sp, 0x20
/* 20F2C 8002032C 03E00008 */  jr         $ra
/* 20F30 80020330 00000000 */   nop
/* 20F34 80020334 00000000 */  nop
/* 20F38 80020338 00000000 */  nop
/* 20F3C 8002033C 00000000 */  nop
