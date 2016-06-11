
user/fs_user.o:     file format elf32-i386

Disassembly of section .text:

00000000 <fopen>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 48             	sub    $0x48,%esp
   6:	8b 45 08             	mov    0x8(%ebp),%eax
   9:	0f b6 00             	movzbl (%eax),%eax
   c:	88 45 ff             	mov    %al,0xffffffff(%ebp)
   f:	c7 45 dc fd ff ff ff 	movl   $0xfffffffd,0xffffffdc(%ebp)
  16:	c7 45 e0 00 00 00 00 	movl   $0x0,0xffffffe0(%ebp)
  1d:	8b 45 08             	mov    0x8(%ebp),%eax
  20:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
  23:	8b 45 0c             	mov    0xc(%ebp),%eax
  26:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
  29:	8d 45 d4             	lea    0xffffffd4(%ebp),%eax
  2c:	89 44 24 08          	mov    %eax,0x8(%esp)
  30:	c7 44 24 04 03 00 00 	movl   $0x3,0x4(%esp)
  37:	00 
  38:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  3f:	e8 fc ff ff ff       	call   40 <fopen+0x40>
  44:	85 c0                	test   %eax,%eax
  46:	74 24                	je     6c <fopen+0x6c>
  48:	c7 44 24 0c 15 00 00 	movl   $0x15,0xc(%esp)
  4f:	00 
  50:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  57:	00 
  58:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  5f:	00 
  60:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
  67:	e8 fc ff ff ff       	call   68 <fopen+0x68>
  6c:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
  6f:	c9                   	leave  
  70:	c3                   	ret    

00000071 <fwrite>:
  71:	55                   	push   %ebp
  72:	89 e5                	mov    %esp,%ebp
  74:	83 ec 48             	sub    $0x48,%esp
  77:	c7 45 e0 fd ff ff ff 	movl   $0xfffffffd,0xffffffe0(%ebp)
  7e:	c7 45 e4 02 00 00 00 	movl   $0x2,0xffffffe4(%ebp)
  85:	8b 45 08             	mov    0x8(%ebp),%eax
  88:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
  8b:	8b 45 0c             	mov    0xc(%ebp),%eax
  8e:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
  91:	8b 45 10             	mov    0x10(%ebp),%eax
  94:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
  97:	8b 45 14             	mov    0x14(%ebp),%eax
  9a:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
  9d:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
  a0:	89 44 24 08          	mov    %eax,0x8(%esp)
  a4:	c7 44 24 04 03 00 00 	movl   $0x3,0x4(%esp)
  ab:	00 
  ac:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  b3:	e8 fc ff ff ff       	call   b4 <fwrite+0x43>
  b8:	85 c0                	test   %eax,%eax
  ba:	74 24                	je     e0 <fwrite+0x6f>
  bc:	c7 44 24 0c 2b 00 00 	movl   $0x2b,0xc(%esp)
  c3:	00 
  c4:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  cb:	00 
  cc:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  d3:	00 
  d4:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
  db:	e8 fc ff ff ff       	call   dc <fwrite+0x6b>
  e0:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
  e3:	c9                   	leave  
  e4:	c3                   	ret    

000000e5 <fread>:
  e5:	55                   	push   %ebp
  e6:	89 e5                	mov    %esp,%ebp
  e8:	83 ec 48             	sub    $0x48,%esp
  eb:	c7 45 e0 fd ff ff ff 	movl   $0xfffffffd,0xffffffe0(%ebp)
  f2:	c7 45 e4 03 00 00 00 	movl   $0x3,0xffffffe4(%ebp)
  f9:	8b 45 08             	mov    0x8(%ebp),%eax
  fc:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
  ff:	8b 45 0c             	mov    0xc(%ebp),%eax
 102:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
 105:	8b 45 10             	mov    0x10(%ebp),%eax
 108:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 10b:	8b 45 14             	mov    0x14(%ebp),%eax
 10e:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
 111:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
 114:	89 44 24 08          	mov    %eax,0x8(%esp)
 118:	c7 44 24 04 03 00 00 	movl   $0x3,0x4(%esp)
 11f:	00 
 120:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 127:	e8 fc ff ff ff       	call   128 <fread+0x43>
 12c:	85 c0                	test   %eax,%eax
 12e:	74 24                	je     154 <fread+0x6f>
 130:	c7 44 24 0c 42 00 00 	movl   $0x42,0xc(%esp)
 137:	00 
 138:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 13f:	00 
 140:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 147:	00 
 148:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
 14f:	e8 fc ff ff ff       	call   150 <fread+0x6b>
 154:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
 157:	c9                   	leave  
 158:	c3                   	ret    

00000159 <fclose>:
 159:	55                   	push   %ebp
 15a:	89 e5                	mov    %esp,%ebp
 15c:	83 ec 48             	sub    $0x48,%esp
 15f:	c7 45 e0 fd ff ff ff 	movl   $0xfffffffd,0xffffffe0(%ebp)
 166:	c7 45 e4 01 00 00 00 	movl   $0x1,0xffffffe4(%ebp)
 16d:	8b 45 08             	mov    0x8(%ebp),%eax
 170:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
 173:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
 176:	89 44 24 08          	mov    %eax,0x8(%esp)
 17a:	c7 44 24 04 03 00 00 	movl   $0x3,0x4(%esp)
 181:	00 
 182:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 189:	e8 fc ff ff ff       	call   18a <fclose+0x31>
 18e:	85 c0                	test   %eax,%eax
 190:	74 24                	je     1b6 <fclose+0x5d>
 192:	c7 44 24 0c 52 00 00 	movl   $0x52,0xc(%esp)
 199:	00 
 19a:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 1a1:	00 
 1a2:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 1a9:	00 
 1aa:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
 1b1:	e8 fc ff ff ff       	call   1b2 <fclose+0x59>
 1b6:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
 1b9:	c9                   	leave  
 1ba:	c3                   	ret    

000001bb <fdelete>:
 1bb:	55                   	push   %ebp
 1bc:	89 e5                	mov    %esp,%ebp
 1be:	83 ec 48             	sub    $0x48,%esp
 1c1:	8b 45 08             	mov    0x8(%ebp),%eax
 1c4:	0f b6 00             	movzbl (%eax),%eax
 1c7:	88 45 ff             	mov    %al,0xffffffff(%ebp)
 1ca:	c7 45 dc fd ff ff ff 	movl   $0xfffffffd,0xffffffdc(%ebp)
 1d1:	c7 45 e0 04 00 00 00 	movl   $0x4,0xffffffe0(%ebp)
 1d8:	8b 45 08             	mov    0x8(%ebp),%eax
 1db:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
 1de:	8b 45 0c             	mov    0xc(%ebp),%eax
 1e1:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
 1e4:	8d 45 d4             	lea    0xffffffd4(%ebp),%eax
 1e7:	89 44 24 08          	mov    %eax,0x8(%esp)
 1eb:	c7 44 24 04 03 00 00 	movl   $0x3,0x4(%esp)
 1f2:	00 
 1f3:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 1fa:	e8 fc ff ff ff       	call   1fb <fdelete+0x40>
 1ff:	85 c0                	test   %eax,%eax
 201:	74 24                	je     227 <fdelete+0x6c>
 203:	c7 44 24 0c 66 00 00 	movl   $0x66,0xc(%esp)
 20a:	00 
 20b:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 212:	00 
 213:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 21a:	00 
 21b:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
 222:	e8 fc ff ff ff       	call   223 <fdelete+0x68>
 227:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
 22a:	c9                   	leave  
 22b:	c3                   	ret    

0000022c <lseek>:
 22c:	55                   	push   %ebp
 22d:	89 e5                	mov    %esp,%ebp
 22f:	83 ec 48             	sub    $0x48,%esp
 232:	c7 45 e0 fd ff ff ff 	movl   $0xfffffffd,0xffffffe0(%ebp)
 239:	c7 45 e4 08 00 00 00 	movl   $0x8,0xffffffe4(%ebp)
 240:	8b 45 08             	mov    0x8(%ebp),%eax
 243:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
 246:	8b 45 0c             	mov    0xc(%ebp),%eax
 249:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 24c:	8b 45 10             	mov    0x10(%ebp),%eax
 24f:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
 252:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
 255:	89 44 24 08          	mov    %eax,0x8(%esp)
 259:	c7 44 24 04 03 00 00 	movl   $0x3,0x4(%esp)
 260:	00 
 261:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 268:	e8 fc ff ff ff       	call   269 <lseek+0x3d>
 26d:	85 c0                	test   %eax,%eax
 26f:	74 24                	je     295 <lseek+0x69>
 271:	c7 44 24 0c 7a 00 00 	movl   $0x7a,0xc(%esp)
 278:	00 
 279:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 280:	00 
 281:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 288:	00 
 289:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
 290:	e8 fc ff ff ff       	call   291 <lseek+0x65>
 295:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
 298:	c9                   	leave  
 299:	c3                   	ret    

0000029a <strip_path>:
 29a:	55                   	push   %ebp
 29b:	89 e5                	mov    %esp,%ebp
 29d:	83 ec 18             	sub    $0x18,%esp
 2a0:	8b 45 08             	mov    0x8(%ebp),%eax
 2a3:	0f b6 00             	movzbl (%eax),%eax
 2a6:	88 45 fb             	mov    %al,0xfffffffb(%ebp)
 2a9:	8b 45 08             	mov    0x8(%ebp),%eax
 2ac:	89 04 24             	mov    %eax,(%esp)
 2af:	e8 fc ff ff ff       	call   2b0 <strip_path+0x16>
 2b4:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 2b7:	eb 17                	jmp    2d0 <strip_path+0x36>
 2b9:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 2bc:	03 45 08             	add    0x8(%ebp),%eax
 2bf:	0f b6 00             	movzbl (%eax),%eax
 2c2:	3c 2f                	cmp    $0x2f,%al
 2c4:	75 06                	jne    2cc <strip_path+0x32>
 2c6:	83 45 fc 01          	addl   $0x1,0xfffffffc(%ebp)
 2ca:	eb 0a                	jmp    2d6 <strip_path+0x3c>
 2cc:	83 6d fc 01          	subl   $0x1,0xfffffffc(%ebp)
 2d0:	83 7d fc 00          	cmpl   $0x0,0xfffffffc(%ebp)
 2d4:	7f e3                	jg     2b9 <strip_path+0x1f>
 2d6:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 2d9:	03 45 08             	add    0x8(%ebp),%eax
 2dc:	c9                   	leave  
 2dd:	c3                   	ret    
