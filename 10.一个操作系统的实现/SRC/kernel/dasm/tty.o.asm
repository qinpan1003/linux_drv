
tty.o:     file format elf32-i386

Disassembly of section .text:

00000000 <task_tty>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 58             	sub    $0x58,%esp
   6:	e8 fc ff ff ff       	call   7 <task_tty+0x7>
   b:	e8 fc ff ff ff       	call   c <task_tty+0xc>
  10:	c7 45 f4 00 00 00 00 	movl   $0x0,0xfffffff4(%ebp)
  17:	eb 1d                	jmp    36 <task_tty+0x36>
  19:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
  1c:	89 04 24             	mov    %eax,(%esp)
  1f:	e8 fc ff ff ff       	call   20 <task_tty+0x20>
  24:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
  27:	89 04 24             	mov    %eax,(%esp)
  2a:	e8 fc ff ff ff       	call   2b <task_tty+0x2b>
  2f:	81 45 f4 9c 00 00 00 	addl   $0x9c,0xfffffff4(%ebp)
  36:	b8 d4 01 00 00       	mov    $0x1d4,%eax
  3b:	39 45 f4             	cmp    %eax,0xfffffff4(%ebp)
  3e:	72 d9                	jb     19 <task_tty+0x19>
  40:	8d 45 cc             	lea    0xffffffcc(%ebp),%eax
  43:	89 44 24 08          	mov    %eax,0x8(%esp)
  47:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%esp)
  4e:	ff 
  4f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  56:	e8 fc ff ff ff       	call   57 <task_tty+0x57>
  5b:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
  5e:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
  61:	83 7d fc fe          	cmpl   $0xfffffffe,0xfffffffc(%ebp)
  65:	74 30                	je     97 <task_tty+0x97>
  67:	83 7d fc 00          	cmpl   $0x0,0xfffffffc(%ebp)
  6b:	78 06                	js     73 <task_tty+0x73>
  6d:	83 7d fc 0a          	cmpl   $0xa,0xfffffffc(%ebp)
  71:	7e 24                	jle    97 <task_tty+0x97>
  73:	c7 44 24 0c 25 00 00 	movl   $0x25,0xc(%esp)
  7a:	00 
  7b:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  82:	00 
  83:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  8a:	00 
  8b:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
  92:	e8 fc ff ff ff       	call   93 <task_tty+0x93>
  97:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
  9a:	83 f8 fe             	cmp    $0xfffffffe,%eax
  9d:	74 2c                	je     cb <task_tty+0xcb>
  9f:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
  a2:	83 f8 ff             	cmp    $0xffffffff,%eax
  a5:	74 24                	je     cb <task_tty+0xcb>
  a7:	c7 44 24 0c 26 00 00 	movl   $0x26,0xc(%esp)
  ae:	00 
  af:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  b6:	00 
  b7:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  be:	00 
  bf:	c7 04 24 44 00 00 00 	movl   $0x44,(%esp)
  c6:	e8 fc ff ff ff       	call   c7 <task_tty+0xc7>
  cb:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
  ce:	83 f8 ff             	cmp    $0xffffffff,%eax
  d1:	75 0f                	jne    e2 <task_tty+0xe2>
  d3:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
  da:	00 00 00 
  dd:	e9 19 01 00 00       	jmp    1fb <task_tty+0x1fb>
  e2:	8d 45 cc             	lea    0xffffffcc(%ebp),%eax
  e5:	83 c0 0c             	add    $0xc,%eax
  e8:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
  eb:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
  ee:	8b 00                	mov    (%eax),%eax
  f0:	89 45 bc             	mov    %eax,0xffffffbc(%ebp)
  f3:	83 7d bc 01          	cmpl   $0x1,0xffffffbc(%ebp)
  f7:	74 53                	je     14c <task_tty+0x14c>
  f9:	83 7d bc 01          	cmpl   $0x1,0xffffffbc(%ebp)
  fd:	72 15                	jb     114 <task_tty+0x114>
  ff:	83 7d bc 02          	cmpl   $0x2,0xffffffbc(%ebp)
 103:	74 7c                	je     181 <task_tty+0x181>
 105:	83 7d bc 03          	cmpl   $0x3,0xffffffbc(%ebp)
 109:	0f 84 e1 00 00 00    	je     1f0 <task_tty+0x1f0>
 10f:	e9 e7 00 00 00       	jmp    1fb <task_tty+0x1fb>
 114:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 117:	8b 40 04             	mov    0x4(%eax),%eax
 11a:	83 f8 02             	cmp    $0x2,%eax
 11d:	0f 86 d8 00 00 00    	jbe    1fb <task_tty+0x1fb>
 123:	c7 44 24 0c 31 00 00 	movl   $0x31,0xc(%esp)
 12a:	00 
 12b:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 132:	00 
 133:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 13a:	00 
 13b:	c7 04 24 78 00 00 00 	movl   $0x78,(%esp)
 142:	e8 fc ff ff ff       	call   143 <task_tty+0x143>
 147:	e9 af 00 00 00       	jmp    1fb <task_tty+0x1fb>
 14c:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 14f:	8b 40 04             	mov    0x4(%eax),%eax
 152:	83 f8 02             	cmp    $0x2,%eax
 155:	0f 86 a0 00 00 00    	jbe    1fb <task_tty+0x1fb>
 15b:	c7 44 24 0c 34 00 00 	movl   $0x34,0xc(%esp)
 162:	00 
 163:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 16a:	00 
 16b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 172:	00 
 173:	c7 04 24 78 00 00 00 	movl   $0x78,(%esp)
 17a:	e8 fc ff ff ff       	call   17b <task_tty+0x17b>
 17f:	eb 7a                	jmp    1fb <task_tty+0x1fb>
 181:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 184:	89 04 24             	mov    %eax,(%esp)
 187:	e8 fc ff ff ff       	call   188 <task_tty+0x188>
 18c:	83 f8 ff             	cmp    $0xffffffff,%eax
 18f:	75 53                	jne    1e4 <task_tty+0x1e4>
 191:	c7 45 d4 fd ff ff ff 	movl   $0xfffffffd,0xffffffd4(%ebp)
 198:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 19b:	8b 40 08             	mov    0x8(%eax),%eax
 19e:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 1a1:	c7 45 d8 05 00 00 00 	movl   $0x5,0xffffffd8(%ebp)
 1a8:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 1ab:	8b 40 0c             	mov    0xc(%eax),%eax
 1ae:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
 1b1:	c7 45 e8 ff ff ff ff 	movl   $0xffffffff,0xffffffe8(%ebp)
 1b8:	83 7d fc 03          	cmpl   $0x3,0xfffffffc(%ebp)
 1bc:	74 3d                	je     1fb <task_tty+0x1fb>
 1be:	c7 44 24 0c 40 00 00 	movl   $0x40,0xc(%esp)
 1c5:	00 
 1c6:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 1cd:	00 
 1ce:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 1d5:	00 
 1d6:	c7 04 24 b9 00 00 00 	movl   $0xb9,(%esp)
 1dd:	e8 fc ff ff ff       	call   1de <task_tty+0x1de>
 1e2:	eb 17                	jmp    1fb <task_tty+0x1fb>
 1e4:	c7 05 00 00 00 00 01 	movl   $0x1,0x0
 1eb:	00 00 00 
 1ee:	eb 0b                	jmp    1fb <task_tty+0x1fb>
 1f0:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 1f3:	89 04 24             	mov    %eax,(%esp)
 1f6:	e8 fc ff ff ff       	call   1f7 <task_tty+0x1f7>
 1fb:	83 7d fc 00          	cmpl   $0x0,0xfffffffc(%ebp)
 1ff:	78 06                	js     207 <task_tty+0x207>
 201:	83 7d fc 0b          	cmpl   $0xb,0xfffffffc(%ebp)
 205:	7e 2a                	jle    231 <task_tty+0x231>
 207:	83 7d fc fe          	cmpl   $0xfffffffe,0xfffffffc(%ebp)
 20b:	74 24                	je     231 <task_tty+0x231>
 20d:	c7 44 24 0c 50 00 00 	movl   $0x50,0xc(%esp)
 214:	00 
 215:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 21c:	00 
 21d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 224:	00 
 225:	c7 04 24 cc 00 00 00 	movl   $0xcc,(%esp)
 22c:	e8 fc ff ff ff       	call   22d <task_tty+0x22d>
 231:	a1 00 00 00 00       	mov    0x0,%eax
 236:	83 f8 01             	cmp    $0x1,%eax
 239:	75 0f                	jne    24a <task_tty+0x24a>
 23b:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
 242:	00 00 00 
 245:	e9 c8 00 00 00       	jmp    312 <task_tty+0x312>
 24a:	8d 45 cc             	lea    0xffffffcc(%ebp),%eax
 24d:	89 44 24 08          	mov    %eax,0x8(%esp)
 251:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 254:	89 44 24 04          	mov    %eax,0x4(%esp)
 258:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 25f:	e8 fc ff ff ff       	call   260 <task_tty+0x260>
 264:	85 c0                	test   %eax,%eax
 266:	0f 84 a6 00 00 00    	je     312 <task_tty+0x312>
 26c:	e8 fc ff ff ff       	call   26d <task_tty+0x26d>
 271:	a1 00 00 00 00       	mov    0x0,%eax
 276:	85 c0                	test   %eax,%eax
 278:	74 24                	je     29e <task_tty+0x29e>
 27a:	c7 44 24 0c 59 00 00 	movl   $0x59,0xc(%esp)
 281:	00 
 282:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 289:	00 
 28a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 291:	00 
 292:	c7 04 24 0f 01 00 00 	movl   $0x10f,(%esp)
 299:	e8 fc ff ff ff       	call   29a <task_tty+0x29a>
 29e:	c7 05 00 00 00 00 01 	movl   $0x1,0x0
 2a5:	00 00 00 
 2a8:	a1 00 00 00 00       	mov    0x0,%eax
 2ad:	83 c0 01             	add    $0x1,%eax
 2b0:	a3 00 00 00 00       	mov    %eax,0x0
 2b5:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
 2b8:	a3 00 00 00 00       	mov    %eax,0x0
 2bd:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
 2c0:	a3 04 00 00 00       	mov    %eax,0x4
 2c5:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 2c8:	a3 08 00 00 00       	mov    %eax,0x8
 2cd:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
 2d0:	a3 0c 00 00 00       	mov    %eax,0xc
 2d5:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
 2d8:	a3 10 00 00 00       	mov    %eax,0x10
 2dd:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
 2e0:	a3 14 00 00 00       	mov    %eax,0x14
 2e5:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
 2e8:	a3 18 00 00 00       	mov    %eax,0x18
 2ed:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
 2f0:	a3 1c 00 00 00       	mov    %eax,0x1c
 2f5:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 2f8:	a3 20 00 00 00       	mov    %eax,0x20
 2fd:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 300:	a3 24 00 00 00       	mov    %eax,0x24
 305:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 308:	a3 04 00 00 00       	mov    %eax,0x4
 30d:	e8 fc ff ff ff       	call   30e <task_tty+0x30e>
 312:	e8 fc ff ff ff       	call   313 <task_tty+0x313>
 317:	a1 00 00 00 00       	mov    0x0,%eax
 31c:	83 f8 01             	cmp    $0x1,%eax
 31f:	75 38                	jne    359 <task_tty+0x359>
 321:	a1 04 00 00 00       	mov    0x4,%eax
 326:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 32d:	00 
 32e:	89 44 24 04          	mov    %eax,0x4(%esp)
 332:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 339:	e8 fc ff ff ff       	call   33a <task_tty+0x33a>
 33e:	85 c0                	test   %eax,%eax
 340:	75 17                	jne    359 <task_tty+0x359>
 342:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
 349:	00 00 00 
 34c:	a1 00 00 00 00       	mov    0x0,%eax
 351:	83 e8 01             	sub    $0x1,%eax
 354:	a3 00 00 00 00       	mov    %eax,0x0
 359:	e8 fc ff ff ff       	call   35a <task_tty+0x35a>
 35e:	e8 fc ff ff ff       	call   35f <task_tty+0x35f>
 363:	a1 00 00 00 00       	mov    0x0,%eax
 368:	83 f8 01             	cmp    $0x1,%eax
 36b:	75 38                	jne    3a5 <task_tty+0x3a5>
 36d:	a1 04 00 00 00       	mov    0x4,%eax
 372:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 379:	00 
 37a:	89 44 24 04          	mov    %eax,0x4(%esp)
 37e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 385:	e8 fc ff ff ff       	call   386 <task_tty+0x386>
 38a:	85 c0                	test   %eax,%eax
 38c:	75 17                	jne    3a5 <task_tty+0x3a5>
 38e:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
 395:	00 00 00 
 398:	a1 00 00 00 00       	mov    0x0,%eax
 39d:	83 e8 01             	sub    $0x1,%eax
 3a0:	a3 00 00 00 00       	mov    %eax,0x0
 3a5:	e8 fc ff ff ff       	call   3a6 <task_tty+0x3a6>
 3aa:	e9 61 fc ff ff       	jmp    10 <task_tty+0x10>

000003af <init_tty>:
 3af:	55                   	push   %ebp
 3b0:	89 e5                	mov    %esp,%ebp
 3b2:	83 ec 28             	sub    $0x28,%esp
 3b5:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
 3bc:	00 00 00 
 3bf:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
 3c6:	00 00 00 
 3c9:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
 3d0:	00 00 00 
 3d3:	c7 45 fc 00 00 00 00 	movl   $0x0,0xfffffffc(%ebp)
 3da:	c7 45 f8 00 00 00 00 	movl   $0x0,0xfffffff8(%ebp)
 3e1:	e9 90 00 00 00       	jmp    476 <init_tty+0xc7>
 3e6:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
 3e9:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 3ec:	89 50 78             	mov    %edx,0x78(%eax)
 3ef:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
 3f2:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 3f5:	89 50 7c             	mov    %edx,0x7c(%eax)
 3f8:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 3fb:	c7 80 80 00 00 00 00 	movl   $0x0,0x80(%eax)
 402:	00 00 00 
 405:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 408:	c1 e0 04             	shl    $0x4,%eax
 40b:	8d 90 00 00 00 00    	lea    0x0(%eax),%edx
 411:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 414:	89 90 84 00 00 00    	mov    %edx,0x84(%eax)
 41a:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 41d:	c7 80 94 00 00 00 00 	movl   $0x0,0x94(%eax)
 424:	00 00 00 
 427:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 42a:	8b 90 84 00 00 00    	mov    0x84(%eax),%edx
 430:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 433:	69 c0 20 2b 00 00    	imul   $0x2b20,%eax,%eax
 439:	89 02                	mov    %eax,(%edx)
 43b:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 43e:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
 444:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 44b:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 44e:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
 454:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 45b:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 45e:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
 464:	c7 40 0c 07 00 00 00 	movl   $0x7,0xc(%eax)
 46b:	81 45 fc 9c 00 00 00 	addl   $0x9c,0xfffffffc(%ebp)
 472:	83 45 f8 01          	addl   $0x1,0xfffffff8(%ebp)
 476:	b8 d4 01 00 00       	mov    $0x1d4,%eax
 47b:	39 45 fc             	cmp    %eax,0xfffffffc(%ebp)
 47e:	0f 82 62 ff ff ff    	jb     3e6 <init_tty+0x37>
 484:	e8 fc ff ff ff       	call   485 <init_tty+0xd6>
 489:	c7 45 f8 02 00 00 00 	movl   $0x2,0xfffffff8(%ebp)
 490:	eb 6b                	jmp    4fd <init_tty+0x14e>
 492:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 495:	89 04 24             	mov    %eax,(%esp)
 498:	e8 fc ff ff ff       	call   499 <init_tty+0xea>
 49d:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 4a0:	89 44 24 04          	mov    %eax,0x4(%esp)
 4a4:	c7 04 24 21 01 00 00 	movl   $0x121,(%esp)
 4ab:	e8 fc ff ff ff       	call   4ac <init_tty+0xfd>
 4b0:	a1 00 00 00 00       	mov    0x0,%eax
 4b5:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
 4bb:	8b 50 08             	mov    0x8(%eax),%edx
 4be:	a1 00 00 00 00       	mov    0x0,%eax
 4c3:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
 4c9:	8b 40 04             	mov    0x4(%eax),%eax
 4cc:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
 4cf:	c7 45 ec 67 66 66 66 	movl   $0x66666667,0xffffffec(%ebp)
 4d6:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 4d9:	f7 e9                	imul   %ecx
 4db:	c1 fa 06             	sar    $0x6,%edx
 4de:	89 c8                	mov    %ecx,%eax
 4e0:	c1 f8 1f             	sar    $0x1f,%eax
 4e3:	89 d1                	mov    %edx,%ecx
 4e5:	29 c1                	sub    %eax,%ecx
 4e7:	89 c8                	mov    %ecx,%eax
 4e9:	89 44 24 04          	mov    %eax,0x4(%esp)
 4ed:	c7 04 24 30 01 00 00 	movl   $0x130,(%esp)
 4f4:	e8 fc ff ff ff       	call   4f5 <init_tty+0x146>
 4f9:	83 6d f8 01          	subl   $0x1,0xfffffff8(%ebp)
 4fd:	83 7d f8 00          	cmpl   $0x0,0xfffffff8(%ebp)
 501:	79 8f                	jns    492 <init_tty+0xe3>
 503:	c9                   	leave  
 504:	c3                   	ret    

00000505 <select_console>:
 505:	55                   	push   %ebp
 506:	89 e5                	mov    %esp,%ebp
 508:	83 ec 08             	sub    $0x8,%esp
 50b:	e8 fc ff ff ff       	call   50c <select_console+0x7>
 510:	8b 45 08             	mov    0x8(%ebp),%eax
 513:	69 c0 9c 00 00 00    	imul   $0x9c,%eax,%eax
 519:	05 00 00 00 00       	add    $0x0,%eax
 51e:	a3 00 00 00 00       	mov    %eax,0x0
 523:	e8 fc ff ff ff       	call   524 <select_console+0x1f>
 528:	e8 fc ff ff ff       	call   529 <select_console+0x24>
 52d:	c9                   	leave  
 52e:	c3                   	ret    

0000052f <tty_dev_read>:
 52f:	55                   	push   %ebp
 530:	89 e5                	mov    %esp,%ebp
 532:	83 ec 08             	sub    $0x8,%esp
 535:	a1 00 00 00 00       	mov    0x0,%eax
 53a:	39 45 08             	cmp    %eax,0x8(%ebp)
 53d:	75 16                	jne    555 <tty_dev_read+0x26>
 53f:	a1 00 00 00 00       	mov    0x0,%eax
 544:	85 c0                	test   %eax,%eax
 546:	7e 0d                	jle    555 <tty_dev_read+0x26>
 548:	a1 00 00 00 00       	mov    0x0,%eax
 54d:	89 04 24             	mov    %eax,(%esp)
 550:	e8 fc ff ff ff       	call   551 <tty_dev_read+0x22>
 555:	c9                   	leave  
 556:	c3                   	ret    

00000557 <tty_dev_write>:
 557:	55                   	push   %ebp
 558:	89 e5                	mov    %esp,%ebp
 55a:	83 ec 08             	sub    $0x8,%esp
 55d:	8b 45 08             	mov    0x8(%ebp),%eax
 560:	89 04 24             	mov    %eax,(%esp)
 563:	e8 fc ff ff ff       	call   564 <tty_dev_write+0xd>
 568:	e8 fc ff ff ff       	call   569 <tty_dev_write+0x12>
 56d:	8b 45 08             	mov    0x8(%ebp),%eax
 570:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
 576:	8b 50 04             	mov    0x4(%eax),%edx
 579:	8b 45 08             	mov    0x8(%ebp),%eax
 57c:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
 582:	8b 40 08             	mov    0x8(%eax),%eax
 585:	8d 04 02             	lea    (%edx,%eax,1),%eax
 588:	85 c0                	test   %eax,%eax
 58a:	79 18                	jns    5a4 <tty_dev_write+0x4d>
 58c:	8b 45 08             	mov    0x8(%ebp),%eax
 58f:	8b 90 84 00 00 00    	mov    0x84(%eax),%edx
 595:	8b 45 08             	mov    0x8(%ebp),%eax
 598:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
 59e:	8b 40 04             	mov    0x4(%eax),%eax
 5a1:	89 42 08             	mov    %eax,0x8(%edx)
 5a4:	8b 45 08             	mov    0x8(%ebp),%eax
 5a7:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
 5ad:	8b 50 04             	mov    0x4(%eax),%edx
 5b0:	8b 45 08             	mov    0x8(%ebp),%eax
 5b3:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
 5b9:	8b 40 08             	mov    0x8(%eax),%eax
 5bc:	8d 04 02             	lea    (%edx,%eax,1),%eax
 5bf:	3d ff 27 00 00       	cmp    $0x27ff,%eax
 5c4:	7e 36                	jle    5fc <tty_dev_write+0xa5>
 5c6:	8b 45 08             	mov    0x8(%ebp),%eax
 5c9:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
 5cf:	89 04 24             	mov    %eax,(%esp)
 5d2:	e8 fc ff ff ff       	call   5d3 <tty_dev_write+0x7c>
 5d7:	8b 45 08             	mov    0x8(%ebp),%eax
 5da:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
 5e0:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 5e7:	8b 45 08             	mov    0x8(%ebp),%eax
 5ea:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
 5f0:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 5f7:	e8 fc ff ff ff       	call   5f8 <tty_dev_write+0xa1>
 5fc:	e8 fc ff ff ff       	call   5fd <tty_dev_write+0xa6>
 601:	e8 fc ff ff ff       	call   602 <tty_dev_write+0xab>
 606:	c9                   	leave  
 607:	c3                   	ret    

00000608 <in_process>:
 608:	55                   	push   %ebp
 609:	89 e5                	mov    %esp,%ebp
 60b:	83 ec 48             	sub    $0x48,%esp
 60e:	e8 fc ff ff ff       	call   60f <in_process+0x7>
 613:	8b 45 08             	mov    0x8(%ebp),%eax
 616:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
 61c:	85 c0                	test   %eax,%eax
 61e:	7f 0a                	jg     62a <in_process+0x22>
 620:	e8 fc ff ff ff       	call   621 <in_process+0x19>
 625:	e9 c1 05 00 00       	jmp    beb <in_process+0x5e3>
 62a:	8b 45 08             	mov    0x8(%ebp),%eax
 62d:	8b 40 7c             	mov    0x7c(%eax),%eax
 630:	8b 00                	mov    (%eax),%eax
 632:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 635:	8b 45 08             	mov    0x8(%ebp),%eax
 638:	8b 40 7c             	mov    0x7c(%eax),%eax
 63b:	8d 50 04             	lea    0x4(%eax),%edx
 63e:	8b 45 08             	mov    0x8(%ebp),%eax
 641:	89 50 7c             	mov    %edx,0x7c(%eax)
 644:	8b 45 08             	mov    0x8(%ebp),%eax
 647:	8b 50 7c             	mov    0x7c(%eax),%edx
 64a:	8b 45 08             	mov    0x8(%ebp),%eax
 64d:	83 c0 78             	add    $0x78,%eax
 650:	39 c2                	cmp    %eax,%edx
 652:	72 0f                	jb     663 <in_process+0x5b>
 654:	8b 45 08             	mov    0x8(%ebp),%eax
 657:	8b 40 7c             	mov    0x7c(%eax),%eax
 65a:	8d 50 88             	lea    0xffffff88(%eax),%edx
 65d:	8b 45 08             	mov    0x8(%ebp),%eax
 660:	89 50 7c             	mov    %edx,0x7c(%eax)
 663:	8b 45 08             	mov    0x8(%ebp),%eax
 666:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
 66c:	8d 50 ff             	lea    0xffffffff(%eax),%edx
 66f:	8b 45 08             	mov    0x8(%ebp),%eax
 672:	89 90 80 00 00 00    	mov    %edx,0x80(%eax)
 678:	e8 fc ff ff ff       	call   679 <in_process+0x71>
 67d:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 680:	85 c0                	test   %eax,%eax
 682:	0f 89 03 03 00 00    	jns    98b <in_process+0x383>
 688:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 68b:	2d 00 00 00 80       	sub    $0x80000000,%eax
 690:	89 45 cc             	mov    %eax,0xffffffcc(%ebp)
 693:	83 7d cc 2f          	cmpl   $0x2f,0xffffffcc(%ebp)
 697:	0f 87 ee 02 00 00    	ja     98b <in_process+0x383>
 69d:	8b 55 cc             	mov    0xffffffcc(%ebp),%edx
 6a0:	8b 04 95 48 01 00 00 	mov    0x148(,%edx,4),%eax
 6a7:	ff e0                	jmp    *%eax
 6a9:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 6b0:	84 c0                	test   %al,%al
 6b2:	74 09                	je     6bd <in_process+0xb5>
 6b4:	c6 05 00 00 00 00 01 	movb   $0x1,0x0
 6bb:	eb 07                	jmp    6c4 <in_process+0xbc>
 6bd:	c6 05 00 00 00 00 00 	movb   $0x0,0x0
 6c4:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 6cb:	0f b6 15 00 00 00 00 	movzbl 0x0,%edx
 6d2:	09 d0                	or     %edx,%eax
 6d4:	a2 00 00 00 00       	mov    %al,0x0
 6d9:	e9 ad 02 00 00       	jmp    98b <in_process+0x383>
 6de:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 6e5:	84 c0                	test   %al,%al
 6e7:	74 09                	je     6f2 <in_process+0xea>
 6e9:	c6 05 00 00 00 00 01 	movb   $0x1,0x0
 6f0:	eb 07                	jmp    6f9 <in_process+0xf1>
 6f2:	c6 05 00 00 00 00 00 	movb   $0x0,0x0
 6f9:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 700:	0f b6 15 00 00 00 00 	movzbl 0x0,%edx
 707:	09 d0                	or     %edx,%eax
 709:	a2 00 00 00 00       	mov    %al,0x0
 70e:	e9 78 02 00 00       	jmp    98b <in_process+0x383>
 713:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 71a:	84 c0                	test   %al,%al
 71c:	74 09                	je     727 <in_process+0x11f>
 71e:	c6 05 00 00 00 00 01 	movb   $0x1,0x0
 725:	eb 07                	jmp    72e <in_process+0x126>
 727:	c6 05 00 00 00 00 00 	movb   $0x0,0x0
 72e:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 735:	0f b6 15 00 00 00 00 	movzbl 0x0,%edx
 73c:	09 d0                	or     %edx,%eax
 73e:	a2 00 00 00 00       	mov    %al,0x0
 743:	e9 43 02 00 00       	jmp    98b <in_process+0x383>
 748:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 74f:	84 c0                	test   %al,%al
 751:	74 09                	je     75c <in_process+0x154>
 753:	c6 05 00 00 00 00 01 	movb   $0x1,0x0
 75a:	eb 07                	jmp    763 <in_process+0x15b>
 75c:	c6 05 00 00 00 00 00 	movb   $0x0,0x0
 763:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 76a:	0f b6 15 00 00 00 00 	movzbl 0x0,%edx
 771:	09 d0                	or     %edx,%eax
 773:	a2 00 00 00 00       	mov    %al,0x0
 778:	e9 0e 02 00 00       	jmp    98b <in_process+0x383>
 77d:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 784:	84 c0                	test   %al,%al
 786:	74 09                	je     791 <in_process+0x189>
 788:	c6 05 00 00 00 00 01 	movb   $0x1,0x0
 78f:	eb 07                	jmp    798 <in_process+0x190>
 791:	c6 05 00 00 00 00 00 	movb   $0x0,0x0
 798:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 79f:	0f b6 15 00 00 00 00 	movzbl 0x0,%edx
 7a6:	09 d0                	or     %edx,%eax
 7a8:	a2 00 00 00 00       	mov    %al,0x0
 7ad:	e9 d9 01 00 00       	jmp    98b <in_process+0x383>
 7b2:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 7b9:	84 c0                	test   %al,%al
 7bb:	74 09                	je     7c6 <in_process+0x1be>
 7bd:	c6 05 00 00 00 00 01 	movb   $0x1,0x0
 7c4:	eb 07                	jmp    7cd <in_process+0x1c5>
 7c6:	c6 05 00 00 00 00 00 	movb   $0x0,0x0
 7cd:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 7d4:	0f b6 15 00 00 00 00 	movzbl 0x0,%edx
 7db:	09 d0                	or     %edx,%eax
 7dd:	a2 00 00 00 00       	mov    %al,0x0
 7e2:	e9 a4 01 00 00       	jmp    98b <in_process+0x383>
 7e7:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 7ee:	84 c0                	test   %al,%al
 7f0:	0f 84 95 01 00 00    	je     98b <in_process+0x383>
 7f6:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 7fd:	83 f0 04             	xor    $0x4,%eax
 800:	a2 00 00 00 00       	mov    %al,0x0
 805:	e8 fc ff ff ff       	call   806 <in_process+0x1fe>
 80a:	e9 7c 01 00 00       	jmp    98b <in_process+0x383>
 80f:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 816:	84 c0                	test   %al,%al
 818:	0f 84 6d 01 00 00    	je     98b <in_process+0x383>
 81e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 825:	e8 fc ff ff ff       	call   826 <in_process+0x21e>
 82a:	e9 5c 01 00 00       	jmp    98b <in_process+0x383>
 82f:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 836:	84 c0                	test   %al,%al
 838:	0f 84 4d 01 00 00    	je     98b <in_process+0x383>
 83e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 845:	e8 fc ff ff ff       	call   846 <in_process+0x23e>
 84a:	e9 3c 01 00 00       	jmp    98b <in_process+0x383>
 84f:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 856:	84 c0                	test   %al,%al
 858:	0f 84 2d 01 00 00    	je     98b <in_process+0x383>
 85e:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 865:	e8 fc ff ff ff       	call   866 <in_process+0x25e>
 86a:	e9 1c 01 00 00       	jmp    98b <in_process+0x383>
 86f:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 876:	84 c0                	test   %al,%al
 878:	0f 84 0d 01 00 00    	je     98b <in_process+0x383>
 87e:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 885:	83 f0 02             	xor    $0x2,%eax
 888:	a2 00 00 00 00       	mov    %al,0x0
 88d:	e8 fc ff ff ff       	call   88e <in_process+0x286>
 892:	e9 f4 00 00 00       	jmp    98b <in_process+0x383>
 897:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 89e:	84 c0                	test   %al,%al
 8a0:	0f 84 e5 00 00 00    	je     98b <in_process+0x383>
 8a6:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 8ad:	83 f0 01             	xor    $0x1,%eax
 8b0:	a2 00 00 00 00       	mov    %al,0x0
 8b5:	e8 fc ff ff ff       	call   8b6 <in_process+0x2ae>
 8ba:	e9 cc 00 00 00       	jmp    98b <in_process+0x383>
 8bf:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 8c6:	84 c0                	test   %al,%al
 8c8:	0f 84 bd 00 00 00    	je     98b <in_process+0x383>
 8ce:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 8d5:	84 c0                	test   %al,%al
 8d7:	74 11                	je     8ea <in_process+0x2e2>
 8d9:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 8e0:	e8 fc ff ff ff       	call   8e1 <in_process+0x2d9>
 8e5:	e9 a1 00 00 00       	jmp    98b <in_process+0x383>
 8ea:	e8 fc ff ff ff       	call   8eb <in_process+0x2e3>
 8ef:	e8 fc ff ff ff       	call   8f0 <in_process+0x2e8>
 8f4:	e9 92 00 00 00       	jmp    98b <in_process+0x383>
 8f9:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 900:	84 c0                	test   %al,%al
 902:	0f 84 83 00 00 00    	je     98b <in_process+0x383>
 908:	c7 04 24 e7 ff ff ff 	movl   $0xffffffe7,(%esp)
 90f:	e8 fc ff ff ff       	call   910 <in_process+0x308>
 914:	eb 75                	jmp    98b <in_process+0x383>
 916:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 91d:	84 c0                	test   %al,%al
 91f:	74 6a                	je     98b <in_process+0x383>
 921:	e8 fc ff ff ff       	call   922 <in_process+0x31a>
 926:	e8 fc ff ff ff       	call   927 <in_process+0x31f>
 92b:	eb 5e                	jmp    98b <in_process+0x383>
 92d:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 934:	84 c0                	test   %al,%al
 936:	74 53                	je     98b <in_process+0x383>
 938:	e8 fc ff ff ff       	call   939 <in_process+0x331>
 93d:	e8 fc ff ff ff       	call   93e <in_process+0x336>
 942:	eb 47                	jmp    98b <in_process+0x383>
 944:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 94b:	84 c0                	test   %al,%al
 94d:	74 3c                	je     98b <in_process+0x383>
 94f:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 956:	84 c0                	test   %al,%al
 958:	74 0e                	je     968 <in_process+0x360>
 95a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 961:	e8 fc ff ff ff       	call   962 <in_process+0x35a>
 966:	eb 23                	jmp    98b <in_process+0x383>
 968:	e8 fc ff ff ff       	call   969 <in_process+0x361>
 96d:	e8 fc ff ff ff       	call   96e <in_process+0x366>
 972:	eb 17                	jmp    98b <in_process+0x383>
 974:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 97b:	84 c0                	test   %al,%al
 97d:	74 0c                	je     98b <in_process+0x383>
 97f:	c7 04 24 19 00 00 00 	movl   $0x19,(%esp)
 986:	e8 fc ff ff ff       	call   987 <in_process+0x37f>
 98b:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 992:	84 c0                	test   %al,%al
 994:	0f 84 51 02 00 00    	je     beb <in_process+0x5e3>
 99a:	8b 45 08             	mov    0x8(%ebp),%eax
 99d:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
 9a3:	85 c0                	test   %eax,%eax
 9a5:	0f 84 40 02 00 00    	je     beb <in_process+0x5e3>
 9ab:	83 7d fc 1f          	cmpl   $0x1f,0xfffffffc(%ebp)
 9af:	76 61                	jbe    a12 <in_process+0x40a>
 9b1:	83 7d fc 7e          	cmpl   $0x7e,0xfffffffc(%ebp)
 9b5:	77 5b                	ja     a12 <in_process+0x40a>
 9b7:	8b 45 08             	mov    0x8(%ebp),%eax
 9ba:	8b 90 90 00 00 00    	mov    0x90(%eax),%edx
 9c0:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 9c3:	88 02                	mov    %al,(%edx)
 9c5:	83 c2 01             	add    $0x1,%edx
 9c8:	8b 45 08             	mov    0x8(%ebp),%eax
 9cb:	89 90 90 00 00 00    	mov    %edx,0x90(%eax)
 9d1:	8b 45 08             	mov    0x8(%ebp),%eax
 9d4:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
 9da:	8d 50 ff             	lea    0xffffffff(%eax),%edx
 9dd:	8b 45 08             	mov    0x8(%ebp),%eax
 9e0:	89 90 94 00 00 00    	mov    %edx,0x94(%eax)
 9e6:	8b 45 08             	mov    0x8(%ebp),%eax
 9e9:	8b 80 98 00 00 00    	mov    0x98(%eax),%eax
 9ef:	8d 50 01             	lea    0x1(%eax),%edx
 9f2:	8b 45 08             	mov    0x8(%ebp),%eax
 9f5:	89 90 98 00 00 00    	mov    %edx,0x98(%eax)
 9fb:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 9fe:	0f be c0             	movsbl %al,%eax
 a01:	89 44 24 04          	mov    %eax,0x4(%esp)
 a05:	8b 45 08             	mov    0x8(%ebp),%eax
 a08:	89 04 24             	mov    %eax,(%esp)
 a0b:	e8 fc ff ff ff       	call   a0c <in_process+0x404>
 a10:	eb 68                	jmp    a7a <in_process+0x472>
 a12:	81 7d fc 01 00 00 80 	cmpl   $0x80000001,0xfffffffc(%ebp)
 a19:	75 5f                	jne    a7a <in_process+0x472>
 a1b:	8b 45 08             	mov    0x8(%ebp),%eax
 a1e:	8b 80 98 00 00 00    	mov    0x98(%eax),%eax
 a24:	85 c0                	test   %eax,%eax
 a26:	74 52                	je     a7a <in_process+0x472>
 a28:	8b 45 08             	mov    0x8(%ebp),%eax
 a2b:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
 a31:	8d 50 01             	lea    0x1(%eax),%edx
 a34:	8b 45 08             	mov    0x8(%ebp),%eax
 a37:	89 90 94 00 00 00    	mov    %edx,0x94(%eax)
 a3d:	8b 45 08             	mov    0x8(%ebp),%eax
 a40:	8b 80 98 00 00 00    	mov    0x98(%eax),%eax
 a46:	8d 50 ff             	lea    0xffffffff(%eax),%edx
 a49:	8b 45 08             	mov    0x8(%ebp),%eax
 a4c:	89 90 98 00 00 00    	mov    %edx,0x98(%eax)
 a52:	8b 45 08             	mov    0x8(%ebp),%eax
 a55:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
 a5b:	8d 50 ff             	lea    0xffffffff(%eax),%edx
 a5e:	8b 45 08             	mov    0x8(%ebp),%eax
 a61:	89 90 90 00 00 00    	mov    %edx,0x90(%eax)
 a67:	c7 44 24 04 08 00 00 	movl   $0x8,0x4(%esp)
 a6e:	00 
 a6f:	8b 45 08             	mov    0x8(%ebp),%eax
 a72:	89 04 24             	mov    %eax,(%esp)
 a75:	e8 fc ff ff ff       	call   a76 <in_process+0x46e>
 a7a:	81 7d fc 03 00 00 80 	cmpl   $0x80000003,0xfffffffc(%ebp)
 a81:	74 11                	je     a94 <in_process+0x48c>
 a83:	8b 45 08             	mov    0x8(%ebp),%eax
 a86:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
 a8c:	85 c0                	test   %eax,%eax
 a8e:	0f 85 57 01 00 00    	jne    beb <in_process+0x5e3>
 a94:	81 7d fc 03 00 00 80 	cmpl   $0x80000003,0xfffffffc(%ebp)
 a9b:	75 0d                	jne    aaa <in_process+0x4a2>
 a9d:	8b 45 08             	mov    0x8(%ebp),%eax
 aa0:	c7 80 94 00 00 00 00 	movl   $0x0,0x94(%eax)
 aa7:	00 00 00 
 aaa:	8b 45 08             	mov    0x8(%ebp),%eax
 aad:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
 ab3:	c6 00 00             	movb   $0x0,(%eax)
 ab6:	c7 44 24 04 0a 00 00 	movl   $0xa,0x4(%esp)
 abd:	00 
 abe:	8b 45 08             	mov    0x8(%ebp),%eax
 ac1:	89 04 24             	mov    %eax,(%esp)
 ac4:	e8 fc ff ff ff       	call   ac5 <in_process+0x4bd>
 ac9:	c7 44 24 04 23 00 00 	movl   $0x23,0x4(%esp)
 ad0:	00 
 ad1:	8b 45 08             	mov    0x8(%ebp),%eax
 ad4:	89 04 24             	mov    %eax,(%esp)
 ad7:	e8 fc ff ff ff       	call   ad8 <in_process+0x4d0>
 adc:	c7 44 24 04 3e 00 00 	movl   $0x3e,0x4(%esp)
 ae3:	00 
 ae4:	8b 45 08             	mov    0x8(%ebp),%eax
 ae7:	89 04 24             	mov    %eax,(%esp)
 aea:	e8 fc ff ff ff       	call   aeb <in_process+0x4e3>
 aef:	c7 45 dc fd ff ff ff 	movl   $0xfffffffd,0xffffffdc(%ebp)
 af6:	c7 45 e0 05 00 00 00 	movl   $0x5,0xffffffe0(%ebp)
 afd:	8b 45 08             	mov    0x8(%ebp),%eax
 b00:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
 b06:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
 b09:	8b 45 08             	mov    0x8(%ebp),%eax
 b0c:	8b 80 98 00 00 00    	mov    0x98(%eax),%eax
 b12:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
 b15:	8b 45 08             	mov    0x8(%ebp),%eax
 b18:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
 b1e:	89 c2                	mov    %eax,%edx
 b20:	8d 45 d4             	lea    0xffffffd4(%ebp),%eax
 b23:	89 44 24 08          	mov    %eax,0x8(%esp)
 b27:	89 54 24 04          	mov    %edx,0x4(%esp)
 b2b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 b32:	e8 fc ff ff ff       	call   b33 <in_process+0x52b>
 b37:	85 c0                	test   %eax,%eax
 b39:	0f 84 ac 00 00 00    	je     beb <in_process+0x5e3>
 b3f:	e8 fc ff ff ff       	call   b40 <in_process+0x538>
 b44:	a1 00 00 00 00       	mov    0x0,%eax
 b49:	85 c0                	test   %eax,%eax
 b4b:	74 24                	je     b71 <in_process+0x569>
 b4d:	c7 44 24 0c af 01 00 	movl   $0x1af,0xc(%esp)
 b54:	00 
 b55:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 b5c:	00 
 b5d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 b64:	00 
 b65:	c7 04 24 35 01 00 00 	movl   $0x135,(%esp)
 b6c:	e8 fc ff ff ff       	call   b6d <in_process+0x565>
 b71:	c7 05 00 00 00 00 01 	movl   $0x1,0x0
 b78:	00 00 00 
 b7b:	a1 00 00 00 00       	mov    0x0,%eax
 b80:	83 c0 01             	add    $0x1,%eax
 b83:	a3 00 00 00 00       	mov    %eax,0x0
 b88:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 b8b:	a3 00 00 00 00       	mov    %eax,0x0
 b90:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
 b93:	a3 04 00 00 00       	mov    %eax,0x4
 b98:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
 b9b:	a3 08 00 00 00       	mov    %eax,0x8
 ba0:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
 ba3:	a3 0c 00 00 00       	mov    %eax,0xc
 ba8:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
 bab:	a3 10 00 00 00       	mov    %eax,0x10
 bb0:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
 bb3:	a3 14 00 00 00       	mov    %eax,0x14
 bb8:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 bbb:	a3 18 00 00 00       	mov    %eax,0x18
 bc0:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 bc3:	a3 1c 00 00 00       	mov    %eax,0x1c
 bc8:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
 bcb:	a3 20 00 00 00       	mov    %eax,0x20
 bd0:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 bd3:	a3 24 00 00 00       	mov    %eax,0x24
 bd8:	8b 45 08             	mov    0x8(%ebp),%eax
 bdb:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
 be1:	a3 04 00 00 00       	mov    %eax,0x4
 be6:	e8 fc ff ff ff       	call   be7 <in_process+0x5df>
 beb:	c9                   	leave  
 bec:	c3                   	ret    

00000bed <tty_do_read>:
 bed:	55                   	push   %ebp
 bee:	89 e5                	mov    %esp,%ebp
 bf0:	83 ec 28             	sub    $0x28,%esp
 bf3:	8b 45 08             	mov    0x8(%ebp),%eax
 bf6:	8b 40 04             	mov    0x4(%eax),%eax
 bf9:	69 c0 9c 00 00 00    	imul   $0x9c,%eax,%eax
 bff:	05 00 00 00 00       	add    $0x0,%eax
 c04:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 c07:	e8 fc ff ff ff       	call   c08 <tty_do_read+0x1b>
 c0c:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 c0f:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
 c15:	85 c0                	test   %eax,%eax
 c17:	75 0a                	jne    c23 <tty_do_read+0x36>
 c19:	8b 45 08             	mov    0x8(%ebp),%eax
 c1c:	8b 40 14             	mov    0x14(%eax),%eax
 c1f:	85 c0                	test   %eax,%eax
 c21:	75 11                	jne    c34 <tty_do_read+0x47>
 c23:	e8 fc ff ff ff       	call   c24 <tty_do_read+0x37>
 c28:	c7 45 ec ff ff ff ff 	movl   $0xffffffff,0xffffffec(%ebp)
 c2f:	e9 b7 00 00 00       	jmp    ceb <tty_do_read+0xfe>
 c34:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 c37:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
 c3d:	85 c0                	test   %eax,%eax
 c3f:	74 24                	je     c65 <tty_do_read+0x78>
 c41:	c7 44 24 0c cd 01 00 	movl   $0x1cd,0xc(%esp)
 c48:	00 
 c49:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 c50:	00 
 c51:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 c58:	00 
 c59:	c7 04 24 08 02 00 00 	movl   $0x208,(%esp)
 c60:	e8 fc ff ff ff       	call   c61 <tty_do_read+0x74>
 c65:	8b 45 08             	mov    0x8(%ebp),%eax
 c68:	8b 50 08             	mov    0x8(%eax),%edx
 c6b:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 c6e:	89 90 88 00 00 00    	mov    %edx,0x88(%eax)
 c74:	8b 45 08             	mov    0x8(%ebp),%eax
 c77:	8b 50 0c             	mov    0xc(%eax),%edx
 c7a:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 c7d:	89 90 8c 00 00 00    	mov    %edx,0x8c(%eax)
 c83:	8b 45 08             	mov    0x8(%ebp),%eax
 c86:	8b 50 10             	mov    0x10(%eax),%edx
 c89:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 c8c:	89 90 90 00 00 00    	mov    %edx,0x90(%eax)
 c92:	8b 45 08             	mov    0x8(%ebp),%eax
 c95:	8b 50 14             	mov    0x14(%eax),%edx
 c98:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 c9b:	89 90 94 00 00 00    	mov    %edx,0x94(%eax)
 ca1:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 ca4:	c7 80 98 00 00 00 00 	movl   $0x0,0x98(%eax)
 cab:	00 00 00 
 cae:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 cb1:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
 cb7:	85 c0                	test   %eax,%eax
 cb9:	75 24                	jne    cdf <tty_do_read+0xf2>
 cbb:	c7 44 24 0c d5 01 00 	movl   $0x1d5,0xc(%esp)
 cc2:	00 
 cc3:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 cca:	00 
 ccb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 cd2:	00 
 cd3:	c7 04 24 1e 02 00 00 	movl   $0x21e,(%esp)
 cda:	e8 fc ff ff ff       	call   cdb <tty_do_read+0xee>
 cdf:	e8 fc ff ff ff       	call   ce0 <tty_do_read+0xf3>
 ce4:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
 ceb:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 cee:	c9                   	leave  
 cef:	c3                   	ret    

00000cf0 <tty_do_write>:
 cf0:	55                   	push   %ebp
 cf1:	89 e5                	mov    %esp,%ebp
 cf3:	53                   	push   %ebx
 cf4:	83 ec 24             	sub    $0x24,%esp
 cf7:	8b 45 08             	mov    0x8(%ebp),%eax
 cfa:	8b 40 14             	mov    0x14(%eax),%eax
 cfd:	85 c0                	test   %eax,%eax
 cff:	74 3c                	je     d3d <tty_do_write+0x4d>
 d01:	8b 45 08             	mov    0x8(%ebp),%eax
 d04:	8b 58 14             	mov    0x14(%eax),%ebx
 d07:	8b 45 08             	mov    0x8(%ebp),%eax
 d0a:	8b 40 10             	mov    0x10(%eax),%eax
 d0d:	89 04 24             	mov    %eax,(%esp)
 d10:	e8 fc ff ff ff       	call   d11 <tty_do_write+0x21>
 d15:	39 c3                	cmp    %eax,%ebx
 d17:	73 0b                	jae    d24 <tty_do_write+0x34>
 d19:	8b 45 08             	mov    0x8(%ebp),%eax
 d1c:	8b 40 14             	mov    0x14(%eax),%eax
 d1f:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
 d22:	eb 11                	jmp    d35 <tty_do_write+0x45>
 d24:	8b 45 08             	mov    0x8(%ebp),%eax
 d27:	8b 40 10             	mov    0x10(%eax),%eax
 d2a:	89 04 24             	mov    %eax,(%esp)
 d2d:	e8 fc ff ff ff       	call   d2e <tty_do_write+0x3e>
 d32:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
 d35:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
 d38:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
 d3b:	eb 11                	jmp    d4e <tty_do_write+0x5e>
 d3d:	8b 45 08             	mov    0x8(%ebp),%eax
 d40:	8b 40 10             	mov    0x10(%eax),%eax
 d43:	89 04 24             	mov    %eax,(%esp)
 d46:	e8 fc ff ff ff       	call   d47 <tty_do_write+0x57>
 d4b:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
 d4e:	8b 45 08             	mov    0x8(%ebp),%eax
 d51:	8b 50 10             	mov    0x10(%eax),%edx
 d54:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 d57:	8d 04 02             	lea    (%edx,%eax,1),%eax
 d5a:	c6 00 00             	movb   $0x0,(%eax)
 d5d:	8b 45 08             	mov    0x8(%ebp),%eax
 d60:	8b 40 04             	mov    0x4(%eax),%eax
 d63:	69 c0 9c 00 00 00    	imul   $0x9c,%eax,%eax
 d69:	05 00 00 00 00       	add    $0x0,%eax
 d6e:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
 d71:	eb 24                	jmp    d97 <tty_do_write+0xa7>
 d73:	8b 45 08             	mov    0x8(%ebp),%eax
 d76:	8b 50 10             	mov    0x10(%eax),%edx
 d79:	0f b6 02             	movzbl (%edx),%eax
 d7c:	0f be c8             	movsbl %al,%ecx
 d7f:	83 c2 01             	add    $0x1,%edx
 d82:	8b 45 08             	mov    0x8(%ebp),%eax
 d85:	89 50 10             	mov    %edx,0x10(%eax)
 d88:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 d8c:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
 d8f:	89 04 24             	mov    %eax,(%esp)
 d92:	e8 fc ff ff ff       	call   d93 <tty_do_write+0xa3>
 d97:	8b 45 08             	mov    0x8(%ebp),%eax
 d9a:	8b 40 10             	mov    0x10(%eax),%eax
 d9d:	0f b6 00             	movzbl (%eax),%eax
 da0:	84 c0                	test   %al,%al
 da2:	75 cf                	jne    d73 <tty_do_write+0x83>
 da4:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
 da7:	8b 45 08             	mov    0x8(%ebp),%eax
 daa:	89 50 14             	mov    %edx,0x14(%eax)
 dad:	83 c4 24             	add    $0x24,%esp
 db0:	5b                   	pop    %ebx
 db1:	5d                   	pop    %ebp
 db2:	c3                   	ret    
