.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800355D4
/* 109D4 800355D4 3C05800A */  lui       $a1, %hi(D_800A0932)
/* 109D8 800355D8 84A50932 */  lh        $a1, %lo(D_800A0932)($a1)
/* 109DC 800355DC 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 109E0 800355E0 18A00009 */  blez      $a1, .L80035608
/* 109E4 800355E4 AFBF0010 */   sw       $ra, 0x10($sp)
/* 109E8 800355E8 44850000 */  mtc1      $a1, $f0
/* 109EC 800355EC 00000000 */  nop
/* 109F0 800355F0 46800020 */  cvt.s.w   $f0, $f0
/* 109F4 800355F4 44050000 */  mfc1      $a1, $f0
/* 109F8 800355F8 3C01800A */  lui       $at, %hi(D_800A0931)
/* 109FC 800355FC A0200931 */  sb        $zero, %lo(D_800A0931)($at)
/* 10A00 80035600 0800D58A */  j         .L80035628
/* 10A04 80035604 0000202D */   daddu    $a0, $zero, $zero
.L80035608:
/* 10A08 80035608 24020001 */  addiu     $v0, $zero, 1
/* 10A0C 8003560C 44850000 */  mtc1      $a1, $f0
/* 10A10 80035610 00000000 */  nop
/* 10A14 80035614 46800020 */  cvt.s.w   $f0, $f0
/* 10A18 80035618 44050000 */  mfc1      $a1, $f0
/* 10A1C 8003561C 0000202D */  daddu     $a0, $zero, $zero
/* 10A20 80035620 3C01800A */  lui       $at, %hi(D_800A0931)
/* 10A24 80035624 A0220931 */  sb        $v0, %lo(D_800A0931)($at)
.L80035628:
/* 10A28 80035628 0C04DF62 */  jal       func_80137D88
/* 10A2C 8003562C 00000000 */   nop
/* 10A30 80035630 24020001 */  addiu     $v0, $zero, 1
/* 10A34 80035634 3C04800A */  lui       $a0, %hi(D_8009A650)
/* 10A38 80035638 2484A650 */  addiu     $a0, $a0, %lo(D_8009A650)
/* 10A3C 8003563C 3C01800A */  lui       $at, %hi(D_800A0930)
/* 10A40 80035640 A0220930 */  sb        $v0, %lo(D_800A0930)($at)
/* 10A44 80035644 8C820000 */  lw        $v0, ($a0)
/* 10A48 80035648 2403FFBF */  addiu     $v1, $zero, -0x41
/* 10A4C 8003564C 00431024 */  and       $v0, $v0, $v1
/* 10A50 80035650 AC820000 */  sw        $v0, ($a0)
/* 10A54 80035654 8FBF0010 */  lw        $ra, 0x10($sp)
/* 10A58 80035658 03E00008 */  jr        $ra
/* 10A5C 8003565C 27BD0018 */   addiu    $sp, $sp, 0x18
