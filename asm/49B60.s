.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80048F60
/* 49B60 80048F60 03E00008 */  jr         $ra
/* 49B64 80048F64 00000000 */   nop

glabel func_80048F68
/* 49B68 80048F68 46206005 */  abs.d      $f0, $f12
/* 49B6C 80048F6C 00000000 */  nop

glabel func_80048F70
/* 49B70 80048F70 23BDFFD0 */  addi       $sp, $sp, -0x30
/* 49B74 80048F74 F7B40000 */  sdc1       $f20, ($sp)
/* 49B78 80048F78 F7B60008 */  sdc1       $f22, 8($sp)
/* 49B7C 80048F7C F7B80010 */  sdc1       $f24, 0x10($sp)
/* 49B80 80048F80 F7BA0018 */  sdc1       $f26, 0x18($sp)
/* 49B84 80048F84 C4900000 */  lwc1       $f16, ($a0)
/* 49B88 80048F88 C4920004 */  lwc1       $f18, 4($a0)
/* 49B8C 80048F8C C4AA0000 */  lwc1       $f10, ($a1)
/* 49B90 80048F90 C4AC000C */  lwc1       $f12, 0xc($a1)
/* 49B94 80048F94 C4AE0018 */  lwc1       $f14, 0x18($a1)
/* 49B98 80048F98 46105002 */  mul.s      $f0, $f10, $f16
/* 49B9C 80048F9C C4840008 */  lwc1       $f4, 8($a0)
/* 49BA0 80048FA0 46126082 */  mul.s      $f2, $f12, $f18
/* 49BA4 80048FA4 C494000C */  lwc1       $f20, 0xc($a0)
/* 49BA8 80048FA8 F7BC0020 */  sdc1       $f28, 0x20($sp)
/* 49BAC 80048FAC 46047102 */  mul.s      $f4, $f14, $f4
/* 49BB0 80048FB0 F7BE0028 */  sdc1       $f30, 0x28($sp)
/* 49BB4 80048FB4 46145182 */  mul.s      $f6, $f10, $f20
/* 49BB8 80048FB8 C4960010 */  lwc1       $f22, 0x10($a0)
/* 49BBC 80048FBC 46001080 */  add.s      $f2, $f2, $f0
/* 49BC0 80048FC0 46166202 */  mul.s      $f8, $f12, $f22
/* 49BC4 80048FC4 C4800014 */  lwc1       $f0, 0x14($a0)
/* 49BC8 80048FC8 46022100 */  add.s      $f4, $f4, $f2
/* 49BCC 80048FCC 46007002 */  mul.s      $f0, $f14, $f0
/* 49BD0 80048FD0 C4980018 */  lwc1       $f24, 0x18($a0)
/* 49BD4 80048FD4 E4C40000 */  swc1       $f4, ($a2)
/* 49BD8 80048FD8 46185082 */  mul.s      $f2, $f10, $f24
/* 49BDC 80048FDC C49A001C */  lwc1       $f26, 0x1c($a0)
/* 49BE0 80048FE0 46064200 */  add.s      $f8, $f8, $f6
/* 49BE4 80048FE4 461A6102 */  mul.s      $f4, $f12, $f26
/* 49BE8 80048FE8 C4860020 */  lwc1       $f6, 0x20($a0)
/* 49BEC 80048FEC 46080000 */  add.s      $f0, $f0, $f8
/* 49BF0 80048FF0 46067182 */  mul.s      $f6, $f14, $f6
/* 49BF4 80048FF4 C49C0024 */  lwc1       $f28, 0x24($a0)
/* 49BF8 80048FF8 E4C0000C */  swc1       $f0, 0xc($a2)
/* 49BFC 80048FFC 461C5202 */  mul.s      $f8, $f10, $f28
/* 49C00 80049000 C49E0028 */  lwc1       $f30, 0x28($a0)
/* 49C04 80049004 46022100 */  add.s      $f4, $f4, $f2
/* 49C08 80049008 461E6002 */  mul.s      $f0, $f12, $f30
/* 49C0C 8004900C C482002C */  lwc1       $f2, 0x2c($a0)
/* 49C10 80049010 46043180 */  add.s      $f6, $f6, $f4
/* 49C14 80049014 46027082 */  mul.s      $f2, $f14, $f2
/* 49C18 80049018 E4C60018 */  swc1       $f6, 0x18($a2)
/* 49C1C 8004901C C4A40024 */  lwc1       $f4, 0x24($a1)
/* 49C20 80049020 C4AA0004 */  lwc1       $f10, 4($a1)
/* 49C24 80049024 46044200 */  add.s      $f8, $f8, $f4
/* 49C28 80049028 C4AC0010 */  lwc1       $f12, 0x10($a1)
/* 49C2C 8004902C C4AE001C */  lwc1       $f14, 0x1c($a1)
/* 49C30 80049030 46105102 */  mul.s      $f4, $f10, $f16
/* 49C34 80049034 46080000 */  add.s      $f0, $f0, $f8
/* 49C38 80049038 46126182 */  mul.s      $f6, $f12, $f18
/* 49C3C 8004903C C4880008 */  lwc1       $f8, 8($a0)
/* 49C40 80049040 46001080 */  add.s      $f2, $f2, $f0
/* 49C44 80049044 46087202 */  mul.s      $f8, $f14, $f8
/* 49C48 80049048 E4C20024 */  swc1       $f2, 0x24($a2)
/* 49C4C 8004904C 46145002 */  mul.s      $f0, $f10, $f20
/* 49C50 80049050 46043180 */  add.s      $f6, $f6, $f4
/* 49C54 80049054 46166082 */  mul.s      $f2, $f12, $f22
/* 49C58 80049058 C4840014 */  lwc1       $f4, 0x14($a0)
/* 49C5C 8004905C 46064200 */  add.s      $f8, $f8, $f6
/* 49C60 80049060 46047102 */  mul.s      $f4, $f14, $f4
/* 49C64 80049064 E4C80004 */  swc1       $f8, 4($a2)
/* 49C68 80049068 46185182 */  mul.s      $f6, $f10, $f24
/* 49C6C 8004906C 46001080 */  add.s      $f2, $f2, $f0
/* 49C70 80049070 461A6202 */  mul.s      $f8, $f12, $f26
/* 49C74 80049074 C4800020 */  lwc1       $f0, 0x20($a0)
/* 49C78 80049078 46022100 */  add.s      $f4, $f4, $f2
/* 49C7C 8004907C 46007002 */  mul.s      $f0, $f14, $f0
/* 49C80 80049080 E4C40010 */  swc1       $f4, 0x10($a2)
/* 49C84 80049084 461C5082 */  mul.s      $f2, $f10, $f28
/* 49C88 80049088 46064200 */  add.s      $f8, $f8, $f6
/* 49C8C 8004908C 461E6102 */  mul.s      $f4, $f12, $f30
/* 49C90 80049090 C486002C */  lwc1       $f6, 0x2c($a0)
/* 49C94 80049094 46080000 */  add.s      $f0, $f0, $f8
/* 49C98 80049098 46067182 */  mul.s      $f6, $f14, $f6
/* 49C9C 8004909C E4C0001C */  swc1       $f0, 0x1c($a2)
/* 49CA0 800490A0 C4A80028 */  lwc1       $f8, 0x28($a1)
/* 49CA4 800490A4 C4AA0008 */  lwc1       $f10, 8($a1)
/* 49CA8 800490A8 46081080 */  add.s      $f2, $f2, $f8
/* 49CAC 800490AC C4AC0014 */  lwc1       $f12, 0x14($a1)
/* 49CB0 800490B0 C4AE0020 */  lwc1       $f14, 0x20($a1)
/* 49CB4 800490B4 46105202 */  mul.s      $f8, $f10, $f16
/* 49CB8 800490B8 46022100 */  add.s      $f4, $f4, $f2
/* 49CBC 800490BC 46126002 */  mul.s      $f0, $f12, $f18
/* 49CC0 800490C0 C4820008 */  lwc1       $f2, 8($a0)
/* 49CC4 800490C4 46043180 */  add.s      $f6, $f6, $f4
/* 49CC8 800490C8 46027082 */  mul.s      $f2, $f14, $f2
/* 49CCC 800490CC E4C60028 */  swc1       $f6, 0x28($a2)
/* 49CD0 800490D0 46145102 */  mul.s      $f4, $f10, $f20
/* 49CD4 800490D4 D7B40000 */  ldc1       $f20, ($sp)
/* 49CD8 800490D8 46080000 */  add.s      $f0, $f0, $f8
/* 49CDC 800490DC 46166182 */  mul.s      $f6, $f12, $f22
/* 49CE0 800490E0 C4880014 */  lwc1       $f8, 0x14($a0)
/* 49CE4 800490E4 46001080 */  add.s      $f2, $f2, $f0
/* 49CE8 800490E8 46087202 */  mul.s      $f8, $f14, $f8
/* 49CEC 800490EC E4C20008 */  swc1       $f2, 8($a2)
/* 49CF0 800490F0 46185002 */  mul.s      $f0, $f10, $f24
/* 49CF4 800490F4 D7B60008 */  ldc1       $f22, 8($sp)
/* 49CF8 800490F8 46043180 */  add.s      $f6, $f6, $f4
/* 49CFC 800490FC 461A6082 */  mul.s      $f2, $f12, $f26
/* 49D00 80049100 C4840020 */  lwc1       $f4, 0x20($a0)
/* 49D04 80049104 46064200 */  add.s      $f8, $f8, $f6
/* 49D08 80049108 46047102 */  mul.s      $f4, $f14, $f4
/* 49D0C 8004910C E4C80014 */  swc1       $f8, 0x14($a2)
/* 49D10 80049110 461C5182 */  mul.s      $f6, $f10, $f28
/* 49D14 80049114 D7B80010 */  ldc1       $f24, 0x10($sp)
/* 49D18 80049118 46001080 */  add.s      $f2, $f2, $f0
/* 49D1C 8004911C 461E6202 */  mul.s      $f8, $f12, $f30
/* 49D20 80049120 C480002C */  lwc1       $f0, 0x2c($a0)
/* 49D24 80049124 46022100 */  add.s      $f4, $f4, $f2
/* 49D28 80049128 46007002 */  mul.s      $f0, $f14, $f0
/* 49D2C 8004912C E4C40020 */  swc1       $f4, 0x20($a2)
/* 49D30 80049130 C4A2002C */  lwc1       $f2, 0x2c($a1)
/* 49D34 80049134 D7BA0018 */  ldc1       $f26, 0x18($sp)
/* 49D38 80049138 46023180 */  add.s      $f6, $f6, $f2
/* 49D3C 8004913C D7BC0020 */  ldc1       $f28, 0x20($sp)
/* 49D40 80049140 46064200 */  add.s      $f8, $f8, $f6
/* 49D44 80049144 D7BE0028 */  ldc1       $f30, 0x28($sp)
/* 49D48 80049148 46080000 */  add.s      $f0, $f0, $f8
/* 49D4C 8004914C E4C0002C */  swc1       $f0, 0x2c($a2)
/* 49D50 80049150 03E00008 */  jr         $ra
/* 49D54 80049154 23BD0030 */   addi      $sp, $sp, 0x30
/* 49D58 80049158 00000000 */  nop
/* 49D5C 8004915C 00000000 */  nop
