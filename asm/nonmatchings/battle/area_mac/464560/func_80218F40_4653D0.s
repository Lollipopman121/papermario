.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80218F40_4653D0
/* 4653D0 80218F40 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 4653D4 80218F44 AFBF0024 */  sw        $ra, 0x24($sp)
/* 4653D8 80218F48 AFB20020 */  sw        $s2, 0x20($sp)
/* 4653DC 80218F4C AFB1001C */  sw        $s1, 0x1c($sp)
/* 4653E0 80218F50 AFB00018 */  sw        $s0, 0x18($sp)
/* 4653E4 80218F54 8C840148 */  lw        $a0, 0x148($a0)
/* 4653E8 80218F58 0C09A75B */  jal       get_actor
/* 4653EC 80218F5C 00A0802D */   daddu    $s0, $a1, $zero
/* 4653F0 80218F60 0040882D */  daddu     $s1, $v0, $zero
/* 4653F4 80218F64 12000007 */  beqz      $s0, .L80218F84
/* 4653F8 80218F68 2632000C */   addiu    $s2, $s1, 0xc
/* 4653FC 80218F6C C6200144 */  lwc1      $f0, 0x144($s1)
/* 465400 80218F70 C6220148 */  lwc1      $f2, 0x148($s1)
/* 465404 80218F74 C624014C */  lwc1      $f4, 0x14c($s1)
/* 465408 80218F78 E620000C */  swc1      $f0, 0xc($s1)
/* 46540C 80218F7C E6220010 */  swc1      $f2, 0x10($s1)
/* 465410 80218F80 E6240014 */  swc1      $f4, 0x14($s1)
.L80218F84:
/* 465414 80218F84 8E25004C */  lw        $a1, 0x4c($s1)
/* 465418 80218F88 8E260054 */  lw        $a2, 0x54($s1)
/* 46541C 80218F8C 0C09904A */  jal       add_xz_vec3f
/* 465420 80218F90 0240202D */   daddu    $a0, $s2, $zero
/* 465424 80218F94 C622004C */  lwc1      $f2, 0x4c($s1)
/* 465428 80218F98 3C014080 */  lui       $at, 0x4080
/* 46542C 80218F9C 44810000 */  mtc1      $at, $f0
/* 465430 80218FA0 00000000 */  nop
/* 465434 80218FA4 4600103C */  c.lt.s    $f2, $f0
/* 465438 80218FA8 00000000 */  nop
/* 46543C 80218FAC 45000007 */  bc1f      .L80218FCC
/* 465440 80218FB0 0000202D */   daddu    $a0, $zero, $zero
/* 465444 80218FB4 C6200054 */  lwc1      $f0, 0x54($s1)
/* 465448 80218FB8 E7A00010 */  swc1      $f0, 0x10($sp)
/* 46544C 80218FBC 8E25000C */  lw        $a1, 0xc($s1)
/* 465450 80218FC0 8E260010 */  lw        $a2, 0x10($s1)
/* 465454 80218FC4 080863F9 */  j         .L80218FE4
/* 465458 80218FC8 8E270014 */   lw       $a3, 0x14($s1)
.L80218FCC:
/* 46545C 80218FCC C6200054 */  lwc1      $f0, 0x54($s1)
/* 465460 80218FD0 E7A00010 */  swc1      $f0, 0x10($sp)
/* 465464 80218FD4 8E25000C */  lw        $a1, 0xc($s1)
/* 465468 80218FD8 8E260010 */  lw        $a2, 0x10($s1)
/* 46546C 80218FDC 8E270014 */  lw        $a3, 0x14($s1)
/* 465470 80218FE0 24040001 */  addiu     $a0, $zero, 1
.L80218FE4:
/* 465474 80218FE4 0C0990BC */  jal       play_movement_dust_effects
/* 465478 80218FE8 00000000 */   nop
/* 46547C 80218FEC C6400040 */  lwc1      $f0, 0x40($s2)
/* 465480 80218FF0 3C013FF8 */  lui       $at, 0x3ff8
/* 465484 80218FF4 44811800 */  mtc1      $at, $f3
/* 465488 80218FF8 44801000 */  mtc1      $zero, $f2
/* 46548C 80218FFC 46000021 */  cvt.d.s   $f0, $f0
/* 465490 80219000 46220003 */  div.d     $f0, $f0, $f2
/* 465494 80219004 C6420000 */  lwc1      $f2, ($s2)
/* 465498 80219008 46200020 */  cvt.s.d   $f0, $f0
/* 46549C 8021900C E6400040 */  swc1      $f0, 0x40($s2)
/* 4654A0 80219010 E6220144 */  swc1      $f2, 0x144($s1)
/* 4654A4 80219014 C6400004 */  lwc1      $f0, 4($s2)
/* 4654A8 80219018 E6200148 */  swc1      $f0, 0x148($s1)
/* 4654AC 8021901C C6400008 */  lwc1      $f0, 8($s2)
/* 4654B0 80219020 E620014C */  swc1      $f0, 0x14c($s1)
/* 4654B4 80219024 C6400040 */  lwc1      $f0, 0x40($s2)
/* 4654B8 80219028 3C013FF0 */  lui       $at, 0x3ff0
/* 4654BC 8021902C 44811800 */  mtc1      $at, $f3
/* 4654C0 80219030 44801000 */  mtc1      $zero, $f2
/* 4654C4 80219034 46000021 */  cvt.d.s   $f0, $f0
/* 4654C8 80219038 4622003C */  c.lt.d    $f0, $f2
/* 4654CC 8021903C 00000000 */  nop
/* 4654D0 80219040 45010002 */  bc1t      .L8021904C
/* 4654D4 80219044 24020002 */   addiu    $v0, $zero, 2
/* 4654D8 80219048 0000102D */  daddu     $v0, $zero, $zero
.L8021904C:
/* 4654DC 8021904C 8FBF0024 */  lw        $ra, 0x24($sp)
/* 4654E0 80219050 8FB20020 */  lw        $s2, 0x20($sp)
/* 4654E4 80219054 8FB1001C */  lw        $s1, 0x1c($sp)
/* 4654E8 80219058 8FB00018 */  lw        $s0, 0x18($sp)
/* 4654EC 8021905C 03E00008 */  jr        $ra
/* 4654F0 80219060 27BD0028 */   addiu    $sp, $sp, 0x28
