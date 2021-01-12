.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80218000_623BA0
/* 623BA0 80218000 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 623BA4 80218004 AFB40020 */  sw        $s4, 0x20($sp)
/* 623BA8 80218008 0080A02D */  daddu     $s4, $a0, $zero
/* 623BAC 8021800C AFB00010 */  sw        $s0, 0x10($sp)
/* 623BB0 80218010 AFBF0024 */  sw        $ra, 0x24($sp)
/* 623BB4 80218014 AFB3001C */  sw        $s3, 0x1c($sp)
/* 623BB8 80218018 AFB20018 */  sw        $s2, 0x18($sp)
/* 623BBC 8021801C AFB10014 */  sw        $s1, 0x14($sp)
/* 623BC0 80218020 F7BA0040 */  sdc1      $f26, 0x40($sp)
/* 623BC4 80218024 F7B80038 */  sdc1      $f24, 0x38($sp)
/* 623BC8 80218028 F7B60030 */  sdc1      $f22, 0x30($sp)
/* 623BCC 8021802C F7B40028 */  sdc1      $f20, 0x28($sp)
/* 623BD0 80218030 8E840148 */  lw        $a0, 0x148($s4)
/* 623BD4 80218034 8E92000C */  lw        $s2, 0xc($s4)
/* 623BD8 80218038 0C09A75B */  jal       get_actor
/* 623BDC 8021803C 00A0802D */   daddu    $s0, $a1, $zero
/* 623BE0 80218040 0040982D */  daddu     $s3, $v0, $zero
/* 623BE4 80218044 12000011 */  beqz      $s0, .L8021808C
/* 623BE8 80218048 2671000C */   addiu    $s1, $s3, 0xc
/* 623BEC 8021804C 8E450000 */  lw        $a1, ($s2)
/* 623BF0 80218050 26520004 */  addiu     $s2, $s2, 4
/* 623BF4 80218054 0C0B1EAF */  jal       get_variable
/* 623BF8 80218058 0280202D */   daddu    $a0, $s4, $zero
/* 623BFC 8021805C A6620070 */  sh        $v0, 0x70($s3)
/* 623C00 80218060 8E450000 */  lw        $a1, ($s2)
/* 623C04 80218064 0C0B1EAF */  jal       get_variable
/* 623C08 80218068 0280202D */   daddu    $a0, $s4, $zero
/* 623C0C 8021806C A6620072 */  sh        $v0, 0x72($s3)
/* 623C10 80218070 AE800074 */  sw        $zero, 0x74($s4)
/* 623C14 80218074 AE800070 */  sw        $zero, 0x70($s4)
/* 623C18 80218078 86630072 */  lh        $v1, 0x72($s3)
/* 623C1C 8021807C 24020001 */  addiu     $v0, $zero, 1
/* 623C20 80218080 14620002 */  bne       $v1, $v0, .L8021808C
/* 623C24 80218084 24020002 */   addiu    $v0, $zero, 2
/* 623C28 80218088 AE820070 */  sw        $v0, 0x70($s4)
.L8021808C:
/* 623C2C 8021808C 8E820070 */  lw        $v0, 0x70($s4)
/* 623C30 80218090 144000F7 */  bnez      $v0, .L80218470
/* 623C34 80218094 00000000 */   nop
/* 623C38 80218098 C6600144 */  lwc1      $f0, 0x144($s3)
/* 623C3C 8021809C C638000C */  lwc1      $f24, 0xc($s1)
/* 623C40 802180A0 C63A0014 */  lwc1      $f26, 0x14($s1)
/* 623C44 802180A4 E6200000 */  swc1      $f0, ($s1)
/* 623C48 802180A8 C6600148 */  lwc1      $f0, 0x148($s3)
/* 623C4C 802180AC 4406C000 */  mfc1      $a2, $f24
/* 623C50 802180B0 4407D000 */  mfc1      $a3, $f26
/* 623C54 802180B4 C6360000 */  lwc1      $f22, ($s1)
/* 623C58 802180B8 E6200004 */  swc1      $f0, 4($s1)
/* 623C5C 802180BC C674014C */  lwc1      $f20, 0x14c($s3)
/* 623C60 802180C0 4600B306 */  mov.s     $f12, $f22
/* 623C64 802180C4 4600A386 */  mov.s     $f14, $f20
/* 623C68 802180C8 0C00A720 */  jal       atan2
/* 623C6C 802180CC E6340008 */   swc1     $f20, 8($s1)
/* 623C70 802180D0 4600B306 */  mov.s     $f12, $f22
/* 623C74 802180D4 4406C000 */  mfc1      $a2, $f24
/* 623C78 802180D8 4407D000 */  mfc1      $a3, $f26
/* 623C7C 802180DC 4600A386 */  mov.s     $f14, $f20
/* 623C80 802180E0 0C00A7B5 */  jal       dist2D
/* 623C84 802180E4 E6200048 */   swc1     $f0, 0x48($s1)
/* 623C88 802180E8 86220064 */  lh        $v0, 0x64($s1)
/* 623C8C 802180EC 46000106 */  mov.s     $f4, $f0
/* 623C90 802180F0 14400012 */  bnez      $v0, .L8021813C
/* 623C94 802180F4 E624004C */   swc1     $f4, 0x4c($s1)
/* 623C98 802180F8 C6200040 */  lwc1      $f0, 0x40($s1)
/* 623C9C 802180FC C6220040 */  lwc1      $f2, 0x40($s1)
/* 623CA0 80218100 46002003 */  div.s     $f0, $f4, $f0
/* 623CA4 80218104 4600028D */  trunc.w.s $f10, $f0
/* 623CA8 80218108 44035000 */  mfc1      $v1, $f10
/* 623CAC 8021810C 00000000 */  nop
/* 623CB0 80218110 00031400 */  sll       $v0, $v1, 0x10
/* 623CB4 80218114 00021403 */  sra       $v0, $v0, 0x10
/* 623CB8 80218118 44820000 */  mtc1      $v0, $f0
/* 623CBC 8021811C 00000000 */  nop
/* 623CC0 80218120 46800020 */  cvt.s.w   $f0, $f0
/* 623CC4 80218124 46020002 */  mul.s     $f0, $f0, $f2
/* 623CC8 80218128 00000000 */  nop
/* 623CCC 8021812C 46002086 */  mov.s     $f2, $f4
/* 623CD0 80218130 A6230064 */  sh        $v1, 0x64($s1)
/* 623CD4 80218134 0808605C */  j         .L80218170
/* 623CD8 80218138 46001201 */   sub.s    $f8, $f2, $f0
.L8021813C:
/* 623CDC 8021813C 44821000 */  mtc1      $v0, $f2
/* 623CE0 80218140 00000000 */  nop
/* 623CE4 80218144 468010A0 */  cvt.s.w   $f2, $f2
/* 623CE8 80218148 86220064 */  lh        $v0, 0x64($s1)
/* 623CEC 8021814C 46022083 */  div.s     $f2, $f4, $f2
/* 623CF0 80218150 44820000 */  mtc1      $v0, $f0
/* 623CF4 80218154 00000000 */  nop
/* 623CF8 80218158 46800020 */  cvt.s.w   $f0, $f0
/* 623CFC 8021815C 46020002 */  mul.s     $f0, $f0, $f2
/* 623D00 80218160 00000000 */  nop
/* 623D04 80218164 C624004C */  lwc1      $f4, 0x4c($s1)
/* 623D08 80218168 E6220040 */  swc1      $f2, 0x40($s1)
/* 623D0C 8021816C 46002201 */  sub.s     $f8, $f4, $f0
.L80218170:
/* 623D10 80218170 86230064 */  lh        $v1, 0x64($s1)
/* 623D14 80218174 106001BA */  beqz      $v1, .L80218860
/* 623D18 80218178 24020002 */   addiu    $v0, $zero, 2
/* 623D1C 8021817C 86220064 */  lh        $v0, 0x64($s1)
/* 623D20 80218180 C622000C */  lwc1      $f2, 0xc($s1)
/* 623D24 80218184 3C014049 */  lui       $at, 0x4049
/* 623D28 80218188 34210FD0 */  ori       $at, $at, 0xfd0
/* 623D2C 8021818C 44810000 */  mtc1      $at, $f0
/* 623D30 80218190 C6240000 */  lwc1      $f4, ($s1)
/* 623D34 80218194 44823000 */  mtc1      $v0, $f6
/* 623D38 80218198 00000000 */  nop
/* 623D3C 8021819C 468031A0 */  cvt.s.w   $f6, $f6
/* 623D40 802181A0 46060003 */  div.s     $f0, $f0, $f6
/* 623D44 802181A4 46041081 */  sub.s     $f2, $f2, $f4
/* 623D48 802181A8 E620003C */  swc1      $f0, 0x3c($s1)
/* 623D4C 802181AC 44830000 */  mtc1      $v1, $f0
/* 623D50 802181B0 00000000 */  nop
/* 623D54 802181B4 46800020 */  cvt.s.w   $f0, $f0
/* 623D58 802181B8 46001083 */  div.s     $f2, $f2, $f0
/* 623D5C 802181BC C6200010 */  lwc1      $f0, 0x10($s1)
/* 623D60 802181C0 E6220030 */  swc1      $f2, 0x30($s1)
/* 623D64 802181C4 C6220004 */  lwc1      $f2, 4($s1)
/* 623D68 802181C8 AE200044 */  sw        $zero, 0x44($s1)
/* 623D6C 802181CC 46020001 */  sub.s     $f0, $f0, $f2
/* 623D70 802181D0 C6240014 */  lwc1      $f4, 0x14($s1)
/* 623D74 802181D4 46003086 */  mov.s     $f2, $f6
/* 623D78 802181D8 46020003 */  div.s     $f0, $f0, $f2
/* 623D7C 802181DC E6200034 */  swc1      $f0, 0x34($s1)
/* 623D80 802181E0 46003006 */  mov.s     $f0, $f6
/* 623D84 802181E4 46004003 */  div.s     $f0, $f8, $f0
/* 623D88 802181E8 C6220008 */  lwc1      $f2, 8($s1)
/* 623D8C 802181EC 86220066 */  lh        $v0, 0x66($s1)
/* 623D90 802181F0 46022101 */  sub.s     $f4, $f4, $f2
/* 623D94 802181F4 C6220040 */  lwc1      $f2, 0x40($s1)
/* 623D98 802181F8 28420003 */  slti      $v0, $v0, 3
/* 623D9C 802181FC 46001080 */  add.s     $f2, $f2, $f0
/* 623DA0 80218200 46062103 */  div.s     $f4, $f4, $f6
/* 623DA4 80218204 E6240038 */  swc1      $f4, 0x38($s1)
/* 623DA8 80218208 10400045 */  beqz      $v0, .L80218320
/* 623DAC 8021820C E6220040 */   swc1     $f2, 0x40($s1)
/* 623DB0 80218210 86220064 */  lh        $v0, 0x64($s1)
/* 623DB4 80218214 24030168 */  addiu     $v1, $zero, 0x168
/* 623DB8 80218218 14400002 */  bnez      $v0, .L80218224
/* 623DBC 8021821C 0062001A */   div      $zero, $v1, $v0
/* 623DC0 80218220 0007000D */  break     7
.L80218224:
/* 623DC4 80218224 2401FFFF */   addiu    $at, $zero, -1
/* 623DC8 80218228 14410004 */  bne       $v0, $at, .L8021823C
/* 623DCC 8021822C 3C018000 */   lui      $at, 0x8000
/* 623DD0 80218230 14610002 */  bne       $v1, $at, .L8021823C
/* 623DD4 80218234 00000000 */   nop
/* 623DD8 80218238 0006000D */  break     6
.L8021823C:
/* 623DDC 8021823C 00001812 */   mflo     $v1
/* 623DE0 80218240 C628004C */  lwc1      $f8, 0x4c($s1)
/* 623DE4 80218244 3C014034 */  lui       $at, 0x4034
/* 623DE8 80218248 44811800 */  mtc1      $at, $f3
/* 623DEC 8021824C 44801000 */  mtc1      $zero, $f2
/* 623DF0 80218250 46004021 */  cvt.d.s   $f0, $f8
/* 623DF4 80218254 46220001 */  sub.d     $f0, $f0, $f2
/* 623DF8 80218258 3C014018 */  lui       $at, 0x4018
/* 623DFC 8021825C 44811800 */  mtc1      $at, $f3
/* 623E00 80218260 44801000 */  mtc1      $zero, $f2
/* 623E04 80218264 46200220 */  cvt.s.d   $f8, $f0
/* 623E08 80218268 46004021 */  cvt.d.s   $f0, $f8
/* 623E0C 8021826C 46220003 */  div.d     $f0, $f0, $f2
/* 623E10 80218270 46200220 */  cvt.s.d   $f8, $f0
/* 623E14 80218274 3C018023 */  lui       $at, %hi(D_802312D0)
/* 623E18 80218278 D42212D0 */  ldc1      $f2, %lo(D_802312D0)($at)
/* 623E1C 8021827C 46004021 */  cvt.d.s   $f0, $f8
/* 623E20 80218280 46220000 */  add.d     $f0, $f0, $f2
/* 623E24 80218284 3C0142B4 */  lui       $at, 0x42b4
/* 623E28 80218288 44811000 */  mtc1      $at, $f2
/* 623E2C 8021828C 46200220 */  cvt.s.d   $f8, $f0
/* 623E30 80218290 44830000 */  mtc1      $v1, $f0
/* 623E34 80218294 00000000 */  nop
/* 623E38 80218298 46800020 */  cvt.s.w   $f0, $f0
/* 623E3C 8021829C 86230066 */  lh        $v1, 0x66($s1)
/* 623E40 802182A0 24020002 */  addiu     $v0, $zero, 2
/* 623E44 802182A4 E6220024 */  swc1      $f2, 0x24($s1)
/* 623E48 802182A8 E6280050 */  swc1      $f8, 0x50($s1)
/* 623E4C 802182AC 14620008 */  bne       $v1, $v0, .L802182D0
/* 623E50 802182B0 E6200028 */   swc1     $f0, 0x28($s1)
/* 623E54 802182B4 3C018023 */  lui       $at, %hi(D_802312D8)
/* 623E58 802182B8 D42212D8 */  ldc1      $f2, %lo(D_802312D8)($at)
/* 623E5C 802182BC 46004021 */  cvt.d.s   $f0, $f8
/* 623E60 802182C0 46220002 */  mul.d     $f0, $f0, $f2
/* 623E64 802182C4 00000000 */  nop
/* 623E68 802182C8 46200020 */  cvt.s.d   $f0, $f0
/* 623E6C 802182CC E6200050 */  swc1      $f0, 0x50($s1)
.L802182D0:
/* 623E70 802182D0 C62C0024 */  lwc1      $f12, 0x24($s1)
/* 623E74 802182D4 3C0140C9 */  lui       $at, 0x40c9
/* 623E78 802182D8 34210FD0 */  ori       $at, $at, 0xfd0
/* 623E7C 802182DC 44810000 */  mtc1      $at, $f0
/* 623E80 802182E0 C6340044 */  lwc1      $f20, 0x44($s1)
/* 623E84 802182E4 C636003C */  lwc1      $f22, 0x3c($s1)
/* 623E88 802182E8 AE200018 */  sw        $zero, 0x18($s1)
/* 623E8C 802182EC 46006302 */  mul.s     $f12, $f12, $f0
/* 623E90 802182F0 00000000 */  nop
/* 623E94 802182F4 AE20001C */  sw        $zero, 0x1c($s1)
/* 623E98 802182F8 4600A521 */  cvt.d.s   $f20, $f20
/* 623E9C 802182FC 3C0143B4 */  lui       $at, 0x43b4
/* 623EA0 80218300 44810000 */  mtc1      $at, $f0
/* 623EA4 80218304 4600B5A1 */  cvt.d.s   $f22, $f22
/* 623EA8 80218308 0C00A85B */  jal       sin_rad
/* 623EAC 8021830C 46006303 */   div.s    $f12, $f12, $f0
/* 623EB0 80218310 3C018023 */  lui       $at, %hi(D_802312E0)
/* 623EB4 80218314 D42212E0 */  ldc1      $f2, %lo(D_802312E0)($at)
/* 623EB8 80218318 0808610C */  j         .L80218430
/* 623EBC 8021831C 46000021 */   cvt.d.s  $f0, $f0
.L80218320:
/* 623EC0 80218320 86220064 */  lh        $v0, 0x64($s1)
/* 623EC4 80218324 24030168 */  addiu     $v1, $zero, 0x168
/* 623EC8 80218328 14400002 */  bnez      $v0, .L80218334
/* 623ECC 8021832C 0062001A */   div      $zero, $v1, $v0
/* 623ED0 80218330 0007000D */  break     7
.L80218334:
/* 623ED4 80218334 2401FFFF */   addiu    $at, $zero, -1
/* 623ED8 80218338 14410004 */  bne       $v0, $at, .L8021834C
/* 623EDC 8021833C 3C018000 */   lui      $at, 0x8000
/* 623EE0 80218340 14610002 */  bne       $v1, $at, .L8021834C
/* 623EE4 80218344 00000000 */   nop
/* 623EE8 80218348 0006000D */  break     6
.L8021834C:
/* 623EEC 8021834C 00001812 */   mflo     $v1
/* 623EF0 80218350 C628004C */  lwc1      $f8, 0x4c($s1)
/* 623EF4 80218354 3C014034 */  lui       $at, 0x4034
/* 623EF8 80218358 44811800 */  mtc1      $at, $f3
/* 623EFC 8021835C 44801000 */  mtc1      $zero, $f2
/* 623F00 80218360 46004021 */  cvt.d.s   $f0, $f8
/* 623F04 80218364 46220001 */  sub.d     $f0, $f0, $f2
/* 623F08 80218368 3C014018 */  lui       $at, 0x4018
/* 623F0C 8021836C 44811800 */  mtc1      $at, $f3
/* 623F10 80218370 44801000 */  mtc1      $zero, $f2
/* 623F14 80218374 46200220 */  cvt.s.d   $f8, $f0
/* 623F18 80218378 46004021 */  cvt.d.s   $f0, $f8
/* 623F1C 8021837C 46220003 */  div.d     $f0, $f0, $f2
/* 623F20 80218380 46200220 */  cvt.s.d   $f8, $f0
/* 623F24 80218384 3C018023 */  lui       $at, %hi(D_802312E8)
/* 623F28 80218388 D42212E8 */  ldc1      $f2, %lo(D_802312E8)($at)
/* 623F2C 8021838C 46004021 */  cvt.d.s   $f0, $f8
/* 623F30 80218390 46220000 */  add.d     $f0, $f0, $f2
/* 623F34 80218394 3C0142B4 */  lui       $at, 0x42b4
/* 623F38 80218398 44811000 */  mtc1      $at, $f2
/* 623F3C 8021839C 46200220 */  cvt.s.d   $f8, $f0
/* 623F40 802183A0 44830000 */  mtc1      $v1, $f0
/* 623F44 802183A4 00000000 */  nop
/* 623F48 802183A8 46800020 */  cvt.s.w   $f0, $f0
/* 623F4C 802183AC 86230066 */  lh        $v1, 0x66($s1)
/* 623F50 802183B0 24020004 */  addiu     $v0, $zero, 4
/* 623F54 802183B4 E6220024 */  swc1      $f2, 0x24($s1)
/* 623F58 802183B8 E6280050 */  swc1      $f8, 0x50($s1)
/* 623F5C 802183BC 14620009 */  bne       $v1, $v0, .L802183E4
/* 623F60 802183C0 E6200028 */   swc1     $f0, 0x28($s1)
/* 623F64 802183C4 3C013FF4 */  lui       $at, 0x3ff4
/* 623F68 802183C8 44811800 */  mtc1      $at, $f3
/* 623F6C 802183CC 44801000 */  mtc1      $zero, $f2
/* 623F70 802183D0 46004021 */  cvt.d.s   $f0, $f8
/* 623F74 802183D4 46220002 */  mul.d     $f0, $f0, $f2
/* 623F78 802183D8 00000000 */  nop
/* 623F7C 802183DC 46200020 */  cvt.s.d   $f0, $f0
/* 623F80 802183E0 E6200050 */  swc1      $f0, 0x50($s1)
.L802183E4:
/* 623F84 802183E4 C62C0024 */  lwc1      $f12, 0x24($s1)
/* 623F88 802183E8 3C0140C9 */  lui       $at, 0x40c9
/* 623F8C 802183EC 34210FD0 */  ori       $at, $at, 0xfd0
/* 623F90 802183F0 44810000 */  mtc1      $at, $f0
/* 623F94 802183F4 C6340044 */  lwc1      $f20, 0x44($s1)
/* 623F98 802183F8 C636003C */  lwc1      $f22, 0x3c($s1)
/* 623F9C 802183FC AE200018 */  sw        $zero, 0x18($s1)
/* 623FA0 80218400 46006302 */  mul.s     $f12, $f12, $f0
/* 623FA4 80218404 00000000 */  nop
/* 623FA8 80218408 AE20001C */  sw        $zero, 0x1c($s1)
/* 623FAC 8021840C 4600A521 */  cvt.d.s   $f20, $f20
/* 623FB0 80218410 3C0143B4 */  lui       $at, 0x43b4
/* 623FB4 80218414 44810000 */  mtc1      $at, $f0
/* 623FB8 80218418 4600B5A1 */  cvt.d.s   $f22, $f22
/* 623FBC 8021841C 0C00A85B */  jal       sin_rad
/* 623FC0 80218420 46006303 */   div.s    $f12, $f12, $f0
/* 623FC4 80218424 3C018023 */  lui       $at, %hi(D_802312F0)
/* 623FC8 80218428 D42212F0 */  ldc1      $f2, %lo(D_802312F0)($at)
/* 623FCC 8021842C 46000021 */  cvt.d.s   $f0, $f0
.L80218430:
/* 623FD0 80218430 46220002 */  mul.d     $f0, $f0, $f2
/* 623FD4 80218434 00000000 */  nop
/* 623FD8 80218438 46360002 */  mul.d     $f0, $f0, $f22
/* 623FDC 8021843C 00000000 */  nop
/* 623FE0 80218440 46360000 */  add.d     $f0, $f0, $f22
/* 623FE4 80218444 4620A500 */  add.d     $f20, $f20, $f0
/* 623FE8 80218448 4620A520 */  cvt.s.d   $f20, $f20
/* 623FEC 8021844C E6340044 */  swc1      $f20, 0x44($s1)
/* 623FF0 80218450 2404FF81 */  addiu     $a0, $zero, -0x7f
/* 623FF4 80218454 8E260058 */  lw        $a2, 0x58($s1)
/* 623FF8 80218458 0C098F3F */  jal       set_animation
/* 623FFC 8021845C 24050001 */   addiu    $a1, $zero, 1
/* 624000 80218460 0C05272D */  jal       play_sound
/* 624004 80218464 24042081 */   addiu    $a0, $zero, 0x2081
/* 624008 80218468 24020001 */  addiu     $v0, $zero, 1
/* 62400C 8021846C AE820070 */  sw        $v0, 0x70($s4)
.L80218470:
/* 624010 80218470 8E830070 */  lw        $v1, 0x70($s4)
/* 624014 80218474 24020002 */  addiu     $v0, $zero, 2
/* 624018 80218478 10620095 */  beq       $v1, $v0, .L802186D0
/* 62401C 8021847C 24020001 */   addiu    $v0, $zero, 1
/* 624020 80218480 28620003 */  slti      $v0, $v1, 3
/* 624024 80218484 10400005 */  beqz      $v0, .L8021849C
/* 624028 80218488 24020001 */   addiu    $v0, $zero, 1
/* 62402C 8021848C 10620008 */  beq       $v1, $v0, .L802184B0
/* 624030 80218490 0000102D */   daddu    $v0, $zero, $zero
/* 624034 80218494 08086218 */  j         .L80218860
/* 624038 80218498 00000000 */   nop
.L8021849C:
/* 62403C 8021849C 24020003 */  addiu     $v0, $zero, 3
/* 624040 802184A0 106200BA */  beq       $v1, $v0, .L8021878C
/* 624044 802184A4 0000102D */   daddu    $v0, $zero, $zero
/* 624048 802184A8 08086218 */  j         .L80218860
/* 62404C 802184AC 00000000 */   nop
.L802184B0:
/* 624050 802184B0 C6220044 */  lwc1      $f2, 0x44($s1)
/* 624054 802184B4 3C013FC9 */  lui       $at, 0x3fc9
/* 624058 802184B8 34210FD0 */  ori       $at, $at, 0xfd0
/* 62405C 802184BC 44810000 */  mtc1      $at, $f0
/* 624060 802184C0 00000000 */  nop
/* 624064 802184C4 4602003C */  c.lt.s    $f0, $f2
/* 624068 802184C8 00000000 */  nop
/* 62406C 802184CC 45000004 */  bc1f      .L802184E0
/* 624070 802184D0 2404FF81 */   addiu    $a0, $zero, -0x7f
/* 624074 802184D4 8E26005C */  lw        $a2, 0x5c($s1)
/* 624078 802184D8 0C098F3F */  jal       set_animation
/* 62407C 802184DC 24050001 */   addiu    $a1, $zero, 1
.L802184E0:
/* 624080 802184E0 C6260000 */  lwc1      $f6, ($s1)
/* 624084 802184E4 C6200030 */  lwc1      $f0, 0x30($s1)
/* 624088 802184E8 C6240004 */  lwc1      $f4, 4($s1)
/* 62408C 802184EC C6760144 */  lwc1      $f22, 0x144($s3)
/* 624090 802184F0 46003180 */  add.s     $f6, $f6, $f0
/* 624094 802184F4 C6200034 */  lwc1      $f0, 0x34($s1)
/* 624098 802184F8 C6220038 */  lwc1      $f2, 0x38($s1)
/* 62409C 802184FC 46002100 */  add.s     $f4, $f4, $f0
/* 6240A0 80218500 C6200008 */  lwc1      $f0, 8($s1)
/* 6240A4 80218504 C6740148 */  lwc1      $f20, 0x148($s3)
/* 6240A8 80218508 46020000 */  add.s     $f0, $f0, $f2
/* 6240AC 8021850C E6260000 */  swc1      $f6, ($s1)
/* 6240B0 80218510 E6240004 */  swc1      $f4, 4($s1)
/* 6240B4 80218514 E6200008 */  swc1      $f0, 8($s1)
/* 6240B8 80218518 C6600148 */  lwc1      $f0, 0x148($s3)
/* 6240BC 8021851C 46003086 */  mov.s     $f2, $f6
/* 6240C0 80218520 E6200018 */  swc1      $f0, 0x18($s1)
/* 6240C4 80218524 E6620144 */  swc1      $f2, 0x144($s3)
/* 6240C8 80218528 0C00A85B */  jal       sin_rad
/* 6240CC 8021852C C62C0044 */   lwc1     $f12, 0x44($s1)
/* 6240D0 80218530 C6220050 */  lwc1      $f2, 0x50($s1)
/* 6240D4 80218534 46001082 */  mul.s     $f2, $f2, $f0
/* 6240D8 80218538 00000000 */  nop
/* 6240DC 8021853C C6200004 */  lwc1      $f0, 4($s1)
/* 6240E0 80218540 46020000 */  add.s     $f0, $f0, $f2
/* 6240E4 80218544 E6600148 */  swc1      $f0, 0x148($s3)
/* 6240E8 80218548 C6200008 */  lwc1      $f0, 8($s1)
/* 6240EC 8021854C E660014C */  swc1      $f0, 0x14c($s3)
/* 6240F0 80218550 C6220010 */  lwc1      $f2, 0x10($s1)
/* 6240F4 80218554 C6600148 */  lwc1      $f0, 0x148($s3)
/* 6240F8 80218558 4602003C */  c.lt.s    $f0, $f2
/* 6240FC 8021855C 00000000 */  nop
/* 624100 80218560 45000007 */  bc1f      .L80218580
/* 624104 80218564 4600B306 */   mov.s    $f12, $f22
/* 624108 80218568 86220064 */  lh        $v0, 0x64($s1)
/* 62410C 8021856C 28420003 */  slti      $v0, $v0, 3
/* 624110 80218570 54400002 */  bnel      $v0, $zero, .L8021857C
/* 624114 80218574 E6620148 */   swc1     $f2, 0x148($s3)
/* 624118 80218578 4600B306 */  mov.s     $f12, $f22
.L8021857C:
/* 62411C 8021857C C6600148 */  lwc1      $f0, 0x148($s3)
.L80218580:
/* 624120 80218580 8E660144 */  lw        $a2, 0x144($s3)
/* 624124 80218584 46000007 */  neg.s     $f0, $f0
/* 624128 80218588 44070000 */  mfc1      $a3, $f0
/* 62412C 8021858C 0C00A720 */  jal       atan2
/* 624130 80218590 4600A387 */   neg.s    $f14, $f20
/* 624134 80218594 46000007 */  neg.s     $f0, $f0
/* 624138 80218598 E6600164 */  swc1      $f0, 0x164($s3)
/* 62413C 8021859C 86220066 */  lh        $v0, 0x66($s1)
/* 624140 802185A0 C6600148 */  lwc1      $f0, 0x148($s3)
/* 624144 802185A4 28420003 */  slti      $v0, $v0, 3
/* 624148 802185A8 10400013 */  beqz      $v0, .L802185F8
/* 62414C 802185AC E620001C */   swc1     $f0, 0x1c($s1)
/* 624150 802185B0 C62C0024 */  lwc1      $f12, 0x24($s1)
/* 624154 802185B4 3C0140C9 */  lui       $at, 0x40c9
/* 624158 802185B8 34210FD0 */  ori       $at, $at, 0xfd0
/* 62415C 802185BC 44810000 */  mtc1      $at, $f0
/* 624160 802185C0 C6340044 */  lwc1      $f20, 0x44($s1)
/* 624164 802185C4 46006302 */  mul.s     $f12, $f12, $f0
/* 624168 802185C8 00000000 */  nop
/* 62416C 802185CC C636003C */  lwc1      $f22, 0x3c($s1)
/* 624170 802185D0 4600A521 */  cvt.d.s   $f20, $f20
/* 624174 802185D4 3C0143B4 */  lui       $at, 0x43b4
/* 624178 802185D8 44810000 */  mtc1      $at, $f0
/* 62417C 802185DC 4600B5A1 */  cvt.d.s   $f22, $f22
/* 624180 802185E0 0C00A85B */  jal       sin_rad
/* 624184 802185E4 46006303 */   div.s    $f12, $f12, $f0
/* 624188 802185E8 3C018023 */  lui       $at, %hi(D_802312F8)
/* 62418C 802185EC D42212F8 */  ldc1      $f2, %lo(D_802312F8)($at)
/* 624190 802185F0 0808618F */  j         .L8021863C
/* 624194 802185F4 46000021 */   cvt.d.s  $f0, $f0
.L802185F8:
/* 624198 802185F8 C62C0024 */  lwc1      $f12, 0x24($s1)
/* 62419C 802185FC 3C0140C9 */  lui       $at, 0x40c9
/* 6241A0 80218600 34210FD0 */  ori       $at, $at, 0xfd0
/* 6241A4 80218604 44810000 */  mtc1      $at, $f0
/* 6241A8 80218608 C6340044 */  lwc1      $f20, 0x44($s1)
/* 6241AC 8021860C 46006302 */  mul.s     $f12, $f12, $f0
/* 6241B0 80218610 00000000 */  nop
/* 6241B4 80218614 C636003C */  lwc1      $f22, 0x3c($s1)
/* 6241B8 80218618 4600A521 */  cvt.d.s   $f20, $f20
/* 6241BC 8021861C 3C0143B4 */  lui       $at, 0x43b4
/* 6241C0 80218620 44810000 */  mtc1      $at, $f0
/* 6241C4 80218624 4600B5A1 */  cvt.d.s   $f22, $f22
/* 6241C8 80218628 0C00A85B */  jal       sin_rad
/* 6241CC 8021862C 46006303 */   div.s    $f12, $f12, $f0
/* 6241D0 80218630 3C018023 */  lui       $at, %hi(D_80231300)
/* 6241D4 80218634 D4221300 */  ldc1      $f2, %lo(D_80231300)($at)
/* 6241D8 80218638 46000021 */  cvt.d.s   $f0, $f0
.L8021863C:
/* 6241DC 8021863C 46220002 */  mul.d     $f0, $f0, $f2
/* 6241E0 80218640 00000000 */  nop
/* 6241E4 80218644 46360002 */  mul.d     $f0, $f0, $f22
/* 6241E8 80218648 00000000 */  nop
/* 6241EC 8021864C 46360000 */  add.d     $f0, $f0, $f22
/* 6241F0 80218650 4620A500 */  add.d     $f20, $f20, $f0
/* 6241F4 80218654 4620A520 */  cvt.s.d   $f20, $f20
/* 6241F8 80218658 E6340044 */  swc1      $f20, 0x44($s1)
/* 6241FC 8021865C C62C0024 */  lwc1      $f12, 0x24($s1)
/* 624200 80218660 C6200028 */  lwc1      $f0, 0x28($s1)
/* 624204 80218664 46006300 */  add.s     $f12, $f12, $f0
/* 624208 80218668 0C00A6C9 */  jal       clamp_angle
/* 62420C 8021866C E62C0024 */   swc1     $f12, 0x24($s1)
/* 624210 80218670 96220064 */  lhu       $v0, 0x64($s1)
/* 624214 80218674 E6200024 */  swc1      $f0, 0x24($s1)
/* 624218 80218678 2442FFFF */  addiu     $v0, $v0, -1
/* 62421C 8021867C A6220064 */  sh        $v0, 0x64($s1)
/* 624220 80218680 00021400 */  sll       $v0, $v0, 0x10
/* 624224 80218684 14400076 */  bnez      $v0, .L80218860
/* 624228 80218688 0000102D */   daddu    $v0, $zero, $zero
/* 62422C 8021868C C6200010 */  lwc1      $f0, 0x10($s1)
/* 624230 80218690 2404FF81 */  addiu     $a0, $zero, -0x7f
/* 624234 80218694 E6600148 */  swc1      $f0, 0x148($s3)
/* 624238 80218698 C6200018 */  lwc1      $f0, 0x18($s1)
/* 62423C 8021869C C622001C */  lwc1      $f2, 0x1c($s1)
/* 624240 802186A0 8E260060 */  lw        $a2, 0x60($s1)
/* 624244 802186A4 46020001 */  sub.s     $f0, $f0, $f2
/* 624248 802186A8 3C013FE6 */  lui       $at, 0x3fe6
/* 62424C 802186AC 34216666 */  ori       $at, $at, 0x6666
/* 624250 802186B0 44811000 */  mtc1      $at, $f2
/* 624254 802186B4 24050001 */  addiu     $a1, $zero, 1
/* 624258 802186B8 E622003C */  swc1      $f2, 0x3c($s1)
/* 62425C 802186BC 46000007 */  neg.s     $f0, $f0
/* 624260 802186C0 0C098F3F */  jal       set_animation
/* 624264 802186C4 E6200044 */   swc1     $f0, 0x44($s1)
/* 624268 802186C8 08086218 */  j         .L80218860
/* 62426C 802186CC 24020001 */   addiu    $v0, $zero, 1
.L802186D0:
/* 624270 802186D0 A6220064 */  sh        $v0, 0x64($s1)
/* 624274 802186D4 86220064 */  lh        $v0, 0x64($s1)
/* 624278 802186D8 24030168 */  addiu     $v1, $zero, 0x168
/* 62427C 802186DC 14400002 */  bnez      $v0, .L802186E8
/* 624280 802186E0 0062001A */   div      $zero, $v1, $v0
/* 624284 802186E4 0007000D */  break     7
.L802186E8:
/* 624288 802186E8 2401FFFF */   addiu    $at, $zero, -1
/* 62428C 802186EC 14410004 */  bne       $v0, $at, .L80218700
/* 624290 802186F0 3C018000 */   lui      $at, 0x8000
/* 624294 802186F4 14610002 */  bne       $v1, $at, .L80218700
/* 624298 802186F8 00000000 */   nop
/* 62429C 802186FC 0006000D */  break     6
.L80218700:
/* 6242A0 80218700 00001812 */   mflo     $v1
/* 6242A4 80218704 C6220018 */  lwc1      $f2, 0x18($s1)
/* 6242A8 80218708 C620001C */  lwc1      $f0, 0x1c($s1)
/* 6242AC 8021870C 3C013FE6 */  lui       $at, 0x3fe6
/* 6242B0 80218710 34216666 */  ori       $at, $at, 0x6666
/* 6242B4 80218714 44814000 */  mtc1      $at, $f8
/* 6242B8 80218718 C624001C */  lwc1      $f4, 0x1c($s1)
/* 6242BC 8021871C 46001081 */  sub.s     $f2, $f2, $f0
/* 6242C0 80218720 C6200018 */  lwc1      $f0, 0x18($s1)
/* 6242C4 80218724 3C0142B4 */  lui       $at, 0x42b4
/* 6242C8 80218728 44813000 */  mtc1      $at, $f6
/* 6242CC 8021872C 46040001 */  sub.s     $f0, $f0, $f4
/* 6242D0 80218730 E628003C */  swc1      $f8, 0x3c($s1)
/* 6242D4 80218734 E6260024 */  swc1      $f6, 0x24($s1)
/* 6242D8 80218738 46001087 */  neg.s     $f2, $f2
/* 6242DC 8021873C E6220044 */  swc1      $f2, 0x44($s1)
/* 6242E0 80218740 3C018023 */  lui       $at, %hi(D_80231308)
/* 6242E4 80218744 D4221308 */  ldc1      $f2, %lo(D_80231308)($at)
/* 6242E8 80218748 46000005 */  abs.s     $f0, $f0
/* 6242EC 8021874C 46000021 */  cvt.d.s   $f0, $f0
/* 6242F0 80218750 46220003 */  div.d     $f0, $f0, $f2
/* 6242F4 80218754 46200020 */  cvt.s.d   $f0, $f0
/* 6242F8 80218758 E6200050 */  swc1      $f0, 0x50($s1)
/* 6242FC 8021875C 44830000 */  mtc1      $v1, $f0
/* 624300 80218760 00000000 */  nop
/* 624304 80218764 46800020 */  cvt.s.w   $f0, $f0
/* 624308 80218768 E6200028 */  swc1      $f0, 0x28($s1)
/* 62430C 8021876C C6600144 */  lwc1      $f0, 0x144($s3)
/* 624310 80218770 E6200000 */  swc1      $f0, ($s1)
/* 624314 80218774 C6600148 */  lwc1      $f0, 0x148($s3)
/* 624318 80218778 E6200004 */  swc1      $f0, 4($s1)
/* 62431C 8021877C C660014C */  lwc1      $f0, 0x14c($s3)
/* 624320 80218780 24020003 */  addiu     $v0, $zero, 3
/* 624324 80218784 E6200008 */  swc1      $f0, 8($s1)
/* 624328 80218788 AE820070 */  sw        $v0, 0x70($s4)
.L8021878C:
/* 62432C 8021878C C62C0024 */  lwc1      $f12, 0x24($s1)
/* 624330 80218790 3C0140C9 */  lui       $at, 0x40c9
/* 624334 80218794 34210FD0 */  ori       $at, $at, 0xfd0
/* 624338 80218798 4481B000 */  mtc1      $at, $f22
/* 62433C 8021879C 00000000 */  nop
/* 624340 802187A0 46166302 */  mul.s     $f12, $f12, $f22
/* 624344 802187A4 00000000 */  nop
/* 624348 802187A8 C6340000 */  lwc1      $f20, ($s1)
/* 62434C 802187AC 3C0143B4 */  lui       $at, 0x43b4
/* 624350 802187B0 4481C000 */  mtc1      $at, $f24
/* 624354 802187B4 4600A521 */  cvt.d.s   $f20, $f20
/* 624358 802187B8 0C00A85B */  jal       sin_rad
/* 62435C 802187BC 46186303 */   div.s    $f12, $f12, $f24
/* 624360 802187C0 C6220050 */  lwc1      $f2, 0x50($s1)
/* 624364 802187C4 46001082 */  mul.s     $f2, $f2, $f0
/* 624368 802187C8 00000000 */  nop
/* 62436C 802187CC C62C0024 */  lwc1      $f12, 0x24($s1)
/* 624370 802187D0 46166302 */  mul.s     $f12, $f12, $f22
/* 624374 802187D4 00000000 */  nop
/* 624378 802187D8 3C018023 */  lui       $at, %hi(D_80231310)
/* 62437C 802187DC D4201310 */  ldc1      $f0, %lo(D_80231310)($at)
/* 624380 802187E0 460010A1 */  cvt.d.s   $f2, $f2
/* 624384 802187E4 46201083 */  div.d     $f2, $f2, $f0
/* 624388 802187E8 4622A500 */  add.d     $f20, $f20, $f2
/* 62438C 802187EC 46186303 */  div.s     $f12, $f12, $f24
/* 624390 802187F0 4620A520 */  cvt.s.d   $f20, $f20
/* 624394 802187F4 0C00A85B */  jal       sin_rad
/* 624398 802187F8 E6340000 */   swc1     $f20, ($s1)
/* 62439C 802187FC C6220050 */  lwc1      $f2, 0x50($s1)
/* 6243A0 80218800 46001082 */  mul.s     $f2, $f2, $f0
/* 6243A4 80218804 00000000 */  nop
/* 6243A8 80218808 C62C0024 */  lwc1      $f12, 0x24($s1)
/* 6243AC 8021880C C6200028 */  lwc1      $f0, 0x28($s1)
/* 6243B0 80218810 46006300 */  add.s     $f12, $f12, $f0
/* 6243B4 80218814 C6200004 */  lwc1      $f0, 4($s1)
/* 6243B8 80218818 46020001 */  sub.s     $f0, $f0, $f2
/* 6243BC 8021881C E62C0024 */  swc1      $f12, 0x24($s1)
/* 6243C0 80218820 0C00A6C9 */  jal       clamp_angle
/* 6243C4 80218824 E6200004 */   swc1     $f0, 4($s1)
/* 6243C8 80218828 C6220000 */  lwc1      $f2, ($s1)
/* 6243CC 8021882C E6200024 */  swc1      $f0, 0x24($s1)
/* 6243D0 80218830 E6620144 */  swc1      $f2, 0x144($s3)
/* 6243D4 80218834 C6200004 */  lwc1      $f0, 4($s1)
/* 6243D8 80218838 E6600148 */  swc1      $f0, 0x148($s3)
/* 6243DC 8021883C C6200008 */  lwc1      $f0, 8($s1)
/* 6243E0 80218840 E660014C */  swc1      $f0, 0x14c($s3)
/* 6243E4 80218844 96230064 */  lhu       $v1, 0x64($s1)
/* 6243E8 80218848 2463FFFF */  addiu     $v1, $v1, -1
/* 6243EC 8021884C A6230064 */  sh        $v1, 0x64($s1)
/* 6243F0 80218850 00031C00 */  sll       $v1, $v1, 0x10
/* 6243F4 80218854 10600002 */  beqz      $v1, .L80218860
/* 6243F8 80218858 24020001 */   addiu    $v0, $zero, 1
/* 6243FC 8021885C 0000102D */  daddu     $v0, $zero, $zero
.L80218860:
/* 624400 80218860 8FBF0024 */  lw        $ra, 0x24($sp)
/* 624404 80218864 8FB40020 */  lw        $s4, 0x20($sp)
/* 624408 80218868 8FB3001C */  lw        $s3, 0x1c($sp)
/* 62440C 8021886C 8FB20018 */  lw        $s2, 0x18($sp)
/* 624410 80218870 8FB10014 */  lw        $s1, 0x14($sp)
/* 624414 80218874 8FB00010 */  lw        $s0, 0x10($sp)
/* 624418 80218878 D7BA0040 */  ldc1      $f26, 0x40($sp)
/* 62441C 8021887C D7B80038 */  ldc1      $f24, 0x38($sp)
/* 624420 80218880 D7B60030 */  ldc1      $f22, 0x30($sp)
/* 624424 80218884 D7B40028 */  ldc1      $f20, 0x28($sp)
/* 624428 80218888 03E00008 */  jr        $ra
/* 62442C 8021888C 27BD0048 */   addiu    $sp, $sp, 0x48
