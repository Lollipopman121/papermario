.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240000_9C53E0
/* 9C53E0 80240000 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 9C53E4 80240004 AFB00010 */  sw        $s0, 0x10($sp)
/* 9C53E8 80240008 0080802D */  daddu     $s0, $a0, $zero
/* 9C53EC 8024000C AFBF001C */  sw        $ra, 0x1c($sp)
/* 9C53F0 80240010 AFB20018 */  sw        $s2, 0x18($sp)
/* 9C53F4 80240014 AFB10014 */  sw        $s1, 0x14($sp)
/* 9C53F8 80240018 8E110148 */  lw        $s1, 0x148($s0)
/* 9C53FC 8024001C 86240008 */  lh        $a0, 8($s1)
/* 9C5400 80240020 0C00EABB */  jal       get_npc_unsafe
/* 9C5404 80240024 00A0902D */   daddu    $s2, $a1, $zero
/* 9C5408 80240028 8E2300CC */  lw        $v1, 0xcc($s1)
/* 9C540C 8024002C 0040202D */  daddu     $a0, $v0, $zero
/* 9C5410 80240030 8C630000 */  lw        $v1, ($v1)
/* 9C5414 80240034 24020001 */  addiu     $v0, $zero, 1
/* 9C5418 80240038 AC830028 */  sw        $v1, 0x28($a0)
/* 9C541C 8024003C AE020070 */  sw        $v0, 0x70($s0)
/* 9C5420 80240040 8E220000 */  lw        $v0, ($s1)
/* 9C5424 80240044 3C030010 */  lui       $v1, 0x10
/* 9C5428 80240048 00431024 */  and       $v0, $v0, $v1
/* 9C542C 8024004C 10400004 */  beqz      $v0, .L80240060
/* 9C5430 80240050 00000000 */   nop
/* 9C5434 80240054 C620006C */  lwc1      $f0, 0x6c($s1)
/* 9C5438 80240058 46800020 */  cvt.s.w   $f0, $f0
/* 9C543C 8024005C E480000C */  swc1      $f0, 0xc($a0)
.L80240060:
/* 9C5440 80240060 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 9C5444 80240064 8C420014 */  lw        $v0, 0x14($v0)
/* 9C5448 80240068 1C400004 */  bgtz      $v0, .L8024007C
/* 9C544C 8024006C 00000000 */   nop
/* 9C5450 80240070 C640000C */  lwc1      $f0, 0xc($s2)
/* 9C5454 80240074 08090027 */  j         .L8024009C
/* 9C5458 80240078 E4800018 */   swc1     $f0, 0x18($a0)
.L8024007C:
/* 9C545C 8024007C 3C018025 */  lui       $at, %hi(D_80251A90)
/* 9C5460 80240080 D4221A90 */  ldc1      $f2, %lo(D_80251A90)($at)
/* 9C5464 80240084 44820000 */  mtc1      $v0, $f0
/* 9C5468 80240088 00000000 */  nop
/* 9C546C 8024008C 46800021 */  cvt.d.w   $f0, $f0
/* 9C5470 80240090 46220003 */  div.d     $f0, $f0, $f2
/* 9C5474 80240094 46200020 */  cvt.s.d   $f0, $f0
/* 9C5478 80240098 E4800018 */  swc1      $f0, 0x18($a0)
.L8024009C:
/* 9C547C 8024009C 8FBF001C */  lw        $ra, 0x1c($sp)
/* 9C5480 802400A0 8FB20018 */  lw        $s2, 0x18($sp)
/* 9C5484 802400A4 8FB10014 */  lw        $s1, 0x14($sp)
/* 9C5488 802400A8 8FB00010 */  lw        $s0, 0x10($sp)
/* 9C548C 802400AC 03E00008 */  jr        $ra
/* 9C5490 802400B0 27BD0020 */   addiu    $sp, $sp, 0x20
