.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80055068
/* 30468 80055068 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 3046C 8005506C AFB00010 */  sw        $s0, 0x10($sp)
/* 30470 80055070 0080802D */  daddu     $s0, $a0, $zero
/* 30474 80055074 3203000F */  andi      $v1, $s0, 0xf
/* 30478 80055078 3C048008 */  lui       $a0, %hi(D_80078DB4)
/* 3047C 8005507C 94848DB4 */  lhu       $a0, %lo(D_80078DB4)($a0)
/* 30480 80055080 24020001 */  addiu     $v0, $zero, 1
/* 30484 80055084 1482001E */  bne       $a0, $v0, .L80055100
/* 30488 80055088 AFBF0014 */   sw       $ra, 0x14($sp)
/* 3048C 8005508C 2C620004 */  sltiu     $v0, $v1, 4
/* 30490 80055090 10400007 */  beqz      $v0, .L800550B0
/* 30494 80055094 2C620002 */   sltiu    $v0, $v1, 2
/* 30498 80055098 10400019 */  beqz      $v0, .L80055100
/* 3049C 8005509C 00000000 */   nop
/* 304A0 800550A0 1064000C */  beq       $v1, $a0, .L800550D4
/* 304A4 800550A4 00102102 */   srl      $a0, $s0, 4
/* 304A8 800550A8 08015440 */  j         .L80055100
/* 304AC 800550AC 00000000 */   nop
.L800550B0:
/* 304B0 800550B0 24020004 */  addiu     $v0, $zero, 4
/* 304B4 800550B4 14620012 */  bne       $v1, $v0, .L80055100
/* 304B8 800550B8 00502006 */   srlv     $a0, $s0, $v0
/* 304BC 800550BC 0000282D */  daddu     $a1, $zero, $zero
/* 304C0 800550C0 00A0302D */  daddu     $a2, $a1, $zero
/* 304C4 800550C4 0C015490 */  jal       func_80055240
/* 304C8 800550C8 00A0382D */   daddu    $a3, $a1, $zero
/* 304CC 800550CC 08015440 */  j         .L80055100
/* 304D0 800550D0 00000000 */   nop
.L800550D4:
/* 304D4 800550D4 308400FF */  andi      $a0, $a0, 0xff
/* 304D8 800550D8 0C015635 */  jal       func_800558D4
/* 304DC 800550DC 0000282D */   daddu    $a1, $zero, $zero
/* 304E0 800550E0 3C033020 */  lui       $v1, 0x3020
/* 304E4 800550E4 34632000 */  ori       $v1, $v1, 0x2000
/* 304E8 800550E8 0062182B */  sltu      $v1, $v1, $v0
/* 304EC 800550EC 10600004 */  beqz      $v1, .L80055100
/* 304F0 800550F0 0040202D */   daddu    $a0, $v0, $zero
/* 304F4 800550F4 00102B02 */  srl       $a1, $s0, 0xc
/* 304F8 800550F8 0C01565C */  jal       func_80055970
/* 304FC 800550FC 30A50003 */   andi     $a1, $a1, 3
.L80055100:
/* 30500 80055100 8FBF0014 */  lw        $ra, 0x14($sp)
/* 30504 80055104 8FB00010 */  lw        $s0, 0x10($sp)
/* 30508 80055108 03E00008 */  jr        $ra
/* 3050C 8005510C 27BD0018 */   addiu    $sp, $sp, 0x18
