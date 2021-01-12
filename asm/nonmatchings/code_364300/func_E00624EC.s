.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_E00624EC
/* 3647EC E00624EC 27BDFEE0 */  addiu     $sp, $sp, -0x120
/* 3647F0 E00624F0 AFBE0100 */  sw        $fp, 0x100($sp)
/* 3647F4 E00624F4 0080F02D */  daddu     $fp, $a0, $zero
/* 3647F8 E00624F8 3C07DB06 */  lui       $a3, 0xdb06
/* 3647FC E00624FC 34E70024 */  ori       $a3, $a3, 0x24
/* 364800 E0062500 27A40018 */  addiu     $a0, $sp, 0x18
/* 364804 E0062504 AFB100E4 */  sw        $s1, 0xe4($sp)
/* 364808 E0062508 3C110001 */  lui       $s1, 1
/* 36480C E006250C 36311630 */  ori       $s1, $s1, 0x1630
/* 364810 E0062510 AFB300EC */  sw        $s3, 0xec($sp)
/* 364814 E0062514 3C13800A */  lui       $s3, %hi(gMasterGfxPos)
/* 364818 E0062518 2673A66C */  addiu     $s3, $s3, %lo(gMasterGfxPos)
/* 36481C E006251C AFBF0104 */  sw        $ra, 0x104($sp)
/* 364820 E0062520 AFB700FC */  sw        $s7, 0xfc($sp)
/* 364824 E0062524 AFB600F8 */  sw        $s6, 0xf8($sp)
/* 364828 E0062528 AFB500F4 */  sw        $s5, 0xf4($sp)
/* 36482C E006252C AFB400F0 */  sw        $s4, 0xf0($sp)
/* 364830 E0062530 AFB200E8 */  sw        $s2, 0xe8($sp)
/* 364834 E0062534 AFB000E0 */  sw        $s0, 0xe0($sp)
/* 364838 E0062538 F7B80118 */  sdc1      $f24, 0x118($sp)
/* 36483C E006253C F7B60110 */  sdc1      $f22, 0x110($sp)
/* 364840 E0062540 F7B40108 */  sdc1      $f20, 0x108($sp)
/* 364844 E0062544 8E630000 */  lw        $v1, ($s3)
/* 364848 E0062548 8FD2000C */  lw        $s2, 0xc($fp)
/* 36484C E006254C 0060282D */  daddu     $a1, $v1, $zero
/* 364850 E0062550 24630008 */  addiu     $v1, $v1, 8
/* 364854 E0062554 AE630000 */  sw        $v1, ($s3)
/* 364858 E0062558 3C08E006 */  lui       $t0, %hi(D_E00628C0)
/* 36485C E006255C 8D0828C0 */  lw        $t0, %lo(D_E00628C0)($t0)
/* 364860 E0062560 3C06E006 */  lui       $a2, %hi(D_E00628C4)
/* 364864 E0062564 8CC628C4 */  lw        $a2, %lo(D_E00628C4)($a2)
/* 364868 E0062568 3C02E700 */  lui       $v0, 0xe700
/* 36486C E006256C AFA800D8 */  sw        $t0, 0xd8($sp)
/* 364870 E0062570 ACA20000 */  sw        $v0, ($a1)
/* 364874 E0062574 ACA00004 */  sw        $zero, 4($a1)
/* 364878 E0062578 AC670000 */  sw        $a3, ($v1)
/* 36487C E006257C 8FC50010 */  lw        $a1, 0x10($fp)
/* 364880 E0062580 24620008 */  addiu     $v0, $v1, 8
/* 364884 E0062584 AE620000 */  sw        $v0, ($s3)
/* 364888 E0062588 8CA5001C */  lw        $a1, 0x1c($a1)
/* 36488C E006258C 3C02DE00 */  lui       $v0, 0xde00
/* 364890 E0062590 AC620008 */  sw        $v0, 8($v1)
/* 364894 E0062594 3C028000 */  lui       $v0, 0x8000
/* 364898 E0062598 AC66000C */  sw        $a2, 0xc($v1)
/* 36489C E006259C 00A22821 */  addu      $a1, $a1, $v0
/* 3648A0 E00625A0 AC650004 */  sw        $a1, 4($v1)
/* 3648A4 E00625A4 8E450004 */  lw        $a1, 4($s2)
/* 3648A8 E00625A8 8E460008 */  lw        $a2, 8($s2)
/* 3648AC E00625AC 8E47000C */  lw        $a3, 0xc($s2)
/* 3648B0 E00625B0 24630010 */  addiu     $v1, $v1, 0x10
/* 3648B4 E00625B4 0C080108 */  jal       func_E0200420
/* 3648B8 E00625B8 AE630000 */   sw       $v1, ($s3)
/* 3648BC E00625BC 27B50058 */  addiu     $s5, $sp, 0x58
/* 3648C0 E00625C0 4480A000 */  mtc1      $zero, $f20
/* 3648C4 E00625C4 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* 3648C8 E00625C8 8C637410 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* 3648CC E00625CC 3C013F80 */  lui       $at, 0x3f80
/* 3648D0 E00625D0 4481C000 */  mtc1      $at, $f24
/* 3648D4 E00625D4 00031080 */  sll       $v0, $v1, 2
/* 3648D8 E00625D8 00431021 */  addu      $v0, $v0, $v1
/* 3648DC E00625DC 00021080 */  sll       $v0, $v0, 2
/* 3648E0 E00625E0 00431023 */  subu      $v0, $v0, $v1
/* 3648E4 E00625E4 000218C0 */  sll       $v1, $v0, 3
/* 3648E8 E00625E8 00431021 */  addu      $v0, $v0, $v1
/* 3648EC E00625EC 000210C0 */  sll       $v0, $v0, 3
/* 3648F0 E00625F0 4406A000 */  mfc1      $a2, $f20
/* 3648F4 E00625F4 3C01800B */  lui       $at, %hi(D_800B1DEC)
/* 3648F8 E00625F8 00220821 */  addu      $at, $at, $v0
/* 3648FC E00625FC C4201DEC */  lwc1      $f0, %lo(D_800B1DEC)($at)
/* 364900 E0062600 4407C000 */  mfc1      $a3, $f24
/* 364904 E0062604 46000007 */  neg.s     $f0, $f0
/* 364908 E0062608 44050000 */  mfc1      $a1, $f0
/* 36490C E006260C 02A0202D */  daddu     $a0, $s5, $zero
/* 364910 E0062610 0C080104 */  jal       func_E0200410
/* 364914 E0062614 E7B40010 */   swc1     $f20, 0x10($sp)
/* 364918 E0062618 02A0202D */  daddu     $a0, $s5, $zero
/* 36491C E006261C 27A50018 */  addiu     $a1, $sp, 0x18
/* 364920 E0062620 27B00098 */  addiu     $s0, $sp, 0x98
/* 364924 E0062624 0C080114 */  jal       func_E0200450
/* 364928 E0062628 0200302D */   daddu    $a2, $s0, $zero
/* 36492C E006262C 0200202D */  daddu     $a0, $s0, $zero
/* 364930 E0062630 3C108007 */  lui       $s0, %hi(gMatrixListPos)
/* 364934 E0062634 261041F0 */  addiu     $s0, $s0, %lo(gMatrixListPos)
/* 364938 E0062638 3C16800A */  lui       $s6, %hi(gDisplayContext)
/* 36493C E006263C 26D6A674 */  addiu     $s6, $s6, %lo(gDisplayContext)
/* 364940 E0062640 96050000 */  lhu       $a1, ($s0)
/* 364944 E0062644 8EC20000 */  lw        $v0, ($s6)
/* 364948 E0062648 00052980 */  sll       $a1, $a1, 6
/* 36494C E006264C 00B12821 */  addu      $a1, $a1, $s1
/* 364950 E0062650 0C080118 */  jal       func_E0200460
/* 364954 E0062654 00452821 */   addu     $a1, $v0, $a1
/* 364958 E0062658 8E660000 */  lw        $a2, ($s3)
/* 36495C E006265C 24140001 */  addiu     $s4, $zero, 1
/* 364960 E0062660 00C0202D */  daddu     $a0, $a2, $zero
/* 364964 E0062664 24C60008 */  addiu     $a2, $a2, 8
/* 364968 E0062668 AE660000 */  sw        $a2, ($s3)
/* 36496C E006266C 96020000 */  lhu       $v0, ($s0)
/* 364970 E0062670 3C03DA38 */  lui       $v1, 0xda38
/* 364974 E0062674 AC830000 */  sw        $v1, ($a0)
/* 364978 E0062678 00541821 */  addu      $v1, $v0, $s4
/* 36497C E006267C 3042FFFF */  andi      $v0, $v0, 0xffff
/* 364980 E0062680 00021180 */  sll       $v0, $v0, 6
/* 364984 E0062684 A6030000 */  sh        $v1, ($s0)
/* 364988 E0062688 8EC30000 */  lw        $v1, ($s6)
/* 36498C E006268C 00511021 */  addu      $v0, $v0, $s1
/* 364990 E0062690 00621821 */  addu      $v1, $v1, $v0
/* 364994 E0062694 24C20008 */  addiu     $v0, $a2, 8
/* 364998 E0062698 AC830004 */  sw        $v1, 4($a0)
/* 36499C E006269C AE620000 */  sw        $v0, ($s3)
/* 3649A0 E00626A0 3C02FA00 */  lui       $v0, 0xfa00
/* 3649A4 E00626A4 ACC20000 */  sw        $v0, ($a2)
/* 3649A8 E00626A8 92420038 */  lbu       $v0, 0x38($s2)
/* 3649AC E00626AC 92440039 */  lbu       $a0, 0x39($s2)
/* 3649B0 E00626B0 9245003A */  lbu       $a1, 0x3a($s2)
/* 3649B4 E00626B4 92470037 */  lbu       $a3, 0x37($s2)
/* 3649B8 E00626B8 24C30010 */  addiu     $v1, $a2, 0x10
/* 3649BC E00626BC AE630000 */  sw        $v1, ($s3)
/* 3649C0 E00626C0 3C03FB00 */  lui       $v1, 0xfb00
/* 3649C4 E00626C4 ACC30008 */  sw        $v1, 8($a2)
/* 3649C8 E00626C8 00021600 */  sll       $v0, $v0, 0x18
/* 3649CC E00626CC 00042400 */  sll       $a0, $a0, 0x10
/* 3649D0 E00626D0 00441025 */  or        $v0, $v0, $a0
/* 3649D4 E00626D4 00052A00 */  sll       $a1, $a1, 8
/* 3649D8 E00626D8 00451025 */  or        $v0, $v0, $a1
/* 3649DC E00626DC 00471025 */  or        $v0, $v0, $a3
/* 3649E0 E00626E0 ACC20004 */  sw        $v0, 4($a2)
/* 3649E4 E00626E4 9242003B */  lbu       $v0, 0x3b($s2)
/* 3649E8 E00626E8 9244003C */  lbu       $a0, 0x3c($s2)
/* 3649EC E00626EC 9243003D */  lbu       $v1, 0x3d($s2)
/* 3649F0 E00626F0 00021600 */  sll       $v0, $v0, 0x18
/* 3649F4 E00626F4 00042400 */  sll       $a0, $a0, 0x10
/* 3649F8 E00626F8 00441025 */  or        $v0, $v0, $a0
/* 3649FC E00626FC 00031A00 */  sll       $v1, $v1, 8
/* 364A00 E0062700 00431025 */  or        $v0, $v0, $v1
/* 364A04 E0062704 ACC2000C */  sw        $v0, 0xc($a2)
/* 364A08 E0062708 8FC20008 */  lw        $v0, 8($fp)
/* 364A0C E006270C 0282102A */  slt       $v0, $s4, $v0
/* 364A10 E0062710 10400049 */  beqz      $v0, .LE0062838
/* 364A14 E0062714 26520040 */   addiu    $s2, $s2, 0x40
/* 364A18 E0062718 02A0882D */  daddu     $s1, $s5, $zero
/* 364A1C E006271C 4600A586 */  mov.s     $f22, $f20
/* 364A20 E0062720 4600C506 */  mov.s     $f20, $f24
/* 364A24 E0062724 02C0B82D */  daddu     $s7, $s6, $zero
/* 364A28 E0062728 0200B02D */  daddu     $s6, $s0, $zero
/* 364A2C E006272C 3C150001 */  lui       $s5, 1
/* 364A30 E0062730 36B51630 */  ori       $s5, $s5, 0x1630
/* 364A34 E0062734 2650001C */  addiu     $s0, $s2, 0x1c
.LE0062738:
/* 364A38 E0062738 27A40018 */  addiu     $a0, $sp, 0x18
/* 364A3C E006273C 8E05FFE8 */  lw        $a1, -0x18($s0)
/* 364A40 E0062740 8E06FFEC */  lw        $a2, -0x14($s0)
/* 364A44 E0062744 8E07FFF0 */  lw        $a3, -0x10($s0)
/* 364A48 E0062748 0C080108 */  jal       func_E0200420
/* 364A4C E006274C 26940001 */   addiu    $s4, $s4, 1
/* 364A50 E0062750 E7B40010 */  swc1      $f20, 0x10($sp)
/* 364A54 E0062754 8E050010 */  lw        $a1, 0x10($s0)
/* 364A58 E0062758 4406B000 */  mfc1      $a2, $f22
/* 364A5C E006275C 4407B000 */  mfc1      $a3, $f22
/* 364A60 E0062760 0C080104 */  jal       func_E0200410
/* 364A64 E0062764 0220202D */   daddu    $a0, $s1, $zero
/* 364A68 E0062768 0220202D */  daddu     $a0, $s1, $zero
/* 364A6C E006276C 27A50018 */  addiu     $a1, $sp, 0x18
/* 364A70 E0062770 0C080114 */  jal       func_E0200450
/* 364A74 E0062774 00A0302D */   daddu    $a2, $a1, $zero
/* 364A78 E0062778 0220202D */  daddu     $a0, $s1, $zero
/* 364A7C E006277C 8E050004 */  lw        $a1, 4($s0)
/* 364A80 E0062780 8E060000 */  lw        $a2, ($s0)
/* 364A84 E0062784 4407A000 */  mfc1      $a3, $f20
/* 364A88 E0062788 0C080110 */  jal       func_E0200440
/* 364A8C E006278C 26100040 */   addiu    $s0, $s0, 0x40
/* 364A90 E0062790 0220202D */  daddu     $a0, $s1, $zero
/* 364A94 E0062794 27A50018 */  addiu     $a1, $sp, 0x18
/* 364A98 E0062798 0C080114 */  jal       func_E0200450
/* 364A9C E006279C 00A0302D */   daddu    $a2, $a1, $zero
/* 364AA0 E00627A0 27A40018 */  addiu     $a0, $sp, 0x18
/* 364AA4 E00627A4 96C50000 */  lhu       $a1, ($s6)
/* 364AA8 E00627A8 8EE20000 */  lw        $v0, ($s7)
/* 364AAC E00627AC 00052980 */  sll       $a1, $a1, 6
/* 364AB0 E00627B0 00B52821 */  addu      $a1, $a1, $s5
/* 364AB4 E00627B4 0C080118 */  jal       func_E0200460
/* 364AB8 E00627B8 00452821 */   addu     $a1, $v0, $a1
/* 364ABC E00627BC 3C06D838 */  lui       $a2, 0xd838
/* 364AC0 E00627C0 8E640000 */  lw        $a0, ($s3)
/* 364AC4 E00627C4 34C60002 */  ori       $a2, $a2, 2
/* 364AC8 E00627C8 0080282D */  daddu     $a1, $a0, $zero
/* 364ACC E00627CC 24840008 */  addiu     $a0, $a0, 8
/* 364AD0 E00627D0 AE640000 */  sw        $a0, ($s3)
/* 364AD4 E00627D4 96C20000 */  lhu       $v0, ($s6)
/* 364AD8 E00627D8 3C03DA38 */  lui       $v1, 0xda38
/* 364ADC E00627DC ACA30000 */  sw        $v1, ($a1)
/* 364AE0 E00627E0 24430001 */  addiu     $v1, $v0, 1
/* 364AE4 E00627E4 3042FFFF */  andi      $v0, $v0, 0xffff
/* 364AE8 E00627E8 00021180 */  sll       $v0, $v0, 6
/* 364AEC E00627EC A6C30000 */  sh        $v1, ($s6)
/* 364AF0 E00627F0 8EE30000 */  lw        $v1, ($s7)
/* 364AF4 E00627F4 00551021 */  addu      $v0, $v0, $s5
/* 364AF8 E00627F8 00621821 */  addu      $v1, $v1, $v0
/* 364AFC E00627FC 24820008 */  addiu     $v0, $a0, 8
/* 364B00 E0062800 ACA30004 */  sw        $v1, 4($a1)
/* 364B04 E0062804 AE620000 */  sw        $v0, ($s3)
/* 364B08 E0062808 3C02DE00 */  lui       $v0, 0xde00
/* 364B0C E006280C AC820000 */  sw        $v0, ($a0)
/* 364B10 E0062810 8FA800D8 */  lw        $t0, 0xd8($sp)
/* 364B14 E0062814 24020040 */  addiu     $v0, $zero, 0x40
/* 364B18 E0062818 AC860008 */  sw        $a2, 8($a0)
/* 364B1C E006281C AC82000C */  sw        $v0, 0xc($a0)
/* 364B20 E0062820 AC880004 */  sw        $t0, 4($a0)
/* 364B24 E0062824 8FC20008 */  lw        $v0, 8($fp)
/* 364B28 E0062828 24840010 */  addiu     $a0, $a0, 0x10
/* 364B2C E006282C 0282102A */  slt       $v0, $s4, $v0
/* 364B30 E0062830 1440FFC1 */  bnez      $v0, .LE0062738
/* 364B34 E0062834 AE640000 */   sw       $a0, ($s3)
.LE0062838:
/* 364B38 E0062838 3C03D838 */  lui       $v1, 0xd838
/* 364B3C E006283C 3C04800A */  lui       $a0, %hi(gMasterGfxPos)
/* 364B40 E0062840 2484A66C */  addiu     $a0, $a0, %lo(gMasterGfxPos)
/* 364B44 E0062844 8C820000 */  lw        $v0, ($a0)
/* 364B48 E0062848 34630002 */  ori       $v1, $v1, 2
/* 364B4C E006284C 0040282D */  daddu     $a1, $v0, $zero
/* 364B50 E0062850 24420008 */  addiu     $v0, $v0, 8
/* 364B54 E0062854 AC820000 */  sw        $v0, ($a0)
/* 364B58 E0062858 ACA30000 */  sw        $v1, ($a1)
/* 364B5C E006285C 24030040 */  addiu     $v1, $zero, 0x40
/* 364B60 E0062860 ACA30004 */  sw        $v1, 4($a1)
/* 364B64 E0062864 24430008 */  addiu     $v1, $v0, 8
/* 364B68 E0062868 AC830000 */  sw        $v1, ($a0)
/* 364B6C E006286C 3C03E700 */  lui       $v1, 0xe700
/* 364B70 E0062870 AC430000 */  sw        $v1, ($v0)
/* 364B74 E0062874 AC400004 */  sw        $zero, 4($v0)
/* 364B78 E0062878 8FBF0104 */  lw        $ra, 0x104($sp)
/* 364B7C E006287C 8FBE0100 */  lw        $fp, 0x100($sp)
/* 364B80 E0062880 8FB700FC */  lw        $s7, 0xfc($sp)
/* 364B84 E0062884 8FB600F8 */  lw        $s6, 0xf8($sp)
/* 364B88 E0062888 8FB500F4 */  lw        $s5, 0xf4($sp)
/* 364B8C E006288C 8FB400F0 */  lw        $s4, 0xf0($sp)
/* 364B90 E0062890 8FB300EC */  lw        $s3, 0xec($sp)
/* 364B94 E0062894 8FB200E8 */  lw        $s2, 0xe8($sp)
/* 364B98 E0062898 8FB100E4 */  lw        $s1, 0xe4($sp)
/* 364B9C E006289C 8FB000E0 */  lw        $s0, 0xe0($sp)
/* 364BA0 E00628A0 D7B80118 */  ldc1      $f24, 0x118($sp)
/* 364BA4 E00628A4 D7B60110 */  ldc1      $f22, 0x110($sp)
/* 364BA8 E00628A8 D7B40108 */  ldc1      $f20, 0x108($sp)
/* 364BAC E00628AC 03E00008 */  jr        $ra
/* 364BB0 E00628B0 27BD0120 */   addiu    $sp, $sp, 0x120
/* 364BB4 E00628B4 00000000 */  nop
/* 364BB8 E00628B8 00000000 */  nop
/* 364BBC E00628BC 00000000 */  nop
