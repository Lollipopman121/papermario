.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802404B8_EA8F98
/* EA8F98 802404B8 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* EA8F9C 802404BC AFBF0020 */  sw        $ra, 0x20($sp)
/* EA8FA0 802404C0 AFB1001C */  sw        $s1, 0x1c($sp)
/* EA8FA4 802404C4 AFB00018 */  sw        $s0, 0x18($sp)
/* EA8FA8 802404C8 8C910084 */  lw        $s1, 0x84($a0)
/* EA8FAC 802404CC 86230044 */  lh        $v1, 0x44($s1)
/* EA8FB0 802404D0 3C108011 */  lui       $s0, %hi(D_80117578)
/* EA8FB4 802404D4 26107578 */  addiu     $s0, $s0, %lo(D_80117578)
/* EA8FB8 802404D8 2C620005 */  sltiu     $v0, $v1, 5
/* EA8FBC 802404DC 1040008A */  beqz      $v0, .L80240708
/* EA8FC0 802404E0 00031080 */   sll      $v0, $v1, 2
/* EA8FC4 802404E4 3C018025 */  lui       $at, %hi(jtbl_80248340_EB0E20)
/* EA8FC8 802404E8 00220821 */  addu      $at, $at, $v0
/* EA8FCC 802404EC 8C228340 */  lw        $v0, %lo(jtbl_80248340_EB0E20)($at)
/* EA8FD0 802404F0 00400008 */  jr        $v0
/* EA8FD4 802404F4 00000000 */   nop
glabel L802404F8_EA8FD8
/* EA8FD8 802404F8 8E22003C */  lw        $v0, 0x3c($s1)
/* EA8FDC 802404FC 86270046 */  lh        $a3, 0x46($s1)
/* EA8FE0 80240500 AFA20010 */  sw        $v0, 0x10($sp)
/* EA8FE4 80240504 8E250010 */  lw        $a1, 0x10($s1)
/* EA8FE8 80240508 8E26001C */  lw        $a2, 0x1c($s1)
/* EA8FEC 8024050C 0C00ADA9 */  jal       func_8002B6A4
/* EA8FF0 80240510 24040005 */   addiu    $a0, $zero, 5
/* EA8FF4 80240514 86270046 */  lh        $a3, 0x46($s1)
/* EA8FF8 80240518 8E22003C */  lw        $v0, 0x3c($s1)
/* EA8FFC 8024051C E6200004 */  swc1      $f0, 4($s1)
/* EA9000 80240520 AFA20010 */  sw        $v0, 0x10($sp)
/* EA9004 80240524 8E25000C */  lw        $a1, 0xc($s1)
/* EA9008 80240528 8E260018 */  lw        $a2, 0x18($s1)
/* EA900C 8024052C 0C00ADA9 */  jal       func_8002B6A4
/* EA9010 80240530 0000202D */   daddu    $a0, $zero, $zero
/* EA9014 80240534 86270046 */  lh        $a3, 0x46($s1)
/* EA9018 80240538 8E22003C */  lw        $v0, 0x3c($s1)
/* EA901C 8024053C E6200000 */  swc1      $f0, ($s1)
/* EA9020 80240540 AFA20010 */  sw        $v0, 0x10($sp)
/* EA9024 80240544 8E250014 */  lw        $a1, 0x14($s1)
/* EA9028 80240548 8E260020 */  lw        $a2, 0x20($s1)
/* EA902C 8024054C 0C00ADA9 */  jal       func_8002B6A4
/* EA9030 80240550 0000202D */   daddu    $a0, $zero, $zero
/* EA9034 80240554 8E220050 */  lw        $v0, 0x50($s1)
/* EA9038 80240558 E6200008 */  swc1      $f0, 8($s1)
/* EA903C 8024055C C6200000 */  lwc1      $f0, ($s1)
/* EA9040 80240560 8C42000C */  lw        $v0, 0xc($v0)
/* EA9044 80240564 E4400008 */  swc1      $f0, 8($v0)
/* EA9048 80240568 8E220050 */  lw        $v0, 0x50($s1)
/* EA904C 8024056C C6200004 */  lwc1      $f0, 4($s1)
/* EA9050 80240570 8C42000C */  lw        $v0, 0xc($v0)
/* EA9054 80240574 E440000C */  swc1      $f0, 0xc($v0)
/* EA9058 80240578 8E220050 */  lw        $v0, 0x50($s1)
/* EA905C 8024057C C6200008 */  lwc1      $f0, 8($s1)
/* EA9060 80240580 8C42000C */  lw        $v0, 0xc($v0)
/* EA9064 80240584 E4400010 */  swc1      $f0, 0x10($v0)
/* EA9068 80240588 96220046 */  lhu       $v0, 0x46($s1)
/* EA906C 8024058C 8E23003C */  lw        $v1, 0x3c($s1)
/* EA9070 80240590 24420001 */  addiu     $v0, $v0, 1
/* EA9074 80240594 A6220046 */  sh        $v0, 0x46($s1)
/* EA9078 80240598 00021400 */  sll       $v0, $v0, 0x10
/* EA907C 8024059C 00021403 */  sra       $v0, $v0, 0x10
/* EA9080 802405A0 0043102A */  slt       $v0, $v0, $v1
/* EA9084 802405A4 14400058 */  bnez      $v0, .L80240708
/* EA9088 802405A8 24020001 */   addiu    $v0, $zero, 1
/* EA908C 802405AC A6220044 */  sh        $v0, 0x44($s1)
/* EA9090 802405B0 080901C2 */  j         .L80240708
/* EA9094 802405B4 A6200046 */   sh       $zero, 0x46($s1)
glabel L802405B8_EA9098
/* EA9098 802405B8 96220046 */  lhu       $v0, 0x46($s1)
/* EA909C 802405BC 24420001 */  addiu     $v0, $v0, 1
/* EA90A0 802405C0 A6220046 */  sh        $v0, 0x46($s1)
/* EA90A4 802405C4 00021400 */  sll       $v0, $v0, 0x10
/* EA90A8 802405C8 00021403 */  sra       $v0, $v0, 0x10
/* EA90AC 802405CC 2842003C */  slti      $v0, $v0, 0x3c
/* EA90B0 802405D0 1440004D */  bnez      $v0, .L80240708
/* EA90B4 802405D4 24020002 */   addiu    $v0, $zero, 2
/* EA90B8 802405D8 8E230050 */  lw        $v1, 0x50($s1)
/* EA90BC 802405DC A6220044 */  sh        $v0, 0x44($s1)
/* EA90C0 802405E0 A6200046 */  sh        $zero, 0x46($s1)
/* EA90C4 802405E4 8C63000C */  lw        $v1, 0xc($v1)
/* EA90C8 802405E8 24020001 */  addiu     $v0, $zero, 1
/* EA90CC 802405EC AC620070 */  sw        $v0, 0x70($v1)
/* EA90D0 802405F0 8E220050 */  lw        $v0, 0x50($s1)
/* EA90D4 802405F4 8C42000C */  lw        $v0, 0xc($v0)
/* EA90D8 802405F8 080901C2 */  j         .L80240708
/* EA90DC 802405FC AC400074 */   sw       $zero, 0x74($v0)
glabel L80240600_EA90E0
/* EA90E0 80240600 96220046 */  lhu       $v0, 0x46($s1)
/* EA90E4 80240604 24420001 */  addiu     $v0, $v0, 1
/* EA90E8 80240608 A6220046 */  sh        $v0, 0x46($s1)
/* EA90EC 8024060C 00021400 */  sll       $v0, $v0, 0x10
/* EA90F0 80240610 00021403 */  sra       $v0, $v0, 0x10
/* EA90F4 80240614 2842003C */  slti      $v0, $v0, 0x3c
/* EA90F8 80240618 1440003B */  bnez      $v0, .L80240708
/* EA90FC 8024061C 00000000 */   nop
/* EA9100 80240620 3C013F80 */  lui       $at, 0x3f80
/* EA9104 80240624 44810000 */  mtc1      $at, $f0
/* EA9108 80240628 AFA00014 */  sw        $zero, 0x14($sp)
/* EA910C 8024062C E7A00010 */  swc1      $f0, 0x10($sp)
/* EA9110 80240630 8E250018 */  lw        $a1, 0x18($s1)
/* EA9114 80240634 8E26001C */  lw        $a2, 0x1c($s1)
/* EA9118 80240638 8E270020 */  lw        $a3, 0x20($s1)
/* EA911C 8024063C 0C01DE4C */  jal       func_80077930
/* EA9120 80240640 24040001 */   addiu    $a0, $zero, 1
/* EA9124 80240644 AE220054 */  sw        $v0, 0x54($s1)
/* EA9128 80240648 8C43000C */  lw        $v1, 0xc($v0)
/* EA912C 8024064C 9222003B */  lbu       $v0, 0x3b($s1)
/* EA9130 80240650 A0620034 */  sb        $v0, 0x34($v1)
/* EA9134 80240654 8E220054 */  lw        $v0, 0x54($s1)
/* EA9138 80240658 8C42000C */  lw        $v0, 0xc($v0)
/* EA913C 8024065C AC400020 */  sw        $zero, 0x20($v0)
/* EA9140 80240660 8E250018 */  lw        $a1, 0x18($s1)
/* EA9144 80240664 8E260028 */  lw        $a2, 0x28($s1)
/* EA9148 80240668 8E270020 */  lw        $a3, 0x20($s1)
/* EA914C 8024066C 0C046AAD */  jal       func_8011AAB4
/* EA9150 80240670 0000202D */   daddu    $a0, $zero, $zero
/* EA9154 80240674 3C014210 */  lui       $at, 0x4210
/* EA9158 80240678 44810000 */  mtc1      $at, $f0
/* EA915C 8024067C AE220040 */  sw        $v0, 0x40($s1)
/* EA9160 80240680 24020003 */  addiu     $v0, $zero, 3
/* EA9164 80240684 A6220044 */  sh        $v0, 0x44($s1)
/* EA9168 80240688 24020001 */  addiu     $v0, $zero, 1
/* EA916C 8024068C A6200046 */  sh        $zero, 0x46($s1)
/* EA9170 80240690 AE20002C */  sw        $zero, 0x2c($s1)
/* EA9174 80240694 A6220048 */  sh        $v0, 0x48($s1)
/* EA9178 80240698 080901C2 */  j         .L80240708
/* EA917C 8024069C E6200030 */   swc1     $f0, 0x30($s1)
glabel L802406A0_EA9180
/* EA9180 802406A0 0000202D */  daddu     $a0, $zero, $zero
/* EA9184 802406A4 3C054210 */  lui       $a1, 0x4210
/* EA9188 802406A8 3C064198 */  lui       $a2, 0x4198
/* EA918C 802406AC 86270046 */  lh        $a3, 0x46($s1)
/* EA9190 802406B0 24020078 */  addiu     $v0, $zero, 0x78
/* EA9194 802406B4 0C00ADA9 */  jal       func_8002B6A4
/* EA9198 802406B8 AFA20010 */   sw       $v0, 0x10($sp)
/* EA919C 802406BC 96220046 */  lhu       $v0, 0x46($s1)
/* EA91A0 802406C0 E6200030 */  swc1      $f0, 0x30($s1)
/* EA91A4 802406C4 24420001 */  addiu     $v0, $v0, 1
/* EA91A8 802406C8 A6220046 */  sh        $v0, 0x46($s1)
/* EA91AC 802406CC 00021400 */  sll       $v0, $v0, 0x10
/* EA91B0 802406D0 00021403 */  sra       $v0, $v0, 0x10
/* EA91B4 802406D4 28420078 */  slti      $v0, $v0, 0x78
/* EA91B8 802406D8 1440000B */  bnez      $v0, .L80240708
/* EA91BC 802406DC 24030001 */   addiu    $v1, $zero, 1
/* EA91C0 802406E0 C620002C */  lwc1      $f0, 0x2c($s1)
/* EA91C4 802406E4 24020002 */  addiu     $v0, $zero, 2
/* EA91C8 802406E8 A6220048 */  sh        $v0, 0x48($s1)
/* EA91CC 802406EC 24020004 */  addiu     $v0, $zero, 4
/* EA91D0 802406F0 A620004C */  sh        $zero, 0x4c($s1)
/* EA91D4 802406F4 A623004A */  sh        $v1, 0x4a($s1)
/* EA91D8 802406F8 A623004E */  sh        $v1, 0x4e($s1)
/* EA91DC 802406FC A6220044 */  sh        $v0, 0x44($s1)
/* EA91E0 80240700 A6200046 */  sh        $zero, 0x46($s1)
/* EA91E4 80240704 E6200034 */  swc1      $f0, 0x34($s1)
.L80240708:
glabel L80240708_EA91E8
/* EA91E8 80240708 8623004A */  lh        $v1, 0x4a($s1)
/* EA91EC 8024070C 24020001 */  addiu     $v0, $zero, 1
/* EA91F0 80240710 10620005 */  beq       $v1, $v0, .L80240728
/* EA91F4 80240714 24020002 */   addiu    $v0, $zero, 2
/* EA91F8 80240718 1062001E */  beq       $v1, $v0, .L80240794
/* EA91FC 8024071C 00000000 */   nop
/* EA9200 80240720 0809020F */  j         .L8024083C
/* EA9204 80240724 00000000 */   nop
.L80240728:
/* EA9208 80240728 8627004C */  lh        $a3, 0x4c($s1)
/* EA920C 8024072C 24100078 */  addiu     $s0, $zero, 0x78
/* EA9210 80240730 AFB00010 */  sw        $s0, 0x10($sp)
/* EA9214 80240734 8E250034 */  lw        $a1, 0x34($s1)
/* EA9218 80240738 3C0644B4 */  lui       $a2, 0x44b4
/* EA921C 8024073C 0C00ADA9 */  jal       func_8002B6A4
/* EA9220 80240740 24040004 */   addiu    $a0, $zero, 4
/* EA9224 80240744 8627004C */  lh        $a3, 0x4c($s1)
/* EA9228 80240748 E620002C */  swc1      $f0, 0x2c($s1)
/* EA922C 8024074C AFB00010 */  sw        $s0, 0x10($sp)
/* EA9230 80240750 8E25001C */  lw        $a1, 0x1c($s1)
/* EA9234 80240754 8E260024 */  lw        $a2, 0x24($s1)
/* EA9238 80240758 0C00ADA9 */  jal       func_8002B6A4
/* EA923C 8024075C 2404000A */   addiu    $a0, $zero, 0xa
/* EA9240 80240760 9622004C */  lhu       $v0, 0x4c($s1)
/* EA9244 80240764 E6200004 */  swc1      $f0, 4($s1)
/* EA9248 80240768 24420001 */  addiu     $v0, $v0, 1
/* EA924C 8024076C A622004C */  sh        $v0, 0x4c($s1)
/* EA9250 80240770 00021400 */  sll       $v0, $v0, 0x10
/* EA9254 80240774 00021403 */  sra       $v0, $v0, 0x10
/* EA9258 80240778 0050102A */  slt       $v0, $v0, $s0
/* EA925C 8024077C 1440002F */  bnez      $v0, .L8024083C
/* EA9260 80240780 2402010E */   addiu    $v0, $zero, 0x10e
/* EA9264 80240784 A622004C */  sh        $v0, 0x4c($s1)
/* EA9268 80240788 24020002 */  addiu     $v0, $zero, 2
/* EA926C 8024078C 0809020E */  j         .L80240838
/* EA9270 80240790 A622004A */   sh       $v0, 0x4a($s1)
.L80240794:
/* EA9274 80240794 8622004C */  lh        $v0, 0x4c($s1)
/* EA9278 80240798 44826000 */  mtc1      $v0, $f12
/* EA927C 8024079C 00000000 */  nop
/* EA9280 802407A0 0C00AD77 */  jal       func_8002B5DC
/* EA9284 802407A4 46806320 */   cvt.s.w  $f12, $f12
/* EA9288 802407A8 3C013F80 */  lui       $at, 0x3f80
/* EA928C 802407AC 44811000 */  mtc1      $at, $f2
/* EA9290 802407B0 00000000 */  nop
/* EA9294 802407B4 46020000 */  add.s     $f0, $f0, $f2
/* EA9298 802407B8 46000000 */  add.s     $f0, $f0, $f0
/* EA929C 802407BC C6220024 */  lwc1      $f2, 0x24($s1)
/* EA92A0 802407C0 8622004C */  lh        $v0, 0x4c($s1)
/* EA92A4 802407C4 46001080 */  add.s     $f2, $f2, $f0
/* EA92A8 802407C8 24420008 */  addiu     $v0, $v0, 8
/* EA92AC 802407CC 44826000 */  mtc1      $v0, $f12
/* EA92B0 802407D0 00000000 */  nop
/* EA92B4 802407D4 46806320 */  cvt.s.w   $f12, $f12
/* EA92B8 802407D8 0C00AB85 */  jal       func_8002AE14
/* EA92BC 802407DC E6220004 */   swc1     $f2, 4($s1)
/* EA92C0 802407E0 4600010D */  trunc.w.s $f4, $f0
/* EA92C4 802407E4 44022000 */  mfc1      $v0, $f4
/* EA92C8 802407E8 C6200004 */  lwc1      $f0, 4($s1)
/* EA92CC 802407EC A622004C */  sh        $v0, 0x4c($s1)
/* EA92D0 802407F0 C60C0028 */  lwc1      $f12, 0x28($s0)
/* EA92D4 802407F4 8E060030 */  lw        $a2, 0x30($s0)
/* EA92D8 802407F8 3C0141A0 */  lui       $at, 0x41a0
/* EA92DC 802407FC 44817000 */  mtc1      $at, $f14
/* EA92E0 80240800 E7A00010 */  swc1      $f0, 0x10($sp)
/* EA92E4 80240804 C602002C */  lwc1      $f2, 0x2c($s0)
/* EA92E8 80240808 C6200008 */  lwc1      $f0, 8($s1)
/* EA92EC 8024080C E7A00014 */  swc1      $f0, 0x14($sp)
/* EA92F0 80240810 8E270000 */  lw        $a3, ($s1)
/* EA92F4 80240814 0C00AC87 */  jal       func_8002B21C
/* EA92F8 80240818 460E1380 */   add.s    $f14, $f2, $f14
/* EA92FC 8024081C 3C0141F0 */  lui       $at, 0x41f0
/* EA9300 80240820 44811000 */  mtc1      $at, $f2
/* EA9304 80240824 00000000 */  nop
/* EA9308 80240828 4600103C */  c.lt.s    $f2, $f0
/* EA930C 8024082C 00000000 */  nop
/* EA9310 80240830 45010002 */  bc1t      .L8024083C
/* EA9314 80240834 24020003 */   addiu    $v0, $zero, 3
.L80240838:
/* EA9318 80240838 A622004E */  sh        $v0, 0x4e($s1)
.L8024083C:
/* EA931C 8024083C 86230048 */  lh        $v1, 0x48($s1)
/* EA9320 80240840 24020001 */  addiu     $v0, $zero, 1
/* EA9324 80240844 10620005 */  beq       $v1, $v0, .L8024085C
/* EA9328 80240848 24020002 */   addiu    $v0, $zero, 2
/* EA932C 8024084C 10620008 */  beq       $v1, $v0, .L80240870
/* EA9330 80240850 00000000 */   nop
/* EA9334 80240854 0809022C */  j         .L802408B0
/* EA9338 80240858 00000000 */   nop
.L8024085C:
/* EA933C 8024085C C620002C */  lwc1      $f0, 0x2c($s1)
/* EA9340 80240860 C62C0030 */  lwc1      $f12, 0x30($s1)
/* EA9344 80240864 0C00AB85 */  jal       func_8002AE14
/* EA9348 80240868 460C0300 */   add.s    $f12, $f0, $f12
/* EA934C 8024086C E620002C */  swc1      $f0, 0x2c($s1)
.L80240870:
/* EA9350 80240870 8E220054 */  lw        $v0, 0x54($s1)
/* EA9354 80240874 C620002C */  lwc1      $f0, 0x2c($s1)
/* EA9358 80240878 8C42000C */  lw        $v0, 0xc($v0)
/* EA935C 8024087C E4400024 */  swc1      $f0, 0x24($v0)
/* EA9360 80240880 8E220054 */  lw        $v0, 0x54($s1)
/* EA9364 80240884 C6200018 */  lwc1      $f0, 0x18($s1)
/* EA9368 80240888 8C42000C */  lw        $v0, 0xc($v0)
/* EA936C 8024088C E4400004 */  swc1      $f0, 4($v0)
/* EA9370 80240890 8E220054 */  lw        $v0, 0x54($s1)
/* EA9374 80240894 C6200004 */  lwc1      $f0, 4($s1)
/* EA9378 80240898 8C42000C */  lw        $v0, 0xc($v0)
/* EA937C 8024089C E4400008 */  swc1      $f0, 8($v0)
/* EA9380 802408A0 8E220054 */  lw        $v0, 0x54($s1)
/* EA9384 802408A4 C6200020 */  lwc1      $f0, 0x20($s1)
/* EA9388 802408A8 8C42000C */  lw        $v0, 0xc($v0)
/* EA938C 802408AC E440000C */  swc1      $f0, 0xc($v0)
.L802408B0:
/* EA9390 802408B0 8FBF0020 */  lw        $ra, 0x20($sp)
/* EA9394 802408B4 8FB1001C */  lw        $s1, 0x1c($sp)
/* EA9398 802408B8 8FB00018 */  lw        $s0, 0x18($sp)
/* EA939C 802408BC 0000102D */  daddu     $v0, $zero, $zero
/* EA93A0 802408C0 03E00008 */  jr        $ra
/* EA93A4 802408C4 27BD0028 */   addiu    $sp, $sp, 0x28
