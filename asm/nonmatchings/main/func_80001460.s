glabel func_80001460
/* 2060 80001460 04810003 */  bgez       $a0, .L80001470
/* 2064 80001464 8FA20010 */   lw        $v0, 0x10($sp)
/* 2068 80001468 10000005 */  b          .L80001480
/* 206C 8000146C 00002025 */   or        $a0, $zero, $zero
.L80001470:
/* 2070 80001470 2C810100 */  sltiu      $at, $a0, 0x100
/* 2074 80001474 14200002 */  bnez       $at, .L80001480
/* 2078 80001478 00000000 */   nop
/* 207C 8000147C 240400FF */  addiu      $a0, $zero, 0xff
.L80001480:
/* 2080 80001480 04A10003 */  bgez       $a1, .L80001490
/* 2084 80001484 2CA10100 */   sltiu     $at, $a1, 0x100
/* 2088 80001488 10000004 */  b          .L8000149C
/* 208C 8000148C 00002825 */   or        $a1, $zero, $zero
.L80001490:
/* 2090 80001490 14200002 */  bnez       $at, .L8000149C
/* 2094 80001494 00000000 */   nop
/* 2098 80001498 240500FF */  addiu      $a1, $zero, 0xff
.L8000149C:
/* 209C 8000149C 04C10003 */  bgez       $a2, .L800014AC
/* 20A0 800014A0 2CC10100 */   sltiu     $at, $a2, 0x100
/* 20A4 800014A4 10000004 */  b          .L800014B8
/* 20A8 800014A8 00003025 */   or        $a2, $zero, $zero
.L800014AC:
/* 20AC 800014AC 14200002 */  bnez       $at, .L800014B8
/* 20B0 800014B0 00000000 */   nop
/* 20B4 800014B4 240600FF */  addiu      $a2, $zero, 0xff
.L800014B8:
/* 20B8 800014B8 04E10003 */  bgez       $a3, .L800014C8
/* 20BC 800014BC 2CE10100 */   sltiu     $at, $a3, 0x100
/* 20C0 800014C0 10000004 */  b          .L800014D4
/* 20C4 800014C4 00003825 */   or        $a3, $zero, $zero
.L800014C8:
/* 20C8 800014C8 54200003 */  bnel       $at, $zero, .L800014D8
/* 20CC 800014CC A0440000 */   sb        $a0, ($v0)
/* 20D0 800014D0 240700FF */  addiu      $a3, $zero, 0xff
.L800014D4:
/* 20D4 800014D4 A0440000 */  sb         $a0, ($v0)
.L800014D8:
/* 20D8 800014D8 A0450001 */  sb         $a1, 1($v0)
/* 20DC 800014DC A0460002 */  sb         $a2, 2($v0)
/* 20E0 800014E0 03E00008 */  jr         $ra
/* 20E4 800014E4 A0470003 */   sb        $a3, 3($v0)
