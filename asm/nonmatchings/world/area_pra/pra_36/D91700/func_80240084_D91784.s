.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240084_D91784
/* D91784 80240084 00041403 */  sra       $v0, $a0, 0x10
/* D91788 80240088 304300FF */  andi      $v1, $v0, 0xff
/* D9178C 8024008C 24020006 */  addiu     $v0, $zero, 6
/* D91790 80240090 10620015 */  beq       $v1, $v0, .L802400E8
/* D91794 80240094 28620007 */   slti     $v0, $v1, 7
/* D91798 80240098 10400005 */  beqz      $v0, .L802400B0
/* D9179C 8024009C 24020001 */   addiu    $v0, $zero, 1
/* D917A0 802400A0 1062000A */  beq       $v1, $v0, .L802400CC
/* D917A4 802400A4 3C020100 */   lui      $v0, 0x100
/* D917A8 802400A8 03E00008 */  jr        $ra
/* D917AC 802400AC 00821025 */   or       $v0, $a0, $v0
.L802400B0:
/* D917B0 802400B0 2862000A */  slti      $v0, $v1, 0xa
/* D917B4 802400B4 10400016 */  beqz      $v0, .L80240110
/* D917B8 802400B8 28620008 */   slti     $v0, $v1, 8
/* D917BC 802400BC 14400015 */  bnez      $v0, .L80240114
/* D917C0 802400C0 3C020100 */   lui      $v0, 0x100
/* D917C4 802400C4 03E00008 */  jr        $ra
/* D917C8 802400C8 0080102D */   daddu    $v0, $a0, $zero
.L802400CC:
/* D917CC 802400CC 3C020001 */  lui       $v0, 1
/* D917D0 802400D0 3442000C */  ori       $v0, $v0, 0xc
/* D917D4 802400D4 0044102A */  slt       $v0, $v0, $a0
/* D917D8 802400D8 1040000E */  beqz      $v0, .L80240114
/* D917DC 802400DC 3C020100 */   lui      $v0, 0x100
.L802400E0:
/* D917E0 802400E0 03E00008 */  jr        $ra
/* D917E4 802400E4 0080102D */   daddu    $v0, $a0, $zero
.L802400E8:
/* D917E8 802400E8 3C02FFF9 */  lui       $v0, 0xfff9
/* D917EC 802400EC 3442FFF4 */  ori       $v0, $v0, 0xfff4
/* D917F0 802400F0 00821821 */  addu      $v1, $a0, $v0
/* D917F4 802400F4 2C620010 */  sltiu     $v0, $v1, 0x10
/* D917F8 802400F8 10400005 */  beqz      $v0, .L80240110
/* D917FC 802400FC 30620001 */   andi     $v0, $v1, 1
/* D91800 80240100 1440FFF7 */  bnez      $v0, .L802400E0
/* D91804 80240104 24820001 */   addiu    $v0, $a0, 1
/* D91808 80240108 03E00008 */  jr        $ra
/* D9180C 8024010C 00000000 */   nop      
.L80240110:
/* D91810 80240110 3C020100 */  lui       $v0, 0x100
.L80240114:
/* D91814 80240114 03E00008 */  jr        $ra
/* D91818 80240118 00821025 */   or       $v0, $a0, $v0