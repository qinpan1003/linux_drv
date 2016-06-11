
keyboard.o:     file format elf32-i386

Disassembly of section .text:

00000000 <init_keyboard>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 08             	sub    $0x8,%esp
   6:	c6 05 00 00 00 00 00 	movb   $0x0,0x0
   d:	e8 fc ff ff ff       	call   e <init_keyboard+0xe>
  12:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
  19:	00 00 00 
  1c:	c7 05 04 00 00 00 0c 	movl   $0xc,0x4
  23:	00 00 00 
  26:	c7 05 08 00 00 00 0c 	movl   $0xc,0x8
  2d:	00 00 00 
  30:	c6 05 00 00 00 00 00 	movb   $0x0,0x0
  37:	c6 05 00 00 00 00 00 	movb   $0x0,0x0
  3e:	c6 05 00 00 00 00 00 	movb   $0x0,0x0
  45:	c6 05 00 00 00 00 00 	movb   $0x0,0x0
  4c:	c6 05 00 00 00 00 00 	movb   $0x0,0x0
  53:	c6 05 00 00 00 00 00 	movb   $0x0,0x0
  5a:	c6 05 00 00 00 00 00 	movb   $0x0,0x0
  61:	c6 05 00 00 00 00 00 	movb   $0x0,0x0
  68:	c6 05 00 00 00 00 00 	movb   $0x0,0x0
  6f:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
  76:	00 00 00 
  79:	c9                   	leave  
  7a:	c3                   	ret    

0000007b <set_led>:
  7b:	55                   	push   %ebp
  7c:	89 e5                	mov    %esp,%ebp
  7e:	5d                   	pop    %ebp
  7f:	c3                   	ret    

00000080 <keyboard_handler>:
  80:	55                   	push   %ebp
  81:	89 e5                	mov    %esp,%ebp
  83:	83 ec 18             	sub    $0x18,%esp
  86:	c7 04 24 60 00 00 00 	movl   $0x60,(%esp)
  8d:	e8 fc ff ff ff       	call   8e <keyboard_handler+0xe>
  92:	88 45 ff             	mov    %al,0xffffffff(%ebp)
  95:	a1 00 00 00 00       	mov    0x0,%eax
  9a:	83 f8 63             	cmp    $0x63,%eax
  9d:	7f 4c                	jg     eb <keyboard_handler+0x6b>
  9f:	e8 fc ff ff ff       	call   a0 <keyboard_handler+0x20>
  a4:	a1 00 00 00 00       	mov    0x0,%eax
  a9:	83 c0 01             	add    $0x1,%eax
  ac:	a3 00 00 00 00       	mov    %eax,0x0
  b1:	8b 15 04 00 00 00    	mov    0x4,%edx
  b7:	0f b6 45 ff          	movzbl 0xffffffff(%ebp),%eax
  bb:	88 02                	mov    %al,(%edx)
  bd:	a1 04 00 00 00       	mov    0x4,%eax
  c2:	83 c0 01             	add    $0x1,%eax
  c5:	a3 04 00 00 00       	mov    %eax,0x4
  ca:	8b 15 04 00 00 00    	mov    0x4,%edx
  d0:	b8 70 00 00 00       	mov    $0x70,%eax
  d5:	39 c2                	cmp    %eax,%edx
  d7:	72 0d                	jb     e6 <keyboard_handler+0x66>
  d9:	a1 04 00 00 00       	mov    0x4,%eax
  de:	83 e8 64             	sub    $0x64,%eax
  e1:	a3 04 00 00 00       	mov    %eax,0x4
  e6:	e8 fc ff ff ff       	call   e7 <keyboard_handler+0x67>
  eb:	c7 05 00 00 00 00 01 	movl   $0x1,0x0
  f2:	00 00 00 
  f5:	c9                   	leave  
  f6:	c3                   	ret    

000000f7 <get_byte_from_kbuf>:
  f7:	55                   	push   %ebp
  f8:	89 e5                	mov    %esp,%ebp
  fa:	83 ec 18             	sub    $0x18,%esp
  fd:	eb 00                	jmp    ff <get_byte_from_kbuf+0x8>
  ff:	a1 00 00 00 00       	mov    0x0,%eax
 104:	85 c0                	test   %eax,%eax
 106:	7e f7                	jle    ff <get_byte_from_kbuf+0x8>
 108:	e8 fc ff ff ff       	call   109 <get_byte_from_kbuf+0x12>
 10d:	a1 00 00 00 00       	mov    0x0,%eax
 112:	85 c0                	test   %eax,%eax
 114:	7f 07                	jg     11d <get_byte_from_kbuf+0x26>
 116:	e8 fc ff ff ff       	call   117 <get_byte_from_kbuf+0x20>
 11b:	eb e2                	jmp    ff <get_byte_from_kbuf+0x8>
 11d:	a1 08 00 00 00       	mov    0x8,%eax
 122:	0f b6 00             	movzbl (%eax),%eax
 125:	89 c2                	mov    %eax,%edx
 127:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 12c:	21 d0                	and    %edx,%eax
 12e:	88 45 ff             	mov    %al,0xffffffff(%ebp)
 131:	a1 00 00 00 00       	mov    0x0,%eax
 136:	83 e8 01             	sub    $0x1,%eax
 139:	a3 00 00 00 00       	mov    %eax,0x0
 13e:	a1 08 00 00 00       	mov    0x8,%eax
 143:	83 c0 01             	add    $0x1,%eax
 146:	a3 08 00 00 00       	mov    %eax,0x8
 14b:	8b 15 08 00 00 00    	mov    0x8,%edx
 151:	b8 70 00 00 00       	mov    $0x70,%eax
 156:	39 c2                	cmp    %eax,%edx
 158:	72 0d                	jb     167 <get_byte_from_kbuf+0x70>
 15a:	a1 08 00 00 00       	mov    0x8,%eax
 15f:	83 e8 64             	sub    $0x64,%eax
 162:	a3 08 00 00 00       	mov    %eax,0x8
 167:	e8 fc ff ff ff       	call   168 <get_byte_from_kbuf+0x71>
 16c:	0f b6 45 ff          	movzbl 0xffffffff(%ebp),%eax
 170:	c9                   	leave  
 171:	c3                   	ret    

00000172 <keyboard_read>:
 172:	55                   	push   %ebp
 173:	89 e5                	mov    %esp,%ebp
 175:	83 ec 18             	sub    $0x18,%esp
 178:	c6 45 ff 00          	movb   $0x0,0xffffffff(%ebp)
 17c:	eb 00                	jmp    17e <keyboard_read+0xc>
 17e:	e8 fc ff ff ff       	call   17f <keyboard_read+0xd>
 183:	0f b6 c0             	movzbl %al,%eax
 186:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
 189:	81 7d f8 e1 00 00 00 	cmpl   $0xe1,0xfffffff8(%ebp)
 190:	75 22                	jne    1b4 <keyboard_read+0x42>
 192:	a1 00 00 00 00       	mov    0x0,%eax
 197:	83 f8 02             	cmp    $0x2,%eax
 19a:	7e e2                	jle    17e <keyboard_read+0xc>
 19c:	e8 fc ff ff ff       	call   19d <keyboard_read+0x2b>
 1a1:	0f b6 c0             	movzbl %al,%eax
 1a4:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
 1a7:	e8 fc ff ff ff       	call   1a8 <keyboard_read+0x36>
 1ac:	0f b6 c0             	movzbl %al,%eax
 1af:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
 1b2:	eb ca                	jmp    17e <keyboard_read+0xc>
 1b4:	81 7d f8 e0 00 00 00 	cmpl   $0xe0,0xfffffff8(%ebp)
 1bb:	75 11                	jne    1ce <keyboard_read+0x5c>
 1bd:	c6 45 ff 02          	movb   $0x2,0xffffffff(%ebp)
 1c1:	e8 fc ff ff ff       	call   1c2 <keyboard_read+0x50>
 1c6:	0f b6 c0             	movzbl %al,%eax
 1c9:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
 1cc:	eb 31                	jmp    1ff <keyboard_read+0x8d>
 1ce:	c6 45 ff 00          	movb   $0x0,0xffffffff(%ebp)
 1d2:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 1d9:	84 c0                	test   %al,%al
 1db:	74 04                	je     1e1 <keyboard_read+0x6f>
 1dd:	c6 45 ff 01          	movb   $0x1,0xffffffff(%ebp)
 1e1:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 1e8:	84 c0                	test   %al,%al
 1ea:	74 04                	je     1f0 <keyboard_read+0x7e>
 1ec:	c6 45 ff 01          	movb   $0x1,0xffffffff(%ebp)
 1f0:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 1f7:	84 c0                	test   %al,%al
 1f9:	74 04                	je     1ff <keyboard_read+0x8d>
 1fb:	c6 45 ff 01          	movb   $0x1,0xffffffff(%ebp)
 1ff:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 202:	25 80 00 00 00       	and    $0x80,%eax
 207:	85 c0                	test   %eax,%eax
 209:	74 0d                	je     218 <keyboard_read+0xa6>
 20b:	c6 05 00 00 00 00 00 	movb   $0x0,0x0
 212:	83 65 f8 7f          	andl   $0x7f,0xfffffff8(%ebp)
 216:	eb 07                	jmp    21f <keyboard_read+0xad>
 218:	c6 05 00 00 00 00 01 	movb   $0x1,0x0
 21f:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 226:	0f b6 c0             	movzbl %al,%eax
 229:	83 e0 02             	and    $0x2,%eax
 22c:	85 c0                	test   %eax,%eax
 22e:	74 16                	je     246 <keyboard_read+0xd4>
 230:	83 7d f8 46          	cmpl   $0x46,0xfffffff8(%ebp)
 234:	76 10                	jbe    246 <keyboard_read+0xd4>
 236:	83 7d f8 53          	cmpl   $0x53,0xfffffff8(%ebp)
 23a:	77 0a                	ja     246 <keyboard_read+0xd4>
 23c:	80 7d ff 00          	cmpb   $0x0,0xffffffff(%ebp)
 240:	75 04                	jne    246 <keyboard_read+0xd4>
 242:	c6 45 ff 01          	movb   $0x1,0xffffffff(%ebp)
 246:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
 249:	0f b6 4d ff          	movzbl 0xffffffff(%ebp),%ecx
 24d:	89 d0                	mov    %edx,%eax
 24f:	01 c0                	add    %eax,%eax
 251:	01 d0                	add    %edx,%eax
 253:	01 c8                	add    %ecx,%eax
 255:	8b 04 85 00 00 00 00 	mov    0x0(,%eax,4),%eax
 25c:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
 25f:	0f b6 05 00 00 00 00 	movzbl 0x0,%eax
 266:	0f b6 c0             	movzbl %al,%eax
 269:	83 e0 04             	and    $0x4,%eax
 26c:	85 c0                	test   %eax,%eax
 26e:	74 22                	je     292 <keyboard_read+0x120>
 270:	83 7d f8 40          	cmpl   $0x40,0xfffffff8(%ebp)
 274:	76 0c                	jbe    282 <keyboard_read+0x110>
 276:	83 7d f8 5a          	cmpl   $0x5a,0xfffffff8(%ebp)
 27a:	77 06                	ja     282 <keyboard_read+0x110>
 27c:	83 45 f8 20          	addl   $0x20,0xfffffff8(%ebp)
 280:	eb 10                	jmp    292 <keyboard_read+0x120>
 282:	83 7d f8 60          	cmpl   $0x60,0xfffffff8(%ebp)
 286:	76 0a                	jbe    292 <keyboard_read+0x120>
 288:	83 7d f8 7a          	cmpl   $0x7a,0xfffffff8(%ebp)
 28c:	77 04                	ja     292 <keyboard_read+0x120>
 28e:	83 6d f8 20          	subl   $0x20,0xfffffff8(%ebp)
 292:	e8 fc ff ff ff       	call   293 <keyboard_read+0x121>
 297:	8b 45 08             	mov    0x8(%ebp),%eax
 29a:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
 2a0:	83 f8 1d             	cmp    $0x1d,%eax
 2a3:	7f 4e                	jg     2f3 <keyboard_read+0x181>
 2a5:	8b 45 08             	mov    0x8(%ebp),%eax
 2a8:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
 2ae:	8d 50 01             	lea    0x1(%eax),%edx
 2b1:	8b 45 08             	mov    0x8(%ebp),%eax
 2b4:	89 90 80 00 00 00    	mov    %edx,0x80(%eax)
 2ba:	8b 45 08             	mov    0x8(%ebp),%eax
 2bd:	8b 50 78             	mov    0x78(%eax),%edx
 2c0:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 2c3:	89 02                	mov    %eax,(%edx)
 2c5:	8b 45 08             	mov    0x8(%ebp),%eax
 2c8:	8b 40 78             	mov    0x78(%eax),%eax
 2cb:	8d 50 04             	lea    0x4(%eax),%edx
 2ce:	8b 45 08             	mov    0x8(%ebp),%eax
 2d1:	89 50 78             	mov    %edx,0x78(%eax)
 2d4:	8b 45 08             	mov    0x8(%ebp),%eax
 2d7:	8b 50 78             	mov    0x78(%eax),%edx
 2da:	8b 45 08             	mov    0x8(%ebp),%eax
 2dd:	83 c0 78             	add    $0x78,%eax
 2e0:	39 c2                	cmp    %eax,%edx
 2e2:	72 0f                	jb     2f3 <keyboard_read+0x181>
 2e4:	8b 45 08             	mov    0x8(%ebp),%eax
 2e7:	8b 40 78             	mov    0x78(%eax),%eax
 2ea:	8d 50 88             	lea    0xffffff88(%eax),%edx
 2ed:	8b 45 08             	mov    0x8(%ebp),%eax
 2f0:	89 50 78             	mov    %edx,0x78(%eax)
 2f3:	e8 fc ff ff ff       	call   2f4 <keyboard_read+0x182>
 2f8:	c9                   	leave  
 2f9:	c3                   	ret    
