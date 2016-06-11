
hd.o:     file format elf32-i386

Disassembly of section .text:

00000000 <task_hd>:
       0:	55                   	push   %ebp
       1:	89 e5                	mov    %esp,%ebp
       3:	53                   	push   %ebx
       4:	83 ec 54             	sub    $0x54,%esp
       7:	eb 00                	jmp    9 <task_hd+0x9>
       9:	8d 45 d0             	lea    0xffffffd0(%ebp),%eax
       c:	89 44 24 08          	mov    %eax,0x8(%esp)
      10:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%esp)
      17:	ff 
      18:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      1f:	e8 fc ff ff ff       	call   20 <task_hd+0x20>
      24:	85 c0                	test   %eax,%eax
      26:	74 24                	je     4c <task_hd+0x4c>
      28:	c7 44 24 0c 0d 00 00 	movl   $0xd,0xc(%esp)
      2f:	00 
      30:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
      37:	00 
      38:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
      3f:	00 
      40:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
      47:	e8 fc ff ff ff       	call   48 <task_hd+0x48>
      4c:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
      4f:	83 f8 ff             	cmp    $0xffffffff,%eax
      52:	74 24                	je     78 <task_hd+0x78>
      54:	c7 44 24 0c 0e 00 00 	movl   $0xe,0xc(%esp)
      5b:	00 
      5c:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
      63:	00 
      64:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
      6b:	00 
      6c:	c7 04 24 22 00 00 00 	movl   $0x22,(%esp)
      73:	e8 fc ff ff ff       	call   74 <task_hd+0x74>
      78:	8d 45 d0             	lea    0xffffffd0(%ebp),%eax
      7b:	83 c0 0c             	add    $0xc,%eax
      7e:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
      81:	8b 55 d0             	mov    0xffffffd0(%ebp),%edx
      84:	89 d0                	mov    %edx,%eax
      86:	c1 e0 03             	shl    $0x3,%eax
      89:	01 d0                	add    %edx,%eax
      8b:	c1 e0 05             	shl    $0x5,%eax
      8e:	8b 80 54 00 00 00    	mov    0x54(%eax),%eax
      94:	83 f8 02             	cmp    $0x2,%eax
      97:	75 e8                	jne    81 <task_hd+0x81>
      99:	8b 55 d0             	mov    0xffffffd0(%ebp),%edx
      9c:	89 d0                	mov    %edx,%eax
      9e:	c1 e0 03             	shl    $0x3,%eax
      a1:	01 d0                	add    %edx,%eax
      a3:	c1 e0 05             	shl    $0x5,%eax
      a6:	8b 80 54 00 00 00    	mov    0x54(%eax),%eax
      ac:	83 f8 02             	cmp    $0x2,%eax
      af:	74 24                	je     d5 <task_hd+0xd5>
      b1:	c7 44 24 0c 12 00 00 	movl   $0x12,0xc(%esp)
      b8:	00 
      b9:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
      c0:	00 
      c1:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
      c8:	00 
      c9:	c7 04 24 3c 00 00 00 	movl   $0x3c,(%esp)
      d0:	e8 fc ff ff ff       	call   d1 <task_hd+0xd1>
      d5:	8b 55 d0             	mov    0xffffffd0(%ebp),%edx
      d8:	89 d0                	mov    %edx,%eax
      da:	c1 e0 03             	shl    $0x3,%eax
      dd:	01 d0                	add    %edx,%eax
      df:	c1 e0 05             	shl    $0x5,%eax
      e2:	8b 80 64 00 00 00    	mov    0x64(%eax),%eax
      e8:	83 f8 02             	cmp    $0x2,%eax
      eb:	74 24                	je     111 <task_hd+0x111>
      ed:	c7 44 24 0c 13 00 00 	movl   $0x13,0xc(%esp)
      f4:	00 
      f5:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
      fc:	00 
      fd:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     104:	00 
     105:	c7 04 24 68 00 00 00 	movl   $0x68,(%esp)
     10c:	e8 fc ff ff ff       	call   10d <task_hd+0x10d>
     111:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
     114:	8b 00                	mov    (%eax),%eax
     116:	89 45 c8             	mov    %eax,0xffffffc8(%ebp)
     119:	83 7d c8 04          	cmpl   $0x4,0xffffffc8(%ebp)
     11d:	0f 87 cd 00 00 00    	ja     1f0 <task_hd+0x1f0>
     123:	8b 55 c8             	mov    0xffffffc8(%ebp),%edx
     126:	8b 04 95 bc 00 00 00 	mov    0xbc(,%edx,4),%eax
     12d:	ff e0                	jmp    *%eax
     12f:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
     132:	0f b7 40 04          	movzwl 0x4(%eax),%eax
     136:	0f b7 c0             	movzwl %ax,%eax
     139:	89 04 24             	mov    %eax,(%esp)
     13c:	e8 fc ff ff ff       	call   13d <task_hd+0x13d>
     141:	e9 aa 00 00 00       	jmp    1f0 <task_hd+0x1f0>
     146:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
     149:	0f b7 40 04          	movzwl 0x4(%eax),%eax
     14d:	0f b7 c0             	movzwl %ax,%eax
     150:	89 04 24             	mov    %eax,(%esp)
     153:	e8 fc ff ff ff       	call   154 <task_hd+0x154>
     158:	e9 93 00 00 00       	jmp    1f0 <task_hd+0x1f0>
     15d:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
     160:	8b 48 0c             	mov    0xc(%eax),%ecx
     163:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
     166:	0f b7 40 06          	movzwl 0x6(%eax),%eax
     16a:	0f b7 d8             	movzwl %ax,%ebx
     16d:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
     170:	0f b7 40 04          	movzwl 0x4(%eax),%eax
     174:	0f b7 d0             	movzwl %ax,%edx
     177:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
     17a:	8b 40 08             	mov    0x8(%eax),%eax
     17d:	89 4c 24 10          	mov    %ecx,0x10(%esp)
     181:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
     185:	89 54 24 08          	mov    %edx,0x8(%esp)
     189:	89 44 24 04          	mov    %eax,0x4(%esp)
     18d:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
     194:	e8 fc ff ff ff       	call   195 <task_hd+0x195>
     199:	89 c2                	mov    %eax,%edx
     19b:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
     19e:	66 89 50 06          	mov    %dx,0x6(%eax)
     1a2:	eb 4c                	jmp    1f0 <task_hd+0x1f0>
     1a4:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
     1a7:	8b 48 0c             	mov    0xc(%eax),%ecx
     1aa:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
     1ad:	0f b7 40 06          	movzwl 0x6(%eax),%eax
     1b1:	0f b7 d8             	movzwl %ax,%ebx
     1b4:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
     1b7:	0f b7 40 04          	movzwl 0x4(%eax),%eax
     1bb:	0f b7 d0             	movzwl %ax,%edx
     1be:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
     1c1:	8b 40 08             	mov    0x8(%eax),%eax
     1c4:	89 4c 24 10          	mov    %ecx,0x10(%esp)
     1c8:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
     1cc:	89 54 24 08          	mov    %edx,0x8(%esp)
     1d0:	89 44 24 04          	mov    %eax,0x4(%esp)
     1d4:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
     1db:	e8 fc ff ff ff       	call   1dc <task_hd+0x1dc>
     1e0:	89 c2                	mov    %eax,%edx
     1e2:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
     1e5:	66 89 50 06          	mov    %dx,0x6(%eax)
     1e9:	eb 05                	jmp    1f0 <task_hd+0x1f0>
     1eb:	e8 fc ff ff ff       	call   1ec <task_hd+0x1ec>
     1f0:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
     1f3:	8d 55 d0             	lea    0xffffffd0(%ebp),%edx
     1f6:	89 54 24 08          	mov    %edx,0x8(%esp)
     1fa:	89 44 24 04          	mov    %eax,0x4(%esp)
     1fe:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     205:	e8 fc ff ff ff       	call   206 <task_hd+0x206>
     20a:	85 c0                	test   %eax,%eax
     20c:	0f 84 f7 fd ff ff    	je     9 <task_hd+0x9>
     212:	c7 44 24 0c 29 00 00 	movl   $0x29,0xc(%esp)
     219:	00 
     21a:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
     221:	00 
     222:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     229:	00 
     22a:	c7 04 24 98 00 00 00 	movl   $0x98,(%esp)
     231:	e8 fc ff ff ff       	call   232 <task_hd+0x232>
     236:	e9 ce fd ff ff       	jmp    9 <task_hd+0x9>

0000023b <init_hd>:
     23b:	55                   	push   %ebp
     23c:	89 e5                	mov    %esp,%ebp
     23e:	83 ec 10             	sub    $0x10,%esp
     241:	b8 75 04 00 00       	mov    $0x475,%eax
     246:	0f b6 00             	movzbl (%eax),%eax
     249:	a2 00 00 00 00       	mov    %al,0x0
     24e:	c7 45 f8 00 00 00 00 	movl   $0x0,0xfffffff8(%ebp)
     255:	e9 72 01 00 00       	jmp    3cc <init_hd+0x191>
     25a:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
     25d:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
     263:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
     266:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
     26d:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
     270:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
     277:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
     27a:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
     281:	c7 45 fc 00 00 00 00 	movl   $0x0,0xfffffffc(%ebp)
     288:	e9 8b 00 00 00       	jmp    318 <init_hd+0xdd>
     28d:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
     290:	8b 4d f8             	mov    0xfffffff8(%ebp),%ecx
     293:	89 d0                	mov    %edx,%eax
     295:	c1 e0 02             	shl    $0x2,%eax
     298:	01 d0                	add    %edx,%eax
     29a:	c1 e0 02             	shl    $0x2,%eax
     29d:	01 c8                	add    %ecx,%eax
     29f:	83 c0 10             	add    $0x10,%eax
     2a2:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
     2a8:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
     2ab:	8b 4d f8             	mov    0xfffffff8(%ebp),%ecx
     2ae:	89 d0                	mov    %edx,%eax
     2b0:	c1 e0 02             	shl    $0x2,%eax
     2b3:	01 d0                	add    %edx,%eax
     2b5:	c1 e0 02             	shl    $0x2,%eax
     2b8:	01 c8                	add    %ecx,%eax
     2ba:	83 c0 14             	add    $0x14,%eax
     2bd:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
     2c3:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
     2c6:	8b 4d f8             	mov    0xfffffff8(%ebp),%ecx
     2c9:	89 d0                	mov    %edx,%eax
     2cb:	c1 e0 02             	shl    $0x2,%eax
     2ce:	01 d0                	add    %edx,%eax
     2d0:	c1 e0 02             	shl    $0x2,%eax
     2d3:	01 c8                	add    %ecx,%eax
     2d5:	83 c0 18             	add    $0x18,%eax
     2d8:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
     2de:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
     2e1:	8b 4d f8             	mov    0xfffffff8(%ebp),%ecx
     2e4:	89 d0                	mov    %edx,%eax
     2e6:	c1 e0 02             	shl    $0x2,%eax
     2e9:	01 d0                	add    %edx,%eax
     2eb:	c1 e0 02             	shl    $0x2,%eax
     2ee:	01 c8                	add    %ecx,%eax
     2f0:	83 c0 1c             	add    $0x1c,%eax
     2f3:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
     2f9:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
     2fc:	8b 4d f8             	mov    0xfffffff8(%ebp),%ecx
     2ff:	89 d0                	mov    %edx,%eax
     301:	c1 e0 02             	shl    $0x2,%eax
     304:	01 d0                	add    %edx,%eax
     306:	c1 e0 02             	shl    $0x2,%eax
     309:	01 c8                	add    %ecx,%eax
     30b:	83 c0 20             	add    $0x20,%eax
     30e:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
     314:	83 45 fc 01          	addl   $0x1,0xfffffffc(%ebp)
     318:	83 7d fc 04          	cmpl   $0x4,0xfffffffc(%ebp)
     31c:	0f 8e 6b ff ff ff    	jle    28d <init_hd+0x52>
     322:	c7 45 fc 00 00 00 00 	movl   $0x0,0xfffffffc(%ebp)
     329:	e9 8d 00 00 00       	jmp    3bb <init_hd+0x180>
     32e:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
     331:	8b 4d f8             	mov    0xfffffff8(%ebp),%ecx
     334:	89 d0                	mov    %edx,%eax
     336:	c1 e0 02             	shl    $0x2,%eax
     339:	01 d0                	add    %edx,%eax
     33b:	c1 e0 02             	shl    $0x2,%eax
     33e:	01 c8                	add    %ecx,%eax
     340:	83 c0 74             	add    $0x74,%eax
     343:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
     349:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
     34c:	8b 4d f8             	mov    0xfffffff8(%ebp),%ecx
     34f:	89 d0                	mov    %edx,%eax
     351:	c1 e0 02             	shl    $0x2,%eax
     354:	01 d0                	add    %edx,%eax
     356:	c1 e0 02             	shl    $0x2,%eax
     359:	01 c8                	add    %ecx,%eax
     35b:	83 c0 78             	add    $0x78,%eax
     35e:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
     364:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
     367:	8b 4d f8             	mov    0xfffffff8(%ebp),%ecx
     36a:	89 d0                	mov    %edx,%eax
     36c:	c1 e0 02             	shl    $0x2,%eax
     36f:	01 d0                	add    %edx,%eax
     371:	c1 e0 02             	shl    $0x2,%eax
     374:	01 c8                	add    %ecx,%eax
     376:	83 c0 7c             	add    $0x7c,%eax
     379:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
     37f:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
     382:	8b 4d f8             	mov    0xfffffff8(%ebp),%ecx
     385:	89 d0                	mov    %edx,%eax
     387:	c1 e0 02             	shl    $0x2,%eax
     38a:	01 d0                	add    %edx,%eax
     38c:	c1 e0 02             	shl    $0x2,%eax
     38f:	01 c8                	add    %ecx,%eax
     391:	83 e8 80             	sub    $0xffffff80,%eax
     394:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
     39a:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
     39d:	8b 4d f8             	mov    0xfffffff8(%ebp),%ecx
     3a0:	89 d0                	mov    %edx,%eax
     3a2:	c1 e0 02             	shl    $0x2,%eax
     3a5:	01 d0                	add    %edx,%eax
     3a7:	c1 e0 02             	shl    $0x2,%eax
     3aa:	01 c8                	add    %ecx,%eax
     3ac:	05 84 00 00 00       	add    $0x84,%eax
     3b1:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
     3b7:	83 45 fc 01          	addl   $0x1,0xfffffffc(%ebp)
     3bb:	83 7d fc 3f          	cmpl   $0x3f,0xfffffffc(%ebp)
     3bf:	0f 8e 69 ff ff ff    	jle    32e <init_hd+0xf3>
     3c5:	81 45 f8 74 05 00 00 	addl   $0x574,0xfffffff8(%ebp)
     3cc:	b8 e8 0a 00 00       	mov    $0xae8,%eax
     3d1:	39 45 f8             	cmp    %eax,0xfffffff8(%ebp)
     3d4:	0f 82 80 fe ff ff    	jb     25a <init_hd+0x1f>
     3da:	c9                   	leave  
     3db:	c3                   	ret    

000003dc <hd_handler>:
     3dc:	55                   	push   %ebp
     3dd:	89 e5                	mov    %esp,%ebp
     3df:	83 ec 08             	sub    $0x8,%esp
     3e2:	c7 04 24 f7 01 00 00 	movl   $0x1f7,(%esp)
     3e9:	e8 fc ff ff ff       	call   3ea <hd_handler+0xe>
     3ee:	b8 40 02 00 00       	mov    $0x240,%eax
     3f3:	89 04 24             	mov    %eax,(%esp)
     3f6:	e8 fc ff ff ff       	call   3f7 <hd_handler+0x1b>
     3fb:	c9                   	leave  
     3fc:	c3                   	ret    

000003fd <hd_open>:
     3fd:	55                   	push   %ebp
     3fe:	89 e5                	mov    %esp,%ebp
     400:	83 ec 48             	sub    $0x48,%esp
     403:	8b 45 08             	mov    0x8(%ebp),%eax
     406:	66 89 45 cc          	mov    %ax,0xffffffcc(%ebp)
     40a:	c7 45 e0 ff ff ff ff 	movl   $0xffffffff,0xffffffe0(%ebp)
     411:	c7 45 e4 00 00 00 00 	movl   $0x0,0xffffffe4(%ebp)
     418:	0f b7 45 cc          	movzwl 0xffffffcc(%ebp),%eax
     41c:	66 89 45 e8          	mov    %ax,0xffffffe8(%ebp)
     420:	0f b7 45 cc          	movzwl 0xffffffcc(%ebp),%eax
     424:	89 44 24 04          	mov    %eax,0x4(%esp)
     428:	c7 04 24 d0 00 00 00 	movl   $0xd0,(%esp)
     42f:	e8 fc ff ff ff       	call   430 <hd_open+0x33>
     434:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
     437:	89 44 24 08          	mov    %eax,0x8(%esp)
     43b:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
     442:	00 
     443:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
     44a:	e8 fc ff ff ff       	call   44b <hd_open+0x4e>
     44f:	85 c0                	test   %eax,%eax
     451:	74 24                	je     477 <hd_open+0x7a>
     453:	c7 44 24 0c 60 00 00 	movl   $0x60,0xc(%esp)
     45a:	00 
     45b:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
     462:	00 
     463:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     46a:	00 
     46b:	c7 04 24 e4 00 00 00 	movl   $0xe4,(%esp)
     472:	e8 fc ff ff ff       	call   473 <hd_open+0x76>
     477:	c9                   	leave  
     478:	c3                   	ret    

00000479 <hd_close>:
     479:	55                   	push   %ebp
     47a:	89 e5                	mov    %esp,%ebp
     47c:	83 ec 48             	sub    $0x48,%esp
     47f:	8b 45 08             	mov    0x8(%ebp),%eax
     482:	66 89 45 cc          	mov    %ax,0xffffffcc(%ebp)
     486:	c7 45 e0 ff ff ff ff 	movl   $0xffffffff,0xffffffe0(%ebp)
     48d:	c7 45 e4 01 00 00 00 	movl   $0x1,0xffffffe4(%ebp)
     494:	0f b7 45 cc          	movzwl 0xffffffcc(%ebp),%eax
     498:	66 89 45 e8          	mov    %ax,0xffffffe8(%ebp)
     49c:	0f b7 45 cc          	movzwl 0xffffffcc(%ebp),%eax
     4a0:	89 44 24 04          	mov    %eax,0x4(%esp)
     4a4:	c7 04 24 09 01 00 00 	movl   $0x109,(%esp)
     4ab:	e8 fc ff ff ff       	call   4ac <hd_close+0x33>
     4b0:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
     4b3:	89 44 24 08          	mov    %eax,0x8(%esp)
     4b7:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
     4be:	00 
     4bf:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
     4c6:	e8 fc ff ff ff       	call   4c7 <hd_close+0x4e>
     4cb:	85 c0                	test   %eax,%eax
     4cd:	74 24                	je     4f3 <hd_close+0x7a>
     4cf:	c7 44 24 0c 6f 00 00 	movl   $0x6f,0xc(%esp)
     4d6:	00 
     4d7:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
     4de:	00 
     4df:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     4e6:	00 
     4e7:	c7 04 24 e4 00 00 00 	movl   $0xe4,(%esp)
     4ee:	e8 fc ff ff ff       	call   4ef <hd_close+0x76>
     4f3:	c9                   	leave  
     4f4:	c3                   	ret    

000004f5 <hd_read>:
     4f5:	55                   	push   %ebp
     4f6:	89 e5                	mov    %esp,%ebp
     4f8:	83 ec 48             	sub    $0x48,%esp
     4fb:	8b 45 08             	mov    0x8(%ebp),%eax
     4fe:	66 89 45 cc          	mov    %ax,0xffffffcc(%ebp)
     502:	c7 45 e0 ff ff ff ff 	movl   $0xffffffff,0xffffffe0(%ebp)
     509:	c7 45 e4 02 00 00 00 	movl   $0x2,0xffffffe4(%ebp)
     510:	0f b7 45 cc          	movzwl 0xffffffcc(%ebp),%eax
     514:	66 89 45 e8          	mov    %ax,0xffffffe8(%ebp)
     518:	8b 45 0c             	mov    0xc(%ebp),%eax
     51b:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
     51e:	8b 45 10             	mov    0x10(%ebp),%eax
     521:	c1 e8 09             	shr    $0x9,%eax
     524:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
     527:	8b 45 14             	mov    0x14(%ebp),%eax
     52a:	66 89 45 ea          	mov    %ax,0xffffffea(%ebp)
     52e:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
     531:	89 44 24 08          	mov    %eax,0x8(%esp)
     535:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
     53c:	00 
     53d:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
     544:	e8 fc ff ff ff       	call   545 <hd_read+0x50>
     549:	85 c0                	test   %eax,%eax
     54b:	74 24                	je     571 <hd_read+0x7c>
     54d:	c7 44 24 0c 84 00 00 	movl   $0x84,0xc(%esp)
     554:	00 
     555:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
     55c:	00 
     55d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     564:	00 
     565:	c7 04 24 e4 00 00 00 	movl   $0xe4,(%esp)
     56c:	e8 fc ff ff ff       	call   56d <hd_read+0x78>
     571:	0f b7 45 ea          	movzwl 0xffffffea(%ebp),%eax
     575:	0f b7 c0             	movzwl %ax,%eax
     578:	c9                   	leave  
     579:	c3                   	ret    

0000057a <hd_write>:
     57a:	55                   	push   %ebp
     57b:	89 e5                	mov    %esp,%ebp
     57d:	83 ec 48             	sub    $0x48,%esp
     580:	8b 45 08             	mov    0x8(%ebp),%eax
     583:	66 89 45 cc          	mov    %ax,0xffffffcc(%ebp)
     587:	c7 45 e0 ff ff ff ff 	movl   $0xffffffff,0xffffffe0(%ebp)
     58e:	c7 45 e4 03 00 00 00 	movl   $0x3,0xffffffe4(%ebp)
     595:	0f b7 45 cc          	movzwl 0xffffffcc(%ebp),%eax
     599:	66 89 45 e8          	mov    %ax,0xffffffe8(%ebp)
     59d:	8b 45 0c             	mov    0xc(%ebp),%eax
     5a0:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
     5a3:	8b 45 10             	mov    0x10(%ebp),%eax
     5a6:	c1 e8 09             	shr    $0x9,%eax
     5a9:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
     5ac:	8b 45 14             	mov    0x14(%ebp),%eax
     5af:	66 89 45 ea          	mov    %ax,0xffffffea(%ebp)
     5b3:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
     5b6:	89 44 24 08          	mov    %eax,0x8(%esp)
     5ba:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
     5c1:	00 
     5c2:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
     5c9:	e8 fc ff ff ff       	call   5ca <hd_write+0x50>
     5ce:	85 c0                	test   %eax,%eax
     5d0:	74 24                	je     5f6 <hd_write+0x7c>
     5d2:	c7 44 24 0c 9b 00 00 	movl   $0x9b,0xc(%esp)
     5d9:	00 
     5da:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
     5e1:	00 
     5e2:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     5e9:	00 
     5ea:	c7 04 24 e4 00 00 00 	movl   $0xe4,(%esp)
     5f1:	e8 fc ff ff ff       	call   5f2 <hd_write+0x78>
     5f6:	0f b7 45 ea          	movzwl 0xffffffea(%ebp),%eax
     5fa:	0f b7 c0             	movzwl %ax,%eax
     5fd:	c9                   	leave  
     5fe:	c3                   	ret    

000005ff <hd_ioctl>:
     5ff:	55                   	push   %ebp
     600:	89 e5                	mov    %esp,%ebp
     602:	83 ec 48             	sub    $0x48,%esp
     605:	8b 45 08             	mov    0x8(%ebp),%eax
     608:	66 89 45 cc          	mov    %ax,0xffffffcc(%ebp)
     60c:	c7 45 e0 ff ff ff ff 	movl   $0xffffffff,0xffffffe0(%ebp)
     613:	c7 45 e4 04 00 00 00 	movl   $0x4,0xffffffe4(%ebp)
     61a:	0f b7 45 cc          	movzwl 0xffffffcc(%ebp),%eax
     61e:	66 89 45 e8          	mov    %ax,0xffffffe8(%ebp)
     622:	0f b7 45 cc          	movzwl 0xffffffcc(%ebp),%eax
     626:	89 44 24 04          	mov    %eax,0x4(%esp)
     62a:	c7 04 24 1b 01 00 00 	movl   $0x11b,(%esp)
     631:	e8 fc ff ff ff       	call   632 <hd_ioctl+0x33>
     636:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
     639:	89 44 24 08          	mov    %eax,0x8(%esp)
     63d:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
     644:	00 
     645:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
     64c:	e8 fc ff ff ff       	call   64d <hd_ioctl+0x4e>
     651:	85 c0                	test   %eax,%eax
     653:	74 24                	je     679 <hd_ioctl+0x7a>
     655:	c7 44 24 0c ab 00 00 	movl   $0xab,0xc(%esp)
     65c:	00 
     65d:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
     664:	00 
     665:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     66c:	00 
     66d:	c7 04 24 e4 00 00 00 	movl   $0xe4,(%esp)
     674:	e8 fc ff ff ff       	call   675 <hd_ioctl+0x76>
     679:	c9                   	leave  
     67a:	c3                   	ret    

0000067b <waitfor>:
     67b:	55                   	push   %ebp
     67c:	89 e5                	mov    %esp,%ebp
     67e:	83 ec 18             	sub    $0x18,%esp
     681:	e8 fc ff ff ff       	call   682 <waitfor+0x7>
     686:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
     689:	eb 20                	jmp    6ab <waitfor+0x30>
     68b:	c7 04 24 f7 01 00 00 	movl   $0x1f7,(%esp)
     692:	e8 fc ff ff ff       	call   693 <waitfor+0x18>
     697:	0f b6 c0             	movzbl %al,%eax
     69a:	23 45 08             	and    0x8(%ebp),%eax
     69d:	3b 45 0c             	cmp    0xc(%ebp),%eax
     6a0:	75 09                	jne    6ab <waitfor+0x30>
     6a2:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
     6a9:	eb 1a                	jmp    6c5 <waitfor+0x4a>
     6ab:	e8 fc ff ff ff       	call   6ac <waitfor+0x31>
     6b0:	89 c2                	mov    %eax,%edx
     6b2:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
     6b5:	29 c2                	sub    %eax,%edx
     6b7:	8b 45 10             	mov    0x10(%ebp),%eax
     6ba:	39 c2                	cmp    %eax,%edx
     6bc:	72 cd                	jb     68b <waitfor+0x10>
     6be:	c7 45 ec ff ff ff ff 	movl   $0xffffffff,0xffffffec(%ebp)
     6c5:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
     6c8:	c9                   	leave  
     6c9:	c3                   	ret    

000006ca <hd_cmd_out>:
     6ca:	55                   	push   %ebp
     6cb:	89 e5                	mov    %esp,%ebp
     6cd:	83 ec 18             	sub    $0x18,%esp
     6d0:	c7 44 24 08 64 00 00 	movl   $0x64,0x8(%esp)
     6d7:	00 
     6d8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     6df:	00 
     6e0:	c7 04 24 80 00 00 00 	movl   $0x80,(%esp)
     6e7:	e8 fc ff ff ff       	call   6e8 <hd_cmd_out+0x1e>
     6ec:	83 f8 ff             	cmp    $0xffffffff,%eax
     6ef:	75 0e                	jne    6ff <hd_cmd_out+0x35>
     6f1:	c7 04 24 30 01 00 00 	movl   $0x130,(%esp)
     6f8:	e8 fc ff ff ff       	call   6f9 <hd_cmd_out+0x2f>
     6fd:	eb fe                	jmp    6fd <hd_cmd_out+0x33>
     6ff:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     706:	00 
     707:	c7 04 24 f6 03 00 00 	movl   $0x3f6,(%esp)
     70e:	e8 fc ff ff ff       	call   70f <hd_cmd_out+0x45>
     713:	8b 45 08             	mov    0x8(%ebp),%eax
     716:	0f b6 00             	movzbl (%eax),%eax
     719:	0f b6 c0             	movzbl %al,%eax
     71c:	89 44 24 04          	mov    %eax,0x4(%esp)
     720:	c7 04 24 f1 01 00 00 	movl   $0x1f1,(%esp)
     727:	e8 fc ff ff ff       	call   728 <hd_cmd_out+0x5e>
     72c:	8b 45 08             	mov    0x8(%ebp),%eax
     72f:	0f b6 40 01          	movzbl 0x1(%eax),%eax
     733:	0f b6 c0             	movzbl %al,%eax
     736:	89 44 24 04          	mov    %eax,0x4(%esp)
     73a:	c7 04 24 f2 01 00 00 	movl   $0x1f2,(%esp)
     741:	e8 fc ff ff ff       	call   742 <hd_cmd_out+0x78>
     746:	8b 45 08             	mov    0x8(%ebp),%eax
     749:	0f b6 40 02          	movzbl 0x2(%eax),%eax
     74d:	0f b6 c0             	movzbl %al,%eax
     750:	89 44 24 04          	mov    %eax,0x4(%esp)
     754:	c7 04 24 f3 01 00 00 	movl   $0x1f3,(%esp)
     75b:	e8 fc ff ff ff       	call   75c <hd_cmd_out+0x92>
     760:	8b 45 08             	mov    0x8(%ebp),%eax
     763:	0f b6 40 03          	movzbl 0x3(%eax),%eax
     767:	0f b6 c0             	movzbl %al,%eax
     76a:	89 44 24 04          	mov    %eax,0x4(%esp)
     76e:	c7 04 24 f4 01 00 00 	movl   $0x1f4,(%esp)
     775:	e8 fc ff ff ff       	call   776 <hd_cmd_out+0xac>
     77a:	8b 45 08             	mov    0x8(%ebp),%eax
     77d:	0f b6 40 04          	movzbl 0x4(%eax),%eax
     781:	0f b6 c0             	movzbl %al,%eax
     784:	89 44 24 04          	mov    %eax,0x4(%esp)
     788:	c7 04 24 f5 01 00 00 	movl   $0x1f5,(%esp)
     78f:	e8 fc ff ff ff       	call   790 <hd_cmd_out+0xc6>
     794:	8b 45 08             	mov    0x8(%ebp),%eax
     797:	0f b6 40 05          	movzbl 0x5(%eax),%eax
     79b:	0f b6 c0             	movzbl %al,%eax
     79e:	89 44 24 04          	mov    %eax,0x4(%esp)
     7a2:	c7 04 24 f6 01 00 00 	movl   $0x1f6,(%esp)
     7a9:	e8 fc ff ff ff       	call   7aa <hd_cmd_out+0xe0>
     7ae:	8b 45 08             	mov    0x8(%ebp),%eax
     7b1:	0f b6 40 06          	movzbl 0x6(%eax),%eax
     7b5:	0f b6 c0             	movzbl %al,%eax
     7b8:	89 44 24 04          	mov    %eax,0x4(%esp)
     7bc:	c7 04 24 f7 01 00 00 	movl   $0x1f7,(%esp)
     7c3:	e8 fc ff ff ff       	call   7c4 <hd_cmd_out+0xfa>
     7c8:	c9                   	leave  
     7c9:	c3                   	ret    

000007ca <port_read>:
     7ca:	55                   	push   %ebp
     7cb:	89 e5                	mov    %esp,%ebp
     7cd:	83 ec 08             	sub    $0x8,%esp
     7d0:	8b 45 08             	mov    0x8(%ebp),%eax
     7d3:	66 89 45 fc          	mov    %ax,0xfffffffc(%ebp)
     7d7:	eb 18                	jmp    7f1 <port_read+0x27>
     7d9:	0f b7 45 fc          	movzwl 0xfffffffc(%ebp),%eax
     7dd:	89 04 24             	mov    %eax,(%esp)
     7e0:	e8 fc ff ff ff       	call   7e1 <port_read+0x17>
     7e5:	89 c2                	mov    %eax,%edx
     7e7:	8b 45 0c             	mov    0xc(%ebp),%eax
     7ea:	66 89 10             	mov    %dx,(%eax)
     7ed:	83 45 0c 02          	addl   $0x2,0xc(%ebp)
     7f1:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
     7f5:	0f 9f c0             	setg   %al
     7f8:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
     7fc:	84 c0                	test   %al,%al
     7fe:	75 d9                	jne    7d9 <port_read+0xf>
     800:	b8 00 00 00 00       	mov    $0x0,%eax
     805:	c9                   	leave  
     806:	c3                   	ret    

00000807 <port_write>:
     807:	55                   	push   %ebp
     808:	89 e5                	mov    %esp,%ebp
     80a:	83 ec 18             	sub    $0x18,%esp
     80d:	8b 45 08             	mov    0x8(%ebp),%eax
     810:	66 89 45 fc          	mov    %ax,0xfffffffc(%ebp)
     814:	eb 1d                	jmp    833 <port_write+0x2c>
     816:	8b 45 0c             	mov    0xc(%ebp),%eax
     819:	0f b7 00             	movzwl (%eax),%eax
     81c:	0f b7 d0             	movzwl %ax,%edx
     81f:	83 45 0c 02          	addl   $0x2,0xc(%ebp)
     823:	0f b7 45 fc          	movzwl 0xfffffffc(%ebp),%eax
     827:	89 54 24 04          	mov    %edx,0x4(%esp)
     82b:	89 04 24             	mov    %eax,(%esp)
     82e:	e8 fc ff ff ff       	call   82f <port_write+0x28>
     833:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
     837:	0f 9f c0             	setg   %al
     83a:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
     83e:	84 c0                	test   %al,%al
     840:	75 d4                	jne    816 <port_write+0xf>
     842:	b8 00 00 00 00       	mov    $0x0,%eax
     847:	c9                   	leave  
     848:	c3                   	ret    

00000849 <print_identify_info>:
     849:	55                   	push   %ebp
     84a:	89 e5                	mov    %esp,%ebp
     84c:	81 ec 88 00 00 00    	sub    $0x88,%esp
     852:	c7 45 90 0a 00 00 00 	movl   $0xa,0xffffff90(%ebp)
     859:	c7 45 94 14 00 00 00 	movl   $0x14,0xffffff94(%ebp)
     860:	c7 45 98 51 01 00 00 	movl   $0x151,0xffffff98(%ebp)
     867:	c7 45 9c 1b 00 00 00 	movl   $0x1b,0xffffff9c(%ebp)
     86e:	c7 45 a0 28 00 00 00 	movl   $0x28,0xffffffa0(%ebp)
     875:	c7 45 a4 57 01 00 00 	movl   $0x157,0xffffffa4(%ebp)
     87c:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
     883:	e9 ab 00 00 00       	jmp    933 <print_identify_info+0xea>
     888:	8b 55 ec             	mov    0xffffffec(%ebp),%edx
     88b:	89 d0                	mov    %edx,%eax
     88d:	01 c0                	add    %eax,%eax
     88f:	01 d0                	add    %edx,%eax
     891:	c1 e0 02             	shl    $0x2,%eax
     894:	01 e8                	add    %ebp,%eax
     896:	83 e8 70             	sub    $0x70,%eax
     899:	8b 00                	mov    (%eax),%eax
     89b:	01 c0                	add    %eax,%eax
     89d:	03 45 08             	add    0x8(%ebp),%eax
     8a0:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
     8a3:	c7 45 e8 00 00 00 00 	movl   $0x0,0xffffffe8(%ebp)
     8aa:	eb 2e                	jmp    8da <print_identify_info+0x91>
     8ac:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
     8af:	01 c0                	add    %eax,%eax
     8b1:	8d 50 01             	lea    0x1(%eax),%edx
     8b4:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
     8b7:	0f b6 00             	movzbl (%eax),%eax
     8ba:	88 44 15 a8          	mov    %al,0xffffffa8(%ebp,%edx,1)
     8be:	83 45 fc 01          	addl   $0x1,0xfffffffc(%ebp)
     8c2:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
     8c5:	8d 14 00             	lea    (%eax,%eax,1),%edx
     8c8:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
     8cb:	0f b6 00             	movzbl (%eax),%eax
     8ce:	88 44 15 a8          	mov    %al,0xffffffa8(%ebp,%edx,1)
     8d2:	83 45 fc 01          	addl   $0x1,0xfffffffc(%ebp)
     8d6:	83 45 e8 01          	addl   $0x1,0xffffffe8(%ebp)
     8da:	8b 55 ec             	mov    0xffffffec(%ebp),%edx
     8dd:	89 d0                	mov    %edx,%eax
     8df:	01 c0                	add    %eax,%eax
     8e1:	01 d0                	add    %edx,%eax
     8e3:	c1 e0 02             	shl    $0x2,%eax
     8e6:	01 e8                	add    %ebp,%eax
     8e8:	83 e8 6c             	sub    $0x6c,%eax
     8eb:	8b 10                	mov    (%eax),%edx
     8ed:	89 d0                	mov    %edx,%eax
     8ef:	c1 e8 1f             	shr    $0x1f,%eax
     8f2:	01 d0                	add    %edx,%eax
     8f4:	d1 f8                	sar    %eax
     8f6:	3b 45 e8             	cmp    0xffffffe8(%ebp),%eax
     8f9:	7f b1                	jg     8ac <print_identify_info+0x63>
     8fb:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
     8fe:	01 c0                	add    %eax,%eax
     900:	c6 44 05 a8 00       	movb   $0x0,0xffffffa8(%ebp,%eax,1)
     905:	8b 55 ec             	mov    0xffffffec(%ebp),%edx
     908:	89 d0                	mov    %edx,%eax
     90a:	01 c0                	add    %eax,%eax
     90c:	01 d0                	add    %edx,%eax
     90e:	c1 e0 02             	shl    $0x2,%eax
     911:	01 e8                	add    %ebp,%eax
     913:	83 e8 68             	sub    $0x68,%eax
     916:	8b 10                	mov    (%eax),%edx
     918:	8d 45 a8             	lea    0xffffffa8(%ebp),%eax
     91b:	89 44 24 08          	mov    %eax,0x8(%esp)
     91f:	89 54 24 04          	mov    %edx,0x4(%esp)
     923:	c7 04 24 60 01 00 00 	movl   $0x160,(%esp)
     92a:	e8 fc ff ff ff       	call   92b <print_identify_info+0xe2>
     92f:	83 45 ec 01          	addl   $0x1,0xffffffec(%ebp)
     933:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
     936:	83 f8 01             	cmp    $0x1,%eax
     939:	0f 86 49 ff ff ff    	jbe    888 <print_identify_info+0x3f>
     93f:	8b 45 08             	mov    0x8(%ebp),%eax
     942:	83 c0 62             	add    $0x62,%eax
     945:	0f b7 00             	movzwl (%eax),%eax
     948:	0f b7 c0             	movzwl %ax,%eax
     94b:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
     94e:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     951:	25 00 02 00 00       	and    $0x200,%eax
     956:	85 c0                	test   %eax,%eax
     958:	74 09                	je     963 <print_identify_info+0x11a>
     95a:	c7 45 88 68 01 00 00 	movl   $0x168,0xffffff88(%ebp)
     961:	eb 07                	jmp    96a <print_identify_info+0x121>
     963:	c7 45 88 6c 01 00 00 	movl   $0x16c,0xffffff88(%ebp)
     96a:	8b 45 88             	mov    0xffffff88(%ebp),%eax
     96d:	89 44 24 04          	mov    %eax,0x4(%esp)
     971:	c7 04 24 6f 01 00 00 	movl   $0x16f,(%esp)
     978:	e8 fc ff ff ff       	call   979 <print_identify_info+0x130>
     97d:	8b 45 08             	mov    0x8(%ebp),%eax
     980:	05 a6 00 00 00       	add    $0xa6,%eax
     985:	0f b7 00             	movzwl (%eax),%eax
     988:	0f b7 c0             	movzwl %ax,%eax
     98b:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
     98e:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
     991:	25 00 04 00 00       	and    $0x400,%eax
     996:	85 c0                	test   %eax,%eax
     998:	74 09                	je     9a3 <print_identify_info+0x15a>
     99a:	c7 45 8c 68 01 00 00 	movl   $0x168,0xffffff8c(%ebp)
     9a1:	eb 07                	jmp    9aa <print_identify_info+0x161>
     9a3:	c7 45 8c 6c 01 00 00 	movl   $0x16c,0xffffff8c(%ebp)
     9aa:	8b 4d 8c             	mov    0xffffff8c(%ebp),%ecx
     9ad:	89 4c 24 04          	mov    %ecx,0x4(%esp)
     9b1:	c7 04 24 82 01 00 00 	movl   $0x182,(%esp)
     9b8:	e8 fc ff ff ff       	call   9b9 <print_identify_info+0x170>
     9bd:	8b 45 08             	mov    0x8(%ebp),%eax
     9c0:	83 c0 7a             	add    $0x7a,%eax
     9c3:	0f b7 00             	movzwl (%eax),%eax
     9c6:	0f b7 c0             	movzwl %ax,%eax
     9c9:	89 c2                	mov    %eax,%edx
     9cb:	c1 e2 10             	shl    $0x10,%edx
     9ce:	8b 45 08             	mov    0x8(%ebp),%eax
     9d1:	83 c0 78             	add    $0x78,%eax
     9d4:	0f b7 00             	movzwl (%eax),%eax
     9d7:	0f b7 c0             	movzwl %ax,%eax
     9da:	8d 04 02             	lea    (%edx,%eax,1),%eax
     9dd:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
     9e0:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
     9e3:	89 c1                	mov    %eax,%ecx
     9e5:	c1 e1 09             	shl    $0x9,%ecx
     9e8:	c7 45 84 83 de 1b 43 	movl   $0x431bde83,0xffffff84(%ebp)
     9ef:	8b 45 84             	mov    0xffffff84(%ebp),%eax
     9f2:	f7 e9                	imul   %ecx
     9f4:	c1 fa 12             	sar    $0x12,%edx
     9f7:	89 c8                	mov    %ecx,%eax
     9f9:	c1 f8 1f             	sar    $0x1f,%eax
     9fc:	89 d1                	mov    %edx,%ecx
     9fe:	29 c1                	sub    %eax,%ecx
     a00:	89 c8                	mov    %ecx,%eax
     a02:	89 44 24 04          	mov    %eax,0x4(%esp)
     a06:	c7 04 24 97 01 00 00 	movl   $0x197,(%esp)
     a0d:	e8 fc ff ff ff       	call   a0e <print_identify_info+0x1c5>
     a12:	c9                   	leave  
     a13:	c3                   	ret    

00000a14 <partion>:
     a14:	55                   	push   %ebp
     a15:	89 e5                	mov    %esp,%ebp
     a17:	53                   	push   %ebx
     a18:	83 ec 44             	sub    $0x44,%esp
     a1b:	8b 45 08             	mov    0x8(%ebp),%eax
     a1e:	88 45 c8             	mov    %al,0xffffffc8(%ebp)
     a21:	0f b6 45 c8          	movzbl 0xffffffc8(%ebp),%eax
     a25:	69 c0 74 05 00 00    	imul   $0x574,%eax,%eax
     a2b:	05 00 00 00 00       	add    $0x0,%eax
     a30:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
     a33:	c6 45 da 01          	movb   $0x1,0xffffffda(%ebp)
     a37:	c6 45 db 00          	movb   $0x0,0xffffffdb(%ebp)
     a3b:	c6 45 dc 00          	movb   $0x0,0xffffffdc(%ebp)
     a3f:	c6 45 dd 00          	movb   $0x0,0xffffffdd(%ebp)
     a43:	0f b6 45 c8          	movzbl 0xffffffc8(%ebp),%eax
     a47:	c1 e0 04             	shl    $0x4,%eax
     a4a:	89 c2                	mov    %eax,%edx
     a4c:	b8 e0 ff ff ff       	mov    $0xffffffe0,%eax
     a51:	09 d0                	or     %edx,%eax
     a53:	88 45 de             	mov    %al,0xffffffde(%ebp)
     a56:	c6 45 df 20          	movb   $0x20,0xffffffdf(%ebp)
     a5a:	8d 45 d9             	lea    0xffffffd9(%ebp),%eax
     a5d:	89 04 24             	mov    %eax,(%esp)
     a60:	e8 fc ff ff ff       	call   a61 <partion+0x4d>
     a65:	e8 fc ff ff ff       	call   a66 <partion+0x52>
     a6a:	b8 00 00 00 00       	mov    $0x0,%eax
     a6f:	c7 44 24 08 00 01 00 	movl   $0x100,0x8(%esp)
     a76:	00 
     a77:	89 44 24 04          	mov    %eax,0x4(%esp)
     a7b:	c7 04 24 f0 01 00 00 	movl   $0x1f0,(%esp)
     a82:	e8 fc ff ff ff       	call   a83 <partion+0x6f>
     a87:	b8 00 00 00 00       	mov    $0x0,%eax
     a8c:	05 be 01 00 00       	add    $0x1be,%eax
     a91:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
     a94:	c7 45 e8 01 00 00 00 	movl   $0x1,0xffffffe8(%ebp)
     a9b:	e9 f5 00 00 00       	jmp    b95 <partion+0x181>
     aa0:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
     aa3:	8b 40 0c             	mov    0xc(%eax),%eax
     aa6:	85 c0                	test   %eax,%eax
     aa8:	0f 84 df 00 00 00    	je     b8d <partion+0x179>
     aae:	8b 55 e8             	mov    0xffffffe8(%ebp),%edx
     ab1:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
     ab4:	8b 58 08             	mov    0x8(%eax),%ebx
     ab7:	8b 4d e0             	mov    0xffffffe0(%ebp),%ecx
     aba:	89 d0                	mov    %edx,%eax
     abc:	c1 e0 02             	shl    $0x2,%eax
     abf:	01 d0                	add    %edx,%eax
     ac1:	c1 e0 02             	shl    $0x2,%eax
     ac4:	01 c8                	add    %ecx,%eax
     ac6:	83 c0 14             	add    $0x14,%eax
     ac9:	89 18                	mov    %ebx,(%eax)
     acb:	8b 55 e8             	mov    0xffffffe8(%ebp),%edx
     ace:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
     ad1:	8b 58 0c             	mov    0xc(%eax),%ebx
     ad4:	8b 4d e0             	mov    0xffffffe0(%ebp),%ecx
     ad7:	89 d0                	mov    %edx,%eax
     ad9:	c1 e0 02             	shl    $0x2,%eax
     adc:	01 d0                	add    %edx,%eax
     ade:	c1 e0 02             	shl    $0x2,%eax
     ae1:	01 c8                	add    %ecx,%eax
     ae3:	83 c0 18             	add    $0x18,%eax
     ae6:	89 18                	mov    %ebx,(%eax)
     ae8:	8b 55 e8             	mov    0xffffffe8(%ebp),%edx
     aeb:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
     aee:	8b 40 08             	mov    0x8(%eax),%eax
     af1:	89 c3                	mov    %eax,%ebx
     af3:	c1 e3 09             	shl    $0x9,%ebx
     af6:	8b 4d e0             	mov    0xffffffe0(%ebp),%ecx
     af9:	89 d0                	mov    %edx,%eax
     afb:	c1 e0 02             	shl    $0x2,%eax
     afe:	01 d0                	add    %edx,%eax
     b00:	c1 e0 02             	shl    $0x2,%eax
     b03:	01 c8                	add    %ecx,%eax
     b05:	83 c0 1c             	add    $0x1c,%eax
     b08:	89 18                	mov    %ebx,(%eax)
     b0a:	8b 55 e8             	mov    0xffffffe8(%ebp),%edx
     b0d:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
     b10:	8b 40 0c             	mov    0xc(%eax),%eax
     b13:	89 c3                	mov    %eax,%ebx
     b15:	c1 e3 09             	shl    $0x9,%ebx
     b18:	8b 4d e0             	mov    0xffffffe0(%ebp),%ecx
     b1b:	89 d0                	mov    %edx,%eax
     b1d:	c1 e0 02             	shl    $0x2,%eax
     b20:	01 d0                	add    %edx,%eax
     b22:	c1 e0 02             	shl    $0x2,%eax
     b25:	01 c8                	add    %ecx,%eax
     b27:	83 c0 20             	add    $0x20,%eax
     b2a:	89 18                	mov    %ebx,(%eax)
     b2c:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
     b2f:	0f b6 40 04          	movzbl 0x4(%eax),%eax
     b33:	3c 05                	cmp    $0x5,%al
     b35:	74 2c                	je     b63 <partion+0x14f>
     b37:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
     b3a:	8b 40 04             	mov    0x4(%eax),%eax
     b3d:	8d 50 01             	lea    0x1(%eax),%edx
     b40:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
     b43:	89 50 04             	mov    %edx,0x4(%eax)
     b46:	8b 55 e8             	mov    0xffffffe8(%ebp),%edx
     b49:	8b 4d e0             	mov    0xffffffe0(%ebp),%ecx
     b4c:	89 d0                	mov    %edx,%eax
     b4e:	c1 e0 02             	shl    $0x2,%eax
     b51:	01 d0                	add    %edx,%eax
     b53:	c1 e0 02             	shl    $0x2,%eax
     b56:	01 c8                	add    %ecx,%eax
     b58:	83 c0 10             	add    $0x10,%eax
     b5b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
     b61:	eb 2a                	jmp    b8d <partion+0x179>
     b63:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
     b66:	8b 40 08             	mov    0x8(%eax),%eax
     b69:	8d 50 01             	lea    0x1(%eax),%edx
     b6c:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
     b6f:	89 50 08             	mov    %edx,0x8(%eax)
     b72:	8b 55 e8             	mov    0xffffffe8(%ebp),%edx
     b75:	8b 4d e0             	mov    0xffffffe0(%ebp),%ecx
     b78:	89 d0                	mov    %edx,%eax
     b7a:	c1 e0 02             	shl    $0x2,%eax
     b7d:	01 d0                	add    %edx,%eax
     b7f:	c1 e0 02             	shl    $0x2,%eax
     b82:	01 c8                	add    %ecx,%eax
     b84:	83 c0 10             	add    $0x10,%eax
     b87:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
     b8d:	83 45 e8 01          	addl   $0x1,0xffffffe8(%ebp)
     b91:	83 45 e4 10          	addl   $0x10,0xffffffe4(%ebp)
     b95:	83 7d e8 04          	cmpl   $0x4,0xffffffe8(%ebp)
     b99:	0f 8e 01 ff ff ff    	jle    aa0 <partion+0x8c>
     b9f:	c7 45 e8 01 00 00 00 	movl   $0x1,0xffffffe8(%ebp)
     ba6:	e9 c4 01 00 00       	jmp    d6f <partion+0x35b>
     bab:	8b 55 e8             	mov    0xffffffe8(%ebp),%edx
     bae:	8b 4d e0             	mov    0xffffffe0(%ebp),%ecx
     bb1:	89 d0                	mov    %edx,%eax
     bb3:	c1 e0 02             	shl    $0x2,%eax
     bb6:	01 d0                	add    %edx,%eax
     bb8:	c1 e0 02             	shl    $0x2,%eax
     bbb:	01 c8                	add    %ecx,%eax
     bbd:	83 c0 10             	add    $0x10,%eax
     bc0:	8b 00                	mov    (%eax),%eax
     bc2:	83 f8 01             	cmp    $0x1,%eax
     bc5:	0f 85 a0 01 00 00    	jne    d6b <partion+0x357>
     bcb:	8b 55 e8             	mov    0xffffffe8(%ebp),%edx
     bce:	8b 4d e0             	mov    0xffffffe0(%ebp),%ecx
     bd1:	89 d0                	mov    %edx,%eax
     bd3:	c1 e0 02             	shl    $0x2,%eax
     bd6:	01 d0                	add    %edx,%eax
     bd8:	c1 e0 02             	shl    $0x2,%eax
     bdb:	01 c8                	add    %ecx,%eax
     bdd:	83 c0 14             	add    $0x14,%eax
     be0:	8b 00                	mov    (%eax),%eax
     be2:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
     be5:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
     be8:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
     beb:	c7 45 f4 00 00 00 00 	movl   $0x0,0xfffffff4(%ebp)
     bf2:	c6 45 da 01          	movb   $0x1,0xffffffda(%ebp)
     bf6:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     bf9:	89 c2                	mov    %eax,%edx
     bfb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     c00:	21 d0                	and    %edx,%eax
     c02:	88 45 db             	mov    %al,0xffffffdb(%ebp)
     c05:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     c08:	c1 f8 08             	sar    $0x8,%eax
     c0b:	89 c2                	mov    %eax,%edx
     c0d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     c12:	21 d0                	and    %edx,%eax
     c14:	88 45 dc             	mov    %al,0xffffffdc(%ebp)
     c17:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     c1a:	c1 f8 10             	sar    $0x10,%eax
     c1d:	89 c2                	mov    %eax,%edx
     c1f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
     c24:	21 d0                	and    %edx,%eax
     c26:	88 45 dd             	mov    %al,0xffffffdd(%ebp)
     c29:	0f b6 45 c8          	movzbl 0xffffffc8(%ebp),%eax
     c2d:	c1 e0 04             	shl    $0x4,%eax
     c30:	89 c2                	mov    %eax,%edx
     c32:	83 ca 40             	or     $0x40,%edx
     c35:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     c38:	c1 f8 18             	sar    $0x18,%eax
     c3b:	83 e0 0f             	and    $0xf,%eax
     c3e:	09 c2                	or     %eax,%edx
     c40:	b8 a0 ff ff ff       	mov    $0xffffffa0,%eax
     c45:	09 d0                	or     %edx,%eax
     c47:	88 45 de             	mov    %al,0xffffffde(%ebp)
     c4a:	c6 45 df 20          	movb   $0x20,0xffffffdf(%ebp)
     c4e:	8d 45 d9             	lea    0xffffffd9(%ebp),%eax
     c51:	89 04 24             	mov    %eax,(%esp)
     c54:	e8 fc ff ff ff       	call   c55 <partion+0x241>
     c59:	e8 fc ff ff ff       	call   c5a <partion+0x246>
     c5e:	b8 00 00 00 00       	mov    $0x0,%eax
     c63:	c7 44 24 08 00 01 00 	movl   $0x100,0x8(%esp)
     c6a:	00 
     c6b:	89 44 24 04          	mov    %eax,0x4(%esp)
     c6f:	c7 04 24 f0 01 00 00 	movl   $0x1f0,(%esp)
     c76:	e8 fc ff ff ff       	call   c77 <partion+0x263>
     c7b:	b8 00 00 00 00       	mov    $0x0,%eax
     c80:	05 be 01 00 00       	add    $0x1be,%eax
     c85:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
     c88:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
     c8b:	8b 40 0c             	mov    0xc(%eax),%eax
     c8e:	85 c0                	test   %eax,%eax
     c90:	0f 84 d5 00 00 00    	je     d6b <partion+0x357>
     c96:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
     c99:	c1 e0 04             	shl    $0x4,%eax
     c9c:	83 e8 10             	sub    $0x10,%eax
     c9f:	03 45 f4             	add    0xfffffff4(%ebp),%eax
     ca2:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
     ca5:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
     ca8:	8b 4d e0             	mov    0xffffffe0(%ebp),%ecx
     cab:	89 d0                	mov    %edx,%eax
     cad:	c1 e0 02             	shl    $0x2,%eax
     cb0:	01 d0                	add    %edx,%eax
     cb2:	c1 e0 02             	shl    $0x2,%eax
     cb5:	01 c8                	add    %ecx,%eax
     cb7:	83 c0 74             	add    $0x74,%eax
     cba:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
     cc0:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
     cc3:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
     cc6:	8b 40 08             	mov    0x8(%eax),%eax
     cc9:	89 c3                	mov    %eax,%ebx
     ccb:	03 5d f0             	add    0xfffffff0(%ebp),%ebx
     cce:	8b 4d e0             	mov    0xffffffe0(%ebp),%ecx
     cd1:	89 d0                	mov    %edx,%eax
     cd3:	c1 e0 02             	shl    $0x2,%eax
     cd6:	01 d0                	add    %edx,%eax
     cd8:	c1 e0 02             	shl    $0x2,%eax
     cdb:	01 c8                	add    %ecx,%eax
     cdd:	83 c0 78             	add    $0x78,%eax
     ce0:	89 18                	mov    %ebx,(%eax)
     ce2:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
     ce5:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
     ce8:	8b 58 0c             	mov    0xc(%eax),%ebx
     ceb:	8b 4d e0             	mov    0xffffffe0(%ebp),%ecx
     cee:	89 d0                	mov    %edx,%eax
     cf0:	c1 e0 02             	shl    $0x2,%eax
     cf3:	01 d0                	add    %edx,%eax
     cf5:	c1 e0 02             	shl    $0x2,%eax
     cf8:	01 c8                	add    %ecx,%eax
     cfa:	83 c0 7c             	add    $0x7c,%eax
     cfd:	89 18                	mov    %ebx,(%eax)
     cff:	8b 4d f8             	mov    0xfffffff8(%ebp),%ecx
     d02:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
     d05:	8b 40 08             	mov    0x8(%eax),%eax
     d08:	03 45 f0             	add    0xfffffff0(%ebp),%eax
     d0b:	89 c3                	mov    %eax,%ebx
     d0d:	c1 e3 09             	shl    $0x9,%ebx
     d10:	8b 55 e0             	mov    0xffffffe0(%ebp),%edx
     d13:	89 c8                	mov    %ecx,%eax
     d15:	c1 e0 02             	shl    $0x2,%eax
     d18:	01 c8                	add    %ecx,%eax
     d1a:	c1 e0 02             	shl    $0x2,%eax
     d1d:	01 d0                	add    %edx,%eax
     d1f:	83 e8 80             	sub    $0xffffff80,%eax
     d22:	89 18                	mov    %ebx,(%eax)
     d24:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
     d27:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
     d2a:	8b 40 0c             	mov    0xc(%eax),%eax
     d2d:	89 c3                	mov    %eax,%ebx
     d2f:	c1 e3 09             	shl    $0x9,%ebx
     d32:	8b 4d e0             	mov    0xffffffe0(%ebp),%ecx
     d35:	89 d0                	mov    %edx,%eax
     d37:	c1 e0 02             	shl    $0x2,%eax
     d3a:	01 d0                	add    %edx,%eax
     d3c:	c1 e0 02             	shl    $0x2,%eax
     d3f:	01 c8                	add    %ecx,%eax
     d41:	05 84 00 00 00       	add    $0x84,%eax
     d46:	89 18                	mov    %ebx,(%eax)
     d48:	83 45 f4 01          	addl   $0x1,0xfffffff4(%ebp)
     d4c:	83 45 e4 10          	addl   $0x10,0xffffffe4(%ebp)
     d50:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
     d53:	8b 40 0c             	mov    0xc(%eax),%eax
     d56:	85 c0                	test   %eax,%eax
     d58:	74 11                	je     d6b <partion+0x357>
     d5a:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
     d5d:	8b 40 08             	mov    0x8(%eax),%eax
     d60:	03 45 ec             	add    0xffffffec(%ebp),%eax
     d63:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
     d66:	e9 87 fe ff ff       	jmp    bf2 <partion+0x1de>
     d6b:	83 45 e8 01          	addl   $0x1,0xffffffe8(%ebp)
     d6f:	83 7d e8 04          	cmpl   $0x4,0xffffffe8(%ebp)
     d73:	0f 8e 32 fe ff ff    	jle    bab <partion+0x197>
     d79:	83 c4 44             	add    $0x44,%esp
     d7c:	5b                   	pop    %ebx
     d7d:	5d                   	pop    %ebp
     d7e:	c3                   	ret    

00000d7f <print_partion_info>:
     d7f:	55                   	push   %ebp
     d80:	89 e5                	mov    %esp,%ebp
     d82:	83 ec 58             	sub    $0x58,%esp
     d85:	8b 45 08             	mov    0x8(%ebp),%eax
     d88:	66 89 45 cc          	mov    %ax,0xffffffcc(%ebp)
     d8c:	0f b7 45 cc          	movzwl 0xffffffcc(%ebp),%eax
     d90:	69 c0 74 05 00 00    	imul   $0x574,%eax,%eax
     d96:	05 00 00 00 00       	add    $0x0,%eax
     d9b:	89 45 d0             	mov    %eax,0xffffffd0(%ebp)
     d9e:	c7 45 d4 00 00 00 00 	movl   $0x0,0xffffffd4(%ebp)
     da5:	e9 e3 00 00 00       	jmp    e8d <print_partion_info+0x10e>
     daa:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
     dad:	8b 4d d0             	mov    0xffffffd0(%ebp),%ecx
     db0:	89 d0                	mov    %edx,%eax
     db2:	c1 e0 02             	shl    $0x2,%eax
     db5:	01 d0                	add    %edx,%eax
     db7:	c1 e0 02             	shl    $0x2,%eax
     dba:	01 c8                	add    %ecx,%eax
     dbc:	83 c0 10             	add    $0x10,%eax
     dbf:	8b 00                	mov    (%eax),%eax
     dc1:	83 f8 ff             	cmp    $0xffffffff,%eax
     dc4:	0f 84 bf 00 00 00    	je     e89 <print_partion_info+0x10a>
     dca:	0f b7 55 cc          	movzwl 0xffffffcc(%ebp),%edx
     dce:	89 d0                	mov    %edx,%eax
     dd0:	c1 e0 02             	shl    $0x2,%eax
     dd3:	01 d0                	add    %edx,%eax
     dd5:	03 45 d4             	add    0xffffffd4(%ebp),%eax
     dd8:	89 45 d8             	mov    %eax,0xffffffd8(%ebp)
     ddb:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
     dde:	8b 4d d0             	mov    0xffffffd0(%ebp),%ecx
     de1:	89 d0                	mov    %edx,%eax
     de3:	c1 e0 02             	shl    $0x2,%eax
     de6:	01 d0                	add    %edx,%eax
     de8:	c1 e0 02             	shl    $0x2,%eax
     deb:	01 c8                	add    %ecx,%eax
     ded:	83 c0 10             	add    $0x10,%eax
     df0:	8b 00                	mov    (%eax),%eax
     df2:	85 c0                	test   %eax,%eax
     df4:	75 09                	jne    dff <print_partion_info+0x80>
     df6:	c7 45 c8 a6 01 00 00 	movl   $0x1a6,0xffffffc8(%ebp)
     dfd:	eb 07                	jmp    e06 <print_partion_info+0x87>
     dff:	c7 45 c8 b5 01 00 00 	movl   $0x1b5,0xffffffc8(%ebp)
     e06:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
     e09:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
     e0c:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
     e0f:	8b 4d d0             	mov    0xffffffd0(%ebp),%ecx
     e12:	89 d0                	mov    %edx,%eax
     e14:	c1 e0 02             	shl    $0x2,%eax
     e17:	01 d0                	add    %edx,%eax
     e19:	c1 e0 02             	shl    $0x2,%eax
     e1c:	01 c8                	add    %ecx,%eax
     e1e:	83 c0 14             	add    $0x14,%eax
     e21:	8b 00                	mov    (%eax),%eax
     e23:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
     e26:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
     e29:	8b 4d d0             	mov    0xffffffd0(%ebp),%ecx
     e2c:	89 d0                	mov    %edx,%eax
     e2e:	c1 e0 02             	shl    $0x2,%eax
     e31:	01 d0                	add    %edx,%eax
     e33:	c1 e0 02             	shl    $0x2,%eax
     e36:	01 c8                	add    %ecx,%eax
     e38:	83 c0 1c             	add    $0x1c,%eax
     e3b:	8b 00                	mov    (%eax),%eax
     e3d:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
     e40:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
     e43:	8b 4d d0             	mov    0xffffffd0(%ebp),%ecx
     e46:	89 d0                	mov    %edx,%eax
     e48:	c1 e0 02             	shl    $0x2,%eax
     e4b:	01 d0                	add    %edx,%eax
     e4d:	c1 e0 02             	shl    $0x2,%eax
     e50:	01 c8                	add    %ecx,%eax
     e52:	83 c0 20             	add    $0x20,%eax
     e55:	8b 00                	mov    (%eax),%eax
     e57:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
     e5a:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
     e5d:	89 44 24 14          	mov    %eax,0x14(%esp)
     e61:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
     e64:	89 44 24 10          	mov    %eax,0x10(%esp)
     e68:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
     e6b:	89 44 24 0c          	mov    %eax,0xc(%esp)
     e6f:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
     e72:	89 44 24 08          	mov    %eax,0x8(%esp)
     e76:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
     e79:	89 44 24 04          	mov    %eax,0x4(%esp)
     e7d:	c7 04 24 c4 01 00 00 	movl   $0x1c4,(%esp)
     e84:	e8 fc ff ff ff       	call   e85 <print_partion_info+0x106>
     e89:	83 45 d4 01          	addl   $0x1,0xffffffd4(%ebp)
     e8d:	83 7d d4 04          	cmpl   $0x4,0xffffffd4(%ebp)
     e91:	0f 8e 13 ff ff ff    	jle    daa <print_partion_info+0x2b>
     e97:	c7 45 d4 00 00 00 00 	movl   $0x0,0xffffffd4(%ebp)
     e9e:	e9 ba 00 00 00       	jmp    f5d <print_partion_info+0x1de>
     ea3:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
     ea6:	8b 4d d0             	mov    0xffffffd0(%ebp),%ecx
     ea9:	89 d0                	mov    %edx,%eax
     eab:	c1 e0 02             	shl    $0x2,%eax
     eae:	01 d0                	add    %edx,%eax
     eb0:	c1 e0 02             	shl    $0x2,%eax
     eb3:	01 c8                	add    %ecx,%eax
     eb5:	83 c0 74             	add    $0x74,%eax
     eb8:	8b 00                	mov    (%eax),%eax
     eba:	83 f8 ff             	cmp    $0xffffffff,%eax
     ebd:	0f 84 96 00 00 00    	je     f59 <print_partion_info+0x1da>
     ec3:	0f b7 45 cc          	movzwl 0xffffffcc(%ebp),%eax
     ec7:	c1 e0 06             	shl    $0x6,%eax
     eca:	03 45 d4             	add    0xffffffd4(%ebp),%eax
     ecd:	83 c0 0a             	add    $0xa,%eax
     ed0:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
     ed3:	c7 45 f0 e7 01 00 00 	movl   $0x1e7,0xfffffff0(%ebp)
     eda:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
     edd:	8b 4d d0             	mov    0xffffffd0(%ebp),%ecx
     ee0:	89 d0                	mov    %edx,%eax
     ee2:	c1 e0 02             	shl    $0x2,%eax
     ee5:	01 d0                	add    %edx,%eax
     ee7:	c1 e0 02             	shl    $0x2,%eax
     eea:	01 c8                	add    %ecx,%eax
     eec:	83 c0 78             	add    $0x78,%eax
     eef:	8b 00                	mov    (%eax),%eax
     ef1:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
     ef4:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
     ef7:	8b 4d d0             	mov    0xffffffd0(%ebp),%ecx
     efa:	89 d0                	mov    %edx,%eax
     efc:	c1 e0 02             	shl    $0x2,%eax
     eff:	01 d0                	add    %edx,%eax
     f01:	c1 e0 02             	shl    $0x2,%eax
     f04:	01 c8                	add    %ecx,%eax
     f06:	83 e8 80             	sub    $0xffffff80,%eax
     f09:	8b 00                	mov    (%eax),%eax
     f0b:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
     f0e:	8b 55 d4             	mov    0xffffffd4(%ebp),%edx
     f11:	8b 4d d0             	mov    0xffffffd0(%ebp),%ecx
     f14:	89 d0                	mov    %edx,%eax
     f16:	c1 e0 02             	shl    $0x2,%eax
     f19:	01 d0                	add    %edx,%eax
     f1b:	c1 e0 02             	shl    $0x2,%eax
     f1e:	01 c8                	add    %ecx,%eax
     f20:	05 84 00 00 00       	add    $0x84,%eax
     f25:	8b 00                	mov    (%eax),%eax
     f27:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
     f2a:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
     f2d:	89 44 24 14          	mov    %eax,0x14(%esp)
     f31:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
     f34:	89 44 24 10          	mov    %eax,0x10(%esp)
     f38:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
     f3b:	89 44 24 0c          	mov    %eax,0xc(%esp)
     f3f:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     f42:	89 44 24 08          	mov    %eax,0x8(%esp)
     f46:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
     f49:	89 44 24 04          	mov    %eax,0x4(%esp)
     f4d:	c7 04 24 c4 01 00 00 	movl   $0x1c4,(%esp)
     f54:	e8 fc ff ff ff       	call   f55 <print_partion_info+0x1d6>
     f59:	83 45 d4 01          	addl   $0x1,0xffffffd4(%ebp)
     f5d:	83 7d d4 3f          	cmpl   $0x3f,0xffffffd4(%ebp)
     f61:	0f 8e 3c ff ff ff    	jle    ea3 <print_partion_info+0x124>
     f67:	c9                   	leave  
     f68:	c3                   	ret    

00000f69 <_hd_identify>:
     f69:	55                   	push   %ebp
     f6a:	89 e5                	mov    %esp,%ebp
     f6c:	83 ec 28             	sub    $0x28,%esp
     f6f:	8b 45 08             	mov    0x8(%ebp),%eax
     f72:	66 89 45 ec          	mov    %ax,0xffffffec(%ebp)
     f76:	0f b7 45 ec          	movzwl 0xffffffec(%ebp),%eax
     f7a:	25 ff 00 00 00       	and    $0xff,%eax
     f7f:	83 f8 09             	cmp    $0x9,%eax
     f82:	7f 23                	jg     fa7 <_hd_identify+0x3e>
     f84:	0f b7 45 ec          	movzwl 0xffffffec(%ebp),%eax
     f88:	0f b6 c8             	movzbl %al,%ecx
     f8b:	c7 45 e4 67 66 66 66 	movl   $0x66666667,0xffffffe4(%ebp)
     f92:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
     f95:	f7 e9                	imul   %ecx
     f97:	d1 fa                	sar    %edx
     f99:	89 c8                	mov    %ecx,%eax
     f9b:	c1 f8 1f             	sar    $0x1f,%eax
     f9e:	89 d1                	mov    %edx,%ecx
     fa0:	29 c1                	sub    %eax,%ecx
     fa2:	89 4d e8             	mov    %ecx,0xffffffe8(%ebp)
     fa5:	eb 1c                	jmp    fc3 <_hd_identify+0x5a>
     fa7:	0f b7 45 ec          	movzwl 0xffffffec(%ebp),%eax
     fab:	25 ff 00 00 00       	and    $0xff,%eax
     fb0:	8d 50 f6             	lea    0xfffffff6(%eax),%edx
     fb3:	89 d0                	mov    %edx,%eax
     fb5:	c1 f8 1f             	sar    $0x1f,%eax
     fb8:	c1 e8 1a             	shr    $0x1a,%eax
     fbb:	01 d0                	add    %edx,%eax
     fbd:	c1 f8 06             	sar    $0x6,%eax
     fc0:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
     fc3:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
     fc6:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
     fc9:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
     fcc:	69 c0 74 05 00 00    	imul   $0x574,%eax,%eax
     fd2:	05 00 00 00 00       	add    $0x0,%eax
     fd7:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
     fda:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
     fdd:	8b 00                	mov    (%eax),%eax
     fdf:	8d 50 01             	lea    0x1(%eax),%edx
     fe2:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
     fe5:	89 10                	mov    %edx,(%eax)
     fe7:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
     fea:	8b 00                	mov    (%eax),%eax
     fec:	83 f8 01             	cmp    $0x1,%eax
     fef:	74 0e                	je     fff <_hd_identify+0x96>
     ff1:	c7 04 24 f8 01 00 00 	movl   $0x1f8,(%esp)
     ff8:	e8 fc ff ff ff       	call   ff9 <_hd_identify+0x90>
     ffd:	eb 6c                	jmp    106b <_hd_identify+0x102>
     fff:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
    1002:	c1 e0 04             	shl    $0x4,%eax
    1005:	89 c2                	mov    %eax,%edx
    1007:	b8 e0 ff ff ff       	mov    $0xffffffe0,%eax
    100c:	09 d0                	or     %edx,%eax
    100e:	88 45 f6             	mov    %al,0xfffffff6(%ebp)
    1011:	c6 45 f7 ec          	movb   $0xec,0xfffffff7(%ebp)
    1015:	8d 45 f1             	lea    0xfffffff1(%ebp),%eax
    1018:	89 04 24             	mov    %eax,(%esp)
    101b:	e8 fc ff ff ff       	call   101c <_hd_identify+0xb3>
    1020:	e8 fc ff ff ff       	call   1021 <_hd_identify+0xb8>
    1025:	b8 00 00 00 00       	mov    $0x0,%eax
    102a:	c7 44 24 08 00 01 00 	movl   $0x100,0x8(%esp)
    1031:	00 
    1032:	89 44 24 04          	mov    %eax,0x4(%esp)
    1036:	c7 04 24 f0 01 00 00 	movl   $0x1f0,(%esp)
    103d:	e8 fc ff ff ff       	call   103e <_hd_identify+0xd5>
    1042:	b8 00 00 00 00       	mov    $0x0,%eax
    1047:	89 04 24             	mov    %eax,(%esp)
    104a:	e8 fc ff ff ff       	call   104b <_hd_identify+0xe2>
    104f:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
    1052:	0f b6 c0             	movzbl %al,%eax
    1055:	89 04 24             	mov    %eax,(%esp)
    1058:	e8 fc ff ff ff       	call   1059 <_hd_identify+0xf0>
    105d:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
    1060:	0f b7 c0             	movzwl %ax,%eax
    1063:	89 04 24             	mov    %eax,(%esp)
    1066:	e8 fc ff ff ff       	call   1067 <_hd_identify+0xfe>
    106b:	c9                   	leave  
    106c:	c3                   	ret    

0000106d <_hd_close>:
    106d:	55                   	push   %ebp
    106e:	89 e5                	mov    %esp,%ebp
    1070:	83 ec 28             	sub    $0x28,%esp
    1073:	8b 45 08             	mov    0x8(%ebp),%eax
    1076:	66 89 45 ec          	mov    %ax,0xffffffec(%ebp)
    107a:	0f b7 45 ec          	movzwl 0xffffffec(%ebp),%eax
    107e:	25 ff 00 00 00       	and    $0xff,%eax
    1083:	83 f8 09             	cmp    $0x9,%eax
    1086:	7f 23                	jg     10ab <_hd_close+0x3e>
    1088:	0f b7 45 ec          	movzwl 0xffffffec(%ebp),%eax
    108c:	0f b6 c8             	movzbl %al,%ecx
    108f:	c7 45 e4 67 66 66 66 	movl   $0x66666667,0xffffffe4(%ebp)
    1096:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
    1099:	f7 e9                	imul   %ecx
    109b:	d1 fa                	sar    %edx
    109d:	89 c8                	mov    %ecx,%eax
    109f:	c1 f8 1f             	sar    $0x1f,%eax
    10a2:	89 d1                	mov    %edx,%ecx
    10a4:	29 c1                	sub    %eax,%ecx
    10a6:	89 4d e8             	mov    %ecx,0xffffffe8(%ebp)
    10a9:	eb 1c                	jmp    10c7 <_hd_close+0x5a>
    10ab:	0f b7 45 ec          	movzwl 0xffffffec(%ebp),%eax
    10af:	25 ff 00 00 00       	and    $0xff,%eax
    10b4:	8d 50 f6             	lea    0xfffffff6(%eax),%edx
    10b7:	89 d0                	mov    %edx,%eax
    10b9:	c1 f8 1f             	sar    $0x1f,%eax
    10bc:	c1 e8 1a             	shr    $0x1a,%eax
    10bf:	01 d0                	add    %edx,%eax
    10c1:	c1 f8 06             	sar    $0x6,%eax
    10c4:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
    10c7:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
    10ca:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
    10cd:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
    10d0:	69 c0 74 05 00 00    	imul   $0x574,%eax,%eax
    10d6:	05 00 00 00 00       	add    $0x0,%eax
    10db:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
    10de:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
    10e1:	8b 00                	mov    (%eax),%eax
    10e3:	85 c0                	test   %eax,%eax
    10e5:	7f 0c                	jg     10f3 <_hd_close+0x86>
    10e7:	c7 04 24 24 02 00 00 	movl   $0x224,(%esp)
    10ee:	e8 fc ff ff ff       	call   10ef <_hd_close+0x82>
    10f3:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
    10f6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
    10fc:	c9                   	leave  
    10fd:	c3                   	ret    

000010fe <_hd_readwrite>:
    10fe:	55                   	push   %ebp
    10ff:	89 e5                	mov    %esp,%ebp
    1101:	53                   	push   %ebx
    1102:	83 ec 54             	sub    $0x54,%esp
    1105:	8b 45 10             	mov    0x10(%ebp),%eax
    1108:	8b 55 14             	mov    0x14(%ebp),%edx
    110b:	66 89 45 c8          	mov    %ax,0xffffffc8(%ebp)
    110f:	66 89 55 c4          	mov    %dx,0xffffffc4(%ebp)
    1113:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
    1117:	75 06                	jne    111f <_hd_readwrite+0x21>
    1119:	c6 45 df 20          	movb   $0x20,0xffffffdf(%ebp)
    111d:	eb 1a                	jmp    1139 <_hd_readwrite+0x3b>
    111f:	83 7d 08 03          	cmpl   $0x3,0x8(%ebp)
    1123:	75 06                	jne    112b <_hd_readwrite+0x2d>
    1125:	c6 45 df 30          	movb   $0x30,0xffffffdf(%ebp)
    1129:	eb 0e                	jmp    1139 <_hd_readwrite+0x3b>
    112b:	c7 04 24 4f 02 00 00 	movl   $0x24f,(%esp)
    1132:	e8 fc ff ff ff       	call   1133 <_hd_readwrite+0x35>
    1137:	eb fe                	jmp    1137 <_hd_readwrite+0x39>
    1139:	0f b7 45 c8          	movzwl 0xffffffc8(%ebp),%eax
    113d:	25 ff 00 00 00       	and    $0xff,%eax
    1142:	83 f8 09             	cmp    $0x9,%eax
    1145:	7f 23                	jg     116a <_hd_readwrite+0x6c>
    1147:	0f b7 45 c8          	movzwl 0xffffffc8(%ebp),%eax
    114b:	0f b6 c8             	movzbl %al,%ecx
    114e:	c7 45 b8 67 66 66 66 	movl   $0x66666667,0xffffffb8(%ebp)
    1155:	8b 45 b8             	mov    0xffffffb8(%ebp),%eax
    1158:	f7 e9                	imul   %ecx
    115a:	d1 fa                	sar    %edx
    115c:	89 c8                	mov    %ecx,%eax
    115e:	c1 f8 1f             	sar    $0x1f,%eax
    1161:	89 d1                	mov    %edx,%ecx
    1163:	29 c1                	sub    %eax,%ecx
    1165:	89 4d bc             	mov    %ecx,0xffffffbc(%ebp)
    1168:	eb 1c                	jmp    1186 <_hd_readwrite+0x88>
    116a:	0f b7 45 c8          	movzwl 0xffffffc8(%ebp),%eax
    116e:	25 ff 00 00 00       	and    $0xff,%eax
    1173:	8d 50 f6             	lea    0xfffffff6(%eax),%edx
    1176:	89 d0                	mov    %edx,%eax
    1178:	c1 f8 1f             	sar    $0x1f,%eax
    117b:	c1 e8 1a             	shr    $0x1a,%eax
    117e:	01 d0                	add    %edx,%eax
    1180:	c1 f8 06             	sar    $0x6,%eax
    1183:	89 45 bc             	mov    %eax,0xffffffbc(%ebp)
    1186:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
    1189:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
    118c:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
    118f:	69 c0 74 05 00 00    	imul   $0x574,%eax,%eax
    1195:	05 00 00 00 00       	add    $0x0,%eax
    119a:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
    119d:	0f b7 45 c8          	movzwl 0xffffffc8(%ebp),%eax
    11a1:	89 c2                	mov    %eax,%edx
    11a3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    11a8:	21 d0                	and    %edx,%eax
    11aa:	88 45 eb             	mov    %al,0xffffffeb(%ebp)
    11ad:	80 7d eb 09          	cmpb   $0x9,0xffffffeb(%ebp)
    11b1:	0f 87 d1 00 00 00    	ja     1288 <_hd_readwrite+0x18a>
    11b7:	0f b6 55 eb          	movzbl 0xffffffeb(%ebp),%edx
    11bb:	b8 cd ff ff ff       	mov    $0xffffffcd,%eax
    11c0:	f6 e2                	mul    %dl
    11c2:	66 c1 e8 08          	shr    $0x8,%ax
    11c6:	89 c1                	mov    %eax,%ecx
    11c8:	c0 e9 02             	shr    $0x2,%cl
    11cb:	88 4d c0             	mov    %cl,0xffffffc0(%ebp)
    11ce:	0f b6 45 c0          	movzbl 0xffffffc0(%ebp),%eax
    11d2:	c1 e0 02             	shl    $0x2,%eax
    11d5:	02 45 c0             	add    0xffffffc0(%ebp),%al
    11d8:	89 d1                	mov    %edx,%ecx
    11da:	28 c1                	sub    %al,%cl
    11dc:	88 4d c0             	mov    %cl,0xffffffc0(%ebp)
    11df:	0f b6 55 c0          	movzbl 0xffffffc0(%ebp),%edx
    11e3:	8b 4d e4             	mov    0xffffffe4(%ebp),%ecx
    11e6:	89 d0                	mov    %edx,%eax
    11e8:	c1 e0 02             	shl    $0x2,%eax
    11eb:	01 d0                	add    %edx,%eax
    11ed:	c1 e0 02             	shl    $0x2,%eax
    11f0:	01 c8                	add    %ecx,%eax
    11f2:	83 c0 14             	add    $0x14,%eax
    11f5:	8b 00                	mov    (%eax),%eax
    11f7:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
    11fa:	0f b6 55 eb          	movzbl 0xffffffeb(%ebp),%edx
    11fe:	b8 cd ff ff ff       	mov    $0xffffffcd,%eax
    1203:	f6 e2                	mul    %dl
    1205:	66 c1 e8 08          	shr    $0x8,%ax
    1209:	89 c1                	mov    %eax,%ecx
    120b:	c0 e9 02             	shr    $0x2,%cl
    120e:	88 4d c1             	mov    %cl,0xffffffc1(%ebp)
    1211:	0f b6 45 c1          	movzbl 0xffffffc1(%ebp),%eax
    1215:	c1 e0 02             	shl    $0x2,%eax
    1218:	02 45 c1             	add    0xffffffc1(%ebp),%al
    121b:	89 d1                	mov    %edx,%ecx
    121d:	28 c1                	sub    %al,%cl
    121f:	88 4d c1             	mov    %cl,0xffffffc1(%ebp)
    1222:	0f b6 55 c1          	movzbl 0xffffffc1(%ebp),%edx
    1226:	8b 4d e4             	mov    0xffffffe4(%ebp),%ecx
    1229:	89 d0                	mov    %edx,%eax
    122b:	c1 e0 02             	shl    $0x2,%eax
    122e:	01 d0                	add    %edx,%eax
    1230:	c1 e0 02             	shl    $0x2,%eax
    1233:	01 c8                	add    %ecx,%eax
    1235:	83 c0 14             	add    $0x14,%eax
    1238:	8b 18                	mov    (%eax),%ebx
    123a:	0f b6 55 eb          	movzbl 0xffffffeb(%ebp),%edx
    123e:	b8 cd ff ff ff       	mov    $0xffffffcd,%eax
    1243:	f6 e2                	mul    %dl
    1245:	66 c1 e8 08          	shr    $0x8,%ax
    1249:	89 c1                	mov    %eax,%ecx
    124b:	c0 e9 02             	shr    $0x2,%cl
    124e:	88 4d c2             	mov    %cl,0xffffffc2(%ebp)
    1251:	0f b6 45 c2          	movzbl 0xffffffc2(%ebp),%eax
    1255:	c1 e0 02             	shl    $0x2,%eax
    1258:	02 45 c2             	add    0xffffffc2(%ebp),%al
    125b:	89 d1                	mov    %edx,%ecx
    125d:	28 c1                	sub    %al,%cl
    125f:	88 4d c2             	mov    %cl,0xffffffc2(%ebp)
    1262:	0f b6 55 c2          	movzbl 0xffffffc2(%ebp),%edx
    1266:	8b 4d e4             	mov    0xffffffe4(%ebp),%ecx
    1269:	89 d0                	mov    %edx,%eax
    126b:	c1 e0 02             	shl    $0x2,%eax
    126e:	01 d0                	add    %edx,%eax
    1270:	c1 e0 02             	shl    $0x2,%eax
    1273:	01 c8                	add    %ecx,%eax
    1275:	83 c0 18             	add    $0x18,%eax
    1278:	8b 00                	mov    (%eax),%eax
    127a:	8d 04 03             	lea    (%ebx,%eax,1),%eax
    127d:	83 e8 01             	sub    $0x1,%eax
    1280:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
    1283:	e9 aa 00 00 00       	jmp    1332 <_hd_readwrite+0x234>
    1288:	0f b6 45 eb          	movzbl 0xffffffeb(%ebp),%eax
    128c:	8d 50 f6             	lea    0xfffffff6(%eax),%edx
    128f:	89 d0                	mov    %edx,%eax
    1291:	c1 f8 1f             	sar    $0x1f,%eax
    1294:	89 c1                	mov    %eax,%ecx
    1296:	c1 e9 1a             	shr    $0x1a,%ecx
    1299:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
    129c:	83 e0 3f             	and    $0x3f,%eax
    129f:	29 c8                	sub    %ecx,%eax
    12a1:	89 c2                	mov    %eax,%edx
    12a3:	8b 4d e4             	mov    0xffffffe4(%ebp),%ecx
    12a6:	89 d0                	mov    %edx,%eax
    12a8:	c1 e0 02             	shl    $0x2,%eax
    12ab:	01 d0                	add    %edx,%eax
    12ad:	c1 e0 02             	shl    $0x2,%eax
    12b0:	01 c8                	add    %ecx,%eax
    12b2:	83 c0 78             	add    $0x78,%eax
    12b5:	8b 00                	mov    (%eax),%eax
    12b7:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
    12ba:	0f b6 45 eb          	movzbl 0xffffffeb(%ebp),%eax
    12be:	8d 50 f6             	lea    0xfffffff6(%eax),%edx
    12c1:	89 d0                	mov    %edx,%eax
    12c3:	c1 f8 1f             	sar    $0x1f,%eax
    12c6:	89 c1                	mov    %eax,%ecx
    12c8:	c1 e9 1a             	shr    $0x1a,%ecx
    12cb:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
    12ce:	83 e0 3f             	and    $0x3f,%eax
    12d1:	29 c8                	sub    %ecx,%eax
    12d3:	89 c2                	mov    %eax,%edx
    12d5:	8b 4d e4             	mov    0xffffffe4(%ebp),%ecx
    12d8:	89 d0                	mov    %edx,%eax
    12da:	c1 e0 02             	shl    $0x2,%eax
    12dd:	01 d0                	add    %edx,%eax
    12df:	c1 e0 02             	shl    $0x2,%eax
    12e2:	01 c8                	add    %ecx,%eax
    12e4:	83 c0 78             	add    $0x78,%eax
    12e7:	8b 18                	mov    (%eax),%ebx
    12e9:	0f b6 55 eb          	movzbl 0xffffffeb(%ebp),%edx
    12ed:	b8 cd ff ff ff       	mov    $0xffffffcd,%eax
    12f2:	f6 e2                	mul    %dl
    12f4:	66 c1 e8 08          	shr    $0x8,%ax
    12f8:	89 c1                	mov    %eax,%ecx
    12fa:	c0 e9 02             	shr    $0x2,%cl
    12fd:	88 4d c3             	mov    %cl,0xffffffc3(%ebp)
    1300:	0f b6 45 c3          	movzbl 0xffffffc3(%ebp),%eax
    1304:	c1 e0 02             	shl    $0x2,%eax
    1307:	02 45 c3             	add    0xffffffc3(%ebp),%al
    130a:	89 d1                	mov    %edx,%ecx
    130c:	28 c1                	sub    %al,%cl
    130e:	88 4d c3             	mov    %cl,0xffffffc3(%ebp)
    1311:	0f b6 55 c3          	movzbl 0xffffffc3(%ebp),%edx
    1315:	8b 4d e4             	mov    0xffffffe4(%ebp),%ecx
    1318:	89 d0                	mov    %edx,%eax
    131a:	c1 e0 02             	shl    $0x2,%eax
    131d:	01 d0                	add    %edx,%eax
    131f:	c1 e0 02             	shl    $0x2,%eax
    1322:	01 c8                	add    %ecx,%eax
    1324:	83 c0 18             	add    $0x18,%eax
    1327:	8b 00                	mov    (%eax),%eax
    1329:	8d 04 03             	lea    (%ebx,%eax,1),%eax
    132c:	83 e8 01             	sub    $0x1,%eax
    132f:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
    1332:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
    1335:	03 45 18             	add    0x18(%ebp),%eax
    1338:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
    133b:	66 c7 45 fa 00 00    	movw   $0x0,0xfffffffa(%ebp)
    1341:	e9 c9 00 00 00       	jmp    140f <_hd_readwrite+0x311>
    1346:	c6 45 da 01          	movb   $0x1,0xffffffda(%ebp)
    134a:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
    134d:	89 c2                	mov    %eax,%edx
    134f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1354:	21 d0                	and    %edx,%eax
    1356:	88 45 db             	mov    %al,0xffffffdb(%ebp)
    1359:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
    135c:	c1 f8 08             	sar    $0x8,%eax
    135f:	89 c2                	mov    %eax,%edx
    1361:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1366:	21 d0                	and    %edx,%eax
    1368:	88 45 dc             	mov    %al,0xffffffdc(%ebp)
    136b:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
    136e:	c1 f8 10             	sar    $0x10,%eax
    1371:	89 c2                	mov    %eax,%edx
    1373:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1378:	21 d0                	and    %edx,%eax
    137a:	88 45 dd             	mov    %al,0xffffffdd(%ebp)
    137d:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
    1380:	c1 e0 04             	shl    $0x4,%eax
    1383:	89 c2                	mov    %eax,%edx
    1385:	83 ca 40             	or     $0x40,%edx
    1388:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
    138b:	c1 f8 18             	sar    $0x18,%eax
    138e:	83 e0 0f             	and    $0xf,%eax
    1391:	09 c2                	or     %eax,%edx
    1393:	b8 a0 ff ff ff       	mov    $0xffffffa0,%eax
    1398:	09 d0                	or     %edx,%eax
    139a:	88 45 de             	mov    %al,0xffffffde(%ebp)
    139d:	8d 45 d9             	lea    0xffffffd9(%ebp),%eax
    13a0:	89 04 24             	mov    %eax,(%esp)
    13a3:	e8 fc ff ff ff       	call   13a4 <_hd_readwrite+0x2a6>
    13a8:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
    13ac:	75 29                	jne    13d7 <_hd_readwrite+0x2d9>
    13ae:	e8 fc ff ff ff       	call   13af <_hd_readwrite+0x2b1>
    13b3:	8b 45 0c             	mov    0xc(%ebp),%eax
    13b6:	c7 44 24 08 00 01 00 	movl   $0x100,0x8(%esp)
    13bd:	00 
    13be:	89 44 24 04          	mov    %eax,0x4(%esp)
    13c2:	c7 04 24 f0 01 00 00 	movl   $0x1f0,(%esp)
    13c9:	e8 fc ff ff ff       	call   13ca <_hd_readwrite+0x2cc>
    13ce:	81 45 0c 00 02 00 00 	addl   $0x200,0xc(%ebp)
    13d5:	eb 27                	jmp    13fe <_hd_readwrite+0x300>
    13d7:	8b 45 0c             	mov    0xc(%ebp),%eax
    13da:	c7 44 24 08 00 01 00 	movl   $0x100,0x8(%esp)
    13e1:	00 
    13e2:	89 44 24 04          	mov    %eax,0x4(%esp)
    13e6:	c7 04 24 f0 01 00 00 	movl   $0x1f0,(%esp)
    13ed:	e8 fc ff ff ff       	call   13ee <_hd_readwrite+0x2f0>
    13f2:	e8 fc ff ff ff       	call   13f3 <_hd_readwrite+0x2f5>
    13f7:	81 45 0c 00 02 00 00 	addl   $0x200,0xc(%ebp)
    13fe:	66 83 45 fa 01       	addw   $0x1,0xfffffffa(%ebp)
    1403:	83 45 f4 01          	addl   $0x1,0xfffffff4(%ebp)
    1407:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
    140a:	3b 45 f0             	cmp    0xfffffff0(%ebp),%eax
    140d:	7f 10                	jg     141f <_hd_readwrite+0x321>
    140f:	66 83 6d c4 01       	subw   $0x1,0xffffffc4(%ebp)
    1414:	66 83 7d c4 ff       	cmpw   $0xffffffff,0xffffffc4(%ebp)
    1419:	0f 85 27 ff ff ff    	jne    1346 <_hd_readwrite+0x248>
    141f:	0f b7 45 fa          	movzwl 0xfffffffa(%ebp),%eax
    1423:	83 c4 54             	add    $0x54,%esp
    1426:	5b                   	pop    %ebx
    1427:	5d                   	pop    %ebp
    1428:	c3                   	ret    

00001429 <_hd_ioctl>:
    1429:	55                   	push   %ebp
    142a:	89 e5                	mov    %esp,%ebp
    142c:	5d                   	pop    %ebp
    142d:	c3                   	ret    
