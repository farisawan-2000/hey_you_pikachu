.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8002D010
/* 2DC10 8002D010 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2DC14 8002D014 AFA60020 */  sw         $a2, 0x20($sp)
/* 2DC18 8002D018 00803025 */  or         $a2, $a0, $zero
/* 2DC1C 8002D01C AFA40018 */  sw         $a0, 0x18($sp)
/* 2DC20 8002D020 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2DC24 8002D024 AFA5001C */  sw         $a1, 0x1c($sp)
/* 2DC28 8002D028 00A02025 */  or         $a0, $a1, $zero
/* 2DC2C 8002D02C AFA70024 */  sw         $a3, 0x24($sp)
/* 2DC30 8002D030 00C02825 */  or         $a1, $a2, $zero
/* 2DC34 8002D034 0C0127DD */  jal        func_80049F74
/* 2DC38 8002D038 AFA60018 */   sw        $a2, 0x18($sp)
/* 2DC3C 8002D03C 8FA8002C */  lw         $t0, 0x2c($sp)
/* 2DC40 8002D040 8FA60018 */  lw         $a2, 0x18($sp)
/* 2DC44 8002D044 8FAA001C */  lw         $t2, 0x1c($sp)
/* 2DC48 8002D048 00404825 */  or         $t1, $v0, $zero
/* 2DC4C 8002D04C 11000028 */  beqz       $t0, .L8002D0F0
/* 2DC50 8002D050 00002825 */   or        $a1, $zero, $zero
/* 2DC54 8002D054 31030003 */  andi       $v1, $t0, 3
/* 2DC58 8002D058 1060000E */  beqz       $v1, .L8002D094
/* 2DC5C 8002D05C 8FAF0028 */   lw        $t7, 0x28($sp)
/* 2DC60 8002D060 000070C0 */  sll        $t6, $zero, 3
/* 2DC64 8002D064 01CFC021 */  addu       $t8, $t6, $t7
/* 2DC68 8002D068 030A1021 */  addu       $v0, $t8, $t2
/* 2DC6C 8002D06C 00603825 */  or         $a3, $v1, $zero
.L8002D070:
/* 2DC70 8002D070 8C430000 */  lw         $v1, ($v0)
/* 2DC74 8002D074 8C440004 */  lw         $a0, 4($v0)
/* 2DC78 8002D078 24A50001 */  addiu      $a1, $a1, 1
/* 2DC7C 8002D07C 00C3C821 */  addu       $t9, $a2, $v1
/* 2DC80 8002D080 24420008 */  addiu      $v0, $v0, 8
/* 2DC84 8002D084 14E5FFFA */  bne        $a3, $a1, .L8002D070
/* 2DC88 8002D088 AF240000 */   sw        $a0, ($t9)
/* 2DC8C 8002D08C 50A80019 */  beql       $a1, $t0, .L8002D0F4
/* 2DC90 8002D090 8FBF0014 */   lw        $ra, 0x14($sp)
.L8002D094:
/* 2DC94 8002D094 8FAC0028 */  lw         $t4, 0x28($sp)
/* 2DC98 8002D098 000558C0 */  sll        $t3, $a1, 3
/* 2DC9C 8002D09C 016C6821 */  addu       $t5, $t3, $t4
/* 2DCA0 8002D0A0 01AA1021 */  addu       $v0, $t5, $t2
.L8002D0A4:
/* 2DCA4 8002D0A4 8C430000 */  lw         $v1, ($v0)
/* 2DCA8 8002D0A8 8C440004 */  lw         $a0, 4($v0)
/* 2DCAC 8002D0AC 24A50004 */  addiu      $a1, $a1, 4
/* 2DCB0 8002D0B0 00C37021 */  addu       $t6, $a2, $v1
/* 2DCB4 8002D0B4 ADC40000 */  sw         $a0, ($t6)
/* 2DCB8 8002D0B8 8C430008 */  lw         $v1, 8($v0)
/* 2DCBC 8002D0BC 8C44000C */  lw         $a0, 0xc($v0)
/* 2DCC0 8002D0C0 24420020 */  addiu      $v0, $v0, 0x20
/* 2DCC4 8002D0C4 00C37821 */  addu       $t7, $a2, $v1
/* 2DCC8 8002D0C8 ADE40000 */  sw         $a0, ($t7)
/* 2DCCC 8002D0CC 8C43FFF0 */  lw         $v1, -0x10($v0)
/* 2DCD0 8002D0D0 8C44FFF4 */  lw         $a0, -0xc($v0)
/* 2DCD4 8002D0D4 00C3C021 */  addu       $t8, $a2, $v1
/* 2DCD8 8002D0D8 AF040000 */  sw         $a0, ($t8)
/* 2DCDC 8002D0DC 8C43FFF8 */  lw         $v1, -8($v0)
/* 2DCE0 8002D0E0 8C44FFFC */  lw         $a0, -4($v0)
/* 2DCE4 8002D0E4 00C3C821 */  addu       $t9, $a2, $v1
/* 2DCE8 8002D0E8 14A8FFEE */  bne        $a1, $t0, .L8002D0A4
/* 2DCEC 8002D0EC AF240000 */   sw        $a0, ($t9)
.L8002D0F0:
/* 2DCF0 8002D0F0 8FBF0014 */  lw         $ra, 0x14($sp)
.L8002D0F4:
/* 2DCF4 8002D0F4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2DCF8 8002D0F8 01201025 */  or         $v0, $t1, $zero
/* 2DCFC 8002D0FC 03E00008 */  jr         $ra
/* 2DD00 8002D100 00000000 */   nop

glabel func_8002D104
/* 2DD04 8002D104 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2DD08 8002D108 8FAE0038 */  lw         $t6, 0x38($sp)
/* 2DD0C 8002D10C AFA50024 */  sw         $a1, 0x24($sp)
/* 2DD10 8002D110 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2DD14 8002D114 AFA60028 */  sw         $a2, 0x28($sp)
/* 2DD18 8002D118 00C02825 */  or         $a1, $a2, $zero
/* 2DD1C 8002D11C 000E78C0 */  sll        $t7, $t6, 3
/* 2DD20 8002D120 AFA7002C */  sw         $a3, 0x2c($sp)
/* 2DD24 8002D124 0C00DEC7 */  jal        func_80037B1C
/* 2DD28 8002D128 01E73021 */   addu      $a2, $t7, $a3
/* 2DD2C 8002D12C 8FB90034 */  lw         $t9, 0x34($sp)
/* 2DD30 8002D130 8FA80038 */  lw         $t0, 0x38($sp)
/* 2DD34 8002D134 8FA40024 */  lw         $a0, 0x24($sp)
/* 2DD38 8002D138 8FA50028 */  lw         $a1, 0x28($sp)
/* 2DD3C 8002D13C 8FA6002C */  lw         $a2, 0x2c($sp)
/* 2DD40 8002D140 8FA70030 */  lw         $a3, 0x30($sp)
/* 2DD44 8002D144 AFB90010 */  sw         $t9, 0x10($sp)
/* 2DD48 8002D148 0C00B404 */  jal        func_8002D010
/* 2DD4C 8002D14C AFA80014 */   sw        $t0, 0x14($sp)
/* 2DD50 8002D150 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2DD54 8002D154 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2DD58 8002D158 03E00008 */  jr         $ra
/* 2DD5C 8002D15C 00000000 */   nop

glabel func_8002D160
/* 2DD60 8002D160 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 2DD64 8002D164 AFBF002C */  sw         $ra, 0x2c($sp)
/* 2DD68 8002D168 AFB00028 */  sw         $s0, 0x28($sp)
/* 2DD6C 8002D16C 8C8F0008 */  lw         $t7, 8($a0)
/* 2DD70 8002D170 8C8E000C */  lw         $t6, 0xc($a0)
/* 2DD74 8002D174 00808025 */  or         $s0, $a0, $zero
/* 2DD78 8002D178 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 2DD7C 8002D17C 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 2DD80 8002D180 2406005D */  addiu      $a2, $zero, 0x5d
/* 2DD84 8002D184 0C00E03D */  jal        func_800380F4
/* 2DD88 8002D188 01CF2823 */   subu      $a1, $t6, $t7
/* 2DD8C 8002D18C AFA20030 */  sw         $v0, 0x30($sp)
/* 2DD90 8002D190 8E190008 */  lw         $t9, 8($s0)
/* 2DD94 8002D194 8E180010 */  lw         $t8, 0x10($s0)
/* 2DD98 8002D198 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 2DD9C 8002D19C 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 2DDA0 8002D1A0 24060063 */  addiu      $a2, $zero, 0x63
/* 2DDA4 8002D1A4 0C00E075 */  jal        func_800381D4
/* 2DDA8 8002D1A8 03192823 */   subu      $a1, $t8, $t9
/* 2DDAC 8002D1AC AFA20034 */  sw         $v0, 0x34($sp)
/* 2DDB0 8002D1B0 8E09000C */  lw         $t1, 0xc($s0)
/* 2DDB4 8002D1B4 8E030008 */  lw         $v1, 8($s0)
/* 2DDB8 8002D1B8 8E080010 */  lw         $t0, 0x10($s0)
/* 2DDBC 8002D1BC 8E040000 */  lw         $a0, ($s0)
/* 2DDC0 8002D1C0 01235023 */  subu       $t2, $t1, $v1
/* 2DDC4 8002D1C4 AFAA0010 */  sw         $t2, 0x10($sp)
/* 2DDC8 8002D1C8 8E0B0014 */  lw         $t3, 0x14($s0)
/* 2DDCC 8002D1CC 8FA50030 */  lw         $a1, 0x30($sp)
/* 2DDD0 8002D1D0 00403025 */  or         $a2, $v0, $zero
/* 2DDD4 8002D1D4 01636023 */  subu       $t4, $t3, $v1
/* 2DDD8 8002D1D8 AFAC0014 */  sw         $t4, 0x14($sp)
/* 2DDDC 8002D1DC 8E0D0018 */  lw         $t5, 0x18($s0)
/* 2DDE0 8002D1E0 01033823 */  subu       $a3, $t0, $v1
/* 2DDE4 8002D1E4 01A37023 */  subu       $t6, $t5, $v1
/* 2DDE8 8002D1E8 0C00B441 */  jal        func_8002D104
/* 2DDEC 8002D1EC AFAE0018 */   sw        $t6, 0x18($sp)
/* 2DDF0 8002D1F0 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 2DDF4 8002D1F4 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 2DDF8 8002D1F8 0C00E152 */  jal        func_80038548
/* 2DDFC 8002D1FC 8FA50034 */   lw        $a1, 0x34($sp)
/* 2DE00 8002D200 8FBF002C */  lw         $ra, 0x2c($sp)
/* 2DE04 8002D204 8FA20030 */  lw         $v0, 0x30($sp)
/* 2DE08 8002D208 8FB00028 */  lw         $s0, 0x28($sp)
/* 2DE0C 8002D20C 03E00008 */  jr         $ra
/* 2DE10 8002D210 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8002D214
/* 2DE14 8002D214 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2DE18 8002D218 00802825 */  or         $a1, $a0, $zero
/* 2DE1C 8002D21C AFBF0014 */  sw         $ra, 0x14($sp)
/* 2DE20 8002D220 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 2DE24 8002D224 0C00E152 */  jal        func_80038548
/* 2DE28 8002D228 24842960 */   addiu     $a0, $a0, %lo(D_800F2960)
/* 2DE2C 8002D22C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2DE30 8002D230 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2DE34 8002D234 03E00008 */  jr         $ra
/* 2DE38 8002D238 00000000 */   nop

glabel func_8002D23C
/* 2DE3C 8002D23C 03E00008 */  jr         $ra
/* 2DE40 8002D240 00000000 */   nop

glabel func_8002D244
/* 2DE44 8002D244 03E00008 */  jr         $ra
/* 2DE48 8002D248 00000000 */   nop

glabel func_8002D24C
/* 2DE4C 8002D24C 03E00008 */  jr         $ra
/* 2DE50 8002D250 00000000 */   nop

glabel func_8002D254
/* 2DE54 8002D254 03E00008 */  jr         $ra
/* 2DE58 8002D258 00000000 */   nop
/* 2DE5C 8002D25C 00000000 */  nop
