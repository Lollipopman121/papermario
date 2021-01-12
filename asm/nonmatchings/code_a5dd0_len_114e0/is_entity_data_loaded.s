.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel is_entity_data_loaded
/* A785C 8011115C ACC00000 */  sw        $zero, ($a2)
/* A7860 80111160 ACE00000 */  sw        $zero, ($a3)
/* A7864 80111164 3C028007 */  lui       $v0, %hi(gGameStatusPtr)
/* A7868 80111168 8C42419C */  lw        $v0, %lo(gGameStatusPtr)($v0)
/* A786C 8011116C 80420070 */  lb        $v0, 0x70($v0)
/* A7870 80111170 3C098015 */  lui       $t1, %hi(D_801516E8)
/* A7874 80111174 252916E8 */  addiu     $t1, $t1, %lo(D_801516E8)
/* A7878 80111178 14400003 */  bnez      $v0, .L80111188
/* A787C 8011117C 0000582D */   daddu    $t3, $zero, $zero
/* A7880 80111180 3C098015 */  lui       $t1, %hi(D_80151668)
/* A7884 80111184 25291668 */  addiu     $t1, $t1, %lo(D_80151668)
.L80111188:
/* A7888 80111188 0000502D */  daddu     $t2, $zero, $zero
.L8011118C:
/* A788C 8011118C 8D240000 */  lw        $a0, ($t1)
/* A7890 80111190 1480000A */  bnez      $a0, .L801111BC
/* A7894 80111194 00000000 */   nop
/* A7898 80111198 AD250000 */  sw        $a1, ($t1)
/* A789C 8011119C AD200004 */  sw        $zero, 4($t1)
/* A78A0 801111A0 94A20000 */  lhu       $v0, ($a1)
/* A78A4 801111A4 30420008 */  andi      $v0, $v0, 8
/* A78A8 801111A8 1040003C */  beqz      $v0, .L8011129C
/* A78AC 801111AC 240B0001 */   addiu    $t3, $zero, 1
/* A78B0 801111B0 8CA30018 */  lw        $v1, 0x18($a1)
/* A78B4 801111B4 08044481 */  j         .L80111204
/* A78B8 801111B8 00000000 */   nop
.L801111BC:
/* A78BC 801111BC 8C880018 */  lw        $t0, 0x18($a0)
/* A78C0 801111C0 8CA30018 */  lw        $v1, 0x18($a1)
/* A78C4 801111C4 15030009 */  bne       $t0, $v1, .L801111EC
/* A78C8 801111C8 00000000 */   nop
/* A78CC 801111CC 94A20000 */  lhu       $v0, ($a1)
/* A78D0 801111D0 30420008 */  andi      $v0, $v0, 8
/* A78D4 801111D4 10400031 */  beqz      $v0, .L8011129C
/* A78D8 801111D8 00000000 */   nop
/* A78DC 801111DC 8D020004 */  lw        $v0, 4($t0)
/* A78E0 801111E0 8D030000 */  lw        $v1, ($t0)
/* A78E4 801111E4 08044484 */  j         .L80111210
/* A78E8 801111E8 00431023 */   subu     $v0, $v0, $v1
.L801111EC:
/* A78EC 801111EC 1485000D */  bne       $a0, $a1, .L80111224
/* A78F0 801111F0 00000000 */   nop
/* A78F4 801111F4 94820000 */  lhu       $v0, ($a0)
/* A78F8 801111F8 30420008 */  andi      $v0, $v0, 8
/* A78FC 801111FC 10400027 */  beqz      $v0, .L8011129C
/* A7900 80111200 00000000 */   nop
.L80111204:
/* A7904 80111204 8C620004 */  lw        $v0, 4($v1)
/* A7908 80111208 8C630000 */  lw        $v1, ($v1)
/* A790C 8011120C 00431023 */  subu      $v0, $v0, $v1
.L80111210:
/* A7910 80111210 8CC30000 */  lw        $v1, ($a2)
/* A7914 80111214 00021083 */  sra       $v0, $v0, 2
/* A7918 80111218 00621821 */  addu      $v1, $v1, $v0
/* A791C 8011121C 080444A7 */  j         .L8011129C
/* A7920 80111220 ACE30000 */   sw       $v1, ($a3)
.L80111224:
/* A7924 80111224 94820000 */  lhu       $v0, ($a0)
/* A7928 80111228 30420008 */  andi      $v0, $v0, 8
/* A792C 8011122C 10400011 */  beqz      $v0, .L80111274
/* A7930 80111230 00000000 */   nop
/* A7934 80111234 8D030004 */  lw        $v1, 4($t0)
/* A7938 80111238 8D020000 */  lw        $v0, ($t0)
/* A793C 8011123C 00621823 */  subu      $v1, $v1, $v0
/* A7940 80111240 8CC20000 */  lw        $v0, ($a2)
/* A7944 80111244 00031883 */  sra       $v1, $v1, 2
/* A7948 80111248 00431021 */  addu      $v0, $v0, $v1
/* A794C 8011124C ACC20000 */  sw        $v0, ($a2)
/* A7950 80111250 ACE20000 */  sw        $v0, ($a3)
/* A7954 80111254 8D03000C */  lw        $v1, 0xc($t0)
/* A7958 80111258 8D020008 */  lw        $v0, 8($t0)
/* A795C 8011125C 00621823 */  subu      $v1, $v1, $v0
/* A7960 80111260 8CC20000 */  lw        $v0, ($a2)
/* A7964 80111264 00031883 */  sra       $v1, $v1, 2
/* A7968 80111268 00431021 */  addu      $v0, $v0, $v1
/* A796C 8011126C 080444A3 */  j         .L8011128C
/* A7970 80111270 ACC20000 */   sw       $v0, ($a2)
.L80111274:
/* A7974 80111274 8C82001C */  lw        $v0, 0x1c($a0)
/* A7978 80111278 8CC30000 */  lw        $v1, ($a2)
/* A797C 8011127C 00481023 */  subu      $v0, $v0, $t0
/* A7980 80111280 00021083 */  sra       $v0, $v0, 2
/* A7984 80111284 00621821 */  addu      $v1, $v1, $v0
/* A7988 80111288 ACC30000 */  sw        $v1, ($a2)
.L8011128C:
/* A798C 8011128C 254A0001 */  addiu     $t2, $t2, 1
/* A7990 80111290 2942001E */  slti      $v0, $t2, 0x1e
/* A7994 80111294 1440FFBD */  bnez      $v0, .L8011118C
/* A7998 80111298 25290004 */   addiu    $t1, $t1, 4
.L8011129C:
/* A799C 8011129C 03E00008 */  jr        $ra
/* A79A0 801112A0 0160102D */   daddu    $v0, $t3, $zero
