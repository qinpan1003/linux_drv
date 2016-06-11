
user/user_fun.o:     file format elf32-i386

Disassembly of section .text:

00000000 <get_ticks>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 48             	sub    $0x48,%esp
   6:	c7 45 e0 fc ff ff ff 	movl   $0xfffffffc,0xffffffe0(%ebp)
   d:	c7 45 e4 00 00 00 00 	movl   $0x0,0xffffffe4(%ebp)
  14:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
  17:	89 44 24 08          	mov    %eax,0x8(%esp)
  1b:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
  22:	00 
  23:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  2a:	e8 fc ff ff ff       	call   2b <get_ticks+0x2b>
  2f:	85 c0                	test   %eax,%eax
  31:	74 24                	je     57 <get_ticks+0x57>
  33:	c7 44 24 0c 09 00 00 	movl   $0x9,0xc(%esp)
  3a:	00 
  3b:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  42:	00 
  43:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  4a:	00 
  4b:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
  52:	e8 fc ff ff ff       	call   53 <get_ticks+0x53>
  57:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
  5a:	c9                   	leave  
  5b:	c3                   	ret    

0000005c <get_idle_count>:
  5c:	55                   	push   %ebp
  5d:	89 e5                	mov    %esp,%ebp
  5f:	83 ec 48             	sub    $0x48,%esp
  62:	c7 45 e0 fc ff ff ff 	movl   $0xfffffffc,0xffffffe0(%ebp)
  69:	c7 45 e4 01 00 00 00 	movl   $0x1,0xffffffe4(%ebp)
  70:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
  73:	89 44 24 08          	mov    %eax,0x8(%esp)
  77:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
  7e:	00 
  7f:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  86:	e8 fc ff ff ff       	call   87 <get_idle_count+0x2b>
  8b:	85 c0                	test   %eax,%eax
  8d:	74 24                	je     b3 <get_idle_count+0x57>
  8f:	c7 44 24 0c 13 00 00 	movl   $0x13,0xc(%esp)
  96:	00 
  97:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  9e:	00 
  9f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  a6:	00 
  a7:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
  ae:	e8 fc ff ff ff       	call   af <get_idle_count+0x53>
  b3:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
  b6:	c9                   	leave  
  b7:	c3                   	ret    

000000b8 <out_char>:
  b8:	55                   	push   %ebp
  b9:	89 e5                	mov    %esp,%ebp
  bb:	83 ec 48             	sub    $0x48,%esp
  be:	8b 45 0c             	mov    0xc(%ebp),%eax
  c1:	88 45 cc             	mov    %al,0xffffffcc(%ebp)
  c4:	c7 45 e0 fc ff ff ff 	movl   $0xfffffffc,0xffffffe0(%ebp)
  cb:	c7 45 e4 02 00 00 00 	movl   $0x2,0xffffffe4(%ebp)
  d2:	0f b6 45 cc          	movzbl 0xffffffcc(%ebp),%eax
  d6:	88 45 e8             	mov    %al,0xffffffe8(%ebp)
  d9:	8b 45 08             	mov    0x8(%ebp),%eax
  dc:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
  df:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
  e2:	89 44 24 08          	mov    %eax,0x8(%esp)
  e6:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
  ed:	00 
  ee:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
  f5:	e8 fc ff ff ff       	call   f6 <out_char+0x3e>
  fa:	85 c0                	test   %eax,%eax
  fc:	74 24                	je     122 <out_char+0x6a>
  fe:	c7 44 24 0c 20 00 00 	movl   $0x20,0xc(%esp)
 105:	00 
 106:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 10d:	00 
 10e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 115:	00 
 116:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
 11d:	e8 fc ff ff ff       	call   11e <out_char+0x66>
 122:	c9                   	leave  
 123:	c3                   	ret    

00000124 <get_parent>:
 124:	55                   	push   %ebp
 125:	89 e5                	mov    %esp,%ebp
 127:	83 ec 48             	sub    $0x48,%esp
 12a:	c7 45 e0 fc ff ff ff 	movl   $0xfffffffc,0xffffffe0(%ebp)
 131:	c7 45 e4 03 00 00 00 	movl   $0x3,0xffffffe4(%ebp)
 138:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
 13b:	89 44 24 08          	mov    %eax,0x8(%esp)
 13f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 146:	00 
 147:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 14e:	e8 fc ff ff ff       	call   14f <get_parent+0x2b>
 153:	85 c0                	test   %eax,%eax
 155:	74 24                	je     17b <get_parent+0x57>
 157:	c7 44 24 0c 29 00 00 	movl   $0x29,0xc(%esp)
 15e:	00 
 15f:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 166:	00 
 167:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 16e:	00 
 16f:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
 176:	e8 fc ff ff ff       	call   177 <get_parent+0x53>
 17b:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
 17e:	c9                   	leave  
 17f:	c3                   	ret    

00000180 <get_pid>:
 180:	55                   	push   %ebp
 181:	89 e5                	mov    %esp,%ebp
 183:	83 ec 48             	sub    $0x48,%esp
 186:	c7 45 e0 fc ff ff ff 	movl   $0xfffffffc,0xffffffe0(%ebp)
 18d:	c7 45 e4 04 00 00 00 	movl   $0x4,0xffffffe4(%ebp)
 194:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
 197:	89 44 24 08          	mov    %eax,0x8(%esp)
 19b:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 1a2:	00 
 1a3:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 1aa:	e8 fc ff ff ff       	call   1ab <get_pid+0x2b>
 1af:	85 c0                	test   %eax,%eax
 1b1:	74 24                	je     1d7 <get_pid+0x57>
 1b3:	c7 44 24 0c 33 00 00 	movl   $0x33,0xc(%esp)
 1ba:	00 
 1bb:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 1c2:	00 
 1c3:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 1ca:	00 
 1cb:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
 1d2:	e8 fc ff ff ff       	call   1d3 <get_pid+0x53>
 1d7:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
 1da:	c9                   	leave  
 1db:	c3                   	ret    

000001dc <set_ppid>:
 1dc:	55                   	push   %ebp
 1dd:	89 e5                	mov    %esp,%ebp
 1df:	83 ec 48             	sub    $0x48,%esp
 1e2:	c7 45 e0 fc ff ff ff 	movl   $0xfffffffc,0xffffffe0(%ebp)
 1e9:	c7 45 e4 05 00 00 00 	movl   $0x5,0xffffffe4(%ebp)
 1f0:	8b 45 08             	mov    0x8(%ebp),%eax
 1f3:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
 1f6:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
 1f9:	89 44 24 08          	mov    %eax,0x8(%esp)
 1fd:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 204:	00 
 205:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 20c:	e8 fc ff ff ff       	call   20d <set_ppid+0x31>
 211:	85 c0                	test   %eax,%eax
 213:	74 24                	je     239 <set_ppid+0x5d>
 215:	c7 44 24 0c 3e 00 00 	movl   $0x3e,0xc(%esp)
 21c:	00 
 21d:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 224:	00 
 225:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 22c:	00 
 22d:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
 234:	e8 fc ff ff ff       	call   235 <set_ppid+0x59>
 239:	c9                   	leave  
 23a:	c3                   	ret    
