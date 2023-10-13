
build/nanos2/bin/app.elf:     file format elf32-littlearm


Disassembly of section .text:

c0de0000 <main>:
c0de0000:	b510      	push	{r4, lr}
c0de0002:	b08c      	sub	sp, #48	; 0x30
c0de0004:	b662      	cpsie	i
c0de0006:	f008 ff7d 	bl	c0de8f04 <view_init>
c0de000a:	f003 f9c7 	bl	c0de339c <os_boot>
c0de000e:	466c      	mov	r4, sp
c0de0010:	4620      	mov	r0, r4
c0de0012:	f009 fcf5 	bl	c0de9a00 <setjmp>
c0de0016:	0401      	lsls	r1, r0, #16
c0de0018:	f8ad 002c 	strh.w	r0, [sp, #44]	; 0x2c
c0de001c:	d006      	beq.n	c0de002c <main+0x2c>
c0de001e:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de0020:	2100      	movs	r1, #0
c0de0022:	f8ad 102c 	strh.w	r1, [sp, #44]	; 0x2c
c0de0026:	f005 fe07 	bl	c0de5c38 <try_context_set>
c0de002a:	e007      	b.n	c0de003c <main+0x3c>
c0de002c:	4668      	mov	r0, sp
c0de002e:	f005 fe03 	bl	c0de5c38 <try_context_set>
c0de0032:	900a      	str	r0, [sp, #40]	; 0x28
c0de0034:	f000 ff2e 	bl	c0de0e94 <app_init>
c0de0038:	f000 ff3e 	bl	c0de0eb8 <app_main>
c0de003c:	f005 fdf2 	bl	c0de5c24 <try_context_get>
c0de0040:	42a0      	cmp	r0, r4
c0de0042:	d102      	bne.n	c0de004a <main+0x4a>
c0de0044:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de0046:	f005 fdf7 	bl	c0de5c38 <try_context_set>
c0de004a:	f8bd 002c 	ldrh.w	r0, [sp, #44]	; 0x2c
c0de004e:	b910      	cbnz	r0, c0de0056 <main+0x56>
c0de0050:	2000      	movs	r0, #0
c0de0052:	b00c      	add	sp, #48	; 0x30
c0de0054:	bd10      	pop	{r4, pc}
c0de0056:	f003 f9a5 	bl	c0de33a4 <os_longjmp>

c0de005a <_code>:
	...

c0de005c <addr_getNumItems>:
c0de005c:	b510      	push	{r4, lr}
c0de005e:	4604      	mov	r4, r0
c0de0060:	4806      	ldr	r0, [pc, #24]	; (c0de007c <addr_getNumItems+0x20>)
c0de0062:	4478      	add	r0, pc
c0de0064:	f009 fc7a 	bl	c0de995c <zemu_log_stack>
c0de0068:	2001      	movs	r0, #1
c0de006a:	7020      	strb	r0, [r4, #0]
c0de006c:	f000 ffa2 	bl	c0de0fb4 <app_mode_expert>
c0de0070:	b108      	cbz	r0, c0de0076 <addr_getNumItems+0x1a>
c0de0072:	2002      	movs	r0, #2
c0de0074:	7020      	strb	r0, [r4, #0]
c0de0076:	2003      	movs	r0, #3
c0de0078:	bd10      	pop	{r4, pc}
c0de007a:	bf00      	nop
c0de007c:	00009f76 	.word	0x00009f76

c0de0080 <addr_getItem>:
c0de0080:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de0084:	b0ce      	sub	sp, #312	; 0x138
c0de0086:	f50d 7aac 	add.w	sl, sp, #344	; 0x158
c0de008a:	e89a 0580 	ldmia.w	sl, {r7, r8, sl}
c0de008e:	461e      	mov	r6, r3
c0de0090:	4615      	mov	r5, r2
c0de0092:	2801      	cmp	r0, #1
c0de0094:	460c      	mov	r4, r1
c0de0096:	d042      	beq.n	c0de011e <addr_getItem+0x9e>
c0de0098:	2800      	cmp	r0, #0
c0de009a:	f040 80ee 	bne.w	c0de027a <addr_getItem+0x1fa>
c0de009e:	4a80      	ldr	r2, [pc, #512]	; (c0de02a0 <addr_getItem+0x220>)
c0de00a0:	4620      	mov	r0, r4
c0de00a2:	447a      	add	r2, pc
c0de00a4:	4629      	mov	r1, r5
c0de00a6:	f003 fead 	bl	c0de3e04 <snprintf>
c0de00aa:	4c7c      	ldr	r4, [pc, #496]	; (c0de029c <addr_getItem+0x21c>)
c0de00ac:	eb09 0004 	add.w	r0, r9, r4
c0de00b0:	3021      	adds	r0, #33	; 0x21
c0de00b2:	f009 fcbd 	bl	c0de9a30 <strlen>
c0de00b6:	4605      	mov	r5, r0
c0de00b8:	4630      	mov	r0, r6
c0de00ba:	4639      	mov	r1, r7
c0de00bc:	f009 fc5b 	bl	c0de9976 <explicit_bzero>
c0de00c0:	1e79      	subs	r1, r7, #1
c0de00c2:	2000      	movs	r0, #0
c0de00c4:	b28a      	uxth	r2, r1
c0de00c6:	f88a 0000 	strb.w	r0, [sl]
c0de00ca:	2a00      	cmp	r2, #0
c0de00cc:	f04f 0003 	mov.w	r0, #3
c0de00d0:	f000 80dd 	beq.w	c0de028e <addr_getItem+0x20e>
c0de00d4:	042b      	lsls	r3, r5, #16
c0de00d6:	f000 80da 	beq.w	c0de028e <addr_getItem+0x20e>
c0de00da:	b2a8      	uxth	r0, r5
c0de00dc:	b28b      	uxth	r3, r1
c0de00de:	fbb0 f7f3 	udiv	r7, r0, r3
c0de00e2:	fb07 5011 	mls	r0, r7, r1, r5
c0de00e6:	b283      	uxth	r3, r0
c0de00e8:	4619      	mov	r1, r3
c0de00ea:	2b00      	cmp	r3, #0
c0de00ec:	bf18      	it	ne
c0de00ee:	2101      	movne	r1, #1
c0de00f0:	4439      	add	r1, r7
c0de00f2:	b2cf      	uxtb	r7, r1
c0de00f4:	4547      	cmp	r7, r8
c0de00f6:	f88a 1000 	strb.w	r1, [sl]
c0de00fa:	f240 80c7 	bls.w	c0de028c <addr_getItem+0x20c>
c0de00fe:	eb09 0104 	add.w	r1, r9, r4
c0de0102:	fb08 1102 	mla	r1, r8, r2, r1
c0de0106:	0400      	lsls	r0, r0, #16
c0de0108:	f101 0121 	add.w	r1, r1, #33	; 0x21
c0de010c:	f000 80b7 	beq.w	c0de027e <addr_getItem+0x1fe>
c0de0110:	1e78      	subs	r0, r7, #1
c0de0112:	4540      	cmp	r0, r8
c0de0114:	f040 80b3 	bne.w	c0de027e <addr_getItem+0x1fe>
c0de0118:	4630      	mov	r0, r6
c0de011a:	461a      	mov	r2, r3
c0de011c:	e0b0      	b.n	c0de0280 <addr_getItem+0x200>
c0de011e:	f000 ff49 	bl	c0de0fb4 <app_mode_expert>
c0de0122:	2800      	cmp	r0, #0
c0de0124:	f000 80a9 	beq.w	c0de027a <addr_getItem+0x1fa>
c0de0128:	9601      	str	r6, [sp, #4]
c0de012a:	4a5e      	ldr	r2, [pc, #376]	; (c0de02a4 <addr_getItem+0x224>)
c0de012c:	4620      	mov	r0, r4
c0de012e:	447a      	add	r2, pc
c0de0130:	4629      	mov	r1, r5
c0de0132:	f003 fe67 	bl	c0de3e04 <snprintf>
c0de0136:	ae03      	add	r6, sp, #12
c0de0138:	4630      	mov	r0, r6
c0de013a:	f44f 7196 	mov.w	r1, #300	; 0x12c
c0de013e:	f009 fc1a 	bl	c0de9976 <explicit_bzero>
c0de0142:	4854      	ldr	r0, [pc, #336]	; (c0de0294 <addr_getItem+0x214>)
c0de0144:	f44f 7196 	mov.w	r1, #300	; 0x12c
c0de0148:	f859 0000 	ldr.w	r0, [r9, r0]
c0de014c:	4a56      	ldr	r2, [pc, #344]	; (c0de02a8 <addr_getItem+0x228>)
c0de014e:	f020 4300 	bic.w	r3, r0, #2147483648	; 0x80000000
c0de0152:	447a      	add	r2, pc
c0de0154:	4630      	mov	r0, r6
c0de0156:	f003 fe55 	bl	c0de3e04 <snprintf>
c0de015a:	4630      	mov	r0, r6
c0de015c:	f44f 7196 	mov.w	r1, #300	; 0x12c
c0de0160:	f009 fc95 	bl	c0de9a8e <strnlen>
c0de0164:	1e41      	subs	r1, r0, #1
c0de0166:	f5b1 7f95 	cmp.w	r1, #298	; 0x12a
c0de016a:	d851      	bhi.n	c0de0210 <addr_getItem+0x190>
c0de016c:	494f      	ldr	r1, [pc, #316]	; (c0de02ac <addr_getItem+0x22c>)
c0de016e:	2700      	movs	r7, #0
c0de0170:	4479      	add	r1, pc
c0de0172:	468b      	mov	fp, r1
c0de0174:	494e      	ldr	r1, [pc, #312]	; (c0de02b0 <addr_getItem+0x230>)
c0de0176:	f04f 0800 	mov.w	r8, #0
c0de017a:	4479      	add	r1, pc
c0de017c:	9102      	str	r1, [sp, #8]
c0de017e:	bf00      	nop
c0de0180:	4944      	ldr	r1, [pc, #272]	; (c0de0294 <addr_getItem+0x214>)
c0de0182:	eb00 0a07 	add.w	sl, r0, r7
c0de0186:	4449      	add	r1, r9
c0de0188:	f851 1028 	ldr.w	r1, [r1, r8, lsl #2]
c0de018c:	f1b1 3fff 	cmp.w	r1, #4294967295	; 0xffffffff
c0de0190:	dc11      	bgt.n	c0de01b6 <addr_getItem+0x136>
c0de0192:	4a48      	ldr	r2, [pc, #288]	; (c0de02b4 <addr_getItem+0x234>)
c0de0194:	eb06 050a 	add.w	r5, r6, sl
c0de0198:	f5ca 7496 	rsb	r4, sl, #300	; 0x12c
c0de019c:	447a      	add	r2, pc
c0de019e:	4628      	mov	r0, r5
c0de01a0:	4621      	mov	r1, r4
c0de01a2:	f003 fe2f 	bl	c0de3e04 <snprintf>
c0de01a6:	4628      	mov	r0, r5
c0de01a8:	4621      	mov	r1, r4
c0de01aa:	f009 fc70 	bl	c0de9a8e <strnlen>
c0de01ae:	b378      	cbz	r0, c0de0210 <addr_getItem+0x190>
c0de01b0:	42a0      	cmp	r0, r4
c0de01b2:	d22d      	bcs.n	c0de0210 <addr_getItem+0x190>
c0de01b4:	4482      	add	sl, r0
c0de01b6:	f1b8 0f04 	cmp.w	r8, #4
c0de01ba:	d02e      	beq.n	c0de021a <addr_getItem+0x19a>
c0de01bc:	eb06 050a 	add.w	r5, r6, sl
c0de01c0:	f5ca 7496 	rsb	r4, sl, #300	; 0x12c
c0de01c4:	4628      	mov	r0, r5
c0de01c6:	4621      	mov	r1, r4
c0de01c8:	465a      	mov	r2, fp
c0de01ca:	f003 fe1b 	bl	c0de3e04 <snprintf>
c0de01ce:	4628      	mov	r0, r5
c0de01d0:	4621      	mov	r1, r4
c0de01d2:	f009 fc5c 	bl	c0de9a8e <strnlen>
c0de01d6:	b1d8      	cbz	r0, c0de0210 <addr_getItem+0x190>
c0de01d8:	42a0      	cmp	r0, r4
c0de01da:	d219      	bcs.n	c0de0210 <addr_getItem+0x190>
c0de01dc:	eb00 070a 	add.w	r7, r0, sl
c0de01e0:	482c      	ldr	r0, [pc, #176]	; (c0de0294 <addr_getItem+0x214>)
c0de01e2:	19f5      	adds	r5, r6, r7
c0de01e4:	4448      	add	r0, r9
c0de01e6:	eb00 0088 	add.w	r0, r0, r8, lsl #2
c0de01ea:	6840      	ldr	r0, [r0, #4]
c0de01ec:	f5c7 7496 	rsb	r4, r7, #300	; 0x12c
c0de01f0:	9a02      	ldr	r2, [sp, #8]
c0de01f2:	f020 4300 	bic.w	r3, r0, #2147483648	; 0x80000000
c0de01f6:	4628      	mov	r0, r5
c0de01f8:	4621      	mov	r1, r4
c0de01fa:	f003 fe03 	bl	c0de3e04 <snprintf>
c0de01fe:	4628      	mov	r0, r5
c0de0200:	4621      	mov	r1, r4
c0de0202:	f009 fc44 	bl	c0de9a8e <strnlen>
c0de0206:	b118      	cbz	r0, c0de0210 <addr_getItem+0x190>
c0de0208:	42a0      	cmp	r0, r4
c0de020a:	f108 0801 	add.w	r8, r8, #1
c0de020e:	d3b7      	bcc.n	c0de0180 <addr_getItem+0x100>
c0de0210:	4921      	ldr	r1, [pc, #132]	; (c0de0298 <addr_getItem+0x218>)
c0de0212:	2052      	movs	r0, #82	; 0x52
c0de0214:	f8ad 0010 	strh.w	r0, [sp, #16]
c0de0218:	9103      	str	r1, [sp, #12]
c0de021a:	f10d 080c 	add.w	r8, sp, #12
c0de021e:	4640      	mov	r0, r8
c0de0220:	f009 fc06 	bl	c0de9a30 <strlen>
c0de0224:	9c01      	ldr	r4, [sp, #4]
c0de0226:	9d56      	ldr	r5, [sp, #344]	; 0x158
c0de0228:	4606      	mov	r6, r0
c0de022a:	4620      	mov	r0, r4
c0de022c:	4629      	mov	r1, r5
c0de022e:	f009 fba2 	bl	c0de9976 <explicit_bzero>
c0de0232:	1e68      	subs	r0, r5, #1
c0de0234:	b282      	uxth	r2, r0
c0de0236:	9d58      	ldr	r5, [sp, #352]	; 0x160
c0de0238:	f8dd c15c 	ldr.w	ip, [sp, #348]	; 0x15c
c0de023c:	2100      	movs	r1, #0
c0de023e:	7029      	strb	r1, [r5, #0]
c0de0240:	b322      	cbz	r2, c0de028c <addr_getItem+0x20c>
c0de0242:	0431      	lsls	r1, r6, #16
c0de0244:	d022      	beq.n	c0de028c <addr_getItem+0x20c>
c0de0246:	b2b1      	uxth	r1, r6
c0de0248:	b283      	uxth	r3, r0
c0de024a:	fbb1 f1f3 	udiv	r1, r1, r3
c0de024e:	fb01 6010 	mls	r0, r1, r0, r6
c0de0252:	b286      	uxth	r6, r0
c0de0254:	4633      	mov	r3, r6
c0de0256:	2e00      	cmp	r6, #0
c0de0258:	bf18      	it	ne
c0de025a:	2301      	movne	r3, #1
c0de025c:	4419      	add	r1, r3
c0de025e:	b2cf      	uxtb	r7, r1
c0de0260:	4567      	cmp	r7, ip
c0de0262:	7029      	strb	r1, [r5, #0]
c0de0264:	d912      	bls.n	c0de028c <addr_getItem+0x20c>
c0de0266:	fb0c 8102 	mla	r1, ip, r2, r8
c0de026a:	0400      	lsls	r0, r0, #16
c0de026c:	d00b      	beq.n	c0de0286 <addr_getItem+0x206>
c0de026e:	1e78      	subs	r0, r7, #1
c0de0270:	4560      	cmp	r0, ip
c0de0272:	d108      	bne.n	c0de0286 <addr_getItem+0x206>
c0de0274:	4620      	mov	r0, r4
c0de0276:	4632      	mov	r2, r6
c0de0278:	e006      	b.n	c0de0288 <addr_getItem+0x208>
c0de027a:	2005      	movs	r0, #5
c0de027c:	e007      	b.n	c0de028e <addr_getItem+0x20e>
c0de027e:	4630      	mov	r0, r6
c0de0280:	f009 fb72 	bl	c0de9968 <__aeabi_memmove>
c0de0284:	e002      	b.n	c0de028c <addr_getItem+0x20c>
c0de0286:	4620      	mov	r0, r4
c0de0288:	f009 fb6c 	bl	c0de9964 <__aeabi_memcpy>
c0de028c:	2003      	movs	r0, #3
c0de028e:	b04e      	add	sp, #312	; 0x138
c0de0290:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de0294:	00000148 	.word	0x00000148
c0de0298:	4f525245 	.word	0x4f525245
c0de029c:	000001b1 	.word	0x000001b1
c0de02a0:	00009e9d 	.word	0x00009e9d
c0de02a4:	00009fab 	.word	0x00009fab
c0de02a8:	0000997c 	.word	0x0000997c
c0de02ac:	00009a44 	.word	0x00009a44
c0de02b0:	00009954 	.word	0x00009954
c0de02b4:	00009bf6 	.word	0x00009bf6

c0de02b8 <handleApdu>:
c0de02b8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de02bc:	b08c      	sub	sp, #48	; 0x30
c0de02be:	466c      	mov	r4, sp
c0de02c0:	4683      	mov	fp, r0
c0de02c2:	4620      	mov	r0, r4
c0de02c4:	4617      	mov	r7, r2
c0de02c6:	468a      	mov	sl, r1
c0de02c8:	f009 fb9a 	bl	c0de9a00 <setjmp>
c0de02cc:	4605      	mov	r5, r0
c0de02ce:	b280      	uxth	r0, r0
c0de02d0:	f8ad 502c 	strh.w	r5, [sp, #44]	; 0x2c
c0de02d4:	b1a0      	cbz	r0, c0de0300 <handleApdu+0x48>
c0de02d6:	2805      	cmp	r0, #5
c0de02d8:	f000 80d0 	beq.w	c0de047c <handleApdu+0x1c4>
c0de02dc:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de02de:	2100      	movs	r1, #0
c0de02e0:	462e      	mov	r6, r5
c0de02e2:	f8ad 102c 	strh.w	r1, [sp, #44]	; 0x2c
c0de02e6:	f005 fca7 	bl	c0de5c38 <try_context_set>
c0de02ea:	f405 4070 	and.w	r0, r5, #61440	; 0xf000
c0de02ee:	f5b0 4f10 	cmp.w	r0, #36864	; 0x9000
c0de02f2:	d003      	beq.n	c0de02fc <handleApdu+0x44>
c0de02f4:	f5b0 4fc0 	cmp.w	r0, #24576	; 0x6000
c0de02f8:	f040 809e 	bne.w	c0de0438 <handleApdu+0x180>
c0de02fc:	0a28      	lsrs	r0, r5, #8
c0de02fe:	e09f      	b.n	c0de0440 <handleApdu+0x188>
c0de0300:	4668      	mov	r0, sp
c0de0302:	f005 fc99 	bl	c0de5c38 <try_context_set>
c0de0306:	4d8b      	ldr	r5, [pc, #556]	; (c0de0534 <handleApdu+0x27c>)
c0de0308:	4649      	mov	r1, r9
c0de030a:	f819 1005 	ldrb.w	r1, [r9, r5]
c0de030e:	900a      	str	r0, [sp, #40]	; 0x28
c0de0310:	2955      	cmp	r1, #85	; 0x55
c0de0312:	f040 80bc 	bne.w	c0de048e <handleApdu+0x1d6>
c0de0316:	2f04      	cmp	r7, #4
c0de0318:	f240 80bd 	bls.w	c0de0496 <handleApdu+0x1de>
c0de031c:	4648      	mov	r0, r9
c0de031e:	eb09 0005 	add.w	r0, r9, r5
c0de0322:	7840      	ldrb	r0, [r0, #1]
c0de0324:	2802      	cmp	r0, #2
c0de0326:	d03c      	beq.n	c0de03a2 <handleApdu+0xea>
c0de0328:	2804      	cmp	r0, #4
c0de032a:	f040 80b8 	bne.w	c0de049e <handleApdu+0x1e6>
c0de032e:	f005 fc19 	bl	c0de5b64 <os_global_pin_is_validated>
c0de0332:	28aa      	cmp	r0, #170	; 0xaa
c0de0334:	f040 80de 	bne.w	c0de04f4 <handleApdu+0x23c>
c0de0338:	2105      	movs	r1, #5
c0de033a:	4638      	mov	r0, r7
c0de033c:	f002 fc08 	bl	c0de2b50 <extractHRP>
c0de0340:	1d81      	adds	r1, r0, #6
c0de0342:	4638      	mov	r0, r7
c0de0344:	f000 fd2e 	bl	c0de0da4 <extractHDPath>
c0de0348:	444d      	add	r5, r9
c0de034a:	f895 8002 	ldrb.w	r8, [r5, #2]
c0de034e:	f44f 7182 	mov.w	r1, #260	; 0x104
c0de0352:	4628      	mov	r0, r5
c0de0354:	464e      	mov	r6, r9
c0de0356:	f009 fb0e 	bl	c0de9976 <explicit_bzero>
c0de035a:	4f77      	ldr	r7, [pc, #476]	; (c0de0538 <handleApdu+0x280>)
c0de035c:	2000      	movs	r0, #0
c0de035e:	f829 0007 	strh.w	r0, [r9, r7]
c0de0362:	eb09 0207 	add.w	r2, r9, r7
c0de0366:	f44f 7181 	mov.w	r1, #258	; 0x102
c0de036a:	4628      	mov	r0, r5
c0de036c:	f002 fc36 	bl	c0de2bdc <crypto_fillAddress>
c0de0370:	2803      	cmp	r0, #3
c0de0372:	f040 80c3 	bne.w	c0de04fc <handleApdu+0x244>
c0de0376:	5bf0      	ldrh	r0, [r6, r7]
c0de0378:	2800      	cmp	r0, #0
c0de037a:	f000 80bf 	beq.w	c0de04fc <handleApdu+0x244>
c0de037e:	f1b8 0f00 	cmp.w	r8, #0
c0de0382:	f000 80b1 	beq.w	c0de04e8 <handleApdu+0x230>
c0de0386:	486f      	ldr	r0, [pc, #444]	; (c0de0544 <handleApdu+0x28c>)
c0de0388:	496f      	ldr	r1, [pc, #444]	; (c0de0548 <handleApdu+0x290>)
c0de038a:	4a70      	ldr	r2, [pc, #448]	; (c0de054c <handleApdu+0x294>)
c0de038c:	4478      	add	r0, pc
c0de038e:	4479      	add	r1, pc
c0de0390:	447a      	add	r2, pc
c0de0392:	f008 fdc3 	bl	c0de8f1c <view_review_init>
c0de0396:	2001      	movs	r0, #1
c0de0398:	f008 fdd2 	bl	c0de8f40 <view_review_show>
c0de039c:	f8db 0000 	ldr.w	r0, [fp]
c0de03a0:	e045      	b.n	c0de042e <handleApdu+0x176>
c0de03a2:	f005 fbdf 	bl	c0de5b64 <os_global_pin_is_validated>
c0de03a6:	28aa      	cmp	r0, #170	; 0xaa
c0de03a8:	f040 80a4 	bne.w	c0de04f4 <handleApdu+0x23c>
c0de03ac:	4650      	mov	r0, sl
c0de03ae:	4639      	mov	r1, r7
c0de03b0:	f000 fd38 	bl	c0de0e24 <process_chunk>
c0de03b4:	2800      	cmp	r0, #0
c0de03b6:	f000 8099 	beq.w	c0de04ec <handleApdu+0x234>
c0de03ba:	462c      	mov	r4, r5
c0de03bc:	444d      	add	r5, r9
c0de03be:	78ef      	ldrb	r7, [r5, #3]
c0de03c0:	f44f 7182 	mov.w	r1, #260	; 0x104
c0de03c4:	4628      	mov	r0, r5
c0de03c6:	464e      	mov	r6, r9
c0de03c8:	f009 fad5 	bl	c0de9976 <explicit_bzero>
c0de03cc:	f8df 8168 	ldr.w	r8, [pc, #360]	; c0de0538 <handleApdu+0x280>
c0de03d0:	2000      	movs	r0, #0
c0de03d2:	f829 0008 	strh.w	r0, [r9, r8]
c0de03d6:	eb09 0208 	add.w	r2, r9, r8
c0de03da:	f44f 7181 	mov.w	r1, #258	; 0x102
c0de03de:	4628      	mov	r0, r5
c0de03e0:	f002 fbfc 	bl	c0de2bdc <crypto_fillAddress>
c0de03e4:	2803      	cmp	r0, #3
c0de03e6:	f040 8089 	bne.w	c0de04fc <handleApdu+0x244>
c0de03ea:	f836 0008 	ldrh.w	r0, [r6, r8]
c0de03ee:	2800      	cmp	r0, #0
c0de03f0:	f000 8084 	beq.w	c0de04fc <handleApdu+0x244>
c0de03f4:	4a51      	ldr	r2, [pc, #324]	; (c0de053c <handleApdu+0x284>)
c0de03f6:	eb09 0104 	add.w	r1, r9, r4
c0de03fa:	4638      	mov	r0, r7
c0de03fc:	444a      	add	r2, r9
c0de03fe:	3121      	adds	r1, #33	; 0x21
c0de0400:	f641 0328 	movw	r3, #6184	; 0x1828
c0de0404:	50d1      	str	r1, [r2, r3]
c0de0406:	f005 fc8b 	bl	c0de5d20 <tx_parse>
c0de040a:	2800      	cmp	r0, #0
c0de040c:	d17a      	bne.n	c0de0504 <handleApdu+0x24c>
c0de040e:	f009 fa97 	bl	c0de9940 <check_app_canary>
c0de0412:	484f      	ldr	r0, [pc, #316]	; (c0de0550 <handleApdu+0x298>)
c0de0414:	494f      	ldr	r1, [pc, #316]	; (c0de0554 <handleApdu+0x29c>)
c0de0416:	4a50      	ldr	r2, [pc, #320]	; (c0de0558 <handleApdu+0x2a0>)
c0de0418:	4478      	add	r0, pc
c0de041a:	4479      	add	r1, pc
c0de041c:	447a      	add	r2, pc
c0de041e:	f008 fd7d 	bl	c0de8f1c <view_review_init>
c0de0422:	2002      	movs	r0, #2
c0de0424:	f008 fd8c 	bl	c0de8f40 <view_review_show>
c0de0428:	f8db 0000 	ldr.w	r0, [fp]
c0de042c:	466c      	mov	r4, sp
c0de042e:	f040 0010 	orr.w	r0, r0, #16
c0de0432:	f8cb 0000 	str.w	r0, [fp]
c0de0436:	e013      	b.n	c0de0460 <handleApdu+0x1a8>
c0de0438:	0a28      	lsrs	r0, r5, #8
c0de043a:	210d      	movs	r1, #13
c0de043c:	f361 00df 	bfi	r0, r1, #3, #29
c0de0440:	4a3c      	ldr	r2, [pc, #240]	; (c0de0534 <handleApdu+0x27c>)
c0de0442:	4649      	mov	r1, r9
c0de0444:	f8da 3000 	ldr.w	r3, [sl]
c0de0448:	eb09 0102 	add.w	r1, r9, r2
c0de044c:	54c8      	strb	r0, [r1, r3]
c0de044e:	f8da 0000 	ldr.w	r0, [sl]
c0de0452:	4408      	add	r0, r1
c0de0454:	7046      	strb	r6, [r0, #1]
c0de0456:	f8da 0000 	ldr.w	r0, [sl]
c0de045a:	3002      	adds	r0, #2
c0de045c:	f8ca 0000 	str.w	r0, [sl]
c0de0460:	f005 fbe0 	bl	c0de5c24 <try_context_get>
c0de0464:	42a0      	cmp	r0, r4
c0de0466:	d102      	bne.n	c0de046e <handleApdu+0x1b6>
c0de0468:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de046a:	f005 fbe5 	bl	c0de5c38 <try_context_set>
c0de046e:	f8bd 002c 	ldrh.w	r0, [sp, #44]	; 0x2c
c0de0472:	2800      	cmp	r0, #0
c0de0474:	d157      	bne.n	c0de0526 <handleApdu+0x26e>
c0de0476:	b00c      	add	sp, #48	; 0x30
c0de0478:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de047c:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de047e:	2100      	movs	r1, #0
c0de0480:	f8ad 102c 	strh.w	r1, [sp, #44]	; 0x2c
c0de0484:	f005 fbd8 	bl	c0de5c38 <try_context_set>
c0de0488:	2005      	movs	r0, #5
c0de048a:	f002 ff8b 	bl	c0de33a4 <os_longjmp>
c0de048e:	f44f 40dc 	mov.w	r0, #28160	; 0x6e00
c0de0492:	f002 ff87 	bl	c0de33a4 <os_longjmp>
c0de0496:	f44f 40ce 	mov.w	r0, #26368	; 0x6700
c0de049a:	f002 ff83 	bl	c0de33a4 <os_longjmp>
c0de049e:	2800      	cmp	r0, #0
c0de04a0:	d143      	bne.n	c0de052a <handleApdu+0x272>
c0de04a2:	4f27      	ldr	r7, [pc, #156]	; (c0de0540 <handleApdu+0x288>)
c0de04a4:	eb09 0205 	add.w	r2, r9, r5
c0de04a8:	2302      	movs	r3, #2
c0de04aa:	eb09 0007 	add.w	r0, r9, r7
c0de04ae:	7053      	strb	r3, [r2, #1]
c0de04b0:	2323      	movs	r3, #35	; 0x23
c0de04b2:	6840      	ldr	r0, [r0, #4]
c0de04b4:	7093      	strb	r3, [r2, #2]
c0de04b6:	2305      	movs	r3, #5
c0de04b8:	70d3      	strb	r3, [r2, #3]
c0de04ba:	f1a0 0397 	sub.w	r3, r0, #151	; 0x97
c0de04be:	fab3 f383 	clz	r3, r3
c0de04c2:	fab0 f080 	clz	r0, r0
c0de04c6:	095b      	lsrs	r3, r3, #5
c0de04c8:	0940      	lsrs	r0, r0, #5
c0de04ca:	4318      	orrs	r0, r3
c0de04cc:	7110      	strb	r0, [r2, #4]
c0de04ce:	2033      	movs	r0, #51	; 0x33
c0de04d0:	7150      	strb	r0, [r2, #5]
c0de04d2:	2010      	movs	r0, #16
c0de04d4:	2100      	movs	r1, #0
c0de04d6:	7190      	strb	r0, [r2, #6]
c0de04d8:	2004      	movs	r0, #4
c0de04da:	f809 1005 	strb.w	r1, [r9, r5]
c0de04de:	71d1      	strb	r1, [r2, #7]
c0de04e0:	7210      	strb	r0, [r2, #8]
c0de04e2:	f8da 0000 	ldr.w	r0, [sl]
c0de04e6:	3009      	adds	r0, #9
c0de04e8:	f8ca 0000 	str.w	r0, [sl]
c0de04ec:	f44f 4010 	mov.w	r0, #36864	; 0x9000
c0de04f0:	f002 ff58 	bl	c0de33a4 <os_longjmp>
c0de04f4:	f646 1086 	movw	r0, #27014	; 0x6986
c0de04f8:	f002 ff54 	bl	c0de33a4 <os_longjmp>
c0de04fc:	f44f 40c8 	mov.w	r0, #25600	; 0x6400
c0de0500:	f002 ff50 	bl	c0de33a4 <os_longjmp>
c0de0504:	4605      	mov	r5, r0
c0de0506:	f009 fa93 	bl	c0de9a30 <strlen>
c0de050a:	4606      	mov	r6, r0
c0de050c:	eb09 0004 	add.w	r0, r9, r4
c0de0510:	4629      	mov	r1, r5
c0de0512:	4632      	mov	r2, r6
c0de0514:	f009 fa28 	bl	c0de9968 <__aeabi_memmove>
c0de0518:	f8da 0000 	ldr.w	r0, [sl]
c0de051c:	4430      	add	r0, r6
c0de051e:	f8ca 0000 	str.w	r0, [sl]
c0de0522:	f646 1084 	movw	r0, #27012	; 0x6984
c0de0526:	f002 ff3d 	bl	c0de33a4 <os_longjmp>
c0de052a:	f44f 40da 	mov.w	r0, #27904	; 0x6d00
c0de052e:	f002 ff39 	bl	c0de33a4 <os_longjmp>
c0de0532:	bf00      	nop
c0de0534:	000001b1 	.word	0x000001b1
c0de0538:	00000000 	.word	0x00000000
c0de053c:	00000338 	.word	0x00000338
c0de0540:	000066c0 	.word	0x000066c0
c0de0544:	fffffcf1 	.word	0xfffffcf1
c0de0548:	fffffccb 	.word	0xfffffccb
c0de054c:	000001c9 	.word	0x000001c9
c0de0550:	00005995 	.word	0x00005995
c0de0554:	00005973 	.word	0x00005973
c0de0558:	00000169 	.word	0x00000169

c0de055c <app_reply_address>:
c0de055c:	4808      	ldr	r0, [pc, #32]	; (c0de0580 <app_reply_address+0x24>)
c0de055e:	4909      	ldr	r1, [pc, #36]	; (c0de0584 <app_reply_address+0x28>)
c0de0560:	f839 0000 	ldrh.w	r0, [r9, r0]
c0de0564:	4449      	add	r1, r9
c0de0566:	b2c2      	uxtb	r2, r0
c0de0568:	2390      	movs	r3, #144	; 0x90
c0de056a:	3002      	adds	r0, #2
c0de056c:	eb01 0c02 	add.w	ip, r1, r2
c0de0570:	548b      	strb	r3, [r1, r2]
c0de0572:	2200      	movs	r2, #0
c0de0574:	b281      	uxth	r1, r0
c0de0576:	2020      	movs	r0, #32
c0de0578:	f88c 2001 	strb.w	r2, [ip, #1]
c0de057c:	f003 b90a 	b.w	c0de3794 <io_exchange>
c0de0580:	00000000 	.word	0x00000000
c0de0584:	000001b1 	.word	0x000001b1

c0de0588 <app_sign>:
c0de0588:	b5b0      	push	{r4, r5, r7, lr}
c0de058a:	b082      	sub	sp, #8
c0de058c:	4d17      	ldr	r5, [pc, #92]	; (c0de05ec <app_sign+0x64>)
c0de058e:	2000      	movs	r0, #0
c0de0590:	eb09 0405 	add.w	r4, r9, r5
c0de0594:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de0598:	4620      	mov	r0, r4
c0de059a:	f44f 7182 	mov.w	r1, #260	; 0x104
c0de059e:	f009 f9ea 	bl	c0de9976 <explicit_bzero>
c0de05a2:	f10d 0206 	add.w	r2, sp, #6
c0de05a6:	4620      	mov	r0, r4
c0de05a8:	f240 1101 	movw	r1, #257	; 0x101
c0de05ac:	f002 fa60 	bl	c0de2a70 <crypto_sign>
c0de05b0:	2803      	cmp	r0, #3
c0de05b2:	d10c      	bne.n	c0de05ce <app_sign+0x46>
c0de05b4:	f8bd 0006 	ldrh.w	r0, [sp, #6]
c0de05b8:	b148      	cbz	r0, c0de05ce <app_sign+0x46>
c0de05ba:	b2c1      	uxtb	r1, r0
c0de05bc:	eb09 0205 	add.w	r2, r9, r5
c0de05c0:	2590      	movs	r5, #144	; 0x90
c0de05c2:	1853      	adds	r3, r2, r1
c0de05c4:	5455      	strb	r5, [r2, r1]
c0de05c6:	2100      	movs	r1, #0
c0de05c8:	3002      	adds	r0, #2
c0de05ca:	7059      	strb	r1, [r3, #1]
c0de05cc:	e007      	b.n	c0de05de <app_sign+0x56>
c0de05ce:	206f      	movs	r0, #111	; 0x6f
c0de05d0:	f809 0005 	strb.w	r0, [r9, r5]
c0de05d4:	eb09 0005 	add.w	r0, r9, r5
c0de05d8:	2101      	movs	r1, #1
c0de05da:	7041      	strb	r1, [r0, #1]
c0de05dc:	2002      	movs	r0, #2
c0de05de:	b281      	uxth	r1, r0
c0de05e0:	2020      	movs	r0, #32
c0de05e2:	f003 f8d7 	bl	c0de3794 <io_exchange>
c0de05e6:	b002      	add	sp, #8
c0de05e8:	bdb0      	pop	{r4, r5, r7, pc}
c0de05ea:	bf00      	nop
c0de05ec:	000001b1 	.word	0x000001b1

c0de05f0 <io_event>:
c0de05f0:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de05f2:	b081      	sub	sp, #4
c0de05f4:	f8df 5760 	ldr.w	r5, [pc, #1888]	; c0de0d58 <io_event+0x768>
c0de05f8:	f819 0005 	ldrb.w	r0, [r9, r5]
c0de05fc:	280c      	cmp	r0, #12
c0de05fe:	dc05      	bgt.n	c0de060c <io_event+0x1c>
c0de0600:	2805      	cmp	r0, #5
c0de0602:	d078      	beq.n	c0de06f6 <io_event+0x106>
c0de0604:	280c      	cmp	r0, #12
c0de0606:	f000 833b 	beq.w	c0de0c80 <io_event+0x690>
c0de060a:	e16a      	b.n	c0de08e2 <io_event+0x2f2>
c0de060c:	280d      	cmp	r0, #13
c0de060e:	f000 80e8 	beq.w	c0de07e2 <io_event+0x1f2>
c0de0612:	280e      	cmp	r0, #14
c0de0614:	f040 8165 	bne.w	c0de08e2 <io_event+0x2f2>
c0de0618:	f8df 6740 	ldr.w	r6, [pc, #1856]	; c0de0d5c <io_event+0x76c>
c0de061c:	2001      	movs	r0, #1
c0de061e:	eb09 0506 	add.w	r5, r9, r6
c0de0622:	f809 0006 	strb.w	r0, [r9, r6]
c0de0626:	2700      	movs	r7, #0
c0de0628:	4628      	mov	r0, r5
c0de062a:	606f      	str	r7, [r5, #4]
c0de062c:	f005 faa6 	bl	c0de5b7c <os_ux>
c0de0630:	2004      	movs	r0, #4
c0de0632:	f005 fb0f 	bl	c0de5c54 <os_sched_last_status>
c0de0636:	2869      	cmp	r0, #105	; 0x69
c0de0638:	6068      	str	r0, [r5, #4]
c0de063a:	f040 81c5 	bne.w	c0de09c8 <io_event+0x3d8>
c0de063e:	f002 ffeb 	bl	c0de3618 <io_seproxyhal_init_ux>
c0de0642:	f002 ffeb 	bl	c0de361c <io_seproxyhal_init_button>
c0de0646:	f8df 4718 	ldr.w	r4, [pc, #1816]	; c0de0d60 <io_event+0x770>
c0de064a:	2004      	movs	r0, #4
c0de064c:	eb09 0504 	add.w	r5, r9, r4
c0de0650:	f8a5 70ca 	strh.w	r7, [r5, #202]	; 0xca
c0de0654:	f005 fafe 	bl	c0de5c54 <os_sched_last_status>
c0de0658:	f8d5 10cc 	ldr.w	r1, [r5, #204]	; 0xcc
c0de065c:	eb09 0206 	add.w	r2, r9, r6
c0de0660:	2900      	cmp	r1, #0
c0de0662:	6050      	str	r0, [r2, #4]
c0de0664:	f000 830c 	beq.w	c0de0c80 <io_event+0x690>
c0de0668:	2800      	cmp	r0, #0
c0de066a:	f000 8309 	beq.w	c0de0c80 <io_event+0x690>
c0de066e:	2897      	cmp	r0, #151	; 0x97
c0de0670:	f000 8306 	beq.w	c0de0c80 <io_event+0x690>
c0de0674:	eb09 0004 	add.w	r0, r9, r4
c0de0678:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de067c:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de0680:	4281      	cmp	r1, r0
c0de0682:	f080 82fd 	bcs.w	c0de0c80 <io_event+0x690>
c0de0686:	f005 fa51 	bl	c0de5b2c <os_perso_isonboarded>
c0de068a:	28aa      	cmp	r0, #170	; 0xaa
c0de068c:	d104      	bne.n	c0de0698 <io_event+0xa8>
c0de068e:	f005 fa69 	bl	c0de5b64 <os_global_pin_is_validated>
c0de0692:	28aa      	cmp	r0, #170	; 0xaa
c0de0694:	f040 82f4 	bne.w	c0de0c80 <io_event+0x690>
c0de0698:	eb09 0104 	add.w	r1, r9, r4
c0de069c:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	; 0xca
c0de06a0:	f891 20d0 	ldrb.w	r2, [r1, #208]	; 0xd0
c0de06a4:	4290      	cmp	r0, r2
c0de06a6:	f080 8189 	bcs.w	c0de09bc <io_event+0x3cc>
c0de06aa:	4601      	mov	r1, r0
c0de06ac:	eb09 0204 	add.w	r2, r9, r4
c0de06b0:	f8d2 30d8 	ldr.w	r3, [r2, #216]	; 0xd8
c0de06b4:	f8d2 20cc 	ldr.w	r2, [r2, #204]	; 0xcc
c0de06b8:	eb02 1040 	add.w	r0, r2, r0, lsl #5
c0de06bc:	b13b      	cbz	r3, c0de06ce <io_event+0xde>
c0de06be:	4798      	blx	r3
c0de06c0:	b160      	cbz	r0, c0de06dc <io_event+0xec>
c0de06c2:	eb09 0104 	add.w	r1, r9, r4
c0de06c6:	f8d1 20cc 	ldr.w	r2, [r1, #204]	; 0xcc
c0de06ca:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	; 0xca
c0de06ce:	b289      	uxth	r1, r1
c0de06d0:	2801      	cmp	r0, #1
c0de06d2:	bf08      	it	eq
c0de06d4:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de06d8:	f008 fde6 	bl	c0de92a8 <io_seproxyhal_display>
c0de06dc:	eb09 0304 	add.w	r3, r9, r4
c0de06e0:	f8b3 00ca 	ldrh.w	r0, [r3, #202]	; 0xca
c0de06e4:	f893 20d0 	ldrb.w	r2, [r3, #208]	; 0xd0
c0de06e8:	1c41      	adds	r1, r0, #1
c0de06ea:	b288      	uxth	r0, r1
c0de06ec:	4290      	cmp	r0, r2
c0de06ee:	f8a3 10ca 	strh.w	r1, [r3, #202]	; 0xca
c0de06f2:	d3db      	bcc.n	c0de06ac <io_event+0xbc>
c0de06f4:	e162      	b.n	c0de09bc <io_event+0x3cc>
c0de06f6:	f8df 6664 	ldr.w	r6, [pc, #1636]	; c0de0d5c <io_event+0x76c>
c0de06fa:	2001      	movs	r0, #1
c0de06fc:	f809 0006 	strb.w	r0, [r9, r6]
c0de0700:	eb09 0406 	add.w	r4, r9, r6
c0de0704:	2000      	movs	r0, #0
c0de0706:	6060      	str	r0, [r4, #4]
c0de0708:	4620      	mov	r0, r4
c0de070a:	f005 fa37 	bl	c0de5b7c <os_ux>
c0de070e:	2004      	movs	r0, #4
c0de0710:	f005 faa0 	bl	c0de5c54 <os_sched_last_status>
c0de0714:	2800      	cmp	r0, #0
c0de0716:	6060      	str	r0, [r4, #4]
c0de0718:	f000 82b2 	beq.w	c0de0c80 <io_event+0x690>
c0de071c:	2897      	cmp	r0, #151	; 0x97
c0de071e:	f000 82af 	beq.w	c0de0c80 <io_event+0x690>
c0de0722:	2869      	cmp	r0, #105	; 0x69
c0de0724:	f040 8205 	bne.w	c0de0b32 <io_event+0x542>
c0de0728:	f002 ff76 	bl	c0de3618 <io_seproxyhal_init_ux>
c0de072c:	f002 ff76 	bl	c0de361c <io_seproxyhal_init_button>
c0de0730:	f8df 462c 	ldr.w	r4, [pc, #1580]	; c0de0d60 <io_event+0x770>
c0de0734:	2000      	movs	r0, #0
c0de0736:	eb09 0504 	add.w	r5, r9, r4
c0de073a:	f8a5 00ca 	strh.w	r0, [r5, #202]	; 0xca
c0de073e:	2004      	movs	r0, #4
c0de0740:	f005 fa88 	bl	c0de5c54 <os_sched_last_status>
c0de0744:	f8d5 10cc 	ldr.w	r1, [r5, #204]	; 0xcc
c0de0748:	eb09 0206 	add.w	r2, r9, r6
c0de074c:	2900      	cmp	r1, #0
c0de074e:	6050      	str	r0, [r2, #4]
c0de0750:	f000 8296 	beq.w	c0de0c80 <io_event+0x690>
c0de0754:	2800      	cmp	r0, #0
c0de0756:	f000 8293 	beq.w	c0de0c80 <io_event+0x690>
c0de075a:	2897      	cmp	r0, #151	; 0x97
c0de075c:	f000 8290 	beq.w	c0de0c80 <io_event+0x690>
c0de0760:	eb09 0004 	add.w	r0, r9, r4
c0de0764:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de0768:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de076c:	4281      	cmp	r1, r0
c0de076e:	f080 8287 	bcs.w	c0de0c80 <io_event+0x690>
c0de0772:	f005 f9db 	bl	c0de5b2c <os_perso_isonboarded>
c0de0776:	28aa      	cmp	r0, #170	; 0xaa
c0de0778:	d104      	bne.n	c0de0784 <io_event+0x194>
c0de077a:	f005 f9f3 	bl	c0de5b64 <os_global_pin_is_validated>
c0de077e:	28aa      	cmp	r0, #170	; 0xaa
c0de0780:	f040 827e 	bne.w	c0de0c80 <io_event+0x690>
c0de0784:	eb09 0104 	add.w	r1, r9, r4
c0de0788:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	; 0xca
c0de078c:	f891 20d0 	ldrb.w	r2, [r1, #208]	; 0xd0
c0de0790:	4290      	cmp	r0, r2
c0de0792:	f080 8113 	bcs.w	c0de09bc <io_event+0x3cc>
c0de0796:	4601      	mov	r1, r0
c0de0798:	eb09 0204 	add.w	r2, r9, r4
c0de079c:	f8d2 30d8 	ldr.w	r3, [r2, #216]	; 0xd8
c0de07a0:	f8d2 20cc 	ldr.w	r2, [r2, #204]	; 0xcc
c0de07a4:	eb02 1040 	add.w	r0, r2, r0, lsl #5
c0de07a8:	b13b      	cbz	r3, c0de07ba <io_event+0x1ca>
c0de07aa:	4798      	blx	r3
c0de07ac:	b160      	cbz	r0, c0de07c8 <io_event+0x1d8>
c0de07ae:	eb09 0104 	add.w	r1, r9, r4
c0de07b2:	f8d1 20cc 	ldr.w	r2, [r1, #204]	; 0xcc
c0de07b6:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	; 0xca
c0de07ba:	b289      	uxth	r1, r1
c0de07bc:	2801      	cmp	r0, #1
c0de07be:	bf08      	it	eq
c0de07c0:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de07c4:	f008 fd70 	bl	c0de92a8 <io_seproxyhal_display>
c0de07c8:	eb09 0304 	add.w	r3, r9, r4
c0de07cc:	f8b3 00ca 	ldrh.w	r0, [r3, #202]	; 0xca
c0de07d0:	f893 20d0 	ldrb.w	r2, [r3, #208]	; 0xd0
c0de07d4:	1c41      	adds	r1, r0, #1
c0de07d6:	b288      	uxth	r0, r1
c0de07d8:	4290      	cmp	r0, r2
c0de07da:	f8a3 10ca 	strh.w	r1, [r3, #202]	; 0xca
c0de07de:	d3db      	bcc.n	c0de0798 <io_event+0x1a8>
c0de07e0:	e0ec      	b.n	c0de09bc <io_event+0x3cc>
c0de07e2:	f8df 557c 	ldr.w	r5, [pc, #1404]	; c0de0d60 <io_event+0x770>
c0de07e6:	eb09 0005 	add.w	r0, r9, r5
c0de07ea:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de07ee:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de07f2:	4281      	cmp	r1, r0
c0de07f4:	d204      	bcs.n	c0de0800 <io_event+0x210>
c0de07f6:	f8df 0564 	ldr.w	r0, [pc, #1380]	; c0de0d5c <io_event+0x76c>
c0de07fa:	2101      	movs	r1, #1
c0de07fc:	f809 1000 	strb.w	r1, [r9, r0]
c0de0800:	f8df 6558 	ldr.w	r6, [pc, #1368]	; c0de0d5c <io_event+0x76c>
c0de0804:	2000      	movs	r0, #0
c0de0806:	eb09 0406 	add.w	r4, r9, r6
c0de080a:	6060      	str	r0, [r4, #4]
c0de080c:	4620      	mov	r0, r4
c0de080e:	f005 f9b5 	bl	c0de5b7c <os_ux>
c0de0812:	2004      	movs	r0, #4
c0de0814:	f005 fa1e 	bl	c0de5c54 <os_sched_last_status>
c0de0818:	2800      	cmp	r0, #0
c0de081a:	6060      	str	r0, [r4, #4]
c0de081c:	f000 8230 	beq.w	c0de0c80 <io_event+0x690>
c0de0820:	2897      	cmp	r0, #151	; 0x97
c0de0822:	f000 822d 	beq.w	c0de0c80 <io_event+0x690>
c0de0826:	2869      	cmp	r0, #105	; 0x69
c0de0828:	f040 81d9 	bne.w	c0de0bde <io_event+0x5ee>
c0de082c:	f002 fef4 	bl	c0de3618 <io_seproxyhal_init_ux>
c0de0830:	f002 fef4 	bl	c0de361c <io_seproxyhal_init_button>
c0de0834:	eb09 0405 	add.w	r4, r9, r5
c0de0838:	2000      	movs	r0, #0
c0de083a:	f8a4 00ca 	strh.w	r0, [r4, #202]	; 0xca
c0de083e:	2004      	movs	r0, #4
c0de0840:	f005 fa08 	bl	c0de5c54 <os_sched_last_status>
c0de0844:	f8d4 10cc 	ldr.w	r1, [r4, #204]	; 0xcc
c0de0848:	eb09 0206 	add.w	r2, r9, r6
c0de084c:	2900      	cmp	r1, #0
c0de084e:	6050      	str	r0, [r2, #4]
c0de0850:	f000 8216 	beq.w	c0de0c80 <io_event+0x690>
c0de0854:	2800      	cmp	r0, #0
c0de0856:	f000 8213 	beq.w	c0de0c80 <io_event+0x690>
c0de085a:	2897      	cmp	r0, #151	; 0x97
c0de085c:	f000 8210 	beq.w	c0de0c80 <io_event+0x690>
c0de0860:	eb09 0005 	add.w	r0, r9, r5
c0de0864:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de0868:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de086c:	4281      	cmp	r1, r0
c0de086e:	f080 8207 	bcs.w	c0de0c80 <io_event+0x690>
c0de0872:	f005 f95b 	bl	c0de5b2c <os_perso_isonboarded>
c0de0876:	28aa      	cmp	r0, #170	; 0xaa
c0de0878:	d104      	bne.n	c0de0884 <io_event+0x294>
c0de087a:	f005 f973 	bl	c0de5b64 <os_global_pin_is_validated>
c0de087e:	28aa      	cmp	r0, #170	; 0xaa
c0de0880:	f040 81fe 	bne.w	c0de0c80 <io_event+0x690>
c0de0884:	eb09 0105 	add.w	r1, r9, r5
c0de0888:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	; 0xca
c0de088c:	f891 20d0 	ldrb.w	r2, [r1, #208]	; 0xd0
c0de0890:	4290      	cmp	r0, r2
c0de0892:	f080 8093 	bcs.w	c0de09bc <io_event+0x3cc>
c0de0896:	4601      	mov	r1, r0
c0de0898:	eb09 0205 	add.w	r2, r9, r5
c0de089c:	f8d2 30d8 	ldr.w	r3, [r2, #216]	; 0xd8
c0de08a0:	f8d2 20cc 	ldr.w	r2, [r2, #204]	; 0xcc
c0de08a4:	eb02 1040 	add.w	r0, r2, r0, lsl #5
c0de08a8:	b13b      	cbz	r3, c0de08ba <io_event+0x2ca>
c0de08aa:	4798      	blx	r3
c0de08ac:	b160      	cbz	r0, c0de08c8 <io_event+0x2d8>
c0de08ae:	eb09 0105 	add.w	r1, r9, r5
c0de08b2:	f8d1 20cc 	ldr.w	r2, [r1, #204]	; 0xcc
c0de08b6:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	; 0xca
c0de08ba:	b289      	uxth	r1, r1
c0de08bc:	2801      	cmp	r0, #1
c0de08be:	bf08      	it	eq
c0de08c0:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de08c4:	f008 fcf0 	bl	c0de92a8 <io_seproxyhal_display>
c0de08c8:	eb09 0305 	add.w	r3, r9, r5
c0de08cc:	f8b3 00ca 	ldrh.w	r0, [r3, #202]	; 0xca
c0de08d0:	f893 20d0 	ldrb.w	r2, [r3, #208]	; 0xd0
c0de08d4:	1c41      	adds	r1, r0, #1
c0de08d6:	b288      	uxth	r0, r1
c0de08d8:	4290      	cmp	r0, r2
c0de08da:	f8a3 10ca 	strh.w	r1, [r3, #202]	; 0xca
c0de08de:	d3db      	bcc.n	c0de0898 <io_event+0x2a8>
c0de08e0:	e06c      	b.n	c0de09bc <io_event+0x3cc>
c0de08e2:	f8df 5478 	ldr.w	r5, [pc, #1144]	; c0de0d5c <io_event+0x76c>
c0de08e6:	2001      	movs	r0, #1
c0de08e8:	eb09 0405 	add.w	r4, r9, r5
c0de08ec:	f809 0005 	strb.w	r0, [r9, r5]
c0de08f0:	2600      	movs	r6, #0
c0de08f2:	4620      	mov	r0, r4
c0de08f4:	6066      	str	r6, [r4, #4]
c0de08f6:	f005 f941 	bl	c0de5b7c <os_ux>
c0de08fa:	2004      	movs	r0, #4
c0de08fc:	f005 f9aa 	bl	c0de5c54 <os_sched_last_status>
c0de0900:	2869      	cmp	r0, #105	; 0x69
c0de0902:	6060      	str	r0, [r4, #4]
c0de0904:	f040 80cd 	bne.w	c0de0aa2 <io_event+0x4b2>
c0de0908:	f002 fe86 	bl	c0de3618 <io_seproxyhal_init_ux>
c0de090c:	f002 fe86 	bl	c0de361c <io_seproxyhal_init_button>
c0de0910:	f8df 444c 	ldr.w	r4, [pc, #1100]	; c0de0d60 <io_event+0x770>
c0de0914:	2004      	movs	r0, #4
c0de0916:	eb09 0704 	add.w	r7, r9, r4
c0de091a:	f8a7 60ca 	strh.w	r6, [r7, #202]	; 0xca
c0de091e:	f005 f999 	bl	c0de5c54 <os_sched_last_status>
c0de0922:	f8d7 10cc 	ldr.w	r1, [r7, #204]	; 0xcc
c0de0926:	eb09 0205 	add.w	r2, r9, r5
c0de092a:	2900      	cmp	r1, #0
c0de092c:	6050      	str	r0, [r2, #4]
c0de092e:	f000 81a7 	beq.w	c0de0c80 <io_event+0x690>
c0de0932:	2800      	cmp	r0, #0
c0de0934:	f000 81a4 	beq.w	c0de0c80 <io_event+0x690>
c0de0938:	2897      	cmp	r0, #151	; 0x97
c0de093a:	f000 81a1 	beq.w	c0de0c80 <io_event+0x690>
c0de093e:	eb09 0004 	add.w	r0, r9, r4
c0de0942:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de0946:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de094a:	4281      	cmp	r1, r0
c0de094c:	f080 8198 	bcs.w	c0de0c80 <io_event+0x690>
c0de0950:	f005 f8ec 	bl	c0de5b2c <os_perso_isonboarded>
c0de0954:	28aa      	cmp	r0, #170	; 0xaa
c0de0956:	d104      	bne.n	c0de0962 <io_event+0x372>
c0de0958:	f005 f904 	bl	c0de5b64 <os_global_pin_is_validated>
c0de095c:	28aa      	cmp	r0, #170	; 0xaa
c0de095e:	f040 818f 	bne.w	c0de0c80 <io_event+0x690>
c0de0962:	eb09 0104 	add.w	r1, r9, r4
c0de0966:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	; 0xca
c0de096a:	f891 20d0 	ldrb.w	r2, [r1, #208]	; 0xd0
c0de096e:	4290      	cmp	r0, r2
c0de0970:	d224      	bcs.n	c0de09bc <io_event+0x3cc>
c0de0972:	4601      	mov	r1, r0
c0de0974:	eb09 0204 	add.w	r2, r9, r4
c0de0978:	f8d2 30d8 	ldr.w	r3, [r2, #216]	; 0xd8
c0de097c:	f8d2 20cc 	ldr.w	r2, [r2, #204]	; 0xcc
c0de0980:	eb02 1040 	add.w	r0, r2, r0, lsl #5
c0de0984:	b13b      	cbz	r3, c0de0996 <io_event+0x3a6>
c0de0986:	4798      	blx	r3
c0de0988:	b160      	cbz	r0, c0de09a4 <io_event+0x3b4>
c0de098a:	eb09 0104 	add.w	r1, r9, r4
c0de098e:	f8d1 20cc 	ldr.w	r2, [r1, #204]	; 0xcc
c0de0992:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	; 0xca
c0de0996:	b289      	uxth	r1, r1
c0de0998:	2801      	cmp	r0, #1
c0de099a:	bf08      	it	eq
c0de099c:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de09a0:	f008 fc82 	bl	c0de92a8 <io_seproxyhal_display>
c0de09a4:	eb09 0304 	add.w	r3, r9, r4
c0de09a8:	f8b3 00ca 	ldrh.w	r0, [r3, #202]	; 0xca
c0de09ac:	f893 20d0 	ldrb.w	r2, [r3, #208]	; 0xd0
c0de09b0:	1c41      	adds	r1, r0, #1
c0de09b2:	b288      	uxth	r0, r1
c0de09b4:	4290      	cmp	r0, r2
c0de09b6:	f8a3 10ca 	strh.w	r1, [r3, #202]	; 0xca
c0de09ba:	d3db      	bcc.n	c0de0974 <io_event+0x384>
c0de09bc:	4290      	cmp	r0, r2
c0de09be:	f040 815f 	bne.w	c0de0c80 <io_event+0x690>
c0de09c2:	f005 f955 	bl	c0de5c70 <screen_update>
c0de09c6:	e15b      	b.n	c0de0c80 <io_event+0x690>
c0de09c8:	f8df 5394 	ldr.w	r5, [pc, #916]	; c0de0d60 <io_event+0x770>
c0de09cc:	4604      	mov	r4, r0
c0de09ce:	eb09 0005 	add.w	r0, r9, r5
c0de09d2:	f8d0 00e4 	ldr.w	r0, [r0, #228]	; 0xe4
c0de09d6:	b1b0      	cbz	r0, c0de0a06 <io_event+0x416>
c0de09d8:	3864      	subs	r0, #100	; 0x64
c0de09da:	eb09 0105 	add.w	r1, r9, r5
c0de09de:	bf38      	it	cc
c0de09e0:	2000      	movcc	r0, #0
c0de09e2:	f8c1 00e4 	str.w	r0, [r1, #228]	; 0xe4
c0de09e6:	d80e      	bhi.n	c0de0a06 <io_event+0x416>
c0de09e8:	eb09 0005 	add.w	r0, r9, r5
c0de09ec:	f8d0 10e0 	ldr.w	r1, [r0, #224]	; 0xe0
c0de09f0:	2900      	cmp	r1, #0
c0de09f2:	f000 814d 	beq.w	c0de0c90 <io_event+0x6a0>
c0de09f6:	eb09 0005 	add.w	r0, r9, r5
c0de09fa:	f8d0 20e8 	ldr.w	r2, [r0, #232]	; 0xe8
c0de09fe:	f8c0 20e4 	str.w	r2, [r0, #228]	; 0xe4
c0de0a02:	2000      	movs	r0, #0
c0de0a04:	4788      	blx	r1
c0de0a06:	2c00      	cmp	r4, #0
c0de0a08:	f000 813a 	beq.w	c0de0c80 <io_event+0x690>
c0de0a0c:	2c97      	cmp	r4, #151	; 0x97
c0de0a0e:	f000 8137 	beq.w	c0de0c80 <io_event+0x690>
c0de0a12:	eb09 0005 	add.w	r0, r9, r5
c0de0a16:	f8d0 00cc 	ldr.w	r0, [r0, #204]	; 0xcc
c0de0a1a:	2800      	cmp	r0, #0
c0de0a1c:	f000 8126 	beq.w	c0de0c6c <io_event+0x67c>
c0de0a20:	eb09 0005 	add.w	r0, r9, r5
c0de0a24:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de0a28:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de0a2c:	4281      	cmp	r1, r0
c0de0a2e:	f080 811d 	bcs.w	c0de0c6c <io_event+0x67c>
c0de0a32:	f005 f87b 	bl	c0de5b2c <os_perso_isonboarded>
c0de0a36:	28aa      	cmp	r0, #170	; 0xaa
c0de0a38:	d104      	bne.n	c0de0a44 <io_event+0x454>
c0de0a3a:	f005 f893 	bl	c0de5b64 <os_global_pin_is_validated>
c0de0a3e:	28aa      	cmp	r0, #170	; 0xaa
c0de0a40:	f040 8114 	bne.w	c0de0c6c <io_event+0x67c>
c0de0a44:	eb09 0105 	add.w	r1, r9, r5
c0de0a48:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	; 0xca
c0de0a4c:	f891 20d0 	ldrb.w	r2, [r1, #208]	; 0xd0
c0de0a50:	4290      	cmp	r0, r2
c0de0a52:	f080 8107 	bcs.w	c0de0c64 <io_event+0x674>
c0de0a56:	4601      	mov	r1, r0
c0de0a58:	eb09 0205 	add.w	r2, r9, r5
c0de0a5c:	f8d2 30d8 	ldr.w	r3, [r2, #216]	; 0xd8
c0de0a60:	f8d2 20cc 	ldr.w	r2, [r2, #204]	; 0xcc
c0de0a64:	eb02 1040 	add.w	r0, r2, r0, lsl #5
c0de0a68:	b13b      	cbz	r3, c0de0a7a <io_event+0x48a>
c0de0a6a:	4798      	blx	r3
c0de0a6c:	b160      	cbz	r0, c0de0a88 <io_event+0x498>
c0de0a6e:	eb09 0105 	add.w	r1, r9, r5
c0de0a72:	f8d1 20cc 	ldr.w	r2, [r1, #204]	; 0xcc
c0de0a76:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	; 0xca
c0de0a7a:	b289      	uxth	r1, r1
c0de0a7c:	2801      	cmp	r0, #1
c0de0a7e:	bf08      	it	eq
c0de0a80:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de0a84:	f008 fc10 	bl	c0de92a8 <io_seproxyhal_display>
c0de0a88:	eb09 0305 	add.w	r3, r9, r5
c0de0a8c:	f8b3 00ca 	ldrh.w	r0, [r3, #202]	; 0xca
c0de0a90:	f893 20d0 	ldrb.w	r2, [r3, #208]	; 0xd0
c0de0a94:	1c41      	adds	r1, r0, #1
c0de0a96:	b288      	uxth	r0, r1
c0de0a98:	4290      	cmp	r0, r2
c0de0a9a:	f8a3 10ca 	strh.w	r1, [r3, #202]	; 0xca
c0de0a9e:	d3db      	bcc.n	c0de0a58 <io_event+0x468>
c0de0aa0:	e0e0      	b.n	c0de0c64 <io_event+0x674>
c0de0aa2:	4caf      	ldr	r4, [pc, #700]	; (c0de0d60 <io_event+0x770>)
c0de0aa4:	eb09 0004 	add.w	r0, r9, r4
c0de0aa8:	f8d0 00cc 	ldr.w	r0, [r0, #204]	; 0xcc
c0de0aac:	2800      	cmp	r0, #0
c0de0aae:	f000 8093 	beq.w	c0de0bd8 <io_event+0x5e8>
c0de0ab2:	eb09 0004 	add.w	r0, r9, r4
c0de0ab6:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de0aba:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de0abe:	4281      	cmp	r1, r0
c0de0ac0:	f080 808a 	bcs.w	c0de0bd8 <io_event+0x5e8>
c0de0ac4:	f005 f832 	bl	c0de5b2c <os_perso_isonboarded>
c0de0ac8:	28aa      	cmp	r0, #170	; 0xaa
c0de0aca:	d104      	bne.n	c0de0ad6 <io_event+0x4e6>
c0de0acc:	f005 f84a 	bl	c0de5b64 <os_global_pin_is_validated>
c0de0ad0:	28aa      	cmp	r0, #170	; 0xaa
c0de0ad2:	f040 8081 	bne.w	c0de0bd8 <io_event+0x5e8>
c0de0ad6:	eb09 0104 	add.w	r1, r9, r4
c0de0ada:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	; 0xca
c0de0ade:	f891 20d0 	ldrb.w	r2, [r1, #208]	; 0xd0
c0de0ae2:	4290      	cmp	r0, r2
c0de0ae4:	d274      	bcs.n	c0de0bd0 <io_event+0x5e0>
c0de0ae6:	4601      	mov	r1, r0
c0de0ae8:	eb09 0204 	add.w	r2, r9, r4
c0de0aec:	f8d2 30d8 	ldr.w	r3, [r2, #216]	; 0xd8
c0de0af0:	f8d2 20cc 	ldr.w	r2, [r2, #204]	; 0xcc
c0de0af4:	eb02 1040 	add.w	r0, r2, r0, lsl #5
c0de0af8:	b13b      	cbz	r3, c0de0b0a <io_event+0x51a>
c0de0afa:	4798      	blx	r3
c0de0afc:	b160      	cbz	r0, c0de0b18 <io_event+0x528>
c0de0afe:	eb09 0104 	add.w	r1, r9, r4
c0de0b02:	f8d1 20cc 	ldr.w	r2, [r1, #204]	; 0xcc
c0de0b06:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	; 0xca
c0de0b0a:	b289      	uxth	r1, r1
c0de0b0c:	2801      	cmp	r0, #1
c0de0b0e:	bf08      	it	eq
c0de0b10:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de0b14:	f008 fbc8 	bl	c0de92a8 <io_seproxyhal_display>
c0de0b18:	eb09 0304 	add.w	r3, r9, r4
c0de0b1c:	f8b3 00ca 	ldrh.w	r0, [r3, #202]	; 0xca
c0de0b20:	f893 20d0 	ldrb.w	r2, [r3, #208]	; 0xd0
c0de0b24:	1c41      	adds	r1, r0, #1
c0de0b26:	b288      	uxth	r0, r1
c0de0b28:	4290      	cmp	r0, r2
c0de0b2a:	f8a3 10ca 	strh.w	r1, [r3, #202]	; 0xca
c0de0b2e:	d3db      	bcc.n	c0de0ae8 <io_event+0x4f8>
c0de0b30:	e04e      	b.n	c0de0bd0 <io_event+0x5e0>
c0de0b32:	4c8b      	ldr	r4, [pc, #556]	; (c0de0d60 <io_event+0x770>)
c0de0b34:	eb09 0004 	add.w	r0, r9, r4
c0de0b38:	f8d0 00dc 	ldr.w	r0, [r0, #220]	; 0xdc
c0de0b3c:	b128      	cbz	r0, c0de0b4a <io_event+0x55a>
c0de0b3e:	eb09 0105 	add.w	r1, r9, r5
c0de0b42:	78c9      	ldrb	r1, [r1, #3]
c0de0b44:	0849      	lsrs	r1, r1, #1
c0de0b46:	f002 fdb9 	bl	c0de36bc <io_seproxyhal_button_push>
c0de0b4a:	eb09 0004 	add.w	r0, r9, r4
c0de0b4e:	f8d0 00cc 	ldr.w	r0, [r0, #204]	; 0xcc
c0de0b52:	2800      	cmp	r0, #0
c0de0b54:	d040      	beq.n	c0de0bd8 <io_event+0x5e8>
c0de0b56:	eb09 0004 	add.w	r0, r9, r4
c0de0b5a:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de0b5e:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de0b62:	4281      	cmp	r1, r0
c0de0b64:	d238      	bcs.n	c0de0bd8 <io_event+0x5e8>
c0de0b66:	f004 ffe1 	bl	c0de5b2c <os_perso_isonboarded>
c0de0b6a:	28aa      	cmp	r0, #170	; 0xaa
c0de0b6c:	d103      	bne.n	c0de0b76 <io_event+0x586>
c0de0b6e:	f004 fff9 	bl	c0de5b64 <os_global_pin_is_validated>
c0de0b72:	28aa      	cmp	r0, #170	; 0xaa
c0de0b74:	d130      	bne.n	c0de0bd8 <io_event+0x5e8>
c0de0b76:	eb09 0104 	add.w	r1, r9, r4
c0de0b7a:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	; 0xca
c0de0b7e:	f891 20d0 	ldrb.w	r2, [r1, #208]	; 0xd0
c0de0b82:	4290      	cmp	r0, r2
c0de0b84:	d224      	bcs.n	c0de0bd0 <io_event+0x5e0>
c0de0b86:	4601      	mov	r1, r0
c0de0b88:	eb09 0204 	add.w	r2, r9, r4
c0de0b8c:	f8d2 30d8 	ldr.w	r3, [r2, #216]	; 0xd8
c0de0b90:	f8d2 20cc 	ldr.w	r2, [r2, #204]	; 0xcc
c0de0b94:	eb02 1040 	add.w	r0, r2, r0, lsl #5
c0de0b98:	b13b      	cbz	r3, c0de0baa <io_event+0x5ba>
c0de0b9a:	4798      	blx	r3
c0de0b9c:	b160      	cbz	r0, c0de0bb8 <io_event+0x5c8>
c0de0b9e:	eb09 0104 	add.w	r1, r9, r4
c0de0ba2:	f8d1 20cc 	ldr.w	r2, [r1, #204]	; 0xcc
c0de0ba6:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	; 0xca
c0de0baa:	b289      	uxth	r1, r1
c0de0bac:	2801      	cmp	r0, #1
c0de0bae:	bf08      	it	eq
c0de0bb0:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de0bb4:	f008 fb78 	bl	c0de92a8 <io_seproxyhal_display>
c0de0bb8:	eb09 0304 	add.w	r3, r9, r4
c0de0bbc:	f8b3 00ca 	ldrh.w	r0, [r3, #202]	; 0xca
c0de0bc0:	f893 20d0 	ldrb.w	r2, [r3, #208]	; 0xd0
c0de0bc4:	1c41      	adds	r1, r0, #1
c0de0bc6:	b288      	uxth	r0, r1
c0de0bc8:	4290      	cmp	r0, r2
c0de0bca:	f8a3 10ca 	strh.w	r1, [r3, #202]	; 0xca
c0de0bce:	d3db      	bcc.n	c0de0b88 <io_event+0x598>
c0de0bd0:	4290      	cmp	r0, r2
c0de0bd2:	bf08      	it	eq
c0de0bd4:	f005 f84c 	bleq	c0de5c70 <screen_update>
c0de0bd8:	eb09 0004 	add.w	r0, r9, r4
c0de0bdc:	e048      	b.n	c0de0c70 <io_event+0x680>
c0de0bde:	eb09 0005 	add.w	r0, r9, r5
c0de0be2:	f8d0 00cc 	ldr.w	r0, [r0, #204]	; 0xcc
c0de0be6:	2800      	cmp	r0, #0
c0de0be8:	d040      	beq.n	c0de0c6c <io_event+0x67c>
c0de0bea:	eb09 0005 	add.w	r0, r9, r5
c0de0bee:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de0bf2:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de0bf6:	4281      	cmp	r1, r0
c0de0bf8:	d238      	bcs.n	c0de0c6c <io_event+0x67c>
c0de0bfa:	f004 ff97 	bl	c0de5b2c <os_perso_isonboarded>
c0de0bfe:	28aa      	cmp	r0, #170	; 0xaa
c0de0c00:	d103      	bne.n	c0de0c0a <io_event+0x61a>
c0de0c02:	f004 ffaf 	bl	c0de5b64 <os_global_pin_is_validated>
c0de0c06:	28aa      	cmp	r0, #170	; 0xaa
c0de0c08:	d130      	bne.n	c0de0c6c <io_event+0x67c>
c0de0c0a:	eb09 0105 	add.w	r1, r9, r5
c0de0c0e:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	; 0xca
c0de0c12:	f891 20d0 	ldrb.w	r2, [r1, #208]	; 0xd0
c0de0c16:	4290      	cmp	r0, r2
c0de0c18:	d224      	bcs.n	c0de0c64 <io_event+0x674>
c0de0c1a:	4601      	mov	r1, r0
c0de0c1c:	eb09 0205 	add.w	r2, r9, r5
c0de0c20:	f8d2 30d8 	ldr.w	r3, [r2, #216]	; 0xd8
c0de0c24:	f8d2 20cc 	ldr.w	r2, [r2, #204]	; 0xcc
c0de0c28:	eb02 1040 	add.w	r0, r2, r0, lsl #5
c0de0c2c:	b13b      	cbz	r3, c0de0c3e <io_event+0x64e>
c0de0c2e:	4798      	blx	r3
c0de0c30:	b160      	cbz	r0, c0de0c4c <io_event+0x65c>
c0de0c32:	eb09 0105 	add.w	r1, r9, r5
c0de0c36:	f8d1 20cc 	ldr.w	r2, [r1, #204]	; 0xcc
c0de0c3a:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	; 0xca
c0de0c3e:	b289      	uxth	r1, r1
c0de0c40:	2801      	cmp	r0, #1
c0de0c42:	bf08      	it	eq
c0de0c44:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de0c48:	f008 fb2e 	bl	c0de92a8 <io_seproxyhal_display>
c0de0c4c:	eb09 0305 	add.w	r3, r9, r5
c0de0c50:	f8b3 00ca 	ldrh.w	r0, [r3, #202]	; 0xca
c0de0c54:	f893 20d0 	ldrb.w	r2, [r3, #208]	; 0xd0
c0de0c58:	1c41      	adds	r1, r0, #1
c0de0c5a:	b288      	uxth	r0, r1
c0de0c5c:	4290      	cmp	r0, r2
c0de0c5e:	f8a3 10ca 	strh.w	r1, [r3, #202]	; 0xca
c0de0c62:	d3db      	bcc.n	c0de0c1c <io_event+0x62c>
c0de0c64:	4290      	cmp	r0, r2
c0de0c66:	bf08      	it	eq
c0de0c68:	f005 f802 	bleq	c0de5c70 <screen_update>
c0de0c6c:	eb09 0005 	add.w	r0, r9, r5
c0de0c70:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de0c74:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de0c78:	4281      	cmp	r1, r0
c0de0c7a:	bf28      	it	cs
c0de0c7c:	f004 ffba 	blcs	c0de5bf4 <io_seph_is_status_sent>
c0de0c80:	f004 ffb8 	bl	c0de5bf4 <io_seph_is_status_sent>
c0de0c84:	b908      	cbnz	r0, c0de0c8a <io_event+0x69a>
c0de0c86:	f002 fba3 	bl	c0de33d0 <io_seproxyhal_general_status>
c0de0c8a:	2001      	movs	r0, #1
c0de0c8c:	b001      	add	sp, #4
c0de0c8e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de0c90:	2c00      	cmp	r4, #0
c0de0c92:	d0f5      	beq.n	c0de0c80 <io_event+0x690>
c0de0c94:	2c97      	cmp	r4, #151	; 0x97
c0de0c96:	d0f3      	beq.n	c0de0c80 <io_event+0x690>
c0de0c98:	f002 fcbe 	bl	c0de3618 <io_seproxyhal_init_ux>
c0de0c9c:	f002 fcbe 	bl	c0de361c <io_seproxyhal_init_button>
c0de0ca0:	eb09 0705 	add.w	r7, r9, r5
c0de0ca4:	2000      	movs	r0, #0
c0de0ca6:	f8a7 00ca 	strh.w	r0, [r7, #202]	; 0xca
c0de0caa:	2004      	movs	r0, #4
c0de0cac:	f004 ffd2 	bl	c0de5c54 <os_sched_last_status>
c0de0cb0:	f8d7 10cc 	ldr.w	r1, [r7, #204]	; 0xcc
c0de0cb4:	eb09 0206 	add.w	r2, r9, r6
c0de0cb8:	2900      	cmp	r1, #0
c0de0cba:	6050      	str	r0, [r2, #4]
c0de0cbc:	f43f aea3 	beq.w	c0de0a06 <io_event+0x416>
c0de0cc0:	2800      	cmp	r0, #0
c0de0cc2:	f43f aea0 	beq.w	c0de0a06 <io_event+0x416>
c0de0cc6:	2897      	cmp	r0, #151	; 0x97
c0de0cc8:	f43f ae9d 	beq.w	c0de0a06 <io_event+0x416>
c0de0ccc:	eb09 0005 	add.w	r0, r9, r5
c0de0cd0:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de0cd4:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de0cd8:	4281      	cmp	r1, r0
c0de0cda:	f4bf ae94 	bcs.w	c0de0a06 <io_event+0x416>
c0de0cde:	f004 ff25 	bl	c0de5b2c <os_perso_isonboarded>
c0de0ce2:	28aa      	cmp	r0, #170	; 0xaa
c0de0ce4:	d104      	bne.n	c0de0cf0 <io_event+0x700>
c0de0ce6:	f004 ff3d 	bl	c0de5b64 <os_global_pin_is_validated>
c0de0cea:	28aa      	cmp	r0, #170	; 0xaa
c0de0cec:	f47f ae8b 	bne.w	c0de0a06 <io_event+0x416>
c0de0cf0:	eb09 0105 	add.w	r1, r9, r5
c0de0cf4:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	; 0xca
c0de0cf8:	f891 20d0 	ldrb.w	r2, [r1, #208]	; 0xd0
c0de0cfc:	4290      	cmp	r0, r2
c0de0cfe:	d224      	bcs.n	c0de0d4a <io_event+0x75a>
c0de0d00:	4601      	mov	r1, r0
c0de0d02:	eb09 0205 	add.w	r2, r9, r5
c0de0d06:	f8d2 30d8 	ldr.w	r3, [r2, #216]	; 0xd8
c0de0d0a:	f8d2 20cc 	ldr.w	r2, [r2, #204]	; 0xcc
c0de0d0e:	eb02 1040 	add.w	r0, r2, r0, lsl #5
c0de0d12:	b13b      	cbz	r3, c0de0d24 <io_event+0x734>
c0de0d14:	4798      	blx	r3
c0de0d16:	b160      	cbz	r0, c0de0d32 <io_event+0x742>
c0de0d18:	eb09 0105 	add.w	r1, r9, r5
c0de0d1c:	f8d1 20cc 	ldr.w	r2, [r1, #204]	; 0xcc
c0de0d20:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	; 0xca
c0de0d24:	b289      	uxth	r1, r1
c0de0d26:	2801      	cmp	r0, #1
c0de0d28:	bf08      	it	eq
c0de0d2a:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de0d2e:	f008 fabb 	bl	c0de92a8 <io_seproxyhal_display>
c0de0d32:	eb09 0305 	add.w	r3, r9, r5
c0de0d36:	f8b3 00ca 	ldrh.w	r0, [r3, #202]	; 0xca
c0de0d3a:	f893 20d0 	ldrb.w	r2, [r3, #208]	; 0xd0
c0de0d3e:	1c41      	adds	r1, r0, #1
c0de0d40:	b288      	uxth	r0, r1
c0de0d42:	4290      	cmp	r0, r2
c0de0d44:	f8a3 10ca 	strh.w	r1, [r3, #202]	; 0xca
c0de0d48:	d3db      	bcc.n	c0de0d02 <io_event+0x712>
c0de0d4a:	4290      	cmp	r0, r2
c0de0d4c:	f47f ae5b 	bne.w	c0de0a06 <io_event+0x416>
c0de0d50:	f004 ff8e 	bl	c0de5c70 <screen_update>
c0de0d54:	e657      	b.n	c0de0a06 <io_event+0x416>
c0de0d56:	bf00      	nop
c0de0d58:	00000002 	.word	0x00000002
c0de0d5c:	000066c0 	.word	0x000066c0
c0de0d60:	00006584 	.word	0x00006584

c0de0d64 <io_exchange_al>:
c0de0d64:	b510      	push	{r4, lr}
c0de0d66:	4604      	mov	r4, r0
c0de0d68:	f000 0007 	and.w	r0, r0, #7
c0de0d6c:	2801      	cmp	r0, #1
c0de0d6e:	d00a      	beq.n	c0de0d86 <io_exchange_al+0x22>
c0de0d70:	2802      	cmp	r0, #2
c0de0d72:	d111      	bne.n	c0de0d98 <io_exchange_al+0x34>
c0de0d74:	480a      	ldr	r0, [pc, #40]	; (c0de0da0 <io_exchange_al+0x3c>)
c0de0d76:	4448      	add	r0, r9
c0de0d78:	b139      	cbz	r1, c0de0d8a <io_exchange_al+0x26>
c0de0d7a:	f004 ff2f 	bl	c0de5bdc <io_seph_send>
c0de0d7e:	0620      	lsls	r0, r4, #24
c0de0d80:	bf48      	it	mi
c0de0d82:	f004 febc 	blmi	c0de5afe <halt>
c0de0d86:	2000      	movs	r0, #0
c0de0d88:	bd10      	pop	{r4, pc}
c0de0d8a:	f44f 7182 	mov.w	r1, #260	; 0x104
c0de0d8e:	2200      	movs	r2, #0
c0de0d90:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de0d94:	f004 bf38 	b.w	c0de5c08 <io_seph_recv>
c0de0d98:	2002      	movs	r0, #2
c0de0d9a:	f002 fb03 	bl	c0de33a4 <os_longjmp>
c0de0d9e:	bf00      	nop
c0de0da0:	000001b1 	.word	0x000001b1

c0de0da4 <extractHDPath>:
c0de0da4:	b5b0      	push	{r4, r5, r7, lr}
c0de0da6:	1a40      	subs	r0, r0, r1
c0de0da8:	2813      	cmp	r0, #19
c0de0daa:	d92a      	bls.n	c0de0e02 <extractHDPath+0x5e>
c0de0dac:	4819      	ldr	r0, [pc, #100]	; (c0de0e14 <extractHDPath+0x70>)
c0de0dae:	4d1a      	ldr	r5, [pc, #104]	; (c0de0e18 <extractHDPath+0x74>)
c0de0db0:	4448      	add	r0, r9
c0de0db2:	eb09 0405 	add.w	r4, r9, r5
c0de0db6:	4401      	add	r1, r0
c0de0db8:	4620      	mov	r0, r4
c0de0dba:	2214      	movs	r2, #20
c0de0dbc:	f008 fdd2 	bl	c0de9964 <__aeabi_memcpy>
c0de0dc0:	f859 0005 	ldr.w	r0, [r9, r5]
c0de0dc4:	4915      	ldr	r1, [pc, #84]	; (c0de0e1c <extractHDPath+0x78>)
c0de0dc6:	4288      	cmp	r0, r1
c0de0dc8:	d11f      	bne.n	c0de0e0a <extractHDPath+0x66>
c0de0dca:	6860      	ldr	r0, [r4, #4]
c0de0dcc:	4914      	ldr	r1, [pc, #80]	; (c0de0e20 <extractHDPath+0x7c>)
c0de0dce:	4288      	cmp	r0, r1
c0de0dd0:	d11b      	bne.n	c0de0e0a <extractHDPath+0x66>
c0de0dd2:	68e0      	ldr	r0, [r4, #12]
c0de0dd4:	b9c8      	cbnz	r0, c0de0e0a <extractHDPath+0x66>
c0de0dd6:	f000 f8ed 	bl	c0de0fb4 <app_mode_expert>
c0de0dda:	b968      	cbnz	r0, c0de0df8 <extractHDPath+0x54>
c0de0ddc:	2000      	movs	r0, #0
c0de0dde:	bf00      	nop
c0de0de0:	eb09 0105 	add.w	r1, r9, r5
c0de0de4:	eb01 0180 	add.w	r1, r1, r0, lsl #2
c0de0de8:	6889      	ldr	r1, [r1, #8]
c0de0dea:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
c0de0dee:	2965      	cmp	r1, #101	; 0x65
c0de0df0:	d203      	bcs.n	c0de0dfa <extractHDPath+0x56>
c0de0df2:	3001      	adds	r0, #1
c0de0df4:	2803      	cmp	r0, #3
c0de0df6:	d1f3      	bne.n	c0de0de0 <extractHDPath+0x3c>
c0de0df8:	bdb0      	pop	{r4, r5, r7, pc}
c0de0dfa:	f646 1085 	movw	r0, #27013	; 0x6985
c0de0dfe:	f002 fad1 	bl	c0de33a4 <os_longjmp>
c0de0e02:	f44f 40ce 	mov.w	r0, #26368	; 0x6700
c0de0e06:	f002 facd 	bl	c0de33a4 <os_longjmp>
c0de0e0a:	f646 1084 	movw	r0, #27012	; 0x6984
c0de0e0e:	f002 fac9 	bl	c0de33a4 <os_longjmp>
c0de0e12:	bf00      	nop
c0de0e14:	000001b1 	.word	0x000001b1
c0de0e18:	00000148 	.word	0x00000148
c0de0e1c:	8000002c 	.word	0x8000002c
c0de0e20:	800003de 	.word	0x800003de

c0de0e24 <process_chunk>:
c0de0e24:	b510      	push	{r4, lr}
c0de0e26:	2904      	cmp	r1, #4
c0de0e28:	d92a      	bls.n	c0de0e80 <process_chunk+0x5c>
c0de0e2a:	4819      	ldr	r0, [pc, #100]	; (c0de0e90 <process_chunk+0x6c>)
c0de0e2c:	460c      	mov	r4, r1
c0de0e2e:	eb09 0100 	add.w	r1, r9, r0
c0de0e32:	7889      	ldrb	r1, [r1, #2]
c0de0e34:	2902      	cmp	r1, #2
c0de0e36:	d015      	beq.n	c0de0e64 <process_chunk+0x40>
c0de0e38:	2901      	cmp	r1, #1
c0de0e3a:	d009      	beq.n	c0de0e50 <process_chunk+0x2c>
c0de0e3c:	bb21      	cbnz	r1, c0de0e88 <process_chunk+0x64>
c0de0e3e:	f004 ff4b 	bl	c0de5cd8 <tx_initialize>
c0de0e42:	f004 ff5f 	bl	c0de5d04 <tx_reset>
c0de0e46:	4620      	mov	r0, r4
c0de0e48:	2105      	movs	r1, #5
c0de0e4a:	f7ff ffab 	bl	c0de0da4 <extractHDPath>
c0de0e4e:	e007      	b.n	c0de0e60 <process_chunk+0x3c>
c0de0e50:	3c05      	subs	r4, #5
c0de0e52:	4448      	add	r0, r9
c0de0e54:	3005      	adds	r0, #5
c0de0e56:	4621      	mov	r1, r4
c0de0e58:	f004 ff56 	bl	c0de5d08 <tx_append>
c0de0e5c:	42a0      	cmp	r0, r4
c0de0e5e:	d10b      	bne.n	c0de0e78 <process_chunk+0x54>
c0de0e60:	2000      	movs	r0, #0
c0de0e62:	bd10      	pop	{r4, pc}
c0de0e64:	3c05      	subs	r4, #5
c0de0e66:	4448      	add	r0, r9
c0de0e68:	3005      	adds	r0, #5
c0de0e6a:	4621      	mov	r1, r4
c0de0e6c:	f004 ff4c 	bl	c0de5d08 <tx_append>
c0de0e70:	42a0      	cmp	r0, r4
c0de0e72:	bf04      	itt	eq
c0de0e74:	2001      	moveq	r0, #1
c0de0e76:	bd10      	popeq	{r4, pc}
c0de0e78:	f646 1083 	movw	r0, #27011	; 0x6983
c0de0e7c:	f002 fa92 	bl	c0de33a4 <os_longjmp>
c0de0e80:	f44f 40ce 	mov.w	r0, #26368	; 0x6700
c0de0e84:	f002 fa8e 	bl	c0de33a4 <os_longjmp>
c0de0e88:	f44f 40d6 	mov.w	r0, #27392	; 0x6b00
c0de0e8c:	f002 fa8a 	bl	c0de33a4 <os_longjmp>
c0de0e90:	000001b1 	.word	0x000001b1

c0de0e94 <app_init>:
c0de0e94:	b580      	push	{r7, lr}
c0de0e96:	f002 fba3 	bl	c0de35e0 <io_seproxyhal_init>
c0de0e9a:	2000      	movs	r0, #0
c0de0e9c:	f007 f8a0 	bl	c0de7fe0 <USB_power>
c0de0ea0:	2001      	movs	r0, #1
c0de0ea2:	f007 f89d 	bl	c0de7fe0 <USB_power>
c0de0ea6:	f000 f87b 	bl	c0de0fa0 <app_mode_reset>
c0de0eaa:	2000      	movs	r0, #0
c0de0eac:	2100      	movs	r1, #0
c0de0eae:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de0eb2:	f008 b831 	b.w	c0de8f18 <view_idle_show>
	...

c0de0eb8 <app_main>:
c0de0eb8:	b090      	sub	sp, #64	; 0x40
c0de0eba:	2500      	movs	r5, #0
c0de0ebc:	950f      	str	r5, [sp, #60]	; 0x3c
c0de0ebe:	950e      	str	r5, [sp, #56]	; 0x38
c0de0ec0:	950d      	str	r5, [sp, #52]	; 0x34
c0de0ec2:	f004 ff09 	bl	c0de5cd8 <tx_initialize>
c0de0ec6:	f8df a0d4 	ldr.w	sl, [pc, #212]	; c0de0f9c <app_main+0xe4>
c0de0eca:	466c      	mov	r4, sp
c0de0ecc:	f10d 0834 	add.w	r8, sp, #52	; 0x34
c0de0ed0:	ae0e      	add	r6, sp, #56	; 0x38
c0de0ed2:	f04f 0b0d 	mov.w	fp, #13
c0de0ed6:	bf00      	nop
c0de0ed8:	4620      	mov	r0, r4
c0de0eda:	f8ad 5032 	strh.w	r5, [sp, #50]	; 0x32
c0de0ede:	f008 fd8f 	bl	c0de9a00 <setjmp>
c0de0ee2:	4607      	mov	r7, r0
c0de0ee4:	b280      	uxth	r0, r0
c0de0ee6:	2805      	cmp	r0, #5
c0de0ee8:	f8ad 702c 	strh.w	r7, [sp, #44]	; 0x2c
c0de0eec:	d01c      	beq.n	c0de0f28 <app_main+0x70>
c0de0eee:	bb18      	cbnz	r0, c0de0f38 <app_main+0x80>
c0de0ef0:	4620      	mov	r0, r4
c0de0ef2:	f004 fea1 	bl	c0de5c38 <try_context_set>
c0de0ef6:	900a      	str	r0, [sp, #40]	; 0x28
c0de0ef8:	980e      	ldr	r0, [sp, #56]	; 0x38
c0de0efa:	900f      	str	r0, [sp, #60]	; 0x3c
c0de0efc:	950e      	str	r5, [sp, #56]	; 0x38
c0de0efe:	980d      	ldr	r0, [sp, #52]	; 0x34
c0de0f00:	990f      	ldr	r1, [sp, #60]	; 0x3c
c0de0f02:	b2c0      	uxtb	r0, r0
c0de0f04:	b289      	uxth	r1, r1
c0de0f06:	f002 fc45 	bl	c0de3794 <io_exchange>
c0de0f0a:	900f      	str	r0, [sp, #60]	; 0x3c
c0de0f0c:	950d      	str	r5, [sp, #52]	; 0x34
c0de0f0e:	f008 fd17 	bl	c0de9940 <check_app_canary>
c0de0f12:	980f      	ldr	r0, [sp, #60]	; 0x3c
c0de0f14:	2800      	cmp	r0, #0
c0de0f16:	d03d      	beq.n	c0de0f94 <app_main+0xdc>
c0de0f18:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
c0de0f1a:	4640      	mov	r0, r8
c0de0f1c:	4631      	mov	r1, r6
c0de0f1e:	f7ff f9cb 	bl	c0de02b8 <handleApdu>
c0de0f22:	f008 fd0d 	bl	c0de9940 <check_app_canary>
c0de0f26:	e028      	b.n	c0de0f7a <app_main+0xc2>
c0de0f28:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de0f2a:	f8ad 502c 	strh.w	r5, [sp, #44]	; 0x2c
c0de0f2e:	f004 fe83 	bl	c0de5c38 <try_context_set>
c0de0f32:	f7ff ffaf 	bl	c0de0e94 <app_init>
c0de0f36:	e7cf      	b.n	c0de0ed8 <app_main+0x20>
c0de0f38:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de0f3a:	f8ad 502c 	strh.w	r5, [sp, #44]	; 0x2c
c0de0f3e:	f004 fe7b 	bl	c0de5c38 <try_context_set>
c0de0f42:	f407 4070 	and.w	r0, r7, #61440	; 0xf000
c0de0f46:	f5b0 4f10 	cmp.w	r0, #36864	; 0x9000
c0de0f4a:	d004      	beq.n	c0de0f56 <app_main+0x9e>
c0de0f4c:	f5b0 4fc0 	cmp.w	r0, #24576	; 0x6000
c0de0f50:	bf18      	it	ne
c0de0f52:	f36b 27df 	bfine	r7, fp, #11, #21
c0de0f56:	f8ad 7032 	strh.w	r7, [sp, #50]	; 0x32
c0de0f5a:	f8bd 0032 	ldrh.w	r0, [sp, #50]	; 0x32
c0de0f5e:	4649      	mov	r1, r9
c0de0f60:	9a0e      	ldr	r2, [sp, #56]	; 0x38
c0de0f62:	0a00      	lsrs	r0, r0, #8
c0de0f64:	eb09 010a 	add.w	r1, r9, sl
c0de0f68:	5488      	strb	r0, [r1, r2]
c0de0f6a:	f8bd 0032 	ldrh.w	r0, [sp, #50]	; 0x32
c0de0f6e:	9a0e      	ldr	r2, [sp, #56]	; 0x38
c0de0f70:	4411      	add	r1, r2
c0de0f72:	7048      	strb	r0, [r1, #1]
c0de0f74:	980e      	ldr	r0, [sp, #56]	; 0x38
c0de0f76:	3002      	adds	r0, #2
c0de0f78:	900e      	str	r0, [sp, #56]	; 0x38
c0de0f7a:	f004 fe53 	bl	c0de5c24 <try_context_get>
c0de0f7e:	42a0      	cmp	r0, r4
c0de0f80:	d102      	bne.n	c0de0f88 <app_main+0xd0>
c0de0f82:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de0f84:	f004 fe58 	bl	c0de5c38 <try_context_set>
c0de0f88:	f8bd 002c 	ldrh.w	r0, [sp, #44]	; 0x2c
c0de0f8c:	2800      	cmp	r0, #0
c0de0f8e:	d0a3      	beq.n	c0de0ed8 <app_main+0x20>
c0de0f90:	f002 fa08 	bl	c0de33a4 <os_longjmp>
c0de0f94:	f646 1082 	movw	r0, #27010	; 0x6982
c0de0f98:	f002 fa04 	bl	c0de33a4 <os_longjmp>
c0de0f9c:	000001b1 	.word	0x000001b1

c0de0fa0 <app_mode_reset>:
c0de0fa0:	4803      	ldr	r0, [pc, #12]	; (c0de0fb0 <app_mode_reset+0x10>)
c0de0fa2:	2100      	movs	r1, #0
c0de0fa4:	f809 1000 	strb.w	r1, [r9, r0]
c0de0fa8:	4448      	add	r0, r9
c0de0faa:	7041      	strb	r1, [r0, #1]
c0de0fac:	4770      	bx	lr
c0de0fae:	bf00      	nop
c0de0fb0:	0000012e 	.word	0x0000012e

c0de0fb4 <app_mode_expert>:
c0de0fb4:	b580      	push	{r7, lr}
c0de0fb6:	4804      	ldr	r0, [pc, #16]	; (c0de0fc8 <app_mode_expert+0x14>)
c0de0fb8:	4478      	add	r0, pc
c0de0fba:	f004 fc7b 	bl	c0de58b4 <pic>
c0de0fbe:	7800      	ldrb	r0, [r0, #0]
c0de0fc0:	2800      	cmp	r0, #0
c0de0fc2:	bf18      	it	ne
c0de0fc4:	2001      	movne	r0, #1
c0de0fc6:	bd80      	pop	{r7, pc}
c0de0fc8:	0000c244 	.word	0x0000c244

c0de0fcc <app_mode_set_expert>:
c0de0fcc:	b510      	push	{r4, lr}
c0de0fce:	b082      	sub	sp, #8
c0de0fd0:	f88d 0004 	strb.w	r0, [sp, #4]
c0de0fd4:	4c08      	ldr	r4, [pc, #32]	; (c0de0ff8 <app_mode_set_expert+0x2c>)
c0de0fd6:	447c      	add	r4, pc
c0de0fd8:	4620      	mov	r0, r4
c0de0fda:	f004 fc6b 	bl	c0de58b4 <pic>
c0de0fde:	7840      	ldrb	r0, [r0, #1]
c0de0fe0:	f88d 0005 	strb.w	r0, [sp, #5]
c0de0fe4:	4620      	mov	r0, r4
c0de0fe6:	f004 fc65 	bl	c0de58b4 <pic>
c0de0fea:	a901      	add	r1, sp, #4
c0de0fec:	2202      	movs	r2, #2
c0de0fee:	f004 fd91 	bl	c0de5b14 <nvm_write>
c0de0ff2:	b002      	add	sp, #8
c0de0ff4:	bd10      	pop	{r4, pc}
c0de0ff6:	bf00      	nop
c0de0ff8:	0000c226 	.word	0x0000c226

c0de0ffc <app_mode_shortcut>:
c0de0ffc:	4803      	ldr	r0, [pc, #12]	; (c0de100c <app_mode_shortcut+0x10>)
c0de0ffe:	4448      	add	r0, r9
c0de1000:	7840      	ldrb	r0, [r0, #1]
c0de1002:	2800      	cmp	r0, #0
c0de1004:	bf18      	it	ne
c0de1006:	2001      	movne	r0, #1
c0de1008:	4770      	bx	lr
c0de100a:	bf00      	nop
c0de100c:	0000012e 	.word	0x0000012e

c0de1010 <bagl_draw_with_context>:
c0de1010:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1014:	b08e      	sub	sp, #56	; 0x38
c0de1016:	f890 b000 	ldrb.w	fp, [r0]
c0de101a:	4604      	mov	r4, r0
c0de101c:	f00b 0a7f 	and.w	sl, fp, #127	; 0x7f
c0de1020:	f1ba 0f05 	cmp.w	sl, #5
c0de1024:	910d      	str	r1, [sp, #52]	; 0x34
c0de1026:	920b      	str	r2, [sp, #44]	; 0x2c
c0de1028:	f000 80b9 	beq.w	c0de119e <bagl_draw_with_context+0x18e>
c0de102c:	8b20      	ldrh	r0, [r4, #24]
c0de102e:	4615      	mov	r5, r2
c0de1030:	f000 fae0 	bl	c0de15f4 <bagl_get_font>
c0de1034:	2800      	cmp	r0, #0
c0de1036:	f000 80b2 	beq.w	c0de119e <bagl_draw_with_context+0x18e>
c0de103a:	f890 c006 	ldrb.w	ip, [r0, #6]
c0de103e:	8920      	ldrh	r0, [r4, #8]
c0de1040:	f04f 0e00 	mov.w	lr, #0
c0de1044:	9008      	str	r0, [sp, #32]
c0de1046:	980d      	ldr	r0, [sp, #52]	; 0x34
c0de1048:	2800      	cmp	r0, #0
c0de104a:	f000 8186 	beq.w	c0de135a <bagl_draw_with_context+0x34a>
c0de104e:	2d00      	cmp	r5, #0
c0de1050:	f000 8183 	beq.w	c0de135a <bagl_draw_with_context+0x34a>
c0de1054:	88e1      	ldrh	r1, [r4, #6]
c0de1056:	f243 0339 	movw	r3, #12345	; 0x3039
c0de105a:	3164      	adds	r1, #100	; 0x64
c0de105c:	b289      	uxth	r1, r1
c0de105e:	8b20      	ldrh	r0, [r4, #24]
c0de1060:	e9cd 3100 	strd	r3, r1, [sp]
c0de1064:	990d      	ldr	r1, [sp, #52]	; 0x34
c0de1066:	b2ea      	uxtb	r2, r5
c0de1068:	2600      	movs	r6, #0
c0de106a:	e9cd 1203 	strd	r1, r2, [sp, #12]
c0de106e:	2100      	movs	r1, #0
c0de1070:	2200      	movs	r2, #0
c0de1072:	f243 0339 	movw	r3, #12345	; 0x3039
c0de1076:	2700      	movs	r7, #0
c0de1078:	46d0      	mov	r8, sl
c0de107a:	f8cd c028 	str.w	ip, [sp, #40]	; 0x28
c0de107e:	9602      	str	r6, [sp, #8]
c0de1080:	970c      	str	r7, [sp, #48]	; 0x30
c0de1082:	9605      	str	r6, [sp, #20]
c0de1084:	f000 faf2 	bl	c0de166c <bagl_draw_string>
c0de1088:	88e1      	ldrh	r1, [r4, #6]
c0de108a:	2d05      	cmp	r5, #5
c0de108c:	fa1f fa80 	uxth.w	sl, r0
c0de1090:	f8cd b018 	str.w	fp, [sp, #24]
c0de1094:	f0c0 81ac 	bcc.w	c0de13f0 <bagl_draw_with_context+0x3e0>
c0de1098:	4551      	cmp	r1, sl
c0de109a:	f080 81a9 	bcs.w	c0de13f0 <bagl_draw_with_context+0x3e0>
c0de109e:	8b20      	ldrh	r0, [r4, #24]
c0de10a0:	4aeb      	ldr	r2, [pc, #940]	; (c0de1450 <bagl_draw_with_context+0x440>)
c0de10a2:	2600      	movs	r6, #0
c0de10a4:	2103      	movs	r1, #3
c0de10a6:	447a      	add	r2, pc
c0de10a8:	2364      	movs	r3, #100	; 0x64
c0de10aa:	f243 0739 	movw	r7, #12345	; 0x3039
c0de10ae:	e9cd 7300 	strd	r7, r3, [sp]
c0de10b2:	e9cd 6202 	strd	r6, r2, [sp, #8]
c0de10b6:	9104      	str	r1, [sp, #16]
c0de10b8:	2100      	movs	r1, #0
c0de10ba:	2200      	movs	r2, #0
c0de10bc:	f243 0339 	movw	r3, #12345	; 0x3039
c0de10c0:	9605      	str	r6, [sp, #20]
c0de10c2:	f000 fad3 	bl	c0de166c <bagl_draw_string>
c0de10c6:	9a0d      	ldr	r2, [sp, #52]	; 0x34
c0de10c8:	88e1      	ldrh	r1, [r4, #6]
c0de10ca:	ea4f 0e55 	mov.w	lr, r5, lsr #1
c0de10ce:	ebb6 0f55 	cmp.w	r6, r5, lsr #1
c0de10d2:	eb02 0255 	add.w	r2, r2, r5, lsr #1
c0de10d6:	920c      	str	r2, [sp, #48]	; 0x30
c0de10d8:	f000 818b 	beq.w	c0de13f2 <bagl_draw_with_context+0x3e2>
c0de10dc:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
c0de10e0:	458a      	cmp	sl, r1
c0de10e2:	f240 8188 	bls.w	c0de13f6 <bagl_draw_with_context+0x3e6>
c0de10e6:	ebb5 070e 	subs.w	r7, r5, lr
c0de10ea:	f000 8184 	beq.w	c0de13f6 <bagl_draw_with_context+0x3e6>
c0de10ee:	b280      	uxth	r0, r0
c0de10f0:	9009      	str	r0, [sp, #36]	; 0x24
c0de10f2:	2600      	movs	r6, #0
c0de10f4:	f243 0339 	movw	r3, #12345	; 0x3039
c0de10f8:	8b20      	ldrh	r0, [r4, #24]
c0de10fa:	e9cd 3100 	strd	r3, r1, [sp]
c0de10fe:	990d      	ldr	r1, [sp, #52]	; 0x34
c0de1100:	fa5f f28e 	uxtb.w	r2, lr
c0de1104:	f04f 0a00 	mov.w	sl, #0
c0de1108:	e9cd 1203 	strd	r1, r2, [sp, #12]
c0de110c:	2100      	movs	r1, #0
c0de110e:	2200      	movs	r2, #0
c0de1110:	f243 0339 	movw	r3, #12345	; 0x3039
c0de1114:	46f3      	mov	fp, lr
c0de1116:	f8cd a008 	str.w	sl, [sp, #8]
c0de111a:	f8cd a014 	str.w	sl, [sp, #20]
c0de111e:	f000 faa5 	bl	c0de166c <bagl_draw_string>
c0de1122:	88e1      	ldrh	r1, [r4, #6]
c0de1124:	f243 0339 	movw	r3, #12345	; 0x3039
c0de1128:	b285      	uxth	r5, r0
c0de112a:	8b20      	ldrh	r0, [r4, #24]
c0de112c:	e9cd 3100 	strd	r3, r1, [sp]
c0de1130:	990c      	ldr	r1, [sp, #48]	; 0x30
c0de1132:	b2fa      	uxtb	r2, r7
c0de1134:	e9cd 1203 	strd	r1, r2, [sp, #12]
c0de1138:	2100      	movs	r1, #0
c0de113a:	2200      	movs	r2, #0
c0de113c:	f243 0339 	movw	r3, #12345	; 0x3039
c0de1140:	f8cd a008 	str.w	sl, [sp, #8]
c0de1144:	f8cd a014 	str.w	sl, [sp, #20]
c0de1148:	f000 fa90 	bl	c0de166c <bagl_draw_string>
c0de114c:	9909      	ldr	r1, [sp, #36]	; 0x24
c0de114e:	b280      	uxth	r0, r0
c0de1150:	186a      	adds	r2, r5, r1
c0de1152:	88e1      	ldrh	r1, [r4, #6]
c0de1154:	eb02 0a00 	add.w	sl, r2, r0
c0de1158:	458a      	cmp	sl, r1
c0de115a:	f240 8244 	bls.w	c0de15e6 <bagl_draw_with_context+0x5d6>
c0de115e:	2e01      	cmp	r6, #1
c0de1160:	d006      	beq.n	c0de1170 <bagl_draw_with_context+0x160>
c0de1162:	b946      	cbnz	r6, c0de1176 <bagl_draw_with_context+0x166>
c0de1164:	46de      	mov	lr, fp
c0de1166:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
c0de116a:	f1ab 0e01 	sub.w	lr, fp, #1
c0de116e:	e005      	b.n	c0de117c <bagl_draw_with_context+0x16c>
c0de1170:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de1172:	3001      	adds	r0, #1
c0de1174:	900c      	str	r0, [sp, #48]	; 0x30
c0de1176:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
c0de117a:	46de      	mov	lr, fp
c0de117c:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
c0de117e:	f1be 0f00 	cmp.w	lr, #0
c0de1182:	bf18      	it	ne
c0de1184:	458a      	cmpne	sl, r1
c0de1186:	f240 8136 	bls.w	c0de13f6 <bagl_draw_with_context+0x3e6>
c0de118a:	e9dd 200c 	ldrd	r2, r0, [sp, #48]	; 0x30
c0de118e:	1a80      	subs	r0, r0, r2
c0de1190:	1947      	adds	r7, r0, r5
c0de1192:	f04f 0001 	mov.w	r0, #1
c0de1196:	ea20 0606 	bic.w	r6, r0, r6
c0de119a:	d1ab      	bne.n	c0de10f4 <bagl_draw_with_context+0xe4>
c0de119c:	e12b      	b.n	c0de13f6 <bagl_draw_with_context+0x3e6>
c0de119e:	2000      	movs	r0, #0
c0de11a0:	900c      	str	r0, [sp, #48]	; 0x30
c0de11a2:	2000      	movs	r0, #0
c0de11a4:	f04f 0e00 	mov.w	lr, #0
c0de11a8:	9008      	str	r0, [sp, #32]
c0de11aa:	f04f 0c00 	mov.w	ip, #0
c0de11ae:	2000      	movs	r0, #0
c0de11b0:	9007      	str	r0, [sp, #28]
c0de11b2:	2000      	movs	r0, #0
c0de11b4:	9009      	str	r0, [sp, #36]	; 0x24
c0de11b6:	88e3      	ldrh	r3, [r4, #6]
c0de11b8:	8926      	ldrh	r6, [r4, #8]
c0de11ba:	7ae7      	ldrb	r7, [r4, #11]
c0de11bc:	0858      	lsrs	r0, r3, #1
c0de11be:	0871      	lsrs	r1, r6, #1
c0de11c0:	ebb0 0f56 	cmp.w	r0, r6, lsr #1
c0de11c4:	460a      	mov	r2, r1
c0de11c6:	bf38      	it	cc
c0de11c8:	085a      	lsrcc	r2, r3, #1
c0de11ca:	42ba      	cmp	r2, r7
c0de11cc:	46b8      	mov	r8, r7
c0de11ce:	d803      	bhi.n	c0de11d8 <bagl_draw_with_context+0x1c8>
c0de11d0:	4288      	cmp	r0, r1
c0de11d2:	bf2c      	ite	cs
c0de11d4:	4688      	movcs	r8, r1
c0de11d6:	4680      	movcc	r8, r0
c0de11d8:	f1aa 0001 	sub.w	r0, sl, #1
c0de11dc:	2804      	cmp	r0, #4
c0de11de:	d307      	bcc.n	c0de11f0 <bagl_draw_with_context+0x1e0>
c0de11e0:	f1ba 0f06 	cmp.w	sl, #6
c0de11e4:	f000 80bc 	beq.w	c0de1360 <bagl_draw_with_context+0x350>
c0de11e8:	f1ba 0f07 	cmp.w	sl, #7
c0de11ec:	f040 80d0 	bne.w	c0de1390 <bagl_draw_with_context+0x380>
c0de11f0:	f1ba 0f04 	cmp.w	sl, #4
c0de11f4:	bf08      	it	eq
c0de11f6:	2f00      	cmpeq	r7, #0
c0de11f8:	d00b      	beq.n	c0de1212 <bagl_draw_with_context+0x202>
c0de11fa:	f1bb 0f81 	cmp.w	fp, #129	; 0x81
c0de11fe:	f8cd c028 	str.w	ip, [sp, #40]	; 0x28
c0de1202:	dc0f      	bgt.n	c0de1224 <bagl_draw_with_context+0x214>
c0de1204:	f1bb 0f02 	cmp.w	fp, #2
c0de1208:	d013      	beq.n	c0de1232 <bagl_draw_with_context+0x222>
c0de120a:	f1bb 0f07 	cmp.w	fp, #7
c0de120e:	d010      	beq.n	c0de1232 <bagl_draw_with_context+0x222>
c0de1210:	e0c1      	b.n	c0de1396 <bagl_draw_with_context+0x386>
c0de1212:	6920      	ldr	r0, [r4, #16]
c0de1214:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de1218:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de121c:	9600      	str	r6, [sp, #0]
c0de121e:	f004 fd4b 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de1222:	e0b5      	b.n	c0de1390 <bagl_draw_with_context+0x380>
c0de1224:	f1bb 0f87 	cmp.w	fp, #135	; 0x87
c0de1228:	d003      	beq.n	c0de1232 <bagl_draw_with_context+0x222>
c0de122a:	f1bb 0f82 	cmp.w	fp, #130	; 0x82
c0de122e:	f040 80b2 	bne.w	c0de1396 <bagl_draw_with_context+0x386>
c0de1232:	6960      	ldr	r0, [r4, #20]
c0de1234:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de1238:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de123c:	f1ba 0f07 	cmp.w	sl, #7
c0de1240:	bf08      	it	eq
c0de1242:	eba2 020c 	subeq.w	r2, r2, ip
c0de1246:	9f08      	ldr	r7, [sp, #32]
c0de1248:	bf08      	it	eq
c0de124a:	463e      	moveq	r6, r7
c0de124c:	9600      	str	r6, [sp, #0]
c0de124e:	4675      	mov	r5, lr
c0de1250:	f004 fd32 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de1254:	46ac      	mov	ip, r5
c0de1256:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de1258:	f8dd e028 	ldr.w	lr, [sp, #40]	; 0x28
c0de125c:	2800      	cmp	r0, #0
c0de125e:	f000 8097 	beq.w	c0de1390 <bagl_draw_with_context+0x380>
c0de1262:	980d      	ldr	r0, [sp, #52]	; 0x34
c0de1264:	2800      	cmp	r0, #0
c0de1266:	f000 8093 	beq.w	c0de1390 <bagl_draw_with_context+0x380>
c0de126a:	f1ba 0f04 	cmp.w	sl, #4
c0de126e:	f000 808f 	beq.w	c0de1390 <bagl_draw_with_context+0x380>
c0de1272:	4658      	mov	r0, fp
c0de1274:	f8d4 8010 	ldr.w	r8, [r4, #16]
c0de1278:	6962      	ldr	r2, [r4, #20]
c0de127a:	f00b 007d 	and.w	r0, fp, #125	; 0x7d
c0de127e:	2801      	cmp	r0, #1
c0de1280:	d106      	bne.n	c0de1290 <bagl_draw_with_context+0x280>
c0de1282:	7b20      	ldrb	r0, [r4, #12]
c0de1284:	2801      	cmp	r0, #1
c0de1286:	4640      	mov	r0, r8
c0de1288:	bf04      	itt	eq
c0de128a:	4610      	moveq	r0, r2
c0de128c:	4642      	moveq	r2, r8
c0de128e:	4680      	mov	r8, r0
c0de1290:	9e07      	ldr	r6, [sp, #28]
c0de1292:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de1296:	9d09      	ldr	r5, [sp, #36]	; 0x24
c0de1298:	46b3      	mov	fp, r6
c0de129a:	8b20      	ldrh	r0, [r4, #24]
c0de129c:	f9b4 7004 	ldrsh.w	r7, [r4, #4]
c0de12a0:	186b      	adds	r3, r5, r1
c0de12a2:	f1ba 0f07 	cmp.w	sl, #7
c0de12a6:	bf08      	it	eq
c0de12a8:	f1ce 0b00 	rsbeq	fp, lr, #0
c0de12ac:	88e1      	ldrh	r1, [r4, #6]
c0de12ae:	eb0b 0e07 	add.w	lr, fp, r7
c0de12b2:	1b49      	subs	r1, r1, r5
c0de12b4:	f1ba 0707 	subs.w	r7, sl, #7
c0de12b8:	8925      	ldrh	r5, [r4, #8]
c0de12ba:	bf18      	it	ne
c0de12bc:	4637      	movne	r7, r6
c0de12be:	e9cd e100 	strd	lr, r1, [sp]
c0de12c2:	990d      	ldr	r1, [sp, #52]	; 0x34
c0de12c4:	1bed      	subs	r5, r5, r7
c0de12c6:	2600      	movs	r6, #0
c0de12c8:	e9cd 1c03 	strd	r1, ip, [sp, #12]
c0de12cc:	4641      	mov	r1, r8
c0de12ce:	9502      	str	r5, [sp, #8]
c0de12d0:	9605      	str	r6, [sp, #20]
c0de12d2:	4615      	mov	r5, r2
c0de12d4:	f000 f9ca 	bl	c0de166c <bagl_draw_string>
c0de12d8:	990c      	ldr	r1, [sp, #48]	; 0x30
c0de12da:	2900      	cmp	r1, #0
c0de12dc:	d058      	beq.n	c0de1390 <bagl_draw_with_context+0x380>
c0de12de:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de12e2:	88e1      	ldrh	r1, [r4, #6]
c0de12e4:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
c0de12e8:	9508      	str	r5, [sp, #32]
c0de12ea:	f8b4 e018 	ldrh.w	lr, [r4, #24]
c0de12ee:	b283      	uxth	r3, r0
c0de12f0:	eb0b 0002 	add.w	r0, fp, r2
c0de12f4:	462a      	mov	r2, r5
c0de12f6:	8925      	ldrh	r5, [r4, #8]
c0de12f8:	eba1 060a 	sub.w	r6, r1, sl
c0de12fc:	49bc      	ldr	r1, [pc, #752]	; (c0de15f0 <bagl_draw_with_context+0x5e0>)
c0de12fe:	1bed      	subs	r5, r5, r7
c0de1300:	4479      	add	r1, pc
c0de1302:	f04f 0c03 	mov.w	ip, #3
c0de1306:	e9cd 0600 	strd	r0, r6, [sp]
c0de130a:	e9cd 5102 	strd	r5, r1, [sp, #8]
c0de130e:	4670      	mov	r0, lr
c0de1310:	4641      	mov	r1, r8
c0de1312:	2600      	movs	r6, #0
c0de1314:	f8cd c010 	str.w	ip, [sp, #16]
c0de1318:	9605      	str	r6, [sp, #20]
c0de131a:	f000 f9a7 	bl	c0de166c <bagl_draw_string>
c0de131e:	88e3      	ldrh	r3, [r4, #6]
c0de1320:	8925      	ldrh	r5, [r4, #8]
c0de1322:	f9b4 1004 	ldrsh.w	r1, [r4, #4]
c0de1326:	eba3 060a 	sub.w	r6, r3, sl
c0de132a:	b283      	uxth	r3, r0
c0de132c:	1be8      	subs	r0, r5, r7
c0de132e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
c0de1330:	9d0d      	ldr	r5, [sp, #52]	; 0x34
c0de1332:	eb0b 0201 	add.w	r2, fp, r1
c0de1336:	442f      	add	r7, r5
c0de1338:	9d0c      	ldr	r5, [sp, #48]	; 0x30
c0de133a:	8b21      	ldrh	r1, [r4, #24]
c0de133c:	e9cd 2600 	strd	r2, r6, [sp]
c0de1340:	aa02      	add	r2, sp, #8
c0de1342:	1b7f      	subs	r7, r7, r5
c0de1344:	c2a1      	stmia	r2!, {r0, r5, r7}
c0de1346:	9a08      	ldr	r2, [sp, #32]
c0de1348:	f04f 0c00 	mov.w	ip, #0
c0de134c:	4608      	mov	r0, r1
c0de134e:	4641      	mov	r1, r8
c0de1350:	f8cd c014 	str.w	ip, [sp, #20]
c0de1354:	f000 f98a 	bl	c0de166c <bagl_draw_string>
c0de1358:	e01a      	b.n	c0de1390 <bagl_draw_with_context+0x380>
c0de135a:	2000      	movs	r0, #0
c0de135c:	900c      	str	r0, [sp, #48]	; 0x30
c0de135e:	e726      	b.n	c0de11ae <bagl_draw_with_context+0x19e>
c0de1360:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de1364:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de1368:	7b23      	ldrb	r3, [r4, #12]
c0de136a:	6920      	ldr	r0, [r4, #16]
c0de136c:	4439      	add	r1, r7
c0de136e:	2b01      	cmp	r3, #1
c0de1370:	443a      	add	r2, r7
c0de1372:	d004      	beq.n	c0de137e <bagl_draw_with_context+0x36e>
c0de1374:	7aa3      	ldrb	r3, [r4, #10]
c0de1376:	429f      	cmp	r7, r3
c0de1378:	d901      	bls.n	c0de137e <bagl_draw_with_context+0x36e>
c0de137a:	1afb      	subs	r3, r7, r3
c0de137c:	e000      	b.n	c0de1380 <bagl_draw_with_context+0x370>
c0de137e:	2300      	movs	r3, #0
c0de1380:	6966      	ldr	r6, [r4, #20]
c0de1382:	25ff      	movs	r5, #255	; 0xff
c0de1384:	e9cd 5300 	strd	r5, r3, [sp]
c0de1388:	463b      	mov	r3, r7
c0de138a:	9602      	str	r6, [sp, #8]
c0de138c:	f000 fa62 	bl	c0de1854 <bagl_draw_circle_helper>
c0de1390:	b00e      	add	sp, #56	; 0x38
c0de1392:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1396:	7b20      	ldrb	r0, [r4, #12]
c0de1398:	f8cd e020 	str.w	lr, [sp, #32]
c0de139c:	2801      	cmp	r0, #1
c0de139e:	d159      	bne.n	c0de1454 <bagl_draw_with_context+0x444>
c0de13a0:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de13a4:	6920      	ldr	r0, [r4, #16]
c0de13a6:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de13aa:	4441      	add	r1, r8
c0de13ac:	eba3 0348 	sub.w	r3, r3, r8, lsl #1
c0de13b0:	9600      	str	r6, [sp, #0]
c0de13b2:	f004 fc81 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de13b6:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de13ba:	8923      	ldrh	r3, [r4, #8]
c0de13bc:	6920      	ldr	r0, [r4, #16]
c0de13be:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de13c2:	4442      	add	r2, r8
c0de13c4:	eba3 0748 	sub.w	r7, r3, r8, lsl #1
c0de13c8:	4643      	mov	r3, r8
c0de13ca:	9700      	str	r7, [sp, #0]
c0de13cc:	f004 fc74 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de13d0:	f9b4 2002 	ldrsh.w	r2, [r4, #2]
c0de13d4:	88e1      	ldrh	r1, [r4, #6]
c0de13d6:	f9b4 3004 	ldrsh.w	r3, [r4, #4]
c0de13da:	8927      	ldrh	r7, [r4, #8]
c0de13dc:	6920      	ldr	r0, [r4, #16]
c0de13de:	eba2 0208 	sub.w	r2, r2, r8
c0de13e2:	4411      	add	r1, r2
c0de13e4:	eb08 0203 	add.w	r2, r8, r3
c0de13e8:	eba7 0748 	sub.w	r7, r7, r8, lsl #1
c0de13ec:	4643      	mov	r3, r8
c0de13ee:	e094      	b.n	c0de151a <bagl_draw_with_context+0x50a>
c0de13f0:	46ae      	mov	lr, r5
c0de13f2:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
c0de13f6:	8b20      	ldrh	r0, [r4, #24]
c0de13f8:	f400 4240 	and.w	r2, r0, #49152	; 0xc000
c0de13fc:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
c0de1400:	d005      	beq.n	c0de140e <bagl_draw_with_context+0x3fe>
c0de1402:	f5b2 4f80 	cmp.w	r2, #16384	; 0x4000
c0de1406:	d108      	bne.n	c0de141a <bagl_draw_with_context+0x40a>
c0de1408:	eba1 010a 	sub.w	r1, r1, sl
c0de140c:	e002      	b.n	c0de1414 <bagl_draw_with_context+0x404>
c0de140e:	0849      	lsrs	r1, r1, #1
c0de1410:	eba1 015a 	sub.w	r1, r1, sl, lsr #1
c0de1414:	ea21 71e1 	bic.w	r1, r1, r1, asr #31
c0de1418:	e000      	b.n	c0de141c <bagl_draw_with_context+0x40c>
c0de141a:	2100      	movs	r1, #0
c0de141c:	f8dd b018 	ldr.w	fp, [sp, #24]
c0de1420:	f400 5040 	and.w	r0, r0, #12288	; 0x3000
c0de1424:	46c2      	mov	sl, r8
c0de1426:	f5b0 5f00 	cmp.w	r0, #8192	; 0x2000
c0de142a:	9109      	str	r1, [sp, #36]	; 0x24
c0de142c:	d006      	beq.n	c0de143c <bagl_draw_with_context+0x42c>
c0de142e:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
c0de1432:	d109      	bne.n	c0de1448 <bagl_draw_with_context+0x438>
c0de1434:	8920      	ldrh	r0, [r4, #8]
c0de1436:	eba0 000c 	sub.w	r0, r0, ip
c0de143a:	e006      	b.n	c0de144a <bagl_draw_with_context+0x43a>
c0de143c:	8920      	ldrh	r0, [r4, #8]
c0de143e:	ea6f 015c 	mvn.w	r1, ip, lsr #1
c0de1442:	eb01 0050 	add.w	r0, r1, r0, lsr #1
c0de1446:	e000      	b.n	c0de144a <bagl_draw_with_context+0x43a>
c0de1448:	2000      	movs	r0, #0
c0de144a:	9007      	str	r0, [sp, #28]
c0de144c:	e6b3      	b.n	c0de11b6 <bagl_draw_with_context+0x1a6>
c0de144e:	bf00      	nop
c0de1450:	00008e1e 	.word	0x00008e1e
c0de1454:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de1458:	6960      	ldr	r0, [r4, #20]
c0de145a:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de145e:	4441      	add	r1, r8
c0de1460:	eba3 0348 	sub.w	r3, r3, r8, lsl #1
c0de1464:	9600      	str	r6, [sp, #0]
c0de1466:	f004 fc27 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de146a:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de146e:	8923      	ldrh	r3, [r4, #8]
c0de1470:	6960      	ldr	r0, [r4, #20]
c0de1472:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de1476:	4442      	add	r2, r8
c0de1478:	eba3 0748 	sub.w	r7, r3, r8, lsl #1
c0de147c:	4643      	mov	r3, r8
c0de147e:	9700      	str	r7, [sp, #0]
c0de1480:	f004 fc1a 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de1484:	f9b4 3002 	ldrsh.w	r3, [r4, #2]
c0de1488:	ea6f 0208 	mvn.w	r2, r8
c0de148c:	88e1      	ldrh	r1, [r4, #6]
c0de148e:	f9b4 7004 	ldrsh.w	r7, [r4, #4]
c0de1492:	441a      	add	r2, r3
c0de1494:	8923      	ldrh	r3, [r4, #8]
c0de1496:	6960      	ldr	r0, [r4, #20]
c0de1498:	4411      	add	r1, r2
c0de149a:	eb08 0207 	add.w	r2, r8, r7
c0de149e:	eba3 0748 	sub.w	r7, r3, r8, lsl #1
c0de14a2:	4643      	mov	r3, r8
c0de14a4:	9700      	str	r7, [sp, #0]
c0de14a6:	f004 fc07 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de14aa:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de14ae:	88e3      	ldrh	r3, [r4, #6]
c0de14b0:	6920      	ldr	r0, [r4, #16]
c0de14b2:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de14b6:	7aa7      	ldrb	r7, [r4, #10]
c0de14b8:	4441      	add	r1, r8
c0de14ba:	eba3 0348 	sub.w	r3, r3, r8, lsl #1
c0de14be:	9700      	str	r7, [sp, #0]
c0de14c0:	f004 fbfa 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de14c4:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de14c8:	8923      	ldrh	r3, [r4, #8]
c0de14ca:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de14ce:	441a      	add	r2, r3
c0de14d0:	88e3      	ldrh	r3, [r4, #6]
c0de14d2:	6920      	ldr	r0, [r4, #16]
c0de14d4:	7aa7      	ldrb	r7, [r4, #10]
c0de14d6:	4441      	add	r1, r8
c0de14d8:	3a01      	subs	r2, #1
c0de14da:	eba3 0348 	sub.w	r3, r3, r8, lsl #1
c0de14de:	9700      	str	r7, [sp, #0]
c0de14e0:	f004 fbea 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de14e4:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de14e8:	8927      	ldrh	r7, [r4, #8]
c0de14ea:	6920      	ldr	r0, [r4, #16]
c0de14ec:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de14f0:	7aa3      	ldrb	r3, [r4, #10]
c0de14f2:	4442      	add	r2, r8
c0de14f4:	eba7 0748 	sub.w	r7, r7, r8, lsl #1
c0de14f8:	9700      	str	r7, [sp, #0]
c0de14fa:	f004 fbdd 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de14fe:	88e1      	ldrh	r1, [r4, #6]
c0de1500:	f9b4 2002 	ldrsh.w	r2, [r4, #2]
c0de1504:	f9b4 3004 	ldrsh.w	r3, [r4, #4]
c0de1508:	8927      	ldrh	r7, [r4, #8]
c0de150a:	6920      	ldr	r0, [r4, #16]
c0de150c:	4411      	add	r1, r2
c0de150e:	eb08 0203 	add.w	r2, r8, r3
c0de1512:	7aa3      	ldrb	r3, [r4, #10]
c0de1514:	3901      	subs	r1, #1
c0de1516:	eba7 0748 	sub.w	r7, r7, r8, lsl #1
c0de151a:	9700      	str	r7, [sp, #0]
c0de151c:	f004 fbcc 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de1520:	f8dd c020 	ldr.w	ip, [sp, #32]
c0de1524:	f1b8 0f02 	cmp.w	r8, #2
c0de1528:	f4ff ae95 	bcc.w	c0de1256 <bagl_draw_with_context+0x246>
c0de152c:	7b20      	ldrb	r0, [r4, #12]
c0de152e:	f8cd b018 	str.w	fp, [sp, #24]
c0de1532:	2801      	cmp	r0, #1
c0de1534:	f04f 0b00 	mov.w	fp, #0
c0de1538:	d004      	beq.n	c0de1544 <bagl_draw_with_context+0x534>
c0de153a:	7aa0      	ldrb	r0, [r4, #10]
c0de153c:	ebb8 0000 	subs.w	r0, r8, r0
c0de1540:	bf28      	it	cs
c0de1542:	4683      	movcs	fp, r0
c0de1544:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de1548:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de154c:	e9d4 0704 	ldrd	r0, r7, [r4, #16]
c0de1550:	23c0      	movs	r3, #192	; 0xc0
c0de1552:	4441      	add	r1, r8
c0de1554:	4442      	add	r2, r8
c0de1556:	e9cd 3b00 	strd	r3, fp, [sp]
c0de155a:	4643      	mov	r3, r8
c0de155c:	9702      	str	r7, [sp, #8]
c0de155e:	f000 f979 	bl	c0de1854 <bagl_draw_circle_helper>
c0de1562:	88e1      	ldrh	r1, [r4, #6]
c0de1564:	7aa2      	ldrb	r2, [r4, #10]
c0de1566:	f9b4 3002 	ldrsh.w	r3, [r4, #2]
c0de156a:	f9b4 7004 	ldrsh.w	r7, [r4, #4]
c0de156e:	6920      	ldr	r0, [r4, #16]
c0de1570:	4419      	add	r1, r3
c0de1572:	4442      	add	r2, r8
c0de1574:	6966      	ldr	r6, [r4, #20]
c0de1576:	2330      	movs	r3, #48	; 0x30
c0de1578:	1a89      	subs	r1, r1, r2
c0de157a:	eb08 0207 	add.w	r2, r8, r7
c0de157e:	e9cd 3b00 	strd	r3, fp, [sp]
c0de1582:	4643      	mov	r3, r8
c0de1584:	9602      	str	r6, [sp, #8]
c0de1586:	f000 f965 	bl	c0de1854 <bagl_draw_circle_helper>
c0de158a:	f9b4 2004 	ldrsh.w	r2, [r4, #4]
c0de158e:	8923      	ldrh	r3, [r4, #8]
c0de1590:	7aa7      	ldrb	r7, [r4, #10]
c0de1592:	f9b4 1002 	ldrsh.w	r1, [r4, #2]
c0de1596:	441a      	add	r2, r3
c0de1598:	eb08 0307 	add.w	r3, r8, r7
c0de159c:	6920      	ldr	r0, [r4, #16]
c0de159e:	6967      	ldr	r7, [r4, #20]
c0de15a0:	1ad2      	subs	r2, r2, r3
c0de15a2:	230c      	movs	r3, #12
c0de15a4:	4441      	add	r1, r8
c0de15a6:	e9cd 3b00 	strd	r3, fp, [sp]
c0de15aa:	4643      	mov	r3, r8
c0de15ac:	9702      	str	r7, [sp, #8]
c0de15ae:	f000 f951 	bl	c0de1854 <bagl_draw_circle_helper>
c0de15b2:	88e1      	ldrh	r1, [r4, #6]
c0de15b4:	7aa2      	ldrb	r2, [r4, #10]
c0de15b6:	f9b4 3002 	ldrsh.w	r3, [r4, #2]
c0de15ba:	f9b4 7004 	ldrsh.w	r7, [r4, #4]
c0de15be:	4419      	add	r1, r3
c0de15c0:	4442      	add	r2, r8
c0de15c2:	8923      	ldrh	r3, [r4, #8]
c0de15c4:	1a89      	subs	r1, r1, r2
c0de15c6:	1aba      	subs	r2, r7, r2
c0de15c8:	6920      	ldr	r0, [r4, #16]
c0de15ca:	6967      	ldr	r7, [r4, #20]
c0de15cc:	441a      	add	r2, r3
c0de15ce:	2303      	movs	r3, #3
c0de15d0:	e9cd 3b00 	strd	r3, fp, [sp]
c0de15d4:	4643      	mov	r3, r8
c0de15d6:	9702      	str	r7, [sp, #8]
c0de15d8:	f000 f93c 	bl	c0de1854 <bagl_draw_circle_helper>
c0de15dc:	f8dd b018 	ldr.w	fp, [sp, #24]
c0de15e0:	f8dd c020 	ldr.w	ip, [sp, #32]
c0de15e4:	e637      	b.n	c0de1256 <bagl_draw_with_context+0x246>
c0de15e6:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
c0de15ea:	46de      	mov	lr, fp
c0de15ec:	e703      	b.n	c0de13f6 <bagl_draw_with_context+0x3e6>
c0de15ee:	bf00      	nop
c0de15f0:	00008bc4 	.word	0x00008bc4

c0de15f4 <bagl_get_font>:
c0de15f4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de15f6:	b081      	sub	sp, #4
c0de15f8:	490e      	ldr	r1, [pc, #56]	; (c0de1634 <bagl_get_font+0x40>)
c0de15fa:	4e0f      	ldr	r6, [pc, #60]	; (c0de1638 <bagl_get_font+0x44>)
c0de15fc:	4479      	add	r1, pc
c0de15fe:	4604      	mov	r4, r0
c0de1600:	6808      	ldr	r0, [r1, #0]
c0de1602:	447e      	add	r6, pc
c0de1604:	f36f 341f 	bfc	r4, #12, #20
c0de1608:	b188      	cbz	r0, c0de162e <bagl_get_font+0x3a>
c0de160a:	eb06 0180 	add.w	r1, r6, r0, lsl #2
c0de160e:	f851 5c04 	ldr.w	r5, [r1, #-4]
c0de1612:	1e47      	subs	r7, r0, #1
c0de1614:	4628      	mov	r0, r5
c0de1616:	f004 f94d 	bl	c0de58b4 <pic>
c0de161a:	6800      	ldr	r0, [r0, #0]
c0de161c:	42a0      	cmp	r0, r4
c0de161e:	4638      	mov	r0, r7
c0de1620:	d1f2      	bne.n	c0de1608 <bagl_get_font+0x14>
c0de1622:	4628      	mov	r0, r5
c0de1624:	b001      	add	sp, #4
c0de1626:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de162a:	f004 b943 	b.w	c0de58b4 <pic>
c0de162e:	2000      	movs	r0, #0
c0de1630:	b001      	add	sp, #4
c0de1632:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de1634:	00009e40 	.word	0x00009e40
c0de1638:	00009e2e 	.word	0x00009e2e

c0de163c <bagl_compute_line_width>:
c0de163c:	b580      	push	{r7, lr}
c0de163e:	b086      	sub	sp, #24
c0de1640:	469c      	mov	ip, r3
c0de1642:	f04f 0e00 	mov.w	lr, #0
c0de1646:	f243 0339 	movw	r3, #12345	; 0x3039
c0de164a:	e9cd 3100 	strd	r3, r1, [sp]
c0de164e:	e9cd e202 	strd	lr, r2, [sp, #8]
c0de1652:	2100      	movs	r1, #0
c0de1654:	2200      	movs	r2, #0
c0de1656:	f243 0339 	movw	r3, #12345	; 0x3039
c0de165a:	f8cd e014 	str.w	lr, [sp, #20]
c0de165e:	f8cd c010 	str.w	ip, [sp, #16]
c0de1662:	f000 f803 	bl	c0de166c <bagl_draw_string>
c0de1666:	b280      	uxth	r0, r0
c0de1668:	b006      	add	sp, #24
c0de166a:	bd80      	pop	{r7, pc}

c0de166c <bagl_draw_string>:
c0de166c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1670:	b0a0      	sub	sp, #128	; 0x80
c0de1672:	9f28      	ldr	r7, [sp, #160]	; 0xa0
c0de1674:	f243 0539 	movw	r5, #12345	; 0x3039
c0de1678:	ea83 0605 	eor.w	r6, r3, r5
c0de167c:	407d      	eors	r5, r7
c0de167e:	ea56 0405 	orrs.w	r4, r6, r5
c0de1682:	4625      	mov	r5, r4
c0de1684:	bf08      	it	eq
c0de1686:	4627      	moveq	r7, r4
c0de1688:	970f      	str	r7, [sp, #60]	; 0x3c
c0de168a:	930b      	str	r3, [sp, #44]	; 0x2c
c0de168c:	bf18      	it	ne
c0de168e:	461d      	movne	r5, r3
c0de1690:	9208      	str	r2, [sp, #32]
c0de1692:	e9cd 2110 	strd	r2, r1, [sp, #64]	; 0x40
c0de1696:	f7ff ffad 	bl	c0de15f4 <bagl_get_font>
c0de169a:	2800      	cmp	r0, #0
c0de169c:	f000 80c9 	beq.w	c0de1832 <bagl_draw_string+0x1c6>
c0de16a0:	f8dd a0b0 	ldr.w	sl, [sp, #176]	; 0xb0
c0de16a4:	4683      	mov	fp, r0
c0de16a6:	fab4 f084 	clz	r0, r4
c0de16aa:	f1ba 0f00 	cmp.w	sl, #0
c0de16ae:	ea4f 1050 	mov.w	r0, r0, lsr #5
c0de16b2:	900d      	str	r0, [sp, #52]	; 0x34
c0de16b4:	f000 80bf 	beq.w	c0de1836 <bagl_draw_string+0x1ca>
c0de16b8:	e9dd 1029 	ldrd	r1, r0, [sp, #164]	; 0xa4
c0de16bc:	f89b 2004 	ldrb.w	r2, [fp, #4]
c0de16c0:	4429      	add	r1, r5
c0de16c2:	910e      	str	r1, [sp, #56]	; 0x38
c0de16c4:	990f      	ldr	r1, [sp, #60]	; 0x3c
c0de16c6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
c0de16c8:	4408      	add	r0, r1
c0de16ca:	9007      	str	r0, [sp, #28]
c0de16cc:	2001      	movs	r0, #1
c0de16ce:	4090      	lsls	r0, r2
c0de16d0:	920a      	str	r2, [sp, #40]	; 0x28
c0de16d2:	9009      	str	r0, [sp, #36]	; 0x24
c0de16d4:	f813 4b01 	ldrb.w	r4, [r3], #1
c0de16d8:	f8bb 1008 	ldrh.w	r1, [fp, #8]
c0de16dc:	f89b e005 	ldrb.w	lr, [fp, #5]
c0de16e0:	428c      	cmp	r4, r1
c0de16e2:	d303      	bcc.n	c0de16ec <bagl_draw_string+0x80>
c0de16e4:	f8bb 000a 	ldrh.w	r0, [fp, #10]
c0de16e8:	42a0      	cmp	r0, r4
c0de16ea:	d20f      	bcs.n	c0de170c <bagl_draw_string+0xa0>
c0de16ec:	2cc0      	cmp	r4, #192	; 0xc0
c0de16ee:	d303      	bcc.n	c0de16f8 <bagl_draw_string+0x8c>
c0de16f0:	f004 043f 	and.w	r4, r4, #63	; 0x3f
c0de16f4:	2600      	movs	r6, #0
c0de16f6:	e005      	b.n	c0de1704 <bagl_draw_string+0x98>
c0de16f8:	b260      	sxtb	r0, r4
c0de16fa:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
c0de16fe:	dd65      	ble.n	c0de17cc <bagl_draw_string+0x160>
c0de1700:	2600      	movs	r6, #0
c0de1702:	2400      	movs	r4, #0
c0de1704:	f04f 0800 	mov.w	r8, #0
c0de1708:	e01c      	b.n	c0de1744 <bagl_draw_string+0xd8>
c0de170a:	bf00      	nop
c0de170c:	f8db 0010 	ldr.w	r0, [fp, #16]
c0de1710:	1a67      	subs	r7, r4, r1
c0de1712:	930c      	str	r3, [sp, #48]	; 0x30
c0de1714:	4676      	mov	r6, lr
c0de1716:	f004 f8cd 	bl	c0de58b4 <pic>
c0de171a:	f8db 100c 	ldr.w	r1, [fp, #12]
c0de171e:	4604      	mov	r4, r0
c0de1720:	4608      	mov	r0, r1
c0de1722:	f004 f8c7 	bl	c0de58b4 <pic>
c0de1726:	eb00 0087 	add.w	r0, r0, r7, lsl #2
c0de172a:	8841      	ldrh	r1, [r0, #2]
c0de172c:	f8db 000c 	ldr.w	r0, [fp, #12]
c0de1730:	eb04 0801 	add.w	r8, r4, r1
c0de1734:	f004 f8be 	bl	c0de58b4 <pic>
c0de1738:	46b6      	mov	lr, r6
c0de173a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
c0de173c:	f810 4027 	ldrb.w	r4, [r0, r7, lsl #2]
c0de1740:	f89b 6007 	ldrb.w	r6, [fp, #7]
c0de1744:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
c0de1746:	980d      	ldr	r0, [sp, #52]	; 0x34
c0de1748:	2800      	cmp	r0, #0
c0de174a:	eb05 0004 	add.w	r0, r5, r4
c0de174e:	d005      	beq.n	c0de175c <bagl_draw_string+0xf0>
c0de1750:	990e      	ldr	r1, [sp, #56]	; 0x38
c0de1752:	b3a9      	cbz	r1, c0de17c0 <bagl_draw_string+0x154>
c0de1754:	990e      	ldr	r1, [sp, #56]	; 0x38
c0de1756:	4288      	cmp	r0, r1
c0de1758:	d932      	bls.n	c0de17c0 <bagl_draw_string+0x154>
c0de175a:	e075      	b.n	c0de1848 <bagl_draw_string+0x1dc>
c0de175c:	990e      	ldr	r1, [sp, #56]	; 0x38
c0de175e:	4288      	cmp	r0, r1
c0de1760:	dd0a      	ble.n	c0de1778 <bagl_draw_string+0x10c>
c0de1762:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
c0de1764:	9907      	ldr	r1, [sp, #28]
c0de1766:	4472      	add	r2, lr
c0de1768:	eb02 000e 	add.w	r0, r2, lr
c0de176c:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
c0de176e:	4288      	cmp	r0, r1
c0de1770:	4610      	mov	r0, r2
c0de1772:	920f      	str	r2, [sp, #60]	; 0x3c
c0de1774:	dd01      	ble.n	c0de177a <bagl_draw_string+0x10e>
c0de1776:	e06b      	b.n	c0de1850 <bagl_draw_string+0x1e4>
c0de1778:	462f      	mov	r7, r5
c0de177a:	f1b8 0f00 	cmp.w	r8, #0
c0de177e:	d014      	beq.n	c0de17aa <bagl_draw_string+0x13e>
c0de1780:	46b4      	mov	ip, r6
c0de1782:	9e0a      	ldr	r6, [sp, #40]	; 0x28
c0de1784:	9909      	ldr	r1, [sp, #36]	; 0x24
c0de1786:	fb0e f006 	mul.w	r0, lr, r6
c0de178a:	4360      	muls	r0, r4
c0de178c:	9100      	str	r1, [sp, #0]
c0de178e:	a910      	add	r1, sp, #64	; 0x40
c0de1790:	9101      	str	r1, [sp, #4]
c0de1792:	e9cd 8003 	strd	r8, r0, [sp, #12]
c0de1796:	4638      	mov	r0, r7
c0de1798:	4611      	mov	r1, r2
c0de179a:	4622      	mov	r2, r4
c0de179c:	461d      	mov	r5, r3
c0de179e:	4673      	mov	r3, lr
c0de17a0:	9602      	str	r6, [sp, #8]
c0de17a2:	4666      	mov	r6, ip
c0de17a4:	f004 fa6e 	bl	c0de5c84 <bagl_hal_draw_bitmap_within_rect>
c0de17a8:	e007      	b.n	c0de17ba <bagl_draw_string+0x14e>
c0de17aa:	9808      	ldr	r0, [sp, #32]
c0de17ac:	4639      	mov	r1, r7
c0de17ae:	461d      	mov	r5, r3
c0de17b0:	4623      	mov	r3, r4
c0de17b2:	f8cd e000 	str.w	lr, [sp]
c0de17b6:	f004 fa7f 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de17ba:	19a0      	adds	r0, r4, r6
c0de17bc:	462b      	mov	r3, r5
c0de17be:	4438      	add	r0, r7
c0de17c0:	f1ba 0a01 	subs.w	sl, sl, #1
c0de17c4:	4605      	mov	r5, r0
c0de17c6:	f47f af85 	bne.w	c0de16d4 <bagl_draw_string+0x68>
c0de17ca:	e035      	b.n	c0de1838 <bagl_draw_string+0x1cc>
c0de17cc:	06a0      	lsls	r0, r4, #26
c0de17ce:	f04f 000f 	mov.w	r0, #15
c0de17d2:	f8cd e018 	str.w	lr, [sp, #24]
c0de17d6:	930c      	str	r3, [sp, #48]	; 0x30
c0de17d8:	bf58      	it	pl
c0de17da:	200e      	movpl	r0, #14
c0de17dc:	f7ff ff0a 	bl	c0de15f4 <bagl_get_font>
c0de17e0:	b1f0      	cbz	r0, c0de1820 <bagl_draw_string+0x1b4>
c0de17e2:	4607      	mov	r7, r0
c0de17e4:	6900      	ldr	r0, [r0, #16]
c0de17e6:	f004 f865 	bl	c0de58b4 <pic>
c0de17ea:	68f9      	ldr	r1, [r7, #12]
c0de17ec:	4680      	mov	r8, r0
c0de17ee:	4608      	mov	r0, r1
c0de17f0:	f004 f860 	bl	c0de58b4 <pic>
c0de17f4:	f004 041f 	and.w	r4, r4, #31
c0de17f8:	eb00 0084 	add.w	r0, r0, r4, lsl #2
c0de17fc:	8841      	ldrh	r1, [r0, #2]
c0de17fe:	68f8      	ldr	r0, [r7, #12]
c0de1800:	4488      	add	r8, r1
c0de1802:	f004 f857 	bl	c0de58b4 <pic>
c0de1806:	f810 4024 	ldrb.w	r4, [r0, r4, lsl #2]
c0de180a:	f89b 0006 	ldrb.w	r0, [fp, #6]
c0de180e:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
c0de1810:	79b9      	ldrb	r1, [r7, #6]
c0de1812:	f897 e005 	ldrb.w	lr, [r7, #5]
c0de1816:	4410      	add	r0, r2
c0de1818:	9b0c      	ldr	r3, [sp, #48]	; 0x30
c0de181a:	1a42      	subs	r2, r0, r1
c0de181c:	2600      	movs	r6, #0
c0de181e:	e792      	b.n	c0de1746 <bagl_draw_string+0xda>
c0de1820:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
c0de1822:	9b0c      	ldr	r3, [sp, #48]	; 0x30
c0de1824:	f8dd e018 	ldr.w	lr, [sp, #24]
c0de1828:	2600      	movs	r6, #0
c0de182a:	2400      	movs	r4, #0
c0de182c:	f04f 0800 	mov.w	r8, #0
c0de1830:	e789      	b.n	c0de1746 <bagl_draw_string+0xda>
c0de1832:	2500      	movs	r5, #0
c0de1834:	e008      	b.n	c0de1848 <bagl_draw_string+0x1dc>
c0de1836:	4628      	mov	r0, r5
c0de1838:	990d      	ldr	r1, [sp, #52]	; 0x34
c0de183a:	b109      	cbz	r1, c0de1840 <bagl_draw_string+0x1d4>
c0de183c:	4605      	mov	r5, r0
c0de183e:	e003      	b.n	c0de1848 <bagl_draw_string+0x1dc>
c0de1840:	b280      	uxth	r0, r0
c0de1842:	990f      	ldr	r1, [sp, #60]	; 0x3c
c0de1844:	ea40 4501 	orr.w	r5, r0, r1, lsl #16
c0de1848:	4628      	mov	r0, r5
c0de184a:	b020      	add	sp, #128	; 0x80
c0de184c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de1850:	b2a8      	uxth	r0, r5
c0de1852:	e7f6      	b.n	c0de1842 <bagl_draw_string+0x1d6>

c0de1854 <bagl_draw_circle_helper>:
c0de1854:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1858:	b098      	sub	sp, #96	; 0x60
c0de185a:	9217      	str	r2, [sp, #92]	; 0x5c
c0de185c:	9a21      	ldr	r2, [sp, #132]	; 0x84
c0de185e:	4607      	mov	r7, r0
c0de1860:	1a9e      	subs	r6, r3, r2
c0de1862:	2a00      	cmp	r2, #0
c0de1864:	4610      	mov	r0, r2
c0de1866:	bf18      	it	ne
c0de1868:	2001      	movne	r0, #1
c0de186a:	2500      	movs	r5, #0
c0de186c:	2e00      	cmp	r6, #0
c0de186e:	9612      	str	r6, [sp, #72]	; 0x48
c0de1870:	bfc8      	it	gt
c0de1872:	2501      	movgt	r5, #1
c0de1874:	2b00      	cmp	r3, #0
c0de1876:	9313      	str	r3, [sp, #76]	; 0x4c
c0de1878:	9116      	str	r1, [sp, #88]	; 0x58
c0de187a:	f100 81c2 	bmi.w	c0de1c02 <bagl_draw_circle_helper+0x3ae>
c0de187e:	9e13      	ldr	r6, [sp, #76]	; 0x4c
c0de1880:	9920      	ldr	r1, [sp, #128]	; 0x80
c0de1882:	4028      	ands	r0, r5
c0de1884:	9015      	str	r0, [sp, #84]	; 0x54
c0de1886:	f1c6 0001 	rsb	r0, r6, #1
c0de188a:	9011      	str	r0, [sp, #68]	; 0x44
c0de188c:	f001 0001 	and.w	r0, r1, #1
c0de1890:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0de1892:	9010      	str	r0, [sp, #64]	; 0x40
c0de1894:	f001 0002 	and.w	r0, r1, #2
c0de1898:	900c      	str	r0, [sp, #48]	; 0x30
c0de189a:	1e58      	subs	r0, r3, #1
c0de189c:	9007      	str	r0, [sp, #28]
c0de189e:	f001 0004 	and.w	r0, r1, #4
c0de18a2:	900d      	str	r0, [sp, #52]	; 0x34
c0de18a4:	f001 0008 	and.w	r0, r1, #8
c0de18a8:	900b      	str	r0, [sp, #44]	; 0x2c
c0de18aa:	f001 0010 	and.w	r0, r1, #16
c0de18ae:	900f      	str	r0, [sp, #60]	; 0x3c
c0de18b0:	f001 0020 	and.w	r0, r1, #32
c0de18b4:	900a      	str	r0, [sp, #40]	; 0x28
c0de18b6:	f001 0040 	and.w	r0, r1, #64	; 0x40
c0de18ba:	900e      	str	r0, [sp, #56]	; 0x38
c0de18bc:	f001 0080 	and.w	r0, r1, #128	; 0x80
c0de18c0:	9009      	str	r0, [sp, #36]	; 0x24
c0de18c2:	9816      	ldr	r0, [sp, #88]	; 0x58
c0de18c4:	1b91      	subs	r1, r2, r6
c0de18c6:	4410      	add	r0, r2
c0de18c8:	1b80      	subs	r0, r0, r6
c0de18ca:	9103      	str	r1, [sp, #12]
c0de18cc:	f1c3 0101 	rsb	r1, r3, #1
c0de18d0:	e9cd 1005 	strd	r1, r0, [sp, #20]
c0de18d4:	3001      	adds	r0, #1
c0de18d6:	f04f 0b00 	mov.w	fp, #0
c0de18da:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
c0de18de:	f04f 0a01 	mov.w	sl, #1
c0de18e2:	f04f 0800 	mov.w	r8, #0
c0de18e6:	9004      	str	r0, [sp, #16]
c0de18e8:	9708      	str	r7, [sp, #32]
c0de18ea:	bf00      	nop
c0de18ec:	9810      	ldr	r0, [sp, #64]	; 0x40
c0de18ee:	1c4c      	adds	r4, r1, #1
c0de18f0:	9114      	str	r1, [sp, #80]	; 0x50
c0de18f2:	b928      	cbnz	r0, c0de1900 <bagl_draw_circle_helper+0xac>
c0de18f4:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de18f6:	2800      	cmp	r0, #0
c0de18f8:	d053      	beq.n	c0de19a2 <bagl_draw_circle_helper+0x14e>
c0de18fa:	9815      	ldr	r0, [sp, #84]	; 0x54
c0de18fc:	bb18      	cbnz	r0, c0de1946 <bagl_draw_circle_helper+0xf2>
c0de18fe:	e046      	b.n	c0de198e <bagl_draw_circle_helper+0x13a>
c0de1900:	9815      	ldr	r0, [sp, #84]	; 0x54
c0de1902:	b3c8      	cbz	r0, c0de1978 <bagl_draw_circle_helper+0x124>
c0de1904:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de1906:	46a2      	mov	sl, r4
c0de1908:	4408      	add	r0, r1
c0de190a:	1c45      	adds	r5, r0, #1
c0de190c:	9807      	ldr	r0, [sp, #28]
c0de190e:	463c      	mov	r4, r7
c0de1910:	9f16      	ldr	r7, [sp, #88]	; 0x58
c0de1912:	1a33      	subs	r3, r6, r0
c0de1914:	9822      	ldr	r0, [sp, #136]	; 0x88
c0de1916:	f04f 0c01 	mov.w	ip, #1
c0de191a:	4639      	mov	r1, r7
c0de191c:	462a      	mov	r2, r5
c0de191e:	f8cd c000 	str.w	ip, [sp]
c0de1922:	f004 f9c9 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de1926:	9905      	ldr	r1, [sp, #20]
c0de1928:	19f0      	adds	r0, r6, r7
c0de192a:	4627      	mov	r7, r4
c0de192c:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0de192e:	4654      	mov	r4, sl
c0de1930:	f04f 0a01 	mov.w	sl, #1
c0de1934:	4401      	add	r1, r0
c0de1936:	4638      	mov	r0, r7
c0de1938:	462a      	mov	r2, r5
c0de193a:	f8cd a000 	str.w	sl, [sp]
c0de193e:	f004 f9bb 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de1942:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de1944:	b368      	cbz	r0, c0de19a2 <bagl_draw_circle_helper+0x14e>
c0de1946:	9813      	ldr	r0, [sp, #76]	; 0x4c
c0de1948:	42b0      	cmp	r0, r6
c0de194a:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de194c:	eb06 0500 	add.w	r5, r6, r0
c0de1950:	d00a      	beq.n	c0de1968 <bagl_draw_circle_helper+0x114>
c0de1952:	9803      	ldr	r0, [sp, #12]
c0de1954:	9914      	ldr	r1, [sp, #80]	; 0x50
c0de1956:	462a      	mov	r2, r5
c0de1958:	4408      	add	r0, r1
c0de195a:	1c83      	adds	r3, r0, #2
c0de195c:	9822      	ldr	r0, [sp, #136]	; 0x88
c0de195e:	9916      	ldr	r1, [sp, #88]	; 0x58
c0de1960:	f8cd a000 	str.w	sl, [sp]
c0de1964:	f004 f9a8 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de1968:	9806      	ldr	r0, [sp, #24]
c0de196a:	9914      	ldr	r1, [sp, #80]	; 0x50
c0de196c:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0de196e:	4408      	add	r0, r1
c0de1970:	1c81      	adds	r1, r0, #2
c0de1972:	4638      	mov	r0, r7
c0de1974:	462a      	mov	r2, r5
c0de1976:	e010      	b.n	c0de199a <bagl_draw_circle_helper+0x146>
c0de1978:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de197a:	4633      	mov	r3, r6
c0de197c:	1842      	adds	r2, r0, r1
c0de197e:	9916      	ldr	r1, [sp, #88]	; 0x58
c0de1980:	4638      	mov	r0, r7
c0de1982:	f8cd a000 	str.w	sl, [sp]
c0de1986:	f004 f997 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de198a:	980c      	ldr	r0, [sp, #48]	; 0x30
c0de198c:	b148      	cbz	r0, c0de19a2 <bagl_draw_circle_helper+0x14e>
c0de198e:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de1990:	9916      	ldr	r1, [sp, #88]	; 0x58
c0de1992:	4430      	add	r0, r6
c0de1994:	1e42      	subs	r2, r0, #1
c0de1996:	4638      	mov	r0, r7
c0de1998:	4623      	mov	r3, r4
c0de199a:	f8cd a000 	str.w	sl, [sp]
c0de199e:	f004 f98b 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de19a2:	980d      	ldr	r0, [sp, #52]	; 0x34
c0de19a4:	b930      	cbnz	r0, c0de19b4 <bagl_draw_circle_helper+0x160>
c0de19a6:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de19a8:	2800      	cmp	r0, #0
c0de19aa:	d05d      	beq.n	c0de1a68 <bagl_draw_circle_helper+0x214>
c0de19ac:	9815      	ldr	r0, [sp, #84]	; 0x54
c0de19ae:	bb30      	cbnz	r0, c0de19fe <bagl_draw_circle_helper+0x1aa>
c0de19b0:	e038      	b.n	c0de1a24 <bagl_draw_circle_helper+0x1d0>
c0de19b2:	bf00      	nop
c0de19b4:	9815      	ldr	r0, [sp, #84]	; 0x54
c0de19b6:	2800      	cmp	r0, #0
c0de19b8:	9816      	ldr	r0, [sp, #88]	; 0x58
c0de19ba:	eba0 0506 	sub.w	r5, r0, r6
c0de19be:	d025      	beq.n	c0de1a0c <bagl_draw_circle_helper+0x1b8>
c0de19c0:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de19c2:	9914      	ldr	r1, [sp, #80]	; 0x50
c0de19c4:	f8dd a01c 	ldr.w	sl, [sp, #28]
c0de19c8:	4408      	add	r0, r1
c0de19ca:	1c47      	adds	r7, r0, #1
c0de19cc:	9822      	ldr	r0, [sp, #136]	; 0x88
c0de19ce:	f04f 0c01 	mov.w	ip, #1
c0de19d2:	eba6 030a 	sub.w	r3, r6, sl
c0de19d6:	4629      	mov	r1, r5
c0de19d8:	463a      	mov	r2, r7
c0de19da:	f8cd c000 	str.w	ip, [sp]
c0de19de:	f004 f96b 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de19e2:	9808      	ldr	r0, [sp, #32]
c0de19e4:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0de19e6:	eba5 010a 	sub.w	r1, r5, sl
c0de19ea:	f04f 0a01 	mov.w	sl, #1
c0de19ee:	463a      	mov	r2, r7
c0de19f0:	9f08      	ldr	r7, [sp, #32]
c0de19f2:	f8cd a000 	str.w	sl, [sp]
c0de19f6:	f004 f95f 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de19fa:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de19fc:	b3a0      	cbz	r0, c0de1a68 <bagl_draw_circle_helper+0x214>
c0de19fe:	9813      	ldr	r0, [sp, #76]	; 0x4c
c0de1a00:	42b0      	cmp	r0, r6
c0de1a02:	d118      	bne.n	c0de1a36 <bagl_draw_circle_helper+0x1e2>
c0de1a04:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de1a06:	1835      	adds	r5, r6, r0
c0de1a08:	e024      	b.n	c0de1a54 <bagl_draw_circle_helper+0x200>
c0de1a0a:	bf00      	nop
c0de1a0c:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de1a0e:	9914      	ldr	r1, [sp, #80]	; 0x50
c0de1a10:	4633      	mov	r3, r6
c0de1a12:	1842      	adds	r2, r0, r1
c0de1a14:	4638      	mov	r0, r7
c0de1a16:	4629      	mov	r1, r5
c0de1a18:	f8cd a000 	str.w	sl, [sp]
c0de1a1c:	f004 f94c 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de1a20:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de1a22:	b308      	cbz	r0, c0de1a68 <bagl_draw_circle_helper+0x214>
c0de1a24:	9816      	ldr	r0, [sp, #88]	; 0x58
c0de1a26:	4623      	mov	r3, r4
c0de1a28:	eb00 010b 	add.w	r1, r0, fp
c0de1a2c:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de1a2e:	4430      	add	r0, r6
c0de1a30:	1e42      	subs	r2, r0, #1
c0de1a32:	4638      	mov	r0, r7
c0de1a34:	e014      	b.n	c0de1a60 <bagl_draw_circle_helper+0x20c>
c0de1a36:	9816      	ldr	r0, [sp, #88]	; 0x58
c0de1a38:	9a14      	ldr	r2, [sp, #80]	; 0x50
c0de1a3a:	eb00 010b 	add.w	r1, r0, fp
c0de1a3e:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de1a40:	f8cd a000 	str.w	sl, [sp]
c0de1a44:	1835      	adds	r5, r6, r0
c0de1a46:	9803      	ldr	r0, [sp, #12]
c0de1a48:	4410      	add	r0, r2
c0de1a4a:	1c83      	adds	r3, r0, #2
c0de1a4c:	9822      	ldr	r0, [sp, #136]	; 0x88
c0de1a4e:	462a      	mov	r2, r5
c0de1a50:	f004 f932 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de1a54:	9804      	ldr	r0, [sp, #16]
c0de1a56:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0de1a58:	eb00 010b 	add.w	r1, r0, fp
c0de1a5c:	4638      	mov	r0, r7
c0de1a5e:	462a      	mov	r2, r5
c0de1a60:	f8cd a000 	str.w	sl, [sp]
c0de1a64:	f004 f928 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de1a68:	980f      	ldr	r0, [sp, #60]	; 0x3c
c0de1a6a:	b928      	cbnz	r0, c0de1a78 <bagl_draw_circle_helper+0x224>
c0de1a6c:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de1a6e:	2800      	cmp	r0, #0
c0de1a70:	d055      	beq.n	c0de1b1e <bagl_draw_circle_helper+0x2ca>
c0de1a72:	9815      	ldr	r0, [sp, #84]	; 0x54
c0de1a74:	bb28      	cbnz	r0, c0de1ac2 <bagl_draw_circle_helper+0x26e>
c0de1a76:	e049      	b.n	c0de1b0c <bagl_draw_circle_helper+0x2b8>
c0de1a78:	9815      	ldr	r0, [sp, #84]	; 0x54
c0de1a7a:	f8dd a05c 	ldr.w	sl, [sp, #92]	; 0x5c
c0de1a7e:	44da      	add	sl, fp
c0de1a80:	b3c0      	cbz	r0, c0de1af4 <bagl_draw_circle_helper+0x2a0>
c0de1a82:	9807      	ldr	r0, [sp, #28]
c0de1a84:	f8cd 8008 	str.w	r8, [sp, #8]
c0de1a88:	46a0      	mov	r8, r4
c0de1a8a:	463c      	mov	r4, r7
c0de1a8c:	9f16      	ldr	r7, [sp, #88]	; 0x58
c0de1a8e:	1a33      	subs	r3, r6, r0
c0de1a90:	9822      	ldr	r0, [sp, #136]	; 0x88
c0de1a92:	4639      	mov	r1, r7
c0de1a94:	4652      	mov	r2, sl
c0de1a96:	2501      	movs	r5, #1
c0de1a98:	9500      	str	r5, [sp, #0]
c0de1a9a:	f004 f90d 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de1a9e:	9905      	ldr	r1, [sp, #20]
c0de1aa0:	19f0      	adds	r0, r6, r7
c0de1aa2:	4627      	mov	r7, r4
c0de1aa4:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0de1aa6:	4644      	mov	r4, r8
c0de1aa8:	f8dd 8008 	ldr.w	r8, [sp, #8]
c0de1aac:	4401      	add	r1, r0
c0de1aae:	4638      	mov	r0, r7
c0de1ab0:	4652      	mov	r2, sl
c0de1ab2:	f04f 0a01 	mov.w	sl, #1
c0de1ab6:	f8cd a000 	str.w	sl, [sp]
c0de1aba:	f004 f8fd 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de1abe:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de1ac0:	b368      	cbz	r0, c0de1b1e <bagl_draw_circle_helper+0x2ca>
c0de1ac2:	9813      	ldr	r0, [sp, #76]	; 0x4c
c0de1ac4:	9914      	ldr	r1, [sp, #80]	; 0x50
c0de1ac6:	42b0      	cmp	r0, r6
c0de1ac8:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de1aca:	eba0 0506 	sub.w	r5, r0, r6
c0de1ace:	d00a      	beq.n	c0de1ae6 <bagl_draw_circle_helper+0x292>
c0de1ad0:	9803      	ldr	r0, [sp, #12]
c0de1ad2:	462a      	mov	r2, r5
c0de1ad4:	4408      	add	r0, r1
c0de1ad6:	1c83      	adds	r3, r0, #2
c0de1ad8:	9822      	ldr	r0, [sp, #136]	; 0x88
c0de1ada:	9916      	ldr	r1, [sp, #88]	; 0x58
c0de1adc:	f8cd a000 	str.w	sl, [sp]
c0de1ae0:	f004 f8ea 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de1ae4:	9914      	ldr	r1, [sp, #80]	; 0x50
c0de1ae6:	9806      	ldr	r0, [sp, #24]
c0de1ae8:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0de1aea:	4408      	add	r0, r1
c0de1aec:	1c81      	adds	r1, r0, #2
c0de1aee:	4638      	mov	r0, r7
c0de1af0:	462a      	mov	r2, r5
c0de1af2:	e010      	b.n	c0de1b16 <bagl_draw_circle_helper+0x2c2>
c0de1af4:	9916      	ldr	r1, [sp, #88]	; 0x58
c0de1af6:	4638      	mov	r0, r7
c0de1af8:	4652      	mov	r2, sl
c0de1afa:	4633      	mov	r3, r6
c0de1afc:	f04f 0a01 	mov.w	sl, #1
c0de1b00:	f8cd a000 	str.w	sl, [sp]
c0de1b04:	f004 f8d8 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de1b08:	980a      	ldr	r0, [sp, #40]	; 0x28
c0de1b0a:	b140      	cbz	r0, c0de1b1e <bagl_draw_circle_helper+0x2ca>
c0de1b0c:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de1b0e:	9916      	ldr	r1, [sp, #88]	; 0x58
c0de1b10:	1b82      	subs	r2, r0, r6
c0de1b12:	4638      	mov	r0, r7
c0de1b14:	4623      	mov	r3, r4
c0de1b16:	f8cd a000 	str.w	sl, [sp]
c0de1b1a:	f004 f8cd 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de1b1e:	980e      	ldr	r0, [sp, #56]	; 0x38
c0de1b20:	b930      	cbnz	r0, c0de1b30 <bagl_draw_circle_helper+0x2dc>
c0de1b22:	9809      	ldr	r0, [sp, #36]	; 0x24
c0de1b24:	2800      	cmp	r0, #0
c0de1b26:	d057      	beq.n	c0de1bd8 <bagl_draw_circle_helper+0x384>
c0de1b28:	9815      	ldr	r0, [sp, #84]	; 0x54
c0de1b2a:	bb18      	cbnz	r0, c0de1b74 <bagl_draw_circle_helper+0x320>
c0de1b2c:	e033      	b.n	c0de1b96 <bagl_draw_circle_helper+0x342>
c0de1b2e:	bf00      	nop
c0de1b30:	9816      	ldr	r0, [sp, #88]	; 0x58
c0de1b32:	1b87      	subs	r7, r0, r6
c0de1b34:	9815      	ldr	r0, [sp, #84]	; 0x54
c0de1b36:	2800      	cmp	r0, #0
c0de1b38:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de1b3a:	eb00 050b 	add.w	r5, r0, fp
c0de1b3e:	d01f      	beq.n	c0de1b80 <bagl_draw_circle_helper+0x32c>
c0de1b40:	46a2      	mov	sl, r4
c0de1b42:	9c07      	ldr	r4, [sp, #28]
c0de1b44:	9822      	ldr	r0, [sp, #136]	; 0x88
c0de1b46:	f04f 0c01 	mov.w	ip, #1
c0de1b4a:	1b33      	subs	r3, r6, r4
c0de1b4c:	4639      	mov	r1, r7
c0de1b4e:	462a      	mov	r2, r5
c0de1b50:	f8cd c000 	str.w	ip, [sp]
c0de1b54:	f004 f8b0 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de1b58:	1b39      	subs	r1, r7, r4
c0de1b5a:	9f08      	ldr	r7, [sp, #32]
c0de1b5c:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0de1b5e:	4654      	mov	r4, sl
c0de1b60:	f04f 0a01 	mov.w	sl, #1
c0de1b64:	4638      	mov	r0, r7
c0de1b66:	462a      	mov	r2, r5
c0de1b68:	f8cd a000 	str.w	sl, [sp]
c0de1b6c:	f004 f8a4 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de1b70:	9809      	ldr	r0, [sp, #36]	; 0x24
c0de1b72:	b388      	cbz	r0, c0de1bd8 <bagl_draw_circle_helper+0x384>
c0de1b74:	9813      	ldr	r0, [sp, #76]	; 0x4c
c0de1b76:	42b0      	cmp	r0, r6
c0de1b78:	d115      	bne.n	c0de1ba6 <bagl_draw_circle_helper+0x352>
c0de1b7a:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de1b7c:	1b85      	subs	r5, r0, r6
c0de1b7e:	e021      	b.n	c0de1bc4 <bagl_draw_circle_helper+0x370>
c0de1b80:	9808      	ldr	r0, [sp, #32]
c0de1b82:	4639      	mov	r1, r7
c0de1b84:	462a      	mov	r2, r5
c0de1b86:	4633      	mov	r3, r6
c0de1b88:	4607      	mov	r7, r0
c0de1b8a:	f8cd a000 	str.w	sl, [sp]
c0de1b8e:	f004 f893 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de1b92:	9809      	ldr	r0, [sp, #36]	; 0x24
c0de1b94:	b300      	cbz	r0, c0de1bd8 <bagl_draw_circle_helper+0x384>
c0de1b96:	9816      	ldr	r0, [sp, #88]	; 0x58
c0de1b98:	4623      	mov	r3, r4
c0de1b9a:	eb00 010b 	add.w	r1, r0, fp
c0de1b9e:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de1ba0:	1b82      	subs	r2, r0, r6
c0de1ba2:	4638      	mov	r0, r7
c0de1ba4:	e014      	b.n	c0de1bd0 <bagl_draw_circle_helper+0x37c>
c0de1ba6:	9816      	ldr	r0, [sp, #88]	; 0x58
c0de1ba8:	9a14      	ldr	r2, [sp, #80]	; 0x50
c0de1baa:	eb00 010b 	add.w	r1, r0, fp
c0de1bae:	9817      	ldr	r0, [sp, #92]	; 0x5c
c0de1bb0:	f8cd a000 	str.w	sl, [sp]
c0de1bb4:	1b85      	subs	r5, r0, r6
c0de1bb6:	9803      	ldr	r0, [sp, #12]
c0de1bb8:	4410      	add	r0, r2
c0de1bba:	1c83      	adds	r3, r0, #2
c0de1bbc:	9822      	ldr	r0, [sp, #136]	; 0x88
c0de1bbe:	462a      	mov	r2, r5
c0de1bc0:	f004 f87a 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de1bc4:	9804      	ldr	r0, [sp, #16]
c0de1bc6:	9b12      	ldr	r3, [sp, #72]	; 0x48
c0de1bc8:	eb00 010b 	add.w	r1, r0, fp
c0de1bcc:	4638      	mov	r0, r7
c0de1bce:	462a      	mov	r2, r5
c0de1bd0:	f8cd a000 	str.w	sl, [sp]
c0de1bd4:	f004 f870 	bl	c0de5cb8 <bagl_hal_draw_rect>
c0de1bd8:	f108 0801 	add.w	r8, r8, #1
c0de1bdc:	9a11      	ldr	r2, [sp, #68]	; 0x44
c0de1bde:	1e70      	subs	r0, r6, #1
c0de1be0:	4641      	mov	r1, r8
c0de1be2:	2a01      	cmp	r2, #1
c0de1be4:	bfac      	ite	ge
c0de1be6:	1a09      	subge	r1, r1, r0
c0de1be8:	4630      	movlt	r0, r6
c0de1bea:	eb02 0141 	add.w	r1, r2, r1, lsl #1
c0de1bee:	3101      	adds	r1, #1
c0de1bf0:	9111      	str	r1, [sp, #68]	; 0x44
c0de1bf2:	f1ab 0b01 	sub.w	fp, fp, #1
c0de1bf6:	4284      	cmp	r4, r0
c0de1bf8:	4621      	mov	r1, r4
c0de1bfa:	9613      	str	r6, [sp, #76]	; 0x4c
c0de1bfc:	4606      	mov	r6, r0
c0de1bfe:	f6ff ae75 	blt.w	c0de18ec <bagl_draw_circle_helper+0x98>
c0de1c02:	b018      	add	sp, #96	; 0x60
c0de1c04:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de1c08 <bagl_draw_glyph>:
c0de1c08:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1c0c:	b088      	sub	sp, #32
c0de1c0e:	460e      	mov	r6, r1
c0de1c10:	6889      	ldr	r1, [r1, #8]
c0de1c12:	2902      	cmp	r1, #2
c0de1c14:	d826      	bhi.n	c0de1c64 <bagl_draw_glyph+0x5c>
c0de1c16:	f9b0 2002 	ldrsh.w	r2, [r0, #2]
c0de1c1a:	f9b0 0004 	ldrsh.w	r0, [r0, #4]
c0de1c1e:	9207      	str	r2, [sp, #28]
c0de1c20:	9006      	str	r0, [sp, #24]
c0de1c22:	68f0      	ldr	r0, [r6, #12]
c0de1c24:	2201      	movs	r2, #1
c0de1c26:	e9d6 7b00 	ldrd	r7, fp, [r6]
c0de1c2a:	fa02 f801 	lsl.w	r8, r2, r1
c0de1c2e:	f003 fe41 	bl	c0de58b4 <pic>
c0de1c32:	6931      	ldr	r1, [r6, #16]
c0de1c34:	f8d6 a008 	ldr.w	sl, [r6, #8]
c0de1c38:	4605      	mov	r5, r0
c0de1c3a:	4608      	mov	r0, r1
c0de1c3c:	f003 fe3a 	bl	c0de58b4 <pic>
c0de1c40:	4604      	mov	r4, r0
c0de1c42:	68b1      	ldr	r1, [r6, #8]
c0de1c44:	e9d6 0200 	ldrd	r0, r2, [r6]
c0de1c48:	465b      	mov	r3, fp
c0de1c4a:	4348      	muls	r0, r1
c0de1c4c:	4350      	muls	r0, r2
c0de1c4e:	9004      	str	r0, [sp, #16]
c0de1c50:	e9dd 1006 	ldrd	r1, r0, [sp, #24]
c0de1c54:	463a      	mov	r2, r7
c0de1c56:	e9cd 8500 	strd	r8, r5, [sp]
c0de1c5a:	f8cd a008 	str.w	sl, [sp, #8]
c0de1c5e:	9403      	str	r4, [sp, #12]
c0de1c60:	f004 f810 	bl	c0de5c84 <bagl_hal_draw_bitmap_within_rect>
c0de1c64:	b008      	add	sp, #32
c0de1c66:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de1c6a <bech32EncodeFromBytes>:
c0de1c6a:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de1c6e:	b0a4      	sub	sp, #144	; 0x90
c0de1c70:	9f2c      	ldr	r7, [sp, #176]	; 0xb0
c0de1c72:	469a      	mov	sl, r3
c0de1c74:	4614      	mov	r4, r2
c0de1c76:	460e      	mov	r6, r1
c0de1c78:	4605      	mov	r5, r0
c0de1c7a:	f007 fe7c 	bl	c0de9976 <explicit_bzero>
c0de1c7e:	2f40      	cmp	r7, #64	; 0x40
c0de1c80:	d82e      	bhi.n	c0de1ce0 <bech32EncodeFromBytes+0x76>
c0de1c82:	4620      	mov	r0, r4
c0de1c84:	f007 fed4 	bl	c0de9a30 <strlen>
c0de1c88:	eb00 0047 	add.w	r0, r0, r7, lsl #1
c0de1c8c:	3007      	adds	r0, #7
c0de1c8e:	42b0      	cmp	r0, r6
c0de1c90:	d901      	bls.n	c0de1c96 <bech32EncodeFromBytes+0x2c>
c0de1c92:	2006      	movs	r0, #6
c0de1c94:	e025      	b.n	c0de1ce2 <bech32EncodeFromBytes+0x78>
c0de1c96:	2000      	movs	r0, #0
c0de1c98:	f10d 0810 	add.w	r8, sp, #16
c0de1c9c:	f8dd b0b4 	ldr.w	fp, [sp, #180]	; 0xb4
c0de1ca0:	9003      	str	r0, [sp, #12]
c0de1ca2:	4640      	mov	r0, r8
c0de1ca4:	2180      	movs	r1, #128	; 0x80
c0de1ca6:	f007 fe66 	bl	c0de9976 <explicit_bzero>
c0de1caa:	2008      	movs	r0, #8
c0de1cac:	e9cd 7000 	strd	r7, r0, [sp]
c0de1cb0:	a903      	add	r1, sp, #12
c0de1cb2:	4640      	mov	r0, r8
c0de1cb4:	2205      	movs	r2, #5
c0de1cb6:	4653      	mov	r3, sl
c0de1cb8:	f8cd b008 	str.w	fp, [sp, #8]
c0de1cbc:	f003 fec8 	bl	c0de5a50 <convert_bits>
c0de1cc0:	9b03      	ldr	r3, [sp, #12]
c0de1cc2:	42b3      	cmp	r3, r6
c0de1cc4:	d20c      	bcs.n	c0de1ce0 <bech32EncodeFromBytes+0x76>
c0de1cc6:	9f2e      	ldr	r7, [sp, #184]	; 0xb8
c0de1cc8:	aa04      	add	r2, sp, #16
c0de1cca:	4628      	mov	r0, r5
c0de1ccc:	4621      	mov	r1, r4
c0de1cce:	9700      	str	r7, [sp, #0]
c0de1cd0:	f003 fe3c 	bl	c0de594c <bech32_encode>
c0de1cd4:	4601      	mov	r1, r0
c0de1cd6:	2003      	movs	r0, #3
c0de1cd8:	2900      	cmp	r1, #0
c0de1cda:	bf08      	it	eq
c0de1cdc:	200a      	moveq	r0, #10
c0de1cde:	e000      	b.n	c0de1ce2 <bech32EncodeFromBytes+0x78>
c0de1ce0:	2009      	movs	r0, #9
c0de1ce2:	b024      	add	sp, #144	; 0x90
c0de1ce4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de1ce8 <buffering_init>:
c0de1ce8:	f8df c034 	ldr.w	ip, [pc, #52]	; c0de1d20 <buffering_init+0x38>
c0de1cec:	f849 000c 	str.w	r0, [r9, ip]
c0de1cf0:	eb09 000c 	add.w	r0, r9, ip
c0de1cf4:	8081      	strh	r1, [r0, #4]
c0de1cf6:	7a01      	ldrb	r1, [r0, #8]
c0de1cf8:	f04f 0c00 	mov.w	ip, #0
c0de1cfc:	f041 0101 	orr.w	r1, r1, #1
c0de1d00:	7201      	strb	r1, [r0, #8]
c0de1d02:	4908      	ldr	r1, [pc, #32]	; (c0de1d24 <buffering_init+0x3c>)
c0de1d04:	f8a0 c006 	strh.w	ip, [r0, #6]
c0de1d08:	eb09 0001 	add.w	r0, r9, r1
c0de1d0c:	f849 2001 	str.w	r2, [r9, r1]
c0de1d10:	7a01      	ldrb	r1, [r0, #8]
c0de1d12:	8083      	strh	r3, [r0, #4]
c0de1d14:	f001 01fe 	and.w	r1, r1, #254	; 0xfe
c0de1d18:	f8a0 c006 	strh.w	ip, [r0, #6]
c0de1d1c:	7201      	strb	r1, [r0, #8]
c0de1d1e:	4770      	bx	lr
c0de1d20:	00000130 	.word	0x00000130
c0de1d24:	0000013c 	.word	0x0000013c

c0de1d28 <buffering_reset>:
c0de1d28:	4808      	ldr	r0, [pc, #32]	; (c0de1d4c <buffering_reset+0x24>)
c0de1d2a:	2200      	movs	r2, #0
c0de1d2c:	4448      	add	r0, r9
c0de1d2e:	7a01      	ldrb	r1, [r0, #8]
c0de1d30:	80c2      	strh	r2, [r0, #6]
c0de1d32:	f041 0101 	orr.w	r1, r1, #1
c0de1d36:	7201      	strb	r1, [r0, #8]
c0de1d38:	4905      	ldr	r1, [pc, #20]	; (c0de1d50 <buffering_reset+0x28>)
c0de1d3a:	eb09 0001 	add.w	r0, r9, r1
c0de1d3e:	7a01      	ldrb	r1, [r0, #8]
c0de1d40:	80c2      	strh	r2, [r0, #6]
c0de1d42:	f001 01fe 	and.w	r1, r1, #254	; 0xfe
c0de1d46:	7201      	strb	r1, [r0, #8]
c0de1d48:	4770      	bx	lr
c0de1d4a:	bf00      	nop
c0de1d4c:	00000130 	.word	0x00000130
c0de1d50:	0000013c 	.word	0x0000013c

c0de1d54 <buffering_append>:
c0de1d54:	b570      	push	{r4, r5, r6, lr}
c0de1d56:	4e25      	ldr	r6, [pc, #148]	; (c0de1dec <buffering_append+0x98>)
c0de1d58:	460c      	mov	r4, r1
c0de1d5a:	eb09 0206 	add.w	r2, r9, r6
c0de1d5e:	7a12      	ldrb	r2, [r2, #8]
c0de1d60:	4605      	mov	r5, r0
c0de1d62:	07d1      	lsls	r1, r2, #31
c0de1d64:	d109      	bne.n	c0de1d7a <buffering_append+0x26>
c0de1d66:	4822      	ldr	r0, [pc, #136]	; (c0de1df0 <buffering_append+0x9c>)
c0de1d68:	eb09 0100 	add.w	r1, r9, r0
c0de1d6c:	888a      	ldrh	r2, [r1, #4]
c0de1d6e:	88c9      	ldrh	r1, [r1, #6]
c0de1d70:	1a52      	subs	r2, r2, r1
c0de1d72:	42a2      	cmp	r2, r4
c0de1d74:	da22      	bge.n	c0de1dbc <buffering_append+0x68>
c0de1d76:	2400      	movs	r4, #0
c0de1d78:	e035      	b.n	c0de1de6 <buffering_append+0x92>
c0de1d7a:	eb09 0006 	add.w	r0, r9, r6
c0de1d7e:	8883      	ldrh	r3, [r0, #4]
c0de1d80:	88c1      	ldrh	r1, [r0, #6]
c0de1d82:	1a58      	subs	r0, r3, r1
c0de1d84:	42a0      	cmp	r0, r4
c0de1d86:	da23      	bge.n	c0de1dd0 <buffering_append+0x7c>
c0de1d88:	f002 0cfe 	and.w	ip, r2, #254	; 0xfe
c0de1d8c:	4a18      	ldr	r2, [pc, #96]	; (c0de1df0 <buffering_append+0x9c>)
c0de1d8e:	eb09 0306 	add.w	r3, r9, r6
c0de1d92:	444a      	add	r2, r9
c0de1d94:	7a10      	ldrb	r0, [r2, #8]
c0de1d96:	f040 0001 	orr.w	r0, r0, #1
c0de1d9a:	f883 c008 	strb.w	ip, [r3, #8]
c0de1d9e:	7210      	strb	r0, [r2, #8]
c0de1da0:	b119      	cbz	r1, c0de1daa <buffering_append+0x56>
c0de1da2:	f859 0006 	ldr.w	r0, [r9, r6]
c0de1da6:	f7ff ffd5 	bl	c0de1d54 <buffering_append>
c0de1daa:	4628      	mov	r0, r5
c0de1dac:	4621      	mov	r1, r4
c0de1dae:	f7ff ffd1 	bl	c0de1d54 <buffering_append>
c0de1db2:	eb09 0106 	add.w	r1, r9, r6
c0de1db6:	2200      	movs	r2, #0
c0de1db8:	80ca      	strh	r2, [r1, #6]
c0de1dba:	bd70      	pop	{r4, r5, r6, pc}
c0de1dbc:	eb09 0600 	add.w	r6, r9, r0
c0de1dc0:	f856 0b06 	ldr.w	r0, [r6], #6
c0de1dc4:	4622      	mov	r2, r4
c0de1dc6:	4408      	add	r0, r1
c0de1dc8:	4629      	mov	r1, r5
c0de1dca:	f003 fea3 	bl	c0de5b14 <nvm_write>
c0de1dce:	e007      	b.n	c0de1de0 <buffering_append+0x8c>
c0de1dd0:	444e      	add	r6, r9
c0de1dd2:	f856 0b06 	ldr.w	r0, [r6], #6
c0de1dd6:	4622      	mov	r2, r4
c0de1dd8:	4408      	add	r0, r1
c0de1dda:	4629      	mov	r1, r5
c0de1ddc:	f007 fdc4 	bl	c0de9968 <__aeabi_memmove>
c0de1de0:	8830      	ldrh	r0, [r6, #0]
c0de1de2:	4420      	add	r0, r4
c0de1de4:	8030      	strh	r0, [r6, #0]
c0de1de6:	4620      	mov	r0, r4
c0de1de8:	bd70      	pop	{r4, r5, r6, pc}
c0de1dea:	bf00      	nop
c0de1dec:	00000130 	.word	0x00000130
c0de1df0:	0000013c 	.word	0x0000013c

c0de1df4 <buffering_get_buffer>:
c0de1df4:	4804      	ldr	r0, [pc, #16]	; (c0de1e08 <buffering_get_buffer+0x14>)
c0de1df6:	4a05      	ldr	r2, [pc, #20]	; (c0de1e0c <buffering_get_buffer+0x18>)
c0de1df8:	4448      	add	r0, r9
c0de1dfa:	7a01      	ldrb	r1, [r0, #8]
c0de1dfc:	07c9      	lsls	r1, r1, #31
c0de1dfe:	bf08      	it	eq
c0de1e00:	eb09 0002 	addeq.w	r0, r9, r2
c0de1e04:	4770      	bx	lr
c0de1e06:	bf00      	nop
c0de1e08:	00000130 	.word	0x00000130
c0de1e0c:	0000013c 	.word	0x0000013c

c0de1e10 <parser_mapCborError>:
c0de1e10:	b160      	cbz	r0, c0de1e2c <parser_mapCborError+0x1c>
c0de1e12:	f240 1101 	movw	r1, #257	; 0x101
c0de1e16:	4288      	cmp	r0, r1
c0de1e18:	bf04      	itt	eq
c0de1e1a:	2022      	moveq	r0, #34	; 0x22
c0de1e1c:	4770      	bxeq	lr
c0de1e1e:	f240 210a 	movw	r1, #522	; 0x20a
c0de1e22:	4288      	cmp	r0, r1
c0de1e24:	bf14      	ite	ne
c0de1e26:	2021      	movne	r0, #33	; 0x21
c0de1e28:	2023      	moveq	r0, #35	; 0x23
c0de1e2a:	4770      	bx	lr
c0de1e2c:	2000      	movs	r0, #0
c0de1e2e:	4770      	bx	lr

c0de1e30 <cbor_get_containerInfo>:
c0de1e30:	b570      	push	{r4, r5, r6, lr}
c0de1e32:	f04f 0609 	mov.w	r6, #9
c0de1e36:	b158      	cbz	r0, c0de1e50 <cbor_get_containerInfo+0x20>
c0de1e38:	460c      	mov	r4, r1
c0de1e3a:	b149      	cbz	r1, c0de1e50 <cbor_get_containerInfo+0x20>
c0de1e3c:	4605      	mov	r5, r0
c0de1e3e:	6880      	ldr	r0, [r0, #8]
c0de1e40:	b128      	cbz	r0, c0de1e4e <cbor_get_containerInfo+0x1e>
c0de1e42:	7ba8      	ldrb	r0, [r5, #14]
c0de1e44:	b130      	cbz	r0, c0de1e54 <cbor_get_containerInfo+0x24>
c0de1e46:	2606      	movs	r6, #6
c0de1e48:	f007 fd7a 	bl	c0de9940 <check_app_canary>
c0de1e4c:	e000      	b.n	c0de1e50 <cbor_get_containerInfo+0x20>
c0de1e4e:	2608      	movs	r6, #8
c0de1e50:	4630      	mov	r0, r6
c0de1e52:	bd70      	pop	{r4, r5, r6, pc}
c0de1e54:	7be9      	ldrb	r1, [r5, #15]
c0de1e56:	0788      	lsls	r0, r1, #30
c0de1e58:	d401      	bmi.n	c0de1e5e <cbor_get_containerInfo+0x2e>
c0de1e5a:	89a8      	ldrh	r0, [r5, #12]
c0de1e5c:	e003      	b.n	c0de1e66 <cbor_get_containerInfo+0x36>
c0de1e5e:	4628      	mov	r0, r5
c0de1e60:	f000 f910 	bl	c0de2084 <_cbor_value_decode_int64_internal>
c0de1e64:	7be9      	ldrb	r1, [r5, #15]
c0de1e66:	0149      	lsls	r1, r1, #5
c0de1e68:	b249      	sxtb	r1, r1
c0de1e6a:	ea80 10e1 	eor.w	r0, r0, r1, asr #7
c0de1e6e:	2801      	cmp	r0, #1
c0de1e70:	d02e      	beq.n	c0de1ed0 <cbor_get_containerInfo+0xa0>
c0de1e72:	2802      	cmp	r0, #2
c0de1e74:	d1e7      	bne.n	c0de1e46 <cbor_get_containerInfo+0x16>
c0de1e76:	2000      	movs	r0, #0
c0de1e78:	e9c4 0001 	strd	r0, r0, [r4, #4]
c0de1e7c:	4628      	mov	r0, r5
c0de1e7e:	f000 faa6 	bl	c0de23ce <cbor_value_advance>
c0de1e82:	bb48      	cbnz	r0, c0de1ed8 <cbor_get_containerInfo+0xa8>
c0de1e84:	7ba8      	ldrb	r0, [r5, #14]
c0de1e86:	2860      	cmp	r0, #96	; 0x60
c0de1e88:	d155      	bne.n	c0de1f36 <cbor_get_containerInfo+0x106>
c0de1e8a:	2064      	movs	r0, #100	; 0x64
c0de1e8c:	f104 0610 	add.w	r6, r4, #16
c0de1e90:	73e8      	strb	r0, [r5, #15]
c0de1e92:	f104 010c 	add.w	r1, r4, #12
c0de1e96:	4628      	mov	r0, r5
c0de1e98:	4632      	mov	r2, r6
c0de1e9a:	2300      	movs	r3, #0
c0de1e9c:	f000 fcc9 	bl	c0de2832 <_cbor_value_get_string_chunk>
c0de1ea0:	b9d0      	cbnz	r0, c0de1ed8 <cbor_get_containerInfo+0xa8>
c0de1ea2:	6830      	ldr	r0, [r6, #0]
c0de1ea4:	f240 2127 	movw	r1, #551	; 0x227
c0de1ea8:	4288      	cmp	r0, r1
c0de1eaa:	d246      	bcs.n	c0de1f3a <cbor_get_containerInfo+0x10a>
c0de1eac:	f007 fd48 	bl	c0de9940 <check_app_canary>
c0de1eb0:	4628      	mov	r0, r5
c0de1eb2:	f000 fa8c 	bl	c0de23ce <cbor_value_advance>
c0de1eb6:	2800      	cmp	r0, #0
c0de1eb8:	d041      	beq.n	c0de1f3e <cbor_get_containerInfo+0x10e>
c0de1eba:	f240 1101 	movw	r1, #257	; 0x101
c0de1ebe:	4288      	cmp	r0, r1
c0de1ec0:	d04d      	beq.n	c0de1f5e <cbor_get_containerInfo+0x12e>
c0de1ec2:	f240 210a 	movw	r1, #522	; 0x20a
c0de1ec6:	4288      	cmp	r0, r1
c0de1ec8:	bf14      	ite	ne
c0de1eca:	2621      	movne	r6, #33	; 0x21
c0de1ecc:	2623      	moveq	r6, #35	; 0x23
c0de1ece:	e7bf      	b.n	c0de1e50 <cbor_get_containerInfo+0x20>
c0de1ed0:	4628      	mov	r0, r5
c0de1ed2:	f000 fa7c 	bl	c0de23ce <cbor_value_advance>
c0de1ed6:	b160      	cbz	r0, c0de1ef2 <cbor_get_containerInfo+0xc2>
c0de1ed8:	f240 1101 	movw	r1, #257	; 0x101
c0de1edc:	4288      	cmp	r0, r1
c0de1ede:	d006      	beq.n	c0de1eee <cbor_get_containerInfo+0xbe>
c0de1ee0:	f240 210a 	movw	r1, #522	; 0x20a
c0de1ee4:	4288      	cmp	r0, r1
c0de1ee6:	bf14      	ite	ne
c0de1ee8:	2621      	movne	r6, #33	; 0x21
c0de1eea:	2623      	moveq	r6, #35	; 0x23
c0de1eec:	e7ac      	b.n	c0de1e48 <cbor_get_containerInfo+0x18>
c0de1eee:	2622      	movs	r6, #34	; 0x22
c0de1ef0:	e7aa      	b.n	c0de1e48 <cbor_get_containerInfo+0x18>
c0de1ef2:	7ba8      	ldrb	r0, [r5, #14]
c0de1ef4:	2860      	cmp	r0, #96	; 0x60
c0de1ef6:	d11e      	bne.n	c0de1f36 <cbor_get_containerInfo+0x106>
c0de1ef8:	2064      	movs	r0, #100	; 0x64
c0de1efa:	f104 0608 	add.w	r6, r4, #8
c0de1efe:	73e8      	strb	r0, [r5, #15]
c0de1f00:	1d21      	adds	r1, r4, #4
c0de1f02:	4628      	mov	r0, r5
c0de1f04:	4632      	mov	r2, r6
c0de1f06:	2300      	movs	r3, #0
c0de1f08:	f000 fc93 	bl	c0de2832 <_cbor_value_get_string_chunk>
c0de1f0c:	2800      	cmp	r0, #0
c0de1f0e:	d1e3      	bne.n	c0de1ed8 <cbor_get_containerInfo+0xa8>
c0de1f10:	6830      	ldr	r0, [r6, #0]
c0de1f12:	f240 2126 	movw	r1, #550	; 0x226
c0de1f16:	4288      	cmp	r0, r1
c0de1f18:	d80f      	bhi.n	c0de1f3a <cbor_get_containerInfo+0x10a>
c0de1f1a:	4628      	mov	r0, r5
c0de1f1c:	f000 fa57 	bl	c0de23ce <cbor_value_advance>
c0de1f20:	2800      	cmp	r0, #0
c0de1f22:	d1d9      	bne.n	c0de1ed8 <cbor_get_containerInfo+0xa8>
c0de1f24:	7ba8      	ldrb	r0, [r5, #14]
c0de1f26:	2800      	cmp	r0, #0
c0de1f28:	f47f af8d 	bne.w	c0de1e46 <cbor_get_containerInfo+0x16>
c0de1f2c:	7be9      	ldrb	r1, [r5, #15]
c0de1f2e:	0788      	lsls	r0, r1, #30
c0de1f30:	d41b      	bmi.n	c0de1f6a <cbor_get_containerInfo+0x13a>
c0de1f32:	89a8      	ldrh	r0, [r5, #12]
c0de1f34:	e01d      	b.n	c0de1f72 <cbor_get_containerInfo+0x142>
c0de1f36:	2624      	movs	r6, #36	; 0x24
c0de1f38:	e786      	b.n	c0de1e48 <cbor_get_containerInfo+0x18>
c0de1f3a:	2609      	movs	r6, #9
c0de1f3c:	e784      	b.n	c0de1e48 <cbor_get_containerInfo+0x18>
c0de1f3e:	6820      	ldr	r0, [r4, #0]
c0de1f40:	2803      	cmp	r0, #3
c0de1f42:	d30e      	bcc.n	c0de1f62 <cbor_get_containerInfo+0x132>
c0de1f44:	3802      	subs	r0, #2
c0de1f46:	6020      	str	r0, [r4, #0]
c0de1f48:	4628      	mov	r0, r5
c0de1f4a:	4621      	mov	r1, r4
c0de1f4c:	f000 f81a 	bl	c0de1f84 <cbor_check_optFields>
c0de1f50:	4606      	mov	r6, r0
c0de1f52:	f007 fcf5 	bl	c0de9940 <check_app_canary>
c0de1f56:	2e00      	cmp	r6, #0
c0de1f58:	bf08      	it	eq
c0de1f5a:	2600      	moveq	r6, #0
c0de1f5c:	e778      	b.n	c0de1e50 <cbor_get_containerInfo+0x20>
c0de1f5e:	2622      	movs	r6, #34	; 0x22
c0de1f60:	e776      	b.n	c0de1e50 <cbor_get_containerInfo+0x20>
c0de1f62:	2000      	movs	r0, #0
c0de1f64:	2600      	movs	r6, #0
c0de1f66:	82a0      	strh	r0, [r4, #20]
c0de1f68:	e772      	b.n	c0de1e50 <cbor_get_containerInfo+0x20>
c0de1f6a:	4628      	mov	r0, r5
c0de1f6c:	f000 f88a 	bl	c0de2084 <_cbor_value_decode_int64_internal>
c0de1f70:	7be9      	ldrb	r1, [r5, #15]
c0de1f72:	0149      	lsls	r1, r1, #5
c0de1f74:	b249      	sxtb	r1, r1
c0de1f76:	ea80 10e1 	eor.w	r0, r0, r1, asr #7
c0de1f7a:	2802      	cmp	r0, #2
c0de1f7c:	f47f af63 	bne.w	c0de1e46 <cbor_get_containerInfo+0x16>
c0de1f80:	e77c      	b.n	c0de1e7c <cbor_get_containerInfo+0x4c>
	...

c0de1f84 <cbor_check_optFields>:
c0de1f84:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de1f88:	b081      	sub	sp, #4
c0de1f8a:	468a      	mov	sl, r1
c0de1f8c:	6809      	ldr	r1, [r1, #0]
c0de1f8e:	f04f 0800 	mov.w	r8, #0
c0de1f92:	2900      	cmp	r1, #0
c0de1f94:	d059      	beq.n	c0de204a <cbor_check_optFields+0xc6>
c0de1f96:	4606      	mov	r6, r0
c0de1f98:	2400      	movs	r4, #0
c0de1f9a:	7bb0      	ldrb	r0, [r6, #14]
c0de1f9c:	2800      	cmp	r0, #0
c0de1f9e:	d152      	bne.n	c0de2046 <cbor_check_optFields+0xc2>
c0de1fa0:	7bf5      	ldrb	r5, [r6, #15]
c0de1fa2:	07a8      	lsls	r0, r5, #30
c0de1fa4:	d402      	bmi.n	c0de1fac <cbor_check_optFields+0x28>
c0de1fa6:	89b7      	ldrh	r7, [r6, #12]
c0de1fa8:	e005      	b.n	c0de1fb6 <cbor_check_optFields+0x32>
c0de1faa:	bf00      	nop
c0de1fac:	4630      	mov	r0, r6
c0de1fae:	f000 f869 	bl	c0de2084 <_cbor_value_decode_int64_internal>
c0de1fb2:	7bf5      	ldrb	r5, [r6, #15]
c0de1fb4:	4607      	mov	r7, r0
c0de1fb6:	4630      	mov	r0, r6
c0de1fb8:	f000 fa09 	bl	c0de23ce <cbor_value_advance>
c0de1fbc:	bb98      	cbnz	r0, c0de2026 <cbor_check_optFields+0xa2>
c0de1fbe:	0168      	lsls	r0, r5, #5
c0de1fc0:	b240      	sxtb	r0, r0
c0de1fc2:	ea87 10e0 	eor.w	r0, r7, r0, asr #7
c0de1fc6:	2804      	cmp	r0, #4
c0de1fc8:	d008      	beq.n	c0de1fdc <cbor_check_optFields+0x58>
c0de1fca:	2803      	cmp	r0, #3
c0de1fcc:	d110      	bne.n	c0de1ff0 <cbor_check_optFields+0x6c>
c0de1fce:	7bb0      	ldrb	r0, [r6, #14]
c0de1fd0:	bbc8      	cbnz	r0, c0de2046 <cbor_check_optFields+0xc2>
c0de1fd2:	7bf1      	ldrb	r1, [r6, #15]
c0de1fd4:	0788      	lsls	r0, r1, #30
c0de1fd6:	d40e      	bmi.n	c0de1ff6 <cbor_check_optFields+0x72>
c0de1fd8:	89b0      	ldrh	r0, [r6, #12]
c0de1fda:	e010      	b.n	c0de1ffe <cbor_check_optFields+0x7a>
c0de1fdc:	7bb0      	ldrb	r0, [r6, #14]
c0de1fde:	28f5      	cmp	r0, #245	; 0xf5
c0de1fe0:	d131      	bne.n	c0de2046 <cbor_check_optFields+0xc2>
c0de1fe2:	89b0      	ldrh	r0, [r6, #12]
c0de1fe4:	2800      	cmp	r0, #0
c0de1fe6:	bf18      	it	ne
c0de1fe8:	2001      	movne	r0, #1
c0de1fea:	f88a 0015 	strb.w	r0, [sl, #21]
c0de1fee:	e00e      	b.n	c0de200e <cbor_check_optFields+0x8a>
c0de1ff0:	f8aa 8014 	strh.w	r8, [sl, #20]
c0de1ff4:	e00b      	b.n	c0de200e <cbor_check_optFields+0x8a>
c0de1ff6:	4630      	mov	r0, r6
c0de1ff8:	f000 f844 	bl	c0de2084 <_cbor_value_decode_int64_internal>
c0de1ffc:	7bf1      	ldrb	r1, [r6, #15]
c0de1ffe:	0149      	lsls	r1, r1, #5
c0de2000:	b249      	sxtb	r1, r1
c0de2002:	ea80 10e1 	eor.w	r0, r0, r1, asr #7
c0de2006:	28ff      	cmp	r0, #255	; 0xff
c0de2008:	d823      	bhi.n	c0de2052 <cbor_check_optFields+0xce>
c0de200a:	f88a 0014 	strb.w	r0, [sl, #20]
c0de200e:	4630      	mov	r0, r6
c0de2010:	f000 f9dd 	bl	c0de23ce <cbor_value_advance>
c0de2014:	b938      	cbnz	r0, c0de2026 <cbor_check_optFields+0xa2>
c0de2016:	f8da 0000 	ldr.w	r0, [sl]
c0de201a:	3401      	adds	r4, #1
c0de201c:	4284      	cmp	r4, r0
c0de201e:	d3bc      	bcc.n	c0de1f9a <cbor_check_optFields+0x16>
c0de2020:	f04f 0800 	mov.w	r8, #0
c0de2024:	e011      	b.n	c0de204a <cbor_check_optFields+0xc6>
c0de2026:	f240 1101 	movw	r1, #257	; 0x101
c0de202a:	4288      	cmp	r0, r1
c0de202c:	d008      	beq.n	c0de2040 <cbor_check_optFields+0xbc>
c0de202e:	f240 210a 	movw	r1, #522	; 0x20a
c0de2032:	4288      	cmp	r0, r1
c0de2034:	bf14      	ite	ne
c0de2036:	f04f 0821 	movne.w	r8, #33	; 0x21
c0de203a:	f04f 0823 	moveq.w	r8, #35	; 0x23
c0de203e:	e004      	b.n	c0de204a <cbor_check_optFields+0xc6>
c0de2040:	f04f 0822 	mov.w	r8, #34	; 0x22
c0de2044:	e001      	b.n	c0de204a <cbor_check_optFields+0xc6>
c0de2046:	f04f 0806 	mov.w	r8, #6
c0de204a:	4640      	mov	r0, r8
c0de204c:	b001      	add	sp, #4
c0de204e:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de2052:	f04f 0809 	mov.w	r8, #9
c0de2056:	e7f8      	b.n	c0de204a <cbor_check_optFields+0xc6>

c0de2058 <cbor_check_expert>:
c0de2058:	b510      	push	{r4, lr}
c0de205a:	f04f 0409 	mov.w	r4, #9
c0de205e:	b178      	cbz	r0, c0de2080 <cbor_check_expert+0x28>
c0de2060:	b171      	cbz	r1, c0de2080 <cbor_check_expert+0x28>
c0de2062:	680a      	ldr	r2, [r1, #0]
c0de2064:	2a02      	cmp	r2, #2
c0de2066:	d308      	bcc.n	c0de207a <cbor_check_expert+0x22>
c0de2068:	f7ff ff8c 	bl	c0de1f84 <cbor_check_optFields>
c0de206c:	4604      	mov	r4, r0
c0de206e:	f007 fc67 	bl	c0de9940 <check_app_canary>
c0de2072:	2c00      	cmp	r4, #0
c0de2074:	bf08      	it	eq
c0de2076:	2400      	moveq	r4, #0
c0de2078:	e002      	b.n	c0de2080 <cbor_check_expert+0x28>
c0de207a:	2000      	movs	r0, #0
c0de207c:	2400      	movs	r4, #0
c0de207e:	8288      	strh	r0, [r1, #20]
c0de2080:	4620      	mov	r0, r4
c0de2082:	bd10      	pop	{r4, pc}

c0de2084 <_cbor_value_decode_int64_internal>:
c0de2084:	b510      	push	{r4, lr}
c0de2086:	b084      	sub	sp, #16
c0de2088:	7bc1      	ldrb	r1, [r0, #15]
c0de208a:	078a      	lsls	r2, r1, #30
c0de208c:	d401      	bmi.n	c0de2092 <_cbor_value_decode_int64_internal+0xe>
c0de208e:	7b82      	ldrb	r2, [r0, #14]
c0de2090:	2afa      	cmp	r2, #250	; 0xfa
c0de2092:	07c9      	lsls	r1, r1, #31
c0de2094:	d106      	bne.n	c0de20a4 <_cbor_value_decode_int64_internal+0x20>
c0de2096:	6801      	ldr	r1, [r0, #0]
c0de2098:	790a      	ldrb	r2, [r1, #4]
c0de209a:	07d2      	lsls	r2, r2, #31
c0de209c:	d109      	bne.n	c0de20b2 <_cbor_value_decode_int64_internal+0x2e>
c0de209e:	6840      	ldr	r0, [r0, #4]
c0de20a0:	1c44      	adds	r4, r0, #1
c0de20a2:	e00f      	b.n	c0de20c4 <_cbor_value_decode_int64_internal+0x40>
c0de20a4:	6801      	ldr	r1, [r0, #0]
c0de20a6:	790a      	ldrb	r2, [r1, #4]
c0de20a8:	07d2      	lsls	r2, r2, #31
c0de20aa:	d118      	bne.n	c0de20de <_cbor_value_decode_int64_internal+0x5a>
c0de20ac:	6840      	ldr	r0, [r0, #4]
c0de20ae:	1c44      	adds	r4, r0, #1
c0de20b0:	e01e      	b.n	c0de20f0 <_cbor_value_decode_int64_internal+0x6c>
c0de20b2:	6809      	ldr	r1, [r1, #0]
c0de20b4:	6840      	ldr	r0, [r0, #4]
c0de20b6:	f8d1 c004 	ldr.w	ip, [r1, #4]
c0de20ba:	ac03      	add	r4, sp, #12
c0de20bc:	4621      	mov	r1, r4
c0de20be:	2201      	movs	r2, #1
c0de20c0:	2304      	movs	r3, #4
c0de20c2:	47e0      	blx	ip
c0de20c4:	7820      	ldrb	r0, [r4, #0]
c0de20c6:	78a1      	ldrb	r1, [r4, #2]
c0de20c8:	78e2      	ldrb	r2, [r4, #3]
c0de20ca:	7863      	ldrb	r3, [r4, #1]
c0de20cc:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de20d0:	ea40 2003 	orr.w	r0, r0, r3, lsl #8
c0de20d4:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de20d8:	ba00      	rev	r0, r0
c0de20da:	2100      	movs	r1, #0
c0de20dc:	e020      	b.n	c0de2120 <_cbor_value_decode_int64_internal+0x9c>
c0de20de:	6809      	ldr	r1, [r1, #0]
c0de20e0:	6840      	ldr	r0, [r0, #4]
c0de20e2:	f8d1 c004 	ldr.w	ip, [r1, #4]
c0de20e6:	466c      	mov	r4, sp
c0de20e8:	4621      	mov	r1, r4
c0de20ea:	2201      	movs	r2, #1
c0de20ec:	2308      	movs	r3, #8
c0de20ee:	47e0      	blx	ip
c0de20f0:	4620      	mov	r0, r4
c0de20f2:	f810 1f04 	ldrb.w	r1, [r0, #4]!
c0de20f6:	7962      	ldrb	r2, [r4, #5]
c0de20f8:	7883      	ldrb	r3, [r0, #2]
c0de20fa:	78c0      	ldrb	r0, [r0, #3]
c0de20fc:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de2100:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de2104:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de2108:	7821      	ldrb	r1, [r4, #0]
c0de210a:	78a2      	ldrb	r2, [r4, #2]
c0de210c:	78e3      	ldrb	r3, [r4, #3]
c0de210e:	7864      	ldrb	r4, [r4, #1]
c0de2110:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de2114:	ea41 2104 	orr.w	r1, r1, r4, lsl #8
c0de2118:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de211c:	ba09      	rev	r1, r1
c0de211e:	ba00      	rev	r0, r0
c0de2120:	b004      	add	sp, #16
c0de2122:	bd10      	pop	{r4, pc}

c0de2124 <cbor_parser_init>:
c0de2124:	b580      	push	{r7, lr}
c0de2126:	f8dd c008 	ldr.w	ip, [sp, #8]
c0de212a:	f04f 0e00 	mov.w	lr, #0
c0de212e:	4401      	add	r1, r0
c0de2130:	e9c3 1e00 	strd	r1, lr, [r3]
c0de2134:	2101      	movs	r1, #1
c0de2136:	711a      	strb	r2, [r3, #4]
c0de2138:	e9cc 3000 	strd	r3, r0, [ip]
c0de213c:	f8cc 1008 	str.w	r1, [ip, #8]
c0de2140:	4660      	mov	r0, ip
c0de2142:	f88c e00f 	strb.w	lr, [ip, #15]
c0de2146:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de214a:	f000 b800 	b.w	c0de214e <preparse_value>

c0de214e <preparse_value>:
c0de214e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2152:	b082      	sub	sp, #8
c0de2154:	4604      	mov	r4, r0
c0de2156:	20ff      	movs	r0, #255	; 0xff
c0de2158:	4625      	mov	r5, r4
c0de215a:	f805 0f0e 	strb.w	r0, [r5, #14]!
c0de215e:	6820      	ldr	r0, [r4, #0]
c0de2160:	7be2      	ldrb	r2, [r4, #15]
c0de2162:	7901      	ldrb	r1, [r0, #4]
c0de2164:	f002 0260 	and.w	r2, r2, #96	; 0x60
c0de2168:	07cb      	lsls	r3, r1, #31
c0de216a:	73e2      	strb	r2, [r4, #15]
c0de216c:	d104      	bne.n	c0de2178 <preparse_value+0x2a>
c0de216e:	6802      	ldr	r2, [r0, #0]
c0de2170:	6863      	ldr	r3, [r4, #4]
c0de2172:	429a      	cmp	r2, r3
c0de2174:	d109      	bne.n	c0de218a <preparse_value+0x3c>
c0de2176:	e060      	b.n	c0de223a <preparse_value+0xec>
c0de2178:	6800      	ldr	r0, [r0, #0]
c0de217a:	2101      	movs	r1, #1
c0de217c:	6802      	ldr	r2, [r0, #0]
c0de217e:	6860      	ldr	r0, [r4, #4]
c0de2180:	4790      	blx	r2
c0de2182:	2800      	cmp	r0, #0
c0de2184:	d059      	beq.n	c0de223a <preparse_value+0xec>
c0de2186:	6820      	ldr	r0, [r4, #0]
c0de2188:	7901      	ldrb	r1, [r0, #4]
c0de218a:	07c9      	lsls	r1, r1, #31
c0de218c:	d101      	bne.n	c0de2192 <preparse_value+0x44>
c0de218e:	6866      	ldr	r6, [r4, #4]
c0de2190:	e00a      	b.n	c0de21a8 <preparse_value+0x5a>
c0de2192:	6800      	ldr	r0, [r0, #0]
c0de2194:	f10d 0607 	add.w	r6, sp, #7
c0de2198:	6847      	ldr	r7, [r0, #4]
c0de219a:	6860      	ldr	r0, [r4, #4]
c0de219c:	4631      	mov	r1, r6
c0de219e:	2200      	movs	r2, #0
c0de21a0:	2301      	movs	r3, #1
c0de21a2:	47b8      	blx	r7
c0de21a4:	2800      	cmp	r0, #0
c0de21a6:	d048      	beq.n	c0de223a <preparse_value+0xec>
c0de21a8:	f896 8000 	ldrb.w	r8, [r6]
c0de21ac:	4626      	mov	r6, r4
c0de21ae:	f008 001f 	and.w	r0, r8, #31
c0de21b2:	f008 01e0 	and.w	r1, r8, #224	; 0xe0
c0de21b6:	f826 0f0c 	strh.w	r0, [r6, #12]!
c0de21ba:	281c      	cmp	r0, #28
c0de21bc:	70b1      	strb	r1, [r6, #2]
c0de21be:	f88d 0007 	strb.w	r0, [sp, #7]
c0de21c2:	d313      	bcc.n	c0de21ec <preparse_value+0x9e>
c0de21c4:	281f      	cmp	r0, #31
c0de21c6:	f040 80b2 	bne.w	c0de232e <preparse_value+0x1e0>
c0de21ca:	2004      	movs	r0, #4
c0de21cc:	ea80 1058 	eor.w	r0, r0, r8, lsr #5
c0de21d0:	2807      	cmp	r0, #7
c0de21d2:	d835      	bhi.n	c0de2240 <preparse_value+0xf2>
c0de21d4:	2201      	movs	r2, #1
c0de21d6:	fa02 f000 	lsl.w	r0, r2, r0
c0de21da:	f010 0fc3 	tst.w	r0, #195	; 0xc3
c0de21de:	d02f      	beq.n	c0de2240 <preparse_value+0xf2>
c0de21e0:	7be0      	ldrb	r0, [r4, #15]
c0de21e2:	73a1      	strb	r1, [r4, #14]
c0de21e4:	f040 0010 	orr.w	r0, r0, #16
c0de21e8:	73e0      	strb	r0, [r4, #15]
c0de21ea:	e09b      	b.n	c0de2324 <preparse_value+0x1d6>
c0de21ec:	f1b0 0118 	subs.w	r1, r0, #24
c0de21f0:	f04f 0201 	mov.w	r2, #1
c0de21f4:	fa02 f701 	lsl.w	r7, r2, r1
c0de21f8:	bf38      	it	cc
c0de21fa:	2700      	movcc	r7, #0
c0de21fc:	d353      	bcc.n	c0de22a6 <preparse_value+0x158>
c0de21fe:	6820      	ldr	r0, [r4, #0]
c0de2200:	7901      	ldrb	r1, [r0, #4]
c0de2202:	07c9      	lsls	r1, r1, #31
c0de2204:	f107 0101 	add.w	r1, r7, #1
c0de2208:	d111      	bne.n	c0de222e <preparse_value+0xe0>
c0de220a:	6800      	ldr	r0, [r0, #0]
c0de220c:	6862      	ldr	r2, [r4, #4]
c0de220e:	1a80      	subs	r0, r0, r2
c0de2210:	4288      	cmp	r0, r1
c0de2212:	d312      	bcc.n	c0de223a <preparse_value+0xec>
c0de2214:	2000      	movs	r0, #0
c0de2216:	2f02      	cmp	r7, #2
c0de2218:	8030      	strh	r0, [r6, #0]
c0de221a:	d019      	beq.n	c0de2250 <preparse_value+0x102>
c0de221c:	2f01      	cmp	r7, #1
c0de221e:	d11e      	bne.n	c0de225e <preparse_value+0x110>
c0de2220:	6820      	ldr	r0, [r4, #0]
c0de2222:	7901      	ldrb	r1, [r0, #4]
c0de2224:	07c9      	lsls	r1, r1, #31
c0de2226:	d123      	bne.n	c0de2270 <preparse_value+0x122>
c0de2228:	6860      	ldr	r0, [r4, #4]
c0de222a:	1c47      	adds	r7, r0, #1
c0de222c:	e02a      	b.n	c0de2284 <preparse_value+0x136>
c0de222e:	6800      	ldr	r0, [r0, #0]
c0de2230:	6802      	ldr	r2, [r0, #0]
c0de2232:	6860      	ldr	r0, [r4, #4]
c0de2234:	4790      	blx	r2
c0de2236:	2800      	cmp	r0, #0
c0de2238:	d1ec      	bne.n	c0de2214 <preparse_value+0xc6>
c0de223a:	f240 1701 	movw	r7, #257	; 0x101
c0de223e:	e072      	b.n	c0de2326 <preparse_value+0x1d8>
c0de2240:	f240 1705 	movw	r7, #261	; 0x105
c0de2244:	f1b8 0fdf 	cmp.w	r8, #223	; 0xdf
c0de2248:	bf88      	it	hi
c0de224a:	f44f 7781 	movhi.w	r7, #258	; 0x102
c0de224e:	e06a      	b.n	c0de2326 <preparse_value+0x1d8>
c0de2250:	6820      	ldr	r0, [r4, #0]
c0de2252:	7901      	ldrb	r1, [r0, #4]
c0de2254:	07c9      	lsls	r1, r1, #31
c0de2256:	d117      	bne.n	c0de2288 <preparse_value+0x13a>
c0de2258:	6860      	ldr	r0, [r4, #4]
c0de225a:	3001      	adds	r0, #1
c0de225c:	e01c      	b.n	c0de2298 <preparse_value+0x14a>
c0de225e:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de2262:	7be1      	ldrb	r1, [r4, #15]
c0de2264:	f000 0003 	and.w	r0, r0, #3
c0de2268:	4308      	orrs	r0, r1
c0de226a:	73e0      	strb	r0, [r4, #15]
c0de226c:	2000      	movs	r0, #0
c0de226e:	e01a      	b.n	c0de22a6 <preparse_value+0x158>
c0de2270:	6800      	ldr	r0, [r0, #0]
c0de2272:	f10d 0706 	add.w	r7, sp, #6
c0de2276:	f8d0 c004 	ldr.w	ip, [r0, #4]
c0de227a:	6860      	ldr	r0, [r4, #4]
c0de227c:	4639      	mov	r1, r7
c0de227e:	2201      	movs	r2, #1
c0de2280:	2301      	movs	r3, #1
c0de2282:	47e0      	blx	ip
c0de2284:	7838      	ldrb	r0, [r7, #0]
c0de2286:	e00d      	b.n	c0de22a4 <preparse_value+0x156>
c0de2288:	6800      	ldr	r0, [r0, #0]
c0de228a:	4631      	mov	r1, r6
c0de228c:	6847      	ldr	r7, [r0, #4]
c0de228e:	6860      	ldr	r0, [r4, #4]
c0de2290:	2201      	movs	r2, #1
c0de2292:	2302      	movs	r3, #2
c0de2294:	47b8      	blx	r7
c0de2296:	4630      	mov	r0, r6
c0de2298:	7801      	ldrb	r1, [r0, #0]
c0de229a:	7840      	ldrb	r0, [r0, #1]
c0de229c:	ea41 2000 	orr.w	r0, r1, r0, lsl #8
c0de22a0:	ba00      	rev	r0, r0
c0de22a2:	0c00      	lsrs	r0, r0, #16
c0de22a4:	8030      	strh	r0, [r6, #0]
c0de22a6:	2107      	movs	r1, #7
c0de22a8:	ebb1 1f58 	cmp.w	r1, r8, lsr #5
c0de22ac:	d00a      	beq.n	c0de22c4 <preparse_value+0x176>
c0de22ae:	ea4f 1058 	mov.w	r0, r8, lsr #5
c0de22b2:	2801      	cmp	r0, #1
c0de22b4:	d136      	bne.n	c0de2324 <preparse_value+0x1d6>
c0de22b6:	7be0      	ldrb	r0, [r4, #15]
c0de22b8:	2700      	movs	r7, #0
c0de22ba:	f040 0004 	orr.w	r0, r0, #4
c0de22be:	73e0      	strb	r0, [r4, #15]
c0de22c0:	73a7      	strb	r7, [r4, #14]
c0de22c2:	e030      	b.n	c0de2326 <preparse_value+0x1d8>
c0de22c4:	f89d 1007 	ldrb.w	r1, [sp, #7]
c0de22c8:	291b      	cmp	r1, #27
c0de22ca:	d824      	bhi.n	c0de2316 <preparse_value+0x1c8>
c0de22cc:	2201      	movs	r2, #1
c0de22ce:	408a      	lsls	r2, r1
c0de22d0:	f012 7f38 	tst.w	r2, #48234496	; 0x2e00000
c0de22d4:	d106      	bne.n	c0de22e4 <preparse_value+0x196>
c0de22d6:	f012 6f40 	tst.w	r2, #201326592	; 0xc000000
c0de22da:	d014      	beq.n	c0de2306 <preparse_value+0x1b8>
c0de22dc:	7be0      	ldrb	r0, [r4, #15]
c0de22de:	f040 0002 	orr.w	r0, r0, #2
c0de22e2:	73e0      	strb	r0, [r4, #15]
c0de22e4:	6820      	ldr	r0, [r4, #0]
c0de22e6:	7901      	ldrb	r1, [r0, #4]
c0de22e8:	07c9      	lsls	r1, r1, #31
c0de22ea:	d103      	bne.n	c0de22f4 <preparse_value+0x1a6>
c0de22ec:	6860      	ldr	r0, [r4, #4]
c0de22ee:	7800      	ldrb	r0, [r0, #0]
c0de22f0:	73a0      	strb	r0, [r4, #14]
c0de22f2:	e017      	b.n	c0de2324 <preparse_value+0x1d6>
c0de22f4:	6800      	ldr	r0, [r0, #0]
c0de22f6:	4629      	mov	r1, r5
c0de22f8:	6846      	ldr	r6, [r0, #4]
c0de22fa:	6860      	ldr	r0, [r4, #4]
c0de22fc:	2200      	movs	r2, #0
c0de22fe:	2301      	movs	r3, #1
c0de2300:	2700      	movs	r7, #0
c0de2302:	47b0      	blx	r6
c0de2304:	e00f      	b.n	c0de2326 <preparse_value+0x1d8>
c0de2306:	2918      	cmp	r1, #24
c0de2308:	d105      	bne.n	c0de2316 <preparse_value+0x1c8>
c0de230a:	281f      	cmp	r0, #31
c0de230c:	d80a      	bhi.n	c0de2324 <preparse_value+0x1d6>
c0de230e:	20ff      	movs	r0, #255	; 0xff
c0de2310:	f44f 7783 	mov.w	r7, #262	; 0x106
c0de2314:	e004      	b.n	c0de2320 <preparse_value+0x1d2>
c0de2316:	2914      	cmp	r1, #20
c0de2318:	d104      	bne.n	c0de2324 <preparse_value+0x1d6>
c0de231a:	2700      	movs	r7, #0
c0de231c:	20f5      	movs	r0, #245	; 0xf5
c0de231e:	8037      	strh	r7, [r6, #0]
c0de2320:	7028      	strb	r0, [r5, #0]
c0de2322:	e000      	b.n	c0de2326 <preparse_value+0x1d8>
c0de2324:	2700      	movs	r7, #0
c0de2326:	4638      	mov	r0, r7
c0de2328:	b002      	add	sp, #8
c0de232a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de232e:	f240 1705 	movw	r7, #261	; 0x105
c0de2332:	f1b8 0fdf 	cmp.w	r8, #223	; 0xdf
c0de2336:	bf88      	it	hi
c0de2338:	f240 1703 	movwhi	r7, #259	; 0x103
c0de233c:	e7f3      	b.n	c0de2326 <preparse_value+0x1d8>

c0de233e <preparse_next_value_nodecrement>:
c0de233e:	b510      	push	{r4, lr}
c0de2340:	b082      	sub	sp, #8
c0de2342:	4604      	mov	r4, r0
c0de2344:	6880      	ldr	r0, [r0, #8]
c0de2346:	3001      	adds	r0, #1
c0de2348:	d004      	beq.n	c0de2354 <preparse_next_value_nodecrement+0x16>
c0de234a:	4620      	mov	r0, r4
c0de234c:	f7ff feff 	bl	c0de214e <preparse_value>
c0de2350:	b002      	add	sp, #8
c0de2352:	bd10      	pop	{r4, pc}
c0de2354:	6820      	ldr	r0, [r4, #0]
c0de2356:	7901      	ldrb	r1, [r0, #4]
c0de2358:	07ca      	lsls	r2, r1, #31
c0de235a:	d104      	bne.n	c0de2366 <preparse_next_value_nodecrement+0x28>
c0de235c:	6802      	ldr	r2, [r0, #0]
c0de235e:	6863      	ldr	r3, [r4, #4]
c0de2360:	429a      	cmp	r2, r3
c0de2362:	d109      	bne.n	c0de2378 <preparse_next_value_nodecrement+0x3a>
c0de2364:	e7f1      	b.n	c0de234a <preparse_next_value_nodecrement+0xc>
c0de2366:	6800      	ldr	r0, [r0, #0]
c0de2368:	2101      	movs	r1, #1
c0de236a:	6802      	ldr	r2, [r0, #0]
c0de236c:	6860      	ldr	r0, [r4, #4]
c0de236e:	4790      	blx	r2
c0de2370:	2800      	cmp	r0, #0
c0de2372:	d0ea      	beq.n	c0de234a <preparse_next_value_nodecrement+0xc>
c0de2374:	6820      	ldr	r0, [r4, #0]
c0de2376:	7901      	ldrb	r1, [r0, #4]
c0de2378:	07c9      	lsls	r1, r1, #31
c0de237a:	d106      	bne.n	c0de238a <preparse_next_value_nodecrement+0x4c>
c0de237c:	6860      	ldr	r0, [r4, #4]
c0de237e:	7801      	ldrb	r1, [r0, #0]
c0de2380:	f10d 0007 	add.w	r0, sp, #7
c0de2384:	f88d 1007 	strb.w	r1, [sp, #7]
c0de2388:	e00a      	b.n	c0de23a0 <preparse_next_value_nodecrement+0x62>
c0de238a:	6800      	ldr	r0, [r0, #0]
c0de238c:	f10d 0107 	add.w	r1, sp, #7
c0de2390:	f8d0 c004 	ldr.w	ip, [r0, #4]
c0de2394:	6860      	ldr	r0, [r4, #4]
c0de2396:	2200      	movs	r2, #0
c0de2398:	2301      	movs	r3, #1
c0de239a:	47e0      	blx	ip
c0de239c:	f89d 1007 	ldrb.w	r1, [sp, #7]
c0de23a0:	2800      	cmp	r0, #0
c0de23a2:	d0d2      	beq.n	c0de234a <preparse_next_value_nodecrement+0xc>
c0de23a4:	29ff      	cmp	r1, #255	; 0xff
c0de23a6:	d1d0      	bne.n	c0de234a <preparse_next_value_nodecrement+0xc>
c0de23a8:	7be1      	ldrb	r1, [r4, #15]
c0de23aa:	f001 0060 	and.w	r0, r1, #96	; 0x60
c0de23ae:	2860      	cmp	r0, #96	; 0x60
c0de23b0:	d002      	beq.n	c0de23b8 <preparse_next_value_nodecrement+0x7a>
c0de23b2:	7ba0      	ldrb	r0, [r4, #14]
c0de23b4:	28c0      	cmp	r0, #192	; 0xc0
c0de23b6:	d102      	bne.n	c0de23be <preparse_next_value_nodecrement+0x80>
c0de23b8:	f44f 7081 	mov.w	r0, #258	; 0x102
c0de23bc:	e7c8      	b.n	c0de2350 <preparse_next_value_nodecrement+0x12>
c0de23be:	20ff      	movs	r0, #255	; 0xff
c0de23c0:	73a0      	strb	r0, [r4, #14]
c0de23c2:	2000      	movs	r0, #0
c0de23c4:	f041 0110 	orr.w	r1, r1, #16
c0de23c8:	60a0      	str	r0, [r4, #8]
c0de23ca:	73e1      	strb	r1, [r4, #15]
c0de23cc:	e7c0      	b.n	c0de2350 <preparse_next_value_nodecrement+0x12>

c0de23ce <cbor_value_advance>:
c0de23ce:	6881      	ldr	r1, [r0, #8]
c0de23d0:	b119      	cbz	r1, c0de23da <cbor_value_advance+0xc>
c0de23d2:	f44f 6180 	mov.w	r1, #1024	; 0x400
c0de23d6:	f000 b81d 	b.w	c0de2414 <advance_recursive>
c0de23da:	2003      	movs	r0, #3
c0de23dc:	4770      	bx	lr

c0de23de <advance_internal>:
c0de23de:	b510      	push	{r4, lr}
c0de23e0:	4604      	mov	r4, r0
c0de23e2:	f000 f8a9 	bl	c0de2538 <extract_number_and_advance>
c0de23e6:	7ba1      	ldrb	r1, [r4, #14]
c0de23e8:	f041 0120 	orr.w	r1, r1, #32
c0de23ec:	2960      	cmp	r1, #96	; 0x60
c0de23ee:	d10c      	bne.n	c0de240a <advance_internal+0x2c>
c0de23f0:	4601      	mov	r1, r0
c0de23f2:	6820      	ldr	r0, [r4, #0]
c0de23f4:	7902      	ldrb	r2, [r0, #4]
c0de23f6:	07d2      	lsls	r2, r2, #31
c0de23f8:	d103      	bne.n	c0de2402 <advance_internal+0x24>
c0de23fa:	6860      	ldr	r0, [r4, #4]
c0de23fc:	4408      	add	r0, r1
c0de23fe:	6060      	str	r0, [r4, #4]
c0de2400:	e003      	b.n	c0de240a <advance_internal+0x2c>
c0de2402:	6800      	ldr	r0, [r0, #0]
c0de2404:	6882      	ldr	r2, [r0, #8]
c0de2406:	6860      	ldr	r0, [r4, #4]
c0de2408:	4790      	blx	r2
c0de240a:	4620      	mov	r0, r4
c0de240c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2410:	f000 b8e8 	b.w	c0de25e4 <preparse_next_value>

c0de2414 <advance_recursive>:
c0de2414:	b570      	push	{r4, r5, r6, lr}
c0de2416:	b088      	sub	sp, #32
c0de2418:	4604      	mov	r4, r0
c0de241a:	7b80      	ldrb	r0, [r0, #14]
c0de241c:	f080 0280 	eor.w	r2, r0, #128	; 0x80
c0de2420:	00c3      	lsls	r3, r0, #3
c0de2422:	0612      	lsls	r2, r2, #24
c0de2424:	ea43 7252 	orr.w	r2, r3, r2, lsr #29
c0de2428:	b2d2      	uxtb	r2, r2
c0de242a:	2a07      	cmp	r2, #7
c0de242c:	d833      	bhi.n	c0de2496 <advance_recursive+0x82>
c0de242e:	460d      	mov	r5, r1
c0de2430:	2101      	movs	r1, #1
c0de2432:	4091      	lsls	r1, r2
c0de2434:	f011 0fc3 	tst.w	r1, #195	; 0xc3
c0de2438:	d02d      	beq.n	c0de2496 <advance_recursive+0x82>
c0de243a:	f000 00df 	and.w	r0, r0, #223	; 0xdf
c0de243e:	2880      	cmp	r0, #128	; 0x80
c0de2440:	d111      	bne.n	c0de2466 <advance_recursive+0x52>
c0de2442:	b365      	cbz	r5, c0de249e <advance_recursive+0x8a>
c0de2444:	a903      	add	r1, sp, #12
c0de2446:	4620      	mov	r0, r4
c0de2448:	f000 f834 	bl	c0de24b4 <cbor_value_enter_container>
c0de244c:	bb70      	cbnz	r0, c0de24ac <advance_recursive+0x98>
c0de244e:	3d01      	subs	r5, #1
c0de2450:	ae03      	add	r6, sp, #12
c0de2452:	bf00      	nop
c0de2454:	9805      	ldr	r0, [sp, #20]
c0de2456:	b328      	cbz	r0, c0de24a4 <advance_recursive+0x90>
c0de2458:	4630      	mov	r0, r6
c0de245a:	4629      	mov	r1, r5
c0de245c:	f7ff ffda 	bl	c0de2414 <advance_recursive>
c0de2460:	2800      	cmp	r0, #0
c0de2462:	d0f7      	beq.n	c0de2454 <advance_recursive+0x40>
c0de2464:	e022      	b.n	c0de24ac <advance_recursive+0x98>
c0de2466:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
c0de246a:	9003      	str	r0, [sp, #12]
c0de246c:	4810      	ldr	r0, [pc, #64]	; (c0de24b0 <advance_recursive+0x9c>)
c0de246e:	aa03      	add	r2, sp, #12
c0de2470:	4478      	add	r0, pc
c0de2472:	9001      	str	r0, [sp, #4]
c0de2474:	f10d 031f 	add.w	r3, sp, #31
c0de2478:	4620      	mov	r0, r4
c0de247a:	2100      	movs	r1, #0
c0de247c:	9400      	str	r4, [sp, #0]
c0de247e:	f000 fa1f 	bl	c0de28c0 <iterate_string_chunks>
c0de2482:	f89d 101f 	ldrb.w	r1, [sp, #31]
c0de2486:	2800      	cmp	r0, #0
c0de2488:	fab1 f181 	clz	r1, r1
c0de248c:	ea4f 1151 	mov.w	r1, r1, lsr #5
c0de2490:	bf08      	it	eq
c0de2492:	07c8      	lsleq	r0, r1, #31
c0de2494:	e00a      	b.n	c0de24ac <advance_recursive+0x98>
c0de2496:	4620      	mov	r0, r4
c0de2498:	f7ff ffa1 	bl	c0de23de <advance_internal>
c0de249c:	e006      	b.n	c0de24ac <advance_recursive+0x98>
c0de249e:	f240 4001 	movw	r0, #1025	; 0x401
c0de24a2:	e003      	b.n	c0de24ac <advance_recursive+0x98>
c0de24a4:	a903      	add	r1, sp, #12
c0de24a6:	4620      	mov	r0, r4
c0de24a8:	f000 f884 	bl	c0de25b4 <cbor_value_leave_container>
c0de24ac:	b008      	add	sp, #32
c0de24ae:	bd70      	pop	{r4, r5, r6, pc}
c0de24b0:	0000050d 	.word	0x0000050d

c0de24b4 <cbor_value_enter_container>:
c0de24b4:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de24b6:	b081      	sub	sp, #4
c0de24b8:	e890 006c 	ldmia.w	r0, {r2, r3, r5, r6}
c0de24bc:	4607      	mov	r7, r0
c0de24be:	e881 006c 	stmia.w	r1, {r2, r3, r5, r6}
c0de24c2:	7bf8      	ldrb	r0, [r7, #15]
c0de24c4:	460c      	mov	r4, r1
c0de24c6:	06c0      	lsls	r0, r0, #27
c0de24c8:	d40d      	bmi.n	c0de24e6 <cbor_value_enter_container+0x32>
c0de24ca:	4620      	mov	r0, r4
c0de24cc:	f000 f834 	bl	c0de2538 <extract_number_and_advance>
c0de24d0:	f1b0 32ff 	subs.w	r2, r0, #4294967295	; 0xffffffff
c0de24d4:	f171 0200 	sbcs.w	r2, r1, #0
c0de24d8:	60a0      	str	r0, [r4, #8]
c0de24da:	d30f      	bcc.n	c0de24fc <cbor_value_enter_container+0x48>
c0de24dc:	6878      	ldr	r0, [r7, #4]
c0de24de:	6060      	str	r0, [r4, #4]
c0de24e0:	f44f 6080 	mov.w	r0, #1024	; 0x400
c0de24e4:	e017      	b.n	c0de2516 <cbor_value_enter_container+0x62>
c0de24e6:	6820      	ldr	r0, [r4, #0]
c0de24e8:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
c0de24ec:	7901      	ldrb	r1, [r0, #4]
c0de24ee:	60a2      	str	r2, [r4, #8]
c0de24f0:	07c9      	lsls	r1, r1, #31
c0de24f2:	d112      	bne.n	c0de251a <cbor_value_enter_container+0x66>
c0de24f4:	6860      	ldr	r0, [r4, #4]
c0de24f6:	3001      	adds	r0, #1
c0de24f8:	6060      	str	r0, [r4, #4]
c0de24fa:	e013      	b.n	c0de2524 <cbor_value_enter_container+0x70>
c0de24fc:	7ba2      	ldrb	r2, [r4, #14]
c0de24fe:	2aa0      	cmp	r2, #160	; 0xa0
c0de2500:	d104      	bne.n	c0de250c <cbor_value_enter_container+0x58>
c0de2502:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
c0de2506:	dde9      	ble.n	c0de24dc <cbor_value_enter_container+0x28>
c0de2508:	0042      	lsls	r2, r0, #1
c0de250a:	60a2      	str	r2, [r4, #8]
c0de250c:	4308      	orrs	r0, r1
c0de250e:	d109      	bne.n	c0de2524 <cbor_value_enter_container+0x70>
c0de2510:	20ff      	movs	r0, #255	; 0xff
c0de2512:	73a0      	strb	r0, [r4, #14]
c0de2514:	2000      	movs	r0, #0
c0de2516:	b001      	add	sp, #4
c0de2518:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de251a:	6800      	ldr	r0, [r0, #0]
c0de251c:	2101      	movs	r1, #1
c0de251e:	6882      	ldr	r2, [r0, #8]
c0de2520:	6860      	ldr	r0, [r4, #4]
c0de2522:	4790      	blx	r2
c0de2524:	7ba0      	ldrb	r0, [r4, #14]
c0de2526:	f000 0120 	and.w	r1, r0, #32
c0de252a:	4620      	mov	r0, r4
c0de252c:	73e1      	strb	r1, [r4, #15]
c0de252e:	b001      	add	sp, #4
c0de2530:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de2534:	f7ff bf03 	b.w	c0de233e <preparse_next_value_nodecrement>

c0de2538 <extract_number_and_advance>:
c0de2538:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de253c:	b082      	sub	sp, #8
c0de253e:	4604      	mov	r4, r0
c0de2540:	7bc0      	ldrb	r0, [r0, #15]
c0de2542:	0780      	lsls	r0, r0, #30
c0de2544:	d403      	bmi.n	c0de254e <extract_number_and_advance+0x16>
c0de2546:	f8b4 800c 	ldrh.w	r8, [r4, #12]
c0de254a:	2600      	movs	r6, #0
c0de254c:	e004      	b.n	c0de2558 <extract_number_and_advance+0x20>
c0de254e:	4620      	mov	r0, r4
c0de2550:	f7ff fd98 	bl	c0de2084 <_cbor_value_decode_int64_internal>
c0de2554:	4680      	mov	r8, r0
c0de2556:	460e      	mov	r6, r1
c0de2558:	6820      	ldr	r0, [r4, #0]
c0de255a:	7902      	ldrb	r2, [r0, #4]
c0de255c:	07d1      	lsls	r1, r2, #31
c0de255e:	d101      	bne.n	c0de2564 <extract_number_and_advance+0x2c>
c0de2560:	6867      	ldr	r7, [r4, #4]
c0de2562:	e00a      	b.n	c0de257a <extract_number_and_advance+0x42>
c0de2564:	6800      	ldr	r0, [r0, #0]
c0de2566:	f10d 0707 	add.w	r7, sp, #7
c0de256a:	6845      	ldr	r5, [r0, #4]
c0de256c:	6860      	ldr	r0, [r4, #4]
c0de256e:	4639      	mov	r1, r7
c0de2570:	2200      	movs	r2, #0
c0de2572:	2301      	movs	r3, #1
c0de2574:	47a8      	blx	r5
c0de2576:	6820      	ldr	r0, [r4, #0]
c0de2578:	7902      	ldrb	r2, [r0, #4]
c0de257a:	7839      	ldrb	r1, [r7, #0]
c0de257c:	2701      	movs	r7, #1
c0de257e:	f001 031f 	and.w	r3, r1, #31
c0de2582:	f1b3 0118 	subs.w	r1, r3, #24
c0de2586:	fa07 f101 	lsl.w	r1, r7, r1
c0de258a:	f101 0101 	add.w	r1, r1, #1
c0de258e:	bf38      	it	cc
c0de2590:	2101      	movcc	r1, #1
c0de2592:	07d2      	lsls	r2, r2, #31
c0de2594:	f88d 3007 	strb.w	r3, [sp, #7]
c0de2598:	d103      	bne.n	c0de25a2 <extract_number_and_advance+0x6a>
c0de259a:	6860      	ldr	r0, [r4, #4]
c0de259c:	4408      	add	r0, r1
c0de259e:	6060      	str	r0, [r4, #4]
c0de25a0:	e003      	b.n	c0de25aa <extract_number_and_advance+0x72>
c0de25a2:	6800      	ldr	r0, [r0, #0]
c0de25a4:	6882      	ldr	r2, [r0, #8]
c0de25a6:	6860      	ldr	r0, [r4, #4]
c0de25a8:	4790      	blx	r2
c0de25aa:	4640      	mov	r0, r8
c0de25ac:	4631      	mov	r1, r6
c0de25ae:	b002      	add	sp, #8
c0de25b0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de25b4 <cbor_value_leave_container>:
c0de25b4:	b510      	push	{r4, lr}
c0de25b6:	684a      	ldr	r2, [r1, #4]
c0de25b8:	4604      	mov	r4, r0
c0de25ba:	6042      	str	r2, [r0, #4]
c0de25bc:	7bc8      	ldrb	r0, [r1, #15]
c0de25be:	06c0      	lsls	r0, r0, #27
c0de25c0:	d50b      	bpl.n	c0de25da <cbor_value_leave_container+0x26>
c0de25c2:	6820      	ldr	r0, [r4, #0]
c0de25c4:	7901      	ldrb	r1, [r0, #4]
c0de25c6:	07c9      	lsls	r1, r1, #31
c0de25c8:	d102      	bne.n	c0de25d0 <cbor_value_leave_container+0x1c>
c0de25ca:	1c50      	adds	r0, r2, #1
c0de25cc:	6060      	str	r0, [r4, #4]
c0de25ce:	e004      	b.n	c0de25da <cbor_value_leave_container+0x26>
c0de25d0:	6800      	ldr	r0, [r0, #0]
c0de25d2:	2101      	movs	r1, #1
c0de25d4:	6883      	ldr	r3, [r0, #8]
c0de25d6:	4610      	mov	r0, r2
c0de25d8:	4798      	blx	r3
c0de25da:	4620      	mov	r0, r4
c0de25dc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de25e0:	f000 b800 	b.w	c0de25e4 <preparse_next_value>

c0de25e4 <preparse_next_value>:
c0de25e4:	4601      	mov	r1, r0
c0de25e6:	7b80      	ldrb	r0, [r0, #14]
c0de25e8:	28c0      	cmp	r0, #192	; 0xc0
c0de25ea:	bf1c      	itt	ne
c0de25ec:	688a      	ldrne	r2, [r1, #8]
c0de25ee:	f112 0301 	addsne.w	r3, r2, #1
c0de25f2:	d108      	bne.n	c0de2606 <preparse_next_value+0x22>
c0de25f4:	28c0      	cmp	r0, #192	; 0xc0
c0de25f6:	d003      	beq.n	c0de2600 <preparse_next_value+0x1c>
c0de25f8:	7bc8      	ldrb	r0, [r1, #15]
c0de25fa:	f080 0040 	eor.w	r0, r0, #64	; 0x40
c0de25fe:	73c8      	strb	r0, [r1, #15]
c0de2600:	4608      	mov	r0, r1
c0de2602:	f7ff be9c 	b.w	c0de233e <preparse_next_value_nodecrement>
c0de2606:	3a01      	subs	r2, #1
c0de2608:	608a      	str	r2, [r1, #8]
c0de260a:	d1f3      	bne.n	c0de25f4 <preparse_next_value+0x10>
c0de260c:	7bca      	ldrb	r2, [r1, #15]
c0de260e:	20ff      	movs	r0, #255	; 0xff
c0de2610:	7388      	strb	r0, [r1, #14]
c0de2612:	f002 02ef 	and.w	r2, r2, #239	; 0xef
c0de2616:	2000      	movs	r0, #0
c0de2618:	73ca      	strb	r2, [r1, #15]
c0de261a:	4770      	bx	lr

c0de261c <_cbor_value_begin_string_iteration>:
c0de261c:	b580      	push	{r7, lr}
c0de261e:	7bc1      	ldrb	r1, [r0, #15]
c0de2620:	f041 020c 	orr.w	r2, r1, #12
c0de2624:	06c9      	lsls	r1, r1, #27
c0de2626:	73c2      	strb	r2, [r0, #15]
c0de2628:	d50c      	bpl.n	c0de2644 <_cbor_value_begin_string_iteration+0x28>
c0de262a:	6801      	ldr	r1, [r0, #0]
c0de262c:	790a      	ldrb	r2, [r1, #4]
c0de262e:	07d2      	lsls	r2, r2, #31
c0de2630:	d103      	bne.n	c0de263a <_cbor_value_begin_string_iteration+0x1e>
c0de2632:	6841      	ldr	r1, [r0, #4]
c0de2634:	3101      	adds	r1, #1
c0de2636:	6041      	str	r1, [r0, #4]
c0de2638:	e004      	b.n	c0de2644 <_cbor_value_begin_string_iteration+0x28>
c0de263a:	6809      	ldr	r1, [r1, #0]
c0de263c:	6840      	ldr	r0, [r0, #4]
c0de263e:	688a      	ldr	r2, [r1, #8]
c0de2640:	2101      	movs	r1, #1
c0de2642:	4790      	blx	r2
c0de2644:	2000      	movs	r0, #0
c0de2646:	bd80      	pop	{r7, pc}

c0de2648 <_cbor_value_finish_string_iteration>:
c0de2648:	b510      	push	{r4, lr}
c0de264a:	4604      	mov	r4, r0
c0de264c:	7bc0      	ldrb	r0, [r0, #15]
c0de264e:	06c0      	lsls	r0, r0, #27
c0de2650:	d50c      	bpl.n	c0de266c <_cbor_value_finish_string_iteration+0x24>
c0de2652:	6820      	ldr	r0, [r4, #0]
c0de2654:	7901      	ldrb	r1, [r0, #4]
c0de2656:	07c9      	lsls	r1, r1, #31
c0de2658:	d103      	bne.n	c0de2662 <_cbor_value_finish_string_iteration+0x1a>
c0de265a:	6860      	ldr	r0, [r4, #4]
c0de265c:	3001      	adds	r0, #1
c0de265e:	6060      	str	r0, [r4, #4]
c0de2660:	e004      	b.n	c0de266c <_cbor_value_finish_string_iteration+0x24>
c0de2662:	6800      	ldr	r0, [r0, #0]
c0de2664:	2101      	movs	r1, #1
c0de2666:	6882      	ldr	r2, [r0, #8]
c0de2668:	6860      	ldr	r0, [r4, #4]
c0de266a:	4790      	blx	r2
c0de266c:	4620      	mov	r0, r4
c0de266e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de2672:	f7ff bfb7 	b.w	c0de25e4 <preparse_next_value>

c0de2676 <get_string_chunk_size>:
c0de2676:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de267a:	b084      	sub	sp, #16
c0de267c:	4607      	mov	r7, r0
c0de267e:	7bc0      	ldrb	r0, [r0, #15]
c0de2680:	f010 0f14 	tst.w	r0, #20
c0de2684:	d025      	beq.n	c0de26d2 <get_string_chunk_size+0x5c>
c0de2686:	6838      	ldr	r0, [r7, #0]
c0de2688:	4688      	mov	r8, r1
c0de268a:	7901      	ldrb	r1, [r0, #4]
c0de268c:	4615      	mov	r5, r2
c0de268e:	07ca      	lsls	r2, r1, #31
c0de2690:	d104      	bne.n	c0de269c <get_string_chunk_size+0x26>
c0de2692:	6802      	ldr	r2, [r0, #0]
c0de2694:	687b      	ldr	r3, [r7, #4]
c0de2696:	429a      	cmp	r2, r3
c0de2698:	d109      	bne.n	c0de26ae <get_string_chunk_size+0x38>
c0de269a:	e057      	b.n	c0de274c <get_string_chunk_size+0xd6>
c0de269c:	6800      	ldr	r0, [r0, #0]
c0de269e:	2101      	movs	r1, #1
c0de26a0:	6802      	ldr	r2, [r0, #0]
c0de26a2:	6878      	ldr	r0, [r7, #4]
c0de26a4:	4790      	blx	r2
c0de26a6:	2800      	cmp	r0, #0
c0de26a8:	d050      	beq.n	c0de274c <get_string_chunk_size+0xd6>
c0de26aa:	6838      	ldr	r0, [r7, #0]
c0de26ac:	7901      	ldrb	r1, [r0, #4]
c0de26ae:	07c9      	lsls	r1, r1, #31
c0de26b0:	d101      	bne.n	c0de26b6 <get_string_chunk_size+0x40>
c0de26b2:	687e      	ldr	r6, [r7, #4]
c0de26b4:	e00a      	b.n	c0de26cc <get_string_chunk_size+0x56>
c0de26b6:	6800      	ldr	r0, [r0, #0]
c0de26b8:	f10d 0607 	add.w	r6, sp, #7
c0de26bc:	6844      	ldr	r4, [r0, #4]
c0de26be:	6878      	ldr	r0, [r7, #4]
c0de26c0:	4631      	mov	r1, r6
c0de26c2:	2200      	movs	r2, #0
c0de26c4:	2301      	movs	r3, #1
c0de26c6:	47a0      	blx	r4
c0de26c8:	2800      	cmp	r0, #0
c0de26ca:	d03f      	beq.n	c0de274c <get_string_chunk_size+0xd6>
c0de26cc:	7830      	ldrb	r0, [r6, #0]
c0de26ce:	28ff      	cmp	r0, #255	; 0xff
c0de26d0:	d102      	bne.n	c0de26d8 <get_string_chunk_size+0x62>
c0de26d2:	f240 1007 	movw	r0, #263	; 0x107
c0de26d6:	e03b      	b.n	c0de2750 <get_string_chunk_size+0xda>
c0de26d8:	7bb9      	ldrb	r1, [r7, #14]
c0de26da:	f000 02e0 	and.w	r2, r0, #224	; 0xe0
c0de26de:	428a      	cmp	r2, r1
c0de26e0:	d10b      	bne.n	c0de26fa <get_string_chunk_size+0x84>
c0de26e2:	f000 001f 	and.w	r0, r0, #31
c0de26e6:	2818      	cmp	r0, #24
c0de26e8:	f88d 0007 	strb.w	r0, [sp, #7]
c0de26ec:	d208      	bcs.n	c0de2700 <get_string_chunk_size+0x8a>
c0de26ee:	2601      	movs	r6, #1
c0de26f0:	6028      	str	r0, [r5, #0]
c0de26f2:	f8c8 6000 	str.w	r6, [r8]
c0de26f6:	2000      	movs	r0, #0
c0de26f8:	e02a      	b.n	c0de2750 <get_string_chunk_size+0xda>
c0de26fa:	f44f 7082 	mov.w	r0, #260	; 0x104
c0de26fe:	e027      	b.n	c0de2750 <get_string_chunk_size+0xda>
c0de2700:	281b      	cmp	r0, #27
c0de2702:	f200 8093 	bhi.w	c0de282c <get_string_chunk_size+0x1b6>
c0de2706:	683a      	ldr	r2, [r7, #0]
c0de2708:	f1a0 0118 	sub.w	r1, r0, #24
c0de270c:	2301      	movs	r3, #1
c0de270e:	7916      	ldrb	r6, [r2, #4]
c0de2710:	fa03 f101 	lsl.w	r1, r3, r1
c0de2714:	07f3      	lsls	r3, r6, #31
c0de2716:	f101 0601 	add.w	r6, r1, #1
c0de271a:	d105      	bne.n	c0de2728 <get_string_chunk_size+0xb2>
c0de271c:	6812      	ldr	r2, [r2, #0]
c0de271e:	687b      	ldr	r3, [r7, #4]
c0de2720:	1ad2      	subs	r2, r2, r3
c0de2722:	428a      	cmp	r2, r1
c0de2724:	d808      	bhi.n	c0de2738 <get_string_chunk_size+0xc2>
c0de2726:	e011      	b.n	c0de274c <get_string_chunk_size+0xd6>
c0de2728:	6810      	ldr	r0, [r2, #0]
c0de272a:	4631      	mov	r1, r6
c0de272c:	6802      	ldr	r2, [r0, #0]
c0de272e:	6878      	ldr	r0, [r7, #4]
c0de2730:	4790      	blx	r2
c0de2732:	b158      	cbz	r0, c0de274c <get_string_chunk_size+0xd6>
c0de2734:	f89d 0007 	ldrb.w	r0, [sp, #7]
c0de2738:	2819      	cmp	r0, #25
c0de273a:	d80c      	bhi.n	c0de2756 <get_string_chunk_size+0xe0>
c0de273c:	d114      	bne.n	c0de2768 <get_string_chunk_size+0xf2>
c0de273e:	6838      	ldr	r0, [r7, #0]
c0de2740:	7901      	ldrb	r1, [r0, #4]
c0de2742:	07c9      	lsls	r1, r1, #31
c0de2744:	d11e      	bne.n	c0de2784 <get_string_chunk_size+0x10e>
c0de2746:	6878      	ldr	r0, [r7, #4]
c0de2748:	1c47      	adds	r7, r0, #1
c0de274a:	e023      	b.n	c0de2794 <get_string_chunk_size+0x11e>
c0de274c:	f240 1001 	movw	r0, #257	; 0x101
c0de2750:	b004      	add	sp, #16
c0de2752:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2756:	281a      	cmp	r0, #26
c0de2758:	d10d      	bne.n	c0de2776 <get_string_chunk_size+0x100>
c0de275a:	6838      	ldr	r0, [r7, #0]
c0de275c:	7901      	ldrb	r1, [r0, #4]
c0de275e:	07c9      	lsls	r1, r1, #31
c0de2760:	d11f      	bne.n	c0de27a2 <get_string_chunk_size+0x12c>
c0de2762:	6878      	ldr	r0, [r7, #4]
c0de2764:	1c47      	adds	r7, r0, #1
c0de2766:	e024      	b.n	c0de27b2 <get_string_chunk_size+0x13c>
c0de2768:	6838      	ldr	r0, [r7, #0]
c0de276a:	7901      	ldrb	r1, [r0, #4]
c0de276c:	07c9      	lsls	r1, r1, #31
c0de276e:	d12c      	bne.n	c0de27ca <get_string_chunk_size+0x154>
c0de2770:	6878      	ldr	r0, [r7, #4]
c0de2772:	1c47      	adds	r7, r0, #1
c0de2774:	e031      	b.n	c0de27da <get_string_chunk_size+0x164>
c0de2776:	6838      	ldr	r0, [r7, #0]
c0de2778:	7901      	ldrb	r1, [r0, #4]
c0de277a:	07c9      	lsls	r1, r1, #31
c0de277c:	d12f      	bne.n	c0de27de <get_string_chunk_size+0x168>
c0de277e:	6878      	ldr	r0, [r7, #4]
c0de2780:	1c47      	adds	r7, r0, #1
c0de2782:	e034      	b.n	c0de27ee <get_string_chunk_size+0x178>
c0de2784:	6800      	ldr	r0, [r0, #0]
c0de2786:	2201      	movs	r2, #1
c0de2788:	6844      	ldr	r4, [r0, #4]
c0de278a:	6878      	ldr	r0, [r7, #4]
c0de278c:	af02      	add	r7, sp, #8
c0de278e:	4639      	mov	r1, r7
c0de2790:	2302      	movs	r3, #2
c0de2792:	47a0      	blx	r4
c0de2794:	7838      	ldrb	r0, [r7, #0]
c0de2796:	7879      	ldrb	r1, [r7, #1]
c0de2798:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de279c:	ba00      	rev	r0, r0
c0de279e:	0c00      	lsrs	r0, r0, #16
c0de27a0:	e7a6      	b.n	c0de26f0 <get_string_chunk_size+0x7a>
c0de27a2:	6800      	ldr	r0, [r0, #0]
c0de27a4:	2201      	movs	r2, #1
c0de27a6:	6844      	ldr	r4, [r0, #4]
c0de27a8:	6878      	ldr	r0, [r7, #4]
c0de27aa:	af02      	add	r7, sp, #8
c0de27ac:	4639      	mov	r1, r7
c0de27ae:	2304      	movs	r3, #4
c0de27b0:	47a0      	blx	r4
c0de27b2:	7838      	ldrb	r0, [r7, #0]
c0de27b4:	78b9      	ldrb	r1, [r7, #2]
c0de27b6:	78fa      	ldrb	r2, [r7, #3]
c0de27b8:	787b      	ldrb	r3, [r7, #1]
c0de27ba:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de27be:	ea40 2003 	orr.w	r0, r0, r3, lsl #8
c0de27c2:	ea40 4001 	orr.w	r0, r0, r1, lsl #16
c0de27c6:	ba00      	rev	r0, r0
c0de27c8:	e792      	b.n	c0de26f0 <get_string_chunk_size+0x7a>
c0de27ca:	6800      	ldr	r0, [r0, #0]
c0de27cc:	2201      	movs	r2, #1
c0de27ce:	6844      	ldr	r4, [r0, #4]
c0de27d0:	6878      	ldr	r0, [r7, #4]
c0de27d2:	af02      	add	r7, sp, #8
c0de27d4:	4639      	mov	r1, r7
c0de27d6:	2301      	movs	r3, #1
c0de27d8:	47a0      	blx	r4
c0de27da:	7838      	ldrb	r0, [r7, #0]
c0de27dc:	e788      	b.n	c0de26f0 <get_string_chunk_size+0x7a>
c0de27de:	6800      	ldr	r0, [r0, #0]
c0de27e0:	2201      	movs	r2, #1
c0de27e2:	6844      	ldr	r4, [r0, #4]
c0de27e4:	6878      	ldr	r0, [r7, #4]
c0de27e6:	af02      	add	r7, sp, #8
c0de27e8:	4639      	mov	r1, r7
c0de27ea:	2308      	movs	r3, #8
c0de27ec:	47a0      	blx	r4
c0de27ee:	4638      	mov	r0, r7
c0de27f0:	f810 1f04 	ldrb.w	r1, [r0, #4]!
c0de27f4:	797a      	ldrb	r2, [r7, #5]
c0de27f6:	7883      	ldrb	r3, [r0, #2]
c0de27f8:	78c0      	ldrb	r0, [r0, #3]
c0de27fa:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de27fe:	ea43 2000 	orr.w	r0, r3, r0, lsl #8
c0de2802:	ea41 4000 	orr.w	r0, r1, r0, lsl #16
c0de2806:	7839      	ldrb	r1, [r7, #0]
c0de2808:	78ba      	ldrb	r2, [r7, #2]
c0de280a:	78fb      	ldrb	r3, [r7, #3]
c0de280c:	787f      	ldrb	r7, [r7, #1]
c0de280e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de2812:	ea41 2107 	orr.w	r1, r1, r7, lsl #8
c0de2816:	ea41 4102 	orr.w	r1, r1, r2, lsl #16
c0de281a:	ba09      	rev	r1, r1
c0de281c:	ba00      	rev	r0, r0
c0de281e:	2900      	cmp	r1, #0
c0de2820:	6028      	str	r0, [r5, #0]
c0de2822:	f43f af66 	beq.w	c0de26f2 <get_string_chunk_size+0x7c>
c0de2826:	f44f 6080 	mov.w	r0, #1024	; 0x400
c0de282a:	e791      	b.n	c0de2750 <get_string_chunk_size+0xda>
c0de282c:	f240 1005 	movw	r0, #261	; 0x105
c0de2830:	e78e      	b.n	c0de2750 <get_string_chunk_size+0xda>

c0de2832 <_cbor_value_get_string_chunk>:
c0de2832:	b570      	push	{r4, r5, r6, lr}
c0de2834:	b084      	sub	sp, #16
c0de2836:	46ec      	mov	ip, sp
c0de2838:	2b00      	cmp	r3, #0
c0de283a:	bf18      	it	ne
c0de283c:	469c      	movne	ip, r3
c0de283e:	e890 4070 	ldmia.w	r0, {r4, r5, r6, lr}
c0de2842:	4663      	mov	r3, ip
c0de2844:	4660      	mov	r0, ip
c0de2846:	e883 4070 	stmia.w	r3, {r4, r5, r6, lr}
c0de284a:	f000 f802 	bl	c0de2852 <get_string_chunk>
c0de284e:	b004      	add	sp, #16
c0de2850:	bd70      	pop	{r4, r5, r6, pc}

c0de2852 <get_string_chunk>:
c0de2852:	b570      	push	{r4, r5, r6, lr}
c0de2854:	b082      	sub	sp, #8
c0de2856:	460d      	mov	r5, r1
c0de2858:	a901      	add	r1, sp, #4
c0de285a:	4616      	mov	r6, r2
c0de285c:	4604      	mov	r4, r0
c0de285e:	f7ff ff0a 	bl	c0de2676 <get_string_chunk_size>
c0de2862:	bb58      	cbnz	r0, c0de28bc <get_string_chunk+0x6a>
c0de2864:	6821      	ldr	r1, [r4, #0]
c0de2866:	9a01      	ldr	r2, [sp, #4]
c0de2868:	7908      	ldrb	r0, [r1, #4]
c0de286a:	6836      	ldr	r6, [r6, #0]
c0de286c:	07c0      	lsls	r0, r0, #31
c0de286e:	d10a      	bne.n	c0de2886 <get_string_chunk+0x34>
c0de2870:	6860      	ldr	r0, [r4, #4]
c0de2872:	4410      	add	r0, r2
c0de2874:	6060      	str	r0, [r4, #4]
c0de2876:	790a      	ldrb	r2, [r1, #4]
c0de2878:	07d2      	lsls	r2, r2, #31
c0de287a:	d10d      	bne.n	c0de2898 <get_string_chunk+0x46>
c0de287c:	6809      	ldr	r1, [r1, #0]
c0de287e:	1a09      	subs	r1, r1, r0
c0de2880:	42b1      	cmp	r1, r6
c0de2882:	d20f      	bcs.n	c0de28a4 <get_string_chunk+0x52>
c0de2884:	e018      	b.n	c0de28b8 <get_string_chunk+0x66>
c0de2886:	6808      	ldr	r0, [r1, #0]
c0de2888:	4629      	mov	r1, r5
c0de288a:	f8d0 c00c 	ldr.w	ip, [r0, #12]
c0de288e:	6860      	ldr	r0, [r4, #4]
c0de2890:	4633      	mov	r3, r6
c0de2892:	47e0      	blx	ip
c0de2894:	b990      	cbnz	r0, c0de28bc <get_string_chunk+0x6a>
c0de2896:	e009      	b.n	c0de28ac <get_string_chunk+0x5a>
c0de2898:	6809      	ldr	r1, [r1, #0]
c0de289a:	680a      	ldr	r2, [r1, #0]
c0de289c:	4631      	mov	r1, r6
c0de289e:	4790      	blx	r2
c0de28a0:	b150      	cbz	r0, c0de28b8 <get_string_chunk+0x66>
c0de28a2:	6860      	ldr	r0, [r4, #4]
c0de28a4:	6028      	str	r0, [r5, #0]
c0de28a6:	6860      	ldr	r0, [r4, #4]
c0de28a8:	4430      	add	r0, r6
c0de28aa:	6060      	str	r0, [r4, #4]
c0de28ac:	7be0      	ldrb	r0, [r4, #15]
c0de28ae:	f000 00fb 	and.w	r0, r0, #251	; 0xfb
c0de28b2:	73e0      	strb	r0, [r4, #15]
c0de28b4:	2000      	movs	r0, #0
c0de28b6:	e001      	b.n	c0de28bc <get_string_chunk+0x6a>
c0de28b8:	f240 1001 	movw	r0, #257	; 0x101
c0de28bc:	b002      	add	sp, #8
c0de28be:	bd70      	pop	{r4, r5, r6, pc}

c0de28c0 <iterate_string_chunks>:
c0de28c0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de28c4:	b088      	sub	sp, #32
c0de28c6:	461d      	mov	r5, r3
c0de28c8:	7b83      	ldrb	r3, [r0, #14]
c0de28ca:	9201      	str	r2, [sp, #4]
c0de28cc:	9a10      	ldr	r2, [sp, #64]	; 0x40
c0de28ce:	2b40      	cmp	r3, #64	; 0x40
c0de28d0:	ae04      	add	r6, sp, #16
c0de28d2:	2a00      	cmp	r2, #0
c0de28d4:	bf18      	it	ne
c0de28d6:	4616      	movne	r6, r2
c0de28d8:	e890 009c 	ldmia.w	r0, {r2, r3, r4, r7}
c0de28dc:	468a      	mov	sl, r1
c0de28de:	4631      	mov	r1, r6
c0de28e0:	2001      	movs	r0, #1
c0de28e2:	c19c      	stmia	r1!, {r2, r3, r4, r7}
c0de28e4:	7028      	strb	r0, [r5, #0]
c0de28e6:	4630      	mov	r0, r6
c0de28e8:	f7ff fe98 	bl	c0de261c <_cbor_value_begin_string_iteration>
c0de28ec:	f04f 0800 	mov.w	r8, #0
c0de28f0:	ac03      	add	r4, sp, #12
c0de28f2:	af02      	add	r7, sp, #8
c0de28f4:	4630      	mov	r0, r6
c0de28f6:	4621      	mov	r1, r4
c0de28f8:	463a      	mov	r2, r7
c0de28fa:	f7ff ffaa 	bl	c0de2852 <get_string_chunk>
c0de28fe:	b9c8      	cbnz	r0, c0de2934 <iterate_string_chunks+0x74>
c0de2900:	9a02      	ldr	r2, [sp, #8]
c0de2902:	eb18 0b02 	adds.w	fp, r8, r2
c0de2906:	d238      	bcs.n	c0de297a <iterate_string_chunks+0xba>
c0de2908:	7828      	ldrb	r0, [r5, #0]
c0de290a:	b118      	cbz	r0, c0de2914 <iterate_string_chunks+0x54>
c0de290c:	9801      	ldr	r0, [sp, #4]
c0de290e:	6800      	ldr	r0, [r0, #0]
c0de2910:	4558      	cmp	r0, fp
c0de2912:	d201      	bcs.n	c0de2918 <iterate_string_chunks+0x58>
c0de2914:	2000      	movs	r0, #0
c0de2916:	e00a      	b.n	c0de292e <iterate_string_chunks+0x6e>
c0de2918:	9903      	ldr	r1, [sp, #12]
c0de291a:	9b11      	ldr	r3, [sp, #68]	; 0x44
c0de291c:	4650      	mov	r0, sl
c0de291e:	f1ba 0f00 	cmp.w	sl, #0
c0de2922:	bf18      	it	ne
c0de2924:	4440      	addne	r0, r8
c0de2926:	4798      	blx	r3
c0de2928:	2800      	cmp	r0, #0
c0de292a:	bf18      	it	ne
c0de292c:	2001      	movne	r0, #1
c0de292e:	7028      	strb	r0, [r5, #0]
c0de2930:	46d8      	mov	r8, fp
c0de2932:	e7df      	b.n	c0de28f4 <iterate_string_chunks+0x34>
c0de2934:	f240 1107 	movw	r1, #263	; 0x107
c0de2938:	4288      	cmp	r0, r1
c0de293a:	d11b      	bne.n	c0de2974 <iterate_string_chunks+0xb4>
c0de293c:	7828      	ldrb	r0, [r5, #0]
c0de293e:	b198      	cbz	r0, c0de2968 <iterate_string_chunks+0xa8>
c0de2940:	9801      	ldr	r0, [sp, #4]
c0de2942:	6800      	ldr	r0, [r0, #0]
c0de2944:	4540      	cmp	r0, r8
c0de2946:	d90f      	bls.n	c0de2968 <iterate_string_chunks+0xa8>
c0de2948:	2000      	movs	r0, #0
c0de294a:	9b11      	ldr	r3, [sp, #68]	; 0x44
c0de294c:	f88d 0008 	strb.w	r0, [sp, #8]
c0de2950:	f1ba 0f00 	cmp.w	sl, #0
c0de2954:	bf18      	it	ne
c0de2956:	44c2      	addne	sl, r8
c0de2958:	a902      	add	r1, sp, #8
c0de295a:	4650      	mov	r0, sl
c0de295c:	2201      	movs	r2, #1
c0de295e:	4798      	blx	r3
c0de2960:	2800      	cmp	r0, #0
c0de2962:	bf18      	it	ne
c0de2964:	2001      	movne	r0, #1
c0de2966:	7028      	strb	r0, [r5, #0]
c0de2968:	9801      	ldr	r0, [sp, #4]
c0de296a:	f8c0 8000 	str.w	r8, [r0]
c0de296e:	4630      	mov	r0, r6
c0de2970:	f7ff fe6a 	bl	c0de2648 <_cbor_value_finish_string_iteration>
c0de2974:	b008      	add	sp, #32
c0de2976:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de297a:	f44f 6080 	mov.w	r0, #1024	; 0x400
c0de297e:	e7f9      	b.n	c0de2974 <iterate_string_chunks+0xb4>

c0de2980 <iterate_noop>:
c0de2980:	2001      	movs	r0, #1
c0de2982:	4770      	bx	lr

c0de2984 <crypto_extractPublicKey>:
c0de2984:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2988:	b0b2      	sub	sp, #200	; 0xc8
c0de298a:	2a21      	cmp	r2, #33	; 0x21
c0de298c:	d201      	bcs.n	c0de2992 <crypto_extractPublicKey+0xe>
c0de298e:	200c      	movs	r0, #12
c0de2990:	e068      	b.n	c0de2a64 <crypto_extractPublicKey+0xe0>
c0de2992:	f10d 0804 	add.w	r8, sp, #4
c0de2996:	4606      	mov	r6, r0
c0de2998:	4640      	mov	r0, r8
c0de299a:	460c      	mov	r4, r1
c0de299c:	f007 f830 	bl	c0de9a00 <setjmp>
c0de29a0:	b287      	uxth	r7, r0
c0de29a2:	f8ad 0030 	strh.w	r0, [sp, #48]	; 0x30
c0de29a6:	b13f      	cbz	r7, c0de29b8 <crypto_extractPublicKey+0x34>
c0de29a8:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de29aa:	2100      	movs	r1, #0
c0de29ac:	f8ad 1030 	strh.w	r1, [sp, #48]	; 0x30
c0de29b0:	f003 f942 	bl	c0de5c38 <try_context_set>
c0de29b4:	250f      	movs	r5, #15
c0de29b6:	e029      	b.n	c0de2a0c <crypto_extractPublicKey+0x88>
c0de29b8:	a801      	add	r0, sp, #4
c0de29ba:	f003 f93d 	bl	c0de5c38 <try_context_set>
c0de29be:	f04f 0a21 	mov.w	sl, #33	; 0x21
c0de29c2:	f10d 0b34 	add.w	fp, sp, #52	; 0x34
c0de29c6:	900b      	str	r0, [sp, #44]	; 0x2c
c0de29c8:	466d      	mov	r5, sp
c0de29ca:	f04f 0c00 	mov.w	ip, #0
c0de29ce:	2205      	movs	r2, #5
c0de29d0:	4650      	mov	r0, sl
c0de29d2:	4631      	mov	r1, r6
c0de29d4:	465b      	mov	r3, fp
c0de29d6:	f8c5 c000 	str.w	ip, [r5]
c0de29da:	f003 f8b3 	bl	c0de5b44 <os_perso_derive_node_bip32>
c0de29de:	2220      	movs	r2, #32
c0de29e0:	ab15      	add	r3, sp, #84	; 0x54
c0de29e2:	4650      	mov	r0, sl
c0de29e4:	4659      	mov	r1, fp
c0de29e6:	f000 f941 	bl	c0de2c6c <cx_ecfp_init_private_key_no_throw>
c0de29ea:	2800      	cmp	r0, #0
c0de29ec:	d13d      	bne.n	c0de2a6a <crypto_extractPublicKey+0xe6>
c0de29ee:	2100      	movs	r1, #0
c0de29f0:	2021      	movs	r0, #33	; 0x21
c0de29f2:	ab1f      	add	r3, sp, #124	; 0x7c
c0de29f4:	460a      	mov	r2, r1
c0de29f6:	f000 f93d 	bl	c0de2c74 <cx_ecfp_init_public_key_no_throw>
c0de29fa:	bbb0      	cbnz	r0, c0de2a6a <crypto_extractPublicKey+0xe6>
c0de29fc:	2021      	movs	r0, #33	; 0x21
c0de29fe:	a91f      	add	r1, sp, #124	; 0x7c
c0de2a00:	aa15      	add	r2, sp, #84	; 0x54
c0de2a02:	2301      	movs	r3, #1
c0de2a04:	f000 f92e 	bl	c0de2c64 <cx_ecfp_generate_pair_no_throw>
c0de2a08:	bb78      	cbnz	r0, c0de2a6a <crypto_extractPublicKey+0xe6>
c0de2a0a:	2503      	movs	r5, #3
c0de2a0c:	f003 f90a 	bl	c0de5c24 <try_context_get>
c0de2a10:	4540      	cmp	r0, r8
c0de2a12:	d102      	bne.n	c0de2a1a <crypto_extractPublicKey+0x96>
c0de2a14:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de2a16:	f003 f90f 	bl	c0de5c38 <try_context_set>
c0de2a1a:	a815      	add	r0, sp, #84	; 0x54
c0de2a1c:	2128      	movs	r1, #40	; 0x28
c0de2a1e:	f006 ffaa 	bl	c0de9976 <explicit_bzero>
c0de2a22:	a80d      	add	r0, sp, #52	; 0x34
c0de2a24:	2120      	movs	r1, #32
c0de2a26:	f006 ffa6 	bl	c0de9976 <explicit_bzero>
c0de2a2a:	f8bd 0030 	ldrh.w	r0, [sp, #48]	; 0x30
c0de2a2e:	b9e0      	cbnz	r0, c0de2a6a <crypto_extractPublicKey+0xe6>
c0de2a30:	b9bf      	cbnz	r7, c0de2a62 <crypto_extractPublicKey+0xde>
c0de2a32:	a81f      	add	r0, sp, #124	; 0x7c
c0de2a34:	2300      	movs	r3, #0
c0de2a36:	f100 0248 	add.w	r2, r0, #72	; 0x48
c0de2a3a:	4619      	mov	r1, r3
c0de2a3c:	f812 3901 	ldrb.w	r3, [r2], #-1
c0de2a40:	5463      	strb	r3, [r4, r1]
c0de2a42:	3101      	adds	r1, #1
c0de2a44:	2920      	cmp	r1, #32
c0de2a46:	d1f9      	bne.n	c0de2a3c <crypto_extractPublicKey+0xb8>
c0de2a48:	f100 0108 	add.w	r1, r0, #8
c0de2a4c:	f89d 00c4 	ldrb.w	r0, [sp, #196]	; 0xc4
c0de2a50:	2201      	movs	r2, #1
c0de2a52:	f362 005f 	bfi	r0, r2, #1, #31
c0de2a56:	f88d 0084 	strb.w	r0, [sp, #132]	; 0x84
c0de2a5a:	2221      	movs	r2, #33	; 0x21
c0de2a5c:	4620      	mov	r0, r4
c0de2a5e:	f006 ff81 	bl	c0de9964 <__aeabi_memcpy>
c0de2a62:	4628      	mov	r0, r5
c0de2a64:	b032      	add	sp, #200	; 0xc8
c0de2a66:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2a6a:	f000 fc9b 	bl	c0de33a4 <os_longjmp>
	...

c0de2a70 <crypto_sign>:
c0de2a70:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2a74:	b0ac      	sub	sp, #176	; 0xb0
c0de2a76:	ac22      	add	r4, sp, #136	; 0x88
c0de2a78:	2520      	movs	r5, #32
c0de2a7a:	460f      	mov	r7, r1
c0de2a7c:	4682      	mov	sl, r0
c0de2a7e:	4620      	mov	r0, r4
c0de2a80:	4629      	mov	r1, r5
c0de2a82:	4690      	mov	r8, r2
c0de2a84:	f006 ff77 	bl	c0de9976 <explicit_bzero>
c0de2a88:	f003 f945 	bl	c0de5d16 <tx_get_buffer>
c0de2a8c:	4606      	mov	r6, r0
c0de2a8e:	f003 f93d 	bl	c0de5d0c <tx_get_buffer_length>
c0de2a92:	b281      	uxth	r1, r0
c0de2a94:	4630      	mov	r0, r6
c0de2a96:	4622      	mov	r2, r4
c0de2a98:	462b      	mov	r3, r5
c0de2a9a:	f000 f8f7 	bl	c0de2c8c <cx_hash_sha256>
c0de2a9e:	f10d 0b10 	add.w	fp, sp, #16
c0de2aa2:	4658      	mov	r0, fp
c0de2aa4:	f006 ffac 	bl	c0de9a00 <setjmp>
c0de2aa8:	0401      	lsls	r1, r0, #16
c0de2aaa:	f8ad 003c 	strh.w	r0, [sp, #60]	; 0x3c
c0de2aae:	d007      	beq.n	c0de2ac0 <crypto_sign+0x50>
c0de2ab0:	980e      	ldr	r0, [sp, #56]	; 0x38
c0de2ab2:	2400      	movs	r4, #0
c0de2ab4:	f8ad 403c 	strh.w	r4, [sp, #60]	; 0x3c
c0de2ab8:	f003 f8be 	bl	c0de5c38 <try_context_set>
c0de2abc:	260f      	movs	r6, #15
c0de2abe:	e02b      	b.n	c0de2b18 <crypto_sign+0xa8>
c0de2ac0:	a804      	add	r0, sp, #16
c0de2ac2:	f003 f8b9 	bl	c0de5c38 <try_context_set>
c0de2ac6:	4921      	ldr	r1, [pc, #132]	; (c0de2b4c <crypto_sign+0xdc>)
c0de2ac8:	2621      	movs	r6, #33	; 0x21
c0de2aca:	ad10      	add	r5, sp, #64	; 0x40
c0de2acc:	900e      	str	r0, [sp, #56]	; 0x38
c0de2ace:	466c      	mov	r4, sp
c0de2ad0:	f04f 0c00 	mov.w	ip, #0
c0de2ad4:	4449      	add	r1, r9
c0de2ad6:	2205      	movs	r2, #5
c0de2ad8:	4630      	mov	r0, r6
c0de2ada:	462b      	mov	r3, r5
c0de2adc:	f8c4 c000 	str.w	ip, [r4]
c0de2ae0:	f003 f830 	bl	c0de5b44 <os_perso_derive_node_bip32>
c0de2ae4:	2420      	movs	r4, #32
c0de2ae6:	ab18      	add	r3, sp, #96	; 0x60
c0de2ae8:	4630      	mov	r0, r6
c0de2aea:	4629      	mov	r1, r5
c0de2aec:	4622      	mov	r2, r4
c0de2aee:	f000 f8bd 	bl	c0de2c6c <cx_ecfp_init_private_key_no_throw>
c0de2af2:	bb48      	cbnz	r0, c0de2b48 <crypto_sign+0xd8>
c0de2af4:	972b      	str	r7, [sp, #172]	; 0xac
c0de2af6:	466f      	mov	r7, sp
c0de2af8:	a82b      	add	r0, sp, #172	; 0xac
c0de2afa:	ae2a      	add	r6, sp, #168	; 0xa8
c0de2afc:	60b8      	str	r0, [r7, #8]
c0de2afe:	a818      	add	r0, sp, #96	; 0x60
c0de2b00:	f240 6101 	movw	r1, #1537	; 0x601
c0de2b04:	2203      	movs	r2, #3
c0de2b06:	ab22      	add	r3, sp, #136	; 0x88
c0de2b08:	e9c7 4a00 	strd	r4, sl, [r7]
c0de2b0c:	60fe      	str	r6, [r7, #12]
c0de2b0e:	f000 f8a5 	bl	c0de2c5c <cx_ecdsa_sign_no_throw>
c0de2b12:	b9c8      	cbnz	r0, c0de2b48 <crypto_sign+0xd8>
c0de2b14:	9c2b      	ldr	r4, [sp, #172]	; 0xac
c0de2b16:	2603      	movs	r6, #3
c0de2b18:	f003 f884 	bl	c0de5c24 <try_context_get>
c0de2b1c:	4558      	cmp	r0, fp
c0de2b1e:	d102      	bne.n	c0de2b26 <crypto_sign+0xb6>
c0de2b20:	980e      	ldr	r0, [sp, #56]	; 0x38
c0de2b22:	f003 f889 	bl	c0de5c38 <try_context_set>
c0de2b26:	a818      	add	r0, sp, #96	; 0x60
c0de2b28:	2128      	movs	r1, #40	; 0x28
c0de2b2a:	f006 ff24 	bl	c0de9976 <explicit_bzero>
c0de2b2e:	a810      	add	r0, sp, #64	; 0x40
c0de2b30:	2120      	movs	r1, #32
c0de2b32:	f006 ff20 	bl	c0de9976 <explicit_bzero>
c0de2b36:	f8bd 003c 	ldrh.w	r0, [sp, #60]	; 0x3c
c0de2b3a:	b928      	cbnz	r0, c0de2b48 <crypto_sign+0xd8>
c0de2b3c:	4630      	mov	r0, r6
c0de2b3e:	f8a8 4000 	strh.w	r4, [r8]
c0de2b42:	b02c      	add	sp, #176	; 0xb0
c0de2b44:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de2b48:	f000 fc2c 	bl	c0de33a4 <os_longjmp>
c0de2b4c:	00000148 	.word	0x00000148

c0de2b50 <extractHRP>:
c0de2b50:	b570      	push	{r4, r5, r6, lr}
c0de2b52:	460c      	mov	r4, r1
c0de2b54:	3101      	adds	r1, #1
c0de2b56:	4281      	cmp	r1, r0
c0de2b58:	d81a      	bhi.n	c0de2b90 <extractHRP+0x40>
c0de2b5a:	4e0f      	ldr	r6, [pc, #60]	; (c0de2b98 <extractHRP+0x48>)
c0de2b5c:	2153      	movs	r1, #83	; 0x53
c0de2b5e:	eb09 0006 	add.w	r0, r9, r6
c0de2b62:	f006 ff08 	bl	c0de9976 <explicit_bzero>
c0de2b66:	480d      	ldr	r0, [pc, #52]	; (c0de2b9c <extractHRP+0x4c>)
c0de2b68:	490d      	ldr	r1, [pc, #52]	; (c0de2ba0 <extractHRP+0x50>)
c0de2b6a:	4448      	add	r0, r9
c0de2b6c:	5d05      	ldrb	r5, [r0, r4]
c0de2b6e:	1e6a      	subs	r2, r5, #1
c0de2b70:	2a53      	cmp	r2, #83	; 0x53
c0de2b72:	f809 5001 	strb.w	r5, [r9, r1]
c0de2b76:	d20b      	bcs.n	c0de2b90 <extractHRP+0x40>
c0de2b78:	4420      	add	r0, r4
c0de2b7a:	eb09 0406 	add.w	r4, r9, r6
c0de2b7e:	1c41      	adds	r1, r0, #1
c0de2b80:	4620      	mov	r0, r4
c0de2b82:	462a      	mov	r2, r5
c0de2b84:	f006 feee 	bl	c0de9964 <__aeabi_memcpy>
c0de2b88:	2100      	movs	r1, #0
c0de2b8a:	4628      	mov	r0, r5
c0de2b8c:	5561      	strb	r1, [r4, r5]
c0de2b8e:	bd70      	pop	{r4, r5, r6, pc}
c0de2b90:	f646 1084 	movw	r0, #27012	; 0x6984
c0de2b94:	f000 fc06 	bl	c0de33a4 <os_longjmp>
c0de2b98:	0000015c 	.word	0x0000015c
c0de2b9c:	000001b1 	.word	0x000001b1
c0de2ba0:	000001b0 	.word	0x000001b0

c0de2ba4 <ripemd160_32>:
c0de2ba4:	b570      	push	{r4, r5, r6, lr}
c0de2ba6:	b09a      	sub	sp, #104	; 0x68
c0de2ba8:	ae02      	add	r6, sp, #8
c0de2baa:	4605      	mov	r5, r0
c0de2bac:	4630      	mov	r0, r6
c0de2bae:	460c      	mov	r4, r1
c0de2bb0:	f000 f870 	bl	c0de2c94 <cx_ripemd160_init_no_throw>
c0de2bb4:	f04f 0c14 	mov.w	ip, #20
c0de2bb8:	4630      	mov	r0, r6
c0de2bba:	2101      	movs	r1, #1
c0de2bbc:	4622      	mov	r2, r4
c0de2bbe:	2320      	movs	r3, #32
c0de2bc0:	9500      	str	r5, [sp, #0]
c0de2bc2:	f8cd c004 	str.w	ip, [sp, #4]
c0de2bc6:	f000 f85d 	bl	c0de2c84 <cx_hash_no_throw>
c0de2bca:	b920      	cbnz	r0, c0de2bd6 <ripemd160_32+0x32>
c0de2bcc:	a802      	add	r0, sp, #8
c0de2bce:	f000 f855 	bl	c0de2c7c <cx_hash_get_size>
c0de2bd2:	b01a      	add	sp, #104	; 0x68
c0de2bd4:	bd70      	pop	{r4, r5, r6, pc}
c0de2bd6:	f000 fbe5 	bl	c0de33a4 <os_longjmp>
	...

c0de2bdc <crypto_fillAddress>:
c0de2bdc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de2be0:	b090      	sub	sp, #64	; 0x40
c0de2be2:	2953      	cmp	r1, #83	; 0x53
c0de2be4:	d201      	bcs.n	c0de2bea <crypto_fillAddress+0xe>
c0de2be6:	2706      	movs	r7, #6
c0de2be8:	e02f      	b.n	c0de2c4a <crypto_fillAddress+0x6e>
c0de2bea:	4606      	mov	r6, r0
c0de2bec:	4819      	ldr	r0, [pc, #100]	; (c0de2c54 <crypto_fillAddress+0x78>)
c0de2bee:	460d      	mov	r5, r1
c0de2bf0:	4614      	mov	r4, r2
c0de2bf2:	4448      	add	r0, r9
c0de2bf4:	4631      	mov	r1, r6
c0de2bf6:	462a      	mov	r2, r5
c0de2bf8:	f7ff fec4 	bl	c0de2984 <crypto_extractPublicKey>
c0de2bfc:	4607      	mov	r7, r0
c0de2bfe:	2803      	cmp	r0, #3
c0de2c00:	d123      	bne.n	c0de2c4a <crypto_fillAddress+0x6e>
c0de2c02:	af08      	add	r7, sp, #32
c0de2c04:	4630      	mov	r0, r6
c0de2c06:	2121      	movs	r1, #33	; 0x21
c0de2c08:	463a      	mov	r2, r7
c0de2c0a:	2320      	movs	r3, #32
c0de2c0c:	f000 f83e 	bl	c0de2c8c <cx_hash_sha256>
c0de2c10:	f10d 080c 	add.w	r8, sp, #12
c0de2c14:	4640      	mov	r0, r8
c0de2c16:	4639      	mov	r1, r7
c0de2c18:	f7ff ffc4 	bl	c0de2ba4 <ripemd160_32>
c0de2c1c:	2014      	movs	r0, #20
c0de2c1e:	9000      	str	r0, [sp, #0]
c0de2c20:	480d      	ldr	r0, [pc, #52]	; (c0de2c58 <crypto_fillAddress+0x7c>)
c0de2c22:	3621      	adds	r6, #33	; 0x21
c0de2c24:	f1a5 0121 	sub.w	r1, r5, #33	; 0x21
c0de2c28:	2701      	movs	r7, #1
c0de2c2a:	eb09 0200 	add.w	r2, r9, r0
c0de2c2e:	4630      	mov	r0, r6
c0de2c30:	4643      	mov	r3, r8
c0de2c32:	9701      	str	r7, [sp, #4]
c0de2c34:	9702      	str	r7, [sp, #8]
c0de2c36:	f7ff f818 	bl	c0de1c6a <bech32EncodeFromBytes>
c0de2c3a:	4607      	mov	r7, r0
c0de2c3c:	2803      	cmp	r0, #3
c0de2c3e:	d104      	bne.n	c0de2c4a <crypto_fillAddress+0x6e>
c0de2c40:	4630      	mov	r0, r6
c0de2c42:	f006 fef5 	bl	c0de9a30 <strlen>
c0de2c46:	3021      	adds	r0, #33	; 0x21
c0de2c48:	8020      	strh	r0, [r4, #0]
c0de2c4a:	4638      	mov	r0, r7
c0de2c4c:	b010      	add	sp, #64	; 0x40
c0de2c4e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de2c52:	bf00      	nop
c0de2c54:	00000148 	.word	0x00000148
c0de2c58:	0000015c 	.word	0x0000015c

c0de2c5c <cx_ecdsa_sign_no_throw>:
c0de2c5c:	b403      	push	{r0, r1}
c0de2c5e:	f04f 002f 	mov.w	r0, #47	; 0x2f
c0de2c62:	e023      	b.n	c0de2cac <cx_trampoline_helper>

c0de2c64 <cx_ecfp_generate_pair_no_throw>:
c0de2c64:	b403      	push	{r0, r1}
c0de2c66:	f04f 0035 	mov.w	r0, #53	; 0x35
c0de2c6a:	e01f      	b.n	c0de2cac <cx_trampoline_helper>

c0de2c6c <cx_ecfp_init_private_key_no_throw>:
c0de2c6c:	b403      	push	{r0, r1}
c0de2c6e:	f04f 0036 	mov.w	r0, #54	; 0x36
c0de2c72:	e01b      	b.n	c0de2cac <cx_trampoline_helper>

c0de2c74 <cx_ecfp_init_public_key_no_throw>:
c0de2c74:	b403      	push	{r0, r1}
c0de2c76:	f04f 0037 	mov.w	r0, #55	; 0x37
c0de2c7a:	e017      	b.n	c0de2cac <cx_trampoline_helper>

c0de2c7c <cx_hash_get_size>:
c0de2c7c:	b403      	push	{r0, r1}
c0de2c7e:	f04f 0044 	mov.w	r0, #68	; 0x44
c0de2c82:	e013      	b.n	c0de2cac <cx_trampoline_helper>

c0de2c84 <cx_hash_no_throw>:
c0de2c84:	b403      	push	{r0, r1}
c0de2c86:	f04f 0047 	mov.w	r0, #71	; 0x47
c0de2c8a:	e00f      	b.n	c0de2cac <cx_trampoline_helper>

c0de2c8c <cx_hash_sha256>:
c0de2c8c:	b403      	push	{r0, r1}
c0de2c8e:	f04f 0049 	mov.w	r0, #73	; 0x49
c0de2c92:	e00b      	b.n	c0de2cac <cx_trampoline_helper>

c0de2c94 <cx_ripemd160_init_no_throw>:
c0de2c94:	b403      	push	{r0, r1}
c0de2c96:	f04f 006b 	mov.w	r0, #107	; 0x6b
c0de2c9a:	e007      	b.n	c0de2cac <cx_trampoline_helper>

c0de2c9c <cx_rng_no_throw>:
c0de2c9c:	b403      	push	{r0, r1}
c0de2c9e:	f04f 006d 	mov.w	r0, #109	; 0x6d
c0de2ca2:	e003      	b.n	c0de2cac <cx_trampoline_helper>

c0de2ca4 <cx_x448>:
c0de2ca4:	b403      	push	{r0, r1}
c0de2ca6:	f04f 0086 	mov.w	r0, #134	; 0x86
c0de2caa:	e7ff      	b.n	c0de2cac <cx_trampoline_helper>

c0de2cac <cx_trampoline_helper>:
c0de2cac:	4900      	ldr	r1, [pc, #0]	; (c0de2cb0 <cx_trampoline_helper+0x4>)
c0de2cae:	4708      	bx	r1
c0de2cb0:	00808001 	.word	0x00808001

c0de2cb4 <jsmn_parse>:
c0de2cb4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de2cb8:	b083      	sub	sp, #12
c0de2cba:	8805      	ldrh	r5, [r0, #0]
c0de2cbc:	f8b0 b002 	ldrh.w	fp, [r0, #2]
c0de2cc0:	4295      	cmp	r5, r2
c0de2cc2:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
c0de2cc6:	f080 81c1 	bcs.w	c0de304c <jsmn_parse+0x398>
c0de2cca:	f04f 0e01 	mov.w	lr, #1
c0de2cce:	46aa      	mov	sl, r5
c0de2cd0:	46d8      	mov	r8, fp
c0de2cd2:	f8cd b008 	str.w	fp, [sp, #8]
c0de2cd6:	bf00      	nop
c0de2cd8:	5d4d      	ldrb	r5, [r1, r5]
c0de2cda:	2d2b      	cmp	r5, #43	; 0x2b
c0de2cdc:	dd0c      	ble.n	c0de2cf8 <jsmn_parse+0x44>
c0de2cde:	2d5c      	cmp	r5, #92	; 0x5c
c0de2ce0:	dc7a      	bgt.n	c0de2dd8 <jsmn_parse+0x124>
c0de2ce2:	2d2c      	cmp	r5, #44	; 0x2c
c0de2ce4:	f000 80db 	beq.w	c0de2e9e <jsmn_parse+0x1ea>
c0de2ce8:	2d3a      	cmp	r5, #58	; 0x3a
c0de2cea:	f000 8100 	beq.w	c0de2eee <jsmn_parse+0x23a>
c0de2cee:	2d5b      	cmp	r5, #91	; 0x5b
c0de2cf0:	4657      	mov	r7, sl
c0de2cf2:	f000 809d 	beq.w	c0de2e30 <jsmn_parse+0x17c>
c0de2cf6:	e103      	b.n	c0de2f00 <jsmn_parse+0x24c>
c0de2cf8:	f1a5 0609 	sub.w	r6, r5, #9
c0de2cfc:	2e19      	cmp	r6, #25
c0de2cfe:	f200 80fa 	bhi.w	c0de2ef6 <jsmn_parse+0x242>
c0de2d02:	4c11      	ldr	r4, [pc, #68]	; (c0de2d48 <jsmn_parse+0x94>)
c0de2d04:	fa0e f706 	lsl.w	r7, lr, r6
c0de2d08:	4227      	tst	r7, r4
c0de2d0a:	f040 818f 	bne.w	c0de302c <jsmn_parse+0x378>
c0de2d0e:	2e19      	cmp	r6, #25
c0de2d10:	f040 80f1 	bne.w	c0de2ef6 <jsmn_parse+0x242>
c0de2d14:	f10a 0701 	add.w	r7, sl, #1
c0de2d18:	b2be      	uxth	r6, r7
c0de2d1a:	4296      	cmp	r6, r2
c0de2d1c:	f8cd 8004 	str.w	r8, [sp, #4]
c0de2d20:	9700      	str	r7, [sp, #0]
c0de2d22:	8007      	strh	r7, [r0, #0]
c0de2d24:	f080 81ac 	bcs.w	c0de3080 <jsmn_parse+0x3cc>
c0de2d28:	9d00      	ldr	r5, [sp, #0]
c0de2d2a:	4657      	mov	r7, sl
c0de2d2c:	f811 e006 	ldrb.w	lr, [r1, r6]
c0de2d30:	f1be 0f5c 	cmp.w	lr, #92	; 0x5c
c0de2d34:	d00a      	beq.n	c0de2d4c <jsmn_parse+0x98>
c0de2d36:	f1be 0f00 	cmp.w	lr, #0
c0de2d3a:	f000 81a1 	beq.w	c0de3080 <jsmn_parse+0x3cc>
c0de2d3e:	f1be 0f22 	cmp.w	lr, #34	; 0x22
c0de2d42:	d119      	bne.n	c0de2d78 <jsmn_parse+0xc4>
c0de2d44:	e149      	b.n	c0de2fda <jsmn_parse+0x326>
c0de2d46:	bf00      	nop
c0de2d48:	00800013 	.word	0x00800013
c0de2d4c:	3601      	adds	r6, #1
c0de2d4e:	4296      	cmp	r6, r2
c0de2d50:	d212      	bcs.n	c0de2d78 <jsmn_parse+0xc4>
c0de2d52:	1cbd      	adds	r5, r7, #2
c0de2d54:	8005      	strh	r5, [r0, #0]
c0de2d56:	b2ae      	uxth	r6, r5
c0de2d58:	f811 e006 	ldrb.w	lr, [r1, r6]
c0de2d5c:	46d8      	mov	r8, fp
c0de2d5e:	f1ae 0b5c 	sub.w	fp, lr, #92	; 0x5c
c0de2d62:	f1bb 0f19 	cmp.w	fp, #25
c0de2d66:	d82e      	bhi.n	c0de2dc6 <jsmn_parse+0x112>
c0de2d68:	2601      	movs	r6, #1
c0de2d6a:	4cd2      	ldr	r4, [pc, #840]	; (c0de30b4 <jsmn_parse+0x400>)
c0de2d6c:	fa06 f60b 	lsl.w	r6, r6, fp
c0de2d70:	4226      	tst	r6, r4
c0de2d72:	d008      	beq.n	c0de2d86 <jsmn_parse+0xd2>
c0de2d74:	46c3      	mov	fp, r8
c0de2d76:	bf00      	nop
c0de2d78:	462f      	mov	r7, r5
c0de2d7a:	3501      	adds	r5, #1
c0de2d7c:	b2ae      	uxth	r6, r5
c0de2d7e:	4296      	cmp	r6, r2
c0de2d80:	8005      	strh	r5, [r0, #0]
c0de2d82:	d3d3      	bcc.n	c0de2d2c <jsmn_parse+0x78>
c0de2d84:	e17c      	b.n	c0de3080 <jsmn_parse+0x3cc>
c0de2d86:	f1bb 0f19 	cmp.w	fp, #25
c0de2d8a:	d11c      	bne.n	c0de2dc6 <jsmn_parse+0x112>
c0de2d8c:	1cfd      	adds	r5, r7, #3
c0de2d8e:	2700      	movs	r7, #0
c0de2d90:	46c3      	mov	fp, r8
c0de2d92:	8005      	strh	r5, [r0, #0]
c0de2d94:	b2ae      	uxth	r6, r5
c0de2d96:	4296      	cmp	r6, r2
c0de2d98:	d213      	bcs.n	c0de2dc2 <jsmn_parse+0x10e>
c0de2d9a:	5d8e      	ldrb	r6, [r1, r6]
c0de2d9c:	b18e      	cbz	r6, c0de2dc2 <jsmn_parse+0x10e>
c0de2d9e:	f1a6 0430 	sub.w	r4, r6, #48	; 0x30
c0de2da2:	2c0a      	cmp	r4, #10
c0de2da4:	d307      	bcc.n	c0de2db6 <jsmn_parse+0x102>
c0de2da6:	f1a6 0441 	sub.w	r4, r6, #65	; 0x41
c0de2daa:	2c06      	cmp	r4, #6
c0de2dac:	d303      	bcc.n	c0de2db6 <jsmn_parse+0x102>
c0de2dae:	3e61      	subs	r6, #97	; 0x61
c0de2db0:	2e06      	cmp	r6, #6
c0de2db2:	f080 816f 	bcs.w	c0de3094 <jsmn_parse+0x3e0>
c0de2db6:	3501      	adds	r5, #1
c0de2db8:	2f03      	cmp	r7, #3
c0de2dba:	f107 0701 	add.w	r7, r7, #1
c0de2dbe:	8005      	strh	r5, [r0, #0]
c0de2dc0:	d3e8      	bcc.n	c0de2d94 <jsmn_parse+0xe0>
c0de2dc2:	3d01      	subs	r5, #1
c0de2dc4:	e7d8      	b.n	c0de2d78 <jsmn_parse+0xc4>
c0de2dc6:	f1be 0f22 	cmp.w	lr, #34	; 0x22
c0de2dca:	d0d3      	beq.n	c0de2d74 <jsmn_parse+0xc0>
c0de2dcc:	f1be 0f2f 	cmp.w	lr, #47	; 0x2f
c0de2dd0:	46c3      	mov	fp, r8
c0de2dd2:	d0d1      	beq.n	c0de2d78 <jsmn_parse+0xc4>
c0de2dd4:	e15e      	b.n	c0de3094 <jsmn_parse+0x3e0>
c0de2dd6:	bf00      	nop
c0de2dd8:	2d5d      	cmp	r5, #93	; 0x5d
c0de2dda:	d005      	beq.n	c0de2de8 <jsmn_parse+0x134>
c0de2ddc:	2d7b      	cmp	r5, #123	; 0x7b
c0de2dde:	d027      	beq.n	c0de2e30 <jsmn_parse+0x17c>
c0de2de0:	2d7d      	cmp	r5, #125	; 0x7d
c0de2de2:	4657      	mov	r7, sl
c0de2de4:	f040 808c 	bne.w	c0de2f00 <jsmn_parse+0x24c>
c0de2de8:	2b00      	cmp	r3, #0
c0de2dea:	f000 811f 	beq.w	c0de302c <jsmn_parse+0x378>
c0de2dee:	f1ab 0701 	sub.w	r7, fp, #1
c0de2df2:	f8cd 8004 	str.w	r8, [sp, #4]
c0de2df6:	2d7d      	cmp	r5, #125	; 0x7d
c0de2df8:	f04f 0802 	mov.w	r8, #2
c0de2dfc:	b23c      	sxth	r4, r7
c0de2dfe:	bf08      	it	eq
c0de2e00:	f04f 0801 	moveq.w	r8, #1
c0de2e04:	4564      	cmp	r4, ip
c0de2e06:	f340 80c8 	ble.w	c0de2f9a <jsmn_parse+0x2e6>
c0de2e0a:	bf00      	nop
c0de2e0c:	b2a5      	uxth	r5, r4
c0de2e0e:	eb03 06c5 	add.w	r6, r3, r5, lsl #3
c0de2e12:	8877      	ldrh	r7, [r6, #2]
c0de2e14:	fa1f fe8c 	uxth.w	lr, ip
c0de2e18:	4577      	cmp	r7, lr
c0de2e1a:	d004      	beq.n	c0de2e26 <jsmn_parse+0x172>
c0de2e1c:	f836 7f04 	ldrh.w	r7, [r6, #4]!
c0de2e20:	4577      	cmp	r7, lr
c0de2e22:	f000 80c2 	beq.w	c0de2faa <jsmn_parse+0x2f6>
c0de2e26:	1e67      	subs	r7, r4, #1
c0de2e28:	b23c      	sxth	r4, r7
c0de2e2a:	4564      	cmp	r4, ip
c0de2e2c:	dcee      	bgt.n	c0de2e0c <jsmn_parse+0x158>
c0de2e2e:	e133      	b.n	c0de3098 <jsmn_parse+0x3e4>
c0de2e30:	2b00      	cmp	r3, #0
c0de2e32:	f108 0801 	add.w	r8, r8, #1
c0de2e36:	f000 80f9 	beq.w	c0de302c <jsmn_parse+0x378>
c0de2e3a:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
c0de2e3c:	fa1f f68b 	uxth.w	r6, fp
c0de2e40:	42be      	cmp	r6, r7
c0de2e42:	f080 8134 	bcs.w	c0de30ae <jsmn_parse+0x3fa>
c0de2e46:	f10b 0701 	add.w	r7, fp, #1
c0de2e4a:	f8b0 e004 	ldrh.w	lr, [r0, #4]
c0de2e4e:	9702      	str	r7, [sp, #8]
c0de2e50:	8047      	strh	r7, [r0, #2]
c0de2e52:	eb03 07c6 	add.w	r7, r3, r6, lsl #3
c0de2e56:	fa1f f48c 	uxth.w	r4, ip
c0de2e5a:	f827 cf02 	strh.w	ip, [r7, #2]!
c0de2e5e:	45a6      	cmp	lr, r4
c0de2e60:	f04f 0400 	mov.w	r4, #0
c0de2e64:	f8a7 c002 	strh.w	ip, [r7, #2]
c0de2e68:	80bc      	strh	r4, [r7, #4]
c0de2e6a:	d008      	beq.n	c0de2e7e <jsmn_parse+0x1ca>
c0de2e6c:	fa0f f48e 	sxth.w	r4, lr
c0de2e70:	eb03 0ec4 	add.w	lr, r3, r4, lsl #3
c0de2e74:	f8be 4006 	ldrh.w	r4, [lr, #6]
c0de2e78:	3401      	adds	r4, #1
c0de2e7a:	f8ae 4006 	strh.w	r4, [lr, #6]
c0de2e7e:	2d7b      	cmp	r5, #123	; 0x7b
c0de2e80:	f04f 0502 	mov.w	r5, #2
c0de2e84:	bf08      	it	eq
c0de2e86:	2501      	moveq	r5, #1
c0de2e88:	f8a0 b004 	strh.w	fp, [r0, #4]
c0de2e8c:	f8dd b008 	ldr.w	fp, [sp, #8]
c0de2e90:	f803 5036 	strb.w	r5, [r3, r6, lsl #3]
c0de2e94:	f8a7 a000 	strh.w	sl, [r7]
c0de2e98:	f04f 0e01 	mov.w	lr, #1
c0de2e9c:	e0c6      	b.n	c0de302c <jsmn_parse+0x378>
c0de2e9e:	2b00      	cmp	r3, #0
c0de2ea0:	f000 80c4 	beq.w	c0de302c <jsmn_parse+0x378>
c0de2ea4:	8887      	ldrh	r7, [r0, #4]
c0de2ea6:	fa1f f58c 	uxth.w	r5, ip
c0de2eaa:	42af      	cmp	r7, r5
c0de2eac:	f000 80be 	beq.w	c0de302c <jsmn_parse+0x378>
c0de2eb0:	b23f      	sxth	r7, r7
c0de2eb2:	f813 7037 	ldrb.w	r7, [r3, r7, lsl #3]
c0de2eb6:	3f01      	subs	r7, #1
c0de2eb8:	2f02      	cmp	r7, #2
c0de2eba:	f0c0 80b7 	bcc.w	c0de302c <jsmn_parse+0x378>
c0de2ebe:	9c02      	ldr	r4, [sp, #8]
c0de2ec0:	1e67      	subs	r7, r4, #1
c0de2ec2:	bf00      	nop
c0de2ec4:	b23e      	sxth	r6, r7
c0de2ec6:	4566      	cmp	r6, ip
c0de2ec8:	f340 80b0 	ble.w	c0de302c <jsmn_parse+0x378>
c0de2ecc:	b2b7      	uxth	r7, r6
c0de2ece:	f813 4037 	ldrb.w	r4, [r3, r7, lsl #3]
c0de2ed2:	3c01      	subs	r4, #1
c0de2ed4:	2c01      	cmp	r4, #1
c0de2ed6:	d808      	bhi.n	c0de2eea <jsmn_parse+0x236>
c0de2ed8:	eb03 07c7 	add.w	r7, r3, r7, lsl #3
c0de2edc:	887c      	ldrh	r4, [r7, #2]
c0de2ede:	42ac      	cmp	r4, r5
c0de2ee0:	d003      	beq.n	c0de2eea <jsmn_parse+0x236>
c0de2ee2:	88bf      	ldrh	r7, [r7, #4]
c0de2ee4:	42af      	cmp	r7, r5
c0de2ee6:	f000 80af 	beq.w	c0de3048 <jsmn_parse+0x394>
c0de2eea:	1e77      	subs	r7, r6, #1
c0de2eec:	e7ea      	b.n	c0de2ec4 <jsmn_parse+0x210>
c0de2eee:	9c02      	ldr	r4, [sp, #8]
c0de2ef0:	1e67      	subs	r7, r4, #1
c0de2ef2:	8087      	strh	r7, [r0, #4]
c0de2ef4:	e09a      	b.n	c0de302c <jsmn_parse+0x378>
c0de2ef6:	2d00      	cmp	r5, #0
c0de2ef8:	4657      	mov	r7, sl
c0de2efa:	f000 80a8 	beq.w	c0de304e <jsmn_parse+0x39a>
c0de2efe:	bf00      	nop
c0de2f00:	2d1f      	cmp	r5, #31
c0de2f02:	dd0d      	ble.n	c0de2f20 <jsmn_parse+0x26c>
c0de2f04:	f1a5 0620 	sub.w	r6, r5, #32
c0de2f08:	2e1a      	cmp	r6, #26
c0de2f0a:	d804      	bhi.n	c0de2f16 <jsmn_parse+0x262>
c0de2f0c:	4c6a      	ldr	r4, [pc, #424]	; (c0de30b8 <jsmn_parse+0x404>)
c0de2f0e:	fa0e f606 	lsl.w	r6, lr, r6
c0de2f12:	4226      	tst	r6, r4
c0de2f14:	d118      	bne.n	c0de2f48 <jsmn_parse+0x294>
c0de2f16:	2d5d      	cmp	r5, #93	; 0x5d
c0de2f18:	d016      	beq.n	c0de2f48 <jsmn_parse+0x294>
c0de2f1a:	2d7d      	cmp	r5, #125	; 0x7d
c0de2f1c:	d108      	bne.n	c0de2f30 <jsmn_parse+0x27c>
c0de2f1e:	e013      	b.n	c0de2f48 <jsmn_parse+0x294>
c0de2f20:	2d0d      	cmp	r5, #13
c0de2f22:	d805      	bhi.n	c0de2f30 <jsmn_parse+0x27c>
c0de2f24:	fa0e f605 	lsl.w	r6, lr, r5
c0de2f28:	f242 6401 	movw	r4, #9729	; 0x2601
c0de2f2c:	4226      	tst	r6, r4
c0de2f2e:	d10b      	bne.n	c0de2f48 <jsmn_parse+0x294>
c0de2f30:	f1a5 0620 	sub.w	r6, r5, #32
c0de2f34:	2e5e      	cmp	r6, #94	; 0x5e
c0de2f36:	f200 80a8 	bhi.w	c0de308a <jsmn_parse+0x3d6>
c0de2f3a:	3701      	adds	r7, #1
c0de2f3c:	b2be      	uxth	r6, r7
c0de2f3e:	4296      	cmp	r6, r2
c0de2f40:	8007      	strh	r7, [r0, #0]
c0de2f42:	d201      	bcs.n	c0de2f48 <jsmn_parse+0x294>
c0de2f44:	5d8d      	ldrb	r5, [r1, r6]
c0de2f46:	e7db      	b.n	c0de2f00 <jsmn_parse+0x24c>
c0de2f48:	b1ab      	cbz	r3, c0de2f76 <jsmn_parse+0x2c2>
c0de2f4a:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
c0de2f4c:	fa1f f68b 	uxth.w	r6, fp
c0de2f50:	42ae      	cmp	r6, r5
c0de2f52:	f080 80a7 	bcs.w	c0de30a4 <jsmn_parse+0x3f0>
c0de2f56:	2404      	movs	r4, #4
c0de2f58:	f10b 0b01 	add.w	fp, fp, #1
c0de2f5c:	eb03 05c6 	add.w	r5, r3, r6, lsl #3
c0de2f60:	f803 4036 	strb.w	r4, [r3, r6, lsl #3]
c0de2f64:	2400      	movs	r4, #0
c0de2f66:	f8a0 b002 	strh.w	fp, [r0, #2]
c0de2f6a:	f8a5 a002 	strh.w	sl, [r5, #2]
c0de2f6e:	80af      	strh	r7, [r5, #4]
c0de2f70:	80ec      	strh	r4, [r5, #6]
c0de2f72:	f8cd b008 	str.w	fp, [sp, #8]
c0de2f76:	f1a7 0a01 	sub.w	sl, r7, #1
c0de2f7a:	2b00      	cmp	r3, #0
c0de2f7c:	f108 0801 	add.w	r8, r8, #1
c0de2f80:	d054      	beq.n	c0de302c <jsmn_parse+0x378>
c0de2f82:	8887      	ldrh	r7, [r0, #4]
c0de2f84:	fa1f f68c 	uxth.w	r6, ip
c0de2f88:	42b7      	cmp	r7, r6
c0de2f8a:	d04f      	beq.n	c0de302c <jsmn_parse+0x378>
c0de2f8c:	b23f      	sxth	r7, r7
c0de2f8e:	eb03 07c7 	add.w	r7, r3, r7, lsl #3
c0de2f92:	88fe      	ldrh	r6, [r7, #6]
c0de2f94:	3601      	adds	r6, #1
c0de2f96:	80fe      	strh	r6, [r7, #6]
c0de2f98:	e048      	b.n	c0de302c <jsmn_parse+0x378>
c0de2f9a:	f8dd 8004 	ldr.w	r8, [sp, #4]
c0de2f9e:	ea5f 470b 	movs.w	r7, fp, lsl #16
c0de2fa2:	f8cd b008 	str.w	fp, [sp, #8]
c0de2fa6:	d141      	bne.n	c0de302c <jsmn_parse+0x378>
c0de2fa8:	e076      	b.n	c0de3098 <jsmn_parse+0x3e4>
c0de2faa:	f813 4035 	ldrb.w	r4, [r3, r5, lsl #3]
c0de2fae:	45a0      	cmp	r8, r4
c0de2fb0:	d172      	bne.n	c0de3098 <jsmn_parse+0x3e4>
c0de2fb2:	f8dd 8004 	ldr.w	r8, [sp, #4]
c0de2fb6:	f10a 0401 	add.w	r4, sl, #1
c0de2fba:	f8a0 c004 	strh.w	ip, [r0, #4]
c0de2fbe:	8034      	strh	r4, [r6, #0]
c0de2fc0:	eb03 06c5 	add.w	r6, r3, r5, lsl #3
c0de2fc4:	8874      	ldrh	r4, [r6, #2]
c0de2fc6:	4574      	cmp	r4, lr
c0de2fc8:	d002      	beq.n	c0de2fd0 <jsmn_parse+0x31c>
c0de2fca:	88b4      	ldrh	r4, [r6, #4]
c0de2fcc:	4574      	cmp	r4, lr
c0de2fce:	d037      	beq.n	c0de3040 <jsmn_parse+0x38c>
c0de2fd0:	2d00      	cmp	r5, #0
c0de2fd2:	f1a5 0501 	sub.w	r5, r5, #1
c0de2fd6:	dcf3      	bgt.n	c0de2fc0 <jsmn_parse+0x30c>
c0de2fd8:	e033      	b.n	c0de3042 <jsmn_parse+0x38e>
c0de2fda:	b1a3      	cbz	r3, c0de3006 <jsmn_parse+0x352>
c0de2fdc:	9c02      	ldr	r4, [sp, #8]
c0de2fde:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
c0de2fe0:	b2a6      	uxth	r6, r4
c0de2fe2:	42be      	cmp	r6, r7
c0de2fe4:	d261      	bcs.n	c0de30aa <jsmn_parse+0x3f6>
c0de2fe6:	f104 0b01 	add.w	fp, r4, #1
c0de2fea:	2403      	movs	r4, #3
c0de2fec:	eb03 07c6 	add.w	r7, r3, r6, lsl #3
c0de2ff0:	f803 4036 	strb.w	r4, [r3, r6, lsl #3]
c0de2ff4:	9e00      	ldr	r6, [sp, #0]
c0de2ff6:	f8a0 b002 	strh.w	fp, [r0, #2]
c0de2ffa:	807e      	strh	r6, [r7, #2]
c0de2ffc:	2600      	movs	r6, #0
c0de2ffe:	80bd      	strh	r5, [r7, #4]
c0de3000:	80fe      	strh	r6, [r7, #6]
c0de3002:	f8cd b008 	str.w	fp, [sp, #8]
c0de3006:	f8dd 8004 	ldr.w	r8, [sp, #4]
c0de300a:	f04f 0e01 	mov.w	lr, #1
c0de300e:	f108 0801 	add.w	r8, r8, #1
c0de3012:	b153      	cbz	r3, c0de302a <jsmn_parse+0x376>
c0de3014:	8887      	ldrh	r7, [r0, #4]
c0de3016:	fa1f f68c 	uxth.w	r6, ip
c0de301a:	42b7      	cmp	r7, r6
c0de301c:	d005      	beq.n	c0de302a <jsmn_parse+0x376>
c0de301e:	b23f      	sxth	r7, r7
c0de3020:	eb03 07c7 	add.w	r7, r3, r7, lsl #3
c0de3024:	88fe      	ldrh	r6, [r7, #6]
c0de3026:	3601      	adds	r6, #1
c0de3028:	80fe      	strh	r6, [r7, #6]
c0de302a:	46aa      	mov	sl, r5
c0de302c:	f10a 0a01 	add.w	sl, sl, #1
c0de3030:	fa1f f58a 	uxth.w	r5, sl
c0de3034:	4295      	cmp	r5, r2
c0de3036:	f8a0 a000 	strh.w	sl, [r0]
c0de303a:	f4ff ae4d 	bcc.w	c0de2cd8 <jsmn_parse+0x24>
c0de303e:	e006      	b.n	c0de304e <jsmn_parse+0x39a>
c0de3040:	8085      	strh	r5, [r0, #4]
c0de3042:	f8cd b008 	str.w	fp, [sp, #8]
c0de3046:	e727      	b.n	c0de2e98 <jsmn_parse+0x1e4>
c0de3048:	8086      	strh	r6, [r0, #4]
c0de304a:	e7ef      	b.n	c0de302c <jsmn_parse+0x378>
c0de304c:	46d8      	mov	r8, fp
c0de304e:	b1a3      	cbz	r3, c0de307a <jsmn_parse+0x3c6>
c0de3050:	f1ab 0001 	sub.w	r0, fp, #1
c0de3054:	b200      	sxth	r0, r0
c0de3056:	4560      	cmp	r0, ip
c0de3058:	dd0f      	ble.n	c0de307a <jsmn_parse+0x3c6>
c0de305a:	fa1f f18c 	uxth.w	r1, ip
c0de305e:	bf00      	nop
c0de3060:	b282      	uxth	r2, r0
c0de3062:	eb03 02c2 	add.w	r2, r3, r2, lsl #3
c0de3066:	8857      	ldrh	r7, [r2, #2]
c0de3068:	428f      	cmp	r7, r1
c0de306a:	d002      	beq.n	c0de3072 <jsmn_parse+0x3be>
c0de306c:	8892      	ldrh	r2, [r2, #4]
c0de306e:	428a      	cmp	r2, r1
c0de3070:	d008      	beq.n	c0de3084 <jsmn_parse+0x3d0>
c0de3072:	3801      	subs	r0, #1
c0de3074:	b200      	sxth	r0, r0
c0de3076:	4560      	cmp	r0, ip
c0de3078:	dcf2      	bgt.n	c0de3060 <jsmn_parse+0x3ac>
c0de307a:	fa0f f188 	sxth.w	r1, r8
c0de307e:	e00d      	b.n	c0de309c <jsmn_parse+0x3e8>
c0de3080:	f8a0 a000 	strh.w	sl, [r0]
c0de3084:	f06f 0102 	mvn.w	r1, #2
c0de3088:	e008      	b.n	c0de309c <jsmn_parse+0x3e8>
c0de308a:	f06f 0101 	mvn.w	r1, #1
c0de308e:	f8a0 a000 	strh.w	sl, [r0]
c0de3092:	e003      	b.n	c0de309c <jsmn_parse+0x3e8>
c0de3094:	f8a0 a000 	strh.w	sl, [r0]
c0de3098:	f06f 0101 	mvn.w	r1, #1
c0de309c:	4608      	mov	r0, r1
c0de309e:	b003      	add	sp, #12
c0de30a0:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de30a4:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
c0de30a8:	e7f1      	b.n	c0de308e <jsmn_parse+0x3da>
c0de30aa:	f8a0 a000 	strh.w	sl, [r0]
c0de30ae:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
c0de30b2:	e7f3      	b.n	c0de309c <jsmn_parse+0x3e8>
c0de30b4:	01440441 	.word	0x01440441
c0de30b8:	04001001 	.word	0x04001001

c0de30bc <jsmn_init>:
c0de30bc:	2100      	movs	r1, #0
c0de30be:	8001      	strh	r1, [r0, #0]
c0de30c0:	8041      	strh	r1, [r0, #2]
c0de30c2:	f64f 71ff 	movw	r1, #65535	; 0xffff
c0de30c6:	8081      	strh	r1, [r0, #4]
c0de30c8:	4770      	bx	lr

c0de30ca <json_parse>:
c0de30ca:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de30ce:	b083      	sub	sp, #12
c0de30d0:	f641 0a08 	movw	sl, #6152	; 0x1808
c0de30d4:	f10d 0804 	add.w	r8, sp, #4
c0de30d8:	4604      	mov	r4, r0
c0de30da:	eb00 070a 	add.w	r7, r0, sl
c0de30de:	4640      	mov	r0, r8
c0de30e0:	4615      	mov	r5, r2
c0de30e2:	460e      	mov	r6, r1
c0de30e4:	f7ff ffea 	bl	c0de30bc <jsmn_init>
c0de30e8:	4620      	mov	r0, r4
c0de30ea:	f641 0110 	movw	r1, #6160	; 0x1810
c0de30ee:	f006 fc42 	bl	c0de9976 <explicit_bzero>
c0de30f2:	80bd      	strh	r5, [r7, #4]
c0de30f4:	f104 0308 	add.w	r3, r4, #8
c0de30f8:	f44f 7740 	mov.w	r7, #768	; 0x300
c0de30fc:	4640      	mov	r0, r8
c0de30fe:	4631      	mov	r1, r6
c0de3100:	462a      	mov	r2, r5
c0de3102:	f844 600a 	str.w	r6, [r4, sl]
c0de3106:	9700      	str	r7, [sp, #0]
c0de3108:	f7ff fdd4 	bl	c0de2cb4 <jsmn_parse>
c0de310c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
c0de3110:	dd0b      	ble.n	c0de312a <json_parse+0x60>
c0de3112:	2100      	movs	r1, #0
c0de3114:	6061      	str	r1, [r4, #4]
c0de3116:	7021      	strb	r1, [r4, #0]
c0de3118:	b190      	cbz	r0, c0de3140 <json_parse+0x76>
c0de311a:	f5b0 7f40 	cmp.w	r0, #768	; 0x300
c0de311e:	dc0d      	bgt.n	c0de313c <json_parse+0x72>
c0de3120:	6060      	str	r0, [r4, #4]
c0de3122:	2001      	movs	r0, #1
c0de3124:	7020      	strb	r0, [r4, #0]
c0de3126:	2000      	movs	r0, #0
c0de3128:	e00d      	b.n	c0de3146 <json_parse+0x7c>
c0de312a:	1cc1      	adds	r1, r0, #3
c0de312c:	d00a      	beq.n	c0de3144 <json_parse+0x7a>
c0de312e:	1c41      	adds	r1, r0, #1
c0de3130:	d004      	beq.n	c0de313c <json_parse+0x72>
c0de3132:	3002      	adds	r0, #2
c0de3134:	bf14      	ite	ne
c0de3136:	2020      	movne	r0, #32
c0de3138:	200c      	moveq	r0, #12
c0de313a:	e004      	b.n	c0de3146 <json_parse+0x7c>
c0de313c:	2016      	movs	r0, #22
c0de313e:	e002      	b.n	c0de3146 <json_parse+0x7c>
c0de3140:	2015      	movs	r0, #21
c0de3142:	e000      	b.n	c0de3146 <json_parse+0x7c>
c0de3144:	2017      	movs	r0, #23
c0de3146:	b003      	add	sp, #12
c0de3148:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}

c0de314c <array_get_element_count>:
c0de314c:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de314e:	f8d0 c004 	ldr.w	ip, [r0, #4]
c0de3152:	2300      	movs	r3, #0
c0de3154:	458c      	cmp	ip, r1
c0de3156:	8013      	strh	r3, [r2, #0]
c0de3158:	bf3c      	itt	cc
c0de315a:	2001      	movcc	r0, #1
c0de315c:	bdf0      	popcc	{r4, r5, r6, r7, pc}
c0de315e:	1c4b      	adds	r3, r1, #1
c0de3160:	b29d      	uxth	r5, r3
c0de3162:	45ac      	cmp	ip, r5
c0de3164:	d916      	bls.n	c0de3194 <array_get_element_count+0x48>
c0de3166:	eb00 01c1 	add.w	r1, r0, r1, lsl #3
c0de316a:	f9b1 e00c 	ldrsh.w	lr, [r1, #12]
c0de316e:	894c      	ldrh	r4, [r1, #10]
c0de3170:	2100      	movs	r1, #0
c0de3172:	bf00      	nop
c0de3174:	eb00 05c5 	add.w	r5, r0, r5, lsl #3
c0de3178:	f9b5 600a 	ldrsh.w	r6, [r5, #10]
c0de317c:	4576      	cmp	r6, lr
c0de317e:	dc09      	bgt.n	c0de3194 <array_get_element_count+0x48>
c0de3180:	b2a7      	uxth	r7, r4
c0de3182:	42be      	cmp	r6, r7
c0de3184:	dd02      	ble.n	c0de318c <array_get_element_count+0x40>
c0de3186:	89ac      	ldrh	r4, [r5, #12]
c0de3188:	3101      	adds	r1, #1
c0de318a:	8011      	strh	r1, [r2, #0]
c0de318c:	3301      	adds	r3, #1
c0de318e:	b29d      	uxth	r5, r3
c0de3190:	45ac      	cmp	ip, r5
c0de3192:	d8ef      	bhi.n	c0de3174 <array_get_element_count+0x28>
c0de3194:	2000      	movs	r0, #0
c0de3196:	bdf0      	pop	{r4, r5, r6, r7, pc}

c0de3198 <array_get_nth_element>:
c0de3198:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de319c:	f8d0 c004 	ldr.w	ip, [r0, #4]
c0de31a0:	458c      	cmp	ip, r1
c0de31a2:	d320      	bcc.n	c0de31e6 <array_get_nth_element+0x4e>
c0de31a4:	eb00 07c1 	add.w	r7, r0, r1, lsl #3
c0de31a8:	3101      	adds	r1, #1
c0de31aa:	f8b7 800a 	ldrh.w	r8, [r7, #10]
c0de31ae:	f9b7 e00c 	ldrsh.w	lr, [r7, #12]
c0de31b2:	b28e      	uxth	r6, r1
c0de31b4:	45b4      	cmp	ip, r6
c0de31b6:	8019      	strh	r1, [r3, #0]
c0de31b8:	d915      	bls.n	c0de31e6 <array_get_nth_element+0x4e>
c0de31ba:	2500      	movs	r5, #0
c0de31bc:	eb00 06c6 	add.w	r6, r0, r6, lsl #3
c0de31c0:	f9b6 700a 	ldrsh.w	r7, [r6, #10]
c0de31c4:	4577      	cmp	r7, lr
c0de31c6:	dc0e      	bgt.n	c0de31e6 <array_get_nth_element+0x4e>
c0de31c8:	fa1f f488 	uxth.w	r4, r8
c0de31cc:	42a7      	cmp	r7, r4
c0de31ce:	dd05      	ble.n	c0de31dc <array_get_nth_element+0x44>
c0de31d0:	b2ac      	uxth	r4, r5
c0de31d2:	4294      	cmp	r4, r2
c0de31d4:	d00a      	beq.n	c0de31ec <array_get_nth_element+0x54>
c0de31d6:	f8b6 800c 	ldrh.w	r8, [r6, #12]
c0de31da:	3501      	adds	r5, #1
c0de31dc:	3101      	adds	r1, #1
c0de31de:	b28e      	uxth	r6, r1
c0de31e0:	45b4      	cmp	ip, r6
c0de31e2:	8019      	strh	r1, [r3, #0]
c0de31e4:	d8ea      	bhi.n	c0de31bc <array_get_nth_element+0x24>
c0de31e6:	2001      	movs	r0, #1
c0de31e8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de31ec:	2000      	movs	r0, #0
c0de31ee:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
	...

c0de31f4 <object_get_element_count>:
c0de31f4:	b570      	push	{r4, r5, r6, lr}
c0de31f6:	f8d0 c004 	ldr.w	ip, [r0, #4]
c0de31fa:	2300      	movs	r3, #0
c0de31fc:	458c      	cmp	ip, r1
c0de31fe:	8013      	strh	r3, [r2, #0]
c0de3200:	bf3c      	itt	cc
c0de3202:	2001      	movcc	r0, #1
c0de3204:	bd70      	popcc	{r4, r5, r6, pc}
c0de3206:	f101 0e01 	add.w	lr, r1, #1
c0de320a:	fa1f f38e 	uxth.w	r3, lr
c0de320e:	459c      	cmp	ip, r3
c0de3210:	d91a      	bls.n	c0de3248 <object_get_element_count+0x54>
c0de3212:	eb00 04c1 	add.w	r4, r0, r1, lsl #3
c0de3216:	f9b4 100c 	ldrsh.w	r1, [r4, #12]
c0de321a:	8965      	ldrh	r5, [r4, #10]
c0de321c:	2400      	movs	r4, #0
c0de321e:	3008      	adds	r0, #8
c0de3220:	eb00 03c3 	add.w	r3, r0, r3, lsl #3
c0de3224:	f9b3 3002 	ldrsh.w	r3, [r3, #2]
c0de3228:	428b      	cmp	r3, r1
c0de322a:	dc0d      	bgt.n	c0de3248 <object_get_element_count+0x54>
c0de322c:	f10e 0e01 	add.w	lr, lr, #1
c0de3230:	b2ae      	uxth	r6, r5
c0de3232:	42b3      	cmp	r3, r6
c0de3234:	fa1f f38e 	uxth.w	r3, lr
c0de3238:	dd04      	ble.n	c0de3244 <object_get_element_count+0x50>
c0de323a:	eb00 05c3 	add.w	r5, r0, r3, lsl #3
c0de323e:	88ad      	ldrh	r5, [r5, #4]
c0de3240:	3401      	adds	r4, #1
c0de3242:	8014      	strh	r4, [r2, #0]
c0de3244:	459c      	cmp	ip, r3
c0de3246:	d8eb      	bhi.n	c0de3220 <object_get_element_count+0x2c>
c0de3248:	2000      	movs	r0, #0
c0de324a:	bd70      	pop	{r4, r5, r6, pc}

c0de324c <object_get_nth_key>:
c0de324c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de3250:	f8d0 c004 	ldr.w	ip, [r0, #4]
c0de3254:	8019      	strh	r1, [r3, #0]
c0de3256:	458c      	cmp	ip, r1
c0de3258:	d324      	bcc.n	c0de32a4 <object_get_nth_key+0x58>
c0de325a:	eb00 07c1 	add.w	r7, r0, r1, lsl #3
c0de325e:	1c4e      	adds	r6, r1, #1
c0de3260:	897c      	ldrh	r4, [r7, #10]
c0de3262:	f9b7 e00c 	ldrsh.w	lr, [r7, #12]
c0de3266:	b2b5      	uxth	r5, r6
c0de3268:	45ac      	cmp	ip, r5
c0de326a:	801e      	strh	r6, [r3, #0]
c0de326c:	d91a      	bls.n	c0de32a4 <object_get_nth_key+0x58>
c0de326e:	f04f 0800 	mov.w	r8, #0
c0de3272:	3008      	adds	r0, #8
c0de3274:	1c77      	adds	r7, r6, #1
c0de3276:	801f      	strh	r7, [r3, #0]
c0de3278:	eb00 05c5 	add.w	r5, r0, r5, lsl #3
c0de327c:	f9b5 5002 	ldrsh.w	r5, [r5, #2]
c0de3280:	4575      	cmp	r5, lr
c0de3282:	dc0f      	bgt.n	c0de32a4 <object_get_nth_key+0x58>
c0de3284:	b2a1      	uxth	r1, r4
c0de3286:	428d      	cmp	r5, r1
c0de3288:	b2bd      	uxth	r5, r7
c0de328a:	dd08      	ble.n	c0de329e <object_get_nth_key+0x52>
c0de328c:	fa1f f188 	uxth.w	r1, r8
c0de3290:	4291      	cmp	r1, r2
c0de3292:	d00a      	beq.n	c0de32aa <object_get_nth_key+0x5e>
c0de3294:	eb00 01c5 	add.w	r1, r0, r5, lsl #3
c0de3298:	888c      	ldrh	r4, [r1, #4]
c0de329a:	f108 0801 	add.w	r8, r8, #1
c0de329e:	45ac      	cmp	ip, r5
c0de32a0:	463e      	mov	r6, r7
c0de32a2:	d8e7      	bhi.n	c0de3274 <object_get_nth_key+0x28>
c0de32a4:	2001      	movs	r0, #1
c0de32a6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de32aa:	2000      	movs	r0, #0
c0de32ac:	801e      	strh	r6, [r3, #0]
c0de32ae:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

c0de32b2 <object_get_nth_value>:
c0de32b2:	b5b0      	push	{r4, r5, r7, lr}
c0de32b4:	461c      	mov	r4, r3
c0de32b6:	6843      	ldr	r3, [r0, #4]
c0de32b8:	428b      	cmp	r3, r1
c0de32ba:	d201      	bcs.n	c0de32c0 <object_get_nth_value+0xe>
c0de32bc:	2501      	movs	r5, #1
c0de32be:	e00a      	b.n	c0de32d6 <object_get_nth_value+0x24>
c0de32c0:	4623      	mov	r3, r4
c0de32c2:	f7ff ffc3 	bl	c0de324c <object_get_nth_key>
c0de32c6:	4605      	mov	r5, r0
c0de32c8:	f006 fb3a 	bl	c0de9940 <check_app_canary>
c0de32cc:	b91d      	cbnz	r5, c0de32d6 <object_get_nth_value+0x24>
c0de32ce:	8820      	ldrh	r0, [r4, #0]
c0de32d0:	2500      	movs	r5, #0
c0de32d2:	3001      	adds	r0, #1
c0de32d4:	8020      	strh	r0, [r4, #0]
c0de32d6:	4628      	mov	r0, r5
c0de32d8:	bdb0      	pop	{r4, r5, r7, pc}
	...

c0de32dc <object_get_value>:
c0de32dc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de32e0:	b086      	sub	sp, #24
c0de32e2:	6846      	ldr	r6, [r0, #4]
c0de32e4:	428e      	cmp	r6, r1
c0de32e6:	d353      	bcc.n	c0de3390 <object_get_value+0xb4>
c0de32e8:	eb00 07c1 	add.w	r7, r0, r1, lsl #3
c0de32ec:	f101 0a01 	add.w	sl, r1, #1
c0de32f0:	4690      	mov	r8, r2
c0de32f2:	f9b7 200a 	ldrsh.w	r2, [r7, #10]
c0de32f6:	f9b7 700c 	ldrsh.w	r7, [r7, #12]
c0de32fa:	fa1f fb8a 	uxth.w	fp, sl
c0de32fe:	455e      	cmp	r6, fp
c0de3300:	f8a3 a000 	strh.w	sl, [r3]
c0de3304:	d944      	bls.n	c0de3390 <object_get_value+0xb4>
c0de3306:	4605      	mov	r5, r0
c0de3308:	f641 0008 	movw	r0, #6152	; 0x1808
c0de330c:	4428      	add	r0, r5
c0de330e:	f105 0108 	add.w	r1, r5, #8
c0de3312:	e9cd 5000 	strd	r5, r0, [sp]
c0de3316:	9304      	str	r3, [sp, #16]
c0de3318:	e9cd 1702 	strd	r1, r7, [sp, #8]
c0de331c:	eb01 00cb 	add.w	r0, r1, fp, lsl #3
c0de3320:	f9b0 4002 	ldrsh.w	r4, [r0, #2]
c0de3324:	f9b0 5004 	ldrsh.w	r5, [r0, #4]
c0de3328:	f10a 0a01 	add.w	sl, sl, #1
c0de332c:	42bc      	cmp	r4, r7
c0de332e:	f8a3 a000 	strh.w	sl, [r3]
c0de3332:	dc2d      	bgt.n	c0de3390 <object_get_value+0xb4>
c0de3334:	42a2      	cmp	r2, r4
c0de3336:	fa1f fb8a 	uxth.w	fp, sl
c0de333a:	da27      	bge.n	c0de338c <object_get_value+0xb0>
c0de333c:	eb01 00cb 	add.w	r0, r1, fp, lsl #3
c0de3340:	f9b0 0004 	ldrsh.w	r0, [r0, #4]
c0de3344:	9005      	str	r0, [sp, #20]
c0de3346:	4640      	mov	r0, r8
c0de3348:	f006 fb72 	bl	c0de9a30 <strlen>
c0de334c:	b287      	uxth	r7, r0
c0de334e:	1b28      	subs	r0, r5, r4
c0de3350:	4287      	cmp	r7, r0
c0de3352:	d117      	bne.n	c0de3384 <object_get_value+0xa8>
c0de3354:	4640      	mov	r0, r8
c0de3356:	4645      	mov	r5, r8
c0de3358:	f002 faac 	bl	c0de58b4 <pic>
c0de335c:	9901      	ldr	r1, [sp, #4]
c0de335e:	4606      	mov	r6, r0
c0de3360:	6809      	ldr	r1, [r1, #0]
c0de3362:	1908      	adds	r0, r1, r4
c0de3364:	f002 faa6 	bl	c0de58b4 <pic>
c0de3368:	4601      	mov	r1, r0
c0de336a:	4630      	mov	r0, r6
c0de336c:	463a      	mov	r2, r7
c0de336e:	f006 fb08 	bl	c0de9982 <memcmp>
c0de3372:	b188      	cbz	r0, c0de3398 <object_get_value+0xbc>
c0de3374:	9b04      	ldr	r3, [sp, #16]
c0de3376:	9800      	ldr	r0, [sp, #0]
c0de3378:	f8b3 b000 	ldrh.w	fp, [r3]
c0de337c:	6846      	ldr	r6, [r0, #4]
c0de337e:	46da      	mov	sl, fp
c0de3380:	46a8      	mov	r8, r5
c0de3382:	e000      	b.n	c0de3386 <object_get_value+0xaa>
c0de3384:	9b04      	ldr	r3, [sp, #16]
c0de3386:	9a05      	ldr	r2, [sp, #20]
c0de3388:	e9dd 1702 	ldrd	r1, r7, [sp, #8]
c0de338c:	455e      	cmp	r6, fp
c0de338e:	d8c5      	bhi.n	c0de331c <object_get_value+0x40>
c0de3390:	2001      	movs	r0, #1
c0de3392:	b006      	add	sp, #24
c0de3394:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3398:	2000      	movs	r0, #0
c0de339a:	e7fa      	b.n	c0de3392 <object_get_value+0xb6>

c0de339c <os_boot>:
c0de339c:	2000      	movs	r0, #0
c0de339e:	f002 bc4b 	b.w	c0de5c38 <try_context_set>
	...

c0de33a4 <os_longjmp>:
c0de33a4:	4604      	mov	r4, r0
c0de33a6:	4670      	mov	r0, lr
c0de33a8:	4907      	ldr	r1, [pc, #28]	; (c0de33c8 <os_longjmp+0x24>)
c0de33aa:	4a06      	ldr	r2, [pc, #24]	; (c0de33c4 <os_longjmp+0x20>)
c0de33ac:	4479      	add	r1, pc
c0de33ae:	1a40      	subs	r0, r0, r1
c0de33b0:	1881      	adds	r1, r0, r2
c0de33b2:	4620      	mov	r0, r4
c0de33b4:	f000 f80a 	bl	c0de33cc <app_throw_info>
c0de33b8:	f002 fc34 	bl	c0de5c24 <try_context_get>
c0de33bc:	4621      	mov	r1, r4
c0de33be:	f006 fb25 	bl	c0de9a0c <longjmp>
c0de33c2:	bf00      	nop
c0de33c4:	c0de0000 	.word	0xc0de0000
c0de33c8:	ffffcc51 	.word	0xffffcc51

c0de33cc <app_throw_info>:
c0de33cc:	4770      	bx	lr
	...

c0de33d0 <io_seproxyhal_general_status>:
c0de33d0:	4802      	ldr	r0, [pc, #8]	; (c0de33dc <io_seproxyhal_general_status+0xc>)
c0de33d2:	2105      	movs	r1, #5
c0de33d4:	4478      	add	r0, pc
c0de33d6:	f002 bc01 	b.w	c0de5bdc <io_seph_send>
c0de33da:	bf00      	nop
c0de33dc:	00008198 	.word	0x00008198

c0de33e0 <io_seproxyhal_handle_usb_event>:
c0de33e0:	b510      	push	{r4, lr}
c0de33e2:	481e      	ldr	r0, [pc, #120]	; (c0de345c <io_seproxyhal_handle_usb_event+0x7c>)
c0de33e4:	4448      	add	r0, r9
c0de33e6:	78c0      	ldrb	r0, [r0, #3]
c0de33e8:	2803      	cmp	r0, #3
c0de33ea:	dc09      	bgt.n	c0de3400 <io_seproxyhal_handle_usb_event+0x20>
c0de33ec:	2801      	cmp	r0, #1
c0de33ee:	d012      	beq.n	c0de3416 <io_seproxyhal_handle_usb_event+0x36>
c0de33f0:	2802      	cmp	r0, #2
c0de33f2:	d12f      	bne.n	c0de3454 <io_seproxyhal_handle_usb_event+0x74>
c0de33f4:	481a      	ldr	r0, [pc, #104]	; (c0de3460 <io_seproxyhal_handle_usb_event+0x80>)
c0de33f6:	4448      	add	r0, r9
c0de33f8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de33fc:	f004 b9da 	b.w	c0de77b4 <USBD_LL_SOF>
c0de3400:	2804      	cmp	r0, #4
c0de3402:	d021      	beq.n	c0de3448 <io_seproxyhal_handle_usb_event+0x68>
c0de3404:	2808      	cmp	r0, #8
c0de3406:	bf18      	it	ne
c0de3408:	bd10      	popne	{r4, pc}
c0de340a:	4815      	ldr	r0, [pc, #84]	; (c0de3460 <io_seproxyhal_handle_usb_event+0x80>)
c0de340c:	4448      	add	r0, r9
c0de340e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de3412:	f004 b9cc 	b.w	c0de77ae <USBD_LL_Resume>
c0de3416:	4812      	ldr	r0, [pc, #72]	; (c0de3460 <io_seproxyhal_handle_usb_event+0x80>)
c0de3418:	2101      	movs	r1, #1
c0de341a:	eb09 0400 	add.w	r4, r9, r0
c0de341e:	4620      	mov	r0, r4
c0de3420:	f004 f9bf 	bl	c0de77a2 <USBD_LL_SetSpeed>
c0de3424:	4620      	mov	r0, r4
c0de3426:	f004 f99d 	bl	c0de7764 <USBD_LL_Reset>
c0de342a:	480e      	ldr	r0, [pc, #56]	; (c0de3464 <io_seproxyhal_handle_usb_event+0x84>)
c0de342c:	eb09 0100 	add.w	r1, r9, r0
c0de3430:	7989      	ldrb	r1, [r1, #6]
c0de3432:	b981      	cbnz	r1, c0de3456 <io_seproxyhal_handle_usb_event+0x76>
c0de3434:	4448      	add	r0, r9
c0de3436:	2100      	movs	r1, #0
c0de3438:	7481      	strb	r1, [r0, #18]
c0de343a:	8201      	strh	r1, [r0, #16]
c0de343c:	60c1      	str	r1, [r0, #12]
c0de343e:	e9c0 1105 	strd	r1, r1, [r0, #20]
c0de3442:	61c1      	str	r1, [r0, #28]
c0de3444:	8401      	strh	r1, [r0, #32]
c0de3446:	bd10      	pop	{r4, pc}
c0de3448:	4805      	ldr	r0, [pc, #20]	; (c0de3460 <io_seproxyhal_handle_usb_event+0x80>)
c0de344a:	4448      	add	r0, r9
c0de344c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de3450:	f004 b9ab 	b.w	c0de77aa <USBD_LL_Suspend>
c0de3454:	bd10      	pop	{r4, pc}
c0de3456:	2005      	movs	r0, #5
c0de3458:	f7ff ffa4 	bl	c0de33a4 <os_longjmp>
c0de345c:	00000002 	.word	0x00000002
c0de3460:	000053f8 	.word	0x000053f8
c0de3464:	000002b8 	.word	0x000002b8

c0de3468 <io_seproxyhal_handle_usb_ep_xfer_event>:
c0de3468:	b580      	push	{r7, lr}
c0de346a:	4a1d      	ldr	r2, [pc, #116]	; (c0de34e0 <io_seproxyhal_handle_usb_ep_xfer_event+0x78>)
c0de346c:	eb09 0102 	add.w	r1, r9, r2
c0de3470:	7908      	ldrb	r0, [r1, #4]
c0de3472:	78c9      	ldrb	r1, [r1, #3]
c0de3474:	2804      	cmp	r0, #4
c0de3476:	f001 017f 	and.w	r1, r1, #127	; 0x7f
c0de347a:	d00c      	beq.n	c0de3496 <io_seproxyhal_handle_usb_ep_xfer_event+0x2e>
c0de347c:	2802      	cmp	r0, #2
c0de347e:	d01c      	beq.n	c0de34ba <io_seproxyhal_handle_usb_ep_xfer_event+0x52>
c0de3480:	2801      	cmp	r0, #1
c0de3482:	d119      	bne.n	c0de34b8 <io_seproxyhal_handle_usb_ep_xfer_event+0x50>
c0de3484:	4818      	ldr	r0, [pc, #96]	; (c0de34e8 <io_seproxyhal_handle_usb_ep_xfer_event+0x80>)
c0de3486:	eb09 0102 	add.w	r1, r9, r2
c0de348a:	4448      	add	r0, r9
c0de348c:	3106      	adds	r1, #6
c0de348e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de3492:	f004 b870 	b.w	c0de7576 <USBD_LL_SetupStage>
c0de3496:	2906      	cmp	r1, #6
c0de3498:	bf88      	it	hi
c0de349a:	bd80      	pophi	{r7, pc}
c0de349c:	4811      	ldr	r0, [pc, #68]	; (c0de34e4 <io_seproxyhal_handle_usb_ep_xfer_event+0x7c>)
c0de349e:	444a      	add	r2, r9
c0de34a0:	7953      	ldrb	r3, [r2, #5]
c0de34a2:	4448      	add	r0, r9
c0de34a4:	f8df c040 	ldr.w	ip, [pc, #64]	; c0de34e8 <io_seproxyhal_handle_usb_ep_xfer_event+0x80>
c0de34a8:	4408      	add	r0, r1
c0de34aa:	7303      	strb	r3, [r0, #12]
c0de34ac:	eb09 000c 	add.w	r0, r9, ip
c0de34b0:	3206      	adds	r2, #6
c0de34b2:	2300      	movs	r3, #0
c0de34b4:	f004 f88c 	bl	c0de75d0 <USBD_LL_DataOutStage>
c0de34b8:	bd80      	pop	{r7, pc}
c0de34ba:	2906      	cmp	r1, #6
c0de34bc:	d8fc      	bhi.n	c0de34b8 <io_seproxyhal_handle_usb_ep_xfer_event+0x50>
c0de34be:	4809      	ldr	r0, [pc, #36]	; (c0de34e4 <io_seproxyhal_handle_usb_ep_xfer_event+0x7c>)
c0de34c0:	4b09      	ldr	r3, [pc, #36]	; (c0de34e8 <io_seproxyhal_handle_usb_ep_xfer_event+0x80>)
c0de34c2:	4448      	add	r0, r9
c0de34c4:	eb00 0041 	add.w	r0, r0, r1, lsl #1
c0de34c8:	f04f 0c00 	mov.w	ip, #0
c0de34cc:	444a      	add	r2, r9
c0de34ce:	f8a0 c014 	strh.w	ip, [r0, #20]
c0de34d2:	eb09 0003 	add.w	r0, r9, r3
c0de34d6:	3206      	adds	r2, #6
c0de34d8:	f004 f8d4 	bl	c0de7684 <USBD_LL_DataInStage>
c0de34dc:	bd80      	pop	{r7, pc}
c0de34de:	bf00      	nop
c0de34e0:	00000002 	.word	0x00000002
c0de34e4:	000002b8 	.word	0x000002b8
c0de34e8:	000053f8 	.word	0x000053f8

c0de34ec <io_usb_send_apdu_data_ep0x83>:
c0de34ec:	460a      	mov	r2, r1
c0de34ee:	4601      	mov	r1, r0
c0de34f0:	2083      	movs	r0, #131	; 0x83
c0de34f2:	2314      	movs	r3, #20
c0de34f4:	f000 bad6 	b.w	c0de3aa4 <io_usb_send_ep>

c0de34f8 <io_seproxyhal_handle_event>:
c0de34f8:	b580      	push	{r7, lr}
c0de34fa:	4936      	ldr	r1, [pc, #216]	; (c0de35d4 <io_seproxyhal_handle_event+0xdc>)
c0de34fc:	eb09 0201 	add.w	r2, r9, r1
c0de3500:	7853      	ldrb	r3, [r2, #1]
c0de3502:	f819 0001 	ldrb.w	r0, [r9, r1]
c0de3506:	7892      	ldrb	r2, [r2, #2]
c0de3508:	280f      	cmp	r0, #15
c0de350a:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de350e:	dd0d      	ble.n	c0de352c <io_seproxyhal_handle_event+0x34>
c0de3510:	2810      	cmp	r0, #16
c0de3512:	d014      	beq.n	c0de353e <io_seproxyhal_handle_event+0x46>
c0de3514:	2816      	cmp	r0, #22
c0de3516:	d016      	beq.n	c0de3546 <io_seproxyhal_handle_event+0x4e>
c0de3518:	281a      	cmp	r0, #26
c0de351a:	d14c      	bne.n	c0de35b6 <io_seproxyhal_handle_event+0xbe>
c0de351c:	eb09 0001 	add.w	r0, r9, r1
c0de3520:	78c0      	ldrb	r0, [r0, #3]
c0de3522:	2803      	cmp	r0, #3
c0de3524:	d147      	bne.n	c0de35b6 <io_seproxyhal_handle_event+0xbe>
c0de3526:	f005 fc17 	bl	c0de8d58 <ux_stack_redisplay>
c0de352a:	e04a      	b.n	c0de35c2 <io_seproxyhal_handle_event+0xca>
c0de352c:	280e      	cmp	r0, #14
c0de352e:	d024      	beq.n	c0de357a <io_seproxyhal_handle_event+0x82>
c0de3530:	280f      	cmp	r0, #15
c0de3532:	d140      	bne.n	c0de35b6 <io_seproxyhal_handle_event+0xbe>
c0de3534:	2a01      	cmp	r2, #1
c0de3536:	d104      	bne.n	c0de3542 <io_seproxyhal_handle_event+0x4a>
c0de3538:	f7ff ff52 	bl	c0de33e0 <io_seproxyhal_handle_usb_event>
c0de353c:	e041      	b.n	c0de35c2 <io_seproxyhal_handle_event+0xca>
c0de353e:	2a03      	cmp	r2, #3
c0de3540:	d23d      	bcs.n	c0de35be <io_seproxyhal_handle_event+0xc6>
c0de3542:	2000      	movs	r0, #0
c0de3544:	bd80      	pop	{r7, pc}
c0de3546:	4824      	ldr	r0, [pc, #144]	; (c0de35d8 <io_seproxyhal_handle_event+0xe0>)
c0de3548:	f819 3000 	ldrb.w	r3, [r9, r0]
c0de354c:	bbcb      	cbnz	r3, c0de35c2 <io_seproxyhal_handle_event+0xca>
c0de354e:	eb09 0c00 	add.w	ip, r9, r0
c0de3552:	2306      	movs	r3, #6
c0de3554:	f88c 3006 	strb.w	r3, [ip, #6]
c0de3558:	230a      	movs	r3, #10
c0de355a:	f809 3000 	strb.w	r3, [r9, r0]
c0de355e:	481f      	ldr	r0, [pc, #124]	; (c0de35dc <io_seproxyhal_handle_event+0xe4>)
c0de3560:	4449      	add	r1, r9
c0de3562:	4448      	add	r0, r9
c0de3564:	3103      	adds	r1, #3
c0de3566:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
c0de356a:	bf88      	it	hi
c0de356c:	f240 1201 	movwhi	r2, #257	; 0x101
c0de3570:	f8ac 2002 	strh.w	r2, [ip, #2]
c0de3574:	f006 f9f6 	bl	c0de9964 <__aeabi_memcpy>
c0de3578:	e023      	b.n	c0de35c2 <io_seproxyhal_handle_event+0xca>
c0de357a:	f8df c05c 	ldr.w	ip, [pc, #92]	; c0de35d8 <io_seproxyhal_handle_event+0xe0>
c0de357e:	eb09 010c 	add.w	r1, r9, ip
c0de3582:	688a      	ldr	r2, [r1, #8]
c0de3584:	3264      	adds	r2, #100	; 0x64
c0de3586:	608a      	str	r2, [r1, #8]
c0de3588:	2100      	movs	r1, #0
c0de358a:	bf00      	nop
c0de358c:	eb09 020c 	add.w	r2, r9, ip
c0de3590:	eb02 0241 	add.w	r2, r2, r1, lsl #1
c0de3594:	8c12      	ldrh	r2, [r2, #32]
c0de3596:	b15a      	cbz	r2, c0de35b0 <io_seproxyhal_handle_event+0xb8>
c0de3598:	4613      	mov	r3, r2
c0de359a:	2a64      	cmp	r2, #100	; 0x64
c0de359c:	bf98      	it	ls
c0de359e:	2364      	movls	r3, #100	; 0x64
c0de35a0:	eb09 000c 	add.w	r0, r9, ip
c0de35a4:	3b64      	subs	r3, #100	; 0x64
c0de35a6:	eb00 0041 	add.w	r0, r0, r1, lsl #1
c0de35aa:	2a64      	cmp	r2, #100	; 0x64
c0de35ac:	8403      	strh	r3, [r0, #32]
c0de35ae:	d90a      	bls.n	c0de35c6 <io_seproxyhal_handle_event+0xce>
c0de35b0:	3901      	subs	r1, #1
c0de35b2:	1dc8      	adds	r0, r1, #7
c0de35b4:	d1ea      	bne.n	c0de358c <io_seproxyhal_handle_event+0x94>
c0de35b6:	2002      	movs	r0, #2
c0de35b8:	f7fd f81a 	bl	c0de05f0 <io_event>
c0de35bc:	bd80      	pop	{r7, pc}
c0de35be:	f7ff ff53 	bl	c0de3468 <io_seproxyhal_handle_usb_ep_xfer_event>
c0de35c2:	2001      	movs	r0, #1
c0de35c4:	bd80      	pop	{r7, pc}
c0de35c6:	2000      	movs	r0, #0
c0de35c8:	f809 000c 	strb.w	r0, [r9, ip]
c0de35cc:	2005      	movs	r0, #5
c0de35ce:	f7ff fee9 	bl	c0de33a4 <os_longjmp>
c0de35d2:	bf00      	nop
c0de35d4:	00000002 	.word	0x00000002
c0de35d8:	000002b8 	.word	0x000002b8
c0de35dc:	000001b1 	.word	0x000001b1

c0de35e0 <io_seproxyhal_init>:
c0de35e0:	b580      	push	{r7, lr}
c0de35e2:	4809      	ldr	r0, [pc, #36]	; (c0de3608 <io_seproxyhal_init+0x28>)
c0de35e4:	4909      	ldr	r1, [pc, #36]	; (c0de360c <io_seproxyhal_init+0x2c>)
c0de35e6:	4a0a      	ldr	r2, [pc, #40]	; (c0de3610 <io_seproxyhal_init+0x30>)
c0de35e8:	f849 1000 	str.w	r1, [r9, r0]
c0de35ec:	eb09 0002 	add.w	r0, r9, r2
c0de35f0:	2124      	movs	r1, #36	; 0x24
c0de35f2:	f006 f9b4 	bl	c0de995e <__aeabi_memclr>
c0de35f6:	f000 fb61 	bl	c0de3cbc <io_usb_hid_init>
c0de35fa:	4806      	ldr	r0, [pc, #24]	; (c0de3614 <io_seproxyhal_init+0x34>)
c0de35fc:	2100      	movs	r1, #0
c0de35fe:	f849 1000 	str.w	r1, [r9, r0]
c0de3602:	4448      	add	r0, r9
c0de3604:	6041      	str	r1, [r0, #4]
c0de3606:	bd80      	pop	{r7, pc}
c0de3608:	000066c8 	.word	0x000066c8
c0de360c:	dead0031 	.word	0xdead0031
c0de3610:	000002b8 	.word	0x000002b8
c0de3614:	000002dc 	.word	0x000002dc

c0de3618 <io_seproxyhal_init_ux>:
c0de3618:	4770      	bx	lr
	...

c0de361c <io_seproxyhal_init_button>:
c0de361c:	4803      	ldr	r0, [pc, #12]	; (c0de362c <io_seproxyhal_init_button+0x10>)
c0de361e:	2100      	movs	r1, #0
c0de3620:	f849 1000 	str.w	r1, [r9, r0]
c0de3624:	4448      	add	r0, r9
c0de3626:	6041      	str	r1, [r0, #4]
c0de3628:	4770      	bx	lr
c0de362a:	bf00      	nop
c0de362c:	000002dc 	.word	0x000002dc

c0de3630 <io_seproxyhal_display_icon>:
c0de3630:	b5b0      	push	{r4, r5, r7, lr}
c0de3632:	b088      	sub	sp, #32
c0de3634:	4605      	mov	r5, r0
c0de3636:	4608      	mov	r0, r1
c0de3638:	f002 f93c 	bl	c0de58b4 <pic>
c0de363c:	b1a8      	cbz	r0, c0de366a <io_seproxyhal_display_icon+0x3a>
c0de363e:	4604      	mov	r4, r0
c0de3640:	6900      	ldr	r0, [r0, #16]
c0de3642:	b190      	cbz	r0, c0de366a <io_seproxyhal_display_icon+0x3a>
c0de3644:	4628      	mov	r0, r5
c0de3646:	f002 f935 	bl	c0de58b4 <pic>
c0de364a:	ad01      	add	r5, sp, #4
c0de364c:	4601      	mov	r1, r0
c0de364e:	4628      	mov	r0, r5
c0de3650:	221c      	movs	r2, #28
c0de3652:	f006 f987 	bl	c0de9964 <__aeabi_memcpy>
c0de3656:	e9d4 0100 	ldrd	r0, r1, [r4]
c0de365a:	f8ad 000a 	strh.w	r0, [sp, #10]
c0de365e:	f8ad 100c 	strh.w	r1, [sp, #12]
c0de3662:	4628      	mov	r0, r5
c0de3664:	4621      	mov	r1, r4
c0de3666:	f7fe facf 	bl	c0de1c08 <bagl_draw_glyph>
c0de366a:	b008      	add	sp, #32
c0de366c:	bdb0      	pop	{r4, r5, r7, pc}

c0de366e <io_seproxyhal_display_default>:
c0de366e:	b570      	push	{r4, r5, r6, lr}
c0de3670:	f002 f920 	bl	c0de58b4 <pic>
c0de3674:	4604      	mov	r4, r0
c0de3676:	7801      	ldrb	r1, [r0, #0]
c0de3678:	69c0      	ldr	r0, [r0, #28]
c0de367a:	f001 067f 	and.w	r6, r1, #127	; 0x7f
c0de367e:	f002 f919 	bl	c0de58b4 <pic>
c0de3682:	b166      	cbz	r6, c0de369e <io_seproxyhal_display_default+0x30>
c0de3684:	4605      	mov	r5, r0
c0de3686:	b158      	cbz	r0, c0de36a0 <io_seproxyhal_display_default+0x32>
c0de3688:	2e05      	cmp	r6, #5
c0de368a:	d101      	bne.n	c0de3690 <io_seproxyhal_display_default+0x22>
c0de368c:	7ea0      	ldrb	r0, [r4, #26]
c0de368e:	b178      	cbz	r0, c0de36b0 <io_seproxyhal_display_default+0x42>
c0de3690:	4628      	mov	r0, r5
c0de3692:	f006 f9cd 	bl	c0de9a30 <strlen>
c0de3696:	b282      	uxth	r2, r0
c0de3698:	4620      	mov	r0, r4
c0de369a:	4629      	mov	r1, r5
c0de369c:	e003      	b.n	c0de36a6 <io_seproxyhal_display_default+0x38>
c0de369e:	bd70      	pop	{r4, r5, r6, pc}
c0de36a0:	4620      	mov	r0, r4
c0de36a2:	2100      	movs	r1, #0
c0de36a4:	2200      	movs	r2, #0
c0de36a6:	2300      	movs	r3, #0
c0de36a8:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de36ac:	f7fd bcb0 	b.w	c0de1010 <bagl_draw_with_context>
c0de36b0:	4620      	mov	r0, r4
c0de36b2:	4629      	mov	r1, r5
c0de36b4:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de36b8:	f7ff bfba 	b.w	c0de3630 <io_seproxyhal_display_icon>

c0de36bc <io_seproxyhal_button_push>:
c0de36bc:	b1b0      	cbz	r0, c0de36ec <io_seproxyhal_button_push+0x30>
c0de36be:	b510      	push	{r4, lr}
c0de36c0:	f8df e064 	ldr.w	lr, [pc, #100]	; c0de3728 <io_seproxyhal_button_push+0x6c>
c0de36c4:	4684      	mov	ip, r0
c0de36c6:	f859 000e 	ldr.w	r0, [r9, lr]
c0de36ca:	460b      	mov	r3, r1
c0de36cc:	eb09 010e 	add.w	r1, r9, lr
c0de36d0:	6849      	ldr	r1, [r1, #4]
c0de36d2:	4298      	cmp	r0, r3
c0de36d4:	bf02      	ittt	eq
c0de36d6:	3101      	addeq	r1, #1
c0de36d8:	eb09 020e 	addeq.w	r2, r9, lr
c0de36dc:	6051      	streq	r1, [r2, #4]
c0de36de:	ea40 0003 	orr.w	r0, r0, r3
c0de36e2:	b123      	cbz	r3, c0de36ee <io_seproxyhal_button_push+0x32>
c0de36e4:	4602      	mov	r2, r0
c0de36e6:	f849 000e 	str.w	r0, [r9, lr]
c0de36ea:	e008      	b.n	c0de36fe <io_seproxyhal_button_push+0x42>
c0de36ec:	4770      	bx	lr
c0de36ee:	2200      	movs	r2, #0
c0de36f0:	eb09 040e 	add.w	r4, r9, lr
c0de36f4:	f849 200e 	str.w	r2, [r9, lr]
c0de36f8:	6062      	str	r2, [r4, #4]
c0de36fa:	f040 4000 	orr.w	r0, r0, #2147483648	; 0x80000000
c0de36fe:	429a      	cmp	r2, r3
c0de3700:	bf1e      	ittt	ne
c0de3702:	eb09 020e 	addne.w	r2, r9, lr
c0de3706:	2300      	movne	r3, #0
c0de3708:	6053      	strne	r3, [r2, #4]
c0de370a:	2908      	cmp	r1, #8
c0de370c:	d308      	bcc.n	c0de3720 <io_seproxyhal_button_push+0x64>
c0de370e:	4a07      	ldr	r2, [pc, #28]	; (c0de372c <io_seproxyhal_button_push+0x70>)
c0de3710:	434a      	muls	r2, r1
c0de3712:	f112 3faa 	cmn.w	r2, #2863311530	; 0xaaaaaaaa
c0de3716:	bf38      	it	cc
c0de3718:	f040 4080 	orrcc.w	r0, r0, #1073741824	; 0x40000000
c0de371c:	f020 4000 	bic.w	r0, r0, #2147483648	; 0x80000000
c0de3720:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de3724:	4760      	bx	ip
c0de3726:	bf00      	nop
c0de3728:	000002dc 	.word	0x000002dc
c0de372c:	aaaaaaab 	.word	0xaaaaaaab

c0de3730 <io_seproxyhal_se_reset>:
c0de3730:	4803      	ldr	r0, [pc, #12]	; (c0de3740 <io_seproxyhal_se_reset+0x10>)
c0de3732:	2103      	movs	r1, #3
c0de3734:	4478      	add	r0, pc
c0de3736:	f002 fa51 	bl	c0de5bdc <io_seph_send>
c0de373a:	bf00      	nop
c0de373c:	e7fe      	b.n	c0de373c <io_seproxyhal_se_reset+0xc>
c0de373e:	bf00      	nop
c0de3740:	00007e3d 	.word	0x00007e3d

c0de3744 <os_io_seproxyhal_get_app_name_and_version>:
c0de3744:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de3746:	b081      	sub	sp, #4
c0de3748:	4811      	ldr	r0, [pc, #68]	; (c0de3790 <os_io_seproxyhal_get_app_name_and_version+0x4c>)
c0de374a:	2501      	movs	r5, #1
c0de374c:	eb09 0600 	add.w	r6, r9, r0
c0de3750:	f809 5000 	strb.w	r5, [r9, r0]
c0de3754:	1cb1      	adds	r1, r6, #2
c0de3756:	2001      	movs	r0, #1
c0de3758:	f44f 7281 	mov.w	r2, #258	; 0x102
c0de375c:	f002 fa26 	bl	c0de5bac <os_registry_get_current_app_tag>
c0de3760:	4604      	mov	r4, r0
c0de3762:	7070      	strb	r0, [r6, #1]
c0de3764:	1987      	adds	r7, r0, r6
c0de3766:	f240 1001 	movw	r0, #257	; 0x101
c0de376a:	1cf9      	adds	r1, r7, #3
c0de376c:	1b02      	subs	r2, r0, r4
c0de376e:	2002      	movs	r0, #2
c0de3770:	f002 fa1c 	bl	c0de5bac <os_registry_get_current_app_tag>
c0de3774:	4404      	add	r4, r0
c0de3776:	4426      	add	r6, r4
c0de3778:	70b8      	strb	r0, [r7, #2]
c0de377a:	70f5      	strb	r5, [r6, #3]
c0de377c:	f002 fa0c 	bl	c0de5b98 <os_flags>
c0de3780:	7130      	strb	r0, [r6, #4]
c0de3782:	2090      	movs	r0, #144	; 0x90
c0de3784:	2100      	movs	r1, #0
c0de3786:	7170      	strb	r0, [r6, #5]
c0de3788:	1de0      	adds	r0, r4, #7
c0de378a:	71b1      	strb	r1, [r6, #6]
c0de378c:	b001      	add	sp, #4
c0de378e:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de3790:	000001b1 	.word	0x000001b1

c0de3794 <io_exchange>:
c0de3794:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3798:	b082      	sub	sp, #8
c0de379a:	4a9c      	ldr	r2, [pc, #624]	; (c0de3a0c <io_exchange+0x278>)
c0de379c:	4b9c      	ldr	r3, [pc, #624]	; (c0de3a10 <io_exchange+0x27c>)
c0de379e:	f859 2002 	ldr.w	r2, [r9, r2]
c0de37a2:	429a      	cmp	r2, r3
c0de37a4:	f040 8127 	bne.w	c0de39f6 <io_exchange+0x262>
c0de37a8:	460e      	mov	r6, r1
c0de37aa:	4605      	mov	r5, r0
c0de37ac:	0740      	lsls	r0, r0, #29
c0de37ae:	d006      	beq.n	c0de37be <io_exchange+0x2a>
c0de37b0:	b2e8      	uxtb	r0, r5
c0de37b2:	b2b1      	uxth	r1, r6
c0de37b4:	b002      	add	sp, #8
c0de37b6:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de37ba:	f7fd bad3 	b.w	c0de0d64 <io_exchange_al>
c0de37be:	4899      	ldr	r0, [pc, #612]	; (c0de3a24 <io_exchange+0x290>)
c0de37c0:	4c95      	ldr	r4, [pc, #596]	; (c0de3a18 <io_exchange+0x284>)
c0de37c2:	4478      	add	r0, pc
c0de37c4:	9000      	str	r0, [sp, #0]
c0de37c6:	4898      	ldr	r0, [pc, #608]	; (c0de3a28 <io_exchange+0x294>)
c0de37c8:	f8df a250 	ldr.w	sl, [pc, #592]	; c0de3a1c <io_exchange+0x288>
c0de37cc:	4478      	add	r0, pc
c0de37ce:	4f91      	ldr	r7, [pc, #580]	; (c0de3a14 <io_exchange+0x280>)
c0de37d0:	4683      	mov	fp, r0
c0de37d2:	46a8      	mov	r8, r5
c0de37d4:	0430      	lsls	r0, r6, #16
c0de37d6:	f008 0010 	and.w	r0, r8, #16
c0de37da:	f000 8085 	beq.w	c0de38e8 <io_exchange+0x154>
c0de37de:	2800      	cmp	r0, #0
c0de37e0:	f040 8082 	bne.w	c0de38e8 <io_exchange+0x154>
c0de37e4:	9001      	str	r0, [sp, #4]
c0de37e6:	bf00      	nop
c0de37e8:	f002 fa04 	bl	c0de5bf4 <io_seph_is_status_sent>
c0de37ec:	b150      	cbz	r0, c0de3804 <io_exchange+0x70>
c0de37ee:	eb09 0007 	add.w	r0, r9, r7
c0de37f2:	f44f 7196 	mov.w	r1, #300	; 0x12c
c0de37f6:	2200      	movs	r2, #0
c0de37f8:	f002 fa06 	bl	c0de5c08 <io_seph_recv>
c0de37fc:	2001      	movs	r0, #1
c0de37fe:	f000 f91b 	bl	c0de3a38 <os_io_seph_recv_and_process>
c0de3802:	e7f1      	b.n	c0de37e8 <io_exchange+0x54>
c0de3804:	eb09 0004 	add.w	r0, r9, r4
c0de3808:	f819 1004 	ldrb.w	r1, [r9, r4]
c0de380c:	f8d0 a008 	ldr.w	sl, [r0, #8]
c0de3810:	2909      	cmp	r1, #9
c0de3812:	dd06      	ble.n	c0de3822 <io_exchange+0x8e>
c0de3814:	290a      	cmp	r1, #10
c0de3816:	d00e      	beq.n	c0de3836 <io_exchange+0xa2>
c0de3818:	290b      	cmp	r1, #11
c0de381a:	d126      	bne.n	c0de386a <io_exchange+0xd6>
c0de381c:	4884      	ldr	r0, [pc, #528]	; (c0de3a30 <io_exchange+0x29c>)
c0de381e:	4478      	add	r0, pc
c0de3820:	e002      	b.n	c0de3828 <io_exchange+0x94>
c0de3822:	9800      	ldr	r0, [sp, #0]
c0de3824:	2907      	cmp	r1, #7
c0de3826:	d11d      	bne.n	c0de3864 <io_exchange+0xd0>
c0de3828:	497c      	ldr	r1, [pc, #496]	; (c0de3a1c <io_exchange+0x288>)
c0de382a:	eb09 0201 	add.w	r2, r9, r1
c0de382e:	b2b1      	uxth	r1, r6
c0de3830:	f000 facc 	bl	c0de3dcc <io_usb_hid_send>
c0de3834:	e020      	b.n	c0de3878 <io_exchange+0xe4>
c0de3836:	fa1f fa86 	uxth.w	sl, r6
c0de383a:	f5ba 7f82 	cmp.w	sl, #260	; 0x104
c0de383e:	f200 80e2 	bhi.w	c0de3a06 <io_exchange+0x272>
c0de3842:	2053      	movs	r0, #83	; 0x53
c0de3844:	f809 0007 	strb.w	r0, [r9, r7]
c0de3848:	eb09 0007 	add.w	r0, r9, r7
c0de384c:	0a31      	lsrs	r1, r6, #8
c0de384e:	7041      	strb	r1, [r0, #1]
c0de3850:	2103      	movs	r1, #3
c0de3852:	7086      	strb	r6, [r0, #2]
c0de3854:	f002 f9c2 	bl	c0de5bdc <io_seph_send>
c0de3858:	4870      	ldr	r0, [pc, #448]	; (c0de3a1c <io_exchange+0x288>)
c0de385a:	4651      	mov	r1, sl
c0de385c:	4448      	add	r0, r9
c0de385e:	f002 f9bd 	bl	c0de5bdc <io_seph_send>
c0de3862:	e02a      	b.n	c0de38ba <io_exchange+0x126>
c0de3864:	2900      	cmp	r1, #0
c0de3866:	f000 80cb 	beq.w	c0de3a00 <io_exchange+0x26c>
c0de386a:	b2e8      	uxtb	r0, r5
c0de386c:	b2b1      	uxth	r1, r6
c0de386e:	f7fd fa79 	bl	c0de0d64 <io_exchange_al>
c0de3872:	2800      	cmp	r0, #0
c0de3874:	f040 80c4 	bne.w	c0de3a00 <io_exchange+0x26c>
c0de3878:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de387c:	b1e8      	cbz	r0, c0de38ba <io_exchange+0x126>
c0de387e:	f50a 66fa 	add.w	r6, sl, #2000	; 0x7d0
c0de3882:	bf00      	nop
c0de3884:	4658      	mov	r0, fp
c0de3886:	2105      	movs	r1, #5
c0de3888:	f002 f9a8 	bl	c0de5bdc <io_seph_send>
c0de388c:	eb09 0007 	add.w	r0, r9, r7
c0de3890:	f44f 7196 	mov.w	r1, #300	; 0x12c
c0de3894:	2200      	movs	r2, #0
c0de3896:	f002 f9b7 	bl	c0de5c08 <io_seph_recv>
c0de389a:	eb09 0004 	add.w	r0, r9, r4
c0de389e:	6880      	ldr	r0, [r0, #8]
c0de38a0:	42b0      	cmp	r0, r6
c0de38a2:	f080 80a5 	bcs.w	c0de39f0 <io_exchange+0x25c>
c0de38a6:	f7ff fe27 	bl	c0de34f8 <io_seproxyhal_handle_event>
c0de38aa:	f002 f9a3 	bl	c0de5bf4 <io_seph_is_status_sent>
c0de38ae:	2800      	cmp	r0, #0
c0de38b0:	d1ec      	bne.n	c0de388c <io_exchange+0xf8>
c0de38b2:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de38b6:	2800      	cmp	r0, #0
c0de38b8:	d1e4      	bne.n	c0de3884 <io_exchange+0xf0>
c0de38ba:	2000      	movs	r0, #0
c0de38bc:	eb09 0104 	add.w	r1, r9, r4
c0de38c0:	06aa      	lsls	r2, r5, #26
c0de38c2:	f809 0004 	strb.w	r0, [r9, r4]
c0de38c6:	7188      	strb	r0, [r1, #6]
c0de38c8:	8048      	strh	r0, [r1, #2]
c0de38ca:	f100 8088 	bmi.w	c0de39de <io_exchange+0x24a>
c0de38ce:	4857      	ldr	r0, [pc, #348]	; (c0de3a2c <io_exchange+0x298>)
c0de38d0:	2105      	movs	r1, #5
c0de38d2:	4478      	add	r0, pc
c0de38d4:	f002 f982 	bl	c0de5bdc <io_seph_send>
c0de38d8:	b268      	sxtb	r0, r5
c0de38da:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
c0de38de:	f8df a13c 	ldr.w	sl, [pc, #316]	; c0de3a1c <io_exchange+0x288>
c0de38e2:	9801      	ldr	r0, [sp, #4]
c0de38e4:	f340 8089 	ble.w	c0de39fa <io_exchange+0x266>
c0de38e8:	f04f 0600 	mov.w	r6, #0
c0de38ec:	b940      	cbnz	r0, c0de3900 <io_exchange+0x16c>
c0de38ee:	ea5f 6048 	movs.w	r0, r8, lsl #25
c0de38f2:	d478      	bmi.n	c0de39e6 <io_exchange+0x252>
c0de38f4:	eb09 0004 	add.w	r0, r9, r4
c0de38f8:	f809 6004 	strb.w	r6, [r9, r4]
c0de38fc:	7186      	strb	r6, [r0, #6]
c0de38fe:	bf00      	nop
c0de3900:	eb09 0004 	add.w	r0, r9, r4
c0de3904:	8046      	strh	r6, [r0, #2]
c0de3906:	bf00      	nop
c0de3908:	484a      	ldr	r0, [pc, #296]	; (c0de3a34 <io_exchange+0x2a0>)
c0de390a:	2105      	movs	r1, #5
c0de390c:	4478      	add	r0, pc
c0de390e:	f002 f965 	bl	c0de5bdc <io_seph_send>
c0de3912:	eb09 0007 	add.w	r0, r9, r7
c0de3916:	f44f 7196 	mov.w	r1, #300	; 0x12c
c0de391a:	2200      	movs	r2, #0
c0de391c:	f002 f974 	bl	c0de5c08 <io_seph_recv>
c0de3920:	2803      	cmp	r0, #3
c0de3922:	d315      	bcc.n	c0de3950 <io_exchange+0x1bc>
c0de3924:	eb09 0107 	add.w	r1, r9, r7
c0de3928:	784a      	ldrb	r2, [r1, #1]
c0de392a:	7889      	ldrb	r1, [r1, #2]
c0de392c:	ea41 2102 	orr.w	r1, r1, r2, lsl #8
c0de3930:	3103      	adds	r1, #3
c0de3932:	4281      	cmp	r1, r0
c0de3934:	d10c      	bne.n	c0de3950 <io_exchange+0x1bc>
c0de3936:	f7ff fddf 	bl	c0de34f8 <io_seproxyhal_handle_event>
c0de393a:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de393e:	2800      	cmp	r0, #0
c0de3940:	d0e2      	beq.n	c0de3908 <io_exchange+0x174>
c0de3942:	eb09 0004 	add.w	r0, r9, r4
c0de3946:	8840      	ldrh	r0, [r0, #2]
c0de3948:	2800      	cmp	r0, #0
c0de394a:	d0dd      	beq.n	c0de3908 <io_exchange+0x174>
c0de394c:	e004      	b.n	c0de3958 <io_exchange+0x1c4>
c0de394e:	bf00      	nop
c0de3950:	f809 6004 	strb.w	r6, [r9, r4]
c0de3954:	e7d4      	b.n	c0de3900 <io_exchange+0x16c>
c0de3956:	bf00      	nop
c0de3958:	f002 f8e8 	bl	c0de5b2c <os_perso_isonboarded>
c0de395c:	28aa      	cmp	r0, #170	; 0xaa
c0de395e:	d103      	bne.n	c0de3968 <io_exchange+0x1d4>
c0de3960:	f002 f900 	bl	c0de5b64 <os_global_pin_is_validated>
c0de3964:	28aa      	cmp	r0, #170	; 0xaa
c0de3966:	d127      	bne.n	c0de39b8 <io_exchange+0x224>
c0de3968:	f819 000a 	ldrb.w	r0, [r9, sl]
c0de396c:	28b0      	cmp	r0, #176	; 0xb0
c0de396e:	d133      	bne.n	c0de39d8 <io_exchange+0x244>
c0de3970:	eb09 000a 	add.w	r0, r9, sl
c0de3974:	7840      	ldrb	r0, [r0, #1]
c0de3976:	28a7      	cmp	r0, #167	; 0xa7
c0de3978:	d00e      	beq.n	c0de3998 <io_exchange+0x204>
c0de397a:	2801      	cmp	r0, #1
c0de397c:	bf01      	itttt	eq
c0de397e:	eb09 000a 	addeq.w	r0, r9, sl
c0de3982:	7881      	ldrbeq	r1, [r0, #2]
c0de3984:	78c0      	ldrbeq	r0, [r0, #3]
c0de3986:	ea50 0001 	orrseq.w	r0, r0, r1
c0de398a:	d125      	bne.n	c0de39d8 <io_exchange+0x244>
c0de398c:	f7ff feda 	bl	c0de3744 <os_io_seproxyhal_get_app_name_and_version>
c0de3990:	4606      	mov	r6, r0
c0de3992:	f005 0507 	and.w	r5, r5, #7
c0de3996:	e019      	b.n	c0de39cc <io_exchange+0x238>
c0de3998:	eb09 000a 	add.w	r0, r9, sl
c0de399c:	7881      	ldrb	r1, [r0, #2]
c0de399e:	78c0      	ldrb	r0, [r0, #3]
c0de39a0:	4308      	orrs	r0, r1
c0de39a2:	d119      	bne.n	c0de39d8 <io_exchange+0x244>
c0de39a4:	2090      	movs	r0, #144	; 0x90
c0de39a6:	f809 000a 	strb.w	r0, [r9, sl]
c0de39aa:	eb09 000a 	add.w	r0, r9, sl
c0de39ae:	7046      	strb	r6, [r0, #1]
c0de39b0:	481b      	ldr	r0, [pc, #108]	; (c0de3a20 <io_exchange+0x28c>)
c0de39b2:	f360 05df 	bfi	r5, r0, #3, #29
c0de39b6:	e008      	b.n	c0de39ca <io_exchange+0x236>
c0de39b8:	2055      	movs	r0, #85	; 0x55
c0de39ba:	f809 000a 	strb.w	r0, [r9, sl]
c0de39be:	eb09 000a 	add.w	r0, r9, sl
c0de39c2:	2115      	movs	r1, #21
c0de39c4:	f005 0507 	and.w	r5, r5, #7
c0de39c8:	7041      	strb	r1, [r0, #1]
c0de39ca:	2602      	movs	r6, #2
c0de39cc:	0768      	lsls	r0, r5, #29
c0de39ce:	fa5f f885 	uxtb.w	r8, r5
c0de39d2:	f43f aeff 	beq.w	c0de37d4 <io_exchange+0x40>
c0de39d6:	e6eb      	b.n	c0de37b0 <io_exchange+0x1c>
c0de39d8:	eb09 0004 	add.w	r0, r9, r4
c0de39dc:	8840      	ldrh	r0, [r0, #2]
c0de39de:	b280      	uxth	r0, r0
c0de39e0:	b002      	add	sp, #8
c0de39e2:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de39e6:	eb09 0004 	add.w	r0, r9, r4
c0de39ea:	8840      	ldrh	r0, [r0, #2]
c0de39ec:	3805      	subs	r0, #5
c0de39ee:	e7f6      	b.n	c0de39de <io_exchange+0x24a>
c0de39f0:	2005      	movs	r0, #5
c0de39f2:	f7ff fcd7 	bl	c0de33a4 <os_longjmp>
c0de39f6:	f7ff fe9b 	bl	c0de3730 <io_seproxyhal_se_reset>
c0de39fa:	2005      	movs	r0, #5
c0de39fc:	f002 f8e2 	bl	c0de5bc4 <os_sched_exit>
c0de3a00:	2004      	movs	r0, #4
c0de3a02:	f7ff fccf 	bl	c0de33a4 <os_longjmp>
c0de3a06:	2002      	movs	r0, #2
c0de3a08:	f7ff fccc 	bl	c0de33a4 <os_longjmp>
c0de3a0c:	000066c8 	.word	0x000066c8
c0de3a10:	dead0031 	.word	0xdead0031
c0de3a14:	00000002 	.word	0x00000002
c0de3a18:	000002b8 	.word	0x000002b8
c0de3a1c:	000001b1 	.word	0x000001b1
c0de3a20:	1ffffff0 	.word	0x1ffffff0
c0de3a24:	00000343 	.word	0x00000343
c0de3a28:	00007da0 	.word	0x00007da0
c0de3a2c:	00007c9a 	.word	0x00007c9a
c0de3a30:	fffffccb 	.word	0xfffffccb
c0de3a34:	00007c60 	.word	0x00007c60

c0de3a38 <os_io_seph_recv_and_process>:
c0de3a38:	b5b0      	push	{r4, r5, r7, lr}
c0de3a3a:	4604      	mov	r4, r0
c0de3a3c:	4811      	ldr	r0, [pc, #68]	; (c0de3a84 <os_io_seph_recv_and_process+0x4c>)
c0de3a3e:	2105      	movs	r1, #5
c0de3a40:	4478      	add	r0, pc
c0de3a42:	f002 f8cb 	bl	c0de5bdc <io_seph_send>
c0de3a46:	4d0d      	ldr	r5, [pc, #52]	; (c0de3a7c <os_io_seph_recv_and_process+0x44>)
c0de3a48:	f44f 7196 	mov.w	r1, #300	; 0x12c
c0de3a4c:	eb09 0005 	add.w	r0, r9, r5
c0de3a50:	2200      	movs	r2, #0
c0de3a52:	f002 f8d9 	bl	c0de5c08 <io_seph_recv>
c0de3a56:	f819 0005 	ldrb.w	r0, [r9, r5]
c0de3a5a:	2815      	cmp	r0, #21
c0de3a5c:	d808      	bhi.n	c0de3a70 <os_io_seph_recv_and_process+0x38>
c0de3a5e:	2101      	movs	r1, #1
c0de3a60:	4a07      	ldr	r2, [pc, #28]	; (c0de3a80 <os_io_seph_recv_and_process+0x48>)
c0de3a62:	fa01 f000 	lsl.w	r0, r1, r0
c0de3a66:	4210      	tst	r0, r2
c0de3a68:	d002      	beq.n	c0de3a70 <os_io_seph_recv_and_process+0x38>
c0de3a6a:	b10c      	cbz	r4, c0de3a70 <os_io_seph_recv_and_process+0x38>
c0de3a6c:	2000      	movs	r0, #0
c0de3a6e:	bdb0      	pop	{r4, r5, r7, pc}
c0de3a70:	f7ff fd42 	bl	c0de34f8 <io_seproxyhal_handle_event>
c0de3a74:	2800      	cmp	r0, #0
c0de3a76:	bf18      	it	ne
c0de3a78:	2001      	movne	r0, #1
c0de3a7a:	bdb0      	pop	{r4, r5, r7, pc}
c0de3a7c:	00000002 	.word	0x00000002
c0de3a80:	00207020 	.word	0x00207020
c0de3a84:	00007b2c 	.word	0x00007b2c

c0de3a88 <io_seproxyhal_get_ep_rx_size>:
c0de3a88:	f000 007f 	and.w	r0, r0, #127	; 0x7f
c0de3a8c:	2806      	cmp	r0, #6
c0de3a8e:	bf84      	itt	hi
c0de3a90:	2000      	movhi	r0, #0
c0de3a92:	4770      	bxhi	lr
c0de3a94:	4902      	ldr	r1, [pc, #8]	; (c0de3aa0 <io_seproxyhal_get_ep_rx_size+0x18>)
c0de3a96:	4449      	add	r1, r9
c0de3a98:	4408      	add	r0, r1
c0de3a9a:	7b00      	ldrb	r0, [r0, #12]
c0de3a9c:	4770      	bx	lr
c0de3a9e:	bf00      	nop
c0de3aa0:	000002b8 	.word	0x000002b8

c0de3aa4 <io_usb_send_ep>:
c0de3aa4:	2aff      	cmp	r2, #255	; 0xff
c0de3aa6:	bf88      	it	hi
c0de3aa8:	4770      	bxhi	lr
c0de3aaa:	b570      	push	{r4, r5, r6, lr}
c0de3aac:	b082      	sub	sp, #8
c0de3aae:	4604      	mov	r4, r0
c0de3ab0:	2050      	movs	r0, #80	; 0x50
c0de3ab2:	f88d 0002 	strb.w	r0, [sp, #2]
c0de3ab6:	1cd0      	adds	r0, r2, #3
c0de3ab8:	460e      	mov	r6, r1
c0de3aba:	0a01      	lsrs	r1, r0, #8
c0de3abc:	f88d 0004 	strb.w	r0, [sp, #4]
c0de3ac0:	f044 0080 	orr.w	r0, r4, #128	; 0x80
c0de3ac4:	f88d 0005 	strb.w	r0, [sp, #5]
c0de3ac8:	2020      	movs	r0, #32
c0de3aca:	f88d 1003 	strb.w	r1, [sp, #3]
c0de3ace:	f88d 0006 	strb.w	r0, [sp, #6]
c0de3ad2:	f10d 0002 	add.w	r0, sp, #2
c0de3ad6:	2106      	movs	r1, #6
c0de3ad8:	4615      	mov	r5, r2
c0de3ada:	f88d 2007 	strb.w	r2, [sp, #7]
c0de3ade:	f002 f87d 	bl	c0de5bdc <io_seph_send>
c0de3ae2:	4630      	mov	r0, r6
c0de3ae4:	4629      	mov	r1, r5
c0de3ae6:	f002 f879 	bl	c0de5bdc <io_seph_send>
c0de3aea:	4806      	ldr	r0, [pc, #24]	; (c0de3b04 <io_usb_send_ep+0x60>)
c0de3aec:	f004 017f 	and.w	r1, r4, #127	; 0x7f
c0de3af0:	4448      	add	r0, r9
c0de3af2:	eb00 0041 	add.w	r0, r0, r1, lsl #1
c0de3af6:	f44f 61fa 	mov.w	r1, #2000	; 0x7d0
c0de3afa:	8281      	strh	r1, [r0, #20]
c0de3afc:	b002      	add	sp, #8
c0de3afe:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de3b02:	4770      	bx	lr
c0de3b04:	000002b8 	.word	0x000002b8

c0de3b08 <io_usb_send_apdu_data>:
c0de3b08:	460a      	mov	r2, r1
c0de3b0a:	4601      	mov	r1, r0
c0de3b0c:	2082      	movs	r0, #130	; 0x82
c0de3b0e:	f7ff bfc9 	b.w	c0de3aa4 <io_usb_send_ep>
	...

c0de3b14 <io_usb_hid_receive>:
c0de3b14:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3b18:	b082      	sub	sp, #8
c0de3b1a:	4615      	mov	r5, r2
c0de3b1c:	460f      	mov	r7, r1
c0de3b1e:	4682      	mov	sl, r0
c0de3b20:	b11b      	cbz	r3, c0de3b2a <io_usb_hid_receive+0x16>
c0de3b22:	6818      	ldr	r0, [r3, #0]
c0de3b24:	f8b3 8004 	ldrh.w	r8, [r3, #4]
c0de3b28:	e003      	b.n	c0de3b32 <io_usb_hid_receive+0x1e>
c0de3b2a:	485d      	ldr	r0, [pc, #372]	; (c0de3ca0 <io_usb_hid_receive+0x18c>)
c0de3b2c:	f44f 7882 	mov.w	r8, #260	; 0x104
c0de3b30:	4448      	add	r0, r9
c0de3b32:	9001      	str	r0, [sp, #4]
c0de3b34:	f8df b16c 	ldr.w	fp, [pc, #364]	; c0de3ca4 <io_usb_hid_receive+0x190>
c0de3b38:	eb09 000b 	add.w	r0, r9, fp
c0de3b3c:	4287      	cmp	r7, r0
c0de3b3e:	d00e      	beq.n	c0de3b5e <io_usb_hid_receive+0x4a>
c0de3b40:	eb09 040b 	add.w	r4, r9, fp
c0de3b44:	4620      	mov	r0, r4
c0de3b46:	2140      	movs	r1, #64	; 0x40
c0de3b48:	2640      	movs	r6, #64	; 0x40
c0de3b4a:	f005 ff08 	bl	c0de995e <__aeabi_memclr>
c0de3b4e:	2d40      	cmp	r5, #64	; 0x40
c0de3b50:	bf38      	it	cc
c0de3b52:	462e      	movcc	r6, r5
c0de3b54:	4620      	mov	r0, r4
c0de3b56:	4639      	mov	r1, r7
c0de3b58:	4632      	mov	r2, r6
c0de3b5a:	f005 ff05 	bl	c0de9968 <__aeabi_memmove>
c0de3b5e:	eb09 000b 	add.w	r0, r9, fp
c0de3b62:	7880      	ldrb	r0, [r0, #2]
c0de3b64:	2801      	cmp	r0, #1
c0de3b66:	dc0b      	bgt.n	c0de3b80 <io_usb_hid_receive+0x6c>
c0de3b68:	b390      	cbz	r0, c0de3bd0 <io_usb_hid_receive+0xbc>
c0de3b6a:	2801      	cmp	r0, #1
c0de3b6c:	f040 808f 	bne.w	c0de3c8e <io_usb_hid_receive+0x17a>
c0de3b70:	eb09 040b 	add.w	r4, r9, fp
c0de3b74:	1ce0      	adds	r0, r4, #3
c0de3b76:	2104      	movs	r1, #4
c0de3b78:	f7ff f890 	bl	c0de2c9c <cx_rng_no_throw>
c0de3b7c:	4620      	mov	r0, r4
c0de3b7e:	e035      	b.n	c0de3bec <io_usb_hid_receive+0xd8>
c0de3b80:	2802      	cmp	r0, #2
c0de3b82:	d031      	beq.n	c0de3be8 <io_usb_hid_receive+0xd4>
c0de3b84:	2805      	cmp	r0, #5
c0de3b86:	f040 8082 	bne.w	c0de3c8e <io_usb_hid_receive+0x17a>
c0de3b8a:	eb09 000b 	add.w	r0, r9, fp
c0de3b8e:	4c46      	ldr	r4, [pc, #280]	; (c0de3ca8 <io_usb_hid_receive+0x194>)
c0de3b90:	78c1      	ldrb	r1, [r0, #3]
c0de3b92:	7900      	ldrb	r0, [r0, #4]
c0de3b94:	f859 2004 	ldr.w	r2, [r9, r4]
c0de3b98:	ea40 2001 	orr.w	r0, r0, r1, lsl #8
c0de3b9c:	4282      	cmp	r2, r0
c0de3b9e:	d127      	bne.n	c0de3bf0 <io_usb_hid_receive+0xdc>
c0de3ba0:	f859 0004 	ldr.w	r0, [r9, r4]
c0de3ba4:	b398      	cbz	r0, c0de3c0e <io_usb_hid_receive+0xfa>
c0de3ba6:	4941      	ldr	r1, [pc, #260]	; (c0de3cac <io_usb_hid_receive+0x198>)
c0de3ba8:	1f68      	subs	r0, r5, #5
c0de3baa:	f859 2001 	ldr.w	r2, [r9, r1]
c0de3bae:	b283      	uxth	r3, r0
c0de3bb0:	429a      	cmp	r2, r3
c0de3bb2:	bf38      	it	cc
c0de3bb4:	f859 0001 	ldrcc.w	r0, [r9, r1]
c0de3bb8:	b281      	uxth	r1, r0
c0de3bba:	293b      	cmp	r1, #59	; 0x3b
c0de3bbc:	493c      	ldr	r1, [pc, #240]	; (c0de3cb0 <io_usb_hid_receive+0x19c>)
c0de3bbe:	bf28      	it	cs
c0de3bc0:	203b      	movcs	r0, #59	; 0x3b
c0de3bc2:	f859 6001 	ldr.w	r6, [r9, r1]
c0de3bc6:	b285      	uxth	r5, r0
c0de3bc8:	eb09 000b 	add.w	r0, r9, fp
c0de3bcc:	1d41      	adds	r1, r0, #5
c0de3bce:	e04b      	b.n	c0de3c68 <io_usb_hid_receive+0x154>
c0de3bd0:	eb09 000b 	add.w	r0, r9, fp
c0de3bd4:	2400      	movs	r4, #0
c0de3bd6:	4601      	mov	r1, r0
c0de3bd8:	f801 4f03 	strb.w	r4, [r1, #3]!
c0de3bdc:	70cc      	strb	r4, [r1, #3]
c0de3bde:	708c      	strb	r4, [r1, #2]
c0de3be0:	2140      	movs	r1, #64	; 0x40
c0de3be2:	7104      	strb	r4, [r0, #4]
c0de3be4:	47d0      	blx	sl
c0de3be6:	e004      	b.n	c0de3bf2 <io_usb_hid_receive+0xde>
c0de3be8:	eb09 000b 	add.w	r0, r9, fp
c0de3bec:	2140      	movs	r1, #64	; 0x40
c0de3bee:	47d0      	blx	sl
c0de3bf0:	2400      	movs	r4, #0
c0de3bf2:	482d      	ldr	r0, [pc, #180]	; (c0de3ca8 <io_usb_hid_receive+0x194>)
c0de3bf4:	2100      	movs	r1, #0
c0de3bf6:	f849 1000 	str.w	r1, [r9, r0]
c0de3bfa:	482c      	ldr	r0, [pc, #176]	; (c0de3cac <io_usb_hid_receive+0x198>)
c0de3bfc:	4a2c      	ldr	r2, [pc, #176]	; (c0de3cb0 <io_usb_hid_receive+0x19c>)
c0de3bfe:	f849 1000 	str.w	r1, [r9, r0]
c0de3c02:	f849 1002 	str.w	r1, [r9, r2]
c0de3c06:	4620      	mov	r0, r4
c0de3c08:	b002      	add	sp, #8
c0de3c0a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3c0e:	eb09 000b 	add.w	r0, r9, fp
c0de3c12:	7941      	ldrb	r1, [r0, #5]
c0de3c14:	7982      	ldrb	r2, [r0, #6]
c0de3c16:	4827      	ldr	r0, [pc, #156]	; (c0de3cb4 <io_usb_hid_receive+0x1a0>)
c0de3c18:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de3c1c:	f849 1000 	str.w	r1, [r9, r0]
c0de3c20:	f859 1000 	ldr.w	r1, [r9, r0]
c0de3c24:	4541      	cmp	r1, r8
c0de3c26:	d8e3      	bhi.n	c0de3bf0 <io_usb_hid_receive+0xdc>
c0de3c28:	f859 1000 	ldr.w	r1, [r9, r0]
c0de3c2c:	481f      	ldr	r0, [pc, #124]	; (c0de3cac <io_usb_hid_receive+0x198>)
c0de3c2e:	eb09 020b 	add.w	r2, r9, fp
c0de3c32:	f849 1000 	str.w	r1, [r9, r0]
c0de3c36:	f819 100b 	ldrb.w	r1, [r9, fp]
c0de3c3a:	7852      	ldrb	r2, [r2, #1]
c0de3c3c:	4b1e      	ldr	r3, [pc, #120]	; (c0de3cb8 <io_usb_hid_receive+0x1a4>)
c0de3c3e:	ea42 2201 	orr.w	r2, r2, r1, lsl #8
c0de3c42:	f849 2003 	str.w	r2, [r9, r3]
c0de3c46:	1fe9      	subs	r1, r5, #7
c0de3c48:	f859 2000 	ldr.w	r2, [r9, r0]
c0de3c4c:	b28b      	uxth	r3, r1
c0de3c4e:	429a      	cmp	r2, r3
c0de3c50:	bf38      	it	cc
c0de3c52:	f859 1000 	ldrcc.w	r1, [r9, r0]
c0de3c56:	b288      	uxth	r0, r1
c0de3c58:	2839      	cmp	r0, #57	; 0x39
c0de3c5a:	bf28      	it	cs
c0de3c5c:	2139      	movcs	r1, #57	; 0x39
c0de3c5e:	eb09 000b 	add.w	r0, r9, fp
c0de3c62:	9e01      	ldr	r6, [sp, #4]
c0de3c64:	b28d      	uxth	r5, r1
c0de3c66:	1dc1      	adds	r1, r0, #7
c0de3c68:	4630      	mov	r0, r6
c0de3c6a:	462a      	mov	r2, r5
c0de3c6c:	f005 fe7c 	bl	c0de9968 <__aeabi_memmove>
c0de3c70:	490f      	ldr	r1, [pc, #60]	; (c0de3cb0 <io_usb_hid_receive+0x19c>)
c0de3c72:	1970      	adds	r0, r6, r5
c0de3c74:	4a0d      	ldr	r2, [pc, #52]	; (c0de3cac <io_usb_hid_receive+0x198>)
c0de3c76:	f849 0001 	str.w	r0, [r9, r1]
c0de3c7a:	f859 0002 	ldr.w	r0, [r9, r2]
c0de3c7e:	1b40      	subs	r0, r0, r5
c0de3c80:	f849 0002 	str.w	r0, [r9, r2]
c0de3c84:	f859 0004 	ldr.w	r0, [r9, r4]
c0de3c88:	3001      	adds	r0, #1
c0de3c8a:	f849 0004 	str.w	r0, [r9, r4]
c0de3c8e:	4807      	ldr	r0, [pc, #28]	; (c0de3cac <io_usb_hid_receive+0x198>)
c0de3c90:	f859 0000 	ldr.w	r0, [r9, r0]
c0de3c94:	b108      	cbz	r0, c0de3c9a <io_usb_hid_receive+0x186>
c0de3c96:	2401      	movs	r4, #1
c0de3c98:	e7b5      	b.n	c0de3c06 <io_usb_hid_receive+0xf2>
c0de3c9a:	2402      	movs	r4, #2
c0de3c9c:	e7a9      	b.n	c0de3bf2 <io_usb_hid_receive+0xde>
c0de3c9e:	bf00      	nop
c0de3ca0:	000001b1 	.word	0x000001b1
c0de3ca4:	000002e4 	.word	0x000002e4
c0de3ca8:	00000324 	.word	0x00000324
c0de3cac:	0000032c 	.word	0x0000032c
c0de3cb0:	00000330 	.word	0x00000330
c0de3cb4:	00000328 	.word	0x00000328
c0de3cb8:	00000334 	.word	0x00000334

c0de3cbc <io_usb_hid_init>:
c0de3cbc:	4805      	ldr	r0, [pc, #20]	; (c0de3cd4 <io_usb_hid_init+0x18>)
c0de3cbe:	2100      	movs	r1, #0
c0de3cc0:	f849 1000 	str.w	r1, [r9, r0]
c0de3cc4:	4804      	ldr	r0, [pc, #16]	; (c0de3cd8 <io_usb_hid_init+0x1c>)
c0de3cc6:	4a05      	ldr	r2, [pc, #20]	; (c0de3cdc <io_usb_hid_init+0x20>)
c0de3cc8:	f849 1000 	str.w	r1, [r9, r0]
c0de3ccc:	f849 1002 	str.w	r1, [r9, r2]
c0de3cd0:	4770      	bx	lr
c0de3cd2:	bf00      	nop
c0de3cd4:	00000324 	.word	0x00000324
c0de3cd8:	0000032c 	.word	0x0000032c
c0de3cdc:	00000330 	.word	0x00000330

c0de3ce0 <io_usb_hid_sent>:
c0de3ce0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3ce4:	4e33      	ldr	r6, [pc, #204]	; (c0de3db4 <io_usb_hid_sent+0xd4>)
c0de3ce6:	f8df a0d0 	ldr.w	sl, [pc, #208]	; c0de3db8 <io_usb_hid_sent+0xd8>
c0de3cea:	f859 1006 	ldr.w	r1, [r9, r6]
c0de3cee:	b361      	cbz	r1, c0de3d4a <io_usb_hid_sent+0x6a>
c0de3cf0:	f859 400a 	ldr.w	r4, [r9, sl]
c0de3cf4:	b34c      	cbz	r4, c0de3d4a <io_usb_hid_sent+0x6a>
c0de3cf6:	f8df 80cc 	ldr.w	r8, [pc, #204]	; c0de3dc4 <io_usb_hid_sent+0xe4>
c0de3cfa:	4683      	mov	fp, r0
c0de3cfc:	eb09 0508 	add.w	r5, r9, r8
c0de3d00:	1d68      	adds	r0, r5, #5
c0de3d02:	213b      	movs	r1, #59	; 0x3b
c0de3d04:	f005 fe2b 	bl	c0de995e <__aeabi_memclr>
c0de3d08:	482f      	ldr	r0, [pc, #188]	; (c0de3dc8 <io_usb_hid_sent+0xe8>)
c0de3d0a:	4f2c      	ldr	r7, [pc, #176]	; (c0de3dbc <io_usb_hid_sent+0xdc>)
c0de3d0c:	f859 1000 	ldr.w	r1, [r9, r0]
c0de3d10:	0a09      	lsrs	r1, r1, #8
c0de3d12:	f809 1008 	strb.w	r1, [r9, r8]
c0de3d16:	f859 0000 	ldr.w	r0, [r9, r0]
c0de3d1a:	7068      	strb	r0, [r5, #1]
c0de3d1c:	2005      	movs	r0, #5
c0de3d1e:	70a8      	strb	r0, [r5, #2]
c0de3d20:	f859 0007 	ldr.w	r0, [r9, r7]
c0de3d24:	0a00      	lsrs	r0, r0, #8
c0de3d26:	70e8      	strb	r0, [r5, #3]
c0de3d28:	f859 0007 	ldr.w	r0, [r9, r7]
c0de3d2c:	7128      	strb	r0, [r5, #4]
c0de3d2e:	f859 1007 	ldr.w	r1, [r9, r7]
c0de3d32:	f859 0006 	ldr.w	r0, [r9, r6]
c0de3d36:	b1a9      	cbz	r1, c0de3d64 <io_usb_hid_sent+0x84>
c0de3d38:	283b      	cmp	r0, #59	; 0x3b
c0de3d3a:	eb09 0008 	add.w	r0, r9, r8
c0de3d3e:	bf94      	ite	ls
c0de3d40:	f859 5006 	ldrls.w	r5, [r9, r6]
c0de3d44:	253b      	movhi	r5, #59	; 0x3b
c0de3d46:	3005      	adds	r0, #5
c0de3d48:	e01b      	b.n	c0de3d82 <io_usb_hid_sent+0xa2>
c0de3d4a:	481c      	ldr	r0, [pc, #112]	; (c0de3dbc <io_usb_hid_sent+0xdc>)
c0de3d4c:	2100      	movs	r1, #0
c0de3d4e:	f849 1000 	str.w	r1, [r9, r0]
c0de3d52:	481b      	ldr	r0, [pc, #108]	; (c0de3dc0 <io_usb_hid_sent+0xe0>)
c0de3d54:	f849 1006 	str.w	r1, [r9, r6]
c0de3d58:	f849 100a 	str.w	r1, [r9, sl]
c0de3d5c:	f809 1000 	strb.w	r1, [r9, r0]
c0de3d60:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de3d64:	2839      	cmp	r0, #57	; 0x39
c0de3d66:	bf94      	ite	ls
c0de3d68:	f859 5006 	ldrls.w	r5, [r9, r6]
c0de3d6c:	2539      	movhi	r5, #57	; 0x39
c0de3d6e:	f859 0006 	ldr.w	r0, [r9, r6]
c0de3d72:	eb09 0108 	add.w	r1, r9, r8
c0de3d76:	0a00      	lsrs	r0, r0, #8
c0de3d78:	7148      	strb	r0, [r1, #5]
c0de3d7a:	f859 0006 	ldr.w	r0, [r9, r6]
c0de3d7e:	7188      	strb	r0, [r1, #6]
c0de3d80:	1dc8      	adds	r0, r1, #7
c0de3d82:	4621      	mov	r1, r4
c0de3d84:	462a      	mov	r2, r5
c0de3d86:	f005 fdef 	bl	c0de9968 <__aeabi_memmove>
c0de3d8a:	1960      	adds	r0, r4, r5
c0de3d8c:	f849 000a 	str.w	r0, [r9, sl]
c0de3d90:	f859 0006 	ldr.w	r0, [r9, r6]
c0de3d94:	465b      	mov	r3, fp
c0de3d96:	1b40      	subs	r0, r0, r5
c0de3d98:	f849 0006 	str.w	r0, [r9, r6]
c0de3d9c:	f859 0007 	ldr.w	r0, [r9, r7]
c0de3da0:	2140      	movs	r1, #64	; 0x40
c0de3da2:	1c42      	adds	r2, r0, #1
c0de3da4:	eb09 0008 	add.w	r0, r9, r8
c0de3da8:	f849 2007 	str.w	r2, [r9, r7]
c0de3dac:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3db0:	4718      	bx	r3
c0de3db2:	bf00      	nop
c0de3db4:	0000032c 	.word	0x0000032c
c0de3db8:	00000330 	.word	0x00000330
c0de3dbc:	00000324 	.word	0x00000324
c0de3dc0:	000002b8 	.word	0x000002b8
c0de3dc4:	000002e4 	.word	0x000002e4
c0de3dc8:	00000334 	.word	0x00000334

c0de3dcc <io_usb_hid_send>:
c0de3dcc:	b181      	cbz	r1, c0de3df0 <io_usb_hid_send+0x24>
c0de3dce:	f8df c024 	ldr.w	ip, [pc, #36]	; c0de3df4 <io_usb_hid_send+0x28>
c0de3dd2:	2300      	movs	r3, #0
c0de3dd4:	f849 300c 	str.w	r3, [r9, ip]
c0de3dd8:	f8df c01c 	ldr.w	ip, [pc, #28]	; c0de3df8 <io_usb_hid_send+0x2c>
c0de3ddc:	4b07      	ldr	r3, [pc, #28]	; (c0de3dfc <io_usb_hid_send+0x30>)
c0de3dde:	f849 200c 	str.w	r2, [r9, ip]
c0de3de2:	4a07      	ldr	r2, [pc, #28]	; (c0de3e00 <io_usb_hid_send+0x34>)
c0de3de4:	f849 1003 	str.w	r1, [r9, r3]
c0de3de8:	f849 1002 	str.w	r1, [r9, r2]
c0de3dec:	f7ff bf78 	b.w	c0de3ce0 <io_usb_hid_sent>
c0de3df0:	4770      	bx	lr
c0de3df2:	bf00      	nop
c0de3df4:	00000324 	.word	0x00000324
c0de3df8:	00000330 	.word	0x00000330
c0de3dfc:	0000032c 	.word	0x0000032c
c0de3e00:	00000328 	.word	0x00000328

c0de3e04 <snprintf>:
c0de3e04:	b081      	sub	sp, #4
c0de3e06:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de3e0a:	b089      	sub	sp, #36	; 0x24
c0de3e0c:	2800      	cmp	r0, #0
c0de3e0e:	9311      	str	r3, [sp, #68]	; 0x44
c0de3e10:	f000 819e 	beq.w	c0de4150 <snprintf+0x34c>
c0de3e14:	460e      	mov	r6, r1
c0de3e16:	2900      	cmp	r1, #0
c0de3e18:	f000 819a 	beq.w	c0de4150 <snprintf+0x34c>
c0de3e1c:	4631      	mov	r1, r6
c0de3e1e:	4615      	mov	r5, r2
c0de3e20:	4680      	mov	r8, r0
c0de3e22:	f005 fd9c 	bl	c0de995e <__aeabi_memclr>
c0de3e26:	1e74      	subs	r4, r6, #1
c0de3e28:	f000 8192 	beq.w	c0de4150 <snprintf+0x34c>
c0de3e2c:	7828      	ldrb	r0, [r5, #0]
c0de3e2e:	a911      	add	r1, sp, #68	; 0x44
c0de3e30:	2800      	cmp	r0, #0
c0de3e32:	9104      	str	r1, [sp, #16]
c0de3e34:	f000 818c 	beq.w	c0de4150 <snprintf+0x34c>
c0de3e38:	2700      	movs	r7, #0
c0de3e3a:	bf00      	nop
c0de3e3c:	b130      	cbz	r0, c0de3e4c <snprintf+0x48>
c0de3e3e:	2825      	cmp	r0, #37	; 0x25
c0de3e40:	d004      	beq.n	c0de3e4c <snprintf+0x48>
c0de3e42:	19e8      	adds	r0, r5, r7
c0de3e44:	7840      	ldrb	r0, [r0, #1]
c0de3e46:	3701      	adds	r7, #1
c0de3e48:	e7f8      	b.n	c0de3e3c <snprintf+0x38>
c0de3e4a:	bf00      	nop
c0de3e4c:	42a7      	cmp	r7, r4
c0de3e4e:	bf28      	it	cs
c0de3e50:	4627      	movcs	r7, r4
c0de3e52:	4640      	mov	r0, r8
c0de3e54:	4629      	mov	r1, r5
c0de3e56:	463a      	mov	r2, r7
c0de3e58:	f005 fd86 	bl	c0de9968 <__aeabi_memmove>
c0de3e5c:	1be4      	subs	r4, r4, r7
c0de3e5e:	f000 8177 	beq.w	c0de4150 <snprintf+0x34c>
c0de3e62:	5de8      	ldrb	r0, [r5, r7]
c0de3e64:	44b8      	add	r8, r7
c0de3e66:	2825      	cmp	r0, #37	; 0x25
c0de3e68:	443d      	add	r5, r7
c0de3e6a:	f040 815f 	bne.w	c0de412c <snprintf+0x328>
c0de3e6e:	3501      	adds	r5, #1
c0de3e70:	f04f 0b00 	mov.w	fp, #0
c0de3e74:	2220      	movs	r2, #32
c0de3e76:	2600      	movs	r6, #0
c0de3e78:	2000      	movs	r0, #0
c0de3e7a:	3501      	adds	r5, #1
c0de3e7c:	f815 1c01 	ldrb.w	r1, [r5, #-1]
c0de3e80:	3501      	adds	r5, #1
c0de3e82:	292d      	cmp	r1, #45	; 0x2d
c0de3e84:	dc12      	bgt.n	c0de3eac <snprintf+0xa8>
c0de3e86:	f04f 0000 	mov.w	r0, #0
c0de3e8a:	d0f7      	beq.n	c0de3e7c <snprintf+0x78>
c0de3e8c:	2925      	cmp	r1, #37	; 0x25
c0de3e8e:	f000 80e6 	beq.w	c0de405e <snprintf+0x25a>
c0de3e92:	292a      	cmp	r1, #42	; 0x2a
c0de3e94:	f040 8148 	bne.w	c0de4128 <snprintf+0x324>
c0de3e98:	462b      	mov	r3, r5
c0de3e9a:	f813 0d01 	ldrb.w	r0, [r3, #-1]!
c0de3e9e:	2873      	cmp	r0, #115	; 0x73
c0de3ea0:	f040 8154 	bne.w	c0de414c <snprintf+0x348>
c0de3ea4:	9904      	ldr	r1, [sp, #16]
c0de3ea6:	2002      	movs	r0, #2
c0de3ea8:	461d      	mov	r5, r3
c0de3eaa:	e025      	b.n	c0de3ef8 <snprintf+0xf4>
c0de3eac:	2947      	cmp	r1, #71	; 0x47
c0de3eae:	dc27      	bgt.n	c0de3f00 <snprintf+0xfc>
c0de3eb0:	f1a1 0330 	sub.w	r3, r1, #48	; 0x30
c0de3eb4:	2b0a      	cmp	r3, #10
c0de3eb6:	d20d      	bcs.n	c0de3ed4 <snprintf+0xd0>
c0de3eb8:	f081 0330 	eor.w	r3, r1, #48	; 0x30
c0de3ebc:	ea53 030b 	orrs.w	r3, r3, fp
c0de3ec0:	eb0b 038b 	add.w	r3, fp, fp, lsl #2
c0de3ec4:	eb01 0143 	add.w	r1, r1, r3, lsl #1
c0de3ec8:	bf08      	it	eq
c0de3eca:	2230      	moveq	r2, #48	; 0x30
c0de3ecc:	f1a1 0b30 	sub.w	fp, r1, #48	; 0x30
c0de3ed0:	3d01      	subs	r5, #1
c0de3ed2:	e7d2      	b.n	c0de3e7a <snprintf+0x76>
c0de3ed4:	292e      	cmp	r1, #46	; 0x2e
c0de3ed6:	f040 8127 	bne.w	c0de4128 <snprintf+0x324>
c0de3eda:	f815 0c01 	ldrb.w	r0, [r5, #-1]
c0de3ede:	282a      	cmp	r0, #42	; 0x2a
c0de3ee0:	f040 8134 	bne.w	c0de414c <snprintf+0x348>
c0de3ee4:	7828      	ldrb	r0, [r5, #0]
c0de3ee6:	2848      	cmp	r0, #72	; 0x48
c0de3ee8:	d004      	beq.n	c0de3ef4 <snprintf+0xf0>
c0de3eea:	2873      	cmp	r0, #115	; 0x73
c0de3eec:	d002      	beq.n	c0de3ef4 <snprintf+0xf0>
c0de3eee:	2868      	cmp	r0, #104	; 0x68
c0de3ef0:	f040 812b 	bne.w	c0de414a <snprintf+0x346>
c0de3ef4:	9904      	ldr	r1, [sp, #16]
c0de3ef6:	2001      	movs	r0, #1
c0de3ef8:	1d0b      	adds	r3, r1, #4
c0de3efa:	9304      	str	r3, [sp, #16]
c0de3efc:	680e      	ldr	r6, [r1, #0]
c0de3efe:	e7bc      	b.n	c0de3e7a <snprintf+0x76>
c0de3f00:	2967      	cmp	r1, #103	; 0x67
c0de3f02:	dc0c      	bgt.n	c0de3f1e <snprintf+0x11a>
c0de3f04:	2962      	cmp	r1, #98	; 0x62
c0de3f06:	dc12      	bgt.n	c0de3f2e <snprintf+0x12a>
c0de3f08:	2948      	cmp	r1, #72	; 0x48
c0de3f0a:	f000 80ac 	beq.w	c0de4066 <snprintf+0x262>
c0de3f0e:	2958      	cmp	r1, #88	; 0x58
c0de3f10:	f040 810a 	bne.w	c0de4128 <snprintf+0x324>
c0de3f14:	f8cd 800c 	str.w	r8, [sp, #12]
c0de3f18:	f04f 0c01 	mov.w	ip, #1
c0de3f1c:	e027      	b.n	c0de3f6e <snprintf+0x16a>
c0de3f1e:	2972      	cmp	r1, #114	; 0x72
c0de3f20:	dc1b      	bgt.n	c0de3f5a <snprintf+0x156>
c0de3f22:	2968      	cmp	r1, #104	; 0x68
c0de3f24:	f000 80a2 	beq.w	c0de406c <snprintf+0x268>
c0de3f28:	2970      	cmp	r1, #112	; 0x70
c0de3f2a:	d01c      	beq.n	c0de3f66 <snprintf+0x162>
c0de3f2c:	e0fc      	b.n	c0de4128 <snprintf+0x324>
c0de3f2e:	2963      	cmp	r1, #99	; 0x63
c0de3f30:	f000 80a1 	beq.w	c0de4076 <snprintf+0x272>
c0de3f34:	2964      	cmp	r1, #100	; 0x64
c0de3f36:	f040 80f7 	bne.w	c0de4128 <snprintf+0x324>
c0de3f3a:	9804      	ldr	r0, [sp, #16]
c0de3f3c:	f8cd 800c 	str.w	r8, [sp, #12]
c0de3f40:	1d01      	adds	r1, r0, #4
c0de3f42:	9104      	str	r1, [sp, #16]
c0de3f44:	6800      	ldr	r0, [r0, #0]
c0de3f46:	2800      	cmp	r0, #0
c0de3f48:	4607      	mov	r7, r0
c0de3f4a:	d500      	bpl.n	c0de3f4e <snprintf+0x14a>
c0de3f4c:	4247      	negs	r7, r0
c0de3f4e:	0fc0      	lsrs	r0, r0, #31
c0de3f50:	f04f 0c00 	mov.w	ip, #0
c0de3f54:	f04f 080a 	mov.w	r8, #10
c0de3f58:	e010      	b.n	c0de3f7c <snprintf+0x178>
c0de3f5a:	2973      	cmp	r1, #115	; 0x73
c0de3f5c:	f000 8095 	beq.w	c0de408a <snprintf+0x286>
c0de3f60:	2978      	cmp	r1, #120	; 0x78
c0de3f62:	f040 80e1 	bne.w	c0de4128 <snprintf+0x324>
c0de3f66:	f04f 0c00 	mov.w	ip, #0
c0de3f6a:	f8cd 800c 	str.w	r8, [sp, #12]
c0de3f6e:	9804      	ldr	r0, [sp, #16]
c0de3f70:	f04f 0810 	mov.w	r8, #16
c0de3f74:	1d01      	adds	r1, r0, #4
c0de3f76:	9104      	str	r1, [sp, #16]
c0de3f78:	6807      	ldr	r7, [r0, #0]
c0de3f7a:	2000      	movs	r0, #0
c0de3f7c:	45b8      	cmp	r8, r7
c0de3f7e:	d902      	bls.n	c0de3f86 <snprintf+0x182>
c0de3f80:	f04f 0a01 	mov.w	sl, #1
c0de3f84:	e00f      	b.n	c0de3fa6 <snprintf+0x1a2>
c0de3f86:	f1ab 0301 	sub.w	r3, fp, #1
c0de3f8a:	4641      	mov	r1, r8
c0de3f8c:	468a      	mov	sl, r1
c0de3f8e:	fba8 1601 	umull	r1, r6, r8, r1
c0de3f92:	2e00      	cmp	r6, #0
c0de3f94:	bf18      	it	ne
c0de3f96:	2601      	movne	r6, #1
c0de3f98:	42b9      	cmp	r1, r7
c0de3f9a:	469b      	mov	fp, r3
c0de3f9c:	d803      	bhi.n	c0de3fa6 <snprintf+0x1a2>
c0de3f9e:	2e00      	cmp	r6, #0
c0de3fa0:	f1ab 0301 	sub.w	r3, fp, #1
c0de3fa4:	d0f2      	beq.n	c0de3f8c <snprintf+0x188>
c0de3fa6:	2800      	cmp	r0, #0
c0de3fa8:	4603      	mov	r3, r0
c0de3faa:	bf18      	it	ne
c0de3fac:	f04f 33ff 	movne.w	r3, #4294967295	; 0xffffffff
c0de3fb0:	b148      	cbz	r0, c0de3fc6 <snprintf+0x1c2>
c0de3fb2:	b2d1      	uxtb	r1, r2
c0de3fb4:	2930      	cmp	r1, #48	; 0x30
c0de3fb6:	d10a      	bne.n	c0de3fce <snprintf+0x1ca>
c0de3fb8:	212d      	movs	r1, #45	; 0x2d
c0de3fba:	2601      	movs	r6, #1
c0de3fbc:	f04f 0e01 	mov.w	lr, #1
c0de3fc0:	f88d 1014 	strb.w	r1, [sp, #20]
c0de3fc4:	e006      	b.n	c0de3fd4 <snprintf+0x1d0>
c0de3fc6:	f04f 0e01 	mov.w	lr, #1
c0de3fca:	2600      	movs	r6, #0
c0de3fcc:	e002      	b.n	c0de3fd4 <snprintf+0x1d0>
c0de3fce:	2600      	movs	r6, #0
c0de3fd0:	f04f 0e00 	mov.w	lr, #0
c0de3fd4:	ebab 0000 	sub.w	r0, fp, r0
c0de3fd8:	1e81      	subs	r1, r0, #2
c0de3fda:	290d      	cmp	r1, #13
c0de3fdc:	d811      	bhi.n	c0de4002 <snprintf+0x1fe>
c0de3fde:	1e41      	subs	r1, r0, #1
c0de3fe0:	d00f      	beq.n	c0de4002 <snprintf+0x1fe>
c0de3fe2:	a805      	add	r0, sp, #20
c0de3fe4:	4430      	add	r0, r6
c0de3fe6:	b2d2      	uxtb	r2, r2
c0de3fe8:	f8cd c008 	str.w	ip, [sp, #8]
c0de3fec:	e9cd 3e00 	strd	r3, lr, [sp]
c0de3ff0:	f005 fcbc 	bl	c0de996c <__aeabi_memset>
c0de3ff4:	9900      	ldr	r1, [sp, #0]
c0de3ff6:	eb06 000b 	add.w	r0, r6, fp
c0de3ffa:	e9dd ec01 	ldrd	lr, ip, [sp, #4]
c0de3ffe:	4408      	add	r0, r1
c0de4000:	1e46      	subs	r6, r0, #1
c0de4002:	f1be 0f00 	cmp.w	lr, #0
c0de4006:	a905      	add	r1, sp, #20
c0de4008:	bf02      	ittt	eq
c0de400a:	202d      	moveq	r0, #45	; 0x2d
c0de400c:	5588      	strbeq	r0, [r1, r6]
c0de400e:	3601      	addeq	r6, #1
c0de4010:	f1ba 0f00 	cmp.w	sl, #0
c0de4014:	d016      	beq.n	c0de4044 <snprintf+0x240>
c0de4016:	4a54      	ldr	r2, [pc, #336]	; (c0de4168 <snprintf+0x364>)
c0de4018:	4854      	ldr	r0, [pc, #336]	; (c0de416c <snprintf+0x368>)
c0de401a:	447a      	add	r2, pc
c0de401c:	4478      	add	r0, pc
c0de401e:	f1bc 0f00 	cmp.w	ip, #0
c0de4022:	bf08      	it	eq
c0de4024:	4610      	moveq	r0, r2
c0de4026:	bf00      	nop
c0de4028:	fbb7 f3fa 	udiv	r3, r7, sl
c0de402c:	45d0      	cmp	r8, sl
c0de402e:	fbb3 f2f8 	udiv	r2, r3, r8
c0de4032:	fbba faf8 	udiv	sl, sl, r8
c0de4036:	fb02 3218 	mls	r2, r2, r8, r3
c0de403a:	5c82      	ldrb	r2, [r0, r2]
c0de403c:	558a      	strb	r2, [r1, r6]
c0de403e:	f106 0601 	add.w	r6, r6, #1
c0de4042:	d9f1      	bls.n	c0de4028 <snprintf+0x224>
c0de4044:	42a6      	cmp	r6, r4
c0de4046:	bf28      	it	cs
c0de4048:	4626      	movcs	r6, r4
c0de404a:	f8dd 800c 	ldr.w	r8, [sp, #12]
c0de404e:	4632      	mov	r2, r6
c0de4050:	4640      	mov	r0, r8
c0de4052:	f005 fc89 	bl	c0de9968 <__aeabi_memmove>
c0de4056:	1ba4      	subs	r4, r4, r6
c0de4058:	d07a      	beq.n	c0de4150 <snprintf+0x34c>
c0de405a:	44b0      	add	r8, r6
c0de405c:	e064      	b.n	c0de4128 <snprintf+0x324>
c0de405e:	3c01      	subs	r4, #1
c0de4060:	f04f 0025 	mov.w	r0, #37	; 0x25
c0de4064:	e00d      	b.n	c0de4082 <snprintf+0x27e>
c0de4066:	4a3e      	ldr	r2, [pc, #248]	; (c0de4160 <snprintf+0x35c>)
c0de4068:	447a      	add	r2, pc
c0de406a:	e001      	b.n	c0de4070 <snprintf+0x26c>
c0de406c:	4a3d      	ldr	r2, [pc, #244]	; (c0de4164 <snprintf+0x360>)
c0de406e:	447a      	add	r2, pc
c0de4070:	f04f 0c01 	mov.w	ip, #1
c0de4074:	e00d      	b.n	c0de4092 <snprintf+0x28e>
c0de4076:	9804      	ldr	r0, [sp, #16]
c0de4078:	3c01      	subs	r4, #1
c0de407a:	f100 0104 	add.w	r1, r0, #4
c0de407e:	9104      	str	r1, [sp, #16]
c0de4080:	6800      	ldr	r0, [r0, #0]
c0de4082:	f808 0b01 	strb.w	r0, [r8], #1
c0de4086:	d14f      	bne.n	c0de4128 <snprintf+0x324>
c0de4088:	e062      	b.n	c0de4150 <snprintf+0x34c>
c0de408a:	4a34      	ldr	r2, [pc, #208]	; (c0de415c <snprintf+0x358>)
c0de408c:	f04f 0c00 	mov.w	ip, #0
c0de4090:	447a      	add	r2, pc
c0de4092:	9904      	ldr	r1, [sp, #16]
c0de4094:	b2c0      	uxtb	r0, r0
c0de4096:	1d0b      	adds	r3, r1, #4
c0de4098:	9304      	str	r3, [sp, #16]
c0de409a:	6809      	ldr	r1, [r1, #0]
c0de409c:	2802      	cmp	r0, #2
c0de409e:	d040      	beq.n	c0de4122 <snprintf+0x31e>
c0de40a0:	2801      	cmp	r0, #1
c0de40a2:	d008      	beq.n	c0de40b6 <snprintf+0x2b2>
c0de40a4:	463e      	mov	r6, r7
c0de40a6:	b930      	cbnz	r0, c0de40b6 <snprintf+0x2b2>
c0de40a8:	2000      	movs	r0, #0
c0de40aa:	bf00      	nop
c0de40ac:	5c0b      	ldrb	r3, [r1, r0]
c0de40ae:	3001      	adds	r0, #1
c0de40b0:	2b00      	cmp	r3, #0
c0de40b2:	d1fb      	bne.n	c0de40ac <snprintf+0x2a8>
c0de40b4:	1e46      	subs	r6, r0, #1
c0de40b6:	f1bc 0f00 	cmp.w	ip, #0
c0de40ba:	d01a      	beq.n	c0de40f2 <snprintf+0x2ee>
c0de40bc:	b3a6      	cbz	r6, c0de4128 <snprintf+0x324>
c0de40be:	eba4 0046 	sub.w	r0, r4, r6, lsl #1
c0de40c2:	bf00      	nop
c0de40c4:	2c01      	cmp	r4, #1
c0de40c6:	d943      	bls.n	c0de4150 <snprintf+0x34c>
c0de40c8:	780b      	ldrb	r3, [r1, #0]
c0de40ca:	3c02      	subs	r4, #2
c0de40cc:	ea4f 1713 	mov.w	r7, r3, lsr #4
c0de40d0:	5dd7      	ldrb	r7, [r2, r7]
c0de40d2:	f003 030f 	and.w	r3, r3, #15
c0de40d6:	f888 7000 	strb.w	r7, [r8]
c0de40da:	5cd3      	ldrb	r3, [r2, r3]
c0de40dc:	f888 3001 	strb.w	r3, [r8, #1]
c0de40e0:	d036      	beq.n	c0de4150 <snprintf+0x34c>
c0de40e2:	f108 0802 	add.w	r8, r8, #2
c0de40e6:	3e01      	subs	r6, #1
c0de40e8:	f101 0101 	add.w	r1, r1, #1
c0de40ec:	d1ea      	bne.n	c0de40c4 <snprintf+0x2c0>
c0de40ee:	4604      	mov	r4, r0
c0de40f0:	e01a      	b.n	c0de4128 <snprintf+0x324>
c0de40f2:	42a6      	cmp	r6, r4
c0de40f4:	bf28      	it	cs
c0de40f6:	4626      	movcs	r6, r4
c0de40f8:	4640      	mov	r0, r8
c0de40fa:	4632      	mov	r2, r6
c0de40fc:	f005 fc34 	bl	c0de9968 <__aeabi_memmove>
c0de4100:	1ba4      	subs	r4, r4, r6
c0de4102:	d025      	beq.n	c0de4150 <snprintf+0x34c>
c0de4104:	4637      	mov	r7, r6
c0de4106:	45bb      	cmp	fp, r7
c0de4108:	44b0      	add	r8, r6
c0de410a:	d90d      	bls.n	c0de4128 <snprintf+0x324>
c0de410c:	ebab 0607 	sub.w	r6, fp, r7
c0de4110:	42a6      	cmp	r6, r4
c0de4112:	bf28      	it	cs
c0de4114:	4626      	movcs	r6, r4
c0de4116:	4640      	mov	r0, r8
c0de4118:	4631      	mov	r1, r6
c0de411a:	2220      	movs	r2, #32
c0de411c:	f005 fc26 	bl	c0de996c <__aeabi_memset>
c0de4120:	e799      	b.n	c0de4056 <snprintf+0x252>
c0de4122:	7808      	ldrb	r0, [r1, #0]
c0de4124:	b130      	cbz	r0, c0de4134 <snprintf+0x330>
c0de4126:	bf00      	nop
c0de4128:	f815 0d01 	ldrb.w	r0, [r5, #-1]!
c0de412c:	2800      	cmp	r0, #0
c0de412e:	f47f ae83 	bne.w	c0de3e38 <snprintf+0x34>
c0de4132:	e00d      	b.n	c0de4150 <snprintf+0x34c>
c0de4134:	42a6      	cmp	r6, r4
c0de4136:	bf28      	it	cs
c0de4138:	4626      	movcs	r6, r4
c0de413a:	4640      	mov	r0, r8
c0de413c:	4631      	mov	r1, r6
c0de413e:	2220      	movs	r2, #32
c0de4140:	f005 fc14 	bl	c0de996c <__aeabi_memset>
c0de4144:	1ba4      	subs	r4, r4, r6
c0de4146:	d1de      	bne.n	c0de4106 <snprintf+0x302>
c0de4148:	e002      	b.n	c0de4150 <snprintf+0x34c>
c0de414a:	202a      	movs	r0, #42	; 0x2a
c0de414c:	3d01      	subs	r5, #1
c0de414e:	e7ed      	b.n	c0de412c <snprintf+0x328>
c0de4150:	2000      	movs	r0, #0
c0de4152:	b009      	add	sp, #36	; 0x24
c0de4154:	e8bd 4df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de4158:	b001      	add	sp, #4
c0de415a:	4770      	bx	lr
c0de415c:	000074e4 	.word	0x000074e4
c0de4160:	0000752c 	.word	0x0000752c
c0de4164:	00007506 	.word	0x00007506
c0de4168:	0000755a 	.word	0x0000755a
c0de416c:	00007578 	.word	0x00007578

c0de4170 <parser_parse>:
c0de4170:	b570      	push	{r4, r5, r6, lr}
c0de4172:	461c      	mov	r4, r3
c0de4174:	4605      	mov	r5, r0
c0de4176:	b290      	uxth	r0, r2
c0de4178:	2300      	movs	r3, #0
c0de417a:	80eb      	strh	r3, [r5, #6]
c0de417c:	fab0 f080 	clz	r0, r0
c0de4180:	fab1 f381 	clz	r3, r1
c0de4184:	0940      	lsrs	r0, r0, #5
c0de4186:	095b      	lsrs	r3, r3, #5
c0de4188:	ea53 0600 	orrs.w	r6, r3, r0
c0de418c:	bf1c      	itt	ne
c0de418e:	2100      	movne	r1, #0
c0de4190:	2200      	movne	r2, #0
c0de4192:	6029      	str	r1, [r5, #0]
c0de4194:	80aa      	strh	r2, [r5, #4]
c0de4196:	f005 fbd3 	bl	c0de9940 <check_app_canary>
c0de419a:	b10e      	cbz	r6, c0de41a0 <parser_parse+0x30>
c0de419c:	2402      	movs	r4, #2
c0de419e:	e012      	b.n	c0de41c6 <parser_parse+0x56>
c0de41a0:	7820      	ldrb	r0, [r4, #0]
c0de41a2:	4621      	mov	r1, r4
c0de41a4:	2801      	cmp	r0, #1
c0de41a6:	4628      	mov	r0, r5
c0de41a8:	60ac      	str	r4, [r5, #8]
c0de41aa:	d102      	bne.n	c0de41b2 <parser_parse+0x42>
c0de41ac:	f001 fac4 	bl	c0de5738 <_read_text_tx>
c0de41b0:	e001      	b.n	c0de41b6 <parser_parse+0x46>
c0de41b2:	f001 faa1 	bl	c0de56f8 <_read_json_tx>
c0de41b6:	4604      	mov	r4, r0
c0de41b8:	f005 fbc2 	bl	c0de9940 <check_app_canary>
c0de41bc:	b91c      	cbnz	r4, c0de41c6 <parser_parse+0x56>
c0de41be:	4803      	ldr	r0, [pc, #12]	; (c0de41cc <parser_parse+0x5c>)
c0de41c0:	2400      	movs	r4, #0
c0de41c2:	f809 4000 	strb.w	r4, [r9, r0]
c0de41c6:	4620      	mov	r0, r4
c0de41c8:	bd70      	pop	{r4, r5, r6, pc}
c0de41ca:	bf00      	nop
c0de41cc:	000053ee 	.word	0x000053ee

c0de41d0 <parser_validate>:
c0de41d0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de41d4:	b09a      	sub	sp, #104	; 0x68
c0de41d6:	4604      	mov	r4, r0
c0de41d8:	6880      	ldr	r0, [r0, #8]
c0de41da:	7800      	ldrb	r0, [r0, #0]
c0de41dc:	b398      	cbz	r0, c0de4246 <parser_validate+0x76>
c0de41de:	2600      	movs	r6, #0
c0de41e0:	f10d 0167 	add.w	r1, sp, #103	; 0x67
c0de41e4:	4620      	mov	r0, r4
c0de41e6:	f88d 6067 	strb.w	r6, [sp, #103]	; 0x67
c0de41ea:	f000 f83d 	bl	c0de4268 <parser_getNumItems>
c0de41ee:	4605      	mov	r5, r0
c0de41f0:	f005 fba6 	bl	c0de9940 <check_app_canary>
c0de41f4:	bb8d      	cbnz	r5, c0de425a <parser_validate+0x8a>
c0de41f6:	f89d 0067 	ldrb.w	r0, [sp, #103]	; 0x67
c0de41fa:	f88d 6016 	strb.w	r6, [sp, #22]
c0de41fe:	b300      	cbz	r0, c0de4242 <parser_validate+0x72>
c0de4200:	f10d 0a16 	add.w	sl, sp, #22
c0de4204:	f04f 0b28 	mov.w	fp, #40	; 0x28
c0de4208:	f10d 0717 	add.w	r7, sp, #23
c0de420c:	f10d 063f 	add.w	r6, sp, #63	; 0x3f
c0de4210:	f04f 0800 	mov.w	r8, #0
c0de4214:	2000      	movs	r0, #0
c0de4216:	9002      	str	r0, [sp, #8]
c0de4218:	fa5f f188 	uxtb.w	r1, r8
c0de421c:	4620      	mov	r0, r4
c0de421e:	4632      	mov	r2, r6
c0de4220:	2328      	movs	r3, #40	; 0x28
c0de4222:	e9cd 7b00 	strd	r7, fp, [sp]
c0de4226:	f8cd a00c 	str.w	sl, [sp, #12]
c0de422a:	f000 f835 	bl	c0de4298 <parser_getItem>
c0de422e:	4605      	mov	r5, r0
c0de4230:	f005 fb86 	bl	c0de9940 <check_app_canary>
c0de4234:	b98d      	cbnz	r5, c0de425a <parser_validate+0x8a>
c0de4236:	f89d 0067 	ldrb.w	r0, [sp, #103]	; 0x67
c0de423a:	f108 0801 	add.w	r8, r8, #1
c0de423e:	4580      	cmp	r8, r0
c0de4240:	d3e8      	bcc.n	c0de4214 <parser_validate+0x44>
c0de4242:	2500      	movs	r5, #0
c0de4244:	e009      	b.n	c0de425a <parser_validate+0x8a>
c0de4246:	4807      	ldr	r0, [pc, #28]	; (c0de4264 <parser_validate+0x94>)
c0de4248:	4448      	add	r0, r9
c0de424a:	3008      	adds	r0, #8
c0de424c:	f002 ff5c 	bl	c0de7108 <tx_validate>
c0de4250:	4605      	mov	r5, r0
c0de4252:	f005 fb75 	bl	c0de9940 <check_app_canary>
c0de4256:	2d00      	cmp	r5, #0
c0de4258:	d0c1      	beq.n	c0de41de <parser_validate+0xe>
c0de425a:	4628      	mov	r0, r5
c0de425c:	b01a      	add	sp, #104	; 0x68
c0de425e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4262:	bf00      	nop
c0de4264:	00000338 	.word	0x00000338

c0de4268 <parser_getNumItems>:
c0de4268:	b5b0      	push	{r4, r5, r7, lr}
c0de426a:	4605      	mov	r5, r0
c0de426c:	2000      	movs	r0, #0
c0de426e:	7008      	strb	r0, [r1, #0]
c0de4270:	68a8      	ldr	r0, [r5, #8]
c0de4272:	460c      	mov	r4, r1
c0de4274:	7800      	ldrb	r0, [r0, #0]
c0de4276:	2801      	cmp	r0, #1
c0de4278:	d109      	bne.n	c0de428e <parser_getNumItems+0x26>
c0de427a:	f7fc fe9b 	bl	c0de0fb4 <app_mode_expert>
c0de427e:	68aa      	ldr	r2, [r5, #8]
c0de4280:	6851      	ldr	r1, [r2, #4]
c0de4282:	b908      	cbnz	r0, c0de4288 <parser_getNumItems+0x20>
c0de4284:	7a10      	ldrb	r0, [r2, #8]
c0de4286:	1a09      	subs	r1, r1, r0
c0de4288:	2000      	movs	r0, #0
c0de428a:	7021      	strb	r1, [r4, #0]
c0de428c:	bdb0      	pop	{r4, r5, r7, pc}
c0de428e:	4620      	mov	r0, r4
c0de4290:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de4294:	f002 b8b2 	b.w	c0de63fc <tx_display_numItems>

c0de4298 <parser_getItem>:
c0de4298:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de429c:	f5ad 7d60 	sub.w	sp, sp, #896	; 0x380
c0de42a0:	4606      	mov	r6, r0
c0de42a2:	6880      	ldr	r0, [r0, #8]
c0de42a4:	4693      	mov	fp, r2
c0de42a6:	7800      	ldrb	r0, [r0, #0]
c0de42a8:	9aeb      	ldr	r2, [sp, #940]	; 0x3ac
c0de42aa:	9ce9      	ldr	r4, [sp, #932]	; 0x3a4
c0de42ac:	9de8      	ldr	r5, [sp, #928]	; 0x3a0
c0de42ae:	461f      	mov	r7, r3
c0de42b0:	4688      	mov	r8, r1
c0de42b2:	2100      	movs	r1, #0
c0de42b4:	2801      	cmp	r0, #1
c0de42b6:	7011      	strb	r1, [r2, #0]
c0de42b8:	f040 80ce 	bne.w	c0de4458 <parser_getItem+0x1c0>
c0de42bc:	4658      	mov	r0, fp
c0de42be:	4639      	mov	r1, r7
c0de42c0:	f005 fb59 	bl	c0de9976 <explicit_bzero>
c0de42c4:	4628      	mov	r0, r5
c0de42c6:	4621      	mov	r1, r4
c0de42c8:	f005 fb55 	bl	c0de9976 <explicit_bzero>
c0de42cc:	f20d 21c6 	addw	r1, sp, #710	; 0x2c6
c0de42d0:	4630      	mov	r0, r6
c0de42d2:	f7ff ffc9 	bl	c0de4268 <parser_getNumItems>
c0de42d6:	4682      	mov	sl, r0
c0de42d8:	f005 fb32 	bl	c0de9940 <check_app_canary>
c0de42dc:	f1ba 0f00 	cmp.w	sl, #0
c0de42e0:	f040 813b 	bne.w	c0de455a <parser_getItem+0x2c2>
c0de42e4:	f89d 02c6 	ldrb.w	r0, [sp, #710]	; 0x2c6
c0de42e8:	2800      	cmp	r0, #0
c0de42ea:	f000 8131 	beq.w	c0de4550 <parser_getItem+0x2b8>
c0de42ee:	4540      	cmp	r0, r8
c0de42f0:	f240 8131 	bls.w	c0de4556 <parser_getItem+0x2be>
c0de42f4:	f005 fb24 	bl	c0de9940 <check_app_canary>
c0de42f8:	a8b2      	add	r0, sp, #712	; 0x2c8
c0de42fa:	3004      	adds	r0, #4
c0de42fc:	2112      	movs	r1, #18
c0de42fe:	f005 fb2e 	bl	c0de995e <__aeabi_memclr>
c0de4302:	6830      	ldr	r0, [r6, #0]
c0de4304:	88f1      	ldrh	r1, [r6, #6]
c0de4306:	88b2      	ldrh	r2, [r6, #4]
c0de4308:	4408      	add	r0, r1
c0de430a:	1a51      	subs	r1, r2, r1
c0de430c:	aca8      	add	r4, sp, #672	; 0x2a0
c0de430e:	ab0f      	add	r3, sp, #60	; 0x3c
c0de4310:	2200      	movs	r2, #0
c0de4312:	9400      	str	r4, [sp, #0]
c0de4314:	f7fd ff06 	bl	c0de2124 <cbor_parser_init>
c0de4318:	2800      	cmp	r0, #0
c0de431a:	f000 812a 	beq.w	c0de4572 <parser_getItem+0x2da>
c0de431e:	f7fd fd77 	bl	c0de1e10 <parser_mapCborError>
c0de4322:	4682      	mov	sl, r0
c0de4324:	f005 fb0c 	bl	c0de9940 <check_app_canary>
c0de4328:	f1ba 0f00 	cmp.w	sl, #0
c0de432c:	f040 8115 	bne.w	c0de455a <parser_getItem+0x2c2>
c0de4330:	f7fc fe40 	bl	c0de0fb4 <app_mode_expert>
c0de4334:	2800      	cmp	r0, #0
c0de4336:	f040 838d 	bne.w	c0de4a54 <parser_getItem+0x7bc>
c0de433a:	68b0      	ldr	r0, [r6, #8]
c0de433c:	6840      	ldr	r0, [r0, #4]
c0de433e:	4540      	cmp	r0, r8
c0de4340:	f240 8381 	bls.w	c0de4a46 <parser_getItem+0x7ae>
c0de4344:	9707      	str	r7, [sp, #28]
c0de4346:	f108 0001 	add.w	r0, r8, #1
c0de434a:	2500      	movs	r5, #0
c0de434c:	aa11      	add	r2, sp, #68	; 0x44
c0de434e:	2700      	movs	r7, #0
c0de4350:	2400      	movs	r4, #0
c0de4352:	f50d 7a28 	add.w	sl, sp, #672	; 0x2a0
c0de4356:	9009      	str	r0, [sp, #36]	; 0x24
c0de4358:	f8cd b028 	str.w	fp, [sp, #40]	; 0x28
c0de435c:	4693      	mov	fp, r2
c0de435e:	6830      	ldr	r0, [r6, #0]
c0de4360:	88f1      	ldrh	r1, [r6, #6]
c0de4362:	88b2      	ldrh	r2, [r6, #4]
c0de4364:	4408      	add	r0, r1
c0de4366:	1a51      	subs	r1, r2, r1
c0de4368:	2200      	movs	r2, #0
c0de436a:	ab0f      	add	r3, sp, #60	; 0x3c
c0de436c:	f8cd a000 	str.w	sl, [sp]
c0de4370:	f7fd fed8 	bl	c0de2124 <cbor_parser_init>
c0de4374:	b118      	cbz	r0, c0de437e <parser_getItem+0xe6>
c0de4376:	f7fd fd4b 	bl	c0de1e10 <parser_mapCborError>
c0de437a:	465a      	mov	r2, fp
c0de437c:	e015      	b.n	c0de43aa <parser_getItem+0x112>
c0de437e:	98aa      	ldr	r0, [sp, #680]	; 0x2a8
c0de4380:	465a      	mov	r2, fp
c0de4382:	b190      	cbz	r0, c0de43aa <parser_getItem+0x112>
c0de4384:	f89d 02ae 	ldrb.w	r0, [sp, #686]	; 0x2ae
c0de4388:	28a0      	cmp	r0, #160	; 0xa0
c0de438a:	d10e      	bne.n	c0de43aa <parser_getItem+0x112>
c0de438c:	4650      	mov	r0, sl
c0de438e:	4611      	mov	r1, r2
c0de4390:	4692      	mov	sl, r2
c0de4392:	f7fe f88f 	bl	c0de24b4 <cbor_value_enter_container>
c0de4396:	b918      	cbnz	r0, c0de43a0 <parser_getItem+0x108>
c0de4398:	4650      	mov	r0, sl
c0de439a:	f7fe f818 	bl	c0de23ce <cbor_value_advance>
c0de439e:	b1e0      	cbz	r0, c0de43da <parser_getItem+0x142>
c0de43a0:	f7fd fd36 	bl	c0de1e10 <parser_mapCborError>
c0de43a4:	4652      	mov	r2, sl
c0de43a6:	f50d 7a28 	add.w	sl, sp, #672	; 0x2a0
c0de43aa:	f89d 02dd 	ldrb.w	r0, [sp, #733]	; 0x2dd
c0de43ae:	b110      	cbz	r0, c0de43b6 <parser_getItem+0x11e>
c0de43b0:	f8dd b028 	ldr.w	fp, [sp, #40]	; 0x28
c0de43b4:	e00a      	b.n	c0de43cc <parser_getItem+0x134>
c0de43b6:	3401      	adds	r4, #1
c0de43b8:	9909      	ldr	r1, [sp, #36]	; 0x24
c0de43ba:	b2e0      	uxtb	r0, r4
c0de43bc:	f8dd b028 	ldr.w	fp, [sp, #40]	; 0x28
c0de43c0:	4281      	cmp	r1, r0
c0de43c2:	f000 8343 	beq.w	c0de4a4c <parser_getItem+0x7b4>
c0de43c6:	4540      	cmp	r0, r8
c0de43c8:	f200 833d 	bhi.w	c0de4a46 <parser_getItem+0x7ae>
c0de43cc:	68b0      	ldr	r0, [r6, #8]
c0de43ce:	3701      	adds	r7, #1
c0de43d0:	6840      	ldr	r0, [r0, #4]
c0de43d2:	3501      	adds	r5, #1
c0de43d4:	4287      	cmp	r7, r0
c0de43d6:	d3c1      	bcc.n	c0de435c <parser_getItem+0xc4>
c0de43d8:	e338      	b.n	c0de4a4c <parser_getItem+0x7b4>
c0de43da:	4650      	mov	r0, sl
c0de43dc:	a9bf      	add	r1, sp, #764	; 0x2fc
c0de43de:	f7fe f869 	bl	c0de24b4 <cbor_value_enter_container>
c0de43e2:	b118      	cbz	r0, c0de43ec <parser_getItem+0x154>
c0de43e4:	f7fd fd14 	bl	c0de1e10 <parser_mapCborError>
c0de43e8:	465a      	mov	r2, fp
c0de43ea:	e7dc      	b.n	c0de43a6 <parser_getItem+0x10e>
c0de43ec:	0638      	lsls	r0, r7, #24
c0de43ee:	d008      	beq.n	c0de4402 <parser_getItem+0x16a>
c0de43f0:	fa5f fa85 	uxtb.w	sl, r5
c0de43f4:	a8bf      	add	r0, sp, #764	; 0x2fc
c0de43f6:	f7fd ffea 	bl	c0de23ce <cbor_value_advance>
c0de43fa:	b990      	cbnz	r0, c0de4422 <parser_getItem+0x18a>
c0de43fc:	f1ba 0a01 	subs.w	sl, sl, #1
c0de4400:	d1f8      	bne.n	c0de43f4 <parser_getItem+0x15c>
c0de4402:	f89d 030b 	ldrb.w	r0, [sp, #779]	; 0x30b
c0de4406:	06c1      	lsls	r1, r0, #27
c0de4408:	d407      	bmi.n	c0de441a <parser_getItem+0x182>
c0de440a:	0780      	lsls	r0, r0, #30
c0de440c:	f50d 7a28 	add.w	sl, sp, #672	; 0x2a0
c0de4410:	d40c      	bmi.n	c0de442c <parser_getItem+0x194>
c0de4412:	f8bd 0308 	ldrh.w	r0, [sp, #776]	; 0x308
c0de4416:	90b2      	str	r0, [sp, #712]	; 0x2c8
c0de4418:	e00d      	b.n	c0de4436 <parser_getItem+0x19e>
c0de441a:	2002      	movs	r0, #2
c0de441c:	f50d 7a28 	add.w	sl, sp, #672	; 0x2a0
c0de4420:	e7a9      	b.n	c0de4376 <parser_getItem+0xde>
c0de4422:	f7fd fcf5 	bl	c0de1e10 <parser_mapCborError>
c0de4426:	f50d 7a28 	add.w	sl, sp, #672	; 0x2a0
c0de442a:	e7a6      	b.n	c0de437a <parser_getItem+0xe2>
c0de442c:	a8bf      	add	r0, sp, #764	; 0x2fc
c0de442e:	f7fd fe29 	bl	c0de2084 <_cbor_value_decode_int64_internal>
c0de4432:	90b2      	str	r0, [sp, #712]	; 0x2c8
c0de4434:	b969      	cbnz	r1, c0de4452 <parser_getItem+0x1ba>
c0de4436:	a8bf      	add	r0, sp, #764	; 0x2fc
c0de4438:	a90b      	add	r1, sp, #44	; 0x2c
c0de443a:	f7fe f83b 	bl	c0de24b4 <cbor_value_enter_container>
c0de443e:	2800      	cmp	r0, #0
c0de4440:	f47f af99 	bne.w	c0de4376 <parser_getItem+0xde>
c0de4444:	a80b      	add	r0, sp, #44	; 0x2c
c0de4446:	a9b2      	add	r1, sp, #712	; 0x2c8
c0de4448:	f7fd fcf2 	bl	c0de1e30 <cbor_get_containerInfo>
c0de444c:	f005 fa78 	bl	c0de9940 <check_app_canary>
c0de4450:	e793      	b.n	c0de437a <parser_getItem+0xe2>
c0de4452:	f44f 6080 	mov.w	r0, #1024	; 0x400
c0de4456:	e78e      	b.n	c0de4376 <parser_getItem+0xde>
c0de4458:	a8a8      	add	r0, sp, #672	; 0x2a0
c0de445a:	2123      	movs	r1, #35	; 0x23
c0de445c:	f005 fa7f 	bl	c0de995e <__aeabi_memclr>
c0de4460:	4658      	mov	r0, fp
c0de4462:	4639      	mov	r1, r7
c0de4464:	f005 fa87 	bl	c0de9976 <explicit_bzero>
c0de4468:	4628      	mov	r0, r5
c0de446a:	4621      	mov	r1, r4
c0de446c:	f005 fa83 	bl	c0de9976 <explicit_bzero>
c0de4470:	f20d 219f 	addw	r1, sp, #671	; 0x29f
c0de4474:	4630      	mov	r0, r6
c0de4476:	f7ff fef7 	bl	c0de4268 <parser_getNumItems>
c0de447a:	4682      	mov	sl, r0
c0de447c:	f005 fa60 	bl	c0de9940 <check_app_canary>
c0de4480:	f1ba 0f00 	cmp.w	sl, #0
c0de4484:	d169      	bne.n	c0de455a <parser_getItem+0x2c2>
c0de4486:	f005 fa5b 	bl	c0de9940 <check_app_canary>
c0de448a:	f89d 029f 	ldrb.w	r0, [sp, #671]	; 0x29f
c0de448e:	2800      	cmp	r0, #0
c0de4490:	d05e      	beq.n	c0de4550 <parser_getItem+0x2b8>
c0de4492:	4540      	cmp	r0, r8
c0de4494:	d95f      	bls.n	c0de4556 <parser_getItem+0x2be>
c0de4496:	2000      	movs	r0, #0
c0de4498:	f8ad 029c 	strh.w	r0, [sp, #668]	; 0x29c
c0de449c:	a9a8      	add	r1, sp, #672	; 0x2a0
c0de449e:	aba7      	add	r3, sp, #668	; 0x29c
c0de44a0:	4640      	mov	r0, r8
c0de44a2:	2223      	movs	r2, #35	; 0x23
c0de44a4:	f002 f822 	bl	c0de64ec <tx_display_query>
c0de44a8:	4682      	mov	sl, r0
c0de44aa:	f005 fa49 	bl	c0de9940 <check_app_canary>
c0de44ae:	f1ba 0f00 	cmp.w	sl, #0
c0de44b2:	d152      	bne.n	c0de455a <parser_getItem+0x2c2>
c0de44b4:	f005 fa44 	bl	c0de9940 <check_app_canary>
c0de44b8:	4add      	ldr	r2, [pc, #884]	; (c0de4830 <parser_getItem+0x598>)
c0de44ba:	aca8      	add	r4, sp, #672	; 0x2a0
c0de44bc:	447a      	add	r2, pc
c0de44be:	4658      	mov	r0, fp
c0de44c0:	4639      	mov	r1, r7
c0de44c2:	4623      	mov	r3, r4
c0de44c4:	f7ff fc9e 	bl	c0de3e04 <snprintf>
c0de44c8:	49da      	ldr	r1, [pc, #872]	; (c0de4834 <parser_getItem+0x59c>)
c0de44ca:	4620      	mov	r0, r4
c0de44cc:	4479      	add	r1, pc
c0de44ce:	220b      	movs	r2, #11
c0de44d0:	f005 fa57 	bl	c0de9982 <memcmp>
c0de44d4:	2800      	cmp	r0, #0
c0de44d6:	f000 8083 	beq.w	c0de45e0 <parser_getItem+0x348>
c0de44da:	49d7      	ldr	r1, [pc, #860]	; (c0de4838 <parser_getItem+0x5a0>)
c0de44dc:	a8a8      	add	r0, sp, #672	; 0x2a0
c0de44de:	4479      	add	r1, pc
c0de44e0:	2212      	movs	r2, #18
c0de44e2:	f005 fa4e 	bl	c0de9982 <memcmp>
c0de44e6:	2800      	cmp	r0, #0
c0de44e8:	d07a      	beq.n	c0de45e0 <parser_getItem+0x348>
c0de44ea:	49d4      	ldr	r1, [pc, #848]	; (c0de483c <parser_getItem+0x5a4>)
c0de44ec:	a8a8      	add	r0, sp, #672	; 0x2a0
c0de44ee:	4479      	add	r1, pc
c0de44f0:	2213      	movs	r2, #19
c0de44f2:	f005 fa46 	bl	c0de9982 <memcmp>
c0de44f6:	2800      	cmp	r0, #0
c0de44f8:	d072      	beq.n	c0de45e0 <parser_getItem+0x348>
c0de44fa:	49d1      	ldr	r1, [pc, #836]	; (c0de4840 <parser_getItem+0x5a8>)
c0de44fc:	a8a8      	add	r0, sp, #672	; 0x2a0
c0de44fe:	4479      	add	r1, pc
c0de4500:	2218      	movs	r2, #24
c0de4502:	f005 fa3e 	bl	c0de9982 <memcmp>
c0de4506:	2800      	cmp	r0, #0
c0de4508:	d06a      	beq.n	c0de45e0 <parser_getItem+0x348>
c0de450a:	49ce      	ldr	r1, [pc, #824]	; (c0de4844 <parser_getItem+0x5ac>)
c0de450c:	a8a8      	add	r0, sp, #672	; 0x2a0
c0de450e:	4479      	add	r1, pc
c0de4510:	2219      	movs	r2, #25
c0de4512:	f005 fa36 	bl	c0de9982 <memcmp>
c0de4516:	2800      	cmp	r0, #0
c0de4518:	d062      	beq.n	c0de45e0 <parser_getItem+0x348>
c0de451a:	49cb      	ldr	r1, [pc, #812]	; (c0de4848 <parser_getItem+0x5b0>)
c0de451c:	a8a8      	add	r0, sp, #672	; 0x2a0
c0de451e:	4479      	add	r1, pc
c0de4520:	2212      	movs	r2, #18
c0de4522:	f005 fa2e 	bl	c0de9982 <memcmp>
c0de4526:	2800      	cmp	r0, #0
c0de4528:	d05a      	beq.n	c0de45e0 <parser_getItem+0x348>
c0de452a:	49c8      	ldr	r1, [pc, #800]	; (c0de484c <parser_getItem+0x5b4>)
c0de452c:	a8a8      	add	r0, sp, #672	; 0x2a0
c0de452e:	4479      	add	r1, pc
c0de4530:	220b      	movs	r2, #11
c0de4532:	f005 fa26 	bl	c0de9982 <memcmp>
c0de4536:	2800      	cmp	r0, #0
c0de4538:	d052      	beq.n	c0de45e0 <parser_getItem+0x348>
c0de453a:	aee9      	add	r6, sp, #932	; 0x3a4
c0de453c:	f8bd 029c 	ldrh.w	r0, [sp, #668]	; 0x29c
c0de4540:	ce4c      	ldmia	r6, {r2, r3, r6}
c0de4542:	4629      	mov	r1, r5
c0de4544:	9600      	str	r6, [sp, #0]
c0de4546:	f002 fab9 	bl	c0de6abc <tx_getToken>
c0de454a:	4682      	mov	sl, r0
c0de454c:	f000 bcb7 	b.w	c0de4ebe <parser_getItem+0xc26>
c0de4550:	f04f 0a0a 	mov.w	sl, #10
c0de4554:	e001      	b.n	c0de455a <parser_getItem+0x2c2>
c0de4556:	f04f 0a03 	mov.w	sl, #3
c0de455a:	f005 f9f1 	bl	c0de9940 <check_app_canary>
c0de455e:	f1ba 0f00 	cmp.w	sl, #0
c0de4562:	bf08      	it	eq
c0de4564:	f04f 0a00 	moveq.w	sl, #0
c0de4568:	4650      	mov	r0, sl
c0de456a:	f50d 7d60 	add.w	sp, sp, #896	; 0x380
c0de456e:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de4572:	98aa      	ldr	r0, [sp, #680]	; 0x2a8
c0de4574:	2800      	cmp	r0, #0
c0de4576:	f000 8260 	beq.w	c0de4a3a <parser_getItem+0x7a2>
c0de457a:	f89d 02ae 	ldrb.w	r0, [sp, #686]	; 0x2ae
c0de457e:	28a0      	cmp	r0, #160	; 0xa0
c0de4580:	f040 825e 	bne.w	c0de4a40 <parser_getItem+0x7a8>
c0de4584:	a8a8      	add	r0, sp, #672	; 0x2a0
c0de4586:	a911      	add	r1, sp, #68	; 0x44
c0de4588:	f7fd ff94 	bl	c0de24b4 <cbor_value_enter_container>
c0de458c:	2800      	cmp	r0, #0
c0de458e:	f47f aec6 	bne.w	c0de431e <parser_getItem+0x86>
c0de4592:	a811      	add	r0, sp, #68	; 0x44
c0de4594:	f7fd ff1b 	bl	c0de23ce <cbor_value_advance>
c0de4598:	2800      	cmp	r0, #0
c0de459a:	f47f aec0 	bne.w	c0de431e <parser_getItem+0x86>
c0de459e:	a811      	add	r0, sp, #68	; 0x44
c0de45a0:	a9bf      	add	r1, sp, #764	; 0x2fc
c0de45a2:	f7fd ff87 	bl	c0de24b4 <cbor_value_enter_container>
c0de45a6:	2800      	cmp	r0, #0
c0de45a8:	f47f aeb9 	bne.w	c0de431e <parser_getItem+0x86>
c0de45ac:	f1b8 0f00 	cmp.w	r8, #0
c0de45b0:	d009      	beq.n	c0de45c6 <parser_getItem+0x32e>
c0de45b2:	acbf      	add	r4, sp, #764	; 0x2fc
c0de45b4:	4645      	mov	r5, r8
c0de45b6:	4620      	mov	r0, r4
c0de45b8:	f7fd ff09 	bl	c0de23ce <cbor_value_advance>
c0de45bc:	2800      	cmp	r0, #0
c0de45be:	f040 8540 	bne.w	c0de5042 <parser_getItem+0xdaa>
c0de45c2:	3d01      	subs	r5, #1
c0de45c4:	d1f7      	bne.n	c0de45b6 <parser_getItem+0x31e>
c0de45c6:	f89d 030b 	ldrb.w	r0, [sp, #779]	; 0x30b
c0de45ca:	06c1      	lsls	r1, r0, #27
c0de45cc:	f100 84a6 	bmi.w	c0de4f1c <parser_getItem+0xc84>
c0de45d0:	0780      	lsls	r0, r0, #30
c0de45d2:	f100 84a5 	bmi.w	c0de4f20 <parser_getItem+0xc88>
c0de45d6:	f8bd 0308 	ldrh.w	r0, [sp, #776]	; 0x308
c0de45da:	90b2      	str	r0, [sp, #712]	; 0x2c8
c0de45dc:	f000 bca7 	b.w	c0de4f2e <parser_getItem+0xc96>
c0de45e0:	f8df 8ea4 	ldr.w	r8, [pc, #3748]	; c0de5488 <parser_getItem+0x11f0>
c0de45e4:	f8bd 629c 	ldrh.w	r6, [sp, #668]	; 0x29c
c0de45e8:	9aeb      	ldr	r2, [sp, #940]	; 0x3ac
c0de45ea:	2000      	movs	r0, #0
c0de45ec:	eb09 0108 	add.w	r1, r9, r8
c0de45f0:	7010      	strb	r0, [r2, #0]
c0de45f2:	eb01 04c6 	add.w	r4, r1, r6, lsl #3
c0de45f6:	f814 1f10 	ldrb.w	r1, [r4, #16]!
c0de45fa:	2902      	cmp	r1, #2
c0de45fc:	f040 81fe 	bne.w	c0de49fc <parser_getItem+0x764>
c0de4600:	eb09 0008 	add.w	r0, r9, r8
c0de4604:	3008      	adds	r0, #8
c0de4606:	aa0f      	add	r2, sp, #60	; 0x3c
c0de4608:	4631      	mov	r1, r6
c0de460a:	f7fe fd9f 	bl	c0de314c <array_get_element_count>
c0de460e:	4682      	mov	sl, r0
c0de4610:	f005 f996 	bl	c0de9940 <check_app_canary>
c0de4614:	f1ba 0f00 	cmp.w	sl, #0
c0de4618:	f040 8451 	bne.w	c0de4ebe <parser_getItem+0xc26>
c0de461c:	f8bd 003c 	ldrh.w	r0, [sp, #60]	; 0x3c
c0de4620:	2800      	cmp	r0, #0
c0de4622:	f000 83aa 	beq.w	c0de4d7a <parser_getItem+0xae2>
c0de4626:	a811      	add	r0, sp, #68	; 0x44
c0de4628:	9ce9      	ldr	r4, [sp, #932]	; 0x3a4
c0de462a:	3002      	adds	r0, #2
c0de462c:	9002      	str	r0, [sp, #8]
c0de462e:	1e60      	subs	r0, r4, #1
c0de4630:	e9cd 6706 	strd	r6, r7, [sp, #24]
c0de4634:	9004      	str	r0, [sp, #16]
c0de4636:	b280      	uxth	r0, r0
c0de4638:	9eea      	ldr	r6, [sp, #936]	; 0x3a8
c0de463a:	9003      	str	r0, [sp, #12]
c0de463c:	2700      	movs	r7, #0
c0de463e:	2500      	movs	r5, #0
c0de4640:	2200      	movs	r2, #0
c0de4642:	2000      	movs	r0, #0
c0de4644:	9005      	str	r0, [sp, #20]
c0de4646:	f8df 8e40 	ldr.w	r8, [pc, #3648]	; c0de5488 <parser_getItem+0x11f0>
c0de464a:	9906      	ldr	r1, [sp, #24]
c0de464c:	eb09 0008 	add.w	r0, r9, r8
c0de4650:	9209      	str	r2, [sp, #36]	; 0x24
c0de4652:	3008      	adds	r0, #8
c0de4654:	b2aa      	uxth	r2, r5
c0de4656:	f20d 23c6 	addw	r3, sp, #710	; 0x2c6
c0de465a:	f7fe fd9d 	bl	c0de3198 <array_get_nth_element>
c0de465e:	4682      	mov	sl, r0
c0de4660:	f005 f96e 	bl	c0de9940 <check_app_canary>
c0de4664:	f1ba 0f00 	cmp.w	sl, #0
c0de4668:	f040 83f9 	bne.w	c0de4e5e <parser_getItem+0xbc6>
c0de466c:	9608      	str	r6, [sp, #32]
c0de466e:	f8bd 62c6 	ldrh.w	r6, [sp, #710]	; 0x2c6
c0de4672:	eb09 0008 	add.w	r0, r9, r8
c0de4676:	3008      	adds	r0, #8
c0de4678:	4631      	mov	r1, r6
c0de467a:	aa0b      	add	r2, sp, #44	; 0x2c
c0de467c:	f7fe fd66 	bl	c0de314c <array_get_element_count>
c0de4680:	4682      	mov	sl, r0
c0de4682:	f005 f95d 	bl	c0de9940 <check_app_canary>
c0de4686:	f1ba 0f00 	cmp.w	sl, #0
c0de468a:	d01a      	beq.n	c0de46c2 <parser_getItem+0x42a>
c0de468c:	2400      	movs	r4, #0
c0de468e:	9e08      	ldr	r6, [sp, #32]
c0de4690:	f005 f956 	bl	c0de9940 <check_app_canary>
c0de4694:	f1ba 0f00 	cmp.w	sl, #0
c0de4698:	f040 83e1 	bne.w	c0de4e5e <parser_getItem+0xbc6>
c0de469c:	9809      	ldr	r0, [sp, #36]	; 0x24
c0de469e:	b930      	cbnz	r0, c0de46ae <parser_getItem+0x416>
c0de46a0:	b2e0      	uxtb	r0, r4
c0de46a2:	b2f1      	uxtb	r1, r6
c0de46a4:	4281      	cmp	r1, r0
c0de46a6:	d21d      	bcs.n	c0de46e4 <parser_getItem+0x44c>
c0de46a8:	f8bd 02c6 	ldrh.w	r0, [sp, #710]	; 0x2c6
c0de46ac:	9005      	str	r0, [sp, #20]
c0de46ae:	2201      	movs	r2, #1
c0de46b0:	3501      	adds	r5, #1
c0de46b2:	f8bd 003c 	ldrh.w	r0, [sp, #60]	; 0x3c
c0de46b6:	b2a9      	uxth	r1, r5
c0de46b8:	4427      	add	r7, r4
c0de46ba:	9ce9      	ldr	r4, [sp, #932]	; 0x3a4
c0de46bc:	4281      	cmp	r1, r0
c0de46be:	d3c2      	bcc.n	c0de4646 <parser_getItem+0x3ae>
c0de46c0:	e3c5      	b.n	c0de4e4e <parser_getItem+0xbb6>
c0de46c2:	f8bd 002c 	ldrh.w	r0, [sp, #44]	; 0x2c
c0de46c6:	2804      	cmp	r0, #4
c0de46c8:	d00f      	beq.n	c0de46ea <parser_getItem+0x452>
c0de46ca:	9e08      	ldr	r6, [sp, #32]
c0de46cc:	2800      	cmp	r0, #0
c0de46ce:	d169      	bne.n	c0de47a4 <parser_getItem+0x50c>
c0de46d0:	4a5f      	ldr	r2, [pc, #380]	; (c0de4850 <parser_getItem+0x5b8>)
c0de46d2:	98e8      	ldr	r0, [sp, #928]	; 0x3a0
c0de46d4:	447a      	add	r2, pc
c0de46d6:	4621      	mov	r1, r4
c0de46d8:	f7ff fb94 	bl	c0de3e04 <snprintf>
c0de46dc:	f04f 0a00 	mov.w	sl, #0
c0de46e0:	2401      	movs	r4, #1
c0de46e2:	e7d5      	b.n	c0de4690 <parser_getItem+0x3f8>
c0de46e4:	1b36      	subs	r6, r6, r4
c0de46e6:	2200      	movs	r2, #0
c0de46e8:	e7e2      	b.n	c0de46b0 <parser_getItem+0x418>
c0de46ea:	f8df 2d9c 	ldr.w	r2, [pc, #3484]	; c0de5488 <parser_getItem+0x11f0>
c0de46ee:	eb09 0002 	add.w	r0, r9, r2
c0de46f2:	eb00 00c6 	add.w	r0, r0, r6, lsl #3
c0de46f6:	7c00      	ldrb	r0, [r0, #16]
c0de46f8:	2801      	cmp	r0, #1
c0de46fa:	d150      	bne.n	c0de479e <parser_getItem+0x506>
c0de46fc:	1c70      	adds	r0, r6, #1
c0de46fe:	b280      	uxth	r0, r0
c0de4700:	eb09 0102 	add.w	r1, r9, r2
c0de4704:	eb01 01c0 	add.w	r1, r1, r0, lsl #3
c0de4708:	7c09      	ldrb	r1, [r1, #16]
c0de470a:	2903      	cmp	r1, #3
c0de470c:	d147      	bne.n	c0de479e <parser_getItem+0x506>
c0de470e:	eb09 0102 	add.w	r1, r9, r2
c0de4712:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de4716:	f9b0 1012 	ldrsh.w	r1, [r0, #18]
c0de471a:	f9b0 0014 	ldrsh.w	r0, [r0, #20]
c0de471e:	1a40      	subs	r0, r0, r1
c0de4720:	2806      	cmp	r0, #6
c0de4722:	d13c      	bne.n	c0de479e <parser_getItem+0x506>
c0de4724:	eb09 0002 	add.w	r0, r9, r2
c0de4728:	6840      	ldr	r0, [r0, #4]
c0de472a:	5c42      	ldrb	r2, [r0, r1]
c0de472c:	2a61      	cmp	r2, #97	; 0x61
c0de472e:	d136      	bne.n	c0de479e <parser_getItem+0x506>
c0de4730:	4401      	add	r1, r0
c0de4732:	1c4a      	adds	r2, r1, #1
c0de4734:	2100      	movs	r1, #0
c0de4736:	2905      	cmp	r1, #5
c0de4738:	d009      	beq.n	c0de474e <parser_getItem+0x4b6>
c0de473a:	4b46      	ldr	r3, [pc, #280]	; (c0de4854 <parser_getItem+0x5bc>)
c0de473c:	5c54      	ldrb	r4, [r2, r1]
c0de473e:	447b      	add	r3, pc
c0de4740:	440b      	add	r3, r1
c0de4742:	785b      	ldrb	r3, [r3, #1]
c0de4744:	3101      	adds	r1, #1
c0de4746:	42a3      	cmp	r3, r4
c0de4748:	d0f5      	beq.n	c0de4736 <parser_getItem+0x49e>
c0de474a:	2906      	cmp	r1, #6
c0de474c:	d327      	bcc.n	c0de479e <parser_getItem+0x506>
c0de474e:	f8df 2d38 	ldr.w	r2, [pc, #3384]	; c0de5488 <parser_getItem+0x11f0>
c0de4752:	1cf1      	adds	r1, r6, #3
c0de4754:	b289      	uxth	r1, r1
c0de4756:	444a      	add	r2, r9
c0de4758:	eb02 02c1 	add.w	r2, r2, r1, lsl #3
c0de475c:	7c12      	ldrb	r2, [r2, #16]
c0de475e:	2a03      	cmp	r2, #3
c0de4760:	d11d      	bne.n	c0de479e <parser_getItem+0x506>
c0de4762:	f8df 2d24 	ldr.w	r2, [pc, #3364]	; c0de5488 <parser_getItem+0x11f0>
c0de4766:	444a      	add	r2, r9
c0de4768:	eb02 02c1 	add.w	r2, r2, r1, lsl #3
c0de476c:	f9b2 1012 	ldrsh.w	r1, [r2, #18]
c0de4770:	f9b2 2014 	ldrsh.w	r2, [r2, #20]
c0de4774:	1a52      	subs	r2, r2, r1
c0de4776:	2a05      	cmp	r2, #5
c0de4778:	d111      	bne.n	c0de479e <parser_getItem+0x506>
c0de477a:	5c42      	ldrb	r2, [r0, r1]
c0de477c:	2a64      	cmp	r2, #100	; 0x64
c0de477e:	d10e      	bne.n	c0de479e <parser_getItem+0x506>
c0de4780:	4408      	add	r0, r1
c0de4782:	1c41      	adds	r1, r0, #1
c0de4784:	2000      	movs	r0, #0
c0de4786:	2804      	cmp	r0, #4
c0de4788:	d010      	beq.n	c0de47ac <parser_getItem+0x514>
c0de478a:	4a33      	ldr	r2, [pc, #204]	; (c0de4858 <parser_getItem+0x5c0>)
c0de478c:	5c0b      	ldrb	r3, [r1, r0]
c0de478e:	447a      	add	r2, pc
c0de4790:	4402      	add	r2, r0
c0de4792:	7852      	ldrb	r2, [r2, #1]
c0de4794:	3001      	adds	r0, #1
c0de4796:	429a      	cmp	r2, r3
c0de4798:	d0f5      	beq.n	c0de4786 <parser_getItem+0x4ee>
c0de479a:	2805      	cmp	r0, #5
c0de479c:	d206      	bcs.n	c0de47ac <parser_getItem+0x514>
c0de479e:	f04f 0a0d 	mov.w	sl, #13
c0de47a2:	e773      	b.n	c0de468c <parser_getItem+0x3f4>
c0de47a4:	f04f 0a0d 	mov.w	sl, #13
c0de47a8:	2400      	movs	r4, #0
c0de47aa:	e771      	b.n	c0de4690 <parser_getItem+0x3f8>
c0de47ac:	a8bf      	add	r0, sp, #764	; 0x2fc
c0de47ae:	2181      	movs	r1, #129	; 0x81
c0de47b0:	f005 f8e1 	bl	c0de9976 <explicit_bzero>
c0de47b4:	a8b2      	add	r0, sp, #712	; 0x2c8
c0de47b6:	2132      	movs	r1, #50	; 0x32
c0de47b8:	f005 f8dd 	bl	c0de9976 <explicit_bzero>
c0de47bc:	e9dd 01e8 	ldrd	r0, r1, [sp, #928]	; 0x3a0
c0de47c0:	f005 f8d9 	bl	c0de9976 <explicit_bzero>
c0de47c4:	a811      	add	r0, sp, #68	; 0x44
c0de47c6:	21a0      	movs	r1, #160	; 0xa0
c0de47c8:	f005 f8d5 	bl	c0de9976 <explicit_bzero>
c0de47cc:	f8df 0cb8 	ldr.w	r0, [pc, #3256]	; c0de5488 <parser_getItem+0x11f0>
c0de47d0:	1cb3      	adds	r3, r6, #2
c0de47d2:	eb09 0100 	add.w	r1, r9, r0
c0de47d6:	f851 0f04 	ldr.w	r0, [r1, #4]!
c0de47da:	eb01 01c3 	add.w	r1, r1, r3, lsl #3
c0de47de:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
c0de47e2:	2900      	cmp	r1, #0
c0de47e4:	d420      	bmi.n	c0de4828 <parser_getItem+0x590>
c0de47e6:	f8df 2ca0 	ldr.w	r2, [pc, #3232]	; c0de5488 <parser_getItem+0x11f0>
c0de47ea:	f04f 0a05 	mov.w	sl, #5
c0de47ee:	444a      	add	r2, r9
c0de47f0:	3210      	adds	r2, #16
c0de47f2:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
c0de47f6:	f9b3 3004 	ldrsh.w	r3, [r3, #4]
c0de47fa:	2400      	movs	r4, #0
c0de47fc:	eba3 0801 	sub.w	r8, r3, r1
c0de4800:	f1a8 0301 	sub.w	r3, r8, #1
c0de4804:	2b30      	cmp	r3, #48	; 0x30
c0de4806:	f63f af42 	bhi.w	c0de468e <parser_getItem+0x3f6>
c0de480a:	eb02 03c6 	add.w	r3, r2, r6, lsl #3
c0de480e:	f9b3 2022 	ldrsh.w	r2, [r3, #34]	; 0x22
c0de4812:	f9b3 3024 	ldrsh.w	r3, [r3, #36]	; 0x24
c0de4816:	1a9e      	subs	r6, r3, r2
c0de4818:	1e73      	subs	r3, r6, #1
c0de481a:	2b7f      	cmp	r3, #127	; 0x7f
c0de481c:	f63f af37 	bhi.w	c0de468e <parser_getItem+0x3f6>
c0de4820:	eb06 0308 	add.w	r3, r6, r8
c0de4824:	2b9e      	cmp	r3, #158	; 0x9e
c0de4826:	d919      	bls.n	c0de485c <parser_getItem+0x5c4>
c0de4828:	f04f 0a08 	mov.w	sl, #8
c0de482c:	e72e      	b.n	c0de468c <parser_getItem+0x3f4>
c0de482e:	bf00      	nop
c0de4830:	00005786 	.word	0x00005786
c0de4834:	00005aab 	.word	0x00005aab
c0de4838:	000055f3 	.word	0x000055f3
c0de483c:	00005bd8 	.word	0x00005bd8
c0de4840:	0000597a 	.word	0x0000597a
c0de4844:	00005a06 	.word	0x00005a06
c0de4848:	00005646 	.word	0x00005646
c0de484c:	00005871 	.word	0x00005871
c0de4850:	00005725 	.word	0x00005725
c0de4854:	000055b8 	.word	0x000055b8
c0de4858:	00005909 	.word	0x00005909
c0de485c:	eb00 0a01 	add.w	sl, r0, r1
c0de4860:	1881      	adds	r1, r0, r2
c0de4862:	a8bf      	add	r0, sp, #764	; 0x2fc
c0de4864:	4632      	mov	r2, r6
c0de4866:	9101      	str	r1, [sp, #4]
c0de4868:	f005 f87e 	bl	c0de9968 <__aeabi_memmove>
c0de486c:	acb2      	add	r4, sp, #712	; 0x2c8
c0de486e:	4620      	mov	r0, r4
c0de4870:	4651      	mov	r1, sl
c0de4872:	4642      	mov	r2, r8
c0de4874:	f005 f878 	bl	c0de9968 <__aeabi_memmove>
c0de4878:	4ada      	ldr	r2, [pc, #872]	; (c0de4be4 <parser_getItem+0x94c>)
c0de487a:	a811      	add	r0, sp, #68	; 0x44
c0de487c:	447a      	add	r2, pc
c0de487e:	21a0      	movs	r1, #160	; 0xa0
c0de4880:	4623      	mov	r3, r4
c0de4882:	f7ff fabf 	bl	c0de3e04 <snprintf>
c0de4886:	b2f4      	uxtb	r4, r6
c0de4888:	f001 fda2 	bl	c0de63d0 <tx_is_expert_mode>
c0de488c:	2c05      	cmp	r4, #5
c0de488e:	bf08      	it	eq
c0de4890:	2800      	cmpeq	r0, #0
c0de4892:	d034      	beq.n	c0de48fe <parser_getItem+0x666>
c0de4894:	4ad4      	ldr	r2, [pc, #848]	; (c0de4be8 <parser_getItem+0x950>)
c0de4896:	ac11      	add	r4, sp, #68	; 0x44
c0de4898:	447a      	add	r2, pc
c0de489a:	4620      	mov	r0, r4
c0de489c:	21a0      	movs	r1, #160	; 0xa0
c0de489e:	abbf      	add	r3, sp, #764	; 0x2fc
c0de48a0:	f004 fff8 	bl	c0de9894 <z_str3join>
c0de48a4:	4620      	mov	r0, r4
c0de48a6:	f005 f8c3 	bl	c0de9a30 <strlen>
c0de48aa:	4606      	mov	r6, r0
c0de48ac:	e9dd 01e8 	ldrd	r0, r1, [sp, #928]	; 0x3a0
c0de48b0:	f005 f861 	bl	c0de9976 <explicit_bzero>
c0de48b4:	9804      	ldr	r0, [sp, #16]
c0de48b6:	2400      	movs	r4, #0
c0de48b8:	0400      	lsls	r0, r0, #16
c0de48ba:	d03d      	beq.n	c0de4938 <parser_getItem+0x6a0>
c0de48bc:	0430      	lsls	r0, r6, #16
c0de48be:	f04f 0a00 	mov.w	sl, #0
c0de48c2:	f43f aee4 	beq.w	c0de468e <parser_getItem+0x3f6>
c0de48c6:	9a04      	ldr	r2, [sp, #16]
c0de48c8:	b2b0      	uxth	r0, r6
c0de48ca:	b291      	uxth	r1, r2
c0de48cc:	fbb0 f1f1 	udiv	r1, r0, r1
c0de48d0:	fb01 6012 	mls	r0, r1, r2, r6
c0de48d4:	b282      	uxth	r2, r0
c0de48d6:	4613      	mov	r3, r2
c0de48d8:	2a00      	cmp	r2, #0
c0de48da:	bf18      	it	ne
c0de48dc:	2301      	movne	r3, #1
c0de48de:	185c      	adds	r4, r3, r1
c0de48e0:	0621      	lsls	r1, r4, #24
c0de48e2:	d022      	beq.n	c0de492a <parser_getItem+0x692>
c0de48e4:	0400      	lsls	r0, r0, #16
c0de48e6:	d022      	beq.n	c0de492e <parser_getItem+0x696>
c0de48e8:	b2e0      	uxtb	r0, r4
c0de48ea:	2801      	cmp	r0, #1
c0de48ec:	d11f      	bne.n	c0de492e <parser_getItem+0x696>
c0de48ee:	98e8      	ldr	r0, [sp, #928]	; 0x3a0
c0de48f0:	a911      	add	r1, sp, #68	; 0x44
c0de48f2:	f005 f837 	bl	c0de9964 <__aeabi_memcpy>
c0de48f6:	f04f 0a00 	mov.w	sl, #0
c0de48fa:	2401      	movs	r4, #1
c0de48fc:	e6c7      	b.n	c0de468e <parser_getItem+0x3f6>
c0de48fe:	49bb      	ldr	r1, [pc, #748]	; (c0de4bec <parser_getItem+0x954>)
c0de4900:	9801      	ldr	r0, [sp, #4]
c0de4902:	4479      	add	r1, pc
c0de4904:	2205      	movs	r2, #5
c0de4906:	f005 f83c 	bl	c0de9982 <memcmp>
c0de490a:	2800      	cmp	r0, #0
c0de490c:	d1c2      	bne.n	c0de4894 <parser_getItem+0x5fc>
c0de490e:	a811      	add	r0, sp, #68	; 0x44
c0de4910:	21a0      	movs	r1, #160	; 0xa0
c0de4912:	f005 f830 	bl	c0de9976 <explicit_bzero>
c0de4916:	a8b2      	add	r0, sp, #712	; 0x2c8
c0de4918:	f005 f88a 	bl	c0de9a30 <strlen>
c0de491c:	4606      	mov	r6, r0
c0de491e:	3002      	adds	r0, #2
c0de4920:	28a0      	cmp	r0, #160	; 0xa0
c0de4922:	d90c      	bls.n	c0de493e <parser_getItem+0x6a6>
c0de4924:	f04f 0a05 	mov.w	sl, #5
c0de4928:	e6b0      	b.n	c0de468c <parser_getItem+0x3f4>
c0de492a:	2400      	movs	r4, #0
c0de492c:	e004      	b.n	c0de4938 <parser_getItem+0x6a0>
c0de492e:	98e8      	ldr	r0, [sp, #928]	; 0x3a0
c0de4930:	9a03      	ldr	r2, [sp, #12]
c0de4932:	a911      	add	r1, sp, #68	; 0x44
c0de4934:	f005 f816 	bl	c0de9964 <__aeabi_memcpy>
c0de4938:	f04f 0a00 	mov.w	sl, #0
c0de493c:	e6a7      	b.n	c0de468e <parser_getItem+0x3f6>
c0de493e:	2e06      	cmp	r6, #6
c0de4940:	d816      	bhi.n	c0de4970 <parser_getItem+0x6d8>
c0de4942:	2000      	movs	r0, #0
c0de4944:	9c02      	ldr	r4, [sp, #8]
c0de4946:	f88d 0046 	strb.w	r0, [sp, #70]	; 0x46
c0de494a:	f642 6030 	movw	r0, #11824	; 0x2e30
c0de494e:	f1c6 0a06 	rsb	sl, r6, #6
c0de4952:	f8ad 0044 	strh.w	r0, [sp, #68]	; 0x44
c0de4956:	4620      	mov	r0, r4
c0de4958:	4651      	mov	r1, sl
c0de495a:	2230      	movs	r2, #48	; 0x30
c0de495c:	f005 f806 	bl	c0de996c <__aeabi_memset>
c0de4960:	4aa3      	ldr	r2, [pc, #652]	; (c0de4bf0 <parser_getItem+0x958>)
c0de4962:	eb04 000a 	add.w	r0, r4, sl
c0de4966:	f106 0198 	add.w	r1, r6, #152	; 0x98
c0de496a:	447a      	add	r2, pc
c0de496c:	abb2      	add	r3, sp, #712	; 0x2c8
c0de496e:	e014      	b.n	c0de499a <parser_getItem+0x702>
c0de4970:	4aa0      	ldr	r2, [pc, #640]	; (c0de4bf4 <parser_getItem+0x95c>)
c0de4972:	f50d 7a32 	add.w	sl, sp, #712	; 0x2c8
c0de4976:	447a      	add	r2, pc
c0de4978:	a811      	add	r0, sp, #68	; 0x44
c0de497a:	21a0      	movs	r1, #160	; 0xa0
c0de497c:	4653      	mov	r3, sl
c0de497e:	1fb4      	subs	r4, r6, #6
c0de4980:	4690      	mov	r8, r2
c0de4982:	f7ff fa3f 	bl	c0de3e04 <snprintf>
c0de4986:	a811      	add	r0, sp, #68	; 0x44
c0de4988:	4420      	add	r0, r4
c0de498a:	212e      	movs	r1, #46	; 0x2e
c0de498c:	eb0a 0304 	add.w	r3, sl, r4
c0de4990:	f800 1b01 	strb.w	r1, [r0], #1
c0de4994:	f1c6 01a5 	rsb	r1, r6, #165	; 0xa5
c0de4998:	4642      	mov	r2, r8
c0de499a:	f7ff fa33 	bl	c0de3e04 <snprintf>
c0de499e:	a811      	add	r0, sp, #68	; 0x44
c0de49a0:	f005 f846 	bl	c0de9a30 <strlen>
c0de49a4:	1e81      	subs	r1, r0, #2
c0de49a6:	f240 32fe 	movw	r2, #1022	; 0x3fe
c0de49aa:	4291      	cmp	r1, r2
c0de49ac:	d908      	bls.n	c0de49c0 <parser_getItem+0x728>
c0de49ae:	4a92      	ldr	r2, [pc, #584]	; (c0de4bf8 <parser_getItem+0x960>)
c0de49b0:	4b92      	ldr	r3, [pc, #584]	; (c0de4bfc <parser_getItem+0x964>)
c0de49b2:	447a      	add	r2, pc
c0de49b4:	447b      	add	r3, pc
c0de49b6:	a8bf      	add	r0, sp, #764	; 0x2fc
c0de49b8:	2181      	movs	r1, #129	; 0x81
c0de49ba:	f7ff fa23 	bl	c0de3e04 <snprintf>
c0de49be:	e769      	b.n	c0de4894 <parser_getItem+0x5fc>
c0de49c0:	2300      	movs	r3, #0
c0de49c2:	f64f 71ff 	movw	r1, #65535	; 0xffff
c0de49c6:	2200      	movs	r2, #0
c0de49c8:	ae11      	add	r6, sp, #68	; 0x44
c0de49ca:	5cf3      	ldrb	r3, [r6, r3]
c0de49cc:	2b2e      	cmp	r3, #46	; 0x2e
c0de49ce:	bf08      	it	eq
c0de49d0:	4611      	moveq	r1, r2
c0de49d2:	3201      	adds	r2, #1
c0de49d4:	b213      	sxth	r3, r2
c0de49d6:	4298      	cmp	r0, r3
c0de49d8:	b209      	sxth	r1, r1
c0de49da:	dd01      	ble.n	c0de49e0 <parser_getItem+0x748>
c0de49dc:	2900      	cmp	r1, #0
c0de49de:	d4f3      	bmi.n	c0de49c8 <parser_getItem+0x730>
c0de49e0:	2900      	cmp	r1, #0
c0de49e2:	d4e4      	bmi.n	c0de49ae <parser_getItem+0x716>
c0de49e4:	3106      	adds	r1, #6
c0de49e6:	3801      	subs	r0, #1
c0de49e8:	4288      	cmp	r0, r1
c0de49ea:	d9e0      	bls.n	c0de49ae <parser_getItem+0x716>
c0de49ec:	aa11      	add	r2, sp, #68	; 0x44
c0de49ee:	5c12      	ldrb	r2, [r2, r0]
c0de49f0:	2a30      	cmp	r2, #48	; 0x30
c0de49f2:	d1dc      	bne.n	c0de49ae <parser_getItem+0x716>
c0de49f4:	aa11      	add	r2, sp, #68	; 0x44
c0de49f6:	2300      	movs	r3, #0
c0de49f8:	5413      	strb	r3, [r2, r0]
c0de49fa:	e7f4      	b.n	c0de49e6 <parser_getItem+0x74e>
c0de49fc:	7010      	strb	r0, [r2, #0]
c0de49fe:	eb09 0008 	add.w	r0, r9, r8
c0de4a02:	3008      	adds	r0, #8
c0de4a04:	aa0b      	add	r2, sp, #44	; 0x2c
c0de4a06:	4631      	mov	r1, r6
c0de4a08:	f7fe fba0 	bl	c0de314c <array_get_element_count>
c0de4a0c:	4682      	mov	sl, r0
c0de4a0e:	f004 ff97 	bl	c0de9940 <check_app_canary>
c0de4a12:	f1ba 0f00 	cmp.w	sl, #0
c0de4a16:	f040 8252 	bne.w	c0de4ebe <parser_getItem+0xc26>
c0de4a1a:	f8bd 002c 	ldrh.w	r0, [sp, #44]	; 0x2c
c0de4a1e:	2804      	cmp	r0, #4
c0de4a20:	f000 81b7 	beq.w	c0de4d92 <parser_getItem+0xafa>
c0de4a24:	99eb      	ldr	r1, [sp, #940]	; 0x3ac
c0de4a26:	2800      	cmp	r0, #0
c0de4a28:	f040 820e 	bne.w	c0de4e48 <parser_getItem+0xbb0>
c0de4a2c:	2001      	movs	r0, #1
c0de4a2e:	7008      	strb	r0, [r1, #0]
c0de4a30:	4a73      	ldr	r2, [pc, #460]	; (c0de4c00 <parser_getItem+0x968>)
c0de4a32:	99e9      	ldr	r1, [sp, #932]	; 0x3a4
c0de4a34:	447a      	add	r2, pc
c0de4a36:	4628      	mov	r0, r5
c0de4a38:	e23d      	b.n	c0de4eb6 <parser_getItem+0xc1e>
c0de4a3a:	f04f 0a08 	mov.w	sl, #8
c0de4a3e:	e471      	b.n	c0de4324 <parser_getItem+0x8c>
c0de4a40:	f04f 0a06 	mov.w	sl, #6
c0de4a44:	e46e      	b.n	c0de4324 <parser_getItem+0x8c>
c0de4a46:	f04f 0a09 	mov.w	sl, #9
c0de4a4a:	e263      	b.n	c0de4f14 <parser_getItem+0xc7c>
c0de4a4c:	f004 ff78 	bl	c0de9940 <check_app_canary>
c0de4a50:	9f07      	ldr	r7, [sp, #28]
c0de4a52:	9de8      	ldr	r5, [sp, #928]	; 0x3a0
c0de4a54:	98b4      	ldr	r0, [sp, #720]	; 0x2d0
c0de4a56:	f04f 0a09 	mov.w	sl, #9
c0de4a5a:	2828      	cmp	r0, #40	; 0x28
c0de4a5c:	f200 825a 	bhi.w	c0de4f14 <parser_getItem+0xc7c>
c0de4a60:	98b6      	ldr	r0, [sp, #728]	; 0x2d8
c0de4a62:	f240 2126 	movw	r1, #550	; 0x226
c0de4a66:	4288      	cmp	r0, r1
c0de4a68:	f200 8254 	bhi.w	c0de4f14 <parser_getItem+0xc7c>
c0de4a6c:	68b0      	ldr	r0, [r6, #8]
c0de4a6e:	f240 2171 	movw	r1, #625	; 0x271
c0de4a72:	3009      	adds	r0, #9
c0de4a74:	9707      	str	r7, [sp, #28]
c0de4a76:	f004 ff7e 	bl	c0de9976 <explicit_bzero>
c0de4a7a:	68b4      	ldr	r4, [r6, #8]
c0de4a7c:	a811      	add	r0, sp, #68	; 0x44
c0de4a7e:	f44f 7116 	mov.w	r1, #600	; 0x258
c0de4a82:	f104 0809 	add.w	r8, r4, #9
c0de4a86:	f004 ff6a 	bl	c0de995e <__aeabi_memclr>
c0de4a8a:	98b4      	ldr	r0, [sp, #720]	; 0x2d0
c0de4a8c:	2800      	cmp	r0, #0
c0de4a8e:	f000 80bf 	beq.w	c0de4c10 <parser_getItem+0x978>
c0de4a92:	4640      	mov	r0, r8
c0de4a94:	f240 2171 	movw	r1, #625	; 0x271
c0de4a98:	f004 ff6d 	bl	c0de9976 <explicit_bzero>
c0de4a9c:	e9dd 12b5 	ldrd	r1, r2, [sp, #724]	; 0x2d4
c0de4aa0:	4640      	mov	r0, r8
c0de4aa2:	f004 ff61 	bl	c0de9968 <__aeabi_memmove>
c0de4aa6:	f8bd 32d8 	ldrh.w	r3, [sp, #728]	; 0x2d8
c0de4aaa:	a811      	add	r0, sp, #68	; 0x44
c0de4aac:	f44f 7116 	mov.w	r1, #600	; 0x258
c0de4ab0:	4642      	mov	r2, r8
c0de4ab2:	f001 ff33 	bl	c0de691c <tx_display_translation>
c0de4ab6:	f8dd a2d0 	ldr.w	sl, [sp, #720]	; 0x2d0
c0de4aba:	f89d 52dc 	ldrb.w	r5, [sp, #732]	; 0x2dc
c0de4abe:	eb05 000a 	add.w	r0, r5, sl
c0de4ac2:	b2c7      	uxtb	r7, r0
c0de4ac4:	2f11      	cmp	r7, #17
c0de4ac6:	d80d      	bhi.n	c0de4ae4 <parser_getItem+0x84c>
c0de4ac8:	98e9      	ldr	r0, [sp, #932]	; 0x3a4
c0de4aca:	2800      	cmp	r0, #0
c0de4acc:	f000 80fd 	beq.w	c0de4cca <parser_getItem+0xa32>
c0de4ad0:	a811      	add	r0, sp, #68	; 0x44
c0de4ad2:	f004 ffad 	bl	c0de9a30 <strlen>
c0de4ad6:	2f0b      	cmp	r7, #11
c0de4ad8:	f0c0 80f7 	bcc.w	c0de4cca <parser_getItem+0xa32>
c0de4adc:	99e9      	ldr	r1, [sp, #932]	; 0x3a4
c0de4ade:	4288      	cmp	r0, r1
c0de4ae0:	f0c0 80f3 	bcc.w	c0de4cca <parser_getItem+0xa32>
c0de4ae4:	1d20      	adds	r0, r4, #4
c0de4ae6:	9009      	str	r0, [sp, #36]	; 0x24
c0de4ae8:	a8bf      	add	r0, sp, #764	; 0x2fc
c0de4aea:	3003      	adds	r0, #3
c0de4aec:	2127      	movs	r1, #39	; 0x27
c0de4aee:	f004 ff36 	bl	c0de995e <__aeabi_memclr>
c0de4af2:	202d      	movs	r0, #45	; 0x2d
c0de4af4:	f88d 02fe 	strb.w	r0, [sp, #766]	; 0x2fe
c0de4af8:	f642 502d 	movw	r0, #11565	; 0x2d2d
c0de4afc:	f8ad 02fc 	strh.w	r0, [sp, #764]	; 0x2fc
c0de4b00:	b195      	cbz	r5, c0de4b28 <parser_getItem+0x890>
c0de4b02:	4f40      	ldr	r7, [pc, #256]	; (c0de4c04 <parser_getItem+0x96c>)
c0de4b04:	4c40      	ldr	r4, [pc, #256]	; (c0de4c08 <parser_getItem+0x970>)
c0de4b06:	f04f 0a00 	mov.w	sl, #0
c0de4b0a:	447f      	add	r7, pc
c0de4b0c:	447c      	add	r4, pc
c0de4b0e:	adbf      	add	r5, sp, #764	; 0x2fc
c0de4b10:	4628      	mov	r0, r5
c0de4b12:	212a      	movs	r1, #42	; 0x2a
c0de4b14:	463a      	mov	r2, r7
c0de4b16:	4623      	mov	r3, r4
c0de4b18:	f004 febc 	bl	c0de9894 <z_str3join>
c0de4b1c:	f89d 02dc 	ldrb.w	r0, [sp, #732]	; 0x2dc
c0de4b20:	f10a 0a01 	add.w	sl, sl, #1
c0de4b24:	4582      	cmp	sl, r0
c0de4b26:	d3f3      	bcc.n	c0de4b10 <parser_getItem+0x878>
c0de4b28:	68b0      	ldr	r0, [r6, #8]
c0de4b2a:	f240 2171 	movw	r1, #625	; 0x271
c0de4b2e:	3009      	adds	r0, #9
c0de4b30:	f004 ff21 	bl	c0de9976 <explicit_bzero>
c0de4b34:	e9dd 12b3 	ldrd	r1, r2, [sp, #716]	; 0x2cc
c0de4b38:	4640      	mov	r0, r8
c0de4b3a:	f004 ff15 	bl	c0de9968 <__aeabi_memmove>
c0de4b3e:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
c0de4b42:	98b4      	ldr	r0, [sp, #720]	; 0x2d0
c0de4b44:	f10a 0105 	add.w	r1, sl, #5
c0de4b48:	233a      	movs	r3, #58	; 0x3a
c0de4b4a:	180a      	adds	r2, r1, r0
c0de4b4c:	540b      	strb	r3, [r1, r0]
c0de4b4e:	2020      	movs	r0, #32
c0de4b50:	7050      	strb	r0, [r2, #1]
c0de4b52:	9ab4      	ldr	r2, [sp, #720]	; 0x2d0
c0de4b54:	1888      	adds	r0, r1, r2
c0de4b56:	f240 2156 	movw	r1, #598	; 0x256
c0de4b5a:	3002      	adds	r0, #2
c0de4b5c:	1a8a      	subs	r2, r1, r2
c0de4b5e:	a911      	add	r1, sp, #68	; 0x44
c0de4b60:	f004 ff02 	bl	c0de9968 <__aeabi_memmove>
c0de4b64:	4a29      	ldr	r2, [pc, #164]	; (c0de4c0c <parser_getItem+0x974>)
c0de4b66:	9907      	ldr	r1, [sp, #28]
c0de4b68:	447a      	add	r2, pc
c0de4b6a:	abbf      	add	r3, sp, #764	; 0x2fc
c0de4b6c:	4658      	mov	r0, fp
c0de4b6e:	f7ff f949 	bl	c0de3e04 <snprintf>
c0de4b72:	4640      	mov	r0, r8
c0de4b74:	f004 ff5c 	bl	c0de9a30 <strlen>
c0de4b78:	9de8      	ldr	r5, [sp, #928]	; 0x3a0
c0de4b7a:	9ee9      	ldr	r6, [sp, #932]	; 0x3a4
c0de4b7c:	4604      	mov	r4, r0
c0de4b7e:	4628      	mov	r0, r5
c0de4b80:	4631      	mov	r1, r6
c0de4b82:	f004 fef8 	bl	c0de9976 <explicit_bzero>
c0de4b86:	1e70      	subs	r0, r6, #1
c0de4b88:	b282      	uxth	r2, r0
c0de4b8a:	f8dd e3ac 	ldr.w	lr, [sp, #940]	; 0x3ac
c0de4b8e:	f8dd c3a8 	ldr.w	ip, [sp, #936]	; 0x3a8
c0de4b92:	2100      	movs	r1, #0
c0de4b94:	2a00      	cmp	r2, #0
c0de4b96:	f88e 1000 	strb.w	r1, [lr]
c0de4b9a:	f000 81b9 	beq.w	c0de4f10 <parser_getItem+0xc78>
c0de4b9e:	0421      	lsls	r1, r4, #16
c0de4ba0:	f000 81b6 	beq.w	c0de4f10 <parser_getItem+0xc78>
c0de4ba4:	b2a1      	uxth	r1, r4
c0de4ba6:	b283      	uxth	r3, r0
c0de4ba8:	fbb1 f1f3 	udiv	r1, r1, r3
c0de4bac:	fb01 4010 	mls	r0, r1, r0, r4
c0de4bb0:	b286      	uxth	r6, r0
c0de4bb2:	4633      	mov	r3, r6
c0de4bb4:	2e00      	cmp	r6, #0
c0de4bb6:	bf18      	it	ne
c0de4bb8:	2301      	movne	r3, #1
c0de4bba:	4419      	add	r1, r3
c0de4bbc:	b2cf      	uxtb	r7, r1
c0de4bbe:	4567      	cmp	r7, ip
c0de4bc0:	f88e 1000 	strb.w	r1, [lr]
c0de4bc4:	f240 81a4 	bls.w	c0de4f10 <parser_getItem+0xc78>
c0de4bc8:	fb0c a102 	mla	r1, ip, r2, sl
c0de4bcc:	0400      	lsls	r0, r0, #16
c0de4bce:	f101 0105 	add.w	r1, r1, #5
c0de4bd2:	f000 8194 	beq.w	c0de4efe <parser_getItem+0xc66>
c0de4bd6:	1e78      	subs	r0, r7, #1
c0de4bd8:	4560      	cmp	r0, ip
c0de4bda:	f040 8190 	bne.w	c0de4efe <parser_getItem+0xc66>
c0de4bde:	4628      	mov	r0, r5
c0de4be0:	4632      	mov	r2, r6
c0de4be2:	e18d      	b.n	c0de4f00 <parser_getItem+0xc68>
c0de4be4:	0000589c 	.word	0x0000589c
c0de4be8:	00005787 	.word	0x00005787
c0de4bec:	000056e7 	.word	0x000056e7
c0de4bf0:	000052d8 	.word	0x000052d8
c0de4bf4:	000052cc 	.word	0x000052cc
c0de4bf8:	0000527c 	.word	0x0000527c
c0de4bfc:	00005392 	.word	0x00005392
c0de4c00:	000053c5 	.word	0x000053c5
c0de4c04:	000052ed 	.word	0x000052ed
c0de4c08:	00005513 	.word	0x00005513
c0de4c0c:	000050da 	.word	0x000050da
c0de4c10:	e9dd 12b5 	ldrd	r1, r2, [sp, #724]	; 0x2d4
c0de4c14:	4640      	mov	r0, r8
c0de4c16:	46aa      	mov	sl, r5
c0de4c18:	f004 fea6 	bl	c0de9968 <__aeabi_memmove>
c0de4c1c:	f8bd 32d8 	ldrh.w	r3, [sp, #728]	; 0x2d8
c0de4c20:	a811      	add	r0, sp, #68	; 0x44
c0de4c22:	f44f 7116 	mov.w	r1, #600	; 0x258
c0de4c26:	4642      	mov	r2, r8
c0de4c28:	f001 fe78 	bl	c0de691c <tx_display_translation>
c0de4c2c:	f89d 02dc 	ldrb.w	r0, [sp, #732]	; 0x2dc
c0de4c30:	b188      	cbz	r0, c0de4c56 <parser_getItem+0x9be>
c0de4c32:	4ec6      	ldr	r6, [pc, #792]	; (c0de4f4c <parser_getItem+0xcb4>)
c0de4c34:	4cc6      	ldr	r4, [pc, #792]	; (c0de4f50 <parser_getItem+0xcb8>)
c0de4c36:	2700      	movs	r7, #0
c0de4c38:	447e      	add	r6, pc
c0de4c3a:	447c      	add	r4, pc
c0de4c3c:	ad11      	add	r5, sp, #68	; 0x44
c0de4c3e:	4628      	mov	r0, r5
c0de4c40:	f44f 7116 	mov.w	r1, #600	; 0x258
c0de4c44:	4632      	mov	r2, r6
c0de4c46:	4623      	mov	r3, r4
c0de4c48:	f004 fe24 	bl	c0de9894 <z_str3join>
c0de4c4c:	f89d 02dc 	ldrb.w	r0, [sp, #732]	; 0x2dc
c0de4c50:	3701      	adds	r7, #1
c0de4c52:	4287      	cmp	r7, r0
c0de4c54:	d3f3      	bcc.n	c0de4c3e <parser_getItem+0x9a6>
c0de4c56:	4abf      	ldr	r2, [pc, #764]	; (c0de4f54 <parser_getItem+0xcbc>)
c0de4c58:	9907      	ldr	r1, [sp, #28]
c0de4c5a:	447a      	add	r2, pc
c0de4c5c:	4658      	mov	r0, fp
c0de4c5e:	f7ff f8d1 	bl	c0de3e04 <snprintf>
c0de4c62:	f10d 0844 	add.w	r8, sp, #68	; 0x44
c0de4c66:	4640      	mov	r0, r8
c0de4c68:	f004 fee2 	bl	c0de9a30 <strlen>
c0de4c6c:	9ee9      	ldr	r6, [sp, #932]	; 0x3a4
c0de4c6e:	4605      	mov	r5, r0
c0de4c70:	4650      	mov	r0, sl
c0de4c72:	4631      	mov	r1, r6
c0de4c74:	f004 fe7f 	bl	c0de9976 <explicit_bzero>
c0de4c78:	1e70      	subs	r0, r6, #1
c0de4c7a:	b282      	uxth	r2, r0
c0de4c7c:	9ceb      	ldr	r4, [sp, #940]	; 0x3ac
c0de4c7e:	f8dd c3a8 	ldr.w	ip, [sp, #936]	; 0x3a8
c0de4c82:	2100      	movs	r1, #0
c0de4c84:	2a00      	cmp	r2, #0
c0de4c86:	7021      	strb	r1, [r4, #0]
c0de4c88:	f000 8142 	beq.w	c0de4f10 <parser_getItem+0xc78>
c0de4c8c:	0429      	lsls	r1, r5, #16
c0de4c8e:	f000 813f 	beq.w	c0de4f10 <parser_getItem+0xc78>
c0de4c92:	b2a9      	uxth	r1, r5
c0de4c94:	b283      	uxth	r3, r0
c0de4c96:	fbb1 f1f3 	udiv	r1, r1, r3
c0de4c9a:	fb01 5010 	mls	r0, r1, r0, r5
c0de4c9e:	b286      	uxth	r6, r0
c0de4ca0:	4633      	mov	r3, r6
c0de4ca2:	2e00      	cmp	r6, #0
c0de4ca4:	bf18      	it	ne
c0de4ca6:	2301      	movne	r3, #1
c0de4ca8:	4419      	add	r1, r3
c0de4caa:	b2cf      	uxtb	r7, r1
c0de4cac:	4567      	cmp	r7, ip
c0de4cae:	7021      	strb	r1, [r4, #0]
c0de4cb0:	f240 812e 	bls.w	c0de4f10 <parser_getItem+0xc78>
c0de4cb4:	fb0c 8102 	mla	r1, ip, r2, r8
c0de4cb8:	0400      	lsls	r0, r0, #16
c0de4cba:	f000 8124 	beq.w	c0de4f06 <parser_getItem+0xc6e>
c0de4cbe:	1e78      	subs	r0, r7, #1
c0de4cc0:	4560      	cmp	r0, ip
c0de4cc2:	f040 8120 	bne.w	c0de4f06 <parser_getItem+0xc6e>
c0de4cc6:	4650      	mov	r0, sl
c0de4cc8:	e055      	b.n	c0de4d76 <parser_getItem+0xade>
c0de4cca:	acbf      	add	r4, sp, #764	; 0x2fc
c0de4ccc:	4620      	mov	r0, r4
c0de4cce:	212a      	movs	r1, #42	; 0x2a
c0de4cd0:	f004 fe45 	bl	c0de995e <__aeabi_memclr>
c0de4cd4:	99b3      	ldr	r1, [sp, #716]	; 0x2cc
c0de4cd6:	4620      	mov	r0, r4
c0de4cd8:	4652      	mov	r2, sl
c0de4cda:	f004 fe45 	bl	c0de9968 <__aeabi_memmove>
c0de4cde:	b185      	cbz	r5, c0de4d02 <parser_getItem+0xa6a>
c0de4ce0:	4e9d      	ldr	r6, [pc, #628]	; (c0de4f58 <parser_getItem+0xcc0>)
c0de4ce2:	4f9e      	ldr	r7, [pc, #632]	; (c0de4f5c <parser_getItem+0xcc4>)
c0de4ce4:	2500      	movs	r5, #0
c0de4ce6:	447e      	add	r6, pc
c0de4ce8:	447f      	add	r7, pc
c0de4cea:	acbf      	add	r4, sp, #764	; 0x2fc
c0de4cec:	4620      	mov	r0, r4
c0de4cee:	212a      	movs	r1, #42	; 0x2a
c0de4cf0:	4632      	mov	r2, r6
c0de4cf2:	463b      	mov	r3, r7
c0de4cf4:	f004 fdce 	bl	c0de9894 <z_str3join>
c0de4cf8:	f89d 02dc 	ldrb.w	r0, [sp, #732]	; 0x2dc
c0de4cfc:	3501      	adds	r5, #1
c0de4cfe:	4285      	cmp	r5, r0
c0de4d00:	d3f4      	bcc.n	c0de4cec <parser_getItem+0xa54>
c0de4d02:	4a97      	ldr	r2, [pc, #604]	; (c0de4f60 <parser_getItem+0xcc8>)
c0de4d04:	9907      	ldr	r1, [sp, #28]
c0de4d06:	447a      	add	r2, pc
c0de4d08:	abbf      	add	r3, sp, #764	; 0x2fc
c0de4d0a:	4658      	mov	r0, fp
c0de4d0c:	f7ff f87a 	bl	c0de3e04 <snprintf>
c0de4d10:	f10d 0844 	add.w	r8, sp, #68	; 0x44
c0de4d14:	4640      	mov	r0, r8
c0de4d16:	f004 fe8b 	bl	c0de9a30 <strlen>
c0de4d1a:	4605      	mov	r5, r0
c0de4d1c:	e9dd 06e8 	ldrd	r0, r6, [sp, #928]	; 0x3a0
c0de4d20:	4631      	mov	r1, r6
c0de4d22:	f004 fe28 	bl	c0de9976 <explicit_bzero>
c0de4d26:	1e70      	subs	r0, r6, #1
c0de4d28:	b282      	uxth	r2, r0
c0de4d2a:	9ceb      	ldr	r4, [sp, #940]	; 0x3ac
c0de4d2c:	f8dd c3a8 	ldr.w	ip, [sp, #936]	; 0x3a8
c0de4d30:	2100      	movs	r1, #0
c0de4d32:	2a00      	cmp	r2, #0
c0de4d34:	7021      	strb	r1, [r4, #0]
c0de4d36:	f000 80eb 	beq.w	c0de4f10 <parser_getItem+0xc78>
c0de4d3a:	0429      	lsls	r1, r5, #16
c0de4d3c:	f000 80e8 	beq.w	c0de4f10 <parser_getItem+0xc78>
c0de4d40:	b2a9      	uxth	r1, r5
c0de4d42:	b283      	uxth	r3, r0
c0de4d44:	fbb1 f1f3 	udiv	r1, r1, r3
c0de4d48:	fb01 5010 	mls	r0, r1, r0, r5
c0de4d4c:	b286      	uxth	r6, r0
c0de4d4e:	4633      	mov	r3, r6
c0de4d50:	2e00      	cmp	r6, #0
c0de4d52:	bf18      	it	ne
c0de4d54:	2301      	movne	r3, #1
c0de4d56:	4419      	add	r1, r3
c0de4d58:	b2cf      	uxtb	r7, r1
c0de4d5a:	4567      	cmp	r7, ip
c0de4d5c:	7021      	strb	r1, [r4, #0]
c0de4d5e:	f240 80d7 	bls.w	c0de4f10 <parser_getItem+0xc78>
c0de4d62:	fb0c 8102 	mla	r1, ip, r2, r8
c0de4d66:	0400      	lsls	r0, r0, #16
c0de4d68:	f000 80cf 	beq.w	c0de4f0a <parser_getItem+0xc72>
c0de4d6c:	1e78      	subs	r0, r7, #1
c0de4d6e:	4560      	cmp	r0, ip
c0de4d70:	f040 80cb 	bne.w	c0de4f0a <parser_getItem+0xc72>
c0de4d74:	98e8      	ldr	r0, [sp, #928]	; 0x3a0
c0de4d76:	4632      	mov	r2, r6
c0de4d78:	e0c8      	b.n	c0de4f0c <parser_getItem+0xc74>
c0de4d7a:	99ea      	ldr	r1, [sp, #936]	; 0x3a8
c0de4d7c:	9ce9      	ldr	r4, [sp, #932]	; 0x3a4
c0de4d7e:	2900      	cmp	r1, #0
c0de4d80:	99eb      	ldr	r1, [sp, #940]	; 0x3ac
c0de4d82:	f04f 0000 	mov.w	r0, #0
c0de4d86:	7008      	strb	r0, [r1, #0]
c0de4d88:	f000 808f 	beq.w	c0de4eaa <parser_getItem+0xc12>
c0de4d8c:	f04f 0a09 	mov.w	sl, #9
c0de4d90:	e095      	b.n	c0de4ebe <parser_getItem+0xc26>
c0de4d92:	7820      	ldrb	r0, [r4, #0]
c0de4d94:	2801      	cmp	r0, #1
c0de4d96:	d157      	bne.n	c0de4e48 <parser_getItem+0xbb0>
c0de4d98:	1c70      	adds	r0, r6, #1
c0de4d9a:	b280      	uxth	r0, r0
c0de4d9c:	eb09 0108 	add.w	r1, r9, r8
c0de4da0:	eb01 01c0 	add.w	r1, r1, r0, lsl #3
c0de4da4:	7c09      	ldrb	r1, [r1, #16]
c0de4da6:	2903      	cmp	r1, #3
c0de4da8:	d14e      	bne.n	c0de4e48 <parser_getItem+0xbb0>
c0de4daa:	eb09 0108 	add.w	r1, r9, r8
c0de4dae:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de4db2:	f9b0 1012 	ldrsh.w	r1, [r0, #18]
c0de4db6:	f9b0 0014 	ldrsh.w	r0, [r0, #20]
c0de4dba:	1a40      	subs	r0, r0, r1
c0de4dbc:	2806      	cmp	r0, #6
c0de4dbe:	d143      	bne.n	c0de4e48 <parser_getItem+0xbb0>
c0de4dc0:	eb09 0008 	add.w	r0, r9, r8
c0de4dc4:	6840      	ldr	r0, [r0, #4]
c0de4dc6:	5c42      	ldrb	r2, [r0, r1]
c0de4dc8:	2a61      	cmp	r2, #97	; 0x61
c0de4dca:	d13d      	bne.n	c0de4e48 <parser_getItem+0xbb0>
c0de4dcc:	4b65      	ldr	r3, [pc, #404]	; (c0de4f64 <parser_getItem+0xccc>)
c0de4dce:	4401      	add	r1, r0
c0de4dd0:	4635      	mov	r5, r6
c0de4dd2:	4644      	mov	r4, r8
c0de4dd4:	46b8      	mov	r8, r7
c0de4dd6:	3101      	adds	r1, #1
c0de4dd8:	447b      	add	r3, pc
c0de4dda:	2200      	movs	r2, #0
c0de4ddc:	2a05      	cmp	r2, #5
c0de4dde:	d007      	beq.n	c0de4df0 <parser_getItem+0xb58>
c0de4de0:	189f      	adds	r7, r3, r2
c0de4de2:	787f      	ldrb	r7, [r7, #1]
c0de4de4:	5c8e      	ldrb	r6, [r1, r2]
c0de4de6:	3201      	adds	r2, #1
c0de4de8:	42b7      	cmp	r7, r6
c0de4dea:	d0f7      	beq.n	c0de4ddc <parser_getItem+0xb44>
c0de4dec:	2a06      	cmp	r2, #6
c0de4dee:	d327      	bcc.n	c0de4e40 <parser_getItem+0xba8>
c0de4df0:	1ce9      	adds	r1, r5, #3
c0de4df2:	b289      	uxth	r1, r1
c0de4df4:	eb09 0204 	add.w	r2, r9, r4
c0de4df8:	eb02 02c1 	add.w	r2, r2, r1, lsl #3
c0de4dfc:	7c12      	ldrb	r2, [r2, #16]
c0de4dfe:	2a03      	cmp	r2, #3
c0de4e00:	d11e      	bne.n	c0de4e40 <parser_getItem+0xba8>
c0de4e02:	eb09 0204 	add.w	r2, r9, r4
c0de4e06:	eb02 02c1 	add.w	r2, r2, r1, lsl #3
c0de4e0a:	f9b2 1012 	ldrsh.w	r1, [r2, #18]
c0de4e0e:	f9b2 2014 	ldrsh.w	r2, [r2, #20]
c0de4e12:	1a52      	subs	r2, r2, r1
c0de4e14:	2a05      	cmp	r2, #5
c0de4e16:	d113      	bne.n	c0de4e40 <parser_getItem+0xba8>
c0de4e18:	5c42      	ldrb	r2, [r0, r1]
c0de4e1a:	2a64      	cmp	r2, #100	; 0x64
c0de4e1c:	d110      	bne.n	c0de4e40 <parser_getItem+0xba8>
c0de4e1e:	4a52      	ldr	r2, [pc, #328]	; (c0de4f68 <parser_getItem+0xcd0>)
c0de4e20:	4408      	add	r0, r1
c0de4e22:	3001      	adds	r0, #1
c0de4e24:	447a      	add	r2, pc
c0de4e26:	2100      	movs	r1, #0
c0de4e28:	2904      	cmp	r1, #4
c0de4e2a:	f000 8110 	beq.w	c0de504e <parser_getItem+0xdb6>
c0de4e2e:	1853      	adds	r3, r2, r1
c0de4e30:	785b      	ldrb	r3, [r3, #1]
c0de4e32:	5c47      	ldrb	r7, [r0, r1]
c0de4e34:	3101      	adds	r1, #1
c0de4e36:	42bb      	cmp	r3, r7
c0de4e38:	d0f6      	beq.n	c0de4e28 <parser_getItem+0xb90>
c0de4e3a:	2905      	cmp	r1, #5
c0de4e3c:	f080 8107 	bcs.w	c0de504e <parser_getItem+0xdb6>
c0de4e40:	f04f 0a0d 	mov.w	sl, #13
c0de4e44:	4647      	mov	r7, r8
c0de4e46:	e03a      	b.n	c0de4ebe <parser_getItem+0xc26>
c0de4e48:	f04f 0a0d 	mov.w	sl, #13
c0de4e4c:	e037      	b.n	c0de4ebe <parser_getItem+0xc26>
c0de4e4e:	99ea      	ldr	r1, [sp, #936]	; 0x3a8
c0de4e50:	b2f8      	uxtb	r0, r7
c0de4e52:	4288      	cmp	r0, r1
c0de4e54:	99eb      	ldr	r1, [sp, #940]	; 0x3ac
c0de4e56:	700f      	strb	r7, [r1, #0]
c0de4e58:	d203      	bcs.n	c0de4e62 <parser_getItem+0xbca>
c0de4e5a:	f04f 0a09 	mov.w	sl, #9
c0de4e5e:	9f07      	ldr	r7, [sp, #28]
c0de4e60:	e02d      	b.n	c0de4ebe <parser_getItem+0xc26>
c0de4e62:	0638      	lsls	r0, r7, #24
c0de4e64:	9f07      	ldr	r7, [sp, #28]
c0de4e66:	d020      	beq.n	c0de4eaa <parser_getItem+0xc12>
c0de4e68:	f8df 061c 	ldr.w	r0, [pc, #1564]	; c0de5488 <parser_getItem+0x11f0>
c0de4e6c:	9905      	ldr	r1, [sp, #20]
c0de4e6e:	4634      	mov	r4, r6
c0de4e70:	4448      	add	r0, r9
c0de4e72:	b28e      	uxth	r6, r1
c0de4e74:	3008      	adds	r0, #8
c0de4e76:	aa0b      	add	r2, sp, #44	; 0x2c
c0de4e78:	4631      	mov	r1, r6
c0de4e7a:	f7fe f967 	bl	c0de314c <array_get_element_count>
c0de4e7e:	4682      	mov	sl, r0
c0de4e80:	f004 fd5e 	bl	c0de9940 <check_app_canary>
c0de4e84:	f1ba 0f00 	cmp.w	sl, #0
c0de4e88:	d119      	bne.n	c0de4ebe <parser_getItem+0xc26>
c0de4e8a:	f8bd 002c 	ldrh.w	r0, [sp, #44]	; 0x2c
c0de4e8e:	2804      	cmp	r0, #4
c0de4e90:	d072      	beq.n	c0de4f78 <parser_getItem+0xce0>
c0de4e92:	2800      	cmp	r0, #0
c0de4e94:	f040 80d0 	bne.w	c0de5038 <parser_getItem+0xda0>
c0de4e98:	4a34      	ldr	r2, [pc, #208]	; (c0de4f6c <parser_getItem+0xcd4>)
c0de4e9a:	e9dd 01e8 	ldrd	r0, r1, [sp, #928]	; 0x3a0
c0de4e9e:	447a      	add	r2, pc
c0de4ea0:	f7fe ffb0 	bl	c0de3e04 <snprintf>
c0de4ea4:	f04f 0a00 	mov.w	sl, #0
c0de4ea8:	e7d9      	b.n	c0de4e5e <parser_getItem+0xbc6>
c0de4eaa:	2001      	movs	r0, #1
c0de4eac:	7008      	strb	r0, [r1, #0]
c0de4eae:	4a30      	ldr	r2, [pc, #192]	; (c0de4f70 <parser_getItem+0xcd8>)
c0de4eb0:	98e8      	ldr	r0, [sp, #928]	; 0x3a0
c0de4eb2:	447a      	add	r2, pc
c0de4eb4:	4621      	mov	r1, r4
c0de4eb6:	f7fe ffa5 	bl	c0de3e04 <snprintf>
c0de4eba:	f04f 0a00 	mov.w	sl, #0
c0de4ebe:	f004 fd3f 	bl	c0de9940 <check_app_canary>
c0de4ec2:	f1ba 0f00 	cmp.w	sl, #0
c0de4ec6:	f47f ab48 	bne.w	c0de455a <parser_getItem+0x2c2>
c0de4eca:	f004 fd39 	bl	c0de9940 <check_app_canary>
c0de4ece:	f001 fced 	bl	c0de68ac <tx_display_make_friendly>
c0de4ed2:	4682      	mov	sl, r0
c0de4ed4:	f004 fd34 	bl	c0de9940 <check_app_canary>
c0de4ed8:	f1ba 0f00 	cmp.w	sl, #0
c0de4edc:	f47f ab3d 	bne.w	c0de455a <parser_getItem+0x2c2>
c0de4ee0:	f004 fd2e 	bl	c0de9940 <check_app_canary>
c0de4ee4:	4a23      	ldr	r2, [pc, #140]	; (c0de4f74 <parser_getItem+0xcdc>)
c0de4ee6:	aba8      	add	r3, sp, #672	; 0x2a0
c0de4ee8:	447a      	add	r2, pc
c0de4eea:	4658      	mov	r0, fp
c0de4eec:	4639      	mov	r1, r7
c0de4eee:	f7fe ff89 	bl	c0de3e04 <snprintf>
c0de4ef2:	f004 fd25 	bl	c0de9940 <check_app_canary>
c0de4ef6:	f04f 0a00 	mov.w	sl, #0
c0de4efa:	f7ff bb2e 	b.w	c0de455a <parser_getItem+0x2c2>
c0de4efe:	4628      	mov	r0, r5
c0de4f00:	f004 fd32 	bl	c0de9968 <__aeabi_memmove>
c0de4f04:	e004      	b.n	c0de4f10 <parser_getItem+0xc78>
c0de4f06:	4650      	mov	r0, sl
c0de4f08:	e000      	b.n	c0de4f0c <parser_getItem+0xc74>
c0de4f0a:	98e8      	ldr	r0, [sp, #928]	; 0x3a0
c0de4f0c:	f004 fd2a 	bl	c0de9964 <__aeabi_memcpy>
c0de4f10:	f04f 0a00 	mov.w	sl, #0
c0de4f14:	f004 fd14 	bl	c0de9940 <check_app_canary>
c0de4f18:	f7ff bb1f 	b.w	c0de455a <parser_getItem+0x2c2>
c0de4f1c:	2002      	movs	r0, #2
c0de4f1e:	e090      	b.n	c0de5042 <parser_getItem+0xdaa>
c0de4f20:	a8bf      	add	r0, sp, #764	; 0x2fc
c0de4f22:	f7fd f8af 	bl	c0de2084 <_cbor_value_decode_int64_internal>
c0de4f26:	2900      	cmp	r1, #0
c0de4f28:	90b2      	str	r0, [sp, #712]	; 0x2c8
c0de4f2a:	f040 8088 	bne.w	c0de503e <parser_getItem+0xda6>
c0de4f2e:	a8bf      	add	r0, sp, #764	; 0x2fc
c0de4f30:	a90b      	add	r1, sp, #44	; 0x2c
c0de4f32:	f7fd fabf 	bl	c0de24b4 <cbor_value_enter_container>
c0de4f36:	2800      	cmp	r0, #0
c0de4f38:	f040 8083 	bne.w	c0de5042 <parser_getItem+0xdaa>
c0de4f3c:	a80b      	add	r0, sp, #44	; 0x2c
c0de4f3e:	a9b2      	add	r1, sp, #712	; 0x2c8
c0de4f40:	f7fc ff76 	bl	c0de1e30 <cbor_get_containerInfo>
c0de4f44:	4682      	mov	sl, r0
c0de4f46:	f004 fcfb 	bl	c0de9940 <check_app_canary>
c0de4f4a:	e07d      	b.n	c0de5048 <parser_getItem+0xdb0>
c0de4f4c:	000051bf 	.word	0x000051bf
c0de4f50:	000053e5 	.word	0x000053e5
c0de4f54:	00004fe6 	.word	0x00004fe6
c0de4f58:	00005111 	.word	0x00005111
c0de4f5c:	00005337 	.word	0x00005337
c0de4f60:	00004f3c 	.word	0x00004f3c
c0de4f64:	00004f1e 	.word	0x00004f1e
c0de4f68:	00005273 	.word	0x00005273
c0de4f6c:	00004f5b 	.word	0x00004f5b
c0de4f70:	00004f47 	.word	0x00004f47
c0de4f74:	00004d5a 	.word	0x00004d5a
c0de4f78:	f8df 050c 	ldr.w	r0, [pc, #1292]	; c0de5488 <parser_getItem+0x11f0>
c0de4f7c:	4448      	add	r0, r9
c0de4f7e:	eb00 00c6 	add.w	r0, r0, r6, lsl #3
c0de4f82:	7c00      	ldrb	r0, [r0, #16]
c0de4f84:	2801      	cmp	r0, #1
c0de4f86:	d157      	bne.n	c0de5038 <parser_getItem+0xda0>
c0de4f88:	9805      	ldr	r0, [sp, #20]
c0de4f8a:	f8df 14fc 	ldr.w	r1, [pc, #1276]	; c0de5488 <parser_getItem+0x11f0>
c0de4f8e:	3001      	adds	r0, #1
c0de4f90:	b280      	uxth	r0, r0
c0de4f92:	4449      	add	r1, r9
c0de4f94:	eb01 01c0 	add.w	r1, r1, r0, lsl #3
c0de4f98:	7c09      	ldrb	r1, [r1, #16]
c0de4f9a:	2903      	cmp	r1, #3
c0de4f9c:	d14c      	bne.n	c0de5038 <parser_getItem+0xda0>
c0de4f9e:	f8df 14e8 	ldr.w	r1, [pc, #1256]	; c0de5488 <parser_getItem+0x11f0>
c0de4fa2:	4449      	add	r1, r9
c0de4fa4:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
c0de4fa8:	f9b0 1012 	ldrsh.w	r1, [r0, #18]
c0de4fac:	f9b0 0014 	ldrsh.w	r0, [r0, #20]
c0de4fb0:	1a40      	subs	r0, r0, r1
c0de4fb2:	2806      	cmp	r0, #6
c0de4fb4:	d140      	bne.n	c0de5038 <parser_getItem+0xda0>
c0de4fb6:	f8df 04d0 	ldr.w	r0, [pc, #1232]	; c0de5488 <parser_getItem+0x11f0>
c0de4fba:	4448      	add	r0, r9
c0de4fbc:	6840      	ldr	r0, [r0, #4]
c0de4fbe:	5c42      	ldrb	r2, [r0, r1]
c0de4fc0:	2a61      	cmp	r2, #97	; 0x61
c0de4fc2:	d139      	bne.n	c0de5038 <parser_getItem+0xda0>
c0de4fc4:	4bc7      	ldr	r3, [pc, #796]	; (c0de52e4 <parser_getItem+0x104c>)
c0de4fc6:	4401      	add	r1, r0
c0de4fc8:	3101      	adds	r1, #1
c0de4fca:	447b      	add	r3, pc
c0de4fcc:	2200      	movs	r2, #0
c0de4fce:	2a05      	cmp	r2, #5
c0de4fd0:	d007      	beq.n	c0de4fe2 <parser_getItem+0xd4a>
c0de4fd2:	189f      	adds	r7, r3, r2
c0de4fd4:	787f      	ldrb	r7, [r7, #1]
c0de4fd6:	5c8d      	ldrb	r5, [r1, r2]
c0de4fd8:	3201      	adds	r2, #1
c0de4fda:	42af      	cmp	r7, r5
c0de4fdc:	d0f7      	beq.n	c0de4fce <parser_getItem+0xd36>
c0de4fde:	2a06      	cmp	r2, #6
c0de4fe0:	d32a      	bcc.n	c0de5038 <parser_getItem+0xda0>
c0de4fe2:	9905      	ldr	r1, [sp, #20]
c0de4fe4:	f8df 24a0 	ldr.w	r2, [pc, #1184]	; c0de5488 <parser_getItem+0x11f0>
c0de4fe8:	3103      	adds	r1, #3
c0de4fea:	b289      	uxth	r1, r1
c0de4fec:	444a      	add	r2, r9
c0de4fee:	eb02 02c1 	add.w	r2, r2, r1, lsl #3
c0de4ff2:	7c12      	ldrb	r2, [r2, #16]
c0de4ff4:	2a03      	cmp	r2, #3
c0de4ff6:	d11f      	bne.n	c0de5038 <parser_getItem+0xda0>
c0de4ff8:	f8df 248c 	ldr.w	r2, [pc, #1164]	; c0de5488 <parser_getItem+0x11f0>
c0de4ffc:	444a      	add	r2, r9
c0de4ffe:	eb02 02c1 	add.w	r2, r2, r1, lsl #3
c0de5002:	f9b2 1012 	ldrsh.w	r1, [r2, #18]
c0de5006:	f9b2 2014 	ldrsh.w	r2, [r2, #20]
c0de500a:	1a52      	subs	r2, r2, r1
c0de500c:	2a05      	cmp	r2, #5
c0de500e:	d113      	bne.n	c0de5038 <parser_getItem+0xda0>
c0de5010:	5c42      	ldrb	r2, [r0, r1]
c0de5012:	2a64      	cmp	r2, #100	; 0x64
c0de5014:	d110      	bne.n	c0de5038 <parser_getItem+0xda0>
c0de5016:	4ab4      	ldr	r2, [pc, #720]	; (c0de52e8 <parser_getItem+0x1050>)
c0de5018:	4408      	add	r0, r1
c0de501a:	3001      	adds	r0, #1
c0de501c:	447a      	add	r2, pc
c0de501e:	2100      	movs	r1, #0
c0de5020:	2904      	cmp	r1, #4
c0de5022:	f000 80bf 	beq.w	c0de51a4 <parser_getItem+0xf0c>
c0de5026:	1853      	adds	r3, r2, r1
c0de5028:	785b      	ldrb	r3, [r3, #1]
c0de502a:	5c47      	ldrb	r7, [r0, r1]
c0de502c:	3101      	adds	r1, #1
c0de502e:	42bb      	cmp	r3, r7
c0de5030:	d0f6      	beq.n	c0de5020 <parser_getItem+0xd88>
c0de5032:	2905      	cmp	r1, #5
c0de5034:	f080 80b6 	bcs.w	c0de51a4 <parser_getItem+0xf0c>
c0de5038:	f04f 0a0d 	mov.w	sl, #13
c0de503c:	e70f      	b.n	c0de4e5e <parser_getItem+0xbc6>
c0de503e:	f44f 6080 	mov.w	r0, #1024	; 0x400
c0de5042:	f7fc fee5 	bl	c0de1e10 <parser_mapCborError>
c0de5046:	4682      	mov	sl, r0
c0de5048:	9de8      	ldr	r5, [sp, #928]	; 0x3a0
c0de504a:	f7ff b96b 	b.w	c0de4324 <parser_getItem+0x8c>
c0de504e:	a8bf      	add	r0, sp, #764	; 0x2fc
c0de5050:	2181      	movs	r1, #129	; 0x81
c0de5052:	f004 fc90 	bl	c0de9976 <explicit_bzero>
c0de5056:	a8b2      	add	r0, sp, #712	; 0x2c8
c0de5058:	2132      	movs	r1, #50	; 0x32
c0de505a:	f004 fc8c 	bl	c0de9976 <explicit_bzero>
c0de505e:	e9dd 01e8 	ldrd	r0, r1, [sp, #928]	; 0x3a0
c0de5062:	f004 fc88 	bl	c0de9976 <explicit_bzero>
c0de5066:	a811      	add	r0, sp, #68	; 0x44
c0de5068:	21a0      	movs	r1, #160	; 0xa0
c0de506a:	f004 fc84 	bl	c0de9976 <explicit_bzero>
c0de506e:	eb09 0104 	add.w	r1, r9, r4
c0de5072:	f851 0f04 	ldr.w	r0, [r1, #4]!
c0de5076:	1cab      	adds	r3, r5, #2
c0de5078:	eb01 01c3 	add.w	r1, r1, r3, lsl #3
c0de507c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
c0de5080:	2900      	cmp	r1, #0
c0de5082:	d41b      	bmi.n	c0de50bc <parser_getItem+0xe24>
c0de5084:	eb09 0204 	add.w	r2, r9, r4
c0de5088:	3210      	adds	r2, #16
c0de508a:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
c0de508e:	f9b3 3004 	ldrsh.w	r3, [r3, #4]
c0de5092:	f04f 0a05 	mov.w	sl, #5
c0de5096:	1a5e      	subs	r6, r3, r1
c0de5098:	1e73      	subs	r3, r6, #1
c0de509a:	2b30      	cmp	r3, #48	; 0x30
c0de509c:	f63f aed2 	bhi.w	c0de4e44 <parser_getItem+0xbac>
c0de50a0:	eb02 03c5 	add.w	r3, r2, r5, lsl #3
c0de50a4:	f9b3 2022 	ldrsh.w	r2, [r3, #34]	; 0x22
c0de50a8:	f9b3 3024 	ldrsh.w	r3, [r3, #36]	; 0x24
c0de50ac:	1a9c      	subs	r4, r3, r2
c0de50ae:	1e63      	subs	r3, r4, #1
c0de50b0:	2b7f      	cmp	r3, #127	; 0x7f
c0de50b2:	f63f aec7 	bhi.w	c0de4e44 <parser_getItem+0xbac>
c0de50b6:	19a3      	adds	r3, r4, r6
c0de50b8:	2b9e      	cmp	r3, #158	; 0x9e
c0de50ba:	d902      	bls.n	c0de50c2 <parser_getItem+0xe2a>
c0de50bc:	f04f 0a08 	mov.w	sl, #8
c0de50c0:	e6c0      	b.n	c0de4e44 <parser_getItem+0xbac>
c0de50c2:	1885      	adds	r5, r0, r2
c0de50c4:	eb00 0a01 	add.w	sl, r0, r1
c0de50c8:	a8bf      	add	r0, sp, #764	; 0x2fc
c0de50ca:	4629      	mov	r1, r5
c0de50cc:	4622      	mov	r2, r4
c0de50ce:	f004 fc4b 	bl	c0de9968 <__aeabi_memmove>
c0de50d2:	afb2      	add	r7, sp, #712	; 0x2c8
c0de50d4:	4638      	mov	r0, r7
c0de50d6:	4651      	mov	r1, sl
c0de50d8:	4632      	mov	r2, r6
c0de50da:	f004 fc45 	bl	c0de9968 <__aeabi_memmove>
c0de50de:	4ae9      	ldr	r2, [pc, #932]	; (c0de5484 <parser_getItem+0x11ec>)
c0de50e0:	a811      	add	r0, sp, #68	; 0x44
c0de50e2:	447a      	add	r2, pc
c0de50e4:	21a0      	movs	r1, #160	; 0xa0
c0de50e6:	463b      	mov	r3, r7
c0de50e8:	f7fe fe8c 	bl	c0de3e04 <snprintf>
c0de50ec:	b2e6      	uxtb	r6, r4
c0de50ee:	f001 f96f 	bl	c0de63d0 <tx_is_expert_mode>
c0de50f2:	2e05      	cmp	r6, #5
c0de50f4:	bf08      	it	eq
c0de50f6:	2800      	cmpeq	r0, #0
c0de50f8:	d03b      	beq.n	c0de5172 <parser_getItem+0xeda>
c0de50fa:	4ae9      	ldr	r2, [pc, #932]	; (c0de54a0 <parser_getItem+0x1208>)
c0de50fc:	ac11      	add	r4, sp, #68	; 0x44
c0de50fe:	447a      	add	r2, pc
c0de5100:	abbf      	add	r3, sp, #764	; 0x2fc
c0de5102:	4620      	mov	r0, r4
c0de5104:	21a0      	movs	r1, #160	; 0xa0
c0de5106:	f004 fbc5 	bl	c0de9894 <z_str3join>
c0de510a:	4620      	mov	r0, r4
c0de510c:	f004 fc90 	bl	c0de9a30 <strlen>
c0de5110:	4606      	mov	r6, r0
c0de5112:	e9dd 07e8 	ldrd	r0, r7, [sp, #928]	; 0x3a0
c0de5116:	4639      	mov	r1, r7
c0de5118:	f004 fc2d 	bl	c0de9976 <explicit_bzero>
c0de511c:	1e78      	subs	r0, r7, #1
c0de511e:	b282      	uxth	r2, r0
c0de5120:	99eb      	ldr	r1, [sp, #940]	; 0x3ac
c0de5122:	f04f 0a00 	mov.w	sl, #0
c0de5126:	2a00      	cmp	r2, #0
c0de5128:	f881 a000 	strb.w	sl, [r1]
c0de512c:	f43f ae8a 	beq.w	c0de4e44 <parser_getItem+0xbac>
c0de5130:	0431      	lsls	r1, r6, #16
c0de5132:	f43f ae87 	beq.w	c0de4e44 <parser_getItem+0xbac>
c0de5136:	b2b1      	uxth	r1, r6
c0de5138:	b283      	uxth	r3, r0
c0de513a:	fbb1 f1f3 	udiv	r1, r1, r3
c0de513e:	fb01 6010 	mls	r0, r1, r0, r6
c0de5142:	b286      	uxth	r6, r0
c0de5144:	4633      	mov	r3, r6
c0de5146:	2e00      	cmp	r6, #0
c0de5148:	bf18      	it	ne
c0de514a:	2301      	movne	r3, #1
c0de514c:	4419      	add	r1, r3
c0de514e:	9bea      	ldr	r3, [sp, #936]	; 0x3a8
c0de5150:	b2cf      	uxtb	r7, r1
c0de5152:	429f      	cmp	r7, r3
c0de5154:	9beb      	ldr	r3, [sp, #940]	; 0x3ac
c0de5156:	7019      	strb	r1, [r3, #0]
c0de5158:	d965      	bls.n	c0de5226 <parser_getItem+0xf8e>
c0de515a:	99ea      	ldr	r1, [sp, #936]	; 0x3a8
c0de515c:	0400      	lsls	r0, r0, #16
c0de515e:	fb01 4102 	mla	r1, r1, r2, r4
c0de5162:	d05d      	beq.n	c0de5220 <parser_getItem+0xf88>
c0de5164:	9bea      	ldr	r3, [sp, #936]	; 0x3a8
c0de5166:	1e78      	subs	r0, r7, #1
c0de5168:	4298      	cmp	r0, r3
c0de516a:	d159      	bne.n	c0de5220 <parser_getItem+0xf88>
c0de516c:	98e8      	ldr	r0, [sp, #928]	; 0x3a0
c0de516e:	4632      	mov	r2, r6
c0de5170:	e057      	b.n	c0de5222 <parser_getItem+0xf8a>
c0de5172:	49c6      	ldr	r1, [pc, #792]	; (c0de548c <parser_getItem+0x11f4>)
c0de5174:	4628      	mov	r0, r5
c0de5176:	4479      	add	r1, pc
c0de5178:	2205      	movs	r2, #5
c0de517a:	f004 fc02 	bl	c0de9982 <memcmp>
c0de517e:	2800      	cmp	r0, #0
c0de5180:	d1bb      	bne.n	c0de50fa <parser_getItem+0xe62>
c0de5182:	ac11      	add	r4, sp, #68	; 0x44
c0de5184:	4620      	mov	r0, r4
c0de5186:	21a0      	movs	r1, #160	; 0xa0
c0de5188:	f004 fbf5 	bl	c0de9976 <explicit_bzero>
c0de518c:	f50d 7a32 	add.w	sl, sp, #712	; 0x2c8
c0de5190:	4650      	mov	r0, sl
c0de5192:	f004 fc4d 	bl	c0de9a30 <strlen>
c0de5196:	4606      	mov	r6, r0
c0de5198:	3002      	adds	r0, #2
c0de519a:	28a0      	cmp	r0, #160	; 0xa0
c0de519c:	d946      	bls.n	c0de522c <parser_getItem+0xf94>
c0de519e:	f04f 0a05 	mov.w	sl, #5
c0de51a2:	e64f      	b.n	c0de4e44 <parser_getItem+0xbac>
c0de51a4:	a8bf      	add	r0, sp, #764	; 0x2fc
c0de51a6:	2181      	movs	r1, #129	; 0x81
c0de51a8:	f004 fbe5 	bl	c0de9976 <explicit_bzero>
c0de51ac:	a8b2      	add	r0, sp, #712	; 0x2c8
c0de51ae:	2132      	movs	r1, #50	; 0x32
c0de51b0:	f004 fbe1 	bl	c0de9976 <explicit_bzero>
c0de51b4:	e9dd 01e8 	ldrd	r0, r1, [sp, #928]	; 0x3a0
c0de51b8:	f004 fbdd 	bl	c0de9976 <explicit_bzero>
c0de51bc:	a811      	add	r0, sp, #68	; 0x44
c0de51be:	21a0      	movs	r1, #160	; 0xa0
c0de51c0:	f004 fbd9 	bl	c0de9976 <explicit_bzero>
c0de51c4:	48b0      	ldr	r0, [pc, #704]	; (c0de5488 <parser_getItem+0x11f0>)
c0de51c6:	1cb3      	adds	r3, r6, #2
c0de51c8:	eb09 0100 	add.w	r1, r9, r0
c0de51cc:	f851 0f04 	ldr.w	r0, [r1, #4]!
c0de51d0:	eb01 01c3 	add.w	r1, r1, r3, lsl #3
c0de51d4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
c0de51d8:	2900      	cmp	r1, #0
c0de51da:	d41e      	bmi.n	c0de521a <parser_getItem+0xf82>
c0de51dc:	4aaa      	ldr	r2, [pc, #680]	; (c0de5488 <parser_getItem+0x11f0>)
c0de51de:	f04f 0a05 	mov.w	sl, #5
c0de51e2:	444a      	add	r2, r9
c0de51e4:	3210      	adds	r2, #16
c0de51e6:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
c0de51ea:	f9b3 3004 	ldrsh.w	r3, [r3, #4]
c0de51ee:	eba3 0801 	sub.w	r8, r3, r1
c0de51f2:	f1a8 0301 	sub.w	r3, r8, #1
c0de51f6:	2b30      	cmp	r3, #48	; 0x30
c0de51f8:	f63f ae31 	bhi.w	c0de4e5e <parser_getItem+0xbc6>
c0de51fc:	eb02 03c6 	add.w	r3, r2, r6, lsl #3
c0de5200:	f9b3 2022 	ldrsh.w	r2, [r3, #34]	; 0x22
c0de5204:	f9b3 3024 	ldrsh.w	r3, [r3, #36]	; 0x24
c0de5208:	1a9e      	subs	r6, r3, r2
c0de520a:	1e73      	subs	r3, r6, #1
c0de520c:	2b7f      	cmp	r3, #127	; 0x7f
c0de520e:	f63f ae26 	bhi.w	c0de4e5e <parser_getItem+0xbc6>
c0de5212:	eb06 0308 	add.w	r3, r6, r8
c0de5216:	2b9e      	cmp	r3, #158	; 0x9e
c0de5218:	d968      	bls.n	c0de52ec <parser_getItem+0x1054>
c0de521a:	f04f 0a08 	mov.w	sl, #8
c0de521e:	e61e      	b.n	c0de4e5e <parser_getItem+0xbc6>
c0de5220:	98e8      	ldr	r0, [sp, #928]	; 0x3a0
c0de5222:	f004 fb9f 	bl	c0de9964 <__aeabi_memcpy>
c0de5226:	f04f 0a00 	mov.w	sl, #0
c0de522a:	e60b      	b.n	c0de4e44 <parser_getItem+0xbac>
c0de522c:	2e06      	cmp	r6, #6
c0de522e:	d815      	bhi.n	c0de525c <parser_getItem+0xfc4>
c0de5230:	2000      	movs	r0, #0
c0de5232:	f88d 0046 	strb.w	r0, [sp, #70]	; 0x46
c0de5236:	f642 6030 	movw	r0, #11824	; 0x2e30
c0de523a:	3402      	adds	r4, #2
c0de523c:	f1c6 0706 	rsb	r7, r6, #6
c0de5240:	f8ad 0044 	strh.w	r0, [sp, #68]	; 0x44
c0de5244:	4620      	mov	r0, r4
c0de5246:	4639      	mov	r1, r7
c0de5248:	2230      	movs	r2, #48	; 0x30
c0de524a:	f004 fb8f 	bl	c0de996c <__aeabi_memset>
c0de524e:	4a90      	ldr	r2, [pc, #576]	; (c0de5490 <parser_getItem+0x11f8>)
c0de5250:	19e0      	adds	r0, r4, r7
c0de5252:	f106 0198 	add.w	r1, r6, #152	; 0x98
c0de5256:	447a      	add	r2, pc
c0de5258:	abb2      	add	r3, sp, #712	; 0x2c8
c0de525a:	e011      	b.n	c0de5280 <parser_getItem+0xfe8>
c0de525c:	4d8d      	ldr	r5, [pc, #564]	; (c0de5494 <parser_getItem+0x11fc>)
c0de525e:	4620      	mov	r0, r4
c0de5260:	447d      	add	r5, pc
c0de5262:	21a0      	movs	r1, #160	; 0xa0
c0de5264:	462a      	mov	r2, r5
c0de5266:	4653      	mov	r3, sl
c0de5268:	1fb7      	subs	r7, r6, #6
c0de526a:	f7fe fdcb 	bl	c0de3e04 <snprintf>
c0de526e:	19e0      	adds	r0, r4, r7
c0de5270:	212e      	movs	r1, #46	; 0x2e
c0de5272:	eb0a 0307 	add.w	r3, sl, r7
c0de5276:	f800 1b01 	strb.w	r1, [r0], #1
c0de527a:	f1c6 01a5 	rsb	r1, r6, #165	; 0xa5
c0de527e:	462a      	mov	r2, r5
c0de5280:	f7fe fdc0 	bl	c0de3e04 <snprintf>
c0de5284:	ae11      	add	r6, sp, #68	; 0x44
c0de5286:	4630      	mov	r0, r6
c0de5288:	f004 fbd2 	bl	c0de9a30 <strlen>
c0de528c:	1e81      	subs	r1, r0, #2
c0de528e:	f240 32fe 	movw	r2, #1022	; 0x3fe
c0de5292:	4291      	cmp	r1, r2
c0de5294:	d81c      	bhi.n	c0de52d0 <parser_getItem+0x1038>
c0de5296:	2300      	movs	r3, #0
c0de5298:	f64f 71ff 	movw	r1, #65535	; 0xffff
c0de529c:	2200      	movs	r2, #0
c0de529e:	5cf3      	ldrb	r3, [r6, r3]
c0de52a0:	2b2e      	cmp	r3, #46	; 0x2e
c0de52a2:	bf08      	it	eq
c0de52a4:	4611      	moveq	r1, r2
c0de52a6:	3201      	adds	r2, #1
c0de52a8:	b213      	sxth	r3, r2
c0de52aa:	4298      	cmp	r0, r3
c0de52ac:	b209      	sxth	r1, r1
c0de52ae:	dd01      	ble.n	c0de52b4 <parser_getItem+0x101c>
c0de52b0:	2900      	cmp	r1, #0
c0de52b2:	d4f4      	bmi.n	c0de529e <parser_getItem+0x1006>
c0de52b4:	2900      	cmp	r1, #0
c0de52b6:	d40b      	bmi.n	c0de52d0 <parser_getItem+0x1038>
c0de52b8:	3106      	adds	r1, #6
c0de52ba:	3801      	subs	r0, #1
c0de52bc:	4288      	cmp	r0, r1
c0de52be:	d907      	bls.n	c0de52d0 <parser_getItem+0x1038>
c0de52c0:	2200      	movs	r2, #0
c0de52c2:	5c33      	ldrb	r3, [r6, r0]
c0de52c4:	2b30      	cmp	r3, #48	; 0x30
c0de52c6:	d103      	bne.n	c0de52d0 <parser_getItem+0x1038>
c0de52c8:	5432      	strb	r2, [r6, r0]
c0de52ca:	3801      	subs	r0, #1
c0de52cc:	4288      	cmp	r0, r1
c0de52ce:	d8f8      	bhi.n	c0de52c2 <parser_getItem+0x102a>
c0de52d0:	4a71      	ldr	r2, [pc, #452]	; (c0de5498 <parser_getItem+0x1200>)
c0de52d2:	4b72      	ldr	r3, [pc, #456]	; (c0de549c <parser_getItem+0x1204>)
c0de52d4:	447a      	add	r2, pc
c0de52d6:	447b      	add	r3, pc
c0de52d8:	a8bf      	add	r0, sp, #764	; 0x2fc
c0de52da:	2181      	movs	r1, #129	; 0x81
c0de52dc:	f7fe fd92 	bl	c0de3e04 <snprintf>
c0de52e0:	e70b      	b.n	c0de50fa <parser_getItem+0xe62>
c0de52e2:	bf00      	nop
c0de52e4:	00004d2c 	.word	0x00004d2c
c0de52e8:	0000507b 	.word	0x0000507b
c0de52ec:	1887      	adds	r7, r0, r2
c0de52ee:	1845      	adds	r5, r0, r1
c0de52f0:	a8bf      	add	r0, sp, #764	; 0x2fc
c0de52f2:	4639      	mov	r1, r7
c0de52f4:	4632      	mov	r2, r6
c0de52f6:	f004 fb37 	bl	c0de9968 <__aeabi_memmove>
c0de52fa:	f50d 7a32 	add.w	sl, sp, #712	; 0x2c8
c0de52fe:	4650      	mov	r0, sl
c0de5300:	4629      	mov	r1, r5
c0de5302:	4642      	mov	r2, r8
c0de5304:	f004 fb30 	bl	c0de9968 <__aeabi_memmove>
c0de5308:	4a66      	ldr	r2, [pc, #408]	; (c0de54a4 <parser_getItem+0x120c>)
c0de530a:	a811      	add	r0, sp, #68	; 0x44
c0de530c:	447a      	add	r2, pc
c0de530e:	21a0      	movs	r1, #160	; 0xa0
c0de5310:	4653      	mov	r3, sl
c0de5312:	f7fe fd77 	bl	c0de3e04 <snprintf>
c0de5316:	b2f5      	uxtb	r5, r6
c0de5318:	f001 f85a 	bl	c0de63d0 <tx_is_expert_mode>
c0de531c:	2d05      	cmp	r5, #5
c0de531e:	bf08      	it	eq
c0de5320:	2800      	cmpeq	r0, #0
c0de5322:	d034      	beq.n	c0de538e <parser_getItem+0x10f6>
c0de5324:	4a65      	ldr	r2, [pc, #404]	; (c0de54bc <parser_getItem+0x1224>)
c0de5326:	ae11      	add	r6, sp, #68	; 0x44
c0de5328:	447a      	add	r2, pc
c0de532a:	abbf      	add	r3, sp, #764	; 0x2fc
c0de532c:	4630      	mov	r0, r6
c0de532e:	21a0      	movs	r1, #160	; 0xa0
c0de5330:	f004 fab0 	bl	c0de9894 <z_str3join>
c0de5334:	4630      	mov	r0, r6
c0de5336:	f004 fb7b 	bl	c0de9a30 <strlen>
c0de533a:	4605      	mov	r5, r0
c0de533c:	e9dd 01e8 	ldrd	r0, r1, [sp, #928]	; 0x3a0
c0de5340:	f004 fb19 	bl	c0de9976 <explicit_bzero>
c0de5344:	9804      	ldr	r0, [sp, #16]
c0de5346:	f04f 0a00 	mov.w	sl, #0
c0de534a:	0400      	lsls	r0, r0, #16
c0de534c:	bf18      	it	ne
c0de534e:	ea5f 4005 	movsne.w	r0, r5, lsl #16
c0de5352:	f43f ad84 	beq.w	c0de4e5e <parser_getItem+0xbc6>
c0de5356:	9a04      	ldr	r2, [sp, #16]
c0de5358:	b2a8      	uxth	r0, r5
c0de535a:	b291      	uxth	r1, r2
c0de535c:	fbb0 f1f1 	udiv	r1, r0, r1
c0de5360:	b2e7      	uxtb	r7, r4
c0de5362:	fb01 5012 	mls	r0, r1, r2, r5
c0de5366:	b282      	uxth	r2, r0
c0de5368:	4613      	mov	r3, r2
c0de536a:	2a00      	cmp	r2, #0
c0de536c:	bf18      	it	ne
c0de536e:	2301      	movne	r3, #1
c0de5370:	4419      	add	r1, r3
c0de5372:	b2cb      	uxtb	r3, r1
c0de5374:	42bb      	cmp	r3, r7
c0de5376:	f67f ad95 	bls.w	c0de4ea4 <parser_getItem+0xc0c>
c0de537a:	9903      	ldr	r1, [sp, #12]
c0de537c:	0400      	lsls	r0, r0, #16
c0de537e:	fb07 6101 	mla	r1, r7, r1, r6
c0de5382:	d01e      	beq.n	c0de53c2 <parser_getItem+0x112a>
c0de5384:	1e58      	subs	r0, r3, #1
c0de5386:	42b8      	cmp	r0, r7
c0de5388:	d11b      	bne.n	c0de53c2 <parser_getItem+0x112a>
c0de538a:	98e8      	ldr	r0, [sp, #928]	; 0x3a0
c0de538c:	e01b      	b.n	c0de53c6 <parser_getItem+0x112e>
c0de538e:	4946      	ldr	r1, [pc, #280]	; (c0de54a8 <parser_getItem+0x1210>)
c0de5390:	4638      	mov	r0, r7
c0de5392:	4479      	add	r1, pc
c0de5394:	2205      	movs	r2, #5
c0de5396:	f004 faf4 	bl	c0de9982 <memcmp>
c0de539a:	2800      	cmp	r0, #0
c0de539c:	d1c2      	bne.n	c0de5324 <parser_getItem+0x108c>
c0de539e:	f10d 0844 	add.w	r8, sp, #68	; 0x44
c0de53a2:	4640      	mov	r0, r8
c0de53a4:	21a0      	movs	r1, #160	; 0xa0
c0de53a6:	f004 fae6 	bl	c0de9976 <explicit_bzero>
c0de53aa:	f50d 7a32 	add.w	sl, sp, #712	; 0x2c8
c0de53ae:	4650      	mov	r0, sl
c0de53b0:	f004 fb3e 	bl	c0de9a30 <strlen>
c0de53b4:	4606      	mov	r6, r0
c0de53b6:	3002      	adds	r0, #2
c0de53b8:	28a0      	cmp	r0, #160	; 0xa0
c0de53ba:	d907      	bls.n	c0de53cc <parser_getItem+0x1134>
c0de53bc:	f04f 0a05 	mov.w	sl, #5
c0de53c0:	e54d      	b.n	c0de4e5e <parser_getItem+0xbc6>
c0de53c2:	98e8      	ldr	r0, [sp, #928]	; 0x3a0
c0de53c4:	9a03      	ldr	r2, [sp, #12]
c0de53c6:	f004 facd 	bl	c0de9964 <__aeabi_memcpy>
c0de53ca:	e56b      	b.n	c0de4ea4 <parser_getItem+0xc0c>
c0de53cc:	2e06      	cmp	r6, #6
c0de53ce:	d815      	bhi.n	c0de53fc <parser_getItem+0x1164>
c0de53d0:	2000      	movs	r0, #0
c0de53d2:	9f02      	ldr	r7, [sp, #8]
c0de53d4:	f88d 0046 	strb.w	r0, [sp, #70]	; 0x46
c0de53d8:	f642 6030 	movw	r0, #11824	; 0x2e30
c0de53dc:	f1c6 0506 	rsb	r5, r6, #6
c0de53e0:	f8ad 0044 	strh.w	r0, [sp, #68]	; 0x44
c0de53e4:	4638      	mov	r0, r7
c0de53e6:	4629      	mov	r1, r5
c0de53e8:	2230      	movs	r2, #48	; 0x30
c0de53ea:	f004 fabf 	bl	c0de996c <__aeabi_memset>
c0de53ee:	4a2f      	ldr	r2, [pc, #188]	; (c0de54ac <parser_getItem+0x1214>)
c0de53f0:	1978      	adds	r0, r7, r5
c0de53f2:	f106 0198 	add.w	r1, r6, #152	; 0x98
c0de53f6:	447a      	add	r2, pc
c0de53f8:	abb2      	add	r3, sp, #712	; 0x2c8
c0de53fa:	e012      	b.n	c0de5422 <parser_getItem+0x118a>
c0de53fc:	4f2c      	ldr	r7, [pc, #176]	; (c0de54b0 <parser_getItem+0x1218>)
c0de53fe:	4640      	mov	r0, r8
c0de5400:	447f      	add	r7, pc
c0de5402:	21a0      	movs	r1, #160	; 0xa0
c0de5404:	463a      	mov	r2, r7
c0de5406:	4653      	mov	r3, sl
c0de5408:	1fb5      	subs	r5, r6, #6
c0de540a:	f7fe fcfb 	bl	c0de3e04 <snprintf>
c0de540e:	eb08 0005 	add.w	r0, r8, r5
c0de5412:	212e      	movs	r1, #46	; 0x2e
c0de5414:	eb0a 0305 	add.w	r3, sl, r5
c0de5418:	f800 1b01 	strb.w	r1, [r0], #1
c0de541c:	f1c6 01a5 	rsb	r1, r6, #165	; 0xa5
c0de5420:	463a      	mov	r2, r7
c0de5422:	f7fe fcef 	bl	c0de3e04 <snprintf>
c0de5426:	ae11      	add	r6, sp, #68	; 0x44
c0de5428:	4630      	mov	r0, r6
c0de542a:	f004 fb01 	bl	c0de9a30 <strlen>
c0de542e:	1e81      	subs	r1, r0, #2
c0de5430:	f240 32fe 	movw	r2, #1022	; 0x3fe
c0de5434:	4291      	cmp	r1, r2
c0de5436:	d81c      	bhi.n	c0de5472 <parser_getItem+0x11da>
c0de5438:	2300      	movs	r3, #0
c0de543a:	f64f 71ff 	movw	r1, #65535	; 0xffff
c0de543e:	2200      	movs	r2, #0
c0de5440:	5cf3      	ldrb	r3, [r6, r3]
c0de5442:	2b2e      	cmp	r3, #46	; 0x2e
c0de5444:	bf08      	it	eq
c0de5446:	4611      	moveq	r1, r2
c0de5448:	3201      	adds	r2, #1
c0de544a:	b213      	sxth	r3, r2
c0de544c:	4298      	cmp	r0, r3
c0de544e:	b209      	sxth	r1, r1
c0de5450:	dd01      	ble.n	c0de5456 <parser_getItem+0x11be>
c0de5452:	2900      	cmp	r1, #0
c0de5454:	d4f4      	bmi.n	c0de5440 <parser_getItem+0x11a8>
c0de5456:	2900      	cmp	r1, #0
c0de5458:	d40b      	bmi.n	c0de5472 <parser_getItem+0x11da>
c0de545a:	3106      	adds	r1, #6
c0de545c:	3801      	subs	r0, #1
c0de545e:	4288      	cmp	r0, r1
c0de5460:	d907      	bls.n	c0de5472 <parser_getItem+0x11da>
c0de5462:	2200      	movs	r2, #0
c0de5464:	5c33      	ldrb	r3, [r6, r0]
c0de5466:	2b30      	cmp	r3, #48	; 0x30
c0de5468:	d103      	bne.n	c0de5472 <parser_getItem+0x11da>
c0de546a:	5432      	strb	r2, [r6, r0]
c0de546c:	3801      	subs	r0, #1
c0de546e:	4288      	cmp	r0, r1
c0de5470:	d8f8      	bhi.n	c0de5464 <parser_getItem+0x11cc>
c0de5472:	4a10      	ldr	r2, [pc, #64]	; (c0de54b4 <parser_getItem+0x121c>)
c0de5474:	4b10      	ldr	r3, [pc, #64]	; (c0de54b8 <parser_getItem+0x1220>)
c0de5476:	447a      	add	r2, pc
c0de5478:	447b      	add	r3, pc
c0de547a:	a8bf      	add	r0, sp, #764	; 0x2fc
c0de547c:	2181      	movs	r1, #129	; 0x81
c0de547e:	f7fe fcc1 	bl	c0de3e04 <snprintf>
c0de5482:	e74f      	b.n	c0de5324 <parser_getItem+0x108c>
c0de5484:	00005036 	.word	0x00005036
c0de5488:	00000338 	.word	0x00000338
c0de548c:	00004e73 	.word	0x00004e73
c0de5490:	000049ec 	.word	0x000049ec
c0de5494:	000049e2 	.word	0x000049e2
c0de5498:	0000495a 	.word	0x0000495a
c0de549c:	00004a70 	.word	0x00004a70
c0de54a0:	00004f21 	.word	0x00004f21
c0de54a4:	00004e0c 	.word	0x00004e0c
c0de54a8:	00004c57 	.word	0x00004c57
c0de54ac:	0000484c 	.word	0x0000484c
c0de54b0:	00004842 	.word	0x00004842
c0de54b4:	000047b8 	.word	0x000047b8
c0de54b8:	000048ce 	.word	0x000048ce
c0de54bc:	00004cf7 	.word	0x00004cf7

c0de54c0 <parser_getErrorDescription>:
c0de54c0:	2815      	cmp	r0, #21
c0de54c2:	dc11      	bgt.n	c0de54e8 <parser_getErrorDescription+0x28>
c0de54c4:	280b      	cmp	r0, #11
c0de54c6:	dd21      	ble.n	c0de550c <parser_getErrorDescription+0x4c>
c0de54c8:	2810      	cmp	r0, #16
c0de54ca:	dd37      	ble.n	c0de553c <parser_getErrorDescription+0x7c>
c0de54cc:	2812      	cmp	r0, #18
c0de54ce:	dd5b      	ble.n	c0de5588 <parser_getErrorDescription+0xc8>
c0de54d0:	2813      	cmp	r0, #19
c0de54d2:	f000 8091 	beq.w	c0de55f8 <parser_getErrorDescription+0x138>
c0de54d6:	2814      	cmp	r0, #20
c0de54d8:	f000 8091 	beq.w	c0de55fe <parser_getErrorDescription+0x13e>
c0de54dc:	2815      	cmp	r0, #21
c0de54de:	f040 80c1 	bne.w	c0de5664 <parser_getErrorDescription+0x1a4>
c0de54e2:	4869      	ldr	r0, [pc, #420]	; (c0de5688 <parser_getErrorDescription+0x1c8>)
c0de54e4:	4478      	add	r0, pc
c0de54e6:	4770      	bx	lr
c0de54e8:	281d      	cmp	r0, #29
c0de54ea:	dd1b      	ble.n	c0de5524 <parser_getErrorDescription+0x64>
c0de54ec:	2821      	cmp	r0, #33	; 0x21
c0de54ee:	dd2f      	ble.n	c0de5550 <parser_getErrorDescription+0x90>
c0de54f0:	2823      	cmp	r0, #35	; 0x23
c0de54f2:	dd50      	ble.n	c0de5596 <parser_getErrorDescription+0xd6>
c0de54f4:	2824      	cmp	r0, #36	; 0x24
c0de54f6:	f000 8085 	beq.w	c0de5604 <parser_getErrorDescription+0x144>
c0de54fa:	2825      	cmp	r0, #37	; 0x25
c0de54fc:	f000 8085 	beq.w	c0de560a <parser_getErrorDescription+0x14a>
c0de5500:	2826      	cmp	r0, #38	; 0x26
c0de5502:	f040 80af 	bne.w	c0de5664 <parser_getErrorDescription+0x1a4>
c0de5506:	4868      	ldr	r0, [pc, #416]	; (c0de56a8 <parser_getErrorDescription+0x1e8>)
c0de5508:	4478      	add	r0, pc
c0de550a:	4770      	bx	lr
c0de550c:	2803      	cmp	r0, #3
c0de550e:	dc29      	bgt.n	c0de5564 <parser_getErrorDescription+0xa4>
c0de5510:	2801      	cmp	r0, #1
c0de5512:	dc47      	bgt.n	c0de55a4 <parser_getErrorDescription+0xe4>
c0de5514:	2800      	cmp	r0, #0
c0de5516:	d07b      	beq.n	c0de5610 <parser_getErrorDescription+0x150>
c0de5518:	2801      	cmp	r0, #1
c0de551a:	f040 80a3 	bne.w	c0de5664 <parser_getErrorDescription+0x1a4>
c0de551e:	4863      	ldr	r0, [pc, #396]	; (c0de56ac <parser_getErrorDescription+0x1ec>)
c0de5520:	4478      	add	r0, pc
c0de5522:	4770      	bx	lr
c0de5524:	2819      	cmp	r0, #25
c0de5526:	dc26      	bgt.n	c0de5576 <parser_getErrorDescription+0xb6>
c0de5528:	2817      	cmp	r0, #23
c0de552a:	dc42      	bgt.n	c0de55b2 <parser_getErrorDescription+0xf2>
c0de552c:	2816      	cmp	r0, #22
c0de552e:	d072      	beq.n	c0de5616 <parser_getErrorDescription+0x156>
c0de5530:	2817      	cmp	r0, #23
c0de5532:	f040 8097 	bne.w	c0de5664 <parser_getErrorDescription+0x1a4>
c0de5536:	4855      	ldr	r0, [pc, #340]	; (c0de568c <parser_getErrorDescription+0x1cc>)
c0de5538:	4478      	add	r0, pc
c0de553a:	4770      	bx	lr
c0de553c:	280d      	cmp	r0, #13
c0de553e:	dc3f      	bgt.n	c0de55c0 <parser_getErrorDescription+0x100>
c0de5540:	280c      	cmp	r0, #12
c0de5542:	d06b      	beq.n	c0de561c <parser_getErrorDescription+0x15c>
c0de5544:	280d      	cmp	r0, #13
c0de5546:	f040 808d 	bne.w	c0de5664 <parser_getErrorDescription+0x1a4>
c0de554a:	484c      	ldr	r0, [pc, #304]	; (c0de567c <parser_getErrorDescription+0x1bc>)
c0de554c:	4478      	add	r0, pc
c0de554e:	4770      	bx	lr
c0de5550:	281f      	cmp	r0, #31
c0de5552:	dc3c      	bgt.n	c0de55ce <parser_getErrorDescription+0x10e>
c0de5554:	281e      	cmp	r0, #30
c0de5556:	d064      	beq.n	c0de5622 <parser_getErrorDescription+0x162>
c0de5558:	281f      	cmp	r0, #31
c0de555a:	f040 8083 	bne.w	c0de5664 <parser_getErrorDescription+0x1a4>
c0de555e:	484f      	ldr	r0, [pc, #316]	; (c0de569c <parser_getErrorDescription+0x1dc>)
c0de5560:	4478      	add	r0, pc
c0de5562:	4770      	bx	lr
c0de5564:	2807      	cmp	r0, #7
c0de5566:	dc39      	bgt.n	c0de55dc <parser_getErrorDescription+0x11c>
c0de5568:	2804      	cmp	r0, #4
c0de556a:	d05d      	beq.n	c0de5628 <parser_getErrorDescription+0x168>
c0de556c:	2806      	cmp	r0, #6
c0de556e:	d179      	bne.n	c0de5664 <parser_getErrorDescription+0x1a4>
c0de5570:	4840      	ldr	r0, [pc, #256]	; (c0de5674 <parser_getErrorDescription+0x1b4>)
c0de5572:	4478      	add	r0, pc
c0de5574:	4770      	bx	lr
c0de5576:	281b      	cmp	r0, #27
c0de5578:	dc37      	bgt.n	c0de55ea <parser_getErrorDescription+0x12a>
c0de557a:	281a      	cmp	r0, #26
c0de557c:	d057      	beq.n	c0de562e <parser_getErrorDescription+0x16e>
c0de557e:	281b      	cmp	r0, #27
c0de5580:	d170      	bne.n	c0de5664 <parser_getErrorDescription+0x1a4>
c0de5582:	4844      	ldr	r0, [pc, #272]	; (c0de5694 <parser_getErrorDescription+0x1d4>)
c0de5584:	4478      	add	r0, pc
c0de5586:	4770      	bx	lr
c0de5588:	2811      	cmp	r0, #17
c0de558a:	d053      	beq.n	c0de5634 <parser_getErrorDescription+0x174>
c0de558c:	2812      	cmp	r0, #18
c0de558e:	d169      	bne.n	c0de5664 <parser_getErrorDescription+0x1a4>
c0de5590:	483c      	ldr	r0, [pc, #240]	; (c0de5684 <parser_getErrorDescription+0x1c4>)
c0de5592:	4478      	add	r0, pc
c0de5594:	4770      	bx	lr
c0de5596:	2822      	cmp	r0, #34	; 0x22
c0de5598:	d04f      	beq.n	c0de563a <parser_getErrorDescription+0x17a>
c0de559a:	2823      	cmp	r0, #35	; 0x23
c0de559c:	d162      	bne.n	c0de5664 <parser_getErrorDescription+0x1a4>
c0de559e:	4841      	ldr	r0, [pc, #260]	; (c0de56a4 <parser_getErrorDescription+0x1e4>)
c0de55a0:	4478      	add	r0, pc
c0de55a2:	4770      	bx	lr
c0de55a4:	2802      	cmp	r0, #2
c0de55a6:	d04b      	beq.n	c0de5640 <parser_getErrorDescription+0x180>
c0de55a8:	2803      	cmp	r0, #3
c0de55aa:	d15b      	bne.n	c0de5664 <parser_getErrorDescription+0x1a4>
c0de55ac:	4830      	ldr	r0, [pc, #192]	; (c0de5670 <parser_getErrorDescription+0x1b0>)
c0de55ae:	4478      	add	r0, pc
c0de55b0:	4770      	bx	lr
c0de55b2:	2818      	cmp	r0, #24
c0de55b4:	d047      	beq.n	c0de5646 <parser_getErrorDescription+0x186>
c0de55b6:	2819      	cmp	r0, #25
c0de55b8:	d154      	bne.n	c0de5664 <parser_getErrorDescription+0x1a4>
c0de55ba:	4835      	ldr	r0, [pc, #212]	; (c0de5690 <parser_getErrorDescription+0x1d0>)
c0de55bc:	4478      	add	r0, pc
c0de55be:	4770      	bx	lr
c0de55c0:	280e      	cmp	r0, #14
c0de55c2:	d043      	beq.n	c0de564c <parser_getErrorDescription+0x18c>
c0de55c4:	280f      	cmp	r0, #15
c0de55c6:	d14d      	bne.n	c0de5664 <parser_getErrorDescription+0x1a4>
c0de55c8:	482d      	ldr	r0, [pc, #180]	; (c0de5680 <parser_getErrorDescription+0x1c0>)
c0de55ca:	4478      	add	r0, pc
c0de55cc:	4770      	bx	lr
c0de55ce:	2820      	cmp	r0, #32
c0de55d0:	d03f      	beq.n	c0de5652 <parser_getErrorDescription+0x192>
c0de55d2:	2821      	cmp	r0, #33	; 0x21
c0de55d4:	d146      	bne.n	c0de5664 <parser_getErrorDescription+0x1a4>
c0de55d6:	4832      	ldr	r0, [pc, #200]	; (c0de56a0 <parser_getErrorDescription+0x1e0>)
c0de55d8:	4478      	add	r0, pc
c0de55da:	4770      	bx	lr
c0de55dc:	2808      	cmp	r0, #8
c0de55de:	d03b      	beq.n	c0de5658 <parser_getErrorDescription+0x198>
c0de55e0:	280b      	cmp	r0, #11
c0de55e2:	d13f      	bne.n	c0de5664 <parser_getErrorDescription+0x1a4>
c0de55e4:	4824      	ldr	r0, [pc, #144]	; (c0de5678 <parser_getErrorDescription+0x1b8>)
c0de55e6:	4478      	add	r0, pc
c0de55e8:	4770      	bx	lr
c0de55ea:	281c      	cmp	r0, #28
c0de55ec:	d037      	beq.n	c0de565e <parser_getErrorDescription+0x19e>
c0de55ee:	281d      	cmp	r0, #29
c0de55f0:	d138      	bne.n	c0de5664 <parser_getErrorDescription+0x1a4>
c0de55f2:	4829      	ldr	r0, [pc, #164]	; (c0de5698 <parser_getErrorDescription+0x1d8>)
c0de55f4:	4478      	add	r0, pc
c0de55f6:	4770      	bx	lr
c0de55f8:	4832      	ldr	r0, [pc, #200]	; (c0de56c4 <parser_getErrorDescription+0x204>)
c0de55fa:	4478      	add	r0, pc
c0de55fc:	4770      	bx	lr
c0de55fe:	483c      	ldr	r0, [pc, #240]	; (c0de56f0 <parser_getErrorDescription+0x230>)
c0de5600:	4478      	add	r0, pc
c0de5602:	4770      	bx	lr
c0de5604:	4838      	ldr	r0, [pc, #224]	; (c0de56e8 <parser_getErrorDescription+0x228>)
c0de5606:	4478      	add	r0, pc
c0de5608:	4770      	bx	lr
c0de560a:	4838      	ldr	r0, [pc, #224]	; (c0de56ec <parser_getErrorDescription+0x22c>)
c0de560c:	4478      	add	r0, pc
c0de560e:	4770      	bx	lr
c0de5610:	4816      	ldr	r0, [pc, #88]	; (c0de566c <parser_getErrorDescription+0x1ac>)
c0de5612:	4478      	add	r0, pc
c0de5614:	4770      	bx	lr
c0de5616:	482d      	ldr	r0, [pc, #180]	; (c0de56cc <parser_getErrorDescription+0x20c>)
c0de5618:	4478      	add	r0, pc
c0de561a:	4770      	bx	lr
c0de561c:	4826      	ldr	r0, [pc, #152]	; (c0de56b8 <parser_getErrorDescription+0x1f8>)
c0de561e:	4478      	add	r0, pc
c0de5620:	4770      	bx	lr
c0de5622:	482e      	ldr	r0, [pc, #184]	; (c0de56dc <parser_getErrorDescription+0x21c>)
c0de5624:	4478      	add	r0, pc
c0de5626:	4770      	bx	lr
c0de5628:	4827      	ldr	r0, [pc, #156]	; (c0de56c8 <parser_getErrorDescription+0x208>)
c0de562a:	4478      	add	r0, pc
c0de562c:	4770      	bx	lr
c0de562e:	4829      	ldr	r0, [pc, #164]	; (c0de56d4 <parser_getErrorDescription+0x214>)
c0de5630:	4478      	add	r0, pc
c0de5632:	4770      	bx	lr
c0de5634:	4822      	ldr	r0, [pc, #136]	; (c0de56c0 <parser_getErrorDescription+0x200>)
c0de5636:	4478      	add	r0, pc
c0de5638:	4770      	bx	lr
c0de563a:	482a      	ldr	r0, [pc, #168]	; (c0de56e4 <parser_getErrorDescription+0x224>)
c0de563c:	4478      	add	r0, pc
c0de563e:	4770      	bx	lr
c0de5640:	481b      	ldr	r0, [pc, #108]	; (c0de56b0 <parser_getErrorDescription+0x1f0>)
c0de5642:	4478      	add	r0, pc
c0de5644:	4770      	bx	lr
c0de5646:	4822      	ldr	r0, [pc, #136]	; (c0de56d0 <parser_getErrorDescription+0x210>)
c0de5648:	4478      	add	r0, pc
c0de564a:	4770      	bx	lr
c0de564c:	481b      	ldr	r0, [pc, #108]	; (c0de56bc <parser_getErrorDescription+0x1fc>)
c0de564e:	4478      	add	r0, pc
c0de5650:	4770      	bx	lr
c0de5652:	4823      	ldr	r0, [pc, #140]	; (c0de56e0 <parser_getErrorDescription+0x220>)
c0de5654:	4478      	add	r0, pc
c0de5656:	4770      	bx	lr
c0de5658:	4816      	ldr	r0, [pc, #88]	; (c0de56b4 <parser_getErrorDescription+0x1f4>)
c0de565a:	4478      	add	r0, pc
c0de565c:	4770      	bx	lr
c0de565e:	481e      	ldr	r0, [pc, #120]	; (c0de56d8 <parser_getErrorDescription+0x218>)
c0de5660:	4478      	add	r0, pc
c0de5662:	4770      	bx	lr
c0de5664:	4823      	ldr	r0, [pc, #140]	; (c0de56f4 <parser_getErrorDescription+0x234>)
c0de5666:	4478      	add	r0, pc
c0de5668:	4770      	bx	lr
c0de566a:	bf00      	nop
c0de566c:	000044d1 	.word	0x000044d1
c0de5670:	00004697 	.word	0x00004697
c0de5674:	000048df 	.word	0x000048df
c0de5678:	00004acd 	.word	0x00004acd
c0de567c:	00004640 	.word	0x00004640
c0de5680:	00004740 	.word	0x00004740
c0de5684:	0000478b 	.word	0x0000478b
c0de5688:	00004b77 	.word	0x00004b77
c0de568c:	00004824 	.word	0x00004824
c0de5690:	0000485f 	.word	0x0000485f
c0de5694:	0000490c 	.word	0x0000490c
c0de5698:	00004609 	.word	0x00004609
c0de569c:	0000489f 	.word	0x0000489f
c0de56a0:	000045f4 	.word	0x000045f4
c0de56a4:	000049ef 	.word	0x000049ef
c0de56a8:	000046da 	.word	0x000046da
c0de56ac:	00004a62 	.word	0x00004a62
c0de56b0:	0000491b 	.word	0x0000491b
c0de56b4:	00004a43 	.word	0x00004a43
c0de56b8:	00004558 	.word	0x00004558
c0de56bc:	000049d2 	.word	0x000049d2
c0de56c0:	00004715 	.word	0x00004715
c0de56c4:	00004a42 	.word	0x00004a42
c0de56c8:	000044c2 	.word	0x000044c2
c0de56cc:	0000459e 	.word	0x0000459e
c0de56d0:	000049a7 	.word	0x000049a7
c0de56d4:	0000477a 	.word	0x0000477a
c0de56d8:	000048e7 	.word	0x000048e7
c0de56dc:	000048a4 	.word	0x000048a4
c0de56e0:	000045bb 	.word	0x000045bb
c0de56e4:	00004654 	.word	0x00004654
c0de56e8:	0000469e 	.word	0x0000469e
c0de56ec:	00004654 	.word	0x00004654
c0de56f0:	0000459d 	.word	0x0000459d
c0de56f4:	00004949 	.word	0x00004949

c0de56f8 <_read_json_tx>:
c0de56f8:	b5b0      	push	{r4, r5, r7, lr}
c0de56fa:	4d0e      	ldr	r5, [pc, #56]	; (c0de5734 <_read_json_tx+0x3c>)
c0de56fc:	4604      	mov	r4, r0
c0de56fe:	6801      	ldr	r1, [r0, #0]
c0de5700:	8882      	ldrh	r2, [r0, #4]
c0de5702:	eb09 0005 	add.w	r0, r9, r5
c0de5706:	3008      	adds	r0, #8
c0de5708:	f7fd fcdf 	bl	c0de30ca <json_parse>
c0de570c:	b100      	cbz	r0, c0de5710 <_read_json_tx+0x18>
c0de570e:	bdb0      	pop	{r4, r5, r7, pc}
c0de5710:	eb09 0205 	add.w	r2, r9, r5
c0de5714:	f641 0318 	movw	r3, #6168	; 0x1818
c0de5718:	6821      	ldr	r1, [r4, #0]
c0de571a:	5cd5      	ldrb	r5, [r2, r3]
c0de571c:	6051      	str	r1, [r2, #4]
c0de571e:	f005 01fe 	and.w	r1, r5, #254	; 0xfe
c0de5722:	54d1      	strb	r1, [r2, r3]
c0de5724:	f641 0119 	movw	r1, #6169	; 0x1819
c0de5728:	2300      	movs	r3, #0
c0de572a:	5453      	strb	r3, [r2, r1]
c0de572c:	f44f 51c1 	mov.w	r1, #6176	; 0x1820
c0de5730:	5453      	strb	r3, [r2, r1]
c0de5732:	bdb0      	pop	{r4, r5, r7, pc}
c0de5734:	00000338 	.word	0x00000338

c0de5738 <_read_text_tx>:
c0de5738:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de573c:	b09a      	sub	sp, #104	; 0x68
c0de573e:	460d      	mov	r5, r1
c0de5740:	4604      	mov	r4, r0
c0de5742:	f004 f8fd 	bl	c0de9940 <check_app_canary>
c0de5746:	6820      	ldr	r0, [r4, #0]
c0de5748:	88e1      	ldrh	r1, [r4, #6]
c0de574a:	88a2      	ldrh	r2, [r4, #4]
c0de574c:	4408      	add	r0, r1
c0de574e:	1a51      	subs	r1, r2, r1
c0de5750:	af12      	add	r7, sp, #72	; 0x48
c0de5752:	ab10      	add	r3, sp, #64	; 0x40
c0de5754:	2200      	movs	r2, #0
c0de5756:	9700      	str	r7, [sp, #0]
c0de5758:	f7fc fce4 	bl	c0de2124 <cbor_parser_init>
c0de575c:	b118      	cbz	r0, c0de5766 <_read_text_tx+0x2e>
c0de575e:	f7fc fb57 	bl	c0de1e10 <parser_mapCborError>
c0de5762:	4606      	mov	r6, r0
c0de5764:	e034      	b.n	c0de57d0 <_read_text_tx+0x98>
c0de5766:	f004 f8eb 	bl	c0de9940 <check_app_canary>
c0de576a:	f89d 0056 	ldrb.w	r0, [sp, #86]	; 0x56
c0de576e:	28a0      	cmp	r0, #160	; 0xa0
c0de5770:	d12d      	bne.n	c0de57ce <_read_text_tx+0x96>
c0de5772:	a812      	add	r0, sp, #72	; 0x48
c0de5774:	a916      	add	r1, sp, #88	; 0x58
c0de5776:	f7fc fe9d 	bl	c0de24b4 <cbor_value_enter_container>
c0de577a:	2800      	cmp	r0, #0
c0de577c:	d1ef      	bne.n	c0de575e <_read_text_tx+0x26>
c0de577e:	f89d 0066 	ldrb.w	r0, [sp, #102]	; 0x66
c0de5782:	bb20      	cbnz	r0, c0de57ce <_read_text_tx+0x96>
c0de5784:	f89d 1067 	ldrb.w	r1, [sp, #103]	; 0x67
c0de5788:	0788      	lsls	r0, r1, #30
c0de578a:	d402      	bmi.n	c0de5792 <_read_text_tx+0x5a>
c0de578c:	f8bd 0064 	ldrh.w	r0, [sp, #100]	; 0x64
c0de5790:	e004      	b.n	c0de579c <_read_text_tx+0x64>
c0de5792:	a816      	add	r0, sp, #88	; 0x58
c0de5794:	f7fc fc76 	bl	c0de2084 <_cbor_value_decode_int64_internal>
c0de5798:	f89d 1067 	ldrb.w	r1, [sp, #103]	; 0x67
c0de579c:	0149      	lsls	r1, r1, #5
c0de579e:	b249      	sxtb	r1, r1
c0de57a0:	ea80 10e1 	eor.w	r0, r0, r1, asr #7
c0de57a4:	2801      	cmp	r0, #1
c0de57a6:	d112      	bne.n	c0de57ce <_read_text_tx+0x96>
c0de57a8:	a816      	add	r0, sp, #88	; 0x58
c0de57aa:	f7fc fe10 	bl	c0de23ce <cbor_value_advance>
c0de57ae:	2800      	cmp	r0, #0
c0de57b0:	d1d5      	bne.n	c0de575e <_read_text_tx+0x26>
c0de57b2:	f89d 0066 	ldrb.w	r0, [sp, #102]	; 0x66
c0de57b6:	2880      	cmp	r0, #128	; 0x80
c0de57b8:	d109      	bne.n	c0de57ce <_read_text_tx+0x96>
c0de57ba:	f89d 0067 	ldrb.w	r0, [sp, #103]	; 0x67
c0de57be:	06c1      	lsls	r1, r0, #27
c0de57c0:	d466      	bmi.n	c0de5890 <_read_text_tx+0x158>
c0de57c2:	0780      	lsls	r0, r0, #30
c0de57c4:	d408      	bmi.n	c0de57d8 <_read_text_tx+0xa0>
c0de57c6:	f8bd 0064 	ldrh.w	r0, [sp, #100]	; 0x64
c0de57ca:	6068      	str	r0, [r5, #4]
c0de57cc:	e00a      	b.n	c0de57e4 <_read_text_tx+0xac>
c0de57ce:	2606      	movs	r6, #6
c0de57d0:	b2f0      	uxtb	r0, r6
c0de57d2:	b01a      	add	sp, #104	; 0x68
c0de57d4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de57d8:	a816      	add	r0, sp, #88	; 0x58
c0de57da:	f7fc fc53 	bl	c0de2084 <_cbor_value_decode_int64_internal>
c0de57de:	2900      	cmp	r1, #0
c0de57e0:	6068      	str	r0, [r5, #4]
c0de57e2:	d159      	bne.n	c0de5898 <_read_text_tx+0x160>
c0de57e4:	3801      	subs	r0, #1
c0de57e6:	28fe      	cmp	r0, #254	; 0xfe
c0de57e8:	d854      	bhi.n	c0de5894 <_read_text_tx+0x15c>
c0de57ea:	a816      	add	r0, sp, #88	; 0x58
c0de57ec:	a90c      	add	r1, sp, #48	; 0x30
c0de57ee:	f7fc fe61 	bl	c0de24b4 <cbor_value_enter_container>
c0de57f2:	2800      	cmp	r0, #0
c0de57f4:	d1b3      	bne.n	c0de575e <_read_text_tx+0x26>
c0de57f6:	6868      	ldr	r0, [r5, #4]
c0de57f8:	b3d8      	cbz	r0, c0de5872 <_read_text_tx+0x13a>
c0de57fa:	2700      	movs	r7, #0
c0de57fc:	f10d 0a08 	add.w	sl, sp, #8
c0de5800:	f10d 0b30 	add.w	fp, sp, #48	; 0x30
c0de5804:	f10d 0820 	add.w	r8, sp, #32
c0de5808:	4650      	mov	r0, sl
c0de580a:	2118      	movs	r1, #24
c0de580c:	f004 f8b3 	bl	c0de9976 <explicit_bzero>
c0de5810:	f89d 003f 	ldrb.w	r0, [sp, #63]	; 0x3f
c0de5814:	06c1      	lsls	r1, r0, #27
c0de5816:	d43b      	bmi.n	c0de5890 <_read_text_tx+0x158>
c0de5818:	0780      	lsls	r0, r0, #30
c0de581a:	d403      	bmi.n	c0de5824 <_read_text_tx+0xec>
c0de581c:	f8bd 003c 	ldrh.w	r0, [sp, #60]	; 0x3c
c0de5820:	9002      	str	r0, [sp, #8]
c0de5822:	e004      	b.n	c0de582e <_read_text_tx+0xf6>
c0de5824:	4658      	mov	r0, fp
c0de5826:	f7fc fc2d 	bl	c0de2084 <_cbor_value_decode_int64_internal>
c0de582a:	9002      	str	r0, [sp, #8]
c0de582c:	bba1      	cbnz	r1, c0de5898 <_read_text_tx+0x160>
c0de582e:	3801      	subs	r0, #1
c0de5830:	2803      	cmp	r0, #3
c0de5832:	d834      	bhi.n	c0de589e <_read_text_tx+0x166>
c0de5834:	4658      	mov	r0, fp
c0de5836:	4641      	mov	r1, r8
c0de5838:	f7fc fe3c 	bl	c0de24b4 <cbor_value_enter_container>
c0de583c:	2800      	cmp	r0, #0
c0de583e:	f47f af8e 	bne.w	c0de575e <_read_text_tx+0x26>
c0de5842:	4640      	mov	r0, r8
c0de5844:	4651      	mov	r1, sl
c0de5846:	f7fc fc07 	bl	c0de2058 <cbor_check_expert>
c0de584a:	4606      	mov	r6, r0
c0de584c:	f004 f878 	bl	c0de9940 <check_app_canary>
c0de5850:	2e00      	cmp	r6, #0
c0de5852:	d1bd      	bne.n	c0de57d0 <_read_text_tx+0x98>
c0de5854:	f89d 001d 	ldrb.w	r0, [sp, #29]
c0de5858:	7a29      	ldrb	r1, [r5, #8]
c0de585a:	4408      	add	r0, r1
c0de585c:	7228      	strb	r0, [r5, #8]
c0de585e:	4658      	mov	r0, fp
c0de5860:	f7fc fdb5 	bl	c0de23ce <cbor_value_advance>
c0de5864:	2800      	cmp	r0, #0
c0de5866:	f47f af7a 	bne.w	c0de575e <_read_text_tx+0x26>
c0de586a:	6868      	ldr	r0, [r5, #4]
c0de586c:	3701      	adds	r7, #1
c0de586e:	4287      	cmp	r7, r0
c0de5870:	d3ca      	bcc.n	c0de5808 <_read_text_tx+0xd0>
c0de5872:	a816      	add	r0, sp, #88	; 0x58
c0de5874:	a90c      	add	r1, sp, #48	; 0x30
c0de5876:	f7fc fe9d 	bl	c0de25b4 <cbor_value_leave_container>
c0de587a:	2800      	cmp	r0, #0
c0de587c:	f47f af6f 	bne.w	c0de575e <_read_text_tx+0x26>
c0de5880:	6820      	ldr	r0, [r4, #0]
c0de5882:	88a1      	ldrh	r1, [r4, #4]
c0de5884:	9a17      	ldr	r2, [sp, #92]	; 0x5c
c0de5886:	4408      	add	r0, r1
c0de5888:	1a16      	subs	r6, r2, r0
c0de588a:	bf18      	it	ne
c0de588c:	2622      	movne	r6, #34	; 0x22
c0de588e:	e79f      	b.n	c0de57d0 <_read_text_tx+0x98>
c0de5890:	2002      	movs	r0, #2
c0de5892:	e764      	b.n	c0de575e <_read_text_tx+0x26>
c0de5894:	260a      	movs	r6, #10
c0de5896:	e79b      	b.n	c0de57d0 <_read_text_tx+0x98>
c0de5898:	f44f 6080 	mov.w	r0, #1024	; 0x400
c0de589c:	e75f      	b.n	c0de575e <_read_text_tx+0x26>
c0de589e:	2609      	movs	r6, #9
c0de58a0:	e796      	b.n	c0de57d0 <_read_text_tx+0x98>
	...

c0de58a4 <pic_internal>:
c0de58a4:	467a      	mov	r2, pc
c0de58a6:	4902      	ldr	r1, [pc, #8]	; (c0de58b0 <pic_internal+0xc>)
c0de58a8:	1cc9      	adds	r1, r1, #3
c0de58aa:	1a89      	subs	r1, r1, r2
c0de58ac:	1a40      	subs	r0, r0, r1
c0de58ae:	4770      	bx	lr
c0de58b0:	c0de58a5 	.word	0xc0de58a5

c0de58b4 <pic>:
c0de58b4:	490a      	ldr	r1, [pc, #40]	; (c0de58e0 <pic+0x2c>)
c0de58b6:	4281      	cmp	r1, r0
c0de58b8:	490a      	ldr	r1, [pc, #40]	; (c0de58e4 <pic+0x30>)
c0de58ba:	d806      	bhi.n	c0de58ca <pic+0x16>
c0de58bc:	4281      	cmp	r1, r0
c0de58be:	d304      	bcc.n	c0de58ca <pic+0x16>
c0de58c0:	b580      	push	{r7, lr}
c0de58c2:	f7ff ffef 	bl	c0de58a4 <pic_internal>
c0de58c6:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de58ca:	4907      	ldr	r1, [pc, #28]	; (c0de58e8 <pic+0x34>)
c0de58cc:	4288      	cmp	r0, r1
c0de58ce:	4a07      	ldr	r2, [pc, #28]	; (c0de58ec <pic+0x38>)
c0de58d0:	d305      	bcc.n	c0de58de <pic+0x2a>
c0de58d2:	4290      	cmp	r0, r2
c0de58d4:	bf88      	it	hi
c0de58d6:	4770      	bxhi	lr
c0de58d8:	1a40      	subs	r0, r0, r1
c0de58da:	464a      	mov	r2, r9
c0de58dc:	4410      	add	r0, r2
c0de58de:	4770      	bx	lr
c0de58e0:	c0de0000 	.word	0xc0de0000
c0de58e4:	c0df1400 	.word	0xc0df1400
c0de58e8:	da7a0000 	.word	0xda7a0000
c0de58ec:	da7a7800 	.word	0xda7a7800

c0de58f0 <bech32_polymod_step>:
c0de58f0:	4910      	ldr	r1, [pc, #64]	; (c0de5934 <bech32_polymod_step+0x44>)
c0de58f2:	f3c0 6240 	ubfx	r2, r0, #25, #1
c0de58f6:	4b10      	ldr	r3, [pc, #64]	; (c0de5938 <bech32_polymod_step+0x48>)
c0de58f8:	4252      	negs	r2, r2
c0de58fa:	ea01 1140 	and.w	r1, r1, r0, lsl #5
c0de58fe:	401a      	ands	r2, r3
c0de5900:	4051      	eors	r1, r2
c0de5902:	f3c0 6280 	ubfx	r2, r0, #26, #1
c0de5906:	4b0d      	ldr	r3, [pc, #52]	; (c0de593c <bech32_polymod_step+0x4c>)
c0de5908:	4252      	negs	r2, r2
c0de590a:	401a      	ands	r2, r3
c0de590c:	4051      	eors	r1, r2
c0de590e:	f3c0 62c0 	ubfx	r2, r0, #27, #1
c0de5912:	4b0b      	ldr	r3, [pc, #44]	; (c0de5940 <bech32_polymod_step+0x50>)
c0de5914:	4252      	negs	r2, r2
c0de5916:	401a      	ands	r2, r3
c0de5918:	4051      	eors	r1, r2
c0de591a:	f3c0 7200 	ubfx	r2, r0, #28, #1
c0de591e:	4b09      	ldr	r3, [pc, #36]	; (c0de5944 <bech32_polymod_step+0x54>)
c0de5920:	4252      	negs	r2, r2
c0de5922:	401a      	ands	r2, r3
c0de5924:	4051      	eors	r1, r2
c0de5926:	f3c0 7040 	ubfx	r0, r0, #29, #1
c0de592a:	4a07      	ldr	r2, [pc, #28]	; (c0de5948 <bech32_polymod_step+0x58>)
c0de592c:	4240      	negs	r0, r0
c0de592e:	4010      	ands	r0, r2
c0de5930:	4048      	eors	r0, r1
c0de5932:	4770      	bx	lr
c0de5934:	3fffffe0 	.word	0x3fffffe0
c0de5938:	3b6a57b2 	.word	0x3b6a57b2
c0de593c:	26508e6d 	.word	0x26508e6d
c0de5940:	1ea119fa 	.word	0x1ea119fa
c0de5944:	3d4233dd 	.word	0x3d4233dd
c0de5948:	2a1462b3 	.word	0x2a1462b3

c0de594c <bech32_encode>:
c0de594c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5950:	b082      	sub	sp, #8
c0de5952:	f891 8000 	ldrb.w	r8, [r1]
c0de5956:	469a      	mov	sl, r3
c0de5958:	4693      	mov	fp, r2
c0de595a:	f1b8 0f00 	cmp.w	r8, #0
c0de595e:	4604      	mov	r4, r0
c0de5960:	9101      	str	r1, [sp, #4]
c0de5962:	d017      	beq.n	c0de5994 <bech32_encode+0x48>
c0de5964:	1c4d      	adds	r5, r1, #1
c0de5966:	2001      	movs	r0, #1
c0de5968:	2600      	movs	r6, #0
c0de596a:	4647      	mov	r7, r8
c0de596c:	f1a7 0121 	sub.w	r1, r7, #33	; 0x21
c0de5970:	295d      	cmp	r1, #93	; 0x5d
c0de5972:	f04f 0100 	mov.w	r1, #0
c0de5976:	d862      	bhi.n	c0de5a3e <bech32_encode+0xf2>
c0de5978:	f1a7 0241 	sub.w	r2, r7, #65	; 0x41
c0de597c:	2a1a      	cmp	r2, #26
c0de597e:	d35e      	bcc.n	c0de5a3e <bech32_encode+0xf2>
c0de5980:	f7ff ffb6 	bl	c0de58f0 <bech32_polymod_step>
c0de5984:	ea80 1057 	eor.w	r0, r0, r7, lsr #5
c0de5988:	5daf      	ldrb	r7, [r5, r6]
c0de598a:	1c71      	adds	r1, r6, #1
c0de598c:	2f00      	cmp	r7, #0
c0de598e:	460e      	mov	r6, r1
c0de5990:	d1ec      	bne.n	c0de596c <bech32_encode+0x20>
c0de5992:	e001      	b.n	c0de5998 <bech32_encode+0x4c>
c0de5994:	2100      	movs	r1, #0
c0de5996:	2001      	movs	r0, #1
c0de5998:	4451      	add	r1, sl
c0de599a:	3107      	adds	r1, #7
c0de599c:	295a      	cmp	r1, #90	; 0x5a
c0de599e:	d901      	bls.n	c0de59a4 <bech32_encode+0x58>
c0de59a0:	2100      	movs	r1, #0
c0de59a2:	e04c      	b.n	c0de5a3e <bech32_encode+0xf2>
c0de59a4:	f7ff ffa4 	bl	c0de58f0 <bech32_polymod_step>
c0de59a8:	f1b8 0f00 	cmp.w	r8, #0
c0de59ac:	d00e      	beq.n	c0de59cc <bech32_encode+0x80>
c0de59ae:	9901      	ldr	r1, [sp, #4]
c0de59b0:	1c4d      	adds	r5, r1, #1
c0de59b2:	bf00      	nop
c0de59b4:	f7ff ff9c 	bl	c0de58f0 <bech32_polymod_step>
c0de59b8:	f804 8b01 	strb.w	r8, [r4], #1
c0de59bc:	f008 011f 	and.w	r1, r8, #31
c0de59c0:	f815 8b01 	ldrb.w	r8, [r5], #1
c0de59c4:	4048      	eors	r0, r1
c0de59c6:	f1b8 0f00 	cmp.w	r8, #0
c0de59ca:	d1f3      	bne.n	c0de59b4 <bech32_encode+0x68>
c0de59cc:	2131      	movs	r1, #49	; 0x31
c0de59ce:	f1ba 0f00 	cmp.w	sl, #0
c0de59d2:	f804 1b01 	strb.w	r1, [r4], #1
c0de59d6:	d010      	beq.n	c0de59fa <bech32_encode+0xae>
c0de59d8:	4d1b      	ldr	r5, [pc, #108]	; (c0de5a48 <bech32_encode+0xfc>)
c0de59da:	447d      	add	r5, pc
c0de59dc:	f89b 6000 	ldrb.w	r6, [fp]
c0de59e0:	2e1f      	cmp	r6, #31
c0de59e2:	d8dd      	bhi.n	c0de59a0 <bech32_encode+0x54>
c0de59e4:	f7ff ff84 	bl	c0de58f0 <bech32_polymod_step>
c0de59e8:	5da9      	ldrb	r1, [r5, r6]
c0de59ea:	4070      	eors	r0, r6
c0de59ec:	f10b 0b01 	add.w	fp, fp, #1
c0de59f0:	f1ba 0a01 	subs.w	sl, sl, #1
c0de59f4:	f804 1b01 	strb.w	r1, [r4], #1
c0de59f8:	d1f0      	bne.n	c0de59dc <bech32_encode+0x90>
c0de59fa:	9d0a      	ldr	r5, [sp, #40]	; 0x28
c0de59fc:	2606      	movs	r6, #6
c0de59fe:	bf00      	nop
c0de5a00:	f7ff ff76 	bl	c0de58f0 <bech32_polymod_step>
c0de5a04:	3e01      	subs	r6, #1
c0de5a06:	d1fb      	bne.n	c0de5a00 <bech32_encode+0xb4>
c0de5a08:	2100      	movs	r1, #0
c0de5a0a:	2d02      	cmp	r5, #2
c0de5a0c:	bf04      	itt	eq
c0de5a0e:	f243 01a3 	movweq	r1, #12451	; 0x30a3
c0de5a12:	f6c2 31c8 	movteq	r1, #11208	; 0x2bc8
c0de5a16:	2d01      	cmp	r5, #1
c0de5a18:	bf08      	it	eq
c0de5a1a:	4629      	moveq	r1, r5
c0de5a1c:	4048      	eors	r0, r1
c0de5a1e:	490b      	ldr	r1, [pc, #44]	; (c0de5a4c <bech32_encode+0x100>)
c0de5a20:	2219      	movs	r2, #25
c0de5a22:	4479      	add	r1, pc
c0de5a24:	fa20 f302 	lsr.w	r3, r0, r2
c0de5a28:	f003 031f 	and.w	r3, r3, #31
c0de5a2c:	5ccb      	ldrb	r3, [r1, r3]
c0de5a2e:	3a05      	subs	r2, #5
c0de5a30:	1d57      	adds	r7, r2, #5
c0de5a32:	f804 3b01 	strb.w	r3, [r4], #1
c0de5a36:	d1f5      	bne.n	c0de5a24 <bech32_encode+0xd8>
c0de5a38:	2000      	movs	r0, #0
c0de5a3a:	2101      	movs	r1, #1
c0de5a3c:	7020      	strb	r0, [r4, #0]
c0de5a3e:	4608      	mov	r0, r1
c0de5a40:	b002      	add	sp, #8
c0de5a42:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de5a46:	bf00      	nop
c0de5a48:	000043e6 	.word	0x000043e6
c0de5a4c:	0000439e 	.word	0x0000439e

c0de5a50 <convert_bits>:
c0de5a50:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5a54:	e9dd ae08 	ldrd	sl, lr, [sp, #32]
c0de5a58:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
c0de5a5c:	9c0a      	ldr	r4, [sp, #40]	; 0x28
c0de5a5e:	4097      	lsls	r7, r2
c0de5a60:	f1ba 0f00 	cmp.w	sl, #0
c0de5a64:	ea6f 0c07 	mvn.w	ip, r7
c0de5a68:	d02f      	beq.n	c0de5aca <convert_bits+0x7a>
c0de5a6a:	4256      	negs	r6, r2
c0de5a6c:	2700      	movs	r7, #0
c0de5a6e:	f04f 0b00 	mov.w	fp, #0
c0de5a72:	bf00      	nop
c0de5a74:	f813 5b01 	ldrb.w	r5, [r3], #1
c0de5a78:	fa0b fb0e 	lsl.w	fp, fp, lr
c0de5a7c:	eb07 040e 	add.w	r4, r7, lr
c0de5a80:	4294      	cmp	r4, r2
c0de5a82:	ea4b 0b05 	orr.w	fp, fp, r5
c0de5a86:	da01      	bge.n	c0de5a8c <convert_bits+0x3c>
c0de5a88:	4627      	mov	r7, r4
c0de5a8a:	e00e      	b.n	c0de5aaa <convert_bits+0x5a>
c0de5a8c:	1aa7      	subs	r7, r4, r2
c0de5a8e:	4434      	add	r4, r6
c0de5a90:	680d      	ldr	r5, [r1, #0]
c0de5a92:	fa2b f404 	lsr.w	r4, fp, r4
c0de5a96:	ea04 040c 	and.w	r4, r4, ip
c0de5a9a:	f105 0801 	add.w	r8, r5, #1
c0de5a9e:	f8c1 8000 	str.w	r8, [r1]
c0de5aa2:	5544      	strb	r4, [r0, r5]
c0de5aa4:	4297      	cmp	r7, r2
c0de5aa6:	463c      	mov	r4, r7
c0de5aa8:	daf0      	bge.n	c0de5a8c <convert_bits+0x3c>
c0de5aaa:	f1ba 0a01 	subs.w	sl, sl, #1
c0de5aae:	d1e1      	bne.n	c0de5a74 <convert_bits+0x24>
c0de5ab0:	9b0a      	ldr	r3, [sp, #40]	; 0x28
c0de5ab2:	b173      	cbz	r3, c0de5ad2 <convert_bits+0x82>
c0de5ab4:	b1cf      	cbz	r7, c0de5aea <convert_bits+0x9a>
c0de5ab6:	1bd2      	subs	r2, r2, r7
c0de5ab8:	680b      	ldr	r3, [r1, #0]
c0de5aba:	fa0b f202 	lsl.w	r2, fp, r2
c0de5abe:	ea02 020c 	and.w	r2, r2, ip
c0de5ac2:	1c5f      	adds	r7, r3, #1
c0de5ac4:	600f      	str	r7, [r1, #0]
c0de5ac6:	54c2      	strb	r2, [r0, r3]
c0de5ac8:	e00f      	b.n	c0de5aea <convert_bits+0x9a>
c0de5aca:	b974      	cbnz	r4, c0de5aea <convert_bits+0x9a>
c0de5acc:	2700      	movs	r7, #0
c0de5ace:	f04f 0b00 	mov.w	fp, #0
c0de5ad2:	4577      	cmp	r7, lr
c0de5ad4:	f04f 0000 	mov.w	r0, #0
c0de5ad8:	da08      	bge.n	c0de5aec <convert_bits+0x9c>
c0de5ada:	1bd1      	subs	r1, r2, r7
c0de5adc:	fa0b f101 	lsl.w	r1, fp, r1
c0de5ae0:	ea11 010c 	ands.w	r1, r1, ip
c0de5ae4:	bf18      	it	ne
c0de5ae6:	e8bd 8df0 	ldmiane.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de5aea:	2001      	movs	r0, #1
c0de5aec:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de5af0 <SVC_Call>:
c0de5af0:	df01      	svc	1
c0de5af2:	2900      	cmp	r1, #0
c0de5af4:	d100      	bne.n	c0de5af8 <exception>
c0de5af6:	4770      	bx	lr

c0de5af8 <exception>:
c0de5af8:	4608      	mov	r0, r1
c0de5afa:	f7fd fc53 	bl	c0de33a4 <os_longjmp>

c0de5afe <halt>:
c0de5afe:	b580      	push	{r7, lr}
c0de5b00:	b082      	sub	sp, #8
c0de5b02:	2000      	movs	r0, #0
c0de5b04:	9001      	str	r0, [sp, #4]
c0de5b06:	4669      	mov	r1, sp
c0de5b08:	2002      	movs	r0, #2
c0de5b0a:	f7ff fff1 	bl	c0de5af0 <SVC_Call>
c0de5b0e:	b002      	add	sp, #8
c0de5b10:	bd80      	pop	{r7, pc}
	...

c0de5b14 <nvm_write>:
c0de5b14:	b580      	push	{r7, lr}
c0de5b16:	b084      	sub	sp, #16
c0de5b18:	ab01      	add	r3, sp, #4
c0de5b1a:	c307      	stmia	r3!, {r0, r1, r2}
c0de5b1c:	4802      	ldr	r0, [pc, #8]	; (c0de5b28 <nvm_write+0x14>)
c0de5b1e:	a901      	add	r1, sp, #4
c0de5b20:	f7ff ffe6 	bl	c0de5af0 <SVC_Call>
c0de5b24:	b004      	add	sp, #16
c0de5b26:	bd80      	pop	{r7, pc}
c0de5b28:	03000003 	.word	0x03000003

c0de5b2c <os_perso_isonboarded>:
c0de5b2c:	b580      	push	{r7, lr}
c0de5b2e:	b082      	sub	sp, #8
c0de5b30:	2000      	movs	r0, #0
c0de5b32:	9001      	str	r0, [sp, #4]
c0de5b34:	4669      	mov	r1, sp
c0de5b36:	209f      	movs	r0, #159	; 0x9f
c0de5b38:	f7ff ffda 	bl	c0de5af0 <SVC_Call>
c0de5b3c:	b2c0      	uxtb	r0, r0
c0de5b3e:	b002      	add	sp, #8
c0de5b40:	bd80      	pop	{r7, pc}
	...

c0de5b44 <os_perso_derive_node_bip32>:
c0de5b44:	b580      	push	{r7, lr}
c0de5b46:	b086      	sub	sp, #24
c0de5b48:	f10d 0e04 	add.w	lr, sp, #4
c0de5b4c:	f8dd c020 	ldr.w	ip, [sp, #32]
c0de5b50:	e88e 100f 	stmia.w	lr, {r0, r1, r2, r3, ip}
c0de5b54:	4802      	ldr	r0, [pc, #8]	; (c0de5b60 <os_perso_derive_node_bip32+0x1c>)
c0de5b56:	a901      	add	r1, sp, #4
c0de5b58:	f7ff ffca 	bl	c0de5af0 <SVC_Call>
c0de5b5c:	b006      	add	sp, #24
c0de5b5e:	bd80      	pop	{r7, pc}
c0de5b60:	05000053 	.word	0x05000053

c0de5b64 <os_global_pin_is_validated>:
c0de5b64:	b580      	push	{r7, lr}
c0de5b66:	b082      	sub	sp, #8
c0de5b68:	2000      	movs	r0, #0
c0de5b6a:	9001      	str	r0, [sp, #4]
c0de5b6c:	4669      	mov	r1, sp
c0de5b6e:	20a0      	movs	r0, #160	; 0xa0
c0de5b70:	f7ff ffbe 	bl	c0de5af0 <SVC_Call>
c0de5b74:	b2c0      	uxtb	r0, r0
c0de5b76:	b002      	add	sp, #8
c0de5b78:	bd80      	pop	{r7, pc}
	...

c0de5b7c <os_ux>:
c0de5b7c:	b580      	push	{r7, lr}
c0de5b7e:	b082      	sub	sp, #8
c0de5b80:	9000      	str	r0, [sp, #0]
c0de5b82:	2000      	movs	r0, #0
c0de5b84:	9001      	str	r0, [sp, #4]
c0de5b86:	4803      	ldr	r0, [pc, #12]	; (c0de5b94 <os_ux+0x18>)
c0de5b88:	4669      	mov	r1, sp
c0de5b8a:	f7ff ffb1 	bl	c0de5af0 <SVC_Call>
c0de5b8e:	b002      	add	sp, #8
c0de5b90:	bd80      	pop	{r7, pc}
c0de5b92:	bf00      	nop
c0de5b94:	01000064 	.word	0x01000064

c0de5b98 <os_flags>:
c0de5b98:	b580      	push	{r7, lr}
c0de5b9a:	b082      	sub	sp, #8
c0de5b9c:	2000      	movs	r0, #0
c0de5b9e:	9001      	str	r0, [sp, #4]
c0de5ba0:	4669      	mov	r1, sp
c0de5ba2:	206a      	movs	r0, #106	; 0x6a
c0de5ba4:	f7ff ffa4 	bl	c0de5af0 <SVC_Call>
c0de5ba8:	b002      	add	sp, #8
c0de5baa:	bd80      	pop	{r7, pc}

c0de5bac <os_registry_get_current_app_tag>:
c0de5bac:	b580      	push	{r7, lr}
c0de5bae:	b084      	sub	sp, #16
c0de5bb0:	ab01      	add	r3, sp, #4
c0de5bb2:	c307      	stmia	r3!, {r0, r1, r2}
c0de5bb4:	4802      	ldr	r0, [pc, #8]	; (c0de5bc0 <os_registry_get_current_app_tag+0x14>)
c0de5bb6:	a901      	add	r1, sp, #4
c0de5bb8:	f7ff ff9a 	bl	c0de5af0 <SVC_Call>
c0de5bbc:	b004      	add	sp, #16
c0de5bbe:	bd80      	pop	{r7, pc}
c0de5bc0:	03000074 	.word	0x03000074

c0de5bc4 <os_sched_exit>:
c0de5bc4:	b082      	sub	sp, #8
c0de5bc6:	9000      	str	r0, [sp, #0]
c0de5bc8:	2000      	movs	r0, #0
c0de5bca:	9001      	str	r0, [sp, #4]
c0de5bcc:	4802      	ldr	r0, [pc, #8]	; (c0de5bd8 <os_sched_exit+0x14>)
c0de5bce:	4669      	mov	r1, sp
c0de5bd0:	f7ff ff8e 	bl	c0de5af0 <SVC_Call>
c0de5bd4:	deff      	udf	#255	; 0xff
c0de5bd6:	bf00      	nop
c0de5bd8:	0100009a 	.word	0x0100009a

c0de5bdc <io_seph_send>:
c0de5bdc:	b580      	push	{r7, lr}
c0de5bde:	b082      	sub	sp, #8
c0de5be0:	e9cd 0100 	strd	r0, r1, [sp]
c0de5be4:	4802      	ldr	r0, [pc, #8]	; (c0de5bf0 <io_seph_send+0x14>)
c0de5be6:	4669      	mov	r1, sp
c0de5be8:	f7ff ff82 	bl	c0de5af0 <SVC_Call>
c0de5bec:	b002      	add	sp, #8
c0de5bee:	bd80      	pop	{r7, pc}
c0de5bf0:	02000083 	.word	0x02000083

c0de5bf4 <io_seph_is_status_sent>:
c0de5bf4:	b580      	push	{r7, lr}
c0de5bf6:	b082      	sub	sp, #8
c0de5bf8:	2000      	movs	r0, #0
c0de5bfa:	9001      	str	r0, [sp, #4]
c0de5bfc:	4669      	mov	r1, sp
c0de5bfe:	2084      	movs	r0, #132	; 0x84
c0de5c00:	f7ff ff76 	bl	c0de5af0 <SVC_Call>
c0de5c04:	b002      	add	sp, #8
c0de5c06:	bd80      	pop	{r7, pc}

c0de5c08 <io_seph_recv>:
c0de5c08:	b580      	push	{r7, lr}
c0de5c0a:	b084      	sub	sp, #16
c0de5c0c:	ab01      	add	r3, sp, #4
c0de5c0e:	c307      	stmia	r3!, {r0, r1, r2}
c0de5c10:	4803      	ldr	r0, [pc, #12]	; (c0de5c20 <io_seph_recv+0x18>)
c0de5c12:	a901      	add	r1, sp, #4
c0de5c14:	f7ff ff6c 	bl	c0de5af0 <SVC_Call>
c0de5c18:	b280      	uxth	r0, r0
c0de5c1a:	b004      	add	sp, #16
c0de5c1c:	bd80      	pop	{r7, pc}
c0de5c1e:	bf00      	nop
c0de5c20:	03000085 	.word	0x03000085

c0de5c24 <try_context_get>:
c0de5c24:	b580      	push	{r7, lr}
c0de5c26:	b082      	sub	sp, #8
c0de5c28:	2000      	movs	r0, #0
c0de5c2a:	9001      	str	r0, [sp, #4]
c0de5c2c:	4669      	mov	r1, sp
c0de5c2e:	2087      	movs	r0, #135	; 0x87
c0de5c30:	f7ff ff5e 	bl	c0de5af0 <SVC_Call>
c0de5c34:	b002      	add	sp, #8
c0de5c36:	bd80      	pop	{r7, pc}

c0de5c38 <try_context_set>:
c0de5c38:	b580      	push	{r7, lr}
c0de5c3a:	b082      	sub	sp, #8
c0de5c3c:	9000      	str	r0, [sp, #0]
c0de5c3e:	2000      	movs	r0, #0
c0de5c40:	9001      	str	r0, [sp, #4]
c0de5c42:	4803      	ldr	r0, [pc, #12]	; (c0de5c50 <try_context_set+0x18>)
c0de5c44:	4669      	mov	r1, sp
c0de5c46:	f7ff ff53 	bl	c0de5af0 <SVC_Call>
c0de5c4a:	b002      	add	sp, #8
c0de5c4c:	bd80      	pop	{r7, pc}
c0de5c4e:	bf00      	nop
c0de5c50:	0100010b 	.word	0x0100010b

c0de5c54 <os_sched_last_status>:
c0de5c54:	b580      	push	{r7, lr}
c0de5c56:	b082      	sub	sp, #8
c0de5c58:	9000      	str	r0, [sp, #0]
c0de5c5a:	2000      	movs	r0, #0
c0de5c5c:	9001      	str	r0, [sp, #4]
c0de5c5e:	4803      	ldr	r0, [pc, #12]	; (c0de5c6c <os_sched_last_status+0x18>)
c0de5c60:	4669      	mov	r1, sp
c0de5c62:	f7ff ff45 	bl	c0de5af0 <SVC_Call>
c0de5c66:	b2c0      	uxtb	r0, r0
c0de5c68:	b002      	add	sp, #8
c0de5c6a:	bd80      	pop	{r7, pc}
c0de5c6c:	0100009c 	.word	0x0100009c

c0de5c70 <screen_update>:
c0de5c70:	b580      	push	{r7, lr}
c0de5c72:	b082      	sub	sp, #8
c0de5c74:	2000      	movs	r0, #0
c0de5c76:	9001      	str	r0, [sp, #4]
c0de5c78:	4669      	mov	r1, sp
c0de5c7a:	207a      	movs	r0, #122	; 0x7a
c0de5c7c:	f7ff ff38 	bl	c0de5af0 <SVC_Call>
c0de5c80:	b002      	add	sp, #8
c0de5c82:	bd80      	pop	{r7, pc}

c0de5c84 <bagl_hal_draw_bitmap_within_rect>:
c0de5c84:	b570      	push	{r4, r5, r6, lr}
c0de5c86:	b08a      	sub	sp, #40	; 0x28
c0de5c88:	f8dd c048 	ldr.w	ip, [sp, #72]	; 0x48
c0de5c8c:	e9dd 4e10 	ldrd	r4, lr, [sp, #64]	; 0x40
c0de5c90:	e9dd 650e 	ldrd	r6, r5, [sp, #56]	; 0x38
c0de5c94:	9001      	str	r0, [sp, #4]
c0de5c96:	4807      	ldr	r0, [pc, #28]	; (c0de5cb4 <bagl_hal_draw_bitmap_within_rect+0x30>)
c0de5c98:	9102      	str	r1, [sp, #8]
c0de5c9a:	a901      	add	r1, sp, #4
c0de5c9c:	9203      	str	r2, [sp, #12]
c0de5c9e:	9304      	str	r3, [sp, #16]
c0de5ca0:	9605      	str	r6, [sp, #20]
c0de5ca2:	e9cd 5406 	strd	r5, r4, [sp, #24]
c0de5ca6:	e9cd ec08 	strd	lr, ip, [sp, #32]
c0de5caa:	f7ff ff21 	bl	c0de5af0 <SVC_Call>
c0de5cae:	b00a      	add	sp, #40	; 0x28
c0de5cb0:	bd70      	pop	{r4, r5, r6, pc}
c0de5cb2:	bf00      	nop
c0de5cb4:	0900007c 	.word	0x0900007c

c0de5cb8 <bagl_hal_draw_rect>:
c0de5cb8:	b580      	push	{r7, lr}
c0de5cba:	b086      	sub	sp, #24
c0de5cbc:	f10d 0e04 	add.w	lr, sp, #4
c0de5cc0:	f8dd c020 	ldr.w	ip, [sp, #32]
c0de5cc4:	e88e 100f 	stmia.w	lr, {r0, r1, r2, r3, ip}
c0de5cc8:	4802      	ldr	r0, [pc, #8]	; (c0de5cd4 <bagl_hal_draw_rect+0x1c>)
c0de5cca:	a901      	add	r1, sp, #4
c0de5ccc:	f7ff ff10 	bl	c0de5af0 <SVC_Call>
c0de5cd0:	b006      	add	sp, #24
c0de5cd2:	bd80      	pop	{r7, pc}
c0de5cd4:	0500007d 	.word	0x0500007d

c0de5cd8 <tx_initialize>:
c0de5cd8:	b580      	push	{r7, lr}
c0de5cda:	4809      	ldr	r0, [pc, #36]	; (c0de5d00 <tx_initialize+0x28>)
c0de5cdc:	4478      	add	r0, pc
c0de5cde:	f7ff fde9 	bl	c0de58b4 <pic>
c0de5ce2:	4906      	ldr	r1, [pc, #24]	; (c0de5cfc <tx_initialize+0x24>)
c0de5ce4:	4602      	mov	r2, r0
c0de5ce6:	eb09 0001 	add.w	r0, r9, r1
c0de5cea:	f44f 5100 	mov.w	r1, #8192	; 0x2000
c0de5cee:	f44f 4380 	mov.w	r3, #16384	; 0x4000
c0de5cf2:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de5cf6:	f7fb bff7 	b.w	c0de1ce8 <buffering_init>
c0de5cfa:	bf00      	nop
c0de5cfc:	00001b7c 	.word	0x00001b7c
c0de5d00:	00007560 	.word	0x00007560

c0de5d04 <tx_reset>:
c0de5d04:	f7fc b810 	b.w	c0de1d28 <buffering_reset>

c0de5d08 <tx_append>:
c0de5d08:	f7fc b824 	b.w	c0de1d54 <buffering_append>

c0de5d0c <tx_get_buffer_length>:
c0de5d0c:	b580      	push	{r7, lr}
c0de5d0e:	f7fc f871 	bl	c0de1df4 <buffering_get_buffer>
c0de5d12:	88c0      	ldrh	r0, [r0, #6]
c0de5d14:	bd80      	pop	{r7, pc}

c0de5d16 <tx_get_buffer>:
c0de5d16:	b580      	push	{r7, lr}
c0de5d18:	f7fc f86c 	bl	c0de1df4 <buffering_get_buffer>
c0de5d1c:	6800      	ldr	r0, [r0, #0]
c0de5d1e:	bd80      	pop	{r7, pc}

c0de5d20 <tx_parse>:
c0de5d20:	b570      	push	{r4, r5, r6, lr}
c0de5d22:	2801      	cmp	r0, #1
c0de5d24:	d827      	bhi.n	c0de5d76 <tx_parse+0x56>
c0de5d26:	4e17      	ldr	r6, [pc, #92]	; (c0de5d84 <tx_parse+0x64>)
c0de5d28:	4604      	mov	r4, r0
c0de5d2a:	eb09 0506 	add.w	r5, r9, r6
c0de5d2e:	4628      	mov	r0, r5
c0de5d30:	f641 0144 	movw	r1, #6212	; 0x1844
c0de5d34:	f003 fe1f 	bl	c0de9976 <explicit_bzero>
c0de5d38:	f809 4006 	strb.w	r4, [r9, r6]
c0de5d3c:	f7fc f85a 	bl	c0de1df4 <buffering_get_buffer>
c0de5d40:	6804      	ldr	r4, [r0, #0]
c0de5d42:	f7fc f857 	bl	c0de1df4 <buffering_get_buffer>
c0de5d46:	4e10      	ldr	r6, [pc, #64]	; (c0de5d88 <tx_parse+0x68>)
c0de5d48:	88c2      	ldrh	r2, [r0, #6]
c0de5d4a:	eb09 0006 	add.w	r0, r9, r6
c0de5d4e:	4621      	mov	r1, r4
c0de5d50:	462b      	mov	r3, r5
c0de5d52:	f7fe fa0d 	bl	c0de4170 <parser_parse>
c0de5d56:	4604      	mov	r4, r0
c0de5d58:	480c      	ldr	r0, [pc, #48]	; (c0de5d8c <tx_parse+0x6c>)
c0de5d5a:	4478      	add	r0, pc
c0de5d5c:	f003 fdfe 	bl	c0de995c <zemu_log_stack>
c0de5d60:	b954      	cbnz	r4, c0de5d78 <tx_parse+0x58>
c0de5d62:	eb09 0006 	add.w	r0, r9, r6
c0de5d66:	f7fe fa33 	bl	c0de41d0 <parser_validate>
c0de5d6a:	4604      	mov	r4, r0
c0de5d6c:	f003 fde8 	bl	c0de9940 <check_app_canary>
c0de5d70:	b914      	cbnz	r4, c0de5d78 <tx_parse+0x58>
c0de5d72:	2000      	movs	r0, #0
c0de5d74:	bd70      	pop	{r4, r5, r6, pc}
c0de5d76:	240f      	movs	r4, #15
c0de5d78:	4620      	mov	r0, r4
c0de5d7a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de5d7e:	f7ff bb9f 	b.w	c0de54c0 <parser_getErrorDescription>
c0de5d82:	bf00      	nop
c0de5d84:	00003b7c 	.word	0x00003b7c
c0de5d88:	000053c0 	.word	0x000053c0
c0de5d8c:	00004313 	.word	0x00004313

c0de5d90 <tx_getNumItems>:
c0de5d90:	b580      	push	{r7, lr}
c0de5d92:	4a06      	ldr	r2, [pc, #24]	; (c0de5dac <tx_getNumItems+0x1c>)
c0de5d94:	4601      	mov	r1, r0
c0de5d96:	eb09 0002 	add.w	r0, r9, r2
c0de5d9a:	f7fe fa65 	bl	c0de4268 <parser_getNumItems>
c0de5d9e:	2105      	movs	r1, #5
c0de5da0:	2800      	cmp	r0, #0
c0de5da2:	bf08      	it	eq
c0de5da4:	2103      	moveq	r1, #3
c0de5da6:	4608      	mov	r0, r1
c0de5da8:	bd80      	pop	{r7, pc}
c0de5daa:	bf00      	nop
c0de5dac:	000053c0 	.word	0x000053c0

c0de5db0 <tx_getItem>:
c0de5db0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de5db4:	b086      	sub	sp, #24
c0de5db6:	f8df 806c 	ldr.w	r8, [pc, #108]	; c0de5e24 <tx_getItem+0x74>
c0de5dba:	4607      	mov	r7, r0
c0de5dbc:	2000      	movs	r0, #0
c0de5dbe:	460d      	mov	r5, r1
c0de5dc0:	f88d 0017 	strb.w	r0, [sp, #23]
c0de5dc4:	eb09 0008 	add.w	r0, r9, r8
c0de5dc8:	f10d 0117 	add.w	r1, sp, #23
c0de5dcc:	461e      	mov	r6, r3
c0de5dce:	4614      	mov	r4, r2
c0de5dd0:	f7fe fa4a 	bl	c0de4268 <parser_getNumItems>
c0de5dd4:	4601      	mov	r1, r0
c0de5dd6:	2f00      	cmp	r7, #0
c0de5dd8:	f04f 0005 	mov.w	r0, #5
c0de5ddc:	d41e      	bmi.n	c0de5e1c <tx_getItem+0x6c>
c0de5dde:	b9e9      	cbnz	r1, c0de5e1c <tx_getItem+0x6c>
c0de5de0:	f89d 2017 	ldrb.w	r2, [sp, #23]
c0de5de4:	b2f9      	uxtb	r1, r7
c0de5de6:	428a      	cmp	r2, r1
c0de5de8:	d318      	bcc.n	c0de5e1c <tx_getItem+0x6c>
c0de5dea:	e9dd 200c 	ldrd	r2, r0, [sp, #48]	; 0x30
c0de5dee:	9f0e      	ldr	r7, [sp, #56]	; 0x38
c0de5df0:	e9cd 6200 	strd	r6, r2, [sp]
c0de5df4:	9002      	str	r0, [sp, #8]
c0de5df6:	eb09 0008 	add.w	r0, r9, r8
c0de5dfa:	462a      	mov	r2, r5
c0de5dfc:	4623      	mov	r3, r4
c0de5dfe:	9703      	str	r7, [sp, #12]
c0de5e00:	f7fe fa4a 	bl	c0de4298 <parser_getItem>
c0de5e04:	4601      	mov	r1, r0
c0de5e06:	3803      	subs	r0, #3
c0de5e08:	2802      	cmp	r0, #2
c0de5e0a:	f04f 0005 	mov.w	r0, #5
c0de5e0e:	d305      	bcc.n	c0de5e1c <tx_getItem+0x6c>
c0de5e10:	b119      	cbz	r1, c0de5e1a <tx_getItem+0x6a>
c0de5e12:	2901      	cmp	r1, #1
c0de5e14:	bf18      	it	ne
c0de5e16:	2000      	movne	r0, #0
c0de5e18:	e000      	b.n	c0de5e1c <tx_getItem+0x6c>
c0de5e1a:	2003      	movs	r0, #3
c0de5e1c:	b006      	add	sp, #24
c0de5e1e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de5e22:	bf00      	nop
c0de5e24:	000053c0 	.word	0x000053c0

c0de5e28 <utf8codepoint>:
c0de5e28:	7803      	ldrb	r3, [r0, #0]
c0de5e2a:	f003 02f8 	and.w	r2, r3, #248	; 0xf8
c0de5e2e:	2af0      	cmp	r2, #240	; 0xf0
c0de5e30:	d111      	bne.n	c0de5e56 <utf8codepoint+0x2e>
c0de5e32:	f44f 12e0 	mov.w	r2, #1835008	; 0x1c0000
c0de5e36:	ea02 4c83 	and.w	ip, r2, r3, lsl #18
c0de5e3a:	7843      	ldrb	r3, [r0, #1]
c0de5e3c:	7882      	ldrb	r2, [r0, #2]
c0de5e3e:	f003 033f 	and.w	r3, r3, #63	; 0x3f
c0de5e42:	ea4c 3303 	orr.w	r3, ip, r3, lsl #12
c0de5e46:	f002 023f 	and.w	r2, r2, #63	; 0x3f
c0de5e4a:	ea43 1382 	orr.w	r3, r3, r2, lsl #6
c0de5e4e:	f04f 0c04 	mov.w	ip, #4
c0de5e52:	2203      	movs	r2, #3
c0de5e54:	e019      	b.n	c0de5e8a <utf8codepoint+0x62>
c0de5e56:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
c0de5e5a:	2ae0      	cmp	r2, #224	; 0xe0
c0de5e5c:	d10a      	bne.n	c0de5e74 <utf8codepoint+0x4c>
c0de5e5e:	031a      	lsls	r2, r3, #12
c0de5e60:	7843      	ldrb	r3, [r0, #1]
c0de5e62:	b292      	uxth	r2, r2
c0de5e64:	f003 033f 	and.w	r3, r3, #63	; 0x3f
c0de5e68:	ea42 1383 	orr.w	r3, r2, r3, lsl #6
c0de5e6c:	f04f 0c03 	mov.w	ip, #3
c0de5e70:	2202      	movs	r2, #2
c0de5e72:	e00a      	b.n	c0de5e8a <utf8codepoint+0x62>
c0de5e74:	f003 02e0 	and.w	r2, r3, #224	; 0xe0
c0de5e78:	2ac0      	cmp	r2, #192	; 0xc0
c0de5e7a:	d10d      	bne.n	c0de5e98 <utf8codepoint+0x70>
c0de5e7c:	f44f 62f8 	mov.w	r2, #1984	; 0x7c0
c0de5e80:	ea02 1383 	and.w	r3, r2, r3, lsl #6
c0de5e84:	f04f 0c02 	mov.w	ip, #2
c0de5e88:	2201      	movs	r2, #1
c0de5e8a:	5c82      	ldrb	r2, [r0, r2]
c0de5e8c:	f002 023f 	and.w	r2, r2, #63	; 0x3f
c0de5e90:	4313      	orrs	r3, r2
c0de5e92:	4460      	add	r0, ip
c0de5e94:	600b      	str	r3, [r1, #0]
c0de5e96:	4770      	bx	lr
c0de5e98:	f04f 0c01 	mov.w	ip, #1
c0de5e9c:	e7f9      	b.n	c0de5e92 <utf8codepoint+0x6a>
	...

c0de5ea0 <get_required_root_item>:
c0de5ea0:	2802      	cmp	r0, #2
c0de5ea2:	dd08      	ble.n	c0de5eb6 <get_required_root_item+0x16>
c0de5ea4:	2804      	cmp	r0, #4
c0de5ea6:	dc0e      	bgt.n	c0de5ec6 <get_required_root_item+0x26>
c0de5ea8:	2803      	cmp	r0, #3
c0de5eaa:	d013      	beq.n	c0de5ed4 <get_required_root_item+0x34>
c0de5eac:	2804      	cmp	r0, #4
c0de5eae:	d11a      	bne.n	c0de5ee6 <get_required_root_item+0x46>
c0de5eb0:	4812      	ldr	r0, [pc, #72]	; (c0de5efc <get_required_root_item+0x5c>)
c0de5eb2:	4478      	add	r0, pc
c0de5eb4:	4770      	bx	lr
c0de5eb6:	b180      	cbz	r0, c0de5eda <get_required_root_item+0x3a>
c0de5eb8:	2801      	cmp	r0, #1
c0de5eba:	d017      	beq.n	c0de5eec <get_required_root_item+0x4c>
c0de5ebc:	2802      	cmp	r0, #2
c0de5ebe:	d112      	bne.n	c0de5ee6 <get_required_root_item+0x46>
c0de5ec0:	480d      	ldr	r0, [pc, #52]	; (c0de5ef8 <get_required_root_item+0x58>)
c0de5ec2:	4478      	add	r0, pc
c0de5ec4:	4770      	bx	lr
c0de5ec6:	2805      	cmp	r0, #5
c0de5ec8:	d00a      	beq.n	c0de5ee0 <get_required_root_item+0x40>
c0de5eca:	2806      	cmp	r0, #6
c0de5ecc:	d10b      	bne.n	c0de5ee6 <get_required_root_item+0x46>
c0de5ece:	480c      	ldr	r0, [pc, #48]	; (c0de5f00 <get_required_root_item+0x60>)
c0de5ed0:	4478      	add	r0, pc
c0de5ed2:	4770      	bx	lr
c0de5ed4:	480d      	ldr	r0, [pc, #52]	; (c0de5f0c <get_required_root_item+0x6c>)
c0de5ed6:	4478      	add	r0, pc
c0de5ed8:	4770      	bx	lr
c0de5eda:	4806      	ldr	r0, [pc, #24]	; (c0de5ef4 <get_required_root_item+0x54>)
c0de5edc:	4478      	add	r0, pc
c0de5ede:	4770      	bx	lr
c0de5ee0:	4809      	ldr	r0, [pc, #36]	; (c0de5f08 <get_required_root_item+0x68>)
c0de5ee2:	4478      	add	r0, pc
c0de5ee4:	4770      	bx	lr
c0de5ee6:	480a      	ldr	r0, [pc, #40]	; (c0de5f10 <get_required_root_item+0x70>)
c0de5ee8:	4478      	add	r0, pc
c0de5eea:	4770      	bx	lr
c0de5eec:	4805      	ldr	r0, [pc, #20]	; (c0de5f04 <get_required_root_item+0x64>)
c0de5eee:	4478      	add	r0, pc
c0de5ef0:	4770      	bx	lr
c0de5ef2:	bf00      	nop
c0de5ef4:	00003d49 	.word	0x00003d49
c0de5ef8:	00003f1f 	.word	0x00003f1f
c0de5efc:	00003ff4 	.word	0x00003ff4
c0de5f00:	00003ec4 	.word	0x00003ec4
c0de5f04:	000041f0 	.word	0x000041f0
c0de5f08:	00003c24 	.word	0x00003c24
c0de5f0c:	00003e55 	.word	0x00003e55
c0de5f10:	00003e90 	.word	0x00003e90

c0de5f14 <tx_indexRootFields>:
c0de5f14:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de5f18:	b0d4      	sub	sp, #336	; 0x150
c0de5f1a:	f8df 7488 	ldr.w	r7, [pc, #1160]	; c0de63a4 <tx_indexRootFields+0x490>
c0de5f1e:	f641 0518 	movw	r5, #6168	; 0x1818
c0de5f22:	eb09 0007 	add.w	r0, r9, r7
c0de5f26:	5d40      	ldrb	r0, [r0, r5]
c0de5f28:	2600      	movs	r6, #0
c0de5f2a:	07c0      	lsls	r0, r0, #31
c0de5f2c:	f04f 0a00 	mov.w	sl, #0
c0de5f30:	f040 8230 	bne.w	c0de6394 <tx_indexRootFields+0x480>
c0de5f34:	f8df 0470 	ldr.w	r0, [pc, #1136]	; c0de63a8 <tx_indexRootFields+0x494>
c0de5f38:	2120      	movs	r1, #32
c0de5f3a:	4448      	add	r0, r9
c0de5f3c:	f003 fd1b 	bl	c0de9976 <explicit_bzero>
c0de5f40:	f10d 08f0 	add.w	r8, sp, #240	; 0xf0
c0de5f44:	4640      	mov	r0, r8
c0de5f46:	2146      	movs	r1, #70	; 0x46
c0de5f48:	f003 fd15 	bl	c0de9976 <explicit_bzero>
c0de5f4c:	f10d 00aa 	add.w	r0, sp, #170	; 0xaa
c0de5f50:	2146      	movs	r1, #70	; 0x46
c0de5f52:	f003 fd10 	bl	c0de9976 <explicit_bzero>
c0de5f56:	a819      	add	r0, sp, #100	; 0x64
c0de5f58:	2146      	movs	r1, #70	; 0x46
c0de5f5a:	f003 fd0c 	bl	c0de9976 <explicit_bzero>
c0de5f5e:	f10d 001e 	add.w	r0, sp, #30
c0de5f62:	2146      	movs	r1, #70	; 0x46
c0de5f64:	f003 fd07 	bl	c0de9976 <explicit_bzero>
c0de5f68:	eb09 0007 	add.w	r0, r9, r7
c0de5f6c:	f641 0119 	movw	r1, #6169	; 0x1819
c0de5f70:	5446      	strb	r6, [r0, r1]
c0de5f72:	5d41      	ldrb	r1, [r0, r5]
c0de5f74:	f44f 52c1 	mov.w	r2, #6176	; 0x1820
c0de5f78:	f041 0106 	orr.w	r1, r1, #6
c0de5f7c:	5486      	strb	r6, [r0, r2]
c0de5f7e:	5541      	strb	r1, [r0, r5]
c0de5f80:	2400      	movs	r4, #0
c0de5f82:	2000      	movs	r0, #0
c0de5f84:	f641 0530 	movw	r5, #6192	; 0x1830
c0de5f88:	fa5f fb84 	uxtb.w	fp, r4
c0de5f8c:	f8ad 013a 	strh.w	r0, [sp, #314]	; 0x13a
c0de5f90:	4658      	mov	r0, fp
c0de5f92:	f7ff ff85 	bl	c0de5ea0 <get_required_root_item>
c0de5f96:	4602      	mov	r2, r0
c0de5f98:	eb09 0007 	add.w	r0, r9, r7
c0de5f9c:	3008      	adds	r0, #8
c0de5f9e:	2100      	movs	r1, #0
c0de5fa0:	f50d 739d 	add.w	r3, sp, #314	; 0x13a
c0de5fa4:	9206      	str	r2, [sp, #24]
c0de5fa6:	f7fd f999 	bl	c0de32dc <object_get_value>
c0de5faa:	2801      	cmp	r0, #1
c0de5fac:	f000 814d 	beq.w	c0de624a <tx_indexRootFields+0x336>
c0de5fb0:	4682      	mov	sl, r0
c0de5fb2:	9403      	str	r4, [sp, #12]
c0de5fb4:	f003 fcc4 	bl	c0de9940 <check_app_canary>
c0de5fb8:	f1ba 0f00 	cmp.w	sl, #0
c0de5fbc:	f040 81ea 	bne.w	c0de6394 <tx_indexRootFields+0x480>
c0de5fc0:	f8df 03e4 	ldr.w	r0, [pc, #996]	; c0de63a8 <tx_indexRootFields+0x494>
c0de5fc4:	9a03      	ldr	r2, [sp, #12]
c0de5fc6:	4448      	add	r0, r9
c0de5fc8:	1883      	adds	r3, r0, r2
c0de5fca:	2101      	movs	r1, #1
c0de5fcc:	f803 1b18 	strb.w	r1, [r3], #24
c0de5fd0:	f8bd 113a 	ldrh.w	r1, [sp, #314]	; 0x13a
c0de5fd4:	eb00 0042 	add.w	r0, r0, r2, lsl #1
c0de5fd8:	f820 1f08 	strh.w	r1, [r0, #8]!
c0de5fdc:	9004      	str	r0, [sp, #16]
c0de5fde:	f04f 0a00 	mov.w	sl, #0
c0de5fe2:	2000      	movs	r0, #0
c0de5fe4:	9302      	str	r3, [sp, #8]
c0de5fe6:	9005      	str	r0, [sp, #20]
c0de5fe8:	f1ba 0f00 	cmp.w	sl, #0
c0de5fec:	f040 811e 	bne.w	c0de622c <tx_indexRootFields+0x318>
c0de5ff0:	eb09 0007 	add.w	r0, r9, r7
c0de5ff4:	2100      	movs	r1, #0
c0de5ff6:	f641 022c 	movw	r2, #6188	; 0x182c
c0de5ffa:	5281      	strh	r1, [r0, r2]
c0de5ffc:	4410      	add	r0, r2
c0de5ffe:	2206      	movs	r2, #6
c0de6000:	70c2      	strb	r2, [r0, #3]
c0de6002:	f1bb 0f02 	cmp.w	fp, #2
c0de6006:	f04f 0002 	mov.w	r0, #2
c0de600a:	dd0b      	ble.n	c0de6024 <tx_indexRootFields+0x110>
c0de600c:	f1bb 0f04 	cmp.w	fp, #4
c0de6010:	f10d 04aa 	add.w	r4, sp, #170	; 0xaa
c0de6014:	dc0e      	bgt.n	c0de6034 <tx_indexRootFields+0x120>
c0de6016:	f1bb 0f03 	cmp.w	fp, #3
c0de601a:	d013      	beq.n	c0de6044 <tx_indexRootFields+0x130>
c0de601c:	f1bb 0f04 	cmp.w	fp, #4
c0de6020:	d01a      	beq.n	c0de6058 <tx_indexRootFields+0x144>
c0de6022:	e018      	b.n	c0de6056 <tx_indexRootFields+0x142>
c0de6024:	f1bb 0f03 	cmp.w	fp, #3
c0de6028:	f10d 04aa 	add.w	r4, sp, #170	; 0xaa
c0de602c:	bf28      	it	cs
c0de602e:	2000      	movcs	r0, #0
c0de6030:	e012      	b.n	c0de6058 <tx_indexRootFields+0x144>
c0de6032:	bf00      	nop
c0de6034:	f1bb 0f06 	cmp.w	fp, #6
c0de6038:	d002      	beq.n	c0de6040 <tx_indexRootFields+0x12c>
c0de603a:	f1bb 0f05 	cmp.w	fp, #5
c0de603e:	d10a      	bne.n	c0de6056 <tx_indexRootFields+0x142>
c0de6040:	2001      	movs	r0, #1
c0de6042:	e009      	b.n	c0de6058 <tx_indexRootFields+0x144>
c0de6044:	48d9      	ldr	r0, [pc, #868]	; (c0de63ac <tx_indexRootFields+0x498>)
c0de6046:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de604a:	2800      	cmp	r0, #0
c0de604c:	f04f 0003 	mov.w	r0, #3
c0de6050:	bf08      	it	eq
c0de6052:	2002      	moveq	r0, #2
c0de6054:	e000      	b.n	c0de6058 <tx_indexRootFields+0x144>
c0de6056:	2000      	movs	r0, #0
c0de6058:	463e      	mov	r6, r7
c0de605a:	444f      	add	r7, r9
c0de605c:	f641 022e 	movw	r2, #6190	; 0x182e
c0de6060:	54b8      	strb	r0, [r7, r2]
c0de6062:	5179      	str	r1, [r7, r5]
c0de6064:	4640      	mov	r0, r8
c0de6066:	2146      	movs	r1, #70	; 0x46
c0de6068:	f003 fc85 	bl	c0de9976 <explicit_bzero>
c0de606c:	4620      	mov	r0, r4
c0de606e:	2146      	movs	r1, #70	; 0x46
c0de6070:	f003 fc81 	bl	c0de9976 <explicit_bzero>
c0de6074:	f641 0034 	movw	r0, #6196	; 0x1834
c0de6078:	f847 8000 	str.w	r8, [r7, r0]
c0de607c:	f641 003c 	movw	r0, #6204	; 0x183c
c0de6080:	503c      	str	r4, [r7, r0]
c0de6082:	2046      	movs	r0, #70	; 0x46
c0de6084:	f641 0138 	movw	r1, #6200	; 0x1838
c0de6088:	5278      	strh	r0, [r7, r1]
c0de608a:	f44f 51c2 	mov.w	r1, #6208	; 0x1840
c0de608e:	5278      	strh	r0, [r7, r1]
c0de6090:	9805      	ldr	r0, [sp, #20]
c0de6092:	2146      	movs	r1, #70	; 0x46
c0de6094:	5378      	strh	r0, [r7, r5]
c0de6096:	4640      	mov	r0, r8
c0de6098:	f003 fc6d 	bl	c0de9976 <explicit_bzero>
c0de609c:	9906      	ldr	r1, [sp, #24]
c0de609e:	4640      	mov	r0, r8
c0de60a0:	2245      	movs	r2, #69	; 0x45
c0de60a2:	f003 fce1 	bl	c0de9a68 <strncpy>
c0de60a6:	9804      	ldr	r0, [sp, #16]
c0de60a8:	f50d 71a7 	add.w	r1, sp, #334	; 0x14e
c0de60ac:	8800      	ldrh	r0, [r0, #0]
c0de60ae:	f000 fd93 	bl	c0de6bd8 <tx_traverse_find>
c0de60b2:	b110      	cbz	r0, c0de60ba <tx_indexRootFields+0x1a6>
c0de60b4:	4682      	mov	sl, r0
c0de60b6:	4637      	mov	r7, r6
c0de60b8:	e796      	b.n	c0de5fe8 <tx_indexRootFields+0xd4>
c0de60ba:	eb09 0206 	add.w	r2, r9, r6
c0de60be:	f641 013c 	movw	r1, #6204	; 0x183c
c0de60c2:	f44f 53c2 	mov.w	r3, #6208	; 0x1840
c0de60c6:	f8bd 014e 	ldrh.w	r0, [sp, #334]	; 0x14e
c0de60ca:	5851      	ldr	r1, [r2, r1]
c0de60cc:	5ad2      	ldrh	r2, [r2, r3]
c0de60ce:	4637      	mov	r7, r6
c0de60d0:	2300      	movs	r3, #0
c0de60d2:	f50d 769b 	add.w	r6, sp, #310	; 0x136
c0de60d6:	9600      	str	r6, [sp, #0]
c0de60d8:	f000 fcf0 	bl	c0de6abc <tx_getToken>
c0de60dc:	4682      	mov	sl, r0
c0de60de:	f003 fc2f 	bl	c0de9940 <check_app_canary>
c0de60e2:	f1ba 0f00 	cmp.w	sl, #0
c0de60e6:	f040 8155 	bne.w	c0de6394 <tx_indexRootFields+0x480>
c0de60ea:	f1bb 0f03 	cmp.w	fp, #3
c0de60ee:	d00f      	beq.n	c0de6110 <tx_indexRootFields+0x1fc>
c0de60f0:	f1bb 0f04 	cmp.w	fp, #4
c0de60f4:	f040 808f 	bne.w	c0de6216 <tx_indexRootFields+0x302>
c0de60f8:	eb09 0007 	add.w	r0, r9, r7
c0de60fc:	f641 013c 	movw	r1, #6204	; 0x183c
c0de6100:	5840      	ldr	r0, [r0, r1]
c0de6102:	7800      	ldrb	r0, [r0, #0]
c0de6104:	2800      	cmp	r0, #0
c0de6106:	f040 8086 	bne.w	c0de6216 <tx_indexRootFields+0x302>
c0de610a:	f04f 0a13 	mov.w	sl, #19
c0de610e:	e76b      	b.n	c0de5fe8 <tx_indexRootFields+0xd4>
c0de6110:	eb09 0007 	add.w	r0, r9, r7
c0de6114:	f641 0118 	movw	r1, #6168	; 0x1818
c0de6118:	f810 a001 	ldrb.w	sl, [r0, r1]
c0de611c:	ea5f 708a 	movs.w	r0, sl, lsl #30
c0de6120:	d541      	bpl.n	c0de61a6 <tx_indexRootFields+0x292>
c0de6122:	49a6      	ldr	r1, [pc, #664]	; (c0de63bc <tx_indexRootFields+0x4a8>)
c0de6124:	4640      	mov	r0, r8
c0de6126:	4479      	add	r1, pc
c0de6128:	220a      	movs	r2, #10
c0de612a:	f003 fc2a 	bl	c0de9982 <memcmp>
c0de612e:	bbd0      	cbnz	r0, c0de61a6 <tx_indexRootFields+0x292>
c0de6130:	eb09 0007 	add.w	r0, r9, r7
c0de6134:	f641 0619 	movw	r6, #6169	; 0x1819
c0de6138:	5d80      	ldrb	r0, [r0, r6]
c0de613a:	f10d 04aa 	add.w	r4, sp, #170	; 0xaa
c0de613e:	b998      	cbnz	r0, c0de6168 <tx_indexRootFields+0x254>
c0de6140:	4620      	mov	r0, r4
c0de6142:	f003 fc75 	bl	c0de9a30 <strlen>
c0de6146:	2845      	cmp	r0, #69	; 0x45
c0de6148:	f200 8129 	bhi.w	c0de639e <tx_indexRootFields+0x48a>
c0de614c:	4a9c      	ldr	r2, [pc, #624]	; (c0de63c0 <tx_indexRootFields+0x4ac>)
c0de614e:	a819      	add	r0, sp, #100	; 0x64
c0de6150:	447a      	add	r2, pc
c0de6152:	2146      	movs	r1, #70	; 0x46
c0de6154:	4623      	mov	r3, r4
c0de6156:	f7fd fe55 	bl	c0de3e04 <snprintf>
c0de615a:	9805      	ldr	r0, [sp, #20]
c0de615c:	eb09 0107 	add.w	r1, r9, r7
c0de6160:	b200      	sxth	r0, r0
c0de6162:	f641 021c 	movw	r2, #6172	; 0x181c
c0de6166:	5088      	str	r0, [r1, r2]
c0de6168:	a819      	add	r0, sp, #100	; 0x64
c0de616a:	4621      	mov	r1, r4
c0de616c:	f003 fc56 	bl	c0de9a1c <strcmp>
c0de6170:	b160      	cbz	r0, c0de618c <tx_indexRootFields+0x278>
c0de6172:	eb09 0007 	add.w	r0, r9, r7
c0de6176:	f641 0218 	movw	r2, #6168	; 0x1818
c0de617a:	5c81      	ldrb	r1, [r0, r2]
c0de617c:	f641 0319 	movw	r3, #6169	; 0x1819
c0de6180:	f001 0afd 	and.w	sl, r1, #253	; 0xfd
c0de6184:	f800 a002 	strb.w	sl, [r0, r2]
c0de6188:	2000      	movs	r0, #0
c0de618a:	e008      	b.n	c0de619e <tx_indexRootFields+0x28a>
c0de618c:	eb09 0107 	add.w	r1, r9, r7
c0de6190:	f641 0218 	movw	r2, #6168	; 0x1818
c0de6194:	5d88      	ldrb	r0, [r1, r6]
c0de6196:	f811 a002 	ldrb.w	sl, [r1, r2]
c0de619a:	f641 0319 	movw	r3, #6169	; 0x1819
c0de619e:	3001      	adds	r0, #1
c0de61a0:	eb09 0107 	add.w	r1, r9, r7
c0de61a4:	54c8      	strb	r0, [r1, r3]
c0de61a6:	ea5f 704a 	movs.w	r0, sl, lsl #29
c0de61aa:	d534      	bpl.n	c0de6216 <tx_indexRootFields+0x302>
c0de61ac:	4985      	ldr	r1, [pc, #532]	; (c0de63c4 <tx_indexRootFields+0x4b0>)
c0de61ae:	4640      	mov	r0, r8
c0de61b0:	4479      	add	r1, pc
c0de61b2:	221d      	movs	r2, #29
c0de61b4:	f003 fbe5 	bl	c0de9982 <memcmp>
c0de61b8:	bb68      	cbnz	r0, c0de6216 <tx_indexRootFields+0x302>
c0de61ba:	eb09 0007 	add.w	r0, r9, r7
c0de61be:	f44f 56c1 	mov.w	r6, #6176	; 0x1820
c0de61c2:	5d80      	ldrb	r0, [r0, r6]
c0de61c4:	f10d 04aa 	add.w	r4, sp, #170	; 0xaa
c0de61c8:	b970      	cbnz	r0, c0de61e8 <tx_indexRootFields+0x2d4>
c0de61ca:	4a7f      	ldr	r2, [pc, #508]	; (c0de63c8 <tx_indexRootFields+0x4b4>)
c0de61cc:	f10d 001e 	add.w	r0, sp, #30
c0de61d0:	447a      	add	r2, pc
c0de61d2:	2146      	movs	r1, #70	; 0x46
c0de61d4:	4623      	mov	r3, r4
c0de61d6:	f7fd fe15 	bl	c0de3e04 <snprintf>
c0de61da:	9805      	ldr	r0, [sp, #20]
c0de61dc:	eb09 0107 	add.w	r1, r9, r7
c0de61e0:	b200      	sxth	r0, r0
c0de61e2:	f641 0224 	movw	r2, #6180	; 0x1824
c0de61e6:	5088      	str	r0, [r1, r2]
c0de61e8:	f10d 001e 	add.w	r0, sp, #30
c0de61ec:	4621      	mov	r1, r4
c0de61ee:	f003 fc15 	bl	c0de9a1c <strcmp>
c0de61f2:	b148      	cbz	r0, c0de6208 <tx_indexRootFields+0x2f4>
c0de61f4:	eb09 0007 	add.w	r0, r9, r7
c0de61f8:	f641 0218 	movw	r2, #6168	; 0x1818
c0de61fc:	5c81      	ldrb	r1, [r0, r2]
c0de61fe:	f001 01fb 	and.w	r1, r1, #251	; 0xfb
c0de6202:	5481      	strb	r1, [r0, r2]
c0de6204:	2000      	movs	r0, #0
c0de6206:	e002      	b.n	c0de620e <tx_indexRootFields+0x2fa>
c0de6208:	eb09 0007 	add.w	r0, r9, r7
c0de620c:	5d80      	ldrb	r0, [r0, r6]
c0de620e:	3001      	adds	r0, #1
c0de6210:	eb09 0107 	add.w	r1, r9, r7
c0de6214:	5588      	strb	r0, [r1, r6]
c0de6216:	9902      	ldr	r1, [sp, #8]
c0de6218:	f04f 0a00 	mov.w	sl, #0
c0de621c:	7808      	ldrb	r0, [r1, #0]
c0de621e:	3001      	adds	r0, #1
c0de6220:	7008      	strb	r0, [r1, #0]
c0de6222:	9805      	ldr	r0, [sp, #20]
c0de6224:	3001      	adds	r0, #1
c0de6226:	9005      	str	r0, [sp, #20]
c0de6228:	e6de      	b.n	c0de5fe8 <tx_indexRootFields+0xd4>
c0de622a:	bf00      	nop
c0de622c:	f1ba 0f01 	cmp.w	sl, #1
c0de6230:	d003      	beq.n	c0de623a <tx_indexRootFields+0x326>
c0de6232:	f1ba 0f13 	cmp.w	sl, #19
c0de6236:	f040 80ad 	bne.w	c0de6394 <tx_indexRootFields+0x480>
c0de623a:	495b      	ldr	r1, [pc, #364]	; (c0de63a8 <tx_indexRootFields+0x494>)
c0de623c:	9802      	ldr	r0, [sp, #8]
c0de623e:	4449      	add	r1, r9
c0de6240:	7800      	ldrb	r0, [r0, #0]
c0de6242:	8aca      	ldrh	r2, [r1, #22]
c0de6244:	9c03      	ldr	r4, [sp, #12]
c0de6246:	4410      	add	r0, r2
c0de6248:	82c8      	strh	r0, [r1, #22]
c0de624a:	3401      	adds	r4, #1
c0de624c:	2c07      	cmp	r4, #7
c0de624e:	f04f 0000 	mov.w	r0, #0
c0de6252:	f47f ae99 	bne.w	c0de5f88 <tx_indexRootFields+0x74>
c0de6256:	eb09 0407 	add.w	r4, r9, r7
c0de625a:	f641 0018 	movw	r0, #6168	; 0x1818
c0de625e:	5c21      	ldrb	r1, [r4, r0]
c0de6260:	f641 082c 	movw	r8, #6188	; 0x182c
c0de6264:	f041 0101 	orr.w	r1, r1, #1
c0de6268:	5421      	strb	r1, [r4, r0]
c0de626a:	484f      	ldr	r0, [pc, #316]	; (c0de63a8 <tx_indexRootFields+0x494>)
c0de626c:	f50d 7ba7 	add.w	fp, sp, #334	; 0x14e
c0de6270:	eb09 0500 	add.w	r5, r9, r0
c0de6274:	484e      	ldr	r0, [pc, #312]	; (c0de63b0 <tx_indexRootFields+0x49c>)
c0de6276:	2600      	movs	r6, #0
c0de6278:	f844 0008 	str.w	r0, [r4, r8]
c0de627c:	eb04 0708 	add.w	r7, r4, r8
c0de6280:	4658      	mov	r0, fp
c0de6282:	2102      	movs	r1, #2
c0de6284:	77ee      	strb	r6, [r5, #31]
c0de6286:	607e      	str	r6, [r7, #4]
c0de6288:	f003 fb75 	bl	c0de9976 <explicit_bzero>
c0de628c:	f50d 7a9d 	add.w	sl, sp, #314	; 0x13a
c0de6290:	4650      	mov	r0, sl
c0de6292:	2114      	movs	r1, #20
c0de6294:	f003 fb6f 	bl	c0de9976 <explicit_bzero>
c0de6298:	2002      	movs	r0, #2
c0de629a:	81b8      	strh	r0, [r7, #12]
c0de629c:	2014      	movs	r0, #20
c0de629e:	82b8      	strh	r0, [r7, #20]
c0de62a0:	8928      	ldrh	r0, [r5, #8]
c0de62a2:	f50d 719b 	add.w	r1, sp, #310	; 0x136
c0de62a6:	f8c7 b008 	str.w	fp, [r7, #8]
c0de62aa:	f8c7 a010 	str.w	sl, [r7, #16]
c0de62ae:	80be      	strh	r6, [r7, #4]
c0de62b0:	f824 6008 	strh.w	r6, [r4, r8]
c0de62b4:	f000 fc90 	bl	c0de6bd8 <tx_traverse_find>
c0de62b8:	4682      	mov	sl, r0
c0de62ba:	f003 fb41 	bl	c0de9940 <check_app_canary>
c0de62be:	f1ba 0f00 	cmp.w	sl, #0
c0de62c2:	d12d      	bne.n	c0de6320 <tx_indexRootFields+0x40c>
c0de62c4:	f8bd 0136 	ldrh.w	r0, [sp, #310]	; 0x136
c0de62c8:	f20d 1739 	addw	r7, sp, #313	; 0x139
c0de62cc:	f50d 719d 	add.w	r1, sp, #314	; 0x13a
c0de62d0:	2214      	movs	r2, #20
c0de62d2:	2300      	movs	r3, #0
c0de62d4:	9700      	str	r7, [sp, #0]
c0de62d6:	f000 fbf1 	bl	c0de6abc <tx_getToken>
c0de62da:	4682      	mov	sl, r0
c0de62dc:	f003 fb30 	bl	c0de9940 <check_app_canary>
c0de62e0:	f1ba 0f00 	cmp.w	sl, #0
c0de62e4:	d11c      	bne.n	c0de6320 <tx_indexRootFields+0x40c>
c0de62e6:	f50d 749d 	add.w	r4, sp, #314	; 0x13a
c0de62ea:	4620      	mov	r0, r4
c0de62ec:	f003 fb36 	bl	c0de995c <zemu_log_stack>
c0de62f0:	4d30      	ldr	r5, [pc, #192]	; (c0de63b4 <tx_indexRootFields+0x4a0>)
c0de62f2:	447d      	add	r5, pc
c0de62f4:	4628      	mov	r0, r5
c0de62f6:	f003 fb31 	bl	c0de995c <zemu_log_stack>
c0de62fa:	4620      	mov	r0, r4
c0de62fc:	4629      	mov	r1, r5
c0de62fe:	2211      	movs	r2, #17
c0de6300:	f003 fb3f 	bl	c0de9982 <memcmp>
c0de6304:	b110      	cbz	r0, c0de630c <tx_indexRootFields+0x3f8>
c0de6306:	4831      	ldr	r0, [pc, #196]	; (c0de63cc <tx_indexRootFields+0x4b8>)
c0de6308:	4478      	add	r0, pc
c0de630a:	e005      	b.n	c0de6318 <tx_indexRootFields+0x404>
c0de630c:	4826      	ldr	r0, [pc, #152]	; (c0de63a8 <tx_indexRootFields+0x494>)
c0de630e:	2101      	movs	r1, #1
c0de6310:	4448      	add	r0, r9
c0de6312:	77c1      	strb	r1, [r0, #31]
c0de6314:	4828      	ldr	r0, [pc, #160]	; (c0de63b8 <tx_indexRootFields+0x4a4>)
c0de6316:	4478      	add	r0, pc
c0de6318:	f003 fb20 	bl	c0de995c <zemu_log_stack>
c0de631c:	f04f 0a00 	mov.w	sl, #0
c0de6320:	f003 fb0e 	bl	c0de9940 <check_app_canary>
c0de6324:	f1ba 0f00 	cmp.w	sl, #0
c0de6328:	d134      	bne.n	c0de6394 <tx_indexRootFields+0x480>
c0de632a:	f7fa fe43 	bl	c0de0fb4 <app_mode_expert>
c0de632e:	b980      	cbnz	r0, c0de6352 <tx_indexRootFields+0x43e>
c0de6330:	f7ff fdf0 	bl	c0de5f14 <tx_indexRootFields>
c0de6334:	4604      	mov	r4, r0
c0de6336:	f003 fb03 	bl	c0de9940 <check_app_canary>
c0de633a:	481b      	ldr	r0, [pc, #108]	; (c0de63a8 <tx_indexRootFields+0x494>)
c0de633c:	4448      	add	r0, r9
c0de633e:	7fc0      	ldrb	r0, [r0, #31]
c0de6340:	4320      	orrs	r0, r4
c0de6342:	d006      	beq.n	c0de6352 <tx_indexRootFields+0x43e>
c0de6344:	4d17      	ldr	r5, [pc, #92]	; (c0de63a4 <tx_indexRootFields+0x490>)
c0de6346:	f641 0118 	movw	r1, #6168	; 0x1818
c0de634a:	eb09 0005 	add.w	r0, r9, r5
c0de634e:	5c44      	ldrb	r4, [r0, r1]
c0de6350:	e007      	b.n	c0de6362 <tx_indexRootFields+0x44e>
c0de6352:	4d14      	ldr	r5, [pc, #80]	; (c0de63a4 <tx_indexRootFields+0x490>)
c0de6354:	f641 0118 	movw	r1, #6168	; 0x1818
c0de6358:	eb09 0005 	add.w	r0, r9, r5
c0de635c:	5c40      	ldrb	r0, [r0, r1]
c0de635e:	f020 0404 	bic.w	r4, r0, #4
c0de6362:	eb09 0205 	add.w	r2, r9, r5
c0de6366:	f641 0028 	movw	r0, #6184	; 0x1828
c0de636a:	5810      	ldr	r0, [r2, r0]
c0de636c:	f004 01f7 	and.w	r1, r4, #247	; 0xf7
c0de6370:	f641 0318 	movw	r3, #6168	; 0x1818
c0de6374:	54d1      	strb	r1, [r2, r3]
c0de6376:	b158      	cbz	r0, c0de6390 <tx_indexRootFields+0x47c>
c0de6378:	f10d 011e 	add.w	r1, sp, #30
c0de637c:	f003 fb4e 	bl	c0de9a1c <strcmp>
c0de6380:	b930      	cbnz	r0, c0de6390 <tx_indexRootFields+0x47c>
c0de6382:	f044 0008 	orr.w	r0, r4, #8
c0de6386:	eb09 0105 	add.w	r1, r9, r5
c0de638a:	f641 0218 	movw	r2, #6168	; 0x1818
c0de638e:	5488      	strb	r0, [r1, r2]
c0de6390:	f04f 0a00 	mov.w	sl, #0
c0de6394:	fa5f f08a 	uxtb.w	r0, sl
c0de6398:	b054      	add	sp, #336	; 0x150
c0de639a:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de639e:	f04f 0a06 	mov.w	sl, #6
c0de63a2:	e7f7      	b.n	c0de6394 <tx_indexRootFields+0x480>
c0de63a4:	00000338 	.word	0x00000338
c0de63a8:	000053cc 	.word	0x000053cc
c0de63ac:	000053ee 	.word	0x000053ee
c0de63b0:	06020000 	.word	0x06020000
c0de63b4:	00003bb9 	.word	0x00003bb9
c0de63b8:	00003962 	.word	0x00003962
c0de63bc:	00003ceb 	.word	0x00003ceb
c0de63c0:	00003af2 	.word	0x00003af2
c0de63c4:	00003eca 	.word	0x00003eca
c0de63c8:	00003a72 	.word	0x00003a72
c0de63cc:	000039b6 	.word	0x000039b6

c0de63d0 <tx_is_expert_mode>:
c0de63d0:	b510      	push	{r4, lr}
c0de63d2:	f7fa fdef 	bl	c0de0fb4 <app_mode_expert>
c0de63d6:	b108      	cbz	r0, c0de63dc <tx_is_expert_mode+0xc>
c0de63d8:	2001      	movs	r0, #1
c0de63da:	bd10      	pop	{r4, pc}
c0de63dc:	f7ff fd9a 	bl	c0de5f14 <tx_indexRootFields>
c0de63e0:	4604      	mov	r4, r0
c0de63e2:	f003 faad 	bl	c0de9940 <check_app_canary>
c0de63e6:	4804      	ldr	r0, [pc, #16]	; (c0de63f8 <tx_is_expert_mode+0x28>)
c0de63e8:	4448      	add	r0, r9
c0de63ea:	7fc0      	ldrb	r0, [r0, #31]
c0de63ec:	4320      	orrs	r0, r4
c0de63ee:	fab0 f080 	clz	r0, r0
c0de63f2:	0940      	lsrs	r0, r0, #5
c0de63f4:	bd10      	pop	{r4, pc}
c0de63f6:	bf00      	nop
c0de63f8:	000053cc 	.word	0x000053cc

c0de63fc <tx_display_numItems>:
c0de63fc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6400:	2600      	movs	r6, #0
c0de6402:	4604      	mov	r4, r0
c0de6404:	7006      	strb	r6, [r0, #0]
c0de6406:	f7ff fd85 	bl	c0de5f14 <tx_indexRootFields>
c0de640a:	4605      	mov	r5, r0
c0de640c:	f003 fa98 	bl	c0de9940 <check_app_canary>
c0de6410:	2d00      	cmp	r5, #0
c0de6412:	d163      	bne.n	c0de64dc <tx_display_numItems+0xe0>
c0de6414:	4f33      	ldr	r7, [pc, #204]	; (c0de64e4 <tx_display_numItems+0xe8>)
c0de6416:	f641 0b19 	movw	fp, #6169	; 0x1819
c0de641a:	f04f 0800 	mov.w	r8, #0
c0de641e:	7026      	strb	r6, [r4, #0]
c0de6420:	f7ff fd78 	bl	c0de5f14 <tx_indexRootFields>
c0de6424:	4605      	mov	r5, r0
c0de6426:	f003 fa8b 	bl	c0de9940 <check_app_canary>
c0de642a:	bb7d      	cbnz	r5, c0de648c <tx_display_numItems+0x90>
c0de642c:	eb09 0007 	add.w	r0, r9, r7
c0de6430:	8ac0      	ldrh	r0, [r0, #22]
c0de6432:	b1a8      	cbz	r0, c0de6460 <tx_display_numItems+0x64>
c0de6434:	eb09 0007 	add.w	r0, r9, r7
c0de6438:	4430      	add	r0, r6
c0de643a:	f890 a018 	ldrb.w	sl, [r0, #24]
c0de643e:	f008 007f 	and.w	r0, r8, #127	; 0x7f
c0de6442:	2803      	cmp	r0, #3
c0de6444:	d20e      	bcs.n	c0de6464 <tx_display_numItems+0x68>
c0de6446:	f7fa fdb5 	bl	c0de0fb4 <app_mode_expert>
c0de644a:	b9e8      	cbnz	r0, c0de6488 <tx_display_numItems+0x8c>
c0de644c:	f7ff fd62 	bl	c0de5f14 <tx_indexRootFields>
c0de6450:	4605      	mov	r5, r0
c0de6452:	f003 fa75 	bl	c0de9940 <check_app_canary>
c0de6456:	eb09 0007 	add.w	r0, r9, r7
c0de645a:	7fc0      	ldrb	r0, [r0, #31]
c0de645c:	4328      	orrs	r0, r5
c0de645e:	d013      	beq.n	c0de6488 <tx_display_numItems+0x8c>
c0de6460:	2500      	movs	r5, #0
c0de6462:	e013      	b.n	c0de648c <tx_display_numItems+0x90>
c0de6464:	d01b      	beq.n	c0de649e <tx_display_numItems+0xa2>
c0de6466:	2805      	cmp	r0, #5
c0de6468:	d10e      	bne.n	c0de6488 <tx_display_numItems+0x8c>
c0de646a:	f7fa fda3 	bl	c0de0fb4 <app_mode_expert>
c0de646e:	b958      	cbnz	r0, c0de6488 <tx_display_numItems+0x8c>
c0de6470:	f7ff fd50 	bl	c0de5f14 <tx_indexRootFields>
c0de6474:	4605      	mov	r5, r0
c0de6476:	f003 fa63 	bl	c0de9940 <check_app_canary>
c0de647a:	eb09 0007 	add.w	r0, r9, r7
c0de647e:	7fc0      	ldrb	r0, [r0, #31]
c0de6480:	4328      	orrs	r0, r5
c0de6482:	d001      	beq.n	c0de6488 <tx_display_numItems+0x8c>
c0de6484:	2501      	movs	r5, #1
c0de6486:	e001      	b.n	c0de648c <tx_display_numItems+0x90>
c0de6488:	4655      	mov	r5, sl
c0de648a:	bf00      	nop
c0de648c:	7820      	ldrb	r0, [r4, #0]
c0de648e:	3601      	adds	r6, #1
c0de6490:	4428      	add	r0, r5
c0de6492:	2e07      	cmp	r6, #7
c0de6494:	f108 0801 	add.w	r8, r8, #1
c0de6498:	7020      	strb	r0, [r4, #0]
c0de649a:	d1c1      	bne.n	c0de6420 <tx_display_numItems+0x24>
c0de649c:	e01d      	b.n	c0de64da <tx_display_numItems+0xde>
c0de649e:	4812      	ldr	r0, [pc, #72]	; (c0de64e8 <tx_display_numItems+0xec>)
c0de64a0:	4655      	mov	r5, sl
c0de64a2:	eb09 0100 	add.w	r1, r9, r0
c0de64a6:	f811 200b 	ldrb.w	r2, [r1, fp]
c0de64aa:	f641 0018 	movw	r0, #6168	; 0x1818
c0de64ae:	5c08      	ldrb	r0, [r1, r0]
c0de64b0:	2a00      	cmp	r2, #0
c0de64b2:	ebaa 0302 	sub.w	r3, sl, r2
c0de64b6:	bf18      	it	ne
c0de64b8:	1c5d      	addne	r5, r3, #1
c0de64ba:	0782      	lsls	r2, r0, #30
c0de64bc:	bf58      	it	pl
c0de64be:	4655      	movpl	r5, sl
c0de64c0:	0742      	lsls	r2, r0, #29
c0de64c2:	d5e3      	bpl.n	c0de648c <tx_display_numItems+0x90>
c0de64c4:	f44f 52c1 	mov.w	r2, #6176	; 0x1820
c0de64c8:	5c89      	ldrb	r1, [r1, r2]
c0de64ca:	2900      	cmp	r1, #0
c0de64cc:	d0de      	beq.n	c0de648c <tx_display_numItems+0x90>
c0de64ce:	2201      	movs	r2, #1
c0de64d0:	ea22 00d0 	bic.w	r0, r2, r0, lsr #3
c0de64d4:	1a40      	subs	r0, r0, r1
c0de64d6:	4405      	add	r5, r0
c0de64d8:	e7d8      	b.n	c0de648c <tx_display_numItems+0x90>
c0de64da:	2500      	movs	r5, #0
c0de64dc:	4628      	mov	r0, r5
c0de64de:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de64e2:	bf00      	nop
c0de64e4:	000053cc 	.word	0x000053cc
c0de64e8:	00000338 	.word	0x00000338

c0de64ec <tx_display_query>:
c0de64ec:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de64f0:	b086      	sub	sp, #24
c0de64f2:	461d      	mov	r5, r3
c0de64f4:	4617      	mov	r7, r2
c0de64f6:	460e      	mov	r6, r1
c0de64f8:	4682      	mov	sl, r0
c0de64fa:	f7ff fd0b 	bl	c0de5f14 <tx_indexRootFields>
c0de64fe:	4604      	mov	r4, r0
c0de6500:	f003 fa1e 	bl	c0de9940 <check_app_canary>
c0de6504:	2c00      	cmp	r4, #0
c0de6506:	f040 81c2 	bne.w	c0de688e <tx_display_query+0x3a2>
c0de650a:	f10d 0017 	add.w	r0, sp, #23
c0de650e:	f7ff ff75 	bl	c0de63fc <tx_display_numItems>
c0de6512:	4604      	mov	r4, r0
c0de6514:	f003 fa14 	bl	c0de9940 <check_app_canary>
c0de6518:	2c00      	cmp	r4, #0
c0de651a:	f040 81b8 	bne.w	c0de688e <tx_display_query+0x3a2>
c0de651e:	f89d 0017 	ldrb.w	r0, [sp, #23]
c0de6522:	4550      	cmp	r0, sl
c0de6524:	f240 8139 	bls.w	c0de679a <tx_display_query+0x2ae>
c0de6528:	e9cd 7601 	strd	r7, r6, [sp, #4]
c0de652c:	9503      	str	r5, [sp, #12]
c0de652e:	f7ff fcf1 	bl	c0de5f14 <tx_indexRootFields>
c0de6532:	4604      	mov	r4, r0
c0de6534:	f003 fa04 	bl	c0de9940 <check_app_canary>
c0de6538:	2600      	movs	r6, #0
c0de653a:	2c00      	cmp	r4, #0
c0de653c:	d157      	bne.n	c0de65ee <tx_display_query+0x102>
c0de653e:	f8df 535c 	ldr.w	r5, [pc, #860]	; c0de689c <tx_display_query+0x3b0>
c0de6542:	f641 0718 	movw	r7, #6168	; 0x1818
c0de6546:	f641 0b19 	movw	fp, #6169	; 0x1819
c0de654a:	bf00      	nop
c0de654c:	eb09 0005 	add.w	r0, r9, r5
c0de6550:	8ac0      	ldrh	r0, [r0, #22]
c0de6552:	2800      	cmp	r0, #0
c0de6554:	d043      	beq.n	c0de65de <tx_display_query+0xf2>
c0de6556:	b2f0      	uxtb	r0, r6
c0de6558:	eb09 0105 	add.w	r1, r9, r5
c0de655c:	4401      	add	r1, r0
c0de655e:	f891 8018 	ldrb.w	r8, [r1, #24]
c0de6562:	2803      	cmp	r0, #3
c0de6564:	d20d      	bcs.n	c0de6582 <tx_display_query+0x96>
c0de6566:	f7fa fd25 	bl	c0de0fb4 <app_mode_expert>
c0de656a:	bba8      	cbnz	r0, c0de65d8 <tx_display_query+0xec>
c0de656c:	f7ff fcd2 	bl	c0de5f14 <tx_indexRootFields>
c0de6570:	4604      	mov	r4, r0
c0de6572:	f003 f9e5 	bl	c0de9940 <check_app_canary>
c0de6576:	eb09 0005 	add.w	r0, r9, r5
c0de657a:	7fc0      	ldrb	r0, [r0, #31]
c0de657c:	4320      	orrs	r0, r4
c0de657e:	d12e      	bne.n	c0de65de <tx_display_query+0xf2>
c0de6580:	e02a      	b.n	c0de65d8 <tx_display_query+0xec>
c0de6582:	d00f      	beq.n	c0de65a4 <tx_display_query+0xb8>
c0de6584:	2805      	cmp	r0, #5
c0de6586:	d127      	bne.n	c0de65d8 <tx_display_query+0xec>
c0de6588:	f7fa fd14 	bl	c0de0fb4 <app_mode_expert>
c0de658c:	bb20      	cbnz	r0, c0de65d8 <tx_display_query+0xec>
c0de658e:	f7ff fcc1 	bl	c0de5f14 <tx_indexRootFields>
c0de6592:	4604      	mov	r4, r0
c0de6594:	f003 f9d4 	bl	c0de9940 <check_app_canary>
c0de6598:	eb09 0005 	add.w	r0, r9, r5
c0de659c:	7fc0      	ldrb	r0, [r0, #31]
c0de659e:	4320      	orrs	r0, r4
c0de65a0:	d01a      	beq.n	c0de65d8 <tx_display_query+0xec>
c0de65a2:	e178      	b.n	c0de6896 <tx_display_query+0x3aa>
c0de65a4:	48be      	ldr	r0, [pc, #760]	; (c0de68a0 <tx_display_query+0x3b4>)
c0de65a6:	eb09 0100 	add.w	r1, r9, r0
c0de65aa:	f811 200b 	ldrb.w	r2, [r1, fp]
c0de65ae:	5dc8      	ldrb	r0, [r1, r7]
c0de65b0:	eba8 0302 	sub.w	r3, r8, r2
c0de65b4:	2a00      	cmp	r2, #0
c0de65b6:	4642      	mov	r2, r8
c0de65b8:	bf18      	it	ne
c0de65ba:	1c5a      	addne	r2, r3, #1
c0de65bc:	0783      	lsls	r3, r0, #30
c0de65be:	bf48      	it	mi
c0de65c0:	4690      	movmi	r8, r2
c0de65c2:	0742      	lsls	r2, r0, #29
c0de65c4:	d508      	bpl.n	c0de65d8 <tx_display_query+0xec>
c0de65c6:	f44f 52c1 	mov.w	r2, #6176	; 0x1820
c0de65ca:	5c89      	ldrb	r1, [r1, r2]
c0de65cc:	b121      	cbz	r1, c0de65d8 <tx_display_query+0xec>
c0de65ce:	2201      	movs	r2, #1
c0de65d0:	ea22 00d0 	bic.w	r0, r2, r0, lsr #3
c0de65d4:	1a40      	subs	r0, r0, r1
c0de65d6:	4480      	add	r8, r0
c0de65d8:	ea5f 6008 	movs.w	r0, r8, lsl #24
c0de65dc:	d107      	bne.n	c0de65ee <tx_display_query+0x102>
c0de65de:	3601      	adds	r6, #1
c0de65e0:	f7ff fc98 	bl	c0de5f14 <tx_indexRootFields>
c0de65e4:	4604      	mov	r4, r0
c0de65e6:	f003 f9ab 	bl	c0de9940 <check_app_canary>
c0de65ea:	2c00      	cmp	r4, #0
c0de65ec:	d0ae      	beq.n	c0de654c <tx_display_query+0x60>
c0de65ee:	fa5f f08a 	uxtb.w	r0, sl
c0de65f2:	f04f 0a00 	mov.w	sl, #0
c0de65f6:	2800      	cmp	r0, #0
c0de65f8:	9004      	str	r0, [sp, #16]
c0de65fa:	f000 80d0 	beq.w	c0de679e <tx_display_query+0x2b2>
c0de65fe:	f8df 829c 	ldr.w	r8, [pc, #668]	; c0de689c <tx_display_query+0x3b0>
c0de6602:	4635      	mov	r5, r6
c0de6604:	f04f 0b00 	mov.w	fp, #0
c0de6608:	f7ff fc84 	bl	c0de5f14 <tx_indexRootFields>
c0de660c:	4607      	mov	r7, r0
c0de660e:	f003 f997 	bl	c0de9940 <check_app_canary>
c0de6612:	b14f      	cbz	r7, c0de6628 <tx_display_query+0x13c>
c0de6614:	f10a 0a01 	add.w	sl, sl, #1
c0de6618:	b2f8      	uxtb	r0, r7
c0de661a:	fa5f f18a 	uxtb.w	r1, sl
c0de661e:	4281      	cmp	r1, r0
c0de6620:	d21e      	bcs.n	c0de6660 <tx_display_query+0x174>
c0de6622:	462e      	mov	r6, r5
c0de6624:	e07a      	b.n	c0de671c <tx_display_query+0x230>
c0de6626:	bf00      	nop
c0de6628:	eb09 0008 	add.w	r0, r9, r8
c0de662c:	8ac0      	ldrh	r0, [r0, #22]
c0de662e:	b1b8      	cbz	r0, c0de6660 <tx_display_query+0x174>
c0de6630:	b2e8      	uxtb	r0, r5
c0de6632:	eb09 0108 	add.w	r1, r9, r8
c0de6636:	4401      	add	r1, r0
c0de6638:	7e0e      	ldrb	r6, [r1, #24]
c0de663a:	2803      	cmp	r0, #3
c0de663c:	d278      	bcs.n	c0de6730 <tx_display_query+0x244>
c0de663e:	f7fa fcb9 	bl	c0de0fb4 <app_mode_expert>
c0de6642:	2800      	cmp	r0, #0
c0de6644:	f040 8086 	bne.w	c0de6754 <tx_display_query+0x268>
c0de6648:	f7ff fc64 	bl	c0de5f14 <tx_indexRootFields>
c0de664c:	4604      	mov	r4, r0
c0de664e:	f003 f977 	bl	c0de9940 <check_app_canary>
c0de6652:	eb09 0008 	add.w	r0, r9, r8
c0de6656:	7fc0      	ldrb	r0, [r0, #31]
c0de6658:	4320      	orrs	r0, r4
c0de665a:	d07b      	beq.n	c0de6754 <tx_display_query+0x268>
c0de665c:	2700      	movs	r7, #0
c0de665e:	e7d9      	b.n	c0de6614 <tx_display_query+0x128>
c0de6660:	1c6e      	adds	r6, r5, #1
c0de6662:	f7ff fc57 	bl	c0de5f14 <tx_indexRootFields>
c0de6666:	4604      	mov	r4, r0
c0de6668:	f003 f96a 	bl	c0de9940 <check_app_canary>
c0de666c:	2c00      	cmp	r4, #0
c0de666e:	d153      	bne.n	c0de6718 <tx_display_query+0x22c>
c0de6670:	eb09 0008 	add.w	r0, r9, r8
c0de6674:	8ac0      	ldrh	r0, [r0, #22]
c0de6676:	b338      	cbz	r0, c0de66c8 <tx_display_query+0x1dc>
c0de6678:	b2f0      	uxtb	r0, r6
c0de667a:	eb09 0108 	add.w	r1, r9, r8
c0de667e:	4408      	add	r0, r1
c0de6680:	7e07      	ldrb	r7, [r0, #24]
c0de6682:	b2e8      	uxtb	r0, r5
c0de6684:	2803      	cmp	r0, #3
c0de6686:	dc21      	bgt.n	c0de66cc <tx_display_query+0x1e0>
c0de6688:	2802      	cmp	r0, #2
c0de668a:	d323      	bcc.n	c0de66d4 <tx_display_query+0x1e8>
c0de668c:	d140      	bne.n	c0de6710 <tx_display_query+0x224>
c0de668e:	4884      	ldr	r0, [pc, #528]	; (c0de68a0 <tx_display_query+0x3b4>)
c0de6690:	eb09 0100 	add.w	r1, r9, r0
c0de6694:	f641 0019 	movw	r0, #6169	; 0x1819
c0de6698:	5c0a      	ldrb	r2, [r1, r0]
c0de669a:	f641 0018 	movw	r0, #6168	; 0x1818
c0de669e:	5c08      	ldrb	r0, [r1, r0]
c0de66a0:	1abb      	subs	r3, r7, r2
c0de66a2:	2a00      	cmp	r2, #0
c0de66a4:	463a      	mov	r2, r7
c0de66a6:	bf18      	it	ne
c0de66a8:	1c5a      	addne	r2, r3, #1
c0de66aa:	0783      	lsls	r3, r0, #30
c0de66ac:	bf48      	it	mi
c0de66ae:	4617      	movmi	r7, r2
c0de66b0:	0742      	lsls	r2, r0, #29
c0de66b2:	d52d      	bpl.n	c0de6710 <tx_display_query+0x224>
c0de66b4:	f44f 52c1 	mov.w	r2, #6176	; 0x1820
c0de66b8:	5c89      	ldrb	r1, [r1, r2]
c0de66ba:	b349      	cbz	r1, c0de6710 <tx_display_query+0x224>
c0de66bc:	2201      	movs	r2, #1
c0de66be:	ea22 00d0 	bic.w	r0, r2, r0, lsr #3
c0de66c2:	1a40      	subs	r0, r0, r1
c0de66c4:	4407      	add	r7, r0
c0de66c6:	e023      	b.n	c0de6710 <tx_display_query+0x224>
c0de66c8:	2000      	movs	r0, #0
c0de66ca:	e022      	b.n	c0de6712 <tx_display_query+0x226>
c0de66cc:	2804      	cmp	r0, #4
c0de66ce:	d010      	beq.n	c0de66f2 <tx_display_query+0x206>
c0de66d0:	28ff      	cmp	r0, #255	; 0xff
c0de66d2:	d11d      	bne.n	c0de6710 <tx_display_query+0x224>
c0de66d4:	f7fa fc6e 	bl	c0de0fb4 <app_mode_expert>
c0de66d8:	b9d0      	cbnz	r0, c0de6710 <tx_display_query+0x224>
c0de66da:	f7ff fc1b 	bl	c0de5f14 <tx_indexRootFields>
c0de66de:	4604      	mov	r4, r0
c0de66e0:	f003 f92e 	bl	c0de9940 <check_app_canary>
c0de66e4:	eb09 0008 	add.w	r0, r9, r8
c0de66e8:	7fc0      	ldrb	r0, [r0, #31]
c0de66ea:	4320      	orrs	r0, r4
c0de66ec:	bf18      	it	ne
c0de66ee:	2700      	movne	r7, #0
c0de66f0:	e00e      	b.n	c0de6710 <tx_display_query+0x224>
c0de66f2:	f7fa fc5f 	bl	c0de0fb4 <app_mode_expert>
c0de66f6:	b958      	cbnz	r0, c0de6710 <tx_display_query+0x224>
c0de66f8:	f7ff fc0c 	bl	c0de5f14 <tx_indexRootFields>
c0de66fc:	4604      	mov	r4, r0
c0de66fe:	f003 f91f 	bl	c0de9940 <check_app_canary>
c0de6702:	eb09 0008 	add.w	r0, r9, r8
c0de6706:	7fc0      	ldrb	r0, [r0, #31]
c0de6708:	4320      	orrs	r0, r4
c0de670a:	bf18      	it	ne
c0de670c:	2701      	movne	r7, #1
c0de670e:	bf00      	nop
c0de6710:	b2f8      	uxtb	r0, r7
c0de6712:	2800      	cmp	r0, #0
c0de6714:	4635      	mov	r5, r6
c0de6716:	d0a3      	beq.n	c0de6660 <tx_display_query+0x174>
c0de6718:	f04f 0a00 	mov.w	sl, #0
c0de671c:	f10b 0b01 	add.w	fp, fp, #1
c0de6720:	9904      	ldr	r1, [sp, #16]
c0de6722:	fa1f f08b 	uxth.w	r0, fp
c0de6726:	4288      	cmp	r0, r1
c0de6728:	4635      	mov	r5, r6
c0de672a:	f4ff af6d 	bcc.w	c0de6608 <tx_display_query+0x11c>
c0de672e:	e036      	b.n	c0de679e <tx_display_query+0x2b2>
c0de6730:	d012      	beq.n	c0de6758 <tx_display_query+0x26c>
c0de6732:	2805      	cmp	r0, #5
c0de6734:	d10e      	bne.n	c0de6754 <tx_display_query+0x268>
c0de6736:	f7fa fc3d 	bl	c0de0fb4 <app_mode_expert>
c0de673a:	b958      	cbnz	r0, c0de6754 <tx_display_query+0x268>
c0de673c:	f7ff fbea 	bl	c0de5f14 <tx_indexRootFields>
c0de6740:	4604      	mov	r4, r0
c0de6742:	f003 f8fd 	bl	c0de9940 <check_app_canary>
c0de6746:	eb09 0008 	add.w	r0, r9, r8
c0de674a:	7fc0      	ldrb	r0, [r0, #31]
c0de674c:	4320      	orrs	r0, r4
c0de674e:	d001      	beq.n	c0de6754 <tx_display_query+0x268>
c0de6750:	2701      	movs	r7, #1
c0de6752:	e75f      	b.n	c0de6614 <tx_display_query+0x128>
c0de6754:	4637      	mov	r7, r6
c0de6756:	e75d      	b.n	c0de6614 <tx_display_query+0x128>
c0de6758:	4851      	ldr	r0, [pc, #324]	; (c0de68a0 <tx_display_query+0x3b4>)
c0de675a:	4637      	mov	r7, r6
c0de675c:	eb09 0100 	add.w	r1, r9, r0
c0de6760:	f641 0019 	movw	r0, #6169	; 0x1819
c0de6764:	5c0a      	ldrb	r2, [r1, r0]
c0de6766:	f641 0018 	movw	r0, #6168	; 0x1818
c0de676a:	5c08      	ldrb	r0, [r1, r0]
c0de676c:	2a00      	cmp	r2, #0
c0de676e:	eba6 0302 	sub.w	r3, r6, r2
c0de6772:	bf18      	it	ne
c0de6774:	1c5f      	addne	r7, r3, #1
c0de6776:	0782      	lsls	r2, r0, #30
c0de6778:	bf58      	it	pl
c0de677a:	4637      	movpl	r7, r6
c0de677c:	0742      	lsls	r2, r0, #29
c0de677e:	f57f af49 	bpl.w	c0de6614 <tx_display_query+0x128>
c0de6782:	f44f 52c1 	mov.w	r2, #6176	; 0x1820
c0de6786:	5c89      	ldrb	r1, [r1, r2]
c0de6788:	2900      	cmp	r1, #0
c0de678a:	f43f af43 	beq.w	c0de6614 <tx_display_query+0x128>
c0de678e:	2201      	movs	r2, #1
c0de6790:	ea22 00d0 	bic.w	r0, r2, r0, lsr #3
c0de6794:	1a40      	subs	r0, r0, r1
c0de6796:	4407      	add	r7, r0
c0de6798:	e73c      	b.n	c0de6614 <tx_display_query+0x128>
c0de679a:	2403      	movs	r4, #3
c0de679c:	e077      	b.n	c0de688e <tx_display_query+0x3a2>
c0de679e:	fa5f f886 	uxtb.w	r8, r6
c0de67a2:	f003 f8cd 	bl	c0de9940 <check_app_canary>
c0de67a6:	f1b8 0f07 	cmp.w	r8, #7
c0de67aa:	d86f      	bhi.n	c0de688c <tx_display_query+0x3a0>
c0de67ac:	483c      	ldr	r0, [pc, #240]	; (c0de68a0 <tx_display_query+0x3b4>)
c0de67ae:	f641 022c 	movw	r2, #6188	; 0x182c
c0de67b2:	eb09 0100 	add.w	r1, r9, r0
c0de67b6:	2300      	movs	r3, #0
c0de67b8:	528b      	strh	r3, [r1, r2]
c0de67ba:	4411      	add	r1, r2
c0de67bc:	2206      	movs	r2, #6
c0de67be:	70ca      	strb	r2, [r1, #3]
c0de67c0:	f1b8 0f02 	cmp.w	r8, #2
c0de67c4:	f04f 0102 	mov.w	r1, #2
c0de67c8:	dd09      	ble.n	c0de67de <tx_display_query+0x2f2>
c0de67ca:	f1b8 0f04 	cmp.w	r8, #4
c0de67ce:	dc0b      	bgt.n	c0de67e8 <tx_display_query+0x2fc>
c0de67d0:	f1b8 0f03 	cmp.w	r8, #3
c0de67d4:	d010      	beq.n	c0de67f8 <tx_display_query+0x30c>
c0de67d6:	f1b8 0f04 	cmp.w	r8, #4
c0de67da:	d016      	beq.n	c0de680a <tx_display_query+0x31e>
c0de67dc:	e014      	b.n	c0de6808 <tx_display_query+0x31c>
c0de67de:	f1b8 0f03 	cmp.w	r8, #3
c0de67e2:	bf28      	it	cs
c0de67e4:	2100      	movcs	r1, #0
c0de67e6:	e010      	b.n	c0de680a <tx_display_query+0x31e>
c0de67e8:	f1b8 0f06 	cmp.w	r8, #6
c0de67ec:	d002      	beq.n	c0de67f4 <tx_display_query+0x308>
c0de67ee:	f1b8 0f05 	cmp.w	r8, #5
c0de67f2:	d109      	bne.n	c0de6808 <tx_display_query+0x31c>
c0de67f4:	2101      	movs	r1, #1
c0de67f6:	e008      	b.n	c0de680a <tx_display_query+0x31e>
c0de67f8:	492a      	ldr	r1, [pc, #168]	; (c0de68a4 <tx_display_query+0x3b8>)
c0de67fa:	f819 2001 	ldrb.w	r2, [r9, r1]
c0de67fe:	2103      	movs	r1, #3
c0de6800:	2a00      	cmp	r2, #0
c0de6802:	bf08      	it	eq
c0de6804:	2102      	moveq	r1, #2
c0de6806:	e000      	b.n	c0de680a <tx_display_query+0x31e>
c0de6808:	2100      	movs	r1, #0
c0de680a:	eb09 0500 	add.w	r5, r9, r0
c0de680e:	f641 002c 	movw	r0, #6188	; 0x182c
c0de6812:	9c02      	ldr	r4, [sp, #8]
c0de6814:	9f01      	ldr	r7, [sp, #4]
c0de6816:	182e      	adds	r6, r5, r0
c0de6818:	2000      	movs	r0, #0
c0de681a:	70b1      	strb	r1, [r6, #2]
c0de681c:	6070      	str	r0, [r6, #4]
c0de681e:	4620      	mov	r0, r4
c0de6820:	4639      	mov	r1, r7
c0de6822:	f003 f8a8 	bl	c0de9976 <explicit_bzero>
c0de6826:	4820      	ldr	r0, [pc, #128]	; (c0de68a8 <tx_display_query+0x3bc>)
c0de6828:	2102      	movs	r1, #2
c0de682a:	eb09 0b00 	add.w	fp, r9, r0
c0de682e:	4658      	mov	r0, fp
c0de6830:	f003 f8a1 	bl	c0de9976 <explicit_bzero>
c0de6834:	2002      	movs	r0, #2
c0de6836:	82b0      	strh	r0, [r6, #20]
c0de6838:	fa5f f08a 	uxtb.w	r0, sl
c0de683c:	80b0      	strh	r0, [r6, #4]
c0de683e:	f641 002c 	movw	r0, #6188	; 0x182c
c0de6842:	2100      	movs	r1, #0
c0de6844:	5229      	strh	r1, [r5, r0]
c0de6846:	4620      	mov	r0, r4
c0de6848:	4639      	mov	r1, r7
c0de684a:	60b4      	str	r4, [r6, #8]
c0de684c:	f8c6 b010 	str.w	fp, [r6, #16]
c0de6850:	81b7      	strh	r7, [r6, #12]
c0de6852:	f003 f890 	bl	c0de9976 <explicit_bzero>
c0de6856:	b13f      	cbz	r7, c0de6868 <tx_display_query+0x37c>
c0de6858:	4640      	mov	r0, r8
c0de685a:	f7ff fb21 	bl	c0de5ea0 <get_required_root_item>
c0de685e:	4601      	mov	r1, r0
c0de6860:	1e7a      	subs	r2, r7, #1
c0de6862:	4620      	mov	r0, r4
c0de6864:	f003 f900 	bl	c0de9a68 <strncpy>
c0de6868:	480c      	ldr	r0, [pc, #48]	; (c0de689c <tx_display_query+0x3b0>)
c0de686a:	eb09 0100 	add.w	r1, r9, r0
c0de686e:	f811 1008 	ldrb.w	r1, [r1, r8]
c0de6872:	2900      	cmp	r1, #0
c0de6874:	9903      	ldr	r1, [sp, #12]
c0de6876:	d009      	beq.n	c0de688c <tx_display_query+0x3a0>
c0de6878:	4448      	add	r0, r9
c0de687a:	eb00 0048 	add.w	r0, r0, r8, lsl #1
c0de687e:	8900      	ldrh	r0, [r0, #8]
c0de6880:	f000 f9aa 	bl	c0de6bd8 <tx_traverse_find>
c0de6884:	4604      	mov	r4, r0
c0de6886:	f003 f85b 	bl	c0de9940 <check_app_canary>
c0de688a:	e000      	b.n	c0de688e <tx_display_query+0x3a2>
c0de688c:	2401      	movs	r4, #1
c0de688e:	4620      	mov	r0, r4
c0de6890:	b006      	add	sp, #24
c0de6892:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de6896:	2605      	movs	r6, #5
c0de6898:	e6a9      	b.n	c0de65ee <tx_display_query+0x102>
c0de689a:	bf00      	nop
c0de689c:	000053cc 	.word	0x000053cc
c0de68a0:	00000338 	.word	0x00000338
c0de68a4:	000053ee 	.word	0x000053ee
c0de68a8:	000053ec 	.word	0x000053ec

c0de68ac <tx_display_make_friendly>:
c0de68ac:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de68ae:	b081      	sub	sp, #4
c0de68b0:	f7ff fb30 	bl	c0de5f14 <tx_indexRootFields>
c0de68b4:	4604      	mov	r4, r0
c0de68b6:	f003 f843 	bl	c0de9940 <check_app_canary>
c0de68ba:	bb44      	cbnz	r4, c0de690e <tx_display_make_friendly+0x62>
c0de68bc:	4e15      	ldr	r6, [pc, #84]	; (c0de6914 <tx_display_make_friendly+0x68>)
c0de68be:	f641 0134 	movw	r1, #6196	; 0x1834
c0de68c2:	eb09 0006 	add.w	r0, r9, r6
c0de68c6:	5844      	ldr	r4, [r0, r1]
c0de68c8:	4d13      	ldr	r5, [pc, #76]	; (c0de6918 <tx_display_make_friendly+0x6c>)
c0de68ca:	2725      	movs	r7, #37	; 0x25
c0de68cc:	447d      	add	r5, pc
c0de68ce:	bf00      	nop
c0de68d0:	4628      	mov	r0, r5
c0de68d2:	f003 f8ad 	bl	c0de9a30 <strlen>
c0de68d6:	4602      	mov	r2, r0
c0de68d8:	4620      	mov	r0, r4
c0de68da:	4629      	mov	r1, r5
c0de68dc:	f003 f8b0 	bl	c0de9a40 <strncmp>
c0de68e0:	b120      	cbz	r0, c0de68ec <tx_display_make_friendly+0x40>
c0de68e2:	3f01      	subs	r7, #1
c0de68e4:	f105 0564 	add.w	r5, r5, #100	; 0x64
c0de68e8:	d1f2      	bne.n	c0de68d0 <tx_display_make_friendly+0x24>
c0de68ea:	e00f      	b.n	c0de690c <tx_display_make_friendly+0x60>
c0de68ec:	eb09 0006 	add.w	r0, r9, r6
c0de68f0:	f641 0138 	movw	r1, #6200	; 0x1838
c0de68f4:	5a46      	ldrh	r6, [r0, r1]
c0de68f6:	4620      	mov	r0, r4
c0de68f8:	4631      	mov	r1, r6
c0de68fa:	f003 f83c 	bl	c0de9976 <explicit_bzero>
c0de68fe:	b12e      	cbz	r6, c0de690c <tx_display_make_friendly+0x60>
c0de6900:	f105 0132 	add.w	r1, r5, #50	; 0x32
c0de6904:	1e72      	subs	r2, r6, #1
c0de6906:	4620      	mov	r0, r4
c0de6908:	f003 f8ae 	bl	c0de9a68 <strncpy>
c0de690c:	2400      	movs	r4, #0
c0de690e:	4620      	mov	r0, r4
c0de6910:	b001      	add	sp, #4
c0de6912:	bdf0      	pop	{r4, r5, r6, r7, pc}
c0de6914:	00000338 	.word	0x00000338
c0de6918:	00004cd8 	.word	0x00004cd8

c0de691c <tx_display_translation>:
c0de691c:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6920:	b08c      	sub	sp, #48	; 0x30
c0de6922:	469b      	mov	fp, r3
c0de6924:	4690      	mov	r8, r2
c0de6926:	460d      	mov	r5, r1
c0de6928:	4604      	mov	r4, r0
c0de692a:	f003 f824 	bl	c0de9976 <explicit_bzero>
c0de692e:	f898 0000 	ldrb.w	r0, [r8]
c0de6932:	2800      	cmp	r0, #0
c0de6934:	f000 80a3 	beq.w	c0de6a7e <tx_display_translation+0x162>
c0de6938:	4e5e      	ldr	r6, [pc, #376]	; (c0de6ab4 <tx_display_translation+0x198>)
c0de693a:	f10d 0a14 	add.w	sl, sp, #20
c0de693e:	447e      	add	r6, pc
c0de6940:	2700      	movs	r7, #0
c0de6942:	46c4      	mov	ip, r8
c0de6944:	9503      	str	r5, [sp, #12]
c0de6946:	e9cd b801 	strd	fp, r8, [sp, #4]
c0de694a:	bf00      	nop
c0de694c:	2000      	movs	r0, #0
c0de694e:	900b      	str	r0, [sp, #44]	; 0x2c
c0de6950:	4660      	mov	r0, ip
c0de6952:	a90b      	add	r1, sp, #44	; 0x2c
c0de6954:	f7ff fa68 	bl	c0de5e28 <utf8codepoint>
c0de6958:	990b      	ldr	r1, [sp, #44]	; 0x2c
c0de695a:	4684      	mov	ip, r0
c0de695c:	290e      	cmp	r1, #14
c0de695e:	dc0b      	bgt.n	c0de6978 <tx_display_translation+0x5c>
c0de6960:	2000      	movs	r0, #0
c0de6962:	bf00      	nop
c0de6964:	f816 2010 	ldrb.w	r2, [r6, r0, lsl #1]
c0de6968:	b2cb      	uxtb	r3, r1
c0de696a:	429a      	cmp	r2, r3
c0de696c:	d010      	beq.n	c0de6990 <tx_display_translation+0x74>
c0de696e:	3001      	adds	r0, #1
c0de6970:	2808      	cmp	r0, #8
c0de6972:	d1f7      	bne.n	c0de6964 <tx_display_translation+0x48>
c0de6974:	e07e      	b.n	c0de6a74 <tx_display_translation+0x158>
c0de6976:	bf00      	nop
c0de6978:	f1a1 0020 	sub.w	r0, r1, #32
c0de697c:	285f      	cmp	r0, #95	; 0x5f
c0de697e:	d819      	bhi.n	c0de69b4 <tx_display_translation+0x98>
c0de6980:	3701      	adds	r7, #1
c0de6982:	b2f8      	uxtb	r0, r7
c0de6984:	42a8      	cmp	r0, r5
c0de6986:	f804 1b01 	strb.w	r1, [r4], #1
c0de698a:	d973      	bls.n	c0de6a74 <tx_display_translation+0x158>
c0de698c:	e08b      	b.n	c0de6aa6 <tx_display_translation+0x18a>
c0de698e:	bf00      	nop
c0de6990:	1c79      	adds	r1, r7, #1
c0de6992:	b2c9      	uxtb	r1, r1
c0de6994:	42a9      	cmp	r1, r5
c0de6996:	f04f 015c 	mov.w	r1, #92	; 0x5c
c0de699a:	7021      	strb	r1, [r4, #0]
c0de699c:	f200 8083 	bhi.w	c0de6aa6 <tx_display_translation+0x18a>
c0de69a0:	eb06 0040 	add.w	r0, r6, r0, lsl #1
c0de69a4:	3702      	adds	r7, #2
c0de69a6:	7840      	ldrb	r0, [r0, #1]
c0de69a8:	b2f9      	uxtb	r1, r7
c0de69aa:	42a9      	cmp	r1, r5
c0de69ac:	7060      	strb	r0, [r4, #1]
c0de69ae:	d87a      	bhi.n	c0de6aa6 <tx_display_translation+0x18a>
c0de69b0:	3402      	adds	r4, #2
c0de69b2:	e05f      	b.n	c0de6a74 <tx_display_translation+0x158>
c0de69b4:	1c78      	adds	r0, r7, #1
c0de69b6:	b2c0      	uxtb	r0, r0
c0de69b8:	42a8      	cmp	r0, r5
c0de69ba:	f04f 005c 	mov.w	r0, #92	; 0x5c
c0de69be:	7020      	strb	r0, [r4, #0]
c0de69c0:	d871      	bhi.n	c0de6aa6 <tx_display_translation+0x18a>
c0de69c2:	980b      	ldr	r0, [sp, #44]	; 0x2c
c0de69c4:	f107 0b02 	add.w	fp, r7, #2
c0de69c8:	ba01      	rev	r1, r0
c0de69ca:	f5b0 3f80 	cmp.w	r0, #65536	; 0x10000
c0de69ce:	fa5f f08b 	uxtb.w	r0, fp
c0de69d2:	910a      	str	r1, [sp, #40]	; 0x28
c0de69d4:	db07      	blt.n	c0de69e6 <tx_display_translation+0xca>
c0de69d6:	42a8      	cmp	r0, r5
c0de69d8:	f04f 0055 	mov.w	r0, #85	; 0x55
c0de69dc:	7060      	strb	r0, [r4, #1]
c0de69de:	d862      	bhi.n	c0de6aa6 <tx_display_translation+0x18a>
c0de69e0:	f04f 0808 	mov.w	r8, #8
c0de69e4:	e009      	b.n	c0de69fa <tx_display_translation+0xde>
c0de69e6:	42a8      	cmp	r0, r5
c0de69e8:	f04f 0075 	mov.w	r0, #117	; 0x75
c0de69ec:	7060      	strb	r0, [r4, #1]
c0de69ee:	d85a      	bhi.n	c0de6aa6 <tx_display_translation+0x18a>
c0de69f0:	f8bd 002a 	ldrh.w	r0, [sp, #42]	; 0x2a
c0de69f4:	f04f 0804 	mov.w	r8, #4
c0de69f8:	900a      	str	r0, [sp, #40]	; 0x28
c0de69fa:	45a8      	cmp	r8, r5
c0de69fc:	af0a      	add	r7, sp, #40	; 0x28
c0de69fe:	d854      	bhi.n	c0de6aaa <tx_display_translation+0x18e>
c0de6a00:	4650      	mov	r0, sl
c0de6a02:	2112      	movs	r1, #18
c0de6a04:	f8cd c010 	str.w	ip, [sp, #16]
c0de6a08:	3402      	adds	r4, #2
c0de6a0a:	f002 ffa8 	bl	c0de995e <__aeabi_memclr>
c0de6a0e:	4650      	mov	r0, sl
c0de6a10:	2112      	movs	r1, #18
c0de6a12:	f002 ffb0 	bl	c0de9976 <explicit_bzero>
c0de6a16:	2000      	movs	r0, #0
c0de6a18:	5c39      	ldrb	r1, [r7, r0]
c0de6a1a:	4a27      	ldr	r2, [pc, #156]	; (c0de6ab8 <tx_display_translation+0x19c>)
c0de6a1c:	090b      	lsrs	r3, r1, #4
c0de6a1e:	447a      	add	r2, pc
c0de6a20:	5cd3      	ldrb	r3, [r2, r3]
c0de6a22:	f001 010f 	and.w	r1, r1, #15
c0de6a26:	eb0a 0540 	add.w	r5, sl, r0, lsl #1
c0de6a2a:	f80a 3010 	strb.w	r3, [sl, r0, lsl #1]
c0de6a2e:	5c51      	ldrb	r1, [r2, r1]
c0de6a30:	3001      	adds	r0, #1
c0de6a32:	2808      	cmp	r0, #8
c0de6a34:	7069      	strb	r1, [r5, #1]
c0de6a36:	d1ef      	bne.n	c0de6a18 <tx_display_translation+0xfc>
c0de6a38:	2100      	movs	r1, #0
c0de6a3a:	e9dd 5c03 	ldrd	r5, ip, [sp, #12]
c0de6a3e:	f80a 1010 	strb.w	r1, [sl, r0, lsl #1]
c0de6a42:	eb0b 0708 	add.w	r7, fp, r8
c0de6a46:	4650      	mov	r0, sl
c0de6a48:	7801      	ldrb	r1, [r0, #0]
c0de6a4a:	f10b 0b01 	add.w	fp, fp, #1
c0de6a4e:	f1a1 0261 	sub.w	r2, r1, #97	; 0x61
c0de6a52:	b2d2      	uxtb	r2, r2
c0de6a54:	2a1a      	cmp	r2, #26
c0de6a56:	fa5f f28b 	uxtb.w	r2, fp
c0de6a5a:	bf38      	it	cc
c0de6a5c:	3920      	subcc	r1, #32
c0de6a5e:	42aa      	cmp	r2, r5
c0de6a60:	7021      	strb	r1, [r4, #0]
c0de6a62:	d820      	bhi.n	c0de6aa6 <tx_display_translation+0x18a>
c0de6a64:	3401      	adds	r4, #1
c0de6a66:	f1b8 0801 	subs.w	r8, r8, #1
c0de6a6a:	f100 0001 	add.w	r0, r0, #1
c0de6a6e:	d1eb      	bne.n	c0de6a48 <tx_display_translation+0x12c>
c0de6a70:	e9dd b801 	ldrd	fp, r8, [sp, #4]
c0de6a74:	f89c 0000 	ldrb.w	r0, [ip]
c0de6a78:	2800      	cmp	r0, #0
c0de6a7a:	f47f af67 	bne.w	c0de694c <tx_display_translation+0x30>
c0de6a7e:	eb0b 0008 	add.w	r0, fp, r8
c0de6a82:	f810 0c01 	ldrb.w	r0, [r0, #-1]
c0de6a86:	2840      	cmp	r0, #64	; 0x40
c0de6a88:	d001      	beq.n	c0de6a8e <tx_display_translation+0x172>
c0de6a8a:	2820      	cmp	r0, #32
c0de6a8c:	d108      	bne.n	c0de6aa0 <tx_display_translation+0x184>
c0de6a8e:	eb05 0008 	add.w	r0, r5, r8
c0de6a92:	f810 0c01 	ldrb.w	r0, [r0, #-1]
c0de6a96:	42a8      	cmp	r0, r5
c0de6a98:	d207      	bcs.n	c0de6aaa <tx_display_translation+0x18e>
c0de6a9a:	2040      	movs	r0, #64	; 0x40
c0de6a9c:	f804 0b01 	strb.w	r0, [r4], #1
c0de6aa0:	2000      	movs	r0, #0
c0de6aa2:	7020      	strb	r0, [r4, #0]
c0de6aa4:	e002      	b.n	c0de6aac <tx_display_translation+0x190>
c0de6aa6:	2014      	movs	r0, #20
c0de6aa8:	e000      	b.n	c0de6aac <tx_display_translation+0x190>
c0de6aaa:	2009      	movs	r0, #9
c0de6aac:	b00c      	add	sp, #48	; 0x30
c0de6aae:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de6ab2:	bf00      	nop
c0de6ab4:	00004c46 	.word	0x00004c46
c0de6ab8:	00003443 	.word	0x00003443

c0de6abc <tx_getToken>:
c0de6abc:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6ac0:	b082      	sub	sp, #8
c0de6ac2:	9e0a      	ldr	r6, [sp, #40]	; 0x28
c0de6ac4:	4604      	mov	r4, r0
c0de6ac6:	2000      	movs	r0, #0
c0de6ac8:	460f      	mov	r7, r1
c0de6aca:	7030      	strb	r0, [r6, #0]
c0de6acc:	4608      	mov	r0, r1
c0de6ace:	4611      	mov	r1, r2
c0de6ad0:	461d      	mov	r5, r3
c0de6ad2:	4692      	mov	sl, r2
c0de6ad4:	f002 ff4f 	bl	c0de9976 <explicit_bzero>
c0de6ad8:	493b      	ldr	r1, [pc, #236]	; (c0de6bc8 <tx_getToken+0x10c>)
c0de6ada:	eb09 0001 	add.w	r0, r9, r1
c0de6ade:	eb00 02c4 	add.w	r2, r0, r4, lsl #3
c0de6ae2:	f9b2 0012 	ldrsh.w	r0, [r2, #18]
c0de6ae6:	f9b2 2014 	ldrsh.w	r2, [r2, #20]
c0de6aea:	4282      	cmp	r2, r0
c0de6aec:	da01      	bge.n	c0de6af2 <tx_getToken+0x36>
c0de6aee:	2008      	movs	r0, #8
c0de6af0:	e067      	b.n	c0de6bc2 <tx_getToken+0x106>
c0de6af2:	4449      	add	r1, r9
c0de6af4:	6849      	ldr	r1, [r1, #4]
c0de6af6:	eba2 0b00 	sub.w	fp, r2, r0
c0de6afa:	2201      	movs	r2, #1
c0de6afc:	ea5f 430b 	movs.w	r3, fp, lsl #16
c0de6b00:	7032      	strb	r2, [r6, #0]
c0de6b02:	d058      	beq.n	c0de6bb6 <tx_getToken+0xfa>
c0de6b04:	e9cd 7500 	strd	r7, r5, [sp]
c0de6b08:	4d31      	ldr	r5, [pc, #196]	; (c0de6bd0 <tx_getToken+0x114>)
c0de6b0a:	180f      	adds	r7, r1, r0
c0de6b0c:	fa1f f48b 	uxth.w	r4, fp
c0de6b10:	447d      	add	r5, pc
c0de6b12:	f04f 080b 	mov.w	r8, #11
c0de6b16:	bf00      	nop
c0de6b18:	4628      	mov	r0, r5
c0de6b1a:	f002 ff89 	bl	c0de9a30 <strlen>
c0de6b1e:	42a0      	cmp	r0, r4
c0de6b20:	d105      	bne.n	c0de6b2e <tx_getToken+0x72>
c0de6b22:	4638      	mov	r0, r7
c0de6b24:	4629      	mov	r1, r5
c0de6b26:	4622      	mov	r2, r4
c0de6b28:	f002 ff2b 	bl	c0de9982 <memcmp>
c0de6b2c:	b128      	cbz	r0, c0de6b3a <tx_getToken+0x7e>
c0de6b2e:	f1b8 0801 	subs.w	r8, r8, #1
c0de6b32:	f105 0564 	add.w	r5, r5, #100	; 0x64
c0de6b36:	d1ef      	bne.n	c0de6b18 <tx_getToken+0x5c>
c0de6b38:	e010      	b.n	c0de6b5c <tx_getToken+0xa0>
c0de6b3a:	f105 0732 	add.w	r7, r5, #50	; 0x32
c0de6b3e:	4638      	mov	r0, r7
c0de6b40:	f002 ff76 	bl	c0de9a30 <strlen>
c0de6b44:	4923      	ldr	r1, [pc, #140]	; (c0de6bd4 <tx_getToken+0x118>)
c0de6b46:	4683      	mov	fp, r0
c0de6b48:	4479      	add	r1, pc
c0de6b4a:	4638      	mov	r0, r7
c0de6b4c:	f002 ffab 	bl	c0de9aa6 <strstr>
c0de6b50:	491e      	ldr	r1, [pc, #120]	; (c0de6bcc <tx_getToken+0x110>)
c0de6b52:	2800      	cmp	r0, #0
c0de6b54:	bf18      	it	ne
c0de6b56:	2001      	movne	r0, #1
c0de6b58:	f809 0001 	strb.w	r0, [r9, r1]
c0de6b5c:	e9dd 8500 	ldrd	r8, r5, [sp]
c0de6b60:	4651      	mov	r1, sl
c0de6b62:	4640      	mov	r0, r8
c0de6b64:	f002 ff07 	bl	c0de9976 <explicit_bzero>
c0de6b68:	f1aa 0001 	sub.w	r0, sl, #1
c0de6b6c:	b282      	uxth	r2, r0
c0de6b6e:	2100      	movs	r1, #0
c0de6b70:	7031      	strb	r1, [r6, #0]
c0de6b72:	b302      	cbz	r2, c0de6bb6 <tx_getToken+0xfa>
c0de6b74:	ea5f 410b 	movs.w	r1, fp, lsl #16
c0de6b78:	d01d      	beq.n	c0de6bb6 <tx_getToken+0xfa>
c0de6b7a:	fa1f f18b 	uxth.w	r1, fp
c0de6b7e:	b283      	uxth	r3, r0
c0de6b80:	fbb1 f1f3 	udiv	r1, r1, r3
c0de6b84:	fb01 b010 	mls	r0, r1, r0, fp
c0de6b88:	b284      	uxth	r4, r0
c0de6b8a:	4623      	mov	r3, r4
c0de6b8c:	2c00      	cmp	r4, #0
c0de6b8e:	bf18      	it	ne
c0de6b90:	2301      	movne	r3, #1
c0de6b92:	4419      	add	r1, r3
c0de6b94:	b2cb      	uxtb	r3, r1
c0de6b96:	42ab      	cmp	r3, r5
c0de6b98:	7031      	strb	r1, [r6, #0]
c0de6b9a:	d90c      	bls.n	c0de6bb6 <tx_getToken+0xfa>
c0de6b9c:	fb05 7102 	mla	r1, r5, r2, r7
c0de6ba0:	0400      	lsls	r0, r0, #16
c0de6ba2:	d005      	beq.n	c0de6bb0 <tx_getToken+0xf4>
c0de6ba4:	1e58      	subs	r0, r3, #1
c0de6ba6:	42a8      	cmp	r0, r5
c0de6ba8:	d102      	bne.n	c0de6bb0 <tx_getToken+0xf4>
c0de6baa:	4640      	mov	r0, r8
c0de6bac:	4622      	mov	r2, r4
c0de6bae:	e000      	b.n	c0de6bb2 <tx_getToken+0xf6>
c0de6bb0:	4640      	mov	r0, r8
c0de6bb2:	f002 fed9 	bl	c0de9968 <__aeabi_memmove>
c0de6bb6:	7830      	ldrb	r0, [r6, #0]
c0de6bb8:	2100      	movs	r1, #0
c0de6bba:	42a8      	cmp	r0, r5
c0de6bbc:	bf98      	it	ls
c0de6bbe:	2101      	movls	r1, #1
c0de6bc0:	0088      	lsls	r0, r1, #2
c0de6bc2:	b002      	add	sp, #8
c0de6bc4:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de6bc8:	00000338 	.word	0x00000338
c0de6bcc:	000053ee 	.word	0x000053ee
c0de6bd0:	00005908 	.word	0x00005908
c0de6bd4:	000031b5 	.word	0x000031b5

c0de6bd8 <tx_traverse_find>:
c0de6bd8:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6bdc:	b084      	sub	sp, #16
c0de6bde:	4cc6      	ldr	r4, [pc, #792]	; (c0de6ef8 <tx_traverse_find+0x320>)
c0de6be0:	4680      	mov	r8, r0
c0de6be2:	eb09 0604 	add.w	r6, r9, r4
c0de6be6:	1d30      	adds	r0, r6, #4
c0de6be8:	eb00 00c8 	add.w	r0, r0, r8, lsl #3
c0de6bec:	7b05      	ldrb	r5, [r0, #12]
c0de6bee:	468a      	mov	sl, r1
c0de6bf0:	f002 fea6 	bl	c0de9940 <check_app_canary>
c0de6bf4:	6870      	ldr	r0, [r6, #4]
c0de6bf6:	2800      	cmp	r0, #0
c0de6bf8:	d05f      	beq.n	c0de6cba <tx_traverse_find+0xe2>
c0de6bfa:	1ee8      	subs	r0, r5, #3
c0de6bfc:	2802      	cmp	r0, #2
c0de6bfe:	d35e      	bcc.n	c0de6cbe <tx_traverse_find+0xe6>
c0de6c00:	eb09 0004 	add.w	r0, r9, r4
c0de6c04:	f641 012e 	movw	r1, #6190	; 0x182e
c0de6c08:	5c41      	ldrb	r1, [r0, r1]
c0de6c0a:	2900      	cmp	r1, #0
c0de6c0c:	d057      	beq.n	c0de6cbe <tx_traverse_find+0xe6>
c0de6c0e:	f641 012f 	movw	r1, #6191	; 0x182f
c0de6c12:	5c40      	ldrb	r0, [r0, r1]
c0de6c14:	2800      	cmp	r0, #0
c0de6c16:	d052      	beq.n	c0de6cbe <tx_traverse_find+0xe6>
c0de6c18:	eb09 0004 	add.w	r0, r9, r4
c0de6c1c:	3008      	adds	r0, #8
c0de6c1e:	f10d 020e 	add.w	r2, sp, #14
c0de6c22:	4641      	mov	r1, r8
c0de6c24:	f8cd a004 	str.w	sl, [sp, #4]
c0de6c28:	f7fc fae4 	bl	c0de31f4 <object_get_element_count>
c0de6c2c:	4607      	mov	r7, r0
c0de6c2e:	f002 fe87 	bl	c0de9940 <check_app_canary>
c0de6c32:	2f00      	cmp	r7, #0
c0de6c34:	f040 809e 	bne.w	c0de6d74 <tx_traverse_find+0x19c>
c0de6c38:	2d01      	cmp	r5, #1
c0de6c3a:	f000 80ab 	beq.w	c0de6d94 <tx_traverse_find+0x1bc>
c0de6c3e:	2d02      	cmp	r5, #2
c0de6c40:	f040 8097 	bne.w	c0de6d72 <tx_traverse_find+0x19a>
c0de6c44:	f8bd 000e 	ldrh.w	r0, [sp, #14]
c0de6c48:	2800      	cmp	r0, #0
c0de6c4a:	f000 8092 	beq.w	c0de6d72 <tx_traverse_find+0x19a>
c0de6c4e:	4caa      	ldr	r4, [pc, #680]	; (c0de6ef8 <tx_traverse_find+0x320>)
c0de6c50:	2600      	movs	r6, #0
c0de6c52:	f10d 0a08 	add.w	sl, sp, #8
c0de6c56:	f641 0b2f 	movw	fp, #6191	; 0x182f
c0de6c5a:	bf00      	nop
c0de6c5c:	eb09 0004 	add.w	r0, r9, r4
c0de6c60:	3008      	adds	r0, #8
c0de6c62:	b2b2      	uxth	r2, r6
c0de6c64:	4641      	mov	r1, r8
c0de6c66:	4653      	mov	r3, sl
c0de6c68:	f7fc fa96 	bl	c0de3198 <array_get_nth_element>
c0de6c6c:	4607      	mov	r7, r0
c0de6c6e:	f002 fe67 	bl	c0de9940 <check_app_canary>
c0de6c72:	2f00      	cmp	r7, #0
c0de6c74:	d17e      	bne.n	c0de6d74 <tx_traverse_find+0x19c>
c0de6c76:	f002 fe63 	bl	c0de9940 <check_app_canary>
c0de6c7a:	eb09 0504 	add.w	r5, r9, r4
c0de6c7e:	f815 000b 	ldrb.w	r0, [r5, fp]
c0de6c82:	1e41      	subs	r1, r0, #1
c0de6c84:	f8bd 0008 	ldrh.w	r0, [sp, #8]
c0de6c88:	f805 100b 	strb.w	r1, [r5, fp]
c0de6c8c:	9901      	ldr	r1, [sp, #4]
c0de6c8e:	f7ff ffa3 	bl	c0de6bd8 <tx_traverse_find>
c0de6c92:	f815 100b 	ldrb.w	r1, [r5, fp]
c0de6c96:	4607      	mov	r7, r0
c0de6c98:	1c48      	adds	r0, r1, #1
c0de6c9a:	f805 000b 	strb.w	r0, [r5, fp]
c0de6c9e:	f002 fe4f 	bl	c0de9940 <check_app_canary>
c0de6ca2:	2f00      	cmp	r7, #0
c0de6ca4:	d05b      	beq.n	c0de6d5e <tx_traverse_find+0x186>
c0de6ca6:	3601      	adds	r6, #1
c0de6ca8:	f8bd 000e 	ldrh.w	r0, [sp, #14]
c0de6cac:	b2b1      	uxth	r1, r6
c0de6cae:	4c92      	ldr	r4, [pc, #584]	; (c0de6ef8 <tx_traverse_find+0x320>)
c0de6cb0:	4281      	cmp	r1, r0
c0de6cb2:	f04f 0713 	mov.w	r7, #19
c0de6cb6:	d3d1      	bcc.n	c0de6c5c <tx_traverse_find+0x84>
c0de6cb8:	e05c      	b.n	c0de6d74 <tx_traverse_find+0x19c>
c0de6cba:	2701      	movs	r7, #1
c0de6cbc:	e05a      	b.n	c0de6d74 <tx_traverse_find+0x19c>
c0de6cbe:	eb09 0004 	add.w	r0, r9, r4
c0de6cc2:	f641 0118 	movw	r1, #6168	; 0x1818
c0de6cc6:	5c46      	ldrb	r6, [r0, r1]
c0de6cc8:	f006 0003 	and.w	r0, r6, #3
c0de6ccc:	2803      	cmp	r0, #3
c0de6cce:	d10a      	bne.n	c0de6ce6 <tx_traverse_find+0x10e>
c0de6cd0:	eb09 0004 	add.w	r0, r9, r4
c0de6cd4:	f641 0134 	movw	r1, #6196	; 0x1834
c0de6cd8:	5840      	ldr	r0, [r0, r1]
c0de6cda:	4988      	ldr	r1, [pc, #544]	; (c0de6efc <tx_traverse_find+0x324>)
c0de6cdc:	4479      	add	r1, pc
c0de6cde:	f002 fe9d 	bl	c0de9a1c <strcmp>
c0de6ce2:	2800      	cmp	r0, #0
c0de6ce4:	d04a      	beq.n	c0de6d7c <tx_traverse_find+0x1a4>
c0de6ce6:	2500      	movs	r5, #0
c0de6ce8:	f006 0005 	and.w	r0, r6, #5
c0de6cec:	2805      	cmp	r0, #5
c0de6cee:	d119      	bne.n	c0de6d24 <tx_traverse_find+0x14c>
c0de6cf0:	eb09 0104 	add.w	r1, r9, r4
c0de6cf4:	f641 0224 	movw	r2, #6180	; 0x1824
c0de6cf8:	f641 032c 	movw	r3, #6188	; 0x182c
c0de6cfc:	588a      	ldr	r2, [r1, r2]
c0de6cfe:	5acf      	ldrh	r7, [r1, r3]
c0de6d00:	f006 0008 	and.w	r0, r6, #8
c0de6d04:	407a      	eors	r2, r7
c0de6d06:	4419      	add	r1, r3
c0de6d08:	ea50 0602 	orrs.w	r6, r0, r2
c0de6d0c:	6888      	ldr	r0, [r1, #8]
c0de6d0e:	bf18      	it	ne
c0de6d10:	2601      	movne	r6, #1
c0de6d12:	497b      	ldr	r1, [pc, #492]	; (c0de6f00 <tx_traverse_find+0x328>)
c0de6d14:	4479      	add	r1, pc
c0de6d16:	f002 fe81 	bl	c0de9a1c <strcmp>
c0de6d1a:	fab0 f080 	clz	r0, r0
c0de6d1e:	0940      	lsrs	r0, r0, #5
c0de6d20:	4030      	ands	r0, r6
c0de6d22:	e000      	b.n	c0de6d26 <tx_traverse_find+0x14e>
c0de6d24:	2000      	movs	r0, #0
c0de6d26:	4305      	orrs	r5, r0
c0de6d28:	f002 fe0a 	bl	c0de9940 <check_app_canary>
c0de6d2c:	b14d      	cbz	r5, c0de6d42 <tx_traverse_find+0x16a>
c0de6d2e:	eb09 0004 	add.w	r0, r9, r4
c0de6d32:	f641 012c 	movw	r1, #6188	; 0x182c
c0de6d36:	1842      	adds	r2, r0, r1
c0de6d38:	8893      	ldrh	r3, [r2, #4]
c0de6d3a:	5a40      	ldrh	r0, [r0, r1]
c0de6d3c:	3301      	adds	r3, #1
c0de6d3e:	8093      	strh	r3, [r2, #4]
c0de6d40:	e00f      	b.n	c0de6d62 <tx_traverse_find+0x18a>
c0de6d42:	eb09 0104 	add.w	r1, r9, r4
c0de6d46:	f641 022c 	movw	r2, #6188	; 0x182c
c0de6d4a:	5a88      	ldrh	r0, [r1, r2]
c0de6d4c:	4411      	add	r1, r2
c0de6d4e:	f9b1 1004 	ldrsh.w	r1, [r1, #4]
c0de6d52:	4288      	cmp	r0, r1
c0de6d54:	d105      	bne.n	c0de6d62 <tx_traverse_find+0x18a>
c0de6d56:	f8aa 8000 	strh.w	r8, [sl]
c0de6d5a:	f002 fdf1 	bl	c0de9940 <check_app_canary>
c0de6d5e:	2700      	movs	r7, #0
c0de6d60:	e008      	b.n	c0de6d74 <tx_traverse_find+0x19c>
c0de6d62:	3001      	adds	r0, #1
c0de6d64:	eb09 0104 	add.w	r1, r9, r4
c0de6d68:	f641 022c 	movw	r2, #6188	; 0x182c
c0de6d6c:	5288      	strh	r0, [r1, r2]
c0de6d6e:	f002 fde7 	bl	c0de9940 <check_app_canary>
c0de6d72:	2713      	movs	r7, #19
c0de6d74:	4638      	mov	r0, r7
c0de6d76:	b004      	add	sp, #16
c0de6d78:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de6d7c:	eb09 0004 	add.w	r0, r9, r4
c0de6d80:	f641 011c 	movw	r1, #6172	; 0x181c
c0de6d84:	f641 022c 	movw	r2, #6188	; 0x182c
c0de6d88:	5841      	ldr	r1, [r0, r1]
c0de6d8a:	5a80      	ldrh	r0, [r0, r2]
c0de6d8c:	1a0d      	subs	r5, r1, r0
c0de6d8e:	bf18      	it	ne
c0de6d90:	2501      	movne	r5, #1
c0de6d92:	e7a9      	b.n	c0de6ce8 <tx_traverse_find+0x110>
c0de6d94:	4c58      	ldr	r4, [pc, #352]	; (c0de6ef8 <tx_traverse_find+0x320>)
c0de6d96:	f641 0534 	movw	r5, #6196	; 0x1834
c0de6d9a:	eb09 0004 	add.w	r0, r9, r4
c0de6d9e:	5940      	ldr	r0, [r0, r5]
c0de6da0:	f002 fe46 	bl	c0de9a30 <strlen>
c0de6da4:	f8bd 100e 	ldrh.w	r1, [sp, #14]
c0de6da8:	9000      	str	r0, [sp, #0]
c0de6daa:	2900      	cmp	r1, #0
c0de6dac:	d0e1      	beq.n	c0de6d72 <tx_traverse_find+0x19a>
c0de6dae:	f04f 0a00 	mov.w	sl, #0
c0de6db2:	bf00      	nop
c0de6db4:	eb09 0004 	add.w	r0, r9, r4
c0de6db8:	fa1f f68a 	uxth.w	r6, sl
c0de6dbc:	3008      	adds	r0, #8
c0de6dbe:	4641      	mov	r1, r8
c0de6dc0:	4632      	mov	r2, r6
c0de6dc2:	ab03      	add	r3, sp, #12
c0de6dc4:	f7fc fa42 	bl	c0de324c <object_get_nth_key>
c0de6dc8:	4607      	mov	r7, r0
c0de6dca:	f002 fdb9 	bl	c0de9940 <check_app_canary>
c0de6dce:	2f00      	cmp	r7, #0
c0de6dd0:	d1d0      	bne.n	c0de6d74 <tx_traverse_find+0x19c>
c0de6dd2:	eb09 0004 	add.w	r0, r9, r4
c0de6dd6:	3008      	adds	r0, #8
c0de6dd8:	4641      	mov	r1, r8
c0de6dda:	4632      	mov	r2, r6
c0de6ddc:	f10d 030a 	add.w	r3, sp, #10
c0de6de0:	f7fc fa67 	bl	c0de32b2 <object_get_nth_value>
c0de6de4:	4607      	mov	r7, r0
c0de6de6:	f002 fdab 	bl	c0de9940 <check_app_canary>
c0de6dea:	2f00      	cmp	r7, #0
c0de6dec:	d1c2      	bne.n	c0de6d74 <tx_traverse_find+0x19c>
c0de6dee:	eb09 0004 	add.w	r0, r9, r4
c0de6df2:	5947      	ldr	r7, [r0, r5]
c0de6df4:	f8bd b00c 	ldrh.w	fp, [sp, #12]
c0de6df8:	7838      	ldrb	r0, [r7, #0]
c0de6dfa:	b1d8      	cbz	r0, c0de6e34 <tx_traverse_find+0x25c>
c0de6dfc:	eb09 0004 	add.w	r0, r9, r4
c0de6e00:	f641 0138 	movw	r1, #6200	; 0x1838
c0de6e04:	5a45      	ldrh	r5, [r0, r1]
c0de6e06:	2100      	movs	r1, #0
c0de6e08:	1978      	adds	r0, r7, r5
c0de6e0a:	f800 1c01 	strb.w	r1, [r0, #-1]
c0de6e0e:	4638      	mov	r0, r7
c0de6e10:	f002 fe0e 	bl	c0de9a30 <strlen>
c0de6e14:	43c1      	mvns	r1, r0
c0de6e16:	426a      	negs	r2, r5
c0de6e18:	1a8e      	subs	r6, r1, r2
c0de6e1a:	bf18      	it	ne
c0de6e1c:	2601      	movne	r6, #1
c0de6e1e:	42e9      	cmn	r1, r5
c0de6e20:	d008      	beq.n	c0de6e34 <tx_traverse_find+0x25c>
c0de6e22:	4938      	ldr	r1, [pc, #224]	; (c0de6f04 <tx_traverse_find+0x32c>)
c0de6e24:	4407      	add	r7, r0
c0de6e26:	4479      	add	r1, pc
c0de6e28:	4638      	mov	r0, r7
c0de6e2a:	4632      	mov	r2, r6
c0de6e2c:	f002 fd9a 	bl	c0de9964 <__aeabi_memcpy>
c0de6e30:	2000      	movs	r0, #0
c0de6e32:	55b8      	strb	r0, [r7, r6]
c0de6e34:	eb09 0004 	add.w	r0, r9, r4
c0de6e38:	f850 4f04 	ldr.w	r4, [r0, #4]!
c0de6e3c:	f641 0230 	movw	r2, #6192	; 0x1830
c0de6e40:	5886      	ldr	r6, [r0, r2]
c0de6e42:	f641 0234 	movw	r2, #6196	; 0x1834
c0de6e46:	eb00 01cb 	add.w	r1, r0, fp, lsl #3
c0de6e4a:	f830 b002 	ldrh.w	fp, [r0, r2]
c0de6e4e:	f9b1 500e 	ldrsh.w	r5, [r1, #14]
c0de6e52:	f9b1 1010 	ldrsh.w	r1, [r1, #16]
c0de6e56:	2300      	movs	r3, #0
c0de6e58:	eb06 000b 	add.w	r0, r6, fp
c0de6e5c:	f800 3c01 	strb.w	r3, [r0, #-1]
c0de6e60:	4630      	mov	r0, r6
c0de6e62:	1b4f      	subs	r7, r1, r5
c0de6e64:	f002 fde4 	bl	c0de9a30 <strlen>
c0de6e68:	43c1      	mvns	r1, r0
c0de6e6a:	4459      	add	r1, fp
c0de6e6c:	42b9      	cmp	r1, r7
c0de6e6e:	bf38      	it	cc
c0de6e70:	460f      	movcc	r7, r1
c0de6e72:	b13f      	cbz	r7, c0de6e84 <tx_traverse_find+0x2ac>
c0de6e74:	4406      	add	r6, r0
c0de6e76:	1961      	adds	r1, r4, r5
c0de6e78:	4630      	mov	r0, r6
c0de6e7a:	463a      	mov	r2, r7
c0de6e7c:	f002 fd74 	bl	c0de9968 <__aeabi_memmove>
c0de6e80:	2000      	movs	r0, #0
c0de6e82:	55f0      	strb	r0, [r6, r7]
c0de6e84:	f002 fd5c 	bl	c0de9940 <check_app_canary>
c0de6e88:	4c1b      	ldr	r4, [pc, #108]	; (c0de6ef8 <tx_traverse_find+0x320>)
c0de6e8a:	f641 072e 	movw	r7, #6190	; 0x182e
c0de6e8e:	eb09 0504 	add.w	r5, r9, r4
c0de6e92:	f641 0b2f 	movw	fp, #6191	; 0x182f
c0de6e96:	5de8      	ldrb	r0, [r5, r7]
c0de6e98:	f815 100b 	ldrb.w	r1, [r5, fp]
c0de6e9c:	3801      	subs	r0, #1
c0de6e9e:	3901      	subs	r1, #1
c0de6ea0:	55e8      	strb	r0, [r5, r7]
c0de6ea2:	f8bd 000a 	ldrh.w	r0, [sp, #10]
c0de6ea6:	f805 100b 	strb.w	r1, [r5, fp]
c0de6eaa:	9901      	ldr	r1, [sp, #4]
c0de6eac:	f7ff fe94 	bl	c0de6bd8 <tx_traverse_find>
c0de6eb0:	4606      	mov	r6, r0
c0de6eb2:	f002 fd45 	bl	c0de9940 <check_app_canary>
c0de6eb6:	5de8      	ldrb	r0, [r5, r7]
c0de6eb8:	f815 100b 	ldrb.w	r1, [r5, fp]
c0de6ebc:	3001      	adds	r0, #1
c0de6ebe:	55e8      	strb	r0, [r5, r7]
c0de6ec0:	1c48      	adds	r0, r1, #1
c0de6ec2:	2e00      	cmp	r6, #0
c0de6ec4:	f805 000b 	strb.w	r0, [r5, fp]
c0de6ec8:	f43f af49 	beq.w	c0de6d5e <tx_traverse_find+0x186>
c0de6ecc:	eb09 0004 	add.w	r0, r9, r4
c0de6ed0:	f641 0534 	movw	r5, #6196	; 0x1834
c0de6ed4:	5940      	ldr	r0, [r0, r5]
c0de6ed6:	9900      	ldr	r1, [sp, #0]
c0de6ed8:	2200      	movs	r2, #0
c0de6eda:	5442      	strb	r2, [r0, r1]
c0de6edc:	f002 fd30 	bl	c0de9940 <check_app_canary>
c0de6ee0:	f10a 0a01 	add.w	sl, sl, #1
c0de6ee4:	f8bd 000e 	ldrh.w	r0, [sp, #14]
c0de6ee8:	fa1f f18a 	uxth.w	r1, sl
c0de6eec:	4281      	cmp	r1, r0
c0de6eee:	f04f 0713 	mov.w	r7, #19
c0de6ef2:	f4ff af5f 	bcc.w	c0de6db4 <tx_traverse_find+0x1dc>
c0de6ef6:	e73d      	b.n	c0de6d74 <tx_traverse_find+0x19c>
c0de6ef8:	00000338 	.word	0x00000338
c0de6efc:	00003135 	.word	0x00003135
c0de6f00:	00003366 	.word	0x00003366
c0de6f04:	00002d8e 	.word	0x00002d8e

c0de6f08 <contains_whitespace>:
c0de6f08:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6f0c:	b082      	sub	sp, #8
c0de6f0e:	f9b0 100c 	ldrsh.w	r1, [r0, #12]
c0de6f12:	f8d0 8004 	ldr.w	r8, [r0, #4]
c0de6f16:	9100      	str	r1, [sp, #0]
c0de6f18:	4a30      	ldr	r2, [pc, #192]	; (c0de6fdc <contains_whitespace+0xd4>)
c0de6f1a:	f1b8 0f02 	cmp.w	r8, #2
c0de6f1e:	447a      	add	r2, pc
c0de6f20:	f04f 0300 	mov.w	r3, #0
c0de6f24:	d338      	bcc.n	c0de6f98 <contains_whitespace+0x90>
c0de6f26:	f641 0108 	movw	r1, #6152	; 0x1808
c0de6f2a:	4401      	add	r1, r0
c0de6f2c:	f04f 0b01 	mov.w	fp, #1
c0de6f30:	9101      	str	r1, [sp, #4]
c0de6f32:	bf00      	nop
c0de6f34:	eb00 0acb 	add.w	sl, r0, fp, lsl #3
c0de6f38:	f89a 1008 	ldrb.w	r1, [sl, #8]
c0de6f3c:	2900      	cmp	r1, #0
c0de6f3e:	d045      	beq.n	c0de6fcc <contains_whitespace+0xc4>
c0de6f40:	f9ba e00a 	ldrsh.w	lr, [sl, #10]
c0de6f44:	4573      	cmp	r3, lr
c0de6f46:	da1f      	bge.n	c0de6f88 <contains_whitespace+0x80>
c0de6f48:	9901      	ldr	r1, [sp, #4]
c0de6f4a:	680f      	ldr	r7, [r1, #0]
c0de6f4c:	5cfd      	ldrb	r5, [r7, r3]
c0de6f4e:	2d20      	cmp	r5, #32
c0de6f50:	d03e      	beq.n	c0de6fd0 <contains_whitespace+0xc8>
c0de6f52:	2101      	movs	r1, #1
c0de6f54:	f04f 0c00 	mov.w	ip, #0
c0de6f58:	4664      	mov	r4, ip
c0de6f5a:	f1bc 0f05 	cmp.w	ip, #5
c0de6f5e:	d005      	beq.n	c0de6f6c <contains_whitespace+0x64>
c0de6f60:	1916      	adds	r6, r2, r4
c0de6f62:	7876      	ldrb	r6, [r6, #1]
c0de6f64:	f104 0c01 	add.w	ip, r4, #1
c0de6f68:	42ae      	cmp	r6, r5
c0de6f6a:	d1f5      	bne.n	c0de6f58 <contains_whitespace+0x50>
c0de6f6c:	2c04      	cmp	r4, #4
c0de6f6e:	d909      	bls.n	c0de6f84 <contains_whitespace+0x7c>
c0de6f70:	3301      	adds	r3, #1
c0de6f72:	4573      	cmp	r3, lr
c0de6f74:	f04f 0100 	mov.w	r1, #0
c0de6f78:	bfb8      	it	lt
c0de6f7a:	2101      	movlt	r1, #1
c0de6f7c:	d004      	beq.n	c0de6f88 <contains_whitespace+0x80>
c0de6f7e:	5cfd      	ldrb	r5, [r7, r3]
c0de6f80:	2d20      	cmp	r5, #32
c0de6f82:	d1e7      	bne.n	c0de6f54 <contains_whitespace+0x4c>
c0de6f84:	07c9      	lsls	r1, r1, #31
c0de6f86:	d123      	bne.n	c0de6fd0 <contains_whitespace+0xc8>
c0de6f88:	f9ba 100c 	ldrsh.w	r1, [sl, #12]
c0de6f8c:	f10b 0b01 	add.w	fp, fp, #1
c0de6f90:	45c3      	cmp	fp, r8
c0de6f92:	f101 0301 	add.w	r3, r1, #1
c0de6f96:	d3cd      	bcc.n	c0de6f34 <contains_whitespace+0x2c>
c0de6f98:	9d00      	ldr	r5, [sp, #0]
c0de6f9a:	42ab      	cmp	r3, r5
c0de6f9c:	da16      	bge.n	c0de6fcc <contains_whitespace+0xc4>
c0de6f9e:	f641 0108 	movw	r1, #6152	; 0x1808
c0de6fa2:	5841      	ldr	r1, [r0, r1]
c0de6fa4:	5cc8      	ldrb	r0, [r1, r3]
c0de6fa6:	b1a0      	cbz	r0, c0de6fd2 <contains_whitespace+0xca>
c0de6fa8:	2820      	cmp	r0, #32
c0de6faa:	d011      	beq.n	c0de6fd0 <contains_whitespace+0xc8>
c0de6fac:	2600      	movs	r6, #0
c0de6fae:	bf00      	nop
c0de6fb0:	4637      	mov	r7, r6
c0de6fb2:	2e05      	cmp	r6, #5
c0de6fb4:	d005      	beq.n	c0de6fc2 <contains_whitespace+0xba>
c0de6fb6:	19d6      	adds	r6, r2, r7
c0de6fb8:	7876      	ldrb	r6, [r6, #1]
c0de6fba:	4286      	cmp	r6, r0
c0de6fbc:	f107 0601 	add.w	r6, r7, #1
c0de6fc0:	d1f6      	bne.n	c0de6fb0 <contains_whitespace+0xa8>
c0de6fc2:	2f05      	cmp	r7, #5
c0de6fc4:	d304      	bcc.n	c0de6fd0 <contains_whitespace+0xc8>
c0de6fc6:	3301      	adds	r3, #1
c0de6fc8:	42ab      	cmp	r3, r5
c0de6fca:	d1eb      	bne.n	c0de6fa4 <contains_whitespace+0x9c>
c0de6fcc:	2000      	movs	r0, #0
c0de6fce:	e000      	b.n	c0de6fd2 <contains_whitespace+0xca>
c0de6fd0:	2001      	movs	r0, #1
c0de6fd2:	b240      	sxtb	r0, r0
c0de6fd4:	b002      	add	sp, #8
c0de6fd6:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de6fda:	bf00      	nop
c0de6fdc:	00005946 	.word	0x00005946

c0de6fe0 <is_sorted>:
c0de6fe0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de6fe4:	f5ad 7d00 	sub.w	sp, sp, #512	; 0x200
c0de6fe8:	f50d 7a80 	add.w	sl, sp, #256	; 0x100
c0de6fec:	460c      	mov	r4, r1
c0de6fee:	4605      	mov	r5, r0
c0de6ff0:	4650      	mov	r0, sl
c0de6ff2:	f44f 7180 	mov.w	r1, #256	; 0x100
c0de6ff6:	4617      	mov	r7, r2
c0de6ff8:	f002 fcbd 	bl	c0de9976 <explicit_bzero>
c0de6ffc:	46e8      	mov	r8, sp
c0de6ffe:	4640      	mov	r0, r8
c0de7000:	f44f 7180 	mov.w	r1, #256	; 0x100
c0de7004:	f002 fcb7 	bl	c0de9976 <explicit_bzero>
c0de7008:	eb07 01c5 	add.w	r1, r7, r5, lsl #3
c0de700c:	f9b1 000a 	ldrsh.w	r0, [r1, #10]
c0de7010:	f9b1 100c 	ldrsh.w	r1, [r1, #12]
c0de7014:	2500      	movs	r5, #0
c0de7016:	1a0e      	subs	r6, r1, r0
c0de7018:	2eff      	cmp	r6, #255	; 0xff
c0de701a:	d824      	bhi.n	c0de7066 <is_sorted+0x86>
c0de701c:	f641 0108 	movw	r1, #6152	; 0x1808
c0de7020:	f857 b001 	ldr.w	fp, [r7, r1]
c0de7024:	4632      	mov	r2, r6
c0de7026:	eb0b 0100 	add.w	r1, fp, r0
c0de702a:	4650      	mov	r0, sl
c0de702c:	f002 fd1c 	bl	c0de9a68 <strncpy>
c0de7030:	eb07 01c4 	add.w	r1, r7, r4, lsl #3
c0de7034:	f9b1 000a 	ldrsh.w	r0, [r1, #10]
c0de7038:	f9b1 100c 	ldrsh.w	r1, [r1, #12]
c0de703c:	f80a 5006 	strb.w	r5, [sl, r6]
c0de7040:	1a0c      	subs	r4, r1, r0
c0de7042:	2cff      	cmp	r4, #255	; 0xff
c0de7044:	d80f      	bhi.n	c0de7066 <is_sorted+0x86>
c0de7046:	eb0b 0100 	add.w	r1, fp, r0
c0de704a:	4640      	mov	r0, r8
c0de704c:	4622      	mov	r2, r4
c0de704e:	f002 fd0b 	bl	c0de9a68 <strncpy>
c0de7052:	2500      	movs	r5, #0
c0de7054:	a840      	add	r0, sp, #256	; 0x100
c0de7056:	4641      	mov	r1, r8
c0de7058:	f808 5004 	strb.w	r5, [r8, r4]
c0de705c:	f002 fcde 	bl	c0de9a1c <strcmp>
c0de7060:	2801      	cmp	r0, #1
c0de7062:	bfb8      	it	lt
c0de7064:	2501      	movlt	r5, #1
c0de7066:	4628      	mov	r0, r5
c0de7068:	f50d 7d00 	add.w	sp, sp, #512	; 0x200
c0de706c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de7070 <dictionaries_sorted>:
c0de7070:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de7074:	b082      	sub	sp, #8
c0de7076:	4604      	mov	r4, r0
c0de7078:	6840      	ldr	r0, [r0, #4]
c0de707a:	2800      	cmp	r0, #0
c0de707c:	d03e      	beq.n	c0de70fc <dictionaries_sorted+0x8c>
c0de707e:	2500      	movs	r5, #0
c0de7080:	f10d 0a06 	add.w	sl, sp, #6
c0de7084:	f10d 0804 	add.w	r8, sp, #4
c0de7088:	f10d 0b02 	add.w	fp, sp, #2
c0de708c:	eb04 01c5 	add.w	r1, r4, r5, lsl #3
c0de7090:	7a09      	ldrb	r1, [r1, #8]
c0de7092:	2901      	cmp	r1, #1
c0de7094:	d12f      	bne.n	c0de70f6 <dictionaries_sorted+0x86>
c0de7096:	b2ae      	uxth	r6, r5
c0de7098:	4620      	mov	r0, r4
c0de709a:	4631      	mov	r1, r6
c0de709c:	4652      	mov	r2, sl
c0de709e:	f7fc f8a9 	bl	c0de31f4 <object_get_element_count>
c0de70a2:	bb68      	cbnz	r0, c0de7100 <dictionaries_sorted+0x90>
c0de70a4:	f8bd 0006 	ldrh.w	r0, [sp, #6]
c0de70a8:	2802      	cmp	r0, #2
c0de70aa:	d323      	bcc.n	c0de70f4 <dictionaries_sorted+0x84>
c0de70ac:	4620      	mov	r0, r4
c0de70ae:	4631      	mov	r1, r6
c0de70b0:	2200      	movs	r2, #0
c0de70b2:	4643      	mov	r3, r8
c0de70b4:	f7fc f8ca 	bl	c0de324c <object_get_nth_key>
c0de70b8:	bb10      	cbnz	r0, c0de7100 <dictionaries_sorted+0x90>
c0de70ba:	f8bd 0006 	ldrh.w	r0, [sp, #6]
c0de70be:	2802      	cmp	r0, #2
c0de70c0:	d318      	bcc.n	c0de70f4 <dictionaries_sorted+0x84>
c0de70c2:	2701      	movs	r7, #1
c0de70c4:	b2ba      	uxth	r2, r7
c0de70c6:	4620      	mov	r0, r4
c0de70c8:	4631      	mov	r1, r6
c0de70ca:	465b      	mov	r3, fp
c0de70cc:	f7fc f8be 	bl	c0de324c <object_get_nth_key>
c0de70d0:	b9b0      	cbnz	r0, c0de7100 <dictionaries_sorted+0x90>
c0de70d2:	f8bd 0004 	ldrh.w	r0, [sp, #4]
c0de70d6:	f8bd 1002 	ldrh.w	r1, [sp, #2]
c0de70da:	4622      	mov	r2, r4
c0de70dc:	f7ff ff80 	bl	c0de6fe0 <is_sorted>
c0de70e0:	b170      	cbz	r0, c0de7100 <dictionaries_sorted+0x90>
c0de70e2:	f8bd 1006 	ldrh.w	r1, [sp, #6]
c0de70e6:	f8bd 0002 	ldrh.w	r0, [sp, #2]
c0de70ea:	3701      	adds	r7, #1
c0de70ec:	428f      	cmp	r7, r1
c0de70ee:	f8ad 0004 	strh.w	r0, [sp, #4]
c0de70f2:	d3e7      	bcc.n	c0de70c4 <dictionaries_sorted+0x54>
c0de70f4:	6860      	ldr	r0, [r4, #4]
c0de70f6:	3501      	adds	r5, #1
c0de70f8:	4285      	cmp	r5, r0
c0de70fa:	d3c7      	bcc.n	c0de708c <dictionaries_sorted+0x1c>
c0de70fc:	2001      	movs	r0, #1
c0de70fe:	e000      	b.n	c0de7102 <dictionaries_sorted+0x92>
c0de7100:	2000      	movs	r0, #0
c0de7102:	b002      	add	sp, #8
c0de7104:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}

c0de7108 <tx_validate>:
c0de7108:	b510      	push	{r4, lr}
c0de710a:	b082      	sub	sp, #8
c0de710c:	4604      	mov	r4, r0
c0de710e:	f7ff fefb 	bl	c0de6f08 <contains_whitespace>
c0de7112:	2801      	cmp	r0, #1
c0de7114:	d101      	bne.n	c0de711a <tx_validate+0x12>
c0de7116:	2018      	movs	r0, #24
c0de7118:	e010      	b.n	c0de713c <tx_validate+0x34>
c0de711a:	4620      	mov	r0, r4
c0de711c:	f7ff ffa8 	bl	c0de7070 <dictionaries_sorted>
c0de7120:	2801      	cmp	r0, #1
c0de7122:	d10a      	bne.n	c0de713a <tx_validate+0x32>
c0de7124:	4a22      	ldr	r2, [pc, #136]	; (c0de71b0 <tx_validate+0xa8>)
c0de7126:	f10d 0306 	add.w	r3, sp, #6
c0de712a:	447a      	add	r2, pc
c0de712c:	4620      	mov	r0, r4
c0de712e:	2100      	movs	r1, #0
c0de7130:	f7fc f8d4 	bl	c0de32dc <object_get_value>
c0de7134:	b120      	cbz	r0, c0de7140 <tx_validate+0x38>
c0de7136:	201a      	movs	r0, #26
c0de7138:	e000      	b.n	c0de713c <tx_validate+0x34>
c0de713a:	2019      	movs	r0, #25
c0de713c:	b002      	add	sp, #8
c0de713e:	bd10      	pop	{r4, pc}
c0de7140:	4a1c      	ldr	r2, [pc, #112]	; (c0de71b4 <tx_validate+0xac>)
c0de7142:	f10d 0306 	add.w	r3, sp, #6
c0de7146:	447a      	add	r2, pc
c0de7148:	4620      	mov	r0, r4
c0de714a:	2100      	movs	r1, #0
c0de714c:	f7fc f8c6 	bl	c0de32dc <object_get_value>
c0de7150:	b108      	cbz	r0, c0de7156 <tx_validate+0x4e>
c0de7152:	201b      	movs	r0, #27
c0de7154:	e7f2      	b.n	c0de713c <tx_validate+0x34>
c0de7156:	4a18      	ldr	r2, [pc, #96]	; (c0de71b8 <tx_validate+0xb0>)
c0de7158:	f10d 0306 	add.w	r3, sp, #6
c0de715c:	447a      	add	r2, pc
c0de715e:	4620      	mov	r0, r4
c0de7160:	2100      	movs	r1, #0
c0de7162:	f7fc f8bb 	bl	c0de32dc <object_get_value>
c0de7166:	b108      	cbz	r0, c0de716c <tx_validate+0x64>
c0de7168:	201c      	movs	r0, #28
c0de716a:	e7e7      	b.n	c0de713c <tx_validate+0x34>
c0de716c:	4a13      	ldr	r2, [pc, #76]	; (c0de71bc <tx_validate+0xb4>)
c0de716e:	f10d 0306 	add.w	r3, sp, #6
c0de7172:	447a      	add	r2, pc
c0de7174:	4620      	mov	r0, r4
c0de7176:	2100      	movs	r1, #0
c0de7178:	f7fc f8b0 	bl	c0de32dc <object_get_value>
c0de717c:	b108      	cbz	r0, c0de7182 <tx_validate+0x7a>
c0de717e:	201d      	movs	r0, #29
c0de7180:	e7dc      	b.n	c0de713c <tx_validate+0x34>
c0de7182:	4a0f      	ldr	r2, [pc, #60]	; (c0de71c0 <tx_validate+0xb8>)
c0de7184:	f10d 0306 	add.w	r3, sp, #6
c0de7188:	447a      	add	r2, pc
c0de718a:	4620      	mov	r0, r4
c0de718c:	2100      	movs	r1, #0
c0de718e:	f7fc f8a5 	bl	c0de32dc <object_get_value>
c0de7192:	b108      	cbz	r0, c0de7198 <tx_validate+0x90>
c0de7194:	201e      	movs	r0, #30
c0de7196:	e7d1      	b.n	c0de713c <tx_validate+0x34>
c0de7198:	4a0a      	ldr	r2, [pc, #40]	; (c0de71c4 <tx_validate+0xbc>)
c0de719a:	f10d 0306 	add.w	r3, sp, #6
c0de719e:	447a      	add	r2, pc
c0de71a0:	4620      	mov	r0, r4
c0de71a2:	2100      	movs	r1, #0
c0de71a4:	f7fc f89a 	bl	c0de32dc <object_get_value>
c0de71a8:	2800      	cmp	r0, #0
c0de71aa:	bf18      	it	ne
c0de71ac:	201f      	movne	r0, #31
c0de71ae:	e7c5      	b.n	c0de713c <tx_validate+0x34>
c0de71b0:	00002afb 	.word	0x00002afb
c0de71b4:	00002c9b 	.word	0x00002c9b
c0de71b8:	000029aa 	.word	0x000029aa
c0de71bc:	00002bb9 	.word	0x00002bb9
c0de71c0:	00002f56 	.word	0x00002f56
c0de71c4:	00002d08 	.word	0x00002d08

c0de71c8 <USBD_LL_Init>:
c0de71c8:	4804      	ldr	r0, [pc, #16]	; (c0de71dc <USBD_LL_Init+0x14>)
c0de71ca:	2100      	movs	r1, #0
c0de71cc:	4a04      	ldr	r2, [pc, #16]	; (c0de71e0 <USBD_LL_Init+0x18>)
c0de71ce:	f849 1000 	str.w	r1, [r9, r0]
c0de71d2:	2000      	movs	r0, #0
c0de71d4:	f849 1002 	str.w	r1, [r9, r2]
c0de71d8:	4770      	bx	lr
c0de71da:	bf00      	nop
c0de71dc:	000053f0 	.word	0x000053f0
c0de71e0:	000053f4 	.word	0x000053f4

c0de71e4 <USBD_LL_DeInit>:
c0de71e4:	b580      	push	{r7, lr}
c0de71e6:	b082      	sub	sp, #8
c0de71e8:	204f      	movs	r0, #79	; 0x4f
c0de71ea:	f88d 0004 	strb.w	r0, [sp, #4]
c0de71ee:	2000      	movs	r0, #0
c0de71f0:	f88d 0005 	strb.w	r0, [sp, #5]
c0de71f4:	2001      	movs	r0, #1
c0de71f6:	f88d 0006 	strb.w	r0, [sp, #6]
c0de71fa:	2002      	movs	r0, #2
c0de71fc:	f88d 0007 	strb.w	r0, [sp, #7]
c0de7200:	a801      	add	r0, sp, #4
c0de7202:	2104      	movs	r1, #4
c0de7204:	f7fe fcea 	bl	c0de5bdc <io_seph_send>
c0de7208:	2000      	movs	r0, #0
c0de720a:	b002      	add	sp, #8
c0de720c:	bd80      	pop	{r7, pc}

c0de720e <USBD_LL_Start>:
c0de720e:	b570      	push	{r4, r5, r6, lr}
c0de7210:	b082      	sub	sp, #8
c0de7212:	2002      	movs	r0, #2
c0de7214:	f88d 0005 	strb.w	r0, [sp, #5]
c0de7218:	2003      	movs	r0, #3
c0de721a:	f10d 0403 	add.w	r4, sp, #3
c0de721e:	254f      	movs	r5, #79	; 0x4f
c0de7220:	2600      	movs	r6, #0
c0de7222:	f88d 0006 	strb.w	r0, [sp, #6]
c0de7226:	4620      	mov	r0, r4
c0de7228:	2105      	movs	r1, #5
c0de722a:	f88d 5003 	strb.w	r5, [sp, #3]
c0de722e:	f88d 6004 	strb.w	r6, [sp, #4]
c0de7232:	f88d 6007 	strb.w	r6, [sp, #7]
c0de7236:	f7fe fcd1 	bl	c0de5bdc <io_seph_send>
c0de723a:	2001      	movs	r0, #1
c0de723c:	f88d 0005 	strb.w	r0, [sp, #5]
c0de7240:	f88d 0006 	strb.w	r0, [sp, #6]
c0de7244:	4620      	mov	r0, r4
c0de7246:	2104      	movs	r1, #4
c0de7248:	f88d 5003 	strb.w	r5, [sp, #3]
c0de724c:	f88d 6004 	strb.w	r6, [sp, #4]
c0de7250:	f7fe fcc4 	bl	c0de5bdc <io_seph_send>
c0de7254:	2000      	movs	r0, #0
c0de7256:	b002      	add	sp, #8
c0de7258:	bd70      	pop	{r4, r5, r6, pc}

c0de725a <USBD_LL_Stop>:
c0de725a:	b580      	push	{r7, lr}
c0de725c:	b082      	sub	sp, #8
c0de725e:	204f      	movs	r0, #79	; 0x4f
c0de7260:	f88d 0004 	strb.w	r0, [sp, #4]
c0de7264:	2000      	movs	r0, #0
c0de7266:	f88d 0005 	strb.w	r0, [sp, #5]
c0de726a:	2001      	movs	r0, #1
c0de726c:	f88d 0006 	strb.w	r0, [sp, #6]
c0de7270:	2002      	movs	r0, #2
c0de7272:	f88d 0007 	strb.w	r0, [sp, #7]
c0de7276:	a801      	add	r0, sp, #4
c0de7278:	2104      	movs	r1, #4
c0de727a:	f7fe fcaf 	bl	c0de5bdc <io_seph_send>
c0de727e:	2000      	movs	r0, #0
c0de7280:	b002      	add	sp, #8
c0de7282:	bd80      	pop	{r7, pc}

c0de7284 <USBD_LL_OpenEP>:
c0de7284:	b580      	push	{r7, lr}
c0de7286:	b082      	sub	sp, #8
c0de7288:	481a      	ldr	r0, [pc, #104]	; (c0de72f4 <USBD_LL_OpenEP+0x70>)
c0de728a:	f04f 0c00 	mov.w	ip, #0
c0de728e:	f849 c000 	str.w	ip, [r9, r0]
c0de7292:	204f      	movs	r0, #79	; 0x4f
c0de7294:	f88d 0000 	strb.w	r0, [sp]
c0de7298:	2005      	movs	r0, #5
c0de729a:	f8df e054 	ldr.w	lr, [pc, #84]	; c0de72f0 <USBD_LL_OpenEP+0x6c>
c0de729e:	f88d 0002 	strb.w	r0, [sp, #2]
c0de72a2:	2004      	movs	r0, #4
c0de72a4:	f88d 0003 	strb.w	r0, [sp, #3]
c0de72a8:	2001      	movs	r0, #1
c0de72aa:	2a01      	cmp	r2, #1
c0de72ac:	f849 c00e 	str.w	ip, [r9, lr]
c0de72b0:	f88d c001 	strb.w	ip, [sp, #1]
c0de72b4:	f88d 0004 	strb.w	r0, [sp, #4]
c0de72b8:	f88d 1005 	strb.w	r1, [sp, #5]
c0de72bc:	f88d c006 	strb.w	ip, [sp, #6]
c0de72c0:	dc04      	bgt.n	c0de72cc <USBD_LL_OpenEP+0x48>
c0de72c2:	b152      	cbz	r2, c0de72da <USBD_LL_OpenEP+0x56>
c0de72c4:	2a01      	cmp	r2, #1
c0de72c6:	d10a      	bne.n	c0de72de <USBD_LL_OpenEP+0x5a>
c0de72c8:	2004      	movs	r0, #4
c0de72ca:	e006      	b.n	c0de72da <USBD_LL_OpenEP+0x56>
c0de72cc:	2a02      	cmp	r2, #2
c0de72ce:	d003      	beq.n	c0de72d8 <USBD_LL_OpenEP+0x54>
c0de72d0:	2a03      	cmp	r2, #3
c0de72d2:	d104      	bne.n	c0de72de <USBD_LL_OpenEP+0x5a>
c0de72d4:	2002      	movs	r0, #2
c0de72d6:	e000      	b.n	c0de72da <USBD_LL_OpenEP+0x56>
c0de72d8:	2003      	movs	r0, #3
c0de72da:	f88d 0006 	strb.w	r0, [sp, #6]
c0de72de:	4668      	mov	r0, sp
c0de72e0:	2108      	movs	r1, #8
c0de72e2:	f88d 3007 	strb.w	r3, [sp, #7]
c0de72e6:	f7fe fc79 	bl	c0de5bdc <io_seph_send>
c0de72ea:	2000      	movs	r0, #0
c0de72ec:	b002      	add	sp, #8
c0de72ee:	bd80      	pop	{r7, pc}
c0de72f0:	000053f0 	.word	0x000053f0
c0de72f4:	000053f4 	.word	0x000053f4

c0de72f8 <USBD_LL_StallEP>:
c0de72f8:	b510      	push	{r4, lr}
c0de72fa:	b082      	sub	sp, #8
c0de72fc:	460c      	mov	r4, r1
c0de72fe:	2050      	movs	r0, #80	; 0x50
c0de7300:	2103      	movs	r1, #3
c0de7302:	f88d 0002 	strb.w	r0, [sp, #2]
c0de7306:	2000      	movs	r0, #0
c0de7308:	f88d 1004 	strb.w	r1, [sp, #4]
c0de730c:	2140      	movs	r1, #64	; 0x40
c0de730e:	f88d 0003 	strb.w	r0, [sp, #3]
c0de7312:	f88d 1006 	strb.w	r1, [sp, #6]
c0de7316:	f88d 0007 	strb.w	r0, [sp, #7]
c0de731a:	f10d 0002 	add.w	r0, sp, #2
c0de731e:	2106      	movs	r1, #6
c0de7320:	f88d 4005 	strb.w	r4, [sp, #5]
c0de7324:	f7fe fc5a 	bl	c0de5bdc <io_seph_send>
c0de7328:	4a0a      	ldr	r2, [pc, #40]	; (c0de7354 <USBD_LL_StallEP+0x5c>)
c0de732a:	0623      	lsls	r3, r4, #24
c0de732c:	4b08      	ldr	r3, [pc, #32]	; (c0de7350 <USBD_LL_StallEP+0x58>)
c0de732e:	444a      	add	r2, r9
c0de7330:	f004 007f 	and.w	r0, r4, #127	; 0x7f
c0de7334:	f04f 0101 	mov.w	r1, #1
c0de7338:	bf58      	it	pl
c0de733a:	eb09 0203 	addpl.w	r2, r9, r3
c0de733e:	6813      	ldr	r3, [r2, #0]
c0de7340:	fa01 f000 	lsl.w	r0, r1, r0
c0de7344:	ea43 0100 	orr.w	r1, r3, r0
c0de7348:	2000      	movs	r0, #0
c0de734a:	6011      	str	r1, [r2, #0]
c0de734c:	b002      	add	sp, #8
c0de734e:	bd10      	pop	{r4, pc}
c0de7350:	000053f4 	.word	0x000053f4
c0de7354:	000053f0 	.word	0x000053f0

c0de7358 <USBD_LL_ClearStallEP>:
c0de7358:	b510      	push	{r4, lr}
c0de735a:	b082      	sub	sp, #8
c0de735c:	460c      	mov	r4, r1
c0de735e:	2050      	movs	r0, #80	; 0x50
c0de7360:	2103      	movs	r1, #3
c0de7362:	f88d 0002 	strb.w	r0, [sp, #2]
c0de7366:	2000      	movs	r0, #0
c0de7368:	f88d 1004 	strb.w	r1, [sp, #4]
c0de736c:	2180      	movs	r1, #128	; 0x80
c0de736e:	f88d 0003 	strb.w	r0, [sp, #3]
c0de7372:	f88d 1006 	strb.w	r1, [sp, #6]
c0de7376:	f88d 0007 	strb.w	r0, [sp, #7]
c0de737a:	f10d 0002 	add.w	r0, sp, #2
c0de737e:	2106      	movs	r1, #6
c0de7380:	f88d 4005 	strb.w	r4, [sp, #5]
c0de7384:	f7fe fc2a 	bl	c0de5bdc <io_seph_send>
c0de7388:	4a0a      	ldr	r2, [pc, #40]	; (c0de73b4 <USBD_LL_ClearStallEP+0x5c>)
c0de738a:	0623      	lsls	r3, r4, #24
c0de738c:	4b08      	ldr	r3, [pc, #32]	; (c0de73b0 <USBD_LL_ClearStallEP+0x58>)
c0de738e:	444a      	add	r2, r9
c0de7390:	f004 007f 	and.w	r0, r4, #127	; 0x7f
c0de7394:	f04f 0101 	mov.w	r1, #1
c0de7398:	bf58      	it	pl
c0de739a:	eb09 0203 	addpl.w	r2, r9, r3
c0de739e:	6813      	ldr	r3, [r2, #0]
c0de73a0:	fa01 f000 	lsl.w	r0, r1, r0
c0de73a4:	ea23 0100 	bic.w	r1, r3, r0
c0de73a8:	2000      	movs	r0, #0
c0de73aa:	6011      	str	r1, [r2, #0]
c0de73ac:	b002      	add	sp, #8
c0de73ae:	bd10      	pop	{r4, pc}
c0de73b0:	000053f4 	.word	0x000053f4
c0de73b4:	000053f0 	.word	0x000053f0

c0de73b8 <USBD_LL_IsStallEP>:
c0de73b8:	4808      	ldr	r0, [pc, #32]	; (c0de73dc <USBD_LL_IsStallEP+0x24>)
c0de73ba:	4a07      	ldr	r2, [pc, #28]	; (c0de73d8 <USBD_LL_IsStallEP+0x20>)
c0de73bc:	4448      	add	r0, r9
c0de73be:	060b      	lsls	r3, r1, #24
c0de73c0:	bf58      	it	pl
c0de73c2:	eb09 0002 	addpl.w	r0, r9, r2
c0de73c6:	7800      	ldrb	r0, [r0, #0]
c0de73c8:	f001 017f 	and.w	r1, r1, #127	; 0x7f
c0de73cc:	2201      	movs	r2, #1
c0de73ce:	fa02 f101 	lsl.w	r1, r2, r1
c0de73d2:	4008      	ands	r0, r1
c0de73d4:	4770      	bx	lr
c0de73d6:	bf00      	nop
c0de73d8:	000053f4 	.word	0x000053f4
c0de73dc:	000053f0 	.word	0x000053f0

c0de73e0 <USBD_LL_SetUSBAddress>:
c0de73e0:	b580      	push	{r7, lr}
c0de73e2:	b082      	sub	sp, #8
c0de73e4:	204f      	movs	r0, #79	; 0x4f
c0de73e6:	f88d 0003 	strb.w	r0, [sp, #3]
c0de73ea:	2000      	movs	r0, #0
c0de73ec:	f88d 0004 	strb.w	r0, [sp, #4]
c0de73f0:	2002      	movs	r0, #2
c0de73f2:	f88d 0005 	strb.w	r0, [sp, #5]
c0de73f6:	2003      	movs	r0, #3
c0de73f8:	f88d 0006 	strb.w	r0, [sp, #6]
c0de73fc:	f88d 1007 	strb.w	r1, [sp, #7]
c0de7400:	f10d 0003 	add.w	r0, sp, #3
c0de7404:	2105      	movs	r1, #5
c0de7406:	f7fe fbe9 	bl	c0de5bdc <io_seph_send>
c0de740a:	2000      	movs	r0, #0
c0de740c:	b002      	add	sp, #8
c0de740e:	bd80      	pop	{r7, pc}

c0de7410 <USBD_LL_Transmit>:
c0de7410:	b5b0      	push	{r4, r5, r7, lr}
c0de7412:	b082      	sub	sp, #8
c0de7414:	2050      	movs	r0, #80	; 0x50
c0de7416:	f88d 0002 	strb.w	r0, [sp, #2]
c0de741a:	1cd8      	adds	r0, r3, #3
c0de741c:	4615      	mov	r5, r2
c0de741e:	0a02      	lsrs	r2, r0, #8
c0de7420:	f88d 0004 	strb.w	r0, [sp, #4]
c0de7424:	2020      	movs	r0, #32
c0de7426:	f88d 1005 	strb.w	r1, [sp, #5]
c0de742a:	f88d 0006 	strb.w	r0, [sp, #6]
c0de742e:	f10d 0002 	add.w	r0, sp, #2
c0de7432:	2106      	movs	r1, #6
c0de7434:	461c      	mov	r4, r3
c0de7436:	f88d 2003 	strb.w	r2, [sp, #3]
c0de743a:	f88d 3007 	strb.w	r3, [sp, #7]
c0de743e:	f7fe fbcd 	bl	c0de5bdc <io_seph_send>
c0de7442:	4628      	mov	r0, r5
c0de7444:	4621      	mov	r1, r4
c0de7446:	f7fe fbc9 	bl	c0de5bdc <io_seph_send>
c0de744a:	2000      	movs	r0, #0
c0de744c:	b002      	add	sp, #8
c0de744e:	bdb0      	pop	{r4, r5, r7, pc}

c0de7450 <USBD_LL_PrepareReceive>:
c0de7450:	b580      	push	{r7, lr}
c0de7452:	b082      	sub	sp, #8
c0de7454:	2050      	movs	r0, #80	; 0x50
c0de7456:	f88d 0002 	strb.w	r0, [sp, #2]
c0de745a:	2000      	movs	r0, #0
c0de745c:	f88d 0003 	strb.w	r0, [sp, #3]
c0de7460:	2003      	movs	r0, #3
c0de7462:	f88d 0004 	strb.w	r0, [sp, #4]
c0de7466:	2030      	movs	r0, #48	; 0x30
c0de7468:	f88d 1005 	strb.w	r1, [sp, #5]
c0de746c:	f88d 0006 	strb.w	r0, [sp, #6]
c0de7470:	f10d 0002 	add.w	r0, sp, #2
c0de7474:	2106      	movs	r1, #6
c0de7476:	f88d 2007 	strb.w	r2, [sp, #7]
c0de747a:	f7fe fbaf 	bl	c0de5bdc <io_seph_send>
c0de747e:	2000      	movs	r0, #0
c0de7480:	b002      	add	sp, #8
c0de7482:	bd80      	pop	{r7, pc}

c0de7484 <USBD_Init>:
c0de7484:	b198      	cbz	r0, c0de74ae <USBD_Init+0x2a>
c0de7486:	b570      	push	{r4, r5, r6, lr}
c0de7488:	460e      	mov	r6, r1
c0de748a:	f44f 719a 	mov.w	r1, #308	; 0x134
c0de748e:	4615      	mov	r5, r2
c0de7490:	4604      	mov	r4, r0
c0de7492:	f002 fa64 	bl	c0de995e <__aeabi_memclr>
c0de7496:	b10e      	cbz	r6, c0de749c <USBD_Init+0x18>
c0de7498:	f8c4 6110 	str.w	r6, [r4, #272]	; 0x110
c0de749c:	2001      	movs	r0, #1
c0de749e:	f884 00fc 	strb.w	r0, [r4, #252]	; 0xfc
c0de74a2:	4620      	mov	r0, r4
c0de74a4:	7025      	strb	r5, [r4, #0]
c0de74a6:	f7ff fe8f 	bl	c0de71c8 <USBD_LL_Init>
c0de74aa:	2000      	movs	r0, #0
c0de74ac:	bd70      	pop	{r4, r5, r6, pc}
c0de74ae:	2002      	movs	r0, #2
c0de74b0:	4770      	bx	lr
	...

c0de74b4 <USBD_DeInit>:
c0de74b4:	b5b0      	push	{r4, r5, r7, lr}
c0de74b6:	4604      	mov	r4, r0
c0de74b8:	2001      	movs	r0, #1
c0de74ba:	f44f 758a 	mov.w	r5, #276	; 0x114
c0de74be:	f884 00fc 	strb.w	r0, [r4, #252]	; 0xfc
c0de74c2:	bf00      	nop
c0de74c4:	5960      	ldr	r0, [r4, r5]
c0de74c6:	b130      	cbz	r0, c0de74d6 <USBD_DeInit+0x22>
c0de74c8:	6840      	ldr	r0, [r0, #4]
c0de74ca:	f7fe f9f3 	bl	c0de58b4 <pic>
c0de74ce:	7921      	ldrb	r1, [r4, #4]
c0de74d0:	4602      	mov	r2, r0
c0de74d2:	4620      	mov	r0, r4
c0de74d4:	4790      	blx	r2
c0de74d6:	3508      	adds	r5, #8
c0de74d8:	f5b5 7f96 	cmp.w	r5, #300	; 0x12c
c0de74dc:	d1f2      	bne.n	c0de74c4 <USBD_DeInit+0x10>
c0de74de:	4620      	mov	r0, r4
c0de74e0:	f7ff febb 	bl	c0de725a <USBD_LL_Stop>
c0de74e4:	4620      	mov	r0, r4
c0de74e6:	f7ff fe7d 	bl	c0de71e4 <USBD_LL_DeInit>
c0de74ea:	2000      	movs	r0, #0
c0de74ec:	bdb0      	pop	{r4, r5, r7, pc}

c0de74ee <USBD_RegisterClassForInterface>:
c0de74ee:	b13a      	cbz	r2, c0de7500 <USBD_RegisterClassForInterface+0x12>
c0de74f0:	2802      	cmp	r0, #2
c0de74f2:	bf9c      	itt	ls
c0de74f4:	eb01 00c0 	addls.w	r0, r1, r0, lsl #3
c0de74f8:	f8c0 2114 	strls.w	r2, [r0, #276]	; 0x114
c0de74fc:	2000      	movs	r0, #0
c0de74fe:	4770      	bx	lr
c0de7500:	2002      	movs	r0, #2
c0de7502:	4770      	bx	lr

c0de7504 <USBD_Start>:
c0de7504:	b580      	push	{r7, lr}
c0de7506:	f7ff fe82 	bl	c0de720e <USBD_LL_Start>
c0de750a:	2000      	movs	r0, #0
c0de750c:	bd80      	pop	{r7, pc}
	...

c0de7510 <USBD_SetClassConfig>:
c0de7510:	b570      	push	{r4, r5, r6, lr}
c0de7512:	460c      	mov	r4, r1
c0de7514:	4605      	mov	r5, r0
c0de7516:	2600      	movs	r6, #0
c0de7518:	4628      	mov	r0, r5
c0de751a:	4631      	mov	r1, r6
c0de751c:	f000 f967 	bl	c0de77ee <usbd_is_valid_intf>
c0de7520:	b150      	cbz	r0, c0de7538 <USBD_SetClassConfig+0x28>
c0de7522:	eb05 00c6 	add.w	r0, r5, r6, lsl #3
c0de7526:	f8d0 0114 	ldr.w	r0, [r0, #276]	; 0x114
c0de752a:	6800      	ldr	r0, [r0, #0]
c0de752c:	f7fe f9c2 	bl	c0de58b4 <pic>
c0de7530:	4602      	mov	r2, r0
c0de7532:	4628      	mov	r0, r5
c0de7534:	4621      	mov	r1, r4
c0de7536:	4790      	blx	r2
c0de7538:	3601      	adds	r6, #1
c0de753a:	2e03      	cmp	r6, #3
c0de753c:	d1ec      	bne.n	c0de7518 <USBD_SetClassConfig+0x8>
c0de753e:	2000      	movs	r0, #0
c0de7540:	bd70      	pop	{r4, r5, r6, pc}
	...

c0de7544 <USBD_ClrClassConfig>:
c0de7544:	b570      	push	{r4, r5, r6, lr}
c0de7546:	460c      	mov	r4, r1
c0de7548:	4605      	mov	r5, r0
c0de754a:	2600      	movs	r6, #0
c0de754c:	4628      	mov	r0, r5
c0de754e:	4631      	mov	r1, r6
c0de7550:	f000 f94d 	bl	c0de77ee <usbd_is_valid_intf>
c0de7554:	b150      	cbz	r0, c0de756c <USBD_ClrClassConfig+0x28>
c0de7556:	eb05 00c6 	add.w	r0, r5, r6, lsl #3
c0de755a:	f8d0 0114 	ldr.w	r0, [r0, #276]	; 0x114
c0de755e:	6840      	ldr	r0, [r0, #4]
c0de7560:	f7fe f9a8 	bl	c0de58b4 <pic>
c0de7564:	4602      	mov	r2, r0
c0de7566:	4628      	mov	r0, r5
c0de7568:	4621      	mov	r1, r4
c0de756a:	4790      	blx	r2
c0de756c:	3601      	adds	r6, #1
c0de756e:	2e03      	cmp	r6, #3
c0de7570:	d1ec      	bne.n	c0de754c <USBD_ClrClassConfig+0x8>
c0de7572:	2000      	movs	r0, #0
c0de7574:	bd70      	pop	{r4, r5, r6, pc}

c0de7576 <USBD_LL_SetupStage>:
c0de7576:	b5b0      	push	{r4, r5, r7, lr}
c0de7578:	f500 7584 	add.w	r5, r0, #264	; 0x108
c0de757c:	4604      	mov	r4, r0
c0de757e:	4628      	mov	r0, r5
c0de7580:	f000 fb6a 	bl	c0de7c58 <USBD_ParseSetupRequest>
c0de7584:	f894 0108 	ldrb.w	r0, [r4, #264]	; 0x108
c0de7588:	2101      	movs	r1, #1
c0de758a:	f8b4 210e 	ldrh.w	r2, [r4, #270]	; 0x10e
c0de758e:	f8c4 10f4 	str.w	r1, [r4, #244]	; 0xf4
c0de7592:	f000 011f 	and.w	r1, r0, #31
c0de7596:	2902      	cmp	r1, #2
c0de7598:	f8c4 20f8 	str.w	r2, [r4, #248]	; 0xf8
c0de759c:	d007      	beq.n	c0de75ae <USBD_LL_SetupStage+0x38>
c0de759e:	2901      	cmp	r1, #1
c0de75a0:	d00a      	beq.n	c0de75b8 <USBD_LL_SetupStage+0x42>
c0de75a2:	b971      	cbnz	r1, c0de75c2 <USBD_LL_SetupStage+0x4c>
c0de75a4:	4620      	mov	r0, r4
c0de75a6:	4629      	mov	r1, r5
c0de75a8:	f000 f92d 	bl	c0de7806 <USBD_StdDevReq>
c0de75ac:	e00e      	b.n	c0de75cc <USBD_LL_SetupStage+0x56>
c0de75ae:	4620      	mov	r0, r4
c0de75b0:	4629      	mov	r1, r5
c0de75b2:	f000 fad5 	bl	c0de7b60 <USBD_StdEPReq>
c0de75b6:	e009      	b.n	c0de75cc <USBD_LL_SetupStage+0x56>
c0de75b8:	4620      	mov	r0, r4
c0de75ba:	4629      	mov	r1, r5
c0de75bc:	f000 faae 	bl	c0de7b1c <USBD_StdItfReq>
c0de75c0:	e004      	b.n	c0de75cc <USBD_LL_SetupStage+0x56>
c0de75c2:	f000 0180 	and.w	r1, r0, #128	; 0x80
c0de75c6:	4620      	mov	r0, r4
c0de75c8:	f7ff fe96 	bl	c0de72f8 <USBD_LL_StallEP>
c0de75cc:	2000      	movs	r0, #0
c0de75ce:	bdb0      	pop	{r4, r5, r7, pc}

c0de75d0 <USBD_LL_DataOutStage>:
c0de75d0:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de75d4:	b081      	sub	sp, #4
c0de75d6:	4690      	mov	r8, r2
c0de75d8:	4604      	mov	r4, r0
c0de75da:	b1f9      	cbz	r1, c0de761c <USBD_LL_DataOutStage+0x4c>
c0de75dc:	469a      	mov	sl, r3
c0de75de:	460f      	mov	r7, r1
c0de75e0:	2500      	movs	r5, #0
c0de75e2:	bf00      	nop
c0de75e4:	4620      	mov	r0, r4
c0de75e6:	4629      	mov	r1, r5
c0de75e8:	f000 f901 	bl	c0de77ee <usbd_is_valid_intf>
c0de75ec:	b190      	cbz	r0, c0de7614 <USBD_LL_DataOutStage+0x44>
c0de75ee:	eb04 00c5 	add.w	r0, r4, r5, lsl #3
c0de75f2:	f8d0 0114 	ldr.w	r0, [r0, #276]	; 0x114
c0de75f6:	6980      	ldr	r0, [r0, #24]
c0de75f8:	b160      	cbz	r0, c0de7614 <USBD_LL_DataOutStage+0x44>
c0de75fa:	f894 10fc 	ldrb.w	r1, [r4, #252]	; 0xfc
c0de75fe:	2903      	cmp	r1, #3
c0de7600:	d108      	bne.n	c0de7614 <USBD_LL_DataOutStage+0x44>
c0de7602:	f7fe f957 	bl	c0de58b4 <pic>
c0de7606:	4606      	mov	r6, r0
c0de7608:	4620      	mov	r0, r4
c0de760a:	4639      	mov	r1, r7
c0de760c:	4642      	mov	r2, r8
c0de760e:	4653      	mov	r3, sl
c0de7610:	47b0      	blx	r6
c0de7612:	bf00      	nop
c0de7614:	3501      	adds	r5, #1
c0de7616:	2d03      	cmp	r5, #3
c0de7618:	d1e4      	bne.n	c0de75e4 <USBD_LL_DataOutStage+0x14>
c0de761a:	e02f      	b.n	c0de767c <USBD_LL_DataOutStage+0xac>
c0de761c:	f8d4 00f4 	ldr.w	r0, [r4, #244]	; 0xf4
c0de7620:	2803      	cmp	r0, #3
c0de7622:	d12b      	bne.n	c0de767c <USBD_LL_DataOutStage+0xac>
c0de7624:	e9d4 1023 	ldrd	r1, r0, [r4, #140]	; 0x8c
c0de7628:	4281      	cmp	r1, r0
c0de762a:	d90b      	bls.n	c0de7644 <USBD_LL_DataOutStage+0x74>
c0de762c:	1a09      	subs	r1, r1, r0
c0de762e:	f8c4 108c 	str.w	r1, [r4, #140]	; 0x8c
c0de7632:	4281      	cmp	r1, r0
c0de7634:	bf38      	it	cc
c0de7636:	4608      	movcc	r0, r1
c0de7638:	b282      	uxth	r2, r0
c0de763a:	4620      	mov	r0, r4
c0de763c:	4641      	mov	r1, r8
c0de763e:	f000 fd42 	bl	c0de80c6 <USBD_CtlContinueRx>
c0de7642:	e01b      	b.n	c0de767c <USBD_LL_DataOutStage+0xac>
c0de7644:	2500      	movs	r5, #0
c0de7646:	bf00      	nop
c0de7648:	4620      	mov	r0, r4
c0de764a:	4629      	mov	r1, r5
c0de764c:	f000 f8cf 	bl	c0de77ee <usbd_is_valid_intf>
c0de7650:	b170      	cbz	r0, c0de7670 <USBD_LL_DataOutStage+0xa0>
c0de7652:	eb04 00c5 	add.w	r0, r4, r5, lsl #3
c0de7656:	f8d0 0114 	ldr.w	r0, [r0, #276]	; 0x114
c0de765a:	6900      	ldr	r0, [r0, #16]
c0de765c:	b140      	cbz	r0, c0de7670 <USBD_LL_DataOutStage+0xa0>
c0de765e:	f894 10fc 	ldrb.w	r1, [r4, #252]	; 0xfc
c0de7662:	2903      	cmp	r1, #3
c0de7664:	d104      	bne.n	c0de7670 <USBD_LL_DataOutStage+0xa0>
c0de7666:	f7fe f925 	bl	c0de58b4 <pic>
c0de766a:	4601      	mov	r1, r0
c0de766c:	4620      	mov	r0, r4
c0de766e:	4788      	blx	r1
c0de7670:	3501      	adds	r5, #1
c0de7672:	2d03      	cmp	r5, #3
c0de7674:	d1e8      	bne.n	c0de7648 <USBD_LL_DataOutStage+0x78>
c0de7676:	4620      	mov	r0, r4
c0de7678:	f000 fd2b 	bl	c0de80d2 <USBD_CtlSendStatus>
c0de767c:	2000      	movs	r0, #0
c0de767e:	b001      	add	sp, #4
c0de7680:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}

c0de7684 <USBD_LL_DataInStage>:
c0de7684:	b570      	push	{r4, r5, r6, lr}
c0de7686:	4604      	mov	r4, r0
c0de7688:	b1e1      	cbz	r1, c0de76c4 <USBD_LL_DataInStage+0x40>
c0de768a:	460d      	mov	r5, r1
c0de768c:	2600      	movs	r6, #0
c0de768e:	bf00      	nop
c0de7690:	4620      	mov	r0, r4
c0de7692:	4631      	mov	r1, r6
c0de7694:	f000 f8ab 	bl	c0de77ee <usbd_is_valid_intf>
c0de7698:	b180      	cbz	r0, c0de76bc <USBD_LL_DataInStage+0x38>
c0de769a:	eb04 00c6 	add.w	r0, r4, r6, lsl #3
c0de769e:	f8d0 0114 	ldr.w	r0, [r0, #276]	; 0x114
c0de76a2:	6940      	ldr	r0, [r0, #20]
c0de76a4:	b150      	cbz	r0, c0de76bc <USBD_LL_DataInStage+0x38>
c0de76a6:	f894 10fc 	ldrb.w	r1, [r4, #252]	; 0xfc
c0de76aa:	2903      	cmp	r1, #3
c0de76ac:	d106      	bne.n	c0de76bc <USBD_LL_DataInStage+0x38>
c0de76ae:	f7fe f901 	bl	c0de58b4 <pic>
c0de76b2:	4602      	mov	r2, r0
c0de76b4:	4620      	mov	r0, r4
c0de76b6:	4629      	mov	r1, r5
c0de76b8:	4790      	blx	r2
c0de76ba:	bf00      	nop
c0de76bc:	3601      	adds	r6, #1
c0de76be:	2e03      	cmp	r6, #3
c0de76c0:	d1e6      	bne.n	c0de7690 <USBD_LL_DataInStage+0xc>
c0de76c2:	e04c      	b.n	c0de775e <USBD_LL_DataInStage+0xda>
c0de76c4:	f8d4 00f4 	ldr.w	r0, [r4, #244]	; 0xf4
c0de76c8:	2802      	cmp	r0, #2
c0de76ca:	d141      	bne.n	c0de7750 <USBD_LL_DataInStage+0xcc>
c0de76cc:	e9d4 1007 	ldrd	r1, r0, [r4, #28]
c0de76d0:	4281      	cmp	r1, r0
c0de76d2:	d90b      	bls.n	c0de76ec <USBD_LL_DataInStage+0x68>
c0de76d4:	1a0a      	subs	r2, r1, r0
c0de76d6:	f8d4 1130 	ldr.w	r1, [r4, #304]	; 0x130
c0de76da:	61e2      	str	r2, [r4, #28]
c0de76dc:	4401      	add	r1, r0
c0de76de:	b292      	uxth	r2, r2
c0de76e0:	4620      	mov	r0, r4
c0de76e2:	f8c4 1130 	str.w	r1, [r4, #304]	; 0x130
c0de76e6:	f000 fce1 	bl	c0de80ac <USBD_CtlContinueSendData>
c0de76ea:	e031      	b.n	c0de7750 <USBD_LL_DataInStage+0xcc>
c0de76ec:	b1a0      	cbz	r0, c0de7718 <USBD_LL_DataInStage+0x94>
c0de76ee:	69a1      	ldr	r1, [r4, #24]
c0de76f0:	4281      	cmp	r1, r0
c0de76f2:	d311      	bcc.n	c0de7718 <USBD_LL_DataInStage+0x94>
c0de76f4:	fbb1 f2f0 	udiv	r2, r1, r0
c0de76f8:	fb02 1010 	mls	r0, r2, r0, r1
c0de76fc:	b960      	cbnz	r0, c0de7718 <USBD_LL_DataInStage+0x94>
c0de76fe:	f8d4 00f8 	ldr.w	r0, [r4, #248]	; 0xf8
c0de7702:	4281      	cmp	r1, r0
c0de7704:	d208      	bcs.n	c0de7718 <USBD_LL_DataInStage+0x94>
c0de7706:	4620      	mov	r0, r4
c0de7708:	2100      	movs	r1, #0
c0de770a:	2200      	movs	r2, #0
c0de770c:	2500      	movs	r5, #0
c0de770e:	f000 fccd 	bl	c0de80ac <USBD_CtlContinueSendData>
c0de7712:	f8c4 50f8 	str.w	r5, [r4, #248]	; 0xf8
c0de7716:	e01b      	b.n	c0de7750 <USBD_LL_DataInStage+0xcc>
c0de7718:	2500      	movs	r5, #0
c0de771a:	bf00      	nop
c0de771c:	4620      	mov	r0, r4
c0de771e:	4629      	mov	r1, r5
c0de7720:	f000 f865 	bl	c0de77ee <usbd_is_valid_intf>
c0de7724:	b170      	cbz	r0, c0de7744 <USBD_LL_DataInStage+0xc0>
c0de7726:	eb04 00c5 	add.w	r0, r4, r5, lsl #3
c0de772a:	f8d0 0114 	ldr.w	r0, [r0, #276]	; 0x114
c0de772e:	68c0      	ldr	r0, [r0, #12]
c0de7730:	b140      	cbz	r0, c0de7744 <USBD_LL_DataInStage+0xc0>
c0de7732:	f894 10fc 	ldrb.w	r1, [r4, #252]	; 0xfc
c0de7736:	2903      	cmp	r1, #3
c0de7738:	d104      	bne.n	c0de7744 <USBD_LL_DataInStage+0xc0>
c0de773a:	f7fe f8bb 	bl	c0de58b4 <pic>
c0de773e:	4601      	mov	r1, r0
c0de7740:	4620      	mov	r0, r4
c0de7742:	4788      	blx	r1
c0de7744:	3501      	adds	r5, #1
c0de7746:	2d03      	cmp	r5, #3
c0de7748:	d1e8      	bne.n	c0de771c <USBD_LL_DataInStage+0x98>
c0de774a:	4620      	mov	r0, r4
c0de774c:	f000 fccc 	bl	c0de80e8 <USBD_CtlReceiveStatus>
c0de7750:	f894 0100 	ldrb.w	r0, [r4, #256]	; 0x100
c0de7754:	2801      	cmp	r0, #1
c0de7756:	bf04      	itt	eq
c0de7758:	2000      	moveq	r0, #0
c0de775a:	f884 0100 	strbeq.w	r0, [r4, #256]	; 0x100
c0de775e:	2000      	movs	r0, #0
c0de7760:	bd70      	pop	{r4, r5, r6, pc}
	...

c0de7764 <USBD_LL_Reset>:
c0de7764:	b5b0      	push	{r4, r5, r7, lr}
c0de7766:	4604      	mov	r4, r0
c0de7768:	2040      	movs	r0, #64	; 0x40
c0de776a:	f8c4 0090 	str.w	r0, [r4, #144]	; 0x90
c0de776e:	6220      	str	r0, [r4, #32]
c0de7770:	2001      	movs	r0, #1
c0de7772:	2500      	movs	r5, #0
c0de7774:	f884 00fc 	strb.w	r0, [r4, #252]	; 0xfc
c0de7778:	4620      	mov	r0, r4
c0de777a:	4629      	mov	r1, r5
c0de777c:	f000 f837 	bl	c0de77ee <usbd_is_valid_intf>
c0de7780:	b150      	cbz	r0, c0de7798 <USBD_LL_Reset+0x34>
c0de7782:	eb04 00c5 	add.w	r0, r4, r5, lsl #3
c0de7786:	f8d0 0114 	ldr.w	r0, [r0, #276]	; 0x114
c0de778a:	6840      	ldr	r0, [r0, #4]
c0de778c:	f7fe f892 	bl	c0de58b4 <pic>
c0de7790:	7921      	ldrb	r1, [r4, #4]
c0de7792:	4602      	mov	r2, r0
c0de7794:	4620      	mov	r0, r4
c0de7796:	4790      	blx	r2
c0de7798:	3501      	adds	r5, #1
c0de779a:	2d03      	cmp	r5, #3
c0de779c:	d1ec      	bne.n	c0de7778 <USBD_LL_Reset+0x14>
c0de779e:	2000      	movs	r0, #0
c0de77a0:	bdb0      	pop	{r4, r5, r7, pc}

c0de77a2 <USBD_LL_SetSpeed>:
c0de77a2:	4602      	mov	r2, r0
c0de77a4:	2000      	movs	r0, #0
c0de77a6:	7411      	strb	r1, [r2, #16]
c0de77a8:	4770      	bx	lr

c0de77aa <USBD_LL_Suspend>:
c0de77aa:	2000      	movs	r0, #0
c0de77ac:	4770      	bx	lr

c0de77ae <USBD_LL_Resume>:
c0de77ae:	2000      	movs	r0, #0
c0de77b0:	4770      	bx	lr
	...

c0de77b4 <USBD_LL_SOF>:
c0de77b4:	b5b0      	push	{r4, r5, r7, lr}
c0de77b6:	4604      	mov	r4, r0
c0de77b8:	f890 00fc 	ldrb.w	r0, [r0, #252]	; 0xfc
c0de77bc:	2803      	cmp	r0, #3
c0de77be:	d114      	bne.n	c0de77ea <USBD_LL_SOF+0x36>
c0de77c0:	2500      	movs	r5, #0
c0de77c2:	bf00      	nop
c0de77c4:	4620      	mov	r0, r4
c0de77c6:	4629      	mov	r1, r5
c0de77c8:	f000 f811 	bl	c0de77ee <usbd_is_valid_intf>
c0de77cc:	b150      	cbz	r0, c0de77e4 <USBD_LL_SOF+0x30>
c0de77ce:	eb04 00c5 	add.w	r0, r4, r5, lsl #3
c0de77d2:	f8d0 0114 	ldr.w	r0, [r0, #276]	; 0x114
c0de77d6:	69c0      	ldr	r0, [r0, #28]
c0de77d8:	b120      	cbz	r0, c0de77e4 <USBD_LL_SOF+0x30>
c0de77da:	f7fe f86b 	bl	c0de58b4 <pic>
c0de77de:	4601      	mov	r1, r0
c0de77e0:	4620      	mov	r0, r4
c0de77e2:	4788      	blx	r1
c0de77e4:	3501      	adds	r5, #1
c0de77e6:	2d03      	cmp	r5, #3
c0de77e8:	d1ec      	bne.n	c0de77c4 <USBD_LL_SOF+0x10>
c0de77ea:	2000      	movs	r0, #0
c0de77ec:	bdb0      	pop	{r4, r5, r7, pc}

c0de77ee <usbd_is_valid_intf>:
c0de77ee:	2902      	cmp	r1, #2
c0de77f0:	bf84      	itt	hi
c0de77f2:	2000      	movhi	r0, #0
c0de77f4:	4770      	bxhi	lr
c0de77f6:	eb00 00c1 	add.w	r0, r0, r1, lsl #3
c0de77fa:	f8d0 0114 	ldr.w	r0, [r0, #276]	; 0x114
c0de77fe:	2800      	cmp	r0, #0
c0de7800:	bf18      	it	ne
c0de7802:	2001      	movne	r0, #1
c0de7804:	4770      	bx	lr

c0de7806 <USBD_StdDevReq>:
c0de7806:	b580      	push	{r7, lr}
c0de7808:	784a      	ldrb	r2, [r1, #1]
c0de780a:	2a04      	cmp	r2, #4
c0de780c:	dd08      	ble.n	c0de7820 <USBD_StdDevReq+0x1a>
c0de780e:	2a07      	cmp	r2, #7
c0de7810:	dc0e      	bgt.n	c0de7830 <USBD_StdDevReq+0x2a>
c0de7812:	2a05      	cmp	r2, #5
c0de7814:	d013      	beq.n	c0de783e <USBD_StdDevReq+0x38>
c0de7816:	2a06      	cmp	r2, #6
c0de7818:	d11a      	bne.n	c0de7850 <USBD_StdDevReq+0x4a>
c0de781a:	f000 f820 	bl	c0de785e <USBD_GetDescriptor>
c0de781e:	e01c      	b.n	c0de785a <USBD_StdDevReq+0x54>
c0de7820:	b182      	cbz	r2, c0de7844 <USBD_StdDevReq+0x3e>
c0de7822:	2a01      	cmp	r2, #1
c0de7824:	d017      	beq.n	c0de7856 <USBD_StdDevReq+0x50>
c0de7826:	2a03      	cmp	r2, #3
c0de7828:	d112      	bne.n	c0de7850 <USBD_StdDevReq+0x4a>
c0de782a:	f000 f92f 	bl	c0de7a8c <USBD_SetFeature>
c0de782e:	e014      	b.n	c0de785a <USBD_StdDevReq+0x54>
c0de7830:	2a08      	cmp	r2, #8
c0de7832:	d00a      	beq.n	c0de784a <USBD_StdDevReq+0x44>
c0de7834:	2a09      	cmp	r2, #9
c0de7836:	d10b      	bne.n	c0de7850 <USBD_StdDevReq+0x4a>
c0de7838:	f000 f8b6 	bl	c0de79a8 <USBD_SetConfig>
c0de783c:	e00d      	b.n	c0de785a <USBD_StdDevReq+0x54>
c0de783e:	f000 f891 	bl	c0de7964 <USBD_SetAddress>
c0de7842:	e00a      	b.n	c0de785a <USBD_StdDevReq+0x54>
c0de7844:	f000 f8fe 	bl	c0de7a44 <USBD_GetStatus>
c0de7848:	e007      	b.n	c0de785a <USBD_StdDevReq+0x54>
c0de784a:	f000 f8e5 	bl	c0de7a18 <USBD_GetConfig>
c0de784e:	e004      	b.n	c0de785a <USBD_StdDevReq+0x54>
c0de7850:	f000 fb82 	bl	c0de7f58 <USBD_CtlError>
c0de7854:	e001      	b.n	c0de785a <USBD_StdDevReq+0x54>
c0de7856:	f000 f937 	bl	c0de7ac8 <USBD_ClrFeature>
c0de785a:	2000      	movs	r0, #0
c0de785c:	bd80      	pop	{r7, pc}

c0de785e <USBD_GetDescriptor>:
c0de785e:	b5b0      	push	{r4, r5, r7, lr}
c0de7860:	b082      	sub	sp, #8
c0de7862:	460d      	mov	r5, r1
c0de7864:	8849      	ldrh	r1, [r1, #2]
c0de7866:	4604      	mov	r4, r0
c0de7868:	0a08      	lsrs	r0, r1, #8
c0de786a:	2200      	movs	r2, #0
c0de786c:	2805      	cmp	r0, #5
c0de786e:	f8ad 2006 	strh.w	r2, [sp, #6]
c0de7872:	dc12      	bgt.n	c0de789a <USBD_GetDescriptor+0x3c>
c0de7874:	2801      	cmp	r0, #1
c0de7876:	d01b      	beq.n	c0de78b0 <USBD_GetDescriptor+0x52>
c0de7878:	2802      	cmp	r0, #2
c0de787a:	d025      	beq.n	c0de78c8 <USBD_GetDescriptor+0x6a>
c0de787c:	2803      	cmp	r0, #3
c0de787e:	d135      	bne.n	c0de78ec <USBD_GetDescriptor+0x8e>
c0de7880:	b2c8      	uxtb	r0, r1
c0de7882:	2802      	cmp	r0, #2
c0de7884:	dc37      	bgt.n	c0de78f6 <USBD_GetDescriptor+0x98>
c0de7886:	2800      	cmp	r0, #0
c0de7888:	d05c      	beq.n	c0de7944 <USBD_GetDescriptor+0xe6>
c0de788a:	2801      	cmp	r0, #1
c0de788c:	d062      	beq.n	c0de7954 <USBD_GetDescriptor+0xf6>
c0de788e:	2802      	cmp	r0, #2
c0de7890:	d12c      	bne.n	c0de78ec <USBD_GetDescriptor+0x8e>
c0de7892:	f8d4 0110 	ldr.w	r0, [r4, #272]	; 0x110
c0de7896:	68c0      	ldr	r0, [r0, #12]
c0de7898:	e00d      	b.n	c0de78b6 <USBD_GetDescriptor+0x58>
c0de789a:	2806      	cmp	r0, #6
c0de789c:	d01d      	beq.n	c0de78da <USBD_GetDescriptor+0x7c>
c0de789e:	2807      	cmp	r0, #7
c0de78a0:	d022      	beq.n	c0de78e8 <USBD_GetDescriptor+0x8a>
c0de78a2:	280f      	cmp	r0, #15
c0de78a4:	d122      	bne.n	c0de78ec <USBD_GetDescriptor+0x8e>
c0de78a6:	f8d4 0110 	ldr.w	r0, [r4, #272]	; 0x110
c0de78aa:	69c0      	ldr	r0, [r0, #28]
c0de78ac:	b918      	cbnz	r0, c0de78b6 <USBD_GetDescriptor+0x58>
c0de78ae:	e01d      	b.n	c0de78ec <USBD_GetDescriptor+0x8e>
c0de78b0:	f8d4 0110 	ldr.w	r0, [r4, #272]	; 0x110
c0de78b4:	6800      	ldr	r0, [r0, #0]
c0de78b6:	f7fd fffd 	bl	c0de58b4 <pic>
c0de78ba:	7c23      	ldrb	r3, [r4, #16]
c0de78bc:	4602      	mov	r2, r0
c0de78be:	f10d 0106 	add.w	r1, sp, #6
c0de78c2:	4618      	mov	r0, r3
c0de78c4:	4790      	blx	r2
c0de78c6:	e02d      	b.n	c0de7924 <USBD_GetDescriptor+0xc6>
c0de78c8:	f8d4 0114 	ldr.w	r0, [r4, #276]	; 0x114
c0de78cc:	b1e8      	cbz	r0, c0de790a <USBD_GetDescriptor+0xac>
c0de78ce:	7c21      	ldrb	r1, [r4, #16]
c0de78d0:	2900      	cmp	r1, #0
c0de78d2:	bf0c      	ite	eq
c0de78d4:	6a80      	ldreq	r0, [r0, #40]	; 0x28
c0de78d6:	6ac0      	ldrne	r0, [r0, #44]	; 0x2c
c0de78d8:	e01e      	b.n	c0de7918 <USBD_GetDescriptor+0xba>
c0de78da:	7c20      	ldrb	r0, [r4, #16]
c0de78dc:	b930      	cbnz	r0, c0de78ec <USBD_GetDescriptor+0x8e>
c0de78de:	f8d4 0114 	ldr.w	r0, [r4, #276]	; 0x114
c0de78e2:	b118      	cbz	r0, c0de78ec <USBD_GetDescriptor+0x8e>
c0de78e4:	6b40      	ldr	r0, [r0, #52]	; 0x34
c0de78e6:	e017      	b.n	c0de7918 <USBD_GetDescriptor+0xba>
c0de78e8:	7c20      	ldrb	r0, [r4, #16]
c0de78ea:	b180      	cbz	r0, c0de790e <USBD_GetDescriptor+0xb0>
c0de78ec:	4620      	mov	r0, r4
c0de78ee:	4629      	mov	r1, r5
c0de78f0:	f000 fb32 	bl	c0de7f58 <USBD_CtlError>
c0de78f4:	e024      	b.n	c0de7940 <USBD_GetDescriptor+0xe2>
c0de78f6:	2803      	cmp	r0, #3
c0de78f8:	d028      	beq.n	c0de794c <USBD_GetDescriptor+0xee>
c0de78fa:	2804      	cmp	r0, #4
c0de78fc:	d02e      	beq.n	c0de795c <USBD_GetDescriptor+0xfe>
c0de78fe:	2805      	cmp	r0, #5
c0de7900:	d1f4      	bne.n	c0de78ec <USBD_GetDescriptor+0x8e>
c0de7902:	f8d4 0110 	ldr.w	r0, [r4, #272]	; 0x110
c0de7906:	6980      	ldr	r0, [r0, #24]
c0de7908:	e7d5      	b.n	c0de78b6 <USBD_GetDescriptor+0x58>
c0de790a:	2100      	movs	r1, #0
c0de790c:	e00b      	b.n	c0de7926 <USBD_GetDescriptor+0xc8>
c0de790e:	f8d4 0114 	ldr.w	r0, [r4, #276]	; 0x114
c0de7912:	2800      	cmp	r0, #0
c0de7914:	d0ea      	beq.n	c0de78ec <USBD_GetDescriptor+0x8e>
c0de7916:	6b00      	ldr	r0, [r0, #48]	; 0x30
c0de7918:	f7fd ffcc 	bl	c0de58b4 <pic>
c0de791c:	4601      	mov	r1, r0
c0de791e:	f10d 0006 	add.w	r0, sp, #6
c0de7922:	4788      	blx	r1
c0de7924:	4601      	mov	r1, r0
c0de7926:	f8bd 0006 	ldrh.w	r0, [sp, #6]
c0de792a:	b148      	cbz	r0, c0de7940 <USBD_GetDescriptor+0xe2>
c0de792c:	88ea      	ldrh	r2, [r5, #6]
c0de792e:	b13a      	cbz	r2, c0de7940 <USBD_GetDescriptor+0xe2>
c0de7930:	4290      	cmp	r0, r2
c0de7932:	bf38      	it	cc
c0de7934:	4602      	movcc	r2, r0
c0de7936:	4620      	mov	r0, r4
c0de7938:	f8ad 2006 	strh.w	r2, [sp, #6]
c0de793c:	f000 fba2 	bl	c0de8084 <USBD_CtlSendData>
c0de7940:	b002      	add	sp, #8
c0de7942:	bdb0      	pop	{r4, r5, r7, pc}
c0de7944:	f8d4 0110 	ldr.w	r0, [r4, #272]	; 0x110
c0de7948:	6840      	ldr	r0, [r0, #4]
c0de794a:	e7b4      	b.n	c0de78b6 <USBD_GetDescriptor+0x58>
c0de794c:	f8d4 0110 	ldr.w	r0, [r4, #272]	; 0x110
c0de7950:	6900      	ldr	r0, [r0, #16]
c0de7952:	e7b0      	b.n	c0de78b6 <USBD_GetDescriptor+0x58>
c0de7954:	f8d4 0110 	ldr.w	r0, [r4, #272]	; 0x110
c0de7958:	6880      	ldr	r0, [r0, #8]
c0de795a:	e7ac      	b.n	c0de78b6 <USBD_GetDescriptor+0x58>
c0de795c:	f8d4 0110 	ldr.w	r0, [r4, #272]	; 0x110
c0de7960:	6940      	ldr	r0, [r0, #20]
c0de7962:	e7a8      	b.n	c0de78b6 <USBD_GetDescriptor+0x58>

c0de7964 <USBD_SetAddress>:
c0de7964:	b5b0      	push	{r4, r5, r7, lr}
c0de7966:	888a      	ldrh	r2, [r1, #4]
c0de7968:	4604      	mov	r4, r0
c0de796a:	b92a      	cbnz	r2, c0de7978 <USBD_SetAddress+0x14>
c0de796c:	88c8      	ldrh	r0, [r1, #6]
c0de796e:	b918      	cbnz	r0, c0de7978 <USBD_SetAddress+0x14>
c0de7970:	f894 00fc 	ldrb.w	r0, [r4, #252]	; 0xfc
c0de7974:	2803      	cmp	r0, #3
c0de7976:	d104      	bne.n	c0de7982 <USBD_SetAddress+0x1e>
c0de7978:	4620      	mov	r0, r4
c0de797a:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de797e:	f000 baeb 	b.w	c0de7f58 <USBD_CtlError>
c0de7982:	7888      	ldrb	r0, [r1, #2]
c0de7984:	f000 057f 	and.w	r5, r0, #127	; 0x7f
c0de7988:	4620      	mov	r0, r4
c0de798a:	4629      	mov	r1, r5
c0de798c:	f884 50fe 	strb.w	r5, [r4, #254]	; 0xfe
c0de7990:	f7ff fd26 	bl	c0de73e0 <USBD_LL_SetUSBAddress>
c0de7994:	4620      	mov	r0, r4
c0de7996:	f000 fb9c 	bl	c0de80d2 <USBD_CtlSendStatus>
c0de799a:	2d00      	cmp	r5, #0
c0de799c:	bf0c      	ite	eq
c0de799e:	2001      	moveq	r0, #1
c0de79a0:	2002      	movne	r0, #2
c0de79a2:	f884 00fc 	strb.w	r0, [r4, #252]	; 0xfc
c0de79a6:	bdb0      	pop	{r4, r5, r7, pc}

c0de79a8 <USBD_SetConfig>:
c0de79a8:	b570      	push	{r4, r5, r6, lr}
c0de79aa:	788e      	ldrb	r6, [r1, #2]
c0de79ac:	460d      	mov	r5, r1
c0de79ae:	2e02      	cmp	r6, #2
c0de79b0:	4604      	mov	r4, r0
c0de79b2:	d21a      	bcs.n	c0de79ea <USBD_SetConfig+0x42>
c0de79b4:	f894 00fc 	ldrb.w	r0, [r4, #252]	; 0xfc
c0de79b8:	2803      	cmp	r0, #3
c0de79ba:	d007      	beq.n	c0de79cc <USBD_SetConfig+0x24>
c0de79bc:	2802      	cmp	r0, #2
c0de79be:	d114      	bne.n	c0de79ea <USBD_SetConfig+0x42>
c0de79c0:	b32e      	cbz	r6, c0de7a0e <USBD_SetConfig+0x66>
c0de79c2:	2003      	movs	r0, #3
c0de79c4:	6066      	str	r6, [r4, #4]
c0de79c6:	f884 00fc 	strb.w	r0, [r4, #252]	; 0xfc
c0de79ca:	e008      	b.n	c0de79de <USBD_SetConfig+0x36>
c0de79cc:	b19e      	cbz	r6, c0de79f6 <USBD_SetConfig+0x4e>
c0de79ce:	6860      	ldr	r0, [r4, #4]
c0de79d0:	42b0      	cmp	r0, r6
c0de79d2:	d01c      	beq.n	c0de7a0e <USBD_SetConfig+0x66>
c0de79d4:	b2c1      	uxtb	r1, r0
c0de79d6:	4620      	mov	r0, r4
c0de79d8:	f7ff fdb4 	bl	c0de7544 <USBD_ClrClassConfig>
c0de79dc:	6066      	str	r6, [r4, #4]
c0de79de:	4620      	mov	r0, r4
c0de79e0:	4631      	mov	r1, r6
c0de79e2:	f7ff fd95 	bl	c0de7510 <USBD_SetClassConfig>
c0de79e6:	2802      	cmp	r0, #2
c0de79e8:	d111      	bne.n	c0de7a0e <USBD_SetConfig+0x66>
c0de79ea:	4620      	mov	r0, r4
c0de79ec:	4629      	mov	r1, r5
c0de79ee:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de79f2:	f000 bab1 	b.w	c0de7f58 <USBD_CtlError>
c0de79f6:	2002      	movs	r0, #2
c0de79f8:	f884 00fc 	strb.w	r0, [r4, #252]	; 0xfc
c0de79fc:	2000      	movs	r0, #0
c0de79fe:	6060      	str	r0, [r4, #4]
c0de7a00:	4620      	mov	r0, r4
c0de7a02:	4631      	mov	r1, r6
c0de7a04:	f7ff fd9e 	bl	c0de7544 <USBD_ClrClassConfig>
c0de7a08:	4620      	mov	r0, r4
c0de7a0a:	f000 fb62 	bl	c0de80d2 <USBD_CtlSendStatus>
c0de7a0e:	4620      	mov	r0, r4
c0de7a10:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de7a14:	f000 bb5d 	b.w	c0de80d2 <USBD_CtlSendStatus>

c0de7a18 <USBD_GetConfig>:
c0de7a18:	88ca      	ldrh	r2, [r1, #6]
c0de7a1a:	2a01      	cmp	r2, #1
c0de7a1c:	bf18      	it	ne
c0de7a1e:	f000 ba9b 	bne.w	c0de7f58 <USBD_CtlError>
c0de7a22:	f890 20fc 	ldrb.w	r2, [r0, #252]	; 0xfc
c0de7a26:	2a03      	cmp	r2, #3
c0de7a28:	d006      	beq.n	c0de7a38 <USBD_GetConfig+0x20>
c0de7a2a:	2a02      	cmp	r2, #2
c0de7a2c:	d108      	bne.n	c0de7a40 <USBD_GetConfig+0x28>
c0de7a2e:	2200      	movs	r2, #0
c0de7a30:	4601      	mov	r1, r0
c0de7a32:	f841 2f08 	str.w	r2, [r1, #8]!
c0de7a36:	e000      	b.n	c0de7a3a <USBD_GetConfig+0x22>
c0de7a38:	1d01      	adds	r1, r0, #4
c0de7a3a:	2201      	movs	r2, #1
c0de7a3c:	f000 bb22 	b.w	c0de8084 <USBD_CtlSendData>
c0de7a40:	f000 ba8a 	b.w	c0de7f58 <USBD_CtlError>

c0de7a44 <USBD_GetStatus>:
c0de7a44:	b5b0      	push	{r4, r5, r7, lr}
c0de7a46:	4604      	mov	r4, r0
c0de7a48:	f890 00fc 	ldrb.w	r0, [r0, #252]	; 0xfc
c0de7a4c:	f000 00fe 	and.w	r0, r0, #254	; 0xfe
c0de7a50:	2802      	cmp	r0, #2
c0de7a52:	d10d      	bne.n	c0de7a70 <USBD_GetStatus+0x2c>
c0de7a54:	2001      	movs	r0, #1
c0de7a56:	4625      	mov	r5, r4
c0de7a58:	f845 0f0c 	str.w	r0, [r5, #12]!
c0de7a5c:	f8d5 00f8 	ldr.w	r0, [r5, #248]	; 0xf8
c0de7a60:	b158      	cbz	r0, c0de7a7a <USBD_GetStatus+0x36>
c0de7a62:	4620      	mov	r0, r4
c0de7a64:	f000 fb40 	bl	c0de80e8 <USBD_CtlReceiveStatus>
c0de7a68:	68e0      	ldr	r0, [r4, #12]
c0de7a6a:	f040 0302 	orr.w	r3, r0, #2
c0de7a6e:	e005      	b.n	c0de7a7c <USBD_GetStatus+0x38>
c0de7a70:	4620      	mov	r0, r4
c0de7a72:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de7a76:	f000 ba6f 	b.w	c0de7f58 <USBD_CtlError>
c0de7a7a:	2303      	movs	r3, #3
c0de7a7c:	4620      	mov	r0, r4
c0de7a7e:	4629      	mov	r1, r5
c0de7a80:	2202      	movs	r2, #2
c0de7a82:	60e3      	str	r3, [r4, #12]
c0de7a84:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de7a88:	f000 bafc 	b.w	c0de8084 <USBD_CtlSendData>

c0de7a8c <USBD_SetFeature>:
c0de7a8c:	b5b0      	push	{r4, r5, r7, lr}
c0de7a8e:	460d      	mov	r5, r1
c0de7a90:	8849      	ldrh	r1, [r1, #2]
c0de7a92:	2901      	cmp	r1, #1
c0de7a94:	bf18      	it	ne
c0de7a96:	bdb0      	popne	{r4, r5, r7, pc}
c0de7a98:	4604      	mov	r4, r0
c0de7a9a:	7928      	ldrb	r0, [r5, #4]
c0de7a9c:	2101      	movs	r1, #1
c0de7a9e:	2802      	cmp	r0, #2
c0de7aa0:	f8c4 1104 	str.w	r1, [r4, #260]	; 0x104
c0de7aa4:	d80b      	bhi.n	c0de7abe <USBD_SetFeature+0x32>
c0de7aa6:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
c0de7aaa:	f8d0 0114 	ldr.w	r0, [r0, #276]	; 0x114
c0de7aae:	b130      	cbz	r0, c0de7abe <USBD_SetFeature+0x32>
c0de7ab0:	6880      	ldr	r0, [r0, #8]
c0de7ab2:	f7fd feff 	bl	c0de58b4 <pic>
c0de7ab6:	4602      	mov	r2, r0
c0de7ab8:	4620      	mov	r0, r4
c0de7aba:	4629      	mov	r1, r5
c0de7abc:	4790      	blx	r2
c0de7abe:	4620      	mov	r0, r4
c0de7ac0:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de7ac4:	f000 bb05 	b.w	c0de80d2 <USBD_CtlSendStatus>

c0de7ac8 <USBD_ClrFeature>:
c0de7ac8:	b5b0      	push	{r4, r5, r7, lr}
c0de7aca:	4604      	mov	r4, r0
c0de7acc:	f890 00fc 	ldrb.w	r0, [r0, #252]	; 0xfc
c0de7ad0:	460d      	mov	r5, r1
c0de7ad2:	f000 00fe 	and.w	r0, r0, #254	; 0xfe
c0de7ad6:	2802      	cmp	r0, #2
c0de7ad8:	d11a      	bne.n	c0de7b10 <USBD_ClrFeature+0x48>
c0de7ada:	8868      	ldrh	r0, [r5, #2]
c0de7adc:	2801      	cmp	r0, #1
c0de7ade:	bf18      	it	ne
c0de7ae0:	bdb0      	popne	{r4, r5, r7, pc}
c0de7ae2:	7928      	ldrb	r0, [r5, #4]
c0de7ae4:	2100      	movs	r1, #0
c0de7ae6:	2802      	cmp	r0, #2
c0de7ae8:	f8c4 1104 	str.w	r1, [r4, #260]	; 0x104
c0de7aec:	d80b      	bhi.n	c0de7b06 <USBD_ClrFeature+0x3e>
c0de7aee:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
c0de7af2:	f8d0 0114 	ldr.w	r0, [r0, #276]	; 0x114
c0de7af6:	b130      	cbz	r0, c0de7b06 <USBD_ClrFeature+0x3e>
c0de7af8:	6880      	ldr	r0, [r0, #8]
c0de7afa:	f7fd fedb 	bl	c0de58b4 <pic>
c0de7afe:	4602      	mov	r2, r0
c0de7b00:	4620      	mov	r0, r4
c0de7b02:	4629      	mov	r1, r5
c0de7b04:	4790      	blx	r2
c0de7b06:	4620      	mov	r0, r4
c0de7b08:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de7b0c:	f000 bae1 	b.w	c0de80d2 <USBD_CtlSendStatus>
c0de7b10:	4620      	mov	r0, r4
c0de7b12:	4629      	mov	r1, r5
c0de7b14:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de7b18:	f000 ba1e 	b.w	c0de7f58 <USBD_CtlError>

c0de7b1c <USBD_StdItfReq>:
c0de7b1c:	b5b0      	push	{r4, r5, r7, lr}
c0de7b1e:	4604      	mov	r4, r0
c0de7b20:	f890 00fc 	ldrb.w	r0, [r0, #252]	; 0xfc
c0de7b24:	460d      	mov	r5, r1
c0de7b26:	2803      	cmp	r0, #3
c0de7b28:	d114      	bne.n	c0de7b54 <USBD_StdItfReq+0x38>
c0de7b2a:	7928      	ldrb	r0, [r5, #4]
c0de7b2c:	2802      	cmp	r0, #2
c0de7b2e:	d811      	bhi.n	c0de7b54 <USBD_StdItfReq+0x38>
c0de7b30:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
c0de7b34:	f8d0 0114 	ldr.w	r0, [r0, #276]	; 0x114
c0de7b38:	b160      	cbz	r0, c0de7b54 <USBD_StdItfReq+0x38>
c0de7b3a:	6880      	ldr	r0, [r0, #8]
c0de7b3c:	f7fd feba 	bl	c0de58b4 <pic>
c0de7b40:	4602      	mov	r2, r0
c0de7b42:	4620      	mov	r0, r4
c0de7b44:	4629      	mov	r1, r5
c0de7b46:	4790      	blx	r2
c0de7b48:	88e8      	ldrh	r0, [r5, #6]
c0de7b4a:	b938      	cbnz	r0, c0de7b5c <USBD_StdItfReq+0x40>
c0de7b4c:	4620      	mov	r0, r4
c0de7b4e:	f000 fac0 	bl	c0de80d2 <USBD_CtlSendStatus>
c0de7b52:	e003      	b.n	c0de7b5c <USBD_StdItfReq+0x40>
c0de7b54:	4620      	mov	r0, r4
c0de7b56:	4629      	mov	r1, r5
c0de7b58:	f000 f9fe 	bl	c0de7f58 <USBD_CtlError>
c0de7b5c:	2000      	movs	r0, #0
c0de7b5e:	bdb0      	pop	{r4, r5, r7, pc}

c0de7b60 <USBD_StdEPReq>:
c0de7b60:	b5b0      	push	{r4, r5, r7, lr}
c0de7b62:	b082      	sub	sp, #8
c0de7b64:	460d      	mov	r5, r1
c0de7b66:	7909      	ldrb	r1, [r1, #4]
c0de7b68:	4604      	mov	r4, r0
c0de7b6a:	f001 027f 	and.w	r2, r1, #127	; 0x7f
c0de7b6e:	2a08      	cmp	r2, #8
c0de7b70:	d304      	bcc.n	c0de7b7c <USBD_StdEPReq+0x1c>
c0de7b72:	4620      	mov	r0, r4
c0de7b74:	4629      	mov	r1, r5
c0de7b76:	f000 f9ef 	bl	c0de7f58 <USBD_CtlError>
c0de7b7a:	e06a      	b.n	c0de7c52 <USBD_StdEPReq+0xf2>
c0de7b7c:	2902      	cmp	r1, #2
c0de7b7e:	d811      	bhi.n	c0de7ba4 <USBD_StdEPReq+0x44>
c0de7b80:	7828      	ldrb	r0, [r5, #0]
c0de7b82:	f000 0060 	and.w	r0, r0, #96	; 0x60
c0de7b86:	2820      	cmp	r0, #32
c0de7b88:	d10c      	bne.n	c0de7ba4 <USBD_StdEPReq+0x44>
c0de7b8a:	eb04 00c1 	add.w	r0, r4, r1, lsl #3
c0de7b8e:	f8d0 0114 	ldr.w	r0, [r0, #276]	; 0x114
c0de7b92:	b138      	cbz	r0, c0de7ba4 <USBD_StdEPReq+0x44>
c0de7b94:	6880      	ldr	r0, [r0, #8]
c0de7b96:	f7fd fe8d 	bl	c0de58b4 <pic>
c0de7b9a:	4602      	mov	r2, r0
c0de7b9c:	4620      	mov	r0, r4
c0de7b9e:	4629      	mov	r1, r5
c0de7ba0:	4790      	blx	r2
c0de7ba2:	e056      	b.n	c0de7c52 <USBD_StdEPReq+0xf2>
c0de7ba4:	7868      	ldrb	r0, [r5, #1]
c0de7ba6:	b300      	cbz	r0, c0de7bea <USBD_StdEPReq+0x8a>
c0de7ba8:	2801      	cmp	r0, #1
c0de7baa:	d026      	beq.n	c0de7bfa <USBD_StdEPReq+0x9a>
c0de7bac:	2803      	cmp	r0, #3
c0de7bae:	d150      	bne.n	c0de7c52 <USBD_StdEPReq+0xf2>
c0de7bb0:	f894 00fc 	ldrb.w	r0, [r4, #252]	; 0xfc
c0de7bb4:	2803      	cmp	r0, #3
c0de7bb6:	d124      	bne.n	c0de7c02 <USBD_StdEPReq+0xa2>
c0de7bb8:	8868      	ldrh	r0, [r5, #2]
c0de7bba:	b938      	cbnz	r0, c0de7bcc <USBD_StdEPReq+0x6c>
c0de7bbc:	f041 0080 	orr.w	r0, r1, #128	; 0x80
c0de7bc0:	2880      	cmp	r0, #128	; 0x80
c0de7bc2:	d003      	beq.n	c0de7bcc <USBD_StdEPReq+0x6c>
c0de7bc4:	4620      	mov	r0, r4
c0de7bc6:	f7ff fb97 	bl	c0de72f8 <USBD_LL_StallEP>
c0de7bca:	7929      	ldrb	r1, [r5, #4]
c0de7bcc:	2902      	cmp	r1, #2
c0de7bce:	d83d      	bhi.n	c0de7c4c <USBD_StdEPReq+0xec>
c0de7bd0:	eb04 00c1 	add.w	r0, r4, r1, lsl #3
c0de7bd4:	f8d0 0114 	ldr.w	r0, [r0, #276]	; 0x114
c0de7bd8:	b3c0      	cbz	r0, c0de7c4c <USBD_StdEPReq+0xec>
c0de7bda:	6880      	ldr	r0, [r0, #8]
c0de7bdc:	f7fd fe6a 	bl	c0de58b4 <pic>
c0de7be0:	4602      	mov	r2, r0
c0de7be2:	4620      	mov	r0, r4
c0de7be4:	4629      	mov	r1, r5
c0de7be6:	4790      	blx	r2
c0de7be8:	e030      	b.n	c0de7c4c <USBD_StdEPReq+0xec>
c0de7bea:	f894 00fc 	ldrb.w	r0, [r4, #252]	; 0xfc
c0de7bee:	2803      	cmp	r0, #3
c0de7bf0:	d011      	beq.n	c0de7c16 <USBD_StdEPReq+0xb6>
c0de7bf2:	2802      	cmp	r0, #2
c0de7bf4:	d1bd      	bne.n	c0de7b72 <USBD_StdEPReq+0x12>
c0de7bf6:	b952      	cbnz	r2, c0de7c0e <USBD_StdEPReq+0xae>
c0de7bf8:	e02b      	b.n	c0de7c52 <USBD_StdEPReq+0xf2>
c0de7bfa:	f894 00fc 	ldrb.w	r0, [r4, #252]	; 0xfc
c0de7bfe:	2803      	cmp	r0, #3
c0de7c00:	d018      	beq.n	c0de7c34 <USBD_StdEPReq+0xd4>
c0de7c02:	2802      	cmp	r0, #2
c0de7c04:	d1b5      	bne.n	c0de7b72 <USBD_StdEPReq+0x12>
c0de7c06:	f041 0080 	orr.w	r0, r1, #128	; 0x80
c0de7c0a:	2880      	cmp	r0, #128	; 0x80
c0de7c0c:	d021      	beq.n	c0de7c52 <USBD_StdEPReq+0xf2>
c0de7c0e:	4620      	mov	r0, r4
c0de7c10:	f7ff fb72 	bl	c0de72f8 <USBD_LL_StallEP>
c0de7c14:	e01d      	b.n	c0de7c52 <USBD_StdEPReq+0xf2>
c0de7c16:	4620      	mov	r0, r4
c0de7c18:	f7ff fbce 	bl	c0de73b8 <USBD_LL_IsStallEP>
c0de7c1c:	2800      	cmp	r0, #0
c0de7c1e:	bf18      	it	ne
c0de7c20:	2001      	movne	r0, #1
c0de7c22:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de7c26:	f10d 0106 	add.w	r1, sp, #6
c0de7c2a:	4620      	mov	r0, r4
c0de7c2c:	2202      	movs	r2, #2
c0de7c2e:	f000 fa29 	bl	c0de8084 <USBD_CtlSendData>
c0de7c32:	e00e      	b.n	c0de7c52 <USBD_StdEPReq+0xf2>
c0de7c34:	8868      	ldrh	r0, [r5, #2]
c0de7c36:	b960      	cbnz	r0, c0de7c52 <USBD_StdEPReq+0xf2>
c0de7c38:	b142      	cbz	r2, c0de7c4c <USBD_StdEPReq+0xec>
c0de7c3a:	4620      	mov	r0, r4
c0de7c3c:	f7ff fb8c 	bl	c0de7358 <USBD_LL_ClearStallEP>
c0de7c40:	7928      	ldrb	r0, [r5, #4]
c0de7c42:	2802      	cmp	r0, #2
c0de7c44:	d802      	bhi.n	c0de7c4c <USBD_StdEPReq+0xec>
c0de7c46:	eb04 00c0 	add.w	r0, r4, r0, lsl #3
c0de7c4a:	e7c3      	b.n	c0de7bd4 <USBD_StdEPReq+0x74>
c0de7c4c:	4620      	mov	r0, r4
c0de7c4e:	f000 fa40 	bl	c0de80d2 <USBD_CtlSendStatus>
c0de7c52:	2000      	movs	r0, #0
c0de7c54:	b002      	add	sp, #8
c0de7c56:	bdb0      	pop	{r4, r5, r7, pc}

c0de7c58 <USBD_ParseSetupRequest>:
c0de7c58:	780a      	ldrb	r2, [r1, #0]
c0de7c5a:	7002      	strb	r2, [r0, #0]
c0de7c5c:	784a      	ldrb	r2, [r1, #1]
c0de7c5e:	7042      	strb	r2, [r0, #1]
c0de7c60:	788a      	ldrb	r2, [r1, #2]
c0de7c62:	78cb      	ldrb	r3, [r1, #3]
c0de7c64:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de7c68:	8042      	strh	r2, [r0, #2]
c0de7c6a:	790a      	ldrb	r2, [r1, #4]
c0de7c6c:	794b      	ldrb	r3, [r1, #5]
c0de7c6e:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
c0de7c72:	8082      	strh	r2, [r0, #4]
c0de7c74:	798a      	ldrb	r2, [r1, #6]
c0de7c76:	79c9      	ldrb	r1, [r1, #7]
c0de7c78:	ea42 2101 	orr.w	r1, r2, r1, lsl #8
c0de7c7c:	80c1      	strh	r1, [r0, #6]
c0de7c7e:	4770      	bx	lr

c0de7c80 <USBD_CtlStall>:
c0de7c80:	b510      	push	{r4, lr}
c0de7c82:	2180      	movs	r1, #128	; 0x80
c0de7c84:	4604      	mov	r4, r0
c0de7c86:	f7ff fb37 	bl	c0de72f8 <USBD_LL_StallEP>
c0de7c8a:	4620      	mov	r0, r4
c0de7c8c:	2100      	movs	r1, #0
c0de7c8e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de7c92:	f7ff bb31 	b.w	c0de72f8 <USBD_LL_StallEP>

c0de7c96 <USBD_HID_Setup>:
c0de7c96:	b5b0      	push	{r4, r5, r7, lr}
c0de7c98:	b082      	sub	sp, #8
c0de7c9a:	460d      	mov	r5, r1
c0de7c9c:	7809      	ldrb	r1, [r1, #0]
c0de7c9e:	4604      	mov	r4, r0
c0de7ca0:	2000      	movs	r0, #0
c0de7ca2:	f011 0160 	ands.w	r1, r1, #96	; 0x60
c0de7ca6:	f8ad 0006 	strh.w	r0, [sp, #6]
c0de7caa:	f88d 0005 	strb.w	r0, [sp, #5]
c0de7cae:	d010      	beq.n	c0de7cd2 <USBD_HID_Setup+0x3c>
c0de7cb0:	2920      	cmp	r1, #32
c0de7cb2:	d13c      	bne.n	c0de7d2e <USBD_HID_Setup+0x98>
c0de7cb4:	7868      	ldrb	r0, [r5, #1]
c0de7cb6:	f1a0 010a 	sub.w	r1, r0, #10
c0de7cba:	2902      	cmp	r1, #2
c0de7cbc:	d336      	bcc.n	c0de7d2c <USBD_HID_Setup+0x96>
c0de7cbe:	2802      	cmp	r0, #2
c0de7cc0:	d018      	beq.n	c0de7cf4 <USBD_HID_Setup+0x5e>
c0de7cc2:	2803      	cmp	r0, #3
c0de7cc4:	d016      	beq.n	c0de7cf4 <USBD_HID_Setup+0x5e>
c0de7cc6:	4620      	mov	r0, r4
c0de7cc8:	4629      	mov	r1, r5
c0de7cca:	f000 f945 	bl	c0de7f58 <USBD_CtlError>
c0de7cce:	2002      	movs	r0, #2
c0de7cd0:	e02d      	b.n	c0de7d2e <USBD_HID_Setup+0x98>
c0de7cd2:	7868      	ldrb	r0, [r5, #1]
c0de7cd4:	280b      	cmp	r0, #11
c0de7cd6:	d012      	beq.n	c0de7cfe <USBD_HID_Setup+0x68>
c0de7cd8:	280a      	cmp	r0, #10
c0de7cda:	d00b      	beq.n	c0de7cf4 <USBD_HID_Setup+0x5e>
c0de7cdc:	2806      	cmp	r0, #6
c0de7cde:	d125      	bne.n	c0de7d2c <USBD_HID_Setup+0x96>
c0de7ce0:	78e8      	ldrb	r0, [r5, #3]
c0de7ce2:	2821      	cmp	r0, #33	; 0x21
c0de7ce4:	d00f      	beq.n	c0de7d06 <USBD_HID_Setup+0x70>
c0de7ce6:	2822      	cmp	r0, #34	; 0x22
c0de7ce8:	d11b      	bne.n	c0de7d22 <USBD_HID_Setup+0x8c>
c0de7cea:	f10d 0006 	add.w	r0, sp, #6
c0de7cee:	f000 f84d 	bl	c0de7d8c <USBD_HID_GetReportDescriptor_impl>
c0de7cf2:	e00c      	b.n	c0de7d0e <USBD_HID_Setup+0x78>
c0de7cf4:	f10d 0105 	add.w	r1, sp, #5
c0de7cf8:	4620      	mov	r0, r4
c0de7cfa:	2201      	movs	r2, #1
c0de7cfc:	e014      	b.n	c0de7d28 <USBD_HID_Setup+0x92>
c0de7cfe:	4620      	mov	r0, r4
c0de7d00:	f000 f9e7 	bl	c0de80d2 <USBD_CtlSendStatus>
c0de7d04:	e012      	b.n	c0de7d2c <USBD_HID_Setup+0x96>
c0de7d06:	f10d 0006 	add.w	r0, sp, #6
c0de7d0a:	f000 f829 	bl	c0de7d60 <USBD_HID_GetHidDescriptor_impl>
c0de7d0e:	f8bd 3006 	ldrh.w	r3, [sp, #6]
c0de7d12:	88ea      	ldrh	r2, [r5, #6]
c0de7d14:	4601      	mov	r1, r0
c0de7d16:	4293      	cmp	r3, r2
c0de7d18:	bf38      	it	cc
c0de7d1a:	461a      	movcc	r2, r3
c0de7d1c:	f8ad 2006 	strh.w	r2, [sp, #6]
c0de7d20:	e001      	b.n	c0de7d26 <USBD_HID_Setup+0x90>
c0de7d22:	2200      	movs	r2, #0
c0de7d24:	2100      	movs	r1, #0
c0de7d26:	4620      	mov	r0, r4
c0de7d28:	f000 f9ac 	bl	c0de8084 <USBD_CtlSendData>
c0de7d2c:	2000      	movs	r0, #0
c0de7d2e:	b002      	add	sp, #8
c0de7d30:	bdb0      	pop	{r4, r5, r7, pc}

c0de7d32 <USBD_HID_Init>:
c0de7d32:	b510      	push	{r4, lr}
c0de7d34:	2182      	movs	r1, #130	; 0x82
c0de7d36:	2203      	movs	r2, #3
c0de7d38:	2340      	movs	r3, #64	; 0x40
c0de7d3a:	4604      	mov	r4, r0
c0de7d3c:	f7ff faa2 	bl	c0de7284 <USBD_LL_OpenEP>
c0de7d40:	4620      	mov	r0, r4
c0de7d42:	2102      	movs	r1, #2
c0de7d44:	2203      	movs	r2, #3
c0de7d46:	2340      	movs	r3, #64	; 0x40
c0de7d48:	f7ff fa9c 	bl	c0de7284 <USBD_LL_OpenEP>
c0de7d4c:	4620      	mov	r0, r4
c0de7d4e:	2102      	movs	r1, #2
c0de7d50:	2240      	movs	r2, #64	; 0x40
c0de7d52:	f7ff fb7d 	bl	c0de7450 <USBD_LL_PrepareReceive>
c0de7d56:	2000      	movs	r0, #0
c0de7d58:	bd10      	pop	{r4, pc}

c0de7d5a <USBD_HID_DeInit>:
c0de7d5a:	2000      	movs	r0, #0
c0de7d5c:	4770      	bx	lr
	...

c0de7d60 <USBD_HID_GetHidDescriptor_impl>:
c0de7d60:	4a08      	ldr	r2, [pc, #32]	; (c0de7d84 <USBD_HID_GetHidDescriptor_impl+0x24>)
c0de7d62:	4601      	mov	r1, r0
c0de7d64:	eb09 0002 	add.w	r0, r9, r2
c0de7d68:	f890 010c 	ldrb.w	r0, [r0, #268]	; 0x10c
c0de7d6c:	2300      	movs	r3, #0
c0de7d6e:	2800      	cmp	r0, #0
c0de7d70:	4805      	ldr	r0, [pc, #20]	; (c0de7d88 <USBD_HID_GetHidDescriptor_impl+0x28>)
c0de7d72:	f04f 0200 	mov.w	r2, #0
c0de7d76:	4478      	add	r0, pc
c0de7d78:	bf0c      	ite	eq
c0de7d7a:	2309      	moveq	r3, #9
c0de7d7c:	4610      	movne	r0, r2
c0de7d7e:	800b      	strh	r3, [r1, #0]
c0de7d80:	4770      	bx	lr
c0de7d82:	bf00      	nop
c0de7d84:	000053f8 	.word	0x000053f8
c0de7d88:	00004af6 	.word	0x00004af6

c0de7d8c <USBD_HID_GetReportDescriptor_impl>:
c0de7d8c:	4a08      	ldr	r2, [pc, #32]	; (c0de7db0 <USBD_HID_GetReportDescriptor_impl+0x24>)
c0de7d8e:	4601      	mov	r1, r0
c0de7d90:	eb09 0002 	add.w	r0, r9, r2
c0de7d94:	f890 010c 	ldrb.w	r0, [r0, #268]	; 0x10c
c0de7d98:	2300      	movs	r3, #0
c0de7d9a:	2800      	cmp	r0, #0
c0de7d9c:	4805      	ldr	r0, [pc, #20]	; (c0de7db4 <USBD_HID_GetReportDescriptor_impl+0x28>)
c0de7d9e:	f04f 0200 	mov.w	r2, #0
c0de7da2:	4478      	add	r0, pc
c0de7da4:	bf0c      	ite	eq
c0de7da6:	2322      	moveq	r3, #34	; 0x22
c0de7da8:	4610      	movne	r0, r2
c0de7daa:	800b      	strh	r3, [r1, #0]
c0de7dac:	4770      	bx	lr
c0de7dae:	bf00      	nop
c0de7db0:	000053f8 	.word	0x000053f8
c0de7db4:	00004ad3 	.word	0x00004ad3

c0de7db8 <USBD_HID_DataIn_impl>:
c0de7db8:	2902      	cmp	r1, #2
c0de7dba:	d106      	bne.n	c0de7dca <USBD_HID_DataIn_impl+0x12>
c0de7dbc:	b580      	push	{r7, lr}
c0de7dbe:	4804      	ldr	r0, [pc, #16]	; (c0de7dd0 <USBD_HID_DataIn_impl+0x18>)
c0de7dc0:	4478      	add	r0, pc
c0de7dc2:	f7fb ff8d 	bl	c0de3ce0 <io_usb_hid_sent>
c0de7dc6:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de7dca:	2000      	movs	r0, #0
c0de7dcc:	4770      	bx	lr
c0de7dce:	bf00      	nop
c0de7dd0:	ffffbd45 	.word	0xffffbd45

c0de7dd4 <USBD_HID_DataOut_impl>:
c0de7dd4:	b570      	push	{r4, r5, r6, lr}
c0de7dd6:	2902      	cmp	r1, #2
c0de7dd8:	d121      	bne.n	c0de7e1e <USBD_HID_DataOut_impl+0x4a>
c0de7dda:	4615      	mov	r5, r2
c0de7ddc:	2102      	movs	r1, #2
c0de7dde:	2240      	movs	r2, #64	; 0x40
c0de7de0:	461c      	mov	r4, r3
c0de7de2:	f7ff fb35 	bl	c0de7450 <USBD_LL_PrepareReceive>
c0de7de6:	4e0f      	ldr	r6, [pc, #60]	; (c0de7e24 <USBD_HID_DataOut_impl+0x50>)
c0de7de8:	eb09 0006 	add.w	r0, r9, r6
c0de7dec:	7980      	ldrb	r0, [r0, #6]
c0de7dee:	b9b0      	cbnz	r0, c0de7e1e <USBD_HID_DataOut_impl+0x4a>
c0de7df0:	2002      	movs	r0, #2
c0de7df2:	f7fb fe49 	bl	c0de3a88 <io_seproxyhal_get_ep_rx_size>
c0de7df6:	4602      	mov	r2, r0
c0de7df8:	480c      	ldr	r0, [pc, #48]	; (c0de7e2c <USBD_HID_DataOut_impl+0x58>)
c0de7dfa:	4629      	mov	r1, r5
c0de7dfc:	4478      	add	r0, pc
c0de7dfe:	4623      	mov	r3, r4
c0de7e00:	f7fb fe88 	bl	c0de3b14 <io_usb_hid_receive>
c0de7e04:	2802      	cmp	r0, #2
c0de7e06:	d10a      	bne.n	c0de7e1e <USBD_HID_DataOut_impl+0x4a>
c0de7e08:	2107      	movs	r1, #7
c0de7e0a:	eb09 0006 	add.w	r0, r9, r6
c0de7e0e:	f809 1006 	strb.w	r1, [r9, r6]
c0de7e12:	2101      	movs	r1, #1
c0de7e14:	4a04      	ldr	r2, [pc, #16]	; (c0de7e28 <USBD_HID_DataOut_impl+0x54>)
c0de7e16:	7181      	strb	r1, [r0, #6]
c0de7e18:	f859 1002 	ldr.w	r1, [r9, r2]
c0de7e1c:	8041      	strh	r1, [r0, #2]
c0de7e1e:	2000      	movs	r0, #0
c0de7e20:	bd70      	pop	{r4, r5, r6, pc}
c0de7e22:	bf00      	nop
c0de7e24:	000002b8 	.word	0x000002b8
c0de7e28:	00000328 	.word	0x00000328
c0de7e2c:	ffffbd09 	.word	0xffffbd09

c0de7e30 <USBD_WEBUSB_Init>:
c0de7e30:	b510      	push	{r4, lr}
c0de7e32:	2183      	movs	r1, #131	; 0x83
c0de7e34:	2203      	movs	r2, #3
c0de7e36:	2340      	movs	r3, #64	; 0x40
c0de7e38:	4604      	mov	r4, r0
c0de7e3a:	f7ff fa23 	bl	c0de7284 <USBD_LL_OpenEP>
c0de7e3e:	4620      	mov	r0, r4
c0de7e40:	2103      	movs	r1, #3
c0de7e42:	2203      	movs	r2, #3
c0de7e44:	2340      	movs	r3, #64	; 0x40
c0de7e46:	f7ff fa1d 	bl	c0de7284 <USBD_LL_OpenEP>
c0de7e4a:	4620      	mov	r0, r4
c0de7e4c:	2103      	movs	r1, #3
c0de7e4e:	2240      	movs	r2, #64	; 0x40
c0de7e50:	f7ff fafe 	bl	c0de7450 <USBD_LL_PrepareReceive>
c0de7e54:	2000      	movs	r0, #0
c0de7e56:	bd10      	pop	{r4, pc}

c0de7e58 <USBD_WEBUSB_DeInit>:
c0de7e58:	2000      	movs	r0, #0
c0de7e5a:	4770      	bx	lr

c0de7e5c <USBD_WEBUSB_Setup>:
c0de7e5c:	2000      	movs	r0, #0
c0de7e5e:	4770      	bx	lr

c0de7e60 <USBD_WEBUSB_DataIn>:
c0de7e60:	2903      	cmp	r1, #3
c0de7e62:	d106      	bne.n	c0de7e72 <USBD_WEBUSB_DataIn+0x12>
c0de7e64:	b580      	push	{r7, lr}
c0de7e66:	4804      	ldr	r0, [pc, #16]	; (c0de7e78 <USBD_WEBUSB_DataIn+0x18>)
c0de7e68:	4478      	add	r0, pc
c0de7e6a:	f7fb ff39 	bl	c0de3ce0 <io_usb_hid_sent>
c0de7e6e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de7e72:	2000      	movs	r0, #0
c0de7e74:	4770      	bx	lr
c0de7e76:	bf00      	nop
c0de7e78:	ffffb681 	.word	0xffffb681

c0de7e7c <USBD_WEBUSB_DataOut>:
c0de7e7c:	b570      	push	{r4, r5, r6, lr}
c0de7e7e:	2903      	cmp	r1, #3
c0de7e80:	d121      	bne.n	c0de7ec6 <USBD_WEBUSB_DataOut+0x4a>
c0de7e82:	4615      	mov	r5, r2
c0de7e84:	2103      	movs	r1, #3
c0de7e86:	2240      	movs	r2, #64	; 0x40
c0de7e88:	461c      	mov	r4, r3
c0de7e8a:	f7ff fae1 	bl	c0de7450 <USBD_LL_PrepareReceive>
c0de7e8e:	4e0f      	ldr	r6, [pc, #60]	; (c0de7ecc <USBD_WEBUSB_DataOut+0x50>)
c0de7e90:	eb09 0006 	add.w	r0, r9, r6
c0de7e94:	7980      	ldrb	r0, [r0, #6]
c0de7e96:	b9b0      	cbnz	r0, c0de7ec6 <USBD_WEBUSB_DataOut+0x4a>
c0de7e98:	2003      	movs	r0, #3
c0de7e9a:	f7fb fdf5 	bl	c0de3a88 <io_seproxyhal_get_ep_rx_size>
c0de7e9e:	4602      	mov	r2, r0
c0de7ea0:	480c      	ldr	r0, [pc, #48]	; (c0de7ed4 <USBD_WEBUSB_DataOut+0x58>)
c0de7ea2:	4629      	mov	r1, r5
c0de7ea4:	4478      	add	r0, pc
c0de7ea6:	4623      	mov	r3, r4
c0de7ea8:	f7fb fe34 	bl	c0de3b14 <io_usb_hid_receive>
c0de7eac:	2802      	cmp	r0, #2
c0de7eae:	d10a      	bne.n	c0de7ec6 <USBD_WEBUSB_DataOut+0x4a>
c0de7eb0:	210b      	movs	r1, #11
c0de7eb2:	eb09 0006 	add.w	r0, r9, r6
c0de7eb6:	f809 1006 	strb.w	r1, [r9, r6]
c0de7eba:	2105      	movs	r1, #5
c0de7ebc:	4a04      	ldr	r2, [pc, #16]	; (c0de7ed0 <USBD_WEBUSB_DataOut+0x54>)
c0de7ebe:	7181      	strb	r1, [r0, #6]
c0de7ec0:	f859 1002 	ldr.w	r1, [r9, r2]
c0de7ec4:	8041      	strh	r1, [r0, #2]
c0de7ec6:	2000      	movs	r0, #0
c0de7ec8:	bd70      	pop	{r4, r5, r6, pc}
c0de7eca:	bf00      	nop
c0de7ecc:	000002b8 	.word	0x000002b8
c0de7ed0:	00000328 	.word	0x00000328
c0de7ed4:	ffffb645 	.word	0xffffb645

c0de7ed8 <USBD_DeviceDescriptor>:
c0de7ed8:	4802      	ldr	r0, [pc, #8]	; (c0de7ee4 <USBD_DeviceDescriptor+0xc>)
c0de7eda:	2212      	movs	r2, #18
c0de7edc:	4478      	add	r0, pc
c0de7ede:	800a      	strh	r2, [r1, #0]
c0de7ee0:	4770      	bx	lr
c0de7ee2:	bf00      	nop
c0de7ee4:	00004bdc 	.word	0x00004bdc

c0de7ee8 <USBD_LangIDStrDescriptor>:
c0de7ee8:	4802      	ldr	r0, [pc, #8]	; (c0de7ef4 <USBD_LangIDStrDescriptor+0xc>)
c0de7eea:	2204      	movs	r2, #4
c0de7eec:	4478      	add	r0, pc
c0de7eee:	800a      	strh	r2, [r1, #0]
c0de7ef0:	4770      	bx	lr
c0de7ef2:	bf00      	nop
c0de7ef4:	00004bde 	.word	0x00004bde

c0de7ef8 <USBD_ManufacturerStrDescriptor>:
c0de7ef8:	4802      	ldr	r0, [pc, #8]	; (c0de7f04 <USBD_ManufacturerStrDescriptor+0xc>)
c0de7efa:	220e      	movs	r2, #14
c0de7efc:	4478      	add	r0, pc
c0de7efe:	800a      	strh	r2, [r1, #0]
c0de7f00:	4770      	bx	lr
c0de7f02:	bf00      	nop
c0de7f04:	00004bd2 	.word	0x00004bd2

c0de7f08 <USBD_ProductStrDescriptor>:
c0de7f08:	4802      	ldr	r0, [pc, #8]	; (c0de7f14 <USBD_ProductStrDescriptor+0xc>)
c0de7f0a:	2218      	movs	r2, #24
c0de7f0c:	4478      	add	r0, pc
c0de7f0e:	800a      	strh	r2, [r1, #0]
c0de7f10:	4770      	bx	lr
c0de7f12:	bf00      	nop
c0de7f14:	00004bd0 	.word	0x00004bd0

c0de7f18 <USBD_SerialStrDescriptor>:
c0de7f18:	4802      	ldr	r0, [pc, #8]	; (c0de7f24 <USBD_SerialStrDescriptor+0xc>)
c0de7f1a:	220a      	movs	r2, #10
c0de7f1c:	4478      	add	r0, pc
c0de7f1e:	800a      	strh	r2, [r1, #0]
c0de7f20:	4770      	bx	lr
c0de7f22:	bf00      	nop
c0de7f24:	00004bd8 	.word	0x00004bd8

c0de7f28 <USBD_ConfigStrDescriptor>:
c0de7f28:	4802      	ldr	r0, [pc, #8]	; (c0de7f34 <USBD_ConfigStrDescriptor+0xc>)
c0de7f2a:	2218      	movs	r2, #24
c0de7f2c:	4478      	add	r0, pc
c0de7f2e:	800a      	strh	r2, [r1, #0]
c0de7f30:	4770      	bx	lr
c0de7f32:	bf00      	nop
c0de7f34:	00004bb0 	.word	0x00004bb0

c0de7f38 <USBD_InterfaceStrDescriptor>:
c0de7f38:	4802      	ldr	r0, [pc, #8]	; (c0de7f44 <USBD_InterfaceStrDescriptor+0xc>)
c0de7f3a:	2218      	movs	r2, #24
c0de7f3c:	4478      	add	r0, pc
c0de7f3e:	800a      	strh	r2, [r1, #0]
c0de7f40:	4770      	bx	lr
c0de7f42:	bf00      	nop
c0de7f44:	00004ba0 	.word	0x00004ba0

c0de7f48 <USBD_BOSDescriptor>:
c0de7f48:	4802      	ldr	r0, [pc, #8]	; (c0de7f54 <USBD_BOSDescriptor+0xc>)
c0de7f4a:	2239      	movs	r2, #57	; 0x39
c0de7f4c:	4478      	add	r0, pc
c0de7f4e:	800a      	strh	r2, [r1, #0]
c0de7f50:	4770      	bx	lr
c0de7f52:	bf00      	nop
c0de7f54:	0000494b 	.word	0x0000494b

c0de7f58 <USBD_CtlError>:
c0de7f58:	b580      	push	{r7, lr}
c0de7f5a:	f991 2000 	ldrsb.w	r2, [r1]
c0de7f5e:	f1b2 3fff 	cmp.w	r2, #4294967295	; 0xffffffff
c0de7f62:	dd03      	ble.n	c0de7f6c <USBD_CtlError+0x14>
c0de7f64:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de7f68:	f7ff be8a 	b.w	c0de7c80 <USBD_CtlStall>
c0de7f6c:	784a      	ldrb	r2, [r1, #1]
c0de7f6e:	2a77      	cmp	r2, #119	; 0x77
c0de7f70:	d00d      	beq.n	c0de7f8e <USBD_CtlError+0x36>
c0de7f72:	2a06      	cmp	r2, #6
c0de7f74:	d1f6      	bne.n	c0de7f64 <USBD_CtlError+0xc>
c0de7f76:	884a      	ldrh	r2, [r1, #2]
c0de7f78:	f240 33ee 	movw	r3, #1006	; 0x3ee
c0de7f7c:	429a      	cmp	r2, r3
c0de7f7e:	d1f1      	bne.n	c0de7f64 <USBD_CtlError+0xc>
c0de7f80:	88ca      	ldrh	r2, [r1, #6]
c0de7f82:	2a12      	cmp	r2, #18
c0de7f84:	bf28      	it	cs
c0de7f86:	2212      	movcs	r2, #18
c0de7f88:	4911      	ldr	r1, [pc, #68]	; (c0de7fd0 <USBD_CtlError+0x78>)
c0de7f8a:	4479      	add	r1, pc
c0de7f8c:	e01c      	b.n	c0de7fc8 <USBD_CtlError+0x70>
c0de7f8e:	888a      	ldrh	r2, [r1, #4]
c0de7f90:	2a04      	cmp	r2, #4
c0de7f92:	d106      	bne.n	c0de7fa2 <USBD_CtlError+0x4a>
c0de7f94:	88ca      	ldrh	r2, [r1, #6]
c0de7f96:	2a28      	cmp	r2, #40	; 0x28
c0de7f98:	bf28      	it	cs
c0de7f9a:	2228      	movcs	r2, #40	; 0x28
c0de7f9c:	490d      	ldr	r1, [pc, #52]	; (c0de7fd4 <USBD_CtlError+0x7c>)
c0de7f9e:	4479      	add	r1, pc
c0de7fa0:	e012      	b.n	c0de7fc8 <USBD_CtlError+0x70>
c0de7fa2:	888a      	ldrh	r2, [r1, #4]
c0de7fa4:	2a05      	cmp	r2, #5
c0de7fa6:	d106      	bne.n	c0de7fb6 <USBD_CtlError+0x5e>
c0de7fa8:	88ca      	ldrh	r2, [r1, #6]
c0de7faa:	2a92      	cmp	r2, #146	; 0x92
c0de7fac:	bf28      	it	cs
c0de7fae:	2292      	movcs	r2, #146	; 0x92
c0de7fb0:	4909      	ldr	r1, [pc, #36]	; (c0de7fd8 <USBD_CtlError+0x80>)
c0de7fb2:	4479      	add	r1, pc
c0de7fb4:	e008      	b.n	c0de7fc8 <USBD_CtlError+0x70>
c0de7fb6:	888a      	ldrh	r2, [r1, #4]
c0de7fb8:	2a07      	cmp	r2, #7
c0de7fba:	d1d3      	bne.n	c0de7f64 <USBD_CtlError+0xc>
c0de7fbc:	88ca      	ldrh	r2, [r1, #6]
c0de7fbe:	2ab2      	cmp	r2, #178	; 0xb2
c0de7fc0:	bf28      	it	cs
c0de7fc2:	22b2      	movcs	r2, #178	; 0xb2
c0de7fc4:	4905      	ldr	r1, [pc, #20]	; (c0de7fdc <USBD_CtlError+0x84>)
c0de7fc6:	4479      	add	r1, pc
c0de7fc8:	f000 f85c 	bl	c0de8084 <USBD_CtlSendData>
c0de7fcc:	bd80      	pop	{r7, pc}
c0de7fce:	bf00      	nop
c0de7fd0:	00004966 	.word	0x00004966
c0de7fd4:	00004b60 	.word	0x00004b60
c0de7fd8:	00004950 	.word	0x00004950
c0de7fdc:	000049ce 	.word	0x000049ce

c0de7fe0 <USB_power>:
c0de7fe0:	b5b0      	push	{r4, r5, r7, lr}
c0de7fe2:	4d1b      	ldr	r5, [pc, #108]	; (c0de8050 <USB_power+0x70>)
c0de7fe4:	4604      	mov	r4, r0
c0de7fe6:	eb09 0005 	add.w	r0, r9, r5
c0de7fea:	f44f 719a 	mov.w	r1, #308	; 0x134
c0de7fee:	f001 fcb6 	bl	c0de995e <__aeabi_memclr>
c0de7ff2:	4818      	ldr	r0, [pc, #96]	; (c0de8054 <USB_power+0x74>)
c0de7ff4:	2100      	movs	r1, #0
c0de7ff6:	4448      	add	r0, r9
c0de7ff8:	7481      	strb	r1, [r0, #18]
c0de7ffa:	8201      	strh	r1, [r0, #16]
c0de7ffc:	60c1      	str	r1, [r0, #12]
c0de7ffe:	e9c0 1105 	strd	r1, r1, [r0, #20]
c0de8002:	61c1      	str	r1, [r0, #28]
c0de8004:	8401      	strh	r1, [r0, #32]
c0de8006:	b1ec      	cbz	r4, c0de8044 <USB_power+0x64>
c0de8008:	eb09 0405 	add.w	r4, r9, r5
c0de800c:	4620      	mov	r0, r4
c0de800e:	f44f 719a 	mov.w	r1, #308	; 0x134
c0de8012:	f001 fca4 	bl	c0de995e <__aeabi_memclr>
c0de8016:	4910      	ldr	r1, [pc, #64]	; (c0de8058 <USB_power+0x78>)
c0de8018:	4620      	mov	r0, r4
c0de801a:	4479      	add	r1, pc
c0de801c:	2200      	movs	r2, #0
c0de801e:	f7ff fa31 	bl	c0de7484 <USBD_Init>
c0de8022:	4a0e      	ldr	r2, [pc, #56]	; (c0de805c <USB_power+0x7c>)
c0de8024:	2000      	movs	r0, #0
c0de8026:	447a      	add	r2, pc
c0de8028:	4621      	mov	r1, r4
c0de802a:	f7ff fa60 	bl	c0de74ee <USBD_RegisterClassForInterface>
c0de802e:	4a0c      	ldr	r2, [pc, #48]	; (c0de8060 <USB_power+0x80>)
c0de8030:	2001      	movs	r0, #1
c0de8032:	447a      	add	r2, pc
c0de8034:	4621      	mov	r1, r4
c0de8036:	f7ff fa5a 	bl	c0de74ee <USBD_RegisterClassForInterface>
c0de803a:	4620      	mov	r0, r4
c0de803c:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de8040:	f7ff ba60 	b.w	c0de7504 <USBD_Start>
c0de8044:	eb09 0005 	add.w	r0, r9, r5
c0de8048:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de804c:	f7ff ba32 	b.w	c0de74b4 <USBD_DeInit>
c0de8050:	000053f8 	.word	0x000053f8
c0de8054:	000002b8 	.word	0x000002b8
c0de8058:	000048b6 	.word	0x000048b6
c0de805c:	00004a22 	.word	0x00004a22
c0de8060:	00004a4e 	.word	0x00004a4e

c0de8064 <USBD_GetCfgDesc_impl>:
c0de8064:	4601      	mov	r1, r0
c0de8066:	4802      	ldr	r0, [pc, #8]	; (c0de8070 <USBD_GetCfgDesc_impl+0xc>)
c0de8068:	2240      	movs	r2, #64	; 0x40
c0de806a:	4478      	add	r0, pc
c0de806c:	800a      	strh	r2, [r1, #0]
c0de806e:	4770      	bx	lr
c0de8070:	00004abe 	.word	0x00004abe

c0de8074 <USBD_GetDeviceQualifierDesc_impl>:
c0de8074:	4601      	mov	r1, r0
c0de8076:	4802      	ldr	r0, [pc, #8]	; (c0de8080 <USBD_GetDeviceQualifierDesc_impl+0xc>)
c0de8078:	220a      	movs	r2, #10
c0de807a:	4478      	add	r0, pc
c0de807c:	800a      	strh	r2, [r1, #0]
c0de807e:	4770      	bx	lr
c0de8080:	00004aee 	.word	0x00004aee

c0de8084 <USBD_CtlSendData>:
c0de8084:	b580      	push	{r7, lr}
c0de8086:	468c      	mov	ip, r1
c0de8088:	2102      	movs	r1, #2
c0de808a:	f8c0 10f4 	str.w	r1, [r0, #244]	; 0xf4
c0de808e:	6a01      	ldr	r1, [r0, #32]
c0de8090:	e9c0 2206 	strd	r2, r2, [r0, #24]
c0de8094:	f8c0 c130 	str.w	ip, [r0, #304]	; 0x130
c0de8098:	4291      	cmp	r1, r2
c0de809a:	bf88      	it	hi
c0de809c:	4611      	movhi	r1, r2
c0de809e:	b28b      	uxth	r3, r1
c0de80a0:	2100      	movs	r1, #0
c0de80a2:	4662      	mov	r2, ip
c0de80a4:	f7ff f9b4 	bl	c0de7410 <USBD_LL_Transmit>
c0de80a8:	2000      	movs	r0, #0
c0de80aa:	bd80      	pop	{r7, pc}

c0de80ac <USBD_CtlContinueSendData>:
c0de80ac:	b580      	push	{r7, lr}
c0de80ae:	6a03      	ldr	r3, [r0, #32]
c0de80b0:	468c      	mov	ip, r1
c0de80b2:	4293      	cmp	r3, r2
c0de80b4:	bf88      	it	hi
c0de80b6:	4613      	movhi	r3, r2
c0de80b8:	b29b      	uxth	r3, r3
c0de80ba:	2100      	movs	r1, #0
c0de80bc:	4662      	mov	r2, ip
c0de80be:	f7ff f9a7 	bl	c0de7410 <USBD_LL_Transmit>
c0de80c2:	2000      	movs	r0, #0
c0de80c4:	bd80      	pop	{r7, pc}

c0de80c6 <USBD_CtlContinueRx>:
c0de80c6:	b580      	push	{r7, lr}
c0de80c8:	2100      	movs	r1, #0
c0de80ca:	f7ff f9c1 	bl	c0de7450 <USBD_LL_PrepareReceive>
c0de80ce:	2000      	movs	r0, #0
c0de80d0:	bd80      	pop	{r7, pc}

c0de80d2 <USBD_CtlSendStatus>:
c0de80d2:	b580      	push	{r7, lr}
c0de80d4:	2104      	movs	r1, #4
c0de80d6:	f8c0 10f4 	str.w	r1, [r0, #244]	; 0xf4
c0de80da:	2100      	movs	r1, #0
c0de80dc:	2200      	movs	r2, #0
c0de80de:	2300      	movs	r3, #0
c0de80e0:	f7ff f996 	bl	c0de7410 <USBD_LL_Transmit>
c0de80e4:	2000      	movs	r0, #0
c0de80e6:	bd80      	pop	{r7, pc}

c0de80e8 <USBD_CtlReceiveStatus>:
c0de80e8:	b580      	push	{r7, lr}
c0de80ea:	2105      	movs	r1, #5
c0de80ec:	f8c0 10f4 	str.w	r1, [r0, #244]	; 0xf4
c0de80f0:	2100      	movs	r1, #0
c0de80f2:	2200      	movs	r2, #0
c0de80f4:	f7ff f9ac 	bl	c0de7450 <USBD_LL_PrepareReceive>
c0de80f8:	2000      	movs	r0, #0
c0de80fa:	bd80      	pop	{r7, pc}

c0de80fc <ux_flow_is_first>:
c0de80fc:	4915      	ldr	r1, [pc, #84]	; (c0de8154 <ux_flow_is_first+0x58>)
c0de80fe:	f819 0001 	ldrb.w	r0, [r9, r1]
c0de8102:	2801      	cmp	r0, #1
c0de8104:	d823      	bhi.n	c0de814e <ux_flow_is_first+0x52>
c0de8106:	3801      	subs	r0, #1
c0de8108:	eb09 0201 	add.w	r2, r9, r1
c0de810c:	eb00 0340 	add.w	r3, r0, r0, lsl #1
c0de8110:	eb02 0083 	add.w	r0, r2, r3, lsl #2
c0de8114:	8c80      	ldrh	r0, [r0, #36]	; 0x24
c0de8116:	b1d0      	cbz	r0, c0de814e <ux_flow_is_first+0x52>
c0de8118:	eb09 0201 	add.w	r2, r9, r1
c0de811c:	eb02 0283 	add.w	r2, r2, r3, lsl #2
c0de8120:	69d2      	ldr	r2, [r2, #28]
c0de8122:	b1a2      	cbz	r2, c0de814e <ux_flow_is_first+0x52>
c0de8124:	4449      	add	r1, r9
c0de8126:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de812a:	8c09      	ldrh	r1, [r1, #32]
c0de812c:	b929      	cbnz	r1, c0de813a <ux_flow_is_first+0x3e>
c0de812e:	eb02 0380 	add.w	r3, r2, r0, lsl #2
c0de8132:	f853 3c04 	ldr.w	r3, [r3, #-4]
c0de8136:	3303      	adds	r3, #3
c0de8138:	d109      	bne.n	c0de814e <ux_flow_is_first+0x52>
c0de813a:	4281      	cmp	r1, r0
c0de813c:	d205      	bcs.n	c0de814a <ux_flow_is_first+0x4e>
c0de813e:	eb02 0081 	add.w	r0, r2, r1, lsl #2
c0de8142:	f850 0c04 	ldr.w	r0, [r0, #-4]
c0de8146:	3002      	adds	r0, #2
c0de8148:	d001      	beq.n	c0de814e <ux_flow_is_first+0x52>
c0de814a:	2000      	movs	r0, #0
c0de814c:	4770      	bx	lr
c0de814e:	2001      	movs	r0, #1
c0de8150:	4770      	bx	lr
c0de8152:	bf00      	nop
c0de8154:	00006584 	.word	0x00006584

c0de8158 <ux_flow_is_last>:
c0de8158:	4813      	ldr	r0, [pc, #76]	; (c0de81a8 <ux_flow_is_last+0x50>)
c0de815a:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de815e:	2901      	cmp	r1, #1
c0de8160:	d81f      	bhi.n	c0de81a2 <ux_flow_is_last+0x4a>
c0de8162:	3901      	subs	r1, #1
c0de8164:	eb09 0200 	add.w	r2, r9, r0
c0de8168:	eb01 0341 	add.w	r3, r1, r1, lsl #1
c0de816c:	eb02 0183 	add.w	r1, r2, r3, lsl #2
c0de8170:	8c89      	ldrh	r1, [r1, #36]	; 0x24
c0de8172:	b1b1      	cbz	r1, c0de81a2 <ux_flow_is_last+0x4a>
c0de8174:	eb09 0200 	add.w	r2, r9, r0
c0de8178:	eb02 0283 	add.w	r2, r2, r3, lsl #2
c0de817c:	69d2      	ldr	r2, [r2, #28]
c0de817e:	b182      	cbz	r2, c0de81a2 <ux_flow_is_last+0x4a>
c0de8180:	4448      	add	r0, r9
c0de8182:	eb00 0083 	add.w	r0, r0, r3, lsl #2
c0de8186:	8c00      	ldrh	r0, [r0, #32]
c0de8188:	1e4b      	subs	r3, r1, #1
c0de818a:	4283      	cmp	r3, r0
c0de818c:	dd09      	ble.n	c0de81a2 <ux_flow_is_last+0x4a>
c0de818e:	3902      	subs	r1, #2
c0de8190:	4281      	cmp	r1, r0
c0de8192:	dd04      	ble.n	c0de819e <ux_flow_is_last+0x46>
c0de8194:	eb02 0080 	add.w	r0, r2, r0, lsl #2
c0de8198:	6840      	ldr	r0, [r0, #4]
c0de819a:	3002      	adds	r0, #2
c0de819c:	d001      	beq.n	c0de81a2 <ux_flow_is_last+0x4a>
c0de819e:	2000      	movs	r0, #0
c0de81a0:	4770      	bx	lr
c0de81a2:	2001      	movs	r0, #1
c0de81a4:	4770      	bx	lr
c0de81a6:	bf00      	nop
c0de81a8:	00006584 	.word	0x00006584

c0de81ac <ux_flow_direction>:
c0de81ac:	480a      	ldr	r0, [pc, #40]	; (c0de81d8 <ux_flow_direction+0x2c>)
c0de81ae:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de81b2:	b169      	cbz	r1, c0de81d0 <ux_flow_direction+0x24>
c0de81b4:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de81b8:	4448      	add	r0, r9
c0de81ba:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de81be:	8a81      	ldrh	r1, [r0, #20]
c0de81c0:	8ac0      	ldrh	r0, [r0, #22]
c0de81c2:	4281      	cmp	r1, r0
c0de81c4:	d901      	bls.n	c0de81ca <ux_flow_direction+0x1e>
c0de81c6:	2001      	movs	r0, #1
c0de81c8:	e003      	b.n	c0de81d2 <ux_flow_direction+0x26>
c0de81ca:	d201      	bcs.n	c0de81d0 <ux_flow_direction+0x24>
c0de81cc:	20ff      	movs	r0, #255	; 0xff
c0de81ce:	e000      	b.n	c0de81d2 <ux_flow_direction+0x26>
c0de81d0:	2000      	movs	r0, #0
c0de81d2:	b240      	sxtb	r0, r0
c0de81d4:	4770      	bx	lr
c0de81d6:	bf00      	nop
c0de81d8:	00006584 	.word	0x00006584

c0de81dc <ux_flow_get_current>:
c0de81dc:	4811      	ldr	r0, [pc, #68]	; (c0de8224 <ux_flow_get_current+0x48>)
c0de81de:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de81e2:	2901      	cmp	r1, #1
c0de81e4:	d81b      	bhi.n	c0de821e <ux_flow_get_current+0x42>
c0de81e6:	3901      	subs	r1, #1
c0de81e8:	eb09 0200 	add.w	r2, r9, r0
c0de81ec:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de81f0:	eb02 0281 	add.w	r2, r2, r1, lsl #2
c0de81f4:	8c92      	ldrh	r2, [r2, #36]	; 0x24
c0de81f6:	b192      	cbz	r2, c0de821e <ux_flow_get_current+0x42>
c0de81f8:	eb09 0300 	add.w	r3, r9, r0
c0de81fc:	eb03 0381 	add.w	r3, r3, r1, lsl #2
c0de8200:	69db      	ldr	r3, [r3, #28]
c0de8202:	b163      	cbz	r3, c0de821e <ux_flow_get_current+0x42>
c0de8204:	4448      	add	r0, r9
c0de8206:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de820a:	8c00      	ldrh	r0, [r0, #32]
c0de820c:	4290      	cmp	r0, r2
c0de820e:	d206      	bcs.n	c0de821e <ux_flow_get_current+0x42>
c0de8210:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
c0de8214:	f110 0f04 	cmn.w	r0, #4
c0de8218:	bf98      	it	ls
c0de821a:	f7fd bb4b 	bls.w	c0de58b4 <pic>
c0de821e:	2000      	movs	r0, #0
c0de8220:	4770      	bx	lr
c0de8222:	bf00      	nop
c0de8224:	00006584 	.word	0x00006584

c0de8228 <ux_flow_next_internal>:
c0de8228:	b570      	push	{r4, r5, r6, lr}
c0de822a:	4a21      	ldr	r2, [pc, #132]	; (c0de82b0 <ux_flow_next_internal+0x88>)
c0de822c:	f819 1002 	ldrb.w	r1, [r9, r2]
c0de8230:	f1b1 0e01 	subs.w	lr, r1, #1
c0de8234:	d83b      	bhi.n	c0de82ae <ux_flow_next_internal+0x86>
c0de8236:	eb09 0102 	add.w	r1, r9, r2
c0de823a:	eb0e 034e 	add.w	r3, lr, lr, lsl #1
c0de823e:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de8242:	8c89      	ldrh	r1, [r1, #36]	; 0x24
c0de8244:	b399      	cbz	r1, c0de82ae <ux_flow_next_internal+0x86>
c0de8246:	eb09 0502 	add.w	r5, r9, r2
c0de824a:	eb05 0583 	add.w	r5, r5, r3, lsl #2
c0de824e:	69ed      	ldr	r5, [r5, #28]
c0de8250:	b36d      	cbz	r5, c0de82ae <ux_flow_next_internal+0x86>
c0de8252:	2901      	cmp	r1, #1
c0de8254:	d02b      	beq.n	c0de82ae <ux_flow_next_internal+0x86>
c0de8256:	eb09 0402 	add.w	r4, r9, r2
c0de825a:	eb04 0c83 	add.w	ip, r4, r3, lsl #2
c0de825e:	f83c 4f20 	ldrh.w	r4, [ip, #32]!
c0de8262:	1e4e      	subs	r6, r1, #1
c0de8264:	42a6      	cmp	r6, r4
c0de8266:	dd22      	ble.n	c0de82ae <ux_flow_next_internal+0x86>
c0de8268:	3902      	subs	r1, #2
c0de826a:	42a1      	cmp	r1, r4
c0de826c:	db11      	blt.n	c0de8292 <ux_flow_next_internal+0x6a>
c0de826e:	eb05 0184 	add.w	r1, r5, r4, lsl #2
c0de8272:	6849      	ldr	r1, [r1, #4]
c0de8274:	1c8d      	adds	r5, r1, #2
c0de8276:	bf08      	it	eq
c0de8278:	bd70      	popeq	{r4, r5, r6, pc}
c0de827a:	3103      	adds	r1, #3
c0de827c:	d109      	bne.n	c0de8292 <ux_flow_next_internal+0x6a>
c0de827e:	eb09 0002 	add.w	r0, r9, r2
c0de8282:	2100      	movs	r1, #0
c0de8284:	eb00 0283 	add.w	r2, r0, r3, lsl #2
c0de8288:	f8ac 1000 	strh.w	r1, [ip]
c0de828c:	4670      	mov	r0, lr
c0de828e:	8451      	strh	r1, [r2, #34]	; 0x22
c0de8290:	e009      	b.n	c0de82a6 <ux_flow_next_internal+0x7e>
c0de8292:	eb09 0102 	add.w	r1, r9, r2
c0de8296:	eb01 0183 	add.w	r1, r1, r3, lsl #2
c0de829a:	844c      	strh	r4, [r1, #34]	; 0x22
c0de829c:	1c61      	adds	r1, r4, #1
c0de829e:	f8ac 1000 	strh.w	r1, [ip]
c0de82a2:	b120      	cbz	r0, c0de82ae <ux_flow_next_internal+0x86>
c0de82a4:	4670      	mov	r0, lr
c0de82a6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de82aa:	f000 b84b 	b.w	c0de8344 <ux_flow_engine_init_step>
c0de82ae:	bd70      	pop	{r4, r5, r6, pc}
c0de82b0:	00006584 	.word	0x00006584

c0de82b4 <ux_flow_next>:
c0de82b4:	2001      	movs	r0, #1
c0de82b6:	f7ff bfb7 	b.w	c0de8228 <ux_flow_next_internal>
	...

c0de82bc <ux_flow_prev>:
c0de82bc:	b510      	push	{r4, lr}
c0de82be:	4920      	ldr	r1, [pc, #128]	; (c0de8340 <ux_flow_prev+0x84>)
c0de82c0:	f819 0001 	ldrb.w	r0, [r9, r1]
c0de82c4:	3801      	subs	r0, #1
c0de82c6:	d812      	bhi.n	c0de82ee <ux_flow_prev+0x32>
c0de82c8:	eb09 0301 	add.w	r3, r9, r1
c0de82cc:	eb00 0240 	add.w	r2, r0, r0, lsl #1
c0de82d0:	eb03 0382 	add.w	r3, r3, r2, lsl #2
c0de82d4:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
c0de82d6:	b153      	cbz	r3, c0de82ee <ux_flow_prev+0x32>
c0de82d8:	eb09 0401 	add.w	r4, r9, r1
c0de82dc:	eb04 0482 	add.w	r4, r4, r2, lsl #2
c0de82e0:	f8d4 e01c 	ldr.w	lr, [r4, #28]
c0de82e4:	f1be 0f00 	cmp.w	lr, #0
c0de82e8:	bf18      	it	ne
c0de82ea:	2b01      	cmpne	r3, #1
c0de82ec:	d100      	bne.n	c0de82f0 <ux_flow_prev+0x34>
c0de82ee:	bd10      	pop	{r4, pc}
c0de82f0:	eb09 0401 	add.w	r4, r9, r1
c0de82f4:	eb04 0c82 	add.w	ip, r4, r2, lsl #2
c0de82f8:	f83c 4f20 	ldrh.w	r4, [ip, #32]!
c0de82fc:	b16c      	cbz	r4, c0de831a <ux_flow_prev+0x5e>
c0de82fe:	eb0e 0384 	add.w	r3, lr, r4, lsl #2
c0de8302:	f853 3c04 	ldr.w	r3, [r3, #-4]
c0de8306:	3302      	adds	r3, #2
c0de8308:	d0f1      	beq.n	c0de82ee <ux_flow_prev+0x32>
c0de830a:	4449      	add	r1, r9
c0de830c:	eb01 0182 	add.w	r1, r1, r2, lsl #2
c0de8310:	844c      	strh	r4, [r1, #34]	; 0x22
c0de8312:	1e61      	subs	r1, r4, #1
c0de8314:	f8ac 1000 	strh.w	r1, [ip]
c0de8318:	e00e      	b.n	c0de8338 <ux_flow_prev+0x7c>
c0de831a:	eb0e 0483 	add.w	r4, lr, r3, lsl #2
c0de831e:	f854 4c04 	ldr.w	r4, [r4, #-4]
c0de8322:	3403      	adds	r4, #3
c0de8324:	bf18      	it	ne
c0de8326:	bd10      	popne	{r4, pc}
c0de8328:	4449      	add	r1, r9
c0de832a:	1e9c      	subs	r4, r3, #2
c0de832c:	3b01      	subs	r3, #1
c0de832e:	eb01 0182 	add.w	r1, r1, r2, lsl #2
c0de8332:	f8ac 4000 	strh.w	r4, [ip]
c0de8336:	844b      	strh	r3, [r1, #34]	; 0x22
c0de8338:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de833c:	f000 b802 	b.w	c0de8344 <ux_flow_engine_init_step>
c0de8340:	00006584 	.word	0x00006584

c0de8344 <ux_flow_engine_init_step>:
c0de8344:	b5f0      	push	{r4, r5, r6, r7, lr}
c0de8346:	b081      	sub	sp, #4
c0de8348:	491e      	ldr	r1, [pc, #120]	; (c0de83c4 <ux_flow_engine_init_step+0x80>)
c0de834a:	4604      	mov	r4, r0
c0de834c:	eb09 0001 	add.w	r0, r9, r1
c0de8350:	eb04 0144 	add.w	r1, r4, r4, lsl #1
c0de8354:	eb00 0581 	add.w	r5, r0, r1, lsl #2
c0de8358:	f855 0f1c 	ldr.w	r0, [r5, #28]!
c0de835c:	462e      	mov	r6, r5
c0de835e:	f836 1f04 	ldrh.w	r1, [r6, #4]!
c0de8362:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de8366:	f110 0f04 	cmn.w	r0, #4
c0de836a:	bf84      	itt	hi
c0de836c:	b001      	addhi	sp, #4
c0de836e:	bdf0      	pophi	{r4, r5, r6, r7, pc}
c0de8370:	f7fd faa0 	bl	c0de58b4 <pic>
c0de8374:	6829      	ldr	r1, [r5, #0]
c0de8376:	8832      	ldrh	r2, [r6, #0]
c0de8378:	6807      	ldr	r7, [r0, #0]
c0de837a:	f851 0022 	ldr.w	r0, [r1, r2, lsl #2]
c0de837e:	f7fd fa99 	bl	c0de58b4 <pic>
c0de8382:	b147      	cbz	r7, c0de8396 <ux_flow_engine_init_step+0x52>
c0de8384:	6800      	ldr	r0, [r0, #0]
c0de8386:	f7fd fa95 	bl	c0de58b4 <pic>
c0de838a:	4601      	mov	r1, r0
c0de838c:	4620      	mov	r0, r4
c0de838e:	b001      	add	sp, #4
c0de8390:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de8394:	4708      	bx	r1
c0de8396:	6880      	ldr	r0, [r0, #8]
c0de8398:	f7fd fa8c 	bl	c0de58b4 <pic>
c0de839c:	6829      	ldr	r1, [r5, #0]
c0de839e:	8832      	ldrh	r2, [r6, #0]
c0de83a0:	4605      	mov	r5, r0
c0de83a2:	f851 1022 	ldr.w	r1, [r1, r2, lsl #2]
c0de83a6:	4608      	mov	r0, r1
c0de83a8:	f7fd fa84 	bl	c0de58b4 <pic>
c0de83ac:	6840      	ldr	r0, [r0, #4]
c0de83ae:	f7fd fa81 	bl	c0de58b4 <pic>
c0de83b2:	4602      	mov	r2, r0
c0de83b4:	4620      	mov	r0, r4
c0de83b6:	4629      	mov	r1, r5
c0de83b8:	b001      	add	sp, #4
c0de83ba:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
c0de83be:	f000 b877 	b.w	c0de84b0 <ux_flow_init>
c0de83c2:	bf00      	nop
c0de83c4:	00006584 	.word	0x00006584

c0de83c8 <ux_flow_validate>:
c0de83c8:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de83cc:	b081      	sub	sp, #4
c0de83ce:	4d37      	ldr	r5, [pc, #220]	; (c0de84ac <ux_flow_validate+0xe4>)
c0de83d0:	f819 0005 	ldrb.w	r0, [r9, r5]
c0de83d4:	f1b0 0a01 	subs.w	sl, r0, #1
c0de83d8:	d856      	bhi.n	c0de8488 <ux_flow_validate+0xc0>
c0de83da:	eb09 0005 	add.w	r0, r9, r5
c0de83de:	eb0a 064a 	add.w	r6, sl, sl, lsl #1
c0de83e2:	eb00 0486 	add.w	r4, r0, r6, lsl #2
c0de83e6:	f834 0f24 	ldrh.w	r0, [r4, #36]!
c0de83ea:	2800      	cmp	r0, #0
c0de83ec:	d04c      	beq.n	c0de8488 <ux_flow_validate+0xc0>
c0de83ee:	eb09 0105 	add.w	r1, r9, r5
c0de83f2:	eb01 0786 	add.w	r7, r1, r6, lsl #2
c0de83f6:	f857 1f1c 	ldr.w	r1, [r7, #28]!
c0de83fa:	2900      	cmp	r1, #0
c0de83fc:	d044      	beq.n	c0de8488 <ux_flow_validate+0xc0>
c0de83fe:	eb09 0205 	add.w	r2, r9, r5
c0de8402:	eb02 0886 	add.w	r8, r2, r6, lsl #2
c0de8406:	f838 2f20 	ldrh.w	r2, [r8, #32]!
c0de840a:	4282      	cmp	r2, r0
c0de840c:	d23c      	bcs.n	c0de8488 <ux_flow_validate+0xc0>
c0de840e:	f851 0022 	ldr.w	r0, [r1, r2, lsl #2]
c0de8412:	f7fd fa4f 	bl	c0de58b4 <pic>
c0de8416:	6880      	ldr	r0, [r0, #8]
c0de8418:	b188      	cbz	r0, c0de843e <ux_flow_validate+0x76>
c0de841a:	6838      	ldr	r0, [r7, #0]
c0de841c:	f8b8 1000 	ldrh.w	r1, [r8]
c0de8420:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de8424:	f7fd fa46 	bl	c0de58b4 <pic>
c0de8428:	6880      	ldr	r0, [r0, #8]
c0de842a:	f7fd fa43 	bl	c0de58b4 <pic>
c0de842e:	4601      	mov	r1, r0
c0de8430:	4650      	mov	r0, sl
c0de8432:	2200      	movs	r2, #0
c0de8434:	b001      	add	sp, #4
c0de8436:	e8bd 45f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de843a:	f000 b839 	b.w	c0de84b0 <ux_flow_init>
c0de843e:	8820      	ldrh	r0, [r4, #0]
c0de8440:	b310      	cbz	r0, c0de8488 <ux_flow_validate+0xc0>
c0de8442:	f8b8 2000 	ldrh.w	r2, [r8]
c0de8446:	3802      	subs	r0, #2
c0de8448:	4290      	cmp	r0, r2
c0de844a:	db1d      	blt.n	c0de8488 <ux_flow_validate+0xc0>
c0de844c:	6839      	ldr	r1, [r7, #0]
c0de844e:	eb01 0382 	add.w	r3, r1, r2, lsl #2
c0de8452:	685b      	ldr	r3, [r3, #4]
c0de8454:	1cdf      	adds	r7, r3, #3
c0de8456:	d01a      	beq.n	c0de848e <ux_flow_validate+0xc6>
c0de8458:	3302      	adds	r3, #2
c0de845a:	d115      	bne.n	c0de8488 <ux_flow_validate+0xc0>
c0de845c:	4613      	mov	r3, r2
c0de845e:	eb01 0282 	add.w	r2, r1, r2, lsl #2
c0de8462:	6852      	ldr	r2, [r2, #4]
c0de8464:	3202      	adds	r2, #2
c0de8466:	d105      	bne.n	c0de8474 <ux_flow_validate+0xac>
c0de8468:	3301      	adds	r3, #1
c0de846a:	b29a      	uxth	r2, r3
c0de846c:	4290      	cmp	r0, r2
c0de846e:	f8a8 3000 	strh.w	r3, [r8]
c0de8472:	daf4      	bge.n	c0de845e <ux_flow_validate+0x96>
c0de8474:	eb09 0005 	add.w	r0, r9, r5
c0de8478:	eb00 0086 	add.w	r0, r0, r6, lsl #2
c0de847c:	8443      	strh	r3, [r0, #34]	; 0x22
c0de847e:	1c59      	adds	r1, r3, #1
c0de8480:	4650      	mov	r0, sl
c0de8482:	f8a8 1000 	strh.w	r1, [r8]
c0de8486:	e00b      	b.n	c0de84a0 <ux_flow_validate+0xd8>
c0de8488:	b001      	add	sp, #4
c0de848a:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de848e:	eb09 0005 	add.w	r0, r9, r5
c0de8492:	2100      	movs	r1, #0
c0de8494:	eb00 0286 	add.w	r2, r0, r6, lsl #2
c0de8498:	f8a8 1000 	strh.w	r1, [r8]
c0de849c:	4650      	mov	r0, sl
c0de849e:	8451      	strh	r1, [r2, #34]	; 0x22
c0de84a0:	b001      	add	sp, #4
c0de84a2:	e8bd 45f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de84a6:	f7ff bf4d 	b.w	c0de8344 <ux_flow_engine_init_step>
c0de84aa:	bf00      	nop
c0de84ac:	00006584 	.word	0x00006584

c0de84b0 <ux_flow_init>:
c0de84b0:	b570      	push	{r4, r5, r6, lr}
c0de84b2:	b100      	cbz	r0, c0de84b6 <ux_flow_init+0x6>
c0de84b4:	bd70      	pop	{r4, r5, r6, pc}
c0de84b6:	4e21      	ldr	r6, [pc, #132]	; (c0de853c <ux_flow_init+0x8c>)
c0de84b8:	460d      	mov	r5, r1
c0de84ba:	eb09 0006 	add.w	r0, r9, r6
c0de84be:	3004      	adds	r0, #4
c0de84c0:	2122      	movs	r1, #34	; 0x22
c0de84c2:	4614      	mov	r4, r2
c0de84c4:	f001 fa4b 	bl	c0de995e <__aeabi_memclr>
c0de84c8:	2d00      	cmp	r5, #0
c0de84ca:	d0f3      	beq.n	c0de84b4 <ux_flow_init+0x4>
c0de84cc:	4628      	mov	r0, r5
c0de84ce:	f7fd f9f1 	bl	c0de58b4 <pic>
c0de84d2:	eb09 0206 	add.w	r2, r9, r6
c0de84d6:	8c91      	ldrh	r1, [r2, #36]	; 0x24
c0de84d8:	61d0      	str	r0, [r2, #28]
c0de84da:	f850 2021 	ldr.w	r2, [r0, r1, lsl #2]
c0de84de:	3201      	adds	r2, #1
c0de84e0:	d009      	beq.n	c0de84f6 <ux_flow_init+0x46>
c0de84e2:	bf00      	nop
c0de84e4:	3101      	adds	r1, #1
c0de84e6:	b28a      	uxth	r2, r1
c0de84e8:	f850 2022 	ldr.w	r2, [r0, r2, lsl #2]
c0de84ec:	3201      	adds	r2, #1
c0de84ee:	d1f9      	bne.n	c0de84e4 <ux_flow_init+0x34>
c0de84f0:	eb09 0006 	add.w	r0, r9, r6
c0de84f4:	8481      	strh	r1, [r0, #36]	; 0x24
c0de84f6:	b1e4      	cbz	r4, c0de8532 <ux_flow_init+0x82>
c0de84f8:	4620      	mov	r0, r4
c0de84fa:	f7fd f9db 	bl	c0de58b4 <pic>
c0de84fe:	eb09 0106 	add.w	r1, r9, r6
c0de8502:	69ca      	ldr	r2, [r1, #28]
c0de8504:	8c09      	ldrh	r1, [r1, #32]
c0de8506:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
c0de850a:	1c4a      	adds	r2, r1, #1
c0de850c:	d011      	beq.n	c0de8532 <ux_flow_init+0x82>
c0de850e:	4604      	mov	r4, r0
c0de8510:	4608      	mov	r0, r1
c0de8512:	f7fd f9cf 	bl	c0de58b4 <pic>
c0de8516:	42a0      	cmp	r0, r4
c0de8518:	d00b      	beq.n	c0de8532 <ux_flow_init+0x82>
c0de851a:	eb09 0006 	add.w	r0, r9, r6
c0de851e:	8c02      	ldrh	r2, [r0, #32]
c0de8520:	69c1      	ldr	r1, [r0, #28]
c0de8522:	1c53      	adds	r3, r2, #1
c0de8524:	b29d      	uxth	r5, r3
c0de8526:	f851 1025 	ldr.w	r1, [r1, r5, lsl #2]
c0de852a:	8442      	strh	r2, [r0, #34]	; 0x22
c0de852c:	1c4a      	adds	r2, r1, #1
c0de852e:	8403      	strh	r3, [r0, #32]
c0de8530:	d1ee      	bne.n	c0de8510 <ux_flow_init+0x60>
c0de8532:	2000      	movs	r0, #0
c0de8534:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de8538:	f7ff bf04 	b.w	c0de8344 <ux_flow_engine_init_step>
c0de853c:	00006584 	.word	0x00006584

c0de8540 <ux_flow_button_callback>:
c0de8540:	b580      	push	{r7, lr}
c0de8542:	490a      	ldr	r1, [pc, #40]	; (c0de856c <ux_flow_button_callback+0x2c>)
c0de8544:	4288      	cmp	r0, r1
c0de8546:	d008      	beq.n	c0de855a <ux_flow_button_callback+0x1a>
c0de8548:	4909      	ldr	r1, [pc, #36]	; (c0de8570 <ux_flow_button_callback+0x30>)
c0de854a:	4288      	cmp	r0, r1
c0de854c:	d008      	beq.n	c0de8560 <ux_flow_button_callback+0x20>
c0de854e:	4909      	ldr	r1, [pc, #36]	; (c0de8574 <ux_flow_button_callback+0x34>)
c0de8550:	4288      	cmp	r0, r1
c0de8552:	d108      	bne.n	c0de8566 <ux_flow_button_callback+0x26>
c0de8554:	f7ff feb2 	bl	c0de82bc <ux_flow_prev>
c0de8558:	e005      	b.n	c0de8566 <ux_flow_button_callback+0x26>
c0de855a:	f7ff ff35 	bl	c0de83c8 <ux_flow_validate>
c0de855e:	e002      	b.n	c0de8566 <ux_flow_button_callback+0x26>
c0de8560:	2001      	movs	r0, #1
c0de8562:	f7ff fe61 	bl	c0de8228 <ux_flow_next_internal>
c0de8566:	2000      	movs	r0, #0
c0de8568:	bd80      	pop	{r7, pc}
c0de856a:	bf00      	nop
c0de856c:	80000003 	.word	0x80000003
c0de8570:	80000002 	.word	0x80000002
c0de8574:	80000001 	.word	0x80000001

c0de8578 <ux_stack_get_step_params>:
c0de8578:	b510      	push	{r4, lr}
c0de857a:	b9a8      	cbnz	r0, c0de85a8 <ux_stack_get_step_params+0x30>
c0de857c:	480b      	ldr	r0, [pc, #44]	; (c0de85ac <ux_stack_get_step_params+0x34>)
c0de857e:	eb09 0100 	add.w	r1, r9, r0
c0de8582:	8c8a      	ldrh	r2, [r1, #36]	; 0x24
c0de8584:	8c09      	ldrh	r1, [r1, #32]
c0de8586:	4291      	cmp	r1, r2
c0de8588:	d20e      	bcs.n	c0de85a8 <ux_stack_get_step_params+0x30>
c0de858a:	eb09 0400 	add.w	r4, r9, r0
c0de858e:	69e0      	ldr	r0, [r4, #28]
c0de8590:	f7fd f990 	bl	c0de58b4 <pic>
c0de8594:	8c21      	ldrh	r1, [r4, #32]
c0de8596:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
c0de859a:	f7fd f98b 	bl	c0de58b4 <pic>
c0de859e:	6840      	ldr	r0, [r0, #4]
c0de85a0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de85a4:	f7fd b986 	b.w	c0de58b4 <pic>
c0de85a8:	2000      	movs	r0, #0
c0de85aa:	bd10      	pop	{r4, pc}
c0de85ac:	00006584 	.word	0x00006584

c0de85b0 <ux_stack_get_current_step_params>:
c0de85b0:	4802      	ldr	r0, [pc, #8]	; (c0de85bc <ux_stack_get_current_step_params+0xc>)
c0de85b2:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de85b6:	3801      	subs	r0, #1
c0de85b8:	f7ff bfde 	b.w	c0de8578 <ux_stack_get_step_params>
c0de85bc:	00006584 	.word	0x00006584

c0de85c0 <ux_flow_relayout>:
c0de85c0:	b580      	push	{r7, lr}
c0de85c2:	f7ff fe0b 	bl	c0de81dc <ux_flow_get_current>
c0de85c6:	b138      	cbz	r0, c0de85d8 <ux_flow_relayout+0x18>
c0de85c8:	4804      	ldr	r0, [pc, #16]	; (c0de85dc <ux_flow_relayout+0x1c>)
c0de85ca:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de85ce:	3801      	subs	r0, #1
c0de85d0:	f7ff feb8 	bl	c0de8344 <ux_flow_engine_init_step>
c0de85d4:	2001      	movs	r0, #1
c0de85d6:	bd80      	pop	{r7, pc}
c0de85d8:	2000      	movs	r0, #0
c0de85da:	bd80      	pop	{r7, pc}
c0de85dc:	00006584 	.word	0x00006584

c0de85e0 <ux_layout_bb_init_common>:
c0de85e0:	b510      	push	{r4, lr}
c0de85e2:	4604      	mov	r4, r0
c0de85e4:	f000 fc0a 	bl	c0de8dfc <ux_stack_init>
c0de85e8:	480a      	ldr	r0, [pc, #40]	; (c0de8614 <ux_layout_bb_init_common+0x34>)
c0de85ea:	4a0b      	ldr	r2, [pc, #44]	; (c0de8618 <ux_layout_bb_init_common+0x38>)
c0de85ec:	4448      	add	r0, r9
c0de85ee:	eb04 01c4 	add.w	r1, r4, r4, lsl #3
c0de85f2:	447a      	add	r2, pc
c0de85f4:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de85f8:	2105      	movs	r1, #5
c0de85fa:	f8c0 20cc 	str.w	r2, [r0, #204]	; 0xcc
c0de85fe:	f880 10d0 	strb.w	r1, [r0, #208]	; 0xd0
c0de8602:	4a06      	ldr	r2, [pc, #24]	; (c0de861c <ux_layout_bb_init_common+0x3c>)
c0de8604:	2101      	movs	r1, #1
c0de8606:	447a      	add	r2, pc
c0de8608:	f880 10c9 	strb.w	r1, [r0, #201]	; 0xc9
c0de860c:	f8c0 20dc 	str.w	r2, [r0, #220]	; 0xdc
c0de8610:	bd10      	pop	{r4, pc}
c0de8612:	bf00      	nop
c0de8614:	00006584 	.word	0x00006584
c0de8618:	00004582 	.word	0x00004582
c0de861c:	ffffff37 	.word	0xffffff37

c0de8620 <ux_layout_bn_prepro>:
c0de8620:	b580      	push	{r7, lr}
c0de8622:	f000 fb51 	bl	c0de8cc8 <ux_layout_strings_prepro>
c0de8626:	b158      	cbz	r0, c0de8640 <ux_layout_bn_prepro+0x20>
c0de8628:	4906      	ldr	r1, [pc, #24]	; (c0de8644 <ux_layout_bn_prepro+0x24>)
c0de862a:	eb09 0201 	add.w	r2, r9, r1
c0de862e:	f892 20a9 	ldrb.w	r2, [r2, #169]	; 0xa9
c0de8632:	2a11      	cmp	r2, #17
c0de8634:	bf02      	ittt	eq
c0de8636:	4449      	addeq	r1, r9
c0de8638:	f248 020a 	movweq	r2, #32778	; 0x800a
c0de863c:	f8a1 20c0 	strheq.w	r2, [r1, #192]	; 0xc0
c0de8640:	bd80      	pop	{r7, pc}
c0de8642:	bf00      	nop
c0de8644:	00006584 	.word	0x00006584

c0de8648 <ux_layout_bn_init>:
c0de8648:	b510      	push	{r4, lr}
c0de864a:	4604      	mov	r4, r0
c0de864c:	f7ff ffc8 	bl	c0de85e0 <ux_layout_bb_init_common>
c0de8650:	4807      	ldr	r0, [pc, #28]	; (c0de8670 <ux_layout_bn_init+0x28>)
c0de8652:	4a08      	ldr	r2, [pc, #32]	; (c0de8674 <ux_layout_bn_init+0x2c>)
c0de8654:	4448      	add	r0, r9
c0de8656:	eb04 01c4 	add.w	r1, r4, r4, lsl #3
c0de865a:	eb00 0181 	add.w	r1, r0, r1, lsl #2
c0de865e:	447a      	add	r2, pc
c0de8660:	4620      	mov	r0, r4
c0de8662:	f8c1 20d8 	str.w	r2, [r1, #216]	; 0xd8
c0de8666:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de866a:	f000 bb97 	b.w	c0de8d9c <ux_stack_display>
c0de866e:	bf00      	nop
c0de8670:	00006584 	.word	0x00006584
c0de8674:	ffffffbf 	.word	0xffffffbf

c0de8678 <ux_layout_paging_prepro_common>:
c0de8678:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de867c:	b082      	sub	sp, #8
c0de867e:	f8df 8148 	ldr.w	r8, [pc, #328]	; c0de87c8 <ux_layout_paging_prepro_common+0x150>
c0de8682:	4606      	mov	r6, r0
c0de8684:	eb09 0008 	add.w	r0, r9, r8
c0de8688:	4614      	mov	r4, r2
c0de868a:	460d      	mov	r5, r1
c0de868c:	30a8      	adds	r0, #168	; 0xa8
c0de868e:	4631      	mov	r1, r6
c0de8690:	2220      	movs	r2, #32
c0de8692:	f001 f969 	bl	c0de9968 <__aeabi_memmove>
c0de8696:	7870      	ldrb	r0, [r6, #1]
c0de8698:	2810      	cmp	r0, #16
c0de869a:	dc20      	bgt.n	c0de86de <ux_layout_paging_prepro_common+0x66>
c0de869c:	2801      	cmp	r0, #1
c0de869e:	d036      	beq.n	c0de870e <ux_layout_paging_prepro_common+0x96>
c0de86a0:	2802      	cmp	r0, #2
c0de86a2:	d03d      	beq.n	c0de8720 <ux_layout_paging_prepro_common+0xa8>
c0de86a4:	2810      	cmp	r0, #16
c0de86a6:	f040 8089 	bne.w	c0de87bc <ux_layout_paging_prepro_common+0x144>
c0de86aa:	2d00      	cmp	r5, #0
c0de86ac:	d045      	beq.n	c0de873a <ux_layout_paging_prepro_common+0xc2>
c0de86ae:	eb09 0608 	add.w	r6, r9, r8
c0de86b2:	68b0      	ldr	r0, [r6, #8]
c0de86b4:	4946      	ldr	r1, [pc, #280]	; (c0de87d0 <ux_layout_paging_prepro_common+0x158>)
c0de86b6:	4c47      	ldr	r4, [pc, #284]	; (c0de87d4 <ux_layout_paging_prepro_common+0x15c>)
c0de86b8:	2801      	cmp	r0, #1
c0de86ba:	447c      	add	r4, pc
c0de86bc:	4628      	mov	r0, r5
c0de86be:	4479      	add	r1, pc
c0de86c0:	bf88      	it	hi
c0de86c2:	460c      	movhi	r4, r1
c0de86c4:	f7fd f8f6 	bl	c0de58b4 <pic>
c0de86c8:	4603      	mov	r3, r0
c0de86ca:	e9d6 0501 	ldrd	r0, r5, [r6, #4]
c0de86ce:	2180      	movs	r1, #128	; 0x80
c0de86d0:	3001      	adds	r0, #1
c0de86d2:	9000      	str	r0, [sp, #0]
c0de86d4:	f106 0028 	add.w	r0, r6, #40	; 0x28
c0de86d8:	4622      	mov	r2, r4
c0de86da:	9501      	str	r5, [sp, #4]
c0de86dc:	e037      	b.n	c0de874e <ux_layout_paging_prepro_common+0xd6>
c0de86de:	f1a0 0111 	sub.w	r1, r0, #17
c0de86e2:	2903      	cmp	r1, #3
c0de86e4:	d26a      	bcs.n	c0de87bc <ux_layout_paging_prepro_common+0x144>
c0de86e6:	f000 000f 	and.w	r0, r0, #15
c0de86ea:	1e46      	subs	r6, r0, #1
c0de86ec:	2e02      	cmp	r6, #2
c0de86ee:	d865      	bhi.n	c0de87bc <ux_layout_paging_prepro_common+0x144>
c0de86f0:	eb09 0008 	add.w	r0, r9, r8
c0de86f4:	eb00 0046 	add.w	r0, r0, r6, lsl #1
c0de86f8:	8a85      	ldrh	r5, [r0, #20]
c0de86fa:	2d00      	cmp	r5, #0
c0de86fc:	d05e      	beq.n	c0de87bc <ux_layout_paging_prepro_common+0x144>
c0de86fe:	2d7f      	cmp	r5, #127	; 0x7f
c0de8700:	bf28      	it	cs
c0de8702:	257f      	movcs	r5, #127	; 0x7f
c0de8704:	b3bc      	cbz	r4, c0de8776 <ux_layout_paging_prepro_common+0xfe>
c0de8706:	4620      	mov	r0, r4
c0de8708:	f7fd f8d4 	bl	c0de58b4 <pic>
c0de870c:	e037      	b.n	c0de877e <ux_layout_paging_prepro_common+0x106>
c0de870e:	f7ff fcf5 	bl	c0de80fc <ux_flow_is_first>
c0de8712:	2800      	cmp	r0, #0
c0de8714:	d052      	beq.n	c0de87bc <ux_layout_paging_prepro_common+0x144>
c0de8716:	eb09 0008 	add.w	r0, r9, r8
c0de871a:	6840      	ldr	r0, [r0, #4]
c0de871c:	b158      	cbz	r0, c0de8736 <ux_layout_paging_prepro_common+0xbe>
c0de871e:	e04d      	b.n	c0de87bc <ux_layout_paging_prepro_common+0x144>
c0de8720:	f7ff fd1a 	bl	c0de8158 <ux_flow_is_last>
c0de8724:	2800      	cmp	r0, #0
c0de8726:	d049      	beq.n	c0de87bc <ux_layout_paging_prepro_common+0x144>
c0de8728:	eb09 0008 	add.w	r0, r9, r8
c0de872c:	e9d0 0101 	ldrd	r0, r1, [r0, #4]
c0de8730:	3901      	subs	r1, #1
c0de8732:	4288      	cmp	r0, r1
c0de8734:	d142      	bne.n	c0de87bc <ux_layout_paging_prepro_common+0x144>
c0de8736:	2000      	movs	r0, #0
c0de8738:	e043      	b.n	c0de87c2 <ux_layout_paging_prepro_common+0x14a>
c0de873a:	eb09 0008 	add.w	r0, r9, r8
c0de873e:	e9d0 1601 	ldrd	r1, r6, [r0, #4]
c0de8742:	4a25      	ldr	r2, [pc, #148]	; (c0de87d8 <ux_layout_paging_prepro_common+0x160>)
c0de8744:	1c4b      	adds	r3, r1, #1
c0de8746:	3028      	adds	r0, #40	; 0x28
c0de8748:	447a      	add	r2, pc
c0de874a:	2180      	movs	r1, #128	; 0x80
c0de874c:	9600      	str	r6, [sp, #0]
c0de874e:	f7fb fb59 	bl	c0de3e04 <snprintf>
c0de8752:	eb09 0008 	add.w	r0, r9, r8
c0de8756:	491d      	ldr	r1, [pc, #116]	; (c0de87cc <ux_layout_paging_prepro_common+0x154>)
c0de8758:	7b02      	ldrb	r2, [r0, #12]
c0de875a:	3102      	adds	r1, #2
c0de875c:	2aef      	cmp	r2, #239	; 0xef
c0de875e:	bf84      	itt	hi
c0de8760:	f248 0108 	movwhi	r1, #32776	; 0x8008
c0de8764:	f6cf 71ff 	movthi	r1, #65535	; 0xffff
c0de8768:	f8a0 10c0 	strh.w	r1, [r0, #192]	; 0xc0
c0de876c:	f100 0128 	add.w	r1, r0, #40	; 0x28
c0de8770:	f8c0 10c4 	str.w	r1, [r0, #196]	; 0xc4
c0de8774:	e022      	b.n	c0de87bc <ux_layout_paging_prepro_common+0x144>
c0de8776:	eb09 0008 	add.w	r0, r9, r8
c0de877a:	f8d0 010c 	ldr.w	r0, [r0, #268]	; 0x10c
c0de877e:	eb09 0708 	add.w	r7, r9, r8
c0de8782:	eb07 0146 	add.w	r1, r7, r6, lsl #1
c0de8786:	89c9      	ldrh	r1, [r1, #14]
c0de8788:	4a14      	ldr	r2, [pc, #80]	; (c0de87dc <ux_layout_paging_prepro_common+0x164>)
c0de878a:	f107 0428 	add.w	r4, r7, #40	; 0x28
c0de878e:	1846      	adds	r6, r0, r1
c0de8790:	447a      	add	r2, pc
c0de8792:	4620      	mov	r0, r4
c0de8794:	2180      	movs	r1, #128	; 0x80
c0de8796:	462b      	mov	r3, r5
c0de8798:	9600      	str	r6, [sp, #0]
c0de879a:	f7fb fb33 	bl	c0de3e04 <snprintf>
c0de879e:	7b38      	ldrb	r0, [r7, #12]
c0de87a0:	490a      	ldr	r1, [pc, #40]	; (c0de87cc <ux_layout_paging_prepro_common+0x154>)
c0de87a2:	f000 000f 	and.w	r0, r0, #15
c0de87a6:	3102      	adds	r1, #2
c0de87a8:	f8c7 40c4 	str.w	r4, [r7, #196]	; 0xc4
c0de87ac:	280f      	cmp	r0, #15
c0de87ae:	bf04      	itt	eq
c0de87b0:	f248 0108 	movweq	r1, #32776	; 0x8008
c0de87b4:	f6cf 71ff 	movteq	r1, #65535	; 0xffff
c0de87b8:	f8a7 10c0 	strh.w	r1, [r7, #192]	; 0xc0
c0de87bc:	eb09 0008 	add.w	r0, r9, r8
c0de87c0:	30a8      	adds	r0, #168	; 0xa8
c0de87c2:	b002      	add	sp, #8
c0de87c4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
c0de87c8:	00006584 	.word	0x00006584
c0de87cc:	ffff8008 	.word	0xffff8008
c0de87d0:	0000144c 	.word	0x0000144c
c0de87d4:	00001588 	.word	0x00001588
c0de87d8:	000019a5 	.word	0x000019a5
c0de87dc:	00001468 	.word	0x00001468

c0de87e0 <ux_layout_paging_redisplay_common>:
c0de87e0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
c0de87e4:	460d      	mov	r5, r1
c0de87e6:	4914      	ldr	r1, [pc, #80]	; (c0de8838 <ux_layout_paging_redisplay_common+0x58>)
c0de87e8:	4690      	mov	r8, r2
c0de87ea:	4606      	mov	r6, r0
c0de87ec:	eb09 0201 	add.w	r2, r9, r1
c0de87f0:	eb00 00c0 	add.w	r0, r0, r0, lsl #3
c0de87f4:	eb02 0780 	add.w	r7, r2, r0, lsl #2
c0de87f8:	2007      	movs	r0, #7
c0de87fa:	4910      	ldr	r1, [pc, #64]	; (c0de883c <ux_layout_paging_redisplay_common+0x5c>)
c0de87fc:	f887 00d0 	strb.w	r0, [r7, #208]	; 0xd0
c0de8800:	2001      	movs	r0, #1
c0de8802:	f887 00c9 	strb.w	r0, [r7, #201]	; 0xc9
c0de8806:	7b10      	ldrb	r0, [r2, #12]
c0de8808:	4479      	add	r1, pc
c0de880a:	f8c7 10cc 	str.w	r1, [r7, #204]	; 0xcc
c0de880e:	f852 1f04 	ldr.w	r1, [r2, #4]!
c0de8812:	0700      	lsls	r0, r0, #28
c0de8814:	461c      	mov	r4, r3
c0de8816:	f04f 0308 	mov.w	r3, #8
c0de881a:	4628      	mov	r0, r5
c0de881c:	bf08      	it	eq
c0de881e:	230a      	moveq	r3, #10
c0de8820:	f000 f8e6 	bl	c0de89f0 <ux_layout_paging_compute>
c0de8824:	f8c7 40d8 	str.w	r4, [r7, #216]	; 0xd8
c0de8828:	4630      	mov	r0, r6
c0de882a:	f8c7 80dc 	str.w	r8, [r7, #220]	; 0xdc
c0de882e:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
c0de8832:	f000 bab3 	b.w	c0de8d9c <ux_stack_display>
c0de8836:	bf00      	nop
c0de8838:	00006584 	.word	0x00006584
c0de883c:	0000440c 	.word	0x0000440c

c0de8840 <ux_layout_paging_redisplay_by_addr>:
c0de8840:	b510      	push	{r4, lr}
c0de8842:	4604      	mov	r4, r0
c0de8844:	f7ff feb4 	bl	c0de85b0 <ux_stack_get_current_step_params>
c0de8848:	b148      	cbz	r0, c0de885e <ux_layout_paging_redisplay_by_addr+0x1e>
c0de884a:	6841      	ldr	r1, [r0, #4]
c0de884c:	4a04      	ldr	r2, [pc, #16]	; (c0de8860 <ux_layout_paging_redisplay_by_addr+0x20>)
c0de884e:	4b05      	ldr	r3, [pc, #20]	; (c0de8864 <ux_layout_paging_redisplay_by_addr+0x24>)
c0de8850:	447a      	add	r2, pc
c0de8852:	447b      	add	r3, pc
c0de8854:	4620      	mov	r0, r4
c0de8856:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de885a:	f7ff bfc1 	b.w	c0de87e0 <ux_layout_paging_redisplay_common>
c0de885e:	bd10      	pop	{r4, pc}
c0de8860:	00000015 	.word	0x00000015
c0de8864:	00000093 	.word	0x00000093

c0de8868 <ux_layout_paging_button_callback_by_addr>:
c0de8868:	b580      	push	{r7, lr}
c0de886a:	491b      	ldr	r1, [pc, #108]	; (c0de88d8 <ux_layout_paging_button_callback_by_addr+0x70>)
c0de886c:	4288      	cmp	r0, r1
c0de886e:	d00c      	beq.n	c0de888a <ux_layout_paging_button_callback_by_addr+0x22>
c0de8870:	491a      	ldr	r1, [pc, #104]	; (c0de88dc <ux_layout_paging_button_callback_by_addr+0x74>)
c0de8872:	4288      	cmp	r0, r1
c0de8874:	d016      	beq.n	c0de88a4 <ux_layout_paging_button_callback_by_addr+0x3c>
c0de8876:	491a      	ldr	r1, [pc, #104]	; (c0de88e0 <ux_layout_paging_button_callback_by_addr+0x78>)
c0de8878:	4288      	cmp	r0, r1
c0de887a:	d12a      	bne.n	c0de88d2 <ux_layout_paging_button_callback_by_addr+0x6a>
c0de887c:	4819      	ldr	r0, [pc, #100]	; (c0de88e4 <ux_layout_paging_button_callback_by_addr+0x7c>)
c0de887e:	eb09 0100 	add.w	r1, r9, r0
c0de8882:	6849      	ldr	r1, [r1, #4]
c0de8884:	b319      	cbz	r1, c0de88ce <ux_layout_paging_button_callback_by_addr+0x66>
c0de8886:	3901      	subs	r1, #1
c0de8888:	e018      	b.n	c0de88bc <ux_layout_paging_button_callback_by_addr+0x54>
c0de888a:	4816      	ldr	r0, [pc, #88]	; (c0de88e4 <ux_layout_paging_button_callback_by_addr+0x7c>)
c0de888c:	eb09 0100 	add.w	r1, r9, r0
c0de8890:	6889      	ldr	r1, [r1, #8]
c0de8892:	b121      	cbz	r1, c0de889e <ux_layout_paging_button_callback_by_addr+0x36>
c0de8894:	4448      	add	r0, r9
c0de8896:	6840      	ldr	r0, [r0, #4]
c0de8898:	3901      	subs	r1, #1
c0de889a:	4281      	cmp	r1, r0
c0de889c:	d119      	bne.n	c0de88d2 <ux_layout_paging_button_callback_by_addr+0x6a>
c0de889e:	f7ff fd93 	bl	c0de83c8 <ux_flow_validate>
c0de88a2:	e016      	b.n	c0de88d2 <ux_layout_paging_button_callback_by_addr+0x6a>
c0de88a4:	480f      	ldr	r0, [pc, #60]	; (c0de88e4 <ux_layout_paging_button_callback_by_addr+0x7c>)
c0de88a6:	eb09 0100 	add.w	r1, r9, r0
c0de88aa:	e9d1 1201 	ldrd	r1, r2, [r1, #4]
c0de88ae:	3a01      	subs	r2, #1
c0de88b0:	4291      	cmp	r1, r2
c0de88b2:	d102      	bne.n	c0de88ba <ux_layout_paging_button_callback_by_addr+0x52>
c0de88b4:	f7ff fcfe 	bl	c0de82b4 <ux_flow_next>
c0de88b8:	e00b      	b.n	c0de88d2 <ux_layout_paging_button_callback_by_addr+0x6a>
c0de88ba:	3101      	adds	r1, #1
c0de88bc:	eb09 0200 	add.w	r2, r9, r0
c0de88c0:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de88c4:	6051      	str	r1, [r2, #4]
c0de88c6:	3801      	subs	r0, #1
c0de88c8:	f7ff ffba 	bl	c0de8840 <ux_layout_paging_redisplay_by_addr>
c0de88cc:	e001      	b.n	c0de88d2 <ux_layout_paging_button_callback_by_addr+0x6a>
c0de88ce:	f7ff fcf5 	bl	c0de82bc <ux_flow_prev>
c0de88d2:	2000      	movs	r0, #0
c0de88d4:	bd80      	pop	{r7, pc}
c0de88d6:	bf00      	nop
c0de88d8:	80000003 	.word	0x80000003
c0de88dc:	80000002 	.word	0x80000002
c0de88e0:	80000001 	.word	0x80000001
c0de88e4:	00006584 	.word	0x00006584

c0de88e8 <ux_layout_paging_prepro_by_addr>:
c0de88e8:	b510      	push	{r4, lr}
c0de88ea:	4604      	mov	r4, r0
c0de88ec:	f7ff fe60 	bl	c0de85b0 <ux_stack_get_current_step_params>
c0de88f0:	b130      	cbz	r0, c0de8900 <ux_layout_paging_prepro_by_addr+0x18>
c0de88f2:	e9d0 1200 	ldrd	r1, r2, [r0]
c0de88f6:	4620      	mov	r0, r4
c0de88f8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de88fc:	f7ff bebc 	b.w	c0de8678 <ux_layout_paging_prepro_common>
c0de8900:	2000      	movs	r0, #0
c0de8902:	bd10      	pop	{r4, pc}

c0de8904 <ux_layout_paging_init_common>:
c0de8904:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de8908:	b081      	sub	sp, #4
c0de890a:	f8df 809c 	ldr.w	r8, [pc, #156]	; c0de89a8 <ux_layout_paging_init_common+0xa4>
c0de890e:	460d      	mov	r5, r1
c0de8910:	eb09 0108 	add.w	r1, r9, r8
c0de8914:	7b0e      	ldrb	r6, [r1, #12]
c0de8916:	4692      	mov	sl, r2
c0de8918:	4604      	mov	r4, r0
c0de891a:	f7ff fc47 	bl	c0de81ac <ux_flow_direction>
c0de891e:	2801      	cmp	r0, #1
c0de8920:	d00c      	beq.n	c0de893c <ux_layout_paging_init_common+0x38>
c0de8922:	3001      	adds	r0, #1
c0de8924:	d110      	bne.n	c0de8948 <ux_layout_paging_init_common+0x44>
c0de8926:	eb09 0708 	add.w	r7, r9, r8
c0de892a:	f107 0008 	add.w	r0, r7, #8
c0de892e:	2114      	movs	r1, #20
c0de8930:	f001 f815 	bl	c0de995e <__aeabi_memclr>
c0de8934:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
c0de8938:	6078      	str	r0, [r7, #4]
c0de893a:	e005      	b.n	c0de8948 <ux_layout_paging_init_common+0x44>
c0de893c:	eb09 0008 	add.w	r0, r9, r8
c0de8940:	3004      	adds	r0, #4
c0de8942:	2118      	movs	r1, #24
c0de8944:	f001 f80b 	bl	c0de995e <__aeabi_memclr>
c0de8948:	eb09 0708 	add.w	r7, r9, r8
c0de894c:	4620      	mov	r0, r4
c0de894e:	733e      	strb	r6, [r7, #12]
c0de8950:	1d3e      	adds	r6, r7, #4
c0de8952:	f000 fa53 	bl	c0de8dfc <ux_stack_init>
c0de8956:	f8d7 010c 	ldr.w	r0, [r7, #268]	; 0x10c
c0de895a:	2308      	movs	r3, #8
c0de895c:	4328      	orrs	r0, r5
c0de895e:	4813      	ldr	r0, [pc, #76]	; (c0de89ac <ux_layout_paging_init_common+0xa8>)
c0de8960:	7b39      	ldrb	r1, [r7, #12]
c0de8962:	4478      	add	r0, pc
c0de8964:	bf18      	it	ne
c0de8966:	4628      	movne	r0, r5
c0de8968:	0709      	lsls	r1, r1, #28
c0de896a:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
c0de896e:	4632      	mov	r2, r6
c0de8970:	bf08      	it	eq
c0de8972:	230a      	moveq	r3, #10
c0de8974:	f000 f83c 	bl	c0de89f0 <ux_layout_paging_compute>
c0de8978:	60b8      	str	r0, [r7, #8]
c0de897a:	b148      	cbz	r0, c0de8990 <ux_layout_paging_init_common+0x8c>
c0de897c:	eb09 0108 	add.w	r1, r9, r8
c0de8980:	6849      	ldr	r1, [r1, #4]
c0de8982:	3801      	subs	r0, #1
c0de8984:	4281      	cmp	r1, r0
c0de8986:	bf84      	itt	hi
c0de8988:	eb09 0108 	addhi.w	r1, r9, r8
c0de898c:	6048      	strhi	r0, [r1, #4]
c0de898e:	e005      	b.n	c0de899c <ux_layout_paging_init_common+0x98>
c0de8990:	eb09 0008 	add.w	r0, r9, r8
c0de8994:	3004      	adds	r0, #4
c0de8996:	2118      	movs	r1, #24
c0de8998:	f000 ffe1 	bl	c0de995e <__aeabi_memclr>
c0de899c:	4620      	mov	r0, r4
c0de899e:	4651      	mov	r1, sl
c0de89a0:	b001      	add	sp, #4
c0de89a2:	e8bd 45f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de89a6:	4708      	bx	r1
c0de89a8:	00006584 	.word	0x00006584
c0de89ac:	000016bd 	.word	0x000016bd

c0de89b0 <ux_layout_paging_reset>:
c0de89b0:	b580      	push	{r7, lr}
c0de89b2:	4803      	ldr	r0, [pc, #12]	; (c0de89c0 <ux_layout_paging_reset+0x10>)
c0de89b4:	2118      	movs	r1, #24
c0de89b6:	4448      	add	r0, r9
c0de89b8:	3004      	adds	r0, #4
c0de89ba:	f000 ffd0 	bl	c0de995e <__aeabi_memclr>
c0de89be:	bd80      	pop	{r7, pc}
c0de89c0:	00006584 	.word	0x00006584

c0de89c4 <ux_layout_bn_paging_init>:
c0de89c4:	b510      	push	{r4, lr}
c0de89c6:	4908      	ldr	r1, [pc, #32]	; (c0de89e8 <ux_layout_bn_paging_init+0x24>)
c0de89c8:	4604      	mov	r4, r0
c0de89ca:	eb09 0001 	add.w	r0, r9, r1
c0de89ce:	21f0      	movs	r1, #240	; 0xf0
c0de89d0:	7301      	strb	r1, [r0, #12]
c0de89d2:	4620      	mov	r0, r4
c0de89d4:	f7ff fdd0 	bl	c0de8578 <ux_stack_get_step_params>
c0de89d8:	6841      	ldr	r1, [r0, #4]
c0de89da:	4a04      	ldr	r2, [pc, #16]	; (c0de89ec <ux_layout_bn_paging_init+0x28>)
c0de89dc:	4620      	mov	r0, r4
c0de89de:	447a      	add	r2, pc
c0de89e0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de89e4:	f7ff bf8e 	b.w	c0de8904 <ux_layout_paging_init_common>
c0de89e8:	00006584 	.word	0x00006584
c0de89ec:	fffffe5f 	.word	0xfffffe5f

c0de89f0 <ux_layout_paging_compute>:
c0de89f0:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de89f4:	b088      	sub	sp, #32
c0de89f6:	460e      	mov	r6, r1
c0de89f8:	4607      	mov	r7, r0
c0de89fa:	f102 000a 	add.w	r0, r2, #10
c0de89fe:	210c      	movs	r1, #12
c0de8a00:	9307      	str	r3, [sp, #28]
c0de8a02:	4614      	mov	r4, r2
c0de8a04:	f000 ffab 	bl	c0de995e <__aeabi_memclr>
c0de8a08:	1c70      	adds	r0, r6, #1
c0de8a0a:	9004      	str	r0, [sp, #16]
c0de8a0c:	d004      	beq.n	c0de8a18 <ux_layout_paging_compute+0x28>
c0de8a0e:	6860      	ldr	r0, [r4, #4]
c0de8a10:	42b0      	cmp	r0, r6
c0de8a12:	d801      	bhi.n	c0de8a18 <ux_layout_paging_compute+0x28>
c0de8a14:	2000      	movs	r0, #0
c0de8a16:	e095      	b.n	c0de8b44 <ux_layout_paging_compute+0x154>
c0de8a18:	b127      	cbz	r7, c0de8a24 <ux_layout_paging_compute+0x34>
c0de8a1a:	4638      	mov	r0, r7
c0de8a1c:	f7fc ff4a 	bl	c0de58b4 <pic>
c0de8a20:	4607      	mov	r7, r0
c0de8a22:	e003      	b.n	c0de8a2c <ux_layout_paging_compute+0x3c>
c0de8a24:	4849      	ldr	r0, [pc, #292]	; (c0de8b4c <ux_layout_paging_compute+0x15c>)
c0de8a26:	4448      	add	r0, r9
c0de8a28:	f8d0 710c 	ldr.w	r7, [r0, #268]	; 0x10c
c0de8a2c:	4638      	mov	r0, r7
c0de8a2e:	f000 ffff 	bl	c0de9a30 <strlen>
c0de8a32:	2801      	cmp	r0, #1
c0de8a34:	f2c0 8083 	blt.w	c0de8b3e <ux_layout_paging_compute+0x14e>
c0de8a38:	eb07 0b00 	add.w	fp, r7, r0
c0de8a3c:	2200      	movs	r2, #0
c0de8a3e:	2300      	movs	r3, #0
c0de8a40:	2500      	movs	r5, #0
c0de8a42:	9402      	str	r4, [sp, #8]
c0de8a44:	4638      	mov	r0, r7
c0de8a46:	9701      	str	r7, [sp, #4]
c0de8a48:	9603      	str	r6, [sp, #12]
c0de8a4a:	bf00      	nop
c0de8a4c:	2600      	movs	r6, #0
c0de8a4e:	46ba      	mov	sl, r7
c0de8a50:	e9cd 3205 	strd	r3, r2, [sp, #20]
c0de8a54:	eb07 0806 	add.w	r8, r7, r6
c0de8a58:	45d8      	cmp	r8, fp
c0de8a5a:	d21d      	bcs.n	c0de8a98 <ux_layout_paging_compute+0xa8>
c0de8a5c:	1c74      	adds	r4, r6, #1
c0de8a5e:	9807      	ldr	r0, [sp, #28]
c0de8a60:	b2e3      	uxtb	r3, r4
c0de8a62:	2100      	movs	r1, #0
c0de8a64:	463a      	mov	r2, r7
c0de8a66:	9500      	str	r5, [sp, #0]
c0de8a68:	f7f8 fde8 	bl	c0de163c <bagl_compute_line_width>
c0de8a6c:	2872      	cmp	r0, #114	; 0x72
c0de8a6e:	d813      	bhi.n	c0de8a98 <ux_layout_paging_compute+0xa8>
c0de8a70:	f898 0000 	ldrb.w	r0, [r8]
c0de8a74:	282c      	cmp	r0, #44	; 0x2c
c0de8a76:	dc05      	bgt.n	c0de8a84 <ux_layout_paging_compute+0x94>
c0de8a78:	280a      	cmp	r0, #10
c0de8a7a:	d007      	beq.n	c0de8a8c <ux_layout_paging_compute+0x9c>
c0de8a7c:	2820      	cmp	r0, #32
c0de8a7e:	bf08      	it	eq
c0de8a80:	46c2      	moveq	sl, r8
c0de8a82:	e004      	b.n	c0de8a8e <ux_layout_paging_compute+0x9e>
c0de8a84:	285f      	cmp	r0, #95	; 0x5f
c0de8a86:	d001      	beq.n	c0de8a8c <ux_layout_paging_compute+0x9c>
c0de8a88:	282d      	cmp	r0, #45	; 0x2d
c0de8a8a:	d100      	bne.n	c0de8a8e <ux_layout_paging_compute+0x9e>
c0de8a8c:	46c2      	mov	sl, r8
c0de8a8e:	280a      	cmp	r0, #10
c0de8a90:	4626      	mov	r6, r4
c0de8a92:	d1df      	bne.n	c0de8a54 <ux_layout_paging_compute+0x64>
c0de8a94:	e001      	b.n	c0de8a9a <ux_layout_paging_compute+0xaa>
c0de8a96:	bf00      	nop
c0de8a98:	4634      	mov	r4, r6
c0de8a9a:	1938      	adds	r0, r7, r4
c0de8a9c:	4558      	cmp	r0, fp
c0de8a9e:	d20f      	bcs.n	c0de8ac0 <ux_layout_paging_compute+0xd0>
c0de8aa0:	b174      	cbz	r4, c0de8ac0 <ux_layout_paging_compute+0xd0>
c0de8aa2:	45ba      	cmp	sl, r7
c0de8aa4:	d00c      	beq.n	c0de8ac0 <ux_layout_paging_compute+0xd0>
c0de8aa6:	f810 1c01 	ldrb.w	r1, [r0, #-1]
c0de8aaa:	292c      	cmp	r1, #44	; 0x2c
c0de8aac:	dc2f      	bgt.n	c0de8b0e <ux_layout_paging_compute+0x11e>
c0de8aae:	9e03      	ldr	r6, [sp, #12]
c0de8ab0:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
c0de8ab4:	290a      	cmp	r1, #10
c0de8ab6:	d006      	beq.n	c0de8ac6 <ux_layout_paging_compute+0xd6>
c0de8ab8:	2920      	cmp	r1, #32
c0de8aba:	d004      	beq.n	c0de8ac6 <ux_layout_paging_compute+0xd6>
c0de8abc:	e02e      	b.n	c0de8b1c <ux_layout_paging_compute+0x12c>
c0de8abe:	bf00      	nop
c0de8ac0:	9e03      	ldr	r6, [sp, #12]
c0de8ac2:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
c0de8ac6:	9804      	ldr	r0, [sp, #16]
c0de8ac8:	b170      	cbz	r0, c0de8ae8 <ux_layout_paging_compute+0xf8>
c0de8aca:	42b2      	cmp	r2, r6
c0de8acc:	d10c      	bne.n	c0de8ae8 <ux_layout_paging_compute+0xf8>
c0de8ace:	9802      	ldr	r0, [sp, #8]
c0de8ad0:	6840      	ldr	r0, [r0, #4]
c0de8ad2:	42b0      	cmp	r0, r6
c0de8ad4:	d908      	bls.n	c0de8ae8 <ux_layout_paging_compute+0xf8>
c0de8ad6:	9801      	ldr	r0, [sp, #4]
c0de8ad8:	9902      	ldr	r1, [sp, #8]
c0de8ada:	1a38      	subs	r0, r7, r0
c0de8adc:	eb01 0143 	add.w	r1, r1, r3, lsl #1
c0de8ae0:	2b01      	cmp	r3, #1
c0de8ae2:	8148      	strh	r0, [r1, #10]
c0de8ae4:	820c      	strh	r4, [r1, #16]
c0de8ae6:	d82a      	bhi.n	c0de8b3e <ux_layout_paging_compute+0x14e>
c0de8ae8:	3301      	adds	r3, #1
c0de8aea:	4427      	add	r7, r4
c0de8aec:	2b02      	cmp	r3, #2
c0de8aee:	f04f 0000 	mov.w	r0, #0
c0de8af2:	bf88      	it	hi
c0de8af4:	2001      	movhi	r0, #1
c0de8af6:	455f      	cmp	r7, fp
c0de8af8:	f04f 0100 	mov.w	r1, #0
c0de8afc:	bf38      	it	cc
c0de8afe:	2101      	movcc	r1, #1
c0de8b00:	4008      	ands	r0, r1
c0de8b02:	bf18      	it	ne
c0de8b04:	2300      	movne	r3, #0
c0de8b06:	455f      	cmp	r7, fp
c0de8b08:	4402      	add	r2, r0
c0de8b0a:	d39f      	bcc.n	c0de8a4c <ux_layout_paging_compute+0x5c>
c0de8b0c:	e019      	b.n	c0de8b42 <ux_layout_paging_compute+0x152>
c0de8b0e:	9e03      	ldr	r6, [sp, #12]
c0de8b10:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
c0de8b14:	292d      	cmp	r1, #45	; 0x2d
c0de8b16:	d0d6      	beq.n	c0de8ac6 <ux_layout_paging_compute+0xd6>
c0de8b18:	295f      	cmp	r1, #95	; 0x5f
c0de8b1a:	d0d4      	beq.n	c0de8ac6 <ux_layout_paging_compute+0xd6>
c0de8b1c:	7800      	ldrb	r0, [r0, #0]
c0de8b1e:	282c      	cmp	r0, #44	; 0x2c
c0de8b20:	dc06      	bgt.n	c0de8b30 <ux_layout_paging_compute+0x140>
c0de8b22:	280a      	cmp	r0, #10
c0de8b24:	d0cf      	beq.n	c0de8ac6 <ux_layout_paging_compute+0xd6>
c0de8b26:	2820      	cmp	r0, #32
c0de8b28:	bf18      	it	ne
c0de8b2a:	ebaa 0407 	subne.w	r4, sl, r7
c0de8b2e:	e7ca      	b.n	c0de8ac6 <ux_layout_paging_compute+0xd6>
c0de8b30:	282d      	cmp	r0, #45	; 0x2d
c0de8b32:	d0c8      	beq.n	c0de8ac6 <ux_layout_paging_compute+0xd6>
c0de8b34:	285f      	cmp	r0, #95	; 0x5f
c0de8b36:	d0c6      	beq.n	c0de8ac6 <ux_layout_paging_compute+0xd6>
c0de8b38:	ebaa 0407 	sub.w	r4, sl, r7
c0de8b3c:	e7c3      	b.n	c0de8ac6 <ux_layout_paging_compute+0xd6>
c0de8b3e:	2001      	movs	r0, #1
c0de8b40:	e000      	b.n	c0de8b44 <ux_layout_paging_compute+0x154>
c0de8b42:	1c50      	adds	r0, r2, #1
c0de8b44:	b008      	add	sp, #32
c0de8b46:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de8b4a:	bf00      	nop
c0de8b4c:	00006584 	.word	0x00006584

c0de8b50 <ux_layout_pb_prepro>:
c0de8b50:	b570      	push	{r4, r5, r6, lr}
c0de8b52:	4605      	mov	r5, r0
c0de8b54:	f7ff fd2c 	bl	c0de85b0 <ux_stack_get_current_step_params>
c0de8b58:	4e13      	ldr	r6, [pc, #76]	; (c0de8ba8 <ux_layout_pb_prepro+0x58>)
c0de8b5a:	4604      	mov	r4, r0
c0de8b5c:	eb09 0006 	add.w	r0, r9, r6
c0de8b60:	30a8      	adds	r0, #168	; 0xa8
c0de8b62:	4629      	mov	r1, r5
c0de8b64:	2220      	movs	r2, #32
c0de8b66:	f000 feff 	bl	c0de9968 <__aeabi_memmove>
c0de8b6a:	7868      	ldrb	r0, [r5, #1]
c0de8b6c:	280f      	cmp	r0, #15
c0de8b6e:	dc06      	bgt.n	c0de8b7e <ux_layout_pb_prepro+0x2e>
c0de8b70:	2801      	cmp	r0, #1
c0de8b72:	d00a      	beq.n	c0de8b8a <ux_layout_pb_prepro+0x3a>
c0de8b74:	2802      	cmp	r0, #2
c0de8b76:	d112      	bne.n	c0de8b9e <ux_layout_pb_prepro+0x4e>
c0de8b78:	f7ff faee 	bl	c0de8158 <ux_flow_is_last>
c0de8b7c:	e007      	b.n	c0de8b8e <ux_layout_pb_prepro+0x3e>
c0de8b7e:	2810      	cmp	r0, #16
c0de8b80:	d008      	beq.n	c0de8b94 <ux_layout_pb_prepro+0x44>
c0de8b82:	2811      	cmp	r0, #17
c0de8b84:	d10b      	bne.n	c0de8b9e <ux_layout_pb_prepro+0x4e>
c0de8b86:	6860      	ldr	r0, [r4, #4]
c0de8b88:	e005      	b.n	c0de8b96 <ux_layout_pb_prepro+0x46>
c0de8b8a:	f7ff fab7 	bl	c0de80fc <ux_flow_is_first>
c0de8b8e:	b130      	cbz	r0, c0de8b9e <ux_layout_pb_prepro+0x4e>
c0de8b90:	2000      	movs	r0, #0
c0de8b92:	bd70      	pop	{r4, r5, r6, pc}
c0de8b94:	6820      	ldr	r0, [r4, #0]
c0de8b96:	eb09 0106 	add.w	r1, r9, r6
c0de8b9a:	f8c1 00c4 	str.w	r0, [r1, #196]	; 0xc4
c0de8b9e:	eb09 0006 	add.w	r0, r9, r6
c0de8ba2:	30a8      	adds	r0, #168	; 0xa8
c0de8ba4:	bd70      	pop	{r4, r5, r6, pc}
c0de8ba6:	bf00      	nop
c0de8ba8:	00006584 	.word	0x00006584

c0de8bac <ux_layout_pb_init>:
c0de8bac:	b510      	push	{r4, lr}
c0de8bae:	4604      	mov	r4, r0
c0de8bb0:	f000 f924 	bl	c0de8dfc <ux_stack_init>
c0de8bb4:	480e      	ldr	r0, [pc, #56]	; (c0de8bf0 <ux_layout_pb_init+0x44>)
c0de8bb6:	eb04 01c4 	add.w	r1, r4, r4, lsl #3
c0de8bba:	4448      	add	r0, r9
c0de8bbc:	4a0d      	ldr	r2, [pc, #52]	; (c0de8bf4 <ux_layout_pb_init+0x48>)
c0de8bbe:	eb00 0181 	add.w	r1, r0, r1, lsl #2
c0de8bc2:	2005      	movs	r0, #5
c0de8bc4:	447a      	add	r2, pc
c0de8bc6:	f881 00d0 	strb.w	r0, [r1, #208]	; 0xd0
c0de8bca:	2001      	movs	r0, #1
c0de8bcc:	f8c1 20cc 	str.w	r2, [r1, #204]	; 0xcc
c0de8bd0:	f881 00c9 	strb.w	r0, [r1, #201]	; 0xc9
c0de8bd4:	4808      	ldr	r0, [pc, #32]	; (c0de8bf8 <ux_layout_pb_init+0x4c>)
c0de8bd6:	4a09      	ldr	r2, [pc, #36]	; (c0de8bfc <ux_layout_pb_init+0x50>)
c0de8bd8:	4478      	add	r0, pc
c0de8bda:	447a      	add	r2, pc
c0de8bdc:	f8c1 00d8 	str.w	r0, [r1, #216]	; 0xd8
c0de8be0:	4620      	mov	r0, r4
c0de8be2:	f8c1 20dc 	str.w	r2, [r1, #220]	; 0xdc
c0de8be6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de8bea:	f000 b8d7 	b.w	c0de8d9c <ux_stack_display>
c0de8bee:	bf00      	nop
c0de8bf0:	00006584 	.word	0x00006584
c0de8bf4:	00004130 	.word	0x00004130
c0de8bf8:	ffffff75 	.word	0xffffff75
c0de8bfc:	fffff963 	.word	0xfffff963

c0de8c00 <ux_layout_pbb_prepro>:
c0de8c00:	b570      	push	{r4, r5, r6, lr}
c0de8c02:	4605      	mov	r5, r0
c0de8c04:	f7ff fcd4 	bl	c0de85b0 <ux_stack_get_current_step_params>
c0de8c08:	4e19      	ldr	r6, [pc, #100]	; (c0de8c70 <ux_layout_pbb_prepro+0x70>)
c0de8c0a:	4604      	mov	r4, r0
c0de8c0c:	eb09 0006 	add.w	r0, r9, r6
c0de8c10:	30a8      	adds	r0, #168	; 0xa8
c0de8c12:	4629      	mov	r1, r5
c0de8c14:	2220      	movs	r2, #32
c0de8c16:	f000 fea7 	bl	c0de9968 <__aeabi_memmove>
c0de8c1a:	7868      	ldrb	r0, [r5, #1]
c0de8c1c:	280f      	cmp	r0, #15
c0de8c1e:	dc0b      	bgt.n	c0de8c38 <ux_layout_pbb_prepro+0x38>
c0de8c20:	2801      	cmp	r0, #1
c0de8c22:	d018      	beq.n	c0de8c56 <ux_layout_pbb_prepro+0x56>
c0de8c24:	2802      	cmp	r0, #2
c0de8c26:	d019      	beq.n	c0de8c5c <ux_layout_pbb_prepro+0x5c>
c0de8c28:	280f      	cmp	r0, #15
c0de8c2a:	d11c      	bne.n	c0de8c66 <ux_layout_pbb_prepro+0x66>
c0de8c2c:	6820      	ldr	r0, [r4, #0]
c0de8c2e:	eb09 0106 	add.w	r1, r9, r6
c0de8c32:	f8c1 00c4 	str.w	r0, [r1, #196]	; 0xc4
c0de8c36:	e016      	b.n	c0de8c66 <ux_layout_pbb_prepro+0x66>
c0de8c38:	3810      	subs	r0, #16
c0de8c3a:	2802      	cmp	r0, #2
c0de8c3c:	d213      	bcs.n	c0de8c66 <ux_layout_pbb_prepro+0x66>
c0de8c3e:	eb09 0006 	add.w	r0, r9, r6
c0de8c42:	f890 10a9 	ldrb.w	r1, [r0, #169]	; 0xa9
c0de8c46:	f001 010f 	and.w	r1, r1, #15
c0de8c4a:	eb04 0181 	add.w	r1, r4, r1, lsl #2
c0de8c4e:	6849      	ldr	r1, [r1, #4]
c0de8c50:	f8c0 10c4 	str.w	r1, [r0, #196]	; 0xc4
c0de8c54:	e007      	b.n	c0de8c66 <ux_layout_pbb_prepro+0x66>
c0de8c56:	f7ff fa51 	bl	c0de80fc <ux_flow_is_first>
c0de8c5a:	e001      	b.n	c0de8c60 <ux_layout_pbb_prepro+0x60>
c0de8c5c:	f7ff fa7c 	bl	c0de8158 <ux_flow_is_last>
c0de8c60:	b108      	cbz	r0, c0de8c66 <ux_layout_pbb_prepro+0x66>
c0de8c62:	2000      	movs	r0, #0
c0de8c64:	bd70      	pop	{r4, r5, r6, pc}
c0de8c66:	eb09 0006 	add.w	r0, r9, r6
c0de8c6a:	30a8      	adds	r0, #168	; 0xa8
c0de8c6c:	bd70      	pop	{r4, r5, r6, pc}
c0de8c6e:	bf00      	nop
c0de8c70:	00006584 	.word	0x00006584

c0de8c74 <ux_layout_pbb_init>:
c0de8c74:	b510      	push	{r4, lr}
c0de8c76:	4604      	mov	r4, r0
c0de8c78:	f000 f8c0 	bl	c0de8dfc <ux_stack_init>
c0de8c7c:	480e      	ldr	r0, [pc, #56]	; (c0de8cb8 <ux_layout_pbb_init+0x44>)
c0de8c7e:	eb04 01c4 	add.w	r1, r4, r4, lsl #3
c0de8c82:	4448      	add	r0, r9
c0de8c84:	4a0d      	ldr	r2, [pc, #52]	; (c0de8cbc <ux_layout_pbb_init+0x48>)
c0de8c86:	eb00 0181 	add.w	r1, r0, r1, lsl #2
c0de8c8a:	2006      	movs	r0, #6
c0de8c8c:	447a      	add	r2, pc
c0de8c8e:	f881 00d0 	strb.w	r0, [r1, #208]	; 0xd0
c0de8c92:	2001      	movs	r0, #1
c0de8c94:	f8c1 20cc 	str.w	r2, [r1, #204]	; 0xcc
c0de8c98:	f881 00c9 	strb.w	r0, [r1, #201]	; 0xc9
c0de8c9c:	4808      	ldr	r0, [pc, #32]	; (c0de8cc0 <ux_layout_pbb_init+0x4c>)
c0de8c9e:	4a09      	ldr	r2, [pc, #36]	; (c0de8cc4 <ux_layout_pbb_init+0x50>)
c0de8ca0:	4478      	add	r0, pc
c0de8ca2:	447a      	add	r2, pc
c0de8ca4:	f8c1 00d8 	str.w	r0, [r1, #216]	; 0xd8
c0de8ca8:	4620      	mov	r0, r4
c0de8caa:	f8c1 20dc 	str.w	r2, [r1, #220]	; 0xdc
c0de8cae:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de8cb2:	f000 b873 	b.w	c0de8d9c <ux_stack_display>
c0de8cb6:	bf00      	nop
c0de8cb8:	00006584 	.word	0x00006584
c0de8cbc:	00004108 	.word	0x00004108
c0de8cc0:	ffffff5d 	.word	0xffffff5d
c0de8cc4:	fffff89b 	.word	0xfffff89b

c0de8cc8 <ux_layout_strings_prepro>:
c0de8cc8:	b570      	push	{r4, r5, r6, lr}
c0de8cca:	4605      	mov	r5, r0
c0de8ccc:	f7ff fc70 	bl	c0de85b0 <ux_stack_get_current_step_params>
c0de8cd0:	4e14      	ldr	r6, [pc, #80]	; (c0de8d24 <ux_layout_strings_prepro+0x5c>)
c0de8cd2:	4604      	mov	r4, r0
c0de8cd4:	eb09 0006 	add.w	r0, r9, r6
c0de8cd8:	30a8      	adds	r0, #168	; 0xa8
c0de8cda:	4629      	mov	r1, r5
c0de8cdc:	2220      	movs	r2, #32
c0de8cde:	f000 fe43 	bl	c0de9968 <__aeabi_memmove>
c0de8ce2:	7868      	ldrb	r0, [r5, #1]
c0de8ce4:	2802      	cmp	r0, #2
c0de8ce6:	d004      	beq.n	c0de8cf2 <ux_layout_strings_prepro+0x2a>
c0de8ce8:	2801      	cmp	r0, #1
c0de8cea:	d107      	bne.n	c0de8cfc <ux_layout_strings_prepro+0x34>
c0de8cec:	f7ff fa06 	bl	c0de80fc <ux_flow_is_first>
c0de8cf0:	e001      	b.n	c0de8cf6 <ux_layout_strings_prepro+0x2e>
c0de8cf2:	f7ff fa31 	bl	c0de8158 <ux_flow_is_last>
c0de8cf6:	b180      	cbz	r0, c0de8d1a <ux_layout_strings_prepro+0x52>
c0de8cf8:	2000      	movs	r0, #0
c0de8cfa:	bd70      	pop	{r4, r5, r6, pc}
c0de8cfc:	eb09 0006 	add.w	r0, r9, r6
c0de8d00:	f890 00a9 	ldrb.w	r0, [r0, #169]	; 0xa9
c0de8d04:	f010 0ff0 	tst.w	r0, #240	; 0xf0
c0de8d08:	d007      	beq.n	c0de8d1a <ux_layout_strings_prepro+0x52>
c0de8d0a:	f000 000f 	and.w	r0, r0, #15
c0de8d0e:	f854 0020 	ldr.w	r0, [r4, r0, lsl #2]
c0de8d12:	eb09 0106 	add.w	r1, r9, r6
c0de8d16:	f8c1 00c4 	str.w	r0, [r1, #196]	; 0xc4
c0de8d1a:	eb09 0006 	add.w	r0, r9, r6
c0de8d1e:	30a8      	adds	r0, #168	; 0xa8
c0de8d20:	bd70      	pop	{r4, r5, r6, pc}
c0de8d22:	bf00      	nop
c0de8d24:	00006584 	.word	0x00006584

c0de8d28 <ux_stack_push>:
c0de8d28:	b5b0      	push	{r4, r5, r7, lr}
c0de8d2a:	4c0a      	ldr	r4, [pc, #40]	; (c0de8d54 <ux_stack_push+0x2c>)
c0de8d2c:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de8d30:	b968      	cbnz	r0, c0de8d4e <ux_stack_push+0x26>
c0de8d32:	eb09 0504 	add.w	r5, r9, r4
c0de8d36:	f105 00c8 	add.w	r0, r5, #200	; 0xc8
c0de8d3a:	2124      	movs	r1, #36	; 0x24
c0de8d3c:	f000 fe0f 	bl	c0de995e <__aeabi_memclr>
c0de8d40:	2000      	movs	r0, #0
c0de8d42:	e9c5 0007 	strd	r0, r0, [r5, #28]
c0de8d46:	6268      	str	r0, [r5, #36]	; 0x24
c0de8d48:	2001      	movs	r0, #1
c0de8d4a:	f809 0004 	strb.w	r0, [r9, r4]
c0de8d4e:	3801      	subs	r0, #1
c0de8d50:	bdb0      	pop	{r4, r5, r7, pc}
c0de8d52:	bf00      	nop
c0de8d54:	00006584 	.word	0x00006584

c0de8d58 <ux_stack_redisplay>:
c0de8d58:	b580      	push	{r7, lr}
c0de8d5a:	f7ff fc31 	bl	c0de85c0 <ux_flow_relayout>
c0de8d5e:	b100      	cbz	r0, c0de8d62 <ux_stack_redisplay+0xa>
c0de8d60:	bd80      	pop	{r7, pc}
c0de8d62:	480d      	ldr	r0, [pc, #52]	; (c0de8d98 <ux_stack_redisplay+0x40>)
c0de8d64:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de8d68:	2901      	cmp	r1, #1
c0de8d6a:	d109      	bne.n	c0de8d80 <ux_stack_redisplay+0x28>
c0de8d6c:	eb09 0100 	add.w	r1, r9, r0
c0de8d70:	2200      	movs	r2, #0
c0de8d72:	2000      	movs	r0, #0
c0de8d74:	f8a1 20ca 	strh.w	r2, [r1, #202]	; 0xca
c0de8d78:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de8d7c:	f000 b80e 	b.w	c0de8d9c <ux_stack_display>
c0de8d80:	2900      	cmp	r1, #0
c0de8d82:	d1ed      	bne.n	c0de8d60 <ux_stack_redisplay+0x8>
c0de8d84:	eb09 0100 	add.w	r1, r9, r0
c0de8d88:	7849      	ldrb	r1, [r1, #1]
c0de8d8a:	29aa      	cmp	r1, #170	; 0xaa
c0de8d8c:	bf02      	ittt	eq
c0de8d8e:	4448      	addeq	r0, r9
c0de8d90:	2169      	moveq	r1, #105	; 0x69
c0de8d92:	7041      	strbeq	r1, [r0, #1]
c0de8d94:	bd80      	pop	{r7, pc}
c0de8d96:	bf00      	nop
c0de8d98:	00006584 	.word	0x00006584

c0de8d9c <ux_stack_display>:
c0de8d9c:	b5b0      	push	{r4, r5, r7, lr}
c0de8d9e:	4d16      	ldr	r5, [pc, #88]	; (c0de8df8 <ux_stack_display+0x5c>)
c0de8da0:	4604      	mov	r4, r0
c0de8da2:	f819 1005 	ldrb.w	r1, [r9, r5]
c0de8da6:	b199      	cbz	r1, c0de8dd0 <ux_stack_display+0x34>
c0de8da8:	1c60      	adds	r0, r4, #1
c0de8daa:	4288      	cmp	r0, r1
c0de8dac:	d110      	bne.n	c0de8dd0 <ux_stack_display+0x34>
c0de8dae:	f7fa fc33 	bl	c0de3618 <io_seproxyhal_init_ux>
c0de8db2:	eb09 0005 	add.w	r0, r9, r5
c0de8db6:	eb04 01c4 	add.w	r1, r4, r4, lsl #3
c0de8dba:	eb00 0181 	add.w	r1, r0, r1, lsl #2
c0de8dbe:	2200      	movs	r2, #0
c0de8dc0:	f101 00c8 	add.w	r0, r1, #200	; 0xc8
c0de8dc4:	f8a1 20ca 	strh.w	r2, [r1, #202]	; 0xca
c0de8dc8:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de8dcc:	f000 b826 	b.w	c0de8e1c <ux_stack_display_elements>
c0de8dd0:	2900      	cmp	r1, #0
c0de8dd2:	bf18      	it	ne
c0de8dd4:	2101      	movne	r1, #1
c0de8dd6:	f1b4 30ff 	subs.w	r0, r4, #4294967295	; 0xffffffff
c0de8dda:	bf18      	it	ne
c0de8ddc:	2001      	movne	r0, #1
c0de8dde:	4208      	tst	r0, r1
c0de8de0:	bf18      	it	ne
c0de8de2:	bdb0      	popne	{r4, r5, r7, pc}
c0de8de4:	eb09 0005 	add.w	r0, r9, r5
c0de8de8:	7840      	ldrb	r0, [r0, #1]
c0de8dea:	28aa      	cmp	r0, #170	; 0xaa
c0de8dec:	bf02      	ittt	eq
c0de8dee:	eb09 0005 	addeq.w	r0, r9, r5
c0de8df2:	2169      	moveq	r1, #105	; 0x69
c0de8df4:	7041      	strbeq	r1, [r0, #1]
c0de8df6:	bdb0      	pop	{r4, r5, r7, pc}
c0de8df8:	00006584 	.word	0x00006584

c0de8dfc <ux_stack_init>:
c0de8dfc:	b510      	push	{r4, lr}
c0de8dfe:	4604      	mov	r4, r0
c0de8e00:	f7fa fc0a 	bl	c0de3618 <io_seproxyhal_init_ux>
c0de8e04:	b104      	cbz	r4, c0de8e08 <ux_stack_init+0xc>
c0de8e06:	bd10      	pop	{r4, pc}
c0de8e08:	4803      	ldr	r0, [pc, #12]	; (c0de8e18 <ux_stack_init+0x1c>)
c0de8e0a:	2124      	movs	r1, #36	; 0x24
c0de8e0c:	4448      	add	r0, r9
c0de8e0e:	30c8      	adds	r0, #200	; 0xc8
c0de8e10:	f000 fda5 	bl	c0de995e <__aeabi_memclr>
c0de8e14:	bd10      	pop	{r4, pc}
c0de8e16:	bf00      	nop
c0de8e18:	00006584 	.word	0x00006584

c0de8e1c <ux_stack_display_elements>:
c0de8e1c:	e92d 45f0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, lr}
c0de8e20:	b081      	sub	sp, #4
c0de8e22:	4604      	mov	r4, r0
c0de8e24:	f7fc fe82 	bl	c0de5b2c <os_perso_isonboarded>
c0de8e28:	28aa      	cmp	r0, #170	; 0xaa
c0de8e2a:	d103      	bne.n	c0de8e34 <ux_stack_display_elements+0x18>
c0de8e2c:	f7fc fe9a 	bl	c0de5b64 <os_global_pin_is_validated>
c0de8e30:	28aa      	cmp	r0, #170	; 0xaa
c0de8e32:	d14f      	bne.n	c0de8ed4 <ux_stack_display_elements+0xb8>
c0de8e34:	7860      	ldrb	r0, [r4, #1]
c0de8e36:	b3a0      	cbz	r0, c0de8ea2 <ux_stack_display_elements+0x86>
c0de8e38:	8860      	ldrh	r0, [r4, #2]
c0de8e3a:	f894 8008 	ldrb.w	r8, [r4, #8]
c0de8e3e:	4540      	cmp	r0, r8
c0de8e40:	d231      	bcs.n	c0de8ea6 <ux_stack_display_elements+0x8a>
c0de8e42:	f8df a098 	ldr.w	sl, [pc, #152]	; c0de8edc <ux_stack_display_elements+0xc0>
c0de8e46:	1c47      	adds	r7, r0, #1
c0de8e48:	0146      	lsls	r6, r0, #5
c0de8e4a:	bf00      	nop
c0de8e4c:	3001      	adds	r0, #1
c0de8e4e:	8060      	strh	r0, [r4, #2]
c0de8e50:	f819 000a 	ldrb.w	r0, [r9, sl]
c0de8e54:	6861      	ldr	r1, [r4, #4]
c0de8e56:	eb01 0506 	add.w	r5, r1, r6
c0de8e5a:	b168      	cbz	r0, c0de8e78 <ux_stack_display_elements+0x5c>
c0de8e5c:	eb00 00c0 	add.w	r0, r0, r0, lsl #3
c0de8e60:	eb09 010a 	add.w	r1, r9, sl
c0de8e64:	eb01 0080 	add.w	r0, r1, r0, lsl #2
c0de8e68:	f8d0 10b4 	ldr.w	r1, [r0, #180]	; 0xb4
c0de8e6c:	b121      	cbz	r1, c0de8e78 <ux_stack_display_elements+0x5c>
c0de8e6e:	4628      	mov	r0, r5
c0de8e70:	4788      	blx	r1
c0de8e72:	b1a0      	cbz	r0, c0de8e9e <ux_stack_display_elements+0x82>
c0de8e74:	2801      	cmp	r0, #1
c0de8e76:	d100      	bne.n	c0de8e7a <ux_stack_display_elements+0x5e>
c0de8e78:	4628      	mov	r0, r5
c0de8e7a:	b128      	cbz	r0, c0de8e88 <ux_stack_display_elements+0x6c>
c0de8e7c:	2801      	cmp	r0, #1
c0de8e7e:	bf08      	it	eq
c0de8e80:	4628      	moveq	r0, r5
c0de8e82:	f000 fa11 	bl	c0de92a8 <io_seproxyhal_display>
c0de8e86:	e003      	b.n	c0de8e90 <ux_stack_display_elements+0x74>
c0de8e88:	eb09 000a 	add.w	r0, r9, sl
c0de8e8c:	7840      	ldrb	r0, [r0, #1]
c0de8e8e:	bb08      	cbnz	r0, c0de8ed4 <ux_stack_display_elements+0xb8>
c0de8e90:	7a20      	ldrb	r0, [r4, #8]
c0de8e92:	4287      	cmp	r7, r0
c0de8e94:	d207      	bcs.n	c0de8ea6 <ux_stack_display_elements+0x8a>
c0de8e96:	8860      	ldrh	r0, [r4, #2]
c0de8e98:	3701      	adds	r7, #1
c0de8e9a:	3620      	adds	r6, #32
c0de8e9c:	e7d6      	b.n	c0de8e4c <ux_stack_display_elements+0x30>
c0de8e9e:	2000      	movs	r0, #0
c0de8ea0:	e7eb      	b.n	c0de8e7a <ux_stack_display_elements+0x5e>
c0de8ea2:	f04f 0800 	mov.w	r8, #0
c0de8ea6:	8860      	ldrh	r0, [r4, #2]
c0de8ea8:	4540      	cmp	r0, r8
c0de8eaa:	d113      	bne.n	c0de8ed4 <ux_stack_display_elements+0xb8>
c0de8eac:	f7fc fee0 	bl	c0de5c70 <screen_update>
c0de8eb0:	8860      	ldrh	r0, [r4, #2]
c0de8eb2:	68e1      	ldr	r1, [r4, #12]
c0de8eb4:	3001      	adds	r0, #1
c0de8eb6:	8060      	strh	r0, [r4, #2]
c0de8eb8:	b119      	cbz	r1, c0de8ec2 <ux_stack_display_elements+0xa6>
c0de8eba:	2000      	movs	r0, #0
c0de8ebc:	2500      	movs	r5, #0
c0de8ebe:	4788      	blx	r1
c0de8ec0:	b120      	cbz	r0, c0de8ecc <ux_stack_display_elements+0xb0>
c0de8ec2:	4806      	ldr	r0, [pc, #24]	; (c0de8edc <ux_stack_display_elements+0xc0>)
c0de8ec4:	7821      	ldrb	r1, [r4, #0]
c0de8ec6:	4448      	add	r0, r9
c0de8ec8:	7041      	strb	r1, [r0, #1]
c0de8eca:	e003      	b.n	c0de8ed4 <ux_stack_display_elements+0xb8>
c0de8ecc:	4803      	ldr	r0, [pc, #12]	; (c0de8edc <ux_stack_display_elements+0xc0>)
c0de8ece:	8065      	strh	r5, [r4, #2]
c0de8ed0:	4448      	add	r0, r9
c0de8ed2:	7045      	strb	r5, [r0, #1]
c0de8ed4:	b001      	add	sp, #4
c0de8ed6:	e8bd 85f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, pc}
c0de8eda:	bf00      	nop
c0de8edc:	00006584 	.word	0x00006584

c0de8ee0 <h_paging_init>:
c0de8ee0:	b580      	push	{r7, lr}
c0de8ee2:	4807      	ldr	r0, [pc, #28]	; (c0de8f00 <h_paging_init+0x20>)
c0de8ee4:	4478      	add	r0, pc
c0de8ee6:	f000 fd39 	bl	c0de995c <zemu_log_stack>
c0de8eea:	4803      	ldr	r0, [pc, #12]	; (c0de8ef8 <h_paging_init+0x18>)
c0de8eec:	4903      	ldr	r1, [pc, #12]	; (c0de8efc <h_paging_init+0x1c>)
c0de8eee:	4448      	add	r0, r9
c0de8ef0:	f241 0250 	movw	r2, #4176	; 0x1050
c0de8ef4:	5081      	str	r1, [r0, r2]
c0de8ef6:	bd80      	pop	{r7, pc}
c0de8ef8:	00005530 	.word	0x00005530
c0de8efc:	0100ff00 	.word	0x0100ff00
c0de8f00:	00000d4e 	.word	0x00000d4e

c0de8f04 <view_init>:
c0de8f04:	b580      	push	{r7, lr}
c0de8f06:	4803      	ldr	r0, [pc, #12]	; (c0de8f14 <view_init+0x10>)
c0de8f08:	f44f 7188 	mov.w	r1, #272	; 0x110
c0de8f0c:	4448      	add	r0, r9
c0de8f0e:	f000 fd26 	bl	c0de995e <__aeabi_memclr>
c0de8f12:	bd80      	pop	{r7, pc}
c0de8f14:	00006584 	.word	0x00006584

c0de8f18 <view_idle_show>:
c0de8f18:	f000 bc04 	b.w	c0de9724 <view_idle_show_impl>

c0de8f1c <view_review_init>:
c0de8f1c:	4b07      	ldr	r3, [pc, #28]	; (c0de8f3c <view_review_init+0x20>)
c0de8f1e:	eb09 0c03 	add.w	ip, r9, r3
c0de8f22:	f44f 5382 	mov.w	r3, #4160	; 0x1040
c0de8f26:	f84c 0003 	str.w	r0, [ip, r3]
c0de8f2a:	f241 0044 	movw	r0, #4164	; 0x1044
c0de8f2e:	f84c 1000 	str.w	r1, [ip, r0]
c0de8f32:	f241 0048 	movw	r0, #4168	; 0x1048
c0de8f36:	f84c 2000 	str.w	r2, [ip, r0]
c0de8f3a:	4770      	bx	lr
c0de8f3c:	00005530 	.word	0x00005530

c0de8f40 <view_review_show>:
c0de8f40:	f000 bc1a 	b.w	c0de9778 <view_review_show_impl>

c0de8f44 <h_approve>:
c0de8f44:	b5b0      	push	{r4, r5, r7, lr}
c0de8f46:	4845      	ldr	r0, [pc, #276]	; (c0de905c <h_approve+0x118>)
c0de8f48:	4478      	add	r0, pc
c0de8f4a:	f000 fd07 	bl	c0de995c <zemu_log_stack>
c0de8f4e:	2000      	movs	r0, #0
c0de8f50:	2100      	movs	r1, #0
c0de8f52:	f000 fbe7 	bl	c0de9724 <view_idle_show_impl>
c0de8f56:	4c3e      	ldr	r4, [pc, #248]	; (c0de9050 <h_approve+0x10c>)
c0de8f58:	eb09 0004 	add.w	r0, r9, r4
c0de8f5c:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de8f60:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de8f64:	4281      	cmp	r1, r0
c0de8f66:	d257      	bcs.n	c0de9018 <h_approve+0xd4>
c0de8f68:	4d3a      	ldr	r5, [pc, #232]	; (c0de9054 <h_approve+0x110>)
c0de8f6a:	bf00      	nop
c0de8f6c:	eb09 0005 	add.w	r0, r9, r5
c0de8f70:	f44f 7196 	mov.w	r1, #300	; 0x12c
c0de8f74:	2200      	movs	r2, #0
c0de8f76:	f7fc fe47 	bl	c0de5c08 <io_seph_recv>
c0de8f7a:	eb09 0004 	add.w	r0, r9, r4
c0de8f7e:	f8d0 00cc 	ldr.w	r0, [r0, #204]	; 0xcc
c0de8f82:	2800      	cmp	r0, #0
c0de8f84:	d040      	beq.n	c0de9008 <h_approve+0xc4>
c0de8f86:	eb09 0004 	add.w	r0, r9, r4
c0de8f8a:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de8f8e:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de8f92:	4281      	cmp	r1, r0
c0de8f94:	d238      	bcs.n	c0de9008 <h_approve+0xc4>
c0de8f96:	f7fc fdc9 	bl	c0de5b2c <os_perso_isonboarded>
c0de8f9a:	28aa      	cmp	r0, #170	; 0xaa
c0de8f9c:	d103      	bne.n	c0de8fa6 <h_approve+0x62>
c0de8f9e:	f7fc fde1 	bl	c0de5b64 <os_global_pin_is_validated>
c0de8fa2:	28aa      	cmp	r0, #170	; 0xaa
c0de8fa4:	d130      	bne.n	c0de9008 <h_approve+0xc4>
c0de8fa6:	eb09 0104 	add.w	r1, r9, r4
c0de8faa:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	; 0xca
c0de8fae:	f891 20d0 	ldrb.w	r2, [r1, #208]	; 0xd0
c0de8fb2:	4290      	cmp	r0, r2
c0de8fb4:	d224      	bcs.n	c0de9000 <h_approve+0xbc>
c0de8fb6:	4601      	mov	r1, r0
c0de8fb8:	eb09 0204 	add.w	r2, r9, r4
c0de8fbc:	f8d2 30d8 	ldr.w	r3, [r2, #216]	; 0xd8
c0de8fc0:	f8d2 20cc 	ldr.w	r2, [r2, #204]	; 0xcc
c0de8fc4:	eb02 1040 	add.w	r0, r2, r0, lsl #5
c0de8fc8:	b13b      	cbz	r3, c0de8fda <h_approve+0x96>
c0de8fca:	4798      	blx	r3
c0de8fcc:	b160      	cbz	r0, c0de8fe8 <h_approve+0xa4>
c0de8fce:	eb09 0104 	add.w	r1, r9, r4
c0de8fd2:	f8d1 20cc 	ldr.w	r2, [r1, #204]	; 0xcc
c0de8fd6:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	; 0xca
c0de8fda:	b289      	uxth	r1, r1
c0de8fdc:	2801      	cmp	r0, #1
c0de8fde:	bf08      	it	eq
c0de8fe0:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de8fe4:	f000 f960 	bl	c0de92a8 <io_seproxyhal_display>
c0de8fe8:	eb09 0304 	add.w	r3, r9, r4
c0de8fec:	f8b3 00ca 	ldrh.w	r0, [r3, #202]	; 0xca
c0de8ff0:	f893 20d0 	ldrb.w	r2, [r3, #208]	; 0xd0
c0de8ff4:	1c41      	adds	r1, r0, #1
c0de8ff6:	b288      	uxth	r0, r1
c0de8ff8:	4290      	cmp	r0, r2
c0de8ffa:	f8a3 10ca 	strh.w	r1, [r3, #202]	; 0xca
c0de8ffe:	d3db      	bcc.n	c0de8fb8 <h_approve+0x74>
c0de9000:	4290      	cmp	r0, r2
c0de9002:	bf08      	it	eq
c0de9004:	f7fc fe34 	bleq	c0de5c70 <screen_update>
c0de9008:	eb09 0004 	add.w	r0, r9, r4
c0de900c:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de9010:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de9014:	4281      	cmp	r1, r0
c0de9016:	d3a9      	bcc.n	c0de8f6c <h_approve+0x28>
c0de9018:	480e      	ldr	r0, [pc, #56]	; (c0de9054 <h_approve+0x110>)
c0de901a:	f44f 7196 	mov.w	r1, #300	; 0x12c
c0de901e:	eb09 0400 	add.w	r4, r9, r0
c0de9022:	4620      	mov	r0, r4
c0de9024:	2200      	movs	r2, #0
c0de9026:	f7fc fdef 	bl	c0de5c08 <io_seph_recv>
c0de902a:	f7fa f9d1 	bl	c0de33d0 <io_seproxyhal_general_status>
c0de902e:	4620      	mov	r0, r4
c0de9030:	f44f 7196 	mov.w	r1, #300	; 0x12c
c0de9034:	2200      	movs	r2, #0
c0de9036:	f7fc fde7 	bl	c0de5c08 <io_seph_recv>
c0de903a:	4807      	ldr	r0, [pc, #28]	; (c0de9058 <h_approve+0x114>)
c0de903c:	f241 0148 	movw	r1, #4168	; 0x1048
c0de9040:	4448      	add	r0, r9
c0de9042:	5840      	ldr	r0, [r0, r1]
c0de9044:	b110      	cbz	r0, c0de904c <h_approve+0x108>
c0de9046:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de904a:	4700      	bx	r0
c0de904c:	bdb0      	pop	{r4, r5, r7, pc}
c0de904e:	bf00      	nop
c0de9050:	00006584 	.word	0x00006584
c0de9054:	00000002 	.word	0x00000002
c0de9058:	00005530 	.word	0x00005530
c0de905c:	00000bcd 	.word	0x00000bcd

c0de9060 <h_reject>:
c0de9060:	b570      	push	{r4, r5, r6, lr}
c0de9062:	4604      	mov	r4, r0
c0de9064:	4849      	ldr	r0, [pc, #292]	; (c0de918c <h_reject+0x12c>)
c0de9066:	4478      	add	r0, pc
c0de9068:	f000 fc78 	bl	c0de995c <zemu_log_stack>
c0de906c:	2000      	movs	r0, #0
c0de906e:	2100      	movs	r1, #0
c0de9070:	f000 fb58 	bl	c0de9724 <view_idle_show_impl>
c0de9074:	4d42      	ldr	r5, [pc, #264]	; (c0de9180 <h_reject+0x120>)
c0de9076:	eb09 0005 	add.w	r0, r9, r5
c0de907a:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de907e:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de9082:	4281      	cmp	r1, r0
c0de9084:	d256      	bcs.n	c0de9134 <h_reject+0xd4>
c0de9086:	4e3f      	ldr	r6, [pc, #252]	; (c0de9184 <h_reject+0x124>)
c0de9088:	eb09 0006 	add.w	r0, r9, r6
c0de908c:	f44f 7196 	mov.w	r1, #300	; 0x12c
c0de9090:	2200      	movs	r2, #0
c0de9092:	f7fc fdb9 	bl	c0de5c08 <io_seph_recv>
c0de9096:	eb09 0005 	add.w	r0, r9, r5
c0de909a:	f8d0 00cc 	ldr.w	r0, [r0, #204]	; 0xcc
c0de909e:	2800      	cmp	r0, #0
c0de90a0:	d040      	beq.n	c0de9124 <h_reject+0xc4>
c0de90a2:	eb09 0005 	add.w	r0, r9, r5
c0de90a6:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de90aa:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de90ae:	4281      	cmp	r1, r0
c0de90b0:	d238      	bcs.n	c0de9124 <h_reject+0xc4>
c0de90b2:	f7fc fd3b 	bl	c0de5b2c <os_perso_isonboarded>
c0de90b6:	28aa      	cmp	r0, #170	; 0xaa
c0de90b8:	d103      	bne.n	c0de90c2 <h_reject+0x62>
c0de90ba:	f7fc fd53 	bl	c0de5b64 <os_global_pin_is_validated>
c0de90be:	28aa      	cmp	r0, #170	; 0xaa
c0de90c0:	d130      	bne.n	c0de9124 <h_reject+0xc4>
c0de90c2:	eb09 0105 	add.w	r1, r9, r5
c0de90c6:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	; 0xca
c0de90ca:	f891 20d0 	ldrb.w	r2, [r1, #208]	; 0xd0
c0de90ce:	4290      	cmp	r0, r2
c0de90d0:	d224      	bcs.n	c0de911c <h_reject+0xbc>
c0de90d2:	4601      	mov	r1, r0
c0de90d4:	eb09 0205 	add.w	r2, r9, r5
c0de90d8:	f8d2 30d8 	ldr.w	r3, [r2, #216]	; 0xd8
c0de90dc:	f8d2 20cc 	ldr.w	r2, [r2, #204]	; 0xcc
c0de90e0:	eb02 1040 	add.w	r0, r2, r0, lsl #5
c0de90e4:	b13b      	cbz	r3, c0de90f6 <h_reject+0x96>
c0de90e6:	4798      	blx	r3
c0de90e8:	b160      	cbz	r0, c0de9104 <h_reject+0xa4>
c0de90ea:	eb09 0105 	add.w	r1, r9, r5
c0de90ee:	f8d1 20cc 	ldr.w	r2, [r1, #204]	; 0xcc
c0de90f2:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	; 0xca
c0de90f6:	b289      	uxth	r1, r1
c0de90f8:	2801      	cmp	r0, #1
c0de90fa:	bf08      	it	eq
c0de90fc:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de9100:	f000 f8d2 	bl	c0de92a8 <io_seproxyhal_display>
c0de9104:	eb09 0305 	add.w	r3, r9, r5
c0de9108:	f8b3 00ca 	ldrh.w	r0, [r3, #202]	; 0xca
c0de910c:	f893 20d0 	ldrb.w	r2, [r3, #208]	; 0xd0
c0de9110:	1c41      	adds	r1, r0, #1
c0de9112:	b288      	uxth	r0, r1
c0de9114:	4290      	cmp	r0, r2
c0de9116:	f8a3 10ca 	strh.w	r1, [r3, #202]	; 0xca
c0de911a:	d3db      	bcc.n	c0de90d4 <h_reject+0x74>
c0de911c:	4290      	cmp	r0, r2
c0de911e:	bf08      	it	eq
c0de9120:	f7fc fda6 	bleq	c0de5c70 <screen_update>
c0de9124:	eb09 0005 	add.w	r0, r9, r5
c0de9128:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de912c:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de9130:	4281      	cmp	r1, r0
c0de9132:	d3a9      	bcc.n	c0de9088 <h_reject+0x28>
c0de9134:	4813      	ldr	r0, [pc, #76]	; (c0de9184 <h_reject+0x124>)
c0de9136:	f44f 7196 	mov.w	r1, #300	; 0x12c
c0de913a:	eb09 0500 	add.w	r5, r9, r0
c0de913e:	4628      	mov	r0, r5
c0de9140:	2200      	movs	r2, #0
c0de9142:	f7fc fd61 	bl	c0de5c08 <io_seph_recv>
c0de9146:	f7fa f943 	bl	c0de33d0 <io_seproxyhal_general_status>
c0de914a:	4628      	mov	r0, r5
c0de914c:	f44f 7196 	mov.w	r1, #300	; 0x12c
c0de9150:	2200      	movs	r2, #0
c0de9152:	f7fc fd59 	bl	c0de5c08 <io_seph_recv>
c0de9156:	b194      	cbz	r4, c0de917e <h_reject+0x11e>
c0de9158:	4d0b      	ldr	r5, [pc, #44]	; (c0de9188 <h_reject+0x128>)
c0de915a:	f44f 7182 	mov.w	r1, #260	; 0x104
c0de915e:	eb09 0405 	add.w	r4, r9, r5
c0de9162:	4620      	mov	r0, r4
c0de9164:	f000 fc07 	bl	c0de9976 <explicit_bzero>
c0de9168:	2069      	movs	r0, #105	; 0x69
c0de916a:	2286      	movs	r2, #134	; 0x86
c0de916c:	f809 0005 	strb.w	r0, [r9, r5]
c0de9170:	2020      	movs	r0, #32
c0de9172:	2102      	movs	r1, #2
c0de9174:	7062      	strb	r2, [r4, #1]
c0de9176:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
c0de917a:	f7fa bb0b 	b.w	c0de3794 <io_exchange>
c0de917e:	bd70      	pop	{r4, r5, r6, pc}
c0de9180:	00006584 	.word	0x00006584
c0de9184:	00000002 	.word	0x00000002
c0de9188:	000001b1 	.word	0x000001b1
c0de918c:	00000c6d 	.word	0x00000c6d

c0de9190 <h_error_accept>:
c0de9190:	b5b0      	push	{r4, r5, r7, lr}
c0de9192:	2000      	movs	r0, #0
c0de9194:	2100      	movs	r1, #0
c0de9196:	f000 fac5 	bl	c0de9724 <view_idle_show_impl>
c0de919a:	4c40      	ldr	r4, [pc, #256]	; (c0de929c <h_error_accept+0x10c>)
c0de919c:	eb09 0004 	add.w	r0, r9, r4
c0de91a0:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de91a4:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de91a8:	4281      	cmp	r1, r0
c0de91aa:	d257      	bcs.n	c0de925c <h_error_accept+0xcc>
c0de91ac:	4d3c      	ldr	r5, [pc, #240]	; (c0de92a0 <h_error_accept+0x110>)
c0de91ae:	bf00      	nop
c0de91b0:	eb09 0005 	add.w	r0, r9, r5
c0de91b4:	f44f 7196 	mov.w	r1, #300	; 0x12c
c0de91b8:	2200      	movs	r2, #0
c0de91ba:	f7fc fd25 	bl	c0de5c08 <io_seph_recv>
c0de91be:	eb09 0004 	add.w	r0, r9, r4
c0de91c2:	f8d0 00cc 	ldr.w	r0, [r0, #204]	; 0xcc
c0de91c6:	2800      	cmp	r0, #0
c0de91c8:	d040      	beq.n	c0de924c <h_error_accept+0xbc>
c0de91ca:	eb09 0004 	add.w	r0, r9, r4
c0de91ce:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de91d2:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de91d6:	4281      	cmp	r1, r0
c0de91d8:	d238      	bcs.n	c0de924c <h_error_accept+0xbc>
c0de91da:	f7fc fca7 	bl	c0de5b2c <os_perso_isonboarded>
c0de91de:	28aa      	cmp	r0, #170	; 0xaa
c0de91e0:	d103      	bne.n	c0de91ea <h_error_accept+0x5a>
c0de91e2:	f7fc fcbf 	bl	c0de5b64 <os_global_pin_is_validated>
c0de91e6:	28aa      	cmp	r0, #170	; 0xaa
c0de91e8:	d130      	bne.n	c0de924c <h_error_accept+0xbc>
c0de91ea:	eb09 0104 	add.w	r1, r9, r4
c0de91ee:	f8b1 00ca 	ldrh.w	r0, [r1, #202]	; 0xca
c0de91f2:	f891 20d0 	ldrb.w	r2, [r1, #208]	; 0xd0
c0de91f6:	4290      	cmp	r0, r2
c0de91f8:	d224      	bcs.n	c0de9244 <h_error_accept+0xb4>
c0de91fa:	4601      	mov	r1, r0
c0de91fc:	eb09 0204 	add.w	r2, r9, r4
c0de9200:	f8d2 30d8 	ldr.w	r3, [r2, #216]	; 0xd8
c0de9204:	f8d2 20cc 	ldr.w	r2, [r2, #204]	; 0xcc
c0de9208:	eb02 1040 	add.w	r0, r2, r0, lsl #5
c0de920c:	b13b      	cbz	r3, c0de921e <h_error_accept+0x8e>
c0de920e:	4798      	blx	r3
c0de9210:	b160      	cbz	r0, c0de922c <h_error_accept+0x9c>
c0de9212:	eb09 0104 	add.w	r1, r9, r4
c0de9216:	f8d1 20cc 	ldr.w	r2, [r1, #204]	; 0xcc
c0de921a:	f8b1 10ca 	ldrh.w	r1, [r1, #202]	; 0xca
c0de921e:	b289      	uxth	r1, r1
c0de9220:	2801      	cmp	r0, #1
c0de9222:	bf08      	it	eq
c0de9224:	eb02 1041 	addeq.w	r0, r2, r1, lsl #5
c0de9228:	f000 f83e 	bl	c0de92a8 <io_seproxyhal_display>
c0de922c:	eb09 0304 	add.w	r3, r9, r4
c0de9230:	f8b3 00ca 	ldrh.w	r0, [r3, #202]	; 0xca
c0de9234:	f893 20d0 	ldrb.w	r2, [r3, #208]	; 0xd0
c0de9238:	1c41      	adds	r1, r0, #1
c0de923a:	b288      	uxth	r0, r1
c0de923c:	4290      	cmp	r0, r2
c0de923e:	f8a3 10ca 	strh.w	r1, [r3, #202]	; 0xca
c0de9242:	d3db      	bcc.n	c0de91fc <h_error_accept+0x6c>
c0de9244:	4290      	cmp	r0, r2
c0de9246:	bf08      	it	eq
c0de9248:	f7fc fd12 	bleq	c0de5c70 <screen_update>
c0de924c:	eb09 0004 	add.w	r0, r9, r4
c0de9250:	f8b0 10ca 	ldrh.w	r1, [r0, #202]	; 0xca
c0de9254:	f890 00d0 	ldrb.w	r0, [r0, #208]	; 0xd0
c0de9258:	4281      	cmp	r1, r0
c0de925a:	d3a9      	bcc.n	c0de91b0 <h_error_accept+0x20>
c0de925c:	4810      	ldr	r0, [pc, #64]	; (c0de92a0 <h_error_accept+0x110>)
c0de925e:	f44f 7196 	mov.w	r1, #300	; 0x12c
c0de9262:	eb09 0400 	add.w	r4, r9, r0
c0de9266:	4620      	mov	r0, r4
c0de9268:	2200      	movs	r2, #0
c0de926a:	f7fc fccd 	bl	c0de5c08 <io_seph_recv>
c0de926e:	f7fa f8af 	bl	c0de33d0 <io_seproxyhal_general_status>
c0de9272:	4620      	mov	r0, r4
c0de9274:	f44f 7196 	mov.w	r1, #300	; 0x12c
c0de9278:	2200      	movs	r2, #0
c0de927a:	f7fc fcc5 	bl	c0de5c08 <io_seph_recv>
c0de927e:	4809      	ldr	r0, [pc, #36]	; (c0de92a4 <h_error_accept+0x114>)
c0de9280:	2169      	movs	r1, #105	; 0x69
c0de9282:	eb09 0200 	add.w	r2, r9, r0
c0de9286:	2384      	movs	r3, #132	; 0x84
c0de9288:	f809 1000 	strb.w	r1, [r9, r0]
c0de928c:	2020      	movs	r0, #32
c0de928e:	2102      	movs	r1, #2
c0de9290:	7053      	strb	r3, [r2, #1]
c0de9292:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de9296:	f7fa ba7d 	b.w	c0de3794 <io_exchange>
c0de929a:	bf00      	nop
c0de929c:	00006584 	.word	0x00006584
c0de92a0:	00000002 	.word	0x00000002
c0de92a4:	000001b1 	.word	0x000001b1

c0de92a8 <io_seproxyhal_display>:
c0de92a8:	f7fa b9e1 	b.w	c0de366e <io_seproxyhal_display_default>

c0de92ac <view_error_show>:
c0de92ac:	b510      	push	{r4, lr}
c0de92ae:	480a      	ldr	r0, [pc, #40]	; (c0de92d8 <view_error_show+0x2c>)
c0de92b0:	490a      	ldr	r1, [pc, #40]	; (c0de92dc <view_error_show+0x30>)
c0de92b2:	eb09 0400 	add.w	r4, r9, r0
c0de92b6:	4479      	add	r1, pc
c0de92b8:	4620      	mov	r0, r4
c0de92ba:	2206      	movs	r2, #6
c0de92bc:	f000 fb52 	bl	c0de9964 <__aeabi_memcpy>
c0de92c0:	4807      	ldr	r0, [pc, #28]	; (c0de92e0 <view_error_show+0x34>)
c0de92c2:	f104 0140 	add.w	r1, r4, #64	; 0x40
c0de92c6:	4478      	add	r0, pc
c0de92c8:	c81c      	ldmia	r0!, {r2, r3, r4}
c0de92ca:	7800      	ldrb	r0, [r0, #0]
c0de92cc:	c11c      	stmia	r1!, {r2, r3, r4}
c0de92ce:	7008      	strb	r0, [r1, #0]
c0de92d0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de92d4:	f000 bac8 	b.w	c0de9868 <view_error_show_impl>
c0de92d8:	00005530 	.word	0x00005530
c0de92dc:	00000bbc 	.word	0x00000bbc
c0de92e0:	00003b9a 	.word	0x00003b9a

c0de92e4 <h_paging_increase>:
c0de92e4:	b580      	push	{r7, lr}
c0de92e6:	4817      	ldr	r0, [pc, #92]	; (c0de9344 <h_paging_increase+0x60>)
c0de92e8:	4478      	add	r0, pc
c0de92ea:	f000 fb37 	bl	c0de995c <zemu_log_stack>
c0de92ee:	f8df c050 	ldr.w	ip, [pc, #80]	; c0de9340 <h_paging_increase+0x5c>
c0de92f2:	f241 0152 	movw	r1, #4178	; 0x1052
c0de92f6:	eb09 020c 	add.w	r2, r9, ip
c0de92fa:	5c53      	ldrb	r3, [r2, r1]
c0de92fc:	f241 0053 	movw	r0, #4179	; 0x1053
c0de9300:	5c10      	ldrb	r0, [r2, r0]
c0de9302:	1c5a      	adds	r2, r3, #1
c0de9304:	4282      	cmp	r2, r0
c0de9306:	d203      	bcs.n	c0de9310 <h_paging_increase+0x2c>
c0de9308:	eb09 000c 	add.w	r0, r9, ip
c0de930c:	5442      	strb	r2, [r0, r1]
c0de930e:	bd80      	pop	{r7, pc}
c0de9310:	eb09 000c 	add.w	r0, r9, ip
c0de9314:	f241 0151 	movw	r1, #4177	; 0x1051
c0de9318:	5c42      	ldrb	r2, [r0, r1]
c0de931a:	b17a      	cbz	r2, c0de933c <h_paging_increase+0x58>
c0de931c:	eb09 000c 	add.w	r0, r9, ip
c0de9320:	f241 0150 	movw	r1, #4176	; 0x1050
c0de9324:	5c43      	ldrb	r3, [r0, r1]
c0de9326:	1e50      	subs	r0, r2, #1
c0de9328:	4298      	cmp	r0, r3
c0de932a:	dd07      	ble.n	c0de933c <h_paging_increase+0x58>
c0de932c:	1c58      	adds	r0, r3, #1
c0de932e:	eb09 020c 	add.w	r2, r9, ip
c0de9332:	5450      	strb	r0, [r2, r1]
c0de9334:	f241 0052 	movw	r0, #4178	; 0x1052
c0de9338:	2100      	movs	r1, #0
c0de933a:	5411      	strb	r1, [r2, r0]
c0de933c:	bd80      	pop	{r7, pc}
c0de933e:	bf00      	nop
c0de9340:	00005530 	.word	0x00005530
c0de9344:	00000837 	.word	0x00000837

c0de9348 <h_paging_can_decrease>:
c0de9348:	b510      	push	{r4, lr}
c0de934a:	480a      	ldr	r0, [pc, #40]	; (c0de9374 <h_paging_can_decrease+0x2c>)
c0de934c:	f241 0152 	movw	r1, #4178	; 0x1052
c0de9350:	4448      	add	r0, r9
c0de9352:	f241 0250 	movw	r2, #4176	; 0x1050
c0de9356:	5c41      	ldrb	r1, [r0, r1]
c0de9358:	5c82      	ldrb	r2, [r0, r2]
c0de935a:	4b07      	ldr	r3, [pc, #28]	; (c0de9378 <h_paging_can_decrease+0x30>)
c0de935c:	4807      	ldr	r0, [pc, #28]	; (c0de937c <h_paging_can_decrease+0x34>)
c0de935e:	ea51 0402 	orrs.w	r4, r1, r2
c0de9362:	4478      	add	r0, pc
c0de9364:	447b      	add	r3, pc
c0de9366:	bf0c      	ite	eq
c0de9368:	4618      	moveq	r0, r3
c0de936a:	2401      	movne	r4, #1
c0de936c:	f000 faf6 	bl	c0de995c <zemu_log_stack>
c0de9370:	4620      	mov	r0, r4
c0de9372:	bd10      	pop	{r4, pc}
c0de9374:	00005530 	.word	0x00005530
c0de9378:	000007cd 	.word	0x000007cd
c0de937c:	000009ce 	.word	0x000009ce

c0de9380 <h_paging_decrease>:
c0de9380:	b510      	push	{r4, lr}
c0de9382:	4911      	ldr	r1, [pc, #68]	; (c0de93c8 <h_paging_decrease+0x48>)
c0de9384:	f241 0252 	movw	r2, #4178	; 0x1052
c0de9388:	eb09 0001 	add.w	r0, r9, r1
c0de938c:	5c80      	ldrb	r0, [r0, r2]
c0de938e:	b140      	cbz	r0, c0de93a2 <h_paging_decrease+0x22>
c0de9390:	1e43      	subs	r3, r0, #1
c0de9392:	480f      	ldr	r0, [pc, #60]	; (c0de93d0 <h_paging_decrease+0x50>)
c0de9394:	4449      	add	r1, r9
c0de9396:	4478      	add	r0, pc
c0de9398:	548b      	strb	r3, [r1, r2]
c0de939a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de939e:	f000 badd 	b.w	c0de995c <zemu_log_stack>
c0de93a2:	eb09 0201 	add.w	r2, r9, r1
c0de93a6:	f241 0050 	movw	r0, #4176	; 0x1050
c0de93aa:	5c12      	ldrb	r2, [r2, r0]
c0de93ac:	b15a      	cbz	r2, c0de93c6 <h_paging_decrease+0x46>
c0de93ae:	3a01      	subs	r2, #1
c0de93b0:	eb09 0401 	add.w	r4, r9, r1
c0de93b4:	5422      	strb	r2, [r4, r0]
c0de93b6:	4805      	ldr	r0, [pc, #20]	; (c0de93cc <h_paging_decrease+0x4c>)
c0de93b8:	4478      	add	r0, pc
c0de93ba:	f000 facf 	bl	c0de995c <zemu_log_stack>
c0de93be:	f241 0052 	movw	r0, #4178	; 0x1052
c0de93c2:	21ff      	movs	r1, #255	; 0xff
c0de93c4:	5421      	strb	r1, [r4, r0]
c0de93c6:	bd10      	pop	{r4, pc}
c0de93c8:	00005530 	.word	0x00005530
c0de93cc:	000009e0 	.word	0x000009e0
c0de93d0:	000009e4 	.word	0x000009e4

c0de93d4 <h_review_update_data>:
c0de93d4:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de93d8:	b088      	sub	sp, #32
c0de93da:	4e69      	ldr	r6, [pc, #420]	; (c0de9580 <h_review_update_data+0x1ac>)
c0de93dc:	f241 0144 	movw	r1, #4164	; 0x1044
c0de93e0:	eb09 0006 	add.w	r0, r9, r6
c0de93e4:	5840      	ldr	r0, [r0, r1]
c0de93e6:	2800      	cmp	r0, #0
c0de93e8:	f000 80bf 	beq.w	c0de956a <h_review_update_data+0x196>
c0de93ec:	eb09 0006 	add.w	r0, r9, r6
c0de93f0:	f44f 5782 	mov.w	r7, #4160	; 0x1040
c0de93f4:	59c0      	ldr	r0, [r0, r7]
c0de93f6:	2800      	cmp	r0, #0
c0de93f8:	f000 80ba 	beq.w	c0de9570 <h_review_update_data+0x19c>
c0de93fc:	eb09 0006 	add.w	r0, r9, r6
c0de9400:	f241 0150 	movw	r1, #4176	; 0x1050
c0de9404:	5c43      	ldrb	r3, [r0, r1]
c0de9406:	f241 0152 	movw	r1, #4178	; 0x1052
c0de940a:	5c45      	ldrb	r5, [r0, r1]
c0de940c:	4a5f      	ldr	r2, [pc, #380]	; (c0de958c <h_review_update_data+0x1b8>)
c0de940e:	ac03      	add	r4, sp, #12
c0de9410:	447a      	add	r2, pc
c0de9412:	4620      	mov	r0, r4
c0de9414:	2114      	movs	r1, #20
c0de9416:	9500      	str	r5, [sp, #0]
c0de9418:	f7fa fcf4 	bl	c0de3e04 <snprintf>
c0de941c:	4620      	mov	r0, r4
c0de941e:	f000 fa9d 	bl	c0de995c <zemu_log_stack>
c0de9422:	f241 0451 	movw	r4, #4177	; 0x1051
c0de9426:	f241 0b53 	movw	fp, #4179	; 0x1053
c0de942a:	f04f 0800 	mov.w	r8, #0
c0de942e:	bf00      	nop
c0de9430:	eb09 0006 	add.w	r0, r9, r6
c0de9434:	f241 0144 	movw	r1, #4164	; 0x1044
c0de9438:	5841      	ldr	r1, [r0, r1]
c0de943a:	4420      	add	r0, r4
c0de943c:	4788      	blx	r1
c0de943e:	2803      	cmp	r0, #3
c0de9440:	f040 809b 	bne.w	c0de957a <h_review_update_data+0x1a6>
c0de9444:	eb09 0106 	add.w	r1, r9, r6
c0de9448:	f241 0050 	movw	r0, #4176	; 0x1050
c0de944c:	560c      	ldrsb	r4, [r1, r0]
c0de944e:	59cd      	ldr	r5, [r1, r7]
c0de9450:	eb01 000b 	add.w	r0, r1, fp
c0de9454:	f44f 5280 	mov.w	r2, #4096	; 0x1000
c0de9458:	9200      	str	r2, [sp, #0]
c0de945a:	9002      	str	r0, [sp, #8]
c0de945c:	f101 0340 	add.w	r3, r1, #64	; 0x40
c0de9460:	4620      	mov	r0, r4
c0de9462:	2240      	movs	r2, #64	; 0x40
c0de9464:	f8cd 8004 	str.w	r8, [sp, #4]
c0de9468:	47a8      	blx	r5
c0de946a:	2803      	cmp	r0, #3
c0de946c:	f040 8085 	bne.w	c0de957a <h_review_update_data+0x1a6>
c0de9470:	eb09 0506 	add.w	r5, r9, r6
c0de9474:	2001      	movs	r0, #1
c0de9476:	f241 0853 	movw	r8, #4179	; 0x1053
c0de947a:	b2e4      	uxtb	r4, r4
c0de947c:	f805 000b 	strb.w	r0, [r5, fp]
c0de9480:	eb05 0b08 	add.w	fp, r5, r8
c0de9484:	f000 f94a 	bl	c0de971c <get_max_char_per_line>
c0de9488:	59ef      	ldr	r7, [r5, r7]
c0de948a:	b264      	sxtb	r4, r4
c0de948c:	f04f 0c00 	mov.w	ip, #0
c0de9490:	fa1f fa80 	uxth.w	sl, r0
c0de9494:	f105 0340 	add.w	r3, r5, #64	; 0x40
c0de9498:	4620      	mov	r0, r4
c0de949a:	4629      	mov	r1, r5
c0de949c:	2240      	movs	r2, #64	; 0x40
c0de949e:	f8cd a000 	str.w	sl, [sp]
c0de94a2:	f8cd b008 	str.w	fp, [sp, #8]
c0de94a6:	f8cd c004 	str.w	ip, [sp, #4]
c0de94aa:	47b8      	blx	r7
c0de94ac:	2803      	cmp	r0, #3
c0de94ae:	d164      	bne.n	c0de957a <h_review_update_data+0x1a6>
c0de94b0:	eb09 0006 	add.w	r0, r9, r6
c0de94b4:	f810 1008 	ldrb.w	r1, [r0, r8]
c0de94b8:	f241 0252 	movw	r2, #4178	; 0x1052
c0de94bc:	5c80      	ldrb	r0, [r0, r2]
c0de94be:	f241 0b53 	movw	fp, #4179	; 0x1053
c0de94c2:	b139      	cbz	r1, c0de94d4 <h_review_update_data+0x100>
c0de94c4:	4288      	cmp	r0, r1
c0de94c6:	d905      	bls.n	c0de94d4 <h_review_update_data+0x100>
c0de94c8:	1e48      	subs	r0, r1, #1
c0de94ca:	eb09 0106 	add.w	r1, r9, r6
c0de94ce:	f241 0252 	movw	r2, #4178	; 0x1052
c0de94d2:	5488      	strb	r0, [r1, r2]
c0de94d4:	eb09 0106 	add.w	r1, r9, r6
c0de94d8:	f44f 5282 	mov.w	r2, #4160	; 0x1040
c0de94dc:	588f      	ldr	r7, [r1, r2]
c0de94de:	b2c0      	uxtb	r0, r0
c0de94e0:	eb01 050b 	add.w	r5, r1, fp
c0de94e4:	e9cd a000 	strd	sl, r0, [sp]
c0de94e8:	f101 0340 	add.w	r3, r1, #64	; 0x40
c0de94ec:	4620      	mov	r0, r4
c0de94ee:	2240      	movs	r2, #64	; 0x40
c0de94f0:	9502      	str	r5, [sp, #8]
c0de94f2:	47b8      	blx	r7
c0de94f4:	2803      	cmp	r0, #3
c0de94f6:	d140      	bne.n	c0de957a <h_review_update_data+0x1a6>
c0de94f8:	eb09 0106 	add.w	r1, r9, r6
c0de94fc:	f241 0451 	movw	r4, #4177	; 0x1051
c0de9500:	5d0a      	ldrb	r2, [r1, r4]
c0de9502:	f811 000b 	ldrb.w	r0, [r1, fp]
c0de9506:	3201      	adds	r2, #1
c0de9508:	2802      	cmp	r0, #2
c0de950a:	f44f 5782 	mov.w	r7, #4160	; 0x1040
c0de950e:	f04f 0800 	mov.w	r8, #0
c0de9512:	550a      	strb	r2, [r1, r4]
c0de9514:	d31b      	bcc.n	c0de954e <h_review_update_data+0x17a>
c0de9516:	eb09 0006 	add.w	r0, r9, r6
c0de951a:	2140      	movs	r1, #64	; 0x40
c0de951c:	f000 fab7 	bl	c0de9a8e <strnlen>
c0de9520:	b2c1      	uxtb	r1, r0
c0de9522:	293f      	cmp	r1, #63	; 0x3f
c0de9524:	d80f      	bhi.n	c0de9546 <h_review_update_data+0x172>
c0de9526:	eb09 0206 	add.w	r2, r9, r6
c0de952a:	f241 0352 	movw	r3, #4178	; 0x1052
c0de952e:	1850      	adds	r0, r2, r1
c0de9530:	5cd3      	ldrb	r3, [r2, r3]
c0de9532:	f812 500b 	ldrb.w	r5, [r2, fp]
c0de9536:	4a16      	ldr	r2, [pc, #88]	; (c0de9590 <h_review_update_data+0x1bc>)
c0de9538:	f1c1 0140 	rsb	r1, r1, #64	; 0x40
c0de953c:	3301      	adds	r3, #1
c0de953e:	447a      	add	r2, pc
c0de9540:	9500      	str	r5, [sp, #0]
c0de9542:	f7fa fc5f 	bl	c0de3e04 <snprintf>
c0de9546:	eb09 0006 	add.w	r0, r9, r6
c0de954a:	f810 000b 	ldrb.w	r0, [r0, fp]
c0de954e:	b940      	cbnz	r0, c0de9562 <h_review_update_data+0x18e>
c0de9550:	f7ff fec8 	bl	c0de92e4 <h_paging_increase>
c0de9554:	eb09 0006 	add.w	r0, r9, r6
c0de9558:	f810 000b 	ldrb.w	r0, [r0, fp]
c0de955c:	2800      	cmp	r0, #0
c0de955e:	f43f af67 	beq.w	c0de9430 <h_review_update_data+0x5c>
c0de9562:	f000 f8c9 	bl	c0de96f8 <splitValueAddress>
c0de9566:	2003      	movs	r0, #3
c0de9568:	e007      	b.n	c0de957a <h_review_update_data+0x1a6>
c0de956a:	4806      	ldr	r0, [pc, #24]	; (c0de9584 <h_review_update_data+0x1b0>)
c0de956c:	4478      	add	r0, pc
c0de956e:	e001      	b.n	c0de9574 <h_review_update_data+0x1a0>
c0de9570:	4805      	ldr	r0, [pc, #20]	; (c0de9588 <h_review_update_data+0x1b4>)
c0de9572:	4478      	add	r0, pc
c0de9574:	f000 f9f2 	bl	c0de995c <zemu_log_stack>
c0de9578:	2005      	movs	r0, #5
c0de957a:	b008      	add	sp, #32
c0de957c:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de9580:	00005530 	.word	0x00005530
c0de9584:	00000978 	.word	0x00000978
c0de9588:	00000b81 	.word	0x00000b81
c0de958c:	000008cc 	.word	0x000008cc
c0de9590:	000007af 	.word	0x000007af

c0de9594 <ux_idle_flow_2_step_validateinit>:
c0de9594:	b580      	push	{r7, lr}
c0de9596:	f7f7 fd0d 	bl	c0de0fb4 <app_mode_expert>
c0de959a:	f080 0001 	eor.w	r0, r0, #1
c0de959e:	f7f7 fd15 	bl	c0de0fcc <app_mode_set_expert>
c0de95a2:	4904      	ldr	r1, [pc, #16]	; (c0de95b4 <ux_idle_flow_2_step_validateinit+0x20>)
c0de95a4:	4a04      	ldr	r2, [pc, #16]	; (c0de95b8 <ux_idle_flow_2_step_validateinit+0x24>)
c0de95a6:	4479      	add	r1, pc
c0de95a8:	447a      	add	r2, pc
c0de95aa:	2000      	movs	r0, #0
c0de95ac:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de95b0:	f7fe bf7e 	b.w	c0de84b0 <ux_flow_init>
c0de95b4:	0000398e 	.word	0x0000398e
c0de95b8:	00003904 	.word	0x00003904

c0de95bc <ux_idle_flow_2_step_init>:
c0de95bc:	b5b0      	push	{r4, r5, r7, lr}
c0de95be:	4a0f      	ldr	r2, [pc, #60]	; (c0de95fc <ux_idle_flow_2_step_init+0x40>)
c0de95c0:	4d0b      	ldr	r5, [pc, #44]	; (c0de95f0 <ux_idle_flow_2_step_init+0x34>)
c0de95c2:	447a      	add	r2, pc
c0de95c4:	ca18      	ldmia	r2!, {r3, r4}
c0de95c6:	eb09 0105 	add.w	r1, r9, r5
c0de95ca:	3140      	adds	r1, #64	; 0x40
c0de95cc:	7812      	ldrb	r2, [r2, #0]
c0de95ce:	c118      	stmia	r1!, {r3, r4}
c0de95d0:	4604      	mov	r4, r0
c0de95d2:	700a      	strb	r2, [r1, #0]
c0de95d4:	f7f7 fcee 	bl	c0de0fb4 <app_mode_expert>
c0de95d8:	b128      	cbz	r0, c0de95e6 <ux_idle_flow_2_step_init+0x2a>
c0de95da:	4907      	ldr	r1, [pc, #28]	; (c0de95f8 <ux_idle_flow_2_step_init+0x3c>)
c0de95dc:	4a05      	ldr	r2, [pc, #20]	; (c0de95f4 <ux_idle_flow_2_step_init+0x38>)
c0de95de:	eb09 0005 	add.w	r0, r9, r5
c0de95e2:	e9c0 1210 	strd	r1, r2, [r0, #64]	; 0x40
c0de95e6:	4620      	mov	r0, r4
c0de95e8:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de95ec:	f7ff b82c 	b.w	c0de8648 <ux_layout_bn_init>
c0de95f0:	00005530 	.word	0x00005530
c0de95f4:	0064656c 	.word	0x0064656c
c0de95f8:	62616e65 	.word	0x62616e65
c0de95fc:	00003892 	.word	0x00003892

c0de9600 <ux_idle_flow_6_step_validateinit>:
c0de9600:	20ff      	movs	r0, #255	; 0xff
c0de9602:	f7fc fadf 	bl	c0de5bc4 <os_sched_exit>

c0de9606 <ux_error_flow_2_step_validateinit>:
c0de9606:	2000      	movs	r0, #0
c0de9608:	f7ff bdc2 	b.w	c0de9190 <h_error_accept>

c0de960c <ux_review_flow_2_start_step_init>:
c0de960c:	b510      	push	{r4, lr}
c0de960e:	4c0f      	ldr	r4, [pc, #60]	; (c0de964c <ux_review_flow_2_start_step_init+0x40>)
c0de9610:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de9614:	b128      	cbz	r0, c0de9622 <ux_review_flow_2_start_step_init+0x16>
c0de9616:	f7ff fe97 	bl	c0de9348 <h_paging_can_decrease>
c0de961a:	b180      	cbz	r0, c0de963e <ux_review_flow_2_start_step_init+0x32>
c0de961c:	f7ff feb0 	bl	c0de9380 <h_paging_decrease>
c0de9620:	e001      	b.n	c0de9626 <ux_review_flow_2_start_step_init+0x1a>
c0de9622:	f7ff fc5d 	bl	c0de8ee0 <h_paging_init>
c0de9626:	f7ff fed5 	bl	c0de93d4 <h_review_update_data>
c0de962a:	2803      	cmp	r0, #3
c0de962c:	d003      	beq.n	c0de9636 <ux_review_flow_2_start_step_init+0x2a>
c0de962e:	2805      	cmp	r0, #5
c0de9630:	d001      	beq.n	c0de9636 <ux_review_flow_2_start_step_init+0x2a>
c0de9632:	f7ff fe3b 	bl	c0de92ac <view_error_show>
c0de9636:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de963a:	f7fe be3b 	b.w	c0de82b4 <ux_flow_next>
c0de963e:	2000      	movs	r0, #0
c0de9640:	f809 0004 	strb.w	r0, [r9, r4]
c0de9644:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de9648:	f7fe be38 	b.w	c0de82bc <ux_flow_prev>
c0de964c:	00006694 	.word	0x00006694

c0de9650 <ux_review_flow_2_step_init>:
c0de9650:	4902      	ldr	r1, [pc, #8]	; (c0de965c <ux_review_flow_2_step_init+0xc>)
c0de9652:	2201      	movs	r2, #1
c0de9654:	f809 2001 	strb.w	r2, [r9, r1]
c0de9658:	f7ff b9b4 	b.w	c0de89c4 <ux_layout_bn_paging_init>
c0de965c:	00006694 	.word	0x00006694

c0de9660 <ux_review_flow_2_end_step_init>:
c0de9660:	b510      	push	{r4, lr}
c0de9662:	4c18      	ldr	r4, [pc, #96]	; (c0de96c4 <ux_review_flow_2_end_step_init+0x64>)
c0de9664:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de9668:	b150      	cbz	r0, c0de9680 <ux_review_flow_2_end_step_init+0x20>
c0de966a:	f7ff fe3b 	bl	c0de92e4 <h_paging_increase>
c0de966e:	f7ff feb1 	bl	c0de93d4 <h_review_update_data>
c0de9672:	2805      	cmp	r0, #5
c0de9674:	d01f      	beq.n	c0de96b6 <ux_review_flow_2_end_step_init+0x56>
c0de9676:	2803      	cmp	r0, #3
c0de9678:	d10a      	bne.n	c0de9690 <ux_review_flow_2_end_step_init+0x30>
c0de967a:	f7ff f999 	bl	c0de89b0 <ux_layout_paging_reset>
c0de967e:	e009      	b.n	c0de9694 <ux_review_flow_2_end_step_init+0x34>
c0de9680:	f7ff fe7e 	bl	c0de9380 <h_paging_decrease>
c0de9684:	f7ff fea6 	bl	c0de93d4 <h_review_update_data>
c0de9688:	2803      	cmp	r0, #3
c0de968a:	d003      	beq.n	c0de9694 <ux_review_flow_2_end_step_init+0x34>
c0de968c:	2805      	cmp	r0, #5
c0de968e:	d001      	beq.n	c0de9694 <ux_review_flow_2_end_step_init+0x34>
c0de9690:	f7ff fe0c 	bl	c0de92ac <view_error_show>
c0de9694:	480c      	ldr	r0, [pc, #48]	; (c0de96c8 <ux_review_flow_2_end_step_init+0x68>)
c0de9696:	f819 1000 	ldrb.w	r1, [r9, r0]
c0de969a:	4448      	add	r0, r9
c0de969c:	eb01 0141 	add.w	r1, r1, r1, lsl #1
c0de96a0:	eb00 0081 	add.w	r0, r0, r1, lsl #2
c0de96a4:	8a81      	ldrh	r1, [r0, #20]
c0de96a6:	1e8a      	subs	r2, r1, #2
c0de96a8:	3901      	subs	r1, #1
c0de96aa:	82c2      	strh	r2, [r0, #22]
c0de96ac:	8281      	strh	r1, [r0, #20]
c0de96ae:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de96b2:	f7fe bf85 	b.w	c0de85c0 <ux_flow_relayout>
c0de96b6:	2000      	movs	r0, #0
c0de96b8:	f809 0004 	strb.w	r0, [r9, r4]
c0de96bc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de96c0:	f7fe bdf8 	b.w	c0de82b4 <ux_flow_next>
c0de96c4:	00006694 	.word	0x00006694
c0de96c8:	00006584 	.word	0x00006584

c0de96cc <ux_review_flow_3_step_validateinit>:
c0de96cc:	2000      	movs	r0, #0
c0de96ce:	f7ff bc39 	b.w	c0de8f44 <h_approve>
	...

c0de96d4 <ux_review_flow_4_step_validateinit>:
c0de96d4:	4802      	ldr	r0, [pc, #8]	; (c0de96e0 <ux_review_flow_4_step_validateinit+0xc>)
c0de96d6:	f859 0000 	ldr.w	r0, [r9, r0]
c0de96da:	f7ff bcc1 	b.w	c0de9060 <h_reject>
c0de96de:	bf00      	nop
c0de96e0:	0000552c 	.word	0x0000552c

c0de96e4 <ux_review_flow_5_step_validateinit>:
c0de96e4:	4902      	ldr	r1, [pc, #8]	; (c0de96f0 <ux_review_flow_5_step_validateinit+0xc>)
c0de96e6:	2002      	movs	r0, #2
c0de96e8:	4479      	add	r1, pc
c0de96ea:	f000 b865 	b.w	c0de97b8 <run_ux_review_flow>
c0de96ee:	bf00      	nop
c0de96f0:	00003968 	.word	0x00003968

c0de96f4 <ux_review_flow_5_step_init>:
c0de96f4:	f7ff ba5a 	b.w	c0de8bac <ux_layout_pb_init>

c0de96f8 <splitValueAddress>:
c0de96f8:	b510      	push	{r4, lr}
c0de96fa:	4c07      	ldr	r4, [pc, #28]	; (c0de9718 <splitValueAddress+0x20>)
c0de96fc:	eb09 0004 	add.w	r0, r9, r4
c0de9700:	3040      	adds	r0, #64	; 0x40
c0de9702:	f000 f995 	bl	c0de9a30 <strlen>
c0de9706:	0400      	lsls	r0, r0, #16
c0de9708:	bf18      	it	ne
c0de970a:	bd10      	popne	{r4, pc}
c0de970c:	eb09 0004 	add.w	r0, r9, r4
c0de9710:	2120      	movs	r1, #32
c0de9712:	f8a0 1040 	strh.w	r1, [r0, #64]	; 0x40
c0de9716:	bd10      	pop	{r4, pc}
c0de9718:	00005530 	.word	0x00005530

c0de971c <get_max_char_per_line>:
c0de971c:	f44f 5080 	mov.w	r0, #4096	; 0x1000
c0de9720:	4770      	bx	lr
	...

c0de9724 <view_idle_show_impl>:
c0de9724:	b580      	push	{r7, lr}
c0de9726:	b141      	cbz	r1, c0de973a <view_idle_show_impl+0x16>
c0de9728:	480e      	ldr	r0, [pc, #56]	; (c0de9764 <view_idle_show_impl+0x40>)
c0de972a:	4a11      	ldr	r2, [pc, #68]	; (c0de9770 <view_idle_show_impl+0x4c>)
c0de972c:	460b      	mov	r3, r1
c0de972e:	4448      	add	r0, r9
c0de9730:	447a      	add	r2, pc
c0de9732:	2140      	movs	r1, #64	; 0x40
c0de9734:	f7fa fb66 	bl	c0de3e04 <snprintf>
c0de9738:	e006      	b.n	c0de9748 <view_idle_show_impl+0x24>
c0de973a:	480a      	ldr	r0, [pc, #40]	; (c0de9764 <view_idle_show_impl+0x40>)
c0de973c:	490b      	ldr	r1, [pc, #44]	; (c0de976c <view_idle_show_impl+0x48>)
c0de973e:	4448      	add	r0, r9
c0de9740:	4479      	add	r1, pc
c0de9742:	2206      	movs	r2, #6
c0de9744:	f000 f90e 	bl	c0de9964 <__aeabi_memcpy>
c0de9748:	4807      	ldr	r0, [pc, #28]	; (c0de9768 <view_idle_show_impl+0x44>)
c0de974a:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de974e:	b908      	cbnz	r0, c0de9754 <view_idle_show_impl+0x30>
c0de9750:	f7ff faea 	bl	c0de8d28 <ux_stack_push>
c0de9754:	4907      	ldr	r1, [pc, #28]	; (c0de9774 <view_idle_show_impl+0x50>)
c0de9756:	2000      	movs	r0, #0
c0de9758:	4479      	add	r1, pc
c0de975a:	2200      	movs	r2, #0
c0de975c:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de9760:	f7fe bea6 	b.w	c0de84b0 <ux_flow_init>
c0de9764:	00005530 	.word	0x00005530
c0de9768:	00006584 	.word	0x00006584
c0de976c:	0000064c 	.word	0x0000064c
c0de9770:	00000512 	.word	0x00000512
c0de9774:	000037dc 	.word	0x000037dc

c0de9778 <view_review_show_impl>:
c0de9778:	b510      	push	{r4, lr}
c0de977a:	4c0c      	ldr	r4, [pc, #48]	; (c0de97ac <view_review_show_impl+0x34>)
c0de977c:	f849 0004 	str.w	r0, [r9, r4]
c0de9780:	f7ff fbae 	bl	c0de8ee0 <h_paging_init>
c0de9784:	f7ff fdfc 	bl	c0de9380 <h_paging_decrease>
c0de9788:	480a      	ldr	r0, [pc, #40]	; (c0de97b4 <view_review_show_impl+0x3c>)
c0de978a:	4909      	ldr	r1, [pc, #36]	; (c0de97b0 <view_review_show_impl+0x38>)
c0de978c:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de9790:	2200      	movs	r2, #0
c0de9792:	f809 2001 	strb.w	r2, [r9, r1]
c0de9796:	b908      	cbnz	r0, c0de979c <view_review_show_impl+0x24>
c0de9798:	f7ff fac6 	bl	c0de8d28 <ux_stack_push>
c0de979c:	f819 0004 	ldrb.w	r0, [r9, r4]
c0de97a0:	2100      	movs	r1, #0
c0de97a2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
c0de97a6:	f000 b807 	b.w	c0de97b8 <run_ux_review_flow>
c0de97aa:	bf00      	nop
c0de97ac:	0000552c 	.word	0x0000552c
c0de97b0:	00006694 	.word	0x00006694
c0de97b4:	00006584 	.word	0x00006584

c0de97b8 <run_ux_review_flow>:
c0de97b8:	b5b0      	push	{r4, r5, r7, lr}
c0de97ba:	2801      	cmp	r0, #1
c0de97bc:	460c      	mov	r4, r1
c0de97be:	d004      	beq.n	c0de97ca <run_ux_review_flow+0x12>
c0de97c0:	b948      	cbnz	r0, c0de97d6 <run_ux_review_flow+0x1e>
c0de97c2:	4920      	ldr	r1, [pc, #128]	; (c0de9844 <run_ux_review_flow+0x8c>)
c0de97c4:	481e      	ldr	r0, [pc, #120]	; (c0de9840 <run_ux_review_flow+0x88>)
c0de97c6:	4479      	add	r1, pc
c0de97c8:	e002      	b.n	c0de97d0 <run_ux_review_flow+0x18>
c0de97ca:	491f      	ldr	r1, [pc, #124]	; (c0de9848 <run_ux_review_flow+0x90>)
c0de97cc:	481c      	ldr	r0, [pc, #112]	; (c0de9840 <run_ux_review_flow+0x88>)
c0de97ce:	4479      	add	r1, pc
c0de97d0:	f849 1000 	str.w	r1, [r9, r0]
c0de97d4:	e00e      	b.n	c0de97f4 <run_ux_review_flow+0x3c>
c0de97d6:	481d      	ldr	r0, [pc, #116]	; (c0de984c <run_ux_review_flow+0x94>)
c0de97d8:	4d19      	ldr	r5, [pc, #100]	; (c0de9840 <run_ux_review_flow+0x88>)
c0de97da:	4478      	add	r0, pc
c0de97dc:	f849 0005 	str.w	r0, [r9, r5]
c0de97e0:	f7f7 fc0c 	bl	c0de0ffc <app_mode_shortcut>
c0de97e4:	b130      	cbz	r0, c0de97f4 <run_ux_review_flow+0x3c>
c0de97e6:	481a      	ldr	r0, [pc, #104]	; (c0de9850 <run_ux_review_flow+0x98>)
c0de97e8:	eb09 0105 	add.w	r1, r9, r5
c0de97ec:	4478      	add	r0, pc
c0de97ee:	6048      	str	r0, [r1, #4]
c0de97f0:	2002      	movs	r0, #2
c0de97f2:	e000      	b.n	c0de97f6 <run_ux_review_flow+0x3e>
c0de97f4:	2001      	movs	r0, #1
c0de97f6:	4912      	ldr	r1, [pc, #72]	; (c0de9840 <run_ux_review_flow+0x88>)
c0de97f8:	4b16      	ldr	r3, [pc, #88]	; (c0de9854 <run_ux_review_flow+0x9c>)
c0de97fa:	4449      	add	r1, r9
c0de97fc:	447b      	add	r3, pc
c0de97fe:	f841 3020 	str.w	r3, [r1, r0, lsl #2]
c0de9802:	4b15      	ldr	r3, [pc, #84]	; (c0de9858 <run_ux_review_flow+0xa0>)
c0de9804:	1c42      	adds	r2, r0, #1
c0de9806:	447b      	add	r3, pc
c0de9808:	f841 3022 	str.w	r3, [r1, r2, lsl #2]
c0de980c:	4a13      	ldr	r2, [pc, #76]	; (c0de985c <run_ux_review_flow+0xa4>)
c0de980e:	1c85      	adds	r5, r0, #2
c0de9810:	447a      	add	r2, pc
c0de9812:	f841 2025 	str.w	r2, [r1, r5, lsl #2]
c0de9816:	4a12      	ldr	r2, [pc, #72]	; (c0de9860 <run_ux_review_flow+0xa8>)
c0de9818:	1cc3      	adds	r3, r0, #3
c0de981a:	447a      	add	r2, pc
c0de981c:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
c0de9820:	4a10      	ldr	r2, [pc, #64]	; (c0de9864 <run_ux_review_flow+0xac>)
c0de9822:	1d05      	adds	r5, r0, #4
c0de9824:	447a      	add	r2, pc
c0de9826:	1d43      	adds	r3, r0, #5
c0de9828:	f841 2025 	str.w	r2, [r1, r5, lsl #2]
c0de982c:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
c0de9830:	2000      	movs	r0, #0
c0de9832:	4622      	mov	r2, r4
c0de9834:	f841 5023 	str.w	r5, [r1, r3, lsl #2]
c0de9838:	e8bd 40b0 	ldmia.w	sp!, {r4, r5, r7, lr}
c0de983c:	f7fe be38 	b.w	c0de84b0 <ux_flow_init>
c0de9840:	00006698 	.word	0x00006698
c0de9844:	00003822 	.word	0x00003822
c0de9848:	000037fe 	.word	0x000037fe
c0de984c:	000037d6 	.word	0x000037d6
c0de9850:	000038c4 	.word	0x000038c4
c0de9854:	000037fc 	.word	0x000037fc
c0de9858:	0000380a 	.word	0x0000380a
c0de985c:	00003810 	.word	0x00003810
c0de9860:	00003836 	.word	0x00003836
c0de9864:	0000385c 	.word	0x0000385c

c0de9868 <view_error_show_impl>:
c0de9868:	b580      	push	{r7, lr}
c0de986a:	f7ff f8a1 	bl	c0de89b0 <ux_layout_paging_reset>
c0de986e:	4807      	ldr	r0, [pc, #28]	; (c0de988c <view_error_show_impl+0x24>)
c0de9870:	f819 0000 	ldrb.w	r0, [r9, r0]
c0de9874:	b908      	cbnz	r0, c0de987a <view_error_show_impl+0x12>
c0de9876:	f7ff fa57 	bl	c0de8d28 <ux_stack_push>
c0de987a:	4905      	ldr	r1, [pc, #20]	; (c0de9890 <view_error_show_impl+0x28>)
c0de987c:	2000      	movs	r0, #0
c0de987e:	4479      	add	r1, pc
c0de9880:	2200      	movs	r2, #0
c0de9882:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
c0de9886:	f7fe be13 	b.w	c0de84b0 <ux_flow_init>
c0de988a:	bf00      	nop
c0de988c:	00006584 	.word	0x00006584
c0de9890:	0000371a 	.word	0x0000371a

c0de9894 <z_str3join>:
c0de9894:	e92d 4df0 	stmdb	sp!, {r4, r5, r6, r7, r8, sl, fp, lr}
c0de9898:	469b      	mov	fp, r3
c0de989a:	4690      	mov	r8, r2
c0de989c:	4604      	mov	r4, r0
c0de989e:	460e      	mov	r6, r1
c0de98a0:	b128      	cbz	r0, c0de98ae <z_str3join+0x1a>
c0de98a2:	4620      	mov	r0, r4
c0de98a4:	4631      	mov	r1, r6
c0de98a6:	f000 f8f2 	bl	c0de9a8e <strnlen>
c0de98aa:	4682      	mov	sl, r0
c0de98ac:	e001      	b.n	c0de98b2 <z_str3join+0x1e>
c0de98ae:	f04f 0a00 	mov.w	sl, #0
c0de98b2:	f1b8 0f00 	cmp.w	r8, #0
c0de98b6:	d005      	beq.n	c0de98c4 <z_str3join+0x30>
c0de98b8:	4640      	mov	r0, r8
c0de98ba:	4631      	mov	r1, r6
c0de98bc:	f000 f8e7 	bl	c0de9a8e <strnlen>
c0de98c0:	4607      	mov	r7, r0
c0de98c2:	e000      	b.n	c0de98c6 <z_str3join+0x32>
c0de98c4:	2700      	movs	r7, #0
c0de98c6:	f1bb 0f00 	cmp.w	fp, #0
c0de98ca:	d018      	beq.n	c0de98fe <z_str3join+0x6a>
c0de98cc:	4658      	mov	r0, fp
c0de98ce:	4631      	mov	r1, r6
c0de98d0:	f000 f8dd 	bl	c0de9a8e <strnlen>
c0de98d4:	4605      	mov	r5, r0
c0de98d6:	eb0a 0007 	add.w	r0, sl, r7
c0de98da:	4428      	add	r0, r5
c0de98dc:	3001      	adds	r0, #1
c0de98de:	42b0      	cmp	r0, r6
c0de98e0:	d812      	bhi.n	c0de9908 <z_str3join+0x74>
c0de98e2:	f04f 0600 	mov.w	r6, #0
c0de98e6:	b1cd      	cbz	r5, c0de991c <z_str3join+0x88>
c0de98e8:	eb04 000a 	add.w	r0, r4, sl
c0de98ec:	4659      	mov	r1, fp
c0de98ee:	462a      	mov	r2, r5
c0de98f0:	f000 f83a 	bl	c0de9968 <__aeabi_memmove>
c0de98f4:	eb05 000a 	add.w	r0, r5, sl
c0de98f8:	5426      	strb	r6, [r4, r0]
c0de98fa:	462e      	mov	r6, r5
c0de98fc:	e00e      	b.n	c0de991c <z_str3join+0x88>
c0de98fe:	eb0a 0007 	add.w	r0, sl, r7
c0de9902:	3001      	adds	r0, #1
c0de9904:	42b0      	cmp	r0, r6
c0de9906:	d908      	bls.n	c0de991a <z_str3join+0x86>
c0de9908:	4a0c      	ldr	r2, [pc, #48]	; (c0de993c <z_str3join+0xa8>)
c0de990a:	4620      	mov	r0, r4
c0de990c:	447a      	add	r2, pc
c0de990e:	4631      	mov	r1, r6
c0de9910:	f7fa fa78 	bl	c0de3e04 <snprintf>
c0de9914:	2006      	movs	r0, #6
c0de9916:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de991a:	2600      	movs	r6, #0
c0de991c:	b15f      	cbz	r7, c0de9936 <z_str3join+0xa2>
c0de991e:	eb0a 0106 	add.w	r1, sl, r6
c0de9922:	19e0      	adds	r0, r4, r7
c0de9924:	1c4a      	adds	r2, r1, #1
c0de9926:	4621      	mov	r1, r4
c0de9928:	f000 f81e 	bl	c0de9968 <__aeabi_memmove>
c0de992c:	4620      	mov	r0, r4
c0de992e:	4641      	mov	r1, r8
c0de9930:	463a      	mov	r2, r7
c0de9932:	f000 f819 	bl	c0de9968 <__aeabi_memmove>
c0de9936:	2003      	movs	r0, #3
c0de9938:	e8bd 8df0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, sl, fp, pc}
c0de993c:	00000810 	.word	0x00000810

c0de9940 <check_app_canary>:
c0de9940:	4804      	ldr	r0, [pc, #16]	; (c0de9954 <check_app_canary+0x14>)
c0de9942:	4905      	ldr	r1, [pc, #20]	; (c0de9958 <check_app_canary+0x18>)
c0de9944:	f859 0000 	ldr.w	r0, [r9, r0]
c0de9948:	4288      	cmp	r0, r1
c0de994a:	bf18      	it	ne
c0de994c:	f7f9 bef0 	bne.w	c0de3730 <io_seproxyhal_se_reset>
c0de9950:	4770      	bx	lr
c0de9952:	bf00      	nop
c0de9954:	000066c8 	.word	0x000066c8
c0de9958:	dead0031 	.word	0xdead0031

c0de995c <zemu_log_stack>:
c0de995c:	4770      	bx	lr

c0de995e <__aeabi_memclr>:
c0de995e:	2200      	movs	r2, #0
c0de9960:	f000 b804 	b.w	c0de996c <__aeabi_memset>

c0de9964 <__aeabi_memcpy>:
c0de9964:	f000 b81d 	b.w	c0de99a2 <memcpy>

c0de9968 <__aeabi_memmove>:
c0de9968:	f000 b828 	b.w	c0de99bc <memmove>

c0de996c <__aeabi_memset>:
c0de996c:	4613      	mov	r3, r2
c0de996e:	460a      	mov	r2, r1
c0de9970:	4619      	mov	r1, r3
c0de9972:	f000 b83d 	b.w	c0de99f0 <memset>

c0de9976 <explicit_bzero>:
c0de9976:	f000 b800 	b.w	c0de997a <bzero>

c0de997a <bzero>:
c0de997a:	460a      	mov	r2, r1
c0de997c:	2100      	movs	r1, #0
c0de997e:	f000 b837 	b.w	c0de99f0 <memset>

c0de9982 <memcmp>:
c0de9982:	3901      	subs	r1, #1
c0de9984:	4402      	add	r2, r0
c0de9986:	b510      	push	{r4, lr}
c0de9988:	4290      	cmp	r0, r2
c0de998a:	d101      	bne.n	c0de9990 <memcmp+0xe>
c0de998c:	2000      	movs	r0, #0
c0de998e:	e005      	b.n	c0de999c <memcmp+0x1a>
c0de9990:	7803      	ldrb	r3, [r0, #0]
c0de9992:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0de9996:	42a3      	cmp	r3, r4
c0de9998:	d001      	beq.n	c0de999e <memcmp+0x1c>
c0de999a:	1b18      	subs	r0, r3, r4
c0de999c:	bd10      	pop	{r4, pc}
c0de999e:	3001      	adds	r0, #1
c0de99a0:	e7f2      	b.n	c0de9988 <memcmp+0x6>

c0de99a2 <memcpy>:
c0de99a2:	440a      	add	r2, r1
c0de99a4:	1e43      	subs	r3, r0, #1
c0de99a6:	4291      	cmp	r1, r2
c0de99a8:	d100      	bne.n	c0de99ac <memcpy+0xa>
c0de99aa:	4770      	bx	lr
c0de99ac:	b510      	push	{r4, lr}
c0de99ae:	f811 4b01 	ldrb.w	r4, [r1], #1
c0de99b2:	4291      	cmp	r1, r2
c0de99b4:	f803 4f01 	strb.w	r4, [r3, #1]!
c0de99b8:	d1f9      	bne.n	c0de99ae <memcpy+0xc>
c0de99ba:	bd10      	pop	{r4, pc}

c0de99bc <memmove>:
c0de99bc:	4288      	cmp	r0, r1
c0de99be:	b510      	push	{r4, lr}
c0de99c0:	eb01 0402 	add.w	r4, r1, r2
c0de99c4:	d902      	bls.n	c0de99cc <memmove+0x10>
c0de99c6:	4284      	cmp	r4, r0
c0de99c8:	4623      	mov	r3, r4
c0de99ca:	d807      	bhi.n	c0de99dc <memmove+0x20>
c0de99cc:	1e43      	subs	r3, r0, #1
c0de99ce:	42a1      	cmp	r1, r4
c0de99d0:	d008      	beq.n	c0de99e4 <memmove+0x28>
c0de99d2:	f811 2b01 	ldrb.w	r2, [r1], #1
c0de99d6:	f803 2f01 	strb.w	r2, [r3, #1]!
c0de99da:	e7f8      	b.n	c0de99ce <memmove+0x12>
c0de99dc:	4402      	add	r2, r0
c0de99de:	4601      	mov	r1, r0
c0de99e0:	428a      	cmp	r2, r1
c0de99e2:	d100      	bne.n	c0de99e6 <memmove+0x2a>
c0de99e4:	bd10      	pop	{r4, pc}
c0de99e6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
c0de99ea:	f802 4d01 	strb.w	r4, [r2, #-1]!
c0de99ee:	e7f7      	b.n	c0de99e0 <memmove+0x24>

c0de99f0 <memset>:
c0de99f0:	4402      	add	r2, r0
c0de99f2:	4603      	mov	r3, r0
c0de99f4:	4293      	cmp	r3, r2
c0de99f6:	d100      	bne.n	c0de99fa <memset+0xa>
c0de99f8:	4770      	bx	lr
c0de99fa:	f803 1b01 	strb.w	r1, [r3], #1
c0de99fe:	e7f9      	b.n	c0de99f4 <memset+0x4>

c0de9a00 <setjmp>:
c0de9a00:	46ec      	mov	ip, sp
c0de9a02:	e8a0 5ff0 	stmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de9a06:	f04f 0000 	mov.w	r0, #0
c0de9a0a:	4770      	bx	lr

c0de9a0c <longjmp>:
c0de9a0c:	e8b0 5ff0 	ldmia.w	r0!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
c0de9a10:	46e5      	mov	sp, ip
c0de9a12:	0008      	movs	r0, r1
c0de9a14:	bf08      	it	eq
c0de9a16:	2001      	moveq	r0, #1
c0de9a18:	4770      	bx	lr
c0de9a1a:	bf00      	nop

c0de9a1c <strcmp>:
c0de9a1c:	f810 2b01 	ldrb.w	r2, [r0], #1
c0de9a20:	f811 3b01 	ldrb.w	r3, [r1], #1
c0de9a24:	2a01      	cmp	r2, #1
c0de9a26:	bf28      	it	cs
c0de9a28:	429a      	cmpcs	r2, r3
c0de9a2a:	d0f7      	beq.n	c0de9a1c <strcmp>
c0de9a2c:	1ad0      	subs	r0, r2, r3
c0de9a2e:	4770      	bx	lr

c0de9a30 <strlen>:
c0de9a30:	4603      	mov	r3, r0
c0de9a32:	f813 2b01 	ldrb.w	r2, [r3], #1
c0de9a36:	2a00      	cmp	r2, #0
c0de9a38:	d1fb      	bne.n	c0de9a32 <strlen+0x2>
c0de9a3a:	1a18      	subs	r0, r3, r0
c0de9a3c:	3801      	subs	r0, #1
c0de9a3e:	4770      	bx	lr

c0de9a40 <strncmp>:
c0de9a40:	4603      	mov	r3, r0
c0de9a42:	b510      	push	{r4, lr}
c0de9a44:	b172      	cbz	r2, c0de9a64 <strncmp+0x24>
c0de9a46:	3901      	subs	r1, #1
c0de9a48:	1884      	adds	r4, r0, r2
c0de9a4a:	f813 0b01 	ldrb.w	r0, [r3], #1
c0de9a4e:	f811 2f01 	ldrb.w	r2, [r1, #1]!
c0de9a52:	4290      	cmp	r0, r2
c0de9a54:	d101      	bne.n	c0de9a5a <strncmp+0x1a>
c0de9a56:	42a3      	cmp	r3, r4
c0de9a58:	d101      	bne.n	c0de9a5e <strncmp+0x1e>
c0de9a5a:	1a80      	subs	r0, r0, r2
c0de9a5c:	bd10      	pop	{r4, pc}
c0de9a5e:	2800      	cmp	r0, #0
c0de9a60:	d1f3      	bne.n	c0de9a4a <strncmp+0xa>
c0de9a62:	e7fa      	b.n	c0de9a5a <strncmp+0x1a>
c0de9a64:	4610      	mov	r0, r2
c0de9a66:	e7f9      	b.n	c0de9a5c <strncmp+0x1c>

c0de9a68 <strncpy>:
c0de9a68:	3901      	subs	r1, #1
c0de9a6a:	4603      	mov	r3, r0
c0de9a6c:	b510      	push	{r4, lr}
c0de9a6e:	b132      	cbz	r2, c0de9a7e <strncpy+0x16>
c0de9a70:	f811 4f01 	ldrb.w	r4, [r1, #1]!
c0de9a74:	3a01      	subs	r2, #1
c0de9a76:	f803 4b01 	strb.w	r4, [r3], #1
c0de9a7a:	2c00      	cmp	r4, #0
c0de9a7c:	d1f7      	bne.n	c0de9a6e <strncpy+0x6>
c0de9a7e:	441a      	add	r2, r3
c0de9a80:	2100      	movs	r1, #0
c0de9a82:	4293      	cmp	r3, r2
c0de9a84:	d100      	bne.n	c0de9a88 <strncpy+0x20>
c0de9a86:	bd10      	pop	{r4, pc}
c0de9a88:	f803 1b01 	strb.w	r1, [r3], #1
c0de9a8c:	e7f9      	b.n	c0de9a82 <strncpy+0x1a>

c0de9a8e <strnlen>:
c0de9a8e:	4602      	mov	r2, r0
c0de9a90:	4401      	add	r1, r0
c0de9a92:	b510      	push	{r4, lr}
c0de9a94:	428a      	cmp	r2, r1
c0de9a96:	4613      	mov	r3, r2
c0de9a98:	d003      	beq.n	c0de9aa2 <strnlen+0x14>
c0de9a9a:	781c      	ldrb	r4, [r3, #0]
c0de9a9c:	3201      	adds	r2, #1
c0de9a9e:	2c00      	cmp	r4, #0
c0de9aa0:	d1f8      	bne.n	c0de9a94 <strnlen+0x6>
c0de9aa2:	1a18      	subs	r0, r3, r0
c0de9aa4:	bd10      	pop	{r4, pc}

c0de9aa6 <strstr>:
c0de9aa6:	780a      	ldrb	r2, [r1, #0]
c0de9aa8:	b570      	push	{r4, r5, r6, lr}
c0de9aaa:	b96a      	cbnz	r2, c0de9ac8 <strstr+0x22>
c0de9aac:	bd70      	pop	{r4, r5, r6, pc}
c0de9aae:	429a      	cmp	r2, r3
c0de9ab0:	d109      	bne.n	c0de9ac6 <strstr+0x20>
c0de9ab2:	460c      	mov	r4, r1
c0de9ab4:	4605      	mov	r5, r0
c0de9ab6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
c0de9aba:	2b00      	cmp	r3, #0
c0de9abc:	d0f6      	beq.n	c0de9aac <strstr+0x6>
c0de9abe:	f815 6f01 	ldrb.w	r6, [r5, #1]!
c0de9ac2:	429e      	cmp	r6, r3
c0de9ac4:	d0f7      	beq.n	c0de9ab6 <strstr+0x10>
c0de9ac6:	3001      	adds	r0, #1
c0de9ac8:	7803      	ldrb	r3, [r0, #0]
c0de9aca:	2b00      	cmp	r3, #0
c0de9acc:	d1ef      	bne.n	c0de9aae <strstr+0x8>
c0de9ace:	4618      	mov	r0, r3
c0de9ad0:	e7ec      	b.n	c0de9aac <strstr+0x6>

c0de9ad2 <_ecode>:
c0de9ad2:	6425      	str	r5, [r4, #64]	; 0x40
c0de9ad4:	6d00      	ldr	r0, [r0, #80]	; 0x50
c0de9ad6:	6773      	str	r3, [r6, #116]	; 0x74
c0de9ad8:	2f73      	cmp	r7, #115	; 0x73
c0de9ada:	6e69      	ldr	r1, [r5, #100]	; 0x64
c0de9adc:	7570      	strb	r0, [r6, #21]
c0de9ade:	7374      	strb	r4, [r6, #13]
c0de9ae0:	632f      	str	r7, [r5, #48]	; 0x30
c0de9ae2:	696f      	ldr	r7, [r5, #20]
c0de9ae4:	736e      	strb	r6, [r5, #13]
c0de9ae6:	4e00      	ldr	r6, [pc, #0]	; (c0de9ae8 <_ecode+0x16>)
c0de9ae8:	206f      	movs	r0, #111	; 0x6f
c0de9aea:	7265      	strb	r5, [r4, #9]
c0de9aec:	6f72      	ldr	r2, [r6, #116]	; 0x74
c0de9aee:	0072      	lsls	r2, r6, #1
c0de9af0:	6964      	ldr	r4, [r4, #20]
c0de9af2:	7073      	strb	r3, [r6, #1]
c0de9af4:	616c      	str	r4, [r5, #20]
c0de9af6:	2079      	movs	r0, #121	; 0x79
c0de9af8:	6170      	str	r0, [r6, #20]
c0de9afa:	6567      	str	r7, [r4, #84]	; 0x54
c0de9afc:	6f20      	ldr	r0, [r4, #112]	; 0x70
c0de9afe:	7475      	strb	r5, [r6, #17]
c0de9b00:	6f20      	ldr	r0, [r4, #112]	; 0x70
c0de9b02:	2066      	movs	r0, #102	; 0x66
c0de9b04:	6172      	str	r2, [r6, #20]
c0de9b06:	676e      	str	r6, [r5, #116]	; 0x74
c0de9b08:	0065      	lsls	r5, r4, #1
c0de9b0a:	6566      	str	r6, [r4, #84]	; 0x54
c0de9b0c:	0065      	lsls	r5, r4, #1
c0de9b0e:	7325      	strb	r5, [r4, #12]
c0de9b10:	2820      	cmp	r0, #32
c0de9b12:	6425      	str	r5, [r4, #64]	; 0x40
c0de9b14:	252f      	movs	r5, #47	; 0x2f
c0de9b16:	2964      	cmp	r1, #100	; 0x64
c0de9b18:	6800      	ldr	r0, [r0, #0]
c0de9b1a:	615f      	str	r7, [r3, #20]
c0de9b1c:	7070      	strb	r0, [r6, #1]
c0de9b1e:	6f72      	ldr	r2, [r6, #116]	; 0x74
c0de9b20:	6576      	str	r6, [r6, #84]	; 0x54
c0de9b22:	6800      	ldr	r0, [r0, #0]
c0de9b24:	705f      	strb	r7, [r3, #1]
c0de9b26:	6761      	str	r1, [r4, #116]	; 0x74
c0de9b28:	6e69      	ldr	r1, [r5, #100]	; 0x64
c0de9b2a:	5f67      	ldrsh	r7, [r4, r5]
c0de9b2c:	6e69      	ldr	r1, [r5, #100]	; 0x64
c0de9b2e:	7263      	strb	r3, [r4, #9]
c0de9b30:	6165      	str	r5, [r4, #20]
c0de9b32:	6573      	str	r3, [r6, #84]	; 0x54
c0de9b34:	6800      	ldr	r0, [r0, #0]
c0de9b36:	705f      	strb	r7, [r3, #1]
c0de9b38:	6761      	str	r1, [r4, #116]	; 0x74
c0de9b3a:	6e69      	ldr	r1, [r5, #100]	; 0x64
c0de9b3c:	5f67      	ldrsh	r7, [r4, r5]
c0de9b3e:	6163      	str	r3, [r4, #20]
c0de9b40:	5f6e      	ldrsh	r6, [r5, r5]
c0de9b42:	6564      	str	r4, [r4, #84]	; 0x54
c0de9b44:	7263      	strb	r3, [r4, #9]
c0de9b46:	6165      	str	r5, [r4, #20]
c0de9b48:	6573      	str	r3, [r6, #84]	; 0x54
c0de9b4a:	4e20      	ldr	r6, [pc, #128]	; (c0de9bcc <_ecode+0xfa>)
c0de9b4c:	004f      	lsls	r7, r1, #1
c0de9b4e:	6544      	str	r4, [r0, #84]	; 0x54
c0de9b50:	6576      	str	r6, [r6, #84]	; 0x54
c0de9b52:	6f6c      	ldr	r4, [r5, #116]	; 0x74
c0de9b54:	6570      	str	r0, [r6, #84]	; 0x54
c0de9b56:	2064      	movs	r0, #100	; 0x64
c0de9b58:	7962      	ldrb	r2, [r4, #5]
c0de9b5a:	003a      	movs	r2, r7
c0de9b5c:	6b53      	ldr	r3, [r2, #52]	; 0x34
c0de9b5e:	7069      	strb	r1, [r5, #1]
c0de9b60:	6620      	str	r0, [r4, #96]	; 0x60
c0de9b62:	6569      	str	r1, [r5, #84]	; 0x54
c0de9b64:	646c      	str	r4, [r5, #68]	; 0x44
c0de9b66:	0073      	lsls	r3, r6, #1
c0de9b68:	736d      	strb	r5, [r5, #13]
c0de9b6a:	7367      	strb	r7, [r4, #13]
c0de9b6c:	762f      	strb	r7, [r5, #24]
c0de9b6e:	6c61      	ldr	r1, [r4, #68]	; 0x44
c0de9b70:	6575      	str	r5, [r6, #84]	; 0x54
c0de9b72:	612f      	str	r7, [r5, #16]
c0de9b74:	6f6d      	ldr	r5, [r5, #116]	; 0x74
c0de9b76:	6e75      	ldr	r5, [r6, #100]	; 0x64
c0de9b78:	0074      	lsls	r4, r6, #1
c0de9b7a:	6e55      	ldr	r5, [r2, #100]	; 0x64
c0de9b7c:	7865      	ldrb	r5, [r4, #1]
c0de9b7e:	6570      	str	r0, [r6, #84]	; 0x54
c0de9b80:	7463      	strb	r3, [r4, #17]
c0de9b82:	6465      	str	r5, [r4, #68]	; 0x44
c0de9b84:	6320      	str	r0, [r4, #48]	; 0x30
c0de9b86:	6168      	str	r0, [r5, #20]
c0de9b88:	6172      	str	r2, [r6, #20]
c0de9b8a:	7463      	strb	r3, [r4, #17]
c0de9b8c:	7265      	strb	r5, [r4, #9]
c0de9b8e:	0073      	lsls	r3, r6, #1
c0de9b90:	6e55      	ldr	r5, [r2, #100]	; 0x64
c0de9b92:	7865      	ldrb	r5, [r4, #1]
c0de9b94:	6570      	str	r0, [r6, #84]	; 0x54
c0de9b96:	7463      	strb	r3, [r4, #17]
c0de9b98:	6465      	str	r5, [r4, #68]	; 0x44
c0de9b9a:	6620      	str	r0, [r4, #96]	; 0x60
c0de9b9c:	6569      	str	r1, [r5, #84]	; 0x54
c0de9b9e:	646c      	str	r4, [r5, #68]	; 0x44
c0de9ba0:	5400      	strb	r0, [r0, r0]
c0de9ba2:	6172      	str	r2, [r6, #20]
c0de9ba4:	736e      	strb	r6, [r5, #13]
c0de9ba6:	6361      	str	r1, [r4, #52]	; 0x34
c0de9ba8:	6974      	ldr	r4, [r6, #20]
c0de9baa:	6e6f      	ldr	r7, [r5, #100]	; 0x64
c0de9bac:	6920      	ldr	r0, [r4, #16]
c0de9bae:	2073      	movs	r0, #115	; 0x73
c0de9bb0:	6f74      	ldr	r4, [r6, #116]	; 0x74
c0de9bb2:	206f      	movs	r0, #111	; 0x6f
c0de9bb4:	6962      	ldr	r2, [r4, #20]
c0de9bb6:	0067      	lsls	r7, r4, #1
c0de9bb8:	002f      	movs	r7, r5
c0de9bba:	534a      	strh	r2, [r1, r5]
c0de9bbc:	4e4f      	ldr	r6, [pc, #316]	; (c0de9cfc <_ecode+0x22a>)
c0de9bbe:	202e      	movs	r0, #46	; 0x2e
c0de9bc0:	6f54      	ldr	r4, [r2, #116]	; 0x74
c0de9bc2:	206f      	movs	r0, #111	; 0x6f
c0de9bc4:	616d      	str	r5, [r5, #20]
c0de9bc6:	796e      	ldrb	r6, [r5, #5]
c0de9bc8:	7420      	strb	r0, [r4, #16]
c0de9bca:	6b6f      	ldr	r7, [r5, #52]	; 0x34
c0de9bcc:	6e65      	ldr	r5, [r4, #100]	; 0x64
c0de9bce:	0073      	lsls	r3, r6, #1
c0de9bd0:	6e75      	ldr	r5, [r6, #100]	; 0x64
c0de9bd2:	7865      	ldrb	r5, [r4, #1]
c0de9bd4:	6570      	str	r0, [r6, #84]	; 0x54
c0de9bd6:	7463      	strb	r3, [r4, #17]
c0de9bd8:	6465      	str	r5, [r4, #68]	; 0x44
c0de9bda:	4320      	orrs	r0, r4
c0de9bdc:	4f42      	ldr	r7, [pc, #264]	; (c0de9ce8 <_ecode+0x216>)
c0de9bde:	2052      	movs	r0, #82	; 0x52
c0de9be0:	7265      	strb	r5, [r4, #9]
c0de9be2:	6f72      	ldr	r2, [r6, #116]	; 0x74
c0de9be4:	0072      	lsls	r2, r6, #1
c0de9be6:	6f63      	ldr	r3, [r4, #116]	; 0x74
c0de9be8:	746e      	strb	r6, [r5, #17]
c0de9bea:	7865      	ldrb	r5, [r4, #1]
c0de9bec:	2074      	movs	r0, #116	; 0x74
c0de9bee:	6e69      	ldr	r1, [r5, #100]	; 0x64
c0de9bf0:	6176      	str	r6, [r6, #20]
c0de9bf2:	696c      	ldr	r4, [r5, #20]
c0de9bf4:	2064      	movs	r0, #100	; 0x64
c0de9bf6:	6863      	ldr	r3, [r4, #4]
c0de9bf8:	7261      	strb	r1, [r4, #9]
c0de9bfa:	0073      	lsls	r3, r6, #1
c0de9bfc:	2e25      	cmp	r6, #37	; 0x25
c0de9bfe:	732a      	strb	r2, [r5, #12]
c0de9c00:	4a00      	ldr	r2, [pc, #0]	; (c0de9c04 <_ecode+0x132>)
c0de9c02:	4f53      	ldr	r7, [pc, #332]	; (c0de9d50 <_ecode+0x27e>)
c0de9c04:	204e      	movs	r0, #78	; 0x4e
c0de9c06:	694d      	ldr	r5, [r1, #20]
c0de9c08:	7373      	strb	r3, [r6, #13]
c0de9c0a:	6e69      	ldr	r1, [r5, #100]	; 0x64
c0de9c0c:	2067      	movs	r0, #103	; 0x67
c0de9c0e:	736d      	strb	r5, [r5, #13]
c0de9c10:	7367      	strb	r7, [r4, #13]
c0de9c12:	4a00      	ldr	r2, [pc, #0]	; (c0de9c14 <_ecode+0x142>)
c0de9c14:	4f53      	ldr	r7, [pc, #332]	; (c0de9d64 <_ecode+0x292>)
c0de9c16:	204e      	movs	r0, #78	; 0x4e
c0de9c18:	6e55      	ldr	r5, [r2, #100]	; 0x64
c0de9c1a:	7865      	ldrb	r5, [r4, #1]
c0de9c1c:	6570      	str	r0, [r6, #84]	; 0x54
c0de9c1e:	7463      	strb	r3, [r4, #17]
c0de9c20:	6465      	str	r5, [r4, #68]	; 0x44
c0de9c22:	6520      	str	r0, [r4, #80]	; 0x50
c0de9c24:	7272      	strb	r2, [r6, #9]
c0de9c26:	726f      	strb	r7, [r5, #9]
c0de9c28:	6300      	str	r0, [r0, #48]	; 0x30
c0de9c2a:	6168      	str	r0, [r5, #20]
c0de9c2c:	6e69      	ldr	r1, [r5, #100]	; 0x64
c0de9c2e:	695f      	ldr	r7, [r3, #20]
c0de9c30:	0064      	lsls	r4, r4, #1
c0de9c32:	2520      	movs	r5, #32
c0de9c34:	0073      	lsls	r3, r6, #1
c0de9c36:	5f68      	ldrsh	r0, [r5, r5]
c0de9c38:	6170      	str	r0, [r6, #20]
c0de9c3a:	6967      	ldr	r7, [r4, #20]
c0de9c3c:	676e      	str	r6, [r5, #116]	; 0x74
c0de9c3e:	695f      	ldr	r7, [r3, #20]
c0de9c40:	696e      	ldr	r6, [r5, #20]
c0de9c42:	0074      	lsls	r4, r6, #1
c0de9c44:	0020      	movs	r0, r4
c0de9c46:	7325      	strb	r5, [r4, #12]
c0de9c48:	6400      	str	r0, [r0, #64]	; 0x40
c0de9c4a:	7369      	strb	r1, [r5, #13]
c0de9c4c:	6c70      	ldr	r0, [r6, #68]	; 0x44
c0de9c4e:	7961      	ldrb	r1, [r4, #5]
c0de9c50:	6920      	ldr	r0, [r4, #16]
c0de9c52:	646e      	str	r6, [r5, #68]	; 0x44
c0de9c54:	7865      	ldrb	r5, [r4, #1]
c0de9c56:	6f20      	ldr	r0, [r4, #112]	; 0x70
c0de9c58:	7475      	strb	r5, [r6, #17]
c0de9c5a:	6f20      	ldr	r0, [r4, #112]	; 0x70
c0de9c5c:	2066      	movs	r0, #102	; 0x66
c0de9c5e:	6172      	str	r2, [r6, #20]
c0de9c60:	676e      	str	r6, [r5, #116]	; 0x74
c0de9c62:	0065      	lsls	r5, r4, #1
c0de9c64:	6f63      	ldr	r3, [r4, #116]	; 0x74
c0de9c66:	746e      	strb	r6, [r5, #17]
c0de9c68:	7865      	ldrb	r5, [r4, #1]
c0de9c6a:	2074      	movs	r0, #116	; 0x74
c0de9c6c:	6e75      	ldr	r5, [r6, #100]	; 0x64
c0de9c6e:	7865      	ldrb	r5, [r4, #1]
c0de9c70:	6570      	str	r0, [r6, #84]	; 0x54
c0de9c72:	7463      	strb	r3, [r4, #17]
c0de9c74:	6465      	str	r5, [r4, #68]	; 0x44
c0de9c76:	7320      	strb	r0, [r4, #12]
c0de9c78:	7a69      	ldrb	r1, [r5, #9]
c0de9c7a:	0065      	lsls	r5, r4, #1
c0de9c7c:	4544      	cmp	r4, r8
c0de9c7e:	4146      	adcs	r6, r0
c0de9c80:	4c55      	ldr	r4, [pc, #340]	; (c0de9dd8 <_ecode+0x306>)
c0de9c82:	2054      	movs	r0, #84	; 0x54
c0de9c84:	6843      	ldr	r3, [r0, #4]
c0de9c86:	6961      	ldr	r1, [r4, #20]
c0de9c88:	206e      	movs	r0, #110	; 0x6e
c0de9c8a:	5600      	ldrsb	r0, [r0, r0]
c0de9c8c:	7265      	strb	r5, [r4, #9]
c0de9c8e:	6973      	ldr	r3, [r6, #20]
c0de9c90:	6e6f      	ldr	r7, [r5, #100]	; 0x64
c0de9c92:	003a      	movs	r2, r7
c0de9c94:	6e55      	ldr	r5, [r2, #100]	; 0x64
c0de9c96:	7865      	ldrb	r5, [r4, #1]
c0de9c98:	6570      	str	r0, [r6, #84]	; 0x54
c0de9c9a:	7463      	strb	r3, [r4, #17]
c0de9c9c:	6465      	str	r5, [r4, #68]	; 0x44
c0de9c9e:	4320      	orrs	r0, r4
c0de9ca0:	4f42      	ldr	r7, [pc, #264]	; (c0de9dac <_ecode+0x2da>)
c0de9ca2:	2052      	movs	r0, #82	; 0x52
c0de9ca4:	4f45      	ldr	r7, [pc, #276]	; (c0de9dbc <_ecode+0x2ea>)
c0de9ca6:	0046      	lsls	r6, r0, #1
c0de9ca8:	6f63      	ldr	r3, [r4, #116]	; 0x74
c0de9caa:	746e      	strb	r6, [r5, #17]
c0de9cac:	7865      	ldrb	r5, [r4, #1]
c0de9cae:	2074      	movs	r0, #116	; 0x74
c0de9cb0:	7270      	strb	r0, [r6, #9]
c0de9cb2:	6665      	str	r5, [r4, #100]	; 0x64
c0de9cb4:	7869      	ldrb	r1, [r5, #1]
c0de9cb6:	6920      	ldr	r0, [r4, #16]
c0de9cb8:	2073      	movs	r0, #115	; 0x73
c0de9cba:	6e69      	ldr	r1, [r5, #100]	; 0x64
c0de9cbc:	6176      	str	r6, [r6, #20]
c0de9cbe:	696c      	ldr	r4, [r5, #20]
c0de9cc0:	0064      	lsls	r4, r4, #1
c0de9cc2:	6843      	ldr	r3, [r0, #4]
c0de9cc4:	6961      	ldr	r1, [r4, #20]
c0de9cc6:	206e      	movs	r0, #110	; 0x6e
c0de9cc8:	7369      	strb	r1, [r5, #13]
c0de9cca:	4e20      	ldr	r6, [pc, #128]	; (c0de9d4c <_ecode+0x27a>)
c0de9ccc:	544f      	strb	r7, [r1, r1]
c0de9cce:	4420      	add	r0, r4
c0de9cd0:	4645      	mov	r5, r8
c0de9cd2:	5541      	strb	r1, [r0, r5]
c0de9cd4:	544c      	strb	r4, [r1, r1]
c0de9cd6:	6800      	ldr	r0, [r0, #0]
c0de9cd8:	725f      	strb	r7, [r3, #9]
c0de9cda:	6a65      	ldr	r5, [r4, #36]	; 0x24
c0de9cdc:	6365      	str	r5, [r4, #52]	; 0x34
c0de9cde:	0074      	lsls	r4, r6, #1
c0de9ce0:	7075      	strb	r5, [r6, #1]
c0de9ce2:	6164      	str	r4, [r4, #20]
c0de9ce4:	6574      	str	r4, [r6, #84]	; 0x54
c0de9ce6:	4920      	ldr	r1, [pc, #128]	; (c0de9d68 <_ecode+0x296>)
c0de9ce8:	7864      	ldrb	r4, [r4, #1]
c0de9cea:	2520      	movs	r5, #32
c0de9cec:	2f64      	cmp	r7, #100	; 0x64
c0de9cee:	6425      	str	r5, [r4, #64]	; 0x40
c0de9cf0:	2000      	movs	r0, #0
c0de9cf2:	255b      	movs	r5, #91	; 0x5b
c0de9cf4:	2f64      	cmp	r7, #100	; 0x64
c0de9cf6:	6425      	str	r5, [r4, #64]	; 0x40
c0de9cf8:	005d      	lsls	r5, r3, #1
c0de9cfa:	6d61      	ldr	r1, [r4, #84]	; 0x54
c0de9cfc:	756f      	strb	r7, [r5, #21]
c0de9cfe:	746e      	strb	r6, [r5, #17]
c0de9d00:	4d00      	ldr	r5, [pc, #0]	; (c0de9d04 <_ecode+0x232>)
c0de9d02:	6c75      	ldr	r5, [r6, #68]	; 0x44
c0de9d04:	6974      	ldr	r4, [r6, #20]
c0de9d06:	7200      	strb	r0, [r0, #8]
c0de9d08:	7665      	strb	r5, [r4, #25]
c0de9d0a:	6569      	str	r1, [r5, #84]	; 0x54
c0de9d0c:	0077      	lsls	r7, r6, #1
c0de9d0e:	6156      	str	r6, [r2, #20]
c0de9d10:	756c      	strb	r4, [r5, #21]
c0de9d12:	2065      	movs	r0, #101	; 0x65
c0de9d14:	756f      	strb	r7, [r5, #21]
c0de9d16:	2074      	movs	r0, #116	; 0x74
c0de9d18:	666f      	str	r7, [r5, #100]	; 0x64
c0de9d1a:	7220      	strb	r0, [r4, #8]
c0de9d1c:	6e61      	ldr	r1, [r4, #100]	; 0x64
c0de9d1e:	6567      	str	r7, [r4, #84]	; 0x54
c0de9d20:	6d00      	ldr	r0, [r0, #80]	; 0x50
c0de9d22:	7369      	strb	r1, [r5, #13]
c0de9d24:	6973      	ldr	r3, [r6, #20]
c0de9d26:	676e      	str	r6, [r5, #116]	; 0x74
c0de9d28:	6620      	str	r0, [r4, #96]	; 0x60
c0de9d2a:	6569      	str	r1, [r5, #84]	; 0x54
c0de9d2c:	646c      	str	r4, [r5, #68]	; 0x44
c0de9d2e:	6d00      	ldr	r0, [r0, #80]	; 0x50
c0de9d30:	6773      	str	r3, [r6, #116]	; 0x74
c0de9d32:	0073      	lsls	r3, r6, #1
c0de9d34:	5f68      	ldrsh	r0, [r5, r5]
c0de9d36:	6170      	str	r0, [r6, #20]
c0de9d38:	6967      	ldr	r7, [r4, #20]
c0de9d3a:	676e      	str	r6, [r5, #116]	; 0x74
c0de9d3c:	635f      	str	r7, [r3, #52]	; 0x34
c0de9d3e:	6e61      	ldr	r1, [r4, #100]	; 0x64
c0de9d40:	645f      	str	r7, [r3, #68]	; 0x44
c0de9d42:	6365      	str	r5, [r4, #52]	; 0x34
c0de9d44:	6572      	str	r2, [r6, #84]	; 0x54
c0de9d46:	7361      	strb	r1, [r4, #13]
c0de9d48:	0065      	lsls	r5, r4, #1
c0de9d4a:	4f43      	ldr	r7, [pc, #268]	; (c0de9e58 <_ecode+0x386>)
c0de9d4c:	4552      	cmp	r2, sl
c0de9d4e:	5500      	strb	r0, [r0, r4]
c0de9d50:	656e      	str	r6, [r5, #84]	; 0x54
c0de9d52:	7078      	strb	r0, [r7, #1]
c0de9d54:	6365      	str	r5, [r4, #52]	; 0x34
c0de9d56:	6574      	str	r4, [r6, #84]	; 0x54
c0de9d58:	2064      	movs	r0, #100	; 0x64
c0de9d5a:	6863      	ldr	r3, [r4, #4]
c0de9d5c:	6961      	ldr	r1, [r4, #20]
c0de9d5e:	006e      	lsls	r6, r5, #1
c0de9d60:	534a      	strh	r2, [r1, r5]
c0de9d62:	4e4f      	ldr	r6, [pc, #316]	; (c0de9ea0 <_ecode+0x3ce>)
c0de9d64:	7320      	strb	r0, [r4, #12]
c0de9d66:	7274      	strb	r4, [r6, #9]
c0de9d68:	6e69      	ldr	r1, [r5, #100]	; 0x64
c0de9d6a:	2067      	movs	r0, #103	; 0x67
c0de9d6c:	7369      	strb	r1, [r5, #13]
c0de9d6e:	6e20      	ldr	r0, [r4, #96]	; 0x60
c0de9d70:	746f      	strb	r7, [r5, #17]
c0de9d72:	6320      	str	r0, [r4, #48]	; 0x30
c0de9d74:	6d6f      	ldr	r7, [r5, #84]	; 0x54
c0de9d76:	6c70      	ldr	r0, [r6, #68]	; 0x44
c0de9d78:	7465      	strb	r5, [r4, #17]
c0de9d7a:	0065      	lsls	r5, r4, #1
c0de9d7c:	003f      	movs	r7, r7
c0de9d7e:	6170      	str	r0, [r6, #20]
c0de9d80:	6567      	str	r7, [r4, #84]	; 0x54
c0de9d82:	2d2d      	cmp	r5, #45	; 0x2d
c0de9d84:	4100      	asrs	r0, r0
c0de9d86:	6170      	str	r0, [r6, #20]
c0de9d88:	6863      	ldr	r3, [r4, #4]
c0de9d8a:	2065      	movs	r0, #101	; 0x65
c0de9d8c:	2e32      	cmp	r6, #50	; 0x32
c0de9d8e:	0030      	movs	r0, r6
c0de9d90:	6552      	str	r2, [r2, #84]	; 0x54
c0de9d92:	6461      	str	r1, [r4, #68]	; 0x44
c0de9d94:	0079      	lsls	r1, r7, #1
c0de9d96:	0027      	movs	r7, r4
c0de9d98:	6974      	ldr	r4, [r6, #20]
c0de9d9a:	0070      	lsls	r0, r6, #1
c0de9d9c:	7469      	strb	r1, [r5, #17]
c0de9d9e:	6d65      	ldr	r5, [r4, #84]	; 0x54
c0de9da0:	2d2d      	cmp	r5, #45	; 0x2d
c0de9da2:	7400      	strb	r0, [r0, #16]
c0de9da4:	7069      	strb	r1, [r5, #1]
c0de9da6:	612f      	str	r7, [r5, #16]
c0de9da8:	6f6d      	ldr	r5, [r5, #116]	; 0x74
c0de9daa:	6e75      	ldr	r5, [r6, #100]	; 0x64
c0de9dac:	0074      	lsls	r4, r6, #1
c0de9dae:	534a      	strh	r2, [r1, r5]
c0de9db0:	4e4f      	ldr	r6, [pc, #316]	; (c0de9ef0 <_ecode+0x41e>)
c0de9db2:	4d20      	ldr	r5, [pc, #128]	; (c0de9e34 <_ecode+0x362>)
c0de9db4:	7369      	strb	r1, [r5, #13]
c0de9db6:	6973      	ldr	r3, [r6, #20]
c0de9db8:	676e      	str	r6, [r5, #116]	; 0x74
c0de9dba:	6320      	str	r0, [r4, #48]	; 0x30
c0de9dbc:	6168      	str	r0, [r5, #20]
c0de9dbe:	6e69      	ldr	r1, [r5, #100]	; 0x64
c0de9dc0:	695f      	ldr	r7, [r3, #20]
c0de9dc2:	0064      	lsls	r4, r4, #1
c0de9dc4:	7071      	strb	r1, [r6, #1]
c0de9dc6:	727a      	strb	r2, [r7, #9]
c0de9dc8:	3979      	subs	r1, #121	; 0x79
c0de9dca:	3878      	subs	r0, #120	; 0x78
c0de9dcc:	6667      	str	r7, [r4, #100]	; 0x64
c0de9dce:	7432      	strb	r2, [r6, #16]
c0de9dd0:	6476      	str	r6, [r6, #68]	; 0x44
c0de9dd2:	3077      	adds	r0, #119	; 0x77
c0de9dd4:	3373      	adds	r3, #115	; 0x73
c0de9dd6:	6e6a      	ldr	r2, [r5, #100]	; 0x64
c0de9dd8:	3435      	adds	r4, #53	; 0x35
c0de9dda:	686b      	ldr	r3, [r5, #4]
c0de9ddc:	6563      	str	r3, [r4, #84]	; 0x54
c0de9dde:	6d36      	ldr	r6, [r6, #80]	; 0x50
c0de9de0:	6175      	str	r5, [r6, #20]
c0de9de2:	6c37      	ldr	r7, [r6, #64]	; 0x40
c0de9de4:	7300      	strb	r0, [r0, #12]
c0de9de6:	7165      	strb	r5, [r4, #5]
c0de9de8:	6575      	str	r5, [r6, #84]	; 0x54
c0de9dea:	636e      	str	r6, [r5, #52]	; 0x34
c0de9dec:	0065      	lsls	r5, r4, #1
c0de9dee:	7845      	ldrb	r5, [r0, #1]
c0de9df0:	6570      	str	r0, [r6, #84]	; 0x54
c0de9df2:	7472      	strb	r2, [r6, #17]
c0de9df4:	6d20      	ldr	r0, [r4, #80]	; 0x50
c0de9df6:	646f      	str	r7, [r5, #68]	; 0x44
c0de9df8:	3a65      	subs	r2, #101	; 0x65
c0de9dfa:	3e00      	subs	r6, #0
c0de9dfc:	4500      	cmp	r0, r0
c0de9dfe:	706d      	strb	r5, [r5, #1]
c0de9e00:	7974      	ldrb	r4, [r6, #5]
c0de9e02:	4a00      	ldr	r2, [pc, #0]	; (c0de9e04 <_ecode+0x332>)
c0de9e04:	4f53      	ldr	r7, [pc, #332]	; (c0de9f54 <_ecode+0x482>)
c0de9e06:	204e      	movs	r0, #78	; 0x4e
c0de9e08:	694d      	ldr	r5, [r1, #20]
c0de9e0a:	7373      	strb	r3, [r6, #13]
c0de9e0c:	6e69      	ldr	r1, [r5, #100]	; 0x64
c0de9e0e:	2067      	movs	r0, #103	; 0x67
c0de9e10:	656d      	str	r5, [r5, #84]	; 0x54
c0de9e12:	6f6d      	ldr	r5, [r5, #116]	; 0x74
c0de9e14:	6d00      	ldr	r0, [r0, #80]	; 0x50
c0de9e16:	6773      	str	r3, [r6, #116]	; 0x74
c0de9e18:	2f73      	cmp	r7, #115	; 0x73
c0de9e1a:	7974      	ldrb	r4, [r6, #5]
c0de9e1c:	6570      	str	r0, [r6, #84]	; 0x54
c0de9e1e:	4a00      	ldr	r2, [pc, #0]	; (c0de9e20 <_ecode+0x34e>)
c0de9e20:	4f53      	ldr	r7, [pc, #332]	; (c0de9f70 <_ecode+0x49e>)
c0de9e22:	204e      	movs	r0, #78	; 0x4e
c0de9e24:	6944      	ldr	r4, [r0, #20]
c0de9e26:	7463      	strb	r3, [r4, #17]
c0de9e28:	6f69      	ldr	r1, [r5, #116]	; 0x74
c0de9e2a:	616e      	str	r6, [r5, #20]
c0de9e2c:	6972      	ldr	r2, [r6, #20]
c0de9e2e:	7365      	strb	r5, [r4, #13]
c0de9e30:	6120      	str	r0, [r4, #16]
c0de9e32:	6572      	str	r2, [r6, #84]	; 0x54
c0de9e34:	6e20      	ldr	r0, [r4, #96]	; 0x60
c0de9e36:	746f      	strb	r7, [r5, #17]
c0de9e38:	7320      	strb	r0, [r4, #12]
c0de9e3a:	726f      	strb	r7, [r5, #9]
c0de9e3c:	6574      	str	r4, [r6, #84]	; 0x54
c0de9e3e:	0064      	lsls	r4, r4, #1
c0de9e40:	6f63      	ldr	r3, [r4, #116]	; 0x74
c0de9e42:	666e      	str	r6, [r5, #100]	; 0x64
c0de9e44:	6769      	str	r1, [r5, #116]	; 0x74
c0de9e46:	7275      	strb	r5, [r6, #9]
c0de9e48:	7461      	strb	r1, [r4, #17]
c0de9e4a:	6f69      	ldr	r1, [r5, #116]	; 0x74
c0de9e4c:	006e      	lsls	r6, r5, #1
c0de9e4e:	6f43      	ldr	r3, [r0, #116]	; 0x74
c0de9e50:	6572      	str	r2, [r6, #84]	; 0x54
c0de9e52:	6d75      	ldr	r5, [r6, #84]	; 0x54
c0de9e54:	7500      	strb	r0, [r0, #20]
c0de9e56:	656e      	str	r6, [r5, #84]	; 0x54
c0de9e58:	7078      	strb	r0, [r7, #1]
c0de9e5a:	6365      	str	r5, [r4, #52]	; 0x34
c0de9e5c:	6574      	str	r4, [r6, #84]	; 0x54
c0de9e5e:	2064      	movs	r0, #100	; 0x64
c0de9e60:	7974      	ldrb	r4, [r6, #5]
c0de9e62:	6570      	str	r0, [r6, #84]	; 0x54
c0de9e64:	3000      	adds	r0, #0
c0de9e66:	3231      	adds	r2, #49	; 0x31
c0de9e68:	3433      	adds	r4, #51	; 0x33
c0de9e6a:	3635      	adds	r6, #53	; 0x35
c0de9e6c:	3837      	subs	r0, #55	; 0x37
c0de9e6e:	6139      	str	r1, [r7, #16]
c0de9e70:	6362      	str	r2, [r4, #52]	; 0x34
c0de9e72:	6564      	str	r4, [r4, #84]	; 0x54
c0de9e74:	0066      	lsls	r6, r4, #1
c0de9e76:	5245      	strh	r5, [r0, r1]
c0de9e78:	4f52      	ldr	r7, [pc, #328]	; (c0de9fc4 <_ecode+0x4f2>)
c0de9e7a:	0052      	lsls	r2, r2, #1
c0de9e7c:	736d      	strb	r5, [r5, #13]
c0de9e7e:	7367      	strb	r7, [r4, #13]
c0de9e80:	762f      	strb	r7, [r5, #24]
c0de9e82:	6c61      	ldr	r1, [r4, #68]	; 0x44
c0de9e84:	6575      	str	r5, [r6, #84]	; 0x54
c0de9e86:	692f      	ldr	r7, [r5, #16]
c0de9e88:	706e      	strb	r6, [r5, #1]
c0de9e8a:	7475      	strb	r5, [r6, #17]
c0de9e8c:	2f73      	cmp	r7, #115	; 0x73
c0de9e8e:	6f63      	ldr	r3, [r4, #116]	; 0x74
c0de9e90:	6e69      	ldr	r1, [r5, #100]	; 0x64
c0de9e92:	0073      	lsls	r3, r6, #1
c0de9e94:	534a      	strh	r2, [r1, r5]
c0de9e96:	4e4f      	ldr	r6, [pc, #316]	; (c0de9fd4 <_ecode+0x502>)
c0de9e98:	4d20      	ldr	r5, [pc, #128]	; (c0de9f1c <_ecode+0x44a>)
c0de9e9a:	7369      	strb	r1, [r5, #13]
c0de9e9c:	6973      	ldr	r3, [r6, #20]
c0de9e9e:	676e      	str	r6, [r5, #116]	; 0x74
c0de9ea0:	7320      	strb	r0, [r4, #12]
c0de9ea2:	7165      	strb	r5, [r4, #5]
c0de9ea4:	6575      	str	r5, [r6, #84]	; 0x54
c0de9ea6:	636e      	str	r6, [r5, #52]	; 0x34
c0de9ea8:	0065      	lsls	r5, r4, #1
c0de9eaa:	656d      	str	r5, [r5, #84]	; 0x54
c0de9eac:	6f6d      	ldr	r5, [r5, #116]	; 0x74
c0de9eae:	6300      	str	r0, [r0, #48]	; 0x30
c0de9eb0:	726f      	strb	r7, [r5, #9]
c0de9eb2:	7565      	strb	r5, [r4, #21]
c0de9eb4:	2d6d      	cmp	r5, #109	; 0x6d
c0de9eb6:	616d      	str	r5, [r5, #20]
c0de9eb8:	6e69      	ldr	r1, [r5, #100]	; 0x64
c0de9eba:	656e      	str	r6, [r5, #84]	; 0x54
c0de9ebc:	2d74      	cmp	r5, #116	; 0x74
c0de9ebe:	0031      	movs	r1, r6
c0de9ec0:	5041      	str	r1, [r0, r1]
c0de9ec2:	5250      	strh	r0, [r2, r1]
c0de9ec4:	564f      	ldrsb	r7, [r1, r1]
c0de9ec6:	0045      	lsls	r5, r0, #1
c0de9ec8:	2e2e      	cmp	r6, #46	; 0x2e
c0de9eca:	002e      	movs	r6, r5
c0de9ecc:	534a      	strh	r2, [r1, r5]
c0de9ece:	4e4f      	ldr	r6, [pc, #316]	; (c0dea00c <_ecode+0x53a>)
c0de9ed0:	4d20      	ldr	r5, [pc, #128]	; (c0de9f54 <_ecode+0x482>)
c0de9ed2:	7369      	strb	r1, [r5, #13]
c0de9ed4:	6973      	ldr	r3, [r6, #20]
c0de9ed6:	676e      	str	r6, [r5, #116]	; 0x74
c0de9ed8:	6120      	str	r0, [r4, #16]
c0de9eda:	6363      	str	r3, [r4, #52]	; 0x34
c0de9edc:	756f      	strb	r7, [r5, #21]
c0de9ede:	746e      	strb	r6, [r5, #17]
c0de9ee0:	6e20      	ldr	r0, [r4, #96]	; 0x60
c0de9ee2:	6d75      	ldr	r5, [r6, #84]	; 0x54
c0de9ee4:	6562      	str	r2, [r4, #84]	; 0x54
c0de9ee6:	0072      	lsls	r2, r6, #1
c0de9ee8:	5f68      	ldrsh	r0, [r5, r5]
c0de9eea:	6572      	str	r2, [r6, #84]	; 0x54
c0de9eec:	6976      	ldr	r6, [r6, #20]
c0de9eee:	7765      	strb	r5, [r4, #29]
c0de9ef0:	755f      	strb	r7, [r3, #21]
c0de9ef2:	6470      	str	r0, [r6, #68]	; 0x44
c0de9ef4:	7461      	strb	r1, [r4, #17]
c0de9ef6:	5f65      	ldrsh	r5, [r4, r5]
c0de9ef8:	6164      	str	r4, [r4, #20]
c0de9efa:	6174      	str	r4, [r6, #20]
c0de9efc:	2d20      	cmp	r5, #32
c0de9efe:	4720      	bx	r4
c0de9f00:	7465      	strb	r5, [r4, #17]
c0de9f02:	754e      	strb	r6, [r1, #21]
c0de9f04:	496d      	ldr	r1, [pc, #436]	; (c0dea0bc <_ecode+0x5ea>)
c0de9f06:	6574      	str	r4, [r6, #84]	; 0x54
c0de9f08:	736d      	strb	r5, [r5, #13]
c0de9f0a:	3d3d      	subs	r5, #61	; 0x3d
c0de9f0c:	554e      	strb	r6, [r1, r5]
c0de9f0e:	4c4c      	ldr	r4, [pc, #304]	; (c0dea040 <_ecode+0x56e>)
c0de9f10:	5000      	str	r0, [r0, r0]
c0de9f12:	656c      	str	r4, [r5, #84]	; 0x54
c0de9f14:	7361      	strb	r1, [r4, #13]
c0de9f16:	0065      	lsls	r5, r4, #1
c0de9f18:	736d      	strb	r5, [r5, #13]
c0de9f1a:	7367      	strb	r7, [r4, #13]
c0de9f1c:	762f      	strb	r7, [r5, #24]
c0de9f1e:	6c61      	ldr	r1, [r4, #68]	; 0x44
c0de9f20:	6575      	str	r5, [r6, #84]	; 0x54
c0de9f22:	6f2f      	ldr	r7, [r5, #112]	; 0x70
c0de9f24:	7475      	strb	r5, [r6, #17]
c0de9f26:	7570      	strb	r0, [r6, #21]
c0de9f28:	7374      	strb	r4, [r6, #13]
c0de9f2a:	632f      	str	r7, [r5, #48]	; 0x30
c0de9f2c:	696f      	ldr	r7, [r5, #20]
c0de9f2e:	736e      	strb	r6, [r5, #13]
c0de9f30:	4f00      	ldr	r7, [pc, #0]	; (c0de9f34 <_ecode+0x462>)
c0de9f32:	006b      	lsls	r3, r5, #1
c0de9f34:	4552      	cmp	r2, sl
c0de9f36:	454a      	cmp	r2, r9
c0de9f38:	5443      	strb	r3, [r0, r1]
c0de9f3a:	7600      	strb	r0, [r0, #24]
c0de9f3c:	2e32      	cmp	r6, #50	; 0x32
c0de9f3e:	3533      	adds	r5, #51	; 0x33
c0de9f40:	352e      	adds	r5, #46	; 0x2e
c0de9f42:	4100      	asrs	r0, r0
c0de9f44:	6464      	str	r4, [r4, #68]	; 0x44
c0de9f46:	6572      	str	r2, [r6, #84]	; 0x54
c0de9f48:	7373      	strb	r3, [r6, #13]
c0de9f4a:	4a00      	ldr	r2, [pc, #0]	; (c0de9f4c <_ecode+0x47a>)
c0de9f4c:	4f53      	ldr	r7, [pc, #332]	; (c0dea09c <_ecode+0x5ca>)
c0de9f4e:	204e      	movs	r0, #78	; 0x4e
c0de9f50:	694d      	ldr	r5, [r1, #20]
c0de9f52:	7373      	strb	r3, [r6, #13]
c0de9f54:	6e69      	ldr	r1, [r5, #100]	; 0x64
c0de9f56:	2067      	movs	r0, #103	; 0x67
c0de9f58:	6566      	str	r6, [r4, #84]	; 0x54
c0de9f5a:	0065      	lsls	r5, r4, #1
c0de9f5c:	7551      	strb	r1, [r2, #21]
c0de9f5e:	7469      	strb	r1, [r5, #17]
c0de9f60:	4900      	ldr	r1, [pc, #0]	; (c0de9f64 <_ecode+0x492>)
c0de9f62:	696e      	ldr	r6, [r5, #20]
c0de9f64:	6974      	ldr	r4, [r6, #20]
c0de9f66:	6c61      	ldr	r1, [r4, #68]	; 0x44
c0de9f68:	7a69      	ldrb	r1, [r5, #9]
c0de9f6a:	6465      	str	r5, [r4, #68]	; 0x44
c0de9f6c:	6520      	str	r0, [r4, #80]	; 0x50
c0de9f6e:	706d      	strb	r5, [r5, #1]
c0de9f70:	7974      	ldrb	r4, [r6, #5]
c0de9f72:	6320      	str	r0, [r4, #48]	; 0x30
c0de9f74:	6e6f      	ldr	r7, [r5, #100]	; 0x64
c0de9f76:	6574      	str	r4, [r6, #84]	; 0x54
c0de9f78:	7478      	strb	r0, [r7, #17]
c0de9f7a:	6600      	str	r0, [r0, #96]	; 0x60
c0de9f7c:	6565      	str	r5, [r4, #84]	; 0x54
c0de9f7e:	612f      	str	r7, [r5, #16]
c0de9f80:	6f6d      	ldr	r5, [r5, #116]	; 0x74
c0de9f82:	6e75      	ldr	r5, [r6, #100]	; 0x64
c0de9f84:	0074      	lsls	r4, r6, #1
c0de9f86:	6f4e      	ldr	r6, [r1, #116]	; 0x74
c0de9f88:	6d20      	ldr	r0, [r4, #80]	; 0x50
c0de9f8a:	726f      	strb	r7, [r5, #9]
c0de9f8c:	2065      	movs	r0, #101	; 0x65
c0de9f8e:	6164      	str	r4, [r4, #20]
c0de9f90:	6174      	str	r4, [r6, #20]
c0de9f92:	4300      	orrs	r0, r0
c0de9f94:	4f42      	ldr	r7, [pc, #264]	; (c0dea0a0 <_ecode+0x5ce>)
c0de9f96:	2052      	movs	r0, #82	; 0x52
c0de9f98:	6177      	str	r7, [r6, #20]
c0de9f9a:	2073      	movs	r0, #115	; 0x73
c0de9f9c:	6f6e      	ldr	r6, [r5, #116]	; 0x74
c0de9f9e:	2074      	movs	r0, #116	; 0x74
c0de9fa0:	6e69      	ldr	r1, [r5, #100]	; 0x64
c0de9fa2:	6320      	str	r0, [r4, #48]	; 0x30
c0de9fa4:	6e61      	ldr	r1, [r4, #100]	; 0x64
c0de9fa6:	6e6f      	ldr	r7, [r5, #100]	; 0x64
c0de9fa8:	6369      	str	r1, [r5, #52]	; 0x34
c0de9faa:	6c61      	ldr	r1, [r4, #68]	; 0x44
c0de9fac:	6f20      	ldr	r0, [r4, #112]	; 0x70
c0de9fae:	6472      	str	r2, [r6, #68]	; 0x44
c0de9fb0:	7265      	strb	r5, [r4, #9]
c0de9fb2:	5500      	strb	r0, [r0, r4]
c0de9fb4:	726e      	strb	r6, [r5, #9]
c0de9fb6:	6365      	str	r5, [r4, #52]	; 0x34
c0de9fb8:	676f      	str	r7, [r5, #116]	; 0x74
c0de9fba:	696e      	ldr	r6, [r5, #20]
c0de9fbc:	657a      	str	r2, [r7, #84]	; 0x54
c0de9fbe:	2064      	movs	r0, #100	; 0x64
c0de9fc0:	7265      	strb	r5, [r4, #9]
c0de9fc2:	6f72      	ldr	r2, [r6, #116]	; 0x74
c0de9fc4:	2072      	movs	r0, #114	; 0x72
c0de9fc6:	6f63      	ldr	r3, [r4, #116]	; 0x74
c0de9fc8:	6564      	str	r4, [r4, #84]	; 0x54
c0de9fca:	5a00      	ldrh	r0, [r0, r0]
c0de9fcc:	6e6f      	ldr	r7, [r5, #100]	; 0x64
c0de9fce:	6164      	str	r4, [r4, #20]
c0de9fd0:	2e78      	cmp	r6, #120	; 0x78
c0de9fd2:	6863      	ldr	r3, [r4, #4]
c0de9fd4:	5200      	strh	r0, [r0, r0]
c0de9fd6:	7665      	strb	r5, [r4, #25]
c0de9fd8:	6569      	str	r1, [r5, #84]	; 0x54
c0de9fda:	0077      	lsls	r7, r6, #1
c0de9fdc:	6461      	str	r1, [r4, #68]	; 0x44
c0de9fde:	7264      	strb	r4, [r4, #9]
c0de9fe0:	675f      	str	r7, [r3, #116]	; 0x74
c0de9fe2:	7465      	strb	r5, [r4, #17]
c0de9fe4:	754e      	strb	r6, [r1, #21]
c0de9fe6:	496d      	ldr	r1, [pc, #436]	; (c0dea19c <bitmapOPEN_SANS_EXTRABOLD_11PX+0x75>)
c0de9fe8:	6574      	str	r4, [r6, #84]	; 0x54
c0de9fea:	736d      	strb	r5, [r5, #13]
c0de9fec:	7500      	strb	r0, [r0, #20]
c0de9fee:	6f63      	ldr	r3, [r4, #116]	; 0x74
c0de9ff0:	6572      	str	r2, [r6, #84]	; 0x54
c0de9ff2:	4a00      	ldr	r2, [pc, #0]	; (c0de9ff4 <_ecode+0x522>)
c0de9ff4:	4f53      	ldr	r7, [pc, #332]	; (c0dea144 <bitmapOPEN_SANS_EXTRABOLD_11PX+0x1d>)
c0de9ff6:	204e      	movs	r0, #78	; 0x4e
c0de9ff8:	6f43      	ldr	r3, [r0, #116]	; 0x74
c0de9ffa:	746e      	strb	r6, [r5, #17]
c0de9ffc:	6961      	ldr	r1, [r4, #20]
c0de9ffe:	736e      	strb	r6, [r5, #13]
c0dea000:	7720      	strb	r0, [r4, #28]
c0dea002:	6968      	ldr	r0, [r5, #20]
c0dea004:	6574      	str	r4, [r6, #84]	; 0x54
c0dea006:	7073      	strb	r3, [r6, #1]
c0dea008:	6361      	str	r1, [r4, #52]	; 0x34
c0dea00a:	2065      	movs	r0, #101	; 0x65
c0dea00c:	6e69      	ldr	r1, [r5, #100]	; 0x64
c0dea00e:	7420      	strb	r0, [r4, #16]
c0dea010:	6568      	str	r0, [r5, #84]	; 0x54
c0dea012:	6320      	str	r0, [r4, #48]	; 0x30
c0dea014:	726f      	strb	r7, [r5, #9]
c0dea016:	7570      	strb	r0, [r6, #21]
c0dea018:	0073      	lsls	r3, r6, #1
c0dea01a:	694c      	ldr	r4, [r1, #20]
c0dea01c:	6563      	str	r3, [r4, #84]	; 0x54
c0dea01e:	736e      	strb	r6, [r5, #13]
c0dea020:	3a65      	subs	r2, #101	; 0x65
c0dea022:	0000      	movs	r0, r0
c0dea024:	6e55      	ldr	r5, [r2, #100]	; 0x64
c0dea026:	7865      	ldrb	r5, [r4, #1]
c0dea028:	6570      	str	r0, [r6, #84]	; 0x54
c0dea02a:	7463      	strb	r3, [r4, #17]
c0dea02c:	6465      	str	r5, [r4, #68]	; 0x44
c0dea02e:	6420      	str	r0, [r4, #64]	; 0x40
c0dea030:	7075      	strb	r5, [r6, #1]
c0dea032:	696c      	ldr	r4, [r5, #20]
c0dea034:	6163      	str	r3, [r4, #20]
c0dea036:	6574      	str	r4, [r6, #84]	; 0x54
c0dea038:	2064      	movs	r0, #100	; 0x64
c0dea03a:	6966      	ldr	r6, [r4, #20]
c0dea03c:	6c65      	ldr	r5, [r4, #68]	; 0x44
c0dea03e:	0064      	lsls	r4, r4, #1
c0dea040:	7469      	strb	r1, [r5, #17]
c0dea042:	6d65      	ldr	r5, [r4, #84]	; 0x54
c0dea044:	7120      	strb	r0, [r4, #4]
c0dea046:	6575      	str	r5, [r6, #84]	; 0x54
c0dea048:	7972      	ldrb	r2, [r6, #5]
c0dea04a:	7220      	strb	r0, [r4, #8]
c0dea04c:	7465      	strb	r5, [r4, #17]
c0dea04e:	7275      	strb	r5, [r6, #9]
c0dea050:	656e      	str	r6, [r5, #84]	; 0x54
c0dea052:	2064      	movs	r0, #100	; 0x64
c0dea054:	6f6e      	ldr	r6, [r5, #116]	; 0x74
c0dea056:	7220      	strb	r0, [r4, #8]
c0dea058:	7365      	strb	r5, [r4, #13]
c0dea05a:	6c75      	ldr	r5, [r6, #68]	; 0x44
c0dea05c:	7374      	strb	r4, [r6, #13]
c0dea05e:	4a00      	ldr	r2, [pc, #0]	; (c0dea060 <_ecode+0x58e>)
c0dea060:	4f53      	ldr	r7, [pc, #332]	; (c0dea1b0 <bitmapOPEN_SANS_EXTRABOLD_11PX+0x89>)
c0dea062:	2e4e      	cmp	r6, #78	; 0x4e
c0dea064:	5a20      	ldrh	r0, [r4, r0]
c0dea066:	7265      	strb	r5, [r4, #9]
c0dea068:	206f      	movs	r0, #111	; 0x6f
c0dea06a:	6f74      	ldr	r4, [r6, #116]	; 0x74
c0dea06c:	656b      	str	r3, [r5, #84]	; 0x54
c0dea06e:	736e      	strb	r6, [r5, #13]
c0dea070:	7000      	strb	r0, [r0, #0]
c0dea072:	7261      	strb	r1, [r4, #9]
c0dea074:	6573      	str	r3, [r6, #84]	; 0x54
c0dea076:	707c      	strb	r4, [r7, #1]
c0dea078:	7261      	strb	r1, [r4, #9]
c0dea07a:	6573      	str	r3, [r6, #84]	; 0x54
c0dea07c:	0064      	lsls	r4, r4, #1
c0dea07e:	736d      	strb	r5, [r5, #13]
c0dea080:	7367      	strb	r7, [r4, #13]
c0dea082:	762f      	strb	r7, [r5, #24]
c0dea084:	6c61      	ldr	r1, [r4, #68]	; 0x44
c0dea086:	6575      	str	r5, [r6, #84]	; 0x54
c0dea088:	642f      	str	r7, [r5, #64]	; 0x40
c0dea08a:	6c65      	ldr	r5, [r4, #68]	; 0x44
c0dea08c:	6765      	str	r5, [r4, #116]	; 0x74
c0dea08e:	7461      	strb	r1, [r4, #17]
c0dea090:	726f      	strb	r7, [r5, #9]
c0dea092:	615f      	str	r7, [r3, #20]
c0dea094:	6464      	str	r4, [r4, #68]	; 0x44
c0dea096:	6572      	str	r2, [r6, #84]	; 0x54
c0dea098:	7373      	strb	r3, [r6, #13]
c0dea09a:	6400      	str	r0, [r0, #64]	; 0x40
c0dea09c:	6e65      	ldr	r5, [r4, #100]	; 0x64
c0dea09e:	6d6f      	ldr	r7, [r5, #84]	; 0x54
c0dea0a0:	5500      	strb	r0, [r0, r4]
c0dea0a2:	656e      	str	r6, [r5, #84]	; 0x54
c0dea0a4:	7078      	strb	r0, [r7, #1]
c0dea0a6:	6365      	str	r5, [r4, #52]	; 0x34
c0dea0a8:	6574      	str	r4, [r6, #84]	; 0x54
c0dea0aa:	2064      	movs	r0, #100	; 0x64
c0dea0ac:	7562      	strb	r2, [r4, #21]
c0dea0ae:	6666      	str	r6, [r4, #100]	; 0x64
c0dea0b0:	7265      	strb	r5, [r4, #9]
c0dea0b2:	6520      	str	r0, [r4, #80]	; 0x50
c0dea0b4:	646e      	str	r6, [r5, #68]	; 0x44
c0dea0b6:	5500      	strb	r0, [r0, r4]
c0dea0b8:	656e      	str	r6, [r5, #84]	; 0x54
c0dea0ba:	7078      	strb	r0, [r7, #1]
c0dea0bc:	6365      	str	r5, [r4, #52]	; 0x34
c0dea0be:	6574      	str	r4, [r6, #84]	; 0x54
c0dea0c0:	2064      	movs	r0, #100	; 0x64
c0dea0c2:	6576      	str	r6, [r6, #84]	; 0x54
c0dea0c4:	7372      	strb	r2, [r6, #13]
c0dea0c6:	6f69      	ldr	r1, [r5, #116]	; 0x74
c0dea0c8:	006e      	lsls	r6, r5, #1
c0dea0ca:	736d      	strb	r5, [r5, #13]
c0dea0cc:	7367      	strb	r7, [r4, #13]
c0dea0ce:	6f2f      	ldr	r7, [r5, #112]	; 0x70
c0dea0d0:	7475      	strb	r5, [r6, #17]
c0dea0d2:	7570      	strb	r0, [r6, #21]
c0dea0d4:	7374      	strb	r4, [r6, #13]
c0dea0d6:	632f      	str	r7, [r5, #48]	; 0x30
c0dea0d8:	696f      	ldr	r7, [r5, #20]
c0dea0da:	736e      	strb	r6, [r5, #13]
c0dea0dc:	5000      	str	r0, [r0, r0]
c0dea0de:	7461      	strb	r1, [r4, #17]
c0dea0e0:	0068      	lsls	r0, r5, #1
c0dea0e2:	6361      	str	r1, [r4, #52]	; 0x34
c0dea0e4:	6f63      	ldr	r3, [r4, #116]	; 0x74
c0dea0e6:	6e75      	ldr	r5, [r6, #100]	; 0x64
c0dea0e8:	5f74      	ldrsh	r4, [r6, r5]
c0dea0ea:	756e      	strb	r6, [r5, #21]
c0dea0ec:	626d      	str	r5, [r5, #36]	; 0x24
c0dea0ee:	7265      	strb	r5, [r4, #9]
c0dea0f0:	2500      	movs	r5, #0
c0dea0f2:	2f64      	cmp	r7, #100	; 0x64
c0dea0f4:	6425      	str	r5, [r4, #64]	; 0x40
c0dea0f6:	6800      	ldr	r0, [r0, #0]
c0dea0f8:	725f      	strb	r7, [r3, #9]
c0dea0fa:	7665      	strb	r5, [r4, #25]
c0dea0fc:	6569      	str	r1, [r5, #84]	; 0x54
c0dea0fe:	5f77      	ldrsh	r7, [r6, r5]
c0dea100:	7075      	strb	r5, [r6, #1]
c0dea102:	6164      	str	r4, [r4, #20]
c0dea104:	6574      	str	r4, [r6, #84]	; 0x54
c0dea106:	645f      	str	r7, [r3, #68]	; 0x44
c0dea108:	7461      	strb	r1, [r4, #17]
c0dea10a:	2061      	movs	r0, #97	; 0x61
c0dea10c:	202d      	movs	r0, #45	; 0x2d
c0dea10e:	6547      	str	r7, [r0, #84]	; 0x54
c0dea110:	4974      	ldr	r1, [pc, #464]	; (c0dea2e4 <bitmapOPEN_SANS_EXTRABOLD_11PX+0x1bd>)
c0dea112:	6574      	str	r4, [r6, #84]	; 0x54
c0dea114:	3d6d      	subs	r5, #109	; 0x6d
c0dea116:	4e3d      	ldr	r6, [pc, #244]	; (c0dea20c <bitmapOPEN_SANS_EXTRABOLD_11PX+0xe5>)
c0dea118:	4c55      	ldr	r4, [pc, #340]	; (c0dea270 <bitmapOPEN_SANS_EXTRABOLD_11PX+0x149>)
c0dea11a:	004c      	lsls	r4, r1, #1
c0dea11c:	7325      	strb	r5, [r4, #12]
c0dea11e:	0020      	movs	r0, r4
c0dea120:	5245      	strh	r5, [r0, r1]
c0dea122:	3f52      	subs	r7, #82	; 0x52
c0dea124:	3f3f      	subs	r7, #63	; 0x3f
	...

c0dea127 <bitmapOPEN_SANS_EXTRABOLD_11PX>:
c0dea127:	0000 0000 b000 c36d 0006 2d80 0049 0000     ......m....-I...
c0dea137:	0000 0000 c912 f94f 244b 0012 0000 b788     ......O.K$......
c0dea147:	0e2c a687 021f 0000 b138 0ac6 f9fb 358d     ,.......8......5
c0dea157:	c8d6 0001 0000 7800 b0d8 c1c1 3ddb be7b     .......x.....={.
c0dea167:	0001 0000 04b0 0000 4000 3366 6633 2004     .........@f33f. 
c0dea177:	cc66 66cc 0002 fed3 079e 0000 0000 c000     f..f............
c0dea187:	3f30 00c3 0000 0000 c000 001a 0000 0ff0     0?..............
c0dea197:	0000 0000 06c0 0000 c623 118c 0003 0000     ........#.......
c0dea1a7:	663c 6666 6666 3c66 0000 0000 79c6 8618     <ffffff<.....y..
c0dea1b7:	1861 0000 8e00 060d 70c3 3e18 0000 0000     a........p.>....
c0dea1c7:	0c0f 81c6 60c1 001e 0000 3000 3838 3434     .....`.....08844
c0dea1d7:	307e 0030 0000 6780 1e18 6186 001e 0000     ~00....g...a....
c0dea1e7:	0c38 3e04 6666 3c66 0000 0000 0c1f c306     8..>fff<........
c0dea1f7:	3060 000c 0000 3c00 6666 663c 6666 003c     `0.....<ff<fff<.
c0dea207:	0000 3c00 6666 7c66 3060 001c 0000 6c00     ...<fff|`0.....l
c0dea217:	06c0 0000 c06c 001a 6000 8666 1861 0000     ....l....`f.a...
c0dea227:	0000 3f00 03f0 0000 0000 c30c 3330 0003     ...?........03..
c0dea237:	c000 6183 018e 0618 0000 e000 98c3 5bdd     ...a...........[
c0dea247:	bd2f 7ef6 e006 0007 0000 3c18 7e3c 7e66     /..~.......<<~f~
c0dea257:	c3e7 0000 0000 cd9f b1e6 6cd9 003e 0000     ...........l>...
c0dea267:	9e00 60c1 1830 3c0c 0000 0000 663e 6666     ...`0..<....>fff
c0dea277:	6666 3e66 0000 8000 1867 619e 1e18 0000     fff>....g..a....
c0dea287:	6f80 9e18 1861 0006 0000 067c 7606 6666     .o..a.....|..vff
c0dea297:	7c66 0000 0000 6666 7e66 6666 6666 0000     f|....fff~ffff..
c0dea2a7:	6000 6666 0666 8000 c631 6318 b18c 0003     .`fff...1..c....
c0dea2b7:	66e6 1e36 363e e666 0000 8000 1861 6186     .f6.>6f.....a..a
c0dea2c7:	3e18 0000 7000 e39c e7bc ef3d cd59 766e     .>...p....=.Y.nv
c0dea2d7:	0003 0000 0000 399c e6f3 9ecd 733d 00e6     .......9....=s..
c0dea2e7:	0000 0000 18f8 6633 98cc 6331 007c 0000     ......3f..1c|...
c0dea2f7:	0000 cd9f f366 0c19 0006 0000 f800 3318     ....f..........3
c0dea307:	cc66 3198 7c63 00c0 0003 1e00 3636 1e36     f..1c|......666.
c0dea317:	3636 0066 0000 6f00 0e18 e787 001e c000     66f....o........
c0dea327:	30cf c30c 0c30 0000 6600 6666 6666 6666     .0..0....fffffff
c0dea337:	003c 0000 3cc0 b3cf 79e7 000c 0000 b398     <....<...y......
c0dea347:	ecdd 3566 71ab 3b87 00d8 0000 0000 c300     ..f5.q.;........
c0dea357:	3c66 3c3c 663c 00c3 0000 b180 c6cd 60c1     f<<<<f.........`
c0dea367:	1830 0000 8000 0c3f 6187 0c38 007f 0000     0.....?..a8.....
c0dea377:	1bc0 8c63 c631 0078 0860 1863 1843 0000     ..c.1.x.`.c.C...
c0dea387:	31e0 18c6 8c63 003d 0600 23c3 0199 0000     .1..c.=....#....
	...
c0dea39f:	0000 03f0 0c0c 0000 0000 0000 0000 0000     ................
c0dea3af:	c000 f303 66cd 003e 0000 8300 67c1 dbb3     .....f>......g..
c0dea3bf:	3e6d 0000 0000 f000 71c6 3c18 0000 1800     m>.......q.<....
c0dea3cf:	678c ddbb 3c6c 0000 0000 8000 fe67 0c1f     .g..l<......g...
c0dea3df:	003c 0000 6700 867c 1861 0006 0000 c000     <....g|.a.......
c0dea3ef:	b36f 0c79 f1be 07d8 8300 67c1 d9b3 366c     o.y........g..l6
c0dea3ff:	0000 6000 6660 0666 8000 c601 6318 318c     ...``ff......c.1
c0dea40f:	0003 c183 f3e6 6c78 0076 0000 6660 6666     ......xlv...`fff
c0dea41f:	0006 0000 8000 b676 66d9 6d9b 01b6 0000     ......v..f.m....
c0dea42f:	0000 4000 b367 6cd9 0036 0000 0000 6380     ...@g..l6......c
c0dea43f:	dfbb 1c6d 0000 0000 c000 b367 6ddb 833e     ..m.......g..m>.
c0dea44f:	00c1 0000 67c0 ddbb 3e6c 0c18 0006 ed00     .....g..l>......
c0dea45f:	318d 0006 0000 7800 c786 1ec3 0000 9800     .1.....x........
c0dea46f:	8c6f 1c31 0000 0000 66c0 d9b3 2e6c 0000     o.1......f..l...
c0dea47f:	0000 6000 b36c 38d9 001c 0000 0000 c000     ...`l..8........
c0dea48f:	b6cc e7f9 331f 00cc 0000 0000 e000 e36e     .....3........n.
c0dea49f:	6c70 0077 0000 0000 6c60 d1b3 1c38 c306     plw.....`l..8...
c0dea4af:	0000 fc00 c318 3f18 0000 3380 cec6 8c61     .......?...3..a.
c0dea4bf:	0071 c300 0c30 30c3 c30c e030 6318 3738     q...0..0..0..c87
c0dea4cf:	1cc6 0000 0000 0f6f 0000 0000 2780 9249     ......o......'I.
c0dea4df:	4924 001e                                    $I...

c0dea4e4 <charactersOPEN_SANS_EXTRABOLD_11PX>:
c0dea4e4:	0503 0000 0503 0005 0906 000a 0b07 0013     ................
c0dea4f4:	0906 001e 0f0a 0027 0e09 0036 0503 0044     ......'...6...D.
c0dea504:	0604 0049 0604 004f 0906 0055 0906 005e     ..I...O...U...^.
c0dea514:	0503 0067 0604 006c 0503 0072 0805 0077     ..g...l...r...w.
c0dea524:	0c08 007f 0906 008b 0b07 0094 0b07 009f     ................
c0dea534:	0c08 00aa 0906 00b6 0c08 00bf 0b07 00cb     ................
c0dea544:	0c08 00d6 0c08 00e2 0503 00ee 0503 00f3     ................
c0dea554:	0805 00f8 0906 0100 0805 0109 0906 0111     ................
c0dea564:	0f0a 011a 0c08 0129 0b07 0135 0b07 0140     ......)...5...@.
c0dea574:	0c08 014b 0906 0157 0906 0160 0c08 0169     ..K...W...`...i.
c0dea584:	0c08 0175 0604 0181 0805 0187 0c08 018f     ..u.............
c0dea594:	0906 019b 110b 01a4 0e09 01b5 0e09 01c3     ................
c0dea5a4:	0b07 01d1 0e09 01dc 0c08 01ea 0906 01f6     ................
c0dea5b4:	0906 01ff 0c08 0208 0906 0214 110b 021d     ................
c0dea5c4:	0c08 022e 0b07 023a 0b07 0245 0805 0250     ......:...E...P.
c0dea5d4:	0805 0258 0805 0260 0b07 0268 0906 0273     ..X...`...h...s.
c0dea5e4:	0b07 027c 0b07 0287 0b07 0292 0906 029d     ..|.............
c0dea5f4:	0b07 02a6 0b07 02b1 0906 02bc 0b07 02c5     ................
c0dea604:	0b07 02d0 0604 02db 0805 02e1 0b07 02e9     ................
c0dea614:	0604 02f4 0f0a 02fa 0b07 0309 0b07 0314     ................
c0dea624:	0b07 031f 0b07 032a 0805 0335 0906 033d     ......*...5...=.
c0dea634:	0805 0346 0b07 034e 0b07 0359 0f0a 0364     ..F...N...Y...d.
c0dea644:	0b07 0373 0b07 037e 0906 0389 0805 0392     ..s...~.........
c0dea654:	0906 039a 0805 03a3 0906 03ab 0906 03b4     ................

c0dea664 <fontOPEN_SANS_EXTRABOLD_11PX>:
c0dea664:	0008 0000 0c01 0009 0020 007f a4e4 c0de     ........ .......
c0dea674:	a127 c0de                                   '...

c0dea678 <bitmapOPEN_SANS_LIGHT_16PX>:
	...
c0dea680:	9000 4924 2402 0000 2480 1249 0000 0000     ..$I.$...$I.....
c0dea690:	0000 0000 0000 4000 0902 8822 8ff8 1204     .......@..".....
c0dea6a0:	11ff 0441 2409 0000 0000 0000 0000 e020     ..A..$........ .
c0dea6b0:	20a1 0241 1c05 2070 9241 03c2 0002 0000     . A...p A.......
c0dea6c0:	0000 8000 4841 8904 0920 8124 6194 204a     ....AH.. .$..aJ 
c0dea6d0:	2409 2441 8488 0060 0000 0000 0000 0000     .$A$..`.........
c0dea6e0:	c000 1101 4088 1404 8060 4244 9412 0c40     .....@..`.DB..@.
c0dea6f0:	27c3 0000 0000 0000 9000 0024 0000 0000     .'........$.....
c0dea700:	2440 2222 2222 4422 2000 4442 4444 4444     @$"""""D. BDDDDD
c0dea710:	0022 2010 f040 0287 1105 0000 0000 0000     ".. @...........
	...
c0dea728:	0000 0080 8201 083f 2010 0000 0000 0000     ......?.. ......
	...
c0dea740:	0524 0000 0000 0000 000e 0000 0000 0000     $...............
c0dea750:	0000 0000 0660 0000 2200 0884 4421 1108     ....`...."..!D..
c0dea760:	0000 0000 7000 1110 4824 2090 8241 0904     .....p..$H. A...
c0dea770:	8222 0003 0000 0000 0000 6020 00a0 0201     "......... `....
c0dea780:	0804 2010 8040 0100 0000 0000 0000 7800     ... @..........x
c0dea790:	0108 0402 1008 1010 1010 e010 000f 0000     ................
c0dea7a0:	0000 0000 0878 0401 0c04 200f 0080 0201     ....x...... ....
c0dea7b0:	03e2 0000 0000 0000 0000 3004 0140 4809     ...........0@..H
c0dea7c0:	8220 8410 1ff0 0020 0801 0000 0000 0000      ..... .........
c0dea7d0:	0000 10f8 4020 8040 600f 0080 1201 03c2     .... @@..`......
c0dea7e0:	0000 0000 0000 e000 2030 4020 1e80 8243     ........0  @..C.
c0dea7f0:	0904 8422 0007 0000 0000 0000 01fc 0202     ..".............
c0dea800:	0804 1008 2010 4040 0080 0000 0000 0000     ..... @@........
c0dea810:	7000 1110 8824 0e08 8222 0904 c412 0007     .p..$...".......
c0dea820:	0000 0000 0000 0878 2411 9048 5e30 0080     ......x..$H.0^..
c0dea830:	0101 01c3 0000 0000 0000 0000 0066 6000     ............f..`
c0dea840:	0006 0000 6600 0000 2220 0000 0000 0000     .....f.. "......
c0dea850:	0604 0183 600c 0100 0000 0000 0000 0000     .....`..........
c0dea860:	0000 0000 0000 1fc0 0000 00fe 0000 0000     ................
	...
c0dea878:	1000 00c0 3006 0c18 0004 0000 0000 0000     .....0..........
c0dea888:	0000 0000 080f 0204 1041 0204 4080 0000     ........A....@..
c0dea898:	0000 0000 f800 4180 2010 93c4 2488 4921     .......A. ...$!I
c0dea8a8:	1248 c492 ee24 0008 0004 0002 001f 0000     H...$...........
c0dea8b8:	0000 0000 00c0 0c03 2048 0481 fc21 2408     ........H ..!..$
c0dea8c8:	4090 0201 0000 0000 0000 f000 0841 0441     .@..........A.A.
c0dea8d8:	c211 2107 1104 1044 7c21 0000 0000 0000     ...!..D.!|......
c0dea8e8:	0000 87c0 0100 0802 8020 0200 4008 0200     ........ ....@..
c0dea8f8:	01f0 0000 0000 0000 e000 2103 4208 0220     ...........!.B .
c0dea908:	8811 0440 1022 0841 07c1 0000 0000 0000     ..@.".A.........
c0dea918:	0000 11f8 4020 0080 023f 0804 2010 0fc0     .... @..?.... ..
c0dea928:	0000 0000 0000 fc00 0404 0404 fc04 0404     ................
c0dea938:	0404 0004 0000 0000 0000 083f 0040 2002     ..........?.@.. 
c0dea948:	0200 7c20 2402 0440 4084 03f0 0000 0000     .. |.$@..@......
c0dea958:	0000 0000 2040 4204 0420 2042 43fc 0420     ....@ .B .B .C .
c0dea968:	2042 4204 0420 0002 0000 0000 0000 4440     B .B .........@D
c0dea978:	4444 4444 0004 0000 0204 4081 1020 0408     DDDD.......@ ...
c0dea988:	8102 2040 000c 0000 1208 4222 0282 0a03     ..@ ......"B....
c0dea998:	8824 2110 1044 0000 0000 0000 0400 0404     $..!D...........
c0dea9a8:	0404 0404 0404 0404 00fc 0000 0000 0000     ................
c0dea9b8:	4201 30c0 0c30 850c a142 2850 0924 4249     .B.00...B.P($.IB
c0dea9c8:	108c 0423 0008 0000 0000 0000 0000 4000     ..#............@
c0dea9d8:	0c20 20c2 4214 2421 2442 4244 0428 3043      .. .B!$B$DB(.C0
c0dea9e8:	0204 0000 0000 0000 0000 0f00 4108 0220     .............A .
c0dea9f8:	4024 2402 0240 4024 8204 f010 0000 0000     $@.$@.$@........
c0deaa08:	0000 0000 f800 2210 8844 2110 043e 1008     ......."D..!>...
c0deaa18:	4020 0000 0000 0000 0000 0f00 4108 0220      @...........A .
c0deaa28:	4024 2402 0240 4024 8204 f010 0800 0100     $@.$@.$@........
c0deaa38:	0030 0000 f000 0841 0441 4411 1f08 1044     0.....A.A..D..D.
c0deaa48:	0841 0441 0001 0000 0000 0000 08f8 2012     A.A............ 
c0deaa58:	0040 3007 0080 0201 07e4 0000 0000 0000     @..0............
c0deaa68:	3f80 8102 2040 0810 0204 0081 0000 0000     .?..@ ..........
c0deaa78:	4000 0420 2042 4204 0420 2042 4204 0420     .@ .B .B .B .B .
c0deaa88:	1082 00f0 0000 0000 0000 0000 0602 2414     ...............$
c0deaa98:	1048 2211 5044 80a0 0100 0000 0000 0000     H.."DP..........
c0deaaa8:	4000 2830 090c 2243 4891 9244 2490 0a14     .@0(..C".HD..$..
c0deaab8:	8285 6061 0818 0004 0000 0000 0000 0000     ..a`............
c0deaac8:	0400 2209 0482 0405 2814 1088 1411 0010     ...".....(......
c0deaad8:	0000 0000 0000 4281 2442 1824 1018 1010     .......BB$$.....
c0deaae8:	1010 0000 0000 0000 01fc 0202 0404 0804     ................
c0deaaf8:	0808 1010 0fe0 0000 0000 0000 0bc0 8421     ..............!.
c0deab08:	4210 2108 f084 0000 0820 0821 0421 0421     .B.!.... .!.!.!.
c0deab18:	0001 0000 21e0 1084 0842 8421 7a10 0000     .....!..B.!..z..
c0deab28:	2000 40a0 8441 2088 0041 0000 0000 0000     . .@A.. A.......
	...
c0deab48:	fc00 0001 0800 8020 0000 0000 0000 0000     ...... .........
	...
c0deab64:	0000 403c 4040 427c 6242 005c 0000 0000     ..<@@@|BBb\.....
c0deab74:	0802 8020 7a00 2218 4090 0902 9024 7a21     .. ..z.".@..$.!z
	...
c0deab8c:	0000 7800 0204 0202 0202 7804 0000 0000     ...x.......x....
c0deab9c:	0000 0401 4010 1178 9026 0240 2409 6110     .....@x.&.@..$.a
c0deabac:	0178 0000 0000 0000 0000 0000 8380 2088     x.............. 
c0deabbc:	fe41 0804 8420 0007 0000 0000 3800 1041     A... ........8A.
c0deabcc:	411f 0410 1041 0004 0000 0000 0000 fc00     .A..A...........
c0deabdc:	4222 2242 043c 7c02 8142 3e43 0200 0804     "BB"<..|B.C>....
c0deabec:	a010 88c3 4120 0482 1209 0824 0000 0000     .... A....$.....
c0deabfc:	0000 0200 2220 2222 0002 0000 0010 2108     .... """.......!
c0deac0c:	1084 0842 0721 0200 0202 4202 1222 0a0a     ..B.!......B"...
c0deac1c:	2216 8242 0000 0000 4400 4444 4444 0444     ."B......DDDDDD.
	...
c0deac34:	3a00 3187 0822 4209 9082 2420 0908 8242     .:.1"..B.. $..B.
c0deac44:	0010 0000 0000 0000 0000 0000 0000 c3a0     ................
c0deac54:	2088 8241 0904 2412 0008 0000 0000 0000     . A....$........
c0deac64:	0000 8000 8883 4120 0482 2209 0382 0000     ...... A..."....
	...
c0deac7c:	7a00 2218 4090 0902 9024 7a21 2008 0080     .z.".@..$.!z. ..
c0deac8c:	0002 0000 0000 0000 1178 9026 0240 2409     ........x.&.@..$
c0deac9c:	6110 0178 1004 0040 0001 0000 ba00 0821     .ax...@.......!.
c0deacac:	2082 0208 0000 0000 0000 c000 0813 180c     . ..............
c0deacbc:	0810 01e4 0000 0000 0000 84f1 4210 c108     .............B..
c0deaccc:	0001 0000 0000 0000 4820 2090 8241 0904     ........ H. A...
c0deacdc:	c622 000b 0000 0000 0000 0000 0c10 448a     "..............D
c0deacec:	0a22 8285 0000 0000 0000 0000 0000 6100     "..............a
c0deacfc:	4628 2462 9249 2944 830c 0810 0001 0000     (Fb$I.D)........
	...
c0dead14:	4242 1824 1818 4224 0042 0000 0000 0000     BB$...$BB.......
c0dead24:	1000 8a0c 2244 850a 4082 0810 0003 0000     ....D"...@......
c0dead34:	e000 4103 0820 4102 03e0 0000 0000 4600     ...A ..A.......F
c0dead44:	0410 1041 4103 0410 6041 0000 2010 8040     ..A..A..A`... @.
c0dead54:	0100 0402 1008 4020 0080 0201 0804 0010     ...... @........
c0dead64:	8000 2041 8208 3020 2082 4208 0018 0000     ..A .. 0. .B....
c0dead74:	0000 0000 8000 7803 0000 0000 0000 0000     .......x........
c0dead84:	0000 0000 0000 0fc0 8421 4210 2108 1084     ........!..B.!..
c0dead94:	0842 fc21 0000 0000 0000 0000               B.!.........

c0deada0 <charactersOPEN_SANS_LIGHT_16PX>:
c0deada0:	0904 0000 0703 0009 0e06 0010 170a 001e     ................
c0deadb0:	1509 0035 1e0d 004a 190b 0068 0703 0081     ..5...J...h.....
c0deadc0:	0904 0088 0904 0091 1509 009a 1509 00af     ................
c0deadd0:	0703 00c4 0c05 00cb 0904 00d7 0c05 00e0     ................
c0deade0:	1509 00ec 1509 0101 1509 0116 1509 012b     ..............+.
c0deadf0:	190b 0140 1509 0159 1509 016e 1509 0183     ..@...Y...n.....
c0deae00:	1509 0198 1509 01ad 0904 01c2 0904 01cb     ................
c0deae10:	1509 01d4 1509 01e9 1509 01fe 1007 0213     ................
c0deae20:	200e 0223 170a 0243 170a 025a 170a 0271     . #...C...Z...q.
c0deae30:	190b 0288 1509 02a1 1208 02b6 1b0c 02c8     ................
c0deae40:	1b0c 02e3 0904 02fe 1007 0307 1509 0317     ................
c0deae50:	1208 032c 200e 033e 1b0c 035e 1b0c 0379     ..,.. >...^...y.
c0deae60:	1509 0394 1b0c 03a9 170a 03c4 1509 03db     ................
c0deae70:	1007 03f0 1b0c 0400 1509 041b 200e 0430     ............. 0.
c0deae80:	1509 0450 1208 0465 1509 0477 0c05 048c     ..P...e...w.....
c0deae90:	0c05 0498 0c05 04a4 1509 04b0 1007 04c5     ................
c0deaea0:	1509 04d5 1208 04ea 170a 04fc 1208 0513     ................
c0deaeb0:	170a 0525 1509 053c 0e06 0551 1208 055f     ..%...<...Q..._.
c0deaec0:	1509 0571 0904 0586 0c05 058f 1208 059b     ..q.............
c0deaed0:	0904 05ad 200e 05b6 1509 05d6 1509 05eb     ..... ..........
c0deaee0:	170a 0600 170a 0617 0e06 062e 1007 063c     ..............<.
c0deaef0:	0c05 064c 1509 0658 1007 066d 1b0c 067d     ..L...X...m...}.
c0deaf00:	1208 0698 1007 06aa 1007 06ba 0e06 06ca     ................
c0deaf10:	1509 06d8 0e06 06ed 1509 06fb 170a 0710     ................

c0deaf20 <fontOPEN_SANS_LIGHT_16PX>:
c0deaf20:	0009 0000 1201 000d 0020 007f ada0 c0de     ........ .......
c0deaf30:	a678 c0de                                   x...

c0deaf34 <bitmapOPEN_SANS_REGULAR_11PX>:
c0deaf34:	0000 0000 9000 0924 0002 0660 0000 0000     ......$...`.....
c0deaf44:	1000 4fc9 fca1 0224 0000 0000 29e0 830a     ...O..$......)..
c0deaf54:	1e61 0000 8c00 50a8 cda1 2a16 c454 0000     a......P...*T...
c0deaf64:	0000 1c00 1212 4a0c 2252 005e 0000 0028     .......JR"^...(.
c0deaf74:	9000 2494 0092 4490 9292 0000 fc41 048c     ...$...D....A...
c0deaf84:	0000 0000 0000 c800 008f 0000 0000 0000     ................
c0deaf94:	0052 0000 0600 0000 0000 0200 8000 2444     R.............D$
c0deafa4:	0122 0000 4923 2492 0c49 0000 a300 0820     "...#I.$I..... .
c0deafb4:	2082 0008 8000 4103 4210 1e08 0000 0380     . .....A.B......
c0deafc4:	0c41 4104 000e 0000 3020 2428 7e24 2020     A..A.... 0($$~  
c0deafd4:	0000 8000 0827 041e 0e41 0000 2700 9e08     ....'...A....'..
c0deafe4:	4924 000c 8000 4107 4208 0410 0000 2300     $I.....A.B.....#
c0deaff4:	8c49 4924 000c 0000 4923 0792 0e41 0000     I.$I....#I..A...
c0deb004:	0400 0200 0000 0004 0052 0000 8621 4081     ........R...!..@
c0deb014:	0000 0000 0000 e01e 0001 0000 2000 1810     ............. ..
c0deb024:	0846 0000 c000 8841 0108 0004 0000 43e0     F.....A........C
c0deb034:	5c90 294a 94a5 027e 01f0 0000 0400 4285     .\J)..~........B
c0deb044:	f911 4144 0000 0000 489f 11e4 4489 003e     ..DA.....H...D>.
c0deb054:	0000 9e00 2041 0810 3c0c 0000 0000 423e     ....A ...<....>B
c0deb064:	4242 4242 3e42 0000 8000 0827 209e 1e08     BBBBB>....'.. ..
c0deb074:	0000 2f80 8208 082f 0002 0000 027c 0202     .../../.....|...
c0deb084:	4262 7c42 0000 0000 4242 7e42 4242 4242     bBB|....BBB~BBBB
c0deb094:	0000 9000 4924 0002 4440 4444 0344 9100     ....$I..@DDDD...
c0deb0a4:	6144 4850 4244 0000 8000 0820 2082 3e08     DaPHDB.... .. .>
c0deb0b4:	0000 1800 9866 4a61 2529 4c93 0132 0000     ....f.aJ)%.L2...
c0deb0c4:	0000 4642 4a4a 5252 4262 0000 0000 08f8     ..BFJJRRbB......
c0deb0d4:	2412 9048 4120 007c 0000 0000 488f f224     .$H. A|......H$.
c0deb0e4:	0408 0002 0000 f800 1208 4824 2090 7c41     ..........$H. A|
c0deb0f4:	0040 0001 8f00 2448 48f2 2244 0000 0000     @.....H$.HD"....
c0deb104:	0827 0606 0e41 0000 1f00 8102 2040 0810     '...A.......@ ..
c0deb114:	0000 0000 4242 4242 4242 3c42 0000 8000     ....BBBBBBB<....
c0deb124:	48a0 a224 2850 0008 0000 c400 9328 4a4c     .H$.P(......(.LJ
c0deb134:	a529 2114 0084 0000 4000 3128 230c 2149     )..!.....@(1.#I!
c0deb144:	0000 2840 0c49 2082 0008 8000 2107 2108     ..@(I.. .....!.!
c0deb154:	1e08 0000 22e0 2222 0e22 2210 4442 0008     ....."""".."BD..
c0deb164:	4470 4444 0744 c300 5248 0008 0000 0000     pDDDD...HR......
c0deb174:	0000 0000 7c00 0400 0002 0000 0000 0000     .....|..........
c0deb184:	0000 9078 4927 001e 0000 c081 1223 4489     ..x.'I......#..D
c0deb194:	001e 0000 0000 842e 1c10 0000 1000 2788     ...............'
c0deb1a4:	8912 3c44 0000 0000 7000 2792 1c08 0000     ..D<.....p.'....
c0deb1b4:	8980 8427 0210 0000 0000 92f8 08e4 185e     ..'...........^.
c0deb1c4:	007a c081 1223 4489 0022 0000 2410 0249     z...#..D"....$I.
c0deb1d4:	4000 4440 4444 8074 4820 a18a 1248 0000     .@@DDDt. H..H...
c0deb1e4:	2490 0249 0000 0000 7780 8922 9224 2248     .$I......w".$.H"
c0deb1f4:	0001 0000 0000 23c0 8912 2244 0000 0000     .......#..D"....
c0deb204:	8000 1223 4489 001c 0000 0000 23c0 8912     ..#..D.......#..
c0deb214:	1e44 4081 0000 8000 1227 4489 103c 0408     D..@....'..D<...
c0deb224:	e000 2222 0002 0000 0c27 0e82 0000 f200     ..""....'.......
c0deb234:	2222 000e 0000 2440 8912 3e44 0000 0000     ""....@$..D>....
c0deb244:	8400 2492 0c31 0000 0000 8800 4aa8 2a95     ...$1........J.*
c0deb254:	4422 0000 0000 0000 1248 48c3 0012 0000     "D......H..H....
c0deb264:	8400 2492 0c31 0c41 8000 088f 1f11 0000     ...$1.A.........
c0deb274:	44c0 4224 0c44 8200 0820 2082 8208 3020     .D$BD... .. .. 0
c0deb284:	4222 2224 0003 0000 0606 0000 0000 9f00     "B$"............
c0deb294:	2448 8912 3e44 0000 0000                    H$..D>....

c0deb29e <charactersOPEN_SANS_REGULAR_11PX>:
c0deb29e:	0503 0000 0503 0005 0604 000a 0b07 0010     ................
c0deb2ae:	0906 001b 0e09 0024 0c08 0032 0302 003e     ......$...2...>.
c0deb2be:	0503 0041 0503 0046 0906 004b 0906 0054     ..A...F...K...T.
c0deb2ce:	0503 005d 0604 0062 0503 0068 0604 006d     ..]...b...h...m.
c0deb2de:	0906 0073 0906 007c 0906 0085 0906 008e     ..s...|.........
c0deb2ee:	0c08 0097 0906 00a3 0906 00ac 0906 00b5     ................
c0deb2fe:	0906 00be 0906 00c7 0503 00d0 0503 00d5     ................
c0deb30e:	0906 00da 0906 00e3 0906 00ec 0805 00f5     ................
c0deb31e:	0f0a 00fd 0b07 010c 0b07 0117 0b07 0122     ..............".
c0deb32e:	0c08 012d 0906 0139 0906 0142 0c08 014b     ..-...9...B...K.
c0deb33e:	0c08 0157 0503 0163 0604 0168 0b07 016e     ..W...c...h...n.
c0deb34e:	0906 0179 0f0a 0182 0c08 0191 0e09 019d     ..y.............
c0deb35e:	0b07 01ab 0e09 01b6 0b07 01c4 0906 01cf     ................
c0deb36e:	0b07 01d8 0c08 01e3 0b07 01ef 0f0a 01fa     ................
c0deb37e:	0906 0209 0906 0212 0906 021b 0604 0224     ..............$.
c0deb38e:	0604 022a 0604 0230 0906 0236 0805 023f     ..*...0...6...?.
c0deb39e:	0906 0247 0906 0250 0b07 0259 0805 0264     ..G...P...Y...d.
c0deb3ae:	0b07 026c 0906 0277 0805 0280 0906 0288     ..l...w.........
c0deb3be:	0b07 0291 0503 029c 0604 02a1 0906 02a7     ................
c0deb3ce:	0503 02b0 0f0a 02b5 0b07 02c4 0b07 02cf     ................
c0deb3de:	0b07 02da 0b07 02e5 0604 02f0 0805 02f6     ................
c0deb3ee:	0604 02fe 0b07 0304 0906 030f 0e09 0318     ................
c0deb3fe:	0906 0326 0906 032f 0805 0338 0604 0340     ..&.../...8...@.
c0deb40e:	0906 0346 0604 034f 0906 0355 0b07 035e     ..F...O...U...^.
	...

c0deb420 <fontOPEN_SANS_REGULAR_11PX>:
c0deb420:	000a 0000 0c01 0009 0020 007f b29e c0de     ........ .......
c0deb430:	af34 c0de                                   4...

c0deb434 <C_bagl_fonts>:
c0deb434:	a664 c0de af20 c0de b420 c0de               d... ... ...

c0deb440 <C_bagl_fonts_count>:
c0deb440:	0003 0000                                   ....

c0deb444 <C_digit_dot_colors>:
c0deb444:	0000 0000 ffff 00ff                         ........

c0deb44c <C_icon_app_bitmap>:
c0deb44c:	ffff fc3f f00f e007 c00f c3df 87ff 867f     ..?.............
c0deb45c:	867f 87ff c3df c00f c007 e00f fc3f ffff     ............?...

c0deb46c <C_icon_app>:
c0deb46c:	0010 0000 0010 0000 0001 0000 b444 c0de     ............D...
c0deb47c:	b44c c0de                                   L...

c0deb480 <C_icon_crossmark_bitmap>:
c0deb480:	8000 e601 71c0 3838 fc07 1e00 0780 03f0     .....q88........
c0deb490:	c1ce 38e1 0670 0018 0000 0000               ...8p.......

c0deb49c <C_icon_crossmark>:
c0deb49c:	000e 0000 000e 0000 0001 0000 b444 c0de     ............D...
c0deb4ac:	b480 c0de                                   ....

c0deb4b0 <C_icon_dashboard_bitmap>:
c0deb4b0:	0000 0000 800c f007 fe03 ffc1 3ff0 03f0     .............?..
c0deb4c0:	00cc c033 000c 0000 0000 0000               ..3.........

c0deb4cc <C_icon_dashboard>:
c0deb4cc:	000e 0000 000e 0000 0001 0000 b444 c0de     ............D...
c0deb4dc:	b4b0 c0de                                   ....

c0deb4e0 <C_icon_eye_bitmap>:
c0deb4e0:	0000 0000 e01e 1c1f 030e 8c63 6319 0c0c     ..........c..c..
c0deb4f0:	8387 807f 0007 0000 0000 0000               ............

c0deb4fc <C_icon_eye>:
c0deb4fc:	000e 0000 000e 0000 0001 0000 b444 c0de     ............D...
c0deb50c:	b4e0 c0de                                   ....

c0deb510 <C_icon_validate_14_bitmap>:
c0deb510:	0000 0000 0000 00c0 0038 e067 1c38 039c     ........8.g.8...
c0deb520:	007e 800f 0001 0000 0000 0000               ~...........

c0deb52c <C_icon_validate_14>:
c0deb52c:	000e 0000 000e 0000 0001 0000 b444 c0de     ............D...
c0deb53c:	b510 c0de                                   ....

c0deb540 <C_icon_left_bitmap>:
c0deb540:	1248 0842                                   H.B.

c0deb544 <C_icon_left>:
c0deb544:	0004 0000 0007 0000 0001 0000 b444 c0de     ............D...
c0deb554:	b540 c0de                                   @...

c0deb558 <C_icon_right_bitmap>:
c0deb558:	8421 0124                                   !.$.

c0deb55c <C_icon_right>:
c0deb55c:	0004 0000 0007 0000 0001 0000 b444 c0de     ............D...
c0deb56c:	b558 c0de                                   X...

c0deb570 <seph_io_general_status>:
c0deb570:	0060 0002                                    `....

c0deb575 <seph_io_se_reset>:
c0deb575:	0046                                         F..

c0deb578 <g_pcHex>:
c0deb578:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef

c0deb588 <ascii_substitutions>:
c0deb588:	6107 6208 660c 6e0a 720d 7409 760b 5c5c     .a.b.f.n.r.t.v\\

c0deb598 <g_pcHex_cap>:
c0deb598:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF

c0deb5a8 <key_substitutions>:
c0deb5a8:	6863 6961 5f6e 6469 0000 0000 0000 0000     chain_id........
	...
c0deb5d8:	0000 6843 6961 206e 4449 0000 0000 0000     ..Chain ID......
	...
c0deb60c:	6361 6f63 6e75 5f74 756e 626d 7265 0000     account_number..
	...
c0deb63c:	0000 6341 6f63 6e75 0074 0000 0000 0000     ..Account.......
	...
c0deb670:	6573 7571 6e65 6563 0000 0000 0000 0000     sequence........
	...
c0deb6a0:	0000 6553 7571 6e65 6563 0000 0000 0000     ..Sequence......
	...
c0deb6d4:	656d 6f6d 0000 0000 0000 0000 0000 0000     memo............
	...
c0deb704:	0000 654d 6f6d 0000 0000 0000 0000 0000     ..Memo..........
	...
c0deb738:	6566 2f65 6d61 756f 746e 0000 0000 0000     fee/amount......
	...
c0deb768:	0000 6546 0065 0000 0000 0000 0000 0000     ..Fee...........
	...
c0deb79c:	6566 2f65 6167 0073 0000 0000 0000 0000     fee/gas.........
	...
c0deb7cc:	0000 6147 0073 0000 0000 0000 0000 0000     ..Gas...........
	...
c0deb800:	6566 2f65 7267 6e61 6574 0072 0000 0000     fee/granter.....
	...
c0deb830:	0000 7247 6e61 6574 0072 0000 0000 0000     ..Granter.......
	...
c0deb864:	6566 2f65 6170 6579 0072 0000 0000 0000     fee/payer.......
	...
c0deb894:	0000 6150 6579 0072 0000 0000 0000 0000     ..Payer.........
	...
c0deb8c8:	736d 7367 742f 7079 0065 0000 0000 0000     msgs/type.......
	...
c0deb8f8:	0000 7954 6570 0000 0000 0000 0000 0000     ..Type..........
	...
c0deb92c:	6974 2f70 6d61 756f 746e 0000 0000 0000     tip/amount......
	...
c0deb95c:	0000 6954 0070 0000 0000 0000 0000 0000     ..Tip...........
	...
c0deb990:	6974 2f70 6974 7070 7265 0000 0000 0000     tip/tipper......
	...
c0deb9c0:	0000 6954 7070 7265 0000 0000 0000 0000     ..Tipper........
	...
c0deb9f4:	736d 7367 692f 706e 7475 2f73 6461 7264     msgs/inputs/addr
c0deba04:	7365 0073 0000 0000 0000 0000 0000 0000     ess.............
	...
c0deba24:	0000 6f53 7275 6563 4120 6464 6572 7373     ..Source Address
	...
c0deba58:	736d 7367 692f 706e 7475 2f73 6f63 6e69     msgs/inputs/coin
c0deba68:	0073 0000 0000 0000 0000 0000 0000 0000     s...............
	...
c0deba88:	0000 6f53 7275 6563 4320 696f 736e 0000     ..Source Coins..
	...
c0debabc:	736d 7367 6f2f 7475 7570 7374 612f 6464     msgs/outputs/add
c0debacc:	6572 7373 0000 0000 0000 0000 0000 0000     ress............
	...
c0debaec:	0000 6544 7473 4120 6464 6572 7373 0000     ..Dest Address..
	...
c0debb20:	736d 7367 6f2f 7475 7570 7374 632f 696f     msgs/outputs/coi
c0debb30:	736e 0000 0000 0000 0000 0000 0000 0000     ns..............
	...
c0debb50:	0000 6544 7473 4320 696f 736e 0000 0000     ..Dest Coins....
	...
c0debb84:	736d 7367 762f 6c61 6575 692f 706e 7475     msgs/value/input
c0debb94:	2f73 6461 7264 7365 0073 0000 0000 0000     s/address.......
	...
c0debbb4:	0000 6f53 7275 6563 4120 6464 6572 7373     ..Source Address
	...
c0debbe8:	736d 7367 762f 6c61 6575 692f 706e 7475     msgs/value/input
c0debbf8:	2f73 6f63 6e69 0073 0000 0000 0000 0000     s/coins.........
	...
c0debc18:	0000 6f53 7275 6563 4320 696f 736e 0000     ..Source Coins..
	...
c0debc4c:	736d 7367 762f 6c61 6575 6f2f 7475 7570     msgs/value/outpu
c0debc5c:	7374 612f 6464 6572 7373 0000 0000 0000     ts/address......
	...
c0debc7c:	0000 6544 7473 4120 6464 6572 7373 0000     ..Dest Address..
	...
c0debcb0:	736d 7367 762f 6c61 6575 6f2f 7475 7570     msgs/value/outpu
c0debcc0:	7374 632f 696f 736e 0000 0000 0000 0000     ts/coins........
	...
c0debce0:	0000 6544 7473 4320 696f 736e 0000 0000     ..Dest Coins....
	...
c0debd14:	736d 7367 762f 6c61 6575 662f 6f72 5f6d     msgs/value/from_
c0debd24:	6461 7264 7365 0073 0000 0000 0000 0000     address.........
	...
c0debd44:	0000 7246 6d6f 0000 0000 0000 0000 0000     ..From..........
	...
c0debd78:	736d 7367 762f 6c61 6575 742f 5f6f 6461     msgs/value/to_ad
c0debd88:	7264 7365 0073 0000 0000 0000 0000 0000     dress...........
	...
c0debda8:	0000 6f54 0000 0000 0000 0000 0000 0000     ..To............
	...
c0debddc:	736d 7367 762f 6c61 6575 612f 6f6d 6e75     msgs/value/amoun
c0debdec:	0074 0000 0000 0000 0000 0000 0000 0000     t...............
	...
c0debe0c:	0000 6d41 756f 746e 0000 0000 0000 0000     ..Amount........
	...
c0debe40:	736d 7367 762f 6c61 6575 642f 6c65 6765     msgs/value/deleg
c0debe50:	7461 726f 615f 6464 6572 7373 0000 0000     ator_address....
	...
c0debe70:	0000 6544 656c 6167 6f74 0072 0000 0000     ..Delegator.....
	...
c0debea4:	736d 7367 762f 6c61 6575 762f 6c61 6469     msgs/value/valid
c0debeb4:	7461 726f 615f 6464 6572 7373 0000 0000     ator_address....
	...
c0debed4:	0000 6156 696c 6164 6f74 0072 0000 0000     ..Validator.....
	...
c0debf08:	736d 7367 762f 6c61 6575 772f 7469 6468     msgs/value/withd
c0debf18:	6172 5f77 6461 7264 7365 0073 0000 0000     raw_address.....
	...
c0debf38:	0000 6957 6874 7264 7761 4120 6464 6572     ..Withdraw Addre
c0debf48:	7373 0000 0000 0000 0000 0000 0000 0000     ss..............
	...
c0debf6c:	736d 7367 762f 6c61 6575 762f 6c61 6469     msgs/value/valid
c0debf7c:	7461 726f 735f 6372 615f 6464 6572 7373     ator_src_address
	...
c0debf9c:	0000 6156 696c 6164 6f74 2072 6f53 7275     ..Validator Sour
c0debfac:	6563 0000 0000 0000 0000 0000 0000 0000     ce..............
	...
c0debfd0:	736d 7367 762f 6c61 6575 762f 6c61 6469     msgs/value/valid
c0debfe0:	7461 726f 645f 7473 615f 6464 6572 7373     ator_dst_address
	...
c0dec000:	0000 6156 696c 6164 6f74 2072 6544 7473     ..Validator Dest
	...
c0dec034:	736d 7367 762f 6c61 6575 642f 7365 7263     msgs/value/descr
c0dec044:	7069 6974 6e6f 0000 0000 0000 0000 0000     iption..........
	...
c0dec064:	0000 6544 6373 6972 7470 6f69 006e 0000     ..Description...
	...
c0dec098:	736d 7367 762f 6c61 6575 692f 696e 6974     msgs/value/initi
c0dec0a8:	6c61 645f 7065 736f 7469 612f 6f6d 6e75     al_deposit/amoun
c0dec0b8:	0074 0000 0000 0000 0000 0000 0000 0000     t...............
c0dec0c8:	0000 6544 6f70 6973 2074 6d41 756f 746e     ..Deposit Amount
	...
c0dec0fc:	736d 7367 762f 6c61 6575 692f 696e 6974     msgs/value/initi
c0dec10c:	6c61 645f 7065 736f 7469 642f 6e65 6d6f     al_deposit/denom
	...
c0dec12c:	0000 6544 6f70 6973 2074 6544 6f6e 006d     ..Deposit Denom.
	...
c0dec160:	736d 7367 762f 6c61 6575 702f 6f72 6f70     msgs/value/propo
c0dec170:	6173 5f6c 7974 6570 0000 0000 0000 0000     sal_type........
	...
c0dec190:	0000 7250 706f 736f 6c61 0000 0000 0000     ..Proposal......
	...
c0dec1c4:	736d 7367 762f 6c61 6575 702f 6f72 6f70     msgs/value/propo
c0dec1d4:	6573 0072 0000 0000 0000 0000 0000 0000     ser.............
	...
c0dec1f4:	0000 7250 706f 736f 7265 0000 0000 0000     ..Proposer......
	...
c0dec228:	736d 7367 762f 6c61 6575 742f 7469 656c     msgs/value/title
	...
c0dec258:	0000 6954 6c74 0065 0000 0000 0000 0000     ..Title.........
	...
c0dec28c:	736d 7367 762f 6c61 6575 642f 7065 736f     msgs/value/depos
c0dec29c:	7469 726f 0000 0000 0000 0000 0000 0000     itor............
	...
c0dec2bc:	0000 6553 646e 7265 0000 0000 0000 0000     ..Sender........
	...
c0dec2f0:	736d 7367 762f 6c61 6575 702f 6f72 6f70     msgs/value/propo
c0dec300:	6173 5f6c 6469 0000 0000 0000 0000 0000     sal_id..........
	...
c0dec320:	0000 7250 706f 736f 6c61 4920 0044 0000     ..Proposal ID...
	...
c0dec354:	736d 7367 762f 6c61 6575 762f 746f 7265     msgs/value/voter
	...
c0dec384:	0000 6544 6373 6972 7470 6f69 006e 0000     ..Description...
	...
c0dec3b8:	736d 7367 762f 6c61 6575 6f2f 7470 6f69     msgs/value/optio
c0dec3c8:	006e 0000 0000 0000 0000 0000 0000 0000     n...............
	...
c0dec3e8:	0000 704f 6974 6e6f 0000 0000 0000 0000     ..Option........
	...

c0dec41c <value_substitutions>:
c0dec41c:	6f63 6d73 736f 732d 6b64 4d2f 6773 6553     cosmos-sdk/MsgSe
c0dec42c:	646e 0000 0000 0000 0000 0000 0000 0000     nd..............
	...
c0dec44c:	0000 6553 646e 0000 0000 0000 0000 0000     ..Send..........
	...
c0dec480:	6f63 6d73 736f 732d 6b64 4d2f 6773 6544     cosmos-sdk/MsgDe
c0dec490:	656c 6167 6574 0000 0000 0000 0000 0000     legate..........
	...
c0dec4b0:	0000 6544 656c 6167 6574 0000 0000 0000     ..Delegate......
	...
c0dec4e4:	6f63 6d73 736f 732d 6b64 4d2f 6773 6e55     cosmos-sdk/MsgUn
c0dec4f4:	6564 656c 6167 6574 0000 0000 0000 0000     delegate........
	...
c0dec514:	0000 6e55 6564 656c 6167 6574 0000 0000     ..Undelegate....
	...
c0dec548:	6f63 6d73 736f 732d 6b64 4d2f 6773 6542     cosmos-sdk/MsgBe
c0dec558:	6967 526e 6465 6c65 6765 7461 0065 0000     ginRedelegate...
	...
c0dec578:	0000 6552 6564 656c 6167 6574 0000 0000     ..Redelegate....
	...
c0dec5ac:	6f63 6d73 736f 732d 6b64 4d2f 6773 7553     cosmos-sdk/MsgSu
c0dec5bc:	6d62 7469 7250 706f 736f 6c61 0000 0000     bmitProposal....
	...
c0dec5dc:	0000 7250 706f 736f 0065 0000 0000 0000     ..Propose.......
	...
c0dec610:	6f63 6d73 736f 732d 6b64 4d2f 6773 6544     cosmos-sdk/MsgDe
c0dec620:	6f70 6973 0074 0000 0000 0000 0000 0000     posit...........
	...
c0dec640:	0000 6544 6f70 6973 0074 0000 0000 0000     ..Deposit.......
	...
c0dec674:	6f63 6d73 736f 732d 6b64 4d2f 6773 6f56     cosmos-sdk/MsgVo
c0dec684:	6574 0000 0000 0000 0000 0000 0000 0000     te..............
	...
c0dec6a4:	0000 6f56 6574 0000 0000 0000 0000 0000     ..Vote..........
	...
c0dec6d8:	6f63 6d73 736f 732d 6b64 4d2f 6773 6957     cosmos-sdk/MsgWi
c0dec6e8:	6874 7264 7761 6544 656c 6167 6974 6e6f     thdrawDelegation
c0dec6f8:	6552 6177 6472 0000 0000 0000 0000 0000     Reward..........
c0dec708:	0000 6957 6874 7264 7761 5220 7765 7261     ..Withdraw Rewar
c0dec718:	0064 0000 0000 0000 0000 0000 0000 0000     d...............
	...
c0dec73c:	6f63 6d73 736f 732d 6b64 4d2f 6773 6957     cosmos-sdk/MsgWi
c0dec74c:	6874 7264 7761 6156 696c 6164 6f74 4372     thdrawValidatorC
c0dec75c:	6d6f 696d 7373 6f69 006e 0000 0000 0000     ommission.......
c0dec76c:	0000 6957 6874 7264 7761 5620 6c61 202e     ..Withdraw Val. 
c0dec77c:	6f43 6d6d 7369 6973 6e6f 0000 0000 0000     Commission......
	...
c0dec7a0:	6f63 6d73 736f 732d 6b64 4d2f 6773 6553     cosmos-sdk/MsgSe
c0dec7b0:	5774 7469 6468 6172 4177 6464 6572 7373     tWithdrawAddress
	...
c0dec7d0:	0000 6957 6874 7264 7761 5320 7465 4120     ..Withdraw Set A
c0dec7e0:	6464 6572 7373 0000 0000 0000 0000 0000     ddress..........
	...
c0dec804:	6f63 6d73 736f 732d 6b64 4d2f 6773 754d     cosmos-sdk/MsgMu
c0dec814:	746c 5369 6e65 0064 0000 0000 0000 0000     ltiSend.........
	...
c0dec834:	0000 754d 746c 2069 6553 646e 0000 0000     ..Multi Send....
	...

c0dec868 <whitespaces>:
c0dec868:	0c20 0d0a 0b09 0000                          .......

c0dec870 <USBD_HID_Desc>:
c0dec870:	2109 0111 0100 2222                          .!...."".

c0dec879 <HID_ReportDesc>:
c0dec879:	a006 09ff a101 0901 1503 2600 00ff 0875     ...........&..u.
c0dec889:	4095 0881 0409 0015 ff26 7500 9508 9140     .@......&..u..@.
c0dec899:	c008                                        ..

c0dec89b <C_usb_bos>:
c0dec89b:	0f05 0039 1802 0510 3800 08b6 a934 a009     ..9......8..4...
c0dec8ab:	8b47 a0fd 8876 b615 0065 1e01 1c00 0510     G...v...e.......
c0dec8bb:	df00 dd60 89d8 c745 9c4c 65d2 9e9d 8a64     ..`...E.L..e..d.
c0dec8cb:	009f 0300 b206 7700                          .......w.

c0dec8d4 <HID_Desc>:
c0dec8d4:	7ed9 c0de 7ee9 c0de 7ef9 c0de 7f09 c0de     .~...~...~......
c0dec8e4:	7f19 c0de 7f29 c0de 7f39 c0de 7f49 c0de     ....)...9...I...

c0dec8f4 <C_winusb_string_descriptor>:
c0dec8f4:	0312 004d 0053 0046 0054 0031 0030 0030     ..M.S.F.T.1.0.0.
c0dec904:	0077                                        w.

c0dec906 <C_winusb_guid>:
c0dec906:	0092 0000 0100 0005 0001 0088 0000 0007     ................
c0dec916:	0000 002a 0044 0065 0076 0069 0063 0065     ..*.D.e.v.i.c.e.
c0dec926:	0049 006e 0074 0065 0072 0066 0061 0063     I.n.t.e.r.f.a.c.
c0dec936:	0065 0047 0055 0049 0044 0073 0000 0050     e.G.U.I.D.s...P.
c0dec946:	0000 007b 0031 0033 0064 0036 0033 0034     ..{.1.3.d.6.3.4.
c0dec956:	0030 0030 002d 0032 0043 0039 0037 002d     0.0.-.2.C.9.7.-.
c0dec966:	0030 0030 0030 0034 002d 0030 0030 0030     0.0.0.4.-.0.0.0.
c0dec976:	0030 002d 0034 0063 0036 0035 0036 0034     0.-.4.c.6.5.6.4.
c0dec986:	0036 0037 0036 0035 0037 0032 007d 0000     6.7.6.5.7.2.}...
	...

c0dec998 <C_winusb_request_descriptor>:
c0dec998:	000a 0000 0000 0603 00b2 0008 0001 0000     ................
c0dec9a8:	00a8 0008 0002 0001 00a0 0014 0003 4957     ..............WI
c0dec9b8:	554e 4253 0000 0000 0000 0000 0000 0084     NUSB............
c0dec9c8:	0004 0007 002a 0044 0065 0076 0069 0063     ....*.D.e.v.i.c.
c0dec9d8:	0065 0049 006e 0074 0065 0072 0066 0061     e.I.n.t.e.r.f.a.
c0dec9e8:	0063 0065 0047 0055 0049 0044 0073 0000     c.e.G.U.I.D.s...
c0dec9f8:	0050 007b 0043 0045 0038 0030 0039 0032     P.{.C.E.8.0.9.2.
c0deca08:	0036 0034 002d 0034 0042 0032 0034 002d     6.4.-.4.B.2.4.-.
c0deca18:	0034 0045 0038 0031 002d 0041 0038 0042     4.E.8.1.-.A.8.B.
c0deca28:	0032 002d 0035 0037 0045 0044 0030 0031     2.-.5.7.E.D.0.1.
c0deca38:	0044 0035 0038 0030 0045 0031 007d 0000     D.5.8.0.E.1.}...
c0deca48:	0000 0000                                   ....

c0deca4c <USBD_HID>:
c0deca4c:	7d33 c0de 7d5b c0de 7c97 c0de 0000 0000     3}..[}...|......
c0deca5c:	0000 0000 7db9 c0de 7dd5 c0de 0000 0000     .....}...}......
	...
c0deca74:	8065 c0de 8065 c0de 8065 c0de 8075 c0de     e...e...e...u...

c0deca84 <USBD_WEBUSB>:
c0deca84:	7e31 c0de 7e59 c0de 7e5d c0de 0000 0000     1~..Y~..]~......
c0deca94:	0000 0000 7e61 c0de 7e7d c0de 0000 0000     ....a~..}~......
	...
c0decaac:	8065 c0de 8065 c0de 8065 c0de 8075 c0de     e...e...e...u...

c0decabc <USBD_DeviceDesc>:
c0decabc:	0112 0210 0000 4000 2c97 5011 0201 0201     .......@.,.P....
c0decacc:	0103                                        ..

c0decace <USBD_LangIDDesc>:
c0decace:	0304 0409                                   ....

c0decad2 <USBD_MANUFACTURER_STRING>:
c0decad2:	030e 004c 0065 0064 0067 0065 0072          ..L.e.d.g.e.r.

c0decae0 <USBD_PRODUCT_FS_STRING>:
c0decae0:	0318 004e 0061 006e 006f 0020 0053 0020     ..N.a.n.o. .S. .
c0decaf0:	0050 006c 0075 0073                         P.l.u.s.

c0decaf8 <USB_SERIAL_STRING>:
c0decaf8:	030a 0030 0030 0030 0031                    ..0.0.0.1.

c0decb02 <C_winusb_wcid>:
c0decb02:	0028 0000 0100 0004 0001 0000 0000 0000     (...............
c0decb12:	0101 4957 554e 4253 0000 0000 0000 0000     ..WINUSB........
	...

c0decb2c <USBD_CfgDesc>:
c0decb2c:	0209 0040 0102 c002 0932 0004 0200 0003     ..@.....2.......
c0decb3c:	0200 2109 0111 0100 2222 0700 8205 4003     ...!...."".....@
c0decb4c:	0100 0507 0302 0040 0901 0104 0200 ffff     ......@.........
c0decb5c:	02ff 0507 0383 0040 0701 0305 4003 0100     ......@......@..

c0decb6c <USBD_DeviceQualifierDesc>:
c0decb6c:	060a 0200 0000 4000 0001 0000               .......@....

c0decb78 <ux_layout_bb_elements>:
c0decb78:	0003 0000 0000 0080 0040 0000 0001 0000     ........@.......
c0decb88:	0000 0000 ffff 00ff 0000 0000 0000 0000     ................
c0decb98:	0105 0002 001c 0004 0007 0000 0000 0000     ................
c0decba8:	ffff 00ff 0000 0000 0000 0000 b544 c0de     ............D...
c0decbb8:	0205 007a 001c 0004 0007 0000 0000 0000     ..z.............
c0decbc8:	ffff 00ff 0000 0000 0000 0000 b55c c0de     ............\...
c0decbd8:	1007 0006 001d 0074 0020 0000 0000 0000     ......t. .......
c0decbe8:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................
c0decbf8:	1107 0006 002b 0074 0020 0000 0000 0000     ....+.t. .......
c0decc08:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................

c0decc18 <ux_layout_paging_elements>:
c0decc18:	0003 0000 0000 0080 0040 0000 0001 0000     ........@.......
c0decc28:	0000 0000 ffff 00ff 0000 0000 0000 0000     ................
c0decc38:	0105 0002 001c 0004 0007 0000 0000 0000     ................
c0decc48:	ffff 00ff 0000 0000 0000 0000 b544 c0de     ............D...
c0decc58:	0205 007a 001c 0004 0007 0000 0000 0000     ..z.............
c0decc68:	ffff 00ff 0000 0000 0000 0000 b55c c0de     ............\...
c0decc78:	1007 0000 000f 0080 000c 0000 0000 0000     ................
c0decc88:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................
c0decc98:	1107 0007 001d 0072 000c 0000 0000 0000     ......r.........
c0decca8:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................
c0deccb8:	1207 0007 002b 0072 000c 0000 0000 0000     ....+.r.........
c0deccc8:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................
c0deccd8:	1307 0007 0039 0072 000c 0000 0000 0000     ....9.r.........
c0decce8:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................

c0deccf8 <ux_layout_pb_elements>:
c0deccf8:	0003 0000 0000 0080 0040 0000 0001 0000     ........@.......
c0decd08:	0000 0000 ffff 00ff 0000 0000 0000 0000     ................
c0decd18:	0105 0002 001c 0004 0007 0000 0000 0000     ................
c0decd28:	ffff 00ff 0000 0000 0000 0000 b544 c0de     ............D...
c0decd38:	0205 007a 001c 0004 0007 0000 0000 0000     ..z.............
c0decd48:	ffff 00ff 0000 0000 0000 0000 b55c c0de     ............\...
c0decd58:	1005 0039 0011 000e 000e 0000 0000 0000     ..9.............
c0decd68:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................
c0decd78:	1107 0000 002c 0080 0020 0000 0000 0000     ....,... .......
c0decd88:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................

c0decd98 <ux_layout_pbb_elements>:
c0decd98:	0003 0000 0000 0080 0040 0000 0001 0000     ........@.......
c0decda8:	0000 0000 ffff 00ff 0000 0000 0000 0000     ................
c0decdb8:	0105 0002 001c 0004 0007 0000 0000 0000     ................
c0decdc8:	ffff 00ff 0000 0000 0000 0000 b544 c0de     ............D...
c0decdd8:	0205 007a 001c 0004 0007 0000 0000 0000     ..z.............
c0decde8:	ffff 00ff 0000 0000 0000 0000 b55c c0de     ............\...
c0decdf8:	0f05 0039 000a 000e 000e 0000 0000 0000     ..9.............
c0dece08:	ffff 00ff 0000 0000 800a 0000 0000 0000     ................
c0dece18:	1007 0006 0025 0074 0020 0000 0000 0000     ....%.t. .......
c0dece28:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................
c0dece38:	1107 0006 0033 0074 0020 0000 0000 0000     ....3.t. .......
c0dece48:	ffff 00ff 0000 0000 8008 0000 0000 0000     ................
c0dece58:	6964 6173 6c62 6465 0000 0000 4853 574f     disabled....SHOW
c0dece68:	4e49 2047 4144 4154 0000 0000               ING DATA....

c0dece74 <ux_idle_flow_1_step_val>:
c0dece74:	b46c c0de 9e4e c0de 5530 da7a               l...N...0Uz.

c0dece80 <ux_idle_flow_1_step>:
c0dece80:	8c75 c0de ce74 c0de 0000 0000 0000 0000     u...t...........

c0dece90 <ux_idle_flow_2_step_validate_step>:
c0dece90:	9595 c0de 0000 0000 0000 0000 0000 0000     ................

c0decea0 <ux_idle_flow_2_step_validate>:
c0decea0:	ce90 c0de ffff ffff                         ........

c0decea8 <ux_idle_flow_2_step_val>:
c0decea8:	9dee c0de 5570 da7a                         ....pUz.

c0deceb0 <ux_idle_flow_2_step>:
c0deceb0:	95bd c0de cea8 c0de cea0 c0de 0000 0000     ................

c0decec0 <ux_idle_flow_3_step_val>:
c0decec0:	9c8b c0de 9f3b c0de                         ....;...

c0decec8 <ux_idle_flow_3_step>:
c0decec8:	8649 c0de cec0 c0de 0000 0000 0000 0000     I...............

c0deced8 <ux_idle_flow_4_step_val>:
c0deced8:	9b4e c0de 9fcb c0de                         N.......

c0decee0 <ux_idle_flow_4_step>:
c0decee0:	8649 c0de ced8 c0de 0000 0000 0000 0000     I...............

c0decef0 <ux_idle_flow_5_step_val>:
c0decef0:	a01a c0de 9d85 c0de                         ........

c0decef8 <ux_idle_flow_5_step>:
c0decef8:	8649 c0de cef0 c0de 0000 0000 0000 0000     I...............

c0decf08 <ux_idle_flow_6_step_validate_step>:
c0decf08:	9601 c0de 0000 0000 0000 0000 0000 0000     ................

c0decf18 <ux_idle_flow_6_step_validate>:
c0decf18:	cf08 c0de ffff ffff                         ........

c0decf20 <ux_idle_flow_6_step_val>:
c0decf20:	b4cc c0de 9f5c c0de                         ....\...

c0decf28 <ux_idle_flow_6_step>:
c0decf28:	8bad c0de cf20 c0de cf18 c0de 0000 0000     .... ...........

c0decf38 <ux_idle_flow>:
c0decf38:	ce80 c0de ceb0 c0de cec8 c0de cee0 c0de     ................
c0decf48:	cef8 c0de cf28 c0de ffff ffff               ....(.......

c0decf54 <ux_error_flow_1_step_val>:
c0decf54:	5530 da7a 5570 da7a                         0Uz.pUz.

c0decf5c <ux_error_flow_1_step>:
c0decf5c:	89c5 c0de cf54 c0de 0000 0000 0000 0000     ....T...........

c0decf6c <ux_error_flow_2_step_validate_step>:
c0decf6c:	9607 c0de 0000 0000 0000 0000 0000 0000     ................

c0decf7c <ux_error_flow_2_step_validate>:
c0decf7c:	cf6c c0de ffff ffff                         l.......

c0decf84 <ux_error_flow_2_step_val>:
c0decf84:	b52c c0de 9f31 c0de                         ,...1...

c0decf8c <ux_error_flow_2_step>:
c0decf8c:	8bad c0de cf84 c0de cf7c c0de 0000 0000     ........|.......

c0decf9c <ux_error_flow>:
c0decf9c:	cf5c c0de cf8c c0de ffff ffff               \...........

c0decfa8 <ux_review_flow_1_review_title_val>:
c0decfa8:	b46c c0de 9f11 c0de 9d07 c0de               l...........

c0decfb4 <ux_review_flow_1_review_title>:
c0decfb4:	8c75 c0de cfa8 c0de 0000 0000 0000 0000     u...............

c0decfc4 <ux_review_flow_2_review_title_val>:
c0decfc4:	b46c c0de 9f11 c0de 9d07 c0de               l...........

c0decfd0 <ux_review_flow_2_review_title>:
c0decfd0:	8c75 c0de cfc4 c0de 0000 0000 0000 0000     u...............

c0decfe0 <ux_review_flow_3_review_title_val>:
c0decfe0:	b46c c0de 9fd5 c0de 9e40 c0de               l.......@...

c0decfec <ux_review_flow_3_review_title>:
c0decfec:	8c75 c0de cfe0 c0de 0000 0000 0000 0000     u...............

c0decffc <ux_review_flow_2_start_step>:
c0decffc:	960d c0de 0000 0000 0000 0000 0000 0000     ................

c0ded00c <ux_review_flow_2_step_val>:
c0ded00c:	5530 da7a 5570 da7a                         0Uz.pUz.

c0ded014 <ux_review_flow_2_step>:
c0ded014:	9651 c0de d00c c0de 0000 0000 0000 0000     Q...............

c0ded024 <ux_review_flow_2_end_step>:
c0ded024:	9661 c0de 0000 0000 0000 0000 0000 0000     a...............

c0ded034 <ux_review_flow_3_step_validate_step>:
c0ded034:	96cd c0de 0000 0000 0000 0000 0000 0000     ................

c0ded044 <ux_review_flow_3_step_validate>:
c0ded044:	d034 c0de ffff ffff                         4.......

c0ded04c <ux_review_flow_3_step_val>:
c0ded04c:	b52c c0de 9ec0 c0de                         ,.......

c0ded054 <ux_review_flow_3_step>:
c0ded054:	8bad c0de d04c c0de d044 c0de 0000 0000     ....L...D.......

c0ded064 <ux_review_flow_4_step_validate_step>:
c0ded064:	96d5 c0de 0000 0000 0000 0000 0000 0000     ................

c0ded074 <ux_review_flow_4_step_validate>:
c0ded074:	d064 c0de ffff ffff                         d.......

c0ded07c <ux_review_flow_4_step_val>:
c0ded07c:	b49c c0de 9f34 c0de                         ....4...

c0ded084 <ux_review_flow_4_step>:
c0ded084:	8bad c0de d07c c0de d074 c0de 0000 0000     ....|...t.......

c0ded094 <ux_review_flow_5_step_validate_step>:
c0ded094:	96e5 c0de 0000 0000 0000 0000 0000 0000     ................

c0ded0a4 <ux_review_flow_5_step_validate>:
c0ded0a4:	d094 c0de ffff ffff                         ........

c0ded0ac <ux_review_flow_5_step_val>:
c0ded0ac:	b4fc c0de 9b5c c0de                         ....\...

c0ded0b4 <ux_review_flow_5_step>:
c0ded0b4:	96f5 c0de d0ac c0de d0a4 c0de 0000 0000     ................

c0ded0c4 <_etext>:
	...

c0ded200 <N_appmode_impl>:
	...

c0ded240 <N_appdata_impl>:
	...
