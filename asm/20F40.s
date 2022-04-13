.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80020340
/* 20F40 80020340 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 20F44 80020344 AFA50034 */  sw         $a1, 0x34($sp)
/* 20F48 80020348 AFA60038 */  sw         $a2, 0x38($sp)
/* 20F4C 8002034C 8FAE0038 */  lw         $t6, 0x38($sp)
/* 20F50 80020350 8FAF0034 */  lw         $t7, 0x34($sp)
/* 20F54 80020354 00803025 */  or         $a2, $a0, $zero
/* 20F58 80020358 AFBF001C */  sw         $ra, 0x1c($sp)
/* 20F5C 8002035C AFA40030 */  sw         $a0, 0x30($sp)
/* 20F60 80020360 AFA7003C */  sw         $a3, 0x3c($sp)
/* 20F64 80020364 01CF1023 */  subu       $v0, $t6, $t7
/* 20F68 80020368 AFA20010 */  sw         $v0, 0x10($sp)
/* 20F6C 8002036C AFA20024 */  sw         $v0, 0x24($sp)
/* 20F70 80020370 24070001 */  addiu      $a3, $zero, 1
/* 20F74 80020374 00002025 */  or         $a0, $zero, $zero
/* 20F78 80020378 0C014E68 */  jal        alHeapDBAlloc
/* 20F7C 8002037C 00002825 */   or        $a1, $zero, $zero
/* 20F80 80020380 AFA20028 */  sw         $v0, 0x28($sp)
/* 20F84 80020384 8FA40034 */  lw         $a0, 0x34($sp)
/* 20F88 80020388 00402825 */  or         $a1, $v0, $zero
/* 20F8C 8002038C 0C00DEC7 */  jal        func_80037B1C
/* 20F90 80020390 8FA60024 */   lw        $a2, 0x24($sp)
/* 20F94 80020394 8FA40028 */  lw         $a0, 0x28($sp)
/* 20F98 80020398 0C0080FD */  jal        func_800203F4
/* 20F9C 8002039C 8FA5003C */   lw        $a1, 0x3c($sp)
/* 20FA0 800203A0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 20FA4 800203A4 8FA20028 */  lw         $v0, 0x28($sp)
/* 20FA8 800203A8 27BD0030 */  addiu      $sp, $sp, 0x30
/* 20FAC 800203AC 03E00008 */  jr         $ra
/* 20FB0 800203B0 00000000 */   nop

glabel alSeqFileNew
/* 20FB4 800203B4 848E0002 */  lh         $t6, 2($a0)
/* 20FB8 800203B8 00001025 */  or         $v0, $zero, $zero
/* 20FBC 800203BC 00801825 */  or         $v1, $a0, $zero
/* 20FC0 800203C0 19C0000A */  blez       $t6, .L800203EC
/* 20FC4 800203C4 00000000 */   nop
/* 20FC8 800203C8 8C6F0004 */  lw         $t7, 4($v1)
.L800203CC:
/* 20FCC 800203CC 24420001 */  addiu      $v0, $v0, 1
/* 20FD0 800203D0 24630008 */  addiu      $v1, $v1, 8
/* 20FD4 800203D4 01E5C021 */  addu       $t8, $t7, $a1
/* 20FD8 800203D8 AC78FFFC */  sw         $t8, -4($v1)
/* 20FDC 800203DC 84990002 */  lh         $t9, 2($a0)
/* 20FE0 800203E0 0059082A */  slt        $at, $v0, $t9
/* 20FE4 800203E4 5420FFF9 */  bnel       $at, $zero, .L800203CC
/* 20FE8 800203E8 8C6F0004 */   lw        $t7, 4($v1)
.L800203EC:
/* 20FEC 800203EC 03E00008 */  jr         $ra
/* 20FF0 800203F0 00000000 */   nop

glabel func_800203F4
/* 20FF4 800203F4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 20FF8 800203F8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 20FFC 800203FC AFB30020 */  sw         $s3, 0x20($sp)
/* 21000 80020400 AFB2001C */  sw         $s2, 0x1c($sp)
/* 21004 80020404 AFB10018 */  sw         $s1, 0x18($sp)
/* 21008 80020408 AFB00014 */  sw         $s0, 0x14($sp)
/* 2100C 8002040C 848E0002 */  lh         $t6, 2($a0)
/* 21010 80020410 00808825 */  or         $s1, $a0, $zero
/* 21014 80020414 00A09825 */  or         $s3, $a1, $zero
/* 21018 80020418 19C0000E */  blez       $t6, .L80020454
/* 2101C 8002041C 00009025 */   or        $s2, $zero, $zero
/* 21020 80020420 00808025 */  or         $s0, $a0, $zero
/* 21024 80020424 8E0F0004 */  lw         $t7, 4($s0)
.L80020428:
/* 21028 80020428 02202825 */  or         $a1, $s1, $zero
/* 2102C 8002042C 02603025 */  or         $a2, $s3, $zero
/* 21030 80020430 01F12021 */  addu       $a0, $t7, $s1
/* 21034 80020434 0C00811C */  jal        func_80020470
/* 21038 80020438 AE040004 */   sw        $a0, 4($s0)
/* 2103C 8002043C 86390002 */  lh         $t9, 2($s1)
/* 21040 80020440 26520001 */  addiu      $s2, $s2, 1
/* 21044 80020444 26100004 */  addiu      $s0, $s0, 4
/* 21048 80020448 0259082A */  slt        $at, $s2, $t9
/* 2104C 8002044C 5420FFF6 */  bnel       $at, $zero, .L80020428
/* 21050 80020450 8E0F0004 */   lw        $t7, 4($s0)
.L80020454:
/* 21054 80020454 8FBF0024 */  lw         $ra, 0x24($sp)
/* 21058 80020458 8FB00014 */  lw         $s0, 0x14($sp)
/* 2105C 8002045C 8FB10018 */  lw         $s1, 0x18($sp)
/* 21060 80020460 8FB2001C */  lw         $s2, 0x1c($sp)
/* 21064 80020464 8FB30020 */  lw         $s3, 0x20($sp)
/* 21068 80020468 03E00008 */  jr         $ra
/* 2106C 8002046C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80020470
/* 21070 80020470 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 21074 80020474 AFBF002C */  sw         $ra, 0x2c($sp)
/* 21078 80020478 AFB40028 */  sw         $s4, 0x28($sp)
/* 2107C 8002047C AFB30024 */  sw         $s3, 0x24($sp)
/* 21080 80020480 AFB20020 */  sw         $s2, 0x20($sp)
/* 21084 80020484 AFB1001C */  sw         $s1, 0x1c($sp)
/* 21088 80020488 AFB00018 */  sw         $s0, 0x18($sp)
/* 2108C 8002048C 8C820008 */  lw         $v0, 8($a0)
/* 21090 80020490 00A09025 */  or         $s2, $a1, $zero
/* 21094 80020494 00809825 */  or         $s3, $a0, $zero
/* 21098 80020498 10400004 */  beqz       $v0, .L800204AC
/* 2109C 8002049C 00C0A025 */   or        $s4, $a2, $zero
/* 210A0 800204A0 00027000 */  sll        $t6, $v0, 0
/* 210A4 800204A4 05C2001F */  bltzl      $t6, .L80020524
/* 210A8 800204A8 8FBF002C */   lw        $ra, 0x2c($sp)
.L800204AC:
/* 210AC 800204AC 86630000 */  lh         $v1, ($s3)
/* 210B0 800204B0 10600005 */  beqz       $v1, .L800204C8
/* 210B4 800204B4 00000000 */   nop
/* 210B8 800204B8 8E6F000C */  lw         $t7, 0xc($s3)
/* 210BC 800204BC 000FC000 */  sll        $t8, $t7, 0
/* 210C0 800204C0 07020018 */  bltzl      $t8, .L80020524
/* 210C4 800204C4 8FBF002C */   lw        $ra, 0x2c($sp)
.L800204C8:
/* 210C8 800204C8 10400006 */  beqz       $v0, .L800204E4
/* 210CC 800204CC 00522021 */   addu      $a0, $v0, $s2
/* 210D0 800204D0 AE640008 */  sw         $a0, 8($s3)
/* 210D4 800204D4 02402825 */  or         $a1, $s2, $zero
/* 210D8 800204D8 0C008150 */  jal        func_80020540
/* 210DC 800204DC 02803025 */   or        $a2, $s4, $zero
/* 210E0 800204E0 86630000 */  lh         $v1, ($s3)
.L800204E4:
/* 210E4 800204E4 1860000E */  blez       $v1, .L80020520
/* 210E8 800204E8 00008825 */   or        $s1, $zero, $zero
/* 210EC 800204EC 02608025 */  or         $s0, $s3, $zero
.L800204F0:
/* 210F0 800204F0 8E02000C */  lw         $v0, 0xc($s0)
/* 210F4 800204F4 02402825 */  or         $a1, $s2, $zero
/* 210F8 800204F8 02803025 */  or         $a2, $s4, $zero
/* 210FC 800204FC 10400004 */  beqz       $v0, .L80020510
/* 21100 80020500 00522021 */   addu      $a0, $v0, $s2
/* 21104 80020504 0C008150 */  jal        func_80020540
/* 21108 80020508 AE04000C */   sw        $a0, 0xc($s0)
/* 2110C 8002050C 86630000 */  lh         $v1, ($s3)
.L80020510:
/* 21110 80020510 26310001 */  addiu      $s1, $s1, 1
/* 21114 80020514 0223082A */  slt        $at, $s1, $v1
/* 21118 80020518 1420FFF5 */  bnez       $at, .L800204F0
/* 2111C 8002051C 26100004 */   addiu     $s0, $s0, 4
.L80020520:
/* 21120 80020520 8FBF002C */  lw         $ra, 0x2c($sp)
.L80020524:
/* 21124 80020524 8FB00018 */  lw         $s0, 0x18($sp)
/* 21128 80020528 8FB1001C */  lw         $s1, 0x1c($sp)
/* 2112C 8002052C 8FB20020 */  lw         $s2, 0x20($sp)
/* 21130 80020530 8FB30024 */  lw         $s3, 0x24($sp)
/* 21134 80020534 8FB40028 */  lw         $s4, 0x28($sp)
/* 21138 80020538 03E00008 */  jr         $ra
/* 2113C 8002053C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80020540
/* 21140 80020540 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 21144 80020544 AFBF002C */  sw         $ra, 0x2c($sp)
/* 21148 80020548 AFB40028 */  sw         $s4, 0x28($sp)
/* 2114C 8002054C AFB30024 */  sw         $s3, 0x24($sp)
/* 21150 80020550 AFB20020 */  sw         $s2, 0x20($sp)
/* 21154 80020554 AFB1001C */  sw         $s1, 0x1c($sp)
/* 21158 80020558 AFB00018 */  sw         $s0, 0x18($sp)
/* 2115C 8002055C 8482000E */  lh         $v0, 0xe($a0)
/* 21160 80020560 00A09025 */  or         $s2, $a1, $zero
/* 21164 80020564 00809825 */  or         $s3, $a0, $zero
/* 21168 80020568 10400005 */  beqz       $v0, .L80020580
/* 2116C 8002056C 00C0A025 */   or        $s4, $a2, $zero
/* 21170 80020570 8C8E0010 */  lw         $t6, 0x10($a0)
/* 21174 80020574 000E7800 */  sll        $t7, $t6, 0
/* 21178 80020578 05E20011 */  bltzl      $t7, .L800205C0
/* 2117C 8002057C 8FBF002C */   lw        $ra, 0x2c($sp)
.L80020580:
/* 21180 80020580 1840000E */  blez       $v0, .L800205BC
/* 21184 80020584 00008825 */   or        $s1, $zero, $zero
/* 21188 80020588 02608025 */  or         $s0, $s3, $zero
/* 2118C 8002058C 8E180010 */  lw         $t8, 0x10($s0)
.L80020590:
/* 21190 80020590 02402825 */  or         $a1, $s2, $zero
/* 21194 80020594 02803025 */  or         $a2, $s4, $zero
/* 21198 80020598 03122021 */  addu       $a0, $t8, $s2
/* 2119C 8002059C 0C008177 */  jal        func_800205DC
/* 211A0 800205A0 AE040010 */   sw        $a0, 0x10($s0)
/* 211A4 800205A4 8668000E */  lh         $t0, 0xe($s3)
/* 211A8 800205A8 26310001 */  addiu      $s1, $s1, 1
/* 211AC 800205AC 26100004 */  addiu      $s0, $s0, 4
/* 211B0 800205B0 0228082A */  slt        $at, $s1, $t0
/* 211B4 800205B4 5420FFF6 */  bnel       $at, $zero, .L80020590
/* 211B8 800205B8 8E180010 */   lw        $t8, 0x10($s0)
.L800205BC:
/* 211BC 800205BC 8FBF002C */  lw         $ra, 0x2c($sp)
.L800205C0:
/* 211C0 800205C0 8FB00018 */  lw         $s0, 0x18($sp)
/* 211C4 800205C4 8FB1001C */  lw         $s1, 0x1c($sp)
/* 211C8 800205C8 8FB20020 */  lw         $s2, 0x20($sp)
/* 211CC 800205CC 8FB30024 */  lw         $s3, 0x24($sp)
/* 211D0 800205D0 8FB40028 */  lw         $s4, 0x28($sp)
/* 211D4 800205D4 03E00008 */  jr         $ra
/* 211D8 800205D8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_800205DC
/* 211DC 800205DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 211E0 800205E0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 211E4 800205E4 8C820000 */  lw         $v0, ($a0)
/* 211E8 800205E8 00027000 */  sll        $t6, $v0, 0
/* 211EC 800205EC 05C0000A */  bltz       $t6, .L80020618
/* 211F0 800205F0 00457821 */   addu      $t7, $v0, $a1
/* 211F4 800205F4 8C980004 */  lw         $t8, 4($a0)
/* 211F8 800205F8 8C880008 */  lw         $t0, 8($a0)
/* 211FC 800205FC AC8F0000 */  sw         $t7, ($a0)
/* 21200 80020600 0305C821 */  addu       $t9, $t8, $a1
/* 21204 80020604 01054821 */  addu       $t1, $t0, $a1
/* 21208 80020608 AC990004 */  sw         $t9, 4($a0)
/* 2120C 8002060C AC890008 */  sw         $t1, 8($a0)
/* 21210 80020610 0C00818A */  jal        func_80020628
/* 21214 80020614 01202025 */   or        $a0, $t1, $zero
.L80020618:
/* 21218 80020618 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2121C 8002061C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 21220 80020620 03E00008 */  jr         $ra
/* 21224 80020624 00000000 */   nop

glabel func_80020628
/* 21228 80020628 90820008 */  lbu        $v0, 8($a0)
/* 2122C 8002062C 24010001 */  addiu      $at, $zero, 1
/* 21230 80020630 1440000E */  bnez       $v0, .L8002066C
/* 21234 80020634 00000000 */   nop
/* 21238 80020638 8C820010 */  lw         $v0, 0x10($a0)
/* 2123C 8002063C 00027000 */  sll        $t6, $v0, 0
/* 21240 80020640 05C00016 */  bltz       $t6, .L8002069C
/* 21244 80020644 0045C821 */   addu      $t9, $v0, $a1
/* 21248 80020648 8C8F0000 */  lw         $t7, ($a0)
/* 2124C 8002064C 8C83000C */  lw         $v1, 0xc($a0)
/* 21250 80020650 AC990010 */  sw         $t9, 0x10($a0)
/* 21254 80020654 01E6C021 */  addu       $t8, $t7, $a2
/* 21258 80020658 10600010 */  beqz       $v1, .L8002069C
/* 2125C 8002065C AC980000 */   sw        $t8, ($a0)
/* 21260 80020660 00654021 */  addu       $t0, $v1, $a1
/* 21264 80020664 03E00008 */  jr         $ra
/* 21268 80020668 AC88000C */   sw        $t0, 0xc($a0)
.L8002066C:
/* 2126C 8002066C 1441000B */  bne        $v0, $at, .L8002069C
/* 21270 80020670 00000000 */   nop
/* 21274 80020674 8C83000C */  lw         $v1, 0xc($a0)
/* 21278 80020678 00034800 */  sll        $t1, $v1, 0
/* 2127C 8002067C 05200007 */  bltz       $t1, .L8002069C
/* 21280 80020680 00000000 */   nop
/* 21284 80020684 8C8A0000 */  lw         $t2, ($a0)
/* 21288 80020688 00656021 */  addu       $t4, $v1, $a1
/* 2128C 8002068C 01465821 */  addu       $t3, $t2, $a2
/* 21290 80020690 10600002 */  beqz       $v1, .L8002069C
/* 21294 80020694 AC8B0000 */   sw        $t3, ($a0)
/* 21298 80020698 AC8C000C */  sw         $t4, 0xc($a0)
.L8002069C:
/* 2129C 8002069C 03E00008 */  jr         $ra
/* 212A0 800206A0 00000000 */   nop
/* 212A4 800206A4 00000000 */  nop
/* 212A8 800206A8 00000000 */  nop
/* 212AC 800206AC 00000000 */  nop