.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800431DC
/* 1E5DC 800431DC 27BDFF58 */  addiu     $sp, $sp, -0xa8
/* 1E5E0 800431E0 3C03FDFF */  lui       $v1, 0xfdff
/* 1E5E4 800431E4 AFB40060 */  sw        $s4, 0x60($sp)
/* 1E5E8 800431E8 3C148011 */  lui       $s4, %hi(gPlayerStatus)
/* 1E5EC 800431EC 2694EFC8 */  addiu     $s4, $s4, %lo(gPlayerStatus)
/* 1E5F0 800431F0 AFBF0074 */  sw        $ra, 0x74($sp)
/* 1E5F4 800431F4 AFBE0070 */  sw        $fp, 0x70($sp)
/* 1E5F8 800431F8 AFB7006C */  sw        $s7, 0x6c($sp)
/* 1E5FC 800431FC AFB60068 */  sw        $s6, 0x68($sp)
/* 1E600 80043200 AFB50064 */  sw        $s5, 0x64($sp)
/* 1E604 80043204 AFB3005C */  sw        $s3, 0x5c($sp)
/* 1E608 80043208 AFB20058 */  sw        $s2, 0x58($sp)
/* 1E60C 8004320C AFB10054 */  sw        $s1, 0x54($sp)
/* 1E610 80043210 AFB00050 */  sw        $s0, 0x50($sp)
/* 1E614 80043214 F7BE00A0 */  sdc1      $f30, 0xa0($sp)
/* 1E618 80043218 F7BC0098 */  sdc1      $f28, 0x98($sp)
/* 1E61C 8004321C F7BA0090 */  sdc1      $f26, 0x90($sp)
/* 1E620 80043220 F7B80088 */  sdc1      $f24, 0x88($sp)
/* 1E624 80043224 F7B60080 */  sdc1      $f22, 0x80($sp)
/* 1E628 80043228 F7B40078 */  sdc1      $f20, 0x78($sp)
/* 1E62C 8004322C 8E820000 */  lw        $v0, ($s4)
/* 1E630 80043230 3463FFFF */  ori       $v1, $v1, 0xffff
/* 1E634 80043234 00431024 */  and       $v0, $v0, $v1
/* 1E638 80043238 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* 1E63C 8004323C 8C637410 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* 1E640 80043240 3C04800B */  lui       $a0, %hi(gCameras)
/* 1E644 80043244 24841D80 */  addiu     $a0, $a0, %lo(gCameras)
/* 1E648 80043248 AE8000C8 */  sw        $zero, 0xc8($s4)
/* 1E64C 8004324C AE820000 */  sw        $v0, ($s4)
/* 1E650 80043250 00031080 */  sll       $v0, $v1, 2
/* 1E654 80043254 00431021 */  addu      $v0, $v0, $v1
/* 1E658 80043258 00021080 */  sll       $v0, $v0, 2
/* 1E65C 8004325C 00431023 */  subu      $v0, $v0, $v1
/* 1E660 80043260 000218C0 */  sll       $v1, $v0, 3
/* 1E664 80043264 00431021 */  addu      $v0, $v0, $v1
/* 1E668 80043268 000210C0 */  sll       $v0, $v0, 3
/* 1E66C 8004326C 0044B821 */  addu      $s7, $v0, $a0
/* 1E670 80043270 868200B0 */  lh        $v0, 0xb0($s4)
/* 1E674 80043274 968300B2 */  lhu       $v1, 0xb2($s4)
/* 1E678 80043278 44823000 */  mtc1      $v0, $f6
/* 1E67C 8004327C 00000000 */  nop
/* 1E680 80043280 468031A0 */  cvt.s.w   $f6, $f6
/* 1E684 80043284 00031C00 */  sll       $v1, $v1, 0x10
/* 1E688 80043288 00031403 */  sra       $v0, $v1, 0x10
/* 1E68C 8004328C 00031FC2 */  srl       $v1, $v1, 0x1f
/* 1E690 80043290 00431021 */  addu      $v0, $v0, $v1
/* 1E694 80043294 00021043 */  sra       $v0, $v0, 1
/* 1E698 80043298 44824000 */  mtc1      $v0, $f8
/* 1E69C 8004329C 00000000 */  nop
/* 1E6A0 800432A0 46804220 */  cvt.s.w   $f8, $f8
/* 1E6A4 800432A4 E7A6003C */  swc1      $f6, 0x3c($sp)
/* 1E6A8 800432A8 E7A80040 */  swc1      $f8, 0x40($sp)
/* 1E6AC 800432AC C6860028 */  lwc1      $f6, 0x28($s4)
/* 1E6B0 800432B0 3C028011 */  lui       $v0, %hi(D_8010EBB0)
/* 1E6B4 800432B4 8042EBB0 */  lb        $v0, %lo(D_8010EBB0)($v0)
/* 1E6B8 800432B8 E7A60030 */  swc1      $f6, 0x30($sp)
/* 1E6BC 800432BC C688002C */  lwc1      $f8, 0x2c($s4)
/* 1E6C0 800432C0 E7A80034 */  swc1      $f8, 0x34($sp)
/* 1E6C4 800432C4 C6860030 */  lwc1      $f6, 0x30($s4)
/* 1E6C8 800432C8 144000E6 */  bnez      $v0, .L80043664
/* 1E6CC 800432CC E7A60038 */   swc1     $f6, 0x38($sp)
/* 1E6D0 800432D0 0000F02D */  daddu     $fp, $zero, $zero
/* 1E6D4 800432D4 03C0A82D */  daddu     $s5, $fp, $zero
/* 1E6D8 800432D8 3C02800B */  lui       $v0, %hi(gCurrentEncounter+0x1C)
/* 1E6DC 800432DC 80420F2C */  lb        $v0, %lo(gCurrentEncounter+0x1C)($v0)
/* 1E6E0 800432E0 3C01477F */  lui       $at, 0x477f
/* 1E6E4 800432E4 3421FF00 */  ori       $at, $at, 0xff00
/* 1E6E8 800432E8 44814000 */  mtc1      $at, $f8
/* 1E6EC 800432EC 03C0B02D */  daddu     $s6, $fp, $zero
/* 1E6F0 800432F0 AFA0002C */  sw        $zero, 0x2c($sp)
/* 1E6F4 800432F4 184000B8 */  blez      $v0, .L800435D8
/* 1E6F8 800432F8 E7A80048 */   swc1     $f8, 0x48($sp)
/* 1E6FC 800432FC 00151080 */  sll       $v0, $s5, 2
.L80043300:
/* 1E700 80043300 3C08800B */  lui       $t0, %hi(gCurrentEncounter)
/* 1E704 80043304 25080F10 */  addiu     $t0, $t0, %lo(gCurrentEncounter)
/* 1E708 80043308 01021021 */  addu      $v0, $t0, $v0
/* 1E70C 8004330C 8C530028 */  lw        $s3, 0x28($v0)
/* 1E710 80043310 126000AB */  beqz      $s3, .L800435C0
/* 1E714 80043314 00000000 */   nop
/* 1E718 80043318 8E620000 */  lw        $v0, ($s3)
/* 1E71C 8004331C 184000A8 */  blez      $v0, .L800435C0
/* 1E720 80043320 0000902D */   daddu    $s2, $zero, $zero
/* 1E724 80043324 00121080 */  sll       $v0, $s2, 2
.L80043328:
/* 1E728 80043328 02621021 */  addu      $v0, $s3, $v0
/* 1E72C 8004332C 8C510004 */  lw        $s1, 4($v0)
/* 1E730 80043330 1220009E */  beqz      $s1, .L800435AC
/* 1E734 80043334 3C028000 */   lui      $v0, 0x8000
/* 1E738 80043338 8E230000 */  lw        $v1, ($s1)
/* 1E73C 8004333C 34420020 */  ori       $v0, $v0, 0x20
/* 1E740 80043340 00621024 */  and       $v0, $v1, $v0
/* 1E744 80043344 14400099 */  bnez      $v0, .L800435AC
/* 1E748 80043348 30620001 */   andi     $v0, $v1, 1
/* 1E74C 8004334C 10400097 */  beqz      $v0, .L800435AC
/* 1E750 80043350 3C020800 */   lui      $v0, 0x800
/* 1E754 80043354 00621024 */  and       $v0, $v1, $v0
/* 1E758 80043358 14400094 */  bnez      $v0, .L800435AC
/* 1E75C 8004335C 00000000 */   nop
/* 1E760 80043360 8E220020 */  lw        $v0, 0x20($s1)
/* 1E764 80043364 10400091 */  beqz      $v0, .L800435AC
/* 1E768 80043368 00000000 */   nop
/* 1E76C 8004336C 0C00EABB */  jal       get_npc_unsafe
/* 1E770 80043370 86240008 */   lh       $a0, 8($s1)
/* 1E774 80043374 0040802D */  daddu     $s0, $v0, $zero
/* 1E778 80043378 C45A0038 */  lwc1      $f26, 0x38($v0)
/* 1E77C 8004337C C7A60030 */  lwc1      $f6, 0x30($sp)
/* 1E780 80043380 4606D081 */  sub.s     $f2, $f26, $f6
/* 1E784 80043384 46021082 */  mul.s     $f2, $f2, $f2
/* 1E788 80043388 00000000 */  nop
/* 1E78C 8004338C C61C0040 */  lwc1      $f28, 0x40($s0)
/* 1E790 80043390 C7A80038 */  lwc1      $f8, 0x38($sp)
/* 1E794 80043394 4608E001 */  sub.s     $f0, $f28, $f8
/* 1E798 80043398 46000002 */  mul.s     $f0, $f0, $f0
/* 1E79C 8004339C 00000000 */  nop
/* 1E7A0 800433A0 860200A8 */  lh        $v0, 0xa8($s0)
/* 1E7A4 800433A4 860300A6 */  lh        $v1, 0xa6($s0)
/* 1E7A8 800433A8 44823000 */  mtc1      $v0, $f6
/* 1E7AC 800433AC 00000000 */  nop
/* 1E7B0 800433B0 468031A0 */  cvt.s.w   $f6, $f6
/* 1E7B4 800433B4 4483F000 */  mtc1      $v1, $f30
/* 1E7B8 800433B8 00000000 */  nop
/* 1E7BC 800433BC 4680F7A0 */  cvt.s.w   $f30, $f30
/* 1E7C0 800433C0 46001300 */  add.s     $f12, $f2, $f0
/* 1E7C4 800433C4 E7A60044 */  swc1      $f6, 0x44($sp)
/* 1E7C8 800433C8 C618003C */  lwc1      $f24, 0x3c($s0)
/* 1E7CC 800433CC 46006104 */  sqrt.s    $f4, $f12
/* 1E7D0 800433D0 46042032 */  c.eq.s    $f4, $f4
/* 1E7D4 800433D4 00000000 */  nop
/* 1E7D8 800433D8 45010004 */  bc1t      .L800433EC
/* 1E7DC 800433DC 00000000 */   nop
/* 1E7E0 800433E0 0C0187BC */  jal       sqrtf
/* 1E7E4 800433E4 00000000 */   nop
/* 1E7E8 800433E8 46000106 */  mov.s     $f4, $f0
.L800433EC:
/* 1E7EC 800433EC C7A80040 */  lwc1      $f8, 0x40($sp)
/* 1E7F0 800433F0 461E4000 */  add.s     $f0, $f8, $f30
/* 1E7F4 800433F4 46002586 */  mov.s     $f22, $f4
/* 1E7F8 800433F8 4616003E */  c.le.s    $f0, $f22
/* 1E7FC 800433FC 00000000 */  nop
/* 1E800 80043400 4501006A */  bc1t      .L800435AC
/* 1E804 80043404 00000000 */   nop
/* 1E808 80043408 C7A60044 */  lwc1      $f6, 0x44($sp)
/* 1E80C 8004340C 4606C000 */  add.s     $f0, $f24, $f6
/* 1E810 80043410 C7A80034 */  lwc1      $f8, 0x34($sp)
/* 1E814 80043414 4608003C */  c.lt.s    $f0, $f8
/* 1E818 80043418 00000000 */  nop
/* 1E81C 8004341C 45010063 */  bc1t      .L800435AC
/* 1E820 80043420 00000000 */   nop
/* 1E824 80043424 C7A6003C */  lwc1      $f6, 0x3c($sp)
/* 1E828 80043428 46064000 */  add.s     $f0, $f8, $f6
/* 1E82C 8004342C 4618003C */  c.lt.s    $f0, $f24
/* 1E830 80043430 00000000 */  nop
/* 1E834 80043434 4501005D */  bc1t      .L800435AC
/* 1E838 80043438 00000000 */   nop
/* 1E83C 8004343C 0C00A6C9 */  jal       clamp_angle
/* 1E840 80043440 C68C00A8 */   lwc1     $f12, 0xa8($s4)
/* 1E844 80043444 3C014334 */  lui       $at, 0x4334
/* 1E848 80043448 44811000 */  mtc1      $at, $f2
/* 1E84C 8004344C 00000000 */  nop
/* 1E850 80043450 4602003C */  c.lt.s    $f0, $f2
/* 1E854 80043454 00000000 */  nop
/* 1E858 80043458 4500000F */  bc1f      .L80043498
/* 1E85C 8004345C 00000000 */   nop
/* 1E860 80043460 C6EC006C */  lwc1      $f12, 0x6c($s7)
/* 1E864 80043464 3C0142F0 */  lui       $at, 0x42f0
/* 1E868 80043468 44814000 */  mtc1      $at, $f8
/* 1E86C 8004346C 0C00A6C9 */  jal       clamp_angle
/* 1E870 80043470 46086301 */   sub.s    $f12, $f12, $f8
/* 1E874 80043474 8E8200A4 */  lw        $v0, 0xa4($s4)
/* 1E878 80043478 3C080100 */  lui       $t0, 0x100
/* 1E87C 8004347C 00481024 */  and       $v0, $v0, $t0
/* 1E880 80043480 10400016 */  beqz      $v0, .L800434DC
/* 1E884 80043484 46000506 */   mov.s    $f20, $f0
/* 1E888 80043488 3C014270 */  lui       $at, 0x4270
/* 1E88C 8004348C 44813000 */  mtc1      $at, $f6
/* 1E890 80043490 08010D34 */  j         .L800434D0
/* 1E894 80043494 4606A300 */   add.s    $f12, $f20, $f6
.L80043498:
/* 1E898 80043498 C6EC006C */  lwc1      $f12, 0x6c($s7)
/* 1E89C 8004349C 3C0142F0 */  lui       $at, 0x42f0
/* 1E8A0 800434A0 44814000 */  mtc1      $at, $f8
/* 1E8A4 800434A4 0C00A6C9 */  jal       clamp_angle
/* 1E8A8 800434A8 46086300 */   add.s    $f12, $f12, $f8
/* 1E8AC 800434AC 8E8200A4 */  lw        $v0, 0xa4($s4)
/* 1E8B0 800434B0 3C080100 */  lui       $t0, 0x100
/* 1E8B4 800434B4 00481024 */  and       $v0, $v0, $t0
/* 1E8B8 800434B8 10400008 */  beqz      $v0, .L800434DC
/* 1E8BC 800434BC 46000506 */   mov.s    $f20, $f0
/* 1E8C0 800434C0 3C014270 */  lui       $at, 0x4270
/* 1E8C4 800434C4 44813000 */  mtc1      $at, $f6
/* 1E8C8 800434C8 00000000 */  nop
/* 1E8CC 800434CC 4606A301 */  sub.s     $f12, $f20, $f6
.L800434D0:
/* 1E8D0 800434D0 0C00A6C9 */  jal       clamp_angle
/* 1E8D4 800434D4 00000000 */   nop
/* 1E8D8 800434D8 46000506 */  mov.s     $f20, $f0
.L800434DC:
/* 1E8DC 800434DC C7AC0030 */  lwc1      $f12, 0x30($sp)
/* 1E8E0 800434E0 4406D000 */  mfc1      $a2, $f26
/* 1E8E4 800434E4 4407E000 */  mfc1      $a3, $f28
/* 1E8E8 800434E8 0C00A720 */  jal       atan2
/* 1E8EC 800434EC C7AE0038 */   lwc1     $f14, 0x38($sp)
/* 1E8F0 800434F0 4600A306 */  mov.s     $f12, $f20
/* 1E8F4 800434F4 0C00A70A */  jal       get_clamped_angle_diff
/* 1E8F8 800434F8 46000386 */   mov.s    $f14, $f0
/* 1E8FC 800434FC 3C0142B4 */  lui       $at, 0x42b4
/* 1E900 80043500 44811000 */  mtc1      $at, $f2
/* 1E904 80043504 46000005 */  abs.s     $f0, $f0
/* 1E908 80043508 4600103C */  c.lt.s    $f2, $f0
/* 1E90C 8004350C 00000000 */  nop
/* 1E910 80043510 45010026 */  bc1t      .L800435AC
/* 1E914 80043514 3C030001 */   lui      $v1, 1
/* 1E918 80043518 8E220000 */  lw        $v0, ($s1)
/* 1E91C 8004351C 00431024 */  and       $v0, $v0, $v1
/* 1E920 80043520 14400019 */  bnez      $v0, .L80043588
/* 1E924 80043524 3C032000 */   lui      $v1, 0x2000
/* 1E928 80043528 8E020000 */  lw        $v0, ($s0)
/* 1E92C 8004352C 00431024 */  and       $v0, $v0, $v1
/* 1E930 80043530 10400015 */  beqz      $v0, .L80043588
/* 1E934 80043534 4600D306 */   mov.s    $f12, $f26
/* 1E938 80043538 8FA60030 */  lw        $a2, 0x30($sp)
/* 1E93C 8004353C 8FA70038 */  lw        $a3, 0x38($sp)
/* 1E940 80043540 4600E386 */  mov.s     $f14, $f28
/* 1E944 80043544 E7AC0020 */  swc1      $f12, 0x20($sp)
/* 1E948 80043548 E7B80024 */  swc1      $f24, 0x24($sp)
/* 1E94C 8004354C 0C00A720 */  jal       atan2
/* 1E950 80043550 E7AE0028 */   swc1     $f14, 0x28($sp)
/* 1E954 80043554 0000202D */  daddu     $a0, $zero, $zero
/* 1E958 80043558 27A60024 */  addiu     $a2, $sp, 0x24
/* 1E95C 8004355C 27A70028 */  addiu     $a3, $sp, 0x28
/* 1E960 80043560 27A50020 */  addiu     $a1, $sp, 0x20
/* 1E964 80043564 C7A80044 */  lwc1      $f8, 0x44($sp)
/* 1E968 80043568 461EF080 */  add.s     $f2, $f30, $f30
/* 1E96C 8004356C E7B60010 */  swc1      $f22, 0x10($sp)
/* 1E970 80043570 E7A00014 */  swc1      $f0, 0x14($sp)
/* 1E974 80043574 E7A80018 */  swc1      $f8, 0x18($sp)
/* 1E978 80043578 0C0376B9 */  jal       func_800DDAE4
/* 1E97C 8004357C E7A2001C */   swc1     $f2, 0x1c($sp)
/* 1E980 80043580 1440000A */  bnez      $v0, .L800435AC
/* 1E984 80043584 00000000 */   nop
.L80043588:
/* 1E988 80043588 C7A60048 */  lwc1      $f6, 0x48($sp)
/* 1E98C 8004358C 4606B03C */  c.lt.s    $f22, $f6
/* 1E990 80043590 00000000 */  nop
/* 1E994 80043594 45000005 */  bc1f      .L800435AC
/* 1E998 80043598 00000000 */   nop
/* 1E99C 8004359C 0200F02D */  daddu     $fp, $s0, $zero
/* 1E9A0 800435A0 0220B02D */  daddu     $s6, $s1, $zero
/* 1E9A4 800435A4 E7B60048 */  swc1      $f22, 0x48($sp)
/* 1E9A8 800435A8 AFB3002C */  sw        $s3, 0x2c($sp)
.L800435AC:
/* 1E9AC 800435AC 8E620000 */  lw        $v0, ($s3)
/* 1E9B0 800435B0 26520001 */  addiu     $s2, $s2, 1
/* 1E9B4 800435B4 0242102A */  slt       $v0, $s2, $v0
/* 1E9B8 800435B8 1440FF5B */  bnez      $v0, .L80043328
/* 1E9BC 800435BC 00121080 */   sll      $v0, $s2, 2
.L800435C0:
/* 1E9C0 800435C0 3C02800B */  lui       $v0, %hi(gCurrentEncounter+0x1C)
/* 1E9C4 800435C4 80420F2C */  lb        $v0, %lo(gCurrentEncounter+0x1C)($v0)
/* 1E9C8 800435C8 26B50001 */  addiu     $s5, $s5, 1
/* 1E9CC 800435CC 02A2102A */  slt       $v0, $s5, $v0
/* 1E9D0 800435D0 1440FF4B */  bnez      $v0, .L80043300
/* 1E9D4 800435D4 00151080 */   sll      $v0, $s5, 2
.L800435D8:
/* 1E9D8 800435D8 8E820004 */  lw        $v0, 4($s4)
/* 1E9DC 800435DC 30424000 */  andi      $v0, $v0, 0x4000
/* 1E9E0 800435E0 14400021 */  bnez      $v0, .L80043668
/* 1E9E4 800435E4 0000102D */   daddu    $v0, $zero, $zero
/* 1E9E8 800435E8 13C0001F */  beqz      $fp, .L80043668
/* 1E9EC 800435EC 00000000 */   nop
/* 1E9F0 800435F0 0C04D07A */  jal       func_801341E8
/* 1E9F4 800435F4 00000000 */   nop
/* 1E9F8 800435F8 1440001B */  bnez      $v0, .L80043668
/* 1E9FC 800435FC 0000102D */   daddu    $v0, $zero, $zero
/* 1EA00 80043600 8E830000 */  lw        $v1, ($s4)
/* 1EA04 80043604 8E8400E0 */  lw        $a0, 0xe0($s4)
/* 1EA08 80043608 3C020200 */  lui       $v0, 0x200
/* 1EA0C 8004360C AE9E00C8 */  sw        $fp, 0xc8($s4)
/* 1EA10 80043610 00621825 */  or        $v1, $v1, $v0
/* 1EA14 80043614 30848000 */  andi      $a0, $a0, 0x8000
/* 1EA18 80043618 10800012 */  beqz      $a0, .L80043664
/* 1EA1C 8004361C AE830000 */   sw       $v1, ($s4)
/* 1EA20 80043620 0C03A5EE */  jal       func_800E97B8
/* 1EA24 80043624 00000000 */   nop
/* 1EA28 80043628 24020001 */  addiu     $v0, $zero, 1
/* 1EA2C 8004362C 24030005 */  addiu     $v1, $zero, 5
/* 1EA30 80043630 3C01800B */  lui       $at, %hi(gCurrentEncounter+0x5)
/* 1EA34 80043634 A0230F15 */  sb        $v1, %lo(gCurrentEncounter+0x5)($at)
/* 1EA38 80043638 A2C30005 */  sb        $v1, 5($s6)
/* 1EA3C 8004363C 8FA8002C */  lw        $t0, 0x2c($sp)
/* 1EA40 80043640 0040182D */  daddu     $v1, $v0, $zero
/* 1EA44 80043644 3C01800B */  lui       $at, %hi(gCurrentEncounter+0x8C)
/* 1EA48 80043648 AC360F9C */  sw        $s6, %lo(gCurrentEncounter+0x8C)($at)
/* 1EA4C 8004364C 3C01800B */  lui       $at, %hi(gCurrentEncounter+0x4)
/* 1EA50 80043650 A0230F14 */  sb        $v1, %lo(gCurrentEncounter+0x4)($at)
/* 1EA54 80043654 3C01800B */  lui       $at, %hi(gCurrentEncounter+0x88)
/* 1EA58 80043658 AC280F98 */  sw        $t0, %lo(gCurrentEncounter+0x88)($at)
/* 1EA5C 8004365C 08010D9A */  j         .L80043668
/* 1EA60 80043660 00000000 */   nop
.L80043664:
/* 1EA64 80043664 0000102D */  daddu     $v0, $zero, $zero
.L80043668:
/* 1EA68 80043668 8FBF0074 */  lw        $ra, 0x74($sp)
/* 1EA6C 8004366C 8FBE0070 */  lw        $fp, 0x70($sp)
/* 1EA70 80043670 8FB7006C */  lw        $s7, 0x6c($sp)
/* 1EA74 80043674 8FB60068 */  lw        $s6, 0x68($sp)
/* 1EA78 80043678 8FB50064 */  lw        $s5, 0x64($sp)
/* 1EA7C 8004367C 8FB40060 */  lw        $s4, 0x60($sp)
/* 1EA80 80043680 8FB3005C */  lw        $s3, 0x5c($sp)
/* 1EA84 80043684 8FB20058 */  lw        $s2, 0x58($sp)
/* 1EA88 80043688 8FB10054 */  lw        $s1, 0x54($sp)
/* 1EA8C 8004368C 8FB00050 */  lw        $s0, 0x50($sp)
/* 1EA90 80043690 D7BE00A0 */  ldc1      $f30, 0xa0($sp)
/* 1EA94 80043694 D7BC0098 */  ldc1      $f28, 0x98($sp)
/* 1EA98 80043698 D7BA0090 */  ldc1      $f26, 0x90($sp)
/* 1EA9C 8004369C D7B80088 */  ldc1      $f24, 0x88($sp)
/* 1EAA0 800436A0 D7B60080 */  ldc1      $f22, 0x80($sp)
/* 1EAA4 800436A4 D7B40078 */  ldc1      $f20, 0x78($sp)
/* 1EAA8 800436A8 03E00008 */  jr        $ra
/* 1EAAC 800436AC 27BD00A8 */   addiu    $sp, $sp, 0xa8
