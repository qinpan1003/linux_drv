
init.o:     file format elf32-i386

Disassembly of section .text:

00000000 <proc_init>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 38             	sub    $0x38,%esp
   6:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
   d:	00 
   e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  15:	e8 fc ff ff ff       	call   16 <proc_init+0x16>
  1a:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
  1d:	83 7d f0 00          	cmpl   $0x0,0xfffffff0(%ebp)
  21:	74 24                	je     47 <proc_init+0x47>
  23:	c7 44 24 0c 10 00 00 	movl   $0x10,0xc(%esp)
  2a:	00 
  2b:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
  32:	00 
  33:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
  3a:	00 
  3b:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
  42:	e8 fc ff ff ff       	call   43 <proc_init+0x43>
  47:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
  4e:	00 
  4f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  56:	e8 fc ff ff ff       	call   57 <proc_init+0x57>
  5b:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
  5e:	83 7d f4 01          	cmpl   $0x1,0xfffffff4(%ebp)
  62:	74 24                	je     88 <proc_init+0x88>
  64:	c7 44 24 0c 12 00 00 	movl   $0x12,0xc(%esp)
  6b:	00 
  6c:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
  73:	00 
  74:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
  7b:	00 
  7c:	c7 04 24 17 00 00 00 	movl   $0x17,(%esp)
  83:	e8 fc ff ff ff       	call   84 <proc_init+0x84>
  88:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
  8f:	00 
  90:	c7 04 24 23 00 00 00 	movl   $0x23,(%esp)
  97:	e8 fc ff ff ff       	call   98 <proc_init+0x98>
  9c:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
  9f:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
  a6:	00 
  a7:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  ae:	00 
  af:	8d 45 ef             	lea    0xffffffef(%ebp),%eax
  b2:	89 44 24 04          	mov    %eax,0x4(%esp)
  b6:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
  b9:	89 04 24             	mov    %eax,(%esp)
  bc:	e8 fc ff ff ff       	call   bd <proc_init+0xbd>
  c1:	0f b6 45 ef          	movzbl 0xffffffef(%ebp),%eax
  c5:	84 c0                	test   %al,%al
  c7:	74 5a                	je     123 <proc_init+0x123>
  c9:	c7 04 24 23 00 00 00 	movl   $0x23,(%esp)
  d0:	e8 fc ff ff ff       	call   d1 <proc_init+0xd1>
  d5:	85 c0                	test   %eax,%eax
  d7:	74 24                	je     fd <proc_init+0xfd>
  d9:	c7 44 24 0c 1a 00 00 	movl   $0x1a,0xc(%esp)
  e0:	00 
  e1:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
  e8:	00 
  e9:	c7 44 24 04 05 00 00 	movl   $0x5,0x4(%esp)
  f0:	00 
  f1:	c7 04 24 2b 00 00 00 	movl   $0x2b,(%esp)
  f8:	e8 fc ff ff ff       	call   f9 <proc_init+0xf9>
  fd:	c6 45 ef 00          	movb   $0x0,0xffffffef(%ebp)
 101:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
 108:	00 
 109:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
 110:	ff 
 111:	8d 45 ef             	lea    0xffffffef(%ebp),%eax
 114:	89 44 24 04          	mov    %eax,0x4(%esp)
 118:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 11b:	89 04 24             	mov    %eax,(%esp)
 11e:	e8 fc ff ff ff       	call   11f <proc_init+0x11f>
 123:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 126:	89 04 24             	mov    %eax,(%esp)
 129:	e8 fc ff ff ff       	call   12a <proc_init+0x12a>
 12e:	c7 45 e8 11 11 11 11 	movl   $0x11111111,0xffffffe8(%ebp)
 135:	e8 fc ff ff ff       	call   136 <proc_init+0x136>
 13a:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 13d:	83 7d fc 00          	cmpl   $0x0,0xfffffffc(%ebp)
 141:	74 36                	je     179 <proc_init+0x179>
 143:	c7 04 24 43 00 00 00 	movl   $0x43,(%esp)
 14a:	e8 fc ff ff ff       	call   14b <proc_init+0x14b>
 14f:	8d 45 e8             	lea    0xffffffe8(%ebp),%eax
 152:	89 04 24             	mov    %eax,(%esp)
 155:	e8 fc ff ff ff       	call   156 <proc_init+0x156>
 15a:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 15d:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
 160:	89 44 24 08          	mov    %eax,0x8(%esp)
 164:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 167:	89 44 24 04          	mov    %eax,0x4(%esp)
 16b:	c7 04 24 4c 00 00 00 	movl   $0x4c,(%esp)
 172:	e8 fc ff ff ff       	call   173 <proc_init+0x173>
 177:	eb ca                	jmp    143 <proc_init+0x143>
 179:	e8 fc ff ff ff       	call   17a <proc_init+0x17a>
 17e:	89 44 24 04          	mov    %eax,0x4(%esp)
 182:	c7 04 24 7d 00 00 00 	movl   $0x7d,(%esp)
 189:	e8 fc ff ff ff       	call   18a <proc_init+0x18a>
 18e:	c7 45 e0 8d 00 00 00 	movl   $0x8d,0xffffffe0(%ebp)
 195:	c7 45 e4 93 00 00 00 	movl   $0x93,0xffffffe4(%ebp)
 19c:	8d 45 e0             	lea    0xffffffe0(%ebp),%eax
 19f:	89 44 24 08          	mov    %eax,0x8(%esp)
 1a3:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
 1aa:	00 
 1ab:	c7 04 24 8d 00 00 00 	movl   $0x8d,(%esp)
 1b2:	e8 fc ff ff ff       	call   1b3 <proc_init+0x1b3>
 1b7:	c7 04 24 ff ff ff ff 	movl   $0xffffffff,(%esp)
 1be:	e8 fc ff ff ff       	call   1bf <proc_init+0x1bf>
 1c3:	eb b4                	jmp    179 <proc_init+0x179>
