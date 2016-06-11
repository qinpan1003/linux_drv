
proc.o:     file format elf32-i386

Disassembly of section .text:

00000000 <proc1>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 48             	sub    $0x48,%esp
   6:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   d:	00 
   e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  15:	e8 fc ff ff ff       	call   16 <proc1+0x16>
  1a:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
  1d:	83 7d f8 00          	cmpl   $0x0,0xfffffff8(%ebp)
  21:	74 24                	je     47 <proc1+0x47>
  23:	c7 44 24 0c 07 00 00 	movl   $0x7,0xc(%esp)
  2a:	00 
  2b:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
  32:	00 
  33:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
  3a:	00 
  3b:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
  42:	e8 fc ff ff ff       	call   43 <proc1+0x43>
  47:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
  4e:	00 
  4f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  56:	e8 fc ff ff ff       	call   57 <proc1+0x57>
  5b:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
  5e:	83 7d fc 01          	cmpl   $0x1,0xfffffffc(%ebp)
  62:	74 26                	je     8a <proc1+0x8a>
  64:	c7 44 24 0c 09 00 00 	movl   $0x9,0xc(%esp)
  6b:	00 
  6c:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
  73:	00 
  74:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
  7b:	00 
  7c:	c7 04 24 17 00 00 00 	movl   $0x17,(%esp)
  83:	e8 fc ff ff ff       	call   84 <proc1+0x84>
  88:	eb 00                	jmp    8a <proc1+0x8a>
  8a:	8d 45 d0             	lea    0xffffffd0(%ebp),%eax
  8d:	89 44 24 08          	mov    %eax,0x8(%esp)
  91:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%esp)
  98:	ff 
  99:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  a0:	e8 fc ff ff ff       	call   a1 <proc1+0xa1>
  a5:	85 c0                	test   %eax,%eax
  a7:	74 24                	je     cd <proc1+0xcd>
  a9:	c7 44 24 0c 0f 00 00 	movl   $0xf,0xc(%esp)
  b0:	00 
  b1:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
  b8:	00 
  b9:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
  c0:	00 
  c1:	c7 04 24 23 00 00 00 	movl   $0x23,(%esp)
  c8:	e8 fc ff ff ff       	call   c9 <proc1+0xc9>
  cd:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
  d0:	89 44 24 04          	mov    %eax,0x4(%esp)
  d4:	c7 04 24 38 00 00 00 	movl   $0x38,(%esp)
  db:	e8 fc ff ff ff       	call   dc <proc1+0xdc>
  e0:	8b 55 d0             	mov    0xffffffd0(%ebp),%edx
  e3:	8d 45 d0             	lea    0xffffffd0(%ebp),%eax
  e6:	89 44 24 08          	mov    %eax,0x8(%esp)
  ea:	89 54 24 04          	mov    %edx,0x4(%esp)
  ee:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  f5:	e8 fc ff ff ff       	call   f6 <proc1+0xf6>
  fa:	85 c0                	test   %eax,%eax
  fc:	74 8c                	je     8a <proc1+0x8a>
  fe:	c7 44 24 0c 11 00 00 	movl   $0x11,0xc(%esp)
 105:	00 
 106:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
 10d:	00 
 10e:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
 115:	00 
 116:	c7 04 24 59 00 00 00 	movl   $0x59,(%esp)
 11d:	e8 fc ff ff ff       	call   11e <proc1+0x11e>
 122:	e9 63 ff ff ff       	jmp    8a <proc1+0x8a>

00000127 <proc2>:
 127:	55                   	push   %ebp
 128:	89 e5                	mov    %esp,%ebp
 12a:	83 ec 48             	sub    $0x48,%esp
 12d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 134:	00 
 135:	c7 04 24 74 00 00 00 	movl   $0x74,(%esp)
 13c:	e8 fc ff ff ff       	call   13d <proc2+0x16>
 141:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
 144:	83 7d f8 00          	cmpl   $0x0,0xfffffff8(%ebp)
 148:	74 24                	je     16e <proc2+0x47>
 14a:	c7 44 24 0c 19 00 00 	movl   $0x19,0xc(%esp)
 151:	00 
 152:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
 159:	00 
 15a:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
 161:	00 
 162:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
 169:	e8 fc ff ff ff       	call   16a <proc2+0x43>
 16e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 175:	00 
 176:	c7 04 24 74 00 00 00 	movl   $0x74,(%esp)
 17d:	e8 fc ff ff ff       	call   17e <proc2+0x57>
 182:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 185:	83 7d fc 01          	cmpl   $0x1,0xfffffffc(%ebp)
 189:	74 24                	je     1af <proc2+0x88>
 18b:	c7 44 24 0c 1b 00 00 	movl   $0x1b,0xc(%esp)
 192:	00 
 193:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
 19a:	00 
 19b:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
 1a2:	00 
 1a3:	c7 04 24 17 00 00 00 	movl   $0x17,(%esp)
 1aa:	e8 fc ff ff ff       	call   1ab <proc2+0x84>
 1af:	e8 fc ff ff ff       	call   1b0 <proc2+0x89>
 1b4:	89 44 24 04          	mov    %eax,0x4(%esp)
 1b8:	c7 04 24 7c 00 00 00 	movl   $0x7c,(%esp)
 1bf:	e8 fc ff ff ff       	call   1c0 <proc2+0x99>
 1c4:	8d 45 d0             	lea    0xffffffd0(%ebp),%eax
 1c7:	89 44 24 08          	mov    %eax,0x8(%esp)
 1cb:	c7 44 24 04 07 00 00 	movl   $0x7,0x4(%esp)
 1d2:	00 
 1d3:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 1da:	e8 fc ff ff ff       	call   1db <proc2+0xb4>
 1df:	85 c0                	test   %eax,%eax
 1e1:	74 24                	je     207 <proc2+0xe0>
 1e3:	c7 44 24 0c 1f 00 00 	movl   $0x1f,0xc(%esp)
 1ea:	00 
 1eb:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
 1f2:	00 
 1f3:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
 1fa:	00 
 1fb:	c7 04 24 a0 00 00 00 	movl   $0xa0,(%esp)
 202:	e8 fc ff ff ff       	call   203 <proc2+0xdc>
 207:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
 20e:	e8 fc ff ff ff       	call   20f <proc2+0xe8>
 213:	eb 9a                	jmp    1af <proc2+0x88>

00000215 <proc3>:
 215:	55                   	push   %ebp
 216:	89 e5                	mov    %esp,%ebp
 218:	83 ec 58             	sub    $0x58,%esp
 21b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 222:	00 
 223:	c7 04 24 74 00 00 00 	movl   $0x74,(%esp)
 22a:	e8 fc ff ff ff       	call   22b <proc3+0x16>
 22f:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
 232:	83 7d f0 00          	cmpl   $0x0,0xfffffff0(%ebp)
 236:	74 24                	je     25c <proc3+0x47>
 238:	c7 44 24 0c 29 00 00 	movl   $0x29,0xc(%esp)
 23f:	00 
 240:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
 247:	00 
 248:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
 24f:	00 
 250:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
 257:	e8 fc ff ff ff       	call   258 <proc3+0x43>
 25c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 263:	00 
 264:	c7 04 24 74 00 00 00 	movl   $0x74,(%esp)
 26b:	e8 fc ff ff ff       	call   26c <proc3+0x57>
 270:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
 273:	83 7d f4 01          	cmpl   $0x1,0xfffffff4(%ebp)
 277:	74 24                	je     29d <proc3+0x88>
 279:	c7 44 24 0c 2b 00 00 	movl   $0x2b,0xc(%esp)
 280:	00 
 281:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
 288:	00 
 289:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
 290:	00 
 291:	c7 04 24 17 00 00 00 	movl   $0x17,(%esp)
 298:	e8 fc ff ff ff       	call   299 <proc3+0x84>
 29d:	c7 45 f8 00 00 00 00 	movl   $0x0,0xfffffff8(%ebp)
 2a4:	c7 45 fc 00 00 00 00 	movl   $0x0,0xfffffffc(%ebp)
 2ab:	e8 fc ff ff ff       	call   2ac <proc3+0x97>
 2b0:	83 45 f8 01          	addl   $0x1,0xfffffff8(%ebp)
 2b4:	89 44 24 08          	mov    %eax,0x8(%esp)
 2b8:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 2bb:	89 44 24 04          	mov    %eax,0x4(%esp)
 2bf:	c7 04 24 c4 00 00 00 	movl   $0xc4,(%esp)
 2c6:	e8 fc ff ff ff       	call   2c7 <proc3+0xb2>
 2cb:	e8 fc ff ff ff       	call   2cc <proc3+0xb7>
 2d0:	2b 45 fc             	sub    0xfffffffc(%ebp),%eax
 2d3:	89 44 24 04          	mov    %eax,0x4(%esp)
 2d7:	c7 04 24 ed 00 00 00 	movl   $0xed,(%esp)
 2de:	e8 fc ff ff ff       	call   2df <proc3+0xca>
 2e3:	e8 fc ff ff ff       	call   2e4 <proc3+0xcf>
 2e8:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 2eb:	8d 45 c8             	lea    0xffffffc8(%ebp),%eax
 2ee:	89 44 24 08          	mov    %eax,0x8(%esp)
 2f2:	c7 44 24 04 07 00 00 	movl   $0x7,0x4(%esp)
 2f9:	00 
 2fa:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 301:	e8 fc ff ff ff       	call   302 <proc3+0xed>
 306:	85 c0                	test   %eax,%eax
 308:	74 24                	je     32e <proc3+0x119>
 30a:	c7 44 24 0c 35 00 00 	movl   $0x35,0xc(%esp)
 311:	00 
 312:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
 319:	00 
 31a:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
 321:	00 
 322:	c7 04 24 a0 00 00 00 	movl   $0xa0,(%esp)
 329:	e8 fc ff ff ff       	call   32a <proc3+0x115>
 32e:	c7 04 24 07 00 00 00 	movl   $0x7,(%esp)
 335:	e8 fc ff ff ff       	call   336 <proc3+0x121>
 33a:	e9 6c ff ff ff       	jmp    2ab <proc3+0x96>

0000033f <proc4>:
 33f:	55                   	push   %ebp
 340:	89 e5                	mov    %esp,%ebp
 342:	83 ec 48             	sub    $0x48,%esp
 345:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 34c:	00 
 34d:	c7 04 24 74 00 00 00 	movl   $0x74,(%esp)
 354:	e8 fc ff ff ff       	call   355 <proc4+0x16>
 359:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
 35c:	83 7d f8 00          	cmpl   $0x0,0xfffffff8(%ebp)
 360:	74 24                	je     386 <proc4+0x47>
 362:	c7 44 24 0c 40 00 00 	movl   $0x40,0xc(%esp)
 369:	00 
 36a:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
 371:	00 
 372:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
 379:	00 
 37a:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
 381:	e8 fc ff ff ff       	call   382 <proc4+0x43>
 386:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 38d:	00 
 38e:	c7 04 24 74 00 00 00 	movl   $0x74,(%esp)
 395:	e8 fc ff ff ff       	call   396 <proc4+0x57>
 39a:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 39d:	83 7d fc 01          	cmpl   $0x1,0xfffffffc(%ebp)
 3a1:	74 24                	je     3c7 <proc4+0x88>
 3a3:	c7 44 24 0c 42 00 00 	movl   $0x42,0xc(%esp)
 3aa:	00 
 3ab:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
 3b2:	00 
 3b3:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
 3ba:	00 
 3bb:	c7 04 24 17 00 00 00 	movl   $0x17,(%esp)
 3c2:	e8 fc ff ff ff       	call   3c3 <proc4+0x84>
 3c7:	8d 45 d0             	lea    0xffffffd0(%ebp),%eax
 3ca:	89 44 24 08          	mov    %eax,0x8(%esp)
 3ce:	c7 44 24 04 07 00 00 	movl   $0x7,0x4(%esp)
 3d5:	00 
 3d6:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 3dd:	e8 fc ff ff ff       	call   3de <proc4+0x9f>
 3e2:	85 c0                	test   %eax,%eax
 3e4:	74 24                	je     40a <proc4+0xcb>
 3e6:	c7 44 24 0c 46 00 00 	movl   $0x46,0xc(%esp)
 3ed:	00 
 3ee:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
 3f5:	00 
 3f6:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
 3fd:	00 
 3fe:	c7 04 24 a0 00 00 00 	movl   $0xa0,(%esp)
 405:	e8 fc ff ff ff       	call   406 <proc4+0xc7>
 40a:	c7 04 24 07 00 00 00 	movl   $0x7,(%esp)
 411:	e8 fc ff ff ff       	call   412 <proc4+0xd3>
 416:	eb af                	jmp    3c7 <proc4+0x88>
