glabel func_80002058
/* 2C58 80002058 3C0E800F */  lui        $t6, %hi(D_800F298C)
/* 2C5C 8000205C 8DCE298C */  lw         $t6, %lo(D_800F298C)($t6)
/* 2C60 80002060 3C18800B */  lui        $t8, %hi(D_800ABDE8)
/* 2C64 80002064 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2C68 80002068 000E7880 */  sll        $t7, $t6, 2
/* 2C6C 8000206C 030FC021 */  addu       $t8, $t8, $t7
/* 2C70 80002070 8F18BDE8 */  lw         $t8, %lo(D_800ABDE8)($t8)
/* 2C74 80002074 AFB00014 */  sw         $s0, 0x14($sp)
/* 2C78 80002078 3C10800B */  lui        $s0, %hi(D_800ABDD0)
/* 2C7C 8000207C 2610BDD0 */  addiu      $s0, $s0, %lo(D_800ABDD0)
/* 2C80 80002080 AFB10018 */  sw         $s1, 0x18($sp)
/* 2C84 80002084 3C11800B */  lui        $s1, %hi(D_800ABDD8)
/* 2C88 80002088 3C01800B */  lui        $at, %hi(D_800ABDD4)
/* 2C8C 8000208C AE180000 */  sw         $t8, ($s0)
/* 2C90 80002090 2631BDD8 */  addiu      $s1, $s1, %lo(D_800ABDD8)
/* 2C94 80002094 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2C98 80002098 AC38BDD4 */  sw         $t8, %lo(D_800ABDD4)($at)
/* 2C9C 8000209C 0C00022B */  jal        func_800008AC
/* 2CA0 800020A0 AE200000 */   sw        $zero, ($s1)
/* 2CA4 800020A4 3C098006 */  lui        $t1, %hi(D_800633EC)
/* 2CA8 800020A8 8D2933EC */  lw         $t1, %lo(D_800633EC)($t1)
/* 2CAC 800020AC 3C0DE700 */  lui        $t5, 0xe700
/* 2CB0 800020B0 3C0FED00 */  lui        $t7, 0xed00
/* 2CB4 800020B4 29210002 */  slti       $at, $t1, 2
/* 2CB8 800020B8 10200053 */  beqz       $at, .L80002208
/* 2CBC 800020BC 25290001 */   addiu     $t1, $t1, 1
/* 2CC0 800020C0 8E020000 */  lw         $v0, ($s0)
/* 2CC4 800020C4 3C18004F */  lui        $t8, 0x4f
/* 2CC8 800020C8 3718C3BC */  ori        $t8, $t8, 0xc3bc
/* 2CCC 800020CC 244C0008 */  addiu      $t4, $v0, 8
/* 2CD0 800020D0 AE0C0000 */  sw         $t4, ($s0)
/* 2CD4 800020D4 AC400004 */  sw         $zero, 4($v0)
/* 2CD8 800020D8 AC4D0000 */  sw         $t5, ($v0)
/* 2CDC 800020DC 8E020000 */  lw         $v0, ($s0)
/* 2CE0 800020E0 3C018006 */  lui        $at, 0x8006
/* 2CE4 800020E4 00002025 */  or         $a0, $zero, $zero
/* 2CE8 800020E8 244E0008 */  addiu      $t6, $v0, 8
/* 2CEC 800020EC AE0E0000 */  sw         $t6, ($s0)
/* 2CF0 800020F0 AC580004 */  sw         $t8, 4($v0)
/* 2CF4 800020F4 AC4F0000 */  sw         $t7, ($v0)
/* 2CF8 800020F8 AC2933EC */  sw         $t1, 0x33ec($at)
/* 2CFC 800020FC 00002825 */  or         $a1, $zero, $zero
/* 2D00 80002100 2406013F */  addiu      $a2, $zero, 0x13f
/* 2D04 80002104 0C00034F */  jal        func_80000D3C
/* 2D08 80002108 240700EF */   addiu     $a3, $zero, 0xef
/* 2D0C 8000210C 0C000339 */  jal        func_80000CE4
/* 2D10 80002110 00002025 */   or        $a0, $zero, $zero
/* 2D14 80002114 8E020000 */  lw         $v0, ($s0)
/* 2D18 80002118 3C0CE700 */  lui        $t4, 0xe700
/* 2D1C 8000211C 240B00E0 */  addiu      $t3, $zero, 0xe0
/* 2D20 80002120 24590008 */  addiu      $t9, $v0, 8
/* 2D24 80002124 AE190000 */  sw         $t9, ($s0)
/* 2D28 80002128 AC400004 */  sw         $zero, 4($v0)
/* 2D2C 8000212C AC4C0000 */  sw         $t4, ($v0)
/* 2D30 80002130 8E2E0000 */  lw         $t6, ($s1)
/* 2D34 80002134 3C0A800B */  lui        $t2, %hi(D_800ABCF0)
/* 2D38 80002138 254ABCF0 */  addiu      $t2, $t2, %lo(D_800ABCF0)
/* 2D3C 8000213C 01CB0019 */  multu      $t6, $t3
/* 2D40 80002140 3C014080 */  lui        $at, 0x4080
/* 2D44 80002144 44810000 */  mtc1       $at, $f0
/* 2D48 80002148 8E020000 */  lw         $v0, ($s0)
/* 2D4C 8000214C 3C01ED00 */  lui        $at, 0xed00
/* 2D50 80002150 244D0008 */  addiu      $t5, $v0, 8
/* 2D54 80002154 AE0D0000 */  sw         $t5, ($s0)
/* 2D58 80002158 00007812 */  mflo       $t7
/* 2D5C 8000215C 014F1821 */  addu       $v1, $t2, $t7
/* 2D60 80002160 8C7800AC */  lw         $t8, 0xac($v1)
/* 2D64 80002164 8C6F00A8 */  lw         $t7, 0xa8($v1)
/* 2D68 80002168 44982000 */  mtc1       $t8, $f4
/* 2D6C 8000216C 448F8000 */  mtc1       $t7, $f16
/* 2D70 80002170 468021A0 */  cvt.s.w    $f6, $f4
/* 2D74 80002174 468084A0 */  cvt.s.w    $f18, $f16
/* 2D78 80002178 46003202 */  mul.s      $f8, $f6, $f0
/* 2D7C 8000217C 00000000 */  nop
/* 2D80 80002180 46009102 */  mul.s      $f4, $f18, $f0
/* 2D84 80002184 4600428D */  trunc.w.s  $f10, $f8
/* 2D88 80002188 4600218D */  trunc.w.s  $f6, $f4
/* 2D8C 8000218C 440C5000 */  mfc1       $t4, $f10
/* 2D90 80002190 44193000 */  mfc1       $t9, $f6
/* 2D94 80002194 318D0FFF */  andi       $t5, $t4, 0xfff
/* 2D98 80002198 01A17025 */  or         $t6, $t5, $at
/* 2D9C 8000219C 332C0FFF */  andi       $t4, $t9, 0xfff
/* 2DA0 800021A0 000C6B00 */  sll        $t5, $t4, 0xc
/* 2DA4 800021A4 01CD7825 */  or         $t7, $t6, $t5
/* 2DA8 800021A8 AC4F0000 */  sw         $t7, ($v0)
/* 2DAC 800021AC 8E380000 */  lw         $t8, ($s1)
/* 2DB0 800021B0 030B0019 */  multu      $t8, $t3
/* 2DB4 800021B4 0000C812 */  mflo       $t9
/* 2DB8 800021B8 01591821 */  addu       $v1, $t2, $t9
/* 2DBC 800021BC 8C6C00B4 */  lw         $t4, 0xb4($v1)
/* 2DC0 800021C0 8C7800B0 */  lw         $t8, 0xb0($v1)
/* 2DC4 800021C4 448C4000 */  mtc1       $t4, $f8
/* 2DC8 800021C8 44982000 */  mtc1       $t8, $f4
/* 2DCC 800021CC 468042A0 */  cvt.s.w    $f10, $f8
/* 2DD0 800021D0 468021A0 */  cvt.s.w    $f6, $f4
/* 2DD4 800021D4 46005402 */  mul.s      $f16, $f10, $f0
/* 2DD8 800021D8 00000000 */  nop
/* 2DDC 800021DC 46003202 */  mul.s      $f8, $f6, $f0
/* 2DE0 800021E0 4600848D */  trunc.w.s  $f18, $f16
/* 2DE4 800021E4 4600428D */  trunc.w.s  $f10, $f8
/* 2DE8 800021E8 440D9000 */  mfc1       $t5, $f18
/* 2DEC 800021EC 440C5000 */  mfc1       $t4, $f10
/* 2DF0 800021F0 31AF0FFF */  andi       $t7, $t5, 0xfff
/* 2DF4 800021F4 318E0FFF */  andi       $t6, $t4, 0xfff
/* 2DF8 800021F8 000E6B00 */  sll        $t5, $t6, 0xc
/* 2DFC 800021FC 01EDC025 */  or         $t8, $t7, $t5
/* 2E00 80002200 1000004F */  b          .L80002340
/* 2E04 80002204 AC580004 */   sw        $t8, 4($v0)
.L80002208:
/* 2E08 80002208 8E020000 */  lw         $v0, ($s0)
/* 2E0C 8000220C 3C0CE700 */  lui        $t4, 0xe700
/* 2E10 80002210 240B00E0 */  addiu      $t3, $zero, 0xe0
/* 2E14 80002214 24590008 */  addiu      $t9, $v0, 8
/* 2E18 80002218 AE190000 */  sw         $t9, ($s0)
/* 2E1C 8000221C AC400004 */  sw         $zero, 4($v0)
/* 2E20 80002220 AC4C0000 */  sw         $t4, ($v0)
/* 2E24 80002224 8E2F0000 */  lw         $t7, ($s1)
/* 2E28 80002228 3C0A800B */  lui        $t2, %hi(D_800ABCF0)
/* 2E2C 8000222C 254ABCF0 */  addiu      $t2, $t2, %lo(D_800ABCF0)
/* 2E30 80002230 01EB0019 */  multu      $t7, $t3
/* 2E34 80002234 3C014080 */  lui        $at, 0x4080
/* 2E38 80002238 44810000 */  mtc1       $at, $f0
/* 2E3C 8000223C 8E020000 */  lw         $v0, ($s0)
/* 2E40 80002240 3C01ED00 */  lui        $at, 0xed00
/* 2E44 80002244 244E0008 */  addiu      $t6, $v0, 8
/* 2E48 80002248 AE0E0000 */  sw         $t6, ($s0)
/* 2E4C 8000224C 00006812 */  mflo       $t5
/* 2E50 80002250 014D1821 */  addu       $v1, $t2, $t5
/* 2E54 80002254 8C7800AC */  lw         $t8, 0xac($v1)
/* 2E58 80002258 8C6D00A8 */  lw         $t5, 0xa8($v1)
/* 2E5C 8000225C 44988000 */  mtc1       $t8, $f16
/* 2E60 80002260 448D4000 */  mtc1       $t5, $f8
/* 2E64 80002264 468084A0 */  cvt.s.w    $f18, $f16
/* 2E68 80002268 468042A0 */  cvt.s.w    $f10, $f8
/* 2E6C 8000226C 46009102 */  mul.s      $f4, $f18, $f0
/* 2E70 80002270 00000000 */  nop
/* 2E74 80002274 46005402 */  mul.s      $f16, $f10, $f0
/* 2E78 80002278 4600218D */  trunc.w.s  $f6, $f4
/* 2E7C 8000227C 4600848D */  trunc.w.s  $f18, $f16
/* 2E80 80002280 440C3000 */  mfc1       $t4, $f6
/* 2E84 80002284 44199000 */  mfc1       $t9, $f18
/* 2E88 80002288 318E0FFF */  andi       $t6, $t4, 0xfff
/* 2E8C 8000228C 01C17825 */  or         $t7, $t6, $at
/* 2E90 80002290 332C0FFF */  andi       $t4, $t9, 0xfff
/* 2E94 80002294 000C7300 */  sll        $t6, $t4, 0xc
/* 2E98 80002298 01EE6825 */  or         $t5, $t7, $t6
/* 2E9C 8000229C AC4D0000 */  sw         $t5, ($v0)
/* 2EA0 800022A0 8E380000 */  lw         $t8, ($s1)
/* 2EA4 800022A4 030B0019 */  multu      $t8, $t3
/* 2EA8 800022A8 0000C812 */  mflo       $t9
/* 2EAC 800022AC 01591821 */  addu       $v1, $t2, $t9
/* 2EB0 800022B0 8C6C00B4 */  lw         $t4, 0xb4($v1)
/* 2EB4 800022B4 8C7800B0 */  lw         $t8, 0xb0($v1)
/* 2EB8 800022B8 448C2000 */  mtc1       $t4, $f4
/* 2EBC 800022BC 44988000 */  mtc1       $t8, $f16
/* 2EC0 800022C0 468021A0 */  cvt.s.w    $f6, $f4
/* 2EC4 800022C4 468084A0 */  cvt.s.w    $f18, $f16
/* 2EC8 800022C8 46003202 */  mul.s      $f8, $f6, $f0
/* 2ECC 800022CC 00000000 */  nop
/* 2ED0 800022D0 46009102 */  mul.s      $f4, $f18, $f0
/* 2ED4 800022D4 4600428D */  trunc.w.s  $f10, $f8
/* 2ED8 800022D8 4600218D */  trunc.w.s  $f6, $f4
/* 2EDC 800022DC 440E5000 */  mfc1       $t6, $f10
/* 2EE0 800022E0 440C3000 */  mfc1       $t4, $f6
/* 2EE4 800022E4 31CD0FFF */  andi       $t5, $t6, 0xfff
/* 2EE8 800022E8 318F0FFF */  andi       $t7, $t4, 0xfff
/* 2EEC 800022EC 000F7300 */  sll        $t6, $t7, 0xc
/* 2EF0 800022F0 01AEC025 */  or         $t8, $t5, $t6
/* 2EF4 800022F4 AC580004 */  sw         $t8, 4($v0)
/* 2EF8 800022F8 8E390000 */  lw         $t9, ($s1)
/* 2EFC 800022FC 032B0019 */  multu      $t9, $t3
/* 2F00 80002300 00006012 */  mflo       $t4
/* 2F04 80002304 014C1821 */  addu       $v1, $t2, $t4
/* 2F08 80002308 8C6400A8 */  lw         $a0, 0xa8($v1)
/* 2F0C 8000230C 8C6500AC */  lw         $a1, 0xac($v1)
/* 2F10 80002310 8C6600B0 */  lw         $a2, 0xb0($v1)
/* 2F14 80002314 0C00034F */  jal        func_80000D3C
/* 2F18 80002318 8C6700B4 */   lw        $a3, 0xb4($v1)
/* 2F1C 8000231C 8E2F0000 */  lw         $t7, ($s1)
/* 2F20 80002320 240B00E0 */  addiu      $t3, $zero, 0xe0
/* 2F24 80002324 3C0A800B */  lui        $t2, %hi(D_800ABCF0)
/* 2F28 80002328 01EB0019 */  multu      $t7, $t3
/* 2F2C 8000232C 254ABCF0 */  addiu      $t2, $t2, %lo(D_800ABCF0)
/* 2F30 80002330 00006812 */  mflo       $t5
/* 2F34 80002334 014D7021 */  addu       $t6, $t2, $t5
/* 2F38 80002338 0C000339 */  jal        func_80000CE4
/* 2F3C 8000233C 8DC400A4 */   lw        $a0, 0xa4($t6)
.L80002340:
/* 2F40 80002340 0C0006A8 */  jal        func_80001AA0
/* 2F44 80002344 8E240000 */   lw        $a0, ($s1)
/* 2F48 80002348 3C18800B */  lui        $t8, %hi(D_800AE4F0)
/* 2F4C 8000234C 8F18E4F0 */  lw         $t8, %lo(D_800AE4F0)($t8)
/* 2F50 80002350 3C028006 */  lui        $v0, %hi(D_80063824)
/* 2F54 80002354 0018C900 */  sll        $t9, $t8, 4
/* 2F58 80002358 00591021 */  addu       $v0, $v0, $t9
/* 2F5C 8000235C 8C423824 */  lw         $v0, %lo(D_80063824)($v0)
/* 2F60 80002360 50400004 */  beql       $v0, $zero, .L80002374
/* 2F64 80002364 8FBF001C */   lw        $ra, 0x1c($sp)
/* 2F68 80002368 0040F809 */  jalr       $v0
/* 2F6C 8000236C 00000000 */   nop
/* 2F70 80002370 8FBF001C */  lw         $ra, 0x1c($sp)
.L80002374:
/* 2F74 80002374 8FB00014 */  lw         $s0, 0x14($sp)
/* 2F78 80002378 8FB10018 */  lw         $s1, 0x18($sp)
/* 2F7C 8000237C 03E00008 */  jr         $ra
/* 2F80 80002380 27BD0020 */   addiu     $sp, $sp, 0x20
