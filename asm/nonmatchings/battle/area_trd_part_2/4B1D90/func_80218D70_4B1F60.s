.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80218D70_4B1F60
/* 4B1F60 80218D70 27BDFFA0 */  addiu     $sp, $sp, -0x60
/* 4B1F64 80218D74 AFB20058 */  sw        $s2, 0x58($sp)
/* 4B1F68 80218D78 0080902D */  daddu     $s2, $a0, $zero
/* 4B1F6C 80218D7C AFBF005C */  sw        $ra, 0x5c($sp)
/* 4B1F70 80218D80 AFB10054 */  sw        $s1, 0x54($sp)
/* 4B1F74 80218D84 AFB00050 */  sw        $s0, 0x50($sp)
/* 4B1F78 80218D88 8E50000C */  lw        $s0, 0xc($s2)
/* 4B1F7C 80218D8C 0C09A75B */  jal       get_actor
/* 4B1F80 80218D90 24040204 */   addiu    $a0, $zero, 0x204
/* 4B1F84 80218D94 8C510094 */  lw        $s1, 0x94($v0)
/* 4B1F88 80218D98 24020003 */  addiu     $v0, $zero, 3
/* 4B1F8C 80218D9C 1222001D */  beq       $s1, $v0, .L80218E14
/* 4B1F90 80218DA0 2A220004 */   slti     $v0, $s1, 4
/* 4B1F94 80218DA4 10400005 */  beqz      $v0, .L80218DBC
/* 4B1F98 80218DA8 24020002 */   addiu    $v0, $zero, 2
/* 4B1F9C 80218DAC 12220008 */  beq       $s1, $v0, .L80218DD0
/* 4B1FA0 80218DB0 0000202D */   daddu    $a0, $zero, $zero
/* 4B1FA4 80218DB4 080863C0 */  j         .L80218F00
/* 4B1FA8 80218DB8 2622FFFF */   addiu    $v0, $s1, -1
.L80218DBC:
/* 4B1FAC 80218DBC 24020004 */  addiu     $v0, $zero, 4
/* 4B1FB0 80218DC0 1222002D */  beq       $s1, $v0, .L80218E78
/* 4B1FB4 80218DC4 0000202D */   daddu    $a0, $zero, $zero
/* 4B1FB8 80218DC8 080863C0 */  j         .L80218F00
/* 4B1FBC 80218DCC 2622FFFF */   addiu    $v0, $s1, -1
.L80218DD0:
/* 4B1FC0 80218DD0 0C086334 */  jal       func_80218CD0_4B1EC0
/* 4B1FC4 80218DD4 24040003 */   addiu    $a0, $zero, 3
/* 4B1FC8 80218DD8 C4400138 */  lwc1      $f0, 0x138($v0)
/* 4B1FCC 80218DDC E7A00020 */  swc1      $f0, 0x20($sp)
/* 4B1FD0 80218DE0 C440013C */  lwc1      $f0, 0x13c($v0)
/* 4B1FD4 80218DE4 E7A00024 */  swc1      $f0, 0x24($sp)
/* 4B1FD8 80218DE8 C4400140 */  lwc1      $f0, 0x140($v0)
/* 4B1FDC 80218DEC 24040006 */  addiu     $a0, $zero, 6
/* 4B1FE0 80218DF0 0C086334 */  jal       func_80218CD0_4B1EC0
/* 4B1FE4 80218DF4 E7A00028 */   swc1     $f0, 0x28($sp)
/* 4B1FE8 80218DF8 C4400138 */  lwc1      $f0, 0x138($v0)
/* 4B1FEC 80218DFC E7A0002C */  swc1      $f0, 0x2c($sp)
/* 4B1FF0 80218E00 C440013C */  lwc1      $f0, 0x13c($v0)
/* 4B1FF4 80218E04 E7A00030 */  swc1      $f0, 0x30($sp)
/* 4B1FF8 80218E08 C4400140 */  lwc1      $f0, 0x140($v0)
/* 4B1FFC 80218E0C 080863BE */  j         .L80218EF8
/* 4B2000 80218E10 E7A00034 */   swc1     $f0, 0x34($sp)
.L80218E14:
/* 4B2004 80218E14 0C086334 */  jal       func_80218CD0_4B1EC0
/* 4B2008 80218E18 24040003 */   addiu    $a0, $zero, 3
/* 4B200C 80218E1C C4400138 */  lwc1      $f0, 0x138($v0)
/* 4B2010 80218E20 E7A00020 */  swc1      $f0, 0x20($sp)
/* 4B2014 80218E24 C440013C */  lwc1      $f0, 0x13c($v0)
/* 4B2018 80218E28 E7A00024 */  swc1      $f0, 0x24($sp)
/* 4B201C 80218E2C C4400140 */  lwc1      $f0, 0x140($v0)
/* 4B2020 80218E30 24040005 */  addiu     $a0, $zero, 5
/* 4B2024 80218E34 0C086334 */  jal       func_80218CD0_4B1EC0
/* 4B2028 80218E38 E7A00028 */   swc1     $f0, 0x28($sp)
/* 4B202C 80218E3C C4400138 */  lwc1      $f0, 0x138($v0)
/* 4B2030 80218E40 E7A0002C */  swc1      $f0, 0x2c($sp)
/* 4B2034 80218E44 C440013C */  lwc1      $f0, 0x13c($v0)
/* 4B2038 80218E48 E7A00030 */  swc1      $f0, 0x30($sp)
/* 4B203C 80218E4C C4400140 */  lwc1      $f0, 0x140($v0)
/* 4B2040 80218E50 24040006 */  addiu     $a0, $zero, 6
/* 4B2044 80218E54 0C086334 */  jal       func_80218CD0_4B1EC0
/* 4B2048 80218E58 E7A00034 */   swc1     $f0, 0x34($sp)
/* 4B204C 80218E5C C4400138 */  lwc1      $f0, 0x138($v0)
/* 4B2050 80218E60 E7A00038 */  swc1      $f0, 0x38($sp)
/* 4B2054 80218E64 C440013C */  lwc1      $f0, 0x13c($v0)
/* 4B2058 80218E68 E7A0003C */  swc1      $f0, 0x3c($sp)
/* 4B205C 80218E6C C4400140 */  lwc1      $f0, 0x140($v0)
/* 4B2060 80218E70 080863BE */  j         .L80218EF8
/* 4B2064 80218E74 E7A00040 */   swc1     $f0, 0x40($sp)
.L80218E78:
/* 4B2068 80218E78 0C086334 */  jal       func_80218CD0_4B1EC0
/* 4B206C 80218E7C 24040003 */   addiu    $a0, $zero, 3
/* 4B2070 80218E80 C4400138 */  lwc1      $f0, 0x138($v0)
/* 4B2074 80218E84 E7A00020 */  swc1      $f0, 0x20($sp)
/* 4B2078 80218E88 C440013C */  lwc1      $f0, 0x13c($v0)
/* 4B207C 80218E8C E7A00024 */  swc1      $f0, 0x24($sp)
/* 4B2080 80218E90 C4400140 */  lwc1      $f0, 0x140($v0)
/* 4B2084 80218E94 24040004 */  addiu     $a0, $zero, 4
/* 4B2088 80218E98 0C086334 */  jal       func_80218CD0_4B1EC0
/* 4B208C 80218E9C E7A00028 */   swc1     $f0, 0x28($sp)
/* 4B2090 80218EA0 C4400138 */  lwc1      $f0, 0x138($v0)
/* 4B2094 80218EA4 E7A0002C */  swc1      $f0, 0x2c($sp)
/* 4B2098 80218EA8 C440013C */  lwc1      $f0, 0x13c($v0)
/* 4B209C 80218EAC E7A00030 */  swc1      $f0, 0x30($sp)
/* 4B20A0 80218EB0 C4400140 */  lwc1      $f0, 0x140($v0)
/* 4B20A4 80218EB4 24040005 */  addiu     $a0, $zero, 5
/* 4B20A8 80218EB8 0C086334 */  jal       func_80218CD0_4B1EC0
/* 4B20AC 80218EBC E7A00034 */   swc1     $f0, 0x34($sp)
/* 4B20B0 80218EC0 C4400138 */  lwc1      $f0, 0x138($v0)
/* 4B20B4 80218EC4 E7A00038 */  swc1      $f0, 0x38($sp)
/* 4B20B8 80218EC8 C440013C */  lwc1      $f0, 0x13c($v0)
/* 4B20BC 80218ECC E7A0003C */  swc1      $f0, 0x3c($sp)
/* 4B20C0 80218ED0 C4400140 */  lwc1      $f0, 0x140($v0)
/* 4B20C4 80218ED4 24040006 */  addiu     $a0, $zero, 6
/* 4B20C8 80218ED8 0C086334 */  jal       func_80218CD0_4B1EC0
/* 4B20CC 80218EDC E7A00040 */   swc1     $f0, 0x40($sp)
/* 4B20D0 80218EE0 C4400138 */  lwc1      $f0, 0x138($v0)
/* 4B20D4 80218EE4 E7A00044 */  swc1      $f0, 0x44($sp)
/* 4B20D8 80218EE8 C440013C */  lwc1      $f0, 0x13c($v0)
/* 4B20DC 80218EEC E7A00048 */  swc1      $f0, 0x48($sp)
/* 4B20E0 80218EF0 C4400140 */  lwc1      $f0, 0x140($v0)
/* 4B20E4 80218EF4 E7A0004C */  swc1      $f0, 0x4c($sp)
.L80218EF8:
/* 4B20E8 80218EF8 0000202D */  daddu     $a0, $zero, $zero
/* 4B20EC 80218EFC 2622FFFF */  addiu     $v0, $s1, -1
.L80218F00:
/* 4B20F0 80218F00 1840002A */  blez      $v0, .L80218FAC
/* 4B20F4 80218F04 0040482D */   daddu    $t1, $v0, $zero
/* 4B20F8 80218F08 27A80020 */  addiu     $t0, $sp, 0x20
/* 4B20FC 80218F0C 0100382D */  daddu     $a3, $t0, $zero
.L80218F10:
/* 4B2100 80218F10 0091102A */  slt       $v0, $a0, $s1
/* 4B2104 80218F14 10400021 */  beqz      $v0, .L80218F9C
/* 4B2108 80218F18 0080302D */   daddu    $a2, $a0, $zero
/* 4B210C 80218F1C 00E0282D */  daddu     $a1, $a3, $zero
/* 4B2110 80218F20 00041040 */  sll       $v0, $a0, 1
/* 4B2114 80218F24 00441021 */  addu      $v0, $v0, $a0
/* 4B2118 80218F28 00021080 */  sll       $v0, $v0, 2
/* 4B211C 80218F2C 00481821 */  addu      $v1, $v0, $t0
.L80218F30:
/* 4B2120 80218F30 C4A20000 */  lwc1      $f2, ($a1)
/* 4B2124 80218F34 C4600000 */  lwc1      $f0, ($v1)
/* 4B2128 80218F38 4600103C */  c.lt.s    $f2, $f0
/* 4B212C 80218F3C 00000000 */  nop
/* 4B2130 80218F40 45000013 */  bc1f      .L80218F90
/* 4B2134 80218F44 24C60001 */   addiu    $a2, $a2, 1
/* 4B2138 80218F48 8CAA0000 */  lw        $t2, ($a1)
/* 4B213C 80218F4C 8CAB0004 */  lw        $t3, 4($a1)
/* 4B2140 80218F50 8CAC0008 */  lw        $t4, 8($a1)
/* 4B2144 80218F54 AFAA0010 */  sw        $t2, 0x10($sp)
/* 4B2148 80218F58 AFAB0014 */  sw        $t3, 0x14($sp)
/* 4B214C 80218F5C AFAC0018 */  sw        $t4, 0x18($sp)
/* 4B2150 80218F60 8C6A0000 */  lw        $t2, ($v1)
/* 4B2154 80218F64 8C6B0004 */  lw        $t3, 4($v1)
/* 4B2158 80218F68 8C6C0008 */  lw        $t4, 8($v1)
/* 4B215C 80218F6C ACAA0000 */  sw        $t2, ($a1)
/* 4B2160 80218F70 ACAB0004 */  sw        $t3, 4($a1)
/* 4B2164 80218F74 ACAC0008 */  sw        $t4, 8($a1)
/* 4B2168 80218F78 8FAA0010 */  lw        $t2, 0x10($sp)
/* 4B216C 80218F7C 8FAB0014 */  lw        $t3, 0x14($sp)
/* 4B2170 80218F80 8FAC0018 */  lw        $t4, 0x18($sp)
/* 4B2174 80218F84 AC6A0000 */  sw        $t2, ($v1)
/* 4B2178 80218F88 AC6B0004 */  sw        $t3, 4($v1)
/* 4B217C 80218F8C AC6C0008 */  sw        $t4, 8($v1)
.L80218F90:
/* 4B2180 80218F90 00D1102A */  slt       $v0, $a2, $s1
/* 4B2184 80218F94 1440FFE6 */  bnez      $v0, .L80218F30
/* 4B2188 80218F98 2463000C */   addiu    $v1, $v1, 0xc
.L80218F9C:
/* 4B218C 80218F9C 24840001 */  addiu     $a0, $a0, 1
/* 4B2190 80218FA0 0089102A */  slt       $v0, $a0, $t1
/* 4B2194 80218FA4 1440FFDA */  bnez      $v0, .L80218F10
/* 4B2198 80218FA8 24E7000C */   addiu    $a3, $a3, 0xc
.L80218FAC:
/* 4B219C 80218FAC 8E440148 */  lw        $a0, 0x148($s2)
/* 4B21A0 80218FB0 0C09A75B */  jal       get_actor
/* 4B21A4 80218FB4 00000000 */   nop
/* 4B21A8 80218FB8 24040003 */  addiu     $a0, $zero, 3
/* 4B21AC 80218FBC 8C43008C */  lw        $v1, 0x8c($v0)
/* 4B21B0 80218FC0 12240034 */  beq       $s1, $a0, .L80219094
/* 4B21B4 80218FC4 2A220004 */   slti     $v0, $s1, 4
/* 4B21B8 80218FC8 10400005 */  beqz      $v0, .L80218FE0
/* 4B21BC 80218FCC 24020002 */   addiu    $v0, $zero, 2
/* 4B21C0 80218FD0 12220008 */  beq       $s1, $v0, .L80218FF4
/* 4B21C4 80218FD4 00000000 */   nop
/* 4B21C8 80218FD8 080864BB */  j         .L802192EC
/* 4B21CC 80218FDC 00000000 */   nop
.L80218FE0:
/* 4B21D0 80218FE0 24020004 */  addiu     $v0, $zero, 4
/* 4B21D4 80218FE4 1222006B */  beq       $s1, $v0, .L80219194
/* 4B21D8 80218FE8 00000000 */   nop
/* 4B21DC 80218FEC 080864BB */  j         .L802192EC
/* 4B21E0 80218FF0 00000000 */   nop
.L80218FF4:
/* 4B21E4 80218FF4 10640005 */  beq       $v1, $a0, .L8021900C
/* 4B21E8 80218FF8 24020006 */   addiu    $v0, $zero, 6
/* 4B21EC 80218FFC 10620014 */  beq       $v1, $v0, .L80219050
/* 4B21F0 80219000 00000000 */   nop
/* 4B21F4 80219004 080864BB */  j         .L802192EC
/* 4B21F8 80219008 00000000 */   nop
.L8021900C:
/* 4B21FC 8021900C 8E050000 */  lw        $a1, ($s0)
/* 4B2200 80219010 26100004 */  addiu     $s0, $s0, 4
/* 4B2204 80219014 C7A00020 */  lwc1      $f0, 0x20($sp)
/* 4B2208 80219018 4600010D */  trunc.w.s $f4, $f0
/* 4B220C 8021901C 44062000 */  mfc1      $a2, $f4
/* 4B2210 80219020 0C0B2026 */  jal       set_variable
/* 4B2214 80219024 0240202D */   daddu    $a0, $s2, $zero
/* 4B2218 80219028 8E050000 */  lw        $a1, ($s0)
/* 4B221C 8021902C 26100004 */  addiu     $s0, $s0, 4
/* 4B2220 80219030 C7A00024 */  lwc1      $f0, 0x24($sp)
/* 4B2224 80219034 4600010D */  trunc.w.s $f4, $f0
/* 4B2228 80219038 44062000 */  mfc1      $a2, $f4
/* 4B222C 8021903C 0C0B2026 */  jal       set_variable
/* 4B2230 80219040 0240202D */   daddu    $a0, $s2, $zero
/* 4B2234 80219044 C7A00028 */  lwc1      $f0, 0x28($sp)
/* 4B2238 80219048 080864B6 */  j         .L802192D8
/* 4B223C 8021904C 0240202D */   daddu    $a0, $s2, $zero
.L80219050:
/* 4B2240 80219050 8E050000 */  lw        $a1, ($s0)
/* 4B2244 80219054 26100004 */  addiu     $s0, $s0, 4
/* 4B2248 80219058 C7A0002C */  lwc1      $f0, 0x2c($sp)
/* 4B224C 8021905C 4600010D */  trunc.w.s $f4, $f0
/* 4B2250 80219060 44062000 */  mfc1      $a2, $f4
/* 4B2254 80219064 0C0B2026 */  jal       set_variable
/* 4B2258 80219068 0240202D */   daddu    $a0, $s2, $zero
/* 4B225C 8021906C 8E050000 */  lw        $a1, ($s0)
/* 4B2260 80219070 26100004 */  addiu     $s0, $s0, 4
/* 4B2264 80219074 C7A00030 */  lwc1      $f0, 0x30($sp)
/* 4B2268 80219078 4600010D */  trunc.w.s $f4, $f0
/* 4B226C 8021907C 44062000 */  mfc1      $a2, $f4
/* 4B2270 80219080 0C0B2026 */  jal       set_variable
/* 4B2274 80219084 0240202D */   daddu    $a0, $s2, $zero
/* 4B2278 80219088 C7A00034 */  lwc1      $f0, 0x34($sp)
/* 4B227C 8021908C 080864B6 */  j         .L802192D8
/* 4B2280 80219090 0240202D */   daddu    $a0, $s2, $zero
.L80219094:
/* 4B2284 80219094 24020005 */  addiu     $v0, $zero, 5
/* 4B2288 80219098 1062001C */  beq       $v1, $v0, .L8021910C
/* 4B228C 8021909C 28620006 */   slti     $v0, $v1, 6
/* 4B2290 802190A0 10400005 */  beqz      $v0, .L802190B8
/* 4B2294 802190A4 24020006 */   addiu    $v0, $zero, 6
/* 4B2298 802190A8 10640007 */  beq       $v1, $a0, .L802190C8
/* 4B229C 802190AC 00000000 */   nop
/* 4B22A0 802190B0 080864BB */  j         .L802192EC
/* 4B22A4 802190B4 00000000 */   nop
.L802190B8:
/* 4B22A8 802190B8 10620025 */  beq       $v1, $v0, .L80219150
/* 4B22AC 802190BC 00000000 */   nop
/* 4B22B0 802190C0 080864BB */  j         .L802192EC
/* 4B22B4 802190C4 00000000 */   nop
.L802190C8:
/* 4B22B8 802190C8 8E050000 */  lw        $a1, ($s0)
/* 4B22BC 802190CC 26100004 */  addiu     $s0, $s0, 4
/* 4B22C0 802190D0 C7A00020 */  lwc1      $f0, 0x20($sp)
/* 4B22C4 802190D4 4600010D */  trunc.w.s $f4, $f0
/* 4B22C8 802190D8 44062000 */  mfc1      $a2, $f4
/* 4B22CC 802190DC 0C0B2026 */  jal       set_variable
/* 4B22D0 802190E0 0240202D */   daddu    $a0, $s2, $zero
/* 4B22D4 802190E4 8E050000 */  lw        $a1, ($s0)
/* 4B22D8 802190E8 26100004 */  addiu     $s0, $s0, 4
/* 4B22DC 802190EC C7A00024 */  lwc1      $f0, 0x24($sp)
/* 4B22E0 802190F0 4600010D */  trunc.w.s $f4, $f0
/* 4B22E4 802190F4 44062000 */  mfc1      $a2, $f4
/* 4B22E8 802190F8 0C0B2026 */  jal       set_variable
/* 4B22EC 802190FC 0240202D */   daddu    $a0, $s2, $zero
/* 4B22F0 80219100 C7A00028 */  lwc1      $f0, 0x28($sp)
/* 4B22F4 80219104 080864B6 */  j         .L802192D8
/* 4B22F8 80219108 0240202D */   daddu    $a0, $s2, $zero
.L8021910C:
/* 4B22FC 8021910C 8E050000 */  lw        $a1, ($s0)
/* 4B2300 80219110 26100004 */  addiu     $s0, $s0, 4
/* 4B2304 80219114 C7A0002C */  lwc1      $f0, 0x2c($sp)
/* 4B2308 80219118 4600010D */  trunc.w.s $f4, $f0
/* 4B230C 8021911C 44062000 */  mfc1      $a2, $f4
/* 4B2310 80219120 0C0B2026 */  jal       set_variable
/* 4B2314 80219124 0240202D */   daddu    $a0, $s2, $zero
/* 4B2318 80219128 8E050000 */  lw        $a1, ($s0)
/* 4B231C 8021912C 26100004 */  addiu     $s0, $s0, 4
/* 4B2320 80219130 C7A00030 */  lwc1      $f0, 0x30($sp)
/* 4B2324 80219134 4600010D */  trunc.w.s $f4, $f0
/* 4B2328 80219138 44062000 */  mfc1      $a2, $f4
/* 4B232C 8021913C 0C0B2026 */  jal       set_variable
/* 4B2330 80219140 0240202D */   daddu    $a0, $s2, $zero
/* 4B2334 80219144 C7A00034 */  lwc1      $f0, 0x34($sp)
/* 4B2338 80219148 080864B6 */  j         .L802192D8
/* 4B233C 8021914C 0240202D */   daddu    $a0, $s2, $zero
.L80219150:
/* 4B2340 80219150 8E050000 */  lw        $a1, ($s0)
/* 4B2344 80219154 26100004 */  addiu     $s0, $s0, 4
/* 4B2348 80219158 C7A00038 */  lwc1      $f0, 0x38($sp)
/* 4B234C 8021915C 4600010D */  trunc.w.s $f4, $f0
/* 4B2350 80219160 44062000 */  mfc1      $a2, $f4
/* 4B2354 80219164 0C0B2026 */  jal       set_variable
/* 4B2358 80219168 0240202D */   daddu    $a0, $s2, $zero
/* 4B235C 8021916C 8E050000 */  lw        $a1, ($s0)
/* 4B2360 80219170 26100004 */  addiu     $s0, $s0, 4
/* 4B2364 80219174 C7A0003C */  lwc1      $f0, 0x3c($sp)
/* 4B2368 80219178 4600010D */  trunc.w.s $f4, $f0
/* 4B236C 8021917C 44062000 */  mfc1      $a2, $f4
/* 4B2370 80219180 0C0B2026 */  jal       set_variable
/* 4B2374 80219184 0240202D */   daddu    $a0, $s2, $zero
/* 4B2378 80219188 C7A00040 */  lwc1      $f0, 0x40($sp)
/* 4B237C 8021918C 080864B6 */  j         .L802192D8
/* 4B2380 80219190 0240202D */   daddu    $a0, $s2, $zero
.L80219194:
/* 4B2384 80219194 1071001E */  beq       $v1, $s1, .L80219210
/* 4B2388 80219198 28620005 */   slti     $v0, $v1, 5
/* 4B238C 8021919C 10400005 */  beqz      $v0, .L802191B4
/* 4B2390 802191A0 24020005 */   addiu    $v0, $zero, 5
/* 4B2394 802191A4 10640009 */  beq       $v1, $a0, .L802191CC
/* 4B2398 802191A8 00000000 */   nop
/* 4B239C 802191AC 080864BB */  j         .L802192EC
/* 4B23A0 802191B0 00000000 */   nop
.L802191B4:
/* 4B23A4 802191B4 10620027 */  beq       $v1, $v0, .L80219254
/* 4B23A8 802191B8 24020006 */   addiu    $v0, $zero, 6
/* 4B23AC 802191BC 10620036 */  beq       $v1, $v0, .L80219298
/* 4B23B0 802191C0 00000000 */   nop
/* 4B23B4 802191C4 080864BB */  j         .L802192EC
/* 4B23B8 802191C8 00000000 */   nop
.L802191CC:
/* 4B23BC 802191CC 8E050000 */  lw        $a1, ($s0)
/* 4B23C0 802191D0 26100004 */  addiu     $s0, $s0, 4
/* 4B23C4 802191D4 C7A00020 */  lwc1      $f0, 0x20($sp)
/* 4B23C8 802191D8 4600010D */  trunc.w.s $f4, $f0
/* 4B23CC 802191DC 44062000 */  mfc1      $a2, $f4
/* 4B23D0 802191E0 0C0B2026 */  jal       set_variable
/* 4B23D4 802191E4 0240202D */   daddu    $a0, $s2, $zero
/* 4B23D8 802191E8 8E050000 */  lw        $a1, ($s0)
/* 4B23DC 802191EC 26100004 */  addiu     $s0, $s0, 4
/* 4B23E0 802191F0 C7A00024 */  lwc1      $f0, 0x24($sp)
/* 4B23E4 802191F4 4600010D */  trunc.w.s $f4, $f0
/* 4B23E8 802191F8 44062000 */  mfc1      $a2, $f4
/* 4B23EC 802191FC 0C0B2026 */  jal       set_variable
/* 4B23F0 80219200 0240202D */   daddu    $a0, $s2, $zero
/* 4B23F4 80219204 C7A00028 */  lwc1      $f0, 0x28($sp)
/* 4B23F8 80219208 080864B6 */  j         .L802192D8
/* 4B23FC 8021920C 0240202D */   daddu    $a0, $s2, $zero
.L80219210:
/* 4B2400 80219210 8E050000 */  lw        $a1, ($s0)
/* 4B2404 80219214 26100004 */  addiu     $s0, $s0, 4
/* 4B2408 80219218 C7A0002C */  lwc1      $f0, 0x2c($sp)
/* 4B240C 8021921C 4600010D */  trunc.w.s $f4, $f0
/* 4B2410 80219220 44062000 */  mfc1      $a2, $f4
/* 4B2414 80219224 0C0B2026 */  jal       set_variable
/* 4B2418 80219228 0240202D */   daddu    $a0, $s2, $zero
/* 4B241C 8021922C 8E050000 */  lw        $a1, ($s0)
/* 4B2420 80219230 26100004 */  addiu     $s0, $s0, 4
/* 4B2424 80219234 C7A00030 */  lwc1      $f0, 0x30($sp)
/* 4B2428 80219238 4600010D */  trunc.w.s $f4, $f0
/* 4B242C 8021923C 44062000 */  mfc1      $a2, $f4
/* 4B2430 80219240 0C0B2026 */  jal       set_variable
/* 4B2434 80219244 0240202D */   daddu    $a0, $s2, $zero
/* 4B2438 80219248 C7A00034 */  lwc1      $f0, 0x34($sp)
/* 4B243C 8021924C 080864B6 */  j         .L802192D8
/* 4B2440 80219250 0240202D */   daddu    $a0, $s2, $zero
.L80219254:
/* 4B2444 80219254 8E050000 */  lw        $a1, ($s0)
/* 4B2448 80219258 26100004 */  addiu     $s0, $s0, 4
/* 4B244C 8021925C C7A00038 */  lwc1      $f0, 0x38($sp)
/* 4B2450 80219260 4600010D */  trunc.w.s $f4, $f0
/* 4B2454 80219264 44062000 */  mfc1      $a2, $f4
/* 4B2458 80219268 0C0B2026 */  jal       set_variable
/* 4B245C 8021926C 0240202D */   daddu    $a0, $s2, $zero
/* 4B2460 80219270 8E050000 */  lw        $a1, ($s0)
/* 4B2464 80219274 26100004 */  addiu     $s0, $s0, 4
/* 4B2468 80219278 C7A0003C */  lwc1      $f0, 0x3c($sp)
/* 4B246C 8021927C 4600010D */  trunc.w.s $f4, $f0
/* 4B2470 80219280 44062000 */  mfc1      $a2, $f4
/* 4B2474 80219284 0C0B2026 */  jal       set_variable
/* 4B2478 80219288 0240202D */   daddu    $a0, $s2, $zero
/* 4B247C 8021928C C7A00040 */  lwc1      $f0, 0x40($sp)
/* 4B2480 80219290 080864B6 */  j         .L802192D8
/* 4B2484 80219294 0240202D */   daddu    $a0, $s2, $zero
.L80219298:
/* 4B2488 80219298 8E050000 */  lw        $a1, ($s0)
/* 4B248C 8021929C 26100004 */  addiu     $s0, $s0, 4
/* 4B2490 802192A0 C7A00044 */  lwc1      $f0, 0x44($sp)
/* 4B2494 802192A4 4600010D */  trunc.w.s $f4, $f0
/* 4B2498 802192A8 44062000 */  mfc1      $a2, $f4
/* 4B249C 802192AC 0C0B2026 */  jal       set_variable
/* 4B24A0 802192B0 0240202D */   daddu    $a0, $s2, $zero
/* 4B24A4 802192B4 8E050000 */  lw        $a1, ($s0)
/* 4B24A8 802192B8 26100004 */  addiu     $s0, $s0, 4
/* 4B24AC 802192BC C7A00048 */  lwc1      $f0, 0x48($sp)
/* 4B24B0 802192C0 4600010D */  trunc.w.s $f4, $f0
/* 4B24B4 802192C4 44062000 */  mfc1      $a2, $f4
/* 4B24B8 802192C8 0C0B2026 */  jal       set_variable
/* 4B24BC 802192CC 0240202D */   daddu    $a0, $s2, $zero
/* 4B24C0 802192D0 0240202D */  daddu     $a0, $s2, $zero
/* 4B24C4 802192D4 C7A0004C */  lwc1      $f0, 0x4c($sp)
.L802192D8:
/* 4B24C8 802192D8 8E050000 */  lw        $a1, ($s0)
/* 4B24CC 802192DC 4600010D */  trunc.w.s $f4, $f0
/* 4B24D0 802192E0 44062000 */  mfc1      $a2, $f4
/* 4B24D4 802192E4 0C0B2026 */  jal       set_variable
/* 4B24D8 802192E8 00000000 */   nop
.L802192EC:
/* 4B24DC 802192EC 8FBF005C */  lw        $ra, 0x5c($sp)
/* 4B24E0 802192F0 8FB20058 */  lw        $s2, 0x58($sp)
/* 4B24E4 802192F4 8FB10054 */  lw        $s1, 0x54($sp)
/* 4B24E8 802192F8 8FB00050 */  lw        $s0, 0x50($sp)
/* 4B24EC 802192FC 24020002 */  addiu     $v0, $zero, 2
/* 4B24F0 80219300 03E00008 */  jr        $ra
/* 4B24F4 80219304 27BD0060 */   addiu    $sp, $sp, 0x60
