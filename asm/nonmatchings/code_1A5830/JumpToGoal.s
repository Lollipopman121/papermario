.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel JumpToGoal
/* 1A75E8 80278D08 27BDFFA0 */  addiu     $sp, $sp, -0x60
/* 1A75EC 80278D0C AFB30024 */  sw        $s3, 0x24($sp)
/* 1A75F0 80278D10 0080982D */  daddu     $s3, $a0, $zero
/* 1A75F4 80278D14 AFBF0028 */  sw        $ra, 0x28($sp)
/* 1A75F8 80278D18 AFB20020 */  sw        $s2, 0x20($sp)
/* 1A75FC 80278D1C AFB1001C */  sw        $s1, 0x1c($sp)
/* 1A7600 80278D20 AFB00018 */  sw        $s0, 0x18($sp)
/* 1A7604 80278D24 F7BE0058 */  sdc1      $f30, 0x58($sp)
/* 1A7608 80278D28 F7BC0050 */  sdc1      $f28, 0x50($sp)
/* 1A760C 80278D2C F7BA0048 */  sdc1      $f26, 0x48($sp)
/* 1A7610 80278D30 F7B80040 */  sdc1      $f24, 0x40($sp)
/* 1A7614 80278D34 F7B60038 */  sdc1      $f22, 0x38($sp)
/* 1A7618 80278D38 F7B40030 */  sdc1      $f20, 0x30($sp)
/* 1A761C 80278D3C 8E71000C */  lw        $s1, 0xc($s3)
/* 1A7620 80278D40 54A00001 */  bnel      $a1, $zero, .L80278D48
/* 1A7624 80278D44 AE600070 */   sw       $zero, 0x70($s3)
.L80278D48:
/* 1A7628 80278D48 8E620070 */  lw        $v0, 0x70($s3)
/* 1A762C 80278D4C 14400096 */  bnez      $v0, .L80278FA8
/* 1A7630 80278D50 00000000 */   nop
/* 1A7634 80278D54 8E250000 */  lw        $a1, ($s1)
/* 1A7638 80278D58 26310004 */  addiu     $s1, $s1, 4
/* 1A763C 80278D5C 0C0B1EAF */  jal       get_variable
/* 1A7640 80278D60 0260202D */   daddu    $a0, $s3, $zero
/* 1A7644 80278D64 0040202D */  daddu     $a0, $v0, $zero
/* 1A7648 80278D68 2402FF81 */  addiu     $v0, $zero, -0x7f
/* 1A764C 80278D6C 14820002 */  bne       $a0, $v0, .L80278D78
/* 1A7650 80278D70 00000000 */   nop
/* 1A7654 80278D74 8E640148 */  lw        $a0, 0x148($s3)
.L80278D78:
/* 1A7658 80278D78 0C09A75B */  jal       get_actor
/* 1A765C 80278D7C 00000000 */   nop
/* 1A7660 80278D80 0040802D */  daddu     $s0, $v0, $zero
/* 1A7664 80278D84 2612000C */  addiu     $s2, $s0, 0xc
/* 1A7668 80278D88 AE700074 */  sw        $s0, 0x74($s3)
/* 1A766C 80278D8C 8E250000 */  lw        $a1, ($s1)
/* 1A7670 80278D90 26310004 */  addiu     $s1, $s1, 4
/* 1A7674 80278D94 0C0B1EAF */  jal       get_variable
/* 1A7678 80278D98 0260202D */   daddu    $a0, $s3, $zero
/* 1A767C 80278D9C A6020070 */  sh        $v0, 0x70($s0)
/* 1A7680 80278DA0 8E250000 */  lw        $a1, ($s1)
/* 1A7684 80278DA4 26310004 */  addiu     $s1, $s1, 4
/* 1A7688 80278DA8 0C0B1EAF */  jal       get_variable
/* 1A768C 80278DAC 0260202D */   daddu    $a0, $s3, $zero
/* 1A7690 80278DB0 AE620078 */  sw        $v0, 0x78($s3)
/* 1A7694 80278DB4 AE60007C */  sw        $zero, 0x7c($s3)
/* 1A7698 80278DB8 8E250000 */  lw        $a1, ($s1)
/* 1A769C 80278DBC 26310004 */  addiu     $s1, $s1, 4
/* 1A76A0 80278DC0 0C0B1EAF */  jal       get_variable
/* 1A76A4 80278DC4 0260202D */   daddu    $a0, $s3, $zero
/* 1A76A8 80278DC8 10400004 */  beqz      $v0, .L80278DDC
/* 1A76AC 80278DCC 00000000 */   nop
/* 1A76B0 80278DD0 8E62007C */  lw        $v0, 0x7c($s3)
/* 1A76B4 80278DD4 34420001 */  ori       $v0, $v0, 1
/* 1A76B8 80278DD8 AE62007C */  sw        $v0, 0x7c($s3)
.L80278DDC:
/* 1A76BC 80278DDC 8E250000 */  lw        $a1, ($s1)
/* 1A76C0 80278DE0 0C0B1EAF */  jal       get_variable
/* 1A76C4 80278DE4 0260202D */   daddu    $a0, $s3, $zero
/* 1A76C8 80278DE8 10400004 */  beqz      $v0, .L80278DFC
/* 1A76CC 80278DEC 00000000 */   nop
/* 1A76D0 80278DF0 8E62007C */  lw        $v0, 0x7c($s3)
/* 1A76D4 80278DF4 34420002 */  ori       $v0, $v0, 2
/* 1A76D8 80278DF8 AE62007C */  sw        $v0, 0x7c($s3)
.L80278DFC:
/* 1A76DC 80278DFC C6000148 */  lwc1      $f0, 0x148($s0)
/* 1A76E0 80278E00 C61A0018 */  lwc1      $f26, 0x18($s0)
/* 1A76E4 80278E04 C61C0020 */  lwc1      $f28, 0x20($s0)
/* 1A76E8 80278E08 C614014C */  lwc1      $f20, 0x14c($s0)
/* 1A76EC 80278E0C C618001C */  lwc1      $f24, 0x1c($s0)
/* 1A76F0 80278E10 E6000010 */  swc1      $f0, 0x10($s0)
/* 1A76F4 80278E14 46000786 */  mov.s     $f30, $f0
/* 1A76F8 80278E18 4406D000 */  mfc1      $a2, $f26
/* 1A76FC 80278E1C 4407E000 */  mfc1      $a3, $f28
/* 1A7700 80278E20 C6000144 */  lwc1      $f0, 0x144($s0)
/* 1A7704 80278E24 4600A386 */  mov.s     $f14, $f20
/* 1A7708 80278E28 E6140014 */  swc1      $f20, 0x14($s0)
/* 1A770C 80278E2C E600000C */  swc1      $f0, 0xc($s0)
/* 1A7710 80278E30 46000586 */  mov.s     $f22, $f0
/* 1A7714 80278E34 0C00A720 */  jal       atan2
/* 1A7718 80278E38 4600B306 */   mov.s    $f12, $f22
/* 1A771C 80278E3C 4600B306 */  mov.s     $f12, $f22
/* 1A7720 80278E40 4600A386 */  mov.s     $f14, $f20
/* 1A7724 80278E44 4406D000 */  mfc1      $a2, $f26
/* 1A7728 80278E48 4407E000 */  mfc1      $a3, $f28
/* 1A772C 80278E4C 461EC781 */  sub.s     $f30, $f24, $f30
/* 1A7730 80278E50 0C00A7B5 */  jal       dist2D
/* 1A7734 80278E54 E6000054 */   swc1     $f0, 0x54($s0)
/* 1A7738 80278E58 86020070 */  lh        $v0, 0x70($s0)
/* 1A773C 80278E5C 46000106 */  mov.s     $f4, $f0
/* 1A7740 80278E60 14400012 */  bnez      $v0, .L80278EAC
/* 1A7744 80278E64 E6040058 */   swc1     $f4, 0x58($s0)
/* 1A7748 80278E68 C600004C */  lwc1      $f0, 0x4c($s0)
/* 1A774C 80278E6C C602004C */  lwc1      $f2, 0x4c($s0)
/* 1A7750 80278E70 46002003 */  div.s     $f0, $f4, $f0
/* 1A7754 80278E74 4600028D */  trunc.w.s $f10, $f0
/* 1A7758 80278E78 44035000 */  mfc1      $v1, $f10
/* 1A775C 80278E7C 00000000 */  nop
/* 1A7760 80278E80 00031400 */  sll       $v0, $v1, 0x10
/* 1A7764 80278E84 00021403 */  sra       $v0, $v0, 0x10
/* 1A7768 80278E88 44820000 */  mtc1      $v0, $f0
/* 1A776C 80278E8C 00000000 */  nop
/* 1A7770 80278E90 46800020 */  cvt.s.w   $f0, $f0
/* 1A7774 80278E94 46020002 */  mul.s     $f0, $f0, $f2
/* 1A7778 80278E98 00000000 */  nop
/* 1A777C 80278E9C 46002086 */  mov.s     $f2, $f4
/* 1A7780 80278EA0 A6030070 */  sh        $v1, 0x70($s0)
/* 1A7784 80278EA4 0809E3B8 */  j         .L80278EE0
/* 1A7788 80278EA8 46001201 */   sub.s    $f8, $f2, $f0
.L80278EAC:
/* 1A778C 80278EAC 44821000 */  mtc1      $v0, $f2
/* 1A7790 80278EB0 00000000 */  nop
/* 1A7794 80278EB4 468010A0 */  cvt.s.w   $f2, $f2
/* 1A7798 80278EB8 86020070 */  lh        $v0, 0x70($s0)
/* 1A779C 80278EBC 46022083 */  div.s     $f2, $f4, $f2
/* 1A77A0 80278EC0 44820000 */  mtc1      $v0, $f0
/* 1A77A4 80278EC4 00000000 */  nop
/* 1A77A8 80278EC8 46800020 */  cvt.s.w   $f0, $f0
/* 1A77AC 80278ECC 46020002 */  mul.s     $f0, $f0, $f2
/* 1A77B0 80278ED0 00000000 */  nop
/* 1A77B4 80278ED4 C6040058 */  lwc1      $f4, 0x58($s0)
/* 1A77B8 80278ED8 E602004C */  swc1      $f2, 0x4c($s0)
/* 1A77BC 80278EDC 46002201 */  sub.s     $f8, $f4, $f0
.L80278EE0:
/* 1A77C0 80278EE0 86420064 */  lh        $v0, 0x64($s2)
/* 1A77C4 80278EE4 14400003 */  bnez      $v0, .L80278EF4
/* 1A77C8 80278EE8 00000000 */   nop
/* 1A77CC 80278EEC 0809E436 */  j         .L802790D8
/* 1A77D0 80278EF0 24020002 */   addiu    $v0, $zero, 2
.L80278EF4:
/* 1A77D4 80278EF4 C642003C */  lwc1      $f2, 0x3c($s2)
/* 1A77D8 80278EF8 44823000 */  mtc1      $v0, $f6
/* 1A77DC 80278EFC 00000000 */  nop
/* 1A77E0 80278F00 468031A0 */  cvt.s.w   $f6, $f6
/* 1A77E4 80278F04 46061082 */  mul.s     $f2, $f2, $f6
/* 1A77E8 80278F08 00000000 */  nop
/* 1A77EC 80278F0C 3C013F00 */  lui       $at, 0x3f00
/* 1A77F0 80278F10 44810000 */  mtc1      $at, $f0
/* 1A77F4 80278F14 00000000 */  nop
/* 1A77F8 80278F18 46001082 */  mul.s     $f2, $f2, $f0
/* 1A77FC 80278F1C 00000000 */  nop
/* 1A7800 80278F20 86420064 */  lh        $v0, 0x64($s2)
/* 1A7804 80278F24 C6440040 */  lwc1      $f4, 0x40($s2)
/* 1A7808 80278F28 44820000 */  mtc1      $v0, $f0
/* 1A780C 80278F2C 00000000 */  nop
/* 1A7810 80278F30 46800020 */  cvt.s.w   $f0, $f0
/* 1A7814 80278F34 46004003 */  div.s     $f0, $f8, $f0
/* 1A7818 80278F38 46002100 */  add.s     $f4, $f4, $f0
/* 1A781C 80278F3C 4606F183 */  div.s     $f6, $f30, $f6
/* 1A7820 80278F40 46061080 */  add.s     $f2, $f2, $f6
/* 1A7824 80278F44 E6440040 */  swc1      $f4, 0x40($s2)
/* 1A7828 80278F48 E6420044 */  swc1      $f2, 0x44($s2)
/* 1A782C 80278F4C 8E620078 */  lw        $v0, 0x78($s3)
/* 1A7830 80278F50 10400005 */  beqz      $v0, .L80278F68
/* 1A7834 80278F54 00000000 */   nop
/* 1A7838 80278F58 86040192 */  lh        $a0, 0x192($s0)
/* 1A783C 80278F5C 82050077 */  lb        $a1, 0x77($s0)
/* 1A7840 80278F60 0C098F3F */  jal       set_animation
/* 1A7844 80278F64 8E060064 */   lw       $a2, 0x64($s0)
.L80278F68:
/* 1A7848 80278F68 8E62007C */  lw        $v0, 0x7c($s3)
/* 1A784C 80278F6C 30420002 */  andi      $v0, $v0, 2
/* 1A7850 80278F70 1440000C */  bnez      $v0, .L80278FA4
/* 1A7854 80278F74 24020001 */   addiu    $v0, $zero, 1
/* 1A7858 80278F78 8E0201AC */  lw        $v0, 0x1ac($s0)
/* 1A785C 80278F7C 10400009 */  beqz      $v0, .L80278FA4
/* 1A7860 80278F80 24020001 */   addiu    $v0, $zero, 1
/* 1A7864 80278F84 C600014C */  lwc1      $f0, 0x14c($s0)
/* 1A7868 80278F88 E7A00010 */  swc1      $f0, 0x10($sp)
/* 1A786C 80278F8C 8E0401AC */  lw        $a0, 0x1ac($s0)
/* 1A7870 80278F90 8E060144 */  lw        $a2, 0x144($s0)
/* 1A7874 80278F94 8E070148 */  lw        $a3, 0x148($s0)
/* 1A7878 80278F98 0C052757 */  jal       play_sound_at_position
/* 1A787C 80278F9C 0000282D */   daddu    $a1, $zero, $zero
/* 1A7880 80278FA0 24020001 */  addiu     $v0, $zero, 1
.L80278FA4:
/* 1A7884 80278FA4 AE620070 */  sw        $v0, 0x70($s3)
.L80278FA8:
/* 1A7888 80278FA8 8E700074 */  lw        $s0, 0x74($s3)
/* 1A788C 80278FAC C6000050 */  lwc1      $f0, 0x50($s0)
/* 1A7890 80278FB0 C6020010 */  lwc1      $f2, 0x10($s0)
/* 1A7894 80278FB4 46000106 */  mov.s     $f4, $f0
/* 1A7898 80278FB8 46001080 */  add.s     $f2, $f2, $f0
/* 1A789C 80278FBC C6000048 */  lwc1      $f0, 0x48($s0)
/* 1A78A0 80278FC0 46002101 */  sub.s     $f4, $f4, $f0
/* 1A78A4 80278FC4 E6020010 */  swc1      $f2, 0x10($s0)
/* 1A78A8 80278FC8 E6040050 */  swc1      $f4, 0x50($s0)
/* 1A78AC 80278FCC 8E620078 */  lw        $v0, 0x78($s3)
/* 1A78B0 80278FD0 1040000B */  beqz      $v0, .L80279000
/* 1A78B4 80278FD4 2612000C */   addiu    $s2, $s0, 0xc
/* 1A78B8 80278FD8 44800000 */  mtc1      $zero, $f0
/* 1A78BC 80278FDC 00000000 */  nop
/* 1A78C0 80278FE0 4600203C */  c.lt.s    $f4, $f0
/* 1A78C4 80278FE4 00000000 */  nop
/* 1A78C8 80278FE8 45000005 */  bc1f      .L80279000
/* 1A78CC 80278FEC 00000000 */   nop
/* 1A78D0 80278FF0 86040192 */  lh        $a0, 0x192($s0)
/* 1A78D4 80278FF4 82050077 */  lb        $a1, 0x77($s0)
/* 1A78D8 80278FF8 0C098F3F */  jal       set_animation
/* 1A78DC 80278FFC 8E060068 */   lw       $a2, 0x68($s0)
.L80279000:
/* 1A78E0 80279000 C6420044 */  lwc1      $f2, 0x44($s2)
/* 1A78E4 80279004 44800000 */  mtc1      $zero, $f0
/* 1A78E8 80279008 00000000 */  nop
/* 1A78EC 8027900C 4600103C */  c.lt.s    $f2, $f0
/* 1A78F0 80279010 00000000 */  nop
/* 1A78F4 80279014 45000007 */  bc1f      .L80279034
/* 1A78F8 80279018 00000000 */   nop
/* 1A78FC 8027901C C6400004 */  lwc1      $f0, 4($s2)
/* 1A7900 80279020 C6420010 */  lwc1      $f2, 0x10($s2)
/* 1A7904 80279024 4602003C */  c.lt.s    $f0, $f2
/* 1A7908 80279028 00000000 */  nop
/* 1A790C 8027902C 45030001 */  bc1tl     .L80279034
/* 1A7910 80279030 E6420004 */   swc1     $f2, 4($s2)
.L80279034:
/* 1A7914 80279034 8E450040 */  lw        $a1, 0x40($s2)
/* 1A7918 80279038 8E460048 */  lw        $a2, 0x48($s2)
/* 1A791C 8027903C 0C09904A */  jal       add_xz_vec3f
/* 1A7920 80279040 0240202D */   daddu    $a0, $s2, $zero
/* 1A7924 80279044 C6400000 */  lwc1      $f0, ($s2)
/* 1A7928 80279048 E6000144 */  swc1      $f0, 0x144($s0)
/* 1A792C 8027904C C6400004 */  lwc1      $f0, 4($s2)
/* 1A7930 80279050 E6000148 */  swc1      $f0, 0x148($s0)
/* 1A7934 80279054 C6400008 */  lwc1      $f0, 8($s2)
/* 1A7938 80279058 E600014C */  swc1      $f0, 0x14c($s0)
/* 1A793C 8027905C 96420064 */  lhu       $v0, 0x64($s2)
/* 1A7940 80279060 2442FFFF */  addiu     $v0, $v0, -1
/* 1A7944 80279064 A6420064 */  sh        $v0, 0x64($s2)
/* 1A7948 80279068 00021400 */  sll       $v0, $v0, 0x10
/* 1A794C 8027906C 1C40001A */  bgtz      $v0, .L802790D8
/* 1A7950 80279070 0000102D */   daddu    $v0, $zero, $zero
/* 1A7954 80279074 8E62007C */  lw        $v0, 0x7c($s3)
/* 1A7958 80279078 30420001 */  andi      $v0, $v0, 1
/* 1A795C 8027907C 10400008 */  beqz      $v0, .L802790A0
/* 1A7960 80279080 00000000 */   nop
/* 1A7964 80279084 C6400048 */  lwc1      $f0, 0x48($s2)
/* 1A7968 80279088 E7A00010 */  swc1      $f0, 0x10($sp)
/* 1A796C 8027908C 8E45000C */  lw        $a1, 0xc($s2)
/* 1A7970 80279090 8E460010 */  lw        $a2, 0x10($s2)
/* 1A7974 80279094 8E470014 */  lw        $a3, 0x14($s2)
/* 1A7978 80279098 0C0990BC */  jal       play_movement_dust_effects
/* 1A797C 8027909C 24040002 */   addiu    $a0, $zero, 2
.L802790A0:
/* 1A7980 802790A0 C640000C */  lwc1      $f0, 0xc($s2)
/* 1A7984 802790A4 E6000144 */  swc1      $f0, 0x144($s0)
/* 1A7988 802790A8 C6400010 */  lwc1      $f0, 0x10($s2)
/* 1A798C 802790AC E6000148 */  swc1      $f0, 0x148($s0)
/* 1A7990 802790B0 C6400014 */  lwc1      $f0, 0x14($s2)
/* 1A7994 802790B4 E600014C */  swc1      $f0, 0x14c($s0)
/* 1A7998 802790B8 8E620078 */  lw        $v0, 0x78($s3)
/* 1A799C 802790BC 10400006 */  beqz      $v0, .L802790D8
/* 1A79A0 802790C0 24020001 */   addiu    $v0, $zero, 1
/* 1A79A4 802790C4 86040192 */  lh        $a0, 0x192($s0)
/* 1A79A8 802790C8 8245006B */  lb        $a1, 0x6b($s2)
/* 1A79AC 802790CC 0C098F3F */  jal       set_animation
/* 1A79B0 802790D0 8E460060 */   lw       $a2, 0x60($s2)
/* 1A79B4 802790D4 24020001 */  addiu     $v0, $zero, 1
.L802790D8:
/* 1A79B8 802790D8 8FBF0028 */  lw        $ra, 0x28($sp)
/* 1A79BC 802790DC 8FB30024 */  lw        $s3, 0x24($sp)
/* 1A79C0 802790E0 8FB20020 */  lw        $s2, 0x20($sp)
/* 1A79C4 802790E4 8FB1001C */  lw        $s1, 0x1c($sp)
/* 1A79C8 802790E8 8FB00018 */  lw        $s0, 0x18($sp)
/* 1A79CC 802790EC D7BE0058 */  ldc1      $f30, 0x58($sp)
/* 1A79D0 802790F0 D7BC0050 */  ldc1      $f28, 0x50($sp)
/* 1A79D4 802790F4 D7BA0048 */  ldc1      $f26, 0x48($sp)
/* 1A79D8 802790F8 D7B80040 */  ldc1      $f24, 0x40($sp)
/* 1A79DC 802790FC D7B60038 */  ldc1      $f22, 0x38($sp)
/* 1A79E0 80279100 D7B40030 */  ldc1      $f20, 0x30($sp)
/* 1A79E4 80279104 03E00008 */  jr        $ra
/* 1A79E8 80279108 27BD0060 */   addiu    $sp, $sp, 0x60
