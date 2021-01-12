.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_E00A6124
/* 3A5674 E00A6124 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 3A5678 E00A6128 AFBF0010 */  sw        $ra, 0x10($sp)
/* 3A567C E00A612C 8C830000 */  lw        $v1, ($a0)
/* 3A5680 E00A6130 8C85000C */  lw        $a1, 0xc($a0)
/* 3A5684 E00A6134 30620010 */  andi      $v0, $v1, 0x10
/* 3A5688 E00A6138 10400005 */  beqz      $v0, .LE00A6150
/* 3A568C E00A613C 2402FFEF */   addiu    $v0, $zero, -0x11
/* 3A5690 E00A6140 00621024 */  and       $v0, $v1, $v0
/* 3A5694 E00A6144 AC820000 */  sw        $v0, ($a0)
/* 3A5698 E00A6148 2402001E */  addiu     $v0, $zero, 0x1e
/* 3A569C E00A614C ACA20004 */  sw        $v0, 4($a1)
.LE00A6150:
/* 3A56A0 E00A6150 8CA30004 */  lw        $v1, 4($a1)
/* 3A56A4 E00A6154 28620064 */  slti      $v0, $v1, 0x64
/* 3A56A8 E00A6158 10400002 */  beqz      $v0, .LE00A6164
/* 3A56AC E00A615C 2462FFFF */   addiu    $v0, $v1, -1
/* 3A56B0 E00A6160 ACA20004 */  sw        $v0, 4($a1)
.LE00A6164:
/* 3A56B4 E00A6164 8CA20008 */  lw        $v0, 8($a1)
/* 3A56B8 E00A6168 8CA30004 */  lw        $v1, 4($a1)
/* 3A56BC E00A616C 24420001 */  addiu     $v0, $v0, 1
/* 3A56C0 E00A6170 04610005 */  bgez      $v1, .LE00A6188
/* 3A56C4 E00A6174 ACA20008 */   sw       $v0, 8($a1)
/* 3A56C8 E00A6178 0C080128 */  jal       func_E02004A0
/* 3A56CC E00A617C 00000000 */   nop
/* 3A56D0 E00A6180 080298D3 */  j         .LE00A634C
/* 3A56D4 E00A6184 00000000 */   nop
.LE00A6188:
/* 3A56D8 E00A6188 C4A2001C */  lwc1      $f2, 0x1c($a1)
/* 3A56DC E00A618C C4A0002C */  lwc1      $f0, 0x2c($a1)
/* 3A56E0 E00A6190 C4A60020 */  lwc1      $f6, 0x20($a1)
/* 3A56E4 E00A6194 C4A40024 */  lwc1      $f4, 0x24($a1)
/* 3A56E8 E00A6198 46001080 */  add.s     $f2, $f2, $f0
/* 3A56EC E00A619C C4A00030 */  lwc1      $f0, 0x30($a1)
/* 3A56F0 E00A61A0 8CA40008 */  lw        $a0, 8($a1)
/* 3A56F4 E00A61A4 46003180 */  add.s     $f6, $f6, $f0
/* 3A56F8 E00A61A8 C4A00034 */  lwc1      $f0, 0x34($a1)
/* 3A56FC E00A61AC 8CA30004 */  lw        $v1, 4($a1)
/* 3A5700 E00A61B0 46002100 */  add.s     $f4, $f4, $f0
/* 3A5704 E00A61B4 C4A00028 */  lwc1      $f0, 0x28($a1)
/* 3A5708 E00A61B8 E4A2001C */  swc1      $f2, 0x1c($a1)
/* 3A570C E00A61BC C4A20038 */  lwc1      $f2, 0x38($a1)
/* 3A5710 E00A61C0 28820011 */  slti      $v0, $a0, 0x11
/* 3A5714 E00A61C4 46020000 */  add.s     $f0, $f0, $f2
/* 3A5718 E00A61C8 E4A60020 */  swc1      $f6, 0x20($a1)
/* 3A571C E00A61CC E4A40024 */  swc1      $f4, 0x24($a1)
/* 3A5720 E00A61D0 10400004 */  beqz      $v0, .LE00A61E4
/* 3A5724 E00A61D4 E4A00028 */   swc1     $f0, 0x28($a1)
/* 3A5728 E00A61D8 00041100 */  sll       $v0, $a0, 4
/* 3A572C E00A61DC 2442FFFF */  addiu     $v0, $v0, -1
/* 3A5730 E00A61E0 ACA20018 */  sw        $v0, 0x18($a1)
.LE00A61E4:
/* 3A5734 E00A61E4 28620010 */  slti      $v0, $v1, 0x10
/* 3A5738 E00A61E8 10400002 */  beqz      $v0, .LE00A61F4
/* 3A573C E00A61EC 00031100 */   sll      $v0, $v1, 4
/* 3A5740 E00A61F0 ACA20018 */  sw        $v0, 0x18($a1)
.LE00A61F4:
/* 3A5744 E00A61F4 C4A2001C */  lwc1      $f2, 0x1c($a1)
/* 3A5748 E00A61F8 44800000 */  mtc1      $zero, $f0
/* 3A574C E00A61FC 00000000 */  nop
/* 3A5750 E00A6200 4600103C */  c.lt.s    $f2, $f0
/* 3A5754 E00A6204 00000000 */  nop
/* 3A5758 E00A6208 45000005 */  bc1f      .LE00A6220
/* 3A575C E00A620C 00000000 */   nop
/* 3A5760 E00A6210 3C014300 */  lui       $at, 0x4300
/* 3A5764 E00A6214 44810000 */  mtc1      $at, $f0
/* 3A5768 E00A6218 08029890 */  j         .LE00A6240
/* 3A576C E00A621C 46001000 */   add.s    $f0, $f2, $f0
.LE00A6220:
/* 3A5770 E00A6220 3C014300 */  lui       $at, 0x4300
/* 3A5774 E00A6224 44810000 */  mtc1      $at, $f0
/* 3A5778 E00A6228 00000000 */  nop
/* 3A577C E00A622C 4602003C */  c.lt.s    $f0, $f2
/* 3A5780 E00A6230 00000000 */  nop
/* 3A5784 E00A6234 45000003 */  bc1f      .LE00A6244
/* 3A5788 E00A6238 00000000 */   nop
/* 3A578C E00A623C 46001001 */  sub.s     $f0, $f2, $f0
.LE00A6240:
/* 3A5790 E00A6240 E4A0001C */  swc1      $f0, 0x1c($a1)
.LE00A6244:
/* 3A5794 E00A6244 C4A00020 */  lwc1      $f0, 0x20($a1)
/* 3A5798 E00A6248 C4A20030 */  lwc1      $f2, 0x30($a1)
/* 3A579C E00A624C 46020080 */  add.s     $f2, $f0, $f2
/* 3A57A0 E00A6250 44800000 */  mtc1      $zero, $f0
/* 3A57A4 E00A6254 00000000 */  nop
/* 3A57A8 E00A6258 4600103C */  c.lt.s    $f2, $f0
/* 3A57AC E00A625C 00000000 */  nop
/* 3A57B0 E00A6260 45000005 */  bc1f      .LE00A6278
/* 3A57B4 E00A6264 E4A20020 */   swc1     $f2, 0x20($a1)
/* 3A57B8 E00A6268 3C014300 */  lui       $at, 0x4300
/* 3A57BC E00A626C 44810000 */  mtc1      $at, $f0
/* 3A57C0 E00A6270 080298A6 */  j         .LE00A6298
/* 3A57C4 E00A6274 46001000 */   add.s    $f0, $f2, $f0
.LE00A6278:
/* 3A57C8 E00A6278 3C014300 */  lui       $at, 0x4300
/* 3A57CC E00A627C 44810000 */  mtc1      $at, $f0
/* 3A57D0 E00A6280 00000000 */  nop
/* 3A57D4 E00A6284 4602003C */  c.lt.s    $f0, $f2
/* 3A57D8 E00A6288 00000000 */  nop
/* 3A57DC E00A628C 45000003 */  bc1f      .LE00A629C
/* 3A57E0 E00A6290 00000000 */   nop
/* 3A57E4 E00A6294 46001001 */  sub.s     $f0, $f2, $f0
.LE00A6298:
/* 3A57E8 E00A6298 E4A00020 */  swc1      $f0, 0x20($a1)
.LE00A629C:
/* 3A57EC E00A629C C4A00024 */  lwc1      $f0, 0x24($a1)
/* 3A57F0 E00A62A0 C4A20034 */  lwc1      $f2, 0x34($a1)
/* 3A57F4 E00A62A4 46020080 */  add.s     $f2, $f0, $f2
/* 3A57F8 E00A62A8 44800000 */  mtc1      $zero, $f0
/* 3A57FC E00A62AC 00000000 */  nop
/* 3A5800 E00A62B0 4600103C */  c.lt.s    $f2, $f0
/* 3A5804 E00A62B4 00000000 */  nop
/* 3A5808 E00A62B8 45000005 */  bc1f      .LE00A62D0
/* 3A580C E00A62BC E4A20024 */   swc1     $f2, 0x24($a1)
/* 3A5810 E00A62C0 3C014300 */  lui       $at, 0x4300
/* 3A5814 E00A62C4 44810000 */  mtc1      $at, $f0
/* 3A5818 E00A62C8 080298BC */  j         .LE00A62F0
/* 3A581C E00A62CC 46001000 */   add.s    $f0, $f2, $f0
.LE00A62D0:
/* 3A5820 E00A62D0 3C014300 */  lui       $at, 0x4300
/* 3A5824 E00A62D4 44810000 */  mtc1      $at, $f0
/* 3A5828 E00A62D8 00000000 */  nop
/* 3A582C E00A62DC 4602003C */  c.lt.s    $f0, $f2
/* 3A5830 E00A62E0 00000000 */  nop
/* 3A5834 E00A62E4 45000003 */  bc1f      .LE00A62F4
/* 3A5838 E00A62E8 00000000 */   nop
/* 3A583C E00A62EC 46001001 */  sub.s     $f0, $f2, $f0
.LE00A62F0:
/* 3A5840 E00A62F0 E4A00024 */  swc1      $f0, 0x24($a1)
.LE00A62F4:
/* 3A5844 E00A62F4 C4A00028 */  lwc1      $f0, 0x28($a1)
/* 3A5848 E00A62F8 C4A20038 */  lwc1      $f2, 0x38($a1)
/* 3A584C E00A62FC 46020080 */  add.s     $f2, $f0, $f2
/* 3A5850 E00A6300 44800000 */  mtc1      $zero, $f0
/* 3A5854 E00A6304 00000000 */  nop
/* 3A5858 E00A6308 4600103C */  c.lt.s    $f2, $f0
/* 3A585C E00A630C 00000000 */  nop
/* 3A5860 E00A6310 45000005 */  bc1f      .LE00A6328
/* 3A5864 E00A6314 E4A20028 */   swc1     $f2, 0x28($a1)
/* 3A5868 E00A6318 3C014300 */  lui       $at, 0x4300
/* 3A586C E00A631C 44810000 */  mtc1      $at, $f0
/* 3A5870 E00A6320 080298D2 */  j         .LE00A6348
/* 3A5874 E00A6324 46001000 */   add.s    $f0, $f2, $f0
.LE00A6328:
/* 3A5878 E00A6328 3C014300 */  lui       $at, 0x4300
/* 3A587C E00A632C 44810000 */  mtc1      $at, $f0
/* 3A5880 E00A6330 00000000 */  nop
/* 3A5884 E00A6334 4602003C */  c.lt.s    $f0, $f2
/* 3A5888 E00A6338 00000000 */  nop
/* 3A588C E00A633C 45000003 */  bc1f      .LE00A634C
/* 3A5890 E00A6340 00000000 */   nop
/* 3A5894 E00A6344 46001001 */  sub.s     $f0, $f2, $f0
.LE00A6348:
/* 3A5898 E00A6348 E4A00028 */  swc1      $f0, 0x28($a1)
.LE00A634C:
/* 3A589C E00A634C 8FBF0010 */  lw        $ra, 0x10($sp)
/* 3A58A0 E00A6350 03E00008 */  jr        $ra
/* 3A58A4 E00A6354 27BD0018 */   addiu    $sp, $sp, 0x18
