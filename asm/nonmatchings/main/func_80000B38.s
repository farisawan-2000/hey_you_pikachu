glabel func_80000B38
/* 1738 80000B38 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 173C 80000B3C 2CC10140 */  sltiu      $at, $a2, 0x140
/* 1740 80000B40 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1744 80000B44 AFA40028 */  sw         $a0, 0x28($sp)
/* 1748 80000B48 AFA5002C */  sw         $a1, 0x2c($sp)
/* 174C 80000B4C 14200003 */  bnez       $at, .L80000B5C
/* 1750 80000B50 AFA60030 */   sw        $a2, 0x30($sp)
/* 1754 80000B54 240F013F */  addiu      $t7, $zero, 0x13f
/* 1758 80000B58 AFAF0030 */  sw         $t7, 0x30($sp)
.L80000B5C:
/* 175C 80000B5C 2CE100F0 */  sltiu      $at, $a3, 0xf0
/* 1760 80000B60 14200002 */  bnez       $at, .L80000B6C
/* 1764 80000B64 8FB80028 */   lw        $t8, 0x28($sp)
/* 1768 80000B68 240700EF */  addiu      $a3, $zero, 0xef
.L80000B6C:
/* 176C 80000B6C 8FB90030 */  lw         $t9, 0x30($sp)
/* 1770 80000B70 8FA9002C */  lw         $t1, 0x2c($sp)
/* 1774 80000B74 0319082B */  sltu       $at, $t8, $t9
/* 1778 80000B78 10200056 */  beqz       $at, .L80000CD4
/* 177C 80000B7C 0127082B */   sltu      $at, $t1, $a3
/* 1780 80000B80 10200054 */  beqz       $at, .L80000CD4
/* 1784 80000B84 3C05800B */   lui       $a1, %hi(D_800ABDD0)
/* 1788 80000B88 24A5BDD0 */  addiu      $a1, $a1, %lo(D_800ABDD0)
/* 178C 80000B8C 8CA30000 */  lw         $v1, ($a1)
/* 1790 80000B90 3C0BE700 */  lui        $t3, 0xe700
/* 1794 80000B94 3C0DE300 */  lui        $t5, 0xe300
/* 1798 80000B98 246A0008 */  addiu      $t2, $v1, 8
/* 179C 80000B9C ACAA0000 */  sw         $t2, ($a1)
/* 17A0 80000BA0 AC6B0000 */  sw         $t3, ($v1)
/* 17A4 80000BA4 AC600004 */  sw         $zero, 4($v1)
/* 17A8 80000BA8 8CA30000 */  lw         $v1, ($a1)
/* 17AC 80000BAC 35AD0A01 */  ori        $t5, $t5, 0xa01
/* 17B0 80000BB0 3C0E0030 */  lui        $t6, 0x30
/* 17B4 80000BB4 246C0008 */  addiu      $t4, $v1, 8
/* 17B8 80000BB8 ACAC0000 */  sw         $t4, ($a1)
/* 17BC 80000BBC AC6D0000 */  sw         $t5, ($v1)
/* 17C0 80000BC0 AC6E0004 */  sw         $t6, 4($v1)
/* 17C4 80000BC4 8CA30000 */  lw         $v1, ($a1)
/* 17C8 80000BC8 3C18FF10 */  lui        $t8, 0xff10
/* 17CC 80000BCC 3718013F */  ori        $t8, $t8, 0x13f
/* 17D0 80000BD0 246F0008 */  addiu      $t7, $v1, 8
/* 17D4 80000BD4 ACAF0000 */  sw         $t7, ($a1)
/* 17D8 80000BD8 3C19800F */  lui        $t9, %hi(D_800F298C)
/* 17DC 80000BDC AC780000 */  sw         $t8, ($v1)
/* 17E0 80000BE0 8F39298C */  lw         $t9, %lo(D_800F298C)($t9)
/* 17E4 80000BE4 3C0A803B */  lui        $t2, %hi(D_803B5000)
/* 17E8 80000BE8 254A5000 */  addiu      $t2, $t2, %lo(D_803B5000)
/* 17EC 80000BEC 00194880 */  sll        $t1, $t9, 2
/* 17F0 80000BF0 01394821 */  addu       $t1, $t1, $t9
/* 17F4 80000BF4 00094880 */  sll        $t1, $t1, 2
/* 17F8 80000BF8 01394823 */  subu       $t1, $t1, $t9
/* 17FC 80000BFC 00094880 */  sll        $t1, $t1, 2
/* 1800 80000C00 01394823 */  subu       $t1, $t1, $t9
/* 1804 80000C04 00094AC0 */  sll        $t1, $t1, 0xb
/* 1808 80000C08 012A2021 */  addu       $a0, $t1, $t2
/* 180C 80000C0C AFA70034 */  sw         $a3, 0x34($sp)
/* 1810 80000C10 0C0143B0 */  jal        osVirtualToPhysical
/* 1814 80000C14 AFA3001C */   sw        $v1, 0x1c($sp)
/* 1818 80000C18 8FA8001C */  lw         $t0, 0x1c($sp)
/* 181C 80000C1C 3C05800B */  lui        $a1, %hi(D_800ABDD0)
/* 1820 80000C20 24A5BDD0 */  addiu      $a1, $a1, %lo(D_800ABDD0)
/* 1824 80000C24 AD020004 */  sw         $v0, 4($t0)
/* 1828 80000C28 8CA30000 */  lw         $v1, ($a1)
/* 182C 80000C2C 3C0CF700 */  lui        $t4, 0xf700
/* 1830 80000C30 3C01F600 */  lui        $at, 0xf600
/* 1834 80000C34 246B0008 */  addiu      $t3, $v1, 8
/* 1838 80000C38 ACAB0000 */  sw         $t3, ($a1)
/* 183C 80000C3C AC6C0000 */  sw         $t4, ($v1)
/* 1840 80000C40 93B8003F */  lbu        $t8, 0x3f($sp)
/* 1844 80000C44 93AD003B */  lbu        $t5, 0x3b($sp)
/* 1848 80000C48 93AB0043 */  lbu        $t3, 0x43($sp)
/* 184C 80000C4C 0018C8C0 */  sll        $t9, $t8, 3
/* 1850 80000C50 93B80047 */  lbu        $t8, 0x47($sp)
/* 1854 80000C54 000D7200 */  sll        $t6, $t5, 8
/* 1858 80000C58 31CFF800 */  andi       $t7, $t6, 0xf800
/* 185C 80000C5C 332907C0 */  andi       $t1, $t9, 0x7c0
/* 1860 80000C60 000B6083 */  sra        $t4, $t3, 2
/* 1864 80000C64 318D003E */  andi       $t5, $t4, 0x3e
/* 1868 80000C68 01E95025 */  or         $t2, $t7, $t1
/* 186C 80000C6C 014D7025 */  or         $t6, $t2, $t5
/* 1870 80000C70 33190001 */  andi       $t9, $t8, 1
/* 1874 80000C74 01D93025 */  or         $a2, $t6, $t9
/* 1878 80000C78 00067C00 */  sll        $t7, $a2, 0x10
/* 187C 80000C7C 01E64825 */  or         $t1, $t7, $a2
/* 1880 80000C80 AC690004 */  sw         $t1, 4($v1)
/* 1884 80000C84 8FAC0030 */  lw         $t4, 0x30($sp)
/* 1888 80000C88 8FAE0034 */  lw         $t6, 0x34($sp)
/* 188C 80000C8C 8CA30000 */  lw         $v1, ($a1)
/* 1890 80000C90 318A03FF */  andi       $t2, $t4, 0x3ff
/* 1894 80000C94 000A6B80 */  sll        $t5, $t2, 0xe
/* 1898 80000C98 31D903FF */  andi       $t9, $t6, 0x3ff
/* 189C 80000C9C 00197880 */  sll        $t7, $t9, 2
/* 18A0 80000CA0 01A1C025 */  or         $t8, $t5, $at
/* 18A4 80000CA4 246B0008 */  addiu      $t3, $v1, 8
/* 18A8 80000CA8 ACAB0000 */  sw         $t3, ($a1)
/* 18AC 80000CAC 030F4825 */  or         $t1, $t8, $t7
/* 18B0 80000CB0 AC690000 */  sw         $t1, ($v1)
/* 18B4 80000CB4 8FAD002C */  lw         $t5, 0x2c($sp)
/* 18B8 80000CB8 8FAB0028 */  lw         $t3, 0x28($sp)
/* 18BC 80000CBC 31AE03FF */  andi       $t6, $t5, 0x3ff
/* 18C0 80000CC0 316C03FF */  andi       $t4, $t3, 0x3ff
/* 18C4 80000CC4 000C5380 */  sll        $t2, $t4, 0xe
/* 18C8 80000CC8 000EC880 */  sll        $t9, $t6, 2
/* 18CC 80000CCC 0159C025 */  or         $t8, $t2, $t9
/* 18D0 80000CD0 AC780004 */  sw         $t8, 4($v1)
.L80000CD4:
/* 18D4 80000CD4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 18D8 80000CD8 27BD0028 */  addiu      $sp, $sp, 0x28
/* 18DC 80000CDC 03E00008 */  jr         $ra
/* 18E0 80000CE0 00000000 */   nop
