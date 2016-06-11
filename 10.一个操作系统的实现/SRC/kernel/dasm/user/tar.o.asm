
user/tar.o:     file format elf32-i386

Disassembly of section .text:

00000000 <extract>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	81 ec 48 0c 00 00    	sub    $0xc48,%esp
   9:	8b 45 08             	mov    0x8(%ebp),%eax
   c:	0f b6 00             	movzbl (%eax),%eax
   f:	88 45 df             	mov    %al,0xffffffdf(%ebp)
  12:	c7 45 e0 00 0c 00 00 	movl   $0xc00,0xffffffe0(%ebp)
  19:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  20:	00 
  21:	8b 45 08             	mov    0x8(%ebp),%eax
  24:	89 04 24             	mov    %eax,(%esp)
  27:	e8 fc ff ff ff       	call   28 <extract+0x28>
  2c:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
  2f:	83 7d f0 ff          	cmpl   $0xffffffff,0xfffffff0(%ebp)
  33:	75 24                	jne    59 <extract+0x59>
  35:	c7 44 24 0c 13 00 00 	movl   $0x13,0xc(%esp)
  3c:	00 
  3d:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  44:	00 
  45:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  4c:	00 
  4d:	c7 04 24 0b 00 00 00 	movl   $0xb,(%esp)
  54:	e8 fc ff ff ff       	call   55 <extract+0x55>
  59:	c7 44 24 0c 00 02 00 	movl   $0x200,0xc(%esp)
  60:	00 
  61:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  68:	00 
  69:	8d 85 df f3 ff ff    	lea    0xfffff3df(%ebp),%eax
  6f:	89 44 24 04          	mov    %eax,0x4(%esp)
  73:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
  76:	89 04 24             	mov    %eax,(%esp)
  79:	e8 fc ff ff ff       	call   7a <extract+0x7a>
  7e:	0f b6 85 df f3 ff ff 	movzbl 0xfffff3df(%ebp),%eax
  85:	84 c0                	test   %al,%al
  87:	0f 84 74 01 00 00    	je     201 <extract+0x201>
  8d:	8d 85 df f3 ff ff    	lea    0xfffff3df(%ebp),%eax
  93:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
  96:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
  99:	89 04 24             	mov    %eax,(%esp)
  9c:	e8 fc ff ff ff       	call   9d <extract+0x9d>
  a1:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
  a4:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
  a7:	83 c0 7c             	add    $0x7c,%eax
  aa:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
  ad:	c7 45 f4 00 00 00 00 	movl   $0x0,0xfffffff4(%ebp)
  b4:	c7 45 f8 00 00 00 00 	movl   $0x0,0xfffffff8(%ebp)
  bb:	eb 25                	jmp    e2 <extract+0xe2>
  bd:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
  c0:	0f b6 00             	movzbl (%eax),%eax
  c3:	84 c0                	test   %al,%al
  c5:	74 21                	je     e8 <extract+0xe8>
  c7:	c1 65 f8 03          	shll   $0x3,0xfffffff8(%ebp)
  cb:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
  ce:	0f b6 00             	movzbl (%eax),%eax
  d1:	0f be c0             	movsbl %al,%eax
  d4:	83 e8 30             	sub    $0x30,%eax
  d7:	01 45 f8             	add    %eax,0xfffffff8(%ebp)
  da:	83 45 f4 01          	addl   $0x1,0xfffffff4(%ebp)
  de:	83 45 ec 01          	addl   $0x1,0xffffffec(%ebp)
  e2:	83 7d f4 0b          	cmpl   $0xb,0xfffffff4(%ebp)
  e6:	7e d5                	jle    bd <extract+0xbd>
  e8:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
  ef:	00 
  f0:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
  f3:	89 04 24             	mov    %eax,(%esp)
  f6:	e8 fc ff ff ff       	call   f7 <extract+0xf7>
  fb:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
  fe:	83 7d fc ff          	cmpl   $0xffffffff,0xfffffffc(%ebp)
 102:	0f 85 df 00 00 00    	jne    1e7 <extract+0x1e7>
 108:	c7 44 24 0c 27 00 00 	movl   $0x27,0xc(%esp)
 10f:	00 
 110:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 117:	00 
 118:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 11f:	00 
 120:	c7 04 24 14 00 00 00 	movl   $0x14,(%esp)
 127:	e8 fc ff ff ff       	call   128 <extract+0x128>
 12c:	e9 b6 00 00 00       	jmp    1e7 <extract+0x1e7>
 131:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 134:	3b 45 e0             	cmp    0xffffffe0(%ebp),%eax
 137:	7f 60                	jg     199 <extract+0x199>
 139:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
 13c:	81 c2 ff 01 00 00    	add    $0x1ff,%edx
 142:	89 d0                	mov    %edx,%eax
 144:	c1 f8 1f             	sar    $0x1f,%eax
 147:	c1 e8 17             	shr    $0x17,%eax
 14a:	01 d0                	add    %edx,%eax
 14c:	c1 f8 09             	sar    $0x9,%eax
 14f:	c1 e0 09             	shl    $0x9,%eax
 152:	89 44 24 0c          	mov    %eax,0xc(%esp)
 156:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 15d:	00 
 15e:	8d 85 df f3 ff ff    	lea    0xfffff3df(%ebp),%eax
 164:	89 44 24 04          	mov    %eax,0x4(%esp)
 168:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 16b:	89 04 24             	mov    %eax,(%esp)
 16e:	e8 fc ff ff ff       	call   16f <extract+0x16f>
 173:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 176:	89 44 24 0c          	mov    %eax,0xc(%esp)
 17a:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 181:	00 
 182:	8d 85 df f3 ff ff    	lea    0xfffff3df(%ebp),%eax
 188:	89 44 24 04          	mov    %eax,0x4(%esp)
 18c:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 18f:	89 04 24             	mov    %eax,(%esp)
 192:	e8 fc ff ff ff       	call   193 <extract+0x193>
 197:	eb 58                	jmp    1f1 <extract+0x1f1>
 199:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
 19c:	89 44 24 0c          	mov    %eax,0xc(%esp)
 1a0:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 1a7:	00 
 1a8:	8d 85 df f3 ff ff    	lea    0xfffff3df(%ebp),%eax
 1ae:	89 44 24 04          	mov    %eax,0x4(%esp)
 1b2:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 1b5:	89 04 24             	mov    %eax,(%esp)
 1b8:	e8 fc ff ff ff       	call   1b9 <extract+0x1b9>
 1bd:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
 1c0:	89 44 24 0c          	mov    %eax,0xc(%esp)
 1c4:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 1cb:	00 
 1cc:	8d 85 df f3 ff ff    	lea    0xfffff3df(%ebp),%eax
 1d2:	89 44 24 04          	mov    %eax,0x4(%esp)
 1d6:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 1d9:	89 04 24             	mov    %eax,(%esp)
 1dc:	e8 fc ff ff ff       	call   1dd <extract+0x1dd>
 1e1:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
 1e4:	29 45 f8             	sub    %eax,0xfffffff8(%ebp)
 1e7:	83 7d f8 00          	cmpl   $0x0,0xfffffff8(%ebp)
 1eb:	0f 8f 40 ff ff ff    	jg     131 <extract+0x131>
 1f1:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 1f4:	89 04 24             	mov    %eax,(%esp)
 1f7:	e8 fc ff ff ff       	call   1f8 <extract+0x1f8>
 1fc:	e9 58 fe ff ff       	jmp    59 <extract+0x59>
 201:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
 204:	89 04 24             	mov    %eax,(%esp)
 207:	e8 fc ff ff ff       	call   208 <extract+0x208>
 20c:	b8 00 00 00 00       	mov    $0x0,%eax
 211:	c9                   	leave  
 212:	c3                   	ret    
