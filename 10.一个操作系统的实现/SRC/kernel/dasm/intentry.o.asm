
intentry.o:     file format elf32-i386

Disassembly of section .text:

00000000 <IntHandler>:
   0:	60                   	pusha  
   1:	b0 20                	mov    $0x20,%al
   3:	e6 20                	out    %al,$0x20
   5:	e6 a0                	out    %al,$0xa0
   7:	61                   	popa   
   8:	cf                   	iret   

00000009 <divide_error>:
   9:	6a ff                	push   $0xffffffff
   b:	60                   	pusha  
   c:	1e                   	push   %ds
   d:	06                   	push   %es
   e:	0f a0                	push   %fs
  10:	0f a8                	push   %gs
  12:	0f 20 de             	mov    %cr3,%esi
  15:	83 fe 00             	cmp    $0x0,%esi
  18:	74 08                	je     22 <divide_error.ex_st>
  1a:	be 00 00 00 00       	mov    $0x0,%esi
  1f:	0f 22 de             	mov    %esi,%cr3

00000022 <divide_error.ex_st>:
  22:	ff 05 18 05 00 00    	incl   0x518
  28:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
  2f:	75 07                	jne    38 <divide_error.excep_pro>
  31:	89 e5                	mov    %esp,%ebp
  33:	bc 00 28 00 00       	mov    $0x2800,%esp

00000038 <divide_error.excep_pro>:
  38:	ff 75 3c             	pushl  0x3c(%ebp)
  3b:	ff 75 38             	pushl  0x38(%ebp)
  3e:	ff 75 34             	pushl  0x34(%ebp)
  41:	ff 75 30             	pushl  0x30(%ebp)
  44:	6a 00                	push   $0x0
  46:	eb 00                	jmp    48 <exception>

00000048 <exception>:
  48:	e8 fc ff ff ff       	call   49 <exception+0x1>
  4d:	83 c4 14             	add    $0x14,%esp
  50:	fa                   	cli    
  51:	ff 0d 18 05 00 00    	decl   0x518
  57:	75 1d                	jne    76 <excep_end>
  59:	8b 1d 00 00 00 00    	mov    0x0,%ebx
  5f:	89 dc                	mov    %ebx,%esp
  61:	83 c3 48             	add    $0x48,%ebx
  64:	89 1d 04 00 00 00    	mov    %ebx,0x4
  6a:	8b 5c 24 48          	mov    0x48(%esp),%ebx
  6e:	83 fb 00             	cmp    $0x0,%ebx
  71:	74 03                	je     76 <excep_end>
  73:	0f 22 db             	mov    %ebx,%cr3

00000076 <excep_end>:
  76:	0f a9                	pop    %gs
  78:	0f a1                	pop    %fs
  7a:	07                   	pop    %es
  7b:	1f                   	pop    %ds
  7c:	61                   	popa   
  7d:	83 c4 04             	add    $0x4,%esp
  80:	cf                   	iret   

00000081 <single_step_exception>:
  81:	6a ff                	push   $0xffffffff
  83:	60                   	pusha  
  84:	1e                   	push   %ds
  85:	06                   	push   %es
  86:	0f a0                	push   %fs
  88:	0f a8                	push   %gs
  8a:	0f 20 de             	mov    %cr3,%esi
  8d:	83 fe 00             	cmp    $0x0,%esi
  90:	74 08                	je     9a <single_step_exception.ex_st>
  92:	be 00 00 00 00       	mov    $0x0,%esi
  97:	0f 22 de             	mov    %esi,%cr3

0000009a <single_step_exception.ex_st>:
  9a:	ff 05 18 05 00 00    	incl   0x518
  a0:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
  a7:	75 07                	jne    b0 <single_step_exception.excep_pro>
  a9:	89 e5                	mov    %esp,%ebp
  ab:	bc 00 28 00 00       	mov    $0x2800,%esp

000000b0 <single_step_exception.excep_pro>:
  b0:	ff 75 3c             	pushl  0x3c(%ebp)
  b3:	ff 75 38             	pushl  0x38(%ebp)
  b6:	ff 75 34             	pushl  0x34(%ebp)
  b9:	ff 75 30             	pushl  0x30(%ebp)
  bc:	6a 01                	push   $0x1
  be:	eb 88                	jmp    48 <exception>

000000c0 <nmi>:
  c0:	6a ff                	push   $0xffffffff
  c2:	60                   	pusha  
  c3:	1e                   	push   %ds
  c4:	06                   	push   %es
  c5:	0f a0                	push   %fs
  c7:	0f a8                	push   %gs
  c9:	0f 20 de             	mov    %cr3,%esi
  cc:	83 fe 00             	cmp    $0x0,%esi
  cf:	74 08                	je     d9 <nmi.ex_st>
  d1:	be 00 00 00 00       	mov    $0x0,%esi
  d6:	0f 22 de             	mov    %esi,%cr3

000000d9 <nmi.ex_st>:
  d9:	ff 05 18 05 00 00    	incl   0x518
  df:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
  e6:	75 07                	jne    ef <nmi.excep_pro>
  e8:	89 e5                	mov    %esp,%ebp
  ea:	bc 00 28 00 00       	mov    $0x2800,%esp

000000ef <nmi.excep_pro>:
  ef:	ff 75 3c             	pushl  0x3c(%ebp)
  f2:	ff 75 38             	pushl  0x38(%ebp)
  f5:	ff 75 34             	pushl  0x34(%ebp)
  f8:	ff 75 30             	pushl  0x30(%ebp)
  fb:	6a 02                	push   $0x2
  fd:	e9 46 ff ff ff       	jmp    48 <exception>

00000102 <breakpoint_exception>:
 102:	6a ff                	push   $0xffffffff
 104:	60                   	pusha  
 105:	1e                   	push   %ds
 106:	06                   	push   %es
 107:	0f a0                	push   %fs
 109:	0f a8                	push   %gs
 10b:	0f 20 de             	mov    %cr3,%esi
 10e:	83 fe 00             	cmp    $0x0,%esi
 111:	74 08                	je     11b <breakpoint_exception.ex_st>
 113:	be 00 00 00 00       	mov    $0x0,%esi
 118:	0f 22 de             	mov    %esi,%cr3

0000011b <breakpoint_exception.ex_st>:
 11b:	ff 05 18 05 00 00    	incl   0x518
 121:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 128:	75 07                	jne    131 <breakpoint_exception.excep_pro>
 12a:	89 e5                	mov    %esp,%ebp
 12c:	bc 00 28 00 00       	mov    $0x2800,%esp

00000131 <breakpoint_exception.excep_pro>:
 131:	ff 75 3c             	pushl  0x3c(%ebp)
 134:	ff 75 38             	pushl  0x38(%ebp)
 137:	ff 75 34             	pushl  0x34(%ebp)
 13a:	ff 75 30             	pushl  0x30(%ebp)
 13d:	6a 03                	push   $0x3
 13f:	e9 04 ff ff ff       	jmp    48 <exception>

00000144 <overflow>:
 144:	6a ff                	push   $0xffffffff
 146:	60                   	pusha  
 147:	1e                   	push   %ds
 148:	06                   	push   %es
 149:	0f a0                	push   %fs
 14b:	0f a8                	push   %gs
 14d:	0f 20 de             	mov    %cr3,%esi
 150:	83 fe 00             	cmp    $0x0,%esi
 153:	74 08                	je     15d <overflow.ex_st>
 155:	be 00 00 00 00       	mov    $0x0,%esi
 15a:	0f 22 de             	mov    %esi,%cr3

0000015d <overflow.ex_st>:
 15d:	ff 05 18 05 00 00    	incl   0x518
 163:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 16a:	75 07                	jne    173 <overflow.excep_pro>
 16c:	89 e5                	mov    %esp,%ebp
 16e:	bc 00 28 00 00       	mov    $0x2800,%esp

00000173 <overflow.excep_pro>:
 173:	ff 75 3c             	pushl  0x3c(%ebp)
 176:	ff 75 38             	pushl  0x38(%ebp)
 179:	ff 75 34             	pushl  0x34(%ebp)
 17c:	ff 75 30             	pushl  0x30(%ebp)
 17f:	6a 04                	push   $0x4
 181:	e9 c2 fe ff ff       	jmp    48 <exception>

00000186 <bounds_check>:
 186:	6a ff                	push   $0xffffffff
 188:	60                   	pusha  
 189:	1e                   	push   %ds
 18a:	06                   	push   %es
 18b:	0f a0                	push   %fs
 18d:	0f a8                	push   %gs
 18f:	0f 20 de             	mov    %cr3,%esi
 192:	83 fe 00             	cmp    $0x0,%esi
 195:	74 08                	je     19f <bounds_check.ex_st>
 197:	be 00 00 00 00       	mov    $0x0,%esi
 19c:	0f 22 de             	mov    %esi,%cr3

0000019f <bounds_check.ex_st>:
 19f:	ff 05 18 05 00 00    	incl   0x518
 1a5:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 1ac:	75 07                	jne    1b5 <bounds_check.excep_pro>
 1ae:	89 e5                	mov    %esp,%ebp
 1b0:	bc 00 28 00 00       	mov    $0x2800,%esp

000001b5 <bounds_check.excep_pro>:
 1b5:	ff 75 3c             	pushl  0x3c(%ebp)
 1b8:	ff 75 38             	pushl  0x38(%ebp)
 1bb:	ff 75 34             	pushl  0x34(%ebp)
 1be:	ff 75 30             	pushl  0x30(%ebp)
 1c1:	6a 05                	push   $0x5
 1c3:	e9 80 fe ff ff       	jmp    48 <exception>

000001c8 <inval_opcode>:
 1c8:	6a ff                	push   $0xffffffff
 1ca:	60                   	pusha  
 1cb:	1e                   	push   %ds
 1cc:	06                   	push   %es
 1cd:	0f a0                	push   %fs
 1cf:	0f a8                	push   %gs
 1d1:	0f 20 de             	mov    %cr3,%esi
 1d4:	83 fe 00             	cmp    $0x0,%esi
 1d7:	74 08                	je     1e1 <inval_opcode.ex_st>
 1d9:	be 00 00 00 00       	mov    $0x0,%esi
 1de:	0f 22 de             	mov    %esi,%cr3

000001e1 <inval_opcode.ex_st>:
 1e1:	ff 05 18 05 00 00    	incl   0x518
 1e7:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 1ee:	75 07                	jne    1f7 <inval_opcode.excep_pro>
 1f0:	89 e5                	mov    %esp,%ebp
 1f2:	bc 00 28 00 00       	mov    $0x2800,%esp

000001f7 <inval_opcode.excep_pro>:
 1f7:	ff 75 3c             	pushl  0x3c(%ebp)
 1fa:	ff 75 38             	pushl  0x38(%ebp)
 1fd:	ff 75 34             	pushl  0x34(%ebp)
 200:	ff 75 30             	pushl  0x30(%ebp)
 203:	6a 06                	push   $0x6
 205:	e9 3e fe ff ff       	jmp    48 <exception>

0000020a <copr_not_available>:
 20a:	6a ff                	push   $0xffffffff
 20c:	60                   	pusha  
 20d:	1e                   	push   %ds
 20e:	06                   	push   %es
 20f:	0f a0                	push   %fs
 211:	0f a8                	push   %gs
 213:	0f 20 de             	mov    %cr3,%esi
 216:	83 fe 00             	cmp    $0x0,%esi
 219:	74 08                	je     223 <copr_not_available.ex_st>
 21b:	be 00 00 00 00       	mov    $0x0,%esi
 220:	0f 22 de             	mov    %esi,%cr3

00000223 <copr_not_available.ex_st>:
 223:	ff 05 18 05 00 00    	incl   0x518
 229:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 230:	75 07                	jne    239 <copr_not_available.excep_pro>
 232:	89 e5                	mov    %esp,%ebp
 234:	bc 00 28 00 00       	mov    $0x2800,%esp

00000239 <copr_not_available.excep_pro>:
 239:	ff 75 3c             	pushl  0x3c(%ebp)
 23c:	ff 75 38             	pushl  0x38(%ebp)
 23f:	ff 75 34             	pushl  0x34(%ebp)
 242:	ff 75 30             	pushl  0x30(%ebp)
 245:	6a 07                	push   $0x7
 247:	e9 fc fd ff ff       	jmp    48 <exception>

0000024c <double_fault>:
 24c:	60                   	pusha  
 24d:	1e                   	push   %ds
 24e:	06                   	push   %es
 24f:	0f a0                	push   %fs
 251:	0f a8                	push   %gs
 253:	0f 20 de             	mov    %cr3,%esi
 256:	83 fe 00             	cmp    $0x0,%esi
 259:	74 08                	je     263 <double_fault.ex_st>
 25b:	be 00 00 00 00       	mov    $0x0,%esi
 260:	0f 22 de             	mov    %esi,%cr3

00000263 <double_fault.ex_st>:
 263:	ff 05 18 05 00 00    	incl   0x518
 269:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 270:	75 07                	jne    279 <double_fault.excep_pro>
 272:	89 e5                	mov    %esp,%ebp
 274:	bc 00 28 00 00       	mov    $0x2800,%esp

00000279 <double_fault.excep_pro>:
 279:	ff 75 3c             	pushl  0x3c(%ebp)
 27c:	ff 75 38             	pushl  0x38(%ebp)
 27f:	ff 75 34             	pushl  0x34(%ebp)
 282:	ff 75 30             	pushl  0x30(%ebp)
 285:	6a 08                	push   $0x8
 287:	e9 bc fd ff ff       	jmp    48 <exception>

0000028c <copr_seg_overrun>:
 28c:	6a ff                	push   $0xffffffff
 28e:	60                   	pusha  
 28f:	1e                   	push   %ds
 290:	06                   	push   %es
 291:	0f a0                	push   %fs
 293:	0f a8                	push   %gs
 295:	0f 20 de             	mov    %cr3,%esi
 298:	83 fe 00             	cmp    $0x0,%esi
 29b:	74 08                	je     2a5 <copr_seg_overrun.ex_st>
 29d:	be 00 00 00 00       	mov    $0x0,%esi
 2a2:	0f 22 de             	mov    %esi,%cr3

000002a5 <copr_seg_overrun.ex_st>:
 2a5:	ff 05 18 05 00 00    	incl   0x518
 2ab:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 2b2:	75 07                	jne    2bb <copr_seg_overrun.excep_pro>
 2b4:	89 e5                	mov    %esp,%ebp
 2b6:	bc 00 28 00 00       	mov    $0x2800,%esp

000002bb <copr_seg_overrun.excep_pro>:
 2bb:	ff 75 3c             	pushl  0x3c(%ebp)
 2be:	ff 75 38             	pushl  0x38(%ebp)
 2c1:	ff 75 34             	pushl  0x34(%ebp)
 2c4:	ff 75 30             	pushl  0x30(%ebp)
 2c7:	6a 09                	push   $0x9
 2c9:	e9 7a fd ff ff       	jmp    48 <exception>

000002ce <inval_tss>:
 2ce:	60                   	pusha  
 2cf:	1e                   	push   %ds
 2d0:	06                   	push   %es
 2d1:	0f a0                	push   %fs
 2d3:	0f a8                	push   %gs
 2d5:	0f 20 de             	mov    %cr3,%esi
 2d8:	83 fe 00             	cmp    $0x0,%esi
 2db:	74 08                	je     2e5 <inval_tss.ex_st>
 2dd:	be 00 00 00 00       	mov    $0x0,%esi
 2e2:	0f 22 de             	mov    %esi,%cr3

000002e5 <inval_tss.ex_st>:
 2e5:	ff 05 18 05 00 00    	incl   0x518
 2eb:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 2f2:	75 07                	jne    2fb <inval_tss.excep_pro>
 2f4:	89 e5                	mov    %esp,%ebp
 2f6:	bc 00 28 00 00       	mov    $0x2800,%esp

000002fb <inval_tss.excep_pro>:
 2fb:	ff 75 3c             	pushl  0x3c(%ebp)
 2fe:	ff 75 38             	pushl  0x38(%ebp)
 301:	ff 75 34             	pushl  0x34(%ebp)
 304:	ff 75 30             	pushl  0x30(%ebp)
 307:	6a 0a                	push   $0xa
 309:	e9 3a fd ff ff       	jmp    48 <exception>

0000030e <segment_not_present>:
 30e:	60                   	pusha  
 30f:	1e                   	push   %ds
 310:	06                   	push   %es
 311:	0f a0                	push   %fs
 313:	0f a8                	push   %gs
 315:	0f 20 de             	mov    %cr3,%esi
 318:	83 fe 00             	cmp    $0x0,%esi
 31b:	74 08                	je     325 <segment_not_present.ex_st>
 31d:	be 00 00 00 00       	mov    $0x0,%esi
 322:	0f 22 de             	mov    %esi,%cr3

00000325 <segment_not_present.ex_st>:
 325:	ff 05 18 05 00 00    	incl   0x518
 32b:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 332:	75 07                	jne    33b <segment_not_present.excep_pro>
 334:	89 e5                	mov    %esp,%ebp
 336:	bc 00 28 00 00       	mov    $0x2800,%esp

0000033b <segment_not_present.excep_pro>:
 33b:	ff 75 3c             	pushl  0x3c(%ebp)
 33e:	ff 75 38             	pushl  0x38(%ebp)
 341:	ff 75 34             	pushl  0x34(%ebp)
 344:	ff 75 30             	pushl  0x30(%ebp)
 347:	6a 0b                	push   $0xb
 349:	e9 fa fc ff ff       	jmp    48 <exception>

0000034e <stack_exception>:
 34e:	60                   	pusha  
 34f:	1e                   	push   %ds
 350:	06                   	push   %es
 351:	0f a0                	push   %fs
 353:	0f a8                	push   %gs
 355:	0f 20 de             	mov    %cr3,%esi
 358:	83 fe 00             	cmp    $0x0,%esi
 35b:	74 08                	je     365 <stack_exception.ex_st>
 35d:	be 00 00 00 00       	mov    $0x0,%esi
 362:	0f 22 de             	mov    %esi,%cr3

00000365 <stack_exception.ex_st>:
 365:	ff 05 18 05 00 00    	incl   0x518
 36b:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 372:	75 07                	jne    37b <stack_exception.excep_pro>
 374:	89 e5                	mov    %esp,%ebp
 376:	bc 00 28 00 00       	mov    $0x2800,%esp

0000037b <stack_exception.excep_pro>:
 37b:	ff 75 3c             	pushl  0x3c(%ebp)
 37e:	ff 75 38             	pushl  0x38(%ebp)
 381:	ff 75 34             	pushl  0x34(%ebp)
 384:	ff 75 30             	pushl  0x30(%ebp)
 387:	6a 0c                	push   $0xc
 389:	e9 ba fc ff ff       	jmp    48 <exception>

0000038e <general_protection>:
 38e:	60                   	pusha  
 38f:	1e                   	push   %ds
 390:	06                   	push   %es
 391:	0f a0                	push   %fs
 393:	0f a8                	push   %gs
 395:	0f 20 de             	mov    %cr3,%esi
 398:	83 fe 00             	cmp    $0x0,%esi
 39b:	74 08                	je     3a5 <general_protection.ex_st>
 39d:	be 00 00 00 00       	mov    $0x0,%esi
 3a2:	0f 22 de             	mov    %esi,%cr3

000003a5 <general_protection.ex_st>:
 3a5:	ff 05 18 05 00 00    	incl   0x518
 3ab:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 3b2:	75 07                	jne    3bb <general_protection.excep_pro>
 3b4:	89 e5                	mov    %esp,%ebp
 3b6:	bc 00 28 00 00       	mov    $0x2800,%esp

000003bb <general_protection.excep_pro>:
 3bb:	ff 75 3c             	pushl  0x3c(%ebp)
 3be:	ff 75 38             	pushl  0x38(%ebp)
 3c1:	ff 75 34             	pushl  0x34(%ebp)
 3c4:	ff 75 30             	pushl  0x30(%ebp)
 3c7:	6a 0d                	push   $0xd
 3c9:	e9 7a fc ff ff       	jmp    48 <exception>

000003ce <page_fault>:
 3ce:	60                   	pusha  
 3cf:	1e                   	push   %ds
 3d0:	06                   	push   %es
 3d1:	0f a0                	push   %fs
 3d3:	0f a8                	push   %gs
 3d5:	0f 20 de             	mov    %cr3,%esi
 3d8:	83 fe 00             	cmp    $0x0,%esi
 3db:	74 08                	je     3e5 <page_fault.ex_st>
 3dd:	be 00 00 00 00       	mov    $0x0,%esi
 3e2:	0f 22 de             	mov    %esi,%cr3

000003e5 <page_fault.ex_st>:
 3e5:	ff 05 18 05 00 00    	incl   0x518
 3eb:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 3f2:	75 07                	jne    3fb <page_fault.excep_pro>
 3f4:	89 e5                	mov    %esp,%ebp
 3f6:	bc 00 28 00 00       	mov    $0x2800,%esp

000003fb <page_fault.excep_pro>:
 3fb:	ff 75 3c             	pushl  0x3c(%ebp)
 3fe:	ff 75 38             	pushl  0x38(%ebp)
 401:	ff 75 34             	pushl  0x34(%ebp)
 404:	ff 75 30             	pushl  0x30(%ebp)
 407:	6a 0e                	push   $0xe
 409:	e9 3a fc ff ff       	jmp    48 <exception>

0000040e <copr_error>:
 40e:	6a ff                	push   $0xffffffff
 410:	60                   	pusha  
 411:	1e                   	push   %ds
 412:	06                   	push   %es
 413:	0f a0                	push   %fs
 415:	0f a8                	push   %gs
 417:	0f 20 de             	mov    %cr3,%esi
 41a:	83 fe 00             	cmp    $0x0,%esi
 41d:	74 08                	je     427 <copr_error.ex_st>
 41f:	be 00 00 00 00       	mov    $0x0,%esi
 424:	0f 22 de             	mov    %esi,%cr3

00000427 <copr_error.ex_st>:
 427:	ff 05 18 05 00 00    	incl   0x518
 42d:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 434:	75 07                	jne    43d <copr_error.excep_pro>
 436:	89 e5                	mov    %esp,%ebp
 438:	bc 00 28 00 00       	mov    $0x2800,%esp

0000043d <copr_error.excep_pro>:
 43d:	ff 75 3c             	pushl  0x3c(%ebp)
 440:	ff 75 38             	pushl  0x38(%ebp)
 443:	ff 75 34             	pushl  0x34(%ebp)
 446:	ff 75 30             	pushl  0x30(%ebp)
 449:	6a 10                	push   $0x10
 44b:	e9 f8 fb ff ff       	jmp    48 <exception>

00000450 <ac_error>:
 450:	60                   	pusha  
 451:	1e                   	push   %ds
 452:	06                   	push   %es
 453:	0f a0                	push   %fs
 455:	0f a8                	push   %gs
 457:	0f 20 de             	mov    %cr3,%esi
 45a:	83 fe 00             	cmp    $0x0,%esi
 45d:	74 08                	je     467 <ac_error.ex_st>
 45f:	be 00 00 00 00       	mov    $0x0,%esi
 464:	0f 22 de             	mov    %esi,%cr3

00000467 <ac_error.ex_st>:
 467:	ff 05 18 05 00 00    	incl   0x518
 46d:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 474:	75 07                	jne    47d <ac_error.excep_pro>
 476:	89 e5                	mov    %esp,%ebp
 478:	bc 00 28 00 00       	mov    $0x2800,%esp

0000047d <ac_error.excep_pro>:
 47d:	ff 75 3c             	pushl  0x3c(%ebp)
 480:	ff 75 38             	pushl  0x38(%ebp)
 483:	ff 75 34             	pushl  0x34(%ebp)
 486:	ff 75 30             	pushl  0x30(%ebp)
 489:	6a 11                	push   $0x11
 48b:	e9 b8 fb ff ff       	jmp    48 <exception>

00000490 <mc_error>:
 490:	6a ff                	push   $0xffffffff
 492:	60                   	pusha  
 493:	1e                   	push   %ds
 494:	06                   	push   %es
 495:	0f a0                	push   %fs
 497:	0f a8                	push   %gs
 499:	0f 20 de             	mov    %cr3,%esi
 49c:	83 fe 00             	cmp    $0x0,%esi
 49f:	74 08                	je     4a9 <mc_error.ex_st>
 4a1:	be 00 00 00 00       	mov    $0x0,%esi
 4a6:	0f 22 de             	mov    %esi,%cr3

000004a9 <mc_error.ex_st>:
 4a9:	ff 05 18 05 00 00    	incl   0x518
 4af:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 4b6:	75 07                	jne    4bf <mc_error.excep_pro>
 4b8:	89 e5                	mov    %esp,%ebp
 4ba:	bc 00 28 00 00       	mov    $0x2800,%esp

000004bf <mc_error.excep_pro>:
 4bf:	ff 75 3c             	pushl  0x3c(%ebp)
 4c2:	ff 75 38             	pushl  0x38(%ebp)
 4c5:	ff 75 34             	pushl  0x34(%ebp)
 4c8:	ff 75 30             	pushl  0x30(%ebp)
 4cb:	6a 12                	push   $0x12
 4cd:	e9 76 fb ff ff       	jmp    48 <exception>

000004d2 <xf_error>:
 4d2:	6a ff                	push   $0xffffffff
 4d4:	60                   	pusha  
 4d5:	1e                   	push   %ds
 4d6:	06                   	push   %es
 4d7:	0f a0                	push   %fs
 4d9:	0f a8                	push   %gs
 4db:	0f 20 de             	mov    %cr3,%esi
 4de:	83 fe 00             	cmp    $0x0,%esi
 4e1:	74 08                	je     4eb <xf_error.ex_st>
 4e3:	be 00 00 00 00       	mov    $0x0,%esi
 4e8:	0f 22 de             	mov    %esi,%cr3

000004eb <xf_error.ex_st>:
 4eb:	ff 05 18 05 00 00    	incl   0x518
 4f1:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 4f8:	75 07                	jne    501 <xf_error.excep_pro>
 4fa:	89 e5                	mov    %esp,%ebp
 4fc:	bc 00 28 00 00       	mov    $0x2800,%esp

00000501 <xf_error.excep_pro>:
 501:	ff 75 3c             	pushl  0x3c(%ebp)
 504:	ff 75 38             	pushl  0x38(%ebp)
 507:	ff 75 34             	pushl  0x34(%ebp)
 50a:	ff 75 30             	pushl  0x30(%ebp)
 50d:	6a 13                	push   $0x13
 50f:	e9 34 fb ff ff       	jmp    48 <exception>

00000514 <get_cr2>:
 514:	0f 20 d0             	mov    %cr2,%eax
 517:	c3                   	ret    

00000518 <reenter>:
 518:	00 00                	add    %al,(%eax)
	...

0000051c <hw_enty>:
 51c:	b0 20                	mov    $0x20,%al
 51e:	e6 20                	out    %al,$0x20
 520:	e6 a0                	out    %al,$0xa0
 522:	fb                   	sti    
 523:	e8 fc ff ff ff       	call   524 <hw_enty+0x8>
 528:	83 c4 04             	add    $0x4,%esp
 52b:	fa                   	cli    
 52c:	ff 0d 18 05 00 00    	decl   0x518
 532:	75 1d                	jne    551 <hw_end>
 534:	8b 1d 00 00 00 00    	mov    0x0,%ebx
 53a:	89 dc                	mov    %ebx,%esp
 53c:	83 c3 48             	add    $0x48,%ebx
 53f:	89 1d 04 00 00 00    	mov    %ebx,0x4
 545:	8b 5c 24 48          	mov    0x48(%esp),%ebx
 549:	83 fb 00             	cmp    $0x0,%ebx
 54c:	74 03                	je     551 <hw_end>
 54e:	0f 22 db             	mov    %ebx,%cr3

00000551 <hw_end>:
 551:	0f a9                	pop    %gs
 553:	0f a1                	pop    %fs
 555:	07                   	pop    %es
 556:	1f                   	pop    %ds
 557:	61                   	popa   
 558:	83 c4 04             	add    $0x4,%esp
 55b:	cf                   	iret   

0000055c <_hwint00>:
 55c:	6a ff                	push   $0xffffffff
 55e:	60                   	pusha  
 55f:	1e                   	push   %ds
 560:	06                   	push   %es
 561:	0f a0                	push   %fs
 563:	0f a8                	push   %gs
 565:	0f 20 de             	mov    %cr3,%esi
 568:	83 fe 00             	cmp    $0x0,%esi
 56b:	74 08                	je     575 <_hwint00.hw_st>
 56d:	be 00 00 00 00       	mov    $0x0,%esi
 572:	0f 22 de             	mov    %esi,%cr3

00000575 <_hwint00.hw_st>:
 575:	ff 05 18 05 00 00    	incl   0x518
 57b:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 582:	75 05                	jne    589 <_hwint00.hw_pro>
 584:	bc 00 28 00 00       	mov    $0x2800,%esp

00000589 <_hwint00.hw_pro>:
 589:	6a 00                	push   $0x0
 58b:	eb 8f                	jmp    51c <hw_enty>

0000058d <_hwint01>:
 58d:	6a ff                	push   $0xffffffff
 58f:	60                   	pusha  
 590:	1e                   	push   %ds
 591:	06                   	push   %es
 592:	0f a0                	push   %fs
 594:	0f a8                	push   %gs
 596:	0f 20 de             	mov    %cr3,%esi
 599:	83 fe 00             	cmp    $0x0,%esi
 59c:	74 08                	je     5a6 <_hwint01.hw_st>
 59e:	be 00 00 00 00       	mov    $0x0,%esi
 5a3:	0f 22 de             	mov    %esi,%cr3

000005a6 <_hwint01.hw_st>:
 5a6:	ff 05 18 05 00 00    	incl   0x518
 5ac:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 5b3:	75 05                	jne    5ba <_hwint01.hw_pro>
 5b5:	bc 00 28 00 00       	mov    $0x2800,%esp

000005ba <_hwint01.hw_pro>:
 5ba:	6a 01                	push   $0x1
 5bc:	e9 5b ff ff ff       	jmp    51c <hw_enty>

000005c1 <_hwint02>:
 5c1:	6a ff                	push   $0xffffffff
 5c3:	60                   	pusha  
 5c4:	1e                   	push   %ds
 5c5:	06                   	push   %es
 5c6:	0f a0                	push   %fs
 5c8:	0f a8                	push   %gs
 5ca:	0f 20 de             	mov    %cr3,%esi
 5cd:	83 fe 00             	cmp    $0x0,%esi
 5d0:	74 08                	je     5da <_hwint02.hw_st>
 5d2:	be 00 00 00 00       	mov    $0x0,%esi
 5d7:	0f 22 de             	mov    %esi,%cr3

000005da <_hwint02.hw_st>:
 5da:	ff 05 18 05 00 00    	incl   0x518
 5e0:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 5e7:	75 05                	jne    5ee <_hwint02.hw_pro>
 5e9:	bc 00 28 00 00       	mov    $0x2800,%esp

000005ee <_hwint02.hw_pro>:
 5ee:	6a 02                	push   $0x2
 5f0:	e9 27 ff ff ff       	jmp    51c <hw_enty>

000005f5 <_hwint03>:
 5f5:	6a ff                	push   $0xffffffff
 5f7:	60                   	pusha  
 5f8:	1e                   	push   %ds
 5f9:	06                   	push   %es
 5fa:	0f a0                	push   %fs
 5fc:	0f a8                	push   %gs
 5fe:	0f 20 de             	mov    %cr3,%esi
 601:	83 fe 00             	cmp    $0x0,%esi
 604:	74 08                	je     60e <_hwint03.hw_st>
 606:	be 00 00 00 00       	mov    $0x0,%esi
 60b:	0f 22 de             	mov    %esi,%cr3

0000060e <_hwint03.hw_st>:
 60e:	ff 05 18 05 00 00    	incl   0x518
 614:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 61b:	75 05                	jne    622 <_hwint03.hw_pro>
 61d:	bc 00 28 00 00       	mov    $0x2800,%esp

00000622 <_hwint03.hw_pro>:
 622:	6a 03                	push   $0x3
 624:	e9 f3 fe ff ff       	jmp    51c <hw_enty>

00000629 <_hwint04>:
 629:	6a ff                	push   $0xffffffff
 62b:	60                   	pusha  
 62c:	1e                   	push   %ds
 62d:	06                   	push   %es
 62e:	0f a0                	push   %fs
 630:	0f a8                	push   %gs
 632:	0f 20 de             	mov    %cr3,%esi
 635:	83 fe 00             	cmp    $0x0,%esi
 638:	74 08                	je     642 <_hwint04.hw_st>
 63a:	be 00 00 00 00       	mov    $0x0,%esi
 63f:	0f 22 de             	mov    %esi,%cr3

00000642 <_hwint04.hw_st>:
 642:	ff 05 18 05 00 00    	incl   0x518
 648:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 64f:	75 05                	jne    656 <_hwint04.hw_pro>
 651:	bc 00 28 00 00       	mov    $0x2800,%esp

00000656 <_hwint04.hw_pro>:
 656:	6a 04                	push   $0x4
 658:	e9 bf fe ff ff       	jmp    51c <hw_enty>

0000065d <_hwint05>:
 65d:	6a ff                	push   $0xffffffff
 65f:	60                   	pusha  
 660:	1e                   	push   %ds
 661:	06                   	push   %es
 662:	0f a0                	push   %fs
 664:	0f a8                	push   %gs
 666:	0f 20 de             	mov    %cr3,%esi
 669:	83 fe 00             	cmp    $0x0,%esi
 66c:	74 08                	je     676 <_hwint05.hw_st>
 66e:	be 00 00 00 00       	mov    $0x0,%esi
 673:	0f 22 de             	mov    %esi,%cr3

00000676 <_hwint05.hw_st>:
 676:	ff 05 18 05 00 00    	incl   0x518
 67c:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 683:	75 05                	jne    68a <_hwint05.hw_pro>
 685:	bc 00 28 00 00       	mov    $0x2800,%esp

0000068a <_hwint05.hw_pro>:
 68a:	6a 05                	push   $0x5
 68c:	e9 8b fe ff ff       	jmp    51c <hw_enty>

00000691 <_hwint06>:
 691:	6a ff                	push   $0xffffffff
 693:	60                   	pusha  
 694:	1e                   	push   %ds
 695:	06                   	push   %es
 696:	0f a0                	push   %fs
 698:	0f a8                	push   %gs
 69a:	0f 20 de             	mov    %cr3,%esi
 69d:	83 fe 00             	cmp    $0x0,%esi
 6a0:	74 08                	je     6aa <_hwint06.hw_st>
 6a2:	be 00 00 00 00       	mov    $0x0,%esi
 6a7:	0f 22 de             	mov    %esi,%cr3

000006aa <_hwint06.hw_st>:
 6aa:	ff 05 18 05 00 00    	incl   0x518
 6b0:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 6b7:	75 05                	jne    6be <_hwint06.hw_pro>
 6b9:	bc 00 28 00 00       	mov    $0x2800,%esp

000006be <_hwint06.hw_pro>:
 6be:	6a 06                	push   $0x6
 6c0:	e9 57 fe ff ff       	jmp    51c <hw_enty>

000006c5 <_hwint07>:
 6c5:	6a ff                	push   $0xffffffff
 6c7:	60                   	pusha  
 6c8:	1e                   	push   %ds
 6c9:	06                   	push   %es
 6ca:	0f a0                	push   %fs
 6cc:	0f a8                	push   %gs
 6ce:	0f 20 de             	mov    %cr3,%esi
 6d1:	83 fe 00             	cmp    $0x0,%esi
 6d4:	74 08                	je     6de <_hwint07.hw_st>
 6d6:	be 00 00 00 00       	mov    $0x0,%esi
 6db:	0f 22 de             	mov    %esi,%cr3

000006de <_hwint07.hw_st>:
 6de:	ff 05 18 05 00 00    	incl   0x518
 6e4:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 6eb:	75 05                	jne    6f2 <_hwint07.hw_pro>
 6ed:	bc 00 28 00 00       	mov    $0x2800,%esp

000006f2 <_hwint07.hw_pro>:
 6f2:	6a 07                	push   $0x7
 6f4:	e9 23 fe ff ff       	jmp    51c <hw_enty>

000006f9 <_hwint08>:
 6f9:	6a ff                	push   $0xffffffff
 6fb:	60                   	pusha  
 6fc:	1e                   	push   %ds
 6fd:	06                   	push   %es
 6fe:	0f a0                	push   %fs
 700:	0f a8                	push   %gs
 702:	0f 20 de             	mov    %cr3,%esi
 705:	83 fe 00             	cmp    $0x0,%esi
 708:	74 08                	je     712 <_hwint08.hw_st>
 70a:	be 00 00 00 00       	mov    $0x0,%esi
 70f:	0f 22 de             	mov    %esi,%cr3

00000712 <_hwint08.hw_st>:
 712:	ff 05 18 05 00 00    	incl   0x518
 718:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 71f:	75 05                	jne    726 <_hwint08.hw_pro>
 721:	bc 00 28 00 00       	mov    $0x2800,%esp

00000726 <_hwint08.hw_pro>:
 726:	6a 08                	push   $0x8
 728:	e9 ef fd ff ff       	jmp    51c <hw_enty>

0000072d <_hwint09>:
 72d:	6a ff                	push   $0xffffffff
 72f:	60                   	pusha  
 730:	1e                   	push   %ds
 731:	06                   	push   %es
 732:	0f a0                	push   %fs
 734:	0f a8                	push   %gs
 736:	0f 20 de             	mov    %cr3,%esi
 739:	83 fe 00             	cmp    $0x0,%esi
 73c:	74 08                	je     746 <_hwint09.hw_st>
 73e:	be 00 00 00 00       	mov    $0x0,%esi
 743:	0f 22 de             	mov    %esi,%cr3

00000746 <_hwint09.hw_st>:
 746:	ff 05 18 05 00 00    	incl   0x518
 74c:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 753:	75 05                	jne    75a <_hwint09.hw_pro>
 755:	bc 00 28 00 00       	mov    $0x2800,%esp

0000075a <_hwint09.hw_pro>:
 75a:	6a 09                	push   $0x9
 75c:	e9 bb fd ff ff       	jmp    51c <hw_enty>

00000761 <_hwint10>:
 761:	6a ff                	push   $0xffffffff
 763:	60                   	pusha  
 764:	1e                   	push   %ds
 765:	06                   	push   %es
 766:	0f a0                	push   %fs
 768:	0f a8                	push   %gs
 76a:	0f 20 de             	mov    %cr3,%esi
 76d:	83 fe 00             	cmp    $0x0,%esi
 770:	74 08                	je     77a <_hwint10.hw_st>
 772:	be 00 00 00 00       	mov    $0x0,%esi
 777:	0f 22 de             	mov    %esi,%cr3

0000077a <_hwint10.hw_st>:
 77a:	ff 05 18 05 00 00    	incl   0x518
 780:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 787:	75 05                	jne    78e <_hwint10.hw_pro>
 789:	bc 00 28 00 00       	mov    $0x2800,%esp

0000078e <_hwint10.hw_pro>:
 78e:	6a 0a                	push   $0xa
 790:	e9 87 fd ff ff       	jmp    51c <hw_enty>

00000795 <_hwint11>:
 795:	6a ff                	push   $0xffffffff
 797:	60                   	pusha  
 798:	1e                   	push   %ds
 799:	06                   	push   %es
 79a:	0f a0                	push   %fs
 79c:	0f a8                	push   %gs
 79e:	0f 20 de             	mov    %cr3,%esi
 7a1:	83 fe 00             	cmp    $0x0,%esi
 7a4:	74 08                	je     7ae <_hwint11.hw_st>
 7a6:	be 00 00 00 00       	mov    $0x0,%esi
 7ab:	0f 22 de             	mov    %esi,%cr3

000007ae <_hwint11.hw_st>:
 7ae:	ff 05 18 05 00 00    	incl   0x518
 7b4:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 7bb:	75 05                	jne    7c2 <_hwint11.hw_pro>
 7bd:	bc 00 28 00 00       	mov    $0x2800,%esp

000007c2 <_hwint11.hw_pro>:
 7c2:	6a 0b                	push   $0xb
 7c4:	e9 53 fd ff ff       	jmp    51c <hw_enty>

000007c9 <_hwint12>:
 7c9:	6a ff                	push   $0xffffffff
 7cb:	60                   	pusha  
 7cc:	1e                   	push   %ds
 7cd:	06                   	push   %es
 7ce:	0f a0                	push   %fs
 7d0:	0f a8                	push   %gs
 7d2:	0f 20 de             	mov    %cr3,%esi
 7d5:	83 fe 00             	cmp    $0x0,%esi
 7d8:	74 08                	je     7e2 <_hwint12.hw_st>
 7da:	be 00 00 00 00       	mov    $0x0,%esi
 7df:	0f 22 de             	mov    %esi,%cr3

000007e2 <_hwint12.hw_st>:
 7e2:	ff 05 18 05 00 00    	incl   0x518
 7e8:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 7ef:	75 05                	jne    7f6 <_hwint12.hw_pro>
 7f1:	bc 00 28 00 00       	mov    $0x2800,%esp

000007f6 <_hwint12.hw_pro>:
 7f6:	6a 0c                	push   $0xc
 7f8:	e9 1f fd ff ff       	jmp    51c <hw_enty>

000007fd <_hwint13>:
 7fd:	6a ff                	push   $0xffffffff
 7ff:	60                   	pusha  
 800:	1e                   	push   %ds
 801:	06                   	push   %es
 802:	0f a0                	push   %fs
 804:	0f a8                	push   %gs
 806:	0f 20 de             	mov    %cr3,%esi
 809:	83 fe 00             	cmp    $0x0,%esi
 80c:	74 08                	je     816 <_hwint13.hw_st>
 80e:	be 00 00 00 00       	mov    $0x0,%esi
 813:	0f 22 de             	mov    %esi,%cr3

00000816 <_hwint13.hw_st>:
 816:	ff 05 18 05 00 00    	incl   0x518
 81c:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 823:	75 05                	jne    82a <_hwint13.hw_pro>
 825:	bc 00 28 00 00       	mov    $0x2800,%esp

0000082a <_hwint13.hw_pro>:
 82a:	6a 0d                	push   $0xd
 82c:	e9 eb fc ff ff       	jmp    51c <hw_enty>

00000831 <_hwint14>:
 831:	6a ff                	push   $0xffffffff
 833:	60                   	pusha  
 834:	1e                   	push   %ds
 835:	06                   	push   %es
 836:	0f a0                	push   %fs
 838:	0f a8                	push   %gs
 83a:	0f 20 de             	mov    %cr3,%esi
 83d:	83 fe 00             	cmp    $0x0,%esi
 840:	74 08                	je     84a <_hwint14.hw_st>
 842:	be 00 00 00 00       	mov    $0x0,%esi
 847:	0f 22 de             	mov    %esi,%cr3

0000084a <_hwint14.hw_st>:
 84a:	ff 05 18 05 00 00    	incl   0x518
 850:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 857:	75 05                	jne    85e <_hwint14.hw_pro>
 859:	bc 00 28 00 00       	mov    $0x2800,%esp

0000085e <_hwint14.hw_pro>:
 85e:	6a 0e                	push   $0xe
 860:	e9 b7 fc ff ff       	jmp    51c <hw_enty>

00000865 <_hwint15>:
 865:	6a ff                	push   $0xffffffff
 867:	60                   	pusha  
 868:	1e                   	push   %ds
 869:	06                   	push   %es
 86a:	0f a0                	push   %fs
 86c:	0f a8                	push   %gs
 86e:	0f 20 de             	mov    %cr3,%esi
 871:	83 fe 00             	cmp    $0x0,%esi
 874:	74 08                	je     87e <_hwint15.hw_st>
 876:	be 00 00 00 00       	mov    $0x0,%esi
 87b:	0f 22 de             	mov    %esi,%cr3

0000087e <_hwint15.hw_st>:
 87e:	ff 05 18 05 00 00    	incl   0x518
 884:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 88b:	75 05                	jne    892 <_hwint15.hw_pro>
 88d:	bc 00 28 00 00       	mov    $0x2800,%esp

00000892 <_hwint15.hw_pro>:
 892:	6a 0f                	push   $0xf
 894:	e9 83 fc ff ff       	jmp    51c <hw_enty>

00000899 <sw_enty>:
 899:	e8 fc ff ff ff       	call   89a <sw_enty+0x1>
 89e:	83 c4 24             	add    $0x24,%esp
 8a1:	fa                   	cli    
 8a2:	ff 0d 18 05 00 00    	decl   0x518
 8a8:	75 1d                	jne    8c7 <sw_end>
 8aa:	8b 1d 00 00 00 00    	mov    0x0,%ebx
 8b0:	89 dc                	mov    %ebx,%esp
 8b2:	83 c3 48             	add    $0x48,%ebx
 8b5:	89 1d 04 00 00 00    	mov    %ebx,0x4
 8bb:	8b 5c 24 48          	mov    0x48(%esp),%ebx
 8bf:	83 fb 00             	cmp    $0x0,%ebx
 8c2:	74 03                	je     8c7 <sw_end>
 8c4:	0f 22 db             	mov    %ebx,%cr3

000008c7 <sw_end>:
 8c7:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 8cb:	0f a9                	pop    %gs
 8cd:	0f a1                	pop    %fs
 8cf:	07                   	pop    %es
 8d0:	1f                   	pop    %ds
 8d1:	61                   	popa   
 8d2:	83 c4 04             	add    $0x4,%esp
 8d5:	cf                   	iret   

000008d6 <_sys_call>:
 8d6:	6a ff                	push   $0xffffffff
 8d8:	60                   	pusha  
 8d9:	1e                   	push   %ds
 8da:	06                   	push   %es
 8db:	0f a0                	push   %fs
 8dd:	0f a8                	push   %gs
 8df:	0f 20 de             	mov    %cr3,%esi
 8e2:	83 fe 00             	cmp    $0x0,%esi
 8e5:	74 08                	je     8ef <_sys_call.sw_st>
 8e7:	be 00 00 00 00       	mov    $0x0,%esi
 8ec:	0f 22 de             	mov    %esi,%cr3

000008ef <_sys_call.sw_st>:
 8ef:	ff 05 18 05 00 00    	incl   0x518
 8f5:	83 3d 18 05 00 00 01 	cmpl   $0x1,0x518
 8fc:	75 05                	jne    903 <_sys_call.sw_pro>
 8fe:	bc 00 28 00 00       	mov    $0x2800,%esp

00000903 <_sys_call.sw_pro>:
 903:	8b 35 00 00 00 00    	mov    0x0,%esi
 909:	fb                   	sti    
 90a:	60                   	pusha  
 90b:	68 80 00 00 00       	push   $0x80
 910:	eb 87                	jmp    899 <sw_enty>

00000912 <Init8259>:
 912:	b0 11                	mov    $0x11,%al
 914:	e6 20                	out    %al,$0x20
 916:	e6 a0                	out    %al,$0xa0
 918:	b0 20                	mov    $0x20,%al
 91a:	e6 21                	out    %al,$0x21
 91c:	b0 28                	mov    $0x28,%al
 91e:	e6 a1                	out    %al,$0xa1
 920:	b0 04                	mov    $0x4,%al
 922:	e6 21                	out    %al,$0x21
 924:	b0 02                	mov    $0x2,%al
 926:	e6 a1                	out    %al,$0xa1
 928:	b0 01                	mov    $0x1,%al
 92a:	e6 21                	out    %al,$0x21
 92c:	e6 a1                	out    %al,$0xa1
 92e:	b0 f8                	mov    $0xf8,%al
 930:	e6 21                	out    %al,$0x21
 932:	b0 bf                	mov    $0xbf,%al
 934:	e6 a1                	out    %al,$0xa1
 936:	c3                   	ret    
