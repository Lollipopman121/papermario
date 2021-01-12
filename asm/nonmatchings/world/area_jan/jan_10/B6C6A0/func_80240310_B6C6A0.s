.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240310_B6C6A0
/* B6C6A0 80240310 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* B6C6A4 80240314 AFB00030 */  sw        $s0, 0x30($sp)
/* B6C6A8 80240318 0080802D */  daddu     $s0, $a0, $zero
/* B6C6AC 8024031C AFBF0040 */  sw        $ra, 0x40($sp)
/* B6C6B0 80240320 AFB3003C */  sw        $s3, 0x3c($sp)
/* B6C6B4 80240324 AFB20038 */  sw        $s2, 0x38($sp)
/* B6C6B8 80240328 AFB10034 */  sw        $s1, 0x34($sp)
/* B6C6BC 8024032C F7B60050 */  sdc1      $f22, 0x50($sp)
/* B6C6C0 80240330 F7B40048 */  sdc1      $f20, 0x48($sp)
/* B6C6C4 80240334 8E130148 */  lw        $s3, 0x148($s0)
/* B6C6C8 80240338 00A0882D */  daddu     $s1, $a1, $zero
/* B6C6CC 8024033C 86640008 */  lh        $a0, 8($s3)
/* B6C6D0 80240340 0C00EABB */  jal       get_npc_unsafe
/* B6C6D4 80240344 00C0902D */   daddu    $s2, $a2, $zero
/* B6C6D8 80240348 0200202D */  daddu     $a0, $s0, $zero
/* B6C6DC 8024034C 0220282D */  daddu     $a1, $s1, $zero
/* B6C6E0 80240350 0240302D */  daddu     $a2, $s2, $zero
/* B6C6E4 80240354 0C012568 */  jal       func_800495A0
/* B6C6E8 80240358 0040802D */   daddu    $s0, $v0, $zero
/* B6C6EC 8024035C 8E020000 */  lw        $v0, ($s0)
/* B6C6F0 80240360 2404002D */  addiu     $a0, $zero, 0x2d
/* B6C6F4 80240364 34420800 */  ori       $v0, $v0, 0x800
/* B6C6F8 80240368 0C00A67F */  jal       rand_int
/* B6C6FC 8024036C AE020000 */   sw       $v0, ($s0)
/* B6C700 80240370 0200202D */  daddu     $a0, $s0, $zero
/* B6C704 80240374 3C05B000 */  lui       $a1, 0xb000
/* B6C708 80240378 34A50017 */  ori       $a1, $a1, 0x17
/* B6C70C 8024037C 44820000 */  mtc1      $v0, $f0
/* B6C710 80240380 00000000 */  nop
/* B6C714 80240384 46800021 */  cvt.d.w   $f0, $f0
/* B6C718 80240388 3C014024 */  lui       $at, 0x4024
/* B6C71C 8024038C 44811800 */  mtc1      $at, $f3
/* B6C720 80240390 44801000 */  mtc1      $zero, $f2
/* B6C724 80240394 3C014020 */  lui       $at, 0x4020
/* B6C728 80240398 44812800 */  mtc1      $at, $f5
/* B6C72C 8024039C 44802000 */  mtc1      $zero, $f4
/* B6C730 802403A0 46220003 */  div.d     $f0, $f0, $f2
/* B6C734 802403A4 46240000 */  add.d     $f0, $f0, $f4
/* B6C738 802403A8 3C013FC0 */  lui       $at, 0x3fc0
/* B6C73C 802403AC 44811000 */  mtc1      $at, $f2
/* B6C740 802403B0 0000302D */  daddu     $a2, $zero, $zero
/* B6C744 802403B4 E6020014 */  swc1      $f2, 0x14($s0)
/* B6C748 802403B8 46200020 */  cvt.s.d   $f0, $f0
/* B6C74C 802403BC 0C012530 */  jal       func_800494C0
/* B6C750 802403C0 E600001C */   swc1     $f0, 0x1c($s0)
/* B6C754 802403C4 8E6300D0 */  lw        $v1, 0xd0($s3)
/* B6C758 802403C8 C6000040 */  lwc1      $f0, 0x40($s0)
/* B6C75C 802403CC C4620000 */  lwc1      $f2, ($v1)
/* B6C760 802403D0 468010A0 */  cvt.s.w   $f2, $f2
/* B6C764 802403D4 C4640008 */  lwc1      $f4, 8($v1)
/* B6C768 802403D8 46802120 */  cvt.s.w   $f4, $f4
/* B6C76C 802403DC E7A00010 */  swc1      $f0, 0x10($sp)
/* B6C770 802403E0 8E6200D0 */  lw        $v0, 0xd0($s3)
/* B6C774 802403E4 44051000 */  mfc1      $a1, $f2
/* B6C778 802403E8 C440000C */  lwc1      $f0, 0xc($v0)
/* B6C77C 802403EC 46800020 */  cvt.s.w   $f0, $f0
/* B6C780 802403F0 E7A00014 */  swc1      $f0, 0x14($sp)
/* B6C784 802403F4 8E6200D0 */  lw        $v0, 0xd0($s3)
/* B6C788 802403F8 44062000 */  mfc1      $a2, $f4
/* B6C78C 802403FC C4400010 */  lwc1      $f0, 0x10($v0)
/* B6C790 80240400 46800020 */  cvt.s.w   $f0, $f0
/* B6C794 80240404 E7A00018 */  swc1      $f0, 0x18($sp)
/* B6C798 80240408 8C640018 */  lw        $a0, 0x18($v1)
/* B6C79C 8024040C 0C0123F5 */  jal       is_point_within_region
/* B6C7A0 80240410 8E070038 */   lw       $a3, 0x38($s0)
/* B6C7A4 80240414 10400035 */  beqz      $v0, .L802404EC
/* B6C7A8 80240418 00000000 */   nop
/* B6C7AC 8024041C C60C0038 */  lwc1      $f12, 0x38($s0)
/* B6C7B0 80240420 3C0141C8 */  lui       $at, 0x41c8
/* B6C7B4 80240424 4481B000 */  mtc1      $at, $f22
/* B6C7B8 80240428 8E6200D0 */  lw        $v0, 0xd0($s3)
/* B6C7BC 8024042C C60E0040 */  lwc1      $f14, 0x40($s0)
/* B6C7C0 80240430 C4480000 */  lwc1      $f8, ($v0)
/* B6C7C4 80240434 46804220 */  cvt.s.w   $f8, $f8
/* B6C7C8 80240438 44064000 */  mfc1      $a2, $f8
/* B6C7CC 8024043C C4480008 */  lwc1      $f8, 8($v0)
/* B6C7D0 80240440 46804220 */  cvt.s.w   $f8, $f8
/* B6C7D4 80240444 44074000 */  mfc1      $a3, $f8
/* B6C7D8 80240448 3C01403E */  lui       $at, 0x403e
/* B6C7DC 8024044C 4481A800 */  mtc1      $at, $f21
/* B6C7E0 80240450 4480A000 */  mtc1      $zero, $f20
/* B6C7E4 80240454 0C00A720 */  jal       atan2
/* B6C7E8 80240458 0000882D */   daddu    $s1, $zero, $zero
/* B6C7EC 8024045C C6020038 */  lwc1      $f2, 0x38($s0)
/* B6C7F0 80240460 C604003C */  lwc1      $f4, 0x3c($s0)
/* B6C7F4 80240464 C6060040 */  lwc1      $f6, 0x40($s0)
/* B6C7F8 80240468 E600000C */  swc1      $f0, 0xc($s0)
/* B6C7FC 8024046C E7A20020 */  swc1      $f2, 0x20($sp)
/* B6C800 80240470 E7A40024 */  swc1      $f4, 0x24($sp)
/* B6C804 80240474 E7A60028 */  swc1      $f6, 0x28($sp)
.L80240478:
/* B6C808 80240478 E7B60010 */  swc1      $f22, 0x10($sp)
/* B6C80C 8024047C C600000C */  lwc1      $f0, 0xc($s0)
/* B6C810 80240480 E7A00014 */  swc1      $f0, 0x14($sp)
/* B6C814 80240484 860200A8 */  lh        $v0, 0xa8($s0)
/* B6C818 80240488 27A50020 */  addiu     $a1, $sp, 0x20
/* B6C81C 8024048C 44820000 */  mtc1      $v0, $f0
/* B6C820 80240490 00000000 */  nop
/* B6C824 80240494 46800020 */  cvt.s.w   $f0, $f0
/* B6C828 80240498 E7A00018 */  swc1      $f0, 0x18($sp)
/* B6C82C 8024049C 860200A6 */  lh        $v0, 0xa6($s0)
/* B6C830 802404A0 27A60024 */  addiu     $a2, $sp, 0x24
/* B6C834 802404A4 44820000 */  mtc1      $v0, $f0
/* B6C838 802404A8 00000000 */  nop
/* B6C83C 802404AC 46800020 */  cvt.s.w   $f0, $f0
/* B6C840 802404B0 E7A0001C */  swc1      $f0, 0x1c($sp)
/* B6C844 802404B4 8E040080 */  lw        $a0, 0x80($s0)
/* B6C848 802404B8 0C037711 */  jal       func_800DDC44
/* B6C84C 802404BC 27A70028 */   addiu    $a3, $sp, 0x28
/* B6C850 802404C0 10400016 */  beqz      $v0, .L8024051C
/* B6C854 802404C4 26310001 */   addiu    $s1, $s1, 1
/* B6C858 802404C8 C600000C */  lwc1      $f0, 0xc($s0)
/* B6C85C 802404CC 46000021 */  cvt.d.s   $f0, $f0
/* B6C860 802404D0 46340000 */  add.d     $f0, $f0, $f20
/* B6C864 802404D4 2A220006 */  slti      $v0, $s1, 6
/* B6C868 802404D8 46200020 */  cvt.s.d   $f0, $f0
/* B6C86C 802404DC 1440FFE6 */  bnez      $v0, .L80240478
/* B6C870 802404E0 E600000C */   swc1     $f0, 0xc($s0)
/* B6C874 802404E4 08090147 */  j         .L8024051C
/* B6C878 802404E8 00000000 */   nop
.L802404EC:
/* B6C87C 802404EC 0C00A67F */  jal       rand_int
/* B6C880 802404F0 2404003C */   addiu    $a0, $zero, 0x3c
/* B6C884 802404F4 C60C000C */  lwc1      $f12, 0xc($s0)
/* B6C888 802404F8 44820000 */  mtc1      $v0, $f0
/* B6C88C 802404FC 00000000 */  nop
/* B6C890 80240500 46800020 */  cvt.s.w   $f0, $f0
/* B6C894 80240504 46006300 */  add.s     $f12, $f12, $f0
/* B6C898 80240508 3C0141F0 */  lui       $at, 0x41f0
/* B6C89C 8024050C 44810000 */  mtc1      $at, $f0
/* B6C8A0 80240510 0C00A6C9 */  jal       clamp_angle
/* B6C8A4 80240514 46006301 */   sub.s    $f12, $f12, $f0
/* B6C8A8 80240518 E600000C */  swc1      $f0, 0xc($s0)
.L8024051C:
/* B6C8AC 8024051C 8FBF0040 */  lw        $ra, 0x40($sp)
/* B6C8B0 80240520 8FB3003C */  lw        $s3, 0x3c($sp)
/* B6C8B4 80240524 8FB20038 */  lw        $s2, 0x38($sp)
/* B6C8B8 80240528 8FB10034 */  lw        $s1, 0x34($sp)
/* B6C8BC 8024052C 8FB00030 */  lw        $s0, 0x30($sp)
/* B6C8C0 80240530 D7B60050 */  ldc1      $f22, 0x50($sp)
/* B6C8C4 80240534 D7B40048 */  ldc1      $f20, 0x48($sp)
/* B6C8C8 80240538 03E00008 */  jr        $ra
/* B6C8CC 8024053C 27BD0058 */   addiu    $sp, $sp, 0x58
