
pm.o:     file format elf32-i386

Disassembly of section .text:

00000000 <init_gate>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 0c             	sub    $0xc,%esp
   6:	8b 45 0c             	mov    0xc(%ebp),%eax
   9:	8b 55 14             	mov    0x14(%ebp),%edx
   c:	8b 4d 18             	mov    0x18(%ebp),%ecx
   f:	66 89 45 fc          	mov    %ax,0xfffffffc(%ebp)
  13:	88 55 f8             	mov    %dl,0xfffffff8(%ebp)
  16:	88 4d f4             	mov    %cl,0xfffffff4(%ebp)
  19:	8b 45 10             	mov    0x10(%ebp),%eax
  1c:	89 c2                	mov    %eax,%edx
  1e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  23:	21 c2                	and    %eax,%edx
  25:	8b 45 08             	mov    0x8(%ebp),%eax
  28:	66 89 10             	mov    %dx,(%eax)
  2b:	8b 55 08             	mov    0x8(%ebp),%edx
  2e:	0f b7 45 fc          	movzwl 0xfffffffc(%ebp),%eax
  32:	66 89 42 02          	mov    %ax,0x2(%edx)
  36:	8b 55 08             	mov    0x8(%ebp),%edx
  39:	0f b6 45 f8          	movzbl 0xfffffff8(%ebp),%eax
  3d:	88 42 04             	mov    %al,0x4(%edx)
  40:	8b 55 08             	mov    0x8(%ebp),%edx
  43:	0f b6 45 f4          	movzbl 0xfffffff4(%ebp),%eax
  47:	88 42 05             	mov    %al,0x5(%edx)
  4a:	8b 45 10             	mov    0x10(%ebp),%eax
  4d:	c1 f8 10             	sar    $0x10,%eax
  50:	89 c2                	mov    %eax,%edx
  52:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  57:	21 c2                	and    %eax,%edx
  59:	8b 45 08             	mov    0x8(%ebp),%eax
  5c:	66 89 50 06          	mov    %dx,0x6(%eax)
  60:	c9                   	leave  
  61:	c3                   	ret    

00000062 <init_idt_exception>:
  62:	55                   	push   %ebp
  63:	89 e5                	mov    %esp,%ebp
  65:	83 ec 14             	sub    $0x14,%esp
  68:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
  6f:	00 
  70:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
  77:	00 
  78:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  7f:	00 
  80:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
  87:	00 
  88:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  8f:	e8 fc ff ff ff       	call   90 <init_idt_exception+0x2e>
  94:	b8 08 00 00 00       	mov    $0x8,%eax
  99:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
  a0:	00 
  a1:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
  a8:	00 
  a9:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  b0:	00 
  b1:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
  b8:	00 
  b9:	89 04 24             	mov    %eax,(%esp)
  bc:	e8 fc ff ff ff       	call   bd <init_idt_exception+0x5b>
  c1:	b8 10 00 00 00       	mov    $0x10,%eax
  c6:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
  cd:	00 
  ce:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
  d5:	00 
  d6:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  dd:	00 
  de:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
  e5:	00 
  e6:	89 04 24             	mov    %eax,(%esp)
  e9:	e8 fc ff ff ff       	call   ea <init_idt_exception+0x88>
  ee:	b8 18 00 00 00       	mov    $0x18,%eax
  f3:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
  fa:	00 
  fb:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 102:	00 
 103:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 10a:	00 
 10b:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 112:	00 
 113:	89 04 24             	mov    %eax,(%esp)
 116:	e8 fc ff ff ff       	call   117 <init_idt_exception+0xb5>
 11b:	b8 20 00 00 00       	mov    $0x20,%eax
 120:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 127:	00 
 128:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 12f:	00 
 130:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 137:	00 
 138:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 13f:	00 
 140:	89 04 24             	mov    %eax,(%esp)
 143:	e8 fc ff ff ff       	call   144 <init_idt_exception+0xe2>
 148:	b8 28 00 00 00       	mov    $0x28,%eax
 14d:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 154:	00 
 155:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 15c:	00 
 15d:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 164:	00 
 165:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 16c:	00 
 16d:	89 04 24             	mov    %eax,(%esp)
 170:	e8 fc ff ff ff       	call   171 <init_idt_exception+0x10f>
 175:	b8 30 00 00 00       	mov    $0x30,%eax
 17a:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 181:	00 
 182:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 189:	00 
 18a:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 191:	00 
 192:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 199:	00 
 19a:	89 04 24             	mov    %eax,(%esp)
 19d:	e8 fc ff ff ff       	call   19e <init_idt_exception+0x13c>
 1a2:	b8 38 00 00 00       	mov    $0x38,%eax
 1a7:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 1ae:	00 
 1af:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 1b6:	00 
 1b7:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 1be:	00 
 1bf:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 1c6:	00 
 1c7:	89 04 24             	mov    %eax,(%esp)
 1ca:	e8 fc ff ff ff       	call   1cb <init_idt_exception+0x169>
 1cf:	b8 40 00 00 00       	mov    $0x40,%eax
 1d4:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 1db:	00 
 1dc:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 1e3:	00 
 1e4:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 1eb:	00 
 1ec:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 1f3:	00 
 1f4:	89 04 24             	mov    %eax,(%esp)
 1f7:	e8 fc ff ff ff       	call   1f8 <init_idt_exception+0x196>
 1fc:	b8 48 00 00 00       	mov    $0x48,%eax
 201:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 208:	00 
 209:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 210:	00 
 211:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 218:	00 
 219:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 220:	00 
 221:	89 04 24             	mov    %eax,(%esp)
 224:	e8 fc ff ff ff       	call   225 <init_idt_exception+0x1c3>
 229:	b8 50 00 00 00       	mov    $0x50,%eax
 22e:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 235:	00 
 236:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 23d:	00 
 23e:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 245:	00 
 246:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 24d:	00 
 24e:	89 04 24             	mov    %eax,(%esp)
 251:	e8 fc ff ff ff       	call   252 <init_idt_exception+0x1f0>
 256:	b8 58 00 00 00       	mov    $0x58,%eax
 25b:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 262:	00 
 263:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 26a:	00 
 26b:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 272:	00 
 273:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 27a:	00 
 27b:	89 04 24             	mov    %eax,(%esp)
 27e:	e8 fc ff ff ff       	call   27f <init_idt_exception+0x21d>
 283:	b8 60 00 00 00       	mov    $0x60,%eax
 288:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 28f:	00 
 290:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 297:	00 
 298:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 29f:	00 
 2a0:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 2a7:	00 
 2a8:	89 04 24             	mov    %eax,(%esp)
 2ab:	e8 fc ff ff ff       	call   2ac <init_idt_exception+0x24a>
 2b0:	b8 68 00 00 00       	mov    $0x68,%eax
 2b5:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 2bc:	00 
 2bd:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 2c4:	00 
 2c5:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 2cc:	00 
 2cd:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 2d4:	00 
 2d5:	89 04 24             	mov    %eax,(%esp)
 2d8:	e8 fc ff ff ff       	call   2d9 <init_idt_exception+0x277>
 2dd:	b8 70 00 00 00       	mov    $0x70,%eax
 2e2:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 2e9:	00 
 2ea:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 2f1:	00 
 2f2:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 2f9:	00 
 2fa:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 301:	00 
 302:	89 04 24             	mov    %eax,(%esp)
 305:	e8 fc ff ff ff       	call   306 <init_idt_exception+0x2a4>
 30a:	b8 80 00 00 00       	mov    $0x80,%eax
 30f:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 316:	00 
 317:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 31e:	00 
 31f:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 326:	00 
 327:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 32e:	00 
 32f:	89 04 24             	mov    %eax,(%esp)
 332:	e8 fc ff ff ff       	call   333 <init_idt_exception+0x2d1>
 337:	b8 88 00 00 00       	mov    $0x88,%eax
 33c:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 343:	00 
 344:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 34b:	00 
 34c:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 353:	00 
 354:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 35b:	00 
 35c:	89 04 24             	mov    %eax,(%esp)
 35f:	e8 fc ff ff ff       	call   360 <init_idt_exception+0x2fe>
 364:	b8 90 00 00 00       	mov    $0x90,%eax
 369:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 370:	00 
 371:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 378:	00 
 379:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 380:	00 
 381:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 388:	00 
 389:	89 04 24             	mov    %eax,(%esp)
 38c:	e8 fc ff ff ff       	call   38d <init_idt_exception+0x32b>
 391:	b8 98 00 00 00       	mov    $0x98,%eax
 396:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 39d:	00 
 39e:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 3a5:	00 
 3a6:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 3ad:	00 
 3ae:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 3b5:	00 
 3b6:	89 04 24             	mov    %eax,(%esp)
 3b9:	e8 fc ff ff ff       	call   3ba <init_idt_exception+0x358>
 3be:	c9                   	leave  
 3bf:	c3                   	ret    

000003c0 <init_idt_hwint>:
 3c0:	55                   	push   %ebp
 3c1:	89 e5                	mov    %esp,%ebp
 3c3:	83 ec 14             	sub    $0x14,%esp
 3c6:	b8 00 01 00 00       	mov    $0x100,%eax
 3cb:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 3d2:	00 
 3d3:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 3da:	00 
 3db:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 3e2:	00 
 3e3:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 3ea:	00 
 3eb:	89 04 24             	mov    %eax,(%esp)
 3ee:	e8 fc ff ff ff       	call   3ef <init_idt_hwint+0x2f>
 3f3:	b8 08 01 00 00       	mov    $0x108,%eax
 3f8:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 3ff:	00 
 400:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 407:	00 
 408:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 40f:	00 
 410:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 417:	00 
 418:	89 04 24             	mov    %eax,(%esp)
 41b:	e8 fc ff ff ff       	call   41c <init_idt_hwint+0x5c>
 420:	b8 10 01 00 00       	mov    $0x110,%eax
 425:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 42c:	00 
 42d:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 434:	00 
 435:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 43c:	00 
 43d:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 444:	00 
 445:	89 04 24             	mov    %eax,(%esp)
 448:	e8 fc ff ff ff       	call   449 <init_idt_hwint+0x89>
 44d:	b8 18 01 00 00       	mov    $0x118,%eax
 452:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 459:	00 
 45a:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 461:	00 
 462:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 469:	00 
 46a:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 471:	00 
 472:	89 04 24             	mov    %eax,(%esp)
 475:	e8 fc ff ff ff       	call   476 <init_idt_hwint+0xb6>
 47a:	b8 20 01 00 00       	mov    $0x120,%eax
 47f:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 486:	00 
 487:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 48e:	00 
 48f:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 496:	00 
 497:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 49e:	00 
 49f:	89 04 24             	mov    %eax,(%esp)
 4a2:	e8 fc ff ff ff       	call   4a3 <init_idt_hwint+0xe3>
 4a7:	b8 28 01 00 00       	mov    $0x128,%eax
 4ac:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 4b3:	00 
 4b4:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 4bb:	00 
 4bc:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 4c3:	00 
 4c4:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 4cb:	00 
 4cc:	89 04 24             	mov    %eax,(%esp)
 4cf:	e8 fc ff ff ff       	call   4d0 <init_idt_hwint+0x110>
 4d4:	b8 30 01 00 00       	mov    $0x130,%eax
 4d9:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 4e0:	00 
 4e1:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 4e8:	00 
 4e9:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 4f0:	00 
 4f1:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 4f8:	00 
 4f9:	89 04 24             	mov    %eax,(%esp)
 4fc:	e8 fc ff ff ff       	call   4fd <init_idt_hwint+0x13d>
 501:	b8 38 01 00 00       	mov    $0x138,%eax
 506:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 50d:	00 
 50e:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 515:	00 
 516:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 51d:	00 
 51e:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 525:	00 
 526:	89 04 24             	mov    %eax,(%esp)
 529:	e8 fc ff ff ff       	call   52a <init_idt_hwint+0x16a>
 52e:	b8 40 01 00 00       	mov    $0x140,%eax
 533:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 53a:	00 
 53b:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 542:	00 
 543:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 54a:	00 
 54b:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 552:	00 
 553:	89 04 24             	mov    %eax,(%esp)
 556:	e8 fc ff ff ff       	call   557 <init_idt_hwint+0x197>
 55b:	b8 48 01 00 00       	mov    $0x148,%eax
 560:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 567:	00 
 568:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 56f:	00 
 570:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 577:	00 
 578:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 57f:	00 
 580:	89 04 24             	mov    %eax,(%esp)
 583:	e8 fc ff ff ff       	call   584 <init_idt_hwint+0x1c4>
 588:	b8 50 01 00 00       	mov    $0x150,%eax
 58d:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 594:	00 
 595:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 59c:	00 
 59d:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 5a4:	00 
 5a5:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 5ac:	00 
 5ad:	89 04 24             	mov    %eax,(%esp)
 5b0:	e8 fc ff ff ff       	call   5b1 <init_idt_hwint+0x1f1>
 5b5:	b8 58 01 00 00       	mov    $0x158,%eax
 5ba:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 5c1:	00 
 5c2:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 5c9:	00 
 5ca:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 5d1:	00 
 5d2:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 5d9:	00 
 5da:	89 04 24             	mov    %eax,(%esp)
 5dd:	e8 fc ff ff ff       	call   5de <init_idt_hwint+0x21e>
 5e2:	b8 60 01 00 00       	mov    $0x160,%eax
 5e7:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 5ee:	00 
 5ef:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 5f6:	00 
 5f7:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 5fe:	00 
 5ff:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 606:	00 
 607:	89 04 24             	mov    %eax,(%esp)
 60a:	e8 fc ff ff ff       	call   60b <init_idt_hwint+0x24b>
 60f:	b8 68 01 00 00       	mov    $0x168,%eax
 614:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 61b:	00 
 61c:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 623:	00 
 624:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 62b:	00 
 62c:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 633:	00 
 634:	89 04 24             	mov    %eax,(%esp)
 637:	e8 fc ff ff ff       	call   638 <init_idt_hwint+0x278>
 63c:	b8 70 01 00 00       	mov    $0x170,%eax
 641:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 648:	00 
 649:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 650:	00 
 651:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 658:	00 
 659:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 660:	00 
 661:	89 04 24             	mov    %eax,(%esp)
 664:	e8 fc ff ff ff       	call   665 <init_idt_hwint+0x2a5>
 669:	b8 78 01 00 00       	mov    $0x178,%eax
 66e:	c7 44 24 10 8e 00 00 	movl   $0x8e,0x10(%esp)
 675:	00 
 676:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 67d:	00 
 67e:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 685:	00 
 686:	c7 44 24 04 10 00 00 	movl   $0x10,0x4(%esp)
 68d:	00 
 68e:	89 04 24             	mov    %eax,(%esp)
 691:	e8 fc ff ff ff       	call   692 <init_idt_hwint+0x2d2>
 696:	c9                   	leave  
 697:	c3                   	ret    

00000698 <init_idt_swint>:
 698:	55                   	push   %ebp
 699:	89 e5                	mov    %esp,%ebp
 69b:	83 ec 14             	sub    $0x14,%esp
 69e:	b8 00 04 00 00       	mov    $0x400,%eax
 6a3:	c7 44 24 10 ee 00 00 	movl   $0xee,0x10(%esp)
 6aa:	00 
 6ab:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 6b2:	00 
 6b3:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 6ba:	00 
 6bb:	c7 44 24 04 13 00 00 	movl   $0x13,0x4(%esp)
 6c2:	00 
 6c3:	89 04 24             	mov    %eax,(%esp)
 6c6:	e8 fc ff ff ff       	call   6c7 <init_idt_swint+0x2f>
 6cb:	c9                   	leave  
 6cc:	c3                   	ret    

000006cd <exception_handler>:
 6cd:	55                   	push   %ebp
 6ce:	89 e5                	mov    %esp,%ebp
 6d0:	83 ec 28             	sub    $0x28,%esp
 6d3:	8b 45 08             	mov    0x8(%ebp),%eax
 6d6:	83 f8 0e             	cmp    $0xe,%eax
 6d9:	74 02                	je     6dd <exception_handler+0x10>
 6db:	eb 6c                	jmp    749 <exception_handler+0x7c>
 6dd:	8b 45 0c             	mov    0xc(%ebp),%eax
 6e0:	83 e0 07             	and    $0x7,%eax
 6e3:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
 6e6:	83 7d ec 08          	cmpl   $0x8,0xffffffec(%ebp)
 6ea:	0f 87 d4 00 00 00    	ja     7c4 <exception_handler+0xf7>
 6f0:	b8 01 00 00 00       	mov    $0x1,%eax
 6f5:	89 c2                	mov    %eax,%edx
 6f7:	0f b6 4d ec          	movzbl 0xffffffec(%ebp),%ecx
 6fb:	d3 e2                	shl    %cl,%edx
 6fd:	89 55 e8             	mov    %edx,0xffffffe8(%ebp)
 700:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
 703:	83 e0 55             	and    $0x55,%eax
 706:	85 c0                	test   %eax,%eax
 708:	75 27                	jne    731 <exception_handler+0x64>
 70a:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
 70d:	25 02 01 00 00       	and    $0x102,%eax
 712:	85 c0                	test   %eax,%eax
 714:	75 25                	jne    73b <exception_handler+0x6e>
 716:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
 719:	25 88 00 00 00       	and    $0x88,%eax
 71e:	85 c0                	test   %eax,%eax
 720:	75 05                	jne    727 <exception_handler+0x5a>
 722:	e9 9d 00 00 00       	jmp    7c4 <exception_handler+0xf7>
 727:	e8 fc ff ff ff       	call   728 <exception_handler+0x5b>
 72c:	e9 93 00 00 00       	jmp    7c4 <exception_handler+0xf7>
 731:	e8 fc ff ff ff       	call   732 <exception_handler+0x65>
 736:	e9 89 00 00 00       	jmp    7c4 <exception_handler+0xf7>
 73b:	c7 04 24 fe 01 00 00 	movl   $0x1fe,(%esp)
 742:	e8 fc ff ff ff       	call   743 <exception_handler+0x76>
 747:	eb fe                	jmp    747 <exception_handler+0x7a>
 749:	a1 00 00 00 00       	mov    0x0,%eax
 74e:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
 754:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 75b:	c7 45 fc 00 00 00 00 	movl   $0x0,0xfffffffc(%ebp)
 762:	eb 10                	jmp    774 <exception_handler+0xa7>
 764:	c7 04 24 14 02 00 00 	movl   $0x214,(%esp)
 76b:	e8 fc ff ff ff       	call   76c <exception_handler+0x9f>
 770:	83 45 fc 01          	addl   $0x1,0xfffffffc(%ebp)
 774:	81 7d fc 8f 01 00 00 	cmpl   $0x18f,0xfffffffc(%ebp)
 77b:	7e e7                	jle    764 <exception_handler+0x97>
 77d:	a1 00 00 00 00       	mov    0x0,%eax
 782:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
 788:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 78f:	8b 45 08             	mov    0x8(%ebp),%eax
 792:	8b 04 85 00 00 00 00 	mov    0x0(,%eax,4),%eax
 799:	89 44 24 04          	mov    %eax,0x4(%esp)
 79d:	c7 04 24 16 02 00 00 	movl   $0x216,(%esp)
 7a4:	e8 fc ff ff ff       	call   7a5 <exception_handler+0xd8>
 7a9:	83 7d 0c ff          	cmpl   $0xffffffff,0xc(%ebp)
 7ad:	74 13                	je     7c2 <exception_handler+0xf5>
 7af:	8b 45 0c             	mov    0xc(%ebp),%eax
 7b2:	89 44 24 04          	mov    %eax,0x4(%esp)
 7b6:	c7 04 24 19 02 00 00 	movl   $0x219,(%esp)
 7bd:	e8 fc ff ff ff       	call   7be <exception_handler+0xf1>
 7c2:	eb fe                	jmp    7c2 <exception_handler+0xf5>
 7c4:	c9                   	leave  
 7c5:	c3                   	ret    

000007c6 <init_timer>:
 7c6:	55                   	push   %ebp
 7c7:	89 e5                	mov    %esp,%ebp
 7c9:	83 ec 08             	sub    $0x8,%esp
 7cc:	c7 44 24 04 34 00 00 	movl   $0x34,0x4(%esp)
 7d3:	00 
 7d4:	c7 04 24 43 00 00 00 	movl   $0x43,(%esp)
 7db:	e8 fc ff ff ff       	call   7dc <init_timer+0x16>
 7e0:	c7 44 24 04 9b 00 00 	movl   $0x9b,0x4(%esp)
 7e7:	00 
 7e8:	c7 04 24 40 00 00 00 	movl   $0x40,(%esp)
 7ef:	e8 fc ff ff ff       	call   7f0 <init_timer+0x2a>
 7f4:	c7 44 24 04 2e 00 00 	movl   $0x2e,0x4(%esp)
 7fb:	00 
 7fc:	c7 04 24 40 00 00 00 	movl   $0x40,(%esp)
 803:	e8 fc ff ff ff       	call   804 <init_timer+0x3e>
 808:	c9                   	leave  
 809:	c3                   	ret    
