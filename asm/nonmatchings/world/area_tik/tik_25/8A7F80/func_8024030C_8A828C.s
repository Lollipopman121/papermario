.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024030C_8A828C
/* 8A828C 8024030C 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 8A8290 80240310 AFB3001C */  sw        $s3, 0x1c($sp)
/* 8A8294 80240314 0080982D */  daddu     $s3, $a0, $zero
/* 8A8298 80240318 AFBF0020 */  sw        $ra, 0x20($sp)
/* 8A829C 8024031C AFB20018 */  sw        $s2, 0x18($sp)
/* 8A82A0 80240320 AFB10014 */  sw        $s1, 0x14($sp)
/* 8A82A4 80240324 AFB00010 */  sw        $s0, 0x10($sp)
/* 8A82A8 80240328 F7BA0040 */  sdc1      $f26, 0x40($sp)
/* 8A82AC 8024032C F7B80038 */  sdc1      $f24, 0x38($sp)
/* 8A82B0 80240330 F7B60030 */  sdc1      $f22, 0x30($sp)
/* 8A82B4 80240334 F7B40028 */  sdc1      $f20, 0x28($sp)
/* 8A82B8 80240338 8E62000C */  lw        $v0, 0xc($s3)
/* 8A82BC 8024033C 0C0B1EAF */  jal       get_variable
/* 8A82C0 80240340 8C450000 */   lw       $a1, ($v0)
/* 8A82C4 80240344 2404FFFC */  addiu     $a0, $zero, -4
/* 8A82C8 80240348 0C00EABB */  jal       get_npc_unsafe
/* 8A82CC 8024034C 0040802D */   daddu    $s0, $v0, $zero
/* 8A82D0 80240350 0200202D */  daddu     $a0, $s0, $zero
/* 8A82D4 80240354 0C046C04 */  jal       get_model_list_index_from_tree_index
/* 8A82D8 80240358 0040802D */   daddu    $s0, $v0, $zero
/* 8A82DC 8024035C 0C046B4C */  jal       get_model_from_list_index
/* 8A82E0 80240360 0040202D */   daddu    $a0, $v0, $zero
/* 8A82E4 80240364 3C038011 */  lui       $v1, %hi(gPlayerStatus)
/* 8A82E8 80240368 2463EFC8 */  addiu     $v1, $v1, %lo(gPlayerStatus)
/* 8A82EC 8024036C 0040902D */  daddu     $s2, $v0, $zero
/* 8A82F0 80240370 AE60008C */  sw        $zero, 0x8c($s3)
/* 8A82F4 80240374 C4620028 */  lwc1      $f2, 0x28($v1)
/* 8A82F8 80240378 C6400098 */  lwc1      $f0, 0x98($s2)
/* 8A82FC 8024037C 46001081 */  sub.s     $f2, $f2, $f0
/* 8A8300 80240380 46021182 */  mul.s     $f6, $f2, $f2
/* 8A8304 80240384 00000000 */  nop
/* 8A8308 80240388 C64000A0 */  lwc1      $f0, 0xa0($s2)
/* 8A830C 8024038C C4620030 */  lwc1      $f2, 0x30($v1)
/* 8A8310 80240390 46001081 */  sub.s     $f2, $f2, $f0
/* 8A8314 80240394 46021102 */  mul.s     $f4, $f2, $f2
/* 8A8318 80240398 00000000 */  nop
/* 8A831C 8024039C 846200B0 */  lh        $v0, 0xb0($v1)
/* 8A8320 802403A0 C462002C */  lwc1      $f2, 0x2c($v1)
/* 8A8324 802403A4 44820000 */  mtc1      $v0, $f0
/* 8A8328 802403A8 00000000 */  nop
/* 8A832C 802403AC 46800020 */  cvt.s.w   $f0, $f0
/* 8A8330 802403B0 46001080 */  add.s     $f2, $f2, $f0
/* 8A8334 802403B4 3C013FC0 */  lui       $at, 0x3fc0
/* 8A8338 802403B8 44810000 */  mtc1      $at, $f0
/* 8A833C 802403BC 00000000 */  nop
/* 8A8340 802403C0 46001081 */  sub.s     $f2, $f2, $f0
/* 8A8344 802403C4 46043300 */  add.s     $f12, $f6, $f4
/* 8A8348 802403C8 C640009C */  lwc1      $f0, 0x9c($s2)
/* 8A834C 802403CC 46001501 */  sub.s     $f20, $f2, $f0
/* 8A8350 802403D0 46006084 */  sqrt.s    $f2, $f12
/* 8A8354 802403D4 46021032 */  c.eq.s    $f2, $f2
/* 8A8358 802403D8 00000000 */  nop
/* 8A835C 802403DC 45010004 */  bc1t      .L802403F0
/* 8A8360 802403E0 0060882D */   daddu    $s1, $v1, $zero
/* 8A8364 802403E4 0C0187BC */  jal       sqrtf
/* 8A8368 802403E8 00000000 */   nop
/* 8A836C 802403EC 46000086 */  mov.s     $f2, $f0
.L802403F0:
/* 8A8370 802403F0 44800000 */  mtc1      $zero, $f0
/* 8A8374 802403F4 00000000 */  nop
/* 8A8378 802403F8 4614003C */  c.lt.s    $f0, $f20
/* 8A837C 802403FC 00000000 */  nop
/* 8A8380 80240400 45000016 */  bc1f      .L8024045C
/* 8A8384 80240404 46001106 */   mov.s    $f4, $f2
/* 8A8388 80240408 862200B0 */  lh        $v0, 0xb0($s1)
/* 8A838C 8024040C 44820000 */  mtc1      $v0, $f0
/* 8A8390 80240410 00000000 */  nop
/* 8A8394 80240414 46800020 */  cvt.s.w   $f0, $f0
/* 8A8398 80240418 4600A03C */  c.lt.s    $f20, $f0
/* 8A839C 8024041C 00000000 */  nop
/* 8A83A0 80240420 4500000E */  bc1f      .L8024045C
/* 8A83A4 80240424 00000000 */   nop
/* 8A83A8 80240428 862200B2 */  lh        $v0, 0xb2($s1)
/* 8A83AC 8024042C 3C013F00 */  lui       $at, 0x3f00
/* 8A83B0 80240430 44811000 */  mtc1      $at, $f2
/* 8A83B4 80240434 44820000 */  mtc1      $v0, $f0
/* 8A83B8 80240438 00000000 */  nop
/* 8A83BC 8024043C 46800020 */  cvt.s.w   $f0, $f0
/* 8A83C0 80240440 46020002 */  mul.s     $f0, $f0, $f2
/* 8A83C4 80240444 00000000 */  nop
/* 8A83C8 80240448 4600203C */  c.lt.s    $f4, $f0
/* 8A83CC 8024044C 00000000 */  nop
/* 8A83D0 80240450 45000002 */  bc1f      .L8024045C
/* 8A83D4 80240454 24020001 */   addiu    $v0, $zero, 1
/* 8A83D8 80240458 AE62008C */  sw        $v0, 0x8c($s3)
.L8024045C:
/* 8A83DC 8024045C C6020038 */  lwc1      $f2, 0x38($s0)
/* 8A83E0 80240460 C6400098 */  lwc1      $f0, 0x98($s2)
/* 8A83E4 80240464 46001081 */  sub.s     $f2, $f2, $f0
/* 8A83E8 80240468 46021182 */  mul.s     $f6, $f2, $f2
/* 8A83EC 8024046C 00000000 */  nop
/* 8A83F0 80240470 C64000A0 */  lwc1      $f0, 0xa0($s2)
/* 8A83F4 80240474 C6020040 */  lwc1      $f2, 0x40($s0)
/* 8A83F8 80240478 46001081 */  sub.s     $f2, $f2, $f0
/* 8A83FC 8024047C 46021102 */  mul.s     $f4, $f2, $f2
/* 8A8400 80240480 00000000 */  nop
/* 8A8404 80240484 860200A8 */  lh        $v0, 0xa8($s0)
/* 8A8408 80240488 C602003C */  lwc1      $f2, 0x3c($s0)
/* 8A840C 8024048C 44820000 */  mtc1      $v0, $f0
/* 8A8410 80240490 00000000 */  nop
/* 8A8414 80240494 46800020 */  cvt.s.w   $f0, $f0
/* 8A8418 80240498 46001080 */  add.s     $f2, $f2, $f0
/* 8A841C 8024049C 3C013FC0 */  lui       $at, 0x3fc0
/* 8A8420 802404A0 44810000 */  mtc1      $at, $f0
/* 8A8424 802404A4 00000000 */  nop
/* 8A8428 802404A8 46001081 */  sub.s     $f2, $f2, $f0
/* 8A842C 802404AC 46043300 */  add.s     $f12, $f6, $f4
/* 8A8430 802404B0 C640009C */  lwc1      $f0, 0x9c($s2)
/* 8A8434 802404B4 46001501 */  sub.s     $f20, $f2, $f0
/* 8A8438 802404B8 46006084 */  sqrt.s    $f2, $f12
/* 8A843C 802404BC 46021032 */  c.eq.s    $f2, $f2
/* 8A8440 802404C0 00000000 */  nop
/* 8A8444 802404C4 45010004 */  bc1t      .L802404D8
/* 8A8448 802404C8 00000000 */   nop
/* 8A844C 802404CC 0C0187BC */  jal       sqrtf
/* 8A8450 802404D0 00000000 */   nop
/* 8A8454 802404D4 46000086 */  mov.s     $f2, $f0
.L802404D8:
/* 8A8458 802404D8 44800000 */  mtc1      $zero, $f0
/* 8A845C 802404DC 00000000 */  nop
/* 8A8460 802404E0 4614003C */  c.lt.s    $f0, $f20
/* 8A8464 802404E4 00000000 */  nop
/* 8A8468 802404E8 45000016 */  bc1f      .L80240544
/* 8A846C 802404EC 46001106 */   mov.s    $f4, $f2
/* 8A8470 802404F0 860200A8 */  lh        $v0, 0xa8($s0)
/* 8A8474 802404F4 44820000 */  mtc1      $v0, $f0
/* 8A8478 802404F8 00000000 */  nop
/* 8A847C 802404FC 46800020 */  cvt.s.w   $f0, $f0
/* 8A8480 80240500 4600A03C */  c.lt.s    $f20, $f0
/* 8A8484 80240504 00000000 */  nop
/* 8A8488 80240508 4500000F */  bc1f      .L80240548
/* 8A848C 8024050C 0000882D */   daddu    $s1, $zero, $zero
/* 8A8490 80240510 860200A6 */  lh        $v0, 0xa6($s0)
/* 8A8494 80240514 3C013F00 */  lui       $at, 0x3f00
/* 8A8498 80240518 44811000 */  mtc1      $at, $f2
/* 8A849C 8024051C 44820000 */  mtc1      $v0, $f0
/* 8A84A0 80240520 00000000 */  nop
/* 8A84A4 80240524 46800020 */  cvt.s.w   $f0, $f0
/* 8A84A8 80240528 46020002 */  mul.s     $f0, $f0, $f2
/* 8A84AC 8024052C 00000000 */  nop
/* 8A84B0 80240530 4600203C */  c.lt.s    $f4, $f0
/* 8A84B4 80240534 00000000 */  nop
/* 8A84B8 80240538 45000003 */  bc1f      .L80240548
/* 8A84BC 8024053C 24020001 */   addiu    $v0, $zero, 1
/* 8A84C0 80240540 AE62008C */  sw        $v0, 0x8c($s3)
.L80240544:
/* 8A84C4 80240544 0000882D */  daddu     $s1, $zero, $zero
.L80240548:
/* 8A84C8 80240548 3C013FC0 */  lui       $at, 0x3fc0
/* 8A84CC 8024054C 4481D000 */  mtc1      $at, $f26
/* 8A84D0 80240550 4480C000 */  mtc1      $zero, $f24
/* 8A84D4 80240554 3C013F00 */  lui       $at, 0x3f00
/* 8A84D8 80240558 4481B000 */  mtc1      $at, $f22
.L8024055C:
/* 8A84DC 8024055C 0C00EAD2 */  jal       get_npc_safe
/* 8A84E0 80240560 0220202D */   daddu    $a0, $s1, $zero
/* 8A84E4 80240564 0040802D */  daddu     $s0, $v0, $zero
/* 8A84E8 80240568 52000035 */  beql      $s0, $zero, .L80240640
/* 8A84EC 8024056C 26310001 */   addiu    $s1, $s1, 1
/* 8A84F0 80240570 C6020038 */  lwc1      $f2, 0x38($s0)
/* 8A84F4 80240574 C6400098 */  lwc1      $f0, 0x98($s2)
/* 8A84F8 80240578 46001081 */  sub.s     $f2, $f2, $f0
/* 8A84FC 8024057C 46021182 */  mul.s     $f6, $f2, $f2
/* 8A8500 80240580 00000000 */  nop
/* 8A8504 80240584 C64000A0 */  lwc1      $f0, 0xa0($s2)
/* 8A8508 80240588 C6020040 */  lwc1      $f2, 0x40($s0)
/* 8A850C 8024058C 46001081 */  sub.s     $f2, $f2, $f0
/* 8A8510 80240590 46021102 */  mul.s     $f4, $f2, $f2
/* 8A8514 80240594 00000000 */  nop
/* 8A8518 80240598 860200A8 */  lh        $v0, 0xa8($s0)
/* 8A851C 8024059C C602003C */  lwc1      $f2, 0x3c($s0)
/* 8A8520 802405A0 44820000 */  mtc1      $v0, $f0
/* 8A8524 802405A4 00000000 */  nop
/* 8A8528 802405A8 46800020 */  cvt.s.w   $f0, $f0
/* 8A852C 802405AC 46001080 */  add.s     $f2, $f2, $f0
/* 8A8530 802405B0 461A1081 */  sub.s     $f2, $f2, $f26
/* 8A8534 802405B4 46043300 */  add.s     $f12, $f6, $f4
/* 8A8538 802405B8 C640009C */  lwc1      $f0, 0x9c($s2)
/* 8A853C 802405BC 46001501 */  sub.s     $f20, $f2, $f0
/* 8A8540 802405C0 46006004 */  sqrt.s    $f0, $f12
/* 8A8544 802405C4 46000032 */  c.eq.s    $f0, $f0
/* 8A8548 802405C8 00000000 */  nop
/* 8A854C 802405CC 45010003 */  bc1t      .L802405DC
/* 8A8550 802405D0 00000000 */   nop
/* 8A8554 802405D4 0C0187BC */  jal       sqrtf
/* 8A8558 802405D8 00000000 */   nop
.L802405DC:
/* 8A855C 802405DC 4614C03C */  c.lt.s    $f24, $f20
/* 8A8560 802405E0 00000000 */  nop
/* 8A8564 802405E4 45000015 */  bc1f      .L8024063C
/* 8A8568 802405E8 46000106 */   mov.s    $f4, $f0
/* 8A856C 802405EC 860200A8 */  lh        $v0, 0xa8($s0)
/* 8A8570 802405F0 44820000 */  mtc1      $v0, $f0
/* 8A8574 802405F4 00000000 */  nop
/* 8A8578 802405F8 46800020 */  cvt.s.w   $f0, $f0
/* 8A857C 802405FC 4600A03C */  c.lt.s    $f20, $f0
/* 8A8580 80240600 00000000 */  nop
/* 8A8584 80240604 4500000E */  bc1f      .L80240640
/* 8A8588 80240608 26310001 */   addiu    $s1, $s1, 1
/* 8A858C 8024060C 860200A6 */  lh        $v0, 0xa6($s0)
/* 8A8590 80240610 44820000 */  mtc1      $v0, $f0
/* 8A8594 80240614 00000000 */  nop
/* 8A8598 80240618 46800020 */  cvt.s.w   $f0, $f0
/* 8A859C 8024061C 46160002 */  mul.s     $f0, $f0, $f22
/* 8A85A0 80240620 00000000 */  nop
/* 8A85A4 80240624 4600203C */  c.lt.s    $f4, $f0
/* 8A85A8 80240628 00000000 */  nop
/* 8A85AC 8024062C 45000004 */  bc1f      .L80240640
/* 8A85B0 80240630 24020001 */   addiu    $v0, $zero, 1
/* 8A85B4 80240634 08090193 */  j         .L8024064C
/* 8A85B8 80240638 AE62008C */   sw       $v0, 0x8c($s3)
.L8024063C:
/* 8A85BC 8024063C 26310001 */  addiu     $s1, $s1, 1
.L80240640:
/* 8A85C0 80240640 2A220040 */  slti      $v0, $s1, 0x40
/* 8A85C4 80240644 1440FFC5 */  bnez      $v0, .L8024055C
/* 8A85C8 80240648 00000000 */   nop
.L8024064C:
/* 8A85CC 8024064C 8FBF0020 */  lw        $ra, 0x20($sp)
/* 8A85D0 80240650 8FB3001C */  lw        $s3, 0x1c($sp)
/* 8A85D4 80240654 8FB20018 */  lw        $s2, 0x18($sp)
/* 8A85D8 80240658 8FB10014 */  lw        $s1, 0x14($sp)
/* 8A85DC 8024065C 8FB00010 */  lw        $s0, 0x10($sp)
/* 8A85E0 80240660 D7BA0040 */  ldc1      $f26, 0x40($sp)
/* 8A85E4 80240664 D7B80038 */  ldc1      $f24, 0x38($sp)
/* 8A85E8 80240668 D7B60030 */  ldc1      $f22, 0x30($sp)
/* 8A85EC 8024066C D7B40028 */  ldc1      $f20, 0x28($sp)
/* 8A85F0 80240670 24020002 */  addiu     $v0, $zero, 2
/* 8A85F4 80240674 03E00008 */  jr        $ra
/* 8A85F8 80240678 27BD0048 */   addiu    $sp, $sp, 0x48
/* 8A85FC 8024067C 00000000 */  nop
