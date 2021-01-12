.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802401AC_9C2ABC
/* 9C2ABC 802401AC 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 9C2AC0 802401B0 AFBF0020 */  sw        $ra, 0x20($sp)
/* 9C2AC4 802401B4 AFB1001C */  sw        $s1, 0x1c($sp)
/* 9C2AC8 802401B8 AFB00018 */  sw        $s0, 0x18($sp)
/* 9C2ACC 802401BC 8C910084 */  lw        $s1, 0x84($a0)
/* 9C2AD0 802401C0 86230044 */  lh        $v1, 0x44($s1)
/* 9C2AD4 802401C4 3C108011 */  lui       $s0, %hi(gPlayerStatus)
/* 9C2AD8 802401C8 2610EFC8 */  addiu     $s0, $s0, %lo(gPlayerStatus)
/* 9C2ADC 802401CC 2C620005 */  sltiu     $v0, $v1, 5
/* 9C2AE0 802401D0 1040008A */  beqz      $v0, .L802403FC
/* 9C2AE4 802401D4 00031080 */   sll      $v0, $v1, 2
/* 9C2AE8 802401D8 3C018024 */  lui       $at, %hi(jtbl_80242AA0_9C53B0)
/* 9C2AEC 802401DC 00220821 */  addu      $at, $at, $v0
/* 9C2AF0 802401E0 8C222AA0 */  lw        $v0, %lo(jtbl_80242AA0_9C53B0)($at)
/* 9C2AF4 802401E4 00400008 */  jr        $v0
/* 9C2AF8 802401E8 00000000 */   nop
glabel L802401EC_9C2AFC
/* 9C2AFC 802401EC 8E22003C */  lw        $v0, 0x3c($s1)
/* 9C2B00 802401F0 86270046 */  lh        $a3, 0x46($s1)
/* 9C2B04 802401F4 AFA20010 */  sw        $v0, 0x10($sp)
/* 9C2B08 802401F8 8E250010 */  lw        $a1, 0x10($s1)
/* 9C2B0C 802401FC 8E26001C */  lw        $a2, 0x1c($s1)
/* 9C2B10 80240200 0C00A8ED */  jal       update_lerp
/* 9C2B14 80240204 24040005 */   addiu    $a0, $zero, 5
/* 9C2B18 80240208 86270046 */  lh        $a3, 0x46($s1)
/* 9C2B1C 8024020C 8E22003C */  lw        $v0, 0x3c($s1)
/* 9C2B20 80240210 E6200004 */  swc1      $f0, 4($s1)
/* 9C2B24 80240214 AFA20010 */  sw        $v0, 0x10($sp)
/* 9C2B28 80240218 8E25000C */  lw        $a1, 0xc($s1)
/* 9C2B2C 8024021C 8E260018 */  lw        $a2, 0x18($s1)
/* 9C2B30 80240220 0C00A8ED */  jal       update_lerp
/* 9C2B34 80240224 0000202D */   daddu    $a0, $zero, $zero
/* 9C2B38 80240228 86270046 */  lh        $a3, 0x46($s1)
/* 9C2B3C 8024022C 8E22003C */  lw        $v0, 0x3c($s1)
/* 9C2B40 80240230 E6200000 */  swc1      $f0, ($s1)
/* 9C2B44 80240234 AFA20010 */  sw        $v0, 0x10($sp)
/* 9C2B48 80240238 8E250014 */  lw        $a1, 0x14($s1)
/* 9C2B4C 8024023C 8E260020 */  lw        $a2, 0x20($s1)
/* 9C2B50 80240240 0C00A8ED */  jal       update_lerp
/* 9C2B54 80240244 0000202D */   daddu    $a0, $zero, $zero
/* 9C2B58 80240248 8E220050 */  lw        $v0, 0x50($s1)
/* 9C2B5C 8024024C E6200008 */  swc1      $f0, 8($s1)
/* 9C2B60 80240250 C6200000 */  lwc1      $f0, ($s1)
/* 9C2B64 80240254 8C42000C */  lw        $v0, 0xc($v0)
/* 9C2B68 80240258 E4400008 */  swc1      $f0, 8($v0)
/* 9C2B6C 8024025C 8E220050 */  lw        $v0, 0x50($s1)
/* 9C2B70 80240260 C6200004 */  lwc1      $f0, 4($s1)
/* 9C2B74 80240264 8C42000C */  lw        $v0, 0xc($v0)
/* 9C2B78 80240268 E440000C */  swc1      $f0, 0xc($v0)
/* 9C2B7C 8024026C 8E220050 */  lw        $v0, 0x50($s1)
/* 9C2B80 80240270 C6200008 */  lwc1      $f0, 8($s1)
/* 9C2B84 80240274 8C42000C */  lw        $v0, 0xc($v0)
/* 9C2B88 80240278 E4400010 */  swc1      $f0, 0x10($v0)
/* 9C2B8C 8024027C 96220046 */  lhu       $v0, 0x46($s1)
/* 9C2B90 80240280 8E23003C */  lw        $v1, 0x3c($s1)
/* 9C2B94 80240284 24420001 */  addiu     $v0, $v0, 1
/* 9C2B98 80240288 A6220046 */  sh        $v0, 0x46($s1)
/* 9C2B9C 8024028C 00021400 */  sll       $v0, $v0, 0x10
/* 9C2BA0 80240290 00021403 */  sra       $v0, $v0, 0x10
/* 9C2BA4 80240294 0043102A */  slt       $v0, $v0, $v1
/* 9C2BA8 80240298 14400058 */  bnez      $v0, .L802403FC
/* 9C2BAC 8024029C 24020001 */   addiu    $v0, $zero, 1
/* 9C2BB0 802402A0 A6220044 */  sh        $v0, 0x44($s1)
/* 9C2BB4 802402A4 080900FF */  j         .L802403FC
/* 9C2BB8 802402A8 A6200046 */   sh       $zero, 0x46($s1)
glabel L802402AC_9C2BBC
/* 9C2BBC 802402AC 96220046 */  lhu       $v0, 0x46($s1)
/* 9C2BC0 802402B0 24420001 */  addiu     $v0, $v0, 1
/* 9C2BC4 802402B4 A6220046 */  sh        $v0, 0x46($s1)
/* 9C2BC8 802402B8 00021400 */  sll       $v0, $v0, 0x10
/* 9C2BCC 802402BC 00021403 */  sra       $v0, $v0, 0x10
/* 9C2BD0 802402C0 2842003C */  slti      $v0, $v0, 0x3c
/* 9C2BD4 802402C4 1440004D */  bnez      $v0, .L802403FC
/* 9C2BD8 802402C8 24020002 */   addiu    $v0, $zero, 2
/* 9C2BDC 802402CC 8E230050 */  lw        $v1, 0x50($s1)
/* 9C2BE0 802402D0 A6220044 */  sh        $v0, 0x44($s1)
/* 9C2BE4 802402D4 A6200046 */  sh        $zero, 0x46($s1)
/* 9C2BE8 802402D8 8C63000C */  lw        $v1, 0xc($v1)
/* 9C2BEC 802402DC 24020001 */  addiu     $v0, $zero, 1
/* 9C2BF0 802402E0 AC620070 */  sw        $v0, 0x70($v1)
/* 9C2BF4 802402E4 8E220050 */  lw        $v0, 0x50($s1)
/* 9C2BF8 802402E8 8C42000C */  lw        $v0, 0xc($v0)
/* 9C2BFC 802402EC 080900FF */  j         .L802403FC
/* 9C2C00 802402F0 AC400074 */   sw       $zero, 0x74($v0)
glabel L802402F4_9C2C04
/* 9C2C04 802402F4 96220046 */  lhu       $v0, 0x46($s1)
/* 9C2C08 802402F8 24420001 */  addiu     $v0, $v0, 1
/* 9C2C0C 802402FC A6220046 */  sh        $v0, 0x46($s1)
/* 9C2C10 80240300 00021400 */  sll       $v0, $v0, 0x10
/* 9C2C14 80240304 00021403 */  sra       $v0, $v0, 0x10
/* 9C2C18 80240308 2842003C */  slti      $v0, $v0, 0x3c
/* 9C2C1C 8024030C 1440003B */  bnez      $v0, .L802403FC
/* 9C2C20 80240310 00000000 */   nop
/* 9C2C24 80240314 3C013F80 */  lui       $at, 0x3f80
/* 9C2C28 80240318 44810000 */  mtc1      $at, $f0
/* 9C2C2C 8024031C AFA00014 */  sw        $zero, 0x14($sp)
/* 9C2C30 80240320 E7A00010 */  swc1      $f0, 0x10($sp)
/* 9C2C34 80240324 8E250018 */  lw        $a1, 0x18($s1)
/* 9C2C38 80240328 8E26001C */  lw        $a2, 0x1c($s1)
/* 9C2C3C 8024032C 8E270020 */  lw        $a3, 0x20($s1)
/* 9C2C40 80240330 0C01C9AC */  jal       func_800726B0
/* 9C2C44 80240334 24040001 */   addiu    $a0, $zero, 1
/* 9C2C48 80240338 AE220054 */  sw        $v0, 0x54($s1)
/* 9C2C4C 8024033C 8C43000C */  lw        $v1, 0xc($v0)
/* 9C2C50 80240340 9222003B */  lbu       $v0, 0x3b($s1)
/* 9C2C54 80240344 A0620034 */  sb        $v0, 0x34($v1)
/* 9C2C58 80240348 8E220054 */  lw        $v0, 0x54($s1)
/* 9C2C5C 8024034C 8C42000C */  lw        $v0, 0xc($v0)
/* 9C2C60 80240350 AC400020 */  sw        $zero, 0x20($v0)
/* 9C2C64 80240354 8E250018 */  lw        $a1, 0x18($s1)
/* 9C2C68 80240358 8E260028 */  lw        $a2, 0x28($s1)
/* 9C2C6C 8024035C 8E270020 */  lw        $a3, 0x20($s1)
/* 9C2C70 80240360 0C044898 */  jal       create_shadow_type
/* 9C2C74 80240364 0000202D */   daddu    $a0, $zero, $zero
/* 9C2C78 80240368 3C014210 */  lui       $at, 0x4210
/* 9C2C7C 8024036C 44810000 */  mtc1      $at, $f0
/* 9C2C80 80240370 AE220040 */  sw        $v0, 0x40($s1)
/* 9C2C84 80240374 24020003 */  addiu     $v0, $zero, 3
/* 9C2C88 80240378 A6220044 */  sh        $v0, 0x44($s1)
/* 9C2C8C 8024037C 24020001 */  addiu     $v0, $zero, 1
/* 9C2C90 80240380 A6200046 */  sh        $zero, 0x46($s1)
/* 9C2C94 80240384 AE20002C */  sw        $zero, 0x2c($s1)
/* 9C2C98 80240388 A6220048 */  sh        $v0, 0x48($s1)
/* 9C2C9C 8024038C 080900FF */  j         .L802403FC
/* 9C2CA0 80240390 E6200030 */   swc1     $f0, 0x30($s1)
glabel L80240394_9C2CA4
/* 9C2CA4 80240394 0000202D */  daddu     $a0, $zero, $zero
/* 9C2CA8 80240398 3C054210 */  lui       $a1, 0x4210
/* 9C2CAC 8024039C 3C064198 */  lui       $a2, 0x4198
/* 9C2CB0 802403A0 86270046 */  lh        $a3, 0x46($s1)
/* 9C2CB4 802403A4 24020078 */  addiu     $v0, $zero, 0x78
/* 9C2CB8 802403A8 0C00A8ED */  jal       update_lerp
/* 9C2CBC 802403AC AFA20010 */   sw       $v0, 0x10($sp)
/* 9C2CC0 802403B0 96220046 */  lhu       $v0, 0x46($s1)
/* 9C2CC4 802403B4 E6200030 */  swc1      $f0, 0x30($s1)
/* 9C2CC8 802403B8 24420001 */  addiu     $v0, $v0, 1
/* 9C2CCC 802403BC A6220046 */  sh        $v0, 0x46($s1)
/* 9C2CD0 802403C0 00021400 */  sll       $v0, $v0, 0x10
/* 9C2CD4 802403C4 00021403 */  sra       $v0, $v0, 0x10
/* 9C2CD8 802403C8 28420078 */  slti      $v0, $v0, 0x78
/* 9C2CDC 802403CC 1440000B */  bnez      $v0, .L802403FC
/* 9C2CE0 802403D0 24030001 */   addiu    $v1, $zero, 1
/* 9C2CE4 802403D4 C620002C */  lwc1      $f0, 0x2c($s1)
/* 9C2CE8 802403D8 24020002 */  addiu     $v0, $zero, 2
/* 9C2CEC 802403DC A6220048 */  sh        $v0, 0x48($s1)
/* 9C2CF0 802403E0 24020004 */  addiu     $v0, $zero, 4
/* 9C2CF4 802403E4 A620004C */  sh        $zero, 0x4c($s1)
/* 9C2CF8 802403E8 A623004A */  sh        $v1, 0x4a($s1)
/* 9C2CFC 802403EC A623004E */  sh        $v1, 0x4e($s1)
/* 9C2D00 802403F0 A6220044 */  sh        $v0, 0x44($s1)
/* 9C2D04 802403F4 A6200046 */  sh        $zero, 0x46($s1)
/* 9C2D08 802403F8 E6200034 */  swc1      $f0, 0x34($s1)
.L802403FC:
glabel L802403FC_9C2D0C
/* 9C2D0C 802403FC 8623004A */  lh        $v1, 0x4a($s1)
/* 9C2D10 80240400 24020001 */  addiu     $v0, $zero, 1
/* 9C2D14 80240404 10620005 */  beq       $v1, $v0, .L8024041C
/* 9C2D18 80240408 24020002 */   addiu    $v0, $zero, 2
/* 9C2D1C 8024040C 1062001E */  beq       $v1, $v0, .L80240488
/* 9C2D20 80240410 00000000 */   nop
/* 9C2D24 80240414 0809014C */  j         .L80240530
/* 9C2D28 80240418 00000000 */   nop
.L8024041C:
/* 9C2D2C 8024041C 8627004C */  lh        $a3, 0x4c($s1)
/* 9C2D30 80240420 24100078 */  addiu     $s0, $zero, 0x78
/* 9C2D34 80240424 AFB00010 */  sw        $s0, 0x10($sp)
/* 9C2D38 80240428 8E250034 */  lw        $a1, 0x34($s1)
/* 9C2D3C 8024042C 3C0644B4 */  lui       $a2, 0x44b4
/* 9C2D40 80240430 0C00A8ED */  jal       update_lerp
/* 9C2D44 80240434 24040004 */   addiu    $a0, $zero, 4
/* 9C2D48 80240438 8627004C */  lh        $a3, 0x4c($s1)
/* 9C2D4C 8024043C E620002C */  swc1      $f0, 0x2c($s1)
/* 9C2D50 80240440 AFB00010 */  sw        $s0, 0x10($sp)
/* 9C2D54 80240444 8E25001C */  lw        $a1, 0x1c($s1)
/* 9C2D58 80240448 8E260024 */  lw        $a2, 0x24($s1)
/* 9C2D5C 8024044C 0C00A8ED */  jal       update_lerp
/* 9C2D60 80240450 2404000A */   addiu    $a0, $zero, 0xa
/* 9C2D64 80240454 9622004C */  lhu       $v0, 0x4c($s1)
/* 9C2D68 80240458 E6200004 */  swc1      $f0, 4($s1)
/* 9C2D6C 8024045C 24420001 */  addiu     $v0, $v0, 1
/* 9C2D70 80240460 A622004C */  sh        $v0, 0x4c($s1)
/* 9C2D74 80240464 00021400 */  sll       $v0, $v0, 0x10
/* 9C2D78 80240468 00021403 */  sra       $v0, $v0, 0x10
/* 9C2D7C 8024046C 0050102A */  slt       $v0, $v0, $s0
/* 9C2D80 80240470 1440002F */  bnez      $v0, .L80240530
/* 9C2D84 80240474 2402010E */   addiu    $v0, $zero, 0x10e
/* 9C2D88 80240478 A622004C */  sh        $v0, 0x4c($s1)
/* 9C2D8C 8024047C 24020002 */  addiu     $v0, $zero, 2
/* 9C2D90 80240480 0809014B */  j         .L8024052C
/* 9C2D94 80240484 A622004A */   sh       $v0, 0x4a($s1)
.L80240488:
/* 9C2D98 80240488 8622004C */  lh        $v0, 0x4c($s1)
/* 9C2D9C 8024048C 44826000 */  mtc1      $v0, $f12
/* 9C2DA0 80240490 00000000 */  nop
/* 9C2DA4 80240494 0C00A8BB */  jal       sin_deg
/* 9C2DA8 80240498 46806320 */   cvt.s.w  $f12, $f12
/* 9C2DAC 8024049C 3C013F80 */  lui       $at, 0x3f80
/* 9C2DB0 802404A0 44811000 */  mtc1      $at, $f2
/* 9C2DB4 802404A4 00000000 */  nop
/* 9C2DB8 802404A8 46020000 */  add.s     $f0, $f0, $f2
/* 9C2DBC 802404AC 46000000 */  add.s     $f0, $f0, $f0
/* 9C2DC0 802404B0 C6220024 */  lwc1      $f2, 0x24($s1)
/* 9C2DC4 802404B4 8622004C */  lh        $v0, 0x4c($s1)
/* 9C2DC8 802404B8 46001080 */  add.s     $f2, $f2, $f0
/* 9C2DCC 802404BC 24420008 */  addiu     $v0, $v0, 8
/* 9C2DD0 802404C0 44826000 */  mtc1      $v0, $f12
/* 9C2DD4 802404C4 00000000 */  nop
/* 9C2DD8 802404C8 46806320 */  cvt.s.w   $f12, $f12
/* 9C2DDC 802404CC 0C00A6C9 */  jal       clamp_angle
/* 9C2DE0 802404D0 E6220004 */   swc1     $f2, 4($s1)
/* 9C2DE4 802404D4 4600010D */  trunc.w.s $f4, $f0
/* 9C2DE8 802404D8 44022000 */  mfc1      $v0, $f4
/* 9C2DEC 802404DC C6200004 */  lwc1      $f0, 4($s1)
/* 9C2DF0 802404E0 A622004C */  sh        $v0, 0x4c($s1)
/* 9C2DF4 802404E4 C60C0028 */  lwc1      $f12, 0x28($s0)
/* 9C2DF8 802404E8 8E060030 */  lw        $a2, 0x30($s0)
/* 9C2DFC 802404EC 3C0141A0 */  lui       $at, 0x41a0
/* 9C2E00 802404F0 44817000 */  mtc1      $at, $f14
/* 9C2E04 802404F4 E7A00010 */  swc1      $f0, 0x10($sp)
/* 9C2E08 802404F8 C602002C */  lwc1      $f2, 0x2c($s0)
/* 9C2E0C 802404FC C6200008 */  lwc1      $f0, 8($s1)
/* 9C2E10 80240500 E7A00014 */  swc1      $f0, 0x14($sp)
/* 9C2E14 80240504 8E270000 */  lw        $a3, ($s1)
/* 9C2E18 80240508 0C00A7CB */  jal       dist3D
/* 9C2E1C 8024050C 460E1380 */   add.s    $f14, $f2, $f14
/* 9C2E20 80240510 3C0141F0 */  lui       $at, 0x41f0
/* 9C2E24 80240514 44811000 */  mtc1      $at, $f2
/* 9C2E28 80240518 00000000 */  nop
/* 9C2E2C 8024051C 4600103C */  c.lt.s    $f2, $f0
/* 9C2E30 80240520 00000000 */  nop
/* 9C2E34 80240524 45010002 */  bc1t      .L80240530
/* 9C2E38 80240528 24020003 */   addiu    $v0, $zero, 3
.L8024052C:
/* 9C2E3C 8024052C A622004E */  sh        $v0, 0x4e($s1)
.L80240530:
/* 9C2E40 80240530 86230048 */  lh        $v1, 0x48($s1)
/* 9C2E44 80240534 24020001 */  addiu     $v0, $zero, 1
/* 9C2E48 80240538 10620005 */  beq       $v1, $v0, .L80240550
/* 9C2E4C 8024053C 24020002 */   addiu    $v0, $zero, 2
/* 9C2E50 80240540 10620008 */  beq       $v1, $v0, .L80240564
/* 9C2E54 80240544 00000000 */   nop
/* 9C2E58 80240548 08090169 */  j         .L802405A4
/* 9C2E5C 8024054C 00000000 */   nop
.L80240550:
/* 9C2E60 80240550 C620002C */  lwc1      $f0, 0x2c($s1)
/* 9C2E64 80240554 C62C0030 */  lwc1      $f12, 0x30($s1)
/* 9C2E68 80240558 0C00A6C9 */  jal       clamp_angle
/* 9C2E6C 8024055C 460C0300 */   add.s    $f12, $f0, $f12
/* 9C2E70 80240560 E620002C */  swc1      $f0, 0x2c($s1)
.L80240564:
/* 9C2E74 80240564 8E220054 */  lw        $v0, 0x54($s1)
/* 9C2E78 80240568 C620002C */  lwc1      $f0, 0x2c($s1)
/* 9C2E7C 8024056C 8C42000C */  lw        $v0, 0xc($v0)
/* 9C2E80 80240570 E4400024 */  swc1      $f0, 0x24($v0)
/* 9C2E84 80240574 8E220054 */  lw        $v0, 0x54($s1)
/* 9C2E88 80240578 C6200018 */  lwc1      $f0, 0x18($s1)
/* 9C2E8C 8024057C 8C42000C */  lw        $v0, 0xc($v0)
/* 9C2E90 80240580 E4400004 */  swc1      $f0, 4($v0)
/* 9C2E94 80240584 8E220054 */  lw        $v0, 0x54($s1)
/* 9C2E98 80240588 C6200004 */  lwc1      $f0, 4($s1)
/* 9C2E9C 8024058C 8C42000C */  lw        $v0, 0xc($v0)
/* 9C2EA0 80240590 E4400008 */  swc1      $f0, 8($v0)
/* 9C2EA4 80240594 8E220054 */  lw        $v0, 0x54($s1)
/* 9C2EA8 80240598 C6200020 */  lwc1      $f0, 0x20($s1)
/* 9C2EAC 8024059C 8C42000C */  lw        $v0, 0xc($v0)
/* 9C2EB0 802405A0 E440000C */  swc1      $f0, 0xc($v0)
.L802405A4:
/* 9C2EB4 802405A4 8FBF0020 */  lw        $ra, 0x20($sp)
/* 9C2EB8 802405A8 8FB1001C */  lw        $s1, 0x1c($sp)
/* 9C2EBC 802405AC 8FB00018 */  lw        $s0, 0x18($sp)
/* 9C2EC0 802405B0 0000102D */  daddu     $v0, $zero, $zero
/* 9C2EC4 802405B4 03E00008 */  jr        $ra
/* 9C2EC8 802405B8 27BD0028 */   addiu    $sp, $sp, 0x28
