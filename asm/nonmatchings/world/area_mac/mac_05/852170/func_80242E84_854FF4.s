.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80242E84_854FF4
/* 854FF4 80242E84 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 854FF8 80242E88 AFB20018 */  sw        $s2, 0x18($sp)
/* 854FFC 80242E8C 0080902D */  daddu     $s2, $a0, $zero
/* 855000 80242E90 AFB00010 */  sw        $s0, 0x10($sp)
/* 855004 80242E94 00A0802D */  daddu     $s0, $a1, $zero
/* 855008 80242E98 AFBF0020 */  sw        $ra, 0x20($sp)
/* 85500C 80242E9C AFB3001C */  sw        $s3, 0x1c($sp)
/* 855010 80242EA0 AFB10014 */  sw        $s1, 0x14($sp)
/* 855014 80242EA4 8E53000C */  lw        $s3, 0xc($s2)
/* 855018 80242EA8 0C00EAD2 */  jal       get_npc_safe
/* 85501C 80242EAC 0000202D */   daddu    $a0, $zero, $zero
/* 855020 80242EB0 12000018 */  beqz      $s0, .L80242F14
/* 855024 80242EB4 0040882D */   daddu    $s1, $v0, $zero
/* 855028 80242EB8 8E650000 */  lw        $a1, ($s3)
/* 85502C 80242EBC 0C0B1EAF */  jal       get_variable
/* 855030 80242EC0 0240202D */   daddu    $a0, $s2, $zero
/* 855034 80242EC4 14400005 */  bnez      $v0, .L80242EDC
/* 855038 80242EC8 AE420070 */   sw       $v0, 0x70($s2)
/* 85503C 80242ECC 2402005A */  addiu     $v0, $zero, 0x5a
/* 855040 80242ED0 AE400078 */  sw        $zero, 0x78($s2)
/* 855044 80242ED4 08090BC5 */  j         .L80242F14
/* 855048 80242ED8 AE420074 */   sw       $v0, 0x74($s2)
.L80242EDC:
/* 85504C 80242EDC 3C014422 */  lui       $at, 0x4422
/* 855050 80242EE0 34218000 */  ori       $at, $at, 0x8000
/* 855054 80242EE4 44810000 */  mtc1      $at, $f0
/* 855058 80242EE8 3C01C1F0 */  lui       $at, 0xc1f0
/* 85505C 80242EEC 44811000 */  mtc1      $at, $f2
/* 855060 80242EF0 3C0143BA */  lui       $at, 0x43ba
/* 855064 80242EF4 44812000 */  mtc1      $at, $f4
/* 855068 80242EF8 2402000A */  addiu     $v0, $zero, 0xa
/* 85506C 80242EFC AE420078 */  sw        $v0, 0x78($s2)
/* 855070 80242F00 24020122 */  addiu     $v0, $zero, 0x122
/* 855074 80242F04 AE420074 */  sw        $v0, 0x74($s2)
/* 855078 80242F08 E6200038 */  swc1      $f0, 0x38($s1)
/* 85507C 80242F0C E622003C */  swc1      $f2, 0x3c($s1)
/* 855080 80242F10 E6240040 */  swc1      $f4, 0x40($s1)
.L80242F14:
/* 855084 80242F14 8E430078 */  lw        $v1, 0x78($s2)
/* 855088 80242F18 24040001 */  addiu     $a0, $zero, 1
/* 85508C 80242F1C 10640022 */  beq       $v1, $a0, .L80242FA8
/* 855090 80242F20 28620002 */   slti     $v0, $v1, 2
/* 855094 80242F24 10400005 */  beqz      $v0, .L80242F3C
/* 855098 80242F28 2402000A */   addiu    $v0, $zero, 0xa
/* 85509C 80242F2C 10600009 */  beqz      $v1, .L80242F54
/* 8550A0 80242F30 0000102D */   daddu    $v0, $zero, $zero
/* 8550A4 80242F34 08090C1B */  j         .L8024306C
/* 8550A8 80242F38 00000000 */   nop
.L80242F3C:
/* 8550AC 80242F3C 1062002C */  beq       $v1, $v0, .L80242FF0
/* 8550B0 80242F40 2402000B */   addiu    $v0, $zero, 0xb
/* 8550B4 80242F44 1062003D */  beq       $v1, $v0, .L8024303C
/* 8550B8 80242F48 0000102D */   daddu    $v0, $zero, $zero
/* 8550BC 80242F4C 08090C1B */  j         .L8024306C
/* 8550C0 80242F50 00000000 */   nop
.L80242F54:
/* 8550C4 80242F54 3C0200B6 */  lui       $v0, 0xb6
/* 8550C8 80242F58 C624000C */  lwc1      $f4, 0xc($s1)
/* 8550CC 80242F5C 3C013F80 */  lui       $at, 0x3f80
/* 8550D0 80242F60 44810000 */  mtc1      $at, $f0
/* 8550D4 80242F64 3C014040 */  lui       $at, 0x4040
/* 8550D8 80242F68 44811000 */  mtc1      $at, $f2
/* 8550DC 80242F6C 46002101 */  sub.s     $f4, $f4, $f0
/* 8550E0 80242F70 C6200038 */  lwc1      $f0, 0x38($s1)
/* 8550E4 80242F74 34420001 */  ori       $v0, $v0, 1
/* 8550E8 80242F78 46020000 */  add.s     $f0, $f0, $f2
/* 8550EC 80242F7C AE220028 */  sw        $v0, 0x28($s1)
/* 8550F0 80242F80 E624000C */  swc1      $f4, 0xc($s1)
/* 8550F4 80242F84 E6200038 */  swc1      $f0, 0x38($s1)
/* 8550F8 80242F88 8E420074 */  lw        $v0, 0x74($s2)
/* 8550FC 80242F8C 2442FFFF */  addiu     $v0, $v0, -1
/* 855100 80242F90 1C400035 */  bgtz      $v0, .L80243068
/* 855104 80242F94 AE420074 */   sw       $v0, 0x74($s2)
/* 855108 80242F98 240200C8 */  addiu     $v0, $zero, 0xc8
/* 85510C 80242F9C AE440078 */  sw        $a0, 0x78($s2)
/* 855110 80242FA0 08090C1A */  j         .L80243068
/* 855114 80242FA4 AE420074 */   sw       $v0, 0x74($s2)
.L80242FA8:
/* 855118 80242FA8 0000202D */  daddu     $a0, $zero, $zero
/* 85511C 80242FAC 3C05FAA2 */  lui       $a1, 0xfaa2
/* 855120 80242FB0 0C0B1EAF */  jal       get_variable
/* 855124 80242FB4 34A5B581 */   ori      $a1, $a1, 0xb581
/* 855128 80242FB8 1040002C */  beqz      $v0, .L8024306C
/* 85512C 80242FBC 0000102D */   daddu    $v0, $zero, $zero
/* 855130 80242FC0 C6200038 */  lwc1      $f0, 0x38($s1)
/* 855134 80242FC4 3C014040 */  lui       $at, 0x4040
/* 855138 80242FC8 44811000 */  mtc1      $at, $f2
/* 85513C 80242FCC 00000000 */  nop
/* 855140 80242FD0 46020000 */  add.s     $f0, $f0, $f2
/* 855144 80242FD4 E6200038 */  swc1      $f0, 0x38($s1)
/* 855148 80242FD8 8E420074 */  lw        $v0, 0x74($s2)
/* 85514C 80242FDC 2442FFFF */  addiu     $v0, $v0, -1
/* 855150 80242FE0 1C400021 */  bgtz      $v0, .L80243068
/* 855154 80242FE4 AE420074 */   sw       $v0, 0x74($s2)
/* 855158 80242FE8 08090C1B */  j         .L8024306C
/* 85515C 80242FEC 24020001 */   addiu    $v0, $zero, 1
.L80242FF0:
/* 855160 80242FF0 C6220038 */  lwc1      $f2, 0x38($s1)
/* 855164 80242FF4 3C014040 */  lui       $at, 0x4040
/* 855168 80242FF8 44810000 */  mtc1      $at, $f0
/* 85516C 80242FFC 00000000 */  nop
/* 855170 80243000 46001081 */  sub.s     $f2, $f2, $f0
/* 855174 80243004 3C014387 */  lui       $at, 0x4387
/* 855178 80243008 44810000 */  mtc1      $at, $f0
/* 85517C 8024300C 00000000 */  nop
/* 855180 80243010 E620000C */  swc1      $f0, 0xc($s1)
/* 855184 80243014 E6220038 */  swc1      $f2, 0x38($s1)
/* 855188 80243018 8E420074 */  lw        $v0, 0x74($s2)
/* 85518C 8024301C 2442FFFF */  addiu     $v0, $v0, -1
/* 855190 80243020 1C400011 */  bgtz      $v0, .L80243068
/* 855194 80243024 AE420074 */   sw       $v0, 0x74($s2)
/* 855198 80243028 2402000B */  addiu     $v0, $zero, 0xb
/* 85519C 8024302C AE420078 */  sw        $v0, 0x78($s2)
/* 8551A0 80243030 2402005A */  addiu     $v0, $zero, 0x5a
/* 8551A4 80243034 08090C1A */  j         .L80243068
/* 8551A8 80243038 AE420074 */   sw       $v0, 0x74($s2)
.L8024303C:
/* 8551AC 8024303C C620000C */  lwc1      $f0, 0xc($s1)
/* 8551B0 80243040 3C013F80 */  lui       $at, 0x3f80
/* 8551B4 80243044 44811000 */  mtc1      $at, $f2
/* 8551B8 80243048 00000000 */  nop
/* 8551BC 8024304C 46020001 */  sub.s     $f0, $f0, $f2
/* 8551C0 80243050 E620000C */  swc1      $f0, 0xc($s1)
/* 8551C4 80243054 8E430074 */  lw        $v1, 0x74($s2)
/* 8551C8 80243058 24020001 */  addiu     $v0, $zero, 1
/* 8551CC 8024305C 2463FFFF */  addiu     $v1, $v1, -1
/* 8551D0 80243060 18600002 */  blez      $v1, .L8024306C
/* 8551D4 80243064 AE430074 */   sw       $v1, 0x74($s2)
.L80243068:
/* 8551D8 80243068 0000102D */  daddu     $v0, $zero, $zero
.L8024306C:
/* 8551DC 8024306C 8FBF0020 */  lw        $ra, 0x20($sp)
/* 8551E0 80243070 8FB3001C */  lw        $s3, 0x1c($sp)
/* 8551E4 80243074 8FB20018 */  lw        $s2, 0x18($sp)
/* 8551E8 80243078 8FB10014 */  lw        $s1, 0x14($sp)
/* 8551EC 8024307C 8FB00010 */  lw        $s0, 0x10($sp)
/* 8551F0 80243080 03E00008 */  jr        $ra
/* 8551F4 80243084 27BD0028 */   addiu    $sp, $sp, 0x28
