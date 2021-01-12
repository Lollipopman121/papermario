.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel BoostAttack
/* 19E5B4 8026FCD4 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 19E5B8 8026FCD8 AFB20020 */  sw        $s2, 0x20($sp)
/* 19E5BC 8026FCDC 0080902D */  daddu     $s2, $a0, $zero
/* 19E5C0 8026FCE0 AFBF0024 */  sw        $ra, 0x24($sp)
/* 19E5C4 8026FCE4 AFB1001C */  sw        $s1, 0x1c($sp)
/* 19E5C8 8026FCE8 AFB00018 */  sw        $s0, 0x18($sp)
/* 19E5CC 8026FCEC F7B80038 */  sdc1      $f24, 0x38($sp)
/* 19E5D0 8026FCF0 F7B60030 */  sdc1      $f22, 0x30($sp)
/* 19E5D4 8026FCF4 F7B40028 */  sdc1      $f20, 0x28($sp)
/* 19E5D8 8026FCF8 8E51000C */  lw        $s1, 0xc($s2)
/* 19E5DC 8026FCFC 54A00001 */  bnel      $a1, $zero, .L8026FD04
/* 19E5E0 8026FD00 AE400070 */   sw       $zero, 0x70($s2)
.L8026FD04:
/* 19E5E4 8026FD04 8E420070 */  lw        $v0, 0x70($s2)
/* 19E5E8 8026FD08 1440002D */  bnez      $v0, .L8026FDC0
/* 19E5EC 8026FD0C 00000000 */   nop
/* 19E5F0 8026FD10 8E250000 */  lw        $a1, ($s1)
/* 19E5F4 8026FD14 26310004 */  addiu     $s1, $s1, 4
/* 19E5F8 8026FD18 0C0B1EAF */  jal       get_variable
/* 19E5FC 8026FD1C 0240202D */   daddu    $a0, $s2, $zero
/* 19E600 8026FD20 0040802D */  daddu     $s0, $v0, $zero
/* 19E604 8026FD24 2402FF81 */  addiu     $v0, $zero, -0x7f
/* 19E608 8026FD28 16020002 */  bne       $s0, $v0, .L8026FD34
/* 19E60C 8026FD2C 00000000 */   nop
/* 19E610 8026FD30 8E500148 */  lw        $s0, 0x148($s2)
.L8026FD34:
/* 19E614 8026FD34 8E250000 */  lw        $a1, ($s1)
/* 19E618 8026FD38 0C0B1EAF */  jal       get_variable
/* 19E61C 8026FD3C 0240202D */   daddu    $a0, $s2, $zero
/* 19E620 8026FD40 0040882D */  daddu     $s1, $v0, $zero
/* 19E624 8026FD44 0C09A75B */  jal       get_actor
/* 19E628 8026FD48 0200202D */   daddu    $a0, $s0, $zero
/* 19E62C 8026FD4C 0040802D */  daddu     $s0, $v0, $zero
/* 19E630 8026FD50 24040008 */  addiu     $a0, $zero, 8
/* 19E634 8026FD54 AE500074 */  sw        $s0, 0x74($s2)
/* 19E638 8026FD58 0C093903 */  jal       func_8024E40C
/* 19E63C 8026FD5C AE510078 */   sw       $s1, 0x78($s2)
/* 19E640 8026FD60 0C093978 */  jal       set_cam_zoffset
/* 19E644 8026FD64 2404000C */   addiu    $a0, $zero, 0xc
/* 19E648 8026FD68 86040192 */  lh        $a0, 0x192($s0)
/* 19E64C 8026FD6C 0C09390F */  jal       cam_target_actor
/* 19E650 8026FD70 00000000 */   nop
/* 19E654 8026FD74 0C093965 */  jal       set_cam_zoom
/* 19E658 8026FD78 240400FA */   addiu    $a0, $zero, 0xfa
/* 19E65C 8026FD7C 0C093936 */  jal       move_cam_over
/* 19E660 8026FD80 2404000A */   addiu    $a0, $zero, 0xa
/* 19E664 8026FD84 0C093983 */  jal       func_8024E60C
/* 19E668 8026FD88 00000000 */   nop
/* 19E66C 8026FD8C 8E020000 */  lw        $v0, ($s0)
/* 19E670 8026FD90 30420800 */  andi      $v0, $v0, 0x800
/* 19E674 8026FD94 10400004 */  beqz      $v0, .L8026FDA8
/* 19E678 8026FD98 24020001 */   addiu    $v0, $zero, 1
/* 19E67C 8026FD9C 0C093978 */  jal       set_cam_zoffset
/* 19E680 8026FDA0 0000202D */   daddu    $a0, $zero, $zero
/* 19E684 8026FDA4 24020001 */  addiu     $v0, $zero, 1
.L8026FDA8:
/* 19E688 8026FDA8 3C01802A */  lui       $at, %hi(D_8029FBD4)
/* 19E68C 8026FDAC A022FBD4 */  sb        $v0, %lo(D_8029FBD4)($at)
/* 19E690 8026FDB0 24020005 */  addiu     $v0, $zero, 5
/* 19E694 8026FDB4 AE42007C */  sw        $v0, 0x7c($s2)
/* 19E698 8026FDB8 24020001 */  addiu     $v0, $zero, 1
/* 19E69C 8026FDBC AE420070 */  sw        $v0, 0x70($s2)
.L8026FDC0:
/* 19E6A0 8026FDC0 0C09A75B */  jal       get_actor
/* 19E6A4 8026FDC4 8E440148 */   lw       $a0, 0x148($s2)
/* 19E6A8 8026FDC8 8E500074 */  lw        $s0, 0x74($s2)
/* 19E6AC 8026FDCC 8E510078 */  lw        $s1, 0x78($s2)
/* 19E6B0 8026FDD0 86020150 */  lh        $v0, 0x150($s0)
/* 19E6B4 8026FDD4 8E030000 */  lw        $v1, ($s0)
/* 19E6B8 8026FDD8 C6000144 */  lwc1      $f0, 0x144($s0)
/* 19E6BC 8026FDDC 44821000 */  mtc1      $v0, $f2
/* 19E6C0 8026FDE0 00000000 */  nop
/* 19E6C4 8026FDE4 468010A0 */  cvt.s.w   $f2, $f2
/* 19E6C8 8026FDE8 30620800 */  andi      $v0, $v1, 0x800
/* 19E6CC 8026FDEC 1040000E */  beqz      $v0, .L8026FE28
/* 19E6D0 8026FDF0 46020280 */   add.s    $f10, $f0, $f2
/* 19E6D4 8026FDF4 86020152 */  lh        $v0, 0x152($s0)
/* 19E6D8 8026FDF8 C6020148 */  lwc1      $f2, 0x148($s0)
/* 19E6DC 8026FDFC 44820000 */  mtc1      $v0, $f0
/* 19E6E0 8026FE00 00000000 */  nop
/* 19E6E4 8026FE04 46800020 */  cvt.s.w   $f0, $f0
/* 19E6E8 8026FE08 92020191 */  lbu       $v0, 0x191($s0)
/* 19E6EC 8026FE0C 46001080 */  add.s     $f2, $f2, $f0
/* 19E6F0 8026FE10 00021042 */  srl       $v0, $v0, 1
/* 19E6F4 8026FE14 44820000 */  mtc1      $v0, $f0
/* 19E6F8 8026FE18 00000000 */  nop
/* 19E6FC 8026FE1C 46800020 */  cvt.s.w   $f0, $f0
/* 19E700 8026FE20 0809BFA5 */  j         .L8026FE94
/* 19E704 8026FE24 46001181 */   sub.s    $f6, $f2, $f0
.L8026FE28:
/* 19E708 8026FE28 30628000 */  andi      $v0, $v1, 0x8000
/* 19E70C 8026FE2C 1440000E */  bnez      $v0, .L8026FE68
/* 19E710 8026FE30 00000000 */   nop
/* 19E714 8026FE34 86020152 */  lh        $v0, 0x152($s0)
/* 19E718 8026FE38 C6020148 */  lwc1      $f2, 0x148($s0)
/* 19E71C 8026FE3C 44820000 */  mtc1      $v0, $f0
/* 19E720 8026FE40 00000000 */  nop
/* 19E724 8026FE44 46800020 */  cvt.s.w   $f0, $f0
/* 19E728 8026FE48 92020191 */  lbu       $v0, 0x191($s0)
/* 19E72C 8026FE4C 46001080 */  add.s     $f2, $f2, $f0
/* 19E730 8026FE50 00021042 */  srl       $v0, $v0, 1
/* 19E734 8026FE54 44820000 */  mtc1      $v0, $f0
/* 19E738 8026FE58 00000000 */  nop
/* 19E73C 8026FE5C 46800020 */  cvt.s.w   $f0, $f0
/* 19E740 8026FE60 0809BFA5 */  j         .L8026FE94
/* 19E744 8026FE64 46020180 */   add.s    $f6, $f0, $f2
.L8026FE68:
/* 19E748 8026FE68 86020152 */  lh        $v0, 0x152($s0)
/* 19E74C 8026FE6C C6000148 */  lwc1      $f0, 0x148($s0)
/* 19E750 8026FE70 44821000 */  mtc1      $v0, $f2
/* 19E754 8026FE74 00000000 */  nop
/* 19E758 8026FE78 468010A0 */  cvt.s.w   $f2, $f2
/* 19E75C 8026FE7C 92020191 */  lbu       $v0, 0x191($s0)
/* 19E760 8026FE80 46020000 */  add.s     $f0, $f0, $f2
/* 19E764 8026FE84 44821000 */  mtc1      $v0, $f2
/* 19E768 8026FE88 00000000 */  nop
/* 19E76C 8026FE8C 468010A0 */  cvt.s.w   $f2, $f2
/* 19E770 8026FE90 46020180 */  add.s     $f6, $f0, $f2
.L8026FE94:
/* 19E774 8026FE94 86020154 */  lh        $v0, 0x154($s0)
/* 19E778 8026FE98 86030150 */  lh        $v1, 0x150($s0)
/* 19E77C 8026FE9C C600014C */  lwc1      $f0, 0x14c($s0)
/* 19E780 8026FEA0 44821000 */  mtc1      $v0, $f2
/* 19E784 8026FEA4 00000000 */  nop
/* 19E788 8026FEA8 468010A0 */  cvt.s.w   $f2, $f2
/* 19E78C 8026FEAC 44832000 */  mtc1      $v1, $f4
/* 19E790 8026FEB0 00000000 */  nop
/* 19E794 8026FEB4 46802120 */  cvt.s.w   $f4, $f4
/* 19E798 8026FEB8 92020190 */  lbu       $v0, 0x190($s0)
/* 19E79C 8026FEBC 46020000 */  add.s     $f0, $f0, $f2
/* 19E7A0 8026FEC0 3C014120 */  lui       $at, 0x4120
/* 19E7A4 8026FEC4 44811000 */  mtc1      $at, $f2
/* 19E7A8 8026FEC8 8E030000 */  lw        $v1, ($s0)
/* 19E7AC 8026FECC 46020200 */  add.s     $f8, $f0, $f2
/* 19E7B0 8026FED0 C6000144 */  lwc1      $f0, 0x144($s0)
/* 19E7B4 8026FED4 00021042 */  srl       $v0, $v0, 1
/* 19E7B8 8026FED8 46040000 */  add.s     $f0, $f0, $f4
/* 19E7BC 8026FEDC 44821000 */  mtc1      $v0, $f2
/* 19E7C0 8026FEE0 00000000 */  nop
/* 19E7C4 8026FEE4 468010A0 */  cvt.s.w   $f2, $f2
/* 19E7C8 8026FEE8 30620800 */  andi      $v0, $v1, 0x800
/* 19E7CC 8026FEEC 1040000D */  beqz      $v0, .L8026FF24
/* 19E7D0 8026FEF0 46020600 */   add.s    $f24, $f0, $f2
/* 19E7D4 8026FEF4 86020152 */  lh        $v0, 0x152($s0)
/* 19E7D8 8026FEF8 C6000148 */  lwc1      $f0, 0x148($s0)
/* 19E7DC 8026FEFC 44821000 */  mtc1      $v0, $f2
/* 19E7E0 8026FF00 00000000 */  nop
/* 19E7E4 8026FF04 468010A0 */  cvt.s.w   $f2, $f2
/* 19E7E8 8026FF08 92020191 */  lbu       $v0, 0x191($s0)
/* 19E7EC 8026FF0C 46020000 */  add.s     $f0, $f0, $f2
/* 19E7F0 8026FF10 44821000 */  mtc1      $v0, $f2
/* 19E7F4 8026FF14 00000000 */  nop
/* 19E7F8 8026FF18 468010A0 */  cvt.s.w   $f2, $f2
/* 19E7FC 8026FF1C 0809BFE4 */  j         .L8026FF90
/* 19E800 8026FF20 46020501 */   sub.s    $f20, $f0, $f2
.L8026FF24:
/* 19E804 8026FF24 30628000 */  andi      $v0, $v1, 0x8000
/* 19E808 8026FF28 1440000D */  bnez      $v0, .L8026FF60
/* 19E80C 8026FF2C 00000000 */   nop
/* 19E810 8026FF30 86020152 */  lh        $v0, 0x152($s0)
/* 19E814 8026FF34 C6000148 */  lwc1      $f0, 0x148($s0)
/* 19E818 8026FF38 44821000 */  mtc1      $v0, $f2
/* 19E81C 8026FF3C 00000000 */  nop
/* 19E820 8026FF40 468010A0 */  cvt.s.w   $f2, $f2
/* 19E824 8026FF44 92020191 */  lbu       $v0, 0x191($s0)
/* 19E828 8026FF48 46020000 */  add.s     $f0, $f0, $f2
/* 19E82C 8026FF4C 44821000 */  mtc1      $v0, $f2
/* 19E830 8026FF50 00000000 */  nop
/* 19E834 8026FF54 468010A0 */  cvt.s.w   $f2, $f2
/* 19E838 8026FF58 0809BFE4 */  j         .L8026FF90
/* 19E83C 8026FF5C 46001500 */   add.s    $f20, $f2, $f0
.L8026FF60:
/* 19E840 8026FF60 86020152 */  lh        $v0, 0x152($s0)
/* 19E844 8026FF64 C6020148 */  lwc1      $f2, 0x148($s0)
/* 19E848 8026FF68 44820000 */  mtc1      $v0, $f0
/* 19E84C 8026FF6C 00000000 */  nop
/* 19E850 8026FF70 46800020 */  cvt.s.w   $f0, $f0
/* 19E854 8026FF74 92020191 */  lbu       $v0, 0x191($s0)
/* 19E858 8026FF78 46001080 */  add.s     $f2, $f2, $f0
/* 19E85C 8026FF7C 00021040 */  sll       $v0, $v0, 1
/* 19E860 8026FF80 44820000 */  mtc1      $v0, $f0
/* 19E864 8026FF84 00000000 */  nop
/* 19E868 8026FF88 46800020 */  cvt.s.w   $f0, $f0
/* 19E86C 8026FF8C 46001500 */  add.s     $f20, $f2, $f0
.L8026FF90:
/* 19E870 8026FF90 86020154 */  lh        $v0, 0x154($s0)
/* 19E874 8026FF94 C600014C */  lwc1      $f0, 0x14c($s0)
/* 19E878 8026FF98 44821000 */  mtc1      $v0, $f2
/* 19E87C 8026FF9C 00000000 */  nop
/* 19E880 8026FFA0 468010A0 */  cvt.s.w   $f2, $f2
/* 19E884 8026FFA4 46020000 */  add.s     $f0, $f0, $f2
/* 19E888 8026FFA8 8E420070 */  lw        $v0, 0x70($s2)
/* 19E88C 8026FFAC 3C014120 */  lui       $at, 0x4120
/* 19E890 8026FFB0 44811000 */  mtc1      $at, $f2
/* 19E894 8026FFB4 2443FFFF */  addiu     $v1, $v0, -1
/* 19E898 8026FFB8 2C620005 */  sltiu     $v0, $v1, 5
/* 19E89C 8026FFBC 10400063 */  beqz      $v0, .L8027014C
/* 19E8A0 8026FFC0 46020580 */   add.s    $f22, $f0, $f2
/* 19E8A4 8026FFC4 00031080 */  sll       $v0, $v1, 2
/* 19E8A8 8026FFC8 3C01802A */  lui       $at, %hi(jtbl_8029D808_1CC0E8)
/* 19E8AC 8026FFCC 00220821 */  addu      $at, $at, $v0
/* 19E8B0 8026FFD0 8C22D808 */  lw        $v0, %lo(jtbl_8029D808_1CC0E8)($at)
/* 19E8B4 8026FFD4 00400008 */  jr        $v0
/* 19E8B8 8026FFD8 00000000 */   nop
glabel L8026FFDC_19E8BC
/* 19E8BC 8026FFDC 8E42007C */  lw        $v0, 0x7c($s2)
/* 19E8C0 8026FFE0 1440004D */  bnez      $v0, .L80270118
/* 19E8C4 8026FFE4 2442FFFF */   addiu    $v0, $v0, -1
/* 19E8C8 8026FFE8 24040002 */  addiu     $a0, $zero, 2
/* 19E8CC 8026FFEC 44055000 */  mfc1      $a1, $f10
/* 19E8D0 8026FFF0 44063000 */  mfc1      $a2, $f6
/* 19E8D4 8026FFF4 44074000 */  mfc1      $a3, $f8
/* 19E8D8 8026FFF8 3C013F80 */  lui       $at, 0x3f80
/* 19E8DC 8026FFFC 44810000 */  mtc1      $at, $f0
/* 19E8E0 80270000 2410001E */  addiu     $s0, $zero, 0x1e
/* 19E8E4 80270004 AFB00014 */  sw        $s0, 0x14($sp)
/* 19E8E8 80270008 0C01C2EC */  jal       func_80070BB0
/* 19E8EC 8027000C E7A00010 */   swc1     $f0, 0x10($sp)
/* 19E8F0 80270010 0C0938F6 */  jal       func_8024E3D8
/* 19E8F4 80270014 24040013 */   addiu    $a0, $zero, 0x13
/* 19E8F8 80270018 24020002 */  addiu     $v0, $zero, 2
/* 19E8FC 8027001C AE50007C */  sw        $s0, 0x7c($s2)
/* 19E900 80270020 0809C053 */  j         .L8027014C
/* 19E904 80270024 AE420070 */   sw       $v0, 0x70($s2)
glabel L80270028_19E908
/* 19E908 80270028 8E42007C */  lw        $v0, 0x7c($s2)
/* 19E90C 8027002C 1440003A */  bnez      $v0, .L80270118
/* 19E910 80270030 2442FFFF */   addiu    $v0, $v0, -1
/* 19E914 80270034 0200202D */  daddu     $a0, $s0, $zero
/* 19E918 80270038 0C09DC58 */  jal       dispatch_event_actor
/* 19E91C 8027003C 2405003F */   addiu    $a1, $zero, 0x3f
/* 19E920 80270040 0C093903 */  jal       func_8024E40C
/* 19E924 80270044 24040002 */   addiu    $a0, $zero, 2
/* 19E928 80270048 0C093936 */  jal       move_cam_over
/* 19E92C 8027004C 2404000F */   addiu    $a0, $zero, 0xf
/* 19E930 80270050 92020221 */  lbu       $v0, 0x221($s0)
/* 19E934 80270054 24030001 */  addiu     $v1, $zero, 1
/* 19E938 80270058 A2030220 */  sb        $v1, 0x220($s0)
/* 19E93C 8027005C 00511021 */  addu      $v0, $v0, $s1
/* 19E940 80270060 A2020221 */  sb        $v0, 0x221($s0)
/* 19E944 80270064 00021600 */  sll       $v0, $v0, 0x18
/* 19E948 80270068 00021603 */  sra       $v0, $v0, 0x18
/* 19E94C 8027006C 28420015 */  slti      $v0, $v0, 0x15
/* 19E950 80270070 14400003 */  bnez      $v0, .L80270080
/* 19E954 80270074 2624FFFF */   addiu    $a0, $s1, -1
/* 19E958 80270078 24020014 */  addiu     $v0, $zero, 0x14
/* 19E95C 8027007C A2020221 */  sb        $v0, 0x221($s0)
.L80270080:
/* 19E960 80270080 4405C000 */  mfc1      $a1, $f24
/* 19E964 80270084 4406A000 */  mfc1      $a2, $f20
/* 19E968 80270088 4407B000 */  mfc1      $a3, $f22
/* 19E96C 8027008C 3C013F80 */  lui       $at, 0x3f80
/* 19E970 80270090 44810000 */  mtc1      $at, $f0
/* 19E974 80270094 2402003C */  addiu     $v0, $zero, 0x3c
/* 19E978 80270098 AFA20014 */  sw        $v0, 0x14($sp)
/* 19E97C 8027009C 0C01C634 */  jal       func_800718D0
/* 19E980 802700A0 E7A00010 */   swc1     $f0, 0x10($sp)
/* 19E984 802700A4 2402000F */  addiu     $v0, $zero, 0xf
/* 19E988 802700A8 AE42007C */  sw        $v0, 0x7c($s2)
/* 19E98C 802700AC 24020003 */  addiu     $v0, $zero, 3
/* 19E990 802700B0 0809C053 */  j         .L8027014C
/* 19E994 802700B4 AE420070 */   sw       $v0, 0x70($s2)
glabel L802700B8_19E998
/* 19E998 802700B8 8E42007C */  lw        $v0, 0x7c($s2)
/* 19E99C 802700BC 14400016 */  bnez      $v0, .L80270118
/* 19E9A0 802700C0 2442FFFF */   addiu    $v0, $v0, -1
/* 19E9A4 802700C4 2404001D */  addiu     $a0, $zero, 0x1d
/* 19E9A8 802700C8 2405003C */  addiu     $a1, $zero, 0x3c
/* 19E9AC 802700CC 0C093E81 */  jal       show_variable_battle_message
/* 19E9B0 802700D0 0220302D */   daddu    $a2, $s1, $zero
/* 19E9B4 802700D4 24020004 */  addiu     $v0, $zero, 4
/* 19E9B8 802700D8 0809C053 */  j         .L8027014C
/* 19E9BC 802700DC AE420070 */   sw       $v0, 0x70($s2)
glabel L802700E0_19E9C0
/* 19E9C0 802700E0 0C093EAD */  jal       is_popup_displayed
/* 19E9C4 802700E4 00000000 */   nop
/* 19E9C8 802700E8 14400019 */  bnez      $v0, .L80270150
/* 19E9CC 802700EC 0000102D */   daddu    $v0, $zero, $zero
/* 19E9D0 802700F0 0C093903 */  jal       func_8024E40C
/* 19E9D4 802700F4 24040002 */   addiu    $a0, $zero, 2
/* 19E9D8 802700F8 2402000A */  addiu     $v0, $zero, 0xa
/* 19E9DC 802700FC AE42007C */  sw        $v0, 0x7c($s2)
/* 19E9E0 80270100 24020005 */  addiu     $v0, $zero, 5
/* 19E9E4 80270104 0809C053 */  j         .L8027014C
/* 19E9E8 80270108 AE420070 */   sw       $v0, 0x70($s2)
glabel L8027010C_19E9EC
/* 19E9EC 8027010C 8E42007C */  lw        $v0, 0x7c($s2)
/* 19E9F0 80270110 10400003 */  beqz      $v0, .L80270120
/* 19E9F4 80270114 2442FFFF */   addiu    $v0, $v0, -1
.L80270118:
/* 19E9F8 80270118 0809C053 */  j         .L8027014C
/* 19E9FC 8027011C AE42007C */   sw       $v0, 0x7c($s2)
.L80270120:
/* 19EA00 80270120 8E0201D8 */  lw        $v0, 0x1d8($s0)
/* 19EA04 80270124 10400005 */  beqz      $v0, .L8027013C
/* 19EA08 80270128 00000000 */   nop
/* 19EA0C 8027012C 0C0B1059 */  jal       does_script_exist
/* 19EA10 80270130 8E0401E8 */   lw       $a0, 0x1e8($s0)
/* 19EA14 80270134 14400006 */  bnez      $v0, .L80270150
/* 19EA18 80270138 0000102D */   daddu    $v0, $zero, $zero
.L8027013C:
/* 19EA1C 8027013C 3C01802A */  lui       $at, %hi(D_8029FBD4)
/* 19EA20 80270140 A020FBD4 */  sb        $zero, %lo(D_8029FBD4)($at)
/* 19EA24 80270144 0809C054 */  j         .L80270150
/* 19EA28 80270148 24020002 */   addiu    $v0, $zero, 2
.L8027014C:
/* 19EA2C 8027014C 0000102D */  daddu     $v0, $zero, $zero
.L80270150:
/* 19EA30 80270150 8FBF0024 */  lw        $ra, 0x24($sp)
/* 19EA34 80270154 8FB20020 */  lw        $s2, 0x20($sp)
/* 19EA38 80270158 8FB1001C */  lw        $s1, 0x1c($sp)
/* 19EA3C 8027015C 8FB00018 */  lw        $s0, 0x18($sp)
/* 19EA40 80270160 D7B80038 */  ldc1      $f24, 0x38($sp)
/* 19EA44 80270164 D7B60030 */  ldc1      $f22, 0x30($sp)
/* 19EA48 80270168 D7B40028 */  ldc1      $f20, 0x28($sp)
/* 19EA4C 8027016C 03E00008 */  jr        $ra
/* 19EA50 80270170 27BD0040 */   addiu    $sp, $sp, 0x40
