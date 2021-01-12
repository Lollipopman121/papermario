.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_E0116884
/* 402EC4 E0116884 27BDFFC0 */  addiu     $sp, $sp, -0x40
/* 402EC8 E0116888 AFB7002C */  sw        $s7, 0x2c($sp)
/* 402ECC E011688C 0080B82D */  daddu     $s7, $a0, $zero
/* 402ED0 E0116890 3C05DB06 */  lui       $a1, 0xdb06
/* 402ED4 E0116894 34A50024 */  ori       $a1, $a1, 0x24
/* 402ED8 E0116898 AFB3001C */  sw        $s3, 0x1c($sp)
/* 402EDC E011689C 24130001 */  addiu     $s3, $zero, 1
/* 402EE0 E01168A0 3C06800A */  lui       $a2, %hi(gMasterGfxPos)
/* 402EE4 E01168A4 24C6A66C */  addiu     $a2, $a2, %lo(gMasterGfxPos)
/* 402EE8 E01168A8 3C03E700 */  lui       $v1, 0xe700
/* 402EEC E01168AC AFBF0034 */  sw        $ra, 0x34($sp)
/* 402EF0 E01168B0 AFBE0030 */  sw        $fp, 0x30($sp)
/* 402EF4 E01168B4 AFB60028 */  sw        $s6, 0x28($sp)
/* 402EF8 E01168B8 AFB50024 */  sw        $s5, 0x24($sp)
/* 402EFC E01168BC AFB40020 */  sw        $s4, 0x20($sp)
/* 402F00 E01168C0 AFB20018 */  sw        $s2, 0x18($sp)
/* 402F04 E01168C4 AFB10014 */  sw        $s1, 0x14($sp)
/* 402F08 E01168C8 AFB00010 */  sw        $s0, 0x10($sp)
/* 402F0C E01168CC F7B40038 */  sdc1      $f20, 0x38($sp)
/* 402F10 E01168D0 8CC20000 */  lw        $v0, ($a2)
/* 402F14 E01168D4 8EF2000C */  lw        $s2, 0xc($s7)
/* 402F18 E01168D8 0040202D */  daddu     $a0, $v0, $zero
/* 402F1C E01168DC 24420008 */  addiu     $v0, $v0, 8
/* 402F20 E01168E0 8E5E0014 */  lw        $fp, 0x14($s2)
/* 402F24 E01168E4 26520030 */  addiu     $s2, $s2, 0x30
/* 402F28 E01168E8 ACC20000 */  sw        $v0, ($a2)
/* 402F2C E01168EC AC830000 */  sw        $v1, ($a0)
/* 402F30 E01168F0 24430008 */  addiu     $v1, $v0, 8
/* 402F34 E01168F4 AC800004 */  sw        $zero, 4($a0)
/* 402F38 E01168F8 ACC30000 */  sw        $v1, ($a2)
/* 402F3C E01168FC AC450000 */  sw        $a1, ($v0)
/* 402F40 E0116900 8EE40010 */  lw        $a0, 0x10($s7)
/* 402F44 E0116904 24430010 */  addiu     $v1, $v0, 0x10
/* 402F48 E0116908 ACC30000 */  sw        $v1, ($a2)
/* 402F4C E011690C 8C84001C */  lw        $a0, 0x1c($a0)
/* 402F50 E0116910 3C03DE00 */  lui       $v1, 0xde00
/* 402F54 E0116914 AC430008 */  sw        $v1, 8($v0)
/* 402F58 E0116918 3C030900 */  lui       $v1, 0x900
/* 402F5C E011691C 246342E0 */  addiu     $v1, $v1, 0x42e0
/* 402F60 E0116920 AC43000C */  sw        $v1, 0xc($v0)
/* 402F64 E0116924 3C03FB00 */  lui       $v1, 0xfb00
/* 402F68 E0116928 AC430010 */  sw        $v1, 0x10($v0)
/* 402F6C E011692C 240300FF */  addiu     $v1, $zero, 0xff
/* 402F70 E0116930 AC430014 */  sw        $v1, 0x14($v0)
/* 402F74 E0116934 3C038000 */  lui       $v1, 0x8000
/* 402F78 E0116938 00832021 */  addu      $a0, $a0, $v1
/* 402F7C E011693C AC440004 */  sw        $a0, 4($v0)
/* 402F80 E0116940 8EE30008 */  lw        $v1, 8($s7)
/* 402F84 E0116944 24420018 */  addiu     $v0, $v0, 0x18
/* 402F88 E0116948 0263182A */  slt       $v1, $s3, $v1
/* 402F8C E011694C 106000B5 */  beqz      $v1, .LE0116C24
/* 402F90 E0116950 ACC20000 */   sw       $v0, ($a2)
/* 402F94 E0116954 00C0882D */  daddu     $s1, $a2, $zero
/* 402F98 E0116958 3C16FB00 */  lui       $s6, 0xfb00
/* 402F9C E011695C 3C14DE00 */  lui       $s4, 0xde00
/* 402FA0 E0116960 3C013F50 */  lui       $at, 0x3f50
/* 402FA4 E0116964 4481A800 */  mtc1      $at, $f21
/* 402FA8 E0116968 4480A000 */  mtc1      $zero, $f20
/* 402FAC E011696C 3C15F200 */  lui       $s5, 0xf200
/* 402FB0 E0116970 26500025 */  addiu     $s0, $s2, 0x25
.LE0116974:
/* 402FB4 E0116974 92030004 */  lbu       $v1, 4($s0)
/* 402FB8 E0116978 24020005 */  addiu     $v0, $zero, 5
/* 402FBC E011697C 506200A4 */  beql      $v1, $v0, .LE0116C10
/* 402FC0 E0116980 26730001 */   addiu    $s3, $s3, 1
/* 402FC4 E0116984 24040001 */  addiu     $a0, $zero, 1
/* 402FC8 E0116988 0C0459BA */  jal       func_E01166E8
/* 402FCC E011698C 0240282D */   daddu    $a1, $s2, $zero
/* 402FD0 E0116990 9203FFFF */  lbu       $v1, -1($s0)
/* 402FD4 E0116994 240200FF */  addiu     $v0, $zero, 0xff
/* 402FD8 E0116998 1062006E */  beq       $v1, $v0, .LE0116B54
/* 402FDC E011699C 3C02FA00 */   lui      $v0, 0xfa00
/* 402FE0 E01169A0 3C014080 */  lui       $at, 0x4080
/* 402FE4 E01169A4 44810000 */  mtc1      $at, $f0
/* 402FE8 E01169A8 449E1000 */  mtc1      $fp, $f2
/* 402FEC E01169AC 00000000 */  nop
/* 402FF0 E01169B0 468010A0 */  cvt.s.w   $f2, $f2
/* 402FF4 E01169B4 46001082 */  mul.s     $f2, $f2, $f0
/* 402FF8 E01169B8 00000000 */  nop
/* 402FFC E01169BC 3C0142C8 */  lui       $at, 0x42c8
/* 403000 E01169C0 44813000 */  mtc1      $at, $f6
/* 403004 E01169C4 00000000 */  nop
/* 403008 E01169C8 46061182 */  mul.s     $f6, $f2, $f6
/* 40300C E01169CC 00000000 */  nop
/* 403010 E01169D0 460031A1 */  cvt.d.s   $f6, $f6
/* 403014 E01169D4 46343182 */  mul.d     $f6, $f6, $f20
/* 403018 E01169D8 00000000 */  nop
/* 40301C E01169DC 8E260000 */  lw        $a2, ($s1)
/* 403020 E01169E0 3C014220 */  lui       $at, 0x4220
/* 403024 E01169E4 44812000 */  mtc1      $at, $f4
/* 403028 E01169E8 3C0142B4 */  lui       $at, 0x42b4
/* 40302C E01169EC 44814000 */  mtc1      $at, $f8
/* 403030 E01169F0 00C0202D */  daddu     $a0, $a2, $zero
/* 403034 E01169F4 24C60008 */  addiu     $a2, $a2, 8
/* 403038 E01169F8 AE260000 */  sw        $a2, ($s1)
/* 40303C E01169FC AC820000 */  sw        $v0, ($a0)
/* 403040 E0116A00 46041102 */  mul.s     $f4, $f2, $f4
/* 403044 E0116A04 00000000 */  nop
/* 403048 E0116A08 9203FFFF */  lbu       $v1, -1($s0)
/* 40304C E0116A0C 3C014348 */  lui       $at, 0x4348
/* 403050 E0116A10 44810000 */  mtc1      $at, $f0
/* 403054 E0116A14 24C20008 */  addiu     $v0, $a2, 8
/* 403058 E0116A18 AE220000 */  sw        $v0, ($s1)
/* 40305C E0116A1C 46002121 */  cvt.d.s   $f4, $f4
/* 403060 E0116A20 46342102 */  mul.d     $f4, $f4, $f20
/* 403064 E0116A24 00000000 */  nop
/* 403068 E0116A28 AC830004 */  sw        $v1, 4($a0)
/* 40306C E0116A2C ACD60000 */  sw        $s6, ($a2)
/* 403070 E0116A30 92030001 */  lbu       $v1, 1($s0)
/* 403074 E0116A34 92040002 */  lbu       $a0, 2($s0)
/* 403078 E0116A38 92050003 */  lbu       $a1, 3($s0)
/* 40307C E0116A3C 24C20010 */  addiu     $v0, $a2, 0x10
/* 403080 E0116A40 AE220000 */  sw        $v0, ($s1)
/* 403084 E0116A44 46001002 */  mul.s     $f0, $f2, $f0
/* 403088 E0116A48 00000000 */  nop
/* 40308C E0116A4C 24C20018 */  addiu     $v0, $a2, 0x18
/* 403090 E0116A50 ACD40008 */  sw        $s4, 8($a2)
/* 403094 E0116A54 AE220000 */  sw        $v0, ($s1)
/* 403098 E0116A58 00031E00 */  sll       $v1, $v1, 0x18
/* 40309C E0116A5C 46000021 */  cvt.d.s   $f0, $f0
/* 4030A0 E0116A60 46340002 */  mul.d     $f0, $f0, $f20
/* 4030A4 E0116A64 00000000 */  nop
/* 4030A8 E0116A68 00042400 */  sll       $a0, $a0, 0x10
/* 4030AC E0116A6C 00641825 */  or        $v1, $v1, $a0
/* 4030B0 E0116A70 00052A00 */  sll       $a1, $a1, 8
/* 4030B4 E0116A74 00651825 */  or        $v1, $v1, $a1
/* 4030B8 E0116A78 34630078 */  ori       $v1, $v1, 0x78
/* 4030BC E0116A7C ACC30004 */  sw        $v1, 4($a2)
/* 4030C0 E0116A80 3C03E011 */  lui       $v1, %hi(D_E0116C6C)
/* 4030C4 E0116A84 8C636C6C */  lw        $v1, %lo(D_E0116C6C)($v1)
/* 4030C8 E0116A88 46081082 */  mul.s     $f2, $f2, $f8
/* 4030CC E0116A8C 00000000 */  nop
/* 4030D0 E0116A90 24C20020 */  addiu     $v0, $a2, 0x20
/* 4030D4 E0116A94 AE220000 */  sw        $v0, ($s1)
/* 4030D8 E0116A98 ACD40020 */  sw        $s4, 0x20($a2)
/* 4030DC E0116A9C ACC3000C */  sw        $v1, 0xc($a2)
/* 4030E0 E0116AA0 460010A1 */  cvt.d.s   $f2, $f2
/* 4030E4 E0116AA4 46341082 */  mul.d     $f2, $f2, $f20
/* 4030E8 E0116AA8 00000000 */  nop
/* 4030EC E0116AAC 4620328D */  trunc.w.d $f10, $f6
/* 4030F0 E0116AB0 44075000 */  mfc1      $a3, $f10
/* 4030F4 E0116AB4 4620228D */  trunc.w.d $f10, $f4
/* 4030F8 E0116AB8 44085000 */  mfc1      $t0, $f10
/* 4030FC E0116ABC 30E40FFF */  andi      $a0, $a3, 0xfff
/* 403100 E0116AC0 24E200FC */  addiu     $v0, $a3, 0xfc
/* 403104 E0116AC4 4620028D */  trunc.w.d $f10, $f0
/* 403108 E0116AC8 44075000 */  mfc1      $a3, $f10
/* 40310C E0116ACC 31030FFF */  andi      $v1, $t0, 0xfff
/* 403110 E0116AD0 250500FC */  addiu     $a1, $t0, 0xfc
/* 403114 E0116AD4 4620128D */  trunc.w.d $f10, $f2
/* 403118 E0116AD8 44085000 */  mfc1      $t0, $f10
/* 40311C E0116ADC 00042300 */  sll       $a0, $a0, 0xc
/* 403120 E0116AE0 00751825 */  or        $v1, $v1, $s5
/* 403124 E0116AE4 00832025 */  or        $a0, $a0, $v1
/* 403128 E0116AE8 30420FFF */  andi      $v0, $v0, 0xfff
/* 40312C E0116AEC 00021300 */  sll       $v0, $v0, 0xc
/* 403130 E0116AF0 30A50FFF */  andi      $a1, $a1, 0xfff
/* 403134 E0116AF4 00451025 */  or        $v0, $v0, $a1
/* 403138 E0116AF8 30E30FFF */  andi      $v1, $a3, 0xfff
/* 40313C E0116AFC 00031B00 */  sll       $v1, $v1, 0xc
/* 403140 E0116B00 ACC20014 */  sw        $v0, 0x14($a2)
/* 403144 E0116B04 31020FFF */  andi      $v0, $t0, 0xfff
/* 403148 E0116B08 00551025 */  or        $v0, $v0, $s5
/* 40314C E0116B0C 00621825 */  or        $v1, $v1, $v0
/* 403150 E0116B10 ACC30018 */  sw        $v1, 0x18($a2)
/* 403154 E0116B14 24E300FC */  addiu     $v1, $a3, 0xfc
/* 403158 E0116B18 30630FFF */  andi      $v1, $v1, 0xfff
/* 40315C E0116B1C 00031B00 */  sll       $v1, $v1, 0xc
/* 403160 E0116B20 250200FC */  addiu     $v0, $t0, 0xfc
/* 403164 E0116B24 30420FFF */  andi      $v0, $v0, 0xfff
/* 403168 E0116B28 ACC40010 */  sw        $a0, 0x10($a2)
/* 40316C E0116B2C 3C040100 */  lui       $a0, 0x100
/* 403170 E0116B30 00441025 */  or        $v0, $v0, $a0
/* 403174 E0116B34 00621825 */  or        $v1, $v1, $v0
/* 403178 E0116B38 ACC3001C */  sw        $v1, 0x1c($a2)
/* 40317C E0116B3C 3C03E011 */  lui       $v1, %hi(D_E0116C64)
/* 403180 E0116B40 8C636C64 */  lw        $v1, %lo(D_E0116C64)($v1)
/* 403184 E0116B44 24C20028 */  addiu     $v0, $a2, 0x28
/* 403188 E0116B48 AE220000 */  sw        $v0, ($s1)
/* 40318C E0116B4C 08045AFA */  j         .LE0116BE8
/* 403190 E0116B50 ACC30024 */   sw       $v1, 0x24($a2)
.LE0116B54:
/* 403194 E0116B54 8E240000 */  lw        $a0, ($s1)
/* 403198 E0116B58 0080282D */  daddu     $a1, $a0, $zero
/* 40319C E0116B5C 24840008 */  addiu     $a0, $a0, 8
/* 4031A0 E0116B60 AE240000 */  sw        $a0, ($s1)
/* 4031A4 E0116B64 ACB40000 */  sw        $s4, ($a1)
/* 4031A8 E0116B68 3C03E011 */  lui       $v1, %hi(D_E0116C68)
/* 4031AC E0116B6C 8C636C68 */  lw        $v1, %lo(D_E0116C68)($v1)
/* 4031B0 E0116B70 24820008 */  addiu     $v0, $a0, 8
/* 4031B4 E0116B74 AE220000 */  sw        $v0, ($s1)
/* 4031B8 E0116B78 ACA30004 */  sw        $v1, 4($a1)
/* 4031BC E0116B7C AC960000 */  sw        $s6, ($a0)
/* 4031C0 E0116B80 92020001 */  lbu       $v0, 1($s0)
/* 4031C4 E0116B84 92030002 */  lbu       $v1, 2($s0)
/* 4031C8 E0116B88 92050003 */  lbu       $a1, 3($s0)
/* 4031CC E0116B8C 92060000 */  lbu       $a2, ($s0)
/* 4031D0 E0116B90 AC940008 */  sw        $s4, 8($a0)
/* 4031D4 E0116B94 00021600 */  sll       $v0, $v0, 0x18
/* 4031D8 E0116B98 00031C00 */  sll       $v1, $v1, 0x10
/* 4031DC E0116B9C 00431025 */  or        $v0, $v0, $v1
/* 4031E0 E0116BA0 00052A00 */  sll       $a1, $a1, 8
/* 4031E4 E0116BA4 00451025 */  or        $v0, $v0, $a1
/* 4031E8 E0116BA8 00461025 */  or        $v0, $v0, $a2
/* 4031EC E0116BAC AC820004 */  sw        $v0, 4($a0)
/* 4031F0 E0116BB0 2662FFFF */  addiu     $v0, $s3, -1
/* 4031F4 E0116BB4 00021080 */  sll       $v0, $v0, 2
/* 4031F8 E0116BB8 3C03E011 */  lui       $v1, %hi(D_E0116C70)
/* 4031FC E0116BBC 00621821 */  addu      $v1, $v1, $v0
/* 403200 E0116BC0 8C636C70 */  lw        $v1, %lo(D_E0116C70)($v1)
/* 403204 E0116BC4 24820010 */  addiu     $v0, $a0, 0x10
/* 403208 E0116BC8 AE220000 */  sw        $v0, ($s1)
/* 40320C E0116BCC AC940010 */  sw        $s4, 0x10($a0)
/* 403210 E0116BD0 AC83000C */  sw        $v1, 0xc($a0)
/* 403214 E0116BD4 3C03E011 */  lui       $v1, %hi(D_E0116C60)
/* 403218 E0116BD8 8C636C60 */  lw        $v1, %lo(D_E0116C60)($v1)
/* 40321C E0116BDC 24820018 */  addiu     $v0, $a0, 0x18
/* 403220 E0116BE0 AE220000 */  sw        $v0, ($s1)
/* 403224 E0116BE4 AC830014 */  sw        $v1, 0x14($a0)
.LE0116BE8:
/* 403228 E0116BE8 3C04D838 */  lui       $a0, 0xd838
/* 40322C E0116BEC 8E220000 */  lw        $v0, ($s1)
/* 403230 E0116BF0 34840002 */  ori       $a0, $a0, 2
/* 403234 E0116BF4 0040182D */  daddu     $v1, $v0, $zero
/* 403238 E0116BF8 24420008 */  addiu     $v0, $v0, 8
/* 40323C E0116BFC AE220000 */  sw        $v0, ($s1)
/* 403240 E0116C00 24020040 */  addiu     $v0, $zero, 0x40
/* 403244 E0116C04 AC640000 */  sw        $a0, ($v1)
/* 403248 E0116C08 AC620004 */  sw        $v0, 4($v1)
/* 40324C E0116C0C 26730001 */  addiu     $s3, $s3, 1
.LE0116C10:
/* 403250 E0116C10 26100030 */  addiu     $s0, $s0, 0x30
/* 403254 E0116C14 8EE20008 */  lw        $v0, 8($s7)
/* 403258 E0116C18 0262102A */  slt       $v0, $s3, $v0
/* 40325C E0116C1C 1440FF55 */  bnez      $v0, .LE0116974
/* 403260 E0116C20 26520030 */   addiu    $s2, $s2, 0x30
.LE0116C24:
/* 403264 E0116C24 8FBF0034 */  lw        $ra, 0x34($sp)
/* 403268 E0116C28 8FBE0030 */  lw        $fp, 0x30($sp)
/* 40326C E0116C2C 8FB7002C */  lw        $s7, 0x2c($sp)
/* 403270 E0116C30 8FB60028 */  lw        $s6, 0x28($sp)
/* 403274 E0116C34 8FB50024 */  lw        $s5, 0x24($sp)
/* 403278 E0116C38 8FB40020 */  lw        $s4, 0x20($sp)
/* 40327C E0116C3C 8FB3001C */  lw        $s3, 0x1c($sp)
/* 403280 E0116C40 8FB20018 */  lw        $s2, 0x18($sp)
/* 403284 E0116C44 8FB10014 */  lw        $s1, 0x14($sp)
/* 403288 E0116C48 8FB00010 */  lw        $s0, 0x10($sp)
/* 40328C E0116C4C D7B40038 */  ldc1      $f20, 0x38($sp)
/* 403290 E0116C50 03E00008 */  jr        $ra
/* 403294 E0116C54 27BD0040 */   addiu    $sp, $sp, 0x40
/* 403298 E0116C58 00000000 */  nop
/* 40329C E0116C5C 00000000 */  nop
