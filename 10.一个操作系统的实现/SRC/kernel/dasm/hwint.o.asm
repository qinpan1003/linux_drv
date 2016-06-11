
hwint.o:     file format elf32-i386

Disassembly of section .text:

00000000 <hwint00>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	a1 00 00 00 00       	mov    0x0,%eax
   b:	83 c0 01             	add    $0x1,%eax
   e:	a3 00 00 00 00       	mov    %eax,0x0
  13:	c7 45 fc 00 00 00 00 	movl   $0x0,0xfffffffc(%ebp)
  1a:	e8 fc ff ff ff       	call   1b <hwint00+0x1b>
  1f:	eb 3e                	jmp    5f <hwint00+0x5f>
  21:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
  24:	8b 40 54             	mov    0x54(%eax),%eax
  27:	83 f8 04             	cmp    $0x4,%eax
  2a:	75 2c                	jne    58 <hwint00+0x58>
  2c:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
  2f:	8b 80 f8 00 00 00    	mov    0xf8(%eax),%eax
  35:	8d 50 ff             	lea    0xffffffff(%eax),%edx
  38:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
  3b:	89 90 f8 00 00 00    	mov    %edx,0xf8(%eax)
  41:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
  44:	8b 80 f8 00 00 00    	mov    0xf8(%eax),%eax
  4a:	85 c0                	test   %eax,%eax
  4c:	7f 0a                	jg     58 <hwint00+0x58>
  4e:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
  51:	c7 40 54 00 00 00 00 	movl   $0x0,0x54(%eax)
  58:	81 45 fc 20 01 00 00 	addl   $0x120,0xfffffffc(%ebp)
  5f:	b8 60 2c 01 00       	mov    $0x12c60,%eax
  64:	39 45 fc             	cmp    %eax,0xfffffffc(%ebp)
  67:	72 b8                	jb     21 <hwint00+0x21>
  69:	e8 fc ff ff ff       	call   6a <hwint00+0x6a>
  6e:	e8 fc ff ff ff       	call   6f <hwint00+0x6f>
  73:	a1 00 00 00 00       	mov    0x0,%eax
  78:	8b 90 f4 00 00 00    	mov    0xf4(%eax),%edx
  7e:	83 ea 01             	sub    $0x1,%edx
  81:	89 90 f4 00 00 00    	mov    %edx,0xf4(%eax)
  87:	8b 80 f4 00 00 00    	mov    0xf4(%eax),%eax
  8d:	85 c0                	test   %eax,%eax
  8f:	7f 05                	jg     96 <hwint00+0x96>
  91:	e8 fc ff ff ff       	call   92 <hwint00+0x92>
  96:	a1 00 00 00 00       	mov    0x0,%eax
  9b:	8b 80 f4 00 00 00    	mov    0xf4(%eax),%eax
  a1:	85 c0                	test   %eax,%eax
  a3:	7f 24                	jg     c9 <hwint00+0xc9>
  a5:	c7 44 24 0c 22 00 00 	movl   $0x22,0xc(%esp)
  ac:	00 
  ad:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  b4:	00 
  b5:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  bc:	00 
  bd:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
  c4:	e8 fc ff ff ff       	call   c5 <hwint00+0xc5>
  c9:	a1 00 00 00 00       	mov    0x0,%eax
  ce:	83 f8 01             	cmp    $0x1,%eax
  d1:	75 0c                	jne    df <hwint00+0xdf>
  d3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  da:	e8 fc ff ff ff       	call   db <hwint00+0xdb>
  df:	e8 fc ff ff ff       	call   e0 <hwint00+0xe0>
  e4:	c9                   	leave  
  e5:	c3                   	ret    

000000e6 <hwint01>:
  e6:	55                   	push   %ebp
  e7:	89 e5                	mov    %esp,%ebp
  e9:	83 ec 08             	sub    $0x8,%esp
  ec:	e8 fc ff ff ff       	call   ed <hwint01+0x7>
  f1:	c9                   	leave  
  f2:	c3                   	ret    

000000f3 <hwint02>:
  f3:	55                   	push   %ebp
  f4:	89 e5                	mov    %esp,%ebp
  f6:	83 ec 08             	sub    $0x8,%esp
  f9:	c7 04 24 1f 00 00 00 	movl   $0x1f,(%esp)
 100:	e8 fc ff ff ff       	call   101 <hwint02+0xe>
 105:	c9                   	leave  
 106:	c3                   	ret    

00000107 <hwint03>:
 107:	55                   	push   %ebp
 108:	89 e5                	mov    %esp,%ebp
 10a:	83 ec 08             	sub    $0x8,%esp
 10d:	c7 04 24 27 00 00 00 	movl   $0x27,(%esp)
 114:	e8 fc ff ff ff       	call   115 <hwint03+0xe>
 119:	c9                   	leave  
 11a:	c3                   	ret    

0000011b <hwint04>:
 11b:	55                   	push   %ebp
 11c:	89 e5                	mov    %esp,%ebp
 11e:	83 ec 08             	sub    $0x8,%esp
 121:	c7 04 24 2f 00 00 00 	movl   $0x2f,(%esp)
 128:	e8 fc ff ff ff       	call   129 <hwint04+0xe>
 12d:	c9                   	leave  
 12e:	c3                   	ret    

0000012f <hwint05>:
 12f:	55                   	push   %ebp
 130:	89 e5                	mov    %esp,%ebp
 132:	83 ec 08             	sub    $0x8,%esp
 135:	c7 04 24 37 00 00 00 	movl   $0x37,(%esp)
 13c:	e8 fc ff ff ff       	call   13d <hwint05+0xe>
 141:	c9                   	leave  
 142:	c3                   	ret    

00000143 <hwint06>:
 143:	55                   	push   %ebp
 144:	89 e5                	mov    %esp,%ebp
 146:	83 ec 08             	sub    $0x8,%esp
 149:	c7 04 24 3f 00 00 00 	movl   $0x3f,(%esp)
 150:	e8 fc ff ff ff       	call   151 <hwint06+0xe>
 155:	c9                   	leave  
 156:	c3                   	ret    

00000157 <hwint07>:
 157:	55                   	push   %ebp
 158:	89 e5                	mov    %esp,%ebp
 15a:	83 ec 08             	sub    $0x8,%esp
 15d:	c7 04 24 47 00 00 00 	movl   $0x47,(%esp)
 164:	e8 fc ff ff ff       	call   165 <hwint07+0xe>
 169:	c9                   	leave  
 16a:	c3                   	ret    

0000016b <hwint08>:
 16b:	55                   	push   %ebp
 16c:	89 e5                	mov    %esp,%ebp
 16e:	83 ec 08             	sub    $0x8,%esp
 171:	c7 04 24 4f 00 00 00 	movl   $0x4f,(%esp)
 178:	e8 fc ff ff ff       	call   179 <hwint08+0xe>
 17d:	c9                   	leave  
 17e:	c3                   	ret    

0000017f <hwint09>:
 17f:	55                   	push   %ebp
 180:	89 e5                	mov    %esp,%ebp
 182:	83 ec 08             	sub    $0x8,%esp
 185:	c7 04 24 57 00 00 00 	movl   $0x57,(%esp)
 18c:	e8 fc ff ff ff       	call   18d <hwint09+0xe>
 191:	c9                   	leave  
 192:	c3                   	ret    

00000193 <hwint10>:
 193:	55                   	push   %ebp
 194:	89 e5                	mov    %esp,%ebp
 196:	83 ec 08             	sub    $0x8,%esp
 199:	c7 04 24 5f 00 00 00 	movl   $0x5f,(%esp)
 1a0:	e8 fc ff ff ff       	call   1a1 <hwint10+0xe>
 1a5:	c9                   	leave  
 1a6:	c3                   	ret    

000001a7 <hwint11>:
 1a7:	55                   	push   %ebp
 1a8:	89 e5                	mov    %esp,%ebp
 1aa:	83 ec 08             	sub    $0x8,%esp
 1ad:	c7 04 24 67 00 00 00 	movl   $0x67,(%esp)
 1b4:	e8 fc ff ff ff       	call   1b5 <hwint11+0xe>
 1b9:	c9                   	leave  
 1ba:	c3                   	ret    

000001bb <hwint12>:
 1bb:	55                   	push   %ebp
 1bc:	89 e5                	mov    %esp,%ebp
 1be:	83 ec 08             	sub    $0x8,%esp
 1c1:	c7 04 24 6f 00 00 00 	movl   $0x6f,(%esp)
 1c8:	e8 fc ff ff ff       	call   1c9 <hwint12+0xe>
 1cd:	c9                   	leave  
 1ce:	c3                   	ret    

000001cf <hwint13>:
 1cf:	55                   	push   %ebp
 1d0:	89 e5                	mov    %esp,%ebp
 1d2:	83 ec 08             	sub    $0x8,%esp
 1d5:	c7 04 24 77 00 00 00 	movl   $0x77,(%esp)
 1dc:	e8 fc ff ff ff       	call   1dd <hwint13+0xe>
 1e1:	c9                   	leave  
 1e2:	c3                   	ret    

000001e3 <hwint14>:
 1e3:	55                   	push   %ebp
 1e4:	89 e5                	mov    %esp,%ebp
 1e6:	83 ec 08             	sub    $0x8,%esp
 1e9:	e8 fc ff ff ff       	call   1ea <hwint14+0x7>
 1ee:	c9                   	leave  
 1ef:	c3                   	ret    

000001f0 <hwint15>:
 1f0:	55                   	push   %ebp
 1f1:	89 e5                	mov    %esp,%ebp
 1f3:	83 ec 08             	sub    $0x8,%esp
 1f6:	c7 04 24 7f 00 00 00 	movl   $0x7f,(%esp)
 1fd:	e8 fc ff ff ff       	call   1fe <hwint15+0xe>
 202:	c9                   	leave  
 203:	c3                   	ret    

00000204 <hw_int_handler>:
 204:	55                   	push   %ebp
 205:	89 e5                	mov    %esp,%ebp
 207:	83 ec 08             	sub    $0x8,%esp
 20a:	8b 45 08             	mov    0x8(%ebp),%eax
 20d:	8b 04 85 00 00 00 00 	mov    0x0(,%eax,4),%eax
 214:	ff d0                	call   *%eax
 216:	c9                   	leave  
 217:	c3                   	ret    
