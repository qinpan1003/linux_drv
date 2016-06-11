
mm.o:     file format elf32-i386

Disassembly of section .text:

00000000 <task_mm>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 48             	sub    $0x48,%esp
   6:	e8 fc ff ff ff       	call   7 <task_mm+0x7>
   b:	eb 00                	jmp    d <task_mm+0xd>
   d:	8d 45 d4             	lea    0xffffffd4(%ebp),%eax
  10:	89 44 24 08          	mov    %eax,0x8(%esp)
  14:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%esp)
  1b:	ff 
  1c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  23:	e8 fc ff ff ff       	call   24 <task_mm+0x24>
  28:	85 c0                	test   %eax,%eax
  2a:	74 24                	je     50 <task_mm+0x50>
  2c:	c7 44 24 0c 17 00 00 	movl   $0x17,0xc(%esp)
  33:	00 
  34:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  3b:	00 
  3c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  43:	00 
  44:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
  4b:	e8 fc ff ff ff       	call   4c <task_mm+0x4c>
  50:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
  53:	83 f8 fb             	cmp    $0xfffffffb,%eax
  56:	74 24                	je     7c <task_mm+0x7c>
  58:	c7 44 24 0c 18 00 00 	movl   $0x18,0xc(%esp)
  5f:	00 
  60:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  67:	00 
  68:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  6f:	00 
  70:	c7 04 24 19 00 00 00 	movl   $0x19,(%esp)
  77:	e8 fc ff ff ff       	call   78 <task_mm+0x78>
  7c:	8d 45 d4             	lea    0xffffffd4(%ebp),%eax
  7f:	83 c0 0c             	add    $0xc,%eax
  82:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
  85:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
  88:	89 d0                	mov    %edx,%eax
  8a:	c1 e0 03             	shl    $0x3,%eax
  8d:	01 d0                	add    %edx,%eax
  8f:	c1 e0 05             	shl    $0x5,%eax
  92:	8b 80 54 00 00 00    	mov    0x54(%eax),%eax
  98:	83 f8 02             	cmp    $0x2,%eax
  9b:	75 e8                	jne    85 <task_mm+0x85>
  9d:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
  a0:	89 d0                	mov    %edx,%eax
  a2:	c1 e0 03             	shl    $0x3,%eax
  a5:	01 d0                	add    %edx,%eax
  a7:	c1 e0 05             	shl    $0x5,%eax
  aa:	8b 80 54 00 00 00    	mov    0x54(%eax),%eax
  b0:	83 f8 02             	cmp    $0x2,%eax
  b3:	74 24                	je     d9 <task_mm+0xd9>
  b5:	c7 44 24 0c 1b 00 00 	movl   $0x1b,0xc(%esp)
  bc:	00 
  bd:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  c4:	00 
  c5:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  cc:	00 
  cd:	c7 04 24 34 00 00 00 	movl   $0x34,(%esp)
  d4:	e8 fc ff ff ff       	call   d5 <task_mm+0xd5>
  d9:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
  dc:	89 d0                	mov    %edx,%eax
  de:	c1 e0 03             	shl    $0x3,%eax
  e1:	01 d0                	add    %edx,%eax
  e3:	c1 e0 05             	shl    $0x5,%eax
  e6:	8b 80 64 00 00 00    	mov    0x64(%eax),%eax
  ec:	83 f8 05             	cmp    $0x5,%eax
  ef:	74 24                	je     115 <task_mm+0x115>
  f1:	c7 44 24 0c 1c 00 00 	movl   $0x1c,0xc(%esp)
  f8:	00 
  f9:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 100:	00 
 101:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 108:	00 
 109:	c7 04 24 60 00 00 00 	movl   $0x60,(%esp)
 110:	e8 fc ff ff ff       	call   111 <task_mm+0x111>
 115:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 118:	8b 00                	mov    (%eax),%eax
 11a:	89 45 cc             	mov    %eax,0xffffffcc(%ebp)
 11d:	83 7d cc 05          	cmpl   $0x5,0xffffffcc(%ebp)
 121:	0f 87 0b 01 00 00    	ja     232 <task_mm+0x232>
 127:	8b 55 cc             	mov    0xffffffcc(%ebp),%edx
 12a:	8b 04 95 ac 00 00 00 	mov    0xac(,%edx,4),%eax
 131:	ff e0                	jmp    *%eax
 133:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 136:	89 04 24             	mov    %eax,(%esp)
 139:	e8 fc ff ff ff       	call   13a <task_mm+0x13a>
 13e:	89 c2                	mov    %eax,%edx
 140:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 143:	89 10                	mov    %edx,(%eax)
 145:	e9 e8 00 00 00       	jmp    232 <task_mm+0x232>
 14a:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 14d:	8b 40 08             	mov    0x8(%eax),%eax
 150:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
 153:	89 44 24 04          	mov    %eax,0x4(%esp)
 157:	89 14 24             	mov    %edx,(%esp)
 15a:	e8 fc ff ff ff       	call   15b <task_mm+0x15b>
 15f:	e9 ce 00 00 00       	jmp    232 <task_mm+0x232>
 164:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 167:	8b 40 04             	mov    0x4(%eax),%eax
 16a:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
 16d:	89 44 24 04          	mov    %eax,0x4(%esp)
 171:	89 14 24             	mov    %edx,(%esp)
 174:	e8 fc ff ff ff       	call   175 <task_mm+0x175>
 179:	89 c2                	mov    %eax,%edx
 17b:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 17e:	89 10                	mov    %edx,(%eax)
 180:	e9 ad 00 00 00       	jmp    232 <task_mm+0x232>
 185:	8d 45 d4             	lea    0xffffffd4(%ebp),%eax
 188:	89 04 24             	mov    %eax,(%esp)
 18b:	e8 fc ff ff ff       	call   18c <task_mm+0x18c>
 190:	89 c2                	mov    %eax,%edx
 192:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 195:	89 10                	mov    %edx,(%eax)
 197:	e9 96 00 00 00       	jmp    232 <task_mm+0x232>
 19c:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 19f:	8b 48 14             	mov    0x14(%eax),%ecx
 1a2:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 1a5:	8b 40 10             	mov    0x10(%eax),%eax
 1a8:	89 c2                	mov    %eax,%edx
 1aa:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 1ad:	8b 40 0c             	mov    0xc(%eax),%eax
 1b0:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 1b4:	89 54 24 04          	mov    %edx,0x4(%esp)
 1b8:	89 04 24             	mov    %eax,(%esp)
 1bb:	e8 fc ff ff ff       	call   1bc <task_mm+0x1bc>
 1c0:	89 c2                	mov    %eax,%edx
 1c2:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 1c5:	89 10                	mov    %edx,(%eax)
 1c7:	c7 05 00 00 00 00 01 	movl   $0x1,0x0
 1ce:	00 00 00 
 1d1:	e8 fc ff ff ff       	call   1d2 <task_mm+0x1d2>
 1d6:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
 1d9:	89 d0                	mov    %edx,%eax
 1db:	c1 e0 03             	shl    $0x3,%eax
 1de:	01 d0                	add    %edx,%eax
 1e0:	c1 e0 05             	shl    $0x5,%eax
 1e3:	8b 80 54 00 00 00    	mov    0x54(%eax),%eax
 1e9:	83 f8 02             	cmp    $0x2,%eax
 1ec:	74 24                	je     212 <task_mm+0x212>
 1ee:	c7 44 24 0c 31 00 00 	movl   $0x31,0xc(%esp)
 1f5:	00 
 1f6:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 1fd:	00 
 1fe:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 205:	00 
 206:	c7 04 24 34 00 00 00 	movl   $0x34,(%esp)
 20d:	e8 fc ff ff ff       	call   20e <task_mm+0x20e>
 212:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 215:	89 c2                	mov    %eax,%edx
 217:	89 d0                	mov    %edx,%eax
 219:	c1 e0 03             	shl    $0x3,%eax
 21c:	01 d0                	add    %edx,%eax
 21e:	c1 e0 05             	shl    $0x5,%eax
 221:	05 00 00 00 00       	add    $0x0,%eax
 226:	c7 40 54 00 00 00 00 	movl   $0x0,0x54(%eax)
 22d:	e8 fc ff ff ff       	call   22e <task_mm+0x22e>
 232:	a1 00 00 00 00       	mov    0x0,%eax
 237:	83 f8 01             	cmp    $0x1,%eax
 23a:	75 0f                	jne    24b <task_mm+0x24b>
 23c:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
 243:	00 00 00 
 246:	e9 c2 fd ff ff       	jmp    d <task_mm+0xd>
 24b:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 24e:	8d 55 d4             	lea    0xffffffd4(%ebp),%edx
 251:	89 54 24 08          	mov    %edx,0x8(%esp)
 255:	89 44 24 04          	mov    %eax,0x4(%esp)
 259:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 260:	e8 fc ff ff ff       	call   261 <task_mm+0x261>
 265:	85 c0                	test   %eax,%eax
 267:	0f 84 a0 fd ff ff    	je     d <task_mm+0xd>
 26d:	c7 44 24 0c 3a 00 00 	movl   $0x3a,0xc(%esp)
 274:	00 
 275:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 27c:	00 
 27d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 284:	00 
 285:	c7 04 24 8f 00 00 00 	movl   $0x8f,(%esp)
 28c:	e8 fc ff ff ff       	call   28d <task_mm+0x28d>
 291:	e9 77 fd ff ff       	jmp    d <task_mm+0xd>

00000296 <init_mm>:
 296:	55                   	push   %ebp
 297:	89 e5                	mov    %esp,%ebp
 299:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
 2a0:	00 00 00 
 2a3:	5d                   	pop    %ebp
 2a4:	c3                   	ret    

000002a5 <free_proc_mem>:
 2a5:	55                   	push   %ebp
 2a6:	89 e5                	mov    %esp,%ebp
 2a8:	5d                   	pop    %ebp
 2a9:	c3                   	ret    

000002aa <alloc_proc_mem>:
 2aa:	55                   	push   %ebp
 2ab:	89 e5                	mov    %esp,%ebp
 2ad:	83 ec 10             	sub    $0x10,%esp
 2b0:	c7 45 fc 0a 00 00 00 	movl   $0xa,0xfffffffc(%ebp)
 2b7:	8b 45 08             	mov    0x8(%ebp),%eax
 2ba:	83 e8 0b             	sub    $0xb,%eax
 2bd:	01 45 fc             	add    %eax,0xfffffffc(%ebp)
 2c0:	c1 65 fc 14          	shll   $0x14,0xfffffffc(%ebp)
 2c4:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 2c7:	c9                   	leave  
 2c8:	c3                   	ret    

000002c9 <mm_do_fork>:
 2c9:	55                   	push   %ebp
 2ca:	89 e5                	mov    %esp,%ebp
 2cc:	57                   	push   %edi
 2cd:	56                   	push   %esi
 2ce:	81 ec 90 00 00 00    	sub    $0x90,%esp
 2d4:	8b 55 08             	mov    0x8(%ebp),%edx
 2d7:	89 d0                	mov    %edx,%eax
 2d9:	c1 e0 03             	shl    $0x3,%eax
 2dc:	01 d0                	add    %edx,%eax
 2de:	c1 e0 05             	shl    $0x5,%eax
 2e1:	05 00 00 00 00       	add    $0x0,%eax
 2e6:	89 45 b8             	mov    %eax,0xffffffb8(%ebp)
 2e9:	e8 fc ff ff ff       	call   2ea <mm_do_fork+0x21>
 2ee:	89 45 bc             	mov    %eax,0xffffffbc(%ebp)
 2f1:	83 7d bc 00          	cmpl   $0x0,0xffffffbc(%ebp)
 2f5:	75 18                	jne    30f <mm_do_fork+0x46>
 2f7:	c7 04 24 c4 00 00 00 	movl   $0xc4,(%esp)
 2fe:	e8 fc ff ff ff       	call   2ff <mm_do_fork+0x36>
 303:	c7 45 84 ff ff ff ff 	movl   $0xffffffff,0xffffff84(%ebp)
 30a:	e9 ec 03 00 00       	jmp    6fb <mm_do_fork+0x432>
 30f:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
 312:	8b 40 4c             	mov    0x4c(%eax),%eax
 315:	89 45 c0             	mov    %eax,0xffffffc0(%ebp)
 318:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
 31b:	8b 80 18 01 00 00    	mov    0x118(%eax),%eax
 321:	89 45 c4             	mov    %eax,0xffffffc4(%ebp)
 324:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
 327:	8b 80 14 01 00 00    	mov    0x114(%eax),%eax
 32d:	89 45 c8             	mov    %eax,0xffffffc8(%ebp)
 330:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
 333:	8b 40 50             	mov    0x50(%eax),%eax
 336:	83 f8 01             	cmp    $0x1,%eax
 339:	74 24                	je     35f <mm_do_fork+0x96>
 33b:	c7 44 24 0c 88 00 00 	movl   $0x88,0xc(%esp)
 342:	00 
 343:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 34a:	00 
 34b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 352:	00 
 353:	c7 04 24 dc 00 00 00 	movl   $0xdc,(%esp)
 35a:	e8 fc ff ff ff       	call   35b <mm_do_fork+0x92>
 35f:	e8 fc ff ff ff       	call   360 <mm_do_fork+0x97>
 364:	8b 7d bc             	mov    0xffffffbc(%ebp),%edi
 367:	8b 75 b8             	mov    0xffffffb8(%ebp),%esi
 36a:	b9 20 01 00 00       	mov    $0x120,%ecx
 36f:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 371:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
 374:	8b 40 54             	mov    0x54(%eax),%eax
 377:	83 f8 02             	cmp    $0x2,%eax
 37a:	74 24                	je     3a0 <mm_do_fork+0xd7>
 37c:	c7 44 24 0c 8d 00 00 	movl   $0x8d,0xc(%esp)
 383:	00 
 384:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 38b:	00 
 38c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 393:	00 
 394:	c7 04 24 f0 00 00 00 	movl   $0xf0,(%esp)
 39b:	e8 fc ff ff ff       	call   39c <mm_do_fork+0xd3>
 3a0:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
 3a3:	8b 40 64             	mov    0x64(%eax),%eax
 3a6:	83 f8 05             	cmp    $0x5,%eax
 3a9:	74 24                	je     3cf <mm_do_fork+0x106>
 3ab:	c7 44 24 0c 8e 00 00 	movl   $0x8e,0xc(%esp)
 3b2:	00 
 3b3:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 3ba:	00 
 3bb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 3c2:	00 
 3c3:	c7 04 24 0c 01 00 00 	movl   $0x10c,(%esp)
 3ca:	e8 fc ff ff ff       	call   3cb <mm_do_fork+0x102>
 3cf:	8b 55 bc             	mov    0xffffffbc(%ebp),%edx
 3d2:	8b 45 c0             	mov    0xffffffc0(%ebp),%eax
 3d5:	89 42 4c             	mov    %eax,0x4c(%edx)
 3d8:	8b 55 08             	mov    0x8(%ebp),%edx
 3db:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
 3de:	89 90 fc 00 00 00    	mov    %edx,0xfc(%eax)
 3e4:	8b 55 bc             	mov    0xffffffbc(%ebp),%edx
 3e7:	8b 45 c4             	mov    0xffffffc4(%ebp),%eax
 3ea:	89 82 18 01 00 00    	mov    %eax,0x118(%edx)
 3f0:	8b 55 bc             	mov    0xffffffbc(%ebp),%edx
 3f3:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
 3f6:	89 82 14 01 00 00    	mov    %eax,0x114(%edx)
 3fc:	e8 fc ff ff ff       	call   3fd <mm_do_fork+0x134>
 401:	e8 fc ff ff ff       	call   402 <mm_do_fork+0x139>
 406:	89 c2                	mov    %eax,%edx
 408:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
 40b:	89 50 48             	mov    %edx,0x48(%eax)
 40e:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
 411:	8b 40 48             	mov    0x48(%eax),%eax
 414:	89 45 cc             	mov    %eax,0xffffffcc(%ebp)
 417:	c7 45 d0 00 00 00 00 	movl   $0x0,0xffffffd0(%ebp)
 41e:	eb 17                	jmp    437 <mm_do_fork+0x16e>
 420:	e8 fc ff ff ff       	call   421 <mm_do_fork+0x158>
 425:	89 c2                	mov    %eax,%edx
 427:	83 ca 07             	or     $0x7,%edx
 42a:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
 42d:	89 10                	mov    %edx,(%eax)
 42f:	83 45 cc 04          	addl   $0x4,0xffffffcc(%ebp)
 433:	83 45 d0 01          	addl   $0x1,0xffffffd0(%ebp)
 437:	83 7d d0 07          	cmpl   $0x7,0xffffffd0(%ebp)
 43b:	7e e3                	jle    420 <mm_do_fork+0x157>
 43d:	c7 45 d8 00 10 10 00 	movl   $0x101000,0xffffffd8(%ebp)
 444:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
 447:	8b 40 48             	mov    0x48(%eax),%eax
 44a:	89 45 cc             	mov    %eax,0xffffffcc(%ebp)
 44d:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
 450:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
 453:	c7 44 24 0c 07 00 00 	movl   $0x7,0xc(%esp)
 45a:	00 
 45b:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
 45e:	89 44 24 08          	mov    %eax,0x8(%esp)
 462:	c7 44 24 04 00 00 10 	movl   $0x100000,0x4(%esp)
 469:	00 
 46a:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
 46d:	89 04 24             	mov    %eax,(%esp)
 470:	e8 fc ff ff ff       	call   471 <mm_do_fork+0x1a8>
 475:	c7 45 d0 00 00 00 00 	movl   $0x0,0xffffffd0(%ebp)
 47c:	eb 37                	jmp    4b5 <mm_do_fork+0x1ec>
 47e:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
 481:	8b 00                	mov    (%eax),%eax
 483:	25 00 f0 ff ff       	and    $0xfffff000,%eax
 488:	c7 44 24 0c 07 00 00 	movl   $0x7,0xc(%esp)
 48f:	00 
 490:	89 44 24 08          	mov    %eax,0x8(%esp)
 494:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
 497:	89 44 24 04          	mov    %eax,0x4(%esp)
 49b:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
 49e:	89 04 24             	mov    %eax,(%esp)
 4a1:	e8 fc ff ff ff       	call   4a2 <mm_do_fork+0x1d9>
 4a6:	81 45 d8 00 10 00 00 	addl   $0x1000,0xffffffd8(%ebp)
 4ad:	83 45 dc 04          	addl   $0x4,0xffffffdc(%ebp)
 4b1:	83 45 d0 01          	addl   $0x1,0xffffffd0(%ebp)
 4b5:	83 7d d0 07          	cmpl   $0x7,0xffffffd0(%ebp)
 4b9:	7e c3                	jle    47e <mm_do_fork+0x1b5>
 4bb:	8b 45 b8             	mov    0xffffffb8(%ebp),%eax
 4be:	8b 40 48             	mov    0x48(%eax),%eax
 4c1:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
 4c4:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
 4c7:	8b 40 48             	mov    0x48(%eax),%eax
 4ca:	89 45 cc             	mov    %eax,0xffffffcc(%ebp)
 4cd:	c7 45 d0 00 00 00 00 	movl   $0x0,0xffffffd0(%ebp)
 4d4:	e9 a5 00 00 00       	jmp    57e <mm_do_fork+0x2b5>
 4d9:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
 4dc:	8b 00                	mov    (%eax),%eax
 4de:	25 00 f0 ff ff       	and    $0xfffff000,%eax
 4e3:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
 4e6:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
 4e9:	8b 00                	mov    (%eax),%eax
 4eb:	25 00 f0 ff ff       	and    $0xfffff000,%eax
 4f0:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
 4f3:	c7 45 d4 00 00 00 00 	movl   $0x0,0xffffffd4(%ebp)
 4fa:	eb 71                	jmp    56d <mm_do_fork+0x2a4>
 4fc:	81 7d d0 ff 00 00 00 	cmpl   $0xff,0xffffffd0(%ebp)
 503:	7f 0c                	jg     511 <mm_do_fork+0x248>
 505:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 508:	8b 10                	mov    (%eax),%edx
 50a:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 50d:	89 10                	mov    %edx,(%eax)
 50f:	eb 4c                	jmp    55d <mm_do_fork+0x294>
 511:	81 7d d0 0f 01 00 00 	cmpl   $0x10f,0xffffffd0(%ebp)
 518:	7e 43                	jle    55d <mm_do_fork+0x294>
 51a:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 51d:	8b 00                	mov    (%eax),%eax
 51f:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
 522:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
 525:	83 e0 01             	and    $0x1,%eax
 528:	84 c0                	test   %al,%al
 52a:	74 1d                	je     549 <mm_do_fork+0x280>
 52c:	81 7d f4 ff ff 5f 00 	cmpl   $0x5fffff,0xfffffff4(%ebp)
 533:	76 14                	jbe    549 <mm_do_fork+0x280>
 535:	81 7d f4 ff ff ef 01 	cmpl   $0x1efffff,0xfffffff4(%ebp)
 53c:	77 0b                	ja     549 <mm_do_fork+0x280>
 53e:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
 541:	89 04 24             	mov    %eax,(%esp)
 544:	e8 fc ff ff ff       	call   545 <mm_do_fork+0x27c>
 549:	83 65 f4 fd          	andl   $0xfffffffd,0xfffffff4(%ebp)
 54d:	8b 55 ec             	mov    0xffffffec(%ebp),%edx
 550:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
 553:	89 02                	mov    %eax,(%edx)
 555:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
 558:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
 55b:	89 02                	mov    %eax,(%edx)
 55d:	83 45 ec 04          	addl   $0x4,0xffffffec(%ebp)
 561:	83 45 f0 04          	addl   $0x4,0xfffffff0(%ebp)
 565:	83 45 d4 01          	addl   $0x1,0xffffffd4(%ebp)
 569:	83 45 d0 01          	addl   $0x1,0xffffffd0(%ebp)
 56d:	81 7d d4 ff 03 00 00 	cmpl   $0x3ff,0xffffffd4(%ebp)
 574:	7e 86                	jle    4fc <mm_do_fork+0x233>
 576:	83 45 e0 04          	addl   $0x4,0xffffffe0(%ebp)
 57a:	83 45 cc 04          	addl   $0x4,0xffffffcc(%ebp)
 57e:	81 7d d0 ff 1f 00 00 	cmpl   $0x1fff,0xffffffd0(%ebp)
 585:	0f 8e 4e ff ff ff    	jle    4d9 <mm_do_fork+0x210>
 58b:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
 58e:	8b 40 48             	mov    0x48(%eax),%eax
 591:	89 45 cc             	mov    %eax,0xffffffcc(%ebp)
 594:	c7 44 24 04 00 70 ef 	movl   $0x1ef7000,0x4(%esp)
 59b:	01 
 59c:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
 59f:	89 04 24             	mov    %eax,(%esp)
 5a2:	e8 fc ff ff ff       	call   5a3 <mm_do_fork+0x2da>
 5a7:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
 5aa:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
 5ad:	83 e0 01             	and    $0x1,%eax
 5b0:	84 c0                	test   %al,%al
 5b2:	74 50                	je     604 <mm_do_fork+0x33b>
 5b4:	81 7d e4 ff ff 5f 00 	cmpl   $0x5fffff,0xffffffe4(%ebp)
 5bb:	76 47                	jbe    604 <mm_do_fork+0x33b>
 5bd:	81 7d e4 ff ff ef 01 	cmpl   $0x1efffff,0xffffffe4(%ebp)
 5c4:	77 3e                	ja     604 <mm_do_fork+0x33b>
 5c6:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
 5c9:	89 04 24             	mov    %eax,(%esp)
 5cc:	e8 fc ff ff ff       	call   5cd <mm_do_fork+0x304>
 5d1:	85 c0                	test   %eax,%eax
 5d3:	7f 24                	jg     5f9 <mm_do_fork+0x330>
 5d5:	c7 44 24 0c d4 00 00 	movl   $0xd4,0xc(%esp)
 5dc:	00 
 5dd:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 5e4:	00 
 5e5:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 5ec:	00 
 5ed:	c7 04 24 2b 01 00 00 	movl   $0x12b,(%esp)
 5f4:	e8 fc ff ff ff       	call   5f5 <mm_do_fork+0x32c>
 5f9:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
 5fc:	89 04 24             	mov    %eax,(%esp)
 5ff:	e8 fc ff ff ff       	call   600 <mm_do_fork+0x337>
 604:	e8 fc ff ff ff       	call   605 <mm_do_fork+0x33c>
 609:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
 60c:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
 60f:	c7 44 24 0c 07 00 00 	movl   $0x7,0xc(%esp)
 616:	00 
 617:	89 44 24 08          	mov    %eax,0x8(%esp)
 61b:	c7 44 24 04 00 70 ef 	movl   $0x1ef7000,0x4(%esp)
 622:	01 
 623:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
 626:	89 04 24             	mov    %eax,(%esp)
 629:	e8 fc ff ff ff       	call   62a <mm_do_fork+0x361>
 62e:	c7 45 98 fd ff ff ff 	movl   $0xfffffffd,0xffffff98(%ebp)
 635:	c7 45 9c 06 00 00 00 	movl   $0x6,0xffffff9c(%ebp)
 63c:	8b 45 c0             	mov    0xffffffc0(%ebp),%eax
 63f:	89 45 a4             	mov    %eax,0xffffffa4(%ebp)
 642:	8d 45 90             	lea    0xffffff90(%ebp),%eax
 645:	89 44 24 08          	mov    %eax,0x8(%esp)
 649:	c7 44 24 04 03 00 00 	movl   $0x3,0x4(%esp)
 650:	00 
 651:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 658:	e8 fc ff ff ff       	call   659 <mm_do_fork+0x390>
 65d:	85 c0                	test   %eax,%eax
 65f:	74 24                	je     685 <mm_do_fork+0x3bc>
 661:	c7 44 24 0c fd 00 00 	movl   $0xfd,0xc(%esp)
 668:	00 
 669:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 670:	00 
 671:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 678:	00 
 679:	c7 04 24 48 01 00 00 	movl   $0x148,(%esp)
 680:	e8 fc ff ff ff       	call   681 <mm_do_fork+0x3b8>
 685:	8b 45 9c             	mov    0xffffff9c(%ebp),%eax
 688:	83 f8 ff             	cmp    $0xffffffff,%eax
 68b:	75 1f                	jne    6ac <mm_do_fork+0x3e3>
 68d:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
 690:	c7 40 50 01 00 00 00 	movl   $0x1,0x50(%eax)
 697:	c7 04 24 6d 01 00 00 	movl   $0x16d,(%esp)
 69e:	e8 fc ff ff ff       	call   69f <mm_do_fork+0x3d6>
 6a3:	c7 45 84 ff ff ff ff 	movl   $0xffffffff,0xffffff84(%ebp)
 6aa:	eb 4f                	jmp    6fb <mm_do_fork+0x432>
 6ac:	c7 45 9c 00 00 00 00 	movl   $0x0,0xffffff9c(%ebp)
 6b3:	8b 45 c0             	mov    0xffffffc0(%ebp),%eax
 6b6:	8d 55 90             	lea    0xffffff90(%ebp),%edx
 6b9:	89 54 24 08          	mov    %edx,0x8(%esp)
 6bd:	89 44 24 04          	mov    %eax,0x4(%esp)
 6c1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 6c8:	e8 fc ff ff ff       	call   6c9 <mm_do_fork+0x400>
 6cd:	85 c0                	test   %eax,%eax
 6cf:	74 24                	je     6f5 <mm_do_fork+0x42c>
 6d1:	c7 44 24 0c 0a 01 00 	movl   $0x10a,0xc(%esp)
 6d8:	00 
 6d9:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 6e0:	00 
 6e1:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 6e8:	00 
 6e9:	c7 04 24 87 01 00 00 	movl   $0x187,(%esp)
 6f0:	e8 fc ff ff ff       	call   6f1 <mm_do_fork+0x428>
 6f5:	8b 45 c0             	mov    0xffffffc0(%ebp),%eax
 6f8:	89 45 84             	mov    %eax,0xffffff84(%ebp)
 6fb:	8b 45 84             	mov    0xffffff84(%ebp),%eax
 6fe:	81 c4 90 00 00 00    	add    $0x90,%esp
 704:	5e                   	pop    %esi
 705:	5f                   	pop    %edi
 706:	5d                   	pop    %ebp
 707:	c3                   	ret    

00000708 <mm_do_exit>:
 708:	55                   	push   %ebp
 709:	89 e5                	mov    %esp,%ebp
 70b:	83 ec 78             	sub    $0x78,%esp
 70e:	a1 00 00 00 00       	mov    0x0,%eax
 713:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 716:	eb 55                	jmp    76d <mm_do_exit+0x65>
 718:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 71b:	8b 40 50             	mov    0x50(%eax),%eax
 71e:	85 c0                	test   %eax,%eax
 720:	74 24                	je     746 <mm_do_exit+0x3e>
 722:	c7 44 24 0c 19 01 00 	movl   $0x119,0xc(%esp)
 729:	00 
 72a:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 731:	00 
 732:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 739:	00 
 73a:	c7 04 24 a5 01 00 00 	movl   $0x1a5,(%esp)
 741:	e8 fc ff ff ff       	call   742 <mm_do_exit+0x3a>
 746:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 749:	8b 80 fc 00 00 00    	mov    0xfc(%eax),%eax
 74f:	3b 45 08             	cmp    0x8(%ebp),%eax
 752:	75 0d                	jne    761 <mm_do_exit+0x59>
 754:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 757:	c7 80 fc 00 00 00 06 	movl   $0x6,0xfc(%eax)
 75e:	00 00 00 
 761:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 764:	8b 80 18 01 00 00    	mov    0x118(%eax),%eax
 76a:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 76d:	83 7d fc 00          	cmpl   $0x0,0xfffffffc(%ebp)
 771:	75 a5                	jne    718 <mm_do_exit+0x10>
 773:	8b 55 08             	mov    0x8(%ebp),%edx
 776:	89 d0                	mov    %edx,%eax
 778:	c1 e0 03             	shl    $0x3,%eax
 77b:	01 d0                	add    %edx,%eax
 77d:	c1 e0 05             	shl    $0x5,%eax
 780:	05 00 00 00 00       	add    $0x0,%eax
 785:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 788:	8b 45 08             	mov    0x8(%ebp),%eax
 78b:	89 04 24             	mov    %eax,(%esp)
 78e:	e8 fc ff ff ff       	call   78f <mm_do_exit+0x87>
 793:	c7 45 dc fd ff ff ff 	movl   $0xfffffffd,0xffffffdc(%ebp)
 79a:	c7 45 e0 07 00 00 00 	movl   $0x7,0xffffffe0(%ebp)
 7a1:	8b 45 08             	mov    0x8(%ebp),%eax
 7a4:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
 7a7:	8d 45 d4             	lea    0xffffffd4(%ebp),%eax
 7aa:	89 44 24 08          	mov    %eax,0x8(%esp)
 7ae:	c7 44 24 04 03 00 00 	movl   $0x3,0x4(%esp)
 7b5:	00 
 7b6:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 7bd:	e8 fc ff ff ff       	call   7be <mm_do_exit+0xb6>
 7c2:	85 c0                	test   %eax,%eax
 7c4:	74 24                	je     7ea <mm_do_exit+0xe2>
 7c6:	c7 44 24 0c 27 01 00 	movl   $0x127,0xc(%esp)
 7cd:	00 
 7ce:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 7d5:	00 
 7d6:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 7dd:	00 
 7de:	c7 04 24 48 01 00 00 	movl   $0x148,(%esp)
 7e5:	e8 fc ff ff ff       	call   7e6 <mm_do_exit+0xde>
 7ea:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 7ed:	8b 90 fc 00 00 00    	mov    0xfc(%eax),%edx
 7f3:	89 d0                	mov    %edx,%eax
 7f5:	c1 e0 03             	shl    $0x3,%eax
 7f8:	01 d0                	add    %edx,%eax
 7fa:	c1 e0 05             	shl    $0x5,%eax
 7fd:	8b 80 54 00 00 00    	mov    0x54(%eax),%eax
 803:	83 f8 05             	cmp    $0x5,%eax
 806:	0f 85 0a 01 00 00    	jne    916 <mm_do_exit+0x20e>
 80c:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 80f:	8b 90 fc 00 00 00    	mov    0xfc(%eax),%edx
 815:	89 d0                	mov    %edx,%eax
 817:	c1 e0 03             	shl    $0x3,%eax
 81a:	01 d0                	add    %edx,%eax
 81c:	c1 e0 05             	shl    $0x5,%eax
 81f:	8b 88 0c 01 00 00    	mov    0x10c(%eax),%ecx
 825:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 828:	8b 80 fc 00 00 00    	mov    0xfc(%eax),%eax
 82e:	89 c2                	mov    %eax,%edx
 830:	89 d0                	mov    %edx,%eax
 832:	c1 e0 03             	shl    $0x3,%eax
 835:	01 d0                	add    %edx,%eax
 837:	c1 e0 05             	shl    $0x5,%eax
 83a:	05 00 00 00 00       	add    $0x0,%eax
 83f:	8b 40 48             	mov    0x48(%eax),%eax
 842:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 846:	89 04 24             	mov    %eax,(%esp)
 849:	e8 fc ff ff ff       	call   84a <mm_do_exit+0x142>
 84e:	89 c2                	mov    %eax,%edx
 850:	8b 45 0c             	mov    0xc(%ebp),%eax
 853:	89 02                	mov    %eax,(%edx)
 855:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 858:	8b 90 fc 00 00 00    	mov    0xfc(%eax),%edx
 85e:	89 d0                	mov    %edx,%eax
 860:	c1 e0 03             	shl    $0x3,%eax
 863:	01 d0                	add    %edx,%eax
 865:	c1 e0 05             	shl    $0x5,%eax
 868:	8b 80 64 00 00 00    	mov    0x64(%eax),%eax
 86e:	83 f8 05             	cmp    $0x5,%eax
 871:	74 24                	je     897 <mm_do_exit+0x18f>
 873:	c7 44 24 0c 2d 01 00 	movl   $0x12d,0xc(%esp)
 87a:	00 
 87b:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 882:	00 
 883:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 88a:	00 
 88b:	c7 04 24 bc 01 00 00 	movl   $0x1bc,(%esp)
 892:	e8 fc ff ff ff       	call   893 <mm_do_exit+0x18b>
 897:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 89a:	8b 90 fc 00 00 00    	mov    0xfc(%eax),%edx
 8a0:	89 d0                	mov    %edx,%eax
 8a2:	c1 e0 03             	shl    $0x3,%eax
 8a5:	01 d0                	add    %edx,%eax
 8a7:	c1 e0 05             	shl    $0x5,%eax
 8aa:	c7 80 54 00 00 00 02 	movl   $0x2,0x54(%eax)
 8b1:	00 00 00 
 8b4:	c7 45 b4 fb ff ff ff 	movl   $0xfffffffb,0xffffffb4(%ebp)
 8bb:	8b 45 08             	mov    0x8(%ebp),%eax
 8be:	89 45 b8             	mov    %eax,0xffffffb8(%ebp)
 8c1:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 8c4:	8b 90 fc 00 00 00    	mov    0xfc(%eax),%edx
 8ca:	8d 45 ac             	lea    0xffffffac(%ebp),%eax
 8cd:	89 44 24 08          	mov    %eax,0x8(%esp)
 8d1:	89 54 24 04          	mov    %edx,0x4(%esp)
 8d5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8dc:	e8 fc ff ff ff       	call   8dd <mm_do_exit+0x1d5>
 8e1:	85 c0                	test   %eax,%eax
 8e3:	74 24                	je     909 <mm_do_exit+0x201>
 8e5:	c7 44 24 0c 32 01 00 	movl   $0x132,0xc(%esp)
 8ec:	00 
 8ed:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8f4:	00 
 8f5:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8fc:	00 
 8fd:	c7 04 24 f0 01 00 00 	movl   $0x1f0,(%esp)
 904:	e8 fc ff ff ff       	call   905 <mm_do_exit+0x1fd>
 909:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 90c:	89 04 24             	mov    %eax,(%esp)
 90f:	e8 fc ff ff ff       	call   910 <mm_do_exit+0x208>
 914:	eb 16                	jmp    92c <mm_do_exit+0x224>
 916:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 919:	c7 40 54 06 00 00 00 	movl   $0x6,0x54(%eax)
 920:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
 923:	8b 45 0c             	mov    0xc(%ebp),%eax
 926:	89 82 10 01 00 00    	mov    %eax,0x110(%edx)
 92c:	c7 05 00 00 00 00 01 	movl   $0x1,0x0
 933:	00 00 00 
 936:	c9                   	leave  
 937:	c3                   	ret    

00000938 <mm_do_wait>:
 938:	55                   	push   %ebp
 939:	89 e5                	mov    %esp,%ebp
 93b:	83 ec 28             	sub    $0x28,%esp
 93e:	a1 00 00 00 00       	mov    0x0,%eax
 943:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 946:	eb 48                	jmp    990 <mm_do_wait+0x58>
 948:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 94b:	8b 40 50             	mov    0x50(%eax),%eax
 94e:	85 c0                	test   %eax,%eax
 950:	74 24                	je     976 <mm_do_wait+0x3e>
 952:	c7 44 24 0c 4d 01 00 	movl   $0x14d,0xc(%esp)
 959:	00 
 95a:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 961:	00 
 962:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 969:	00 
 96a:	c7 04 24 a5 01 00 00 	movl   $0x1a5,(%esp)
 971:	e8 fc ff ff ff       	call   972 <mm_do_wait+0x3a>
 976:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 979:	8b 80 fc 00 00 00    	mov    0xfc(%eax),%eax
 97f:	3b 45 08             	cmp    0x8(%ebp),%eax
 982:	74 12                	je     996 <mm_do_wait+0x5e>
 984:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 987:	8b 80 18 01 00 00    	mov    0x118(%eax),%eax
 98d:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 990:	83 7d fc 00          	cmpl   $0x0,0xfffffffc(%ebp)
 994:	75 b2                	jne    948 <mm_do_wait+0x10>
 996:	83 7d fc 00          	cmpl   $0x0,0xfffffffc(%ebp)
 99a:	75 0c                	jne    9a8 <mm_do_wait+0x70>
 99c:	c7 45 ec ff ff ff ff 	movl   $0xffffffff,0xffffffec(%ebp)
 9a3:	e9 00 01 00 00       	jmp    aa8 <mm_do_wait+0x170>
 9a8:	a1 00 00 00 00       	mov    0x0,%eax
 9ad:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 9b0:	eb 53                	jmp    a05 <mm_do_wait+0xcd>
 9b2:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 9b5:	8b 40 50             	mov    0x50(%eax),%eax
 9b8:	85 c0                	test   %eax,%eax
 9ba:	74 24                	je     9e0 <mm_do_wait+0xa8>
 9bc:	c7 44 24 0c 58 01 00 	movl   $0x158,0xc(%esp)
 9c3:	00 
 9c4:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 9cb:	00 
 9cc:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 9d3:	00 
 9d4:	c7 04 24 a5 01 00 00 	movl   $0x1a5,(%esp)
 9db:	e8 fc ff ff ff       	call   9dc <mm_do_wait+0xa4>
 9e0:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 9e3:	8b 80 fc 00 00 00    	mov    0xfc(%eax),%eax
 9e9:	3b 45 08             	cmp    0x8(%ebp),%eax
 9ec:	75 0b                	jne    9f9 <mm_do_wait+0xc1>
 9ee:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 9f1:	8b 40 54             	mov    0x54(%eax),%eax
 9f4:	83 f8 06             	cmp    $0x6,%eax
 9f7:	74 12                	je     a0b <mm_do_wait+0xd3>
 9f9:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 9fc:	8b 80 18 01 00 00    	mov    0x118(%eax),%eax
 a02:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 a05:	83 7d fc 00          	cmpl   $0x0,0xfffffffc(%ebp)
 a09:	75 a7                	jne    9b2 <mm_do_wait+0x7a>
 a0b:	83 7d fc 00          	cmpl   $0x0,0xfffffffc(%ebp)
 a0f:	75 3b                	jne    a4c <mm_do_wait+0x114>
 a11:	8b 55 08             	mov    0x8(%ebp),%edx
 a14:	89 d0                	mov    %edx,%eax
 a16:	c1 e0 03             	shl    $0x3,%eax
 a19:	01 d0                	add    %edx,%eax
 a1b:	c1 e0 05             	shl    $0x5,%eax
 a1e:	c7 80 54 00 00 00 05 	movl   $0x5,0x54(%eax)
 a25:	00 00 00 
 a28:	8b 55 08             	mov    0x8(%ebp),%edx
 a2b:	89 d0                	mov    %edx,%eax
 a2d:	c1 e0 03             	shl    $0x3,%eax
 a30:	01 d0                	add    %edx,%eax
 a32:	89 c2                	mov    %eax,%edx
 a34:	c1 e2 05             	shl    $0x5,%edx
 a37:	8b 45 0c             	mov    0xc(%ebp),%eax
 a3a:	89 82 0c 01 00 00    	mov    %eax,0x10c(%edx)
 a40:	c7 05 00 00 00 00 01 	movl   $0x1,0x0
 a47:	00 00 00 
 a4a:	eb 56                	jmp    aa2 <mm_do_wait+0x16a>
 a4c:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
 a4f:	b8 00 00 00 00       	mov    $0x0,%eax
 a54:	89 d1                	mov    %edx,%ecx
 a56:	29 c1                	sub    %eax,%ecx
 a58:	89 c8                	mov    %ecx,%eax
 a5a:	c1 f8 05             	sar    $0x5,%eax
 a5d:	69 c0 39 8e e3 38    	imul   $0x38e38e39,%eax,%eax
 a63:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
 a66:	8b 55 08             	mov    0x8(%ebp),%edx
 a69:	89 d0                	mov    %edx,%eax
 a6b:	c1 e0 03             	shl    $0x3,%eax
 a6e:	01 d0                	add    %edx,%eax
 a70:	c1 e0 05             	shl    $0x5,%eax
 a73:	05 00 00 00 00       	add    $0x0,%eax
 a78:	8b 50 48             	mov    0x48(%eax),%edx
 a7b:	8b 45 0c             	mov    0xc(%ebp),%eax
 a7e:	89 44 24 04          	mov    %eax,0x4(%esp)
 a82:	89 14 24             	mov    %edx,(%esp)
 a85:	e8 fc ff ff ff       	call   a86 <mm_do_wait+0x14e>
 a8a:	89 c2                	mov    %eax,%edx
 a8c:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 a8f:	8b 80 10 01 00 00    	mov    0x110(%eax),%eax
 a95:	89 02                	mov    %eax,(%edx)
 a97:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 a9a:	89 04 24             	mov    %eax,(%esp)
 a9d:	e8 fc ff ff ff       	call   a9e <mm_do_wait+0x166>
 aa2:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 aa5:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
 aa8:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 aab:	c9                   	leave  
 aac:	c3                   	ret    

00000aad <set_tcb_para>:
 aad:	55                   	push   %ebp
 aae:	89 e5                	mov    %esp,%ebp
 ab0:	57                   	push   %edi
 ab1:	56                   	push   %esi
 ab2:	e8 fc ff ff ff       	call   ab3 <set_tcb_para+0x6>
 ab7:	8b 45 08             	mov    0x8(%ebp),%eax
 aba:	c7 40 34 00 00 11 00 	movl   $0x110000,0x34(%eax)
 ac1:	8b 45 08             	mov    0x8(%ebp),%eax
 ac4:	c7 40 40 00 70 ef 01 	movl   $0x1ef7000,0x40(%eax)
 acb:	8b 45 08             	mov    0x8(%ebp),%eax
 ace:	c6 40 58 00          	movb   $0x0,0x58(%eax)
 ad2:	8b 45 08             	mov    0x8(%ebp),%eax
 ad5:	c7 40 5c 00 00 00 00 	movl   $0x0,0x5c(%eax)
 adc:	8b 45 08             	mov    0x8(%ebp),%eax
 adf:	c7 40 60 00 00 00 00 	movl   $0x0,0x60(%eax)
 ae6:	8b 45 08             	mov    0x8(%ebp),%eax
 ae9:	c7 40 64 00 00 00 00 	movl   $0x0,0x64(%eax)
 af0:	8b 45 08             	mov    0x8(%ebp),%eax
 af3:	c7 40 68 00 00 00 00 	movl   $0x0,0x68(%eax)
 afa:	8b 45 08             	mov    0x8(%ebp),%eax
 afd:	c7 40 6c 00 00 00 00 	movl   $0x0,0x6c(%eax)
 b04:	8b 45 08             	mov    0x8(%ebp),%eax
 b07:	8b 90 f0 00 00 00    	mov    0xf0(%eax),%edx
 b0d:	8b 45 08             	mov    0x8(%ebp),%eax
 b10:	89 90 f4 00 00 00    	mov    %edx,0xf4(%eax)
 b16:	8b 45 08             	mov    0x8(%ebp),%eax
 b19:	c7 80 f8 00 00 00 00 	movl   $0x0,0xf8(%eax)
 b20:	00 00 00 
 b23:	8b 7d 08             	mov    0x8(%ebp),%edi
 b26:	81 c7 00 01 00 00    	add    $0x100,%edi
 b2c:	8b 75 0c             	mov    0xc(%ebp),%esi
 b2f:	b9 0c 00 00 00       	mov    $0xc,%ecx
 b34:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 b36:	e8 fc ff ff ff       	call   b37 <set_tcb_para+0x8a>
 b3b:	b8 00 00 00 00       	mov    $0x0,%eax
 b40:	5e                   	pop    %esi
 b41:	5f                   	pop    %edi
 b42:	5d                   	pop    %ebp
 b43:	c3                   	ret    

00000b44 <mm_do_exec>:
 b44:	55                   	push   %ebp
 b45:	89 e5                	mov    %esp,%ebp
 b47:	57                   	push   %edi
 b48:	56                   	push   %esi
 b49:	83 ec 60             	sub    $0x60,%esp
 b4c:	8b 45 08             	mov    0x8(%ebp),%eax
 b4f:	8b 00                	mov    (%eax),%eax
 b51:	89 c2                	mov    %eax,%edx
 b53:	89 d0                	mov    %edx,%eax
 b55:	c1 e0 03             	shl    $0x3,%eax
 b58:	01 d0                	add    %edx,%eax
 b5a:	c1 e0 05             	shl    $0x5,%eax
 b5d:	05 00 00 00 00       	add    $0x0,%eax
 b62:	89 45 c0             	mov    %eax,0xffffffc0(%ebp)
 b65:	8b 45 c0             	mov    0xffffffc0(%ebp),%eax
 b68:	8b 40 48             	mov    0x48(%eax),%eax
 b6b:	89 45 c4             	mov    %eax,0xffffffc4(%ebp)
 b6e:	8b 45 08             	mov    0x8(%ebp),%eax
 b71:	8b 40 18             	mov    0x18(%eax),%eax
 b74:	89 44 24 04          	mov    %eax,0x4(%esp)
 b78:	8b 45 c4             	mov    0xffffffc4(%ebp),%eax
 b7b:	89 04 24             	mov    %eax,(%esp)
 b7e:	e8 fc ff ff ff       	call   b7f <mm_do_exec+0x3b>
 b83:	89 45 c8             	mov    %eax,0xffffffc8(%ebp)
 b86:	8b 45 08             	mov    0x8(%ebp),%eax
 b89:	8b 40 1c             	mov    0x1c(%eax),%eax
 b8c:	89 45 cc             	mov    %eax,0xffffffcc(%ebp)
 b8f:	8b 45 08             	mov    0x8(%ebp),%eax
 b92:	8b 40 20             	mov    0x20(%eax),%eax
 b95:	89 44 24 04          	mov    %eax,0x4(%esp)
 b99:	8b 45 c4             	mov    0xffffffc4(%ebp),%eax
 b9c:	89 04 24             	mov    %eax,(%esp)
 b9f:	e8 fc ff ff ff       	call   ba0 <mm_do_exec+0x5c>
 ba4:	89 45 d0             	mov    %eax,0xffffffd0(%ebp)
 ba7:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
 baa:	89 44 24 04          	mov    %eax,0x4(%esp)
 bae:	8b 45 c0             	mov    0xffffffc0(%ebp),%eax
 bb1:	89 04 24             	mov    %eax,(%esp)
 bb4:	e8 fc ff ff ff       	call   bb5 <mm_do_exec+0x71>
 bb9:	83 f8 ff             	cmp    $0xffffffff,%eax
 bbc:	75 0c                	jne    bca <mm_do_exec+0x86>
 bbe:	c7 45 b4 ff ff ff ff 	movl   $0xffffffff,0xffffffb4(%ebp)
 bc5:	e9 8b 01 00 00       	jmp    d55 <mm_do_exec+0x211>
 bca:	8b 45 c0             	mov    0xffffffc0(%ebp),%eax
 bcd:	8b 40 54             	mov    0x54(%eax),%eax
 bd0:	83 f8 02             	cmp    $0x2,%eax
 bd3:	74 24                	je     bf9 <mm_do_exec+0xb5>
 bd5:	c7 44 24 0c ae 01 00 	movl   $0x1ae,0xc(%esp)
 bdc:	00 
 bdd:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 be4:	00 
 be5:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 bec:	00 
 bed:	c7 04 24 f0 00 00 00 	movl   $0xf0,(%esp)
 bf4:	e8 fc ff ff ff       	call   bf5 <mm_do_exec+0xb1>
 bf9:	c7 44 24 04 00 70 ef 	movl   $0x1ef7000,0x4(%esp)
 c00:	01 
 c01:	8b 45 c4             	mov    0xffffffc4(%ebp),%eax
 c04:	89 04 24             	mov    %eax,(%esp)
 c07:	e8 fc ff ff ff       	call   c08 <mm_do_exec+0xc4>
 c0c:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
 c0f:	8b 55 dc             	mov    0xffffffdc(%ebp),%edx
 c12:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
 c15:	89 02                	mov    %eax,(%edx)
 c17:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
 c1a:	83 c0 04             	add    $0x4,%eax
 c1d:	c7 00 08 70 ef 01    	movl   $0x1ef7008,(%eax)
 c23:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
 c26:	83 c0 08             	add    $0x8,%eax
 c29:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
 c2c:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
 c2f:	05 98 01 00 00       	add    $0x198,%eax
 c34:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
 c37:	c7 45 d4 00 00 00 00 	movl   $0x0,0xffffffd4(%ebp)
 c3e:	eb 59                	jmp    c99 <mm_do_exec+0x155>
 c40:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 c43:	c1 e0 02             	shl    $0x2,%eax
 c46:	03 45 d0             	add    0xffffffd0(%ebp),%eax
 c49:	8b 00                	mov    (%eax),%eax
 c4b:	89 44 24 04          	mov    %eax,0x4(%esp)
 c4f:	8b 45 c4             	mov    0xffffffc4(%ebp),%eax
 c52:	89 04 24             	mov    %eax,(%esp)
 c55:	e8 fc ff ff ff       	call   c56 <mm_do_exec+0x112>
 c5a:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
 c5d:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
 c60:	89 04 24             	mov    %eax,(%esp)
 c63:	e8 fc ff ff ff       	call   c64 <mm_do_exec+0x120>
 c68:	83 c0 01             	add    $0x1,%eax
 c6b:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
 c6e:	8b 7d e4             	mov    0xffffffe4(%ebp),%edi
 c71:	8b 75 e8             	mov    0xffffffe8(%ebp),%esi
 c74:	8b 4d ec             	mov    0xffffffec(%ebp),%ecx
 c77:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 c79:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
 c7c:	2b 45 dc             	sub    0xffffffdc(%ebp),%eax
 c7f:	05 00 70 ef 01       	add    $0x1ef7000,%eax
 c84:	89 c2                	mov    %eax,%edx
 c86:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
 c89:	89 10                	mov    %edx,(%eax)
 c8b:	83 45 e0 04          	addl   $0x4,0xffffffe0(%ebp)
 c8f:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 c92:	01 45 e4             	add    %eax,0xffffffe4(%ebp)
 c95:	83 45 d4 01          	addl   $0x1,0xffffffd4(%ebp)
 c99:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 c9c:	3b 45 cc             	cmp    0xffffffcc(%ebp),%eax
 c9f:	7c 9f                	jl     c40 <mm_do_exec+0xfc>
 ca1:	c7 45 d4 00 00 00 00 	movl   $0x0,0xffffffd4(%ebp)
 ca8:	eb 79                	jmp    d23 <mm_do_exec+0x1df>
 caa:	8b 45 c4             	mov    0xffffffc4(%ebp),%eax
 cad:	8b 00                	mov    (%eax),%eax
 caf:	25 00 f0 ff ff       	and    $0xfffff000,%eax
 cb4:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
 cb7:	c7 45 d8 00 00 00 00 	movl   $0x0,0xffffffd8(%ebp)
 cbe:	eb 56                	jmp    d16 <mm_do_exec+0x1d2>
 cc0:	81 7d d4 0f 01 00 00 	cmpl   $0x10f,0xffffffd4(%ebp)
 cc7:	7e 41                	jle    d0a <mm_do_exec+0x1c6>
 cc9:	81 7d d4 f6 1e 00 00 	cmpl   $0x1ef6,0xffffffd4(%ebp)
 cd0:	7f 38                	jg     d0a <mm_do_exec+0x1c6>
 cd2:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 cd5:	8b 00                	mov    (%eax),%eax
 cd7:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
 cda:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
 cdd:	83 e0 01             	and    $0x1,%eax
 ce0:	84 c0                	test   %al,%al
 ce2:	74 1d                	je     d01 <mm_do_exec+0x1bd>
 ce4:	81 7d f4 ff ff 5f 00 	cmpl   $0x5fffff,0xfffffff4(%ebp)
 ceb:	76 14                	jbe    d01 <mm_do_exec+0x1bd>
 ced:	81 7d f4 ff ff ef 01 	cmpl   $0x1efffff,0xfffffff4(%ebp)
 cf4:	77 0b                	ja     d01 <mm_do_exec+0x1bd>
 cf6:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
 cf9:	89 04 24             	mov    %eax,(%esp)
 cfc:	e8 fc ff ff ff       	call   cfd <mm_do_exec+0x1b9>
 d01:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 d04:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 d0a:	83 45 d8 01          	addl   $0x1,0xffffffd8(%ebp)
 d0e:	83 45 d4 01          	addl   $0x1,0xffffffd4(%ebp)
 d12:	83 45 f0 04          	addl   $0x4,0xfffffff0(%ebp)
 d16:	81 7d d8 ff 03 00 00 	cmpl   $0x3ff,0xffffffd8(%ebp)
 d1d:	7e a1                	jle    cc0 <mm_do_exec+0x17c>
 d1f:	83 45 c4 04          	addl   $0x4,0xffffffc4(%ebp)
 d23:	81 7d d4 ff 1f 00 00 	cmpl   $0x1fff,0xffffffd4(%ebp)
 d2a:	0f 8e 7a ff ff ff    	jle    caa <mm_do_exec+0x166>
 d30:	e8 fc ff ff ff       	call   d31 <mm_do_exec+0x1ed>
 d35:	8b 45 c0             	mov    0xffffffc0(%ebp),%eax
 d38:	c7 40 54 00 00 00 00 	movl   $0x0,0x54(%eax)
 d3f:	e8 fc ff ff ff       	call   d40 <mm_do_exec+0x1fc>
 d44:	c7 05 00 00 00 00 01 	movl   $0x1,0x0
 d4b:	00 00 00 
 d4e:	c7 45 b4 00 00 00 00 	movl   $0x0,0xffffffb4(%ebp)
 d55:	8b 45 b4             	mov    0xffffffb4(%ebp),%eax
 d58:	83 c4 60             	add    $0x60,%esp
 d5b:	5e                   	pop    %esi
 d5c:	5f                   	pop    %edi
 d5d:	5d                   	pop    %ebp
 d5e:	c3                   	ret    

00000d5f <mm_file_page_copy>:
 d5f:	55                   	push   %ebp
 d60:	89 e5                	mov    %esp,%ebp
 d62:	81 ec 68 02 00 00    	sub    $0x268,%esp
 d68:	8b 45 0c             	mov    0xc(%ebp),%eax
 d6b:	25 ff 0f 00 00       	and    $0xfff,%eax
 d70:	85 c0                	test   %eax,%eax
 d72:	74 24                	je     d98 <mm_file_page_copy+0x39>
 d74:	c7 44 24 0c ec 01 00 	movl   $0x1ec,0xc(%esp)
 d7b:	00 
 d7c:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 d83:	00 
 d84:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 d8b:	00 
 d8c:	c7 04 24 17 02 00 00 	movl   $0x217,(%esp)
 d93:	e8 fc ff ff ff       	call   d94 <mm_file_page_copy+0x35>
 d98:	8b 45 10             	mov    0x10(%ebp),%eax
 d9b:	25 ff 0f 00 00       	and    $0xfff,%eax
 da0:	85 c0                	test   %eax,%eax
 da2:	74 24                	je     dc8 <mm_file_page_copy+0x69>
 da4:	c7 44 24 0c ed 01 00 	movl   $0x1ed,0xc(%esp)
 dab:	00 
 dac:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 db3:	00 
 db4:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 dbb:	00 
 dbc:	c7 04 24 30 02 00 00 	movl   $0x230,(%esp)
 dc3:	e8 fc ff ff ff       	call   dc4 <mm_file_page_copy+0x65>
 dc8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 dcf:	00 
 dd0:	8b 45 08             	mov    0x8(%ebp),%eax
 dd3:	89 04 24             	mov    %eax,(%esp)
 dd6:	e8 fc ff ff ff       	call   dd7 <mm_file_page_copy+0x78>
 ddb:	89 45 c8             	mov    %eax,0xffffffc8(%ebp)
 dde:	83 7d c8 ff          	cmpl   $0xffffffff,0xffffffc8(%ebp)
 de2:	75 0f                	jne    df3 <mm_file_page_copy+0x94>
 de4:	c7 85 bc fd ff ff ff 	movl   $0xffffffff,0xfffffdbc(%ebp)
 deb:	ff ff ff 
 dee:	e9 94 01 00 00       	jmp    f87 <mm_file_page_copy+0x228>
 df3:	c7 44 24 0c 00 02 00 	movl   $0x200,0xc(%esp)
 dfa:	00 
 dfb:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 e02:	00 
 e03:	8d 85 c8 fd ff ff    	lea    0xfffffdc8(%ebp),%eax
 e09:	89 44 24 04          	mov    %eax,0x4(%esp)
 e0d:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
 e10:	89 04 24             	mov    %eax,(%esp)
 e13:	e8 fc ff ff ff       	call   e14 <mm_file_page_copy+0xb5>
 e18:	8d 85 c8 fd ff ff    	lea    0xfffffdc8(%ebp),%eax
 e1e:	89 45 cc             	mov    %eax,0xffffffcc(%ebp)
 e21:	8d 85 c8 fd ff ff    	lea    0xfffffdc8(%ebp),%eax
 e27:	89 c2                	mov    %eax,%edx
 e29:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
 e2c:	8b 40 1c             	mov    0x1c(%eax),%eax
 e2f:	8d 04 02             	lea    (%edx,%eax,1),%eax
 e32:	89 45 d0             	mov    %eax,0xffffffd0(%ebp)
 e35:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
 e38:	0f b7 40 2c          	movzwl 0x2c(%eax),%eax
 e3c:	0f b7 c0             	movzwl %ax,%eax
 e3f:	89 45 d4             	mov    %eax,0xffffffd4(%ebp)
 e42:	8b 45 10             	mov    0x10(%ebp),%eax
 e45:	89 45 d8             	mov    %eax,0xffffffd8(%ebp)
 e48:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
 e4b:	05 00 10 00 00       	add    $0x1000,%eax
 e50:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
 e53:	c7 45 e0 00 00 00 00 	movl   $0x0,0xffffffe0(%ebp)
 e5a:	e9 07 01 00 00       	jmp    f66 <mm_file_page_copy+0x207>
 e5f:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
 e62:	8b 40 08             	mov    0x8(%eax),%eax
 e65:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
 e68:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
 e6b:	8b 40 10             	mov    0x10(%eax),%eax
 e6e:	03 45 e4             	add    0xffffffe4(%ebp),%eax
 e71:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
 e74:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
 e77:	3b 45 dc             	cmp    0xffffffdc(%ebp),%eax
 e7a:	0f 87 de 00 00 00    	ja     f5e <mm_file_page_copy+0x1ff>
 e80:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
 e83:	3b 45 d8             	cmp    0xffffffd8(%ebp),%eax
 e86:	0f 82 d2 00 00 00    	jb     f5e <mm_file_page_copy+0x1ff>
 e8c:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
 e8f:	89 85 b4 fd ff ff    	mov    %eax,0xfffffdb4(%ebp)
 e95:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
 e98:	89 85 b8 fd ff ff    	mov    %eax,0xfffffdb8(%ebp)
 e9e:	8b 85 b4 fd ff ff    	mov    0xfffffdb4(%ebp),%eax
 ea4:	39 85 b8 fd ff ff    	cmp    %eax,0xfffffdb8(%ebp)
 eaa:	73 0c                	jae    eb8 <mm_file_page_copy+0x159>
 eac:	8b 85 b4 fd ff ff    	mov    0xfffffdb4(%ebp),%eax
 eb2:	89 85 b8 fd ff ff    	mov    %eax,0xfffffdb8(%ebp)
 eb8:	8b 85 b8 fd ff ff    	mov    0xfffffdb8(%ebp),%eax
 ebe:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
 ec1:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
 ec4:	89 85 ac fd ff ff    	mov    %eax,0xfffffdac(%ebp)
 eca:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
 ecd:	89 85 b0 fd ff ff    	mov    %eax,0xfffffdb0(%ebp)
 ed3:	8b 85 ac fd ff ff    	mov    0xfffffdac(%ebp),%eax
 ed9:	39 85 b0 fd ff ff    	cmp    %eax,0xfffffdb0(%ebp)
 edf:	76 0c                	jbe    eed <mm_file_page_copy+0x18e>
 ee1:	8b 85 ac fd ff ff    	mov    0xfffffdac(%ebp),%eax
 ee7:	89 85 b0 fd ff ff    	mov    %eax,0xfffffdb0(%ebp)
 eed:	8b 85 b0 fd ff ff    	mov    0xfffffdb0(%ebp),%eax
 ef3:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
 ef6:	8b 55 ec             	mov    0xffffffec(%ebp),%edx
 ef9:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 efc:	29 d0                	sub    %edx,%eax
 efe:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
 f01:	8b 55 d8             	mov    0xffffffd8(%ebp),%edx
 f04:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 f07:	29 d0                	sub    %edx,%eax
 f09:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
 f0c:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
 f0f:	8b 40 04             	mov    0x4(%eax),%eax
 f12:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 f15:	8b 55 e4             	mov    0xffffffe4(%ebp),%edx
 f18:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 f1b:	29 d0                	sub    %edx,%eax
 f1d:	01 45 fc             	add    %eax,0xfffffffc(%ebp)
 f20:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 f27:	00 
 f28:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 f2f:	00 
 f30:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
 f33:	89 04 24             	mov    %eax,(%esp)
 f36:	e8 fc ff ff ff       	call   f37 <mm_file_page_copy+0x1d8>
 f3b:	8b 55 f4             	mov    0xfffffff4(%ebp),%edx
 f3e:	8b 4d fc             	mov    0xfffffffc(%ebp),%ecx
 f41:	8b 45 0c             	mov    0xc(%ebp),%eax
 f44:	03 45 f8             	add    0xfffffff8(%ebp),%eax
 f47:	89 54 24 0c          	mov    %edx,0xc(%esp)
 f4b:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 f4f:	89 44 24 04          	mov    %eax,0x4(%esp)
 f53:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
 f56:	89 04 24             	mov    %eax,(%esp)
 f59:	e8 fc ff ff ff       	call   f5a <mm_file_page_copy+0x1fb>
 f5e:	83 45 e0 01          	addl   $0x1,0xffffffe0(%ebp)
 f62:	83 45 d0 20          	addl   $0x20,0xffffffd0(%ebp)
 f66:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
 f69:	3b 45 d4             	cmp    0xffffffd4(%ebp),%eax
 f6c:	0f 8c ed fe ff ff    	jl     e5f <mm_file_page_copy+0x100>
 f72:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
 f75:	89 04 24             	mov    %eax,(%esp)
 f78:	e8 fc ff ff ff       	call   f79 <mm_file_page_copy+0x21a>
 f7d:	c7 85 bc fd ff ff 00 	movl   $0x0,0xfffffdbc(%ebp)
 f84:	00 00 00 
 f87:	8b 85 bc fd ff ff    	mov    0xfffffdbc(%ebp),%eax
 f8d:	c9                   	leave  
 f8e:	c3                   	ret    
