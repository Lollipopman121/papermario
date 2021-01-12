.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024055C_A60F2C
/* A60F2C 8024055C 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* A60F30 80240560 AFB7004C */  sw        $s7, 0x4c($sp)
/* A60F34 80240564 0080B82D */  daddu     $s7, $a0, $zero
/* A60F38 80240568 AFB10034 */  sw        $s1, 0x34($sp)
/* A60F3C 8024056C 00A0882D */  daddu     $s1, $a1, $zero
/* A60F40 80240570 AFBF0050 */  sw        $ra, 0x50($sp)
/* A60F44 80240574 AFB60048 */  sw        $s6, 0x48($sp)
/* A60F48 80240578 AFB50044 */  sw        $s5, 0x44($sp)
/* A60F4C 8024057C AFB40040 */  sw        $s4, 0x40($sp)
/* A60F50 80240580 AFB3003C */  sw        $s3, 0x3c($sp)
/* A60F54 80240584 AFB20038 */  sw        $s2, 0x38($sp)
/* A60F58 80240588 AFB00030 */  sw        $s0, 0x30($sp)
/* A60F5C 8024058C 8EF30148 */  lw        $s3, 0x148($s7)
/* A60F60 80240590 86640008 */  lh        $a0, 8($s3)
/* A60F64 80240594 8EF0000C */  lw        $s0, 0xc($s7)
/* A60F68 80240598 0C00FB5A */  jal       get_enemy_safe
/* A60F6C 8024059C 0000B02D */   daddu    $s6, $zero, $zero
/* A60F70 802405A0 10400131 */  beqz      $v0, .L80240A68
/* A60F74 802405A4 24020005 */   addiu    $v0, $zero, 5
/* A60F78 802405A8 8E63006C */  lw        $v1, 0x6c($s3)
/* A60F7C 802405AC 1062012F */  beq       $v1, $v0, .L80240A6C
/* A60F80 802405B0 0000102D */   daddu    $v0, $zero, $zero
/* A60F84 802405B4 8E050000 */  lw        $a1, ($s0)
/* A60F88 802405B8 0C0B1EAF */  jal       get_variable
/* A60F8C 802405BC 02E0202D */   daddu    $a0, $s7, $zero
/* A60F90 802405C0 86640008 */  lh        $a0, 8($s3)
/* A60F94 802405C4 0C00EABB */  jal       get_npc_unsafe
/* A60F98 802405C8 0040A82D */   daddu    $s5, $v0, $zero
/* A60F9C 802405CC 8E630070 */  lw        $v1, 0x70($s3)
/* A60FA0 802405D0 30630002 */  andi      $v1, $v1, 2
/* A60FA4 802405D4 10600008 */  beqz      $v1, .L802405F8
/* A60FA8 802405D8 0040902D */   daddu    $s2, $v0, $zero
/* A60FAC 802405DC 964200A8 */  lhu       $v0, 0xa8($s2)
/* A60FB0 802405E0 00021400 */  sll       $v0, $v0, 0x10
/* A60FB4 802405E4 00021C03 */  sra       $v1, $v0, 0x10
/* A60FB8 802405E8 000217C2 */  srl       $v0, $v0, 0x1f
/* A60FBC 802405EC 00621821 */  addu      $v1, $v1, $v0
/* A60FC0 802405F0 00031843 */  sra       $v1, $v1, 1
/* A60FC4 802405F4 A24300AB */  sb        $v1, 0xab($s2)
.L802405F8:
/* A60FC8 802405F8 16200005 */  bnez      $s1, .L80240610
/* A60FCC 802405FC 3C030004 */   lui      $v1, 4
/* A60FD0 80240600 8E6200B0 */  lw        $v0, 0xb0($s3)
/* A60FD4 80240604 30420004 */  andi      $v0, $v0, 4
/* A60FD8 80240608 10400019 */  beqz      $v0, .L80240670
/* A60FDC 8024060C 00000000 */   nop
.L80240610:
/* A60FE0 80240610 34630102 */  ori       $v1, $v1, 0x102
/* A60FE4 80240614 AEE00070 */  sw        $zero, 0x70($s7)
/* A60FE8 80240618 8E420000 */  lw        $v0, ($s2)
/* A60FEC 8024061C 0240202D */  daddu     $a0, $s2, $zero
/* A60FF0 80240620 A640008E */  sh        $zero, 0x8e($s2)
/* A60FF4 80240624 00431025 */  or        $v0, $v0, $v1
/* A60FF8 80240628 0C00EAFF */  jal       disable_npc_shadow
/* A60FFC 8024062C AE420000 */   sw       $v0, ($s2)
/* A61000 80240630 3C041F30 */  lui       $a0, 0x1f30
/* A61004 80240634 8E420000 */  lw        $v0, ($s2)
/* A61008 80240638 2403F7FF */  addiu     $v1, $zero, -0x801
/* A6100C 8024063C 00431024 */  and       $v0, $v0, $v1
/* A61010 80240640 AE420000 */  sw        $v0, ($s2)
/* A61014 80240644 8E620000 */  lw        $v0, ($s3)
/* A61018 80240648 8E6300B0 */  lw        $v1, 0xb0($s3)
/* A6101C 8024064C 34840040 */  ori       $a0, $a0, 0x40
/* A61020 80240650 AE60006C */  sw        $zero, 0x6c($s3)
/* A61024 80240654 00441025 */  or        $v0, $v0, $a0
/* A61028 80240658 AE620000 */  sw        $v0, ($s3)
/* A6102C 8024065C 30620004 */  andi      $v0, $v1, 4
/* A61030 80240660 10400003 */  beqz      $v0, .L80240670
/* A61034 80240664 2402FFFB */   addiu    $v0, $zero, -5
/* A61038 80240668 00621024 */  and       $v0, $v1, $v0
/* A6103C 8024066C AE6200B0 */  sw        $v0, 0xb0($s3)
.L80240670:
/* A61040 80240670 8EE30070 */  lw        $v1, 0x70($s7)
/* A61044 80240674 24100001 */  addiu     $s0, $zero, 1
/* A61048 80240678 10700012 */  beq       $v1, $s0, .L802406C4
/* A6104C 8024067C 28620002 */   slti     $v0, $v1, 2
/* A61050 80240680 10400005 */  beqz      $v0, .L80240698
/* A61054 80240684 24020002 */   addiu    $v0, $zero, 2
/* A61058 80240688 10600007 */  beqz      $v1, .L802406A8
/* A6105C 8024068C 0000102D */   daddu    $v0, $zero, $zero
/* A61060 80240690 0809029B */  j         .L80240A6C
/* A61064 80240694 00000000 */   nop
.L80240698:
/* A61068 80240698 1062005B */  beq       $v1, $v0, .L80240808
/* A6106C 8024069C 0000102D */   daddu    $v0, $zero, $zero
/* A61070 802406A0 0809029B */  j         .L80240A6C
/* A61074 802406A4 00000000 */   nop
.L802406A8:
/* A61078 802406A8 8E420000 */  lw        $v0, ($s2)
/* A6107C 802406AC 0240202D */  daddu     $a0, $s2, $zero
/* A61080 802406B0 34420002 */  ori       $v0, $v0, 2
/* A61084 802406B4 0C00EAFF */  jal       disable_npc_shadow
/* A61088 802406B8 AE420000 */   sw       $v0, ($s2)
/* A6108C 802406BC AE60006C */  sw        $zero, 0x6c($s3)
/* A61090 802406C0 AEF00070 */  sw        $s0, 0x70($s7)
.L802406C4:
/* A61094 802406C4 8E74006C */  lw        $s4, 0x6c($s3)
/* A61098 802406C8 24020001 */  addiu     $v0, $zero, 1
/* A6109C 802406CC 168200E7 */  bne       $s4, $v0, .L80240A6C
/* A610A0 802406D0 0000102D */   daddu    $v0, $zero, $zero
/* A610A4 802406D4 8E64007C */  lw        $a0, 0x7c($s3)
/* A610A8 802406D8 24110002 */  addiu     $s1, $zero, 2
/* A610AC 802406DC 0C00EABB */  jal       get_npc_unsafe
/* A610B0 802406E0 AE71006C */   sw       $s1, 0x6c($s3)
/* A610B4 802406E4 0040802D */  daddu     $s0, $v0, $zero
/* A610B8 802406E8 C6000038 */  lwc1      $f0, 0x38($s0)
/* A610BC 802406EC E6400038 */  swc1      $f0, 0x38($s2)
/* A610C0 802406F0 C6000040 */  lwc1      $f0, 0x40($s0)
/* A610C4 802406F4 E6400040 */  swc1      $f0, 0x40($s2)
/* A610C8 802406F8 C6020034 */  lwc1      $f2, 0x34($s0)
/* A610CC 802406FC 3C014387 */  lui       $at, 0x4387
/* A610D0 80240700 44810000 */  mtc1      $at, $f0
/* A610D4 80240704 26440038 */  addiu     $a0, $s2, 0x38
/* A610D8 80240708 46020001 */  sub.s     $f0, $f0, $f2
/* A610DC 8024070C C6680078 */  lwc1      $f8, 0x78($s3)
/* A610E0 80240710 46804220 */  cvt.s.w   $f8, $f8
/* A610E4 80240714 44064000 */  mfc1      $a2, $f8
/* A610E8 80240718 44070000 */  mfc1      $a3, $f0
/* A610EC 8024071C 0C00A7E7 */  jal       add_vec2D_polar
/* A610F0 80240720 26450040 */   addiu    $a1, $s2, 0x40
/* A610F4 80240724 C600003C */  lwc1      $f0, 0x3c($s0)
/* A610F8 80240728 C6620074 */  lwc1      $f2, 0x74($s3)
/* A610FC 8024072C 468010A0 */  cvt.s.w   $f2, $f2
/* A61100 80240730 46020000 */  add.s     $f0, $f0, $f2
/* A61104 80240734 E640003C */  swc1      $f0, 0x3c($s2)
/* A61108 80240738 A2740007 */  sb        $s4, 7($s3)
/* A6110C 8024073C C6400038 */  lwc1      $f0, 0x38($s2)
/* A61110 80240740 4600020D */  trunc.w.s $f8, $f0
/* A61114 80240744 44024000 */  mfc1      $v0, $f8
/* A61118 80240748 00000000 */  nop
/* A6111C 8024074C A6620010 */  sh        $v0, 0x10($s3)
/* A61120 80240750 C640003C */  lwc1      $f0, 0x3c($s2)
/* A61124 80240754 4600020D */  trunc.w.s $f8, $f0
/* A61128 80240758 44024000 */  mfc1      $v0, $f8
/* A6112C 8024075C 00000000 */  nop
/* A61130 80240760 A6620012 */  sh        $v0, 0x12($s3)
/* A61134 80240764 C6400040 */  lwc1      $f0, 0x40($s2)
/* A61138 80240768 4600020D */  trunc.w.s $f8, $f0
/* A6113C 8024076C 44024000 */  mfc1      $v0, $f8
/* A61140 80240770 00000000 */  nop
/* A61144 80240774 A6620014 */  sh        $v0, 0x14($s3)
/* A61148 80240778 AE400044 */  sw        $zero, 0x44($s2)
/* A6114C 8024077C AE400048 */  sw        $zero, 0x48($s2)
/* A61150 80240780 AE40004C */  sw        $zero, 0x4c($s2)
/* A61154 80240784 C6A00000 */  lwc1      $f0, ($s5)
/* A61158 80240788 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* A6115C 8024078C 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* A61160 80240790 C64C0038 */  lwc1      $f12, 0x38($s2)
/* A61164 80240794 C64E0040 */  lwc1      $f14, 0x40($s2)
/* A61168 80240798 E6400018 */  swc1      $f0, 0x18($s2)
/* A6116C 8024079C 8C460028 */  lw        $a2, 0x28($v0)
/* A61170 802407A0 0C00A720 */  jal       atan2
/* A61174 802407A4 8C470030 */   lw       $a3, 0x30($v0)
/* A61178 802407A8 E640000C */  swc1      $f0, 0xc($s2)
/* A6117C 802407AC C6A0000C */  lwc1      $f0, 0xc($s5)
/* A61180 802407B0 8E420000 */  lw        $v0, ($s2)
/* A61184 802407B4 0240202D */  daddu     $a0, $s2, $zero
/* A61188 802407B8 E640001C */  swc1      $f0, 0x1c($s2)
/* A6118C 802407BC C6A00010 */  lwc1      $f0, 0x10($s5)
/* A61190 802407C0 2403FFFD */  addiu     $v1, $zero, -3
/* A61194 802407C4 E6400014 */  swc1      $f0, 0x14($s2)
/* A61198 802407C8 C600003C */  lwc1      $f0, 0x3c($s0)
/* A6119C 802407CC 00431024 */  and       $v0, $v0, $v1
/* A611A0 802407D0 AE420000 */  sw        $v0, ($s2)
/* A611A4 802407D4 0C00EAE8 */  jal       enable_npc_shadow
/* A611A8 802407D8 E6400064 */   swc1     $f0, 0x64($s2)
/* A611AC 802407DC 8E420000 */  lw        $v0, ($s2)
/* A611B0 802407E0 3C03E0FF */  lui       $v1, 0xe0ff
/* A611B4 802407E4 34420800 */  ori       $v0, $v0, 0x800
/* A611B8 802407E8 AE420000 */  sw        $v0, ($s2)
/* A611BC 802407EC 8E620000 */  lw        $v0, ($s3)
/* A611C0 802407F0 3463FFFF */  ori       $v1, $v1, 0xffff
/* A611C4 802407F4 00431024 */  and       $v0, $v0, $v1
/* A611C8 802407F8 AE620000 */  sw        $v0, ($s3)
/* A611CC 802407FC 2402005A */  addiu     $v0, $zero, 0x5a
/* A611D0 80240800 A642008E */  sh        $v0, 0x8e($s2)
/* A611D4 80240804 AEF10070 */  sw        $s1, 0x70($s7)
.L80240808:
/* A611D8 80240808 0000202D */  daddu     $a0, $zero, $zero
/* A611DC 8024080C 27B00020 */  addiu     $s0, $sp, 0x20
/* A611E0 80240810 864200A8 */  lh        $v0, 0xa8($s2)
/* A611E4 80240814 3C013FE0 */  lui       $at, 0x3fe0
/* A611E8 80240818 44810800 */  mtc1      $at, $f1
/* A611EC 8024081C 44800000 */  mtc1      $zero, $f0
/* A611F0 80240820 44821000 */  mtc1      $v0, $f2
/* A611F4 80240824 00000000 */  nop
/* A611F8 80240828 468010A1 */  cvt.d.w   $f2, $f2
/* A611FC 8024082C 46201082 */  mul.d     $f2, $f2, $f0
/* A61200 80240830 00000000 */  nop
/* A61204 80240834 0200282D */  daddu     $a1, $s0, $zero
/* A61208 80240838 C6440038 */  lwc1      $f4, 0x38($s2)
/* A6120C 8024083C C640003C */  lwc1      $f0, 0x3c($s2)
/* A61210 80240840 27B10024 */  addiu     $s1, $sp, 0x24
/* A61214 80240844 E7A40020 */  swc1      $f4, 0x20($sp)
/* A61218 80240848 C6440040 */  lwc1      $f4, 0x40($s2)
/* A6121C 8024084C 46000021 */  cvt.d.s   $f0, $f0
/* A61220 80240850 46220000 */  add.d     $f0, $f0, $f2
/* A61224 80240854 E7A40028 */  swc1      $f4, 0x28($sp)
/* A61228 80240858 C6420018 */  lwc1      $f2, 0x18($s2)
/* A6122C 8024085C 46200020 */  cvt.s.d   $f0, $f0
/* A61230 80240860 E7A00024 */  swc1      $f0, 0x24($sp)
/* A61234 80240864 E7A20010 */  swc1      $f2, 0x10($sp)
/* A61238 80240868 C640000C */  lwc1      $f0, 0xc($s2)
/* A6123C 8024086C 0220302D */  daddu     $a2, $s1, $zero
/* A61240 80240870 E7A00014 */  swc1      $f0, 0x14($sp)
/* A61244 80240874 864200A6 */  lh        $v0, 0xa6($s2)
/* A61248 80240878 27B40028 */  addiu     $s4, $sp, 0x28
/* A6124C 8024087C 44820000 */  mtc1      $v0, $f0
/* A61250 80240880 00000000 */  nop
/* A61254 80240884 46800020 */  cvt.s.w   $f0, $f0
/* A61258 80240888 E7A00018 */  swc1      $f0, 0x18($sp)
/* A6125C 8024088C 864200A8 */  lh        $v0, 0xa8($s2)
/* A61260 80240890 0280382D */  daddu     $a3, $s4, $zero
/* A61264 80240894 44820000 */  mtc1      $v0, $f0
/* A61268 80240898 00000000 */  nop
/* A6126C 8024089C 46800020 */  cvt.s.w   $f0, $f0
/* A61270 802408A0 0C0376B9 */  jal       func_800DDAE4
/* A61274 802408A4 E7A0001C */   swc1     $f0, 0x1c($sp)
/* A61278 802408A8 54400001 */  bnel      $v0, $zero, .L802408B0
/* A6127C 802408AC 24160001 */   addiu    $s6, $zero, 1
.L802408B0:
/* A61280 802408B0 0200282D */  daddu     $a1, $s0, $zero
/* A61284 802408B4 0220302D */  daddu     $a2, $s1, $zero
/* A61288 802408B8 C6400038 */  lwc1      $f0, 0x38($s2)
/* A6128C 802408BC C642003C */  lwc1      $f2, 0x3c($s2)
/* A61290 802408C0 C6440040 */  lwc1      $f4, 0x40($s2)
/* A61294 802408C4 3C01447A */  lui       $at, 0x447a
/* A61298 802408C8 44813000 */  mtc1      $at, $f6
/* A6129C 802408CC 27A2002C */  addiu     $v0, $sp, 0x2c
/* A612A0 802408D0 E7A00020 */  swc1      $f0, 0x20($sp)
/* A612A4 802408D4 E7A20024 */  swc1      $f2, 0x24($sp)
/* A612A8 802408D8 E7A40028 */  swc1      $f4, 0x28($sp)
/* A612AC 802408DC E7A6002C */  swc1      $f6, 0x2c($sp)
/* A612B0 802408E0 AFA20010 */  sw        $v0, 0x10($sp)
/* A612B4 802408E4 8E440080 */  lw        $a0, 0x80($s2)
/* A612B8 802408E8 0C0372DF */  jal       func_800DCB7C
/* A612BC 802408EC 0280382D */   daddu    $a3, $s4, $zero
/* A612C0 802408F0 10400019 */  beqz      $v0, .L80240958
/* A612C4 802408F4 00000000 */   nop
/* A612C8 802408F8 C640001C */  lwc1      $f0, 0x1c($s2)
/* A612CC 802408FC C7A2002C */  lwc1      $f2, 0x2c($sp)
/* A612D0 80240900 46000005 */  abs.s     $f0, $f0
/* A612D4 80240904 4600103C */  c.lt.s    $f2, $f0
/* A612D8 80240908 00000000 */  nop
/* A612DC 8024090C 45000012 */  bc1f      .L80240958
/* A612E0 80240910 00000000 */   nop
/* A612E4 80240914 C7A40024 */  lwc1      $f4, 0x24($sp)
/* A612E8 80240918 C6400064 */  lwc1      $f0, 0x64($s2)
/* A612EC 8024091C 46002001 */  sub.s     $f0, $f4, $f0
/* A612F0 80240920 3C014034 */  lui       $at, 0x4034
/* A612F4 80240924 44811800 */  mtc1      $at, $f3
/* A612F8 80240928 44801000 */  mtc1      $zero, $f2
/* A612FC 8024092C 46000005 */  abs.s     $f0, $f0
/* A61300 80240930 46000021 */  cvt.d.s   $f0, $f0
/* A61304 80240934 4622003C */  c.lt.d    $f0, $f2
/* A61308 80240938 00000000 */  nop
/* A6130C 8024093C 45000006 */  bc1f      .L80240958
/* A61310 80240940 0240202D */   daddu    $a0, $s2, $zero
/* A61314 80240944 8E450018 */  lw        $a1, 0x18($s2)
/* A61318 80240948 8E46000C */  lw        $a2, 0xc($s2)
/* A6131C 8024094C 2416000A */  addiu     $s6, $zero, 0xa
/* A61320 80240950 0C00EA95 */  jal       npc_move_heading
/* A61324 80240954 E644003C */   swc1     $f4, 0x3c($s2)
.L80240958:
/* A61328 80240958 C7A0002C */  lwc1      $f0, 0x2c($sp)
/* A6132C 8024095C 3C013FF0 */  lui       $at, 0x3ff0
/* A61330 80240960 44811800 */  mtc1      $at, $f3
/* A61334 80240964 44801000 */  mtc1      $zero, $f2
/* A61338 80240968 46000021 */  cvt.d.s   $f0, $f0
/* A6133C 8024096C 4622003C */  c.lt.d    $f0, $f2
/* A61340 80240970 00000000 */  nop
/* A61344 80240974 45030001 */  bc1tl     .L8024097C
/* A61348 80240978 2416000B */   addiu    $s6, $zero, 0xb
.L8024097C:
/* A6134C 8024097C 9642008E */  lhu       $v0, 0x8e($s2)
/* A61350 80240980 2442FFFF */  addiu     $v0, $v0, -1
/* A61354 80240984 A642008E */  sh        $v0, 0x8e($s2)
/* A61358 80240988 00021400 */  sll       $v0, $v0, 0x10
/* A6135C 8024098C 58400001 */  blezl     $v0, .L80240994
/* A61360 80240990 24160014 */   addiu    $s6, $zero, 0x14
.L80240994:
/* A61364 80240994 56C00019 */  bnel      $s6, $zero, .L802409FC
/* A61368 80240998 AFA00010 */   sw       $zero, 0x10($sp)
/* A6136C 8024099C 8E620070 */  lw        $v0, 0x70($s3)
/* A61370 802409A0 30420001 */  andi      $v0, $v0, 1
/* A61374 802409A4 10400009 */  beqz      $v0, .L802409CC
/* A61378 802409A8 00000000 */   nop
/* A6137C 802409AC C640004C */  lwc1      $f0, 0x4c($s2)
/* A61380 802409B0 3C014044 */  lui       $at, 0x4044
/* A61384 802409B4 44811800 */  mtc1      $at, $f3
/* A61388 802409B8 44801000 */  mtc1      $zero, $f2
/* A6138C 802409BC 46000021 */  cvt.d.s   $f0, $f0
/* A61390 802409C0 46220000 */  add.d     $f0, $f0, $f2
/* A61394 802409C4 46200020 */  cvt.s.d   $f0, $f0
/* A61398 802409C8 E640004C */  swc1      $f0, 0x4c($s2)
.L802409CC:
/* A6139C 802409CC 8E450018 */  lw        $a1, 0x18($s2)
/* A613A0 802409D0 8E46000C */  lw        $a2, 0xc($s2)
/* A613A4 802409D4 0C00EA95 */  jal       npc_move_heading
/* A613A8 802409D8 0240202D */   daddu    $a0, $s2, $zero
/* A613AC 802409DC C644003C */  lwc1      $f4, 0x3c($s2)
/* A613B0 802409E0 C640001C */  lwc1      $f0, 0x1c($s2)
/* A613B4 802409E4 46002100 */  add.s     $f4, $f4, $f0
/* A613B8 802409E8 C6420014 */  lwc1      $f2, 0x14($s2)
/* A613BC 802409EC 46020001 */  sub.s     $f0, $f0, $f2
/* A613C0 802409F0 E644003C */  swc1      $f4, 0x3c($s2)
/* A613C4 802409F4 0809029A */  j         .L80240A68
/* A613C8 802409F8 E640001C */   swc1     $f0, 0x1c($s2)
.L802409FC:
/* A613CC 802409FC AFA00014 */  sw        $zero, 0x14($sp)
/* A613D0 80240A00 8E450038 */  lw        $a1, 0x38($s2)
/* A613D4 80240A04 8E46003C */  lw        $a2, 0x3c($s2)
/* A613D8 80240A08 8E470040 */  lw        $a3, 0x40($s2)
/* A613DC 80240A0C 0C01BECC */  jal       fx_walk_normal
/* A613E0 80240A10 24040002 */   addiu    $a0, $zero, 2
/* A613E4 80240A14 3C01C47A */  lui       $at, 0xc47a
/* A613E8 80240A18 44810000 */  mtc1      $at, $f0
/* A613EC 80240A1C AE60006C */  sw        $zero, 0x6c($s3)
/* A613F0 80240A20 8E420000 */  lw        $v0, ($s2)
/* A613F4 80240A24 0240202D */  daddu     $a0, $s2, $zero
/* A613F8 80240A28 AE400038 */  sw        $zero, 0x38($s2)
/* A613FC 80240A2C AE400040 */  sw        $zero, 0x40($s2)
/* A61400 80240A30 AE40001C */  sw        $zero, 0x1c($s2)
/* A61404 80240A34 34420002 */  ori       $v0, $v0, 2
/* A61408 80240A38 E640003C */  swc1      $f0, 0x3c($s2)
/* A6140C 80240A3C 0C00EAFF */  jal       disable_npc_shadow
/* A61410 80240A40 AE420000 */   sw       $v0, ($s2)
/* A61414 80240A44 8E420000 */  lw        $v0, ($s2)
/* A61418 80240A48 2403F7FF */  addiu     $v1, $zero, -0x801
/* A6141C 80240A4C 00431024 */  and       $v0, $v0, $v1
/* A61420 80240A50 AE420000 */  sw        $v0, ($s2)
/* A61424 80240A54 8E620000 */  lw        $v0, ($s3)
/* A61428 80240A58 3C031F00 */  lui       $v1, 0x1f00
/* A6142C 80240A5C 00431025 */  or        $v0, $v0, $v1
/* A61430 80240A60 AE620000 */  sw        $v0, ($s3)
/* A61434 80240A64 AEE00070 */  sw        $zero, 0x70($s7)
.L80240A68:
/* A61438 80240A68 0000102D */  daddu     $v0, $zero, $zero
.L80240A6C:
/* A6143C 80240A6C 8FBF0050 */  lw        $ra, 0x50($sp)
/* A61440 80240A70 8FB7004C */  lw        $s7, 0x4c($sp)
/* A61444 80240A74 8FB60048 */  lw        $s6, 0x48($sp)
/* A61448 80240A78 8FB50044 */  lw        $s5, 0x44($sp)
/* A6144C 80240A7C 8FB40040 */  lw        $s4, 0x40($sp)
/* A61450 80240A80 8FB3003C */  lw        $s3, 0x3c($sp)
/* A61454 80240A84 8FB20038 */  lw        $s2, 0x38($sp)
/* A61458 80240A88 8FB10034 */  lw        $s1, 0x34($sp)
/* A6145C 80240A8C 8FB00030 */  lw        $s0, 0x30($sp)
/* A61460 80240A90 03E00008 */  jr        $ra
/* A61464 80240A94 27BD0058 */   addiu    $sp, $sp, 0x58
