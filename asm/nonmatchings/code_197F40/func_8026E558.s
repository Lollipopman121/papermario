.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8026E558
/* 19CE38 8026E558 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 19CE3C 8026E55C AFB3001C */  sw        $s3, 0x1c($sp)
/* 19CE40 8026E560 0080982D */  daddu     $s3, $a0, $zero
/* 19CE44 8026E564 AFBF0020 */  sw        $ra, 0x20($sp)
/* 19CE48 8026E568 AFB20018 */  sw        $s2, 0x18($sp)
/* 19CE4C 8026E56C AFB10014 */  sw        $s1, 0x14($sp)
/* 19CE50 8026E570 AFB00010 */  sw        $s0, 0x10($sp)
/* 19CE54 8026E574 8E70000C */  lw        $s0, 0xc($s3)
/* 19CE58 8026E578 8E050000 */  lw        $a1, ($s0)
/* 19CE5C 8026E57C 0C0B1EAF */  jal       get_variable
/* 19CE60 8026E580 26100004 */   addiu    $s0, $s0, 4
/* 19CE64 8026E584 0040882D */  daddu     $s1, $v0, $zero
/* 19CE68 8026E588 8E050000 */  lw        $a1, ($s0)
/* 19CE6C 8026E58C 26100004 */  addiu     $s0, $s0, 4
/* 19CE70 8026E590 0C0B1EAF */  jal       get_variable
/* 19CE74 8026E594 0260202D */   daddu    $a0, $s3, $zero
/* 19CE78 8026E598 0040902D */  daddu     $s2, $v0, $zero
/* 19CE7C 8026E59C 2402FF81 */  addiu     $v0, $zero, -0x7f
/* 19CE80 8026E5A0 16220002 */  bne       $s1, $v0, .L8026E5AC
/* 19CE84 8026E5A4 8E100000 */   lw       $s0, ($s0)
/* 19CE88 8026E5A8 8E710148 */  lw        $s1, 0x148($s3)
.L8026E5AC:
/* 19CE8C 8026E5AC 0C09A75B */  jal       get_actor
/* 19CE90 8026E5B0 0220202D */   daddu    $a0, $s1, $zero
/* 19CE94 8026E5B4 0040202D */  daddu     $a0, $v0, $zero
/* 19CE98 8026E5B8 C4820148 */  lwc1      $f2, 0x148($a0)
/* 19CE9C 8026E5BC 3C014220 */  lui       $at, 0x4220
/* 19CEA0 8026E5C0 44810000 */  mtc1      $at, $f0
/* 19CEA4 8026E5C4 C4840144 */  lwc1      $f4, 0x144($a0)
/* 19CEA8 8026E5C8 C486014C */  lwc1      $f6, 0x14c($a0)
/* 19CEAC 8026E5CC 4600103C */  c.lt.s    $f2, $f0
/* 19CEB0 8026E5D0 00000000 */  nop
/* 19CEB4 8026E5D4 45000003 */  bc1f      .L8026E5E4
/* 19CEB8 8026E5D8 2406FFFF */   addiu    $a2, $zero, -1
/* 19CEBC 8026E5DC 0809B988 */  j         .L8026E620
/* 19CEC0 8026E5E0 0000402D */   daddu    $t0, $zero, $zero
.L8026E5E4:
/* 19CEC4 8026E5E4 3C0142AA */  lui       $at, 0x42aa
/* 19CEC8 8026E5E8 44810000 */  mtc1      $at, $f0
/* 19CECC 8026E5EC 00000000 */  nop
/* 19CED0 8026E5F0 4600103C */  c.lt.s    $f2, $f0
/* 19CED4 8026E5F4 00000000 */  nop
/* 19CED8 8026E5F8 45010009 */  bc1t      .L8026E620
/* 19CEDC 8026E5FC 24080001 */   addiu    $t0, $zero, 1
/* 19CEE0 8026E600 3C0142C8 */  lui       $at, 0x42c8
/* 19CEE4 8026E604 44810000 */  mtc1      $at, $f0
/* 19CEE8 8026E608 00000000 */  nop
/* 19CEEC 8026E60C 4600103C */  c.lt.s    $f2, $f0
/* 19CEF0 8026E610 00000000 */  nop
/* 19CEF4 8026E614 45000002 */  bc1f      .L8026E620
/* 19CEF8 8026E618 24080003 */   addiu    $t0, $zero, 3
/* 19CEFC 8026E61C 24080002 */  addiu     $t0, $zero, 2
.L8026E620:
/* 19CF00 8026E620 3C0141C8 */  lui       $at, 0x41c8
/* 19CF04 8026E624 44810000 */  mtc1      $at, $f0
/* 19CF08 8026E628 00000000 */  nop
/* 19CF0C 8026E62C 4600203C */  c.lt.s    $f4, $f0
/* 19CF10 8026E630 00000000 */  nop
/* 19CF14 8026E634 45010010 */  bc1t      .L8026E678
/* 19CF18 8026E638 0000282D */   daddu    $a1, $zero, $zero
/* 19CF1C 8026E63C 3C014282 */  lui       $at, 0x4282
/* 19CF20 8026E640 44810000 */  mtc1      $at, $f0
/* 19CF24 8026E644 00000000 */  nop
/* 19CF28 8026E648 4600203C */  c.lt.s    $f4, $f0
/* 19CF2C 8026E64C 00000000 */  nop
/* 19CF30 8026E650 45010009 */  bc1t      .L8026E678
/* 19CF34 8026E654 24050001 */   addiu    $a1, $zero, 1
/* 19CF38 8026E658 3C0142D2 */  lui       $at, 0x42d2
/* 19CF3C 8026E65C 44810000 */  mtc1      $at, $f0
/* 19CF40 8026E660 00000000 */  nop
/* 19CF44 8026E664 4600203C */  c.lt.s    $f4, $f0
/* 19CF48 8026E668 00000000 */  nop
/* 19CF4C 8026E66C 45000002 */  bc1f      .L8026E678
/* 19CF50 8026E670 24050003 */   addiu    $a1, $zero, 3
/* 19CF54 8026E674 24050002 */  addiu     $a1, $zero, 2
.L8026E678:
/* 19CF58 8026E678 3C01C1F0 */  lui       $at, 0xc1f0
/* 19CF5C 8026E67C 44810000 */  mtc1      $at, $f0
/* 19CF60 8026E680 00000000 */  nop
/* 19CF64 8026E684 4600303C */  c.lt.s    $f6, $f0
/* 19CF68 8026E688 00000000 */  nop
/* 19CF6C 8026E68C 45000002 */  bc1f      .L8026E698
/* 19CF70 8026E690 24070001 */   addiu    $a3, $zero, 1
/* 19CF74 8026E694 0000382D */  daddu     $a3, $zero, $zero
.L8026E698:
/* 19CF78 8026E698 1240000C */  beqz      $s2, .L8026E6CC
/* 19CF7C 8026E69C 00000000 */   nop
/* 19CF80 8026E6A0 1E400006 */  bgtz      $s2, .L8026E6BC
/* 19CF84 8026E6A4 24020001 */   addiu    $v0, $zero, 1
/* 19CF88 8026E6A8 2402FFFF */  addiu     $v0, $zero, -1
/* 19CF8C 8026E6AC 12420045 */  beq       $s2, $v0, .L8026E7C4
/* 19CF90 8026E6B0 00000000 */   nop
/* 19CF94 8026E6B4 0809BA0F */  j         .L8026E83C
/* 19CF98 8026E6B8 0260202D */   daddu    $a0, $s3, $zero
.L8026E6BC:
/* 19CF9C 8026E6BC 12420022 */  beq       $s2, $v0, .L8026E748
/* 19CFA0 8026E6C0 00000000 */   nop
/* 19CFA4 8026E6C4 0809BA0F */  j         .L8026E83C
/* 19CFA8 8026E6C8 0260202D */   daddu    $a0, $s3, $zero
.L8026E6CC:
/* 19CFAC 8026E6CC 8082040C */  lb        $v0, 0x40c($a0)
/* 19CFB0 8026E6D0 18400059 */  blez      $v0, .L8026E838
/* 19CFB4 8026E6D4 0000882D */   daddu    $s1, $zero, $zero
/* 19CFB8 8026E6D8 0040482D */  daddu     $t1, $v0, $zero
/* 19CFBC 8026E6DC 00911021 */  addu      $v0, $a0, $s1
.L8026E6E0:
/* 19CFC0 8026E6E0 8043040D */  lb        $v1, 0x40d($v0)
/* 19CFC4 8026E6E4 00031080 */  sll       $v0, $v1, 2
/* 19CFC8 8026E6E8 00431021 */  addu      $v0, $v0, $v1
/* 19CFCC 8026E6EC 00021080 */  sll       $v0, $v0, 2
/* 19CFD0 8026E6F0 2442022C */  addiu     $v0, $v0, 0x22c
/* 19CFD4 8026E6F4 00821821 */  addu      $v1, $a0, $v0
/* 19CFD8 8026E6F8 80620011 */  lb        $v0, 0x11($v1)
/* 19CFDC 8026E6FC 5445000D */  bnel      $v0, $a1, .L8026E734
/* 19CFE0 8026E700 26310001 */   addiu    $s1, $s1, 1
/* 19CFE4 8026E704 80620013 */  lb        $v0, 0x13($v1)
/* 19CFE8 8026E708 1447000A */  bne       $v0, $a3, .L8026E734
/* 19CFEC 8026E70C 26310001 */   addiu    $s1, $s1, 1
/* 19CFF0 8026E710 80620012 */  lb        $v0, 0x12($v1)
/* 19CFF4 8026E714 0048102A */  slt       $v0, $v0, $t0
/* 19CFF8 8026E718 10400006 */  beqz      $v0, .L8026E734
/* 19CFFC 8026E71C 00000000 */   nop
/* 19D000 8026E720 94620000 */  lhu       $v0, ($v1)
/* 19D004 8026E724 A4820428 */  sh        $v0, 0x428($a0)
/* 19D008 8026E728 90620003 */  lbu       $v0, 3($v1)
/* 19D00C 8026E72C 0000302D */  daddu     $a2, $zero, $zero
/* 19D010 8026E730 A0820426 */  sb        $v0, 0x426($a0)
.L8026E734:
/* 19D014 8026E734 0229102A */  slt       $v0, $s1, $t1
/* 19D018 8026E738 1440FFE9 */  bnez      $v0, .L8026E6E0
/* 19D01C 8026E73C 00911021 */   addu     $v0, $a0, $s1
/* 19D020 8026E740 0809BA0F */  j         .L8026E83C
/* 19D024 8026E744 0260202D */   daddu    $a0, $s3, $zero
.L8026E748:
/* 19D028 8026E748 8082040C */  lb        $v0, 0x40c($a0)
/* 19D02C 8026E74C 1840003A */  blez      $v0, .L8026E838
/* 19D030 8026E750 0000882D */   daddu    $s1, $zero, $zero
/* 19D034 8026E754 0040482D */  daddu     $t1, $v0, $zero
/* 19D038 8026E758 00911021 */  addu      $v0, $a0, $s1
.L8026E75C:
/* 19D03C 8026E75C 8043040D */  lb        $v1, 0x40d($v0)
/* 19D040 8026E760 00031080 */  sll       $v0, $v1, 2
/* 19D044 8026E764 00431021 */  addu      $v0, $v0, $v1
/* 19D048 8026E768 00021080 */  sll       $v0, $v0, 2
/* 19D04C 8026E76C 2442022C */  addiu     $v0, $v0, 0x22c
/* 19D050 8026E770 00821821 */  addu      $v1, $a0, $v0
/* 19D054 8026E774 80620011 */  lb        $v0, 0x11($v1)
/* 19D058 8026E778 5445000D */  bnel      $v0, $a1, .L8026E7B0
/* 19D05C 8026E77C 26310001 */   addiu    $s1, $s1, 1
/* 19D060 8026E780 80620013 */  lb        $v0, 0x13($v1)
/* 19D064 8026E784 1447000A */  bne       $v0, $a3, .L8026E7B0
/* 19D068 8026E788 26310001 */   addiu    $s1, $s1, 1
/* 19D06C 8026E78C 80620012 */  lb        $v0, 0x12($v1)
/* 19D070 8026E790 0048102A */  slt       $v0, $v0, $t0
/* 19D074 8026E794 10400006 */  beqz      $v0, .L8026E7B0
/* 19D078 8026E798 00000000 */   nop
/* 19D07C 8026E79C 94620000 */  lhu       $v0, ($v1)
/* 19D080 8026E7A0 A4820428 */  sh        $v0, 0x428($a0)
/* 19D084 8026E7A4 90620003 */  lbu       $v0, 3($v1)
/* 19D088 8026E7A8 0000302D */  daddu     $a2, $zero, $zero
/* 19D08C 8026E7AC A0820426 */  sb        $v0, 0x426($a0)
.L8026E7B0:
/* 19D090 8026E7B0 0229102A */  slt       $v0, $s1, $t1
/* 19D094 8026E7B4 1440FFE9 */  bnez      $v0, .L8026E75C
/* 19D098 8026E7B8 00911021 */   addu     $v0, $a0, $s1
/* 19D09C 8026E7BC 0809BA0F */  j         .L8026E83C
/* 19D0A0 8026E7C0 0260202D */   daddu    $a0, $s3, $zero
.L8026E7C4:
/* 19D0A4 8026E7C4 8082040C */  lb        $v0, 0x40c($a0)
/* 19D0A8 8026E7C8 1840001B */  blez      $v0, .L8026E838
/* 19D0AC 8026E7CC 0000882D */   daddu    $s1, $zero, $zero
/* 19D0B0 8026E7D0 0040482D */  daddu     $t1, $v0, $zero
/* 19D0B4 8026E7D4 00911021 */  addu      $v0, $a0, $s1
.L8026E7D8:
/* 19D0B8 8026E7D8 8043040D */  lb        $v1, 0x40d($v0)
/* 19D0BC 8026E7DC 00031080 */  sll       $v0, $v1, 2
/* 19D0C0 8026E7E0 00431021 */  addu      $v0, $v0, $v1
/* 19D0C4 8026E7E4 00021080 */  sll       $v0, $v0, 2
/* 19D0C8 8026E7E8 2442022C */  addiu     $v0, $v0, 0x22c
/* 19D0CC 8026E7EC 00821821 */  addu      $v1, $a0, $v0
/* 19D0D0 8026E7F0 80620011 */  lb        $v0, 0x11($v1)
/* 19D0D4 8026E7F4 5445000D */  bnel      $v0, $a1, .L8026E82C
/* 19D0D8 8026E7F8 26310001 */   addiu    $s1, $s1, 1
/* 19D0DC 8026E7FC 80620013 */  lb        $v0, 0x13($v1)
/* 19D0E0 8026E800 1447000A */  bne       $v0, $a3, .L8026E82C
/* 19D0E4 8026E804 26310001 */   addiu    $s1, $s1, 1
/* 19D0E8 8026E808 80620012 */  lb        $v0, 0x12($v1)
/* 19D0EC 8026E80C 0048102A */  slt       $v0, $v0, $t0
/* 19D0F0 8026E810 10400006 */  beqz      $v0, .L8026E82C
/* 19D0F4 8026E814 00000000 */   nop
/* 19D0F8 8026E818 94620000 */  lhu       $v0, ($v1)
/* 19D0FC 8026E81C A4820428 */  sh        $v0, 0x428($a0)
/* 19D100 8026E820 90620003 */  lbu       $v0, 3($v1)
/* 19D104 8026E824 0000302D */  daddu     $a2, $zero, $zero
/* 19D108 8026E828 A0820426 */  sb        $v0, 0x426($a0)
.L8026E82C:
/* 19D10C 8026E82C 0229102A */  slt       $v0, $s1, $t1
/* 19D110 8026E830 1440FFE9 */  bnez      $v0, .L8026E7D8
/* 19D114 8026E834 00911021 */   addu     $v0, $a0, $s1
.L8026E838:
/* 19D118 8026E838 0260202D */  daddu     $a0, $s3, $zero
.L8026E83C:
/* 19D11C 8026E83C 0C0B2026 */  jal       set_variable
/* 19D120 8026E840 0200282D */   daddu    $a1, $s0, $zero
/* 19D124 8026E844 8FBF0020 */  lw        $ra, 0x20($sp)
/* 19D128 8026E848 8FB3001C */  lw        $s3, 0x1c($sp)
/* 19D12C 8026E84C 8FB20018 */  lw        $s2, 0x18($sp)
/* 19D130 8026E850 8FB10014 */  lw        $s1, 0x14($sp)
/* 19D134 8026E854 8FB00010 */  lw        $s0, 0x10($sp)
/* 19D138 8026E858 24020002 */  addiu     $v0, $zero, 2
/* 19D13C 8026E85C 03E00008 */  jr        $ra
/* 19D140 8026E860 27BD0028 */   addiu    $sp, $sp, 0x28
