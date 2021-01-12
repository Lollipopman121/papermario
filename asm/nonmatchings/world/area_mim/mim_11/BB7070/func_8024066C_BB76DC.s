.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024066C_BB76DC
/* BB76DC 8024066C 0080302D */  daddu     $a2, $a0, $zero
/* BB76E0 80240670 0000382D */  daddu     $a3, $zero, $zero
/* BB76E4 80240674 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* BB76E8 80240678 8C637410 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* BB76EC 8024067C 3C04800B */  lui       $a0, %hi(gCameras)
/* BB76F0 80240680 24841D80 */  addiu     $a0, $a0, %lo(gCameras)
/* BB76F4 80240684 00031080 */  sll       $v0, $v1, 2
/* BB76F8 80240688 00431021 */  addu      $v0, $v0, $v1
/* BB76FC 8024068C 00021080 */  sll       $v0, $v0, 2
/* BB7700 80240690 00431023 */  subu      $v0, $v0, $v1
/* BB7704 80240694 000218C0 */  sll       $v1, $v0, 3
/* BB7708 80240698 00431021 */  addu      $v0, $v0, $v1
/* BB770C 8024069C 000210C0 */  sll       $v0, $v0, 3
/* BB7710 802406A0 10A00005 */  beqz      $a1, .L802406B8
/* BB7714 802406A4 00442021 */   addu     $a0, $v0, $a0
/* BB7718 802406A8 24020064 */  addiu     $v0, $zero, 0x64
/* BB771C 802406AC ACC00074 */  sw        $zero, 0x74($a2)
/* BB7720 802406B0 ACC00078 */  sw        $zero, 0x78($a2)
/* BB7724 802406B4 ACC2007C */  sw        $v0, 0x7c($a2)
.L802406B8:
/* BB7728 802406B8 8CC30074 */  lw        $v1, 0x74($a2)
/* BB772C 802406BC 10600005 */  beqz      $v1, .L802406D4
/* BB7730 802406C0 24020001 */   addiu    $v0, $zero, 1
/* BB7734 802406C4 1062000C */  beq       $v1, $v0, .L802406F8
/* BB7738 802406C8 00000000 */   nop
/* BB773C 802406CC 080901C9 */  j         .L80240724
/* BB7740 802406D0 00000000 */   nop
.L802406D4:
/* BB7744 802406D4 8CC20078 */  lw        $v0, 0x78($a2)
/* BB7748 802406D8 8CC3007C */  lw        $v1, 0x7c($a2)
/* BB774C 802406DC 00431021 */  addu      $v0, $v0, $v1
/* BB7750 802406E0 ACC20078 */  sw        $v0, 0x78($a2)
/* BB7754 802406E4 28423E80 */  slti      $v0, $v0, 0x3e80
/* BB7758 802406E8 1440000E */  bnez      $v0, .L80240724
/* BB775C 802406EC 24020001 */   addiu    $v0, $zero, 1
/* BB7760 802406F0 080901C9 */  j         .L80240724
/* BB7764 802406F4 ACC20074 */   sw       $v0, 0x74($a2)
.L802406F8:
/* BB7768 802406F8 8CC20078 */  lw        $v0, 0x78($a2)
/* BB776C 802406FC 8CC3007C */  lw        $v1, 0x7c($a2)
/* BB7770 80240700 00431021 */  addu      $v0, $v0, $v1
/* BB7774 80240704 ACC20078 */  sw        $v0, 0x78($a2)
/* BB7778 80240708 0060102D */  daddu     $v0, $v1, $zero
/* BB777C 8024070C 8CC30078 */  lw        $v1, 0x78($a2)
/* BB7780 80240710 2442FFFE */  addiu     $v0, $v0, -2
/* BB7784 80240714 28634650 */  slti      $v1, $v1, 0x4650
/* BB7788 80240718 14600002 */  bnez      $v1, .L80240724
/* BB778C 8024071C ACC2007C */   sw       $v0, 0x7c($a2)
/* BB7790 80240720 24070002 */  addiu     $a3, $zero, 2
.L80240724:
/* BB7794 80240724 3C013A89 */  lui       $at, 0x3a89
/* BB7798 80240728 3421A028 */  ori       $at, $at, 0xa028
/* BB779C 8024072C 44811000 */  mtc1      $at, $f2
/* BB77A0 80240730 C4C00078 */  lwc1      $f0, 0x78($a2)
/* BB77A4 80240734 46800020 */  cvt.s.w   $f0, $f0
/* BB77A8 80240738 46020002 */  mul.s     $f0, $f0, $f2
/* BB77AC 8024073C 00000000 */  nop
/* BB77B0 80240740 3C014220 */  lui       $at, 0x4220
/* BB77B4 80240744 44811000 */  mtc1      $at, $f2
/* BB77B8 80240748 00000000 */  nop
/* BB77BC 8024074C 46020000 */  add.s     $f0, $f0, $f2
/* BB77C0 80240750 3C013B29 */  lui       $at, 0x3b29
/* BB77C4 80240754 34214D24 */  ori       $at, $at, 0x4d24
/* BB77C8 80240758 44811000 */  mtc1      $at, $f2
/* BB77CC 8024075C E48004E0 */  swc1      $f0, 0x4e0($a0)
/* BB77D0 80240760 C4C00078 */  lwc1      $f0, 0x78($a2)
/* BB77D4 80240764 46800020 */  cvt.s.w   $f0, $f0
/* BB77D8 80240768 46020002 */  mul.s     $f0, $f0, $f2
/* BB77DC 8024076C 00000000 */  nop
/* BB77E0 80240770 3C01C27E */  lui       $at, 0xc27e
/* BB77E4 80240774 34216666 */  ori       $at, $at, 0x6666
/* BB77E8 80240778 44811000 */  mtc1      $at, $f2
/* BB77EC 8024077C 00000000 */  nop
/* BB77F0 80240780 46020000 */  add.s     $f0, $f0, $f2
/* BB77F4 80240784 00E0102D */  daddu     $v0, $a3, $zero
/* BB77F8 80240788 03E00008 */  jr        $ra
/* BB77FC 8024078C E48004FC */   swc1     $f0, 0x4fc($a0)
