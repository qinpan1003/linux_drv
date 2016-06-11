
ipc.o:     file format elf32-i386

Disassembly of section .text:

00000000 <deadlock>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	8b 55 08             	mov    0x8(%ebp),%edx
   9:	89 d0                	mov    %edx,%eax
   b:	c1 e0 03             	shl    $0x3,%eax
   e:	01 d0                	add    %edx,%eax
  10:	c1 e0 05             	shl    $0x5,%eax
  13:	05 00 00 00 00       	add    $0x0,%eax
  18:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
  1b:	8b 55 0c             	mov    0xc(%ebp),%edx
  1e:	89 d0                	mov    %edx,%eax
  20:	c1 e0 03             	shl    $0x3,%eax
  23:	01 d0                	add    %edx,%eax
  25:	c1 e0 05             	shl    $0x5,%eax
  28:	05 00 00 00 00       	add    $0x0,%eax
  2d:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
  30:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
  33:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
  36:	e8 fc ff ff ff       	call   37 <deadlock+0x37>
  3b:	e8 fc ff ff ff       	call   3c <deadlock+0x3c>
  40:	25 00 02 00 00       	and    $0x200,%eax
  45:	85 c0                	test   %eax,%eax
  47:	75 0d                	jne    56 <deadlock+0x56>
  49:	a1 00 00 00 00       	mov    0x0,%eax
  4e:	85 c0                	test   %eax,%eax
  50:	0f 85 f0 00 00 00    	jne    146 <deadlock+0x146>
  56:	c7 44 24 0c 17 00 00 	movl   $0x17,0xc(%esp)
  5d:	00 
  5e:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  65:	00 
  66:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  6d:	00 
  6e:	c7 04 24 06 00 00 00 	movl   $0x6,(%esp)
  75:	e8 fc ff ff ff       	call   76 <deadlock+0x76>
  7a:	e9 c7 00 00 00       	jmp    146 <deadlock+0x146>
  7f:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
  82:	8b 40 64             	mov    0x64(%eax),%eax
  85:	83 f8 ff             	cmp    $0xffffffff,%eax
  88:	0f 84 c7 00 00 00    	je     155 <deadlock+0x155>
  8e:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
  91:	8b 40 64             	mov    0x64(%eax),%eax
  94:	83 f8 fe             	cmp    $0xfffffffe,%eax
  97:	0f 84 b8 00 00 00    	je     155 <deadlock+0x155>
  9d:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
  a0:	8b 40 64             	mov    0x64(%eax),%eax
  a3:	89 c2                	mov    %eax,%edx
  a5:	89 d0                	mov    %edx,%eax
  a7:	c1 e0 03             	shl    $0x3,%eax
  aa:	01 d0                	add    %edx,%eax
  ac:	c1 e0 05             	shl    $0x5,%eax
  af:	05 00 00 00 00       	add    $0x0,%eax
  b4:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
  b7:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
  ba:	3b 45 f8             	cmp    0xfffffff8(%ebp),%eax
  bd:	0f 85 83 00 00 00    	jne    146 <deadlock+0x146>
  c3:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
  c6:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
  c9:	c7 04 24 0d 00 00 00 	movl   $0xd,(%esp)
  d0:	e8 fc ff ff ff       	call   d1 <deadlock+0xd1>
  d5:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
  d8:	8b 40 4c             	mov    0x4c(%eax),%eax
  db:	89 44 24 04          	mov    %eax,0x4(%esp)
  df:	c7 04 24 18 00 00 00 	movl   $0x18,(%esp)
  e6:	e8 fc ff ff ff       	call   e7 <deadlock+0xe7>
  eb:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
  ee:	3b 45 f8             	cmp    0xfffffff8(%ebp),%eax
  f1:	75 37                	jne    12a <deadlock+0x12a>
  f3:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
  fa:	e8 fc ff ff ff       	call   fb <deadlock+0xfb>
  ff:	e8 fc ff ff ff       	call   100 <deadlock+0x100>
 104:	8b 45 0c             	mov    0xc(%ebp),%eax
 107:	89 44 24 08          	mov    %eax,0x8(%esp)
 10b:	8b 45 08             	mov    0x8(%ebp),%eax
 10e:	89 44 24 04          	mov    %eax,0x4(%esp)
 112:	c7 04 24 1f 00 00 00 	movl   $0x1f,(%esp)
 119:	e8 fc ff ff ff       	call   11a <deadlock+0x11a>
 11e:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
 125:	e9 06 01 00 00       	jmp    230 <deadlock+0x230>
 12a:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 12d:	8b 40 64             	mov    0x64(%eax),%eax
 130:	89 c2                	mov    %eax,%edx
 132:	89 d0                	mov    %edx,%eax
 134:	c1 e0 03             	shl    $0x3,%eax
 137:	01 d0                	add    %edx,%eax
 139:	c1 e0 05             	shl    $0x5,%eax
 13c:	05 00 00 00 00       	add    $0x0,%eax
 141:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 144:	eb 8f                	jmp    d5 <deadlock+0xd5>
 146:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 149:	8b 40 54             	mov    0x54(%eax),%eax
 14c:	83 f8 02             	cmp    $0x2,%eax
 14f:	0f 84 2a ff ff ff    	je     7f <deadlock+0x7f>
 155:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 158:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 15b:	e9 a6 00 00 00       	jmp    206 <deadlock+0x206>
 160:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 163:	8b 40 60             	mov    0x60(%eax),%eax
 166:	89 c2                	mov    %eax,%edx
 168:	89 d0                	mov    %edx,%eax
 16a:	c1 e0 03             	shl    $0x3,%eax
 16d:	01 d0                	add    %edx,%eax
 16f:	c1 e0 05             	shl    $0x5,%eax
 172:	05 00 00 00 00       	add    $0x0,%eax
 177:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 17a:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 17d:	3b 45 f4             	cmp    0xfffffff4(%ebp),%eax
 180:	0f 85 80 00 00 00    	jne    206 <deadlock+0x206>
 186:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 189:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 18c:	c7 04 24 0d 00 00 00 	movl   $0xd,(%esp)
 193:	e8 fc ff ff ff       	call   194 <deadlock+0x194>
 198:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 19b:	8b 40 4c             	mov    0x4c(%eax),%eax
 19e:	89 44 24 04          	mov    %eax,0x4(%esp)
 1a2:	c7 04 24 2f 00 00 00 	movl   $0x2f,(%esp)
 1a9:	e8 fc ff ff ff       	call   1aa <deadlock+0x1aa>
 1ae:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 1b1:	3b 45 f4             	cmp    0xfffffff4(%ebp),%eax
 1b4:	75 34                	jne    1ea <deadlock+0x1ea>
 1b6:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
 1bd:	e8 fc ff ff ff       	call   1be <deadlock+0x1be>
 1c2:	e8 fc ff ff ff       	call   1c3 <deadlock+0x1c3>
 1c7:	8b 45 0c             	mov    0xc(%ebp),%eax
 1ca:	89 44 24 08          	mov    %eax,0x8(%esp)
 1ce:	8b 45 08             	mov    0x8(%ebp),%eax
 1d1:	89 44 24 04          	mov    %eax,0x4(%esp)
 1d5:	c7 04 24 1f 00 00 00 	movl   $0x1f,(%esp)
 1dc:	e8 fc ff ff ff       	call   1dd <deadlock+0x1dd>
 1e1:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
 1e8:	eb 46                	jmp    230 <deadlock+0x230>
 1ea:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 1ed:	8b 40 60             	mov    0x60(%eax),%eax
 1f0:	89 c2                	mov    %eax,%edx
 1f2:	89 d0                	mov    %edx,%eax
 1f4:	c1 e0 03             	shl    $0x3,%eax
 1f7:	01 d0                	add    %edx,%eax
 1f9:	c1 e0 05             	shl    $0x5,%eax
 1fc:	05 00 00 00 00       	add    $0x0,%eax
 201:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 204:	eb 92                	jmp    198 <deadlock+0x198>
 206:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 209:	8b 40 54             	mov    0x54(%eax),%eax
 20c:	83 f8 01             	cmp    $0x1,%eax
 20f:	0f 84 4b ff ff ff    	je     160 <deadlock+0x160>
 215:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 218:	8b 40 54             	mov    0x54(%eax),%eax
 21b:	83 f8 03             	cmp    $0x3,%eax
 21e:	0f 84 3c ff ff ff    	je     160 <deadlock+0x160>
 224:	e8 fc ff ff ff       	call   225 <deadlock+0x225>
 229:	c7 45 ec ff ff ff ff 	movl   $0xffffffff,0xffffffec(%ebp)
 230:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 233:	c9                   	leave  
 234:	c3                   	ret    

00000235 <interrupt_wait>:
 235:	55                   	push   %ebp
 236:	89 e5                	mov    %esp,%ebp
 238:	83 ec 48             	sub    $0x48,%esp
 23b:	e8 fc ff ff ff       	call   23c <interrupt_wait+0x7>
 240:	25 00 02 00 00       	and    $0x200,%eax
 245:	85 c0                	test   %eax,%eax
 247:	74 09                	je     252 <interrupt_wait+0x1d>
 249:	a1 00 00 00 00       	mov    0x0,%eax
 24e:	85 c0                	test   %eax,%eax
 250:	74 24                	je     276 <interrupt_wait+0x41>
 252:	c7 44 24 0c 56 00 00 	movl   $0x56,0xc(%esp)
 259:	00 
 25a:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 261:	00 
 262:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 269:	00 
 26a:	c7 04 24 34 00 00 00 	movl   $0x34,(%esp)
 271:	e8 fc ff ff ff       	call   272 <interrupt_wait+0x3d>
 276:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
 279:	89 44 24 08          	mov    %eax,0x8(%esp)
 27d:	c7 44 24 04 fe ff ff 	movl   $0xfffffffe,0x4(%esp)
 284:	ff 
 285:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 28c:	e8 fc ff ff ff       	call   28d <interrupt_wait+0x58>
 291:	c9                   	leave  
 292:	c3                   	ret    

00000293 <sys_send>:
 293:	55                   	push   %ebp
 294:	89 e5                	mov    %esp,%ebp
 296:	57                   	push   %edi
 297:	56                   	push   %esi
 298:	83 ec 30             	sub    $0x30,%esp
 29b:	8b 45 14             	mov    0x14(%ebp),%eax
 29e:	88 45 e4             	mov    %al,0xffffffe4(%ebp)
 2a1:	83 7d 08 fe          	cmpl   $0xfffffffe,0x8(%ebp)
 2a5:	75 0c                	jne    2b3 <sys_send+0x20>
 2a7:	c7 45 e0 00 00 00 00 	movl   $0x0,0xffffffe0(%ebp)
 2ae:	e9 06 03 00 00       	jmp    5b9 <sys_send+0x326>
 2b3:	8b 55 08             	mov    0x8(%ebp),%edx
 2b6:	89 d0                	mov    %edx,%eax
 2b8:	c1 e0 03             	shl    $0x3,%eax
 2bb:	01 d0                	add    %edx,%eax
 2bd:	c1 e0 05             	shl    $0x5,%eax
 2c0:	05 00 00 00 00       	add    $0x0,%eax
 2c5:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
 2c8:	8b 55 0c             	mov    0xc(%ebp),%edx
 2cb:	89 d0                	mov    %edx,%eax
 2cd:	c1 e0 03             	shl    $0x3,%eax
 2d0:	01 d0                	add    %edx,%eax
 2d2:	c1 e0 05             	shl    $0x5,%eax
 2d5:	05 00 00 00 00       	add    $0x0,%eax
 2da:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
 2dd:	e8 fc ff ff ff       	call   2de <sys_send+0x4b>
 2e2:	e8 fc ff ff ff       	call   2e3 <sys_send+0x50>
 2e7:	25 00 02 00 00       	and    $0x200,%eax
 2ec:	85 c0                	test   %eax,%eax
 2ee:	75 09                	jne    2f9 <sys_send+0x66>
 2f0:	a1 00 00 00 00       	mov    0x0,%eax
 2f5:	85 c0                	test   %eax,%eax
 2f7:	75 24                	jne    31d <sys_send+0x8a>
 2f9:	c7 44 24 0c 67 00 00 	movl   $0x67,0xc(%esp)
 300:	00 
 301:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 308:	00 
 309:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 310:	00 
 311:	c7 04 24 06 00 00 00 	movl   $0x6,(%esp)
 318:	e8 fc ff ff ff       	call   319 <sys_send+0x86>
 31d:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 320:	8b 40 54             	mov    0x54(%eax),%eax
 323:	83 f8 02             	cmp    $0x2,%eax
 326:	0f 85 02 01 00 00    	jne    42e <sys_send+0x19b>
 32c:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 32f:	8b 40 64             	mov    0x64(%eax),%eax
 332:	3b 45 0c             	cmp    0xc(%ebp),%eax
 335:	74 0f                	je     346 <sys_send+0xb3>
 337:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 33a:	8b 40 64             	mov    0x64(%eax),%eax
 33d:	83 f8 ff             	cmp    $0xffffffff,%eax
 340:	0f 85 e8 00 00 00    	jne    42e <sys_send+0x19b>
 346:	e8 fc ff ff ff       	call   347 <sys_send+0xb4>
 34b:	25 00 02 00 00       	and    $0x200,%eax
 350:	85 c0                	test   %eax,%eax
 352:	75 09                	jne    35d <sys_send+0xca>
 354:	a1 00 00 00 00       	mov    0x0,%eax
 359:	85 c0                	test   %eax,%eax
 35b:	75 24                	jne    381 <sys_send+0xee>
 35d:	c7 44 24 0c 6b 00 00 	movl   $0x6b,0xc(%esp)
 364:	00 
 365:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 36c:	00 
 36d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 374:	00 
 375:	c7 04 24 06 00 00 00 	movl   $0x6,(%esp)
 37c:	e8 fc ff ff ff       	call   37d <sys_send+0xea>
 381:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 384:	8b 50 5c             	mov    0x5c(%eax),%edx
 387:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 38a:	8b 40 48             	mov    0x48(%eax),%eax
 38d:	89 54 24 04          	mov    %edx,0x4(%esp)
 391:	89 04 24             	mov    %eax,(%esp)
 394:	e8 fc ff ff ff       	call   395 <sys_send+0x102>
 399:	89 c7                	mov    %eax,%edi
 39b:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 39e:	8b 50 48             	mov    0x48(%eax),%edx
 3a1:	8b 45 10             	mov    0x10(%ebp),%eax
 3a4:	89 44 24 04          	mov    %eax,0x4(%esp)
 3a8:	89 14 24             	mov    %edx,(%esp)
 3ab:	e8 fc ff ff ff       	call   3ac <sys_send+0x119>
 3b0:	89 c6                	mov    %eax,%esi
 3b2:	b9 28 00 00 00       	mov    $0x28,%ecx
 3b7:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 3b9:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 3bc:	c7 40 54 00 00 00 00 	movl   $0x0,0x54(%eax)
 3c3:	80 7d e4 02          	cmpb   $0x2,0xffffffe4(%ebp)
 3c7:	0f 85 e0 01 00 00    	jne    5ad <sys_send+0x31a>
 3cd:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 3d0:	c7 40 54 02 00 00 00 	movl   $0x2,0x54(%eax)
 3d7:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
 3da:	8b 45 08             	mov    0x8(%ebp),%eax
 3dd:	89 42 64             	mov    %eax,0x64(%edx)
 3e0:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
 3e3:	8b 45 10             	mov    0x10(%ebp),%eax
 3e6:	89 42 5c             	mov    %eax,0x5c(%edx)
 3e9:	8b 45 0c             	mov    0xc(%ebp),%eax
 3ec:	89 44 24 04          	mov    %eax,0x4(%esp)
 3f0:	8b 45 08             	mov    0x8(%ebp),%eax
 3f3:	89 04 24             	mov    %eax,(%esp)
 3f6:	e8 fc ff ff ff       	call   3f7 <sys_send+0x164>
 3fb:	83 f8 ff             	cmp    $0xffffffff,%eax
 3fe:	74 24                	je     424 <sys_send+0x191>
 400:	c7 44 24 0c 74 00 00 	movl   $0x74,0xc(%esp)
 407:	00 
 408:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 40f:	00 
 410:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 417:	00 
 418:	c7 04 24 3a 00 00 00 	movl   $0x3a,(%esp)
 41f:	e8 fc ff ff ff       	call   420 <sys_send+0x18d>
 424:	e8 fc ff ff ff       	call   425 <sys_send+0x192>
 429:	e9 7f 01 00 00       	jmp    5ad <sys_send+0x31a>
 42e:	e8 fc ff ff ff       	call   42f <sys_send+0x19c>
 433:	25 00 02 00 00       	and    $0x200,%eax
 438:	85 c0                	test   %eax,%eax
 43a:	75 09                	jne    445 <sys_send+0x1b2>
 43c:	a1 00 00 00 00       	mov    0x0,%eax
 441:	85 c0                	test   %eax,%eax
 443:	75 24                	jne    469 <sys_send+0x1d6>
 445:	c7 44 24 0c 7b 00 00 	movl   $0x7b,0xc(%esp)
 44c:	00 
 44d:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 454:	00 
 455:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 45c:	00 
 45d:	c7 04 24 06 00 00 00 	movl   $0x6,(%esp)
 464:	e8 fc ff ff ff       	call   465 <sys_send+0x1d2>
 469:	8b 45 08             	mov    0x8(%ebp),%eax
 46c:	89 44 24 04          	mov    %eax,0x4(%esp)
 470:	8b 45 0c             	mov    0xc(%ebp),%eax
 473:	89 04 24             	mov    %eax,(%esp)
 476:	e8 fc ff ff ff       	call   477 <sys_send+0x1e4>
 47b:	85 c0                	test   %eax,%eax
 47d:	75 1d                	jne    49c <sys_send+0x209>
 47f:	e8 fc ff ff ff       	call   480 <sys_send+0x1ed>
 484:	c7 04 24 52 00 00 00 	movl   $0x52,(%esp)
 48b:	e8 fc ff ff ff       	call   48c <sys_send+0x1f9>
 490:	c7 45 e0 ff ff ff ff 	movl   $0xffffffff,0xffffffe0(%ebp)
 497:	e9 1d 01 00 00       	jmp    5b9 <sys_send+0x326>
 49c:	80 7d e4 02          	cmpb   $0x2,0xffffffe4(%ebp)
 4a0:	75 0c                	jne    4ae <sys_send+0x21b>
 4a2:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 4a5:	c7 40 54 03 00 00 00 	movl   $0x3,0x54(%eax)
 4ac:	eb 36                	jmp    4e4 <sys_send+0x251>
 4ae:	80 7d e4 00          	cmpb   $0x0,0xffffffe4(%ebp)
 4b2:	75 0c                	jne    4c0 <sys_send+0x22d>
 4b4:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 4b7:	c7 40 54 01 00 00 00 	movl   $0x1,0x54(%eax)
 4be:	eb 24                	jmp    4e4 <sys_send+0x251>
 4c0:	c7 44 24 0c 87 00 00 	movl   $0x87,0xc(%esp)
 4c7:	00 
 4c8:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 4cf:	00 
 4d0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 4d7:	00 
 4d8:	c7 04 24 5d 00 00 00 	movl   $0x5d,(%esp)
 4df:	e8 fc ff ff ff       	call   4e0 <sys_send+0x24d>
 4e4:	8b 45 08             	mov    0x8(%ebp),%eax
 4e7:	89 44 24 04          	mov    %eax,0x4(%esp)
 4eb:	8b 45 0c             	mov    0xc(%ebp),%eax
 4ee:	89 04 24             	mov    %eax,(%esp)
 4f1:	e8 fc ff ff ff       	call   4f2 <sys_send+0x25f>
 4f6:	83 f8 ff             	cmp    $0xffffffff,%eax
 4f9:	74 24                	je     51f <sys_send+0x28c>
 4fb:	c7 44 24 0c 88 00 00 	movl   $0x88,0xc(%esp)
 502:	00 
 503:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 50a:	00 
 50b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 512:	00 
 513:	c7 04 24 5f 00 00 00 	movl   $0x5f,(%esp)
 51a:	e8 fc ff ff ff       	call   51b <sys_send+0x288>
 51f:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
 522:	8b 45 08             	mov    0x8(%ebp),%eax
 525:	89 42 60             	mov    %eax,0x60(%edx)
 528:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
 52b:	8b 45 10             	mov    0x10(%ebp),%eax
 52e:	89 42 5c             	mov    %eax,0x5c(%edx)
 531:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 534:	8b 40 68             	mov    0x68(%eax),%eax
 537:	85 c0                	test   %eax,%eax
 539:	74 64                	je     59f <sys_send+0x30c>
 53b:	e8 fc ff ff ff       	call   53c <sys_send+0x2a9>
 540:	25 00 02 00 00       	and    $0x200,%eax
 545:	85 c0                	test   %eax,%eax
 547:	75 09                	jne    552 <sys_send+0x2bf>
 549:	a1 00 00 00 00       	mov    0x0,%eax
 54e:	85 c0                	test   %eax,%eax
 550:	75 24                	jne    576 <sys_send+0x2e3>
 552:	c7 44 24 0c 8d 00 00 	movl   $0x8d,0xc(%esp)
 559:	00 
 55a:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 561:	00 
 562:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 569:	00 
 56a:	c7 04 24 06 00 00 00 	movl   $0x6,(%esp)
 571:	e8 fc ff ff ff       	call   572 <sys_send+0x2df>
 576:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 579:	8b 40 68             	mov    0x68(%eax),%eax
 57c:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
 57f:	eb 09                	jmp    58a <sys_send+0x2f7>
 581:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
 584:	8b 40 6c             	mov    0x6c(%eax),%eax
 587:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
 58a:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
 58d:	8b 40 6c             	mov    0x6c(%eax),%eax
 590:	85 c0                	test   %eax,%eax
 592:	75 ed                	jne    581 <sys_send+0x2ee>
 594:	8b 55 f4             	mov    0xfffffff4(%ebp),%edx
 597:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 59a:	89 42 6c             	mov    %eax,0x6c(%edx)
 59d:	eb 09                	jmp    5a8 <sys_send+0x315>
 59f:	8b 55 ec             	mov    0xffffffec(%ebp),%edx
 5a2:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 5a5:	89 42 68             	mov    %eax,0x68(%edx)
 5a8:	e8 fc ff ff ff       	call   5a9 <sys_send+0x316>
 5ad:	e8 fc ff ff ff       	call   5ae <sys_send+0x31b>
 5b2:	c7 45 e0 00 00 00 00 	movl   $0x0,0xffffffe0(%ebp)
 5b9:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
 5bc:	83 c4 30             	add    $0x30,%esp
 5bf:	5e                   	pop    %esi
 5c0:	5f                   	pop    %edi
 5c1:	5d                   	pop    %ebp
 5c2:	c3                   	ret    

000005c3 <sys_recv>:
 5c3:	55                   	push   %ebp
 5c4:	89 e5                	mov    %esp,%ebp
 5c6:	57                   	push   %edi
 5c7:	56                   	push   %esi
 5c8:	83 ec 30             	sub    $0x30,%esp
 5cb:	8b 55 08             	mov    0x8(%ebp),%edx
 5ce:	89 d0                	mov    %edx,%eax
 5d0:	c1 e0 03             	shl    $0x3,%eax
 5d3:	01 d0                	add    %edx,%eax
 5d5:	c1 e0 05             	shl    $0x5,%eax
 5d8:	05 00 00 00 00       	add    $0x0,%eax
 5dd:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
 5e0:	e8 fc ff ff ff       	call   5e1 <sys_recv+0x1e>
 5e5:	e8 fc ff ff ff       	call   5e6 <sys_recv+0x23>
 5ea:	25 00 02 00 00       	and    $0x200,%eax
 5ef:	85 c0                	test   %eax,%eax
 5f1:	75 09                	jne    5fc <sys_recv+0x39>
 5f3:	a1 00 00 00 00       	mov    0x0,%eax
 5f8:	85 c0                	test   %eax,%eax
 5fa:	75 24                	jne    620 <sys_recv+0x5d>
 5fc:	c7 44 24 0c a6 00 00 	movl   $0xa6,0xc(%esp)
 603:	00 
 604:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 60b:	00 
 60c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 613:	00 
 614:	c7 04 24 06 00 00 00 	movl   $0x6,(%esp)
 61b:	e8 fc ff ff ff       	call   61c <sys_recv+0x59>
 620:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 623:	0f b6 40 58          	movzbl 0x58(%eax),%eax
 627:	84 c0                	test   %al,%al
 629:	74 40                	je     66b <sys_recv+0xa8>
 62b:	83 7d 0c ff          	cmpl   $0xffffffff,0xc(%ebp)
 62f:	74 06                	je     637 <sys_recv+0x74>
 631:	83 7d 0c fe          	cmpl   $0xfffffffe,0xc(%ebp)
 635:	75 34                	jne    66b <sys_recv+0xa8>
 637:	8b 45 10             	mov    0x10(%ebp),%eax
 63a:	c7 00 fe ff ff ff    	movl   $0xfffffffe,(%eax)
 640:	8b 55 10             	mov    0x10(%ebp),%edx
 643:	8b 45 08             	mov    0x8(%ebp),%eax
 646:	89 42 04             	mov    %eax,0x4(%edx)
 649:	8b 45 10             	mov    0x10(%ebp),%eax
 64c:	c7 40 08 ff ff ff ff 	movl   $0xffffffff,0x8(%eax)
 653:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 656:	c6 40 58 00          	movb   $0x0,0x58(%eax)
 65a:	e8 fc ff ff ff       	call   65b <sys_recv+0x98>
 65f:	c7 45 e4 00 00 00 00 	movl   $0x0,0xffffffe4(%ebp)
 666:	e9 af 05 00 00       	jmp    c1a <sys_recv+0x657>
 66b:	e8 fc ff ff ff       	call   66c <sys_recv+0xa9>
 670:	25 00 02 00 00       	and    $0x200,%eax
 675:	85 c0                	test   %eax,%eax
 677:	75 09                	jne    682 <sys_recv+0xbf>
 679:	a1 00 00 00 00       	mov    0x0,%eax
 67e:	85 c0                	test   %eax,%eax
 680:	75 24                	jne    6a6 <sys_recv+0xe3>
 682:	c7 44 24 0c b1 00 00 	movl   $0xb1,0xc(%esp)
 689:	00 
 68a:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 691:	00 
 692:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 699:	00 
 69a:	c7 04 24 06 00 00 00 	movl   $0x6,(%esp)
 6a1:	e8 fc ff ff ff       	call   6a2 <sys_recv+0xdf>
 6a6:	83 7d 0c ff          	cmpl   $0xffffffff,0xc(%ebp)
 6aa:	0f 85 84 02 00 00    	jne    934 <sys_recv+0x371>
 6b0:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 6b3:	8b 40 68             	mov    0x68(%eax),%eax
 6b6:	85 c0                	test   %eax,%eax
 6b8:	0f 84 a3 01 00 00    	je     861 <sys_recv+0x29e>
 6be:	e8 fc ff ff ff       	call   6bf <sys_recv+0xfc>
 6c3:	25 00 02 00 00       	and    $0x200,%eax
 6c8:	85 c0                	test   %eax,%eax
 6ca:	75 09                	jne    6d5 <sys_recv+0x112>
 6cc:	a1 00 00 00 00       	mov    0x0,%eax
 6d1:	85 c0                	test   %eax,%eax
 6d3:	75 24                	jne    6f9 <sys_recv+0x136>
 6d5:	c7 44 24 0c b8 00 00 	movl   $0xb8,0xc(%esp)
 6dc:	00 
 6dd:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 6e4:	00 
 6e5:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 6ec:	00 
 6ed:	c7 04 24 06 00 00 00 	movl   $0x6,(%esp)
 6f4:	e8 fc ff ff ff       	call   6f5 <sys_recv+0x132>
 6f9:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 6fc:	8b 40 68             	mov    0x68(%eax),%eax
 6ff:	89 c2                	mov    %eax,%edx
 701:	b8 00 00 00 00       	mov    $0x0,%eax
 706:	89 d1                	mov    %edx,%ecx
 708:	29 c1                	sub    %eax,%ecx
 70a:	89 c8                	mov    %ecx,%eax
 70c:	3d 5f 2c 01 00       	cmp    $0x12c5f,%eax
 711:	7f 1a                	jg     72d <sys_recv+0x16a>
 713:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 716:	8b 40 68             	mov    0x68(%eax),%eax
 719:	89 c2                	mov    %eax,%edx
 71b:	b8 00 00 00 00       	mov    $0x0,%eax
 720:	89 d1                	mov    %edx,%ecx
 722:	29 c1                	sub    %eax,%ecx
 724:	89 c8                	mov    %ecx,%eax
 726:	3d e1 fe ff ff       	cmp    $0xfffffee1,%eax
 72b:	7d 24                	jge    751 <sys_recv+0x18e>
 72d:	c7 44 24 0c b9 00 00 	movl   $0xb9,0xc(%esp)
 734:	00 
 735:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 73c:	00 
 73d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 744:	00 
 745:	c7 04 24 78 00 00 00 	movl   $0x78,(%esp)
 74c:	e8 fc ff ff ff       	call   74d <sys_recv+0x18a>
 751:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 754:	8b 40 68             	mov    0x68(%eax),%eax
 757:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
 75a:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 75d:	8b 50 48             	mov    0x48(%eax),%edx
 760:	8b 45 10             	mov    0x10(%ebp),%eax
 763:	89 44 24 04          	mov    %eax,0x4(%esp)
 767:	89 14 24             	mov    %edx,(%esp)
 76a:	e8 fc ff ff ff       	call   76b <sys_recv+0x1a8>
 76f:	89 c7                	mov    %eax,%edi
 771:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 774:	8b 50 5c             	mov    0x5c(%eax),%edx
 777:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 77a:	8b 40 48             	mov    0x48(%eax),%eax
 77d:	89 54 24 04          	mov    %edx,0x4(%esp)
 781:	89 04 24             	mov    %eax,(%esp)
 784:	e8 fc ff ff ff       	call   785 <sys_recv+0x1c2>
 789:	89 c6                	mov    %eax,%esi
 78b:	b9 28 00 00 00       	mov    $0x28,%ecx
 790:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 792:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 795:	8b 50 6c             	mov    0x6c(%eax),%edx
 798:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 79b:	89 50 68             	mov    %edx,0x68(%eax)
 79e:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 7a1:	c7 40 6c 00 00 00 00 	movl   $0x0,0x6c(%eax)
 7a8:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 7ab:	8b 40 54             	mov    0x54(%eax),%eax
 7ae:	83 f8 03             	cmp    $0x3,%eax
 7b1:	75 6b                	jne    81e <sys_recv+0x25b>
 7b3:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 7b6:	c7 40 54 02 00 00 00 	movl   $0x2,0x54(%eax)
 7bd:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
 7c0:	8b 45 08             	mov    0x8(%ebp),%eax
 7c3:	89 42 64             	mov    %eax,0x64(%edx)
 7c6:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
 7c9:	b8 00 00 00 00       	mov    $0x0,%eax
 7ce:	89 d1                	mov    %edx,%ecx
 7d0:	29 c1                	sub    %eax,%ecx
 7d2:	89 c8                	mov    %ecx,%eax
 7d4:	c1 f8 05             	sar    $0x5,%eax
 7d7:	69 c0 39 8e e3 38    	imul   $0x38e38e39,%eax,%eax
 7dd:	89 44 24 04          	mov    %eax,0x4(%esp)
 7e1:	8b 45 08             	mov    0x8(%ebp),%eax
 7e4:	89 04 24             	mov    %eax,(%esp)
 7e7:	e8 fc ff ff ff       	call   7e8 <sys_recv+0x225>
 7ec:	83 f8 ff             	cmp    $0xffffffff,%eax
 7ef:	0f 84 19 04 00 00    	je     c0e <sys_recv+0x64b>
 7f5:	c7 44 24 0c c3 00 00 	movl   $0xc3,0xc(%esp)
 7fc:	00 
 7fd:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 804:	00 
 805:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 80c:	00 
 80d:	c7 04 24 c8 00 00 00 	movl   $0xc8,(%esp)
 814:	e8 fc ff ff ff       	call   815 <sys_recv+0x252>
 819:	e9 f0 03 00 00       	jmp    c0e <sys_recv+0x64b>
 81e:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 821:	8b 40 54             	mov    0x54(%eax),%eax
 824:	83 f8 01             	cmp    $0x1,%eax
 827:	75 0f                	jne    838 <sys_recv+0x275>
 829:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 82c:	c7 40 54 00 00 00 00 	movl   $0x0,0x54(%eax)
 833:	e9 d6 03 00 00       	jmp    c0e <sys_recv+0x64b>
 838:	c7 44 24 0c ca 00 00 	movl   $0xca,0xc(%esp)
 83f:	00 
 840:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 847:	00 
 848:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 84f:	00 
 850:	c7 04 24 5d 00 00 00 	movl   $0x5d,(%esp)
 857:	e8 fc ff ff ff       	call   858 <sys_recv+0x295>
 85c:	e9 ad 03 00 00       	jmp    c0e <sys_recv+0x64b>
 861:	e8 fc ff ff ff       	call   862 <sys_recv+0x29f>
 866:	25 00 02 00 00       	and    $0x200,%eax
 86b:	85 c0                	test   %eax,%eax
 86d:	75 09                	jne    878 <sys_recv+0x2b5>
 86f:	a1 00 00 00 00       	mov    0x0,%eax
 874:	85 c0                	test   %eax,%eax
 876:	75 24                	jne    89c <sys_recv+0x2d9>
 878:	c7 44 24 0c ce 00 00 	movl   $0xce,0xc(%esp)
 87f:	00 
 880:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 887:	00 
 888:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 88f:	00 
 890:	c7 04 24 06 00 00 00 	movl   $0x6,(%esp)
 897:	e8 fc ff ff ff       	call   898 <sys_recv+0x2d5>
 89c:	8b 45 08             	mov    0x8(%ebp),%eax
 89f:	89 44 24 04          	mov    %eax,0x4(%esp)
 8a3:	8b 45 0c             	mov    0xc(%ebp),%eax
 8a6:	89 04 24             	mov    %eax,(%esp)
 8a9:	e8 fc ff ff ff       	call   8aa <sys_recv+0x2e7>
 8ae:	85 c0                	test   %eax,%eax
 8b0:	75 1d                	jne    8cf <sys_recv+0x30c>
 8b2:	e8 fc ff ff ff       	call   8b3 <sys_recv+0x2f0>
 8b7:	c7 04 24 ef 00 00 00 	movl   $0xef,(%esp)
 8be:	e8 fc ff ff ff       	call   8bf <sys_recv+0x2fc>
 8c3:	c7 45 e4 ff ff ff ff 	movl   $0xffffffff,0xffffffe4(%ebp)
 8ca:	e9 4b 03 00 00       	jmp    c1a <sys_recv+0x657>
 8cf:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 8d2:	c7 40 54 02 00 00 00 	movl   $0x2,0x54(%eax)
 8d9:	8b 55 ec             	mov    0xffffffec(%ebp),%edx
 8dc:	8b 45 10             	mov    0x10(%ebp),%eax
 8df:	89 42 5c             	mov    %eax,0x5c(%edx)
 8e2:	8b 55 ec             	mov    0xffffffec(%ebp),%edx
 8e5:	8b 45 0c             	mov    0xc(%ebp),%eax
 8e8:	89 42 64             	mov    %eax,0x64(%edx)
 8eb:	e8 fc ff ff ff       	call   8ec <sys_recv+0x329>
 8f0:	8b 45 08             	mov    0x8(%ebp),%eax
 8f3:	89 44 24 04          	mov    %eax,0x4(%esp)
 8f7:	8b 45 0c             	mov    0xc(%ebp),%eax
 8fa:	89 04 24             	mov    %eax,(%esp)
 8fd:	e8 fc ff ff ff       	call   8fe <sys_recv+0x33b>
 902:	83 f8 ff             	cmp    $0xffffffff,%eax
 905:	0f 84 03 03 00 00    	je     c0e <sys_recv+0x64b>
 90b:	c7 44 24 0c d9 00 00 	movl   $0xd9,0xc(%esp)
 912:	00 
 913:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 91a:	00 
 91b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 922:	00 
 923:	c7 04 24 5f 00 00 00 	movl   $0x5f,(%esp)
 92a:	e8 fc ff ff ff       	call   92b <sys_recv+0x368>
 92f:	e9 da 02 00 00       	jmp    c0e <sys_recv+0x64b>
 934:	e8 fc ff ff ff       	call   935 <sys_recv+0x372>
 939:	25 00 02 00 00       	and    $0x200,%eax
 93e:	85 c0                	test   %eax,%eax
 940:	75 09                	jne    94b <sys_recv+0x388>
 942:	a1 00 00 00 00       	mov    0x0,%eax
 947:	85 c0                	test   %eax,%eax
 949:	75 24                	jne    96f <sys_recv+0x3ac>
 94b:	c7 44 24 0c de 00 00 	movl   $0xde,0xc(%esp)
 952:	00 
 953:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 95a:	00 
 95b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 962:	00 
 963:	c7 04 24 06 00 00 00 	movl   $0x6,(%esp)
 96a:	e8 fc ff ff ff       	call   96b <sys_recv+0x3a8>
 96f:	8b 55 0c             	mov    0xc(%ebp),%edx
 972:	89 d0                	mov    %edx,%eax
 974:	c1 e0 03             	shl    $0x3,%eax
 977:	01 d0                	add    %edx,%eax
 979:	c1 e0 05             	shl    $0x5,%eax
 97c:	05 00 00 00 00       	add    $0x0,%eax
 981:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
 984:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 987:	8b 40 54             	mov    0x54(%eax),%eax
 98a:	83 f8 01             	cmp    $0x1,%eax
 98d:	74 0f                	je     99e <sys_recv+0x3db>
 98f:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 992:	8b 40 54             	mov    0x54(%eax),%eax
 995:	83 f8 03             	cmp    $0x3,%eax
 998:	0f 85 e4 01 00 00    	jne    b82 <sys_recv+0x5bf>
 99e:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 9a1:	8b 40 60             	mov    0x60(%eax),%eax
 9a4:	3b 45 08             	cmp    0x8(%ebp),%eax
 9a7:	0f 85 d5 01 00 00    	jne    b82 <sys_recv+0x5bf>
 9ad:	e8 fc ff ff ff       	call   9ae <sys_recv+0x3eb>
 9b2:	25 00 02 00 00       	and    $0x200,%eax
 9b7:	85 c0                	test   %eax,%eax
 9b9:	75 09                	jne    9c4 <sys_recv+0x401>
 9bb:	a1 00 00 00 00       	mov    0x0,%eax
 9c0:	85 c0                	test   %eax,%eax
 9c2:	75 24                	jne    9e8 <sys_recv+0x425>
 9c4:	c7 44 24 0c e3 00 00 	movl   $0xe3,0xc(%esp)
 9cb:	00 
 9cc:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 9d3:	00 
 9d4:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 9db:	00 
 9dc:	c7 04 24 06 00 00 00 	movl   $0x6,(%esp)
 9e3:	e8 fc ff ff ff       	call   9e4 <sys_recv+0x421>
 9e8:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 9eb:	8b 50 48             	mov    0x48(%eax),%edx
 9ee:	8b 45 10             	mov    0x10(%ebp),%eax
 9f1:	89 44 24 04          	mov    %eax,0x4(%esp)
 9f5:	89 14 24             	mov    %edx,(%esp)
 9f8:	e8 fc ff ff ff       	call   9f9 <sys_recv+0x436>
 9fd:	89 c7                	mov    %eax,%edi
 9ff:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 a02:	8b 50 5c             	mov    0x5c(%eax),%edx
 a05:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 a08:	8b 40 48             	mov    0x48(%eax),%eax
 a0b:	89 54 24 04          	mov    %edx,0x4(%esp)
 a0f:	89 04 24             	mov    %eax,(%esp)
 a12:	e8 fc ff ff ff       	call   a13 <sys_recv+0x450>
 a17:	89 c6                	mov    %eax,%esi
 a19:	b9 28 00 00 00       	mov    $0x28,%ecx
 a1e:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 a20:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 a23:	8b 40 54             	mov    0x54(%eax),%eax
 a26:	83 f8 03             	cmp    $0x3,%eax
 a29:	75 50                	jne    a7b <sys_recv+0x4b8>
 a2b:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 a2e:	c7 40 54 02 00 00 00 	movl   $0x2,0x54(%eax)
 a35:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
 a38:	8b 45 08             	mov    0x8(%ebp),%eax
 a3b:	89 42 64             	mov    %eax,0x64(%edx)
 a3e:	8b 45 0c             	mov    0xc(%ebp),%eax
 a41:	89 44 24 04          	mov    %eax,0x4(%esp)
 a45:	8b 45 08             	mov    0x8(%ebp),%eax
 a48:	89 04 24             	mov    %eax,(%esp)
 a4b:	e8 fc ff ff ff       	call   a4c <sys_recv+0x489>
 a50:	83 f8 ff             	cmp    $0xffffffff,%eax
 a53:	74 61                	je     ab6 <sys_recv+0x4f3>
 a55:	c7 44 24 0c ea 00 00 	movl   $0xea,0xc(%esp)
 a5c:	00 
 a5d:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 a64:	00 
 a65:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 a6c:	00 
 a6d:	c7 04 24 3a 00 00 00 	movl   $0x3a,(%esp)
 a74:	e8 fc ff ff ff       	call   a75 <sys_recv+0x4b2>
 a79:	eb 3b                	jmp    ab6 <sys_recv+0x4f3>
 a7b:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 a7e:	8b 40 54             	mov    0x54(%eax),%eax
 a81:	83 f8 01             	cmp    $0x1,%eax
 a84:	75 0c                	jne    a92 <sys_recv+0x4cf>
 a86:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 a89:	c7 40 54 00 00 00 00 	movl   $0x0,0x54(%eax)
 a90:	eb 24                	jmp    ab6 <sys_recv+0x4f3>
 a92:	c7 44 24 0c ef 00 00 	movl   $0xef,0xc(%esp)
 a99:	00 
 a9a:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 aa1:	00 
 aa2:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 aa9:	00 
 aaa:	c7 04 24 5d 00 00 00 	movl   $0x5d,(%esp)
 ab1:	e8 fc ff ff ff       	call   ab2 <sys_recv+0x4ef>
 ab6:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 ab9:	8b 40 68             	mov    0x68(%eax),%eax
 abc:	3b 45 f0             	cmp    0xfffffff0(%ebp),%eax
 abf:	75 0e                	jne    acf <sys_recv+0x50c>
 ac1:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 ac4:	8b 50 6c             	mov    0x6c(%eax),%edx
 ac7:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 aca:	89 50 68             	mov    %edx,0x68(%eax)
 acd:	eb 72                	jmp    b41 <sys_recv+0x57e>
 acf:	e8 fc ff ff ff       	call   ad0 <sys_recv+0x50d>
 ad4:	25 00 02 00 00       	and    $0x200,%eax
 ad9:	85 c0                	test   %eax,%eax
 adb:	75 09                	jne    ae6 <sys_recv+0x523>
 add:	a1 00 00 00 00       	mov    0x0,%eax
 ae2:	85 c0                	test   %eax,%eax
 ae4:	75 24                	jne    b0a <sys_recv+0x547>
 ae6:	c7 44 24 0c f9 00 00 	movl   $0xf9,0xc(%esp)
 aed:	00 
 aee:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 af5:	00 
 af6:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 afd:	00 
 afe:	c7 04 24 06 00 00 00 	movl   $0x6,(%esp)
 b05:	e8 fc ff ff ff       	call   b06 <sys_recv+0x543>
 b0a:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 b0d:	8b 40 68             	mov    0x68(%eax),%eax
 b10:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
 b13:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
 b16:	8b 40 6c             	mov    0x6c(%eax),%eax
 b19:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
 b1c:	eb 0f                	jmp    b2d <sys_recv+0x56a>
 b1e:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 b21:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
 b24:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 b27:	8b 40 6c             	mov    0x6c(%eax),%eax
 b2a:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
 b2d:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 b30:	3b 45 f0             	cmp    0xfffffff0(%ebp),%eax
 b33:	75 e9                	jne    b1e <sys_recv+0x55b>
 b35:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 b38:	8b 50 6c             	mov    0x6c(%eax),%edx
 b3b:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
 b3e:	89 50 6c             	mov    %edx,0x6c(%eax)
 b41:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 b44:	c7 40 6c 00 00 00 00 	movl   $0x0,0x6c(%eax)
 b4b:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 b4e:	8b 40 6c             	mov    0x6c(%eax),%eax
 b51:	85 c0                	test   %eax,%eax
 b53:	0f 84 b5 00 00 00    	je     c0e <sys_recv+0x64b>
 b59:	c7 44 24 0c 04 01 00 	movl   $0x104,0xc(%esp)
 b60:	00 
 b61:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 b68:	00 
 b69:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 b70:	00 
 b71:	c7 04 24 fa 00 00 00 	movl   $0xfa,(%esp)
 b78:	e8 fc ff ff ff       	call   b79 <sys_recv+0x5b6>
 b7d:	e9 8c 00 00 00       	jmp    c0e <sys_recv+0x64b>
 b82:	e8 fc ff ff ff       	call   b83 <sys_recv+0x5c0>
 b87:	25 00 02 00 00       	and    $0x200,%eax
 b8c:	85 c0                	test   %eax,%eax
 b8e:	75 09                	jne    b99 <sys_recv+0x5d6>
 b90:	a1 00 00 00 00       	mov    0x0,%eax
 b95:	85 c0                	test   %eax,%eax
 b97:	75 24                	jne    bbd <sys_recv+0x5fa>
 b99:	c7 44 24 0c 09 01 00 	movl   $0x109,0xc(%esp)
 ba0:	00 
 ba1:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 ba8:	00 
 ba9:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 bb0:	00 
 bb1:	c7 04 24 06 00 00 00 	movl   $0x6,(%esp)
 bb8:	e8 fc ff ff ff       	call   bb9 <sys_recv+0x5f6>
 bbd:	8b 45 08             	mov    0x8(%ebp),%eax
 bc0:	89 44 24 04          	mov    %eax,0x4(%esp)
 bc4:	8b 45 0c             	mov    0xc(%ebp),%eax
 bc7:	89 04 24             	mov    %eax,(%esp)
 bca:	e8 fc ff ff ff       	call   bcb <sys_recv+0x608>
 bcf:	85 c0                	test   %eax,%eax
 bd1:	75 1a                	jne    bed <sys_recv+0x62a>
 bd3:	e8 fc ff ff ff       	call   bd4 <sys_recv+0x611>
 bd8:	c7 04 24 14 01 00 00 	movl   $0x114,(%esp)
 bdf:	e8 fc ff ff ff       	call   be0 <sys_recv+0x61d>
 be4:	c7 45 e4 ff ff ff ff 	movl   $0xffffffff,0xffffffe4(%ebp)
 beb:	eb 2d                	jmp    c1a <sys_recv+0x657>
 bed:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 bf0:	c7 40 54 02 00 00 00 	movl   $0x2,0x54(%eax)
 bf7:	8b 55 ec             	mov    0xffffffec(%ebp),%edx
 bfa:	8b 45 10             	mov    0x10(%ebp),%eax
 bfd:	89 42 5c             	mov    %eax,0x5c(%edx)
 c00:	8b 55 ec             	mov    0xffffffec(%ebp),%edx
 c03:	8b 45 0c             	mov    0xc(%ebp),%eax
 c06:	89 42 64             	mov    %eax,0x64(%edx)
 c09:	e8 fc ff ff ff       	call   c0a <sys_recv+0x647>
 c0e:	e8 fc ff ff ff       	call   c0f <sys_recv+0x64c>
 c13:	c7 45 e4 00 00 00 00 	movl   $0x0,0xffffffe4(%ebp)
 c1a:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
 c1d:	83 c4 30             	add    $0x30,%esp
 c20:	5e                   	pop    %esi
 c21:	5f                   	pop    %edi
 c22:	5d                   	pop    %ebp
 c23:	c3                   	ret    

00000c24 <int_send>:
 c24:	55                   	push   %ebp
 c25:	89 e5                	mov    %esp,%ebp
 c27:	53                   	push   %ebx
 c28:	83 ec 14             	sub    $0x14,%esp
 c2b:	e8 fc ff ff ff       	call   c2c <int_send+0x8>
 c30:	e8 fc ff ff ff       	call   c31 <int_send+0xd>
 c35:	25 00 02 00 00       	and    $0x200,%eax
 c3a:	85 c0                	test   %eax,%eax
 c3c:	75 09                	jne    c47 <int_send+0x23>
 c3e:	a1 00 00 00 00       	mov    0x0,%eax
 c43:	85 c0                	test   %eax,%eax
 c45:	75 24                	jne    c6b <int_send+0x47>
 c47:	c7 44 24 0c 1e 01 00 	movl   $0x11e,0xc(%esp)
 c4e:	00 
 c4f:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 c56:	00 
 c57:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 c5e:	00 
 c5f:	c7 04 24 06 00 00 00 	movl   $0x6,(%esp)
 c66:	e8 fc ff ff ff       	call   c67 <int_send+0x43>
 c6b:	8b 45 08             	mov    0x8(%ebp),%eax
 c6e:	8b 40 54             	mov    0x54(%eax),%eax
 c71:	83 f8 02             	cmp    $0x2,%eax
 c74:	75 5b                	jne    cd1 <int_send+0xad>
 c76:	8b 45 08             	mov    0x8(%ebp),%eax
 c79:	8b 40 64             	mov    0x64(%eax),%eax
 c7c:	83 f8 ff             	cmp    $0xffffffff,%eax
 c7f:	74 0b                	je     c8c <int_send+0x68>
 c81:	8b 45 08             	mov    0x8(%ebp),%eax
 c84:	8b 40 64             	mov    0x64(%eax),%eax
 c87:	83 f8 fe             	cmp    $0xfffffffe,%eax
 c8a:	75 45                	jne    cd1 <int_send+0xad>
 c8c:	8b 45 08             	mov    0x8(%ebp),%eax
 c8f:	8b 40 5c             	mov    0x5c(%eax),%eax
 c92:	c7 00 fe ff ff ff    	movl   $0xfffffffe,(%eax)
 c98:	8b 45 08             	mov    0x8(%ebp),%eax
 c9b:	8b 48 5c             	mov    0x5c(%eax),%ecx
 c9e:	8b 55 08             	mov    0x8(%ebp),%edx
 ca1:	b8 00 00 00 00       	mov    $0x0,%eax
 ca6:	89 d3                	mov    %edx,%ebx
 ca8:	29 c3                	sub    %eax,%ebx
 caa:	89 d8                	mov    %ebx,%eax
 cac:	c1 f8 05             	sar    $0x5,%eax
 caf:	69 c0 39 8e e3 38    	imul   $0x38e38e39,%eax,%eax
 cb5:	89 41 04             	mov    %eax,0x4(%ecx)
 cb8:	8b 45 08             	mov    0x8(%ebp),%eax
 cbb:	8b 40 5c             	mov    0x5c(%eax),%eax
 cbe:	c7 40 08 ff ff ff ff 	movl   $0xffffffff,0x8(%eax)
 cc5:	8b 45 08             	mov    0x8(%ebp),%eax
 cc8:	c7 40 54 00 00 00 00 	movl   $0x0,0x54(%eax)
 ccf:	eb 07                	jmp    cd8 <int_send+0xb4>
 cd1:	8b 45 08             	mov    0x8(%ebp),%eax
 cd4:	c6 40 58 01          	movb   $0x1,0x58(%eax)
 cd8:	e8 fc ff ff ff       	call   cd9 <int_send+0xb5>
 cdd:	83 c4 14             	add    $0x14,%esp
 ce0:	5b                   	pop    %ebx
 ce1:	5d                   	pop    %ebp
 ce2:	c3                   	ret    
