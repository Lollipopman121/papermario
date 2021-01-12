.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240238_DB24F8
/* DB24F8 80240238 27BDFF98 */  addiu     $sp, $sp, -0x68
/* DB24FC 8024023C AFB30054 */  sw        $s3, 0x54($sp)
/* DB2500 80240240 0080982D */  daddu     $s3, $a0, $zero
/* DB2504 80240244 AFBF0060 */  sw        $ra, 0x60($sp)
/* DB2508 80240248 AFB5005C */  sw        $s5, 0x5c($sp)
/* DB250C 8024024C AFB40058 */  sw        $s4, 0x58($sp)
/* DB2510 80240250 AFB20050 */  sw        $s2, 0x50($sp)
/* DB2514 80240254 AFB1004C */  sw        $s1, 0x4c($sp)
/* DB2518 80240258 AFB00048 */  sw        $s0, 0x48($sp)
/* DB251C 8024025C 8E710148 */  lw        $s1, 0x148($s3)
/* DB2520 80240260 86240008 */  lh        $a0, 8($s1)
/* DB2524 80240264 0C00EABB */  jal       get_npc_unsafe
/* DB2528 80240268 00A0802D */   daddu    $s0, $a1, $zero
/* DB252C 8024026C 8E63000C */  lw        $v1, 0xc($s3)
/* DB2530 80240270 0260202D */  daddu     $a0, $s3, $zero
/* DB2534 80240274 8C650000 */  lw        $a1, ($v1)
/* DB2538 80240278 0C0B1EAF */  jal       get_variable
/* DB253C 8024027C 0040902D */   daddu    $s2, $v0, $zero
/* DB2540 80240280 AFA00018 */  sw        $zero, 0x18($sp)
/* DB2544 80240284 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DB2548 80240288 8C630030 */  lw        $v1, 0x30($v1)
/* DB254C 8024028C AFA3001C */  sw        $v1, 0x1c($sp)
/* DB2550 80240290 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DB2554 80240294 8C63001C */  lw        $v1, 0x1c($v1)
/* DB2558 80240298 AFA30020 */  sw        $v1, 0x20($sp)
/* DB255C 8024029C 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DB2560 802402A0 8C630024 */  lw        $v1, 0x24($v1)
/* DB2564 802402A4 AFA30024 */  sw        $v1, 0x24($sp)
/* DB2568 802402A8 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DB256C 802402AC 8C630028 */  lw        $v1, 0x28($v1)
/* DB2570 802402B0 27B50018 */  addiu     $s5, $sp, 0x18
/* DB2574 802402B4 AFA30028 */  sw        $v1, 0x28($sp)
/* DB2578 802402B8 8E2300D0 */  lw        $v1, 0xd0($s1)
/* DB257C 802402BC 3C014282 */  lui       $at, 0x4282
/* DB2580 802402C0 44810000 */  mtc1      $at, $f0
/* DB2584 802402C4 8C63002C */  lw        $v1, 0x2c($v1)
/* DB2588 802402C8 0040A02D */  daddu     $s4, $v0, $zero
/* DB258C 802402CC E7A00030 */  swc1      $f0, 0x30($sp)
/* DB2590 802402D0 A7A00034 */  sh        $zero, 0x34($sp)
/* DB2594 802402D4 16000005 */  bnez      $s0, .L802402EC
/* DB2598 802402D8 AFA3002C */   sw       $v1, 0x2c($sp)
/* DB259C 802402DC 8E2200B0 */  lw        $v0, 0xb0($s1)
/* DB25A0 802402E0 30420004 */  andi      $v0, $v0, 4
/* DB25A4 802402E4 10400044 */  beqz      $v0, .L802403F8
/* DB25A8 802402E8 00000000 */   nop
.L802402EC:
/* DB25AC 802402EC 2404F7FF */  addiu     $a0, $zero, -0x801
/* DB25B0 802402F0 AE600070 */  sw        $zero, 0x70($s3)
/* DB25B4 802402F4 A640008E */  sh        $zero, 0x8e($s2)
/* DB25B8 802402F8 8E2200CC */  lw        $v0, 0xcc($s1)
/* DB25BC 802402FC 8E430000 */  lw        $v1, ($s2)
/* DB25C0 80240300 8C420000 */  lw        $v0, ($v0)
/* DB25C4 80240304 00641824 */  and       $v1, $v1, $a0
/* DB25C8 80240308 AE430000 */  sw        $v1, ($s2)
/* DB25CC 8024030C AE420028 */  sw        $v0, 0x28($s2)
/* DB25D0 80240310 8E2200D0 */  lw        $v0, 0xd0($s1)
/* DB25D4 80240314 8C420034 */  lw        $v0, 0x34($v0)
/* DB25D8 80240318 54400005 */  bnel      $v0, $zero, .L80240330
/* DB25DC 8024031C 2402FDFF */   addiu    $v0, $zero, -0x201
/* DB25E0 80240320 34620200 */  ori       $v0, $v1, 0x200
/* DB25E4 80240324 2403FFF7 */  addiu     $v1, $zero, -9
/* DB25E8 80240328 080900CE */  j         .L80240338
/* DB25EC 8024032C 00431024 */   and      $v0, $v0, $v1
.L80240330:
/* DB25F0 80240330 00621024 */  and       $v0, $v1, $v0
/* DB25F4 80240334 34420008 */  ori       $v0, $v0, 8
.L80240338:
/* DB25F8 80240338 AE420000 */  sw        $v0, ($s2)
/* DB25FC 8024033C 8E2200B0 */  lw        $v0, 0xb0($s1)
/* DB2600 80240340 30420004 */  andi      $v0, $v0, 4
/* DB2604 80240344 10400004 */  beqz      $v0, .L80240358
/* DB2608 80240348 24020063 */   addiu    $v0, $zero, 0x63
/* DB260C 8024034C AE620070 */  sw        $v0, 0x70($s3)
/* DB2610 80240350 080900DC */  j         .L80240370
/* DB2614 80240354 AE600074 */   sw       $zero, 0x74($s3)
.L80240358:
/* DB2618 80240358 8E220000 */  lw        $v0, ($s1)
/* DB261C 8024035C 3C034000 */  lui       $v1, 0x4000
/* DB2620 80240360 00431024 */  and       $v0, $v0, $v1
/* DB2624 80240364 10400002 */  beqz      $v0, .L80240370
/* DB2628 80240368 2402000C */   addiu    $v0, $zero, 0xc
/* DB262C 8024036C AE620070 */  sw        $v0, 0x70($s3)
.L80240370:
/* DB2630 80240370 3C06BFFF */  lui       $a2, 0xbfff
/* DB2634 80240374 34C6FFFF */  ori       $a2, $a2, 0xffff
/* DB2638 80240378 27A50038 */  addiu     $a1, $sp, 0x38
/* DB263C 8024037C 2404FFFB */  addiu     $a0, $zero, -5
/* DB2640 80240380 8E2200B0 */  lw        $v0, 0xb0($s1)
/* DB2644 80240384 8E230000 */  lw        $v1, ($s1)
/* DB2648 80240388 3C0142C8 */  lui       $at, 0x42c8
/* DB264C 8024038C 44810000 */  mtc1      $at, $f0
/* DB2650 80240390 00441024 */  and       $v0, $v0, $a0
/* DB2654 80240394 00661824 */  and       $v1, $v1, $a2
/* DB2658 80240398 AE2200B0 */  sw        $v0, 0xb0($s1)
/* DB265C 8024039C AE230000 */  sw        $v1, ($s1)
/* DB2660 802403A0 864200A8 */  lh        $v0, 0xa8($s2)
/* DB2664 802403A4 27A70040 */  addiu     $a3, $sp, 0x40
/* DB2668 802403A8 E7A00044 */  swc1      $f0, 0x44($sp)
/* DB266C 802403AC C6460038 */  lwc1      $f6, 0x38($s2)
/* DB2670 802403B0 C640003C */  lwc1      $f0, 0x3c($s2)
/* DB2674 802403B4 C6420040 */  lwc1      $f2, 0x40($s2)
/* DB2678 802403B8 44822000 */  mtc1      $v0, $f4
/* DB267C 802403BC 00000000 */  nop
/* DB2680 802403C0 46802120 */  cvt.s.w   $f4, $f4
/* DB2684 802403C4 27A20044 */  addiu     $v0, $sp, 0x44
/* DB2688 802403C8 46040000 */  add.s     $f0, $f0, $f4
/* DB268C 802403CC E7A60038 */  swc1      $f6, 0x38($sp)
/* DB2690 802403D0 E7A20040 */  swc1      $f2, 0x40($sp)
/* DB2694 802403D4 E7A0003C */  swc1      $f0, 0x3c($sp)
/* DB2698 802403D8 AFA20010 */  sw        $v0, 0x10($sp)
/* DB269C 802403DC 8E440080 */  lw        $a0, 0x80($s2)
/* DB26A0 802403E0 0C0372DF */  jal       func_800DCB7C
/* DB26A4 802403E4 27A6003C */   addiu    $a2, $sp, 0x3c
/* DB26A8 802403E8 10400003 */  beqz      $v0, .L802403F8
/* DB26AC 802403EC 00000000 */   nop
/* DB26B0 802403F0 C7A0003C */  lwc1      $f0, 0x3c($sp)
/* DB26B4 802403F4 E640003C */  swc1      $f0, 0x3c($s2)
.L802403F8:
/* DB26B8 802403F8 8E630070 */  lw        $v1, 0x70($s3)
/* DB26BC 802403FC 2C620064 */  sltiu     $v0, $v1, 0x64
/* DB26C0 80240400 10400050 */  beqz      $v0, .L80240544
/* DB26C4 80240404 00031080 */   sll      $v0, $v1, 2
/* DB26C8 80240408 3C018024 */  lui       $at, %hi(jtbl_802452C0_DB7580)
/* DB26CC 8024040C 00220821 */  addu      $at, $at, $v0
/* DB26D0 80240410 8C2252C0 */  lw        $v0, %lo(jtbl_802452C0_DB7580)($at)
/* DB26D4 80240414 00400008 */  jr        $v0
/* DB26D8 80240418 00000000 */   nop
glabel L8024041C_DB26DC
/* DB26DC 8024041C 0260202D */  daddu     $a0, $s3, $zero
/* DB26E0 80240420 0280282D */  daddu     $a1, $s4, $zero
/* DB26E4 80240424 0C012568 */  jal       func_800495A0
/* DB26E8 80240428 02A0302D */   daddu    $a2, $s5, $zero
glabel L8024042C_DB26EC
/* DB26EC 8024042C 0260202D */  daddu     $a0, $s3, $zero
/* DB26F0 80240430 0280282D */  daddu     $a1, $s4, $zero
/* DB26F4 80240434 0C0125AE */  jal       func_800496B8
/* DB26F8 80240438 02A0302D */   daddu    $a2, $s5, $zero
/* DB26FC 8024043C 08090151 */  j         .L80240544
/* DB2700 80240440 00000000 */   nop
glabel L80240444_DB2704
/* DB2704 80240444 0260202D */  daddu     $a0, $s3, $zero
/* DB2708 80240448 0280282D */  daddu     $a1, $s4, $zero
/* DB270C 8024044C 0C0126D1 */  jal       base_UnkNpcAIFunc1
/* DB2710 80240450 02A0302D */   daddu    $a2, $s5, $zero
glabel L80240454_DB2714
/* DB2714 80240454 0260202D */  daddu     $a0, $s3, $zero
/* DB2718 80240458 0280282D */  daddu     $a1, $s4, $zero
/* DB271C 8024045C 0C012701 */  jal       func_80049C04
/* DB2720 80240460 02A0302D */   daddu    $a2, $s5, $zero
/* DB2724 80240464 08090151 */  j         .L80240544
/* DB2728 80240468 00000000 */   nop
glabel L8024046C_DB272C
/* DB272C 8024046C 0260202D */  daddu     $a0, $s3, $zero
/* DB2730 80240470 0280282D */  daddu     $a1, $s4, $zero
/* DB2734 80240474 0C01278F */  jal       func_80049E3C
/* DB2738 80240478 02A0302D */   daddu    $a2, $s5, $zero
glabel L8024047C_DB273C
/* DB273C 8024047C 0260202D */  daddu     $a0, $s3, $zero
/* DB2740 80240480 0280282D */  daddu     $a1, $s4, $zero
/* DB2744 80240484 0C0127B3 */  jal       func_80049ECC
/* DB2748 80240488 02A0302D */   daddu    $a2, $s5, $zero
/* DB274C 8024048C 08090151 */  j         .L80240544
/* DB2750 80240490 00000000 */   nop
glabel L80240494_DB2754
/* DB2754 80240494 0260202D */  daddu     $a0, $s3, $zero
/* DB2758 80240498 0280282D */  daddu     $a1, $s4, $zero
/* DB275C 8024049C 0C0127DF */  jal       func_80049F7C
/* DB2760 802404A0 02A0302D */   daddu    $a2, $s5, $zero
glabel L802404A4_DB2764
/* DB2764 802404A4 0260202D */  daddu     $a0, $s3, $zero
/* DB2768 802404A8 0280282D */  daddu     $a1, $s4, $zero
/* DB276C 802404AC 0C012849 */  jal       func_8004A124
/* DB2770 802404B0 02A0302D */   daddu    $a2, $s5, $zero
/* DB2774 802404B4 8E630070 */  lw        $v1, 0x70($s3)
/* DB2778 802404B8 2402000E */  addiu     $v0, $zero, 0xe
/* DB277C 802404BC 14620021 */  bne       $v1, $v0, .L80240544
/* DB2780 802404C0 00000000 */   nop
glabel L802404C4_DB2784
/* DB2784 802404C4 0260202D */  daddu     $a0, $s3, $zero
/* DB2788 802404C8 0280282D */  daddu     $a1, $s4, $zero
/* DB278C 802404CC 0C090000 */  jal       func_80240000_DB22C0
/* DB2790 802404D0 02A0302D */   daddu    $a2, $s5, $zero
/* DB2794 802404D4 8E630070 */  lw        $v1, 0x70($s3)
/* DB2798 802404D8 2402000F */  addiu     $v0, $zero, 0xf
/* DB279C 802404DC 14620019 */  bne       $v1, $v0, .L80240544
/* DB27A0 802404E0 00000000 */   nop
glabel L802404E4_DB27A4
/* DB27A4 802404E4 0260202D */  daddu     $a0, $s3, $zero
/* DB27A8 802404E8 0280282D */  daddu     $a1, $s4, $zero
/* DB27AC 802404EC 0C09001C */  jal       func_80240070_DB2330
/* DB27B0 802404F0 02A0302D */   daddu    $a2, $s5, $zero
/* DB27B4 802404F4 8E630070 */  lw        $v1, 0x70($s3)
/* DB27B8 802404F8 24020010 */  addiu     $v0, $zero, 0x10
/* DB27BC 802404FC 14620011 */  bne       $v1, $v0, .L80240544
/* DB27C0 80240500 00000000 */   nop
glabel L80240504_DB27C4
/* DB27C4 80240504 0260202D */  daddu     $a0, $s3, $zero
/* DB27C8 80240508 0280282D */  daddu     $a1, $s4, $zero
/* DB27CC 8024050C 0C090050 */  jal       func_80240140_DB2400
/* DB27D0 80240510 02A0302D */   daddu    $a2, $s5, $zero
/* DB27D4 80240514 8E630070 */  lw        $v1, 0x70($s3)
/* DB27D8 80240518 24020011 */  addiu     $v0, $zero, 0x11
/* DB27DC 8024051C 14620009 */  bne       $v1, $v0, .L80240544
/* DB27E0 80240520 00000000 */   nop
glabel L80240524_DB27E4
/* DB27E4 80240524 0260202D */  daddu     $a0, $s3, $zero
/* DB27E8 80240528 0280282D */  daddu     $a1, $s4, $zero
/* DB27EC 8024052C 0C090076 */  jal       func_802401D8_DB2498
/* DB27F0 80240530 02A0302D */   daddu    $a2, $s5, $zero
/* DB27F4 80240534 08090151 */  j         .L80240544
/* DB27F8 80240538 00000000 */   nop
glabel L8024053C_DB27FC
/* DB27FC 8024053C 0C0129CF */  jal       func_8004A73C
/* DB2800 80240540 0260202D */   daddu    $a0, $s3, $zero
.L80240544:
glabel L80240544_DB2804
/* DB2804 80240544 8FBF0060 */  lw        $ra, 0x60($sp)
/* DB2808 80240548 8FB5005C */  lw        $s5, 0x5c($sp)
/* DB280C 8024054C 8FB40058 */  lw        $s4, 0x58($sp)
/* DB2810 80240550 8FB30054 */  lw        $s3, 0x54($sp)
/* DB2814 80240554 8FB20050 */  lw        $s2, 0x50($sp)
/* DB2818 80240558 8FB1004C */  lw        $s1, 0x4c($sp)
/* DB281C 8024055C 8FB00048 */  lw        $s0, 0x48($sp)
/* DB2820 80240560 0000102D */  daddu     $v0, $zero, $zero
/* DB2824 80240564 03E00008 */  jr        $ra
/* DB2828 80240568 27BD0068 */   addiu    $sp, $sp, 0x68
