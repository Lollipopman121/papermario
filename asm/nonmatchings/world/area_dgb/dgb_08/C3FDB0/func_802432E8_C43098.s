.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802432E8_C43098
/* C43098 802432E8 27BDFFA8 */  addiu     $sp, $sp, -0x58
/* C4309C 802432EC AFB20048 */  sw        $s2, 0x48($sp)
/* C430A0 802432F0 0080902D */  daddu     $s2, $a0, $zero
/* C430A4 802432F4 AFBF004C */  sw        $ra, 0x4c($sp)
/* C430A8 802432F8 AFB10044 */  sw        $s1, 0x44($sp)
/* C430AC 802432FC AFB00040 */  sw        $s0, 0x40($sp)
/* C430B0 80243300 F7B40050 */  sdc1      $f20, 0x50($sp)
/* C430B4 80243304 8E500148 */  lw        $s0, 0x148($s2)
/* C430B8 80243308 0C00EABB */  jal       get_npc_unsafe
/* C430BC 8024330C 86040008 */   lh       $a0, 8($s0)
/* C430C0 80243310 27A50028 */  addiu     $a1, $sp, 0x28
/* C430C4 80243314 0040882D */  daddu     $s1, $v0, $zero
/* C430C8 80243318 27A6002C */  addiu     $a2, $sp, 0x2c
/* C430CC 8024331C 27A70030 */  addiu     $a3, $sp, 0x30
/* C430D0 80243320 C620003C */  lwc1      $f0, 0x3c($s1)
/* C430D4 80243324 3C014004 */  lui       $at, 0x4004
/* C430D8 80243328 44811800 */  mtc1      $at, $f3
/* C430DC 8024332C 44801000 */  mtc1      $zero, $f2
/* C430E0 80243330 C6260038 */  lwc1      $f6, 0x38($s1)
/* C430E4 80243334 46000021 */  cvt.d.s   $f0, $f0
/* C430E8 80243338 46220000 */  add.d     $f0, $f0, $f2
/* C430EC 8024333C 3C01447A */  lui       $at, 0x447a
/* C430F0 80243340 44812000 */  mtc1      $at, $f4
/* C430F4 80243344 C6020078 */  lwc1      $f2, 0x78($s0)
/* C430F8 80243348 468010A0 */  cvt.s.w   $f2, $f2
/* C430FC 8024334C 46200020 */  cvt.s.d   $f0, $f0
/* C43100 80243350 E620003C */  swc1      $f0, 0x3c($s1)
/* C43104 80243354 46000206 */  mov.s     $f8, $f0
/* C43108 80243358 C6200040 */  lwc1      $f0, 0x40($s1)
/* C4310C 8024335C 27A20034 */  addiu     $v0, $sp, 0x34
/* C43110 80243360 E7A00030 */  swc1      $f0, 0x30($sp)
/* C43114 80243364 3C014059 */  lui       $at, 0x4059
/* C43118 80243368 44810800 */  mtc1      $at, $f1
/* C4311C 8024336C 44800000 */  mtc1      $zero, $f0
/* C43120 80243370 460010A1 */  cvt.d.s   $f2, $f2
/* C43124 80243374 E7A60028 */  swc1      $f6, 0x28($sp)
/* C43128 80243378 E7A40034 */  swc1      $f4, 0x34($sp)
/* C4312C 8024337C E7A8002C */  swc1      $f8, 0x2c($sp)
/* C43130 80243380 AFA20010 */  sw        $v0, 0x10($sp)
/* C43134 80243384 8E240080 */  lw        $a0, 0x80($s1)
/* C43138 80243388 46201083 */  div.d     $f2, $f2, $f0
/* C4313C 8024338C 0C0372DF */  jal       func_800DCB7C
/* C43140 80243390 46201520 */   cvt.s.d  $f20, $f2
/* C43144 80243394 C7A0002C */  lwc1      $f0, 0x2c($sp)
/* C43148 80243398 46140000 */  add.s     $f0, $f0, $f20
/* C4314C 8024339C C622003C */  lwc1      $f2, 0x3c($s1)
/* C43150 802433A0 4600103C */  c.lt.s    $f2, $f0
/* C43154 802433A4 00000000 */  nop
/* C43158 802433A8 45010028 */  bc1t      .L8024344C
/* C4315C 802433AC 00000000 */   nop
/* C43160 802433B0 8E0200D0 */  lw        $v0, 0xd0($s0)
/* C43164 802433B4 C62C0038 */  lwc1      $f12, 0x38($s1)
/* C43168 802433B8 C62E0040 */  lwc1      $f14, 0x40($s1)
/* C4316C 802433BC C44A0000 */  lwc1      $f10, ($v0)
/* C43170 802433C0 468052A0 */  cvt.s.w   $f10, $f10
/* C43174 802433C4 44065000 */  mfc1      $a2, $f10
/* C43178 802433C8 C44A0008 */  lwc1      $f10, 8($v0)
/* C4317C 802433CC 468052A0 */  cvt.s.w   $f10, $f10
/* C43180 802433D0 44075000 */  mfc1      $a3, $f10
/* C43184 802433D4 0C00A720 */  jal       atan2
/* C43188 802433D8 2410000A */   addiu    $s0, $zero, 0xa
/* C4318C 802433DC 24040002 */  addiu     $a0, $zero, 2
/* C43190 802433E0 0220282D */  daddu     $a1, $s1, $zero
/* C43194 802433E4 0000302D */  daddu     $a2, $zero, $zero
/* C43198 802433E8 C7A2002C */  lwc1      $f2, 0x2c($sp)
/* C4319C 802433EC 862200A8 */  lh        $v0, 0xa8($s1)
/* C431A0 802433F0 E620000C */  swc1      $f0, 0xc($s1)
/* C431A4 802433F4 3C013F80 */  lui       $at, 0x3f80
/* C431A8 802433F8 44810000 */  mtc1      $at, $f0
/* C431AC 802433FC 3C014000 */  lui       $at, 0x4000
/* C431B0 80243400 44812000 */  mtc1      $at, $f4
/* C431B4 80243404 3C01C1A0 */  lui       $at, 0xc1a0
/* C431B8 80243408 44813000 */  mtc1      $at, $f6
/* C431BC 8024340C 44825000 */  mtc1      $v0, $f10
/* C431C0 80243410 00000000 */  nop
/* C431C4 80243414 468052A0 */  cvt.s.w   $f10, $f10
/* C431C8 80243418 46141080 */  add.s     $f2, $f2, $f20
/* C431CC 8024341C 44075000 */  mfc1      $a3, $f10
/* C431D0 80243420 27A20038 */  addiu     $v0, $sp, 0x38
/* C431D4 80243424 E622003C */  swc1      $f2, 0x3c($s1)
/* C431D8 80243428 E7A00010 */  swc1      $f0, 0x10($sp)
/* C431DC 8024342C E7A40014 */  swc1      $f4, 0x14($sp)
/* C431E0 80243430 E7A60018 */  swc1      $f6, 0x18($sp)
/* C431E4 80243434 AFB0001C */  sw        $s0, 0x1c($sp)
/* C431E8 80243438 0C01BFA4 */  jal       fx_emote
/* C431EC 8024343C AFA20020 */   sw       $v0, 0x20($sp)
/* C431F0 80243440 24020012 */  addiu     $v0, $zero, 0x12
/* C431F4 80243444 A630008E */  sh        $s0, 0x8e($s1)
/* C431F8 80243448 AE420070 */  sw        $v0, 0x70($s2)
.L8024344C:
/* C431FC 8024344C 8FBF004C */  lw        $ra, 0x4c($sp)
/* C43200 80243450 8FB20048 */  lw        $s2, 0x48($sp)
/* C43204 80243454 8FB10044 */  lw        $s1, 0x44($sp)
/* C43208 80243458 8FB00040 */  lw        $s0, 0x40($sp)
/* C4320C 8024345C D7B40050 */  ldc1      $f20, 0x50($sp)
/* C43210 80243460 03E00008 */  jr        $ra
/* C43214 80243464 27BD0058 */   addiu    $sp, $sp, 0x58
