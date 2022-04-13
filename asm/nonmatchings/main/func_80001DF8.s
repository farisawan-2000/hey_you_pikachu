glabel func_80001DF8
/* 29F8 80001DF8 3C05800B */  lui        $a1, %hi(D_800ABDD0)
/* 29FC 80001DFC 24A5BDD0 */  addiu      $a1, $a1, %lo(D_800ABDD0)
/* 2A00 80001E00 8CA30000 */  lw         $v1, ($a1)
/* 2A04 80001E04 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2A08 80001E08 AFBF001C */  sw         $ra, 0x1c($sp)
/* 2A0C 80001E0C 246E0008 */  addiu      $t6, $v1, 8
/* 2A10 80001E10 ACAE0000 */  sw         $t6, ($a1)
/* 2A14 80001E14 3C180101 */  lui        $t8, 0x101
/* 2A18 80001E18 2718C7E0 */  addiu      $t8, $t8, -0x3820
/* 2A1C 80001E1C 3C0FDE00 */  lui        $t7, 0xde00
/* 2A20 80001E20 3C19800B */  lui        $t9, %hi(D_800AE504)
/* 2A24 80001E24 AC6F0000 */  sw         $t7, ($v1)
/* 2A28 80001E28 AC780004 */  sw         $t8, 4($v1)
/* 2A2C 80001E2C 8F39E504 */  lw         $t9, %lo(D_800AE504)($t9)
/* 2A30 80001E30 2F210013 */  sltiu      $at, $t9, 0x13
/* 2A34 80001E34 10200075 */  beqz       $at, .L8000200C
/* 2A38 80001E38 0019C880 */   sll       $t9, $t9, 2
/* 2A3C 80001E3C 3C01800A */  lui        $at, %hi(D_8009FCA0)
/* 2A40 80001E40 00390821 */  addu       $at, $at, $t9
/* 2A44 80001E44 8C39FCA0 */  lw         $t9, %lo(D_8009FCA0)($at)
/* 2A48 80001E48 03200008 */  jr         $t9
/* 2A4C 80001E4C 00000000 */   nop
/* 2A50 80001E50 0C0025B5 */  jal        func_800096D4
/* 2A54 80001E54 00002025 */   or        $a0, $zero, $zero
/* 2A58 80001E58 3C04800B */  lui        $a0, %hi(D_800ABDD8)
/* 2A5C 80001E5C 0C00072C */  jal        func_80001CB0
/* 2A60 80001E60 8C84BDD8 */   lw        $a0, %lo(D_800ABDD8)($a0)
/* 2A64 80001E64 3C04800B */  lui        $a0, %hi(D_800ABDD8)
/* 2A68 80001E68 8C84BDD8 */  lw         $a0, %lo(D_800ABDD8)($a0)
/* 2A6C 80001E6C 0C000453 */  jal        func_8000114C
/* 2A70 80001E70 24050001 */   addiu     $a1, $zero, 1
/* 2A74 80001E74 3C04800B */  lui        $a0, %hi(D_800ABDD8)
/* 2A78 80001E78 0C000486 */  jal        func_80001218
/* 2A7C 80001E7C 8C84BDD8 */   lw        $a0, %lo(D_800ABDD8)($a0)
/* 2A80 80001E80 3C04800B */  lui        $a0, %hi(D_800ABDD0)
/* 2A84 80001E84 0C008BF4 */  jal        func_80022FD0
/* 2A88 80001E88 2484BDD0 */   addiu     $a0, $a0, %lo(D_800ABDD0)
/* 2A8C 80001E8C 0C009EB4 */  jal        func_80027AD0
/* 2A90 80001E90 00000000 */   nop
/* 2A94 80001E94 3C04800B */  lui        $a0, %hi(D_800ABDD8)
/* 2A98 80001E98 0C0004C9 */  jal        func_80001324
/* 2A9C 80001E9C 8C84BDD8 */   lw        $a0, %lo(D_800ABDD8)($a0)
/* 2AA0 80001EA0 3C04800B */  lui        $a0, %hi(D_800ABDD0)
/* 2AA4 80001EA4 0C008B6F */  jal        func_80022DBC
/* 2AA8 80001EA8 2484BDD0 */   addiu     $a0, $a0, %lo(D_800ABDD0)
/* 2AAC 80001EAC 10000057 */  b          .L8000200C
/* 2AB0 80001EB0 00000000 */   nop
/* 2AB4 80001EB4 0C00D3DB */  jal        func_80034F6C
/* 2AB8 80001EB8 00A02025 */   or        $a0, $a1, $zero
/* 2ABC 80001EBC 10000053 */  b          .L8000200C
/* 2AC0 80001EC0 00000000 */   nop
/* 2AC4 80001EC4 0C00A2B5 */  jal        func_80028AD4
/* 2AC8 80001EC8 00A02025 */   or        $a0, $a1, $zero
/* 2ACC 80001ECC 1000004F */  b          .L8000200C
/* 2AD0 80001ED0 00000000 */   nop
/* 2AD4 80001ED4 0C00A531 */  jal        func_800294C4
/* 2AD8 80001ED8 00A02025 */   or        $a0, $a1, $zero
/* 2ADC 80001EDC 1000004B */  b          .L8000200C
/* 2AE0 80001EE0 00000000 */   nop
/* 2AE4 80001EE4 0C0025B5 */  jal        func_800096D4
/* 2AE8 80001EE8 00002025 */   or        $a0, $zero, $zero
/* 2AEC 80001EEC 3C04800B */  lui        $a0, %hi(D_800ABDD8)
/* 2AF0 80001EF0 8C84BDD8 */  lw         $a0, %lo(D_800ABDD8)($a0)
/* 2AF4 80001EF4 0C000453 */  jal        func_8000114C
/* 2AF8 80001EF8 00002825 */   or        $a1, $zero, $zero
/* 2AFC 80001EFC 3C04800B */  lui        $a0, %hi(D_800ABDD8)
/* 2B00 80001F00 0C000486 */  jal        func_80001218
/* 2B04 80001F04 8C84BDD8 */   lw        $a0, %lo(D_800ABDD8)($a0)
/* 2B08 80001F08 3C04800B */  lui        $a0, %hi(D_800ABDD0)
/* 2B0C 80001F0C 0C008BF4 */  jal        func_80022FD0
/* 2B10 80001F10 2484BDD0 */   addiu     $a0, $a0, %lo(D_800ABDD0)
/* 2B14 80001F14 3C04800B */  lui        $a0, %hi(D_800ABDD8)
/* 2B18 80001F18 0C0004C9 */  jal        func_80001324
/* 2B1C 80001F1C 8C84BDD8 */   lw        $a0, %lo(D_800ABDD8)($a0)
/* 2B20 80001F20 1000003A */  b          .L8000200C
/* 2B24 80001F24 00000000 */   nop
/* 2B28 80001F28 0C00DE2A */  jal        func_800378A8
/* 2B2C 80001F2C 00A02025 */   or        $a0, $a1, $zero
/* 2B30 80001F30 3C04800B */  lui        $a0, %hi(D_800ABDD8)
/* 2B34 80001F34 8C84BDD8 */  lw         $a0, %lo(D_800ABDD8)($a0)
/* 2B38 80001F38 0C000453 */  jal        func_8000114C
/* 2B3C 80001F3C 00002825 */   or        $a1, $zero, $zero
/* 2B40 80001F40 3C04800B */  lui        $a0, %hi(D_800ABDD8)
/* 2B44 80001F44 0C0004C9 */  jal        func_80001324
/* 2B48 80001F48 8C84BDD8 */   lw        $a0, %lo(D_800ABDD8)($a0)
/* 2B4C 80001F4C 1000002F */  b          .L8000200C
/* 2B50 80001F50 00000000 */   nop
/* 2B54 80001F54 0C0025B5 */  jal        func_800096D4
/* 2B58 80001F58 00002025 */   or        $a0, $zero, $zero
/* 2B5C 80001F5C 3C04800B */  lui        $a0, %hi(D_800ABDD8)
/* 2B60 80001F60 8C84BDD8 */  lw         $a0, %lo(D_800ABDD8)($a0)
/* 2B64 80001F64 0C000453 */  jal        func_8000114C
/* 2B68 80001F68 00002825 */   or        $a1, $zero, $zero
/* 2B6C 80001F6C 3C04800B */  lui        $a0, %hi(D_800ABDD8)
/* 2B70 80001F70 0C000486 */  jal        func_80001218
/* 2B74 80001F74 8C84BDD8 */   lw        $a0, %lo(D_800ABDD8)($a0)
/* 2B78 80001F78 3C04800B */  lui        $a0, %hi(D_800ABDD8)
/* 2B7C 80001F7C 0C0004C9 */  jal        func_80001324
/* 2B80 80001F80 8C84BDD8 */   lw        $a0, %lo(D_800ABDD8)($a0)
/* 2B84 80001F84 0C003025 */  jal        func_8000C094
/* 2B88 80001F88 00000000 */   nop
/* 2B8C 80001F8C 1000001F */  b          .L8000200C
/* 2B90 80001F90 00000000 */   nop
/* 2B94 80001F94 0C0025B5 */  jal        func_800096D4
/* 2B98 80001F98 00002025 */   or        $a0, $zero, $zero
/* 2B9C 80001F9C 3C04800B */  lui        $a0, %hi(D_800ABDD8)
/* 2BA0 80001FA0 8C84BDD8 */  lw         $a0, %lo(D_800ABDD8)($a0)
/* 2BA4 80001FA4 0C000453 */  jal        func_8000114C
/* 2BA8 80001FA8 00002825 */   or        $a1, $zero, $zero
/* 2BAC 80001FAC 3C04800B */  lui        $a0, %hi(D_800ABDD8)
/* 2BB0 80001FB0 0C000486 */  jal        func_80001218
/* 2BB4 80001FB4 8C84BDD8 */   lw        $a0, %lo(D_800ABDD8)($a0)
/* 2BB8 80001FB8 3C04800B */  lui        $a0, %hi(D_800ABDD8)
/* 2BBC 80001FBC 0C0004C9 */  jal        func_80001324
/* 2BC0 80001FC0 8C84BDD8 */   lw        $a0, %lo(D_800ABDD8)($a0)
/* 2BC4 80001FC4 10000011 */  b          .L8000200C
/* 2BC8 80001FC8 00000000 */   nop
/* 2BCC 80001FCC 0C00C3DA */  jal        func_80030F68
/* 2BD0 80001FD0 00A02025 */   or        $a0, $a1, $zero
/* 2BD4 80001FD4 0C009EB4 */  jal        func_80027AD0
/* 2BD8 80001FD8 00000000 */   nop
/* 2BDC 80001FDC 1000000B */  b          .L8000200C
/* 2BE0 80001FE0 00000000 */   nop
/* 2BE4 80001FE4 0C0467F1 */  jal        func_80119FC4
/* 2BE8 80001FE8 00A02025 */   or        $a0, $a1, $zero
/* 2BEC 80001FEC 10000007 */  b          .L8000200C
/* 2BF0 80001FF0 00000000 */   nop
/* 2BF4 80001FF4 0C00B113 */  jal        func_8002C44C
/* 2BF8 80001FF8 00000000 */   nop
/* 2BFC 80001FFC 10000003 */  b          .L8000200C
/* 2C00 80002000 00000000 */   nop
/* 2C04 80002004 0C00B728 */  jal        func_8002DCA0
/* 2C08 80002008 00A02025 */   or        $a0, $a1, $zero
.L8000200C:
/* 2C0C 8000200C 0C00FDA5 */  jal        func_8003F694
/* 2C10 80002010 00000000 */   nop
/* 2C14 80002014 3C04800B */  lui        $a0, %hi(D_800B67B0)
/* 2C18 80002018 0C00FEDB */  jal        func_8003FB6C
/* 2C1C 8000201C 248467B0 */   addiu     $a0, $a0, %lo(D_800B67B0)
/* 2C20 80002020 3C08800B */  lui        $t0, %hi(D_800AE4C0)
/* 2C24 80002024 2508E4C0 */  addiu      $t0, $t0, %lo(D_800AE4C0)
/* 2C28 80002028 3C06800B */  lui        $a2, %hi(D_800ABDD4)
/* 2C2C 8000202C 3C07800B */  lui        $a3, %hi(D_800ABDD0)
/* 2C30 80002030 24E7BDD0 */  addiu      $a3, $a3, %lo(D_800ABDD0)
/* 2C34 80002034 24C6BDD4 */  addiu      $a2, $a2, %lo(D_800ABDD4)
/* 2C38 80002038 AFA80010 */  sw         $t0, 0x10($sp)
/* 2C3C 8000203C 00002025 */  or         $a0, $zero, $zero
/* 2C40 80002040 0C00F17B */  jal        func_8003C5EC
/* 2C44 80002044 00002825 */   or        $a1, $zero, $zero
/* 2C48 80002048 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2C4C 8000204C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 2C50 80002050 03E00008 */  jr         $ra
/* 2C54 80002054 00000000 */   nop
