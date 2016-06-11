
vga.o:     file format elf32-i386

Disassembly of section .text:

00000000 <init_vga>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 08             	sub    $0x8,%esp
   6:	e8 fc ff ff ff       	call   7 <init_vga+0x7>
   b:	e8 fc ff ff ff       	call   c <init_vga+0xc>
  10:	c9                   	leave  
  11:	c3                   	ret    

00000012 <re_start_addr>:
  12:	55                   	push   %ebp
  13:	89 e5                	mov    %esp,%ebp
  15:	83 ec 18             	sub    $0x18,%esp
  18:	e8 fc ff ff ff       	call   19 <re_start_addr+0x7>
  1d:	a1 00 00 00 00       	mov    0x0,%eax
  22:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
  28:	8b 10                	mov    (%eax),%edx
  2a:	a1 00 00 00 00       	mov    0x0,%eax
  2f:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
  35:	8b 40 04             	mov    0x4(%eax),%eax
  38:	8d 04 02             	lea    (%edx,%eax,1),%eax
  3b:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
  3e:	c7 44 24 04 0d 00 00 	movl   $0xd,0x4(%esp)
  45:	00 
  46:	c7 04 24 d4 03 00 00 	movl   $0x3d4,(%esp)
  4d:	e8 fc ff ff ff       	call   4e <re_start_addr+0x3c>
  52:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
  55:	d1 e8                	shr    %eax
  57:	0f b6 c0             	movzbl %al,%eax
  5a:	89 44 24 04          	mov    %eax,0x4(%esp)
  5e:	c7 04 24 d5 03 00 00 	movl   $0x3d5,(%esp)
  65:	e8 fc ff ff ff       	call   66 <re_start_addr+0x54>
  6a:	c7 44 24 04 0c 00 00 	movl   $0xc,0x4(%esp)
  71:	00 
  72:	c7 04 24 d4 03 00 00 	movl   $0x3d4,(%esp)
  79:	e8 fc ff ff ff       	call   7a <re_start_addr+0x68>
  7e:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
  81:	c1 e8 09             	shr    $0x9,%eax
  84:	0f b6 c0             	movzbl %al,%eax
  87:	89 44 24 04          	mov    %eax,0x4(%esp)
  8b:	c7 04 24 d5 03 00 00 	movl   $0x3d5,(%esp)
  92:	e8 fc ff ff ff       	call   93 <re_start_addr+0x81>
  97:	e8 fc ff ff ff       	call   98 <re_start_addr+0x86>
  9c:	c9                   	leave  
  9d:	c3                   	ret    

0000009e <re_cur>:
  9e:	55                   	push   %ebp
  9f:	89 e5                	mov    %esp,%ebp
  a1:	83 ec 18             	sub    $0x18,%esp
  a4:	e8 fc ff ff ff       	call   a5 <re_cur+0x7>
  a9:	a1 00 00 00 00       	mov    0x0,%eax
  ae:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
  b4:	8b 50 08             	mov    0x8(%eax),%edx
  b7:	a1 00 00 00 00       	mov    0x0,%eax
  bc:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
  c2:	8b 00                	mov    (%eax),%eax
  c4:	01 c2                	add    %eax,%edx
  c6:	a1 00 00 00 00       	mov    0x0,%eax
  cb:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
  d1:	8b 40 04             	mov    0x4(%eax),%eax
  d4:	8d 04 02             	lea    (%edx,%eax,1),%eax
  d7:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
  da:	c7 44 24 04 0f 00 00 	movl   $0xf,0x4(%esp)
  e1:	00 
  e2:	c7 04 24 d4 03 00 00 	movl   $0x3d4,(%esp)
  e9:	e8 fc ff ff ff       	call   ea <re_cur+0x4c>
  ee:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
  f1:	d1 e8                	shr    %eax
  f3:	0f b6 c0             	movzbl %al,%eax
  f6:	89 44 24 04          	mov    %eax,0x4(%esp)
  fa:	c7 04 24 d5 03 00 00 	movl   $0x3d5,(%esp)
 101:	e8 fc ff ff ff       	call   102 <re_cur+0x64>
 106:	c7 44 24 04 0e 00 00 	movl   $0xe,0x4(%esp)
 10d:	00 
 10e:	c7 04 24 d4 03 00 00 	movl   $0x3d4,(%esp)
 115:	e8 fc ff ff ff       	call   116 <re_cur+0x78>
 11a:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 11d:	c1 e8 09             	shr    $0x9,%eax
 120:	0f b6 c0             	movzbl %al,%eax
 123:	89 44 24 04          	mov    %eax,0x4(%esp)
 127:	c7 04 24 d5 03 00 00 	movl   $0x3d5,(%esp)
 12e:	e8 fc ff ff ff       	call   12f <re_cur+0x91>
 133:	e8 fc ff ff ff       	call   134 <re_cur+0x96>
 138:	c9                   	leave  
 139:	c3                   	ret    

0000013a <console_scroll>:
 13a:	55                   	push   %ebp
 13b:	89 e5                	mov    %esp,%ebp
 13d:	53                   	push   %ebx
 13e:	83 ec 14             	sub    $0x14,%esp
 141:	e8 fc ff ff ff       	call   142 <console_scroll+0x8>
 146:	a1 00 00 00 00       	mov    0x0,%eax
 14b:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
 151:	8b 48 04             	mov    0x4(%eax),%ecx
 154:	8b 55 08             	mov    0x8(%ebp),%edx
 157:	89 d0                	mov    %edx,%eax
 159:	c1 e0 02             	shl    $0x2,%eax
 15c:	01 d0                	add    %edx,%eax
 15e:	c1 e0 05             	shl    $0x5,%eax
 161:	8d 04 01             	lea    (%ecx,%eax,1),%eax
 164:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
 167:	e8 fc ff ff ff       	call   168 <console_scroll+0x2e>
 16c:	83 7d f8 00          	cmpl   $0x0,0xfffffff8(%ebp)
 170:	79 07                	jns    179 <console_scroll+0x3f>
 172:	c7 45 f8 00 00 00 00 	movl   $0x0,0xfffffff8(%ebp)
 179:	81 7d f8 60 18 00 00 	cmpl   $0x1860,0xfffffff8(%ebp)
 180:	7e 07                	jle    189 <console_scroll+0x4f>
 182:	c7 45 f8 60 18 00 00 	movl   $0x1860,0xfffffff8(%ebp)
 189:	e8 fc ff ff ff       	call   18a <console_scroll+0x50>
 18e:	a1 00 00 00 00       	mov    0x0,%eax
 193:	8b 88 84 00 00 00    	mov    0x84(%eax),%ecx
 199:	a1 00 00 00 00       	mov    0x0,%eax
 19e:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
 1a4:	8b 58 08             	mov    0x8(%eax),%ebx
 1a7:	a1 00 00 00 00       	mov    0x0,%eax
 1ac:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
 1b2:	8b 50 04             	mov    0x4(%eax),%edx
 1b5:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 1b8:	29 d0                	sub    %edx,%eax
 1ba:	89 da                	mov    %ebx,%edx
 1bc:	29 c2                	sub    %eax,%edx
 1be:	89 d0                	mov    %edx,%eax
 1c0:	89 41 08             	mov    %eax,0x8(%ecx)
 1c3:	a1 00 00 00 00       	mov    0x0,%eax
 1c8:	8b 90 84 00 00 00    	mov    0x84(%eax),%edx
 1ce:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 1d1:	89 42 04             	mov    %eax,0x4(%edx)
 1d4:	e8 fc ff ff ff       	call   1d5 <console_scroll+0x9b>
 1d9:	e8 fc ff ff ff       	call   1da <console_scroll+0xa0>
 1de:	83 c4 14             	add    $0x14,%esp
 1e1:	5b                   	pop    %ebx
 1e2:	5d                   	pop    %ebp
 1e3:	c3                   	ret    

000001e4 <auto_scroll>:
 1e4:	55                   	push   %ebp
 1e5:	89 e5                	mov    %esp,%ebp
 1e7:	83 ec 08             	sub    $0x8,%esp
 1ea:	e8 fc ff ff ff       	call   1eb <auto_scroll+0x7>
 1ef:	eb 0c                	jmp    1fd <auto_scroll+0x19>
 1f1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 1f8:	e8 fc ff ff ff       	call   1f9 <auto_scroll+0x15>
 1fd:	a1 00 00 00 00       	mov    0x0,%eax
 202:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
 208:	8b 40 08             	mov    0x8(%eax),%eax
 20b:	3d 9f 0f 00 00       	cmp    $0xf9f,%eax
 210:	7e 23                	jle    235 <auto_scroll+0x51>
 212:	a1 00 00 00 00       	mov    0x0,%eax
 217:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
 21d:	8b 40 04             	mov    0x4(%eax),%eax
 220:	3d 5f 18 00 00       	cmp    $0x185f,%eax
 225:	7e ca                	jle    1f1 <auto_scroll+0xd>
 227:	eb 0c                	jmp    235 <auto_scroll+0x51>
 229:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 230:	e8 fc ff ff ff       	call   231 <auto_scroll+0x4d>
 235:	a1 00 00 00 00       	mov    0x0,%eax
 23a:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
 240:	8b 40 08             	mov    0x8(%eax),%eax
 243:	85 c0                	test   %eax,%eax
 245:	79 12                	jns    259 <auto_scroll+0x75>
 247:	a1 00 00 00 00       	mov    0x0,%eax
 24c:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
 252:	8b 40 04             	mov    0x4(%eax),%eax
 255:	85 c0                	test   %eax,%eax
 257:	7f d0                	jg     229 <auto_scroll+0x45>
 259:	e8 fc ff ff ff       	call   25a <auto_scroll+0x76>
 25e:	c9                   	leave  
 25f:	c3                   	ret    
