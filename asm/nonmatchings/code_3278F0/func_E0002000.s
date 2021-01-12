.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_E0002000
/* 3278F0 E0002000 27BDFF88 */  addiu     $sp, $sp, -0x78
/* 3278F4 E0002004 F7BA0060 */  sdc1      $f26, 0x60($sp)
/* 3278F8 E0002008 46006686 */  mov.s     $f26, $f12
/* 3278FC E000200C F7BC0068 */  sdc1      $f28, 0x68($sp)
/* 327900 E0002010 46007706 */  mov.s     $f28, $f14
/* 327904 E0002014 27A40010 */  addiu     $a0, $sp, 0x10
/* 327908 E0002018 F7BE0070 */  sdc1      $f30, 0x70($sp)
/* 32790C E000201C 4486F000 */  mtc1      $a2, $f30
/* 327910 E0002020 3C02E000 */  lui       $v0, %hi(func_E00021B4)
/* 327914 E0002024 244221B4 */  addiu     $v0, $v0, %lo(func_E00021B4)
/* 327918 E0002028 AFA20018 */  sw        $v0, 0x18($sp)
/* 32791C E000202C 3C02E000 */  lui       $v0, %hi(func_E00021BC)
/* 327920 E0002030 244221BC */  addiu     $v0, $v0, %lo(func_E00021BC)
/* 327924 E0002034 AFA2001C */  sw        $v0, 0x1c($sp)
/* 327928 E0002038 3C02E000 */  lui       $v0, %hi(func_E00022BC)
/* 32792C E000203C 244222BC */  addiu     $v0, $v0, %lo(func_E00022BC)
/* 327930 E0002040 AFA20020 */  sw        $v0, 0x20($sp)
/* 327934 E0002044 24020001 */  addiu     $v0, $zero, 1
/* 327938 E0002048 AFBF0044 */  sw        $ra, 0x44($sp)
/* 32793C E000204C AFB60040 */  sw        $s6, 0x40($sp)
/* 327940 E0002050 AFB5003C */  sw        $s5, 0x3c($sp)
/* 327944 E0002054 AFB40038 */  sw        $s4, 0x38($sp)
/* 327948 E0002058 AFB30034 */  sw        $s3, 0x34($sp)
/* 32794C E000205C AFB20030 */  sw        $s2, 0x30($sp)
/* 327950 E0002060 AFB1002C */  sw        $s1, 0x2c($sp)
/* 327954 E0002064 AFB00028 */  sw        $s0, 0x28($sp)
/* 327958 E0002068 F7B80058 */  sdc1      $f24, 0x58($sp)
/* 32795C E000206C F7B60050 */  sdc1      $f22, 0x50($sp)
/* 327960 E0002070 F7B40048 */  sdc1      $f20, 0x48($sp)
/* 327964 E0002074 AFA00010 */  sw        $zero, 0x10($sp)
/* 327968 E0002078 AFA00024 */  sw        $zero, 0x24($sp)
/* 32796C E000207C 0C080124 */  jal       func_E0200490
/* 327970 E0002080 AFA20014 */   sw       $v0, 0x14($sp)
/* 327974 E0002084 240401B8 */  addiu     $a0, $zero, 0x1b8
/* 327978 E0002088 2403000A */  addiu     $v1, $zero, 0xa
/* 32797C E000208C 0040A82D */  daddu     $s5, $v0, $zero
/* 327980 E0002090 0C08012C */  jal       func_E02004B0
/* 327984 E0002094 AEA30008 */   sw       $v1, 8($s5)
/* 327988 E0002098 0040882D */  daddu     $s1, $v0, $zero
/* 32798C E000209C 16200003 */  bnez      $s1, .LE00020AC
/* 327990 E00020A0 AEB1000C */   sw       $s1, 0xc($s5)
.LE00020A4:
/* 327994 E00020A4 08000829 */  j         .LE00020A4
/* 327998 E00020A8 00000000 */   nop
.LE00020AC:
/* 32799C E00020AC 8EA20008 */  lw        $v0, 8($s5)
/* 3279A0 E00020B0 18400030 */  blez      $v0, .LE0002174
/* 3279A4 E00020B4 0000902D */   daddu    $s2, $zero, $zero
/* 3279A8 E00020B8 24160004 */  addiu     $s6, $zero, 4
/* 3279AC E00020BC 3C0142B4 */  lui       $at, 0x42b4
/* 3279B0 E00020C0 4481C000 */  mtc1      $at, $f24
/* 3279B4 E00020C4 26300024 */  addiu     $s0, $s1, 0x24
/* 3279B8 E00020C8 3C14E000 */  lui       $s4, %hi(D_E0002788)
/* 3279BC E00020CC 26942788 */  addiu     $s4, $s4, %lo(D_E0002788)
/* 3279C0 E00020D0 3C13E000 */  lui       $s3, %hi(D_E0002760)
/* 3279C4 E00020D4 26732760 */  addiu     $s3, $s3, %lo(D_E0002760)
.LE00020D8:
/* 3279C8 E00020D8 24040006 */  addiu     $a0, $zero, 6
/* 3279CC E00020DC 0C080000 */  jal       func_E0200000
/* 3279D0 E00020E0 A6200000 */   sh       $zero, ($s1)
/* 3279D4 E00020E4 24420010 */  addiu     $v0, $v0, 0x10
/* 3279D8 E00020E8 A602FFE0 */  sh        $v0, -0x20($s0)
/* 3279DC E00020EC A602FFDE */  sh        $v0, -0x22($s0)
/* 3279E0 E00020F0 A616FFE2 */  sh        $s6, -0x1e($s0)
/* 3279E4 E00020F4 AE00FFE4 */  sw        $zero, -0x1c($s0)
/* 3279E8 E00020F8 E61AFFE8 */  swc1      $f26, -0x18($s0)
/* 3279EC E00020FC E61CFFEC */  swc1      $f28, -0x14($s0)
/* 3279F0 E0002100 E61EFFF0 */  swc1      $f30, -0x10($s0)
/* 3279F4 E0002104 AE00FFF4 */  sw        $zero, -0xc($s0)
/* 3279F8 E0002108 AE00FFF8 */  sw        $zero, -8($s0)
/* 3279FC E000210C C6760000 */  lwc1      $f22, ($s3)
/* 327A00 E0002110 C6940000 */  lwc1      $f20, ($s4)
/* 327A04 E0002114 4618B580 */  add.s     $f22, $f22, $f24
/* 327A08 E0002118 4600A521 */  cvt.d.s   $f20, $f20
/* 327A0C E000211C 4634A500 */  add.d     $f20, $f20, $f20
/* 327A10 E0002120 4600B306 */  mov.s     $f12, $f22
/* 327A14 E0002124 0C080140 */  jal       func_E0200500
/* 327A18 E0002128 4620A520 */   cvt.s.d  $f20, $f20
/* 327A1C E000212C 4600B306 */  mov.s     $f12, $f22
/* 327A20 E0002130 0C080144 */  jal       func_E0200510
/* 327A24 E0002134 46000586 */   mov.s    $f22, $f0
/* 327A28 E0002138 4616A582 */  mul.s     $f22, $f20, $f22
/* 327A2C E000213C 00000000 */  nop
/* 327A30 E0002140 26940004 */  addiu     $s4, $s4, 4
/* 327A34 E0002144 4600A507 */  neg.s     $f20, $f20
/* 327A38 E0002148 4600A502 */  mul.s     $f20, $f20, $f0
/* 327A3C E000214C 00000000 */  nop
/* 327A40 E0002150 26730004 */  addiu     $s3, $s3, 4
/* 327A44 E0002154 26520001 */  addiu     $s2, $s2, 1
/* 327A48 E0002158 2631002C */  addiu     $s1, $s1, 0x2c
/* 327A4C E000215C E616FFFC */  swc1      $f22, -4($s0)
/* 327A50 E0002160 E6140000 */  swc1      $f20, ($s0)
/* 327A54 E0002164 8EA20008 */  lw        $v0, 8($s5)
/* 327A58 E0002168 0242102A */  slt       $v0, $s2, $v0
/* 327A5C E000216C 1440FFDA */  bnez      $v0, .LE00020D8
/* 327A60 E0002170 2610002C */   addiu    $s0, $s0, 0x2c
.LE0002174:
/* 327A64 E0002174 8FBF0044 */  lw        $ra, 0x44($sp)
/* 327A68 E0002178 8FB60040 */  lw        $s6, 0x40($sp)
/* 327A6C E000217C 8FB5003C */  lw        $s5, 0x3c($sp)
/* 327A70 E0002180 8FB40038 */  lw        $s4, 0x38($sp)
/* 327A74 E0002184 8FB30034 */  lw        $s3, 0x34($sp)
/* 327A78 E0002188 8FB20030 */  lw        $s2, 0x30($sp)
/* 327A7C E000218C 8FB1002C */  lw        $s1, 0x2c($sp)
/* 327A80 E0002190 8FB00028 */  lw        $s0, 0x28($sp)
/* 327A84 E0002194 D7BE0070 */  ldc1      $f30, 0x70($sp)
/* 327A88 E0002198 D7BC0068 */  ldc1      $f28, 0x68($sp)
/* 327A8C E000219C D7BA0060 */  ldc1      $f26, 0x60($sp)
/* 327A90 E00021A0 D7B80058 */  ldc1      $f24, 0x58($sp)
/* 327A94 E00021A4 D7B60050 */  ldc1      $f22, 0x50($sp)
/* 327A98 E00021A8 D7B40048 */  ldc1      $f20, 0x48($sp)
/* 327A9C E00021AC 03E00008 */  jr        $ra
/* 327AA0 E00021B0 27BD0078 */   addiu    $sp, $sp, 0x78
