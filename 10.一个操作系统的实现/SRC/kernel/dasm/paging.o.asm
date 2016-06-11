
paging.o:     file format elf32-i386

Disassembly of section .text:

00000000 <init_mm_page>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	c7 45 fc 00 00 60 00 	movl   $0x600000,0xfffffffc(%ebp)
   d:	c7 45 f8 00 00 00 00 	movl   $0x0,0xfffffff8(%ebp)
  14:	eb 35                	jmp    4b <init_mm_page+0x4b>
  16:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
  19:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
  1c:	89 10                	mov    %edx,(%eax)
  1e:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
  21:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  28:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
  2b:	83 ea 10             	sub    $0x10,%edx
  2e:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
  31:	89 50 08             	mov    %edx,0x8(%eax)
  34:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
  37:	83 c2 10             	add    $0x10,%edx
  3a:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
  3d:	89 50 0c             	mov    %edx,0xc(%eax)
  40:	81 45 fc 00 10 00 00 	addl   $0x1000,0xfffffffc(%ebp)
  47:	83 45 f8 10          	addl   $0x10,0xfffffff8(%ebp)
  4b:	b8 00 90 01 00       	mov    $0x19000,%eax
  50:	39 45 f8             	cmp    %eax,0xfffffff8(%ebp)
  53:	72 c1                	jb     16 <init_mm_page+0x16>
  55:	c7 05 08 00 00 00 00 	movl   $0x0,0x8
  5c:	00 00 00 
  5f:	b8 f0 8f 01 00       	mov    $0x18ff0,%eax
  64:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
  6b:	b8 00 90 01 00       	mov    $0x19000,%eax
  70:	39 45 f8             	cmp    %eax,0xfffffff8(%ebp)
  73:	74 24                	je     99 <init_mm_page+0x99>
  75:	c7 44 24 0c 18 00 00 	movl   $0x18,0xc(%esp)
  7c:	00 
  7d:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  84:	00 
  85:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  8c:	00 
  8d:	c7 04 24 09 00 00 00 	movl   $0x9,(%esp)
  94:	e8 fc ff ff ff       	call   95 <init_mm_page+0x95>
  99:	81 7d fc 00 00 f0 01 	cmpl   $0x1f00000,0xfffffffc(%ebp)
  a0:	74 24                	je     c6 <init_mm_page+0xc6>
  a2:	c7 44 24 0c 19 00 00 	movl   $0x19,0xc(%esp)
  a9:	00 
  aa:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  b1:	00 
  b2:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  b9:	00 
  ba:	c7 04 24 24 00 00 00 	movl   $0x24,(%esp)
  c1:	e8 fc ff ff ff       	call   c2 <init_mm_page+0xc2>
  c6:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
  cd:	00 00 00 
  d0:	b8 f0 8f 01 00       	mov    $0x18ff0,%eax
  d5:	a3 00 00 00 00       	mov    %eax,0x0
  da:	c9                   	leave  
  db:	c3                   	ret    

000000dc <get_page>:
  dc:	55                   	push   %ebp
  dd:	89 e5                	mov    %esp,%ebp
  df:	83 ec 28             	sub    $0x28,%esp
  e2:	e8 fc ff ff ff       	call   e3 <get_page+0x7>
  e7:	a1 00 00 00 00       	mov    0x0,%eax
  ec:	85 c0                	test   %eax,%eax
  ee:	75 3e                	jne    12e <get_page+0x52>
  f0:	c7 04 24 3c 00 00 00 	movl   $0x3c,(%esp)
  f7:	e8 fc ff ff ff       	call   f8 <get_page+0x1c>
  fc:	c7 44 24 0c 2f 00 00 	movl   $0x2f,0xc(%esp)
 103:	00 
 104:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 10b:	00 
 10c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 113:	00 
 114:	c7 04 24 4b 00 00 00 	movl   $0x4b,(%esp)
 11b:	e8 fc ff ff ff       	call   11c <get_page+0x40>
 120:	e8 fc ff ff ff       	call   121 <get_page+0x45>
 125:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
 12c:	eb 79                	jmp    1a7 <get_page+0xcb>
 12e:	a1 00 00 00 00       	mov    0x0,%eax
 133:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 136:	a1 00 00 00 00       	mov    0x0,%eax
 13b:	8b 40 0c             	mov    0xc(%eax),%eax
 13e:	a3 00 00 00 00       	mov    %eax,0x0
 143:	a1 00 00 00 00       	mov    0x0,%eax
 148:	85 c0                	test   %eax,%eax
 14a:	75 0c                	jne    158 <get_page+0x7c>
 14c:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
 153:	00 00 00 
 156:	eb 0c                	jmp    164 <get_page+0x88>
 158:	a1 00 00 00 00       	mov    0x0,%eax
 15d:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 164:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 167:	8b 40 04             	mov    0x4(%eax),%eax
 16a:	85 c0                	test   %eax,%eax
 16c:	74 24                	je     192 <get_page+0xb6>
 16e:	c7 44 24 0c 40 00 00 	movl   $0x40,0xc(%esp)
 175:	00 
 176:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 17d:	00 
 17e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 185:	00 
 186:	c7 04 24 4d 00 00 00 	movl   $0x4d,(%esp)
 18d:	e8 fc ff ff ff       	call   18e <get_page+0xb2>
 192:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 195:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
 19c:	e8 fc ff ff ff       	call   19d <get_page+0xc1>
 1a1:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 1a4:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
 1a7:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 1aa:	c9                   	leave  
 1ab:	c3                   	ret    

000001ac <put_page>:
 1ac:	55                   	push   %ebp
 1ad:	89 e5                	mov    %esp,%ebp
 1af:	83 ec 18             	sub    $0x18,%esp
 1b2:	8b 45 08             	mov    0x8(%ebp),%eax
 1b5:	8b 40 04             	mov    0x4(%eax),%eax
 1b8:	85 c0                	test   %eax,%eax
 1ba:	74 0c                	je     1c8 <put_page+0x1c>
 1bc:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,0xfffffffc(%ebp)
 1c3:	e9 9f 00 00 00       	jmp    267 <put_page+0xbb>
 1c8:	8b 45 08             	mov    0x8(%ebp),%eax
 1cb:	8b 40 04             	mov    0x4(%eax),%eax
 1ce:	85 c0                	test   %eax,%eax
 1d0:	74 24                	je     1f6 <put_page+0x4a>
 1d2:	c7 44 24 0c 50 00 00 	movl   $0x50,0xc(%esp)
 1d9:	00 
 1da:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 1e1:	00 
 1e2:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 1e9:	00 
 1ea:	c7 04 24 4d 00 00 00 	movl   $0x4d,(%esp)
 1f1:	e8 fc ff ff ff       	call   1f2 <put_page+0x46>
 1f6:	8b 15 00 00 00 00    	mov    0x0,%edx
 1fc:	8b 45 08             	mov    0x8(%ebp),%eax
 1ff:	89 50 08             	mov    %edx,0x8(%eax)
 202:	8b 45 08             	mov    0x8(%ebp),%eax
 205:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
 20c:	a1 00 00 00 00       	mov    0x0,%eax
 211:	85 c0                	test   %eax,%eax
 213:	75 37                	jne    24c <put_page+0xa0>
 215:	a1 00 00 00 00       	mov    0x0,%eax
 21a:	85 c0                	test   %eax,%eax
 21c:	74 24                	je     242 <put_page+0x96>
 21e:	c7 44 24 0c 56 00 00 	movl   $0x56,0xc(%esp)
 225:	00 
 226:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 22d:	00 
 22e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 235:	00 
 236:	c7 04 24 5e 00 00 00 	movl   $0x5e,(%esp)
 23d:	e8 fc ff ff ff       	call   23e <put_page+0x92>
 242:	8b 45 08             	mov    0x8(%ebp),%eax
 245:	a3 00 00 00 00       	mov    %eax,0x0
 24a:	eb 0c                	jmp    258 <put_page+0xac>
 24c:	8b 15 00 00 00 00    	mov    0x0,%edx
 252:	8b 45 08             	mov    0x8(%ebp),%eax
 255:	89 42 0c             	mov    %eax,0xc(%edx)
 258:	8b 45 08             	mov    0x8(%ebp),%eax
 25b:	a3 00 00 00 00       	mov    %eax,0x0
 260:	c7 45 fc 00 00 00 00 	movl   $0x0,0xfffffffc(%ebp)
 267:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 26a:	c9                   	leave  
 26b:	c3                   	ret    

0000026c <nopage_fault>:
 26c:	55                   	push   %ebp
 26d:	89 e5                	mov    %esp,%ebp
 26f:	83 ec 38             	sub    $0x38,%esp
 272:	a1 00 00 00 00       	mov    0x0,%eax
 277:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
 27a:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 27d:	8b 40 48             	mov    0x48(%eax),%eax
 280:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
 283:	e8 fc ff ff ff       	call   284 <nopage_fault+0x18>
 288:	25 00 f0 ff ff       	and    $0xfffff000,%eax
 28d:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
 290:	e8 fc ff ff ff       	call   291 <nopage_fault+0x25>
 295:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
 298:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 29b:	05 00 01 00 00       	add    $0x100,%eax
 2a0:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 2a3:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
 2a6:	89 44 24 08          	mov    %eax,0x8(%esp)
 2aa:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 2ad:	89 44 24 04          	mov    %eax,0x4(%esp)
 2b1:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 2b4:	89 04 24             	mov    %eax,(%esp)
 2b7:	e8 fc ff ff ff       	call   2b8 <nopage_fault+0x4c>
 2bc:	c7 44 24 0c 07 00 00 	movl   $0x7,0xc(%esp)
 2c3:	00 
 2c4:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 2c7:	89 44 24 08          	mov    %eax,0x8(%esp)
 2cb:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
 2ce:	89 44 24 04          	mov    %eax,0x4(%esp)
 2d2:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 2d5:	89 04 24             	mov    %eax,(%esp)
 2d8:	e8 fc ff ff ff       	call   2d9 <nopage_fault+0x6d>
 2dd:	c9                   	leave  
 2de:	c3                   	ret    

000002df <write_fault>:
 2df:	55                   	push   %ebp
 2e0:	89 e5                	mov    %esp,%ebp
 2e2:	57                   	push   %edi
 2e3:	56                   	push   %esi
 2e4:	83 ec 30             	sub    $0x30,%esp
 2e7:	a1 00 00 00 00       	mov    0x0,%eax
 2ec:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
 2ef:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
 2f2:	8b 40 48             	mov    0x48(%eax),%eax
 2f5:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
 2f8:	e8 fc ff ff ff       	call   2f9 <write_fault+0x1a>
 2fd:	25 00 f0 ff ff       	and    $0xfffff000,%eax
 302:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
 305:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
 308:	8b 50 48             	mov    0x48(%eax),%edx
 30b:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 30e:	89 44 24 04          	mov    %eax,0x4(%esp)
 312:	89 14 24             	mov    %edx,(%esp)
 315:	e8 fc ff ff ff       	call   316 <write_fault+0x37>
 31a:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
 31d:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 320:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
 323:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 326:	3d ff ff 5f 00       	cmp    $0x5fffff,%eax
 32b:	76 1a                	jbe    347 <write_fault+0x68>
 32d:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 330:	3d ff ff ef 01       	cmp    $0x1efffff,%eax
 335:	77 10                	ja     347 <write_fault+0x68>
 337:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 33a:	89 04 24             	mov    %eax,(%esp)
 33d:	e8 fc ff ff ff       	call   33e <write_fault+0x5f>
 342:	83 f8 01             	cmp    $0x1,%eax
 345:	7e 34                	jle    37b <write_fault+0x9c>
 347:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 34a:	3d ff ff 5f 00       	cmp    $0x5fffff,%eax
 34f:	76 15                	jbe    366 <write_fault+0x87>
 351:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 354:	3d ff ff ef 01       	cmp    $0x1efffff,%eax
 359:	77 0b                	ja     366 <write_fault+0x87>
 35b:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 35e:	89 04 24             	mov    %eax,(%esp)
 361:	e8 fc ff ff ff       	call   362 <write_fault+0x83>
 366:	e8 fc ff ff ff       	call   367 <write_fault+0x88>
 36b:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
 36e:	8b 7d f4             	mov    0xfffffff4(%ebp),%edi
 371:	8b 75 f0             	mov    0xfffffff0(%ebp),%esi
 374:	b9 00 10 00 00       	mov    $0x1000,%ecx
 379:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 37b:	c7 44 24 0c 07 00 00 	movl   $0x7,0xc(%esp)
 382:	00 
 383:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
 386:	89 44 24 08          	mov    %eax,0x8(%esp)
 38a:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 38d:	89 44 24 04          	mov    %eax,0x4(%esp)
 391:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
 394:	89 04 24             	mov    %eax,(%esp)
 397:	e8 fc ff ff ff       	call   398 <write_fault+0xb9>
 39c:	83 c4 30             	add    $0x30,%esp
 39f:	5e                   	pop    %esi
 3a0:	5f                   	pop    %edi
 3a1:	5d                   	pop    %ebp
 3a2:	c3                   	ret    

000003a3 <alloc_a_page>:
 3a3:	55                   	push   %ebp
 3a4:	89 e5                	mov    %esp,%ebp
 3a6:	83 ec 08             	sub    $0x8,%esp
 3a9:	e8 fc ff ff ff       	call   3aa <alloc_a_page+0x7>
 3ae:	8b 00                	mov    (%eax),%eax
 3b0:	c9                   	leave  
 3b1:	c3                   	ret    

000003b2 <UnShare>:
 3b2:	55                   	push   %ebp
 3b3:	89 e5                	mov    %esp,%ebp
 3b5:	83 ec 28             	sub    $0x28,%esp
 3b8:	e8 fc ff ff ff       	call   3b9 <UnShare+0x7>
 3bd:	8b 45 08             	mov    0x8(%ebp),%eax
 3c0:	3d ff ff 5f 00       	cmp    $0x5fffff,%eax
 3c5:	76 0a                	jbe    3d1 <UnShare+0x1f>
 3c7:	8b 45 08             	mov    0x8(%ebp),%eax
 3ca:	3d ff ff ef 01       	cmp    $0x1efffff,%eax
 3cf:	76 24                	jbe    3f5 <UnShare+0x43>
 3d1:	c7 44 24 0c c0 00 00 	movl   $0xc0,0xc(%esp)
 3d8:	00 
 3d9:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 3e0:	00 
 3e1:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 3e8:	00 
 3e9:	c7 04 24 74 00 00 00 	movl   $0x74,(%esp)
 3f0:	e8 fc ff ff ff       	call   3f1 <UnShare+0x3f>
 3f5:	8b 45 08             	mov    0x8(%ebp),%eax
 3f8:	2d 00 00 60 00       	sub    $0x600000,%eax
 3fd:	c1 e8 0c             	shr    $0xc,%eax
 400:	c1 e0 04             	shl    $0x4,%eax
 403:	05 00 00 00 00       	add    $0x0,%eax
 408:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 40b:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 40e:	8b 40 04             	mov    0x4(%eax),%eax
 411:	8d 50 ff             	lea    0xffffffff(%eax),%edx
 414:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 417:	89 50 04             	mov    %edx,0x4(%eax)
 41a:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 41d:	8b 40 04             	mov    0x4(%eax),%eax
 420:	85 c0                	test   %eax,%eax
 422:	75 0b                	jne    42f <UnShare+0x7d>
 424:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 427:	89 04 24             	mov    %eax,(%esp)
 42a:	e8 fc ff ff ff       	call   42b <UnShare+0x79>
 42f:	e8 fc ff ff ff       	call   430 <UnShare+0x7e>
 434:	c9                   	leave  
 435:	c3                   	ret    

00000436 <IsShared>:
 436:	55                   	push   %ebp
 437:	89 e5                	mov    %esp,%ebp
 439:	83 ec 28             	sub    $0x28,%esp
 43c:	e8 fc ff ff ff       	call   43d <IsShared+0x7>
 441:	8b 45 08             	mov    0x8(%ebp),%eax
 444:	3d ff ff 5f 00       	cmp    $0x5fffff,%eax
 449:	76 0a                	jbe    455 <IsShared+0x1f>
 44b:	8b 45 08             	mov    0x8(%ebp),%eax
 44e:	3d ff ff ef 01       	cmp    $0x1efffff,%eax
 453:	76 24                	jbe    479 <IsShared+0x43>
 455:	c7 44 24 0c d0 00 00 	movl   $0xd0,0xc(%esp)
 45c:	00 
 45d:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 464:	00 
 465:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 46c:	00 
 46d:	c7 04 24 74 00 00 00 	movl   $0x74,(%esp)
 474:	e8 fc ff ff ff       	call   475 <IsShared+0x3f>
 479:	8b 45 08             	mov    0x8(%ebp),%eax
 47c:	2d 00 00 60 00       	sub    $0x600000,%eax
 481:	c1 e8 0c             	shr    $0xc,%eax
 484:	c1 e0 04             	shl    $0x4,%eax
 487:	05 00 00 00 00       	add    $0x0,%eax
 48c:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 48f:	e8 fc ff ff ff       	call   490 <IsShared+0x5a>
 494:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 497:	8b 40 04             	mov    0x4(%eax),%eax
 49a:	c9                   	leave  
 49b:	c3                   	ret    

0000049c <Share>:
 49c:	55                   	push   %ebp
 49d:	89 e5                	mov    %esp,%ebp
 49f:	83 ec 28             	sub    $0x28,%esp
 4a2:	e8 fc ff ff ff       	call   4a3 <Share+0x7>
 4a7:	8b 45 08             	mov    0x8(%ebp),%eax
 4aa:	3d ff ff 5f 00       	cmp    $0x5fffff,%eax
 4af:	76 0a                	jbe    4bb <Share+0x1f>
 4b1:	8b 45 08             	mov    0x8(%ebp),%eax
 4b4:	3d ff ff ef 01       	cmp    $0x1efffff,%eax
 4b9:	76 24                	jbe    4df <Share+0x43>
 4bb:	c7 44 24 0c de 00 00 	movl   $0xde,0xc(%esp)
 4c2:	00 
 4c3:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 4ca:	00 
 4cb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 4d2:	00 
 4d3:	c7 04 24 74 00 00 00 	movl   $0x74,(%esp)
 4da:	e8 fc ff ff ff       	call   4db <Share+0x3f>
 4df:	8b 45 08             	mov    0x8(%ebp),%eax
 4e2:	2d 00 00 60 00       	sub    $0x600000,%eax
 4e7:	c1 e8 0c             	shr    $0xc,%eax
 4ea:	c1 e0 04             	shl    $0x4,%eax
 4ed:	05 00 00 00 00       	add    $0x0,%eax
 4f2:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 4f5:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 4f8:	8b 40 04             	mov    0x4(%eax),%eax
 4fb:	85 c0                	test   %eax,%eax
 4fd:	7f 24                	jg     523 <Share+0x87>
 4ff:	c7 44 24 0c e0 00 00 	movl   $0xe0,0xc(%esp)
 506:	00 
 507:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 50e:	00 
 50f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 516:	00 
 517:	c7 04 24 a1 00 00 00 	movl   $0xa1,(%esp)
 51e:	e8 fc ff ff ff       	call   51f <Share+0x83>
 523:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 526:	8b 40 04             	mov    0x4(%eax),%eax
 529:	8d 50 01             	lea    0x1(%eax),%edx
 52c:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 52f:	89 50 04             	mov    %edx,0x4(%eax)
 532:	e8 fc ff ff ff       	call   533 <Share+0x97>
 537:	c9                   	leave  
 538:	c3                   	ret    

00000539 <map_a_page>:
 539:	55                   	push   %ebp
 53a:	89 e5                	mov    %esp,%ebp
 53c:	83 ec 10             	sub    $0x10,%esp
 53f:	8b 45 0c             	mov    0xc(%ebp),%eax
 542:	c1 e8 16             	shr    $0x16,%eax
 545:	25 ff 03 00 00       	and    $0x3ff,%eax
 54a:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
 54d:	8b 45 0c             	mov    0xc(%ebp),%eax
 550:	c1 e8 0c             	shr    $0xc,%eax
 553:	25 ff 03 00 00       	and    $0x3ff,%eax
 558:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
 55b:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
 55e:	c1 e0 02             	shl    $0x2,%eax
 561:	03 45 08             	add    0x8(%ebp),%eax
 564:	8b 00                	mov    (%eax),%eax
 566:	25 00 f0 ff ff       	and    $0xfffff000,%eax
 56b:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 56e:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 571:	c1 e0 02             	shl    $0x2,%eax
 574:	89 c1                	mov    %eax,%ecx
 576:	03 4d fc             	add    0xfffffffc(%ebp),%ecx
 579:	8b 45 10             	mov    0x10(%ebp),%eax
 57c:	89 c2                	mov    %eax,%edx
 57e:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
 584:	8b 45 14             	mov    0x14(%ebp),%eax
 587:	25 ff 0f 00 00       	and    $0xfff,%eax
 58c:	09 d0                	or     %edx,%eax
 58e:	89 01                	mov    %eax,(%ecx)
 590:	c9                   	leave  
 591:	c3                   	ret    

00000592 <IsWriteLock>:
 592:	55                   	push   %ebp
 593:	89 e5                	mov    %esp,%ebp
 595:	b8 00 00 00 00       	mov    $0x0,%eax
 59a:	5d                   	pop    %ebp
 59b:	c3                   	ret    

0000059c <IsPresent>:
 59c:	55                   	push   %ebp
 59d:	89 e5                	mov    %esp,%ebp
 59f:	b8 00 00 00 00       	mov    $0x0,%eax
 5a4:	5d                   	pop    %ebp
 5a5:	c3                   	ret    
