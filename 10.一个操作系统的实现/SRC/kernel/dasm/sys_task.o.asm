
sys_task.o:     file format elf32-i386

Disassembly of section .text:

00000000 <task_sys>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 48             	sub    $0x48,%esp
   6:	eb 00                	jmp    8 <task_sys+0x8>
   8:	8d 45 d4             	lea    0xffffffd4(%ebp),%eax
   b:	89 44 24 08          	mov    %eax,0x8(%esp)
   f:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%esp)
  16:	ff 
  17:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  1e:	e8 fc ff ff ff       	call   1f <task_sys+0x1f>
  23:	85 c0                	test   %eax,%eax
  25:	74 24                	je     4b <task_sys+0x4b>
  27:	c7 44 24 0c 0c 00 00 	movl   $0xc,0xc(%esp)
  2e:	00 
  2f:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  36:	00 
  37:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  3e:	00 
  3f:	c7 04 24 0b 00 00 00 	movl   $0xb,(%esp)
  46:	e8 fc ff ff ff       	call   47 <task_sys+0x47>
  4b:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
  4e:	83 f8 fc             	cmp    $0xfffffffc,%eax
  51:	74 24                	je     77 <task_sys+0x77>
  53:	c7 44 24 0c 0d 00 00 	movl   $0xd,0xc(%esp)
  5a:	00 
  5b:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  62:	00 
  63:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  6a:	00 
  6b:	c7 04 24 28 00 00 00 	movl   $0x28,(%esp)
  72:	e8 fc ff ff ff       	call   73 <task_sys+0x73>
  77:	8d 45 d4             	lea    0xffffffd4(%ebp),%eax
  7a:	83 c0 0c             	add    $0xc,%eax
  7d:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
  80:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
  83:	8b 00                	mov    (%eax),%eax
  85:	89 45 cc             	mov    %eax,0xffffffcc(%ebp)
  88:	83 7d cc 05          	cmpl   $0x5,0xffffffcc(%ebp)
  8c:	0f 87 d1 00 00 00    	ja     163 <task_sys+0x163>
  92:	8b 55 cc             	mov    0xffffffcc(%ebp),%edx
  95:	8b 04 95 68 00 00 00 	mov    0x68(,%edx,4),%eax
  9c:	ff e0                	jmp    *%eax
  9e:	e8 fc ff ff ff       	call   9f <task_sys+0x9f>
  a3:	a1 00 00 00 00       	mov    0x0,%eax
  a8:	89 c2                	mov    %eax,%edx
  aa:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
  ad:	89 10                	mov    %edx,(%eax)
  af:	e8 fc ff ff ff       	call   b0 <task_sys+0xb0>
  b4:	e9 aa 00 00 00       	jmp    163 <task_sys+0x163>
  b9:	e8 fc ff ff ff       	call   ba <task_sys+0xba>
  be:	8b 15 00 00 00 00    	mov    0x0,%edx
  c4:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
  c7:	89 10                	mov    %edx,(%eax)
  c9:	e8 fc ff ff ff       	call   ca <task_sys+0xca>
  ce:	e9 90 00 00 00       	jmp    163 <task_sys+0x163>
  d3:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
  d6:	89 04 24             	mov    %eax,(%esp)
  d9:	e8 fc ff ff ff       	call   da <task_sys+0xda>
  de:	e9 80 00 00 00       	jmp    163 <task_sys+0x163>
  e3:	e8 fc ff ff ff       	call   e4 <task_sys+0xe4>
  e8:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
  eb:	89 c2                	mov    %eax,%edx
  ed:	89 d0                	mov    %edx,%eax
  ef:	c1 e0 03             	shl    $0x3,%eax
  f2:	01 d0                	add    %edx,%eax
  f4:	c1 e0 05             	shl    $0x5,%eax
  f7:	05 00 00 00 00       	add    $0x0,%eax
  fc:	8b 80 fc 00 00 00    	mov    0xfc(%eax),%eax
 102:	89 c2                	mov    %eax,%edx
 104:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 107:	89 10                	mov    %edx,(%eax)
 109:	e8 fc ff ff ff       	call   10a <task_sys+0x10a>
 10e:	eb 53                	jmp    163 <task_sys+0x163>
 110:	e8 fc ff ff ff       	call   111 <task_sys+0x111>
 115:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 118:	89 c2                	mov    %eax,%edx
 11a:	89 d0                	mov    %edx,%eax
 11c:	c1 e0 03             	shl    $0x3,%eax
 11f:	01 d0                	add    %edx,%eax
 121:	c1 e0 05             	shl    $0x5,%eax
 124:	05 00 00 00 00       	add    $0x0,%eax
 129:	8b 50 4c             	mov    0x4c(%eax),%edx
 12c:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 12f:	89 10                	mov    %edx,(%eax)
 131:	e8 fc ff ff ff       	call   132 <task_sys+0x132>
 136:	eb 2b                	jmp    163 <task_sys+0x163>
 138:	e8 fc ff ff ff       	call   139 <task_sys+0x139>
 13d:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 140:	89 c2                	mov    %eax,%edx
 142:	89 d0                	mov    %edx,%eax
 144:	c1 e0 03             	shl    $0x3,%eax
 147:	01 d0                	add    %edx,%eax
 149:	c1 e0 05             	shl    $0x5,%eax
 14c:	8d 90 00 00 00 00    	lea    0x0(%eax),%edx
 152:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 155:	8b 40 0c             	mov    0xc(%eax),%eax
 158:	89 82 fc 00 00 00    	mov    %eax,0xfc(%edx)
 15e:	e8 fc ff ff ff       	call   15f <task_sys+0x15f>
 163:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
 166:	8d 55 d4             	lea    0xffffffd4(%ebp),%edx
 169:	89 54 24 08          	mov    %edx,0x8(%esp)
 16d:	89 44 24 04          	mov    %eax,0x4(%esp)
 171:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 178:	e8 fc ff ff ff       	call   179 <task_sys+0x179>
 17d:	85 c0                	test   %eax,%eax
 17f:	0f 84 83 fe ff ff    	je     8 <task_sys+0x8>
 185:	c7 44 24 0c 2f 00 00 	movl   $0x2f,0xc(%esp)
 18c:	00 
 18d:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 194:	00 
 195:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 19c:	00 
 19d:	c7 04 24 44 00 00 00 	movl   $0x44,(%esp)
 1a4:	e8 fc ff ff ff       	call   1a5 <task_sys+0x1a5>
 1a9:	e9 5a fe ff ff       	jmp    8 <task_sys+0x8>

000001ae <sys_out_ch>:
 1ae:	55                   	push   %ebp
 1af:	89 e5                	mov    %esp,%ebp
 1b1:	83 ec 18             	sub    $0x18,%esp
 1b4:	8b 45 08             	mov    0x8(%ebp),%eax
 1b7:	8b 40 08             	mov    0x8(%eax),%eax
 1ba:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
 1c0:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
 1c3:	8b 45 08             	mov    0x8(%ebp),%eax
 1c6:	0f b6 40 04          	movzbl 0x4(%eax),%eax
 1ca:	3c 0a                	cmp    $0xa,%al
 1cc:	75 58                	jne    226 <sys_out_ch+0x78>
 1ce:	e8 fc ff ff ff       	call   1cf <sys_out_ch+0x21>
 1d3:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 1d6:	8b 40 08             	mov    0x8(%eax),%eax
 1d9:	8d 90 a0 00 00 00    	lea    0xa0(%eax),%edx
 1df:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 1e2:	89 50 08             	mov    %edx,0x8(%eax)
 1e5:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 1e8:	8b 48 08             	mov    0x8(%eax),%ecx
 1eb:	c7 45 ec 67 66 66 66 	movl   $0x66666667,0xffffffec(%ebp)
 1f2:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 1f5:	f7 e9                	imul   %ecx
 1f7:	c1 fa 06             	sar    $0x6,%edx
 1fa:	89 c8                	mov    %ecx,%eax
 1fc:	c1 f8 1f             	sar    $0x1f,%eax
 1ff:	29 c2                	sub    %eax,%edx
 201:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 204:	89 50 08             	mov    %edx,0x8(%eax)
 207:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 20a:	8b 50 08             	mov    0x8(%eax),%edx
 20d:	89 d0                	mov    %edx,%eax
 20f:	c1 e0 02             	shl    $0x2,%eax
 212:	01 d0                	add    %edx,%eax
 214:	c1 e0 05             	shl    $0x5,%eax
 217:	89 c2                	mov    %eax,%edx
 219:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 21c:	89 50 08             	mov    %edx,0x8(%eax)
 21f:	e8 fc ff ff ff       	call   220 <sys_out_ch+0x72>
 224:	eb 79                	jmp    29f <sys_out_ch+0xf1>
 226:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 229:	8b 00                	mov    (%eax),%eax
 22b:	8d 90 00 80 0b 00    	lea    0xb8000(%eax),%edx
 231:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 234:	8b 40 04             	mov    0x4(%eax),%eax
 237:	01 c2                	add    %eax,%edx
 239:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 23c:	8b 40 08             	mov    0x8(%eax),%eax
 23f:	8d 04 02             	lea    (%edx,%eax,1),%eax
 242:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 245:	e8 fc ff ff ff       	call   246 <sys_out_ch+0x98>
 24a:	8b 45 08             	mov    0x8(%ebp),%eax
 24d:	0f b6 40 04          	movzbl 0x4(%eax),%eax
 251:	3c 08                	cmp    $0x8,%al
 253:	75 1b                	jne    270 <sys_out_ch+0xc2>
 255:	83 6d fc 02          	subl   $0x2,0xfffffffc(%ebp)
 259:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 25c:	c6 00 20             	movb   $0x20,(%eax)
 25f:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 262:	8b 40 08             	mov    0x8(%eax),%eax
 265:	8d 50 fe             	lea    0xfffffffe(%eax),%edx
 268:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 26b:	89 50 08             	mov    %edx,0x8(%eax)
 26e:	eb 2a                	jmp    29a <sys_out_ch+0xec>
 270:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
 273:	8b 45 08             	mov    0x8(%ebp),%eax
 276:	0f b6 40 04          	movzbl 0x4(%eax),%eax
 27a:	88 02                	mov    %al,(%edx)
 27c:	83 45 fc 01          	addl   $0x1,0xfffffffc(%ebp)
 280:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
 283:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 286:	8b 40 0c             	mov    0xc(%eax),%eax
 289:	88 02                	mov    %al,(%edx)
 28b:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 28e:	8b 40 08             	mov    0x8(%eax),%eax
 291:	8d 50 02             	lea    0x2(%eax),%edx
 294:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 297:	89 50 08             	mov    %edx,0x8(%eax)
 29a:	e8 fc ff ff ff       	call   29b <sys_out_ch+0xed>
 29f:	c7 05 00 00 00 00 01 	movl   $0x1,0x0
 2a6:	00 00 00 
 2a9:	a1 00 00 00 00       	mov    0x0,%eax
 2ae:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
 2b4:	3b 45 f8             	cmp    0xfffffff8(%ebp),%eax
 2b7:	75 05                	jne    2be <sys_out_ch+0x110>
 2b9:	e8 fc ff ff ff       	call   2ba <sys_out_ch+0x10c>
 2be:	c9                   	leave  
 2bf:	c3                   	ret    
