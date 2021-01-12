.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80242AF8_9121A8
/* 9121A8 80242AF8 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 9121AC 80242AFC AFB3003C */  sw        $s3, 0x3c($sp)
/* 9121B0 80242B00 0080982D */  daddu     $s3, $a0, $zero
/* 9121B4 80242B04 AFBF0040 */  sw        $ra, 0x40($sp)
/* 9121B8 80242B08 AFB20038 */  sw        $s2, 0x38($sp)
/* 9121BC 80242B0C AFB10034 */  sw        $s1, 0x34($sp)
/* 9121C0 80242B10 AFB00030 */  sw        $s0, 0x30($sp)
/* 9121C4 80242B14 8E720148 */  lw        $s2, 0x148($s3)
/* 9121C8 80242B18 0C00EABB */  jal       get_npc_unsafe
/* 9121CC 80242B1C 86440008 */   lh       $a0, 8($s2)
/* 9121D0 80242B20 0040802D */  daddu     $s0, $v0, $zero
/* 9121D4 80242B24 0200202D */  daddu     $a0, $s0, $zero
/* 9121D8 80242B28 0C00F598 */  jal       func_8003D660
/* 9121DC 80242B2C 24050001 */   addiu    $a1, $zero, 1
/* 9121E0 80242B30 8E050018 */  lw        $a1, 0x18($s0)
/* 9121E4 80242B34 8E06000C */  lw        $a2, 0xc($s0)
/* 9121E8 80242B38 0C00EA95 */  jal       npc_move_heading
/* 9121EC 80242B3C 0200202D */   daddu    $a0, $s0, $zero
/* 9121F0 80242B40 8E4300D0 */  lw        $v1, 0xd0($s2)
/* 9121F4 80242B44 C6000040 */  lwc1      $f0, 0x40($s0)
/* 9121F8 80242B48 C462001C */  lwc1      $f2, 0x1c($v1)
/* 9121FC 80242B4C 468010A0 */  cvt.s.w   $f2, $f2
/* 912200 80242B50 C4640024 */  lwc1      $f4, 0x24($v1)
/* 912204 80242B54 46802120 */  cvt.s.w   $f4, $f4
/* 912208 80242B58 E7A00010 */  swc1      $f0, 0x10($sp)
/* 91220C 80242B5C 8E4200D0 */  lw        $v0, 0xd0($s2)
/* 912210 80242B60 44051000 */  mfc1      $a1, $f2
/* 912214 80242B64 C4400028 */  lwc1      $f0, 0x28($v0)
/* 912218 80242B68 46800020 */  cvt.s.w   $f0, $f0
/* 91221C 80242B6C E7A00014 */  swc1      $f0, 0x14($sp)
/* 912220 80242B70 8E4200D0 */  lw        $v0, 0xd0($s2)
/* 912224 80242B74 44062000 */  mfc1      $a2, $f4
/* 912228 80242B78 C440002C */  lwc1      $f0, 0x2c($v0)
/* 91222C 80242B7C 46800020 */  cvt.s.w   $f0, $f0
/* 912230 80242B80 E7A00018 */  swc1      $f0, 0x18($sp)
/* 912234 80242B84 8C640030 */  lw        $a0, 0x30($v1)
/* 912238 80242B88 0C0123F5 */  jal       is_point_within_region
/* 91223C 80242B8C 8E070038 */   lw       $a3, 0x38($s0)
/* 912240 80242B90 C6000038 */  lwc1      $f0, 0x38($s0)
/* 912244 80242B94 C602003C */  lwc1      $f2, 0x3c($s0)
/* 912248 80242B98 C6040040 */  lwc1      $f4, 0x40($s0)
/* 91224C 80242B9C 3C013F80 */  lui       $at, 0x3f80
/* 912250 80242BA0 44813000 */  mtc1      $at, $f6
/* 912254 80242BA4 E7A00020 */  swc1      $f0, 0x20($sp)
/* 912258 80242BA8 E7A20024 */  swc1      $f2, 0x24($sp)
/* 91225C 80242BAC E7A40028 */  swc1      $f4, 0x28($sp)
/* 912260 80242BB0 E7A60010 */  swc1      $f6, 0x10($sp)
/* 912264 80242BB4 C600000C */  lwc1      $f0, 0xc($s0)
/* 912268 80242BB8 0002882B */  sltu      $s1, $zero, $v0
/* 91226C 80242BBC E7A00014 */  swc1      $f0, 0x14($sp)
/* 912270 80242BC0 860200A8 */  lh        $v0, 0xa8($s0)
/* 912274 80242BC4 27A50020 */  addiu     $a1, $sp, 0x20
/* 912278 80242BC8 44820000 */  mtc1      $v0, $f0
/* 91227C 80242BCC 00000000 */  nop
/* 912280 80242BD0 46800020 */  cvt.s.w   $f0, $f0
/* 912284 80242BD4 E7A00018 */  swc1      $f0, 0x18($sp)
/* 912288 80242BD8 860200A6 */  lh        $v0, 0xa6($s0)
/* 91228C 80242BDC 27A60024 */  addiu     $a2, $sp, 0x24
/* 912290 80242BE0 44820000 */  mtc1      $v0, $f0
/* 912294 80242BE4 00000000 */  nop
/* 912298 80242BE8 46800020 */  cvt.s.w   $f0, $f0
/* 91229C 80242BEC E7A0001C */  swc1      $f0, 0x1c($sp)
/* 9122A0 80242BF0 8E040080 */  lw        $a0, 0x80($s0)
/* 9122A4 80242BF4 0C037711 */  jal       func_800DDC44
/* 9122A8 80242BF8 27A70028 */   addiu    $a3, $sp, 0x28
/* 9122AC 80242BFC 54400001 */  bnel      $v0, $zero, .L80242C04
/* 9122B0 80242C00 24110001 */   addiu    $s1, $zero, 1
.L80242C04:
/* 9122B4 80242C04 9602008E */  lhu       $v0, 0x8e($s0)
/* 9122B8 80242C08 2442FFFF */  addiu     $v0, $v0, -1
/* 9122BC 80242C0C A602008E */  sh        $v0, 0x8e($s0)
/* 9122C0 80242C10 00021400 */  sll       $v0, $v0, 0x10
/* 9122C4 80242C14 58400001 */  blezl     $v0, .L80242C1C
/* 9122C8 80242C18 24110001 */   addiu    $s1, $zero, 1
.L80242C1C:
/* 9122CC 80242C1C 12200003 */  beqz      $s1, .L80242C2C
/* 9122D0 80242C20 24020004 */   addiu    $v0, $zero, 4
/* 9122D4 80242C24 AE620070 */  sw        $v0, 0x70($s3)
/* 9122D8 80242C28 A2400007 */  sb        $zero, 7($s2)
.L80242C2C:
/* 9122DC 80242C2C 8FBF0040 */  lw        $ra, 0x40($sp)
/* 9122E0 80242C30 8FB3003C */  lw        $s3, 0x3c($sp)
/* 9122E4 80242C34 8FB20038 */  lw        $s2, 0x38($sp)
/* 9122E8 80242C38 8FB10034 */  lw        $s1, 0x34($sp)
/* 9122EC 80242C3C 8FB00030 */  lw        $s0, 0x30($sp)
/* 9122F0 80242C40 03E00008 */  jr        $ra
/* 9122F4 80242C44 27BD0048 */   addiu    $sp, $sp, 0x48
