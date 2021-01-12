.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240658_865198
/* 865198 80240658 27BDFF98 */  addiu     $sp, $sp, -0x68
/* 86519C 8024065C AFB20018 */  sw        $s2, 0x18($sp)
/* 8651A0 80240660 0080902D */  daddu     $s2, $a0, $zero
/* 8651A4 80240664 AFB10014 */  sw        $s1, 0x14($sp)
/* 8651A8 80240668 00A0882D */  daddu     $s1, $a1, $zero
/* 8651AC 8024066C AFB7002C */  sw        $s7, 0x2c($sp)
/* 8651B0 80240670 00C0B82D */  daddu     $s7, $a2, $zero
/* 8651B4 80240674 AFB00010 */  sw        $s0, 0x10($sp)
/* 8651B8 80240678 00E0802D */  daddu     $s0, $a3, $zero
/* 8651BC 8024067C AFBF0030 */  sw        $ra, 0x30($sp)
/* 8651C0 80240680 AFB60028 */  sw        $s6, 0x28($sp)
/* 8651C4 80240684 AFB50024 */  sw        $s5, 0x24($sp)
/* 8651C8 80240688 AFB40020 */  sw        $s4, 0x20($sp)
/* 8651CC 8024068C AFB3001C */  sw        $s3, 0x1c($sp)
/* 8651D0 80240690 F7BE0060 */  sdc1      $f30, 0x60($sp)
/* 8651D4 80240694 F7BC0058 */  sdc1      $f28, 0x58($sp)
/* 8651D8 80240698 F7BA0050 */  sdc1      $f26, 0x50($sp)
/* 8651DC 8024069C F7B80048 */  sdc1      $f24, 0x48($sp)
/* 8651E0 802406A0 F7B60040 */  sdc1      $f22, 0x40($sp)
/* 8651E4 802406A4 F7B40038 */  sdc1      $f20, 0x38($sp)
/* 8651E8 802406A8 8E160000 */  lw        $s6, ($s0)
/* 8651EC 802406AC 0C00EAD2 */  jal       get_npc_safe
/* 8651F0 802406B0 0000202D */   daddu    $a0, $zero, $zero
/* 8651F4 802406B4 8C420028 */  lw        $v0, 0x28($v0)
/* 8651F8 802406B8 3C03FF4A */  lui       $v1, 0xff4a
/* 8651FC 802406BC 00431821 */  addu      $v1, $v0, $v1
/* 865200 802406C0 2C62000D */  sltiu     $v0, $v1, 0xd
/* 865204 802406C4 1040000B */  beqz      $v0, .L802406F4
/* 865208 802406C8 00031080 */   sll      $v0, $v1, 2
/* 86520C 802406CC 3C018024 */  lui       $at, %hi(jtbl_80244910_869450)
/* 865210 802406D0 00220821 */  addu      $at, $at, $v0
/* 865214 802406D4 8C224910 */  lw        $v0, %lo(jtbl_80244910_869450)($at)
/* 865218 802406D8 00400008 */  jr        $v0
/* 86521C 802406DC 00000000 */   nop
glabel L802406E0_865220
/* 865220 802406E0 8E020000 */  lw        $v0, ($s0)
/* 865224 802406E4 04410003 */  bgez      $v0, .L802406F4
/* 865228 802406E8 00000000 */   nop
/* 86522C 802406EC 0000B02D */  daddu     $s6, $zero, $zero
/* 865230 802406F0 AE000000 */  sw        $zero, ($s0)
.L802406F4:
glabel L802406F4_865234
/* 865234 802406F4 1AE00065 */  blez      $s7, .L8024088C
/* 865238 802406F8 0000A02D */   daddu    $s4, $zero, $zero
/* 86523C 802406FC 0220982D */  daddu     $s3, $s1, $zero
/* 865240 80240700 3C014220 */  lui       $at, 0x4220
/* 865244 80240704 4481F000 */  mtc1      $at, $f30
/* 865248 80240708 3C014120 */  lui       $at, 0x4120
/* 86524C 8024070C 4481E000 */  mtc1      $at, $f28
.L80240710:
/* 865250 80240710 86440000 */  lh        $a0, ($s2)
/* 865254 80240714 2882001F */  slti      $v0, $a0, 0x1f
/* 865258 80240718 54400058 */  bnel      $v0, $zero, .L8024087C
/* 86525C 8024071C 26730010 */   addiu    $s3, $s3, 0x10
/* 865260 80240720 3C026666 */  lui       $v0, 0x6666
/* 865264 80240724 34426667 */  ori       $v0, $v0, 0x6667
/* 865268 80240728 2483FFE2 */  addiu     $v1, $a0, -0x1e
/* 86526C 8024072C 00620018 */  mult      $v1, $v0
/* 865270 80240730 4480C000 */  mtc1      $zero, $f24
/* 865274 80240734 0000802D */  daddu     $s0, $zero, $zero
/* 865278 80240738 00031FC3 */  sra       $v1, $v1, 0x1f
/* 86527C 8024073C 4600C686 */  mov.s     $f26, $f24
/* 865280 80240740 00004010 */  mfhi      $t0
/* 865284 80240744 00081083 */  sra       $v0, $t0, 2
/* 865288 80240748 00438823 */  subu      $s1, $v0, $v1
/* 86528C 8024074C 00111080 */  sll       $v0, $s1, 2
/* 865290 80240750 00511021 */  addu      $v0, $v0, $s1
/* 865294 80240754 00021040 */  sll       $v0, $v0, 1
/* 865298 80240758 2442001E */  addiu     $v0, $v0, 0x1e
/* 86529C 8024075C 1A20001D */  blez      $s1, .L802407D4
/* 8652A0 80240760 0082A823 */   subu     $s5, $a0, $v0
.L80240764:
/* 8652A4 80240764 44966000 */  mtc1      $s6, $f12
/* 8652A8 80240768 00000000 */  nop
/* 8652AC 8024076C 0C00A8BB */  jal       sin_deg
/* 8652B0 80240770 46806320 */   cvt.s.w  $f12, $f12
/* 8652B4 80240774 44902000 */  mtc1      $s0, $f4
/* 8652B8 80240778 00000000 */  nop
/* 8652BC 8024077C 46802120 */  cvt.s.w   $f4, $f4
/* 8652C0 80240780 461E2083 */  div.s     $f2, $f4, $f30
/* 8652C4 80240784 46001082 */  mul.s     $f2, $f2, $f0
/* 8652C8 80240788 00000000 */  nop
/* 8652CC 8024078C 3C014170 */  lui       $at, 0x4170
/* 8652D0 80240790 44813000 */  mtc1      $at, $f6
/* 8652D4 80240794 00000000 */  nop
/* 8652D8 80240798 46062103 */  div.s     $f4, $f4, $f6
/* 8652DC 8024079C 46022580 */  add.s     $f22, $f4, $f2
/* 8652E0 802407A0 0C00A874 */  jal       cos_rad
/* 8652E4 802407A4 4600B306 */   mov.s    $f12, $f22
/* 8652E8 802407A8 461C0002 */  mul.s     $f0, $f0, $f28
/* 8652EC 802407AC 00000000 */  nop
/* 8652F0 802407B0 4600D680 */  add.s     $f26, $f26, $f0
/* 8652F4 802407B4 0C00A85B */  jal       sin_rad
/* 8652F8 802407B8 4600B306 */   mov.s    $f12, $f22
/* 8652FC 802407BC 461C0002 */  mul.s     $f0, $f0, $f28
/* 865300 802407C0 00000000 */  nop
/* 865304 802407C4 26100001 */  addiu     $s0, $s0, 1
/* 865308 802407C8 0211102A */  slt       $v0, $s0, $s1
/* 86530C 802407CC 1440FFE5 */  bnez      $v0, .L80240764
/* 865310 802407D0 4600C600 */   add.s    $f24, $f24, $f0
.L802407D4:
/* 865314 802407D4 44966000 */  mtc1      $s6, $f12
/* 865318 802407D8 00000000 */  nop
/* 86531C 802407DC 0C00A8BB */  jal       sin_deg
/* 865320 802407E0 46806320 */   cvt.s.w  $f12, $f12
/* 865324 802407E4 44902000 */  mtc1      $s0, $f4
/* 865328 802407E8 00000000 */  nop
/* 86532C 802407EC 46802120 */  cvt.s.w   $f4, $f4
/* 865330 802407F0 461E2083 */  div.s     $f2, $f4, $f30
/* 865334 802407F4 46001082 */  mul.s     $f2, $f2, $f0
/* 865338 802407F8 00000000 */  nop
/* 86533C 802407FC 3C014170 */  lui       $at, 0x4170
/* 865340 80240800 44813000 */  mtc1      $at, $f6
/* 865344 80240804 00000000 */  nop
/* 865348 80240808 46062103 */  div.s     $f4, $f4, $f6
/* 86534C 8024080C 46022580 */  add.s     $f22, $f4, $f2
/* 865350 80240810 0C00A874 */  jal       cos_rad
/* 865354 80240814 4600B306 */   mov.s    $f12, $f22
/* 865358 80240818 4495A000 */  mtc1      $s5, $f20
/* 86535C 8024081C 00000000 */  nop
/* 865360 80240820 4680A520 */  cvt.s.w   $f20, $f20
/* 865364 80240824 4600A002 */  mul.s     $f0, $f20, $f0
/* 865368 80240828 00000000 */  nop
/* 86536C 8024082C 4600D680 */  add.s     $f26, $f26, $f0
/* 865370 80240830 0C00A85B */  jal       sin_rad
/* 865374 80240834 4600B306 */   mov.s    $f12, $f22
/* 865378 80240838 4600A502 */  mul.s     $f20, $f20, $f0
/* 86537C 8024083C 00000000 */  nop
/* 865380 80240840 4600D18D */  trunc.w.s $f6, $f26
/* 865384 80240844 44023000 */  mfc1      $v0, $f6
/* 865388 80240848 00000000 */  nop
/* 86538C 8024084C A6620000 */  sh        $v0, ($s3)
/* 865390 80240850 86420002 */  lh        $v0, 2($s2)
/* 865394 80240854 4614C600 */  add.s     $f24, $f24, $f20
/* 865398 80240858 44820000 */  mtc1      $v0, $f0
/* 86539C 8024085C 00000000 */  nop
/* 8653A0 80240860 46800020 */  cvt.s.w   $f0, $f0
/* 8653A4 80240864 46180000 */  add.s     $f0, $f0, $f24
/* 8653A8 80240868 4600018D */  trunc.w.s $f6, $f0
/* 8653AC 8024086C 44023000 */  mfc1      $v0, $f6
/* 8653B0 80240870 00000000 */  nop
/* 8653B4 80240874 A6620002 */  sh        $v0, 2($s3)
/* 8653B8 80240878 26730010 */  addiu     $s3, $s3, 0x10
.L8024087C:
/* 8653BC 8024087C 26940001 */  addiu     $s4, $s4, 1
/* 8653C0 80240880 0297102A */  slt       $v0, $s4, $s7
/* 8653C4 80240884 1440FFA2 */  bnez      $v0, .L80240710
/* 8653C8 80240888 26520010 */   addiu    $s2, $s2, 0x10
.L8024088C:
/* 8653CC 8024088C 8FBF0030 */  lw        $ra, 0x30($sp)
/* 8653D0 80240890 8FB7002C */  lw        $s7, 0x2c($sp)
/* 8653D4 80240894 8FB60028 */  lw        $s6, 0x28($sp)
/* 8653D8 80240898 8FB50024 */  lw        $s5, 0x24($sp)
/* 8653DC 8024089C 8FB40020 */  lw        $s4, 0x20($sp)
/* 8653E0 802408A0 8FB3001C */  lw        $s3, 0x1c($sp)
/* 8653E4 802408A4 8FB20018 */  lw        $s2, 0x18($sp)
/* 8653E8 802408A8 8FB10014 */  lw        $s1, 0x14($sp)
/* 8653EC 802408AC 8FB00010 */  lw        $s0, 0x10($sp)
/* 8653F0 802408B0 D7BE0060 */  ldc1      $f30, 0x60($sp)
/* 8653F4 802408B4 D7BC0058 */  ldc1      $f28, 0x58($sp)
/* 8653F8 802408B8 D7BA0050 */  ldc1      $f26, 0x50($sp)
/* 8653FC 802408BC D7B80048 */  ldc1      $f24, 0x48($sp)
/* 865400 802408C0 D7B60040 */  ldc1      $f22, 0x40($sp)
/* 865404 802408C4 D7B40038 */  ldc1      $f20, 0x38($sp)
/* 865408 802408C8 03E00008 */  jr        $ra
/* 86540C 802408CC 27BD0068 */   addiu    $sp, $sp, 0x68
