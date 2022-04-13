.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80037AE0
/* 386E0 80037AE0 03E00008 */  jr         $ra
/* 386E4 80037AE4 00000000 */   nop

glabel func_80037AE8
/* 386E8 80037AE8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 386EC 80037AEC AFBF0014 */  sw         $ra, 0x14($sp)
/* 386F0 80037AF0 3C05800F */  lui        $a1, %hi(D_800F2620)
/* 386F4 80037AF4 3C06800F */  lui        $a2, %hi(D_800F2638)
/* 386F8 80037AF8 24C62638 */  addiu      $a2, $a2, %lo(D_800F2638)
/* 386FC 80037AFC 24A52620 */  addiu      $a1, $a1, %lo(D_800F2620)
/* 38700 80037B00 24040096 */  addiu      $a0, $zero, 0x96
/* 38704 80037B04 0C014F8C */  jal        osCreatePiManager
/* 38708 80037B08 240700C8 */   addiu     $a3, $zero, 0xc8
/* 3870C 80037B0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 38710 80037B10 27BD0018 */  addiu      $sp, $sp, 0x18
/* 38714 80037B14 03E00008 */  jr         $ra
/* 38718 80037B18 00000000 */   nop

glabel func_80037B1C
/* 3871C 80037B1C 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 38720 80037B20 AFB40034 */  sw         $s4, 0x34($sp)
/* 38724 80037B24 AFB30030 */  sw         $s3, 0x30($sp)
/* 38728 80037B28 AFB2002C */  sw         $s2, 0x2c($sp)
/* 3872C 80037B2C AFB00024 */  sw         $s0, 0x24($sp)
/* 38730 80037B30 00C08025 */  or         $s0, $a2, $zero
/* 38734 80037B34 00A09025 */  or         $s2, $a1, $zero
/* 38738 80037B38 00809825 */  or         $s3, $a0, $zero
/* 3873C 80037B3C 27B40068 */  addiu      $s4, $sp, 0x68
/* 38740 80037B40 AFBF003C */  sw         $ra, 0x3c($sp)
/* 38744 80037B44 AFB50038 */  sw         $s5, 0x38($sp)
/* 38748 80037B48 AFB10028 */  sw         $s1, 0x28($sp)
/* 3874C 80037B4C 02802025 */  or         $a0, $s4, $zero
/* 38750 80037B50 27A50064 */  addiu      $a1, $sp, 0x64
/* 38754 80037B54 0C0145B8 */  jal        osCreateMesgQueue
/* 38758 80037B58 24060001 */   addiu     $a2, $zero, 1
/* 3875C 80037B5C 02402025 */  or         $a0, $s2, $zero
/* 38760 80037B60 0C014CD0 */  jal        osInvalDCache
/* 38764 80037B64 02002825 */   or        $a1, $s0, $zero
/* 38768 80037B68 12000017 */  beqz       $s0, .L80037BC8
/* 3876C 80037B6C 02008825 */   or        $s1, $s0, $zero
/* 38770 80037B70 27B5004C */  addiu      $s5, $sp, 0x4c
.L80037B74:
/* 38774 80037B74 2E214001 */  sltiu      $at, $s1, 0x4001
/* 38778 80037B78 14200003 */  bnez       $at, .L80037B88
/* 3877C 80037B7C 02A02025 */   or        $a0, $s5, $zero
/* 38780 80037B80 10000002 */  b          .L80037B8C
/* 38784 80037B84 24104000 */   addiu     $s0, $zero, 0x4000
.L80037B88:
/* 38788 80037B88 02208025 */  or         $s0, $s1, $zero
.L80037B8C:
/* 3878C 80037B8C 00002825 */  or         $a1, $zero, $zero
/* 38790 80037B90 00003025 */  or         $a2, $zero, $zero
/* 38794 80037B94 02603825 */  or         $a3, $s3, $zero
/* 38798 80037B98 AFB20010 */  sw         $s2, 0x10($sp)
/* 3879C 80037B9C AFB00014 */  sw         $s0, 0x14($sp)
/* 387A0 80037BA0 0C014CFC */  jal        osPiStartDma
/* 387A4 80037BA4 AFB40018 */   sw        $s4, 0x18($sp)
/* 387A8 80037BA8 02802025 */  or         $a0, $s4, $zero
/* 387AC 80037BAC 00002825 */  or         $a1, $zero, $zero
/* 387B0 80037BB0 0C014554 */  jal        osRecvMesg
/* 387B4 80037BB4 24060001 */   addiu     $a2, $zero, 1
/* 387B8 80037BB8 02308823 */  subu       $s1, $s1, $s0
/* 387BC 80037BBC 02709821 */  addu       $s3, $s3, $s0
/* 387C0 80037BC0 1620FFEC */  bnez       $s1, .L80037B74
/* 387C4 80037BC4 02509021 */   addu      $s2, $s2, $s0
.L80037BC8:
/* 387C8 80037BC8 8FBF003C */  lw         $ra, 0x3c($sp)
/* 387CC 80037BCC 8FB00024 */  lw         $s0, 0x24($sp)
/* 387D0 80037BD0 8FB10028 */  lw         $s1, 0x28($sp)
/* 387D4 80037BD4 8FB2002C */  lw         $s2, 0x2c($sp)
/* 387D8 80037BD8 8FB30030 */  lw         $s3, 0x30($sp)
/* 387DC 80037BDC 8FB40034 */  lw         $s4, 0x34($sp)
/* 387E0 80037BE0 8FB50038 */  lw         $s5, 0x38($sp)
/* 387E4 80037BE4 03E00008 */  jr         $ra
/* 387E8 80037BE8 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_80037BEC
/* 387EC 80037BEC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 387F0 80037BF0 AFB00018 */  sw         $s0, 0x18($sp)
/* 387F4 80037BF4 00808025 */  or         $s0, $a0, $zero
/* 387F8 80037BF8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 387FC 80037BFC AFA5002C */  sw         $a1, 0x2c($sp)
/* 38800 80037C00 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 38804 80037C04 00057080 */  sll        $t6, $a1, 2
/* 38808 80037C08 01C02825 */  or         $a1, $t6, $zero
/* 3880C 80037C0C 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 38810 80037C10 0C00E03D */  jal        func_800380F4
/* 38814 80037C14 24060055 */   addiu     $a2, $zero, 0x55
/* 38818 80037C18 8FA5002C */  lw         $a1, 0x2c($sp)
/* 3881C 80037C1C 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 38820 80037C20 AFA20024 */  sw         $v0, 0x24($sp)
/* 38824 80037C24 00057880 */  sll        $t7, $a1, 2
/* 38828 80037C28 01E57823 */  subu       $t7, $t7, $a1
/* 3882C 80037C2C 000F28C0 */  sll        $a1, $t7, 3
/* 38830 80037C30 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 38834 80037C34 0C00E03D */  jal        func_800380F4
/* 38838 80037C38 2406005A */   addiu     $a2, $zero, 0x5a
/* 3883C 80037C3C AE020024 */  sw         $v0, 0x24($s0)
/* 38840 80037C40 8FA6002C */  lw         $a2, 0x2c($sp)
/* 38844 80037C44 8FA50024 */  lw         $a1, 0x24($sp)
/* 38848 80037C48 0C0145B8 */  jal        osCreateMesgQueue
/* 3884C 80037C4C 2604000C */   addiu     $a0, $s0, 0xc
/* 38850 80037C50 AE000000 */  sw         $zero, ($s0)
/* 38854 80037C54 AE000004 */  sw         $zero, 4($s0)
/* 38858 80037C58 8FB8002C */  lw         $t8, 0x2c($sp)
/* 3885C 80037C5C AE180008 */  sw         $t8, 8($s0)
/* 38860 80037C60 8FBF001C */  lw         $ra, 0x1c($sp)
/* 38864 80037C64 8FB00018 */  lw         $s0, 0x18($sp)
/* 38868 80037C68 27BD0028 */  addiu      $sp, $sp, 0x28
/* 3886C 80037C6C 03E00008 */  jr         $ra
/* 38870 80037C70 00000000 */   nop

glabel func_80037C74
/* 38874 80037C74 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 38878 80037C78 AFBF001C */  sw         $ra, 0x1c($sp)
/* 3887C 80037C7C AFB00018 */  sw         $s0, 0x18($sp)
/* 38880 80037C80 0C00DFA8 */  jal        func_80037EA0
/* 38884 80037C84 00808025 */   or        $s0, $a0, $zero
/* 38888 80037C88 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 3888C 80037C8C 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 38890 80037C90 0C00E152 */  jal        func_80038548
/* 38894 80037C94 8E050024 */   lw        $a1, 0x24($s0)
/* 38898 80037C98 3C04800F */  lui        $a0, %hi(D_800F2960)
/* 3889C 80037C9C 24842960 */  addiu      $a0, $a0, %lo(D_800F2960)
/* 388A0 80037CA0 0C00E152 */  jal        func_80038548
/* 388A4 80037CA4 8E050020 */   lw        $a1, 0x20($s0)
/* 388A8 80037CA8 AE000000 */  sw         $zero, ($s0)
/* 388AC 80037CAC AE000004 */  sw         $zero, 4($s0)
/* 388B0 80037CB0 AE000008 */  sw         $zero, 8($s0)
/* 388B4 80037CB4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 388B8 80037CB8 8FB00018 */  lw         $s0, 0x18($sp)
/* 388BC 80037CBC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 388C0 80037CC0 03E00008 */  jr         $ra
/* 388C4 80037CC4 00000000 */   nop

glabel func_80037CC8
/* 388C8 80037CC8 8C8E0000 */  lw         $t6, ($a0)
/* 388CC 80037CCC 25CFFFFF */  addiu      $t7, $t6, -1
/* 388D0 80037CD0 03E00008 */  jr         $ra
/* 388D4 80037CD4 AC8F0000 */   sw        $t7, ($a0)

glabel func_80037CD8
/* 388D8 80037CD8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 388DC 80037CDC AFB10018 */  sw         $s1, 0x18($sp)
/* 388E0 80037CE0 AFB00014 */  sw         $s0, 0x14($sp)
/* 388E4 80037CE4 00808025 */  or         $s0, $a0, $zero
/* 388E8 80037CE8 AFBF001C */  sw         $ra, 0x1c($sp)
/* 388EC 80037CEC 2491000C */  addiu      $s1, $a0, 0xc
/* 388F0 80037CF0 02202025 */  or         $a0, $s1, $zero
/* 388F4 80037CF4 00002825 */  or         $a1, $zero, $zero
/* 388F8 80037CF8 0C014554 */  jal        osRecvMesg
/* 388FC 80037CFC 00003025 */   or        $a2, $zero, $zero
/* 38900 80037D00 5440000A */  bnel       $v0, $zero, .L80037D2C
/* 38904 80037D04 8FBF001C */   lw        $ra, 0x1c($sp)
.L80037D08:
/* 38908 80037D08 0C00DF32 */  jal        func_80037CC8
/* 3890C 80037D0C 02002025 */   or        $a0, $s0, $zero
/* 38910 80037D10 02202025 */  or         $a0, $s1, $zero
/* 38914 80037D14 00002825 */  or         $a1, $zero, $zero
/* 38918 80037D18 0C014554 */  jal        osRecvMesg
/* 3891C 80037D1C 00003025 */   or        $a2, $zero, $zero
/* 38920 80037D20 1040FFF9 */  beqz       $v0, .L80037D08
/* 38924 80037D24 00000000 */   nop
/* 38928 80037D28 8FBF001C */  lw         $ra, 0x1c($sp)
.L80037D2C:
/* 3892C 80037D2C 8E020000 */  lw         $v0, ($s0)
/* 38930 80037D30 8FB00014 */  lw         $s0, 0x14($sp)
/* 38934 80037D34 8FB10018 */  lw         $s1, 0x18($sp)
/* 38938 80037D38 03E00008 */  jr         $ra
/* 3893C 80037D3C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80037D40
/* 38940 80037D40 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 38944 80037D44 AFBF002C */  sw         $ra, 0x2c($sp)
/* 38948 80037D48 AFB00028 */  sw         $s0, 0x28($sp)
/* 3894C 80037D4C 00808025 */  or         $s0, $a0, $zero
/* 38950 80037D50 AFA5003C */  sw         $a1, 0x3c($sp)
/* 38954 80037D54 AFA60040 */  sw         $a2, 0x40($sp)
/* 38958 80037D58 0C00DF36 */  jal        func_80037CD8
/* 3895C 80037D5C AFA70044 */   sw        $a3, 0x44($sp)
/* 38960 80037D60 8E0E0008 */  lw         $t6, 8($s0)
/* 38964 80037D64 2604000C */  addiu      $a0, $s0, 0xc
/* 38968 80037D68 00002825 */  or         $a1, $zero, $zero
/* 3896C 80037D6C 544E0006 */  bnel       $v0, $t6, .L80037D88
/* 38970 80037D70 260F000C */   addiu     $t7, $s0, 0xc
/* 38974 80037D74 0C014554 */  jal        osRecvMesg
/* 38978 80037D78 24060001 */   addiu     $a2, $zero, 1
/* 3897C 80037D7C 0C00DF32 */  jal        func_80037CC8
/* 38980 80037D80 02002025 */   or        $a0, $s0, $zero
/* 38984 80037D84 260F000C */  addiu      $t7, $s0, 0xc
.L80037D88:
/* 38988 80037D88 AFAF0034 */  sw         $t7, 0x34($sp)
/* 3898C 80037D8C 8FA40040 */  lw         $a0, 0x40($sp)
/* 38990 80037D90 0C014CD0 */  jal        osInvalDCache
/* 38994 80037D94 8FA50044 */   lw        $a1, 0x44($sp)
/* 38998 80037D98 8E190004 */  lw         $t9, 4($s0)
/* 3899C 80037D9C 8E180024 */  lw         $t8, 0x24($s0)
/* 389A0 80037DA0 8FA90040 */  lw         $t1, 0x40($sp)
/* 389A4 80037DA4 00194080 */  sll        $t0, $t9, 2
/* 389A8 80037DA8 8FAA0044 */  lw         $t2, 0x44($sp)
/* 389AC 80037DAC 8FAB0034 */  lw         $t3, 0x34($sp)
/* 389B0 80037DB0 01194023 */  subu       $t0, $t0, $t9
/* 389B4 80037DB4 000840C0 */  sll        $t0, $t0, 3
/* 389B8 80037DB8 00002825 */  or         $a1, $zero, $zero
/* 389BC 80037DBC 00003025 */  or         $a2, $zero, $zero
/* 389C0 80037DC0 8FA7003C */  lw         $a3, 0x3c($sp)
/* 389C4 80037DC4 03082021 */  addu       $a0, $t8, $t0
/* 389C8 80037DC8 AFA90010 */  sw         $t1, 0x10($sp)
/* 389CC 80037DCC AFAA0014 */  sw         $t2, 0x14($sp)
/* 389D0 80037DD0 0C014CFC */  jal        osPiStartDma
/* 389D4 80037DD4 AFAB0018 */   sw        $t3, 0x18($sp)
/* 389D8 80037DD8 8E0E0004 */  lw         $t6, 4($s0)
/* 389DC 80037DDC 8E0C0000 */  lw         $t4, ($s0)
/* 389E0 80037DE0 8E180008 */  lw         $t8, 8($s0)
/* 389E4 80037DE4 25CF0001 */  addiu      $t7, $t6, 1
/* 389E8 80037DE8 258D0001 */  addiu      $t5, $t4, 1
/* 389EC 80037DEC 01F8082A */  slt        $at, $t7, $t8
/* 389F0 80037DF0 AE0D0000 */  sw         $t5, ($s0)
/* 389F4 80037DF4 14200002 */  bnez       $at, .L80037E00
/* 389F8 80037DF8 AE0F0004 */   sw        $t7, 4($s0)
/* 389FC 80037DFC AE000004 */  sw         $zero, 4($s0)
.L80037E00:
/* 38A00 80037E00 8FBF002C */  lw         $ra, 0x2c($sp)
/* 38A04 80037E04 8E020000 */  lw         $v0, ($s0)
/* 38A08 80037E08 8FB00028 */  lw         $s0, 0x28($sp)
/* 38A0C 80037E0C 03E00008 */  jr         $ra
/* 38A10 80037E10 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80037E14
/* 38A14 80037E14 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 38A18 80037E18 AFB40028 */  sw         $s4, 0x28($sp)
/* 38A1C 80037E1C AFB30024 */  sw         $s3, 0x24($sp)
/* 38A20 80037E20 AFB20020 */  sw         $s2, 0x20($sp)
/* 38A24 80037E24 AFB1001C */  sw         $s1, 0x1c($sp)
/* 38A28 80037E28 0080A025 */  or         $s4, $a0, $zero
/* 38A2C 80037E2C AFBF002C */  sw         $ra, 0x2c($sp)
/* 38A30 80037E30 AFB00018 */  sw         $s0, 0x18($sp)
/* 38A34 80037E34 00A09025 */  or         $s2, $a1, $zero
/* 38A38 80037E38 00C09825 */  or         $s3, $a2, $zero
/* 38A3C 80037E3C 10E0000F */  beqz       $a3, .L80037E7C
/* 38A40 80037E40 00E08825 */   or        $s1, $a3, $zero
.L80037E44:
/* 38A44 80037E44 2E214001 */  sltiu      $at, $s1, 0x4001
/* 38A48 80037E48 14200003 */  bnez       $at, .L80037E58
/* 38A4C 80037E4C 02802025 */   or        $a0, $s4, $zero
/* 38A50 80037E50 10000002 */  b          .L80037E5C
/* 38A54 80037E54 24104000 */   addiu     $s0, $zero, 0x4000
.L80037E58:
/* 38A58 80037E58 02208025 */  or         $s0, $s1, $zero
.L80037E5C:
/* 38A5C 80037E5C 02402825 */  or         $a1, $s2, $zero
/* 38A60 80037E60 02603025 */  or         $a2, $s3, $zero
/* 38A64 80037E64 0C00DF50 */  jal        func_80037D40
/* 38A68 80037E68 02003825 */   or        $a3, $s0, $zero
/* 38A6C 80037E6C 02308823 */  subu       $s1, $s1, $s0
/* 38A70 80037E70 02509021 */  addu       $s2, $s2, $s0
/* 38A74 80037E74 1620FFF3 */  bnez       $s1, .L80037E44
/* 38A78 80037E78 02709821 */   addu      $s3, $s3, $s0
.L80037E7C:
/* 38A7C 80037E7C 8FBF002C */  lw         $ra, 0x2c($sp)
/* 38A80 80037E80 8E820000 */  lw         $v0, ($s4)
/* 38A84 80037E84 8FB40028 */  lw         $s4, 0x28($sp)
/* 38A88 80037E88 8FB00018 */  lw         $s0, 0x18($sp)
/* 38A8C 80037E8C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 38A90 80037E90 8FB20020 */  lw         $s2, 0x20($sp)
/* 38A94 80037E94 8FB30024 */  lw         $s3, 0x24($sp)
/* 38A98 80037E98 03E00008 */  jr         $ra
/* 38A9C 80037E9C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80037EA0
/* 38AA0 80037EA0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 38AA4 80037EA4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 38AA8 80037EA8 AFB10018 */  sw         $s1, 0x18($sp)
/* 38AAC 80037EAC AFB00014 */  sw         $s0, 0x14($sp)
/* 38AB0 80037EB0 8C8E0000 */  lw         $t6, ($a0)
/* 38AB4 80037EB4 00808025 */  or         $s0, $a0, $zero
/* 38AB8 80037EB8 2491000C */  addiu      $s1, $a0, 0xc
/* 38ABC 80037EBC 19C00009 */  blez       $t6, .L80037EE4
/* 38AC0 80037EC0 02202025 */   or        $a0, $s1, $zero
.L80037EC4:
/* 38AC4 80037EC4 00002825 */  or         $a1, $zero, $zero
/* 38AC8 80037EC8 0C014554 */  jal        osRecvMesg
/* 38ACC 80037ECC 24060001 */   addiu     $a2, $zero, 1
/* 38AD0 80037ED0 0C00DF32 */  jal        func_80037CC8
/* 38AD4 80037ED4 02002025 */   or        $a0, $s0, $zero
/* 38AD8 80037ED8 8E0F0000 */  lw         $t7, ($s0)
/* 38ADC 80037EDC 5DE0FFF9 */  bgtzl      $t7, .L80037EC4
/* 38AE0 80037EE0 02202025 */   or        $a0, $s1, $zero
.L80037EE4:
/* 38AE4 80037EE4 8FBF001C */  lw         $ra, 0x1c($sp)
/* 38AE8 80037EE8 8FB00014 */  lw         $s0, 0x14($sp)
/* 38AEC 80037EEC 8FB10018 */  lw         $s1, 0x18($sp)
/* 38AF0 80037EF0 03E00008 */  jr         $ra
/* 38AF4 80037EF4 27BD0020 */   addiu     $sp, $sp, 0x20
/* 38AF8 80037EF8 00000000 */  nop
/* 38AFC 80037EFC 00000000 */  nop
