.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802B7000_E20110
/* E20110 802B7000 3C014387 */  lui       $at, 0x4387
/* E20114 802B7004 44810000 */  mtc1      $at, $f0
/* E20118 802B7008 00000000 */  nop
/* E2011C 802B700C 460C003E */  c.le.s    $f0, $f12
/* E20120 802B7010 00000000 */  nop
/* E20124 802B7014 45000009 */  bc1f      .L802B703C
/* E20128 802B7018 240200FF */   addiu    $v0, $zero, 0xff
/* E2012C 802B701C 3C0143B4 */  lui       $at, 0x43b4
/* E20130 802B7020 44810000 */  mtc1      $at, $f0
/* E20134 802B7024 00000000 */  nop
/* E20138 802B7028 460C0001 */  sub.s     $f0, $f0, $f12
/* E2013C 802B702C 4600010D */  trunc.w.s $f4, $f0
/* E20140 802B7030 44032000 */  mfc1      $v1, $f4
/* E20144 802B7034 080ADC2B */  j         .L802B70AC
/* E20148 802B7038 00431023 */   subu     $v0, $v0, $v1
.L802B703C:
/* E2014C 802B703C 3C014334 */  lui       $at, 0x4334
/* E20150 802B7040 44811000 */  mtc1      $at, $f2
/* E20154 802B7044 00000000 */  nop
/* E20158 802B7048 460C103E */  c.le.s    $f2, $f12
/* E2015C 802B704C 00000000 */  nop
/* E20160 802B7050 45000006 */  bc1f      .L802B706C
/* E20164 802B7054 00000000 */   nop
/* E20168 802B7058 46026001 */  sub.s     $f0, $f12, $f2
/* E2016C 802B705C 4600010D */  trunc.w.s $f4, $f0
/* E20170 802B7060 44032000 */  mfc1      $v1, $f4
/* E20174 802B7064 080ADC2B */  j         .L802B70AC
/* E20178 802B7068 00431023 */   subu     $v0, $v0, $v1
.L802B706C:
/* E2017C 802B706C 3C0142B4 */  lui       $at, 0x42b4
/* E20180 802B7070 44810000 */  mtc1      $at, $f0
/* E20184 802B7074 00000000 */  nop
/* E20188 802B7078 460C003E */  c.le.s    $f0, $f12
/* E2018C 802B707C 00000000 */  nop
/* E20190 802B7080 45000006 */  bc1f      .L802B709C
/* E20194 802B7084 240200FF */   addiu    $v0, $zero, 0xff
/* E20198 802B7088 460C1001 */  sub.s     $f0, $f2, $f12
/* E2019C 802B708C 4600010D */  trunc.w.s $f4, $f0
/* E201A0 802B7090 44032000 */  mfc1      $v1, $f4
/* E201A4 802B7094 080ADC2B */  j         .L802B70AC
/* E201A8 802B7098 00431023 */   subu     $v0, $v0, $v1
.L802B709C:
/* E201AC 802B709C 4600610D */  trunc.w.s $f4, $f12
/* E201B0 802B70A0 44032000 */  mfc1      $v1, $f4
/* E201B4 802B70A4 00000000 */  nop
/* E201B8 802B70A8 00431023 */  subu      $v0, $v0, $v1
.L802B70AC:
/* E201BC 802B70AC 03E00008 */  jr        $ra
/* E201C0 802B70B0 00431023 */   subu     $v0, $v0, $v1
