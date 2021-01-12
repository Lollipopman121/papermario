.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240FAC_82426C
/* 82426C 80240FAC 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 824270 80240FB0 AFB10014 */  sw        $s1, 0x14($sp)
/* 824274 80240FB4 0080882D */  daddu     $s1, $a0, $zero
/* 824278 80240FB8 AFBF001C */  sw        $ra, 0x1c($sp)
/* 82427C 80240FBC AFB20018 */  sw        $s2, 0x18($sp)
/* 824280 80240FC0 AFB00010 */  sw        $s0, 0x10($sp)
/* 824284 80240FC4 8E300148 */  lw        $s0, 0x148($s1)
/* 824288 80240FC8 86040008 */  lh        $a0, 8($s0)
/* 82428C 80240FCC 0C00EABB */  jal       get_npc_unsafe
/* 824290 80240FD0 00A0902D */   daddu    $s2, $a1, $zero
/* 824294 80240FD4 8E230078 */  lw        $v1, 0x78($s1)
/* 824298 80240FD8 24630001 */  addiu     $v1, $v1, 1
/* 82429C 80240FDC AE230078 */  sw        $v1, 0x78($s1)
/* 8242A0 80240FE0 8E0400D0 */  lw        $a0, 0xd0($s0)
/* 8242A4 80240FE4 8C840000 */  lw        $a0, ($a0)
/* 8242A8 80240FE8 0064182A */  slt       $v1, $v1, $a0
/* 8242AC 80240FEC 14600002 */  bnez      $v1, .L80240FF8
/* 8242B0 80240FF0 0040282D */   daddu    $a1, $v0, $zero
/* 8242B4 80240FF4 AE200078 */  sw        $zero, 0x78($s1)
.L80240FF8:
/* 8242B8 80240FF8 8E0200CC */  lw        $v0, 0xcc($s0)
/* 8242BC 80240FFC 8C420004 */  lw        $v0, 4($v0)
/* 8242C0 80241000 ACA20028 */  sw        $v0, 0x28($a1)
/* 8242C4 80241004 8E0200D0 */  lw        $v0, 0xd0($s0)
/* 8242C8 80241008 8C42007C */  lw        $v0, 0x7c($v0)
/* 8242CC 8024100C 04410004 */  bgez      $v0, .L80241020
/* 8242D0 80241010 00000000 */   nop
/* 8242D4 80241014 C6400000 */  lwc1      $f0, ($s2)
/* 8242D8 80241018 08090410 */  j         .L80241040
/* 8242DC 8024101C E4A00018 */   swc1     $f0, 0x18($a1)
.L80241020:
/* 8242E0 80241020 3C018025 */  lui       $at, %hi(D_8024E208)
/* 8242E4 80241024 D422E208 */  ldc1      $f2, %lo(D_8024E208)($at)
/* 8242E8 80241028 44820000 */  mtc1      $v0, $f0
/* 8242EC 8024102C 00000000 */  nop
/* 8242F0 80241030 46800021 */  cvt.d.w   $f0, $f0
/* 8242F4 80241034 46220003 */  div.d     $f0, $f0, $f2
/* 8242F8 80241038 46200020 */  cvt.s.d   $f0, $f0
/* 8242FC 8024103C E4A00018 */  swc1      $f0, 0x18($a1)
.L80241040:
/* 824300 80241040 24020001 */  addiu     $v0, $zero, 1
/* 824304 80241044 AE220070 */  sw        $v0, 0x70($s1)
/* 824308 80241048 8FBF001C */  lw        $ra, 0x1c($sp)
/* 82430C 8024104C 8FB20018 */  lw        $s2, 0x18($sp)
/* 824310 80241050 8FB10014 */  lw        $s1, 0x14($sp)
/* 824314 80241054 8FB00010 */  lw        $s0, 0x10($sp)
/* 824318 80241058 03E00008 */  jr        $ra
/* 82431C 8024105C 27BD0020 */   addiu    $sp, $sp, 0x20
