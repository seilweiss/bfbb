.include "macros.inc"

.section .text  # 0x800BD1B0 - 0x800BE470

var_text_ActivePad__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BD1B0 000B9FB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BD1B4 000B9FB4  7C 08 02 A6 */	mflr r0
/* 800BD1B8 000B9FB8  3C 60 80 3C */	lis r3, globals@ha
/* 800BD1BC 000B9FBC  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BD1C0 000B9FC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BD1C4 000B9FC4  38 63 05 58 */	addi r3, r3, globals@l
/* 800BD1C8 000B9FC8  3C C0 80 30 */	lis r6, l_8640_buffer_esc__6_775@ha
/* 800BD1CC 000B9FCC  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BD1D0 000B9FD0  88 A3 06 D1 */	lbz r5, 0x6d1(r3)
/* 800BD1D4 000B9FD4  38 66 86 40 */	addi r3, r6, l_8640_buffer_esc__6_775@l
/* 800BD1D8 000B9FD8  38 A5 00 01 */	addi r5, r5, 1
/* 800BD1DC 000B9FDC  4C C6 31 82 */	crclr 6
/* 800BD1E0 000B9FE0  48 12 6D 55 */	bl sprintf
/* 800BD1E4 000B9FE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BD1E8 000B9FE8  3C 60 80 30 */	lis r3, l_8640_buffer_esc__6_775@ha
/* 800BD1EC 000B9FEC  38 63 86 40 */	addi r3, r3, l_8640_buffer_esc__6_775@l
/* 800BD1F0 000B9FF0  7C 08 03 A6 */	mtlr r0
/* 800BD1F4 000B9FF4  38 21 00 10 */	addi r1, r1, 0x10
/* 800BD1F8 000B9FF8  4E 80 00 20 */	blr 
.global var_text_BadCard__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_BadCard__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BD1FC 000B9FFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BD200 000BA000  7C 08 02 A6 */	mflr r0
/* 800BD204 000BA004  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BD208 000BA008  4B FE 99 91 */	bl zMenuGetBadCard__Fv
/* 800BD20C 000BA00C  2C 03 00 00 */	cmpwi r3, 0
/* 800BD210 000BA010  40 81 00 2C */	ble lbl_800BD23C
/* 800BD214 000BA014  3C A0 80 30 */	lis r5, l_864c_buffer_esc__6_780@ha
/* 800BD218 000BA018  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BD21C 000BA01C  38 05 86 4C */	addi r0, r5, l_864c_buffer_esc__6_780@l
/* 800BD220 000BA020  38 A3 00 40 */	addi r5, r3, 0x40
/* 800BD224 000BA024  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BD228 000BA028  7C 03 03 78 */	mr r3, r0
/* 800BD22C 000BA02C  38 84 00 03 */	addi r4, r4, 3
/* 800BD230 000BA030  4C C6 31 82 */	crclr 6
/* 800BD234 000BA034  48 12 6D 01 */	bl sprintf
/* 800BD238 000BA038  48 00 00 1C */	b lbl_800BD254
lbl_800BD23C:
/* 800BD23C 000BA03C  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BD240 000BA040  3C 60 80 30 */	lis r3, l_864c_buffer_esc__6_780@ha
/* 800BD244 000BA044  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BD248 000BA048  38 63 86 4C */	addi r3, r3, l_864c_buffer_esc__6_780@l
/* 800BD24C 000BA04C  38 84 00 06 */	addi r4, r4, 6
/* 800BD250 000BA050  48 12 A4 B1 */	bl strcpy
lbl_800BD254:
/* 800BD254 000BA054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BD258 000BA058  3C 60 80 30 */	lis r3, l_864c_buffer_esc__6_780@ha
/* 800BD25C 000BA05C  38 63 86 4C */	addi r3, r3, l_864c_buffer_esc__6_780@l
/* 800BD260 000BA060  7C 08 03 A6 */	mtlr r0
/* 800BD264 000BA064  38 21 00 10 */	addi r1, r1, 0x10
/* 800BD268 000BA068  4E 80 00 20 */	blr 
.global var_text_BadCardAvailable__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_BadCardAvailable__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BD26C 000BA06C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BD270 000BA070  7C 08 02 A6 */	mflr r0
/* 800BD274 000BA074  3C 60 80 30 */	lis r3, l_8658_buffer_esc__6_788@ha
/* 800BD278 000BA078  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BD27C 000BA07C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BD280 000BA080  38 63 86 58 */	addi r3, r3, l_8658_buffer_esc__6_788@l
/* 800BD284 000BA084  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BD288 000BA088  80 AD 91 60 */	lwz r5, bad_card_available@sda21(r13)
/* 800BD28C 000BA08C  4C C6 31 82 */	crclr 6
/* 800BD290 000BA090  48 12 6C A5 */	bl sprintf
/* 800BD294 000BA094  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BD298 000BA098  3C 60 80 30 */	lis r3, l_8658_buffer_esc__6_788@ha
/* 800BD29C 000BA09C  38 63 86 58 */	addi r3, r3, l_8658_buffer_esc__6_788@l
/* 800BD2A0 000BA0A0  7C 08 03 A6 */	mtlr r0
/* 800BD2A4 000BA0A4  38 21 00 10 */	addi r1, r1, 0x10
/* 800BD2A8 000BA0A8  4E 80 00 20 */	blr 
.global var_text_BadCardNeeded__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_BadCardNeeded__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BD2AC 000BA0AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BD2B0 000BA0B0  7C 08 02 A6 */	mflr r0
/* 800BD2B4 000BA0B4  3C 60 80 30 */	lis r3, l_8664_buffer_esc__6_793@ha
/* 800BD2B8 000BA0B8  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BD2BC 000BA0BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BD2C0 000BA0C0  38 63 86 64 */	addi r3, r3, l_8664_buffer_esc__6_793@l
/* 800BD2C4 000BA0C4  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BD2C8 000BA0C8  80 AD 91 64 */	lwz r5, bad_card_needed@sda21(r13)
/* 800BD2CC 000BA0CC  4C C6 31 82 */	crclr 6
/* 800BD2D0 000BA0D0  48 12 6C 65 */	bl sprintf
/* 800BD2D4 000BA0D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BD2D8 000BA0D8  3C 60 80 30 */	lis r3, l_8664_buffer_esc__6_793@ha
/* 800BD2DC 000BA0DC  38 63 86 64 */	addi r3, r3, l_8664_buffer_esc__6_793@l
/* 800BD2E0 000BA0E0  7C 08 03 A6 */	mtlr r0
/* 800BD2E4 000BA0E4  38 21 00 10 */	addi r1, r1, 0x10
/* 800BD2E8 000BA0E8  4E 80 00 20 */	blr 
.global var_text_CorruptFileName__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_CorruptFileName__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BD2EC 000BA0EC  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 800BD2F0 000BA0F0  7C 08 02 A6 */	mflr r0
/* 800BD2F4 000BA0F4  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 800BD2F8 000BA0F8  38 61 00 08 */	addi r3, r1, 8
/* 800BD2FC 000BA0FC  BF 61 00 CC */	stmw r27, 0xcc(r1)
/* 800BD300 000BA100  4B FE 95 29 */	bl zMenuGetCorruptFiles__FPA64_c
/* 800BD304 000BA104  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BD308 000BA108  3C A0 80 30 */	lis r5, l_8670_buffer_esc__6_798@ha
/* 800BD30C 000BA10C  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BD310 000BA110  7C 7D 1B 78 */	mr r29, r3
/* 800BD314 000BA114  38 65 86 70 */	addi r3, r5, l_8670_buffer_esc__6_798@l
/* 800BD318 000BA118  38 84 00 0D */	addi r4, r4, 0xd
/* 800BD31C 000BA11C  48 12 A3 E5 */	bl strcpy
/* 800BD320 000BA120  3C 80 80 30 */	lis r4, l_8670_buffer_esc__6_798@ha
/* 800BD324 000BA124  3C 60 80 26 */	lis r3, l_fcb0__esc__2_stringBase0@ha
/* 800BD328 000BA128  3B C4 86 70 */	addi r30, r4, l_8670_buffer_esc__6_798@l
/* 800BD32C 000BA12C  3B 81 00 08 */	addi r28, r1, 8
/* 800BD330 000BA130  3B E3 FC B0 */	addi r31, r3, l_fcb0__esc__2_stringBase0@l
/* 800BD334 000BA134  3B 60 00 00 */	li r27, 0
/* 800BD338 000BA138  48 00 00 24 */	b lbl_800BD35C
lbl_800BD33C:
/* 800BD33C 000BA13C  7F C3 F3 78 */	mr r3, r30
/* 800BD340 000BA140  7F 84 E3 78 */	mr r4, r28
/* 800BD344 000BA144  48 12 A3 4D */	bl strcat
/* 800BD348 000BA148  7F C3 F3 78 */	mr r3, r30
/* 800BD34C 000BA14C  38 9F 00 0E */	addi r4, r31, 0xe
/* 800BD350 000BA150  48 12 A3 41 */	bl strcat
/* 800BD354 000BA154  3B 9C 00 40 */	addi r28, r28, 0x40
/* 800BD358 000BA158  3B 7B 00 01 */	addi r27, r27, 1
lbl_800BD35C:
/* 800BD35C 000BA15C  7C 1B E8 00 */	cmpw r27, r29
/* 800BD360 000BA160  41 80 FF DC */	blt lbl_800BD33C
/* 800BD364 000BA164  BB 61 00 CC */	lmw r27, 0xcc(r1)
/* 800BD368 000BA168  3C 60 80 30 */	lis r3, l_8670_buffer_esc__6_798@ha
/* 800BD36C 000BA16C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 800BD370 000BA170  38 63 86 70 */	addi r3, r3, l_8670_buffer_esc__6_798@l
/* 800BD374 000BA174  7C 08 03 A6 */	mtlr r0
/* 800BD378 000BA178  38 21 00 E0 */	addi r1, r1, 0xe0
/* 800BD37C 000BA17C  4E 80 00 20 */	blr 
.global var_text_CurrentArea__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_CurrentArea__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BD380 000BA180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BD384 000BA184  7C 08 02 A6 */	mflr r0
/* 800BD388 000BA188  3C 60 80 3C */	lis r3, globals@ha
/* 800BD38C 000BA18C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BD390 000BA190  38 63 05 58 */	addi r3, r3, globals@l
/* 800BD394 000BA194  80 63 1F C0 */	lwz r3, 0x1fc0(r3)
/* 800BD398 000BA198  80 63 00 00 */	lwz r3, 0(r3)
/* 800BD39C 000BA19C  4B FF 7B 59 */	bl zSceneGetAreaname__FUi
/* 800BD3A0 000BA1A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BD3A4 000BA1A4  7C 08 03 A6 */	mtlr r0
/* 800BD3A8 000BA1A8  38 21 00 10 */	addi r1, r1, 0x10
/* 800BD3AC 000BA1AC  4E 80 00 20 */	blr 
.global var_text_CurrentDate__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_CurrentDate__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BD3B0 000BA1B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BD3B4 000BA1B4  7C 08 02 A6 */	mflr r0
/* 800BD3B8 000BA1B8  3C 60 80 30 */	lis r3, l_86f0_buffer_esc__6_813@ha
/* 800BD3BC 000BA1BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BD3C0 000BA1C0  38 63 86 F0 */	addi r3, r3, l_86f0_buffer_esc__6_813@l
/* 800BD3C4 000BA1C4  48 01 71 E1 */	bl iGetCurrFormattedDate__FPc
/* 800BD3C8 000BA1C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BD3CC 000BA1CC  3C 60 80 30 */	lis r3, l_86f0_buffer_esc__6_813@ha
/* 800BD3D0 000BA1D0  38 63 86 F0 */	addi r3, r3, l_86f0_buffer_esc__6_813@l
/* 800BD3D4 000BA1D4  7C 08 03 A6 */	mtlr r0
/* 800BD3D8 000BA1D8  38 21 00 10 */	addi r1, r1, 0x10
/* 800BD3DC 000BA1DC  4E 80 00 20 */	blr 
.global var_text_CurrentLevelCollectable__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_CurrentLevelCollectable__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BD3E0 000BA1E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BD3E4 000BA1E4  7C 08 02 A6 */	mflr r0
/* 800BD3E8 000BA1E8  3C 60 80 3C */	lis r3, globals@ha
/* 800BD3EC 000BA1EC  3C A0 80 30 */	lis r5, l_8710_buffer_esc__6_818@ha
/* 800BD3F0 000BA1F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BD3F4 000BA1F4  38 83 05 58 */	addi r4, r3, globals@l
/* 800BD3F8 000BA1F8  38 65 87 10 */	addi r3, r5, l_8710_buffer_esc__6_818@l
/* 800BD3FC 000BA1FC  3C C0 80 26 */	lis r6, l_fcb0__esc__2_stringBase0@ha
/* 800BD400 000BA200  80 A4 1B C0 */	lwz r5, 0x1bc0(r4)
/* 800BD404 000BA204  38 86 FC B0 */	addi r4, r6, l_fcb0__esc__2_stringBase0@l
/* 800BD408 000BA208  4C C6 31 82 */	crclr 6
/* 800BD40C 000BA20C  48 12 6B 29 */	bl sprintf
/* 800BD410 000BA210  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BD414 000BA214  3C 60 80 30 */	lis r3, l_8710_buffer_esc__6_818@ha
/* 800BD418 000BA218  38 63 87 10 */	addi r3, r3, l_8710_buffer_esc__6_818@l
/* 800BD41C 000BA21C  7C 08 03 A6 */	mtlr r0
/* 800BD420 000BA220  38 21 00 10 */	addi r1, r1, 0x10
/* 800BD424 000BA224  4E 80 00 20 */	blr 
.global var_text_CurrentLevelPatsSocks__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_CurrentLevelPatsSocks__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BD428 000BA228  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BD42C 000BA22C  7C 08 02 A6 */	mflr r0
/* 800BD430 000BA230  3C 60 80 3C */	lis r3, globals@ha
/* 800BD434 000BA234  3C A0 80 30 */	lis r5, l_871c_buffer_esc__6_823@ha
/* 800BD438 000BA238  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BD43C 000BA23C  38 83 05 58 */	addi r4, r3, globals@l
/* 800BD440 000BA240  38 65 87 1C */	addi r3, r5, l_871c_buffer_esc__6_823@l
/* 800BD444 000BA244  3C C0 80 26 */	lis r6, l_fcb0__esc__2_stringBase0@ha
/* 800BD448 000BA248  80 A4 1B 80 */	lwz r5, 0x1b80(r4)
/* 800BD44C 000BA24C  38 86 FC B0 */	addi r4, r6, l_fcb0__esc__2_stringBase0@l
/* 800BD450 000BA250  4C C6 31 82 */	crclr 6
/* 800BD454 000BA254  48 12 6A E1 */	bl sprintf
/* 800BD458 000BA258  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BD45C 000BA25C  3C 60 80 30 */	lis r3, l_871c_buffer_esc__6_823@ha
/* 800BD460 000BA260  38 63 87 1C */	addi r3, r3, l_871c_buffer_esc__6_823@l
/* 800BD464 000BA264  7C 08 03 A6 */	mtlr r0
/* 800BD468 000BA268  38 21 00 10 */	addi r1, r1, 0x10
/* 800BD46C 000BA26C  4E 80 00 20 */	blr 
.global var_text_CurrentScene__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_CurrentScene__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BD470 000BA270  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BD474 000BA274  7C 08 02 A6 */	mflr r0
/* 800BD478 000BA278  3C 60 80 3C */	lis r3, globals@ha
/* 800BD47C 000BA27C  38 80 00 00 */	li r4, 0
/* 800BD480 000BA280  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BD484 000BA284  38 63 05 58 */	addi r3, r3, globals@l
/* 800BD488 000BA288  80 63 1F C0 */	lwz r3, 0x1fc0(r3)
/* 800BD48C 000BA28C  80 63 00 00 */	lwz r3, 0(r3)
/* 800BD490 000BA290  4B F9 08 05 */	bl xUtil_idtag2string__FUii
/* 800BD494 000BA294  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BD498 000BA298  3C C0 80 30 */	lis r6, l_8728_buffer_esc__6_828@ha
/* 800BD49C 000BA29C  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BD4A0 000BA2A0  7C 65 1B 78 */	mr r5, r3
/* 800BD4A4 000BA2A4  38 66 87 28 */	addi r3, r6, l_8728_buffer_esc__6_828@l
/* 800BD4A8 000BA2A8  38 84 00 10 */	addi r4, r4, 0x10
/* 800BD4AC 000BA2AC  4C C6 31 82 */	crclr 6
/* 800BD4B0 000BA2B0  48 12 6A 85 */	bl sprintf
/* 800BD4B4 000BA2B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BD4B8 000BA2B8  3C 60 80 30 */	lis r3, l_8728_buffer_esc__6_828@ha
/* 800BD4BC 000BA2BC  38 63 87 28 */	addi r3, r3, l_8728_buffer_esc__6_828@l
/* 800BD4C0 000BA2C0  7C 08 03 A6 */	mtlr r0
/* 800BD4C4 000BA2C4  38 21 00 10 */	addi r1, r1, 0x10
/* 800BD4C8 000BA2C8  4E 80 00 20 */	blr 
.global var_text_CurrentTime__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_CurrentTime__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BD4CC 000BA2CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BD4D0 000BA2D0  7C 08 02 A6 */	mflr r0
/* 800BD4D4 000BA2D4  3C 60 80 30 */	lis r3, l_8748_buffer_esc__6_833@ha
/* 800BD4D8 000BA2D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BD4DC 000BA2DC  38 63 87 48 */	addi r3, r3, l_8748_buffer_esc__6_833@l
/* 800BD4E0 000BA2E0  48 01 72 7D */	bl iGetCurrFormattedTime__FPc
/* 800BD4E4 000BA2E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BD4E8 000BA2E8  3C 60 80 30 */	lis r3, l_8748_buffer_esc__6_833@ha
/* 800BD4EC 000BA2EC  38 63 87 48 */	addi r3, r3, l_8748_buffer_esc__6_833@l
/* 800BD4F0 000BA2F0  7C 08 03 A6 */	mtlr r0
/* 800BD4F4 000BA2F4  38 21 00 10 */	addi r1, r1, 0x10
/* 800BD4F8 000BA2F8  4E 80 00 20 */	blr 

/* zVarGameSlotInfo__18@unnamed@zVar_cpp@FiPcUl */
zVarGameSlotInfo__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_FiPcUl:
/* 800BD4FC 000BA2FC  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 800BD500 000BA300  7C 08 02 A6 */	mflr r0
/* 800BD504 000BA304  3C A0 80 26 */	lis r5, l_f9e8__esc__2_449@ha
/* 800BD508 000BA308  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 800BD50C 000BA30C  38 A5 F9 E8 */	addi r5, r5, l_f9e8__esc__2_449@l
/* 800BD510 000BA310  BD C1 01 68 */	stmw r14, 0x168(r1)
/* 800BD514 000BA314  7C 7E 1B 78 */	mr r30, r3
/* 800BD518 000BA318  7C 9F 23 78 */	mr r31, r4
/* 800BD51C 000BA31C  38 65 01 C4 */	addi r3, r5, 0x1c4
/* 800BD520 000BA320  39 C0 00 20 */	li r14, 0x20
/* 800BD524 000BA324  38 81 00 64 */	addi r4, r1, 0x64
/* 800BD528 000BA328  80 05 01 68 */	lwz r0, 0x168(r5)
/* 800BD52C 000BA32C  81 E5 01 6C */	lwz r15, 0x16c(r5)
/* 800BD530 000BA330  82 05 01 70 */	lwz r16, 0x170(r5)
/* 800BD534 000BA334  82 25 01 74 */	lwz r17, 0x174(r5)
/* 800BD538 000BA338  82 45 01 78 */	lwz r18, 0x178(r5)
/* 800BD53C 000BA33C  82 65 01 7C */	lwz r19, 0x17c(r5)
/* 800BD540 000BA340  82 85 01 80 */	lwz r20, 0x180(r5)
/* 800BD544 000BA344  82 A5 01 84 */	lwz r21, 0x184(r5)
/* 800BD548 000BA348  82 C5 01 88 */	lwz r22, 0x188(r5)
/* 800BD54C 000BA34C  82 E5 01 8C */	lwz r23, 0x18c(r5)
/* 800BD550 000BA350  83 05 01 90 */	lwz r24, 0x190(r5)
/* 800BD554 000BA354  83 25 01 94 */	lwz r25, 0x194(r5)
/* 800BD558 000BA358  83 45 01 98 */	lwz r26, 0x198(r5)
/* 800BD55C 000BA35C  83 65 01 9C */	lwz r27, 0x19c(r5)
/* 800BD560 000BA360  83 85 01 A0 */	lwz r28, 0x1a0(r5)
/* 800BD564 000BA364  83 A5 01 A4 */	lwz r29, 0x1a4(r5)
/* 800BD568 000BA368  81 85 01 A8 */	lwz r12, 0x1a8(r5)
/* 800BD56C 000BA36C  81 65 01 AC */	lwz r11, 0x1ac(r5)
/* 800BD570 000BA370  81 45 01 B0 */	lwz r10, 0x1b0(r5)
/* 800BD574 000BA374  81 25 01 B4 */	lwz r9, 0x1b4(r5)
/* 800BD578 000BA378  81 05 01 B8 */	lwz r8, 0x1b8(r5)
/* 800BD57C 000BA37C  80 E5 01 BC */	lwz r7, 0x1bc(r5)
/* 800BD580 000BA380  80 C5 01 C0 */	lwz r6, 0x1c0(r5)
/* 800BD584 000BA384  80 A5 01 C4 */	lwz r5, 0x1c4(r5)
/* 800BD588 000BA388  90 01 00 48 */	stw r0, 0x48(r1)
/* 800BD58C 000BA38C  91 E1 00 4C */	stw r15, 0x4c(r1)
/* 800BD590 000BA390  92 01 00 50 */	stw r16, 0x50(r1)
/* 800BD594 000BA394  92 21 00 54 */	stw r17, 0x54(r1)
/* 800BD598 000BA398  92 41 00 58 */	stw r18, 0x58(r1)
/* 800BD59C 000BA39C  92 61 00 5C */	stw r19, 0x5c(r1)
/* 800BD5A0 000BA3A0  92 81 00 60 */	stw r20, 0x60(r1)
/* 800BD5A4 000BA3A4  92 A1 00 64 */	stw r21, 0x64(r1)
/* 800BD5A8 000BA3A8  92 C1 00 28 */	stw r22, 0x28(r1)
/* 800BD5AC 000BA3AC  92 E1 00 2C */	stw r23, 0x2c(r1)
/* 800BD5B0 000BA3B0  93 01 00 30 */	stw r24, 0x30(r1)
/* 800BD5B4 000BA3B4  93 21 00 34 */	stw r25, 0x34(r1)
/* 800BD5B8 000BA3B8  93 41 00 38 */	stw r26, 0x38(r1)
/* 800BD5BC 000BA3BC  93 61 00 3C */	stw r27, 0x3c(r1)
/* 800BD5C0 000BA3C0  93 81 00 40 */	stw r28, 0x40(r1)
/* 800BD5C4 000BA3C4  93 A1 00 44 */	stw r29, 0x44(r1)
/* 800BD5C8 000BA3C8  91 81 00 08 */	stw r12, 8(r1)
/* 800BD5CC 000BA3CC  91 61 00 0C */	stw r11, 0xc(r1)
/* 800BD5D0 000BA3D0  91 41 00 10 */	stw r10, 0x10(r1)
/* 800BD5D4 000BA3D4  91 21 00 14 */	stw r9, 0x14(r1)
/* 800BD5D8 000BA3D8  91 01 00 18 */	stw r8, 0x18(r1)
/* 800BD5DC 000BA3DC  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 800BD5E0 000BA3E0  90 C1 00 20 */	stw r6, 0x20(r1)
/* 800BD5E4 000BA3E4  90 A1 00 24 */	stw r5, 0x24(r1)
/* 800BD5E8 000BA3E8  7D C9 03 A6 */	mtctr r14
lbl_800BD5EC:
/* 800BD5EC 000BA3EC  80 A3 00 04 */	lwz r5, 4(r3)
/* 800BD5F0 000BA3F0  84 03 00 08 */	lwzu r0, 8(r3)
/* 800BD5F4 000BA3F4  90 A4 00 04 */	stw r5, 4(r4)
/* 800BD5F8 000BA3F8  94 04 00 08 */	stwu r0, 8(r4)
/* 800BD5FC 000BA3FC  42 00 FF F0 */	bdnz lbl_800BD5EC
/* 800BD600 000BA400  1D DE 00 6C */	mulli r14, r30, 0x6c
/* 800BD604 000BA404  3C 80 80 3C */	lis r4, zSaveLoadGameTable@ha
/* 800BD608 000BA408  38 61 00 48 */	addi r3, r1, 0x48
/* 800BD60C 000BA40C  38 04 25 20 */	addi r0, r4, zSaveLoadGameTable@l
/* 800BD610 000BA410  7D E0 72 14 */	add r15, r0, r14
/* 800BD614 000BA414  38 A0 00 05 */	li r5, 5
/* 800BD618 000BA418  38 8F 00 40 */	addi r4, r15, 0x40
/* 800BD61C 000BA41C  48 12 A0 A1 */	bl strncpy
/* 800BD620 000BA420  3C 60 80 3C */	lis r3, zSaveLoadGameTable@ha
/* 800BD624 000BA424  38 A0 00 2F */	li r5, 0x2f
/* 800BD628 000BA428  38 03 25 20 */	addi r0, r3, zSaveLoadGameTable@l
/* 800BD62C 000BA42C  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BD630 000BA430  7C 60 72 14 */	add r3, r0, r14
/* 800BD634 000BA434  98 A1 00 4A */	stb r5, 0x4a(r1)
/* 800BD638 000BA438  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BD63C 000BA43C  88 C3 00 48 */	lbz r6, 0x48(r3)
/* 800BD640 000BA440  88 E3 00 49 */	lbz r7, 0x49(r3)
/* 800BD644 000BA444  38 61 00 68 */	addi r3, r1, 0x68
/* 800BD648 000BA448  38 84 00 13 */	addi r4, r4, 0x13
/* 800BD64C 000BA44C  38 A1 00 48 */	addi r5, r1, 0x48
/* 800BD650 000BA450  4C C6 31 82 */	crclr 6
/* 800BD654 000BA454  48 12 68 E1 */	bl sprintf
/* 800BD658 000BA458  38 61 00 48 */	addi r3, r1, 0x48
/* 800BD65C 000BA45C  38 81 00 68 */	addi r4, r1, 0x68
/* 800BD660 000BA460  38 A0 00 20 */	li r5, 0x20
/* 800BD664 000BA464  48 12 A0 59 */	bl strncpy
/* 800BD668 000BA468  3C 60 80 3C */	lis r3, zSaveLoadGameTable@ha
/* 800BD66C 000BA46C  38 A0 00 00 */	li r5, 0
/* 800BD670 000BA470  38 03 25 20 */	addi r0, r3, zSaveLoadGameTable@l
/* 800BD674 000BA474  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BD678 000BA478  7C 60 72 14 */	add r3, r0, r14
/* 800BD67C 000BA47C  98 A1 00 67 */	stb r5, 0x67(r1)
/* 800BD680 000BA480  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BD684 000BA484  88 A3 00 4B */	lbz r5, 0x4b(r3)
/* 800BD688 000BA488  88 C3 00 4C */	lbz r6, 0x4c(r3)
/* 800BD68C 000BA48C  38 61 00 28 */	addi r3, r1, 0x28
/* 800BD690 000BA490  38 84 00 1B */	addi r4, r4, 0x1b
/* 800BD694 000BA494  4C C6 31 82 */	crclr 6
/* 800BD698 000BA498  48 12 68 9D */	bl sprintf
/* 800BD69C 000BA49C  38 61 00 28 */	addi r3, r1, 0x28
/* 800BD6A0 000BA4A0  48 12 B1 CD */	bl atoi
/* 800BD6A4 000BA4A4  7C 70 1B 78 */	mr r16, r3
/* 800BD6A8 000BA4A8  2C 10 00 0C */	cmpwi r16, 0xc
/* 800BD6AC 000BA4AC  41 80 00 2C */	blt lbl_800BD6D8
/* 800BD6B0 000BA4B0  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BD6B4 000BA4B4  38 61 00 08 */	addi r3, r1, 8
/* 800BD6B8 000BA4B8  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BD6BC 000BA4BC  38 A0 00 03 */	li r5, 3
/* 800BD6C0 000BA4C0  38 84 00 20 */	addi r4, r4, 0x20
/* 800BD6C4 000BA4C4  48 12 9F F9 */	bl strncpy
/* 800BD6C8 000BA4C8  2C 10 00 0C */	cmpwi r16, 0xc
/* 800BD6CC 000BA4CC  41 82 00 30 */	beq lbl_800BD6FC
/* 800BD6D0 000BA4D0  3A 10 FF F4 */	addi r16, r16, -12
/* 800BD6D4 000BA4D4  48 00 00 28 */	b lbl_800BD6FC
lbl_800BD6D8:
/* 800BD6D8 000BA4D8  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BD6DC 000BA4DC  38 61 00 08 */	addi r3, r1, 8
/* 800BD6E0 000BA4E0  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BD6E4 000BA4E4  38 A0 00 03 */	li r5, 3
/* 800BD6E8 000BA4E8  38 84 00 23 */	addi r4, r4, 0x23
/* 800BD6EC 000BA4EC  48 12 9F D1 */	bl strncpy
/* 800BD6F0 000BA4F0  2C 10 00 00 */	cmpwi r16, 0
/* 800BD6F4 000BA4F4  40 82 00 08 */	bne lbl_800BD6FC
/* 800BD6F8 000BA4F8  3A 00 00 0C */	li r16, 0xc
lbl_800BD6FC:
/* 800BD6FC 000BA4FC  3C 60 80 3C */	lis r3, zSaveLoadGameTable@ha
/* 800BD700 000BA500  3C C0 80 26 */	lis r6, l_fcb0__esc__2_stringBase0@ha
/* 800BD704 000BA504  38 03 25 20 */	addi r0, r3, zSaveLoadGameTable@l
/* 800BD708 000BA508  7E 05 83 78 */	mr r5, r16
/* 800BD70C 000BA50C  7C 80 72 14 */	add r4, r0, r14
/* 800BD710 000BA510  39 06 FC B0 */	addi r8, r6, l_fcb0__esc__2_stringBase0@l
/* 800BD714 000BA514  88 C4 00 4E */	lbz r6, 0x4e(r4)
/* 800BD718 000BA518  38 61 00 28 */	addi r3, r1, 0x28
/* 800BD71C 000BA51C  88 E4 00 4F */	lbz r7, 0x4f(r4)
/* 800BD720 000BA520  38 88 00 26 */	addi r4, r8, 0x26
/* 800BD724 000BA524  39 01 00 08 */	addi r8, r1, 8
/* 800BD728 000BA528  4C C6 31 82 */	crclr 6
/* 800BD72C 000BA52C  48 12 68 09 */	bl sprintf
/* 800BD730 000BA530  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BD734 000BA534  38 61 00 48 */	addi r3, r1, 0x48
/* 800BD738 000BA538  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BD73C 000BA53C  38 C1 00 28 */	addi r6, r1, 0x28
/* 800BD740 000BA540  7C 65 1B 78 */	mr r5, r3
/* 800BD744 000BA544  38 84 00 31 */	addi r4, r4, 0x31
/* 800BD748 000BA548  4C C6 31 82 */	crclr 6
/* 800BD74C 000BA54C  48 12 67 E9 */	bl sprintf
/* 800BD750 000BA550  38 00 00 00 */	li r0, 0
/* 800BD754 000BA554  3C 60 80 26 */	lis r3, l_fcb0__esc__2_stringBase0@ha
/* 800BD758 000BA558  38 83 FC B0 */	addi r4, r3, l_fcb0__esc__2_stringBase0@l
/* 800BD75C 000BA55C  98 01 00 47 */	stb r0, 0x47(r1)
/* 800BD760 000BA560  7D E3 7B 78 */	mr r3, r15
/* 800BD764 000BA564  98 01 00 67 */	stb r0, 0x67(r1)
/* 800BD768 000BA568  38 84 00 37 */	addi r4, r4, 0x37
/* 800BD76C 000BA56C  4B F8 EE 41 */	bl xStricmp__FPCcPCc
/* 800BD770 000BA570  2C 03 00 00 */	cmpwi r3, 0
/* 800BD774 000BA574  40 82 00 20 */	bne lbl_800BD794
/* 800BD778 000BA578  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BD77C 000BA57C  7F E3 FB 78 */	mr r3, r31
/* 800BD780 000BA580  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BD784 000BA584  38 84 00 37 */	addi r4, r4, 0x37
/* 800BD788 000BA588  4C C6 31 82 */	crclr 6
/* 800BD78C 000BA58C  48 12 67 A9 */	bl sprintf
/* 800BD790 000BA590  48 00 00 10 */	b lbl_800BD7A0
lbl_800BD794:
/* 800BD794 000BA594  7F E3 FB 78 */	mr r3, r31
/* 800BD798 000BA598  7F C4 F3 78 */	mr r4, r30
/* 800BD79C 000BA59C  4B FF 1A 91 */	bl zSaveLoad_BuildName__FPci
lbl_800BD7A0:
/* 800BD7A0 000BA5A0  7F E3 FB 78 */	mr r3, r31
/* 800BD7A4 000BA5A4  B9 C1 01 68 */	lmw r14, 0x168(r1)
/* 800BD7A8 000BA5A8  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 800BD7AC 000BA5AC  7C 08 03 A6 */	mtlr r0
/* 800BD7B0 000BA5B0  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 800BD7B4 000BA5B4  4E 80 00 20 */	blr 
.global var_text_GameSlot0__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_GameSlot0__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BD7B8 000BA5B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BD7BC 000BA5BC  7C 08 02 A6 */	mflr r0
/* 800BD7C0 000BA5C0  3C 80 80 30 */	lis r4, l_8768_buffer_esc__6_868@ha
/* 800BD7C4 000BA5C4  38 60 00 00 */	li r3, 0
/* 800BD7C8 000BA5C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BD7CC 000BA5CC  38 84 87 68 */	addi r4, r4, l_8768_buffer_esc__6_868@l
/* 800BD7D0 000BA5D0  38 A0 00 3F */	li r5, 0x3f
/* 800BD7D4 000BA5D4  4B FF FD 29 */	bl zVarGameSlotInfo__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_FiPcUl
/* 800BD7D8 000BA5D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BD7DC 000BA5DC  7C 08 03 A6 */	mtlr r0
/* 800BD7E0 000BA5E0  38 21 00 10 */	addi r1, r1, 0x10
/* 800BD7E4 000BA5E4  4E 80 00 20 */	blr 
.global var_text_GameSlot1__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_GameSlot1__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BD7E8 000BA5E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BD7EC 000BA5EC  7C 08 02 A6 */	mflr r0
/* 800BD7F0 000BA5F0  3C 80 80 30 */	lis r4, l_87a8_buffer_esc__6_873@ha
/* 800BD7F4 000BA5F4  38 60 00 01 */	li r3, 1
/* 800BD7F8 000BA5F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BD7FC 000BA5FC  38 84 87 A8 */	addi r4, r4, l_87a8_buffer_esc__6_873@l
/* 800BD800 000BA600  38 A0 00 3F */	li r5, 0x3f
/* 800BD804 000BA604  4B FF FC F9 */	bl zVarGameSlotInfo__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_FiPcUl
/* 800BD808 000BA608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BD80C 000BA60C  7C 08 03 A6 */	mtlr r0
/* 800BD810 000BA610  38 21 00 10 */	addi r1, r1, 0x10
/* 800BD814 000BA614  4E 80 00 20 */	blr 
.global var_text_GameSlot2__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_GameSlot2__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BD818 000BA618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BD81C 000BA61C  7C 08 02 A6 */	mflr r0
/* 800BD820 000BA620  3C 80 80 30 */	lis r4, l_87e8_buffer_esc__6_878@ha
/* 800BD824 000BA624  38 60 00 02 */	li r3, 2
/* 800BD828 000BA628  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BD82C 000BA62C  38 84 87 E8 */	addi r4, r4, l_87e8_buffer_esc__6_878@l
/* 800BD830 000BA630  38 A0 00 3F */	li r5, 0x3f
/* 800BD834 000BA634  4B FF FC C9 */	bl zVarGameSlotInfo__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_FiPcUl
/* 800BD838 000BA638  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BD83C 000BA63C  7C 08 03 A6 */	mtlr r0
/* 800BD840 000BA640  38 21 00 10 */	addi r1, r1, 0x10
/* 800BD844 000BA644  4E 80 00 20 */	blr 
.global var_text_GameSlot3__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_GameSlot3__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BD848 000BA648  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BD84C 000BA64C  7C 08 02 A6 */	mflr r0
/* 800BD850 000BA650  3C 80 80 30 */	lis r4, l_8828_buffer_esc__6_883@ha
/* 800BD854 000BA654  38 60 00 03 */	li r3, 3
/* 800BD858 000BA658  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BD85C 000BA65C  38 84 88 28 */	addi r4, r4, l_8828_buffer_esc__6_883@l
/* 800BD860 000BA660  38 A0 00 3F */	li r5, 0x3f
/* 800BD864 000BA664  4B FF FC 99 */	bl zVarGameSlotInfo__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_FiPcUl
/* 800BD868 000BA668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BD86C 000BA66C  7C 08 03 A6 */	mtlr r0
/* 800BD870 000BA670  38 21 00 10 */	addi r1, r1, 0x10
/* 800BD874 000BA674  4E 80 00 20 */	blr 
.global var_text_GameSlot4__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_GameSlot4__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BD878 000BA678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BD87C 000BA67C  7C 08 02 A6 */	mflr r0
/* 800BD880 000BA680  3C 80 80 30 */	lis r4, l_8868_buffer_esc__6_888@ha
/* 800BD884 000BA684  38 60 00 04 */	li r3, 4
/* 800BD888 000BA688  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BD88C 000BA68C  38 84 88 68 */	addi r4, r4, l_8868_buffer_esc__6_888@l
/* 800BD890 000BA690  38 A0 00 3F */	li r5, 0x3f
/* 800BD894 000BA694  4B FF FC 69 */	bl zVarGameSlotInfo__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_FiPcUl
/* 800BD898 000BA698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BD89C 000BA69C  7C 08 03 A6 */	mtlr r0
/* 800BD8A0 000BA6A0  38 21 00 10 */	addi r1, r1, 0x10
/* 800BD8A4 000BA6A4  4E 80 00 20 */	blr 
.global var_text_GameSlot5__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_GameSlot5__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BD8A8 000BA6A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BD8AC 000BA6AC  7C 08 02 A6 */	mflr r0
/* 800BD8B0 000BA6B0  3C 80 80 30 */	lis r4, l_88a8_buffer_esc__6_893@ha
/* 800BD8B4 000BA6B4  38 60 00 05 */	li r3, 5
/* 800BD8B8 000BA6B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BD8BC 000BA6BC  38 84 88 A8 */	addi r4, r4, l_88a8_buffer_esc__6_893@l
/* 800BD8C0 000BA6C0  38 A0 00 3F */	li r5, 0x3f
/* 800BD8C4 000BA6C4  4B FF FC 39 */	bl zVarGameSlotInfo__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_FiPcUl
/* 800BD8C8 000BA6C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BD8CC 000BA6CC  7C 08 03 A6 */	mtlr r0
/* 800BD8D0 000BA6D0  38 21 00 10 */	addi r1, r1, 0x10
/* 800BD8D4 000BA6D4  4E 80 00 20 */	blr 
.global var_text_GameSlot6__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_GameSlot6__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BD8D8 000BA6D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BD8DC 000BA6DC  7C 08 02 A6 */	mflr r0
/* 800BD8E0 000BA6E0  3C 80 80 30 */	lis r4, l_88e8_buffer_esc__6_898@ha
/* 800BD8E4 000BA6E4  38 60 00 06 */	li r3, 6
/* 800BD8E8 000BA6E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BD8EC 000BA6EC  38 84 88 E8 */	addi r4, r4, l_88e8_buffer_esc__6_898@l
/* 800BD8F0 000BA6F0  38 A0 00 3F */	li r5, 0x3f
/* 800BD8F4 000BA6F4  4B FF FC 09 */	bl zVarGameSlotInfo__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_FiPcUl
/* 800BD8F8 000BA6F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BD8FC 000BA6FC  7C 08 03 A6 */	mtlr r0
/* 800BD900 000BA700  38 21 00 10 */	addi r1, r1, 0x10
/* 800BD904 000BA704  4E 80 00 20 */	blr 
.global var_text_GameSlot7__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_GameSlot7__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BD908 000BA708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BD90C 000BA70C  7C 08 02 A6 */	mflr r0
/* 800BD910 000BA710  3C 80 80 30 */	lis r4, l_8928_buffer_esc__6_903@ha
/* 800BD914 000BA714  38 60 00 07 */	li r3, 7
/* 800BD918 000BA718  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BD91C 000BA71C  38 84 89 28 */	addi r4, r4, l_8928_buffer_esc__6_903@l
/* 800BD920 000BA720  38 A0 00 3F */	li r5, 0x3f
/* 800BD924 000BA724  4B FF FB D9 */	bl zVarGameSlotInfo__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_FiPcUl
/* 800BD928 000BA728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BD92C 000BA72C  7C 08 03 A6 */	mtlr r0
/* 800BD930 000BA730  38 21 00 10 */	addi r1, r1, 0x10
/* 800BD934 000BA734  4E 80 00 20 */	blr 
.global var_text_MCAccessType__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_MCAccessType__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BD938 000BA738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BD93C 000BA73C  7C 08 02 A6 */	mflr r0
/* 800BD940 000BA740  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BD944 000BA744  4B FE FF A9 */	bl zSaveLoad_getMCAccessType__Fv
/* 800BD948 000BA748  3C 80 80 29 */	lis r4, l_16e0_state_text_esc__6_908@ha
/* 800BD94C 000BA74C  54 60 10 3A */	slwi r0, r3, 2
/* 800BD950 000BA750  38 64 16 E0 */	addi r3, r4, l_16e0_state_text_esc__6_908@l
/* 800BD954 000BA754  7C 63 00 2E */	lwzx r3, r3, r0
/* 800BD958 000BA758  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BD95C 000BA75C  7C 08 03 A6 */	mtlr r0
/* 800BD960 000BA760  38 21 00 10 */	addi r1, r1, 0x10
/* 800BD964 000BA764  4E 80 00 20 */	blr 
.global var_text_MCAutoSaveCard__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_MCAutoSaveCard__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BD968 000BA768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BD96C 000BA76C  7C 08 02 A6 */	mflr r0
/* 800BD970 000BA770  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BD974 000BA774  4B FE FF 81 */	bl zSaveLoadGetAutoSaveCard__Fv
/* 800BD978 000BA778  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BD97C 000BA77C  3C A0 80 30 */	lis r5, l_8968_buffer_esc__6_913@ha
/* 800BD980 000BA780  7C 66 1B 78 */	mr r6, r3
/* 800BD984 000BA784  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BD988 000BA788  38 65 89 68 */	addi r3, r5, l_8968_buffer_esc__6_913@l
/* 800BD98C 000BA78C  38 A6 00 41 */	addi r5, r6, 0x41
/* 800BD990 000BA790  38 84 00 03 */	addi r4, r4, 3
/* 800BD994 000BA794  4C C6 31 82 */	crclr 6
/* 800BD998 000BA798  48 12 65 9D */	bl sprintf
/* 800BD99C 000BA79C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BD9A0 000BA7A0  3C 60 80 30 */	lis r3, l_8968_buffer_esc__6_913@ha
/* 800BD9A4 000BA7A4  38 63 89 68 */	addi r3, r3, l_8968_buffer_esc__6_913@l
/* 800BD9A8 000BA7A8  7C 08 03 A6 */	mtlr r0
/* 800BD9AC 000BA7AC  38 21 00 10 */	addi r1, r1, 0x10
/* 800BD9B0 000BA7B0  4E 80 00 20 */	blr 
.global var_text_MCPS2MaxSpace__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_MCPS2MaxSpace__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BD9B4 000BA7B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BD9B8 000BA7B8  7C 08 02 A6 */	mflr r0
/* 800BD9BC 000BA7BC  3C 60 80 30 */	lis r3, l_8974_buffer_esc__6_918@ha
/* 800BD9C0 000BA7C0  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BD9C4 000BA7C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BD9C8 000BA7C8  38 63 89 74 */	addi r3, r3, l_8974_buffer_esc__6_918@l
/* 800BD9CC 000BA7CC  38 A0 00 00 */	li r5, 0
/* 800BD9D0 000BA7D0  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BD9D4 000BA7D4  4C C6 31 82 */	crclr 6
/* 800BD9D8 000BA7D8  48 12 65 5D */	bl sprintf
/* 800BD9DC 000BA7DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BD9E0 000BA7E0  3C 60 80 30 */	lis r3, l_8974_buffer_esc__6_918@ha
/* 800BD9E4 000BA7E4  38 63 89 74 */	addi r3, r3, l_8974_buffer_esc__6_918@l
/* 800BD9E8 000BA7E8  7C 08 03 A6 */	mtlr r0
/* 800BD9EC 000BA7EC  38 21 00 10 */	addi r1, r1, 0x10
/* 800BD9F0 000BA7F0  4E 80 00 20 */	blr 
.global var_text_MCPS2MinSpace__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_MCPS2MinSpace__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BD9F4 000BA7F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BD9F8 000BA7F8  7C 08 02 A6 */	mflr r0
/* 800BD9FC 000BA7FC  3C 60 80 30 */	lis r3, l_8980_buffer_esc__6_923@ha
/* 800BDA00 000BA800  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BDA04 000BA804  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BDA08 000BA808  38 63 89 80 */	addi r3, r3, l_8980_buffer_esc__6_923@l
/* 800BDA0C 000BA80C  38 A0 00 00 */	li r5, 0
/* 800BDA10 000BA810  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BDA14 000BA814  4C C6 31 82 */	crclr 6
/* 800BDA18 000BA818  48 12 65 1D */	bl sprintf
/* 800BDA1C 000BA81C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BDA20 000BA820  3C 60 80 30 */	lis r3, l_8980_buffer_esc__6_923@ha
/* 800BDA24 000BA824  38 63 89 80 */	addi r3, r3, l_8980_buffer_esc__6_923@l
/* 800BDA28 000BA828  7C 08 03 A6 */	mtlr r0
/* 800BDA2C 000BA82C  38 21 00 10 */	addi r1, r1, 0x10
/* 800BDA30 000BA830  4E 80 00 20 */	blr 
.global var_text_MCSelectedCard__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_MCSelectedCard__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BDA34 000BA834  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BDA38 000BA838  7C 08 02 A6 */	mflr r0
/* 800BDA3C 000BA83C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BDA40 000BA840  4B FE FE 95 */	bl zSaveLoad_getcard__Fv
/* 800BDA44 000BA844  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BDA48 000BA848  3C A0 80 30 */	lis r5, l_898c_buffer_esc__6_928@ha
/* 800BDA4C 000BA84C  7C 66 1B 78 */	mr r6, r3
/* 800BDA50 000BA850  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BDA54 000BA854  38 65 89 8C */	addi r3, r5, l_898c_buffer_esc__6_928@l
/* 800BDA58 000BA858  38 A6 00 41 */	addi r5, r6, 0x41
/* 800BDA5C 000BA85C  38 84 00 03 */	addi r4, r4, 3
/* 800BDA60 000BA860  4C C6 31 82 */	crclr 6
/* 800BDA64 000BA864  48 12 64 D1 */	bl sprintf
/* 800BDA68 000BA868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BDA6C 000BA86C  3C 60 80 30 */	lis r3, l_898c_buffer_esc__6_928@ha
/* 800BDA70 000BA870  38 63 89 8C */	addi r3, r3, l_898c_buffer_esc__6_928@l
/* 800BDA74 000BA874  7C 08 03 A6 */	mtlr r0
/* 800BDA78 000BA878  38 21 00 10 */	addi r1, r1, 0x10
/* 800BDA7C 000BA87C  4E 80 00 20 */	blr 
.global var_text_MCSelectedGame__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_MCSelectedGame__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BDA80 000BA880  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BDA84 000BA884  7C 08 02 A6 */	mflr r0
/* 800BDA88 000BA888  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BDA8C 000BA88C  4B FE FE 41 */	bl zSaveLoad_getgame__Fv
/* 800BDA90 000BA890  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BDA94 000BA894  3C A0 80 30 */	lis r5, l_8998_buffer_esc__6_933@ha
/* 800BDA98 000BA898  7C 66 1B 78 */	mr r6, r3
/* 800BDA9C 000BA89C  38 65 89 98 */	addi r3, r5, l_8998_buffer_esc__6_933@l
/* 800BDAA0 000BA8A0  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BDAA4 000BA8A4  38 A6 00 01 */	addi r5, r6, 1
/* 800BDAA8 000BA8A8  4C C6 31 82 */	crclr 6
/* 800BDAAC 000BA8AC  48 12 64 89 */	bl sprintf
/* 800BDAB0 000BA8B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BDAB4 000BA8B4  3C 60 80 30 */	lis r3, l_8998_buffer_esc__6_933@ha
/* 800BDAB8 000BA8B8  38 63 89 98 */	addi r3, r3, l_8998_buffer_esc__6_933@l
/* 800BDABC 000BA8BC  7C 08 03 A6 */	mtlr r0
/* 800BDAC0 000BA8C0  38 21 00 10 */	addi r1, r1, 0x10
/* 800BDAC4 000BA8C4  4E 80 00 20 */	blr 
.global var_text_PlayerHeShe__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_PlayerHeShe__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BDAC8 000BA8C8  80 0D 8D 60 */	lwz r0, gCurrentPlayer@sda21(r13)
/* 800BDACC 000BA8CC  3C 60 80 29 */	lis r3, l_16f0_text_esc__6_938@ha
/* 800BDAD0 000BA8D0  38 63 16 F0 */	addi r3, r3, l_16f0_text_esc__6_938@l
/* 800BDAD4 000BA8D4  54 00 10 3A */	slwi r0, r0, 2
/* 800BDAD8 000BA8D8  7C 63 00 2E */	lwzx r3, r3, r0
/* 800BDADC 000BA8DC  4E 80 00 20 */	blr 
.global var_text_PlayerName__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_PlayerName__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BDAE0 000BA8E0  80 0D 8D 60 */	lwz r0, gCurrentPlayer@sda21(r13)
/* 800BDAE4 000BA8E4  3C 60 80 29 */	lis r3, l_16fc_text_esc__6_943@ha
/* 800BDAE8 000BA8E8  38 63 16 FC */	addi r3, r3, l_16fc_text_esc__6_943@l
/* 800BDAEC 000BA8EC  54 00 10 3A */	slwi r0, r0, 2
/* 800BDAF0 000BA8F0  7C 63 00 2E */	lwzx r3, r3, r0
/* 800BDAF4 000BA8F4  4E 80 00 20 */	blr 
.global var_text_PlayerPosition__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_PlayerPosition__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BDAF8 000BA8F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BDAFC 000BA8FC  7C 08 02 A6 */	mflr r0
/* 800BDB00 000BA900  3C 80 80 3C */	lis r4, globals@ha
/* 800BDB04 000BA904  3C 60 80 30 */	lis r3, l_89a4_buffer_esc__6_948@ha
/* 800BDB08 000BA908  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BDB0C 000BA90C  38 A4 05 58 */	addi r5, r4, globals@l
/* 800BDB10 000BA910  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BDB14 000BA914  38 63 89 A4 */	addi r3, r3, l_89a4_buffer_esc__6_948@l
/* 800BDB18 000BA918  80 A5 07 28 */	lwz r5, 0x728(r5)
/* 800BDB1C 000BA91C  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BDB20 000BA920  38 84 00 E0 */	addi r4, r4, 0xe0
/* 800BDB24 000BA924  C0 45 00 30 */	lfs f2, 0x30(r5)
/* 800BDB28 000BA928  C0 25 00 34 */	lfs f1, 0x34(r5)
/* 800BDB2C 000BA92C  C0 05 00 38 */	lfs f0, 0x38(r5)
/* 800BDB30 000BA930  FC 40 10 1E */	fctiwz f2, f2
/* 800BDB34 000BA934  FC 20 08 1E */	fctiwz f1, f1
/* 800BDB38 000BA938  FC 00 00 1E */	fctiwz f0, f0
/* 800BDB3C 000BA93C  D8 41 00 08 */	stfd f2, 8(r1)
/* 800BDB40 000BA940  D8 21 00 10 */	stfd f1, 0x10(r1)
/* 800BDB44 000BA944  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 800BDB48 000BA948  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 800BDB4C 000BA94C  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 800BDB50 000BA950  80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 800BDB54 000BA954  4C C6 31 82 */	crclr 6
/* 800BDB58 000BA958  48 12 63 DD */	bl sprintf
/* 800BDB5C 000BA95C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BDB60 000BA960  3C 60 80 30 */	lis r3, l_89a4_buffer_esc__6_948@ha
/* 800BDB64 000BA964  38 63 89 A4 */	addi r3, r3, l_89a4_buffer_esc__6_948@l
/* 800BDB68 000BA968  7C 08 03 A6 */	mtlr r0
/* 800BDB6C 000BA96C  38 21 00 20 */	addi r1, r1, 0x20
/* 800BDB70 000BA970  4E 80 00 20 */	blr 
.global var_text_SelectedArea__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_SelectedArea__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BDB74 000BA974  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BDB78 000BA978  7C 08 02 A6 */	mflr r0
/* 800BDB7C 000BA97C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BDB80 000BA980  80 6D 91 68 */	lwz r3, l_ba68_selSceneID__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_@sda21(r13)
/* 800BDB84 000BA984  4B FF 73 71 */	bl zSceneGetAreaname__FUi
/* 800BDB88 000BA988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BDB8C 000BA98C  7C 08 03 A6 */	mtlr r0
/* 800BDB90 000BA990  38 21 00 10 */	addi r1, r1, 0x10
/* 800BDB94 000BA994  4E 80 00 20 */	blr 
.global var_text_ShinyCount__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_ShinyCount__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BDB98 000BA998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BDB9C 000BA99C  7C 08 02 A6 */	mflr r0
/* 800BDBA0 000BA9A0  3C 60 80 3C */	lis r3, globals@ha
/* 800BDBA4 000BA9A4  3C A0 80 30 */	lis r5, l_89d4_buffer_esc__6_960@ha
/* 800BDBA8 000BA9A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BDBAC 000BA9AC  38 83 05 58 */	addi r4, r3, globals@l
/* 800BDBB0 000BA9B0  38 65 89 D4 */	addi r3, r5, l_89d4_buffer_esc__6_960@l
/* 800BDBB4 000BA9B4  3C C0 80 26 */	lis r6, l_fcb0__esc__2_stringBase0@ha
/* 800BDBB8 000BA9B8  80 A4 1B 00 */	lwz r5, 0x1b00(r4)
/* 800BDBBC 000BA9BC  38 86 FC B0 */	addi r4, r6, l_fcb0__esc__2_stringBase0@l
/* 800BDBC0 000BA9C0  4C C6 31 82 */	crclr 6
/* 800BDBC4 000BA9C4  48 12 63 71 */	bl sprintf
/* 800BDBC8 000BA9C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BDBCC 000BA9CC  3C 60 80 30 */	lis r3, l_89d4_buffer_esc__6_960@ha
/* 800BDBD0 000BA9D0  38 63 89 D4 */	addi r3, r3, l_89d4_buffer_esc__6_960@l
/* 800BDBD4 000BA9D4  7C 08 03 A6 */	mtlr r0
/* 800BDBD8 000BA9D8  38 21 00 10 */	addi r1, r1, 0x10
/* 800BDBDC 000BA9DC  4E 80 00 20 */	blr 
.global var_text_ShinyCountText__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_ShinyCountText__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BDBE0 000BA9E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BDBE4 000BA9E4  7C 08 02 A6 */	mflr r0
/* 800BDBE8 000BA9E8  3C 60 80 3C */	lis r3, globals@ha
/* 800BDBEC 000BA9EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BDBF0 000BA9F0  38 63 05 58 */	addi r3, r3, globals@l
/* 800BDBF4 000BA9F4  80 A3 1B 00 */	lwz r5, 0x1b00(r3)
/* 800BDBF8 000BA9F8  28 05 00 00 */	cmplwi r5, 0
/* 800BDBFC 000BA9FC  40 82 00 20 */	bne lbl_800BDC1C
/* 800BDC00 000BAA00  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BDC04 000BAA04  3C 60 80 29 */	lis r3, l_1708_buffer_esc__6_965@ha
/* 800BDC08 000BAA08  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BDC0C 000BAA0C  38 63 17 08 */	addi r3, r3, l_1708_buffer_esc__6_965@l
/* 800BDC10 000BAA10  38 84 00 E9 */	addi r4, r4, 0xe9
/* 800BDC14 000BAA14  48 12 9A ED */	bl strcpy
/* 800BDC18 000BAA18  48 00 00 44 */	b lbl_800BDC5C
lbl_800BDC1C:
/* 800BDC1C 000BAA1C  28 05 00 01 */	cmplwi r5, 1
/* 800BDC20 000BAA20  40 82 00 20 */	bne lbl_800BDC40
/* 800BDC24 000BAA24  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BDC28 000BAA28  3C 60 80 29 */	lis r3, l_1708_buffer_esc__6_965@ha
/* 800BDC2C 000BAA2C  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BDC30 000BAA30  38 63 17 08 */	addi r3, r3, l_1708_buffer_esc__6_965@l
/* 800BDC34 000BAA34  38 84 00 FC */	addi r4, r4, 0xfc
/* 800BDC38 000BAA38  48 12 9A C9 */	bl strcpy
/* 800BDC3C 000BAA3C  48 00 00 20 */	b lbl_800BDC5C
lbl_800BDC40:
/* 800BDC40 000BAA40  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BDC44 000BAA44  3C 60 80 29 */	lis r3, l_1708_buffer_esc__6_965@ha
/* 800BDC48 000BAA48  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BDC4C 000BAA4C  38 63 17 08 */	addi r3, r3, l_1708_buffer_esc__6_965@l
/* 800BDC50 000BAA50  38 84 01 0D */	addi r4, r4, 0x10d
/* 800BDC54 000BAA54  4C C6 31 82 */	crclr 6
/* 800BDC58 000BAA58  48 12 62 DD */	bl sprintf
lbl_800BDC5C:
/* 800BDC5C 000BAA5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BDC60 000BAA60  3C 60 80 29 */	lis r3, l_1708_buffer_esc__6_965@ha
/* 800BDC64 000BAA64  38 63 17 08 */	addi r3, r3, l_1708_buffer_esc__6_965@l
/* 800BDC68 000BAA68  7C 08 03 A6 */	mtlr r0
/* 800BDC6C 000BAA6C  38 21 00 10 */	addi r1, r1, 0x10
/* 800BDC70 000BAA70  4E 80 00 20 */	blr 
.global var_text_SoundFXVolume__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_SoundFXVolume__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BDC74 000BAA74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BDC78 000BAA78  7C 08 02 A6 */	mflr r0
/* 800BDC7C 000BAA7C  38 60 00 00 */	li r3, 0
/* 800BDC80 000BAA80  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BDC84 000BAA84  48 00 04 A5 */	bl zVarEntryCB_SndFXVol__FPv
/* 800BDC88 000BAA88  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BDC8C 000BAA8C  3C C0 80 30 */	lis r6, l_89e0_buffer_esc__6_977@ha
/* 800BDC90 000BAA90  7C 65 1B 78 */	mr r5, r3
/* 800BDC94 000BAA94  38 66 89 E0 */	addi r3, r6, l_89e0_buffer_esc__6_977@l
/* 800BDC98 000BAA98  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BDC9C 000BAA9C  4C C6 31 82 */	crclr 6
/* 800BDCA0 000BAAA0  48 12 62 95 */	bl sprintf
/* 800BDCA4 000BAAA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BDCA8 000BAAA8  3C 60 80 30 */	lis r3, l_89e0_buffer_esc__6_977@ha
/* 800BDCAC 000BAAAC  38 63 89 E0 */	addi r3, r3, l_89e0_buffer_esc__6_977@l
/* 800BDCB0 000BAAB0  7C 08 03 A6 */	mtlr r0
/* 800BDCB4 000BAAB4  38 21 00 10 */	addi r1, r1, 0x10
/* 800BDCB8 000BAAB8  4E 80 00 20 */	blr 
.global var_text_SoundMusicVolume__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_SoundMusicVolume__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BDCBC 000BAABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BDCC0 000BAAC0  7C 08 02 A6 */	mflr r0
/* 800BDCC4 000BAAC4  38 60 00 00 */	li r3, 0
/* 800BDCC8 000BAAC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BDCCC 000BAACC  48 00 04 21 */	bl zVarEntryCB_SndMusicVol__FPv
/* 800BDCD0 000BAAD0  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BDCD4 000BAAD4  3C C0 80 30 */	lis r6, l_89ec_buffer_esc__6_982@ha
/* 800BDCD8 000BAAD8  7C 65 1B 78 */	mr r5, r3
/* 800BDCDC 000BAADC  38 66 89 EC */	addi r3, r6, l_89ec_buffer_esc__6_982@l
/* 800BDCE0 000BAAE0  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BDCE4 000BAAE4  4C C6 31 82 */	crclr 6
/* 800BDCE8 000BAAE8  48 12 62 4D */	bl sprintf
/* 800BDCEC 000BAAEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BDCF0 000BAAF0  3C 60 80 30 */	lis r3, l_89ec_buffer_esc__6_982@ha
/* 800BDCF4 000BAAF4  38 63 89 EC */	addi r3, r3, l_89ec_buffer_esc__6_982@l
/* 800BDCF8 000BAAF8  7C 08 03 A6 */	mtlr r0
/* 800BDCFC 000BAAFC  38 21 00 10 */	addi r1, r1, 0x10
/* 800BDD00 000BAB00  4E 80 00 20 */	blr 
.global var_text_SpaceAvailable__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_SpaceAvailable__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BDD04 000BAB04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BDD08 000BAB08  7C 08 02 A6 */	mflr r0
/* 800BDD0C 000BAB0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BDD10 000BAB10  4B FE FB CD */	bl zSaveLoad_getMCavailable__Fv
/* 800BDD14 000BAB14  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BDD18 000BAB18  3C C0 80 30 */	lis r6, l_89f8_buffer_esc__6_987@ha
/* 800BDD1C 000BAB1C  7C 65 1B 78 */	mr r5, r3
/* 800BDD20 000BAB20  38 66 89 F8 */	addi r3, r6, l_89f8_buffer_esc__6_987@l
/* 800BDD24 000BAB24  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BDD28 000BAB28  4C C6 31 82 */	crclr 6
/* 800BDD2C 000BAB2C  48 12 62 09 */	bl sprintf
/* 800BDD30 000BAB30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BDD34 000BAB34  3C 60 80 30 */	lis r3, l_89f8_buffer_esc__6_987@ha
/* 800BDD38 000BAB38  38 63 89 F8 */	addi r3, r3, l_89f8_buffer_esc__6_987@l
/* 800BDD3C 000BAB3C  7C 08 03 A6 */	mtlr r0
/* 800BDD40 000BAB40  38 21 00 10 */	addi r1, r1, 0x10
/* 800BDD44 000BAB44  4E 80 00 20 */	blr 
.global var_text_SpaceAvailableString__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_SpaceAvailableString__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BDD48 000BAB48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800BDD4C 000BAB4C  7C 08 02 A6 */	mflr r0
/* 800BDD50 000BAB50  90 01 00 34 */	stw r0, 0x34(r1)
/* 800BDD54 000BAB54  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800BDD58 000BAB58  4B FE FB 85 */	bl zSaveLoad_getMCavailable__Fv
/* 800BDD5C 000BAB5C  7C 60 1B 78 */	mr r0, r3
/* 800BDD60 000BAB60  38 61 00 08 */	addi r3, r1, 8
/* 800BDD64 000BAB64  7C 1F 03 78 */	mr r31, r0
/* 800BDD68 000BAB68  38 80 00 00 */	li r4, 0
/* 800BDD6C 000BAB6C  38 A0 00 20 */	li r5, 0x20
/* 800BDD70 000BAB70  4B F4 56 E9 */	bl memset
/* 800BDD74 000BAB74  3C 60 80 30 */	lis r3, l_8a04_buffer_esc__6_992@ha
/* 800BDD78 000BAB78  38 80 00 00 */	li r4, 0
/* 800BDD7C 000BAB7C  38 63 8A 04 */	addi r3, r3, l_8a04_buffer_esc__6_992@l
/* 800BDD80 000BAB80  38 A0 00 40 */	li r5, 0x40
/* 800BDD84 000BAB84  4B F4 56 D5 */	bl memset
/* 800BDD88 000BAB88  3C 60 80 26 */	lis r3, l_fcb0__esc__2_stringBase0@ha
/* 800BDD8C 000BAB8C  7F E5 FB 78 */	mr r5, r31
/* 800BDD90 000BAB90  38 83 FC B0 */	addi r4, r3, l_fcb0__esc__2_stringBase0@l
/* 800BDD94 000BAB94  38 61 00 08 */	addi r3, r1, 8
/* 800BDD98 000BAB98  4C C6 31 82 */	crclr 6
/* 800BDD9C 000BAB9C  48 12 61 99 */	bl sprintf
/* 800BDDA0 000BABA0  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BDDA4 000BABA4  3C 60 80 30 */	lis r3, l_8a04_buffer_esc__6_992@ha
/* 800BDDA8 000BABA8  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BDDAC 000BABAC  38 A1 00 08 */	addi r5, r1, 8
/* 800BDDB0 000BABB0  38 63 8A 04 */	addi r3, r3, l_8a04_buffer_esc__6_992@l
/* 800BDDB4 000BABB4  38 84 00 10 */	addi r4, r4, 0x10
/* 800BDDB8 000BABB8  4C C6 31 82 */	crclr 6
/* 800BDDBC 000BABBC  48 12 61 79 */	bl sprintf
/* 800BDDC0 000BABC0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800BDDC4 000BABC4  3C 60 80 30 */	lis r3, l_8a04_buffer_esc__6_992@ha
/* 800BDDC8 000BABC8  38 63 8A 04 */	addi r3, r3, l_8a04_buffer_esc__6_992@l
/* 800BDDCC 000BABCC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800BDDD0 000BABD0  7C 08 03 A6 */	mtlr r0
/* 800BDDD4 000BABD4  38 21 00 30 */	addi r1, r1, 0x30
/* 800BDDD8 000BABD8  4E 80 00 20 */	blr 
.global var_text_SpaceNeeded__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_SpaceNeeded__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BDDDC 000BABDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BDDE0 000BABE0  7C 08 02 A6 */	mflr r0
/* 800BDDE4 000BABE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BDDE8 000BABE8  4B FE FA FD */	bl zSaveLoad_getMCneeded__Fv
/* 800BDDEC 000BABEC  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BDDF0 000BABF0  3C C0 80 30 */	lis r6, l_8a44_buffer_esc__6_997@ha
/* 800BDDF4 000BABF4  7C 65 1B 78 */	mr r5, r3
/* 800BDDF8 000BABF8  38 66 8A 44 */	addi r3, r6, l_8a44_buffer_esc__6_997@l
/* 800BDDFC 000BABFC  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BDE00 000BAC00  4C C6 31 82 */	crclr 6
/* 800BDE04 000BAC04  48 12 61 31 */	bl sprintf
/* 800BDE08 000BAC08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BDE0C 000BAC0C  3C 60 80 30 */	lis r3, l_8a44_buffer_esc__6_997@ha
/* 800BDE10 000BAC10  38 63 8A 44 */	addi r3, r3, l_8a44_buffer_esc__6_997@l
/* 800BDE14 000BAC14  7C 08 03 A6 */	mtlr r0
/* 800BDE18 000BAC18  38 21 00 10 */	addi r1, r1, 0x10
/* 800BDE1C 000BAC1C  4E 80 00 20 */	blr 
.global var_text_TotalPatsSocks__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_TotalPatsSocks__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BDE20 000BAC20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BDE24 000BAC24  7C 08 02 A6 */	mflr r0
/* 800BDE28 000BAC28  3C 60 80 3C */	lis r3, globals@ha
/* 800BDE2C 000BAC2C  3C A0 80 30 */	lis r5, l_8a50_buffer_esc__6_1002@ha
/* 800BDE30 000BAC30  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BDE34 000BAC34  38 83 05 58 */	addi r4, r3, globals@l
/* 800BDE38 000BAC38  38 65 8A 50 */	addi r3, r5, l_8a50_buffer_esc__6_1002@l
/* 800BDE3C 000BAC3C  3C C0 80 26 */	lis r6, l_fcb0__esc__2_stringBase0@ha
/* 800BDE40 000BAC40  80 A4 1B C4 */	lwz r5, 0x1bc4(r4)
/* 800BDE44 000BAC44  38 86 FC B0 */	addi r4, r6, l_fcb0__esc__2_stringBase0@l
/* 800BDE48 000BAC48  4C C6 31 82 */	crclr 6
/* 800BDE4C 000BAC4C  48 12 60 E9 */	bl sprintf
/* 800BDE50 000BAC50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BDE54 000BAC54  3C 60 80 30 */	lis r3, l_8a50_buffer_esc__6_1002@ha
/* 800BDE58 000BAC58  38 63 8A 50 */	addi r3, r3, l_8a50_buffer_esc__6_1002@l
/* 800BDE5C 000BAC5C  7C 08 03 A6 */	mtlr r0
/* 800BDE60 000BAC60  38 21 00 10 */	addi r1, r1, 0x10
/* 800BDE64 000BAC64  4E 80 00 20 */	blr 
.global var_text_MCName__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv
var_text_MCName__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv:
/* 800BDE68 000BAC68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BDE6C 000BAC6C  7C 08 02 A6 */	mflr r0
/* 800BDE70 000BAC70  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BDE74 000BAC74  4B FE FA 61 */	bl zSaveLoad_getcard__Fv
/* 800BDE78 000BAC78  2C 03 00 01 */	cmpwi r3, 1
/* 800BDE7C 000BAC7C  41 82 00 30 */	beq lbl_800BDEAC
/* 800BDE80 000BAC80  40 80 00 48 */	bge lbl_800BDEC8
/* 800BDE84 000BAC84  2C 03 00 00 */	cmpwi r3, 0
/* 800BDE88 000BAC88  40 80 00 08 */	bge lbl_800BDE90
/* 800BDE8C 000BAC8C  48 00 00 3C */	b lbl_800BDEC8
lbl_800BDE90:
/* 800BDE90 000BAC90  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BDE94 000BAC94  3C 60 80 30 */	lis r3, l_8a5c_buffer_esc__6_1007@ha
/* 800BDE98 000BAC98  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BDE9C 000BAC9C  38 63 8A 5C */	addi r3, r3, l_8a5c_buffer_esc__6_1007@l
/* 800BDEA0 000BACA0  38 84 01 21 */	addi r4, r4, 0x121
/* 800BDEA4 000BACA4  48 12 98 5D */	bl strcpy
/* 800BDEA8 000BACA8  48 00 00 38 */	b lbl_800BDEE0
lbl_800BDEAC:
/* 800BDEAC 000BACAC  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BDEB0 000BACB0  3C 60 80 30 */	lis r3, l_8a5c_buffer_esc__6_1007@ha
/* 800BDEB4 000BACB4  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BDEB8 000BACB8  38 63 8A 5C */	addi r3, r3, l_8a5c_buffer_esc__6_1007@l
/* 800BDEBC 000BACBC  38 84 01 30 */	addi r4, r4, 0x130
/* 800BDEC0 000BACC0  48 12 98 41 */	bl strcpy
/* 800BDEC4 000BACC4  48 00 00 1C */	b lbl_800BDEE0
lbl_800BDEC8:
/* 800BDEC8 000BACC8  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BDECC 000BACCC  3C 60 80 30 */	lis r3, l_8a5c_buffer_esc__6_1007@ha
/* 800BDED0 000BACD0  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BDED4 000BACD4  38 63 8A 5C */	addi r3, r3, l_8a5c_buffer_esc__6_1007@l
/* 800BDED8 000BACD8  38 84 00 0D */	addi r4, r4, 0xd
/* 800BDEDC 000BACDC  48 12 98 25 */	bl strcpy
lbl_800BDEE0:
/* 800BDEE0 000BACE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BDEE4 000BACE4  3C 60 80 30 */	lis r3, l_8a5c_buffer_esc__6_1007@ha
/* 800BDEE8 000BACE8  38 63 8A 5C */	addi r3, r3, l_8a5c_buffer_esc__6_1007@l
/* 800BDEEC 000BACEC  7C 08 03 A6 */	mtlr r0
/* 800BDEF0 000BACF0  38 21 00 10 */	addi r1, r1, 0x10
/* 800BDEF4 000BACF4  4E 80 00 20 */	blr 

/* find_var__18@unnamed@zVar_cpp@FRC6substr */
find_var__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_FRC6substr:
/* 800BDEF8 000BACF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BDEFC 000BACFC  7C 08 02 A6 */	mflr r0
/* 800BDF00 000BAD00  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BDF04 000BAD04  BF 41 00 08 */	stmw r26, 8(r1)
/* 800BDF08 000BAD08  7C 7A 1B 78 */	mr r26, r3
/* 800BDF0C 000BAD0C  3B C0 00 00 */	li r30, 0
/* 800BDF10 000BAD10  3B A0 00 27 */	li r29, 0x27
/* 800BDF14 000BAD14  48 00 00 44 */	b lbl_800BDF58
lbl_800BDF18:
/* 800BDF18 000BAD18  7C 1E EA 14 */	add r0, r30, r29
/* 800BDF1C 000BAD1C  7F 43 D3 78 */	mr r3, r26
/* 800BDF20 000BAD20  54 1C F8 7E */	srwi r28, r0, 1
/* 800BDF24 000BAD24  1C 1C 00 0C */	mulli r0, r28, 0xc
/* 800BDF28 000BAD28  7F 7F 02 14 */	add r27, r31, r0
/* 800BDF2C 000BAD2C  7F 64 DB 78 */	mr r4, r27
/* 800BDF30 000BAD30  4B F8 EA 05 */	bl icompare__FRC6substrRC6substr
/* 800BDF34 000BAD34  2C 03 00 00 */	cmpwi r3, 0
/* 800BDF38 000BAD38  40 80 00 0C */	bge lbl_800BDF44
/* 800BDF3C 000BAD3C  7F 9D E3 78 */	mr r29, r28
/* 800BDF40 000BAD40  48 00 00 20 */	b lbl_800BDF60
lbl_800BDF44:
/* 800BDF44 000BAD44  40 81 00 0C */	ble lbl_800BDF50
/* 800BDF48 000BAD48  3B DC 00 01 */	addi r30, r28, 1
/* 800BDF4C 000BAD4C  48 00 00 14 */	b lbl_800BDF60
lbl_800BDF50:
/* 800BDF50 000BAD50  7F 63 DB 78 */	mr r3, r27
/* 800BDF54 000BAD54  48 00 00 18 */	b lbl_800BDF6C
lbl_800BDF58:
/* 800BDF58 000BAD58  3C 60 80 29 */	lis r3, l_1748_vars__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_@ha
/* 800BDF5C 000BAD5C  3B E3 17 48 */	addi r31, r3, l_1748_vars__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_@l
lbl_800BDF60:
/* 800BDF60 000BAD60  7C 1E E8 40 */	cmplw r30, r29
/* 800BDF64 000BAD64  40 82 FF B4 */	bne lbl_800BDF18
/* 800BDF68 000BAD68  38 60 00 00 */	li r3, 0
lbl_800BDF6C:
/* 800BDF6C 000BAD6C  BB 41 00 08 */	lmw r26, 8(r1)
/* 800BDF70 000BAD70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BDF74 000BAD74  7C 08 03 A6 */	mtlr r0
/* 800BDF78 000BAD78  38 21 00 20 */	addi r1, r1, 0x20
/* 800BDF7C 000BAD7C  4E 80 00 20 */	blr 
.global parse_tag_var__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_FRQ28xtextbox3jotRC8xtextboxRC8xtextboxRCQ28xtextbox9split_tag
parse_tag_var__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_FRQ28xtextbox3jotRC8xtextboxRC8xtextboxRCQ28xtextbox9split_tag:
/* 800BDF80 000BAD80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BDF84 000BAD84  7C 08 02 A6 */	mflr r0
/* 800BDF88 000BAD88  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BDF8C 000BAD8C  80 06 00 14 */	lwz r0, 0x14(r6)
/* 800BDF90 000BAD90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BDF94 000BAD94  7C 7F 1B 78 */	mr r31, r3
/* 800BDF98 000BAD98  28 00 00 01 */	cmplwi r0, 1
/* 800BDF9C 000BAD9C  40 82 00 70 */	bne lbl_800BE00C
/* 800BDFA0 000BADA0  80 66 00 10 */	lwz r3, 0x10(r6)
/* 800BDFA4 000BADA4  88 03 00 00 */	lbz r0, 0(r3)
/* 800BDFA8 000BADA8  28 00 00 3A */	cmplwi r0, 0x3a
/* 800BDFAC 000BADAC  40 82 00 60 */	bne lbl_800BE00C
/* 800BDFB0 000BADB0  80 06 00 1C */	lwz r0, 0x1c(r6)
/* 800BDFB4 000BADB4  28 00 00 01 */	cmplwi r0, 1
/* 800BDFB8 000BADB8  41 81 00 08 */	bgt lbl_800BDFC0
/* 800BDFBC 000BADBC  48 00 00 50 */	b lbl_800BE00C
lbl_800BDFC0:
/* 800BDFC0 000BADC0  38 66 00 18 */	addi r3, r6, 0x18
/* 800BDFC4 000BADC4  48 00 00 89 */	bl var_text__FRC6substr
/* 800BDFC8 000BADC8  90 7F 00 10 */	stw r3, 0x10(r31)
/* 800BDFCC 000BADCC  38 00 00 00 */	li r0, 0
/* 800BDFD0 000BADD0  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 800BDFD4 000BADD4  80 1F 00 10 */	lwz r0, 0x10(r31)
/* 800BDFD8 000BADD8  28 00 00 00 */	cmplwi r0, 0
/* 800BDFDC 000BADDC  41 82 00 30 */	beq lbl_800BE00C
/* 800BDFE0 000BADE0  3C 80 00 01 */	lis r4, 0x0000FC00@ha
/* 800BDFE4 000BADE4  38 60 00 01 */	li r3, 1
/* 800BDFE8 000BADE8  38 04 FC 00 */	addi r0, r4, 0x0000FC00@l
/* 800BDFEC 000BADEC  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 800BDFF0 000BADF0  88 1F 00 09 */	lbz r0, 9(r31)
/* 800BDFF4 000BADF4  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 800BDFF8 000BADF8  98 1F 00 09 */	stb r0, 9(r31)
/* 800BDFFC 000BADFC  54 03 D7 FE */	rlwinm r3, r0, 0x1a, 0x1f, 0x1f
/* 800BE000 000BAE00  88 1F 00 09 */	lbz r0, 9(r31)
/* 800BE004 000BAE04  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 800BE008 000BAE08  98 1F 00 09 */	stb r0, 9(r31)
lbl_800BE00C:
/* 800BE00C 000BAE0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BE010 000BAE10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BE014 000BAE14  7C 08 03 A6 */	mtlr r0
/* 800BE018 000BAE18  38 21 00 10 */	addi r1, r1, 0x10
/* 800BE01C 000BAE1C  4E 80 00 20 */	blr 

.global var_init__Fv
var_init__Fv:
/* 800BE020 000BAE20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BE024 000BAE24  7C 08 02 A6 */	mflr r0
/* 800BE028 000BAE28  3C 60 80 29 */	lis r3, l_191c_var_tag_esc__6_1042@ha
/* 800BE02C 000BAE2C  38 80 00 01 */	li r4, 1
/* 800BE030 000BAE30  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BE034 000BAE34  38 63 19 1C */	addi r3, r3, l_191c_var_tag_esc__6_1042@l
/* 800BE038 000BAE38  4B F6 7B 5D */	bl register_tags__8xtextboxFPCQ28xtextbox8tag_typeUl
/* 800BE03C 000BAE3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BE040 000BAE40  7C 08 03 A6 */	mtlr r0
/* 800BE044 000BAE44  38 21 00 10 */	addi r1, r1, 0x10
/* 800BE048 000BAE48  4E 80 00 20 */	blr 

.global var_text__FRC6substr
var_text__FRC6substr:
/* 800BE04C 000BAE4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BE050 000BAE50  7C 08 02 A6 */	mflr r0
/* 800BE054 000BAE54  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BE058 000BAE58  4B FF FE A1 */	bl find_var__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_FRC6substr
/* 800BE05C 000BAE5C  28 03 00 00 */	cmplwi r3, 0
/* 800BE060 000BAE60  40 82 00 0C */	bne lbl_800BE06C
/* 800BE064 000BAE64  38 60 00 00 */	li r3, 0
/* 800BE068 000BAE68  48 00 00 10 */	b lbl_800BE078
lbl_800BE06C:
/* 800BE06C 000BAE6C  81 83 00 08 */	lwz r12, 8(r3)
/* 800BE070 000BAE70  7D 89 03 A6 */	mtctr r12
/* 800BE074 000BAE74  4E 80 04 21 */	bctrl 
lbl_800BE078:
/* 800BE078 000BAE78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BE07C 000BAE7C  7C 08 03 A6 */	mtlr r0
/* 800BE080 000BAE80  38 21 00 10 */	addi r1, r1, 0x10
/* 800BE084 000BAE84  4E 80 00 20 */	blr 

.global zVarInit__FP9zVarEntry
zVarInit__FP9zVarEntry:
/* 800BE088 000BAE88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BE08C 000BAE8C  7C 08 02 A6 */	mflr r0
/* 800BE090 000BAE90  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BE094 000BAE94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BE098 000BAE98  7C 7F 1B 78 */	mr r31, r3
/* 800BE09C 000BAE9C  93 C1 00 08 */	stw r30, 8(r1)
/* 800BE0A0 000BAEA0  3B C0 00 00 */	li r30, 0
lbl_800BE0A4:
/* 800BE0A4 000BAEA4  80 7F 00 08 */	lwz r3, 8(r31)
/* 800BE0A8 000BAEA8  4B F8 E1 6D */	bl xStrHash__FPCc
/* 800BE0AC 000BAEAC  3B DE 00 01 */	addi r30, r30, 1
/* 800BE0B0 000BAEB0  90 7F 00 04 */	stw r3, 4(r31)
/* 800BE0B4 000BAEB4  2C 1E 00 12 */	cmpwi r30, 0x12
/* 800BE0B8 000BAEB8  3B FF 00 10 */	addi r31, r31, 0x10
/* 800BE0BC 000BAEBC  41 80 FF E8 */	blt lbl_800BE0A4
/* 800BE0C0 000BAEC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BE0C4 000BAEC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BE0C8 000BAEC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800BE0CC 000BAECC  7C 08 03 A6 */	mtlr r0
/* 800BE0D0 000BAED0  38 21 00 10 */	addi r1, r1, 0x10
/* 800BE0D4 000BAED4  4E 80 00 20 */	blr 

.global zVarNewGame__Fv
zVarNewGame__Fv:
/* 800BE0D8 000BAED8  4E 80 00 20 */	blr 

.global zVarEntryCB_SndMode__FPv
zVarEntryCB_SndMode__FPv:
/* 800BE0DC 000BAEDC  3C 60 80 3C */	lis r3, gSnd@ha
/* 800BE0E0 000BAEE0  38 63 D5 B4 */	addi r3, r3, gSnd@l
/* 800BE0E4 000BAEE4  80 63 00 00 */	lwz r3, 0(r3)
/* 800BE0E8 000BAEE8  4E 80 00 20 */	blr 

.global zVarEntryCB_SndMusicVol__FPv
zVarEntryCB_SndMusicVol__FPv:
/* 800BE0EC 000BAEEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BE0F0 000BAEF0  7C 08 02 A6 */	mflr r0
/* 800BE0F4 000BAEF4  3C 60 80 3C */	lis r3, gSnd@ha
/* 800BE0F8 000BAEF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BE0FC 000BAEFC  38 63 D5 B4 */	addi r3, r3, gSnd@l
/* 800BE100 000BAF00  C8 22 96 28 */	lfd f1, l_dfa8__esc__2_1136@sda21(r2)
/* 800BE104 000BAF04  C0 43 00 10 */	lfs f2, 0x10(r3)
/* 800BE108 000BAF08  C8 02 96 30 */	lfd f0, l_dfb0__esc__2_1137@sda21(r2)
/* 800BE10C 000BAF0C  FC 42 00 72 */	fmul f2, f2, f1
/* 800BE110 000BAF10  FC 20 10 2A */	fadd f1, f0, f2
/* 800BE114 000BAF14  48 12 F2 C9 */	bl __cvt_fp2unsigned
/* 800BE118 000BAF18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BE11C 000BAF1C  7C 08 03 A6 */	mtlr r0
/* 800BE120 000BAF20  38 21 00 10 */	addi r1, r1, 0x10
/* 800BE124 000BAF24  4E 80 00 20 */	blr 

.global zVarEntryCB_SndFXVol__FPv
zVarEntryCB_SndFXVol__FPv:
/* 800BE128 000BAF28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BE12C 000BAF2C  7C 08 02 A6 */	mflr r0
/* 800BE130 000BAF30  3C 60 80 3C */	lis r3, gSnd@ha
/* 800BE134 000BAF34  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BE138 000BAF38  38 63 D5 B4 */	addi r3, r3, gSnd@l
/* 800BE13C 000BAF3C  C8 22 96 28 */	lfd f1, l_dfa8__esc__2_1136@sda21(r2)
/* 800BE140 000BAF40  C0 43 00 08 */	lfs f2, 8(r3)
/* 800BE144 000BAF44  C8 02 96 30 */	lfd f0, l_dfb0__esc__2_1137@sda21(r2)
/* 800BE148 000BAF48  FC 42 00 72 */	fmul f2, f2, f1
/* 800BE14C 000BAF4C  FC 20 10 2A */	fadd f1, f0, f2
/* 800BE150 000BAF50  48 12 F2 8D */	bl __cvt_fp2unsigned
/* 800BE154 000BAF54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BE158 000BAF58  7C 08 03 A6 */	mtlr r0
/* 800BE15C 000BAF5C  38 21 00 10 */	addi r1, r1, 0x10
/* 800BE160 000BAF60  4E 80 00 20 */	blr 
.global zVarEntryCB_MCAvailable__FPv
zVarEntryCB_MCAvailable__FPv:
/* 800BE164 000BAF64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BE168 000BAF68  7C 08 02 A6 */	mflr r0
/* 800BE16C 000BAF6C  38 60 00 00 */	li r3, 0
/* 800BE170 000BAF70  38 80 00 00 */	li r4, 0
/* 800BE174 000BAF74  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BE178 000BAF78  4B F7 F1 09 */	bl xSGGameIsEmpty__FP17st_XSAVEGAME_DATAi
/* 800BE17C 000BAF7C  2C 03 00 01 */	cmpwi r3, 1
/* 800BE180 000BAF80  40 82 00 3C */	bne lbl_800BE1BC
/* 800BE184 000BAF84  38 60 00 00 */	li r3, 0
/* 800BE188 000BAF88  38 80 00 01 */	li r4, 1
/* 800BE18C 000BAF8C  4B F7 F0 F5 */	bl xSGGameIsEmpty__FP17st_XSAVEGAME_DATAi
/* 800BE190 000BAF90  2C 03 00 01 */	cmpwi r3, 1
/* 800BE194 000BAF94  40 82 00 0C */	bne lbl_800BE1A0
/* 800BE198 000BAF98  38 60 00 00 */	li r3, 0
/* 800BE19C 000BAF9C  48 00 00 70 */	b lbl_800BE20C
lbl_800BE1A0:
/* 800BE1A0 000BAFA0  38 60 00 00 */	li r3, 0
/* 800BE1A4 000BAFA4  38 80 00 01 */	li r4, 1
/* 800BE1A8 000BAFA8  4B F7 F0 D9 */	bl xSGGameIsEmpty__FP17st_XSAVEGAME_DATAi
/* 800BE1AC 000BAFAC  2C 03 00 00 */	cmpwi r3, 0
/* 800BE1B0 000BAFB0  40 82 00 58 */	bne lbl_800BE208
/* 800BE1B4 000BAFB4  38 60 00 02 */	li r3, 2
/* 800BE1B8 000BAFB8  48 00 00 54 */	b lbl_800BE20C
lbl_800BE1BC:
/* 800BE1BC 000BAFBC  38 60 00 00 */	li r3, 0
/* 800BE1C0 000BAFC0  38 80 00 00 */	li r4, 0
/* 800BE1C4 000BAFC4  4B F7 F0 BD */	bl xSGGameIsEmpty__FP17st_XSAVEGAME_DATAi
/* 800BE1C8 000BAFC8  2C 03 00 00 */	cmpwi r3, 0
/* 800BE1CC 000BAFCC  40 82 00 3C */	bne lbl_800BE208
/* 800BE1D0 000BAFD0  38 60 00 00 */	li r3, 0
/* 800BE1D4 000BAFD4  38 80 00 01 */	li r4, 1
/* 800BE1D8 000BAFD8  4B F7 F0 A9 */	bl xSGGameIsEmpty__FP17st_XSAVEGAME_DATAi
/* 800BE1DC 000BAFDC  2C 03 00 01 */	cmpwi r3, 1
/* 800BE1E0 000BAFE0  40 82 00 0C */	bne lbl_800BE1EC
/* 800BE1E4 000BAFE4  38 60 00 01 */	li r3, 1
/* 800BE1E8 000BAFE8  48 00 00 24 */	b lbl_800BE20C
lbl_800BE1EC:
/* 800BE1EC 000BAFEC  38 60 00 00 */	li r3, 0
/* 800BE1F0 000BAFF0  38 80 00 01 */	li r4, 1
/* 800BE1F4 000BAFF4  4B F7 F0 8D */	bl xSGGameIsEmpty__FP17st_XSAVEGAME_DATAi
/* 800BE1F8 000BAFF8  2C 03 00 00 */	cmpwi r3, 0
/* 800BE1FC 000BAFFC  40 82 00 0C */	bne lbl_800BE208
/* 800BE200 000BB000  38 60 00 03 */	li r3, 3
/* 800BE204 000BB004  48 00 00 08 */	b lbl_800BE20C
lbl_800BE208:
/* 800BE208 000BB008  38 60 00 00 */	li r3, 0
lbl_800BE20C:
/* 800BE20C 000BB00C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BE210 000BB010  7C 08 03 A6 */	mtlr r0
/* 800BE214 000BB014  38 21 00 10 */	addi r1, r1, 0x10
/* 800BE218 000BB018  4E 80 00 20 */	blr 

.global zVarEntryCB_VibrationOn__FPv
zVarEntryCB_VibrationOn__FPv:
/* 800BE21C 000BB01C  3C 60 80 3C */	lis r3, globals@ha
/* 800BE220 000BB020  38 63 05 58 */	addi r3, r3, globals@l
/* 800BE224 000BB024  80 03 06 C0 */	lwz r0, 0x6c0(r3)
/* 800BE228 000BB028  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 800BE22C 000BB02C  4E 80 00 20 */	blr 
.global zVarEntryCB_CurrentSceneLetter__FPv
zVarEntryCB_CurrentSceneLetter__FPv:
/* 800BE230 000BB030  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BE234 000BB034  7C 08 02 A6 */	mflr r0
/* 800BE238 000BB038  3C 60 80 3C */	lis r3, globals@ha
/* 800BE23C 000BB03C  38 80 00 00 */	li r4, 0
/* 800BE240 000BB040  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BE244 000BB044  38 63 05 58 */	addi r3, r3, globals@l
/* 800BE248 000BB048  80 63 1F C0 */	lwz r3, 0x1fc0(r3)
/* 800BE24C 000BB04C  80 63 00 00 */	lwz r3, 0(r3)
/* 800BE250 000BB050  4B F8 FA 45 */	bl xUtil_idtag2string__FUii
/* 800BE254 000BB054  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BE258 000BB058  7C 65 1B 78 */	mr r5, r3
/* 800BE25C 000BB05C  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BE260 000BB060  38 61 00 08 */	addi r3, r1, 8
/* 800BE264 000BB064  38 84 00 10 */	addi r4, r4, 0x10
/* 800BE268 000BB068  4C C6 31 82 */	crclr 6
/* 800BE26C 000BB06C  48 12 5C C9 */	bl sprintf
/* 800BE270 000BB070  88 61 00 08 */	lbz r3, 8(r1)
/* 800BE274 000BB074  38 00 00 00 */	li r0, 0
/* 800BE278 000BB078  28 03 00 61 */	cmplwi r3, 0x61
/* 800BE27C 000BB07C  41 80 00 10 */	blt lbl_800BE28C
/* 800BE280 000BB080  28 03 00 7A */	cmplwi r3, 0x7a
/* 800BE284 000BB084  41 81 00 08 */	bgt lbl_800BE28C
/* 800BE288 000BB088  38 00 00 01 */	li r0, 1
lbl_800BE28C:
/* 800BE28C 000BB08C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800BE290 000BB090  41 82 00 08 */	beq lbl_800BE298
/* 800BE294 000BB094  38 63 FF E0 */	addi r3, r3, -32
lbl_800BE298:
/* 800BE298 000BB098  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BE29C 000BB09C  38 63 FF C0 */	addi r3, r3, -64
/* 800BE2A0 000BB0A0  7C 08 03 A6 */	mtlr r0
/* 800BE2A4 000BB0A4  38 21 00 20 */	addi r1, r1, 0x20
/* 800BE2A8 000BB0A8  4E 80 00 20 */	blr 
.global zVarEntryCB_CurrentRoom__FPv
zVarEntryCB_CurrentRoom__FPv:
/* 800BE2AC 000BB0AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800BE2B0 000BB0B0  7C 08 02 A6 */	mflr r0
/* 800BE2B4 000BB0B4  3C 60 80 3C */	lis r3, globals@ha
/* 800BE2B8 000BB0B8  38 80 00 00 */	li r4, 0
/* 800BE2BC 000BB0BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800BE2C0 000BB0C0  38 63 05 58 */	addi r3, r3, globals@l
/* 800BE2C4 000BB0C4  80 63 1F C0 */	lwz r3, 0x1fc0(r3)
/* 800BE2C8 000BB0C8  80 63 00 00 */	lwz r3, 0(r3)
/* 800BE2CC 000BB0CC  4B F8 F9 C9 */	bl xUtil_idtag2string__FUii
/* 800BE2D0 000BB0D0  3C 80 80 26 */	lis r4, l_fcb0__esc__2_stringBase0@ha
/* 800BE2D4 000BB0D4  7C 65 1B 78 */	mr r5, r3
/* 800BE2D8 000BB0D8  38 84 FC B0 */	addi r4, r4, l_fcb0__esc__2_stringBase0@l
/* 800BE2DC 000BB0DC  38 61 00 08 */	addi r3, r1, 8
/* 800BE2E0 000BB0E0  38 84 00 10 */	addi r4, r4, 0x10
/* 800BE2E4 000BB0E4  4C C6 31 82 */	crclr 6
/* 800BE2E8 000BB0E8  48 12 5C 4D */	bl sprintf
/* 800BE2EC 000BB0EC  88 61 00 0A */	lbz r3, 0xa(r1)
/* 800BE2F0 000BB0F0  38 00 00 00 */	li r0, 0
/* 800BE2F4 000BB0F4  88 A1 00 08 */	lbz r5, 8(r1)
/* 800BE2F8 000BB0F8  38 63 FF D0 */	addi r3, r3, -48
/* 800BE2FC 000BB0FC  88 81 00 0B */	lbz r4, 0xb(r1)
/* 800BE300 000BB100  1C 63 00 0A */	mulli r3, r3, 0xa
/* 800BE304 000BB104  28 05 00 61 */	cmplwi r5, 0x61
/* 800BE308 000BB108  7C 64 1A 14 */	add r3, r4, r3
/* 800BE30C 000BB10C  38 63 FF D0 */	addi r3, r3, -48
/* 800BE310 000BB110  41 80 00 10 */	blt lbl_800BE320
/* 800BE314 000BB114  28 05 00 7A */	cmplwi r5, 0x7a
/* 800BE318 000BB118  41 81 00 08 */	bgt lbl_800BE320
/* 800BE31C 000BB11C  38 00 00 01 */	li r0, 1
lbl_800BE320:
/* 800BE320 000BB120  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800BE324 000BB124  41 82 00 08 */	beq lbl_800BE32C
/* 800BE328 000BB128  38 A5 FF E0 */	addi r5, r5, -32
lbl_800BE32C:
/* 800BE32C 000BB12C  38 05 FF C0 */	addi r0, r5, -64
/* 800BE330 000BB130  1C 00 00 64 */	mulli r0, r0, 0x64
/* 800BE334 000BB134  7C 63 02 14 */	add r3, r3, r0
/* 800BE338 000BB138  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800BE33C 000BB13C  7C 08 03 A6 */	mtlr r0
/* 800BE340 000BB140  38 21 00 20 */	addi r1, r1, 0x20
/* 800BE344 000BB144  4E 80 00 20 */	blr 
.global zVarEntryCB_CurrentLevelPickup__FPv
zVarEntryCB_CurrentLevelPickup__FPv:
/* 800BE348 000BB148  3C 60 80 3C */	lis r3, globals@ha
/* 800BE34C 000BB14C  38 63 05 58 */	addi r3, r3, globals@l
/* 800BE350 000BB150  80 63 1B C0 */	lwz r3, 0x1bc0(r3)
/* 800BE354 000BB154  4E 80 00 20 */	blr 
.global zVarEntryCB_CurrentLevelPSocks__FPv
zVarEntryCB_CurrentLevelPSocks__FPv:
/* 800BE358 000BB158  3C 60 80 3C */	lis r3, globals@ha
/* 800BE35C 000BB15C  38 63 05 58 */	addi r3, r3, globals@l
/* 800BE360 000BB160  80 63 1B 80 */	lwz r3, 0x1b80(r3)
/* 800BE364 000BB164  4E 80 00 20 */	blr 
.global zVarEntryCB_TotalPSocks__FPv
zVarEntryCB_TotalPSocks__FPv:
/* 800BE368 000BB168  3C 60 80 3C */	lis r3, globals@ha
/* 800BE36C 000BB16C  38 63 05 58 */	addi r3, r3, globals@l
/* 800BE370 000BB170  80 63 1B C4 */	lwz r3, 0x1bc4(r3)
/* 800BE374 000BB174  4E 80 00 20 */	blr 
.global zVarEntryCB_Shinies__FPv
zVarEntryCB_Shinies__FPv:
/* 800BE378 000BB178  3C 60 80 3C */	lis r3, globals@ha
/* 800BE37C 000BB17C  38 63 05 58 */	addi r3, r3, globals@l
/* 800BE380 000BB180  80 63 1B 00 */	lwz r3, 0x1b00(r3)
/* 800BE384 000BB184  4E 80 00 20 */	blr 
.global zVarEntryCB_Spatulas__FPv
zVarEntryCB_Spatulas__FPv:
/* 800BE388 000BB188  3C 60 80 3C */	lis r3, globals@ha
/* 800BE38C 000BB18C  38 63 05 58 */	addi r3, r3, globals@l
/* 800BE390 000BB190  80 63 1B 04 */	lwz r3, 0x1b04(r3)
/* 800BE394 000BB194  4E 80 00 20 */	blr 
.global zVarEntryCB_Date__FPv
zVarEntryCB_Date__FPv:
/* 800BE398 000BB198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BE39C 000BB19C  7C 08 02 A6 */	mflr r0
/* 800BE3A0 000BB1A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BE3A4 000BB1A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BE3A8 000BB1A8  48 01 61 CD */	bl iGetMonth__Fv
/* 800BE3AC 000BB1AC  1F E3 00 64 */	mulli r31, r3, 0x64
/* 800BE3B0 000BB1B0  48 01 61 99 */	bl iGetDay__Fv
/* 800BE3B4 000BB1B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BE3B8 000BB1B8  7C 63 FA 14 */	add r3, r3, r31
/* 800BE3BC 000BB1BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BE3C0 000BB1C0  7C 08 03 A6 */	mtlr r0
/* 800BE3C4 000BB1C4  38 21 00 10 */	addi r1, r1, 0x10
/* 800BE3C8 000BB1C8  4E 80 00 20 */	blr 
.global zVarEntryCB_Hour__FPv
zVarEntryCB_Hour__FPv:
/* 800BE3CC 000BB1CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BE3D0 000BB1D0  7C 08 02 A6 */	mflr r0
/* 800BE3D4 000BB1D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BE3D8 000BB1D8  48 01 61 45 */	bl iGetHour__Fv
/* 800BE3DC 000BB1DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BE3E0 000BB1E0  7C 08 03 A6 */	mtlr r0
/* 800BE3E4 000BB1E4  38 21 00 10 */	addi r1, r1, 0x10
/* 800BE3E8 000BB1E8  4E 80 00 20 */	blr 
.global zVarEntryCB_Minute__FPv
zVarEntryCB_Minute__FPv:
/* 800BE3EC 000BB1EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BE3F0 000BB1F0  7C 08 02 A6 */	mflr r0
/* 800BE3F4 000BB1F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BE3F8 000BB1F8  48 01 60 F9 */	bl iGetMinute__Fv
/* 800BE3FC 000BB1FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BE400 000BB200  7C 08 03 A6 */	mtlr r0
/* 800BE404 000BB204  38 21 00 10 */	addi r1, r1, 0x10
/* 800BE408 000BB208  4E 80 00 20 */	blr 
.global zVarEntryCB_CounterValue__FPv
zVarEntryCB_CounterValue__FPv:
/* 800BE40C 000BB20C  A8 63 00 14 */	lha r3, 0x14(r3)
/* 800BE410 000BB210  4E 80 00 20 */	blr 
.global zVarEntryCB_IsEnabled__FPv
zVarEntryCB_IsEnabled__FPv:
/* 800BE414 000BB214  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BE418 000BB218  7C 08 02 A6 */	mflr r0
/* 800BE41C 000BB21C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BE420 000BB220  4B F4 B1 19 */	bl xBaseIsEnabled__FPC5xBase
/* 800BE424 000BB224  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 800BE428 000BB228  7C 03 00 D0 */	neg r0, r3
/* 800BE42C 000BB22C  7C 00 1B 78 */	or r0, r0, r3
/* 800BE430 000BB230  54 03 0F FE */	srwi r3, r0, 0x1f
/* 800BE434 000BB234  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BE438 000BB238  7C 08 03 A6 */	mtlr r0
/* 800BE43C 000BB23C  38 21 00 10 */	addi r1, r1, 0x10
/* 800BE440 000BB240  4E 80 00 20 */	blr 
.global zVarEntryCB_IsVisible__FPv
zVarEntryCB_IsVisible__FPv:
/* 800BE444 000BB244  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BE448 000BB248  7C 08 02 A6 */	mflr r0
/* 800BE44C 000BB24C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BE450 000BB250  4B F5 01 E9 */	bl xEntIsVisible__FPC4xEnt
/* 800BE454 000BB254  7C 03 00 D0 */	neg r0, r3
/* 800BE458 000BB258  7C 00 1B 78 */	or r0, r0, r3
/* 800BE45C 000BB25C  54 03 0F FE */	srwi r3, r0, 0x1f
/* 800BE460 000BB260  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BE464 000BB264  7C 08 03 A6 */	mtlr r0
/* 800BE468 000BB268  38 21 00 10 */	addi r1, r1, 0x10
/* 800BE46C 000BB26C  4E 80 00 20 */	blr 
.section .rodata
l_f9e8__esc__2_449:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
l_f9f4__esc__2_450:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
l_fa00__esc__2_454:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
l_fa0c__esc__2_485:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
l_fa18__esc__2_617:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
l_fa40__esc__2_618:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
l_fa68__esc__2_619:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
l_fa90__esc__2_620:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
l_fab8__esc__2_621:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
l_fae0__esc__2_622:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
l_fb08__esc__2_623:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
l_fb30_screen_bounds:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x3F800000
	.4byte 0x3F800000
l_fb40_default_adjust:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x3F800000
	.4byte 0x3F800000
l_fb50__esc__2_838:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
l_fb70__esc__2_839:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
l_fb90__esc__2_840:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
l_fbb0__esc__2_841:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
l_fcb0__esc__2_stringBase0:
	.4byte 0x25640025
	.4byte 0x63004120
	.4byte 0x6F722042
	.4byte 0x00000A00
	.4byte 0x25730025
	.4byte 0x732F2563
	.4byte 0x25630025
	.4byte 0x63256300
	.4byte 0x504D0041
	.4byte 0x4D002564
	.4byte 0x3A256325
	.4byte 0x63202573
	.4byte 0x00257320
	.4byte 0x25730045
	.4byte 0x6D707479
	.4byte 0x00416363
	.4byte 0x65737369
	.4byte 0x6E67004C
	.4byte 0x6F616469
	.4byte 0x6E672064
	.4byte 0x61746100
	.4byte 0x53617669
	.4byte 0x6E672064
	.4byte 0x61746100
	.4byte 0x466F726D
	.4byte 0x61747469
	.4byte 0x6E67206D
	.4byte 0x656D6F72
	.4byte 0x79206361
	.4byte 0x7264007B
	.4byte 0x693A7465
	.4byte 0x78745F70
	.4byte 0x6C617965
	.4byte 0x725F6865
	.4byte 0x7D007B69
	.4byte 0x3A746578
	.4byte 0x745F706C
	.4byte 0x61796572
	.4byte 0x5F736865
	.4byte 0x7D007B69
	.4byte 0x3A746578
	.4byte 0x745F7370
	.4byte 0x6F6E6765
	.4byte 0x626F625F
	.4byte 0x6E616D65
	.4byte 0x7D007B69
	.4byte 0x3A746578
	.4byte 0x745F7061
	.4byte 0x74726963
	.4byte 0x6B5F6E61
	.4byte 0x6D657D00
	.4byte 0x7B693A74
	.4byte 0x6578745F
	.4byte 0x73616E64
	.4byte 0x795F6E61
	.4byte 0x6D657D00
	.4byte 0x25642C25
	.4byte 0x642C2564
	.4byte 0x007B693A
	.4byte 0x74657874
	.4byte 0x5F6E6F73
	.4byte 0x68696E69
	.4byte 0x65737D00
	.4byte 0x31207B69
	.4byte 0x3A746578
	.4byte 0x745F7368
	.4byte 0x696E797D
	.4byte 0x00256420
	.4byte 0x7B693A74
	.4byte 0x6578745F
	.4byte 0x7368696E
	.4byte 0x6965737D
	.4byte 0x007B693A
	.4byte 0x4C44204D
	.4byte 0x43312054
	.4byte 0x58547D00
	.4byte 0x7B693A4C
	.4byte 0x44204D43
	.4byte 0x32205458
	.4byte 0x547D0041
	.4byte 0x63746976
	.4byte 0x65506164
	.4byte 0x00426164
	.4byte 0x43617264
	.4byte 0x00426164
	.4byte 0x43617264
	.4byte 0x41766169
	.4byte 0x6C61626C
	.4byte 0x65004261
	.4byte 0x64436172
	.4byte 0x644E6565
	.4byte 0x64656400
	.4byte 0x436F7272
	.4byte 0x75707446
	.4byte 0x696C654E
	.4byte 0x616D6500
	.4byte 0x43757272
	.4byte 0x656E7441
	.4byte 0x72656100
	.4byte 0x43757272
	.4byte 0x656E7444
	.4byte 0x61746500
	.4byte 0x43757272
	.4byte 0x656E744C
	.4byte 0x6576656C
	.4byte 0x436F6C6C
	.4byte 0x65637461
	.4byte 0x626C6500
	.4byte 0x43757272
	.4byte 0x656E744C
	.4byte 0x6576656C
	.4byte 0x50617473
	.4byte 0x536F636B
	.4byte 0x73004375
	.4byte 0x7272656E
	.4byte 0x74536365
	.4byte 0x6E650043
	.4byte 0x75727265
	.4byte 0x6E745469
	.4byte 0x6D650047
	.4byte 0x616D6553
	.4byte 0x6C6F7430
	.4byte 0x0047616D
	.4byte 0x65536C6F
	.4byte 0x74310047
	.4byte 0x616D6553
	.4byte 0x6C6F7432
	.4byte 0x0047616D
	.4byte 0x65536C6F
	.4byte 0x74330047
	.4byte 0x616D6553
	.4byte 0x6C6F7434
	.4byte 0x0047616D
	.4byte 0x65536C6F
	.4byte 0x74350047
	.4byte 0x616D6553
	.4byte 0x6C6F7436
	.4byte 0x0047616D
	.4byte 0x65536C6F
	.4byte 0x7437004D
	.4byte 0x43416363
	.4byte 0x65737354
	.4byte 0x79706500
	.4byte 0x4D434175
	.4byte 0x746F5361
	.4byte 0x76654361
	.4byte 0x7264004D
	.4byte 0x434E616D
	.4byte 0x65004D43
	.4byte 0x5053324D
	.4byte 0x61785370
	.4byte 0x61636500
	.4byte 0x4D435053
	.4byte 0x324D696E
	.4byte 0x53706163
	.4byte 0x65004D43
	.4byte 0x53656C65
	.4byte 0x63746564
	.4byte 0x43617264
	.4byte 0x004D4353
	.4byte 0x656C6563
	.4byte 0x74656447
	.4byte 0x616D6500
	.4byte 0x506C6179
	.4byte 0x65724865
	.4byte 0x53686500
	.4byte 0x506C6179
	.4byte 0x65724E61
	.4byte 0x6D650050
	.4byte 0x6C617965
	.4byte 0x72506F73
	.4byte 0x6974696F
	.4byte 0x6E005365
	.4byte 0x6C656374
	.4byte 0x65644172
	.4byte 0x65610053
	.4byte 0x68696E79
	.4byte 0x436F756E
	.4byte 0x74005368
	.4byte 0x696E7943
	.4byte 0x6F756E74
	.4byte 0x54657874
	.4byte 0x00536F75
	.4byte 0x6E644658
	.4byte 0x566F6C75
	.4byte 0x6D650053
	.4byte 0x6F756E64
	.4byte 0x4D757369
	.4byte 0x63566F6C
	.4byte 0x756D6500
	.4byte 0x53706163
	.4byte 0x65417661
	.4byte 0x696C6162
	.4byte 0x6C650053
	.4byte 0x70616365
	.4byte 0x41766169
	.4byte 0x6C61626C
	.4byte 0x65537472
	.4byte 0x696E6700
	.4byte 0x53706163
	.4byte 0x654E6565
	.4byte 0x64656400
	.4byte 0x546F7461
	.4byte 0x6C506174
	.4byte 0x73536F63
	.4byte 0x6B730076
	.4byte 0x61720053
	.4byte 0x6F756E64
	.4byte 0x206D6F64
	.4byte 0x65004D75
	.4byte 0x73696320
	.4byte 0x566F6C75
	.4byte 0x6D650053

.section .data
l_16e0_state_text_esc__6_908:
	.4byte l_fcb0__esc__2_stringBase0 + 61
	.4byte l_fcb0__esc__2_stringBase0 + 71
	.4byte l_fcb0__esc__2_stringBase0 + 84
	.4byte l_fcb0__esc__2_stringBase0 + 96
l_16f0_text_esc__6_938:
	.4byte l_fcb0__esc__2_stringBase0 + 119
	.4byte l_fcb0__esc__2_stringBase0 + 119
	.4byte l_fcb0__esc__2_stringBase0 + 138
l_16fc_text_esc__6_943:
	.4byte l_fcb0__esc__2_stringBase0 + 158
	.4byte l_fcb0__esc__2_stringBase0 + 182
	.4byte l_fcb0__esc__2_stringBase0 + 204
l_1708_buffer_esc__6_965:
	.4byte 0x34303030
	.4byte 0x30303030
	.4byte 0x3030207B
	.4byte 0x693A7465
	.4byte 0x78745F73
	.4byte 0x68696E69
	.4byte 0x65737D00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
l_1748_vars__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_:
	.4byte l_fcb0__esc__2_stringBase0 + 319
	.4byte 0x00000009
	.4byte var_text_ActivePad__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BD1B0 */
	.4byte l_fcb0__esc__2_stringBase0 + 329
	.4byte 0x00000007
	.4byte var_text_BadCard__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BD1FC */
	.4byte l_fcb0__esc__2_stringBase0 + 337
	.4byte 0x00000010
	.4byte var_text_BadCardAvailable__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BD26C */
	.4byte l_fcb0__esc__2_stringBase0 + 354
	.4byte 0x0000000D
	.4byte var_text_BadCardNeeded__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BD2AC */
	.4byte l_fcb0__esc__2_stringBase0 + 368
	.4byte 0x0000000F
	.4byte var_text_CorruptFileName__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BD2EC */
	.4byte l_fcb0__esc__2_stringBase0 + 384
	.4byte 0x0000000B
	.4byte var_text_CurrentArea__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BD380 */
	.4byte l_fcb0__esc__2_stringBase0 + 396
	.4byte 0x0000000B
	.4byte var_text_CurrentDate__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BD3B0 */
	.4byte l_fcb0__esc__2_stringBase0 + 408
	.4byte 0x00000017
	.4byte var_text_CurrentLevelCollectable__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BD3E0 */
	.4byte l_fcb0__esc__2_stringBase0 + 432
	.4byte 0x00000015
	.4byte var_text_CurrentLevelPatsSocks__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BD428 */
	.4byte l_fcb0__esc__2_stringBase0 + 454
	.4byte 0x0000000C
	.4byte var_text_CurrentScene__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BD470 */
	.4byte l_fcb0__esc__2_stringBase0 + 467
	.4byte 0x0000000B
	.4byte var_text_CurrentTime__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BD4CC */
	.4byte l_fcb0__esc__2_stringBase0 + 479
	.4byte 0x00000009
	.4byte var_text_GameSlot0__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BD7B8 */
	.4byte l_fcb0__esc__2_stringBase0 + 489
	.4byte 0x00000009
	.4byte var_text_GameSlot1__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BD7E8 */
	.4byte l_fcb0__esc__2_stringBase0 + 499
	.4byte 0x00000009
	.4byte var_text_GameSlot2__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BD818 */
	.4byte l_fcb0__esc__2_stringBase0 + 509
	.4byte 0x00000009
	.4byte var_text_GameSlot3__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BD848 */
	.4byte l_fcb0__esc__2_stringBase0 + 519
	.4byte 0x00000009
	.4byte var_text_GameSlot4__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BD878 */
	.4byte l_fcb0__esc__2_stringBase0 + 529
	.4byte 0x00000009
	.4byte var_text_GameSlot5__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BD8A8 */
	.4byte l_fcb0__esc__2_stringBase0 + 539
	.4byte 0x00000009
	.4byte var_text_GameSlot6__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BD8D8 */
	.4byte l_fcb0__esc__2_stringBase0 + 549
	.4byte 0x00000009
	.4byte var_text_GameSlot7__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BD908 */
	.4byte l_fcb0__esc__2_stringBase0 + 559
	.4byte 0x0000000C
	.4byte var_text_MCAccessType__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BD938 */
	.4byte l_fcb0__esc__2_stringBase0 + 572
	.4byte 0x0000000E
	.4byte var_text_MCAutoSaveCard__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BD968 */
	.4byte l_fcb0__esc__2_stringBase0 + 587
	.4byte 0x00000006
	.4byte var_text_MCName__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BDE68 */
	.4byte l_fcb0__esc__2_stringBase0 + 594
	.4byte 0x0000000D
	.4byte var_text_MCPS2MaxSpace__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BD9B4 */
	.4byte l_fcb0__esc__2_stringBase0 + 608
	.4byte 0x0000000D
	.4byte var_text_MCPS2MinSpace__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BD9F4 */
	.4byte l_fcb0__esc__2_stringBase0 + 622
	.4byte 0x0000000E
	.4byte var_text_MCSelectedCard__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BDA34 */
	.4byte l_fcb0__esc__2_stringBase0 + 637
	.4byte 0x0000000E
	.4byte var_text_MCSelectedGame__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BDA80 */
	.4byte l_fcb0__esc__2_stringBase0 + 652
	.4byte 0x0000000B
	.4byte var_text_PlayerHeShe__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BDAC8 */
	.4byte l_fcb0__esc__2_stringBase0 + 664
	.4byte 0x0000000A
	.4byte var_text_PlayerName__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BDAE0 */
	.4byte l_fcb0__esc__2_stringBase0 + 675
	.4byte 0x0000000E
	.4byte var_text_PlayerPosition__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BDAF8 */
	.4byte l_fcb0__esc__2_stringBase0 + 690
	.4byte 0x0000000C
	.4byte var_text_SelectedArea__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BDB74 */
	.4byte l_fcb0__esc__2_stringBase0 + 703
	.4byte 0x0000000A
	.4byte var_text_ShinyCount__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BDB98 */
	.4byte l_fcb0__esc__2_stringBase0 + 714
	.4byte 0x0000000E
	.4byte var_text_ShinyCountText__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BDBE0 */
	.4byte l_fcb0__esc__2_stringBase0 + 729
	.4byte 0x0000000D
	.4byte var_text_SoundFXVolume__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BDC74 */
	.4byte l_fcb0__esc__2_stringBase0 + 743
	.4byte 0x00000010
	.4byte var_text_SoundMusicVolume__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BDCBC */
	.4byte l_fcb0__esc__2_stringBase0 + 760
	.4byte 0x0000000E
	.4byte var_text_SpaceAvailable__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BDD04 */
	.4byte l_fcb0__esc__2_stringBase0 + 775
	.4byte 0x00000014
	.4byte var_text_SpaceAvailableString__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BDD48 */
	.4byte l_fcb0__esc__2_stringBase0 + 796
	.4byte 0x0000000B
	.4byte var_text_SpaceNeeded__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BDDDC */
	.4byte l_fcb0__esc__2_stringBase0 + 796
	.4byte 0x0000000B
	.4byte var_text_SpaceNeeded__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BDDDC */
	.4byte l_fcb0__esc__2_stringBase0 + 808
	.4byte 0x0000000E
	.4byte var_text_TotalPatsSocks__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_Fv /* 0x800BDE20 */
l_191c_var_tag_esc__6_1042:
	.4byte l_fcb0__esc__2_stringBase0 + 823
	.4byte 0x00000003
	.4byte parse_tag_var__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_FRQ28xtextbox3jotRC8xtextboxRC8xtextboxRCQ28xtextbox9split_tag /* 0x800BDF80 */
	.4byte 0x00000000
	.4byte 0x00000000
/* SPECULATION: link order */
.global zVarEntryTable
zVarEntryTable:
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte l_fcb0__esc__2_stringBase0 + 827
	.4byte zVarEntryCB_SndMode__FPv /* 0x800BE0DC */
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte l_fcb0__esc__2_stringBase0 + 838
	.4byte zVarEntryCB_SndMusicVol__FPv /* 0x800BE0EC */
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte l_fcb0__esc__2_stringBase0 + 851
	.4byte zVarEntryCB_SndFXVol__FPv /* 0x800BE128 */
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte l_fcb0__esc__2_stringBase0 + 862
	.4byte zVarEntryCB_MCAvailable__FPv /* 0x800BE164 */
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte l_fcb0__esc__2_stringBase0 + 884
	.4byte zVarEntryCB_VibrationOn__FPv /* 0x800BE21C */
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte l_fcb0__esc__2_stringBase0 + 900
	.4byte zVarEntryCB_CurrentSceneLetter__FPv /* 0x800BE230 */
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte l_fcb0__esc__2_stringBase0 + 916
	.4byte zVarEntryCB_CurrentRoom__FPv /* 0x800BE2AC */
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte l_fcb0__esc__2_stringBase0 + 921
	.4byte zVarEntryCB_CurrentLevelPickup__FPv /* 0x800BE348 */
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte l_fcb0__esc__2_stringBase0 + 947
	.4byte zVarEntryCB_CurrentLevelPSocks__FPv /* 0x800BE358 */
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte l_fcb0__esc__2_stringBase0 + 959
	.4byte zVarEntryCB_TotalPSocks__FPv /* 0x800BE368 */
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte l_fcb0__esc__2_stringBase0 + 977
	.4byte zVarEntryCB_Shinies__FPv /* 0x800BE378 */
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte l_fcb0__esc__2_stringBase0 + 991
	.4byte zVarEntryCB_Spatulas__FPv /* 0x800BE388 */
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte l_fcb0__esc__2_stringBase0 + 1007
	.4byte zVarEntryCB_Date__FPv /* 0x800BE398 */
	.4byte 0x0000000D
	.4byte 0x00000000
	.4byte l_fcb0__esc__2_stringBase0 + 1020
	.4byte zVarEntryCB_Hour__FPv /* 0x800BE3CC */
	.4byte 0x0000000E
	.4byte 0x00000000
	.4byte l_fcb0__esc__2_stringBase0 + 1033
	.4byte zVarEntryCB_Minute__FPv /* 0x800BE3EC */
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte l_fcb0__esc__2_stringBase0 + 1048
	.4byte zVarEntryCB_CounterValue__FPv /* 0x800BE40C */
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte l_fcb0__esc__2_stringBase0 + 1062
	.4byte zVarEntryCB_IsEnabled__FPv /* 0x800BE414 */
	.4byte 0x00000011
	.4byte 0x00000000
	.4byte l_fcb0__esc__2_stringBase0 + 1087
	.4byte zVarEntryCB_IsVisible__FPv /* 0x800BE444 */
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
/* SPECULATION: link order */
.global __MIXVolumeTable
__MIXVolumeTable:
	.4byte 0x00000001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00010001
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020002
	.4byte 0x00020003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00030003
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040004
	.4byte 0x00040005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050005
	.4byte 0x00050006
	.4byte 0x00060006
	.4byte 0x00060006
	.4byte 0x00060006
	.4byte 0x00060006
	.4byte 0x00060006
	.4byte 0x00060006
	.4byte 0x00070007
	.4byte 0x00070007
	.4byte 0x00070007
	.4byte 0x00070007
	.4byte 0x00070007
	.4byte 0x00070007
	.4byte 0x00080008
	.4byte 0x00080008
	.4byte 0x00080008
	.4byte 0x00080008
	.4byte 0x00080008
	.4byte 0x00090009
	.4byte 0x00090009
	.4byte 0x00090009
	.4byte 0x00090009
	.4byte 0x0009000A
	.4byte 0x000A000A
	.4byte 0x000A000A
	.4byte 0x000A000A
	.4byte 0x000A000A
	.4byte 0x000B000B
	.4byte 0x000B000B
	.4byte 0x000B000B
	.4byte 0x000B000C
	.4byte 0x000C000C
	.4byte 0x000C000C
	.4byte 0x000C000C
	.4byte 0x000D000D
	.4byte 0x000D000D
	.4byte 0x000D000D
	.4byte 0x000D000E
	.4byte 0x000E000E
	.4byte 0x000E000E
	.4byte 0x000E000F
	.4byte 0x000F000F
	.4byte 0x000F000F
	.4byte 0x00100010
	.4byte 0x00100010
	.4byte 0x00100011
	.4byte 0x00110011
	.4byte 0x00110011
	.4byte 0x00120012
	.4byte 0x00120012
	.4byte 0x00120013
	.4byte 0x00130013
	.4byte 0x00130013
	.4byte 0x00140014
	.4byte 0x00140014
	.4byte 0x00150015
	.4byte 0x00150015
	.4byte 0x00160016
	.4byte 0x00160016
	.4byte 0x00170017
	.4byte 0x00170018
	.4byte 0x00180018
	.4byte 0x00180019
	.4byte 0x00190019
	.4byte 0x001A001A
	.4byte 0x001A001A
	.4byte 0x001B001B
	.4byte 0x001B001C
	.4byte 0x001C001C
	.4byte 0x001D001D
	.4byte 0x001D001E
	.4byte 0x001E001E
	.4byte 0x001F001F
	.4byte 0x00200020
	.4byte 0x00200021
	.4byte 0x00210021
	.4byte 0x00220022
	.4byte 0x00230023
	.4byte 0x00230024
	.4byte 0x00240025
	.4byte 0x00250026
	.4byte 0x00260026
	.4byte 0x00270027
	.4byte 0x00280028
	.4byte 0x00290029
	.4byte 0x002A002A
	.4byte 0x002B002B
	.4byte 0x002C002C
	.4byte 0x002D002D
	.4byte 0x002E002E
	.4byte 0x002F002F
	.4byte 0x00300031
	.4byte 0x00310032
	.4byte 0x00320033
	.4byte 0x00330034
	.4byte 0x00350035
	.4byte 0x00360037
	.4byte 0x00370038
	.4byte 0x00380039
	.4byte 0x003A003A
	.4byte 0x003B003C
	.4byte 0x003D003D
	.4byte 0x003E003F
	.4byte 0x003F0040
	.4byte 0x00410042
	.4byte 0x00420043
	.4byte 0x00440045
	.4byte 0x00460046
	.4byte 0x00470048
	.4byte 0x0049004A
	.4byte 0x004B004B
	.4byte 0x004C004D
	.4byte 0x004E004F
	.4byte 0x00500051
	.4byte 0x00520053
	.4byte 0x00540055
	.4byte 0x00560057
	.4byte 0x00580059
	.4byte 0x005A005B
	.4byte 0x005C005D
	.4byte 0x005E005F
	.4byte 0x00600061
	.4byte 0x00620064
	.4byte 0x00650066
	.4byte 0x00670068
	.4byte 0x006A006B
	.4byte 0x006C006D
	.4byte 0x006F0070
	.4byte 0x00710072
	.4byte 0x00740075
	.4byte 0x00760078
	.4byte 0x0079007B
	.4byte 0x007C007E
	.4byte 0x007F0080
	.4byte 0x00820083
	.4byte 0x00850087
	.4byte 0x0088008A
	.4byte 0x008B008D
	.4byte 0x008F0090
	.4byte 0x00920094
	.4byte 0x00950097
	.4byte 0x0099009B
	.4byte 0x009C009E
	.4byte 0x00A000A2
	.4byte 0x00A400A6
	.4byte 0x00A800AA
	.4byte 0x00AB00AD
	.4byte 0x00AF00B2
	.4byte 0x00B400B6
	.4byte 0x00B800BA
	.4byte 0x00BC00BE
	.4byte 0x00C000C3
	.4byte 0x00C500C7
	.4byte 0x00CA00CC
	.4byte 0x00CE00D1
	.4byte 0x00D300D6
	.4byte 0x00D800DB
	.4byte 0x00DD00E0
	.4byte 0x00E200E5
	.4byte 0x00E700EA
	.4byte 0x00ED00F0
	.4byte 0x00F200F5
	.4byte 0x00F800FB
	.4byte 0x00FE0101
	.4byte 0x01040107
	.4byte 0x010A010D
	.4byte 0x01100113
	.4byte 0x0116011A
	.4byte 0x011D0120
	.4byte 0x01240127
	.4byte 0x012A012E
	.4byte 0x01310135
	.4byte 0x0138013C
	.4byte 0x01400143
	.4byte 0x0147014B
	.4byte 0x014F0153
	.4byte 0x0157015B
	.4byte 0x015F0163
	.4byte 0x0167016B
	.4byte 0x016F0173
	.4byte 0x0178017C
	.4byte 0x01800185
	.4byte 0x0189018E
	.4byte 0x01930197
	.4byte 0x019C01A1
	.4byte 0x01A601AB
	.4byte 0x01AF01B4
	.4byte 0x01BA01BF
	.4byte 0x01C401C9
	.4byte 0x01CE01D4
	.4byte 0x01D901DF
	.4byte 0x01E401EA
	.4byte 0x01EF01F5
	.4byte 0x01FB0201
	.4byte 0x0207020D
	.4byte 0x02130219
	.4byte 0x021F0226
	.4byte 0x022C0232
	.4byte 0x02390240
	.4byte 0x0246024D
	.4byte 0x0254025B
	.4byte 0x02620269
	.4byte 0x02700277
	.4byte 0x027E0286
	.4byte 0x028D0295
	.4byte 0x029D02A4
	.4byte 0x02AC02B4
	.4byte 0x02BC02C4
	.4byte 0x02CC02D5
	.4byte 0x02DD02E6
	.4byte 0x02EE02F7
	.4byte 0x03000309
	.4byte 0x0312031B
	.4byte 0x0324032D
	.4byte 0x03370340
	.4byte 0x034A0354
	.4byte 0x035D0367
	.4byte 0x0371037C
	.4byte 0x03860390
	.4byte 0x039B03A6
	.4byte 0x03B103BB
	.4byte 0x03C703D2
	.4byte 0x03DD03E9
	.4byte 0x03F40400
	.4byte 0x040C0418
	.4byte 0x04240430
	.4byte 0x043D0449
	.4byte 0x04560463
	.4byte 0x0470047D
	.4byte 0x048A0498
	.4byte 0x04A504B3
	.4byte 0x04C104CF
	.4byte 0x04DD04EC
	.4byte 0x04FA0509
	.4byte 0x05180527
	.4byte 0x05360546
	.4byte 0x05550565
	.4byte 0x05750586
	.4byte 0x059605A6
	.4byte 0x05B705C8
	.4byte 0x05D905EB
	.4byte 0x05FC060E
	.4byte 0x06200632
	.4byte 0x06440657
	.4byte 0x066A067D
	.4byte 0x069006A4
	.4byte 0x06B706CB
	.4byte 0x06DF06F4
	.4byte 0x0708071D
	.4byte 0x07320748
	.4byte 0x075D0773
	.4byte 0x0789079F
	.4byte 0x07B607CD
	.4byte 0x07E407FB
	.4byte 0x0813082B
	.4byte 0x0843085C
	.4byte 0x0874088E
	.4byte 0x08A708C1
	.4byte 0x08DA08F5
	.4byte 0x090F092A
	.4byte 0x09450961
	.4byte 0x097D0999
	.4byte 0x09B509D2
	.4byte 0x09EF0A0D
	.4byte 0x0A2A0A48
	.4byte 0x0A670A86
	.4byte 0x0AA50AC5
	.4byte 0x0AE50B05
	.4byte 0x0B250B47
	.4byte 0x0B680B8A
	.4byte 0x0BAC0BCF
	.4byte 0x0BF20C15
	.4byte 0x0C390C5D
	.4byte 0x0C820CA7
	.4byte 0x0CCC0CF2
	.4byte 0x0D190D3F
	.4byte 0x0D670D8E
	.4byte 0x0DB70DDF
	.4byte 0x0E080E32
	.4byte 0x0E5C0E87
	.4byte 0x0EB20EDD
	.4byte 0x0F090F36
	.4byte 0x0F630F91
	.4byte 0x0FBF0FEE
	.4byte 0x101D104D
	.4byte 0x107D10AE
	.4byte 0x10DF1111
	.4byte 0x11441177
	.4byte 0x11AB11DF
	.4byte 0x1214124A
	.4byte 0x128012B7
	.4byte 0x12EE1326
	.4byte 0x135F1399
	.4byte 0x13D3140D
	.4byte 0x14491485
	.4byte 0x14C214FF
	.4byte 0x153E157D
	.4byte 0x15BC15FD
	.4byte 0x163E1680
	.4byte 0x16C31706
	.4byte 0x174A178F
	.4byte 0x17D5181C
	.4byte 0x186318AC
	.4byte 0x18F5193F
	.4byte 0x198A19D5
	.4byte 0x1A221A6F
	.4byte 0x1ABE1B0D
	.4byte 0x1B5D1BAE
	.4byte 0x1C001C53
	.4byte 0x1CA71CFC
	.4byte 0x1D521DA9
	.4byte 0x1E011E5A
	.4byte 0x1EB41F0F
	.4byte 0x1F6B1FC8
	.4byte 0x20262086
	.4byte 0x20E62148
	.4byte 0x21AA220E
	.4byte 0x227322D9
	.4byte 0x234123A9
	.4byte 0x2413247E
	.4byte 0x24EA2557
	.4byte 0x25C62636
	.4byte 0x26A7271A
	.4byte 0x278E2803
	.4byte 0x287A28F2
	.4byte 0x296B29E6
	.4byte 0x2A622AE0
	.4byte 0x2B5F2BDF
	.4byte 0x2C612CE5
	.4byte 0x2D6A2DF1
	.4byte 0x2E792F03
	.4byte 0x2F8E301B
	.4byte 0x30AA313A
	.4byte 0x31CC325F
	.4byte 0x32F5338C
	.4byte 0x342534BF
	.4byte 0x355B35FA
	.4byte 0x369A373C
	.4byte 0x37DF3885
	.4byte 0x392C39D6
	.4byte 0x3A813B2F
	.4byte 0x3BDE3C90
	.4byte 0x3D433DF9
	.4byte 0x3EB13F6A
	.4byte 0x402640E5
	.4byte 0x41A54268
	.4byte 0x432C43F4
	.4byte 0x44BD4589
	.4byte 0x46574727
	.4byte 0x47FA48D0
	.4byte 0x49A84A82
	.4byte 0x4B5F4C3E
	.4byte 0x4D204E05
	.4byte 0x4EEC4FD6
	.4byte 0x50C351B2
	.4byte 0x52A45399
	.4byte 0x5491558C
	.4byte 0x5689578A
	.4byte 0x588D5994
	.4byte 0x5A9D5BAA
	.4byte 0x5CBA5DCD
	.4byte 0x5EE35FFC
	.4byte 0x61196238
	.4byte 0x635C6482
	.4byte 0x65AC66D9
	.4byte 0x680A693F
	.4byte 0x6A776BB2
	.4byte 0x6CF26E35
	.4byte 0x6F7B70C6
	.4byte 0x72147366
	.4byte 0x74BC7616
	.4byte 0x777478D6
	.4byte 0x7A3D7BA7
	.4byte 0x7D167E88
	.4byte 0x7FFF817B
	.4byte 0x82FB847F
	.4byte 0x86088795
	.4byte 0x89278ABE
	.4byte 0x8C598DF9
	.4byte 0x8F9E9148
	.4byte 0x92F694AA
	.4byte 0x96639820
	.4byte 0x99E39BAB
	.4byte 0x9D799F4C
	.4byte 0xA124A302
	.4byte 0xA4E5A6CE
	.4byte 0xA8BCAAB0
	.4byte 0xACAAAEAA
	.4byte 0xB0B0B2BC
	.4byte 0xB4CEB6E5
	.4byte 0xB904BB28
	.4byte 0xBD53BF84
	.4byte 0xC1BCC3FA
	.4byte 0xC63FC88B
	.4byte 0xCADDCD37
	.4byte 0xCF97D1FE
	.4byte 0xD46DD6E3
	.4byte 0xD960DBE4
	.4byte 0xDE70E103
	.4byte 0xE39EE641
	.4byte 0xE8EBEB9E
	.4byte 0xEE58F11B
	.4byte 0xF3E6F6B9
	.4byte 0xF994FC78
	.4byte 0xFF640000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFD
	.4byte 0xFFFFFFFD
	.4byte 0xFFFFFFFC
	.4byte 0xFFFFFFFC
	.4byte 0xFFFFFFFC
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFFFFA
	.4byte 0xFFFFFFFA
	.4byte 0xFFFFFFF9
	.4byte 0xFFFFFFF9
	.4byte 0xFFFFFFF9
	.4byte 0xFFFFFFF8
	.4byte 0xFFFFFFF8
	.4byte 0xFFFFFFF7
	.4byte 0xFFFFFFF7
	.4byte 0xFFFFFFF6
	.4byte 0xFFFFFFF6
	.4byte 0xFFFFFFF6
	.4byte 0xFFFFFFF5
	.4byte 0xFFFFFFF5
	.4byte 0xFFFFFFF4
	.4byte 0xFFFFFFF4
	.4byte 0xFFFFFFF3
	.4byte 0xFFFFFFF3
	.4byte 0xFFFFFFF2
	.4byte 0xFFFFFFF2
	.4byte 0xFFFFFFF2
	.4byte 0xFFFFFFF1
	.4byte 0xFFFFFFF1
	.4byte 0xFFFFFFF0
	.4byte 0xFFFFFFF0
	.4byte 0xFFFFFFEF
	.4byte 0xFFFFFFEF
	.4byte 0xFFFFFFEE
	.4byte 0xFFFFFFEE
	.4byte 0xFFFFFFED
	.4byte 0xFFFFFFEC
	.4byte 0xFFFFFFEC
	.4byte 0xFFFFFFEB
	.4byte 0xFFFFFFEB
	.4byte 0xFFFFFFEA
	.4byte 0xFFFFFFEA
	.4byte 0xFFFFFFE9
	.4byte 0xFFFFFFE9
	.4byte 0xFFFFFFE8
	.4byte 0xFFFFFFE7
	.4byte 0xFFFFFFE7
	.4byte 0xFFFFFFE6
	.4byte 0xFFFFFFE6
	.4byte 0xFFFFFFE5
	.4byte 0xFFFFFFE4
	.4byte 0xFFFFFFE4
	.4byte 0xFFFFFFE3
	.4byte 0xFFFFFFE2
	.4byte 0xFFFFFFE2
	.4byte 0xFFFFFFE1
	.4byte 0xFFFFFFE0
	.4byte 0xFFFFFFDF
	.4byte 0xFFFFFFDF
	.4byte 0xFFFFFFDE
	.4byte 0xFFFFFFDD
	.4byte 0xFFFFFFDC
	.4byte 0xFFFFFFDC
	.4byte 0xFFFFFFDB
	.4byte 0xFFFFFFDA
	.4byte 0xFFFFFFD9
	.4byte 0xFFFFFFD8
	.4byte 0xFFFFFFD8
	.4byte 0xFFFFFFD7
	.4byte 0xFFFFFFD6
	.4byte 0xFFFFFFD5
	.4byte 0xFFFFFFD4
	.4byte 0xFFFFFFD3
	.4byte 0xFFFFFFD2
	.4byte 0xFFFFFFD1
	.4byte 0xFFFFFFD0
	.4byte 0xFFFFFFCF
	.4byte 0xFFFFFFCE
	.4byte 0xFFFFFFCD
	.4byte 0xFFFFFFCC
	.4byte 0xFFFFFFCA
	.4byte 0xFFFFFFC9
	.4byte 0xFFFFFFC8
	.4byte 0xFFFFFFC7
	.4byte 0xFFFFFFC5
	.4byte 0xFFFFFFC4
	.4byte 0xFFFFFFC3
	.4byte 0xFFFFFFC1
	.4byte 0xFFFFFFC0
	.4byte 0xFFFFFFBE
	.4byte 0xFFFFFFBD
	.4byte 0xFFFFFFBB
	.4byte 0xFFFFFFB9
	.4byte 0xFFFFFFB8
	.4byte 0xFFFFFFB6
	.4byte 0xFFFFFFB4
	.4byte 0xFFFFFFB2
	.4byte 0xFFFFFFB0
	.4byte 0xFFFFFFAD
	.4byte 0xFFFFFFAB
	.4byte 0xFFFFFFA9
	.4byte 0xFFFFFFA6
	.4byte 0xFFFFFFA3
	.4byte 0xFFFFFFA0
	.4byte 0xFFFFFF9D
	.4byte 0xFFFFFF9A
	.4byte 0xFFFFFF96
	.4byte 0xFFFFFF92
	.4byte 0xFFFFFF8D
	.4byte 0xFFFFFF88
	.4byte 0xFFFFFF82
	.4byte 0xFFFFFF7B
	.4byte 0xFFFFFF74
	.4byte 0xFFFFFF6A
	.4byte 0xFFFFFF5D
	.4byte 0xFFFFFF4C
	.4byte 0xFFFFFF2E
	.4byte 0xFFFFFC78
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000FFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFEFFFE
	.4byte 0xFFFEFFFE
	.4byte 0xFFFDFFFD
	.4byte 0xFFFDFFFC
	.4byte 0xFFFCFFFC
	.4byte 0xFFFBFFFB
	.4byte 0xFFFAFFFA
	.4byte 0xFFFAFFF9
	.4byte 0xFFF9FFF8
	.4byte 0xFFF8FFF7
	.4byte 0xFFF7FFF6
	.4byte 0xFFF5FFF5
	.4byte 0xFFF4FFF4
	.4byte 0xFFF3FFF2
	.4byte 0xFFF2FFF1
	.4byte 0xFFF0FFEF
	.4byte 0xFFEFFFEE
	.4byte 0xFFEDFFEC
	.4byte 0xFFEBFFEB
	.4byte 0xFFEAFFE9
	.4byte 0xFFE8FFE7
	.4byte 0xFFE6FFE5
	.4byte 0xFFE4FFE3
	.4byte 0xFFE2FFE1
	.4byte 0xFFE0FFDE
	.4byte 0xFFDDFFDC
	.4byte 0xFFDBFFDA
	.4byte 0xFFD8FFD7
	.4byte 0xFFD6FFD4
	.4byte 0xFFD3FFD1
	.4byte 0xFFD0FFCE
	.4byte 0xFFCCFFCB
	.4byte 0xFFC9FFC7
	.4byte 0xFFC6FFC4
	.4byte 0xFFC2FFC0
	.4byte 0xFFBEFFBC
	.4byte 0xFFBAFFB7
	.4byte 0xFFB5FFB3
	.4byte 0xFFB0FFAE
	.4byte 0xFFABFFA8
	.4byte 0xFFA6FFA3
	.4byte 0xFFA0FF9C
	.4byte 0xFF99FF96
	.4byte 0xFF92FF8E
	.4byte 0xFF8AFF86
	.4byte 0xFF82FF7D
	.4byte 0xFF78FF73
	.4byte 0xFF6EFF68
	.4byte 0xFF61FF5A
	.4byte 0xFF53FF4B
	.4byte 0xFF42FF37
	.4byte 0xFF2CFF1F
	.4byte 0xFF0FFEFB
	.4byte 0xFEE2FEBF
	.4byte 0xFE83FC40
	.4byte 0xFFC3FFC3
	.4byte 0xFFC4FFC5
	.4byte 0xFFC5FFC6
	.4byte 0xFFC6FFC7
	.4byte 0xFFC8FFC8
	.4byte 0xFFC9FFC9
	.4byte 0xFFCAFFCB
	.4byte 0xFFCBFFCC
	.4byte 0xFFCCFFCD
	.4byte 0xFFCEFFCE
	.4byte 0xFFCFFFCF
	.4byte 0xFFD0FFD0
	.4byte 0xFFD1FFD1
	.4byte 0xFFD2FFD2
	.4byte 0xFFD3FFD3
	.4byte 0xFFD4FFD4
	.4byte 0xFFD5FFD5
	.4byte 0xFFD6FFD6
	.4byte 0xFFD7FFD7
	.4byte 0xFFD8FFD8
	.4byte 0xFFD9FFD9
	.4byte 0xFFDAFFDA
	.4byte 0xFFDAFFDB
	.4byte 0xFFDBFFDC
	.4byte 0xFFDCFFDD
	.4byte 0xFFDDFFDD
	.4byte 0xFFDEFFDE
	.4byte 0xFFDFFFDF
	.4byte 0xFFE0FFE0
	.4byte 0xFFE0FFE1
	.4byte 0xFFE1FFE1
	.4byte 0xFFE2FFE2
	.4byte 0xFFE3FFE3
	.4byte 0xFFE3FFE4
	.4byte 0xFFE4FFE4
	.4byte 0xFFE5FFE5
	.4byte 0xFFE5FFE6
	.4byte 0xFFE6FFE6
	.4byte 0xFFE7FFE7
	.4byte 0xFFE7FFE8
	.4byte 0xFFE8FFE8
	.4byte 0xFFE9FFE9
	.4byte 0xFFE9FFEA
	.4byte 0xFFEAFFEA
	.4byte 0xFFEBFFEB
	.4byte 0xFFEBFFEC
	.4byte 0xFFECFFEC
	.4byte 0xFFECFFED
	.4byte 0xFFEDFFED
	.4byte 0xFFEEFFEE
	.4byte 0xFFEEFFEE
	.4byte 0xFFEFFFEF
	.4byte 0xFFEFFFEF
	.4byte 0xFFF0FFF0
	.4byte 0xFFF0FFF0
	.4byte 0xFFF1FFF1
	.4byte 0xFFF1FFF1
	.4byte 0xFFF2FFF2
	.4byte 0xFFF2FFF2
	.4byte 0xFFF3FFF3
	.4byte 0xFFF3FFF3
	.4byte 0xFFF3FFF4
	.4byte 0xFFF4FFF4
	.4byte 0xFFF4FFF5
/* SPECULATION: link order */
.global __MIXAIVolumeTable
__MIXAIVolumeTable:
	.4byte 0x00010101
	.4byte 0x01010102
	.4byte 0x02020203
	.4byte 0x03040405
	.4byte 0x05060708
	.4byte 0x090A0B0C
	.4byte 0x0E101214
	.4byte 0x16191C20
	.4byte 0x24282D32
	.4byte 0x39404750
	.4byte 0x5A65717F
	.4byte 0x8FA0B4CA
	.4byte 0xE3FF0000

.section .bss
l_8640_buffer_esc__6_775:
	.skip 0xC
l_864c_buffer_esc__6_780:
	.skip 0xC
l_8658_buffer_esc__6_788:
	.skip 0xC
l_8664_buffer_esc__6_793:
	.skip 0xC
l_8670_buffer_esc__6_798:
	.skip 0x80
l_86f0_buffer_esc__6_813:
	.skip 0x20
l_8710_buffer_esc__6_818:
	.skip 0xC
l_871c_buffer_esc__6_823:
	.skip 0xC
l_8728_buffer_esc__6_828:
	.skip 0x20
l_8748_buffer_esc__6_833:
	.skip 0x20
l_8768_buffer_esc__6_868:
	.skip 0x40
l_87a8_buffer_esc__6_873:
	.skip 0x40
l_87e8_buffer_esc__6_878:
	.skip 0x40
l_8828_buffer_esc__6_883:
	.skip 0x40
l_8868_buffer_esc__6_888:
	.skip 0x40
l_88a8_buffer_esc__6_893:
	.skip 0x40
l_88e8_buffer_esc__6_898:
	.skip 0x40
l_8928_buffer_esc__6_903:
	.skip 0x40
l_8968_buffer_esc__6_913:
	.skip 0xC
l_8974_buffer_esc__6_918:
	.skip 0xC
l_8980_buffer_esc__6_923:
	.skip 0xC
l_898c_buffer_esc__6_928:
	.skip 0xC
l_8998_buffer_esc__6_933:
	.skip 0xC
l_89a4_buffer_esc__6_948:
	.skip 0x30
l_89d4_buffer_esc__6_960:
	.skip 0xC
l_89e0_buffer_esc__6_977:
	.skip 0xC
l_89ec_buffer_esc__6_982:
	.skip 0xC
l_89f8_buffer_esc__6_987:
	.skip 0xC
l_8a04_buffer_esc__6_992:
	.skip 0x40
l_8a44_buffer_esc__6_997:
	.skip 0xC
l_8a50_buffer_esc__6_1002:
	.skip 0xC
l_8a5c_buffer_esc__6_1007:
	.skip 0x23C4

.section .sbss
l_ba68_selSceneID__18_esc__2_unnamed_esc__2_zVar_cpp_esc__2_:
	.skip 0x8

.section .sdata2
l_dfa8__esc__2_1136:
	.4byte 0x40240000
	.4byte 0x00000000
l_dfb0__esc__2_1137:
	.4byte 0x3FE00000
	.4byte 0x00000000
