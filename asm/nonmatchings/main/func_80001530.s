glabel func_80001530
/* 2130 80001530 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2134 80001534 000470C0 */  sll        $t6, $a0, 3
/* 2138 80001538 01C47023 */  subu       $t6, $t6, $a0
/* 213C 8000153C 3C0F800B */  lui        $t7, %hi(D_800ABCF0)
/* 2140 80001540 25EFBCF0 */  addiu      $t7, $t7, %lo(D_800ABCF0)
/* 2144 80001544 000E7140 */  sll        $t6, $t6, 5
/* 2148 80001548 AFBF001C */  sw         $ra, 0x1c($sp)
/* 214C 8000154C AFA5002C */  sw         $a1, 0x2c($sp)
/* 2150 80001550 01CF1021 */  addu       $v0, $t6, $t7
/* 2154 80001554 AFA60030 */  sw         $a2, 0x30($sp)
/* 2158 80001558 AFA70034 */  sw         $a3, 0x34($sp)
/* 215C 8000155C 244500C4 */  addiu      $a1, $v0, 0xc4
/* 2160 80001560 AFA20020 */  sw         $v0, 0x20($sp)
/* 2164 80001564 0C00053A */  jal        func_800014E8
/* 2168 80001568 C7AC003C */   lwc1      $f12, 0x3c($sp)
/* 216C 8000156C 8FA20020 */  lw         $v0, 0x20($sp)
/* 2170 80001570 8FA4002C */  lw         $a0, 0x2c($sp)
/* 2174 80001574 8FA50030 */  lw         $a1, 0x30($sp)
/* 2178 80001578 245800BC */  addiu      $t8, $v0, 0xbc
/* 217C 8000157C AFB80010 */  sw         $t8, 0x10($sp)
/* 2180 80001580 8FA60034 */  lw         $a2, 0x34($sp)
/* 2184 80001584 0C000518 */  jal        func_80001460
/* 2188 80001588 8FA70038 */   lw        $a3, 0x38($sp)
/* 218C 8000158C 8FBF001C */  lw         $ra, 0x1c($sp)
/* 2190 80001590 27BD0028 */  addiu      $sp, $sp, 0x28
/* 2194 80001594 03E00008 */  jr         $ra
/* 2198 80001598 00000000 */   nop
