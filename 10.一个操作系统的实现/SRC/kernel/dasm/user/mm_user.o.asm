
user/mm_user.o:     file format elf32-i386

Disassembly of section .text:

00000000 <fork>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 48             	sub    $0x48,%esp
   6:	c7 45 d8 fb ff ff ff 	movl   $0xfffffffb,0xffffffd8(%ebp)
   d:	c7 45 dc 01 00 00 00 	movl   $0x1,0xffffffdc(%ebp)
  14:	8d 45 d0             	lea    0xffffffd0(%ebp),%eax
  17:	89 44 24 08          	mov    %eax,0x8(%esp)
  1b:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
  22:	00 
  23:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  2a:	e8 fc ff ff ff       	call   2b <fork+0x2b>
  2f:	85 c0                	test   %eax,%eax
  31:	74 24                	je     57 <fork+0x57>
  33:	c7 44 24 0c 0e 00 00 	movl   $0xe,0xc(%esp)
  3a:	00 
  3b:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  42:	00 
  43:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  4a:	00 
  4b:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
  52:	e8 fc ff ff ff       	call   53 <fork+0x53>
  57:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
  5a:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
  5d:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  64:	e8 fc ff ff ff       	call   65 <fork+0x65>
  69:	e8 fc ff ff ff       	call   6a <fork+0x6a>
  6e:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
  71:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
  74:	3b 45 f8             	cmp    0xfffffff8(%ebp),%eax
  77:	75 09                	jne    82 <fork+0x82>
  79:	c7 45 cc 00 00 00 00 	movl   $0x0,0xffffffcc(%ebp)
  80:	eb 06                	jmp    88 <fork+0x88>
  82:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
  85:	89 45 cc             	mov    %eax,0xffffffcc(%ebp)
  88:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
  8b:	c9                   	leave  
  8c:	c3                   	ret    

0000008d <exit>:
  8d:	55                   	push   %ebp
  8e:	89 e5                	mov    %esp,%ebp
  90:	83 ec 48             	sub    $0x48,%esp
  93:	c7 45 e0 fb ff ff ff 	movl   $0xfffffffb,0xffffffe0(%ebp)
  9a:	c7 45 e4 02 00 00 00 	movl   $0x2,0xffffffe4(%ebp)
  a1:	8b 45 08             	mov    0x8(%ebp),%eax
  a4:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
  a7:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
  aa:	89 44 24 08          	mov    %eax,0x8(%esp)
  ae:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
  b5:	00 
  b6:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  bd:	e8 fc ff ff ff       	call   be <exit+0x31>
  c2:	85 c0                	test   %eax,%eax
  c4:	74 24                	je     ea <exit+0x5d>
  c6:	c7 44 24 0c 23 00 00 	movl   $0x23,0xc(%esp)
  cd:	00 
  ce:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  d5:	00 
  d6:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  dd:	00 
  de:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
  e5:	e8 fc ff ff ff       	call   e6 <exit+0x59>
  ea:	c9                   	leave  
  eb:	c3                   	ret    

000000ec <wait>:
  ec:	55                   	push   %ebp
  ed:	89 e5                	mov    %esp,%ebp
  ef:	83 ec 48             	sub    $0x48,%esp
  f2:	8b 45 08             	mov    0x8(%ebp),%eax
  f5:	c7 00 10 10 10 10    	movl   $0x10101010,(%eax)
  fb:	c7 45 e0 fb ff ff ff 	movl   $0xfffffffb,0xffffffe0(%ebp)
 102:	c7 45 e4 03 00 00 00 	movl   $0x3,0xffffffe4(%ebp)
 109:	8b 45 08             	mov    0x8(%ebp),%eax
 10c:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
 10f:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
 112:	89 44 24 08          	mov    %eax,0x8(%esp)
 116:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
 11d:	00 
 11e:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 125:	e8 fc ff ff ff       	call   126 <wait+0x3a>
 12a:	85 c0                	test   %eax,%eax
 12c:	74 24                	je     152 <wait+0x66>
 12e:	c7 44 24 0c 34 00 00 	movl   $0x34,0xc(%esp)
 135:	00 
 136:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 13d:	00 
 13e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 145:	00 
 146:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
 14d:	e8 fc ff ff ff       	call   14e <wait+0x62>
 152:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
 155:	c9                   	leave  
 156:	c3                   	ret    

00000157 <exec>:
 157:	55                   	push   %ebp
 158:	89 e5                	mov    %esp,%ebp
 15a:	83 ec 48             	sub    $0x48,%esp
 15d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 164:	00 
 165:	8b 45 08             	mov    0x8(%ebp),%eax
 168:	89 04 24             	mov    %eax,(%esp)
 16b:	e8 fc ff ff ff       	call   16c <exec+0x15>
 170:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 173:	83 7d fc ff          	cmpl   $0xffffffff,0xfffffffc(%ebp)
 177:	75 09                	jne    182 <exec+0x2b>
 179:	c7 45 cc ff ff ff ff 	movl   $0xffffffff,0xffffffcc(%ebp)
 180:	eb 74                	jmp    1f6 <exec+0x9f>
 182:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 185:	89 04 24             	mov    %eax,(%esp)
 188:	e8 fc ff ff ff       	call   189 <exec+0x32>
 18d:	c7 45 dc fb ff ff ff 	movl   $0xfffffffb,0xffffffdc(%ebp)
 194:	c7 45 e0 04 00 00 00 	movl   $0x4,0xffffffe0(%ebp)
 19b:	8b 45 08             	mov    0x8(%ebp),%eax
 19e:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
 1a1:	8b 45 0c             	mov    0xc(%ebp),%eax
 1a4:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
 1a7:	8b 45 10             	mov    0x10(%ebp),%eax
 1aa:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
 1ad:	8d 45 d4             	lea    0xffffffd4(%ebp),%eax
 1b0:	89 44 24 08          	mov    %eax,0x8(%esp)
 1b4:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
 1bb:	00 
 1bc:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 1c3:	e8 fc ff ff ff       	call   1c4 <exec+0x6d>
 1c8:	85 c0                	test   %eax,%eax
 1ca:	74 24                	je     1f0 <exec+0x99>
 1cc:	c7 44 24 0c 4d 00 00 	movl   $0x4d,0xc(%esp)
 1d3:	00 
 1d4:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 1db:	00 
 1dc:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 1e3:	00 
 1e4:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
 1eb:	e8 fc ff ff ff       	call   1ec <exec+0x95>
 1f0:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
 1f3:	89 45 cc             	mov    %eax,0xffffffcc(%ebp)
 1f6:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
 1f9:	c9                   	leave  
 1fa:	c3                   	ret    

000001fb <file_page_copy>:
 1fb:	55                   	push   %ebp
 1fc:	89 e5                	mov    %esp,%ebp
 1fe:	83 ec 48             	sub    $0x48,%esp
 201:	c7 45 e0 fb ff ff ff 	movl   $0xfffffffb,0xffffffe0(%ebp)
 208:	c7 45 e4 05 00 00 00 	movl   $0x5,0xffffffe4(%ebp)
 20f:	8b 45 08             	mov    0x8(%ebp),%eax
 212:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
 215:	8b 45 0c             	mov    0xc(%ebp),%eax
 218:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
 21b:	8b 45 10             	mov    0x10(%ebp),%eax
 21e:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
 221:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
 224:	89 44 24 08          	mov    %eax,0x8(%esp)
 228:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
 22f:	00 
 230:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 237:	e8 fc ff ff ff       	call   238 <file_page_copy+0x3d>
 23c:	85 c0                	test   %eax,%eax
 23e:	74 24                	je     264 <file_page_copy+0x69>
 240:	c7 44 24 0c 5b 00 00 	movl   $0x5b,0xc(%esp)
 247:	00 
 248:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 24f:	00 
 250:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 257:	00 
 258:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
 25f:	e8 fc ff ff ff       	call   260 <file_page_copy+0x65>
 264:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
 267:	c9                   	leave  
 268:	c3                   	ret    
