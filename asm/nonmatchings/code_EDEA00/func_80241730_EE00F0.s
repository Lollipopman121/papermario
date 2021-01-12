.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241730_EE00F0
/* EE00F0 80241730 27BDFF78 */  addiu     $sp, $sp, -0x88
/* EE00F4 80241734 AFB20048 */  sw        $s2, 0x48($sp)
/* EE00F8 80241738 0080902D */  daddu     $s2, $a0, $zero
/* EE00FC 8024173C AFBF0064 */  sw        $ra, 0x64($sp)
/* EE0100 80241740 AFBE0060 */  sw        $fp, 0x60($sp)
/* EE0104 80241744 AFB7005C */  sw        $s7, 0x5c($sp)
/* EE0108 80241748 AFB60058 */  sw        $s6, 0x58($sp)
/* EE010C 8024174C AFB50054 */  sw        $s5, 0x54($sp)
/* EE0110 80241750 AFB40050 */  sw        $s4, 0x50($sp)
/* EE0114 80241754 AFB3004C */  sw        $s3, 0x4c($sp)
/* EE0118 80241758 AFB10044 */  sw        $s1, 0x44($sp)
/* EE011C 8024175C AFB00040 */  sw        $s0, 0x40($sp)
/* EE0120 80241760 F7BA0080 */  sdc1      $f26, 0x80($sp)
/* EE0124 80241764 F7B80078 */  sdc1      $f24, 0x78($sp)
/* EE0128 80241768 F7B60070 */  sdc1      $f22, 0x70($sp)
/* EE012C 8024176C F7B40068 */  sdc1      $f20, 0x68($sp)
/* EE0130 80241770 8E510148 */  lw        $s1, 0x148($s2)
/* EE0134 80241774 00A0B82D */  daddu     $s7, $a1, $zero
/* EE0138 80241778 86240008 */  lh        $a0, 8($s1)
/* EE013C 8024177C 0C00F92F */  jal       func_8003E4BC
/* EE0140 80241780 00C0F02D */   daddu    $fp, $a2, $zero
/* EE0144 80241784 C620007C */  lwc1      $f0, 0x7c($s1)
/* EE0148 80241788 46800020 */  cvt.s.w   $f0, $f0
/* EE014C 8024178C 46000021 */  cvt.d.s   $f0, $f0
/* EE0150 80241790 0040802D */  daddu     $s0, $v0, $zero
/* EE0154 80241794 3C014059 */  lui       $at, 0x4059
/* EE0158 80241798 44813800 */  mtc1      $at, $f7
/* EE015C 8024179C 44803000 */  mtc1      $zero, $f6
/* EE0160 802417A0 8602008E */  lh        $v0, 0x8e($s0)
/* EE0164 802417A4 9603008E */  lhu       $v1, 0x8e($s0)
/* EE0168 802417A8 46260003 */  div.d     $f0, $f0, $f6
/* EE016C 802417AC 462005A0 */  cvt.s.d   $f22, $f0
/* EE0170 802417B0 C6200078 */  lwc1      $f0, 0x78($s1)
/* EE0174 802417B4 46800020 */  cvt.s.w   $f0, $f0
/* EE0178 802417B8 46000021 */  cvt.d.s   $f0, $f0
/* EE017C 802417BC 46260003 */  div.d     $f0, $f0, $f6
/* EE0180 802417C0 18400003 */  blez      $v0, .L802417D0
/* EE0184 802417C4 46200620 */   cvt.s.d  $f24, $f0
/* EE0188 802417C8 2462FFFF */  addiu     $v0, $v1, -1
/* EE018C 802417CC A602008E */  sh        $v0, 0x8e($s0)
.L802417D0:
/* EE0190 802417D0 27B40028 */  addiu     $s4, $sp, 0x28
/* EE0194 802417D4 0280282D */  daddu     $a1, $s4, $zero
/* EE0198 802417D8 27B5002C */  addiu     $s5, $sp, 0x2c
/* EE019C 802417DC 02A0302D */  daddu     $a2, $s5, $zero
/* EE01A0 802417E0 27B60030 */  addiu     $s6, $sp, 0x30
/* EE01A4 802417E4 02C0382D */  daddu     $a3, $s6, $zero
/* EE01A8 802417E8 C6000038 */  lwc1      $f0, 0x38($s0)
/* EE01AC 802417EC C602003C */  lwc1      $f2, 0x3c($s0)
/* EE01B0 802417F0 C6040040 */  lwc1      $f4, 0x40($s0)
/* EE01B4 802417F4 3C01447A */  lui       $at, 0x447a
/* EE01B8 802417F8 4481D000 */  mtc1      $at, $f26
/* EE01BC 802417FC 27B30034 */  addiu     $s3, $sp, 0x34
/* EE01C0 80241800 E7A00028 */  swc1      $f0, 0x28($sp)
/* EE01C4 80241804 E7A2002C */  swc1      $f2, 0x2c($sp)
/* EE01C8 80241808 E7A40030 */  swc1      $f4, 0x30($sp)
/* EE01CC 8024180C E7BA0034 */  swc1      $f26, 0x34($sp)
/* EE01D0 80241810 C6340070 */  lwc1      $f20, 0x70($s1)
/* EE01D4 80241814 4680A520 */  cvt.s.w   $f20, $f20
/* EE01D8 80241818 4600A521 */  cvt.d.s   $f20, $f20
/* EE01DC 8024181C 4626A503 */  div.d     $f20, $f20, $f6
/* EE01E0 80241820 AFB30010 */  sw        $s3, 0x10($sp)
/* EE01E4 80241824 8E040080 */  lw        $a0, 0x80($s0)
/* EE01E8 80241828 0C03908F */  jal       func_800E423C
/* EE01EC 8024182C 4620A520 */   cvt.s.d  $f20, $f20
/* EE01F0 80241830 C62C0074 */  lwc1      $f12, 0x74($s1)
/* EE01F4 80241834 0C00AD77 */  jal       func_8002B5DC
/* EE01F8 80241838 46806320 */   cvt.s.w  $f12, $f12
/* EE01FC 8024183C 46140002 */  mul.s     $f0, $f0, $f20
/* EE0200 80241840 00000000 */  nop
/* EE0204 80241844 C7A2002C */  lwc1      $f2, 0x2c($sp)
/* EE0208 80241848 46181080 */  add.s     $f2, $f2, $f24
/* EE020C 8024184C 46001080 */  add.s     $f2, $f2, $f0
/* EE0210 80241850 E602003C */  swc1      $f2, 0x3c($s0)
/* EE0214 80241854 8E220074 */  lw        $v0, 0x74($s1)
/* EE0218 80241858 2442000C */  addiu     $v0, $v0, 0xc
/* EE021C 8024185C 44826000 */  mtc1      $v0, $f12
/* EE0220 80241860 00000000 */  nop
/* EE0224 80241864 0C00AB85 */  jal       func_8002AE14
/* EE0228 80241868 46806320 */   cvt.s.w  $f12, $f12
/* EE022C 8024186C 4600020D */  trunc.w.s $f8, $f0
/* EE0230 80241870 E6280074 */  swc1      $f8, 0x74($s1)
/* EE0234 80241874 8EE30014 */  lw        $v1, 0x14($s7)
/* EE0238 80241878 0460003C */  bltz      $v1, .L8024196C
/* EE023C 8024187C 00000000 */   nop
/* EE0240 80241880 8E420074 */  lw        $v0, 0x74($s2)
/* EE0244 80241884 1C400038 */  bgtz      $v0, .L80241968
/* EE0248 80241888 2442FFFF */   addiu    $v0, $v0, -1
/* EE024C 8024188C 03C0202D */  daddu     $a0, $fp, $zero
/* EE0250 80241890 AE430074 */  sw        $v1, 0x74($s2)
/* EE0254 80241894 AFA00010 */  sw        $zero, 0x10($sp)
/* EE0258 80241898 8EE6000C */  lw        $a2, 0xc($s7)
/* EE025C 8024189C 8EE70010 */  lw        $a3, 0x10($s7)
/* EE0260 802418A0 0C013469 */  jal       func_8004D1A4
/* EE0264 802418A4 0220282D */   daddu    $a1, $s1, $zero
/* EE0268 802418A8 1040002D */  beqz      $v0, .L80241960
/* EE026C 802418AC 0000202D */   daddu    $a0, $zero, $zero
/* EE0270 802418B0 0200282D */  daddu     $a1, $s0, $zero
/* EE0274 802418B4 0000302D */  daddu     $a2, $zero, $zero
/* EE0278 802418B8 860300A8 */  lh        $v1, 0xa8($s0)
/* EE027C 802418BC 3C013F80 */  lui       $at, 0x3f80
/* EE0280 802418C0 44810000 */  mtc1      $at, $f0
/* EE0284 802418C4 3C014000 */  lui       $at, 0x4000
/* EE0288 802418C8 44811000 */  mtc1      $at, $f2
/* EE028C 802418CC 3C01C1A0 */  lui       $at, 0xc1a0
/* EE0290 802418D0 44812000 */  mtc1      $at, $f4
/* EE0294 802418D4 2402000F */  addiu     $v0, $zero, 0xf
/* EE0298 802418D8 AFA2001C */  sw        $v0, 0x1c($sp)
/* EE029C 802418DC 44834000 */  mtc1      $v1, $f8
/* EE02A0 802418E0 00000000 */  nop
/* EE02A4 802418E4 46804220 */  cvt.s.w   $f8, $f8
/* EE02A8 802418E8 44074000 */  mfc1      $a3, $f8
/* EE02AC 802418EC 27A20038 */  addiu     $v0, $sp, 0x38
/* EE02B0 802418F0 AFA20020 */  sw        $v0, 0x20($sp)
/* EE02B4 802418F4 E7A00010 */  swc1      $f0, 0x10($sp)
/* EE02B8 802418F8 E7A20014 */  swc1      $f2, 0x14($sp)
/* EE02BC 802418FC 0C01D444 */  jal       func_80075110
/* EE02C0 80241900 E7A40018 */   swc1     $f4, 0x18($sp)
/* EE02C4 80241904 0200202D */  daddu     $a0, $s0, $zero
/* EE02C8 80241908 240502F4 */  addiu     $a1, $zero, 0x2f4
/* EE02CC 8024190C 0C013600 */  jal       func_8004D800
/* EE02D0 80241910 3C060020 */   lui      $a2, 0x20
/* EE02D4 80241914 0280282D */  daddu     $a1, $s4, $zero
/* EE02D8 80241918 C6000038 */  lwc1      $f0, 0x38($s0)
/* EE02DC 8024191C C602003C */  lwc1      $f2, 0x3c($s0)
/* EE02E0 80241920 C6040040 */  lwc1      $f4, 0x40($s0)
/* EE02E4 80241924 02A0302D */  daddu     $a2, $s5, $zero
/* EE02E8 80241928 E7BA0034 */  swc1      $f26, 0x34($sp)
/* EE02EC 8024192C E7A00028 */  swc1      $f0, 0x28($sp)
/* EE02F0 80241930 E7A2002C */  swc1      $f2, 0x2c($sp)
/* EE02F4 80241934 E7A40030 */  swc1      $f4, 0x30($sp)
/* EE02F8 80241938 AFB30010 */  sw        $s3, 0x10($sp)
/* EE02FC 8024193C 8E040080 */  lw        $a0, 0x80($s0)
/* EE0300 80241940 0C03908F */  jal       func_800E423C
/* EE0304 80241944 02C0382D */   daddu    $a3, $s6, $zero
/* EE0308 80241948 C7A0002C */  lwc1      $f0, 0x2c($sp)
/* EE030C 8024194C 46180000 */  add.s     $f0, $f0, $f24
/* EE0310 80241950 2402000C */  addiu     $v0, $zero, 0xc
/* EE0314 80241954 E6000064 */  swc1      $f0, 0x64($s0)
/* EE0318 80241958 080906D5 */  j         .L80241B54
/* EE031C 8024195C AE420070 */   sw       $v0, 0x70($s2)
.L80241960:
/* EE0320 80241960 8E420074 */  lw        $v0, 0x74($s2)
/* EE0324 80241964 2442FFFF */  addiu     $v0, $v0, -1
.L80241968:
/* EE0328 80241968 AE420074 */  sw        $v0, 0x74($s2)
.L8024196C:
/* EE032C 8024196C 8E2300D0 */  lw        $v1, 0xd0($s1)
/* EE0330 80241970 C6000040 */  lwc1      $f0, 0x40($s0)
/* EE0334 80241974 C4620000 */  lwc1      $f2, ($v1)
/* EE0338 80241978 468010A0 */  cvt.s.w   $f2, $f2
/* EE033C 8024197C C4640008 */  lwc1      $f4, 8($v1)
/* EE0340 80241980 46802120 */  cvt.s.w   $f4, $f4
/* EE0344 80241984 E7A00010 */  swc1      $f0, 0x10($sp)
/* EE0348 80241988 8E2200D0 */  lw        $v0, 0xd0($s1)
/* EE034C 8024198C 44051000 */  mfc1      $a1, $f2
/* EE0350 80241990 C440000C */  lwc1      $f0, 0xc($v0)
/* EE0354 80241994 46800020 */  cvt.s.w   $f0, $f0
/* EE0358 80241998 E7A00014 */  swc1      $f0, 0x14($sp)
/* EE035C 8024199C 8E2200D0 */  lw        $v0, 0xd0($s1)
/* EE0360 802419A0 44062000 */  mfc1      $a2, $f4
/* EE0364 802419A4 C4400010 */  lwc1      $f0, 0x10($v0)
/* EE0368 802419A8 46800020 */  cvt.s.w   $f0, $f0
/* EE036C 802419AC E7A00018 */  swc1      $f0, 0x18($sp)
/* EE0370 802419B0 8C640018 */  lw        $a0, 0x18($v1)
/* EE0374 802419B4 0C013431 */  jal       func_8004D0C4
/* EE0378 802419B8 8E070038 */   lw       $a3, 0x38($s0)
/* EE037C 802419BC 1040000D */  beqz      $v0, .L802419F4
/* EE0380 802419C0 00000000 */   nop
/* EE0384 802419C4 8E2200D0 */  lw        $v0, 0xd0($s1)
/* EE0388 802419C8 C60C0038 */  lwc1      $f12, 0x38($s0)
/* EE038C 802419CC C60E0040 */  lwc1      $f14, 0x40($s0)
/* EE0390 802419D0 C4480000 */  lwc1      $f8, ($v0)
/* EE0394 802419D4 46804220 */  cvt.s.w   $f8, $f8
/* EE0398 802419D8 44064000 */  mfc1      $a2, $f8
/* EE039C 802419DC C4480008 */  lwc1      $f8, 8($v0)
/* EE03A0 802419E0 46804220 */  cvt.s.w   $f8, $f8
/* EE03A4 802419E4 44074000 */  mfc1      $a3, $f8
/* EE03A8 802419E8 0C00ABDC */  jal       fio_validate_header_checksums
/* EE03AC 802419EC 00000000 */   nop
/* EE03B0 802419F0 E600000C */  swc1      $f0, 0xc($s0)
.L802419F4:
/* EE03B4 802419F4 8602008C */  lh        $v0, 0x8c($s0)
/* EE03B8 802419F8 14400056 */  bnez      $v0, .L80241B54
/* EE03BC 802419FC 00000000 */   nop
/* EE03C0 80241A00 8602008E */  lh        $v0, 0x8e($s0)
/* EE03C4 80241A04 1840003D */  blez      $v0, .L80241AFC
/* EE03C8 80241A08 240403E8 */   addiu    $a0, $zero, 0x3e8
/* EE03CC 80241A0C 8E050018 */  lw        $a1, 0x18($s0)
/* EE03D0 80241A10 8E06000C */  lw        $a2, 0xc($s0)
/* EE03D4 80241A14 0C00F909 */  jal       func_8003E424
/* EE03D8 80241A18 0200202D */   daddu    $a0, $s0, $zero
/* EE03DC 80241A1C 8E22006C */  lw        $v0, 0x6c($s1)
/* EE03E0 80241A20 30420001 */  andi      $v0, $v0, 1
/* EE03E4 80241A24 10400032 */  beqz      $v0, .L80241AF0
/* EE03E8 80241A28 27A50028 */   addiu    $a1, $sp, 0x28
/* EE03EC 80241A2C 27A6002C */  addiu     $a2, $sp, 0x2c
/* EE03F0 80241A30 C6000038 */  lwc1      $f0, 0x38($s0)
/* EE03F4 80241A34 C6020040 */  lwc1      $f2, 0x40($s0)
/* EE03F8 80241A38 3C01447A */  lui       $at, 0x447a
/* EE03FC 80241A3C 44812000 */  mtc1      $at, $f4
/* EE0400 80241A40 27A20034 */  addiu     $v0, $sp, 0x34
/* EE0404 80241A44 E7B6002C */  swc1      $f22, 0x2c($sp)
/* EE0408 80241A48 E7A00028 */  swc1      $f0, 0x28($sp)
/* EE040C 80241A4C E7A20030 */  swc1      $f2, 0x30($sp)
/* EE0410 80241A50 E7A40034 */  swc1      $f4, 0x34($sp)
/* EE0414 80241A54 AFA20010 */  sw        $v0, 0x10($sp)
/* EE0418 80241A58 8E040080 */  lw        $a0, 0x80($s0)
/* EE041C 80241A5C 0C03908F */  jal       func_800E423C
/* EE0420 80241A60 27A70030 */   addiu    $a3, $sp, 0x30
/* EE0424 80241A64 C7A0002C */  lwc1      $f0, 0x2c($sp)
/* EE0428 80241A68 46180100 */  add.s     $f4, $f0, $f24
/* EE042C 80241A6C 3C014000 */  lui       $at, 0x4000
/* EE0430 80241A70 44813800 */  mtc1      $at, $f7
/* EE0434 80241A74 44803000 */  mtc1      $zero, $f6
/* EE0438 80241A78 46162001 */  sub.s     $f0, $f4, $f22
/* EE043C 80241A7C E7A4002C */  swc1      $f4, 0x2c($sp)
/* EE0440 80241A80 460000A1 */  cvt.d.s   $f2, $f0
/* EE0444 80241A84 4622303C */  c.lt.d    $f6, $f2
/* EE0448 80241A88 00000000 */  nop
/* EE044C 80241A8C 45000005 */  bc1f      .L80241AA4
/* EE0450 80241A90 E7A00034 */   swc1     $f0, 0x34($sp)
/* EE0454 80241A94 4600B021 */  cvt.d.s   $f0, $f22
/* EE0458 80241A98 46260000 */  add.d     $f0, $f0, $f6
/* EE045C 80241A9C 080906B4 */  j         .L80241AD0
/* EE0460 80241AA0 462005A0 */   cvt.s.d  $f22, $f0
.L80241AA4:
/* EE0464 80241AA4 3C01C000 */  lui       $at, 0xc000
/* EE0468 80241AA8 44810800 */  mtc1      $at, $f1
/* EE046C 80241AAC 44800000 */  mtc1      $zero, $f0
/* EE0470 80241AB0 00000000 */  nop
/* EE0474 80241AB4 4620103C */  c.lt.d    $f2, $f0
/* EE0478 80241AB8 00000000 */  nop
/* EE047C 80241ABC 45020004 */  bc1fl     .L80241AD0
/* EE0480 80241AC0 46002586 */   mov.s    $f22, $f4
/* EE0484 80241AC4 4600B021 */  cvt.d.s   $f0, $f22
/* EE0488 80241AC8 46260001 */  sub.d     $f0, $f0, $f6
/* EE048C 80241ACC 462005A0 */  cvt.s.d   $f22, $f0
.L80241AD0:
/* EE0490 80241AD0 3C014059 */  lui       $at, 0x4059
/* EE0494 80241AD4 44811800 */  mtc1      $at, $f3
/* EE0498 80241AD8 44801000 */  mtc1      $zero, $f2
/* EE049C 80241ADC 4600B021 */  cvt.d.s   $f0, $f22
/* EE04A0 80241AE0 46220002 */  mul.d     $f0, $f0, $f2
/* EE04A4 80241AE4 00000000 */  nop
/* EE04A8 80241AE8 4620020D */  trunc.w.d $f8, $f0
/* EE04AC 80241AEC E628007C */  swc1      $f8, 0x7c($s1)
.L80241AF0:
/* EE04B0 80241AF0 8602008E */  lh        $v0, 0x8e($s0)
/* EE04B4 80241AF4 1C400017 */  bgtz      $v0, .L80241B54
/* EE04B8 80241AF8 240403E8 */   addiu    $a0, $zero, 0x3e8
.L80241AFC:
/* EE04BC 80241AFC 24020002 */  addiu     $v0, $zero, 2
/* EE04C0 80241B00 0C00AB3B */  jal       func_8002ACEC
/* EE04C4 80241B04 AE420070 */   sw       $v0, 0x70($s2)
/* EE04C8 80241B08 3C035555 */  lui       $v1, 0x5555
/* EE04CC 80241B0C 34635556 */  ori       $v1, $v1, 0x5556
/* EE04D0 80241B10 00430018 */  mult      $v0, $v1
/* EE04D4 80241B14 000227C3 */  sra       $a0, $v0, 0x1f
/* EE04D8 80241B18 00004010 */  mfhi      $t0
/* EE04DC 80241B1C 01042023 */  subu      $a0, $t0, $a0
/* EE04E0 80241B20 00041840 */  sll       $v1, $a0, 1
/* EE04E4 80241B24 00641821 */  addu      $v1, $v1, $a0
/* EE04E8 80241B28 00431023 */  subu      $v0, $v0, $v1
/* EE04EC 80241B2C 24430002 */  addiu     $v1, $v0, 2
/* EE04F0 80241B30 AE430074 */  sw        $v1, 0x74($s2)
/* EE04F4 80241B34 8EE2002C */  lw        $v0, 0x2c($s7)
/* EE04F8 80241B38 58400006 */  blezl     $v0, .L80241B54
/* EE04FC 80241B3C AE400070 */   sw       $zero, 0x70($s2)
/* EE0500 80241B40 8EE20004 */  lw        $v0, 4($s7)
/* EE0504 80241B44 58400003 */  blezl     $v0, .L80241B54
/* EE0508 80241B48 AE400070 */   sw       $zero, 0x70($s2)
/* EE050C 80241B4C 50600001 */  beql      $v1, $zero, .L80241B54
/* EE0510 80241B50 AE400070 */   sw       $zero, 0x70($s2)
.L80241B54:
/* EE0514 80241B54 8FBF0064 */  lw        $ra, 0x64($sp)
/* EE0518 80241B58 8FBE0060 */  lw        $fp, 0x60($sp)
/* EE051C 80241B5C 8FB7005C */  lw        $s7, 0x5c($sp)
/* EE0520 80241B60 8FB60058 */  lw        $s6, 0x58($sp)
/* EE0524 80241B64 8FB50054 */  lw        $s5, 0x54($sp)
/* EE0528 80241B68 8FB40050 */  lw        $s4, 0x50($sp)
/* EE052C 80241B6C 8FB3004C */  lw        $s3, 0x4c($sp)
/* EE0530 80241B70 8FB20048 */  lw        $s2, 0x48($sp)
/* EE0534 80241B74 8FB10044 */  lw        $s1, 0x44($sp)
/* EE0538 80241B78 8FB00040 */  lw        $s0, 0x40($sp)
/* EE053C 80241B7C D7BA0080 */  ldc1      $f26, 0x80($sp)
/* EE0540 80241B80 D7B80078 */  ldc1      $f24, 0x78($sp)
/* EE0544 80241B84 D7B60070 */  ldc1      $f22, 0x70($sp)
/* EE0548 80241B88 D7B40068 */  ldc1      $f20, 0x68($sp)
/* EE054C 80241B8C 03E00008 */  jr        $ra
/* EE0550 80241B90 27BD0088 */   addiu    $sp, $sp, 0x88
