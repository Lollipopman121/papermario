.include "macro.inc"

.section .data

dlabel D_80240F80_BC8DE0
.word 0x00000024, 0x00000002, 0xF8405F48, 0x00000001, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000024, 0x00000002, 0xF8405F49, 0x00000001, 0x00000002, 0x00000000, 0x00000001, 0x00000000

dlabel D_80240FC0_BC8E20
.word 0x00000043, 0x00000002, DisablePlayerInput, 0x00000001, 0x00000024, 0x00000002, 0xF8405F47, 0x00000001, 0x00000044, 0x00000001, 0x802441AC, 0x00000043, 0x00000002, DisablePlayerInput, 0x00000000, 0x00000013, 0x00000000, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000008, MakeEntity, 0x802EAE0C, 0x000000B4, 0x00000000, 0xFFFFFF51, 0xFFFFFFF6, 0x00000000, 0x80000000, 0x00000043, 0x00000002, AssignChestFlag, 0xF8405F47, 0x00000043, 0x00000002, AssignScript, D_80240FC0_BC8E20, 0x00000043, 0x00000007, MakeItemEntity, 0x0000016A, 0x00000000, 0xFFFFFC18, 0x00000000, 0x00000001, 0x00000000, 0x00000043, 0x00000001, func_80240000_BC7E60, 0x00000024, 0x00000002, 0xFD050F80, 0xFE363C80, 0x0000000A, 0x00000002, 0xF8405F48, 0x00000000, 0x00000043, 0x00000007, MakeEntity, 0x802BCE84, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x80000000, 0x00000043, 0x00000002, AssignScript, D_80240F80_BC8DE0, 0x00000013, 0x00000000, 0x00000043, 0x00000008, MakeEntity, 0x802EAED4, 0xFFFFFFC4, 0x00000000, 0xFFFFFF42, 0x00000000, 0x000000A3, 0x80000000, 0x00000043, 0x00000002, AssignCrateFlag, 0xF8405F4A, 0x00000043, 0x00000008, MakeEntity, 0x802EAED4, 0xFFFFFFC4, 0x0000001E, 0xFFFFFF42, 0x00000000, 0xFFFFFFFF, 0x80000000, 0x00000043, 0x00000008, MakeEntity, 0x802EAED4, 0xFFFFFFEC, 0x00000000, 0xFFFFFF42, 0x00000000, 0xFFFFFFFF, 0x80000000, 0x00000043, 0x00000008, MakeEntity, 0x802EAB04, 0xFFFFFF51, 0x00000000, 0xFFFFFFB5, 0x00000000, 0x00000000, 0x80000000, 0x00000043, 0x00000002, AssignPanelFlag, 0xF8405F4C, 0x00000002, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000
