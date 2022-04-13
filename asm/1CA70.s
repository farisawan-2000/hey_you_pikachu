.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001BE70
/* 1CA70 8001BE70 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1CA74 8001BE74 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1CA78 8001BE78 AFB00018 */  sw         $s0, 0x18($sp)
/* 1CA7C 8001BE7C 00A03825 */  or         $a3, $a1, $zero
/* 1CA80 8001BE80 AC850000 */  sw         $a1, ($a0)
/* 1CA84 8001BE84 00808025 */  or         $s0, $a0, $zero
/* 1CA88 8001BE88 00052880 */  sll        $a1, $a1, 2
/* 1CA8C 8001BE8C 00A72823 */  subu       $a1, $a1, $a3
/* 1CA90 8001BE90 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 1CA94 8001BE94 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 1CA98 8001BE98 00052880 */  sll        $a1, $a1, 2
/* 1CA9C 8001BE9C AFA70024 */  sw         $a3, 0x24($sp)
/* 1CAA0 8001BEA0 0C00E03D */  jal        func_800380F4
/* 1CAA4 8001BEA4 24060013 */   addiu     $a2, $zero, 0x13
/* 1CAA8 8001BEA8 8FA70024 */  lw         $a3, 0x24($sp)
/* 1CAAC 8001BEAC AE020004 */  sw         $v0, 4($s0)
/* 1CAB0 8001BEB0 00002025 */  or         $a0, $zero, $zero
/* 1CAB4 8001BEB4 10E00027 */  beqz       $a3, .L8001BF54
/* 1CAB8 8001BEB8 00401825 */   or        $v1, $v0, $zero
/* 1CABC 8001BEBC 30E20003 */  andi       $v0, $a3, 3
/* 1CAC0 8001BEC0 1040000A */  beqz       $v0, .L8001BEEC
/* 1CAC4 8001BEC4 00402825 */   or        $a1, $v0, $zero
.L8001BEC8:
/* 1CAC8 8001BEC8 246EFFF4 */  addiu      $t6, $v1, -0xc
/* 1CACC 8001BECC 2462000C */  addiu      $v0, $v1, 0xc
/* 1CAD0 8001BED0 AC620008 */  sw         $v0, 8($v1)
/* 1CAD4 8001BED4 AC6E0004 */  sw         $t6, 4($v1)
/* 1CAD8 8001BED8 AC600000 */  sw         $zero, ($v1)
/* 1CADC 8001BEDC 24840001 */  addiu      $a0, $a0, 1
/* 1CAE0 8001BEE0 14A4FFF9 */  bne        $a1, $a0, .L8001BEC8
/* 1CAE4 8001BEE4 00401825 */   or        $v1, $v0, $zero
/* 1CAE8 8001BEE8 1087001A */  beq        $a0, $a3, .L8001BF54
.L8001BEEC:
/* 1CAEC 8001BEEC 2462000C */   addiu     $v0, $v1, 0xc
/* 1CAF0 8001BEF0 246FFFF4 */  addiu      $t7, $v1, -0xc
/* 1CAF4 8001BEF4 AC620008 */  sw         $v0, 8($v1)
/* 1CAF8 8001BEF8 AC600000 */  sw         $zero, ($v1)
/* 1CAFC 8001BEFC AC6F0004 */  sw         $t7, 4($v1)
/* 1CB00 8001BF00 2458FFF4 */  addiu      $t8, $v0, -0xc
/* 1CB04 8001BF04 00401825 */  or         $v1, $v0, $zero
/* 1CB08 8001BF08 2442000C */  addiu      $v0, $v0, 0xc
/* 1CB0C 8001BF0C AC58FFF8 */  sw         $t8, -8($v0)
/* 1CB10 8001BF10 AC40FFF4 */  sw         $zero, -0xc($v0)
/* 1CB14 8001BF14 AC620008 */  sw         $v0, 8($v1)
/* 1CB18 8001BF18 2459FFF4 */  addiu      $t9, $v0, -0xc
/* 1CB1C 8001BF1C 00401825 */  or         $v1, $v0, $zero
/* 1CB20 8001BF20 2442000C */  addiu      $v0, $v0, 0xc
/* 1CB24 8001BF24 AC59FFF8 */  sw         $t9, -8($v0)
/* 1CB28 8001BF28 AC40FFF4 */  sw         $zero, -0xc($v0)
/* 1CB2C 8001BF2C AC620008 */  sw         $v0, 8($v1)
/* 1CB30 8001BF30 2448FFF4 */  addiu      $t0, $v0, -0xc
/* 1CB34 8001BF34 00401825 */  or         $v1, $v0, $zero
/* 1CB38 8001BF38 2442000C */  addiu      $v0, $v0, 0xc
/* 1CB3C 8001BF3C AC48FFF8 */  sw         $t0, -8($v0)
/* 1CB40 8001BF40 AC40FFF4 */  sw         $zero, -0xc($v0)
/* 1CB44 8001BF44 AC620008 */  sw         $v0, 8($v1)
/* 1CB48 8001BF48 24840004 */  addiu      $a0, $a0, 4
/* 1CB4C 8001BF4C 1487FFE7 */  bne        $a0, $a3, .L8001BEEC
/* 1CB50 8001BF50 00401825 */   or        $v1, $v0, $zero
.L8001BF54:
/* 1CB54 8001BF54 AC60FFFC */  sw         $zero, -4($v1)
/* 1CB58 8001BF58 8E090004 */  lw         $t1, 4($s0)
/* 1CB5C 8001BF5C 2463FFF4 */  addiu      $v1, $v1, -0xc
/* 1CB60 8001BF60 AD200004 */  sw         $zero, 4($t1)
/* 1CB64 8001BF64 8E0A0004 */  lw         $t2, 4($s0)
/* 1CB68 8001BF68 AE000008 */  sw         $zero, 8($s0)
/* 1CB6C 8001BF6C AE00000C */  sw         $zero, 0xc($s0)
/* 1CB70 8001BF70 AE000014 */  sw         $zero, 0x14($s0)
/* 1CB74 8001BF74 AE0A0010 */  sw         $t2, 0x10($s0)
/* 1CB78 8001BF78 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1CB7C 8001BF7C 8FB00018 */  lw         $s0, 0x18($sp)
/* 1CB80 8001BF80 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1CB84 8001BF84 03E00008 */  jr         $ra
/* 1CB88 8001BF88 00000000 */   nop

glabel func_8001BF8C
/* 1CB8C 8001BF8C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1CB90 8001BF90 00803025 */  or         $a2, $a0, $zero
/* 1CB94 8001BF94 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1CB98 8001BF98 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 1CB9C 8001BF9C 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 1CBA0 8001BFA0 0C00E152 */  jal        func_80038548
/* 1CBA4 8001BFA4 8CC50004 */   lw        $a1, 4($a2)
/* 1CBA8 8001BFA8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1CBAC 8001BFAC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1CBB0 8001BFB0 03E00008 */  jr         $ra
/* 1CBB4 8001BFB4 00000000 */   nop

glabel func_8001BFB8
/* 1CBB8 8001BFB8 8C820010 */  lw         $v0, 0x10($a0)
/* 1CBBC 8001BFBC 00A03025 */  or         $a2, $a1, $zero
/* 1CBC0 8001BFC0 8C430008 */  lw         $v1, 8($v0)
/* 1CBC4 8001BFC4 50600003 */  beql       $v1, $zero, .L8001BFD4
/* 1CBC8 8001BFC8 8C85000C */   lw        $a1, 0xc($a0)
/* 1CBCC 8001BFCC AC600004 */  sw         $zero, 4($v1)
/* 1CBD0 8001BFD0 8C85000C */  lw         $a1, 0xc($a0)
.L8001BFD4:
/* 1CBD4 8001BFD4 AC830010 */  sw         $v1, 0x10($a0)
/* 1CBD8 8001BFD8 AC400008 */  sw         $zero, 8($v0)
/* 1CBDC 8001BFDC AC460000 */  sw         $a2, ($v0)
/* 1CBE0 8001BFE0 10A00002 */  beqz       $a1, .L8001BFEC
/* 1CBE4 8001BFE4 AC450004 */   sw        $a1, 4($v0)
/* 1CBE8 8001BFE8 ACA20008 */  sw         $v0, 8($a1)
.L8001BFEC:
/* 1CBEC 8001BFEC 8C8E0008 */  lw         $t6, 8($a0)
/* 1CBF0 8001BFF0 AC82000C */  sw         $v0, 0xc($a0)
/* 1CBF4 8001BFF4 15C00002 */  bnez       $t6, .L8001C000
/* 1CBF8 8001BFF8 00000000 */   nop
/* 1CBFC 8001BFFC AC820008 */  sw         $v0, 8($a0)
.L8001C000:
/* 1CC00 8001C000 03E00008 */  jr         $ra
/* 1CC04 8001C004 00000000 */   nop

glabel func_8001C008
/* 1CC08 8001C008 8C830008 */  lw         $v1, 8($a0)
/* 1CC0C 8001C00C 00001025 */  or         $v0, $zero, $zero
/* 1CC10 8001C010 14600003 */  bnez       $v1, .L8001C020
/* 1CC14 8001C014 AC830014 */   sw        $v1, 0x14($a0)
/* 1CC18 8001C018 03E00008 */  jr         $ra
/* 1CC1C 8001C01C ACA00000 */   sw        $zero, ($a1)
.L8001C020:
/* 1CC20 8001C020 8C6E0000 */  lw         $t6, ($v1)
/* 1CC24 8001C024 24020001 */  addiu      $v0, $zero, 1
/* 1CC28 8001C028 ACAE0000 */  sw         $t6, ($a1)
/* 1CC2C 8001C02C 03E00008 */  jr         $ra
/* 1CC30 8001C030 00000000 */   nop

glabel func_8001C034
/* 1CC34 8001C034 8C820014 */  lw         $v0, 0x14($a0)
/* 1CC38 8001C038 5440000C */  bnel       $v0, $zero, .L8001C06C
/* 1CC3C 8001C03C 8C430008 */   lw        $v1, 8($v0)
/* 1CC40 8001C040 8C830008 */  lw         $v1, 8($a0)
/* 1CC44 8001C044 00001025 */  or         $v0, $zero, $zero
/* 1CC48 8001C048 14600003 */  bnez       $v1, .L8001C058
/* 1CC4C 8001C04C AC830014 */   sw        $v1, 0x14($a0)
/* 1CC50 8001C050 03E00008 */  jr         $ra
/* 1CC54 8001C054 ACA00000 */   sw        $zero, ($a1)
.L8001C058:
/* 1CC58 8001C058 8C6E0000 */  lw         $t6, ($v1)
/* 1CC5C 8001C05C 24020001 */  addiu      $v0, $zero, 1
/* 1CC60 8001C060 03E00008 */  jr         $ra
/* 1CC64 8001C064 ACAE0000 */   sw        $t6, ($a1)
/* 1CC68 8001C068 8C430008 */  lw         $v1, 8($v0)
.L8001C06C:
/* 1CC6C 8001C06C 00001025 */  or         $v0, $zero, $zero
/* 1CC70 8001C070 14600003 */  bnez       $v1, .L8001C080
/* 1CC74 8001C074 AC830014 */   sw        $v1, 0x14($a0)
/* 1CC78 8001C078 03E00008 */  jr         $ra
/* 1CC7C 8001C07C ACA00000 */   sw        $zero, ($a1)
.L8001C080:
/* 1CC80 8001C080 8C6F0000 */  lw         $t7, ($v1)
/* 1CC84 8001C084 24020001 */  addiu      $v0, $zero, 1
/* 1CC88 8001C088 ACAF0000 */  sw         $t7, ($a1)
/* 1CC8C 8001C08C 03E00008 */  jr         $ra
/* 1CC90 8001C090 00000000 */   nop

glabel func_8001C094
/* 1CC94 8001C094 8C830014 */  lw         $v1, 0x14($a0)
/* 1CC98 8001C098 8C620004 */  lw         $v0, 4($v1)
/* 1CC9C 8001C09C 8C650008 */  lw         $a1, 8($v1)
/* 1CCA0 8001C0A0 50400004 */  beql       $v0, $zero, .L8001C0B4
/* 1CCA4 8001C0A4 AC850008 */   sw        $a1, 8($a0)
/* 1CCA8 8001C0A8 10000002 */  b          .L8001C0B4
/* 1CCAC 8001C0AC AC450008 */   sw        $a1, 8($v0)
/* 1CCB0 8001C0B0 AC850008 */  sw         $a1, 8($a0)
.L8001C0B4:
/* 1CCB4 8001C0B4 50A00004 */  beql       $a1, $zero, .L8001C0C8
/* 1CCB8 8001C0B8 AC82000C */   sw        $v0, 0xc($a0)
/* 1CCBC 8001C0BC 10000002 */  b          .L8001C0C8
/* 1CCC0 8001C0C0 ACA20004 */   sw        $v0, 4($a1)
/* 1CCC4 8001C0C4 AC82000C */  sw         $v0, 0xc($a0)
.L8001C0C8:
/* 1CCC8 8001C0C8 8C860010 */  lw         $a2, 0x10($a0)
/* 1CCCC 8001C0CC AC820014 */  sw         $v0, 0x14($a0)
/* 1CCD0 8001C0D0 8C650000 */  lw         $a1, ($v1)
/* 1CCD4 8001C0D4 AC600004 */  sw         $zero, 4($v1)
/* 1CCD8 8001C0D8 10C00002 */  beqz       $a2, .L8001C0E4
/* 1CCDC 8001C0DC AC660008 */   sw        $a2, 8($v1)
/* 1CCE0 8001C0E0 ACC30004 */  sw         $v1, 4($a2)
.L8001C0E4:
/* 1CCE4 8001C0E4 AC830010 */  sw         $v1, 0x10($a0)
/* 1CCE8 8001C0E8 03E00008 */  jr         $ra
/* 1CCEC 8001C0EC 00A01025 */   or        $v0, $a1, $zero

glabel func_8001C0F0
/* 1CCF0 8001C0F0 8C820014 */  lw         $v0, 0x14($a0)
/* 1CCF4 8001C0F4 03E00008 */  jr         $ra
/* 1CCF8 8001C0F8 AC450000 */   sw        $a1, ($v0)

glabel func_8001C0FC
/* 1CCFC 8001C0FC 8C820010 */  lw         $v0, 0x10($a0)
/* 1CD00 8001C100 0002702B */  sltu       $t6, $zero, $v0
/* 1CD04 8001C104 03E00008 */  jr         $ra
/* 1CD08 8001C108 01C01025 */   or        $v0, $t6, $zero
/* 1CD0C 8001C10C 00000000 */  nop
