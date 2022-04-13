.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_800033D0
/* 3FD0 800033D0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3FD4 800033D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3FD8 800033D8 3C04800B */  lui        $a0, %hi(D_800AD1F0)
/* 3FDC 800033DC 3C05800B */  lui        $a1, %hi(D_800AD1FC)
/* 3FE0 800033E0 24A5D1FC */  addiu      $a1, $a1, %lo(D_800AD1FC)
/* 3FE4 800033E4 0C003767 */  jal        func_8000DD9C
/* 3FE8 800033E8 8C84D1F0 */   lw        $a0, %lo(D_800AD1F0)($a0)
/* 3FEC 800033EC 3C03800B */  lui        $v1, %hi(D_800AD1E0)
/* 3FF0 800033F0 2463D1E0 */  addiu      $v1, $v1, %lo(D_800AD1E0)
/* 3FF4 800033F4 8C6E0010 */  lw         $t6, 0x10($v1)
/* 3FF8 800033F8 AFA20018 */  sw         $v0, 0x18($sp)
/* 3FFC 800033FC 27A5001C */  addiu      $a1, $sp, 0x1c
/* 4000 80003400 006E2021 */  addu       $a0, $v1, $t6
/* 4004 80003404 2484001C */  addiu      $a0, $a0, 0x1c
/* 4008 80003408 0C014984 */  jal        bcopy
/* 400C 8000340C 24060004 */   addiu     $a2, $zero, 4
/* 4010 80003410 8FAF001C */  lw         $t7, 0x1c($sp)
/* 4014 80003414 8FB80018 */  lw         $t8, 0x18($sp)
/* 4018 80003418 8FBF0014 */  lw         $ra, 0x14($sp)
/* 401C 8000341C 00001025 */  or         $v0, $zero, $zero
/* 4020 80003420 15F80003 */  bne        $t7, $t8, .L80003430
/* 4024 80003424 00000000 */   nop
/* 4028 80003428 10000001 */  b          .L80003430
/* 402C 8000342C 24020001 */   addiu     $v0, $zero, 1
.L80003430:
/* 4030 80003430 03E00008 */  jr         $ra
/* 4034 80003434 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80003438
/* 4038 80003438 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 403C 8000343C AFBF0014 */  sw         $ra, 0x14($sp)
/* 4040 80003440 0C000A1C */  jal        func_80002870
/* 4044 80003444 00000000 */   nop
/* 4048 80003448 0C014A48 */  jal        osEepromProbe
/* 404C 8000344C 00402025 */   or        $a0, $v0, $zero
/* 4050 80003450 24010001 */  addiu      $at, $zero, 1
/* 4054 80003454 1441000C */  bne        $v0, $at, .L80003488
/* 4058 80003458 00000000 */   nop
/* 405C 8000345C 0C000A1C */  jal        func_80002870
/* 4060 80003460 00000000 */   nop
/* 4064 80003464 3C03800B */  lui        $v1, %hi(D_800AD1E0)
/* 4068 80003468 2463D1E0 */  addiu      $v1, $v1, %lo(D_800AD1E0)
/* 406C 8000346C 90650008 */  lbu        $a1, 8($v1)
/* 4070 80003470 8C660014 */  lw         $a2, 0x14($v1)
/* 4074 80003474 0C014A64 */  jal        osEepromRead
/* 4078 80003478 00402025 */   or        $a0, $v0, $zero
/* 407C 8000347C 3C03800B */  lui        $v1, %hi(D_800AD1E0)
/* 4080 80003480 1040000C */  beqz       $v0, .L800034B4
/* 4084 80003484 2463D1E0 */   addiu     $v1, $v1, %lo(D_800AD1E0)
.L80003488:
/* 4088 80003488 3C03800B */  lui        $v1, %hi(D_800AD1E0)
/* 408C 8000348C 2463D1E0 */  addiu      $v1, $v1, %lo(D_800AD1E0)
/* 4090 80003490 8C6E0004 */  lw         $t6, 4($v1)
/* 4094 80003494 25CF0001 */  addiu      $t7, $t6, 1
/* 4098 80003498 29E1000B */  slti       $at, $t7, 0xb
/* 409C 8000349C 14200003 */  bnez       $at, .L800034AC
/* 40A0 800034A0 AC6F0004 */   sw        $t7, 4($v1)
/* 40A4 800034A4 10000022 */  b          .L80003530
/* 40A8 800034A8 24020003 */   addiu     $v0, $zero, 3
.L800034AC:
/* 40AC 800034AC 10000020 */  b          .L80003530
/* 40B0 800034B0 24020001 */   addiu     $v0, $zero, 1
.L800034B4:
/* 40B4 800034B4 8C790004 */  lw         $t9, 4($v1)
/* 40B8 800034B8 8C690018 */  lw         $t1, 0x18($v1)
/* 40BC 800034BC 07210003 */  bgez       $t9, .L800034CC
/* 40C0 800034C0 00194043 */   sra       $t0, $t9, 1
/* 40C4 800034C4 27210001 */  addiu      $at, $t9, 1
/* 40C8 800034C8 00014043 */  sra        $t0, $at, 1
.L800034CC:
/* 40CC 800034CC 252AFFF8 */  addiu      $t2, $t1, -8
/* 40D0 800034D0 AC680004 */  sw         $t0, 4($v1)
/* 40D4 800034D4 19400009 */  blez       $t2, .L800034FC
/* 40D8 800034D8 AC6A0018 */   sw        $t2, 0x18($v1)
/* 40DC 800034DC 906C0008 */  lbu        $t4, 8($v1)
/* 40E0 800034E0 8C6E0014 */  lw         $t6, 0x14($v1)
/* 40E4 800034E4 24020001 */  addiu      $v0, $zero, 1
/* 40E8 800034E8 258D0001 */  addiu      $t5, $t4, 1
/* 40EC 800034EC 25CF0008 */  addiu      $t7, $t6, 8
/* 40F0 800034F0 A06D0008 */  sb         $t5, 8($v1)
/* 40F4 800034F4 1000000E */  b          .L80003530
/* 40F8 800034F8 AC6F0014 */   sw        $t7, 0x14($v1)
.L800034FC:
/* 40FC 800034FC 0C000CF4 */  jal        func_800033D0
/* 4100 80003500 00000000 */   nop
/* 4104 80003504 3C03800B */  lui        $v1, %hi(D_800AD1E0)
/* 4108 80003508 10400008 */  beqz       $v0, .L8000352C
/* 410C 8000350C 2463D1E0 */   addiu     $v1, $v1, %lo(D_800AD1E0)
/* 4110 80003510 3C04800B */  lui        $a0, %hi(D_800AD1FC)
/* 4114 80003514 2484D1FC */  addiu      $a0, $a0, %lo(D_800AD1FC)
/* 4118 80003518 8C65000C */  lw         $a1, 0xc($v1)
/* 411C 8000351C 0C014984 */  jal        bcopy
/* 4120 80003520 8C660010 */   lw        $a2, 0x10($v1)
/* 4124 80003524 10000002 */  b          .L80003530
/* 4128 80003528 00001025 */   or        $v0, $zero, $zero
.L8000352C:
/* 412C 8000352C 24020004 */  addiu      $v0, $zero, 4
.L80003530:
/* 4130 80003530 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4134 80003534 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4138 80003538 03E00008 */  jr         $ra
/* 413C 8000353C 00000000 */   nop

glabel func_80003540
/* 4140 80003540 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 4144 80003544 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4148 80003548 0C000A1C */  jal        func_80002870
/* 414C 8000354C 00000000 */   nop
/* 4150 80003550 0C014A48 */  jal        osEepromProbe
/* 4154 80003554 00402025 */   or        $a0, $v0, $zero
/* 4158 80003558 24010001 */  addiu      $at, $zero, 1
/* 415C 8000355C 1441000C */  bne        $v0, $at, .L80003590
/* 4160 80003560 00000000 */   nop
/* 4164 80003564 0C000A1C */  jal        func_80002870
/* 4168 80003568 00000000 */   nop
/* 416C 8000356C 3C03800B */  lui        $v1, %hi(D_800AD1E0)
/* 4170 80003570 2463D1E0 */  addiu      $v1, $v1, %lo(D_800AD1E0)
/* 4174 80003574 90650008 */  lbu        $a1, 8($v1)
/* 4178 80003578 8C660014 */  lw         $a2, 0x14($v1)
/* 417C 8000357C 0C014AF8 */  jal        osEepromWrite
/* 4180 80003580 00402025 */   or        $a0, $v0, $zero
/* 4184 80003584 3C03800B */  lui        $v1, %hi(D_800AD1E0)
/* 4188 80003588 1040000C */  beqz       $v0, .L800035BC
/* 418C 8000358C 2463D1E0 */   addiu     $v1, $v1, %lo(D_800AD1E0)
.L80003590:
/* 4190 80003590 3C03800B */  lui        $v1, %hi(D_800AD1E0)
/* 4194 80003594 2463D1E0 */  addiu      $v1, $v1, %lo(D_800AD1E0)
/* 4198 80003598 8C6E0004 */  lw         $t6, 4($v1)
/* 419C 8000359C 25CF0001 */  addiu      $t7, $t6, 1
/* 41A0 800035A0 29E1000B */  slti       $at, $t7, 0xb
/* 41A4 800035A4 14200003 */  bnez       $at, .L800035B4
/* 41A8 800035A8 AC6F0004 */   sw        $t7, 4($v1)
/* 41AC 800035AC 10000016 */  b          .L80003608
/* 41B0 800035B0 24020005 */   addiu     $v0, $zero, 5
.L800035B4:
/* 41B4 800035B4 10000014 */  b          .L80003608
/* 41B8 800035B8 24020002 */   addiu     $v0, $zero, 2
.L800035BC:
/* 41BC 800035BC 8C790004 */  lw         $t9, 4($v1)
/* 41C0 800035C0 8C690018 */  lw         $t1, 0x18($v1)
/* 41C4 800035C4 07210003 */  bgez       $t9, .L800035D4
/* 41C8 800035C8 00194043 */   sra       $t0, $t9, 1
/* 41CC 800035CC 27210001 */  addiu      $at, $t9, 1
/* 41D0 800035D0 00014043 */  sra        $t0, $at, 1
.L800035D4:
/* 41D4 800035D4 252AFFF8 */  addiu      $t2, $t1, -8
/* 41D8 800035D8 AC680004 */  sw         $t0, 4($v1)
/* 41DC 800035DC 19400009 */  blez       $t2, .L80003604
/* 41E0 800035E0 AC6A0018 */   sw        $t2, 0x18($v1)
/* 41E4 800035E4 906C0008 */  lbu        $t4, 8($v1)
/* 41E8 800035E8 8C6E0014 */  lw         $t6, 0x14($v1)
/* 41EC 800035EC 24020002 */  addiu      $v0, $zero, 2
/* 41F0 800035F0 258D0001 */  addiu      $t5, $t4, 1
/* 41F4 800035F4 25CF0008 */  addiu      $t7, $t6, 8
/* 41F8 800035F8 A06D0008 */  sb         $t5, 8($v1)
/* 41FC 800035FC 10000002 */  b          .L80003608
/* 4200 80003600 AC6F0014 */   sw        $t7, 0x14($v1)
.L80003604:
/* 4204 80003604 00001025 */  or         $v0, $zero, $zero
.L80003608:
/* 4208 80003608 8FBF0014 */  lw         $ra, 0x14($sp)
/* 420C 8000360C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4210 80003610 03E00008 */  jr         $ra
/* 4214 80003614 00000000 */   nop

glabel func_80003618
/* 4218 80003618 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 421C 8000361C 3C0E800B */  lui        $t6, %hi(__osActiveQueue)
/* 4220 80003620 8DCED3FC */  lw         $t6, %lo(__osActiveQueue)($t6)
/* 4224 80003624 24010001 */  addiu      $at, $zero, 1
/* 4228 80003628 AFBF0014 */  sw         $ra, 0x14($sp)
/* 422C 8000362C AFA40018 */  sw         $a0, 0x18($sp)
/* 4230 80003630 AFA5001C */  sw         $a1, 0x1c($sp)
/* 4234 80003634 AFA60020 */  sw         $a2, 0x20($sp)
/* 4238 80003638 11C10003 */  beq        $t6, $at, .L80003648
/* 423C 8000363C AFA70024 */   sw        $a3, 0x24($sp)
/* 4240 80003640 1000001B */  b          .L800036B0
/* 4244 80003644 24020003 */   addiu     $v0, $zero, 3
.L80003648:
/* 4248 80003648 0C000E7B */  jal        func_800039EC
/* 424C 8000364C 00000000 */   nop
/* 4250 80003650 10400005 */  beqz       $v0, .L80003668
/* 4254 80003654 3C03800B */   lui       $v1, 0x800b
/* 4258 80003658 3C03800B */  lui        $v1, %hi(D_800AD1E0)
/* 425C 8000365C 2463D1E0 */  addiu      $v1, $v1, %lo(D_800AD1E0)
/* 4260 80003660 10000013 */  b          .L800036B0
/* 4264 80003664 8C620000 */   lw        $v0, ($v1)
.L80003668:
/* 4268 80003668 2463D1E0 */  addiu      $v1, $v1, -0x2e20
/* 426C 8000366C 8FA80024 */  lw         $t0, 0x24($sp)
/* 4270 80003670 8FAF0018 */  lw         $t7, 0x18($sp)
/* 4274 80003674 8FB8001C */  lw         $t8, 0x1c($sp)
/* 4278 80003678 8FB90020 */  lw         $t9, 0x20($sp)
/* 427C 8000367C 3C09800B */  lui        $t1, %hi(D_800AD1FC)
/* 4280 80003680 2529D1FC */  addiu      $t1, $t1, %lo(D_800AD1FC)
/* 4284 80003684 240C0001 */  addiu      $t4, $zero, 1
/* 4288 80003688 250B0004 */  addiu      $t3, $t0, 4
/* 428C 8000368C AC690014 */  sw         $t1, 0x14($v1)
/* 4290 80003690 AC6B0018 */  sw         $t3, 0x18($v1)
/* 4294 80003694 AC6C0000 */  sw         $t4, ($v1)
/* 4298 80003698 AC600004 */  sw         $zero, 4($v1)
/* 429C 8000369C 00001025 */  or         $v0, $zero, $zero
/* 42A0 800036A0 AC680010 */  sw         $t0, 0x10($v1)
/* 42A4 800036A4 A06F0008 */  sb         $t7, 8($v1)
/* 42A8 800036A8 A478000A */  sh         $t8, 0xa($v1)
/* 42AC 800036AC AC79000C */  sw         $t9, 0xc($v1)
.L800036B0:
/* 42B0 800036B0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 42B4 800036B4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 42B8 800036B8 03E00008 */  jr         $ra
/* 42BC 800036BC 00000000 */   nop

glabel func_800036C0
/* 42C0 800036C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 42C4 800036C4 3C0E800B */  lui        $t6, %hi(__osActiveQueue)
/* 42C8 800036C8 8DCED3FC */  lw         $t6, %lo(__osActiveQueue)($t6)
/* 42CC 800036CC 24010001 */  addiu      $at, $zero, 1
/* 42D0 800036D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 42D4 800036D4 AFA40020 */  sw         $a0, 0x20($sp)
/* 42D8 800036D8 AFA50024 */  sw         $a1, 0x24($sp)
/* 42DC 800036DC AFA60028 */  sw         $a2, 0x28($sp)
/* 42E0 800036E0 11C10003 */  beq        $t6, $at, .L800036F0
/* 42E4 800036E4 AFA7002C */   sw        $a3, 0x2c($sp)
/* 42E8 800036E8 1000002C */  b          .L8000379C
/* 42EC 800036EC 24020005 */   addiu     $v0, $zero, 5
.L800036F0:
/* 42F0 800036F0 0C000E7B */  jal        func_800039EC
/* 42F4 800036F4 00000000 */   nop
/* 42F8 800036F8 10400004 */  beqz       $v0, .L8000370C
/* 42FC 800036FC 3C03800B */   lui       $v1, %hi(D_800AD1E0)
/* 4300 80003700 2463D1E0 */  addiu      $v1, $v1, %lo(D_800AD1E0)
/* 4304 80003704 10000025 */  b          .L8000379C
/* 4308 80003708 8C620000 */   lw        $v0, ($v1)
.L8000370C:
/* 430C 8000370C 3C05800B */  lui        $a1, %hi(D_800AD1FC)
/* 4310 80003710 24A5D1FC */  addiu      $a1, $a1, %lo(D_800AD1FC)
/* 4314 80003714 8FA40028 */  lw         $a0, 0x28($sp)
/* 4318 80003718 0C014984 */  jal        bcopy
/* 431C 8000371C 8FA6002C */   lw        $a2, 0x2c($sp)
/* 4320 80003720 8FA4002C */  lw         $a0, 0x2c($sp)
/* 4324 80003724 0C003767 */  jal        func_8000DD9C
/* 4328 80003728 8FA50028 */   lw        $a1, 0x28($sp)
/* 432C 8000372C 8FAF002C */  lw         $t7, 0x2c($sp)
/* 4330 80003730 3C03800B */  lui        $v1, %hi(D_800AD1E0)
/* 4334 80003734 2463D1E0 */  addiu      $v1, $v1, %lo(D_800AD1E0)
/* 4338 80003738 006F2821 */  addu       $a1, $v1, $t7
/* 433C 8000373C AFA2001C */  sw         $v0, 0x1c($sp)
/* 4340 80003740 24A5001C */  addiu      $a1, $a1, 0x1c
/* 4344 80003744 27A4001C */  addiu      $a0, $sp, 0x1c
/* 4348 80003748 0C014984 */  jal        bcopy
/* 434C 8000374C 24060004 */   addiu     $a2, $zero, 4
/* 4350 80003750 3C03800B */  lui        $v1, %hi(D_800AD1E0)
/* 4354 80003754 2463D1E0 */  addiu      $v1, $v1, %lo(D_800AD1E0)
/* 4358 80003758 8FA9002C */  lw         $t1, 0x2c($sp)
/* 435C 8000375C 8FB80020 */  lw         $t8, 0x20($sp)
/* 4360 80003760 8FB90024 */  lw         $t9, 0x24($sp)
/* 4364 80003764 8FA80028 */  lw         $t0, 0x28($sp)
/* 4368 80003768 3C0A800B */  lui        $t2, %hi(D_800AD1FC)
/* 436C 8000376C 254AD1FC */  addiu      $t2, $t2, %lo(D_800AD1FC)
/* 4370 80003770 240D0002 */  addiu      $t5, $zero, 2
/* 4374 80003774 252C0004 */  addiu      $t4, $t1, 4
/* 4378 80003778 AC6A0014 */  sw         $t2, 0x14($v1)
/* 437C 8000377C AC6C0018 */  sw         $t4, 0x18($v1)
/* 4380 80003780 AC6D0000 */  sw         $t5, ($v1)
/* 4384 80003784 AC600004 */  sw         $zero, 4($v1)
/* 4388 80003788 00001025 */  or         $v0, $zero, $zero
/* 438C 8000378C AC690010 */  sw         $t1, 0x10($v1)
/* 4390 80003790 A0780008 */  sb         $t8, 8($v1)
/* 4394 80003794 A479000A */  sh         $t9, 0xa($v1)
/* 4398 80003798 AC68000C */  sw         $t0, 0xc($v1)
.L8000379C:
/* 439C 8000379C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 43A0 800037A0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 43A4 800037A4 03E00008 */  jr         $ra
/* 43A8 800037A8 00000000 */   nop

glabel func_800037AC
/* 43AC 800037AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 43B0 800037B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 43B4 800037B4 0C000A1C */  jal        func_80002870
/* 43B8 800037B8 00000000 */   nop
/* 43BC 800037BC 0C014A48 */  jal        osEepromProbe
/* 43C0 800037C0 00402025 */   or        $a0, $v0, $zero
/* 43C4 800037C4 3C01800B */  lui        $at, %hi(__osActiveQueue)
/* 43C8 800037C8 3C04800B */  lui        $a0, %hi(D_800AD1E0)
/* 43CC 800037CC AC22D3FC */  sw         $v0, %lo(__osActiveQueue)($at)
/* 43D0 800037D0 2484D1E0 */  addiu      $a0, $a0, %lo(D_800AD1E0)
/* 43D4 800037D4 0C014388 */  jal        _bzero
/* 43D8 800037D8 2405021C */   addiu     $a1, $zero, 0x21c
/* 43DC 800037DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 43E0 800037E0 3C01800B */  lui        $at, %hi(D_800AD1E0)
/* 43E4 800037E4 AC20D1E0 */  sw         $zero, %lo(D_800AD1E0)($at)
/* 43E8 800037E8 03E00008 */  jr         $ra
/* 43EC 800037EC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800037F0
/* 43F0 800037F0 3C0E800B */  lui        $t6, %hi(__osActiveQueue)
/* 43F4 800037F4 8DCED3FC */  lw         $t6, %lo(__osActiveQueue)($t6)
/* 43F8 800037F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 43FC 800037FC 24010001 */  addiu      $at, $zero, 1
/* 4400 80003800 15C10049 */  bne        $t6, $at, .L80003928
/* 4404 80003804 AFBF0014 */   sw        $ra, 0x14($sp)
/* 4408 80003808 3C03800B */  lui        $v1, %hi(D_800AD1E0)
/* 440C 8000380C 2463D1E0 */  addiu      $v1, $v1, %lo(D_800AD1E0)
/* 4410 80003810 8C6F0000 */  lw         $t7, ($v1)
/* 4414 80003814 2DE10006 */  sltiu      $at, $t7, 6
/* 4418 80003818 10200043 */  beqz       $at, .L80003928
/* 441C 8000381C 000F7880 */   sll       $t7, $t7, 2
/* 4420 80003820 3C01800A */  lui        $at, %hi(D_8009FFD0)
/* 4424 80003824 002F0821 */  addu       $at, $at, $t7
/* 4428 80003828 8C2FFFD0 */  lw         $t7, %lo(D_8009FFD0)($at)
/* 442C 8000382C 01E00008 */  jr         $t7
/* 4430 80003830 00000000 */   nop
/* 4434 80003834 0C000D0E */  jal        func_80003438
/* 4438 80003838 00000000 */   nop
/* 443C 8000383C 3C03800B */  lui        $v1, %hi(D_800AD1E0)
/* 4440 80003840 2463D1E0 */  addiu      $v1, $v1, %lo(D_800AD1E0)
/* 4444 80003844 24010003 */  addiu      $at, $zero, 3
/* 4448 80003848 10410004 */  beq        $v0, $at, .L8000385C
/* 444C 8000384C AC620000 */   sw        $v0, ($v1)
/* 4450 80003850 24010004 */  addiu      $at, $zero, 4
/* 4454 80003854 54410035 */  bnel       $v0, $at, .L8000392C
/* 4458 80003858 8FBF0014 */   lw        $ra, 0x14($sp)
.L8000385C:
/* 445C 8000385C 8462000A */  lh         $v0, 0xa($v1)
/* 4460 80003860 3C19800B */  lui        $t9, %hi(D_800AD1FC)
/* 4464 80003864 2418FFFE */  addiu      $t8, $zero, -2
/* 4468 80003868 0440002F */  bltz       $v0, .L80003928
/* 446C 8000386C 2739D1FC */   addiu     $t9, $t9, %lo(D_800AD1FC)
/* 4470 80003870 8C680010 */  lw         $t0, 0x10($v1)
/* 4474 80003874 240A0001 */  addiu      $t2, $zero, 1
/* 4478 80003878 A0620008 */  sb         $v0, 8($v1)
/* 447C 8000387C 25090004 */  addiu      $t1, $t0, 4
/* 4480 80003880 A478000A */  sh         $t8, 0xa($v1)
/* 4484 80003884 AC790014 */  sw         $t9, 0x14($v1)
/* 4488 80003888 AC690018 */  sw         $t1, 0x18($v1)
/* 448C 8000388C AC6A0000 */  sw         $t2, ($v1)
/* 4490 80003890 10000025 */  b          .L80003928
/* 4494 80003894 AC600004 */   sw        $zero, 4($v1)
/* 4498 80003898 0C000D50 */  jal        func_80003540
/* 449C 8000389C 00000000 */   nop
/* 44A0 800038A0 3C03800B */  lui        $v1, %hi(D_800AD1E0)
/* 44A4 800038A4 2463D1E0 */  addiu      $v1, $v1, %lo(D_800AD1E0)
/* 44A8 800038A8 24050005 */  addiu      $a1, $zero, 5
/* 44AC 800038AC AC620000 */  sw         $v0, ($v1)
/* 44B0 800038B0 10A20003 */  beq        $a1, $v0, .L800038C0
/* 44B4 800038B4 00402025 */   or        $a0, $v0, $zero
/* 44B8 800038B8 5440001C */  bnel       $v0, $zero, .L8000392C
/* 44BC 800038BC 8FBF0014 */   lw        $ra, 0x14($sp)
.L800038C0:
/* 44C0 800038C0 8462000A */  lh         $v0, 0xa($v1)
/* 44C4 800038C4 3C0D800B */  lui        $t5, %hi(D_800AD1FC)
/* 44C8 800038C8 25ADD1FC */  addiu      $t5, $t5, %lo(D_800AD1FC)
/* 44CC 800038CC 04410009 */  bgez       $v0, .L800038F4
/* 44D0 800038D0 24180002 */   addiu     $t8, $zero, 2
/* 44D4 800038D4 14A40005 */  bne        $a1, $a0, .L800038EC
/* 44D8 800038D8 2401FFFE */   addiu     $at, $zero, -2
/* 44DC 800038DC 14410003 */  bne        $v0, $at, .L800038EC
/* 44E0 800038E0 00000000 */   nop
/* 44E4 800038E4 10000010 */  b          .L80003928
/* 44E8 800038E8 AC650000 */   sw        $a1, ($v1)
.L800038EC:
/* 44EC 800038EC 1000000E */  b          .L80003928
/* 44F0 800038F0 AC600000 */   sw        $zero, ($v1)
.L800038F4:
/* 44F4 800038F4 14A40004 */  bne        $a1, $a0, .L80003908
/* 44F8 800038F8 A0620008 */   sb        $v0, 8($v1)
/* 44FC 800038FC 240BFFFE */  addiu      $t3, $zero, -2
/* 4500 80003900 10000003 */  b          .L80003910
/* 4504 80003904 A46B000A */   sh        $t3, 0xa($v1)
.L80003908:
/* 4508 80003908 240CFFFF */  addiu      $t4, $zero, -1
/* 450C 8000390C A46C000A */  sh         $t4, 0xa($v1)
.L80003910:
/* 4510 80003910 8C6E0010 */  lw         $t6, 0x10($v1)
/* 4514 80003914 AC6D0014 */  sw         $t5, 0x14($v1)
/* 4518 80003918 AC780000 */  sw         $t8, ($v1)
/* 451C 8000391C 25CF0004 */  addiu      $t7, $t6, 4
/* 4520 80003920 AC6F0018 */  sw         $t7, 0x18($v1)
/* 4524 80003924 AC600004 */  sw         $zero, 4($v1)
.L80003928:
/* 4528 80003928 8FBF0014 */  lw         $ra, 0x14($sp)
.L8000392C:
/* 452C 8000392C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 4530 80003930 03E00008 */  jr         $ra
/* 4534 80003934 00000000 */   nop

glabel func_80003938
/* 4538 80003938 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 453C 8000393C AFBF001C */  sw         $ra, 0x1c($sp)
/* 4540 80003940 AFB00018 */  sw         $s0, 0x18($sp)
/* 4544 80003944 8C820004 */  lw         $v0, 4($a0)
/* 4548 80003948 00808025 */  or         $s0, $a0, $zero
/* 454C 8000394C 24010001 */  addiu      $at, $zero, 1
/* 4550 80003950 50400006 */  beql       $v0, $zero, .L8000396C
/* 4554 80003954 8E040010 */   lw        $a0, 0x10($s0)
/* 4558 80003958 5041000B */  beql       $v0, $at, .L80003988
/* 455C 8000395C 8E040010 */   lw        $a0, 0x10($s0)
/* 4560 80003960 1000000F */  b          .L800039A0
/* 4564 80003964 AE000008 */   sw        $zero, 8($s0)
/* 4568 80003968 8E040010 */  lw         $a0, 0x10($s0)
.L8000396C:
/* 456C 8000396C 8E050014 */  lw         $a1, 0x14($s0)
/* 4570 80003970 8E060018 */  lw         $a2, 0x18($s0)
/* 4574 80003974 0C000D86 */  jal        func_80003618
/* 4578 80003978 8E07001C */   lw        $a3, 0x1c($s0)
/* 457C 8000397C 10000007 */  b          .L8000399C
/* 4580 80003980 AE02000C */   sw        $v0, 0xc($s0)
/* 4584 80003984 8E040010 */  lw         $a0, 0x10($s0)
.L80003988:
/* 4588 80003988 8E050014 */  lw         $a1, 0x14($s0)
/* 458C 8000398C 8E060018 */  lw         $a2, 0x18($s0)
/* 4590 80003990 0C000DB0 */  jal        func_800036C0
/* 4594 80003994 8E07001C */   lw        $a3, 0x1c($s0)
/* 4598 80003998 AE02000C */  sw         $v0, 0xc($s0)
.L8000399C:
/* 459C 8000399C AE000008 */  sw         $zero, 8($s0)
.L800039A0:
/* 45A0 800039A0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 45A4 800039A4 8FB00018 */  lw         $s0, 0x18($sp)
/* 45A8 800039A8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 45AC 800039AC 03E00008 */  jr         $ra
/* 45B0 800039B0 00000000 */   nop

glabel func_800039B4
/* 45B4 800039B4 3C0E800B */  lui        $t6, %hi(__osActiveQueue)
/* 45B8 800039B8 8DCED3FC */  lw         $t6, %lo(__osActiveQueue)($t6)
/* 45BC 800039BC 24010001 */  addiu      $at, $zero, 1
/* 45C0 800039C0 3C02800B */  lui        $v0, %hi(D_800AD1E0)
/* 45C4 800039C4 11C10003 */  beq        $t6, $at, .L800039D4
/* 45C8 800039C8 00000000 */   nop
/* 45CC 800039CC 03E00008 */  jr         $ra
/* 45D0 800039D0 00001025 */   or        $v0, $zero, $zero
.L800039D4:
/* 45D4 800039D4 8C42D1E0 */  lw         $v0, %lo(D_800AD1E0)($v0)
/* 45D8 800039D8 03E00008 */  jr         $ra
/* 45DC 800039DC 00000000 */   nop

glabel __osGetActiveQueue
/* 45E0 800039E0 3C02800B */  lui        $v0, %hi(__osActiveQueue)
/* 45E4 800039E4 03E00008 */  jr         $ra
/* 45E8 800039E8 8C42D3FC */   lw        $v0, %lo(__osActiveQueue)($v0)

glabel func_800039EC
/* 45EC 800039EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 45F0 800039F0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 45F4 800039F4 0C000E6D */  jal        func_800039B4
/* 45F8 800039F8 00000000 */   nop
/* 45FC 800039FC 1040000A */  beqz       $v0, .L80003A28
/* 4600 80003A00 8FBF0014 */   lw        $ra, 0x14($sp)
/* 4604 80003A04 24010003 */  addiu      $at, $zero, 3
/* 4608 80003A08 10410007 */  beq        $v0, $at, .L80003A28
/* 460C 80003A0C 24010004 */   addiu     $at, $zero, 4
/* 4610 80003A10 10410005 */  beq        $v0, $at, .L80003A28
/* 4614 80003A14 24010005 */   addiu     $at, $zero, 5
/* 4618 80003A18 50410004 */  beql       $v0, $at, .L80003A2C
/* 461C 80003A1C 00001025 */   or        $v0, $zero, $zero
/* 4620 80003A20 10000002 */  b          .L80003A2C
/* 4624 80003A24 24020001 */   addiu     $v0, $zero, 1
.L80003A28:
/* 4628 80003A28 00001025 */  or         $v0, $zero, $zero
.L80003A2C:
/* 462C 80003A2C 03E00008 */  jr         $ra
/* 4630 80003A30 27BD0018 */   addiu     $sp, $sp, 0x18
/* 4634 80003A34 00000000 */  nop
/* 4638 80003A38 00000000 */  nop
/* 463C 80003A3C 00000000 */  nop