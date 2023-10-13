
build/nanos/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0d00000 <main>:
c0d00000:	b510      	push	{r4, lr}
c0d00002:	b08c      	sub	sp, #48	; 0x30
c0d00004:	b662      	cpsie	i
c0d00006:	f007 f92f 	bl	c0d07268 <view_init>
c0d0000a:	f002 fa74 	bl	c0d024f6 <os_boot>
c0d0000e:	466c      	mov	r4, sp
c0d00010:	4620      	mov	r0, r4
c0d00012:	f008 f937 	bl	c0d08284 <setjmp>
c0d00016:	85a0      	strh	r0, [r4, #44]	; 0x2c
c0d00018:	0400      	lsls	r0, r0, #16
c0d0001a:	d006      	beq.n	c0d0002a <main+0x2a>
c0d0001c:	4668      	mov	r0, sp
c0d0001e:	2100      	movs	r1, #0
c0d00020:	8581      	strh	r1, [r0, #44]	; 0x2c
c0d00022:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d00024:	f004 fdf4 	bl	c0d04c10 <try_context_set>
c0d00028:	e007      	b.n	c0d0003a <main+0x3a>
c0d0002a:	4668      	mov	r0, sp
c0d0002c:	f004 fdf0 	bl	c0d04c10 <try_context_set>
c0d00030:	900a      	str	r0, [sp, #40]	; 0x28
c0d00032:	f000 fdcb 	bl	c0d00bcc <app_init>
c0d00036:	f000 fddb 	bl	c0d00bf0 <app_main>
c0d0003a:	f004 fddd 	bl	c0d04bf8 <try_context_get>
c0d0003e:	4669      	mov	r1, sp
c0d00040:	4288      	cmp	r0, r1
c0d00042:	d102      	bne.n	c0d0004a <main+0x4a>
c0d00044:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d00046:	f004 fde3 	bl	c0d04c10 <try_context_set>
c0d0004a:	4668      	mov	r0, sp
c0d0004c:	8d80      	ldrh	r0, [r0, #44]	; 0x2c
c0d0004e:	2800      	cmp	r0, #0
c0d00050:	d102      	bne.n	c0d00058 <main+0x58>
c0d00052:	2000      	movs	r0, #0
c0d00054:	b00c      	add	sp, #48	; 0x30
c0d00056:	bd10      	pop	{r4, pc}
c0d00058:	f002 fa52 	bl	c0d02500 <os_longjmp>

c0d0005c <addr_getNumItems>:
c0d0005c:	b510      	push	{r4, lr}
c0d0005e:	4604      	mov	r4, r0
c0d00060:	4806      	ldr	r0, [pc, #24]	; (c0d0007c <addr_getNumItems+0x20>)
c0d00062:	4478      	add	r0, pc
c0d00064:	f007 ff40 	bl	c0d07ee8 <zemu_log_stack>
c0d00068:	2001      	movs	r0, #1
c0d0006a:	7020      	strb	r0, [r4, #0]
c0d0006c:	f000 fe3e 	bl	c0d00cec <app_mode_expert>
c0d00070:	2800      	cmp	r0, #0
c0d00072:	d001      	beq.n	c0d00078 <addr_getNumItems+0x1c>
c0d00074:	2002      	movs	r0, #2
c0d00076:	7020      	strb	r0, [r4, #0]
c0d00078:	2003      	movs	r0, #3
c0d0007a:	bd10      	pop	{r4, pc}
c0d0007c:	00008902 	.word	0x00008902

c0d00080 <addr_getItem>:
c0d00080:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d00082:	b0d1      	sub	sp, #324	; 0x144
c0d00084:	461d      	mov	r5, r3
c0d00086:	4617      	mov	r7, r2
c0d00088:	460c      	mov	r4, r1
c0d0008a:	2205      	movs	r2, #5
c0d0008c:	9958      	ldr	r1, [sp, #352]	; 0x160
c0d0008e:	9104      	str	r1, [sp, #16]
c0d00090:	9957      	ldr	r1, [sp, #348]	; 0x15c
c0d00092:	9102      	str	r1, [sp, #8]
c0d00094:	9e56      	ldr	r6, [sp, #344]	; 0x158
c0d00096:	2801      	cmp	r0, #1
c0d00098:	d03f      	beq.n	c0d0011a <addr_getItem+0x9a>
c0d0009a:	2800      	cmp	r0, #0
c0d0009c:	d000      	beq.n	c0d000a0 <addr_getItem+0x20>
c0d0009e:	e0ef      	b.n	c0d00280 <addr_getItem+0x200>
c0d000a0:	4a7d      	ldr	r2, [pc, #500]	; (c0d00298 <addr_getItem+0x218>)
c0d000a2:	447a      	add	r2, pc
c0d000a4:	4620      	mov	r0, r4
c0d000a6:	4639      	mov	r1, r7
c0d000a8:	f002 ff00 	bl	c0d02eac <snprintf>
c0d000ac:	4879      	ldr	r0, [pc, #484]	; (c0d00294 <addr_getItem+0x214>)
c0d000ae:	3021      	adds	r0, #33	; 0x21
c0d000b0:	f008 f946 	bl	c0d08340 <strlen>
c0d000b4:	4604      	mov	r4, r0
c0d000b6:	9501      	str	r5, [sp, #4]
c0d000b8:	4628      	mov	r0, r5
c0d000ba:	4631      	mov	r1, r6
c0d000bc:	f007 ffbe 	bl	c0d0803c <explicit_bzero>
c0d000c0:	2000      	movs	r0, #0
c0d000c2:	9904      	ldr	r1, [sp, #16]
c0d000c4:	7008      	strb	r0, [r1, #0]
c0d000c6:	1e77      	subs	r7, r6, #1
c0d000c8:	b2bd      	uxth	r5, r7
c0d000ca:	2203      	movs	r2, #3
c0d000cc:	2d00      	cmp	r5, #0
c0d000ce:	d100      	bne.n	c0d000d2 <addr_getItem+0x52>
c0d000d0:	e0d6      	b.n	c0d00280 <addr_getItem+0x200>
c0d000d2:	0420      	lsls	r0, r4, #16
c0d000d4:	d100      	bne.n	c0d000d8 <addr_getItem+0x58>
c0d000d6:	e0d3      	b.n	c0d00280 <addr_getItem+0x200>
c0d000d8:	4616      	mov	r6, r2
c0d000da:	b2a0      	uxth	r0, r4
c0d000dc:	4629      	mov	r1, r5
c0d000de:	f007 ff2b 	bl	c0d07f38 <__udivsi3>
c0d000e2:	4347      	muls	r7, r0
c0d000e4:	1be3      	subs	r3, r4, r7
c0d000e6:	b29a      	uxth	r2, r3
c0d000e8:	1e51      	subs	r1, r2, #1
c0d000ea:	4614      	mov	r4, r2
c0d000ec:	418c      	sbcs	r4, r1
c0d000ee:	1820      	adds	r0, r4, r0
c0d000f0:	9904      	ldr	r1, [sp, #16]
c0d000f2:	7008      	strb	r0, [r1, #0]
c0d000f4:	b2c0      	uxtb	r0, r0
c0d000f6:	9c02      	ldr	r4, [sp, #8]
c0d000f8:	42a0      	cmp	r0, r4
c0d000fa:	d800      	bhi.n	c0d000fe <addr_getItem+0x7e>
c0d000fc:	e0b9      	b.n	c0d00272 <addr_getItem+0x1f2>
c0d000fe:	4629      	mov	r1, r5
c0d00100:	4361      	muls	r1, r4
c0d00102:	4f64      	ldr	r7, [pc, #400]	; (c0d00294 <addr_getItem+0x214>)
c0d00104:	1879      	adds	r1, r7, r1
c0d00106:	3121      	adds	r1, #33	; 0x21
c0d00108:	041b      	lsls	r3, r3, #16
c0d0010a:	d100      	bne.n	c0d0010e <addr_getItem+0x8e>
c0d0010c:	e0ad      	b.n	c0d0026a <addr_getItem+0x1ea>
c0d0010e:	1e40      	subs	r0, r0, #1
c0d00110:	42a0      	cmp	r0, r4
c0d00112:	d000      	beq.n	c0d00116 <addr_getItem+0x96>
c0d00114:	e0a9      	b.n	c0d0026a <addr_getItem+0x1ea>
c0d00116:	9801      	ldr	r0, [sp, #4]
c0d00118:	e0a9      	b.n	c0d0026e <addr_getItem+0x1ee>
c0d0011a:	9600      	str	r6, [sp, #0]
c0d0011c:	4616      	mov	r6, r2
c0d0011e:	f000 fde5 	bl	c0d00cec <app_mode_expert>
c0d00122:	4632      	mov	r2, r6
c0d00124:	2800      	cmp	r0, #0
c0d00126:	d100      	bne.n	c0d0012a <addr_getItem+0xaa>
c0d00128:	e0aa      	b.n	c0d00280 <addr_getItem+0x200>
c0d0012a:	9501      	str	r5, [sp, #4]
c0d0012c:	4a5b      	ldr	r2, [pc, #364]	; (c0d0029c <addr_getItem+0x21c>)
c0d0012e:	447a      	add	r2, pc
c0d00130:	4620      	mov	r0, r4
c0d00132:	4639      	mov	r1, r7
c0d00134:	f002 feba 	bl	c0d02eac <snprintf>
c0d00138:	204b      	movs	r0, #75	; 0x4b
c0d0013a:	0085      	lsls	r5, r0, #2
c0d0013c:	ac06      	add	r4, sp, #24
c0d0013e:	4620      	mov	r0, r4
c0d00140:	4629      	mov	r1, r5
c0d00142:	f007 ff7b 	bl	c0d0803c <explicit_bzero>
c0d00146:	4850      	ldr	r0, [pc, #320]	; (c0d00288 <addr_getItem+0x208>)
c0d00148:	6803      	ldr	r3, [r0, #0]
c0d0014a:	4850      	ldr	r0, [pc, #320]	; (c0d0028c <addr_getItem+0x20c>)
c0d0014c:	4003      	ands	r3, r0
c0d0014e:	4a54      	ldr	r2, [pc, #336]	; (c0d002a0 <addr_getItem+0x220>)
c0d00150:	447a      	add	r2, pc
c0d00152:	4620      	mov	r0, r4
c0d00154:	4629      	mov	r1, r5
c0d00156:	f002 fea9 	bl	c0d02eac <snprintf>
c0d0015a:	4620      	mov	r0, r4
c0d0015c:	4629      	mov	r1, r5
c0d0015e:	f008 f98d 	bl	c0d0847c <strnlen>
c0d00162:	1e41      	subs	r1, r0, #1
c0d00164:	9505      	str	r5, [sp, #20]
c0d00166:	1e6a      	subs	r2, r5, #1
c0d00168:	4291      	cmp	r1, r2
c0d0016a:	d24b      	bcs.n	c0d00204 <addr_getItem+0x184>
c0d0016c:	2100      	movs	r1, #0
c0d0016e:	460e      	mov	r6, r1
c0d00170:	1986      	adds	r6, r0, r6
c0d00172:	4845      	ldr	r0, [pc, #276]	; (c0d00288 <addr_getItem+0x208>)
c0d00174:	5840      	ldr	r0, [r0, r1]
c0d00176:	2800      	cmp	r0, #0
c0d00178:	d514      	bpl.n	c0d001a4 <addr_getItem+0x124>
c0d0017a:	a806      	add	r0, sp, #24
c0d0017c:	1987      	adds	r7, r0, r6
c0d0017e:	9805      	ldr	r0, [sp, #20]
c0d00180:	1b84      	subs	r4, r0, r6
c0d00182:	4a48      	ldr	r2, [pc, #288]	; (c0d002a4 <addr_getItem+0x224>)
c0d00184:	447a      	add	r2, pc
c0d00186:	4638      	mov	r0, r7
c0d00188:	460d      	mov	r5, r1
c0d0018a:	4621      	mov	r1, r4
c0d0018c:	f002 fe8e 	bl	c0d02eac <snprintf>
c0d00190:	4638      	mov	r0, r7
c0d00192:	4621      	mov	r1, r4
c0d00194:	f008 f972 	bl	c0d0847c <strnlen>
c0d00198:	2800      	cmp	r0, #0
c0d0019a:	d033      	beq.n	c0d00204 <addr_getItem+0x184>
c0d0019c:	42a0      	cmp	r0, r4
c0d0019e:	d231      	bcs.n	c0d00204 <addr_getItem+0x184>
c0d001a0:	4629      	mov	r1, r5
c0d001a2:	1986      	adds	r6, r0, r6
c0d001a4:	1d0d      	adds	r5, r1, #4
c0d001a6:	2d14      	cmp	r5, #20
c0d001a8:	d031      	beq.n	c0d0020e <addr_getItem+0x18e>
c0d001aa:	a806      	add	r0, sp, #24
c0d001ac:	1987      	adds	r7, r0, r6
c0d001ae:	9805      	ldr	r0, [sp, #20]
c0d001b0:	1b84      	subs	r4, r0, r6
c0d001b2:	4a3d      	ldr	r2, [pc, #244]	; (c0d002a8 <addr_getItem+0x228>)
c0d001b4:	447a      	add	r2, pc
c0d001b6:	4638      	mov	r0, r7
c0d001b8:	9103      	str	r1, [sp, #12]
c0d001ba:	4621      	mov	r1, r4
c0d001bc:	f002 fe76 	bl	c0d02eac <snprintf>
c0d001c0:	4638      	mov	r0, r7
c0d001c2:	4621      	mov	r1, r4
c0d001c4:	f008 f95a 	bl	c0d0847c <strnlen>
c0d001c8:	9903      	ldr	r1, [sp, #12]
c0d001ca:	2800      	cmp	r0, #0
c0d001cc:	d01a      	beq.n	c0d00204 <addr_getItem+0x184>
c0d001ce:	42a0      	cmp	r0, r4
c0d001d0:	d218      	bcs.n	c0d00204 <addr_getItem+0x184>
c0d001d2:	1986      	adds	r6, r0, r6
c0d001d4:	a806      	add	r0, sp, #24
c0d001d6:	1987      	adds	r7, r0, r6
c0d001d8:	9805      	ldr	r0, [sp, #20]
c0d001da:	1b84      	subs	r4, r0, r6
c0d001dc:	482a      	ldr	r0, [pc, #168]	; (c0d00288 <addr_getItem+0x208>)
c0d001de:	1840      	adds	r0, r0, r1
c0d001e0:	6843      	ldr	r3, [r0, #4]
c0d001e2:	482a      	ldr	r0, [pc, #168]	; (c0d0028c <addr_getItem+0x20c>)
c0d001e4:	4003      	ands	r3, r0
c0d001e6:	4a31      	ldr	r2, [pc, #196]	; (c0d002ac <addr_getItem+0x22c>)
c0d001e8:	447a      	add	r2, pc
c0d001ea:	4638      	mov	r0, r7
c0d001ec:	4621      	mov	r1, r4
c0d001ee:	f002 fe5d 	bl	c0d02eac <snprintf>
c0d001f2:	4638      	mov	r0, r7
c0d001f4:	4621      	mov	r1, r4
c0d001f6:	f008 f941 	bl	c0d0847c <strnlen>
c0d001fa:	2800      	cmp	r0, #0
c0d001fc:	d002      	beq.n	c0d00204 <addr_getItem+0x184>
c0d001fe:	42a0      	cmp	r0, r4
c0d00200:	4629      	mov	r1, r5
c0d00202:	d3b5      	bcc.n	c0d00170 <addr_getItem+0xf0>
c0d00204:	a806      	add	r0, sp, #24
c0d00206:	2152      	movs	r1, #82	; 0x52
c0d00208:	8081      	strh	r1, [r0, #4]
c0d0020a:	4821      	ldr	r0, [pc, #132]	; (c0d00290 <addr_getItem+0x210>)
c0d0020c:	9006      	str	r0, [sp, #24]
c0d0020e:	a806      	add	r0, sp, #24
c0d00210:	f008 f896 	bl	c0d08340 <strlen>
c0d00214:	4604      	mov	r4, r0
c0d00216:	9801      	ldr	r0, [sp, #4]
c0d00218:	9d00      	ldr	r5, [sp, #0]
c0d0021a:	4629      	mov	r1, r5
c0d0021c:	f007 ff0e 	bl	c0d0803c <explicit_bzero>
c0d00220:	2000      	movs	r0, #0
c0d00222:	9904      	ldr	r1, [sp, #16]
c0d00224:	7008      	strb	r0, [r1, #0]
c0d00226:	1e6e      	subs	r6, r5, #1
c0d00228:	b2b5      	uxth	r5, r6
c0d0022a:	2d00      	cmp	r5, #0
c0d0022c:	9f02      	ldr	r7, [sp, #8]
c0d0022e:	d026      	beq.n	c0d0027e <addr_getItem+0x1fe>
c0d00230:	0420      	lsls	r0, r4, #16
c0d00232:	d024      	beq.n	c0d0027e <addr_getItem+0x1fe>
c0d00234:	b2a0      	uxth	r0, r4
c0d00236:	4629      	mov	r1, r5
c0d00238:	f007 fe7e 	bl	c0d07f38 <__udivsi3>
c0d0023c:	4346      	muls	r6, r0
c0d0023e:	1ba3      	subs	r3, r4, r6
c0d00240:	b29a      	uxth	r2, r3
c0d00242:	1e51      	subs	r1, r2, #1
c0d00244:	4614      	mov	r4, r2
c0d00246:	418c      	sbcs	r4, r1
c0d00248:	1820      	adds	r0, r4, r0
c0d0024a:	9904      	ldr	r1, [sp, #16]
c0d0024c:	7008      	strb	r0, [r1, #0]
c0d0024e:	b2c0      	uxtb	r0, r0
c0d00250:	42b8      	cmp	r0, r7
c0d00252:	d914      	bls.n	c0d0027e <addr_getItem+0x1fe>
c0d00254:	4629      	mov	r1, r5
c0d00256:	4379      	muls	r1, r7
c0d00258:	ac06      	add	r4, sp, #24
c0d0025a:	1861      	adds	r1, r4, r1
c0d0025c:	041b      	lsls	r3, r3, #16
c0d0025e:	d00a      	beq.n	c0d00276 <addr_getItem+0x1f6>
c0d00260:	1e40      	subs	r0, r0, #1
c0d00262:	42b8      	cmp	r0, r7
c0d00264:	d107      	bne.n	c0d00276 <addr_getItem+0x1f6>
c0d00266:	9801      	ldr	r0, [sp, #4]
c0d00268:	e007      	b.n	c0d0027a <addr_getItem+0x1fa>
c0d0026a:	9801      	ldr	r0, [sp, #4]
c0d0026c:	462a      	mov	r2, r5
c0d0026e:	f007 fed9 	bl	c0d08024 <__aeabi_memmove>
c0d00272:	4632      	mov	r2, r6
c0d00274:	e004      	b.n	c0d00280 <addr_getItem+0x200>
c0d00276:	9801      	ldr	r0, [sp, #4]
c0d00278:	462a      	mov	r2, r5
c0d0027a:	f007 fecf 	bl	c0d0801c <__aeabi_memcpy>
c0d0027e:	2203      	movs	r2, #3
c0d00280:	4610      	mov	r0, r2
c0d00282:	b051      	add	sp, #324	; 0x144
c0d00284:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d00286:	46c0      	nop			; (mov r8, r8)
c0d00288:	2000029c 	.word	0x2000029c
c0d0028c:	7fffffff 	.word	0x7fffffff
c0d00290:	4f525245 	.word	0x4f525245
c0d00294:	20000305 	.word	0x20000305
c0d00298:	000088d3 	.word	0x000088d3
c0d0029c:	0000884f 	.word	0x0000884f
c0d002a0:	0000a578 	.word	0x0000a578
c0d002a4:	00008804 	.word	0x00008804
c0d002a8:	000087d6 	.word	0x000087d6
c0d002ac:	0000a4e0 	.word	0x0000a4e0

c0d002b0 <handleApdu>:
c0d002b0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d002b2:	b08d      	sub	sp, #52	; 0x34
c0d002b4:	4617      	mov	r7, r2
c0d002b6:	460c      	mov	r4, r1
c0d002b8:	9000      	str	r0, [sp, #0]
c0d002ba:	ad01      	add	r5, sp, #4
c0d002bc:	4628      	mov	r0, r5
c0d002be:	f007 ffe1 	bl	c0d08284 <setjmp>
c0d002c2:	4606      	mov	r6, r0
c0d002c4:	85a8      	strh	r0, [r5, #44]	; 0x2c
c0d002c6:	b280      	uxth	r0, r0
c0d002c8:	2800      	cmp	r0, #0
c0d002ca:	d016      	beq.n	c0d002fa <handleApdu+0x4a>
c0d002cc:	2805      	cmp	r0, #5
c0d002ce:	d100      	bne.n	c0d002d2 <handleApdu+0x22>
c0d002d0:	e0ab      	b.n	c0d0042a <handleApdu+0x17a>
c0d002d2:	4635      	mov	r5, r6
c0d002d4:	a801      	add	r0, sp, #4
c0d002d6:	2100      	movs	r1, #0
c0d002d8:	8581      	strh	r1, [r0, #44]	; 0x2c
c0d002da:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0d002dc:	f004 fc98 	bl	c0d04c10 <try_context_set>
c0d002e0:	200f      	movs	r0, #15
c0d002e2:	0300      	lsls	r0, r0, #12
c0d002e4:	4030      	ands	r0, r6
c0d002e6:	2109      	movs	r1, #9
c0d002e8:	0309      	lsls	r1, r1, #12
c0d002ea:	4288      	cmp	r0, r1
c0d002ec:	d003      	beq.n	c0d002f6 <handleApdu+0x46>
c0d002ee:	2103      	movs	r1, #3
c0d002f0:	0349      	lsls	r1, r1, #13
c0d002f2:	4288      	cmp	r0, r1
c0d002f4:	d17f      	bne.n	c0d003f6 <handleApdu+0x146>
c0d002f6:	0a30      	lsrs	r0, r6, #8
c0d002f8:	e080      	b.n	c0d003fc <handleApdu+0x14c>
c0d002fa:	a801      	add	r0, sp, #4
c0d002fc:	f004 fc88 	bl	c0d04c10 <try_context_set>
c0d00300:	900b      	str	r0, [sp, #44]	; 0x2c
c0d00302:	4e6f      	ldr	r6, [pc, #444]	; (c0d004c0 <handleApdu+0x210>)
c0d00304:	7830      	ldrb	r0, [r6, #0]
c0d00306:	2855      	cmp	r0, #85	; 0x55
c0d00308:	d000      	beq.n	c0d0030c <handleApdu+0x5c>
c0d0030a:	e097      	b.n	c0d0043c <handleApdu+0x18c>
c0d0030c:	2f04      	cmp	r7, #4
c0d0030e:	d800      	bhi.n	c0d00312 <handleApdu+0x62>
c0d00310:	e098      	b.n	c0d00444 <handleApdu+0x194>
c0d00312:	7870      	ldrb	r0, [r6, #1]
c0d00314:	2802      	cmp	r0, #2
c0d00316:	d032      	beq.n	c0d0037e <handleApdu+0xce>
c0d00318:	2804      	cmp	r0, #4
c0d0031a:	d000      	beq.n	c0d0031e <handleApdu+0x6e>
c0d0031c:	e094      	b.n	c0d00448 <handleApdu+0x198>
c0d0031e:	f004 fc05 	bl	c0d04b2c <os_global_pin_is_validated>
c0d00322:	28aa      	cmp	r0, #170	; 0xaa
c0d00324:	d000      	beq.n	c0d00328 <handleApdu+0x78>
c0d00326:	e0b0      	b.n	c0d0048a <handleApdu+0x1da>
c0d00328:	2105      	movs	r1, #5
c0d0032a:	4638      	mov	r0, r7
c0d0032c:	f001 fc80 	bl	c0d01c30 <extractHRP>
c0d00330:	1d81      	adds	r1, r0, #6
c0d00332:	4638      	mov	r0, r7
c0d00334:	f000 fbda 	bl	c0d00aec <extractHDPath>
c0d00338:	78b5      	ldrb	r5, [r6, #2]
c0d0033a:	2041      	movs	r0, #65	; 0x41
c0d0033c:	0081      	lsls	r1, r0, #2
c0d0033e:	4630      	mov	r0, r6
c0d00340:	f007 fe7c 	bl	c0d0803c <explicit_bzero>
c0d00344:	4f60      	ldr	r7, [pc, #384]	; (c0d004c8 <handleApdu+0x218>)
c0d00346:	2000      	movs	r0, #0
c0d00348:	8038      	strh	r0, [r7, #0]
c0d0034a:	2081      	movs	r0, #129	; 0x81
c0d0034c:	0041      	lsls	r1, r0, #1
c0d0034e:	4630      	mov	r0, r6
c0d00350:	463a      	mov	r2, r7
c0d00352:	f001 fcad 	bl	c0d01cb0 <crypto_fillAddress>
c0d00356:	2803      	cmp	r0, #3
c0d00358:	d000      	beq.n	c0d0035c <handleApdu+0xac>
c0d0035a:	e09a      	b.n	c0d00492 <handleApdu+0x1e2>
c0d0035c:	8838      	ldrh	r0, [r7, #0]
c0d0035e:	2800      	cmp	r0, #0
c0d00360:	d100      	bne.n	c0d00364 <handleApdu+0xb4>
c0d00362:	e096      	b.n	c0d00492 <handleApdu+0x1e2>
c0d00364:	2d00      	cmp	r5, #0
c0d00366:	d100      	bne.n	c0d0036a <handleApdu+0xba>
c0d00368:	e08a      	b.n	c0d00480 <handleApdu+0x1d0>
c0d0036a:	485a      	ldr	r0, [pc, #360]	; (c0d004d4 <handleApdu+0x224>)
c0d0036c:	4478      	add	r0, pc
c0d0036e:	495a      	ldr	r1, [pc, #360]	; (c0d004d8 <handleApdu+0x228>)
c0d00370:	4479      	add	r1, pc
c0d00372:	4a5a      	ldr	r2, [pc, #360]	; (c0d004dc <handleApdu+0x22c>)
c0d00374:	447a      	add	r2, pc
c0d00376:	f006 ff85 	bl	c0d07284 <view_review_init>
c0d0037a:	2001      	movs	r0, #1
c0d0037c:	e033      	b.n	c0d003e6 <handleApdu+0x136>
c0d0037e:	f004 fbd5 	bl	c0d04b2c <os_global_pin_is_validated>
c0d00382:	28aa      	cmp	r0, #170	; 0xaa
c0d00384:	d000      	beq.n	c0d00388 <handleApdu+0xd8>
c0d00386:	e080      	b.n	c0d0048a <handleApdu+0x1da>
c0d00388:	4620      	mov	r0, r4
c0d0038a:	4639      	mov	r1, r7
c0d0038c:	f000 fbea 	bl	c0d00b64 <process_chunk>
c0d00390:	2800      	cmp	r0, #0
c0d00392:	d076      	beq.n	c0d00482 <handleApdu+0x1d2>
c0d00394:	78f5      	ldrb	r5, [r6, #3]
c0d00396:	2041      	movs	r0, #65	; 0x41
c0d00398:	0081      	lsls	r1, r0, #2
c0d0039a:	4630      	mov	r0, r6
c0d0039c:	f007 fe4e 	bl	c0d0803c <explicit_bzero>
c0d003a0:	4f49      	ldr	r7, [pc, #292]	; (c0d004c8 <handleApdu+0x218>)
c0d003a2:	2000      	movs	r0, #0
c0d003a4:	8038      	strh	r0, [r7, #0]
c0d003a6:	2081      	movs	r0, #129	; 0x81
c0d003a8:	0041      	lsls	r1, r0, #1
c0d003aa:	4630      	mov	r0, r6
c0d003ac:	463a      	mov	r2, r7
c0d003ae:	f001 fc7f 	bl	c0d01cb0 <crypto_fillAddress>
c0d003b2:	2803      	cmp	r0, #3
c0d003b4:	d16d      	bne.n	c0d00492 <handleApdu+0x1e2>
c0d003b6:	8838      	ldrh	r0, [r7, #0]
c0d003b8:	2800      	cmp	r0, #0
c0d003ba:	d06a      	beq.n	c0d00492 <handleApdu+0x1e2>
c0d003bc:	204b      	movs	r0, #75	; 0x4b
c0d003be:	00c0      	lsls	r0, r0, #3
c0d003c0:	3621      	adds	r6, #33	; 0x21
c0d003c2:	4942      	ldr	r1, [pc, #264]	; (c0d004cc <handleApdu+0x21c>)
c0d003c4:	500e      	str	r6, [r1, r0]
c0d003c6:	4628      	mov	r0, r5
c0d003c8:	f004 fc60 	bl	c0d04c8c <tx_parse>
c0d003cc:	2800      	cmp	r0, #0
c0d003ce:	d164      	bne.n	c0d0049a <handleApdu+0x1ea>
c0d003d0:	f007 fd7c 	bl	c0d07ecc <check_app_canary>
c0d003d4:	4842      	ldr	r0, [pc, #264]	; (c0d004e0 <handleApdu+0x230>)
c0d003d6:	4478      	add	r0, pc
c0d003d8:	4942      	ldr	r1, [pc, #264]	; (c0d004e4 <handleApdu+0x234>)
c0d003da:	4479      	add	r1, pc
c0d003dc:	4a42      	ldr	r2, [pc, #264]	; (c0d004e8 <handleApdu+0x238>)
c0d003de:	447a      	add	r2, pc
c0d003e0:	f006 ff50 	bl	c0d07284 <view_review_init>
c0d003e4:	2002      	movs	r0, #2
c0d003e6:	f006 ff53 	bl	c0d07290 <view_review_show>
c0d003ea:	9a00      	ldr	r2, [sp, #0]
c0d003ec:	6810      	ldr	r0, [r2, #0]
c0d003ee:	2110      	movs	r1, #16
c0d003f0:	4301      	orrs	r1, r0
c0d003f2:	6011      	str	r1, [r2, #0]
c0d003f4:	e00b      	b.n	c0d0040e <handleApdu+0x15e>
c0d003f6:	0570      	lsls	r0, r6, #21
c0d003f8:	0f40      	lsrs	r0, r0, #29
c0d003fa:	3068      	adds	r0, #104	; 0x68
c0d003fc:	6821      	ldr	r1, [r4, #0]
c0d003fe:	4a30      	ldr	r2, [pc, #192]	; (c0d004c0 <handleApdu+0x210>)
c0d00400:	5450      	strb	r0, [r2, r1]
c0d00402:	6820      	ldr	r0, [r4, #0]
c0d00404:	1880      	adds	r0, r0, r2
c0d00406:	7045      	strb	r5, [r0, #1]
c0d00408:	6820      	ldr	r0, [r4, #0]
c0d0040a:	1c80      	adds	r0, r0, #2
c0d0040c:	6020      	str	r0, [r4, #0]
c0d0040e:	f004 fbf3 	bl	c0d04bf8 <try_context_get>
c0d00412:	a901      	add	r1, sp, #4
c0d00414:	4288      	cmp	r0, r1
c0d00416:	d102      	bne.n	c0d0041e <handleApdu+0x16e>
c0d00418:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0d0041a:	f004 fbf9 	bl	c0d04c10 <try_context_set>
c0d0041e:	a801      	add	r0, sp, #4
c0d00420:	8d80      	ldrh	r0, [r0, #44]	; 0x2c
c0d00422:	2800      	cmp	r0, #0
c0d00424:	d146      	bne.n	c0d004b4 <handleApdu+0x204>
c0d00426:	b00d      	add	sp, #52	; 0x34
c0d00428:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d0042a:	a801      	add	r0, sp, #4
c0d0042c:	2100      	movs	r1, #0
c0d0042e:	8581      	strh	r1, [r0, #44]	; 0x2c
c0d00430:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0d00432:	f004 fbed 	bl	c0d04c10 <try_context_set>
c0d00436:	2005      	movs	r0, #5
c0d00438:	f002 f862 	bl	c0d02500 <os_longjmp>
c0d0043c:	2037      	movs	r0, #55	; 0x37
c0d0043e:	0240      	lsls	r0, r0, #9
c0d00440:	f002 f85e 	bl	c0d02500 <os_longjmp>
c0d00444:	2067      	movs	r0, #103	; 0x67
c0d00446:	e038      	b.n	c0d004ba <handleApdu+0x20a>
c0d00448:	2800      	cmp	r0, #0
c0d0044a:	d135      	bne.n	c0d004b8 <handleApdu+0x208>
c0d0044c:	2005      	movs	r0, #5
c0d0044e:	70f0      	strb	r0, [r6, #3]
c0d00450:	2023      	movs	r0, #35	; 0x23
c0d00452:	70b0      	strb	r0, [r6, #2]
c0d00454:	2002      	movs	r0, #2
c0d00456:	7070      	strb	r0, [r6, #1]
c0d00458:	2000      	movs	r0, #0
c0d0045a:	7030      	strb	r0, [r6, #0]
c0d0045c:	2104      	movs	r1, #4
c0d0045e:	7231      	strb	r1, [r6, #8]
c0d00460:	71f0      	strb	r0, [r6, #7]
c0d00462:	2010      	movs	r0, #16
c0d00464:	71b0      	strb	r0, [r6, #6]
c0d00466:	2031      	movs	r0, #49	; 0x31
c0d00468:	7170      	strb	r0, [r6, #5]
c0d0046a:	4819      	ldr	r0, [pc, #100]	; (c0d004d0 <handleApdu+0x220>)
c0d0046c:	6c80      	ldr	r0, [r0, #72]	; 0x48
c0d0046e:	4241      	negs	r1, r0
c0d00470:	4141      	adcs	r1, r0
c0d00472:	3897      	subs	r0, #151	; 0x97
c0d00474:	4242      	negs	r2, r0
c0d00476:	4142      	adcs	r2, r0
c0d00478:	430a      	orrs	r2, r1
c0d0047a:	7132      	strb	r2, [r6, #4]
c0d0047c:	6820      	ldr	r0, [r4, #0]
c0d0047e:	3009      	adds	r0, #9
c0d00480:	6020      	str	r0, [r4, #0]
c0d00482:	2009      	movs	r0, #9
c0d00484:	0300      	lsls	r0, r0, #12
c0d00486:	f002 f83b 	bl	c0d02500 <os_longjmp>
c0d0048a:	480e      	ldr	r0, [pc, #56]	; (c0d004c4 <handleApdu+0x214>)
c0d0048c:	1c80      	adds	r0, r0, #2
c0d0048e:	f002 f837 	bl	c0d02500 <os_longjmp>
c0d00492:	2019      	movs	r0, #25
c0d00494:	0280      	lsls	r0, r0, #10
c0d00496:	f002 f833 	bl	c0d02500 <os_longjmp>
c0d0049a:	4605      	mov	r5, r0
c0d0049c:	f007 ff50 	bl	c0d08340 <strlen>
c0d004a0:	4606      	mov	r6, r0
c0d004a2:	4807      	ldr	r0, [pc, #28]	; (c0d004c0 <handleApdu+0x210>)
c0d004a4:	4629      	mov	r1, r5
c0d004a6:	4632      	mov	r2, r6
c0d004a8:	f007 fdbc 	bl	c0d08024 <__aeabi_memmove>
c0d004ac:	6820      	ldr	r0, [r4, #0]
c0d004ae:	1980      	adds	r0, r0, r6
c0d004b0:	6020      	str	r0, [r4, #0]
c0d004b2:	4804      	ldr	r0, [pc, #16]	; (c0d004c4 <handleApdu+0x214>)
c0d004b4:	f002 f824 	bl	c0d02500 <os_longjmp>
c0d004b8:	206d      	movs	r0, #109	; 0x6d
c0d004ba:	0200      	lsls	r0, r0, #8
c0d004bc:	f002 f820 	bl	c0d02500 <os_longjmp>
c0d004c0:	20000305 	.word	0x20000305
c0d004c4:	00006984 	.word	0x00006984
c0d004c8:	20000200 	.word	0x20000200
c0d004cc:	2000048c 	.word	0x2000048c
c0d004d0:	20000c64 	.word	0x20000c64
c0d004d4:	fffffd11 	.word	0xfffffd11
c0d004d8:	fffffce9 	.word	0xfffffce9
c0d004dc:	00000175 	.word	0x00000175
c0d004e0:	00004933 	.word	0x00004933
c0d004e4:	00004913 	.word	0x00004913
c0d004e8:	00000133 	.word	0x00000133

c0d004ec <app_reply_address>:
c0d004ec:	b580      	push	{r7, lr}
c0d004ee:	4807      	ldr	r0, [pc, #28]	; (c0d0050c <app_reply_address+0x20>)
c0d004f0:	8800      	ldrh	r0, [r0, #0]
c0d004f2:	b2c1      	uxtb	r1, r0
c0d004f4:	4a06      	ldr	r2, [pc, #24]	; (c0d00510 <app_reply_address+0x24>)
c0d004f6:	2390      	movs	r3, #144	; 0x90
c0d004f8:	5453      	strb	r3, [r2, r1]
c0d004fa:	1851      	adds	r1, r2, r1
c0d004fc:	2200      	movs	r2, #0
c0d004fe:	704a      	strb	r2, [r1, #1]
c0d00500:	1c80      	adds	r0, r0, #2
c0d00502:	b281      	uxth	r1, r0
c0d00504:	2020      	movs	r0, #32
c0d00506:	f002 fa25 	bl	c0d02954 <io_exchange>
c0d0050a:	bd80      	pop	{r7, pc}
c0d0050c:	20000200 	.word	0x20000200
c0d00510:	20000305 	.word	0x20000305

c0d00514 <app_sign>:
c0d00514:	b570      	push	{r4, r5, r6, lr}
c0d00516:	b082      	sub	sp, #8
c0d00518:	ad01      	add	r5, sp, #4
c0d0051a:	2600      	movs	r6, #0
c0d0051c:	802e      	strh	r6, [r5, #0]
c0d0051e:	2041      	movs	r0, #65	; 0x41
c0d00520:	0081      	lsls	r1, r0, #2
c0d00522:	4c10      	ldr	r4, [pc, #64]	; (c0d00564 <app_sign+0x50>)
c0d00524:	4620      	mov	r0, r4
c0d00526:	f007 fd89 	bl	c0d0803c <explicit_bzero>
c0d0052a:	21ff      	movs	r1, #255	; 0xff
c0d0052c:	3102      	adds	r1, #2
c0d0052e:	4620      	mov	r0, r4
c0d00530:	462a      	mov	r2, r5
c0d00532:	f001 fb0d 	bl	c0d01b50 <crypto_sign>
c0d00536:	2803      	cmp	r0, #3
c0d00538:	d109      	bne.n	c0d0054e <app_sign+0x3a>
c0d0053a:	8828      	ldrh	r0, [r5, #0]
c0d0053c:	2800      	cmp	r0, #0
c0d0053e:	d006      	beq.n	c0d0054e <app_sign+0x3a>
c0d00540:	b2c1      	uxtb	r1, r0
c0d00542:	2290      	movs	r2, #144	; 0x90
c0d00544:	5462      	strb	r2, [r4, r1]
c0d00546:	1861      	adds	r1, r4, r1
c0d00548:	704e      	strb	r6, [r1, #1]
c0d0054a:	1c80      	adds	r0, r0, #2
c0d0054c:	e004      	b.n	c0d00558 <app_sign+0x44>
c0d0054e:	2001      	movs	r0, #1
c0d00550:	7060      	strb	r0, [r4, #1]
c0d00552:	206f      	movs	r0, #111	; 0x6f
c0d00554:	7020      	strb	r0, [r4, #0]
c0d00556:	2002      	movs	r0, #2
c0d00558:	b281      	uxth	r1, r0
c0d0055a:	2020      	movs	r0, #32
c0d0055c:	f002 f9fa 	bl	c0d02954 <io_exchange>
c0d00560:	b002      	add	sp, #8
c0d00562:	bd70      	pop	{r4, r5, r6, pc}
c0d00564:	20000305 	.word	0x20000305

c0d00568 <io_event>:
c0d00568:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d0056a:	b081      	sub	sp, #4
c0d0056c:	4ee8      	ldr	r6, [pc, #928]	; (c0d00910 <io_event+0x3a8>)
c0d0056e:	7830      	ldrb	r0, [r6, #0]
c0d00570:	280c      	cmp	r0, #12
c0d00572:	dc05      	bgt.n	c0d00580 <io_event+0x18>
c0d00574:	2805      	cmp	r0, #5
c0d00576:	d05d      	beq.n	c0d00634 <io_event+0xcc>
c0d00578:	280c      	cmp	r0, #12
c0d0057a:	d100      	bne.n	c0d0057e <io_event+0x16>
c0d0057c:	e207      	b.n	c0d0098e <io_event+0x426>
c0d0057e:	e0fc      	b.n	c0d0077a <io_event+0x212>
c0d00580:	280d      	cmp	r0, #13
c0d00582:	d100      	bne.n	c0d00586 <io_event+0x1e>
c0d00584:	e0af      	b.n	c0d006e6 <io_event+0x17e>
c0d00586:	280e      	cmp	r0, #14
c0d00588:	d000      	beq.n	c0d0058c <io_event+0x24>
c0d0058a:	e0f6      	b.n	c0d0077a <io_event+0x212>
c0d0058c:	2044      	movs	r0, #68	; 0x44
c0d0058e:	4ee1      	ldr	r6, [pc, #900]	; (c0d00914 <io_event+0x3ac>)
c0d00590:	2101      	movs	r1, #1
c0d00592:	5431      	strb	r1, [r6, r0]
c0d00594:	4635      	mov	r5, r6
c0d00596:	3544      	adds	r5, #68	; 0x44
c0d00598:	2700      	movs	r7, #0
c0d0059a:	606f      	str	r7, [r5, #4]
c0d0059c:	4628      	mov	r0, r5
c0d0059e:	f004 fad3 	bl	c0d04b48 <os_ux>
c0d005a2:	2004      	movs	r0, #4
c0d005a4:	f004 fb42 	bl	c0d04c2c <os_sched_last_status>
c0d005a8:	6068      	str	r0, [r5, #4]
c0d005aa:	2869      	cmp	r0, #105	; 0x69
c0d005ac:	d000      	beq.n	c0d005b0 <io_event+0x48>
c0d005ae:	e137      	b.n	c0d00820 <io_event+0x2b8>
c0d005b0:	f002 f8a4 	bl	c0d026fc <io_seproxyhal_init_ux>
c0d005b4:	f002 f8a4 	bl	c0d02700 <io_seproxyhal_init_button>
c0d005b8:	2000      	movs	r0, #0
c0d005ba:	84f0      	strh	r0, [r6, #38]	; 0x26
c0d005bc:	2004      	movs	r0, #4
c0d005be:	f004 fb35 	bl	c0d04c2c <os_sched_last_status>
c0d005c2:	64b0      	str	r0, [r6, #72]	; 0x48
c0d005c4:	2800      	cmp	r0, #0
c0d005c6:	d100      	bne.n	c0d005ca <io_event+0x62>
c0d005c8:	e1e1      	b.n	c0d0098e <io_event+0x426>
c0d005ca:	2897      	cmp	r0, #151	; 0x97
c0d005cc:	d100      	bne.n	c0d005d0 <io_event+0x68>
c0d005ce:	e1de      	b.n	c0d0098e <io_event+0x426>
c0d005d0:	6ab0      	ldr	r0, [r6, #40]	; 0x28
c0d005d2:	2800      	cmp	r0, #0
c0d005d4:	d100      	bne.n	c0d005d8 <io_event+0x70>
c0d005d6:	e1da      	b.n	c0d0098e <io_event+0x426>
c0d005d8:	8cf0      	ldrh	r0, [r6, #38]	; 0x26
c0d005da:	212c      	movs	r1, #44	; 0x2c
c0d005dc:	5c71      	ldrb	r1, [r6, r1]
c0d005de:	b280      	uxth	r0, r0
c0d005e0:	4288      	cmp	r0, r1
c0d005e2:	d300      	bcc.n	c0d005e6 <io_event+0x7e>
c0d005e4:	e1d3      	b.n	c0d0098e <io_event+0x426>
c0d005e6:	f004 faed 	bl	c0d04bc4 <io_seph_is_status_sent>
c0d005ea:	2800      	cmp	r0, #0
c0d005ec:	d000      	beq.n	c0d005f0 <io_event+0x88>
c0d005ee:	e1ce      	b.n	c0d0098e <io_event+0x426>
c0d005f0:	f004 fa7e 	bl	c0d04af0 <os_perso_isonboarded>
c0d005f4:	28aa      	cmp	r0, #170	; 0xaa
c0d005f6:	d104      	bne.n	c0d00602 <io_event+0x9a>
c0d005f8:	f004 fa98 	bl	c0d04b2c <os_global_pin_is_validated>
c0d005fc:	28aa      	cmp	r0, #170	; 0xaa
c0d005fe:	d000      	beq.n	c0d00602 <io_event+0x9a>
c0d00600:	e1c5      	b.n	c0d0098e <io_event+0x426>
c0d00602:	6ab1      	ldr	r1, [r6, #40]	; 0x28
c0d00604:	8cf2      	ldrh	r2, [r6, #38]	; 0x26
c0d00606:	0150      	lsls	r0, r2, #5
c0d00608:	1808      	adds	r0, r1, r0
c0d0060a:	6b33      	ldr	r3, [r6, #48]	; 0x30
c0d0060c:	2b00      	cmp	r3, #0
c0d0060e:	d004      	beq.n	c0d0061a <io_event+0xb2>
c0d00610:	4798      	blx	r3
c0d00612:	2800      	cmp	r0, #0
c0d00614:	d007      	beq.n	c0d00626 <io_event+0xbe>
c0d00616:	8cf2      	ldrh	r2, [r6, #38]	; 0x26
c0d00618:	6ab1      	ldr	r1, [r6, #40]	; 0x28
c0d0061a:	2801      	cmp	r0, #1
c0d0061c:	d101      	bne.n	c0d00622 <io_event+0xba>
c0d0061e:	0150      	lsls	r0, r2, #5
c0d00620:	1808      	adds	r0, r1, r0
c0d00622:	f006 ff6d 	bl	c0d07500 <io_seproxyhal_display>
c0d00626:	8cf0      	ldrh	r0, [r6, #38]	; 0x26
c0d00628:	1c40      	adds	r0, r0, #1
c0d0062a:	84f0      	strh	r0, [r6, #38]	; 0x26
c0d0062c:	6ab1      	ldr	r1, [r6, #40]	; 0x28
c0d0062e:	2900      	cmp	r1, #0
c0d00630:	d1d3      	bne.n	c0d005da <io_event+0x72>
c0d00632:	e1ac      	b.n	c0d0098e <io_event+0x426>
c0d00634:	2044      	movs	r0, #68	; 0x44
c0d00636:	4dda      	ldr	r5, [pc, #872]	; (c0d009a0 <io_event+0x438>)
c0d00638:	2101      	movs	r1, #1
c0d0063a:	5429      	strb	r1, [r5, r0]
c0d0063c:	462c      	mov	r4, r5
c0d0063e:	3444      	adds	r4, #68	; 0x44
c0d00640:	2700      	movs	r7, #0
c0d00642:	6067      	str	r7, [r4, #4]
c0d00644:	4620      	mov	r0, r4
c0d00646:	f004 fa7f 	bl	c0d04b48 <os_ux>
c0d0064a:	2004      	movs	r0, #4
c0d0064c:	f004 faee 	bl	c0d04c2c <os_sched_last_status>
c0d00650:	6060      	str	r0, [r4, #4]
c0d00652:	2800      	cmp	r0, #0
c0d00654:	d100      	bne.n	c0d00658 <io_event+0xf0>
c0d00656:	e19a      	b.n	c0d0098e <io_event+0x426>
c0d00658:	2897      	cmp	r0, #151	; 0x97
c0d0065a:	d100      	bne.n	c0d0065e <io_event+0xf6>
c0d0065c:	e197      	b.n	c0d0098e <io_event+0x426>
c0d0065e:	2869      	cmp	r0, #105	; 0x69
c0d00660:	d000      	beq.n	c0d00664 <io_event+0xfc>
c0d00662:	e159      	b.n	c0d00918 <io_event+0x3b0>
c0d00664:	f002 f84a 	bl	c0d026fc <io_seproxyhal_init_ux>
c0d00668:	f002 f84a 	bl	c0d02700 <io_seproxyhal_init_button>
c0d0066c:	84ef      	strh	r7, [r5, #38]	; 0x26
c0d0066e:	2004      	movs	r0, #4
c0d00670:	f004 fadc 	bl	c0d04c2c <os_sched_last_status>
c0d00674:	64a8      	str	r0, [r5, #72]	; 0x48
c0d00676:	2800      	cmp	r0, #0
c0d00678:	d100      	bne.n	c0d0067c <io_event+0x114>
c0d0067a:	e188      	b.n	c0d0098e <io_event+0x426>
c0d0067c:	2897      	cmp	r0, #151	; 0x97
c0d0067e:	d100      	bne.n	c0d00682 <io_event+0x11a>
c0d00680:	e185      	b.n	c0d0098e <io_event+0x426>
c0d00682:	6aa8      	ldr	r0, [r5, #40]	; 0x28
c0d00684:	2800      	cmp	r0, #0
c0d00686:	d100      	bne.n	c0d0068a <io_event+0x122>
c0d00688:	e181      	b.n	c0d0098e <io_event+0x426>
c0d0068a:	8ce8      	ldrh	r0, [r5, #38]	; 0x26
c0d0068c:	212c      	movs	r1, #44	; 0x2c
c0d0068e:	5c69      	ldrb	r1, [r5, r1]
c0d00690:	b280      	uxth	r0, r0
c0d00692:	4288      	cmp	r0, r1
c0d00694:	d300      	bcc.n	c0d00698 <io_event+0x130>
c0d00696:	e17a      	b.n	c0d0098e <io_event+0x426>
c0d00698:	f004 fa94 	bl	c0d04bc4 <io_seph_is_status_sent>
c0d0069c:	2800      	cmp	r0, #0
c0d0069e:	d000      	beq.n	c0d006a2 <io_event+0x13a>
c0d006a0:	e175      	b.n	c0d0098e <io_event+0x426>
c0d006a2:	f004 fa25 	bl	c0d04af0 <os_perso_isonboarded>
c0d006a6:	28aa      	cmp	r0, #170	; 0xaa
c0d006a8:	d104      	bne.n	c0d006b4 <io_event+0x14c>
c0d006aa:	f004 fa3f 	bl	c0d04b2c <os_global_pin_is_validated>
c0d006ae:	28aa      	cmp	r0, #170	; 0xaa
c0d006b0:	d000      	beq.n	c0d006b4 <io_event+0x14c>
c0d006b2:	e16c      	b.n	c0d0098e <io_event+0x426>
c0d006b4:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d006b6:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d006b8:	0150      	lsls	r0, r2, #5
c0d006ba:	1808      	adds	r0, r1, r0
c0d006bc:	6b2b      	ldr	r3, [r5, #48]	; 0x30
c0d006be:	2b00      	cmp	r3, #0
c0d006c0:	d004      	beq.n	c0d006cc <io_event+0x164>
c0d006c2:	4798      	blx	r3
c0d006c4:	2800      	cmp	r0, #0
c0d006c6:	d007      	beq.n	c0d006d8 <io_event+0x170>
c0d006c8:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d006ca:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d006cc:	2801      	cmp	r0, #1
c0d006ce:	d101      	bne.n	c0d006d4 <io_event+0x16c>
c0d006d0:	0150      	lsls	r0, r2, #5
c0d006d2:	1808      	adds	r0, r1, r0
c0d006d4:	f006 ff14 	bl	c0d07500 <io_seproxyhal_display>
c0d006d8:	8ce8      	ldrh	r0, [r5, #38]	; 0x26
c0d006da:	1c40      	adds	r0, r0, #1
c0d006dc:	84e8      	strh	r0, [r5, #38]	; 0x26
c0d006de:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d006e0:	2900      	cmp	r1, #0
c0d006e2:	d1d3      	bne.n	c0d0068c <io_event+0x124>
c0d006e4:	e153      	b.n	c0d0098e <io_event+0x426>
c0d006e6:	242c      	movs	r4, #44	; 0x2c
c0d006e8:	4dee      	ldr	r5, [pc, #952]	; (c0d00aa4 <io_event+0x53c>)
c0d006ea:	5d28      	ldrb	r0, [r5, r4]
c0d006ec:	8ce9      	ldrh	r1, [r5, #38]	; 0x26
c0d006ee:	4281      	cmp	r1, r0
c0d006f0:	d202      	bcs.n	c0d006f8 <io_event+0x190>
c0d006f2:	2044      	movs	r0, #68	; 0x44
c0d006f4:	2101      	movs	r1, #1
c0d006f6:	5429      	strb	r1, [r5, r0]
c0d006f8:	2600      	movs	r6, #0
c0d006fa:	64ae      	str	r6, [r5, #72]	; 0x48
c0d006fc:	4628      	mov	r0, r5
c0d006fe:	3044      	adds	r0, #68	; 0x44
c0d00700:	f004 fa22 	bl	c0d04b48 <os_ux>
c0d00704:	2004      	movs	r0, #4
c0d00706:	f004 fa91 	bl	c0d04c2c <os_sched_last_status>
c0d0070a:	64a8      	str	r0, [r5, #72]	; 0x48
c0d0070c:	2800      	cmp	r0, #0
c0d0070e:	d100      	bne.n	c0d00712 <io_event+0x1aa>
c0d00710:	e13d      	b.n	c0d0098e <io_event+0x426>
c0d00712:	2869      	cmp	r0, #105	; 0x69
c0d00714:	d100      	bne.n	c0d00718 <io_event+0x1b0>
c0d00716:	e145      	b.n	c0d009a4 <io_event+0x43c>
c0d00718:	2897      	cmp	r0, #151	; 0x97
c0d0071a:	d100      	bne.n	c0d0071e <io_event+0x1b6>
c0d0071c:	e137      	b.n	c0d0098e <io_event+0x426>
c0d0071e:	6aa8      	ldr	r0, [r5, #40]	; 0x28
c0d00720:	2800      	cmp	r0, #0
c0d00722:	d028      	beq.n	c0d00776 <io_event+0x20e>
c0d00724:	8ce8      	ldrh	r0, [r5, #38]	; 0x26
c0d00726:	5d29      	ldrb	r1, [r5, r4]
c0d00728:	b280      	uxth	r0, r0
c0d0072a:	4288      	cmp	r0, r1
c0d0072c:	d223      	bcs.n	c0d00776 <io_event+0x20e>
c0d0072e:	f004 fa49 	bl	c0d04bc4 <io_seph_is_status_sent>
c0d00732:	2800      	cmp	r0, #0
c0d00734:	d11f      	bne.n	c0d00776 <io_event+0x20e>
c0d00736:	f004 f9db 	bl	c0d04af0 <os_perso_isonboarded>
c0d0073a:	28aa      	cmp	r0, #170	; 0xaa
c0d0073c:	d103      	bne.n	c0d00746 <io_event+0x1de>
c0d0073e:	f004 f9f5 	bl	c0d04b2c <os_global_pin_is_validated>
c0d00742:	28aa      	cmp	r0, #170	; 0xaa
c0d00744:	d117      	bne.n	c0d00776 <io_event+0x20e>
c0d00746:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d00748:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d0074a:	0150      	lsls	r0, r2, #5
c0d0074c:	1808      	adds	r0, r1, r0
c0d0074e:	6b2b      	ldr	r3, [r5, #48]	; 0x30
c0d00750:	2b00      	cmp	r3, #0
c0d00752:	d004      	beq.n	c0d0075e <io_event+0x1f6>
c0d00754:	4798      	blx	r3
c0d00756:	2800      	cmp	r0, #0
c0d00758:	d007      	beq.n	c0d0076a <io_event+0x202>
c0d0075a:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d0075c:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d0075e:	2801      	cmp	r0, #1
c0d00760:	d101      	bne.n	c0d00766 <io_event+0x1fe>
c0d00762:	0150      	lsls	r0, r2, #5
c0d00764:	1808      	adds	r0, r1, r0
c0d00766:	f006 fecb 	bl	c0d07500 <io_seproxyhal_display>
c0d0076a:	8ce8      	ldrh	r0, [r5, #38]	; 0x26
c0d0076c:	1c40      	adds	r0, r0, #1
c0d0076e:	84e8      	strh	r0, [r5, #38]	; 0x26
c0d00770:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d00772:	2900      	cmp	r1, #0
c0d00774:	d1d7      	bne.n	c0d00726 <io_event+0x1be>
c0d00776:	5d28      	ldrb	r0, [r5, r4]
c0d00778:	e104      	b.n	c0d00984 <io_event+0x41c>
c0d0077a:	2044      	movs	r0, #68	; 0x44
c0d0077c:	4dc9      	ldr	r5, [pc, #804]	; (c0d00aa4 <io_event+0x53c>)
c0d0077e:	2101      	movs	r1, #1
c0d00780:	5429      	strb	r1, [r5, r0]
c0d00782:	462c      	mov	r4, r5
c0d00784:	3444      	adds	r4, #68	; 0x44
c0d00786:	2600      	movs	r6, #0
c0d00788:	6066      	str	r6, [r4, #4]
c0d0078a:	4620      	mov	r0, r4
c0d0078c:	f004 f9dc 	bl	c0d04b48 <os_ux>
c0d00790:	2004      	movs	r0, #4
c0d00792:	f004 fa4b 	bl	c0d04c2c <os_sched_last_status>
c0d00796:	6060      	str	r0, [r4, #4]
c0d00798:	2869      	cmp	r0, #105	; 0x69
c0d0079a:	d000      	beq.n	c0d0079e <io_event+0x236>
c0d0079c:	e08a      	b.n	c0d008b4 <io_event+0x34c>
c0d0079e:	f001 ffad 	bl	c0d026fc <io_seproxyhal_init_ux>
c0d007a2:	f001 ffad 	bl	c0d02700 <io_seproxyhal_init_button>
c0d007a6:	84ee      	strh	r6, [r5, #38]	; 0x26
c0d007a8:	2004      	movs	r0, #4
c0d007aa:	f004 fa3f 	bl	c0d04c2c <os_sched_last_status>
c0d007ae:	64a8      	str	r0, [r5, #72]	; 0x48
c0d007b0:	2800      	cmp	r0, #0
c0d007b2:	d100      	bne.n	c0d007b6 <io_event+0x24e>
c0d007b4:	e0eb      	b.n	c0d0098e <io_event+0x426>
c0d007b6:	2897      	cmp	r0, #151	; 0x97
c0d007b8:	d100      	bne.n	c0d007bc <io_event+0x254>
c0d007ba:	e0e8      	b.n	c0d0098e <io_event+0x426>
c0d007bc:	6aa8      	ldr	r0, [r5, #40]	; 0x28
c0d007be:	2800      	cmp	r0, #0
c0d007c0:	d100      	bne.n	c0d007c4 <io_event+0x25c>
c0d007c2:	e0e4      	b.n	c0d0098e <io_event+0x426>
c0d007c4:	8ce8      	ldrh	r0, [r5, #38]	; 0x26
c0d007c6:	212c      	movs	r1, #44	; 0x2c
c0d007c8:	5c69      	ldrb	r1, [r5, r1]
c0d007ca:	b280      	uxth	r0, r0
c0d007cc:	4288      	cmp	r0, r1
c0d007ce:	d300      	bcc.n	c0d007d2 <io_event+0x26a>
c0d007d0:	e0dd      	b.n	c0d0098e <io_event+0x426>
c0d007d2:	f004 f9f7 	bl	c0d04bc4 <io_seph_is_status_sent>
c0d007d6:	2800      	cmp	r0, #0
c0d007d8:	d000      	beq.n	c0d007dc <io_event+0x274>
c0d007da:	e0d8      	b.n	c0d0098e <io_event+0x426>
c0d007dc:	f004 f988 	bl	c0d04af0 <os_perso_isonboarded>
c0d007e0:	28aa      	cmp	r0, #170	; 0xaa
c0d007e2:	d104      	bne.n	c0d007ee <io_event+0x286>
c0d007e4:	f004 f9a2 	bl	c0d04b2c <os_global_pin_is_validated>
c0d007e8:	28aa      	cmp	r0, #170	; 0xaa
c0d007ea:	d000      	beq.n	c0d007ee <io_event+0x286>
c0d007ec:	e0cf      	b.n	c0d0098e <io_event+0x426>
c0d007ee:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d007f0:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d007f2:	0150      	lsls	r0, r2, #5
c0d007f4:	1808      	adds	r0, r1, r0
c0d007f6:	6b2b      	ldr	r3, [r5, #48]	; 0x30
c0d007f8:	2b00      	cmp	r3, #0
c0d007fa:	d004      	beq.n	c0d00806 <io_event+0x29e>
c0d007fc:	4798      	blx	r3
c0d007fe:	2800      	cmp	r0, #0
c0d00800:	d007      	beq.n	c0d00812 <io_event+0x2aa>
c0d00802:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d00804:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d00806:	2801      	cmp	r0, #1
c0d00808:	d101      	bne.n	c0d0080e <io_event+0x2a6>
c0d0080a:	0150      	lsls	r0, r2, #5
c0d0080c:	1808      	adds	r0, r1, r0
c0d0080e:	f006 fe77 	bl	c0d07500 <io_seproxyhal_display>
c0d00812:	8ce8      	ldrh	r0, [r5, #38]	; 0x26
c0d00814:	1c40      	adds	r0, r0, #1
c0d00816:	84e8      	strh	r0, [r5, #38]	; 0x26
c0d00818:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d0081a:	2900      	cmp	r1, #0
c0d0081c:	d1d3      	bne.n	c0d007c6 <io_event+0x25e>
c0d0081e:	e0b6      	b.n	c0d0098e <io_event+0x426>
c0d00820:	4604      	mov	r4, r0
c0d00822:	6bf0      	ldr	r0, [r6, #60]	; 0x3c
c0d00824:	2800      	cmp	r0, #0
c0d00826:	d00e      	beq.n	c0d00846 <io_event+0x2de>
c0d00828:	4601      	mov	r1, r0
c0d0082a:	3964      	subs	r1, #100	; 0x64
c0d0082c:	d200      	bcs.n	c0d00830 <io_event+0x2c8>
c0d0082e:	4639      	mov	r1, r7
c0d00830:	63f1      	str	r1, [r6, #60]	; 0x3c
c0d00832:	2864      	cmp	r0, #100	; 0x64
c0d00834:	d807      	bhi.n	c0d00846 <io_event+0x2de>
c0d00836:	6bb1      	ldr	r1, [r6, #56]	; 0x38
c0d00838:	2900      	cmp	r1, #0
c0d0083a:	d100      	bne.n	c0d0083e <io_event+0x2d6>
c0d0083c:	e0ec      	b.n	c0d00a18 <io_event+0x4b0>
c0d0083e:	6c30      	ldr	r0, [r6, #64]	; 0x40
c0d00840:	63f0      	str	r0, [r6, #60]	; 0x3c
c0d00842:	2000      	movs	r0, #0
c0d00844:	4788      	blx	r1
c0d00846:	2c00      	cmp	r4, #0
c0d00848:	d100      	bne.n	c0d0084c <io_event+0x2e4>
c0d0084a:	e0a0      	b.n	c0d0098e <io_event+0x426>
c0d0084c:	2c97      	cmp	r4, #151	; 0x97
c0d0084e:	d100      	bne.n	c0d00852 <io_event+0x2ea>
c0d00850:	e09d      	b.n	c0d0098e <io_event+0x426>
c0d00852:	6ab0      	ldr	r0, [r6, #40]	; 0x28
c0d00854:	2800      	cmp	r0, #0
c0d00856:	d029      	beq.n	c0d008ac <io_event+0x344>
c0d00858:	8cf0      	ldrh	r0, [r6, #38]	; 0x26
c0d0085a:	212c      	movs	r1, #44	; 0x2c
c0d0085c:	5c71      	ldrb	r1, [r6, r1]
c0d0085e:	b280      	uxth	r0, r0
c0d00860:	4288      	cmp	r0, r1
c0d00862:	d223      	bcs.n	c0d008ac <io_event+0x344>
c0d00864:	f004 f9ae 	bl	c0d04bc4 <io_seph_is_status_sent>
c0d00868:	2800      	cmp	r0, #0
c0d0086a:	d11f      	bne.n	c0d008ac <io_event+0x344>
c0d0086c:	f004 f940 	bl	c0d04af0 <os_perso_isonboarded>
c0d00870:	28aa      	cmp	r0, #170	; 0xaa
c0d00872:	d103      	bne.n	c0d0087c <io_event+0x314>
c0d00874:	f004 f95a 	bl	c0d04b2c <os_global_pin_is_validated>
c0d00878:	28aa      	cmp	r0, #170	; 0xaa
c0d0087a:	d117      	bne.n	c0d008ac <io_event+0x344>
c0d0087c:	6ab1      	ldr	r1, [r6, #40]	; 0x28
c0d0087e:	8cf2      	ldrh	r2, [r6, #38]	; 0x26
c0d00880:	0150      	lsls	r0, r2, #5
c0d00882:	1808      	adds	r0, r1, r0
c0d00884:	6b33      	ldr	r3, [r6, #48]	; 0x30
c0d00886:	2b00      	cmp	r3, #0
c0d00888:	d004      	beq.n	c0d00894 <io_event+0x32c>
c0d0088a:	4798      	blx	r3
c0d0088c:	2800      	cmp	r0, #0
c0d0088e:	d007      	beq.n	c0d008a0 <io_event+0x338>
c0d00890:	8cf2      	ldrh	r2, [r6, #38]	; 0x26
c0d00892:	6ab1      	ldr	r1, [r6, #40]	; 0x28
c0d00894:	2801      	cmp	r0, #1
c0d00896:	d101      	bne.n	c0d0089c <io_event+0x334>
c0d00898:	0150      	lsls	r0, r2, #5
c0d0089a:	1808      	adds	r0, r1, r0
c0d0089c:	f006 fe30 	bl	c0d07500 <io_seproxyhal_display>
c0d008a0:	8cf0      	ldrh	r0, [r6, #38]	; 0x26
c0d008a2:	1c40      	adds	r0, r0, #1
c0d008a4:	84f0      	strh	r0, [r6, #38]	; 0x26
c0d008a6:	6ab1      	ldr	r1, [r6, #40]	; 0x28
c0d008a8:	2900      	cmp	r1, #0
c0d008aa:	d1d6      	bne.n	c0d0085a <io_event+0x2f2>
c0d008ac:	202c      	movs	r0, #44	; 0x2c
c0d008ae:	5c30      	ldrb	r0, [r6, r0]
c0d008b0:	8cf1      	ldrh	r1, [r6, #38]	; 0x26
c0d008b2:	e068      	b.n	c0d00986 <io_event+0x41e>
c0d008b4:	6aa8      	ldr	r0, [r5, #40]	; 0x28
c0d008b6:	2800      	cmp	r0, #0
c0d008b8:	d062      	beq.n	c0d00980 <io_event+0x418>
c0d008ba:	8ce8      	ldrh	r0, [r5, #38]	; 0x26
c0d008bc:	212c      	movs	r1, #44	; 0x2c
c0d008be:	5c69      	ldrb	r1, [r5, r1]
c0d008c0:	b280      	uxth	r0, r0
c0d008c2:	4288      	cmp	r0, r1
c0d008c4:	d25c      	bcs.n	c0d00980 <io_event+0x418>
c0d008c6:	f004 f97d 	bl	c0d04bc4 <io_seph_is_status_sent>
c0d008ca:	2800      	cmp	r0, #0
c0d008cc:	d158      	bne.n	c0d00980 <io_event+0x418>
c0d008ce:	f004 f90f 	bl	c0d04af0 <os_perso_isonboarded>
c0d008d2:	28aa      	cmp	r0, #170	; 0xaa
c0d008d4:	d103      	bne.n	c0d008de <io_event+0x376>
c0d008d6:	f004 f929 	bl	c0d04b2c <os_global_pin_is_validated>
c0d008da:	28aa      	cmp	r0, #170	; 0xaa
c0d008dc:	d150      	bne.n	c0d00980 <io_event+0x418>
c0d008de:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d008e0:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d008e2:	0150      	lsls	r0, r2, #5
c0d008e4:	1808      	adds	r0, r1, r0
c0d008e6:	6b2b      	ldr	r3, [r5, #48]	; 0x30
c0d008e8:	2b00      	cmp	r3, #0
c0d008ea:	d004      	beq.n	c0d008f6 <io_event+0x38e>
c0d008ec:	4798      	blx	r3
c0d008ee:	2800      	cmp	r0, #0
c0d008f0:	d007      	beq.n	c0d00902 <io_event+0x39a>
c0d008f2:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d008f4:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d008f6:	2801      	cmp	r0, #1
c0d008f8:	d101      	bne.n	c0d008fe <io_event+0x396>
c0d008fa:	0150      	lsls	r0, r2, #5
c0d008fc:	1808      	adds	r0, r1, r0
c0d008fe:	f006 fdff 	bl	c0d07500 <io_seproxyhal_display>
c0d00902:	8ce8      	ldrh	r0, [r5, #38]	; 0x26
c0d00904:	1c40      	adds	r0, r0, #1
c0d00906:	84e8      	strh	r0, [r5, #38]	; 0x26
c0d00908:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d0090a:	2900      	cmp	r1, #0
c0d0090c:	d1d6      	bne.n	c0d008bc <io_event+0x354>
c0d0090e:	e037      	b.n	c0d00980 <io_event+0x418>
c0d00910:	20000202 	.word	0x20000202
c0d00914:	20000c64 	.word	0x20000c64
c0d00918:	6b68      	ldr	r0, [r5, #52]	; 0x34
c0d0091a:	2800      	cmp	r0, #0
c0d0091c:	d003      	beq.n	c0d00926 <io_event+0x3be>
c0d0091e:	78f1      	ldrb	r1, [r6, #3]
c0d00920:	0849      	lsrs	r1, r1, #1
c0d00922:	f001 ffb9 	bl	c0d02898 <io_seproxyhal_button_push>
c0d00926:	6aa8      	ldr	r0, [r5, #40]	; 0x28
c0d00928:	2800      	cmp	r0, #0
c0d0092a:	d029      	beq.n	c0d00980 <io_event+0x418>
c0d0092c:	8ce8      	ldrh	r0, [r5, #38]	; 0x26
c0d0092e:	212c      	movs	r1, #44	; 0x2c
c0d00930:	5c69      	ldrb	r1, [r5, r1]
c0d00932:	b280      	uxth	r0, r0
c0d00934:	4288      	cmp	r0, r1
c0d00936:	d223      	bcs.n	c0d00980 <io_event+0x418>
c0d00938:	f004 f944 	bl	c0d04bc4 <io_seph_is_status_sent>
c0d0093c:	2800      	cmp	r0, #0
c0d0093e:	d11f      	bne.n	c0d00980 <io_event+0x418>
c0d00940:	f004 f8d6 	bl	c0d04af0 <os_perso_isonboarded>
c0d00944:	28aa      	cmp	r0, #170	; 0xaa
c0d00946:	d103      	bne.n	c0d00950 <io_event+0x3e8>
c0d00948:	f004 f8f0 	bl	c0d04b2c <os_global_pin_is_validated>
c0d0094c:	28aa      	cmp	r0, #170	; 0xaa
c0d0094e:	d117      	bne.n	c0d00980 <io_event+0x418>
c0d00950:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d00952:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d00954:	0150      	lsls	r0, r2, #5
c0d00956:	1808      	adds	r0, r1, r0
c0d00958:	6b2b      	ldr	r3, [r5, #48]	; 0x30
c0d0095a:	2b00      	cmp	r3, #0
c0d0095c:	d004      	beq.n	c0d00968 <io_event+0x400>
c0d0095e:	4798      	blx	r3
c0d00960:	2800      	cmp	r0, #0
c0d00962:	d007      	beq.n	c0d00974 <io_event+0x40c>
c0d00964:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d00966:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d00968:	2801      	cmp	r0, #1
c0d0096a:	d101      	bne.n	c0d00970 <io_event+0x408>
c0d0096c:	0150      	lsls	r0, r2, #5
c0d0096e:	1808      	adds	r0, r1, r0
c0d00970:	f006 fdc6 	bl	c0d07500 <io_seproxyhal_display>
c0d00974:	8ce8      	ldrh	r0, [r5, #38]	; 0x26
c0d00976:	1c40      	adds	r0, r0, #1
c0d00978:	84e8      	strh	r0, [r5, #38]	; 0x26
c0d0097a:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d0097c:	2900      	cmp	r1, #0
c0d0097e:	d1d6      	bne.n	c0d0092e <io_event+0x3c6>
c0d00980:	202c      	movs	r0, #44	; 0x2c
c0d00982:	5c28      	ldrb	r0, [r5, r0]
c0d00984:	8ce9      	ldrh	r1, [r5, #38]	; 0x26
c0d00986:	4281      	cmp	r1, r0
c0d00988:	d301      	bcc.n	c0d0098e <io_event+0x426>
c0d0098a:	f004 f91b 	bl	c0d04bc4 <io_seph_is_status_sent>
c0d0098e:	f004 f919 	bl	c0d04bc4 <io_seph_is_status_sent>
c0d00992:	2800      	cmp	r0, #0
c0d00994:	d101      	bne.n	c0d0099a <io_event+0x432>
c0d00996:	f001 fdc9 	bl	c0d0252c <io_seproxyhal_general_status>
c0d0099a:	2001      	movs	r0, #1
c0d0099c:	b001      	add	sp, #4
c0d0099e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d009a0:	20000c64 	.word	0x20000c64
c0d009a4:	f001 feaa 	bl	c0d026fc <io_seproxyhal_init_ux>
c0d009a8:	f001 feaa 	bl	c0d02700 <io_seproxyhal_init_button>
c0d009ac:	84ee      	strh	r6, [r5, #38]	; 0x26
c0d009ae:	2004      	movs	r0, #4
c0d009b0:	f004 f93c 	bl	c0d04c2c <os_sched_last_status>
c0d009b4:	64a8      	str	r0, [r5, #72]	; 0x48
c0d009b6:	2800      	cmp	r0, #0
c0d009b8:	d0e9      	beq.n	c0d0098e <io_event+0x426>
c0d009ba:	2897      	cmp	r0, #151	; 0x97
c0d009bc:	d0e7      	beq.n	c0d0098e <io_event+0x426>
c0d009be:	6aa8      	ldr	r0, [r5, #40]	; 0x28
c0d009c0:	2800      	cmp	r0, #0
c0d009c2:	d0e4      	beq.n	c0d0098e <io_event+0x426>
c0d009c4:	8ce8      	ldrh	r0, [r5, #38]	; 0x26
c0d009c6:	5d29      	ldrb	r1, [r5, r4]
c0d009c8:	b280      	uxth	r0, r0
c0d009ca:	4288      	cmp	r0, r1
c0d009cc:	d2df      	bcs.n	c0d0098e <io_event+0x426>
c0d009ce:	f004 f8f9 	bl	c0d04bc4 <io_seph_is_status_sent>
c0d009d2:	2800      	cmp	r0, #0
c0d009d4:	d1db      	bne.n	c0d0098e <io_event+0x426>
c0d009d6:	f004 f88b 	bl	c0d04af0 <os_perso_isonboarded>
c0d009da:	28aa      	cmp	r0, #170	; 0xaa
c0d009dc:	d103      	bne.n	c0d009e6 <io_event+0x47e>
c0d009de:	f004 f8a5 	bl	c0d04b2c <os_global_pin_is_validated>
c0d009e2:	28aa      	cmp	r0, #170	; 0xaa
c0d009e4:	d1d3      	bne.n	c0d0098e <io_event+0x426>
c0d009e6:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d009e8:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d009ea:	0150      	lsls	r0, r2, #5
c0d009ec:	1808      	adds	r0, r1, r0
c0d009ee:	6b2b      	ldr	r3, [r5, #48]	; 0x30
c0d009f0:	2b00      	cmp	r3, #0
c0d009f2:	d004      	beq.n	c0d009fe <io_event+0x496>
c0d009f4:	4798      	blx	r3
c0d009f6:	2800      	cmp	r0, #0
c0d009f8:	d007      	beq.n	c0d00a0a <io_event+0x4a2>
c0d009fa:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d009fc:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d009fe:	2801      	cmp	r0, #1
c0d00a00:	d101      	bne.n	c0d00a06 <io_event+0x49e>
c0d00a02:	0150      	lsls	r0, r2, #5
c0d00a04:	1808      	adds	r0, r1, r0
c0d00a06:	f006 fd7b 	bl	c0d07500 <io_seproxyhal_display>
c0d00a0a:	8ce8      	ldrh	r0, [r5, #38]	; 0x26
c0d00a0c:	1c40      	adds	r0, r0, #1
c0d00a0e:	84e8      	strh	r0, [r5, #38]	; 0x26
c0d00a10:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d00a12:	2900      	cmp	r1, #0
c0d00a14:	d1d7      	bne.n	c0d009c6 <io_event+0x45e>
c0d00a16:	e7ba      	b.n	c0d0098e <io_event+0x426>
c0d00a18:	2c00      	cmp	r4, #0
c0d00a1a:	d0b8      	beq.n	c0d0098e <io_event+0x426>
c0d00a1c:	2c97      	cmp	r4, #151	; 0x97
c0d00a1e:	d0b6      	beq.n	c0d0098e <io_event+0x426>
c0d00a20:	f001 fe6c 	bl	c0d026fc <io_seproxyhal_init_ux>
c0d00a24:	f001 fe6c 	bl	c0d02700 <io_seproxyhal_init_button>
c0d00a28:	2000      	movs	r0, #0
c0d00a2a:	84f0      	strh	r0, [r6, #38]	; 0x26
c0d00a2c:	2004      	movs	r0, #4
c0d00a2e:	f004 f8fd 	bl	c0d04c2c <os_sched_last_status>
c0d00a32:	64b0      	str	r0, [r6, #72]	; 0x48
c0d00a34:	2800      	cmp	r0, #0
c0d00a36:	d100      	bne.n	c0d00a3a <io_event+0x4d2>
c0d00a38:	e705      	b.n	c0d00846 <io_event+0x2de>
c0d00a3a:	2897      	cmp	r0, #151	; 0x97
c0d00a3c:	d100      	bne.n	c0d00a40 <io_event+0x4d8>
c0d00a3e:	e702      	b.n	c0d00846 <io_event+0x2de>
c0d00a40:	6ab0      	ldr	r0, [r6, #40]	; 0x28
c0d00a42:	2800      	cmp	r0, #0
c0d00a44:	d100      	bne.n	c0d00a48 <io_event+0x4e0>
c0d00a46:	e6fe      	b.n	c0d00846 <io_event+0x2de>
c0d00a48:	8cf0      	ldrh	r0, [r6, #38]	; 0x26
c0d00a4a:	212c      	movs	r1, #44	; 0x2c
c0d00a4c:	5c71      	ldrb	r1, [r6, r1]
c0d00a4e:	b280      	uxth	r0, r0
c0d00a50:	4288      	cmp	r0, r1
c0d00a52:	d300      	bcc.n	c0d00a56 <io_event+0x4ee>
c0d00a54:	e6f7      	b.n	c0d00846 <io_event+0x2de>
c0d00a56:	f004 f8b5 	bl	c0d04bc4 <io_seph_is_status_sent>
c0d00a5a:	2800      	cmp	r0, #0
c0d00a5c:	d000      	beq.n	c0d00a60 <io_event+0x4f8>
c0d00a5e:	e6f2      	b.n	c0d00846 <io_event+0x2de>
c0d00a60:	f004 f846 	bl	c0d04af0 <os_perso_isonboarded>
c0d00a64:	28aa      	cmp	r0, #170	; 0xaa
c0d00a66:	d104      	bne.n	c0d00a72 <io_event+0x50a>
c0d00a68:	f004 f860 	bl	c0d04b2c <os_global_pin_is_validated>
c0d00a6c:	28aa      	cmp	r0, #170	; 0xaa
c0d00a6e:	d000      	beq.n	c0d00a72 <io_event+0x50a>
c0d00a70:	e6e9      	b.n	c0d00846 <io_event+0x2de>
c0d00a72:	6ab1      	ldr	r1, [r6, #40]	; 0x28
c0d00a74:	8cf2      	ldrh	r2, [r6, #38]	; 0x26
c0d00a76:	0150      	lsls	r0, r2, #5
c0d00a78:	1808      	adds	r0, r1, r0
c0d00a7a:	6b33      	ldr	r3, [r6, #48]	; 0x30
c0d00a7c:	2b00      	cmp	r3, #0
c0d00a7e:	d004      	beq.n	c0d00a8a <io_event+0x522>
c0d00a80:	4798      	blx	r3
c0d00a82:	2800      	cmp	r0, #0
c0d00a84:	d007      	beq.n	c0d00a96 <io_event+0x52e>
c0d00a86:	8cf2      	ldrh	r2, [r6, #38]	; 0x26
c0d00a88:	6ab1      	ldr	r1, [r6, #40]	; 0x28
c0d00a8a:	2801      	cmp	r0, #1
c0d00a8c:	d101      	bne.n	c0d00a92 <io_event+0x52a>
c0d00a8e:	0150      	lsls	r0, r2, #5
c0d00a90:	1808      	adds	r0, r1, r0
c0d00a92:	f006 fd35 	bl	c0d07500 <io_seproxyhal_display>
c0d00a96:	8cf0      	ldrh	r0, [r6, #38]	; 0x26
c0d00a98:	1c40      	adds	r0, r0, #1
c0d00a9a:	84f0      	strh	r0, [r6, #38]	; 0x26
c0d00a9c:	6ab1      	ldr	r1, [r6, #40]	; 0x28
c0d00a9e:	2900      	cmp	r1, #0
c0d00aa0:	d1d3      	bne.n	c0d00a4a <io_event+0x4e2>
c0d00aa2:	e6d0      	b.n	c0d00846 <io_event+0x2de>
c0d00aa4:	20000c64 	.word	0x20000c64

c0d00aa8 <io_exchange_al>:
c0d00aa8:	b5b0      	push	{r4, r5, r7, lr}
c0d00aaa:	4605      	mov	r5, r0
c0d00aac:	2007      	movs	r0, #7
c0d00aae:	4028      	ands	r0, r5
c0d00ab0:	2400      	movs	r4, #0
c0d00ab2:	2801      	cmp	r0, #1
c0d00ab4:	d012      	beq.n	c0d00adc <io_exchange_al+0x34>
c0d00ab6:	2802      	cmp	r0, #2
c0d00ab8:	d112      	bne.n	c0d00ae0 <io_exchange_al+0x38>
c0d00aba:	2900      	cmp	r1, #0
c0d00abc:	d007      	beq.n	c0d00ace <io_exchange_al+0x26>
c0d00abe:	480a      	ldr	r0, [pc, #40]	; (c0d00ae8 <io_exchange_al+0x40>)
c0d00ac0:	f004 f874 	bl	c0d04bac <io_seph_send>
c0d00ac4:	0628      	lsls	r0, r5, #24
c0d00ac6:	d509      	bpl.n	c0d00adc <io_exchange_al+0x34>
c0d00ac8:	f003 fffa 	bl	c0d04ac0 <halt>
c0d00acc:	e006      	b.n	c0d00adc <io_exchange_al+0x34>
c0d00ace:	2041      	movs	r0, #65	; 0x41
c0d00ad0:	0081      	lsls	r1, r0, #2
c0d00ad2:	4805      	ldr	r0, [pc, #20]	; (c0d00ae8 <io_exchange_al+0x40>)
c0d00ad4:	2200      	movs	r2, #0
c0d00ad6:	f004 f881 	bl	c0d04bdc <io_seph_recv>
c0d00ada:	4604      	mov	r4, r0
c0d00adc:	4620      	mov	r0, r4
c0d00ade:	bdb0      	pop	{r4, r5, r7, pc}
c0d00ae0:	2002      	movs	r0, #2
c0d00ae2:	f001 fd0d 	bl	c0d02500 <os_longjmp>
c0d00ae6:	46c0      	nop			; (mov r8, r8)
c0d00ae8:	20000305 	.word	0x20000305

c0d00aec <extractHDPath>:
c0d00aec:	b5b0      	push	{r4, r5, r7, lr}
c0d00aee:	1a40      	subs	r0, r0, r1
c0d00af0:	2813      	cmp	r0, #19
c0d00af2:	d925      	bls.n	c0d00b40 <extractHDPath+0x54>
c0d00af4:	4816      	ldr	r0, [pc, #88]	; (c0d00b50 <extractHDPath+0x64>)
c0d00af6:	1841      	adds	r1, r0, r1
c0d00af8:	4c16      	ldr	r4, [pc, #88]	; (c0d00b54 <extractHDPath+0x68>)
c0d00afa:	2214      	movs	r2, #20
c0d00afc:	4620      	mov	r0, r4
c0d00afe:	f007 fa8d 	bl	c0d0801c <__aeabi_memcpy>
c0d00b02:	4d15      	ldr	r5, [pc, #84]	; (c0d00b58 <extractHDPath+0x6c>)
c0d00b04:	4628      	mov	r0, r5
c0d00b06:	302d      	adds	r0, #45	; 0x2d
c0d00b08:	6821      	ldr	r1, [r4, #0]
c0d00b0a:	4281      	cmp	r1, r0
c0d00b0c:	d11c      	bne.n	c0d00b48 <extractHDPath+0x5c>
c0d00b0e:	6860      	ldr	r0, [r4, #4]
c0d00b10:	4912      	ldr	r1, [pc, #72]	; (c0d00b5c <extractHDPath+0x70>)
c0d00b12:	4288      	cmp	r0, r1
c0d00b14:	d118      	bne.n	c0d00b48 <extractHDPath+0x5c>
c0d00b16:	68e0      	ldr	r0, [r4, #12]
c0d00b18:	2800      	cmp	r0, #0
c0d00b1a:	d115      	bne.n	c0d00b48 <extractHDPath+0x5c>
c0d00b1c:	f000 f8e6 	bl	c0d00cec <app_mode_expert>
c0d00b20:	2800      	cmp	r0, #0
c0d00b22:	d108      	bne.n	c0d00b36 <extractHDPath+0x4a>
c0d00b24:	2000      	movs	r0, #0
c0d00b26:	1821      	adds	r1, r4, r0
c0d00b28:	6889      	ldr	r1, [r1, #8]
c0d00b2a:	4029      	ands	r1, r5
c0d00b2c:	2965      	cmp	r1, #101	; 0x65
c0d00b2e:	d203      	bcs.n	c0d00b38 <extractHDPath+0x4c>
c0d00b30:	1d00      	adds	r0, r0, #4
c0d00b32:	280c      	cmp	r0, #12
c0d00b34:	d1f7      	bne.n	c0d00b26 <extractHDPath+0x3a>
c0d00b36:	bdb0      	pop	{r4, r5, r7, pc}
c0d00b38:	4809      	ldr	r0, [pc, #36]	; (c0d00b60 <extractHDPath+0x74>)
c0d00b3a:	1c40      	adds	r0, r0, #1
c0d00b3c:	f001 fce0 	bl	c0d02500 <os_longjmp>
c0d00b40:	2067      	movs	r0, #103	; 0x67
c0d00b42:	0200      	lsls	r0, r0, #8
c0d00b44:	f001 fcdc 	bl	c0d02500 <os_longjmp>
c0d00b48:	4805      	ldr	r0, [pc, #20]	; (c0d00b60 <extractHDPath+0x74>)
c0d00b4a:	f001 fcd9 	bl	c0d02500 <os_longjmp>
c0d00b4e:	46c0      	nop			; (mov r8, r8)
c0d00b50:	20000305 	.word	0x20000305
c0d00b54:	2000029c 	.word	0x2000029c
c0d00b58:	7fffffff 	.word	0x7fffffff
c0d00b5c:	800003de 	.word	0x800003de
c0d00b60:	00006984 	.word	0x00006984

c0d00b64 <process_chunk>:
c0d00b64:	b510      	push	{r4, lr}
c0d00b66:	2904      	cmp	r1, #4
c0d00b68:	d923      	bls.n	c0d00bb2 <process_chunk+0x4e>
c0d00b6a:	460c      	mov	r4, r1
c0d00b6c:	4815      	ldr	r0, [pc, #84]	; (c0d00bc4 <process_chunk+0x60>)
c0d00b6e:	7881      	ldrb	r1, [r0, #2]
c0d00b70:	2902      	cmp	r1, #2
c0d00b72:	d00c      	beq.n	c0d00b8e <process_chunk+0x2a>
c0d00b74:	2901      	cmp	r1, #1
c0d00b76:	d013      	beq.n	c0d00ba0 <process_chunk+0x3c>
c0d00b78:	2900      	cmp	r1, #0
c0d00b7a:	d11f      	bne.n	c0d00bbc <process_chunk+0x58>
c0d00b7c:	f004 f864 	bl	c0d04c48 <tx_initialize>
c0d00b80:	f004 f872 	bl	c0d04c68 <tx_reset>
c0d00b84:	2105      	movs	r1, #5
c0d00b86:	4620      	mov	r0, r4
c0d00b88:	f7ff ffb0 	bl	c0d00aec <extractHDPath>
c0d00b8c:	e00f      	b.n	c0d00bae <process_chunk+0x4a>
c0d00b8e:	1d40      	adds	r0, r0, #5
c0d00b90:	1f64      	subs	r4, r4, #5
c0d00b92:	4621      	mov	r1, r4
c0d00b94:	f004 f86c 	bl	c0d04c70 <tx_append>
c0d00b98:	42a0      	cmp	r0, r4
c0d00b9a:	d10c      	bne.n	c0d00bb6 <process_chunk+0x52>
c0d00b9c:	2001      	movs	r0, #1
c0d00b9e:	bd10      	pop	{r4, pc}
c0d00ba0:	1d40      	adds	r0, r0, #5
c0d00ba2:	1f64      	subs	r4, r4, #5
c0d00ba4:	4621      	mov	r1, r4
c0d00ba6:	f004 f863 	bl	c0d04c70 <tx_append>
c0d00baa:	42a0      	cmp	r0, r4
c0d00bac:	d103      	bne.n	c0d00bb6 <process_chunk+0x52>
c0d00bae:	2000      	movs	r0, #0
c0d00bb0:	bd10      	pop	{r4, pc}
c0d00bb2:	2067      	movs	r0, #103	; 0x67
c0d00bb4:	e003      	b.n	c0d00bbe <process_chunk+0x5a>
c0d00bb6:	4804      	ldr	r0, [pc, #16]	; (c0d00bc8 <process_chunk+0x64>)
c0d00bb8:	f001 fca2 	bl	c0d02500 <os_longjmp>
c0d00bbc:	206b      	movs	r0, #107	; 0x6b
c0d00bbe:	0200      	lsls	r0, r0, #8
c0d00bc0:	f001 fc9e 	bl	c0d02500 <os_longjmp>
c0d00bc4:	20000305 	.word	0x20000305
c0d00bc8:	00006983 	.word	0x00006983

c0d00bcc <app_init>:
c0d00bcc:	b510      	push	{r4, lr}
c0d00bce:	f001 fd7d 	bl	c0d026cc <io_seproxyhal_init>
c0d00bd2:	2400      	movs	r4, #0
c0d00bd4:	4620      	mov	r0, r4
c0d00bd6:	f006 f899 	bl	c0d06d0c <USB_power>
c0d00bda:	2001      	movs	r0, #1
c0d00bdc:	f006 f896 	bl	c0d06d0c <USB_power>
c0d00be0:	f000 f87c 	bl	c0d00cdc <app_mode_reset>
c0d00be4:	4620      	mov	r0, r4
c0d00be6:	4621      	mov	r1, r4
c0d00be8:	f006 fb48 	bl	c0d0727c <view_idle_show>
c0d00bec:	bd10      	pop	{r4, pc}
	...

c0d00bf0 <app_main>:
c0d00bf0:	b090      	sub	sp, #64	; 0x40
c0d00bf2:	2600      	movs	r6, #0
c0d00bf4:	960f      	str	r6, [sp, #60]	; 0x3c
c0d00bf6:	960e      	str	r6, [sp, #56]	; 0x38
c0d00bf8:	960d      	str	r6, [sp, #52]	; 0x34
c0d00bfa:	f004 f825 	bl	c0d04c48 <tx_initialize>
c0d00bfe:	4f36      	ldr	r7, [pc, #216]	; (c0d00cd8 <app_main+0xe8>)
c0d00c00:	a80c      	add	r0, sp, #48	; 0x30
c0d00c02:	8006      	strh	r6, [r0, #0]
c0d00c04:	466d      	mov	r5, sp
c0d00c06:	4628      	mov	r0, r5
c0d00c08:	f007 fb3c 	bl	c0d08284 <setjmp>
c0d00c0c:	4604      	mov	r4, r0
c0d00c0e:	85a8      	strh	r0, [r5, #44]	; 0x2c
c0d00c10:	b280      	uxth	r0, r0
c0d00c12:	2805      	cmp	r0, #5
c0d00c14:	d01d      	beq.n	c0d00c52 <app_main+0x62>
c0d00c16:	2800      	cmp	r0, #0
c0d00c18:	d123      	bne.n	c0d00c62 <app_main+0x72>
c0d00c1a:	4668      	mov	r0, sp
c0d00c1c:	f003 fff8 	bl	c0d04c10 <try_context_set>
c0d00c20:	990e      	ldr	r1, [sp, #56]	; 0x38
c0d00c22:	910f      	str	r1, [sp, #60]	; 0x3c
c0d00c24:	960e      	str	r6, [sp, #56]	; 0x38
c0d00c26:	900a      	str	r0, [sp, #40]	; 0x28
c0d00c28:	980d      	ldr	r0, [sp, #52]	; 0x34
c0d00c2a:	990f      	ldr	r1, [sp, #60]	; 0x3c
c0d00c2c:	b2c0      	uxtb	r0, r0
c0d00c2e:	b289      	uxth	r1, r1
c0d00c30:	f001 fe90 	bl	c0d02954 <io_exchange>
c0d00c34:	900f      	str	r0, [sp, #60]	; 0x3c
c0d00c36:	960d      	str	r6, [sp, #52]	; 0x34
c0d00c38:	f007 f948 	bl	c0d07ecc <check_app_canary>
c0d00c3c:	980f      	ldr	r0, [sp, #60]	; 0x3c
c0d00c3e:	2800      	cmp	r0, #0
c0d00c40:	d042      	beq.n	c0d00cc8 <app_main+0xd8>
c0d00c42:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
c0d00c44:	a80d      	add	r0, sp, #52	; 0x34
c0d00c46:	a90e      	add	r1, sp, #56	; 0x38
c0d00c48:	f7ff fb32 	bl	c0d002b0 <handleApdu>
c0d00c4c:	f007 f93e 	bl	c0d07ecc <check_app_canary>
c0d00c50:	e02c      	b.n	c0d00cac <app_main+0xbc>
c0d00c52:	4668      	mov	r0, sp
c0d00c54:	8586      	strh	r6, [r0, #44]	; 0x2c
c0d00c56:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d00c58:	f003 ffda 	bl	c0d04c10 <try_context_set>
c0d00c5c:	f7ff ffb6 	bl	c0d00bcc <app_init>
c0d00c60:	e7ce      	b.n	c0d00c00 <app_main+0x10>
c0d00c62:	4668      	mov	r0, sp
c0d00c64:	8586      	strh	r6, [r0, #44]	; 0x2c
c0d00c66:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d00c68:	f003 ffd2 	bl	c0d04c10 <try_context_set>
c0d00c6c:	200f      	movs	r0, #15
c0d00c6e:	0300      	lsls	r0, r0, #12
c0d00c70:	4020      	ands	r0, r4
c0d00c72:	2109      	movs	r1, #9
c0d00c74:	0309      	lsls	r1, r1, #12
c0d00c76:	4288      	cmp	r0, r1
c0d00c78:	d003      	beq.n	c0d00c82 <app_main+0x92>
c0d00c7a:	2103      	movs	r1, #3
c0d00c7c:	0349      	lsls	r1, r1, #13
c0d00c7e:	4288      	cmp	r0, r1
c0d00c80:	d102      	bne.n	c0d00c88 <app_main+0x98>
c0d00c82:	a80c      	add	r0, sp, #48	; 0x30
c0d00c84:	8004      	strh	r4, [r0, #0]
c0d00c86:	e006      	b.n	c0d00c96 <app_main+0xa6>
c0d00c88:	4812      	ldr	r0, [pc, #72]	; (c0d00cd4 <app_main+0xe4>)
c0d00c8a:	4004      	ands	r4, r0
c0d00c8c:	200d      	movs	r0, #13
c0d00c8e:	02c0      	lsls	r0, r0, #11
c0d00c90:	1820      	adds	r0, r4, r0
c0d00c92:	a90c      	add	r1, sp, #48	; 0x30
c0d00c94:	8008      	strh	r0, [r1, #0]
c0d00c96:	980c      	ldr	r0, [sp, #48]	; 0x30
c0d00c98:	0a00      	lsrs	r0, r0, #8
c0d00c9a:	990e      	ldr	r1, [sp, #56]	; 0x38
c0d00c9c:	5478      	strb	r0, [r7, r1]
c0d00c9e:	980c      	ldr	r0, [sp, #48]	; 0x30
c0d00ca0:	990e      	ldr	r1, [sp, #56]	; 0x38
c0d00ca2:	19c9      	adds	r1, r1, r7
c0d00ca4:	7048      	strb	r0, [r1, #1]
c0d00ca6:	980e      	ldr	r0, [sp, #56]	; 0x38
c0d00ca8:	1c80      	adds	r0, r0, #2
c0d00caa:	900e      	str	r0, [sp, #56]	; 0x38
c0d00cac:	f003 ffa4 	bl	c0d04bf8 <try_context_get>
c0d00cb0:	4669      	mov	r1, sp
c0d00cb2:	4288      	cmp	r0, r1
c0d00cb4:	d102      	bne.n	c0d00cbc <app_main+0xcc>
c0d00cb6:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d00cb8:	f003 ffaa 	bl	c0d04c10 <try_context_set>
c0d00cbc:	4668      	mov	r0, sp
c0d00cbe:	8d80      	ldrh	r0, [r0, #44]	; 0x2c
c0d00cc0:	2800      	cmp	r0, #0
c0d00cc2:	d09d      	beq.n	c0d00c00 <app_main+0x10>
c0d00cc4:	f001 fc1c 	bl	c0d02500 <os_longjmp>
c0d00cc8:	4801      	ldr	r0, [pc, #4]	; (c0d00cd0 <app_main+0xe0>)
c0d00cca:	f001 fc19 	bl	c0d02500 <os_longjmp>
c0d00cce:	46c0      	nop			; (mov r8, r8)
c0d00cd0:	00006982 	.word	0x00006982
c0d00cd4:	000007ff 	.word	0x000007ff
c0d00cd8:	20000305 	.word	0x20000305

c0d00cdc <app_mode_reset>:
c0d00cdc:	4802      	ldr	r0, [pc, #8]	; (c0d00ce8 <app_mode_reset+0xc>)
c0d00cde:	2100      	movs	r1, #0
c0d00ce0:	7041      	strb	r1, [r0, #1]
c0d00ce2:	7001      	strb	r1, [r0, #0]
c0d00ce4:	4770      	bx	lr
c0d00ce6:	46c0      	nop			; (mov r8, r8)
c0d00ce8:	20000282 	.word	0x20000282

c0d00cec <app_mode_expert>:
c0d00cec:	b580      	push	{r7, lr}
c0d00cee:	4803      	ldr	r0, [pc, #12]	; (c0d00cfc <app_mode_expert+0x10>)
c0d00cf0:	f003 fdcc 	bl	c0d0488c <pic>
c0d00cf4:	7800      	ldrb	r0, [r0, #0]
c0d00cf6:	1e41      	subs	r1, r0, #1
c0d00cf8:	4188      	sbcs	r0, r1
c0d00cfa:	bd80      	pop	{r7, pc}
c0d00cfc:	c0d0aac0 	.word	0xc0d0aac0

c0d00d00 <app_mode_set_expert>:
c0d00d00:	b5b0      	push	{r4, r5, r7, lr}
c0d00d02:	b082      	sub	sp, #8
c0d00d04:	ac01      	add	r4, sp, #4
c0d00d06:	7020      	strb	r0, [r4, #0]
c0d00d08:	4d07      	ldr	r5, [pc, #28]	; (c0d00d28 <app_mode_set_expert+0x28>)
c0d00d0a:	4628      	mov	r0, r5
c0d00d0c:	f003 fdbe 	bl	c0d0488c <pic>
c0d00d10:	7840      	ldrb	r0, [r0, #1]
c0d00d12:	7060      	strb	r0, [r4, #1]
c0d00d14:	4628      	mov	r0, r5
c0d00d16:	f003 fdb9 	bl	c0d0488c <pic>
c0d00d1a:	2202      	movs	r2, #2
c0d00d1c:	4621      	mov	r1, r4
c0d00d1e:	f003 fedb 	bl	c0d04ad8 <nvm_write>
c0d00d22:	b002      	add	sp, #8
c0d00d24:	bdb0      	pop	{r4, r5, r7, pc}
c0d00d26:	46c0      	nop			; (mov r8, r8)
c0d00d28:	c0d0aac0 	.word	0xc0d0aac0

c0d00d2c <app_mode_shortcut>:
c0d00d2c:	4802      	ldr	r0, [pc, #8]	; (c0d00d38 <app_mode_shortcut+0xc>)
c0d00d2e:	7840      	ldrb	r0, [r0, #1]
c0d00d30:	1e41      	subs	r1, r0, #1
c0d00d32:	4188      	sbcs	r0, r1
c0d00d34:	4770      	bx	lr
c0d00d36:	46c0      	nop			; (mov r8, r8)
c0d00d38:	20000282 	.word	0x20000282

c0d00d3c <bech32EncodeFromBytes>:
c0d00d3c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d00d3e:	b0a9      	sub	sp, #164	; 0xa4
c0d00d40:	461d      	mov	r5, r3
c0d00d42:	4614      	mov	r4, r2
c0d00d44:	4606      	mov	r6, r0
c0d00d46:	9107      	str	r1, [sp, #28]
c0d00d48:	f007 f978 	bl	c0d0803c <explicit_bzero>
c0d00d4c:	9f2e      	ldr	r7, [sp, #184]	; 0xb8
c0d00d4e:	2f40      	cmp	r7, #64	; 0x40
c0d00d50:	d82d      	bhi.n	c0d00dae <bech32EncodeFromBytes+0x72>
c0d00d52:	9605      	str	r6, [sp, #20]
c0d00d54:	9506      	str	r5, [sp, #24]
c0d00d56:	4620      	mov	r0, r4
c0d00d58:	f007 faf2 	bl	c0d08340 <strlen>
c0d00d5c:	0079      	lsls	r1, r7, #1
c0d00d5e:	1808      	adds	r0, r1, r0
c0d00d60:	1dc0      	adds	r0, r0, #7
c0d00d62:	9d07      	ldr	r5, [sp, #28]
c0d00d64:	42a8      	cmp	r0, r5
c0d00d66:	d901      	bls.n	c0d00d6c <bech32EncodeFromBytes+0x30>
c0d00d68:	2006      	movs	r0, #6
c0d00d6a:	e021      	b.n	c0d00db0 <bech32EncodeFromBytes+0x74>
c0d00d6c:	9404      	str	r4, [sp, #16]
c0d00d6e:	9e2f      	ldr	r6, [sp, #188]	; 0xbc
c0d00d70:	2000      	movs	r0, #0
c0d00d72:	9008      	str	r0, [sp, #32]
c0d00d74:	ac09      	add	r4, sp, #36	; 0x24
c0d00d76:	2180      	movs	r1, #128	; 0x80
c0d00d78:	4620      	mov	r0, r4
c0d00d7a:	f007 f95f 	bl	c0d0803c <explicit_bzero>
c0d00d7e:	2008      	movs	r0, #8
c0d00d80:	9700      	str	r7, [sp, #0]
c0d00d82:	9001      	str	r0, [sp, #4]
c0d00d84:	9602      	str	r6, [sp, #8]
c0d00d86:	a908      	add	r1, sp, #32
c0d00d88:	2205      	movs	r2, #5
c0d00d8a:	4620      	mov	r0, r4
c0d00d8c:	9b06      	ldr	r3, [sp, #24]
c0d00d8e:	f003 fe35 	bl	c0d049fc <convert_bits>
c0d00d92:	9b08      	ldr	r3, [sp, #32]
c0d00d94:	42ab      	cmp	r3, r5
c0d00d96:	d20a      	bcs.n	c0d00dae <bech32EncodeFromBytes+0x72>
c0d00d98:	9830      	ldr	r0, [sp, #192]	; 0xc0
c0d00d9a:	9000      	str	r0, [sp, #0]
c0d00d9c:	aa09      	add	r2, sp, #36	; 0x24
c0d00d9e:	9805      	ldr	r0, [sp, #20]
c0d00da0:	9904      	ldr	r1, [sp, #16]
c0d00da2:	f003 fda7 	bl	c0d048f4 <bech32_encode>
c0d00da6:	2800      	cmp	r0, #0
c0d00da8:	d004      	beq.n	c0d00db4 <bech32EncodeFromBytes+0x78>
c0d00daa:	2003      	movs	r0, #3
c0d00dac:	e000      	b.n	c0d00db0 <bech32EncodeFromBytes+0x74>
c0d00dae:	2009      	movs	r0, #9
c0d00db0:	b029      	add	sp, #164	; 0xa4
c0d00db2:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d00db4:	200a      	movs	r0, #10
c0d00db6:	e7fb      	b.n	c0d00db0 <bech32EncodeFromBytes+0x74>

c0d00db8 <buffering_init>:
c0d00db8:	b5b0      	push	{r4, r5, r7, lr}
c0d00dba:	4c09      	ldr	r4, [pc, #36]	; (c0d00de0 <buffering_init+0x28>)
c0d00dbc:	2500      	movs	r5, #0
c0d00dbe:	80e5      	strh	r5, [r4, #6]
c0d00dc0:	80a1      	strh	r1, [r4, #4]
c0d00dc2:	6020      	str	r0, [r4, #0]
c0d00dc4:	4807      	ldr	r0, [pc, #28]	; (c0d00de4 <buffering_init+0x2c>)
c0d00dc6:	80c5      	strh	r5, [r0, #6]
c0d00dc8:	8083      	strh	r3, [r0, #4]
c0d00dca:	6002      	str	r2, [r0, #0]
c0d00dcc:	7a21      	ldrb	r1, [r4, #8]
c0d00dce:	2201      	movs	r2, #1
c0d00dd0:	430a      	orrs	r2, r1
c0d00dd2:	7222      	strb	r2, [r4, #8]
c0d00dd4:	7a01      	ldrb	r1, [r0, #8]
c0d00dd6:	22fe      	movs	r2, #254	; 0xfe
c0d00dd8:	400a      	ands	r2, r1
c0d00dda:	7202      	strb	r2, [r0, #8]
c0d00ddc:	bdb0      	pop	{r4, r5, r7, pc}
c0d00dde:	46c0      	nop			; (mov r8, r8)
c0d00de0:	20000284 	.word	0x20000284
c0d00de4:	20000290 	.word	0x20000290

c0d00de8 <buffering_reset>:
c0d00de8:	4806      	ldr	r0, [pc, #24]	; (c0d00e04 <buffering_reset+0x1c>)
c0d00dea:	2100      	movs	r1, #0
c0d00dec:	80c1      	strh	r1, [r0, #6]
c0d00dee:	4a06      	ldr	r2, [pc, #24]	; (c0d00e08 <buffering_reset+0x20>)
c0d00df0:	80d1      	strh	r1, [r2, #6]
c0d00df2:	7a01      	ldrb	r1, [r0, #8]
c0d00df4:	2301      	movs	r3, #1
c0d00df6:	430b      	orrs	r3, r1
c0d00df8:	7203      	strb	r3, [r0, #8]
c0d00dfa:	7a10      	ldrb	r0, [r2, #8]
c0d00dfc:	21fe      	movs	r1, #254	; 0xfe
c0d00dfe:	4001      	ands	r1, r0
c0d00e00:	7211      	strb	r1, [r2, #8]
c0d00e02:	4770      	bx	lr
c0d00e04:	20000284 	.word	0x20000284
c0d00e08:	20000290 	.word	0x20000290

c0d00e0c <buffering_append>:
c0d00e0c:	b570      	push	{r4, r5, r6, lr}
c0d00e0e:	460c      	mov	r4, r1
c0d00e10:	4605      	mov	r5, r0
c0d00e12:	4e1c      	ldr	r6, [pc, #112]	; (c0d00e84 <buffering_append+0x78>)
c0d00e14:	7a30      	ldrb	r0, [r6, #8]
c0d00e16:	07c1      	lsls	r1, r0, #31
c0d00e18:	d107      	bne.n	c0d00e2a <buffering_append+0x1e>
c0d00e1a:	4e1b      	ldr	r6, [pc, #108]	; (c0d00e88 <buffering_append+0x7c>)
c0d00e1c:	88f0      	ldrh	r0, [r6, #6]
c0d00e1e:	88b1      	ldrh	r1, [r6, #4]
c0d00e20:	1a09      	subs	r1, r1, r0
c0d00e22:	42a1      	cmp	r1, r4
c0d00e24:	da1a      	bge.n	c0d00e5c <buffering_append+0x50>
c0d00e26:	2400      	movs	r4, #0
c0d00e28:	e029      	b.n	c0d00e7e <buffering_append+0x72>
c0d00e2a:	88f1      	ldrh	r1, [r6, #6]
c0d00e2c:	88b2      	ldrh	r2, [r6, #4]
c0d00e2e:	1a52      	subs	r2, r2, r1
c0d00e30:	42a2      	cmp	r2, r4
c0d00e32:	da1a      	bge.n	c0d00e6a <buffering_append+0x5e>
c0d00e34:	22fe      	movs	r2, #254	; 0xfe
c0d00e36:	4010      	ands	r0, r2
c0d00e38:	7230      	strb	r0, [r6, #8]
c0d00e3a:	4813      	ldr	r0, [pc, #76]	; (c0d00e88 <buffering_append+0x7c>)
c0d00e3c:	7a02      	ldrb	r2, [r0, #8]
c0d00e3e:	2301      	movs	r3, #1
c0d00e40:	4313      	orrs	r3, r2
c0d00e42:	7203      	strb	r3, [r0, #8]
c0d00e44:	2900      	cmp	r1, #0
c0d00e46:	d002      	beq.n	c0d00e4e <buffering_append+0x42>
c0d00e48:	6830      	ldr	r0, [r6, #0]
c0d00e4a:	f7ff ffdf 	bl	c0d00e0c <buffering_append>
c0d00e4e:	4628      	mov	r0, r5
c0d00e50:	4621      	mov	r1, r4
c0d00e52:	f7ff ffdb 	bl	c0d00e0c <buffering_append>
c0d00e56:	2100      	movs	r1, #0
c0d00e58:	80f1      	strh	r1, [r6, #6]
c0d00e5a:	bd70      	pop	{r4, r5, r6, pc}
c0d00e5c:	6831      	ldr	r1, [r6, #0]
c0d00e5e:	1808      	adds	r0, r1, r0
c0d00e60:	4629      	mov	r1, r5
c0d00e62:	4622      	mov	r2, r4
c0d00e64:	f003 fe38 	bl	c0d04ad8 <nvm_write>
c0d00e68:	e005      	b.n	c0d00e76 <buffering_append+0x6a>
c0d00e6a:	6830      	ldr	r0, [r6, #0]
c0d00e6c:	1840      	adds	r0, r0, r1
c0d00e6e:	4629      	mov	r1, r5
c0d00e70:	4622      	mov	r2, r4
c0d00e72:	f007 f8d7 	bl	c0d08024 <__aeabi_memmove>
c0d00e76:	1db0      	adds	r0, r6, #6
c0d00e78:	8801      	ldrh	r1, [r0, #0]
c0d00e7a:	1909      	adds	r1, r1, r4
c0d00e7c:	8001      	strh	r1, [r0, #0]
c0d00e7e:	4620      	mov	r0, r4
c0d00e80:	bd70      	pop	{r4, r5, r6, pc}
c0d00e82:	46c0      	nop			; (mov r8, r8)
c0d00e84:	20000284 	.word	0x20000284
c0d00e88:	20000290 	.word	0x20000290

c0d00e8c <buffering_get_buffer>:
c0d00e8c:	4802      	ldr	r0, [pc, #8]	; (c0d00e98 <buffering_get_buffer+0xc>)
c0d00e8e:	7a01      	ldrb	r1, [r0, #8]
c0d00e90:	07c9      	lsls	r1, r1, #31
c0d00e92:	d100      	bne.n	c0d00e96 <buffering_get_buffer+0xa>
c0d00e94:	4801      	ldr	r0, [pc, #4]	; (c0d00e9c <buffering_get_buffer+0x10>)
c0d00e96:	4770      	bx	lr
c0d00e98:	20000284 	.word	0x20000284
c0d00e9c:	20000290 	.word	0x20000290

c0d00ea0 <parser_mapCborError>:
c0d00ea0:	2800      	cmp	r0, #0
c0d00ea2:	d008      	beq.n	c0d00eb6 <parser_mapCborError+0x16>
c0d00ea4:	21ff      	movs	r1, #255	; 0xff
c0d00ea6:	3102      	adds	r1, #2
c0d00ea8:	4288      	cmp	r0, r1
c0d00eaa:	d006      	beq.n	c0d00eba <parser_mapCborError+0x1a>
c0d00eac:	4905      	ldr	r1, [pc, #20]	; (c0d00ec4 <parser_mapCborError+0x24>)
c0d00eae:	4288      	cmp	r0, r1
c0d00eb0:	d105      	bne.n	c0d00ebe <parser_mapCborError+0x1e>
c0d00eb2:	2023      	movs	r0, #35	; 0x23
c0d00eb4:	4770      	bx	lr
c0d00eb6:	2000      	movs	r0, #0
c0d00eb8:	4770      	bx	lr
c0d00eba:	2022      	movs	r0, #34	; 0x22
c0d00ebc:	4770      	bx	lr
c0d00ebe:	2021      	movs	r0, #33	; 0x21
c0d00ec0:	4770      	bx	lr
c0d00ec2:	46c0      	nop			; (mov r8, r8)
c0d00ec4:	0000020a 	.word	0x0000020a

c0d00ec8 <cbor_get_containerInfo>:
c0d00ec8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d00eca:	b083      	sub	sp, #12
c0d00ecc:	2409      	movs	r4, #9
c0d00ece:	2800      	cmp	r0, #0
c0d00ed0:	d00e      	beq.n	c0d00ef0 <cbor_get_containerInfo+0x28>
c0d00ed2:	460d      	mov	r5, r1
c0d00ed4:	2900      	cmp	r1, #0
c0d00ed6:	d00b      	beq.n	c0d00ef0 <cbor_get_containerInfo+0x28>
c0d00ed8:	4606      	mov	r6, r0
c0d00eda:	6880      	ldr	r0, [r0, #8]
c0d00edc:	2800      	cmp	r0, #0
c0d00ede:	d006      	beq.n	c0d00eee <cbor_get_containerInfo+0x26>
c0d00ee0:	7bb0      	ldrb	r0, [r6, #14]
c0d00ee2:	2406      	movs	r4, #6
c0d00ee4:	2800      	cmp	r0, #0
c0d00ee6:	d006      	beq.n	c0d00ef6 <cbor_get_containerInfo+0x2e>
c0d00ee8:	f006 fff0 	bl	c0d07ecc <check_app_canary>
c0d00eec:	e000      	b.n	c0d00ef0 <cbor_get_containerInfo+0x28>
c0d00eee:	2408      	movs	r4, #8
c0d00ef0:	4620      	mov	r0, r4
c0d00ef2:	b003      	add	sp, #12
c0d00ef4:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d00ef6:	7bf1      	ldrb	r1, [r6, #15]
c0d00ef8:	0788      	lsls	r0, r1, #30
c0d00efa:	d401      	bmi.n	c0d00f00 <cbor_get_containerInfo+0x38>
c0d00efc:	89b0      	ldrh	r0, [r6, #12]
c0d00efe:	e003      	b.n	c0d00f08 <cbor_get_containerInfo+0x40>
c0d00f00:	4630      	mov	r0, r6
c0d00f02:	f000 f949 	bl	c0d01198 <_cbor_value_decode_int64_internal>
c0d00f06:	7bf1      	ldrb	r1, [r6, #15]
c0d00f08:	0149      	lsls	r1, r1, #5
c0d00f0a:	b249      	sxtb	r1, r1
c0d00f0c:	11c9      	asrs	r1, r1, #7
c0d00f0e:	4041      	eors	r1, r0
c0d00f10:	2901      	cmp	r1, #1
c0d00f12:	d00f      	beq.n	c0d00f34 <cbor_get_containerInfo+0x6c>
c0d00f14:	2902      	cmp	r1, #2
c0d00f16:	d1e7      	bne.n	c0d00ee8 <cbor_get_containerInfo+0x20>
c0d00f18:	2000      	movs	r0, #0
c0d00f1a:	6068      	str	r0, [r5, #4]
c0d00f1c:	60a8      	str	r0, [r5, #8]
c0d00f1e:	4630      	mov	r0, r6
c0d00f20:	f000 fad4 	bl	c0d014cc <cbor_value_advance>
c0d00f24:	2422      	movs	r4, #34	; 0x22
c0d00f26:	2800      	cmp	r0, #0
c0d00f28:	d016      	beq.n	c0d00f58 <cbor_get_containerInfo+0x90>
c0d00f2a:	21ff      	movs	r1, #255	; 0xff
c0d00f2c:	3102      	adds	r1, #2
c0d00f2e:	4288      	cmp	r0, r1
c0d00f30:	d10b      	bne.n	c0d00f4a <cbor_get_containerInfo+0x82>
c0d00f32:	e7d9      	b.n	c0d00ee8 <cbor_get_containerInfo+0x20>
c0d00f34:	4630      	mov	r0, r6
c0d00f36:	f000 fac9 	bl	c0d014cc <cbor_value_advance>
c0d00f3a:	2222      	movs	r2, #34	; 0x22
c0d00f3c:	2800      	cmp	r0, #0
c0d00f3e:	d02f      	beq.n	c0d00fa0 <cbor_get_containerInfo+0xd8>
c0d00f40:	21ff      	movs	r1, #255	; 0xff
c0d00f42:	3102      	adds	r1, #2
c0d00f44:	4288      	cmp	r0, r1
c0d00f46:	4614      	mov	r4, r2
c0d00f48:	d0ce      	beq.n	c0d00ee8 <cbor_get_containerInfo+0x20>
c0d00f4a:	494f      	ldr	r1, [pc, #316]	; (c0d01088 <cbor_get_containerInfo+0x1c0>)
c0d00f4c:	4288      	cmp	r0, r1
c0d00f4e:	d101      	bne.n	c0d00f54 <cbor_get_containerInfo+0x8c>
c0d00f50:	2423      	movs	r4, #35	; 0x23
c0d00f52:	e7c9      	b.n	c0d00ee8 <cbor_get_containerInfo+0x20>
c0d00f54:	2421      	movs	r4, #33	; 0x21
c0d00f56:	e7c7      	b.n	c0d00ee8 <cbor_get_containerInfo+0x20>
c0d00f58:	7bb0      	ldrb	r0, [r6, #14]
c0d00f5a:	2860      	cmp	r0, #96	; 0x60
c0d00f5c:	d139      	bne.n	c0d00fd2 <cbor_get_containerInfo+0x10a>
c0d00f5e:	2064      	movs	r0, #100	; 0x64
c0d00f60:	73f0      	strb	r0, [r6, #15]
c0d00f62:	4629      	mov	r1, r5
c0d00f64:	310c      	adds	r1, #12
c0d00f66:	462f      	mov	r7, r5
c0d00f68:	3710      	adds	r7, #16
c0d00f6a:	2300      	movs	r3, #0
c0d00f6c:	4630      	mov	r0, r6
c0d00f6e:	463a      	mov	r2, r7
c0d00f70:	f000 fcd9 	bl	c0d01926 <_cbor_value_get_string_chunk>
c0d00f74:	2800      	cmp	r0, #0
c0d00f76:	d1d8      	bne.n	c0d00f2a <cbor_get_containerInfo+0x62>
c0d00f78:	6838      	ldr	r0, [r7, #0]
c0d00f7a:	4944      	ldr	r1, [pc, #272]	; (c0d0108c <cbor_get_containerInfo+0x1c4>)
c0d00f7c:	4288      	cmp	r0, r1
c0d00f7e:	d23f      	bcs.n	c0d01000 <cbor_get_containerInfo+0x138>
c0d00f80:	f006 ffa4 	bl	c0d07ecc <check_app_canary>
c0d00f84:	4630      	mov	r0, r6
c0d00f86:	f000 faa1 	bl	c0d014cc <cbor_value_advance>
c0d00f8a:	2800      	cmp	r0, #0
c0d00f8c:	d03c      	beq.n	c0d01008 <cbor_get_containerInfo+0x140>
c0d00f8e:	21ff      	movs	r1, #255	; 0xff
c0d00f90:	3102      	adds	r1, #2
c0d00f92:	4288      	cmp	r0, r1
c0d00f94:	d047      	beq.n	c0d01026 <cbor_get_containerInfo+0x15e>
c0d00f96:	493c      	ldr	r1, [pc, #240]	; (c0d01088 <cbor_get_containerInfo+0x1c0>)
c0d00f98:	4288      	cmp	r0, r1
c0d00f9a:	d146      	bne.n	c0d0102a <cbor_get_containerInfo+0x162>
c0d00f9c:	2423      	movs	r4, #35	; 0x23
c0d00f9e:	e7a7      	b.n	c0d00ef0 <cbor_get_containerInfo+0x28>
c0d00fa0:	7bb0      	ldrb	r0, [r6, #14]
c0d00fa2:	2124      	movs	r1, #36	; 0x24
c0d00fa4:	2860      	cmp	r0, #96	; 0x60
c0d00fa6:	d116      	bne.n	c0d00fd6 <cbor_get_containerInfo+0x10e>
c0d00fa8:	9101      	str	r1, [sp, #4]
c0d00faa:	9202      	str	r2, [sp, #8]
c0d00fac:	2064      	movs	r0, #100	; 0x64
c0d00fae:	9000      	str	r0, [sp, #0]
c0d00fb0:	73f0      	strb	r0, [r6, #15]
c0d00fb2:	1d29      	adds	r1, r5, #4
c0d00fb4:	462f      	mov	r7, r5
c0d00fb6:	3708      	adds	r7, #8
c0d00fb8:	2300      	movs	r3, #0
c0d00fba:	4630      	mov	r0, r6
c0d00fbc:	463a      	mov	r2, r7
c0d00fbe:	f000 fcb2 	bl	c0d01926 <_cbor_value_get_string_chunk>
c0d00fc2:	2800      	cmp	r0, #0
c0d00fc4:	d009      	beq.n	c0d00fda <cbor_get_containerInfo+0x112>
c0d00fc6:	21ff      	movs	r1, #255	; 0xff
c0d00fc8:	3102      	adds	r1, #2
c0d00fca:	4288      	cmp	r0, r1
c0d00fcc:	9c02      	ldr	r4, [sp, #8]
c0d00fce:	d1bc      	bne.n	c0d00f4a <cbor_get_containerInfo+0x82>
c0d00fd0:	e78a      	b.n	c0d00ee8 <cbor_get_containerInfo+0x20>
c0d00fd2:	2424      	movs	r4, #36	; 0x24
c0d00fd4:	e788      	b.n	c0d00ee8 <cbor_get_containerInfo+0x20>
c0d00fd6:	460c      	mov	r4, r1
c0d00fd8:	e786      	b.n	c0d00ee8 <cbor_get_containerInfo+0x20>
c0d00fda:	6838      	ldr	r0, [r7, #0]
c0d00fdc:	2709      	movs	r7, #9
c0d00fde:	492b      	ldr	r1, [pc, #172]	; (c0d0108c <cbor_get_containerInfo+0x1c4>)
c0d00fe0:	4288      	cmp	r0, r1
c0d00fe2:	d20f      	bcs.n	c0d01004 <cbor_get_containerInfo+0x13c>
c0d00fe4:	4630      	mov	r0, r6
c0d00fe6:	f000 fa71 	bl	c0d014cc <cbor_value_advance>
c0d00fea:	2800      	cmp	r0, #0
c0d00fec:	d1eb      	bne.n	c0d00fc6 <cbor_get_containerInfo+0xfe>
c0d00fee:	7bb0      	ldrb	r0, [r6, #14]
c0d00ff0:	2800      	cmp	r0, #0
c0d00ff2:	d000      	beq.n	c0d00ff6 <cbor_get_containerInfo+0x12e>
c0d00ff4:	e778      	b.n	c0d00ee8 <cbor_get_containerInfo+0x20>
c0d00ff6:	7bf1      	ldrb	r1, [r6, #15]
c0d00ff8:	0788      	lsls	r0, r1, #30
c0d00ffa:	d41c      	bmi.n	c0d01036 <cbor_get_containerInfo+0x16e>
c0d00ffc:	89b0      	ldrh	r0, [r6, #12]
c0d00ffe:	e01e      	b.n	c0d0103e <cbor_get_containerInfo+0x176>
c0d01000:	2409      	movs	r4, #9
c0d01002:	e771      	b.n	c0d00ee8 <cbor_get_containerInfo+0x20>
c0d01004:	463c      	mov	r4, r7
c0d01006:	e76f      	b.n	c0d00ee8 <cbor_get_containerInfo+0x20>
c0d01008:	6828      	ldr	r0, [r5, #0]
c0d0100a:	2803      	cmp	r0, #3
c0d0100c:	d30f      	bcc.n	c0d0102e <cbor_get_containerInfo+0x166>
c0d0100e:	1e80      	subs	r0, r0, #2
c0d01010:	6028      	str	r0, [r5, #0]
c0d01012:	4630      	mov	r0, r6
c0d01014:	4629      	mov	r1, r5
c0d01016:	f000 f83b 	bl	c0d01090 <cbor_check_optFields>
c0d0101a:	4604      	mov	r4, r0
c0d0101c:	f006 ff56 	bl	c0d07ecc <check_app_canary>
c0d01020:	2c00      	cmp	r4, #0
c0d01022:	d006      	beq.n	c0d01032 <cbor_get_containerInfo+0x16a>
c0d01024:	e764      	b.n	c0d00ef0 <cbor_get_containerInfo+0x28>
c0d01026:	2422      	movs	r4, #34	; 0x22
c0d01028:	e762      	b.n	c0d00ef0 <cbor_get_containerInfo+0x28>
c0d0102a:	2421      	movs	r4, #33	; 0x21
c0d0102c:	e760      	b.n	c0d00ef0 <cbor_get_containerInfo+0x28>
c0d0102e:	2000      	movs	r0, #0
c0d01030:	82a8      	strh	r0, [r5, #20]
c0d01032:	2400      	movs	r4, #0
c0d01034:	e75c      	b.n	c0d00ef0 <cbor_get_containerInfo+0x28>
c0d01036:	4630      	mov	r0, r6
c0d01038:	f000 f8ae 	bl	c0d01198 <_cbor_value_decode_int64_internal>
c0d0103c:	7bf1      	ldrb	r1, [r6, #15]
c0d0103e:	0149      	lsls	r1, r1, #5
c0d01040:	b249      	sxtb	r1, r1
c0d01042:	11c9      	asrs	r1, r1, #7
c0d01044:	4041      	eors	r1, r0
c0d01046:	2902      	cmp	r1, #2
c0d01048:	d000      	beq.n	c0d0104c <cbor_get_containerInfo+0x184>
c0d0104a:	e74d      	b.n	c0d00ee8 <cbor_get_containerInfo+0x20>
c0d0104c:	4630      	mov	r0, r6
c0d0104e:	f000 fa3d 	bl	c0d014cc <cbor_value_advance>
c0d01052:	2800      	cmp	r0, #0
c0d01054:	d1b7      	bne.n	c0d00fc6 <cbor_get_containerInfo+0xfe>
c0d01056:	7bb0      	ldrb	r0, [r6, #14]
c0d01058:	2860      	cmp	r0, #96	; 0x60
c0d0105a:	9c01      	ldr	r4, [sp, #4]
c0d0105c:	d000      	beq.n	c0d01060 <cbor_get_containerInfo+0x198>
c0d0105e:	e743      	b.n	c0d00ee8 <cbor_get_containerInfo+0x20>
c0d01060:	9800      	ldr	r0, [sp, #0]
c0d01062:	73f0      	strb	r0, [r6, #15]
c0d01064:	4629      	mov	r1, r5
c0d01066:	310c      	adds	r1, #12
c0d01068:	462c      	mov	r4, r5
c0d0106a:	3410      	adds	r4, #16
c0d0106c:	2300      	movs	r3, #0
c0d0106e:	4630      	mov	r0, r6
c0d01070:	4622      	mov	r2, r4
c0d01072:	f000 fc58 	bl	c0d01926 <_cbor_value_get_string_chunk>
c0d01076:	2800      	cmp	r0, #0
c0d01078:	d1a5      	bne.n	c0d00fc6 <cbor_get_containerInfo+0xfe>
c0d0107a:	6820      	ldr	r0, [r4, #0]
c0d0107c:	4903      	ldr	r1, [pc, #12]	; (c0d0108c <cbor_get_containerInfo+0x1c4>)
c0d0107e:	4288      	cmp	r0, r1
c0d01080:	463c      	mov	r4, r7
c0d01082:	d300      	bcc.n	c0d01086 <cbor_get_containerInfo+0x1be>
c0d01084:	e730      	b.n	c0d00ee8 <cbor_get_containerInfo+0x20>
c0d01086:	e77b      	b.n	c0d00f80 <cbor_get_containerInfo+0xb8>
c0d01088:	0000020a 	.word	0x0000020a
c0d0108c:	00000227 	.word	0x00000227

c0d01090 <cbor_check_optFields>:
c0d01090:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d01092:	b083      	sub	sp, #12
c0d01094:	4605      	mov	r5, r0
c0d01096:	6808      	ldr	r0, [r1, #0]
c0d01098:	2800      	cmp	r0, #0
c0d0109a:	d04d      	beq.n	c0d01138 <cbor_check_optFields+0xa8>
c0d0109c:	2400      	movs	r4, #0
c0d0109e:	9101      	str	r1, [sp, #4]
c0d010a0:	7ba8      	ldrb	r0, [r5, #14]
c0d010a2:	2706      	movs	r7, #6
c0d010a4:	2800      	cmp	r0, #0
c0d010a6:	d159      	bne.n	c0d0115c <cbor_check_optFields+0xcc>
c0d010a8:	7bee      	ldrb	r6, [r5, #15]
c0d010aa:	07b0      	lsls	r0, r6, #30
c0d010ac:	9702      	str	r7, [sp, #8]
c0d010ae:	d401      	bmi.n	c0d010b4 <cbor_check_optFields+0x24>
c0d010b0:	89af      	ldrh	r7, [r5, #12]
c0d010b2:	e004      	b.n	c0d010be <cbor_check_optFields+0x2e>
c0d010b4:	4628      	mov	r0, r5
c0d010b6:	f000 f86f 	bl	c0d01198 <_cbor_value_decode_int64_internal>
c0d010ba:	4607      	mov	r7, r0
c0d010bc:	7bee      	ldrb	r6, [r5, #15]
c0d010be:	4628      	mov	r0, r5
c0d010c0:	f000 fa04 	bl	c0d014cc <cbor_value_advance>
c0d010c4:	2222      	movs	r2, #34	; 0x22
c0d010c6:	2800      	cmp	r0, #0
c0d010c8:	d138      	bne.n	c0d0113c <cbor_check_optFields+0xac>
c0d010ca:	0170      	lsls	r0, r6, #5
c0d010cc:	b240      	sxtb	r0, r0
c0d010ce:	11c0      	asrs	r0, r0, #7
c0d010d0:	4047      	eors	r7, r0
c0d010d2:	2f04      	cmp	r7, #4
c0d010d4:	d00c      	beq.n	c0d010f0 <cbor_check_optFields+0x60>
c0d010d6:	2f03      	cmp	r7, #3
c0d010d8:	d115      	bne.n	c0d01106 <cbor_check_optFields+0x76>
c0d010da:	7ba8      	ldrb	r0, [r5, #14]
c0d010dc:	2800      	cmp	r0, #0
c0d010de:	9e01      	ldr	r6, [sp, #4]
c0d010e0:	9f02      	ldr	r7, [sp, #8]
c0d010e2:	d13b      	bne.n	c0d0115c <cbor_check_optFields+0xcc>
c0d010e4:	7be9      	ldrb	r1, [r5, #15]
c0d010e6:	4617      	mov	r7, r2
c0d010e8:	0788      	lsls	r0, r1, #30
c0d010ea:	d411      	bmi.n	c0d01110 <cbor_check_optFields+0x80>
c0d010ec:	89a8      	ldrh	r0, [r5, #12]
c0d010ee:	e013      	b.n	c0d01118 <cbor_check_optFields+0x88>
c0d010f0:	7ba8      	ldrb	r0, [r5, #14]
c0d010f2:	28f5      	cmp	r0, #245	; 0xf5
c0d010f4:	9e01      	ldr	r6, [sp, #4]
c0d010f6:	9f02      	ldr	r7, [sp, #8]
c0d010f8:	d130      	bne.n	c0d0115c <cbor_check_optFields+0xcc>
c0d010fa:	4617      	mov	r7, r2
c0d010fc:	89a8      	ldrh	r0, [r5, #12]
c0d010fe:	1e41      	subs	r1, r0, #1
c0d01100:	4188      	sbcs	r0, r1
c0d01102:	7570      	strb	r0, [r6, #21]
c0d01104:	e00f      	b.n	c0d01126 <cbor_check_optFields+0x96>
c0d01106:	4617      	mov	r7, r2
c0d01108:	2000      	movs	r0, #0
c0d0110a:	9e01      	ldr	r6, [sp, #4]
c0d0110c:	82b0      	strh	r0, [r6, #20]
c0d0110e:	e00a      	b.n	c0d01126 <cbor_check_optFields+0x96>
c0d01110:	4628      	mov	r0, r5
c0d01112:	f000 f841 	bl	c0d01198 <_cbor_value_decode_int64_internal>
c0d01116:	7be9      	ldrb	r1, [r5, #15]
c0d01118:	0149      	lsls	r1, r1, #5
c0d0111a:	b249      	sxtb	r1, r1
c0d0111c:	11c9      	asrs	r1, r1, #7
c0d0111e:	4041      	eors	r1, r0
c0d01120:	29ff      	cmp	r1, #255	; 0xff
c0d01122:	d81e      	bhi.n	c0d01162 <cbor_check_optFields+0xd2>
c0d01124:	7531      	strb	r1, [r6, #20]
c0d01126:	4628      	mov	r0, r5
c0d01128:	f000 f9d0 	bl	c0d014cc <cbor_value_advance>
c0d0112c:	2800      	cmp	r0, #0
c0d0112e:	d10b      	bne.n	c0d01148 <cbor_check_optFields+0xb8>
c0d01130:	1c64      	adds	r4, r4, #1
c0d01132:	6830      	ldr	r0, [r6, #0]
c0d01134:	4284      	cmp	r4, r0
c0d01136:	d3b3      	bcc.n	c0d010a0 <cbor_check_optFields+0x10>
c0d01138:	2700      	movs	r7, #0
c0d0113a:	e00f      	b.n	c0d0115c <cbor_check_optFields+0xcc>
c0d0113c:	21ff      	movs	r1, #255	; 0xff
c0d0113e:	3102      	adds	r1, #2
c0d01140:	4288      	cmp	r0, r1
c0d01142:	4617      	mov	r7, r2
c0d01144:	d104      	bne.n	c0d01150 <cbor_check_optFields+0xc0>
c0d01146:	e009      	b.n	c0d0115c <cbor_check_optFields+0xcc>
c0d01148:	21ff      	movs	r1, #255	; 0xff
c0d0114a:	3102      	adds	r1, #2
c0d0114c:	4288      	cmp	r0, r1
c0d0114e:	d005      	beq.n	c0d0115c <cbor_check_optFields+0xcc>
c0d01150:	4905      	ldr	r1, [pc, #20]	; (c0d01168 <cbor_check_optFields+0xd8>)
c0d01152:	4288      	cmp	r0, r1
c0d01154:	d101      	bne.n	c0d0115a <cbor_check_optFields+0xca>
c0d01156:	2723      	movs	r7, #35	; 0x23
c0d01158:	e000      	b.n	c0d0115c <cbor_check_optFields+0xcc>
c0d0115a:	2721      	movs	r7, #33	; 0x21
c0d0115c:	4638      	mov	r0, r7
c0d0115e:	b003      	add	sp, #12
c0d01160:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d01162:	2709      	movs	r7, #9
c0d01164:	e7fa      	b.n	c0d0115c <cbor_check_optFields+0xcc>
c0d01166:	46c0      	nop			; (mov r8, r8)
c0d01168:	0000020a 	.word	0x0000020a

c0d0116c <cbor_check_expert>:
c0d0116c:	b510      	push	{r4, lr}
c0d0116e:	2409      	movs	r4, #9
c0d01170:	2800      	cmp	r0, #0
c0d01172:	d00f      	beq.n	c0d01194 <cbor_check_expert+0x28>
c0d01174:	2900      	cmp	r1, #0
c0d01176:	d00d      	beq.n	c0d01194 <cbor_check_expert+0x28>
c0d01178:	680a      	ldr	r2, [r1, #0]
c0d0117a:	2a02      	cmp	r2, #2
c0d0117c:	d307      	bcc.n	c0d0118e <cbor_check_expert+0x22>
c0d0117e:	f7ff ff87 	bl	c0d01090 <cbor_check_optFields>
c0d01182:	4604      	mov	r4, r0
c0d01184:	f006 fea2 	bl	c0d07ecc <check_app_canary>
c0d01188:	2c00      	cmp	r4, #0
c0d0118a:	d103      	bne.n	c0d01194 <cbor_check_expert+0x28>
c0d0118c:	e001      	b.n	c0d01192 <cbor_check_expert+0x26>
c0d0118e:	2000      	movs	r0, #0
c0d01190:	8288      	strh	r0, [r1, #20]
c0d01192:	2400      	movs	r4, #0
c0d01194:	4620      	mov	r0, r4
c0d01196:	bd10      	pop	{r4, pc}

c0d01198 <_cbor_value_decode_int64_internal>:
c0d01198:	b5b0      	push	{r4, r5, r7, lr}
c0d0119a:	b084      	sub	sp, #16
c0d0119c:	7bc1      	ldrb	r1, [r0, #15]
c0d0119e:	078a      	lsls	r2, r1, #30
c0d011a0:	d401      	bmi.n	c0d011a6 <_cbor_value_decode_int64_internal+0xe>
c0d011a2:	7b82      	ldrb	r2, [r0, #14]
c0d011a4:	2afa      	cmp	r2, #250	; 0xfa
c0d011a6:	07c9      	lsls	r1, r1, #31
c0d011a8:	d106      	bne.n	c0d011b8 <_cbor_value_decode_int64_internal+0x20>
c0d011aa:	6801      	ldr	r1, [r0, #0]
c0d011ac:	790a      	ldrb	r2, [r1, #4]
c0d011ae:	07d2      	lsls	r2, r2, #31
c0d011b0:	d109      	bne.n	c0d011c6 <_cbor_value_decode_int64_internal+0x2e>
c0d011b2:	6840      	ldr	r0, [r0, #4]
c0d011b4:	1c44      	adds	r4, r0, #1
c0d011b6:	e00e      	b.n	c0d011d6 <_cbor_value_decode_int64_internal+0x3e>
c0d011b8:	6801      	ldr	r1, [r0, #0]
c0d011ba:	790a      	ldrb	r2, [r1, #4]
c0d011bc:	07d2      	lsls	r2, r2, #31
c0d011be:	d117      	bne.n	c0d011f0 <_cbor_value_decode_int64_internal+0x58>
c0d011c0:	6840      	ldr	r0, [r0, #4]
c0d011c2:	1c44      	adds	r4, r0, #1
c0d011c4:	e01c      	b.n	c0d01200 <_cbor_value_decode_int64_internal+0x68>
c0d011c6:	6840      	ldr	r0, [r0, #4]
c0d011c8:	6809      	ldr	r1, [r1, #0]
c0d011ca:	684d      	ldr	r5, [r1, #4]
c0d011cc:	ac03      	add	r4, sp, #12
c0d011ce:	2201      	movs	r2, #1
c0d011d0:	2304      	movs	r3, #4
c0d011d2:	4621      	mov	r1, r4
c0d011d4:	47a8      	blx	r5
c0d011d6:	7820      	ldrb	r0, [r4, #0]
c0d011d8:	7861      	ldrb	r1, [r4, #1]
c0d011da:	0209      	lsls	r1, r1, #8
c0d011dc:	1808      	adds	r0, r1, r0
c0d011de:	78a1      	ldrb	r1, [r4, #2]
c0d011e0:	78e2      	ldrb	r2, [r4, #3]
c0d011e2:	0212      	lsls	r2, r2, #8
c0d011e4:	1851      	adds	r1, r2, r1
c0d011e6:	0409      	lsls	r1, r1, #16
c0d011e8:	1808      	adds	r0, r1, r0
c0d011ea:	ba00      	rev	r0, r0
c0d011ec:	2100      	movs	r1, #0
c0d011ee:	e01d      	b.n	c0d0122c <_cbor_value_decode_int64_internal+0x94>
c0d011f0:	6840      	ldr	r0, [r0, #4]
c0d011f2:	6809      	ldr	r1, [r1, #0]
c0d011f4:	684d      	ldr	r5, [r1, #4]
c0d011f6:	466c      	mov	r4, sp
c0d011f8:	2201      	movs	r2, #1
c0d011fa:	2308      	movs	r3, #8
c0d011fc:	4621      	mov	r1, r4
c0d011fe:	47a8      	blx	r5
c0d01200:	7820      	ldrb	r0, [r4, #0]
c0d01202:	7861      	ldrb	r1, [r4, #1]
c0d01204:	0209      	lsls	r1, r1, #8
c0d01206:	1808      	adds	r0, r1, r0
c0d01208:	78a1      	ldrb	r1, [r4, #2]
c0d0120a:	78e2      	ldrb	r2, [r4, #3]
c0d0120c:	0212      	lsls	r2, r2, #8
c0d0120e:	1851      	adds	r1, r2, r1
c0d01210:	0409      	lsls	r1, r1, #16
c0d01212:	1808      	adds	r0, r1, r0
c0d01214:	ba01      	rev	r1, r0
c0d01216:	7920      	ldrb	r0, [r4, #4]
c0d01218:	7962      	ldrb	r2, [r4, #5]
c0d0121a:	0212      	lsls	r2, r2, #8
c0d0121c:	1810      	adds	r0, r2, r0
c0d0121e:	79a2      	ldrb	r2, [r4, #6]
c0d01220:	79e3      	ldrb	r3, [r4, #7]
c0d01222:	021b      	lsls	r3, r3, #8
c0d01224:	189a      	adds	r2, r3, r2
c0d01226:	0412      	lsls	r2, r2, #16
c0d01228:	1810      	adds	r0, r2, r0
c0d0122a:	ba00      	rev	r0, r0
c0d0122c:	b004      	add	sp, #16
c0d0122e:	bdb0      	pop	{r4, r5, r7, pc}

c0d01230 <cbor_parser_init>:
c0d01230:	b510      	push	{r4, lr}
c0d01232:	2400      	movs	r4, #0
c0d01234:	605c      	str	r4, [r3, #4]
c0d01236:	711a      	strb	r2, [r3, #4]
c0d01238:	1841      	adds	r1, r0, r1
c0d0123a:	6019      	str	r1, [r3, #0]
c0d0123c:	9902      	ldr	r1, [sp, #8]
c0d0123e:	73cc      	strb	r4, [r1, #15]
c0d01240:	2201      	movs	r2, #1
c0d01242:	600b      	str	r3, [r1, #0]
c0d01244:	6048      	str	r0, [r1, #4]
c0d01246:	608a      	str	r2, [r1, #8]
c0d01248:	4608      	mov	r0, r1
c0d0124a:	f000 f801 	bl	c0d01250 <preparse_value>
c0d0124e:	bd10      	pop	{r4, pc}

c0d01250 <preparse_value>:
c0d01250:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d01252:	b087      	sub	sp, #28
c0d01254:	4604      	mov	r4, r0
c0d01256:	25ff      	movs	r5, #255	; 0xff
c0d01258:	7385      	strb	r5, [r0, #14]
c0d0125a:	7bc0      	ldrb	r0, [r0, #15]
c0d0125c:	2160      	movs	r1, #96	; 0x60
c0d0125e:	4001      	ands	r1, r0
c0d01260:	73e1      	strb	r1, [r4, #15]
c0d01262:	462f      	mov	r7, r5
c0d01264:	3702      	adds	r7, #2
c0d01266:	6821      	ldr	r1, [r4, #0]
c0d01268:	7908      	ldrb	r0, [r1, #4]
c0d0126a:	07c2      	lsls	r2, r0, #31
c0d0126c:	d104      	bne.n	c0d01278 <preparse_value+0x28>
c0d0126e:	6862      	ldr	r2, [r4, #4]
c0d01270:	680b      	ldr	r3, [r1, #0]
c0d01272:	4293      	cmp	r3, r2
c0d01274:	d10a      	bne.n	c0d0128c <preparse_value+0x3c>
c0d01276:	e08c      	b.n	c0d01392 <preparse_value+0x142>
c0d01278:	6860      	ldr	r0, [r4, #4]
c0d0127a:	6809      	ldr	r1, [r1, #0]
c0d0127c:	680a      	ldr	r2, [r1, #0]
c0d0127e:	2101      	movs	r1, #1
c0d01280:	4790      	blx	r2
c0d01282:	2800      	cmp	r0, #0
c0d01284:	d100      	bne.n	c0d01288 <preparse_value+0x38>
c0d01286:	e084      	b.n	c0d01392 <preparse_value+0x142>
c0d01288:	6821      	ldr	r1, [r4, #0]
c0d0128a:	7908      	ldrb	r0, [r1, #4]
c0d0128c:	07c0      	lsls	r0, r0, #31
c0d0128e:	9504      	str	r5, [sp, #16]
c0d01290:	d101      	bne.n	c0d01296 <preparse_value+0x46>
c0d01292:	6865      	ldr	r5, [r4, #4]
c0d01294:	e009      	b.n	c0d012aa <preparse_value+0x5a>
c0d01296:	6860      	ldr	r0, [r4, #4]
c0d01298:	6809      	ldr	r1, [r1, #0]
c0d0129a:	684e      	ldr	r6, [r1, #4]
c0d0129c:	ad06      	add	r5, sp, #24
c0d0129e:	2200      	movs	r2, #0
c0d012a0:	2301      	movs	r3, #1
c0d012a2:	4629      	mov	r1, r5
c0d012a4:	47b0      	blx	r6
c0d012a6:	2800      	cmp	r0, #0
c0d012a8:	d073      	beq.n	c0d01392 <preparse_value+0x142>
c0d012aa:	782e      	ldrb	r6, [r5, #0]
c0d012ac:	201f      	movs	r0, #31
c0d012ae:	4030      	ands	r0, r6
c0d012b0:	a906      	add	r1, sp, #24
c0d012b2:	7008      	strb	r0, [r1, #0]
c0d012b4:	21e0      	movs	r1, #224	; 0xe0
c0d012b6:	4031      	ands	r1, r6
c0d012b8:	73a1      	strb	r1, [r4, #14]
c0d012ba:	81a0      	strh	r0, [r4, #12]
c0d012bc:	281c      	cmp	r0, #28
c0d012be:	d313      	bcc.n	c0d012e8 <preparse_value+0x98>
c0d012c0:	281f      	cmp	r0, #31
c0d012c2:	d000      	beq.n	c0d012c6 <preparse_value+0x76>
c0d012c4:	e0bb      	b.n	c0d0143e <preparse_value+0x1ee>
c0d012c6:	0972      	lsrs	r2, r6, #5
c0d012c8:	2004      	movs	r0, #4
c0d012ca:	4050      	eors	r0, r2
c0d012cc:	2807      	cmp	r0, #7
c0d012ce:	d864      	bhi.n	c0d0139a <preparse_value+0x14a>
c0d012d0:	2201      	movs	r2, #1
c0d012d2:	4082      	lsls	r2, r0
c0d012d4:	20c3      	movs	r0, #195	; 0xc3
c0d012d6:	4202      	tst	r2, r0
c0d012d8:	d05f      	beq.n	c0d0139a <preparse_value+0x14a>
c0d012da:	73a1      	strb	r1, [r4, #14]
c0d012dc:	7be0      	ldrb	r0, [r4, #15]
c0d012de:	2110      	movs	r1, #16
c0d012e0:	4301      	orrs	r1, r0
c0d012e2:	73e1      	strb	r1, [r4, #15]
c0d012e4:	2600      	movs	r6, #0
c0d012e6:	e055      	b.n	c0d01394 <preparse_value+0x144>
c0d012e8:	2501      	movs	r5, #1
c0d012ea:	2818      	cmp	r0, #24
c0d012ec:	9503      	str	r5, [sp, #12]
c0d012ee:	d303      	bcc.n	c0d012f8 <preparse_value+0xa8>
c0d012f0:	4601      	mov	r1, r0
c0d012f2:	3918      	subs	r1, #24
c0d012f4:	408d      	lsls	r5, r1
c0d012f6:	e000      	b.n	c0d012fa <preparse_value+0xaa>
c0d012f8:	2500      	movs	r5, #0
c0d012fa:	4623      	mov	r3, r4
c0d012fc:	330c      	adds	r3, #12
c0d012fe:	2818      	cmp	r0, #24
c0d01300:	d20c      	bcs.n	c0d0131c <preparse_value+0xcc>
c0d01302:	0971      	lsrs	r1, r6, #5
c0d01304:	2600      	movs	r6, #0
c0d01306:	2907      	cmp	r1, #7
c0d01308:	d01f      	beq.n	c0d0134a <preparse_value+0xfa>
c0d0130a:	2901      	cmp	r1, #1
c0d0130c:	d142      	bne.n	c0d01394 <preparse_value+0x144>
c0d0130e:	2600      	movs	r6, #0
c0d01310:	73a6      	strb	r6, [r4, #14]
c0d01312:	7be0      	ldrb	r0, [r4, #15]
c0d01314:	2104      	movs	r1, #4
c0d01316:	4301      	orrs	r1, r0
c0d01318:	73e1      	strb	r1, [r4, #15]
c0d0131a:	e03b      	b.n	c0d01394 <preparse_value+0x144>
c0d0131c:	1c69      	adds	r1, r5, #1
c0d0131e:	6822      	ldr	r2, [r4, #0]
c0d01320:	7910      	ldrb	r0, [r2, #4]
c0d01322:	07c0      	lsls	r0, r0, #31
c0d01324:	d12d      	bne.n	c0d01382 <preparse_value+0x132>
c0d01326:	6860      	ldr	r0, [r4, #4]
c0d01328:	6812      	ldr	r2, [r2, #0]
c0d0132a:	1a10      	subs	r0, r2, r0
c0d0132c:	4288      	cmp	r0, r1
c0d0132e:	d330      	bcc.n	c0d01392 <preparse_value+0x142>
c0d01330:	2000      	movs	r0, #0
c0d01332:	8018      	strh	r0, [r3, #0]
c0d01334:	2d02      	cmp	r5, #2
c0d01336:	d036      	beq.n	c0d013a6 <preparse_value+0x156>
c0d01338:	2d01      	cmp	r5, #1
c0d0133a:	d13b      	bne.n	c0d013b4 <preparse_value+0x164>
c0d0133c:	6821      	ldr	r1, [r4, #0]
c0d0133e:	7908      	ldrb	r0, [r1, #4]
c0d01340:	07c0      	lsls	r0, r0, #31
c0d01342:	d147      	bne.n	c0d013d4 <preparse_value+0x184>
c0d01344:	6860      	ldr	r0, [r4, #4]
c0d01346:	1c45      	adds	r5, r0, #1
c0d01348:	e051      	b.n	c0d013ee <preparse_value+0x19e>
c0d0134a:	4621      	mov	r1, r4
c0d0134c:	310e      	adds	r1, #14
c0d0134e:	aa06      	add	r2, sp, #24
c0d01350:	7812      	ldrb	r2, [r2, #0]
c0d01352:	2a1b      	cmp	r2, #27
c0d01354:	d857      	bhi.n	c0d01406 <preparse_value+0x1b6>
c0d01356:	9302      	str	r3, [sp, #8]
c0d01358:	9d03      	ldr	r5, [sp, #12]
c0d0135a:	4095      	lsls	r5, r2
c0d0135c:	2317      	movs	r3, #23
c0d0135e:	055b      	lsls	r3, r3, #21
c0d01360:	421d      	tst	r5, r3
c0d01362:	d106      	bne.n	c0d01372 <preparse_value+0x122>
c0d01364:	012b      	lsls	r3, r5, #4
c0d01366:	0f9b      	lsrs	r3, r3, #30
c0d01368:	d044      	beq.n	c0d013f4 <preparse_value+0x1a4>
c0d0136a:	7be0      	ldrb	r0, [r4, #15]
c0d0136c:	2202      	movs	r2, #2
c0d0136e:	4302      	orrs	r2, r0
c0d01370:	73e2      	strb	r2, [r4, #15]
c0d01372:	6822      	ldr	r2, [r4, #0]
c0d01374:	7910      	ldrb	r0, [r2, #4]
c0d01376:	07c0      	lsls	r0, r0, #31
c0d01378:	d124      	bne.n	c0d013c4 <preparse_value+0x174>
c0d0137a:	6860      	ldr	r0, [r4, #4]
c0d0137c:	7800      	ldrb	r0, [r0, #0]
c0d0137e:	73a0      	strb	r0, [r4, #14]
c0d01380:	e008      	b.n	c0d01394 <preparse_value+0x144>
c0d01382:	6860      	ldr	r0, [r4, #4]
c0d01384:	6812      	ldr	r2, [r2, #0]
c0d01386:	6812      	ldr	r2, [r2, #0]
c0d01388:	9302      	str	r3, [sp, #8]
c0d0138a:	4790      	blx	r2
c0d0138c:	9b02      	ldr	r3, [sp, #8]
c0d0138e:	2800      	cmp	r0, #0
c0d01390:	d1ce      	bne.n	c0d01330 <preparse_value+0xe0>
c0d01392:	463e      	mov	r6, r7
c0d01394:	4630      	mov	r0, r6
c0d01396:	b007      	add	sp, #28
c0d01398:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d0139a:	2edf      	cmp	r6, #223	; 0xdf
c0d0139c:	d801      	bhi.n	c0d013a2 <preparse_value+0x152>
c0d0139e:	1d3e      	adds	r6, r7, #4
c0d013a0:	e7f8      	b.n	c0d01394 <preparse_value+0x144>
c0d013a2:	1c7e      	adds	r6, r7, #1
c0d013a4:	e7f6      	b.n	c0d01394 <preparse_value+0x144>
c0d013a6:	6821      	ldr	r1, [r4, #0]
c0d013a8:	7908      	ldrb	r0, [r1, #4]
c0d013aa:	07c0      	lsls	r0, r0, #31
c0d013ac:	d132      	bne.n	c0d01414 <preparse_value+0x1c4>
c0d013ae:	6860      	ldr	r0, [r4, #4]
c0d013b0:	1c40      	adds	r0, r0, #1
c0d013b2:	e03b      	b.n	c0d0142c <preparse_value+0x1dc>
c0d013b4:	a906      	add	r1, sp, #24
c0d013b6:	7809      	ldrb	r1, [r1, #0]
c0d013b8:	2203      	movs	r2, #3
c0d013ba:	400a      	ands	r2, r1
c0d013bc:	7be1      	ldrb	r1, [r4, #15]
c0d013be:	4311      	orrs	r1, r2
c0d013c0:	73e1      	strb	r1, [r4, #15]
c0d013c2:	e79e      	b.n	c0d01302 <preparse_value+0xb2>
c0d013c4:	6860      	ldr	r0, [r4, #4]
c0d013c6:	6812      	ldr	r2, [r2, #0]
c0d013c8:	6854      	ldr	r4, [r2, #4]
c0d013ca:	2600      	movs	r6, #0
c0d013cc:	2301      	movs	r3, #1
c0d013ce:	4632      	mov	r2, r6
c0d013d0:	47a0      	blx	r4
c0d013d2:	e7df      	b.n	c0d01394 <preparse_value+0x144>
c0d013d4:	6860      	ldr	r0, [r4, #4]
c0d013d6:	6809      	ldr	r1, [r1, #0]
c0d013d8:	6849      	ldr	r1, [r1, #4]
c0d013da:	9101      	str	r1, [sp, #4]
c0d013dc:	a905      	add	r1, sp, #20
c0d013de:	9100      	str	r1, [sp, #0]
c0d013e0:	2201      	movs	r2, #1
c0d013e2:	9302      	str	r3, [sp, #8]
c0d013e4:	4613      	mov	r3, r2
c0d013e6:	9d01      	ldr	r5, [sp, #4]
c0d013e8:	47a8      	blx	r5
c0d013ea:	9d00      	ldr	r5, [sp, #0]
c0d013ec:	9b02      	ldr	r3, [sp, #8]
c0d013ee:	7828      	ldrb	r0, [r5, #0]
c0d013f0:	8018      	strh	r0, [r3, #0]
c0d013f2:	e786      	b.n	c0d01302 <preparse_value+0xb2>
c0d013f4:	2a18      	cmp	r2, #24
c0d013f6:	9b02      	ldr	r3, [sp, #8]
c0d013f8:	d105      	bne.n	c0d01406 <preparse_value+0x1b6>
c0d013fa:	281f      	cmp	r0, #31
c0d013fc:	d8ca      	bhi.n	c0d01394 <preparse_value+0x144>
c0d013fe:	9804      	ldr	r0, [sp, #16]
c0d01400:	7008      	strb	r0, [r1, #0]
c0d01402:	1d7e      	adds	r6, r7, #5
c0d01404:	e7c6      	b.n	c0d01394 <preparse_value+0x144>
c0d01406:	2a14      	cmp	r2, #20
c0d01408:	d1c4      	bne.n	c0d01394 <preparse_value+0x144>
c0d0140a:	20f5      	movs	r0, #245	; 0xf5
c0d0140c:	7008      	strb	r0, [r1, #0]
c0d0140e:	2600      	movs	r6, #0
c0d01410:	801e      	strh	r6, [r3, #0]
c0d01412:	e7bf      	b.n	c0d01394 <preparse_value+0x144>
c0d01414:	6860      	ldr	r0, [r4, #4]
c0d01416:	6809      	ldr	r1, [r1, #0]
c0d01418:	6849      	ldr	r1, [r1, #4]
c0d0141a:	9101      	str	r1, [sp, #4]
c0d0141c:	2201      	movs	r2, #1
c0d0141e:	9302      	str	r3, [sp, #8]
c0d01420:	2302      	movs	r3, #2
c0d01422:	9902      	ldr	r1, [sp, #8]
c0d01424:	9d01      	ldr	r5, [sp, #4]
c0d01426:	47a8      	blx	r5
c0d01428:	9b02      	ldr	r3, [sp, #8]
c0d0142a:	4618      	mov	r0, r3
c0d0142c:	7801      	ldrb	r1, [r0, #0]
c0d0142e:	7840      	ldrb	r0, [r0, #1]
c0d01430:	0200      	lsls	r0, r0, #8
c0d01432:	1840      	adds	r0, r0, r1
c0d01434:	ba41      	rev16	r1, r0
c0d01436:	8019      	strh	r1, [r3, #0]
c0d01438:	ba00      	rev	r0, r0
c0d0143a:	0c00      	lsrs	r0, r0, #16
c0d0143c:	e761      	b.n	c0d01302 <preparse_value+0xb2>
c0d0143e:	2edf      	cmp	r6, #223	; 0xdf
c0d01440:	d9ad      	bls.n	c0d0139e <preparse_value+0x14e>
c0d01442:	1cbe      	adds	r6, r7, #2
c0d01444:	e7a6      	b.n	c0d01394 <preparse_value+0x144>

c0d01446 <preparse_next_value_nodecrement>:
c0d01446:	b570      	push	{r4, r5, r6, lr}
c0d01448:	b082      	sub	sp, #8
c0d0144a:	4604      	mov	r4, r0
c0d0144c:	6880      	ldr	r0, [r0, #8]
c0d0144e:	1c40      	adds	r0, r0, #1
c0d01450:	d004      	beq.n	c0d0145c <preparse_next_value_nodecrement+0x16>
c0d01452:	4620      	mov	r0, r4
c0d01454:	f7ff fefc 	bl	c0d01250 <preparse_value>
c0d01458:	b002      	add	sp, #8
c0d0145a:	bd70      	pop	{r4, r5, r6, pc}
c0d0145c:	6821      	ldr	r1, [r4, #0]
c0d0145e:	7908      	ldrb	r0, [r1, #4]
c0d01460:	07c2      	lsls	r2, r0, #31
c0d01462:	d104      	bne.n	c0d0146e <preparse_next_value_nodecrement+0x28>
c0d01464:	6862      	ldr	r2, [r4, #4]
c0d01466:	680b      	ldr	r3, [r1, #0]
c0d01468:	4293      	cmp	r3, r2
c0d0146a:	d109      	bne.n	c0d01480 <preparse_next_value_nodecrement+0x3a>
c0d0146c:	e7f1      	b.n	c0d01452 <preparse_next_value_nodecrement+0xc>
c0d0146e:	6860      	ldr	r0, [r4, #4]
c0d01470:	6809      	ldr	r1, [r1, #0]
c0d01472:	680a      	ldr	r2, [r1, #0]
c0d01474:	2101      	movs	r1, #1
c0d01476:	4790      	blx	r2
c0d01478:	2800      	cmp	r0, #0
c0d0147a:	d0ea      	beq.n	c0d01452 <preparse_next_value_nodecrement+0xc>
c0d0147c:	6821      	ldr	r1, [r4, #0]
c0d0147e:	7908      	ldrb	r0, [r1, #4]
c0d01480:	07c0      	lsls	r0, r0, #31
c0d01482:	d104      	bne.n	c0d0148e <preparse_next_value_nodecrement+0x48>
c0d01484:	6860      	ldr	r0, [r4, #4]
c0d01486:	7801      	ldrb	r1, [r0, #0]
c0d01488:	a801      	add	r0, sp, #4
c0d0148a:	7001      	strb	r1, [r0, #0]
c0d0148c:	e008      	b.n	c0d014a0 <preparse_next_value_nodecrement+0x5a>
c0d0148e:	6860      	ldr	r0, [r4, #4]
c0d01490:	6809      	ldr	r1, [r1, #0]
c0d01492:	684e      	ldr	r6, [r1, #4]
c0d01494:	ad01      	add	r5, sp, #4
c0d01496:	2200      	movs	r2, #0
c0d01498:	2301      	movs	r3, #1
c0d0149a:	4629      	mov	r1, r5
c0d0149c:	47b0      	blx	r6
c0d0149e:	7829      	ldrb	r1, [r5, #0]
c0d014a0:	2800      	cmp	r0, #0
c0d014a2:	d0d6      	beq.n	c0d01452 <preparse_next_value_nodecrement+0xc>
c0d014a4:	29ff      	cmp	r1, #255	; 0xff
c0d014a6:	d1d4      	bne.n	c0d01452 <preparse_next_value_nodecrement+0xc>
c0d014a8:	7be1      	ldrb	r1, [r4, #15]
c0d014aa:	2260      	movs	r2, #96	; 0x60
c0d014ac:	400a      	ands	r2, r1
c0d014ae:	2081      	movs	r0, #129	; 0x81
c0d014b0:	0040      	lsls	r0, r0, #1
c0d014b2:	2a60      	cmp	r2, #96	; 0x60
c0d014b4:	d0d0      	beq.n	c0d01458 <preparse_next_value_nodecrement+0x12>
c0d014b6:	7ba2      	ldrb	r2, [r4, #14]
c0d014b8:	2ac0      	cmp	r2, #192	; 0xc0
c0d014ba:	d0cd      	beq.n	c0d01458 <preparse_next_value_nodecrement+0x12>
c0d014bc:	2000      	movs	r0, #0
c0d014be:	60a0      	str	r0, [r4, #8]
c0d014c0:	22ff      	movs	r2, #255	; 0xff
c0d014c2:	73a2      	strb	r2, [r4, #14]
c0d014c4:	2210      	movs	r2, #16
c0d014c6:	4311      	orrs	r1, r2
c0d014c8:	73e1      	strb	r1, [r4, #15]
c0d014ca:	e7c5      	b.n	c0d01458 <preparse_next_value_nodecrement+0x12>

c0d014cc <cbor_value_advance>:
c0d014cc:	b580      	push	{r7, lr}
c0d014ce:	6881      	ldr	r1, [r0, #8]
c0d014d0:	2900      	cmp	r1, #0
c0d014d2:	d004      	beq.n	c0d014de <cbor_value_advance+0x12>
c0d014d4:	2101      	movs	r1, #1
c0d014d6:	0289      	lsls	r1, r1, #10
c0d014d8:	f000 f81e 	bl	c0d01518 <advance_recursive>
c0d014dc:	bd80      	pop	{r7, pc}
c0d014de:	2003      	movs	r0, #3
c0d014e0:	bd80      	pop	{r7, pc}

c0d014e2 <advance_internal>:
c0d014e2:	b510      	push	{r4, lr}
c0d014e4:	4604      	mov	r4, r0
c0d014e6:	f000 f8a2 	bl	c0d0162e <extract_number_and_advance>
c0d014ea:	4601      	mov	r1, r0
c0d014ec:	7ba0      	ldrb	r0, [r4, #14]
c0d014ee:	2220      	movs	r2, #32
c0d014f0:	4302      	orrs	r2, r0
c0d014f2:	2a60      	cmp	r2, #96	; 0x60
c0d014f4:	d10b      	bne.n	c0d0150e <advance_internal+0x2c>
c0d014f6:	6822      	ldr	r2, [r4, #0]
c0d014f8:	7910      	ldrb	r0, [r2, #4]
c0d014fa:	07c0      	lsls	r0, r0, #31
c0d014fc:	d103      	bne.n	c0d01506 <advance_internal+0x24>
c0d014fe:	6860      	ldr	r0, [r4, #4]
c0d01500:	1840      	adds	r0, r0, r1
c0d01502:	6060      	str	r0, [r4, #4]
c0d01504:	e003      	b.n	c0d0150e <advance_internal+0x2c>
c0d01506:	6860      	ldr	r0, [r4, #4]
c0d01508:	6812      	ldr	r2, [r2, #0]
c0d0150a:	6892      	ldr	r2, [r2, #8]
c0d0150c:	4790      	blx	r2
c0d0150e:	4620      	mov	r0, r4
c0d01510:	f000 f8de 	bl	c0d016d0 <preparse_next_value>
c0d01514:	bd10      	pop	{r4, pc}
	...

c0d01518 <advance_recursive>:
c0d01518:	b5b0      	push	{r4, r5, r7, lr}
c0d0151a:	b088      	sub	sp, #32
c0d0151c:	460d      	mov	r5, r1
c0d0151e:	4604      	mov	r4, r0
c0d01520:	7b80      	ldrb	r0, [r0, #14]
c0d01522:	2180      	movs	r1, #128	; 0x80
c0d01524:	4041      	eors	r1, r0
c0d01526:	0609      	lsls	r1, r1, #24
c0d01528:	0f49      	lsrs	r1, r1, #29
c0d0152a:	00c2      	lsls	r2, r0, #3
c0d0152c:	1851      	adds	r1, r2, r1
c0d0152e:	b2c9      	uxtb	r1, r1
c0d01530:	2907      	cmp	r1, #7
c0d01532:	d82f      	bhi.n	c0d01594 <advance_recursive+0x7c>
c0d01534:	2201      	movs	r2, #1
c0d01536:	408a      	lsls	r2, r1
c0d01538:	21c3      	movs	r1, #195	; 0xc3
c0d0153a:	420a      	tst	r2, r1
c0d0153c:	d02a      	beq.n	c0d01594 <advance_recursive+0x7c>
c0d0153e:	21df      	movs	r1, #223	; 0xdf
c0d01540:	4008      	ands	r0, r1
c0d01542:	2880      	cmp	r0, #128	; 0x80
c0d01544:	d112      	bne.n	c0d0156c <advance_recursive+0x54>
c0d01546:	2d00      	cmp	r5, #0
c0d01548:	d028      	beq.n	c0d0159c <advance_recursive+0x84>
c0d0154a:	a903      	add	r1, sp, #12
c0d0154c:	4620      	mov	r0, r4
c0d0154e:	f000 f831 	bl	c0d015b4 <cbor_value_enter_container>
c0d01552:	2800      	cmp	r0, #0
c0d01554:	d128      	bne.n	c0d015a8 <advance_recursive+0x90>
c0d01556:	1e6d      	subs	r5, r5, #1
c0d01558:	9805      	ldr	r0, [sp, #20]
c0d0155a:	2800      	cmp	r0, #0
c0d0155c:	d020      	beq.n	c0d015a0 <advance_recursive+0x88>
c0d0155e:	a803      	add	r0, sp, #12
c0d01560:	4629      	mov	r1, r5
c0d01562:	f7ff ffd9 	bl	c0d01518 <advance_recursive>
c0d01566:	2800      	cmp	r0, #0
c0d01568:	d0f6      	beq.n	c0d01558 <advance_recursive+0x40>
c0d0156a:	e01d      	b.n	c0d015a8 <advance_recursive+0x90>
c0d0156c:	2100      	movs	r1, #0
c0d0156e:	43c8      	mvns	r0, r1
c0d01570:	9003      	str	r0, [sp, #12]
c0d01572:	480f      	ldr	r0, [pc, #60]	; (c0d015b0 <advance_recursive+0x98>)
c0d01574:	4478      	add	r0, pc
c0d01576:	9400      	str	r4, [sp, #0]
c0d01578:	9001      	str	r0, [sp, #4]
c0d0157a:	aa03      	add	r2, sp, #12
c0d0157c:	ad07      	add	r5, sp, #28
c0d0157e:	4620      	mov	r0, r4
c0d01580:	462b      	mov	r3, r5
c0d01582:	f000 fa19 	bl	c0d019b8 <iterate_string_chunks>
c0d01586:	782a      	ldrb	r2, [r5, #0]
c0d01588:	4251      	negs	r1, r2
c0d0158a:	4151      	adcs	r1, r2
c0d0158c:	2800      	cmp	r0, #0
c0d0158e:	d10b      	bne.n	c0d015a8 <advance_recursive+0x90>
c0d01590:	07c8      	lsls	r0, r1, #31
c0d01592:	e009      	b.n	c0d015a8 <advance_recursive+0x90>
c0d01594:	4620      	mov	r0, r4
c0d01596:	f7ff ffa4 	bl	c0d014e2 <advance_internal>
c0d0159a:	e005      	b.n	c0d015a8 <advance_recursive+0x90>
c0d0159c:	4803      	ldr	r0, [pc, #12]	; (c0d015ac <advance_recursive+0x94>)
c0d0159e:	e003      	b.n	c0d015a8 <advance_recursive+0x90>
c0d015a0:	a903      	add	r1, sp, #12
c0d015a2:	4620      	mov	r0, r4
c0d015a4:	f000 f87e 	bl	c0d016a4 <cbor_value_leave_container>
c0d015a8:	b008      	add	sp, #32
c0d015aa:	bdb0      	pop	{r4, r5, r7, pc}
c0d015ac:	00000401 	.word	0x00000401
c0d015b0:	000004f1 	.word	0x000004f1

c0d015b4 <cbor_value_enter_container>:
c0d015b4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d015b6:	b081      	sub	sp, #4
c0d015b8:	460c      	mov	r4, r1
c0d015ba:	4605      	mov	r5, r0
c0d015bc:	c8cc      	ldmia	r0!, {r2, r3, r6, r7}
c0d015be:	c1cc      	stmia	r1!, {r2, r3, r6, r7}
c0d015c0:	7be8      	ldrb	r0, [r5, #15]
c0d015c2:	06c0      	lsls	r0, r0, #27
c0d015c4:	d40e      	bmi.n	c0d015e4 <cbor_value_enter_container+0x30>
c0d015c6:	4620      	mov	r0, r4
c0d015c8:	f000 f831 	bl	c0d0162e <extract_number_and_advance>
c0d015cc:	4602      	mov	r2, r0
c0d015ce:	60a0      	str	r0, [r4, #8]
c0d015d0:	2000      	movs	r0, #0
c0d015d2:	1c53      	adds	r3, r2, #1
c0d015d4:	460b      	mov	r3, r1
c0d015d6:	4183      	sbcs	r3, r0
c0d015d8:	d30f      	bcc.n	c0d015fa <cbor_value_enter_container+0x46>
c0d015da:	6868      	ldr	r0, [r5, #4]
c0d015dc:	6060      	str	r0, [r4, #4]
c0d015de:	2001      	movs	r0, #1
c0d015e0:	0280      	lsls	r0, r0, #10
c0d015e2:	e022      	b.n	c0d0162a <cbor_value_enter_container+0x76>
c0d015e4:	2000      	movs	r0, #0
c0d015e6:	43c0      	mvns	r0, r0
c0d015e8:	60a0      	str	r0, [r4, #8]
c0d015ea:	6821      	ldr	r1, [r4, #0]
c0d015ec:	7908      	ldrb	r0, [r1, #4]
c0d015ee:	07c0      	lsls	r0, r0, #31
c0d015f0:	d10f      	bne.n	c0d01612 <cbor_value_enter_container+0x5e>
c0d015f2:	6860      	ldr	r0, [r4, #4]
c0d015f4:	1c40      	adds	r0, r0, #1
c0d015f6:	6060      	str	r0, [r4, #4]
c0d015f8:	e010      	b.n	c0d0161c <cbor_value_enter_container+0x68>
c0d015fa:	7ba3      	ldrb	r3, [r4, #14]
c0d015fc:	2ba0      	cmp	r3, #160	; 0xa0
c0d015fe:	d103      	bne.n	c0d01608 <cbor_value_enter_container+0x54>
c0d01600:	2a00      	cmp	r2, #0
c0d01602:	d4ea      	bmi.n	c0d015da <cbor_value_enter_container+0x26>
c0d01604:	0053      	lsls	r3, r2, #1
c0d01606:	60a3      	str	r3, [r4, #8]
c0d01608:	430a      	orrs	r2, r1
c0d0160a:	d107      	bne.n	c0d0161c <cbor_value_enter_container+0x68>
c0d0160c:	21ff      	movs	r1, #255	; 0xff
c0d0160e:	73a1      	strb	r1, [r4, #14]
c0d01610:	e00b      	b.n	c0d0162a <cbor_value_enter_container+0x76>
c0d01612:	6860      	ldr	r0, [r4, #4]
c0d01614:	6809      	ldr	r1, [r1, #0]
c0d01616:	688a      	ldr	r2, [r1, #8]
c0d01618:	2101      	movs	r1, #1
c0d0161a:	4790      	blx	r2
c0d0161c:	7ba0      	ldrb	r0, [r4, #14]
c0d0161e:	2120      	movs	r1, #32
c0d01620:	4001      	ands	r1, r0
c0d01622:	73e1      	strb	r1, [r4, #15]
c0d01624:	4620      	mov	r0, r4
c0d01626:	f7ff ff0e 	bl	c0d01446 <preparse_next_value_nodecrement>
c0d0162a:	b001      	add	sp, #4
c0d0162c:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d0162e <extract_number_and_advance>:
c0d0162e:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d01630:	b083      	sub	sp, #12
c0d01632:	4604      	mov	r4, r0
c0d01634:	7bc0      	ldrb	r0, [r0, #15]
c0d01636:	0780      	lsls	r0, r0, #30
c0d01638:	d402      	bmi.n	c0d01640 <extract_number_and_advance+0x12>
c0d0163a:	89a5      	ldrh	r5, [r4, #12]
c0d0163c:	2600      	movs	r6, #0
c0d0163e:	e004      	b.n	c0d0164a <extract_number_and_advance+0x1c>
c0d01640:	4620      	mov	r0, r4
c0d01642:	f7ff fda9 	bl	c0d01198 <_cbor_value_decode_int64_internal>
c0d01646:	4605      	mov	r5, r0
c0d01648:	460e      	mov	r6, r1
c0d0164a:	6822      	ldr	r2, [r4, #0]
c0d0164c:	7910      	ldrb	r0, [r2, #4]
c0d0164e:	07c1      	lsls	r1, r0, #31
c0d01650:	d101      	bne.n	c0d01656 <extract_number_and_advance+0x28>
c0d01652:	6867      	ldr	r7, [r4, #4]
c0d01654:	e00d      	b.n	c0d01672 <extract_number_and_advance+0x44>
c0d01656:	6860      	ldr	r0, [r4, #4]
c0d01658:	6811      	ldr	r1, [r2, #0]
c0d0165a:	9601      	str	r6, [sp, #4]
c0d0165c:	462e      	mov	r6, r5
c0d0165e:	684d      	ldr	r5, [r1, #4]
c0d01660:	af02      	add	r7, sp, #8
c0d01662:	2200      	movs	r2, #0
c0d01664:	2301      	movs	r3, #1
c0d01666:	4639      	mov	r1, r7
c0d01668:	47a8      	blx	r5
c0d0166a:	4635      	mov	r5, r6
c0d0166c:	9e01      	ldr	r6, [sp, #4]
c0d0166e:	6822      	ldr	r2, [r4, #0]
c0d01670:	7910      	ldrb	r0, [r2, #4]
c0d01672:	7839      	ldrb	r1, [r7, #0]
c0d01674:	231f      	movs	r3, #31
c0d01676:	400b      	ands	r3, r1
c0d01678:	a902      	add	r1, sp, #8
c0d0167a:	700b      	strb	r3, [r1, #0]
c0d0167c:	2101      	movs	r1, #1
c0d0167e:	2b18      	cmp	r3, #24
c0d01680:	d302      	bcc.n	c0d01688 <extract_number_and_advance+0x5a>
c0d01682:	3b18      	subs	r3, #24
c0d01684:	4099      	lsls	r1, r3
c0d01686:	1c49      	adds	r1, r1, #1
c0d01688:	07c0      	lsls	r0, r0, #31
c0d0168a:	d103      	bne.n	c0d01694 <extract_number_and_advance+0x66>
c0d0168c:	6860      	ldr	r0, [r4, #4]
c0d0168e:	1840      	adds	r0, r0, r1
c0d01690:	6060      	str	r0, [r4, #4]
c0d01692:	e003      	b.n	c0d0169c <extract_number_and_advance+0x6e>
c0d01694:	6860      	ldr	r0, [r4, #4]
c0d01696:	6812      	ldr	r2, [r2, #0]
c0d01698:	6892      	ldr	r2, [r2, #8]
c0d0169a:	4790      	blx	r2
c0d0169c:	4628      	mov	r0, r5
c0d0169e:	4631      	mov	r1, r6
c0d016a0:	b003      	add	sp, #12
c0d016a2:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d016a4 <cbor_value_leave_container>:
c0d016a4:	b510      	push	{r4, lr}
c0d016a6:	4604      	mov	r4, r0
c0d016a8:	6848      	ldr	r0, [r1, #4]
c0d016aa:	6060      	str	r0, [r4, #4]
c0d016ac:	7bc9      	ldrb	r1, [r1, #15]
c0d016ae:	06c9      	lsls	r1, r1, #27
c0d016b0:	d50a      	bpl.n	c0d016c8 <cbor_value_leave_container+0x24>
c0d016b2:	6821      	ldr	r1, [r4, #0]
c0d016b4:	790a      	ldrb	r2, [r1, #4]
c0d016b6:	07d2      	lsls	r2, r2, #31
c0d016b8:	d102      	bne.n	c0d016c0 <cbor_value_leave_container+0x1c>
c0d016ba:	1c40      	adds	r0, r0, #1
c0d016bc:	6060      	str	r0, [r4, #4]
c0d016be:	e003      	b.n	c0d016c8 <cbor_value_leave_container+0x24>
c0d016c0:	6809      	ldr	r1, [r1, #0]
c0d016c2:	688a      	ldr	r2, [r1, #8]
c0d016c4:	2101      	movs	r1, #1
c0d016c6:	4790      	blx	r2
c0d016c8:	4620      	mov	r0, r4
c0d016ca:	f000 f801 	bl	c0d016d0 <preparse_next_value>
c0d016ce:	bd10      	pop	{r4, pc}

c0d016d0 <preparse_next_value>:
c0d016d0:	b580      	push	{r7, lr}
c0d016d2:	7b81      	ldrb	r1, [r0, #14]
c0d016d4:	29c0      	cmp	r1, #192	; 0xc0
c0d016d6:	d005      	beq.n	c0d016e4 <preparse_next_value+0x14>
c0d016d8:	6882      	ldr	r2, [r0, #8]
c0d016da:	1c53      	adds	r3, r2, #1
c0d016dc:	d002      	beq.n	c0d016e4 <preparse_next_value+0x14>
c0d016de:	1e52      	subs	r2, r2, #1
c0d016e0:	6082      	str	r2, [r0, #8]
c0d016e2:	d008      	beq.n	c0d016f6 <preparse_next_value+0x26>
c0d016e4:	29c0      	cmp	r1, #192	; 0xc0
c0d016e6:	d003      	beq.n	c0d016f0 <preparse_next_value+0x20>
c0d016e8:	7bc1      	ldrb	r1, [r0, #15]
c0d016ea:	2240      	movs	r2, #64	; 0x40
c0d016ec:	404a      	eors	r2, r1
c0d016ee:	73c2      	strb	r2, [r0, #15]
c0d016f0:	f7ff fea9 	bl	c0d01446 <preparse_next_value_nodecrement>
c0d016f4:	bd80      	pop	{r7, pc}
c0d016f6:	21ff      	movs	r1, #255	; 0xff
c0d016f8:	7381      	strb	r1, [r0, #14]
c0d016fa:	7bc1      	ldrb	r1, [r0, #15]
c0d016fc:	22ef      	movs	r2, #239	; 0xef
c0d016fe:	400a      	ands	r2, r1
c0d01700:	73c2      	strb	r2, [r0, #15]
c0d01702:	2000      	movs	r0, #0
c0d01704:	bd80      	pop	{r7, pc}

c0d01706 <_cbor_value_begin_string_iteration>:
c0d01706:	b580      	push	{r7, lr}
c0d01708:	7bc1      	ldrb	r1, [r0, #15]
c0d0170a:	220c      	movs	r2, #12
c0d0170c:	430a      	orrs	r2, r1
c0d0170e:	73c2      	strb	r2, [r0, #15]
c0d01710:	06c9      	lsls	r1, r1, #27
c0d01712:	d50c      	bpl.n	c0d0172e <_cbor_value_begin_string_iteration+0x28>
c0d01714:	6801      	ldr	r1, [r0, #0]
c0d01716:	790a      	ldrb	r2, [r1, #4]
c0d01718:	07d2      	lsls	r2, r2, #31
c0d0171a:	d103      	bne.n	c0d01724 <_cbor_value_begin_string_iteration+0x1e>
c0d0171c:	6841      	ldr	r1, [r0, #4]
c0d0171e:	1c49      	adds	r1, r1, #1
c0d01720:	6041      	str	r1, [r0, #4]
c0d01722:	e004      	b.n	c0d0172e <_cbor_value_begin_string_iteration+0x28>
c0d01724:	6840      	ldr	r0, [r0, #4]
c0d01726:	6809      	ldr	r1, [r1, #0]
c0d01728:	688a      	ldr	r2, [r1, #8]
c0d0172a:	2101      	movs	r1, #1
c0d0172c:	4790      	blx	r2
c0d0172e:	2000      	movs	r0, #0
c0d01730:	bd80      	pop	{r7, pc}

c0d01732 <_cbor_value_finish_string_iteration>:
c0d01732:	b510      	push	{r4, lr}
c0d01734:	4604      	mov	r4, r0
c0d01736:	7bc0      	ldrb	r0, [r0, #15]
c0d01738:	06c0      	lsls	r0, r0, #27
c0d0173a:	d50c      	bpl.n	c0d01756 <_cbor_value_finish_string_iteration+0x24>
c0d0173c:	6821      	ldr	r1, [r4, #0]
c0d0173e:	7908      	ldrb	r0, [r1, #4]
c0d01740:	07c0      	lsls	r0, r0, #31
c0d01742:	d103      	bne.n	c0d0174c <_cbor_value_finish_string_iteration+0x1a>
c0d01744:	6860      	ldr	r0, [r4, #4]
c0d01746:	1c40      	adds	r0, r0, #1
c0d01748:	6060      	str	r0, [r4, #4]
c0d0174a:	e004      	b.n	c0d01756 <_cbor_value_finish_string_iteration+0x24>
c0d0174c:	6860      	ldr	r0, [r4, #4]
c0d0174e:	6809      	ldr	r1, [r1, #0]
c0d01750:	688a      	ldr	r2, [r1, #8]
c0d01752:	2101      	movs	r1, #1
c0d01754:	4790      	blx	r2
c0d01756:	4620      	mov	r0, r4
c0d01758:	f7ff ffba 	bl	c0d016d0 <preparse_next_value>
c0d0175c:	bd10      	pop	{r4, pc}

c0d0175e <get_string_chunk_size>:
c0d0175e:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d01760:	b089      	sub	sp, #36	; 0x24
c0d01762:	460c      	mov	r4, r1
c0d01764:	4607      	mov	r7, r0
c0d01766:	26ff      	movs	r6, #255	; 0xff
c0d01768:	3602      	adds	r6, #2
c0d0176a:	1db5      	adds	r5, r6, #6
c0d0176c:	7bc0      	ldrb	r0, [r0, #15]
c0d0176e:	2114      	movs	r1, #20
c0d01770:	4208      	tst	r0, r1
c0d01772:	d03a      	beq.n	c0d017ea <get_string_chunk_size+0x8c>
c0d01774:	9204      	str	r2, [sp, #16]
c0d01776:	6839      	ldr	r1, [r7, #0]
c0d01778:	7908      	ldrb	r0, [r1, #4]
c0d0177a:	07c2      	lsls	r2, r0, #31
c0d0177c:	d104      	bne.n	c0d01788 <get_string_chunk_size+0x2a>
c0d0177e:	687a      	ldr	r2, [r7, #4]
c0d01780:	680b      	ldr	r3, [r1, #0]
c0d01782:	4293      	cmp	r3, r2
c0d01784:	d109      	bne.n	c0d0179a <get_string_chunk_size+0x3c>
c0d01786:	e02f      	b.n	c0d017e8 <get_string_chunk_size+0x8a>
c0d01788:	6878      	ldr	r0, [r7, #4]
c0d0178a:	6809      	ldr	r1, [r1, #0]
c0d0178c:	680a      	ldr	r2, [r1, #0]
c0d0178e:	2101      	movs	r1, #1
c0d01790:	4790      	blx	r2
c0d01792:	2800      	cmp	r0, #0
c0d01794:	d028      	beq.n	c0d017e8 <get_string_chunk_size+0x8a>
c0d01796:	6839      	ldr	r1, [r7, #0]
c0d01798:	7908      	ldrb	r0, [r1, #4]
c0d0179a:	9403      	str	r4, [sp, #12]
c0d0179c:	07c0      	lsls	r0, r0, #31
c0d0179e:	d101      	bne.n	c0d017a4 <get_string_chunk_size+0x46>
c0d017a0:	6879      	ldr	r1, [r7, #4]
c0d017a2:	e00c      	b.n	c0d017be <get_string_chunk_size+0x60>
c0d017a4:	6878      	ldr	r0, [r7, #4]
c0d017a6:	6809      	ldr	r1, [r1, #0]
c0d017a8:	6849      	ldr	r1, [r1, #4]
c0d017aa:	9102      	str	r1, [sp, #8]
c0d017ac:	a905      	add	r1, sp, #20
c0d017ae:	9101      	str	r1, [sp, #4]
c0d017b0:	2200      	movs	r2, #0
c0d017b2:	2301      	movs	r3, #1
c0d017b4:	9c02      	ldr	r4, [sp, #8]
c0d017b6:	47a0      	blx	r4
c0d017b8:	9901      	ldr	r1, [sp, #4]
c0d017ba:	2800      	cmp	r0, #0
c0d017bc:	d014      	beq.n	c0d017e8 <get_string_chunk_size+0x8a>
c0d017be:	7808      	ldrb	r0, [r1, #0]
c0d017c0:	28ff      	cmp	r0, #255	; 0xff
c0d017c2:	d012      	beq.n	c0d017ea <get_string_chunk_size+0x8c>
c0d017c4:	21e0      	movs	r1, #224	; 0xe0
c0d017c6:	4001      	ands	r1, r0
c0d017c8:	7bba      	ldrb	r2, [r7, #14]
c0d017ca:	4291      	cmp	r1, r2
c0d017cc:	d110      	bne.n	c0d017f0 <get_string_chunk_size+0x92>
c0d017ce:	211f      	movs	r1, #31
c0d017d0:	4008      	ands	r0, r1
c0d017d2:	a905      	add	r1, sp, #20
c0d017d4:	7008      	strb	r0, [r1, #0]
c0d017d6:	2818      	cmp	r0, #24
c0d017d8:	d20c      	bcs.n	c0d017f4 <get_string_chunk_size+0x96>
c0d017da:	2501      	movs	r5, #1
c0d017dc:	9a04      	ldr	r2, [sp, #16]
c0d017de:	6010      	str	r0, [r2, #0]
c0d017e0:	9803      	ldr	r0, [sp, #12]
c0d017e2:	6005      	str	r5, [r0, #0]
c0d017e4:	2500      	movs	r5, #0
c0d017e6:	e000      	b.n	c0d017ea <get_string_chunk_size+0x8c>
c0d017e8:	4635      	mov	r5, r6
c0d017ea:	4628      	mov	r0, r5
c0d017ec:	b009      	add	sp, #36	; 0x24
c0d017ee:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d017f0:	1cf5      	adds	r5, r6, #3
c0d017f2:	e7fa      	b.n	c0d017ea <get_string_chunk_size+0x8c>
c0d017f4:	281b      	cmp	r0, #27
c0d017f6:	d900      	bls.n	c0d017fa <get_string_chunk_size+0x9c>
c0d017f8:	e093      	b.n	c0d01922 <get_string_chunk_size+0x1c4>
c0d017fa:	4602      	mov	r2, r0
c0d017fc:	3a18      	subs	r2, #24
c0d017fe:	2401      	movs	r4, #1
c0d01800:	4625      	mov	r5, r4
c0d01802:	4095      	lsls	r5, r2
c0d01804:	1c69      	adds	r1, r5, #1
c0d01806:	683a      	ldr	r2, [r7, #0]
c0d01808:	7913      	ldrb	r3, [r2, #4]
c0d0180a:	07db      	lsls	r3, r3, #31
c0d0180c:	9102      	str	r1, [sp, #8]
c0d0180e:	d106      	bne.n	c0d0181e <get_string_chunk_size+0xc0>
c0d01810:	687b      	ldr	r3, [r7, #4]
c0d01812:	6812      	ldr	r2, [r2, #0]
c0d01814:	1ad2      	subs	r2, r2, r3
c0d01816:	42aa      	cmp	r2, r5
c0d01818:	4635      	mov	r5, r6
c0d0181a:	d9e6      	bls.n	c0d017ea <get_string_chunk_size+0x8c>
c0d0181c:	e008      	b.n	c0d01830 <get_string_chunk_size+0xd2>
c0d0181e:	6878      	ldr	r0, [r7, #4]
c0d01820:	6812      	ldr	r2, [r2, #0]
c0d01822:	6812      	ldr	r2, [r2, #0]
c0d01824:	4790      	blx	r2
c0d01826:	2800      	cmp	r0, #0
c0d01828:	4635      	mov	r5, r6
c0d0182a:	d0de      	beq.n	c0d017ea <get_string_chunk_size+0x8c>
c0d0182c:	a805      	add	r0, sp, #20
c0d0182e:	7800      	ldrb	r0, [r0, #0]
c0d01830:	2819      	cmp	r0, #25
c0d01832:	d807      	bhi.n	c0d01844 <get_string_chunk_size+0xe6>
c0d01834:	d110      	bne.n	c0d01858 <get_string_chunk_size+0xfa>
c0d01836:	6839      	ldr	r1, [r7, #0]
c0d01838:	7908      	ldrb	r0, [r1, #4]
c0d0183a:	07c0      	lsls	r0, r0, #31
c0d0183c:	d11a      	bne.n	c0d01874 <get_string_chunk_size+0x116>
c0d0183e:	6878      	ldr	r0, [r7, #4]
c0d01840:	1c44      	adds	r4, r0, #1
c0d01842:	e01f      	b.n	c0d01884 <get_string_chunk_size+0x126>
c0d01844:	281a      	cmp	r0, #26
c0d01846:	9d02      	ldr	r5, [sp, #8]
c0d01848:	d10d      	bne.n	c0d01866 <get_string_chunk_size+0x108>
c0d0184a:	6839      	ldr	r1, [r7, #0]
c0d0184c:	7908      	ldrb	r0, [r1, #4]
c0d0184e:	07c0      	lsls	r0, r0, #31
c0d01850:	d121      	bne.n	c0d01896 <get_string_chunk_size+0x138>
c0d01852:	6878      	ldr	r0, [r7, #4]
c0d01854:	1c46      	adds	r6, r0, #1
c0d01856:	e026      	b.n	c0d018a6 <get_string_chunk_size+0x148>
c0d01858:	6839      	ldr	r1, [r7, #0]
c0d0185a:	7908      	ldrb	r0, [r1, #4]
c0d0185c:	07c0      	lsls	r0, r0, #31
c0d0185e:	d12e      	bne.n	c0d018be <get_string_chunk_size+0x160>
c0d01860:	6878      	ldr	r0, [r7, #4]
c0d01862:	1c44      	adds	r4, r0, #1
c0d01864:	e033      	b.n	c0d018ce <get_string_chunk_size+0x170>
c0d01866:	6839      	ldr	r1, [r7, #0]
c0d01868:	7908      	ldrb	r0, [r1, #4]
c0d0186a:	07c0      	lsls	r0, r0, #31
c0d0186c:	d133      	bne.n	c0d018d6 <get_string_chunk_size+0x178>
c0d0186e:	6878      	ldr	r0, [r7, #4]
c0d01870:	1c46      	adds	r6, r0, #1
c0d01872:	e038      	b.n	c0d018e6 <get_string_chunk_size+0x188>
c0d01874:	6878      	ldr	r0, [r7, #4]
c0d01876:	6809      	ldr	r1, [r1, #0]
c0d01878:	684d      	ldr	r5, [r1, #4]
c0d0187a:	ac06      	add	r4, sp, #24
c0d0187c:	2201      	movs	r2, #1
c0d0187e:	2302      	movs	r3, #2
c0d01880:	4621      	mov	r1, r4
c0d01882:	47a8      	blx	r5
c0d01884:	9a04      	ldr	r2, [sp, #16]
c0d01886:	9d02      	ldr	r5, [sp, #8]
c0d01888:	7820      	ldrb	r0, [r4, #0]
c0d0188a:	7861      	ldrb	r1, [r4, #1]
c0d0188c:	0209      	lsls	r1, r1, #8
c0d0188e:	1808      	adds	r0, r1, r0
c0d01890:	ba00      	rev	r0, r0
c0d01892:	0c00      	lsrs	r0, r0, #16
c0d01894:	e7a3      	b.n	c0d017de <get_string_chunk_size+0x80>
c0d01896:	6878      	ldr	r0, [r7, #4]
c0d01898:	6809      	ldr	r1, [r1, #0]
c0d0189a:	684c      	ldr	r4, [r1, #4]
c0d0189c:	ae06      	add	r6, sp, #24
c0d0189e:	2201      	movs	r2, #1
c0d018a0:	2304      	movs	r3, #4
c0d018a2:	4631      	mov	r1, r6
c0d018a4:	47a0      	blx	r4
c0d018a6:	7830      	ldrb	r0, [r6, #0]
c0d018a8:	7871      	ldrb	r1, [r6, #1]
c0d018aa:	0209      	lsls	r1, r1, #8
c0d018ac:	1808      	adds	r0, r1, r0
c0d018ae:	78b1      	ldrb	r1, [r6, #2]
c0d018b0:	78f2      	ldrb	r2, [r6, #3]
c0d018b2:	0212      	lsls	r2, r2, #8
c0d018b4:	1851      	adds	r1, r2, r1
c0d018b6:	0409      	lsls	r1, r1, #16
c0d018b8:	1808      	adds	r0, r1, r0
c0d018ba:	ba00      	rev	r0, r0
c0d018bc:	e78e      	b.n	c0d017dc <get_string_chunk_size+0x7e>
c0d018be:	6878      	ldr	r0, [r7, #4]
c0d018c0:	6809      	ldr	r1, [r1, #0]
c0d018c2:	684d      	ldr	r5, [r1, #4]
c0d018c4:	ac06      	add	r4, sp, #24
c0d018c6:	2201      	movs	r2, #1
c0d018c8:	4621      	mov	r1, r4
c0d018ca:	4613      	mov	r3, r2
c0d018cc:	47a8      	blx	r5
c0d018ce:	9a04      	ldr	r2, [sp, #16]
c0d018d0:	9d02      	ldr	r5, [sp, #8]
c0d018d2:	7820      	ldrb	r0, [r4, #0]
c0d018d4:	e783      	b.n	c0d017de <get_string_chunk_size+0x80>
c0d018d6:	6878      	ldr	r0, [r7, #4]
c0d018d8:	6809      	ldr	r1, [r1, #0]
c0d018da:	684d      	ldr	r5, [r1, #4]
c0d018dc:	ae06      	add	r6, sp, #24
c0d018de:	2201      	movs	r2, #1
c0d018e0:	2308      	movs	r3, #8
c0d018e2:	4631      	mov	r1, r6
c0d018e4:	47a8      	blx	r5
c0d018e6:	7930      	ldrb	r0, [r6, #4]
c0d018e8:	7971      	ldrb	r1, [r6, #5]
c0d018ea:	0209      	lsls	r1, r1, #8
c0d018ec:	1808      	adds	r0, r1, r0
c0d018ee:	79b1      	ldrb	r1, [r6, #6]
c0d018f0:	79f2      	ldrb	r2, [r6, #7]
c0d018f2:	0212      	lsls	r2, r2, #8
c0d018f4:	1851      	adds	r1, r2, r1
c0d018f6:	0409      	lsls	r1, r1, #16
c0d018f8:	1808      	adds	r0, r1, r0
c0d018fa:	ba00      	rev	r0, r0
c0d018fc:	78b1      	ldrb	r1, [r6, #2]
c0d018fe:	78f2      	ldrb	r2, [r6, #3]
c0d01900:	7833      	ldrb	r3, [r6, #0]
c0d01902:	7875      	ldrb	r5, [r6, #1]
c0d01904:	9e04      	ldr	r6, [sp, #16]
c0d01906:	6030      	str	r0, [r6, #0]
c0d01908:	0228      	lsls	r0, r5, #8
c0d0190a:	18c0      	adds	r0, r0, r3
c0d0190c:	0212      	lsls	r2, r2, #8
c0d0190e:	1851      	adds	r1, r2, r1
c0d01910:	0409      	lsls	r1, r1, #16
c0d01912:	1808      	adds	r0, r1, r0
c0d01914:	ba00      	rev	r0, r0
c0d01916:	2800      	cmp	r0, #0
c0d01918:	9d02      	ldr	r5, [sp, #8]
c0d0191a:	d100      	bne.n	c0d0191e <get_string_chunk_size+0x1c0>
c0d0191c:	e760      	b.n	c0d017e0 <get_string_chunk_size+0x82>
c0d0191e:	02a5      	lsls	r5, r4, #10
c0d01920:	e763      	b.n	c0d017ea <get_string_chunk_size+0x8c>
c0d01922:	1d35      	adds	r5, r6, #4
c0d01924:	e761      	b.n	c0d017ea <get_string_chunk_size+0x8c>

c0d01926 <_cbor_value_get_string_chunk>:
c0d01926:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d01928:	b085      	sub	sp, #20
c0d0192a:	9200      	str	r2, [sp, #0]
c0d0192c:	4602      	mov	r2, r0
c0d0192e:	a801      	add	r0, sp, #4
c0d01930:	2b00      	cmp	r3, #0
c0d01932:	d000      	beq.n	c0d01936 <_cbor_value_get_string_chunk+0x10>
c0d01934:	4618      	mov	r0, r3
c0d01936:	4603      	mov	r3, r0
c0d01938:	caf0      	ldmia	r2!, {r4, r5, r6, r7}
c0d0193a:	c3f0      	stmia	r3!, {r4, r5, r6, r7}
c0d0193c:	9a00      	ldr	r2, [sp, #0]
c0d0193e:	f000 f802 	bl	c0d01946 <get_string_chunk>
c0d01942:	b005      	add	sp, #20
c0d01944:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d01946 <get_string_chunk>:
c0d01946:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d01948:	b081      	sub	sp, #4
c0d0194a:	4616      	mov	r6, r2
c0d0194c:	460d      	mov	r5, r1
c0d0194e:	4604      	mov	r4, r0
c0d01950:	4669      	mov	r1, sp
c0d01952:	f7ff ff04 	bl	c0d0175e <get_string_chunk_size>
c0d01956:	2800      	cmp	r0, #0
c0d01958:	d12c      	bne.n	c0d019b4 <get_string_chunk+0x6e>
c0d0195a:	6836      	ldr	r6, [r6, #0]
c0d0195c:	6821      	ldr	r1, [r4, #0]
c0d0195e:	7908      	ldrb	r0, [r1, #4]
c0d01960:	07c0      	lsls	r0, r0, #31
c0d01962:	9a00      	ldr	r2, [sp, #0]
c0d01964:	d10a      	bne.n	c0d0197c <get_string_chunk+0x36>
c0d01966:	6860      	ldr	r0, [r4, #4]
c0d01968:	1880      	adds	r0, r0, r2
c0d0196a:	6060      	str	r0, [r4, #4]
c0d0196c:	790a      	ldrb	r2, [r1, #4]
c0d0196e:	07d2      	lsls	r2, r2, #31
c0d01970:	d10d      	bne.n	c0d0198e <get_string_chunk+0x48>
c0d01972:	6809      	ldr	r1, [r1, #0]
c0d01974:	1a09      	subs	r1, r1, r0
c0d01976:	42b1      	cmp	r1, r6
c0d01978:	d210      	bcs.n	c0d0199c <get_string_chunk+0x56>
c0d0197a:	e019      	b.n	c0d019b0 <get_string_chunk+0x6a>
c0d0197c:	6860      	ldr	r0, [r4, #4]
c0d0197e:	6809      	ldr	r1, [r1, #0]
c0d01980:	68cf      	ldr	r7, [r1, #12]
c0d01982:	4629      	mov	r1, r5
c0d01984:	4633      	mov	r3, r6
c0d01986:	47b8      	blx	r7
c0d01988:	2800      	cmp	r0, #0
c0d0198a:	d113      	bne.n	c0d019b4 <get_string_chunk+0x6e>
c0d0198c:	e00a      	b.n	c0d019a4 <get_string_chunk+0x5e>
c0d0198e:	6809      	ldr	r1, [r1, #0]
c0d01990:	680a      	ldr	r2, [r1, #0]
c0d01992:	4631      	mov	r1, r6
c0d01994:	4790      	blx	r2
c0d01996:	2800      	cmp	r0, #0
c0d01998:	d00a      	beq.n	c0d019b0 <get_string_chunk+0x6a>
c0d0199a:	6860      	ldr	r0, [r4, #4]
c0d0199c:	6028      	str	r0, [r5, #0]
c0d0199e:	6860      	ldr	r0, [r4, #4]
c0d019a0:	1980      	adds	r0, r0, r6
c0d019a2:	6060      	str	r0, [r4, #4]
c0d019a4:	7be0      	ldrb	r0, [r4, #15]
c0d019a6:	21fb      	movs	r1, #251	; 0xfb
c0d019a8:	4001      	ands	r1, r0
c0d019aa:	73e1      	strb	r1, [r4, #15]
c0d019ac:	2000      	movs	r0, #0
c0d019ae:	e001      	b.n	c0d019b4 <get_string_chunk+0x6e>
c0d019b0:	20ff      	movs	r0, #255	; 0xff
c0d019b2:	3002      	adds	r0, #2
c0d019b4:	b001      	add	sp, #4
c0d019b6:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d019b8 <iterate_string_chunks>:
c0d019b8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d019ba:	b08b      	sub	sp, #44	; 0x2c
c0d019bc:	461d      	mov	r5, r3
c0d019be:	9204      	str	r2, [sp, #16]
c0d019c0:	9103      	str	r1, [sp, #12]
c0d019c2:	7b82      	ldrb	r2, [r0, #14]
c0d019c4:	9910      	ldr	r1, [sp, #64]	; 0x40
c0d019c6:	2a40      	cmp	r2, #64	; 0x40
c0d019c8:	ae07      	add	r6, sp, #28
c0d019ca:	2900      	cmp	r1, #0
c0d019cc:	d000      	beq.n	c0d019d0 <iterate_string_chunks+0x18>
c0d019ce:	460e      	mov	r6, r1
c0d019d0:	9911      	ldr	r1, [sp, #68]	; 0x44
c0d019d2:	9102      	str	r1, [sp, #8]
c0d019d4:	4631      	mov	r1, r6
c0d019d6:	c89c      	ldmia	r0!, {r2, r3, r4, r7}
c0d019d8:	c19c      	stmia	r1!, {r2, r3, r4, r7}
c0d019da:	2001      	movs	r0, #1
c0d019dc:	9001      	str	r0, [sp, #4]
c0d019de:	7028      	strb	r0, [r5, #0]
c0d019e0:	4630      	mov	r0, r6
c0d019e2:	f7ff fe90 	bl	c0d01706 <_cbor_value_begin_string_iteration>
c0d019e6:	2700      	movs	r7, #0
c0d019e8:	a906      	add	r1, sp, #24
c0d019ea:	aa05      	add	r2, sp, #20
c0d019ec:	4630      	mov	r0, r6
c0d019ee:	f7ff ffaa 	bl	c0d01946 <get_string_chunk>
c0d019f2:	2800      	cmp	r0, #0
c0d019f4:	d116      	bne.n	c0d01a24 <iterate_string_chunks+0x6c>
c0d019f6:	9a05      	ldr	r2, [sp, #20]
c0d019f8:	18bc      	adds	r4, r7, r2
c0d019fa:	d232      	bcs.n	c0d01a62 <iterate_string_chunks+0xaa>
c0d019fc:	7829      	ldrb	r1, [r5, #0]
c0d019fe:	2000      	movs	r0, #0
c0d01a00:	2900      	cmp	r1, #0
c0d01a02:	d00c      	beq.n	c0d01a1e <iterate_string_chunks+0x66>
c0d01a04:	9904      	ldr	r1, [sp, #16]
c0d01a06:	6809      	ldr	r1, [r1, #0]
c0d01a08:	42a1      	cmp	r1, r4
c0d01a0a:	d308      	bcc.n	c0d01a1e <iterate_string_chunks+0x66>
c0d01a0c:	9803      	ldr	r0, [sp, #12]
c0d01a0e:	2800      	cmp	r0, #0
c0d01a10:	d000      	beq.n	c0d01a14 <iterate_string_chunks+0x5c>
c0d01a12:	19c0      	adds	r0, r0, r7
c0d01a14:	9906      	ldr	r1, [sp, #24]
c0d01a16:	9b02      	ldr	r3, [sp, #8]
c0d01a18:	4798      	blx	r3
c0d01a1a:	1e41      	subs	r1, r0, #1
c0d01a1c:	4188      	sbcs	r0, r1
c0d01a1e:	7028      	strb	r0, [r5, #0]
c0d01a20:	4627      	mov	r7, r4
c0d01a22:	e7e1      	b.n	c0d019e8 <iterate_string_chunks+0x30>
c0d01a24:	21ff      	movs	r1, #255	; 0xff
c0d01a26:	3108      	adds	r1, #8
c0d01a28:	4288      	cmp	r0, r1
c0d01a2a:	d118      	bne.n	c0d01a5e <iterate_string_chunks+0xa6>
c0d01a2c:	7828      	ldrb	r0, [r5, #0]
c0d01a2e:	2800      	cmp	r0, #0
c0d01a30:	d010      	beq.n	c0d01a54 <iterate_string_chunks+0x9c>
c0d01a32:	9804      	ldr	r0, [sp, #16]
c0d01a34:	6800      	ldr	r0, [r0, #0]
c0d01a36:	42b8      	cmp	r0, r7
c0d01a38:	d90c      	bls.n	c0d01a54 <iterate_string_chunks+0x9c>
c0d01a3a:	a905      	add	r1, sp, #20
c0d01a3c:	2000      	movs	r0, #0
c0d01a3e:	7008      	strb	r0, [r1, #0]
c0d01a40:	9803      	ldr	r0, [sp, #12]
c0d01a42:	2800      	cmp	r0, #0
c0d01a44:	d000      	beq.n	c0d01a48 <iterate_string_chunks+0x90>
c0d01a46:	19c0      	adds	r0, r0, r7
c0d01a48:	2201      	movs	r2, #1
c0d01a4a:	9b02      	ldr	r3, [sp, #8]
c0d01a4c:	4798      	blx	r3
c0d01a4e:	1e41      	subs	r1, r0, #1
c0d01a50:	4188      	sbcs	r0, r1
c0d01a52:	7028      	strb	r0, [r5, #0]
c0d01a54:	9804      	ldr	r0, [sp, #16]
c0d01a56:	6007      	str	r7, [r0, #0]
c0d01a58:	4630      	mov	r0, r6
c0d01a5a:	f7ff fe6a 	bl	c0d01732 <_cbor_value_finish_string_iteration>
c0d01a5e:	b00b      	add	sp, #44	; 0x2c
c0d01a60:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d01a62:	9801      	ldr	r0, [sp, #4]
c0d01a64:	0280      	lsls	r0, r0, #10
c0d01a66:	e7fa      	b.n	c0d01a5e <iterate_string_chunks+0xa6>

c0d01a68 <iterate_noop>:
c0d01a68:	2001      	movs	r0, #1
c0d01a6a:	4770      	bx	lr

c0d01a6c <crypto_extractPublicKey>:
c0d01a6c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d01a6e:	b0b3      	sub	sp, #204	; 0xcc
c0d01a70:	2a21      	cmp	r2, #33	; 0x21
c0d01a72:	d201      	bcs.n	c0d01a78 <crypto_extractPublicKey+0xc>
c0d01a74:	200c      	movs	r0, #12
c0d01a76:	e066      	b.n	c0d01b46 <crypto_extractPublicKey+0xda>
c0d01a78:	460c      	mov	r4, r1
c0d01a7a:	4605      	mov	r5, r0
c0d01a7c:	ae02      	add	r6, sp, #8
c0d01a7e:	4630      	mov	r0, r6
c0d01a80:	f006 fc00 	bl	c0d08284 <setjmp>
c0d01a84:	85b0      	strh	r0, [r6, #44]	; 0x2c
c0d01a86:	b286      	uxth	r6, r0
c0d01a88:	2e00      	cmp	r6, #0
c0d01a8a:	d007      	beq.n	c0d01a9c <crypto_extractPublicKey+0x30>
c0d01a8c:	a802      	add	r0, sp, #8
c0d01a8e:	2100      	movs	r1, #0
c0d01a90:	8581      	strh	r1, [r0, #44]	; 0x2c
c0d01a92:	980c      	ldr	r0, [sp, #48]	; 0x30
c0d01a94:	f003 f8bc 	bl	c0d04c10 <try_context_set>
c0d01a98:	250f      	movs	r5, #15
c0d01a9a:	e028      	b.n	c0d01aee <crypto_extractPublicKey+0x82>
c0d01a9c:	9601      	str	r6, [sp, #4]
c0d01a9e:	a802      	add	r0, sp, #8
c0d01aa0:	f003 f8b6 	bl	c0d04c10 <try_context_set>
c0d01aa4:	900c      	str	r0, [sp, #48]	; 0x30
c0d01aa6:	2000      	movs	r0, #0
c0d01aa8:	9000      	str	r0, [sp, #0]
c0d01aaa:	2621      	movs	r6, #33	; 0x21
c0d01aac:	2205      	movs	r2, #5
c0d01aae:	af0e      	add	r7, sp, #56	; 0x38
c0d01ab0:	4630      	mov	r0, r6
c0d01ab2:	4629      	mov	r1, r5
c0d01ab4:	463b      	mov	r3, r7
c0d01ab6:	f003 f829 	bl	c0d04b0c <os_perso_derive_node_bip32>
c0d01aba:	2220      	movs	r2, #32
c0d01abc:	ab16      	add	r3, sp, #88	; 0x58
c0d01abe:	4630      	mov	r0, r6
c0d01ac0:	4639      	mov	r1, r7
c0d01ac2:	f000 f93d 	bl	c0d01d40 <cx_ecfp_init_private_key_no_throw>
c0d01ac6:	2800      	cmp	r0, #0
c0d01ac8:	d13f      	bne.n	c0d01b4a <crypto_extractPublicKey+0xde>
c0d01aca:	2021      	movs	r0, #33	; 0x21
c0d01acc:	2100      	movs	r1, #0
c0d01ace:	ab20      	add	r3, sp, #128	; 0x80
c0d01ad0:	460a      	mov	r2, r1
c0d01ad2:	f000 f93b 	bl	c0d01d4c <cx_ecfp_init_public_key_no_throw>
c0d01ad6:	2800      	cmp	r0, #0
c0d01ad8:	d137      	bne.n	c0d01b4a <crypto_extractPublicKey+0xde>
c0d01ada:	2021      	movs	r0, #33	; 0x21
c0d01adc:	a920      	add	r1, sp, #128	; 0x80
c0d01ade:	aa16      	add	r2, sp, #88	; 0x58
c0d01ae0:	2301      	movs	r3, #1
c0d01ae2:	f000 f927 	bl	c0d01d34 <cx_ecfp_generate_pair_no_throw>
c0d01ae6:	2800      	cmp	r0, #0
c0d01ae8:	9e01      	ldr	r6, [sp, #4]
c0d01aea:	d12e      	bne.n	c0d01b4a <crypto_extractPublicKey+0xde>
c0d01aec:	2503      	movs	r5, #3
c0d01aee:	f003 f883 	bl	c0d04bf8 <try_context_get>
c0d01af2:	a902      	add	r1, sp, #8
c0d01af4:	4288      	cmp	r0, r1
c0d01af6:	d102      	bne.n	c0d01afe <crypto_extractPublicKey+0x92>
c0d01af8:	980c      	ldr	r0, [sp, #48]	; 0x30
c0d01afa:	f003 f889 	bl	c0d04c10 <try_context_set>
c0d01afe:	a816      	add	r0, sp, #88	; 0x58
c0d01b00:	2128      	movs	r1, #40	; 0x28
c0d01b02:	f006 fa9b 	bl	c0d0803c <explicit_bzero>
c0d01b06:	a80e      	add	r0, sp, #56	; 0x38
c0d01b08:	2120      	movs	r1, #32
c0d01b0a:	f006 fa97 	bl	c0d0803c <explicit_bzero>
c0d01b0e:	a802      	add	r0, sp, #8
c0d01b10:	8d80      	ldrh	r0, [r0, #44]	; 0x2c
c0d01b12:	2800      	cmp	r0, #0
c0d01b14:	d119      	bne.n	c0d01b4a <crypto_extractPublicKey+0xde>
c0d01b16:	2e00      	cmp	r6, #0
c0d01b18:	d114      	bne.n	c0d01b44 <crypto_extractPublicKey+0xd8>
c0d01b1a:	a820      	add	r0, sp, #128	; 0x80
c0d01b1c:	3048      	adds	r0, #72	; 0x48
c0d01b1e:	2100      	movs	r1, #0
c0d01b20:	7802      	ldrb	r2, [r0, #0]
c0d01b22:	5462      	strb	r2, [r4, r1]
c0d01b24:	1e40      	subs	r0, r0, #1
c0d01b26:	1c49      	adds	r1, r1, #1
c0d01b28:	2920      	cmp	r1, #32
c0d01b2a:	d1f9      	bne.n	c0d01b20 <crypto_extractPublicKey+0xb4>
c0d01b2c:	2048      	movs	r0, #72	; 0x48
c0d01b2e:	a920      	add	r1, sp, #128	; 0x80
c0d01b30:	5c08      	ldrb	r0, [r1, r0]
c0d01b32:	2201      	movs	r2, #1
c0d01b34:	4002      	ands	r2, r0
c0d01b36:	1c90      	adds	r0, r2, #2
c0d01b38:	7208      	strb	r0, [r1, #8]
c0d01b3a:	3108      	adds	r1, #8
c0d01b3c:	2221      	movs	r2, #33	; 0x21
c0d01b3e:	4620      	mov	r0, r4
c0d01b40:	f006 fa6c 	bl	c0d0801c <__aeabi_memcpy>
c0d01b44:	4628      	mov	r0, r5
c0d01b46:	b033      	add	sp, #204	; 0xcc
c0d01b48:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d01b4a:	f000 fcd9 	bl	c0d02500 <os_longjmp>
	...

c0d01b50 <crypto_sign>:
c0d01b50:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d01b52:	b0af      	sub	sp, #188	; 0xbc
c0d01b54:	9206      	str	r2, [sp, #24]
c0d01b56:	9104      	str	r1, [sp, #16]
c0d01b58:	4606      	mov	r6, r0
c0d01b5a:	af25      	add	r7, sp, #148	; 0x94
c0d01b5c:	2420      	movs	r4, #32
c0d01b5e:	4638      	mov	r0, r7
c0d01b60:	4621      	mov	r1, r4
c0d01b62:	f006 fa6b 	bl	c0d0803c <explicit_bzero>
c0d01b66:	f003 f88c 	bl	c0d04c82 <tx_get_buffer>
c0d01b6a:	4605      	mov	r5, r0
c0d01b6c:	f003 f884 	bl	c0d04c78 <tx_get_buffer_length>
c0d01b70:	b281      	uxth	r1, r0
c0d01b72:	4628      	mov	r0, r5
c0d01b74:	463a      	mov	r2, r7
c0d01b76:	4623      	mov	r3, r4
c0d01b78:	f000 f8fa 	bl	c0d01d70 <cx_hash_sha256>
c0d01b7c:	ac07      	add	r4, sp, #28
c0d01b7e:	4620      	mov	r0, r4
c0d01b80:	f006 fb80 	bl	c0d08284 <setjmp>
c0d01b84:	85a0      	strh	r0, [r4, #44]	; 0x2c
c0d01b86:	0400      	lsls	r0, r0, #16
c0d01b88:	d007      	beq.n	c0d01b9a <crypto_sign+0x4a>
c0d01b8a:	a807      	add	r0, sp, #28
c0d01b8c:	2400      	movs	r4, #0
c0d01b8e:	8584      	strh	r4, [r0, #44]	; 0x2c
c0d01b90:	9811      	ldr	r0, [sp, #68]	; 0x44
c0d01b92:	f003 f83d 	bl	c0d04c10 <try_context_set>
c0d01b96:	250f      	movs	r5, #15
c0d01b98:	e02a      	b.n	c0d01bf0 <crypto_sign+0xa0>
c0d01b9a:	9605      	str	r6, [sp, #20]
c0d01b9c:	a807      	add	r0, sp, #28
c0d01b9e:	f003 f837 	bl	c0d04c10 <try_context_set>
c0d01ba2:	9011      	str	r0, [sp, #68]	; 0x44
c0d01ba4:	2000      	movs	r0, #0
c0d01ba6:	9000      	str	r0, [sp, #0]
c0d01ba8:	2421      	movs	r4, #33	; 0x21
c0d01baa:	491f      	ldr	r1, [pc, #124]	; (c0d01c28 <crypto_sign+0xd8>)
c0d01bac:	2205      	movs	r2, #5
c0d01bae:	ad13      	add	r5, sp, #76	; 0x4c
c0d01bb0:	4620      	mov	r0, r4
c0d01bb2:	462b      	mov	r3, r5
c0d01bb4:	f002 ffaa 	bl	c0d04b0c <os_perso_derive_node_bip32>
c0d01bb8:	2720      	movs	r7, #32
c0d01bba:	ab1b      	add	r3, sp, #108	; 0x6c
c0d01bbc:	4620      	mov	r0, r4
c0d01bbe:	4629      	mov	r1, r5
c0d01bc0:	463a      	mov	r2, r7
c0d01bc2:	f000 f8bd 	bl	c0d01d40 <cx_ecfp_init_private_key_no_throw>
c0d01bc6:	2800      	cmp	r0, #0
c0d01bc8:	d12b      	bne.n	c0d01c22 <crypto_sign+0xd2>
c0d01bca:	9e04      	ldr	r6, [sp, #16]
c0d01bcc:	962e      	str	r6, [sp, #184]	; 0xb8
c0d01bce:	a82d      	add	r0, sp, #180	; 0xb4
c0d01bd0:	9003      	str	r0, [sp, #12]
c0d01bd2:	a82e      	add	r0, sp, #184	; 0xb8
c0d01bd4:	9002      	str	r0, [sp, #8]
c0d01bd6:	9805      	ldr	r0, [sp, #20]
c0d01bd8:	9001      	str	r0, [sp, #4]
c0d01bda:	9700      	str	r7, [sp, #0]
c0d01bdc:	a81b      	add	r0, sp, #108	; 0x6c
c0d01bde:	4913      	ldr	r1, [pc, #76]	; (c0d01c2c <crypto_sign+0xdc>)
c0d01be0:	2503      	movs	r5, #3
c0d01be2:	ab25      	add	r3, sp, #148	; 0x94
c0d01be4:	462a      	mov	r2, r5
c0d01be6:	f000 f89f 	bl	c0d01d28 <cx_ecdsa_sign_no_throw>
c0d01bea:	2800      	cmp	r0, #0
c0d01bec:	d119      	bne.n	c0d01c22 <crypto_sign+0xd2>
c0d01bee:	9c2e      	ldr	r4, [sp, #184]	; 0xb8
c0d01bf0:	f003 f802 	bl	c0d04bf8 <try_context_get>
c0d01bf4:	a907      	add	r1, sp, #28
c0d01bf6:	4288      	cmp	r0, r1
c0d01bf8:	d102      	bne.n	c0d01c00 <crypto_sign+0xb0>
c0d01bfa:	9811      	ldr	r0, [sp, #68]	; 0x44
c0d01bfc:	f003 f808 	bl	c0d04c10 <try_context_set>
c0d01c00:	a81b      	add	r0, sp, #108	; 0x6c
c0d01c02:	2128      	movs	r1, #40	; 0x28
c0d01c04:	f006 fa1a 	bl	c0d0803c <explicit_bzero>
c0d01c08:	a813      	add	r0, sp, #76	; 0x4c
c0d01c0a:	2120      	movs	r1, #32
c0d01c0c:	f006 fa16 	bl	c0d0803c <explicit_bzero>
c0d01c10:	a807      	add	r0, sp, #28
c0d01c12:	8d80      	ldrh	r0, [r0, #44]	; 0x2c
c0d01c14:	2800      	cmp	r0, #0
c0d01c16:	d104      	bne.n	c0d01c22 <crypto_sign+0xd2>
c0d01c18:	9806      	ldr	r0, [sp, #24]
c0d01c1a:	8004      	strh	r4, [r0, #0]
c0d01c1c:	4628      	mov	r0, r5
c0d01c1e:	b02f      	add	sp, #188	; 0xbc
c0d01c20:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d01c22:	f000 fc6d 	bl	c0d02500 <os_longjmp>
c0d01c26:	46c0      	nop			; (mov r8, r8)
c0d01c28:	2000029c 	.word	0x2000029c
c0d01c2c:	00000601 	.word	0x00000601

c0d01c30 <extractHRP>:
c0d01c30:	b570      	push	{r4, r5, r6, lr}
c0d01c32:	460d      	mov	r5, r1
c0d01c34:	1c49      	adds	r1, r1, #1
c0d01c36:	4281      	cmp	r1, r0
c0d01c38:	d815      	bhi.n	c0d01c66 <extractHRP+0x36>
c0d01c3a:	4c0c      	ldr	r4, [pc, #48]	; (c0d01c6c <extractHRP+0x3c>)
c0d01c3c:	2153      	movs	r1, #83	; 0x53
c0d01c3e:	4620      	mov	r0, r4
c0d01c40:	f006 f9fc 	bl	c0d0803c <explicit_bzero>
c0d01c44:	480a      	ldr	r0, [pc, #40]	; (c0d01c70 <extractHRP+0x40>)
c0d01c46:	5d46      	ldrb	r6, [r0, r5]
c0d01c48:	490a      	ldr	r1, [pc, #40]	; (c0d01c74 <extractHRP+0x44>)
c0d01c4a:	700e      	strb	r6, [r1, #0]
c0d01c4c:	1e71      	subs	r1, r6, #1
c0d01c4e:	2953      	cmp	r1, #83	; 0x53
c0d01c50:	d209      	bcs.n	c0d01c66 <extractHRP+0x36>
c0d01c52:	1940      	adds	r0, r0, r5
c0d01c54:	1c41      	adds	r1, r0, #1
c0d01c56:	4620      	mov	r0, r4
c0d01c58:	4632      	mov	r2, r6
c0d01c5a:	f006 f9df 	bl	c0d0801c <__aeabi_memcpy>
c0d01c5e:	2000      	movs	r0, #0
c0d01c60:	55a0      	strb	r0, [r4, r6]
c0d01c62:	4630      	mov	r0, r6
c0d01c64:	bd70      	pop	{r4, r5, r6, pc}
c0d01c66:	4804      	ldr	r0, [pc, #16]	; (c0d01c78 <extractHRP+0x48>)
c0d01c68:	f000 fc4a 	bl	c0d02500 <os_longjmp>
c0d01c6c:	200002b0 	.word	0x200002b0
c0d01c70:	20000305 	.word	0x20000305
c0d01c74:	20000304 	.word	0x20000304
c0d01c78:	00006984 	.word	0x00006984

c0d01c7c <ripemd160_32>:
c0d01c7c:	b570      	push	{r4, r5, r6, lr}
c0d01c7e:	b09a      	sub	sp, #104	; 0x68
c0d01c80:	460c      	mov	r4, r1
c0d01c82:	4605      	mov	r5, r0
c0d01c84:	ae02      	add	r6, sp, #8
c0d01c86:	4630      	mov	r0, r6
c0d01c88:	f000 f878 	bl	c0d01d7c <cx_ripemd160_init_no_throw>
c0d01c8c:	2014      	movs	r0, #20
c0d01c8e:	9500      	str	r5, [sp, #0]
c0d01c90:	9001      	str	r0, [sp, #4]
c0d01c92:	2101      	movs	r1, #1
c0d01c94:	2320      	movs	r3, #32
c0d01c96:	4630      	mov	r0, r6
c0d01c98:	4622      	mov	r2, r4
c0d01c9a:	f000 f863 	bl	c0d01d64 <cx_hash_no_throw>
c0d01c9e:	2800      	cmp	r0, #0
c0d01ca0:	d104      	bne.n	c0d01cac <ripemd160_32+0x30>
c0d01ca2:	a802      	add	r0, sp, #8
c0d01ca4:	f000 f858 	bl	c0d01d58 <cx_hash_get_size>
c0d01ca8:	b01a      	add	sp, #104	; 0x68
c0d01caa:	bd70      	pop	{r4, r5, r6, pc}
c0d01cac:	f000 fc28 	bl	c0d02500 <os_longjmp>

c0d01cb0 <crypto_fillAddress>:
c0d01cb0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d01cb2:	b091      	sub	sp, #68	; 0x44
c0d01cb4:	2953      	cmp	r1, #83	; 0x53
c0d01cb6:	d201      	bcs.n	c0d01cbc <crypto_fillAddress+0xc>
c0d01cb8:	2706      	movs	r7, #6
c0d01cba:	e02d      	b.n	c0d01d18 <crypto_fillAddress+0x68>
c0d01cbc:	4614      	mov	r4, r2
c0d01cbe:	460e      	mov	r6, r1
c0d01cc0:	4605      	mov	r5, r0
c0d01cc2:	4817      	ldr	r0, [pc, #92]	; (c0d01d20 <crypto_fillAddress+0x70>)
c0d01cc4:	4629      	mov	r1, r5
c0d01cc6:	4632      	mov	r2, r6
c0d01cc8:	f7ff fed0 	bl	c0d01a6c <crypto_extractPublicKey>
c0d01ccc:	4607      	mov	r7, r0
c0d01cce:	2803      	cmp	r0, #3
c0d01cd0:	d122      	bne.n	c0d01d18 <crypto_fillAddress+0x68>
c0d01cd2:	9403      	str	r4, [sp, #12]
c0d01cd4:	2121      	movs	r1, #33	; 0x21
c0d01cd6:	ac09      	add	r4, sp, #36	; 0x24
c0d01cd8:	2320      	movs	r3, #32
c0d01cda:	4628      	mov	r0, r5
c0d01cdc:	4622      	mov	r2, r4
c0d01cde:	f000 f847 	bl	c0d01d70 <cx_hash_sha256>
c0d01ce2:	af04      	add	r7, sp, #16
c0d01ce4:	4638      	mov	r0, r7
c0d01ce6:	4621      	mov	r1, r4
c0d01ce8:	f7ff ffc8 	bl	c0d01c7c <ripemd160_32>
c0d01cec:	2001      	movs	r0, #1
c0d01cee:	2114      	movs	r1, #20
c0d01cf0:	9100      	str	r1, [sp, #0]
c0d01cf2:	9001      	str	r0, [sp, #4]
c0d01cf4:	9002      	str	r0, [sp, #8]
c0d01cf6:	3521      	adds	r5, #33	; 0x21
c0d01cf8:	3e21      	subs	r6, #33	; 0x21
c0d01cfa:	4a0a      	ldr	r2, [pc, #40]	; (c0d01d24 <crypto_fillAddress+0x74>)
c0d01cfc:	4628      	mov	r0, r5
c0d01cfe:	4631      	mov	r1, r6
c0d01d00:	463b      	mov	r3, r7
c0d01d02:	f7ff f81b 	bl	c0d00d3c <bech32EncodeFromBytes>
c0d01d06:	4607      	mov	r7, r0
c0d01d08:	2803      	cmp	r0, #3
c0d01d0a:	d105      	bne.n	c0d01d18 <crypto_fillAddress+0x68>
c0d01d0c:	4628      	mov	r0, r5
c0d01d0e:	f006 fb17 	bl	c0d08340 <strlen>
c0d01d12:	3021      	adds	r0, #33	; 0x21
c0d01d14:	9903      	ldr	r1, [sp, #12]
c0d01d16:	8008      	strh	r0, [r1, #0]
c0d01d18:	4638      	mov	r0, r7
c0d01d1a:	b011      	add	sp, #68	; 0x44
c0d01d1c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d01d1e:	46c0      	nop			; (mov r8, r8)
c0d01d20:	2000029c 	.word	0x2000029c
c0d01d24:	200002b0 	.word	0x200002b0

c0d01d28 <cx_ecdsa_sign_no_throw>:
c0d01d28:	b403      	push	{r0, r1}
c0d01d2a:	4801      	ldr	r0, [pc, #4]	; (c0d01d30 <cx_ecdsa_sign_no_throw+0x8>)
c0d01d2c:	e035      	b.n	c0d01d9a <cx_trampoline_helper>
c0d01d2e:	0000      	.short	0x0000
c0d01d30:	00000015 	.word	0x00000015

c0d01d34 <cx_ecfp_generate_pair_no_throw>:
c0d01d34:	b403      	push	{r0, r1}
c0d01d36:	4801      	ldr	r0, [pc, #4]	; (c0d01d3c <cx_ecfp_generate_pair_no_throw+0x8>)
c0d01d38:	e02f      	b.n	c0d01d9a <cx_trampoline_helper>
c0d01d3a:	0000      	.short	0x0000
c0d01d3c:	0000001b 	.word	0x0000001b

c0d01d40 <cx_ecfp_init_private_key_no_throw>:
c0d01d40:	b403      	push	{r0, r1}
c0d01d42:	4801      	ldr	r0, [pc, #4]	; (c0d01d48 <cx_ecfp_init_private_key_no_throw+0x8>)
c0d01d44:	e029      	b.n	c0d01d9a <cx_trampoline_helper>
c0d01d46:	0000      	.short	0x0000
c0d01d48:	0000001c 	.word	0x0000001c

c0d01d4c <cx_ecfp_init_public_key_no_throw>:
c0d01d4c:	b403      	push	{r0, r1}
c0d01d4e:	4801      	ldr	r0, [pc, #4]	; (c0d01d54 <cx_ecfp_init_public_key_no_throw+0x8>)
c0d01d50:	e023      	b.n	c0d01d9a <cx_trampoline_helper>
c0d01d52:	0000      	.short	0x0000
c0d01d54:	0000001d 	.word	0x0000001d

c0d01d58 <cx_hash_get_size>:
c0d01d58:	b403      	push	{r0, r1}
c0d01d5a:	4801      	ldr	r0, [pc, #4]	; (c0d01d60 <cx_hash_get_size+0x8>)
c0d01d5c:	e01d      	b.n	c0d01d9a <cx_trampoline_helper>
c0d01d5e:	0000      	.short	0x0000
c0d01d60:	0000002f 	.word	0x0000002f

c0d01d64 <cx_hash_no_throw>:
c0d01d64:	b403      	push	{r0, r1}
c0d01d66:	4801      	ldr	r0, [pc, #4]	; (c0d01d6c <cx_hash_no_throw+0x8>)
c0d01d68:	e017      	b.n	c0d01d9a <cx_trampoline_helper>
c0d01d6a:	0000      	.short	0x0000
c0d01d6c:	00000032 	.word	0x00000032

c0d01d70 <cx_hash_sha256>:
c0d01d70:	b403      	push	{r0, r1}
c0d01d72:	4801      	ldr	r0, [pc, #4]	; (c0d01d78 <cx_hash_sha256+0x8>)
c0d01d74:	e011      	b.n	c0d01d9a <cx_trampoline_helper>
c0d01d76:	0000      	.short	0x0000
c0d01d78:	00000033 	.word	0x00000033

c0d01d7c <cx_ripemd160_init_no_throw>:
c0d01d7c:	b403      	push	{r0, r1}
c0d01d7e:	4801      	ldr	r0, [pc, #4]	; (c0d01d84 <cx_ripemd160_init_no_throw+0x8>)
c0d01d80:	e00b      	b.n	c0d01d9a <cx_trampoline_helper>
c0d01d82:	0000      	.short	0x0000
c0d01d84:	00000056 	.word	0x00000056

c0d01d88 <cx_rng_no_throw>:
c0d01d88:	b403      	push	{r0, r1}
c0d01d8a:	4801      	ldr	r0, [pc, #4]	; (c0d01d90 <cx_rng_no_throw+0x8>)
c0d01d8c:	e005      	b.n	c0d01d9a <cx_trampoline_helper>
c0d01d8e:	0000      	.short	0x0000
c0d01d90:	00000058 	.word	0x00000058

c0d01d94 <cx_x448>:
c0d01d94:	b403      	push	{r0, r1}
c0d01d96:	4802      	ldr	r0, [pc, #8]	; (c0d01da0 <cx_trampoline_helper+0x6>)
c0d01d98:	e7ff      	b.n	c0d01d9a <cx_trampoline_helper>

c0d01d9a <cx_trampoline_helper>:
c0d01d9a:	4902      	ldr	r1, [pc, #8]	; (c0d01da4 <cx_trampoline_helper+0xa>)
c0d01d9c:	4708      	bx	r1
c0d01d9e:	0000      	.short	0x0000
c0d01da0:	00000071 	.word	0x00000071
c0d01da4:	00120001 	.word	0x00120001

c0d01da8 <jsmn_parse>:
c0d01da8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d01daa:	b090      	sub	sp, #64	; 0x40
c0d01dac:	460f      	mov	r7, r1
c0d01dae:	4605      	mov	r5, r0
c0d01db0:	8800      	ldrh	r0, [r0, #0]
c0d01db2:	886c      	ldrh	r4, [r5, #2]
c0d01db4:	2100      	movs	r1, #0
c0d01db6:	43ce      	mvns	r6, r1
c0d01db8:	4290      	cmp	r0, r2
c0d01dba:	940a      	str	r4, [sp, #40]	; 0x28
c0d01dbc:	d300      	bcc.n	c0d01dc0 <jsmn_parse+0x18>
c0d01dbe:	e1cb      	b.n	c0d02158 <jsmn_parse+0x3b0>
c0d01dc0:	9105      	str	r1, [sp, #20]
c0d01dc2:	920b      	str	r2, [sp, #44]	; 0x2c
c0d01dc4:	9915      	ldr	r1, [sp, #84]	; 0x54
c0d01dc6:	9104      	str	r1, [sp, #16]
c0d01dc8:	1d19      	adds	r1, r3, #4
c0d01dca:	9100      	str	r1, [sp, #0]
c0d01dcc:	2101      	movs	r1, #1
c0d01dce:	9102      	str	r1, [sp, #8]
c0d01dd0:	43c9      	mvns	r1, r1
c0d01dd2:	9103      	str	r1, [sp, #12]
c0d01dd4:	9407      	str	r4, [sp, #28]
c0d01dd6:	4621      	mov	r1, r4
c0d01dd8:	900e      	str	r0, [sp, #56]	; 0x38
c0d01dda:	9409      	str	r4, [sp, #36]	; 0x24
c0d01ddc:	930d      	str	r3, [sp, #52]	; 0x34
c0d01dde:	960c      	str	r6, [sp, #48]	; 0x30
c0d01de0:	9508      	str	r5, [sp, #32]
c0d01de2:	970f      	str	r7, [sp, #60]	; 0x3c
c0d01de4:	5c3f      	ldrb	r7, [r7, r0]
c0d01de6:	2f2b      	cmp	r7, #43	; 0x2b
c0d01de8:	dd0a      	ble.n	c0d01e00 <jsmn_parse+0x58>
c0d01dea:	2f5c      	cmp	r7, #92	; 0x5c
c0d01dec:	dc17      	bgt.n	c0d01e1e <jsmn_parse+0x76>
c0d01dee:	2f2c      	cmp	r7, #44	; 0x2c
c0d01df0:	d100      	bne.n	c0d01df4 <jsmn_parse+0x4c>
c0d01df2:	e0bc      	b.n	c0d01f6e <jsmn_parse+0x1c6>
c0d01df4:	2f3a      	cmp	r7, #58	; 0x3a
c0d01df6:	d100      	bne.n	c0d01dfa <jsmn_parse+0x52>
c0d01df8:	e0e2      	b.n	c0d01fc0 <jsmn_parse+0x218>
c0d01dfa:	2f5b      	cmp	r7, #91	; 0x5b
c0d01dfc:	d035      	beq.n	c0d01e6a <jsmn_parse+0xc2>
c0d01dfe:	e0f4      	b.n	c0d01fea <jsmn_parse+0x242>
c0d01e00:	4639      	mov	r1, r7
c0d01e02:	3909      	subs	r1, #9
c0d01e04:	2919      	cmp	r1, #25
c0d01e06:	d900      	bls.n	c0d01e0a <jsmn_parse+0x62>
c0d01e08:	e0eb      	b.n	c0d01fe2 <jsmn_parse+0x23a>
c0d01e0a:	462c      	mov	r4, r5
c0d01e0c:	2501      	movs	r5, #1
c0d01e0e:	462a      	mov	r2, r5
c0d01e10:	408a      	lsls	r2, r1
c0d01e12:	48ea      	ldr	r0, [pc, #936]	; (c0d021bc <jsmn_parse+0x414>)
c0d01e14:	4202      	tst	r2, r0
c0d01e16:	d04d      	beq.n	c0d01eb4 <jsmn_parse+0x10c>
c0d01e18:	9f0f      	ldr	r7, [sp, #60]	; 0x3c
c0d01e1a:	4625      	mov	r5, r4
c0d01e1c:	e193      	b.n	c0d02146 <jsmn_parse+0x39e>
c0d01e1e:	2f5d      	cmp	r7, #93	; 0x5d
c0d01e20:	d004      	beq.n	c0d01e2c <jsmn_parse+0x84>
c0d01e22:	2f7b      	cmp	r7, #123	; 0x7b
c0d01e24:	d021      	beq.n	c0d01e6a <jsmn_parse+0xc2>
c0d01e26:	2f7d      	cmp	r7, #125	; 0x7d
c0d01e28:	d000      	beq.n	c0d01e2c <jsmn_parse+0x84>
c0d01e2a:	e0de      	b.n	c0d01fea <jsmn_parse+0x242>
c0d01e2c:	2b00      	cmp	r3, #0
c0d01e2e:	d100      	bne.n	c0d01e32 <jsmn_parse+0x8a>
c0d01e30:	e0c9      	b.n	c0d01fc6 <jsmn_parse+0x21e>
c0d01e32:	2f7d      	cmp	r7, #125	; 0x7d
c0d01e34:	9c02      	ldr	r4, [sp, #8]
c0d01e36:	d000      	beq.n	c0d01e3a <jsmn_parse+0x92>
c0d01e38:	2402      	movs	r4, #2
c0d01e3a:	9a0a      	ldr	r2, [sp, #40]	; 0x28
c0d01e3c:	1e50      	subs	r0, r2, #1
c0d01e3e:	b201      	sxth	r1, r0
c0d01e40:	42b1      	cmp	r1, r6
c0d01e42:	dc00      	bgt.n	c0d01e46 <jsmn_parse+0x9e>
c0d01e44:	e10f      	b.n	c0d02066 <jsmn_parse+0x2be>
c0d01e46:	b288      	uxth	r0, r1
c0d01e48:	00c2      	lsls	r2, r0, #3
c0d01e4a:	189f      	adds	r7, r3, r2
c0d01e4c:	887d      	ldrh	r5, [r7, #2]
c0d01e4e:	b2b6      	uxth	r6, r6
c0d01e50:	42b5      	cmp	r5, r6
c0d01e52:	d003      	beq.n	c0d01e5c <jsmn_parse+0xb4>
c0d01e54:	88bd      	ldrh	r5, [r7, #4]
c0d01e56:	42b5      	cmp	r5, r6
c0d01e58:	d100      	bne.n	c0d01e5c <jsmn_parse+0xb4>
c0d01e5a:	e11b      	b.n	c0d02094 <jsmn_parse+0x2ec>
c0d01e5c:	1e48      	subs	r0, r1, #1
c0d01e5e:	b201      	sxth	r1, r0
c0d01e60:	9e0c      	ldr	r6, [sp, #48]	; 0x30
c0d01e62:	42b1      	cmp	r1, r6
c0d01e64:	9b0d      	ldr	r3, [sp, #52]	; 0x34
c0d01e66:	dcee      	bgt.n	c0d01e46 <jsmn_parse+0x9e>
c0d01e68:	e1a0      	b.n	c0d021ac <jsmn_parse+0x404>
c0d01e6a:	9809      	ldr	r0, [sp, #36]	; 0x24
c0d01e6c:	1c40      	adds	r0, r0, #1
c0d01e6e:	9009      	str	r0, [sp, #36]	; 0x24
c0d01e70:	2b00      	cmp	r3, #0
c0d01e72:	d100      	bne.n	c0d01e76 <jsmn_parse+0xce>
c0d01e74:	e0a7      	b.n	c0d01fc6 <jsmn_parse+0x21e>
c0d01e76:	990a      	ldr	r1, [sp, #40]	; 0x28
c0d01e78:	b288      	uxth	r0, r1
c0d01e7a:	9a04      	ldr	r2, [sp, #16]
c0d01e7c:	4290      	cmp	r0, r2
c0d01e7e:	d300      	bcc.n	c0d01e82 <jsmn_parse+0xda>
c0d01e80:	e199      	b.n	c0d021b6 <jsmn_parse+0x40e>
c0d01e82:	1c49      	adds	r1, r1, #1
c0d01e84:	9107      	str	r1, [sp, #28]
c0d01e86:	8069      	strh	r1, [r5, #2]
c0d01e88:	00c0      	lsls	r0, r0, #3
c0d01e8a:	1819      	adds	r1, r3, r0
c0d01e8c:	808e      	strh	r6, [r1, #4]
c0d01e8e:	9a05      	ldr	r2, [sp, #20]
c0d01e90:	80ca      	strh	r2, [r1, #6]
c0d01e92:	804e      	strh	r6, [r1, #2]
c0d01e94:	88aa      	ldrh	r2, [r5, #4]
c0d01e96:	b2b6      	uxth	r6, r6
c0d01e98:	42b2      	cmp	r2, r6
c0d01e9a:	d005      	beq.n	c0d01ea8 <jsmn_parse+0x100>
c0d01e9c:	b212      	sxth	r2, r2
c0d01e9e:	00d2      	lsls	r2, r2, #3
c0d01ea0:	189a      	adds	r2, r3, r2
c0d01ea2:	88d6      	ldrh	r6, [r2, #6]
c0d01ea4:	1c76      	adds	r6, r6, #1
c0d01ea6:	80d6      	strh	r6, [r2, #6]
c0d01ea8:	1c89      	adds	r1, r1, #2
c0d01eaa:	2f7b      	cmp	r7, #123	; 0x7b
c0d01eac:	d100      	bne.n	c0d01eb0 <jsmn_parse+0x108>
c0d01eae:	e08c      	b.n	c0d01fca <jsmn_parse+0x222>
c0d01eb0:	2202      	movs	r2, #2
c0d01eb2:	e08b      	b.n	c0d01fcc <jsmn_parse+0x224>
c0d01eb4:	9506      	str	r5, [sp, #24]
c0d01eb6:	2919      	cmp	r1, #25
c0d01eb8:	4625      	mov	r5, r4
c0d01eba:	d000      	beq.n	c0d01ebe <jsmn_parse+0x116>
c0d01ebc:	e091      	b.n	c0d01fe2 <jsmn_parse+0x23a>
c0d01ebe:	980e      	ldr	r0, [sp, #56]	; 0x38
c0d01ec0:	1c40      	adds	r0, r0, #1
c0d01ec2:	8028      	strh	r0, [r5, #0]
c0d01ec4:	9001      	str	r0, [sp, #4]
c0d01ec6:	b282      	uxth	r2, r0
c0d01ec8:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
c0d01eca:	429a      	cmp	r2, r3
c0d01ecc:	d300      	bcc.n	c0d01ed0 <jsmn_parse+0x128>
c0d01ece:	e15b      	b.n	c0d02188 <jsmn_parse+0x3e0>
c0d01ed0:	9f01      	ldr	r7, [sp, #4]
c0d01ed2:	9e0e      	ldr	r6, [sp, #56]	; 0x38
c0d01ed4:	4631      	mov	r1, r6
c0d01ed6:	9e0f      	ldr	r6, [sp, #60]	; 0x3c
c0d01ed8:	5cb6      	ldrb	r6, [r6, r2]
c0d01eda:	2e5c      	cmp	r6, #92	; 0x5c
c0d01edc:	d007      	beq.n	c0d01eee <jsmn_parse+0x146>
c0d01ede:	2e00      	cmp	r6, #0
c0d01ee0:	d100      	bne.n	c0d01ee4 <jsmn_parse+0x13c>
c0d01ee2:	e151      	b.n	c0d02188 <jsmn_parse+0x3e0>
c0d01ee4:	2e22      	cmp	r6, #34	; 0x22
c0d01ee6:	d100      	bne.n	c0d01eea <jsmn_parse+0x142>
c0d01ee8:	e0f9      	b.n	c0d020de <jsmn_parse+0x336>
c0d01eea:	463e      	mov	r6, r7
c0d01eec:	e012      	b.n	c0d01f14 <jsmn_parse+0x16c>
c0d01eee:	1c52      	adds	r2, r2, #1
c0d01ef0:	429a      	cmp	r2, r3
c0d01ef2:	463e      	mov	r6, r7
c0d01ef4:	d20e      	bcs.n	c0d01f14 <jsmn_parse+0x16c>
c0d01ef6:	1c8e      	adds	r6, r1, #2
c0d01ef8:	802e      	strh	r6, [r5, #0]
c0d01efa:	b2b2      	uxth	r2, r6
c0d01efc:	9f0f      	ldr	r7, [sp, #60]	; 0x3c
c0d01efe:	5cba      	ldrb	r2, [r7, r2]
c0d01f00:	4617      	mov	r7, r2
c0d01f02:	3f5c      	subs	r7, #92	; 0x5c
c0d01f04:	2f19      	cmp	r7, #25
c0d01f06:	d82d      	bhi.n	c0d01f64 <jsmn_parse+0x1bc>
c0d01f08:	9d06      	ldr	r5, [sp, #24]
c0d01f0a:	40bd      	lsls	r5, r7
c0d01f0c:	4cac      	ldr	r4, [pc, #688]	; (c0d021c0 <jsmn_parse+0x418>)
c0d01f0e:	4225      	tst	r5, r4
c0d01f10:	d006      	beq.n	c0d01f20 <jsmn_parse+0x178>
c0d01f12:	9d08      	ldr	r5, [sp, #32]
c0d01f14:	1c77      	adds	r7, r6, #1
c0d01f16:	802f      	strh	r7, [r5, #0]
c0d01f18:	b2ba      	uxth	r2, r7
c0d01f1a:	429a      	cmp	r2, r3
c0d01f1c:	d3da      	bcc.n	c0d01ed4 <jsmn_parse+0x12c>
c0d01f1e:	e133      	b.n	c0d02188 <jsmn_parse+0x3e0>
c0d01f20:	2f19      	cmp	r7, #25
c0d01f22:	9d08      	ldr	r5, [sp, #32]
c0d01f24:	d11e      	bne.n	c0d01f64 <jsmn_parse+0x1bc>
c0d01f26:	1cce      	adds	r6, r1, #3
c0d01f28:	802e      	strh	r6, [r5, #0]
c0d01f2a:	9a05      	ldr	r2, [sp, #20]
c0d01f2c:	9f0f      	ldr	r7, [sp, #60]	; 0x3c
c0d01f2e:	4611      	mov	r1, r2
c0d01f30:	b2b2      	uxth	r2, r6
c0d01f32:	429a      	cmp	r2, r3
c0d01f34:	d214      	bcs.n	c0d01f60 <jsmn_parse+0x1b8>
c0d01f36:	5cba      	ldrb	r2, [r7, r2]
c0d01f38:	2a00      	cmp	r2, #0
c0d01f3a:	d011      	beq.n	c0d01f60 <jsmn_parse+0x1b8>
c0d01f3c:	4615      	mov	r5, r2
c0d01f3e:	3d30      	subs	r5, #48	; 0x30
c0d01f40:	2d0a      	cmp	r5, #10
c0d01f42:	d307      	bcc.n	c0d01f54 <jsmn_parse+0x1ac>
c0d01f44:	4615      	mov	r5, r2
c0d01f46:	3d41      	subs	r5, #65	; 0x41
c0d01f48:	2d06      	cmp	r5, #6
c0d01f4a:	d303      	bcc.n	c0d01f54 <jsmn_parse+0x1ac>
c0d01f4c:	3a61      	subs	r2, #97	; 0x61
c0d01f4e:	2a06      	cmp	r2, #6
c0d01f50:	d300      	bcc.n	c0d01f54 <jsmn_parse+0x1ac>
c0d01f52:	e128      	b.n	c0d021a6 <jsmn_parse+0x3fe>
c0d01f54:	1c76      	adds	r6, r6, #1
c0d01f56:	9d08      	ldr	r5, [sp, #32]
c0d01f58:	802e      	strh	r6, [r5, #0]
c0d01f5a:	1c4a      	adds	r2, r1, #1
c0d01f5c:	2903      	cmp	r1, #3
c0d01f5e:	d3e6      	bcc.n	c0d01f2e <jsmn_parse+0x186>
c0d01f60:	1e76      	subs	r6, r6, #1
c0d01f62:	e7d7      	b.n	c0d01f14 <jsmn_parse+0x16c>
c0d01f64:	2a22      	cmp	r2, #34	; 0x22
c0d01f66:	d0d5      	beq.n	c0d01f14 <jsmn_parse+0x16c>
c0d01f68:	2a2f      	cmp	r2, #47	; 0x2f
c0d01f6a:	d0d3      	beq.n	c0d01f14 <jsmn_parse+0x16c>
c0d01f6c:	e118      	b.n	c0d021a0 <jsmn_parse+0x3f8>
c0d01f6e:	2b00      	cmp	r3, #0
c0d01f70:	9f0f      	ldr	r7, [sp, #60]	; 0x3c
c0d01f72:	d100      	bne.n	c0d01f76 <jsmn_parse+0x1ce>
c0d01f74:	e0e7      	b.n	c0d02146 <jsmn_parse+0x39e>
c0d01f76:	88a9      	ldrh	r1, [r5, #4]
c0d01f78:	b2b0      	uxth	r0, r6
c0d01f7a:	4281      	cmp	r1, r0
c0d01f7c:	d100      	bne.n	c0d01f80 <jsmn_parse+0x1d8>
c0d01f7e:	e0e2      	b.n	c0d02146 <jsmn_parse+0x39e>
c0d01f80:	b209      	sxth	r1, r1
c0d01f82:	00c9      	lsls	r1, r1, #3
c0d01f84:	5c59      	ldrb	r1, [r3, r1]
c0d01f86:	1e49      	subs	r1, r1, #1
c0d01f88:	2902      	cmp	r1, #2
c0d01f8a:	d200      	bcs.n	c0d01f8e <jsmn_parse+0x1e6>
c0d01f8c:	e0db      	b.n	c0d02146 <jsmn_parse+0x39e>
c0d01f8e:	9907      	ldr	r1, [sp, #28]
c0d01f90:	1e49      	subs	r1, r1, #1
c0d01f92:	b209      	sxth	r1, r1
c0d01f94:	42b1      	cmp	r1, r6
c0d01f96:	dc00      	bgt.n	c0d01f9a <jsmn_parse+0x1f2>
c0d01f98:	e0d5      	b.n	c0d02146 <jsmn_parse+0x39e>
c0d01f9a:	b28a      	uxth	r2, r1
c0d01f9c:	00d2      	lsls	r2, r2, #3
c0d01f9e:	5c9d      	ldrb	r5, [r3, r2]
c0d01fa0:	1e6d      	subs	r5, r5, #1
c0d01fa2:	2d01      	cmp	r5, #1
c0d01fa4:	d807      	bhi.n	c0d01fb6 <jsmn_parse+0x20e>
c0d01fa6:	189a      	adds	r2, r3, r2
c0d01fa8:	8855      	ldrh	r5, [r2, #2]
c0d01faa:	4285      	cmp	r5, r0
c0d01fac:	d003      	beq.n	c0d01fb6 <jsmn_parse+0x20e>
c0d01fae:	8892      	ldrh	r2, [r2, #4]
c0d01fb0:	4282      	cmp	r2, r0
c0d01fb2:	d100      	bne.n	c0d01fb6 <jsmn_parse+0x20e>
c0d01fb4:	e0c5      	b.n	c0d02142 <jsmn_parse+0x39a>
c0d01fb6:	1e49      	subs	r1, r1, #1
c0d01fb8:	b209      	sxth	r1, r1
c0d01fba:	42b1      	cmp	r1, r6
c0d01fbc:	dced      	bgt.n	c0d01f9a <jsmn_parse+0x1f2>
c0d01fbe:	e08c      	b.n	c0d020da <jsmn_parse+0x332>
c0d01fc0:	9807      	ldr	r0, [sp, #28]
c0d01fc2:	1e40      	subs	r0, r0, #1
c0d01fc4:	80a8      	strh	r0, [r5, #4]
c0d01fc6:	9f0f      	ldr	r7, [sp, #60]	; 0x3c
c0d01fc8:	e0bd      	b.n	c0d02146 <jsmn_parse+0x39e>
c0d01fca:	2201      	movs	r2, #1
c0d01fcc:	9b0d      	ldr	r3, [sp, #52]	; 0x34
c0d01fce:	9e0c      	ldr	r6, [sp, #48]	; 0x30
c0d01fd0:	9f0f      	ldr	r7, [sp, #60]	; 0x3c
c0d01fd2:	541a      	strb	r2, [r3, r0]
c0d01fd4:	980e      	ldr	r0, [sp, #56]	; 0x38
c0d01fd6:	8008      	strh	r0, [r1, #0]
c0d01fd8:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d01fda:	80a8      	strh	r0, [r5, #4]
c0d01fdc:	9807      	ldr	r0, [sp, #28]
c0d01fde:	900a      	str	r0, [sp, #40]	; 0x28
c0d01fe0:	e0b1      	b.n	c0d02146 <jsmn_parse+0x39e>
c0d01fe2:	2f00      	cmp	r7, #0
c0d01fe4:	980e      	ldr	r0, [sp, #56]	; 0x38
c0d01fe6:	d101      	bne.n	c0d01fec <jsmn_parse+0x244>
c0d01fe8:	e0b7      	b.n	c0d0215a <jsmn_parse+0x3b2>
c0d01fea:	980e      	ldr	r0, [sp, #56]	; 0x38
c0d01fec:	2f1f      	cmp	r7, #31
c0d01fee:	dd0d      	ble.n	c0d0200c <jsmn_parse+0x264>
c0d01ff0:	4639      	mov	r1, r7
c0d01ff2:	3920      	subs	r1, #32
c0d01ff4:	291a      	cmp	r1, #26
c0d01ff6:	d804      	bhi.n	c0d02002 <jsmn_parse+0x25a>
c0d01ff8:	2201      	movs	r2, #1
c0d01ffa:	408a      	lsls	r2, r1
c0d01ffc:	4972      	ldr	r1, [pc, #456]	; (c0d021c8 <jsmn_parse+0x420>)
c0d01ffe:	420a      	tst	r2, r1
c0d02000:	d118      	bne.n	c0d02034 <jsmn_parse+0x28c>
c0d02002:	2f5d      	cmp	r7, #93	; 0x5d
c0d02004:	d016      	beq.n	c0d02034 <jsmn_parse+0x28c>
c0d02006:	2f7d      	cmp	r7, #125	; 0x7d
c0d02008:	d107      	bne.n	c0d0201a <jsmn_parse+0x272>
c0d0200a:	e013      	b.n	c0d02034 <jsmn_parse+0x28c>
c0d0200c:	2f0d      	cmp	r7, #13
c0d0200e:	d804      	bhi.n	c0d0201a <jsmn_parse+0x272>
c0d02010:	2101      	movs	r1, #1
c0d02012:	40b9      	lsls	r1, r7
c0d02014:	4a6b      	ldr	r2, [pc, #428]	; (c0d021c4 <jsmn_parse+0x41c>)
c0d02016:	4211      	tst	r1, r2
c0d02018:	d10c      	bne.n	c0d02034 <jsmn_parse+0x28c>
c0d0201a:	3f20      	subs	r7, #32
c0d0201c:	2f5e      	cmp	r7, #94	; 0x5e
c0d0201e:	d900      	bls.n	c0d02022 <jsmn_parse+0x27a>
c0d02020:	e0b7      	b.n	c0d02192 <jsmn_parse+0x3ea>
c0d02022:	1c40      	adds	r0, r0, #1
c0d02024:	8028      	strh	r0, [r5, #0]
c0d02026:	b281      	uxth	r1, r0
c0d02028:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
c0d0202a:	4291      	cmp	r1, r2
c0d0202c:	d202      	bcs.n	c0d02034 <jsmn_parse+0x28c>
c0d0202e:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
c0d02030:	5c57      	ldrb	r7, [r2, r1]
c0d02032:	e7db      	b.n	c0d01fec <jsmn_parse+0x244>
c0d02034:	9f0f      	ldr	r7, [sp, #60]	; 0x3c
c0d02036:	2b00      	cmp	r3, #0
c0d02038:	d01a      	beq.n	c0d02070 <jsmn_parse+0x2c8>
c0d0203a:	9f0a      	ldr	r7, [sp, #40]	; 0x28
c0d0203c:	b2b9      	uxth	r1, r7
c0d0203e:	9a04      	ldr	r2, [sp, #16]
c0d02040:	4291      	cmp	r1, r2
c0d02042:	d300      	bcc.n	c0d02046 <jsmn_parse+0x29e>
c0d02044:	e0a9      	b.n	c0d0219a <jsmn_parse+0x3f2>
c0d02046:	00c9      	lsls	r1, r1, #3
c0d02048:	2204      	movs	r2, #4
c0d0204a:	545a      	strb	r2, [r3, r1]
c0d0204c:	1c7f      	adds	r7, r7, #1
c0d0204e:	806f      	strh	r7, [r5, #2]
c0d02050:	1859      	adds	r1, r3, r1
c0d02052:	9a05      	ldr	r2, [sp, #20]
c0d02054:	80ca      	strh	r2, [r1, #6]
c0d02056:	8088      	strh	r0, [r1, #4]
c0d02058:	9a0e      	ldr	r2, [sp, #56]	; 0x38
c0d0205a:	804a      	strh	r2, [r1, #2]
c0d0205c:	970a      	str	r7, [sp, #40]	; 0x28
c0d0205e:	9707      	str	r7, [sp, #28]
c0d02060:	9909      	ldr	r1, [sp, #36]	; 0x24
c0d02062:	9f0f      	ldr	r7, [sp, #60]	; 0x3c
c0d02064:	e005      	b.n	c0d02072 <jsmn_parse+0x2ca>
c0d02066:	0410      	lsls	r0, r2, #16
c0d02068:	9207      	str	r2, [sp, #28]
c0d0206a:	9f0f      	ldr	r7, [sp, #60]	; 0x3c
c0d0206c:	d16b      	bne.n	c0d02146 <jsmn_parse+0x39e>
c0d0206e:	e09d      	b.n	c0d021ac <jsmn_parse+0x404>
c0d02070:	9909      	ldr	r1, [sp, #36]	; 0x24
c0d02072:	1c49      	adds	r1, r1, #1
c0d02074:	9109      	str	r1, [sp, #36]	; 0x24
c0d02076:	1e40      	subs	r0, r0, #1
c0d02078:	900e      	str	r0, [sp, #56]	; 0x38
c0d0207a:	2b00      	cmp	r3, #0
c0d0207c:	d063      	beq.n	c0d02146 <jsmn_parse+0x39e>
c0d0207e:	88a8      	ldrh	r0, [r5, #4]
c0d02080:	b2b1      	uxth	r1, r6
c0d02082:	4288      	cmp	r0, r1
c0d02084:	d05f      	beq.n	c0d02146 <jsmn_parse+0x39e>
c0d02086:	b200      	sxth	r0, r0
c0d02088:	00c0      	lsls	r0, r0, #3
c0d0208a:	1818      	adds	r0, r3, r0
c0d0208c:	88c1      	ldrh	r1, [r0, #6]
c0d0208e:	1c49      	adds	r1, r1, #1
c0d02090:	80c1      	strh	r1, [r0, #6]
c0d02092:	e058      	b.n	c0d02146 <jsmn_parse+0x39e>
c0d02094:	990d      	ldr	r1, [sp, #52]	; 0x34
c0d02096:	5c89      	ldrb	r1, [r1, r2]
c0d02098:	428c      	cmp	r4, r1
c0d0209a:	d000      	beq.n	c0d0209e <jsmn_parse+0x2f6>
c0d0209c:	e086      	b.n	c0d021ac <jsmn_parse+0x404>
c0d0209e:	1d39      	adds	r1, r7, #4
c0d020a0:	9b0c      	ldr	r3, [sp, #48]	; 0x30
c0d020a2:	9d08      	ldr	r5, [sp, #32]
c0d020a4:	80ab      	strh	r3, [r5, #4]
c0d020a6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
c0d020a8:	1c5d      	adds	r5, r3, #1
c0d020aa:	800d      	strh	r5, [r1, #0]
c0d020ac:	9900      	ldr	r1, [sp, #0]
c0d020ae:	1889      	adds	r1, r1, r2
c0d020b0:	9b03      	ldr	r3, [sp, #12]
c0d020b2:	9f0f      	ldr	r7, [sp, #60]	; 0x3c
c0d020b4:	005a      	lsls	r2, r3, #1
c0d020b6:	1852      	adds	r2, r2, r1
c0d020b8:	8852      	ldrh	r2, [r2, #2]
c0d020ba:	42b2      	cmp	r2, r6
c0d020bc:	d002      	beq.n	c0d020c4 <jsmn_parse+0x31c>
c0d020be:	880a      	ldrh	r2, [r1, #0]
c0d020c0:	42b2      	cmp	r2, r6
c0d020c2:	d023      	beq.n	c0d0210c <jsmn_parse+0x364>
c0d020c4:	00da      	lsls	r2, r3, #3
c0d020c6:	1851      	adds	r1, r2, r1
c0d020c8:	3108      	adds	r1, #8
c0d020ca:	1e42      	subs	r2, r0, #1
c0d020cc:	2800      	cmp	r0, #0
c0d020ce:	4610      	mov	r0, r2
c0d020d0:	dcf0      	bgt.n	c0d020b4 <jsmn_parse+0x30c>
c0d020d2:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d020d4:	9007      	str	r0, [sp, #28]
c0d020d6:	9b0d      	ldr	r3, [sp, #52]	; 0x34
c0d020d8:	9e0c      	ldr	r6, [sp, #48]	; 0x30
c0d020da:	9d08      	ldr	r5, [sp, #32]
c0d020dc:	e033      	b.n	c0d02146 <jsmn_parse+0x39e>
c0d020de:	9b0d      	ldr	r3, [sp, #52]	; 0x34
c0d020e0:	2b00      	cmp	r3, #0
c0d020e2:	d01a      	beq.n	c0d0211a <jsmn_parse+0x372>
c0d020e4:	9a07      	ldr	r2, [sp, #28]
c0d020e6:	b290      	uxth	r0, r2
c0d020e8:	9904      	ldr	r1, [sp, #16]
c0d020ea:	4288      	cmp	r0, r1
c0d020ec:	d261      	bcs.n	c0d021b2 <jsmn_parse+0x40a>
c0d020ee:	00c0      	lsls	r0, r0, #3
c0d020f0:	2103      	movs	r1, #3
c0d020f2:	5419      	strb	r1, [r3, r0]
c0d020f4:	1c54      	adds	r4, r2, #1
c0d020f6:	806c      	strh	r4, [r5, #2]
c0d020f8:	1818      	adds	r0, r3, r0
c0d020fa:	9905      	ldr	r1, [sp, #20]
c0d020fc:	80c1      	strh	r1, [r0, #6]
c0d020fe:	8087      	strh	r7, [r0, #4]
c0d02100:	9901      	ldr	r1, [sp, #4]
c0d02102:	8041      	strh	r1, [r0, #2]
c0d02104:	9407      	str	r4, [sp, #28]
c0d02106:	9e0c      	ldr	r6, [sp, #48]	; 0x30
c0d02108:	9a09      	ldr	r2, [sp, #36]	; 0x24
c0d0210a:	e009      	b.n	c0d02120 <jsmn_parse+0x378>
c0d0210c:	9d08      	ldr	r5, [sp, #32]
c0d0210e:	80a8      	strh	r0, [r5, #4]
c0d02110:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d02112:	9007      	str	r0, [sp, #28]
c0d02114:	9b0d      	ldr	r3, [sp, #52]	; 0x34
c0d02116:	9e0c      	ldr	r6, [sp, #48]	; 0x30
c0d02118:	e015      	b.n	c0d02146 <jsmn_parse+0x39e>
c0d0211a:	9e0c      	ldr	r6, [sp, #48]	; 0x30
c0d0211c:	9a09      	ldr	r2, [sp, #36]	; 0x24
c0d0211e:	9c0a      	ldr	r4, [sp, #40]	; 0x28
c0d02120:	1c52      	adds	r2, r2, #1
c0d02122:	2b00      	cmp	r3, #0
c0d02124:	9209      	str	r2, [sp, #36]	; 0x24
c0d02126:	940a      	str	r4, [sp, #40]	; 0x28
c0d02128:	d009      	beq.n	c0d0213e <jsmn_parse+0x396>
c0d0212a:	88a8      	ldrh	r0, [r5, #4]
c0d0212c:	b2b1      	uxth	r1, r6
c0d0212e:	4288      	cmp	r0, r1
c0d02130:	d005      	beq.n	c0d0213e <jsmn_parse+0x396>
c0d02132:	b200      	sxth	r0, r0
c0d02134:	00c0      	lsls	r0, r0, #3
c0d02136:	1818      	adds	r0, r3, r0
c0d02138:	88c1      	ldrh	r1, [r0, #6]
c0d0213a:	1c49      	adds	r1, r1, #1
c0d0213c:	80c1      	strh	r1, [r0, #6]
c0d0213e:	970e      	str	r7, [sp, #56]	; 0x38
c0d02140:	e741      	b.n	c0d01fc6 <jsmn_parse+0x21e>
c0d02142:	9d08      	ldr	r5, [sp, #32]
c0d02144:	80a9      	strh	r1, [r5, #4]
c0d02146:	980e      	ldr	r0, [sp, #56]	; 0x38
c0d02148:	1c40      	adds	r0, r0, #1
c0d0214a:	8028      	strh	r0, [r5, #0]
c0d0214c:	900e      	str	r0, [sp, #56]	; 0x38
c0d0214e:	b280      	uxth	r0, r0
c0d02150:	990b      	ldr	r1, [sp, #44]	; 0x2c
c0d02152:	4288      	cmp	r0, r1
c0d02154:	d201      	bcs.n	c0d0215a <jsmn_parse+0x3b2>
c0d02156:	e645      	b.n	c0d01de4 <jsmn_parse+0x3c>
c0d02158:	9409      	str	r4, [sp, #36]	; 0x24
c0d0215a:	2b00      	cmp	r3, #0
c0d0215c:	d011      	beq.n	c0d02182 <jsmn_parse+0x3da>
c0d0215e:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d02160:	1e40      	subs	r0, r0, #1
c0d02162:	b200      	sxth	r0, r0
c0d02164:	42b0      	cmp	r0, r6
c0d02166:	dd0c      	ble.n	c0d02182 <jsmn_parse+0x3da>
c0d02168:	b281      	uxth	r1, r0
c0d0216a:	00c9      	lsls	r1, r1, #3
c0d0216c:	1859      	adds	r1, r3, r1
c0d0216e:	884c      	ldrh	r4, [r1, #2]
c0d02170:	b2b2      	uxth	r2, r6
c0d02172:	4294      	cmp	r4, r2
c0d02174:	d0f4      	beq.n	c0d02160 <jsmn_parse+0x3b8>
c0d02176:	8889      	ldrh	r1, [r1, #4]
c0d02178:	4291      	cmp	r1, r2
c0d0217a:	d1f1      	bne.n	c0d02160 <jsmn_parse+0x3b8>
c0d0217c:	2001      	movs	r0, #1
c0d0217e:	43c0      	mvns	r0, r0
c0d02180:	e005      	b.n	c0d0218e <jsmn_parse+0x3e6>
c0d02182:	9809      	ldr	r0, [sp, #36]	; 0x24
c0d02184:	b200      	sxth	r0, r0
c0d02186:	e012      	b.n	c0d021ae <jsmn_parse+0x406>
c0d02188:	980e      	ldr	r0, [sp, #56]	; 0x38
c0d0218a:	8028      	strh	r0, [r5, #0]
c0d0218c:	9803      	ldr	r0, [sp, #12]
c0d0218e:	1e40      	subs	r0, r0, #1
c0d02190:	e00d      	b.n	c0d021ae <jsmn_parse+0x406>
c0d02192:	9803      	ldr	r0, [sp, #12]
c0d02194:	990e      	ldr	r1, [sp, #56]	; 0x38
c0d02196:	8029      	strh	r1, [r5, #0]
c0d02198:	e009      	b.n	c0d021ae <jsmn_parse+0x406>
c0d0219a:	9803      	ldr	r0, [sp, #12]
c0d0219c:	1c40      	adds	r0, r0, #1
c0d0219e:	e7f9      	b.n	c0d02194 <jsmn_parse+0x3ec>
c0d021a0:	980e      	ldr	r0, [sp, #56]	; 0x38
c0d021a2:	8028      	strh	r0, [r5, #0]
c0d021a4:	e002      	b.n	c0d021ac <jsmn_parse+0x404>
c0d021a6:	9908      	ldr	r1, [sp, #32]
c0d021a8:	980e      	ldr	r0, [sp, #56]	; 0x38
c0d021aa:	8008      	strh	r0, [r1, #0]
c0d021ac:	9803      	ldr	r0, [sp, #12]
c0d021ae:	b010      	add	sp, #64	; 0x40
c0d021b0:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d021b2:	980e      	ldr	r0, [sp, #56]	; 0x38
c0d021b4:	8028      	strh	r0, [r5, #0]
c0d021b6:	9803      	ldr	r0, [sp, #12]
c0d021b8:	1c40      	adds	r0, r0, #1
c0d021ba:	e7f8      	b.n	c0d021ae <jsmn_parse+0x406>
c0d021bc:	00800013 	.word	0x00800013
c0d021c0:	01440441 	.word	0x01440441
c0d021c4:	00002601 	.word	0x00002601
c0d021c8:	04001001 	.word	0x04001001

c0d021cc <jsmn_init>:
c0d021cc:	4902      	ldr	r1, [pc, #8]	; (c0d021d8 <jsmn_init+0xc>)
c0d021ce:	8081      	strh	r1, [r0, #4]
c0d021d0:	2100      	movs	r1, #0
c0d021d2:	8041      	strh	r1, [r0, #2]
c0d021d4:	8001      	strh	r1, [r0, #0]
c0d021d6:	4770      	bx	lr
c0d021d8:	0000ffff 	.word	0x0000ffff

c0d021dc <json_parse>:
c0d021dc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d021de:	b083      	sub	sp, #12
c0d021e0:	4615      	mov	r5, r2
c0d021e2:	460e      	mov	r6, r1
c0d021e4:	4604      	mov	r4, r0
c0d021e6:	af01      	add	r7, sp, #4
c0d021e8:	4638      	mov	r0, r7
c0d021ea:	f7ff ffef 	bl	c0d021cc <jsmn_init>
c0d021ee:	2009      	movs	r0, #9
c0d021f0:	0181      	lsls	r1, r0, #6
c0d021f2:	4620      	mov	r0, r4
c0d021f4:	f005 ff22 	bl	c0d0803c <explicit_bzero>
c0d021f8:	2047      	movs	r0, #71	; 0x47
c0d021fa:	00c0      	lsls	r0, r0, #3
c0d021fc:	5026      	str	r6, [r4, r0]
c0d021fe:	1820      	adds	r0, r4, r0
c0d02200:	8085      	strh	r5, [r0, #4]
c0d02202:	2046      	movs	r0, #70	; 0x46
c0d02204:	9000      	str	r0, [sp, #0]
c0d02206:	4623      	mov	r3, r4
c0d02208:	3308      	adds	r3, #8
c0d0220a:	4638      	mov	r0, r7
c0d0220c:	4631      	mov	r1, r6
c0d0220e:	462a      	mov	r2, r5
c0d02210:	f7ff fdca 	bl	c0d01da8 <jsmn_parse>
c0d02214:	4601      	mov	r1, r0
c0d02216:	2800      	cmp	r0, #0
c0d02218:	d40a      	bmi.n	c0d02230 <json_parse+0x54>
c0d0221a:	2000      	movs	r0, #0
c0d0221c:	7020      	strb	r0, [r4, #0]
c0d0221e:	6060      	str	r0, [r4, #4]
c0d02220:	2900      	cmp	r1, #0
c0d02222:	d00f      	beq.n	c0d02244 <json_parse+0x68>
c0d02224:	2946      	cmp	r1, #70	; 0x46
c0d02226:	dc0b      	bgt.n	c0d02240 <json_parse+0x64>
c0d02228:	2201      	movs	r2, #1
c0d0222a:	7022      	strb	r2, [r4, #0]
c0d0222c:	6061      	str	r1, [r4, #4]
c0d0222e:	e00e      	b.n	c0d0224e <json_parse+0x72>
c0d02230:	1cc8      	adds	r0, r1, #3
c0d02232:	d009      	beq.n	c0d02248 <json_parse+0x6c>
c0d02234:	1c48      	adds	r0, r1, #1
c0d02236:	d003      	beq.n	c0d02240 <json_parse+0x64>
c0d02238:	1c88      	adds	r0, r1, #2
c0d0223a:	d107      	bne.n	c0d0224c <json_parse+0x70>
c0d0223c:	200c      	movs	r0, #12
c0d0223e:	e006      	b.n	c0d0224e <json_parse+0x72>
c0d02240:	2016      	movs	r0, #22
c0d02242:	e004      	b.n	c0d0224e <json_parse+0x72>
c0d02244:	2015      	movs	r0, #21
c0d02246:	e002      	b.n	c0d0224e <json_parse+0x72>
c0d02248:	2017      	movs	r0, #23
c0d0224a:	e000      	b.n	c0d0224e <json_parse+0x72>
c0d0224c:	2020      	movs	r0, #32
c0d0224e:	b003      	add	sp, #12
c0d02250:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d02252 <array_get_element_count>:
c0d02252:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d02254:	b083      	sub	sp, #12
c0d02256:	2600      	movs	r6, #0
c0d02258:	8016      	strh	r6, [r2, #0]
c0d0225a:	6844      	ldr	r4, [r0, #4]
c0d0225c:	428c      	cmp	r4, r1
c0d0225e:	d201      	bcs.n	c0d02264 <array_get_element_count+0x12>
c0d02260:	2601      	movs	r6, #1
c0d02262:	e01f      	b.n	c0d022a4 <array_get_element_count+0x52>
c0d02264:	1c4d      	adds	r5, r1, #1
c0d02266:	b2ab      	uxth	r3, r5
c0d02268:	429c      	cmp	r4, r3
c0d0226a:	d91b      	bls.n	c0d022a4 <array_get_element_count+0x52>
c0d0226c:	9201      	str	r2, [sp, #4]
c0d0226e:	00c9      	lsls	r1, r1, #3
c0d02270:	1841      	adds	r1, r0, r1
c0d02272:	220c      	movs	r2, #12
c0d02274:	5e8a      	ldrsh	r2, [r1, r2]
c0d02276:	9202      	str	r2, [sp, #8]
c0d02278:	894e      	ldrh	r6, [r1, #10]
c0d0227a:	2700      	movs	r7, #0
c0d0227c:	9700      	str	r7, [sp, #0]
c0d0227e:	00d9      	lsls	r1, r3, #3
c0d02280:	1843      	adds	r3, r0, r1
c0d02282:	210a      	movs	r1, #10
c0d02284:	5e59      	ldrsh	r1, [r3, r1]
c0d02286:	9a02      	ldr	r2, [sp, #8]
c0d02288:	4291      	cmp	r1, r2
c0d0228a:	dc0a      	bgt.n	c0d022a2 <array_get_element_count+0x50>
c0d0228c:	b2b2      	uxth	r2, r6
c0d0228e:	4291      	cmp	r1, r2
c0d02290:	dd03      	ble.n	c0d0229a <array_get_element_count+0x48>
c0d02292:	899e      	ldrh	r6, [r3, #12]
c0d02294:	1c7f      	adds	r7, r7, #1
c0d02296:	9901      	ldr	r1, [sp, #4]
c0d02298:	800f      	strh	r7, [r1, #0]
c0d0229a:	1c6d      	adds	r5, r5, #1
c0d0229c:	b2ab      	uxth	r3, r5
c0d0229e:	429c      	cmp	r4, r3
c0d022a0:	d8ed      	bhi.n	c0d0227e <array_get_element_count+0x2c>
c0d022a2:	9e00      	ldr	r6, [sp, #0]
c0d022a4:	4630      	mov	r0, r6
c0d022a6:	b003      	add	sp, #12
c0d022a8:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d022aa <array_get_nth_element>:
c0d022aa:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d022ac:	b084      	sub	sp, #16
c0d022ae:	461d      	mov	r5, r3
c0d022b0:	4604      	mov	r4, r0
c0d022b2:	6843      	ldr	r3, [r0, #4]
c0d022b4:	2001      	movs	r0, #1
c0d022b6:	428b      	cmp	r3, r1
c0d022b8:	d329      	bcc.n	c0d0230e <array_get_nth_element+0x64>
c0d022ba:	9201      	str	r2, [sp, #4]
c0d022bc:	462a      	mov	r2, r5
c0d022be:	00cd      	lsls	r5, r1, #3
c0d022c0:	1965      	adds	r5, r4, r5
c0d022c2:	260c      	movs	r6, #12
c0d022c4:	5fae      	ldrsh	r6, [r5, r6]
c0d022c6:	9603      	str	r6, [sp, #12]
c0d022c8:	461e      	mov	r6, r3
c0d022ca:	896f      	ldrh	r7, [r5, #10]
c0d022cc:	1c49      	adds	r1, r1, #1
c0d022ce:	9202      	str	r2, [sp, #8]
c0d022d0:	8011      	strh	r1, [r2, #0]
c0d022d2:	b28d      	uxth	r5, r1
c0d022d4:	42ab      	cmp	r3, r5
c0d022d6:	d91a      	bls.n	c0d0230e <array_get_nth_element+0x64>
c0d022d8:	9000      	str	r0, [sp, #0]
c0d022da:	2600      	movs	r6, #0
c0d022dc:	00e8      	lsls	r0, r5, #3
c0d022de:	1820      	adds	r0, r4, r0
c0d022e0:	220a      	movs	r2, #10
c0d022e2:	5e82      	ldrsh	r2, [r0, r2]
c0d022e4:	9d03      	ldr	r5, [sp, #12]
c0d022e6:	42aa      	cmp	r2, r5
c0d022e8:	dc0e      	bgt.n	c0d02308 <array_get_nth_element+0x5e>
c0d022ea:	b2bd      	uxth	r5, r7
c0d022ec:	42aa      	cmp	r2, r5
c0d022ee:	dd05      	ble.n	c0d022fc <array_get_nth_element+0x52>
c0d022f0:	b2b2      	uxth	r2, r6
c0d022f2:	9d01      	ldr	r5, [sp, #4]
c0d022f4:	42aa      	cmp	r2, r5
c0d022f6:	d009      	beq.n	c0d0230c <array_get_nth_element+0x62>
c0d022f8:	8987      	ldrh	r7, [r0, #12]
c0d022fa:	1c76      	adds	r6, r6, #1
c0d022fc:	1c49      	adds	r1, r1, #1
c0d022fe:	9802      	ldr	r0, [sp, #8]
c0d02300:	8001      	strh	r1, [r0, #0]
c0d02302:	b28d      	uxth	r5, r1
c0d02304:	42ab      	cmp	r3, r5
c0d02306:	d8e9      	bhi.n	c0d022dc <array_get_nth_element+0x32>
c0d02308:	9800      	ldr	r0, [sp, #0]
c0d0230a:	e000      	b.n	c0d0230e <array_get_nth_element+0x64>
c0d0230c:	2000      	movs	r0, #0
c0d0230e:	b004      	add	sp, #16
c0d02310:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d02312 <object_get_element_count>:
c0d02312:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d02314:	b084      	sub	sp, #16
c0d02316:	4604      	mov	r4, r0
c0d02318:	2000      	movs	r0, #0
c0d0231a:	8010      	strh	r0, [r2, #0]
c0d0231c:	6863      	ldr	r3, [r4, #4]
c0d0231e:	428b      	cmp	r3, r1
c0d02320:	d201      	bcs.n	c0d02326 <object_get_element_count+0x14>
c0d02322:	2001      	movs	r0, #1
c0d02324:	e02a      	b.n	c0d0237c <object_get_element_count+0x6a>
c0d02326:	1c4d      	adds	r5, r1, #1
c0d02328:	b2ae      	uxth	r6, r5
c0d0232a:	42b3      	cmp	r3, r6
c0d0232c:	d926      	bls.n	c0d0237c <object_get_element_count+0x6a>
c0d0232e:	9201      	str	r2, [sp, #4]
c0d02330:	00c9      	lsls	r1, r1, #3
c0d02332:	1861      	adds	r1, r4, r1
c0d02334:	220c      	movs	r2, #12
c0d02336:	5e88      	ldrsh	r0, [r1, r2]
c0d02338:	9003      	str	r0, [sp, #12]
c0d0233a:	8949      	ldrh	r1, [r1, #10]
c0d0233c:	2700      	movs	r7, #0
c0d0233e:	9700      	str	r7, [sp, #0]
c0d02340:	9702      	str	r7, [sp, #8]
c0d02342:	461f      	mov	r7, r3
c0d02344:	00f2      	lsls	r2, r6, #3
c0d02346:	4623      	mov	r3, r4
c0d02348:	3308      	adds	r3, #8
c0d0234a:	189a      	adds	r2, r3, r2
c0d0234c:	2602      	movs	r6, #2
c0d0234e:	5f92      	ldrsh	r2, [r2, r6]
c0d02350:	9803      	ldr	r0, [sp, #12]
c0d02352:	4282      	cmp	r2, r0
c0d02354:	dc11      	bgt.n	c0d0237a <object_get_element_count+0x68>
c0d02356:	4620      	mov	r0, r4
c0d02358:	1c6d      	adds	r5, r5, #1
c0d0235a:	b2ae      	uxth	r6, r5
c0d0235c:	b28c      	uxth	r4, r1
c0d0235e:	42a2      	cmp	r2, r4
c0d02360:	dd07      	ble.n	c0d02372 <object_get_element_count+0x60>
c0d02362:	00f1      	lsls	r1, r6, #3
c0d02364:	1859      	adds	r1, r3, r1
c0d02366:	8889      	ldrh	r1, [r1, #4]
c0d02368:	9b02      	ldr	r3, [sp, #8]
c0d0236a:	1c5b      	adds	r3, r3, #1
c0d0236c:	9a01      	ldr	r2, [sp, #4]
c0d0236e:	9302      	str	r3, [sp, #8]
c0d02370:	8013      	strh	r3, [r2, #0]
c0d02372:	4604      	mov	r4, r0
c0d02374:	463b      	mov	r3, r7
c0d02376:	42b7      	cmp	r7, r6
c0d02378:	d8e3      	bhi.n	c0d02342 <object_get_element_count+0x30>
c0d0237a:	9800      	ldr	r0, [sp, #0]
c0d0237c:	b004      	add	sp, #16
c0d0237e:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d02380 <object_get_nth_key>:
c0d02380:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d02382:	b088      	sub	sp, #32
c0d02384:	4604      	mov	r4, r0
c0d02386:	8019      	strh	r1, [r3, #0]
c0d02388:	6845      	ldr	r5, [r0, #4]
c0d0238a:	2001      	movs	r0, #1
c0d0238c:	428d      	cmp	r5, r1
c0d0238e:	d338      	bcc.n	c0d02402 <object_get_nth_key+0x82>
c0d02390:	9000      	str	r0, [sp, #0]
c0d02392:	00c8      	lsls	r0, r1, #3
c0d02394:	9402      	str	r4, [sp, #8]
c0d02396:	1820      	adds	r0, r4, r0
c0d02398:	240c      	movs	r4, #12
c0d0239a:	5f04      	ldrsh	r4, [r0, r4]
c0d0239c:	9406      	str	r4, [sp, #24]
c0d0239e:	8940      	ldrh	r0, [r0, #10]
c0d023a0:	9007      	str	r0, [sp, #28]
c0d023a2:	1c49      	adds	r1, r1, #1
c0d023a4:	8019      	strh	r1, [r3, #0]
c0d023a6:	b28e      	uxth	r6, r1
c0d023a8:	42b5      	cmp	r5, r6
c0d023aa:	d929      	bls.n	c0d02400 <object_get_nth_key+0x80>
c0d023ac:	9201      	str	r2, [sp, #4]
c0d023ae:	2000      	movs	r0, #0
c0d023b0:	9004      	str	r0, [sp, #16]
c0d023b2:	9a02      	ldr	r2, [sp, #8]
c0d023b4:	9505      	str	r5, [sp, #20]
c0d023b6:	9103      	str	r1, [sp, #12]
c0d023b8:	1c48      	adds	r0, r1, #1
c0d023ba:	8018      	strh	r0, [r3, #0]
c0d023bc:	00f1      	lsls	r1, r6, #3
c0d023be:	4614      	mov	r4, r2
c0d023c0:	3408      	adds	r4, #8
c0d023c2:	1861      	adds	r1, r4, r1
c0d023c4:	2602      	movs	r6, #2
c0d023c6:	5f8f      	ldrsh	r7, [r1, r6]
c0d023c8:	9906      	ldr	r1, [sp, #24]
c0d023ca:	428f      	cmp	r7, r1
c0d023cc:	dc18      	bgt.n	c0d02400 <object_get_nth_key+0x80>
c0d023ce:	4619      	mov	r1, r3
c0d023d0:	b286      	uxth	r6, r0
c0d023d2:	9b07      	ldr	r3, [sp, #28]
c0d023d4:	b29d      	uxth	r5, r3
c0d023d6:	42af      	cmp	r7, r5
c0d023d8:	dd0d      	ble.n	c0d023f6 <object_get_nth_key+0x76>
c0d023da:	9d04      	ldr	r5, [sp, #16]
c0d023dc:	b2ab      	uxth	r3, r5
c0d023de:	9a01      	ldr	r2, [sp, #4]
c0d023e0:	4293      	cmp	r3, r2
c0d023e2:	d010      	beq.n	c0d02406 <object_get_nth_key+0x86>
c0d023e4:	00f2      	lsls	r2, r6, #3
c0d023e6:	18a2      	adds	r2, r4, r2
c0d023e8:	8892      	ldrh	r2, [r2, #4]
c0d023ea:	9207      	str	r2, [sp, #28]
c0d023ec:	1c6d      	adds	r5, r5, #1
c0d023ee:	9504      	str	r5, [sp, #16]
c0d023f0:	460b      	mov	r3, r1
c0d023f2:	9a02      	ldr	r2, [sp, #8]
c0d023f4:	e000      	b.n	c0d023f8 <object_get_nth_key+0x78>
c0d023f6:	460b      	mov	r3, r1
c0d023f8:	9d05      	ldr	r5, [sp, #20]
c0d023fa:	42b5      	cmp	r5, r6
c0d023fc:	4601      	mov	r1, r0
c0d023fe:	d8da      	bhi.n	c0d023b6 <object_get_nth_key+0x36>
c0d02400:	9800      	ldr	r0, [sp, #0]
c0d02402:	b008      	add	sp, #32
c0d02404:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d02406:	9803      	ldr	r0, [sp, #12]
c0d02408:	8008      	strh	r0, [r1, #0]
c0d0240a:	2000      	movs	r0, #0
c0d0240c:	e7f9      	b.n	c0d02402 <object_get_nth_key+0x82>

c0d0240e <object_get_nth_value>:
c0d0240e:	b5b0      	push	{r4, r5, r7, lr}
c0d02410:	461c      	mov	r4, r3
c0d02412:	6843      	ldr	r3, [r0, #4]
c0d02414:	428b      	cmp	r3, r1
c0d02416:	d201      	bcs.n	c0d0241c <object_get_nth_value+0xe>
c0d02418:	2501      	movs	r5, #1
c0d0241a:	e00b      	b.n	c0d02434 <object_get_nth_value+0x26>
c0d0241c:	4623      	mov	r3, r4
c0d0241e:	f7ff ffaf 	bl	c0d02380 <object_get_nth_key>
c0d02422:	4605      	mov	r5, r0
c0d02424:	f005 fd52 	bl	c0d07ecc <check_app_canary>
c0d02428:	2d00      	cmp	r5, #0
c0d0242a:	d103      	bne.n	c0d02434 <object_get_nth_value+0x26>
c0d0242c:	8820      	ldrh	r0, [r4, #0]
c0d0242e:	1c40      	adds	r0, r0, #1
c0d02430:	8020      	strh	r0, [r4, #0]
c0d02432:	2500      	movs	r5, #0
c0d02434:	4628      	mov	r0, r5
c0d02436:	bdb0      	pop	{r4, r5, r7, pc}

c0d02438 <object_get_value>:
c0d02438:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d0243a:	b089      	sub	sp, #36	; 0x24
c0d0243c:	4614      	mov	r4, r2
c0d0243e:	4606      	mov	r6, r0
c0d02440:	6842      	ldr	r2, [r0, #4]
c0d02442:	2001      	movs	r0, #1
c0d02444:	428a      	cmp	r2, r1
c0d02446:	d352      	bcc.n	c0d024ee <object_get_value+0xb6>
c0d02448:	9402      	str	r4, [sp, #8]
c0d0244a:	00cc      	lsls	r4, r1, #3
c0d0244c:	1934      	adds	r4, r6, r4
c0d0244e:	250c      	movs	r5, #12
c0d02450:	5f65      	ldrsh	r5, [r4, r5]
c0d02452:	9505      	str	r5, [sp, #20]
c0d02454:	250a      	movs	r5, #10
c0d02456:	5f64      	ldrsh	r4, [r4, r5]
c0d02458:	1c4d      	adds	r5, r1, #1
c0d0245a:	801d      	strh	r5, [r3, #0]
c0d0245c:	b2af      	uxth	r7, r5
c0d0245e:	42ba      	cmp	r2, r7
c0d02460:	d945      	bls.n	c0d024ee <object_get_value+0xb6>
c0d02462:	9208      	str	r2, [sp, #32]
c0d02464:	9407      	str	r4, [sp, #28]
c0d02466:	9306      	str	r3, [sp, #24]
c0d02468:	9000      	str	r0, [sp, #0]
c0d0246a:	2047      	movs	r0, #71	; 0x47
c0d0246c:	00c0      	lsls	r0, r0, #3
c0d0246e:	1830      	adds	r0, r6, r0
c0d02470:	9001      	str	r0, [sp, #4]
c0d02472:	9604      	str	r6, [sp, #16]
c0d02474:	00f9      	lsls	r1, r7, #3
c0d02476:	4630      	mov	r0, r6
c0d02478:	3008      	adds	r0, #8
c0d0247a:	1843      	adds	r3, r0, r1
c0d0247c:	2204      	movs	r2, #4
c0d0247e:	5e99      	ldrsh	r1, [r3, r2]
c0d02480:	2402      	movs	r4, #2
c0d02482:	5f1e      	ldrsh	r6, [r3, r4]
c0d02484:	1c6d      	adds	r5, r5, #1
c0d02486:	9b06      	ldr	r3, [sp, #24]
c0d02488:	801d      	strh	r5, [r3, #0]
c0d0248a:	9b05      	ldr	r3, [sp, #20]
c0d0248c:	429e      	cmp	r6, r3
c0d0248e:	dc2d      	bgt.n	c0d024ec <object_get_value+0xb4>
c0d02490:	b2af      	uxth	r7, r5
c0d02492:	9b07      	ldr	r3, [sp, #28]
c0d02494:	42b3      	cmp	r3, r6
c0d02496:	da24      	bge.n	c0d024e2 <object_get_value+0xaa>
c0d02498:	00fb      	lsls	r3, r7, #3
c0d0249a:	18c0      	adds	r0, r0, r3
c0d0249c:	5e80      	ldrsh	r0, [r0, r2]
c0d0249e:	9007      	str	r0, [sp, #28]
c0d024a0:	1b88      	subs	r0, r1, r6
c0d024a2:	9003      	str	r0, [sp, #12]
c0d024a4:	9c02      	ldr	r4, [sp, #8]
c0d024a6:	4620      	mov	r0, r4
c0d024a8:	f005 ff4a 	bl	c0d08340 <strlen>
c0d024ac:	b281      	uxth	r1, r0
c0d024ae:	9803      	ldr	r0, [sp, #12]
c0d024b0:	4281      	cmp	r1, r0
c0d024b2:	d116      	bne.n	c0d024e2 <object_get_value+0xaa>
c0d024b4:	4620      	mov	r0, r4
c0d024b6:	460c      	mov	r4, r1
c0d024b8:	f002 f9e8 	bl	c0d0488c <pic>
c0d024bc:	4605      	mov	r5, r0
c0d024be:	9801      	ldr	r0, [sp, #4]
c0d024c0:	6800      	ldr	r0, [r0, #0]
c0d024c2:	1980      	adds	r0, r0, r6
c0d024c4:	f002 f9e2 	bl	c0d0488c <pic>
c0d024c8:	4601      	mov	r1, r0
c0d024ca:	4628      	mov	r0, r5
c0d024cc:	4622      	mov	r2, r4
c0d024ce:	f005 fdb9 	bl	c0d08044 <memcmp>
c0d024d2:	2800      	cmp	r0, #0
c0d024d4:	d00d      	beq.n	c0d024f2 <object_get_value+0xba>
c0d024d6:	9806      	ldr	r0, [sp, #24]
c0d024d8:	8807      	ldrh	r7, [r0, #0]
c0d024da:	9e04      	ldr	r6, [sp, #16]
c0d024dc:	6870      	ldr	r0, [r6, #4]
c0d024de:	463d      	mov	r5, r7
c0d024e0:	e001      	b.n	c0d024e6 <object_get_value+0xae>
c0d024e2:	9e04      	ldr	r6, [sp, #16]
c0d024e4:	9808      	ldr	r0, [sp, #32]
c0d024e6:	9008      	str	r0, [sp, #32]
c0d024e8:	42b8      	cmp	r0, r7
c0d024ea:	d8c3      	bhi.n	c0d02474 <object_get_value+0x3c>
c0d024ec:	9800      	ldr	r0, [sp, #0]
c0d024ee:	b009      	add	sp, #36	; 0x24
c0d024f0:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d024f2:	2000      	movs	r0, #0
c0d024f4:	e7fb      	b.n	c0d024ee <object_get_value+0xb6>

c0d024f6 <os_boot>:
c0d024f6:	b580      	push	{r7, lr}
c0d024f8:	2000      	movs	r0, #0
c0d024fa:	f002 fb89 	bl	c0d04c10 <try_context_set>
c0d024fe:	bd80      	pop	{r7, pc}

c0d02500 <os_longjmp>:
c0d02500:	4604      	mov	r4, r0
c0d02502:	4808      	ldr	r0, [pc, #32]	; (c0d02524 <os_longjmp+0x24>)
c0d02504:	4478      	add	r0, pc
c0d02506:	4671      	mov	r1, lr
c0d02508:	1a08      	subs	r0, r1, r0
c0d0250a:	4905      	ldr	r1, [pc, #20]	; (c0d02520 <os_longjmp+0x20>)
c0d0250c:	1841      	adds	r1, r0, r1
c0d0250e:	4620      	mov	r0, r4
c0d02510:	f000 f80a 	bl	c0d02528 <app_throw_info>
c0d02514:	f002 fb70 	bl	c0d04bf8 <try_context_get>
c0d02518:	4621      	mov	r1, r4
c0d0251a:	f005 febf 	bl	c0d0829c <longjmp>
c0d0251e:	46c0      	nop			; (mov r8, r8)
c0d02520:	c0de0000 	.word	0xc0de0000
c0d02524:	ffffdaf9 	.word	0xffffdaf9

c0d02528 <app_throw_info>:
c0d02528:	4770      	bx	lr
	...

c0d0252c <io_seproxyhal_general_status>:
c0d0252c:	b580      	push	{r7, lr}
c0d0252e:	4803      	ldr	r0, [pc, #12]	; (c0d0253c <io_seproxyhal_general_status+0x10>)
c0d02530:	4478      	add	r0, pc
c0d02532:	2105      	movs	r1, #5
c0d02534:	f002 fb3a 	bl	c0d04bac <io_seph_send>
c0d02538:	bd80      	pop	{r7, pc}
c0d0253a:	46c0      	nop			; (mov r8, r8)
c0d0253c:	000064d0 	.word	0x000064d0

c0d02540 <io_seproxyhal_handle_usb_event>:
c0d02540:	b510      	push	{r4, lr}
c0d02542:	4818      	ldr	r0, [pc, #96]	; (c0d025a4 <io_seproxyhal_handle_usb_event+0x64>)
c0d02544:	78c0      	ldrb	r0, [r0, #3]
c0d02546:	2803      	cmp	r0, #3
c0d02548:	dc07      	bgt.n	c0d0255a <io_seproxyhal_handle_usb_event+0x1a>
c0d0254a:	2801      	cmp	r0, #1
c0d0254c:	d00d      	beq.n	c0d0256a <io_seproxyhal_handle_usb_event+0x2a>
c0d0254e:	2802      	cmp	r0, #2
c0d02550:	d123      	bne.n	c0d0259a <io_seproxyhal_handle_usb_event+0x5a>
c0d02552:	4815      	ldr	r0, [pc, #84]	; (c0d025a8 <io_seproxyhal_handle_usb_event+0x68>)
c0d02554:	f003 ffca 	bl	c0d064ec <USBD_LL_SOF>
c0d02558:	bd10      	pop	{r4, pc}
c0d0255a:	2804      	cmp	r0, #4
c0d0255c:	d01a      	beq.n	c0d02594 <io_seproxyhal_handle_usb_event+0x54>
c0d0255e:	2808      	cmp	r0, #8
c0d02560:	d11b      	bne.n	c0d0259a <io_seproxyhal_handle_usb_event+0x5a>
c0d02562:	4811      	ldr	r0, [pc, #68]	; (c0d025a8 <io_seproxyhal_handle_usb_event+0x68>)
c0d02564:	f003 ffc0 	bl	c0d064e8 <USBD_LL_Resume>
c0d02568:	bd10      	pop	{r4, pc}
c0d0256a:	4c0f      	ldr	r4, [pc, #60]	; (c0d025a8 <io_seproxyhal_handle_usb_event+0x68>)
c0d0256c:	2101      	movs	r1, #1
c0d0256e:	4620      	mov	r0, r4
c0d02570:	f003 ffb5 	bl	c0d064de <USBD_LL_SetSpeed>
c0d02574:	4620      	mov	r0, r4
c0d02576:	f003 ff92 	bl	c0d0649e <USBD_LL_Reset>
c0d0257a:	480c      	ldr	r0, [pc, #48]	; (c0d025ac <io_seproxyhal_handle_usb_event+0x6c>)
c0d0257c:	7981      	ldrb	r1, [r0, #6]
c0d0257e:	2900      	cmp	r1, #0
c0d02580:	d10c      	bne.n	c0d0259c <io_seproxyhal_handle_usb_event+0x5c>
c0d02582:	2100      	movs	r1, #0
c0d02584:	7481      	strb	r1, [r0, #18]
c0d02586:	8201      	strh	r1, [r0, #16]
c0d02588:	60c1      	str	r1, [r0, #12]
c0d0258a:	6141      	str	r1, [r0, #20]
c0d0258c:	6181      	str	r1, [r0, #24]
c0d0258e:	61c1      	str	r1, [r0, #28]
c0d02590:	8401      	strh	r1, [r0, #32]
c0d02592:	bd10      	pop	{r4, pc}
c0d02594:	4804      	ldr	r0, [pc, #16]	; (c0d025a8 <io_seproxyhal_handle_usb_event+0x68>)
c0d02596:	f003 ffa5 	bl	c0d064e4 <USBD_LL_Suspend>
c0d0259a:	bd10      	pop	{r4, pc}
c0d0259c:	2005      	movs	r0, #5
c0d0259e:	f7ff ffaf 	bl	c0d02500 <os_longjmp>
c0d025a2:	46c0      	nop			; (mov r8, r8)
c0d025a4:	20000202 	.word	0x20000202
c0d025a8:	20000abc 	.word	0x20000abc
c0d025ac:	2000040c 	.word	0x2000040c

c0d025b0 <io_seproxyhal_handle_usb_ep_xfer_event>:
c0d025b0:	b580      	push	{r7, lr}
c0d025b2:	4815      	ldr	r0, [pc, #84]	; (c0d02608 <io_seproxyhal_handle_usb_ep_xfer_event+0x58>)
c0d025b4:	78c2      	ldrb	r2, [r0, #3]
c0d025b6:	217f      	movs	r1, #127	; 0x7f
c0d025b8:	4011      	ands	r1, r2
c0d025ba:	7902      	ldrb	r2, [r0, #4]
c0d025bc:	2a04      	cmp	r2, #4
c0d025be:	d014      	beq.n	c0d025ea <io_seproxyhal_handle_usb_ep_xfer_event+0x3a>
c0d025c0:	2a02      	cmp	r2, #2
c0d025c2:	d006      	beq.n	c0d025d2 <io_seproxyhal_handle_usb_ep_xfer_event+0x22>
c0d025c4:	2a01      	cmp	r2, #1
c0d025c6:	d11e      	bne.n	c0d02606 <io_seproxyhal_handle_usb_ep_xfer_event+0x56>
c0d025c8:	1d81      	adds	r1, r0, #6
c0d025ca:	4811      	ldr	r0, [pc, #68]	; (c0d02610 <io_seproxyhal_handle_usb_ep_xfer_event+0x60>)
c0d025cc:	f003 fe6e 	bl	c0d062ac <USBD_LL_SetupStage>
c0d025d0:	bd80      	pop	{r7, pc}
c0d025d2:	2906      	cmp	r1, #6
c0d025d4:	d817      	bhi.n	c0d02606 <io_seproxyhal_handle_usb_ep_xfer_event+0x56>
c0d025d6:	004a      	lsls	r2, r1, #1
c0d025d8:	4b0c      	ldr	r3, [pc, #48]	; (c0d0260c <io_seproxyhal_handle_usb_ep_xfer_event+0x5c>)
c0d025da:	189a      	adds	r2, r3, r2
c0d025dc:	2300      	movs	r3, #0
c0d025de:	8293      	strh	r3, [r2, #20]
c0d025e0:	1d82      	adds	r2, r0, #6
c0d025e2:	480b      	ldr	r0, [pc, #44]	; (c0d02610 <io_seproxyhal_handle_usb_ep_xfer_event+0x60>)
c0d025e4:	f003 feed 	bl	c0d063c2 <USBD_LL_DataInStage>
c0d025e8:	bd80      	pop	{r7, pc}
c0d025ea:	2906      	cmp	r1, #6
c0d025ec:	d80b      	bhi.n	c0d02606 <io_seproxyhal_handle_usb_ep_xfer_event+0x56>
c0d025ee:	4a07      	ldr	r2, [pc, #28]	; (c0d0260c <io_seproxyhal_handle_usb_ep_xfer_event+0x5c>)
c0d025f0:	1852      	adds	r2, r2, r1
c0d025f2:	7943      	ldrb	r3, [r0, #5]
c0d025f4:	2b7a      	cmp	r3, #122	; 0x7a
c0d025f6:	d300      	bcc.n	c0d025fa <io_seproxyhal_handle_usb_ep_xfer_event+0x4a>
c0d025f8:	237a      	movs	r3, #122	; 0x7a
c0d025fa:	7313      	strb	r3, [r2, #12]
c0d025fc:	1d82      	adds	r2, r0, #6
c0d025fe:	4804      	ldr	r0, [pc, #16]	; (c0d02610 <io_seproxyhal_handle_usb_ep_xfer_event+0x60>)
c0d02600:	2300      	movs	r3, #0
c0d02602:	f003 fe82 	bl	c0d0630a <USBD_LL_DataOutStage>
c0d02606:	bd80      	pop	{r7, pc}
c0d02608:	20000202 	.word	0x20000202
c0d0260c:	2000040c 	.word	0x2000040c
c0d02610:	20000abc 	.word	0x20000abc

c0d02614 <io_usb_send_apdu_data_ep0x83>:
c0d02614:	b580      	push	{r7, lr}
c0d02616:	460a      	mov	r2, r1
c0d02618:	4601      	mov	r1, r0
c0d0261a:	2083      	movs	r0, #131	; 0x83
c0d0261c:	2314      	movs	r3, #20
c0d0261e:	f000 fae3 	bl	c0d02be8 <io_usb_send_ep>
c0d02622:	bd80      	pop	{r7, pc}

c0d02624 <io_seproxyhal_handle_event>:
c0d02624:	b510      	push	{r4, lr}
c0d02626:	4826      	ldr	r0, [pc, #152]	; (c0d026c0 <io_seproxyhal_handle_event+0x9c>)
c0d02628:	7881      	ldrb	r1, [r0, #2]
c0d0262a:	7842      	ldrb	r2, [r0, #1]
c0d0262c:	0212      	lsls	r2, r2, #8
c0d0262e:	1852      	adds	r2, r2, r1
c0d02630:	7801      	ldrb	r1, [r0, #0]
c0d02632:	290f      	cmp	r1, #15
c0d02634:	dc08      	bgt.n	c0d02648 <io_seproxyhal_handle_event+0x24>
c0d02636:	290e      	cmp	r1, #14
c0d02638:	d01c      	beq.n	c0d02674 <io_seproxyhal_handle_event+0x50>
c0d0263a:	290f      	cmp	r1, #15
c0d0263c:	d12d      	bne.n	c0d0269a <io_seproxyhal_handle_event+0x76>
c0d0263e:	2a01      	cmp	r2, #1
c0d02640:	d132      	bne.n	c0d026a8 <io_seproxyhal_handle_event+0x84>
c0d02642:	f7ff ff7d 	bl	c0d02540 <io_seproxyhal_handle_usb_event>
c0d02646:	e033      	b.n	c0d026b0 <io_seproxyhal_handle_event+0x8c>
c0d02648:	2910      	cmp	r1, #16
c0d0264a:	d02b      	beq.n	c0d026a4 <io_seproxyhal_handle_event+0x80>
c0d0264c:	2916      	cmp	r1, #22
c0d0264e:	d124      	bne.n	c0d0269a <io_seproxyhal_handle_event+0x76>
c0d02650:	491c      	ldr	r1, [pc, #112]	; (c0d026c4 <io_seproxyhal_handle_event+0xa0>)
c0d02652:	780b      	ldrb	r3, [r1, #0]
c0d02654:	2401      	movs	r4, #1
c0d02656:	2b00      	cmp	r3, #0
c0d02658:	d12b      	bne.n	c0d026b2 <io_seproxyhal_handle_event+0x8e>
c0d0265a:	230a      	movs	r3, #10
c0d0265c:	700b      	strb	r3, [r1, #0]
c0d0265e:	2306      	movs	r3, #6
c0d02660:	718b      	strb	r3, [r1, #6]
c0d02662:	2a7d      	cmp	r2, #125	; 0x7d
c0d02664:	d300      	bcc.n	c0d02668 <io_seproxyhal_handle_event+0x44>
c0d02666:	227d      	movs	r2, #125	; 0x7d
c0d02668:	804a      	strh	r2, [r1, #2]
c0d0266a:	1cc1      	adds	r1, r0, #3
c0d0266c:	4816      	ldr	r0, [pc, #88]	; (c0d026c8 <io_seproxyhal_handle_event+0xa4>)
c0d0266e:	f005 fcd5 	bl	c0d0801c <__aeabi_memcpy>
c0d02672:	e01e      	b.n	c0d026b2 <io_seproxyhal_handle_event+0x8e>
c0d02674:	4813      	ldr	r0, [pc, #76]	; (c0d026c4 <io_seproxyhal_handle_event+0xa0>)
c0d02676:	6881      	ldr	r1, [r0, #8]
c0d02678:	3164      	adds	r1, #100	; 0x64
c0d0267a:	6081      	str	r1, [r0, #8]
c0d0267c:	2120      	movs	r1, #32
c0d0267e:	5a42      	ldrh	r2, [r0, r1]
c0d02680:	2a00      	cmp	r2, #0
c0d02682:	d007      	beq.n	c0d02694 <io_seproxyhal_handle_event+0x70>
c0d02684:	2a64      	cmp	r2, #100	; 0x64
c0d02686:	4613      	mov	r3, r2
c0d02688:	d800      	bhi.n	c0d0268c <io_seproxyhal_handle_event+0x68>
c0d0268a:	2364      	movs	r3, #100	; 0x64
c0d0268c:	3b64      	subs	r3, #100	; 0x64
c0d0268e:	5243      	strh	r3, [r0, r1]
c0d02690:	2a64      	cmp	r2, #100	; 0x64
c0d02692:	d910      	bls.n	c0d026b6 <io_seproxyhal_handle_event+0x92>
c0d02694:	1e89      	subs	r1, r1, #2
c0d02696:	2912      	cmp	r1, #18
c0d02698:	d1f1      	bne.n	c0d0267e <io_seproxyhal_handle_event+0x5a>
c0d0269a:	2002      	movs	r0, #2
c0d0269c:	f7fd ff64 	bl	c0d00568 <io_event>
c0d026a0:	4604      	mov	r4, r0
c0d026a2:	e006      	b.n	c0d026b2 <io_seproxyhal_handle_event+0x8e>
c0d026a4:	2a03      	cmp	r2, #3
c0d026a6:	d201      	bcs.n	c0d026ac <io_seproxyhal_handle_event+0x88>
c0d026a8:	2400      	movs	r4, #0
c0d026aa:	e002      	b.n	c0d026b2 <io_seproxyhal_handle_event+0x8e>
c0d026ac:	f7ff ff80 	bl	c0d025b0 <io_seproxyhal_handle_usb_ep_xfer_event>
c0d026b0:	2401      	movs	r4, #1
c0d026b2:	4620      	mov	r0, r4
c0d026b4:	bd10      	pop	{r4, pc}
c0d026b6:	2100      	movs	r1, #0
c0d026b8:	7001      	strb	r1, [r0, #0]
c0d026ba:	2005      	movs	r0, #5
c0d026bc:	f7ff ff20 	bl	c0d02500 <os_longjmp>
c0d026c0:	20000202 	.word	0x20000202
c0d026c4:	2000040c 	.word	0x2000040c
c0d026c8:	20000305 	.word	0x20000305

c0d026cc <io_seproxyhal_init>:
c0d026cc:	b580      	push	{r7, lr}
c0d026ce:	4807      	ldr	r0, [pc, #28]	; (c0d026ec <io_seproxyhal_init+0x20>)
c0d026d0:	4907      	ldr	r1, [pc, #28]	; (c0d026f0 <io_seproxyhal_init+0x24>)
c0d026d2:	6001      	str	r1, [r0, #0]
c0d026d4:	4807      	ldr	r0, [pc, #28]	; (c0d026f4 <io_seproxyhal_init+0x28>)
c0d026d6:	2124      	movs	r1, #36	; 0x24
c0d026d8:	f005 fc9a 	bl	c0d08010 <__aeabi_memclr>
c0d026dc:	f000 fb62 	bl	c0d02da4 <io_usb_hid_init>
c0d026e0:	4805      	ldr	r0, [pc, #20]	; (c0d026f8 <io_seproxyhal_init+0x2c>)
c0d026e2:	2100      	movs	r1, #0
c0d026e4:	6001      	str	r1, [r0, #0]
c0d026e6:	6041      	str	r1, [r0, #4]
c0d026e8:	bd80      	pop	{r7, pc}
c0d026ea:	46c0      	nop			; (mov r8, r8)
c0d026ec:	20000cb4 	.word	0x20000cb4
c0d026f0:	dead0031 	.word	0xdead0031
c0d026f4:	2000040c 	.word	0x2000040c
c0d026f8:	20000430 	.word	0x20000430

c0d026fc <io_seproxyhal_init_ux>:
c0d026fc:	4770      	bx	lr
	...

c0d02700 <io_seproxyhal_init_button>:
c0d02700:	4802      	ldr	r0, [pc, #8]	; (c0d0270c <io_seproxyhal_init_button+0xc>)
c0d02702:	2100      	movs	r1, #0
c0d02704:	6001      	str	r1, [r0, #0]
c0d02706:	6041      	str	r1, [r0, #4]
c0d02708:	4770      	bx	lr
c0d0270a:	46c0      	nop			; (mov r8, r8)
c0d0270c:	20000430 	.word	0x20000430

c0d02710 <io_seproxyhal_display_icon>:
c0d02710:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d02712:	b087      	sub	sp, #28
c0d02714:	4605      	mov	r5, r0
c0d02716:	4608      	mov	r0, r1
c0d02718:	f002 f8b8 	bl	c0d0488c <pic>
c0d0271c:	2800      	cmp	r0, #0
c0d0271e:	d043      	beq.n	c0d027a8 <io_seproxyhal_display_icon+0x98>
c0d02720:	4604      	mov	r4, r0
c0d02722:	6900      	ldr	r0, [r0, #16]
c0d02724:	2800      	cmp	r0, #0
c0d02726:	d03f      	beq.n	c0d027a8 <io_seproxyhal_display_icon+0x98>
c0d02728:	4628      	mov	r0, r5
c0d0272a:	f002 f8af 	bl	c0d0488c <pic>
c0d0272e:	4601      	mov	r1, r0
c0d02730:	466d      	mov	r5, sp
c0d02732:	221c      	movs	r2, #28
c0d02734:	4628      	mov	r0, r5
c0d02736:	f005 fc71 	bl	c0d0801c <__aeabi_memcpy>
c0d0273a:	6826      	ldr	r6, [r4, #0]
c0d0273c:	80ee      	strh	r6, [r5, #6]
c0d0273e:	6867      	ldr	r7, [r4, #4]
c0d02740:	812f      	strh	r7, [r5, #8]
c0d02742:	f002 fa3f 	bl	c0d04bc4 <io_seph_is_status_sent>
c0d02746:	2800      	cmp	r0, #0
c0d02748:	d12e      	bne.n	c0d027a8 <io_seproxyhal_display_icon+0x98>
c0d0274a:	b2b9      	uxth	r1, r7
c0d0274c:	b2b2      	uxth	r2, r6
c0d0274e:	4d17      	ldr	r5, [pc, #92]	; (c0d027ac <io_seproxyhal_display_icon+0x9c>)
c0d02750:	2065      	movs	r0, #101	; 0x65
c0d02752:	7028      	strb	r0, [r5, #0]
c0d02754:	68a0      	ldr	r0, [r4, #8]
c0d02756:	4342      	muls	r2, r0
c0d02758:	434a      	muls	r2, r1
c0d0275a:	0751      	lsls	r1, r2, #29
c0d0275c:	08d6      	lsrs	r6, r2, #3
c0d0275e:	2900      	cmp	r1, #0
c0d02760:	d000      	beq.n	c0d02764 <io_seproxyhal_display_icon+0x54>
c0d02762:	1c76      	adds	r6, r6, #1
c0d02764:	2704      	movs	r7, #4
c0d02766:	4087      	lsls	r7, r0
c0d02768:	19b8      	adds	r0, r7, r6
c0d0276a:	301d      	adds	r0, #29
c0d0276c:	70a8      	strb	r0, [r5, #2]
c0d0276e:	0a00      	lsrs	r0, r0, #8
c0d02770:	7068      	strb	r0, [r5, #1]
c0d02772:	2103      	movs	r1, #3
c0d02774:	4628      	mov	r0, r5
c0d02776:	f002 fa19 	bl	c0d04bac <io_seph_send>
c0d0277a:	4668      	mov	r0, sp
c0d0277c:	211c      	movs	r1, #28
c0d0277e:	f002 fa15 	bl	c0d04bac <io_seph_send>
c0d02782:	68a0      	ldr	r0, [r4, #8]
c0d02784:	7028      	strb	r0, [r5, #0]
c0d02786:	2101      	movs	r1, #1
c0d02788:	4628      	mov	r0, r5
c0d0278a:	f002 fa0f 	bl	c0d04bac <io_seph_send>
c0d0278e:	68e0      	ldr	r0, [r4, #12]
c0d02790:	f002 f87c 	bl	c0d0488c <pic>
c0d02794:	b2b9      	uxth	r1, r7
c0d02796:	f002 fa09 	bl	c0d04bac <io_seph_send>
c0d0279a:	b2b5      	uxth	r5, r6
c0d0279c:	6920      	ldr	r0, [r4, #16]
c0d0279e:	f002 f875 	bl	c0d0488c <pic>
c0d027a2:	4629      	mov	r1, r5
c0d027a4:	f002 fa02 	bl	c0d04bac <io_seph_send>
c0d027a8:	b007      	add	sp, #28
c0d027aa:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d027ac:	20000202 	.word	0x20000202

c0d027b0 <io_seproxyhal_display_default>:
c0d027b0:	b570      	push	{r4, r5, r6, lr}
c0d027b2:	f002 f86b 	bl	c0d0488c <pic>
c0d027b6:	4604      	mov	r4, r0
c0d027b8:	69c0      	ldr	r0, [r0, #28]
c0d027ba:	f002 f867 	bl	c0d0488c <pic>
c0d027be:	4605      	mov	r5, r0
c0d027c0:	7821      	ldrb	r1, [r4, #0]
c0d027c2:	207f      	movs	r0, #127	; 0x7f
c0d027c4:	4008      	ands	r0, r1
c0d027c6:	d00a      	beq.n	c0d027de <io_seproxyhal_display_default+0x2e>
c0d027c8:	2d00      	cmp	r5, #0
c0d027ca:	d009      	beq.n	c0d027e0 <io_seproxyhal_display_default+0x30>
c0d027cc:	2805      	cmp	r0, #5
c0d027ce:	d102      	bne.n	c0d027d6 <io_seproxyhal_display_default+0x26>
c0d027d0:	7ea0      	ldrb	r0, [r4, #26]
c0d027d2:	2800      	cmp	r0, #0
c0d027d4:	d02d      	beq.n	c0d02832 <io_seproxyhal_display_default+0x82>
c0d027d6:	f002 f9f5 	bl	c0d04bc4 <io_seph_is_status_sent>
c0d027da:	2800      	cmp	r0, #0
c0d027dc:	d011      	beq.n	c0d02802 <io_seproxyhal_display_default+0x52>
c0d027de:	bd70      	pop	{r4, r5, r6, pc}
c0d027e0:	f002 f9f0 	bl	c0d04bc4 <io_seph_is_status_sent>
c0d027e4:	2800      	cmp	r0, #0
c0d027e6:	d1fa      	bne.n	c0d027de <io_seproxyhal_display_default+0x2e>
c0d027e8:	4814      	ldr	r0, [pc, #80]	; (c0d0283c <io_seproxyhal_display_default+0x8c>)
c0d027ea:	251c      	movs	r5, #28
c0d027ec:	7085      	strb	r5, [r0, #2]
c0d027ee:	2100      	movs	r1, #0
c0d027f0:	7041      	strb	r1, [r0, #1]
c0d027f2:	2165      	movs	r1, #101	; 0x65
c0d027f4:	7001      	strb	r1, [r0, #0]
c0d027f6:	2103      	movs	r1, #3
c0d027f8:	f002 f9d8 	bl	c0d04bac <io_seph_send>
c0d027fc:	4620      	mov	r0, r4
c0d027fe:	4629      	mov	r1, r5
c0d02800:	e014      	b.n	c0d0282c <io_seproxyhal_display_default+0x7c>
c0d02802:	4628      	mov	r0, r5
c0d02804:	f005 fd9c 	bl	c0d08340 <strlen>
c0d02808:	4606      	mov	r6, r0
c0d0280a:	480c      	ldr	r0, [pc, #48]	; (c0d0283c <io_seproxyhal_display_default+0x8c>)
c0d0280c:	2165      	movs	r1, #101	; 0x65
c0d0280e:	7001      	strb	r1, [r0, #0]
c0d02810:	4631      	mov	r1, r6
c0d02812:	311c      	adds	r1, #28
c0d02814:	7081      	strb	r1, [r0, #2]
c0d02816:	0a09      	lsrs	r1, r1, #8
c0d02818:	7041      	strb	r1, [r0, #1]
c0d0281a:	2103      	movs	r1, #3
c0d0281c:	f002 f9c6 	bl	c0d04bac <io_seph_send>
c0d02820:	211c      	movs	r1, #28
c0d02822:	4620      	mov	r0, r4
c0d02824:	f002 f9c2 	bl	c0d04bac <io_seph_send>
c0d02828:	b2b1      	uxth	r1, r6
c0d0282a:	4628      	mov	r0, r5
c0d0282c:	f002 f9be 	bl	c0d04bac <io_seph_send>
c0d02830:	bd70      	pop	{r4, r5, r6, pc}
c0d02832:	4620      	mov	r0, r4
c0d02834:	4629      	mov	r1, r5
c0d02836:	f7ff ff6b 	bl	c0d02710 <io_seproxyhal_display_icon>
c0d0283a:	bd70      	pop	{r4, r5, r6, pc}
c0d0283c:	20000202 	.word	0x20000202

c0d02840 <bagl_label_roundtrip_duration_ms>:
c0d02840:	b580      	push	{r7, lr}
c0d02842:	460a      	mov	r2, r1
c0d02844:	69c1      	ldr	r1, [r0, #28]
c0d02846:	f000 f801 	bl	c0d0284c <bagl_label_roundtrip_duration_ms_buf>
c0d0284a:	bd80      	pop	{r7, pc}

c0d0284c <bagl_label_roundtrip_duration_ms_buf>:
c0d0284c:	b570      	push	{r4, r5, r6, lr}
c0d0284e:	2500      	movs	r5, #0
c0d02850:	2800      	cmp	r0, #0
c0d02852:	d01e      	beq.n	c0d02892 <bagl_label_roundtrip_duration_ms_buf+0x46>
c0d02854:	4616      	mov	r6, r2
c0d02856:	4604      	mov	r4, r0
c0d02858:	7800      	ldrb	r0, [r0, #0]
c0d0285a:	2807      	cmp	r0, #7
c0d0285c:	d001      	beq.n	c0d02862 <bagl_label_roundtrip_duration_ms_buf+0x16>
c0d0285e:	2802      	cmp	r0, #2
c0d02860:	d117      	bne.n	c0d02892 <bagl_label_roundtrip_duration_ms_buf+0x46>
c0d02862:	4608      	mov	r0, r1
c0d02864:	f002 f812 	bl	c0d0488c <pic>
c0d02868:	2800      	cmp	r0, #0
c0d0286a:	d012      	beq.n	c0d02892 <bagl_label_roundtrip_duration_ms_buf+0x46>
c0d0286c:	f005 fd68 	bl	c0d08340 <strlen>
c0d02870:	4346      	muls	r6, r0
c0d02872:	88e0      	ldrh	r0, [r4, #6]
c0d02874:	4286      	cmp	r6, r0
c0d02876:	d90c      	bls.n	c0d02892 <bagl_label_roundtrip_duration_ms_buf+0x46>
c0d02878:	1a31      	subs	r1, r6, r0
c0d0287a:	207d      	movs	r0, #125	; 0x7d
c0d0287c:	0100      	lsls	r0, r0, #4
c0d0287e:	4348      	muls	r0, r1
c0d02880:	7ea1      	ldrb	r1, [r4, #26]
c0d02882:	f005 fb59 	bl	c0d07f38 <__udivsi3>
c0d02886:	7aa1      	ldrb	r1, [r4, #10]
c0d02888:	0649      	lsls	r1, r1, #25
c0d0288a:	0e09      	lsrs	r1, r1, #24
c0d0288c:	2264      	movs	r2, #100	; 0x64
c0d0288e:	434a      	muls	r2, r1
c0d02890:	1815      	adds	r5, r2, r0
c0d02892:	4628      	mov	r0, r5
c0d02894:	bd70      	pop	{r4, r5, r6, pc}
	...

c0d02898 <io_seproxyhal_button_push>:
c0d02898:	b570      	push	{r4, r5, r6, lr}
c0d0289a:	2800      	cmp	r0, #0
c0d0289c:	d025      	beq.n	c0d028ea <io_seproxyhal_button_push+0x52>
c0d0289e:	460b      	mov	r3, r1
c0d028a0:	4602      	mov	r2, r0
c0d028a2:	4c12      	ldr	r4, [pc, #72]	; (c0d028ec <io_seproxyhal_button_push+0x54>)
c0d028a4:	cc03      	ldmia	r4!, {r0, r1}
c0d028a6:	3c08      	subs	r4, #8
c0d028a8:	4298      	cmp	r0, r3
c0d028aa:	d101      	bne.n	c0d028b0 <io_seproxyhal_button_push+0x18>
c0d028ac:	1c49      	adds	r1, r1, #1
c0d028ae:	6061      	str	r1, [r4, #4]
c0d028b0:	4318      	orrs	r0, r3
c0d028b2:	2b00      	cmp	r3, #0
c0d028b4:	d002      	beq.n	c0d028bc <io_seproxyhal_button_push+0x24>
c0d028b6:	6020      	str	r0, [r4, #0]
c0d028b8:	4605      	mov	r5, r0
c0d028ba:	e005      	b.n	c0d028c8 <io_seproxyhal_button_push+0x30>
c0d028bc:	2500      	movs	r5, #0
c0d028be:	6025      	str	r5, [r4, #0]
c0d028c0:	6065      	str	r5, [r4, #4]
c0d028c2:	4e0b      	ldr	r6, [pc, #44]	; (c0d028f0 <io_seproxyhal_button_push+0x58>)
c0d028c4:	1c76      	adds	r6, r6, #1
c0d028c6:	4330      	orrs	r0, r6
c0d028c8:	429d      	cmp	r5, r3
c0d028ca:	d001      	beq.n	c0d028d0 <io_seproxyhal_button_push+0x38>
c0d028cc:	2300      	movs	r3, #0
c0d028ce:	6063      	str	r3, [r4, #4]
c0d028d0:	2908      	cmp	r1, #8
c0d028d2:	d309      	bcc.n	c0d028e8 <io_seproxyhal_button_push+0x50>
c0d028d4:	4c07      	ldr	r4, [pc, #28]	; (c0d028f4 <io_seproxyhal_button_push+0x5c>)
c0d028d6:	434c      	muls	r4, r1
c0d028d8:	2301      	movs	r3, #1
c0d028da:	4d07      	ldr	r5, [pc, #28]	; (c0d028f8 <io_seproxyhal_button_push+0x60>)
c0d028dc:	42ac      	cmp	r4, r5
c0d028de:	d201      	bcs.n	c0d028e4 <io_seproxyhal_button_push+0x4c>
c0d028e0:	079c      	lsls	r4, r3, #30
c0d028e2:	4320      	orrs	r0, r4
c0d028e4:	07db      	lsls	r3, r3, #31
c0d028e6:	4398      	bics	r0, r3
c0d028e8:	4790      	blx	r2
c0d028ea:	bd70      	pop	{r4, r5, r6, pc}
c0d028ec:	20000430 	.word	0x20000430
c0d028f0:	7fffffff 	.word	0x7fffffff
c0d028f4:	aaaaaaab 	.word	0xaaaaaaab
c0d028f8:	55555556 	.word	0x55555556

c0d028fc <io_seproxyhal_se_reset>:
c0d028fc:	4802      	ldr	r0, [pc, #8]	; (c0d02908 <io_seproxyhal_se_reset+0xc>)
c0d028fe:	4478      	add	r0, pc
c0d02900:	2103      	movs	r1, #3
c0d02902:	f002 f953 	bl	c0d04bac <io_seph_send>
c0d02906:	e7fe      	b.n	c0d02906 <io_seproxyhal_se_reset+0xa>
c0d02908:	00006107 	.word	0x00006107

c0d0290c <os_io_seproxyhal_get_app_name_and_version>:
c0d0290c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d0290e:	b081      	sub	sp, #4
c0d02910:	4e0f      	ldr	r6, [pc, #60]	; (c0d02950 <os_io_seproxyhal_get_app_name_and_version+0x44>)
c0d02912:	2401      	movs	r4, #1
c0d02914:	7034      	strb	r4, [r6, #0]
c0d02916:	1cb1      	adds	r1, r6, #2
c0d02918:	27ff      	movs	r7, #255	; 0xff
c0d0291a:	3702      	adds	r7, #2
c0d0291c:	1c7a      	adds	r2, r7, #1
c0d0291e:	4620      	mov	r0, r4
c0d02920:	f002 f92c 	bl	c0d04b7c <os_registry_get_current_app_tag>
c0d02924:	4605      	mov	r5, r0
c0d02926:	7070      	strb	r0, [r6, #1]
c0d02928:	1a3a      	subs	r2, r7, r0
c0d0292a:	1987      	adds	r7, r0, r6
c0d0292c:	1cf9      	adds	r1, r7, #3
c0d0292e:	2002      	movs	r0, #2
c0d02930:	f002 f924 	bl	c0d04b7c <os_registry_get_current_app_tag>
c0d02934:	70b8      	strb	r0, [r7, #2]
c0d02936:	182d      	adds	r5, r5, r0
c0d02938:	19ae      	adds	r6, r5, r6
c0d0293a:	70f4      	strb	r4, [r6, #3]
c0d0293c:	f002 f912 	bl	c0d04b64 <os_flags>
c0d02940:	2100      	movs	r1, #0
c0d02942:	71b1      	strb	r1, [r6, #6]
c0d02944:	2190      	movs	r1, #144	; 0x90
c0d02946:	7171      	strb	r1, [r6, #5]
c0d02948:	7130      	strb	r0, [r6, #4]
c0d0294a:	1de8      	adds	r0, r5, #7
c0d0294c:	b001      	add	sp, #4
c0d0294e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d02950:	20000305 	.word	0x20000305

c0d02954 <io_exchange>:
c0d02954:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d02956:	b087      	sub	sp, #28
c0d02958:	460b      	mov	r3, r1
c0d0295a:	4602      	mov	r2, r0
c0d0295c:	4880      	ldr	r0, [pc, #512]	; (c0d02b60 <io_exchange+0x20c>)
c0d0295e:	6800      	ldr	r0, [r0, #0]
c0d02960:	4980      	ldr	r1, [pc, #512]	; (c0d02b64 <io_exchange+0x210>)
c0d02962:	4288      	cmp	r0, r1
c0d02964:	d000      	beq.n	c0d02968 <io_exchange+0x14>
c0d02966:	e0f2      	b.n	c0d02b4e <io_exchange+0x1fa>
c0d02968:	0750      	lsls	r0, r2, #29
c0d0296a:	d005      	beq.n	c0d02978 <io_exchange+0x24>
c0d0296c:	4617      	mov	r7, r2
c0d0296e:	b2f8      	uxtb	r0, r7
c0d02970:	b299      	uxth	r1, r3
c0d02972:	f7fe f899 	bl	c0d00aa8 <io_exchange_al>
c0d02976:	e0e1      	b.n	c0d02b3c <io_exchange+0x1e8>
c0d02978:	4d7c      	ldr	r5, [pc, #496]	; (c0d02b6c <io_exchange+0x218>)
c0d0297a:	487e      	ldr	r0, [pc, #504]	; (c0d02b74 <io_exchange+0x220>)
c0d0297c:	4478      	add	r0, pc
c0d0297e:	9001      	str	r0, [sp, #4]
c0d02980:	487d      	ldr	r0, [pc, #500]	; (c0d02b78 <io_exchange+0x224>)
c0d02982:	4478      	add	r0, pc
c0d02984:	9006      	str	r0, [sp, #24]
c0d02986:	4e78      	ldr	r6, [pc, #480]	; (c0d02b68 <io_exchange+0x214>)
c0d02988:	4617      	mov	r7, r2
c0d0298a:	2410      	movs	r4, #16
c0d0298c:	4014      	ands	r4, r2
c0d0298e:	0418      	lsls	r0, r3, #16
c0d02990:	d073      	beq.n	c0d02a7a <io_exchange+0x126>
c0d02992:	2c00      	cmp	r4, #0
c0d02994:	d171      	bne.n	c0d02a7a <io_exchange+0x126>
c0d02996:	9305      	str	r3, [sp, #20]
c0d02998:	9203      	str	r2, [sp, #12]
c0d0299a:	f002 f913 	bl	c0d04bc4 <io_seph_is_status_sent>
c0d0299e:	2800      	cmp	r0, #0
c0d029a0:	d008      	beq.n	c0d029b4 <io_exchange+0x60>
c0d029a2:	2180      	movs	r1, #128	; 0x80
c0d029a4:	2200      	movs	r2, #0
c0d029a6:	4630      	mov	r0, r6
c0d029a8:	f002 f918 	bl	c0d04bdc <io_seph_recv>
c0d029ac:	2001      	movs	r0, #1
c0d029ae:	f000 f8eb 	bl	c0d02b88 <os_io_seph_recv_and_process>
c0d029b2:	e7f2      	b.n	c0d0299a <io_exchange+0x46>
c0d029b4:	68a8      	ldr	r0, [r5, #8]
c0d029b6:	7829      	ldrb	r1, [r5, #0]
c0d029b8:	2909      	cmp	r1, #9
c0d029ba:	4a6d      	ldr	r2, [pc, #436]	; (c0d02b70 <io_exchange+0x21c>)
c0d029bc:	9704      	str	r7, [sp, #16]
c0d029be:	dd09      	ble.n	c0d029d4 <io_exchange+0x80>
c0d029c0:	290a      	cmp	r1, #10
c0d029c2:	9b05      	ldr	r3, [sp, #20]
c0d029c4:	d00f      	beq.n	c0d029e6 <io_exchange+0x92>
c0d029c6:	9002      	str	r0, [sp, #8]
c0d029c8:	290b      	cmp	r1, #11
c0d029ca:	d123      	bne.n	c0d02a14 <io_exchange+0xc0>
c0d029cc:	486c      	ldr	r0, [pc, #432]	; (c0d02b80 <io_exchange+0x22c>)
c0d029ce:	4478      	add	r0, pc
c0d029d0:	4a67      	ldr	r2, [pc, #412]	; (c0d02b70 <io_exchange+0x21c>)
c0d029d2:	e004      	b.n	c0d029de <io_exchange+0x8a>
c0d029d4:	9002      	str	r0, [sp, #8]
c0d029d6:	2907      	cmp	r1, #7
c0d029d8:	9801      	ldr	r0, [sp, #4]
c0d029da:	9b05      	ldr	r3, [sp, #20]
c0d029dc:	d117      	bne.n	c0d02a0e <io_exchange+0xba>
c0d029de:	b299      	uxth	r1, r3
c0d029e0:	f000 fa4c 	bl	c0d02e7c <io_usb_hid_send>
c0d029e4:	e01d      	b.n	c0d02a22 <io_exchange+0xce>
c0d029e6:	20ff      	movs	r0, #255	; 0xff
c0d029e8:	3006      	adds	r0, #6
c0d029ea:	b29f      	uxth	r7, r3
c0d029ec:	4287      	cmp	r7, r0
c0d029ee:	d300      	bcc.n	c0d029f2 <io_exchange+0x9e>
c0d029f0:	e0b2      	b.n	c0d02b58 <io_exchange+0x204>
c0d029f2:	70b3      	strb	r3, [r6, #2]
c0d029f4:	2053      	movs	r0, #83	; 0x53
c0d029f6:	7030      	strb	r0, [r6, #0]
c0d029f8:	0a18      	lsrs	r0, r3, #8
c0d029fa:	7070      	strb	r0, [r6, #1]
c0d029fc:	2103      	movs	r1, #3
c0d029fe:	4630      	mov	r0, r6
c0d02a00:	f002 f8d4 	bl	c0d04bac <io_seph_send>
c0d02a04:	485a      	ldr	r0, [pc, #360]	; (c0d02b70 <io_exchange+0x21c>)
c0d02a06:	4639      	mov	r1, r7
c0d02a08:	f002 f8d0 	bl	c0d04bac <io_seph_send>
c0d02a0c:	e025      	b.n	c0d02a5a <io_exchange+0x106>
c0d02a0e:	2900      	cmp	r1, #0
c0d02a10:	d100      	bne.n	c0d02a14 <io_exchange+0xc0>
c0d02a12:	e09e      	b.n	c0d02b52 <io_exchange+0x1fe>
c0d02a14:	b2f8      	uxtb	r0, r7
c0d02a16:	b299      	uxth	r1, r3
c0d02a18:	f7fe f846 	bl	c0d00aa8 <io_exchange_al>
c0d02a1c:	2800      	cmp	r0, #0
c0d02a1e:	d000      	beq.n	c0d02a22 <io_exchange+0xce>
c0d02a20:	e097      	b.n	c0d02b52 <io_exchange+0x1fe>
c0d02a22:	7828      	ldrb	r0, [r5, #0]
c0d02a24:	2800      	cmp	r0, #0
c0d02a26:	d018      	beq.n	c0d02a5a <io_exchange+0x106>
c0d02a28:	207d      	movs	r0, #125	; 0x7d
c0d02a2a:	0100      	lsls	r0, r0, #4
c0d02a2c:	9902      	ldr	r1, [sp, #8]
c0d02a2e:	180f      	adds	r7, r1, r0
c0d02a30:	2105      	movs	r1, #5
c0d02a32:	9806      	ldr	r0, [sp, #24]
c0d02a34:	f002 f8ba 	bl	c0d04bac <io_seph_send>
c0d02a38:	2180      	movs	r1, #128	; 0x80
c0d02a3a:	2200      	movs	r2, #0
c0d02a3c:	4630      	mov	r0, r6
c0d02a3e:	f002 f8cd 	bl	c0d04bdc <io_seph_recv>
c0d02a42:	68a8      	ldr	r0, [r5, #8]
c0d02a44:	42b8      	cmp	r0, r7
c0d02a46:	d27c      	bcs.n	c0d02b42 <io_exchange+0x1ee>
c0d02a48:	f7ff fdec 	bl	c0d02624 <io_seproxyhal_handle_event>
c0d02a4c:	f002 f8ba 	bl	c0d04bc4 <io_seph_is_status_sent>
c0d02a50:	2800      	cmp	r0, #0
c0d02a52:	d1f1      	bne.n	c0d02a38 <io_exchange+0xe4>
c0d02a54:	7828      	ldrb	r0, [r5, #0]
c0d02a56:	2800      	cmp	r0, #0
c0d02a58:	d1ea      	bne.n	c0d02a30 <io_exchange+0xdc>
c0d02a5a:	2000      	movs	r0, #0
c0d02a5c:	71a8      	strb	r0, [r5, #6]
c0d02a5e:	7028      	strb	r0, [r5, #0]
c0d02a60:	8068      	strh	r0, [r5, #2]
c0d02a62:	9f04      	ldr	r7, [sp, #16]
c0d02a64:	06b9      	lsls	r1, r7, #26
c0d02a66:	d469      	bmi.n	c0d02b3c <io_exchange+0x1e8>
c0d02a68:	4844      	ldr	r0, [pc, #272]	; (c0d02b7c <io_exchange+0x228>)
c0d02a6a:	4478      	add	r0, pc
c0d02a6c:	2105      	movs	r1, #5
c0d02a6e:	f002 f89d 	bl	c0d04bac <io_seph_send>
c0d02a72:	b278      	sxtb	r0, r7
c0d02a74:	2800      	cmp	r0, #0
c0d02a76:	9a03      	ldr	r2, [sp, #12]
c0d02a78:	d466      	bmi.n	c0d02b48 <io_exchange+0x1f4>
c0d02a7a:	2c00      	cmp	r4, #0
c0d02a7c:	d104      	bne.n	c0d02a88 <io_exchange+0x134>
c0d02a7e:	0650      	lsls	r0, r2, #25
c0d02a80:	d45a      	bmi.n	c0d02b38 <io_exchange+0x1e4>
c0d02a82:	2000      	movs	r0, #0
c0d02a84:	71a8      	strb	r0, [r5, #6]
c0d02a86:	7028      	strb	r0, [r5, #0]
c0d02a88:	2000      	movs	r0, #0
c0d02a8a:	8068      	strh	r0, [r5, #2]
c0d02a8c:	483d      	ldr	r0, [pc, #244]	; (c0d02b84 <io_exchange+0x230>)
c0d02a8e:	4478      	add	r0, pc
c0d02a90:	2105      	movs	r1, #5
c0d02a92:	f002 f88b 	bl	c0d04bac <io_seph_send>
c0d02a96:	2180      	movs	r1, #128	; 0x80
c0d02a98:	2400      	movs	r4, #0
c0d02a9a:	4630      	mov	r0, r6
c0d02a9c:	4622      	mov	r2, r4
c0d02a9e:	f002 f89d 	bl	c0d04bdc <io_seph_recv>
c0d02aa2:	2803      	cmp	r0, #3
c0d02aa4:	d30f      	bcc.n	c0d02ac6 <io_exchange+0x172>
c0d02aa6:	78b1      	ldrb	r1, [r6, #2]
c0d02aa8:	7872      	ldrb	r2, [r6, #1]
c0d02aaa:	0212      	lsls	r2, r2, #8
c0d02aac:	1851      	adds	r1, r2, r1
c0d02aae:	1cc9      	adds	r1, r1, #3
c0d02ab0:	4281      	cmp	r1, r0
c0d02ab2:	d108      	bne.n	c0d02ac6 <io_exchange+0x172>
c0d02ab4:	f7ff fdb6 	bl	c0d02624 <io_seproxyhal_handle_event>
c0d02ab8:	7828      	ldrb	r0, [r5, #0]
c0d02aba:	2800      	cmp	r0, #0
c0d02abc:	d0e6      	beq.n	c0d02a8c <io_exchange+0x138>
c0d02abe:	8868      	ldrh	r0, [r5, #2]
c0d02ac0:	2800      	cmp	r0, #0
c0d02ac2:	d0e3      	beq.n	c0d02a8c <io_exchange+0x138>
c0d02ac4:	e001      	b.n	c0d02aca <io_exchange+0x176>
c0d02ac6:	702c      	strb	r4, [r5, #0]
c0d02ac8:	e7de      	b.n	c0d02a88 <io_exchange+0x134>
c0d02aca:	f002 f811 	bl	c0d04af0 <os_perso_isonboarded>
c0d02ace:	28aa      	cmp	r0, #170	; 0xaa
c0d02ad0:	d103      	bne.n	c0d02ada <io_exchange+0x186>
c0d02ad2:	f002 f82b 	bl	c0d04b2c <os_global_pin_is_validated>
c0d02ad6:	28aa      	cmp	r0, #170	; 0xaa
c0d02ad8:	d11f      	bne.n	c0d02b1a <io_exchange+0x1c6>
c0d02ada:	4a25      	ldr	r2, [pc, #148]	; (c0d02b70 <io_exchange+0x21c>)
c0d02adc:	7810      	ldrb	r0, [r2, #0]
c0d02ade:	28b0      	cmp	r0, #176	; 0xb0
c0d02ae0:	d128      	bne.n	c0d02b34 <io_exchange+0x1e0>
c0d02ae2:	7850      	ldrb	r0, [r2, #1]
c0d02ae4:	28a7      	cmp	r0, #167	; 0xa7
c0d02ae6:	d00b      	beq.n	c0d02b00 <io_exchange+0x1ac>
c0d02ae8:	2801      	cmp	r0, #1
c0d02aea:	d123      	bne.n	c0d02b34 <io_exchange+0x1e0>
c0d02aec:	7890      	ldrb	r0, [r2, #2]
c0d02aee:	78d1      	ldrb	r1, [r2, #3]
c0d02af0:	4301      	orrs	r1, r0
c0d02af2:	d11f      	bne.n	c0d02b34 <io_exchange+0x1e0>
c0d02af4:	2007      	movs	r0, #7
c0d02af6:	4007      	ands	r7, r0
c0d02af8:	f7ff ff08 	bl	c0d0290c <os_io_seproxyhal_get_app_name_and_version>
c0d02afc:	4603      	mov	r3, r0
c0d02afe:	e014      	b.n	c0d02b2a <io_exchange+0x1d6>
c0d02b00:	7890      	ldrb	r0, [r2, #2]
c0d02b02:	78d1      	ldrb	r1, [r2, #3]
c0d02b04:	4301      	orrs	r1, r0
c0d02b06:	d115      	bne.n	c0d02b34 <io_exchange+0x1e0>
c0d02b08:	7054      	strb	r4, [r2, #1]
c0d02b0a:	2090      	movs	r0, #144	; 0x90
c0d02b0c:	7010      	strb	r0, [r2, #0]
c0d02b0e:	2007      	movs	r0, #7
c0d02b10:	4007      	ands	r7, r0
c0d02b12:	207f      	movs	r0, #127	; 0x7f
c0d02b14:	43c0      	mvns	r0, r0
c0d02b16:	183f      	adds	r7, r7, r0
c0d02b18:	e006      	b.n	c0d02b28 <io_exchange+0x1d4>
c0d02b1a:	2015      	movs	r0, #21
c0d02b1c:	4914      	ldr	r1, [pc, #80]	; (c0d02b70 <io_exchange+0x21c>)
c0d02b1e:	7048      	strb	r0, [r1, #1]
c0d02b20:	2055      	movs	r0, #85	; 0x55
c0d02b22:	7008      	strb	r0, [r1, #0]
c0d02b24:	2007      	movs	r0, #7
c0d02b26:	4007      	ands	r7, r0
c0d02b28:	2302      	movs	r3, #2
c0d02b2a:	b2fa      	uxtb	r2, r7
c0d02b2c:	0778      	lsls	r0, r7, #29
c0d02b2e:	d100      	bne.n	c0d02b32 <io_exchange+0x1de>
c0d02b30:	e72b      	b.n	c0d0298a <io_exchange+0x36>
c0d02b32:	e71c      	b.n	c0d0296e <io_exchange+0x1a>
c0d02b34:	8868      	ldrh	r0, [r5, #2]
c0d02b36:	e001      	b.n	c0d02b3c <io_exchange+0x1e8>
c0d02b38:	8868      	ldrh	r0, [r5, #2]
c0d02b3a:	1f40      	subs	r0, r0, #5
c0d02b3c:	b280      	uxth	r0, r0
c0d02b3e:	b007      	add	sp, #28
c0d02b40:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d02b42:	2005      	movs	r0, #5
c0d02b44:	f7ff fcdc 	bl	c0d02500 <os_longjmp>
c0d02b48:	2005      	movs	r0, #5
c0d02b4a:	f002 f823 	bl	c0d04b94 <os_sched_exit>
c0d02b4e:	f7ff fed5 	bl	c0d028fc <io_seproxyhal_se_reset>
c0d02b52:	2004      	movs	r0, #4
c0d02b54:	f7ff fcd4 	bl	c0d02500 <os_longjmp>
c0d02b58:	2002      	movs	r0, #2
c0d02b5a:	f7ff fcd1 	bl	c0d02500 <os_longjmp>
c0d02b5e:	46c0      	nop			; (mov r8, r8)
c0d02b60:	20000cb4 	.word	0x20000cb4
c0d02b64:	dead0031 	.word	0xdead0031
c0d02b68:	20000202 	.word	0x20000202
c0d02b6c:	2000040c 	.word	0x2000040c
c0d02b70:	20000305 	.word	0x20000305
c0d02b74:	000002b5 	.word	0x000002b5
c0d02b78:	0000607e 	.word	0x0000607e
c0d02b7c:	00005f96 	.word	0x00005f96
c0d02b80:	fffffc43 	.word	0xfffffc43
c0d02b84:	00005f72 	.word	0x00005f72

c0d02b88 <os_io_seph_recv_and_process>:
c0d02b88:	b5b0      	push	{r4, r5, r7, lr}
c0d02b8a:	4604      	mov	r4, r0
c0d02b8c:	480f      	ldr	r0, [pc, #60]	; (c0d02bcc <os_io_seph_recv_and_process+0x44>)
c0d02b8e:	4478      	add	r0, pc
c0d02b90:	2105      	movs	r1, #5
c0d02b92:	f002 f80b 	bl	c0d04bac <io_seph_send>
c0d02b96:	4d0b      	ldr	r5, [pc, #44]	; (c0d02bc4 <os_io_seph_recv_and_process+0x3c>)
c0d02b98:	2180      	movs	r1, #128	; 0x80
c0d02b9a:	2200      	movs	r2, #0
c0d02b9c:	4628      	mov	r0, r5
c0d02b9e:	f002 f81d 	bl	c0d04bdc <io_seph_recv>
c0d02ba2:	7828      	ldrb	r0, [r5, #0]
c0d02ba4:	2815      	cmp	r0, #21
c0d02ba6:	d808      	bhi.n	c0d02bba <os_io_seph_recv_and_process+0x32>
c0d02ba8:	2101      	movs	r1, #1
c0d02baa:	4081      	lsls	r1, r0
c0d02bac:	4806      	ldr	r0, [pc, #24]	; (c0d02bc8 <os_io_seph_recv_and_process+0x40>)
c0d02bae:	4201      	tst	r1, r0
c0d02bb0:	d003      	beq.n	c0d02bba <os_io_seph_recv_and_process+0x32>
c0d02bb2:	2c00      	cmp	r4, #0
c0d02bb4:	d001      	beq.n	c0d02bba <os_io_seph_recv_and_process+0x32>
c0d02bb6:	2000      	movs	r0, #0
c0d02bb8:	bdb0      	pop	{r4, r5, r7, pc}
c0d02bba:	f7ff fd33 	bl	c0d02624 <io_seproxyhal_handle_event>
c0d02bbe:	1e41      	subs	r1, r0, #1
c0d02bc0:	4188      	sbcs	r0, r1
c0d02bc2:	bdb0      	pop	{r4, r5, r7, pc}
c0d02bc4:	20000202 	.word	0x20000202
c0d02bc8:	00207020 	.word	0x00207020
c0d02bcc:	00005e72 	.word	0x00005e72

c0d02bd0 <io_seproxyhal_get_ep_rx_size>:
c0d02bd0:	217f      	movs	r1, #127	; 0x7f
c0d02bd2:	4001      	ands	r1, r0
c0d02bd4:	2906      	cmp	r1, #6
c0d02bd6:	d803      	bhi.n	c0d02be0 <io_seproxyhal_get_ep_rx_size+0x10>
c0d02bd8:	4802      	ldr	r0, [pc, #8]	; (c0d02be4 <io_seproxyhal_get_ep_rx_size+0x14>)
c0d02bda:	1840      	adds	r0, r0, r1
c0d02bdc:	7b00      	ldrb	r0, [r0, #12]
c0d02bde:	4770      	bx	lr
c0d02be0:	2000      	movs	r0, #0
c0d02be2:	4770      	bx	lr
c0d02be4:	2000040c 	.word	0x2000040c

c0d02be8 <io_usb_send_ep>:
c0d02be8:	b570      	push	{r4, r5, r6, lr}
c0d02bea:	b082      	sub	sp, #8
c0d02bec:	2aff      	cmp	r2, #255	; 0xff
c0d02bee:	d81d      	bhi.n	c0d02c2c <io_usb_send_ep+0x44>
c0d02bf0:	4615      	mov	r5, r2
c0d02bf2:	460e      	mov	r6, r1
c0d02bf4:	4604      	mov	r4, r0
c0d02bf6:	4668      	mov	r0, sp
c0d02bf8:	7142      	strb	r2, [r0, #5]
c0d02bfa:	2120      	movs	r1, #32
c0d02bfc:	7101      	strb	r1, [r0, #4]
c0d02bfe:	2150      	movs	r1, #80	; 0x50
c0d02c00:	7001      	strb	r1, [r0, #0]
c0d02c02:	2180      	movs	r1, #128	; 0x80
c0d02c04:	4321      	orrs	r1, r4
c0d02c06:	70c1      	strb	r1, [r0, #3]
c0d02c08:	1cd1      	adds	r1, r2, #3
c0d02c0a:	7081      	strb	r1, [r0, #2]
c0d02c0c:	0a09      	lsrs	r1, r1, #8
c0d02c0e:	7041      	strb	r1, [r0, #1]
c0d02c10:	2106      	movs	r1, #6
c0d02c12:	f001 ffcb 	bl	c0d04bac <io_seph_send>
c0d02c16:	4630      	mov	r0, r6
c0d02c18:	4629      	mov	r1, r5
c0d02c1a:	f001 ffc7 	bl	c0d04bac <io_seph_send>
c0d02c1e:	0660      	lsls	r0, r4, #25
c0d02c20:	0e00      	lsrs	r0, r0, #24
c0d02c22:	4903      	ldr	r1, [pc, #12]	; (c0d02c30 <io_usb_send_ep+0x48>)
c0d02c24:	1808      	adds	r0, r1, r0
c0d02c26:	217d      	movs	r1, #125	; 0x7d
c0d02c28:	0109      	lsls	r1, r1, #4
c0d02c2a:	8281      	strh	r1, [r0, #20]
c0d02c2c:	b002      	add	sp, #8
c0d02c2e:	bd70      	pop	{r4, r5, r6, pc}
c0d02c30:	2000040c 	.word	0x2000040c

c0d02c34 <io_usb_send_apdu_data>:
c0d02c34:	b580      	push	{r7, lr}
c0d02c36:	460a      	mov	r2, r1
c0d02c38:	4601      	mov	r1, r0
c0d02c3a:	2082      	movs	r0, #130	; 0x82
c0d02c3c:	f7ff ffd4 	bl	c0d02be8 <io_usb_send_ep>
c0d02c40:	bd80      	pop	{r7, pc}
	...

c0d02c44 <io_usb_hid_receive>:
c0d02c44:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d02c46:	b083      	sub	sp, #12
c0d02c48:	9202      	str	r2, [sp, #8]
c0d02c4a:	460d      	mov	r5, r1
c0d02c4c:	4604      	mov	r4, r0
c0d02c4e:	2b00      	cmp	r3, #0
c0d02c50:	d003      	beq.n	c0d02c5a <io_usb_hid_receive+0x16>
c0d02c52:	8898      	ldrh	r0, [r3, #4]
c0d02c54:	9000      	str	r0, [sp, #0]
c0d02c56:	6818      	ldr	r0, [r3, #0]
c0d02c58:	e003      	b.n	c0d02c62 <io_usb_hid_receive+0x1e>
c0d02c5a:	2041      	movs	r0, #65	; 0x41
c0d02c5c:	0080      	lsls	r0, r0, #2
c0d02c5e:	9000      	str	r0, [sp, #0]
c0d02c60:	4849      	ldr	r0, [pc, #292]	; (c0d02d88 <io_usb_hid_receive+0x144>)
c0d02c62:	9001      	str	r0, [sp, #4]
c0d02c64:	4f49      	ldr	r7, [pc, #292]	; (c0d02d8c <io_usb_hid_receive+0x148>)
c0d02c66:	42bd      	cmp	r5, r7
c0d02c68:	d00e      	beq.n	c0d02c88 <io_usb_hid_receive+0x44>
c0d02c6a:	4e48      	ldr	r6, [pc, #288]	; (c0d02d8c <io_usb_hid_receive+0x148>)
c0d02c6c:	2740      	movs	r7, #64	; 0x40
c0d02c6e:	4630      	mov	r0, r6
c0d02c70:	4639      	mov	r1, r7
c0d02c72:	f005 f9cd 	bl	c0d08010 <__aeabi_memclr>
c0d02c76:	9a02      	ldr	r2, [sp, #8]
c0d02c78:	2a40      	cmp	r2, #64	; 0x40
c0d02c7a:	d300      	bcc.n	c0d02c7e <io_usb_hid_receive+0x3a>
c0d02c7c:	463a      	mov	r2, r7
c0d02c7e:	4630      	mov	r0, r6
c0d02c80:	4629      	mov	r1, r5
c0d02c82:	f005 f9cf 	bl	c0d08024 <__aeabi_memmove>
c0d02c86:	4f41      	ldr	r7, [pc, #260]	; (c0d02d8c <io_usb_hid_receive+0x148>)
c0d02c88:	78b8      	ldrb	r0, [r7, #2]
c0d02c8a:	2801      	cmp	r0, #1
c0d02c8c:	dc0a      	bgt.n	c0d02ca4 <io_usb_hid_receive+0x60>
c0d02c8e:	2800      	cmp	r0, #0
c0d02c90:	d029      	beq.n	c0d02ce6 <io_usb_hid_receive+0xa2>
c0d02c92:	2801      	cmp	r0, #1
c0d02c94:	d167      	bne.n	c0d02d66 <io_usb_hid_receive+0x122>
c0d02c96:	1cf8      	adds	r0, r7, #3
c0d02c98:	2104      	movs	r1, #4
c0d02c9a:	f7ff f875 	bl	c0d01d88 <cx_rng_no_throw>
c0d02c9e:	2140      	movs	r1, #64	; 0x40
c0d02ca0:	4638      	mov	r0, r7
c0d02ca2:	e02b      	b.n	c0d02cfc <io_usb_hid_receive+0xb8>
c0d02ca4:	2802      	cmp	r0, #2
c0d02ca6:	d027      	beq.n	c0d02cf8 <io_usb_hid_receive+0xb4>
c0d02ca8:	2805      	cmp	r0, #5
c0d02caa:	d15c      	bne.n	c0d02d66 <io_usb_hid_receive+0x122>
c0d02cac:	7938      	ldrb	r0, [r7, #4]
c0d02cae:	78f9      	ldrb	r1, [r7, #3]
c0d02cb0:	0209      	lsls	r1, r1, #8
c0d02cb2:	1808      	adds	r0, r1, r0
c0d02cb4:	4c36      	ldr	r4, [pc, #216]	; (c0d02d90 <io_usb_hid_receive+0x14c>)
c0d02cb6:	6821      	ldr	r1, [r4, #0]
c0d02cb8:	2500      	movs	r5, #0
c0d02cba:	4281      	cmp	r1, r0
c0d02cbc:	d15a      	bne.n	c0d02d74 <io_usb_hid_receive+0x130>
c0d02cbe:	6820      	ldr	r0, [r4, #0]
c0d02cc0:	2800      	cmp	r0, #0
c0d02cc2:	d01e      	beq.n	c0d02d02 <io_usb_hid_receive+0xbe>
c0d02cc4:	9802      	ldr	r0, [sp, #8]
c0d02cc6:	1f40      	subs	r0, r0, #5
c0d02cc8:	b282      	uxth	r2, r0
c0d02cca:	4932      	ldr	r1, [pc, #200]	; (c0d02d94 <io_usb_hid_receive+0x150>)
c0d02ccc:	680b      	ldr	r3, [r1, #0]
c0d02cce:	4293      	cmp	r3, r2
c0d02cd0:	d200      	bcs.n	c0d02cd4 <io_usb_hid_receive+0x90>
c0d02cd2:	6808      	ldr	r0, [r1, #0]
c0d02cd4:	b281      	uxth	r1, r0
c0d02cd6:	293b      	cmp	r1, #59	; 0x3b
c0d02cd8:	d300      	bcc.n	c0d02cdc <io_usb_hid_receive+0x98>
c0d02cda:	203b      	movs	r0, #59	; 0x3b
c0d02cdc:	b285      	uxth	r5, r0
c0d02cde:	482e      	ldr	r0, [pc, #184]	; (c0d02d98 <io_usb_hid_receive+0x154>)
c0d02ce0:	6800      	ldr	r0, [r0, #0]
c0d02ce2:	1d79      	adds	r1, r7, #5
c0d02ce4:	e031      	b.n	c0d02d4a <io_usb_hid_receive+0x106>
c0d02ce6:	2500      	movs	r5, #0
c0d02ce8:	71bd      	strb	r5, [r7, #6]
c0d02cea:	717d      	strb	r5, [r7, #5]
c0d02cec:	713d      	strb	r5, [r7, #4]
c0d02cee:	70fd      	strb	r5, [r7, #3]
c0d02cf0:	2140      	movs	r1, #64	; 0x40
c0d02cf2:	4638      	mov	r0, r7
c0d02cf4:	47a0      	blx	r4
c0d02cf6:	e03d      	b.n	c0d02d74 <io_usb_hid_receive+0x130>
c0d02cf8:	4824      	ldr	r0, [pc, #144]	; (c0d02d8c <io_usb_hid_receive+0x148>)
c0d02cfa:	2140      	movs	r1, #64	; 0x40
c0d02cfc:	47a0      	blx	r4
c0d02cfe:	2500      	movs	r5, #0
c0d02d00:	e038      	b.n	c0d02d74 <io_usb_hid_receive+0x130>
c0d02d02:	79b8      	ldrb	r0, [r7, #6]
c0d02d04:	7979      	ldrb	r1, [r7, #5]
c0d02d06:	0209      	lsls	r1, r1, #8
c0d02d08:	1809      	adds	r1, r1, r0
c0d02d0a:	4824      	ldr	r0, [pc, #144]	; (c0d02d9c <io_usb_hid_receive+0x158>)
c0d02d0c:	6001      	str	r1, [r0, #0]
c0d02d0e:	6801      	ldr	r1, [r0, #0]
c0d02d10:	9a00      	ldr	r2, [sp, #0]
c0d02d12:	4291      	cmp	r1, r2
c0d02d14:	d82e      	bhi.n	c0d02d74 <io_usb_hid_receive+0x130>
c0d02d16:	6801      	ldr	r1, [r0, #0]
c0d02d18:	481e      	ldr	r0, [pc, #120]	; (c0d02d94 <io_usb_hid_receive+0x150>)
c0d02d1a:	6001      	str	r1, [r0, #0]
c0d02d1c:	7879      	ldrb	r1, [r7, #1]
c0d02d1e:	783a      	ldrb	r2, [r7, #0]
c0d02d20:	0212      	lsls	r2, r2, #8
c0d02d22:	1851      	adds	r1, r2, r1
c0d02d24:	4a1e      	ldr	r2, [pc, #120]	; (c0d02da0 <io_usb_hid_receive+0x15c>)
c0d02d26:	6011      	str	r1, [r2, #0]
c0d02d28:	491b      	ldr	r1, [pc, #108]	; (c0d02d98 <io_usb_hid_receive+0x154>)
c0d02d2a:	9a01      	ldr	r2, [sp, #4]
c0d02d2c:	600a      	str	r2, [r1, #0]
c0d02d2e:	6802      	ldr	r2, [r0, #0]
c0d02d30:	9902      	ldr	r1, [sp, #8]
c0d02d32:	1fc9      	subs	r1, r1, #7
c0d02d34:	b28b      	uxth	r3, r1
c0d02d36:	429a      	cmp	r2, r3
c0d02d38:	d200      	bcs.n	c0d02d3c <io_usb_hid_receive+0xf8>
c0d02d3a:	6801      	ldr	r1, [r0, #0]
c0d02d3c:	b288      	uxth	r0, r1
c0d02d3e:	2839      	cmp	r0, #57	; 0x39
c0d02d40:	d300      	bcc.n	c0d02d44 <io_usb_hid_receive+0x100>
c0d02d42:	2139      	movs	r1, #57	; 0x39
c0d02d44:	b28d      	uxth	r5, r1
c0d02d46:	1df9      	adds	r1, r7, #7
c0d02d48:	9801      	ldr	r0, [sp, #4]
c0d02d4a:	462a      	mov	r2, r5
c0d02d4c:	f005 f96a 	bl	c0d08024 <__aeabi_memmove>
c0d02d50:	4810      	ldr	r0, [pc, #64]	; (c0d02d94 <io_usb_hid_receive+0x150>)
c0d02d52:	6801      	ldr	r1, [r0, #0]
c0d02d54:	1b49      	subs	r1, r1, r5
c0d02d56:	6001      	str	r1, [r0, #0]
c0d02d58:	480f      	ldr	r0, [pc, #60]	; (c0d02d98 <io_usb_hid_receive+0x154>)
c0d02d5a:	6801      	ldr	r1, [r0, #0]
c0d02d5c:	1949      	adds	r1, r1, r5
c0d02d5e:	6001      	str	r1, [r0, #0]
c0d02d60:	6820      	ldr	r0, [r4, #0]
c0d02d62:	1c40      	adds	r0, r0, #1
c0d02d64:	6020      	str	r0, [r4, #0]
c0d02d66:	480b      	ldr	r0, [pc, #44]	; (c0d02d94 <io_usb_hid_receive+0x150>)
c0d02d68:	6800      	ldr	r0, [r0, #0]
c0d02d6a:	2800      	cmp	r0, #0
c0d02d6c:	d001      	beq.n	c0d02d72 <io_usb_hid_receive+0x12e>
c0d02d6e:	2501      	movs	r5, #1
c0d02d70:	e007      	b.n	c0d02d82 <io_usb_hid_receive+0x13e>
c0d02d72:	2502      	movs	r5, #2
c0d02d74:	4806      	ldr	r0, [pc, #24]	; (c0d02d90 <io_usb_hid_receive+0x14c>)
c0d02d76:	2100      	movs	r1, #0
c0d02d78:	6001      	str	r1, [r0, #0]
c0d02d7a:	4807      	ldr	r0, [pc, #28]	; (c0d02d98 <io_usb_hid_receive+0x154>)
c0d02d7c:	6001      	str	r1, [r0, #0]
c0d02d7e:	4805      	ldr	r0, [pc, #20]	; (c0d02d94 <io_usb_hid_receive+0x150>)
c0d02d80:	6001      	str	r1, [r0, #0]
c0d02d82:	4628      	mov	r0, r5
c0d02d84:	b003      	add	sp, #12
c0d02d86:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d02d88:	20000305 	.word	0x20000305
c0d02d8c:	20000438 	.word	0x20000438
c0d02d90:	20000478 	.word	0x20000478
c0d02d94:	20000480 	.word	0x20000480
c0d02d98:	20000484 	.word	0x20000484
c0d02d9c:	2000047c 	.word	0x2000047c
c0d02da0:	20000488 	.word	0x20000488

c0d02da4 <io_usb_hid_init>:
c0d02da4:	4803      	ldr	r0, [pc, #12]	; (c0d02db4 <io_usb_hid_init+0x10>)
c0d02da6:	2100      	movs	r1, #0
c0d02da8:	6001      	str	r1, [r0, #0]
c0d02daa:	4803      	ldr	r0, [pc, #12]	; (c0d02db8 <io_usb_hid_init+0x14>)
c0d02dac:	6001      	str	r1, [r0, #0]
c0d02dae:	4803      	ldr	r0, [pc, #12]	; (c0d02dbc <io_usb_hid_init+0x18>)
c0d02db0:	6001      	str	r1, [r0, #0]
c0d02db2:	4770      	bx	lr
c0d02db4:	20000478 	.word	0x20000478
c0d02db8:	20000484 	.word	0x20000484
c0d02dbc:	20000480 	.word	0x20000480

c0d02dc0 <io_usb_hid_sent>:
c0d02dc0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d02dc2:	b081      	sub	sp, #4
c0d02dc4:	4a27      	ldr	r2, [pc, #156]	; (c0d02e64 <io_usb_hid_sent+0xa4>)
c0d02dc6:	6815      	ldr	r5, [r2, #0]
c0d02dc8:	4b27      	ldr	r3, [pc, #156]	; (c0d02e68 <io_usb_hid_sent+0xa8>)
c0d02dca:	6819      	ldr	r1, [r3, #0]
c0d02dcc:	2900      	cmp	r1, #0
c0d02dce:	d021      	beq.n	c0d02e14 <io_usb_hid_sent+0x54>
c0d02dd0:	2d00      	cmp	r5, #0
c0d02dd2:	d01f      	beq.n	c0d02e14 <io_usb_hid_sent+0x54>
c0d02dd4:	9000      	str	r0, [sp, #0]
c0d02dd6:	4c27      	ldr	r4, [pc, #156]	; (c0d02e74 <io_usb_hid_sent+0xb4>)
c0d02dd8:	1d67      	adds	r7, r4, #5
c0d02dda:	263b      	movs	r6, #59	; 0x3b
c0d02ddc:	4638      	mov	r0, r7
c0d02dde:	4631      	mov	r1, r6
c0d02de0:	f005 f916 	bl	c0d08010 <__aeabi_memclr>
c0d02de4:	4a20      	ldr	r2, [pc, #128]	; (c0d02e68 <io_usb_hid_sent+0xa8>)
c0d02de6:	2005      	movs	r0, #5
c0d02de8:	70a0      	strb	r0, [r4, #2]
c0d02dea:	4823      	ldr	r0, [pc, #140]	; (c0d02e78 <io_usb_hid_sent+0xb8>)
c0d02dec:	6801      	ldr	r1, [r0, #0]
c0d02dee:	0a09      	lsrs	r1, r1, #8
c0d02df0:	7021      	strb	r1, [r4, #0]
c0d02df2:	6800      	ldr	r0, [r0, #0]
c0d02df4:	7060      	strb	r0, [r4, #1]
c0d02df6:	491d      	ldr	r1, [pc, #116]	; (c0d02e6c <io_usb_hid_sent+0xac>)
c0d02df8:	6808      	ldr	r0, [r1, #0]
c0d02dfa:	0a00      	lsrs	r0, r0, #8
c0d02dfc:	70e0      	strb	r0, [r4, #3]
c0d02dfe:	6808      	ldr	r0, [r1, #0]
c0d02e00:	7120      	strb	r0, [r4, #4]
c0d02e02:	6809      	ldr	r1, [r1, #0]
c0d02e04:	6810      	ldr	r0, [r2, #0]
c0d02e06:	2900      	cmp	r1, #0
c0d02e08:	d00c      	beq.n	c0d02e24 <io_usb_hid_sent+0x64>
c0d02e0a:	283b      	cmp	r0, #59	; 0x3b
c0d02e0c:	d800      	bhi.n	c0d02e10 <io_usb_hid_sent+0x50>
c0d02e0e:	6816      	ldr	r6, [r2, #0]
c0d02e10:	4638      	mov	r0, r7
c0d02e12:	e012      	b.n	c0d02e3a <io_usb_hid_sent+0x7a>
c0d02e14:	4815      	ldr	r0, [pc, #84]	; (c0d02e6c <io_usb_hid_sent+0xac>)
c0d02e16:	2100      	movs	r1, #0
c0d02e18:	6001      	str	r1, [r0, #0]
c0d02e1a:	6011      	str	r1, [r2, #0]
c0d02e1c:	4814      	ldr	r0, [pc, #80]	; (c0d02e70 <io_usb_hid_sent+0xb0>)
c0d02e1e:	7001      	strb	r1, [r0, #0]
c0d02e20:	6019      	str	r1, [r3, #0]
c0d02e22:	e01d      	b.n	c0d02e60 <io_usb_hid_sent+0xa0>
c0d02e24:	2839      	cmp	r0, #57	; 0x39
c0d02e26:	d901      	bls.n	c0d02e2c <io_usb_hid_sent+0x6c>
c0d02e28:	2639      	movs	r6, #57	; 0x39
c0d02e2a:	e000      	b.n	c0d02e2e <io_usb_hid_sent+0x6e>
c0d02e2c:	6816      	ldr	r6, [r2, #0]
c0d02e2e:	6810      	ldr	r0, [r2, #0]
c0d02e30:	0a00      	lsrs	r0, r0, #8
c0d02e32:	7160      	strb	r0, [r4, #5]
c0d02e34:	6810      	ldr	r0, [r2, #0]
c0d02e36:	71a0      	strb	r0, [r4, #6]
c0d02e38:	1de0      	adds	r0, r4, #7
c0d02e3a:	4629      	mov	r1, r5
c0d02e3c:	4632      	mov	r2, r6
c0d02e3e:	f005 f8f1 	bl	c0d08024 <__aeabi_memmove>
c0d02e42:	4b09      	ldr	r3, [pc, #36]	; (c0d02e68 <io_usb_hid_sent+0xa8>)
c0d02e44:	9a00      	ldr	r2, [sp, #0]
c0d02e46:	4907      	ldr	r1, [pc, #28]	; (c0d02e64 <io_usb_hid_sent+0xa4>)
c0d02e48:	6818      	ldr	r0, [r3, #0]
c0d02e4a:	1b80      	subs	r0, r0, r6
c0d02e4c:	6018      	str	r0, [r3, #0]
c0d02e4e:	19a8      	adds	r0, r5, r6
c0d02e50:	6008      	str	r0, [r1, #0]
c0d02e52:	4906      	ldr	r1, [pc, #24]	; (c0d02e6c <io_usb_hid_sent+0xac>)
c0d02e54:	6808      	ldr	r0, [r1, #0]
c0d02e56:	1c40      	adds	r0, r0, #1
c0d02e58:	6008      	str	r0, [r1, #0]
c0d02e5a:	4806      	ldr	r0, [pc, #24]	; (c0d02e74 <io_usb_hid_sent+0xb4>)
c0d02e5c:	2140      	movs	r1, #64	; 0x40
c0d02e5e:	4790      	blx	r2
c0d02e60:	b001      	add	sp, #4
c0d02e62:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d02e64:	20000484 	.word	0x20000484
c0d02e68:	20000480 	.word	0x20000480
c0d02e6c:	20000478 	.word	0x20000478
c0d02e70:	2000040c 	.word	0x2000040c
c0d02e74:	20000438 	.word	0x20000438
c0d02e78:	20000488 	.word	0x20000488

c0d02e7c <io_usb_hid_send>:
c0d02e7c:	b510      	push	{r4, lr}
c0d02e7e:	2900      	cmp	r1, #0
c0d02e80:	d00a      	beq.n	c0d02e98 <io_usb_hid_send+0x1c>
c0d02e82:	4b06      	ldr	r3, [pc, #24]	; (c0d02e9c <io_usb_hid_send+0x20>)
c0d02e84:	2400      	movs	r4, #0
c0d02e86:	601c      	str	r4, [r3, #0]
c0d02e88:	4b05      	ldr	r3, [pc, #20]	; (c0d02ea0 <io_usb_hid_send+0x24>)
c0d02e8a:	6019      	str	r1, [r3, #0]
c0d02e8c:	4b05      	ldr	r3, [pc, #20]	; (c0d02ea4 <io_usb_hid_send+0x28>)
c0d02e8e:	601a      	str	r2, [r3, #0]
c0d02e90:	4a05      	ldr	r2, [pc, #20]	; (c0d02ea8 <io_usb_hid_send+0x2c>)
c0d02e92:	6011      	str	r1, [r2, #0]
c0d02e94:	f7ff ff94 	bl	c0d02dc0 <io_usb_hid_sent>
c0d02e98:	bd10      	pop	{r4, pc}
c0d02e9a:	46c0      	nop			; (mov r8, r8)
c0d02e9c:	20000478 	.word	0x20000478
c0d02ea0:	20000480 	.word	0x20000480
c0d02ea4:	20000484 	.word	0x20000484
c0d02ea8:	2000047c 	.word	0x2000047c

c0d02eac <snprintf>:
c0d02eac:	b081      	sub	sp, #4
c0d02eae:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d02eb0:	b090      	sub	sp, #64	; 0x40
c0d02eb2:	9315      	str	r3, [sp, #84]	; 0x54
c0d02eb4:	2800      	cmp	r0, #0
c0d02eb6:	d100      	bne.n	c0d02eba <snprintf+0xe>
c0d02eb8:	e1af      	b.n	c0d0321a <snprintf+0x36e>
c0d02eba:	460d      	mov	r5, r1
c0d02ebc:	2900      	cmp	r1, #0
c0d02ebe:	d100      	bne.n	c0d02ec2 <snprintf+0x16>
c0d02ec0:	e1ab      	b.n	c0d0321a <snprintf+0x36e>
c0d02ec2:	4614      	mov	r4, r2
c0d02ec4:	4606      	mov	r6, r0
c0d02ec6:	4629      	mov	r1, r5
c0d02ec8:	f005 f8a2 	bl	c0d08010 <__aeabi_memclr>
c0d02ecc:	1e6f      	subs	r7, r5, #1
c0d02ece:	d100      	bne.n	c0d02ed2 <snprintf+0x26>
c0d02ed0:	e1a3      	b.n	c0d0321a <snprintf+0x36e>
c0d02ed2:	a815      	add	r0, sp, #84	; 0x54
c0d02ed4:	900b      	str	r0, [sp, #44]	; 0x2c
c0d02ed6:	7821      	ldrb	r1, [r4, #0]
c0d02ed8:	2900      	cmp	r1, #0
c0d02eda:	d100      	bne.n	c0d02ede <snprintf+0x32>
c0d02edc:	e19d      	b.n	c0d0321a <snprintf+0x36e>
c0d02ede:	4630      	mov	r0, r6
c0d02ee0:	2201      	movs	r2, #1
c0d02ee2:	9206      	str	r2, [sp, #24]
c0d02ee4:	2600      	movs	r6, #0
c0d02ee6:	2900      	cmp	r1, #0
c0d02ee8:	d005      	beq.n	c0d02ef6 <snprintf+0x4a>
c0d02eea:	2925      	cmp	r1, #37	; 0x25
c0d02eec:	d003      	beq.n	c0d02ef6 <snprintf+0x4a>
c0d02eee:	19a1      	adds	r1, r4, r6
c0d02ef0:	7849      	ldrb	r1, [r1, #1]
c0d02ef2:	1c76      	adds	r6, r6, #1
c0d02ef4:	e7f7      	b.n	c0d02ee6 <snprintf+0x3a>
c0d02ef6:	42be      	cmp	r6, r7
c0d02ef8:	d300      	bcc.n	c0d02efc <snprintf+0x50>
c0d02efa:	463e      	mov	r6, r7
c0d02efc:	4605      	mov	r5, r0
c0d02efe:	4621      	mov	r1, r4
c0d02f00:	4632      	mov	r2, r6
c0d02f02:	f005 f88f 	bl	c0d08024 <__aeabi_memmove>
c0d02f06:	1bbf      	subs	r7, r7, r6
c0d02f08:	9709      	str	r7, [sp, #36]	; 0x24
c0d02f0a:	d100      	bne.n	c0d02f0e <snprintf+0x62>
c0d02f0c:	e185      	b.n	c0d0321a <snprintf+0x36e>
c0d02f0e:	19a8      	adds	r0, r5, r6
c0d02f10:	5da1      	ldrb	r1, [r4, r6]
c0d02f12:	19a4      	adds	r4, r4, r6
c0d02f14:	2925      	cmp	r1, #37	; 0x25
c0d02f16:	d000      	beq.n	c0d02f1a <snprintf+0x6e>
c0d02f18:	e17b      	b.n	c0d03212 <snprintf+0x366>
c0d02f1a:	9007      	str	r0, [sp, #28]
c0d02f1c:	1c64      	adds	r4, r4, #1
c0d02f1e:	2000      	movs	r0, #0
c0d02f20:	2320      	movs	r3, #32
c0d02f22:	4607      	mov	r7, r0
c0d02f24:	9008      	str	r0, [sp, #32]
c0d02f26:	7821      	ldrb	r1, [r4, #0]
c0d02f28:	1c64      	adds	r4, r4, #1
c0d02f2a:	2200      	movs	r2, #0
c0d02f2c:	292d      	cmp	r1, #45	; 0x2d
c0d02f2e:	dc0d      	bgt.n	c0d02f4c <snprintf+0xa0>
c0d02f30:	4610      	mov	r0, r2
c0d02f32:	d0f8      	beq.n	c0d02f26 <snprintf+0x7a>
c0d02f34:	2925      	cmp	r1, #37	; 0x25
c0d02f36:	d100      	bne.n	c0d02f3a <snprintf+0x8e>
c0d02f38:	e0e0      	b.n	c0d030fc <snprintf+0x250>
c0d02f3a:	292a      	cmp	r1, #42	; 0x2a
c0d02f3c:	d000      	beq.n	c0d02f40 <snprintf+0x94>
c0d02f3e:	e152      	b.n	c0d031e6 <snprintf+0x33a>
c0d02f40:	7821      	ldrb	r1, [r4, #0]
c0d02f42:	2973      	cmp	r1, #115	; 0x73
c0d02f44:	d000      	beq.n	c0d02f48 <snprintf+0x9c>
c0d02f46:	e163      	b.n	c0d03210 <snprintf+0x364>
c0d02f48:	2002      	movs	r0, #2
c0d02f4a:	e028      	b.n	c0d02f9e <snprintf+0xf2>
c0d02f4c:	2947      	cmp	r1, #71	; 0x47
c0d02f4e:	dc2b      	bgt.n	c0d02fa8 <snprintf+0xfc>
c0d02f50:	460a      	mov	r2, r1
c0d02f52:	3a30      	subs	r2, #48	; 0x30
c0d02f54:	2a0a      	cmp	r2, #10
c0d02f56:	d211      	bcs.n	c0d02f7c <snprintf+0xd0>
c0d02f58:	970a      	str	r7, [sp, #40]	; 0x28
c0d02f5a:	461f      	mov	r7, r3
c0d02f5c:	2230      	movs	r2, #48	; 0x30
c0d02f5e:	460b      	mov	r3, r1
c0d02f60:	4053      	eors	r3, r2
c0d02f62:	9d08      	ldr	r5, [sp, #32]
c0d02f64:	432b      	orrs	r3, r5
c0d02f66:	d000      	beq.n	c0d02f6a <snprintf+0xbe>
c0d02f68:	463a      	mov	r2, r7
c0d02f6a:	230a      	movs	r3, #10
c0d02f6c:	9d08      	ldr	r5, [sp, #32]
c0d02f6e:	436b      	muls	r3, r5
c0d02f70:	1859      	adds	r1, r3, r1
c0d02f72:	3930      	subs	r1, #48	; 0x30
c0d02f74:	9108      	str	r1, [sp, #32]
c0d02f76:	4613      	mov	r3, r2
c0d02f78:	9f0a      	ldr	r7, [sp, #40]	; 0x28
c0d02f7a:	e7d4      	b.n	c0d02f26 <snprintf+0x7a>
c0d02f7c:	292e      	cmp	r1, #46	; 0x2e
c0d02f7e:	d000      	beq.n	c0d02f82 <snprintf+0xd6>
c0d02f80:	e131      	b.n	c0d031e6 <snprintf+0x33a>
c0d02f82:	7821      	ldrb	r1, [r4, #0]
c0d02f84:	292a      	cmp	r1, #42	; 0x2a
c0d02f86:	d000      	beq.n	c0d02f8a <snprintf+0xde>
c0d02f88:	e142      	b.n	c0d03210 <snprintf+0x364>
c0d02f8a:	7860      	ldrb	r0, [r4, #1]
c0d02f8c:	2848      	cmp	r0, #72	; 0x48
c0d02f8e:	d004      	beq.n	c0d02f9a <snprintf+0xee>
c0d02f90:	2873      	cmp	r0, #115	; 0x73
c0d02f92:	d002      	beq.n	c0d02f9a <snprintf+0xee>
c0d02f94:	2868      	cmp	r0, #104	; 0x68
c0d02f96:	d000      	beq.n	c0d02f9a <snprintf+0xee>
c0d02f98:	e139      	b.n	c0d0320e <snprintf+0x362>
c0d02f9a:	1c64      	adds	r4, r4, #1
c0d02f9c:	2001      	movs	r0, #1
c0d02f9e:	990b      	ldr	r1, [sp, #44]	; 0x2c
c0d02fa0:	1d0a      	adds	r2, r1, #4
c0d02fa2:	920b      	str	r2, [sp, #44]	; 0x2c
c0d02fa4:	680f      	ldr	r7, [r1, #0]
c0d02fa6:	e7be      	b.n	c0d02f26 <snprintf+0x7a>
c0d02fa8:	2967      	cmp	r1, #103	; 0x67
c0d02faa:	dc09      	bgt.n	c0d02fc0 <snprintf+0x114>
c0d02fac:	2962      	cmp	r1, #98	; 0x62
c0d02fae:	dc0f      	bgt.n	c0d02fd0 <snprintf+0x124>
c0d02fb0:	2948      	cmp	r1, #72	; 0x48
c0d02fb2:	d100      	bne.n	c0d02fb6 <snprintf+0x10a>
c0d02fb4:	e0a4      	b.n	c0d03100 <snprintf+0x254>
c0d02fb6:	2958      	cmp	r1, #88	; 0x58
c0d02fb8:	d000      	beq.n	c0d02fbc <snprintf+0x110>
c0d02fba:	e114      	b.n	c0d031e6 <snprintf+0x33a>
c0d02fbc:	2001      	movs	r0, #1
c0d02fbe:	e020      	b.n	c0d03002 <snprintf+0x156>
c0d02fc0:	2972      	cmp	r1, #114	; 0x72
c0d02fc2:	dc17      	bgt.n	c0d02ff4 <snprintf+0x148>
c0d02fc4:	2968      	cmp	r1, #104	; 0x68
c0d02fc6:	d100      	bne.n	c0d02fca <snprintf+0x11e>
c0d02fc8:	e09e      	b.n	c0d03108 <snprintf+0x25c>
c0d02fca:	2970      	cmp	r1, #112	; 0x70
c0d02fcc:	d018      	beq.n	c0d03000 <snprintf+0x154>
c0d02fce:	e10a      	b.n	c0d031e6 <snprintf+0x33a>
c0d02fd0:	2963      	cmp	r1, #99	; 0x63
c0d02fd2:	d100      	bne.n	c0d02fd6 <snprintf+0x12a>
c0d02fd4:	e09d      	b.n	c0d03112 <snprintf+0x266>
c0d02fd6:	2964      	cmp	r1, #100	; 0x64
c0d02fd8:	d000      	beq.n	c0d02fdc <snprintf+0x130>
c0d02fda:	e104      	b.n	c0d031e6 <snprintf+0x33a>
c0d02fdc:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0d02fde:	1d01      	adds	r1, r0, #4
c0d02fe0:	910b      	str	r1, [sp, #44]	; 0x2c
c0d02fe2:	6800      	ldr	r0, [r0, #0]
c0d02fe4:	17c1      	asrs	r1, r0, #31
c0d02fe6:	1842      	adds	r2, r0, r1
c0d02fe8:	404a      	eors	r2, r1
c0d02fea:	0fc1      	lsrs	r1, r0, #31
c0d02fec:	2000      	movs	r0, #0
c0d02fee:	9002      	str	r0, [sp, #8]
c0d02ff0:	270a      	movs	r7, #10
c0d02ff2:	e00d      	b.n	c0d03010 <snprintf+0x164>
c0d02ff4:	2973      	cmp	r1, #115	; 0x73
c0d02ff6:	d100      	bne.n	c0d02ffa <snprintf+0x14e>
c0d02ff8:	e097      	b.n	c0d0312a <snprintf+0x27e>
c0d02ffa:	2978      	cmp	r1, #120	; 0x78
c0d02ffc:	d000      	beq.n	c0d03000 <snprintf+0x154>
c0d02ffe:	e0f2      	b.n	c0d031e6 <snprintf+0x33a>
c0d03000:	2000      	movs	r0, #0
c0d03002:	9002      	str	r0, [sp, #8]
c0d03004:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0d03006:	1d01      	adds	r1, r0, #4
c0d03008:	910b      	str	r1, [sp, #44]	; 0x2c
c0d0300a:	6802      	ldr	r2, [r0, #0]
c0d0300c:	2100      	movs	r1, #0
c0d0300e:	2710      	movs	r7, #16
c0d03010:	9e08      	ldr	r6, [sp, #32]
c0d03012:	920a      	str	r2, [sp, #40]	; 0x28
c0d03014:	4297      	cmp	r7, r2
c0d03016:	9303      	str	r3, [sp, #12]
c0d03018:	9104      	str	r1, [sp, #16]
c0d0301a:	d901      	bls.n	c0d03020 <snprintf+0x174>
c0d0301c:	2501      	movs	r5, #1
c0d0301e:	e011      	b.n	c0d03044 <snprintf+0x198>
c0d03020:	1e72      	subs	r2, r6, #1
c0d03022:	4638      	mov	r0, r7
c0d03024:	4605      	mov	r5, r0
c0d03026:	4616      	mov	r6, r2
c0d03028:	2100      	movs	r1, #0
c0d0302a:	4638      	mov	r0, r7
c0d0302c:	462a      	mov	r2, r5
c0d0302e:	460b      	mov	r3, r1
c0d03030:	f004 ffca 	bl	c0d07fc8 <__aeabi_lmul>
c0d03034:	1e4a      	subs	r2, r1, #1
c0d03036:	4191      	sbcs	r1, r2
c0d03038:	9a0a      	ldr	r2, [sp, #40]	; 0x28
c0d0303a:	4290      	cmp	r0, r2
c0d0303c:	d802      	bhi.n	c0d03044 <snprintf+0x198>
c0d0303e:	1e72      	subs	r2, r6, #1
c0d03040:	2900      	cmp	r1, #0
c0d03042:	d0ef      	beq.n	c0d03024 <snprintf+0x178>
c0d03044:	9608      	str	r6, [sp, #32]
c0d03046:	2600      	movs	r6, #0
c0d03048:	9904      	ldr	r1, [sp, #16]
c0d0304a:	2900      	cmp	r1, #0
c0d0304c:	9405      	str	r4, [sp, #20]
c0d0304e:	d101      	bne.n	c0d03054 <snprintf+0x1a8>
c0d03050:	9101      	str	r1, [sp, #4]
c0d03052:	e001      	b.n	c0d03058 <snprintf+0x1ac>
c0d03054:	43f0      	mvns	r0, r6
c0d03056:	9001      	str	r0, [sp, #4]
c0d03058:	9b03      	ldr	r3, [sp, #12]
c0d0305a:	9808      	ldr	r0, [sp, #32]
c0d0305c:	1a40      	subs	r0, r0, r1
c0d0305e:	2900      	cmp	r1, #0
c0d03060:	9c06      	ldr	r4, [sp, #24]
c0d03062:	d009      	beq.n	c0d03078 <snprintf+0x1cc>
c0d03064:	b2d9      	uxtb	r1, r3
c0d03066:	2600      	movs	r6, #0
c0d03068:	2930      	cmp	r1, #48	; 0x30
c0d0306a:	4634      	mov	r4, r6
c0d0306c:	d104      	bne.n	c0d03078 <snprintf+0x1cc>
c0d0306e:	a90c      	add	r1, sp, #48	; 0x30
c0d03070:	222d      	movs	r2, #45	; 0x2d
c0d03072:	700a      	strb	r2, [r1, #0]
c0d03074:	2601      	movs	r6, #1
c0d03076:	9c06      	ldr	r4, [sp, #24]
c0d03078:	1e81      	subs	r1, r0, #2
c0d0307a:	290d      	cmp	r1, #13
c0d0307c:	d80b      	bhi.n	c0d03096 <snprintf+0x1ea>
c0d0307e:	1e41      	subs	r1, r0, #1
c0d03080:	d009      	beq.n	c0d03096 <snprintf+0x1ea>
c0d03082:	a80c      	add	r0, sp, #48	; 0x30
c0d03084:	1980      	adds	r0, r0, r6
c0d03086:	b2da      	uxtb	r2, r3
c0d03088:	f004 ffd0 	bl	c0d0802c <__aeabi_memset>
c0d0308c:	9808      	ldr	r0, [sp, #32]
c0d0308e:	1830      	adds	r0, r6, r0
c0d03090:	9901      	ldr	r1, [sp, #4]
c0d03092:	1840      	adds	r0, r0, r1
c0d03094:	1e46      	subs	r6, r0, #1
c0d03096:	2c00      	cmp	r4, #0
c0d03098:	d103      	bne.n	c0d030a2 <snprintf+0x1f6>
c0d0309a:	a80c      	add	r0, sp, #48	; 0x30
c0d0309c:	212d      	movs	r1, #45	; 0x2d
c0d0309e:	5581      	strb	r1, [r0, r6]
c0d030a0:	1c76      	adds	r6, r6, #1
c0d030a2:	2d00      	cmp	r5, #0
c0d030a4:	d01a      	beq.n	c0d030dc <snprintf+0x230>
c0d030a6:	463c      	mov	r4, r7
c0d030a8:	9802      	ldr	r0, [sp, #8]
c0d030aa:	2800      	cmp	r0, #0
c0d030ac:	d002      	beq.n	c0d030b4 <snprintf+0x208>
c0d030ae:	4f62      	ldr	r7, [pc, #392]	; (c0d03238 <snprintf+0x38c>)
c0d030b0:	447f      	add	r7, pc
c0d030b2:	e001      	b.n	c0d030b8 <snprintf+0x20c>
c0d030b4:	4f5f      	ldr	r7, [pc, #380]	; (c0d03234 <snprintf+0x388>)
c0d030b6:	447f      	add	r7, pc
c0d030b8:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d030ba:	4629      	mov	r1, r5
c0d030bc:	f004 ff3c 	bl	c0d07f38 <__udivsi3>
c0d030c0:	4621      	mov	r1, r4
c0d030c2:	f004 ff75 	bl	c0d07fb0 <__aeabi_uidivmod>
c0d030c6:	5c78      	ldrb	r0, [r7, r1]
c0d030c8:	a90c      	add	r1, sp, #48	; 0x30
c0d030ca:	5588      	strb	r0, [r1, r6]
c0d030cc:	4628      	mov	r0, r5
c0d030ce:	4621      	mov	r1, r4
c0d030d0:	f004 ff32 	bl	c0d07f38 <__udivsi3>
c0d030d4:	1c76      	adds	r6, r6, #1
c0d030d6:	42ac      	cmp	r4, r5
c0d030d8:	4605      	mov	r5, r0
c0d030da:	d9ed      	bls.n	c0d030b8 <snprintf+0x20c>
c0d030dc:	9c09      	ldr	r4, [sp, #36]	; 0x24
c0d030de:	42a6      	cmp	r6, r4
c0d030e0:	d300      	bcc.n	c0d030e4 <snprintf+0x238>
c0d030e2:	4626      	mov	r6, r4
c0d030e4:	a90c      	add	r1, sp, #48	; 0x30
c0d030e6:	9d07      	ldr	r5, [sp, #28]
c0d030e8:	4628      	mov	r0, r5
c0d030ea:	4632      	mov	r2, r6
c0d030ec:	f004 ff9a 	bl	c0d08024 <__aeabi_memmove>
c0d030f0:	1ba7      	subs	r7, r4, r6
c0d030f2:	9c05      	ldr	r4, [sp, #20]
c0d030f4:	d100      	bne.n	c0d030f8 <snprintf+0x24c>
c0d030f6:	e090      	b.n	c0d0321a <snprintf+0x36e>
c0d030f8:	19a8      	adds	r0, r5, r6
c0d030fa:	e076      	b.n	c0d031ea <snprintf+0x33e>
c0d030fc:	2025      	movs	r0, #37	; 0x25
c0d030fe:	e00c      	b.n	c0d0311a <snprintf+0x26e>
c0d03100:	4625      	mov	r5, r4
c0d03102:	4a4a      	ldr	r2, [pc, #296]	; (c0d0322c <snprintf+0x380>)
c0d03104:	447a      	add	r2, pc
c0d03106:	e002      	b.n	c0d0310e <snprintf+0x262>
c0d03108:	4625      	mov	r5, r4
c0d0310a:	4a49      	ldr	r2, [pc, #292]	; (c0d03230 <snprintf+0x384>)
c0d0310c:	447a      	add	r2, pc
c0d0310e:	9b06      	ldr	r3, [sp, #24]
c0d03110:	e00f      	b.n	c0d03132 <snprintf+0x286>
c0d03112:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0d03114:	1d01      	adds	r1, r0, #4
c0d03116:	910b      	str	r1, [sp, #44]	; 0x2c
c0d03118:	6800      	ldr	r0, [r0, #0]
c0d0311a:	9907      	ldr	r1, [sp, #28]
c0d0311c:	7008      	strb	r0, [r1, #0]
c0d0311e:	9809      	ldr	r0, [sp, #36]	; 0x24
c0d03120:	1e40      	subs	r0, r0, #1
c0d03122:	9009      	str	r0, [sp, #36]	; 0x24
c0d03124:	d079      	beq.n	c0d0321a <snprintf+0x36e>
c0d03126:	1c48      	adds	r0, r1, #1
c0d03128:	e05e      	b.n	c0d031e8 <snprintf+0x33c>
c0d0312a:	4625      	mov	r5, r4
c0d0312c:	4a3e      	ldr	r2, [pc, #248]	; (c0d03228 <snprintf+0x37c>)
c0d0312e:	447a      	add	r2, pc
c0d03130:	2300      	movs	r3, #0
c0d03132:	990b      	ldr	r1, [sp, #44]	; 0x2c
c0d03134:	1d0c      	adds	r4, r1, #4
c0d03136:	940b      	str	r4, [sp, #44]	; 0x2c
c0d03138:	b2c0      	uxtb	r0, r0
c0d0313a:	6809      	ldr	r1, [r1, #0]
c0d0313c:	2802      	cmp	r0, #2
c0d0313e:	d04e      	beq.n	c0d031de <snprintf+0x332>
c0d03140:	2801      	cmp	r0, #1
c0d03142:	462c      	mov	r4, r5
c0d03144:	d00a      	beq.n	c0d0315c <snprintf+0x2b0>
c0d03146:	2800      	cmp	r0, #0
c0d03148:	4637      	mov	r7, r6
c0d0314a:	d107      	bne.n	c0d0315c <snprintf+0x2b0>
c0d0314c:	4625      	mov	r5, r4
c0d0314e:	2000      	movs	r0, #0
c0d03150:	5c0c      	ldrb	r4, [r1, r0]
c0d03152:	1c40      	adds	r0, r0, #1
c0d03154:	2c00      	cmp	r4, #0
c0d03156:	d1fb      	bne.n	c0d03150 <snprintf+0x2a4>
c0d03158:	1e47      	subs	r7, r0, #1
c0d0315a:	462c      	mov	r4, r5
c0d0315c:	2b00      	cmp	r3, #0
c0d0315e:	d01e      	beq.n	c0d0319e <snprintf+0x2f2>
c0d03160:	2f00      	cmp	r7, #0
c0d03162:	d040      	beq.n	c0d031e6 <snprintf+0x33a>
c0d03164:	0078      	lsls	r0, r7, #1
c0d03166:	9b09      	ldr	r3, [sp, #36]	; 0x24
c0d03168:	1a18      	subs	r0, r3, r0
c0d0316a:	9b09      	ldr	r3, [sp, #36]	; 0x24
c0d0316c:	2b01      	cmp	r3, #1
c0d0316e:	9e07      	ldr	r6, [sp, #28]
c0d03170:	d953      	bls.n	c0d0321a <snprintf+0x36e>
c0d03172:	780b      	ldrb	r3, [r1, #0]
c0d03174:	4625      	mov	r5, r4
c0d03176:	091c      	lsrs	r4, r3, #4
c0d03178:	5d14      	ldrb	r4, [r2, r4]
c0d0317a:	7034      	strb	r4, [r6, #0]
c0d0317c:	240f      	movs	r4, #15
c0d0317e:	401c      	ands	r4, r3
c0d03180:	5d13      	ldrb	r3, [r2, r4]
c0d03182:	7073      	strb	r3, [r6, #1]
c0d03184:	9b09      	ldr	r3, [sp, #36]	; 0x24
c0d03186:	1e9b      	subs	r3, r3, #2
c0d03188:	9309      	str	r3, [sp, #36]	; 0x24
c0d0318a:	d046      	beq.n	c0d0321a <snprintf+0x36e>
c0d0318c:	462c      	mov	r4, r5
c0d0318e:	1cb6      	adds	r6, r6, #2
c0d03190:	9607      	str	r6, [sp, #28]
c0d03192:	1c49      	adds	r1, r1, #1
c0d03194:	1e7f      	subs	r7, r7, #1
c0d03196:	d1e8      	bne.n	c0d0316a <snprintf+0x2be>
c0d03198:	4607      	mov	r7, r0
c0d0319a:	9807      	ldr	r0, [sp, #28]
c0d0319c:	e025      	b.n	c0d031ea <snprintf+0x33e>
c0d0319e:	9809      	ldr	r0, [sp, #36]	; 0x24
c0d031a0:	4287      	cmp	r7, r0
c0d031a2:	463e      	mov	r6, r7
c0d031a4:	d301      	bcc.n	c0d031aa <snprintf+0x2fe>
c0d031a6:	4606      	mov	r6, r0
c0d031a8:	4607      	mov	r7, r0
c0d031aa:	9d07      	ldr	r5, [sp, #28]
c0d031ac:	4628      	mov	r0, r5
c0d031ae:	4632      	mov	r2, r6
c0d031b0:	f004 ff38 	bl	c0d08024 <__aeabi_memmove>
c0d031b4:	9909      	ldr	r1, [sp, #36]	; 0x24
c0d031b6:	1b89      	subs	r1, r1, r6
c0d031b8:	d02f      	beq.n	c0d0321a <snprintf+0x36e>
c0d031ba:	19e8      	adds	r0, r5, r7
c0d031bc:	9a08      	ldr	r2, [sp, #32]
c0d031be:	42b2      	cmp	r2, r6
c0d031c0:	d915      	bls.n	c0d031ee <snprintf+0x342>
c0d031c2:	1b95      	subs	r5, r2, r6
c0d031c4:	460f      	mov	r7, r1
c0d031c6:	428d      	cmp	r5, r1
c0d031c8:	d300      	bcc.n	c0d031cc <snprintf+0x320>
c0d031ca:	463d      	mov	r5, r7
c0d031cc:	2220      	movs	r2, #32
c0d031ce:	4606      	mov	r6, r0
c0d031d0:	4629      	mov	r1, r5
c0d031d2:	f004 ff2b 	bl	c0d0802c <__aeabi_memset>
c0d031d6:	1b7f      	subs	r7, r7, r5
c0d031d8:	d01f      	beq.n	c0d0321a <snprintf+0x36e>
c0d031da:	1970      	adds	r0, r6, r5
c0d031dc:	e005      	b.n	c0d031ea <snprintf+0x33e>
c0d031de:	7808      	ldrb	r0, [r1, #0]
c0d031e0:	2800      	cmp	r0, #0
c0d031e2:	462c      	mov	r4, r5
c0d031e4:	d005      	beq.n	c0d031f2 <snprintf+0x346>
c0d031e6:	9807      	ldr	r0, [sp, #28]
c0d031e8:	9f09      	ldr	r7, [sp, #36]	; 0x24
c0d031ea:	7821      	ldrb	r1, [r4, #0]
c0d031ec:	e012      	b.n	c0d03214 <snprintf+0x368>
c0d031ee:	460f      	mov	r7, r1
c0d031f0:	e7fb      	b.n	c0d031ea <snprintf+0x33e>
c0d031f2:	9909      	ldr	r1, [sp, #36]	; 0x24
c0d031f4:	428f      	cmp	r7, r1
c0d031f6:	d300      	bcc.n	c0d031fa <snprintf+0x34e>
c0d031f8:	460f      	mov	r7, r1
c0d031fa:	2220      	movs	r2, #32
c0d031fc:	9d07      	ldr	r5, [sp, #28]
c0d031fe:	4628      	mov	r0, r5
c0d03200:	4639      	mov	r1, r7
c0d03202:	f004 ff13 	bl	c0d0802c <__aeabi_memset>
c0d03206:	9909      	ldr	r1, [sp, #36]	; 0x24
c0d03208:	1bc9      	subs	r1, r1, r7
c0d0320a:	d1d6      	bne.n	c0d031ba <snprintf+0x30e>
c0d0320c:	e005      	b.n	c0d0321a <snprintf+0x36e>
c0d0320e:	212a      	movs	r1, #42	; 0x2a
c0d03210:	9807      	ldr	r0, [sp, #28]
c0d03212:	9f09      	ldr	r7, [sp, #36]	; 0x24
c0d03214:	2900      	cmp	r1, #0
c0d03216:	d000      	beq.n	c0d0321a <snprintf+0x36e>
c0d03218:	e664      	b.n	c0d02ee4 <snprintf+0x38>
c0d0321a:	2000      	movs	r0, #0
c0d0321c:	b010      	add	sp, #64	; 0x40
c0d0321e:	bcf0      	pop	{r4, r5, r6, r7}
c0d03220:	bc02      	pop	{r1}
c0d03222:	b001      	add	sp, #4
c0d03224:	4708      	bx	r1
c0d03226:	46c0      	nop			; (mov r8, r8)
c0d03228:	000058da 	.word	0x000058da
c0d0322c:	00005914 	.word	0x00005914
c0d03230:	000058fc 	.word	0x000058fc
c0d03234:	00005952 	.word	0x00005952
c0d03238:	00005968 	.word	0x00005968

c0d0323c <parser_parse>:
c0d0323c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d0323e:	b081      	sub	sp, #4
c0d03240:	461c      	mov	r4, r3
c0d03242:	4605      	mov	r5, r0
c0d03244:	2000      	movs	r0, #0
c0d03246:	80e8      	strh	r0, [r5, #6]
c0d03248:	424b      	negs	r3, r1
c0d0324a:	414b      	adcs	r3, r1
c0d0324c:	b297      	uxth	r7, r2
c0d0324e:	427e      	negs	r6, r7
c0d03250:	417e      	adcs	r6, r7
c0d03252:	431e      	orrs	r6, r3
c0d03254:	4603      	mov	r3, r0
c0d03256:	d100      	bne.n	c0d0325a <parser_parse+0x1e>
c0d03258:	4613      	mov	r3, r2
c0d0325a:	80ab      	strh	r3, [r5, #4]
c0d0325c:	2e00      	cmp	r6, #0
c0d0325e:	d100      	bne.n	c0d03262 <parser_parse+0x26>
c0d03260:	4608      	mov	r0, r1
c0d03262:	6028      	str	r0, [r5, #0]
c0d03264:	f004 fe32 	bl	c0d07ecc <check_app_canary>
c0d03268:	2e00      	cmp	r6, #0
c0d0326a:	d001      	beq.n	c0d03270 <parser_parse+0x34>
c0d0326c:	2402      	movs	r4, #2
c0d0326e:	e014      	b.n	c0d0329a <parser_parse+0x5e>
c0d03270:	60ac      	str	r4, [r5, #8]
c0d03272:	7820      	ldrb	r0, [r4, #0]
c0d03274:	2801      	cmp	r0, #1
c0d03276:	d104      	bne.n	c0d03282 <parser_parse+0x46>
c0d03278:	4628      	mov	r0, r5
c0d0327a:	4621      	mov	r1, r4
c0d0327c:	f001 fa42 	bl	c0d04704 <_read_text_tx>
c0d03280:	e003      	b.n	c0d0328a <parser_parse+0x4e>
c0d03282:	4628      	mov	r0, r5
c0d03284:	4621      	mov	r1, r4
c0d03286:	f001 fa1d 	bl	c0d046c4 <_read_json_tx>
c0d0328a:	4604      	mov	r4, r0
c0d0328c:	f004 fe1e 	bl	c0d07ecc <check_app_canary>
c0d03290:	2c00      	cmp	r4, #0
c0d03292:	d102      	bne.n	c0d0329a <parser_parse+0x5e>
c0d03294:	4802      	ldr	r0, [pc, #8]	; (c0d032a0 <parser_parse+0x64>)
c0d03296:	2400      	movs	r4, #0
c0d03298:	7004      	strb	r4, [r0, #0]
c0d0329a:	4620      	mov	r0, r4
c0d0329c:	b001      	add	sp, #4
c0d0329e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d032a0:	20000ab2 	.word	0x20000ab2

c0d032a4 <parser_validate>:
c0d032a4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d032a6:	b09b      	sub	sp, #108	; 0x6c
c0d032a8:	4604      	mov	r4, r0
c0d032aa:	6880      	ldr	r0, [r0, #8]
c0d032ac:	7800      	ldrb	r0, [r0, #0]
c0d032ae:	2800      	cmp	r0, #0
c0d032b0:	d02b      	beq.n	c0d0330a <parser_validate+0x66>
c0d032b2:	a91a      	add	r1, sp, #104	; 0x68
c0d032b4:	2600      	movs	r6, #0
c0d032b6:	700e      	strb	r6, [r1, #0]
c0d032b8:	4620      	mov	r0, r4
c0d032ba:	f000 f835 	bl	c0d03328 <parser_getNumItems>
c0d032be:	4605      	mov	r5, r0
c0d032c0:	f004 fe04 	bl	c0d07ecc <check_app_canary>
c0d032c4:	2d00      	cmp	r5, #0
c0d032c6:	d129      	bne.n	c0d0331c <parser_validate+0x78>
c0d032c8:	a805      	add	r0, sp, #20
c0d032ca:	7006      	strb	r6, [r0, #0]
c0d032cc:	a81a      	add	r0, sp, #104	; 0x68
c0d032ce:	7800      	ldrb	r0, [r0, #0]
c0d032d0:	2800      	cmp	r0, #0
c0d032d2:	4635      	mov	r5, r6
c0d032d4:	d022      	beq.n	c0d0331c <parser_validate+0x78>
c0d032d6:	2600      	movs	r6, #0
c0d032d8:	4637      	mov	r7, r6
c0d032da:	a805      	add	r0, sp, #20
c0d032dc:	9003      	str	r0, [sp, #12]
c0d032de:	9602      	str	r6, [sp, #8]
c0d032e0:	2328      	movs	r3, #40	; 0x28
c0d032e2:	9301      	str	r3, [sp, #4]
c0d032e4:	a806      	add	r0, sp, #24
c0d032e6:	9000      	str	r0, [sp, #0]
c0d032e8:	b2f9      	uxtb	r1, r7
c0d032ea:	aa10      	add	r2, sp, #64	; 0x40
c0d032ec:	4620      	mov	r0, r4
c0d032ee:	f000 f835 	bl	c0d0335c <parser_getItem>
c0d032f2:	4605      	mov	r5, r0
c0d032f4:	f004 fdea 	bl	c0d07ecc <check_app_canary>
c0d032f8:	2d00      	cmp	r5, #0
c0d032fa:	d10f      	bne.n	c0d0331c <parser_validate+0x78>
c0d032fc:	1c7f      	adds	r7, r7, #1
c0d032fe:	a81a      	add	r0, sp, #104	; 0x68
c0d03300:	7800      	ldrb	r0, [r0, #0]
c0d03302:	4287      	cmp	r7, r0
c0d03304:	d3e9      	bcc.n	c0d032da <parser_validate+0x36>
c0d03306:	2500      	movs	r5, #0
c0d03308:	e008      	b.n	c0d0331c <parser_validate+0x78>
c0d0330a:	4806      	ldr	r0, [pc, #24]	; (c0d03324 <parser_validate+0x80>)
c0d0330c:	3008      	adds	r0, #8
c0d0330e:	f002 fdd9 	bl	c0d05ec4 <tx_validate>
c0d03312:	4605      	mov	r5, r0
c0d03314:	f004 fdda 	bl	c0d07ecc <check_app_canary>
c0d03318:	2d00      	cmp	r5, #0
c0d0331a:	d0ca      	beq.n	c0d032b2 <parser_validate+0xe>
c0d0331c:	4628      	mov	r0, r5
c0d0331e:	b01b      	add	sp, #108	; 0x6c
c0d03320:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d03322:	46c0      	nop			; (mov r8, r8)
c0d03324:	2000048c 	.word	0x2000048c

c0d03328 <parser_getNumItems>:
c0d03328:	b570      	push	{r4, r5, r6, lr}
c0d0332a:	460d      	mov	r5, r1
c0d0332c:	4606      	mov	r6, r0
c0d0332e:	2400      	movs	r4, #0
c0d03330:	700c      	strb	r4, [r1, #0]
c0d03332:	6880      	ldr	r0, [r0, #8]
c0d03334:	7800      	ldrb	r0, [r0, #0]
c0d03336:	2801      	cmp	r0, #1
c0d03338:	d109      	bne.n	c0d0334e <parser_getNumItems+0x26>
c0d0333a:	f7fd fcd7 	bl	c0d00cec <app_mode_expert>
c0d0333e:	68b2      	ldr	r2, [r6, #8]
c0d03340:	6851      	ldr	r1, [r2, #4]
c0d03342:	2800      	cmp	r0, #0
c0d03344:	d101      	bne.n	c0d0334a <parser_getNumItems+0x22>
c0d03346:	7a10      	ldrb	r0, [r2, #8]
c0d03348:	1a09      	subs	r1, r1, r0
c0d0334a:	7029      	strb	r1, [r5, #0]
c0d0334c:	e003      	b.n	c0d03356 <parser_getNumItems+0x2e>
c0d0334e:	4628      	mov	r0, r5
c0d03350:	f001 ff8e 	bl	c0d05270 <tx_display_numItems>
c0d03354:	4604      	mov	r4, r0
c0d03356:	4620      	mov	r0, r4
c0d03358:	bd70      	pop	{r4, r5, r6, pc}
	...

c0d0335c <parser_getItem>:
c0d0335c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d0335e:	b0ff      	sub	sp, #508	; 0x1fc
c0d03360:	b0c8      	sub	sp, #288	; 0x120
c0d03362:	461e      	mov	r6, r3
c0d03364:	9115      	str	r1, [sp, #84]	; 0x54
c0d03366:	4604      	mov	r4, r0
c0d03368:	6880      	ldr	r0, [r0, #8]
c0d0336a:	7800      	ldrb	r0, [r0, #0]
c0d0336c:	99cf      	ldr	r1, [sp, #828]	; 0x33c
c0d0336e:	2300      	movs	r3, #0
c0d03370:	9113      	str	r1, [sp, #76]	; 0x4c
c0d03372:	700b      	strb	r3, [r1, #0]
c0d03374:	99ce      	ldr	r1, [sp, #824]	; 0x338
c0d03376:	9111      	str	r1, [sp, #68]	; 0x44
c0d03378:	9fcd      	ldr	r7, [sp, #820]	; 0x334
c0d0337a:	9dcc      	ldr	r5, [sp, #816]	; 0x330
c0d0337c:	2801      	cmp	r0, #1
c0d0337e:	9212      	str	r2, [sp, #72]	; 0x48
c0d03380:	d000      	beq.n	c0d03384 <parser_getItem+0x28>
c0d03382:	e0c1      	b.n	c0d03508 <parser_getItem+0x1ac>
c0d03384:	4610      	mov	r0, r2
c0d03386:	4631      	mov	r1, r6
c0d03388:	f004 fe58 	bl	c0d0803c <explicit_bzero>
c0d0338c:	4628      	mov	r0, r5
c0d0338e:	4639      	mov	r1, r7
c0d03390:	f004 fe54 	bl	c0d0803c <explicit_bzero>
c0d03394:	a998      	add	r1, sp, #608	; 0x260
c0d03396:	4620      	mov	r0, r4
c0d03398:	f7ff ffc6 	bl	c0d03328 <parser_getNumItems>
c0d0339c:	940f      	str	r4, [sp, #60]	; 0x3c
c0d0339e:	463c      	mov	r4, r7
c0d033a0:	4637      	mov	r7, r6
c0d033a2:	4606      	mov	r6, r0
c0d033a4:	f004 fd92 	bl	c0d07ecc <check_app_canary>
c0d033a8:	2e00      	cmp	r6, #0
c0d033aa:	d000      	beq.n	c0d033ae <parser_getItem+0x52>
c0d033ac:	e132      	b.n	c0d03614 <parser_getItem+0x2b8>
c0d033ae:	9e0f      	ldr	r6, [sp, #60]	; 0x3c
c0d033b0:	9410      	str	r4, [sp, #64]	; 0x40
c0d033b2:	9514      	str	r5, [sp, #80]	; 0x50
c0d033b4:	970d      	str	r7, [sp, #52]	; 0x34
c0d033b6:	a898      	add	r0, sp, #608	; 0x260
c0d033b8:	7800      	ldrb	r0, [r0, #0]
c0d033ba:	2800      	cmp	r0, #0
c0d033bc:	d100      	bne.n	c0d033c0 <parser_getItem+0x64>
c0d033be:	e126      	b.n	c0d0360e <parser_getItem+0x2b2>
c0d033c0:	9d15      	ldr	r5, [sp, #84]	; 0x54
c0d033c2:	42a8      	cmp	r0, r5
c0d033c4:	d800      	bhi.n	c0d033c8 <parser_getItem+0x6c>
c0d033c6:	e124      	b.n	c0d03612 <parser_getItem+0x2b6>
c0d033c8:	f004 fd80 	bl	c0d07ecc <check_app_canary>
c0d033cc:	a899      	add	r0, sp, #612	; 0x264
c0d033ce:	1d00      	adds	r0, r0, #4
c0d033d0:	2112      	movs	r1, #18
c0d033d2:	f004 fe1d 	bl	c0d08010 <__aeabi_memclr>
c0d033d6:	4634      	mov	r4, r6
c0d033d8:	88b1      	ldrh	r1, [r6, #4]
c0d033da:	88f2      	ldrh	r2, [r6, #6]
c0d033dc:	6830      	ldr	r0, [r6, #0]
c0d033de:	ab8f      	add	r3, sp, #572	; 0x23c
c0d033e0:	9300      	str	r3, [sp, #0]
c0d033e2:	1880      	adds	r0, r0, r2
c0d033e4:	1a89      	subs	r1, r1, r2
c0d033e6:	2200      	movs	r2, #0
c0d033e8:	ab1a      	add	r3, sp, #104	; 0x68
c0d033ea:	4617      	mov	r7, r2
c0d033ec:	f7fd ff20 	bl	c0d01230 <cbor_parser_init>
c0d033f0:	2800      	cmp	r0, #0
c0d033f2:	d100      	bne.n	c0d033f6 <parser_getItem+0x9a>
c0d033f4:	e117      	b.n	c0d03626 <parser_getItem+0x2ca>
c0d033f6:	f7fd fd53 	bl	c0d00ea0 <parser_mapCborError>
c0d033fa:	4606      	mov	r6, r0
c0d033fc:	f004 fd66 	bl	c0d07ecc <check_app_canary>
c0d03400:	2e00      	cmp	r6, #0
c0d03402:	d000      	beq.n	c0d03406 <parser_getItem+0xaa>
c0d03404:	e106      	b.n	c0d03614 <parser_getItem+0x2b8>
c0d03406:	f7fd fc71 	bl	c0d00cec <app_mode_expert>
c0d0340a:	2800      	cmp	r0, #0
c0d0340c:	d000      	beq.n	c0d03410 <parser_getItem+0xb4>
c0d0340e:	e387      	b.n	c0d03b20 <parser_getItem+0x7c4>
c0d03410:	68a0      	ldr	r0, [r4, #8]
c0d03412:	6840      	ldr	r0, [r0, #4]
c0d03414:	2609      	movs	r6, #9
c0d03416:	42a8      	cmp	r0, r5
c0d03418:	d801      	bhi.n	c0d0341e <parser_getItem+0xc2>
c0d0341a:	f000 fdeb 	bl	c0d03ff4 <parser_getItem+0xc98>
c0d0341e:	1c68      	adds	r0, r5, #1
c0d03420:	900c      	str	r0, [sp, #48]	; 0x30
c0d03422:	463d      	mov	r5, r7
c0d03424:	970e      	str	r7, [sp, #56]	; 0x38
c0d03426:	88a1      	ldrh	r1, [r4, #4]
c0d03428:	88e2      	ldrh	r2, [r4, #6]
c0d0342a:	6820      	ldr	r0, [r4, #0]
c0d0342c:	ab8f      	add	r3, sp, #572	; 0x23c
c0d0342e:	9300      	str	r3, [sp, #0]
c0d03430:	1880      	adds	r0, r0, r2
c0d03432:	1a89      	subs	r1, r1, r2
c0d03434:	2200      	movs	r2, #0
c0d03436:	ab1a      	add	r3, sp, #104	; 0x68
c0d03438:	f7fd fefa 	bl	c0d01230 <cbor_parser_init>
c0d0343c:	2800      	cmp	r0, #0
c0d0343e:	d019      	beq.n	c0d03474 <parser_getItem+0x118>
c0d03440:	f7fd fd2e 	bl	c0d00ea0 <parser_mapCborError>
c0d03444:	a899      	add	r0, sp, #612	; 0x264
c0d03446:	7d40      	ldrb	r0, [r0, #21]
c0d03448:	2800      	cmp	r0, #0
c0d0344a:	d10c      	bne.n	c0d03466 <parser_getItem+0x10a>
c0d0344c:	980e      	ldr	r0, [sp, #56]	; 0x38
c0d0344e:	1c40      	adds	r0, r0, #1
c0d03450:	900e      	str	r0, [sp, #56]	; 0x38
c0d03452:	b2c0      	uxtb	r0, r0
c0d03454:	990c      	ldr	r1, [sp, #48]	; 0x30
c0d03456:	4281      	cmp	r1, r0
c0d03458:	d100      	bne.n	c0d0345c <parser_getItem+0x100>
c0d0345a:	e35f      	b.n	c0d03b1c <parser_getItem+0x7c0>
c0d0345c:	9915      	ldr	r1, [sp, #84]	; 0x54
c0d0345e:	4288      	cmp	r0, r1
c0d03460:	d901      	bls.n	c0d03466 <parser_getItem+0x10a>
c0d03462:	f000 fdc7 	bl	c0d03ff4 <parser_getItem+0xc98>
c0d03466:	1c6d      	adds	r5, r5, #1
c0d03468:	1c7f      	adds	r7, r7, #1
c0d0346a:	68a0      	ldr	r0, [r4, #8]
c0d0346c:	6840      	ldr	r0, [r0, #4]
c0d0346e:	4287      	cmp	r7, r0
c0d03470:	d3d9      	bcc.n	c0d03426 <parser_getItem+0xca>
c0d03472:	e353      	b.n	c0d03b1c <parser_getItem+0x7c0>
c0d03474:	a88f      	add	r0, sp, #572	; 0x23c
c0d03476:	9991      	ldr	r1, [sp, #580]	; 0x244
c0d03478:	2900      	cmp	r1, #0
c0d0347a:	d0e3      	beq.n	c0d03444 <parser_getItem+0xe8>
c0d0347c:	7b80      	ldrb	r0, [r0, #14]
c0d0347e:	28a0      	cmp	r0, #160	; 0xa0
c0d03480:	d1e0      	bne.n	c0d03444 <parser_getItem+0xe8>
c0d03482:	a88f      	add	r0, sp, #572	; 0x23c
c0d03484:	a91c      	add	r1, sp, #112	; 0x70
c0d03486:	f7fe f895 	bl	c0d015b4 <cbor_value_enter_container>
c0d0348a:	2800      	cmp	r0, #0
c0d0348c:	d1d8      	bne.n	c0d03440 <parser_getItem+0xe4>
c0d0348e:	a81c      	add	r0, sp, #112	; 0x70
c0d03490:	f7fe f81c 	bl	c0d014cc <cbor_value_advance>
c0d03494:	2800      	cmp	r0, #0
c0d03496:	d1d3      	bne.n	c0d03440 <parser_getItem+0xe4>
c0d03498:	a81c      	add	r0, sp, #112	; 0x70
c0d0349a:	a9a6      	add	r1, sp, #664	; 0x298
c0d0349c:	f7fe f88a 	bl	c0d015b4 <cbor_value_enter_container>
c0d034a0:	2800      	cmp	r0, #0
c0d034a2:	d1cd      	bne.n	c0d03440 <parser_getItem+0xe4>
c0d034a4:	0638      	lsls	r0, r7, #24
c0d034a6:	d007      	beq.n	c0d034b8 <parser_getItem+0x15c>
c0d034a8:	b2ec      	uxtb	r4, r5
c0d034aa:	a8a6      	add	r0, sp, #664	; 0x298
c0d034ac:	f7fe f80e 	bl	c0d014cc <cbor_value_advance>
c0d034b0:	2800      	cmp	r0, #0
c0d034b2:	d10f      	bne.n	c0d034d4 <parser_getItem+0x178>
c0d034b4:	1e64      	subs	r4, r4, #1
c0d034b6:	d1f8      	bne.n	c0d034aa <parser_getItem+0x14e>
c0d034b8:	a8a6      	add	r0, sp, #664	; 0x298
c0d034ba:	7bc0      	ldrb	r0, [r0, #15]
c0d034bc:	06c1      	lsls	r1, r0, #27
c0d034be:	d406      	bmi.n	c0d034ce <parser_getItem+0x172>
c0d034c0:	0780      	lsls	r0, r0, #30
c0d034c2:	9c0f      	ldr	r4, [sp, #60]	; 0x3c
c0d034c4:	d40a      	bmi.n	c0d034dc <parser_getItem+0x180>
c0d034c6:	a8a6      	add	r0, sp, #664	; 0x298
c0d034c8:	8980      	ldrh	r0, [r0, #12]
c0d034ca:	9099      	str	r0, [sp, #612]	; 0x264
c0d034cc:	e00c      	b.n	c0d034e8 <parser_getItem+0x18c>
c0d034ce:	2002      	movs	r0, #2
c0d034d0:	9c0f      	ldr	r4, [sp, #60]	; 0x3c
c0d034d2:	e7b5      	b.n	c0d03440 <parser_getItem+0xe4>
c0d034d4:	f7fd fce4 	bl	c0d00ea0 <parser_mapCborError>
c0d034d8:	9c0f      	ldr	r4, [sp, #60]	; 0x3c
c0d034da:	e7b3      	b.n	c0d03444 <parser_getItem+0xe8>
c0d034dc:	a8a6      	add	r0, sp, #664	; 0x298
c0d034de:	f7fd fe5b 	bl	c0d01198 <_cbor_value_decode_int64_internal>
c0d034e2:	9099      	str	r0, [sp, #612]	; 0x264
c0d034e4:	2900      	cmp	r1, #0
c0d034e6:	d10c      	bne.n	c0d03502 <parser_getItem+0x1a6>
c0d034e8:	a8a6      	add	r0, sp, #664	; 0x298
c0d034ea:	a916      	add	r1, sp, #88	; 0x58
c0d034ec:	f7fe f862 	bl	c0d015b4 <cbor_value_enter_container>
c0d034f0:	2800      	cmp	r0, #0
c0d034f2:	d1a5      	bne.n	c0d03440 <parser_getItem+0xe4>
c0d034f4:	a816      	add	r0, sp, #88	; 0x58
c0d034f6:	a999      	add	r1, sp, #612	; 0x264
c0d034f8:	f7fd fce6 	bl	c0d00ec8 <cbor_get_containerInfo>
c0d034fc:	f004 fce6 	bl	c0d07ecc <check_app_canary>
c0d03500:	e7a0      	b.n	c0d03444 <parser_getItem+0xe8>
c0d03502:	48bc      	ldr	r0, [pc, #752]	; (c0d037f4 <parser_getItem+0x498>)
c0d03504:	1c80      	adds	r0, r0, #2
c0d03506:	e79b      	b.n	c0d03440 <parser_getItem+0xe4>
c0d03508:	930e      	str	r3, [sp, #56]	; 0x38
c0d0350a:	a88f      	add	r0, sp, #572	; 0x23c
c0d0350c:	2123      	movs	r1, #35	; 0x23
c0d0350e:	9514      	str	r5, [sp, #80]	; 0x50
c0d03510:	4615      	mov	r5, r2
c0d03512:	f004 fd7d 	bl	c0d08010 <__aeabi_memclr>
c0d03516:	4628      	mov	r0, r5
c0d03518:	9d14      	ldr	r5, [sp, #80]	; 0x50
c0d0351a:	4631      	mov	r1, r6
c0d0351c:	f004 fd8e 	bl	c0d0803c <explicit_bzero>
c0d03520:	4628      	mov	r0, r5
c0d03522:	9710      	str	r7, [sp, #64]	; 0x40
c0d03524:	4639      	mov	r1, r7
c0d03526:	f004 fd89 	bl	c0d0803c <explicit_bzero>
c0d0352a:	a98e      	add	r1, sp, #568	; 0x238
c0d0352c:	4620      	mov	r0, r4
c0d0352e:	f7ff fefb 	bl	c0d03328 <parser_getNumItems>
c0d03532:	4634      	mov	r4, r6
c0d03534:	4606      	mov	r6, r0
c0d03536:	f004 fcc9 	bl	c0d07ecc <check_app_canary>
c0d0353a:	2e00      	cmp	r6, #0
c0d0353c:	d16a      	bne.n	c0d03614 <parser_getItem+0x2b8>
c0d0353e:	940d      	str	r4, [sp, #52]	; 0x34
c0d03540:	f004 fcc4 	bl	c0d07ecc <check_app_canary>
c0d03544:	a88e      	add	r0, sp, #568	; 0x238
c0d03546:	7801      	ldrb	r1, [r0, #0]
c0d03548:	2900      	cmp	r1, #0
c0d0354a:	d060      	beq.n	c0d0360e <parser_getItem+0x2b2>
c0d0354c:	9815      	ldr	r0, [sp, #84]	; 0x54
c0d0354e:	4281      	cmp	r1, r0
c0d03550:	d95f      	bls.n	c0d03612 <parser_getItem+0x2b6>
c0d03552:	ab8d      	add	r3, sp, #564	; 0x234
c0d03554:	9d0e      	ldr	r5, [sp, #56]	; 0x38
c0d03556:	801d      	strh	r5, [r3, #0]
c0d03558:	a98f      	add	r1, sp, #572	; 0x23c
c0d0355a:	2223      	movs	r2, #35	; 0x23
c0d0355c:	f001 fef6 	bl	c0d0534c <tx_display_query>
c0d03560:	4606      	mov	r6, r0
c0d03562:	f004 fcb3 	bl	c0d07ecc <check_app_canary>
c0d03566:	2e00      	cmp	r6, #0
c0d03568:	d154      	bne.n	c0d03614 <parser_getItem+0x2b8>
c0d0356a:	f004 fcaf 	bl	c0d07ecc <check_app_canary>
c0d0356e:	4aa2      	ldr	r2, [pc, #648]	; (c0d037f8 <parser_getItem+0x49c>)
c0d03570:	447a      	add	r2, pc
c0d03572:	ac8f      	add	r4, sp, #572	; 0x23c
c0d03574:	9812      	ldr	r0, [sp, #72]	; 0x48
c0d03576:	990d      	ldr	r1, [sp, #52]	; 0x34
c0d03578:	4623      	mov	r3, r4
c0d0357a:	f7ff fc97 	bl	c0d02eac <snprintf>
c0d0357e:	499f      	ldr	r1, [pc, #636]	; (c0d037fc <parser_getItem+0x4a0>)
c0d03580:	4479      	add	r1, pc
c0d03582:	220b      	movs	r2, #11
c0d03584:	4620      	mov	r0, r4
c0d03586:	f004 fd5d 	bl	c0d08044 <memcmp>
c0d0358a:	2800      	cmp	r0, #0
c0d0358c:	d100      	bne.n	c0d03590 <parser_getItem+0x234>
c0d0358e:	e081      	b.n	c0d03694 <parser_getItem+0x338>
c0d03590:	a88f      	add	r0, sp, #572	; 0x23c
c0d03592:	499b      	ldr	r1, [pc, #620]	; (c0d03800 <parser_getItem+0x4a4>)
c0d03594:	4479      	add	r1, pc
c0d03596:	2212      	movs	r2, #18
c0d03598:	f004 fd54 	bl	c0d08044 <memcmp>
c0d0359c:	2800      	cmp	r0, #0
c0d0359e:	d079      	beq.n	c0d03694 <parser_getItem+0x338>
c0d035a0:	a88f      	add	r0, sp, #572	; 0x23c
c0d035a2:	4998      	ldr	r1, [pc, #608]	; (c0d03804 <parser_getItem+0x4a8>)
c0d035a4:	4479      	add	r1, pc
c0d035a6:	2213      	movs	r2, #19
c0d035a8:	f004 fd4c 	bl	c0d08044 <memcmp>
c0d035ac:	2800      	cmp	r0, #0
c0d035ae:	d071      	beq.n	c0d03694 <parser_getItem+0x338>
c0d035b0:	a88f      	add	r0, sp, #572	; 0x23c
c0d035b2:	4995      	ldr	r1, [pc, #596]	; (c0d03808 <parser_getItem+0x4ac>)
c0d035b4:	4479      	add	r1, pc
c0d035b6:	2218      	movs	r2, #24
c0d035b8:	f004 fd44 	bl	c0d08044 <memcmp>
c0d035bc:	2800      	cmp	r0, #0
c0d035be:	d069      	beq.n	c0d03694 <parser_getItem+0x338>
c0d035c0:	a88f      	add	r0, sp, #572	; 0x23c
c0d035c2:	4992      	ldr	r1, [pc, #584]	; (c0d0380c <parser_getItem+0x4b0>)
c0d035c4:	4479      	add	r1, pc
c0d035c6:	2219      	movs	r2, #25
c0d035c8:	f004 fd3c 	bl	c0d08044 <memcmp>
c0d035cc:	2800      	cmp	r0, #0
c0d035ce:	d061      	beq.n	c0d03694 <parser_getItem+0x338>
c0d035d0:	a88f      	add	r0, sp, #572	; 0x23c
c0d035d2:	498f      	ldr	r1, [pc, #572]	; (c0d03810 <parser_getItem+0x4b4>)
c0d035d4:	4479      	add	r1, pc
c0d035d6:	2212      	movs	r2, #18
c0d035d8:	f004 fd34 	bl	c0d08044 <memcmp>
c0d035dc:	2800      	cmp	r0, #0
c0d035de:	d059      	beq.n	c0d03694 <parser_getItem+0x338>
c0d035e0:	a88f      	add	r0, sp, #572	; 0x23c
c0d035e2:	498c      	ldr	r1, [pc, #560]	; (c0d03814 <parser_getItem+0x4b8>)
c0d035e4:	4479      	add	r1, pc
c0d035e6:	220b      	movs	r2, #11
c0d035e8:	f004 fd2c 	bl	c0d08044 <memcmp>
c0d035ec:	2800      	cmp	r0, #0
c0d035ee:	d051      	beq.n	c0d03694 <parser_getItem+0x338>
c0d035f0:	a88d      	add	r0, sp, #564	; 0x234
c0d035f2:	8800      	ldrh	r0, [r0, #0]
c0d035f4:	9913      	ldr	r1, [sp, #76]	; 0x4c
c0d035f6:	9100      	str	r1, [sp, #0]
c0d035f8:	9914      	ldr	r1, [sp, #80]	; 0x50
c0d035fa:	9a10      	ldr	r2, [sp, #64]	; 0x40
c0d035fc:	9b11      	ldr	r3, [sp, #68]	; 0x44
c0d035fe:	f002 f967 	bl	c0d058d0 <tx_getToken>
c0d03602:	4606      	mov	r6, r0
c0d03604:	f004 fc62 	bl	c0d07ecc <check_app_canary>
c0d03608:	2e00      	cmp	r6, #0
c0d0360a:	d103      	bne.n	c0d03614 <parser_getItem+0x2b8>
c0d0360c:	e250      	b.n	c0d03ab0 <parser_getItem+0x754>
c0d0360e:	260a      	movs	r6, #10
c0d03610:	e000      	b.n	c0d03614 <parser_getItem+0x2b8>
c0d03612:	2603      	movs	r6, #3
c0d03614:	f004 fc5a 	bl	c0d07ecc <check_app_canary>
c0d03618:	2e00      	cmp	r6, #0
c0d0361a:	d100      	bne.n	c0d0361e <parser_getItem+0x2c2>
c0d0361c:	2600      	movs	r6, #0
c0d0361e:	4630      	mov	r0, r6
c0d03620:	b07f      	add	sp, #508	; 0x1fc
c0d03622:	b048      	add	sp, #288	; 0x120
c0d03624:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d03626:	9891      	ldr	r0, [sp, #580]	; 0x244
c0d03628:	2800      	cmp	r0, #0
c0d0362a:	d100      	bne.n	c0d0362e <parser_getItem+0x2d2>
c0d0362c:	e257      	b.n	c0d03ade <parser_getItem+0x782>
c0d0362e:	a88f      	add	r0, sp, #572	; 0x23c
c0d03630:	7b80      	ldrb	r0, [r0, #14]
c0d03632:	28a0      	cmp	r0, #160	; 0xa0
c0d03634:	d000      	beq.n	c0d03638 <parser_getItem+0x2dc>
c0d03636:	e254      	b.n	c0d03ae2 <parser_getItem+0x786>
c0d03638:	a88f      	add	r0, sp, #572	; 0x23c
c0d0363a:	a91c      	add	r1, sp, #112	; 0x70
c0d0363c:	f7fd ffba 	bl	c0d015b4 <cbor_value_enter_container>
c0d03640:	2800      	cmp	r0, #0
c0d03642:	d000      	beq.n	c0d03646 <parser_getItem+0x2ea>
c0d03644:	e6d7      	b.n	c0d033f6 <parser_getItem+0x9a>
c0d03646:	a81c      	add	r0, sp, #112	; 0x70
c0d03648:	f7fd ff40 	bl	c0d014cc <cbor_value_advance>
c0d0364c:	2800      	cmp	r0, #0
c0d0364e:	d000      	beq.n	c0d03652 <parser_getItem+0x2f6>
c0d03650:	e6d1      	b.n	c0d033f6 <parser_getItem+0x9a>
c0d03652:	a81c      	add	r0, sp, #112	; 0x70
c0d03654:	a9a6      	add	r1, sp, #664	; 0x298
c0d03656:	f7fd ffad 	bl	c0d015b4 <cbor_value_enter_container>
c0d0365a:	2800      	cmp	r0, #0
c0d0365c:	d000      	beq.n	c0d03660 <parser_getItem+0x304>
c0d0365e:	e6ca      	b.n	c0d033f6 <parser_getItem+0x9a>
c0d03660:	2d00      	cmp	r5, #0
c0d03662:	d008      	beq.n	c0d03676 <parser_getItem+0x31a>
c0d03664:	462e      	mov	r6, r5
c0d03666:	a8a6      	add	r0, sp, #664	; 0x298
c0d03668:	f7fd ff30 	bl	c0d014cc <cbor_value_advance>
c0d0366c:	2800      	cmp	r0, #0
c0d0366e:	d000      	beq.n	c0d03672 <parser_getItem+0x316>
c0d03670:	e6c1      	b.n	c0d033f6 <parser_getItem+0x9a>
c0d03672:	1e76      	subs	r6, r6, #1
c0d03674:	d1f7      	bne.n	c0d03666 <parser_getItem+0x30a>
c0d03676:	a8a6      	add	r0, sp, #664	; 0x298
c0d03678:	7bc0      	ldrb	r0, [r0, #15]
c0d0367a:	06c1      	lsls	r1, r0, #27
c0d0367c:	d501      	bpl.n	c0d03682 <parser_getItem+0x326>
c0d0367e:	f000 fcbd 	bl	c0d03ffc <parser_getItem+0xca0>
c0d03682:	0780      	lsls	r0, r0, #30
c0d03684:	d501      	bpl.n	c0d0368a <parser_getItem+0x32e>
c0d03686:	f000 fcdf 	bl	c0d04048 <parser_getItem+0xcec>
c0d0368a:	a8a6      	add	r0, sp, #664	; 0x298
c0d0368c:	8980      	ldrh	r0, [r0, #12]
c0d0368e:	9099      	str	r0, [sp, #612]	; 0x264
c0d03690:	f000 fce1 	bl	c0d04056 <parser_getItem+0xcfa>
c0d03694:	2400      	movs	r4, #0
c0d03696:	9a13      	ldr	r2, [sp, #76]	; 0x4c
c0d03698:	7014      	strb	r4, [r2, #0]
c0d0369a:	a88d      	add	r0, sp, #564	; 0x234
c0d0369c:	8801      	ldrh	r1, [r0, #0]
c0d0369e:	00cb      	lsls	r3, r1, #3
c0d036a0:	4e5d      	ldr	r6, [pc, #372]	; (c0d03818 <parser_getItem+0x4bc>)
c0d036a2:	18f5      	adds	r5, r6, r3
c0d036a4:	7c28      	ldrb	r0, [r5, #16]
c0d036a6:	2802      	cmp	r0, #2
c0d036a8:	d000      	beq.n	c0d036ac <parser_getItem+0x350>
c0d036aa:	e1ed      	b.n	c0d03a88 <parser_getItem+0x72c>
c0d036ac:	4635      	mov	r5, r6
c0d036ae:	3508      	adds	r5, #8
c0d036b0:	aa1a      	add	r2, sp, #104	; 0x68
c0d036b2:	4628      	mov	r0, r5
c0d036b4:	460c      	mov	r4, r1
c0d036b6:	f7fe fdcc 	bl	c0d02252 <array_get_element_count>
c0d036ba:	4606      	mov	r6, r0
c0d036bc:	f004 fc06 	bl	c0d07ecc <check_app_canary>
c0d036c0:	2e00      	cmp	r6, #0
c0d036c2:	d000      	beq.n	c0d036c6 <parser_getItem+0x36a>
c0d036c4:	e1ee      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d036c6:	940b      	str	r4, [sp, #44]	; 0x2c
c0d036c8:	a81a      	add	r0, sp, #104	; 0x68
c0d036ca:	8800      	ldrh	r0, [r0, #0]
c0d036cc:	2800      	cmp	r0, #0
c0d036ce:	d100      	bne.n	c0d036d2 <parser_getItem+0x376>
c0d036d0:	e36f      	b.n	c0d03db2 <parser_getItem+0xa56>
c0d036d2:	950a      	str	r5, [sp, #40]	; 0x28
c0d036d4:	a81c      	add	r0, sp, #112	; 0x70
c0d036d6:	1c80      	adds	r0, r0, #2
c0d036d8:	9006      	str	r0, [sp, #24]
c0d036da:	9810      	ldr	r0, [sp, #64]	; 0x40
c0d036dc:	1e40      	subs	r0, r0, #1
c0d036de:	9008      	str	r0, [sp, #32]
c0d036e0:	b280      	uxth	r0, r0
c0d036e2:	9007      	str	r0, [sp, #28]
c0d036e4:	2300      	movs	r3, #0
c0d036e6:	461c      	mov	r4, r3
c0d036e8:	461a      	mov	r2, r3
c0d036ea:	9309      	str	r3, [sp, #36]	; 0x24
c0d036ec:	9f11      	ldr	r7, [sp, #68]	; 0x44
c0d036ee:	920c      	str	r2, [sp, #48]	; 0x30
c0d036f0:	930f      	str	r3, [sp, #60]	; 0x3c
c0d036f2:	b2a2      	uxth	r2, r4
c0d036f4:	ab98      	add	r3, sp, #608	; 0x260
c0d036f6:	9d0a      	ldr	r5, [sp, #40]	; 0x28
c0d036f8:	4628      	mov	r0, r5
c0d036fa:	990b      	ldr	r1, [sp, #44]	; 0x2c
c0d036fc:	f7fe fdd5 	bl	c0d022aa <array_get_nth_element>
c0d03700:	4606      	mov	r6, r0
c0d03702:	f004 fbe3 	bl	c0d07ecc <check_app_canary>
c0d03706:	2e00      	cmp	r6, #0
c0d03708:	d000      	beq.n	c0d0370c <parser_getItem+0x3b0>
c0d0370a:	e1cb      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d0370c:	a998      	add	r1, sp, #608	; 0x260
c0d0370e:	4628      	mov	r0, r5
c0d03710:	880d      	ldrh	r5, [r1, #0]
c0d03712:	aa16      	add	r2, sp, #88	; 0x58
c0d03714:	4629      	mov	r1, r5
c0d03716:	f7fe fd9c 	bl	c0d02252 <array_get_element_count>
c0d0371a:	4606      	mov	r6, r0
c0d0371c:	f004 fbd6 	bl	c0d07ecc <check_app_canary>
c0d03720:	2000      	movs	r0, #0
c0d03722:	9015      	str	r0, [sp, #84]	; 0x54
c0d03724:	2e00      	cmp	r6, #0
c0d03726:	d00d      	beq.n	c0d03744 <parser_getItem+0x3e8>
c0d03728:	9d14      	ldr	r5, [sp, #80]	; 0x50
c0d0372a:	f004 fbcf 	bl	c0d07ecc <check_app_canary>
c0d0372e:	2e00      	cmp	r6, #0
c0d03730:	d000      	beq.n	c0d03734 <parser_getItem+0x3d8>
c0d03732:	e1b7      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d03734:	2001      	movs	r0, #1
c0d03736:	990c      	ldr	r1, [sp, #48]	; 0x30
c0d03738:	2900      	cmp	r1, #0
c0d0373a:	d015      	beq.n	c0d03768 <parser_getItem+0x40c>
c0d0373c:	4602      	mov	r2, r0
c0d0373e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
c0d03740:	9e15      	ldr	r6, [sp, #84]	; 0x54
c0d03742:	e01e      	b.n	c0d03782 <parser_getItem+0x426>
c0d03744:	a816      	add	r0, sp, #88	; 0x58
c0d03746:	8800      	ldrh	r0, [r0, #0]
c0d03748:	260d      	movs	r6, #13
c0d0374a:	2804      	cmp	r0, #4
c0d0374c:	d021      	beq.n	c0d03792 <parser_getItem+0x436>
c0d0374e:	2800      	cmp	r0, #0
c0d03750:	9d14      	ldr	r5, [sp, #80]	; 0x50
c0d03752:	d1ea      	bne.n	c0d0372a <parser_getItem+0x3ce>
c0d03754:	4a31      	ldr	r2, [pc, #196]	; (c0d0381c <parser_getItem+0x4c0>)
c0d03756:	447a      	add	r2, pc
c0d03758:	4628      	mov	r0, r5
c0d0375a:	9910      	ldr	r1, [sp, #64]	; 0x40
c0d0375c:	f7ff fba6 	bl	c0d02eac <snprintf>
c0d03760:	2600      	movs	r6, #0
c0d03762:	2001      	movs	r0, #1
c0d03764:	9015      	str	r0, [sp, #84]	; 0x54
c0d03766:	e7e0      	b.n	c0d0372a <parser_getItem+0x3ce>
c0d03768:	9e15      	ldr	r6, [sp, #84]	; 0x54
c0d0376a:	b2f1      	uxtb	r1, r6
c0d0376c:	b2fa      	uxtb	r2, r7
c0d0376e:	428a      	cmp	r2, r1
c0d03770:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
c0d03772:	d204      	bcs.n	c0d0377e <parser_getItem+0x422>
c0d03774:	a998      	add	r1, sp, #608	; 0x260
c0d03776:	8809      	ldrh	r1, [r1, #0]
c0d03778:	9109      	str	r1, [sp, #36]	; 0x24
c0d0377a:	4602      	mov	r2, r0
c0d0377c:	e001      	b.n	c0d03782 <parser_getItem+0x426>
c0d0377e:	1bbf      	subs	r7, r7, r6
c0d03780:	2200      	movs	r2, #0
c0d03782:	18f3      	adds	r3, r6, r3
c0d03784:	a81a      	add	r0, sp, #104	; 0x68
c0d03786:	8800      	ldrh	r0, [r0, #0]
c0d03788:	1c64      	adds	r4, r4, #1
c0d0378a:	b2a1      	uxth	r1, r4
c0d0378c:	4281      	cmp	r1, r0
c0d0378e:	d3ae      	bcc.n	c0d036ee <parser_getItem+0x392>
c0d03790:	e3f2      	b.n	c0d03f78 <parser_getItem+0xc1c>
c0d03792:	00ea      	lsls	r2, r5, #3
c0d03794:	4920      	ldr	r1, [pc, #128]	; (c0d03818 <parser_getItem+0x4bc>)
c0d03796:	1888      	adds	r0, r1, r2
c0d03798:	7c00      	ldrb	r0, [r0, #16]
c0d0379a:	2801      	cmp	r0, #1
c0d0379c:	d1c4      	bne.n	c0d03728 <parser_getItem+0x3cc>
c0d0379e:	1c68      	adds	r0, r5, #1
c0d037a0:	b280      	uxth	r0, r0
c0d037a2:	00c0      	lsls	r0, r0, #3
c0d037a4:	180b      	adds	r3, r1, r0
c0d037a6:	7c18      	ldrb	r0, [r3, #16]
c0d037a8:	2803      	cmp	r0, #3
c0d037aa:	d1bd      	bne.n	c0d03728 <parser_getItem+0x3cc>
c0d037ac:	2112      	movs	r1, #18
c0d037ae:	5e58      	ldrsh	r0, [r3, r1]
c0d037b0:	9005      	str	r0, [sp, #20]
c0d037b2:	2014      	movs	r0, #20
c0d037b4:	9004      	str	r0, [sp, #16]
c0d037b6:	5e1b      	ldrsh	r3, [r3, r0]
c0d037b8:	9805      	ldr	r0, [sp, #20]
c0d037ba:	1a1b      	subs	r3, r3, r0
c0d037bc:	2b06      	cmp	r3, #6
c0d037be:	d1b3      	bne.n	c0d03728 <parser_getItem+0x3cc>
c0d037c0:	9103      	str	r1, [sp, #12]
c0d037c2:	4915      	ldr	r1, [pc, #84]	; (c0d03818 <parser_getItem+0x4bc>)
c0d037c4:	6849      	ldr	r1, [r1, #4]
c0d037c6:	5c0b      	ldrb	r3, [r1, r0]
c0d037c8:	2b61      	cmp	r3, #97	; 0x61
c0d037ca:	d1ad      	bne.n	c0d03728 <parser_getItem+0x3cc>
c0d037cc:	9201      	str	r2, [sp, #4]
c0d037ce:	9102      	str	r1, [sp, #8]
c0d037d0:	1808      	adds	r0, r1, r0
c0d037d2:	1c40      	adds	r0, r0, #1
c0d037d4:	2300      	movs	r3, #0
c0d037d6:	2b05      	cmp	r3, #5
c0d037d8:	d024      	beq.n	c0d03824 <parser_getItem+0x4c8>
c0d037da:	5cc1      	ldrb	r1, [r0, r3]
c0d037dc:	4a10      	ldr	r2, [pc, #64]	; (c0d03820 <parser_getItem+0x4c4>)
c0d037de:	447a      	add	r2, pc
c0d037e0:	18d2      	adds	r2, r2, r3
c0d037e2:	7852      	ldrb	r2, [r2, #1]
c0d037e4:	1c5b      	adds	r3, r3, #1
c0d037e6:	428a      	cmp	r2, r1
c0d037e8:	d0f5      	beq.n	c0d037d6 <parser_getItem+0x47a>
c0d037ea:	2b06      	cmp	r3, #6
c0d037ec:	d21a      	bcs.n	c0d03824 <parser_getItem+0x4c8>
c0d037ee:	2000      	movs	r0, #0
c0d037f0:	9015      	str	r0, [sp, #84]	; 0x54
c0d037f2:	e799      	b.n	c0d03728 <parser_getItem+0x3cc>
c0d037f4:	000003fe 	.word	0x000003fe
c0d037f8:	0000554d 	.word	0x0000554d
c0d037fc:	000054ae 	.word	0x000054ae
c0d03800:	000054a5 	.word	0x000054a5
c0d03804:	000054a7 	.word	0x000054a7
c0d03808:	000054aa 	.word	0x000054aa
c0d0380c:	000054b2 	.word	0x000054b2
c0d03810:	000054bb 	.word	0x000054bb
c0d03814:	000054bd 	.word	0x000054bd
c0d03818:	2000048c 	.word	0x2000048c
c0d0381c:	00005356 	.word	0x00005356
c0d03820:	00005254 	.word	0x00005254
c0d03824:	1ce8      	adds	r0, r5, #3
c0d03826:	b280      	uxth	r0, r0
c0d03828:	00c0      	lsls	r0, r0, #3
c0d0382a:	49af      	ldr	r1, [pc, #700]	; (c0d03ae8 <parser_getItem+0x78c>)
c0d0382c:	180b      	adds	r3, r1, r0
c0d0382e:	7c18      	ldrb	r0, [r3, #16]
c0d03830:	2100      	movs	r1, #0
c0d03832:	9115      	str	r1, [sp, #84]	; 0x54
c0d03834:	2803      	cmp	r0, #3
c0d03836:	d000      	beq.n	c0d0383a <parser_getItem+0x4de>
c0d03838:	e776      	b.n	c0d03728 <parser_getItem+0x3cc>
c0d0383a:	9803      	ldr	r0, [sp, #12]
c0d0383c:	5e18      	ldrsh	r0, [r3, r0]
c0d0383e:	9904      	ldr	r1, [sp, #16]
c0d03840:	5e59      	ldrsh	r1, [r3, r1]
c0d03842:	1a09      	subs	r1, r1, r0
c0d03844:	2905      	cmp	r1, #5
c0d03846:	d000      	beq.n	c0d0384a <parser_getItem+0x4ee>
c0d03848:	e76e      	b.n	c0d03728 <parser_getItem+0x3cc>
c0d0384a:	9902      	ldr	r1, [sp, #8]
c0d0384c:	5c09      	ldrb	r1, [r1, r0]
c0d0384e:	2964      	cmp	r1, #100	; 0x64
c0d03850:	d000      	beq.n	c0d03854 <parser_getItem+0x4f8>
c0d03852:	e769      	b.n	c0d03728 <parser_getItem+0x3cc>
c0d03854:	9902      	ldr	r1, [sp, #8]
c0d03856:	1808      	adds	r0, r1, r0
c0d03858:	1c41      	adds	r1, r0, #1
c0d0385a:	2000      	movs	r0, #0
c0d0385c:	2804      	cmp	r0, #4
c0d0385e:	d009      	beq.n	c0d03874 <parser_getItem+0x518>
c0d03860:	5c0a      	ldrb	r2, [r1, r0]
c0d03862:	4ba2      	ldr	r3, [pc, #648]	; (c0d03aec <parser_getItem+0x790>)
c0d03864:	447b      	add	r3, pc
c0d03866:	181b      	adds	r3, r3, r0
c0d03868:	785b      	ldrb	r3, [r3, #1]
c0d0386a:	1c40      	adds	r0, r0, #1
c0d0386c:	4293      	cmp	r3, r2
c0d0386e:	d0f5      	beq.n	c0d0385c <parser_getItem+0x500>
c0d03870:	2805      	cmp	r0, #5
c0d03872:	d3bc      	bcc.n	c0d037ee <parser_getItem+0x492>
c0d03874:	a8a6      	add	r0, sp, #664	; 0x298
c0d03876:	2181      	movs	r1, #129	; 0x81
c0d03878:	f004 fbe0 	bl	c0d0803c <explicit_bzero>
c0d0387c:	a899      	add	r0, sp, #612	; 0x264
c0d0387e:	2132      	movs	r1, #50	; 0x32
c0d03880:	f004 fbdc 	bl	c0d0803c <explicit_bzero>
c0d03884:	9814      	ldr	r0, [sp, #80]	; 0x50
c0d03886:	9910      	ldr	r1, [sp, #64]	; 0x40
c0d03888:	f004 fbd8 	bl	c0d0803c <explicit_bzero>
c0d0388c:	a81c      	add	r0, sp, #112	; 0x70
c0d0388e:	21a0      	movs	r1, #160	; 0xa0
c0d03890:	f004 fbd4 	bl	c0d0803c <explicit_bzero>
c0d03894:	4894      	ldr	r0, [pc, #592]	; (c0d03ae8 <parser_getItem+0x78c>)
c0d03896:	1d00      	adds	r0, r0, #4
c0d03898:	1ca9      	adds	r1, r5, #2
c0d0389a:	00c9      	lsls	r1, r1, #3
c0d0389c:	1840      	adds	r0, r0, r1
c0d0389e:	220e      	movs	r2, #14
c0d038a0:	5e80      	ldrsh	r0, [r0, r2]
c0d038a2:	2608      	movs	r6, #8
c0d038a4:	2200      	movs	r2, #0
c0d038a6:	9215      	str	r2, [sp, #84]	; 0x54
c0d038a8:	2800      	cmp	r0, #0
c0d038aa:	d500      	bpl.n	c0d038ae <parser_getItem+0x552>
c0d038ac:	e73c      	b.n	c0d03728 <parser_getItem+0x3cc>
c0d038ae:	4a8e      	ldr	r2, [pc, #568]	; (c0d03ae8 <parser_getItem+0x78c>)
c0d038b0:	3210      	adds	r2, #16
c0d038b2:	1851      	adds	r1, r2, r1
c0d038b4:	2304      	movs	r3, #4
c0d038b6:	5ec9      	ldrsh	r1, [r1, r3]
c0d038b8:	1a0d      	subs	r5, r1, r0
c0d038ba:	1e6b      	subs	r3, r5, #1
c0d038bc:	2105      	movs	r1, #5
c0d038be:	9105      	str	r1, [sp, #20]
c0d038c0:	2b30      	cmp	r3, #48	; 0x30
c0d038c2:	d85a      	bhi.n	c0d0397a <parser_getItem+0x61e>
c0d038c4:	9901      	ldr	r1, [sp, #4]
c0d038c6:	188b      	adds	r3, r1, r2
c0d038c8:	2222      	movs	r2, #34	; 0x22
c0d038ca:	5e9a      	ldrsh	r2, [r3, r2]
c0d038cc:	2124      	movs	r1, #36	; 0x24
c0d038ce:	5e59      	ldrsh	r1, [r3, r1]
c0d038d0:	1a89      	subs	r1, r1, r2
c0d038d2:	460b      	mov	r3, r1
c0d038d4:	1e49      	subs	r1, r1, #1
c0d038d6:	297f      	cmp	r1, #127	; 0x7f
c0d038d8:	d84f      	bhi.n	c0d0397a <parser_getItem+0x61e>
c0d038da:	1959      	adds	r1, r3, r5
c0d038dc:	299e      	cmp	r1, #158	; 0x9e
c0d038de:	d900      	bls.n	c0d038e2 <parser_getItem+0x586>
c0d038e0:	e722      	b.n	c0d03728 <parser_getItem+0x3cc>
c0d038e2:	4981      	ldr	r1, [pc, #516]	; (c0d03ae8 <parser_getItem+0x78c>)
c0d038e4:	6849      	ldr	r1, [r1, #4]
c0d038e6:	1808      	adds	r0, r1, r0
c0d038e8:	9005      	str	r0, [sp, #20]
c0d038ea:	1889      	adds	r1, r1, r2
c0d038ec:	a8a6      	add	r0, sp, #664	; 0x298
c0d038ee:	9103      	str	r1, [sp, #12]
c0d038f0:	461a      	mov	r2, r3
c0d038f2:	9304      	str	r3, [sp, #16]
c0d038f4:	f004 fb96 	bl	c0d08024 <__aeabi_memmove>
c0d038f8:	ae99      	add	r6, sp, #612	; 0x264
c0d038fa:	4630      	mov	r0, r6
c0d038fc:	9905      	ldr	r1, [sp, #20]
c0d038fe:	462a      	mov	r2, r5
c0d03900:	f004 fb90 	bl	c0d08024 <__aeabi_memmove>
c0d03904:	a81c      	add	r0, sp, #112	; 0x70
c0d03906:	21a0      	movs	r1, #160	; 0xa0
c0d03908:	4a79      	ldr	r2, [pc, #484]	; (c0d03af0 <parser_getItem+0x794>)
c0d0390a:	447a      	add	r2, pc
c0d0390c:	4633      	mov	r3, r6
c0d0390e:	f7ff facd 	bl	c0d02eac <snprintf>
c0d03912:	9804      	ldr	r0, [sp, #16]
c0d03914:	b2c5      	uxtb	r5, r0
c0d03916:	f001 fc97 	bl	c0d05248 <tx_is_expert_mode>
c0d0391a:	2d05      	cmp	r5, #5
c0d0391c:	d155      	bne.n	c0d039ca <parser_getItem+0x66e>
c0d0391e:	2800      	cmp	r0, #0
c0d03920:	d153      	bne.n	c0d039ca <parser_getItem+0x66e>
c0d03922:	4974      	ldr	r1, [pc, #464]	; (c0d03af4 <parser_getItem+0x798>)
c0d03924:	4479      	add	r1, pc
c0d03926:	2605      	movs	r6, #5
c0d03928:	9803      	ldr	r0, [sp, #12]
c0d0392a:	4632      	mov	r2, r6
c0d0392c:	f004 fb8a 	bl	c0d08044 <memcmp>
c0d03930:	2800      	cmp	r0, #0
c0d03932:	d14a      	bne.n	c0d039ca <parser_getItem+0x66e>
c0d03934:	a81c      	add	r0, sp, #112	; 0x70
c0d03936:	21a0      	movs	r1, #160	; 0xa0
c0d03938:	f004 fb80 	bl	c0d0803c <explicit_bzero>
c0d0393c:	a899      	add	r0, sp, #612	; 0x264
c0d0393e:	f004 fcff 	bl	c0d08340 <strlen>
c0d03942:	4605      	mov	r5, r0
c0d03944:	1c80      	adds	r0, r0, #2
c0d03946:	28a0      	cmp	r0, #160	; 0xa0
c0d03948:	d900      	bls.n	c0d0394c <parser_getItem+0x5f0>
c0d0394a:	e6ed      	b.n	c0d03728 <parser_getItem+0x3cc>
c0d0394c:	2d06      	cmp	r5, #6
c0d0394e:	d816      	bhi.n	c0d0397e <parser_getItem+0x622>
c0d03950:	a81c      	add	r0, sp, #112	; 0x70
c0d03952:	2100      	movs	r1, #0
c0d03954:	7081      	strb	r1, [r0, #2]
c0d03956:	4968      	ldr	r1, [pc, #416]	; (c0d03af8 <parser_getItem+0x79c>)
c0d03958:	8001      	strh	r1, [r0, #0]
c0d0395a:	2006      	movs	r0, #6
c0d0395c:	1b41      	subs	r1, r0, r5
c0d0395e:	9115      	str	r1, [sp, #84]	; 0x54
c0d03960:	2230      	movs	r2, #48	; 0x30
c0d03962:	9e06      	ldr	r6, [sp, #24]
c0d03964:	4630      	mov	r0, r6
c0d03966:	f004 fb61 	bl	c0d0802c <__aeabi_memset>
c0d0396a:	9815      	ldr	r0, [sp, #84]	; 0x54
c0d0396c:	1830      	adds	r0, r6, r0
c0d0396e:	3598      	adds	r5, #152	; 0x98
c0d03970:	4a62      	ldr	r2, [pc, #392]	; (c0d03afc <parser_getItem+0x7a0>)
c0d03972:	447a      	add	r2, pc
c0d03974:	ab99      	add	r3, sp, #612	; 0x264
c0d03976:	4629      	mov	r1, r5
c0d03978:	e016      	b.n	c0d039a8 <parser_getItem+0x64c>
c0d0397a:	9e05      	ldr	r6, [sp, #20]
c0d0397c:	e6d4      	b.n	c0d03728 <parser_getItem+0x3cc>
c0d0397e:	ae1c      	add	r6, sp, #112	; 0x70
c0d03980:	21a0      	movs	r1, #160	; 0xa0
c0d03982:	4a5f      	ldr	r2, [pc, #380]	; (c0d03b00 <parser_getItem+0x7a4>)
c0d03984:	447a      	add	r2, pc
c0d03986:	9205      	str	r2, [sp, #20]
c0d03988:	a899      	add	r0, sp, #612	; 0x264
c0d0398a:	9015      	str	r0, [sp, #84]	; 0x54
c0d0398c:	4630      	mov	r0, r6
c0d0398e:	9b15      	ldr	r3, [sp, #84]	; 0x54
c0d03990:	f7ff fa8c 	bl	c0d02eac <snprintf>
c0d03994:	1fa8      	subs	r0, r5, #6
c0d03996:	212e      	movs	r1, #46	; 0x2e
c0d03998:	5431      	strb	r1, [r6, r0]
c0d0399a:	21a5      	movs	r1, #165	; 0xa5
c0d0399c:	1b49      	subs	r1, r1, r5
c0d0399e:	9a15      	ldr	r2, [sp, #84]	; 0x54
c0d039a0:	1813      	adds	r3, r2, r0
c0d039a2:	1830      	adds	r0, r6, r0
c0d039a4:	1c40      	adds	r0, r0, #1
c0d039a6:	9a05      	ldr	r2, [sp, #20]
c0d039a8:	f7ff fa80 	bl	c0d02eac <snprintf>
c0d039ac:	a81c      	add	r0, sp, #112	; 0x70
c0d039ae:	f004 fcc7 	bl	c0d08340 <strlen>
c0d039b2:	1e81      	subs	r1, r0, #2
c0d039b4:	4a53      	ldr	r2, [pc, #332]	; (c0d03b04 <parser_getItem+0x7a8>)
c0d039b6:	4291      	cmp	r1, r2
c0d039b8:	d947      	bls.n	c0d03a4a <parser_getItem+0x6ee>
c0d039ba:	a8a6      	add	r0, sp, #664	; 0x298
c0d039bc:	2181      	movs	r1, #129	; 0x81
c0d039be:	4a52      	ldr	r2, [pc, #328]	; (c0d03b08 <parser_getItem+0x7ac>)
c0d039c0:	447a      	add	r2, pc
c0d039c2:	4b52      	ldr	r3, [pc, #328]	; (c0d03b0c <parser_getItem+0x7b0>)
c0d039c4:	447b      	add	r3, pc
c0d039c6:	f7ff fa71 	bl	c0d02eac <snprintf>
c0d039ca:	ad1c      	add	r5, sp, #112	; 0x70
c0d039cc:	21a0      	movs	r1, #160	; 0xa0
c0d039ce:	4a50      	ldr	r2, [pc, #320]	; (c0d03b10 <parser_getItem+0x7b4>)
c0d039d0:	447a      	add	r2, pc
c0d039d2:	aba6      	add	r3, sp, #664	; 0x298
c0d039d4:	4628      	mov	r0, r5
c0d039d6:	f004 fa25 	bl	c0d07e24 <z_str3join>
c0d039da:	4628      	mov	r0, r5
c0d039dc:	f004 fcb0 	bl	c0d08340 <strlen>
c0d039e0:	4605      	mov	r5, r0
c0d039e2:	9814      	ldr	r0, [sp, #80]	; 0x50
c0d039e4:	9910      	ldr	r1, [sp, #64]	; 0x40
c0d039e6:	f004 fb29 	bl	c0d0803c <explicit_bzero>
c0d039ea:	9808      	ldr	r0, [sp, #32]
c0d039ec:	0400      	lsls	r0, r0, #16
c0d039ee:	2100      	movs	r1, #0
c0d039f0:	9115      	str	r1, [sp, #84]	; 0x54
c0d039f2:	2800      	cmp	r0, #0
c0d039f4:	d01f      	beq.n	c0d03a36 <parser_getItem+0x6da>
c0d039f6:	0428      	lsls	r0, r5, #16
c0d039f8:	9e15      	ldr	r6, [sp, #84]	; 0x54
c0d039fa:	d100      	bne.n	c0d039fe <parser_getItem+0x6a2>
c0d039fc:	e694      	b.n	c0d03728 <parser_getItem+0x3cc>
c0d039fe:	b2a8      	uxth	r0, r5
c0d03a00:	9907      	ldr	r1, [sp, #28]
c0d03a02:	f004 fa99 	bl	c0d07f38 <__udivsi3>
c0d03a06:	9908      	ldr	r1, [sp, #32]
c0d03a08:	4341      	muls	r1, r0
c0d03a0a:	1a69      	subs	r1, r5, r1
c0d03a0c:	b28a      	uxth	r2, r1
c0d03a0e:	1e53      	subs	r3, r2, #1
c0d03a10:	4615      	mov	r5, r2
c0d03a12:	419d      	sbcs	r5, r3
c0d03a14:	1828      	adds	r0, r5, r0
c0d03a16:	2600      	movs	r6, #0
c0d03a18:	9015      	str	r0, [sp, #84]	; 0x54
c0d03a1a:	0600      	lsls	r0, r0, #24
c0d03a1c:	d00d      	beq.n	c0d03a3a <parser_getItem+0x6de>
c0d03a1e:	0408      	lsls	r0, r1, #16
c0d03a20:	d00d      	beq.n	c0d03a3e <parser_getItem+0x6e2>
c0d03a22:	9815      	ldr	r0, [sp, #84]	; 0x54
c0d03a24:	b2c0      	uxtb	r0, r0
c0d03a26:	2801      	cmp	r0, #1
c0d03a28:	d109      	bne.n	c0d03a3e <parser_getItem+0x6e2>
c0d03a2a:	a91c      	add	r1, sp, #112	; 0x70
c0d03a2c:	9814      	ldr	r0, [sp, #80]	; 0x50
c0d03a2e:	f004 faf5 	bl	c0d0801c <__aeabi_memcpy>
c0d03a32:	2001      	movs	r0, #1
c0d03a34:	e6dc      	b.n	c0d037f0 <parser_getItem+0x494>
c0d03a36:	9e15      	ldr	r6, [sp, #84]	; 0x54
c0d03a38:	e676      	b.n	c0d03728 <parser_getItem+0x3cc>
c0d03a3a:	9615      	str	r6, [sp, #84]	; 0x54
c0d03a3c:	e674      	b.n	c0d03728 <parser_getItem+0x3cc>
c0d03a3e:	a91c      	add	r1, sp, #112	; 0x70
c0d03a40:	9814      	ldr	r0, [sp, #80]	; 0x50
c0d03a42:	9a07      	ldr	r2, [sp, #28]
c0d03a44:	f004 faea 	bl	c0d0801c <__aeabi_memcpy>
c0d03a48:	e66e      	b.n	c0d03728 <parser_getItem+0x3cc>
c0d03a4a:	2300      	movs	r3, #0
c0d03a4c:	461a      	mov	r2, r3
c0d03a4e:	4931      	ldr	r1, [pc, #196]	; (c0d03b14 <parser_getItem+0x7b8>)
c0d03a50:	ad1c      	add	r5, sp, #112	; 0x70
c0d03a52:	5ceb      	ldrb	r3, [r5, r3]
c0d03a54:	2b2e      	cmp	r3, #46	; 0x2e
c0d03a56:	4613      	mov	r3, r2
c0d03a58:	d000      	beq.n	c0d03a5c <parser_getItem+0x700>
c0d03a5a:	460b      	mov	r3, r1
c0d03a5c:	b219      	sxth	r1, r3
c0d03a5e:	1c52      	adds	r2, r2, #1
c0d03a60:	b213      	sxth	r3, r2
c0d03a62:	4298      	cmp	r0, r3
c0d03a64:	dd01      	ble.n	c0d03a6a <parser_getItem+0x70e>
c0d03a66:	2900      	cmp	r1, #0
c0d03a68:	d4f2      	bmi.n	c0d03a50 <parser_getItem+0x6f4>
c0d03a6a:	2900      	cmp	r1, #0
c0d03a6c:	d4a5      	bmi.n	c0d039ba <parser_getItem+0x65e>
c0d03a6e:	1e40      	subs	r0, r0, #1
c0d03a70:	1d89      	adds	r1, r1, #6
c0d03a72:	4288      	cmp	r0, r1
c0d03a74:	d9a1      	bls.n	c0d039ba <parser_getItem+0x65e>
c0d03a76:	aa1c      	add	r2, sp, #112	; 0x70
c0d03a78:	5c12      	ldrb	r2, [r2, r0]
c0d03a7a:	2a30      	cmp	r2, #48	; 0x30
c0d03a7c:	d19d      	bne.n	c0d039ba <parser_getItem+0x65e>
c0d03a7e:	aa1c      	add	r2, sp, #112	; 0x70
c0d03a80:	2300      	movs	r3, #0
c0d03a82:	5413      	strb	r3, [r2, r0]
c0d03a84:	1e40      	subs	r0, r0, #1
c0d03a86:	e7f4      	b.n	c0d03a72 <parser_getItem+0x716>
c0d03a88:	9315      	str	r3, [sp, #84]	; 0x54
c0d03a8a:	7014      	strb	r4, [r2, #0]
c0d03a8c:	4630      	mov	r0, r6
c0d03a8e:	3008      	adds	r0, #8
c0d03a90:	aa16      	add	r2, sp, #88	; 0x58
c0d03a92:	460f      	mov	r7, r1
c0d03a94:	f7fe fbdd 	bl	c0d02252 <array_get_element_count>
c0d03a98:	4606      	mov	r6, r0
c0d03a9a:	f004 fa17 	bl	c0d07ecc <check_app_canary>
c0d03a9e:	2e00      	cmp	r6, #0
c0d03aa0:	d100      	bne.n	c0d03aa4 <parser_getItem+0x748>
c0d03aa2:	e0f4      	b.n	c0d03c8e <parser_getItem+0x932>
c0d03aa4:	f004 fa12 	bl	c0d07ecc <check_app_canary>
c0d03aa8:	2e00      	cmp	r6, #0
c0d03aaa:	9d0e      	ldr	r5, [sp, #56]	; 0x38
c0d03aac:	d000      	beq.n	c0d03ab0 <parser_getItem+0x754>
c0d03aae:	e5b1      	b.n	c0d03614 <parser_getItem+0x2b8>
c0d03ab0:	f004 fa0c 	bl	c0d07ecc <check_app_canary>
c0d03ab4:	f001 fe16 	bl	c0d056e4 <tx_display_make_friendly>
c0d03ab8:	4606      	mov	r6, r0
c0d03aba:	f004 fa07 	bl	c0d07ecc <check_app_canary>
c0d03abe:	2e00      	cmp	r6, #0
c0d03ac0:	d000      	beq.n	c0d03ac4 <parser_getItem+0x768>
c0d03ac2:	e5a7      	b.n	c0d03614 <parser_getItem+0x2b8>
c0d03ac4:	f004 fa02 	bl	c0d07ecc <check_app_canary>
c0d03ac8:	4a13      	ldr	r2, [pc, #76]	; (c0d03b18 <parser_getItem+0x7bc>)
c0d03aca:	447a      	add	r2, pc
c0d03acc:	ab8f      	add	r3, sp, #572	; 0x23c
c0d03ace:	9812      	ldr	r0, [sp, #72]	; 0x48
c0d03ad0:	990d      	ldr	r1, [sp, #52]	; 0x34
c0d03ad2:	f7ff f9eb 	bl	c0d02eac <snprintf>
c0d03ad6:	f004 f9f9 	bl	c0d07ecc <check_app_canary>
c0d03ada:	462e      	mov	r6, r5
c0d03adc:	e59a      	b.n	c0d03614 <parser_getItem+0x2b8>
c0d03ade:	2608      	movs	r6, #8
c0d03ae0:	e48c      	b.n	c0d033fc <parser_getItem+0xa0>
c0d03ae2:	2606      	movs	r6, #6
c0d03ae4:	e48a      	b.n	c0d033fc <parser_getItem+0xa0>
c0d03ae6:	46c0      	nop			; (mov r8, r8)
c0d03ae8:	2000048c 	.word	0x2000048c
c0d03aec:	0000524e 	.word	0x0000524e
c0d03af0:	000051ae 	.word	0x000051ae
c0d03af4:	000051a1 	.word	0x000051a1
c0d03af8:	00002e30 	.word	0x00002e30
c0d03afc:	0000514b 	.word	0x0000514b
c0d03b00:	00005139 	.word	0x00005139
c0d03b04:	000003fe 	.word	0x000003fe
c0d03b08:	000050fc 	.word	0x000050fc
c0d03b0c:	000050fc 	.word	0x000050fc
c0d03b10:	00006da3 	.word	0x00006da3
c0d03b14:	0000ffff 	.word	0x0000ffff
c0d03b18:	00004ff3 	.word	0x00004ff3
c0d03b1c:	f004 f9d6 	bl	c0d07ecc <check_app_canary>
c0d03b20:	2609      	movs	r6, #9
c0d03b22:	989b      	ldr	r0, [sp, #620]	; 0x26c
c0d03b24:	2828      	cmp	r0, #40	; 0x28
c0d03b26:	d900      	bls.n	c0d03b2a <parser_getItem+0x7ce>
c0d03b28:	e264      	b.n	c0d03ff4 <parser_getItem+0xc98>
c0d03b2a:	2007      	movs	r0, #7
c0d03b2c:	0187      	lsls	r7, r0, #6
c0d03b2e:	4638      	mov	r0, r7
c0d03b30:	3066      	adds	r0, #102	; 0x66
c0d03b32:	999d      	ldr	r1, [sp, #628]	; 0x274
c0d03b34:	4281      	cmp	r1, r0
c0d03b36:	d900      	bls.n	c0d03b3a <parser_getItem+0x7de>
c0d03b38:	e25c      	b.n	c0d03ff4 <parser_getItem+0xc98>
c0d03b3a:	68a0      	ldr	r0, [r4, #8]
c0d03b3c:	970e      	str	r7, [sp, #56]	; 0x38
c0d03b3e:	37b1      	adds	r7, #177	; 0xb1
c0d03b40:	3009      	adds	r0, #9
c0d03b42:	4639      	mov	r1, r7
c0d03b44:	f004 fa7a 	bl	c0d0803c <explicit_bzero>
c0d03b48:	68a5      	ldr	r5, [r4, #8]
c0d03b4a:	20e1      	movs	r0, #225	; 0xe1
c0d03b4c:	0041      	lsls	r1, r0, #1
c0d03b4e:	a81c      	add	r0, sp, #112	; 0x70
c0d03b50:	9115      	str	r1, [sp, #84]	; 0x54
c0d03b52:	f004 fa5d 	bl	c0d08010 <__aeabi_memclr>
c0d03b56:	462e      	mov	r6, r5
c0d03b58:	3609      	adds	r6, #9
c0d03b5a:	989b      	ldr	r0, [sp, #620]	; 0x26c
c0d03b5c:	2800      	cmp	r0, #0
c0d03b5e:	d100      	bne.n	c0d03b62 <parser_getItem+0x806>
c0d03b60:	e0aa      	b.n	c0d03cb8 <parser_getItem+0x95c>
c0d03b62:	950b      	str	r5, [sp, #44]	; 0x2c
c0d03b64:	4630      	mov	r0, r6
c0d03b66:	970c      	str	r7, [sp, #48]	; 0x30
c0d03b68:	4639      	mov	r1, r7
c0d03b6a:	f004 fa67 	bl	c0d0803c <explicit_bzero>
c0d03b6e:	9a9d      	ldr	r2, [sp, #628]	; 0x274
c0d03b70:	999c      	ldr	r1, [sp, #624]	; 0x270
c0d03b72:	4630      	mov	r0, r6
c0d03b74:	f004 fa56 	bl	c0d08024 <__aeabi_memmove>
c0d03b78:	ad99      	add	r5, sp, #612	; 0x264
c0d03b7a:	8a2b      	ldrh	r3, [r5, #16]
c0d03b7c:	a81c      	add	r0, sp, #112	; 0x70
c0d03b7e:	9915      	ldr	r1, [sp, #84]	; 0x54
c0d03b80:	9615      	str	r6, [sp, #84]	; 0x54
c0d03b82:	4632      	mov	r2, r6
c0d03b84:	f001 fde6 	bl	c0d05754 <tx_display_translation>
c0d03b88:	7d2e      	ldrb	r6, [r5, #20]
c0d03b8a:	9f9b      	ldr	r7, [sp, #620]	; 0x26c
c0d03b8c:	19f0      	adds	r0, r6, r7
c0d03b8e:	b2c5      	uxtb	r5, r0
c0d03b90:	2d11      	cmp	r5, #17
c0d03b92:	d80d      	bhi.n	c0d03bb0 <parser_getItem+0x854>
c0d03b94:	9810      	ldr	r0, [sp, #64]	; 0x40
c0d03b96:	2800      	cmp	r0, #0
c0d03b98:	d100      	bne.n	c0d03b9c <parser_getItem+0x840>
c0d03b9a:	e0b4      	b.n	c0d03d06 <parser_getItem+0x9aa>
c0d03b9c:	a81c      	add	r0, sp, #112	; 0x70
c0d03b9e:	f004 fbcf 	bl	c0d08340 <strlen>
c0d03ba2:	2d0b      	cmp	r5, #11
c0d03ba4:	d200      	bcs.n	c0d03ba8 <parser_getItem+0x84c>
c0d03ba6:	e0ae      	b.n	c0d03d06 <parser_getItem+0x9aa>
c0d03ba8:	9910      	ldr	r1, [sp, #64]	; 0x40
c0d03baa:	4288      	cmp	r0, r1
c0d03bac:	d200      	bcs.n	c0d03bb0 <parser_getItem+0x854>
c0d03bae:	e0aa      	b.n	c0d03d06 <parser_getItem+0x9aa>
c0d03bb0:	ada6      	add	r5, sp, #664	; 0x298
c0d03bb2:	1ce8      	adds	r0, r5, #3
c0d03bb4:	2127      	movs	r1, #39	; 0x27
c0d03bb6:	f004 fa2b 	bl	c0d08010 <__aeabi_memclr>
c0d03bba:	202d      	movs	r0, #45	; 0x2d
c0d03bbc:	70a8      	strb	r0, [r5, #2]
c0d03bbe:	48f5      	ldr	r0, [pc, #980]	; (c0d03f94 <parser_getItem+0xc38>)
c0d03bc0:	8028      	strh	r0, [r5, #0]
c0d03bc2:	2e00      	cmp	r6, #0
c0d03bc4:	d00f      	beq.n	c0d03be6 <parser_getItem+0x88a>
c0d03bc6:	2500      	movs	r5, #0
c0d03bc8:	4ff3      	ldr	r7, [pc, #972]	; (c0d03f98 <parser_getItem+0xc3c>)
c0d03bca:	447f      	add	r7, pc
c0d03bcc:	4ef3      	ldr	r6, [pc, #972]	; (c0d03f9c <parser_getItem+0xc40>)
c0d03bce:	447e      	add	r6, pc
c0d03bd0:	a8a6      	add	r0, sp, #664	; 0x298
c0d03bd2:	212a      	movs	r1, #42	; 0x2a
c0d03bd4:	463a      	mov	r2, r7
c0d03bd6:	4633      	mov	r3, r6
c0d03bd8:	f004 f924 	bl	c0d07e24 <z_str3join>
c0d03bdc:	1c6d      	adds	r5, r5, #1
c0d03bde:	a899      	add	r0, sp, #612	; 0x264
c0d03be0:	7d00      	ldrb	r0, [r0, #20]
c0d03be2:	4285      	cmp	r5, r0
c0d03be4:	d3f4      	bcc.n	c0d03bd0 <parser_getItem+0x874>
c0d03be6:	68a0      	ldr	r0, [r4, #8]
c0d03be8:	3009      	adds	r0, #9
c0d03bea:	990c      	ldr	r1, [sp, #48]	; 0x30
c0d03bec:	f004 fa26 	bl	c0d0803c <explicit_bzero>
c0d03bf0:	9a9b      	ldr	r2, [sp, #620]	; 0x26c
c0d03bf2:	999a      	ldr	r1, [sp, #616]	; 0x268
c0d03bf4:	9c15      	ldr	r4, [sp, #84]	; 0x54
c0d03bf6:	4620      	mov	r0, r4
c0d03bf8:	f004 fa14 	bl	c0d08024 <__aeabi_memmove>
c0d03bfc:	203a      	movs	r0, #58	; 0x3a
c0d03bfe:	999b      	ldr	r1, [sp, #620]	; 0x26c
c0d03c00:	5460      	strb	r0, [r4, r1]
c0d03c02:	1860      	adds	r0, r4, r1
c0d03c04:	2120      	movs	r1, #32
c0d03c06:	7041      	strb	r1, [r0, #1]
c0d03c08:	989b      	ldr	r0, [sp, #620]	; 0x26c
c0d03c0a:	990e      	ldr	r1, [sp, #56]	; 0x38
c0d03c0c:	1a0a      	subs	r2, r1, r0
c0d03c0e:	1820      	adds	r0, r4, r0
c0d03c10:	1c80      	adds	r0, r0, #2
c0d03c12:	a91c      	add	r1, sp, #112	; 0x70
c0d03c14:	f004 fa06 	bl	c0d08024 <__aeabi_memmove>
c0d03c18:	4afa      	ldr	r2, [pc, #1000]	; (c0d04004 <parser_getItem+0xca8>)
c0d03c1a:	447a      	add	r2, pc
c0d03c1c:	aba6      	add	r3, sp, #664	; 0x298
c0d03c1e:	9812      	ldr	r0, [sp, #72]	; 0x48
c0d03c20:	990d      	ldr	r1, [sp, #52]	; 0x34
c0d03c22:	f7ff f943 	bl	c0d02eac <snprintf>
c0d03c26:	4620      	mov	r0, r4
c0d03c28:	f004 fb8a 	bl	c0d08340 <strlen>
c0d03c2c:	4605      	mov	r5, r0
c0d03c2e:	9814      	ldr	r0, [sp, #80]	; 0x50
c0d03c30:	9c10      	ldr	r4, [sp, #64]	; 0x40
c0d03c32:	4621      	mov	r1, r4
c0d03c34:	f004 fa02 	bl	c0d0803c <explicit_bzero>
c0d03c38:	2000      	movs	r0, #0
c0d03c3a:	9a13      	ldr	r2, [sp, #76]	; 0x4c
c0d03c3c:	7010      	strb	r0, [r2, #0]
c0d03c3e:	1e66      	subs	r6, r4, #1
c0d03c40:	b2b4      	uxth	r4, r6
c0d03c42:	2c00      	cmp	r4, #0
c0d03c44:	9f11      	ldr	r7, [sp, #68]	; 0x44
c0d03c46:	d100      	bne.n	c0d03c4a <parser_getItem+0x8ee>
c0d03c48:	e1d3      	b.n	c0d03ff2 <parser_getItem+0xc96>
c0d03c4a:	0428      	lsls	r0, r5, #16
c0d03c4c:	d100      	bne.n	c0d03c50 <parser_getItem+0x8f4>
c0d03c4e:	e1d0      	b.n	c0d03ff2 <parser_getItem+0xc96>
c0d03c50:	b2a8      	uxth	r0, r5
c0d03c52:	4621      	mov	r1, r4
c0d03c54:	f004 f970 	bl	c0d07f38 <__udivsi3>
c0d03c58:	4346      	muls	r6, r0
c0d03c5a:	1bab      	subs	r3, r5, r6
c0d03c5c:	b29a      	uxth	r2, r3
c0d03c5e:	1e51      	subs	r1, r2, #1
c0d03c60:	4615      	mov	r5, r2
c0d03c62:	418d      	sbcs	r5, r1
c0d03c64:	1828      	adds	r0, r5, r0
c0d03c66:	9913      	ldr	r1, [sp, #76]	; 0x4c
c0d03c68:	7008      	strb	r0, [r1, #0]
c0d03c6a:	b2c0      	uxtb	r0, r0
c0d03c6c:	42b8      	cmp	r0, r7
c0d03c6e:	d800      	bhi.n	c0d03c72 <parser_getItem+0x916>
c0d03c70:	e1bf      	b.n	c0d03ff2 <parser_getItem+0xc96>
c0d03c72:	4621      	mov	r1, r4
c0d03c74:	4379      	muls	r1, r7
c0d03c76:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
c0d03c78:	1869      	adds	r1, r5, r1
c0d03c7a:	3109      	adds	r1, #9
c0d03c7c:	041b      	lsls	r3, r3, #16
c0d03c7e:	d100      	bne.n	c0d03c82 <parser_getItem+0x926>
c0d03c80:	e1b3      	b.n	c0d03fea <parser_getItem+0xc8e>
c0d03c82:	1e40      	subs	r0, r0, #1
c0d03c84:	42b8      	cmp	r0, r7
c0d03c86:	d000      	beq.n	c0d03c8a <parser_getItem+0x92e>
c0d03c88:	e1af      	b.n	c0d03fea <parser_getItem+0xc8e>
c0d03c8a:	9814      	ldr	r0, [sp, #80]	; 0x50
c0d03c8c:	e1af      	b.n	c0d03fee <parser_getItem+0xc92>
c0d03c8e:	49de      	ldr	r1, [pc, #888]	; (c0d04008 <parser_getItem+0xcac>)
c0d03c90:	a816      	add	r0, sp, #88	; 0x58
c0d03c92:	8800      	ldrh	r0, [r0, #0]
c0d03c94:	260d      	movs	r6, #13
c0d03c96:	2804      	cmp	r0, #4
c0d03c98:	d100      	bne.n	c0d03c9c <parser_getItem+0x940>
c0d03c9a:	e093      	b.n	c0d03dc4 <parser_getItem+0xa68>
c0d03c9c:	2800      	cmp	r0, #0
c0d03c9e:	d000      	beq.n	c0d03ca2 <parser_getItem+0x946>
c0d03ca0:	e700      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d03ca2:	2001      	movs	r0, #1
c0d03ca4:	9913      	ldr	r1, [sp, #76]	; 0x4c
c0d03ca6:	7008      	strb	r0, [r1, #0]
c0d03ca8:	4ad8      	ldr	r2, [pc, #864]	; (c0d0400c <parser_getItem+0xcb0>)
c0d03caa:	447a      	add	r2, pc
c0d03cac:	9814      	ldr	r0, [sp, #80]	; 0x50
c0d03cae:	9910      	ldr	r1, [sp, #64]	; 0x40
c0d03cb0:	f7ff f8fc 	bl	c0d02eac <snprintf>
c0d03cb4:	4626      	mov	r6, r4
c0d03cb6:	e6f5      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d03cb8:	9a9d      	ldr	r2, [sp, #628]	; 0x274
c0d03cba:	999c      	ldr	r1, [sp, #624]	; 0x270
c0d03cbc:	4630      	mov	r0, r6
c0d03cbe:	f004 f9b1 	bl	c0d08024 <__aeabi_memmove>
c0d03cc2:	ac99      	add	r4, sp, #612	; 0x264
c0d03cc4:	8a23      	ldrh	r3, [r4, #16]
c0d03cc6:	a81c      	add	r0, sp, #112	; 0x70
c0d03cc8:	9915      	ldr	r1, [sp, #84]	; 0x54
c0d03cca:	4632      	mov	r2, r6
c0d03ccc:	f001 fd42 	bl	c0d05754 <tx_display_translation>
c0d03cd0:	7d20      	ldrb	r0, [r4, #20]
c0d03cd2:	2800      	cmp	r0, #0
c0d03cd4:	9f0e      	ldr	r7, [sp, #56]	; 0x38
c0d03cd6:	d00f      	beq.n	c0d03cf8 <parser_getItem+0x99c>
c0d03cd8:	2600      	movs	r6, #0
c0d03cda:	4ccd      	ldr	r4, [pc, #820]	; (c0d04010 <parser_getItem+0xcb4>)
c0d03cdc:	447c      	add	r4, pc
c0d03cde:	4dcd      	ldr	r5, [pc, #820]	; (c0d04014 <parser_getItem+0xcb8>)
c0d03ce0:	447d      	add	r5, pc
c0d03ce2:	1cb9      	adds	r1, r7, #2
c0d03ce4:	a81c      	add	r0, sp, #112	; 0x70
c0d03ce6:	4622      	mov	r2, r4
c0d03ce8:	462b      	mov	r3, r5
c0d03cea:	f004 f89b 	bl	c0d07e24 <z_str3join>
c0d03cee:	1c76      	adds	r6, r6, #1
c0d03cf0:	a899      	add	r0, sp, #612	; 0x264
c0d03cf2:	7d00      	ldrb	r0, [r0, #20]
c0d03cf4:	4286      	cmp	r6, r0
c0d03cf6:	d3f4      	bcc.n	c0d03ce2 <parser_getItem+0x986>
c0d03cf8:	4ac7      	ldr	r2, [pc, #796]	; (c0d04018 <parser_getItem+0xcbc>)
c0d03cfa:	447a      	add	r2, pc
c0d03cfc:	9812      	ldr	r0, [sp, #72]	; 0x48
c0d03cfe:	990d      	ldr	r1, [sp, #52]	; 0x34
c0d03d00:	f7ff f8d4 	bl	c0d02eac <snprintf>
c0d03d04:	e022      	b.n	c0d03d4c <parser_getItem+0x9f0>
c0d03d06:	aca6      	add	r4, sp, #664	; 0x298
c0d03d08:	212a      	movs	r1, #42	; 0x2a
c0d03d0a:	4620      	mov	r0, r4
c0d03d0c:	f004 f980 	bl	c0d08010 <__aeabi_memclr>
c0d03d10:	999a      	ldr	r1, [sp, #616]	; 0x268
c0d03d12:	4620      	mov	r0, r4
c0d03d14:	463a      	mov	r2, r7
c0d03d16:	f004 f985 	bl	c0d08024 <__aeabi_memmove>
c0d03d1a:	2e00      	cmp	r6, #0
c0d03d1c:	d00f      	beq.n	c0d03d3e <parser_getItem+0x9e2>
c0d03d1e:	2600      	movs	r6, #0
c0d03d20:	4cbe      	ldr	r4, [pc, #760]	; (c0d0401c <parser_getItem+0xcc0>)
c0d03d22:	447c      	add	r4, pc
c0d03d24:	4dbe      	ldr	r5, [pc, #760]	; (c0d04020 <parser_getItem+0xcc4>)
c0d03d26:	447d      	add	r5, pc
c0d03d28:	a8a6      	add	r0, sp, #664	; 0x298
c0d03d2a:	212a      	movs	r1, #42	; 0x2a
c0d03d2c:	4622      	mov	r2, r4
c0d03d2e:	462b      	mov	r3, r5
c0d03d30:	f004 f878 	bl	c0d07e24 <z_str3join>
c0d03d34:	1c76      	adds	r6, r6, #1
c0d03d36:	a899      	add	r0, sp, #612	; 0x264
c0d03d38:	7d00      	ldrb	r0, [r0, #20]
c0d03d3a:	4286      	cmp	r6, r0
c0d03d3c:	d3f4      	bcc.n	c0d03d28 <parser_getItem+0x9cc>
c0d03d3e:	4ab9      	ldr	r2, [pc, #740]	; (c0d04024 <parser_getItem+0xcc8>)
c0d03d40:	447a      	add	r2, pc
c0d03d42:	aba6      	add	r3, sp, #664	; 0x298
c0d03d44:	9812      	ldr	r0, [sp, #72]	; 0x48
c0d03d46:	990d      	ldr	r1, [sp, #52]	; 0x34
c0d03d48:	f7ff f8b0 	bl	c0d02eac <snprintf>
c0d03d4c:	a81c      	add	r0, sp, #112	; 0x70
c0d03d4e:	f004 faf7 	bl	c0d08340 <strlen>
c0d03d52:	4605      	mov	r5, r0
c0d03d54:	9814      	ldr	r0, [sp, #80]	; 0x50
c0d03d56:	9c10      	ldr	r4, [sp, #64]	; 0x40
c0d03d58:	4621      	mov	r1, r4
c0d03d5a:	f004 f96f 	bl	c0d0803c <explicit_bzero>
c0d03d5e:	2000      	movs	r0, #0
c0d03d60:	9a13      	ldr	r2, [sp, #76]	; 0x4c
c0d03d62:	7010      	strb	r0, [r2, #0]
c0d03d64:	1e66      	subs	r6, r4, #1
c0d03d66:	b2b4      	uxth	r4, r6
c0d03d68:	2c00      	cmp	r4, #0
c0d03d6a:	9f11      	ldr	r7, [sp, #68]	; 0x44
c0d03d6c:	d100      	bne.n	c0d03d70 <parser_getItem+0xa14>
c0d03d6e:	e140      	b.n	c0d03ff2 <parser_getItem+0xc96>
c0d03d70:	0428      	lsls	r0, r5, #16
c0d03d72:	d100      	bne.n	c0d03d76 <parser_getItem+0xa1a>
c0d03d74:	e13d      	b.n	c0d03ff2 <parser_getItem+0xc96>
c0d03d76:	b2a8      	uxth	r0, r5
c0d03d78:	4621      	mov	r1, r4
c0d03d7a:	f004 f8dd 	bl	c0d07f38 <__udivsi3>
c0d03d7e:	4346      	muls	r6, r0
c0d03d80:	1bab      	subs	r3, r5, r6
c0d03d82:	b29a      	uxth	r2, r3
c0d03d84:	1e51      	subs	r1, r2, #1
c0d03d86:	4615      	mov	r5, r2
c0d03d88:	418d      	sbcs	r5, r1
c0d03d8a:	1828      	adds	r0, r5, r0
c0d03d8c:	9913      	ldr	r1, [sp, #76]	; 0x4c
c0d03d8e:	7008      	strb	r0, [r1, #0]
c0d03d90:	b2c0      	uxtb	r0, r0
c0d03d92:	42b8      	cmp	r0, r7
c0d03d94:	d800      	bhi.n	c0d03d98 <parser_getItem+0xa3c>
c0d03d96:	e12c      	b.n	c0d03ff2 <parser_getItem+0xc96>
c0d03d98:	4621      	mov	r1, r4
c0d03d9a:	4379      	muls	r1, r7
c0d03d9c:	ad1c      	add	r5, sp, #112	; 0x70
c0d03d9e:	1869      	adds	r1, r5, r1
c0d03da0:	041b      	lsls	r3, r3, #16
c0d03da2:	d100      	bne.n	c0d03da6 <parser_getItem+0xa4a>
c0d03da4:	e0f0      	b.n	c0d03f88 <parser_getItem+0xc2c>
c0d03da6:	1e40      	subs	r0, r0, #1
c0d03da8:	42b8      	cmp	r0, r7
c0d03daa:	d000      	beq.n	c0d03dae <parser_getItem+0xa52>
c0d03dac:	e0ec      	b.n	c0d03f88 <parser_getItem+0xc2c>
c0d03dae:	9814      	ldr	r0, [sp, #80]	; 0x50
c0d03db0:	e0ec      	b.n	c0d03f8c <parser_getItem+0xc30>
c0d03db2:	2000      	movs	r0, #0
c0d03db4:	9a13      	ldr	r2, [sp, #76]	; 0x4c
c0d03db6:	7010      	strb	r0, [r2, #0]
c0d03db8:	9811      	ldr	r0, [sp, #68]	; 0x44
c0d03dba:	2800      	cmp	r0, #0
c0d03dbc:	9d14      	ldr	r5, [sp, #80]	; 0x50
c0d03dbe:	d000      	beq.n	c0d03dc2 <parser_getItem+0xa66>
c0d03dc0:	e0e0      	b.n	c0d03f84 <parser_getItem+0xc28>
c0d03dc2:	e108      	b.n	c0d03fd6 <parser_getItem+0xc7a>
c0d03dc4:	3510      	adds	r5, #16
c0d03dc6:	7828      	ldrb	r0, [r5, #0]
c0d03dc8:	2801      	cmp	r0, #1
c0d03dca:	d000      	beq.n	c0d03dce <parser_getItem+0xa72>
c0d03dcc:	e66a      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d03dce:	463a      	mov	r2, r7
c0d03dd0:	4638      	mov	r0, r7
c0d03dd2:	1c50      	adds	r0, r2, #1
c0d03dd4:	b280      	uxth	r0, r0
c0d03dd6:	00c0      	lsls	r0, r0, #3
c0d03dd8:	460c      	mov	r4, r1
c0d03dda:	1808      	adds	r0, r1, r0
c0d03ddc:	7c01      	ldrb	r1, [r0, #16]
c0d03dde:	2903      	cmp	r1, #3
c0d03de0:	d000      	beq.n	c0d03de4 <parser_getItem+0xa88>
c0d03de2:	e65f      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d03de4:	2712      	movs	r7, #18
c0d03de6:	5fc3      	ldrsh	r3, [r0, r7]
c0d03de8:	2114      	movs	r1, #20
c0d03dea:	5e40      	ldrsh	r0, [r0, r1]
c0d03dec:	1ac0      	subs	r0, r0, r3
c0d03dee:	2806      	cmp	r0, #6
c0d03df0:	d000      	beq.n	c0d03df4 <parser_getItem+0xa98>
c0d03df2:	e657      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d03df4:	6860      	ldr	r0, [r4, #4]
c0d03df6:	5cc4      	ldrb	r4, [r0, r3]
c0d03df8:	2c61      	cmp	r4, #97	; 0x61
c0d03dfa:	d000      	beq.n	c0d03dfe <parser_getItem+0xaa2>
c0d03dfc:	e652      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d03dfe:	910f      	str	r1, [sp, #60]	; 0x3c
c0d03e00:	900c      	str	r0, [sp, #48]	; 0x30
c0d03e02:	181b      	adds	r3, r3, r0
c0d03e04:	1c5c      	adds	r4, r3, #1
c0d03e06:	2300      	movs	r3, #0
c0d03e08:	4d87      	ldr	r5, [pc, #540]	; (c0d04028 <parser_getItem+0xccc>)
c0d03e0a:	447d      	add	r5, pc
c0d03e0c:	2b05      	cmp	r3, #5
c0d03e0e:	d008      	beq.n	c0d03e22 <parser_getItem+0xac6>
c0d03e10:	5ce0      	ldrb	r0, [r4, r3]
c0d03e12:	18e9      	adds	r1, r5, r3
c0d03e14:	7849      	ldrb	r1, [r1, #1]
c0d03e16:	1c5b      	adds	r3, r3, #1
c0d03e18:	4281      	cmp	r1, r0
c0d03e1a:	d0f7      	beq.n	c0d03e0c <parser_getItem+0xab0>
c0d03e1c:	2b06      	cmp	r3, #6
c0d03e1e:	d200      	bcs.n	c0d03e22 <parser_getItem+0xac6>
c0d03e20:	e640      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d03e22:	1cd0      	adds	r0, r2, #3
c0d03e24:	b280      	uxth	r0, r0
c0d03e26:	00c0      	lsls	r0, r0, #3
c0d03e28:	4977      	ldr	r1, [pc, #476]	; (c0d04008 <parser_getItem+0xcac>)
c0d03e2a:	180b      	adds	r3, r1, r0
c0d03e2c:	7c18      	ldrb	r0, [r3, #16]
c0d03e2e:	2803      	cmp	r0, #3
c0d03e30:	d000      	beq.n	c0d03e34 <parser_getItem+0xad8>
c0d03e32:	e637      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d03e34:	5fd9      	ldrsh	r1, [r3, r7]
c0d03e36:	980f      	ldr	r0, [sp, #60]	; 0x3c
c0d03e38:	5e18      	ldrsh	r0, [r3, r0]
c0d03e3a:	1a40      	subs	r0, r0, r1
c0d03e3c:	2805      	cmp	r0, #5
c0d03e3e:	d000      	beq.n	c0d03e42 <parser_getItem+0xae6>
c0d03e40:	e630      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d03e42:	980c      	ldr	r0, [sp, #48]	; 0x30
c0d03e44:	5c40      	ldrb	r0, [r0, r1]
c0d03e46:	2864      	cmp	r0, #100	; 0x64
c0d03e48:	d000      	beq.n	c0d03e4c <parser_getItem+0xaf0>
c0d03e4a:	e62b      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d03e4c:	980c      	ldr	r0, [sp, #48]	; 0x30
c0d03e4e:	1808      	adds	r0, r1, r0
c0d03e50:	1c41      	adds	r1, r0, #1
c0d03e52:	2000      	movs	r0, #0
c0d03e54:	4d75      	ldr	r5, [pc, #468]	; (c0d0402c <parser_getItem+0xcd0>)
c0d03e56:	447d      	add	r5, pc
c0d03e58:	2804      	cmp	r0, #4
c0d03e5a:	4614      	mov	r4, r2
c0d03e5c:	d009      	beq.n	c0d03e72 <parser_getItem+0xb16>
c0d03e5e:	5c0b      	ldrb	r3, [r1, r0]
c0d03e60:	182c      	adds	r4, r5, r0
c0d03e62:	7864      	ldrb	r4, [r4, #1]
c0d03e64:	1c40      	adds	r0, r0, #1
c0d03e66:	429c      	cmp	r4, r3
c0d03e68:	d0f6      	beq.n	c0d03e58 <parser_getItem+0xafc>
c0d03e6a:	2805      	cmp	r0, #5
c0d03e6c:	4614      	mov	r4, r2
c0d03e6e:	d200      	bcs.n	c0d03e72 <parser_getItem+0xb16>
c0d03e70:	e618      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d03e72:	a8a6      	add	r0, sp, #664	; 0x298
c0d03e74:	2181      	movs	r1, #129	; 0x81
c0d03e76:	f004 f8e1 	bl	c0d0803c <explicit_bzero>
c0d03e7a:	a899      	add	r0, sp, #612	; 0x264
c0d03e7c:	2132      	movs	r1, #50	; 0x32
c0d03e7e:	f004 f8dd 	bl	c0d0803c <explicit_bzero>
c0d03e82:	9814      	ldr	r0, [sp, #80]	; 0x50
c0d03e84:	9910      	ldr	r1, [sp, #64]	; 0x40
c0d03e86:	f004 f8d9 	bl	c0d0803c <explicit_bzero>
c0d03e8a:	a81c      	add	r0, sp, #112	; 0x70
c0d03e8c:	21a0      	movs	r1, #160	; 0xa0
c0d03e8e:	f004 f8d5 	bl	c0d0803c <explicit_bzero>
c0d03e92:	485d      	ldr	r0, [pc, #372]	; (c0d04008 <parser_getItem+0xcac>)
c0d03e94:	1d00      	adds	r0, r0, #4
c0d03e96:	1ca1      	adds	r1, r4, #2
c0d03e98:	00cb      	lsls	r3, r1, #3
c0d03e9a:	18c0      	adds	r0, r0, r3
c0d03e9c:	210e      	movs	r1, #14
c0d03e9e:	5e40      	ldrsh	r0, [r0, r1]
c0d03ea0:	2108      	movs	r1, #8
c0d03ea2:	2800      	cmp	r0, #0
c0d03ea4:	d500      	bpl.n	c0d03ea8 <parser_getItem+0xb4c>
c0d03ea6:	e1c9      	b.n	c0d0423c <parser_getItem+0xee0>
c0d03ea8:	4a57      	ldr	r2, [pc, #348]	; (c0d04008 <parser_getItem+0xcac>)
c0d03eaa:	3210      	adds	r2, #16
c0d03eac:	18d3      	adds	r3, r2, r3
c0d03eae:	2404      	movs	r4, #4
c0d03eb0:	5f1b      	ldrsh	r3, [r3, r4]
c0d03eb2:	1a1c      	subs	r4, r3, r0
c0d03eb4:	1e63      	subs	r3, r4, #1
c0d03eb6:	2605      	movs	r6, #5
c0d03eb8:	2b30      	cmp	r3, #48	; 0x30
c0d03eba:	d900      	bls.n	c0d03ebe <parser_getItem+0xb62>
c0d03ebc:	e5f2      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d03ebe:	9b15      	ldr	r3, [sp, #84]	; 0x54
c0d03ec0:	189b      	adds	r3, r3, r2
c0d03ec2:	2222      	movs	r2, #34	; 0x22
c0d03ec4:	5e9a      	ldrsh	r2, [r3, r2]
c0d03ec6:	2524      	movs	r5, #36	; 0x24
c0d03ec8:	5f5b      	ldrsh	r3, [r3, r5]
c0d03eca:	1a9d      	subs	r5, r3, r2
c0d03ecc:	1e6b      	subs	r3, r5, #1
c0d03ece:	2b7f      	cmp	r3, #127	; 0x7f
c0d03ed0:	d900      	bls.n	c0d03ed4 <parser_getItem+0xb78>
c0d03ed2:	e5e7      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d03ed4:	192b      	adds	r3, r5, r4
c0d03ed6:	2b9e      	cmp	r3, #158	; 0x9e
c0d03ed8:	460e      	mov	r6, r1
c0d03eda:	d900      	bls.n	c0d03ede <parser_getItem+0xb82>
c0d03edc:	e5e2      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d03ede:	494a      	ldr	r1, [pc, #296]	; (c0d04008 <parser_getItem+0xcac>)
c0d03ee0:	6849      	ldr	r1, [r1, #4]
c0d03ee2:	1808      	adds	r0, r1, r0
c0d03ee4:	9015      	str	r0, [sp, #84]	; 0x54
c0d03ee6:	188f      	adds	r7, r1, r2
c0d03ee8:	a8a6      	add	r0, sp, #664	; 0x298
c0d03eea:	4639      	mov	r1, r7
c0d03eec:	462a      	mov	r2, r5
c0d03eee:	f004 f899 	bl	c0d08024 <__aeabi_memmove>
c0d03ef2:	ae99      	add	r6, sp, #612	; 0x264
c0d03ef4:	4630      	mov	r0, r6
c0d03ef6:	9915      	ldr	r1, [sp, #84]	; 0x54
c0d03ef8:	4622      	mov	r2, r4
c0d03efa:	f004 f893 	bl	c0d08024 <__aeabi_memmove>
c0d03efe:	a81c      	add	r0, sp, #112	; 0x70
c0d03f00:	21a0      	movs	r1, #160	; 0xa0
c0d03f02:	4a4b      	ldr	r2, [pc, #300]	; (c0d04030 <parser_getItem+0xcd4>)
c0d03f04:	447a      	add	r2, pc
c0d03f06:	4633      	mov	r3, r6
c0d03f08:	f7fe ffd0 	bl	c0d02eac <snprintf>
c0d03f0c:	b2ec      	uxtb	r4, r5
c0d03f0e:	f001 f99b 	bl	c0d05248 <tx_is_expert_mode>
c0d03f12:	2c05      	cmp	r4, #5
c0d03f14:	d000      	beq.n	c0d03f18 <parser_getItem+0xbbc>
c0d03f16:	e1b7      	b.n	c0d04288 <parser_getItem+0xf2c>
c0d03f18:	2800      	cmp	r0, #0
c0d03f1a:	d000      	beq.n	c0d03f1e <parser_getItem+0xbc2>
c0d03f1c:	e1b4      	b.n	c0d04288 <parser_getItem+0xf2c>
c0d03f1e:	4945      	ldr	r1, [pc, #276]	; (c0d04034 <parser_getItem+0xcd8>)
c0d03f20:	4479      	add	r1, pc
c0d03f22:	2605      	movs	r6, #5
c0d03f24:	4638      	mov	r0, r7
c0d03f26:	4632      	mov	r2, r6
c0d03f28:	f004 f88c 	bl	c0d08044 <memcmp>
c0d03f2c:	2800      	cmp	r0, #0
c0d03f2e:	d000      	beq.n	c0d03f32 <parser_getItem+0xbd6>
c0d03f30:	e1aa      	b.n	c0d04288 <parser_getItem+0xf2c>
c0d03f32:	a81c      	add	r0, sp, #112	; 0x70
c0d03f34:	21a0      	movs	r1, #160	; 0xa0
c0d03f36:	f004 f881 	bl	c0d0803c <explicit_bzero>
c0d03f3a:	a899      	add	r0, sp, #612	; 0x264
c0d03f3c:	f004 fa00 	bl	c0d08340 <strlen>
c0d03f40:	4604      	mov	r4, r0
c0d03f42:	1c80      	adds	r0, r0, #2
c0d03f44:	28a0      	cmp	r0, #160	; 0xa0
c0d03f46:	d900      	bls.n	c0d03f4a <parser_getItem+0xbee>
c0d03f48:	e5ac      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d03f4a:	2c06      	cmp	r4, #6
c0d03f4c:	d900      	bls.n	c0d03f50 <parser_getItem+0xbf4>
c0d03f4e:	e177      	b.n	c0d04240 <parser_getItem+0xee4>
c0d03f50:	a81c      	add	r0, sp, #112	; 0x70
c0d03f52:	2100      	movs	r1, #0
c0d03f54:	7081      	strb	r1, [r0, #2]
c0d03f56:	4938      	ldr	r1, [pc, #224]	; (c0d04038 <parser_getItem+0xcdc>)
c0d03f58:	8001      	strh	r1, [r0, #0]
c0d03f5a:	2106      	movs	r1, #6
c0d03f5c:	1b0d      	subs	r5, r1, r4
c0d03f5e:	1c86      	adds	r6, r0, #2
c0d03f60:	2230      	movs	r2, #48	; 0x30
c0d03f62:	4630      	mov	r0, r6
c0d03f64:	4629      	mov	r1, r5
c0d03f66:	f004 f861 	bl	c0d0802c <__aeabi_memset>
c0d03f6a:	1970      	adds	r0, r6, r5
c0d03f6c:	3498      	adds	r4, #152	; 0x98
c0d03f6e:	4a33      	ldr	r2, [pc, #204]	; (c0d0403c <parser_getItem+0xce0>)
c0d03f70:	447a      	add	r2, pc
c0d03f72:	ab99      	add	r3, sp, #612	; 0x264
c0d03f74:	4621      	mov	r1, r4
c0d03f76:	e176      	b.n	c0d04266 <parser_getItem+0xf0a>
c0d03f78:	9a13      	ldr	r2, [sp, #76]	; 0x4c
c0d03f7a:	7013      	strb	r3, [r2, #0]
c0d03f7c:	b2d8      	uxtb	r0, r3
c0d03f7e:	9911      	ldr	r1, [sp, #68]	; 0x44
c0d03f80:	4288      	cmp	r0, r1
c0d03f82:	d20d      	bcs.n	c0d03fa0 <parser_getItem+0xc44>
c0d03f84:	2609      	movs	r6, #9
c0d03f86:	e58d      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d03f88:	9814      	ldr	r0, [sp, #80]	; 0x50
c0d03f8a:	4622      	mov	r2, r4
c0d03f8c:	f004 f846 	bl	c0d0801c <__aeabi_memcpy>
c0d03f90:	e02f      	b.n	c0d03ff2 <parser_getItem+0xc96>
c0d03f92:	46c0      	nop			; (mov r8, r8)
c0d03f94:	00002d2d 	.word	0x00002d2d
c0d03f98:	00004e5e 	.word	0x00004e5e
c0d03f9c:	00006ba5 	.word	0x00006ba5
c0d03fa0:	0618      	lsls	r0, r3, #24
c0d03fa2:	d018      	beq.n	c0d03fd6 <parser_getItem+0xc7a>
c0d03fa4:	9809      	ldr	r0, [sp, #36]	; 0x24
c0d03fa6:	b285      	uxth	r5, r0
c0d03fa8:	aa16      	add	r2, sp, #88	; 0x58
c0d03faa:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d03fac:	4629      	mov	r1, r5
c0d03fae:	f7fe f950 	bl	c0d02252 <array_get_element_count>
c0d03fb2:	4606      	mov	r6, r0
c0d03fb4:	f003 ff8a 	bl	c0d07ecc <check_app_canary>
c0d03fb8:	2e00      	cmp	r6, #0
c0d03fba:	d000      	beq.n	c0d03fbe <parser_getItem+0xc62>
c0d03fbc:	e572      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d03fbe:	a816      	add	r0, sp, #88	; 0x58
c0d03fc0:	8800      	ldrh	r0, [r0, #0]
c0d03fc2:	260d      	movs	r6, #13
c0d03fc4:	2804      	cmp	r0, #4
c0d03fc6:	d057      	beq.n	c0d04078 <parser_getItem+0xd1c>
c0d03fc8:	2800      	cmp	r0, #0
c0d03fca:	d000      	beq.n	c0d03fce <parser_getItem+0xc72>
c0d03fcc:	e56a      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d03fce:	4a1c      	ldr	r2, [pc, #112]	; (c0d04040 <parser_getItem+0xce4>)
c0d03fd0:	447a      	add	r2, pc
c0d03fd2:	9814      	ldr	r0, [sp, #80]	; 0x50
c0d03fd4:	e004      	b.n	c0d03fe0 <parser_getItem+0xc84>
c0d03fd6:	2001      	movs	r0, #1
c0d03fd8:	7010      	strb	r0, [r2, #0]
c0d03fda:	4a1a      	ldr	r2, [pc, #104]	; (c0d04044 <parser_getItem+0xce8>)
c0d03fdc:	447a      	add	r2, pc
c0d03fde:	4628      	mov	r0, r5
c0d03fe0:	9910      	ldr	r1, [sp, #64]	; 0x40
c0d03fe2:	f7fe ff63 	bl	c0d02eac <snprintf>
c0d03fe6:	2600      	movs	r6, #0
c0d03fe8:	e55c      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d03fea:	9814      	ldr	r0, [sp, #80]	; 0x50
c0d03fec:	4622      	mov	r2, r4
c0d03fee:	f004 f819 	bl	c0d08024 <__aeabi_memmove>
c0d03ff2:	2600      	movs	r6, #0
c0d03ff4:	f003 ff6a 	bl	c0d07ecc <check_app_canary>
c0d03ff8:	f7ff fb0c 	bl	c0d03614 <parser_getItem+0x2b8>
c0d03ffc:	2002      	movs	r0, #2
c0d03ffe:	f7ff f9fa 	bl	c0d033f6 <parser_getItem+0x9a>
c0d04002:	46c0      	nop			; (mov r8, r8)
c0d04004:	00004ea3 	.word	0x00004ea3
c0d04008:	2000048c 	.word	0x2000048c
c0d0400c:	00004e02 	.word	0x00004e02
c0d04010:	00004d4c 	.word	0x00004d4c
c0d04014:	00006a93 	.word	0x00006a93
c0d04018:	00006a78 	.word	0x00006a78
c0d0401c:	00004d06 	.word	0x00004d06
c0d04020:	00006a4d 	.word	0x00006a4d
c0d04024:	00004d7d 	.word	0x00004d7d
c0d04028:	00004c28 	.word	0x00004c28
c0d0402c:	00004c5c 	.word	0x00004c5c
c0d04030:	00004bb4 	.word	0x00004bb4
c0d04034:	00004ba5 	.word	0x00004ba5
c0d04038:	00002e30 	.word	0x00002e30
c0d0403c:	00004b4d 	.word	0x00004b4d
c0d04040:	00004adc 	.word	0x00004adc
c0d04044:	00004ad0 	.word	0x00004ad0
c0d04048:	a8a6      	add	r0, sp, #664	; 0x298
c0d0404a:	f7fd f8a5 	bl	c0d01198 <_cbor_value_decode_int64_internal>
c0d0404e:	9099      	str	r0, [sp, #612]	; 0x264
c0d04050:	2900      	cmp	r1, #0
c0d04052:	d000      	beq.n	c0d04056 <parser_getItem+0xcfa>
c0d04054:	e0ee      	b.n	c0d04234 <parser_getItem+0xed8>
c0d04056:	a8a6      	add	r0, sp, #664	; 0x298
c0d04058:	a916      	add	r1, sp, #88	; 0x58
c0d0405a:	f7fd faab 	bl	c0d015b4 <cbor_value_enter_container>
c0d0405e:	2800      	cmp	r0, #0
c0d04060:	d001      	beq.n	c0d04066 <parser_getItem+0xd0a>
c0d04062:	f7ff f9c8 	bl	c0d033f6 <parser_getItem+0x9a>
c0d04066:	a816      	add	r0, sp, #88	; 0x58
c0d04068:	a999      	add	r1, sp, #612	; 0x264
c0d0406a:	f7fc ff2d 	bl	c0d00ec8 <cbor_get_containerInfo>
c0d0406e:	4606      	mov	r6, r0
c0d04070:	f003 ff2c 	bl	c0d07ecc <check_app_canary>
c0d04074:	f7ff f9c2 	bl	c0d033fc <parser_getItem+0xa0>
c0d04078:	00e9      	lsls	r1, r5, #3
c0d0407a:	48f3      	ldr	r0, [pc, #972]	; (c0d04448 <parser_getItem+0x10ec>)
c0d0407c:	9115      	str	r1, [sp, #84]	; 0x54
c0d0407e:	1840      	adds	r0, r0, r1
c0d04080:	7c00      	ldrb	r0, [r0, #16]
c0d04082:	2801      	cmp	r0, #1
c0d04084:	d000      	beq.n	c0d04088 <parser_getItem+0xd2c>
c0d04086:	e50d      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d04088:	9809      	ldr	r0, [sp, #36]	; 0x24
c0d0408a:	1c40      	adds	r0, r0, #1
c0d0408c:	b280      	uxth	r0, r0
c0d0408e:	00c0      	lsls	r0, r0, #3
c0d04090:	49ed      	ldr	r1, [pc, #948]	; (c0d04448 <parser_getItem+0x10ec>)
c0d04092:	1809      	adds	r1, r1, r0
c0d04094:	7c08      	ldrb	r0, [r1, #16]
c0d04096:	2803      	cmp	r0, #3
c0d04098:	d000      	beq.n	c0d0409c <parser_getItem+0xd40>
c0d0409a:	e503      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d0409c:	2012      	movs	r0, #18
c0d0409e:	9013      	str	r0, [sp, #76]	; 0x4c
c0d040a0:	5e08      	ldrsh	r0, [r1, r0]
c0d040a2:	2214      	movs	r2, #20
c0d040a4:	9211      	str	r2, [sp, #68]	; 0x44
c0d040a6:	5e89      	ldrsh	r1, [r1, r2]
c0d040a8:	1a09      	subs	r1, r1, r0
c0d040aa:	2906      	cmp	r1, #6
c0d040ac:	d000      	beq.n	c0d040b0 <parser_getItem+0xd54>
c0d040ae:	e4f9      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d040b0:	49e5      	ldr	r1, [pc, #916]	; (c0d04448 <parser_getItem+0x10ec>)
c0d040b2:	6849      	ldr	r1, [r1, #4]
c0d040b4:	910f      	str	r1, [sp, #60]	; 0x3c
c0d040b6:	5c09      	ldrb	r1, [r1, r0]
c0d040b8:	2961      	cmp	r1, #97	; 0x61
c0d040ba:	d000      	beq.n	c0d040be <parser_getItem+0xd62>
c0d040bc:	e4f2      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d040be:	990f      	ldr	r1, [sp, #60]	; 0x3c
c0d040c0:	1840      	adds	r0, r0, r1
c0d040c2:	1c40      	adds	r0, r0, #1
c0d040c4:	2300      	movs	r3, #0
c0d040c6:	49e8      	ldr	r1, [pc, #928]	; (c0d04468 <parser_getItem+0x110c>)
c0d040c8:	4479      	add	r1, pc
c0d040ca:	2b05      	cmp	r3, #5
c0d040cc:	d008      	beq.n	c0d040e0 <parser_getItem+0xd84>
c0d040ce:	5cc2      	ldrb	r2, [r0, r3]
c0d040d0:	18cc      	adds	r4, r1, r3
c0d040d2:	7864      	ldrb	r4, [r4, #1]
c0d040d4:	1c5b      	adds	r3, r3, #1
c0d040d6:	4294      	cmp	r4, r2
c0d040d8:	d0f7      	beq.n	c0d040ca <parser_getItem+0xd6e>
c0d040da:	2b06      	cmp	r3, #6
c0d040dc:	d200      	bcs.n	c0d040e0 <parser_getItem+0xd84>
c0d040de:	e4e1      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d040e0:	9809      	ldr	r0, [sp, #36]	; 0x24
c0d040e2:	1cc0      	adds	r0, r0, #3
c0d040e4:	b280      	uxth	r0, r0
c0d040e6:	00c0      	lsls	r0, r0, #3
c0d040e8:	49d7      	ldr	r1, [pc, #860]	; (c0d04448 <parser_getItem+0x10ec>)
c0d040ea:	1809      	adds	r1, r1, r0
c0d040ec:	7c08      	ldrb	r0, [r1, #16]
c0d040ee:	2803      	cmp	r0, #3
c0d040f0:	d000      	beq.n	c0d040f4 <parser_getItem+0xd98>
c0d040f2:	e4d7      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d040f4:	9813      	ldr	r0, [sp, #76]	; 0x4c
c0d040f6:	5e08      	ldrsh	r0, [r1, r0]
c0d040f8:	9a11      	ldr	r2, [sp, #68]	; 0x44
c0d040fa:	5e89      	ldrsh	r1, [r1, r2]
c0d040fc:	1a09      	subs	r1, r1, r0
c0d040fe:	2905      	cmp	r1, #5
c0d04100:	d000      	beq.n	c0d04104 <parser_getItem+0xda8>
c0d04102:	e4cf      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d04104:	990f      	ldr	r1, [sp, #60]	; 0x3c
c0d04106:	5c09      	ldrb	r1, [r1, r0]
c0d04108:	2964      	cmp	r1, #100	; 0x64
c0d0410a:	d000      	beq.n	c0d0410e <parser_getItem+0xdb2>
c0d0410c:	e4ca      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d0410e:	990f      	ldr	r1, [sp, #60]	; 0x3c
c0d04110:	1840      	adds	r0, r0, r1
c0d04112:	1c41      	adds	r1, r0, #1
c0d04114:	2000      	movs	r0, #0
c0d04116:	4ad5      	ldr	r2, [pc, #852]	; (c0d0446c <parser_getItem+0x1110>)
c0d04118:	447a      	add	r2, pc
c0d0411a:	2804      	cmp	r0, #4
c0d0411c:	d008      	beq.n	c0d04130 <parser_getItem+0xdd4>
c0d0411e:	5c0b      	ldrb	r3, [r1, r0]
c0d04120:	1814      	adds	r4, r2, r0
c0d04122:	7864      	ldrb	r4, [r4, #1]
c0d04124:	1c40      	adds	r0, r0, #1
c0d04126:	429c      	cmp	r4, r3
c0d04128:	d0f7      	beq.n	c0d0411a <parser_getItem+0xdbe>
c0d0412a:	2805      	cmp	r0, #5
c0d0412c:	d200      	bcs.n	c0d04130 <parser_getItem+0xdd4>
c0d0412e:	e4b9      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d04130:	a8a6      	add	r0, sp, #664	; 0x298
c0d04132:	2181      	movs	r1, #129	; 0x81
c0d04134:	f003 ff82 	bl	c0d0803c <explicit_bzero>
c0d04138:	a899      	add	r0, sp, #612	; 0x264
c0d0413a:	2132      	movs	r1, #50	; 0x32
c0d0413c:	f003 ff7e 	bl	c0d0803c <explicit_bzero>
c0d04140:	9814      	ldr	r0, [sp, #80]	; 0x50
c0d04142:	9910      	ldr	r1, [sp, #64]	; 0x40
c0d04144:	f003 ff7a 	bl	c0d0803c <explicit_bzero>
c0d04148:	a81c      	add	r0, sp, #112	; 0x70
c0d0414a:	21a0      	movs	r1, #160	; 0xa0
c0d0414c:	f003 ff76 	bl	c0d0803c <explicit_bzero>
c0d04150:	48bd      	ldr	r0, [pc, #756]	; (c0d04448 <parser_getItem+0x10ec>)
c0d04152:	1d00      	adds	r0, r0, #4
c0d04154:	1ca9      	adds	r1, r5, #2
c0d04156:	00cb      	lsls	r3, r1, #3
c0d04158:	18c0      	adds	r0, r0, r3
c0d0415a:	210e      	movs	r1, #14
c0d0415c:	5e40      	ldrsh	r0, [r0, r1]
c0d0415e:	2108      	movs	r1, #8
c0d04160:	2800      	cmp	r0, #0
c0d04162:	d46b      	bmi.n	c0d0423c <parser_getItem+0xee0>
c0d04164:	4ab8      	ldr	r2, [pc, #736]	; (c0d04448 <parser_getItem+0x10ec>)
c0d04166:	3210      	adds	r2, #16
c0d04168:	18d3      	adds	r3, r2, r3
c0d0416a:	2404      	movs	r4, #4
c0d0416c:	5f1b      	ldrsh	r3, [r3, r4]
c0d0416e:	1a1d      	subs	r5, r3, r0
c0d04170:	1e6b      	subs	r3, r5, #1
c0d04172:	2605      	movs	r6, #5
c0d04174:	2b30      	cmp	r3, #48	; 0x30
c0d04176:	d900      	bls.n	c0d0417a <parser_getItem+0xe1e>
c0d04178:	e494      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d0417a:	9b15      	ldr	r3, [sp, #84]	; 0x54
c0d0417c:	189b      	adds	r3, r3, r2
c0d0417e:	2222      	movs	r2, #34	; 0x22
c0d04180:	5e9a      	ldrsh	r2, [r3, r2]
c0d04182:	2424      	movs	r4, #36	; 0x24
c0d04184:	5f1b      	ldrsh	r3, [r3, r4]
c0d04186:	1a9c      	subs	r4, r3, r2
c0d04188:	1e63      	subs	r3, r4, #1
c0d0418a:	2b7f      	cmp	r3, #127	; 0x7f
c0d0418c:	d900      	bls.n	c0d04190 <parser_getItem+0xe34>
c0d0418e:	e489      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d04190:	1963      	adds	r3, r4, r5
c0d04192:	2b9e      	cmp	r3, #158	; 0x9e
c0d04194:	460e      	mov	r6, r1
c0d04196:	d900      	bls.n	c0d0419a <parser_getItem+0xe3e>
c0d04198:	e484      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d0419a:	49ab      	ldr	r1, [pc, #684]	; (c0d04448 <parser_getItem+0x10ec>)
c0d0419c:	6849      	ldr	r1, [r1, #4]
c0d0419e:	1808      	adds	r0, r1, r0
c0d041a0:	9015      	str	r0, [sp, #84]	; 0x54
c0d041a2:	1889      	adds	r1, r1, r2
c0d041a4:	a8a6      	add	r0, sp, #664	; 0x298
c0d041a6:	9113      	str	r1, [sp, #76]	; 0x4c
c0d041a8:	4622      	mov	r2, r4
c0d041aa:	f003 ff3b 	bl	c0d08024 <__aeabi_memmove>
c0d041ae:	ae99      	add	r6, sp, #612	; 0x264
c0d041b0:	4630      	mov	r0, r6
c0d041b2:	9915      	ldr	r1, [sp, #84]	; 0x54
c0d041b4:	462a      	mov	r2, r5
c0d041b6:	f003 ff35 	bl	c0d08024 <__aeabi_memmove>
c0d041ba:	a81c      	add	r0, sp, #112	; 0x70
c0d041bc:	21a0      	movs	r1, #160	; 0xa0
c0d041be:	4aac      	ldr	r2, [pc, #688]	; (c0d04470 <parser_getItem+0x1114>)
c0d041c0:	447a      	add	r2, pc
c0d041c2:	4633      	mov	r3, r6
c0d041c4:	f7fe fe72 	bl	c0d02eac <snprintf>
c0d041c8:	b2e4      	uxtb	r4, r4
c0d041ca:	f001 f83d 	bl	c0d05248 <tx_is_expert_mode>
c0d041ce:	2c05      	cmp	r4, #5
c0d041d0:	d000      	beq.n	c0d041d4 <parser_getItem+0xe78>
c0d041d2:	e0e0      	b.n	c0d04396 <parser_getItem+0x103a>
c0d041d4:	2800      	cmp	r0, #0
c0d041d6:	d000      	beq.n	c0d041da <parser_getItem+0xe7e>
c0d041d8:	e0dd      	b.n	c0d04396 <parser_getItem+0x103a>
c0d041da:	49a6      	ldr	r1, [pc, #664]	; (c0d04474 <parser_getItem+0x1118>)
c0d041dc:	4479      	add	r1, pc
c0d041de:	2605      	movs	r6, #5
c0d041e0:	9813      	ldr	r0, [sp, #76]	; 0x4c
c0d041e2:	4632      	mov	r2, r6
c0d041e4:	f003 ff2e 	bl	c0d08044 <memcmp>
c0d041e8:	2800      	cmp	r0, #0
c0d041ea:	d000      	beq.n	c0d041ee <parser_getItem+0xe92>
c0d041ec:	e0d3      	b.n	c0d04396 <parser_getItem+0x103a>
c0d041ee:	a81c      	add	r0, sp, #112	; 0x70
c0d041f0:	21a0      	movs	r1, #160	; 0xa0
c0d041f2:	f003 ff23 	bl	c0d0803c <explicit_bzero>
c0d041f6:	a899      	add	r0, sp, #612	; 0x264
c0d041f8:	f004 f8a2 	bl	c0d08340 <strlen>
c0d041fc:	4604      	mov	r4, r0
c0d041fe:	1c80      	adds	r0, r0, #2
c0d04200:	28a0      	cmp	r0, #160	; 0xa0
c0d04202:	d900      	bls.n	c0d04206 <parser_getItem+0xeaa>
c0d04204:	e44e      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d04206:	2c06      	cmp	r4, #6
c0d04208:	d900      	bls.n	c0d0420c <parser_getItem+0xeb0>
c0d0420a:	e0a0      	b.n	c0d0434e <parser_getItem+0xff2>
c0d0420c:	a81c      	add	r0, sp, #112	; 0x70
c0d0420e:	2100      	movs	r1, #0
c0d04210:	7081      	strb	r1, [r0, #2]
c0d04212:	498e      	ldr	r1, [pc, #568]	; (c0d0444c <parser_getItem+0x10f0>)
c0d04214:	8001      	strh	r1, [r0, #0]
c0d04216:	2006      	movs	r0, #6
c0d04218:	1b05      	subs	r5, r0, r4
c0d0421a:	2230      	movs	r2, #48	; 0x30
c0d0421c:	9e06      	ldr	r6, [sp, #24]
c0d0421e:	4630      	mov	r0, r6
c0d04220:	4629      	mov	r1, r5
c0d04222:	f003 ff03 	bl	c0d0802c <__aeabi_memset>
c0d04226:	1970      	adds	r0, r6, r5
c0d04228:	3498      	adds	r4, #152	; 0x98
c0d0422a:	4a93      	ldr	r2, [pc, #588]	; (c0d04478 <parser_getItem+0x111c>)
c0d0422c:	447a      	add	r2, pc
c0d0422e:	ab99      	add	r3, sp, #612	; 0x264
c0d04230:	4621      	mov	r1, r4
c0d04232:	e09f      	b.n	c0d04374 <parser_getItem+0x1018>
c0d04234:	4886      	ldr	r0, [pc, #536]	; (c0d04450 <parser_getItem+0x10f4>)
c0d04236:	1c80      	adds	r0, r0, #2
c0d04238:	f7ff f8dd 	bl	c0d033f6 <parser_getItem+0x9a>
c0d0423c:	460e      	mov	r6, r1
c0d0423e:	e431      	b.n	c0d03aa4 <parser_getItem+0x748>
c0d04240:	ae1c      	add	r6, sp, #112	; 0x70
c0d04242:	21a0      	movs	r1, #160	; 0xa0
c0d04244:	4f84      	ldr	r7, [pc, #528]	; (c0d04458 <parser_getItem+0x10fc>)
c0d04246:	447f      	add	r7, pc
c0d04248:	ad99      	add	r5, sp, #612	; 0x264
c0d0424a:	4630      	mov	r0, r6
c0d0424c:	463a      	mov	r2, r7
c0d0424e:	462b      	mov	r3, r5
c0d04250:	f7fe fe2c 	bl	c0d02eac <snprintf>
c0d04254:	1fa0      	subs	r0, r4, #6
c0d04256:	212e      	movs	r1, #46	; 0x2e
c0d04258:	5431      	strb	r1, [r6, r0]
c0d0425a:	21a5      	movs	r1, #165	; 0xa5
c0d0425c:	1b09      	subs	r1, r1, r4
c0d0425e:	182b      	adds	r3, r5, r0
c0d04260:	1830      	adds	r0, r6, r0
c0d04262:	1c40      	adds	r0, r0, #1
c0d04264:	463a      	mov	r2, r7
c0d04266:	f7fe fe21 	bl	c0d02eac <snprintf>
c0d0426a:	a81c      	add	r0, sp, #112	; 0x70
c0d0426c:	f004 f868 	bl	c0d08340 <strlen>
c0d04270:	1e81      	subs	r1, r0, #2
c0d04272:	4a77      	ldr	r2, [pc, #476]	; (c0d04450 <parser_getItem+0x10f4>)
c0d04274:	4291      	cmp	r1, r2
c0d04276:	d94b      	bls.n	c0d04310 <parser_getItem+0xfb4>
c0d04278:	a8a6      	add	r0, sp, #664	; 0x298
c0d0427a:	2181      	movs	r1, #129	; 0x81
c0d0427c:	4a77      	ldr	r2, [pc, #476]	; (c0d0445c <parser_getItem+0x1100>)
c0d0427e:	447a      	add	r2, pc
c0d04280:	4b77      	ldr	r3, [pc, #476]	; (c0d04460 <parser_getItem+0x1104>)
c0d04282:	447b      	add	r3, pc
c0d04284:	f7fe fe12 	bl	c0d02eac <snprintf>
c0d04288:	ac1c      	add	r4, sp, #112	; 0x70
c0d0428a:	21a0      	movs	r1, #160	; 0xa0
c0d0428c:	4a75      	ldr	r2, [pc, #468]	; (c0d04464 <parser_getItem+0x1108>)
c0d0428e:	447a      	add	r2, pc
c0d04290:	aba6      	add	r3, sp, #664	; 0x298
c0d04292:	4620      	mov	r0, r4
c0d04294:	f003 fdc6 	bl	c0d07e24 <z_str3join>
c0d04298:	4620      	mov	r0, r4
c0d0429a:	f004 f851 	bl	c0d08340 <strlen>
c0d0429e:	4605      	mov	r5, r0
c0d042a0:	9814      	ldr	r0, [sp, #80]	; 0x50
c0d042a2:	9c10      	ldr	r4, [sp, #64]	; 0x40
c0d042a4:	4621      	mov	r1, r4
c0d042a6:	f003 fec9 	bl	c0d0803c <explicit_bzero>
c0d042aa:	2600      	movs	r6, #0
c0d042ac:	9813      	ldr	r0, [sp, #76]	; 0x4c
c0d042ae:	7006      	strb	r6, [r0, #0]
c0d042b0:	1e64      	subs	r4, r4, #1
c0d042b2:	b2a7      	uxth	r7, r4
c0d042b4:	2f00      	cmp	r7, #0
c0d042b6:	d101      	bne.n	c0d042bc <parser_getItem+0xf60>
c0d042b8:	f7ff fbf4 	bl	c0d03aa4 <parser_getItem+0x748>
c0d042bc:	0428      	lsls	r0, r5, #16
c0d042be:	d101      	bne.n	c0d042c4 <parser_getItem+0xf68>
c0d042c0:	f7ff fbf0 	bl	c0d03aa4 <parser_getItem+0x748>
c0d042c4:	b2a8      	uxth	r0, r5
c0d042c6:	4639      	mov	r1, r7
c0d042c8:	f003 fe36 	bl	c0d07f38 <__udivsi3>
c0d042cc:	4344      	muls	r4, r0
c0d042ce:	1b2b      	subs	r3, r5, r4
c0d042d0:	b29a      	uxth	r2, r3
c0d042d2:	1e51      	subs	r1, r2, #1
c0d042d4:	4614      	mov	r4, r2
c0d042d6:	418c      	sbcs	r4, r1
c0d042d8:	1820      	adds	r0, r4, r0
c0d042da:	9913      	ldr	r1, [sp, #76]	; 0x4c
c0d042dc:	7008      	strb	r0, [r1, #0]
c0d042de:	b2c0      	uxtb	r0, r0
c0d042e0:	9911      	ldr	r1, [sp, #68]	; 0x44
c0d042e2:	4288      	cmp	r0, r1
c0d042e4:	d801      	bhi.n	c0d042ea <parser_getItem+0xf8e>
c0d042e6:	f7ff fbdd 	bl	c0d03aa4 <parser_getItem+0x748>
c0d042ea:	4639      	mov	r1, r7
c0d042ec:	9c11      	ldr	r4, [sp, #68]	; 0x44
c0d042ee:	4361      	muls	r1, r4
c0d042f0:	ac1c      	add	r4, sp, #112	; 0x70
c0d042f2:	1861      	adds	r1, r4, r1
c0d042f4:	041b      	lsls	r3, r3, #16
c0d042f6:	d005      	beq.n	c0d04304 <parser_getItem+0xfa8>
c0d042f8:	1e40      	subs	r0, r0, #1
c0d042fa:	9b11      	ldr	r3, [sp, #68]	; 0x44
c0d042fc:	4298      	cmp	r0, r3
c0d042fe:	d101      	bne.n	c0d04304 <parser_getItem+0xfa8>
c0d04300:	9814      	ldr	r0, [sp, #80]	; 0x50
c0d04302:	e001      	b.n	c0d04308 <parser_getItem+0xfac>
c0d04304:	9814      	ldr	r0, [sp, #80]	; 0x50
c0d04306:	463a      	mov	r2, r7
c0d04308:	f003 fe88 	bl	c0d0801c <__aeabi_memcpy>
c0d0430c:	f7ff fbca 	bl	c0d03aa4 <parser_getItem+0x748>
c0d04310:	2300      	movs	r3, #0
c0d04312:	4950      	ldr	r1, [pc, #320]	; (c0d04454 <parser_getItem+0x10f8>)
c0d04314:	461a      	mov	r2, r3
c0d04316:	ac1c      	add	r4, sp, #112	; 0x70
c0d04318:	5ce3      	ldrb	r3, [r4, r3]
c0d0431a:	2b2e      	cmp	r3, #46	; 0x2e
c0d0431c:	4613      	mov	r3, r2
c0d0431e:	d000      	beq.n	c0d04322 <parser_getItem+0xfc6>
c0d04320:	460b      	mov	r3, r1
c0d04322:	b219      	sxth	r1, r3
c0d04324:	1c52      	adds	r2, r2, #1
c0d04326:	b213      	sxth	r3, r2
c0d04328:	4298      	cmp	r0, r3
c0d0432a:	dd01      	ble.n	c0d04330 <parser_getItem+0xfd4>
c0d0432c:	2900      	cmp	r1, #0
c0d0432e:	d4f2      	bmi.n	c0d04316 <parser_getItem+0xfba>
c0d04330:	2900      	cmp	r1, #0
c0d04332:	d4a1      	bmi.n	c0d04278 <parser_getItem+0xf1c>
c0d04334:	1e40      	subs	r0, r0, #1
c0d04336:	1d89      	adds	r1, r1, #6
c0d04338:	4288      	cmp	r0, r1
c0d0433a:	d99d      	bls.n	c0d04278 <parser_getItem+0xf1c>
c0d0433c:	aa1c      	add	r2, sp, #112	; 0x70
c0d0433e:	5c12      	ldrb	r2, [r2, r0]
c0d04340:	2a30      	cmp	r2, #48	; 0x30
c0d04342:	d199      	bne.n	c0d04278 <parser_getItem+0xf1c>
c0d04344:	aa1c      	add	r2, sp, #112	; 0x70
c0d04346:	2300      	movs	r3, #0
c0d04348:	5413      	strb	r3, [r2, r0]
c0d0434a:	1e40      	subs	r0, r0, #1
c0d0434c:	e7f4      	b.n	c0d04338 <parser_getItem+0xfdc>
c0d0434e:	ae1c      	add	r6, sp, #112	; 0x70
c0d04350:	21a0      	movs	r1, #160	; 0xa0
c0d04352:	4a4a      	ldr	r2, [pc, #296]	; (c0d0447c <parser_getItem+0x1120>)
c0d04354:	447a      	add	r2, pc
c0d04356:	9215      	str	r2, [sp, #84]	; 0x54
c0d04358:	ad99      	add	r5, sp, #612	; 0x264
c0d0435a:	4630      	mov	r0, r6
c0d0435c:	462b      	mov	r3, r5
c0d0435e:	f7fe fda5 	bl	c0d02eac <snprintf>
c0d04362:	1fa0      	subs	r0, r4, #6
c0d04364:	212e      	movs	r1, #46	; 0x2e
c0d04366:	5431      	strb	r1, [r6, r0]
c0d04368:	21a5      	movs	r1, #165	; 0xa5
c0d0436a:	1b09      	subs	r1, r1, r4
c0d0436c:	182b      	adds	r3, r5, r0
c0d0436e:	1830      	adds	r0, r6, r0
c0d04370:	1c40      	adds	r0, r0, #1
c0d04372:	9a15      	ldr	r2, [sp, #84]	; 0x54
c0d04374:	f7fe fd9a 	bl	c0d02eac <snprintf>
c0d04378:	a81c      	add	r0, sp, #112	; 0x70
c0d0437a:	f003 ffe1 	bl	c0d08340 <strlen>
c0d0437e:	1e81      	subs	r1, r0, #2
c0d04380:	4a33      	ldr	r2, [pc, #204]	; (c0d04450 <parser_getItem+0x10f4>)
c0d04382:	4291      	cmp	r1, r2
c0d04384:	d940      	bls.n	c0d04408 <parser_getItem+0x10ac>
c0d04386:	a8a6      	add	r0, sp, #664	; 0x298
c0d04388:	2181      	movs	r1, #129	; 0x81
c0d0438a:	4a3d      	ldr	r2, [pc, #244]	; (c0d04480 <parser_getItem+0x1124>)
c0d0438c:	447a      	add	r2, pc
c0d0438e:	4b3d      	ldr	r3, [pc, #244]	; (c0d04484 <parser_getItem+0x1128>)
c0d04390:	447b      	add	r3, pc
c0d04392:	f7fe fd8b 	bl	c0d02eac <snprintf>
c0d04396:	ac1c      	add	r4, sp, #112	; 0x70
c0d04398:	21a0      	movs	r1, #160	; 0xa0
c0d0439a:	4a3b      	ldr	r2, [pc, #236]	; (c0d04488 <parser_getItem+0x112c>)
c0d0439c:	447a      	add	r2, pc
c0d0439e:	aba6      	add	r3, sp, #664	; 0x298
c0d043a0:	4620      	mov	r0, r4
c0d043a2:	f003 fd3f 	bl	c0d07e24 <z_str3join>
c0d043a6:	4620      	mov	r0, r4
c0d043a8:	f003 ffca 	bl	c0d08340 <strlen>
c0d043ac:	4604      	mov	r4, r0
c0d043ae:	9814      	ldr	r0, [sp, #80]	; 0x50
c0d043b0:	9910      	ldr	r1, [sp, #64]	; 0x40
c0d043b2:	f003 fe43 	bl	c0d0803c <explicit_bzero>
c0d043b6:	2600      	movs	r6, #0
c0d043b8:	9808      	ldr	r0, [sp, #32]
c0d043ba:	0400      	lsls	r0, r0, #16
c0d043bc:	d101      	bne.n	c0d043c2 <parser_getItem+0x1066>
c0d043be:	f7ff fb71 	bl	c0d03aa4 <parser_getItem+0x748>
c0d043c2:	0420      	lsls	r0, r4, #16
c0d043c4:	d101      	bne.n	c0d043ca <parser_getItem+0x106e>
c0d043c6:	f7ff fb6d 	bl	c0d03aa4 <parser_getItem+0x748>
c0d043ca:	b2a0      	uxth	r0, r4
c0d043cc:	9907      	ldr	r1, [sp, #28]
c0d043ce:	f003 fdb3 	bl	c0d07f38 <__udivsi3>
c0d043d2:	9908      	ldr	r1, [sp, #32]
c0d043d4:	4341      	muls	r1, r0
c0d043d6:	1a63      	subs	r3, r4, r1
c0d043d8:	b29a      	uxth	r2, r3
c0d043da:	1e51      	subs	r1, r2, #1
c0d043dc:	4614      	mov	r4, r2
c0d043de:	418c      	sbcs	r4, r1
c0d043e0:	1820      	adds	r0, r4, r0
c0d043e2:	b2c4      	uxtb	r4, r0
c0d043e4:	b2f8      	uxtb	r0, r7
c0d043e6:	4284      	cmp	r4, r0
c0d043e8:	d801      	bhi.n	c0d043ee <parser_getItem+0x1092>
c0d043ea:	f7ff fb5b 	bl	c0d03aa4 <parser_getItem+0x748>
c0d043ee:	9907      	ldr	r1, [sp, #28]
c0d043f0:	4341      	muls	r1, r0
c0d043f2:	ad1c      	add	r5, sp, #112	; 0x70
c0d043f4:	1869      	adds	r1, r5, r1
c0d043f6:	041b      	lsls	r3, r3, #16
c0d043f8:	d003      	beq.n	c0d04402 <parser_getItem+0x10a6>
c0d043fa:	1e63      	subs	r3, r4, #1
c0d043fc:	4283      	cmp	r3, r0
c0d043fe:	d100      	bne.n	c0d04402 <parser_getItem+0x10a6>
c0d04400:	e77e      	b.n	c0d04300 <parser_getItem+0xfa4>
c0d04402:	9814      	ldr	r0, [sp, #80]	; 0x50
c0d04404:	9a07      	ldr	r2, [sp, #28]
c0d04406:	e77f      	b.n	c0d04308 <parser_getItem+0xfac>
c0d04408:	2300      	movs	r3, #0
c0d0440a:	4912      	ldr	r1, [pc, #72]	; (c0d04454 <parser_getItem+0x10f8>)
c0d0440c:	461a      	mov	r2, r3
c0d0440e:	ac1c      	add	r4, sp, #112	; 0x70
c0d04410:	5ce3      	ldrb	r3, [r4, r3]
c0d04412:	2b2e      	cmp	r3, #46	; 0x2e
c0d04414:	4613      	mov	r3, r2
c0d04416:	d000      	beq.n	c0d0441a <parser_getItem+0x10be>
c0d04418:	460b      	mov	r3, r1
c0d0441a:	b219      	sxth	r1, r3
c0d0441c:	1c52      	adds	r2, r2, #1
c0d0441e:	b213      	sxth	r3, r2
c0d04420:	4298      	cmp	r0, r3
c0d04422:	dd01      	ble.n	c0d04428 <parser_getItem+0x10cc>
c0d04424:	2900      	cmp	r1, #0
c0d04426:	d4f2      	bmi.n	c0d0440e <parser_getItem+0x10b2>
c0d04428:	2900      	cmp	r1, #0
c0d0442a:	d4ac      	bmi.n	c0d04386 <parser_getItem+0x102a>
c0d0442c:	1e40      	subs	r0, r0, #1
c0d0442e:	1d89      	adds	r1, r1, #6
c0d04430:	4288      	cmp	r0, r1
c0d04432:	d9a8      	bls.n	c0d04386 <parser_getItem+0x102a>
c0d04434:	aa1c      	add	r2, sp, #112	; 0x70
c0d04436:	5c12      	ldrb	r2, [r2, r0]
c0d04438:	2a30      	cmp	r2, #48	; 0x30
c0d0443a:	d1a4      	bne.n	c0d04386 <parser_getItem+0x102a>
c0d0443c:	aa1c      	add	r2, sp, #112	; 0x70
c0d0443e:	2300      	movs	r3, #0
c0d04440:	5413      	strb	r3, [r2, r0]
c0d04442:	1e40      	subs	r0, r0, #1
c0d04444:	e7f4      	b.n	c0d04430 <parser_getItem+0x10d4>
c0d04446:	46c0      	nop			; (mov r8, r8)
c0d04448:	2000048c 	.word	0x2000048c
c0d0444c:	00002e30 	.word	0x00002e30
c0d04450:	000003fe 	.word	0x000003fe
c0d04454:	0000ffff 	.word	0x0000ffff
c0d04458:	00004877 	.word	0x00004877
c0d0445c:	0000483e 	.word	0x0000483e
c0d04460:	0000483e 	.word	0x0000483e
c0d04464:	000064e5 	.word	0x000064e5
c0d04468:	0000496a 	.word	0x0000496a
c0d0446c:	0000499a 	.word	0x0000499a
c0d04470:	000048f8 	.word	0x000048f8
c0d04474:	000048e9 	.word	0x000048e9
c0d04478:	00004891 	.word	0x00004891
c0d0447c:	00004769 	.word	0x00004769
c0d04480:	00004730 	.word	0x00004730
c0d04484:	00004730 	.word	0x00004730
c0d04488:	000063d7 	.word	0x000063d7

c0d0448c <parser_getErrorDescription>:
c0d0448c:	2815      	cmp	r0, #21
c0d0448e:	dc11      	bgt.n	c0d044b4 <parser_getErrorDescription+0x28>
c0d04490:	280b      	cmp	r0, #11
c0d04492:	dd21      	ble.n	c0d044d8 <parser_getErrorDescription+0x4c>
c0d04494:	2810      	cmp	r0, #16
c0d04496:	dd37      	ble.n	c0d04508 <parser_getErrorDescription+0x7c>
c0d04498:	2812      	cmp	r0, #18
c0d0449a:	dd5b      	ble.n	c0d04554 <parser_getErrorDescription+0xc8>
c0d0449c:	2813      	cmp	r0, #19
c0d0449e:	d100      	bne.n	c0d044a2 <parser_getErrorDescription+0x16>
c0d044a0:	e090      	b.n	c0d045c4 <parser_getErrorDescription+0x138>
c0d044a2:	2814      	cmp	r0, #20
c0d044a4:	d100      	bne.n	c0d044a8 <parser_getErrorDescription+0x1c>
c0d044a6:	e090      	b.n	c0d045ca <parser_getErrorDescription+0x13e>
c0d044a8:	2815      	cmp	r0, #21
c0d044aa:	d000      	beq.n	c0d044ae <parser_getErrorDescription+0x22>
c0d044ac:	e0c0      	b.n	c0d04630 <parser_getErrorDescription+0x1a4>
c0d044ae:	4869      	ldr	r0, [pc, #420]	; (c0d04654 <parser_getErrorDescription+0x1c8>)
c0d044b0:	4478      	add	r0, pc
c0d044b2:	4770      	bx	lr
c0d044b4:	281d      	cmp	r0, #29
c0d044b6:	dd1b      	ble.n	c0d044f0 <parser_getErrorDescription+0x64>
c0d044b8:	2821      	cmp	r0, #33	; 0x21
c0d044ba:	dd2f      	ble.n	c0d0451c <parser_getErrorDescription+0x90>
c0d044bc:	2823      	cmp	r0, #35	; 0x23
c0d044be:	dd50      	ble.n	c0d04562 <parser_getErrorDescription+0xd6>
c0d044c0:	2824      	cmp	r0, #36	; 0x24
c0d044c2:	d100      	bne.n	c0d044c6 <parser_getErrorDescription+0x3a>
c0d044c4:	e084      	b.n	c0d045d0 <parser_getErrorDescription+0x144>
c0d044c6:	2825      	cmp	r0, #37	; 0x25
c0d044c8:	d100      	bne.n	c0d044cc <parser_getErrorDescription+0x40>
c0d044ca:	e084      	b.n	c0d045d6 <parser_getErrorDescription+0x14a>
c0d044cc:	2826      	cmp	r0, #38	; 0x26
c0d044ce:	d000      	beq.n	c0d044d2 <parser_getErrorDescription+0x46>
c0d044d0:	e0ae      	b.n	c0d04630 <parser_getErrorDescription+0x1a4>
c0d044d2:	4868      	ldr	r0, [pc, #416]	; (c0d04674 <parser_getErrorDescription+0x1e8>)
c0d044d4:	4478      	add	r0, pc
c0d044d6:	4770      	bx	lr
c0d044d8:	2803      	cmp	r0, #3
c0d044da:	dc29      	bgt.n	c0d04530 <parser_getErrorDescription+0xa4>
c0d044dc:	2801      	cmp	r0, #1
c0d044de:	dc47      	bgt.n	c0d04570 <parser_getErrorDescription+0xe4>
c0d044e0:	2800      	cmp	r0, #0
c0d044e2:	d07b      	beq.n	c0d045dc <parser_getErrorDescription+0x150>
c0d044e4:	2801      	cmp	r0, #1
c0d044e6:	d000      	beq.n	c0d044ea <parser_getErrorDescription+0x5e>
c0d044e8:	e0a2      	b.n	c0d04630 <parser_getErrorDescription+0x1a4>
c0d044ea:	4863      	ldr	r0, [pc, #396]	; (c0d04678 <parser_getErrorDescription+0x1ec>)
c0d044ec:	4478      	add	r0, pc
c0d044ee:	4770      	bx	lr
c0d044f0:	2819      	cmp	r0, #25
c0d044f2:	dc26      	bgt.n	c0d04542 <parser_getErrorDescription+0xb6>
c0d044f4:	2817      	cmp	r0, #23
c0d044f6:	dc42      	bgt.n	c0d0457e <parser_getErrorDescription+0xf2>
c0d044f8:	2816      	cmp	r0, #22
c0d044fa:	d072      	beq.n	c0d045e2 <parser_getErrorDescription+0x156>
c0d044fc:	2817      	cmp	r0, #23
c0d044fe:	d000      	beq.n	c0d04502 <parser_getErrorDescription+0x76>
c0d04500:	e096      	b.n	c0d04630 <parser_getErrorDescription+0x1a4>
c0d04502:	4855      	ldr	r0, [pc, #340]	; (c0d04658 <parser_getErrorDescription+0x1cc>)
c0d04504:	4478      	add	r0, pc
c0d04506:	4770      	bx	lr
c0d04508:	280d      	cmp	r0, #13
c0d0450a:	dc3f      	bgt.n	c0d0458c <parser_getErrorDescription+0x100>
c0d0450c:	280c      	cmp	r0, #12
c0d0450e:	d06b      	beq.n	c0d045e8 <parser_getErrorDescription+0x15c>
c0d04510:	280d      	cmp	r0, #13
c0d04512:	d000      	beq.n	c0d04516 <parser_getErrorDescription+0x8a>
c0d04514:	e08c      	b.n	c0d04630 <parser_getErrorDescription+0x1a4>
c0d04516:	484c      	ldr	r0, [pc, #304]	; (c0d04648 <parser_getErrorDescription+0x1bc>)
c0d04518:	4478      	add	r0, pc
c0d0451a:	4770      	bx	lr
c0d0451c:	281f      	cmp	r0, #31
c0d0451e:	dc3c      	bgt.n	c0d0459a <parser_getErrorDescription+0x10e>
c0d04520:	281e      	cmp	r0, #30
c0d04522:	d064      	beq.n	c0d045ee <parser_getErrorDescription+0x162>
c0d04524:	281f      	cmp	r0, #31
c0d04526:	d000      	beq.n	c0d0452a <parser_getErrorDescription+0x9e>
c0d04528:	e082      	b.n	c0d04630 <parser_getErrorDescription+0x1a4>
c0d0452a:	484f      	ldr	r0, [pc, #316]	; (c0d04668 <parser_getErrorDescription+0x1dc>)
c0d0452c:	4478      	add	r0, pc
c0d0452e:	4770      	bx	lr
c0d04530:	2807      	cmp	r0, #7
c0d04532:	dc39      	bgt.n	c0d045a8 <parser_getErrorDescription+0x11c>
c0d04534:	2804      	cmp	r0, #4
c0d04536:	d05d      	beq.n	c0d045f4 <parser_getErrorDescription+0x168>
c0d04538:	2806      	cmp	r0, #6
c0d0453a:	d179      	bne.n	c0d04630 <parser_getErrorDescription+0x1a4>
c0d0453c:	4840      	ldr	r0, [pc, #256]	; (c0d04640 <parser_getErrorDescription+0x1b4>)
c0d0453e:	4478      	add	r0, pc
c0d04540:	4770      	bx	lr
c0d04542:	281b      	cmp	r0, #27
c0d04544:	dc37      	bgt.n	c0d045b6 <parser_getErrorDescription+0x12a>
c0d04546:	281a      	cmp	r0, #26
c0d04548:	d057      	beq.n	c0d045fa <parser_getErrorDescription+0x16e>
c0d0454a:	281b      	cmp	r0, #27
c0d0454c:	d170      	bne.n	c0d04630 <parser_getErrorDescription+0x1a4>
c0d0454e:	4844      	ldr	r0, [pc, #272]	; (c0d04660 <parser_getErrorDescription+0x1d4>)
c0d04550:	4478      	add	r0, pc
c0d04552:	4770      	bx	lr
c0d04554:	2811      	cmp	r0, #17
c0d04556:	d053      	beq.n	c0d04600 <parser_getErrorDescription+0x174>
c0d04558:	2812      	cmp	r0, #18
c0d0455a:	d169      	bne.n	c0d04630 <parser_getErrorDescription+0x1a4>
c0d0455c:	483c      	ldr	r0, [pc, #240]	; (c0d04650 <parser_getErrorDescription+0x1c4>)
c0d0455e:	4478      	add	r0, pc
c0d04560:	4770      	bx	lr
c0d04562:	2822      	cmp	r0, #34	; 0x22
c0d04564:	d04f      	beq.n	c0d04606 <parser_getErrorDescription+0x17a>
c0d04566:	2823      	cmp	r0, #35	; 0x23
c0d04568:	d162      	bne.n	c0d04630 <parser_getErrorDescription+0x1a4>
c0d0456a:	4841      	ldr	r0, [pc, #260]	; (c0d04670 <parser_getErrorDescription+0x1e4>)
c0d0456c:	4478      	add	r0, pc
c0d0456e:	4770      	bx	lr
c0d04570:	2802      	cmp	r0, #2
c0d04572:	d04b      	beq.n	c0d0460c <parser_getErrorDescription+0x180>
c0d04574:	2803      	cmp	r0, #3
c0d04576:	d15b      	bne.n	c0d04630 <parser_getErrorDescription+0x1a4>
c0d04578:	4830      	ldr	r0, [pc, #192]	; (c0d0463c <parser_getErrorDescription+0x1b0>)
c0d0457a:	4478      	add	r0, pc
c0d0457c:	4770      	bx	lr
c0d0457e:	2818      	cmp	r0, #24
c0d04580:	d047      	beq.n	c0d04612 <parser_getErrorDescription+0x186>
c0d04582:	2819      	cmp	r0, #25
c0d04584:	d154      	bne.n	c0d04630 <parser_getErrorDescription+0x1a4>
c0d04586:	4835      	ldr	r0, [pc, #212]	; (c0d0465c <parser_getErrorDescription+0x1d0>)
c0d04588:	4478      	add	r0, pc
c0d0458a:	4770      	bx	lr
c0d0458c:	280e      	cmp	r0, #14
c0d0458e:	d043      	beq.n	c0d04618 <parser_getErrorDescription+0x18c>
c0d04590:	280f      	cmp	r0, #15
c0d04592:	d14d      	bne.n	c0d04630 <parser_getErrorDescription+0x1a4>
c0d04594:	482d      	ldr	r0, [pc, #180]	; (c0d0464c <parser_getErrorDescription+0x1c0>)
c0d04596:	4478      	add	r0, pc
c0d04598:	4770      	bx	lr
c0d0459a:	2820      	cmp	r0, #32
c0d0459c:	d03f      	beq.n	c0d0461e <parser_getErrorDescription+0x192>
c0d0459e:	2821      	cmp	r0, #33	; 0x21
c0d045a0:	d146      	bne.n	c0d04630 <parser_getErrorDescription+0x1a4>
c0d045a2:	4832      	ldr	r0, [pc, #200]	; (c0d0466c <parser_getErrorDescription+0x1e0>)
c0d045a4:	4478      	add	r0, pc
c0d045a6:	4770      	bx	lr
c0d045a8:	2808      	cmp	r0, #8
c0d045aa:	d03b      	beq.n	c0d04624 <parser_getErrorDescription+0x198>
c0d045ac:	280b      	cmp	r0, #11
c0d045ae:	d13f      	bne.n	c0d04630 <parser_getErrorDescription+0x1a4>
c0d045b0:	4824      	ldr	r0, [pc, #144]	; (c0d04644 <parser_getErrorDescription+0x1b8>)
c0d045b2:	4478      	add	r0, pc
c0d045b4:	4770      	bx	lr
c0d045b6:	281c      	cmp	r0, #28
c0d045b8:	d037      	beq.n	c0d0462a <parser_getErrorDescription+0x19e>
c0d045ba:	281d      	cmp	r0, #29
c0d045bc:	d138      	bne.n	c0d04630 <parser_getErrorDescription+0x1a4>
c0d045be:	4829      	ldr	r0, [pc, #164]	; (c0d04664 <parser_getErrorDescription+0x1d8>)
c0d045c0:	4478      	add	r0, pc
c0d045c2:	4770      	bx	lr
c0d045c4:	4832      	ldr	r0, [pc, #200]	; (c0d04690 <parser_getErrorDescription+0x204>)
c0d045c6:	4478      	add	r0, pc
c0d045c8:	4770      	bx	lr
c0d045ca:	483c      	ldr	r0, [pc, #240]	; (c0d046bc <parser_getErrorDescription+0x230>)
c0d045cc:	4478      	add	r0, pc
c0d045ce:	4770      	bx	lr
c0d045d0:	4838      	ldr	r0, [pc, #224]	; (c0d046b4 <parser_getErrorDescription+0x228>)
c0d045d2:	4478      	add	r0, pc
c0d045d4:	4770      	bx	lr
c0d045d6:	4838      	ldr	r0, [pc, #224]	; (c0d046b8 <parser_getErrorDescription+0x22c>)
c0d045d8:	4478      	add	r0, pc
c0d045da:	4770      	bx	lr
c0d045dc:	4816      	ldr	r0, [pc, #88]	; (c0d04638 <parser_getErrorDescription+0x1ac>)
c0d045de:	4478      	add	r0, pc
c0d045e0:	4770      	bx	lr
c0d045e2:	482d      	ldr	r0, [pc, #180]	; (c0d04698 <parser_getErrorDescription+0x20c>)
c0d045e4:	4478      	add	r0, pc
c0d045e6:	4770      	bx	lr
c0d045e8:	4826      	ldr	r0, [pc, #152]	; (c0d04684 <parser_getErrorDescription+0x1f8>)
c0d045ea:	4478      	add	r0, pc
c0d045ec:	4770      	bx	lr
c0d045ee:	482e      	ldr	r0, [pc, #184]	; (c0d046a8 <parser_getErrorDescription+0x21c>)
c0d045f0:	4478      	add	r0, pc
c0d045f2:	4770      	bx	lr
c0d045f4:	4827      	ldr	r0, [pc, #156]	; (c0d04694 <parser_getErrorDescription+0x208>)
c0d045f6:	4478      	add	r0, pc
c0d045f8:	4770      	bx	lr
c0d045fa:	4829      	ldr	r0, [pc, #164]	; (c0d046a0 <parser_getErrorDescription+0x214>)
c0d045fc:	4478      	add	r0, pc
c0d045fe:	4770      	bx	lr
c0d04600:	4822      	ldr	r0, [pc, #136]	; (c0d0468c <parser_getErrorDescription+0x200>)
c0d04602:	4478      	add	r0, pc
c0d04604:	4770      	bx	lr
c0d04606:	482a      	ldr	r0, [pc, #168]	; (c0d046b0 <parser_getErrorDescription+0x224>)
c0d04608:	4478      	add	r0, pc
c0d0460a:	4770      	bx	lr
c0d0460c:	481b      	ldr	r0, [pc, #108]	; (c0d0467c <parser_getErrorDescription+0x1f0>)
c0d0460e:	4478      	add	r0, pc
c0d04610:	4770      	bx	lr
c0d04612:	4822      	ldr	r0, [pc, #136]	; (c0d0469c <parser_getErrorDescription+0x210>)
c0d04614:	4478      	add	r0, pc
c0d04616:	4770      	bx	lr
c0d04618:	481b      	ldr	r0, [pc, #108]	; (c0d04688 <parser_getErrorDescription+0x1fc>)
c0d0461a:	4478      	add	r0, pc
c0d0461c:	4770      	bx	lr
c0d0461e:	4823      	ldr	r0, [pc, #140]	; (c0d046ac <parser_getErrorDescription+0x220>)
c0d04620:	4478      	add	r0, pc
c0d04622:	4770      	bx	lr
c0d04624:	4816      	ldr	r0, [pc, #88]	; (c0d04680 <parser_getErrorDescription+0x1f4>)
c0d04626:	4478      	add	r0, pc
c0d04628:	4770      	bx	lr
c0d0462a:	481e      	ldr	r0, [pc, #120]	; (c0d046a4 <parser_getErrorDescription+0x218>)
c0d0462c:	4478      	add	r0, pc
c0d0462e:	4770      	bx	lr
c0d04630:	4823      	ldr	r0, [pc, #140]	; (c0d046c0 <parser_getErrorDescription+0x234>)
c0d04632:	4478      	add	r0, pc
c0d04634:	4770      	bx	lr
c0d04636:	46c0      	nop			; (mov r8, r8)
c0d04638:	000044f0 	.word	0x000044f0
c0d0463c:	00004651 	.word	0x00004651
c0d04640:	0000467d 	.word	0x0000467d
c0d04644:	00004562 	.word	0x00004562
c0d04648:	00004625 	.word	0x00004625
c0d0464c:	000045d4 	.word	0x000045d4
c0d04650:	0000464f 	.word	0x0000464f
c0d04654:	00004750 	.word	0x00004750
c0d04658:	00004724 	.word	0x00004724
c0d0465c:	000046e3 	.word	0x000046e3
c0d04660:	00004752 	.word	0x00004752
c0d04664:	00004709 	.word	0x00004709
c0d04668:	000047cb 	.word	0x000047cb
c0d0466c:	0000477b 	.word	0x0000477b
c0d04670:	000047c9 	.word	0x000047c9
c0d04674:	000048c7 	.word	0x000048c7
c0d04678:	000045eb 	.word	0x000045eb
c0d0467c:	000044d6 	.word	0x000044d6
c0d04680:	000044d8 	.word	0x000044d8
c0d04684:	0000453d 	.word	0x0000453d
c0d04688:	00004534 	.word	0x00004534
c0d0468c:	0000457b 	.word	0x0000457b
c0d04690:	000045c8 	.word	0x000045c8
c0d04694:	000045f0 	.word	0x000045f0
c0d04698:	0000462e 	.word	0x0000462e
c0d0469c:	00004630 	.word	0x00004630
c0d046a0:	00004690 	.word	0x00004690
c0d046a4:	0000468c 	.word	0x0000468c
c0d046a8:	000046eb 	.word	0x000046eb
c0d046ac:	000046e9 	.word	0x000046e9
c0d046b0:	0000474d 	.word	0x0000474d
c0d046b4:	00004797 	.word	0x00004797
c0d046b8:	000047ab 	.word	0x000047ab
c0d046bc:	000047e5 	.word	0x000047e5
c0d046c0:	00004796 	.word	0x00004796

c0d046c4 <_read_json_tx>:
c0d046c4:	b5b0      	push	{r4, r5, r7, lr}
c0d046c6:	4604      	mov	r4, r0
c0d046c8:	8882      	ldrh	r2, [r0, #4]
c0d046ca:	6801      	ldr	r1, [r0, #0]
c0d046cc:	4d0b      	ldr	r5, [pc, #44]	; (c0d046fc <_read_json_tx+0x38>)
c0d046ce:	4628      	mov	r0, r5
c0d046d0:	3008      	adds	r0, #8
c0d046d2:	f7fd fd83 	bl	c0d021dc <json_parse>
c0d046d6:	2800      	cmp	r0, #0
c0d046d8:	d000      	beq.n	c0d046dc <_read_json_tx+0x18>
c0d046da:	bdb0      	pop	{r4, r5, r7, pc}
c0d046dc:	6821      	ldr	r1, [r4, #0]
c0d046de:	2225      	movs	r2, #37	; 0x25
c0d046e0:	0112      	lsls	r2, r2, #4
c0d046e2:	2300      	movs	r3, #0
c0d046e4:	54ab      	strb	r3, [r5, r2]
c0d046e6:	4a06      	ldr	r2, [pc, #24]	; (c0d04700 <_read_json_tx+0x3c>)
c0d046e8:	54ab      	strb	r3, [r5, r2]
c0d046ea:	2249      	movs	r2, #73	; 0x49
c0d046ec:	00d2      	lsls	r2, r2, #3
c0d046ee:	5cab      	ldrb	r3, [r5, r2]
c0d046f0:	24fe      	movs	r4, #254	; 0xfe
c0d046f2:	401c      	ands	r4, r3
c0d046f4:	54ac      	strb	r4, [r5, r2]
c0d046f6:	6069      	str	r1, [r5, #4]
c0d046f8:	bdb0      	pop	{r4, r5, r7, pc}
c0d046fa:	46c0      	nop			; (mov r8, r8)
c0d046fc:	2000048c 	.word	0x2000048c
c0d04700:	00000249 	.word	0x00000249

c0d04704 <_read_text_tx>:
c0d04704:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d04706:	b09b      	sub	sp, #108	; 0x6c
c0d04708:	460d      	mov	r5, r1
c0d0470a:	4604      	mov	r4, r0
c0d0470c:	f003 fbde 	bl	c0d07ecc <check_app_canary>
c0d04710:	88a1      	ldrh	r1, [r4, #4]
c0d04712:	88e2      	ldrh	r2, [r4, #6]
c0d04714:	6820      	ldr	r0, [r4, #0]
c0d04716:	ab13      	add	r3, sp, #76	; 0x4c
c0d04718:	9300      	str	r3, [sp, #0]
c0d0471a:	1880      	adds	r0, r0, r2
c0d0471c:	1a89      	subs	r1, r1, r2
c0d0471e:	2600      	movs	r6, #0
c0d04720:	ab11      	add	r3, sp, #68	; 0x44
c0d04722:	4632      	mov	r2, r6
c0d04724:	f7fc fd84 	bl	c0d01230 <cbor_parser_init>
c0d04728:	2800      	cmp	r0, #0
c0d0472a:	d005      	beq.n	c0d04738 <_read_text_tx+0x34>
c0d0472c:	f7fc fbb8 	bl	c0d00ea0 <parser_mapCborError>
c0d04730:	4607      	mov	r7, r0
c0d04732:	4638      	mov	r0, r7
c0d04734:	b01b      	add	sp, #108	; 0x6c
c0d04736:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d04738:	f003 fbc8 	bl	c0d07ecc <check_app_canary>
c0d0473c:	a813      	add	r0, sp, #76	; 0x4c
c0d0473e:	7b80      	ldrb	r0, [r0, #14]
c0d04740:	2706      	movs	r7, #6
c0d04742:	28a0      	cmp	r0, #160	; 0xa0
c0d04744:	d1f5      	bne.n	c0d04732 <_read_text_tx+0x2e>
c0d04746:	a813      	add	r0, sp, #76	; 0x4c
c0d04748:	a917      	add	r1, sp, #92	; 0x5c
c0d0474a:	f7fc ff33 	bl	c0d015b4 <cbor_value_enter_container>
c0d0474e:	2800      	cmp	r0, #0
c0d04750:	d1ec      	bne.n	c0d0472c <_read_text_tx+0x28>
c0d04752:	a817      	add	r0, sp, #92	; 0x5c
c0d04754:	7b80      	ldrb	r0, [r0, #14]
c0d04756:	2800      	cmp	r0, #0
c0d04758:	d1eb      	bne.n	c0d04732 <_read_text_tx+0x2e>
c0d0475a:	a817      	add	r0, sp, #92	; 0x5c
c0d0475c:	7bc1      	ldrb	r1, [r0, #15]
c0d0475e:	0788      	lsls	r0, r1, #30
c0d04760:	d402      	bmi.n	c0d04768 <_read_text_tx+0x64>
c0d04762:	a817      	add	r0, sp, #92	; 0x5c
c0d04764:	8980      	ldrh	r0, [r0, #12]
c0d04766:	e005      	b.n	c0d04774 <_read_text_tx+0x70>
c0d04768:	a817      	add	r0, sp, #92	; 0x5c
c0d0476a:	9002      	str	r0, [sp, #8]
c0d0476c:	f7fc fd14 	bl	c0d01198 <_cbor_value_decode_int64_internal>
c0d04770:	9902      	ldr	r1, [sp, #8]
c0d04772:	7bc9      	ldrb	r1, [r1, #15]
c0d04774:	0149      	lsls	r1, r1, #5
c0d04776:	b249      	sxtb	r1, r1
c0d04778:	11c9      	asrs	r1, r1, #7
c0d0477a:	4041      	eors	r1, r0
c0d0477c:	2901      	cmp	r1, #1
c0d0477e:	d1d8      	bne.n	c0d04732 <_read_text_tx+0x2e>
c0d04780:	a817      	add	r0, sp, #92	; 0x5c
c0d04782:	f7fc fea3 	bl	c0d014cc <cbor_value_advance>
c0d04786:	2800      	cmp	r0, #0
c0d04788:	d1d0      	bne.n	c0d0472c <_read_text_tx+0x28>
c0d0478a:	a817      	add	r0, sp, #92	; 0x5c
c0d0478c:	7b80      	ldrb	r0, [r0, #14]
c0d0478e:	2880      	cmp	r0, #128	; 0x80
c0d04790:	d1cf      	bne.n	c0d04732 <_read_text_tx+0x2e>
c0d04792:	a817      	add	r0, sp, #92	; 0x5c
c0d04794:	7bc0      	ldrb	r0, [r0, #15]
c0d04796:	06c1      	lsls	r1, r0, #27
c0d04798:	d405      	bmi.n	c0d047a6 <_read_text_tx+0xa2>
c0d0479a:	0780      	lsls	r0, r0, #30
c0d0479c:	d405      	bmi.n	c0d047aa <_read_text_tx+0xa6>
c0d0479e:	a817      	add	r0, sp, #92	; 0x5c
c0d047a0:	8980      	ldrh	r0, [r0, #12]
c0d047a2:	6068      	str	r0, [r5, #4]
c0d047a4:	e007      	b.n	c0d047b6 <_read_text_tx+0xb2>
c0d047a6:	2002      	movs	r0, #2
c0d047a8:	e7c0      	b.n	c0d0472c <_read_text_tx+0x28>
c0d047aa:	a817      	add	r0, sp, #92	; 0x5c
c0d047ac:	f7fc fcf4 	bl	c0d01198 <_cbor_value_decode_int64_internal>
c0d047b0:	6068      	str	r0, [r5, #4]
c0d047b2:	2900      	cmp	r1, #0
c0d047b4:	d156      	bne.n	c0d04864 <_read_text_tx+0x160>
c0d047b6:	1e40      	subs	r0, r0, #1
c0d047b8:	28fe      	cmp	r0, #254	; 0xfe
c0d047ba:	d851      	bhi.n	c0d04860 <_read_text_tx+0x15c>
c0d047bc:	a817      	add	r0, sp, #92	; 0x5c
c0d047be:	a90d      	add	r1, sp, #52	; 0x34
c0d047c0:	f7fc fef8 	bl	c0d015b4 <cbor_value_enter_container>
c0d047c4:	2800      	cmp	r0, #0
c0d047c6:	d1b1      	bne.n	c0d0472c <_read_text_tx+0x28>
c0d047c8:	6868      	ldr	r0, [r5, #4]
c0d047ca:	2800      	cmp	r0, #0
c0d047cc:	d039      	beq.n	c0d04842 <_read_text_tx+0x13e>
c0d047ce:	2001      	movs	r0, #1
c0d047d0:	9002      	str	r0, [sp, #8]
c0d047d2:	0280      	lsls	r0, r0, #10
c0d047d4:	9001      	str	r0, [sp, #4]
c0d047d6:	a803      	add	r0, sp, #12
c0d047d8:	2118      	movs	r1, #24
c0d047da:	f003 fc2f 	bl	c0d0803c <explicit_bzero>
c0d047de:	a80d      	add	r0, sp, #52	; 0x34
c0d047e0:	7bc0      	ldrb	r0, [r0, #15]
c0d047e2:	06c1      	lsls	r1, r0, #27
c0d047e4:	d441      	bmi.n	c0d0486a <_read_text_tx+0x166>
c0d047e6:	0780      	lsls	r0, r0, #30
c0d047e8:	d403      	bmi.n	c0d047f2 <_read_text_tx+0xee>
c0d047ea:	a80d      	add	r0, sp, #52	; 0x34
c0d047ec:	8980      	ldrh	r0, [r0, #12]
c0d047ee:	9003      	str	r0, [sp, #12]
c0d047f0:	e006      	b.n	c0d04800 <_read_text_tx+0xfc>
c0d047f2:	a80d      	add	r0, sp, #52	; 0x34
c0d047f4:	f7fc fcd0 	bl	c0d01198 <_cbor_value_decode_int64_internal>
c0d047f8:	9003      	str	r0, [sp, #12]
c0d047fa:	9a02      	ldr	r2, [sp, #8]
c0d047fc:	4291      	cmp	r1, r2
c0d047fe:	d236      	bcs.n	c0d0486e <_read_text_tx+0x16a>
c0d04800:	1e40      	subs	r0, r0, #1
c0d04802:	2803      	cmp	r0, #3
c0d04804:	d835      	bhi.n	c0d04872 <_read_text_tx+0x16e>
c0d04806:	a80d      	add	r0, sp, #52	; 0x34
c0d04808:	a909      	add	r1, sp, #36	; 0x24
c0d0480a:	f7fc fed3 	bl	c0d015b4 <cbor_value_enter_container>
c0d0480e:	2800      	cmp	r0, #0
c0d04810:	d18c      	bne.n	c0d0472c <_read_text_tx+0x28>
c0d04812:	a809      	add	r0, sp, #36	; 0x24
c0d04814:	a903      	add	r1, sp, #12
c0d04816:	f7fc fca9 	bl	c0d0116c <cbor_check_expert>
c0d0481a:	4607      	mov	r7, r0
c0d0481c:	f003 fb56 	bl	c0d07ecc <check_app_canary>
c0d04820:	2f00      	cmp	r7, #0
c0d04822:	d186      	bne.n	c0d04732 <_read_text_tx+0x2e>
c0d04824:	a803      	add	r0, sp, #12
c0d04826:	7d40      	ldrb	r0, [r0, #21]
c0d04828:	7a29      	ldrb	r1, [r5, #8]
c0d0482a:	1808      	adds	r0, r1, r0
c0d0482c:	7228      	strb	r0, [r5, #8]
c0d0482e:	a80d      	add	r0, sp, #52	; 0x34
c0d04830:	f7fc fe4c 	bl	c0d014cc <cbor_value_advance>
c0d04834:	2800      	cmp	r0, #0
c0d04836:	d000      	beq.n	c0d0483a <_read_text_tx+0x136>
c0d04838:	e778      	b.n	c0d0472c <_read_text_tx+0x28>
c0d0483a:	1c76      	adds	r6, r6, #1
c0d0483c:	6868      	ldr	r0, [r5, #4]
c0d0483e:	4286      	cmp	r6, r0
c0d04840:	d3c9      	bcc.n	c0d047d6 <_read_text_tx+0xd2>
c0d04842:	a817      	add	r0, sp, #92	; 0x5c
c0d04844:	a90d      	add	r1, sp, #52	; 0x34
c0d04846:	f7fc ff2d 	bl	c0d016a4 <cbor_value_leave_container>
c0d0484a:	2800      	cmp	r0, #0
c0d0484c:	d000      	beq.n	c0d04850 <_read_text_tx+0x14c>
c0d0484e:	e76d      	b.n	c0d0472c <_read_text_tx+0x28>
c0d04850:	88a0      	ldrh	r0, [r4, #4]
c0d04852:	6821      	ldr	r1, [r4, #0]
c0d04854:	1808      	adds	r0, r1, r0
c0d04856:	9918      	ldr	r1, [sp, #96]	; 0x60
c0d04858:	4281      	cmp	r1, r0
c0d0485a:	d00c      	beq.n	c0d04876 <_read_text_tx+0x172>
c0d0485c:	2722      	movs	r7, #34	; 0x22
c0d0485e:	e768      	b.n	c0d04732 <_read_text_tx+0x2e>
c0d04860:	270a      	movs	r7, #10
c0d04862:	e766      	b.n	c0d04732 <_read_text_tx+0x2e>
c0d04864:	2001      	movs	r0, #1
c0d04866:	0280      	lsls	r0, r0, #10
c0d04868:	e760      	b.n	c0d0472c <_read_text_tx+0x28>
c0d0486a:	2002      	movs	r0, #2
c0d0486c:	9001      	str	r0, [sp, #4]
c0d0486e:	9801      	ldr	r0, [sp, #4]
c0d04870:	e75c      	b.n	c0d0472c <_read_text_tx+0x28>
c0d04872:	2709      	movs	r7, #9
c0d04874:	e75d      	b.n	c0d04732 <_read_text_tx+0x2e>
c0d04876:	2700      	movs	r7, #0
c0d04878:	e75b      	b.n	c0d04732 <_read_text_tx+0x2e>
	...

c0d0487c <pic_internal>:
c0d0487c:	467a      	mov	r2, pc
c0d0487e:	4902      	ldr	r1, [pc, #8]	; (c0d04888 <pic_internal+0xc>)
c0d04880:	1cc9      	adds	r1, r1, #3
c0d04882:	1a89      	subs	r1, r1, r2
c0d04884:	1a40      	subs	r0, r0, r1
c0d04886:	4770      	bx	lr
c0d04888:	c0d0487d 	.word	0xc0d0487d

c0d0488c <pic>:
c0d0488c:	b580      	push	{r7, lr}
c0d0488e:	4904      	ldr	r1, [pc, #16]	; (c0d048a0 <pic+0x14>)
c0d04890:	4288      	cmp	r0, r1
c0d04892:	d304      	bcc.n	c0d0489e <pic+0x12>
c0d04894:	4903      	ldr	r1, [pc, #12]	; (c0d048a4 <pic+0x18>)
c0d04896:	4288      	cmp	r0, r1
c0d04898:	d201      	bcs.n	c0d0489e <pic+0x12>
c0d0489a:	f7ff ffef 	bl	c0d0487c <pic_internal>
c0d0489e:	bd80      	pop	{r7, pc}
c0d048a0:	c0d00000 	.word	0xc0d00000
c0d048a4:	c0d0cb00 	.word	0xc0d0cb00

c0d048a8 <bech32_polymod_step>:
c0d048a8:	0141      	lsls	r1, r0, #5
c0d048aa:	17c9      	asrs	r1, r1, #31
c0d048ac:	4a0c      	ldr	r2, [pc, #48]	; (c0d048e0 <bech32_polymod_step+0x38>)
c0d048ae:	400a      	ands	r2, r1
c0d048b0:	0181      	lsls	r1, r0, #6
c0d048b2:	17c9      	asrs	r1, r1, #31
c0d048b4:	4b0b      	ldr	r3, [pc, #44]	; (c0d048e4 <bech32_polymod_step+0x3c>)
c0d048b6:	400b      	ands	r3, r1
c0d048b8:	01c1      	lsls	r1, r0, #7
c0d048ba:	0889      	lsrs	r1, r1, #2
c0d048bc:	4059      	eors	r1, r3
c0d048be:	4051      	eors	r1, r2
c0d048c0:	0102      	lsls	r2, r0, #4
c0d048c2:	17d2      	asrs	r2, r2, #31
c0d048c4:	4b08      	ldr	r3, [pc, #32]	; (c0d048e8 <bech32_polymod_step+0x40>)
c0d048c6:	4013      	ands	r3, r2
c0d048c8:	404b      	eors	r3, r1
c0d048ca:	00c1      	lsls	r1, r0, #3
c0d048cc:	17c9      	asrs	r1, r1, #31
c0d048ce:	4a07      	ldr	r2, [pc, #28]	; (c0d048ec <bech32_polymod_step+0x44>)
c0d048d0:	400a      	ands	r2, r1
c0d048d2:	405a      	eors	r2, r3
c0d048d4:	0080      	lsls	r0, r0, #2
c0d048d6:	17c1      	asrs	r1, r0, #31
c0d048d8:	4805      	ldr	r0, [pc, #20]	; (c0d048f0 <bech32_polymod_step+0x48>)
c0d048da:	4008      	ands	r0, r1
c0d048dc:	4050      	eors	r0, r2
c0d048de:	4770      	bx	lr
c0d048e0:	26508e6d 	.word	0x26508e6d
c0d048e4:	3b6a57b2 	.word	0x3b6a57b2
c0d048e8:	1ea119fa 	.word	0x1ea119fa
c0d048ec:	3d4233dd 	.word	0x3d4233dd
c0d048f0:	2a1462b3 	.word	0x2a1462b3

c0d048f4 <bech32_encode>:
c0d048f4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d048f6:	b087      	sub	sp, #28
c0d048f8:	9306      	str	r3, [sp, #24]
c0d048fa:	9203      	str	r2, [sp, #12]
c0d048fc:	9005      	str	r0, [sp, #20]
c0d048fe:	780e      	ldrb	r6, [r1, #0]
c0d04900:	2500      	movs	r5, #0
c0d04902:	2e00      	cmp	r6, #0
c0d04904:	9504      	str	r5, [sp, #16]
c0d04906:	9102      	str	r1, [sp, #8]
c0d04908:	d017      	beq.n	c0d0493a <bech32_encode+0x46>
c0d0490a:	1c4c      	adds	r4, r1, #1
c0d0490c:	2001      	movs	r0, #1
c0d0490e:	2500      	movs	r5, #0
c0d04910:	4637      	mov	r7, r6
c0d04912:	9501      	str	r5, [sp, #4]
c0d04914:	4639      	mov	r1, r7
c0d04916:	3921      	subs	r1, #33	; 0x21
c0d04918:	295d      	cmp	r1, #93	; 0x5d
c0d0491a:	d82c      	bhi.n	c0d04976 <bech32_encode+0x82>
c0d0491c:	4639      	mov	r1, r7
c0d0491e:	3941      	subs	r1, #65	; 0x41
c0d04920:	291a      	cmp	r1, #26
c0d04922:	d328      	bcc.n	c0d04976 <bech32_encode+0x82>
c0d04924:	f7ff ffc0 	bl	c0d048a8 <bech32_polymod_step>
c0d04928:	4601      	mov	r1, r0
c0d0492a:	5d62      	ldrb	r2, [r4, r5]
c0d0492c:	0978      	lsrs	r0, r7, #5
c0d0492e:	4048      	eors	r0, r1
c0d04930:	1c6d      	adds	r5, r5, #1
c0d04932:	2a00      	cmp	r2, #0
c0d04934:	4617      	mov	r7, r2
c0d04936:	d1ed      	bne.n	c0d04914 <bech32_encode+0x20>
c0d04938:	e000      	b.n	c0d0493c <bech32_encode+0x48>
c0d0493a:	2001      	movs	r0, #1
c0d0493c:	9a06      	ldr	r2, [sp, #24]
c0d0493e:	1951      	adds	r1, r2, r5
c0d04940:	1dc9      	adds	r1, r1, #7
c0d04942:	295a      	cmp	r1, #90	; 0x5a
c0d04944:	d901      	bls.n	c0d0494a <bech32_encode+0x56>
c0d04946:	9804      	ldr	r0, [sp, #16]
c0d04948:	e052      	b.n	c0d049f0 <bech32_encode+0xfc>
c0d0494a:	4615      	mov	r5, r2
c0d0494c:	f7ff ffac 	bl	c0d048a8 <bech32_polymod_step>
c0d04950:	2e00      	cmp	r6, #0
c0d04952:	d012      	beq.n	c0d0497a <bech32_encode+0x86>
c0d04954:	9902      	ldr	r1, [sp, #8]
c0d04956:	1c4c      	adds	r4, r1, #1
c0d04958:	9f05      	ldr	r7, [sp, #20]
c0d0495a:	f7ff ffa5 	bl	c0d048a8 <bech32_polymod_step>
c0d0495e:	4601      	mov	r1, r0
c0d04960:	703e      	strb	r6, [r7, #0]
c0d04962:	201f      	movs	r0, #31
c0d04964:	4030      	ands	r0, r6
c0d04966:	4048      	eors	r0, r1
c0d04968:	1c61      	adds	r1, r4, #1
c0d0496a:	1c7f      	adds	r7, r7, #1
c0d0496c:	7826      	ldrb	r6, [r4, #0]
c0d0496e:	2e00      	cmp	r6, #0
c0d04970:	460c      	mov	r4, r1
c0d04972:	d1f2      	bne.n	c0d0495a <bech32_encode+0x66>
c0d04974:	e002      	b.n	c0d0497c <bech32_encode+0x88>
c0d04976:	9801      	ldr	r0, [sp, #4]
c0d04978:	e03a      	b.n	c0d049f0 <bech32_encode+0xfc>
c0d0497a:	9f05      	ldr	r7, [sp, #20]
c0d0497c:	2131      	movs	r1, #49	; 0x31
c0d0497e:	7039      	strb	r1, [r7, #0]
c0d04980:	1c7e      	adds	r6, r7, #1
c0d04982:	2d00      	cmp	r5, #0
c0d04984:	4f1c      	ldr	r7, [pc, #112]	; (c0d049f8 <bech32_encode+0x104>)
c0d04986:	447f      	add	r7, pc
c0d04988:	d015      	beq.n	c0d049b6 <bech32_encode+0xc2>
c0d0498a:	9903      	ldr	r1, [sp, #12]
c0d0498c:	780c      	ldrb	r4, [r1, #0]
c0d0498e:	2c1f      	cmp	r4, #31
c0d04990:	d8d9      	bhi.n	c0d04946 <bech32_encode+0x52>
c0d04992:	9506      	str	r5, [sp, #24]
c0d04994:	5d3a      	ldrb	r2, [r7, r4]
c0d04996:	9205      	str	r2, [sp, #20]
c0d04998:	463d      	mov	r5, r7
c0d0499a:	460f      	mov	r7, r1
c0d0499c:	f7ff ff84 	bl	c0d048a8 <bech32_polymod_step>
c0d049a0:	4639      	mov	r1, r7
c0d049a2:	462f      	mov	r7, r5
c0d049a4:	9a05      	ldr	r2, [sp, #20]
c0d049a6:	7032      	strb	r2, [r6, #0]
c0d049a8:	9d06      	ldr	r5, [sp, #24]
c0d049aa:	4060      	eors	r0, r4
c0d049ac:	1e6d      	subs	r5, r5, #1
c0d049ae:	1c76      	adds	r6, r6, #1
c0d049b0:	1c49      	adds	r1, r1, #1
c0d049b2:	2d00      	cmp	r5, #0
c0d049b4:	d1ea      	bne.n	c0d0498c <bech32_encode+0x98>
c0d049b6:	9c0c      	ldr	r4, [sp, #48]	; 0x30
c0d049b8:	2506      	movs	r5, #6
c0d049ba:	f7ff ff75 	bl	c0d048a8 <bech32_polymod_step>
c0d049be:	1e6d      	subs	r5, r5, #1
c0d049c0:	d1fb      	bne.n	c0d049ba <bech32_encode+0xc6>
c0d049c2:	2c02      	cmp	r4, #2
c0d049c4:	d001      	beq.n	c0d049ca <bech32_encode+0xd6>
c0d049c6:	2100      	movs	r1, #0
c0d049c8:	e000      	b.n	c0d049cc <bech32_encode+0xd8>
c0d049ca:	490a      	ldr	r1, [pc, #40]	; (c0d049f4 <bech32_encode+0x100>)
c0d049cc:	2c01      	cmp	r4, #1
c0d049ce:	d100      	bne.n	c0d049d2 <bech32_encode+0xde>
c0d049d0:	4621      	mov	r1, r4
c0d049d2:	4048      	eors	r0, r1
c0d049d4:	211e      	movs	r1, #30
c0d049d6:	1f49      	subs	r1, r1, #5
c0d049d8:	4602      	mov	r2, r0
c0d049da:	40ca      	lsrs	r2, r1
c0d049dc:	231f      	movs	r3, #31
c0d049de:	4013      	ands	r3, r2
c0d049e0:	5cfa      	ldrb	r2, [r7, r3]
c0d049e2:	7032      	strb	r2, [r6, #0]
c0d049e4:	1c76      	adds	r6, r6, #1
c0d049e6:	2900      	cmp	r1, #0
c0d049e8:	d1f5      	bne.n	c0d049d6 <bech32_encode+0xe2>
c0d049ea:	2000      	movs	r0, #0
c0d049ec:	7030      	strb	r0, [r6, #0]
c0d049ee:	2001      	movs	r0, #1
c0d049f0:	b007      	add	sp, #28
c0d049f2:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d049f4:	2bc830a3 	.word	0x2bc830a3
c0d049f8:	0000445a 	.word	0x0000445a

c0d049fc <convert_bits>:
c0d049fc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d049fe:	b087      	sub	sp, #28
c0d04a00:	9304      	str	r3, [sp, #16]
c0d04a02:	460f      	mov	r7, r1
c0d04a04:	4606      	mov	r6, r0
c0d04a06:	4610      	mov	r0, r2
c0d04a08:	2500      	movs	r5, #0
c0d04a0a:	43ec      	mvns	r4, r5
c0d04a0c:	4094      	lsls	r4, r2
c0d04a0e:	43e3      	mvns	r3, r4
c0d04a10:	9a0e      	ldr	r2, [sp, #56]	; 0x38
c0d04a12:	990d      	ldr	r1, [sp, #52]	; 0x34
c0d04a14:	9102      	str	r1, [sp, #8]
c0d04a16:	990c      	ldr	r1, [sp, #48]	; 0x30
c0d04a18:	2900      	cmp	r1, #0
c0d04a1a:	d03a      	beq.n	c0d04a92 <convert_bits+0x96>
c0d04a1c:	9200      	str	r2, [sp, #0]
c0d04a1e:	9701      	str	r7, [sp, #4]
c0d04a20:	4242      	negs	r2, r0
c0d04a22:	9205      	str	r2, [sp, #20]
c0d04a24:	462c      	mov	r4, r5
c0d04a26:	9a04      	ldr	r2, [sp, #16]
c0d04a28:	9f02      	ldr	r7, [sp, #8]
c0d04a2a:	19ed      	adds	r5, r5, r7
c0d04a2c:	40bc      	lsls	r4, r7
c0d04a2e:	9204      	str	r2, [sp, #16]
c0d04a30:	7812      	ldrb	r2, [r2, #0]
c0d04a32:	4322      	orrs	r2, r4
c0d04a34:	1e49      	subs	r1, r1, #1
c0d04a36:	9103      	str	r1, [sp, #12]
c0d04a38:	4285      	cmp	r5, r0
c0d04a3a:	9206      	str	r2, [sp, #24]
c0d04a3c:	db12      	blt.n	c0d04a64 <convert_bits+0x68>
c0d04a3e:	9901      	ldr	r1, [sp, #4]
c0d04a40:	680c      	ldr	r4, [r1, #0]
c0d04a42:	4602      	mov	r2, r0
c0d04a44:	4618      	mov	r0, r3
c0d04a46:	1c63      	adds	r3, r4, #1
c0d04a48:	600b      	str	r3, [r1, #0]
c0d04a4a:	9b05      	ldr	r3, [sp, #20]
c0d04a4c:	195b      	adds	r3, r3, r5
c0d04a4e:	4637      	mov	r7, r6
c0d04a50:	9e06      	ldr	r6, [sp, #24]
c0d04a52:	40de      	lsrs	r6, r3
c0d04a54:	4603      	mov	r3, r0
c0d04a56:	4610      	mov	r0, r2
c0d04a58:	401e      	ands	r6, r3
c0d04a5a:	553e      	strb	r6, [r7, r4]
c0d04a5c:	463e      	mov	r6, r7
c0d04a5e:	1aad      	subs	r5, r5, r2
c0d04a60:	4295      	cmp	r5, r2
c0d04a62:	daed      	bge.n	c0d04a40 <convert_bits+0x44>
c0d04a64:	9a04      	ldr	r2, [sp, #16]
c0d04a66:	1c52      	adds	r2, r2, #1
c0d04a68:	9903      	ldr	r1, [sp, #12]
c0d04a6a:	2900      	cmp	r1, #0
c0d04a6c:	9c06      	ldr	r4, [sp, #24]
c0d04a6e:	d1db      	bne.n	c0d04a28 <convert_bits+0x2c>
c0d04a70:	9900      	ldr	r1, [sp, #0]
c0d04a72:	2900      	cmp	r1, #0
c0d04a74:	d011      	beq.n	c0d04a9a <convert_bits+0x9e>
c0d04a76:	2d00      	cmp	r5, #0
c0d04a78:	d017      	beq.n	c0d04aaa <convert_bits+0xae>
c0d04a7a:	4601      	mov	r1, r0
c0d04a7c:	4618      	mov	r0, r3
c0d04a7e:	9a01      	ldr	r2, [sp, #4]
c0d04a80:	6813      	ldr	r3, [r2, #0]
c0d04a82:	4627      	mov	r7, r4
c0d04a84:	1c5c      	adds	r4, r3, #1
c0d04a86:	6014      	str	r4, [r2, #0]
c0d04a88:	1b49      	subs	r1, r1, r5
c0d04a8a:	408f      	lsls	r7, r1
c0d04a8c:	4007      	ands	r7, r0
c0d04a8e:	54f7      	strb	r7, [r6, r3]
c0d04a90:	e00b      	b.n	c0d04aaa <convert_bits+0xae>
c0d04a92:	2a00      	cmp	r2, #0
c0d04a94:	d109      	bne.n	c0d04aaa <convert_bits+0xae>
c0d04a96:	2500      	movs	r5, #0
c0d04a98:	462c      	mov	r4, r5
c0d04a9a:	2100      	movs	r1, #0
c0d04a9c:	9a02      	ldr	r2, [sp, #8]
c0d04a9e:	4295      	cmp	r5, r2
c0d04aa0:	da04      	bge.n	c0d04aac <convert_bits+0xb0>
c0d04aa2:	1b42      	subs	r2, r0, r5
c0d04aa4:	4094      	lsls	r4, r2
c0d04aa6:	401c      	ands	r4, r3
c0d04aa8:	d100      	bne.n	c0d04aac <convert_bits+0xb0>
c0d04aaa:	2101      	movs	r1, #1
c0d04aac:	4608      	mov	r0, r1
c0d04aae:	b007      	add	sp, #28
c0d04ab0:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d04ab2 <SVC_Call>:
c0d04ab2:	df01      	svc	1
c0d04ab4:	2900      	cmp	r1, #0
c0d04ab6:	d100      	bne.n	c0d04aba <exception>
c0d04ab8:	4770      	bx	lr

c0d04aba <exception>:
c0d04aba:	4608      	mov	r0, r1
c0d04abc:	f7fd fd20 	bl	c0d02500 <os_longjmp>

c0d04ac0 <halt>:
c0d04ac0:	b580      	push	{r7, lr}
c0d04ac2:	b082      	sub	sp, #8
c0d04ac4:	2000      	movs	r0, #0
c0d04ac6:	9001      	str	r0, [sp, #4]
c0d04ac8:	4802      	ldr	r0, [pc, #8]	; (c0d04ad4 <halt+0x14>)
c0d04aca:	4669      	mov	r1, sp
c0d04acc:	f7ff fff1 	bl	c0d04ab2 <SVC_Call>
c0d04ad0:	b002      	add	sp, #8
c0d04ad2:	bd80      	pop	{r7, pc}
c0d04ad4:	6000023c 	.word	0x6000023c

c0d04ad8 <nvm_write>:
c0d04ad8:	b580      	push	{r7, lr}
c0d04ada:	b086      	sub	sp, #24
c0d04adc:	ab01      	add	r3, sp, #4
c0d04ade:	c307      	stmia	r3!, {r0, r1, r2}
c0d04ae0:	4802      	ldr	r0, [pc, #8]	; (c0d04aec <nvm_write+0x14>)
c0d04ae2:	a901      	add	r1, sp, #4
c0d04ae4:	f7ff ffe5 	bl	c0d04ab2 <SVC_Call>
c0d04ae8:	b006      	add	sp, #24
c0d04aea:	bd80      	pop	{r7, pc}
c0d04aec:	6000037f 	.word	0x6000037f

c0d04af0 <os_perso_isonboarded>:
c0d04af0:	b580      	push	{r7, lr}
c0d04af2:	b082      	sub	sp, #8
c0d04af4:	2000      	movs	r0, #0
c0d04af6:	9001      	str	r0, [sp, #4]
c0d04af8:	4803      	ldr	r0, [pc, #12]	; (c0d04b08 <os_perso_isonboarded+0x18>)
c0d04afa:	4669      	mov	r1, sp
c0d04afc:	f7ff ffd9 	bl	c0d04ab2 <SVC_Call>
c0d04b00:	b2c0      	uxtb	r0, r0
c0d04b02:	b002      	add	sp, #8
c0d04b04:	bd80      	pop	{r7, pc}
c0d04b06:	46c0      	nop			; (mov r8, r8)
c0d04b08:	60009f4f 	.word	0x60009f4f

c0d04b0c <os_perso_derive_node_bip32>:
c0d04b0c:	b510      	push	{r4, lr}
c0d04b0e:	b088      	sub	sp, #32
c0d04b10:	9c0a      	ldr	r4, [sp, #40]	; 0x28
c0d04b12:	9405      	str	r4, [sp, #20]
c0d04b14:	9304      	str	r3, [sp, #16]
c0d04b16:	9203      	str	r2, [sp, #12]
c0d04b18:	9102      	str	r1, [sp, #8]
c0d04b1a:	9001      	str	r0, [sp, #4]
c0d04b1c:	4802      	ldr	r0, [pc, #8]	; (c0d04b28 <os_perso_derive_node_bip32+0x1c>)
c0d04b1e:	a901      	add	r1, sp, #4
c0d04b20:	f7ff ffc7 	bl	c0d04ab2 <SVC_Call>
c0d04b24:	b008      	add	sp, #32
c0d04b26:	bd10      	pop	{r4, pc}
c0d04b28:	600053ba 	.word	0x600053ba

c0d04b2c <os_global_pin_is_validated>:
c0d04b2c:	b580      	push	{r7, lr}
c0d04b2e:	b082      	sub	sp, #8
c0d04b30:	2000      	movs	r0, #0
c0d04b32:	9001      	str	r0, [sp, #4]
c0d04b34:	4803      	ldr	r0, [pc, #12]	; (c0d04b44 <os_global_pin_is_validated+0x18>)
c0d04b36:	4669      	mov	r1, sp
c0d04b38:	f7ff ffbb 	bl	c0d04ab2 <SVC_Call>
c0d04b3c:	b2c0      	uxtb	r0, r0
c0d04b3e:	b002      	add	sp, #8
c0d04b40:	bd80      	pop	{r7, pc}
c0d04b42:	46c0      	nop			; (mov r8, r8)
c0d04b44:	6000a03c 	.word	0x6000a03c

c0d04b48 <os_ux>:
c0d04b48:	b580      	push	{r7, lr}
c0d04b4a:	b084      	sub	sp, #16
c0d04b4c:	2100      	movs	r1, #0
c0d04b4e:	9102      	str	r1, [sp, #8]
c0d04b50:	9001      	str	r0, [sp, #4]
c0d04b52:	4803      	ldr	r0, [pc, #12]	; (c0d04b60 <os_ux+0x18>)
c0d04b54:	a901      	add	r1, sp, #4
c0d04b56:	f7ff ffac 	bl	c0d04ab2 <SVC_Call>
c0d04b5a:	b004      	add	sp, #16
c0d04b5c:	bd80      	pop	{r7, pc}
c0d04b5e:	46c0      	nop			; (mov r8, r8)
c0d04b60:	60006458 	.word	0x60006458

c0d04b64 <os_flags>:
c0d04b64:	b580      	push	{r7, lr}
c0d04b66:	b082      	sub	sp, #8
c0d04b68:	2000      	movs	r0, #0
c0d04b6a:	9001      	str	r0, [sp, #4]
c0d04b6c:	4802      	ldr	r0, [pc, #8]	; (c0d04b78 <os_flags+0x14>)
c0d04b6e:	4669      	mov	r1, sp
c0d04b70:	f7ff ff9f 	bl	c0d04ab2 <SVC_Call>
c0d04b74:	b002      	add	sp, #8
c0d04b76:	bd80      	pop	{r7, pc}
c0d04b78:	60006a6e 	.word	0x60006a6e

c0d04b7c <os_registry_get_current_app_tag>:
c0d04b7c:	b580      	push	{r7, lr}
c0d04b7e:	b086      	sub	sp, #24
c0d04b80:	ab01      	add	r3, sp, #4
c0d04b82:	c307      	stmia	r3!, {r0, r1, r2}
c0d04b84:	4802      	ldr	r0, [pc, #8]	; (c0d04b90 <os_registry_get_current_app_tag+0x14>)
c0d04b86:	a901      	add	r1, sp, #4
c0d04b88:	f7ff ff93 	bl	c0d04ab2 <SVC_Call>
c0d04b8c:	b006      	add	sp, #24
c0d04b8e:	bd80      	pop	{r7, pc}
c0d04b90:	600074d4 	.word	0x600074d4

c0d04b94 <os_sched_exit>:
c0d04b94:	b084      	sub	sp, #16
c0d04b96:	2100      	movs	r1, #0
c0d04b98:	9102      	str	r1, [sp, #8]
c0d04b9a:	9001      	str	r0, [sp, #4]
c0d04b9c:	4802      	ldr	r0, [pc, #8]	; (c0d04ba8 <os_sched_exit+0x14>)
c0d04b9e:	a901      	add	r1, sp, #4
c0d04ba0:	f7ff ff87 	bl	c0d04ab2 <SVC_Call>
c0d04ba4:	deff      	udf	#255	; 0xff
c0d04ba6:	46c0      	nop			; (mov r8, r8)
c0d04ba8:	60009abe 	.word	0x60009abe

c0d04bac <io_seph_send>:
c0d04bac:	b580      	push	{r7, lr}
c0d04bae:	b084      	sub	sp, #16
c0d04bb0:	9101      	str	r1, [sp, #4]
c0d04bb2:	9000      	str	r0, [sp, #0]
c0d04bb4:	4802      	ldr	r0, [pc, #8]	; (c0d04bc0 <io_seph_send+0x14>)
c0d04bb6:	4669      	mov	r1, sp
c0d04bb8:	f7ff ff7b 	bl	c0d04ab2 <SVC_Call>
c0d04bbc:	b004      	add	sp, #16
c0d04bbe:	bd80      	pop	{r7, pc}
c0d04bc0:	60008381 	.word	0x60008381

c0d04bc4 <io_seph_is_status_sent>:
c0d04bc4:	b580      	push	{r7, lr}
c0d04bc6:	b082      	sub	sp, #8
c0d04bc8:	2000      	movs	r0, #0
c0d04bca:	9001      	str	r0, [sp, #4]
c0d04bcc:	4802      	ldr	r0, [pc, #8]	; (c0d04bd8 <io_seph_is_status_sent+0x14>)
c0d04bce:	4669      	mov	r1, sp
c0d04bd0:	f7ff ff6f 	bl	c0d04ab2 <SVC_Call>
c0d04bd4:	b002      	add	sp, #8
c0d04bd6:	bd80      	pop	{r7, pc}
c0d04bd8:	600084bb 	.word	0x600084bb

c0d04bdc <io_seph_recv>:
c0d04bdc:	b580      	push	{r7, lr}
c0d04bde:	b086      	sub	sp, #24
c0d04be0:	ab01      	add	r3, sp, #4
c0d04be2:	c307      	stmia	r3!, {r0, r1, r2}
c0d04be4:	4803      	ldr	r0, [pc, #12]	; (c0d04bf4 <io_seph_recv+0x18>)
c0d04be6:	a901      	add	r1, sp, #4
c0d04be8:	f7ff ff63 	bl	c0d04ab2 <SVC_Call>
c0d04bec:	b280      	uxth	r0, r0
c0d04bee:	b006      	add	sp, #24
c0d04bf0:	bd80      	pop	{r7, pc}
c0d04bf2:	46c0      	nop			; (mov r8, r8)
c0d04bf4:	600085e4 	.word	0x600085e4

c0d04bf8 <try_context_get>:
c0d04bf8:	b580      	push	{r7, lr}
c0d04bfa:	b082      	sub	sp, #8
c0d04bfc:	2000      	movs	r0, #0
c0d04bfe:	9001      	str	r0, [sp, #4]
c0d04c00:	4802      	ldr	r0, [pc, #8]	; (c0d04c0c <try_context_get+0x14>)
c0d04c02:	4669      	mov	r1, sp
c0d04c04:	f7ff ff55 	bl	c0d04ab2 <SVC_Call>
c0d04c08:	b002      	add	sp, #8
c0d04c0a:	bd80      	pop	{r7, pc}
c0d04c0c:	600087b1 	.word	0x600087b1

c0d04c10 <try_context_set>:
c0d04c10:	b580      	push	{r7, lr}
c0d04c12:	b084      	sub	sp, #16
c0d04c14:	2100      	movs	r1, #0
c0d04c16:	9102      	str	r1, [sp, #8]
c0d04c18:	9001      	str	r0, [sp, #4]
c0d04c1a:	4803      	ldr	r0, [pc, #12]	; (c0d04c28 <try_context_set+0x18>)
c0d04c1c:	a901      	add	r1, sp, #4
c0d04c1e:	f7ff ff48 	bl	c0d04ab2 <SVC_Call>
c0d04c22:	b004      	add	sp, #16
c0d04c24:	bd80      	pop	{r7, pc}
c0d04c26:	46c0      	nop			; (mov r8, r8)
c0d04c28:	60010b06 	.word	0x60010b06

c0d04c2c <os_sched_last_status>:
c0d04c2c:	b580      	push	{r7, lr}
c0d04c2e:	b084      	sub	sp, #16
c0d04c30:	2100      	movs	r1, #0
c0d04c32:	9102      	str	r1, [sp, #8]
c0d04c34:	9001      	str	r0, [sp, #4]
c0d04c36:	4803      	ldr	r0, [pc, #12]	; (c0d04c44 <os_sched_last_status+0x18>)
c0d04c38:	a901      	add	r1, sp, #4
c0d04c3a:	f7ff ff3a 	bl	c0d04ab2 <SVC_Call>
c0d04c3e:	b2c0      	uxtb	r0, r0
c0d04c40:	b004      	add	sp, #16
c0d04c42:	bd80      	pop	{r7, pc}
c0d04c44:	60009c8b 	.word	0x60009c8b

c0d04c48 <tx_initialize>:
c0d04c48:	b580      	push	{r7, lr}
c0d04c4a:	4805      	ldr	r0, [pc, #20]	; (c0d04c60 <tx_initialize+0x18>)
c0d04c4c:	f7ff fe1e 	bl	c0d0488c <pic>
c0d04c50:	4602      	mov	r2, r0
c0d04c52:	2001      	movs	r0, #1
c0d04c54:	0201      	lsls	r1, r0, #8
c0d04c56:	0343      	lsls	r3, r0, #13
c0d04c58:	4802      	ldr	r0, [pc, #8]	; (c0d04c64 <tx_initialize+0x1c>)
c0d04c5a:	f7fc f8ad 	bl	c0d00db8 <buffering_init>
c0d04c5e:	bd80      	pop	{r7, pc}
c0d04c60:	c0d0ab00 	.word	0xc0d0ab00
c0d04c64:	20000708 	.word	0x20000708

c0d04c68 <tx_reset>:
c0d04c68:	b580      	push	{r7, lr}
c0d04c6a:	f7fc f8bd 	bl	c0d00de8 <buffering_reset>
c0d04c6e:	bd80      	pop	{r7, pc}

c0d04c70 <tx_append>:
c0d04c70:	b580      	push	{r7, lr}
c0d04c72:	f7fc f8cb 	bl	c0d00e0c <buffering_append>
c0d04c76:	bd80      	pop	{r7, pc}

c0d04c78 <tx_get_buffer_length>:
c0d04c78:	b580      	push	{r7, lr}
c0d04c7a:	f7fc f907 	bl	c0d00e8c <buffering_get_buffer>
c0d04c7e:	88c0      	ldrh	r0, [r0, #6]
c0d04c80:	bd80      	pop	{r7, pc}

c0d04c82 <tx_get_buffer>:
c0d04c82:	b580      	push	{r7, lr}
c0d04c84:	f7fc f902 	bl	c0d00e8c <buffering_get_buffer>
c0d04c88:	6800      	ldr	r0, [r0, #0]
c0d04c8a:	bd80      	pop	{r7, pc}

c0d04c8c <tx_parse>:
c0d04c8c:	b5b0      	push	{r4, r5, r7, lr}
c0d04c8e:	2801      	cmp	r0, #1
c0d04c90:	d823      	bhi.n	c0d04cda <tx_parse+0x4e>
c0d04c92:	4605      	mov	r5, r0
c0d04c94:	209f      	movs	r0, #159	; 0x9f
c0d04c96:	0081      	lsls	r1, r0, #2
c0d04c98:	4c12      	ldr	r4, [pc, #72]	; (c0d04ce4 <tx_parse+0x58>)
c0d04c9a:	4620      	mov	r0, r4
c0d04c9c:	f003 f9ce 	bl	c0d0803c <explicit_bzero>
c0d04ca0:	7025      	strb	r5, [r4, #0]
c0d04ca2:	f7fc f8f3 	bl	c0d00e8c <buffering_get_buffer>
c0d04ca6:	6805      	ldr	r5, [r0, #0]
c0d04ca8:	f7fc f8f0 	bl	c0d00e8c <buffering_get_buffer>
c0d04cac:	88c2      	ldrh	r2, [r0, #6]
c0d04cae:	480e      	ldr	r0, [pc, #56]	; (c0d04ce8 <tx_parse+0x5c>)
c0d04cb0:	4629      	mov	r1, r5
c0d04cb2:	4623      	mov	r3, r4
c0d04cb4:	f7fe fac2 	bl	c0d0323c <parser_parse>
c0d04cb8:	4604      	mov	r4, r0
c0d04cba:	480c      	ldr	r0, [pc, #48]	; (c0d04cec <tx_parse+0x60>)
c0d04cbc:	4478      	add	r0, pc
c0d04cbe:	f003 f913 	bl	c0d07ee8 <zemu_log_stack>
c0d04cc2:	2c00      	cmp	r4, #0
c0d04cc4:	d10a      	bne.n	c0d04cdc <tx_parse+0x50>
c0d04cc6:	4808      	ldr	r0, [pc, #32]	; (c0d04ce8 <tx_parse+0x5c>)
c0d04cc8:	f7fe faec 	bl	c0d032a4 <parser_validate>
c0d04ccc:	4604      	mov	r4, r0
c0d04cce:	f003 f8fd 	bl	c0d07ecc <check_app_canary>
c0d04cd2:	2c00      	cmp	r4, #0
c0d04cd4:	d102      	bne.n	c0d04cdc <tx_parse+0x50>
c0d04cd6:	2000      	movs	r0, #0
c0d04cd8:	bdb0      	pop	{r4, r5, r7, pc}
c0d04cda:	240f      	movs	r4, #15
c0d04cdc:	4620      	mov	r0, r4
c0d04cde:	f7ff fbd5 	bl	c0d0448c <parser_getErrorDescription>
c0d04ce2:	bdb0      	pop	{r4, r5, r7, pc}
c0d04ce4:	20000808 	.word	0x20000808
c0d04ce8:	20000a84 	.word	0x20000a84
c0d04cec:	00004145 	.word	0x00004145

c0d04cf0 <tx_getNumItems>:
c0d04cf0:	b580      	push	{r7, lr}
c0d04cf2:	4601      	mov	r1, r0
c0d04cf4:	4804      	ldr	r0, [pc, #16]	; (c0d04d08 <tx_getNumItems+0x18>)
c0d04cf6:	f7fe fb17 	bl	c0d03328 <parser_getNumItems>
c0d04cfa:	2800      	cmp	r0, #0
c0d04cfc:	d001      	beq.n	c0d04d02 <tx_getNumItems+0x12>
c0d04cfe:	2005      	movs	r0, #5
c0d04d00:	bd80      	pop	{r7, pc}
c0d04d02:	2003      	movs	r0, #3
c0d04d04:	bd80      	pop	{r7, pc}
c0d04d06:	46c0      	nop			; (mov r8, r8)
c0d04d08:	20000a84 	.word	0x20000a84

c0d04d0c <tx_getItem>:
c0d04d0c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d04d0e:	b087      	sub	sp, #28
c0d04d10:	461f      	mov	r7, r3
c0d04d12:	9205      	str	r2, [sp, #20]
c0d04d14:	9104      	str	r1, [sp, #16]
c0d04d16:	4605      	mov	r5, r0
c0d04d18:	ae06      	add	r6, sp, #24
c0d04d1a:	2400      	movs	r4, #0
c0d04d1c:	7034      	strb	r4, [r6, #0]
c0d04d1e:	4815      	ldr	r0, [pc, #84]	; (c0d04d74 <tx_getItem+0x68>)
c0d04d20:	4631      	mov	r1, r6
c0d04d22:	f7fe fb01 	bl	c0d03328 <parser_getNumItems>
c0d04d26:	2205      	movs	r2, #5
c0d04d28:	2d00      	cmp	r5, #0
c0d04d2a:	d41f      	bmi.n	c0d04d6c <tx_getItem+0x60>
c0d04d2c:	2800      	cmp	r0, #0
c0d04d2e:	d11d      	bne.n	c0d04d6c <tx_getItem+0x60>
c0d04d30:	b2e9      	uxtb	r1, r5
c0d04d32:	7830      	ldrb	r0, [r6, #0]
c0d04d34:	4288      	cmp	r0, r1
c0d04d36:	d319      	bcc.n	c0d04d6c <tx_getItem+0x60>
c0d04d38:	4615      	mov	r5, r2
c0d04d3a:	980e      	ldr	r0, [sp, #56]	; 0x38
c0d04d3c:	9a0d      	ldr	r2, [sp, #52]	; 0x34
c0d04d3e:	9b0c      	ldr	r3, [sp, #48]	; 0x30
c0d04d40:	9700      	str	r7, [sp, #0]
c0d04d42:	9301      	str	r3, [sp, #4]
c0d04d44:	9202      	str	r2, [sp, #8]
c0d04d46:	9003      	str	r0, [sp, #12]
c0d04d48:	480a      	ldr	r0, [pc, #40]	; (c0d04d74 <tx_getItem+0x68>)
c0d04d4a:	9a04      	ldr	r2, [sp, #16]
c0d04d4c:	9b05      	ldr	r3, [sp, #20]
c0d04d4e:	f7fe fb05 	bl	c0d0335c <parser_getItem>
c0d04d52:	1ec1      	subs	r1, r0, #3
c0d04d54:	2902      	cmp	r1, #2
c0d04d56:	d306      	bcc.n	c0d04d66 <tx_getItem+0x5a>
c0d04d58:	2800      	cmp	r0, #0
c0d04d5a:	d006      	beq.n	c0d04d6a <tx_getItem+0x5e>
c0d04d5c:	462a      	mov	r2, r5
c0d04d5e:	2801      	cmp	r0, #1
c0d04d60:	d004      	beq.n	c0d04d6c <tx_getItem+0x60>
c0d04d62:	4622      	mov	r2, r4
c0d04d64:	e002      	b.n	c0d04d6c <tx_getItem+0x60>
c0d04d66:	462a      	mov	r2, r5
c0d04d68:	e000      	b.n	c0d04d6c <tx_getItem+0x60>
c0d04d6a:	2203      	movs	r2, #3
c0d04d6c:	4610      	mov	r0, r2
c0d04d6e:	b007      	add	sp, #28
c0d04d70:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d04d72:	46c0      	nop			; (mov r8, r8)
c0d04d74:	20000a84 	.word	0x20000a84

c0d04d78 <utf8codepoint>:
c0d04d78:	b5b0      	push	{r4, r5, r7, lr}
c0d04d7a:	7802      	ldrb	r2, [r0, #0]
c0d04d7c:	23f8      	movs	r3, #248	; 0xf8
c0d04d7e:	4013      	ands	r3, r2
c0d04d80:	2bf0      	cmp	r3, #240	; 0xf0
c0d04d82:	d10c      	bne.n	c0d04d9e <utf8codepoint+0x26>
c0d04d84:	0752      	lsls	r2, r2, #29
c0d04d86:	0ad2      	lsrs	r2, r2, #11
c0d04d88:	7843      	ldrb	r3, [r0, #1]
c0d04d8a:	069b      	lsls	r3, r3, #26
c0d04d8c:	0b9b      	lsrs	r3, r3, #14
c0d04d8e:	189a      	adds	r2, r3, r2
c0d04d90:	7883      	ldrb	r3, [r0, #2]
c0d04d92:	069b      	lsls	r3, r3, #26
c0d04d94:	0d1b      	lsrs	r3, r3, #20
c0d04d96:	18d4      	adds	r4, r2, r3
c0d04d98:	2304      	movs	r3, #4
c0d04d9a:	2203      	movs	r2, #3
c0d04d9c:	e014      	b.n	c0d04dc8 <utf8codepoint+0x50>
c0d04d9e:	23f0      	movs	r3, #240	; 0xf0
c0d04da0:	4013      	ands	r3, r2
c0d04da2:	2be0      	cmp	r3, #224	; 0xe0
c0d04da4:	d108      	bne.n	c0d04db8 <utf8codepoint+0x40>
c0d04da6:	0312      	lsls	r2, r2, #12
c0d04da8:	b292      	uxth	r2, r2
c0d04daa:	7843      	ldrb	r3, [r0, #1]
c0d04dac:	069b      	lsls	r3, r3, #26
c0d04dae:	0d1b      	lsrs	r3, r3, #20
c0d04db0:	189c      	adds	r4, r3, r2
c0d04db2:	2303      	movs	r3, #3
c0d04db4:	2202      	movs	r2, #2
c0d04db6:	e007      	b.n	c0d04dc8 <utf8codepoint+0x50>
c0d04db8:	23e0      	movs	r3, #224	; 0xe0
c0d04dba:	4013      	ands	r3, r2
c0d04dbc:	2bc0      	cmp	r3, #192	; 0xc0
c0d04dbe:	d10a      	bne.n	c0d04dd6 <utf8codepoint+0x5e>
c0d04dc0:	06d2      	lsls	r2, r2, #27
c0d04dc2:	0d54      	lsrs	r4, r2, #21
c0d04dc4:	2302      	movs	r3, #2
c0d04dc6:	2201      	movs	r2, #1
c0d04dc8:	5c85      	ldrb	r5, [r0, r2]
c0d04dca:	223f      	movs	r2, #63	; 0x3f
c0d04dcc:	402a      	ands	r2, r5
c0d04dce:	4322      	orrs	r2, r4
c0d04dd0:	600a      	str	r2, [r1, #0]
c0d04dd2:	18c0      	adds	r0, r0, r3
c0d04dd4:	bdb0      	pop	{r4, r5, r7, pc}
c0d04dd6:	2301      	movs	r3, #1
c0d04dd8:	e7fa      	b.n	c0d04dd0 <utf8codepoint+0x58>
	...

c0d04ddc <get_required_root_item>:
c0d04ddc:	2802      	cmp	r0, #2
c0d04dde:	dd08      	ble.n	c0d04df2 <get_required_root_item+0x16>
c0d04de0:	2804      	cmp	r0, #4
c0d04de2:	dc0f      	bgt.n	c0d04e04 <get_required_root_item+0x28>
c0d04de4:	2803      	cmp	r0, #3
c0d04de6:	d014      	beq.n	c0d04e12 <get_required_root_item+0x36>
c0d04de8:	2804      	cmp	r0, #4
c0d04dea:	d11b      	bne.n	c0d04e24 <get_required_root_item+0x48>
c0d04dec:	4812      	ldr	r0, [pc, #72]	; (c0d04e38 <get_required_root_item+0x5c>)
c0d04dee:	4478      	add	r0, pc
c0d04df0:	4770      	bx	lr
c0d04df2:	2800      	cmp	r0, #0
c0d04df4:	d010      	beq.n	c0d04e18 <get_required_root_item+0x3c>
c0d04df6:	2801      	cmp	r0, #1
c0d04df8:	d017      	beq.n	c0d04e2a <get_required_root_item+0x4e>
c0d04dfa:	2802      	cmp	r0, #2
c0d04dfc:	d112      	bne.n	c0d04e24 <get_required_root_item+0x48>
c0d04dfe:	480d      	ldr	r0, [pc, #52]	; (c0d04e34 <get_required_root_item+0x58>)
c0d04e00:	4478      	add	r0, pc
c0d04e02:	4770      	bx	lr
c0d04e04:	2805      	cmp	r0, #5
c0d04e06:	d00a      	beq.n	c0d04e1e <get_required_root_item+0x42>
c0d04e08:	2806      	cmp	r0, #6
c0d04e0a:	d10b      	bne.n	c0d04e24 <get_required_root_item+0x48>
c0d04e0c:	480b      	ldr	r0, [pc, #44]	; (c0d04e3c <get_required_root_item+0x60>)
c0d04e0e:	4478      	add	r0, pc
c0d04e10:	4770      	bx	lr
c0d04e12:	480d      	ldr	r0, [pc, #52]	; (c0d04e48 <get_required_root_item+0x6c>)
c0d04e14:	4478      	add	r0, pc
c0d04e16:	4770      	bx	lr
c0d04e18:	4805      	ldr	r0, [pc, #20]	; (c0d04e30 <get_required_root_item+0x54>)
c0d04e1a:	4478      	add	r0, pc
c0d04e1c:	4770      	bx	lr
c0d04e1e:	4809      	ldr	r0, [pc, #36]	; (c0d04e44 <get_required_root_item+0x68>)
c0d04e20:	4478      	add	r0, pc
c0d04e22:	4770      	bx	lr
c0d04e24:	4809      	ldr	r0, [pc, #36]	; (c0d04e4c <get_required_root_item+0x70>)
c0d04e26:	4478      	add	r0, pc
c0d04e28:	4770      	bx	lr
c0d04e2a:	4805      	ldr	r0, [pc, #20]	; (c0d04e40 <get_required_root_item+0x64>)
c0d04e2c:	4478      	add	r0, pc
c0d04e2e:	4770      	bx	lr
c0d04e30:	00003e7f 	.word	0x00003e7f
c0d04e34:	00003eaf 	.word	0x00003eaf
c0d04e38:	00003f16 	.word	0x00003f16
c0d04e3c:	0000400f 	.word	0x0000400f
c0d04e40:	00003fe2 	.word	0x00003fe2
c0d04e44:	00003ea5 	.word	0x00003ea5
c0d04e48:	00003ec2 	.word	0x00003ec2
c0d04e4c:	00005c28 	.word	0x00005c28

c0d04e50 <tx_indexRootFields>:
c0d04e50:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d04e52:	b0e1      	sub	sp, #388	; 0x184
c0d04e54:	2049      	movs	r0, #73	; 0x49
c0d04e56:	00c4      	lsls	r4, r0, #3
c0d04e58:	4fed      	ldr	r7, [pc, #948]	; (c0d05210 <tx_indexRootFields+0x3c0>)
c0d04e5a:	5d38      	ldrb	r0, [r7, r4]
c0d04e5c:	07c0      	lsls	r0, r0, #31
c0d04e5e:	d000      	beq.n	c0d04e62 <tx_indexRootFields+0x12>
c0d04e60:	e19b      	b.n	c0d0519a <tx_indexRootFields+0x34a>
c0d04e62:	48ec      	ldr	r0, [pc, #944]	; (c0d05214 <tx_indexRootFields+0x3c4>)
c0d04e64:	2120      	movs	r1, #32
c0d04e66:	f003 f8e9 	bl	c0d0803c <explicit_bzero>
c0d04e6a:	a847      	add	r0, sp, #284	; 0x11c
c0d04e6c:	2546      	movs	r5, #70	; 0x46
c0d04e6e:	4629      	mov	r1, r5
c0d04e70:	f003 f8e4 	bl	c0d0803c <explicit_bzero>
c0d04e74:	a835      	add	r0, sp, #212	; 0xd4
c0d04e76:	4629      	mov	r1, r5
c0d04e78:	f003 f8e0 	bl	c0d0803c <explicit_bzero>
c0d04e7c:	a823      	add	r0, sp, #140	; 0x8c
c0d04e7e:	4629      	mov	r1, r5
c0d04e80:	f003 f8dc 	bl	c0d0803c <explicit_bzero>
c0d04e84:	a811      	add	r0, sp, #68	; 0x44
c0d04e86:	950a      	str	r5, [sp, #40]	; 0x28
c0d04e88:	4629      	mov	r1, r5
c0d04e8a:	f003 f8d7 	bl	c0d0803c <explicit_bzero>
c0d04e8e:	2025      	movs	r0, #37	; 0x25
c0d04e90:	0100      	lsls	r0, r0, #4
c0d04e92:	9002      	str	r0, [sp, #8]
c0d04e94:	2600      	movs	r6, #0
c0d04e96:	543e      	strb	r6, [r7, r0]
c0d04e98:	48df      	ldr	r0, [pc, #892]	; (c0d05218 <tx_indexRootFields+0x3c8>)
c0d04e9a:	543e      	strb	r6, [r7, r0]
c0d04e9c:	5d38      	ldrb	r0, [r7, r4]
c0d04e9e:	2206      	movs	r2, #6
c0d04ea0:	920b      	str	r2, [sp, #44]	; 0x2c
c0d04ea2:	4310      	orrs	r0, r2
c0d04ea4:	9403      	str	r4, [sp, #12]
c0d04ea6:	5538      	strb	r0, [r7, r4]
c0d04ea8:	9605      	str	r6, [sp, #20]
c0d04eaa:	ac5b      	add	r4, sp, #364	; 0x16c
c0d04eac:	9d05      	ldr	r5, [sp, #20]
c0d04eae:	8025      	strh	r5, [r4, #0]
c0d04eb0:	b2f0      	uxtb	r0, r6
c0d04eb2:	900f      	str	r0, [sp, #60]	; 0x3c
c0d04eb4:	f7ff ff92 	bl	c0d04ddc <get_required_root_item>
c0d04eb8:	4602      	mov	r2, r0
c0d04eba:	4638      	mov	r0, r7
c0d04ebc:	3008      	adds	r0, #8
c0d04ebe:	4629      	mov	r1, r5
c0d04ec0:	920e      	str	r2, [sp, #56]	; 0x38
c0d04ec2:	4623      	mov	r3, r4
c0d04ec4:	f7fd fab8 	bl	c0d02438 <object_get_value>
c0d04ec8:	2801      	cmp	r0, #1
c0d04eca:	d100      	bne.n	c0d04ece <tx_indexRootFields+0x7e>
c0d04ecc:	e102      	b.n	c0d050d4 <tx_indexRootFields+0x284>
c0d04ece:	4605      	mov	r5, r0
c0d04ed0:	9606      	str	r6, [sp, #24]
c0d04ed2:	f002 fffb 	bl	c0d07ecc <check_app_canary>
c0d04ed6:	2d00      	cmp	r5, #0
c0d04ed8:	d000      	beq.n	c0d04edc <tx_indexRootFields+0x8c>
c0d04eda:	e161      	b.n	c0d051a0 <tx_indexRootFields+0x350>
c0d04edc:	2301      	movs	r3, #1
c0d04ede:	49cd      	ldr	r1, [pc, #820]	; (c0d05214 <tx_indexRootFields+0x3c4>)
c0d04ee0:	9a06      	ldr	r2, [sp, #24]
c0d04ee2:	9307      	str	r3, [sp, #28]
c0d04ee4:	548b      	strb	r3, [r1, r2]
c0d04ee6:	0050      	lsls	r0, r2, #1
c0d04ee8:	180b      	adds	r3, r1, r0
c0d04eea:	985b      	ldr	r0, [sp, #364]	; 0x16c
c0d04eec:	8118      	strh	r0, [r3, #8]
c0d04eee:	1888      	adds	r0, r1, r2
c0d04ef0:	3018      	adds	r0, #24
c0d04ef2:	9004      	str	r0, [sp, #16]
c0d04ef4:	3308      	adds	r3, #8
c0d04ef6:	930c      	str	r3, [sp, #48]	; 0x30
c0d04ef8:	2400      	movs	r4, #0
c0d04efa:	940d      	str	r4, [sp, #52]	; 0x34
c0d04efc:	9e0f      	ldr	r6, [sp, #60]	; 0x3c
c0d04efe:	2c00      	cmp	r4, #0
c0d04f00:	d000      	beq.n	c0d04f04 <tx_indexRootFields+0xb4>
c0d04f02:	e0dc      	b.n	c0d050be <tx_indexRootFields+0x26e>
c0d04f04:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0d04f06:	49c5      	ldr	r1, [pc, #788]	; (c0d0521c <tx_indexRootFields+0x3cc>)
c0d04f08:	5478      	strb	r0, [r7, r1]
c0d04f0a:	2097      	movs	r0, #151	; 0x97
c0d04f0c:	0081      	lsls	r1, r0, #2
c0d04f0e:	2000      	movs	r0, #0
c0d04f10:	5278      	strh	r0, [r7, r1]
c0d04f12:	2102      	movs	r1, #2
c0d04f14:	2e02      	cmp	r6, #2
c0d04f16:	dd06      	ble.n	c0d04f26 <tx_indexRootFields+0xd6>
c0d04f18:	2e04      	cmp	r6, #4
c0d04f1a:	dc07      	bgt.n	c0d04f2c <tx_indexRootFields+0xdc>
c0d04f1c:	2e03      	cmp	r6, #3
c0d04f1e:	d00b      	beq.n	c0d04f38 <tx_indexRootFields+0xe8>
c0d04f20:	2e04      	cmp	r6, #4
c0d04f22:	d012      	beq.n	c0d04f4a <tx_indexRootFields+0xfa>
c0d04f24:	e00e      	b.n	c0d04f44 <tx_indexRootFields+0xf4>
c0d04f26:	2e03      	cmp	r6, #3
c0d04f28:	d30f      	bcc.n	c0d04f4a <tx_indexRootFields+0xfa>
c0d04f2a:	e00b      	b.n	c0d04f44 <tx_indexRootFields+0xf4>
c0d04f2c:	2e06      	cmp	r6, #6
c0d04f2e:	d001      	beq.n	c0d04f34 <tx_indexRootFields+0xe4>
c0d04f30:	2e05      	cmp	r6, #5
c0d04f32:	d107      	bne.n	c0d04f44 <tx_indexRootFields+0xf4>
c0d04f34:	9907      	ldr	r1, [sp, #28]
c0d04f36:	e008      	b.n	c0d04f4a <tx_indexRootFields+0xfa>
c0d04f38:	49b9      	ldr	r1, [pc, #740]	; (c0d05220 <tx_indexRootFields+0x3d0>)
c0d04f3a:	7809      	ldrb	r1, [r1, #0]
c0d04f3c:	2900      	cmp	r1, #0
c0d04f3e:	d003      	beq.n	c0d04f48 <tx_indexRootFields+0xf8>
c0d04f40:	2103      	movs	r1, #3
c0d04f42:	e002      	b.n	c0d04f4a <tx_indexRootFields+0xfa>
c0d04f44:	4601      	mov	r1, r0
c0d04f46:	e000      	b.n	c0d04f4a <tx_indexRootFields+0xfa>
c0d04f48:	2102      	movs	r1, #2
c0d04f4a:	4ab6      	ldr	r2, [pc, #728]	; (c0d05224 <tx_indexRootFields+0x3d4>)
c0d04f4c:	54b9      	strb	r1, [r7, r2]
c0d04f4e:	2113      	movs	r1, #19
c0d04f50:	9108      	str	r1, [sp, #32]
c0d04f52:	0149      	lsls	r1, r1, #5
c0d04f54:	9110      	str	r1, [sp, #64]	; 0x40
c0d04f56:	5078      	str	r0, [r7, r1]
c0d04f58:	ac47      	add	r4, sp, #284	; 0x11c
c0d04f5a:	4620      	mov	r0, r4
c0d04f5c:	9d0a      	ldr	r5, [sp, #40]	; 0x28
c0d04f5e:	4629      	mov	r1, r5
c0d04f60:	f003 f86c 	bl	c0d0803c <explicit_bzero>
c0d04f64:	ae35      	add	r6, sp, #212	; 0xd4
c0d04f66:	4630      	mov	r0, r6
c0d04f68:	4629      	mov	r1, r5
c0d04f6a:	f003 f867 	bl	c0d0803c <explicit_bzero>
c0d04f6e:	209b      	movs	r0, #155	; 0x9b
c0d04f70:	0080      	lsls	r0, r0, #2
c0d04f72:	9009      	str	r0, [sp, #36]	; 0x24
c0d04f74:	503e      	str	r6, [r7, r0]
c0d04f76:	2099      	movs	r0, #153	; 0x99
c0d04f78:	0080      	lsls	r0, r0, #2
c0d04f7a:	503c      	str	r4, [r7, r0]
c0d04f7c:	2027      	movs	r0, #39	; 0x27
c0d04f7e:	0106      	lsls	r6, r0, #4
c0d04f80:	53bd      	strh	r5, [r7, r6]
c0d04f82:	204d      	movs	r0, #77	; 0x4d
c0d04f84:	00c0      	lsls	r0, r0, #3
c0d04f86:	523d      	strh	r5, [r7, r0]
c0d04f88:	980d      	ldr	r0, [sp, #52]	; 0x34
c0d04f8a:	9910      	ldr	r1, [sp, #64]	; 0x40
c0d04f8c:	5278      	strh	r0, [r7, r1]
c0d04f8e:	4620      	mov	r0, r4
c0d04f90:	4629      	mov	r1, r5
c0d04f92:	f003 f853 	bl	c0d0803c <explicit_bzero>
c0d04f96:	2245      	movs	r2, #69	; 0x45
c0d04f98:	4620      	mov	r0, r4
c0d04f9a:	990e      	ldr	r1, [sp, #56]	; 0x38
c0d04f9c:	f003 fa38 	bl	c0d08410 <strncpy>
c0d04fa0:	980c      	ldr	r0, [sp, #48]	; 0x30
c0d04fa2:	8800      	ldrh	r0, [r0, #0]
c0d04fa4:	a960      	add	r1, sp, #384	; 0x180
c0d04fa6:	f000 fd1d 	bl	c0d059e4 <tx_traverse_find>
c0d04faa:	2800      	cmp	r0, #0
c0d04fac:	d000      	beq.n	c0d04fb0 <tx_indexRootFields+0x160>
c0d04fae:	e084      	b.n	c0d050ba <tx_indexRootFields+0x26a>
c0d04fb0:	9809      	ldr	r0, [sp, #36]	; 0x24
c0d04fb2:	5839      	ldr	r1, [r7, r0]
c0d04fb4:	5bba      	ldrh	r2, [r7, r6]
c0d04fb6:	a860      	add	r0, sp, #384	; 0x180
c0d04fb8:	8800      	ldrh	r0, [r0, #0]
c0d04fba:	ab59      	add	r3, sp, #356	; 0x164
c0d04fbc:	9300      	str	r3, [sp, #0]
c0d04fbe:	2400      	movs	r4, #0
c0d04fc0:	4623      	mov	r3, r4
c0d04fc2:	f000 fc85 	bl	c0d058d0 <tx_getToken>
c0d04fc6:	4605      	mov	r5, r0
c0d04fc8:	f002 ff80 	bl	c0d07ecc <check_app_canary>
c0d04fcc:	2d00      	cmp	r5, #0
c0d04fce:	d000      	beq.n	c0d04fd2 <tx_indexRootFields+0x182>
c0d04fd0:	e0e6      	b.n	c0d051a0 <tx_indexRootFields+0x350>
c0d04fd2:	9e0f      	ldr	r6, [sp, #60]	; 0x3c
c0d04fd4:	2e03      	cmp	r6, #3
c0d04fd6:	d008      	beq.n	c0d04fea <tx_indexRootFields+0x19a>
c0d04fd8:	2e04      	cmp	r6, #4
c0d04fda:	d166      	bne.n	c0d050aa <tx_indexRootFields+0x25a>
c0d04fdc:	9809      	ldr	r0, [sp, #36]	; 0x24
c0d04fde:	5838      	ldr	r0, [r7, r0]
c0d04fe0:	7800      	ldrb	r0, [r0, #0]
c0d04fe2:	2800      	cmp	r0, #0
c0d04fe4:	d161      	bne.n	c0d050aa <tx_indexRootFields+0x25a>
c0d04fe6:	9c08      	ldr	r4, [sp, #32]
c0d04fe8:	e789      	b.n	c0d04efe <tx_indexRootFields+0xae>
c0d04fea:	9803      	ldr	r0, [sp, #12]
c0d04fec:	5c3d      	ldrb	r5, [r7, r0]
c0d04fee:	07a8      	lsls	r0, r5, #30
c0d04ff0:	d531      	bpl.n	c0d05056 <tx_indexRootFields+0x206>
c0d04ff2:	a847      	add	r0, sp, #284	; 0x11c
c0d04ff4:	498f      	ldr	r1, [pc, #572]	; (c0d05234 <tx_indexRootFields+0x3e4>)
c0d04ff6:	4479      	add	r1, pc
c0d04ff8:	220a      	movs	r2, #10
c0d04ffa:	f003 f823 	bl	c0d08044 <memcmp>
c0d04ffe:	2800      	cmp	r0, #0
c0d05000:	d129      	bne.n	c0d05056 <tx_indexRootFields+0x206>
c0d05002:	4d85      	ldr	r5, [pc, #532]	; (c0d05218 <tx_indexRootFields+0x3c8>)
c0d05004:	5d78      	ldrb	r0, [r7, r5]
c0d05006:	2800      	cmp	r0, #0
c0d05008:	d111      	bne.n	c0d0502e <tx_indexRootFields+0x1de>
c0d0500a:	a835      	add	r0, sp, #212	; 0xd4
c0d0500c:	f003 f998 	bl	c0d08340 <strlen>
c0d05010:	2845      	cmp	r0, #69	; 0x45
c0d05012:	d900      	bls.n	c0d05016 <tx_indexRootFields+0x1c6>
c0d05014:	e0fa      	b.n	c0d0520c <tx_indexRootFields+0x3bc>
c0d05016:	a823      	add	r0, sp, #140	; 0x8c
c0d05018:	2146      	movs	r1, #70	; 0x46
c0d0501a:	4a87      	ldr	r2, [pc, #540]	; (c0d05238 <tx_indexRootFields+0x3e8>)
c0d0501c:	447a      	add	r2, pc
c0d0501e:	ab35      	add	r3, sp, #212	; 0xd4
c0d05020:	f7fd ff44 	bl	c0d02eac <snprintf>
c0d05024:	2093      	movs	r0, #147	; 0x93
c0d05026:	0080      	lsls	r0, r0, #2
c0d05028:	990d      	ldr	r1, [sp, #52]	; 0x34
c0d0502a:	b209      	sxth	r1, r1
c0d0502c:	5039      	str	r1, [r7, r0]
c0d0502e:	a823      	add	r0, sp, #140	; 0x8c
c0d05030:	a935      	add	r1, sp, #212	; 0xd4
c0d05032:	f003 f941 	bl	c0d082b8 <strcmp>
c0d05036:	2800      	cmp	r0, #0
c0d05038:	d007      	beq.n	c0d0504a <tx_indexRootFields+0x1fa>
c0d0503a:	9903      	ldr	r1, [sp, #12]
c0d0503c:	5c78      	ldrb	r0, [r7, r1]
c0d0503e:	462a      	mov	r2, r5
c0d05040:	25fd      	movs	r5, #253	; 0xfd
c0d05042:	4005      	ands	r5, r0
c0d05044:	547d      	strb	r5, [r7, r1]
c0d05046:	2000      	movs	r0, #0
c0d05048:	e003      	b.n	c0d05052 <tx_indexRootFields+0x202>
c0d0504a:	5d78      	ldrb	r0, [r7, r5]
c0d0504c:	9903      	ldr	r1, [sp, #12]
c0d0504e:	462a      	mov	r2, r5
c0d05050:	5c7d      	ldrb	r5, [r7, r1]
c0d05052:	1c40      	adds	r0, r0, #1
c0d05054:	54b8      	strb	r0, [r7, r2]
c0d05056:	0768      	lsls	r0, r5, #29
c0d05058:	9d02      	ldr	r5, [sp, #8]
c0d0505a:	d526      	bpl.n	c0d050aa <tx_indexRootFields+0x25a>
c0d0505c:	a847      	add	r0, sp, #284	; 0x11c
c0d0505e:	4977      	ldr	r1, [pc, #476]	; (c0d0523c <tx_indexRootFields+0x3ec>)
c0d05060:	4479      	add	r1, pc
c0d05062:	221d      	movs	r2, #29
c0d05064:	f002 ffee 	bl	c0d08044 <memcmp>
c0d05068:	2800      	cmp	r0, #0
c0d0506a:	d11e      	bne.n	c0d050aa <tx_indexRootFields+0x25a>
c0d0506c:	5d78      	ldrb	r0, [r7, r5]
c0d0506e:	2800      	cmp	r0, #0
c0d05070:	d10b      	bne.n	c0d0508a <tx_indexRootFields+0x23a>
c0d05072:	a811      	add	r0, sp, #68	; 0x44
c0d05074:	2146      	movs	r1, #70	; 0x46
c0d05076:	4a72      	ldr	r2, [pc, #456]	; (c0d05240 <tx_indexRootFields+0x3f0>)
c0d05078:	447a      	add	r2, pc
c0d0507a:	ab35      	add	r3, sp, #212	; 0xd4
c0d0507c:	f7fd ff16 	bl	c0d02eac <snprintf>
c0d05080:	2095      	movs	r0, #149	; 0x95
c0d05082:	0080      	lsls	r0, r0, #2
c0d05084:	990d      	ldr	r1, [sp, #52]	; 0x34
c0d05086:	b209      	sxth	r1, r1
c0d05088:	5039      	str	r1, [r7, r0]
c0d0508a:	a811      	add	r0, sp, #68	; 0x44
c0d0508c:	a935      	add	r1, sp, #212	; 0xd4
c0d0508e:	f003 f913 	bl	c0d082b8 <strcmp>
c0d05092:	2800      	cmp	r0, #0
c0d05094:	d006      	beq.n	c0d050a4 <tx_indexRootFields+0x254>
c0d05096:	9a03      	ldr	r2, [sp, #12]
c0d05098:	5cb8      	ldrb	r0, [r7, r2]
c0d0509a:	21fb      	movs	r1, #251	; 0xfb
c0d0509c:	4001      	ands	r1, r0
c0d0509e:	54b9      	strb	r1, [r7, r2]
c0d050a0:	2000      	movs	r0, #0
c0d050a2:	e000      	b.n	c0d050a6 <tx_indexRootFields+0x256>
c0d050a4:	5d78      	ldrb	r0, [r7, r5]
c0d050a6:	1c40      	adds	r0, r0, #1
c0d050a8:	5578      	strb	r0, [r7, r5]
c0d050aa:	9904      	ldr	r1, [sp, #16]
c0d050ac:	7808      	ldrb	r0, [r1, #0]
c0d050ae:	1c40      	adds	r0, r0, #1
c0d050b0:	7008      	strb	r0, [r1, #0]
c0d050b2:	980d      	ldr	r0, [sp, #52]	; 0x34
c0d050b4:	1c40      	adds	r0, r0, #1
c0d050b6:	900d      	str	r0, [sp, #52]	; 0x34
c0d050b8:	e721      	b.n	c0d04efe <tx_indexRootFields+0xae>
c0d050ba:	4604      	mov	r4, r0
c0d050bc:	e71e      	b.n	c0d04efc <tx_indexRootFields+0xac>
c0d050be:	2c01      	cmp	r4, #1
c0d050c0:	d001      	beq.n	c0d050c6 <tx_indexRootFields+0x276>
c0d050c2:	2c13      	cmp	r4, #19
c0d050c4:	d16b      	bne.n	c0d0519e <tx_indexRootFields+0x34e>
c0d050c6:	9804      	ldr	r0, [sp, #16]
c0d050c8:	7800      	ldrb	r0, [r0, #0]
c0d050ca:	4a52      	ldr	r2, [pc, #328]	; (c0d05214 <tx_indexRootFields+0x3c4>)
c0d050cc:	8ad1      	ldrh	r1, [r2, #22]
c0d050ce:	1808      	adds	r0, r1, r0
c0d050d0:	82d0      	strh	r0, [r2, #22]
c0d050d2:	9e06      	ldr	r6, [sp, #24]
c0d050d4:	1c76      	adds	r6, r6, #1
c0d050d6:	2e07      	cmp	r6, #7
c0d050d8:	d000      	beq.n	c0d050dc <tx_indexRootFields+0x28c>
c0d050da:	e6e6      	b.n	c0d04eaa <tx_indexRootFields+0x5a>
c0d050dc:	9903      	ldr	r1, [sp, #12]
c0d050de:	5c78      	ldrb	r0, [r7, r1]
c0d050e0:	2201      	movs	r2, #1
c0d050e2:	920c      	str	r2, [sp, #48]	; 0x30
c0d050e4:	4310      	orrs	r0, r2
c0d050e6:	5478      	strb	r0, [r7, r1]
c0d050e8:	2013      	movs	r0, #19
c0d050ea:	0140      	lsls	r0, r0, #5
c0d050ec:	9010      	str	r0, [sp, #64]	; 0x40
c0d050ee:	2500      	movs	r5, #0
c0d050f0:	503d      	str	r5, [r7, r0]
c0d050f2:	2097      	movs	r0, #151	; 0x97
c0d050f4:	0081      	lsls	r1, r0, #2
c0d050f6:	910f      	str	r1, [sp, #60]	; 0x3c
c0d050f8:	484b      	ldr	r0, [pc, #300]	; (c0d05228 <tx_indexRootFields+0x3d8>)
c0d050fa:	5078      	str	r0, [r7, r1]
c0d050fc:	4845      	ldr	r0, [pc, #276]	; (c0d05214 <tx_indexRootFields+0x3c4>)
c0d050fe:	77c5      	strb	r5, [r0, #31]
c0d05100:	a860      	add	r0, sp, #384	; 0x180
c0d05102:	900d      	str	r0, [sp, #52]	; 0x34
c0d05104:	2102      	movs	r1, #2
c0d05106:	910e      	str	r1, [sp, #56]	; 0x38
c0d05108:	f002 ff98 	bl	c0d0803c <explicit_bzero>
c0d0510c:	ae5b      	add	r6, sp, #364	; 0x16c
c0d0510e:	2414      	movs	r4, #20
c0d05110:	4630      	mov	r0, r6
c0d05112:	4621      	mov	r1, r4
c0d05114:	f002 ff92 	bl	c0d0803c <explicit_bzero>
c0d05118:	209b      	movs	r0, #155	; 0x9b
c0d0511a:	0080      	lsls	r0, r0, #2
c0d0511c:	503e      	str	r6, [r7, r0]
c0d0511e:	462e      	mov	r6, r5
c0d05120:	2099      	movs	r0, #153	; 0x99
c0d05122:	0080      	lsls	r0, r0, #2
c0d05124:	990d      	ldr	r1, [sp, #52]	; 0x34
c0d05126:	5039      	str	r1, [r7, r0]
c0d05128:	2027      	movs	r0, #39	; 0x27
c0d0512a:	0100      	lsls	r0, r0, #4
c0d0512c:	523c      	strh	r4, [r7, r0]
c0d0512e:	204d      	movs	r0, #77	; 0x4d
c0d05130:	00c0      	lsls	r0, r0, #3
c0d05132:	990e      	ldr	r1, [sp, #56]	; 0x38
c0d05134:	5239      	strh	r1, [r7, r0]
c0d05136:	9810      	ldr	r0, [sp, #64]	; 0x40
c0d05138:	523d      	strh	r5, [r7, r0]
c0d0513a:	980f      	ldr	r0, [sp, #60]	; 0x3c
c0d0513c:	523d      	strh	r5, [r7, r0]
c0d0513e:	4835      	ldr	r0, [pc, #212]	; (c0d05214 <tx_indexRootFields+0x3c4>)
c0d05140:	8900      	ldrh	r0, [r0, #8]
c0d05142:	a959      	add	r1, sp, #356	; 0x164
c0d05144:	f000 fc4e 	bl	c0d059e4 <tx_traverse_find>
c0d05148:	4605      	mov	r5, r0
c0d0514a:	f002 febf 	bl	c0d07ecc <check_app_canary>
c0d0514e:	2d00      	cmp	r5, #0
c0d05150:	d131      	bne.n	c0d051b6 <tx_indexRootFields+0x366>
c0d05152:	a859      	add	r0, sp, #356	; 0x164
c0d05154:	8800      	ldrh	r0, [r0, #0]
c0d05156:	a95a      	add	r1, sp, #360	; 0x168
c0d05158:	9100      	str	r1, [sp, #0]
c0d0515a:	a95b      	add	r1, sp, #364	; 0x16c
c0d0515c:	2214      	movs	r2, #20
c0d0515e:	2400      	movs	r4, #0
c0d05160:	4623      	mov	r3, r4
c0d05162:	f000 fbb5 	bl	c0d058d0 <tx_getToken>
c0d05166:	4605      	mov	r5, r0
c0d05168:	f002 feb0 	bl	c0d07ecc <check_app_canary>
c0d0516c:	2d00      	cmp	r5, #0
c0d0516e:	d122      	bne.n	c0d051b6 <tx_indexRootFields+0x366>
c0d05170:	4625      	mov	r5, r4
c0d05172:	9610      	str	r6, [sp, #64]	; 0x40
c0d05174:	ac5b      	add	r4, sp, #364	; 0x16c
c0d05176:	4620      	mov	r0, r4
c0d05178:	f002 feb6 	bl	c0d07ee8 <zemu_log_stack>
c0d0517c:	4e2b      	ldr	r6, [pc, #172]	; (c0d0522c <tx_indexRootFields+0x3dc>)
c0d0517e:	447e      	add	r6, pc
c0d05180:	4630      	mov	r0, r6
c0d05182:	f002 feb1 	bl	c0d07ee8 <zemu_log_stack>
c0d05186:	2211      	movs	r2, #17
c0d05188:	4620      	mov	r0, r4
c0d0518a:	4631      	mov	r1, r6
c0d0518c:	f002 ff5a 	bl	c0d08044 <memcmp>
c0d05190:	2800      	cmp	r0, #0
c0d05192:	d008      	beq.n	c0d051a6 <tx_indexRootFields+0x356>
c0d05194:	482b      	ldr	r0, [pc, #172]	; (c0d05244 <tx_indexRootFields+0x3f4>)
c0d05196:	4478      	add	r0, pc
c0d05198:	e00a      	b.n	c0d051b0 <tx_indexRootFields+0x360>
c0d0519a:	2500      	movs	r5, #0
c0d0519c:	e000      	b.n	c0d051a0 <tx_indexRootFields+0x350>
c0d0519e:	4625      	mov	r5, r4
c0d051a0:	b2e8      	uxtb	r0, r5
c0d051a2:	b061      	add	sp, #388	; 0x184
c0d051a4:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d051a6:	481b      	ldr	r0, [pc, #108]	; (c0d05214 <tx_indexRootFields+0x3c4>)
c0d051a8:	990c      	ldr	r1, [sp, #48]	; 0x30
c0d051aa:	77c1      	strb	r1, [r0, #31]
c0d051ac:	4820      	ldr	r0, [pc, #128]	; (c0d05230 <tx_indexRootFields+0x3e0>)
c0d051ae:	4478      	add	r0, pc
c0d051b0:	f002 fe9a 	bl	c0d07ee8 <zemu_log_stack>
c0d051b4:	9e10      	ldr	r6, [sp, #64]	; 0x40
c0d051b6:	f002 fe89 	bl	c0d07ecc <check_app_canary>
c0d051ba:	2d00      	cmp	r5, #0
c0d051bc:	d1f0      	bne.n	c0d051a0 <tx_indexRootFields+0x350>
c0d051be:	f7fb fd95 	bl	c0d00cec <app_mode_expert>
c0d051c2:	2800      	cmp	r0, #0
c0d051c4:	d10b      	bne.n	c0d051de <tx_indexRootFields+0x38e>
c0d051c6:	f7ff fe43 	bl	c0d04e50 <tx_indexRootFields>
c0d051ca:	4604      	mov	r4, r0
c0d051cc:	f002 fe7e 	bl	c0d07ecc <check_app_canary>
c0d051d0:	4810      	ldr	r0, [pc, #64]	; (c0d05214 <tx_indexRootFields+0x3c4>)
c0d051d2:	7fc0      	ldrb	r0, [r0, #31]
c0d051d4:	4320      	orrs	r0, r4
c0d051d6:	d002      	beq.n	c0d051de <tx_indexRootFields+0x38e>
c0d051d8:	9903      	ldr	r1, [sp, #12]
c0d051da:	5c7c      	ldrb	r4, [r7, r1]
c0d051dc:	e003      	b.n	c0d051e6 <tx_indexRootFields+0x396>
c0d051de:	9903      	ldr	r1, [sp, #12]
c0d051e0:	5c7c      	ldrb	r4, [r7, r1]
c0d051e2:	2004      	movs	r0, #4
c0d051e4:	4384      	bics	r4, r0
c0d051e6:	20f7      	movs	r0, #247	; 0xf7
c0d051e8:	4020      	ands	r0, r4
c0d051ea:	5478      	strb	r0, [r7, r1]
c0d051ec:	204b      	movs	r0, #75	; 0x4b
c0d051ee:	00c0      	lsls	r0, r0, #3
c0d051f0:	5838      	ldr	r0, [r7, r0]
c0d051f2:	2800      	cmp	r0, #0
c0d051f4:	d008      	beq.n	c0d05208 <tx_indexRootFields+0x3b8>
c0d051f6:	a911      	add	r1, sp, #68	; 0x44
c0d051f8:	f003 f85e 	bl	c0d082b8 <strcmp>
c0d051fc:	2800      	cmp	r0, #0
c0d051fe:	d103      	bne.n	c0d05208 <tx_indexRootFields+0x3b8>
c0d05200:	2008      	movs	r0, #8
c0d05202:	4304      	orrs	r4, r0
c0d05204:	9803      	ldr	r0, [sp, #12]
c0d05206:	543c      	strb	r4, [r7, r0]
c0d05208:	4635      	mov	r5, r6
c0d0520a:	e7c9      	b.n	c0d051a0 <tx_indexRootFields+0x350>
c0d0520c:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
c0d0520e:	e7c7      	b.n	c0d051a0 <tx_indexRootFields+0x350>
c0d05210:	2000048c 	.word	0x2000048c
c0d05214:	20000a90 	.word	0x20000a90
c0d05218:	00000249 	.word	0x00000249
c0d0521c:	0000025f 	.word	0x0000025f
c0d05220:	20000ab2 	.word	0x20000ab2
c0d05224:	0000025e 	.word	0x0000025e
c0d05228:	06020000 	.word	0x06020000
c0d0522c:	00003cca 	.word	0x00003cca
c0d05230:	00003cab 	.word	0x00003cab
c0d05234:	00003e2b 	.word	0x00003e2b
c0d05238:	00003aa1 	.word	0x00003aa1
c0d0523c:	00003dcb 	.word	0x00003dcb
c0d05240:	00003a45 	.word	0x00003a45
c0d05244:	00003cd2 	.word	0x00003cd2

c0d05248 <tx_is_expert_mode>:
c0d05248:	b510      	push	{r4, lr}
c0d0524a:	f7fb fd4f 	bl	c0d00cec <app_mode_expert>
c0d0524e:	2800      	cmp	r0, #0
c0d05250:	d001      	beq.n	c0d05256 <tx_is_expert_mode+0xe>
c0d05252:	2001      	movs	r0, #1
c0d05254:	bd10      	pop	{r4, pc}
c0d05256:	f7ff fdfb 	bl	c0d04e50 <tx_indexRootFields>
c0d0525a:	4604      	mov	r4, r0
c0d0525c:	f002 fe36 	bl	c0d07ecc <check_app_canary>
c0d05260:	4802      	ldr	r0, [pc, #8]	; (c0d0526c <tx_is_expert_mode+0x24>)
c0d05262:	7fc1      	ldrb	r1, [r0, #31]
c0d05264:	4321      	orrs	r1, r4
c0d05266:	4248      	negs	r0, r1
c0d05268:	4148      	adcs	r0, r1
c0d0526a:	bd10      	pop	{r4, pc}
c0d0526c:	20000a90 	.word	0x20000a90

c0d05270 <tx_display_numItems>:
c0d05270:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d05272:	b081      	sub	sp, #4
c0d05274:	4604      	mov	r4, r0
c0d05276:	2700      	movs	r7, #0
c0d05278:	7007      	strb	r7, [r0, #0]
c0d0527a:	f7ff fde9 	bl	c0d04e50 <tx_indexRootFields>
c0d0527e:	4605      	mov	r5, r0
c0d05280:	f002 fe24 	bl	c0d07ecc <check_app_canary>
c0d05284:	2d00      	cmp	r5, #0
c0d05286:	d157      	bne.n	c0d05338 <tx_display_numItems+0xc8>
c0d05288:	7027      	strb	r7, [r4, #0]
c0d0528a:	2618      	movs	r6, #24
c0d0528c:	f7ff fde0 	bl	c0d04e50 <tx_indexRootFields>
c0d05290:	4605      	mov	r5, r0
c0d05292:	f002 fe1b 	bl	c0d07ecc <check_app_canary>
c0d05296:	2d00      	cmp	r5, #0
c0d05298:	d117      	bne.n	c0d052ca <tx_display_numItems+0x5a>
c0d0529a:	4929      	ldr	r1, [pc, #164]	; (c0d05340 <tx_display_numItems+0xd0>)
c0d0529c:	8ac8      	ldrh	r0, [r1, #22]
c0d0529e:	2800      	cmp	r0, #0
c0d052a0:	d012      	beq.n	c0d052c8 <tx_display_numItems+0x58>
c0d052a2:	207f      	movs	r0, #127	; 0x7f
c0d052a4:	4038      	ands	r0, r7
c0d052a6:	5d8d      	ldrb	r5, [r1, r6]
c0d052a8:	2803      	cmp	r0, #3
c0d052aa:	d216      	bcs.n	c0d052da <tx_display_numItems+0x6a>
c0d052ac:	f7fb fd1e 	bl	c0d00cec <app_mode_expert>
c0d052b0:	2800      	cmp	r0, #0
c0d052b2:	d10a      	bne.n	c0d052ca <tx_display_numItems+0x5a>
c0d052b4:	f7ff fdcc 	bl	c0d04e50 <tx_indexRootFields>
c0d052b8:	9000      	str	r0, [sp, #0]
c0d052ba:	f002 fe07 	bl	c0d07ecc <check_app_canary>
c0d052be:	4820      	ldr	r0, [pc, #128]	; (c0d05340 <tx_display_numItems+0xd0>)
c0d052c0:	7fc0      	ldrb	r0, [r0, #31]
c0d052c2:	9900      	ldr	r1, [sp, #0]
c0d052c4:	4308      	orrs	r0, r1
c0d052c6:	d000      	beq.n	c0d052ca <tx_display_numItems+0x5a>
c0d052c8:	2500      	movs	r5, #0
c0d052ca:	7820      	ldrb	r0, [r4, #0]
c0d052cc:	1940      	adds	r0, r0, r5
c0d052ce:	7020      	strb	r0, [r4, #0]
c0d052d0:	1c76      	adds	r6, r6, #1
c0d052d2:	1c7f      	adds	r7, r7, #1
c0d052d4:	2e1f      	cmp	r6, #31
c0d052d6:	d1d9      	bne.n	c0d0528c <tx_display_numItems+0x1c>
c0d052d8:	e02d      	b.n	c0d05336 <tx_display_numItems+0xc6>
c0d052da:	4b1b      	ldr	r3, [pc, #108]	; (c0d05348 <tx_display_numItems+0xd8>)
c0d052dc:	d011      	beq.n	c0d05302 <tx_display_numItems+0x92>
c0d052de:	2805      	cmp	r0, #5
c0d052e0:	d1f3      	bne.n	c0d052ca <tx_display_numItems+0x5a>
c0d052e2:	f7fb fd03 	bl	c0d00cec <app_mode_expert>
c0d052e6:	2800      	cmp	r0, #0
c0d052e8:	d1ef      	bne.n	c0d052ca <tx_display_numItems+0x5a>
c0d052ea:	f7ff fdb1 	bl	c0d04e50 <tx_indexRootFields>
c0d052ee:	9000      	str	r0, [sp, #0]
c0d052f0:	f002 fdec 	bl	c0d07ecc <check_app_canary>
c0d052f4:	4812      	ldr	r0, [pc, #72]	; (c0d05340 <tx_display_numItems+0xd0>)
c0d052f6:	7fc0      	ldrb	r0, [r0, #31]
c0d052f8:	9900      	ldr	r1, [sp, #0]
c0d052fa:	4308      	orrs	r0, r1
c0d052fc:	d0e5      	beq.n	c0d052ca <tx_display_numItems+0x5a>
c0d052fe:	2501      	movs	r5, #1
c0d05300:	e7e3      	b.n	c0d052ca <tx_display_numItems+0x5a>
c0d05302:	4810      	ldr	r0, [pc, #64]	; (c0d05344 <tx_display_numItems+0xd4>)
c0d05304:	5c18      	ldrb	r0, [r3, r0]
c0d05306:	2800      	cmp	r0, #0
c0d05308:	4629      	mov	r1, r5
c0d0530a:	d001      	beq.n	c0d05310 <tx_display_numItems+0xa0>
c0d0530c:	1a28      	subs	r0, r5, r0
c0d0530e:	1c41      	adds	r1, r0, #1
c0d05310:	2049      	movs	r0, #73	; 0x49
c0d05312:	00c0      	lsls	r0, r0, #3
c0d05314:	5c18      	ldrb	r0, [r3, r0]
c0d05316:	0782      	lsls	r2, r0, #30
c0d05318:	d500      	bpl.n	c0d0531c <tx_display_numItems+0xac>
c0d0531a:	460d      	mov	r5, r1
c0d0531c:	0741      	lsls	r1, r0, #29
c0d0531e:	d5d4      	bpl.n	c0d052ca <tx_display_numItems+0x5a>
c0d05320:	2125      	movs	r1, #37	; 0x25
c0d05322:	0109      	lsls	r1, r1, #4
c0d05324:	5c59      	ldrb	r1, [r3, r1]
c0d05326:	2900      	cmp	r1, #0
c0d05328:	d0cf      	beq.n	c0d052ca <tx_display_numItems+0x5a>
c0d0532a:	08c0      	lsrs	r0, r0, #3
c0d0532c:	2201      	movs	r2, #1
c0d0532e:	4382      	bics	r2, r0
c0d05330:	1a50      	subs	r0, r2, r1
c0d05332:	1945      	adds	r5, r0, r5
c0d05334:	e7c9      	b.n	c0d052ca <tx_display_numItems+0x5a>
c0d05336:	2500      	movs	r5, #0
c0d05338:	4628      	mov	r0, r5
c0d0533a:	b001      	add	sp, #4
c0d0533c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d0533e:	46c0      	nop			; (mov r8, r8)
c0d05340:	20000a90 	.word	0x20000a90
c0d05344:	00000249 	.word	0x00000249
c0d05348:	2000048c 	.word	0x2000048c

c0d0534c <tx_display_query>:
c0d0534c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d0534e:	b08b      	sub	sp, #44	; 0x2c
c0d05350:	9307      	str	r3, [sp, #28]
c0d05352:	4617      	mov	r7, r2
c0d05354:	460c      	mov	r4, r1
c0d05356:	4605      	mov	r5, r0
c0d05358:	f7ff fd7a 	bl	c0d04e50 <tx_indexRootFields>
c0d0535c:	4606      	mov	r6, r0
c0d0535e:	f002 fdb5 	bl	c0d07ecc <check_app_canary>
c0d05362:	4630      	mov	r0, r6
c0d05364:	2e00      	cmp	r6, #0
c0d05366:	d000      	beq.n	c0d0536a <tx_display_query+0x1e>
c0d05368:	e1a9      	b.n	c0d056be <tx_display_query+0x372>
c0d0536a:	9706      	str	r7, [sp, #24]
c0d0536c:	a80a      	add	r0, sp, #40	; 0x28
c0d0536e:	f7ff ff7f 	bl	c0d05270 <tx_display_numItems>
c0d05372:	4607      	mov	r7, r0
c0d05374:	f002 fdaa 	bl	c0d07ecc <check_app_canary>
c0d05378:	4638      	mov	r0, r7
c0d0537a:	2f00      	cmp	r7, #0
c0d0537c:	d000      	beq.n	c0d05380 <tx_display_query+0x34>
c0d0537e:	e19e      	b.n	c0d056be <tx_display_query+0x372>
c0d05380:	a80a      	add	r0, sp, #40	; 0x28
c0d05382:	7800      	ldrb	r0, [r0, #0]
c0d05384:	42a8      	cmp	r0, r5
c0d05386:	d800      	bhi.n	c0d0538a <tx_display_query+0x3e>
c0d05388:	e123      	b.n	c0d055d2 <tx_display_query+0x286>
c0d0538a:	462f      	mov	r7, r5
c0d0538c:	9404      	str	r4, [sp, #16]
c0d0538e:	f7ff fd5f 	bl	c0d04e50 <tx_indexRootFields>
c0d05392:	4604      	mov	r4, r0
c0d05394:	f002 fd9a 	bl	c0d07ecc <check_app_canary>
c0d05398:	2600      	movs	r6, #0
c0d0539a:	2c00      	cmp	r4, #0
c0d0539c:	4635      	mov	r5, r6
c0d0539e:	d151      	bne.n	c0d05444 <tx_display_query+0xf8>
c0d053a0:	2600      	movs	r6, #0
c0d053a2:	48c9      	ldr	r0, [pc, #804]	; (c0d056c8 <tx_display_query+0x37c>)
c0d053a4:	8ac0      	ldrh	r0, [r0, #22]
c0d053a6:	2800      	cmp	r0, #0
c0d053a8:	d044      	beq.n	c0d05434 <tx_display_query+0xe8>
c0d053aa:	b2f0      	uxtb	r0, r6
c0d053ac:	49c6      	ldr	r1, [pc, #792]	; (c0d056c8 <tx_display_query+0x37c>)
c0d053ae:	1809      	adds	r1, r1, r0
c0d053b0:	7e0c      	ldrb	r4, [r1, #24]
c0d053b2:	2803      	cmp	r0, #3
c0d053b4:	d20e      	bcs.n	c0d053d4 <tx_display_query+0x88>
c0d053b6:	f7fb fc99 	bl	c0d00cec <app_mode_expert>
c0d053ba:	2800      	cmp	r0, #0
c0d053bc:	d138      	bne.n	c0d05430 <tx_display_query+0xe4>
c0d053be:	f7ff fd47 	bl	c0d04e50 <tx_indexRootFields>
c0d053c2:	9009      	str	r0, [sp, #36]	; 0x24
c0d053c4:	f002 fd82 	bl	c0d07ecc <check_app_canary>
c0d053c8:	48bf      	ldr	r0, [pc, #764]	; (c0d056c8 <tx_display_query+0x37c>)
c0d053ca:	7fc0      	ldrb	r0, [r0, #31]
c0d053cc:	9909      	ldr	r1, [sp, #36]	; 0x24
c0d053ce:	4308      	orrs	r0, r1
c0d053d0:	d130      	bne.n	c0d05434 <tx_display_query+0xe8>
c0d053d2:	e02d      	b.n	c0d05430 <tx_display_query+0xe4>
c0d053d4:	d010      	beq.n	c0d053f8 <tx_display_query+0xac>
c0d053d6:	2805      	cmp	r0, #5
c0d053d8:	d12a      	bne.n	c0d05430 <tx_display_query+0xe4>
c0d053da:	f7fb fc87 	bl	c0d00cec <app_mode_expert>
c0d053de:	2800      	cmp	r0, #0
c0d053e0:	d126      	bne.n	c0d05430 <tx_display_query+0xe4>
c0d053e2:	f7ff fd35 	bl	c0d04e50 <tx_indexRootFields>
c0d053e6:	9009      	str	r0, [sp, #36]	; 0x24
c0d053e8:	f002 fd70 	bl	c0d07ecc <check_app_canary>
c0d053ec:	48b6      	ldr	r0, [pc, #728]	; (c0d056c8 <tx_display_query+0x37c>)
c0d053ee:	7fc0      	ldrb	r0, [r0, #31]
c0d053f0:	9909      	ldr	r1, [sp, #36]	; 0x24
c0d053f2:	4308      	orrs	r0, r1
c0d053f4:	d01c      	beq.n	c0d05430 <tx_display_query+0xe4>
c0d053f6:	e164      	b.n	c0d056c2 <tx_display_query+0x376>
c0d053f8:	48b4      	ldr	r0, [pc, #720]	; (c0d056cc <tx_display_query+0x380>)
c0d053fa:	49b5      	ldr	r1, [pc, #724]	; (c0d056d0 <tx_display_query+0x384>)
c0d053fc:	5c08      	ldrb	r0, [r1, r0]
c0d053fe:	2800      	cmp	r0, #0
c0d05400:	4621      	mov	r1, r4
c0d05402:	d001      	beq.n	c0d05408 <tx_display_query+0xbc>
c0d05404:	1a20      	subs	r0, r4, r0
c0d05406:	1c41      	adds	r1, r0, #1
c0d05408:	2049      	movs	r0, #73	; 0x49
c0d0540a:	00c0      	lsls	r0, r0, #3
c0d0540c:	4ab0      	ldr	r2, [pc, #704]	; (c0d056d0 <tx_display_query+0x384>)
c0d0540e:	5c10      	ldrb	r0, [r2, r0]
c0d05410:	0782      	lsls	r2, r0, #30
c0d05412:	d500      	bpl.n	c0d05416 <tx_display_query+0xca>
c0d05414:	460c      	mov	r4, r1
c0d05416:	0741      	lsls	r1, r0, #29
c0d05418:	d50a      	bpl.n	c0d05430 <tx_display_query+0xe4>
c0d0541a:	2125      	movs	r1, #37	; 0x25
c0d0541c:	0109      	lsls	r1, r1, #4
c0d0541e:	4aac      	ldr	r2, [pc, #688]	; (c0d056d0 <tx_display_query+0x384>)
c0d05420:	5c51      	ldrb	r1, [r2, r1]
c0d05422:	2900      	cmp	r1, #0
c0d05424:	d004      	beq.n	c0d05430 <tx_display_query+0xe4>
c0d05426:	08c0      	lsrs	r0, r0, #3
c0d05428:	2201      	movs	r2, #1
c0d0542a:	4382      	bics	r2, r0
c0d0542c:	1a50      	subs	r0, r2, r1
c0d0542e:	1904      	adds	r4, r0, r4
c0d05430:	0620      	lsls	r0, r4, #24
c0d05432:	d107      	bne.n	c0d05444 <tx_display_query+0xf8>
c0d05434:	f7ff fd0c 	bl	c0d04e50 <tx_indexRootFields>
c0d05438:	4604      	mov	r4, r0
c0d0543a:	1c76      	adds	r6, r6, #1
c0d0543c:	f002 fd46 	bl	c0d07ecc <check_app_canary>
c0d05440:	2c00      	cmp	r4, #0
c0d05442:	d0ae      	beq.n	c0d053a2 <tx_display_query+0x56>
c0d05444:	b2f8      	uxtb	r0, r7
c0d05446:	9008      	str	r0, [sp, #32]
c0d05448:	2800      	cmp	r0, #0
c0d0544a:	d100      	bne.n	c0d0544e <tx_display_query+0x102>
c0d0544c:	e0c3      	b.n	c0d055d6 <tx_display_query+0x28a>
c0d0544e:	2000      	movs	r0, #0
c0d05450:	4f9d      	ldr	r7, [pc, #628]	; (c0d056c8 <tx_display_query+0x37c>)
c0d05452:	4605      	mov	r5, r0
c0d05454:	4602      	mov	r2, r0
c0d05456:	9209      	str	r2, [sp, #36]	; 0x24
c0d05458:	f7ff fcfa 	bl	c0d04e50 <tx_indexRootFields>
c0d0545c:	4604      	mov	r4, r0
c0d0545e:	f002 fd35 	bl	c0d07ecc <check_app_canary>
c0d05462:	2c00      	cmp	r4, #0
c0d05464:	d006      	beq.n	c0d05474 <tx_display_query+0x128>
c0d05466:	1c6d      	adds	r5, r5, #1
c0d05468:	b2e0      	uxtb	r0, r4
c0d0546a:	b2e9      	uxtb	r1, r5
c0d0546c:	4281      	cmp	r1, r0
c0d0546e:	d218      	bcs.n	c0d054a2 <tx_display_query+0x156>
c0d05470:	462c      	mov	r4, r5
c0d05472:	e074      	b.n	c0d0555e <tx_display_query+0x212>
c0d05474:	8af8      	ldrh	r0, [r7, #22]
c0d05476:	2800      	cmp	r0, #0
c0d05478:	d013      	beq.n	c0d054a2 <tx_display_query+0x156>
c0d0547a:	b2f0      	uxtb	r0, r6
c0d0547c:	1839      	adds	r1, r7, r0
c0d0547e:	7e0c      	ldrb	r4, [r1, #24]
c0d05480:	2803      	cmp	r0, #3
c0d05482:	d274      	bcs.n	c0d0556e <tx_display_query+0x222>
c0d05484:	f7fb fc32 	bl	c0d00cec <app_mode_expert>
c0d05488:	2800      	cmp	r0, #0
c0d0548a:	d1ec      	bne.n	c0d05466 <tx_display_query+0x11a>
c0d0548c:	f7ff fce0 	bl	c0d04e50 <tx_indexRootFields>
c0d05490:	9005      	str	r0, [sp, #20]
c0d05492:	f002 fd1b 	bl	c0d07ecc <check_app_canary>
c0d05496:	7ff8      	ldrb	r0, [r7, #31]
c0d05498:	9905      	ldr	r1, [sp, #20]
c0d0549a:	4308      	orrs	r0, r1
c0d0549c:	d0e3      	beq.n	c0d05466 <tx_display_query+0x11a>
c0d0549e:	2400      	movs	r4, #0
c0d054a0:	e7e1      	b.n	c0d05466 <tx_display_query+0x11a>
c0d054a2:	4635      	mov	r5, r6
c0d054a4:	f7ff fcd4 	bl	c0d04e50 <tx_indexRootFields>
c0d054a8:	4604      	mov	r4, r0
c0d054aa:	1c6e      	adds	r6, r5, #1
c0d054ac:	f002 fd0e 	bl	c0d07ecc <check_app_canary>
c0d054b0:	2c00      	cmp	r4, #0
c0d054b2:	d153      	bne.n	c0d0555c <tx_display_query+0x210>
c0d054b4:	8af8      	ldrh	r0, [r7, #22]
c0d054b6:	2400      	movs	r4, #0
c0d054b8:	2800      	cmp	r0, #0
c0d054ba:	4620      	mov	r0, r4
c0d054bc:	d04a      	beq.n	c0d05554 <tx_display_query+0x208>
c0d054be:	b2f0      	uxtb	r0, r6
c0d054c0:	1838      	adds	r0, r7, r0
c0d054c2:	7e07      	ldrb	r7, [r0, #24]
c0d054c4:	b2e8      	uxtb	r0, r5
c0d054c6:	2803      	cmp	r0, #3
c0d054c8:	dc1d      	bgt.n	c0d05506 <tx_display_query+0x1ba>
c0d054ca:	2802      	cmp	r0, #2
c0d054cc:	d31f      	bcc.n	c0d0550e <tx_display_query+0x1c2>
c0d054ce:	d13f      	bne.n	c0d05550 <tx_display_query+0x204>
c0d054d0:	487e      	ldr	r0, [pc, #504]	; (c0d056cc <tx_display_query+0x380>)
c0d054d2:	4b7f      	ldr	r3, [pc, #508]	; (c0d056d0 <tx_display_query+0x384>)
c0d054d4:	5c18      	ldrb	r0, [r3, r0]
c0d054d6:	2800      	cmp	r0, #0
c0d054d8:	4639      	mov	r1, r7
c0d054da:	d001      	beq.n	c0d054e0 <tx_display_query+0x194>
c0d054dc:	1a38      	subs	r0, r7, r0
c0d054de:	1c41      	adds	r1, r0, #1
c0d054e0:	2049      	movs	r0, #73	; 0x49
c0d054e2:	00c0      	lsls	r0, r0, #3
c0d054e4:	5c18      	ldrb	r0, [r3, r0]
c0d054e6:	0782      	lsls	r2, r0, #30
c0d054e8:	d500      	bpl.n	c0d054ec <tx_display_query+0x1a0>
c0d054ea:	460f      	mov	r7, r1
c0d054ec:	0741      	lsls	r1, r0, #29
c0d054ee:	d52f      	bpl.n	c0d05550 <tx_display_query+0x204>
c0d054f0:	2125      	movs	r1, #37	; 0x25
c0d054f2:	0109      	lsls	r1, r1, #4
c0d054f4:	5c59      	ldrb	r1, [r3, r1]
c0d054f6:	2900      	cmp	r1, #0
c0d054f8:	d02a      	beq.n	c0d05550 <tx_display_query+0x204>
c0d054fa:	08c0      	lsrs	r0, r0, #3
c0d054fc:	2201      	movs	r2, #1
c0d054fe:	4382      	bics	r2, r0
c0d05500:	1a50      	subs	r0, r2, r1
c0d05502:	19c7      	adds	r7, r0, r7
c0d05504:	e024      	b.n	c0d05550 <tx_display_query+0x204>
c0d05506:	2804      	cmp	r0, #4
c0d05508:	d012      	beq.n	c0d05530 <tx_display_query+0x1e4>
c0d0550a:	28ff      	cmp	r0, #255	; 0xff
c0d0550c:	d120      	bne.n	c0d05550 <tx_display_query+0x204>
c0d0550e:	f7fb fbed 	bl	c0d00cec <app_mode_expert>
c0d05512:	2800      	cmp	r0, #0
c0d05514:	d11c      	bne.n	c0d05550 <tx_display_query+0x204>
c0d05516:	4625      	mov	r5, r4
c0d05518:	f7ff fc9a 	bl	c0d04e50 <tx_indexRootFields>
c0d0551c:	4604      	mov	r4, r0
c0d0551e:	f002 fcd5 	bl	c0d07ecc <check_app_canary>
c0d05522:	4869      	ldr	r0, [pc, #420]	; (c0d056c8 <tx_display_query+0x37c>)
c0d05524:	7fc0      	ldrb	r0, [r0, #31]
c0d05526:	4320      	orrs	r0, r4
c0d05528:	d000      	beq.n	c0d0552c <tx_display_query+0x1e0>
c0d0552a:	2700      	movs	r7, #0
c0d0552c:	462c      	mov	r4, r5
c0d0552e:	e00f      	b.n	c0d05550 <tx_display_query+0x204>
c0d05530:	f7fb fbdc 	bl	c0d00cec <app_mode_expert>
c0d05534:	2800      	cmp	r0, #0
c0d05536:	d10b      	bne.n	c0d05550 <tx_display_query+0x204>
c0d05538:	f7ff fc8a 	bl	c0d04e50 <tx_indexRootFields>
c0d0553c:	4625      	mov	r5, r4
c0d0553e:	4604      	mov	r4, r0
c0d05540:	f002 fcc4 	bl	c0d07ecc <check_app_canary>
c0d05544:	4860      	ldr	r0, [pc, #384]	; (c0d056c8 <tx_display_query+0x37c>)
c0d05546:	7fc0      	ldrb	r0, [r0, #31]
c0d05548:	4320      	orrs	r0, r4
c0d0554a:	462c      	mov	r4, r5
c0d0554c:	d000      	beq.n	c0d05550 <tx_display_query+0x204>
c0d0554e:	2701      	movs	r7, #1
c0d05550:	b2f8      	uxtb	r0, r7
c0d05552:	4f5d      	ldr	r7, [pc, #372]	; (c0d056c8 <tx_display_query+0x37c>)
c0d05554:	2800      	cmp	r0, #0
c0d05556:	4635      	mov	r5, r6
c0d05558:	d0a4      	beq.n	c0d054a4 <tx_display_query+0x158>
c0d0555a:	e000      	b.n	c0d0555e <tx_display_query+0x212>
c0d0555c:	2400      	movs	r4, #0
c0d0555e:	4625      	mov	r5, r4
c0d05560:	9a09      	ldr	r2, [sp, #36]	; 0x24
c0d05562:	1c52      	adds	r2, r2, #1
c0d05564:	b290      	uxth	r0, r2
c0d05566:	9908      	ldr	r1, [sp, #32]
c0d05568:	4288      	cmp	r0, r1
c0d0556a:	d234      	bcs.n	c0d055d6 <tx_display_query+0x28a>
c0d0556c:	e773      	b.n	c0d05456 <tx_display_query+0x10a>
c0d0556e:	d013      	beq.n	c0d05598 <tx_display_query+0x24c>
c0d05570:	2805      	cmp	r0, #5
c0d05572:	d000      	beq.n	c0d05576 <tx_display_query+0x22a>
c0d05574:	e777      	b.n	c0d05466 <tx_display_query+0x11a>
c0d05576:	f7fb fbb9 	bl	c0d00cec <app_mode_expert>
c0d0557a:	2800      	cmp	r0, #0
c0d0557c:	d000      	beq.n	c0d05580 <tx_display_query+0x234>
c0d0557e:	e772      	b.n	c0d05466 <tx_display_query+0x11a>
c0d05580:	f7ff fc66 	bl	c0d04e50 <tx_indexRootFields>
c0d05584:	9005      	str	r0, [sp, #20]
c0d05586:	f002 fca1 	bl	c0d07ecc <check_app_canary>
c0d0558a:	7ff8      	ldrb	r0, [r7, #31]
c0d0558c:	9905      	ldr	r1, [sp, #20]
c0d0558e:	4308      	orrs	r0, r1
c0d05590:	d100      	bne.n	c0d05594 <tx_display_query+0x248>
c0d05592:	e768      	b.n	c0d05466 <tx_display_query+0x11a>
c0d05594:	2401      	movs	r4, #1
c0d05596:	e766      	b.n	c0d05466 <tx_display_query+0x11a>
c0d05598:	484c      	ldr	r0, [pc, #304]	; (c0d056cc <tx_display_query+0x380>)
c0d0559a:	4b4d      	ldr	r3, [pc, #308]	; (c0d056d0 <tx_display_query+0x384>)
c0d0559c:	5c18      	ldrb	r0, [r3, r0]
c0d0559e:	2800      	cmp	r0, #0
c0d055a0:	4621      	mov	r1, r4
c0d055a2:	d001      	beq.n	c0d055a8 <tx_display_query+0x25c>
c0d055a4:	1a20      	subs	r0, r4, r0
c0d055a6:	1c41      	adds	r1, r0, #1
c0d055a8:	2049      	movs	r0, #73	; 0x49
c0d055aa:	00c0      	lsls	r0, r0, #3
c0d055ac:	5c18      	ldrb	r0, [r3, r0]
c0d055ae:	0782      	lsls	r2, r0, #30
c0d055b0:	d500      	bpl.n	c0d055b4 <tx_display_query+0x268>
c0d055b2:	460c      	mov	r4, r1
c0d055b4:	0741      	lsls	r1, r0, #29
c0d055b6:	d400      	bmi.n	c0d055ba <tx_display_query+0x26e>
c0d055b8:	e755      	b.n	c0d05466 <tx_display_query+0x11a>
c0d055ba:	2125      	movs	r1, #37	; 0x25
c0d055bc:	0109      	lsls	r1, r1, #4
c0d055be:	5c59      	ldrb	r1, [r3, r1]
c0d055c0:	2900      	cmp	r1, #0
c0d055c2:	d100      	bne.n	c0d055c6 <tx_display_query+0x27a>
c0d055c4:	e74f      	b.n	c0d05466 <tx_display_query+0x11a>
c0d055c6:	08c0      	lsrs	r0, r0, #3
c0d055c8:	2201      	movs	r2, #1
c0d055ca:	4382      	bics	r2, r0
c0d055cc:	1a50      	subs	r0, r2, r1
c0d055ce:	1904      	adds	r4, r0, r4
c0d055d0:	e749      	b.n	c0d05466 <tx_display_query+0x11a>
c0d055d2:	2003      	movs	r0, #3
c0d055d4:	e073      	b.n	c0d056be <tx_display_query+0x372>
c0d055d6:	b2f6      	uxtb	r6, r6
c0d055d8:	f002 fc78 	bl	c0d07ecc <check_app_canary>
c0d055dc:	2001      	movs	r0, #1
c0d055de:	2e07      	cmp	r6, #7
c0d055e0:	d86d      	bhi.n	c0d056be <tx_display_query+0x372>
c0d055e2:	9003      	str	r0, [sp, #12]
c0d055e4:	483b      	ldr	r0, [pc, #236]	; (c0d056d4 <tx_display_query+0x388>)
c0d055e6:	4a3a      	ldr	r2, [pc, #232]	; (c0d056d0 <tx_display_query+0x384>)
c0d055e8:	2106      	movs	r1, #6
c0d055ea:	5411      	strb	r1, [r2, r0]
c0d055ec:	2097      	movs	r0, #151	; 0x97
c0d055ee:	0081      	lsls	r1, r0, #2
c0d055f0:	2300      	movs	r3, #0
c0d055f2:	5253      	strh	r3, [r2, r1]
c0d055f4:	2702      	movs	r7, #2
c0d055f6:	2e02      	cmp	r6, #2
c0d055f8:	9609      	str	r6, [sp, #36]	; 0x24
c0d055fa:	9108      	str	r1, [sp, #32]
c0d055fc:	9705      	str	r7, [sp, #20]
c0d055fe:	dd07      	ble.n	c0d05610 <tx_display_query+0x2c4>
c0d05600:	2e04      	cmp	r6, #4
c0d05602:	dc09      	bgt.n	c0d05618 <tx_display_query+0x2cc>
c0d05604:	2e03      	cmp	r6, #3
c0d05606:	d00d      	beq.n	c0d05624 <tx_display_query+0x2d8>
c0d05608:	2e04      	cmp	r6, #4
c0d0560a:	4638      	mov	r0, r7
c0d0560c:	d013      	beq.n	c0d05636 <tx_display_query+0x2ea>
c0d0560e:	e00f      	b.n	c0d05630 <tx_display_query+0x2e4>
c0d05610:	2e03      	cmp	r6, #3
c0d05612:	4638      	mov	r0, r7
c0d05614:	d30f      	bcc.n	c0d05636 <tx_display_query+0x2ea>
c0d05616:	e00b      	b.n	c0d05630 <tx_display_query+0x2e4>
c0d05618:	2e06      	cmp	r6, #6
c0d0561a:	d001      	beq.n	c0d05620 <tx_display_query+0x2d4>
c0d0561c:	2e05      	cmp	r6, #5
c0d0561e:	d107      	bne.n	c0d05630 <tx_display_query+0x2e4>
c0d05620:	2001      	movs	r0, #1
c0d05622:	e008      	b.n	c0d05636 <tx_display_query+0x2ea>
c0d05624:	482c      	ldr	r0, [pc, #176]	; (c0d056d8 <tx_display_query+0x38c>)
c0d05626:	7800      	ldrb	r0, [r0, #0]
c0d05628:	2800      	cmp	r0, #0
c0d0562a:	d003      	beq.n	c0d05634 <tx_display_query+0x2e8>
c0d0562c:	2003      	movs	r0, #3
c0d0562e:	e002      	b.n	c0d05636 <tx_display_query+0x2ea>
c0d05630:	4618      	mov	r0, r3
c0d05632:	e000      	b.n	c0d05636 <tx_display_query+0x2ea>
c0d05634:	2002      	movs	r0, #2
c0d05636:	4929      	ldr	r1, [pc, #164]	; (c0d056dc <tx_display_query+0x390>)
c0d05638:	5450      	strb	r0, [r2, r1]
c0d0563a:	2013      	movs	r0, #19
c0d0563c:	0140      	lsls	r0, r0, #5
c0d0563e:	9002      	str	r0, [sp, #8]
c0d05640:	5013      	str	r3, [r2, r0]
c0d05642:	9c04      	ldr	r4, [sp, #16]
c0d05644:	4620      	mov	r0, r4
c0d05646:	9f06      	ldr	r7, [sp, #24]
c0d05648:	4639      	mov	r1, r7
c0d0564a:	9301      	str	r3, [sp, #4]
c0d0564c:	f002 fcf6 	bl	c0d0803c <explicit_bzero>
c0d05650:	4823      	ldr	r0, [pc, #140]	; (c0d056e0 <tx_display_query+0x394>)
c0d05652:	9e05      	ldr	r6, [sp, #20]
c0d05654:	4631      	mov	r1, r6
c0d05656:	f002 fcf1 	bl	c0d0803c <explicit_bzero>
c0d0565a:	209b      	movs	r0, #155	; 0x9b
c0d0565c:	0080      	lsls	r0, r0, #2
c0d0565e:	4a1c      	ldr	r2, [pc, #112]	; (c0d056d0 <tx_display_query+0x384>)
c0d05660:	491f      	ldr	r1, [pc, #124]	; (c0d056e0 <tx_display_query+0x394>)
c0d05662:	5011      	str	r1, [r2, r0]
c0d05664:	2099      	movs	r0, #153	; 0x99
c0d05666:	0080      	lsls	r0, r0, #2
c0d05668:	5014      	str	r4, [r2, r0]
c0d0566a:	2027      	movs	r0, #39	; 0x27
c0d0566c:	0100      	lsls	r0, r0, #4
c0d0566e:	5216      	strh	r6, [r2, r0]
c0d05670:	204d      	movs	r0, #77	; 0x4d
c0d05672:	00c0      	lsls	r0, r0, #3
c0d05674:	5217      	strh	r7, [r2, r0]
c0d05676:	b2e8      	uxtb	r0, r5
c0d05678:	9902      	ldr	r1, [sp, #8]
c0d0567a:	5250      	strh	r0, [r2, r1]
c0d0567c:	9808      	ldr	r0, [sp, #32]
c0d0567e:	9901      	ldr	r1, [sp, #4]
c0d05680:	5211      	strh	r1, [r2, r0]
c0d05682:	4620      	mov	r0, r4
c0d05684:	4639      	mov	r1, r7
c0d05686:	f002 fcd9 	bl	c0d0803c <explicit_bzero>
c0d0568a:	2f00      	cmp	r7, #0
c0d0568c:	9e09      	ldr	r6, [sp, #36]	; 0x24
c0d0568e:	d007      	beq.n	c0d056a0 <tx_display_query+0x354>
c0d05690:	4630      	mov	r0, r6
c0d05692:	f7ff fba3 	bl	c0d04ddc <get_required_root_item>
c0d05696:	4601      	mov	r1, r0
c0d05698:	1e7a      	subs	r2, r7, #1
c0d0569a:	4620      	mov	r0, r4
c0d0569c:	f002 feb8 	bl	c0d08410 <strncpy>
c0d056a0:	4b09      	ldr	r3, [pc, #36]	; (c0d056c8 <tx_display_query+0x37c>)
c0d056a2:	5d99      	ldrb	r1, [r3, r6]
c0d056a4:	2900      	cmp	r1, #0
c0d056a6:	9907      	ldr	r1, [sp, #28]
c0d056a8:	9803      	ldr	r0, [sp, #12]
c0d056aa:	d008      	beq.n	c0d056be <tx_display_query+0x372>
c0d056ac:	0072      	lsls	r2, r6, #1
c0d056ae:	1898      	adds	r0, r3, r2
c0d056b0:	8900      	ldrh	r0, [r0, #8]
c0d056b2:	f000 f997 	bl	c0d059e4 <tx_traverse_find>
c0d056b6:	4604      	mov	r4, r0
c0d056b8:	f002 fc08 	bl	c0d07ecc <check_app_canary>
c0d056bc:	4620      	mov	r0, r4
c0d056be:	b00b      	add	sp, #44	; 0x2c
c0d056c0:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d056c2:	2605      	movs	r6, #5
c0d056c4:	e6be      	b.n	c0d05444 <tx_display_query+0xf8>
c0d056c6:	46c0      	nop			; (mov r8, r8)
c0d056c8:	20000a90 	.word	0x20000a90
c0d056cc:	00000249 	.word	0x00000249
c0d056d0:	2000048c 	.word	0x2000048c
c0d056d4:	0000025f 	.word	0x0000025f
c0d056d8:	20000ab2 	.word	0x20000ab2
c0d056dc:	0000025e 	.word	0x0000025e
c0d056e0:	20000ab0 	.word	0x20000ab0

c0d056e4 <tx_display_make_friendly>:
c0d056e4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d056e6:	b081      	sub	sp, #4
c0d056e8:	f7ff fbb2 	bl	c0d04e50 <tx_indexRootFields>
c0d056ec:	4606      	mov	r6, r0
c0d056ee:	f002 fbed 	bl	c0d07ecc <check_app_canary>
c0d056f2:	2e00      	cmp	r6, #0
c0d056f4:	d126      	bne.n	c0d05744 <tx_display_make_friendly+0x60>
c0d056f6:	2099      	movs	r0, #153	; 0x99
c0d056f8:	0080      	lsls	r0, r0, #2
c0d056fa:	4e14      	ldr	r6, [pc, #80]	; (c0d0574c <tx_display_make_friendly+0x68>)
c0d056fc:	5834      	ldr	r4, [r6, r0]
c0d056fe:	4d14      	ldr	r5, [pc, #80]	; (c0d05750 <tx_display_make_friendly+0x6c>)
c0d05700:	447d      	add	r5, pc
c0d05702:	2725      	movs	r7, #37	; 0x25
c0d05704:	4628      	mov	r0, r5
c0d05706:	f002 fe1b 	bl	c0d08340 <strlen>
c0d0570a:	4602      	mov	r2, r0
c0d0570c:	4620      	mov	r0, r4
c0d0570e:	4629      	mov	r1, r5
c0d05710:	f002 fe44 	bl	c0d0839c <strncmp>
c0d05714:	2800      	cmp	r0, #0
c0d05716:	d005      	beq.n	c0d05724 <tx_display_make_friendly+0x40>
c0d05718:	1e7f      	subs	r7, r7, #1
c0d0571a:	3564      	adds	r5, #100	; 0x64
c0d0571c:	2f00      	cmp	r7, #0
c0d0571e:	d1f1      	bne.n	c0d05704 <tx_display_make_friendly+0x20>
c0d05720:	2600      	movs	r6, #0
c0d05722:	e00f      	b.n	c0d05744 <tx_display_make_friendly+0x60>
c0d05724:	204d      	movs	r0, #77	; 0x4d
c0d05726:	00c0      	lsls	r0, r0, #3
c0d05728:	5a37      	ldrh	r7, [r6, r0]
c0d0572a:	4620      	mov	r0, r4
c0d0572c:	4639      	mov	r1, r7
c0d0572e:	f002 fc85 	bl	c0d0803c <explicit_bzero>
c0d05732:	2600      	movs	r6, #0
c0d05734:	2f00      	cmp	r7, #0
c0d05736:	d005      	beq.n	c0d05744 <tx_display_make_friendly+0x60>
c0d05738:	3532      	adds	r5, #50	; 0x32
c0d0573a:	1e7a      	subs	r2, r7, #1
c0d0573c:	4620      	mov	r0, r4
c0d0573e:	4629      	mov	r1, r5
c0d05740:	f002 fe66 	bl	c0d08410 <strncpy>
c0d05744:	4630      	mov	r0, r6
c0d05746:	b001      	add	sp, #4
c0d05748:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d0574a:	46c0      	nop			; (mov r8, r8)
c0d0574c:	2000048c 	.word	0x2000048c
c0d05750:	0000378e 	.word	0x0000378e

c0d05754 <tx_display_translation>:
c0d05754:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d05756:	b08d      	sub	sp, #52	; 0x34
c0d05758:	9301      	str	r3, [sp, #4]
c0d0575a:	4616      	mov	r6, r2
c0d0575c:	4604      	mov	r4, r0
c0d0575e:	9105      	str	r1, [sp, #20]
c0d05760:	f002 fc6c 	bl	c0d0803c <explicit_bzero>
c0d05764:	7830      	ldrb	r0, [r6, #0]
c0d05766:	2800      	cmp	r0, #0
c0d05768:	d100      	bne.n	c0d0576c <tx_display_translation+0x18>
c0d0576a:	e094      	b.n	c0d05896 <tx_display_translation+0x142>
c0d0576c:	2700      	movs	r7, #0
c0d0576e:	9704      	str	r7, [sp, #16]
c0d05770:	4633      	mov	r3, r6
c0d05772:	9603      	str	r6, [sp, #12]
c0d05774:	9804      	ldr	r0, [sp, #16]
c0d05776:	900c      	str	r0, [sp, #48]	; 0x30
c0d05778:	a90c      	add	r1, sp, #48	; 0x30
c0d0577a:	4618      	mov	r0, r3
c0d0577c:	f7ff fafc 	bl	c0d04d78 <utf8codepoint>
c0d05780:	4603      	mov	r3, r0
c0d05782:	980c      	ldr	r0, [sp, #48]	; 0x30
c0d05784:	280e      	cmp	r0, #14
c0d05786:	dc0b      	bgt.n	c0d057a0 <tx_display_translation+0x4c>
c0d05788:	461e      	mov	r6, r3
c0d0578a:	2100      	movs	r1, #0
c0d0578c:	4a4e      	ldr	r2, [pc, #312]	; (c0d058c8 <tx_display_translation+0x174>)
c0d0578e:	447a      	add	r2, pc
c0d05790:	5c53      	ldrb	r3, [r2, r1]
c0d05792:	b2c5      	uxtb	r5, r0
c0d05794:	42ab      	cmp	r3, r5
c0d05796:	d010      	beq.n	c0d057ba <tx_display_translation+0x66>
c0d05798:	1c89      	adds	r1, r1, #2
c0d0579a:	2910      	cmp	r1, #16
c0d0579c:	d1f6      	bne.n	c0d0578c <tx_display_translation+0x38>
c0d0579e:	e01d      	b.n	c0d057dc <tx_display_translation+0x88>
c0d057a0:	4601      	mov	r1, r0
c0d057a2:	3920      	subs	r1, #32
c0d057a4:	295f      	cmp	r1, #95	; 0x5f
c0d057a6:	9a05      	ldr	r2, [sp, #20]
c0d057a8:	d81e      	bhi.n	c0d057e8 <tx_display_translation+0x94>
c0d057aa:	7020      	strb	r0, [r4, #0]
c0d057ac:	1c7f      	adds	r7, r7, #1
c0d057ae:	b2f8      	uxtb	r0, r7
c0d057b0:	4290      	cmp	r0, r2
c0d057b2:	d900      	bls.n	c0d057b6 <tx_display_translation+0x62>
c0d057b4:	e083      	b.n	c0d058be <tx_display_translation+0x16a>
c0d057b6:	1c64      	adds	r4, r4, #1
c0d057b8:	e012      	b.n	c0d057e0 <tx_display_translation+0x8c>
c0d057ba:	205c      	movs	r0, #92	; 0x5c
c0d057bc:	7020      	strb	r0, [r4, #0]
c0d057be:	1c78      	adds	r0, r7, #1
c0d057c0:	b2c3      	uxtb	r3, r0
c0d057c2:	2014      	movs	r0, #20
c0d057c4:	9d05      	ldr	r5, [sp, #20]
c0d057c6:	42ab      	cmp	r3, r5
c0d057c8:	d87c      	bhi.n	c0d058c4 <tx_display_translation+0x170>
c0d057ca:	462b      	mov	r3, r5
c0d057cc:	1851      	adds	r1, r2, r1
c0d057ce:	7849      	ldrb	r1, [r1, #1]
c0d057d0:	7061      	strb	r1, [r4, #1]
c0d057d2:	1cbf      	adds	r7, r7, #2
c0d057d4:	b2f9      	uxtb	r1, r7
c0d057d6:	42a9      	cmp	r1, r5
c0d057d8:	d874      	bhi.n	c0d058c4 <tx_display_translation+0x170>
c0d057da:	1ca4      	adds	r4, r4, #2
c0d057dc:	4633      	mov	r3, r6
c0d057de:	9e03      	ldr	r6, [sp, #12]
c0d057e0:	7818      	ldrb	r0, [r3, #0]
c0d057e2:	2800      	cmp	r0, #0
c0d057e4:	d1c6      	bne.n	c0d05774 <tx_display_translation+0x20>
c0d057e6:	e056      	b.n	c0d05896 <tx_display_translation+0x142>
c0d057e8:	205c      	movs	r0, #92	; 0x5c
c0d057ea:	7020      	strb	r0, [r4, #0]
c0d057ec:	1c78      	adds	r0, r7, #1
c0d057ee:	b2c0      	uxtb	r0, r0
c0d057f0:	4290      	cmp	r0, r2
c0d057f2:	d864      	bhi.n	c0d058be <tx_display_translation+0x16a>
c0d057f4:	980c      	ldr	r0, [sp, #48]	; 0x30
c0d057f6:	ba01      	rev	r1, r0
c0d057f8:	910b      	str	r1, [sp, #44]	; 0x2c
c0d057fa:	2101      	movs	r1, #1
c0d057fc:	0409      	lsls	r1, r1, #16
c0d057fe:	4288      	cmp	r0, r1
c0d05800:	db07      	blt.n	c0d05812 <tx_display_translation+0xbe>
c0d05802:	2055      	movs	r0, #85	; 0x55
c0d05804:	7060      	strb	r0, [r4, #1]
c0d05806:	1cbd      	adds	r5, r7, #2
c0d05808:	b2e8      	uxtb	r0, r5
c0d0580a:	4290      	cmp	r0, r2
c0d0580c:	d857      	bhi.n	c0d058be <tx_display_translation+0x16a>
c0d0580e:	2608      	movs	r6, #8
c0d05810:	e009      	b.n	c0d05826 <tx_display_translation+0xd2>
c0d05812:	2075      	movs	r0, #117	; 0x75
c0d05814:	7060      	strb	r0, [r4, #1]
c0d05816:	1cbd      	adds	r5, r7, #2
c0d05818:	b2e8      	uxtb	r0, r5
c0d0581a:	4290      	cmp	r0, r2
c0d0581c:	d84f      	bhi.n	c0d058be <tx_display_translation+0x16a>
c0d0581e:	a80b      	add	r0, sp, #44	; 0x2c
c0d05820:	8840      	ldrh	r0, [r0, #2]
c0d05822:	900b      	str	r0, [sp, #44]	; 0x2c
c0d05824:	2604      	movs	r6, #4
c0d05826:	4296      	cmp	r6, r2
c0d05828:	d84b      	bhi.n	c0d058c2 <tx_display_translation+0x16e>
c0d0582a:	9300      	str	r3, [sp, #0]
c0d0582c:	1ca4      	adds	r4, r4, #2
c0d0582e:	af06      	add	r7, sp, #24
c0d05830:	2112      	movs	r1, #18
c0d05832:	9102      	str	r1, [sp, #8]
c0d05834:	4638      	mov	r0, r7
c0d05836:	f002 fbeb 	bl	c0d08010 <__aeabi_memclr>
c0d0583a:	4638      	mov	r0, r7
c0d0583c:	9902      	ldr	r1, [sp, #8]
c0d0583e:	f002 fbfd 	bl	c0d0803c <explicit_bzero>
c0d05842:	2000      	movs	r0, #0
c0d05844:	4639      	mov	r1, r7
c0d05846:	aa0b      	add	r2, sp, #44	; 0x2c
c0d05848:	5c12      	ldrb	r2, [r2, r0]
c0d0584a:	230f      	movs	r3, #15
c0d0584c:	4013      	ands	r3, r2
c0d0584e:	4f1f      	ldr	r7, [pc, #124]	; (c0d058cc <tx_display_translation+0x178>)
c0d05850:	447f      	add	r7, pc
c0d05852:	5cfb      	ldrb	r3, [r7, r3]
c0d05854:	704b      	strb	r3, [r1, #1]
c0d05856:	0912      	lsrs	r2, r2, #4
c0d05858:	5cba      	ldrb	r2, [r7, r2]
c0d0585a:	700a      	strb	r2, [r1, #0]
c0d0585c:	1c8f      	adds	r7, r1, #2
c0d0585e:	1c40      	adds	r0, r0, #1
c0d05860:	2808      	cmp	r0, #8
c0d05862:	d1ef      	bne.n	c0d05844 <tx_display_translation+0xf0>
c0d05864:	2000      	movs	r0, #0
c0d05866:	7088      	strb	r0, [r1, #2]
c0d05868:	19af      	adds	r7, r5, r6
c0d0586a:	a806      	add	r0, sp, #24
c0d0586c:	9b05      	ldr	r3, [sp, #20]
c0d0586e:	7801      	ldrb	r1, [r0, #0]
c0d05870:	460a      	mov	r2, r1
c0d05872:	3a61      	subs	r2, #97	; 0x61
c0d05874:	b2d2      	uxtb	r2, r2
c0d05876:	2a1a      	cmp	r2, #26
c0d05878:	d200      	bcs.n	c0d0587c <tx_display_translation+0x128>
c0d0587a:	3920      	subs	r1, #32
c0d0587c:	7021      	strb	r1, [r4, #0]
c0d0587e:	1c6d      	adds	r5, r5, #1
c0d05880:	b2e9      	uxtb	r1, r5
c0d05882:	4299      	cmp	r1, r3
c0d05884:	d81b      	bhi.n	c0d058be <tx_display_translation+0x16a>
c0d05886:	1c40      	adds	r0, r0, #1
c0d05888:	1e76      	subs	r6, r6, #1
c0d0588a:	1c64      	adds	r4, r4, #1
c0d0588c:	2e00      	cmp	r6, #0
c0d0588e:	d1ee      	bne.n	c0d0586e <tx_display_translation+0x11a>
c0d05890:	9e03      	ldr	r6, [sp, #12]
c0d05892:	9b00      	ldr	r3, [sp, #0]
c0d05894:	e7a4      	b.n	c0d057e0 <tx_display_translation+0x8c>
c0d05896:	9801      	ldr	r0, [sp, #4]
c0d05898:	1980      	adds	r0, r0, r6
c0d0589a:	1e40      	subs	r0, r0, #1
c0d0589c:	7800      	ldrb	r0, [r0, #0]
c0d0589e:	2840      	cmp	r0, #64	; 0x40
c0d058a0:	d001      	beq.n	c0d058a6 <tx_display_translation+0x152>
c0d058a2:	2820      	cmp	r0, #32
c0d058a4:	d108      	bne.n	c0d058b8 <tx_display_translation+0x164>
c0d058a6:	9905      	ldr	r1, [sp, #20]
c0d058a8:	1988      	adds	r0, r1, r6
c0d058aa:	1e40      	subs	r0, r0, #1
c0d058ac:	7800      	ldrb	r0, [r0, #0]
c0d058ae:	4288      	cmp	r0, r1
c0d058b0:	d207      	bcs.n	c0d058c2 <tx_display_translation+0x16e>
c0d058b2:	2040      	movs	r0, #64	; 0x40
c0d058b4:	7020      	strb	r0, [r4, #0]
c0d058b6:	1c64      	adds	r4, r4, #1
c0d058b8:	2000      	movs	r0, #0
c0d058ba:	7020      	strb	r0, [r4, #0]
c0d058bc:	e002      	b.n	c0d058c4 <tx_display_translation+0x170>
c0d058be:	2014      	movs	r0, #20
c0d058c0:	e000      	b.n	c0d058c4 <tx_display_translation+0x170>
c0d058c2:	2009      	movs	r0, #9
c0d058c4:	b00d      	add	sp, #52	; 0x34
c0d058c6:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d058c8:	00004574 	.word	0x00004574
c0d058cc:	0000362d 	.word	0x0000362d

c0d058d0 <tx_getToken>:
c0d058d0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d058d2:	b087      	sub	sp, #28
c0d058d4:	461d      	mov	r5, r3
c0d058d6:	4604      	mov	r4, r0
c0d058d8:	9f0c      	ldr	r7, [sp, #48]	; 0x30
c0d058da:	2600      	movs	r6, #0
c0d058dc:	703e      	strb	r6, [r7, #0]
c0d058de:	9105      	str	r1, [sp, #20]
c0d058e0:	4608      	mov	r0, r1
c0d058e2:	9204      	str	r2, [sp, #16]
c0d058e4:	4611      	mov	r1, r2
c0d058e6:	f002 fba9 	bl	c0d0803c <explicit_bzero>
c0d058ea:	00e0      	lsls	r0, r4, #3
c0d058ec:	4939      	ldr	r1, [pc, #228]	; (c0d059d4 <tx_getToken+0x104>)
c0d058ee:	180a      	adds	r2, r1, r0
c0d058f0:	2012      	movs	r0, #18
c0d058f2:	5e10      	ldrsh	r0, [r2, r0]
c0d058f4:	2314      	movs	r3, #20
c0d058f6:	5ed2      	ldrsh	r2, [r2, r3]
c0d058f8:	4282      	cmp	r2, r0
c0d058fa:	da01      	bge.n	c0d05900 <tx_getToken+0x30>
c0d058fc:	2008      	movs	r0, #8
c0d058fe:	e066      	b.n	c0d059ce <tx_getToken+0xfe>
c0d05900:	9603      	str	r6, [sp, #12]
c0d05902:	6849      	ldr	r1, [r1, #4]
c0d05904:	2301      	movs	r3, #1
c0d05906:	9706      	str	r7, [sp, #24]
c0d05908:	9301      	str	r3, [sp, #4]
c0d0590a:	703b      	strb	r3, [r7, #0]
c0d0590c:	1a13      	subs	r3, r2, r0
c0d0590e:	041a      	lsls	r2, r3, #16
c0d05910:	d056      	beq.n	c0d059c0 <tx_getToken+0xf0>
c0d05912:	9500      	str	r5, [sp, #0]
c0d05914:	180d      	adds	r5, r1, r0
c0d05916:	9302      	str	r3, [sp, #8]
c0d05918:	b29c      	uxth	r4, r3
c0d0591a:	4f30      	ldr	r7, [pc, #192]	; (c0d059dc <tx_getToken+0x10c>)
c0d0591c:	447f      	add	r7, pc
c0d0591e:	260b      	movs	r6, #11
c0d05920:	4638      	mov	r0, r7
c0d05922:	f002 fd0d 	bl	c0d08340 <strlen>
c0d05926:	42a0      	cmp	r0, r4
c0d05928:	d106      	bne.n	c0d05938 <tx_getToken+0x68>
c0d0592a:	4628      	mov	r0, r5
c0d0592c:	4639      	mov	r1, r7
c0d0592e:	4622      	mov	r2, r4
c0d05930:	f002 fb88 	bl	c0d08044 <memcmp>
c0d05934:	2800      	cmp	r0, #0
c0d05936:	d005      	beq.n	c0d05944 <tx_getToken+0x74>
c0d05938:	1e76      	subs	r6, r6, #1
c0d0593a:	3764      	adds	r7, #100	; 0x64
c0d0593c:	2e00      	cmp	r6, #0
c0d0593e:	d1ef      	bne.n	c0d05920 <tx_getToken+0x50>
c0d05940:	462f      	mov	r7, r5
c0d05942:	e00d      	b.n	c0d05960 <tx_getToken+0x90>
c0d05944:	3732      	adds	r7, #50	; 0x32
c0d05946:	4638      	mov	r0, r7
c0d05948:	f002 fcfa 	bl	c0d08340 <strlen>
c0d0594c:	9002      	str	r0, [sp, #8]
c0d0594e:	4924      	ldr	r1, [pc, #144]	; (c0d059e0 <tx_getToken+0x110>)
c0d05950:	4479      	add	r1, pc
c0d05952:	4638      	mov	r0, r7
c0d05954:	f002 fee6 	bl	c0d08724 <strstr>
c0d05958:	1e41      	subs	r1, r0, #1
c0d0595a:	4188      	sbcs	r0, r1
c0d0595c:	491e      	ldr	r1, [pc, #120]	; (c0d059d8 <tx_getToken+0x108>)
c0d0595e:	7008      	strb	r0, [r1, #0]
c0d05960:	9d00      	ldr	r5, [sp, #0]
c0d05962:	9c03      	ldr	r4, [sp, #12]
c0d05964:	9e04      	ldr	r6, [sp, #16]
c0d05966:	9805      	ldr	r0, [sp, #20]
c0d05968:	4631      	mov	r1, r6
c0d0596a:	f002 fb67 	bl	c0d0803c <explicit_bzero>
c0d0596e:	9806      	ldr	r0, [sp, #24]
c0d05970:	7004      	strb	r4, [r0, #0]
c0d05972:	1e74      	subs	r4, r6, #1
c0d05974:	b2a6      	uxth	r6, r4
c0d05976:	2e00      	cmp	r6, #0
c0d05978:	9a02      	ldr	r2, [sp, #8]
c0d0597a:	d021      	beq.n	c0d059c0 <tx_getToken+0xf0>
c0d0597c:	0410      	lsls	r0, r2, #16
c0d0597e:	d01f      	beq.n	c0d059c0 <tx_getToken+0xf0>
c0d05980:	b290      	uxth	r0, r2
c0d05982:	4631      	mov	r1, r6
c0d05984:	9202      	str	r2, [sp, #8]
c0d05986:	f002 fad7 	bl	c0d07f38 <__udivsi3>
c0d0598a:	4344      	muls	r4, r0
c0d0598c:	9902      	ldr	r1, [sp, #8]
c0d0598e:	1b0b      	subs	r3, r1, r4
c0d05990:	b29a      	uxth	r2, r3
c0d05992:	1e51      	subs	r1, r2, #1
c0d05994:	4614      	mov	r4, r2
c0d05996:	418c      	sbcs	r4, r1
c0d05998:	1820      	adds	r0, r4, r0
c0d0599a:	9906      	ldr	r1, [sp, #24]
c0d0599c:	7008      	strb	r0, [r1, #0]
c0d0599e:	b2c0      	uxtb	r0, r0
c0d059a0:	42a8      	cmp	r0, r5
c0d059a2:	d90d      	bls.n	c0d059c0 <tx_getToken+0xf0>
c0d059a4:	4631      	mov	r1, r6
c0d059a6:	4369      	muls	r1, r5
c0d059a8:	1879      	adds	r1, r7, r1
c0d059aa:	041b      	lsls	r3, r3, #16
c0d059ac:	d004      	beq.n	c0d059b8 <tx_getToken+0xe8>
c0d059ae:	1e40      	subs	r0, r0, #1
c0d059b0:	42a8      	cmp	r0, r5
c0d059b2:	d101      	bne.n	c0d059b8 <tx_getToken+0xe8>
c0d059b4:	9805      	ldr	r0, [sp, #20]
c0d059b6:	e001      	b.n	c0d059bc <tx_getToken+0xec>
c0d059b8:	9805      	ldr	r0, [sp, #20]
c0d059ba:	4632      	mov	r2, r6
c0d059bc:	f002 fb32 	bl	c0d08024 <__aeabi_memmove>
c0d059c0:	9806      	ldr	r0, [sp, #24]
c0d059c2:	7800      	ldrb	r0, [r0, #0]
c0d059c4:	42a8      	cmp	r0, r5
c0d059c6:	9801      	ldr	r0, [sp, #4]
c0d059c8:	d900      	bls.n	c0d059cc <tx_getToken+0xfc>
c0d059ca:	9803      	ldr	r0, [sp, #12]
c0d059cc:	0080      	lsls	r0, r0, #2
c0d059ce:	b007      	add	sp, #28
c0d059d0:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d059d2:	46c0      	nop			; (mov r8, r8)
c0d059d4:	2000048c 	.word	0x2000048c
c0d059d8:	20000ab2 	.word	0x20000ab2
c0d059dc:	000043f6 	.word	0x000043f6
c0d059e0:	0000480e 	.word	0x0000480e

c0d059e4 <tx_traverse_find>:
c0d059e4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d059e6:	b08f      	sub	sp, #60	; 0x3c
c0d059e8:	910a      	str	r1, [sp, #40]	; 0x28
c0d059ea:	4607      	mov	r7, r0
c0d059ec:	00c0      	lsls	r0, r0, #3
c0d059ee:	4cad      	ldr	r4, [pc, #692]	; (c0d05ca4 <tx_traverse_find+0x2c0>)
c0d059f0:	1d25      	adds	r5, r4, #4
c0d059f2:	1828      	adds	r0, r5, r0
c0d059f4:	7b06      	ldrb	r6, [r0, #12]
c0d059f6:	f002 fa69 	bl	c0d07ecc <check_app_canary>
c0d059fa:	6860      	ldr	r0, [r4, #4]
c0d059fc:	2800      	cmp	r0, #0
c0d059fe:	d04d      	beq.n	c0d05a9c <tx_traverse_find+0xb8>
c0d05a00:	1ef0      	subs	r0, r6, #3
c0d05a02:	2802      	cmp	r0, #2
c0d05a04:	9709      	str	r7, [sp, #36]	; 0x24
c0d05a06:	d34b      	bcc.n	c0d05aa0 <tx_traverse_find+0xbc>
c0d05a08:	48a8      	ldr	r0, [pc, #672]	; (c0d05cac <tx_traverse_find+0x2c8>)
c0d05a0a:	5c20      	ldrb	r0, [r4, r0]
c0d05a0c:	2800      	cmp	r0, #0
c0d05a0e:	d047      	beq.n	c0d05aa0 <tx_traverse_find+0xbc>
c0d05a10:	48a5      	ldr	r0, [pc, #660]	; (c0d05ca8 <tx_traverse_find+0x2c4>)
c0d05a12:	5c20      	ldrb	r0, [r4, r0]
c0d05a14:	2800      	cmp	r0, #0
c0d05a16:	d043      	beq.n	c0d05aa0 <tx_traverse_find+0xbc>
c0d05a18:	9506      	str	r5, [sp, #24]
c0d05a1a:	4625      	mov	r5, r4
c0d05a1c:	3508      	adds	r5, #8
c0d05a1e:	aa0e      	add	r2, sp, #56	; 0x38
c0d05a20:	4628      	mov	r0, r5
c0d05a22:	4639      	mov	r1, r7
c0d05a24:	f7fc fc75 	bl	c0d02312 <object_get_element_count>
c0d05a28:	4607      	mov	r7, r0
c0d05a2a:	f002 fa4f 	bl	c0d07ecc <check_app_canary>
c0d05a2e:	2f00      	cmp	r7, #0
c0d05a30:	d000      	beq.n	c0d05a34 <tx_traverse_find+0x50>
c0d05a32:	e08f      	b.n	c0d05b54 <tx_traverse_find+0x170>
c0d05a34:	9507      	str	r5, [sp, #28]
c0d05a36:	2713      	movs	r7, #19
c0d05a38:	2e01      	cmp	r6, #1
c0d05a3a:	d100      	bne.n	c0d05a3e <tx_traverse_find+0x5a>
c0d05a3c:	e08d      	b.n	c0d05b5a <tx_traverse_find+0x176>
c0d05a3e:	2e02      	cmp	r6, #2
c0d05a40:	d000      	beq.n	c0d05a44 <tx_traverse_find+0x60>
c0d05a42:	e087      	b.n	c0d05b54 <tx_traverse_find+0x170>
c0d05a44:	a80e      	add	r0, sp, #56	; 0x38
c0d05a46:	8800      	ldrh	r0, [r0, #0]
c0d05a48:	2800      	cmp	r0, #0
c0d05a4a:	d100      	bne.n	c0d05a4e <tx_traverse_find+0x6a>
c0d05a4c:	e082      	b.n	c0d05b54 <tx_traverse_find+0x170>
c0d05a4e:	9700      	str	r7, [sp, #0]
c0d05a50:	2600      	movs	r6, #0
c0d05a52:	b2b2      	uxth	r2, r6
c0d05a54:	ab0b      	add	r3, sp, #44	; 0x2c
c0d05a56:	9807      	ldr	r0, [sp, #28]
c0d05a58:	9909      	ldr	r1, [sp, #36]	; 0x24
c0d05a5a:	f7fc fc26 	bl	c0d022aa <array_get_nth_element>
c0d05a5e:	4607      	mov	r7, r0
c0d05a60:	f002 fa34 	bl	c0d07ecc <check_app_canary>
c0d05a64:	2f00      	cmp	r7, #0
c0d05a66:	d175      	bne.n	c0d05b54 <tx_traverse_find+0x170>
c0d05a68:	f002 fa30 	bl	c0d07ecc <check_app_canary>
c0d05a6c:	4f8e      	ldr	r7, [pc, #568]	; (c0d05ca8 <tx_traverse_find+0x2c4>)
c0d05a6e:	5de0      	ldrb	r0, [r4, r7]
c0d05a70:	1e40      	subs	r0, r0, #1
c0d05a72:	55e0      	strb	r0, [r4, r7]
c0d05a74:	a80b      	add	r0, sp, #44	; 0x2c
c0d05a76:	8800      	ldrh	r0, [r0, #0]
c0d05a78:	990a      	ldr	r1, [sp, #40]	; 0x28
c0d05a7a:	f7ff ffb3 	bl	c0d059e4 <tx_traverse_find>
c0d05a7e:	4605      	mov	r5, r0
c0d05a80:	5de0      	ldrb	r0, [r4, r7]
c0d05a82:	1c40      	adds	r0, r0, #1
c0d05a84:	55e0      	strb	r0, [r4, r7]
c0d05a86:	f002 fa21 	bl	c0d07ecc <check_app_canary>
c0d05a8a:	2d00      	cmp	r5, #0
c0d05a8c:	d059      	beq.n	c0d05b42 <tx_traverse_find+0x15e>
c0d05a8e:	1c76      	adds	r6, r6, #1
c0d05a90:	a80e      	add	r0, sp, #56	; 0x38
c0d05a92:	8800      	ldrh	r0, [r0, #0]
c0d05a94:	b2b1      	uxth	r1, r6
c0d05a96:	4281      	cmp	r1, r0
c0d05a98:	d3db      	bcc.n	c0d05a52 <tx_traverse_find+0x6e>
c0d05a9a:	e100      	b.n	c0d05c9e <tx_traverse_find+0x2ba>
c0d05a9c:	2701      	movs	r7, #1
c0d05a9e:	e059      	b.n	c0d05b54 <tx_traverse_find+0x170>
c0d05aa0:	2049      	movs	r0, #73	; 0x49
c0d05aa2:	00c0      	lsls	r0, r0, #3
c0d05aa4:	5c25      	ldrb	r5, [r4, r0]
c0d05aa6:	2003      	movs	r0, #3
c0d05aa8:	4028      	ands	r0, r5
c0d05aaa:	2700      	movs	r7, #0
c0d05aac:	2803      	cmp	r0, #3
c0d05aae:	463e      	mov	r6, r7
c0d05ab0:	d112      	bne.n	c0d05ad8 <tx_traverse_find+0xf4>
c0d05ab2:	2099      	movs	r0, #153	; 0x99
c0d05ab4:	0080      	lsls	r0, r0, #2
c0d05ab6:	5820      	ldr	r0, [r4, r0]
c0d05ab8:	497d      	ldr	r1, [pc, #500]	; (c0d05cb0 <tx_traverse_find+0x2cc>)
c0d05aba:	4479      	add	r1, pc
c0d05abc:	f002 fbfc 	bl	c0d082b8 <strcmp>
c0d05ac0:	2800      	cmp	r0, #0
c0d05ac2:	463e      	mov	r6, r7
c0d05ac4:	d108      	bne.n	c0d05ad8 <tx_traverse_find+0xf4>
c0d05ac6:	2097      	movs	r0, #151	; 0x97
c0d05ac8:	0080      	lsls	r0, r0, #2
c0d05aca:	5a20      	ldrh	r0, [r4, r0]
c0d05acc:	2193      	movs	r1, #147	; 0x93
c0d05ace:	0089      	lsls	r1, r1, #2
c0d05ad0:	5861      	ldr	r1, [r4, r1]
c0d05ad2:	1a0e      	subs	r6, r1, r0
c0d05ad4:	1e70      	subs	r0, r6, #1
c0d05ad6:	4186      	sbcs	r6, r0
c0d05ad8:	2005      	movs	r0, #5
c0d05ada:	4028      	ands	r0, r5
c0d05adc:	2805      	cmp	r0, #5
c0d05ade:	d115      	bne.n	c0d05b0c <tx_traverse_find+0x128>
c0d05ae0:	2097      	movs	r0, #151	; 0x97
c0d05ae2:	0080      	lsls	r0, r0, #2
c0d05ae4:	5a20      	ldrh	r0, [r4, r0]
c0d05ae6:	2195      	movs	r1, #149	; 0x95
c0d05ae8:	0089      	lsls	r1, r1, #2
c0d05aea:	5861      	ldr	r1, [r4, r1]
c0d05aec:	4041      	eors	r1, r0
c0d05aee:	2008      	movs	r0, #8
c0d05af0:	4005      	ands	r5, r0
c0d05af2:	430d      	orrs	r5, r1
c0d05af4:	1e68      	subs	r0, r5, #1
c0d05af6:	4185      	sbcs	r5, r0
c0d05af8:	2099      	movs	r0, #153	; 0x99
c0d05afa:	0080      	lsls	r0, r0, #2
c0d05afc:	5820      	ldr	r0, [r4, r0]
c0d05afe:	496d      	ldr	r1, [pc, #436]	; (c0d05cb4 <tx_traverse_find+0x2d0>)
c0d05b00:	4479      	add	r1, pc
c0d05b02:	f002 fbd9 	bl	c0d082b8 <strcmp>
c0d05b06:	4247      	negs	r7, r0
c0d05b08:	4147      	adcs	r7, r0
c0d05b0a:	402f      	ands	r7, r5
c0d05b0c:	433e      	orrs	r6, r7
c0d05b0e:	f002 f9dd 	bl	c0d07ecc <check_app_canary>
c0d05b12:	2e00      	cmp	r6, #0
c0d05b14:	d008      	beq.n	c0d05b28 <tx_traverse_find+0x144>
c0d05b16:	2013      	movs	r0, #19
c0d05b18:	0140      	lsls	r0, r0, #5
c0d05b1a:	5a21      	ldrh	r1, [r4, r0]
c0d05b1c:	1c49      	adds	r1, r1, #1
c0d05b1e:	5221      	strh	r1, [r4, r0]
c0d05b20:	2097      	movs	r0, #151	; 0x97
c0d05b22:	0080      	lsls	r0, r0, #2
c0d05b24:	5a20      	ldrh	r0, [r4, r0]
c0d05b26:	e00e      	b.n	c0d05b46 <tx_traverse_find+0x162>
c0d05b28:	2097      	movs	r0, #151	; 0x97
c0d05b2a:	0080      	lsls	r0, r0, #2
c0d05b2c:	5a20      	ldrh	r0, [r4, r0]
c0d05b2e:	2113      	movs	r1, #19
c0d05b30:	0149      	lsls	r1, r1, #5
c0d05b32:	5e61      	ldrsh	r1, [r4, r1]
c0d05b34:	4288      	cmp	r0, r1
c0d05b36:	d106      	bne.n	c0d05b46 <tx_traverse_find+0x162>
c0d05b38:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d05b3a:	9909      	ldr	r1, [sp, #36]	; 0x24
c0d05b3c:	8001      	strh	r1, [r0, #0]
c0d05b3e:	f002 f9c5 	bl	c0d07ecc <check_app_canary>
c0d05b42:	2700      	movs	r7, #0
c0d05b44:	e006      	b.n	c0d05b54 <tx_traverse_find+0x170>
c0d05b46:	2197      	movs	r1, #151	; 0x97
c0d05b48:	0089      	lsls	r1, r1, #2
c0d05b4a:	1c40      	adds	r0, r0, #1
c0d05b4c:	5260      	strh	r0, [r4, r1]
c0d05b4e:	f002 f9bd 	bl	c0d07ecc <check_app_canary>
c0d05b52:	2713      	movs	r7, #19
c0d05b54:	4638      	mov	r0, r7
c0d05b56:	b00f      	add	sp, #60	; 0x3c
c0d05b58:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d05b5a:	2099      	movs	r0, #153	; 0x99
c0d05b5c:	0080      	lsls	r0, r0, #2
c0d05b5e:	9008      	str	r0, [sp, #32]
c0d05b60:	5820      	ldr	r0, [r4, r0]
c0d05b62:	f002 fbed 	bl	c0d08340 <strlen>
c0d05b66:	9001      	str	r0, [sp, #4]
c0d05b68:	a80e      	add	r0, sp, #56	; 0x38
c0d05b6a:	8800      	ldrh	r0, [r0, #0]
c0d05b6c:	2800      	cmp	r0, #0
c0d05b6e:	d0f1      	beq.n	c0d05b54 <tx_traverse_find+0x170>
c0d05b70:	9700      	str	r7, [sp, #0]
c0d05b72:	2200      	movs	r2, #0
c0d05b74:	43d0      	mvns	r0, r2
c0d05b76:	9003      	str	r0, [sp, #12]
c0d05b78:	9204      	str	r2, [sp, #16]
c0d05b7a:	b292      	uxth	r2, r2
c0d05b7c:	ab0d      	add	r3, sp, #52	; 0x34
c0d05b7e:	9d07      	ldr	r5, [sp, #28]
c0d05b80:	4628      	mov	r0, r5
c0d05b82:	9e09      	ldr	r6, [sp, #36]	; 0x24
c0d05b84:	4631      	mov	r1, r6
c0d05b86:	9205      	str	r2, [sp, #20]
c0d05b88:	f7fc fbfa 	bl	c0d02380 <object_get_nth_key>
c0d05b8c:	4607      	mov	r7, r0
c0d05b8e:	f002 f99d 	bl	c0d07ecc <check_app_canary>
c0d05b92:	2f00      	cmp	r7, #0
c0d05b94:	d1de      	bne.n	c0d05b54 <tx_traverse_find+0x170>
c0d05b96:	ab0c      	add	r3, sp, #48	; 0x30
c0d05b98:	4628      	mov	r0, r5
c0d05b9a:	4631      	mov	r1, r6
c0d05b9c:	9a05      	ldr	r2, [sp, #20]
c0d05b9e:	f7fc fc36 	bl	c0d0240e <object_get_nth_value>
c0d05ba2:	4607      	mov	r7, r0
c0d05ba4:	f002 f992 	bl	c0d07ecc <check_app_canary>
c0d05ba8:	2f00      	cmp	r7, #0
c0d05baa:	d1d3      	bne.n	c0d05b54 <tx_traverse_find+0x170>
c0d05bac:	9808      	ldr	r0, [sp, #32]
c0d05bae:	5827      	ldr	r7, [r4, r0]
c0d05bb0:	7838      	ldrb	r0, [r7, #0]
c0d05bb2:	a90d      	add	r1, sp, #52	; 0x34
c0d05bb4:	880d      	ldrh	r5, [r1, #0]
c0d05bb6:	2800      	cmp	r0, #0
c0d05bb8:	d01e      	beq.n	c0d05bf8 <tx_traverse_find+0x214>
c0d05bba:	9803      	ldr	r0, [sp, #12]
c0d05bbc:	1838      	adds	r0, r7, r0
c0d05bbe:	214d      	movs	r1, #77	; 0x4d
c0d05bc0:	00c9      	lsls	r1, r1, #3
c0d05bc2:	4a38      	ldr	r2, [pc, #224]	; (c0d05ca4 <tx_traverse_find+0x2c0>)
c0d05bc4:	9505      	str	r5, [sp, #20]
c0d05bc6:	5a55      	ldrh	r5, [r2, r1]
c0d05bc8:	2100      	movs	r1, #0
c0d05bca:	9102      	str	r1, [sp, #8]
c0d05bcc:	5541      	strb	r1, [r0, r5]
c0d05bce:	426c      	negs	r4, r5
c0d05bd0:	4638      	mov	r0, r7
c0d05bd2:	f002 fbb5 	bl	c0d08340 <strlen>
c0d05bd6:	43c1      	mvns	r1, r0
c0d05bd8:	1b0e      	subs	r6, r1, r4
c0d05bda:	1e72      	subs	r2, r6, #1
c0d05bdc:	4196      	sbcs	r6, r2
c0d05bde:	42e9      	cmn	r1, r5
c0d05be0:	4c30      	ldr	r4, [pc, #192]	; (c0d05ca4 <tx_traverse_find+0x2c0>)
c0d05be2:	9d05      	ldr	r5, [sp, #20]
c0d05be4:	d008      	beq.n	c0d05bf8 <tx_traverse_find+0x214>
c0d05be6:	183f      	adds	r7, r7, r0
c0d05be8:	4933      	ldr	r1, [pc, #204]	; (c0d05cb8 <tx_traverse_find+0x2d4>)
c0d05bea:	4479      	add	r1, pc
c0d05bec:	4638      	mov	r0, r7
c0d05bee:	4632      	mov	r2, r6
c0d05bf0:	f002 fa14 	bl	c0d0801c <__aeabi_memcpy>
c0d05bf4:	9802      	ldr	r0, [sp, #8]
c0d05bf6:	55b8      	strb	r0, [r7, r6]
c0d05bf8:	00e8      	lsls	r0, r5, #3
c0d05bfa:	9906      	ldr	r1, [sp, #24]
c0d05bfc:	1808      	adds	r0, r1, r0
c0d05bfe:	2110      	movs	r1, #16
c0d05c00:	5e41      	ldrsh	r1, [r0, r1]
c0d05c02:	220e      	movs	r2, #14
c0d05c04:	5e82      	ldrsh	r2, [r0, r2]
c0d05c06:	204d      	movs	r0, #77	; 0x4d
c0d05c08:	00c0      	lsls	r0, r0, #3
c0d05c0a:	5a26      	ldrh	r6, [r4, r0]
c0d05c0c:	9808      	ldr	r0, [sp, #32]
c0d05c0e:	5825      	ldr	r5, [r4, r0]
c0d05c10:	9803      	ldr	r0, [sp, #12]
c0d05c12:	1828      	adds	r0, r5, r0
c0d05c14:	6863      	ldr	r3, [r4, #4]
c0d05c16:	9302      	str	r3, [sp, #8]
c0d05c18:	2700      	movs	r7, #0
c0d05c1a:	5587      	strb	r7, [r0, r6]
c0d05c1c:	9205      	str	r2, [sp, #20]
c0d05c1e:	1a8c      	subs	r4, r1, r2
c0d05c20:	4628      	mov	r0, r5
c0d05c22:	f002 fb8d 	bl	c0d08340 <strlen>
c0d05c26:	43c1      	mvns	r1, r0
c0d05c28:	198e      	adds	r6, r1, r6
c0d05c2a:	42a6      	cmp	r6, r4
c0d05c2c:	d300      	bcc.n	c0d05c30 <tx_traverse_find+0x24c>
c0d05c2e:	4626      	mov	r6, r4
c0d05c30:	2e00      	cmp	r6, #0
c0d05c32:	d008      	beq.n	c0d05c46 <tx_traverse_find+0x262>
c0d05c34:	182c      	adds	r4, r5, r0
c0d05c36:	9805      	ldr	r0, [sp, #20]
c0d05c38:	9902      	ldr	r1, [sp, #8]
c0d05c3a:	1809      	adds	r1, r1, r0
c0d05c3c:	4620      	mov	r0, r4
c0d05c3e:	4632      	mov	r2, r6
c0d05c40:	f002 f9f0 	bl	c0d08024 <__aeabi_memmove>
c0d05c44:	55a7      	strb	r7, [r4, r6]
c0d05c46:	f002 f941 	bl	c0d07ecc <check_app_canary>
c0d05c4a:	4c16      	ldr	r4, [pc, #88]	; (c0d05ca4 <tx_traverse_find+0x2c0>)
c0d05c4c:	4917      	ldr	r1, [pc, #92]	; (c0d05cac <tx_traverse_find+0x2c8>)
c0d05c4e:	5c60      	ldrb	r0, [r4, r1]
c0d05c50:	1e40      	subs	r0, r0, #1
c0d05c52:	5460      	strb	r0, [r4, r1]
c0d05c54:	4e14      	ldr	r6, [pc, #80]	; (c0d05ca8 <tx_traverse_find+0x2c4>)
c0d05c56:	5da0      	ldrb	r0, [r4, r6]
c0d05c58:	1e40      	subs	r0, r0, #1
c0d05c5a:	55a0      	strb	r0, [r4, r6]
c0d05c5c:	a80c      	add	r0, sp, #48	; 0x30
c0d05c5e:	8800      	ldrh	r0, [r0, #0]
c0d05c60:	990a      	ldr	r1, [sp, #40]	; 0x28
c0d05c62:	f7ff febf 	bl	c0d059e4 <tx_traverse_find>
c0d05c66:	4605      	mov	r5, r0
c0d05c68:	f002 f930 	bl	c0d07ecc <check_app_canary>
c0d05c6c:	490f      	ldr	r1, [pc, #60]	; (c0d05cac <tx_traverse_find+0x2c8>)
c0d05c6e:	5c60      	ldrb	r0, [r4, r1]
c0d05c70:	1c40      	adds	r0, r0, #1
c0d05c72:	5460      	strb	r0, [r4, r1]
c0d05c74:	5da0      	ldrb	r0, [r4, r6]
c0d05c76:	1c40      	adds	r0, r0, #1
c0d05c78:	55a0      	strb	r0, [r4, r6]
c0d05c7a:	2d00      	cmp	r5, #0
c0d05c7c:	d100      	bne.n	c0d05c80 <tx_traverse_find+0x29c>
c0d05c7e:	e769      	b.n	c0d05b54 <tx_traverse_find+0x170>
c0d05c80:	9808      	ldr	r0, [sp, #32]
c0d05c82:	5820      	ldr	r0, [r4, r0]
c0d05c84:	2100      	movs	r1, #0
c0d05c86:	9a01      	ldr	r2, [sp, #4]
c0d05c88:	5481      	strb	r1, [r0, r2]
c0d05c8a:	f002 f91f 	bl	c0d07ecc <check_app_canary>
c0d05c8e:	9a04      	ldr	r2, [sp, #16]
c0d05c90:	1c52      	adds	r2, r2, #1
c0d05c92:	b290      	uxth	r0, r2
c0d05c94:	a90e      	add	r1, sp, #56	; 0x38
c0d05c96:	8809      	ldrh	r1, [r1, #0]
c0d05c98:	4288      	cmp	r0, r1
c0d05c9a:	d200      	bcs.n	c0d05c9e <tx_traverse_find+0x2ba>
c0d05c9c:	e76c      	b.n	c0d05b78 <tx_traverse_find+0x194>
c0d05c9e:	9f00      	ldr	r7, [sp, #0]
c0d05ca0:	e758      	b.n	c0d05b54 <tx_traverse_find+0x170>
c0d05ca2:	46c0      	nop			; (mov r8, r8)
c0d05ca4:	2000048c 	.word	0x2000048c
c0d05ca8:	0000025f 	.word	0x0000025f
c0d05cac:	0000025e 	.word	0x0000025e
c0d05cb0:	00003367 	.word	0x00003367
c0d05cb4:	0000332b 	.word	0x0000332b
c0d05cb8:	00002da0 	.word	0x00002da0

c0d05cbc <contains_whitespace>:
c0d05cbc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d05cbe:	b08a      	sub	sp, #40	; 0x28
c0d05cc0:	4601      	mov	r1, r0
c0d05cc2:	200c      	movs	r0, #12
c0d05cc4:	9005      	str	r0, [sp, #20]
c0d05cc6:	5e08      	ldrsh	r0, [r1, r0]
c0d05cc8:	9002      	str	r0, [sp, #8]
c0d05cca:	9106      	str	r1, [sp, #24]
c0d05ccc:	6848      	ldr	r0, [r1, #4]
c0d05cce:	2600      	movs	r6, #0
c0d05cd0:	9004      	str	r0, [sp, #16]
c0d05cd2:	2802      	cmp	r0, #2
c0d05cd4:	4b32      	ldr	r3, [pc, #200]	; (c0d05da0 <contains_whitespace+0xe4>)
c0d05cd6:	447b      	add	r3, pc
c0d05cd8:	4634      	mov	r4, r6
c0d05cda:	d33e      	bcc.n	c0d05d5a <contains_whitespace+0x9e>
c0d05cdc:	2047      	movs	r0, #71	; 0x47
c0d05cde:	00c0      	lsls	r0, r0, #3
c0d05ce0:	9906      	ldr	r1, [sp, #24]
c0d05ce2:	1808      	adds	r0, r1, r0
c0d05ce4:	9001      	str	r0, [sp, #4]
c0d05ce6:	2400      	movs	r4, #0
c0d05ce8:	2201      	movs	r2, #1
c0d05cea:	9400      	str	r4, [sp, #0]
c0d05cec:	9603      	str	r6, [sp, #12]
c0d05cee:	00d0      	lsls	r0, r2, #3
c0d05cf0:	9906      	ldr	r1, [sp, #24]
c0d05cf2:	1809      	adds	r1, r1, r0
c0d05cf4:	7a08      	ldrb	r0, [r1, #8]
c0d05cf6:	2800      	cmp	r0, #0
c0d05cf8:	d04e      	beq.n	c0d05d98 <contains_whitespace+0xdc>
c0d05cfa:	9208      	str	r2, [sp, #32]
c0d05cfc:	200a      	movs	r0, #10
c0d05cfe:	9107      	str	r1, [sp, #28]
c0d05d00:	5e0d      	ldrsh	r5, [r1, r0]
c0d05d02:	42ac      	cmp	r4, r5
c0d05d04:	da1f      	bge.n	c0d05d46 <contains_whitespace+0x8a>
c0d05d06:	9801      	ldr	r0, [sp, #4]
c0d05d08:	6800      	ldr	r0, [r0, #0]
c0d05d0a:	9009      	str	r0, [sp, #36]	; 0x24
c0d05d0c:	5d00      	ldrb	r0, [r0, r4]
c0d05d0e:	2820      	cmp	r0, #32
c0d05d10:	d040      	beq.n	c0d05d94 <contains_whitespace+0xd8>
c0d05d12:	2601      	movs	r6, #1
c0d05d14:	2200      	movs	r2, #0
c0d05d16:	4617      	mov	r7, r2
c0d05d18:	2a05      	cmp	r2, #5
c0d05d1a:	d004      	beq.n	c0d05d26 <contains_whitespace+0x6a>
c0d05d1c:	1c7a      	adds	r2, r7, #1
c0d05d1e:	19d9      	adds	r1, r3, r7
c0d05d20:	7849      	ldrb	r1, [r1, #1]
c0d05d22:	4281      	cmp	r1, r0
c0d05d24:	d1f7      	bne.n	c0d05d16 <contains_whitespace+0x5a>
c0d05d26:	2f04      	cmp	r7, #4
c0d05d28:	d90b      	bls.n	c0d05d42 <contains_whitespace+0x86>
c0d05d2a:	1c64      	adds	r4, r4, #1
c0d05d2c:	42ac      	cmp	r4, r5
c0d05d2e:	db01      	blt.n	c0d05d34 <contains_whitespace+0x78>
c0d05d30:	2600      	movs	r6, #0
c0d05d32:	e000      	b.n	c0d05d36 <contains_whitespace+0x7a>
c0d05d34:	2601      	movs	r6, #1
c0d05d36:	42ac      	cmp	r4, r5
c0d05d38:	d005      	beq.n	c0d05d46 <contains_whitespace+0x8a>
c0d05d3a:	9809      	ldr	r0, [sp, #36]	; 0x24
c0d05d3c:	5d00      	ldrb	r0, [r0, r4]
c0d05d3e:	2820      	cmp	r0, #32
c0d05d40:	d1e8      	bne.n	c0d05d14 <contains_whitespace+0x58>
c0d05d42:	07f0      	lsls	r0, r6, #31
c0d05d44:	d126      	bne.n	c0d05d94 <contains_whitespace+0xd8>
c0d05d46:	9805      	ldr	r0, [sp, #20]
c0d05d48:	9907      	ldr	r1, [sp, #28]
c0d05d4a:	5e08      	ldrsh	r0, [r1, r0]
c0d05d4c:	1c44      	adds	r4, r0, #1
c0d05d4e:	9a08      	ldr	r2, [sp, #32]
c0d05d50:	1c52      	adds	r2, r2, #1
c0d05d52:	9804      	ldr	r0, [sp, #16]
c0d05d54:	4282      	cmp	r2, r0
c0d05d56:	9e03      	ldr	r6, [sp, #12]
c0d05d58:	d3c9      	bcc.n	c0d05cee <contains_whitespace+0x32>
c0d05d5a:	9802      	ldr	r0, [sp, #8]
c0d05d5c:	4284      	cmp	r4, r0
c0d05d5e:	da1c      	bge.n	c0d05d9a <contains_whitespace+0xde>
c0d05d60:	2047      	movs	r0, #71	; 0x47
c0d05d62:	00c0      	lsls	r0, r0, #3
c0d05d64:	9906      	ldr	r1, [sp, #24]
c0d05d66:	5809      	ldr	r1, [r1, r0]
c0d05d68:	5d0e      	ldrb	r6, [r1, r4]
c0d05d6a:	2e00      	cmp	r6, #0
c0d05d6c:	d015      	beq.n	c0d05d9a <contains_whitespace+0xde>
c0d05d6e:	2e20      	cmp	r6, #32
c0d05d70:	d010      	beq.n	c0d05d94 <contains_whitespace+0xd8>
c0d05d72:	2200      	movs	r2, #0
c0d05d74:	4610      	mov	r0, r2
c0d05d76:	2a05      	cmp	r2, #5
c0d05d78:	d004      	beq.n	c0d05d84 <contains_whitespace+0xc8>
c0d05d7a:	1c42      	adds	r2, r0, #1
c0d05d7c:	181d      	adds	r5, r3, r0
c0d05d7e:	786d      	ldrb	r5, [r5, #1]
c0d05d80:	42b5      	cmp	r5, r6
c0d05d82:	d1f7      	bne.n	c0d05d74 <contains_whitespace+0xb8>
c0d05d84:	2805      	cmp	r0, #5
c0d05d86:	d305      	bcc.n	c0d05d94 <contains_whitespace+0xd8>
c0d05d88:	1c64      	adds	r4, r4, #1
c0d05d8a:	9802      	ldr	r0, [sp, #8]
c0d05d8c:	4284      	cmp	r4, r0
c0d05d8e:	d1eb      	bne.n	c0d05d68 <contains_whitespace+0xac>
c0d05d90:	2600      	movs	r6, #0
c0d05d92:	e002      	b.n	c0d05d9a <contains_whitespace+0xde>
c0d05d94:	2601      	movs	r6, #1
c0d05d96:	e000      	b.n	c0d05d9a <contains_whitespace+0xde>
c0d05d98:	9e00      	ldr	r6, [sp, #0]
c0d05d9a:	b270      	sxtb	r0, r6
c0d05d9c:	b00a      	add	sp, #40	; 0x28
c0d05d9e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d05da0:	0000448e 	.word	0x0000448e

c0d05da4 <is_sorted>:
c0d05da4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d05da6:	b0ff      	sub	sp, #508	; 0x1fc
c0d05da8:	b086      	sub	sp, #24
c0d05daa:	4614      	mov	r4, r2
c0d05dac:	9104      	str	r1, [sp, #16]
c0d05dae:	4606      	mov	r6, r0
c0d05db0:	2001      	movs	r0, #1
c0d05db2:	9003      	str	r0, [sp, #12]
c0d05db4:	0207      	lsls	r7, r0, #8
c0d05db6:	a845      	add	r0, sp, #276	; 0x114
c0d05db8:	4639      	mov	r1, r7
c0d05dba:	f002 f93f 	bl	c0d0803c <explicit_bzero>
c0d05dbe:	a805      	add	r0, sp, #20
c0d05dc0:	4639      	mov	r1, r7
c0d05dc2:	f002 f93b 	bl	c0d0803c <explicit_bzero>
c0d05dc6:	00f0      	lsls	r0, r6, #3
c0d05dc8:	4622      	mov	r2, r4
c0d05dca:	1821      	adds	r1, r4, r0
c0d05dcc:	250a      	movs	r5, #10
c0d05dce:	5f48      	ldrsh	r0, [r1, r5]
c0d05dd0:	240c      	movs	r4, #12
c0d05dd2:	5f09      	ldrsh	r1, [r1, r4]
c0d05dd4:	1a0e      	subs	r6, r1, r0
c0d05dd6:	2eff      	cmp	r6, #255	; 0xff
c0d05dd8:	d901      	bls.n	c0d05dde <is_sorted+0x3a>
c0d05dda:	2000      	movs	r0, #0
c0d05ddc:	e026      	b.n	c0d05e2c <is_sorted+0x88>
c0d05dde:	2147      	movs	r1, #71	; 0x47
c0d05de0:	00c9      	lsls	r1, r1, #3
c0d05de2:	9202      	str	r2, [sp, #8]
c0d05de4:	5851      	ldr	r1, [r2, r1]
c0d05de6:	9101      	str	r1, [sp, #4]
c0d05de8:	1809      	adds	r1, r1, r0
c0d05dea:	af45      	add	r7, sp, #276	; 0x114
c0d05dec:	4638      	mov	r0, r7
c0d05dee:	4632      	mov	r2, r6
c0d05df0:	f002 fb0e 	bl	c0d08410 <strncpy>
c0d05df4:	2000      	movs	r0, #0
c0d05df6:	55b8      	strb	r0, [r7, r6]
c0d05df8:	9904      	ldr	r1, [sp, #16]
c0d05dfa:	00c9      	lsls	r1, r1, #3
c0d05dfc:	9a02      	ldr	r2, [sp, #8]
c0d05dfe:	1852      	adds	r2, r2, r1
c0d05e00:	5f51      	ldrsh	r1, [r2, r5]
c0d05e02:	5f12      	ldrsh	r2, [r2, r4]
c0d05e04:	1a54      	subs	r4, r2, r1
c0d05e06:	2cff      	cmp	r4, #255	; 0xff
c0d05e08:	d810      	bhi.n	c0d05e2c <is_sorted+0x88>
c0d05e0a:	9801      	ldr	r0, [sp, #4]
c0d05e0c:	1841      	adds	r1, r0, r1
c0d05e0e:	ad05      	add	r5, sp, #20
c0d05e10:	4628      	mov	r0, r5
c0d05e12:	4622      	mov	r2, r4
c0d05e14:	f002 fafc 	bl	c0d08410 <strncpy>
c0d05e18:	2600      	movs	r6, #0
c0d05e1a:	552e      	strb	r6, [r5, r4]
c0d05e1c:	a845      	add	r0, sp, #276	; 0x114
c0d05e1e:	4629      	mov	r1, r5
c0d05e20:	f002 fa4a 	bl	c0d082b8 <strcmp>
c0d05e24:	2801      	cmp	r0, #1
c0d05e26:	9803      	ldr	r0, [sp, #12]
c0d05e28:	db00      	blt.n	c0d05e2c <is_sorted+0x88>
c0d05e2a:	4630      	mov	r0, r6
c0d05e2c:	b07f      	add	sp, #508	; 0x1fc
c0d05e2e:	b006      	add	sp, #24
c0d05e30:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d05e32 <dictionaries_sorted>:
c0d05e32:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d05e34:	b085      	sub	sp, #20
c0d05e36:	4605      	mov	r5, r0
c0d05e38:	6842      	ldr	r2, [r0, #4]
c0d05e3a:	2001      	movs	r0, #1
c0d05e3c:	2a00      	cmp	r2, #0
c0d05e3e:	d03f      	beq.n	c0d05ec0 <dictionaries_sorted+0x8e>
c0d05e40:	9001      	str	r0, [sp, #4]
c0d05e42:	2700      	movs	r7, #0
c0d05e44:	00f9      	lsls	r1, r7, #3
c0d05e46:	1869      	adds	r1, r5, r1
c0d05e48:	7a09      	ldrb	r1, [r1, #8]
c0d05e4a:	2901      	cmp	r1, #1
c0d05e4c:	d132      	bne.n	c0d05eb4 <dictionaries_sorted+0x82>
c0d05e4e:	b2be      	uxth	r6, r7
c0d05e50:	aa04      	add	r2, sp, #16
c0d05e52:	4628      	mov	r0, r5
c0d05e54:	4631      	mov	r1, r6
c0d05e56:	f7fc fa5c 	bl	c0d02312 <object_get_element_count>
c0d05e5a:	2800      	cmp	r0, #0
c0d05e5c:	d12f      	bne.n	c0d05ebe <dictionaries_sorted+0x8c>
c0d05e5e:	a804      	add	r0, sp, #16
c0d05e60:	8800      	ldrh	r0, [r0, #0]
c0d05e62:	2802      	cmp	r0, #2
c0d05e64:	d325      	bcc.n	c0d05eb2 <dictionaries_sorted+0x80>
c0d05e66:	2200      	movs	r2, #0
c0d05e68:	ab03      	add	r3, sp, #12
c0d05e6a:	4628      	mov	r0, r5
c0d05e6c:	4631      	mov	r1, r6
c0d05e6e:	f7fc fa87 	bl	c0d02380 <object_get_nth_key>
c0d05e72:	2800      	cmp	r0, #0
c0d05e74:	d123      	bne.n	c0d05ebe <dictionaries_sorted+0x8c>
c0d05e76:	a804      	add	r0, sp, #16
c0d05e78:	8800      	ldrh	r0, [r0, #0]
c0d05e7a:	2802      	cmp	r0, #2
c0d05e7c:	d319      	bcc.n	c0d05eb2 <dictionaries_sorted+0x80>
c0d05e7e:	2401      	movs	r4, #1
c0d05e80:	b2a2      	uxth	r2, r4
c0d05e82:	ab02      	add	r3, sp, #8
c0d05e84:	4628      	mov	r0, r5
c0d05e86:	4631      	mov	r1, r6
c0d05e88:	f7fc fa7a 	bl	c0d02380 <object_get_nth_key>
c0d05e8c:	2800      	cmp	r0, #0
c0d05e8e:	d116      	bne.n	c0d05ebe <dictionaries_sorted+0x8c>
c0d05e90:	a802      	add	r0, sp, #8
c0d05e92:	8801      	ldrh	r1, [r0, #0]
c0d05e94:	a803      	add	r0, sp, #12
c0d05e96:	8800      	ldrh	r0, [r0, #0]
c0d05e98:	462a      	mov	r2, r5
c0d05e9a:	f7ff ff83 	bl	c0d05da4 <is_sorted>
c0d05e9e:	2800      	cmp	r0, #0
c0d05ea0:	d00d      	beq.n	c0d05ebe <dictionaries_sorted+0x8c>
c0d05ea2:	a803      	add	r0, sp, #12
c0d05ea4:	9902      	ldr	r1, [sp, #8]
c0d05ea6:	8001      	strh	r1, [r0, #0]
c0d05ea8:	1c64      	adds	r4, r4, #1
c0d05eaa:	a804      	add	r0, sp, #16
c0d05eac:	8800      	ldrh	r0, [r0, #0]
c0d05eae:	4284      	cmp	r4, r0
c0d05eb0:	d3e6      	bcc.n	c0d05e80 <dictionaries_sorted+0x4e>
c0d05eb2:	686a      	ldr	r2, [r5, #4]
c0d05eb4:	1c7f      	adds	r7, r7, #1
c0d05eb6:	4297      	cmp	r7, r2
c0d05eb8:	d3c4      	bcc.n	c0d05e44 <dictionaries_sorted+0x12>
c0d05eba:	9801      	ldr	r0, [sp, #4]
c0d05ebc:	e000      	b.n	c0d05ec0 <dictionaries_sorted+0x8e>
c0d05ebe:	2000      	movs	r0, #0
c0d05ec0:	b005      	add	sp, #20
c0d05ec2:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d05ec4 <tx_validate>:
c0d05ec4:	b510      	push	{r4, lr}
c0d05ec6:	b082      	sub	sp, #8
c0d05ec8:	4604      	mov	r4, r0
c0d05eca:	f7ff fef7 	bl	c0d05cbc <contains_whitespace>
c0d05ece:	2801      	cmp	r0, #1
c0d05ed0:	d101      	bne.n	c0d05ed6 <tx_validate+0x12>
c0d05ed2:	2018      	movs	r0, #24
c0d05ed4:	e010      	b.n	c0d05ef8 <tx_validate+0x34>
c0d05ed6:	4620      	mov	r0, r4
c0d05ed8:	f7ff ffab 	bl	c0d05e32 <dictionaries_sorted>
c0d05edc:	2801      	cmp	r0, #1
c0d05ede:	d10a      	bne.n	c0d05ef6 <tx_validate+0x32>
c0d05ee0:	2100      	movs	r1, #0
c0d05ee2:	4a22      	ldr	r2, [pc, #136]	; (c0d05f6c <tx_validate+0xa8>)
c0d05ee4:	447a      	add	r2, pc
c0d05ee6:	ab01      	add	r3, sp, #4
c0d05ee8:	4620      	mov	r0, r4
c0d05eea:	f7fc faa5 	bl	c0d02438 <object_get_value>
c0d05eee:	2800      	cmp	r0, #0
c0d05ef0:	d004      	beq.n	c0d05efc <tx_validate+0x38>
c0d05ef2:	201a      	movs	r0, #26
c0d05ef4:	e000      	b.n	c0d05ef8 <tx_validate+0x34>
c0d05ef6:	2019      	movs	r0, #25
c0d05ef8:	b002      	add	sp, #8
c0d05efa:	bd10      	pop	{r4, pc}
c0d05efc:	2100      	movs	r1, #0
c0d05efe:	4a1c      	ldr	r2, [pc, #112]	; (c0d05f70 <tx_validate+0xac>)
c0d05f00:	447a      	add	r2, pc
c0d05f02:	ab01      	add	r3, sp, #4
c0d05f04:	4620      	mov	r0, r4
c0d05f06:	f7fc fa97 	bl	c0d02438 <object_get_value>
c0d05f0a:	2800      	cmp	r0, #0
c0d05f0c:	d001      	beq.n	c0d05f12 <tx_validate+0x4e>
c0d05f0e:	201b      	movs	r0, #27
c0d05f10:	e7f2      	b.n	c0d05ef8 <tx_validate+0x34>
c0d05f12:	2100      	movs	r1, #0
c0d05f14:	4a17      	ldr	r2, [pc, #92]	; (c0d05f74 <tx_validate+0xb0>)
c0d05f16:	447a      	add	r2, pc
c0d05f18:	ab01      	add	r3, sp, #4
c0d05f1a:	4620      	mov	r0, r4
c0d05f1c:	f7fc fa8c 	bl	c0d02438 <object_get_value>
c0d05f20:	2800      	cmp	r0, #0
c0d05f22:	d001      	beq.n	c0d05f28 <tx_validate+0x64>
c0d05f24:	201c      	movs	r0, #28
c0d05f26:	e7e7      	b.n	c0d05ef8 <tx_validate+0x34>
c0d05f28:	2100      	movs	r1, #0
c0d05f2a:	4a13      	ldr	r2, [pc, #76]	; (c0d05f78 <tx_validate+0xb4>)
c0d05f2c:	447a      	add	r2, pc
c0d05f2e:	ab01      	add	r3, sp, #4
c0d05f30:	4620      	mov	r0, r4
c0d05f32:	f7fc fa81 	bl	c0d02438 <object_get_value>
c0d05f36:	2800      	cmp	r0, #0
c0d05f38:	d001      	beq.n	c0d05f3e <tx_validate+0x7a>
c0d05f3a:	201d      	movs	r0, #29
c0d05f3c:	e7dc      	b.n	c0d05ef8 <tx_validate+0x34>
c0d05f3e:	2100      	movs	r1, #0
c0d05f40:	4a0e      	ldr	r2, [pc, #56]	; (c0d05f7c <tx_validate+0xb8>)
c0d05f42:	447a      	add	r2, pc
c0d05f44:	ab01      	add	r3, sp, #4
c0d05f46:	4620      	mov	r0, r4
c0d05f48:	f7fc fa76 	bl	c0d02438 <object_get_value>
c0d05f4c:	2800      	cmp	r0, #0
c0d05f4e:	d001      	beq.n	c0d05f54 <tx_validate+0x90>
c0d05f50:	201e      	movs	r0, #30
c0d05f52:	e7d1      	b.n	c0d05ef8 <tx_validate+0x34>
c0d05f54:	2100      	movs	r1, #0
c0d05f56:	4a0a      	ldr	r2, [pc, #40]	; (c0d05f80 <tx_validate+0xbc>)
c0d05f58:	447a      	add	r2, pc
c0d05f5a:	ab01      	add	r3, sp, #4
c0d05f5c:	4620      	mov	r0, r4
c0d05f5e:	f7fc fa6b 	bl	c0d02438 <object_get_value>
c0d05f62:	2800      	cmp	r0, #0
c0d05f64:	d0c8      	beq.n	c0d05ef8 <tx_validate+0x34>
c0d05f66:	201f      	movs	r0, #31
c0d05f68:	e7c6      	b.n	c0d05ef8 <tx_validate+0x34>
c0d05f6a:	46c0      	nop			; (mov r8, r8)
c0d05f6c:	00002db5 	.word	0x00002db5
c0d05f70:	00002daf 	.word	0x00002daf
c0d05f74:	00002daf 	.word	0x00002daf
c0d05f78:	00002daa 	.word	0x00002daa
c0d05f7c:	00002ecc 	.word	0x00002ecc
c0d05f80:	00002dac 	.word	0x00002dac

c0d05f84 <USBD_LL_Init>:
c0d05f84:	4902      	ldr	r1, [pc, #8]	; (c0d05f90 <USBD_LL_Init+0xc>)
c0d05f86:	2000      	movs	r0, #0
c0d05f88:	6008      	str	r0, [r1, #0]
c0d05f8a:	4902      	ldr	r1, [pc, #8]	; (c0d05f94 <USBD_LL_Init+0x10>)
c0d05f8c:	6008      	str	r0, [r1, #0]
c0d05f8e:	4770      	bx	lr
c0d05f90:	20000ab8 	.word	0x20000ab8
c0d05f94:	20000ab4 	.word	0x20000ab4

c0d05f98 <USBD_LL_DeInit>:
c0d05f98:	b510      	push	{r4, lr}
c0d05f9a:	b082      	sub	sp, #8
c0d05f9c:	a801      	add	r0, sp, #4
c0d05f9e:	2102      	movs	r1, #2
c0d05fa0:	70c1      	strb	r1, [r0, #3]
c0d05fa2:	2101      	movs	r1, #1
c0d05fa4:	7081      	strb	r1, [r0, #2]
c0d05fa6:	2400      	movs	r4, #0
c0d05fa8:	7044      	strb	r4, [r0, #1]
c0d05faa:	214f      	movs	r1, #79	; 0x4f
c0d05fac:	7001      	strb	r1, [r0, #0]
c0d05fae:	2104      	movs	r1, #4
c0d05fb0:	f7fe fdfc 	bl	c0d04bac <io_seph_send>
c0d05fb4:	4620      	mov	r0, r4
c0d05fb6:	b002      	add	sp, #8
c0d05fb8:	bd10      	pop	{r4, pc}

c0d05fba <USBD_LL_Start>:
c0d05fba:	b570      	push	{r4, r5, r6, lr}
c0d05fbc:	b082      	sub	sp, #8
c0d05fbe:	466d      	mov	r5, sp
c0d05fc0:	2400      	movs	r4, #0
c0d05fc2:	712c      	strb	r4, [r5, #4]
c0d05fc4:	2003      	movs	r0, #3
c0d05fc6:	70e8      	strb	r0, [r5, #3]
c0d05fc8:	2002      	movs	r0, #2
c0d05fca:	70a8      	strb	r0, [r5, #2]
c0d05fcc:	706c      	strb	r4, [r5, #1]
c0d05fce:	264f      	movs	r6, #79	; 0x4f
c0d05fd0:	702e      	strb	r6, [r5, #0]
c0d05fd2:	2105      	movs	r1, #5
c0d05fd4:	4628      	mov	r0, r5
c0d05fd6:	f7fe fde9 	bl	c0d04bac <io_seph_send>
c0d05fda:	2001      	movs	r0, #1
c0d05fdc:	70e8      	strb	r0, [r5, #3]
c0d05fde:	70a8      	strb	r0, [r5, #2]
c0d05fe0:	706c      	strb	r4, [r5, #1]
c0d05fe2:	702e      	strb	r6, [r5, #0]
c0d05fe4:	2104      	movs	r1, #4
c0d05fe6:	4628      	mov	r0, r5
c0d05fe8:	f7fe fde0 	bl	c0d04bac <io_seph_send>
c0d05fec:	4620      	mov	r0, r4
c0d05fee:	b002      	add	sp, #8
c0d05ff0:	bd70      	pop	{r4, r5, r6, pc}

c0d05ff2 <USBD_LL_Stop>:
c0d05ff2:	b510      	push	{r4, lr}
c0d05ff4:	b082      	sub	sp, #8
c0d05ff6:	a801      	add	r0, sp, #4
c0d05ff8:	2102      	movs	r1, #2
c0d05ffa:	70c1      	strb	r1, [r0, #3]
c0d05ffc:	2101      	movs	r1, #1
c0d05ffe:	7081      	strb	r1, [r0, #2]
c0d06000:	2400      	movs	r4, #0
c0d06002:	7044      	strb	r4, [r0, #1]
c0d06004:	214f      	movs	r1, #79	; 0x4f
c0d06006:	7001      	strb	r1, [r0, #0]
c0d06008:	2104      	movs	r1, #4
c0d0600a:	f7fe fdcf 	bl	c0d04bac <io_seph_send>
c0d0600e:	4620      	mov	r0, r4
c0d06010:	b002      	add	sp, #8
c0d06012:	bd10      	pop	{r4, pc}

c0d06014 <USBD_LL_OpenEP>:
c0d06014:	b570      	push	{r4, r5, r6, lr}
c0d06016:	b082      	sub	sp, #8
c0d06018:	4814      	ldr	r0, [pc, #80]	; (c0d0606c <USBD_LL_OpenEP+0x58>)
c0d0601a:	2400      	movs	r4, #0
c0d0601c:	6004      	str	r4, [r0, #0]
c0d0601e:	4814      	ldr	r0, [pc, #80]	; (c0d06070 <USBD_LL_OpenEP+0x5c>)
c0d06020:	6004      	str	r4, [r0, #0]
c0d06022:	466d      	mov	r5, sp
c0d06024:	71ac      	strb	r4, [r5, #6]
c0d06026:	7169      	strb	r1, [r5, #5]
c0d06028:	2001      	movs	r0, #1
c0d0602a:	7128      	strb	r0, [r5, #4]
c0d0602c:	2104      	movs	r1, #4
c0d0602e:	70e9      	strb	r1, [r5, #3]
c0d06030:	2605      	movs	r6, #5
c0d06032:	70ae      	strb	r6, [r5, #2]
c0d06034:	706c      	strb	r4, [r5, #1]
c0d06036:	244f      	movs	r4, #79	; 0x4f
c0d06038:	702c      	strb	r4, [r5, #0]
c0d0603a:	2a01      	cmp	r2, #1
c0d0603c:	dc05      	bgt.n	c0d0604a <USBD_LL_OpenEP+0x36>
c0d0603e:	2a00      	cmp	r2, #0
c0d06040:	d00a      	beq.n	c0d06058 <USBD_LL_OpenEP+0x44>
c0d06042:	2a01      	cmp	r2, #1
c0d06044:	d10a      	bne.n	c0d0605c <USBD_LL_OpenEP+0x48>
c0d06046:	4608      	mov	r0, r1
c0d06048:	e006      	b.n	c0d06058 <USBD_LL_OpenEP+0x44>
c0d0604a:	2a02      	cmp	r2, #2
c0d0604c:	d003      	beq.n	c0d06056 <USBD_LL_OpenEP+0x42>
c0d0604e:	2a03      	cmp	r2, #3
c0d06050:	d104      	bne.n	c0d0605c <USBD_LL_OpenEP+0x48>
c0d06052:	2002      	movs	r0, #2
c0d06054:	e000      	b.n	c0d06058 <USBD_LL_OpenEP+0x44>
c0d06056:	2003      	movs	r0, #3
c0d06058:	4669      	mov	r1, sp
c0d0605a:	7188      	strb	r0, [r1, #6]
c0d0605c:	4668      	mov	r0, sp
c0d0605e:	71c3      	strb	r3, [r0, #7]
c0d06060:	2108      	movs	r1, #8
c0d06062:	f7fe fda3 	bl	c0d04bac <io_seph_send>
c0d06066:	2000      	movs	r0, #0
c0d06068:	b002      	add	sp, #8
c0d0606a:	bd70      	pop	{r4, r5, r6, pc}
c0d0606c:	20000ab4 	.word	0x20000ab4
c0d06070:	20000ab8 	.word	0x20000ab8

c0d06074 <USBD_LL_StallEP>:
c0d06074:	b5b0      	push	{r4, r5, r7, lr}
c0d06076:	b082      	sub	sp, #8
c0d06078:	460d      	mov	r5, r1
c0d0607a:	4668      	mov	r0, sp
c0d0607c:	2400      	movs	r4, #0
c0d0607e:	7144      	strb	r4, [r0, #5]
c0d06080:	2140      	movs	r1, #64	; 0x40
c0d06082:	7101      	strb	r1, [r0, #4]
c0d06084:	70c5      	strb	r5, [r0, #3]
c0d06086:	2103      	movs	r1, #3
c0d06088:	7081      	strb	r1, [r0, #2]
c0d0608a:	7044      	strb	r4, [r0, #1]
c0d0608c:	2150      	movs	r1, #80	; 0x50
c0d0608e:	7001      	strb	r1, [r0, #0]
c0d06090:	2106      	movs	r1, #6
c0d06092:	f7fe fd8b 	bl	c0d04bac <io_seph_send>
c0d06096:	0628      	lsls	r0, r5, #24
c0d06098:	d501      	bpl.n	c0d0609e <USBD_LL_StallEP+0x2a>
c0d0609a:	4807      	ldr	r0, [pc, #28]	; (c0d060b8 <USBD_LL_StallEP+0x44>)
c0d0609c:	e000      	b.n	c0d060a0 <USBD_LL_StallEP+0x2c>
c0d0609e:	4805      	ldr	r0, [pc, #20]	; (c0d060b4 <USBD_LL_StallEP+0x40>)
c0d060a0:	6801      	ldr	r1, [r0, #0]
c0d060a2:	227f      	movs	r2, #127	; 0x7f
c0d060a4:	4015      	ands	r5, r2
c0d060a6:	2201      	movs	r2, #1
c0d060a8:	40aa      	lsls	r2, r5
c0d060aa:	430a      	orrs	r2, r1
c0d060ac:	6002      	str	r2, [r0, #0]
c0d060ae:	4620      	mov	r0, r4
c0d060b0:	b002      	add	sp, #8
c0d060b2:	bdb0      	pop	{r4, r5, r7, pc}
c0d060b4:	20000ab8 	.word	0x20000ab8
c0d060b8:	20000ab4 	.word	0x20000ab4

c0d060bc <USBD_LL_ClearStallEP>:
c0d060bc:	b5b0      	push	{r4, r5, r7, lr}
c0d060be:	b082      	sub	sp, #8
c0d060c0:	460d      	mov	r5, r1
c0d060c2:	4668      	mov	r0, sp
c0d060c4:	2400      	movs	r4, #0
c0d060c6:	7144      	strb	r4, [r0, #5]
c0d060c8:	2180      	movs	r1, #128	; 0x80
c0d060ca:	7101      	strb	r1, [r0, #4]
c0d060cc:	70c5      	strb	r5, [r0, #3]
c0d060ce:	2103      	movs	r1, #3
c0d060d0:	7081      	strb	r1, [r0, #2]
c0d060d2:	7044      	strb	r4, [r0, #1]
c0d060d4:	2150      	movs	r1, #80	; 0x50
c0d060d6:	7001      	strb	r1, [r0, #0]
c0d060d8:	2106      	movs	r1, #6
c0d060da:	f7fe fd67 	bl	c0d04bac <io_seph_send>
c0d060de:	0628      	lsls	r0, r5, #24
c0d060e0:	d501      	bpl.n	c0d060e6 <USBD_LL_ClearStallEP+0x2a>
c0d060e2:	4807      	ldr	r0, [pc, #28]	; (c0d06100 <USBD_LL_ClearStallEP+0x44>)
c0d060e4:	e000      	b.n	c0d060e8 <USBD_LL_ClearStallEP+0x2c>
c0d060e6:	4805      	ldr	r0, [pc, #20]	; (c0d060fc <USBD_LL_ClearStallEP+0x40>)
c0d060e8:	6801      	ldr	r1, [r0, #0]
c0d060ea:	227f      	movs	r2, #127	; 0x7f
c0d060ec:	4015      	ands	r5, r2
c0d060ee:	2201      	movs	r2, #1
c0d060f0:	40aa      	lsls	r2, r5
c0d060f2:	4391      	bics	r1, r2
c0d060f4:	6001      	str	r1, [r0, #0]
c0d060f6:	4620      	mov	r0, r4
c0d060f8:	b002      	add	sp, #8
c0d060fa:	bdb0      	pop	{r4, r5, r7, pc}
c0d060fc:	20000ab8 	.word	0x20000ab8
c0d06100:	20000ab4 	.word	0x20000ab4

c0d06104 <USBD_LL_IsStallEP>:
c0d06104:	0608      	lsls	r0, r1, #24
c0d06106:	d501      	bpl.n	c0d0610c <USBD_LL_IsStallEP+0x8>
c0d06108:	4805      	ldr	r0, [pc, #20]	; (c0d06120 <USBD_LL_IsStallEP+0x1c>)
c0d0610a:	e000      	b.n	c0d0610e <USBD_LL_IsStallEP+0xa>
c0d0610c:	4803      	ldr	r0, [pc, #12]	; (c0d0611c <USBD_LL_IsStallEP+0x18>)
c0d0610e:	7802      	ldrb	r2, [r0, #0]
c0d06110:	207f      	movs	r0, #127	; 0x7f
c0d06112:	4001      	ands	r1, r0
c0d06114:	2001      	movs	r0, #1
c0d06116:	4088      	lsls	r0, r1
c0d06118:	4010      	ands	r0, r2
c0d0611a:	4770      	bx	lr
c0d0611c:	20000ab8 	.word	0x20000ab8
c0d06120:	20000ab4 	.word	0x20000ab4

c0d06124 <USBD_LL_SetUSBAddress>:
c0d06124:	b510      	push	{r4, lr}
c0d06126:	b082      	sub	sp, #8
c0d06128:	4668      	mov	r0, sp
c0d0612a:	7101      	strb	r1, [r0, #4]
c0d0612c:	2103      	movs	r1, #3
c0d0612e:	70c1      	strb	r1, [r0, #3]
c0d06130:	2102      	movs	r1, #2
c0d06132:	7081      	strb	r1, [r0, #2]
c0d06134:	2400      	movs	r4, #0
c0d06136:	7044      	strb	r4, [r0, #1]
c0d06138:	214f      	movs	r1, #79	; 0x4f
c0d0613a:	7001      	strb	r1, [r0, #0]
c0d0613c:	2105      	movs	r1, #5
c0d0613e:	f7fe fd35 	bl	c0d04bac <io_seph_send>
c0d06142:	4620      	mov	r0, r4
c0d06144:	b002      	add	sp, #8
c0d06146:	bd10      	pop	{r4, pc}

c0d06148 <USBD_LL_Transmit>:
c0d06148:	b5b0      	push	{r4, r5, r7, lr}
c0d0614a:	b082      	sub	sp, #8
c0d0614c:	461c      	mov	r4, r3
c0d0614e:	4615      	mov	r5, r2
c0d06150:	4668      	mov	r0, sp
c0d06152:	7143      	strb	r3, [r0, #5]
c0d06154:	2220      	movs	r2, #32
c0d06156:	7102      	strb	r2, [r0, #4]
c0d06158:	70c1      	strb	r1, [r0, #3]
c0d0615a:	2150      	movs	r1, #80	; 0x50
c0d0615c:	7001      	strb	r1, [r0, #0]
c0d0615e:	1cd9      	adds	r1, r3, #3
c0d06160:	7081      	strb	r1, [r0, #2]
c0d06162:	0a09      	lsrs	r1, r1, #8
c0d06164:	7041      	strb	r1, [r0, #1]
c0d06166:	2106      	movs	r1, #6
c0d06168:	f7fe fd20 	bl	c0d04bac <io_seph_send>
c0d0616c:	4628      	mov	r0, r5
c0d0616e:	4621      	mov	r1, r4
c0d06170:	f7fe fd1c 	bl	c0d04bac <io_seph_send>
c0d06174:	2000      	movs	r0, #0
c0d06176:	b002      	add	sp, #8
c0d06178:	bdb0      	pop	{r4, r5, r7, pc}

c0d0617a <USBD_LL_PrepareReceive>:
c0d0617a:	b510      	push	{r4, lr}
c0d0617c:	b082      	sub	sp, #8
c0d0617e:	4668      	mov	r0, sp
c0d06180:	7142      	strb	r2, [r0, #5]
c0d06182:	2230      	movs	r2, #48	; 0x30
c0d06184:	7102      	strb	r2, [r0, #4]
c0d06186:	70c1      	strb	r1, [r0, #3]
c0d06188:	2103      	movs	r1, #3
c0d0618a:	7081      	strb	r1, [r0, #2]
c0d0618c:	2400      	movs	r4, #0
c0d0618e:	7044      	strb	r4, [r0, #1]
c0d06190:	2150      	movs	r1, #80	; 0x50
c0d06192:	7001      	strb	r1, [r0, #0]
c0d06194:	2106      	movs	r1, #6
c0d06196:	f7fe fd09 	bl	c0d04bac <io_seph_send>
c0d0619a:	4620      	mov	r0, r4
c0d0619c:	b002      	add	sp, #8
c0d0619e:	bd10      	pop	{r4, pc}

c0d061a0 <USBD_Init>:
c0d061a0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d061a2:	b081      	sub	sp, #4
c0d061a4:	2800      	cmp	r0, #0
c0d061a6:	d014      	beq.n	c0d061d2 <USBD_Init+0x32>
c0d061a8:	4615      	mov	r5, r2
c0d061aa:	460e      	mov	r6, r1
c0d061ac:	4604      	mov	r4, r0
c0d061ae:	4607      	mov	r7, r0
c0d061b0:	37fc      	adds	r7, #252	; 0xfc
c0d061b2:	204d      	movs	r0, #77	; 0x4d
c0d061b4:	0081      	lsls	r1, r0, #2
c0d061b6:	4620      	mov	r0, r4
c0d061b8:	f001 ff2a 	bl	c0d08010 <__aeabi_memclr>
c0d061bc:	2e00      	cmp	r6, #0
c0d061be:	d000      	beq.n	c0d061c2 <USBD_Init+0x22>
c0d061c0:	617e      	str	r6, [r7, #20]
c0d061c2:	7025      	strb	r5, [r4, #0]
c0d061c4:	2001      	movs	r0, #1
c0d061c6:	7038      	strb	r0, [r7, #0]
c0d061c8:	4620      	mov	r0, r4
c0d061ca:	f7ff fedb 	bl	c0d05f84 <USBD_LL_Init>
c0d061ce:	2000      	movs	r0, #0
c0d061d0:	e000      	b.n	c0d061d4 <USBD_Init+0x34>
c0d061d2:	2002      	movs	r0, #2
c0d061d4:	b001      	add	sp, #4
c0d061d6:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d061d8 <USBD_DeInit>:
c0d061d8:	b570      	push	{r4, r5, r6, lr}
c0d061da:	4604      	mov	r4, r0
c0d061dc:	20fc      	movs	r0, #252	; 0xfc
c0d061de:	2101      	movs	r1, #1
c0d061e0:	5421      	strb	r1, [r4, r0]
c0d061e2:	2045      	movs	r0, #69	; 0x45
c0d061e4:	0080      	lsls	r0, r0, #2
c0d061e6:	1825      	adds	r5, r4, r0
c0d061e8:	2017      	movs	r0, #23
c0d061ea:	43c6      	mvns	r6, r0
c0d061ec:	19a8      	adds	r0, r5, r6
c0d061ee:	6980      	ldr	r0, [r0, #24]
c0d061f0:	2800      	cmp	r0, #0
c0d061f2:	d006      	beq.n	c0d06202 <USBD_DeInit+0x2a>
c0d061f4:	6840      	ldr	r0, [r0, #4]
c0d061f6:	f7fe fb49 	bl	c0d0488c <pic>
c0d061fa:	4602      	mov	r2, r0
c0d061fc:	7921      	ldrb	r1, [r4, #4]
c0d061fe:	4620      	mov	r0, r4
c0d06200:	4790      	blx	r2
c0d06202:	3608      	adds	r6, #8
c0d06204:	d1f2      	bne.n	c0d061ec <USBD_DeInit+0x14>
c0d06206:	4620      	mov	r0, r4
c0d06208:	f7ff fef3 	bl	c0d05ff2 <USBD_LL_Stop>
c0d0620c:	4620      	mov	r0, r4
c0d0620e:	f7ff fec3 	bl	c0d05f98 <USBD_LL_DeInit>
c0d06212:	2000      	movs	r0, #0
c0d06214:	bd70      	pop	{r4, r5, r6, pc}

c0d06216 <USBD_RegisterClassForInterface>:
c0d06216:	2a00      	cmp	r2, #0
c0d06218:	d009      	beq.n	c0d0622e <USBD_RegisterClassForInterface+0x18>
c0d0621a:	4603      	mov	r3, r0
c0d0621c:	2000      	movs	r0, #0
c0d0621e:	2b02      	cmp	r3, #2
c0d06220:	d804      	bhi.n	c0d0622c <USBD_RegisterClassForInterface+0x16>
c0d06222:	00db      	lsls	r3, r3, #3
c0d06224:	18c9      	adds	r1, r1, r3
c0d06226:	2345      	movs	r3, #69	; 0x45
c0d06228:	009b      	lsls	r3, r3, #2
c0d0622a:	50ca      	str	r2, [r1, r3]
c0d0622c:	4770      	bx	lr
c0d0622e:	2002      	movs	r0, #2
c0d06230:	4770      	bx	lr

c0d06232 <USBD_Start>:
c0d06232:	b580      	push	{r7, lr}
c0d06234:	f7ff fec1 	bl	c0d05fba <USBD_LL_Start>
c0d06238:	2000      	movs	r0, #0
c0d0623a:	bd80      	pop	{r7, pc}

c0d0623c <USBD_SetClassConfig>:
c0d0623c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d0623e:	b081      	sub	sp, #4
c0d06240:	460c      	mov	r4, r1
c0d06242:	4605      	mov	r5, r0
c0d06244:	2045      	movs	r0, #69	; 0x45
c0d06246:	0087      	lsls	r7, r0, #2
c0d06248:	2600      	movs	r6, #0
c0d0624a:	4628      	mov	r0, r5
c0d0624c:	4631      	mov	r1, r6
c0d0624e:	f000 f96b 	bl	c0d06528 <usbd_is_valid_intf>
c0d06252:	2800      	cmp	r0, #0
c0d06254:	d007      	beq.n	c0d06266 <USBD_SetClassConfig+0x2a>
c0d06256:	59e8      	ldr	r0, [r5, r7]
c0d06258:	6800      	ldr	r0, [r0, #0]
c0d0625a:	f7fe fb17 	bl	c0d0488c <pic>
c0d0625e:	4602      	mov	r2, r0
c0d06260:	4628      	mov	r0, r5
c0d06262:	4621      	mov	r1, r4
c0d06264:	4790      	blx	r2
c0d06266:	3708      	adds	r7, #8
c0d06268:	1c76      	adds	r6, r6, #1
c0d0626a:	2e03      	cmp	r6, #3
c0d0626c:	d1ed      	bne.n	c0d0624a <USBD_SetClassConfig+0xe>
c0d0626e:	2000      	movs	r0, #0
c0d06270:	b001      	add	sp, #4
c0d06272:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d06274 <USBD_ClrClassConfig>:
c0d06274:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d06276:	b081      	sub	sp, #4
c0d06278:	460c      	mov	r4, r1
c0d0627a:	4605      	mov	r5, r0
c0d0627c:	2045      	movs	r0, #69	; 0x45
c0d0627e:	0087      	lsls	r7, r0, #2
c0d06280:	2600      	movs	r6, #0
c0d06282:	4628      	mov	r0, r5
c0d06284:	4631      	mov	r1, r6
c0d06286:	f000 f94f 	bl	c0d06528 <usbd_is_valid_intf>
c0d0628a:	2800      	cmp	r0, #0
c0d0628c:	d007      	beq.n	c0d0629e <USBD_ClrClassConfig+0x2a>
c0d0628e:	59e8      	ldr	r0, [r5, r7]
c0d06290:	6840      	ldr	r0, [r0, #4]
c0d06292:	f7fe fafb 	bl	c0d0488c <pic>
c0d06296:	4602      	mov	r2, r0
c0d06298:	4628      	mov	r0, r5
c0d0629a:	4621      	mov	r1, r4
c0d0629c:	4790      	blx	r2
c0d0629e:	3708      	adds	r7, #8
c0d062a0:	1c76      	adds	r6, r6, #1
c0d062a2:	2e03      	cmp	r6, #3
c0d062a4:	d1ed      	bne.n	c0d06282 <USBD_ClrClassConfig+0xe>
c0d062a6:	2000      	movs	r0, #0
c0d062a8:	b001      	add	sp, #4
c0d062aa:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d062ac <USBD_LL_SetupStage>:
c0d062ac:	b570      	push	{r4, r5, r6, lr}
c0d062ae:	4604      	mov	r4, r0
c0d062b0:	4606      	mov	r6, r0
c0d062b2:	36f4      	adds	r6, #244	; 0xf4
c0d062b4:	4635      	mov	r5, r6
c0d062b6:	3514      	adds	r5, #20
c0d062b8:	4628      	mov	r0, r5
c0d062ba:	f000 fb74 	bl	c0d069a6 <USBD_ParseSetupRequest>
c0d062be:	20f4      	movs	r0, #244	; 0xf4
c0d062c0:	2101      	movs	r1, #1
c0d062c2:	5021      	str	r1, [r4, r0]
c0d062c4:	2087      	movs	r0, #135	; 0x87
c0d062c6:	0040      	lsls	r0, r0, #1
c0d062c8:	5a20      	ldrh	r0, [r4, r0]
c0d062ca:	6070      	str	r0, [r6, #4]
c0d062cc:	7d31      	ldrb	r1, [r6, #20]
c0d062ce:	201f      	movs	r0, #31
c0d062d0:	4008      	ands	r0, r1
c0d062d2:	2802      	cmp	r0, #2
c0d062d4:	d008      	beq.n	c0d062e8 <USBD_LL_SetupStage+0x3c>
c0d062d6:	2801      	cmp	r0, #1
c0d062d8:	d00b      	beq.n	c0d062f2 <USBD_LL_SetupStage+0x46>
c0d062da:	2800      	cmp	r0, #0
c0d062dc:	d10e      	bne.n	c0d062fc <USBD_LL_SetupStage+0x50>
c0d062de:	4620      	mov	r0, r4
c0d062e0:	4629      	mov	r1, r5
c0d062e2:	f000 f92d 	bl	c0d06540 <USBD_StdDevReq>
c0d062e6:	e00e      	b.n	c0d06306 <USBD_LL_SetupStage+0x5a>
c0d062e8:	4620      	mov	r0, r4
c0d062ea:	4629      	mov	r1, r5
c0d062ec:	f000 fad6 	bl	c0d0689c <USBD_StdEPReq>
c0d062f0:	e009      	b.n	c0d06306 <USBD_LL_SetupStage+0x5a>
c0d062f2:	4620      	mov	r0, r4
c0d062f4:	4629      	mov	r1, r5
c0d062f6:	f000 faac 	bl	c0d06852 <USBD_StdItfReq>
c0d062fa:	e004      	b.n	c0d06306 <USBD_LL_SetupStage+0x5a>
c0d062fc:	2080      	movs	r0, #128	; 0x80
c0d062fe:	4001      	ands	r1, r0
c0d06300:	4620      	mov	r0, r4
c0d06302:	f7ff feb7 	bl	c0d06074 <USBD_LL_StallEP>
c0d06306:	2000      	movs	r0, #0
c0d06308:	bd70      	pop	{r4, r5, r6, pc}

c0d0630a <USBD_LL_DataOutStage>:
c0d0630a:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d0630c:	b085      	sub	sp, #20
c0d0630e:	9302      	str	r3, [sp, #8]
c0d06310:	9203      	str	r2, [sp, #12]
c0d06312:	4604      	mov	r4, r0
c0d06314:	30fc      	adds	r0, #252	; 0xfc
c0d06316:	9004      	str	r0, [sp, #16]
c0d06318:	9101      	str	r1, [sp, #4]
c0d0631a:	2900      	cmp	r1, #0
c0d0631c:	d01d      	beq.n	c0d0635a <USBD_LL_DataOutStage+0x50>
c0d0631e:	2045      	movs	r0, #69	; 0x45
c0d06320:	0087      	lsls	r7, r0, #2
c0d06322:	2500      	movs	r5, #0
c0d06324:	4620      	mov	r0, r4
c0d06326:	4629      	mov	r1, r5
c0d06328:	f000 f8fe 	bl	c0d06528 <usbd_is_valid_intf>
c0d0632c:	2800      	cmp	r0, #0
c0d0632e:	d00f      	beq.n	c0d06350 <USBD_LL_DataOutStage+0x46>
c0d06330:	59e0      	ldr	r0, [r4, r7]
c0d06332:	6980      	ldr	r0, [r0, #24]
c0d06334:	2800      	cmp	r0, #0
c0d06336:	d00b      	beq.n	c0d06350 <USBD_LL_DataOutStage+0x46>
c0d06338:	9904      	ldr	r1, [sp, #16]
c0d0633a:	7809      	ldrb	r1, [r1, #0]
c0d0633c:	2903      	cmp	r1, #3
c0d0633e:	d107      	bne.n	c0d06350 <USBD_LL_DataOutStage+0x46>
c0d06340:	f7fe faa4 	bl	c0d0488c <pic>
c0d06344:	4606      	mov	r6, r0
c0d06346:	4620      	mov	r0, r4
c0d06348:	9901      	ldr	r1, [sp, #4]
c0d0634a:	9a03      	ldr	r2, [sp, #12]
c0d0634c:	9b02      	ldr	r3, [sp, #8]
c0d0634e:	47b0      	blx	r6
c0d06350:	3708      	adds	r7, #8
c0d06352:	1c6d      	adds	r5, r5, #1
c0d06354:	2d03      	cmp	r5, #3
c0d06356:	d1e5      	bne.n	c0d06324 <USBD_LL_DataOutStage+0x1a>
c0d06358:	e030      	b.n	c0d063bc <USBD_LL_DataOutStage+0xb2>
c0d0635a:	4620      	mov	r0, r4
c0d0635c:	308c      	adds	r0, #140	; 0x8c
c0d0635e:	6e81      	ldr	r1, [r0, #104]	; 0x68
c0d06360:	2903      	cmp	r1, #3
c0d06362:	d12b      	bne.n	c0d063bc <USBD_LL_DataOutStage+0xb2>
c0d06364:	6802      	ldr	r2, [r0, #0]
c0d06366:	6841      	ldr	r1, [r0, #4]
c0d06368:	428a      	cmp	r2, r1
c0d0636a:	d90a      	bls.n	c0d06382 <USBD_LL_DataOutStage+0x78>
c0d0636c:	1a52      	subs	r2, r2, r1
c0d0636e:	6002      	str	r2, [r0, #0]
c0d06370:	428a      	cmp	r2, r1
c0d06372:	d300      	bcc.n	c0d06376 <USBD_LL_DataOutStage+0x6c>
c0d06374:	460a      	mov	r2, r1
c0d06376:	b292      	uxth	r2, r2
c0d06378:	4620      	mov	r0, r4
c0d0637a:	9903      	ldr	r1, [sp, #12]
c0d0637c:	f000 fd38 	bl	c0d06df0 <USBD_CtlContinueRx>
c0d06380:	e01c      	b.n	c0d063bc <USBD_LL_DataOutStage+0xb2>
c0d06382:	2045      	movs	r0, #69	; 0x45
c0d06384:	0086      	lsls	r6, r0, #2
c0d06386:	2500      	movs	r5, #0
c0d06388:	4620      	mov	r0, r4
c0d0638a:	4629      	mov	r1, r5
c0d0638c:	f000 f8cc 	bl	c0d06528 <usbd_is_valid_intf>
c0d06390:	2800      	cmp	r0, #0
c0d06392:	d00c      	beq.n	c0d063ae <USBD_LL_DataOutStage+0xa4>
c0d06394:	59a0      	ldr	r0, [r4, r6]
c0d06396:	6900      	ldr	r0, [r0, #16]
c0d06398:	2800      	cmp	r0, #0
c0d0639a:	d008      	beq.n	c0d063ae <USBD_LL_DataOutStage+0xa4>
c0d0639c:	9904      	ldr	r1, [sp, #16]
c0d0639e:	7809      	ldrb	r1, [r1, #0]
c0d063a0:	2903      	cmp	r1, #3
c0d063a2:	d104      	bne.n	c0d063ae <USBD_LL_DataOutStage+0xa4>
c0d063a4:	f7fe fa72 	bl	c0d0488c <pic>
c0d063a8:	4601      	mov	r1, r0
c0d063aa:	4620      	mov	r0, r4
c0d063ac:	4788      	blx	r1
c0d063ae:	3608      	adds	r6, #8
c0d063b0:	1c6d      	adds	r5, r5, #1
c0d063b2:	2d03      	cmp	r5, #3
c0d063b4:	d1e8      	bne.n	c0d06388 <USBD_LL_DataOutStage+0x7e>
c0d063b6:	4620      	mov	r0, r4
c0d063b8:	f000 fd21 	bl	c0d06dfe <USBD_CtlSendStatus>
c0d063bc:	2000      	movs	r0, #0
c0d063be:	b005      	add	sp, #20
c0d063c0:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d063c2 <USBD_LL_DataInStage>:
c0d063c2:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d063c4:	b081      	sub	sp, #4
c0d063c6:	4604      	mov	r4, r0
c0d063c8:	4607      	mov	r7, r0
c0d063ca:	37f4      	adds	r7, #244	; 0xf4
c0d063cc:	9100      	str	r1, [sp, #0]
c0d063ce:	2900      	cmp	r1, #0
c0d063d0:	d01b      	beq.n	c0d0640a <USBD_LL_DataInStage+0x48>
c0d063d2:	463d      	mov	r5, r7
c0d063d4:	2045      	movs	r0, #69	; 0x45
c0d063d6:	0087      	lsls	r7, r0, #2
c0d063d8:	2600      	movs	r6, #0
c0d063da:	4620      	mov	r0, r4
c0d063dc:	4631      	mov	r1, r6
c0d063de:	f000 f8a3 	bl	c0d06528 <usbd_is_valid_intf>
c0d063e2:	2800      	cmp	r0, #0
c0d063e4:	d00c      	beq.n	c0d06400 <USBD_LL_DataInStage+0x3e>
c0d063e6:	59e0      	ldr	r0, [r4, r7]
c0d063e8:	6940      	ldr	r0, [r0, #20]
c0d063ea:	2800      	cmp	r0, #0
c0d063ec:	d008      	beq.n	c0d06400 <USBD_LL_DataInStage+0x3e>
c0d063ee:	7a29      	ldrb	r1, [r5, #8]
c0d063f0:	2903      	cmp	r1, #3
c0d063f2:	d105      	bne.n	c0d06400 <USBD_LL_DataInStage+0x3e>
c0d063f4:	f7fe fa4a 	bl	c0d0488c <pic>
c0d063f8:	4602      	mov	r2, r0
c0d063fa:	4620      	mov	r0, r4
c0d063fc:	9900      	ldr	r1, [sp, #0]
c0d063fe:	4790      	blx	r2
c0d06400:	3708      	adds	r7, #8
c0d06402:	1c76      	adds	r6, r6, #1
c0d06404:	2e03      	cmp	r6, #3
c0d06406:	d1e8      	bne.n	c0d063da <USBD_LL_DataInStage+0x18>
c0d06408:	e046      	b.n	c0d06498 <USBD_LL_DataInStage+0xd6>
c0d0640a:	6838      	ldr	r0, [r7, #0]
c0d0640c:	2802      	cmp	r0, #2
c0d0640e:	d13d      	bne.n	c0d0648c <USBD_LL_DataInStage+0xca>
c0d06410:	69e0      	ldr	r0, [r4, #28]
c0d06412:	6a25      	ldr	r5, [r4, #32]
c0d06414:	42a8      	cmp	r0, r5
c0d06416:	d909      	bls.n	c0d0642c <USBD_LL_DataInStage+0x6a>
c0d06418:	1b40      	subs	r0, r0, r5
c0d0641a:	61e0      	str	r0, [r4, #28]
c0d0641c:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
c0d0641e:	1949      	adds	r1, r1, r5
c0d06420:	63f9      	str	r1, [r7, #60]	; 0x3c
c0d06422:	b282      	uxth	r2, r0
c0d06424:	4620      	mov	r0, r4
c0d06426:	f000 fcd5 	bl	c0d06dd4 <USBD_CtlContinueSendData>
c0d0642a:	e02f      	b.n	c0d0648c <USBD_LL_DataInStage+0xca>
c0d0642c:	69a6      	ldr	r6, [r4, #24]
c0d0642e:	4630      	mov	r0, r6
c0d06430:	4629      	mov	r1, r5
c0d06432:	f001 fdbd 	bl	c0d07fb0 <__aeabi_uidivmod>
c0d06436:	42ae      	cmp	r6, r5
c0d06438:	d30c      	bcc.n	c0d06454 <USBD_LL_DataInStage+0x92>
c0d0643a:	2900      	cmp	r1, #0
c0d0643c:	d10a      	bne.n	c0d06454 <USBD_LL_DataInStage+0x92>
c0d0643e:	6878      	ldr	r0, [r7, #4]
c0d06440:	4286      	cmp	r6, r0
c0d06442:	d207      	bcs.n	c0d06454 <USBD_LL_DataInStage+0x92>
c0d06444:	2500      	movs	r5, #0
c0d06446:	4620      	mov	r0, r4
c0d06448:	4629      	mov	r1, r5
c0d0644a:	462a      	mov	r2, r5
c0d0644c:	f000 fcc2 	bl	c0d06dd4 <USBD_CtlContinueSendData>
c0d06450:	607d      	str	r5, [r7, #4]
c0d06452:	e01b      	b.n	c0d0648c <USBD_LL_DataInStage+0xca>
c0d06454:	2045      	movs	r0, #69	; 0x45
c0d06456:	0086      	lsls	r6, r0, #2
c0d06458:	2500      	movs	r5, #0
c0d0645a:	4620      	mov	r0, r4
c0d0645c:	4629      	mov	r1, r5
c0d0645e:	f000 f863 	bl	c0d06528 <usbd_is_valid_intf>
c0d06462:	2800      	cmp	r0, #0
c0d06464:	d00b      	beq.n	c0d0647e <USBD_LL_DataInStage+0xbc>
c0d06466:	59a0      	ldr	r0, [r4, r6]
c0d06468:	68c0      	ldr	r0, [r0, #12]
c0d0646a:	2800      	cmp	r0, #0
c0d0646c:	d007      	beq.n	c0d0647e <USBD_LL_DataInStage+0xbc>
c0d0646e:	7a39      	ldrb	r1, [r7, #8]
c0d06470:	2903      	cmp	r1, #3
c0d06472:	d104      	bne.n	c0d0647e <USBD_LL_DataInStage+0xbc>
c0d06474:	f7fe fa0a 	bl	c0d0488c <pic>
c0d06478:	4601      	mov	r1, r0
c0d0647a:	4620      	mov	r0, r4
c0d0647c:	4788      	blx	r1
c0d0647e:	3608      	adds	r6, #8
c0d06480:	1c6d      	adds	r5, r5, #1
c0d06482:	2d03      	cmp	r5, #3
c0d06484:	d1e9      	bne.n	c0d0645a <USBD_LL_DataInStage+0x98>
c0d06486:	4620      	mov	r0, r4
c0d06488:	f000 fcc5 	bl	c0d06e16 <USBD_CtlReceiveStatus>
c0d0648c:	7b38      	ldrb	r0, [r7, #12]
c0d0648e:	2801      	cmp	r0, #1
c0d06490:	d102      	bne.n	c0d06498 <USBD_LL_DataInStage+0xd6>
c0d06492:	4639      	mov	r1, r7
c0d06494:	2000      	movs	r0, #0
c0d06496:	7338      	strb	r0, [r7, #12]
c0d06498:	2000      	movs	r0, #0
c0d0649a:	b001      	add	sp, #4
c0d0649c:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d0649e <USBD_LL_Reset>:
c0d0649e:	b570      	push	{r4, r5, r6, lr}
c0d064a0:	4604      	mov	r4, r0
c0d064a2:	20fc      	movs	r0, #252	; 0xfc
c0d064a4:	2101      	movs	r1, #1
c0d064a6:	5421      	strb	r1, [r4, r0]
c0d064a8:	2090      	movs	r0, #144	; 0x90
c0d064aa:	2140      	movs	r1, #64	; 0x40
c0d064ac:	5021      	str	r1, [r4, r0]
c0d064ae:	6221      	str	r1, [r4, #32]
c0d064b0:	2045      	movs	r0, #69	; 0x45
c0d064b2:	0086      	lsls	r6, r0, #2
c0d064b4:	2500      	movs	r5, #0
c0d064b6:	4620      	mov	r0, r4
c0d064b8:	4629      	mov	r1, r5
c0d064ba:	f000 f835 	bl	c0d06528 <usbd_is_valid_intf>
c0d064be:	2800      	cmp	r0, #0
c0d064c0:	d007      	beq.n	c0d064d2 <USBD_LL_Reset+0x34>
c0d064c2:	59a0      	ldr	r0, [r4, r6]
c0d064c4:	6840      	ldr	r0, [r0, #4]
c0d064c6:	f7fe f9e1 	bl	c0d0488c <pic>
c0d064ca:	4602      	mov	r2, r0
c0d064cc:	7921      	ldrb	r1, [r4, #4]
c0d064ce:	4620      	mov	r0, r4
c0d064d0:	4790      	blx	r2
c0d064d2:	3608      	adds	r6, #8
c0d064d4:	1c6d      	adds	r5, r5, #1
c0d064d6:	2d03      	cmp	r5, #3
c0d064d8:	d1ed      	bne.n	c0d064b6 <USBD_LL_Reset+0x18>
c0d064da:	2000      	movs	r0, #0
c0d064dc:	bd70      	pop	{r4, r5, r6, pc}

c0d064de <USBD_LL_SetSpeed>:
c0d064de:	7401      	strb	r1, [r0, #16]
c0d064e0:	2000      	movs	r0, #0
c0d064e2:	4770      	bx	lr

c0d064e4 <USBD_LL_Suspend>:
c0d064e4:	2000      	movs	r0, #0
c0d064e6:	4770      	bx	lr

c0d064e8 <USBD_LL_Resume>:
c0d064e8:	2000      	movs	r0, #0
c0d064ea:	4770      	bx	lr

c0d064ec <USBD_LL_SOF>:
c0d064ec:	b570      	push	{r4, r5, r6, lr}
c0d064ee:	4604      	mov	r4, r0
c0d064f0:	20fc      	movs	r0, #252	; 0xfc
c0d064f2:	5c20      	ldrb	r0, [r4, r0]
c0d064f4:	2803      	cmp	r0, #3
c0d064f6:	d115      	bne.n	c0d06524 <USBD_LL_SOF+0x38>
c0d064f8:	2045      	movs	r0, #69	; 0x45
c0d064fa:	0086      	lsls	r6, r0, #2
c0d064fc:	2500      	movs	r5, #0
c0d064fe:	4620      	mov	r0, r4
c0d06500:	4629      	mov	r1, r5
c0d06502:	f000 f811 	bl	c0d06528 <usbd_is_valid_intf>
c0d06506:	2800      	cmp	r0, #0
c0d06508:	d008      	beq.n	c0d0651c <USBD_LL_SOF+0x30>
c0d0650a:	59a0      	ldr	r0, [r4, r6]
c0d0650c:	69c0      	ldr	r0, [r0, #28]
c0d0650e:	2800      	cmp	r0, #0
c0d06510:	d004      	beq.n	c0d0651c <USBD_LL_SOF+0x30>
c0d06512:	f7fe f9bb 	bl	c0d0488c <pic>
c0d06516:	4601      	mov	r1, r0
c0d06518:	4620      	mov	r0, r4
c0d0651a:	4788      	blx	r1
c0d0651c:	3608      	adds	r6, #8
c0d0651e:	1c6d      	adds	r5, r5, #1
c0d06520:	2d03      	cmp	r5, #3
c0d06522:	d1ec      	bne.n	c0d064fe <USBD_LL_SOF+0x12>
c0d06524:	2000      	movs	r0, #0
c0d06526:	bd70      	pop	{r4, r5, r6, pc}

c0d06528 <usbd_is_valid_intf>:
c0d06528:	2902      	cmp	r1, #2
c0d0652a:	d807      	bhi.n	c0d0653c <usbd_is_valid_intf+0x14>
c0d0652c:	00c9      	lsls	r1, r1, #3
c0d0652e:	1840      	adds	r0, r0, r1
c0d06530:	2145      	movs	r1, #69	; 0x45
c0d06532:	0089      	lsls	r1, r1, #2
c0d06534:	5840      	ldr	r0, [r0, r1]
c0d06536:	1e41      	subs	r1, r0, #1
c0d06538:	4188      	sbcs	r0, r1
c0d0653a:	4770      	bx	lr
c0d0653c:	2000      	movs	r0, #0
c0d0653e:	4770      	bx	lr

c0d06540 <USBD_StdDevReq>:
c0d06540:	b580      	push	{r7, lr}
c0d06542:	784a      	ldrb	r2, [r1, #1]
c0d06544:	2a04      	cmp	r2, #4
c0d06546:	dd08      	ble.n	c0d0655a <USBD_StdDevReq+0x1a>
c0d06548:	2a07      	cmp	r2, #7
c0d0654a:	dc0f      	bgt.n	c0d0656c <USBD_StdDevReq+0x2c>
c0d0654c:	2a05      	cmp	r2, #5
c0d0654e:	d014      	beq.n	c0d0657a <USBD_StdDevReq+0x3a>
c0d06550:	2a06      	cmp	r2, #6
c0d06552:	d11b      	bne.n	c0d0658c <USBD_StdDevReq+0x4c>
c0d06554:	f000 f821 	bl	c0d0659a <USBD_GetDescriptor>
c0d06558:	e01d      	b.n	c0d06596 <USBD_StdDevReq+0x56>
c0d0655a:	2a00      	cmp	r2, #0
c0d0655c:	d010      	beq.n	c0d06580 <USBD_StdDevReq+0x40>
c0d0655e:	2a01      	cmp	r2, #1
c0d06560:	d017      	beq.n	c0d06592 <USBD_StdDevReq+0x52>
c0d06562:	2a03      	cmp	r2, #3
c0d06564:	d112      	bne.n	c0d0658c <USBD_StdDevReq+0x4c>
c0d06566:	f000 f92b 	bl	c0d067c0 <USBD_SetFeature>
c0d0656a:	e014      	b.n	c0d06596 <USBD_StdDevReq+0x56>
c0d0656c:	2a08      	cmp	r2, #8
c0d0656e:	d00a      	beq.n	c0d06586 <USBD_StdDevReq+0x46>
c0d06570:	2a09      	cmp	r2, #9
c0d06572:	d10b      	bne.n	c0d0658c <USBD_StdDevReq+0x4c>
c0d06574:	f000 f8b2 	bl	c0d066dc <USBD_SetConfig>
c0d06578:	e00d      	b.n	c0d06596 <USBD_StdDevReq+0x56>
c0d0657a:	f000 f88c 	bl	c0d06696 <USBD_SetAddress>
c0d0657e:	e00a      	b.n	c0d06596 <USBD_StdDevReq+0x56>
c0d06580:	f000 f8fa 	bl	c0d06778 <USBD_GetStatus>
c0d06584:	e007      	b.n	c0d06596 <USBD_StdDevReq+0x56>
c0d06586:	f000 f8e0 	bl	c0d0674a <USBD_GetConfig>
c0d0658a:	e004      	b.n	c0d06596 <USBD_StdDevReq+0x56>
c0d0658c:	f000 fb7c 	bl	c0d06c88 <USBD_CtlError>
c0d06590:	e001      	b.n	c0d06596 <USBD_StdDevReq+0x56>
c0d06592:	f000 f934 	bl	c0d067fe <USBD_ClrFeature>
c0d06596:	2000      	movs	r0, #0
c0d06598:	bd80      	pop	{r7, pc}

c0d0659a <USBD_GetDescriptor>:
c0d0659a:	b5b0      	push	{r4, r5, r7, lr}
c0d0659c:	b082      	sub	sp, #8
c0d0659e:	460d      	mov	r5, r1
c0d065a0:	4604      	mov	r4, r0
c0d065a2:	a801      	add	r0, sp, #4
c0d065a4:	2100      	movs	r1, #0
c0d065a6:	8001      	strh	r1, [r0, #0]
c0d065a8:	2011      	movs	r0, #17
c0d065aa:	0100      	lsls	r0, r0, #4
c0d065ac:	1820      	adds	r0, r4, r0
c0d065ae:	886b      	ldrh	r3, [r5, #2]
c0d065b0:	0a1a      	lsrs	r2, r3, #8
c0d065b2:	2a05      	cmp	r2, #5
c0d065b4:	dc11      	bgt.n	c0d065da <USBD_GetDescriptor+0x40>
c0d065b6:	2a01      	cmp	r2, #1
c0d065b8:	d01a      	beq.n	c0d065f0 <USBD_GetDescriptor+0x56>
c0d065ba:	2a02      	cmp	r2, #2
c0d065bc:	d021      	beq.n	c0d06602 <USBD_GetDescriptor+0x68>
c0d065be:	2a03      	cmp	r2, #3
c0d065c0:	d132      	bne.n	c0d06628 <USBD_GetDescriptor+0x8e>
c0d065c2:	b2d9      	uxtb	r1, r3
c0d065c4:	2902      	cmp	r1, #2
c0d065c6:	dc34      	bgt.n	c0d06632 <USBD_GetDescriptor+0x98>
c0d065c8:	2900      	cmp	r1, #0
c0d065ca:	d058      	beq.n	c0d0667e <USBD_GetDescriptor+0xe4>
c0d065cc:	2901      	cmp	r1, #1
c0d065ce:	d05c      	beq.n	c0d0668a <USBD_GetDescriptor+0xf0>
c0d065d0:	2902      	cmp	r1, #2
c0d065d2:	d129      	bne.n	c0d06628 <USBD_GetDescriptor+0x8e>
c0d065d4:	6800      	ldr	r0, [r0, #0]
c0d065d6:	68c0      	ldr	r0, [r0, #12]
c0d065d8:	e00c      	b.n	c0d065f4 <USBD_GetDescriptor+0x5a>
c0d065da:	2a06      	cmp	r2, #6
c0d065dc:	d019      	beq.n	c0d06612 <USBD_GetDescriptor+0x78>
c0d065de:	2a07      	cmp	r2, #7
c0d065e0:	d01f      	beq.n	c0d06622 <USBD_GetDescriptor+0x88>
c0d065e2:	2a0f      	cmp	r2, #15
c0d065e4:	d120      	bne.n	c0d06628 <USBD_GetDescriptor+0x8e>
c0d065e6:	6800      	ldr	r0, [r0, #0]
c0d065e8:	69c0      	ldr	r0, [r0, #28]
c0d065ea:	2800      	cmp	r0, #0
c0d065ec:	d102      	bne.n	c0d065f4 <USBD_GetDescriptor+0x5a>
c0d065ee:	e01b      	b.n	c0d06628 <USBD_GetDescriptor+0x8e>
c0d065f0:	6800      	ldr	r0, [r0, #0]
c0d065f2:	6800      	ldr	r0, [r0, #0]
c0d065f4:	f7fe f94a 	bl	c0d0488c <pic>
c0d065f8:	4602      	mov	r2, r0
c0d065fa:	7c20      	ldrb	r0, [r4, #16]
c0d065fc:	a901      	add	r1, sp, #4
c0d065fe:	4790      	blx	r2
c0d06600:	e02b      	b.n	c0d0665a <USBD_GetDescriptor+0xc0>
c0d06602:	6840      	ldr	r0, [r0, #4]
c0d06604:	2800      	cmp	r0, #0
c0d06606:	d029      	beq.n	c0d0665c <USBD_GetDescriptor+0xc2>
c0d06608:	7c21      	ldrb	r1, [r4, #16]
c0d0660a:	2900      	cmp	r1, #0
c0d0660c:	d01f      	beq.n	c0d0664e <USBD_GetDescriptor+0xb4>
c0d0660e:	6ac0      	ldr	r0, [r0, #44]	; 0x2c
c0d06610:	e01e      	b.n	c0d06650 <USBD_GetDescriptor+0xb6>
c0d06612:	7c21      	ldrb	r1, [r4, #16]
c0d06614:	2900      	cmp	r1, #0
c0d06616:	d107      	bne.n	c0d06628 <USBD_GetDescriptor+0x8e>
c0d06618:	6840      	ldr	r0, [r0, #4]
c0d0661a:	2800      	cmp	r0, #0
c0d0661c:	d004      	beq.n	c0d06628 <USBD_GetDescriptor+0x8e>
c0d0661e:	6b40      	ldr	r0, [r0, #52]	; 0x34
c0d06620:	e016      	b.n	c0d06650 <USBD_GetDescriptor+0xb6>
c0d06622:	7c21      	ldrb	r1, [r4, #16]
c0d06624:	2900      	cmp	r1, #0
c0d06626:	d00d      	beq.n	c0d06644 <USBD_GetDescriptor+0xaa>
c0d06628:	4620      	mov	r0, r4
c0d0662a:	4629      	mov	r1, r5
c0d0662c:	f000 fb2c 	bl	c0d06c88 <USBD_CtlError>
c0d06630:	e023      	b.n	c0d0667a <USBD_GetDescriptor+0xe0>
c0d06632:	2903      	cmp	r1, #3
c0d06634:	d026      	beq.n	c0d06684 <USBD_GetDescriptor+0xea>
c0d06636:	2904      	cmp	r1, #4
c0d06638:	d02a      	beq.n	c0d06690 <USBD_GetDescriptor+0xf6>
c0d0663a:	2905      	cmp	r1, #5
c0d0663c:	d1f4      	bne.n	c0d06628 <USBD_GetDescriptor+0x8e>
c0d0663e:	6800      	ldr	r0, [r0, #0]
c0d06640:	6980      	ldr	r0, [r0, #24]
c0d06642:	e7d7      	b.n	c0d065f4 <USBD_GetDescriptor+0x5a>
c0d06644:	6840      	ldr	r0, [r0, #4]
c0d06646:	2800      	cmp	r0, #0
c0d06648:	d0ee      	beq.n	c0d06628 <USBD_GetDescriptor+0x8e>
c0d0664a:	6b00      	ldr	r0, [r0, #48]	; 0x30
c0d0664c:	e000      	b.n	c0d06650 <USBD_GetDescriptor+0xb6>
c0d0664e:	6a80      	ldr	r0, [r0, #40]	; 0x28
c0d06650:	f7fe f91c 	bl	c0d0488c <pic>
c0d06654:	4601      	mov	r1, r0
c0d06656:	a801      	add	r0, sp, #4
c0d06658:	4788      	blx	r1
c0d0665a:	4601      	mov	r1, r0
c0d0665c:	a801      	add	r0, sp, #4
c0d0665e:	8802      	ldrh	r2, [r0, #0]
c0d06660:	2a00      	cmp	r2, #0
c0d06662:	d00a      	beq.n	c0d0667a <USBD_GetDescriptor+0xe0>
c0d06664:	88e8      	ldrh	r0, [r5, #6]
c0d06666:	2800      	cmp	r0, #0
c0d06668:	d007      	beq.n	c0d0667a <USBD_GetDescriptor+0xe0>
c0d0666a:	4282      	cmp	r2, r0
c0d0666c:	d300      	bcc.n	c0d06670 <USBD_GetDescriptor+0xd6>
c0d0666e:	4602      	mov	r2, r0
c0d06670:	a801      	add	r0, sp, #4
c0d06672:	8002      	strh	r2, [r0, #0]
c0d06674:	4620      	mov	r0, r4
c0d06676:	f000 fb97 	bl	c0d06da8 <USBD_CtlSendData>
c0d0667a:	b002      	add	sp, #8
c0d0667c:	bdb0      	pop	{r4, r5, r7, pc}
c0d0667e:	6800      	ldr	r0, [r0, #0]
c0d06680:	6840      	ldr	r0, [r0, #4]
c0d06682:	e7b7      	b.n	c0d065f4 <USBD_GetDescriptor+0x5a>
c0d06684:	6800      	ldr	r0, [r0, #0]
c0d06686:	6900      	ldr	r0, [r0, #16]
c0d06688:	e7b4      	b.n	c0d065f4 <USBD_GetDescriptor+0x5a>
c0d0668a:	6800      	ldr	r0, [r0, #0]
c0d0668c:	6880      	ldr	r0, [r0, #8]
c0d0668e:	e7b1      	b.n	c0d065f4 <USBD_GetDescriptor+0x5a>
c0d06690:	6800      	ldr	r0, [r0, #0]
c0d06692:	6940      	ldr	r0, [r0, #20]
c0d06694:	e7ae      	b.n	c0d065f4 <USBD_GetDescriptor+0x5a>

c0d06696 <USBD_SetAddress>:
c0d06696:	b570      	push	{r4, r5, r6, lr}
c0d06698:	4604      	mov	r4, r0
c0d0669a:	8888      	ldrh	r0, [r1, #4]
c0d0669c:	2800      	cmp	r0, #0
c0d0669e:	d107      	bne.n	c0d066b0 <USBD_SetAddress+0x1a>
c0d066a0:	88c8      	ldrh	r0, [r1, #6]
c0d066a2:	2800      	cmp	r0, #0
c0d066a4:	d104      	bne.n	c0d066b0 <USBD_SetAddress+0x1a>
c0d066a6:	4626      	mov	r6, r4
c0d066a8:	36fc      	adds	r6, #252	; 0xfc
c0d066aa:	7830      	ldrb	r0, [r6, #0]
c0d066ac:	2803      	cmp	r0, #3
c0d066ae:	d103      	bne.n	c0d066b8 <USBD_SetAddress+0x22>
c0d066b0:	4620      	mov	r0, r4
c0d066b2:	f000 fae9 	bl	c0d06c88 <USBD_CtlError>
c0d066b6:	bd70      	pop	{r4, r5, r6, pc}
c0d066b8:	7888      	ldrb	r0, [r1, #2]
c0d066ba:	257f      	movs	r5, #127	; 0x7f
c0d066bc:	4005      	ands	r5, r0
c0d066be:	70b5      	strb	r5, [r6, #2]
c0d066c0:	4620      	mov	r0, r4
c0d066c2:	4629      	mov	r1, r5
c0d066c4:	f7ff fd2e 	bl	c0d06124 <USBD_LL_SetUSBAddress>
c0d066c8:	4620      	mov	r0, r4
c0d066ca:	f000 fb98 	bl	c0d06dfe <USBD_CtlSendStatus>
c0d066ce:	2d00      	cmp	r5, #0
c0d066d0:	d001      	beq.n	c0d066d6 <USBD_SetAddress+0x40>
c0d066d2:	2002      	movs	r0, #2
c0d066d4:	e000      	b.n	c0d066d8 <USBD_SetAddress+0x42>
c0d066d6:	2001      	movs	r0, #1
c0d066d8:	7030      	strb	r0, [r6, #0]
c0d066da:	bd70      	pop	{r4, r5, r6, pc}

c0d066dc <USBD_SetConfig>:
c0d066dc:	b570      	push	{r4, r5, r6, lr}
c0d066de:	460d      	mov	r5, r1
c0d066e0:	4604      	mov	r4, r0
c0d066e2:	788e      	ldrb	r6, [r1, #2]
c0d066e4:	2e02      	cmp	r6, #2
c0d066e6:	d21c      	bcs.n	c0d06722 <USBD_SetConfig+0x46>
c0d066e8:	20fc      	movs	r0, #252	; 0xfc
c0d066ea:	5c21      	ldrb	r1, [r4, r0]
c0d066ec:	4620      	mov	r0, r4
c0d066ee:	30fc      	adds	r0, #252	; 0xfc
c0d066f0:	2903      	cmp	r1, #3
c0d066f2:	d006      	beq.n	c0d06702 <USBD_SetConfig+0x26>
c0d066f4:	2902      	cmp	r1, #2
c0d066f6:	d114      	bne.n	c0d06722 <USBD_SetConfig+0x46>
c0d066f8:	2e00      	cmp	r6, #0
c0d066fa:	d022      	beq.n	c0d06742 <USBD_SetConfig+0x66>
c0d066fc:	2103      	movs	r1, #3
c0d066fe:	7001      	strb	r1, [r0, #0]
c0d06700:	e008      	b.n	c0d06714 <USBD_SetConfig+0x38>
c0d06702:	2e00      	cmp	r6, #0
c0d06704:	d012      	beq.n	c0d0672c <USBD_SetConfig+0x50>
c0d06706:	6860      	ldr	r0, [r4, #4]
c0d06708:	42b0      	cmp	r0, r6
c0d0670a:	d01a      	beq.n	c0d06742 <USBD_SetConfig+0x66>
c0d0670c:	b2c1      	uxtb	r1, r0
c0d0670e:	4620      	mov	r0, r4
c0d06710:	f7ff fdb0 	bl	c0d06274 <USBD_ClrClassConfig>
c0d06714:	6066      	str	r6, [r4, #4]
c0d06716:	4620      	mov	r0, r4
c0d06718:	4631      	mov	r1, r6
c0d0671a:	f7ff fd8f 	bl	c0d0623c <USBD_SetClassConfig>
c0d0671e:	2802      	cmp	r0, #2
c0d06720:	d10f      	bne.n	c0d06742 <USBD_SetConfig+0x66>
c0d06722:	4620      	mov	r0, r4
c0d06724:	4629      	mov	r1, r5
c0d06726:	f000 faaf 	bl	c0d06c88 <USBD_CtlError>
c0d0672a:	bd70      	pop	{r4, r5, r6, pc}
c0d0672c:	2100      	movs	r1, #0
c0d0672e:	6061      	str	r1, [r4, #4]
c0d06730:	2102      	movs	r1, #2
c0d06732:	7001      	strb	r1, [r0, #0]
c0d06734:	4620      	mov	r0, r4
c0d06736:	4631      	mov	r1, r6
c0d06738:	f7ff fd9c 	bl	c0d06274 <USBD_ClrClassConfig>
c0d0673c:	4620      	mov	r0, r4
c0d0673e:	f000 fb5e 	bl	c0d06dfe <USBD_CtlSendStatus>
c0d06742:	4620      	mov	r0, r4
c0d06744:	f000 fb5b 	bl	c0d06dfe <USBD_CtlSendStatus>
c0d06748:	bd70      	pop	{r4, r5, r6, pc}

c0d0674a <USBD_GetConfig>:
c0d0674a:	b580      	push	{r7, lr}
c0d0674c:	88ca      	ldrh	r2, [r1, #6]
c0d0674e:	2a01      	cmp	r2, #1
c0d06750:	d10a      	bne.n	c0d06768 <USBD_GetConfig+0x1e>
c0d06752:	22fc      	movs	r2, #252	; 0xfc
c0d06754:	5c82      	ldrb	r2, [r0, r2]
c0d06756:	2a03      	cmp	r2, #3
c0d06758:	d009      	beq.n	c0d0676e <USBD_GetConfig+0x24>
c0d0675a:	2a02      	cmp	r2, #2
c0d0675c:	d104      	bne.n	c0d06768 <USBD_GetConfig+0x1e>
c0d0675e:	2100      	movs	r1, #0
c0d06760:	6081      	str	r1, [r0, #8]
c0d06762:	4601      	mov	r1, r0
c0d06764:	3108      	adds	r1, #8
c0d06766:	e003      	b.n	c0d06770 <USBD_GetConfig+0x26>
c0d06768:	f000 fa8e 	bl	c0d06c88 <USBD_CtlError>
c0d0676c:	bd80      	pop	{r7, pc}
c0d0676e:	1d01      	adds	r1, r0, #4
c0d06770:	2201      	movs	r2, #1
c0d06772:	f000 fb19 	bl	c0d06da8 <USBD_CtlSendData>
c0d06776:	bd80      	pop	{r7, pc}

c0d06778 <USBD_GetStatus>:
c0d06778:	b5b0      	push	{r4, r5, r7, lr}
c0d0677a:	4604      	mov	r4, r0
c0d0677c:	20fc      	movs	r0, #252	; 0xfc
c0d0677e:	5c20      	ldrb	r0, [r4, r0]
c0d06780:	22fe      	movs	r2, #254	; 0xfe
c0d06782:	4002      	ands	r2, r0
c0d06784:	2a02      	cmp	r2, #2
c0d06786:	d10f      	bne.n	c0d067a8 <USBD_GetStatus+0x30>
c0d06788:	4620      	mov	r0, r4
c0d0678a:	30fc      	adds	r0, #252	; 0xfc
c0d0678c:	2101      	movs	r1, #1
c0d0678e:	60e1      	str	r1, [r4, #12]
c0d06790:	4625      	mov	r5, r4
c0d06792:	350c      	adds	r5, #12
c0d06794:	6880      	ldr	r0, [r0, #8]
c0d06796:	2800      	cmp	r0, #0
c0d06798:	d00a      	beq.n	c0d067b0 <USBD_GetStatus+0x38>
c0d0679a:	4620      	mov	r0, r4
c0d0679c:	f000 fb3b 	bl	c0d06e16 <USBD_CtlReceiveStatus>
c0d067a0:	68e1      	ldr	r1, [r4, #12]
c0d067a2:	2002      	movs	r0, #2
c0d067a4:	4308      	orrs	r0, r1
c0d067a6:	e004      	b.n	c0d067b2 <USBD_GetStatus+0x3a>
c0d067a8:	4620      	mov	r0, r4
c0d067aa:	f000 fa6d 	bl	c0d06c88 <USBD_CtlError>
c0d067ae:	bdb0      	pop	{r4, r5, r7, pc}
c0d067b0:	2003      	movs	r0, #3
c0d067b2:	60e0      	str	r0, [r4, #12]
c0d067b4:	2202      	movs	r2, #2
c0d067b6:	4620      	mov	r0, r4
c0d067b8:	4629      	mov	r1, r5
c0d067ba:	f000 faf5 	bl	c0d06da8 <USBD_CtlSendData>
c0d067be:	bdb0      	pop	{r4, r5, r7, pc}

c0d067c0 <USBD_SetFeature>:
c0d067c0:	b5b0      	push	{r4, r5, r7, lr}
c0d067c2:	4604      	mov	r4, r0
c0d067c4:	8848      	ldrh	r0, [r1, #2]
c0d067c6:	2801      	cmp	r0, #1
c0d067c8:	d118      	bne.n	c0d067fc <USBD_SetFeature+0x3c>
c0d067ca:	460d      	mov	r5, r1
c0d067cc:	2041      	movs	r0, #65	; 0x41
c0d067ce:	0080      	lsls	r0, r0, #2
c0d067d0:	2101      	movs	r1, #1
c0d067d2:	5021      	str	r1, [r4, r0]
c0d067d4:	7928      	ldrb	r0, [r5, #4]
c0d067d6:	2802      	cmp	r0, #2
c0d067d8:	d80d      	bhi.n	c0d067f6 <USBD_SetFeature+0x36>
c0d067da:	00c0      	lsls	r0, r0, #3
c0d067dc:	1820      	adds	r0, r4, r0
c0d067de:	2145      	movs	r1, #69	; 0x45
c0d067e0:	0089      	lsls	r1, r1, #2
c0d067e2:	5840      	ldr	r0, [r0, r1]
c0d067e4:	2800      	cmp	r0, #0
c0d067e6:	d006      	beq.n	c0d067f6 <USBD_SetFeature+0x36>
c0d067e8:	6880      	ldr	r0, [r0, #8]
c0d067ea:	f7fe f84f 	bl	c0d0488c <pic>
c0d067ee:	4602      	mov	r2, r0
c0d067f0:	4620      	mov	r0, r4
c0d067f2:	4629      	mov	r1, r5
c0d067f4:	4790      	blx	r2
c0d067f6:	4620      	mov	r0, r4
c0d067f8:	f000 fb01 	bl	c0d06dfe <USBD_CtlSendStatus>
c0d067fc:	bdb0      	pop	{r4, r5, r7, pc}

c0d067fe <USBD_ClrFeature>:
c0d067fe:	b5b0      	push	{r4, r5, r7, lr}
c0d06800:	460d      	mov	r5, r1
c0d06802:	4604      	mov	r4, r0
c0d06804:	20fc      	movs	r0, #252	; 0xfc
c0d06806:	5c20      	ldrb	r0, [r4, r0]
c0d06808:	21fe      	movs	r1, #254	; 0xfe
c0d0680a:	4001      	ands	r1, r0
c0d0680c:	2902      	cmp	r1, #2
c0d0680e:	d11b      	bne.n	c0d06848 <USBD_ClrFeature+0x4a>
c0d06810:	8868      	ldrh	r0, [r5, #2]
c0d06812:	2801      	cmp	r0, #1
c0d06814:	d11c      	bne.n	c0d06850 <USBD_ClrFeature+0x52>
c0d06816:	4620      	mov	r0, r4
c0d06818:	30fc      	adds	r0, #252	; 0xfc
c0d0681a:	2100      	movs	r1, #0
c0d0681c:	6081      	str	r1, [r0, #8]
c0d0681e:	7928      	ldrb	r0, [r5, #4]
c0d06820:	2802      	cmp	r0, #2
c0d06822:	d80d      	bhi.n	c0d06840 <USBD_ClrFeature+0x42>
c0d06824:	00c0      	lsls	r0, r0, #3
c0d06826:	1820      	adds	r0, r4, r0
c0d06828:	2145      	movs	r1, #69	; 0x45
c0d0682a:	0089      	lsls	r1, r1, #2
c0d0682c:	5840      	ldr	r0, [r0, r1]
c0d0682e:	2800      	cmp	r0, #0
c0d06830:	d006      	beq.n	c0d06840 <USBD_ClrFeature+0x42>
c0d06832:	6880      	ldr	r0, [r0, #8]
c0d06834:	f7fe f82a 	bl	c0d0488c <pic>
c0d06838:	4602      	mov	r2, r0
c0d0683a:	4620      	mov	r0, r4
c0d0683c:	4629      	mov	r1, r5
c0d0683e:	4790      	blx	r2
c0d06840:	4620      	mov	r0, r4
c0d06842:	f000 fadc 	bl	c0d06dfe <USBD_CtlSendStatus>
c0d06846:	bdb0      	pop	{r4, r5, r7, pc}
c0d06848:	4620      	mov	r0, r4
c0d0684a:	4629      	mov	r1, r5
c0d0684c:	f000 fa1c 	bl	c0d06c88 <USBD_CtlError>
c0d06850:	bdb0      	pop	{r4, r5, r7, pc}

c0d06852 <USBD_StdItfReq>:
c0d06852:	b5b0      	push	{r4, r5, r7, lr}
c0d06854:	460d      	mov	r5, r1
c0d06856:	4604      	mov	r4, r0
c0d06858:	20fc      	movs	r0, #252	; 0xfc
c0d0685a:	5c20      	ldrb	r0, [r4, r0]
c0d0685c:	2803      	cmp	r0, #3
c0d0685e:	d117      	bne.n	c0d06890 <USBD_StdItfReq+0x3e>
c0d06860:	7928      	ldrb	r0, [r5, #4]
c0d06862:	2802      	cmp	r0, #2
c0d06864:	d814      	bhi.n	c0d06890 <USBD_StdItfReq+0x3e>
c0d06866:	00c0      	lsls	r0, r0, #3
c0d06868:	1820      	adds	r0, r4, r0
c0d0686a:	2145      	movs	r1, #69	; 0x45
c0d0686c:	0089      	lsls	r1, r1, #2
c0d0686e:	5840      	ldr	r0, [r0, r1]
c0d06870:	2800      	cmp	r0, #0
c0d06872:	d00d      	beq.n	c0d06890 <USBD_StdItfReq+0x3e>
c0d06874:	6880      	ldr	r0, [r0, #8]
c0d06876:	f7fe f809 	bl	c0d0488c <pic>
c0d0687a:	4602      	mov	r2, r0
c0d0687c:	4620      	mov	r0, r4
c0d0687e:	4629      	mov	r1, r5
c0d06880:	4790      	blx	r2
c0d06882:	88e8      	ldrh	r0, [r5, #6]
c0d06884:	2800      	cmp	r0, #0
c0d06886:	d107      	bne.n	c0d06898 <USBD_StdItfReq+0x46>
c0d06888:	4620      	mov	r0, r4
c0d0688a:	f000 fab8 	bl	c0d06dfe <USBD_CtlSendStatus>
c0d0688e:	e003      	b.n	c0d06898 <USBD_StdItfReq+0x46>
c0d06890:	4620      	mov	r0, r4
c0d06892:	4629      	mov	r1, r5
c0d06894:	f000 f9f8 	bl	c0d06c88 <USBD_CtlError>
c0d06898:	2000      	movs	r0, #0
c0d0689a:	bdb0      	pop	{r4, r5, r7, pc}

c0d0689c <USBD_StdEPReq>:
c0d0689c:	b5b0      	push	{r4, r5, r7, lr}
c0d0689e:	b082      	sub	sp, #8
c0d068a0:	460d      	mov	r5, r1
c0d068a2:	4604      	mov	r4, r0
c0d068a4:	7909      	ldrb	r1, [r1, #4]
c0d068a6:	207f      	movs	r0, #127	; 0x7f
c0d068a8:	4008      	ands	r0, r1
c0d068aa:	2808      	cmp	r0, #8
c0d068ac:	d304      	bcc.n	c0d068b8 <USBD_StdEPReq+0x1c>
c0d068ae:	4620      	mov	r0, r4
c0d068b0:	4629      	mov	r1, r5
c0d068b2:	f000 f9e9 	bl	c0d06c88 <USBD_CtlError>
c0d068b6:	e073      	b.n	c0d069a0 <USBD_StdEPReq+0x104>
c0d068b8:	2902      	cmp	r1, #2
c0d068ba:	d813      	bhi.n	c0d068e4 <USBD_StdEPReq+0x48>
c0d068bc:	782a      	ldrb	r2, [r5, #0]
c0d068be:	2360      	movs	r3, #96	; 0x60
c0d068c0:	4013      	ands	r3, r2
c0d068c2:	2b20      	cmp	r3, #32
c0d068c4:	d10e      	bne.n	c0d068e4 <USBD_StdEPReq+0x48>
c0d068c6:	00ca      	lsls	r2, r1, #3
c0d068c8:	18a2      	adds	r2, r4, r2
c0d068ca:	2345      	movs	r3, #69	; 0x45
c0d068cc:	009b      	lsls	r3, r3, #2
c0d068ce:	58d2      	ldr	r2, [r2, r3]
c0d068d0:	2a00      	cmp	r2, #0
c0d068d2:	d007      	beq.n	c0d068e4 <USBD_StdEPReq+0x48>
c0d068d4:	6890      	ldr	r0, [r2, #8]
c0d068d6:	f7fd ffd9 	bl	c0d0488c <pic>
c0d068da:	4602      	mov	r2, r0
c0d068dc:	4620      	mov	r0, r4
c0d068de:	4629      	mov	r1, r5
c0d068e0:	4790      	blx	r2
c0d068e2:	e05d      	b.n	c0d069a0 <USBD_StdEPReq+0x104>
c0d068e4:	786a      	ldrb	r2, [r5, #1]
c0d068e6:	2a00      	cmp	r2, #0
c0d068e8:	d00a      	beq.n	c0d06900 <USBD_StdEPReq+0x64>
c0d068ea:	2a01      	cmp	r2, #1
c0d068ec:	d011      	beq.n	c0d06912 <USBD_StdEPReq+0x76>
c0d068ee:	2a03      	cmp	r2, #3
c0d068f0:	d156      	bne.n	c0d069a0 <USBD_StdEPReq+0x104>
c0d068f2:	20fc      	movs	r0, #252	; 0xfc
c0d068f4:	5c20      	ldrb	r0, [r4, r0]
c0d068f6:	2803      	cmp	r0, #3
c0d068f8:	d01a      	beq.n	c0d06930 <USBD_StdEPReq+0x94>
c0d068fa:	2802      	cmp	r0, #2
c0d068fc:	d00f      	beq.n	c0d0691e <USBD_StdEPReq+0x82>
c0d068fe:	e7d6      	b.n	c0d068ae <USBD_StdEPReq+0x12>
c0d06900:	22fc      	movs	r2, #252	; 0xfc
c0d06902:	5ca2      	ldrb	r2, [r4, r2]
c0d06904:	2a03      	cmp	r2, #3
c0d06906:	d02f      	beq.n	c0d06968 <USBD_StdEPReq+0xcc>
c0d06908:	2a02      	cmp	r2, #2
c0d0690a:	d1d0      	bne.n	c0d068ae <USBD_StdEPReq+0x12>
c0d0690c:	2800      	cmp	r0, #0
c0d0690e:	d10b      	bne.n	c0d06928 <USBD_StdEPReq+0x8c>
c0d06910:	e046      	b.n	c0d069a0 <USBD_StdEPReq+0x104>
c0d06912:	22fc      	movs	r2, #252	; 0xfc
c0d06914:	5ca2      	ldrb	r2, [r4, r2]
c0d06916:	2a03      	cmp	r2, #3
c0d06918:	d032      	beq.n	c0d06980 <USBD_StdEPReq+0xe4>
c0d0691a:	2a02      	cmp	r2, #2
c0d0691c:	d1c7      	bne.n	c0d068ae <USBD_StdEPReq+0x12>
c0d0691e:	2080      	movs	r0, #128	; 0x80
c0d06920:	460a      	mov	r2, r1
c0d06922:	4302      	orrs	r2, r0
c0d06924:	2a80      	cmp	r2, #128	; 0x80
c0d06926:	d03b      	beq.n	c0d069a0 <USBD_StdEPReq+0x104>
c0d06928:	4620      	mov	r0, r4
c0d0692a:	f7ff fba3 	bl	c0d06074 <USBD_LL_StallEP>
c0d0692e:	e037      	b.n	c0d069a0 <USBD_StdEPReq+0x104>
c0d06930:	8868      	ldrh	r0, [r5, #2]
c0d06932:	2800      	cmp	r0, #0
c0d06934:	d107      	bne.n	c0d06946 <USBD_StdEPReq+0xaa>
c0d06936:	2080      	movs	r0, #128	; 0x80
c0d06938:	4308      	orrs	r0, r1
c0d0693a:	2880      	cmp	r0, #128	; 0x80
c0d0693c:	d003      	beq.n	c0d06946 <USBD_StdEPReq+0xaa>
c0d0693e:	4620      	mov	r0, r4
c0d06940:	f7ff fb98 	bl	c0d06074 <USBD_LL_StallEP>
c0d06944:	7929      	ldrb	r1, [r5, #4]
c0d06946:	2902      	cmp	r1, #2
c0d06948:	d827      	bhi.n	c0d0699a <USBD_StdEPReq+0xfe>
c0d0694a:	00c8      	lsls	r0, r1, #3
c0d0694c:	1820      	adds	r0, r4, r0
c0d0694e:	2145      	movs	r1, #69	; 0x45
c0d06950:	0089      	lsls	r1, r1, #2
c0d06952:	5840      	ldr	r0, [r0, r1]
c0d06954:	2800      	cmp	r0, #0
c0d06956:	d020      	beq.n	c0d0699a <USBD_StdEPReq+0xfe>
c0d06958:	6880      	ldr	r0, [r0, #8]
c0d0695a:	f7fd ff97 	bl	c0d0488c <pic>
c0d0695e:	4602      	mov	r2, r0
c0d06960:	4620      	mov	r0, r4
c0d06962:	4629      	mov	r1, r5
c0d06964:	4790      	blx	r2
c0d06966:	e018      	b.n	c0d0699a <USBD_StdEPReq+0xfe>
c0d06968:	4620      	mov	r0, r4
c0d0696a:	f7ff fbcb 	bl	c0d06104 <USBD_LL_IsStallEP>
c0d0696e:	1e41      	subs	r1, r0, #1
c0d06970:	4188      	sbcs	r0, r1
c0d06972:	a901      	add	r1, sp, #4
c0d06974:	8008      	strh	r0, [r1, #0]
c0d06976:	2202      	movs	r2, #2
c0d06978:	4620      	mov	r0, r4
c0d0697a:	f000 fa15 	bl	c0d06da8 <USBD_CtlSendData>
c0d0697e:	e00f      	b.n	c0d069a0 <USBD_StdEPReq+0x104>
c0d06980:	886a      	ldrh	r2, [r5, #2]
c0d06982:	2a00      	cmp	r2, #0
c0d06984:	d10c      	bne.n	c0d069a0 <USBD_StdEPReq+0x104>
c0d06986:	2800      	cmp	r0, #0
c0d06988:	d007      	beq.n	c0d0699a <USBD_StdEPReq+0xfe>
c0d0698a:	4620      	mov	r0, r4
c0d0698c:	f7ff fb96 	bl	c0d060bc <USBD_LL_ClearStallEP>
c0d06990:	7928      	ldrb	r0, [r5, #4]
c0d06992:	2802      	cmp	r0, #2
c0d06994:	d801      	bhi.n	c0d0699a <USBD_StdEPReq+0xfe>
c0d06996:	00c0      	lsls	r0, r0, #3
c0d06998:	e7d8      	b.n	c0d0694c <USBD_StdEPReq+0xb0>
c0d0699a:	4620      	mov	r0, r4
c0d0699c:	f000 fa2f 	bl	c0d06dfe <USBD_CtlSendStatus>
c0d069a0:	2000      	movs	r0, #0
c0d069a2:	b002      	add	sp, #8
c0d069a4:	bdb0      	pop	{r4, r5, r7, pc}

c0d069a6 <USBD_ParseSetupRequest>:
c0d069a6:	780a      	ldrb	r2, [r1, #0]
c0d069a8:	7002      	strb	r2, [r0, #0]
c0d069aa:	784a      	ldrb	r2, [r1, #1]
c0d069ac:	7042      	strb	r2, [r0, #1]
c0d069ae:	788a      	ldrb	r2, [r1, #2]
c0d069b0:	78cb      	ldrb	r3, [r1, #3]
c0d069b2:	021b      	lsls	r3, r3, #8
c0d069b4:	189a      	adds	r2, r3, r2
c0d069b6:	8042      	strh	r2, [r0, #2]
c0d069b8:	790a      	ldrb	r2, [r1, #4]
c0d069ba:	794b      	ldrb	r3, [r1, #5]
c0d069bc:	021b      	lsls	r3, r3, #8
c0d069be:	189a      	adds	r2, r3, r2
c0d069c0:	8082      	strh	r2, [r0, #4]
c0d069c2:	798a      	ldrb	r2, [r1, #6]
c0d069c4:	79c9      	ldrb	r1, [r1, #7]
c0d069c6:	0209      	lsls	r1, r1, #8
c0d069c8:	1889      	adds	r1, r1, r2
c0d069ca:	80c1      	strh	r1, [r0, #6]
c0d069cc:	4770      	bx	lr

c0d069ce <USBD_CtlStall>:
c0d069ce:	b510      	push	{r4, lr}
c0d069d0:	4604      	mov	r4, r0
c0d069d2:	2180      	movs	r1, #128	; 0x80
c0d069d4:	f7ff fb4e 	bl	c0d06074 <USBD_LL_StallEP>
c0d069d8:	2100      	movs	r1, #0
c0d069da:	4620      	mov	r0, r4
c0d069dc:	f7ff fb4a 	bl	c0d06074 <USBD_LL_StallEP>
c0d069e0:	bd10      	pop	{r4, pc}

c0d069e2 <USBD_HID_Setup>:
c0d069e2:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d069e4:	b083      	sub	sp, #12
c0d069e6:	460e      	mov	r6, r1
c0d069e8:	4605      	mov	r5, r0
c0d069ea:	a802      	add	r0, sp, #8
c0d069ec:	2400      	movs	r4, #0
c0d069ee:	8004      	strh	r4, [r0, #0]
c0d069f0:	a801      	add	r0, sp, #4
c0d069f2:	7004      	strb	r4, [r0, #0]
c0d069f4:	7809      	ldrb	r1, [r1, #0]
c0d069f6:	2060      	movs	r0, #96	; 0x60
c0d069f8:	4008      	ands	r0, r1
c0d069fa:	d010      	beq.n	c0d06a1e <USBD_HID_Setup+0x3c>
c0d069fc:	2820      	cmp	r0, #32
c0d069fe:	d137      	bne.n	c0d06a70 <USBD_HID_Setup+0x8e>
c0d06a00:	7870      	ldrb	r0, [r6, #1]
c0d06a02:	4601      	mov	r1, r0
c0d06a04:	390a      	subs	r1, #10
c0d06a06:	2902      	cmp	r1, #2
c0d06a08:	d332      	bcc.n	c0d06a70 <USBD_HID_Setup+0x8e>
c0d06a0a:	2802      	cmp	r0, #2
c0d06a0c:	d01b      	beq.n	c0d06a46 <USBD_HID_Setup+0x64>
c0d06a0e:	2803      	cmp	r0, #3
c0d06a10:	d019      	beq.n	c0d06a46 <USBD_HID_Setup+0x64>
c0d06a12:	4628      	mov	r0, r5
c0d06a14:	4631      	mov	r1, r6
c0d06a16:	f000 f937 	bl	c0d06c88 <USBD_CtlError>
c0d06a1a:	2402      	movs	r4, #2
c0d06a1c:	e028      	b.n	c0d06a70 <USBD_HID_Setup+0x8e>
c0d06a1e:	7870      	ldrb	r0, [r6, #1]
c0d06a20:	280b      	cmp	r0, #11
c0d06a22:	d013      	beq.n	c0d06a4c <USBD_HID_Setup+0x6a>
c0d06a24:	280a      	cmp	r0, #10
c0d06a26:	d00e      	beq.n	c0d06a46 <USBD_HID_Setup+0x64>
c0d06a28:	2806      	cmp	r0, #6
c0d06a2a:	d121      	bne.n	c0d06a70 <USBD_HID_Setup+0x8e>
c0d06a2c:	78f0      	ldrb	r0, [r6, #3]
c0d06a2e:	2400      	movs	r4, #0
c0d06a30:	2821      	cmp	r0, #33	; 0x21
c0d06a32:	d00f      	beq.n	c0d06a54 <USBD_HID_Setup+0x72>
c0d06a34:	2822      	cmp	r0, #34	; 0x22
c0d06a36:	4622      	mov	r2, r4
c0d06a38:	4621      	mov	r1, r4
c0d06a3a:	d116      	bne.n	c0d06a6a <USBD_HID_Setup+0x88>
c0d06a3c:	af02      	add	r7, sp, #8
c0d06a3e:	4638      	mov	r0, r7
c0d06a40:	f000 f84a 	bl	c0d06ad8 <USBD_HID_GetReportDescriptor_impl>
c0d06a44:	e00a      	b.n	c0d06a5c <USBD_HID_Setup+0x7a>
c0d06a46:	a901      	add	r1, sp, #4
c0d06a48:	2201      	movs	r2, #1
c0d06a4a:	e00e      	b.n	c0d06a6a <USBD_HID_Setup+0x88>
c0d06a4c:	4628      	mov	r0, r5
c0d06a4e:	f000 f9d6 	bl	c0d06dfe <USBD_CtlSendStatus>
c0d06a52:	e00d      	b.n	c0d06a70 <USBD_HID_Setup+0x8e>
c0d06a54:	af02      	add	r7, sp, #8
c0d06a56:	4638      	mov	r0, r7
c0d06a58:	f000 f828 	bl	c0d06aac <USBD_HID_GetHidDescriptor_impl>
c0d06a5c:	4601      	mov	r1, r0
c0d06a5e:	883a      	ldrh	r2, [r7, #0]
c0d06a60:	88f0      	ldrh	r0, [r6, #6]
c0d06a62:	4282      	cmp	r2, r0
c0d06a64:	d300      	bcc.n	c0d06a68 <USBD_HID_Setup+0x86>
c0d06a66:	4602      	mov	r2, r0
c0d06a68:	803a      	strh	r2, [r7, #0]
c0d06a6a:	4628      	mov	r0, r5
c0d06a6c:	f000 f99c 	bl	c0d06da8 <USBD_CtlSendData>
c0d06a70:	4620      	mov	r0, r4
c0d06a72:	b003      	add	sp, #12
c0d06a74:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d06a76 <USBD_HID_Init>:
c0d06a76:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d06a78:	b081      	sub	sp, #4
c0d06a7a:	4604      	mov	r4, r0
c0d06a7c:	2182      	movs	r1, #130	; 0x82
c0d06a7e:	2603      	movs	r6, #3
c0d06a80:	2540      	movs	r5, #64	; 0x40
c0d06a82:	4632      	mov	r2, r6
c0d06a84:	462b      	mov	r3, r5
c0d06a86:	f7ff fac5 	bl	c0d06014 <USBD_LL_OpenEP>
c0d06a8a:	2702      	movs	r7, #2
c0d06a8c:	4620      	mov	r0, r4
c0d06a8e:	4639      	mov	r1, r7
c0d06a90:	4632      	mov	r2, r6
c0d06a92:	462b      	mov	r3, r5
c0d06a94:	f7ff fabe 	bl	c0d06014 <USBD_LL_OpenEP>
c0d06a98:	4620      	mov	r0, r4
c0d06a9a:	4639      	mov	r1, r7
c0d06a9c:	462a      	mov	r2, r5
c0d06a9e:	f7ff fb6c 	bl	c0d0617a <USBD_LL_PrepareReceive>
c0d06aa2:	2000      	movs	r0, #0
c0d06aa4:	b001      	add	sp, #4
c0d06aa6:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d06aa8 <USBD_HID_DeInit>:
c0d06aa8:	2000      	movs	r0, #0
c0d06aaa:	4770      	bx	lr

c0d06aac <USBD_HID_GetHidDescriptor_impl>:
c0d06aac:	4601      	mov	r1, r0
c0d06aae:	2043      	movs	r0, #67	; 0x43
c0d06ab0:	0080      	lsls	r0, r0, #2
c0d06ab2:	4a07      	ldr	r2, [pc, #28]	; (c0d06ad0 <USBD_HID_GetHidDescriptor_impl+0x24>)
c0d06ab4:	5c12      	ldrb	r2, [r2, r0]
c0d06ab6:	2000      	movs	r0, #0
c0d06ab8:	2a00      	cmp	r2, #0
c0d06aba:	d001      	beq.n	c0d06ac0 <USBD_HID_GetHidDescriptor_impl+0x14>
c0d06abc:	4603      	mov	r3, r0
c0d06abe:	e000      	b.n	c0d06ac2 <USBD_HID_GetHidDescriptor_impl+0x16>
c0d06ac0:	2309      	movs	r3, #9
c0d06ac2:	800b      	strh	r3, [r1, #0]
c0d06ac4:	2a00      	cmp	r2, #0
c0d06ac6:	d101      	bne.n	c0d06acc <USBD_HID_GetHidDescriptor_impl+0x20>
c0d06ac8:	4802      	ldr	r0, [pc, #8]	; (c0d06ad4 <USBD_HID_GetHidDescriptor_impl+0x28>)
c0d06aca:	4478      	add	r0, pc
c0d06acc:	4770      	bx	lr
c0d06ace:	46c0      	nop			; (mov r8, r8)
c0d06ad0:	20000abc 	.word	0x20000abc
c0d06ad4:	000036a2 	.word	0x000036a2

c0d06ad8 <USBD_HID_GetReportDescriptor_impl>:
c0d06ad8:	4601      	mov	r1, r0
c0d06ada:	2043      	movs	r0, #67	; 0x43
c0d06adc:	0080      	lsls	r0, r0, #2
c0d06ade:	4a07      	ldr	r2, [pc, #28]	; (c0d06afc <USBD_HID_GetReportDescriptor_impl+0x24>)
c0d06ae0:	5c12      	ldrb	r2, [r2, r0]
c0d06ae2:	2000      	movs	r0, #0
c0d06ae4:	2a00      	cmp	r2, #0
c0d06ae6:	d001      	beq.n	c0d06aec <USBD_HID_GetReportDescriptor_impl+0x14>
c0d06ae8:	4603      	mov	r3, r0
c0d06aea:	e000      	b.n	c0d06aee <USBD_HID_GetReportDescriptor_impl+0x16>
c0d06aec:	2322      	movs	r3, #34	; 0x22
c0d06aee:	800b      	strh	r3, [r1, #0]
c0d06af0:	2a00      	cmp	r2, #0
c0d06af2:	d101      	bne.n	c0d06af8 <USBD_HID_GetReportDescriptor_impl+0x20>
c0d06af4:	4802      	ldr	r0, [pc, #8]	; (c0d06b00 <USBD_HID_GetReportDescriptor_impl+0x28>)
c0d06af6:	4478      	add	r0, pc
c0d06af8:	4770      	bx	lr
c0d06afa:	46c0      	nop			; (mov r8, r8)
c0d06afc:	20000abc 	.word	0x20000abc
c0d06b00:	0000367f 	.word	0x0000367f

c0d06b04 <USBD_HID_DataIn_impl>:
c0d06b04:	b580      	push	{r7, lr}
c0d06b06:	2902      	cmp	r1, #2
c0d06b08:	d103      	bne.n	c0d06b12 <USBD_HID_DataIn_impl+0xe>
c0d06b0a:	4803      	ldr	r0, [pc, #12]	; (c0d06b18 <USBD_HID_DataIn_impl+0x14>)
c0d06b0c:	4478      	add	r0, pc
c0d06b0e:	f7fc f957 	bl	c0d02dc0 <io_usb_hid_sent>
c0d06b12:	2000      	movs	r0, #0
c0d06b14:	bd80      	pop	{r7, pc}
c0d06b16:	46c0      	nop			; (mov r8, r8)
c0d06b18:	ffffc125 	.word	0xffffc125

c0d06b1c <USBD_HID_DataOut_impl>:
c0d06b1c:	b570      	push	{r4, r5, r6, lr}
c0d06b1e:	2902      	cmp	r1, #2
c0d06b20:	d11c      	bne.n	c0d06b5c <USBD_HID_DataOut_impl+0x40>
c0d06b22:	461c      	mov	r4, r3
c0d06b24:	4615      	mov	r5, r2
c0d06b26:	2102      	movs	r1, #2
c0d06b28:	2240      	movs	r2, #64	; 0x40
c0d06b2a:	f7ff fb26 	bl	c0d0617a <USBD_LL_PrepareReceive>
c0d06b2e:	4e0c      	ldr	r6, [pc, #48]	; (c0d06b60 <USBD_HID_DataOut_impl+0x44>)
c0d06b30:	79b0      	ldrb	r0, [r6, #6]
c0d06b32:	2800      	cmp	r0, #0
c0d06b34:	d112      	bne.n	c0d06b5c <USBD_HID_DataOut_impl+0x40>
c0d06b36:	2002      	movs	r0, #2
c0d06b38:	f7fc f84a 	bl	c0d02bd0 <io_seproxyhal_get_ep_rx_size>
c0d06b3c:	4602      	mov	r2, r0
c0d06b3e:	480a      	ldr	r0, [pc, #40]	; (c0d06b68 <USBD_HID_DataOut_impl+0x4c>)
c0d06b40:	4478      	add	r0, pc
c0d06b42:	4629      	mov	r1, r5
c0d06b44:	4623      	mov	r3, r4
c0d06b46:	f7fc f87d 	bl	c0d02c44 <io_usb_hid_receive>
c0d06b4a:	2802      	cmp	r0, #2
c0d06b4c:	d106      	bne.n	c0d06b5c <USBD_HID_DataOut_impl+0x40>
c0d06b4e:	2007      	movs	r0, #7
c0d06b50:	7030      	strb	r0, [r6, #0]
c0d06b52:	2001      	movs	r0, #1
c0d06b54:	71b0      	strb	r0, [r6, #6]
c0d06b56:	4803      	ldr	r0, [pc, #12]	; (c0d06b64 <USBD_HID_DataOut_impl+0x48>)
c0d06b58:	6800      	ldr	r0, [r0, #0]
c0d06b5a:	8070      	strh	r0, [r6, #2]
c0d06b5c:	2000      	movs	r0, #0
c0d06b5e:	bd70      	pop	{r4, r5, r6, pc}
c0d06b60:	2000040c 	.word	0x2000040c
c0d06b64:	2000047c 	.word	0x2000047c
c0d06b68:	ffffc0f1 	.word	0xffffc0f1

c0d06b6c <USBD_WEBUSB_Init>:
c0d06b6c:	b570      	push	{r4, r5, r6, lr}
c0d06b6e:	4604      	mov	r4, r0
c0d06b70:	2183      	movs	r1, #131	; 0x83
c0d06b72:	2503      	movs	r5, #3
c0d06b74:	2640      	movs	r6, #64	; 0x40
c0d06b76:	462a      	mov	r2, r5
c0d06b78:	4633      	mov	r3, r6
c0d06b7a:	f7ff fa4b 	bl	c0d06014 <USBD_LL_OpenEP>
c0d06b7e:	4620      	mov	r0, r4
c0d06b80:	4629      	mov	r1, r5
c0d06b82:	462a      	mov	r2, r5
c0d06b84:	4633      	mov	r3, r6
c0d06b86:	f7ff fa45 	bl	c0d06014 <USBD_LL_OpenEP>
c0d06b8a:	4620      	mov	r0, r4
c0d06b8c:	4629      	mov	r1, r5
c0d06b8e:	4632      	mov	r2, r6
c0d06b90:	f7ff faf3 	bl	c0d0617a <USBD_LL_PrepareReceive>
c0d06b94:	2000      	movs	r0, #0
c0d06b96:	bd70      	pop	{r4, r5, r6, pc}

c0d06b98 <USBD_WEBUSB_DeInit>:
c0d06b98:	2000      	movs	r0, #0
c0d06b9a:	4770      	bx	lr

c0d06b9c <USBD_WEBUSB_Setup>:
c0d06b9c:	2000      	movs	r0, #0
c0d06b9e:	4770      	bx	lr

c0d06ba0 <USBD_WEBUSB_DataIn>:
c0d06ba0:	b580      	push	{r7, lr}
c0d06ba2:	2903      	cmp	r1, #3
c0d06ba4:	d103      	bne.n	c0d06bae <USBD_WEBUSB_DataIn+0xe>
c0d06ba6:	4803      	ldr	r0, [pc, #12]	; (c0d06bb4 <USBD_WEBUSB_DataIn+0x14>)
c0d06ba8:	4478      	add	r0, pc
c0d06baa:	f7fc f909 	bl	c0d02dc0 <io_usb_hid_sent>
c0d06bae:	2000      	movs	r0, #0
c0d06bb0:	bd80      	pop	{r7, pc}
c0d06bb2:	46c0      	nop			; (mov r8, r8)
c0d06bb4:	ffffba69 	.word	0xffffba69

c0d06bb8 <USBD_WEBUSB_DataOut>:
c0d06bb8:	b570      	push	{r4, r5, r6, lr}
c0d06bba:	2903      	cmp	r1, #3
c0d06bbc:	d11c      	bne.n	c0d06bf8 <USBD_WEBUSB_DataOut+0x40>
c0d06bbe:	461c      	mov	r4, r3
c0d06bc0:	4615      	mov	r5, r2
c0d06bc2:	2103      	movs	r1, #3
c0d06bc4:	2240      	movs	r2, #64	; 0x40
c0d06bc6:	f7ff fad8 	bl	c0d0617a <USBD_LL_PrepareReceive>
c0d06bca:	4e0c      	ldr	r6, [pc, #48]	; (c0d06bfc <USBD_WEBUSB_DataOut+0x44>)
c0d06bcc:	79b0      	ldrb	r0, [r6, #6]
c0d06bce:	2800      	cmp	r0, #0
c0d06bd0:	d112      	bne.n	c0d06bf8 <USBD_WEBUSB_DataOut+0x40>
c0d06bd2:	2003      	movs	r0, #3
c0d06bd4:	f7fb fffc 	bl	c0d02bd0 <io_seproxyhal_get_ep_rx_size>
c0d06bd8:	4602      	mov	r2, r0
c0d06bda:	480a      	ldr	r0, [pc, #40]	; (c0d06c04 <USBD_WEBUSB_DataOut+0x4c>)
c0d06bdc:	4478      	add	r0, pc
c0d06bde:	4629      	mov	r1, r5
c0d06be0:	4623      	mov	r3, r4
c0d06be2:	f7fc f82f 	bl	c0d02c44 <io_usb_hid_receive>
c0d06be6:	2802      	cmp	r0, #2
c0d06be8:	d106      	bne.n	c0d06bf8 <USBD_WEBUSB_DataOut+0x40>
c0d06bea:	200b      	movs	r0, #11
c0d06bec:	7030      	strb	r0, [r6, #0]
c0d06bee:	2005      	movs	r0, #5
c0d06bf0:	71b0      	strb	r0, [r6, #6]
c0d06bf2:	4803      	ldr	r0, [pc, #12]	; (c0d06c00 <USBD_WEBUSB_DataOut+0x48>)
c0d06bf4:	6800      	ldr	r0, [r0, #0]
c0d06bf6:	8070      	strh	r0, [r6, #2]
c0d06bf8:	2000      	movs	r0, #0
c0d06bfa:	bd70      	pop	{r4, r5, r6, pc}
c0d06bfc:	2000040c 	.word	0x2000040c
c0d06c00:	2000047c 	.word	0x2000047c
c0d06c04:	ffffba35 	.word	0xffffba35

c0d06c08 <USBD_DeviceDescriptor>:
c0d06c08:	2012      	movs	r0, #18
c0d06c0a:	8008      	strh	r0, [r1, #0]
c0d06c0c:	4801      	ldr	r0, [pc, #4]	; (c0d06c14 <USBD_DeviceDescriptor+0xc>)
c0d06c0e:	4478      	add	r0, pc
c0d06c10:	4770      	bx	lr
c0d06c12:	46c0      	nop			; (mov r8, r8)
c0d06c14:	000037aa 	.word	0x000037aa

c0d06c18 <USBD_LangIDStrDescriptor>:
c0d06c18:	2004      	movs	r0, #4
c0d06c1a:	8008      	strh	r0, [r1, #0]
c0d06c1c:	4801      	ldr	r0, [pc, #4]	; (c0d06c24 <USBD_LangIDStrDescriptor+0xc>)
c0d06c1e:	4478      	add	r0, pc
c0d06c20:	4770      	bx	lr
c0d06c22:	46c0      	nop			; (mov r8, r8)
c0d06c24:	000037ac 	.word	0x000037ac

c0d06c28 <USBD_ManufacturerStrDescriptor>:
c0d06c28:	200e      	movs	r0, #14
c0d06c2a:	8008      	strh	r0, [r1, #0]
c0d06c2c:	4801      	ldr	r0, [pc, #4]	; (c0d06c34 <USBD_ManufacturerStrDescriptor+0xc>)
c0d06c2e:	4478      	add	r0, pc
c0d06c30:	4770      	bx	lr
c0d06c32:	46c0      	nop			; (mov r8, r8)
c0d06c34:	000037a0 	.word	0x000037a0

c0d06c38 <USBD_ProductStrDescriptor>:
c0d06c38:	200e      	movs	r0, #14
c0d06c3a:	8008      	strh	r0, [r1, #0]
c0d06c3c:	4801      	ldr	r0, [pc, #4]	; (c0d06c44 <USBD_ProductStrDescriptor+0xc>)
c0d06c3e:	4478      	add	r0, pc
c0d06c40:	4770      	bx	lr
c0d06c42:	46c0      	nop			; (mov r8, r8)
c0d06c44:	0000379e 	.word	0x0000379e

c0d06c48 <USBD_SerialStrDescriptor>:
c0d06c48:	200a      	movs	r0, #10
c0d06c4a:	8008      	strh	r0, [r1, #0]
c0d06c4c:	4801      	ldr	r0, [pc, #4]	; (c0d06c54 <USBD_SerialStrDescriptor+0xc>)
c0d06c4e:	4478      	add	r0, pc
c0d06c50:	4770      	bx	lr
c0d06c52:	46c0      	nop			; (mov r8, r8)
c0d06c54:	0000379c 	.word	0x0000379c

c0d06c58 <USBD_ConfigStrDescriptor>:
c0d06c58:	200e      	movs	r0, #14
c0d06c5a:	8008      	strh	r0, [r1, #0]
c0d06c5c:	4801      	ldr	r0, [pc, #4]	; (c0d06c64 <USBD_ConfigStrDescriptor+0xc>)
c0d06c5e:	4478      	add	r0, pc
c0d06c60:	4770      	bx	lr
c0d06c62:	46c0      	nop			; (mov r8, r8)
c0d06c64:	0000377e 	.word	0x0000377e

c0d06c68 <USBD_InterfaceStrDescriptor>:
c0d06c68:	200e      	movs	r0, #14
c0d06c6a:	8008      	strh	r0, [r1, #0]
c0d06c6c:	4801      	ldr	r0, [pc, #4]	; (c0d06c74 <USBD_InterfaceStrDescriptor+0xc>)
c0d06c6e:	4478      	add	r0, pc
c0d06c70:	4770      	bx	lr
c0d06c72:	46c0      	nop			; (mov r8, r8)
c0d06c74:	0000376e 	.word	0x0000376e

c0d06c78 <USBD_BOSDescriptor>:
c0d06c78:	2039      	movs	r0, #57	; 0x39
c0d06c7a:	8008      	strh	r0, [r1, #0]
c0d06c7c:	4801      	ldr	r0, [pc, #4]	; (c0d06c84 <USBD_BOSDescriptor+0xc>)
c0d06c7e:	4478      	add	r0, pc
c0d06c80:	4770      	bx	lr
c0d06c82:	46c0      	nop			; (mov r8, r8)
c0d06c84:	00003519 	.word	0x00003519

c0d06c88 <USBD_CtlError>:
c0d06c88:	b580      	push	{r7, lr}
c0d06c8a:	780a      	ldrb	r2, [r1, #0]
c0d06c8c:	b252      	sxtb	r2, r2
c0d06c8e:	2a00      	cmp	r2, #0
c0d06c90:	d402      	bmi.n	c0d06c98 <USBD_CtlError+0x10>
c0d06c92:	f7ff fe9c 	bl	c0d069ce <USBD_CtlStall>
c0d06c96:	bd80      	pop	{r7, pc}
c0d06c98:	784a      	ldrb	r2, [r1, #1]
c0d06c9a:	2a77      	cmp	r2, #119	; 0x77
c0d06c9c:	d00c      	beq.n	c0d06cb8 <USBD_CtlError+0x30>
c0d06c9e:	2a06      	cmp	r2, #6
c0d06ca0:	d1f7      	bne.n	c0d06c92 <USBD_CtlError+0xa>
c0d06ca2:	884a      	ldrh	r2, [r1, #2]
c0d06ca4:	4b14      	ldr	r3, [pc, #80]	; (c0d06cf8 <USBD_CtlError+0x70>)
c0d06ca6:	429a      	cmp	r2, r3
c0d06ca8:	d1f3      	bne.n	c0d06c92 <USBD_CtlError+0xa>
c0d06caa:	88ca      	ldrh	r2, [r1, #6]
c0d06cac:	2a12      	cmp	r2, #18
c0d06cae:	d300      	bcc.n	c0d06cb2 <USBD_CtlError+0x2a>
c0d06cb0:	2212      	movs	r2, #18
c0d06cb2:	4912      	ldr	r1, [pc, #72]	; (c0d06cfc <USBD_CtlError+0x74>)
c0d06cb4:	4479      	add	r1, pc
c0d06cb6:	e01c      	b.n	c0d06cf2 <USBD_CtlError+0x6a>
c0d06cb8:	888a      	ldrh	r2, [r1, #4]
c0d06cba:	2a04      	cmp	r2, #4
c0d06cbc:	d106      	bne.n	c0d06ccc <USBD_CtlError+0x44>
c0d06cbe:	88ca      	ldrh	r2, [r1, #6]
c0d06cc0:	2a28      	cmp	r2, #40	; 0x28
c0d06cc2:	d300      	bcc.n	c0d06cc6 <USBD_CtlError+0x3e>
c0d06cc4:	2228      	movs	r2, #40	; 0x28
c0d06cc6:	490e      	ldr	r1, [pc, #56]	; (c0d06d00 <USBD_CtlError+0x78>)
c0d06cc8:	4479      	add	r1, pc
c0d06cca:	e012      	b.n	c0d06cf2 <USBD_CtlError+0x6a>
c0d06ccc:	888a      	ldrh	r2, [r1, #4]
c0d06cce:	2a05      	cmp	r2, #5
c0d06cd0:	d106      	bne.n	c0d06ce0 <USBD_CtlError+0x58>
c0d06cd2:	88ca      	ldrh	r2, [r1, #6]
c0d06cd4:	2a92      	cmp	r2, #146	; 0x92
c0d06cd6:	d300      	bcc.n	c0d06cda <USBD_CtlError+0x52>
c0d06cd8:	2292      	movs	r2, #146	; 0x92
c0d06cda:	490a      	ldr	r1, [pc, #40]	; (c0d06d04 <USBD_CtlError+0x7c>)
c0d06cdc:	4479      	add	r1, pc
c0d06cde:	e008      	b.n	c0d06cf2 <USBD_CtlError+0x6a>
c0d06ce0:	888a      	ldrh	r2, [r1, #4]
c0d06ce2:	2a07      	cmp	r2, #7
c0d06ce4:	d1d5      	bne.n	c0d06c92 <USBD_CtlError+0xa>
c0d06ce6:	88ca      	ldrh	r2, [r1, #6]
c0d06ce8:	2ab2      	cmp	r2, #178	; 0xb2
c0d06cea:	d300      	bcc.n	c0d06cee <USBD_CtlError+0x66>
c0d06cec:	22b2      	movs	r2, #178	; 0xb2
c0d06cee:	4906      	ldr	r1, [pc, #24]	; (c0d06d08 <USBD_CtlError+0x80>)
c0d06cf0:	4479      	add	r1, pc
c0d06cf2:	f000 f859 	bl	c0d06da8 <USBD_CtlSendData>
c0d06cf6:	bd80      	pop	{r7, pc}
c0d06cf8:	000003ee 	.word	0x000003ee
c0d06cfc:	0000353c 	.word	0x0000353c
c0d06d00:	0000372c 	.word	0x0000372c
c0d06d04:	00003526 	.word	0x00003526
c0d06d08:	000035a4 	.word	0x000035a4

c0d06d0c <USB_power>:
c0d06d0c:	b5b0      	push	{r4, r5, r7, lr}
c0d06d0e:	4604      	mov	r4, r0
c0d06d10:	204d      	movs	r0, #77	; 0x4d
c0d06d12:	0085      	lsls	r5, r0, #2
c0d06d14:	4817      	ldr	r0, [pc, #92]	; (c0d06d74 <USB_power+0x68>)
c0d06d16:	4629      	mov	r1, r5
c0d06d18:	f001 f97a 	bl	c0d08010 <__aeabi_memclr>
c0d06d1c:	4816      	ldr	r0, [pc, #88]	; (c0d06d78 <USB_power+0x6c>)
c0d06d1e:	2100      	movs	r1, #0
c0d06d20:	7481      	strb	r1, [r0, #18]
c0d06d22:	8201      	strh	r1, [r0, #16]
c0d06d24:	60c1      	str	r1, [r0, #12]
c0d06d26:	6141      	str	r1, [r0, #20]
c0d06d28:	6181      	str	r1, [r0, #24]
c0d06d2a:	61c1      	str	r1, [r0, #28]
c0d06d2c:	8401      	strh	r1, [r0, #32]
c0d06d2e:	2c00      	cmp	r4, #0
c0d06d30:	d01b      	beq.n	c0d06d6a <USB_power+0x5e>
c0d06d32:	4c10      	ldr	r4, [pc, #64]	; (c0d06d74 <USB_power+0x68>)
c0d06d34:	4620      	mov	r0, r4
c0d06d36:	4629      	mov	r1, r5
c0d06d38:	f001 f96a 	bl	c0d08010 <__aeabi_memclr>
c0d06d3c:	490f      	ldr	r1, [pc, #60]	; (c0d06d7c <USB_power+0x70>)
c0d06d3e:	4479      	add	r1, pc
c0d06d40:	2500      	movs	r5, #0
c0d06d42:	4620      	mov	r0, r4
c0d06d44:	462a      	mov	r2, r5
c0d06d46:	f7ff fa2b 	bl	c0d061a0 <USBD_Init>
c0d06d4a:	4a0d      	ldr	r2, [pc, #52]	; (c0d06d80 <USB_power+0x74>)
c0d06d4c:	447a      	add	r2, pc
c0d06d4e:	4628      	mov	r0, r5
c0d06d50:	4621      	mov	r1, r4
c0d06d52:	f7ff fa60 	bl	c0d06216 <USBD_RegisterClassForInterface>
c0d06d56:	2001      	movs	r0, #1
c0d06d58:	4a0a      	ldr	r2, [pc, #40]	; (c0d06d84 <USB_power+0x78>)
c0d06d5a:	447a      	add	r2, pc
c0d06d5c:	4621      	mov	r1, r4
c0d06d5e:	f7ff fa5a 	bl	c0d06216 <USBD_RegisterClassForInterface>
c0d06d62:	4620      	mov	r0, r4
c0d06d64:	f7ff fa65 	bl	c0d06232 <USBD_Start>
c0d06d68:	bdb0      	pop	{r4, r5, r7, pc}
c0d06d6a:	4802      	ldr	r0, [pc, #8]	; (c0d06d74 <USB_power+0x68>)
c0d06d6c:	f7ff fa34 	bl	c0d061d8 <USBD_DeInit>
c0d06d70:	bdb0      	pop	{r4, r5, r7, pc}
c0d06d72:	46c0      	nop			; (mov r8, r8)
c0d06d74:	20000abc 	.word	0x20000abc
c0d06d78:	2000040c 	.word	0x2000040c
c0d06d7c:	00003492 	.word	0x00003492
c0d06d80:	000035fc 	.word	0x000035fc
c0d06d84:	00003626 	.word	0x00003626

c0d06d88 <USBD_GetCfgDesc_impl>:
c0d06d88:	2140      	movs	r1, #64	; 0x40
c0d06d8a:	8001      	strh	r1, [r0, #0]
c0d06d8c:	4801      	ldr	r0, [pc, #4]	; (c0d06d94 <USBD_GetCfgDesc_impl+0xc>)
c0d06d8e:	4478      	add	r0, pc
c0d06d90:	4770      	bx	lr
c0d06d92:	46c0      	nop			; (mov r8, r8)
c0d06d94:	0000368e 	.word	0x0000368e

c0d06d98 <USBD_GetDeviceQualifierDesc_impl>:
c0d06d98:	210a      	movs	r1, #10
c0d06d9a:	8001      	strh	r1, [r0, #0]
c0d06d9c:	4801      	ldr	r0, [pc, #4]	; (c0d06da4 <USBD_GetDeviceQualifierDesc_impl+0xc>)
c0d06d9e:	4478      	add	r0, pc
c0d06da0:	4770      	bx	lr
c0d06da2:	46c0      	nop			; (mov r8, r8)
c0d06da4:	000036be 	.word	0x000036be

c0d06da8 <USBD_CtlSendData>:
c0d06da8:	b5b0      	push	{r4, r5, r7, lr}
c0d06daa:	460c      	mov	r4, r1
c0d06dac:	21f4      	movs	r1, #244	; 0xf4
c0d06dae:	2302      	movs	r3, #2
c0d06db0:	5043      	str	r3, [r0, r1]
c0d06db2:	6182      	str	r2, [r0, #24]
c0d06db4:	61c2      	str	r2, [r0, #28]
c0d06db6:	4601      	mov	r1, r0
c0d06db8:	31f4      	adds	r1, #244	; 0xf4
c0d06dba:	63cc      	str	r4, [r1, #60]	; 0x3c
c0d06dbc:	6a01      	ldr	r1, [r0, #32]
c0d06dbe:	4291      	cmp	r1, r2
c0d06dc0:	d800      	bhi.n	c0d06dc4 <USBD_CtlSendData+0x1c>
c0d06dc2:	460a      	mov	r2, r1
c0d06dc4:	b293      	uxth	r3, r2
c0d06dc6:	2500      	movs	r5, #0
c0d06dc8:	4629      	mov	r1, r5
c0d06dca:	4622      	mov	r2, r4
c0d06dcc:	f7ff f9bc 	bl	c0d06148 <USBD_LL_Transmit>
c0d06dd0:	4628      	mov	r0, r5
c0d06dd2:	bdb0      	pop	{r4, r5, r7, pc}

c0d06dd4 <USBD_CtlContinueSendData>:
c0d06dd4:	b5b0      	push	{r4, r5, r7, lr}
c0d06dd6:	460c      	mov	r4, r1
c0d06dd8:	6a01      	ldr	r1, [r0, #32]
c0d06dda:	4291      	cmp	r1, r2
c0d06ddc:	d800      	bhi.n	c0d06de0 <USBD_CtlContinueSendData+0xc>
c0d06dde:	460a      	mov	r2, r1
c0d06de0:	b293      	uxth	r3, r2
c0d06de2:	2500      	movs	r5, #0
c0d06de4:	4629      	mov	r1, r5
c0d06de6:	4622      	mov	r2, r4
c0d06de8:	f7ff f9ae 	bl	c0d06148 <USBD_LL_Transmit>
c0d06dec:	4628      	mov	r0, r5
c0d06dee:	bdb0      	pop	{r4, r5, r7, pc}

c0d06df0 <USBD_CtlContinueRx>:
c0d06df0:	b510      	push	{r4, lr}
c0d06df2:	2400      	movs	r4, #0
c0d06df4:	4621      	mov	r1, r4
c0d06df6:	f7ff f9c0 	bl	c0d0617a <USBD_LL_PrepareReceive>
c0d06dfa:	4620      	mov	r0, r4
c0d06dfc:	bd10      	pop	{r4, pc}

c0d06dfe <USBD_CtlSendStatus>:
c0d06dfe:	b510      	push	{r4, lr}
c0d06e00:	21f4      	movs	r1, #244	; 0xf4
c0d06e02:	2204      	movs	r2, #4
c0d06e04:	5042      	str	r2, [r0, r1]
c0d06e06:	2400      	movs	r4, #0
c0d06e08:	4621      	mov	r1, r4
c0d06e0a:	4622      	mov	r2, r4
c0d06e0c:	4623      	mov	r3, r4
c0d06e0e:	f7ff f99b 	bl	c0d06148 <USBD_LL_Transmit>
c0d06e12:	4620      	mov	r0, r4
c0d06e14:	bd10      	pop	{r4, pc}

c0d06e16 <USBD_CtlReceiveStatus>:
c0d06e16:	b510      	push	{r4, lr}
c0d06e18:	21f4      	movs	r1, #244	; 0xf4
c0d06e1a:	2205      	movs	r2, #5
c0d06e1c:	5042      	str	r2, [r0, r1]
c0d06e1e:	2400      	movs	r4, #0
c0d06e20:	4621      	mov	r1, r4
c0d06e22:	4622      	mov	r2, r4
c0d06e24:	f7ff f9a9 	bl	c0d0617a <USBD_LL_PrepareReceive>
c0d06e28:	4620      	mov	r0, r4
c0d06e2a:	bd10      	pop	{r4, pc}

c0d06e2c <ux_menu_element_preprocessor>:
c0d06e2c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d06e2e:	b083      	sub	sp, #12
c0d06e30:	4606      	mov	r6, r0
c0d06e32:	4866      	ldr	r0, [pc, #408]	; (c0d06fcc <ux_menu_element_preprocessor+0x1a0>)
c0d06e34:	1d07      	adds	r7, r0, #4
c0d06e36:	2220      	movs	r2, #32
c0d06e38:	4638      	mov	r0, r7
c0d06e3a:	4631      	mov	r1, r6
c0d06e3c:	f001 f8f2 	bl	c0d08024 <__aeabi_memmove>
c0d06e40:	4c63      	ldr	r4, [pc, #396]	; (c0d06fd0 <ux_menu_element_preprocessor+0x1a4>)
c0d06e42:	6921      	ldr	r1, [r4, #16]
c0d06e44:	68a0      	ldr	r0, [r4, #8]
c0d06e46:	2900      	cmp	r1, #0
c0d06e48:	d001      	beq.n	c0d06e4e <ux_menu_element_preprocessor+0x22>
c0d06e4a:	4788      	blx	r1
c0d06e4c:	e003      	b.n	c0d06e56 <ux_menu_element_preprocessor+0x2a>
c0d06e4e:	211c      	movs	r1, #28
c0d06e50:	4341      	muls	r1, r0
c0d06e52:	6820      	ldr	r0, [r4, #0]
c0d06e54:	1840      	adds	r0, r0, r1
c0d06e56:	f7fd fd19 	bl	c0d0488c <pic>
c0d06e5a:	2800      	cmp	r0, #0
c0d06e5c:	d100      	bne.n	c0d06e60 <ux_menu_element_preprocessor+0x34>
c0d06e5e:	e0a9      	b.n	c0d06fb4 <ux_menu_element_preprocessor+0x188>
c0d06e60:	4605      	mov	r5, r0
c0d06e62:	9702      	str	r7, [sp, #8]
c0d06e64:	68c0      	ldr	r0, [r0, #12]
c0d06e66:	f7fd fd11 	bl	c0d0488c <pic>
c0d06e6a:	9001      	str	r0, [sp, #4]
c0d06e6c:	68a0      	ldr	r0, [r4, #8]
c0d06e6e:	2700      	movs	r7, #0
c0d06e70:	2800      	cmp	r0, #0
c0d06e72:	d005      	beq.n	c0d06e80 <ux_menu_element_preprocessor+0x54>
c0d06e74:	6921      	ldr	r1, [r4, #16]
c0d06e76:	1e40      	subs	r0, r0, #1
c0d06e78:	2900      	cmp	r1, #0
c0d06e7a:	d004      	beq.n	c0d06e86 <ux_menu_element_preprocessor+0x5a>
c0d06e7c:	4788      	blx	r1
c0d06e7e:	e006      	b.n	c0d06e8e <ux_menu_element_preprocessor+0x62>
c0d06e80:	4638      	mov	r0, r7
c0d06e82:	463a      	mov	r2, r7
c0d06e84:	e007      	b.n	c0d06e96 <ux_menu_element_preprocessor+0x6a>
c0d06e86:	211c      	movs	r1, #28
c0d06e88:	4341      	muls	r1, r0
c0d06e8a:	6820      	ldr	r0, [r4, #0]
c0d06e8c:	1840      	adds	r0, r0, r1
c0d06e8e:	f7fd fcfd 	bl	c0d0488c <pic>
c0d06e92:	4602      	mov	r2, r0
c0d06e94:	68a0      	ldr	r0, [r4, #8]
c0d06e96:	6861      	ldr	r1, [r4, #4]
c0d06e98:	1e49      	subs	r1, r1, #1
c0d06e9a:	4288      	cmp	r0, r1
c0d06e9c:	d211      	bcs.n	c0d06ec2 <ux_menu_element_preprocessor+0x96>
c0d06e9e:	4623      	mov	r3, r4
c0d06ea0:	9200      	str	r2, [sp, #0]
c0d06ea2:	6921      	ldr	r1, [r4, #16]
c0d06ea4:	1c40      	adds	r0, r0, #1
c0d06ea6:	2900      	cmp	r1, #0
c0d06ea8:	d002      	beq.n	c0d06eb0 <ux_menu_element_preprocessor+0x84>
c0d06eaa:	461c      	mov	r4, r3
c0d06eac:	4788      	blx	r1
c0d06eae:	e004      	b.n	c0d06eba <ux_menu_element_preprocessor+0x8e>
c0d06eb0:	211c      	movs	r1, #28
c0d06eb2:	4341      	muls	r1, r0
c0d06eb4:	461c      	mov	r4, r3
c0d06eb6:	6818      	ldr	r0, [r3, #0]
c0d06eb8:	1840      	adds	r0, r0, r1
c0d06eba:	f7fd fce7 	bl	c0d0488c <pic>
c0d06ebe:	4607      	mov	r7, r0
c0d06ec0:	9a00      	ldr	r2, [sp, #0]
c0d06ec2:	7870      	ldrb	r0, [r6, #1]
c0d06ec4:	2840      	cmp	r0, #64	; 0x40
c0d06ec6:	dc09      	bgt.n	c0d06edc <ux_menu_element_preprocessor+0xb0>
c0d06ec8:	2820      	cmp	r0, #32
c0d06eca:	dc21      	bgt.n	c0d06f10 <ux_menu_element_preprocessor+0xe4>
c0d06ecc:	2810      	cmp	r0, #16
c0d06ece:	d030      	beq.n	c0d06f32 <ux_menu_element_preprocessor+0x106>
c0d06ed0:	2820      	cmp	r0, #32
c0d06ed2:	d171      	bne.n	c0d06fb8 <ux_menu_element_preprocessor+0x18c>
c0d06ed4:	6968      	ldr	r0, [r5, #20]
c0d06ed6:	2800      	cmp	r0, #0
c0d06ed8:	d16c      	bne.n	c0d06fb4 <ux_menu_element_preprocessor+0x188>
c0d06eda:	e051      	b.n	c0d06f80 <ux_menu_element_preprocessor+0x154>
c0d06edc:	2880      	cmp	r0, #128	; 0x80
c0d06ede:	dc20      	bgt.n	c0d06f22 <ux_menu_element_preprocessor+0xf6>
c0d06ee0:	2841      	cmp	r0, #65	; 0x41
c0d06ee2:	d031      	beq.n	c0d06f48 <ux_menu_element_preprocessor+0x11c>
c0d06ee4:	2842      	cmp	r0, #66	; 0x42
c0d06ee6:	d167      	bne.n	c0d06fb8 <ux_menu_element_preprocessor+0x18c>
c0d06ee8:	6969      	ldr	r1, [r5, #20]
c0d06eea:	2000      	movs	r0, #0
c0d06eec:	2900      	cmp	r1, #0
c0d06eee:	d16b      	bne.n	c0d06fc8 <ux_menu_element_preprocessor+0x19c>
c0d06ef0:	68e9      	ldr	r1, [r5, #12]
c0d06ef2:	2900      	cmp	r1, #0
c0d06ef4:	d168      	bne.n	c0d06fc8 <ux_menu_element_preprocessor+0x19c>
c0d06ef6:	2f00      	cmp	r7, #0
c0d06ef8:	d066      	beq.n	c0d06fc8 <ux_menu_element_preprocessor+0x19c>
c0d06efa:	6861      	ldr	r1, [r4, #4]
c0d06efc:	1e49      	subs	r1, r1, #1
c0d06efe:	d063      	beq.n	c0d06fc8 <ux_menu_element_preprocessor+0x19c>
c0d06f00:	68a2      	ldr	r2, [r4, #8]
c0d06f02:	428a      	cmp	r2, r1
c0d06f04:	d060      	beq.n	c0d06fc8 <ux_menu_element_preprocessor+0x19c>
c0d06f06:	68f9      	ldr	r1, [r7, #12]
c0d06f08:	2900      	cmp	r1, #0
c0d06f0a:	d15d      	bne.n	c0d06fc8 <ux_menu_element_preprocessor+0x19c>
c0d06f0c:	6938      	ldr	r0, [r7, #16]
c0d06f0e:	e031      	b.n	c0d06f74 <ux_menu_element_preprocessor+0x148>
c0d06f10:	2821      	cmp	r0, #33	; 0x21
c0d06f12:	d032      	beq.n	c0d06f7a <ux_menu_element_preprocessor+0x14e>
c0d06f14:	2822      	cmp	r0, #34	; 0x22
c0d06f16:	d14f      	bne.n	c0d06fb8 <ux_menu_element_preprocessor+0x18c>
c0d06f18:	6968      	ldr	r0, [r5, #20]
c0d06f1a:	2800      	cmp	r0, #0
c0d06f1c:	4a2b      	ldr	r2, [pc, #172]	; (c0d06fcc <ux_menu_element_preprocessor+0x1a0>)
c0d06f1e:	d131      	bne.n	c0d06f84 <ux_menu_element_preprocessor+0x158>
c0d06f20:	e048      	b.n	c0d06fb4 <ux_menu_element_preprocessor+0x188>
c0d06f22:	2882      	cmp	r0, #130	; 0x82
c0d06f24:	d041      	beq.n	c0d06faa <ux_menu_element_preprocessor+0x17e>
c0d06f26:	2881      	cmp	r0, #129	; 0x81
c0d06f28:	d146      	bne.n	c0d06fb8 <ux_menu_element_preprocessor+0x18c>
c0d06f2a:	68a0      	ldr	r0, [r4, #8]
c0d06f2c:	2800      	cmp	r0, #0
c0d06f2e:	d143      	bne.n	c0d06fb8 <ux_menu_element_preprocessor+0x18c>
c0d06f30:	e040      	b.n	c0d06fb4 <ux_menu_element_preprocessor+0x188>
c0d06f32:	68e8      	ldr	r0, [r5, #12]
c0d06f34:	2800      	cmp	r0, #0
c0d06f36:	d03d      	beq.n	c0d06fb4 <ux_menu_element_preprocessor+0x188>
c0d06f38:	4924      	ldr	r1, [pc, #144]	; (c0d06fcc <ux_menu_element_preprocessor+0x1a0>)
c0d06f3a:	6208      	str	r0, [r1, #32]
c0d06f3c:	7e68      	ldrb	r0, [r5, #25]
c0d06f3e:	2800      	cmp	r0, #0
c0d06f40:	d03a      	beq.n	c0d06fb8 <ux_menu_element_preprocessor+0x18c>
c0d06f42:	4922      	ldr	r1, [pc, #136]	; (c0d06fcc <ux_menu_element_preprocessor+0x1a0>)
c0d06f44:	80c8      	strh	r0, [r1, #6]
c0d06f46:	e037      	b.n	c0d06fb8 <ux_menu_element_preprocessor+0x18c>
c0d06f48:	6969      	ldr	r1, [r5, #20]
c0d06f4a:	2000      	movs	r0, #0
c0d06f4c:	2900      	cmp	r1, #0
c0d06f4e:	d13b      	bne.n	c0d06fc8 <ux_menu_element_preprocessor+0x19c>
c0d06f50:	2a00      	cmp	r2, #0
c0d06f52:	d039      	beq.n	c0d06fc8 <ux_menu_element_preprocessor+0x19c>
c0d06f54:	68e9      	ldr	r1, [r5, #12]
c0d06f56:	2900      	cmp	r1, #0
c0d06f58:	d136      	bne.n	c0d06fc8 <ux_menu_element_preprocessor+0x19c>
c0d06f5a:	68a1      	ldr	r1, [r4, #8]
c0d06f5c:	2900      	cmp	r1, #0
c0d06f5e:	d033      	beq.n	c0d06fc8 <ux_menu_element_preprocessor+0x19c>
c0d06f60:	6861      	ldr	r1, [r4, #4]
c0d06f62:	2901      	cmp	r1, #1
c0d06f64:	d030      	beq.n	c0d06fc8 <ux_menu_element_preprocessor+0x19c>
c0d06f66:	68d1      	ldr	r1, [r2, #12]
c0d06f68:	2900      	cmp	r1, #0
c0d06f6a:	d12d      	bne.n	c0d06fc8 <ux_menu_element_preprocessor+0x19c>
c0d06f6c:	6951      	ldr	r1, [r2, #20]
c0d06f6e:	2900      	cmp	r1, #0
c0d06f70:	d12a      	bne.n	c0d06fc8 <ux_menu_element_preprocessor+0x19c>
c0d06f72:	6910      	ldr	r0, [r2, #16]
c0d06f74:	4915      	ldr	r1, [pc, #84]	; (c0d06fcc <ux_menu_element_preprocessor+0x1a0>)
c0d06f76:	6208      	str	r0, [r1, #32]
c0d06f78:	e01e      	b.n	c0d06fb8 <ux_menu_element_preprocessor+0x18c>
c0d06f7a:	6968      	ldr	r0, [r5, #20]
c0d06f7c:	2800      	cmp	r0, #0
c0d06f7e:	d019      	beq.n	c0d06fb4 <ux_menu_element_preprocessor+0x188>
c0d06f80:	6928      	ldr	r0, [r5, #16]
c0d06f82:	4a12      	ldr	r2, [pc, #72]	; (c0d06fcc <ux_menu_element_preprocessor+0x1a0>)
c0d06f84:	6210      	str	r0, [r2, #32]
c0d06f86:	9801      	ldr	r0, [sp, #4]
c0d06f88:	2800      	cmp	r0, #0
c0d06f8a:	d006      	beq.n	c0d06f9a <ux_menu_element_preprocessor+0x16e>
c0d06f8c:	8800      	ldrh	r0, [r0, #0]
c0d06f8e:	88d1      	ldrh	r1, [r2, #6]
c0d06f90:	1809      	adds	r1, r1, r0
c0d06f92:	80d1      	strh	r1, [r2, #6]
c0d06f94:	8951      	ldrh	r1, [r2, #10]
c0d06f96:	1a08      	subs	r0, r1, r0
c0d06f98:	8150      	strh	r0, [r2, #10]
c0d06f9a:	7e28      	ldrb	r0, [r5, #24]
c0d06f9c:	2800      	cmp	r0, #0
c0d06f9e:	d00b      	beq.n	c0d06fb8 <ux_menu_element_preprocessor+0x18c>
c0d06fa0:	2108      	movs	r1, #8
c0d06fa2:	4a0a      	ldr	r2, [pc, #40]	; (c0d06fcc <ux_menu_element_preprocessor+0x1a0>)
c0d06fa4:	8391      	strh	r1, [r2, #28]
c0d06fa6:	80d0      	strh	r0, [r2, #6]
c0d06fa8:	e006      	b.n	c0d06fb8 <ux_menu_element_preprocessor+0x18c>
c0d06faa:	6860      	ldr	r0, [r4, #4]
c0d06fac:	68a1      	ldr	r1, [r4, #8]
c0d06fae:	1e40      	subs	r0, r0, #1
c0d06fb0:	4281      	cmp	r1, r0
c0d06fb2:	d101      	bne.n	c0d06fb8 <ux_menu_element_preprocessor+0x18c>
c0d06fb4:	2000      	movs	r0, #0
c0d06fb6:	e007      	b.n	c0d06fc8 <ux_menu_element_preprocessor+0x19c>
c0d06fb8:	68e2      	ldr	r2, [r4, #12]
c0d06fba:	2a00      	cmp	r2, #0
c0d06fbc:	9802      	ldr	r0, [sp, #8]
c0d06fbe:	d003      	beq.n	c0d06fc8 <ux_menu_element_preprocessor+0x19c>
c0d06fc0:	4802      	ldr	r0, [pc, #8]	; (c0d06fcc <ux_menu_element_preprocessor+0x1a0>)
c0d06fc2:	1d01      	adds	r1, r0, #4
c0d06fc4:	4628      	mov	r0, r5
c0d06fc6:	4790      	blx	r2
c0d06fc8:	b003      	add	sp, #12
c0d06fca:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d06fcc:	20000c64 	.word	0x20000c64
c0d06fd0:	20000bf0 	.word	0x20000bf0

c0d06fd4 <ux_menu_elements_button>:
c0d06fd4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d06fd6:	b081      	sub	sp, #4
c0d06fd8:	4605      	mov	r5, r0
c0d06fda:	4f41      	ldr	r7, [pc, #260]	; (c0d070e0 <ux_menu_elements_button+0x10c>)
c0d06fdc:	6939      	ldr	r1, [r7, #16]
c0d06fde:	68b8      	ldr	r0, [r7, #8]
c0d06fe0:	2900      	cmp	r1, #0
c0d06fe2:	d001      	beq.n	c0d06fe8 <ux_menu_elements_button+0x14>
c0d06fe4:	4788      	blx	r1
c0d06fe6:	e003      	b.n	c0d06ff0 <ux_menu_elements_button+0x1c>
c0d06fe8:	211c      	movs	r1, #28
c0d06fea:	4341      	muls	r1, r0
c0d06fec:	6838      	ldr	r0, [r7, #0]
c0d06fee:	1840      	adds	r0, r0, r1
c0d06ff0:	f7fd fc4c 	bl	c0d0488c <pic>
c0d06ff4:	2401      	movs	r4, #1
c0d06ff6:	2800      	cmp	r0, #0
c0d06ff8:	d06f      	beq.n	c0d070da <ux_menu_elements_button+0x106>
c0d06ffa:	4606      	mov	r6, r0
c0d06ffc:	4839      	ldr	r0, [pc, #228]	; (c0d070e4 <ux_menu_elements_button+0x110>)
c0d06ffe:	4285      	cmp	r5, r0
c0d07000:	dd14      	ble.n	c0d0702c <ux_menu_elements_button+0x58>
c0d07002:	4839      	ldr	r0, [pc, #228]	; (c0d070e8 <ux_menu_elements_button+0x114>)
c0d07004:	4285      	cmp	r5, r0
c0d07006:	d016      	beq.n	c0d07036 <ux_menu_elements_button+0x62>
c0d07008:	4838      	ldr	r0, [pc, #224]	; (c0d070ec <ux_menu_elements_button+0x118>)
c0d0700a:	4285      	cmp	r5, r0
c0d0700c:	d01a      	beq.n	c0d07044 <ux_menu_elements_button+0x70>
c0d0700e:	4838      	ldr	r0, [pc, #224]	; (c0d070f0 <ux_menu_elements_button+0x11c>)
c0d07010:	4285      	cmp	r5, r0
c0d07012:	d162      	bne.n	c0d070da <ux_menu_elements_button+0x106>
c0d07014:	6830      	ldr	r0, [r6, #0]
c0d07016:	2800      	cmp	r0, #0
c0d07018:	d056      	beq.n	c0d070c8 <ux_menu_elements_button+0xf4>
c0d0701a:	68b4      	ldr	r4, [r6, #8]
c0d0701c:	f7fd fc36 	bl	c0d0488c <pic>
c0d07020:	4601      	mov	r1, r0
c0d07022:	68fa      	ldr	r2, [r7, #12]
c0d07024:	4620      	mov	r0, r4
c0d07026:	f000 f869 	bl	c0d070fc <ux_menu_display>
c0d0702a:	e055      	b.n	c0d070d8 <ux_menu_elements_button+0x104>
c0d0702c:	4931      	ldr	r1, [pc, #196]	; (c0d070f4 <ux_menu_elements_button+0x120>)
c0d0702e:	428d      	cmp	r5, r1
c0d07030:	d008      	beq.n	c0d07044 <ux_menu_elements_button+0x70>
c0d07032:	4285      	cmp	r5, r0
c0d07034:	d151      	bne.n	c0d070da <ux_menu_elements_button+0x106>
c0d07036:	6879      	ldr	r1, [r7, #4]
c0d07038:	68b8      	ldr	r0, [r7, #8]
c0d0703a:	1e49      	subs	r1, r1, #1
c0d0703c:	4288      	cmp	r0, r1
c0d0703e:	d24b      	bcs.n	c0d070d8 <ux_menu_elements_button+0x104>
c0d07040:	1c40      	adds	r0, r0, #1
c0d07042:	e003      	b.n	c0d0704c <ux_menu_elements_button+0x78>
c0d07044:	68b8      	ldr	r0, [r7, #8]
c0d07046:	2800      	cmp	r0, #0
c0d07048:	d046      	beq.n	c0d070d8 <ux_menu_elements_button+0x104>
c0d0704a:	1e40      	subs	r0, r0, #1
c0d0704c:	60b8      	str	r0, [r7, #8]
c0d0704e:	f7fb fb55 	bl	c0d026fc <io_seproxyhal_init_ux>
c0d07052:	f7fb fb55 	bl	c0d02700 <io_seproxyhal_init_button>
c0d07056:	4d28      	ldr	r5, [pc, #160]	; (c0d070f8 <ux_menu_elements_button+0x124>)
c0d07058:	2400      	movs	r4, #0
c0d0705a:	84ec      	strh	r4, [r5, #38]	; 0x26
c0d0705c:	2004      	movs	r0, #4
c0d0705e:	f7fd fde5 	bl	c0d04c2c <os_sched_last_status>
c0d07062:	64a8      	str	r0, [r5, #72]	; 0x48
c0d07064:	2800      	cmp	r0, #0
c0d07066:	d038      	beq.n	c0d070da <ux_menu_elements_button+0x106>
c0d07068:	2897      	cmp	r0, #151	; 0x97
c0d0706a:	d036      	beq.n	c0d070da <ux_menu_elements_button+0x106>
c0d0706c:	6aa8      	ldr	r0, [r5, #40]	; 0x28
c0d0706e:	2800      	cmp	r0, #0
c0d07070:	d033      	beq.n	c0d070da <ux_menu_elements_button+0x106>
c0d07072:	8ce8      	ldrh	r0, [r5, #38]	; 0x26
c0d07074:	212c      	movs	r1, #44	; 0x2c
c0d07076:	5c69      	ldrb	r1, [r5, r1]
c0d07078:	b280      	uxth	r0, r0
c0d0707a:	4288      	cmp	r0, r1
c0d0707c:	d22d      	bcs.n	c0d070da <ux_menu_elements_button+0x106>
c0d0707e:	f7fd fda1 	bl	c0d04bc4 <io_seph_is_status_sent>
c0d07082:	2800      	cmp	r0, #0
c0d07084:	d129      	bne.n	c0d070da <ux_menu_elements_button+0x106>
c0d07086:	f7fd fd33 	bl	c0d04af0 <os_perso_isonboarded>
c0d0708a:	28aa      	cmp	r0, #170	; 0xaa
c0d0708c:	d103      	bne.n	c0d07096 <ux_menu_elements_button+0xc2>
c0d0708e:	f7fd fd4d 	bl	c0d04b2c <os_global_pin_is_validated>
c0d07092:	28aa      	cmp	r0, #170	; 0xaa
c0d07094:	d121      	bne.n	c0d070da <ux_menu_elements_button+0x106>
c0d07096:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d07098:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d0709a:	0150      	lsls	r0, r2, #5
c0d0709c:	1808      	adds	r0, r1, r0
c0d0709e:	6b2b      	ldr	r3, [r5, #48]	; 0x30
c0d070a0:	2b00      	cmp	r3, #0
c0d070a2:	d004      	beq.n	c0d070ae <ux_menu_elements_button+0xda>
c0d070a4:	4798      	blx	r3
c0d070a6:	2800      	cmp	r0, #0
c0d070a8:	d007      	beq.n	c0d070ba <ux_menu_elements_button+0xe6>
c0d070aa:	8cea      	ldrh	r2, [r5, #38]	; 0x26
c0d070ac:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d070ae:	2801      	cmp	r0, #1
c0d070b0:	d101      	bne.n	c0d070b6 <ux_menu_elements_button+0xe2>
c0d070b2:	0150      	lsls	r0, r2, #5
c0d070b4:	1808      	adds	r0, r1, r0
c0d070b6:	f000 fa23 	bl	c0d07500 <io_seproxyhal_display>
c0d070ba:	8ce8      	ldrh	r0, [r5, #38]	; 0x26
c0d070bc:	1c40      	adds	r0, r0, #1
c0d070be:	84e8      	strh	r0, [r5, #38]	; 0x26
c0d070c0:	6aa9      	ldr	r1, [r5, #40]	; 0x28
c0d070c2:	2900      	cmp	r1, #0
c0d070c4:	d1d6      	bne.n	c0d07074 <ux_menu_elements_button+0xa0>
c0d070c6:	e008      	b.n	c0d070da <ux_menu_elements_button+0x106>
c0d070c8:	6870      	ldr	r0, [r6, #4]
c0d070ca:	2800      	cmp	r0, #0
c0d070cc:	d005      	beq.n	c0d070da <ux_menu_elements_button+0x106>
c0d070ce:	f7fd fbdd 	bl	c0d0488c <pic>
c0d070d2:	4601      	mov	r1, r0
c0d070d4:	68b0      	ldr	r0, [r6, #8]
c0d070d6:	4788      	blx	r1
c0d070d8:	2400      	movs	r4, #0
c0d070da:	4620      	mov	r0, r4
c0d070dc:	b001      	add	sp, #4
c0d070de:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d070e0:	20000bf0 	.word	0x20000bf0
c0d070e4:	80000002 	.word	0x80000002
c0d070e8:	40000002 	.word	0x40000002
c0d070ec:	40000001 	.word	0x40000001
c0d070f0:	80000003 	.word	0x80000003
c0d070f4:	80000001 	.word	0x80000001
c0d070f8:	20000c64 	.word	0x20000c64

c0d070fc <ux_menu_display>:
c0d070fc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d070fe:	b083      	sub	sp, #12
c0d07100:	9201      	str	r2, [sp, #4]
c0d07102:	9000      	str	r0, [sp, #0]
c0d07104:	4c41      	ldr	r4, [pc, #260]	; (c0d0720c <ux_menu_display+0x110>)
c0d07106:	2600      	movs	r6, #0
c0d07108:	6066      	str	r6, [r4, #4]
c0d0710a:	2900      	cmp	r1, #0
c0d0710c:	9102      	str	r1, [sp, #8]
c0d0710e:	d017      	beq.n	c0d07140 <ux_menu_display+0x44>
c0d07110:	460b      	mov	r3, r1
c0d07112:	4940      	ldr	r1, [pc, #256]	; (c0d07214 <ux_menu_display+0x118>)
c0d07114:	4479      	add	r1, pc
c0d07116:	221c      	movs	r2, #28
c0d07118:	4618      	mov	r0, r3
c0d0711a:	f000 ff93 	bl	c0d08044 <memcmp>
c0d0711e:	2800      	cmp	r0, #0
c0d07120:	d00e      	beq.n	c0d07140 <ux_menu_display+0x44>
c0d07122:	9f02      	ldr	r7, [sp, #8]
c0d07124:	371c      	adds	r7, #28
c0d07126:	2600      	movs	r6, #0
c0d07128:	4d3b      	ldr	r5, [pc, #236]	; (c0d07218 <ux_menu_display+0x11c>)
c0d0712a:	447d      	add	r5, pc
c0d0712c:	1c76      	adds	r6, r6, #1
c0d0712e:	6066      	str	r6, [r4, #4]
c0d07130:	221c      	movs	r2, #28
c0d07132:	4638      	mov	r0, r7
c0d07134:	4629      	mov	r1, r5
c0d07136:	f000 ff85 	bl	c0d08044 <memcmp>
c0d0713a:	371c      	adds	r7, #28
c0d0713c:	2800      	cmp	r0, #0
c0d0713e:	d1f5      	bne.n	c0d0712c <ux_menu_display+0x30>
c0d07140:	9900      	ldr	r1, [sp, #0]
c0d07142:	1c48      	adds	r0, r1, #1
c0d07144:	d003      	beq.n	c0d0714e <ux_menu_display+0x52>
c0d07146:	428e      	cmp	r6, r1
c0d07148:	d200      	bcs.n	c0d0714c <ux_menu_display+0x50>
c0d0714a:	2100      	movs	r1, #0
c0d0714c:	60a1      	str	r1, [r4, #8]
c0d0714e:	212c      	movs	r1, #44	; 0x2c
c0d07150:	9100      	str	r1, [sp, #0]
c0d07152:	4f2f      	ldr	r7, [pc, #188]	; (c0d07210 <ux_menu_display+0x114>)
c0d07154:	2009      	movs	r0, #9
c0d07156:	5478      	strb	r0, [r7, r1]
c0d07158:	2044      	movs	r0, #68	; 0x44
c0d0715a:	2103      	movs	r1, #3
c0d0715c:	5439      	strb	r1, [r7, r0]
c0d0715e:	2600      	movs	r6, #0
c0d07160:	9801      	ldr	r0, [sp, #4]
c0d07162:	60e0      	str	r0, [r4, #12]
c0d07164:	6126      	str	r6, [r4, #16]
c0d07166:	9802      	ldr	r0, [sp, #8]
c0d07168:	6020      	str	r0, [r4, #0]
c0d0716a:	482c      	ldr	r0, [pc, #176]	; (c0d0721c <ux_menu_display+0x120>)
c0d0716c:	4478      	add	r0, pc
c0d0716e:	492c      	ldr	r1, [pc, #176]	; (c0d07220 <ux_menu_display+0x124>)
c0d07170:	4479      	add	r1, pc
c0d07172:	62b9      	str	r1, [r7, #40]	; 0x28
c0d07174:	492b      	ldr	r1, [pc, #172]	; (c0d07224 <ux_menu_display+0x128>)
c0d07176:	4479      	add	r1, pc
c0d07178:	6339      	str	r1, [r7, #48]	; 0x30
c0d0717a:	6378      	str	r0, [r7, #52]	; 0x34
c0d0717c:	463c      	mov	r4, r7
c0d0717e:	3444      	adds	r4, #68	; 0x44
c0d07180:	6066      	str	r6, [r4, #4]
c0d07182:	4620      	mov	r0, r4
c0d07184:	f7fd fce0 	bl	c0d04b48 <os_ux>
c0d07188:	2504      	movs	r5, #4
c0d0718a:	4628      	mov	r0, r5
c0d0718c:	f7fd fd4e 	bl	c0d04c2c <os_sched_last_status>
c0d07190:	6060      	str	r0, [r4, #4]
c0d07192:	f7fb fab3 	bl	c0d026fc <io_seproxyhal_init_ux>
c0d07196:	f7fb fab3 	bl	c0d02700 <io_seproxyhal_init_button>
c0d0719a:	84fe      	strh	r6, [r7, #38]	; 0x26
c0d0719c:	4628      	mov	r0, r5
c0d0719e:	f7fd fd45 	bl	c0d04c2c <os_sched_last_status>
c0d071a2:	6060      	str	r0, [r4, #4]
c0d071a4:	9c00      	ldr	r4, [sp, #0]
c0d071a6:	2800      	cmp	r0, #0
c0d071a8:	d02d      	beq.n	c0d07206 <ux_menu_display+0x10a>
c0d071aa:	2897      	cmp	r0, #151	; 0x97
c0d071ac:	d02b      	beq.n	c0d07206 <ux_menu_display+0x10a>
c0d071ae:	6ab8      	ldr	r0, [r7, #40]	; 0x28
c0d071b0:	2800      	cmp	r0, #0
c0d071b2:	d028      	beq.n	c0d07206 <ux_menu_display+0x10a>
c0d071b4:	8cf8      	ldrh	r0, [r7, #38]	; 0x26
c0d071b6:	5d39      	ldrb	r1, [r7, r4]
c0d071b8:	b280      	uxth	r0, r0
c0d071ba:	4288      	cmp	r0, r1
c0d071bc:	d223      	bcs.n	c0d07206 <ux_menu_display+0x10a>
c0d071be:	f7fd fd01 	bl	c0d04bc4 <io_seph_is_status_sent>
c0d071c2:	2800      	cmp	r0, #0
c0d071c4:	d11f      	bne.n	c0d07206 <ux_menu_display+0x10a>
c0d071c6:	f7fd fc93 	bl	c0d04af0 <os_perso_isonboarded>
c0d071ca:	28aa      	cmp	r0, #170	; 0xaa
c0d071cc:	d103      	bne.n	c0d071d6 <ux_menu_display+0xda>
c0d071ce:	f7fd fcad 	bl	c0d04b2c <os_global_pin_is_validated>
c0d071d2:	28aa      	cmp	r0, #170	; 0xaa
c0d071d4:	d117      	bne.n	c0d07206 <ux_menu_display+0x10a>
c0d071d6:	6ab9      	ldr	r1, [r7, #40]	; 0x28
c0d071d8:	8cfa      	ldrh	r2, [r7, #38]	; 0x26
c0d071da:	0150      	lsls	r0, r2, #5
c0d071dc:	1808      	adds	r0, r1, r0
c0d071de:	6b3b      	ldr	r3, [r7, #48]	; 0x30
c0d071e0:	2b00      	cmp	r3, #0
c0d071e2:	d004      	beq.n	c0d071ee <ux_menu_display+0xf2>
c0d071e4:	4798      	blx	r3
c0d071e6:	2800      	cmp	r0, #0
c0d071e8:	d007      	beq.n	c0d071fa <ux_menu_display+0xfe>
c0d071ea:	8cfa      	ldrh	r2, [r7, #38]	; 0x26
c0d071ec:	6ab9      	ldr	r1, [r7, #40]	; 0x28
c0d071ee:	2801      	cmp	r0, #1
c0d071f0:	d101      	bne.n	c0d071f6 <ux_menu_display+0xfa>
c0d071f2:	0150      	lsls	r0, r2, #5
c0d071f4:	1808      	adds	r0, r1, r0
c0d071f6:	f000 f983 	bl	c0d07500 <io_seproxyhal_display>
c0d071fa:	8cf8      	ldrh	r0, [r7, #38]	; 0x26
c0d071fc:	1c40      	adds	r0, r0, #1
c0d071fe:	84f8      	strh	r0, [r7, #38]	; 0x26
c0d07200:	6ab9      	ldr	r1, [r7, #40]	; 0x28
c0d07202:	2900      	cmp	r1, #0
c0d07204:	d1d7      	bne.n	c0d071b6 <ux_menu_display+0xba>
c0d07206:	b003      	add	sp, #12
c0d07208:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d0720a:	46c0      	nop			; (mov r8, r8)
c0d0720c:	20000bf0 	.word	0x20000bf0
c0d07210:	20000c64 	.word	0x20000c64
c0d07214:	00003474 	.word	0x00003474
c0d07218:	0000345e 	.word	0x0000345e
c0d0721c:	fffffe65 	.word	0xfffffe65
c0d07220:	000032f8 	.word	0x000032f8
c0d07224:	fffffcb3 	.word	0xfffffcb3

c0d07228 <ux_stack_push>:
c0d07228:	b510      	push	{r4, lr}
c0d0722a:	4c06      	ldr	r4, [pc, #24]	; (c0d07244 <ux_stack_push+0x1c>)
c0d0722c:	7820      	ldrb	r0, [r4, #0]
c0d0722e:	2800      	cmp	r0, #0
c0d07230:	d106      	bne.n	c0d07240 <ux_stack_push+0x18>
c0d07232:	4620      	mov	r0, r4
c0d07234:	3024      	adds	r0, #36	; 0x24
c0d07236:	2120      	movs	r1, #32
c0d07238:	f000 feea 	bl	c0d08010 <__aeabi_memclr>
c0d0723c:	2001      	movs	r0, #1
c0d0723e:	7020      	strb	r0, [r4, #0]
c0d07240:	1e40      	subs	r0, r0, #1
c0d07242:	bd10      	pop	{r4, pc}
c0d07244:	20000c64 	.word	0x20000c64

c0d07248 <h_paging_init>:
c0d07248:	b580      	push	{r7, lr}
c0d0724a:	4806      	ldr	r0, [pc, #24]	; (c0d07264 <h_paging_init+0x1c>)
c0d0724c:	4478      	add	r0, pc
c0d0724e:	f000 fe4b 	bl	c0d07ee8 <zemu_log_stack>
c0d07252:	4802      	ldr	r0, [pc, #8]	; (c0d0725c <h_paging_init+0x14>)
c0d07254:	4902      	ldr	r1, [pc, #8]	; (c0d07260 <h_paging_init+0x18>)
c0d07256:	6581      	str	r1, [r0, #88]	; 0x58
c0d07258:	bd80      	pop	{r7, pc}
c0d0725a:	46c0      	nop			; (mov r8, r8)
c0d0725c:	20000c08 	.word	0x20000c08
c0d07260:	0100ff00 	.word	0x0100ff00
c0d07264:	00003358 	.word	0x00003358

c0d07268 <view_init>:
c0d07268:	b580      	push	{r7, lr}
c0d0726a:	4803      	ldr	r0, [pc, #12]	; (c0d07278 <view_init+0x10>)
c0d0726c:	2150      	movs	r1, #80	; 0x50
c0d0726e:	f000 fecf 	bl	c0d08010 <__aeabi_memclr>
c0d07272:	f7ff ffd9 	bl	c0d07228 <ux_stack_push>
c0d07276:	bd80      	pop	{r7, pc}
c0d07278:	20000c64 	.word	0x20000c64

c0d0727c <view_idle_show>:
c0d0727c:	b580      	push	{r7, lr}
c0d0727e:	f000 fc43 	bl	c0d07b08 <view_idle_show_impl>
c0d07282:	bd80      	pop	{r7, pc}

c0d07284 <view_review_init>:
c0d07284:	4b01      	ldr	r3, [pc, #4]	; (c0d0728c <view_review_init+0x8>)
c0d07286:	3348      	adds	r3, #72	; 0x48
c0d07288:	c307      	stmia	r3!, {r0, r1, r2}
c0d0728a:	4770      	bx	lr
c0d0728c:	20000c08 	.word	0x20000c08

c0d07290 <view_review_show>:
c0d07290:	b580      	push	{r7, lr}
c0d07292:	f000 fccd 	bl	c0d07c30 <view_review_show_impl>
c0d07296:	bd80      	pop	{r7, pc}

c0d07298 <h_approve>:
c0d07298:	b570      	push	{r4, r5, r6, lr}
c0d0729a:	482f      	ldr	r0, [pc, #188]	; (c0d07358 <h_approve+0xc0>)
c0d0729c:	4478      	add	r0, pc
c0d0729e:	f000 fe23 	bl	c0d07ee8 <zemu_log_stack>
c0d072a2:	2000      	movs	r0, #0
c0d072a4:	4601      	mov	r1, r0
c0d072a6:	f000 fc2f 	bl	c0d07b08 <view_idle_show_impl>
c0d072aa:	252c      	movs	r5, #44	; 0x2c
c0d072ac:	4e27      	ldr	r6, [pc, #156]	; (c0d0734c <h_approve+0xb4>)
c0d072ae:	5d70      	ldrb	r0, [r6, r5]
c0d072b0:	8cf1      	ldrh	r1, [r6, #38]	; 0x26
c0d072b2:	4281      	cmp	r1, r0
c0d072b4:	d235      	bcs.n	c0d07322 <h_approve+0x8a>
c0d072b6:	4c26      	ldr	r4, [pc, #152]	; (c0d07350 <h_approve+0xb8>)
c0d072b8:	2180      	movs	r1, #128	; 0x80
c0d072ba:	2200      	movs	r2, #0
c0d072bc:	4620      	mov	r0, r4
c0d072be:	f7fd fc8d 	bl	c0d04bdc <io_seph_recv>
c0d072c2:	6ab0      	ldr	r0, [r6, #40]	; 0x28
c0d072c4:	2800      	cmp	r0, #0
c0d072c6:	d028      	beq.n	c0d0731a <h_approve+0x82>
c0d072c8:	8cf0      	ldrh	r0, [r6, #38]	; 0x26
c0d072ca:	5d71      	ldrb	r1, [r6, r5]
c0d072cc:	b280      	uxth	r0, r0
c0d072ce:	4288      	cmp	r0, r1
c0d072d0:	d223      	bcs.n	c0d0731a <h_approve+0x82>
c0d072d2:	f7fd fc77 	bl	c0d04bc4 <io_seph_is_status_sent>
c0d072d6:	2800      	cmp	r0, #0
c0d072d8:	d11f      	bne.n	c0d0731a <h_approve+0x82>
c0d072da:	f7fd fc09 	bl	c0d04af0 <os_perso_isonboarded>
c0d072de:	28aa      	cmp	r0, #170	; 0xaa
c0d072e0:	d103      	bne.n	c0d072ea <h_approve+0x52>
c0d072e2:	f7fd fc23 	bl	c0d04b2c <os_global_pin_is_validated>
c0d072e6:	28aa      	cmp	r0, #170	; 0xaa
c0d072e8:	d117      	bne.n	c0d0731a <h_approve+0x82>
c0d072ea:	6ab1      	ldr	r1, [r6, #40]	; 0x28
c0d072ec:	8cf2      	ldrh	r2, [r6, #38]	; 0x26
c0d072ee:	0150      	lsls	r0, r2, #5
c0d072f0:	1808      	adds	r0, r1, r0
c0d072f2:	6b33      	ldr	r3, [r6, #48]	; 0x30
c0d072f4:	2b00      	cmp	r3, #0
c0d072f6:	d004      	beq.n	c0d07302 <h_approve+0x6a>
c0d072f8:	4798      	blx	r3
c0d072fa:	2800      	cmp	r0, #0
c0d072fc:	d007      	beq.n	c0d0730e <h_approve+0x76>
c0d072fe:	8cf2      	ldrh	r2, [r6, #38]	; 0x26
c0d07300:	6ab1      	ldr	r1, [r6, #40]	; 0x28
c0d07302:	2801      	cmp	r0, #1
c0d07304:	d101      	bne.n	c0d0730a <h_approve+0x72>
c0d07306:	0150      	lsls	r0, r2, #5
c0d07308:	1808      	adds	r0, r1, r0
c0d0730a:	f000 f8f9 	bl	c0d07500 <io_seproxyhal_display>
c0d0730e:	8cf0      	ldrh	r0, [r6, #38]	; 0x26
c0d07310:	1c40      	adds	r0, r0, #1
c0d07312:	84f0      	strh	r0, [r6, #38]	; 0x26
c0d07314:	6ab1      	ldr	r1, [r6, #40]	; 0x28
c0d07316:	2900      	cmp	r1, #0
c0d07318:	d1d7      	bne.n	c0d072ca <h_approve+0x32>
c0d0731a:	5d70      	ldrb	r0, [r6, r5]
c0d0731c:	8cf1      	ldrh	r1, [r6, #38]	; 0x26
c0d0731e:	4281      	cmp	r1, r0
c0d07320:	d3ca      	bcc.n	c0d072b8 <h_approve+0x20>
c0d07322:	4c0b      	ldr	r4, [pc, #44]	; (c0d07350 <h_approve+0xb8>)
c0d07324:	2580      	movs	r5, #128	; 0x80
c0d07326:	2600      	movs	r6, #0
c0d07328:	4620      	mov	r0, r4
c0d0732a:	4629      	mov	r1, r5
c0d0732c:	4632      	mov	r2, r6
c0d0732e:	f7fd fc55 	bl	c0d04bdc <io_seph_recv>
c0d07332:	f7fb f8fb 	bl	c0d0252c <io_seproxyhal_general_status>
c0d07336:	4620      	mov	r0, r4
c0d07338:	4629      	mov	r1, r5
c0d0733a:	4632      	mov	r2, r6
c0d0733c:	f7fd fc4e 	bl	c0d04bdc <io_seph_recv>
c0d07340:	4804      	ldr	r0, [pc, #16]	; (c0d07354 <h_approve+0xbc>)
c0d07342:	6d00      	ldr	r0, [r0, #80]	; 0x50
c0d07344:	2800      	cmp	r0, #0
c0d07346:	d000      	beq.n	c0d0734a <h_approve+0xb2>
c0d07348:	4780      	blx	r0
c0d0734a:	bd70      	pop	{r4, r5, r6, pc}
c0d0734c:	20000c64 	.word	0x20000c64
c0d07350:	20000202 	.word	0x20000202
c0d07354:	20000c08 	.word	0x20000c08
c0d07358:	00003316 	.word	0x00003316

c0d0735c <h_reject>:
c0d0735c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d0735e:	b081      	sub	sp, #4
c0d07360:	4604      	mov	r4, r0
c0d07362:	4835      	ldr	r0, [pc, #212]	; (c0d07438 <h_reject+0xdc>)
c0d07364:	4478      	add	r0, pc
c0d07366:	f000 fdbf 	bl	c0d07ee8 <zemu_log_stack>
c0d0736a:	2000      	movs	r0, #0
c0d0736c:	4601      	mov	r1, r0
c0d0736e:	f000 fbcb 	bl	c0d07b08 <view_idle_show_impl>
c0d07372:	262c      	movs	r6, #44	; 0x2c
c0d07374:	4f2d      	ldr	r7, [pc, #180]	; (c0d0742c <h_reject+0xd0>)
c0d07376:	5db8      	ldrb	r0, [r7, r6]
c0d07378:	8cf9      	ldrh	r1, [r7, #38]	; 0x26
c0d0737a:	4281      	cmp	r1, r0
c0d0737c:	d235      	bcs.n	c0d073ea <h_reject+0x8e>
c0d0737e:	4d2c      	ldr	r5, [pc, #176]	; (c0d07430 <h_reject+0xd4>)
c0d07380:	2180      	movs	r1, #128	; 0x80
c0d07382:	2200      	movs	r2, #0
c0d07384:	4628      	mov	r0, r5
c0d07386:	f7fd fc29 	bl	c0d04bdc <io_seph_recv>
c0d0738a:	6ab8      	ldr	r0, [r7, #40]	; 0x28
c0d0738c:	2800      	cmp	r0, #0
c0d0738e:	d028      	beq.n	c0d073e2 <h_reject+0x86>
c0d07390:	8cf8      	ldrh	r0, [r7, #38]	; 0x26
c0d07392:	5db9      	ldrb	r1, [r7, r6]
c0d07394:	b280      	uxth	r0, r0
c0d07396:	4288      	cmp	r0, r1
c0d07398:	d223      	bcs.n	c0d073e2 <h_reject+0x86>
c0d0739a:	f7fd fc13 	bl	c0d04bc4 <io_seph_is_status_sent>
c0d0739e:	2800      	cmp	r0, #0
c0d073a0:	d11f      	bne.n	c0d073e2 <h_reject+0x86>
c0d073a2:	f7fd fba5 	bl	c0d04af0 <os_perso_isonboarded>
c0d073a6:	28aa      	cmp	r0, #170	; 0xaa
c0d073a8:	d103      	bne.n	c0d073b2 <h_reject+0x56>
c0d073aa:	f7fd fbbf 	bl	c0d04b2c <os_global_pin_is_validated>
c0d073ae:	28aa      	cmp	r0, #170	; 0xaa
c0d073b0:	d117      	bne.n	c0d073e2 <h_reject+0x86>
c0d073b2:	6ab9      	ldr	r1, [r7, #40]	; 0x28
c0d073b4:	8cfa      	ldrh	r2, [r7, #38]	; 0x26
c0d073b6:	0150      	lsls	r0, r2, #5
c0d073b8:	1808      	adds	r0, r1, r0
c0d073ba:	6b3b      	ldr	r3, [r7, #48]	; 0x30
c0d073bc:	2b00      	cmp	r3, #0
c0d073be:	d004      	beq.n	c0d073ca <h_reject+0x6e>
c0d073c0:	4798      	blx	r3
c0d073c2:	2800      	cmp	r0, #0
c0d073c4:	d007      	beq.n	c0d073d6 <h_reject+0x7a>
c0d073c6:	8cfa      	ldrh	r2, [r7, #38]	; 0x26
c0d073c8:	6ab9      	ldr	r1, [r7, #40]	; 0x28
c0d073ca:	2801      	cmp	r0, #1
c0d073cc:	d101      	bne.n	c0d073d2 <h_reject+0x76>
c0d073ce:	0150      	lsls	r0, r2, #5
c0d073d0:	1808      	adds	r0, r1, r0
c0d073d2:	f000 f895 	bl	c0d07500 <io_seproxyhal_display>
c0d073d6:	8cf8      	ldrh	r0, [r7, #38]	; 0x26
c0d073d8:	1c40      	adds	r0, r0, #1
c0d073da:	84f8      	strh	r0, [r7, #38]	; 0x26
c0d073dc:	6ab9      	ldr	r1, [r7, #40]	; 0x28
c0d073de:	2900      	cmp	r1, #0
c0d073e0:	d1d7      	bne.n	c0d07392 <h_reject+0x36>
c0d073e2:	5db8      	ldrb	r0, [r7, r6]
c0d073e4:	8cf9      	ldrh	r1, [r7, #38]	; 0x26
c0d073e6:	4281      	cmp	r1, r0
c0d073e8:	d3ca      	bcc.n	c0d07380 <h_reject+0x24>
c0d073ea:	4d11      	ldr	r5, [pc, #68]	; (c0d07430 <h_reject+0xd4>)
c0d073ec:	2680      	movs	r6, #128	; 0x80
c0d073ee:	2700      	movs	r7, #0
c0d073f0:	4628      	mov	r0, r5
c0d073f2:	4631      	mov	r1, r6
c0d073f4:	463a      	mov	r2, r7
c0d073f6:	f7fd fbf1 	bl	c0d04bdc <io_seph_recv>
c0d073fa:	f7fb f897 	bl	c0d0252c <io_seproxyhal_general_status>
c0d073fe:	4628      	mov	r0, r5
c0d07400:	4631      	mov	r1, r6
c0d07402:	463a      	mov	r2, r7
c0d07404:	f7fd fbea 	bl	c0d04bdc <io_seph_recv>
c0d07408:	2c00      	cmp	r4, #0
c0d0740a:	d00d      	beq.n	c0d07428 <h_reject+0xcc>
c0d0740c:	2041      	movs	r0, #65	; 0x41
c0d0740e:	0081      	lsls	r1, r0, #2
c0d07410:	4c08      	ldr	r4, [pc, #32]	; (c0d07434 <h_reject+0xd8>)
c0d07412:	4620      	mov	r0, r4
c0d07414:	f000 fe12 	bl	c0d0803c <explicit_bzero>
c0d07418:	2086      	movs	r0, #134	; 0x86
c0d0741a:	7060      	strb	r0, [r4, #1]
c0d0741c:	2069      	movs	r0, #105	; 0x69
c0d0741e:	7020      	strb	r0, [r4, #0]
c0d07420:	2020      	movs	r0, #32
c0d07422:	2102      	movs	r1, #2
c0d07424:	f7fb fa96 	bl	c0d02954 <io_exchange>
c0d07428:	b001      	add	sp, #4
c0d0742a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d0742c:	20000c64 	.word	0x20000c64
c0d07430:	20000202 	.word	0x20000202
c0d07434:	20000305 	.word	0x20000305
c0d07438:	00003258 	.word	0x00003258

c0d0743c <h_error_accept>:
c0d0743c:	b570      	push	{r4, r5, r6, lr}
c0d0743e:	2000      	movs	r0, #0
c0d07440:	4601      	mov	r1, r0
c0d07442:	f000 fb61 	bl	c0d07b08 <view_idle_show_impl>
c0d07446:	252c      	movs	r5, #44	; 0x2c
c0d07448:	4e29      	ldr	r6, [pc, #164]	; (c0d074f0 <h_error_accept+0xb4>)
c0d0744a:	5d70      	ldrb	r0, [r6, r5]
c0d0744c:	8cf1      	ldrh	r1, [r6, #38]	; 0x26
c0d0744e:	4281      	cmp	r1, r0
c0d07450:	d235      	bcs.n	c0d074be <h_error_accept+0x82>
c0d07452:	4c28      	ldr	r4, [pc, #160]	; (c0d074f4 <h_error_accept+0xb8>)
c0d07454:	2180      	movs	r1, #128	; 0x80
c0d07456:	2200      	movs	r2, #0
c0d07458:	4620      	mov	r0, r4
c0d0745a:	f7fd fbbf 	bl	c0d04bdc <io_seph_recv>
c0d0745e:	6ab0      	ldr	r0, [r6, #40]	; 0x28
c0d07460:	2800      	cmp	r0, #0
c0d07462:	d028      	beq.n	c0d074b6 <h_error_accept+0x7a>
c0d07464:	8cf0      	ldrh	r0, [r6, #38]	; 0x26
c0d07466:	5d71      	ldrb	r1, [r6, r5]
c0d07468:	b280      	uxth	r0, r0
c0d0746a:	4288      	cmp	r0, r1
c0d0746c:	d223      	bcs.n	c0d074b6 <h_error_accept+0x7a>
c0d0746e:	f7fd fba9 	bl	c0d04bc4 <io_seph_is_status_sent>
c0d07472:	2800      	cmp	r0, #0
c0d07474:	d11f      	bne.n	c0d074b6 <h_error_accept+0x7a>
c0d07476:	f7fd fb3b 	bl	c0d04af0 <os_perso_isonboarded>
c0d0747a:	28aa      	cmp	r0, #170	; 0xaa
c0d0747c:	d103      	bne.n	c0d07486 <h_error_accept+0x4a>
c0d0747e:	f7fd fb55 	bl	c0d04b2c <os_global_pin_is_validated>
c0d07482:	28aa      	cmp	r0, #170	; 0xaa
c0d07484:	d117      	bne.n	c0d074b6 <h_error_accept+0x7a>
c0d07486:	6ab1      	ldr	r1, [r6, #40]	; 0x28
c0d07488:	8cf2      	ldrh	r2, [r6, #38]	; 0x26
c0d0748a:	0150      	lsls	r0, r2, #5
c0d0748c:	1808      	adds	r0, r1, r0
c0d0748e:	6b33      	ldr	r3, [r6, #48]	; 0x30
c0d07490:	2b00      	cmp	r3, #0
c0d07492:	d004      	beq.n	c0d0749e <h_error_accept+0x62>
c0d07494:	4798      	blx	r3
c0d07496:	2800      	cmp	r0, #0
c0d07498:	d007      	beq.n	c0d074aa <h_error_accept+0x6e>
c0d0749a:	8cf2      	ldrh	r2, [r6, #38]	; 0x26
c0d0749c:	6ab1      	ldr	r1, [r6, #40]	; 0x28
c0d0749e:	2801      	cmp	r0, #1
c0d074a0:	d101      	bne.n	c0d074a6 <h_error_accept+0x6a>
c0d074a2:	0150      	lsls	r0, r2, #5
c0d074a4:	1808      	adds	r0, r1, r0
c0d074a6:	f000 f82b 	bl	c0d07500 <io_seproxyhal_display>
c0d074aa:	8cf0      	ldrh	r0, [r6, #38]	; 0x26
c0d074ac:	1c40      	adds	r0, r0, #1
c0d074ae:	84f0      	strh	r0, [r6, #38]	; 0x26
c0d074b0:	6ab1      	ldr	r1, [r6, #40]	; 0x28
c0d074b2:	2900      	cmp	r1, #0
c0d074b4:	d1d7      	bne.n	c0d07466 <h_error_accept+0x2a>
c0d074b6:	5d70      	ldrb	r0, [r6, r5]
c0d074b8:	8cf1      	ldrh	r1, [r6, #38]	; 0x26
c0d074ba:	4281      	cmp	r1, r0
c0d074bc:	d3ca      	bcc.n	c0d07454 <h_error_accept+0x18>
c0d074be:	4c0d      	ldr	r4, [pc, #52]	; (c0d074f4 <h_error_accept+0xb8>)
c0d074c0:	2580      	movs	r5, #128	; 0x80
c0d074c2:	2600      	movs	r6, #0
c0d074c4:	4620      	mov	r0, r4
c0d074c6:	4629      	mov	r1, r5
c0d074c8:	4632      	mov	r2, r6
c0d074ca:	f7fd fb87 	bl	c0d04bdc <io_seph_recv>
c0d074ce:	f7fb f82d 	bl	c0d0252c <io_seproxyhal_general_status>
c0d074d2:	4620      	mov	r0, r4
c0d074d4:	4629      	mov	r1, r5
c0d074d6:	4632      	mov	r2, r6
c0d074d8:	f7fd fb80 	bl	c0d04bdc <io_seph_recv>
c0d074dc:	4806      	ldr	r0, [pc, #24]	; (c0d074f8 <h_error_accept+0xbc>)
c0d074de:	2184      	movs	r1, #132	; 0x84
c0d074e0:	7041      	strb	r1, [r0, #1]
c0d074e2:	2169      	movs	r1, #105	; 0x69
c0d074e4:	7001      	strb	r1, [r0, #0]
c0d074e6:	2020      	movs	r0, #32
c0d074e8:	2102      	movs	r1, #2
c0d074ea:	f7fb fa33 	bl	c0d02954 <io_exchange>
c0d074ee:	bd70      	pop	{r4, r5, r6, pc}
c0d074f0:	20000c64 	.word	0x20000c64
c0d074f4:	20000202 	.word	0x20000202
c0d074f8:	20000305 	.word	0x20000305

c0d074fc <h_paging_intro_screen>:
c0d074fc:	2000      	movs	r0, #0
c0d074fe:	4770      	bx	lr

c0d07500 <io_seproxyhal_display>:
c0d07500:	b580      	push	{r7, lr}
c0d07502:	f7fb f955 	bl	c0d027b0 <io_seproxyhal_display_default>
c0d07506:	bd80      	pop	{r7, pc}

c0d07508 <view_error_show>:
c0d07508:	b510      	push	{r4, lr}
c0d0750a:	4c08      	ldr	r4, [pc, #32]	; (c0d0752c <view_error_show+0x24>)
c0d0750c:	4908      	ldr	r1, [pc, #32]	; (c0d07530 <view_error_show+0x28>)
c0d0750e:	4479      	add	r1, pc
c0d07510:	2206      	movs	r2, #6
c0d07512:	4620      	mov	r0, r4
c0d07514:	f000 fd82 	bl	c0d0801c <__aeabi_memcpy>
c0d07518:	3412      	adds	r4, #18
c0d0751a:	4906      	ldr	r1, [pc, #24]	; (c0d07534 <view_error_show+0x2c>)
c0d0751c:	4479      	add	r1, pc
c0d0751e:	220d      	movs	r2, #13
c0d07520:	4620      	mov	r0, r4
c0d07522:	f000 fd7b 	bl	c0d0801c <__aeabi_memcpy>
c0d07526:	f000 fb13 	bl	c0d07b50 <view_error_show_impl>
c0d0752a:	bd10      	pop	{r4, pc}
c0d0752c:	20000c08 	.word	0x20000c08
c0d07530:	00001474 	.word	0x00001474
c0d07534:	00003204 	.word	0x00003204

c0d07538 <h_paging_can_increase>:
c0d07538:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d0753a:	b081      	sub	sp, #4
c0d0753c:	2059      	movs	r0, #89	; 0x59
c0d0753e:	4910      	ldr	r1, [pc, #64]	; (c0d07580 <h_paging_can_increase+0x48>)
c0d07540:	5c0c      	ldrb	r4, [r1, r0]
c0d07542:	2058      	movs	r0, #88	; 0x58
c0d07544:	5c0d      	ldrb	r5, [r1, r0]
c0d07546:	480f      	ldr	r0, [pc, #60]	; (c0d07584 <h_paging_can_increase+0x4c>)
c0d07548:	4478      	add	r0, pc
c0d0754a:	42a5      	cmp	r5, r4
c0d0754c:	4602      	mov	r2, r0
c0d0754e:	d301      	bcc.n	c0d07554 <h_paging_can_increase+0x1c>
c0d07550:	4a0d      	ldr	r2, [pc, #52]	; (c0d07588 <h_paging_can_increase+0x50>)
c0d07552:	447a      	add	r2, pc
c0d07554:	235b      	movs	r3, #91	; 0x5b
c0d07556:	5cce      	ldrb	r6, [r1, r3]
c0d07558:	235a      	movs	r3, #90	; 0x5a
c0d0755a:	5cc9      	ldrb	r1, [r1, r3]
c0d0755c:	1c4f      	adds	r7, r1, #1
c0d0755e:	42b7      	cmp	r7, r6
c0d07560:	d300      	bcc.n	c0d07564 <h_paging_can_increase+0x2c>
c0d07562:	4610      	mov	r0, r2
c0d07564:	f000 fcc0 	bl	c0d07ee8 <zemu_log_stack>
c0d07568:	2001      	movs	r0, #1
c0d0756a:	2200      	movs	r2, #0
c0d0756c:	42a5      	cmp	r5, r4
c0d0756e:	4601      	mov	r1, r0
c0d07570:	d300      	bcc.n	c0d07574 <h_paging_can_increase+0x3c>
c0d07572:	4611      	mov	r1, r2
c0d07574:	42b7      	cmp	r7, r6
c0d07576:	d300      	bcc.n	c0d0757a <h_paging_can_increase+0x42>
c0d07578:	4610      	mov	r0, r2
c0d0757a:	4308      	orrs	r0, r1
c0d0757c:	b001      	add	sp, #4
c0d0757e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d07580:	20000c08 	.word	0x20000c08
c0d07584:	0000307d 	.word	0x0000307d
c0d07588:	00003089 	.word	0x00003089

c0d0758c <h_paging_increase>:
c0d0758c:	b510      	push	{r4, lr}
c0d0758e:	480c      	ldr	r0, [pc, #48]	; (c0d075c0 <h_paging_increase+0x34>)
c0d07590:	4478      	add	r0, pc
c0d07592:	f000 fca9 	bl	c0d07ee8 <zemu_log_stack>
c0d07596:	215b      	movs	r1, #91	; 0x5b
c0d07598:	4808      	ldr	r0, [pc, #32]	; (c0d075bc <h_paging_increase+0x30>)
c0d0759a:	5c43      	ldrb	r3, [r0, r1]
c0d0759c:	215a      	movs	r1, #90	; 0x5a
c0d0759e:	5c42      	ldrb	r2, [r0, r1]
c0d075a0:	1c52      	adds	r2, r2, #1
c0d075a2:	429a      	cmp	r2, r3
c0d075a4:	d308      	bcc.n	c0d075b8 <h_paging_increase+0x2c>
c0d075a6:	2258      	movs	r2, #88	; 0x58
c0d075a8:	5c83      	ldrb	r3, [r0, r2]
c0d075aa:	2459      	movs	r4, #89	; 0x59
c0d075ac:	5d04      	ldrb	r4, [r0, r4]
c0d075ae:	42a3      	cmp	r3, r4
c0d075b0:	d203      	bcs.n	c0d075ba <h_paging_increase+0x2e>
c0d075b2:	1c5b      	adds	r3, r3, #1
c0d075b4:	5483      	strb	r3, [r0, r2]
c0d075b6:	2200      	movs	r2, #0
c0d075b8:	5442      	strb	r2, [r0, r1]
c0d075ba:	bd10      	pop	{r4, pc}
c0d075bc:	20000c08 	.word	0x20000c08
c0d075c0:	00003064 	.word	0x00003064

c0d075c4 <h_paging_can_decrease>:
c0d075c4:	b510      	push	{r4, lr}
c0d075c6:	2058      	movs	r0, #88	; 0x58
c0d075c8:	4908      	ldr	r1, [pc, #32]	; (c0d075ec <h_paging_can_decrease+0x28>)
c0d075ca:	5c08      	ldrb	r0, [r1, r0]
c0d075cc:	225a      	movs	r2, #90	; 0x5a
c0d075ce:	5c8c      	ldrb	r4, [r1, r2]
c0d075d0:	4304      	orrs	r4, r0
c0d075d2:	d002      	beq.n	c0d075da <h_paging_can_decrease+0x16>
c0d075d4:	4807      	ldr	r0, [pc, #28]	; (c0d075f4 <h_paging_can_decrease+0x30>)
c0d075d6:	4478      	add	r0, pc
c0d075d8:	e001      	b.n	c0d075de <h_paging_can_decrease+0x1a>
c0d075da:	4805      	ldr	r0, [pc, #20]	; (c0d075f0 <h_paging_can_decrease+0x2c>)
c0d075dc:	4478      	add	r0, pc
c0d075de:	f000 fc83 	bl	c0d07ee8 <zemu_log_stack>
c0d075e2:	1e60      	subs	r0, r4, #1
c0d075e4:	4184      	sbcs	r4, r0
c0d075e6:	4620      	mov	r0, r4
c0d075e8:	bd10      	pop	{r4, pc}
c0d075ea:	46c0      	nop			; (mov r8, r8)
c0d075ec:	20000c08 	.word	0x20000c08
c0d075f0:	00003040 	.word	0x00003040
c0d075f4:	00003030 	.word	0x00003030

c0d075f8 <h_paging_decrease>:
c0d075f8:	b5b0      	push	{r4, r5, r7, lr}
c0d075fa:	245a      	movs	r4, #90	; 0x5a
c0d075fc:	4d0b      	ldr	r5, [pc, #44]	; (c0d0762c <h_paging_decrease+0x34>)
c0d075fe:	5d28      	ldrb	r0, [r5, r4]
c0d07600:	2800      	cmp	r0, #0
c0d07602:	d006      	beq.n	c0d07612 <h_paging_decrease+0x1a>
c0d07604:	1e40      	subs	r0, r0, #1
c0d07606:	5528      	strb	r0, [r5, r4]
c0d07608:	4809      	ldr	r0, [pc, #36]	; (c0d07630 <h_paging_decrease+0x38>)
c0d0760a:	4478      	add	r0, pc
c0d0760c:	f000 fc6c 	bl	c0d07ee8 <zemu_log_stack>
c0d07610:	bdb0      	pop	{r4, r5, r7, pc}
c0d07612:	2058      	movs	r0, #88	; 0x58
c0d07614:	5c29      	ldrb	r1, [r5, r0]
c0d07616:	2900      	cmp	r1, #0
c0d07618:	d007      	beq.n	c0d0762a <h_paging_decrease+0x32>
c0d0761a:	1e49      	subs	r1, r1, #1
c0d0761c:	5429      	strb	r1, [r5, r0]
c0d0761e:	4805      	ldr	r0, [pc, #20]	; (c0d07634 <h_paging_decrease+0x3c>)
c0d07620:	4478      	add	r0, pc
c0d07622:	f000 fc61 	bl	c0d07ee8 <zemu_log_stack>
c0d07626:	20ff      	movs	r0, #255	; 0xff
c0d07628:	5528      	strb	r0, [r5, r4]
c0d0762a:	bdb0      	pop	{r4, r5, r7, pc}
c0d0762c:	20000c08 	.word	0x20000c08
c0d07630:	0000302b 	.word	0x0000302b
c0d07634:	0000301c 	.word	0x0000301c

c0d07638 <h_review_action>:
c0d07638:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d0763a:	b081      	sub	sp, #4
c0d0763c:	4604      	mov	r4, r0
c0d0763e:	2558      	movs	r5, #88	; 0x58
c0d07640:	4e17      	ldr	r6, [pc, #92]	; (c0d076a0 <h_review_action+0x68>)
c0d07642:	5d70      	ldrb	r0, [r6, r5]
c0d07644:	2759      	movs	r7, #89	; 0x59
c0d07646:	5df1      	ldrb	r1, [r6, r7]
c0d07648:	1e4a      	subs	r2, r1, #1
c0d0764a:	4282      	cmp	r2, r0
c0d0764c:	d107      	bne.n	c0d0765e <h_review_action+0x26>
c0d0764e:	4815      	ldr	r0, [pc, #84]	; (c0d076a4 <h_review_action+0x6c>)
c0d07650:	4478      	add	r0, pc
c0d07652:	f000 fc49 	bl	c0d07ee8 <zemu_log_stack>
c0d07656:	2001      	movs	r0, #1
c0d07658:	f7ff fe1e 	bl	c0d07298 <h_approve>
c0d0765c:	e01d      	b.n	c0d0769a <h_review_action+0x62>
c0d0765e:	4288      	cmp	r0, r1
c0d07660:	d107      	bne.n	c0d07672 <h_review_action+0x3a>
c0d07662:	4811      	ldr	r0, [pc, #68]	; (c0d076a8 <h_review_action+0x70>)
c0d07664:	4478      	add	r0, pc
c0d07666:	f000 fc3f 	bl	c0d07ee8 <zemu_log_stack>
c0d0766a:	4620      	mov	r0, r4
c0d0766c:	f7ff fe76 	bl	c0d0735c <h_reject>
c0d07670:	e013      	b.n	c0d0769a <h_review_action+0x62>
c0d07672:	480e      	ldr	r0, [pc, #56]	; (c0d076ac <h_review_action+0x74>)
c0d07674:	4478      	add	r0, pc
c0d07676:	f000 fc37 	bl	c0d07ee8 <zemu_log_stack>
c0d0767a:	f7f9 fb37 	bl	c0d00cec <app_mode_expert>
c0d0767e:	2800      	cmp	r0, #0
c0d07680:	d103      	bne.n	c0d0768a <h_review_action+0x52>
c0d07682:	f7f9 fb53 	bl	c0d00d2c <app_mode_shortcut>
c0d07686:	2800      	cmp	r0, #0
c0d07688:	d007      	beq.n	c0d0769a <h_review_action+0x62>
c0d0768a:	205a      	movs	r0, #90	; 0x5a
c0d0768c:	2100      	movs	r1, #0
c0d0768e:	5431      	strb	r1, [r6, r0]
c0d07690:	5df0      	ldrb	r0, [r6, r7]
c0d07692:	1e40      	subs	r0, r0, #1
c0d07694:	5570      	strb	r0, [r6, r5]
c0d07696:	f000 f94d 	bl	c0d07934 <h_review_update>
c0d0769a:	b001      	add	sp, #4
c0d0769c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d0769e:	46c0      	nop			; (mov r8, r8)
c0d076a0:	20000c08 	.word	0x20000c08
c0d076a4:	00002ff3 	.word	0x00002ff3
c0d076a8:	00002fed 	.word	0x00002fed
c0d076ac:	00002feb 	.word	0x00002feb

c0d076b0 <h_review_update_data>:
c0d076b0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d076b2:	b091      	sub	sp, #68	; 0x44
c0d076b4:	4e64      	ldr	r6, [pc, #400]	; (c0d07848 <h_review_update_data+0x198>)
c0d076b6:	6cf0      	ldr	r0, [r6, #76]	; 0x4c
c0d076b8:	2800      	cmp	r0, #0
c0d076ba:	d02a      	beq.n	c0d07712 <h_review_update_data+0x62>
c0d076bc:	6cb0      	ldr	r0, [r6, #72]	; 0x48
c0d076be:	2800      	cmp	r0, #0
c0d076c0:	d02a      	beq.n	c0d07718 <h_review_update_data+0x68>
c0d076c2:	2458      	movs	r4, #88	; 0x58
c0d076c4:	5d33      	ldrb	r3, [r6, r4]
c0d076c6:	205a      	movs	r0, #90	; 0x5a
c0d076c8:	900a      	str	r0, [sp, #40]	; 0x28
c0d076ca:	5c30      	ldrb	r0, [r6, r0]
c0d076cc:	9000      	str	r0, [sp, #0]
c0d076ce:	ad0c      	add	r5, sp, #48	; 0x30
c0d076d0:	2114      	movs	r1, #20
c0d076d2:	4a63      	ldr	r2, [pc, #396]	; (c0d07860 <h_review_update_data+0x1b0>)
c0d076d4:	447a      	add	r2, pc
c0d076d6:	4628      	mov	r0, r5
c0d076d8:	f7fb fbe8 	bl	c0d02eac <snprintf>
c0d076dc:	4628      	mov	r0, r5
c0d076de:	f000 fc03 	bl	c0d07ee8 <zemu_log_stack>
c0d076e2:	235b      	movs	r3, #91	; 0x5b
c0d076e4:	2501      	movs	r5, #1
c0d076e6:	54f5      	strb	r5, [r6, r3]
c0d076e8:	5d30      	ldrb	r0, [r6, r4]
c0d076ea:	2759      	movs	r7, #89	; 0x59
c0d076ec:	5df1      	ldrb	r1, [r6, r7]
c0d076ee:	1e4a      	subs	r2, r1, #1
c0d076f0:	4282      	cmp	r2, r0
c0d076f2:	d117      	bne.n	c0d07724 <h_review_update_data+0x74>
c0d076f4:	2045      	movs	r0, #69	; 0x45
c0d076f6:	8330      	strh	r0, [r6, #24]
c0d076f8:	4854      	ldr	r0, [pc, #336]	; (c0d0784c <h_review_update_data+0x19c>)
c0d076fa:	82f0      	strh	r0, [r6, #22]
c0d076fc:	4854      	ldr	r0, [pc, #336]	; (c0d07850 <h_review_update_data+0x1a0>)
c0d076fe:	82b0      	strh	r0, [r6, #20]
c0d07700:	4854      	ldr	r0, [pc, #336]	; (c0d07854 <h_review_update_data+0x1a4>)
c0d07702:	8270      	strh	r0, [r6, #18]
c0d07704:	2400      	movs	r4, #0
c0d07706:	7034      	strb	r4, [r6, #0]
c0d07708:	f000 fb0a 	bl	c0d07d20 <splitValueField>
c0d0770c:	4855      	ldr	r0, [pc, #340]	; (c0d07864 <h_review_update_data+0x1b4>)
c0d0770e:	4478      	add	r0, pc
c0d07710:	e019      	b.n	c0d07746 <h_review_update_data+0x96>
c0d07712:	4851      	ldr	r0, [pc, #324]	; (c0d07858 <h_review_update_data+0x1a8>)
c0d07714:	4478      	add	r0, pc
c0d07716:	e001      	b.n	c0d0771c <h_review_update_data+0x6c>
c0d07718:	4850      	ldr	r0, [pc, #320]	; (c0d0785c <h_review_update_data+0x1ac>)
c0d0771a:	4478      	add	r0, pc
c0d0771c:	f000 fbe4 	bl	c0d07ee8 <zemu_log_stack>
c0d07720:	2005      	movs	r0, #5
c0d07722:	e015      	b.n	c0d07750 <h_review_update_data+0xa0>
c0d07724:	9705      	str	r7, [sp, #20]
c0d07726:	930b      	str	r3, [sp, #44]	; 0x2c
c0d07728:	4288      	cmp	r0, r1
c0d0772a:	d113      	bne.n	c0d07754 <h_review_update_data+0xa4>
c0d0772c:	2400      	movs	r4, #0
c0d0772e:	7034      	strb	r4, [r6, #0]
c0d07730:	4630      	mov	r0, r6
c0d07732:	3012      	adds	r0, #18
c0d07734:	494c      	ldr	r1, [pc, #304]	; (c0d07868 <h_review_update_data+0x1b8>)
c0d07736:	4479      	add	r1, pc
c0d07738:	2207      	movs	r2, #7
c0d0773a:	f000 fc6f 	bl	c0d0801c <__aeabi_memcpy>
c0d0773e:	f000 faef 	bl	c0d07d20 <splitValueField>
c0d07742:	484a      	ldr	r0, [pc, #296]	; (c0d0786c <h_review_update_data+0x1bc>)
c0d07744:	4478      	add	r0, pc
c0d07746:	f000 fbcf 	bl	c0d07ee8 <zemu_log_stack>
c0d0774a:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d0774c:	5434      	strb	r4, [r6, r0]
c0d0774e:	2003      	movs	r0, #3
c0d07750:	b011      	add	sp, #68	; 0x44
c0d07752:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d07754:	9403      	str	r4, [sp, #12]
c0d07756:	9504      	str	r5, [sp, #16]
c0d07758:	6cf1      	ldr	r1, [r6, #76]	; 0x4c
c0d0775a:	4630      	mov	r0, r6
c0d0775c:	3059      	adds	r0, #89	; 0x59
c0d0775e:	4788      	blx	r1
c0d07760:	2803      	cmp	r0, #3
c0d07762:	d1f5      	bne.n	c0d07750 <h_review_update_data+0xa0>
c0d07764:	5733      	ldrsb	r3, [r6, r4]
c0d07766:	6cb0      	ldr	r0, [r6, #72]	; 0x48
c0d07768:	9009      	str	r0, [sp, #36]	; 0x24
c0d0776a:	4634      	mov	r4, r6
c0d0776c:	345b      	adds	r4, #91	; 0x5b
c0d0776e:	2100      	movs	r1, #0
c0d07770:	2023      	movs	r0, #35	; 0x23
c0d07772:	9108      	str	r1, [sp, #32]
c0d07774:	aa00      	add	r2, sp, #0
c0d07776:	c213      	stmia	r2!, {r0, r1, r4}
c0d07778:	4635      	mov	r5, r6
c0d0777a:	3512      	adds	r5, #18
c0d0777c:	2212      	movs	r2, #18
c0d0777e:	9307      	str	r3, [sp, #28]
c0d07780:	4618      	mov	r0, r3
c0d07782:	4631      	mov	r1, r6
c0d07784:	462b      	mov	r3, r5
c0d07786:	9f09      	ldr	r7, [sp, #36]	; 0x24
c0d07788:	47b8      	blx	r7
c0d0778a:	2803      	cmp	r0, #3
c0d0778c:	d1e0      	bne.n	c0d07750 <h_review_update_data+0xa0>
c0d0778e:	9807      	ldr	r0, [sp, #28]
c0d07790:	b2c0      	uxtb	r0, r0
c0d07792:	9009      	str	r0, [sp, #36]	; 0x24
c0d07794:	9804      	ldr	r0, [sp, #16]
c0d07796:	990b      	ldr	r1, [sp, #44]	; 0x2c
c0d07798:	5470      	strb	r0, [r6, r1]
c0d0779a:	f000 fb17 	bl	c0d07dcc <get_max_char_per_line>
c0d0779e:	6cb1      	ldr	r1, [r6, #72]	; 0x48
c0d077a0:	9107      	str	r1, [sp, #28]
c0d077a2:	9006      	str	r0, [sp, #24]
c0d077a4:	9000      	str	r0, [sp, #0]
c0d077a6:	9808      	ldr	r0, [sp, #32]
c0d077a8:	9001      	str	r0, [sp, #4]
c0d077aa:	9402      	str	r4, [sp, #8]
c0d077ac:	9809      	ldr	r0, [sp, #36]	; 0x24
c0d077ae:	b240      	sxtb	r0, r0
c0d077b0:	2212      	movs	r2, #18
c0d077b2:	9009      	str	r0, [sp, #36]	; 0x24
c0d077b4:	4631      	mov	r1, r6
c0d077b6:	462b      	mov	r3, r5
c0d077b8:	9f07      	ldr	r7, [sp, #28]
c0d077ba:	47b8      	blx	r7
c0d077bc:	2803      	cmp	r0, #3
c0d077be:	d1c7      	bne.n	c0d07750 <h_review_update_data+0xa0>
c0d077c0:	9b0a      	ldr	r3, [sp, #40]	; 0x28
c0d077c2:	5cf0      	ldrb	r0, [r6, r3]
c0d077c4:	4632      	mov	r2, r6
c0d077c6:	990b      	ldr	r1, [sp, #44]	; 0x2c
c0d077c8:	5c71      	ldrb	r1, [r6, r1]
c0d077ca:	2900      	cmp	r1, #0
c0d077cc:	d005      	beq.n	c0d077da <h_review_update_data+0x12a>
c0d077ce:	4288      	cmp	r0, r1
c0d077d0:	9f05      	ldr	r7, [sp, #20]
c0d077d2:	d903      	bls.n	c0d077dc <h_review_update_data+0x12c>
c0d077d4:	1e48      	subs	r0, r1, #1
c0d077d6:	54d0      	strb	r0, [r2, r3]
c0d077d8:	e000      	b.n	c0d077dc <h_review_update_data+0x12c>
c0d077da:	9f05      	ldr	r7, [sp, #20]
c0d077dc:	4616      	mov	r6, r2
c0d077de:	6c91      	ldr	r1, [r2, #72]	; 0x48
c0d077e0:	9108      	str	r1, [sp, #32]
c0d077e2:	b2c0      	uxtb	r0, r0
c0d077e4:	9906      	ldr	r1, [sp, #24]
c0d077e6:	9100      	str	r1, [sp, #0]
c0d077e8:	9001      	str	r0, [sp, #4]
c0d077ea:	9402      	str	r4, [sp, #8]
c0d077ec:	2212      	movs	r2, #18
c0d077ee:	9809      	ldr	r0, [sp, #36]	; 0x24
c0d077f0:	4631      	mov	r1, r6
c0d077f2:	462b      	mov	r3, r5
c0d077f4:	9c08      	ldr	r4, [sp, #32]
c0d077f6:	47a0      	blx	r4
c0d077f8:	2803      	cmp	r0, #3
c0d077fa:	d1a9      	bne.n	c0d07750 <h_review_update_data+0xa0>
c0d077fc:	5df0      	ldrb	r0, [r6, r7]
c0d077fe:	1c40      	adds	r0, r0, #1
c0d07800:	55f0      	strb	r0, [r6, r7]
c0d07802:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
c0d07804:	5df0      	ldrb	r0, [r6, r7]
c0d07806:	2802      	cmp	r0, #2
c0d07808:	9c03      	ldr	r4, [sp, #12]
c0d0780a:	d313      	bcc.n	c0d07834 <h_review_update_data+0x184>
c0d0780c:	2512      	movs	r5, #18
c0d0780e:	4630      	mov	r0, r6
c0d07810:	4629      	mov	r1, r5
c0d07812:	f000 fe33 	bl	c0d0847c <strnlen>
c0d07816:	b2c1      	uxtb	r1, r0
c0d07818:	2911      	cmp	r1, #17
c0d0781a:	d80a      	bhi.n	c0d07832 <h_review_update_data+0x182>
c0d0781c:	980a      	ldr	r0, [sp, #40]	; 0x28
c0d0781e:	5c32      	ldrb	r2, [r6, r0]
c0d07820:	5df0      	ldrb	r0, [r6, r7]
c0d07822:	9000      	str	r0, [sp, #0]
c0d07824:	1870      	adds	r0, r6, r1
c0d07826:	1a69      	subs	r1, r5, r1
c0d07828:	1c53      	adds	r3, r2, #1
c0d0782a:	4a11      	ldr	r2, [pc, #68]	; (c0d07870 <h_review_update_data+0x1c0>)
c0d0782c:	447a      	add	r2, pc
c0d0782e:	f7fb fb3d 	bl	c0d02eac <snprintf>
c0d07832:	5df0      	ldrb	r0, [r6, r7]
c0d07834:	2800      	cmp	r0, #0
c0d07836:	d104      	bne.n	c0d07842 <h_review_update_data+0x192>
c0d07838:	f7ff fea8 	bl	c0d0758c <h_paging_increase>
c0d0783c:	5df0      	ldrb	r0, [r6, r7]
c0d0783e:	2800      	cmp	r0, #0
c0d07840:	d08a      	beq.n	c0d07758 <h_review_update_data+0xa8>
c0d07842:	f000 fa8d 	bl	c0d07d60 <splitValueAddress>
c0d07846:	e782      	b.n	c0d0774e <h_review_update_data+0x9e>
c0d07848:	20000c08 	.word	0x20000c08
c0d0784c:	0000564f 	.word	0x0000564f
c0d07850:	00005250 	.word	0x00005250
c0d07854:	00005041 	.word	0x00005041
c0d07858:	00002f58 	.word	0x00002f58
c0d0785c:	00002f7b 	.word	0x00002f7b
c0d07860:	00002fe6 	.word	0x00002fe6
c0d07864:	00002fbd 	.word	0x00002fbd
c0d07868:	00002fb6 	.word	0x00002fb6
c0d0786c:	00002faf 	.word	0x00002faf
c0d07870:	00002ee8 	.word	0x00002ee8

c0d07874 <os_exit>:
c0d07874:	2000      	movs	r0, #0
c0d07876:	f7fd f98d 	bl	c0d04b94 <os_sched_exit>
	...

c0d0787c <idle_preprocessor>:
c0d0787c:	b5b0      	push	{r4, r5, r7, lr}
c0d0787e:	460c      	mov	r4, r1
c0d07880:	480c      	ldr	r0, [pc, #48]	; (c0d078b4 <idle_preprocessor+0x38>)
c0d07882:	6880      	ldr	r0, [r0, #8]
c0d07884:	2801      	cmp	r0, #1
c0d07886:	d113      	bne.n	c0d078b0 <idle_preprocessor+0x34>
c0d07888:	4d0b      	ldr	r5, [pc, #44]	; (c0d078b8 <idle_preprocessor+0x3c>)
c0d0788a:	4628      	mov	r0, r5
c0d0788c:	3012      	adds	r0, #18
c0d0788e:	490e      	ldr	r1, [pc, #56]	; (c0d078c8 <idle_preprocessor+0x4c>)
c0d07890:	4479      	add	r1, pc
c0d07892:	2209      	movs	r2, #9
c0d07894:	f000 fbc2 	bl	c0d0801c <__aeabi_memcpy>
c0d07898:	f7f9 fa28 	bl	c0d00cec <app_mode_expert>
c0d0789c:	2800      	cmp	r0, #0
c0d0789e:	d007      	beq.n	c0d078b0 <idle_preprocessor+0x34>
c0d078a0:	2064      	movs	r0, #100	; 0x64
c0d078a2:	8328      	strh	r0, [r5, #24]
c0d078a4:	4805      	ldr	r0, [pc, #20]	; (c0d078bc <idle_preprocessor+0x40>)
c0d078a6:	82e8      	strh	r0, [r5, #22]
c0d078a8:	4805      	ldr	r0, [pc, #20]	; (c0d078c0 <idle_preprocessor+0x44>)
c0d078aa:	82a8      	strh	r0, [r5, #20]
c0d078ac:	4805      	ldr	r0, [pc, #20]	; (c0d078c4 <idle_preprocessor+0x48>)
c0d078ae:	8268      	strh	r0, [r5, #18]
c0d078b0:	4620      	mov	r0, r4
c0d078b2:	bdb0      	pop	{r4, r5, r7, pc}
c0d078b4:	20000bf0 	.word	0x20000bf0
c0d078b8:	20000c08 	.word	0x20000c08
c0d078bc:	0000656c 	.word	0x0000656c
c0d078c0:	00006261 	.word	0x00006261
c0d078c4:	00006e65 	.word	0x00006e65
c0d078c8:	000031ac 	.word	0x000031ac

c0d078cc <view_prepro>:
c0d078cc:	b5b0      	push	{r4, r5, r7, lr}
c0d078ce:	4604      	mov	r4, r0
c0d078d0:	7840      	ldrb	r0, [r0, #1]
c0d078d2:	2811      	cmp	r0, #17
c0d078d4:	dc06      	bgt.n	c0d078e4 <view_prepro+0x18>
c0d078d6:	2810      	cmp	r0, #16
c0d078d8:	d018      	beq.n	c0d0790c <view_prepro+0x40>
c0d078da:	2811      	cmp	r0, #17
c0d078dc:	d123      	bne.n	c0d07926 <view_prepro+0x5a>
c0d078de:	f7ff fe2b 	bl	c0d07538 <h_paging_can_increase>
c0d078e2:	e018      	b.n	c0d07916 <view_prepro+0x4a>
c0d078e4:	2812      	cmp	r0, #18
c0d078e6:	d014      	beq.n	c0d07912 <view_prepro+0x46>
c0d078e8:	2871      	cmp	r0, #113	; 0x71
c0d078ea:	d11c      	bne.n	c0d07926 <view_prepro+0x5a>
c0d078ec:	2107      	movs	r1, #7
c0d078ee:	4620      	mov	r0, r4
c0d078f0:	f7fa ffa6 	bl	c0d02840 <bagl_label_roundtrip_duration_ms>
c0d078f4:	217d      	movs	r1, #125	; 0x7d
c0d078f6:	00cd      	lsls	r5, r1, #3
c0d078f8:	1941      	adds	r1, r0, r5
c0d078fa:	480c      	ldr	r0, [pc, #48]	; (c0d0792c <view_prepro+0x60>)
c0d078fc:	4281      	cmp	r1, r0
c0d078fe:	d30e      	bcc.n	c0d0791e <view_prepro+0x52>
c0d07900:	2107      	movs	r1, #7
c0d07902:	4620      	mov	r0, r4
c0d07904:	f7fa ff9c 	bl	c0d02840 <bagl_label_roundtrip_duration_ms>
c0d07908:	1940      	adds	r0, r0, r5
c0d0790a:	e008      	b.n	c0d0791e <view_prepro+0x52>
c0d0790c:	f7ff fe5a 	bl	c0d075c4 <h_paging_can_decrease>
c0d07910:	e001      	b.n	c0d07916 <view_prepro+0x4a>
c0d07912:	f7ff fdf3 	bl	c0d074fc <h_paging_intro_screen>
c0d07916:	2800      	cmp	r0, #0
c0d07918:	d004      	beq.n	c0d07924 <view_prepro+0x58>
c0d0791a:	207d      	movs	r0, #125	; 0x7d
c0d0791c:	0100      	lsls	r0, r0, #4
c0d0791e:	4904      	ldr	r1, [pc, #16]	; (c0d07930 <view_prepro+0x64>)
c0d07920:	63c8      	str	r0, [r1, #60]	; 0x3c
c0d07922:	e000      	b.n	c0d07926 <view_prepro+0x5a>
c0d07924:	2400      	movs	r4, #0
c0d07926:	4620      	mov	r0, r4
c0d07928:	bdb0      	pop	{r4, r5, r7, pc}
c0d0792a:	46c0      	nop			; (mov r8, r8)
c0d0792c:	00000bb8 	.word	0x00000bb8
c0d07930:	20000c64 	.word	0x20000c64

c0d07934 <h_review_update>:
c0d07934:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d07936:	b081      	sub	sp, #4
c0d07938:	f7ff feba 	bl	c0d076b0 <h_review_update_data>
c0d0793c:	2803      	cmp	r0, #3
c0d0793e:	d157      	bne.n	c0d079f0 <h_review_update+0xbc>
c0d07940:	212c      	movs	r1, #44	; 0x2c
c0d07942:	9100      	str	r1, [sp, #0]
c0d07944:	4f52      	ldr	r7, [pc, #328]	; (c0d07a90 <h_review_update+0x15c>)
c0d07946:	2007      	movs	r0, #7
c0d07948:	5478      	strb	r0, [r7, r1]
c0d0794a:	2044      	movs	r0, #68	; 0x44
c0d0794c:	2103      	movs	r1, #3
c0d0794e:	5439      	strb	r1, [r7, r0]
c0d07950:	4851      	ldr	r0, [pc, #324]	; (c0d07a98 <h_review_update+0x164>)
c0d07952:	4478      	add	r0, pc
c0d07954:	4951      	ldr	r1, [pc, #324]	; (c0d07a9c <h_review_update+0x168>)
c0d07956:	4479      	add	r1, pc
c0d07958:	62b9      	str	r1, [r7, #40]	; 0x28
c0d0795a:	4951      	ldr	r1, [pc, #324]	; (c0d07aa0 <h_review_update+0x16c>)
c0d0795c:	4479      	add	r1, pc
c0d0795e:	6339      	str	r1, [r7, #48]	; 0x30
c0d07960:	6378      	str	r0, [r7, #52]	; 0x34
c0d07962:	463c      	mov	r4, r7
c0d07964:	3444      	adds	r4, #68	; 0x44
c0d07966:	2600      	movs	r6, #0
c0d07968:	6066      	str	r6, [r4, #4]
c0d0796a:	4620      	mov	r0, r4
c0d0796c:	f7fd f8ec 	bl	c0d04b48 <os_ux>
c0d07970:	2504      	movs	r5, #4
c0d07972:	4628      	mov	r0, r5
c0d07974:	f7fd f95a 	bl	c0d04c2c <os_sched_last_status>
c0d07978:	6060      	str	r0, [r4, #4]
c0d0797a:	f7fa febf 	bl	c0d026fc <io_seproxyhal_init_ux>
c0d0797e:	f7fa febf 	bl	c0d02700 <io_seproxyhal_init_button>
c0d07982:	84fe      	strh	r6, [r7, #38]	; 0x26
c0d07984:	4628      	mov	r0, r5
c0d07986:	f7fd f951 	bl	c0d04c2c <os_sched_last_status>
c0d0798a:	6060      	str	r0, [r4, #4]
c0d0798c:	9c00      	ldr	r4, [sp, #0]
c0d0798e:	2800      	cmp	r0, #0
c0d07990:	d07b      	beq.n	c0d07a8a <h_review_update+0x156>
c0d07992:	2897      	cmp	r0, #151	; 0x97
c0d07994:	d079      	beq.n	c0d07a8a <h_review_update+0x156>
c0d07996:	6ab8      	ldr	r0, [r7, #40]	; 0x28
c0d07998:	2800      	cmp	r0, #0
c0d0799a:	d076      	beq.n	c0d07a8a <h_review_update+0x156>
c0d0799c:	8cf8      	ldrh	r0, [r7, #38]	; 0x26
c0d0799e:	5d39      	ldrb	r1, [r7, r4]
c0d079a0:	b280      	uxth	r0, r0
c0d079a2:	4288      	cmp	r0, r1
c0d079a4:	d271      	bcs.n	c0d07a8a <h_review_update+0x156>
c0d079a6:	f7fd f90d 	bl	c0d04bc4 <io_seph_is_status_sent>
c0d079aa:	2800      	cmp	r0, #0
c0d079ac:	d16d      	bne.n	c0d07a8a <h_review_update+0x156>
c0d079ae:	f7fd f89f 	bl	c0d04af0 <os_perso_isonboarded>
c0d079b2:	28aa      	cmp	r0, #170	; 0xaa
c0d079b4:	d103      	bne.n	c0d079be <h_review_update+0x8a>
c0d079b6:	f7fd f8b9 	bl	c0d04b2c <os_global_pin_is_validated>
c0d079ba:	28aa      	cmp	r0, #170	; 0xaa
c0d079bc:	d165      	bne.n	c0d07a8a <h_review_update+0x156>
c0d079be:	6ab9      	ldr	r1, [r7, #40]	; 0x28
c0d079c0:	8cfa      	ldrh	r2, [r7, #38]	; 0x26
c0d079c2:	0150      	lsls	r0, r2, #5
c0d079c4:	1808      	adds	r0, r1, r0
c0d079c6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
c0d079c8:	2b00      	cmp	r3, #0
c0d079ca:	d004      	beq.n	c0d079d6 <h_review_update+0xa2>
c0d079cc:	4798      	blx	r3
c0d079ce:	2800      	cmp	r0, #0
c0d079d0:	d007      	beq.n	c0d079e2 <h_review_update+0xae>
c0d079d2:	8cfa      	ldrh	r2, [r7, #38]	; 0x26
c0d079d4:	6ab9      	ldr	r1, [r7, #40]	; 0x28
c0d079d6:	2801      	cmp	r0, #1
c0d079d8:	d101      	bne.n	c0d079de <h_review_update+0xaa>
c0d079da:	0150      	lsls	r0, r2, #5
c0d079dc:	1808      	adds	r0, r1, r0
c0d079de:	f7ff fd8f 	bl	c0d07500 <io_seproxyhal_display>
c0d079e2:	8cf8      	ldrh	r0, [r7, #38]	; 0x26
c0d079e4:	1c40      	adds	r0, r0, #1
c0d079e6:	84f8      	strh	r0, [r7, #38]	; 0x26
c0d079e8:	6ab9      	ldr	r1, [r7, #40]	; 0x28
c0d079ea:	2900      	cmp	r1, #0
c0d079ec:	d1d7      	bne.n	c0d0799e <h_review_update+0x6a>
c0d079ee:	e04c      	b.n	c0d07a8a <h_review_update+0x156>
c0d079f0:	f7ff fd8a 	bl	c0d07508 <view_error_show>
c0d079f4:	252c      	movs	r5, #44	; 0x2c
c0d079f6:	4e26      	ldr	r6, [pc, #152]	; (c0d07a90 <h_review_update+0x15c>)
c0d079f8:	5d70      	ldrb	r0, [r6, r5]
c0d079fa:	8cf1      	ldrh	r1, [r6, #38]	; 0x26
c0d079fc:	4281      	cmp	r1, r0
c0d079fe:	d235      	bcs.n	c0d07a6c <h_review_update+0x138>
c0d07a00:	4c24      	ldr	r4, [pc, #144]	; (c0d07a94 <h_review_update+0x160>)
c0d07a02:	2180      	movs	r1, #128	; 0x80
c0d07a04:	2200      	movs	r2, #0
c0d07a06:	4620      	mov	r0, r4
c0d07a08:	f7fd f8e8 	bl	c0d04bdc <io_seph_recv>
c0d07a0c:	6ab0      	ldr	r0, [r6, #40]	; 0x28
c0d07a0e:	2800      	cmp	r0, #0
c0d07a10:	d028      	beq.n	c0d07a64 <h_review_update+0x130>
c0d07a12:	8cf0      	ldrh	r0, [r6, #38]	; 0x26
c0d07a14:	5d71      	ldrb	r1, [r6, r5]
c0d07a16:	b280      	uxth	r0, r0
c0d07a18:	4288      	cmp	r0, r1
c0d07a1a:	d223      	bcs.n	c0d07a64 <h_review_update+0x130>
c0d07a1c:	f7fd f8d2 	bl	c0d04bc4 <io_seph_is_status_sent>
c0d07a20:	2800      	cmp	r0, #0
c0d07a22:	d11f      	bne.n	c0d07a64 <h_review_update+0x130>
c0d07a24:	f7fd f864 	bl	c0d04af0 <os_perso_isonboarded>
c0d07a28:	28aa      	cmp	r0, #170	; 0xaa
c0d07a2a:	d103      	bne.n	c0d07a34 <h_review_update+0x100>
c0d07a2c:	f7fd f87e 	bl	c0d04b2c <os_global_pin_is_validated>
c0d07a30:	28aa      	cmp	r0, #170	; 0xaa
c0d07a32:	d117      	bne.n	c0d07a64 <h_review_update+0x130>
c0d07a34:	6ab1      	ldr	r1, [r6, #40]	; 0x28
c0d07a36:	8cf2      	ldrh	r2, [r6, #38]	; 0x26
c0d07a38:	0150      	lsls	r0, r2, #5
c0d07a3a:	1808      	adds	r0, r1, r0
c0d07a3c:	6b33      	ldr	r3, [r6, #48]	; 0x30
c0d07a3e:	2b00      	cmp	r3, #0
c0d07a40:	d004      	beq.n	c0d07a4c <h_review_update+0x118>
c0d07a42:	4798      	blx	r3
c0d07a44:	2800      	cmp	r0, #0
c0d07a46:	d007      	beq.n	c0d07a58 <h_review_update+0x124>
c0d07a48:	8cf2      	ldrh	r2, [r6, #38]	; 0x26
c0d07a4a:	6ab1      	ldr	r1, [r6, #40]	; 0x28
c0d07a4c:	2801      	cmp	r0, #1
c0d07a4e:	d101      	bne.n	c0d07a54 <h_review_update+0x120>
c0d07a50:	0150      	lsls	r0, r2, #5
c0d07a52:	1808      	adds	r0, r1, r0
c0d07a54:	f7ff fd54 	bl	c0d07500 <io_seproxyhal_display>
c0d07a58:	8cf0      	ldrh	r0, [r6, #38]	; 0x26
c0d07a5a:	1c40      	adds	r0, r0, #1
c0d07a5c:	84f0      	strh	r0, [r6, #38]	; 0x26
c0d07a5e:	6ab1      	ldr	r1, [r6, #40]	; 0x28
c0d07a60:	2900      	cmp	r1, #0
c0d07a62:	d1d7      	bne.n	c0d07a14 <h_review_update+0xe0>
c0d07a64:	5d70      	ldrb	r0, [r6, r5]
c0d07a66:	8cf1      	ldrh	r1, [r6, #38]	; 0x26
c0d07a68:	4281      	cmp	r1, r0
c0d07a6a:	d3ca      	bcc.n	c0d07a02 <h_review_update+0xce>
c0d07a6c:	4c09      	ldr	r4, [pc, #36]	; (c0d07a94 <h_review_update+0x160>)
c0d07a6e:	2580      	movs	r5, #128	; 0x80
c0d07a70:	2600      	movs	r6, #0
c0d07a72:	4620      	mov	r0, r4
c0d07a74:	4629      	mov	r1, r5
c0d07a76:	4632      	mov	r2, r6
c0d07a78:	f7fd f8b0 	bl	c0d04bdc <io_seph_recv>
c0d07a7c:	f7fa fd56 	bl	c0d0252c <io_seproxyhal_general_status>
c0d07a80:	4620      	mov	r0, r4
c0d07a82:	4629      	mov	r1, r5
c0d07a84:	4632      	mov	r2, r6
c0d07a86:	f7fd f8a9 	bl	c0d04bdc <io_seph_recv>
c0d07a8a:	b001      	add	sp, #4
c0d07a8c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d07a8e:	46c0      	nop			; (mov r8, r8)
c0d07a90:	20000c64 	.word	0x20000c64
c0d07a94:	20000202 	.word	0x20000202
c0d07a98:	0000014f 	.word	0x0000014f
c0d07a9c:	00002f66 	.word	0x00002f66
c0d07aa0:	ffffff6d 	.word	0xffffff6d

c0d07aa4 <view_review_button>:
c0d07aa4:	b580      	push	{r7, lr}
c0d07aa6:	4911      	ldr	r1, [pc, #68]	; (c0d07aec <view_review_button+0x48>)
c0d07aa8:	4288      	cmp	r0, r1
c0d07aaa:	d00e      	beq.n	c0d07aca <view_review_button+0x26>
c0d07aac:	4910      	ldr	r1, [pc, #64]	; (c0d07af0 <view_review_button+0x4c>)
c0d07aae:	4288      	cmp	r0, r1
c0d07ab0:	d012      	beq.n	c0d07ad8 <view_review_button+0x34>
c0d07ab2:	4910      	ldr	r1, [pc, #64]	; (c0d07af4 <view_review_button+0x50>)
c0d07ab4:	4288      	cmp	r0, r1
c0d07ab6:	d117      	bne.n	c0d07ae8 <view_review_button+0x44>
c0d07ab8:	4810      	ldr	r0, [pc, #64]	; (c0d07afc <view_review_button+0x58>)
c0d07aba:	4478      	add	r0, pc
c0d07abc:	f000 fa14 	bl	c0d07ee8 <zemu_log_stack>
c0d07ac0:	480d      	ldr	r0, [pc, #52]	; (c0d07af8 <view_review_button+0x54>)
c0d07ac2:	6800      	ldr	r0, [r0, #0]
c0d07ac4:	f7ff fdb8 	bl	c0d07638 <h_review_action>
c0d07ac8:	e00e      	b.n	c0d07ae8 <view_review_button+0x44>
c0d07aca:	480d      	ldr	r0, [pc, #52]	; (c0d07b00 <view_review_button+0x5c>)
c0d07acc:	4478      	add	r0, pc
c0d07ace:	f000 fa0b 	bl	c0d07ee8 <zemu_log_stack>
c0d07ad2:	f7ff fd91 	bl	c0d075f8 <h_paging_decrease>
c0d07ad6:	e005      	b.n	c0d07ae4 <view_review_button+0x40>
c0d07ad8:	480a      	ldr	r0, [pc, #40]	; (c0d07b04 <view_review_button+0x60>)
c0d07ada:	4478      	add	r0, pc
c0d07adc:	f000 fa04 	bl	c0d07ee8 <zemu_log_stack>
c0d07ae0:	f7ff fd54 	bl	c0d0758c <h_paging_increase>
c0d07ae4:	f7ff ff26 	bl	c0d07934 <h_review_update>
c0d07ae8:	2000      	movs	r0, #0
c0d07aea:	bd80      	pop	{r7, pc}
c0d07aec:	80000001 	.word	0x80000001
c0d07af0:	80000002 	.word	0x80000002
c0d07af4:	80000003 	.word	0x80000003
c0d07af8:	20000c04 	.word	0x20000c04
c0d07afc:	00002cfe 	.word	0x00002cfe
c0d07b00:	00002d01 	.word	0x00002d01
c0d07b04:	00002d08 	.word	0x00002d08

c0d07b08 <view_idle_show_impl>:
c0d07b08:	b510      	push	{r4, lr}
c0d07b0a:	4604      	mov	r4, r0
c0d07b0c:	2900      	cmp	r1, #0
c0d07b0e:	d007      	beq.n	c0d07b20 <view_idle_show_impl+0x18>
c0d07b10:	460b      	mov	r3, r1
c0d07b12:	480a      	ldr	r0, [pc, #40]	; (c0d07b3c <view_idle_show_impl+0x34>)
c0d07b14:	2111      	movs	r1, #17
c0d07b16:	4a0b      	ldr	r2, [pc, #44]	; (c0d07b44 <view_idle_show_impl+0x3c>)
c0d07b18:	447a      	add	r2, pc
c0d07b1a:	f7fb f9c7 	bl	c0d02eac <snprintf>
c0d07b1e:	e005      	b.n	c0d07b2c <view_idle_show_impl+0x24>
c0d07b20:	4806      	ldr	r0, [pc, #24]	; (c0d07b3c <view_idle_show_impl+0x34>)
c0d07b22:	4907      	ldr	r1, [pc, #28]	; (c0d07b40 <view_idle_show_impl+0x38>)
c0d07b24:	4479      	add	r1, pc
c0d07b26:	2206      	movs	r2, #6
c0d07b28:	f000 fa78 	bl	c0d0801c <__aeabi_memcpy>
c0d07b2c:	4906      	ldr	r1, [pc, #24]	; (c0d07b48 <view_idle_show_impl+0x40>)
c0d07b2e:	4479      	add	r1, pc
c0d07b30:	4a06      	ldr	r2, [pc, #24]	; (c0d07b4c <view_idle_show_impl+0x44>)
c0d07b32:	447a      	add	r2, pc
c0d07b34:	4620      	mov	r0, r4
c0d07b36:	f7ff fae1 	bl	c0d070fc <ux_menu_display>
c0d07b3a:	bd10      	pop	{r4, pc}
c0d07b3c:	20000c08 	.word	0x20000c08
c0d07b40:	00002c64 	.word	0x00002c64
c0d07b44:	00000fa5 	.word	0x00000fa5
c0d07b48:	00002cca 	.word	0x00002cca
c0d07b4c:	fffffd47 	.word	0xfffffd47

c0d07b50 <view_error_show_impl>:
c0d07b50:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d07b52:	b081      	sub	sp, #4
c0d07b54:	212c      	movs	r1, #44	; 0x2c
c0d07b56:	9100      	str	r1, [sp, #0]
c0d07b58:	4f2b      	ldr	r7, [pc, #172]	; (c0d07c08 <view_error_show_impl+0xb8>)
c0d07b5a:	2005      	movs	r0, #5
c0d07b5c:	5478      	strb	r0, [r7, r1]
c0d07b5e:	2044      	movs	r0, #68	; 0x44
c0d07b60:	2103      	movs	r1, #3
c0d07b62:	5439      	strb	r1, [r7, r0]
c0d07b64:	4829      	ldr	r0, [pc, #164]	; (c0d07c0c <view_error_show_impl+0xbc>)
c0d07b66:	4478      	add	r0, pc
c0d07b68:	4929      	ldr	r1, [pc, #164]	; (c0d07c10 <view_error_show_impl+0xc0>)
c0d07b6a:	4479      	add	r1, pc
c0d07b6c:	62b9      	str	r1, [r7, #40]	; 0x28
c0d07b6e:	4929      	ldr	r1, [pc, #164]	; (c0d07c14 <view_error_show_impl+0xc4>)
c0d07b70:	4479      	add	r1, pc
c0d07b72:	6339      	str	r1, [r7, #48]	; 0x30
c0d07b74:	6378      	str	r0, [r7, #52]	; 0x34
c0d07b76:	463c      	mov	r4, r7
c0d07b78:	3444      	adds	r4, #68	; 0x44
c0d07b7a:	2600      	movs	r6, #0
c0d07b7c:	6066      	str	r6, [r4, #4]
c0d07b7e:	4620      	mov	r0, r4
c0d07b80:	f7fc ffe2 	bl	c0d04b48 <os_ux>
c0d07b84:	2504      	movs	r5, #4
c0d07b86:	4628      	mov	r0, r5
c0d07b88:	f7fd f850 	bl	c0d04c2c <os_sched_last_status>
c0d07b8c:	6060      	str	r0, [r4, #4]
c0d07b8e:	f7fa fdb5 	bl	c0d026fc <io_seproxyhal_init_ux>
c0d07b92:	f7fa fdb5 	bl	c0d02700 <io_seproxyhal_init_button>
c0d07b96:	84fe      	strh	r6, [r7, #38]	; 0x26
c0d07b98:	4628      	mov	r0, r5
c0d07b9a:	f7fd f847 	bl	c0d04c2c <os_sched_last_status>
c0d07b9e:	6060      	str	r0, [r4, #4]
c0d07ba0:	9c00      	ldr	r4, [sp, #0]
c0d07ba2:	2800      	cmp	r0, #0
c0d07ba4:	d02d      	beq.n	c0d07c02 <view_error_show_impl+0xb2>
c0d07ba6:	2897      	cmp	r0, #151	; 0x97
c0d07ba8:	d02b      	beq.n	c0d07c02 <view_error_show_impl+0xb2>
c0d07baa:	6ab8      	ldr	r0, [r7, #40]	; 0x28
c0d07bac:	2800      	cmp	r0, #0
c0d07bae:	d028      	beq.n	c0d07c02 <view_error_show_impl+0xb2>
c0d07bb0:	8cf8      	ldrh	r0, [r7, #38]	; 0x26
c0d07bb2:	5d39      	ldrb	r1, [r7, r4]
c0d07bb4:	b280      	uxth	r0, r0
c0d07bb6:	4288      	cmp	r0, r1
c0d07bb8:	d223      	bcs.n	c0d07c02 <view_error_show_impl+0xb2>
c0d07bba:	f7fd f803 	bl	c0d04bc4 <io_seph_is_status_sent>
c0d07bbe:	2800      	cmp	r0, #0
c0d07bc0:	d11f      	bne.n	c0d07c02 <view_error_show_impl+0xb2>
c0d07bc2:	f7fc ff95 	bl	c0d04af0 <os_perso_isonboarded>
c0d07bc6:	28aa      	cmp	r0, #170	; 0xaa
c0d07bc8:	d103      	bne.n	c0d07bd2 <view_error_show_impl+0x82>
c0d07bca:	f7fc ffaf 	bl	c0d04b2c <os_global_pin_is_validated>
c0d07bce:	28aa      	cmp	r0, #170	; 0xaa
c0d07bd0:	d117      	bne.n	c0d07c02 <view_error_show_impl+0xb2>
c0d07bd2:	6ab9      	ldr	r1, [r7, #40]	; 0x28
c0d07bd4:	8cfa      	ldrh	r2, [r7, #38]	; 0x26
c0d07bd6:	0150      	lsls	r0, r2, #5
c0d07bd8:	1808      	adds	r0, r1, r0
c0d07bda:	6b3b      	ldr	r3, [r7, #48]	; 0x30
c0d07bdc:	2b00      	cmp	r3, #0
c0d07bde:	d004      	beq.n	c0d07bea <view_error_show_impl+0x9a>
c0d07be0:	4798      	blx	r3
c0d07be2:	2800      	cmp	r0, #0
c0d07be4:	d007      	beq.n	c0d07bf6 <view_error_show_impl+0xa6>
c0d07be6:	8cfa      	ldrh	r2, [r7, #38]	; 0x26
c0d07be8:	6ab9      	ldr	r1, [r7, #40]	; 0x28
c0d07bea:	2801      	cmp	r0, #1
c0d07bec:	d101      	bne.n	c0d07bf2 <view_error_show_impl+0xa2>
c0d07bee:	0150      	lsls	r0, r2, #5
c0d07bf0:	1808      	adds	r0, r1, r0
c0d07bf2:	f7ff fc85 	bl	c0d07500 <io_seproxyhal_display>
c0d07bf6:	8cf8      	ldrh	r0, [r7, #38]	; 0x26
c0d07bf8:	1c40      	adds	r0, r0, #1
c0d07bfa:	84f8      	strh	r0, [r7, #38]	; 0x26
c0d07bfc:	6ab9      	ldr	r1, [r7, #40]	; 0x28
c0d07bfe:	2900      	cmp	r1, #0
c0d07c00:	d1d7      	bne.n	c0d07bb2 <view_error_show_impl+0x62>
c0d07c02:	b001      	add	sp, #4
c0d07c04:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d07c06:	46c0      	nop			; (mov r8, r8)
c0d07c08:	20000c64 	.word	0x20000c64
c0d07c0c:	000000af 	.word	0x000000af
c0d07c10:	00002e32 	.word	0x00002e32
c0d07c14:	fffffd59 	.word	0xfffffd59

c0d07c18 <view_error_button>:
c0d07c18:	b580      	push	{r7, lr}
c0d07c1a:	4904      	ldr	r1, [pc, #16]	; (c0d07c2c <view_error_button+0x14>)
c0d07c1c:	4288      	cmp	r0, r1
c0d07c1e:	d102      	bne.n	c0d07c26 <view_error_button+0xe>
c0d07c20:	2000      	movs	r0, #0
c0d07c22:	f7ff fc0b 	bl	c0d0743c <h_error_accept>
c0d07c26:	2000      	movs	r0, #0
c0d07c28:	bd80      	pop	{r7, pc}
c0d07c2a:	46c0      	nop			; (mov r8, r8)
c0d07c2c:	80000002 	.word	0x80000002

c0d07c30 <view_review_show_impl>:
c0d07c30:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d07c32:	b081      	sub	sp, #4
c0d07c34:	4604      	mov	r4, r0
c0d07c36:	4836      	ldr	r0, [pc, #216]	; (c0d07d10 <view_review_show_impl+0xe0>)
c0d07c38:	4478      	add	r0, pc
c0d07c3a:	f000 f955 	bl	c0d07ee8 <zemu_log_stack>
c0d07c3e:	4832      	ldr	r0, [pc, #200]	; (c0d07d08 <view_review_show_impl+0xd8>)
c0d07c40:	6004      	str	r4, [r0, #0]
c0d07c42:	f7ff fb01 	bl	c0d07248 <h_paging_init>
c0d07c46:	f7ff fd33 	bl	c0d076b0 <h_review_update_data>
c0d07c4a:	2803      	cmp	r0, #3
c0d07c4c:	d157      	bne.n	c0d07cfe <view_review_show_impl+0xce>
c0d07c4e:	212c      	movs	r1, #44	; 0x2c
c0d07c50:	9100      	str	r1, [sp, #0]
c0d07c52:	4f2e      	ldr	r7, [pc, #184]	; (c0d07d0c <view_review_show_impl+0xdc>)
c0d07c54:	2007      	movs	r0, #7
c0d07c56:	5478      	strb	r0, [r7, r1]
c0d07c58:	2044      	movs	r0, #68	; 0x44
c0d07c5a:	2103      	movs	r1, #3
c0d07c5c:	5439      	strb	r1, [r7, r0]
c0d07c5e:	482d      	ldr	r0, [pc, #180]	; (c0d07d14 <view_review_show_impl+0xe4>)
c0d07c60:	4478      	add	r0, pc
c0d07c62:	492d      	ldr	r1, [pc, #180]	; (c0d07d18 <view_review_show_impl+0xe8>)
c0d07c64:	4479      	add	r1, pc
c0d07c66:	62b9      	str	r1, [r7, #40]	; 0x28
c0d07c68:	492c      	ldr	r1, [pc, #176]	; (c0d07d1c <view_review_show_impl+0xec>)
c0d07c6a:	4479      	add	r1, pc
c0d07c6c:	6339      	str	r1, [r7, #48]	; 0x30
c0d07c6e:	6378      	str	r0, [r7, #52]	; 0x34
c0d07c70:	463c      	mov	r4, r7
c0d07c72:	3444      	adds	r4, #68	; 0x44
c0d07c74:	2600      	movs	r6, #0
c0d07c76:	6066      	str	r6, [r4, #4]
c0d07c78:	4620      	mov	r0, r4
c0d07c7a:	f7fc ff65 	bl	c0d04b48 <os_ux>
c0d07c7e:	2504      	movs	r5, #4
c0d07c80:	4628      	mov	r0, r5
c0d07c82:	f7fc ffd3 	bl	c0d04c2c <os_sched_last_status>
c0d07c86:	6060      	str	r0, [r4, #4]
c0d07c88:	f7fa fd38 	bl	c0d026fc <io_seproxyhal_init_ux>
c0d07c8c:	f7fa fd38 	bl	c0d02700 <io_seproxyhal_init_button>
c0d07c90:	84fe      	strh	r6, [r7, #38]	; 0x26
c0d07c92:	4628      	mov	r0, r5
c0d07c94:	f7fc ffca 	bl	c0d04c2c <os_sched_last_status>
c0d07c98:	6060      	str	r0, [r4, #4]
c0d07c9a:	9c00      	ldr	r4, [sp, #0]
c0d07c9c:	2800      	cmp	r0, #0
c0d07c9e:	d030      	beq.n	c0d07d02 <view_review_show_impl+0xd2>
c0d07ca0:	2897      	cmp	r0, #151	; 0x97
c0d07ca2:	d02e      	beq.n	c0d07d02 <view_review_show_impl+0xd2>
c0d07ca4:	6ab8      	ldr	r0, [r7, #40]	; 0x28
c0d07ca6:	2800      	cmp	r0, #0
c0d07ca8:	d02b      	beq.n	c0d07d02 <view_review_show_impl+0xd2>
c0d07caa:	8cf8      	ldrh	r0, [r7, #38]	; 0x26
c0d07cac:	5d39      	ldrb	r1, [r7, r4]
c0d07cae:	b280      	uxth	r0, r0
c0d07cb0:	4288      	cmp	r0, r1
c0d07cb2:	d226      	bcs.n	c0d07d02 <view_review_show_impl+0xd2>
c0d07cb4:	f7fc ff86 	bl	c0d04bc4 <io_seph_is_status_sent>
c0d07cb8:	2800      	cmp	r0, #0
c0d07cba:	d122      	bne.n	c0d07d02 <view_review_show_impl+0xd2>
c0d07cbc:	f7fc ff18 	bl	c0d04af0 <os_perso_isonboarded>
c0d07cc0:	28aa      	cmp	r0, #170	; 0xaa
c0d07cc2:	d103      	bne.n	c0d07ccc <view_review_show_impl+0x9c>
c0d07cc4:	f7fc ff32 	bl	c0d04b2c <os_global_pin_is_validated>
c0d07cc8:	28aa      	cmp	r0, #170	; 0xaa
c0d07cca:	d11a      	bne.n	c0d07d02 <view_review_show_impl+0xd2>
c0d07ccc:	6ab9      	ldr	r1, [r7, #40]	; 0x28
c0d07cce:	8cfa      	ldrh	r2, [r7, #38]	; 0x26
c0d07cd0:	0150      	lsls	r0, r2, #5
c0d07cd2:	1808      	adds	r0, r1, r0
c0d07cd4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
c0d07cd6:	2b00      	cmp	r3, #0
c0d07cd8:	d004      	beq.n	c0d07ce4 <view_review_show_impl+0xb4>
c0d07cda:	4798      	blx	r3
c0d07cdc:	2800      	cmp	r0, #0
c0d07cde:	d007      	beq.n	c0d07cf0 <view_review_show_impl+0xc0>
c0d07ce0:	8cfa      	ldrh	r2, [r7, #38]	; 0x26
c0d07ce2:	6ab9      	ldr	r1, [r7, #40]	; 0x28
c0d07ce4:	2801      	cmp	r0, #1
c0d07ce6:	d101      	bne.n	c0d07cec <view_review_show_impl+0xbc>
c0d07ce8:	0150      	lsls	r0, r2, #5
c0d07cea:	1808      	adds	r0, r1, r0
c0d07cec:	f7ff fc08 	bl	c0d07500 <io_seproxyhal_display>
c0d07cf0:	8cf8      	ldrh	r0, [r7, #38]	; 0x26
c0d07cf2:	1c40      	adds	r0, r0, #1
c0d07cf4:	84f8      	strh	r0, [r7, #38]	; 0x26
c0d07cf6:	6ab9      	ldr	r1, [r7, #40]	; 0x28
c0d07cf8:	2900      	cmp	r1, #0
c0d07cfa:	d1d7      	bne.n	c0d07cac <view_review_show_impl+0x7c>
c0d07cfc:	e001      	b.n	c0d07d02 <view_review_show_impl+0xd2>
c0d07cfe:	f7ff fc03 	bl	c0d07508 <view_error_show>
c0d07d02:	b001      	add	sp, #4
c0d07d04:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d07d06:	46c0      	nop			; (mov r8, r8)
c0d07d08:	20000c04 	.word	0x20000c04
c0d07d0c:	20000c64 	.word	0x20000c64
c0d07d10:	00002b6a 	.word	0x00002b6a
c0d07d14:	fffffe41 	.word	0xfffffe41
c0d07d18:	00002c58 	.word	0x00002c58
c0d07d1c:	fffffc5f 	.word	0xfffffc5f

c0d07d20 <splitValueField>:
c0d07d20:	b570      	push	{r4, r5, r6, lr}
c0d07d22:	2035      	movs	r0, #53	; 0x35
c0d07d24:	4d0b      	ldr	r5, [pc, #44]	; (c0d07d54 <splitValueField+0x34>)
c0d07d26:	2600      	movs	r6, #0
c0d07d28:	542e      	strb	r6, [r5, r0]
c0d07d2a:	4628      	mov	r0, r5
c0d07d2c:	3012      	adds	r0, #18
c0d07d2e:	2423      	movs	r4, #35	; 0x23
c0d07d30:	4621      	mov	r1, r4
c0d07d32:	f000 fba3 	bl	c0d0847c <strnlen>
c0d07d36:	4908      	ldr	r1, [pc, #32]	; (c0d07d58 <splitValueField+0x38>)
c0d07d38:	4001      	ands	r1, r0
c0d07d3a:	2912      	cmp	r1, #18
c0d07d3c:	d309      	bcc.n	c0d07d52 <splitValueField+0x32>
c0d07d3e:	4628      	mov	r0, r5
c0d07d40:	3035      	adds	r0, #53	; 0x35
c0d07d42:	462b      	mov	r3, r5
c0d07d44:	3323      	adds	r3, #35	; 0x23
c0d07d46:	2112      	movs	r1, #18
c0d07d48:	4a04      	ldr	r2, [pc, #16]	; (c0d07d5c <splitValueField+0x3c>)
c0d07d4a:	447a      	add	r2, pc
c0d07d4c:	f7fb f8ae 	bl	c0d02eac <snprintf>
c0d07d50:	552e      	strb	r6, [r5, r4]
c0d07d52:	bd70      	pop	{r4, r5, r6, pc}
c0d07d54:	20000c08 	.word	0x20000c08
c0d07d58:	0000fffe 	.word	0x0000fffe
c0d07d5c:	00000d73 	.word	0x00000d73

c0d07d60 <splitValueAddress>:
c0d07d60:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d07d62:	b081      	sub	sp, #4
c0d07d64:	4c17      	ldr	r4, [pc, #92]	; (c0d07dc4 <splitValueAddress+0x64>)
c0d07d66:	4626      	mov	r6, r4
c0d07d68:	3612      	adds	r6, #18
c0d07d6a:	2511      	movs	r5, #17
c0d07d6c:	4630      	mov	r0, r6
c0d07d6e:	4629      	mov	r1, r5
c0d07d70:	f000 f8bc 	bl	c0d07eec <zx_compute_line_width_light>
c0d07d74:	2876      	cmp	r0, #118	; 0x76
c0d07d76:	d30b      	bcc.n	c0d07d90 <splitValueAddress+0x30>
c0d07d78:	2511      	movs	r5, #17
c0d07d7a:	0628      	lsls	r0, r5, #24
c0d07d7c:	d007      	beq.n	c0d07d8e <splitValueAddress+0x2e>
c0d07d7e:	1e6d      	subs	r5, r5, #1
c0d07d80:	b2e9      	uxtb	r1, r5
c0d07d82:	4630      	mov	r0, r6
c0d07d84:	f000 f8b2 	bl	c0d07eec <zx_compute_line_width_light>
c0d07d88:	2875      	cmp	r0, #117	; 0x75
c0d07d8a:	d8f6      	bhi.n	c0d07d7a <splitValueAddress+0x1a>
c0d07d8c:	e000      	b.n	c0d07d90 <splitValueAddress+0x30>
c0d07d8e:	25ff      	movs	r5, #255	; 0xff
c0d07d90:	2035      	movs	r0, #53	; 0x35
c0d07d92:	2700      	movs	r7, #0
c0d07d94:	5427      	strb	r7, [r4, r0]
c0d07d96:	2123      	movs	r1, #35	; 0x23
c0d07d98:	4630      	mov	r0, r6
c0d07d9a:	f000 fb6f 	bl	c0d0847c <strnlen>
c0d07d9e:	b2e9      	uxtb	r1, r5
c0d07da0:	2900      	cmp	r1, #0
c0d07da2:	d00d      	beq.n	c0d07dc0 <splitValueAddress+0x60>
c0d07da4:	b280      	uxth	r0, r0
c0d07da6:	4288      	cmp	r0, r1
c0d07da8:	d90a      	bls.n	c0d07dc0 <splitValueAddress+0x60>
c0d07daa:	1865      	adds	r5, r4, r1
c0d07dac:	462b      	mov	r3, r5
c0d07dae:	3312      	adds	r3, #18
c0d07db0:	3435      	adds	r4, #53	; 0x35
c0d07db2:	2112      	movs	r1, #18
c0d07db4:	4a04      	ldr	r2, [pc, #16]	; (c0d07dc8 <splitValueAddress+0x68>)
c0d07db6:	447a      	add	r2, pc
c0d07db8:	4620      	mov	r0, r4
c0d07dba:	f7fb f877 	bl	c0d02eac <snprintf>
c0d07dbe:	74af      	strb	r7, [r5, #18]
c0d07dc0:	b001      	add	sp, #4
c0d07dc2:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d07dc4:	20000c08 	.word	0x20000c08
c0d07dc8:	00000d07 	.word	0x00000d07

c0d07dcc <get_max_char_per_line>:
c0d07dcc:	b570      	push	{r4, r5, r6, lr}
c0d07dce:	4d0e      	ldr	r5, [pc, #56]	; (c0d07e08 <get_max_char_per_line+0x3c>)
c0d07dd0:	3512      	adds	r5, #18
c0d07dd2:	2411      	movs	r4, #17
c0d07dd4:	4628      	mov	r0, r5
c0d07dd6:	4621      	mov	r1, r4
c0d07dd8:	f000 f888 	bl	c0d07eec <zx_compute_line_width_light>
c0d07ddc:	2876      	cmp	r0, #118	; 0x76
c0d07dde:	d30f      	bcc.n	c0d07e00 <get_max_char_per_line+0x34>
c0d07de0:	0620      	lsls	r0, r4, #24
c0d07de2:	d00f      	beq.n	c0d07e04 <get_max_char_per_line+0x38>
c0d07de4:	1e64      	subs	r4, r4, #1
c0d07de6:	b2e6      	uxtb	r6, r4
c0d07de8:	4628      	mov	r0, r5
c0d07dea:	4631      	mov	r1, r6
c0d07dec:	f000 f87e 	bl	c0d07eec <zx_compute_line_width_light>
c0d07df0:	2875      	cmp	r0, #117	; 0x75
c0d07df2:	d8f5      	bhi.n	c0d07de0 <get_max_char_per_line+0x14>
c0d07df4:	2e00      	cmp	r6, #0
c0d07df6:	d001      	beq.n	c0d07dfc <get_max_char_per_line+0x30>
c0d07df8:	0060      	lsls	r0, r4, #1
c0d07dfa:	1c46      	adds	r6, r0, #1
c0d07dfc:	b2f0      	uxtb	r0, r6
c0d07dfe:	bd70      	pop	{r4, r5, r6, pc}
c0d07e00:	2023      	movs	r0, #35	; 0x23
c0d07e02:	bd70      	pop	{r4, r5, r6, pc}
c0d07e04:	20ff      	movs	r0, #255	; 0xff
c0d07e06:	bd70      	pop	{r4, r5, r6, pc}
c0d07e08:	20000c08 	.word	0x20000c08

c0d07e0c <h_expert_toggle>:
c0d07e0c:	b510      	push	{r4, lr}
c0d07e0e:	f7f8 ff6d 	bl	c0d00cec <app_mode_expert>
c0d07e12:	2401      	movs	r4, #1
c0d07e14:	4060      	eors	r0, r4
c0d07e16:	f7f8 ff73 	bl	c0d00d00 <app_mode_set_expert>
c0d07e1a:	2100      	movs	r1, #0
c0d07e1c:	4620      	mov	r0, r4
c0d07e1e:	f7ff fa2d 	bl	c0d0727c <view_idle_show>
c0d07e22:	bd10      	pop	{r4, pc}

c0d07e24 <z_str3join>:
c0d07e24:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d07e26:	b083      	sub	sp, #12
c0d07e28:	9302      	str	r3, [sp, #8]
c0d07e2a:	4615      	mov	r5, r2
c0d07e2c:	460f      	mov	r7, r1
c0d07e2e:	4604      	mov	r4, r0
c0d07e30:	2600      	movs	r6, #0
c0d07e32:	2800      	cmp	r0, #0
c0d07e34:	4632      	mov	r2, r6
c0d07e36:	d004      	beq.n	c0d07e42 <z_str3join+0x1e>
c0d07e38:	4620      	mov	r0, r4
c0d07e3a:	4639      	mov	r1, r7
c0d07e3c:	f000 fb1e 	bl	c0d0847c <strnlen>
c0d07e40:	4602      	mov	r2, r0
c0d07e42:	2d00      	cmp	r5, #0
c0d07e44:	d006      	beq.n	c0d07e54 <z_str3join+0x30>
c0d07e46:	4628      	mov	r0, r5
c0d07e48:	4639      	mov	r1, r7
c0d07e4a:	4616      	mov	r6, r2
c0d07e4c:	f000 fb16 	bl	c0d0847c <strnlen>
c0d07e50:	4632      	mov	r2, r6
c0d07e52:	4606      	mov	r6, r0
c0d07e54:	9802      	ldr	r0, [sp, #8]
c0d07e56:	2800      	cmp	r0, #0
c0d07e58:	9500      	str	r5, [sp, #0]
c0d07e5a:	d016      	beq.n	c0d07e8a <z_str3join+0x66>
c0d07e5c:	4639      	mov	r1, r7
c0d07e5e:	9201      	str	r2, [sp, #4]
c0d07e60:	f000 fb0c 	bl	c0d0847c <strnlen>
c0d07e64:	9a01      	ldr	r2, [sp, #4]
c0d07e66:	4605      	mov	r5, r0
c0d07e68:	1990      	adds	r0, r2, r6
c0d07e6a:	1940      	adds	r0, r0, r5
c0d07e6c:	1c40      	adds	r0, r0, #1
c0d07e6e:	42b8      	cmp	r0, r7
c0d07e70:	d80f      	bhi.n	c0d07e92 <z_str3join+0x6e>
c0d07e72:	2d00      	cmp	r5, #0
c0d07e74:	d015      	beq.n	c0d07ea2 <z_str3join+0x7e>
c0d07e76:	18a0      	adds	r0, r4, r2
c0d07e78:	9902      	ldr	r1, [sp, #8]
c0d07e7a:	462a      	mov	r2, r5
c0d07e7c:	f000 f8d2 	bl	c0d08024 <__aeabi_memmove>
c0d07e80:	9a01      	ldr	r2, [sp, #4]
c0d07e82:	18a8      	adds	r0, r5, r2
c0d07e84:	2100      	movs	r1, #0
c0d07e86:	5421      	strb	r1, [r4, r0]
c0d07e88:	e00c      	b.n	c0d07ea4 <z_str3join+0x80>
c0d07e8a:	1990      	adds	r0, r2, r6
c0d07e8c:	1c40      	adds	r0, r0, #1
c0d07e8e:	42b8      	cmp	r0, r7
c0d07e90:	d907      	bls.n	c0d07ea2 <z_str3join+0x7e>
c0d07e92:	4a0d      	ldr	r2, [pc, #52]	; (c0d07ec8 <z_str3join+0xa4>)
c0d07e94:	447a      	add	r2, pc
c0d07e96:	4620      	mov	r0, r4
c0d07e98:	4639      	mov	r1, r7
c0d07e9a:	f7fb f807 	bl	c0d02eac <snprintf>
c0d07e9e:	2706      	movs	r7, #6
c0d07ea0:	e00e      	b.n	c0d07ec0 <z_str3join+0x9c>
c0d07ea2:	2500      	movs	r5, #0
c0d07ea4:	2703      	movs	r7, #3
c0d07ea6:	2e00      	cmp	r6, #0
c0d07ea8:	d00a      	beq.n	c0d07ec0 <z_str3join+0x9c>
c0d07eaa:	19a0      	adds	r0, r4, r6
c0d07eac:	1951      	adds	r1, r2, r5
c0d07eae:	1c4a      	adds	r2, r1, #1
c0d07eb0:	4621      	mov	r1, r4
c0d07eb2:	f000 f8b7 	bl	c0d08024 <__aeabi_memmove>
c0d07eb6:	4620      	mov	r0, r4
c0d07eb8:	9900      	ldr	r1, [sp, #0]
c0d07eba:	4632      	mov	r2, r6
c0d07ebc:	f000 f8b2 	bl	c0d08024 <__aeabi_memmove>
c0d07ec0:	4638      	mov	r0, r7
c0d07ec2:	b003      	add	sp, #12
c0d07ec4:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d07ec6:	46c0      	nop			; (mov r8, r8)
c0d07ec8:	00002bb5 	.word	0x00002bb5

c0d07ecc <check_app_canary>:
c0d07ecc:	b580      	push	{r7, lr}
c0d07ece:	4804      	ldr	r0, [pc, #16]	; (c0d07ee0 <check_app_canary+0x14>)
c0d07ed0:	6800      	ldr	r0, [r0, #0]
c0d07ed2:	4904      	ldr	r1, [pc, #16]	; (c0d07ee4 <check_app_canary+0x18>)
c0d07ed4:	4288      	cmp	r0, r1
c0d07ed6:	d001      	beq.n	c0d07edc <check_app_canary+0x10>
c0d07ed8:	f7fa fd10 	bl	c0d028fc <io_seproxyhal_se_reset>
c0d07edc:	bd80      	pop	{r7, pc}
c0d07ede:	46c0      	nop			; (mov r8, r8)
c0d07ee0:	20000cb4 	.word	0x20000cb4
c0d07ee4:	dead0031 	.word	0xdead0031

c0d07ee8 <zemu_log_stack>:
c0d07ee8:	4770      	bx	lr
	...

c0d07eec <zx_compute_line_width_light>:
c0d07eec:	b510      	push	{r4, lr}
c0d07eee:	2800      	cmp	r0, #0
c0d07ef0:	d01a      	beq.n	c0d07f28 <zx_compute_line_width_light+0x3c>
c0d07ef2:	2200      	movs	r2, #0
c0d07ef4:	2900      	cmp	r1, #0
c0d07ef6:	d018      	beq.n	c0d07f2a <zx_compute_line_width_light+0x3e>
c0d07ef8:	7803      	ldrb	r3, [r0, #0]
c0d07efa:	b25c      	sxtb	r4, r3
c0d07efc:	b2e3      	uxtb	r3, r4
c0d07efe:	2b20      	cmp	r3, #32
c0d07f00:	d309      	bcc.n	c0d07f16 <zx_compute_line_width_light+0x2a>
c0d07f02:	2c00      	cmp	r4, #0
c0d07f04:	d407      	bmi.n	c0d07f16 <zx_compute_line_width_light+0x2a>
c0d07f06:	4c0b      	ldr	r4, [pc, #44]	; (c0d07f34 <zx_compute_line_width_light+0x48>)
c0d07f08:	447c      	add	r4, pc
c0d07f0a:	191b      	adds	r3, r3, r4
c0d07f0c:	3b20      	subs	r3, #32
c0d07f0e:	781b      	ldrb	r3, [r3, #0]
c0d07f10:	091b      	lsrs	r3, r3, #4
c0d07f12:	18d2      	adds	r2, r2, r3
c0d07f14:	e003      	b.n	c0d07f1e <zx_compute_line_width_light+0x32>
c0d07f16:	2b0a      	cmp	r3, #10
c0d07f18:	d007      	beq.n	c0d07f2a <zx_compute_line_width_light+0x3e>
c0d07f1a:	2b0d      	cmp	r3, #13
c0d07f1c:	d005      	beq.n	c0d07f2a <zx_compute_line_width_light+0x3e>
c0d07f1e:	1e49      	subs	r1, r1, #1
c0d07f20:	1c40      	adds	r0, r0, #1
c0d07f22:	060b      	lsls	r3, r1, #24
c0d07f24:	d1e8      	bne.n	c0d07ef8 <zx_compute_line_width_light+0xc>
c0d07f26:	e000      	b.n	c0d07f2a <zx_compute_line_width_light+0x3e>
c0d07f28:	4a01      	ldr	r2, [pc, #4]	; (c0d07f30 <zx_compute_line_width_light+0x44>)
c0d07f2a:	b290      	uxth	r0, r2
c0d07f2c:	bd10      	pop	{r4, pc}
c0d07f2e:	46c0      	nop			; (mov r8, r8)
c0d07f30:	0000ffff 	.word	0x0000ffff
c0d07f34:	00002b48 	.word	0x00002b48

c0d07f38 <__udivsi3>:
c0d07f38:	2900      	cmp	r1, #0
c0d07f3a:	d034      	beq.n	c0d07fa6 <.udivsi3_skip_div0_test+0x6a>

c0d07f3c <.udivsi3_skip_div0_test>:
c0d07f3c:	2301      	movs	r3, #1
c0d07f3e:	2200      	movs	r2, #0
c0d07f40:	b410      	push	{r4}
c0d07f42:	4288      	cmp	r0, r1
c0d07f44:	d32c      	bcc.n	c0d07fa0 <.udivsi3_skip_div0_test+0x64>
c0d07f46:	2401      	movs	r4, #1
c0d07f48:	0724      	lsls	r4, r4, #28
c0d07f4a:	42a1      	cmp	r1, r4
c0d07f4c:	d204      	bcs.n	c0d07f58 <.udivsi3_skip_div0_test+0x1c>
c0d07f4e:	4281      	cmp	r1, r0
c0d07f50:	d202      	bcs.n	c0d07f58 <.udivsi3_skip_div0_test+0x1c>
c0d07f52:	0109      	lsls	r1, r1, #4
c0d07f54:	011b      	lsls	r3, r3, #4
c0d07f56:	e7f8      	b.n	c0d07f4a <.udivsi3_skip_div0_test+0xe>
c0d07f58:	00e4      	lsls	r4, r4, #3
c0d07f5a:	42a1      	cmp	r1, r4
c0d07f5c:	d204      	bcs.n	c0d07f68 <.udivsi3_skip_div0_test+0x2c>
c0d07f5e:	4281      	cmp	r1, r0
c0d07f60:	d202      	bcs.n	c0d07f68 <.udivsi3_skip_div0_test+0x2c>
c0d07f62:	0049      	lsls	r1, r1, #1
c0d07f64:	005b      	lsls	r3, r3, #1
c0d07f66:	e7f8      	b.n	c0d07f5a <.udivsi3_skip_div0_test+0x1e>
c0d07f68:	4288      	cmp	r0, r1
c0d07f6a:	d301      	bcc.n	c0d07f70 <.udivsi3_skip_div0_test+0x34>
c0d07f6c:	1a40      	subs	r0, r0, r1
c0d07f6e:	431a      	orrs	r2, r3
c0d07f70:	084c      	lsrs	r4, r1, #1
c0d07f72:	42a0      	cmp	r0, r4
c0d07f74:	d302      	bcc.n	c0d07f7c <.udivsi3_skip_div0_test+0x40>
c0d07f76:	1b00      	subs	r0, r0, r4
c0d07f78:	085c      	lsrs	r4, r3, #1
c0d07f7a:	4322      	orrs	r2, r4
c0d07f7c:	088c      	lsrs	r4, r1, #2
c0d07f7e:	42a0      	cmp	r0, r4
c0d07f80:	d302      	bcc.n	c0d07f88 <.udivsi3_skip_div0_test+0x4c>
c0d07f82:	1b00      	subs	r0, r0, r4
c0d07f84:	089c      	lsrs	r4, r3, #2
c0d07f86:	4322      	orrs	r2, r4
c0d07f88:	08cc      	lsrs	r4, r1, #3
c0d07f8a:	42a0      	cmp	r0, r4
c0d07f8c:	d302      	bcc.n	c0d07f94 <.udivsi3_skip_div0_test+0x58>
c0d07f8e:	1b00      	subs	r0, r0, r4
c0d07f90:	08dc      	lsrs	r4, r3, #3
c0d07f92:	4322      	orrs	r2, r4
c0d07f94:	2800      	cmp	r0, #0
c0d07f96:	d003      	beq.n	c0d07fa0 <.udivsi3_skip_div0_test+0x64>
c0d07f98:	091b      	lsrs	r3, r3, #4
c0d07f9a:	d001      	beq.n	c0d07fa0 <.udivsi3_skip_div0_test+0x64>
c0d07f9c:	0909      	lsrs	r1, r1, #4
c0d07f9e:	e7e3      	b.n	c0d07f68 <.udivsi3_skip_div0_test+0x2c>
c0d07fa0:	0010      	movs	r0, r2
c0d07fa2:	bc10      	pop	{r4}
c0d07fa4:	4770      	bx	lr
c0d07fa6:	b501      	push	{r0, lr}
c0d07fa8:	2000      	movs	r0, #0
c0d07faa:	f000 f80b 	bl	c0d07fc4 <__aeabi_idiv0>
c0d07fae:	bd02      	pop	{r1, pc}

c0d07fb0 <__aeabi_uidivmod>:
c0d07fb0:	2900      	cmp	r1, #0
c0d07fb2:	d0f8      	beq.n	c0d07fa6 <.udivsi3_skip_div0_test+0x6a>
c0d07fb4:	b503      	push	{r0, r1, lr}
c0d07fb6:	f7ff ffc1 	bl	c0d07f3c <.udivsi3_skip_div0_test>
c0d07fba:	bc0e      	pop	{r1, r2, r3}
c0d07fbc:	4342      	muls	r2, r0
c0d07fbe:	1a89      	subs	r1, r1, r2
c0d07fc0:	4718      	bx	r3
c0d07fc2:	46c0      	nop			; (mov r8, r8)

c0d07fc4 <__aeabi_idiv0>:
c0d07fc4:	4770      	bx	lr
c0d07fc6:	46c0      	nop			; (mov r8, r8)

c0d07fc8 <__aeabi_lmul>:
c0d07fc8:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
c0d07fca:	9301      	str	r3, [sp, #4]
c0d07fcc:	b283      	uxth	r3, r0
c0d07fce:	469c      	mov	ip, r3
c0d07fd0:	0006      	movs	r6, r0
c0d07fd2:	0c03      	lsrs	r3, r0, #16
c0d07fd4:	4660      	mov	r0, ip
c0d07fd6:	000d      	movs	r5, r1
c0d07fd8:	4661      	mov	r1, ip
c0d07fda:	b297      	uxth	r7, r2
c0d07fdc:	4378      	muls	r0, r7
c0d07fde:	0c14      	lsrs	r4, r2, #16
c0d07fe0:	435f      	muls	r7, r3
c0d07fe2:	4363      	muls	r3, r4
c0d07fe4:	434c      	muls	r4, r1
c0d07fe6:	0c01      	lsrs	r1, r0, #16
c0d07fe8:	468c      	mov	ip, r1
c0d07fea:	19e4      	adds	r4, r4, r7
c0d07fec:	4464      	add	r4, ip
c0d07fee:	42a7      	cmp	r7, r4
c0d07ff0:	d902      	bls.n	c0d07ff8 <__aeabi_lmul+0x30>
c0d07ff2:	2180      	movs	r1, #128	; 0x80
c0d07ff4:	0249      	lsls	r1, r1, #9
c0d07ff6:	185b      	adds	r3, r3, r1
c0d07ff8:	9901      	ldr	r1, [sp, #4]
c0d07ffa:	436a      	muls	r2, r5
c0d07ffc:	4371      	muls	r1, r6
c0d07ffe:	0c27      	lsrs	r7, r4, #16
c0d08000:	18fb      	adds	r3, r7, r3
c0d08002:	0424      	lsls	r4, r4, #16
c0d08004:	18c9      	adds	r1, r1, r3
c0d08006:	b280      	uxth	r0, r0
c0d08008:	1820      	adds	r0, r4, r0
c0d0800a:	1889      	adds	r1, r1, r2
c0d0800c:	b003      	add	sp, #12
c0d0800e:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0d08010 <__aeabi_memclr>:
c0d08010:	b510      	push	{r4, lr}
c0d08012:	2200      	movs	r2, #0
c0d08014:	f000 f80a 	bl	c0d0802c <__aeabi_memset>
c0d08018:	bd10      	pop	{r4, pc}
c0d0801a:	46c0      	nop			; (mov r8, r8)

c0d0801c <__aeabi_memcpy>:
c0d0801c:	b510      	push	{r4, lr}
c0d0801e:	f000 f835 	bl	c0d0808c <memcpy>
c0d08022:	bd10      	pop	{r4, pc}

c0d08024 <__aeabi_memmove>:
c0d08024:	b510      	push	{r4, lr}
c0d08026:	f000 f883 	bl	c0d08130 <memmove>
c0d0802a:	bd10      	pop	{r4, pc}

c0d0802c <__aeabi_memset>:
c0d0802c:	000b      	movs	r3, r1
c0d0802e:	b510      	push	{r4, lr}
c0d08030:	0011      	movs	r1, r2
c0d08032:	001a      	movs	r2, r3
c0d08034:	f000 f8d2 	bl	c0d081dc <memset>
c0d08038:	bd10      	pop	{r4, pc}
c0d0803a:	46c0      	nop			; (mov r8, r8)

c0d0803c <explicit_bzero>:
c0d0803c:	b510      	push	{r4, lr}
c0d0803e:	f000 fc2b 	bl	c0d08898 <bzero>
c0d08042:	bd10      	pop	{r4, pc}

c0d08044 <memcmp>:
c0d08044:	b530      	push	{r4, r5, lr}
c0d08046:	2a03      	cmp	r2, #3
c0d08048:	d90c      	bls.n	c0d08064 <memcmp+0x20>
c0d0804a:	0003      	movs	r3, r0
c0d0804c:	430b      	orrs	r3, r1
c0d0804e:	079b      	lsls	r3, r3, #30
c0d08050:	d119      	bne.n	c0d08086 <memcmp+0x42>
c0d08052:	6803      	ldr	r3, [r0, #0]
c0d08054:	680c      	ldr	r4, [r1, #0]
c0d08056:	42a3      	cmp	r3, r4
c0d08058:	d115      	bne.n	c0d08086 <memcmp+0x42>
c0d0805a:	3a04      	subs	r2, #4
c0d0805c:	3004      	adds	r0, #4
c0d0805e:	3104      	adds	r1, #4
c0d08060:	2a03      	cmp	r2, #3
c0d08062:	d8f6      	bhi.n	c0d08052 <memcmp+0xe>
c0d08064:	1e55      	subs	r5, r2, #1
c0d08066:	2a00      	cmp	r2, #0
c0d08068:	d00b      	beq.n	c0d08082 <memcmp+0x3e>
c0d0806a:	2300      	movs	r3, #0
c0d0806c:	e003      	b.n	c0d08076 <memcmp+0x32>
c0d0806e:	1c5a      	adds	r2, r3, #1
c0d08070:	429d      	cmp	r5, r3
c0d08072:	d006      	beq.n	c0d08082 <memcmp+0x3e>
c0d08074:	0013      	movs	r3, r2
c0d08076:	5cc2      	ldrb	r2, [r0, r3]
c0d08078:	5ccc      	ldrb	r4, [r1, r3]
c0d0807a:	42a2      	cmp	r2, r4
c0d0807c:	d0f7      	beq.n	c0d0806e <memcmp+0x2a>
c0d0807e:	1b10      	subs	r0, r2, r4
c0d08080:	e000      	b.n	c0d08084 <memcmp+0x40>
c0d08082:	2000      	movs	r0, #0
c0d08084:	bd30      	pop	{r4, r5, pc}
c0d08086:	1e55      	subs	r5, r2, #1
c0d08088:	e7ef      	b.n	c0d0806a <memcmp+0x26>
c0d0808a:	46c0      	nop			; (mov r8, r8)

c0d0808c <memcpy>:
c0d0808c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d0808e:	46c6      	mov	lr, r8
c0d08090:	b500      	push	{lr}
c0d08092:	2a0f      	cmp	r2, #15
c0d08094:	d941      	bls.n	c0d0811a <memcpy+0x8e>
c0d08096:	2703      	movs	r7, #3
c0d08098:	000d      	movs	r5, r1
c0d0809a:	003e      	movs	r6, r7
c0d0809c:	4305      	orrs	r5, r0
c0d0809e:	000c      	movs	r4, r1
c0d080a0:	0003      	movs	r3, r0
c0d080a2:	402e      	ands	r6, r5
c0d080a4:	422f      	tst	r7, r5
c0d080a6:	d13d      	bne.n	c0d08124 <memcpy+0x98>
c0d080a8:	0015      	movs	r5, r2
c0d080aa:	3d10      	subs	r5, #16
c0d080ac:	092d      	lsrs	r5, r5, #4
c0d080ae:	46a8      	mov	r8, r5
c0d080b0:	012d      	lsls	r5, r5, #4
c0d080b2:	46ac      	mov	ip, r5
c0d080b4:	4484      	add	ip, r0
c0d080b6:	6827      	ldr	r7, [r4, #0]
c0d080b8:	001d      	movs	r5, r3
c0d080ba:	601f      	str	r7, [r3, #0]
c0d080bc:	6867      	ldr	r7, [r4, #4]
c0d080be:	605f      	str	r7, [r3, #4]
c0d080c0:	68a7      	ldr	r7, [r4, #8]
c0d080c2:	609f      	str	r7, [r3, #8]
c0d080c4:	68e7      	ldr	r7, [r4, #12]
c0d080c6:	3410      	adds	r4, #16
c0d080c8:	60df      	str	r7, [r3, #12]
c0d080ca:	3310      	adds	r3, #16
c0d080cc:	4565      	cmp	r5, ip
c0d080ce:	d1f2      	bne.n	c0d080b6 <memcpy+0x2a>
c0d080d0:	4645      	mov	r5, r8
c0d080d2:	230f      	movs	r3, #15
c0d080d4:	240c      	movs	r4, #12
c0d080d6:	3501      	adds	r5, #1
c0d080d8:	012d      	lsls	r5, r5, #4
c0d080da:	1949      	adds	r1, r1, r5
c0d080dc:	4013      	ands	r3, r2
c0d080de:	1945      	adds	r5, r0, r5
c0d080e0:	4214      	tst	r4, r2
c0d080e2:	d022      	beq.n	c0d0812a <memcpy+0x9e>
c0d080e4:	598c      	ldr	r4, [r1, r6]
c0d080e6:	51ac      	str	r4, [r5, r6]
c0d080e8:	3604      	adds	r6, #4
c0d080ea:	1b9c      	subs	r4, r3, r6
c0d080ec:	2c03      	cmp	r4, #3
c0d080ee:	d8f9      	bhi.n	c0d080e4 <memcpy+0x58>
c0d080f0:	3b04      	subs	r3, #4
c0d080f2:	089b      	lsrs	r3, r3, #2
c0d080f4:	3301      	adds	r3, #1
c0d080f6:	009b      	lsls	r3, r3, #2
c0d080f8:	18ed      	adds	r5, r5, r3
c0d080fa:	18c9      	adds	r1, r1, r3
c0d080fc:	2303      	movs	r3, #3
c0d080fe:	401a      	ands	r2, r3
c0d08100:	1e56      	subs	r6, r2, #1
c0d08102:	2a00      	cmp	r2, #0
c0d08104:	d006      	beq.n	c0d08114 <memcpy+0x88>
c0d08106:	2300      	movs	r3, #0
c0d08108:	5ccc      	ldrb	r4, [r1, r3]
c0d0810a:	001a      	movs	r2, r3
c0d0810c:	54ec      	strb	r4, [r5, r3]
c0d0810e:	3301      	adds	r3, #1
c0d08110:	4296      	cmp	r6, r2
c0d08112:	d1f9      	bne.n	c0d08108 <memcpy+0x7c>
c0d08114:	bc80      	pop	{r7}
c0d08116:	46b8      	mov	r8, r7
c0d08118:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d0811a:	0005      	movs	r5, r0
c0d0811c:	1e56      	subs	r6, r2, #1
c0d0811e:	2a00      	cmp	r2, #0
c0d08120:	d1f1      	bne.n	c0d08106 <memcpy+0x7a>
c0d08122:	e7f7      	b.n	c0d08114 <memcpy+0x88>
c0d08124:	0005      	movs	r5, r0
c0d08126:	1e56      	subs	r6, r2, #1
c0d08128:	e7ed      	b.n	c0d08106 <memcpy+0x7a>
c0d0812a:	001a      	movs	r2, r3
c0d0812c:	e7f6      	b.n	c0d0811c <memcpy+0x90>
c0d0812e:	46c0      	nop			; (mov r8, r8)

c0d08130 <memmove>:
c0d08130:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d08132:	4288      	cmp	r0, r1
c0d08134:	d90a      	bls.n	c0d0814c <memmove+0x1c>
c0d08136:	188b      	adds	r3, r1, r2
c0d08138:	4298      	cmp	r0, r3
c0d0813a:	d207      	bcs.n	c0d0814c <memmove+0x1c>
c0d0813c:	1e53      	subs	r3, r2, #1
c0d0813e:	2a00      	cmp	r2, #0
c0d08140:	d003      	beq.n	c0d0814a <memmove+0x1a>
c0d08142:	5cca      	ldrb	r2, [r1, r3]
c0d08144:	54c2      	strb	r2, [r0, r3]
c0d08146:	3b01      	subs	r3, #1
c0d08148:	d2fb      	bcs.n	c0d08142 <memmove+0x12>
c0d0814a:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d0814c:	2a0f      	cmp	r2, #15
c0d0814e:	d80b      	bhi.n	c0d08168 <memmove+0x38>
c0d08150:	0005      	movs	r5, r0
c0d08152:	1e56      	subs	r6, r2, #1
c0d08154:	2a00      	cmp	r2, #0
c0d08156:	d0f8      	beq.n	c0d0814a <memmove+0x1a>
c0d08158:	2300      	movs	r3, #0
c0d0815a:	5ccc      	ldrb	r4, [r1, r3]
c0d0815c:	001a      	movs	r2, r3
c0d0815e:	54ec      	strb	r4, [r5, r3]
c0d08160:	3301      	adds	r3, #1
c0d08162:	4296      	cmp	r6, r2
c0d08164:	d1f9      	bne.n	c0d0815a <memmove+0x2a>
c0d08166:	e7f0      	b.n	c0d0814a <memmove+0x1a>
c0d08168:	2703      	movs	r7, #3
c0d0816a:	000d      	movs	r5, r1
c0d0816c:	003e      	movs	r6, r7
c0d0816e:	4305      	orrs	r5, r0
c0d08170:	000c      	movs	r4, r1
c0d08172:	0003      	movs	r3, r0
c0d08174:	402e      	ands	r6, r5
c0d08176:	422f      	tst	r7, r5
c0d08178:	d12b      	bne.n	c0d081d2 <memmove+0xa2>
c0d0817a:	0015      	movs	r5, r2
c0d0817c:	3d10      	subs	r5, #16
c0d0817e:	092d      	lsrs	r5, r5, #4
c0d08180:	46ac      	mov	ip, r5
c0d08182:	012f      	lsls	r7, r5, #4
c0d08184:	183f      	adds	r7, r7, r0
c0d08186:	6825      	ldr	r5, [r4, #0]
c0d08188:	601d      	str	r5, [r3, #0]
c0d0818a:	6865      	ldr	r5, [r4, #4]
c0d0818c:	605d      	str	r5, [r3, #4]
c0d0818e:	68a5      	ldr	r5, [r4, #8]
c0d08190:	609d      	str	r5, [r3, #8]
c0d08192:	68e5      	ldr	r5, [r4, #12]
c0d08194:	3410      	adds	r4, #16
c0d08196:	60dd      	str	r5, [r3, #12]
c0d08198:	001d      	movs	r5, r3
c0d0819a:	3310      	adds	r3, #16
c0d0819c:	42bd      	cmp	r5, r7
c0d0819e:	d1f2      	bne.n	c0d08186 <memmove+0x56>
c0d081a0:	4665      	mov	r5, ip
c0d081a2:	230f      	movs	r3, #15
c0d081a4:	240c      	movs	r4, #12
c0d081a6:	3501      	adds	r5, #1
c0d081a8:	012d      	lsls	r5, r5, #4
c0d081aa:	1949      	adds	r1, r1, r5
c0d081ac:	4013      	ands	r3, r2
c0d081ae:	1945      	adds	r5, r0, r5
c0d081b0:	4214      	tst	r4, r2
c0d081b2:	d011      	beq.n	c0d081d8 <memmove+0xa8>
c0d081b4:	598c      	ldr	r4, [r1, r6]
c0d081b6:	51ac      	str	r4, [r5, r6]
c0d081b8:	3604      	adds	r6, #4
c0d081ba:	1b9c      	subs	r4, r3, r6
c0d081bc:	2c03      	cmp	r4, #3
c0d081be:	d8f9      	bhi.n	c0d081b4 <memmove+0x84>
c0d081c0:	3b04      	subs	r3, #4
c0d081c2:	089b      	lsrs	r3, r3, #2
c0d081c4:	3301      	adds	r3, #1
c0d081c6:	009b      	lsls	r3, r3, #2
c0d081c8:	18ed      	adds	r5, r5, r3
c0d081ca:	18c9      	adds	r1, r1, r3
c0d081cc:	2303      	movs	r3, #3
c0d081ce:	401a      	ands	r2, r3
c0d081d0:	e7bf      	b.n	c0d08152 <memmove+0x22>
c0d081d2:	0005      	movs	r5, r0
c0d081d4:	1e56      	subs	r6, r2, #1
c0d081d6:	e7bf      	b.n	c0d08158 <memmove+0x28>
c0d081d8:	001a      	movs	r2, r3
c0d081da:	e7ba      	b.n	c0d08152 <memmove+0x22>

c0d081dc <memset>:
c0d081dc:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d081de:	0005      	movs	r5, r0
c0d081e0:	0783      	lsls	r3, r0, #30
c0d081e2:	d049      	beq.n	c0d08278 <memset+0x9c>
c0d081e4:	1e54      	subs	r4, r2, #1
c0d081e6:	2a00      	cmp	r2, #0
c0d081e8:	d045      	beq.n	c0d08276 <memset+0x9a>
c0d081ea:	0003      	movs	r3, r0
c0d081ec:	2603      	movs	r6, #3
c0d081ee:	b2ca      	uxtb	r2, r1
c0d081f0:	e002      	b.n	c0d081f8 <memset+0x1c>
c0d081f2:	3501      	adds	r5, #1
c0d081f4:	3c01      	subs	r4, #1
c0d081f6:	d33e      	bcc.n	c0d08276 <memset+0x9a>
c0d081f8:	3301      	adds	r3, #1
c0d081fa:	702a      	strb	r2, [r5, #0]
c0d081fc:	4233      	tst	r3, r6
c0d081fe:	d1f8      	bne.n	c0d081f2 <memset+0x16>
c0d08200:	2c03      	cmp	r4, #3
c0d08202:	d930      	bls.n	c0d08266 <memset+0x8a>
c0d08204:	22ff      	movs	r2, #255	; 0xff
c0d08206:	400a      	ands	r2, r1
c0d08208:	0215      	lsls	r5, r2, #8
c0d0820a:	4315      	orrs	r5, r2
c0d0820c:	042a      	lsls	r2, r5, #16
c0d0820e:	4315      	orrs	r5, r2
c0d08210:	2c0f      	cmp	r4, #15
c0d08212:	d934      	bls.n	c0d0827e <memset+0xa2>
c0d08214:	0027      	movs	r7, r4
c0d08216:	3f10      	subs	r7, #16
c0d08218:	093f      	lsrs	r7, r7, #4
c0d0821a:	013e      	lsls	r6, r7, #4
c0d0821c:	46b4      	mov	ip, r6
c0d0821e:	001e      	movs	r6, r3
c0d08220:	001a      	movs	r2, r3
c0d08222:	3610      	adds	r6, #16
c0d08224:	4466      	add	r6, ip
c0d08226:	6015      	str	r5, [r2, #0]
c0d08228:	6055      	str	r5, [r2, #4]
c0d0822a:	6095      	str	r5, [r2, #8]
c0d0822c:	60d5      	str	r5, [r2, #12]
c0d0822e:	3210      	adds	r2, #16
c0d08230:	42b2      	cmp	r2, r6
c0d08232:	d1f8      	bne.n	c0d08226 <memset+0x4a>
c0d08234:	3701      	adds	r7, #1
c0d08236:	013f      	lsls	r7, r7, #4
c0d08238:	19db      	adds	r3, r3, r7
c0d0823a:	270f      	movs	r7, #15
c0d0823c:	220c      	movs	r2, #12
c0d0823e:	4027      	ands	r7, r4
c0d08240:	4022      	ands	r2, r4
c0d08242:	003c      	movs	r4, r7
c0d08244:	2a00      	cmp	r2, #0
c0d08246:	d00e      	beq.n	c0d08266 <memset+0x8a>
c0d08248:	1f3e      	subs	r6, r7, #4
c0d0824a:	08b6      	lsrs	r6, r6, #2
c0d0824c:	00b4      	lsls	r4, r6, #2
c0d0824e:	46a4      	mov	ip, r4
c0d08250:	001a      	movs	r2, r3
c0d08252:	1d1c      	adds	r4, r3, #4
c0d08254:	4464      	add	r4, ip
c0d08256:	c220      	stmia	r2!, {r5}
c0d08258:	42a2      	cmp	r2, r4
c0d0825a:	d1fc      	bne.n	c0d08256 <memset+0x7a>
c0d0825c:	2403      	movs	r4, #3
c0d0825e:	3601      	adds	r6, #1
c0d08260:	00b6      	lsls	r6, r6, #2
c0d08262:	199b      	adds	r3, r3, r6
c0d08264:	403c      	ands	r4, r7
c0d08266:	2c00      	cmp	r4, #0
c0d08268:	d005      	beq.n	c0d08276 <memset+0x9a>
c0d0826a:	b2c9      	uxtb	r1, r1
c0d0826c:	191c      	adds	r4, r3, r4
c0d0826e:	7019      	strb	r1, [r3, #0]
c0d08270:	3301      	adds	r3, #1
c0d08272:	429c      	cmp	r4, r3
c0d08274:	d1fb      	bne.n	c0d0826e <memset+0x92>
c0d08276:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d08278:	0003      	movs	r3, r0
c0d0827a:	0014      	movs	r4, r2
c0d0827c:	e7c0      	b.n	c0d08200 <memset+0x24>
c0d0827e:	0027      	movs	r7, r4
c0d08280:	e7e2      	b.n	c0d08248 <memset+0x6c>
c0d08282:	46c0      	nop			; (mov r8, r8)

c0d08284 <setjmp>:
c0d08284:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
c0d08286:	4641      	mov	r1, r8
c0d08288:	464a      	mov	r2, r9
c0d0828a:	4653      	mov	r3, sl
c0d0828c:	465c      	mov	r4, fp
c0d0828e:	466d      	mov	r5, sp
c0d08290:	4676      	mov	r6, lr
c0d08292:	c07e      	stmia	r0!, {r1, r2, r3, r4, r5, r6}
c0d08294:	3828      	subs	r0, #40	; 0x28
c0d08296:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
c0d08298:	2000      	movs	r0, #0
c0d0829a:	4770      	bx	lr

c0d0829c <longjmp>:
c0d0829c:	3010      	adds	r0, #16
c0d0829e:	c87c      	ldmia	r0!, {r2, r3, r4, r5, r6}
c0d082a0:	4690      	mov	r8, r2
c0d082a2:	4699      	mov	r9, r3
c0d082a4:	46a2      	mov	sl, r4
c0d082a6:	46ab      	mov	fp, r5
c0d082a8:	46b5      	mov	sp, r6
c0d082aa:	c808      	ldmia	r0!, {r3}
c0d082ac:	3828      	subs	r0, #40	; 0x28
c0d082ae:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
c0d082b0:	0008      	movs	r0, r1
c0d082b2:	d100      	bne.n	c0d082b6 <longjmp+0x1a>
c0d082b4:	2001      	movs	r0, #1
c0d082b6:	4718      	bx	r3

c0d082b8 <strcmp>:
c0d082b8:	4602      	mov	r2, r0
c0d082ba:	b570      	push	{r4, r5, r6, lr}
c0d082bc:	430a      	orrs	r2, r1
c0d082be:	0792      	lsls	r2, r2, #30
c0d082c0:	d12a      	bne.n	c0d08318 <strcmp+0x60>
c0d082c2:	4d1e      	ldr	r5, [pc, #120]	; (c0d0833c <strcmp+0x84>)
c0d082c4:	01ee      	lsls	r6, r5, #7
c0d082c6:	c804      	ldmia	r0!, {r2}
c0d082c8:	c908      	ldmia	r1!, {r3}
c0d082ca:	1b54      	subs	r4, r2, r5
c0d082cc:	4394      	bics	r4, r2
c0d082ce:	4034      	ands	r4, r6
c0d082d0:	d017      	beq.n	c0d08302 <strcmp+0x4a>
c0d082d2:	b2d0      	uxtb	r0, r2
c0d082d4:	b2d9      	uxtb	r1, r3
c0d082d6:	1a40      	subs	r0, r0, r1
c0d082d8:	0621      	lsls	r1, r4, #24
c0d082da:	4301      	orrs	r1, r0
c0d082dc:	d110      	bne.n	c0d08300 <strcmp+0x48>
c0d082de:	b290      	uxth	r0, r2
c0d082e0:	b299      	uxth	r1, r3
c0d082e2:	1a40      	subs	r0, r0, r1
c0d082e4:	0421      	lsls	r1, r4, #16
c0d082e6:	4301      	orrs	r1, r0
c0d082e8:	d10a      	bne.n	c0d08300 <strcmp+0x48>
c0d082ea:	0210      	lsls	r0, r2, #8
c0d082ec:	0219      	lsls	r1, r3, #8
c0d082ee:	0a00      	lsrs	r0, r0, #8
c0d082f0:	0a09      	lsrs	r1, r1, #8
c0d082f2:	1a40      	subs	r0, r0, r1
c0d082f4:	0221      	lsls	r1, r4, #8
c0d082f6:	4301      	orrs	r1, r0
c0d082f8:	d102      	bne.n	c0d08300 <strcmp+0x48>
c0d082fa:	0e10      	lsrs	r0, r2, #24
c0d082fc:	0e19      	lsrs	r1, r3, #24
c0d082fe:	1a40      	subs	r0, r0, r1
c0d08300:	bd70      	pop	{r4, r5, r6, pc}
c0d08302:	429a      	cmp	r2, r3
c0d08304:	d0df      	beq.n	c0d082c6 <strcmp+0xe>
c0d08306:	ba10      	rev	r0, r2
c0d08308:	ba19      	rev	r1, r3
c0d0830a:	4288      	cmp	r0, r1
c0d0830c:	d901      	bls.n	c0d08312 <strcmp+0x5a>
c0d0830e:	2001      	movs	r0, #1
c0d08310:	bd70      	pop	{r4, r5, r6, pc}
c0d08312:	2000      	movs	r0, #0
c0d08314:	43c0      	mvns	r0, r0
c0d08316:	bd70      	pop	{r4, r5, r6, pc}
c0d08318:	7802      	ldrb	r2, [r0, #0]
c0d0831a:	780b      	ldrb	r3, [r1, #0]
c0d0831c:	3001      	adds	r0, #1
c0d0831e:	3101      	adds	r1, #1
c0d08320:	2a00      	cmp	r2, #0
c0d08322:	d009      	beq.n	c0d08338 <strcmp+0x80>
c0d08324:	429a      	cmp	r2, r3
c0d08326:	d107      	bne.n	c0d08338 <strcmp+0x80>
c0d08328:	7802      	ldrb	r2, [r0, #0]
c0d0832a:	780b      	ldrb	r3, [r1, #0]
c0d0832c:	3001      	adds	r0, #1
c0d0832e:	3101      	adds	r1, #1
c0d08330:	2a00      	cmp	r2, #0
c0d08332:	d001      	beq.n	c0d08338 <strcmp+0x80>
c0d08334:	429a      	cmp	r2, r3
c0d08336:	d0ef      	beq.n	c0d08318 <strcmp+0x60>
c0d08338:	1ad0      	subs	r0, r2, r3
c0d0833a:	bd70      	pop	{r4, r5, r6, pc}
c0d0833c:	01010101 	.word	0x01010101

c0d08340 <strlen>:
c0d08340:	b510      	push	{r4, lr}
c0d08342:	0783      	lsls	r3, r0, #30
c0d08344:	d00a      	beq.n	c0d0835c <strlen+0x1c>
c0d08346:	0003      	movs	r3, r0
c0d08348:	2103      	movs	r1, #3
c0d0834a:	e002      	b.n	c0d08352 <strlen+0x12>
c0d0834c:	3301      	adds	r3, #1
c0d0834e:	420b      	tst	r3, r1
c0d08350:	d005      	beq.n	c0d0835e <strlen+0x1e>
c0d08352:	781a      	ldrb	r2, [r3, #0]
c0d08354:	2a00      	cmp	r2, #0
c0d08356:	d1f9      	bne.n	c0d0834c <strlen+0xc>
c0d08358:	1a18      	subs	r0, r3, r0
c0d0835a:	bd10      	pop	{r4, pc}
c0d0835c:	0003      	movs	r3, r0
c0d0835e:	6819      	ldr	r1, [r3, #0]
c0d08360:	4a0c      	ldr	r2, [pc, #48]	; (c0d08394 <strlen+0x54>)
c0d08362:	4c0d      	ldr	r4, [pc, #52]	; (c0d08398 <strlen+0x58>)
c0d08364:	188a      	adds	r2, r1, r2
c0d08366:	438a      	bics	r2, r1
c0d08368:	4222      	tst	r2, r4
c0d0836a:	d10f      	bne.n	c0d0838c <strlen+0x4c>
c0d0836c:	6859      	ldr	r1, [r3, #4]
c0d0836e:	4a09      	ldr	r2, [pc, #36]	; (c0d08394 <strlen+0x54>)
c0d08370:	3304      	adds	r3, #4
c0d08372:	188a      	adds	r2, r1, r2
c0d08374:	438a      	bics	r2, r1
c0d08376:	4222      	tst	r2, r4
c0d08378:	d108      	bne.n	c0d0838c <strlen+0x4c>
c0d0837a:	6859      	ldr	r1, [r3, #4]
c0d0837c:	4a05      	ldr	r2, [pc, #20]	; (c0d08394 <strlen+0x54>)
c0d0837e:	3304      	adds	r3, #4
c0d08380:	188a      	adds	r2, r1, r2
c0d08382:	438a      	bics	r2, r1
c0d08384:	4222      	tst	r2, r4
c0d08386:	d0f1      	beq.n	c0d0836c <strlen+0x2c>
c0d08388:	e000      	b.n	c0d0838c <strlen+0x4c>
c0d0838a:	3301      	adds	r3, #1
c0d0838c:	781a      	ldrb	r2, [r3, #0]
c0d0838e:	2a00      	cmp	r2, #0
c0d08390:	d1fb      	bne.n	c0d0838a <strlen+0x4a>
c0d08392:	e7e1      	b.n	c0d08358 <strlen+0x18>
c0d08394:	fefefeff 	.word	0xfefefeff
c0d08398:	80808080 	.word	0x80808080

c0d0839c <strncmp>:
c0d0839c:	b530      	push	{r4, r5, lr}
c0d0839e:	2a00      	cmp	r2, #0
c0d083a0:	d026      	beq.n	c0d083f0 <strncmp+0x54>
c0d083a2:	0003      	movs	r3, r0
c0d083a4:	430b      	orrs	r3, r1
c0d083a6:	079b      	lsls	r3, r3, #30
c0d083a8:	d124      	bne.n	c0d083f4 <strncmp+0x58>
c0d083aa:	2a03      	cmp	r2, #3
c0d083ac:	d922      	bls.n	c0d083f4 <strncmp+0x58>
c0d083ae:	4d16      	ldr	r5, [pc, #88]	; (c0d08408 <strncmp+0x6c>)
c0d083b0:	e00b      	b.n	c0d083ca <strncmp+0x2e>
c0d083b2:	3a04      	subs	r2, #4
c0d083b4:	2a00      	cmp	r2, #0
c0d083b6:	d01b      	beq.n	c0d083f0 <strncmp+0x54>
c0d083b8:	4c14      	ldr	r4, [pc, #80]	; (c0d0840c <strncmp+0x70>)
c0d083ba:	191c      	adds	r4, r3, r4
c0d083bc:	439c      	bics	r4, r3
c0d083be:	422c      	tst	r4, r5
c0d083c0:	d116      	bne.n	c0d083f0 <strncmp+0x54>
c0d083c2:	3004      	adds	r0, #4
c0d083c4:	3104      	adds	r1, #4
c0d083c6:	2a03      	cmp	r2, #3
c0d083c8:	d914      	bls.n	c0d083f4 <strncmp+0x58>
c0d083ca:	6803      	ldr	r3, [r0, #0]
c0d083cc:	680c      	ldr	r4, [r1, #0]
c0d083ce:	42a3      	cmp	r3, r4
c0d083d0:	d0ef      	beq.n	c0d083b2 <strncmp+0x16>
c0d083d2:	7804      	ldrb	r4, [r0, #0]
c0d083d4:	780d      	ldrb	r5, [r1, #0]
c0d083d6:	42ac      	cmp	r4, r5
c0d083d8:	d113      	bne.n	c0d08402 <strncmp+0x66>
c0d083da:	2301      	movs	r3, #1
c0d083dc:	e006      	b.n	c0d083ec <strncmp+0x50>
c0d083de:	5cc4      	ldrb	r4, [r0, r3]
c0d083e0:	5ccd      	ldrb	r5, [r1, r3]
c0d083e2:	42ac      	cmp	r4, r5
c0d083e4:	d10d      	bne.n	c0d08402 <strncmp+0x66>
c0d083e6:	3301      	adds	r3, #1
c0d083e8:	4293      	cmp	r3, r2
c0d083ea:	d001      	beq.n	c0d083f0 <strncmp+0x54>
c0d083ec:	2c00      	cmp	r4, #0
c0d083ee:	d1f6      	bne.n	c0d083de <strncmp+0x42>
c0d083f0:	2000      	movs	r0, #0
c0d083f2:	bd30      	pop	{r4, r5, pc}
c0d083f4:	7804      	ldrb	r4, [r0, #0]
c0d083f6:	780d      	ldrb	r5, [r1, #0]
c0d083f8:	42a5      	cmp	r5, r4
c0d083fa:	d102      	bne.n	c0d08402 <strncmp+0x66>
c0d083fc:	2a01      	cmp	r2, #1
c0d083fe:	d1ec      	bne.n	c0d083da <strncmp+0x3e>
c0d08400:	e7f6      	b.n	c0d083f0 <strncmp+0x54>
c0d08402:	1b60      	subs	r0, r4, r5
c0d08404:	e7f5      	b.n	c0d083f2 <strncmp+0x56>
c0d08406:	46c0      	nop			; (mov r8, r8)
c0d08408:	80808080 	.word	0x80808080
c0d0840c:	fefefeff 	.word	0xfefefeff

c0d08410 <strncpy>:
c0d08410:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d08412:	000c      	movs	r4, r1
c0d08414:	4304      	orrs	r4, r0
c0d08416:	0003      	movs	r3, r0
c0d08418:	0007      	movs	r7, r0
c0d0841a:	07a4      	lsls	r4, r4, #30
c0d0841c:	d112      	bne.n	c0d08444 <strncpy+0x34>
c0d0841e:	2a03      	cmp	r2, #3
c0d08420:	d910      	bls.n	c0d08444 <strncpy+0x34>
c0d08422:	4c14      	ldr	r4, [pc, #80]	; (c0d08474 <strncpy+0x64>)
c0d08424:	46a4      	mov	ip, r4
c0d08426:	4667      	mov	r7, ip
c0d08428:	680d      	ldr	r5, [r1, #0]
c0d0842a:	4c13      	ldr	r4, [pc, #76]	; (c0d08478 <strncpy+0x68>)
c0d0842c:	001e      	movs	r6, r3
c0d0842e:	192c      	adds	r4, r5, r4
c0d08430:	43ac      	bics	r4, r5
c0d08432:	423c      	tst	r4, r7
c0d08434:	d11b      	bne.n	c0d0846e <strncpy+0x5e>
c0d08436:	3304      	adds	r3, #4
c0d08438:	3a04      	subs	r2, #4
c0d0843a:	001f      	movs	r7, r3
c0d0843c:	3104      	adds	r1, #4
c0d0843e:	6035      	str	r5, [r6, #0]
c0d08440:	2a03      	cmp	r2, #3
c0d08442:	d8f0      	bhi.n	c0d08426 <strncpy+0x16>
c0d08444:	2400      	movs	r4, #0
c0d08446:	18be      	adds	r6, r7, r2
c0d08448:	e006      	b.n	c0d08458 <strncpy+0x48>
c0d0844a:	5d0d      	ldrb	r5, [r1, r4]
c0d0844c:	3a01      	subs	r2, #1
c0d0844e:	553d      	strb	r5, [r7, r4]
c0d08450:	1ab3      	subs	r3, r6, r2
c0d08452:	3401      	adds	r4, #1
c0d08454:	2d00      	cmp	r5, #0
c0d08456:	d002      	beq.n	c0d0845e <strncpy+0x4e>
c0d08458:	2a00      	cmp	r2, #0
c0d0845a:	d1f6      	bne.n	c0d0844a <strncpy+0x3a>
c0d0845c:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d0845e:	2100      	movs	r1, #0
c0d08460:	2a00      	cmp	r2, #0
c0d08462:	d0fb      	beq.n	c0d0845c <strncpy+0x4c>
c0d08464:	7019      	strb	r1, [r3, #0]
c0d08466:	3301      	adds	r3, #1
c0d08468:	429e      	cmp	r6, r3
c0d0846a:	d1fb      	bne.n	c0d08464 <strncpy+0x54>
c0d0846c:	e7f6      	b.n	c0d0845c <strncpy+0x4c>
c0d0846e:	001f      	movs	r7, r3
c0d08470:	e7e8      	b.n	c0d08444 <strncpy+0x34>
c0d08472:	46c0      	nop			; (mov r8, r8)
c0d08474:	80808080 	.word	0x80808080
c0d08478:	fefefeff 	.word	0xfefefeff

c0d0847c <strnlen>:
c0d0847c:	b510      	push	{r4, lr}
c0d0847e:	0003      	movs	r3, r0
c0d08480:	1844      	adds	r4, r0, r1
c0d08482:	2900      	cmp	r1, #0
c0d08484:	d103      	bne.n	c0d0848e <strnlen+0x12>
c0d08486:	e009      	b.n	c0d0849c <strnlen+0x20>
c0d08488:	3301      	adds	r3, #1
c0d0848a:	429c      	cmp	r4, r3
c0d0848c:	d004      	beq.n	c0d08498 <strnlen+0x1c>
c0d0848e:	781a      	ldrb	r2, [r3, #0]
c0d08490:	2a00      	cmp	r2, #0
c0d08492:	d1f9      	bne.n	c0d08488 <strnlen+0xc>
c0d08494:	1a18      	subs	r0, r3, r0
c0d08496:	bd10      	pop	{r4, pc}
c0d08498:	1a20      	subs	r0, r4, r0
c0d0849a:	e7fc      	b.n	c0d08496 <strnlen+0x1a>
c0d0849c:	2000      	movs	r0, #0
c0d0849e:	e7fa      	b.n	c0d08496 <strnlen+0x1a>

c0d084a0 <two_way_long_needle>:
c0d084a0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d084a2:	46de      	mov	lr, fp
c0d084a4:	464e      	mov	r6, r9
c0d084a6:	4645      	mov	r5, r8
c0d084a8:	4657      	mov	r7, sl
c0d084aa:	b5e0      	push	{r5, r6, r7, lr}
c0d084ac:	4c9b      	ldr	r4, [pc, #620]	; (c0d0871c <two_way_long_needle+0x27c>)
c0d084ae:	4683      	mov	fp, r0
c0d084b0:	44a5      	add	sp, r4
c0d084b2:	4688      	mov	r8, r1
c0d084b4:	0014      	movs	r4, r2
c0d084b6:	001e      	movs	r6, r3
c0d084b8:	2b01      	cmp	r3, #1
c0d084ba:	d800      	bhi.n	c0d084be <two_way_long_needle+0x1e>
c0d084bc:	e128      	b.n	c0d08710 <two_way_long_needle+0x270>
c0d084be:	2001      	movs	r0, #1
c0d084c0:	2501      	movs	r5, #1
c0d084c2:	46b4      	mov	ip, r6
c0d084c4:	2100      	movs	r1, #0
c0d084c6:	2201      	movs	r2, #1
c0d084c8:	2301      	movs	r3, #1
c0d084ca:	0006      	movs	r6, r0
c0d084cc:	426d      	negs	r5, r5
c0d084ce:	e005      	b.n	c0d084dc <two_way_long_needle+0x3c>
c0d084d0:	0019      	movs	r1, r3
c0d084d2:	2201      	movs	r2, #1
c0d084d4:	1b5e      	subs	r6, r3, r5
c0d084d6:	188b      	adds	r3, r1, r2
c0d084d8:	459c      	cmp	ip, r3
c0d084da:	d90d      	bls.n	c0d084f8 <two_way_long_needle+0x58>
c0d084dc:	1960      	adds	r0, r4, r5
c0d084de:	5ce7      	ldrb	r7, [r4, r3]
c0d084e0:	5c80      	ldrb	r0, [r0, r2]
c0d084e2:	4287      	cmp	r7, r0
c0d084e4:	d3f4      	bcc.n	c0d084d0 <two_way_long_needle+0x30>
c0d084e6:	d100      	bne.n	c0d084ea <two_way_long_needle+0x4a>
c0d084e8:	e086      	b.n	c0d085f8 <two_way_long_needle+0x158>
c0d084ea:	2201      	movs	r2, #1
c0d084ec:	000d      	movs	r5, r1
c0d084ee:	3101      	adds	r1, #1
c0d084f0:	188b      	adds	r3, r1, r2
c0d084f2:	2601      	movs	r6, #1
c0d084f4:	459c      	cmp	ip, r3
c0d084f6:	d8f1      	bhi.n	c0d084dc <two_way_long_needle+0x3c>
c0d084f8:	2301      	movs	r3, #1
c0d084fa:	9600      	str	r6, [sp, #0]
c0d084fc:	4666      	mov	r6, ip
c0d084fe:	469c      	mov	ip, r3
c0d08500:	3b02      	subs	r3, #2
c0d08502:	4699      	mov	r9, r3
c0d08504:	4648      	mov	r0, r9
c0d08506:	2100      	movs	r1, #0
c0d08508:	46a9      	mov	r9, r5
c0d0850a:	2201      	movs	r2, #1
c0d0850c:	0005      	movs	r5, r0
c0d0850e:	3302      	adds	r3, #2
c0d08510:	e006      	b.n	c0d08520 <two_way_long_needle+0x80>
c0d08512:	1b5a      	subs	r2, r3, r5
c0d08514:	4694      	mov	ip, r2
c0d08516:	0019      	movs	r1, r3
c0d08518:	2201      	movs	r2, #1
c0d0851a:	188b      	adds	r3, r1, r2
c0d0851c:	429e      	cmp	r6, r3
c0d0851e:	d90d      	bls.n	c0d0853c <two_way_long_needle+0x9c>
c0d08520:	18a0      	adds	r0, r4, r2
c0d08522:	5ce7      	ldrb	r7, [r4, r3]
c0d08524:	5d40      	ldrb	r0, [r0, r5]
c0d08526:	4287      	cmp	r7, r0
c0d08528:	d8f3      	bhi.n	c0d08512 <two_way_long_needle+0x72>
c0d0852a:	d06a      	beq.n	c0d08602 <two_way_long_needle+0x162>
c0d0852c:	2301      	movs	r3, #1
c0d0852e:	2201      	movs	r2, #1
c0d08530:	000d      	movs	r5, r1
c0d08532:	3101      	adds	r1, #1
c0d08534:	469c      	mov	ip, r3
c0d08536:	188b      	adds	r3, r1, r2
c0d08538:	429e      	cmp	r6, r3
c0d0853a:	d8f1      	bhi.n	c0d08520 <two_way_long_needle+0x80>
c0d0853c:	002b      	movs	r3, r5
c0d0853e:	464d      	mov	r5, r9
c0d08540:	3301      	adds	r3, #1
c0d08542:	1c6a      	adds	r2, r5, #1
c0d08544:	4692      	mov	sl, r2
c0d08546:	429a      	cmp	r2, r3
c0d08548:	d802      	bhi.n	c0d08550 <two_way_long_needle+0xb0>
c0d0854a:	4662      	mov	r2, ip
c0d0854c:	469a      	mov	sl, r3
c0d0854e:	9200      	str	r2, [sp, #0]
c0d08550:	aaff      	add	r2, sp, #1020	; 0x3fc
c0d08552:	ab02      	add	r3, sp, #8
c0d08554:	320c      	adds	r2, #12
c0d08556:	c340      	stmia	r3!, {r6}
c0d08558:	429a      	cmp	r2, r3
c0d0855a:	d1fc      	bne.n	c0d08556 <two_way_long_needle+0xb6>
c0d0855c:	1e75      	subs	r5, r6, #1
c0d0855e:	2e00      	cmp	r6, #0
c0d08560:	d00c      	beq.n	c0d0857c <two_way_long_needle+0xdc>
c0d08562:	0023      	movs	r3, r4
c0d08564:	46a4      	mov	ip, r4
c0d08566:	1937      	adds	r7, r6, r4
c0d08568:	1960      	adds	r0, r4, r5
c0d0856a:	781a      	ldrb	r2, [r3, #0]
c0d0856c:	1ac1      	subs	r1, r0, r3
c0d0856e:	0092      	lsls	r2, r2, #2
c0d08570:	ac02      	add	r4, sp, #8
c0d08572:	3301      	adds	r3, #1
c0d08574:	50a1      	str	r1, [r4, r2]
c0d08576:	429f      	cmp	r7, r3
c0d08578:	d1f7      	bne.n	c0d0856a <two_way_long_needle+0xca>
c0d0857a:	4664      	mov	r4, ip
c0d0857c:	9b00      	ldr	r3, [sp, #0]
c0d0857e:	4652      	mov	r2, sl
c0d08580:	0020      	movs	r0, r4
c0d08582:	18e1      	adds	r1, r4, r3
c0d08584:	f7ff fd5e 	bl	c0d08044 <memcmp>
c0d08588:	2800      	cmp	r0, #0
c0d0858a:	d169      	bne.n	c0d08660 <two_way_long_needle+0x1c0>
c0d0858c:	2300      	movs	r3, #0
c0d0858e:	4652      	mov	r2, sl
c0d08590:	4699      	mov	r9, r3
c0d08592:	3301      	adds	r3, #1
c0d08594:	1a9b      	subs	r3, r3, r2
c0d08596:	9301      	str	r3, [sp, #4]
c0d08598:	0033      	movs	r3, r6
c0d0859a:	2700      	movs	r7, #0
c0d0859c:	464e      	mov	r6, r9
c0d0859e:	4699      	mov	r9, r3
c0d085a0:	465b      	mov	r3, fp
c0d085a2:	19d8      	adds	r0, r3, r7
c0d085a4:	5d43      	ldrb	r3, [r0, r5]
c0d085a6:	aa02      	add	r2, sp, #8
c0d085a8:	009b      	lsls	r3, r3, #2
c0d085aa:	58d3      	ldr	r3, [r2, r3]
c0d085ac:	2b00      	cmp	r3, #0
c0d085ae:	d02c      	beq.n	c0d0860a <two_way_long_needle+0x16a>
c0d085b0:	2e00      	cmp	r6, #0
c0d085b2:	d004      	beq.n	c0d085be <two_way_long_needle+0x11e>
c0d085b4:	9a00      	ldr	r2, [sp, #0]
c0d085b6:	4293      	cmp	r3, r2
c0d085b8:	d201      	bcs.n	c0d085be <two_way_long_needle+0x11e>
c0d085ba:	464b      	mov	r3, r9
c0d085bc:	1a9b      	subs	r3, r3, r2
c0d085be:	2600      	movs	r6, #0
c0d085c0:	18ff      	adds	r7, r7, r3
c0d085c2:	4643      	mov	r3, r8
c0d085c4:	464a      	mov	r2, r9
c0d085c6:	1a9b      	subs	r3, r3, r2
c0d085c8:	42bb      	cmp	r3, r7
c0d085ca:	d2e9      	bcs.n	c0d085a0 <two_way_long_needle+0x100>
c0d085cc:	2180      	movs	r1, #128	; 0x80
c0d085ce:	4658      	mov	r0, fp
c0d085d0:	0109      	lsls	r1, r1, #4
c0d085d2:	4311      	orrs	r1, r2
c0d085d4:	4440      	add	r0, r8
c0d085d6:	f7ff ff51 	bl	c0d0847c <strnlen>
c0d085da:	4480      	add	r8, r0
c0d085dc:	4643      	mov	r3, r8
c0d085de:	464a      	mov	r2, r9
c0d085e0:	1a9b      	subs	r3, r3, r2
c0d085e2:	42bb      	cmp	r3, r7
c0d085e4:	d2dc      	bcs.n	c0d085a0 <two_way_long_needle+0x100>
c0d085e6:	2000      	movs	r0, #0
c0d085e8:	4b4d      	ldr	r3, [pc, #308]	; (c0d08720 <two_way_long_needle+0x280>)
c0d085ea:	449d      	add	sp, r3
c0d085ec:	bcf0      	pop	{r4, r5, r6, r7}
c0d085ee:	46bb      	mov	fp, r7
c0d085f0:	46b2      	mov	sl, r6
c0d085f2:	46a9      	mov	r9, r5
c0d085f4:	46a0      	mov	r8, r4
c0d085f6:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d085f8:	4296      	cmp	r6, r2
c0d085fa:	d100      	bne.n	c0d085fe <two_way_long_needle+0x15e>
c0d085fc:	e085      	b.n	c0d0870a <two_way_long_needle+0x26a>
c0d085fe:	3201      	adds	r2, #1
c0d08600:	e769      	b.n	c0d084d6 <two_way_long_needle+0x36>
c0d08602:	4562      	cmp	r2, ip
c0d08604:	d07e      	beq.n	c0d08704 <two_way_long_needle+0x264>
c0d08606:	3201      	adds	r2, #1
c0d08608:	e787      	b.n	c0d0851a <two_way_long_needle+0x7a>
c0d0860a:	4653      	mov	r3, sl
c0d0860c:	45b2      	cmp	sl, r6
c0d0860e:	d206      	bcs.n	c0d0861e <two_way_long_needle+0x17e>
c0d08610:	0033      	movs	r3, r6
c0d08612:	e004      	b.n	c0d0861e <two_way_long_needle+0x17e>
c0d08614:	5ce1      	ldrb	r1, [r4, r3]
c0d08616:	5cc2      	ldrb	r2, [r0, r3]
c0d08618:	4291      	cmp	r1, r2
c0d0861a:	d11b      	bne.n	c0d08654 <two_way_long_needle+0x1b4>
c0d0861c:	3301      	adds	r3, #1
c0d0861e:	42ab      	cmp	r3, r5
c0d08620:	d3f8      	bcc.n	c0d08614 <two_way_long_needle+0x174>
c0d08622:	4653      	mov	r3, sl
c0d08624:	46d4      	mov	ip, sl
c0d08626:	3b01      	subs	r3, #1
c0d08628:	45b2      	cmp	sl, r6
c0d0862a:	d804      	bhi.n	c0d08636 <two_way_long_needle+0x196>
c0d0862c:	e009      	b.n	c0d08642 <two_way_long_needle+0x1a2>
c0d0862e:	1e5a      	subs	r2, r3, #1
c0d08630:	42b3      	cmp	r3, r6
c0d08632:	d013      	beq.n	c0d0865c <two_way_long_needle+0x1bc>
c0d08634:	0013      	movs	r3, r2
c0d08636:	1c5a      	adds	r2, r3, #1
c0d08638:	4694      	mov	ip, r2
c0d0863a:	5ce1      	ldrb	r1, [r4, r3]
c0d0863c:	5cc2      	ldrb	r2, [r0, r3]
c0d0863e:	4291      	cmp	r1, r2
c0d08640:	d0f5      	beq.n	c0d0862e <two_way_long_needle+0x18e>
c0d08642:	3601      	adds	r6, #1
c0d08644:	4566      	cmp	r6, ip
c0d08646:	d8cf      	bhi.n	c0d085e8 <two_way_long_needle+0x148>
c0d08648:	9b00      	ldr	r3, [sp, #0]
c0d0864a:	464a      	mov	r2, r9
c0d0864c:	469c      	mov	ip, r3
c0d0864e:	1ad6      	subs	r6, r2, r3
c0d08650:	4467      	add	r7, ip
c0d08652:	e7b6      	b.n	c0d085c2 <two_way_long_needle+0x122>
c0d08654:	9a01      	ldr	r2, [sp, #4]
c0d08656:	4694      	mov	ip, r2
c0d08658:	4467      	add	r7, ip
c0d0865a:	e7b0      	b.n	c0d085be <two_way_long_needle+0x11e>
c0d0865c:	46b4      	mov	ip, r6
c0d0865e:	e7f0      	b.n	c0d08642 <two_way_long_needle+0x1a2>
c0d08660:	4653      	mov	r3, sl
c0d08662:	1af3      	subs	r3, r6, r3
c0d08664:	4553      	cmp	r3, sl
c0d08666:	d34b      	bcc.n	c0d08700 <two_way_long_needle+0x260>
c0d08668:	3301      	adds	r3, #1
c0d0866a:	4652      	mov	r2, sl
c0d0866c:	9301      	str	r3, [sp, #4]
c0d0866e:	2301      	movs	r3, #1
c0d08670:	1a9b      	subs	r3, r3, r2
c0d08672:	9300      	str	r3, [sp, #0]
c0d08674:	2380      	movs	r3, #128	; 0x80
c0d08676:	011b      	lsls	r3, r3, #4
c0d08678:	4699      	mov	r9, r3
c0d0867a:	0033      	movs	r3, r6
c0d0867c:	2700      	movs	r7, #0
c0d0867e:	4646      	mov	r6, r8
c0d08680:	4698      	mov	r8, r3
c0d08682:	465b      	mov	r3, fp
c0d08684:	19d8      	adds	r0, r3, r7
c0d08686:	5d43      	ldrb	r3, [r0, r5]
c0d08688:	aa02      	add	r2, sp, #8
c0d0868a:	009b      	lsls	r3, r3, #2
c0d0868c:	58d3      	ldr	r3, [r2, r3]
c0d0868e:	2b00      	cmp	r3, #0
c0d08690:	d018      	beq.n	c0d086c4 <two_way_long_needle+0x224>
c0d08692:	19df      	adds	r7, r3, r7
c0d08694:	4643      	mov	r3, r8
c0d08696:	1af3      	subs	r3, r6, r3
c0d08698:	429f      	cmp	r7, r3
c0d0869a:	d9f2      	bls.n	c0d08682 <two_way_long_needle+0x1e2>
c0d0869c:	465b      	mov	r3, fp
c0d0869e:	4649      	mov	r1, r9
c0d086a0:	1998      	adds	r0, r3, r6
c0d086a2:	4643      	mov	r3, r8
c0d086a4:	4319      	orrs	r1, r3
c0d086a6:	f7ff fee9 	bl	c0d0847c <strnlen>
c0d086aa:	4643      	mov	r3, r8
c0d086ac:	1836      	adds	r6, r6, r0
c0d086ae:	1af3      	subs	r3, r6, r3
c0d086b0:	429f      	cmp	r7, r3
c0d086b2:	d898      	bhi.n	c0d085e6 <two_way_long_needle+0x146>
c0d086b4:	465b      	mov	r3, fp
c0d086b6:	19d8      	adds	r0, r3, r7
c0d086b8:	5d43      	ldrb	r3, [r0, r5]
c0d086ba:	aa02      	add	r2, sp, #8
c0d086bc:	009b      	lsls	r3, r3, #2
c0d086be:	58d3      	ldr	r3, [r2, r3]
c0d086c0:	2b00      	cmp	r3, #0
c0d086c2:	d1e6      	bne.n	c0d08692 <two_way_long_needle+0x1f2>
c0d086c4:	4653      	mov	r3, sl
c0d086c6:	45aa      	cmp	sl, r5
c0d086c8:	d303      	bcc.n	c0d086d2 <two_way_long_needle+0x232>
c0d086ca:	e00a      	b.n	c0d086e2 <two_way_long_needle+0x242>
c0d086cc:	3301      	adds	r3, #1
c0d086ce:	42ab      	cmp	r3, r5
c0d086d0:	d207      	bcs.n	c0d086e2 <two_way_long_needle+0x242>
c0d086d2:	5ce1      	ldrb	r1, [r4, r3]
c0d086d4:	5cc2      	ldrb	r2, [r0, r3]
c0d086d6:	4291      	cmp	r1, r2
c0d086d8:	d0f8      	beq.n	c0d086cc <two_way_long_needle+0x22c>
c0d086da:	9a00      	ldr	r2, [sp, #0]
c0d086dc:	4694      	mov	ip, r2
c0d086de:	4467      	add	r7, ip
c0d086e0:	e7d7      	b.n	c0d08692 <two_way_long_needle+0x1f2>
c0d086e2:	4653      	mov	r3, sl
c0d086e4:	3b01      	subs	r3, #1
c0d086e6:	d203      	bcs.n	c0d086f0 <two_way_long_needle+0x250>
c0d086e8:	e77e      	b.n	c0d085e8 <two_way_long_needle+0x148>
c0d086ea:	3b01      	subs	r3, #1
c0d086ec:	d200      	bcs.n	c0d086f0 <two_way_long_needle+0x250>
c0d086ee:	e77b      	b.n	c0d085e8 <two_way_long_needle+0x148>
c0d086f0:	5ce1      	ldrb	r1, [r4, r3]
c0d086f2:	5cc2      	ldrb	r2, [r0, r3]
c0d086f4:	4291      	cmp	r1, r2
c0d086f6:	d0f8      	beq.n	c0d086ea <two_way_long_needle+0x24a>
c0d086f8:	9b01      	ldr	r3, [sp, #4]
c0d086fa:	469c      	mov	ip, r3
c0d086fc:	4467      	add	r7, ip
c0d086fe:	e7c9      	b.n	c0d08694 <two_way_long_needle+0x1f4>
c0d08700:	4653      	mov	r3, sl
c0d08702:	e7b1      	b.n	c0d08668 <two_way_long_needle+0x1c8>
c0d08704:	1889      	adds	r1, r1, r2
c0d08706:	2201      	movs	r2, #1
c0d08708:	e707      	b.n	c0d0851a <two_way_long_needle+0x7a>
c0d0870a:	2201      	movs	r2, #1
c0d0870c:	1989      	adds	r1, r1, r6
c0d0870e:	e6e2      	b.n	c0d084d6 <two_way_long_needle+0x36>
c0d08710:	2301      	movs	r3, #1
c0d08712:	9300      	str	r3, [sp, #0]
c0d08714:	2300      	movs	r3, #0
c0d08716:	469a      	mov	sl, r3
c0d08718:	e71a      	b.n	c0d08550 <two_way_long_needle+0xb0>
c0d0871a:	46c0      	nop			; (mov r8, r8)
c0d0871c:	fffffbf4 	.word	0xfffffbf4
c0d08720:	0000040c 	.word	0x0000040c

c0d08724 <strstr>:
c0d08724:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d08726:	46ce      	mov	lr, r9
c0d08728:	4647      	mov	r7, r8
c0d0872a:	b580      	push	{r7, lr}
c0d0872c:	000e      	movs	r6, r1
c0d0872e:	7809      	ldrb	r1, [r1, #0]
c0d08730:	0005      	movs	r5, r0
c0d08732:	0004      	movs	r4, r0
c0d08734:	b091      	sub	sp, #68	; 0x44
c0d08736:	2900      	cmp	r1, #0
c0d08738:	d050      	beq.n	c0d087dc <strstr+0xb8>
c0d0873a:	7870      	ldrb	r0, [r6, #1]
c0d0873c:	2800      	cmp	r0, #0
c0d0873e:	d100      	bne.n	c0d08742 <strstr+0x1e>
c0d08740:	e089      	b.n	c0d08856 <strstr+0x132>
c0d08742:	78b7      	ldrb	r7, [r6, #2]
c0d08744:	2f00      	cmp	r7, #0
c0d08746:	d04f      	beq.n	c0d087e8 <strstr+0xc4>
c0d08748:	78f3      	ldrb	r3, [r6, #3]
c0d0874a:	2b00      	cmp	r3, #0
c0d0874c:	d100      	bne.n	c0d08750 <strstr+0x2c>
c0d0874e:	e089      	b.n	c0d08864 <strstr+0x140>
c0d08750:	7932      	ldrb	r2, [r6, #4]
c0d08752:	2a00      	cmp	r2, #0
c0d08754:	d058      	beq.n	c0d08808 <strstr+0xe4>
c0d08756:	0030      	movs	r0, r6
c0d08758:	f7ff fdf2 	bl	c0d08340 <strlen>
c0d0875c:	2180      	movs	r1, #128	; 0x80
c0d0875e:	0089      	lsls	r1, r1, #2
c0d08760:	0007      	movs	r7, r0
c0d08762:	4301      	orrs	r1, r0
c0d08764:	0028      	movs	r0, r5
c0d08766:	f7ff fe89 	bl	c0d0847c <strnlen>
c0d0876a:	4287      	cmp	r7, r0
c0d0876c:	d863      	bhi.n	c0d08836 <strstr+0x112>
c0d0876e:	2ffe      	cmp	r7, #254	; 0xfe
c0d08770:	d900      	bls.n	c0d08774 <strstr+0x50>
c0d08772:	e089      	b.n	c0d08888 <strstr+0x164>
c0d08774:	1bc0      	subs	r0, r0, r7
c0d08776:	4680      	mov	r8, r0
c0d08778:	2240      	movs	r2, #64	; 0x40
c0d0877a:	4668      	mov	r0, sp
c0d0877c:	1c79      	adds	r1, r7, #1
c0d0877e:	44a8      	add	r8, r5
c0d08780:	f7ff fd2c 	bl	c0d081dc <memset>
c0d08784:	2f00      	cmp	r7, #0
c0d08786:	d00f      	beq.n	c0d087a8 <strstr+0x84>
c0d08788:	19ba      	adds	r2, r7, r6
c0d0878a:	4694      	mov	ip, r2
c0d0878c:	223f      	movs	r2, #63	; 0x3f
c0d0878e:	0033      	movs	r3, r6
c0d08790:	4691      	mov	r9, r2
c0d08792:	b2f8      	uxtb	r0, r7
c0d08794:	1830      	adds	r0, r6, r0
c0d08796:	4649      	mov	r1, r9
c0d08798:	466c      	mov	r4, sp
c0d0879a:	781a      	ldrb	r2, [r3, #0]
c0d0879c:	400a      	ands	r2, r1
c0d0879e:	1ac1      	subs	r1, r0, r3
c0d087a0:	3301      	adds	r3, #1
c0d087a2:	54a1      	strb	r1, [r4, r2]
c0d087a4:	4563      	cmp	r3, ip
c0d087a6:	d1f6      	bne.n	c0d08796 <strstr+0x72>
c0d087a8:	002c      	movs	r4, r5
c0d087aa:	253f      	movs	r5, #63	; 0x3f
c0d087ac:	466a      	mov	r2, sp
c0d087ae:	3c01      	subs	r4, #1
c0d087b0:	5de3      	ldrb	r3, [r4, r7]
c0d087b2:	402b      	ands	r3, r5
c0d087b4:	5cd0      	ldrb	r0, [r2, r3]
c0d087b6:	1824      	adds	r4, r4, r0
c0d087b8:	45a0      	cmp	r8, r4
c0d087ba:	d203      	bcs.n	c0d087c4 <strstr+0xa0>
c0d087bc:	e03d      	b.n	c0d0883a <strstr+0x116>
c0d087be:	444c      	add	r4, r9
c0d087c0:	45a0      	cmp	r8, r4
c0d087c2:	d33a      	bcc.n	c0d0883a <strstr+0x116>
c0d087c4:	466a      	mov	r2, sp
c0d087c6:	5de3      	ldrb	r3, [r4, r7]
c0d087c8:	0031      	movs	r1, r6
c0d087ca:	402b      	ands	r3, r5
c0d087cc:	5cd3      	ldrb	r3, [r2, r3]
c0d087ce:	0020      	movs	r0, r4
c0d087d0:	003a      	movs	r2, r7
c0d087d2:	4699      	mov	r9, r3
c0d087d4:	f7ff fc36 	bl	c0d08044 <memcmp>
c0d087d8:	2800      	cmp	r0, #0
c0d087da:	d1f0      	bne.n	c0d087be <strstr+0x9a>
c0d087dc:	0020      	movs	r0, r4
c0d087de:	b011      	add	sp, #68	; 0x44
c0d087e0:	bcc0      	pop	{r6, r7}
c0d087e2:	46b9      	mov	r9, r7
c0d087e4:	46b0      	mov	r8, r6
c0d087e6:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d087e8:	0409      	lsls	r1, r1, #16
c0d087ea:	2300      	movs	r3, #0
c0d087ec:	782a      	ldrb	r2, [r5, #0]
c0d087ee:	4301      	orrs	r1, r0
c0d087f0:	e000      	b.n	c0d087f4 <strstr+0xd0>
c0d087f2:	0005      	movs	r5, r0
c0d087f4:	2a00      	cmp	r2, #0
c0d087f6:	d01e      	beq.n	c0d08836 <strstr+0x112>
c0d087f8:	041b      	lsls	r3, r3, #16
c0d087fa:	4313      	orrs	r3, r2
c0d087fc:	1c68      	adds	r0, r5, #1
c0d087fe:	786a      	ldrb	r2, [r5, #1]
c0d08800:	4299      	cmp	r1, r3
c0d08802:	d1f6      	bne.n	c0d087f2 <strstr+0xce>
c0d08804:	1e6c      	subs	r4, r5, #1
c0d08806:	e7e9      	b.n	c0d087dc <strstr+0xb8>
c0d08808:	782a      	ldrb	r2, [r5, #0]
c0d0880a:	2a00      	cmp	r2, #0
c0d0880c:	d013      	beq.n	c0d08836 <strstr+0x112>
c0d0880e:	0200      	lsls	r0, r0, #8
c0d08810:	4308      	orrs	r0, r1
c0d08812:	0439      	lsls	r1, r7, #16
c0d08814:	061b      	lsls	r3, r3, #24
c0d08816:	4301      	orrs	r1, r0
c0d08818:	4319      	orrs	r1, r3
c0d0881a:	ba09      	rev	r1, r1
c0d0881c:	2300      	movs	r3, #0
c0d0881e:	e001      	b.n	c0d08824 <strstr+0x100>
c0d08820:	4299      	cmp	r1, r3
c0d08822:	d01d      	beq.n	c0d08860 <strstr+0x13c>
c0d08824:	002c      	movs	r4, r5
c0d08826:	021b      	lsls	r3, r3, #8
c0d08828:	3501      	adds	r5, #1
c0d0882a:	4313      	orrs	r3, r2
c0d0882c:	782a      	ldrb	r2, [r5, #0]
c0d0882e:	2a00      	cmp	r2, #0
c0d08830:	d1f6      	bne.n	c0d08820 <strstr+0xfc>
c0d08832:	4299      	cmp	r1, r3
c0d08834:	d014      	beq.n	c0d08860 <strstr+0x13c>
c0d08836:	2400      	movs	r4, #0
c0d08838:	e7d0      	b.n	c0d087dc <strstr+0xb8>
c0d0883a:	4643      	mov	r3, r8
c0d0883c:	19d8      	adds	r0, r3, r7
c0d0883e:	5ddb      	ldrb	r3, [r3, r7]
c0d08840:	2b00      	cmp	r3, #0
c0d08842:	d0f8      	beq.n	c0d08836 <strstr+0x112>
c0d08844:	2180      	movs	r1, #128	; 0x80
c0d08846:	0109      	lsls	r1, r1, #4
c0d08848:	f7ff fe18 	bl	c0d0847c <strnlen>
c0d0884c:	4480      	add	r8, r0
c0d0884e:	4544      	cmp	r4, r8
c0d08850:	d9ac      	bls.n	c0d087ac <strstr+0x88>
c0d08852:	2400      	movs	r4, #0
c0d08854:	e7c2      	b.n	c0d087dc <strstr+0xb8>
c0d08856:	0028      	movs	r0, r5
c0d08858:	f000 f824 	bl	c0d088a4 <strchr>
c0d0885c:	0004      	movs	r4, r0
c0d0885e:	e7bd      	b.n	c0d087dc <strstr+0xb8>
c0d08860:	3c03      	subs	r4, #3
c0d08862:	e7bb      	b.n	c0d087dc <strstr+0xb8>
c0d08864:	0609      	lsls	r1, r1, #24
c0d08866:	0400      	lsls	r0, r0, #16
c0d08868:	4301      	orrs	r1, r0
c0d0886a:	023f      	lsls	r7, r7, #8
c0d0886c:	782a      	ldrb	r2, [r5, #0]
c0d0886e:	4339      	orrs	r1, r7
c0d08870:	e000      	b.n	c0d08874 <strstr+0x150>
c0d08872:	0005      	movs	r5, r0
c0d08874:	2a00      	cmp	r2, #0
c0d08876:	d0de      	beq.n	c0d08836 <strstr+0x112>
c0d08878:	4313      	orrs	r3, r2
c0d0887a:	021b      	lsls	r3, r3, #8
c0d0887c:	786a      	ldrb	r2, [r5, #1]
c0d0887e:	1c68      	adds	r0, r5, #1
c0d08880:	4299      	cmp	r1, r3
c0d08882:	d1f6      	bne.n	c0d08872 <strstr+0x14e>
c0d08884:	1eac      	subs	r4, r5, #2
c0d08886:	e7a9      	b.n	c0d087dc <strstr+0xb8>
c0d08888:	0001      	movs	r1, r0
c0d0888a:	003b      	movs	r3, r7
c0d0888c:	0032      	movs	r2, r6
c0d0888e:	0028      	movs	r0, r5
c0d08890:	f7ff fe06 	bl	c0d084a0 <two_way_long_needle>
c0d08894:	0004      	movs	r4, r0
c0d08896:	e7a1      	b.n	c0d087dc <strstr+0xb8>

c0d08898 <bzero>:
c0d08898:	b510      	push	{r4, lr}
c0d0889a:	000a      	movs	r2, r1
c0d0889c:	2100      	movs	r1, #0
c0d0889e:	f7ff fc9d 	bl	c0d081dc <memset>
c0d088a2:	bd10      	pop	{r4, pc}

c0d088a4 <strchr>:
c0d088a4:	2303      	movs	r3, #3
c0d088a6:	b2ca      	uxtb	r2, r1
c0d088a8:	b5f0      	push	{r4, r5, r6, r7, lr}
c0d088aa:	4003      	ands	r3, r0
c0d088ac:	2a00      	cmp	r2, #0
c0d088ae:	d035      	beq.n	c0d0891c <strchr+0x78>
c0d088b0:	2403      	movs	r4, #3
c0d088b2:	2b00      	cmp	r3, #0
c0d088b4:	d12d      	bne.n	c0d08912 <strchr+0x6e>
c0d088b6:	25ff      	movs	r5, #255	; 0xff
c0d088b8:	4029      	ands	r1, r5
c0d088ba:	020d      	lsls	r5, r1, #8
c0d088bc:	4329      	orrs	r1, r5
c0d088be:	040d      	lsls	r5, r1, #16
c0d088c0:	430d      	orrs	r5, r1
c0d088c2:	0029      	movs	r1, r5
c0d088c4:	6804      	ldr	r4, [r0, #0]
c0d088c6:	4e26      	ldr	r6, [pc, #152]	; (c0d08960 <strchr+0xbc>)
c0d088c8:	4061      	eors	r1, r4
c0d088ca:	198b      	adds	r3, r1, r6
c0d088cc:	438b      	bics	r3, r1
c0d088ce:	19a1      	adds	r1, r4, r6
c0d088d0:	43a1      	bics	r1, r4
c0d088d2:	4e24      	ldr	r6, [pc, #144]	; (c0d08964 <strchr+0xc0>)
c0d088d4:	430b      	orrs	r3, r1
c0d088d6:	4233      	tst	r3, r6
c0d088d8:	d111      	bne.n	c0d088fe <strchr+0x5a>
c0d088da:	6841      	ldr	r1, [r0, #4]
c0d088dc:	4f20      	ldr	r7, [pc, #128]	; (c0d08960 <strchr+0xbc>)
c0d088de:	000c      	movs	r4, r1
c0d088e0:	19cb      	adds	r3, r1, r7
c0d088e2:	406c      	eors	r4, r5
c0d088e4:	438b      	bics	r3, r1
c0d088e6:	19e1      	adds	r1, r4, r7
c0d088e8:	43a1      	bics	r1, r4
c0d088ea:	430b      	orrs	r3, r1
c0d088ec:	3004      	adds	r0, #4
c0d088ee:	4233      	tst	r3, r6
c0d088f0:	d0f3      	beq.n	c0d088da <strchr+0x36>
c0d088f2:	7803      	ldrb	r3, [r0, #0]
c0d088f4:	2b00      	cmp	r3, #0
c0d088f6:	d005      	beq.n	c0d08904 <strchr+0x60>
c0d088f8:	429a      	cmp	r2, r3
c0d088fa:	d004      	beq.n	c0d08906 <strchr+0x62>
c0d088fc:	3001      	adds	r0, #1
c0d088fe:	7803      	ldrb	r3, [r0, #0]
c0d08900:	2b00      	cmp	r3, #0
c0d08902:	d1f9      	bne.n	c0d088f8 <strchr+0x54>
c0d08904:	2000      	movs	r0, #0
c0d08906:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0d08908:	4293      	cmp	r3, r2
c0d0890a:	d0fc      	beq.n	c0d08906 <strchr+0x62>
c0d0890c:	3001      	adds	r0, #1
c0d0890e:	4220      	tst	r0, r4
c0d08910:	d0d1      	beq.n	c0d088b6 <strchr+0x12>
c0d08912:	7803      	ldrb	r3, [r0, #0]
c0d08914:	2b00      	cmp	r3, #0
c0d08916:	d1f7      	bne.n	c0d08908 <strchr+0x64>
c0d08918:	2000      	movs	r0, #0
c0d0891a:	e7f4      	b.n	c0d08906 <strchr+0x62>
c0d0891c:	2b00      	cmp	r3, #0
c0d0891e:	d008      	beq.n	c0d08932 <strchr+0x8e>
c0d08920:	2203      	movs	r2, #3
c0d08922:	e002      	b.n	c0d0892a <strchr+0x86>
c0d08924:	3001      	adds	r0, #1
c0d08926:	4210      	tst	r0, r2
c0d08928:	d003      	beq.n	c0d08932 <strchr+0x8e>
c0d0892a:	7803      	ldrb	r3, [r0, #0]
c0d0892c:	2b00      	cmp	r3, #0
c0d0892e:	d1f9      	bne.n	c0d08924 <strchr+0x80>
c0d08930:	e7e9      	b.n	c0d08906 <strchr+0x62>
c0d08932:	6802      	ldr	r2, [r0, #0]
c0d08934:	4b0a      	ldr	r3, [pc, #40]	; (c0d08960 <strchr+0xbc>)
c0d08936:	490b      	ldr	r1, [pc, #44]	; (c0d08964 <strchr+0xc0>)
c0d08938:	18d3      	adds	r3, r2, r3
c0d0893a:	4393      	bics	r3, r2
c0d0893c:	420b      	tst	r3, r1
c0d0893e:	d106      	bne.n	c0d0894e <strchr+0xaa>
c0d08940:	6842      	ldr	r2, [r0, #4]
c0d08942:	4b07      	ldr	r3, [pc, #28]	; (c0d08960 <strchr+0xbc>)
c0d08944:	3004      	adds	r0, #4
c0d08946:	18d3      	adds	r3, r2, r3
c0d08948:	4393      	bics	r3, r2
c0d0894a:	420b      	tst	r3, r1
c0d0894c:	d0f8      	beq.n	c0d08940 <strchr+0x9c>
c0d0894e:	7803      	ldrb	r3, [r0, #0]
c0d08950:	2b00      	cmp	r3, #0
c0d08952:	d0d8      	beq.n	c0d08906 <strchr+0x62>
c0d08954:	7843      	ldrb	r3, [r0, #1]
c0d08956:	3001      	adds	r0, #1
c0d08958:	2b00      	cmp	r3, #0
c0d0895a:	d1fb      	bne.n	c0d08954 <strchr+0xb0>
c0d0895c:	e7d3      	b.n	c0d08906 <strchr+0x62>
c0d0895e:	46c0      	nop			; (mov r8, r8)
c0d08960:	fefefeff 	.word	0xfefefeff
c0d08964:	80808080 	.word	0x80808080

c0d08968 <_ecode>:
c0d08968:	72646461 	.word	0x72646461
c0d0896c:	7465675f 	.word	0x7465675f
c0d08970:	496d754e 	.word	0x496d754e
c0d08974:	736d6574 	.word	0x736d6574
c0d08978:	64644100 	.word	0x64644100
c0d0897c:	73736572 	.word	0x73736572
c0d08980:	74615000 	.word	0x74615000
c0d08984:	52450068 	.word	0x52450068
c0d08988:	00524f52 	.word	0x00524f52
c0d0898c:	002f0027 	.word	0x002f0027

c0d08990 <C_icon_app_colors>:
c0d08990:	00000000 00ffffff                       ........

c0d08998 <C_icon_app_bitmap>:
c0d08998:	fc3fffff e007f00f c3dfc00f 867f87ff     ..?.............
c0d089a8:	87ff867f c00fc3df e00fc007 fffffc3f     ............?...

c0d089b8 <C_icon_app>:
c0d089b8:	00000010 00000010 00000001 c0d08990     ................
c0d089c8:	c0d08998                                ....

c0d089cc <C_icon_dashboard_colors>:
c0d089cc:	00000000 00ffffff                       ........

c0d089d4 <C_icon_dashboard_bitmap>:
c0d089d4:	00000000 f007800c ffc1fe03 03f03ff0     .............?..
c0d089e4:	c03300cc 0000000c 00000000              ..3.........

c0d089f0 <C_icon_dashboard>:
c0d089f0:	0000000e 0000000e 00000001 c0d089cc     ................
c0d08a00:	c0d089d4                                ....

c0d08a04 <seph_io_general_status>:
c0d08a04:	00020060                                 `....

c0d08a09 <seph_io_se_reset>:
c0d08a09:	                                         F..

c0d08a0c <g_pcHex>:
c0d08a0c:	33323130 37363534 62613938 66656463     0123456789abcdef

c0d08a1c <g_pcHex_cap>:
c0d08a1c:	33323130 37363534 42413938 46454443     0123456789ABCDEF
c0d08a2c:	2d2d003e 6566002d 6d612f65 746e756f     >.---.fee/amount
c0d08a3c:	67736d00 6e692f73 73747570 696f632f     .msgs/inputs/coi
c0d08a4c:	6d00736e 2f736773 7074756f 2f737475     ns.msgs/outputs/
c0d08a5c:	6e696f63 736d0073 762f7367 65756c61     coins.msgs/value
c0d08a6c:	706e692f 2f737475 6e696f63 736d0073     /inputs/coins.ms
c0d08a7c:	762f7367 65756c61 74756f2f 73747570     gs/value/outputs
c0d08a8c:	696f632f 6d00736e 2f736773 756c6176     /coins.msgs/valu
c0d08a9c:	6d612f65 746e756f 70697400 6f6d612f     e/amount.tip/amo
c0d08aac:	00746e75 74706d45 65640079 006d6f6e     unt.Empty.denom.
c0d08abc:	00207325 00732520 45524f43 6f637500     %s . %s.CORE.uco
c0d08acc:	30006572 6f4e002e 72726520 4e00726f     re.0..No error.N
c0d08adc:	6f6d206f 64206572 00617461 74696e49     o more data.Init
c0d08aec:	696c6169 2064657a 74706d65 6f632079     ialized empty co
c0d08afc:	7865746e 6e550074 65707865 64657463     ntext.Unexpected
c0d08b0c:	66756220 20726566 00646e65 78656e55      buffer end.Unex
c0d08b1c:	74636570 76206465 69737265 55006e6f     pected version.U
c0d08b2c:	7078656e 65746365 68632064 63617261     nexpected charac
c0d08b3c:	73726574 656e5500 63657078 20646574     ters.Unexpected 
c0d08b4c:	6c656966 6e550064 65707865 64657463     field.Unexpected
c0d08b5c:	70756420 6163696c 20646574 6c656966      duplicated fiel
c0d08b6c:	61560064 2065756c 2074756f 7220666f     d.Value out of r
c0d08b7c:	65676e61 656e5500 63657078 20646574     ange.Unexpected 
c0d08b8c:	69616863 7469006e 71206d65 79726575     chain.item query
c0d08b9c:	74657220 656e7275 6f6e2064 73657220      returned no res
c0d08bac:	73746c75 73696d00 676e6973 65696620     ults.missing fie
c0d08bbc:	7500646c 7078656e 65746365 79742064     ld.unexpected ty
c0d08bcc:	64006570 6c707369 69207961 7865646e     pe.display index
c0d08bdc:	74756f20 20666f20 676e6172 69640065      out of range.di
c0d08bec:	616c7073 61702079 6f206567 6f207475     splay page out o
c0d08bfc:	61722066 0065676e 4e4f534a 655a202e     f range.JSON. Ze
c0d08c0c:	74206f72 6e656b6f 534a0073 202e4e4f     ro tokens.JSON. 
c0d08c1c:	206f6f54 796e616d 6b6f7420 00736e65     Too many tokens.
c0d08c2c:	4e4f534a 72747320 20676e69 6e207369     JSON string is n
c0d08c3c:	6320746f 6c706d6f 00657465 4e4f534a     ot complete.JSON
c0d08c4c:	6e6f4320 6e696174 68772073 73657469      Contains whites
c0d08c5c:	65636170 206e6920 20656874 70726f63     pace in the corp
c0d08c6c:	4a007375 204e4f53 74636944 616e6f69     us.JSON Dictiona
c0d08c7c:	73656972 65726120 746f6e20 726f7320     ries are not sor
c0d08c8c:	00646574 4e4f534a 73694d20 676e6973     ted.JSON Missing
c0d08c9c:	61686320 695f6e69 534a0064 4d204e4f      chain_id.JSON M
c0d08cac:	69737369 7320676e 65757165 0065636e     issing sequence.
c0d08cbc:	4e4f534a 73694d20 676e6973 65656620     JSON Missing fee
c0d08ccc:	4f534a00 694d204e 6e697373 736d2067     .JSON Missing ms
c0d08cdc:	4a007367 204e4f53 7373694d 20676e69     gs.JSON Missing 
c0d08cec:	6f636361 20746e75 626d756e 4a007265     account number.J
c0d08cfc:	204e4f53 7373694d 20676e69 6f6d656d     SON Missing memo
c0d08d0c:	4f534a00 6e55204e 65707865 64657463     .JSON Unexpected
c0d08d1c:	72726520 7500726f 7078656e 65746365      error.unexpecte
c0d08d2c:	42432064 6520524f 726f7272 4f424300     d CBOR error.CBO
c0d08d3c:	61772052 6f6e2073 6e692074 6e616320     R was not in can
c0d08d4c:	63696e6f 6f206c61 72656472 656e5500     onical order.Une
c0d08d5c:	63657078 20646574 524f4243 464f4520     xpected CBOR EOF
c0d08d6c:	6e6f6300 74786574 65727020 20786966     .context prefix 
c0d08d7c:	69207369 6c61766e 63006469 65746e6f     is invalid.conte
c0d08d8c:	75207478 7078656e 65746365 69732064     xt unexpected si
c0d08d9c:	6300657a 65746e6f 69207478 6c61766e     ze.context inval
c0d08dac:	63206469 73726168 61725400 6361736e     id chars.Transac
c0d08dbc:	6e6f6974 20736920 206f6f74 00676962     tion is too big.
c0d08dcc:	65726e55 6e676f63 64657a69 72726520     Unrecognized err
c0d08ddc:	6320726f 0065646f 727a7071 38783979     or code.qpzry9x8
c0d08dec:	74326667 30776476 6e6a3373 686b3435     gf2tvdw0s3jn54kh
c0d08dfc:	6d366563 6c376175 72617000 707c6573     ce6mua7l.parse|p
c0d08e0c:	65737261 63610064 6e756f63 756e5f74     arsed.account_nu
c0d08e1c:	7265626d 70697400 67736d00 79742f73     mber.tip.msgs/ty
c0d08e2c:	6d006570 2f736773 756c6176 65642f65     pe.msgs/value/de
c0d08e3c:	6167656c 5f726f74 72646461 00737365     legator_address.
c0d08e4c:	65726f63 6d2d6d75 6e6e6961 312d7465     coreum-mainnet-1
c0d08e5c:	46454400 544c5541 61684320 00206e69     .DEFAULT Chain .
c0d08e6c:	69616843 7369206e 544f4e20 46454420     Chain is NOT DEF
c0d08e7c:	544c5541 32313000 36353433 61393837     AULT.0123456789a
c0d08e8c:	65646362                                 bcdef.

c0d08e92 <key_substitutions>:
c0d08e92:	69616863 64695f6e 00000000 00000000     chain_id........
	...
c0d08ec2:	68430000 206e6961 00004449 00000000     ..Chain ID......
	...
c0d08ef6:	6f636361 5f746e75 626d756e 00007265     account_number..
	...
c0d08f26:	63410000 6e756f63 00000074 00000000     ..Account.......
	...
c0d08f5a:	75716573 65636e65 00000000 00000000     sequence........
	...
c0d08f8a:	65530000 6e657571 00006563 00000000     ..Sequence......
	...
c0d08fbe:	6f6d656d 00000000 00000000 00000000     memo............
	...
c0d08fee:	654d0000 00006f6d 00000000 00000000     ..Memo..........
	...
c0d09022:	2f656566 756f6d61 0000746e 00000000     fee/amount......
	...
c0d09052:	65460000 00000065 00000000 00000000     ..Fee...........
	...
c0d09086:	2f656566 00736167 00000000 00000000     fee/gas.........
	...
c0d090b6:	61470000 00000073 00000000 00000000     ..Gas...........
	...
c0d090ea:	2f656566 6e617267 00726574 00000000     fee/granter.....
	...
c0d0911a:	72470000 65746e61 00000072 00000000     ..Granter.......
	...
c0d0914e:	2f656566 65796170 00000072 00000000     fee/payer.......
	...
c0d0917e:	61500000 00726579 00000000 00000000     ..Payer.........
	...
c0d091b2:	7367736d 7079742f 00000065 00000000     msgs/type.......
	...
c0d091e2:	79540000 00006570 00000000 00000000     ..Type..........
	...
c0d09216:	2f706974 756f6d61 0000746e 00000000     tip/amount......
	...
c0d09246:	69540000 00000070 00000000 00000000     ..Tip...........
	...
c0d0927a:	2f706974 70706974 00007265 00000000     tip/tipper......
	...
c0d092aa:	69540000 72657070 00000000 00000000     ..Tipper........
	...
c0d092de:	7367736d 706e692f 2f737475 72646461     msgs/inputs/addr
c0d092ee:	00737365 00000000 00000000 00000000     ess.............
	...
c0d0930e:	6f530000 65637275 64644120 73736572     ..Source Address
	...
c0d09342:	7367736d 706e692f 2f737475 6e696f63     msgs/inputs/coin
c0d09352:	00000073 00000000 00000000 00000000     s...............
	...
c0d09372:	6f530000 65637275 696f4320 0000736e     ..Source Coins..
	...
c0d093a6:	7367736d 74756f2f 73747570 6464612f     msgs/outputs/add
c0d093b6:	73736572 00000000 00000000 00000000     ress............
	...
c0d093d6:	65440000 41207473 65726464 00007373     ..Dest Address..
	...
c0d0940a:	7367736d 74756f2f 73747570 696f632f     msgs/outputs/coi
c0d0941a:	0000736e 00000000 00000000 00000000     ns..............
	...
c0d0943a:	65440000 43207473 736e696f 00000000     ..Dest Coins....
	...
c0d0946e:	7367736d 6c61762f 692f6575 7475706e     msgs/value/input
c0d0947e:	64612f73 73657264 00000073 00000000     s/address.......
	...
c0d0949e:	6f530000 65637275 64644120 73736572     ..Source Address
	...
c0d094d2:	7367736d 6c61762f 692f6575 7475706e     msgs/value/input
c0d094e2:	6f632f73 00736e69 00000000 00000000     s/coins.........
	...
c0d09502:	6f530000 65637275 696f4320 0000736e     ..Source Coins..
	...
c0d09536:	7367736d 6c61762f 6f2f6575 75707475     msgs/value/outpu
c0d09546:	612f7374 65726464 00007373 00000000     ts/address......
	...
c0d09566:	65440000 41207473 65726464 00007373     ..Dest Address..
	...
c0d0959a:	7367736d 6c61762f 6f2f6575 75707475     msgs/value/outpu
c0d095aa:	632f7374 736e696f 00000000 00000000     ts/coins........
	...
c0d095ca:	65440000 43207473 736e696f 00000000     ..Dest Coins....
	...
c0d095fe:	7367736d 6c61762f 662f6575 5f6d6f72     msgs/value/from_
c0d0960e:	72646461 00737365 00000000 00000000     address.........
	...
c0d0962e:	72460000 00006d6f 00000000 00000000     ..From..........
	...
c0d09662:	7367736d 6c61762f 742f6575 64615f6f     msgs/value/to_ad
c0d09672:	73657264 00000073 00000000 00000000     dress...........
	...
c0d09692:	6f540000 00000000 00000000 00000000     ..To............
	...
c0d096c6:	7367736d 6c61762f 612f6575 6e756f6d     msgs/value/amoun
c0d096d6:	00000074 00000000 00000000 00000000     t...............
	...
c0d096f6:	6d410000 746e756f 00000000 00000000     ..Amount........
	...
c0d0972a:	7367736d 6c61762f 642f6575 67656c65     msgs/value/deleg
c0d0973a:	726f7461 6464615f 73736572 00000000     ator_address....
	...
c0d0975a:	65440000 6167656c 00726f74 00000000     ..Delegator.....
	...
c0d0978e:	7367736d 6c61762f 762f6575 64696c61     msgs/value/valid
c0d0979e:	726f7461 6464615f 73736572 00000000     ator_address....
	...
c0d097be:	61560000 6164696c 00726f74 00000000     ..Validator.....
	...
c0d097f2:	7367736d 6c61762f 772f6575 64687469     msgs/value/withd
c0d09802:	5f776172 72646461 00737365 00000000     raw_address.....
	...
c0d09822:	69570000 72646874 41207761 65726464     ..Withdraw Addre
c0d09832:	00007373 00000000 00000000 00000000     ss..............
	...
c0d09856:	7367736d 6c61762f 762f6575 64696c61     msgs/value/valid
c0d09866:	726f7461 6372735f 6464615f 73736572     ator_src_address
	...
c0d09886:	61560000 6164696c 20726f74 72756f53     ..Validator Sour
c0d09896:	00006563 00000000 00000000 00000000     ce..............
	...
c0d098ba:	7367736d 6c61762f 762f6575 64696c61     msgs/value/valid
c0d098ca:	726f7461 7473645f 6464615f 73736572     ator_dst_address
	...
c0d098ea:	61560000 6164696c 20726f74 74736544     ..Validator Dest
	...
c0d0991e:	7367736d 6c61762f 642f6575 72637365     msgs/value/descr
c0d0992e:	69747069 00006e6f 00000000 00000000     iption..........
	...
c0d0994e:	65440000 69726373 6f697470 0000006e     ..Description...
	...
c0d09982:	7367736d 6c61762f 692f6575 6974696e     msgs/value/initi
c0d09992:	645f6c61 736f7065 612f7469 6e756f6d     al_deposit/amoun
c0d099a2:	00000074 00000000 00000000 00000000     t...............
c0d099b2:	65440000 69736f70 6d412074 746e756f     ..Deposit Amount
	...
c0d099e6:	7367736d 6c61762f 692f6575 6974696e     msgs/value/initi
c0d099f6:	645f6c61 736f7065 642f7469 6d6f6e65     al_deposit/denom
	...
c0d09a16:	65440000 69736f70 65442074 006d6f6e     ..Deposit Denom.
	...
c0d09a4a:	7367736d 6c61762f 702f6575 6f706f72     msgs/value/propo
c0d09a5a:	5f6c6173 65707974 00000000 00000000     sal_type........
	...
c0d09a7a:	72500000 736f706f 00006c61 00000000     ..Proposal......
	...
c0d09aae:	7367736d 6c61762f 702f6575 6f706f72     msgs/value/propo
c0d09abe:	00726573 00000000 00000000 00000000     ser.............
	...
c0d09ade:	72500000 736f706f 00007265 00000000     ..Proposer......
	...
c0d09b12:	7367736d 6c61762f 742f6575 656c7469     msgs/value/title
	...
c0d09b42:	69540000 00656c74 00000000 00000000     ..Title.........
	...
c0d09b76:	7367736d 6c61762f 642f6575 736f7065     msgs/value/depos
c0d09b86:	726f7469 00000000 00000000 00000000     itor............
	...
c0d09ba6:	65530000 7265646e 00000000 00000000     ..Sender........
	...
c0d09bda:	7367736d 6c61762f 702f6575 6f706f72     msgs/value/propo
c0d09bea:	5f6c6173 00006469 00000000 00000000     sal_id..........
	...
c0d09c0a:	72500000 736f706f 49206c61 00000044     ..Proposal ID...
	...
c0d09c3e:	7367736d 6c61762f 762f6575 7265746f     msgs/value/voter
	...
c0d09c6e:	65440000 69726373 6f697470 0000006e     ..Description...
	...
c0d09ca2:	7367736d 6c61762f 6f2f6575 6f697470     msgs/value/optio
c0d09cb2:	0000006e 00000000 00000000 00000000     n...............
	...
c0d09cd2:	704f0000 6e6f6974 00000000 00000000     ..Option........
	...

c0d09d06 <ascii_substitutions>:
c0d09d06:	62086107 6e0a660c 7409720d 5c5c760b     .a.b.f.n.r.t.v\\

c0d09d16 <value_substitutions>:
c0d09d16:	6d736f63 732d736f 4d2f6b64 65536773     cosmos-sdk/MsgSe
c0d09d26:	0000646e 00000000 00000000 00000000     nd..............
	...
c0d09d46:	65530000 0000646e 00000000 00000000     ..Send..........
	...
c0d09d7a:	6d736f63 732d736f 4d2f6b64 65446773     cosmos-sdk/MsgDe
c0d09d8a:	6167656c 00006574 00000000 00000000     legate..........
	...
c0d09daa:	65440000 6167656c 00006574 00000000     ..Delegate......
	...
c0d09dde:	6d736f63 732d736f 4d2f6b64 6e556773     cosmos-sdk/MsgUn
c0d09dee:	656c6564 65746167 00000000 00000000     delegate........
	...
c0d09e0e:	6e550000 656c6564 65746167 00000000     ..Undelegate....
	...
c0d09e42:	6d736f63 732d736f 4d2f6b64 65426773     cosmos-sdk/MsgBe
c0d09e52:	526e6967 6c656465 74616765 00000065     ginRedelegate...
	...
c0d09e72:	65520000 656c6564 65746167 00000000     ..Redelegate....
	...
c0d09ea6:	6d736f63 732d736f 4d2f6b64 75536773     cosmos-sdk/MsgSu
c0d09eb6:	74696d62 706f7250 6c61736f 00000000     bmitProposal....
	...
c0d09ed6:	72500000 736f706f 00000065 00000000     ..Propose.......
	...
c0d09f0a:	6d736f63 732d736f 4d2f6b64 65446773     cosmos-sdk/MsgDe
c0d09f1a:	69736f70 00000074 00000000 00000000     posit...........
	...
c0d09f3a:	65440000 69736f70 00000074 00000000     ..Deposit.......
	...
c0d09f6e:	6d736f63 732d736f 4d2f6b64 6f566773     cosmos-sdk/MsgVo
c0d09f7e:	00006574 00000000 00000000 00000000     te..............
	...
c0d09f9e:	6f560000 00006574 00000000 00000000     ..Vote..........
	...
c0d09fd2:	6d736f63 732d736f 4d2f6b64 69576773     cosmos-sdk/MsgWi
c0d09fe2:	72646874 65447761 6167656c 6e6f6974     thdrawDelegation
c0d09ff2:	61776552 00006472 00000000 00000000     Reward..........
c0d0a002:	69570000 72646874 52207761 72617765     ..Withdraw Rewar
c0d0a012:	00000064 00000000 00000000 00000000     d...............
	...
c0d0a036:	6d736f63 732d736f 4d2f6b64 69576773     cosmos-sdk/MsgWi
c0d0a046:	72646874 61567761 6164696c 43726f74     thdrawValidatorC
c0d0a056:	696d6d6f 6f697373 0000006e 00000000     ommission.......
c0d0a066:	69570000 72646874 56207761 202e6c61     ..Withdraw Val. 
c0d0a076:	6d6d6f43 69737369 00006e6f 00000000     Commission......
	...
c0d0a09a:	6d736f63 732d736f 4d2f6b64 65536773     cosmos-sdk/MsgSe
c0d0a0aa:	74695774 61726468 64644177 73736572     tWithdrawAddress
	...
c0d0a0ca:	69570000 72646874 53207761 41207465     ..Withdraw Set A
c0d0a0da:	65726464 00007373 00000000 00000000     ddress..........
	...
c0d0a0fe:	6d736f63 732d736f 4d2f6b64 754d6773     cosmos-sdk/MsgMu
c0d0a10e:	5369746c 00646e65 00000000 00000000     ltiSend.........
	...
c0d0a12e:	754d0000 2069746c 646e6553 00000000     ..Multi Send....
	...
c0d0a162:	746c754d                                 Multi.

c0d0a168 <whitespaces>:
c0d0a168:	0d0a0c20 00000b09                        .......

c0d0a170 <USBD_HID_Desc>:
c0d0a170:	01112109 22220100                        .!...."".

c0d0a179 <HID_ReportDesc>:
c0d0a179:	09ffa006 0901a101 26001503 087500ff     ...........&..u.
c0d0a189:	08814095 00150409 7500ff26 91409508     .@......&..u..@.
c0d0a199:	                                         ..

c0d0a19b <C_usb_bos>:
c0d0a19b:	00390f05 05101802 08b63800 a009a934     ..9......8..4...
c0d0a1ab:	a0fd8b47 b6158876 1e010065 05101c00     G...v...e.......
c0d0a1bb:	dd60df00 c74589d8 65d29c4c 8a649e9d     ..`...E.L..e..d.
c0d0a1cb:	0300009f 7700b206                        .......w.

c0d0a1d4 <HID_Desc>:
c0d0a1d4:	c0d06c09 c0d06c19 c0d06c29 c0d06c39     .l...l..)l..9l..
c0d0a1e4:	c0d06c49 c0d06c59 c0d06c69 c0d06c79     Il..Yl..il..yl..

c0d0a1f4 <C_winusb_string_descriptor>:
c0d0a1f4:	004d0312 00460053 00310054 00300030     ..M.S.F.T.1.0.0.
c0d0a204:	                                         w.

c0d0a206 <C_winusb_guid>:
c0d0a206:	00000092 00050100 00880001 00070000     ................
c0d0a216:	002a0000 00650044 00690076 00650063     ..*.D.e.v.i.c.e.
c0d0a226:	006e0049 00650074 00660072 00630061     I.n.t.e.r.f.a.c.
c0d0a236:	00470065 00490055 00730044 00500000     e.G.U.I.D.s...P.
c0d0a246:	007b0000 00330031 00360064 00340033     ..{.1.3.d.6.3.4.
c0d0a256:	00300030 0032002d 00390043 002d0037     0.0.-.2.C.9.7.-.
c0d0a266:	00300030 00340030 0030002d 00300030     0.0.0.4.-.0.0.0.
c0d0a276:	002d0030 00630034 00350036 00340036     0.-.4.c.6.5.6.4.
c0d0a286:	00370036 00350036 00320037 0000007d     6.7.6.5.7.2.}...
	...

c0d0a298 <C_winusb_request_descriptor>:
c0d0a298:	0000000a 06030000 000800b2 00000001     ................
c0d0a2a8:	000800a8 00010002 001400a0 49570003     ..............WI
c0d0a2b8:	4253554e 00000000 00000000 00840000     NUSB............
c0d0a2c8:	00070004 0044002a 00760065 00630069     ....*.D.e.v.i.c.
c0d0a2d8:	00490065 0074006e 00720065 00610066     e.I.n.t.e.r.f.a.
c0d0a2e8:	00650063 00550047 00440049 00000073     c.e.G.U.I.D.s...
c0d0a2f8:	007b0050 00450043 00300038 00320039     P.{.C.E.8.0.9.2.
c0d0a308:	00340036 0034002d 00320042 002d0034     6.4.-.4.B.2.4.-.
c0d0a318:	00450034 00310038 0041002d 00420038     4.E.8.1.-.A.8.B.
c0d0a328:	002d0032 00370035 00440045 00310030     2.-.5.7.E.D.0.1.
c0d0a338:	00350044 00300038 00310045 0000007d     D.5.8.0.E.1.}...
c0d0a348:	00000000                                ....

c0d0a34c <USBD_HID>:
c0d0a34c:	c0d06a77 c0d06aa9 c0d069e3 00000000     wj...j...i......
c0d0a35c:	00000000 c0d06b05 c0d06b1d 00000000     .....k...k......
	...
c0d0a374:	c0d06d89 c0d06d89 c0d06d89 c0d06d99     .m...m...m...m..

c0d0a384 <USBD_WEBUSB>:
c0d0a384:	c0d06b6d c0d06b99 c0d06b9d 00000000     mk...k...k......
c0d0a394:	00000000 c0d06ba1 c0d06bb9 00000000     .....k...k......
	...
c0d0a3ac:	c0d06d89 c0d06d89 c0d06d89 c0d06d99     .m...m...m...m..

c0d0a3bc <USBD_DeviceDesc>:
c0d0a3bc:	02100112 40000000 10112c97 02010201     .......@.,......
c0d0a3cc:	                                         ..

c0d0a3ce <USBD_LangIDDesc>:
c0d0a3ce:	04090304                                ....

c0d0a3d2 <USBD_MANUFACTURER_STRING>:
c0d0a3d2:	004c030e 00640065 00650067               ..L.e.d.g.e.r.

c0d0a3e0 <USBD_PRODUCT_FS_STRING>:
c0d0a3e0:	004e030e 006e0061 0020006f               ..N.a.n.o. .S.

c0d0a3ee <USB_SERIAL_STRING>:
c0d0a3ee:	0030030a 00300030                        ..0.0.0.1.

c0d0a3f8 <C_winusb_wcid>:
c0d0a3f8:	00000028 00040100 00000001 00000000     (...............
c0d0a408:	49570101 4253554e 00000000 00000000     ..WINUSB........
	...

c0d0a420 <USBD_CfgDesc>:
c0d0a420:	00400209 c0020102 00040932 00030200     ..@.....2.......
c0d0a430:	21090200 01000111 07002222 40038205     ...!...."".....@
c0d0a440:	05070100 00400302 01040901 ffff0200     ......@.........
c0d0a450:	050702ff 00400383 03050701 01004003     ......@......@..

c0d0a460 <USBD_DeviceQualifierDesc>:
c0d0a460:	0200060a 40000000 00000001              .......@....

c0d0a46c <ux_menu_elements>:
c0d0a46c:	00008003 00800000 00000020 00000001     ........ .......
c0d0a47c:	00000000 00ffffff 00000000 00000000     ................
c0d0a48c:	00038105 0007000e 00000004 00000000     ................
c0d0a49c:	00ffffff 00000000 000b0000 00000000     ................
c0d0a4ac:	00768205 0007000e 00000004 00000000     ..v.............
c0d0a4bc:	00ffffff 00000000 000c0000 00000000     ................
c0d0a4cc:	000e4107 00640003 0000000c 00000000     .A....d.........
c0d0a4dc:	00ffffff 00000000 0000800a 00000000     ................
c0d0a4ec:	000e4207 00640023 0000000c 00000000     .B..#.d.........
c0d0a4fc:	00ffffff 00000000 0000800a 00000000     ................
c0d0a50c:	000e1005 00000009 00000000 00000000     ................
c0d0a51c:	00ffffff 00000000 00000000 00000000     ................
c0d0a52c:	000e2007 00640013 0000000c 00000000     . ....d.........
c0d0a53c:	00ffffff 00000000 00008008 00000000     ................
c0d0a54c:	000e2107 0064000c 0000000c 00000000     .!....d.........
c0d0a55c:	00ffffff 00000000 00008008 00000000     ................
c0d0a56c:	000e2207 0064001a 0000000c 00000000     ."....d.........
c0d0a57c:	00ffffff 00000000 00008008 00000000     ................

c0d0a58c <UX_MENU_END_ENTRY>:
	...
c0d0a5a8:	61705f68 676e6967 696e695f 5f680074     h_paging_init.h_
c0d0a5b8:	72707061 0065766f 65725f68 7463656a     approve.h_reject
c0d0a5c8:	705f6800 6e696761 61635f67 6e695f6e     .h_paging_can_in
c0d0a5d8:	61657263 68006573 6761705f 5f676e69     crease.h_paging_
c0d0a5e8:	5f6e6163 72636e69 65736165 004f4e20     can_increase NO.
c0d0a5f8:	61705f68 676e6967 636e695f 73616572     h_paging_increas
c0d0a608:	5f680065 69676170 635f676e 645f6e61     e.h_paging_can_d
c0d0a618:	65726365 00657361 61705f68 676e6967     ecrease.h_paging
c0d0a628:	6e61635f 6365645f 73616572 4f4e2065     _can_decrease NO
c0d0a638:	67617000 002d2d65 6d657469 61002d2d     .page--.item--.a
c0d0a648:	6f697463 63615f6e 74706563 74636100     ction_accept.act
c0d0a658:	5f6e6f69 656a6572 71007463 6b636975     ion_reject.quick
c0d0a668:	63636120 00747065 65725f68 77656976      accept.h_review
c0d0a678:	6470755f 5f657461 61746164 47202d20     _update_data - G
c0d0a688:	754e7465 6574496d 3d3d736d 4c4c554e     etNumItems==NULL
c0d0a698:	725f6800 65697665 70755f77 65746164     .h_review_update
c0d0a6a8:	7461645f 202d2061 49746547 3d6d6574     _data - GetItem=
c0d0a6b8:	4c554e3d 7075004c 65746164 78644920     =NULL.update Idx
c0d0a6c8:	2f642520 73006425 5f776f68 65636361      %d/%d.show_acce
c0d0a6d8:	615f7470 6f697463 202d206e 65636361     pt_action - acce
c0d0a6e8:	69207470 006d6574 454a4552 73005443     pt item.REJECT.s
c0d0a6f8:	5f776f68 656a6572 615f7463 6f697463     how_reject_actio
c0d0a708:	202d206e 656a6572 69207463 006d6574     n - reject item.
c0d0a718:	64255b20 5d64252f 00000000 574f4853      [%d/%d]....SHOW
c0d0a728:	20474e49 41544144 726f4300 006d7565     ING DATA.Coreum.
c0d0a738:	65707845 6d207472 3a65646f 72655600     Expert mode:.Ver
c0d0a748:	6e6f6973 3276003a 2e35332e 65440035     sion:.v2.35.5.De
c0d0a758:	6f6c6576 20646570 003a7962 646e6f5a     veloped by:.Zond
c0d0a768:	632e7861 694c0068 736e6563 00203a65     ax.ch.License: .
c0d0a778:	63617041 32206568 5100302e 00746975     Apache 2.0.Quit.
c0d0a788:	20746f4e 64616552 6c430079 206b6369     Not Ready.Click 
c0d0a798:	49006f74 6974696e 7a696c61 69760065     to.Initialize.vi
c0d0a7a8:	725f7765 65697665 68735f77 695f776f     ew_review_show_i
c0d0a7b8:	006c706d 65725f68 77656976 7475625f     mpl.h_review_but
c0d0a7c8:	5f6e6f74 68746f62 725f6800 65697665     ton_both.h_revie
c0d0a7d8:	75625f77 6e6f7474 66656c5f 5f680074     w_button_left.h_
c0d0a7e8:	69766572 625f7765 6f747475 69725f6e     review_button_ri
c0d0a7f8:	00746867                                ght.

c0d0a7fc <menu_main>:
	...
c0d0a808:	c0d089b8 c0d0a731 20000c08 00000c21     ....1...... !...
c0d0a818:	00000000 c0d07e0d 00000000 c0d089b8     .....~..........
c0d0a828:	c0d0a738 20000c1a 00000c21 00000000     8...... !.......
	...
c0d0a840:	c0d089b8 c0d0a745 c0d0a74e 00000c21     ....E...N...!...
	...
c0d0a85c:	c0d089b8 c0d0a756 c0d0a764 00000c21     ....V...d...!...
	...
c0d0a878:	c0d089b8 c0d0a76e c0d0a778 00000c21     ....n...x...!...
c0d0a888:	00000000 c0d07875 00000000 c0d089f0     ....ux..........
c0d0a898:	c0d0a783 00000000 00001d32 00000000     ........2.......
	...

c0d0a8c0 <view_review>:
c0d0a8c0:	00000003 00800000 00000020 00000001     ........ .......
c0d0a8d0:	00000000 00ffffff 00000000 00000000     ................
c0d0a8e0:	00001005 00070000 00000007 00000000     ................
c0d0a8f0:	00ffffff 00000000 00090000 00000000     ................
c0d0a900:	00791105 00070000 00000007 00000000     ..y.............
c0d0a910:	00ffffff 00000000 000a0000 00000000     ................
c0d0a920:	000a1205 0007000c 00000007 00000000     ................
c0d0a930:	00ffffff 00000000 001b0000 00000000     ................
c0d0a940:	00002007 00800008 0000000b 00000000     . ..............
c0d0a950:	00ffffff 00000000 0000800a 20000c08     ............... 
c0d0a960:	00002107 00800013 0000000b 00000000     .!..............
c0d0a970:	00ffffff 00000000 0000800a 20000c1a     ............... 
c0d0a980:	00002207 0080001e 0000000b 00000000     ."..............
c0d0a990:	00ffffff 00000000 0000800a 20000c3d     ............=.. 

c0d0a9a0 <view_error>:
c0d0a9a0:	00000003 00800000 00000020 00000001     ........ .......
c0d0a9b0:	00000000 00ffffff 00000000 00000000     ................
c0d0a9c0:	00790005 00070000 00000007 00000000     ..y.............
c0d0a9d0:	00ffffff 00000000 00060000 00000000     ................
c0d0a9e0:	00002007 00800008 0000000b 00000000     . ..............
c0d0a9f0:	00ffffff 00000000 0000800a 20000c08     ............... 
c0d0aa00:	00002007 00800013 0000000b 00000000     . ..............
c0d0aa10:	00ffffff 00000000 0000800a 20000c1a     ............... 
c0d0aa20:	00007107 0080001e 0085000b 00000000     .q..............
c0d0aa30:	00ffffff 00000000 0032800a 20000c3d     ..........2.=.. 
c0d0aa40:	61736964 64656c62 52524500 52524500     disabled.ERR.ERR
c0d0aa50:	003f3f3f                                ???.

c0d0aa54 <nanos_characters_width>:
c0d0aa54:	77463333 23899a66 66663434 45334433     33Fwf..#44ff3D3E
c0d0aa64:	67676668 67686688 33336868 56656665     hfgg.fhghh33efeV
c0d0aa74:	777778aa 88666688 78453488 9989ab66     .xww.ff..4Exf...
c0d0aa84:	66789977 ab768876 45676768 56674545     w.xfv.v.hggEEEgV
c0d0aa94:	56776767 67566777 67453477 7777aa34     ggwVwgVgw4Eg4.ww
c0d0aaa4:	56457777 9a677745 45566767 76664566     wwEVEwg.ggVEfEfv

c0d0aab4 <_etext>:
	...

c0d0aac0 <N_appmode_impl>:
	...

c0d0ab00 <N_appdata_impl>:
	...
