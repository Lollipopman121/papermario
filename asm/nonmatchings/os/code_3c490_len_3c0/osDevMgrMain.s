.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel osDevMgrMain
/* 3C490 80061090 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 3C494 80061094 AFB20030 */  sw        $s2, 0x30($sp)
/* 3C498 80061098 00809021 */  addu      $s2, $a0, $zero
/* 3C49C 8006109C AFB40038 */  sw        $s4, 0x38($sp)
/* 3C4A0 800610A0 24140002 */  addiu     $s4, $zero, 2
/* 3C4A4 800610A4 AFB5003C */  sw        $s5, 0x3c($sp)
/* 3C4A8 800610A8 24150001 */  addiu     $s5, $zero, 1
/* 3C4AC 800610AC AFBF0040 */  sw        $ra, 0x40($sp)
/* 3C4B0 800610B0 AFB30034 */  sw        $s3, 0x34($sp)
/* 3C4B4 800610B4 AFB1002C */  sw        $s1, 0x2c($sp)
/* 3C4B8 800610B8 AFB00028 */  sw        $s0, 0x28($sp)
/* 3C4BC 800610BC AFA00018 */  sw        $zero, 0x18($sp)
.L800610C0:
/* 3C4C0 800610C0 8E440008 */  lw        $a0, 8($s2)
/* 3C4C4 800610C4 27A50018 */  addiu     $a1, $sp, 0x18
/* 3C4C8 800610C8 0C0195BC */  jal       osRecvMesg
/* 3C4CC 800610CC 24060001 */   addiu    $a2, $zero, 1
/* 3C4D0 800610D0 8FA20018 */  lw        $v0, 0x18($sp)
/* 3C4D4 800610D4 8C500014 */  lw        $s0, 0x14($v0)
/* 3C4D8 800610D8 1200007C */  beqz      $s0, .L800612CC
/* 3C4DC 800610DC 00000000 */   nop
/* 3C4E0 800610E0 92020004 */  lbu       $v0, 4($s0)
/* 3C4E4 800610E4 14540078 */  bne       $v0, $s4, .L800612C8
/* 3C4E8 800610E8 00000000 */   nop
/* 3C4EC 800610EC 8E020014 */  lw        $v0, 0x14($s0)
/* 3C4F0 800610F0 2C420002 */  sltiu     $v0, $v0, 2
/* 3C4F4 800610F4 10400074 */  beqz      $v0, .L800612C8
/* 3C4F8 800610F8 2402FFFF */   addiu    $v0, $zero, -1
/* 3C4FC 800610FC 9603001A */  lhu       $v1, 0x1a($s0)
/* 3C500 80061100 AE02001C */  sw        $v0, 0x1c($s0)
/* 3C504 80061104 000310C0 */  sll       $v0, $v1, 3
/* 3C508 80061108 00431021 */  addu      $v0, $v0, $v1
/* 3C50C 8006110C 00021080 */  sll       $v0, $v0, 2
/* 3C510 80061110 02021021 */  addu      $v0, $s0, $v0
/* 3C514 80061114 96030018 */  lhu       $v1, 0x18($s0)
/* 3C518 80061118 2451002C */  addiu     $s1, $v0, 0x2c
/* 3C51C 8006111C 24020003 */  addiu     $v0, $zero, 3
/* 3C520 80061120 10620005 */  beq       $v1, $v0, .L80061138
/* 3C524 80061124 00000000 */   nop
/* 3C528 80061128 8E220004 */  lw        $v0, 4($s1)
/* 3C52C 8006112C 8E23000C */  lw        $v1, 0xc($s1)
/* 3C530 80061130 00431023 */  subu      $v0, $v0, $v1
/* 3C534 80061134 AE220004 */  sw        $v0, 4($s1)
.L80061138:
/* 3C538 80061138 96020018 */  lhu       $v0, 0x18($s0)
/* 3C53C 8006113C 14540005 */  bne       $v0, $s4, .L80061154
/* 3C540 80061140 00009821 */   addu     $s3, $zero, $zero
/* 3C544 80061144 8FA20018 */  lw        $v0, 0x18($sp)
/* 3C548 80061148 8C420014 */  lw        $v0, 0x14($v0)
/* 3C54C 8006114C 8C420014 */  lw        $v0, 0x14($v0)
/* 3C550 80061150 2C530001 */  sltiu     $s3, $v0, 1
.L80061154:
/* 3C554 80061154 8E440010 */  lw        $a0, 0x10($s2)
/* 3C558 80061158 27A5001C */  addiu     $a1, $sp, 0x1c
/* 3C55C 8006115C 0C0195BC */  jal       osRecvMesg
/* 3C560 80061160 24060001 */   addiu    $a2, $zero, 1
/* 3C564 80061164 3C040010 */  lui       $a0, 0x10
/* 3C568 80061168 0C01AD0C */  jal       osResetGlobalIntMask
/* 3C56C 8006116C 34840401 */   ori      $a0, $a0, 0x401
/* 3C570 80061170 3C050500 */  lui       $a1, 0x500
/* 3C574 80061174 8FA20018 */  lw        $v0, 0x18($sp)
/* 3C578 80061178 34A50510 */  ori       $a1, $a1, 0x510
/* 3C57C 8006117C 8E030024 */  lw        $v1, 0x24($s0)
/* 3C580 80061180 8C440014 */  lw        $a0, 0x14($v0)
/* 3C584 80061184 3C068000 */  lui       $a2, 0x8000
/* 3C588 80061188 0C01ADB8 */  jal       osEPiRawWriteIo
/* 3C58C 8006118C 00663025 */   or       $a2, $v1, $a2
.L80061190:
/* 3C590 80061190 8E44000C */  lw        $a0, 0xc($s2)
/* 3C594 80061194 27A50020 */  addiu     $a1, $sp, 0x20
/* 3C598 80061198 0C0195BC */  jal       osRecvMesg
/* 3C59C 8006119C 24060001 */   addiu    $a2, $zero, 1
/* 3C5A0 800611A0 8FA20018 */  lw        $v0, 0x18($sp)
/* 3C5A4 800611A4 8C500014 */  lw        $s0, 0x14($v0)
/* 3C5A8 800611A8 9603001A */  lhu       $v1, 0x1a($s0)
/* 3C5AC 800611AC 000310C0 */  sll       $v0, $v1, 3
/* 3C5B0 800611B0 00431021 */  addu      $v0, $v0, $v1
/* 3C5B4 800611B4 00021080 */  sll       $v0, $v0, 2
/* 3C5B8 800611B8 02021021 */  addu      $v0, $s0, $v0
/* 3C5BC 800611BC 2451002C */  addiu     $s1, $v0, 0x2c
/* 3C5C0 800611C0 8E230000 */  lw        $v1, ($s1)
/* 3C5C4 800611C4 2402001D */  addiu     $v0, $zero, 0x1d
/* 3C5C8 800611C8 14620027 */  bne       $v1, $v0, .L80061268
/* 3C5CC 800611CC 02002021 */   addu     $a0, $s0, $zero
/* 3C5D0 800611D0 3C050500 */  lui       $a1, 0x500
/* 3C5D4 800611D4 8E020024 */  lw        $v0, 0x24($s0)
/* 3C5D8 800611D8 34A50510 */  ori       $a1, $a1, 0x510
/* 3C5DC 800611DC 3C061000 */  lui       $a2, 0x1000
/* 3C5E0 800611E0 0C01ADB8 */  jal       osEPiRawWriteIo
/* 3C5E4 800611E4 00463025 */   or       $a2, $v0, $a2
/* 3C5E8 800611E8 8FA20018 */  lw        $v0, 0x18($sp)
/* 3C5EC 800611EC 8E060024 */  lw        $a2, 0x24($s0)
/* 3C5F0 800611F0 8C440014 */  lw        $a0, 0x14($v0)
/* 3C5F4 800611F4 3C050500 */  lui       $a1, 0x500
/* 3C5F8 800611F8 0C01ADB8 */  jal       osEPiRawWriteIo
/* 3C5FC 800611FC 34A50510 */   ori      $a1, $a1, 0x510
/* 3C600 80061200 8FA20018 */  lw        $v0, 0x18($sp)
/* 3C604 80061204 3C050500 */  lui       $a1, 0x500
/* 3C608 80061208 8C440014 */  lw        $a0, 0x14($v0)
/* 3C60C 8006120C 34A50508 */  ori       $a1, $a1, 0x508
/* 3C610 80061210 0C01AD5C */  jal       osEPiRawReadIo
/* 3C614 80061214 27A60024 */   addiu    $a2, $sp, 0x24
/* 3C618 80061218 8FA20024 */  lw        $v0, 0x24($sp)
/* 3C61C 8006121C 3C030200 */  lui       $v1, 0x200
/* 3C620 80061220 00431024 */  and       $v0, $v0, $v1
/* 3C624 80061224 10400008 */  beqz      $v0, .L80061248
/* 3C628 80061228 3C050500 */   lui      $a1, 0x500
/* 3C62C 8006122C 8FA20018 */  lw        $v0, 0x18($sp)
/* 3C630 80061230 34A50510 */  ori       $a1, $a1, 0x510
/* 3C634 80061234 8E030024 */  lw        $v1, 0x24($s0)
/* 3C638 80061238 8C440014 */  lw        $a0, 0x14($v0)
/* 3C63C 8006123C 3C060100 */  lui       $a2, 0x100
/* 3C640 80061240 0C01ADB8 */  jal       osEPiRawWriteIo
/* 3C644 80061244 00663025 */   or       $a2, $v1, $a2
.L80061248:
/* 3C648 80061248 3C03A460 */  lui       $v1, 0xa460
/* 3C64C 8006124C 34630010 */  ori       $v1, $v1, 0x10
/* 3C650 80061250 3C040010 */  lui       $a0, 0x10
/* 3C654 80061254 24020004 */  addiu     $v0, $zero, 4
/* 3C658 80061258 AE220000 */  sw        $v0, ($s1)
/* 3C65C 8006125C AC740000 */  sw        $s4, ($v1)
/* 3C660 80061260 0C01ACFC */  jal       osSetGlobalIntMask
/* 3C664 80061264 34840C01 */   ori      $a0, $a0, 0xc01
.L80061268:
/* 3C668 80061268 8FA50018 */  lw        $a1, 0x18($sp)
/* 3C66C 8006126C 8CA40004 */  lw        $a0, 4($a1)
/* 3C670 80061270 0C019608 */  jal       osSendMesg
/* 3C674 80061274 00003021 */   addu     $a2, $zero, $zero
/* 3C678 80061278 16750006 */  bne       $s3, $s5, .L80061294
/* 3C67C 8006127C 00000000 */   nop
/* 3C680 80061280 8FA20018 */  lw        $v0, 0x18($sp)
/* 3C684 80061284 8C420014 */  lw        $v0, 0x14($v0)
/* 3C688 80061288 8C42002C */  lw        $v0, 0x2c($v0)
/* 3C68C 8006128C 1040FFC0 */  beqz      $v0, .L80061190
/* 3C690 80061290 00009821 */   addu     $s3, $zero, $zero
.L80061294:
/* 3C694 80061294 8E440010 */  lw        $a0, 0x10($s2)
/* 3C698 80061298 00002821 */  addu      $a1, $zero, $zero
/* 3C69C 8006129C 0C019608 */  jal       osSendMesg
/* 3C6A0 800612A0 00003021 */   addu     $a2, $zero, $zero
/* 3C6A4 800612A4 8FA20018 */  lw        $v0, 0x18($sp)
/* 3C6A8 800612A8 8C420014 */  lw        $v0, 0x14($v0)
/* 3C6AC 800612AC 9442001A */  lhu       $v0, 0x1a($v0)
/* 3C6B0 800612B0 1455FF83 */  bne       $v0, $s5, .L800610C0
/* 3C6B4 800612B4 00000000 */   nop
/* 3C6B8 800612B8 0C019890 */  jal       osYieldThread
/* 3C6BC 800612BC 00000000 */   nop
/* 3C6C0 800612C0 08018430 */  j         .L800610C0
/* 3C6C4 800612C4 00000000 */   nop
.L800612C8:
/* 3C6C8 800612C8 8FA20018 */  lw        $v0, 0x18($sp)
.L800612CC:
/* 3C6CC 800612CC 94420000 */  lhu       $v0, ($v0)
/* 3C6D0 800612D0 2443FFF6 */  addiu     $v1, $v0, -0xa
/* 3C6D4 800612D4 2C620007 */  sltiu     $v0, $v1, 7
/* 3C6D8 800612D8 10400042 */  beqz      $v0, .L800613E4
/* 3C6DC 800612DC 00031080 */   sll      $v0, $v1, 2
/* 3C6E0 800612E0 3C01800A */  lui       $at, %hi(jtbl_80099B20_74F20)
/* 3C6E4 800612E4 00220821 */  addu      $at, $at, $v0
/* 3C6E8 800612E8 8C229B20 */  lw        $v0, %lo(jtbl_80099B20_74F20)($at)
/* 3C6EC 800612EC 00400008 */  jr        $v0
/* 3C6F0 800612F0 00000000 */   nop
glabel L800612F4_3C6F4
/* 3C6F4 800612F4 8E440010 */  lw        $a0, 0x10($s2)
/* 3C6F8 800612F8 27A5001C */  addiu     $a1, $sp, 0x1c
/* 3C6FC 800612FC 0C0195BC */  jal       osRecvMesg
/* 3C700 80061300 24060001 */   addiu    $a2, $zero, 1
/* 3C704 80061304 8FA20018 */  lw        $v0, 0x18($sp)
/* 3C708 80061308 8C45000C */  lw        $a1, 0xc($v0)
/* 3C70C 8006130C 8C460008 */  lw        $a2, 8($v0)
/* 3C710 80061310 8C470010 */  lw        $a3, 0x10($v0)
/* 3C714 80061314 8E420014 */  lw        $v0, 0x14($s2)
/* 3C718 80061318 0040F809 */  jalr      $v0
/* 3C71C 8006131C 00002021 */   addu     $a0, $zero, $zero
/* 3C720 80061320 080184FA */  j         .L800613E8
/* 3C724 80061324 00000000 */   nop
glabel L80061328_3C728
/* 3C728 80061328 8E440010 */  lw        $a0, 0x10($s2)
/* 3C72C 8006132C 27A5001C */  addiu     $a1, $sp, 0x1c
/* 3C730 80061330 0C0195BC */  jal       osRecvMesg
/* 3C734 80061334 24060001 */   addiu    $a2, $zero, 1
/* 3C738 80061338 8FA20018 */  lw        $v0, 0x18($sp)
/* 3C73C 8006133C 8C45000C */  lw        $a1, 0xc($v0)
/* 3C740 80061340 8C460008 */  lw        $a2, 8($v0)
/* 3C744 80061344 8C470010 */  lw        $a3, 0x10($v0)
/* 3C748 80061348 8E420014 */  lw        $v0, 0x14($s2)
/* 3C74C 8006134C 0040F809 */  jalr      $v0
/* 3C750 80061350 24040001 */   addiu    $a0, $zero, 1
/* 3C754 80061354 080184FA */  j         .L800613E8
/* 3C758 80061358 00000000 */   nop
glabel L8006135C_3C75C
/* 3C75C 8006135C 8E440010 */  lw        $a0, 0x10($s2)
/* 3C760 80061360 27A5001C */  addiu     $a1, $sp, 0x1c
/* 3C764 80061364 0C0195BC */  jal       osRecvMesg
/* 3C768 80061368 24060001 */   addiu    $a2, $zero, 1
/* 3C76C 8006136C 8FA20018 */  lw        $v0, 0x18($sp)
/* 3C770 80061370 8C430010 */  lw        $v1, 0x10($v0)
/* 3C774 80061374 AFA30010 */  sw        $v1, 0x10($sp)
/* 3C778 80061378 8C440014 */  lw        $a0, 0x14($v0)
/* 3C77C 8006137C 8C46000C */  lw        $a2, 0xc($v0)
/* 3C780 80061380 8C470008 */  lw        $a3, 8($v0)
/* 3C784 80061384 8E420018 */  lw        $v0, 0x18($s2)
/* 3C788 80061388 0040F809 */  jalr      $v0
/* 3C78C 8006138C 00002821 */   addu     $a1, $zero, $zero
/* 3C790 80061390 080184FA */  j         .L800613E8
/* 3C794 80061394 00000000 */   nop
glabel L80061398_3C798
/* 3C798 80061398 8E440010 */  lw        $a0, 0x10($s2)
/* 3C79C 8006139C 27A5001C */  addiu     $a1, $sp, 0x1c
/* 3C7A0 800613A0 0C0195BC */  jal       osRecvMesg
/* 3C7A4 800613A4 24060001 */   addiu    $a2, $zero, 1
/* 3C7A8 800613A8 8FA20018 */  lw        $v0, 0x18($sp)
/* 3C7AC 800613AC 8C430010 */  lw        $v1, 0x10($v0)
/* 3C7B0 800613B0 AFA30010 */  sw        $v1, 0x10($sp)
/* 3C7B4 800613B4 8C440014 */  lw        $a0, 0x14($v0)
/* 3C7B8 800613B8 8C46000C */  lw        $a2, 0xc($v0)
/* 3C7BC 800613BC 8C470008 */  lw        $a3, 8($v0)
/* 3C7C0 800613C0 8E420018 */  lw        $v0, 0x18($s2)
/* 3C7C4 800613C4 0040F809 */  jalr      $v0
/* 3C7C8 800613C8 24050001 */   addiu    $a1, $zero, 1
/* 3C7CC 800613CC 080184FA */  j         .L800613E8
/* 3C7D0 800613D0 00000000 */   nop
glabel L800613D4_3C7D4
/* 3C7D4 800613D4 8FA50018 */  lw        $a1, 0x18($sp)
/* 3C7D8 800613D8 8CA40004 */  lw        $a0, 4($a1)
/* 3C7DC 800613DC 0C019608 */  jal       osSendMesg
/* 3C7E0 800613E0 00003021 */   addu     $a2, $zero, $zero
.L800613E4:
glabel L800613E4_3C7E4
/* 3C7E4 800613E4 2402FFFF */  addiu     $v0, $zero, -1
.L800613E8:
/* 3C7E8 800613E8 1440FF35 */  bnez      $v0, .L800610C0
/* 3C7EC 800613EC 27A50020 */   addiu    $a1, $sp, 0x20
/* 3C7F0 800613F0 8E44000C */  lw        $a0, 0xc($s2)
/* 3C7F4 800613F4 0C0195BC */  jal       osRecvMesg
/* 3C7F8 800613F8 24060001 */   addiu    $a2, $zero, 1
/* 3C7FC 800613FC 8FA50018 */  lw        $a1, 0x18($sp)
/* 3C800 80061400 8CA40004 */  lw        $a0, 4($a1)
/* 3C804 80061404 0C019608 */  jal       osSendMesg
/* 3C808 80061408 00003021 */   addu     $a2, $zero, $zero
/* 3C80C 8006140C 8E440010 */  lw        $a0, 0x10($s2)
/* 3C810 80061410 00002821 */  addu      $a1, $zero, $zero
/* 3C814 80061414 0C019608 */  jal       osSendMesg
/* 3C818 80061418 00003021 */   addu     $a2, $zero, $zero
/* 3C81C 8006141C 08018430 */  j         .L800610C0
/* 3C820 80061420 00000000 */   nop
/* 3C824 80061424 8FBF0040 */  lw        $ra, 0x40($sp)
/* 3C828 80061428 8FB5003C */  lw        $s5, 0x3c($sp)
/* 3C82C 8006142C 8FB40038 */  lw        $s4, 0x38($sp)
/* 3C830 80061430 8FB30034 */  lw        $s3, 0x34($sp)
/* 3C834 80061434 8FB20030 */  lw        $s2, 0x30($sp)
/* 3C838 80061438 8FB1002C */  lw        $s1, 0x2c($sp)
/* 3C83C 8006143C 8FB00028 */  lw        $s0, 0x28($sp)
/* 3C840 80061440 03E00008 */  jr        $ra
/* 3C844 80061444 27BD0048 */   addiu    $sp, $sp, 0x48
/* 3C848 80061448 00000000 */  nop
/* 3C84C 8006144C 00000000 */  nop
