.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240770_A3FEB0
/* A3FEB0 80240770 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* A3FEB4 80240774 AFB1001C */  sw        $s1, 0x1c($sp)
/* A3FEB8 80240778 0080882D */  daddu     $s1, $a0, $zero
/* A3FEBC 8024077C AFB20020 */  sw        $s2, 0x20($sp)
/* A3FEC0 80240780 3C128011 */  lui       $s2, %hi(gPlayerStatus)
/* A3FEC4 80240784 2652EFC8 */  addiu     $s2, $s2, %lo(gPlayerStatus)
/* A3FEC8 80240788 AFBF0024 */  sw        $ra, 0x24($sp)
/* A3FECC 8024078C AFB00018 */  sw        $s0, 0x18($sp)
/* A3FED0 80240790 10A00010 */  beqz      $a1, .L802407D4
/* A3FED4 80240794 8E30000C */   lw       $s0, 0xc($s1)
/* A3FED8 80240798 8E050000 */  lw        $a1, ($s0)
/* A3FEDC 8024079C 0C0B1EAF */  jal       get_variable
/* A3FEE0 802407A0 26100004 */   addiu    $s0, $s0, 4
/* A3FEE4 802407A4 AE220074 */  sw        $v0, 0x74($s1)
/* A3FEE8 802407A8 8E050000 */  lw        $a1, ($s0)
/* A3FEEC 802407AC 26100004 */  addiu     $s0, $s0, 4
/* A3FEF0 802407B0 0C0B1EAF */  jal       get_variable
/* A3FEF4 802407B4 0220202D */   daddu    $a0, $s1, $zero
/* A3FEF8 802407B8 AE220078 */  sw        $v0, 0x78($s1)
/* A3FEFC 802407BC 8E050000 */  lw        $a1, ($s0)
/* A3FF00 802407C0 0C0B1EAF */  jal       get_variable
/* A3FF04 802407C4 0220202D */   daddu    $a0, $s1, $zero
/* A3FF08 802407C8 AE2200C0 */  sw        $v0, 0xc0($s1)
/* A3FF0C 802407CC AE200070 */  sw        $zero, 0x70($s1)
/* A3FF10 802407D0 AE20007C */  sw        $zero, 0x7c($s1)
.L802407D4:
/* A3FF14 802407D4 0C00EABB */  jal       get_npc_unsafe
/* A3FF18 802407D8 8E240074 */   lw       $a0, 0x74($s1)
/* A3FF1C 802407DC 8E230070 */  lw        $v1, 0x70($s1)
/* A3FF20 802407E0 10600006 */  beqz      $v1, .L802407FC
/* A3FF24 802407E4 0040802D */   daddu    $s0, $v0, $zero
/* A3FF28 802407E8 24020001 */  addiu     $v0, $zero, 1
/* A3FF2C 802407EC 10620048 */  beq       $v1, $v0, .L80240910
/* A3FF30 802407F0 26040038 */   addiu    $a0, $s0, 0x38
/* A3FF34 802407F4 08090293 */  j         .L80240A4C
/* A3FF38 802407F8 00000000 */   nop
.L802407FC:
/* A3FF3C 802407FC C6400028 */  lwc1      $f0, 0x28($s2)
/* A3FF40 80240800 E6000038 */  swc1      $f0, 0x38($s0)
/* A3FF44 80240804 C640002C */  lwc1      $f0, 0x2c($s2)
/* A3FF48 80240808 E600003C */  swc1      $f0, 0x3c($s0)
/* A3FF4C 8024080C C6400030 */  lwc1      $f0, 0x30($s2)
/* A3FF50 80240810 E6000040 */  swc1      $f0, 0x40($s0)
/* A3FF54 80240814 8E23007C */  lw        $v1, 0x7c($s1)
/* A3FF58 80240818 3C014040 */  lui       $at, 0x4040
/* A3FF5C 8024081C 44810000 */  mtc1      $at, $f0
/* A3FF60 80240820 00031040 */  sll       $v0, $v1, 1
/* A3FF64 80240824 00431021 */  addu      $v0, $v0, $v1
/* A3FF68 80240828 E6000064 */  swc1      $f0, 0x64($s0)
/* A3FF6C 8024082C 44820000 */  mtc1      $v0, $f0
/* A3FF70 80240830 00000000 */  nop
/* A3FF74 80240834 46800020 */  cvt.s.w   $f0, $f0
/* A3FF78 80240838 E6000060 */  swc1      $f0, 0x60($s0)
/* A3FF7C 8024083C 8E230078 */  lw        $v1, 0x78($s1)
/* A3FF80 80240840 46000086 */  mov.s     $f2, $f0
/* A3FF84 80240844 00031040 */  sll       $v0, $v1, 1
/* A3FF88 80240848 00431021 */  addu      $v0, $v0, $v1
/* A3FF8C 8024084C 00021900 */  sll       $v1, $v0, 4
/* A3FF90 80240850 00431021 */  addu      $v0, $v0, $v1
/* A3FF94 80240854 44820000 */  mtc1      $v0, $f0
/* A3FF98 80240858 00000000 */  nop
/* A3FF9C 8024085C 46800020 */  cvt.s.w   $f0, $f0
/* A3FFA0 80240860 46001080 */  add.s     $f2, $f2, $f0
/* A3FFA4 80240864 3C014319 */  lui       $at, 0x4319
/* A3FFA8 80240868 44810000 */  mtc1      $at, $f0
/* A3FFAC 8024086C 00000000 */  nop
/* A3FFB0 80240870 46001080 */  add.s     $f2, $f2, $f0
/* A3FFB4 80240874 26040038 */  addiu     $a0, $s0, 0x38
/* A3FFB8 80240878 3C06428C */  lui       $a2, 0x428c
/* A3FFBC 8024087C 44071000 */  mfc1      $a3, $f2
/* A3FFC0 80240880 0C00A7E7 */  jal       add_vec2D_polar
/* A3FFC4 80240884 26050040 */   addiu    $a1, $s0, 0x40
/* A3FFC8 80240888 3C034EC4 */  lui       $v1, 0x4ec4
/* A3FFCC 8024088C 8E24007C */  lw        $a0, 0x7c($s1)
/* A3FFD0 80240890 8E220078 */  lw        $v0, 0x78($s1)
/* A3FFD4 80240894 3463EC4F */  ori       $v1, $v1, 0xec4f
/* A3FFD8 80240898 00822021 */  addu      $a0, $a0, $v0
/* A3FFDC 8024089C 00830018 */  mult      $a0, $v1
/* A3FFE0 802408A0 000417C3 */  sra       $v0, $a0, 0x1f
/* A3FFE4 802408A4 00004010 */  mfhi      $t0
/* A3FFE8 802408A8 00081883 */  sra       $v1, $t0, 2
/* A3FFEC 802408AC 00621823 */  subu      $v1, $v1, $v0
/* A3FFF0 802408B0 00031040 */  sll       $v0, $v1, 1
/* A3FFF4 802408B4 00431021 */  addu      $v0, $v0, $v1
/* A3FFF8 802408B8 00021080 */  sll       $v0, $v0, 2
/* A3FFFC 802408BC 00431021 */  addu      $v0, $v0, $v1
/* A40000 802408C0 1482000C */  bne       $a0, $v0, .L802408F4
/* A40004 802408C4 00000000 */   nop
/* A40008 802408C8 C602003C */  lwc1      $f2, 0x3c($s0)
/* A4000C 802408CC 3C014120 */  lui       $at, 0x4120
/* A40010 802408D0 44810000 */  mtc1      $at, $f0
/* A40014 802408D4 00000000 */  nop
/* A40018 802408D8 46001080 */  add.s     $f2, $f2, $f0
/* A4001C 802408DC E7A00010 */  swc1      $f0, 0x10($sp)
/* A40020 802408E0 8E050038 */  lw        $a1, 0x38($s0)
/* A40024 802408E4 8E070040 */  lw        $a3, 0x40($s0)
/* A40028 802408E8 44061000 */  mfc1      $a2, $f2
/* A4002C 802408EC 0C01BFBC */  jal       func_8006FEF0
/* A40030 802408F0 24040003 */   addiu    $a0, $zero, 3
.L802408F4:
/* A40034 802408F4 8E22007C */  lw        $v0, 0x7c($s1)
/* A40038 802408F8 2842015F */  slti      $v0, $v0, 0x15f
/* A4003C 802408FC 14400053 */  bnez      $v0, .L80240A4C
/* A40040 80240900 24020001 */   addiu    $v0, $zero, 1
/* A40044 80240904 AE220070 */  sw        $v0, 0x70($s1)
/* A40048 80240908 08090293 */  j         .L80240A4C
/* A4004C 8024090C AE20007C */   sw       $zero, 0x7c($s1)
.L80240910:
/* A40050 80240910 C6400028 */  lwc1      $f0, 0x28($s2)
/* A40054 80240914 3C014040 */  lui       $at, 0x4040
/* A40058 80240918 44813000 */  mtc1      $at, $f6
/* A4005C 8024091C E6000038 */  swc1      $f0, 0x38($s0)
/* A40060 80240920 C640002C */  lwc1      $f0, 0x2c($s2)
/* A40064 80240924 E600003C */  swc1      $f0, 0x3c($s0)
/* A40068 80240928 C6400030 */  lwc1      $f0, 0x30($s2)
/* A4006C 8024092C E6000040 */  swc1      $f0, 0x40($s0)
/* A40070 80240930 8E23007C */  lw        $v1, 0x7c($s1)
/* A40074 80240934 E6060064 */  swc1      $f6, 0x64($s0)
/* A40078 80240938 00031040 */  sll       $v0, $v1, 1
/* A4007C 8024093C 00431021 */  addu      $v0, $v0, $v1
/* A40080 80240940 44820000 */  mtc1      $v0, $f0
/* A40084 80240944 00000000 */  nop
/* A40088 80240948 46800020 */  cvt.s.w   $f0, $f0
/* A4008C 8024094C 240200BE */  addiu     $v0, $zero, 0xbe
/* A40090 80240950 E6000060 */  swc1      $f0, 0x60($s0)
/* A40094 80240954 8E23007C */  lw        $v1, 0x7c($s1)
/* A40098 80240958 3C01433E */  lui       $at, 0x433e
/* A4009C 8024095C 44810000 */  mtc1      $at, $f0
/* A400A0 80240960 00431023 */  subu      $v0, $v0, $v1
/* A400A4 80240964 44822000 */  mtc1      $v0, $f4
/* A400A8 80240968 00000000 */  nop
/* A400AC 8024096C 46802120 */  cvt.s.w   $f4, $f4
/* A400B0 80240970 46002103 */  div.s     $f4, $f4, $f0
/* A400B4 80240974 8E230078 */  lw        $v1, 0x78($s1)
/* A400B8 80240978 3C014286 */  lui       $at, 0x4286
/* A400BC 8024097C 44810000 */  mtc1      $at, $f0
/* A400C0 80240980 00031040 */  sll       $v0, $v1, 1
/* A400C4 80240984 00431021 */  addu      $v0, $v0, $v1
/* A400C8 80240988 46002102 */  mul.s     $f4, $f4, $f0
/* A400CC 8024098C 00000000 */  nop
/* A400D0 80240990 00021900 */  sll       $v1, $v0, 4
/* A400D4 80240994 00431021 */  addu      $v0, $v0, $v1
/* A400D8 80240998 C6000060 */  lwc1      $f0, 0x60($s0)
/* A400DC 8024099C 44821000 */  mtc1      $v0, $f2
/* A400E0 802409A0 00000000 */  nop
/* A400E4 802409A4 468010A0 */  cvt.s.w   $f2, $f2
/* A400E8 802409A8 46020000 */  add.s     $f0, $f0, $f2
/* A400EC 802409AC 3C014319 */  lui       $at, 0x4319
/* A400F0 802409B0 44811000 */  mtc1      $at, $f2
/* A400F4 802409B4 00000000 */  nop
/* A400F8 802409B8 46020000 */  add.s     $f0, $f0, $f2
/* A400FC 802409BC 46062100 */  add.s     $f4, $f4, $f6
/* A40100 802409C0 44070000 */  mfc1      $a3, $f0
/* A40104 802409C4 44062000 */  mfc1      $a2, $f4
/* A40108 802409C8 0C00A7E7 */  jal       add_vec2D_polar
/* A4010C 802409CC 26050040 */   addiu    $a1, $s0, 0x40
/* A40110 802409D0 3C034EC4 */  lui       $v1, 0x4ec4
/* A40114 802409D4 8E24007C */  lw        $a0, 0x7c($s1)
/* A40118 802409D8 8E220078 */  lw        $v0, 0x78($s1)
/* A4011C 802409DC 3463EC4F */  ori       $v1, $v1, 0xec4f
/* A40120 802409E0 00822021 */  addu      $a0, $a0, $v0
/* A40124 802409E4 00830018 */  mult      $a0, $v1
/* A40128 802409E8 000417C3 */  sra       $v0, $a0, 0x1f
/* A4012C 802409EC 00004010 */  mfhi      $t0
/* A40130 802409F0 00081883 */  sra       $v1, $t0, 2
/* A40134 802409F4 00621823 */  subu      $v1, $v1, $v0
/* A40138 802409F8 00031040 */  sll       $v0, $v1, 1
/* A4013C 802409FC 00431021 */  addu      $v0, $v0, $v1
/* A40140 80240A00 00021080 */  sll       $v0, $v0, 2
/* A40144 80240A04 00431021 */  addu      $v0, $v0, $v1
/* A40148 80240A08 1482000C */  bne       $a0, $v0, .L80240A3C
/* A4014C 80240A0C 00000000 */   nop
/* A40150 80240A10 C602003C */  lwc1      $f2, 0x3c($s0)
/* A40154 80240A14 3C014120 */  lui       $at, 0x4120
/* A40158 80240A18 44810000 */  mtc1      $at, $f0
/* A4015C 80240A1C 00000000 */  nop
/* A40160 80240A20 46001080 */  add.s     $f2, $f2, $f0
/* A40164 80240A24 E7A00010 */  swc1      $f0, 0x10($sp)
/* A40168 80240A28 8E050038 */  lw        $a1, 0x38($s0)
/* A4016C 80240A2C 8E070040 */  lw        $a3, 0x40($s0)
/* A40170 80240A30 44061000 */  mfc1      $a2, $f2
/* A40174 80240A34 0C01BFBC */  jal       func_8006FEF0
/* A40178 80240A38 24040003 */   addiu    $a0, $zero, 3
.L80240A3C:
/* A4017C 80240A3C 8E22007C */  lw        $v0, 0x7c($s1)
/* A40180 80240A40 284200BF */  slti      $v0, $v0, 0xbf
/* A40184 80240A44 10400009 */  beqz      $v0, .L80240A6C
/* A40188 80240A48 24020002 */   addiu    $v0, $zero, 2
.L80240A4C:
/* A4018C 80240A4C 8E22007C */  lw        $v0, 0x7c($s1)
/* A40190 80240A50 24420001 */  addiu     $v0, $v0, 1
/* A40194 80240A54 AE22007C */  sw        $v0, 0x7c($s1)
/* A40198 80240A58 C6000060 */  lwc1      $f0, 0x60($s0)
/* A4019C 80240A5C C6020064 */  lwc1      $f2, 0x64($s0)
/* A401A0 80240A60 46020000 */  add.s     $f0, $f0, $f2
/* A401A4 80240A64 0000102D */  daddu     $v0, $zero, $zero
/* A401A8 80240A68 E6000060 */  swc1      $f0, 0x60($s0)
.L80240A6C:
/* A401AC 80240A6C 8FBF0024 */  lw        $ra, 0x24($sp)
/* A401B0 80240A70 8FB20020 */  lw        $s2, 0x20($sp)
/* A401B4 80240A74 8FB1001C */  lw        $s1, 0x1c($sp)
/* A401B8 80240A78 8FB00018 */  lw        $s0, 0x18($sp)
/* A401BC 80240A7C 03E00008 */  jr        $ra
/* A401C0 80240A80 27BD0028 */   addiu    $sp, $sp, 0x28
