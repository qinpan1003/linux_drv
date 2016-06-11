
filebuff.o:     file format elf32-i386

Disassembly of section .text:

00000000 <init_file_buff>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	c7 45 fc 00 00 10 00 	movl   $0x100000,0xfffffffc(%ebp)
   d:	c7 45 f8 00 00 00 00 	movl   $0x0,0xfffffff8(%ebp)
  14:	eb 2b                	jmp    41 <init_file_buff+0x41>
  16:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
  19:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
  1c:	89 10                	mov    %edx,(%eax)
  1e:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
  21:	83 ea 20             	sub    $0x20,%edx
  24:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
  27:	89 50 18             	mov    %edx,0x18(%eax)
  2a:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
  2d:	83 c2 20             	add    $0x20,%edx
  30:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
  33:	89 50 1c             	mov    %edx,0x1c(%eax)
  36:	81 45 fc 00 10 00 00 	addl   $0x1000,0xfffffffc(%ebp)
  3d:	83 45 f8 20          	addl   $0x20,0xfffffff8(%ebp)
  41:	b8 00 a0 00 00       	mov    $0xa000,%eax
  46:	39 45 f8             	cmp    %eax,0xfffffff8(%ebp)
  49:	72 cb                	jb     16 <init_file_buff+0x16>
  4b:	c7 05 18 00 00 00 00 	movl   $0x0,0x18
  52:	00 00 00 
  55:	b8 e0 9f 00 00       	mov    $0x9fe0,%eax
  5a:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
  61:	b8 00 a0 00 00       	mov    $0xa000,%eax
  66:	39 45 f8             	cmp    %eax,0xfffffff8(%ebp)
  69:	74 24                	je     8f <init_file_buff+0x8f>
  6b:	c7 44 24 0c 1c 00 00 	movl   $0x1c,0xc(%esp)
  72:	00 
  73:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  7a:	00 
  7b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  82:	00 
  83:	c7 04 24 0b 00 00 00 	movl   $0xb,(%esp)
  8a:	e8 fc ff ff ff       	call   8b <init_file_buff+0x8b>
  8f:	81 7d fc 00 00 60 00 	cmpl   $0x600000,0xfffffffc(%ebp)
  96:	74 24                	je     bc <init_file_buff+0xbc>
  98:	c7 44 24 0c 1d 00 00 	movl   $0x1d,0xc(%esp)
  9f:	00 
  a0:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  a7:	00 
  a8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  af:	00 
  b0:	c7 04 24 26 00 00 00 	movl   $0x26,(%esp)
  b7:	e8 fc ff ff ff       	call   b8 <init_file_buff+0xb8>
  bc:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
  c3:	00 00 00 
  c6:	b8 e0 9f 00 00       	mov    $0x9fe0,%eax
  cb:	a3 00 00 00 00       	mov    %eax,0x0
  d0:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
  d7:	00 00 00 
  da:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
  e1:	00 00 00 
  e4:	c9                   	leave  
  e5:	c3                   	ret    

000000e6 <scan_buff>:
  e6:	55                   	push   %ebp
  e7:	89 e5                	mov    %esp,%ebp
  e9:	83 ec 14             	sub    $0x14,%esp
  ec:	8b 45 08             	mov    0x8(%ebp),%eax
  ef:	8b 40 20             	mov    0x20(%eax),%eax
  f2:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
  f5:	8b 45 08             	mov    0x8(%ebp),%eax
  f8:	8b 40 28             	mov    0x28(%eax),%eax
  fb:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
  fe:	a1 00 00 00 00       	mov    0x0,%eax
 103:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 106:	81 65 0c 00 f0 ff ff 	andl   $0xfffff000,0xc(%ebp)
 10d:	a1 00 00 00 00       	mov    0x0,%eax
 112:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 115:	eb 32                	jmp    149 <scan_buff+0x63>
 117:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 11a:	8b 40 04             	mov    0x4(%eax),%eax
 11d:	3b 45 f4             	cmp    0xfffffff4(%ebp),%eax
 120:	75 1e                	jne    140 <scan_buff+0x5a>
 122:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 125:	8b 40 08             	mov    0x8(%eax),%eax
 128:	3b 45 f8             	cmp    0xfffffff8(%ebp),%eax
 12b:	75 13                	jne    140 <scan_buff+0x5a>
 12d:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 130:	8b 40 0c             	mov    0xc(%eax),%eax
 133:	3b 45 0c             	cmp    0xc(%ebp),%eax
 136:	75 08                	jne    140 <scan_buff+0x5a>
 138:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 13b:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
 13e:	eb 16                	jmp    156 <scan_buff+0x70>
 140:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 143:	8b 40 1c             	mov    0x1c(%eax),%eax
 146:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 149:	83 7d fc 00          	cmpl   $0x0,0xfffffffc(%ebp)
 14d:	75 c8                	jne    117 <scan_buff+0x31>
 14f:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
 156:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 159:	c9                   	leave  
 15a:	c3                   	ret    

0000015b <get_buff>:
 15b:	55                   	push   %ebp
 15c:	89 e5                	mov    %esp,%ebp
 15e:	83 ec 28             	sub    $0x28,%esp
 161:	a1 00 00 00 00       	mov    0x0,%eax
 166:	85 c0                	test   %eax,%eax
 168:	75 0c                	jne    176 <get_buff+0x1b>
 16a:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
 171:	e9 ed 00 00 00       	jmp    263 <get_buff+0x108>
 176:	8b 45 08             	mov    0x8(%ebp),%eax
 179:	8b 40 20             	mov    0x20(%eax),%eax
 17c:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
 17f:	8b 45 08             	mov    0x8(%ebp),%eax
 182:	8b 40 28             	mov    0x28(%eax),%eax
 185:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
 188:	a1 00 00 00 00       	mov    0x0,%eax
 18d:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 190:	a1 00 00 00 00       	mov    0x0,%eax
 195:	8b 40 1c             	mov    0x1c(%eax),%eax
 198:	a3 00 00 00 00       	mov    %eax,0x0
 19d:	a1 00 00 00 00       	mov    0x0,%eax
 1a2:	85 c0                	test   %eax,%eax
 1a4:	75 0c                	jne    1b2 <get_buff+0x57>
 1a6:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
 1ad:	00 00 00 
 1b0:	eb 0c                	jmp    1be <get_buff+0x63>
 1b2:	a1 00 00 00 00       	mov    0x0,%eax
 1b7:	c7 40 18 00 00 00 00 	movl   $0x0,0x18(%eax)
 1be:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
 1c1:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
 1c4:	89 42 04             	mov    %eax,0x4(%edx)
 1c7:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
 1ca:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 1cd:	89 42 08             	mov    %eax,0x8(%edx)
 1d0:	8b 55 0c             	mov    0xc(%ebp),%edx
 1d3:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
 1d9:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 1dc:	89 50 0c             	mov    %edx,0xc(%eax)
 1df:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 1e2:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
 1e9:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 1ec:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
 1f3:	8b 15 00 00 00 00    	mov    0x0,%edx
 1f9:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 1fc:	89 50 18             	mov    %edx,0x18(%eax)
 1ff:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 202:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
 209:	a1 00 00 00 00       	mov    0x0,%eax
 20e:	85 c0                	test   %eax,%eax
 210:	75 37                	jne    249 <get_buff+0xee>
 212:	a1 00 00 00 00       	mov    0x0,%eax
 217:	85 c0                	test   %eax,%eax
 219:	74 24                	je     23f <get_buff+0xe4>
 21b:	c7 44 24 0c 60 00 00 	movl   $0x60,0xc(%esp)
 222:	00 
 223:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 22a:	00 
 22b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 232:	00 
 233:	c7 04 24 3e 00 00 00 	movl   $0x3e,(%esp)
 23a:	e8 fc ff ff ff       	call   23b <get_buff+0xe0>
 23f:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 242:	a3 00 00 00 00       	mov    %eax,0x0
 247:	eb 0c                	jmp    255 <get_buff+0xfa>
 249:	8b 15 00 00 00 00    	mov    0x0,%edx
 24f:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 252:	89 42 1c             	mov    %eax,0x1c(%edx)
 255:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 258:	a3 00 00 00 00       	mov    %eax,0x0
 25d:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 260:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
 263:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 266:	c9                   	leave  
 267:	c3                   	ret    

00000268 <put_buff>:
 268:	55                   	push   %ebp
 269:	89 e5                	mov    %esp,%ebp
 26b:	83 ec 28             	sub    $0x28,%esp
 26e:	a1 00 00 00 00       	mov    0x0,%eax
 273:	39 45 08             	cmp    %eax,0x8(%ebp)
 276:	75 36                	jne    2ae <put_buff+0x46>
 278:	a1 00 00 00 00       	mov    0x0,%eax
 27d:	8b 40 1c             	mov    0x1c(%eax),%eax
 280:	a3 00 00 00 00       	mov    %eax,0x0
 285:	a1 00 00 00 00       	mov    0x0,%eax
 28a:	85 c0                	test   %eax,%eax
 28c:	75 0f                	jne    29d <put_buff+0x35>
 28e:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
 295:	00 00 00 
 298:	e9 d9 00 00 00       	jmp    376 <put_buff+0x10e>
 29d:	a1 00 00 00 00       	mov    0x0,%eax
 2a2:	c7 40 18 00 00 00 00 	movl   $0x0,0x18(%eax)
 2a9:	e9 c8 00 00 00       	jmp    376 <put_buff+0x10e>
 2ae:	a1 00 00 00 00       	mov    0x0,%eax
 2b3:	39 45 08             	cmp    %eax,0x8(%ebp)
 2b6:	75 36                	jne    2ee <put_buff+0x86>
 2b8:	a1 00 00 00 00       	mov    0x0,%eax
 2bd:	8b 40 18             	mov    0x18(%eax),%eax
 2c0:	a3 00 00 00 00       	mov    %eax,0x0
 2c5:	a1 00 00 00 00       	mov    0x0,%eax
 2ca:	85 c0                	test   %eax,%eax
 2cc:	75 0f                	jne    2dd <put_buff+0x75>
 2ce:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
 2d5:	00 00 00 
 2d8:	e9 99 00 00 00       	jmp    376 <put_buff+0x10e>
 2dd:	a1 00 00 00 00       	mov    0x0,%eax
 2e2:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
 2e9:	e9 88 00 00 00       	jmp    376 <put_buff+0x10e>
 2ee:	a1 00 00 00 00       	mov    0x0,%eax
 2f3:	8b 40 1c             	mov    0x1c(%eax),%eax
 2f6:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 2f9:	eb 11                	jmp    30c <put_buff+0xa4>
 2fb:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 2fe:	3b 45 08             	cmp    0x8(%ebp),%eax
 301:	74 13                	je     316 <put_buff+0xae>
 303:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 306:	8b 40 1c             	mov    0x1c(%eax),%eax
 309:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 30c:	a1 00 00 00 00       	mov    0x0,%eax
 311:	39 45 fc             	cmp    %eax,0xfffffffc(%ebp)
 314:	75 e5                	jne    2fb <put_buff+0x93>
 316:	a1 00 00 00 00       	mov    0x0,%eax
 31b:	39 45 fc             	cmp    %eax,0xfffffffc(%ebp)
 31e:	75 0c                	jne    32c <put_buff+0xc4>
 320:	c7 45 ec ff ff ff ff 	movl   $0xffffffff,0xffffffec(%ebp)
 327:	e9 bb 00 00 00       	jmp    3e7 <put_buff+0x17f>
 32c:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 32f:	3b 45 08             	cmp    0x8(%ebp),%eax
 332:	74 24                	je     358 <put_buff+0xf0>
 334:	c7 44 24 0c 95 00 00 	movl   $0x95,0xc(%esp)
 33b:	00 
 33c:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 343:	00 
 344:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 34b:	00 
 34c:	c7 04 24 52 00 00 00 	movl   $0x52,(%esp)
 353:	e8 fc ff ff ff       	call   354 <put_buff+0xec>
 358:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 35b:	8b 50 18             	mov    0x18(%eax),%edx
 35e:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 361:	8b 40 1c             	mov    0x1c(%eax),%eax
 364:	89 42 1c             	mov    %eax,0x1c(%edx)
 367:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 36a:	8b 50 1c             	mov    0x1c(%eax),%edx
 36d:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 370:	8b 40 18             	mov    0x18(%eax),%eax
 373:	89 42 18             	mov    %eax,0x18(%edx)
 376:	8b 15 00 00 00 00    	mov    0x0,%edx
 37c:	8b 45 08             	mov    0x8(%ebp),%eax
 37f:	89 50 18             	mov    %edx,0x18(%eax)
 382:	8b 45 08             	mov    0x8(%ebp),%eax
 385:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
 38c:	a1 00 00 00 00       	mov    0x0,%eax
 391:	85 c0                	test   %eax,%eax
 393:	75 37                	jne    3cc <put_buff+0x164>
 395:	a1 00 00 00 00       	mov    0x0,%eax
 39a:	85 c0                	test   %eax,%eax
 39c:	74 24                	je     3c2 <put_buff+0x15a>
 39e:	c7 44 24 0c 9f 00 00 	movl   $0x9f,0xc(%esp)
 3a5:	00 
 3a6:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 3ad:	00 
 3ae:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 3b5:	00 
 3b6:	c7 04 24 61 00 00 00 	movl   $0x61,(%esp)
 3bd:	e8 fc ff ff ff       	call   3be <put_buff+0x156>
 3c2:	8b 45 08             	mov    0x8(%ebp),%eax
 3c5:	a3 00 00 00 00       	mov    %eax,0x0
 3ca:	eb 0c                	jmp    3d8 <put_buff+0x170>
 3cc:	8b 15 00 00 00 00    	mov    0x0,%edx
 3d2:	8b 45 08             	mov    0x8(%ebp),%eax
 3d5:	89 42 1c             	mov    %eax,0x1c(%edx)
 3d8:	8b 45 08             	mov    0x8(%ebp),%eax
 3db:	a3 00 00 00 00       	mov    %eax,0x0
 3e0:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
 3e7:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 3ea:	c9                   	leave  
 3eb:	c3                   	ret    

000003ec <sync_buff>:
 3ec:	55                   	push   %ebp
 3ed:	89 e5                	mov    %esp,%ebp
 3ef:	83 ec 38             	sub    $0x38,%esp
 3f2:	8b 45 08             	mov    0x8(%ebp),%eax
 3f5:	8b 40 20             	mov    0x20(%eax),%eax
 3f8:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
 3fb:	8b 45 08             	mov    0x8(%ebp),%eax
 3fe:	8b 40 28             	mov    0x28(%eax),%eax
 401:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
 404:	a1 00 00 00 00       	mov    0x0,%eax
 409:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 40c:	e9 88 00 00 00       	jmp    499 <sync_buff+0xad>
 411:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 414:	8b 40 04             	mov    0x4(%eax),%eax
 417:	3b 45 f4             	cmp    0xfffffff4(%ebp),%eax
 41a:	75 74                	jne    490 <sync_buff+0xa4>
 41c:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 41f:	8b 40 08             	mov    0x8(%eax),%eax
 422:	3b 45 f8             	cmp    0xfffffff8(%ebp),%eax
 425:	75 69                	jne    490 <sync_buff+0xa4>
 427:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 42a:	8b 40 14             	mov    0x14(%eax),%eax
 42d:	83 f8 01             	cmp    $0x1,%eax
 430:	75 15                	jne    447 <sync_buff+0x5b>
 432:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 435:	89 04 24             	mov    %eax,(%esp)
 438:	e8 fc ff ff ff       	call   439 <sync_buff+0x4d>
 43d:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 440:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
 447:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
 44b:	75 43                	jne    490 <sync_buff+0xa4>
 44d:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
 450:	8b 02                	mov    (%edx),%eax
 452:	89 45 d4             	mov    %eax,0xffffffd4(%ebp)
 455:	8b 42 04             	mov    0x4(%edx),%eax
 458:	89 45 d8             	mov    %eax,0xffffffd8(%ebp)
 45b:	8b 42 08             	mov    0x8(%edx),%eax
 45e:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
 461:	8b 42 0c             	mov    0xc(%edx),%eax
 464:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
 467:	8b 42 10             	mov    0x10(%edx),%eax
 46a:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
 46d:	8b 42 14             	mov    0x14(%edx),%eax
 470:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
 473:	8b 42 18             	mov    0x18(%edx),%eax
 476:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
 479:	8b 42 1c             	mov    0x1c(%edx),%eax
 47c:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
 47f:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 482:	89 04 24             	mov    %eax,(%esp)
 485:	e8 fc ff ff ff       	call   486 <sync_buff+0x9a>
 48a:	8d 45 d4             	lea    0xffffffd4(%ebp),%eax
 48d:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 490:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 493:	8b 40 1c             	mov    0x1c(%eax),%eax
 496:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 499:	83 7d fc 00          	cmpl   $0x0,0xfffffffc(%ebp)
 49d:	0f 85 6e ff ff ff    	jne    411 <sync_buff+0x25>
 4a3:	b8 00 00 00 00       	mov    $0x0,%eax
 4a8:	c9                   	leave  
 4a9:	c3                   	ret    

000004aa <write_buff>:
 4aa:	55                   	push   %ebp
 4ab:	89 e5                	mov    %esp,%ebp
 4ad:	57                   	push   %edi
 4ae:	56                   	push   %esi
 4af:	83 ec 50             	sub    $0x50,%esp
 4b2:	8b 45 08             	mov    0x8(%ebp),%eax
 4b5:	8b 40 04             	mov    0x4(%eax),%eax
 4b8:	89 45 d0             	mov    %eax,0xffffffd0(%ebp)
 4bb:	8b 45 08             	mov    0x8(%ebp),%eax
 4be:	8b 40 08             	mov    0x8(%eax),%eax
 4c1:	89 45 d4             	mov    %eax,0xffffffd4(%ebp)
 4c4:	c7 45 d8 00 00 00 00 	movl   $0x0,0xffffffd8(%ebp)
 4cb:	eb 26                	jmp    4f3 <write_buff+0x49>
 4cd:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
 4d0:	8b 40 24             	mov    0x24(%eax),%eax
 4d3:	85 c0                	test   %eax,%eax
 4d5:	74 18                	je     4ef <write_buff+0x45>
 4d7:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
 4da:	8b 40 20             	mov    0x20(%eax),%eax
 4dd:	3b 45 d0             	cmp    0xffffffd0(%ebp),%eax
 4e0:	75 0d                	jne    4ef <write_buff+0x45>
 4e2:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
 4e5:	8b 40 28             	mov    0x28(%eax),%eax
 4e8:	3b 45 d4             	cmp    0xffffffd4(%ebp),%eax
 4eb:	75 02                	jne    4ef <write_buff+0x45>
 4ed:	eb 0e                	jmp    4fd <write_buff+0x53>
 4ef:	83 45 d8 2c          	addl   $0x2c,0xffffffd8(%ebp)
 4f3:	b8 00 0b 00 00       	mov    $0xb00,%eax
 4f8:	39 45 d8             	cmp    %eax,0xffffffd8(%ebp)
 4fb:	72 d0                	jb     4cd <write_buff+0x23>
 4fd:	b8 00 0b 00 00       	mov    $0xb00,%eax
 502:	39 45 d8             	cmp    %eax,0xffffffd8(%ebp)
 505:	72 24                	jb     52b <write_buff+0x81>
 507:	c7 44 24 0c ea 00 00 	movl   $0xea,0xc(%esp)
 50e:	00 
 50f:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 516:	00 
 517:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 51e:	00 
 51f:	c7 04 24 74 00 00 00 	movl   $0x74,(%esp)
 526:	e8 fc ff ff ff       	call   527 <write_buff+0x7d>
 52b:	8b 45 08             	mov    0x8(%ebp),%eax
 52e:	8b 00                	mov    (%eax),%eax
 530:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
 533:	8b 45 08             	mov    0x8(%ebp),%eax
 536:	8b 40 0c             	mov    0xc(%eax),%eax
 539:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
 53c:	8b 45 08             	mov    0x8(%ebp),%eax
 53f:	8b 40 10             	mov    0x10(%eax),%eax
 542:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
 545:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
 548:	8b 40 08             	mov    0x8(%eax),%eax
 54b:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
 54e:	83 7d e0 00          	cmpl   $0x0,0xffffffe0(%ebp)
 552:	78 09                	js     55d <write_buff+0xb3>
 554:	81 7d e0 ff 8f 01 00 	cmpl   $0x18fff,0xffffffe0(%ebp)
 55b:	7e 18                	jle    575 <write_buff+0xcb>
 55d:	c7 04 24 9a 00 00 00 	movl   $0x9a,(%esp)
 564:	e8 fc ff ff ff       	call   565 <write_buff+0xbb>
 569:	c7 45 c4 ff ff ff ff 	movl   $0xffffffff,0xffffffc4(%ebp)
 570:	e9 c9 01 00 00       	jmp    73e <write_buff+0x294>
 575:	8b 55 e0             	mov    0xffffffe0(%ebp),%edx
 578:	89 d0                	mov    %edx,%eax
 57a:	c1 f8 1f             	sar    $0x1f,%eax
 57d:	c1 e8 17             	shr    $0x17,%eax
 580:	01 d0                	add    %edx,%eax
 582:	c1 f8 09             	sar    $0x9,%eax
 585:	89 c2                	mov    %eax,%edx
 587:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
 58a:	8d 04 02             	lea    (%edx,%eax,1),%eax
 58d:	83 c0 06             	add    $0x6,%eax
 590:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
 593:	8b 55 e0             	mov    0xffffffe0(%ebp),%edx
 596:	89 d0                	mov    %edx,%eax
 598:	c1 f8 1f             	sar    $0x1f,%eax
 59b:	89 c1                	mov    %eax,%ecx
 59d:	c1 e9 17             	shr    $0x17,%ecx
 5a0:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
 5a3:	25 ff 01 00 00       	and    $0x1ff,%eax
 5a8:	29 c8                	sub    %ecx,%eax
 5aa:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
 5ad:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
 5b4:	c7 45 f0 00 00 00 00 	movl   $0x0,0xfffffff0(%ebp)
 5bb:	e9 6d 01 00 00       	jmp    72d <write_buff+0x283>
 5c0:	8b 4d e8             	mov    0xffffffe8(%ebp),%ecx
 5c3:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
 5c6:	8b 50 08             	mov    0x8(%eax),%edx
 5c9:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
 5cc:	8b 40 0c             	mov    0xc(%eax),%eax
 5cf:	8d 04 02             	lea    (%edx,%eax,1),%eax
 5d2:	83 c0 06             	add    $0x6,%eax
 5d5:	39 c1                	cmp    %eax,%ecx
 5d7:	72 35                	jb     60e <write_buff+0x164>
 5d9:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
 5dc:	8b 50 0c             	mov    0xc(%eax),%edx
 5df:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
 5e2:	8b 40 08             	mov    0x8(%eax),%eax
 5e5:	83 c0 06             	add    $0x6,%eax
 5e8:	89 54 24 0c          	mov    %edx,0xc(%esp)
 5ec:	89 44 24 08          	mov    %eax,0x8(%esp)
 5f0:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
 5f3:	89 44 24 04          	mov    %eax,0x4(%esp)
 5f7:	c7 04 24 b4 00 00 00 	movl   $0xb4,(%esp)
 5fe:	e8 fc ff ff ff       	call   5ff <write_buff+0x155>
 603:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 606:	89 45 c4             	mov    %eax,0xffffffc4(%ebp)
 609:	e9 30 01 00 00       	jmp    73e <write_buff+0x294>
 60e:	b8 00 02 00 00       	mov    $0x200,%eax
 613:	2b 45 e0             	sub    0xffffffe0(%ebp),%eax
 616:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
 619:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
 61c:	3b 45 e4             	cmp    0xffffffe4(%ebp),%eax
 61f:	0f 8c 80 00 00 00    	jl     6a5 <write_buff+0x1fb>
 625:	81 7d e4 00 02 00 00 	cmpl   $0x200,0xffffffe4(%ebp)
 62c:	74 26                	je     654 <write_buff+0x1aa>
 62e:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
 631:	c1 e0 09             	shl    $0x9,%eax
 634:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
 63b:	00 
 63c:	89 44 24 08          	mov    %eax,0x8(%esp)
 640:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 647:	00 
 648:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
 64f:	e8 fc ff ff ff       	call   650 <write_buff+0x1a6>
 654:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
 657:	8d b8 00 00 00 00    	lea    0x0(%eax),%edi
 65d:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 660:	89 c6                	mov    %eax,%esi
 662:	03 75 dc             	add    0xffffffdc(%ebp),%esi
 665:	8b 4d e4             	mov    0xffffffe4(%ebp),%ecx
 668:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 66a:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
 66d:	c1 e0 09             	shl    $0x9,%eax
 670:	83 45 e8 01          	addl   $0x1,0xffffffe8(%ebp)
 674:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
 67b:	00 
 67c:	89 44 24 08          	mov    %eax,0x8(%esp)
 680:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 687:	00 
 688:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
 68f:	e8 fc ff ff ff       	call   690 <write_buff+0x1e6>
 694:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
 697:	01 45 f0             	add    %eax,0xfffffff0(%ebp)
 69a:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 69d:	89 45 c4             	mov    %eax,0xffffffc4(%ebp)
 6a0:	e9 99 00 00 00       	jmp    73e <write_buff+0x294>
 6a5:	81 7d f4 00 02 00 00 	cmpl   $0x200,0xfffffff4(%ebp)
 6ac:	74 26                	je     6d4 <write_buff+0x22a>
 6ae:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
 6b1:	c1 e0 09             	shl    $0x9,%eax
 6b4:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
 6bb:	00 
 6bc:	89 44 24 08          	mov    %eax,0x8(%esp)
 6c0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 6c7:	00 
 6c8:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
 6cf:	e8 fc ff ff ff       	call   6d0 <write_buff+0x226>
 6d4:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
 6d7:	8d b8 00 00 00 00    	lea    0x0(%eax),%edi
 6dd:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 6e0:	89 c6                	mov    %eax,%esi
 6e2:	03 75 dc             	add    0xffffffdc(%ebp),%esi
 6e5:	8b 4d f4             	mov    0xfffffff4(%ebp),%ecx
 6e8:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 6ea:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
 6ed:	c1 e0 09             	shl    $0x9,%eax
 6f0:	83 45 e8 01          	addl   $0x1,0xffffffe8(%ebp)
 6f4:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
 6fb:	00 
 6fc:	89 44 24 08          	mov    %eax,0x8(%esp)
 700:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 707:	00 
 708:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
 70f:	e8 fc ff ff ff       	call   710 <write_buff+0x266>
 714:	c7 45 e0 00 00 00 00 	movl   $0x0,0xffffffe0(%ebp)
 71b:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
 71e:	01 45 ec             	add    %eax,0xffffffec(%ebp)
 721:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
 724:	29 45 e4             	sub    %eax,0xffffffe4(%ebp)
 727:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
 72a:	01 45 f0             	add    %eax,0xfffffff0(%ebp)
 72d:	83 7d e4 00          	cmpl   $0x0,0xffffffe4(%ebp)
 731:	0f 8f 89 fe ff ff    	jg     5c0 <write_buff+0x116>
 737:	c7 45 c4 00 00 00 00 	movl   $0x0,0xffffffc4(%ebp)
 73e:	8b 45 c4             	mov    0xffffffc4(%ebp),%eax
 741:	83 c4 50             	add    $0x50,%esp
 744:	5e                   	pop    %esi
 745:	5f                   	pop    %edi
 746:	5d                   	pop    %ebp
 747:	c3                   	ret    

00000748 <read_buff>:
 748:	55                   	push   %ebp
 749:	89 e5                	mov    %esp,%ebp
 74b:	57                   	push   %edi
 74c:	56                   	push   %esi
 74d:	83 ec 50             	sub    $0x50,%esp
 750:	8b 45 08             	mov    0x8(%ebp),%eax
 753:	8b 40 04             	mov    0x4(%eax),%eax
 756:	89 45 d0             	mov    %eax,0xffffffd0(%ebp)
 759:	8b 45 08             	mov    0x8(%ebp),%eax
 75c:	8b 40 08             	mov    0x8(%eax),%eax
 75f:	89 45 d4             	mov    %eax,0xffffffd4(%ebp)
 762:	c7 45 d8 00 00 00 00 	movl   $0x0,0xffffffd8(%ebp)
 769:	eb 26                	jmp    791 <read_buff+0x49>
 76b:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
 76e:	8b 40 24             	mov    0x24(%eax),%eax
 771:	85 c0                	test   %eax,%eax
 773:	74 18                	je     78d <read_buff+0x45>
 775:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
 778:	8b 40 20             	mov    0x20(%eax),%eax
 77b:	3b 45 d0             	cmp    0xffffffd0(%ebp),%eax
 77e:	75 0d                	jne    78d <read_buff+0x45>
 780:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
 783:	8b 40 28             	mov    0x28(%eax),%eax
 786:	3b 45 d4             	cmp    0xffffffd4(%ebp),%eax
 789:	75 02                	jne    78d <read_buff+0x45>
 78b:	eb 0e                	jmp    79b <read_buff+0x53>
 78d:	83 45 d8 2c          	addl   $0x2c,0xffffffd8(%ebp)
 791:	b8 00 0b 00 00       	mov    $0xb00,%eax
 796:	39 45 d8             	cmp    %eax,0xffffffd8(%ebp)
 799:	72 d0                	jb     76b <read_buff+0x23>
 79b:	b8 00 0b 00 00       	mov    $0xb00,%eax
 7a0:	39 45 d8             	cmp    %eax,0xffffffd8(%ebp)
 7a3:	72 24                	jb     7c9 <read_buff+0x81>
 7a5:	c7 44 24 0c 36 01 00 	movl   $0x136,0xc(%esp)
 7ac:	00 
 7ad:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 7b4:	00 
 7b5:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 7bc:	00 
 7bd:	c7 04 24 74 00 00 00 	movl   $0x74,(%esp)
 7c4:	e8 fc ff ff ff       	call   7c5 <read_buff+0x7d>
 7c9:	8b 45 08             	mov    0x8(%ebp),%eax
 7cc:	8b 00                	mov    (%eax),%eax
 7ce:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
 7d1:	8b 45 08             	mov    0x8(%ebp),%eax
 7d4:	8b 40 0c             	mov    0xc(%eax),%eax
 7d7:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
 7da:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
 7dd:	8b 50 04             	mov    0x4(%eax),%edx
 7e0:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
 7e3:	89 d1                	mov    %edx,%ecx
 7e5:	29 c1                	sub    %eax,%ecx
 7e7:	89 c8                	mov    %ecx,%eax
 7e9:	89 45 c0             	mov    %eax,0xffffffc0(%ebp)
 7ec:	81 7d c0 00 10 00 00 	cmpl   $0x1000,0xffffffc0(%ebp)
 7f3:	76 07                	jbe    7fc <read_buff+0xb4>
 7f5:	c7 45 c0 00 10 00 00 	movl   $0x1000,0xffffffc0(%ebp)
 7fc:	8b 45 c0             	mov    0xffffffc0(%ebp),%eax
 7ff:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
 802:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
 805:	8b 40 08             	mov    0x8(%eax),%eax
 808:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
 80b:	83 7d e0 00          	cmpl   $0x0,0xffffffe0(%ebp)
 80f:	78 09                	js     81a <read_buff+0xd2>
 811:	81 7d e0 ff 8f 01 00 	cmpl   $0x18fff,0xffffffe0(%ebp)
 818:	7e 24                	jle    83e <read_buff+0xf6>
 81a:	c7 44 24 0c 3d 01 00 	movl   $0x13d,0xc(%esp)
 821:	00 
 822:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 829:	00 
 82a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 831:	00 
 832:	c7 04 24 ec 00 00 00 	movl   $0xec,(%esp)
 839:	e8 fc ff ff ff       	call   83a <read_buff+0xf2>
 83e:	8b 55 e0             	mov    0xffffffe0(%ebp),%edx
 841:	89 d0                	mov    %edx,%eax
 843:	c1 f8 1f             	sar    $0x1f,%eax
 846:	c1 e8 17             	shr    $0x17,%eax
 849:	01 d0                	add    %edx,%eax
 84b:	c1 f8 09             	sar    $0x9,%eax
 84e:	89 c2                	mov    %eax,%edx
 850:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
 853:	8d 04 02             	lea    (%edx,%eax,1),%eax
 856:	83 c0 06             	add    $0x6,%eax
 859:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
 85c:	8b 55 e0             	mov    0xffffffe0(%ebp),%edx
 85f:	89 d0                	mov    %edx,%eax
 861:	c1 f8 1f             	sar    $0x1f,%eax
 864:	89 c1                	mov    %eax,%ecx
 866:	c1 e9 17             	shr    $0x17,%ecx
 869:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
 86c:	25 ff 01 00 00       	and    $0x1ff,%eax
 871:	29 c8                	sub    %ecx,%eax
 873:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
 876:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
 87d:	c7 45 f0 00 00 00 00 	movl   $0x0,0xfffffff0(%ebp)
 884:	c7 45 f4 00 00 00 00 	movl   $0x0,0xfffffff4(%ebp)
 88b:	e9 e4 00 00 00       	jmp    974 <read_buff+0x22c>
 890:	8b 4d e8             	mov    0xffffffe8(%ebp),%ecx
 893:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
 896:	8b 50 08             	mov    0x8(%eax),%edx
 899:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
 89c:	8b 40 0c             	mov    0xc(%eax),%eax
 89f:	8d 04 02             	lea    (%edx,%eax,1),%eax
 8a2:	83 c0 06             	add    $0x6,%eax
 8a5:	39 c1                	cmp    %eax,%ecx
 8a7:	72 32                	jb     8db <read_buff+0x193>
 8a9:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
 8ac:	8b 50 0c             	mov    0xc(%eax),%edx
 8af:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
 8b2:	8b 40 08             	mov    0x8(%eax),%eax
 8b5:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8b9:	89 44 24 08          	mov    %eax,0x8(%esp)
 8bd:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
 8c0:	89 44 24 04          	mov    %eax,0x4(%esp)
 8c4:	c7 04 24 14 01 00 00 	movl   $0x114,(%esp)
 8cb:	e8 fc ff ff ff       	call   8cc <read_buff+0x184>
 8d0:	8b 4d f4             	mov    0xfffffff4(%ebp),%ecx
 8d3:	89 4d c4             	mov    %ecx,0xffffffc4(%ebp)
 8d6:	e9 b4 00 00 00       	jmp    98f <read_buff+0x247>
 8db:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
 8de:	c1 e0 09             	shl    $0x9,%eax
 8e1:	83 45 e8 01          	addl   $0x1,0xffffffe8(%ebp)
 8e5:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
 8ec:	00 
 8ed:	89 44 24 08          	mov    %eax,0x8(%esp)
 8f1:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8f8:	00 
 8f9:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
 900:	e8 fc ff ff ff       	call   901 <read_buff+0x1b9>
 905:	b8 00 02 00 00       	mov    $0x200,%eax
 90a:	2b 45 e0             	sub    0xffffffe0(%ebp),%eax
 90d:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
 910:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 913:	3b 45 e4             	cmp    0xffffffe4(%ebp),%eax
 916:	7c 2d                	jl     945 <read_buff+0x1fd>
 918:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 91b:	89 c7                	mov    %eax,%edi
 91d:	03 7d dc             	add    0xffffffdc(%ebp),%edi
 920:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
 923:	8d b0 00 00 00 00    	lea    0x0(%eax),%esi
 929:	8b 4d e4             	mov    0xffffffe4(%ebp),%ecx
 92c:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 92e:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
 931:	01 45 f4             	add    %eax,0xfffffff4(%ebp)
 934:	8b 55 08             	mov    0x8(%ebp),%edx
 937:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
 93a:	89 42 10             	mov    %eax,0x10(%edx)
 93d:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
 940:	89 45 c4             	mov    %eax,0xffffffc4(%ebp)
 943:	eb 4a                	jmp    98f <read_buff+0x247>
 945:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 948:	89 c7                	mov    %eax,%edi
 94a:	03 7d dc             	add    0xffffffdc(%ebp),%edi
 94d:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
 950:	8d b0 00 00 00 00    	lea    0x0(%eax),%esi
 956:	8b 4d f0             	mov    0xfffffff0(%ebp),%ecx
 959:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
 95b:	c7 45 e0 00 00 00 00 	movl   $0x0,0xffffffe0(%ebp)
 962:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 965:	01 45 ec             	add    %eax,0xffffffec(%ebp)
 968:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 96b:	29 45 e4             	sub    %eax,0xffffffe4(%ebp)
 96e:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 971:	01 45 f4             	add    %eax,0xfffffff4(%ebp)
 974:	83 7d e4 00          	cmpl   $0x0,0xffffffe4(%ebp)
 978:	0f 8f 12 ff ff ff    	jg     890 <read_buff+0x148>
 97e:	8b 45 08             	mov    0x8(%ebp),%eax
 981:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
 988:	c7 45 c4 00 00 00 00 	movl   $0x0,0xffffffc4(%ebp)
 98f:	8b 45 c4             	mov    0xffffffc4(%ebp),%eax
 992:	83 c4 50             	add    $0x50,%esp
 995:	5e                   	pop    %esi
 996:	5f                   	pop    %edi
 997:	5d                   	pop    %ebp
 998:	c3                   	ret    
