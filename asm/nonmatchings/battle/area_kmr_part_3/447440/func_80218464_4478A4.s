.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80218464_4478A4
/* 4478A4 80218464 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 4478A8 80218468 AFB40020 */  sw        $s4, 0x20($sp)
/* 4478AC 8021846C 0080A02D */  daddu     $s4, $a0, $zero
/* 4478B0 80218470 AFBF0024 */  sw        $ra, 0x24($sp)
/* 4478B4 80218474 AFB3001C */  sw        $s3, 0x1c($sp)
/* 4478B8 80218478 AFB20018 */  sw        $s2, 0x18($sp)
/* 4478BC 8021847C AFB10014 */  sw        $s1, 0x14($sp)
/* 4478C0 80218480 AFB00010 */  sw        $s0, 0x10($sp)
/* 4478C4 80218484 8E92000C */  lw        $s2, 0xc($s4)
/* 4478C8 80218488 8E450000 */  lw        $a1, ($s2)
/* 4478CC 8021848C 0C0B1EAF */  jal       get_variable
/* 4478D0 80218490 26520004 */   addiu    $s2, $s2, 4
/* 4478D4 80218494 8E450000 */  lw        $a1, ($s2)
/* 4478D8 80218498 26520004 */  addiu     $s2, $s2, 4
/* 4478DC 8021849C 0280202D */  daddu     $a0, $s4, $zero
/* 4478E0 802184A0 0C0B1EAF */  jal       get_variable
/* 4478E4 802184A4 0040802D */   daddu    $s0, $v0, $zero
/* 4478E8 802184A8 8E450000 */  lw        $a1, ($s2)
/* 4478EC 802184AC 26520004 */  addiu     $s2, $s2, 4
/* 4478F0 802184B0 0280202D */  daddu     $a0, $s4, $zero
/* 4478F4 802184B4 0C0B1EAF */  jal       get_variable
/* 4478F8 802184B8 0040882D */   daddu    $s1, $v0, $zero
/* 4478FC 802184BC 0040982D */  daddu     $s3, $v0, $zero
/* 447900 802184C0 8E450000 */  lw        $a1, ($s2)
/* 447904 802184C4 26520004 */  addiu     $s2, $s2, 4
/* 447908 802184C8 0280202D */  daddu     $a0, $s4, $zero
/* 44790C 802184CC 0C0B1EAF */  jal       get_variable
/* 447910 802184D0 02709823 */   subu     $s3, $s3, $s0
/* 447914 802184D4 0040802D */  daddu     $s0, $v0, $zero
/* 447918 802184D8 0280202D */  daddu     $a0, $s4, $zero
/* 44791C 802184DC 8E450000 */  lw        $a1, ($s2)
/* 447920 802184E0 0C0B1EAF */  jal       get_variable
/* 447924 802184E4 02118023 */   subu     $s0, $s0, $s1
/* 447928 802184E8 16600006 */  bnez      $s3, .L80218504
/* 44792C 802184EC 00000000 */   nop
/* 447930 802184F0 16000004 */  bnez      $s0, .L80218504
/* 447934 802184F4 0280202D */   daddu    $a0, $s4, $zero
/* 447938 802184F8 8E450000 */  lw        $a1, ($s2)
/* 44793C 802184FC 0808614B */  j         .L8021852C
/* 447940 80218500 0040302D */   daddu    $a2, $v0, $zero
.L80218504:
/* 447944 80218504 44936000 */  mtc1      $s3, $f12
/* 447948 80218508 00000000 */  nop
/* 44794C 8021850C 46806320 */  cvt.s.w   $f12, $f12
/* 447950 80218510 44907000 */  mtc1      $s0, $f14
/* 447954 80218514 00000000 */  nop
/* 447958 80218518 0C0860B6 */  jal       func_802182D8_447718
/* 44795C 8021851C 468073A0 */   cvt.s.w  $f14, $f14
/* 447960 80218520 0280202D */  daddu     $a0, $s4, $zero
/* 447964 80218524 8E450000 */  lw        $a1, ($s2)
/* 447968 80218528 2446FFA6 */  addiu     $a2, $v0, -0x5a
.L8021852C:
/* 44796C 8021852C 0C0B2026 */  jal       set_variable
/* 447970 80218530 00000000 */   nop
/* 447974 80218534 24020002 */  addiu     $v0, $zero, 2
/* 447978 80218538 8FBF0024 */  lw        $ra, 0x24($sp)
/* 44797C 8021853C 8FB40020 */  lw        $s4, 0x20($sp)
/* 447980 80218540 8FB3001C */  lw        $s3, 0x1c($sp)
/* 447984 80218544 8FB20018 */  lw        $s2, 0x18($sp)
/* 447988 80218548 8FB10014 */  lw        $s1, 0x14($sp)
/* 44798C 8021854C 8FB00010 */  lw        $s0, 0x10($sp)
/* 447990 80218550 03E00008 */  jr        $ra
/* 447994 80218554 27BD0028 */   addiu    $sp, $sp, 0x28
/* 447998 80218558 00000000 */  nop
/* 44799C 8021855C 00000000 */  nop
