.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80242048_C87AF8
/* C87AF8 80242048 27BDFF90 */  addiu     $sp, $sp, -0x70
/* C87AFC 8024204C AFB3005C */  sw        $s3, 0x5c($sp)
/* C87B00 80242050 0080982D */  daddu     $s3, $a0, $zero
/* C87B04 80242054 AFBF0068 */  sw        $ra, 0x68($sp)
/* C87B08 80242058 AFB50064 */  sw        $s5, 0x64($sp)
/* C87B0C 8024205C AFB40060 */  sw        $s4, 0x60($sp)
/* C87B10 80242060 AFB20058 */  sw        $s2, 0x58($sp)
/* C87B14 80242064 AFB10054 */  sw        $s1, 0x54($sp)
/* C87B18 80242068 AFB00050 */  sw        $s0, 0x50($sp)
/* C87B1C 8024206C 8E710148 */  lw        $s1, 0x148($s3)
/* C87B20 80242070 86240008 */  lh        $a0, 8($s1)
/* C87B24 80242074 0C00EABB */  jal       get_npc_unsafe
/* C87B28 80242078 00A0802D */   daddu    $s0, $a1, $zero
/* C87B2C 8024207C 8E63000C */  lw        $v1, 0xc($s3)
/* C87B30 80242080 0260202D */  daddu     $a0, $s3, $zero
/* C87B34 80242084 8C650000 */  lw        $a1, ($v1)
/* C87B38 80242088 0C0B1EAF */  jal       get_variable
/* C87B3C 8024208C 0040902D */   daddu    $s2, $v0, $zero
/* C87B40 80242090 AFA00028 */  sw        $zero, 0x28($sp)
/* C87B44 80242094 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C87B48 80242098 8C630030 */  lw        $v1, 0x30($v1)
/* C87B4C 8024209C AFA3002C */  sw        $v1, 0x2c($sp)
/* C87B50 802420A0 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C87B54 802420A4 8C63001C */  lw        $v1, 0x1c($v1)
/* C87B58 802420A8 AFA30030 */  sw        $v1, 0x30($sp)
/* C87B5C 802420AC 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C87B60 802420B0 8C630024 */  lw        $v1, 0x24($v1)
/* C87B64 802420B4 AFA30034 */  sw        $v1, 0x34($sp)
/* C87B68 802420B8 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C87B6C 802420BC 8C630028 */  lw        $v1, 0x28($v1)
/* C87B70 802420C0 27B50028 */  addiu     $s5, $sp, 0x28
/* C87B74 802420C4 AFA30038 */  sw        $v1, 0x38($sp)
/* C87B78 802420C8 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C87B7C 802420CC 3C0142C8 */  lui       $at, 0x42c8
/* C87B80 802420D0 44810000 */  mtc1      $at, $f0
/* C87B84 802420D4 8C63002C */  lw        $v1, 0x2c($v1)
/* C87B88 802420D8 0040A02D */  daddu     $s4, $v0, $zero
/* C87B8C 802420DC E7A00040 */  swc1      $f0, 0x40($sp)
/* C87B90 802420E0 A7A00044 */  sh        $zero, 0x44($sp)
/* C87B94 802420E4 12000009 */  beqz      $s0, .L8024210C
/* C87B98 802420E8 AFA3003C */   sw       $v1, 0x3c($sp)
/* C87B9C 802420EC 864300A8 */  lh        $v1, 0xa8($s2)
/* C87BA0 802420F0 8E2200B0 */  lw        $v0, 0xb0($s1)
/* C87BA4 802420F4 AE20008C */  sw        $zero, 0x8c($s1)
/* C87BA8 802420F8 A22000B5 */  sb        $zero, 0xb5($s1)
/* C87BAC 802420FC 34420008 */  ori       $v0, $v0, 8
/* C87BB0 80242100 AE230084 */  sw        $v1, 0x84($s1)
/* C87BB4 80242104 08090847 */  j         .L8024211C
/* C87BB8 80242108 AE2200B0 */   sw       $v0, 0xb0($s1)
.L8024210C:
/* C87BBC 8024210C 8E2200B0 */  lw        $v0, 0xb0($s1)
/* C87BC0 80242110 30420004 */  andi      $v0, $v0, 4
/* C87BC4 80242114 10400047 */  beqz      $v0, .L80242234
/* C87BC8 80242118 00000000 */   nop
.L8024211C:
/* C87BCC 8024211C AE600070 */  sw        $zero, 0x70($s3)
/* C87BD0 80242120 A640008E */  sh        $zero, 0x8e($s2)
/* C87BD4 80242124 8E2300CC */  lw        $v1, 0xcc($s1)
/* C87BD8 80242128 2404F7FF */  addiu     $a0, $zero, -0x801
/* C87BDC 8024212C A2200007 */  sb        $zero, 7($s1)
/* C87BE0 80242130 8E420000 */  lw        $v0, ($s2)
/* C87BE4 80242134 8C630000 */  lw        $v1, ($v1)
/* C87BE8 80242138 00441024 */  and       $v0, $v0, $a0
/* C87BEC 8024213C AE420000 */  sw        $v0, ($s2)
/* C87BF0 80242140 AE430028 */  sw        $v1, 0x28($s2)
/* C87BF4 80242144 96220086 */  lhu       $v0, 0x86($s1)
/* C87BF8 80242148 A64200A8 */  sh        $v0, 0xa8($s2)
/* C87BFC 8024214C 8E2200D0 */  lw        $v0, 0xd0($s1)
/* C87C00 80242150 AE200090 */  sw        $zero, 0x90($s1)
/* C87C04 80242154 8C420034 */  lw        $v0, 0x34($v0)
/* C87C08 80242158 14400006 */  bnez      $v0, .L80242174
/* C87C0C 8024215C 2403FDFF */   addiu    $v1, $zero, -0x201
/* C87C10 80242160 8E420000 */  lw        $v0, ($s2)
/* C87C14 80242164 2403FFF7 */  addiu     $v1, $zero, -9
/* C87C18 80242168 34420200 */  ori       $v0, $v0, 0x200
/* C87C1C 8024216C 08090860 */  j         .L80242180
/* C87C20 80242170 00431024 */   and      $v0, $v0, $v1
.L80242174:
/* C87C24 80242174 8E420000 */  lw        $v0, ($s2)
/* C87C28 80242178 00431024 */  and       $v0, $v0, $v1
/* C87C2C 8024217C 34420008 */  ori       $v0, $v0, 8
.L80242180:
/* C87C30 80242180 AE420000 */  sw        $v0, ($s2)
/* C87C34 80242184 8E2200B0 */  lw        $v0, 0xb0($s1)
/* C87C38 80242188 30420004 */  andi      $v0, $v0, 4
/* C87C3C 8024218C 1040001E */  beqz      $v0, .L80242208
/* C87C40 80242190 24040002 */   addiu    $a0, $zero, 2
/* C87C44 80242194 0240282D */  daddu     $a1, $s2, $zero
/* C87C48 80242198 0000302D */  daddu     $a2, $zero, $zero
/* C87C4C 8024219C 24020063 */  addiu     $v0, $zero, 0x63
/* C87C50 802421A0 AE620070 */  sw        $v0, 0x70($s3)
/* C87C54 802421A4 AE600074 */  sw        $zero, 0x74($s3)
/* C87C58 802421A8 864300A8 */  lh        $v1, 0xa8($s2)
/* C87C5C 802421AC 3C013F80 */  lui       $at, 0x3f80
/* C87C60 802421B0 44810000 */  mtc1      $at, $f0
/* C87C64 802421B4 3C014000 */  lui       $at, 0x4000
/* C87C68 802421B8 44811000 */  mtc1      $at, $f2
/* C87C6C 802421BC 3C01C1A0 */  lui       $at, 0xc1a0
/* C87C70 802421C0 44812000 */  mtc1      $at, $f4
/* C87C74 802421C4 24020028 */  addiu     $v0, $zero, 0x28
/* C87C78 802421C8 AFA2001C */  sw        $v0, 0x1c($sp)
/* C87C7C 802421CC 44833000 */  mtc1      $v1, $f6
/* C87C80 802421D0 00000000 */  nop
/* C87C84 802421D4 468031A0 */  cvt.s.w   $f6, $f6
/* C87C88 802421D8 44073000 */  mfc1      $a3, $f6
/* C87C8C 802421DC 27A20048 */  addiu     $v0, $sp, 0x48
/* C87C90 802421E0 AFA20020 */  sw        $v0, 0x20($sp)
/* C87C94 802421E4 E7A00010 */  swc1      $f0, 0x10($sp)
/* C87C98 802421E8 E7A20014 */  swc1      $f2, 0x14($sp)
/* C87C9C 802421EC 0C01BFA4 */  jal       fx_emote
/* C87CA0 802421F0 E7A40018 */   swc1     $f4, 0x18($sp)
/* C87CA4 802421F4 8E2200B0 */  lw        $v0, 0xb0($s1)
/* C87CA8 802421F8 2403FFFB */  addiu     $v1, $zero, -5
/* C87CAC 802421FC 00431024 */  and       $v0, $v0, $v1
/* C87CB0 80242200 0809088D */  j         .L80242234
/* C87CB4 80242204 AE2200B0 */   sw       $v0, 0xb0($s1)
.L80242208:
/* C87CB8 80242208 8E220000 */  lw        $v0, ($s1)
/* C87CBC 8024220C 3C034000 */  lui       $v1, 0x4000
/* C87CC0 80242210 00431024 */  and       $v0, $v0, $v1
/* C87CC4 80242214 10400007 */  beqz      $v0, .L80242234
/* C87CC8 80242218 3C03BFFF */   lui      $v1, 0xbfff
/* C87CCC 8024221C 2402000C */  addiu     $v0, $zero, 0xc
/* C87CD0 80242220 AE620070 */  sw        $v0, 0x70($s3)
/* C87CD4 80242224 8E220000 */  lw        $v0, ($s1)
/* C87CD8 80242228 3463FFFF */  ori       $v1, $v1, 0xffff
/* C87CDC 8024222C 00431024 */  and       $v0, $v0, $v1
/* C87CE0 80242230 AE220000 */  sw        $v0, ($s1)
.L80242234:
/* C87CE4 80242234 8E220090 */  lw        $v0, 0x90($s1)
/* C87CE8 80242238 1840000C */  blez      $v0, .L8024226C
/* C87CEC 8024223C 2442FFFF */   addiu    $v0, $v0, -1
/* C87CF0 80242240 14400087 */  bnez      $v0, .L80242460
/* C87CF4 80242244 AE220090 */   sw       $v0, 0x90($s1)
/* C87CF8 80242248 3C03FFAA */  lui       $v1, 0xffaa
/* C87CFC 8024224C 8E420028 */  lw        $v0, 0x28($s2)
/* C87D00 80242250 3463FFD2 */  ori       $v1, $v1, 0xffd2
/* C87D04 80242254 00431021 */  addu      $v0, $v0, $v1
/* C87D08 80242258 2C420002 */  sltiu     $v0, $v0, 2
/* C87D0C 8024225C 10400003 */  beqz      $v0, .L8024226C
/* C87D10 80242260 3C020055 */   lui      $v0, 0x55
/* C87D14 80242264 3442000C */  ori       $v0, $v0, 0xc
/* C87D18 80242268 AE420028 */  sw        $v0, 0x28($s2)
.L8024226C:
/* C87D1C 8024226C 8E630070 */  lw        $v1, 0x70($s3)
/* C87D20 80242270 2402000C */  addiu     $v0, $zero, 0xc
/* C87D24 80242274 10620048 */  beq       $v1, $v0, .L80242398
/* C87D28 80242278 2862000D */   slti     $v0, $v1, 0xd
/* C87D2C 8024227C 1040000F */  beqz      $v0, .L802422BC
/* C87D30 80242280 24100001 */   addiu    $s0, $zero, 1
/* C87D34 80242284 1070001E */  beq       $v1, $s0, .L80242300
/* C87D38 80242288 28620002 */   slti     $v0, $v1, 2
/* C87D3C 8024228C 10400005 */  beqz      $v0, .L802422A4
/* C87D40 80242290 24020002 */   addiu    $v0, $zero, 2
/* C87D44 80242294 10600015 */  beqz      $v1, .L802422EC
/* C87D48 80242298 0260202D */   daddu    $a0, $s3, $zero
/* C87D4C 8024229C 080908FD */  j         .L802423F4
/* C87D50 802422A0 00000000 */   nop
.L802422A4:
/* C87D54 802422A4 1062001C */  beq       $v1, $v0, .L80242318
/* C87D58 802422A8 24020003 */   addiu    $v0, $zero, 3
/* C87D5C 802422AC 10620035 */  beq       $v1, $v0, .L80242384
/* C87D60 802422B0 0260202D */   daddu    $a0, $s3, $zero
/* C87D64 802422B4 080908FD */  j         .L802423F4
/* C87D68 802422B8 00000000 */   nop
.L802422BC:
/* C87D6C 802422BC 2402000E */  addiu     $v0, $zero, 0xe
/* C87D70 802422C0 1062003F */  beq       $v1, $v0, .L802423C0
/* C87D74 802422C4 0062102A */   slt      $v0, $v1, $v0
/* C87D78 802422C8 14400038 */  bnez      $v0, .L802423AC
/* C87D7C 802422CC 0260202D */   daddu    $a0, $s3, $zero
/* C87D80 802422D0 2402000F */  addiu     $v0, $zero, 0xf
/* C87D84 802422D4 10620040 */  beq       $v1, $v0, .L802423D8
/* C87D88 802422D8 24020063 */   addiu    $v0, $zero, 0x63
/* C87D8C 802422DC 10620043 */  beq       $v1, $v0, .L802423EC
/* C87D90 802422E0 00000000 */   nop
/* C87D94 802422E4 080908FD */  j         .L802423F4
/* C87D98 802422E8 00000000 */   nop
.L802422EC:
/* C87D9C 802422EC 0280282D */  daddu     $a1, $s4, $zero
/* C87DA0 802422F0 0C012568 */  jal       func_800495A0
/* C87DA4 802422F4 02A0302D */   daddu    $a2, $s5, $zero
/* C87DA8 802422F8 96220086 */  lhu       $v0, 0x86($s1)
/* C87DAC 802422FC A64200A8 */  sh        $v0, 0xa8($s2)
.L80242300:
/* C87DB0 80242300 0260202D */  daddu     $a0, $s3, $zero
/* C87DB4 80242304 0280282D */  daddu     $a1, $s4, $zero
/* C87DB8 80242308 0C0125AE */  jal       func_800496B8
/* C87DBC 8024230C 02A0302D */   daddu    $a2, $s5, $zero
/* C87DC0 80242310 080908FD */  j         .L802423F4
/* C87DC4 80242314 00000000 */   nop
.L80242318:
/* C87DC8 80242318 0260202D */  daddu     $a0, $s3, $zero
/* C87DCC 8024231C 0280282D */  daddu     $a1, $s4, $zero
/* C87DD0 80242320 0C0126D1 */  jal       base_UnkNpcAIFunc1
/* C87DD4 80242324 02A0302D */   daddu    $a2, $s5, $zero
/* C87DD8 80242328 8E230088 */  lw        $v1, 0x88($s1)
/* C87DDC 8024232C 24020006 */  addiu     $v0, $zero, 6
/* C87DE0 80242330 14620014 */  bne       $v1, $v0, .L80242384
/* C87DE4 80242334 0260202D */   daddu    $a0, $s3, $zero
/* C87DE8 80242338 0C00A67F */  jal       rand_int
/* C87DEC 8024233C 24040064 */   addiu    $a0, $zero, 0x64
/* C87DF0 80242340 28420021 */  slti      $v0, $v0, 0x21
/* C87DF4 80242344 5040000F */  beql      $v0, $zero, .L80242384
/* C87DF8 80242348 0260202D */   daddu    $a0, $s3, $zero
/* C87DFC 8024234C 8E22008C */  lw        $v0, 0x8c($s1)
/* C87E00 80242350 10400005 */  beqz      $v0, .L80242368
/* C87E04 80242354 3C020055 */   lui      $v0, 0x55
/* C87E08 80242358 3442002F */  ori       $v0, $v0, 0x2f
/* C87E0C 8024235C AE20008C */  sw        $zero, 0x8c($s1)
/* C87E10 80242360 080908DD */  j         .L80242374
/* C87E14 80242364 A22000B5 */   sb       $zero, 0xb5($s1)
.L80242368:
/* C87E18 80242368 3442002E */  ori       $v0, $v0, 0x2e
/* C87E1C 8024236C AE30008C */  sw        $s0, 0x8c($s1)
/* C87E20 80242370 A23000B5 */  sb        $s0, 0xb5($s1)
.L80242374:
/* C87E24 80242374 AE420028 */  sw        $v0, 0x28($s2)
/* C87E28 80242378 24020007 */  addiu     $v0, $zero, 7
/* C87E2C 8024237C 08090918 */  j         .L80242460
/* C87E30 80242380 AE220090 */   sw       $v0, 0x90($s1)
.L80242384:
/* C87E34 80242384 0280282D */  daddu     $a1, $s4, $zero
/* C87E38 80242388 0C012701 */  jal       func_80049C04
/* C87E3C 8024238C 02A0302D */   daddu    $a2, $s5, $zero
/* C87E40 80242390 080908FD */  j         .L802423F4
/* C87E44 80242394 00000000 */   nop
.L80242398:
/* C87E48 80242398 0260202D */  daddu     $a0, $s3, $zero
/* C87E4C 8024239C 0280282D */  daddu     $a1, $s4, $zero
/* C87E50 802423A0 0C09072D */  jal       kzn_17_set_script_owner_npc_anim
/* C87E54 802423A4 02A0302D */   daddu    $a2, $s5, $zero
/* C87E58 802423A8 0260202D */  daddu     $a0, $s3, $zero
.L802423AC:
/* C87E5C 802423AC 0280282D */  daddu     $a1, $s4, $zero
/* C87E60 802423B0 0C09074C */  jal       func_80241D30_C877E0
/* C87E64 802423B4 02A0302D */   daddu    $a2, $s5, $zero
/* C87E68 802423B8 080908FD */  j         .L802423F4
/* C87E6C 802423BC 00000000 */   nop
.L802423C0:
/* C87E70 802423C0 0260202D */  daddu     $a0, $s3, $zero
/* C87E74 802423C4 0280282D */  daddu     $a1, $s4, $zero
/* C87E78 802423C8 0C090799 */  jal       kzn_17_UnkNpcAIFunc12
/* C87E7C 802423CC 02A0302D */   daddu    $a2, $s5, $zero
/* C87E80 802423D0 080908FD */  j         .L802423F4
/* C87E84 802423D4 00000000 */   nop
.L802423D8:
/* C87E88 802423D8 0280282D */  daddu     $a1, $s4, $zero
/* C87E8C 802423DC 0C0907F2 */  jal       func_80241FC8_C87A78
/* C87E90 802423E0 02A0302D */   daddu    $a2, $s5, $zero
/* C87E94 802423E4 080908FD */  j         .L802423F4
/* C87E98 802423E8 00000000 */   nop
.L802423EC:
/* C87E9C 802423EC 0C0129CF */  jal       func_8004A73C
/* C87EA0 802423F0 0260202D */   daddu    $a0, $s3, $zero
.L802423F4:
/* C87EA4 802423F4 8E230088 */  lw        $v1, 0x88($s1)
/* C87EA8 802423F8 24020006 */  addiu     $v0, $zero, 6
/* C87EAC 802423FC 14620019 */  bne       $v1, $v0, .L80242464
/* C87EB0 80242400 0000102D */   daddu    $v0, $zero, $zero
/* C87EB4 80242404 8E22008C */  lw        $v0, 0x8c($s1)
/* C87EB8 80242408 10400003 */  beqz      $v0, .L80242418
/* C87EBC 8024240C 24020001 */   addiu    $v0, $zero, 1
/* C87EC0 80242410 08090907 */  j         .L8024241C
/* C87EC4 80242414 A22200B5 */   sb       $v0, 0xb5($s1)
.L80242418:
/* C87EC8 80242418 A22000B5 */  sb        $zero, 0xb5($s1)
.L8024241C:
/* C87ECC 8024241C 8E22008C */  lw        $v0, 0x8c($s1)
/* C87ED0 80242420 1040000F */  beqz      $v0, .L80242460
/* C87ED4 80242424 3C03FFAA */   lui      $v1, 0xffaa
/* C87ED8 80242428 8E420028 */  lw        $v0, 0x28($s2)
/* C87EDC 8024242C 3463FFFC */  ori       $v1, $v1, 0xfffc
/* C87EE0 80242430 00431821 */  addu      $v1, $v0, $v1
/* C87EE4 80242434 2C620015 */  sltiu     $v0, $v1, 0x15
/* C87EE8 80242438 10400009 */  beqz      $v0, .L80242460
/* C87EEC 8024243C 00031080 */   sll      $v0, $v1, 2
/* C87EF0 80242440 3C018024 */  lui       $at, %hi(jtbl_80246570_C8C020)
/* C87EF4 80242444 00220821 */  addu      $at, $at, $v0
/* C87EF8 80242448 8C226570 */  lw        $v0, %lo(jtbl_80246570_C8C020)($at)
/* C87EFC 8024244C 00400008 */  jr        $v0
/* C87F00 80242450 00000000 */   nop
glabel L80242454_C87F04
/* C87F04 80242454 8E420028 */  lw        $v0, 0x28($s2)
/* C87F08 80242458 24420001 */  addiu     $v0, $v0, 1
/* C87F0C 8024245C AE420028 */  sw        $v0, 0x28($s2)
.L80242460:
glabel L80242460_C87F10
/* C87F10 80242460 0000102D */  daddu     $v0, $zero, $zero
.L80242464:
/* C87F14 80242464 8FBF0068 */  lw        $ra, 0x68($sp)
/* C87F18 80242468 8FB50064 */  lw        $s5, 0x64($sp)
/* C87F1C 8024246C 8FB40060 */  lw        $s4, 0x60($sp)
/* C87F20 80242470 8FB3005C */  lw        $s3, 0x5c($sp)
/* C87F24 80242474 8FB20058 */  lw        $s2, 0x58($sp)
/* C87F28 80242478 8FB10054 */  lw        $s1, 0x54($sp)
/* C87F2C 8024247C 8FB00050 */  lw        $s0, 0x50($sp)
/* C87F30 80242480 03E00008 */  jr        $ra
/* C87F34 80242484 27BD0070 */   addiu    $sp, $sp, 0x70
