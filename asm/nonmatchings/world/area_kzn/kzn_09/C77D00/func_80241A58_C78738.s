.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241A58_C78738
/* C78738 80241A58 27BDFF80 */  addiu     $sp, $sp, -0x80
/* C7873C 80241A5C AFBF0064 */  sw        $ra, 0x64($sp)
/* C78740 80241A60 AFBE0060 */  sw        $fp, 0x60($sp)
/* C78744 80241A64 AFB7005C */  sw        $s7, 0x5c($sp)
/* C78748 80241A68 AFB60058 */  sw        $s6, 0x58($sp)
/* C7874C 80241A6C AFB50054 */  sw        $s5, 0x54($sp)
/* C78750 80241A70 AFB40050 */  sw        $s4, 0x50($sp)
/* C78754 80241A74 AFB3004C */  sw        $s3, 0x4c($sp)
/* C78758 80241A78 AFB20048 */  sw        $s2, 0x48($sp)
/* C7875C 80241A7C AFB10044 */  sw        $s1, 0x44($sp)
/* C78760 80241A80 AFB00040 */  sw        $s0, 0x40($sp)
/* C78764 80241A84 F7B80078 */  sdc1      $f24, 0x78($sp)
/* C78768 80241A88 F7B60070 */  sdc1      $f22, 0x70($sp)
/* C7876C 80241A8C F7B40068 */  sdc1      $f20, 0x68($sp)
/* C78770 80241A90 AFA40080 */  sw        $a0, 0x80($sp)
/* C78774 80241A94 8C960148 */  lw        $s6, 0x148($a0)
/* C78778 80241A98 00C0902D */  daddu     $s2, $a2, $zero
/* C7877C 80241A9C 86C40008 */  lh        $a0, 8($s6)
/* C78780 80241AA0 0C00EABB */  jal       get_npc_unsafe
/* C78784 80241AA4 0000B82D */   daddu    $s7, $zero, $zero
/* C78788 80241AA8 0040882D */  daddu     $s1, $v0, $zero
/* C7878C 80241AAC 9622008E */  lhu       $v0, 0x8e($s1)
/* C78790 80241AB0 2442FFFF */  addiu     $v0, $v0, -1
/* C78794 80241AB4 A622008E */  sh        $v0, 0x8e($s1)
/* C78798 80241AB8 00021400 */  sll       $v0, $v0, 0x10
/* C7879C 80241ABC 8EC30090 */  lw        $v1, 0x90($s6)
/* C787A0 80241AC0 00021403 */  sra       $v0, $v0, 0x10
/* C787A4 80241AC4 0062182A */  slt       $v1, $v1, $v0
/* C787A8 80241AC8 14600005 */  bnez      $v1, .L80241AE0
/* C787AC 80241ACC 02E0F02D */   daddu    $fp, $s7, $zero
/* C787B0 80241AD0 8EC20000 */  lw        $v0, ($s6)
/* C787B4 80241AD4 3C031F10 */  lui       $v1, 0x1f10
/* C787B8 80241AD8 00431025 */  or        $v0, $v0, $v1
/* C787BC 80241ADC AEC20000 */  sw        $v0, ($s6)
.L80241AE0:
/* C787C0 80241AE0 8622008E */  lh        $v0, 0x8e($s1)
/* C787C4 80241AE4 1440025D */  bnez      $v0, .L8024245C
/* C787C8 80241AE8 00000000 */   nop
/* C787CC 80241AEC 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* C787D0 80241AF0 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* C787D4 80241AF4 0C00A6C9 */  jal       clamp_angle
/* C787D8 80241AF8 C44C00A8 */   lwc1     $f12, 0xa8($v0)
/* C787DC 80241AFC 3C014334 */  lui       $at, 0x4334
/* C787E0 80241B00 44811000 */  mtc1      $at, $f2
/* C787E4 80241B04 00000000 */  nop
/* C787E8 80241B08 4602003C */  c.lt.s    $f0, $f2
/* C787EC 80241B0C 00000000 */  nop
/* C787F0 80241B10 45000011 */  bc1f      .L80241B58
/* C787F4 80241B14 00000000 */   nop
/* C787F8 80241B18 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* C787FC 80241B1C 8C637410 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* C78800 80241B20 3C0142B4 */  lui       $at, 0x42b4
/* C78804 80241B24 44816000 */  mtc1      $at, $f12
/* C78808 80241B28 00031080 */  sll       $v0, $v1, 2
/* C7880C 80241B2C 00431021 */  addu      $v0, $v0, $v1
/* C78810 80241B30 00021080 */  sll       $v0, $v0, 2
/* C78814 80241B34 00431023 */  subu      $v0, $v0, $v1
/* C78818 80241B38 000218C0 */  sll       $v1, $v0, 3
/* C7881C 80241B3C 00431021 */  addu      $v0, $v0, $v1
/* C78820 80241B40 000210C0 */  sll       $v0, $v0, 3
/* C78824 80241B44 3C01800B */  lui       $at, %hi(D_800B1DEC)
/* C78828 80241B48 00220821 */  addu      $at, $at, $v0
/* C7882C 80241B4C C4201DEC */  lwc1      $f0, %lo(D_800B1DEC)($at)
/* C78830 80241B50 080906E5 */  j         .L80241B94
/* C78834 80241B54 460C0301 */   sub.s    $f12, $f0, $f12
.L80241B58:
/* C78838 80241B58 3C038007 */  lui       $v1, %hi(gCurrentCameraID)
/* C7883C 80241B5C 8C637410 */  lw        $v1, %lo(gCurrentCameraID)($v1)
/* C78840 80241B60 3C0142B4 */  lui       $at, 0x42b4
/* C78844 80241B64 44816000 */  mtc1      $at, $f12
/* C78848 80241B68 00031080 */  sll       $v0, $v1, 2
/* C7884C 80241B6C 00431021 */  addu      $v0, $v0, $v1
/* C78850 80241B70 00021080 */  sll       $v0, $v0, 2
/* C78854 80241B74 00431023 */  subu      $v0, $v0, $v1
/* C78858 80241B78 000218C0 */  sll       $v1, $v0, 3
/* C7885C 80241B7C 00431021 */  addu      $v0, $v0, $v1
/* C78860 80241B80 000210C0 */  sll       $v0, $v0, 3
/* C78864 80241B84 3C01800B */  lui       $at, %hi(D_800B1DEC)
/* C78868 80241B88 00220821 */  addu      $at, $at, $v0
/* C7886C 80241B8C C4201DEC */  lwc1      $f0, %lo(D_800B1DEC)($at)
/* C78870 80241B90 460C0300 */  add.s     $f12, $f0, $f12
.L80241B94:
/* C78874 80241B94 0C00A6C9 */  jal       clamp_angle
/* C78878 80241B98 00000000 */   nop
/* C7887C 80241B9C 46000586 */  mov.s     $f22, $f0
/* C78880 80241BA0 3C014334 */  lui       $at, 0x4334
/* C78884 80241BA4 44816000 */  mtc1      $at, $f12
/* C78888 80241BA8 0C00A6C9 */  jal       clamp_angle
/* C7888C 80241BAC 460CB300 */   add.s    $f12, $f22, $f12
/* C78890 80241BB0 8EC20088 */  lw        $v0, 0x88($s6)
/* C78894 80241BB4 14400010 */  bnez      $v0, .L80241BF8
/* C78898 80241BB8 46000606 */   mov.s    $f24, $f0
/* C7889C 80241BBC 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* C788A0 80241BC0 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* C788A4 80241BC4 804300B4 */  lb        $v1, 0xb4($v0)
/* C788A8 80241BC8 3C014200 */  lui       $at, 0x4200
/* C788AC 80241BCC 4481A000 */  mtc1      $at, $f20
/* C788B0 80241BD0 10600016 */  beqz      $v1, .L80241C2C
/* C788B4 80241BD4 24020001 */   addiu    $v0, $zero, 1
/* C788B8 80241BD8 3C0142C8 */  lui       $at, 0x42c8
/* C788BC 80241BDC 4481A000 */  mtc1      $at, $f20
/* C788C0 80241BE0 14620013 */  bne       $v1, $v0, .L80241C30
/* C788C4 80241BE4 26300038 */   addiu    $s0, $s1, 0x38
/* C788C8 80241BE8 3C0142B4 */  lui       $at, 0x42b4
/* C788CC 80241BEC 4481A000 */  mtc1      $at, $f20
/* C788D0 80241BF0 0809070D */  j         .L80241C34
/* C788D4 80241BF4 0200202D */   daddu    $a0, $s0, $zero
.L80241BF8:
/* C788D8 80241BF8 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* C788DC 80241BFC 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* C788E0 80241C00 804300B4 */  lb        $v1, 0xb4($v0)
/* C788E4 80241C04 3C014218 */  lui       $at, 0x4218
/* C788E8 80241C08 4481A000 */  mtc1      $at, $f20
/* C788EC 80241C0C 10600007 */  beqz      $v1, .L80241C2C
/* C788F0 80241C10 24020001 */   addiu    $v0, $zero, 1
/* C788F4 80241C14 3C0142B4 */  lui       $at, 0x42b4
/* C788F8 80241C18 4481A000 */  mtc1      $at, $f20
/* C788FC 80241C1C 14620004 */  bne       $v1, $v0, .L80241C30
/* C78900 80241C20 26300038 */   addiu    $s0, $s1, 0x38
/* C78904 80241C24 3C014296 */  lui       $at, 0x4296
/* C78908 80241C28 4481A000 */  mtc1      $at, $f20
.L80241C2C:
/* C7890C 80241C2C 26300038 */  addiu     $s0, $s1, 0x38
.L80241C30:
/* C78910 80241C30 0200202D */  daddu     $a0, $s0, $zero
.L80241C34:
/* C78914 80241C34 3C15800F */  lui       $s5, %hi(gPlayerStatusPtr)
/* C78918 80241C38 26B57B30 */  addiu     $s5, $s5, %lo(gPlayerStatusPtr)
/* C7891C 80241C3C 4407C000 */  mfc1      $a3, $f24
/* C78920 80241C40 862200A6 */  lh        $v0, 0xa6($s1)
/* C78924 80241C44 8EA30000 */  lw        $v1, ($s5)
/* C78928 80241C48 44824000 */  mtc1      $v0, $f8
/* C7892C 80241C4C 00000000 */  nop
/* C78930 80241C50 46804220 */  cvt.s.w   $f8, $f8
/* C78934 80241C54 C4600028 */  lwc1      $f0, 0x28($v1)
/* C78938 80241C58 44064000 */  mfc1      $a2, $f8
/* C7893C 80241C5C 26330040 */  addiu     $s3, $s1, 0x40
/* C78940 80241C60 E6200038 */  swc1      $f0, 0x38($s1)
/* C78944 80241C64 C4600030 */  lwc1      $f0, 0x30($v1)
/* C78948 80241C68 0260282D */  daddu     $a1, $s3, $zero
/* C7894C 80241C6C 0C00A7E7 */  jal       add_vec2D_polar
/* C78950 80241C70 E6200040 */   swc1     $f0, 0x40($s1)
/* C78954 80241C74 862200A6 */  lh        $v0, 0xa6($s1)
/* C78958 80241C78 44820000 */  mtc1      $v0, $f0
/* C7895C 80241C7C 00000000 */  nop
/* C78960 80241C80 46800020 */  cvt.s.w   $f0, $f0
/* C78964 80241C84 4600A000 */  add.s     $f0, $f20, $f0
/* C78968 80241C88 4406B000 */  mfc1      $a2, $f22
/* C7896C 80241C8C 44050000 */  mfc1      $a1, $f0
/* C78970 80241C90 0C00EA95 */  jal       npc_move_heading
/* C78974 80241C94 0220202D */   daddu    $a0, $s1, $zero
/* C78978 80241C98 8EC20088 */  lw        $v0, 0x88($s6)
/* C7897C 80241C9C 1440005D */  bnez      $v0, .L80241E14
/* C78980 80241CA0 00000000 */   nop
/* C78984 80241CA4 C6200038 */  lwc1      $f0, 0x38($s1)
/* C78988 80241CA8 3C018024 */  lui       $at, %hi(D_80247408)
/* C7898C 80241CAC D4247408 */  ldc1      $f4, %lo(D_80247408)($at)
/* C78990 80241CB0 46000021 */  cvt.d.s   $f0, $f0
/* C78994 80241CB4 4620203C */  c.lt.d    $f4, $f0
/* C78998 80241CB8 00000000 */  nop
/* C7899C 80241CBC 45000005 */  bc1f      .L80241CD4
/* C789A0 80241CC0 00000000 */   nop
/* C789A4 80241CC4 3C0143BE */  lui       $at, 0x43be
/* C789A8 80241CC8 44810000 */  mtc1      $at, $f0
/* C789AC 80241CCC 00000000 */  nop
/* C789B0 80241CD0 E6200038 */  swc1      $f0, 0x38($s1)
.L80241CD4:
/* C789B4 80241CD4 C6200038 */  lwc1      $f0, 0x38($s1)
/* C789B8 80241CD8 3C018024 */  lui       $at, %hi(D_80247410)
/* C789BC 80241CDC D4227410 */  ldc1      $f2, %lo(D_80247410)($at)
/* C789C0 80241CE0 46000021 */  cvt.d.s   $f0, $f0
/* C789C4 80241CE4 4622003C */  c.lt.d    $f0, $f2
/* C789C8 80241CE8 00000000 */  nop
/* C789CC 80241CEC 45000005 */  bc1f      .L80241D04
/* C789D0 80241CF0 00000000 */   nop
/* C789D4 80241CF4 3C01C3BE */  lui       $at, 0xc3be
/* C789D8 80241CF8 44810000 */  mtc1      $at, $f0
/* C789DC 80241CFC 00000000 */  nop
/* C789E0 80241D00 E6200038 */  swc1      $f0, 0x38($s1)
.L80241D04:
/* C789E4 80241D04 C6200040 */  lwc1      $f0, 0x40($s1)
/* C789E8 80241D08 46000021 */  cvt.d.s   $f0, $f0
/* C789EC 80241D0C 4620203C */  c.lt.d    $f4, $f0
/* C789F0 80241D10 00000000 */  nop
/* C789F4 80241D14 45000005 */  bc1f      .L80241D2C
/* C789F8 80241D18 00000000 */   nop
/* C789FC 80241D1C 3C0143BE */  lui       $at, 0x43be
/* C78A00 80241D20 44810000 */  mtc1      $at, $f0
/* C78A04 80241D24 00000000 */  nop
/* C78A08 80241D28 E6200040 */  swc1      $f0, 0x40($s1)
.L80241D2C:
/* C78A0C 80241D2C C6200040 */  lwc1      $f0, 0x40($s1)
/* C78A10 80241D30 46000021 */  cvt.d.s   $f0, $f0
/* C78A14 80241D34 4622003C */  c.lt.d    $f0, $f2
/* C78A18 80241D38 00000000 */  nop
/* C78A1C 80241D3C 45000005 */  bc1f      .L80241D54
/* C78A20 80241D40 00000000 */   nop
/* C78A24 80241D44 3C01C3BE */  lui       $at, 0xc3be
/* C78A28 80241D48 44810000 */  mtc1      $at, $f0
/* C78A2C 80241D4C 00000000 */  nop
/* C78A30 80241D50 E6200040 */  swc1      $f0, 0x40($s1)
.L80241D54:
/* C78A34 80241D54 C6220038 */  lwc1      $f2, 0x38($s1)
/* C78A38 80241D58 46021082 */  mul.s     $f2, $f2, $f2
/* C78A3C 80241D5C 00000000 */  nop
/* C78A40 80241D60 C6200040 */  lwc1      $f0, 0x40($s1)
/* C78A44 80241D64 46000002 */  mul.s     $f0, $f0, $f0
/* C78A48 80241D68 00000000 */  nop
/* C78A4C 80241D6C 46001300 */  add.s     $f12, $f2, $f0
/* C78A50 80241D70 46006004 */  sqrt.s    $f0, $f12
/* C78A54 80241D74 46000032 */  c.eq.s    $f0, $f0
/* C78A58 80241D78 00000000 */  nop
/* C78A5C 80241D7C 45010003 */  bc1t      .L80241D8C
/* C78A60 80241D80 00000000 */   nop
/* C78A64 80241D84 0C0187BC */  jal       sqrtf
/* C78A68 80241D88 00000000 */   nop
.L80241D8C:
/* C78A6C 80241D8C 8E260038 */  lw        $a2, 0x38($s1)
/* C78A70 80241D90 8E270040 */  lw        $a3, 0x40($s1)
/* C78A74 80241D94 4480A000 */  mtc1      $zero, $f20
/* C78A78 80241D98 E7A00038 */  swc1      $f0, 0x38($sp)
/* C78A7C 80241D9C 4600A306 */  mov.s     $f12, $f20
/* C78A80 80241DA0 0C00A720 */  jal       atan2
/* C78A84 80241DA4 4600A386 */   mov.s    $f14, $f20
/* C78A88 80241DA8 46000586 */  mov.s     $f22, $f0
/* C78A8C 80241DAC C7A20038 */  lwc1      $f2, 0x38($sp)
/* C78A90 80241DB0 3C018024 */  lui       $at, %hi(D_80247418)
/* C78A94 80241DB4 D4207418 */  ldc1      $f0, %lo(D_80247418)($at)
/* C78A98 80241DB8 460010A1 */  cvt.d.s   $f2, $f2
/* C78A9C 80241DBC 4620103C */  c.lt.d    $f2, $f0
/* C78AA0 80241DC0 00000000 */  nop
/* C78AA4 80241DC4 45000004 */  bc1f      .L80241DD8
/* C78AA8 80241DC8 0200202D */   daddu    $a0, $s0, $zero
/* C78AAC 80241DCC 3C064398 */  lui       $a2, 0x4398
/* C78AB0 80241DD0 0809077E */  j         .L80241DF8
/* C78AB4 80241DD4 34C68000 */   ori      $a2, $a2, 0x8000
.L80241DD8:
/* C78AB8 80241DD8 3C018024 */  lui       $at, %hi(D_80247420)
/* C78ABC 80241DDC D4207420 */  ldc1      $f0, %lo(D_80247420)($at)
/* C78AC0 80241DE0 4622003C */  c.lt.d    $f0, $f2
/* C78AC4 80241DE4 00000000 */  nop
/* C78AC8 80241DE8 450000FA */  bc1f      .L802421D4
/* C78ACC 80241DEC 00000000 */   nop
/* C78AD0 80241DF0 3C0643BB */  lui       $a2, 0x43bb
/* C78AD4 80241DF4 34C68000 */  ori       $a2, $a2, 0x8000
.L80241DF8:
/* C78AD8 80241DF8 4407B000 */  mfc1      $a3, $f22
/* C78ADC 80241DFC 0260282D */  daddu     $a1, $s3, $zero
/* C78AE0 80241E00 E6340038 */  swc1      $f20, 0x38($s1)
/* C78AE4 80241E04 0C00A7E7 */  jal       add_vec2D_polar
/* C78AE8 80241E08 E6340040 */   swc1     $f20, 0x40($s1)
/* C78AEC 80241E0C 08090875 */  j         .L802421D4
/* C78AF0 80241E10 00000000 */   nop
.L80241E14:
/* C78AF4 80241E14 8E220000 */  lw        $v0, ($s1)
/* C78AF8 80241E18 30420040 */  andi      $v0, $v0, 0x40
/* C78AFC 80241E1C 144000B0 */  bnez      $v0, .L802420E0
/* C78B00 80241E20 27A50020 */   addiu    $a1, $sp, 0x20
/* C78B04 80241E24 27B40020 */  addiu     $s4, $sp, 0x20
/* C78B08 80241E28 0280282D */  daddu     $a1, $s4, $zero
/* C78B0C 80241E2C 27B30024 */  addiu     $s3, $sp, 0x24
/* C78B10 80241E30 8EA20000 */  lw        $v0, ($s5)
/* C78B14 80241E34 3C014032 */  lui       $at, 0x4032
/* C78B18 80241E38 44811800 */  mtc1      $at, $f3
/* C78B1C 80241E3C 44801000 */  mtc1      $zero, $f2
/* C78B20 80241E40 C440002C */  lwc1      $f0, 0x2c($v0)
/* C78B24 80241E44 C4460028 */  lwc1      $f6, 0x28($v0)
/* C78B28 80241E48 C4440030 */  lwc1      $f4, 0x30($v0)
/* C78B2C 80241E4C 46000021 */  cvt.d.s   $f0, $f0
/* C78B30 80241E50 46220000 */  add.d     $f0, $f0, $f2
/* C78B34 80241E54 E7A60020 */  swc1      $f6, 0x20($sp)
/* C78B38 80241E58 E7A40028 */  swc1      $f4, 0x28($sp)
/* C78B3C 80241E5C 46200020 */  cvt.s.d   $f0, $f0
/* C78B40 80241E60 E7A00024 */  swc1      $f0, 0x24($sp)
/* C78B44 80241E64 E7B40010 */  swc1      $f20, 0x10($sp)
/* C78B48 80241E68 E7B60014 */  swc1      $f22, 0x14($sp)
/* C78B4C 80241E6C 862200A8 */  lh        $v0, 0xa8($s1)
/* C78B50 80241E70 0260302D */  daddu     $a2, $s3, $zero
/* C78B54 80241E74 44820000 */  mtc1      $v0, $f0
/* C78B58 80241E78 00000000 */  nop
/* C78B5C 80241E7C 46800020 */  cvt.s.w   $f0, $f0
/* C78B60 80241E80 E7A00018 */  swc1      $f0, 0x18($sp)
/* C78B64 80241E84 862200A6 */  lh        $v0, 0xa6($s1)
/* C78B68 80241E88 27B00028 */  addiu     $s0, $sp, 0x28
/* C78B6C 80241E8C 44820000 */  mtc1      $v0, $f0
/* C78B70 80241E90 00000000 */  nop
/* C78B74 80241E94 46800020 */  cvt.s.w   $f0, $f0
/* C78B78 80241E98 E7A0001C */  swc1      $f0, 0x1c($sp)
/* C78B7C 80241E9C 8E240080 */  lw        $a0, 0x80($s1)
/* C78B80 80241EA0 0C037711 */  jal       func_800DDC44
/* C78B84 80241EA4 0200382D */   daddu    $a3, $s0, $zero
/* C78B88 80241EA8 104000CA */  beqz      $v0, .L802421D4
/* C78B8C 80241EAC 0280282D */   daddu    $a1, $s4, $zero
/* C78B90 80241EB0 8EA20000 */  lw        $v0, ($s5)
/* C78B94 80241EB4 3C018024 */  lui       $at, %hi(D_80247428)
/* C78B98 80241EB8 D4227428 */  ldc1      $f2, %lo(D_80247428)($at)
/* C78B9C 80241EBC C440002C */  lwc1      $f0, 0x2c($v0)
/* C78BA0 80241EC0 C4460028 */  lwc1      $f6, 0x28($v0)
/* C78BA4 80241EC4 C4440030 */  lwc1      $f4, 0x30($v0)
/* C78BA8 80241EC8 46000021 */  cvt.d.s   $f0, $f0
/* C78BAC 80241ECC 46220000 */  add.d     $f0, $f0, $f2
/* C78BB0 80241ED0 E7A60020 */  swc1      $f6, 0x20($sp)
/* C78BB4 80241ED4 E7A40028 */  swc1      $f4, 0x28($sp)
/* C78BB8 80241ED8 46200020 */  cvt.s.d   $f0, $f0
/* C78BBC 80241EDC E7A00024 */  swc1      $f0, 0x24($sp)
/* C78BC0 80241EE0 E7B40010 */  swc1      $f20, 0x10($sp)
/* C78BC4 80241EE4 E7B60014 */  swc1      $f22, 0x14($sp)
/* C78BC8 80241EE8 862200A8 */  lh        $v0, 0xa8($s1)
/* C78BCC 80241EEC 44820000 */  mtc1      $v0, $f0
/* C78BD0 80241EF0 00000000 */  nop
/* C78BD4 80241EF4 46800020 */  cvt.s.w   $f0, $f0
/* C78BD8 80241EF8 E7A00018 */  swc1      $f0, 0x18($sp)
/* C78BDC 80241EFC 862200A6 */  lh        $v0, 0xa6($s1)
/* C78BE0 80241F00 0260302D */  daddu     $a2, $s3, $zero
/* C78BE4 80241F04 44820000 */  mtc1      $v0, $f0
/* C78BE8 80241F08 00000000 */  nop
/* C78BEC 80241F0C 46800020 */  cvt.s.w   $f0, $f0
/* C78BF0 80241F10 E7A0001C */  swc1      $f0, 0x1c($sp)
/* C78BF4 80241F14 8E240080 */  lw        $a0, 0x80($s1)
/* C78BF8 80241F18 0C037711 */  jal       func_800DDC44
/* C78BFC 80241F1C 0200382D */   daddu    $a3, $s0, $zero
/* C78C00 80241F20 27A5002C */  addiu     $a1, $sp, 0x2c
/* C78C04 80241F24 27A60030 */  addiu     $a2, $sp, 0x30
/* C78C08 80241F28 27A70034 */  addiu     $a3, $sp, 0x34
/* C78C0C 80241F2C 27A30038 */  addiu     $v1, $sp, 0x38
/* C78C10 80241F30 C6220038 */  lwc1      $f2, 0x38($s1)
/* C78C14 80241F34 C620003C */  lwc1      $f0, 0x3c($s1)
/* C78C18 80241F38 3C014348 */  lui       $at, 0x4348
/* C78C1C 80241F3C 44813000 */  mtc1      $at, $f6
/* C78C20 80241F40 46000021 */  cvt.d.s   $f0, $f0
/* C78C24 80241F44 E7A2002C */  swc1      $f2, 0x2c($sp)
/* C78C28 80241F48 3C014059 */  lui       $at, 0x4059
/* C78C2C 80241F4C 44811800 */  mtc1      $at, $f3
/* C78C30 80241F50 44801000 */  mtc1      $zero, $f2
/* C78C34 80241F54 C6240040 */  lwc1      $f4, 0x40($s1)
/* C78C38 80241F58 46220000 */  add.d     $f0, $f0, $f2
/* C78C3C 80241F5C E7A60038 */  swc1      $f6, 0x38($sp)
/* C78C40 80241F60 E7A40034 */  swc1      $f4, 0x34($sp)
/* C78C44 80241F64 46200020 */  cvt.s.d   $f0, $f0
/* C78C48 80241F68 E7A00030 */  swc1      $f0, 0x30($sp)
/* C78C4C 80241F6C AFA30010 */  sw        $v1, 0x10($sp)
/* C78C50 80241F70 8E240080 */  lw        $a0, 0x80($s1)
/* C78C54 80241F74 0C0372DF */  jal       func_800DCB7C
/* C78C58 80241F78 0040802D */   daddu    $s0, $v0, $zero
/* C78C5C 80241F7C 1600001C */  bnez      $s0, .L80241FF0
/* C78C60 80241F80 00000000 */   nop
/* C78C64 80241F84 1040001A */  beqz      $v0, .L80241FF0
/* C78C68 80241F88 00000000 */   nop
/* C78C6C 80241F8C C7A20038 */  lwc1      $f2, 0x38($sp)
/* C78C70 80241F90 3C014054 */  lui       $at, 0x4054
/* C78C74 80241F94 44810800 */  mtc1      $at, $f1
/* C78C78 80241F98 44800000 */  mtc1      $zero, $f0
/* C78C7C 80241F9C 460010A1 */  cvt.d.s   $f2, $f2
/* C78C80 80241FA0 4622003C */  c.lt.d    $f0, $f2
/* C78C84 80241FA4 00000000 */  nop
/* C78C88 80241FA8 45000011 */  bc1f      .L80241FF0
/* C78C8C 80241FAC 00000000 */   nop
/* C78C90 80241FB0 3C01405E */  lui       $at, 0x405e
/* C78C94 80241FB4 44810800 */  mtc1      $at, $f1
/* C78C98 80241FB8 44800000 */  mtc1      $zero, $f0
/* C78C9C 80241FBC 00000000 */  nop
/* C78CA0 80241FC0 4620103C */  c.lt.d    $f2, $f0
/* C78CA4 80241FC4 00000000 */  nop
/* C78CA8 80241FC8 45000009 */  bc1f      .L80241FF0
/* C78CAC 80241FCC 00000000 */   nop
/* C78CB0 80241FD0 C622003C */  lwc1      $f2, 0x3c($s1)
/* C78CB4 80241FD4 C7A00030 */  lwc1      $f0, 0x30($sp)
/* C78CB8 80241FD8 46001032 */  c.eq.s    $f2, $f0
/* C78CBC 80241FDC 00000000 */  nop
/* C78CC0 80241FE0 45010003 */  bc1t      .L80241FF0
/* C78CC4 80241FE4 00000000 */   nop
/* C78CC8 80241FE8 08090875 */  j         .L802421D4
/* C78CCC 80241FEC 241E0001 */   addiu    $fp, $zero, 1
.L80241FF0:
/* C78CD0 80241FF0 3C10800F */  lui       $s0, %hi(gPlayerStatusPtr)
/* C78CD4 80241FF4 26107B30 */  addiu     $s0, $s0, %lo(gPlayerStatusPtr)
/* C78CD8 80241FF8 8E020000 */  lw        $v0, ($s0)
/* C78CDC 80241FFC 3C014024 */  lui       $at, 0x4024
/* C78CE0 80242000 44811800 */  mtc1      $at, $f3
/* C78CE4 80242004 44801000 */  mtc1      $zero, $f2
/* C78CE8 80242008 C440002C */  lwc1      $f0, 0x2c($v0)
/* C78CEC 8024200C C4460028 */  lwc1      $f6, 0x28($v0)
/* C78CF0 80242010 C4440030 */  lwc1      $f4, 0x30($v0)
/* C78CF4 80242014 46000021 */  cvt.d.s   $f0, $f0
/* C78CF8 80242018 46220000 */  add.d     $f0, $f0, $f2
/* C78CFC 8024201C E7A60020 */  swc1      $f6, 0x20($sp)
/* C78D00 80242020 E7A40028 */  swc1      $f4, 0x28($sp)
/* C78D04 80242024 46200020 */  cvt.s.d   $f0, $f0
/* C78D08 80242028 E7A00024 */  swc1      $f0, 0x24($sp)
/* C78D0C 8024202C E7B40010 */  swc1      $f20, 0x10($sp)
/* C78D10 80242030 E7B60014 */  swc1      $f22, 0x14($sp)
/* C78D14 80242034 862200A8 */  lh        $v0, 0xa8($s1)
/* C78D18 80242038 27A50020 */  addiu     $a1, $sp, 0x20
/* C78D1C 8024203C 44820000 */  mtc1      $v0, $f0
/* C78D20 80242040 00000000 */  nop
/* C78D24 80242044 46800020 */  cvt.s.w   $f0, $f0
/* C78D28 80242048 E7A00018 */  swc1      $f0, 0x18($sp)
/* C78D2C 8024204C 862200A6 */  lh        $v0, 0xa6($s1)
/* C78D30 80242050 27A60024 */  addiu     $a2, $sp, 0x24
/* C78D34 80242054 44820000 */  mtc1      $v0, $f0
/* C78D38 80242058 00000000 */  nop
/* C78D3C 8024205C 46800020 */  cvt.s.w   $f0, $f0
/* C78D40 80242060 E7A0001C */  swc1      $f0, 0x1c($sp)
/* C78D44 80242064 8E240080 */  lw        $a0, 0x80($s1)
/* C78D48 80242068 0C037711 */  jal       func_800DDC44
/* C78D4C 8024206C 27A70028 */   addiu    $a3, $sp, 0x28
/* C78D50 80242070 8FA60020 */  lw        $a2, 0x20($sp)
/* C78D54 80242074 8E020000 */  lw        $v0, ($s0)
/* C78D58 80242078 8FA70028 */  lw        $a3, 0x28($sp)
/* C78D5C 8024207C C44C0028 */  lwc1      $f12, 0x28($v0)
/* C78D60 80242080 C44E0030 */  lwc1      $f14, 0x30($v0)
/* C78D64 80242084 0C00A7B5 */  jal       dist2D
/* C78D68 80242088 24170001 */   addiu    $s7, $zero, 1
/* C78D6C 8024208C 46000506 */  mov.s     $f20, $f0
/* C78D70 80242090 8E030000 */  lw        $v1, ($s0)
/* C78D74 80242094 862200A6 */  lh        $v0, 0xa6($s1)
/* C78D78 80242098 4407C000 */  mfc1      $a3, $f24
/* C78D7C 8024209C 44824000 */  mtc1      $v0, $f8
/* C78D80 802420A0 00000000 */  nop
/* C78D84 802420A4 46804220 */  cvt.s.w   $f8, $f8
/* C78D88 802420A8 C4600028 */  lwc1      $f0, 0x28($v1)
/* C78D8C 802420AC 44064000 */  mfc1      $a2, $f8
/* C78D90 802420B0 26240038 */  addiu     $a0, $s1, 0x38
/* C78D94 802420B4 E6200038 */  swc1      $f0, 0x38($s1)
/* C78D98 802420B8 C4600030 */  lwc1      $f0, 0x30($v1)
/* C78D9C 802420BC 26250040 */  addiu     $a1, $s1, 0x40
/* C78DA0 802420C0 0C00A7E7 */  jal       add_vec2D_polar
/* C78DA4 802420C4 E6200040 */   swc1     $f0, 0x40($s1)
/* C78DA8 802420C8 862200A6 */  lh        $v0, 0xa6($s1)
/* C78DAC 802420CC 44820000 */  mtc1      $v0, $f0
/* C78DB0 802420D0 00000000 */  nop
/* C78DB4 802420D4 46800020 */  cvt.s.w   $f0, $f0
/* C78DB8 802420D8 08090871 */  j         .L802421C4
/* C78DBC 802420DC 4600A500 */   add.s    $f20, $f20, $f0
.L802420E0:
/* C78DC0 802420E0 8EA20000 */  lw        $v0, ($s5)
/* C78DC4 802420E4 3C014032 */  lui       $at, 0x4032
/* C78DC8 802420E8 44811800 */  mtc1      $at, $f3
/* C78DCC 802420EC 44801000 */  mtc1      $zero, $f2
/* C78DD0 802420F0 C440002C */  lwc1      $f0, 0x2c($v0)
/* C78DD4 802420F4 C4460028 */  lwc1      $f6, 0x28($v0)
/* C78DD8 802420F8 C4440030 */  lwc1      $f4, 0x30($v0)
/* C78DDC 802420FC 46000021 */  cvt.d.s   $f0, $f0
/* C78DE0 80242100 46220000 */  add.d     $f0, $f0, $f2
/* C78DE4 80242104 E7A60020 */  swc1      $f6, 0x20($sp)
/* C78DE8 80242108 E7A40028 */  swc1      $f4, 0x28($sp)
/* C78DEC 8024210C 46200020 */  cvt.s.d   $f0, $f0
/* C78DF0 80242110 E7A00024 */  swc1      $f0, 0x24($sp)
/* C78DF4 80242114 E7B40010 */  swc1      $f20, 0x10($sp)
/* C78DF8 80242118 E7B60014 */  swc1      $f22, 0x14($sp)
/* C78DFC 8024211C 862200A8 */  lh        $v0, 0xa8($s1)
/* C78E00 80242120 44820000 */  mtc1      $v0, $f0
/* C78E04 80242124 00000000 */  nop
/* C78E08 80242128 46800020 */  cvt.s.w   $f0, $f0
/* C78E0C 8024212C E7A00018 */  swc1      $f0, 0x18($sp)
/* C78E10 80242130 862200A6 */  lh        $v0, 0xa6($s1)
/* C78E14 80242134 27A60024 */  addiu     $a2, $sp, 0x24
/* C78E18 80242138 44820000 */  mtc1      $v0, $f0
/* C78E1C 8024213C 00000000 */  nop
/* C78E20 80242140 46800020 */  cvt.s.w   $f0, $f0
/* C78E24 80242144 E7A0001C */  swc1      $f0, 0x1c($sp)
/* C78E28 80242148 8E240080 */  lw        $a0, 0x80($s1)
/* C78E2C 8024214C 0C037711 */  jal       func_800DDC44
/* C78E30 80242150 27A70028 */   addiu    $a3, $sp, 0x28
/* C78E34 80242154 1040001F */  beqz      $v0, .L802421D4
/* C78E38 80242158 00000000 */   nop
/* C78E3C 8024215C 8FA60020 */  lw        $a2, 0x20($sp)
/* C78E40 80242160 8EA20000 */  lw        $v0, ($s5)
/* C78E44 80242164 8FA70028 */  lw        $a3, 0x28($sp)
/* C78E48 80242168 C44C0028 */  lwc1      $f12, 0x28($v0)
/* C78E4C 8024216C 0C00A7B5 */  jal       dist2D
/* C78E50 80242170 C44E0030 */   lwc1     $f14, 0x30($v0)
/* C78E54 80242174 46000506 */  mov.s     $f20, $f0
/* C78E58 80242178 8EA30000 */  lw        $v1, ($s5)
/* C78E5C 8024217C 862200A6 */  lh        $v0, 0xa6($s1)
/* C78E60 80242180 4407C000 */  mfc1      $a3, $f24
/* C78E64 80242184 44824000 */  mtc1      $v0, $f8
/* C78E68 80242188 00000000 */  nop
/* C78E6C 8024218C 46804220 */  cvt.s.w   $f8, $f8
/* C78E70 80242190 C4600028 */  lwc1      $f0, 0x28($v1)
/* C78E74 80242194 44064000 */  mfc1      $a2, $f8
/* C78E78 80242198 0200202D */  daddu     $a0, $s0, $zero
/* C78E7C 8024219C E6200038 */  swc1      $f0, 0x38($s1)
/* C78E80 802421A0 C4600030 */  lwc1      $f0, 0x30($v1)
/* C78E84 802421A4 0260282D */  daddu     $a1, $s3, $zero
/* C78E88 802421A8 0C00A7E7 */  jal       add_vec2D_polar
/* C78E8C 802421AC E6200040 */   swc1     $f0, 0x40($s1)
/* C78E90 802421B0 862200A6 */  lh        $v0, 0xa6($s1)
/* C78E94 802421B4 44820000 */  mtc1      $v0, $f0
/* C78E98 802421B8 00000000 */  nop
/* C78E9C 802421BC 46800020 */  cvt.s.w   $f0, $f0
/* C78EA0 802421C0 4600A500 */  add.s     $f20, $f20, $f0
.L802421C4:
/* C78EA4 802421C4 4406B000 */  mfc1      $a2, $f22
/* C78EA8 802421C8 4405A000 */  mfc1      $a1, $f20
/* C78EAC 802421CC 0C00EA95 */  jal       npc_move_heading
/* C78EB0 802421D0 0220202D */   daddu    $a0, $s1, $zero
.L802421D4:
/* C78EB4 802421D4 C6400008 */  lwc1      $f0, 8($s2)
/* C78EB8 802421D8 46800020 */  cvt.s.w   $f0, $f0
/* C78EBC 802421DC 44050000 */  mfc1      $a1, $f0
/* C78EC0 802421E0 C640000C */  lwc1      $f0, 0xc($s2)
/* C78EC4 802421E4 46800020 */  cvt.s.w   $f0, $f0
/* C78EC8 802421E8 44060000 */  mfc1      $a2, $f0
/* C78ECC 802421EC C6200040 */  lwc1      $f0, 0x40($s1)
/* C78ED0 802421F0 26300038 */  addiu     $s0, $s1, 0x38
/* C78ED4 802421F4 E7A00010 */  swc1      $f0, 0x10($sp)
/* C78ED8 802421F8 C6400010 */  lwc1      $f0, 0x10($s2)
/* C78EDC 802421FC 46800020 */  cvt.s.w   $f0, $f0
/* C78EE0 80242200 E7A00014 */  swc1      $f0, 0x14($sp)
/* C78EE4 80242204 C6400014 */  lwc1      $f0, 0x14($s2)
/* C78EE8 80242208 46800020 */  cvt.s.w   $f0, $f0
/* C78EEC 8024220C E7A00018 */  swc1      $f0, 0x18($sp)
/* C78EF0 80242210 8E440004 */  lw        $a0, 4($s2)
/* C78EF4 80242214 8E270038 */  lw        $a3, 0x38($s1)
/* C78EF8 80242218 0C0123F5 */  jal       is_point_within_region
/* C78EFC 8024221C 26330040 */   addiu    $s3, $s1, 0x40
/* C78F00 80242220 1040005A */  beqz      $v0, .L8024238C
/* C78F04 80242224 00000000 */   nop
/* C78F08 80242228 8E430004 */  lw        $v1, 4($s2)
/* C78F0C 8024222C 10600005 */  beqz      $v1, .L80242244
/* C78F10 80242230 24020001 */   addiu    $v0, $zero, 1
/* C78F14 80242234 10620029 */  beq       $v1, $v0, .L802422DC
/* C78F18 80242238 00000000 */   nop
/* C78F1C 8024223C 080908E3 */  j         .L8024238C
/* C78F20 80242240 00000000 */   nop
.L80242244:
/* C78F24 80242244 C6480008 */  lwc1      $f8, 8($s2)
/* C78F28 80242248 46804220 */  cvt.s.w   $f8, $f8
/* C78F2C 8024224C 44064000 */  mfc1      $a2, $f8
/* C78F30 80242250 C648000C */  lwc1      $f8, 0xc($s2)
/* C78F34 80242254 46804220 */  cvt.s.w   $f8, $f8
/* C78F38 80242258 C62C0038 */  lwc1      $f12, 0x38($s1)
/* C78F3C 8024225C C62E0040 */  lwc1      $f14, 0x40($s1)
/* C78F40 80242260 44074000 */  mfc1      $a3, $f8
/* C78F44 80242264 0C00A7B5 */  jal       dist2D
/* C78F48 80242268 00000000 */   nop
/* C78F4C 8024226C C6420010 */  lwc1      $f2, 0x10($s2)
/* C78F50 80242270 468010A0 */  cvt.s.w   $f2, $f2
/* C78F54 80242274 4600103C */  c.lt.s    $f2, $f0
/* C78F58 80242278 00000000 */  nop
/* C78F5C 8024227C 45000043 */  bc1f      .L8024238C
/* C78F60 80242280 E7A00038 */   swc1     $f0, 0x38($sp)
/* C78F64 80242284 C64C0008 */  lwc1      $f12, 8($s2)
/* C78F68 80242288 46806320 */  cvt.s.w   $f12, $f12
/* C78F6C 8024228C 8E260038 */  lw        $a2, 0x38($s1)
/* C78F70 80242290 8E270040 */  lw        $a3, 0x40($s1)
/* C78F74 80242294 C64E000C */  lwc1      $f14, 0xc($s2)
/* C78F78 80242298 0C00A720 */  jal       atan2
/* C78F7C 8024229C 468073A0 */   cvt.s.w  $f14, $f14
/* C78F80 802422A0 0200202D */  daddu     $a0, $s0, $zero
/* C78F84 802422A4 44070000 */  mfc1      $a3, $f0
/* C78F88 802422A8 C6400008 */  lwc1      $f0, 8($s2)
/* C78F8C 802422AC 46800020 */  cvt.s.w   $f0, $f0
/* C78F90 802422B0 E6200038 */  swc1      $f0, 0x38($s1)
/* C78F94 802422B4 C640000C */  lwc1      $f0, 0xc($s2)
/* C78F98 802422B8 46800020 */  cvt.s.w   $f0, $f0
/* C78F9C 802422BC E6200040 */  swc1      $f0, 0x40($s1)
/* C78FA0 802422C0 C6480010 */  lwc1      $f8, 0x10($s2)
/* C78FA4 802422C4 46804220 */  cvt.s.w   $f8, $f8
/* C78FA8 802422C8 44064000 */  mfc1      $a2, $f8
/* C78FAC 802422CC 0C00A7E7 */  jal       add_vec2D_polar
/* C78FB0 802422D0 0260282D */   daddu    $a1, $s3, $zero
/* C78FB4 802422D4 080908E3 */  j         .L8024238C
/* C78FB8 802422D8 00000000 */   nop
.L802422DC:
/* C78FBC 802422DC 8E420008 */  lw        $v0, 8($s2)
/* C78FC0 802422E0 8E430010 */  lw        $v1, 0x10($s2)
/* C78FC4 802422E4 C6200038 */  lwc1      $f0, 0x38($s1)
/* C78FC8 802422E8 00431021 */  addu      $v0, $v0, $v1
/* C78FCC 802422EC 44821000 */  mtc1      $v0, $f2
/* C78FD0 802422F0 00000000 */  nop
/* C78FD4 802422F4 468010A0 */  cvt.s.w   $f2, $f2
/* C78FD8 802422F8 4600103C */  c.lt.s    $f2, $f0
/* C78FDC 802422FC 00000000 */  nop
/* C78FE0 80242300 45030001 */  bc1tl     .L80242308
/* C78FE4 80242304 E6220038 */   swc1     $f2, 0x38($s1)
.L80242308:
/* C78FE8 80242308 8E420008 */  lw        $v0, 8($s2)
/* C78FEC 8024230C 8E430010 */  lw        $v1, 0x10($s2)
/* C78FF0 80242310 C6200038 */  lwc1      $f0, 0x38($s1)
/* C78FF4 80242314 00431023 */  subu      $v0, $v0, $v1
/* C78FF8 80242318 44821000 */  mtc1      $v0, $f2
/* C78FFC 8024231C 00000000 */  nop
/* C79000 80242320 468010A0 */  cvt.s.w   $f2, $f2
/* C79004 80242324 4602003C */  c.lt.s    $f0, $f2
/* C79008 80242328 00000000 */  nop
/* C7900C 8024232C 45030001 */  bc1tl     .L80242334
/* C79010 80242330 E6220038 */   swc1     $f2, 0x38($s1)
.L80242334:
/* C79014 80242334 8E42000C */  lw        $v0, 0xc($s2)
/* C79018 80242338 8E430014 */  lw        $v1, 0x14($s2)
/* C7901C 8024233C C6200040 */  lwc1      $f0, 0x40($s1)
/* C79020 80242340 00431021 */  addu      $v0, $v0, $v1
/* C79024 80242344 44821000 */  mtc1      $v0, $f2
/* C79028 80242348 00000000 */  nop
/* C7902C 8024234C 468010A0 */  cvt.s.w   $f2, $f2
/* C79030 80242350 4600103C */  c.lt.s    $f2, $f0
/* C79034 80242354 00000000 */  nop
/* C79038 80242358 45030001 */  bc1tl     .L80242360
/* C7903C 8024235C E6220040 */   swc1     $f2, 0x40($s1)
.L80242360:
/* C79040 80242360 8E42000C */  lw        $v0, 0xc($s2)
/* C79044 80242364 8E430014 */  lw        $v1, 0x14($s2)
/* C79048 80242368 C6200040 */  lwc1      $f0, 0x40($s1)
/* C7904C 8024236C 00431023 */  subu      $v0, $v0, $v1
/* C79050 80242370 44821000 */  mtc1      $v0, $f2
/* C79054 80242374 00000000 */  nop
/* C79058 80242378 468010A0 */  cvt.s.w   $f2, $f2
/* C7905C 8024237C 4602003C */  c.lt.s    $f0, $f2
/* C79060 80242380 00000000 */  nop
/* C79064 80242384 45030001 */  bc1tl     .L8024238C
/* C79068 80242388 E6220040 */   swc1     $f2, 0x40($s1)
.L8024238C:
/* C7906C 8024238C 16E0001F */  bnez      $s7, .L8024240C
/* C79070 80242390 00000000 */   nop
/* C79074 80242394 8E220000 */  lw        $v0, ($s1)
/* C79078 80242398 30420008 */  andi      $v0, $v0, 8
/* C7907C 8024239C 10400003 */  beqz      $v0, .L802423AC
/* C79080 802423A0 27A50020 */   addiu    $a1, $sp, 0x20
/* C79084 802423A4 13C00019 */  beqz      $fp, .L8024240C
/* C79088 802423A8 00000000 */   nop
.L802423AC:
/* C7908C 802423AC 27A60024 */  addiu     $a2, $sp, 0x24
/* C79090 802423B0 27A20038 */  addiu     $v0, $sp, 0x38
/* C79094 802423B4 C6220038 */  lwc1      $f2, 0x38($s1)
/* C79098 802423B8 C620003C */  lwc1      $f0, 0x3c($s1)
/* C7909C 802423BC 3C0143C8 */  lui       $at, 0x43c8
/* C790A0 802423C0 44813000 */  mtc1      $at, $f6
/* C790A4 802423C4 46000021 */  cvt.d.s   $f0, $f0
/* C790A8 802423C8 E7A20020 */  swc1      $f2, 0x20($sp)
/* C790AC 802423CC 3C018024 */  lui       $at, %hi(D_80247430)
/* C790B0 802423D0 D4227430 */  ldc1      $f2, %lo(D_80247430)($at)
/* C790B4 802423D4 C6240040 */  lwc1      $f4, 0x40($s1)
/* C790B8 802423D8 46220000 */  add.d     $f0, $f0, $f2
/* C790BC 802423DC E7A60038 */  swc1      $f6, 0x38($sp)
/* C790C0 802423E0 E7A40028 */  swc1      $f4, 0x28($sp)
/* C790C4 802423E4 46200020 */  cvt.s.d   $f0, $f0
/* C790C8 802423E8 E7A00024 */  swc1      $f0, 0x24($sp)
/* C790CC 802423EC AFA20010 */  sw        $v0, 0x10($sp)
/* C790D0 802423F0 8E240080 */  lw        $a0, 0x80($s1)
/* C790D4 802423F4 0C0372DF */  jal       func_800DCB7C
/* C790D8 802423F8 27A70028 */   addiu    $a3, $sp, 0x28
/* C790DC 802423FC 10400003 */  beqz      $v0, .L8024240C
/* C790E0 80242400 00000000 */   nop
/* C790E4 80242404 C7A00024 */  lwc1      $f0, 0x24($sp)
/* C790E8 80242408 E620003C */  swc1      $f0, 0x3c($s1)
.L8024240C:
/* C790EC 8024240C C62C0038 */  lwc1      $f12, 0x38($s1)
/* C790F0 80242410 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* C790F4 80242414 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* C790F8 80242418 C62E0040 */  lwc1      $f14, 0x40($s1)
/* C790FC 8024241C 8C460028 */  lw        $a2, 0x28($v0)
/* C79100 80242420 0C00A720 */  jal       atan2
/* C79104 80242424 8C470030 */   lw       $a3, 0x30($v0)
/* C79108 80242428 0220202D */  daddu     $a0, $s1, $zero
/* C7910C 8024242C 24050321 */  addiu     $a1, $zero, 0x321
/* C79110 80242430 0000302D */  daddu     $a2, $zero, $zero
/* C79114 80242434 0C012530 */  jal       func_800494C0
/* C79118 80242438 E620000C */   swc1     $f0, 0xc($s1)
/* C7911C 8024243C 8EC200CC */  lw        $v0, 0xcc($s6)
/* C79120 80242440 8C420024 */  lw        $v0, 0x24($v0)
/* C79124 80242444 AE220028 */  sw        $v0, 0x28($s1)
/* C79128 80242448 96C20096 */  lhu       $v0, 0x96($s6)
/* C7912C 8024244C A622008E */  sh        $v0, 0x8e($s1)
/* C79130 80242450 8FA80080 */  lw        $t0, 0x80($sp)
/* C79134 80242454 2402000B */  addiu     $v0, $zero, 0xb
/* C79138 80242458 AD020070 */  sw        $v0, 0x70($t0)
.L8024245C:
/* C7913C 8024245C 8FBF0064 */  lw        $ra, 0x64($sp)
/* C79140 80242460 8FBE0060 */  lw        $fp, 0x60($sp)
/* C79144 80242464 8FB7005C */  lw        $s7, 0x5c($sp)
/* C79148 80242468 8FB60058 */  lw        $s6, 0x58($sp)
/* C7914C 8024246C 8FB50054 */  lw        $s5, 0x54($sp)
/* C79150 80242470 8FB40050 */  lw        $s4, 0x50($sp)
/* C79154 80242474 8FB3004C */  lw        $s3, 0x4c($sp)
/* C79158 80242478 8FB20048 */  lw        $s2, 0x48($sp)
/* C7915C 8024247C 8FB10044 */  lw        $s1, 0x44($sp)
/* C79160 80242480 8FB00040 */  lw        $s0, 0x40($sp)
/* C79164 80242484 D7B80078 */  ldc1      $f24, 0x78($sp)
/* C79168 80242488 D7B60070 */  ldc1      $f22, 0x70($sp)
/* C7916C 8024248C D7B40068 */  ldc1      $f20, 0x68($sp)
/* C79170 80242490 03E00008 */  jr        $ra
/* C79174 80242494 27BD0080 */   addiu    $sp, $sp, 0x80
