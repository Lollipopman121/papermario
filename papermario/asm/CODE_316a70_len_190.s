
.section .text00200080, "ax"

func_00200080:
/* 316A70 00200080 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 316A74 00200084 3C0B3C01 */  lui   $t3, (0x3C01A775 >> 16) # lui $t3, 0x3c01
/* 316A78 00200088 356BA775 */  ori   $t3, (0x3C01A775 & 0xFFFF) # ori $t3, $t3, 0xa775
/* 316A7C 0020008C 3C04B001 */  lui   $a0, (0xB0018FFC >> 16) # lui $a0, 0xb001
/* 316A80 00200090 34848FFC */  ori   $a0, (0xB0018FFC & 0xFFFF) # ori $a0, $a0, 0x8ffc
/* 316A84 00200094 3C0A8002 */  lui   $t2, %hi(D_80026AC7) # $t2, 0x8002
/* 316A88 00200098 254A6AC7 */  addiu $t2, %lo(D_80026AC7) # addiu $t2, $t2, 0x6ac7
/* 316A8C 0020009C 3C02A460 */  lui   $v0, (0xA4600010 >> 16) # lui $v0, 0xa460
/* 316A90 002000A0 34420010 */  ori   $v0, (0xA4600010 & 0xFFFF) # ori $v0, $v0, 0x10
/* 316A94 002000A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 316A98 002000A8 AFB00010 */  sw    $s0, 0x10($sp)
/* 316A9C 002000AC 8C420000 */  lw    $v0, ($v0)
/* 316AA0 002000B0 30420003 */  andi  $v0, $v0, 3
/* 316AA4 002000B4 10400007 */  beqz  $v0, .L002000D4
/* 316AA8 002000B8 0000282D */   move  $a1, $zero
/* 316AAC 002000BC 3C03A460 */  lui   $v1, (0xA4600010 >> 16) # lui $v1, 0xa460
/* 316AB0 002000C0 34630010 */  ori   $v1, (0xA4600010 & 0xFFFF) # ori $v1, $v1, 0x10
.L002000C4:
/* 316AB4 002000C4 8C620000 */  lw    $v0, ($v1)
/* 316AB8 002000C8 30420003 */  andi  $v0, $v0, 3
/* 316ABC 002000CC 1440FFFD */  bnez  $v0, .L002000C4
/* 316AC0 002000D0 00000000 */   nop   
.L002000D4:
/* 316AC4 002000D4 3C02FFFE */  lui   $v0, (0xFFFE7508 >> 16) # lui $v0, 0xfffe
/* 316AC8 002000D8 34427508 */  ori   $v0, (0xFFFE7508 & 0xFFFF) # ori $v0, $v0, 0x7508
/* 316ACC 002000DC 0000482D */  move  $t1, $zero
/* 316AD0 002000E0 00821021 */  addu  $v0, $a0, $v0
/* 316AD4 002000E4 3C03A000 */  lui   $v1, 0xa000
/* 316AD8 002000E8 00431025 */  or    $v0, $v0, $v1
/* 316ADC 002000EC 8C420000 */  lw    $v0, ($v0)
/* 316AE0 002000F0 3C080031 */  lui   $t0, %hi(D_003169F0) # $t0, 0x31
/* 316AE4 002000F4 250869F0 */  addiu $t0, %lo(D_003169F0) # addiu $t0, $t0, 0x69f0
/* 316AE8 002000F8 3C030031 */  lui   $v1, %hi(D_00316A70) # $v1, 0x31
/* 316AEC 002000FC 24636A70 */  addiu $v1, %lo(D_00316A70) # addiu $v1, $v1, 0x6a70
/* 316AF0 00200100 01625823 */  subu  $t3, $t3, $v0
/* 316AF4 00200104 0103102B */  sltu  $v0, $t0, $v1
/* 316AF8 00200108 10400034 */  beqz  $v0, .L002001DC
/* 316AFC 0020010C 3C0CA460 */   lui   $t4, (0xA4600010 >> 16) # lui $t4, 0xa460
/* 316B00 00200110 358C0010 */  ori   $t4, (0xA4600010 & 0xFFFF) # ori $t4, $t4, 0x10
/* 316B04 00200114 3C101000 */  lui   $s0, 0x1000
/* 316B08 00200118 3C19A000 */  lui   $t9, 0xa000
/* 316B0C 0020011C 2418000F */  li    $t8, 15
/* 316B10 00200120 240F0009 */  li    $t7, 9
/* 316B14 00200124 240E0003 */  li    $t6, 3
/* 316B18 00200128 0060682D */  move  $t5, $v1
.L0020012C:
/* 316B1C 0020012C 8D820000 */  lw    $v0, ($t4)
/* 316B20 00200130 30420003 */  andi  $v0, $v0, 3
/* 316B24 00200134 10400007 */  beqz  $v0, .L00200154
/* 316B28 00200138 01101021 */   addu  $v0, $t0, $s0
/* 316B2C 0020013C 3C03A460 */  lui   $v1, (0xA4600010 >> 16) # lui $v1, 0xa460
/* 316B30 00200140 34630010 */  ori   $v1, (0xA4600010 & 0xFFFF) # ori $v1, $v1, 0x10
.L00200144:
/* 316B34 00200144 8C620000 */  lw    $v0, ($v1)
/* 316B38 00200148 30420003 */  andi  $v0, $v0, 3
/* 316B3C 0020014C 1440FFFD */  bnez  $v0, .L00200144
/* 316B40 00200150 01101021 */   addu  $v0, $t0, $s0
.L00200154:
/* 316B44 00200154 00591025 */  or    $v0, $v0, $t9
/* 316B48 00200158 8C440000 */  lw    $a0, ($v0)
/* 316B4C 0020015C 3087FFFF */  andi  $a3, $a0, 0xffff
/* 316B50 00200160 00043402 */  srl   $a2, $a0, 0x10
/* 316B54 00200164 00E61021 */  addu  $v0, $a3, $a2
/* 316B58 00200168 00A22821 */  addu  $a1, $a1, $v0
/* 316B5C 0020016C 00091682 */  srl   $v0, $t1, 0x1a
/* 316B60 00200170 14580010 */  bne   $v0, $t8, .L002001B4
/* 316B64 00200174 00041682 */   srl   $v0, $a0, 0x1a
/* 316B68 00200178 144F000E */  bne   $v0, $t7, .L002001B4
/* 316B6C 0020017C 00000000 */   nop   
/* 316B70 00200180 00041542 */  srl   $v0, $a0, 0x15
/* 316B74 00200184 3043001F */  andi  $v1, $v0, 0x1f
/* 316B78 00200188 00091402 */  srl   $v0, $t1, 0x10
/* 316B7C 0020018C 3042001F */  andi  $v0, $v0, 0x1f
/* 316B80 00200190 14620008 */  bne   $v1, $v0, .L002001B4
/* 316B84 00200194 00041682 */   srl   $v0, $a0, 0x1a
/* 316B88 00200198 30C2001F */  andi  $v0, $a2, 0x1f
/* 316B8C 0020019C 14620005 */  bne   $v1, $v0, .L002001B4
/* 316B90 002001A0 00041682 */   srl   $v0, $a0, 0x1a
/* 316B94 002001A4 00A72823 */  subu  $a1, $a1, $a3
/* 316B98 002001A8 3122FFFF */  andi  $v0, $t1, 0xffff
/* 316B9C 002001AC 00A22823 */  subu  $a1, $a1, $v0
/* 316BA0 002001B0 00041682 */  srl   $v0, $a0, 0x1a
.L002001B4:
/* 316BA4 002001B4 144E0006 */  bne   $v0, $t6, .L002001D0
/* 316BA8 002001B8 25080004 */   addiu $t0, $t0, 4
/* 316BAC 002001BC 3083FFFF */  andi  $v1, $a0, 0xffff
/* 316BB0 002001C0 00041402 */  srl   $v0, $a0, 0x10
/* 316BB4 002001C4 3042FC00 */  andi  $v0, $v0, 0xfc00
/* 316BB8 002001C8 00621821 */  addu  $v1, $v1, $v0
/* 316BBC 002001CC 00A32823 */  subu  $a1, $a1, $v1
.L002001D0:
/* 316BC0 002001D0 010D102B */  sltu  $v0, $t0, $t5
/* 316BC4 002001D4 1440FFD5 */  bnez  $v0, .L0020012C
/* 316BC8 002001D8 0080482D */   move  $t1, $a0
.L002001DC:
/* 316BCC 002001DC 3C02FFF2 */  lui   $v0, (0xFFF222E0 >> 16) # lui $v0, 0xfff2
/* 316BD0 002001E0 344222E0 */  ori   $v0, (0xFFF222E0 & 0xFFFF) # ori $v0, $v0, 0x22e0
/* 316BD4 002001E4 00A21021 */  addu  $v0, $a1, $v0
/* 316BD8 002001E8 01621023 */  subu  $v0, $t3, $v0
/* 316BDC 002001EC 01425021 */  addu  $t2, $t2, $v0
/* 316BE0 002001F0 0140F809 */  jalr  $t2
/* 316BE4 002001F4 00000000 */  nop   
/* 316BE8 002001F8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 316BEC 002001FC 8FB00010 */  lw    $s0, 0x10($sp)
/* 316BF0 00200200 03E00008 */  jr    $ra
/* 316BF4 00200204 27BD0018 */   addiu $sp, $sp, 0x18

/* 316BF8 00200208 00000000 */  nop   
/* 316BFC 0020020C 00000000 */  nop   
