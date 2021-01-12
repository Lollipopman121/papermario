.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8025950C
/* 187DEC 8025950C 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 187DF0 80259510 AFB1001C */  sw        $s1, 0x1c($sp)
/* 187DF4 80259514 0080882D */  daddu     $s1, $a0, $zero
/* 187DF8 80259518 AFB20020 */  sw        $s2, 0x20($sp)
/* 187DFC 8025951C 00A0902D */  daddu     $s2, $a1, $zero
/* 187E00 80259520 AFB30024 */  sw        $s3, 0x24($sp)
/* 187E04 80259524 00C0982D */  daddu     $s3, $a2, $zero
/* 187E08 80259528 240600FF */  addiu     $a2, $zero, 0xff
/* 187E0C 8025952C AFBF0028 */  sw        $ra, 0x28($sp)
/* 187E10 80259530 AFB00018 */  sw        $s0, 0x18($sp)
/* 187E14 80259534 86230098 */  lh        $v1, 0x98($s1)
/* 187E18 80259538 8E3000C0 */  lw        $s0, 0xc0($s1)
/* 187E1C 8025953C 0066102A */  slt       $v0, $v1, $a2
/* 187E20 80259540 10400003 */  beqz      $v0, .L80259550
/* 187E24 80259544 0000382D */   daddu    $a3, $zero, $zero
/* 187E28 80259548 3C078000 */  lui       $a3, 0x8000
/* 187E2C 8025954C 0060302D */  daddu     $a2, $v1, $zero
.L80259550:
/* 187E30 80259550 8E220000 */  lw        $v0, ($s1)
/* 187E34 80259554 30420100 */  andi      $v0, $v0, 0x100
/* 187E38 80259558 1040000C */  beqz      $v0, .L8025958C
/* 187E3C 8025955C 3C038080 */   lui      $v1, 0x8080
/* 187E40 80259560 34638081 */  ori       $v1, $v1, 0x8081
/* 187E44 80259564 00061100 */  sll       $v0, $a2, 4
/* 187E48 80259568 00461023 */  subu      $v0, $v0, $a2
/* 187E4C 8025956C 000210C0 */  sll       $v0, $v0, 3
/* 187E50 80259570 00430018 */  mult      $v0, $v1
/* 187E54 80259574 3C078000 */  lui       $a3, 0x8000
/* 187E58 80259578 00004010 */  mfhi      $t0
/* 187E5C 8025957C 01021821 */  addu      $v1, $t0, $v0
/* 187E60 80259580 000319C3 */  sra       $v1, $v1, 7
/* 187E64 80259584 000217C3 */  sra       $v0, $v0, 0x1f
/* 187E68 80259588 00623023 */  subu      $a2, $v1, $v0
.L8025958C:
/* 187E6C 8025958C 92020768 */  lbu       $v0, 0x768($s0)
/* 187E70 80259590 1040003F */  beqz      $v0, .L80259690
/* 187E74 80259594 0240282D */   daddu    $a1, $s2, $zero
/* 187E78 80259598 96240088 */  lhu       $a0, 0x88($s1)
/* 187E7C 8025959C 0C0B7A90 */  jal       func_802DEA40
/* 187E80 802595A0 00000000 */   nop
/* 187E84 802595A4 AE0206D0 */  sw        $v0, 0x6d0($s0)
/* 187E88 802595A8 0040202D */  daddu     $a0, $v0, $zero
/* 187E8C 802595AC A20006CD */  sb        $zero, 0x6cd($s0)
/* 187E90 802595B0 8C830000 */  lw        $v1, ($a0)
/* 187E94 802595B4 2402FFFF */  addiu     $v0, $zero, -1
/* 187E98 802595B8 1062000C */  beq       $v1, $v0, .L802595EC
/* 187E9C 802595BC 00000000 */   nop
/* 187EA0 802595C0 0080182D */  daddu     $v1, $a0, $zero
/* 187EA4 802595C4 0040202D */  daddu     $a0, $v0, $zero
.L802595C8:
/* 187EA8 802595C8 920206CD */  lbu       $v0, 0x6cd($s0)
/* 187EAC 802595CC 24420001 */  addiu     $v0, $v0, 1
/* 187EB0 802595D0 A20206CD */  sb        $v0, 0x6cd($s0)
/* 187EB4 802595D4 00021600 */  sll       $v0, $v0, 0x18
/* 187EB8 802595D8 00021583 */  sra       $v0, $v0, 0x16
/* 187EBC 802595DC 00431021 */  addu      $v0, $v0, $v1
/* 187EC0 802595E0 8C420000 */  lw        $v0, ($v0)
/* 187EC4 802595E4 1444FFF8 */  bne       $v0, $a0, .L802595C8
/* 187EC8 802595E8 00000000 */   nop
.L802595EC:
/* 187ECC 802595EC 820206CD */  lb        $v0, 0x6cd($s0)
/* 187ED0 802595F0 18400016 */  blez      $v0, .L8025964C
/* 187ED4 802595F4 0000302D */   daddu    $a2, $zero, $zero
.L802595F8:
/* 187ED8 802595F8 8E0206D0 */  lw        $v0, 0x6d0($s0)
/* 187EDC 802595FC 00061880 */  sll       $v1, $a2, 2
/* 187EE0 80259600 00621821 */  addu      $v1, $v1, $v0
/* 187EE4 80259604 00061140 */  sll       $v0, $a2, 5
/* 187EE8 80259608 8C630000 */  lw        $v1, ($v1)
/* 187EEC 8025960C 10600009 */  beqz      $v1, .L80259634
/* 187EF0 80259610 02022821 */   addu     $a1, $s0, $v0
/* 187EF4 80259614 0000202D */  daddu     $a0, $zero, $zero
.L80259618:
/* 187EF8 80259618 94620000 */  lhu       $v0, ($v1)
/* 187EFC 8025961C 24630002 */  addiu     $v1, $v1, 2
/* 187F00 80259620 24840001 */  addiu     $a0, $a0, 1
/* 187F04 80259624 A4A20000 */  sh        $v0, ($a1)
/* 187F08 80259628 28820010 */  slti      $v0, $a0, 0x10
/* 187F0C 8025962C 1440FFFA */  bnez      $v0, .L80259618
/* 187F10 80259630 24A50002 */   addiu    $a1, $a1, 2
.L80259634:
/* 187F14 80259634 820206CD */  lb        $v0, 0x6cd($s0)
/* 187F18 80259638 24C60001 */  addiu     $a2, $a2, 1
/* 187F1C 8025963C 00C2102A */  slt       $v0, $a2, $v0
/* 187F20 80259640 1440FFED */  bnez      $v0, .L802595F8
/* 187F24 80259644 00000000 */   nop
/* 187F28 80259648 820206CD */  lb        $v0, 0x6cd($s0)
.L8025964C:
/* 187F2C 8025964C 1840000A */  blez      $v0, .L80259678
/* 187F30 80259650 0000302D */   daddu    $a2, $zero, $zero
/* 187F34 80259654 0200202D */  daddu     $a0, $s0, $zero
/* 187F38 80259658 0200182D */  daddu     $v1, $s0, $zero
.L8025965C:
/* 187F3C 8025965C AC6406D4 */  sw        $a0, 0x6d4($v1)
/* 187F40 80259660 24840020 */  addiu     $a0, $a0, 0x20
/* 187F44 80259664 820206CD */  lb        $v0, 0x6cd($s0)
/* 187F48 80259668 24C60001 */  addiu     $a2, $a2, 1
/* 187F4C 8025966C 00C2102A */  slt       $v0, $a2, $v0
/* 187F50 80259670 1440FFFA */  bnez      $v0, .L8025965C
/* 187F54 80259674 24630004 */   addiu    $v1, $v1, 4
.L80259678:
/* 187F58 80259678 0220202D */  daddu     $a0, $s1, $zero
/* 187F5C 8025967C 0240282D */  daddu     $a1, $s2, $zero
/* 187F60 80259680 0C0965B0 */  jal       func_802596C0
/* 187F64 80259684 0260302D */   daddu    $a2, $s3, $zero
/* 187F68 80259688 080965A9 */  j         .L802596A4
/* 187F6C 8025968C 00000000 */   nop
.L80259690:
/* 187F70 80259690 8E240084 */  lw        $a0, 0x84($s1)
/* 187F74 80259694 AFB30010 */  sw        $s3, 0x10($sp)
/* 187F78 80259698 00872025 */  or        $a0, $a0, $a3
/* 187F7C 8025969C 0C0B78F6 */  jal       func_802DE3D8
/* 187F80 802596A0 0000382D */   daddu    $a3, $zero, $zero
.L802596A4:
/* 187F84 802596A4 8FBF0028 */  lw        $ra, 0x28($sp)
/* 187F88 802596A8 8FB30024 */  lw        $s3, 0x24($sp)
/* 187F8C 802596AC 8FB20020 */  lw        $s2, 0x20($sp)
/* 187F90 802596B0 8FB1001C */  lw        $s1, 0x1c($sp)
/* 187F94 802596B4 8FB00018 */  lw        $s0, 0x18($sp)
/* 187F98 802596B8 03E00008 */  jr        $ra
/* 187F9C 802596BC 27BD0030 */   addiu    $sp, $sp, 0x30
