.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80242FF4
/* 136334 80242FF4 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 136338 80242FF8 3C038016 */  lui       $v1, %hi(gUIPanels)
/* 13633C 80242FFC 24639D50 */  addiu     $v1, $v1, %lo(gUIPanels)
/* 136340 80243000 00041140 */  sll       $v0, $a0, 5
/* 136344 80243004 AFB00010 */  sw        $s0, 0x10($sp)
/* 136348 80243008 00438021 */  addu      $s0, $v0, $v1
/* 13634C 8024300C AFBF001C */  sw        $ra, 0x1c($sp)
/* 136350 80243010 AFB20018 */  sw        $s2, 0x18($sp)
/* 136354 80243014 AFB10014 */  sw        $s1, 0x14($sp)
/* 136358 80243018 9211001C */  lbu       $s1, 0x1c($s0)
/* 13635C 8024301C 8FB20048 */  lw        $s2, 0x48($sp)
/* 136360 80243020 16200005 */  bnez      $s1, .L80243038
/* 136364 80243024 24020005 */   addiu    $v0, $zero, 5
/* 136368 80243028 92020000 */  lbu       $v0, ($s0)
/* 13636C 8024302C 304200FB */  andi      $v0, $v0, 0xfb
/* 136370 80243030 A2020000 */  sb        $v0, ($s0)
/* 136374 80243034 24020005 */  addiu     $v0, $zero, 5
.L80243038:
/* 136378 80243038 16220005 */  bne       $s1, $v0, .L80243050
/* 13637C 8024303C 2A22000A */   slti     $v0, $s1, 0xa
/* 136380 80243040 92050002 */  lbu       $a1, 2($s0)
/* 136384 80243044 0C051F5C */  jal       func_80147D70
/* 136388 80243048 00000000 */   nop
/* 13638C 8024304C 2A22000A */  slti      $v0, $s1, 0xa
.L80243050:
/* 136390 80243050 10400004 */  beqz      $v0, .L80243064
/* 136394 80243054 26220001 */   addiu    $v0, $s1, 1
/* 136398 80243058 00021100 */  sll       $v0, $v0, 4
/* 13639C 8024305C 08090C1E */  j         .L80243078
/* 1363A0 80243060 AE420000 */   sw       $v0, ($s2)
.L80243064:
/* 1363A4 80243064 240200A0 */  addiu     $v0, $zero, 0xa0
/* 1363A8 80243068 AE420000 */  sw        $v0, ($s2)
/* 1363AC 8024306C 92020000 */  lbu       $v0, ($s0)
/* 1363B0 80243070 304200F7 */  andi      $v0, $v0, 0xf7
/* 1363B4 80243074 A2020000 */  sb        $v0, ($s0)
.L80243078:
/* 1363B8 80243078 8FBF001C */  lw        $ra, 0x1c($sp)
/* 1363BC 8024307C 8FB20018 */  lw        $s2, 0x18($sp)
/* 1363C0 80243080 8FB10014 */  lw        $s1, 0x14($sp)
/* 1363C4 80243084 8FB00010 */  lw        $s0, 0x10($sp)
/* 1363C8 80243088 03E00008 */  jr        $ra
/* 1363CC 8024308C 27BD0020 */   addiu    $sp, $sp, 0x20
