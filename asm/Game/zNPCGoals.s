.include "macros.inc"

.section .text, "ax"  # 0x800D4A14 - 0x800D5114

.global zNPCGoals_RegisterTypes__FP8xFactory
zNPCGoals_RegisterTypes__FP8xFactory:
/* 800D50BC 000D1EBC  94 21 F7 90 */	stwu r1, -0x870(r1)
/* 800D50C0 000D1EC0  7C 08 02 A6 */	mflr r0
/* 800D50C4 000D1EC4  3C 80 80 26 */	lis r4, l_6848__esc__2_857@ha
/* 800D50C8 000D1EC8  90 01 08 74 */	stw r0, 0x874(r1)
/* 800D50CC 000D1ECC  38 84 68 48 */	addi r4, r4, l_6848__esc__2_857@l
/* 800D50D0 000D1ED0  38 00 01 0C */	li r0, 0x10c
/* 800D50D4 000D1ED4  38 C1 00 04 */	addi r6, r1, 4
/* 800D50D8 000D1ED8  38 A4 FF FC */	addi r5, r4, -4
/* 800D50DC 000D1EDC  7C 09 03 A6 */	mtctr r0
lbl_800D50E0:
/* 800D50E0 000D1EE0  80 85 00 04 */	lwz r4, 4(r5)
/* 800D50E4 000D1EE4  84 05 00 08 */	lwzu r0, 8(r5)
/* 800D50E8 000D1EE8  90 86 00 04 */	stw r4, 4(r6)
/* 800D50EC 000D1EEC  94 06 00 08 */	stwu r0, 8(r6)
/* 800D50F0 000D1EF0  42 00 FF F0 */	bdnz lbl_800D50E0
/* 800D50F4 000D1EF4  80 05 00 04 */	lwz r0, 4(r5)
/* 800D50F8 000D1EF8  38 81 00 08 */	addi r4, r1, 8
/* 800D50FC 000D1EFC  90 06 00 04 */	stw r0, 4(r6)
/* 800D5100 000D1F00  48 03 A2 A9 */	bl RegItemType__8xFactoryFP12XGOFTypeInfo
/* 800D5104 000D1F04  80 01 08 74 */	lwz r0, 0x874(r1)
/* 800D5108 000D1F08  7C 08 03 A6 */	mtlr r0
/* 800D510C 000D1F0C  38 21 08 70 */	addi r1, r1, 0x870
/* 800D5110 000D1F10  4E 80 00 20 */	blr 
.section .rodata
l_6848__esc__2_857:
	.4byte 0x4E474E30
	.4byte GOALCreate_Standard__FiP10RyzMemGrowPv /* 0x800D5480 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474E31
	.4byte GOALCreate_Standard__FiP10RyzMemGrowPv /* 0x800D5480 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474E32
	.4byte GOALCreate_Standard__FiP10RyzMemGrowPv /* 0x800D5480 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474E33
	.4byte GOALCreate_Standard__FiP10RyzMemGrowPv /* 0x800D5480 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474E34
	.4byte GOALCreate_Standard__FiP10RyzMemGrowPv /* 0x800D5480 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474E35
	.4byte GOALCreate_Standard__FiP10RyzMemGrowPv /* 0x800D5480 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474E36
	.4byte GOALCreate_Standard__FiP10RyzMemGrowPv /* 0x800D5480 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474E37
	.4byte GOALCreate_Standard__FiP10RyzMemGrowPv /* 0x800D5480 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475830
	.4byte GOALCreate_Standard__FiP10RyzMemGrowPv /* 0x800D5480 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475831
	.4byte GOALCreate_Standard__FiP10RyzMemGrowPv /* 0x800D5480 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475832
	.4byte GOALCreate_Standard__FiP10RyzMemGrowPv /* 0x800D5480 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475330
	.4byte GOALCreate_Script__FiP10RyzMemGrowPv /* 0x801245D4 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475331
	.4byte GOALCreate_Script__FiP10RyzMemGrowPv /* 0x801245D4 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475332
	.4byte GOALCreate_Script__FiP10RyzMemGrowPv /* 0x801245D4 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475333
	.4byte GOALCreate_Script__FiP10RyzMemGrowPv /* 0x801245D4 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475334
	.4byte GOALCreate_Script__FiP10RyzMemGrowPv /* 0x801245D4 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475335
	.4byte GOALCreate_Script__FiP10RyzMemGrowPv /* 0x801245D4 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475336
	.4byte GOALCreate_Script__FiP10RyzMemGrowPv /* 0x801245D4 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475337
	.4byte GOALCreate_Script__FiP10RyzMemGrowPv /* 0x801245D4 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475338
	.4byte GOALCreate_Villager__FiP10RyzMemGrowPv /* 0x801365C8 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475339
	.4byte GOALCreate_Villager__FiP10RyzMemGrowPv /* 0x801365C8 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47533A
	.4byte GOALCreate_Villager__FiP10RyzMemGrowPv /* 0x801365C8 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47533B
	.4byte GOALCreate_Villager__FiP10RyzMemGrowPv /* 0x801365C8 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47533C
	.4byte GOALCreate_Villager__FiP10RyzMemGrowPv /* 0x801365C8 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47533D
	.4byte GOALCreate_Villager__FiP10RyzMemGrowPv /* 0x801365C8 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47533E
	.4byte GOALCreate_Villager__FiP10RyzMemGrowPv /* 0x801365C8 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47533F
	.4byte GOALCreate_Villager__FiP10RyzMemGrowPv /* 0x801365C8 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475340
	.4byte GOALCreate_Villager__FiP10RyzMemGrowPv /* 0x801365C8 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475341
	.4byte GOALCreate_Villager__FiP10RyzMemGrowPv /* 0x801365C8 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475342
	.4byte GOALCreate_Villager__FiP10RyzMemGrowPv /* 0x801365C8 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475230
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475231
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475232
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475233
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475234
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475235
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475236
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475237
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475238
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475239
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47523A
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47523B
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47523C
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47523D
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47523E
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47523F
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475240
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475241
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475242
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475257
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475258
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475259
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47525A
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47525B
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47525C
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475243
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475244
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475245
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475246
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475247
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475248
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475249
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47524A
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47524B
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47524C
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47524D
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47524E
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47524F
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475250
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475251
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475252
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475253
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475254
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475255
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475256
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47525D
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47525E
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47525F
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475260
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475261
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475262
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475263
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475264
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475265
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475266
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475267
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475268
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475269
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47526A
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47526B
	.4byte GOALCreate_Robotic__FiP10RyzMemGrowPv /* 0x800D92AC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475430
	.4byte GOALCreate_Tiki__FiP10RyzMemGrowPv /* 0x800ECBFC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475431
	.4byte GOALCreate_Tiki__FiP10RyzMemGrowPv /* 0x800ECBFC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475432
	.4byte GOALCreate_Tiki__FiP10RyzMemGrowPv /* 0x800ECBFC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475433
	.4byte GOALCreate_Tiki__FiP10RyzMemGrowPv /* 0x800ECBFC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475434
	.4byte GOALCreate_Tiki__FiP10RyzMemGrowPv /* 0x800ECBFC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E475435
	.4byte GOALCreate_Tiki__FiP10RyzMemGrowPv /* 0x800ECBFC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474430
	.4byte GOALCreate_Duplotron__FiP10RyzMemGrowPv /* 0x80129FB4 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474431
	.4byte GOALCreate_Duplotron__FiP10RyzMemGrowPv /* 0x80129FB4 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474A30
	.4byte GOALCreate_Ambient__FiP10RyzMemGrowPv /* 0x8018FDC4 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474A31
	.4byte GOALCreate_Ambient__FiP10RyzMemGrowPv /* 0x8018FDC4 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474A32
	.4byte GOALCreate_Ambient__FiP10RyzMemGrowPv /* 0x8018FDC4 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474D30
	.4byte GOALCreate_SubBoss__FiP10RyzMemGrowPv /* 0x80138CA0 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474D31
	.4byte GOALCreate_SubBoss__FiP10RyzMemGrowPv /* 0x80138CA0 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474D32
	.4byte GOALCreate_SubBoss__FiP10RyzMemGrowPv /* 0x80138CA0 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474D33
	.4byte GOALCreate_SubBoss__FiP10RyzMemGrowPv /* 0x80138CA0 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474D34
	.4byte GOALCreate_SubBoss__FiP10RyzMemGrowPv /* 0x80138CA0 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474D35
	.4byte GOALCreate_SubBoss__FiP10RyzMemGrowPv /* 0x80138CA0 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474D36
	.4byte GOALCreate_SubBoss__FiP10RyzMemGrowPv /* 0x80138CA0 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474D37
	.4byte GOALCreate_SubBoss__FiP10RyzMemGrowPv /* 0x80138CA0 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474D38
	.4byte GOALCreate_SubBoss__FiP10RyzMemGrowPv /* 0x80138CA0 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474D39
	.4byte GOALCreate_SubBoss__FiP10RyzMemGrowPv /* 0x80138CA0 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474D3A
	.4byte GOALCreate_SubBoss__FiP10RyzMemGrowPv /* 0x80138CA0 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474D3B
	.4byte GOALCreate_SubBoss__FiP10RyzMemGrowPv /* 0x80138CA0 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474D3C
	.4byte GOALCreate_SubBoss__FiP10RyzMemGrowPv /* 0x80138CA0 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474D3D
	.4byte create__19zNPCGoalDutchmanNilFiP10RyzMemGrowPv /* 0x80178450 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474D3E
	.4byte create__24zNPCGoalDutchmanInitiateFiP10RyzMemGrowPv /* 0x801784C0 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474D3F
	.4byte create__20zNPCGoalDutchmanIdleFiP10RyzMemGrowPv /* 0x801787D8 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474D40
	.4byte create__25zNPCGoalDutchmanDisappearFiP10RyzMemGrowPv /* 0x80178968 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474D41
	.4byte create__24zNPCGoalDutchmanTeleportFiP10RyzMemGrowPv /* 0x80178AC4 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474D42
	.4byte create__24zNPCGoalDutchmanReappearFiP10RyzMemGrowPv /* 0x80178D10 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474D43
	.4byte create__20zNPCGoalDutchmanBeamFiP10RyzMemGrowPv /* 0x80178F10 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474D44
	.4byte create__21zNPCGoalDutchmanFlameFiP10RyzMemGrowPv /* 0x80179D9C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474D45
	.4byte create__25zNPCGoalDutchmanPostFlameFiP10RyzMemGrowPv /* 0x8017A5D8 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474D46
	.4byte create__22zNPCGoalDutchmanCaughtFiP10RyzMemGrowPv /* 0x8017A90C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474D47
	.4byte create__22zNPCGoalDutchmanDamageFiP10RyzMemGrowPv /* 0x8017AB64 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474D48
	.4byte create__21zNPCGoalDutchmanDeathFiP10RyzMemGrowPv /* 0x8017AE28 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474230
	.4byte GOALCreate_Boss__FiP10RyzMemGrowPv /* 0x8014EC7C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474231
	.4byte GOALCreate_Boss__FiP10RyzMemGrowPv /* 0x8014EC7C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474232
	.4byte GOALCreate_Boss__FiP10RyzMemGrowPv /* 0x8014EC7C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474233
	.4byte GOALCreate_Boss__FiP10RyzMemGrowPv /* 0x8014EC7C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474234
	.4byte GOALCreate_Boss__FiP10RyzMemGrowPv /* 0x8014EC7C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474235
	.4byte GOALCreate_Boss__FiP10RyzMemGrowPv /* 0x8014EC7C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474236
	.4byte GOALCreate_Boss__FiP10RyzMemGrowPv /* 0x8014EC7C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474237
	.4byte GOALCreate_Boss__FiP10RyzMemGrowPv /* 0x8014EC7C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474238
	.4byte GOALCreate_Boss__FiP10RyzMemGrowPv /* 0x8014EC7C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474239
	.4byte GOALCreate_Boss__FiP10RyzMemGrowPv /* 0x8014EC7C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47423A
	.4byte GOALCreate_Boss__FiP10RyzMemGrowPv /* 0x8014EC7C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47423B
	.4byte GOALCreate_Boss__FiP10RyzMemGrowPv /* 0x8014EC7C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47425A
	.4byte GOALCreate_Boss__FiP10RyzMemGrowPv /* 0x8014EC7C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47425B
	.4byte GOALCreate_Boss__FiP10RyzMemGrowPv /* 0x8014EC7C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47425C
	.4byte GOALCreate_Boss__FiP10RyzMemGrowPv /* 0x8014EC7C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47425D
	.4byte GOALCreate_Boss__FiP10RyzMemGrowPv /* 0x8014EC7C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47425E
	.4byte GOALCreate_Boss__FiP10RyzMemGrowPv /* 0x8014EC7C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47425F
	.4byte GOALCreate_Boss__FiP10RyzMemGrowPv /* 0x8014EC7C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474260
	.4byte GOALCreate_Boss__FiP10RyzMemGrowPv /* 0x8014EC7C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474261
	.4byte GOALCreate_Boss__FiP10RyzMemGrowPv /* 0x8014EC7C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474262
	.4byte GOALCreate_Boss__FiP10RyzMemGrowPv /* 0x8014EC7C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474263
	.4byte GOALCreate_Boss__FiP10RyzMemGrowPv /* 0x8014EC7C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47423C
	.4byte GOALCreate_Boss__FiP10RyzMemGrowPv /* 0x8014EC7C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47423D
	.4byte GOALCreate_Boss__FiP10RyzMemGrowPv /* 0x8014EC7C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47423E
	.4byte GOALCreate_Boss__FiP10RyzMemGrowPv /* 0x8014EC7C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47423F
	.4byte GOALCreate_Boss__FiP10RyzMemGrowPv /* 0x8014EC7C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474240
	.4byte GOALCreate_Boss__FiP10RyzMemGrowPv /* 0x8014EC7C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474241
	.4byte create__20zNPCGoalBossSB2IntroFiP10RyzMemGrowPv /* 0x8015DCF8 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474242
	.4byte create__19zNPCGoalBossSB2IdleFiP10RyzMemGrowPv /* 0x8015DE8C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474243
	.4byte create__20zNPCGoalBossSB2TauntFiP10RyzMemGrowPv /* 0x8015E024 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474244
	.4byte create__20zNPCGoalBossSB2DizzyFiP10RyzMemGrowPv /* 0x8015E1A8 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474245
	.4byte create__18zNPCGoalBossSB2HitFiP10RyzMemGrowPv /* 0x8015E3C0 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474246
	.4byte create__19zNPCGoalBossSB2HuntFiP10RyzMemGrowPv /* 0x8015E60C */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474247
	.4byte create__20zNPCGoalBossSB2SwipeFiP10RyzMemGrowPv /* 0x8015EA38 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474248
	.4byte create__19zNPCGoalBossSB2ChopFiP10RyzMemGrowPv /* 0x8015EE00 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474249
	.4byte create__21zNPCGoalBossSB2KarateFiP10RyzMemGrowPv /* 0x8015F284 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47424A
	.4byte create__20zNPCGoalBossSB2DeathFiP10RyzMemGrowPv /* 0x8015F6D4 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47424B
	.4byte create__21zNPCGoalBPlanktonIdleFiP10RyzMemGrowPv /* 0x8016DB24 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47424C
	.4byte create__23zNPCGoalBPlanktonAttackFiP10RyzMemGrowPv /* 0x8016DF38 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47424D
	.4byte create__23zNPCGoalBPlanktonAmbushFiP10RyzMemGrowPv /* 0x8016E0F8 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47424E
	.4byte create__22zNPCGoalBPlanktonFlankFiP10RyzMemGrowPv /* 0x8016E340 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E47424F
	.4byte create__22zNPCGoalBPlanktonEvadeFiP10RyzMemGrowPv /* 0x8016E594 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474250
	.4byte create__21zNPCGoalBPlanktonHuntFiP10RyzMemGrowPv /* 0x8016EAAC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474251
	.4byte create__22zNPCGoalBPlanktonTauntFiP10RyzMemGrowPv /* 0x8016ED58 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474252
	.4byte create__21zNPCGoalBPlanktonMoveFiP10RyzMemGrowPv /* 0x8016EE10 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474253
	.4byte create__21zNPCGoalBPlanktonStunFiP10RyzMemGrowPv /* 0x8016EEC8 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474254
	.4byte create__21zNPCGoalBPlanktonFallFiP10RyzMemGrowPv /* 0x8016F0FC */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474255
	.4byte create__22zNPCGoalBPlanktonDizzyFiP10RyzMemGrowPv /* 0x8016F2C0 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474256
	.4byte create__21zNPCGoalBPlanktonBeamFiP10RyzMemGrowPv /* 0x8016F4D8 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474257
	.4byte create__21zNPCGoalBPlanktonWallFiP10RyzMemGrowPv /* 0x8016F990 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474258
	.4byte create__23zNPCGoalBPlanktonMissleFiP10RyzMemGrowPv /* 0x8016FA48 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x4E474259
	.4byte create__21zNPCGoalBPlanktonBombFiP10RyzMemGrowPv /* 0x8016FB00 */
	.4byte GOALDestroy_Goal__FP12xFactoryInst /* 0x800D56F8 */
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
