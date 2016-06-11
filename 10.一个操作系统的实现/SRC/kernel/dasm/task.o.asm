
task.o:     file format elf32-i386

Disassembly of section .text:

00000000 <Init_Task>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	57                   	push   %edi
   4:	56                   	push   %esi
   5:	83 ec 40             	sub    $0x40,%esp
   8:	c7 45 d4 00 00 00 00 	movl   $0x0,0xffffffd4(%ebp)
   f:	c7 45 d8 00 00 00 00 	movl   $0x0,0xffffffd8(%ebp)
  16:	b8 00 00 00 00       	mov    $0x0,%eax
  1b:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
  1e:	c7 45 d0 00 00 00 00 	movl   $0x0,0xffffffd0(%ebp)
  25:	e9 0b 02 00 00       	jmp    235 <Init_Task+0x235>
  2a:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
  2d:	81 ea 20 01 00 00    	sub    $0x120,%edx
  33:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
  36:	89 90 14 01 00 00    	mov    %edx,0x114(%eax)
  3c:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
  3f:	81 c2 20 01 00 00    	add    $0x120,%edx
  45:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
  48:	89 90 18 01 00 00    	mov    %edx,0x118(%eax)
  4e:	8b 55 d0             	mov    0xffffffd0(%ebp),%edx
  51:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
  54:	89 50 4c             	mov    %edx,0x4c(%eax)
  57:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
  5a:	c7 40 50 01 00 00 00 	movl   $0x1,0x50(%eax)
  61:	83 7d d0 0a          	cmpl   $0xa,0xffffffd0(%ebp)
  65:	0f 8f bb 01 00 00    	jg     226 <Init_Task+0x226>
  6b:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
  6e:	c7 40 50 00 00 00 00 	movl   $0x0,0x50(%eax)
  75:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
  78:	c7 40 48 00 00 00 00 	movl   $0x0,0x48(%eax)
  7f:	83 7d d0 05          	cmpl   $0x5,0xffffffd0(%ebp)
  83:	7f 0d                	jg     92 <Init_Task+0x92>
  85:	c6 45 ef 03          	movb   $0x3,0xffffffef(%ebp)
  89:	c7 45 f0 00 20 00 00 	movl   $0x2000,0xfffffff0(%ebp)
  90:	eb 0b                	jmp    9d <Init_Task+0x9d>
  92:	c6 45 ef 00          	movb   $0x0,0xffffffef(%ebp)
  96:	c7 45 f0 00 20 00 00 	movl   $0x2000,0xfffffff0(%ebp)
  9d:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
  a0:	c7 00 1b 00 00 00    	movl   $0x1b,(%eax)
  a6:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
  a9:	c7 40 04 1b 00 00 00 	movl   $0x1b,0x4(%eax)
  b0:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
  b3:	c7 40 08 1b 00 00 00 	movl   $0x1b,0x8(%eax)
  ba:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
  bd:	c7 40 0c 1b 00 00 00 	movl   $0x1b,0xc(%eax)
  c4:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
  c7:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
  ce:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
  d1:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
  d8:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
  db:	c7 40 18 00 00 00 00 	movl   $0x0,0x18(%eax)
  e2:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
  e5:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
  ec:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
  ef:	c7 40 20 00 00 00 00 	movl   $0x0,0x20(%eax)
  f6:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
  f9:	c7 40 24 00 00 00 00 	movl   $0x0,0x24(%eax)
 100:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 103:	c7 40 28 00 00 00 00 	movl   $0x0,0x28(%eax)
 10a:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 10d:	c7 40 2c 00 00 00 00 	movl   $0x0,0x2c(%eax)
 114:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 117:	c7 40 30 00 00 00 00 	movl   $0x0,0x30(%eax)
 11e:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
 121:	8b 00                	mov    (%eax),%eax
 123:	89 c2                	mov    %eax,%edx
 125:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 128:	89 50 34             	mov    %edx,0x34(%eax)
 12b:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 12e:	c7 40 38 23 00 00 00 	movl   $0x23,0x38(%eax)
 135:	0f b6 45 ef          	movzbl 0xffffffef(%ebp),%eax
 139:	c1 e0 0c             	shl    $0xc,%eax
 13c:	0d 02 02 00 00       	or     $0x202,%eax
 141:	89 c2                	mov    %eax,%edx
 143:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 146:	89 50 3c             	mov    %edx,0x3c(%eax)
 149:	83 7d d0 06          	cmpl   $0x6,0xffffffd0(%ebp)
 14d:	74 11                	je     160 <Init_Task+0x160>
 14f:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 152:	01 45 dc             	add    %eax,0xffffffdc(%ebp)
 155:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
 158:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
 15b:	89 42 40             	mov    %eax,0x40(%edx)
 15e:	eb 0a                	jmp    16a <Init_Task+0x16a>
 160:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 163:	c7 40 40 00 f0 11 00 	movl   $0x11f000,0x40(%eax)
 16a:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 16d:	c7 40 44 1b 00 00 00 	movl   $0x1b,0x44(%eax)
 174:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 177:	c7 40 54 00 00 00 00 	movl   $0x0,0x54(%eax)
 17e:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 181:	c6 40 58 00          	movb   $0x0,0x58(%eax)
 185:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 188:	c7 40 5c 00 00 00 00 	movl   $0x0,0x5c(%eax)
 18f:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 192:	c7 40 60 00 00 00 00 	movl   $0x0,0x60(%eax)
 199:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 19c:	c7 40 64 00 00 00 00 	movl   $0x0,0x64(%eax)
 1a3:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 1a6:	c7 40 68 00 00 00 00 	movl   $0x0,0x68(%eax)
 1ad:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 1b0:	c7 40 6c 00 00 00 00 	movl   $0x0,0x6c(%eax)
 1b7:	c7 45 f4 00 00 00 00 	movl   $0x0,0xfffffff4(%ebp)
 1be:	eb 12                	jmp    1d2 <Init_Task+0x1d2>
 1c0:	8b 55 f4             	mov    0xfffffff4(%ebp),%edx
 1c3:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 1c6:	c7 44 90 70 00 00 00 	movl   $0x0,0x70(%eax,%edx,4)
 1cd:	00 
 1ce:	83 45 f4 01          	addl   $0x1,0xfffffff4(%ebp)
 1d2:	83 7d f4 1f          	cmpl   $0x1f,0xfffffff4(%ebp)
 1d6:	7e e8                	jle    1c0 <Init_Task+0x1c0>
 1d8:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
 1db:	8b 50 08             	mov    0x8(%eax),%edx
 1de:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 1e1:	89 90 f0 00 00 00    	mov    %edx,0xf0(%eax)
 1e7:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
 1ea:	8b 50 08             	mov    0x8(%eax),%edx
 1ed:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 1f0:	89 90 f4 00 00 00    	mov    %edx,0xf4(%eax)
 1f6:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 1f9:	c7 80 f8 00 00 00 00 	movl   $0x0,0xf8(%eax)
 200:	00 00 00 
 203:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 206:	c7 80 fc 00 00 00 06 	movl   $0x6,0xfc(%eax)
 20d:	00 00 00 
 210:	8b 7d d4             	mov    0xffffffd4(%ebp),%edi
 213:	81 c7 00 01 00 00    	add    $0x100,%edi
 219:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
 21c:	8b 70 04             	mov    0x4(%eax),%esi
 21f:	b9 0c 00 00 00       	mov    $0xc,%ecx
 224:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 226:	83 45 d0 01          	addl   $0x1,0xffffffd0(%ebp)
 22a:	81 45 d4 20 01 00 00 	addl   $0x120,0xffffffd4(%ebp)
 231:	83 45 d8 0c          	addl   $0xc,0xffffffd8(%ebp)
 235:	81 7d d0 0a 01 00 00 	cmpl   $0x10a,0xffffffd0(%ebp)
 23c:	0f 8e e8 fd ff ff    	jle    2a <Init_Task+0x2a>
 242:	b8 60 0c 00 00       	mov    $0xc60,%eax
 247:	a3 00 00 00 00       	mov    %eax,0x0
 24c:	b8 40 2b 01 00       	mov    $0x12b40,%eax
 251:	a3 00 00 00 00       	mov    %eax,0x0
 256:	a1 00 00 00 00       	mov    0x0,%eax
 25b:	85 c0                	test   %eax,%eax
 25d:	75 24                	jne    283 <Init_Task+0x283>
 25f:	c7 44 24 0c 76 00 00 	movl   $0x76,0xc(%esp)
 266:	00 
 267:	c7 44 24 08 56 00 00 	movl   $0x56,0x8(%esp)
 26e:	00 
 26f:	c7 44 24 04 56 00 00 	movl   $0x56,0x4(%esp)
 276:	00 
 277:	c7 04 24 5d 00 00 00 	movl   $0x5d,(%esp)
 27e:	e8 fc ff ff ff       	call   27f <Init_Task+0x27f>
 283:	a1 00 00 00 00       	mov    0x0,%eax
 288:	85 c0                	test   %eax,%eax
 28a:	75 24                	jne    2b0 <Init_Task+0x2b0>
 28c:	c7 44 24 0c 77 00 00 	movl   $0x77,0xc(%esp)
 293:	00 
 294:	c7 44 24 08 56 00 00 	movl   $0x56,0x8(%esp)
 29b:	00 
 29c:	c7 44 24 04 56 00 00 	movl   $0x56,0x4(%esp)
 2a3:	00 
 2a4:	c7 04 24 70 00 00 00 	movl   $0x70,(%esp)
 2ab:	e8 fc ff ff ff       	call   2ac <Init_Task+0x2ac>
 2b0:	a1 00 00 00 00       	mov    0x0,%eax
 2b5:	c7 80 14 01 00 00 00 	movl   $0x0,0x114(%eax)
 2bc:	00 00 00 
 2bf:	a1 00 00 00 00       	mov    0x0,%eax
 2c4:	c7 80 18 01 00 00 00 	movl   $0x0,0x118(%eax)
 2cb:	00 00 00 
 2ce:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
 2d5:	00 00 00 
 2d8:	b8 40 0b 00 00       	mov    $0xb40,%eax
 2dd:	a3 00 00 00 00       	mov    %eax,0x0
 2e2:	a1 00 00 00 00       	mov    0x0,%eax
 2e7:	85 c0                	test   %eax,%eax
 2e9:	75 24                	jne    30f <Init_Task+0x30f>
 2eb:	c7 44 24 0c 7d 00 00 	movl   $0x7d,0xc(%esp)
 2f2:	00 
 2f3:	c7 44 24 08 56 00 00 	movl   $0x56,0x8(%esp)
 2fa:	00 
 2fb:	c7 44 24 04 56 00 00 	movl   $0x56,0x4(%esp)
 302:	00 
 303:	c7 04 24 83 00 00 00 	movl   $0x83,(%esp)
 30a:	e8 fc ff ff ff       	call   30b <Init_Task+0x30b>
 30f:	a1 00 00 00 00       	mov    0x0,%eax
 314:	85 c0                	test   %eax,%eax
 316:	75 24                	jne    33c <Init_Task+0x33c>
 318:	c7 44 24 0c 7e 00 00 	movl   $0x7e,0xc(%esp)
 31f:	00 
 320:	c7 44 24 08 56 00 00 	movl   $0x56,0x8(%esp)
 327:	00 
 328:	c7 44 24 04 56 00 00 	movl   $0x56,0x4(%esp)
 32f:	00 
 330:	c7 04 24 97 00 00 00 	movl   $0x97,(%esp)
 337:	e8 fc ff ff ff       	call   338 <Init_Task+0x338>
 33c:	a1 00 00 00 00       	mov    0x0,%eax
 341:	c7 80 14 01 00 00 00 	movl   $0x0,0x114(%eax)
 348:	00 00 00 
 34b:	a1 00 00 00 00       	mov    0x0,%eax
 350:	c7 80 18 01 00 00 00 	movl   $0x0,0x118(%eax)
 357:	00 00 00 
 35a:	66 c7 05 00 00 00 00 	movw   $0x6c,0x0
 361:	6c 00 
 363:	b8 00 00 00 00       	mov    $0x0,%eax
 368:	66 a3 02 00 00 00    	mov    %ax,0x2
 36e:	b8 00 00 00 00       	mov    $0x0,%eax
 373:	c1 e8 10             	shr    $0x10,%eax
 376:	a2 04 00 00 00       	mov    %al,0x4
 37b:	c6 05 05 00 00 00 89 	movb   $0x89,0x5
 382:	c6 05 06 00 00 00 00 	movb   $0x0,0x6
 389:	b8 00 00 00 00       	mov    $0x0,%eax
 38e:	c1 e8 18             	shr    $0x18,%eax
 391:	a2 07 00 00 00       	mov    %al,0x7
 396:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
 39d:	00 00 00 
 3a0:	a1 00 00 00 00       	mov    0x0,%eax
 3a5:	83 c0 48             	add    $0x48,%eax
 3a8:	a3 04 00 00 00       	mov    %eax,0x4
 3ad:	c7 05 08 00 00 00 08 	movl   $0x8,0x8
 3b4:	00 00 00 
 3b7:	a1 00 00 00 00       	mov    0x0,%eax
 3bc:	05 c0 06 00 00       	add    $0x6c0,%eax
 3c1:	c7 40 48 00 00 08 00 	movl   $0x80000,0x48(%eax)
 3c8:	c7 45 e0 00 00 08 00 	movl   $0x80000,0xffffffe0(%ebp)
 3cf:	c7 45 e4 00 10 08 00 	movl   $0x81000,0xffffffe4(%ebp)
 3d6:	c7 45 d0 00 00 00 00 	movl   $0x0,0xffffffd0(%ebp)
 3dd:	eb 1a                	jmp    3f9 <Init_Task+0x3f9>
 3df:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
 3e2:	8d 50 07             	lea    0x7(%eax),%edx
 3e5:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
 3e8:	89 10                	mov    %edx,(%eax)
 3ea:	83 45 e0 04          	addl   $0x4,0xffffffe0(%ebp)
 3ee:	81 45 e4 00 10 00 00 	addl   $0x1000,0xffffffe4(%ebp)
 3f5:	83 45 d0 01          	addl   $0x1,0xffffffd0(%ebp)
 3f9:	83 7d d0 07          	cmpl   $0x7,0xffffffd0(%ebp)
 3fd:	7e e0                	jle    3df <Init_Task+0x3df>
 3ff:	c7 45 e4 00 10 08 00 	movl   $0x81000,0xffffffe4(%ebp)
 406:	c7 45 e8 00 00 00 00 	movl   $0x0,0xffffffe8(%ebp)
 40d:	c7 45 d0 00 00 00 00 	movl   $0x0,0xffffffd0(%ebp)
 414:	eb 1a                	jmp    430 <Init_Task+0x430>
 416:	8b 55 e8             	mov    0xffffffe8(%ebp),%edx
 419:	83 ca 07             	or     $0x7,%edx
 41c:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
 41f:	89 10                	mov    %edx,(%eax)
 421:	83 45 e4 04          	addl   $0x4,0xffffffe4(%ebp)
 425:	81 45 e8 00 10 00 00 	addl   $0x1000,0xffffffe8(%ebp)
 42c:	83 45 d0 01          	addl   $0x1,0xffffffd0(%ebp)
 430:	81 7d d0 ff 00 00 00 	cmpl   $0xff,0xffffffd0(%ebp)
 437:	7e dd                	jle    416 <Init_Task+0x416>
 439:	c7 45 e8 00 00 08 00 	movl   $0x80000,0xffffffe8(%ebp)
 440:	eb 32                	jmp    474 <Init_Task+0x474>
 442:	8b 55 e8             	mov    0xffffffe8(%ebp),%edx
 445:	83 ca 06             	or     $0x6,%edx
 448:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
 44b:	89 10                	mov    %edx,(%eax)
 44d:	81 7d d0 ff 01 00 00 	cmpl   $0x1ff,0xffffffd0(%ebp)
 454:	7f 0f                	jg     465 <Init_Task+0x465>
 456:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
 459:	8b 00                	mov    (%eax),%eax
 45b:	89 c2                	mov    %eax,%edx
 45d:	83 ca 01             	or     $0x1,%edx
 460:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
 463:	89 10                	mov    %edx,(%eax)
 465:	83 45 e4 04          	addl   $0x4,0xffffffe4(%ebp)
 469:	81 45 e8 00 10 00 00 	addl   $0x1000,0xffffffe8(%ebp)
 470:	83 45 d0 01          	addl   $0x1,0xffffffd0(%ebp)
 474:	81 7d d0 ff 1f 00 00 	cmpl   $0x1fff,0xffffffd0(%ebp)
 47b:	7e c5                	jle    442 <Init_Task+0x442>
 47d:	83 c4 40             	add    $0x40,%esp
 480:	5e                   	pop    %esi
 481:	5f                   	pop    %edi
 482:	5d                   	pop    %ebp
 483:	c3                   	ret    

00000484 <sched>:
 484:	55                   	push   %ebp
 485:	89 e5                	mov    %esp,%ebp
 487:	83 ec 28             	sub    $0x28,%esp
 48a:	e8 fc ff ff ff       	call   48b <sched+0x7>
 48f:	25 00 02 00 00       	and    $0x200,%eax
 494:	85 c0                	test   %eax,%eax
 496:	75 09                	jne    4a1 <sched+0x1d>
 498:	a1 00 00 00 00       	mov    0x0,%eax
 49d:	85 c0                	test   %eax,%eax
 49f:	75 24                	jne    4c5 <sched+0x41>
 4a1:	c7 44 24 0c b7 00 00 	movl   $0xb7,0xc(%esp)
 4a8:	00 
 4a9:	c7 44 24 08 56 00 00 	movl   $0x56,0x8(%esp)
 4b0:	00 
 4b1:	c7 44 24 04 56 00 00 	movl   $0x56,0x4(%esp)
 4b8:	00 
 4b9:	c7 04 24 ab 00 00 00 	movl   $0xab,(%esp)
 4c0:	e8 fc ff ff ff       	call   4c1 <sched+0x3d>
 4c5:	c7 45 fc 00 00 00 00 	movl   $0x0,0xfffffffc(%ebp)
 4cc:	e9 de 00 00 00       	jmp    5af <sched+0x12b>
 4d1:	b8 80 04 00 00       	mov    $0x480,%eax
 4d6:	8b 40 54             	mov    0x54(%eax),%eax
 4d9:	85 c0                	test   %eax,%eax
 4db:	74 24                	je     501 <sched+0x7d>
 4dd:	c7 44 24 0c bb 00 00 	movl   $0xbb,0xc(%esp)
 4e4:	00 
 4e5:	c7 44 24 08 56 00 00 	movl   $0x56,0x8(%esp)
 4ec:	00 
 4ed:	c7 44 24 04 56 00 00 	movl   $0x56,0x4(%esp)
 4f4:	00 
 4f5:	c7 04 24 b4 00 00 00 	movl   $0xb4,(%esp)
 4fc:	e8 fc ff ff ff       	call   4fd <sched+0x79>
 501:	a1 00 00 00 00       	mov    0x0,%eax
 506:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
 509:	c7 45 f8 00 00 00 00 	movl   $0x0,0xfffffff8(%ebp)
 510:	eb 41                	jmp    553 <sched+0xcf>
 512:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 515:	8b 40 50             	mov    0x50(%eax),%eax
 518:	83 f8 01             	cmp    $0x1,%eax
 51b:	74 2a                	je     547 <sched+0xc3>
 51d:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 520:	8b 40 54             	mov    0x54(%eax),%eax
 523:	85 c0                	test   %eax,%eax
 525:	75 20                	jne    547 <sched+0xc3>
 527:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 52a:	8b 80 f4 00 00 00    	mov    0xf4(%eax),%eax
 530:	3b 45 f8             	cmp    0xfffffff8(%ebp),%eax
 533:	7e 12                	jle    547 <sched+0xc3>
 535:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 538:	8b 80 f4 00 00 00    	mov    0xf4(%eax),%eax
 53e:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
 541:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 544:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
 547:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 54a:	8b 80 18 01 00 00    	mov    0x118(%eax),%eax
 550:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
 553:	83 7d f0 00          	cmpl   $0x0,0xfffffff0(%ebp)
 557:	75 b9                	jne    512 <sched+0x8e>
 559:	83 7d f8 00          	cmpl   $0x0,0xfffffff8(%ebp)
 55d:	75 46                	jne    5a5 <sched+0x121>
 55f:	a1 00 00 00 00       	mov    0x0,%eax
 564:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
 567:	c7 45 f8 00 00 00 00 	movl   $0x0,0xfffffff8(%ebp)
 56e:	eb 29                	jmp    599 <sched+0x115>
 570:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 573:	8b 40 50             	mov    0x50(%eax),%eax
 576:	83 f8 01             	cmp    $0x1,%eax
 579:	74 12                	je     58d <sched+0x109>
 57b:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 57e:	8b 90 f0 00 00 00    	mov    0xf0(%eax),%edx
 584:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 587:	89 90 f4 00 00 00    	mov    %edx,0xf4(%eax)
 58d:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 590:	8b 80 18 01 00 00    	mov    0x118(%eax),%eax
 596:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
 599:	83 7d f0 00          	cmpl   $0x0,0xfffffff0(%ebp)
 59d:	75 d1                	jne    570 <sched+0xec>
 59f:	83 45 fc 01          	addl   $0x1,0xfffffffc(%ebp)
 5a3:	eb 0a                	jmp    5af <sched+0x12b>
 5a5:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
 5a8:	a3 00 00 00 00       	mov    %eax,0x0
 5ad:	eb 0a                	jmp    5b9 <sched+0x135>
 5af:	83 7d fc 01          	cmpl   $0x1,0xfffffffc(%ebp)
 5b3:	0f 8e 18 ff ff ff    	jle    4d1 <sched+0x4d>
 5b9:	e8 fc ff ff ff       	call   5ba <sched+0x136>
 5be:	25 00 02 00 00       	and    $0x200,%eax
 5c3:	85 c0                	test   %eax,%eax
 5c5:	75 09                	jne    5d0 <sched+0x14c>
 5c7:	a1 00 00 00 00       	mov    0x0,%eax
 5cc:	85 c0                	test   %eax,%eax
 5ce:	75 24                	jne    5f4 <sched+0x170>
 5d0:	c7 44 24 0c d5 00 00 	movl   $0xd5,0xc(%esp)
 5d7:	00 
 5d8:	c7 44 24 08 56 00 00 	movl   $0x56,0x8(%esp)
 5df:	00 
 5e0:	c7 44 24 04 56 00 00 	movl   $0x56,0x4(%esp)
 5e7:	00 
 5e8:	c7 04 24 ab 00 00 00 	movl   $0xab,(%esp)
 5ef:	e8 fc ff ff ff       	call   5f0 <sched+0x16c>
 5f4:	c9                   	leave  
 5f5:	c3                   	ret    

000005f6 <get_tcb>:
 5f6:	55                   	push   %ebp
 5f7:	89 e5                	mov    %esp,%ebp
 5f9:	83 ec 28             	sub    $0x28,%esp
 5fc:	a1 00 00 00 00       	mov    0x0,%eax
 601:	85 c0                	test   %eax,%eax
 603:	75 0c                	jne    611 <get_tcb+0x1b>
 605:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
 60c:	e9 e4 00 00 00       	jmp    6f5 <get_tcb+0xff>
 611:	a1 00 00 00 00       	mov    0x0,%eax
 616:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 619:	a1 00 00 00 00       	mov    0x0,%eax
 61e:	8b 80 18 01 00 00    	mov    0x118(%eax),%eax
 624:	a3 00 00 00 00       	mov    %eax,0x0
 629:	a1 00 00 00 00       	mov    0x0,%eax
 62e:	85 c0                	test   %eax,%eax
 630:	75 0c                	jne    63e <get_tcb+0x48>
 632:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
 639:	00 00 00 
 63c:	eb 0f                	jmp    64d <get_tcb+0x57>
 63e:	a1 00 00 00 00       	mov    0x0,%eax
 643:	c7 80 14 01 00 00 00 	movl   $0x0,0x114(%eax)
 64a:	00 00 00 
 64d:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 650:	8b 40 50             	mov    0x50(%eax),%eax
 653:	83 f8 01             	cmp    $0x1,%eax
 656:	74 24                	je     67c <get_tcb+0x86>
 658:	c7 44 24 0c e7 00 00 	movl   $0xe7,0xc(%esp)
 65f:	00 
 660:	c7 44 24 08 56 00 00 	movl   $0x56,0x8(%esp)
 667:	00 
 668:	c7 44 24 04 56 00 00 	movl   $0x56,0x4(%esp)
 66f:	00 
 670:	c7 04 24 e2 00 00 00 	movl   $0xe2,(%esp)
 677:	e8 fc ff ff ff       	call   678 <get_tcb+0x82>
 67c:	8b 15 00 00 00 00    	mov    0x0,%edx
 682:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 685:	89 90 14 01 00 00    	mov    %edx,0x114(%eax)
 68b:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 68e:	c7 80 18 01 00 00 00 	movl   $0x0,0x118(%eax)
 695:	00 00 00 
 698:	a1 00 00 00 00       	mov    0x0,%eax
 69d:	85 c0                	test   %eax,%eax
 69f:	75 37                	jne    6d8 <get_tcb+0xe2>
 6a1:	a1 00 00 00 00       	mov    0x0,%eax
 6a6:	85 c0                	test   %eax,%eax
 6a8:	74 24                	je     6ce <get_tcb+0xd8>
 6aa:	c7 44 24 0c ed 00 00 	movl   $0xed,0xc(%esp)
 6b1:	00 
 6b2:	c7 44 24 08 56 00 00 	movl   $0x56,0x8(%esp)
 6b9:	00 
 6ba:	c7 44 24 04 56 00 00 	movl   $0x56,0x4(%esp)
 6c1:	00 
 6c2:	c7 04 24 f6 00 00 00 	movl   $0xf6,(%esp)
 6c9:	e8 fc ff ff ff       	call   6ca <get_tcb+0xd4>
 6ce:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 6d1:	a3 00 00 00 00       	mov    %eax,0x0
 6d6:	eb 0f                	jmp    6e7 <get_tcb+0xf1>
 6d8:	8b 15 00 00 00 00    	mov    0x0,%edx
 6de:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 6e1:	89 82 18 01 00 00    	mov    %eax,0x118(%edx)
 6e7:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 6ea:	a3 00 00 00 00       	mov    %eax,0x0
 6ef:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 6f2:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
 6f5:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 6f8:	c9                   	leave  
 6f9:	c3                   	ret    

000006fa <put_tcb>:
 6fa:	55                   	push   %ebp
 6fb:	89 e5                	mov    %esp,%ebp
 6fd:	83 ec 18             	sub    $0x18,%esp
 700:	a1 00 00 00 00       	mov    0x0,%eax
 705:	39 45 08             	cmp    %eax,0x8(%ebp)
 708:	75 39                	jne    743 <put_tcb+0x49>
 70a:	a1 00 00 00 00       	mov    0x0,%eax
 70f:	8b 80 18 01 00 00    	mov    0x118(%eax),%eax
 715:	a3 00 00 00 00       	mov    %eax,0x0
 71a:	a1 00 00 00 00       	mov    0x0,%eax
 71f:	85 c0                	test   %eax,%eax
 721:	75 0f                	jne    732 <put_tcb+0x38>
 723:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
 72a:	00 00 00 
 72d:	e9 81 00 00 00       	jmp    7b3 <put_tcb+0xb9>
 732:	a1 00 00 00 00       	mov    0x0,%eax
 737:	c7 80 14 01 00 00 00 	movl   $0x0,0x114(%eax)
 73e:	00 00 00 
 741:	eb 70                	jmp    7b3 <put_tcb+0xb9>
 743:	a1 00 00 00 00       	mov    0x0,%eax
 748:	39 45 08             	cmp    %eax,0x8(%ebp)
 74b:	75 36                	jne    783 <put_tcb+0x89>
 74d:	a1 00 00 00 00       	mov    0x0,%eax
 752:	8b 80 14 01 00 00    	mov    0x114(%eax),%eax
 758:	a3 00 00 00 00       	mov    %eax,0x0
 75d:	a1 00 00 00 00       	mov    0x0,%eax
 762:	85 c0                	test   %eax,%eax
 764:	75 0c                	jne    772 <put_tcb+0x78>
 766:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
 76d:	00 00 00 
 770:	eb 41                	jmp    7b3 <put_tcb+0xb9>
 772:	a1 00 00 00 00       	mov    0x0,%eax
 777:	c7 80 18 01 00 00 00 	movl   $0x0,0x118(%eax)
 77e:	00 00 00 
 781:	eb 30                	jmp    7b3 <put_tcb+0xb9>
 783:	8b 45 08             	mov    0x8(%ebp),%eax
 786:	8b 90 14 01 00 00    	mov    0x114(%eax),%edx
 78c:	8b 45 08             	mov    0x8(%ebp),%eax
 78f:	8b 80 18 01 00 00    	mov    0x118(%eax),%eax
 795:	89 82 18 01 00 00    	mov    %eax,0x118(%edx)
 79b:	8b 45 08             	mov    0x8(%ebp),%eax
 79e:	8b 90 18 01 00 00    	mov    0x118(%eax),%edx
 7a4:	8b 45 08             	mov    0x8(%ebp),%eax
 7a7:	8b 80 14 01 00 00    	mov    0x114(%eax),%eax
 7ad:	89 82 14 01 00 00    	mov    %eax,0x114(%edx)
 7b3:	8b 45 08             	mov    0x8(%ebp),%eax
 7b6:	8b 40 50             	mov    0x50(%eax),%eax
 7b9:	85 c0                	test   %eax,%eax
 7bb:	74 24                	je     7e1 <put_tcb+0xe7>
 7bd:	c7 44 24 0c 20 01 00 	movl   $0x120,0xc(%esp)
 7c4:	00 
 7c5:	c7 44 24 08 56 00 00 	movl   $0x56,0x8(%esp)
 7cc:	00 
 7cd:	c7 44 24 04 56 00 00 	movl   $0x56,0x4(%esp)
 7d4:	00 
 7d5:	c7 04 24 0a 01 00 00 	movl   $0x10a,(%esp)
 7dc:	e8 fc ff ff ff       	call   7dd <put_tcb+0xe3>
 7e1:	8b 45 08             	mov    0x8(%ebp),%eax
 7e4:	c7 40 50 01 00 00 00 	movl   $0x1,0x50(%eax)
 7eb:	8b 45 08             	mov    0x8(%ebp),%eax
 7ee:	8b 40 4c             	mov    0x4c(%eax),%eax
 7f1:	83 f8 05             	cmp    $0x5,%eax
 7f4:	77 0c                	ja     802 <put_tcb+0x108>
 7f6:	c7 45 fc 01 00 00 00 	movl   $0x1,0xfffffffc(%ebp)
 7fd:	e9 a9 00 00 00       	jmp    8ab <put_tcb+0x1b1>
 802:	8b 45 08             	mov    0x8(%ebp),%eax
 805:	8b 40 4c             	mov    0x4c(%eax),%eax
 808:	83 f8 05             	cmp    $0x5,%eax
 80b:	77 24                	ja     831 <put_tcb+0x137>
 80d:	c7 44 24 0c 24 01 00 	movl   $0x124,0xc(%esp)
 814:	00 
 815:	c7 44 24 08 56 00 00 	movl   $0x56,0x8(%esp)
 81c:	00 
 81d:	c7 44 24 04 56 00 00 	movl   $0x56,0x4(%esp)
 824:	00 
 825:	c7 04 24 20 01 00 00 	movl   $0x120,(%esp)
 82c:	e8 fc ff ff ff       	call   82d <put_tcb+0x133>
 831:	8b 15 00 00 00 00    	mov    0x0,%edx
 837:	8b 45 08             	mov    0x8(%ebp),%eax
 83a:	89 90 14 01 00 00    	mov    %edx,0x114(%eax)
 840:	8b 45 08             	mov    0x8(%ebp),%eax
 843:	c7 80 18 01 00 00 00 	movl   $0x0,0x118(%eax)
 84a:	00 00 00 
 84d:	a1 00 00 00 00       	mov    0x0,%eax
 852:	85 c0                	test   %eax,%eax
 854:	75 37                	jne    88d <put_tcb+0x193>
 856:	a1 00 00 00 00       	mov    0x0,%eax
 85b:	85 c0                	test   %eax,%eax
 85d:	74 24                	je     883 <put_tcb+0x189>
 85f:	c7 44 24 0c 2a 01 00 	movl   $0x12a,0xc(%esp)
 866:	00 
 867:	c7 44 24 08 56 00 00 	movl   $0x56,0x8(%esp)
 86e:	00 
 86f:	c7 44 24 04 56 00 00 	movl   $0x56,0x4(%esp)
 876:	00 
 877:	c7 04 24 42 01 00 00 	movl   $0x142,(%esp)
 87e:	e8 fc ff ff ff       	call   87f <put_tcb+0x185>
 883:	8b 45 08             	mov    0x8(%ebp),%eax
 886:	a3 00 00 00 00       	mov    %eax,0x0
 88b:	eb 0f                	jmp    89c <put_tcb+0x1a2>
 88d:	8b 15 00 00 00 00    	mov    0x0,%edx
 893:	8b 45 08             	mov    0x8(%ebp),%eax
 896:	89 82 18 01 00 00    	mov    %eax,0x118(%edx)
 89c:	8b 45 08             	mov    0x8(%ebp),%eax
 89f:	a3 00 00 00 00       	mov    %eax,0x0
 8a4:	c7 45 fc 00 00 00 00 	movl   $0x0,0xfffffffc(%ebp)
 8ab:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 8ae:	c9                   	leave  
 8af:	c3                   	ret    

000008b0 <task_idle>:
 8b0:	55                   	push   %ebp
 8b1:	89 e5                	mov    %esp,%ebp
 8b3:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
 8ba:	00 00 00 
 8bd:	a1 00 00 00 00       	mov    0x0,%eax
 8c2:	83 c0 01             	add    $0x1,%eax
 8c5:	a3 00 00 00 00       	mov    %eax,0x0
 8ca:	eb f1                	jmp    8bd <task_idle+0xd>
