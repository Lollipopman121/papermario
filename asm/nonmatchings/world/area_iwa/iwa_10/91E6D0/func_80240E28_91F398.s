.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240E28_91F398
/* 91F398 80240E28 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 91F39C 80240E2C AFB10014 */  sw        $s1, 0x14($sp)
/* 91F3A0 80240E30 0080882D */  daddu     $s1, $a0, $zero
/* 91F3A4 80240E34 AFB20018 */  sw        $s2, 0x18($sp)
/* 91F3A8 80240E38 AFBF001C */  sw        $ra, 0x1c($sp)
/* 91F3AC 80240E3C AFB00010 */  sw        $s0, 0x10($sp)
/* 91F3B0 80240E40 8E30000C */  lw        $s0, 0xc($s1)
/* 91F3B4 80240E44 10A00010 */  beqz      $a1, .L80240E88
/* 91F3B8 80240E48 0000902D */   daddu    $s2, $zero, $zero
/* 91F3BC 80240E4C 8E050000 */  lw        $a1, ($s0)
/* 91F3C0 80240E50 0C0B1EAF */  jal       get_variable
/* 91F3C4 80240E54 26100004 */   addiu    $s0, $s0, 4
/* 91F3C8 80240E58 AE220084 */  sw        $v0, 0x84($s1)
/* 91F3CC 80240E5C 8E050000 */  lw        $a1, ($s0)
/* 91F3D0 80240E60 0C0B1EAF */  jal       get_variable
/* 91F3D4 80240E64 0220202D */   daddu    $a0, $s1, $zero
/* 91F3D8 80240E68 0240202D */  daddu     $a0, $s2, $zero
/* 91F3DC 80240E6C 240500D0 */  addiu     $a1, $zero, 0xd0
/* 91F3E0 80240E70 00A0302D */  daddu     $a2, $a1, $zero
/* 91F3E4 80240E74 00A0382D */  daddu     $a3, $a1, $zero
/* 91F3E8 80240E78 AE220088 */  sw        $v0, 0x88($s1)
/* 91F3EC 80240E7C AE200070 */  sw        $zero, 0x70($s1)
/* 91F3F0 80240E80 0C04DF84 */  jal       func_80137E10
/* 91F3F4 80240E84 AE200074 */   sw       $zero, 0x74($s1)
.L80240E88:
/* 91F3F8 80240E88 8E230070 */  lw        $v1, 0x70($s1)
/* 91F3FC 80240E8C 24040001 */  addiu     $a0, $zero, 1
/* 91F400 80240E90 10640019 */  beq       $v1, $a0, .L80240EF8
/* 91F404 80240E94 28620002 */   slti     $v0, $v1, 2
/* 91F408 80240E98 10400005 */  beqz      $v0, .L80240EB0
/* 91F40C 80240E9C 24020002 */   addiu    $v0, $zero, 2
/* 91F410 80240EA0 10600007 */  beqz      $v1, .L80240EC0
/* 91F414 80240EA4 240500FF */   addiu    $a1, $zero, 0xff
/* 91F418 80240EA8 080903CE */  j         .L80240F38
/* 91F41C 80240EAC 00000000 */   nop
.L80240EB0:
/* 91F420 80240EB0 10620019 */  beq       $v1, $v0, .L80240F18
/* 91F424 80240EB4 00000000 */   nop
/* 91F428 80240EB8 080903CE */  j         .L80240F38
/* 91F42C 80240EBC 00000000 */   nop
.L80240EC0:
/* 91F430 80240EC0 8E220074 */  lw        $v0, 0x74($s1)
/* 91F434 80240EC4 14450004 */  bne       $v0, $a1, .L80240ED8
/* 91F438 80240EC8 00000000 */   nop
/* 91F43C 80240ECC AE240070 */  sw        $a0, 0x70($s1)
/* 91F440 80240ED0 AE200078 */  sw        $zero, 0x78($s1)
/* 91F444 80240ED4 8E220074 */  lw        $v0, 0x74($s1)
.L80240ED8:
/* 91F448 80240ED8 8E230084 */  lw        $v1, 0x84($s1)
/* 91F44C 80240EDC 00431021 */  addu      $v0, $v0, $v1
/* 91F450 80240EE0 AE220074 */  sw        $v0, 0x74($s1)
/* 91F454 80240EE4 28420100 */  slti      $v0, $v0, 0x100
/* 91F458 80240EE8 50400013 */  beql      $v0, $zero, .L80240F38
/* 91F45C 80240EEC AE250074 */   sw       $a1, 0x74($s1)
/* 91F460 80240EF0 080903CE */  j         .L80240F38
/* 91F464 80240EF4 00000000 */   nop
.L80240EF8:
/* 91F468 80240EF8 8E220078 */  lw        $v0, 0x78($s1)
/* 91F46C 80240EFC 24420001 */  addiu     $v0, $v0, 1
/* 91F470 80240F00 AE220078 */  sw        $v0, 0x78($s1)
/* 91F474 80240F04 28420002 */  slti      $v0, $v0, 2
/* 91F478 80240F08 1440000B */  bnez      $v0, .L80240F38
/* 91F47C 80240F0C 24020002 */   addiu    $v0, $zero, 2
/* 91F480 80240F10 080903CE */  j         .L80240F38
/* 91F484 80240F14 AE220070 */   sw       $v0, 0x70($s1)
.L80240F18:
/* 91F488 80240F18 8E230074 */  lw        $v1, 0x74($s1)
/* 91F48C 80240F1C 50600001 */  beql      $v1, $zero, .L80240F24
/* 91F490 80240F20 24120001 */   addiu    $s2, $zero, 1
.L80240F24:
/* 91F494 80240F24 8E220088 */  lw        $v0, 0x88($s1)
/* 91F498 80240F28 00621023 */  subu      $v0, $v1, $v0
/* 91F49C 80240F2C 04410002 */  bgez      $v0, .L80240F38
/* 91F4A0 80240F30 AE220074 */   sw       $v0, 0x74($s1)
/* 91F4A4 80240F34 AE200074 */  sw        $zero, 0x74($s1)
.L80240F38:
/* 91F4A8 80240F38 C6200074 */  lwc1      $f0, 0x74($s1)
/* 91F4AC 80240F3C 46800020 */  cvt.s.w   $f0, $f0
/* 91F4B0 80240F40 44050000 */  mfc1      $a1, $f0
/* 91F4B4 80240F44 0C04DF62 */  jal       func_80137D88
/* 91F4B8 80240F48 24040001 */   addiu    $a0, $zero, 1
/* 91F4BC 80240F4C 0240102D */  daddu     $v0, $s2, $zero
/* 91F4C0 80240F50 8FBF001C */  lw        $ra, 0x1c($sp)
/* 91F4C4 80240F54 8FB20018 */  lw        $s2, 0x18($sp)
/* 91F4C8 80240F58 8FB10014 */  lw        $s1, 0x14($sp)
/* 91F4CC 80240F5C 8FB00010 */  lw        $s0, 0x10($sp)
/* 91F4D0 80240F60 03E00008 */  jr        $ra
/* 91F4D4 80240F64 27BD0020 */   addiu    $sp, $sp, 0x20
