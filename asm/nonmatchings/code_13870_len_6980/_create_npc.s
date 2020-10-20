.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel _create_npc
/* 13998 80038598 3C03800A */  lui       $v1, %hi(gCurrentNpcListPtr)
/* 1399C 8003859C 8C630B90 */  lw        $v1, %lo(gCurrentNpcListPtr)($v1)
/* 139A0 800385A0 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 139A4 800385A4 AFB20018 */  sw        $s2, 0x18($sp)
/* 139A8 800385A8 0080902D */  daddu     $s2, $a0, $zero
/* 139AC 800385AC AFB3001C */  sw        $s3, 0x1c($sp)
/* 139B0 800385B0 00A0982D */  daddu     $s3, $a1, $zero
/* 139B4 800385B4 AFB40020 */  sw        $s4, 0x20($sp)
/* 139B8 800385B8 00C0A02D */  daddu     $s4, $a2, $zero
/* 139BC 800385BC AFB10014 */  sw        $s1, 0x14($sp)
/* 139C0 800385C0 0000882D */  daddu     $s1, $zero, $zero
/* 139C4 800385C4 AFBF0024 */  sw        $ra, 0x24($sp)
/* 139C8 800385C8 AFB00010 */  sw        $s0, 0x10($sp)
.L800385CC:
/* 139CC 800385CC 8C620000 */  lw        $v0, ($v1)
/* 139D0 800385D0 10400006 */  beqz      $v0, .L800385EC
/* 139D4 800385D4 2A220040 */   slti     $v0, $s1, 0x40
/* 139D8 800385D8 26310001 */  addiu     $s1, $s1, 1
/* 139DC 800385DC 2A220040 */  slti      $v0, $s1, 0x40
/* 139E0 800385E0 1440FFFA */  bnez      $v0, .L800385CC
/* 139E4 800385E4 24630004 */   addiu    $v1, $v1, 4
/* 139E8 800385E8 2A220040 */  slti      $v0, $s1, 0x40
.L800385EC:
/* 139EC 800385EC 14400003 */  bnez      $v0, .L800385FC
/* 139F0 800385F0 00000000 */   nop      
.L800385F4:
/* 139F4 800385F4 0800E17D */  j         .L800385F4
/* 139F8 800385F8 00000000 */   nop      
.L800385FC:
/* 139FC 800385FC 0C00AB39 */  jal       heap_malloc
/* 13A00 80038600 24040340 */   addiu    $a0, $zero, 0x340
/* 13A04 80038604 00112080 */  sll       $a0, $s1, 2
/* 13A08 80038608 3C03800A */  lui       $v1, %hi(gCurrentNpcListPtr)
/* 13A0C 8003860C 8C630B90 */  lw        $v1, %lo(gCurrentNpcListPtr)($v1)
/* 13A10 80038610 3C05800A */  lui       $a1, 0x800a
/* 13A14 80038614 24A5A604 */  addiu     $a1, $a1, -0x59fc
/* 13A18 80038618 00832021 */  addu      $a0, $a0, $v1
/* 13A1C 8003861C 94A30000 */  lhu       $v1, ($a1)
/* 13A20 80038620 0040802D */  daddu     $s0, $v0, $zero
/* 13A24 80038624 AC900000 */  sw        $s0, ($a0)
/* 13A28 80038628 24630001 */  addiu     $v1, $v1, 1
/* 13A2C 8003862C 16000003 */  bnez      $s0, .L8003863C
/* 13A30 80038630 A4A30000 */   sh       $v1, ($a1)
.L80038634:
/* 13A34 80038634 0800E18D */  j         .L80038634
/* 13A38 80038638 00000000 */   nop      
.L8003863C:
/* 13A3C 8003863C 3C030041 */  lui       $v1, 0x41
/* 13A40 80038640 8E420000 */  lw        $v0, ($s2)
/* 13A44 80038644 34630011 */  ori       $v1, $v1, 0x11
/* 13A48 80038648 00431825 */  or        $v1, $v0, $v1
/* 13A4C 8003864C 12800004 */  beqz      $s4, .L80038660
/* 13A50 80038650 AE030000 */   sw       $v1, ($s0)
/* 13A54 80038654 3C024000 */  lui       $v0, 0x4000
/* 13A58 80038658 00621025 */  or        $v0, $v1, $v0
/* 13A5C 8003865C AE020000 */  sw        $v0, ($s0)
.L80038660:
/* 13A60 80038660 0000202D */  daddu     $a0, $zero, $zero
/* 13A64 80038664 3C013F80 */  lui       $at, 0x3f80
/* 13A68 80038668 44810000 */  mtc1      $at, $f0
/* 13A6C 8003866C 3C014080 */  lui       $at, 0x4080
/* 13A70 80038670 44811000 */  mtc1      $at, $f2
/* 13A74 80038674 24020020 */  addiu     $v0, $zero, 0x20
/* 13A78 80038678 A60200A6 */  sh        $v0, 0xa6($s0)
/* 13A7C 8003867C 24020040 */  addiu     $v0, $zero, 0x40
/* 13A80 80038680 A60200A8 */  sh        $v0, 0xa8($s0)
/* 13A84 80038684 2402000D */  addiu     $v0, $zero, 0xd
/* 13A88 80038688 A20200AA */  sb        $v0, 0xaa($s0)
/* 13A8C 8003868C 240200FF */  addiu     $v0, $zero, 0xff
/* 13A90 80038690 AE000020 */  sw        $zero, 0x20($s0)
/* 13A94 80038694 AE00000C */  sw        $zero, 0xc($s0)
/* 13A98 80038698 AE00001C */  sw        $zero, 0x1c($s0)
/* 13A9C 8003869C AE000038 */  sw        $zero, 0x38($s0)
/* 13AA0 800386A0 AE00003C */  sw        $zero, 0x3c($s0)
/* 13AA4 800386A4 AE000040 */  sw        $zero, 0x40($s0)
/* 13AA8 800386A8 AE00006C */  sw        $zero, 0x6c($s0)
/* 13AAC 800386AC AE000070 */  sw        $zero, 0x70($s0)
/* 13AB0 800386B0 AE000074 */  sw        $zero, 0x74($s0)
/* 13AB4 800386B4 AE000050 */  sw        $zero, 0x50($s0)
/* 13AB8 800386B8 AE000044 */  sw        $zero, 0x44($s0)
/* 13ABC 800386BC AE000048 */  sw        $zero, 0x48($s0)
/* 13AC0 800386C0 AE00004C */  sw        $zero, 0x4c($s0)
/* 13AC4 800386C4 A6000090 */  sh        $zero, 0x90($s0)
/* 13AC8 800386C8 A6000092 */  sh        $zero, 0x92($s0)
/* 13ACC 800386CC A6000094 */  sh        $zero, 0x94($s0)
/* 13AD0 800386D0 A6000096 */  sh        $zero, 0x96($s0)
/* 13AD4 800386D4 A20000AB */  sb        $zero, 0xab($s0)
/* 13AD8 800386D8 A20200AC */  sb        $v0, 0xac($s0)
/* 13ADC 800386DC A20200AD */  sb        $v0, 0xad($s0)
/* 13AE0 800386E0 E6000014 */  swc1      $f0, 0x14($s0)
/* 13AE4 800386E4 E6020018 */  swc1      $f2, 0x18($s0)
/* 13AE8 800386E8 E6000054 */  swc1      $f0, 0x54($s0)
/* 13AEC 800386EC E6000058 */  swc1      $f0, 0x58($s0)
/* 13AF0 800386F0 E600005C */  swc1      $f0, 0x5c($s0)
/* 13AF4 800386F4 8E420004 */  lw        $v0, 4($s2)
/* 13AF8 800386F8 0200182D */  daddu     $v1, $s0, $zero
/* 13AFC 800386FC E6000030 */  swc1      $f0, 0x30($s0)
/* 13B00 80038700 AE000034 */  sw        $zero, 0x34($s0)
/* 13B04 80038704 A6000098 */  sh        $zero, 0x98($s0)
/* 13B08 80038708 AE020028 */  sw        $v0, 0x28($s0)
/* 13B0C 8003870C 3C020002 */  lui       $v0, 2
/* 13B10 80038710 A60000A2 */  sh        $zero, 0xa2($s0)
/* 13B14 80038714 AE020080 */  sw        $v0, 0x80($s0)
/* 13B18 80038718 2402FFFF */  addiu     $v0, $zero, -1
/* 13B1C 8003871C A6000088 */  sh        $zero, 0x88($s0)
/* 13B20 80038720 A600008A */  sh        $zero, 0x8a($s0)
/* 13B24 80038724 A600008C */  sh        $zero, 0x8c($s0)
/* 13B28 80038728 A6020084 */  sh        $v0, 0x84($s0)
/* 13B2C 8003872C A6020086 */  sh        $v0, 0x86($s0)
/* 13B30 80038730 A20000B4 */  sb        $zero, 0xb4($s0)
/* 13B34 80038734 A20000B5 */  sb        $zero, 0xb5($s0)
/* 13B38 80038738 AE000318 */  sw        $zero, 0x318($s0)
/* 13B3C 8003873C AE00031C */  sw        $zero, 0x31c($s0)
/* 13B40 80038740 E6000320 */  swc1      $f0, 0x320($s0)
.L80038744:
/* 13B44 80038744 AC600324 */  sw        $zero, 0x324($v1)
/* 13B48 80038748 02041021 */  addu      $v0, $s0, $a0
/* 13B4C 8003874C 24840001 */  addiu     $a0, $a0, 1
/* 13B50 80038750 A040032C */  sb        $zero, 0x32c($v0)
/* 13B54 80038754 28820002 */  slti      $v0, $a0, 2
/* 13B58 80038758 1440FFFA */  bnez      $v0, .L80038744
/* 13B5C 8003875C 24630004 */   addiu    $v1, $v1, 4
/* 13B60 80038760 8E420008 */  lw        $v0, 8($s2)
/* 13B64 80038764 14400004 */  bnez      $v0, .L80038778
/* 13B68 80038768 AE020004 */   sw       $v0, 4($s0)
/* 13B6C 8003876C 3C028004 */  lui       $v0, %hi(NOP_npc_callback)
/* 13B70 80038770 24428470 */  addiu     $v0, $v0, %lo(NOP_npc_callback)
/* 13B74 80038774 AE020004 */  sw        $v0, 4($s0)
.L80038778:
/* 13B78 80038778 8E42000C */  lw        $v0, 0xc($s2)
/* 13B7C 8003877C 14400004 */  bnez      $v0, .L80038790
/* 13B80 80038780 AE020008 */   sw       $v0, 8($s0)
/* 13B84 80038784 3C028004 */  lui       $v0, %hi(NOP_npc_callback)
/* 13B88 80038788 24428470 */  addiu     $v0, $v0, %lo(NOP_npc_callback)
/* 13B8C 8003878C AE020008 */  sw        $v0, 8($s0)
.L80038790:
/* 13B90 80038790 16800015 */  bnez      $s4, .L800387E8
/* 13B94 80038794 3C020100 */   lui      $v0, 0x100
/* 13B98 80038798 8E030000 */  lw        $v1, ($s0)
/* 13B9C 8003879C 00621024 */  and       $v0, $v1, $v0
/* 13BA0 800387A0 1440000F */  bnez      $v0, .L800387E0
/* 13BA4 800387A4 AE1300B0 */   sw       $s3, 0xb0($s0)
/* 13BA8 800387A8 3C020400 */  lui       $v0, 0x400
/* 13BAC 800387AC 00621024 */  and       $v0, $v1, $v0
/* 13BB0 800387B0 14400004 */  bnez      $v0, .L800387C4
/* 13BB4 800387B4 0260282D */   daddu    $a1, $s3, $zero
/* 13BB8 800387B8 8E040028 */  lw        $a0, 0x28($s0)
/* 13BBC 800387BC 0800E1F4 */  j         .L800387D0
/* 13BC0 800387C0 00000000 */   nop      
.L800387C4:
/* 13BC4 800387C4 8E020028 */  lw        $v0, 0x28($s0)
/* 13BC8 800387C8 3C048000 */  lui       $a0, 0x8000
/* 13BCC 800387CC 00442025 */  or        $a0, $v0, $a0
.L800387D0:
/* 13BD0 800387D0 0C0B783B */  jal       func_802DE0EC
/* 13BD4 800387D4 00000000 */   nop      
/* 13BD8 800387D8 0800E1FA */  j         .L800387E8
/* 13BDC 800387DC AE020024 */   sw       $v0, 0x24($s0)
.L800387E0:
/* 13BE0 800387E0 34620002 */  ori       $v0, $v1, 2
/* 13BE4 800387E4 AE020000 */  sw        $v0, ($s0)
.L800387E8:
/* 13BE8 800387E8 8E050038 */  lw        $a1, 0x38($s0)
/* 13BEC 800387EC 8E06003C */  lw        $a2, 0x3c($s0)
/* 13BF0 800387F0 8E070040 */  lw        $a3, 0x40($s0)
/* 13BF4 800387F4 0C044898 */  jal       create_shadow_type
/* 13BF8 800387F8 0000202D */   daddu    $a0, $zero, $zero
/* 13BFC 800387FC 3C013F80 */  lui       $at, 0x3f80
/* 13C00 80038800 44810000 */  mtc1      $at, $f0
/* 13C04 80038804 3C038007 */  lui       $v1, %hi(gGameStatusPtr)
/* 13C08 80038808 8C63419C */  lw        $v1, %lo(gGameStatusPtr)($v1)
/* 13C0C 8003880C AE020078 */  sw        $v0, 0x78($s0)
/* 13C10 80038810 E600007C */  swc1      $f0, 0x7c($s0)
/* 13C14 80038814 80620070 */  lb        $v0, 0x70($v1)
/* 13C18 80038818 54400001 */  bnel      $v0, $zero, .L80038820
/* 13C1C 8003881C 36310800 */   ori      $s1, $s1, 0x800
.L80038820:
/* 13C20 80038820 0220102D */  daddu     $v0, $s1, $zero
/* 13C24 80038824 8FBF0024 */  lw        $ra, 0x24($sp)
/* 13C28 80038828 8FB40020 */  lw        $s4, 0x20($sp)
/* 13C2C 8003882C 8FB3001C */  lw        $s3, 0x1c($sp)
/* 13C30 80038830 8FB20018 */  lw        $s2, 0x18($sp)
/* 13C34 80038834 8FB10014 */  lw        $s1, 0x14($sp)
/* 13C38 80038838 8FB00010 */  lw        $s0, 0x10($sp)
/* 13C3C 8003883C 03E00008 */  jr        $ra
/* 13C40 80038840 27BD0028 */   addiu    $sp, $sp, 0x28