
fs.o:     file format elf32-i386

Disassembly of section .text:

00000000 <task_fs>:
       0:	55                   	push   %ebp
       1:	89 e5                	mov    %esp,%ebp
       3:	56                   	push   %esi
       4:	53                   	push   %ebx
       5:	83 ec 50             	sub    $0x50,%esp
       8:	e8 fc ff ff ff       	call   9 <task_fs+0x9>
       d:	eb 00                	jmp    f <task_fs+0xf>
       f:	8d 45 c8             	lea    0xffffffc8(%ebp),%eax
      12:	89 44 24 08          	mov    %eax,0x8(%esp)
      16:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%esp)
      1d:	ff 
      1e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      25:	e8 fc ff ff ff       	call   26 <task_fs+0x26>
      2a:	85 c0                	test   %eax,%eax
      2c:	74 24                	je     52 <task_fs+0x52>
      2e:	c7 44 24 0c 1f 00 00 	movl   $0x1f,0xc(%esp)
      35:	00 
      36:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
      3d:	00 
      3e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
      45:	00 
      46:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
      4d:	e8 fc ff ff ff       	call   4e <task_fs+0x4e>
      52:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
      55:	83 f8 fd             	cmp    $0xfffffffd,%eax
      58:	74 24                	je     7e <task_fs+0x7e>
      5a:	c7 44 24 0c 20 00 00 	movl   $0x20,0xc(%esp)
      61:	00 
      62:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
      69:	00 
      6a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
      71:	00 
      72:	c7 04 24 19 00 00 00 	movl   $0x19,(%esp)
      79:	e8 fc ff ff ff       	call   7a <task_fs+0x7a>
      7e:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
      81:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
      84:	8d 45 c8             	lea    0xffffffc8(%ebp),%eax
      87:	83 c0 0c             	add    $0xc,%eax
      8a:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
      8d:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
      90:	8b 00                	mov    (%eax),%eax
      92:	89 45 c4             	mov    %eax,0xffffffc4(%ebp)
      95:	83 7d c4 08          	cmpl   $0x8,0xffffffc4(%ebp)
      99:	0f 87 13 02 00 00    	ja     2b2 <task_fs+0x2b2>
      9f:	8b 55 c4             	mov    0xffffffc4(%ebp),%edx
      a2:	8b 04 95 50 00 00 00 	mov    0x50(,%edx,4),%eax
      a9:	ff e0                	jmp    *%eax
      ab:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
      ae:	89 c2                	mov    %eax,%edx
      b0:	89 d0                	mov    %edx,%eax
      b2:	c1 e0 03             	shl    $0x3,%eax
      b5:	01 d0                	add    %edx,%eax
      b7:	c1 e0 05             	shl    $0x5,%eax
      ba:	8d 90 00 00 00 00    	lea    0x0(%eax),%edx
      c0:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
      c3:	8b 48 08             	mov    0x8(%eax),%ecx
      c6:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
      c9:	8b 40 04             	mov    0x4(%eax),%eax
      cc:	89 54 24 08          	mov    %edx,0x8(%esp)
      d0:	89 4c 24 04          	mov    %ecx,0x4(%esp)
      d4:	89 04 24             	mov    %eax,(%esp)
      d7:	e8 fc ff ff ff       	call   d8 <task_fs+0xd8>
      dc:	89 c2                	mov    %eax,%edx
      de:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
      e1:	89 50 0c             	mov    %edx,0xc(%eax)
      e4:	e9 c9 01 00 00       	jmp    2b2 <task_fs+0x2b2>
      e9:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
      ec:	89 c2                	mov    %eax,%edx
      ee:	89 d0                	mov    %edx,%eax
      f0:	c1 e0 03             	shl    $0x3,%eax
      f3:	01 d0                	add    %edx,%eax
      f5:	c1 e0 05             	shl    $0x5,%eax
      f8:	8d 90 00 00 00 00    	lea    0x0(%eax),%edx
      fe:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     101:	8b 48 10             	mov    0x10(%eax),%ecx
     104:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     107:	8b 58 18             	mov    0x18(%eax),%ebx
     10a:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     10d:	8b 70 14             	mov    0x14(%eax),%esi
     110:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     113:	8b 40 0c             	mov    0xc(%eax),%eax
     116:	89 54 24 10          	mov    %edx,0x10(%esp)
     11a:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
     11e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     122:	89 74 24 04          	mov    %esi,0x4(%esp)
     126:	89 04 24             	mov    %eax,(%esp)
     129:	e8 fc ff ff ff       	call   12a <task_fs+0x12a>
     12e:	89 c2                	mov    %eax,%edx
     130:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     133:	89 50 10             	mov    %edx,0x10(%eax)
     136:	e9 77 01 00 00       	jmp    2b2 <task_fs+0x2b2>
     13b:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
     13e:	89 c2                	mov    %eax,%edx
     140:	89 d0                	mov    %edx,%eax
     142:	c1 e0 03             	shl    $0x3,%eax
     145:	01 d0                	add    %edx,%eax
     147:	c1 e0 05             	shl    $0x5,%eax
     14a:	8d 90 00 00 00 00    	lea    0x0(%eax),%edx
     150:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     153:	8b 48 10             	mov    0x10(%eax),%ecx
     156:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     159:	8b 58 18             	mov    0x18(%eax),%ebx
     15c:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     15f:	8b 70 14             	mov    0x14(%eax),%esi
     162:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     165:	8b 40 0c             	mov    0xc(%eax),%eax
     168:	89 54 24 10          	mov    %edx,0x10(%esp)
     16c:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
     170:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     174:	89 74 24 04          	mov    %esi,0x4(%esp)
     178:	89 04 24             	mov    %eax,(%esp)
     17b:	e8 fc ff ff ff       	call   17c <task_fs+0x17c>
     180:	89 c2                	mov    %eax,%edx
     182:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     185:	89 50 10             	mov    %edx,0x10(%eax)
     188:	e9 25 01 00 00       	jmp    2b2 <task_fs+0x2b2>
     18d:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
     190:	89 c2                	mov    %eax,%edx
     192:	89 d0                	mov    %edx,%eax
     194:	c1 e0 03             	shl    $0x3,%eax
     197:	01 d0                	add    %edx,%eax
     199:	c1 e0 05             	shl    $0x5,%eax
     19c:	8d 90 00 00 00 00    	lea    0x0(%eax),%edx
     1a2:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     1a5:	8b 40 0c             	mov    0xc(%eax),%eax
     1a8:	89 54 24 04          	mov    %edx,0x4(%esp)
     1ac:	89 04 24             	mov    %eax,(%esp)
     1af:	e8 fc ff ff ff       	call   1b0 <task_fs+0x1b0>
     1b4:	89 c2                	mov    %eax,%edx
     1b6:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     1b9:	89 10                	mov    %edx,(%eax)
     1bb:	e9 f2 00 00 00       	jmp    2b2 <task_fs+0x2b2>
     1c0:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     1c3:	8b 58 08             	mov    0x8(%eax),%ebx
     1c6:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     1c9:	8b 48 04             	mov    0x4(%eax),%ecx
     1cc:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
     1cf:	89 c2                	mov    %eax,%edx
     1d1:	89 d0                	mov    %edx,%eax
     1d3:	c1 e0 03             	shl    $0x3,%eax
     1d6:	01 d0                	add    %edx,%eax
     1d8:	c1 e0 05             	shl    $0x5,%eax
     1db:	05 00 00 00 00       	add    $0x0,%eax
     1e0:	8b 40 48             	mov    0x48(%eax),%eax
     1e3:	89 4c 24 04          	mov    %ecx,0x4(%esp)
     1e7:	89 04 24             	mov    %eax,(%esp)
     1ea:	e8 fc ff ff ff       	call   1eb <task_fs+0x1eb>
     1ef:	89 5c 24 04          	mov    %ebx,0x4(%esp)
     1f3:	89 04 24             	mov    %eax,(%esp)
     1f6:	e8 fc ff ff ff       	call   1f7 <task_fs+0x1f7>
     1fb:	89 c2                	mov    %eax,%edx
     1fd:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     200:	89 10                	mov    %edx,(%eax)
     202:	e9 ab 00 00 00       	jmp    2b2 <task_fs+0x2b2>
     207:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     20a:	8b 40 08             	mov    0x8(%eax),%eax
     20d:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
     210:	83 7d f4 00          	cmpl   $0x0,0xfffffff4(%ebp)
     214:	78 0d                	js     223 <task_fs+0x223>
     216:	81 7d f4 0a 01 00 00 	cmpl   $0x10a,0xfffffff4(%ebp)
     21d:	0f 8e 8f 00 00 00    	jle    2b2 <task_fs+0x2b2>
     223:	c7 44 24 0c 36 00 00 	movl   $0x36,0xc(%esp)
     22a:	00 
     22b:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
     232:	00 
     233:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     23a:	00 
     23b:	c7 04 24 32 00 00 00 	movl   $0x32,(%esp)
     242:	e8 fc ff ff ff       	call   243 <task_fs+0x243>
     247:	eb 69                	jmp    2b2 <task_fs+0x2b2>
     249:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     24c:	8b 40 08             	mov    0x8(%eax),%eax
     24f:	89 04 24             	mov    %eax,(%esp)
     252:	e8 fc ff ff ff       	call   253 <task_fs+0x253>
     257:	89 c2                	mov    %eax,%edx
     259:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     25c:	89 10                	mov    %edx,(%eax)
     25e:	eb 52                	jmp    2b2 <task_fs+0x2b2>
     260:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     263:	8b 40 08             	mov    0x8(%eax),%eax
     266:	89 04 24             	mov    %eax,(%esp)
     269:	e8 fc ff ff ff       	call   26a <task_fs+0x26a>
     26e:	eb 42                	jmp    2b2 <task_fs+0x2b2>
     270:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
     273:	89 c2                	mov    %eax,%edx
     275:	89 d0                	mov    %edx,%eax
     277:	c1 e0 03             	shl    $0x3,%eax
     27a:	01 d0                	add    %edx,%eax
     27c:	c1 e0 05             	shl    $0x5,%eax
     27f:	8d 88 00 00 00 00    	lea    0x0(%eax),%ecx
     285:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     288:	8b 58 08             	mov    0x8(%eax),%ebx
     28b:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     28e:	8b 50 18             	mov    0x18(%eax),%edx
     291:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     294:	8b 40 0c             	mov    0xc(%eax),%eax
     297:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
     29b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     29f:	89 54 24 04          	mov    %edx,0x4(%esp)
     2a3:	89 04 24             	mov    %eax,(%esp)
     2a6:	e8 fc ff ff ff       	call   2a7 <task_fs+0x2a7>
     2ab:	89 c2                	mov    %eax,%edx
     2ad:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     2b0:	89 10                	mov    %edx,(%eax)
     2b2:	a1 00 00 00 00       	mov    0x0,%eax
     2b7:	83 f8 01             	cmp    $0x1,%eax
     2ba:	75 0f                	jne    2cb <task_fs+0x2cb>
     2bc:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
     2c3:	00 00 00 
     2c6:	e9 44 fd ff ff       	jmp    f <task_fs+0xf>
     2cb:	8d 45 c8             	lea    0xffffffc8(%ebp),%eax
     2ce:	89 44 24 08          	mov    %eax,0x8(%esp)
     2d2:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
     2d5:	89 44 24 04          	mov    %eax,0x4(%esp)
     2d9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     2e0:	e8 fc ff ff ff       	call   2e1 <task_fs+0x2e1>
     2e5:	e9 25 fd ff ff       	jmp    f <task_fs+0xf>

000002ea <fs_make>:
     2ea:	55                   	push   %ebp
     2eb:	89 e5                	mov    %esp,%ebp
     2ed:	57                   	push   %edi
     2ee:	56                   	push   %esi
     2ef:	53                   	push   %ebx
     2f0:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
     2f6:	c7 45 84 01 01 10 10 	movl   $0x10100101,0xffffff84(%ebp)
     2fd:	c7 45 88 02 00 00 00 	movl   $0x2,0xffffff88(%ebp)
     304:	c7 45 8c 17 00 00 00 	movl   $0x17,0xffffff8c(%ebp)
     30b:	c7 45 90 01 00 00 00 	movl   $0x1,0xffffff90(%ebp)
     312:	c7 45 94 03 00 00 00 	movl   $0x3,0xffffff94(%ebp)
     319:	c7 45 98 a0 0f 00 00 	movl   $0xfa0,0xffffff98(%ebp)
     320:	c7 45 9c 01 00 00 00 	movl   $0x1,0xffffff9c(%ebp)
     327:	c7 45 a0 04 00 00 00 	movl   $0x4,0xffffffa0(%ebp)
     32e:	c7 45 a4 20 00 00 00 	movl   $0x20,0xffffffa4(%ebp)
     335:	c7 45 a8 10 00 00 00 	movl   $0x10,0xffffffa8(%ebp)
     33c:	c7 45 ac 02 00 00 00 	movl   $0x2,0xffffffac(%ebp)
     343:	c7 45 b0 06 00 00 00 	movl   $0x6,0xffffffb0(%ebp)
     34a:	c7 45 b4 10 00 00 00 	movl   $0x10,0xffffffb4(%ebp)
     351:	c7 45 b8 00 00 00 00 	movl   $0x0,0xffffffb8(%ebp)
     358:	c7 45 bc 04 00 00 00 	movl   $0x4,0xffffffbc(%ebp)
     35f:	c7 45 c0 20 00 00 00 	movl   $0x20,0xffffffc0(%ebp)
     366:	c7 45 c4 01 00 00 00 	movl   $0x1,0xffffffc4(%ebp)
     36d:	c7 45 c8 01 00 00 00 	movl   $0x1,0xffffffc8(%ebp)
     374:	c7 45 cc 04 00 00 00 	movl   $0x4,0xffffffcc(%ebp)
     37b:	c7 45 d0 08 00 00 00 	movl   $0x8,0xffffffd0(%ebp)
     382:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     389:	00 
     38a:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
     391:	00 
     392:	c7 04 24 74 00 00 00 	movl   $0x74,(%esp)
     399:	e8 fc ff ff ff       	call   39a <fs_make+0xb0>
     39e:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     3a5:	00 
     3a6:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
     3ad:	00 
     3ae:	c7 04 24 94 00 00 00 	movl   $0x94,(%esp)
     3b5:	e8 fc ff ff ff       	call   3b6 <fs_make+0xcc>
     3ba:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     3c1:	00 
     3c2:	c7 44 24 04 03 00 00 	movl   $0x3,0x4(%esp)
     3c9:	00 
     3ca:	c7 04 24 b4 00 00 00 	movl   $0xb4,(%esp)
     3d1:	e8 fc ff ff ff       	call   3d2 <fs_make+0xe8>
     3d6:	c7 44 24 08 02 00 00 	movl   $0x2,0x8(%esp)
     3dd:	00 
     3de:	c7 44 24 04 04 00 00 	movl   $0x4,0x4(%esp)
     3e5:	00 
     3e6:	c7 04 24 d4 00 00 00 	movl   $0xd4,(%esp)
     3ed:	e8 fc ff ff ff       	call   3ee <fs_make+0x104>
     3f2:	c7 44 24 08 a0 0f 00 	movl   $0xfa0,0x8(%esp)
     3f9:	00 
     3fa:	c7 44 24 04 06 00 00 	movl   $0x6,0x4(%esp)
     401:	00 
     402:	c7 04 24 f4 00 00 00 	movl   $0xf4,(%esp)
     409:	e8 fc ff ff ff       	call   40a <fs_make+0x120>
     40e:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
     415:	00 
     416:	c7 44 24 04 11 00 00 	movl   $0x11,0x4(%esp)
     41d:	00 
     41e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     425:	e8 fc ff ff ff       	call   426 <fs_make+0x13c>
     42a:	8d 75 84             	lea    0xffffff84(%ebp),%esi
     42d:	bf 00 00 00 00       	mov    $0x0,%edi
     432:	b9 48 00 00 00       	mov    $0x48,%ecx
     437:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
     439:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
     440:	00 
     441:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
     448:	00 
     449:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     450:	00 
     451:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
     458:	e8 fc ff ff ff       	call   459 <fs_make+0x16f>
     45d:	c7 45 d8 00 00 00 00 	movl   $0x0,0xffffffd8(%ebp)
     464:	eb 58                	jmp    4be <fs_make+0x1d4>
     466:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
     46d:	00 
     46e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     475:	00 
     476:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     47d:	e8 fc ff ff ff       	call   47e <fs_make+0x194>
     482:	83 7d d8 00          	cmpl   $0x0,0xffffffd8(%ebp)
     486:	75 07                	jne    48f <fs_make+0x1a5>
     488:	c6 05 00 00 00 00 1f 	movb   $0x1f,0x0
     48f:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
     492:	c1 e0 09             	shl    $0x9,%eax
     495:	05 00 04 00 00       	add    $0x400,%eax
     49a:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
     4a1:	00 
     4a2:	89 44 24 08          	mov    %eax,0x8(%esp)
     4a6:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     4ad:	00 
     4ae:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
     4b5:	e8 fc ff ff ff       	call   4b6 <fs_make+0x1cc>
     4ba:	83 45 d8 01          	addl   $0x1,0xffffffd8(%ebp)
     4be:	83 7d d8 00          	cmpl   $0x0,0xffffffd8(%ebp)
     4c2:	7e a2                	jle    466 <fs_make+0x17c>
     4c4:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
     4cb:	00 
     4cc:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     4d3:	00 
     4d4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     4db:	e8 fc ff ff ff       	call   4dc <fs_make+0x1f2>
     4e0:	c7 45 d8 00 00 00 00 	movl   $0x0,0xffffffd8(%ebp)
     4e7:	c7 45 dc 00 00 00 00 	movl   $0x0,0xffffffdc(%ebp)
     4ee:	eb 23                	jmp    513 <fs_make+0x229>
     4f0:	8b 5d d8             	mov    0xffffffd8(%ebp),%ebx
     4f3:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
     4f6:	0f b6 90 00 00 00 00 	movzbl 0x0(%eax),%edx
     4fd:	8b 4d dc             	mov    0xffffffdc(%ebp),%ecx
     500:	b8 01 00 00 00       	mov    $0x1,%eax
     505:	d3 e0                	shl    %cl,%eax
     507:	09 d0                	or     %edx,%eax
     509:	88 83 00 00 00 00    	mov    %al,0x0(%ebx)
     50f:	83 45 dc 01          	addl   $0x1,0xffffffdc(%ebp)
     513:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
     516:	83 f8 01             	cmp    $0x1,%eax
     519:	76 d5                	jbe    4f0 <fs_make+0x206>
     51b:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
     522:	00 
     523:	c7 44 24 08 00 06 00 	movl   $0x600,0x8(%esp)
     52a:	00 
     52b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     532:	00 
     533:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
     53a:	e8 fc ff ff ff       	call   53b <fs_make+0x251>
     53f:	c7 45 e0 00 00 00 00 	movl   $0x0,0xffffffe0(%ebp)
     546:	c7 45 e4 02 00 00 00 	movl   $0x2,0xffffffe4(%ebp)
     54d:	c7 45 d8 00 00 00 00 	movl   $0x0,0xffffffd8(%ebp)
     554:	e9 af 00 00 00       	jmp    608 <fs_make+0x31e>
     559:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
     560:	00 
     561:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     568:	00 
     569:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     570:	e8 fc ff ff ff       	call   571 <fs_make+0x287>
     575:	c7 45 f0 00 00 00 00 	movl   $0x0,0xfffffff0(%ebp)
     57c:	c7 45 dc 00 00 00 00 	movl   $0x0,0xffffffdc(%ebp)
     583:	eb 4e                	jmp    5d3 <fs_make+0x2e9>
     585:	83 7d e0 00          	cmpl   $0x0,0xffffffe0(%ebp)
     589:	7e 0f                	jle    59a <fs_make+0x2b0>
     58b:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     58e:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%eax)
     594:	83 6d e0 01          	subl   $0x1,0xffffffe0(%ebp)
     598:	eb 31                	jmp    5cb <fs_make+0x2e1>
     59a:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     59d:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
     5a3:	83 7d e4 00          	cmpl   $0x0,0xffffffe4(%ebp)
     5a7:	7e 22                	jle    5cb <fs_make+0x2e1>
     5a9:	eb 1a                	jmp    5c5 <fs_make+0x2db>
     5ab:	83 6d e4 01          	subl   $0x1,0xffffffe4(%ebp)
     5af:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     5b2:	8b 10                	mov    (%eax),%edx
     5b4:	8b 4d e4             	mov    0xffffffe4(%ebp),%ecx
     5b7:	b8 01 00 00 00       	mov    $0x1,%eax
     5bc:	d3 e0                	shl    %cl,%eax
     5be:	09 c2                	or     %eax,%edx
     5c0:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     5c3:	89 10                	mov    %edx,(%eax)
     5c5:	83 7d e4 00          	cmpl   $0x0,0xffffffe4(%ebp)
     5c9:	7f e0                	jg     5ab <fs_make+0x2c1>
     5cb:	83 45 dc 01          	addl   $0x1,0xffffffdc(%ebp)
     5cf:	83 45 f0 04          	addl   $0x4,0xfffffff0(%ebp)
     5d3:	83 7d dc 7f          	cmpl   $0x7f,0xffffffdc(%ebp)
     5d7:	7e ac                	jle    585 <fs_make+0x29b>
     5d9:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
     5dc:	c1 e0 09             	shl    $0x9,%eax
     5df:	05 00 06 00 00       	add    $0x600,%eax
     5e4:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
     5eb:	00 
     5ec:	89 44 24 08          	mov    %eax,0x8(%esp)
     5f0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     5f7:	00 
     5f8:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
     5ff:	e8 fc ff ff ff       	call   600 <fs_make+0x316>
     604:	83 45 d8 01          	addl   $0x1,0xffffffd8(%ebp)
     608:	83 7d d8 00          	cmpl   $0x0,0xffffffd8(%ebp)
     60c:	0f 8e 47 ff ff ff    	jle    559 <fs_make+0x26f>
     612:	c7 45 e8 00 00 00 00 	movl   $0x0,0xffffffe8(%ebp)
     619:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
     620:	00 
     621:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     628:	00 
     629:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     630:	e8 fc ff ff ff       	call   631 <fs_make+0x347>
     635:	83 45 e8 20          	addl   $0x20,0xffffffe8(%ebp)
     639:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
     63c:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
     642:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
     645:	c7 40 04 00 02 00 00 	movl   $0x200,0x4(%eax)
     64c:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
     64f:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%eax)
     656:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
     659:	c7 40 0c 01 00 00 00 	movl   $0x1,0xc(%eax)
     660:	83 45 e8 20          	addl   $0x20,0xffffffe8(%ebp)
     664:	c7 45 d8 00 00 00 00 	movl   $0x0,0xffffffd8(%ebp)
     66b:	eb 34                	jmp    6a1 <fs_make+0x3b7>
     66d:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
     670:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
     676:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
     679:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
     680:	0f b6 45 d8          	movzbl 0xffffffd8(%ebp),%eax
     684:	80 cc 04             	or     $0x4,%ah
     687:	89 c2                	mov    %eax,%edx
     689:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
     68c:	89 50 08             	mov    %edx,0x8(%eax)
     68f:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
     692:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
     699:	83 45 d8 01          	addl   $0x1,0xffffffd8(%ebp)
     69d:	83 45 e8 20          	addl   $0x20,0xffffffe8(%ebp)
     6a1:	83 7d d8 02          	cmpl   $0x2,0xffffffd8(%ebp)
     6a5:	7e c6                	jle    66d <fs_make+0x383>
     6a7:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
     6ae:	00 
     6af:	c7 44 24 08 00 08 00 	movl   $0x800,0x8(%esp)
     6b6:	00 
     6b7:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     6be:	00 
     6bf:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
     6c6:	e8 fc ff ff ff       	call   6c7 <fs_make+0x3dd>
     6cb:	c7 45 d8 00 00 00 00 	movl   $0x0,0xffffffd8(%ebp)
     6d2:	eb 58                	jmp    72c <fs_make+0x442>
     6d4:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
     6db:	c7 45 dc 00 00 00 00 	movl   $0x0,0xffffffdc(%ebp)
     6e2:	eb 11                	jmp    6f5 <fs_make+0x40b>
     6e4:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
     6e7:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
     6ed:	83 45 dc 01          	addl   $0x1,0xffffffdc(%ebp)
     6f1:	83 45 ec 10          	addl   $0x10,0xffffffec(%ebp)
     6f5:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
     6f8:	83 f8 1f             	cmp    $0x1f,%eax
     6fb:	76 e7                	jbe    6e4 <fs_make+0x3fa>
     6fd:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
     700:	c1 e0 09             	shl    $0x9,%eax
     703:	05 00 0e 00 00       	add    $0xe00,%eax
     708:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
     70f:	00 
     710:	89 44 24 08          	mov    %eax,0x8(%esp)
     714:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     71b:	00 
     71c:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
     723:	e8 fc ff ff ff       	call   724 <fs_make+0x43a>
     728:	83 45 d8 01          	addl   $0x1,0xffffffd8(%ebp)
     72c:	83 7d d8 00          	cmpl   $0x0,0xffffffd8(%ebp)
     730:	74 a2                	je     6d4 <fs_make+0x3ea>
     732:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
     739:	83 45 ec 10          	addl   $0x10,0xffffffec(%ebp)
     73d:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
     740:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
     746:	8b 7d ec             	mov    0xffffffec(%ebp),%edi
     749:	83 c7 04             	add    $0x4,%edi
     74c:	be 14 01 00 00       	mov    $0x114,%esi
     751:	b9 02 00 00 00       	mov    $0x2,%ecx
     756:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
     758:	83 45 ec 10          	addl   $0x10,0xffffffec(%ebp)
     75c:	c7 45 d8 00 00 00 00 	movl   $0x0,0xffffffd8(%ebp)
     763:	eb 33                	jmp    798 <fs_make+0x4ae>
     765:	8b 55 d8             	mov    0xffffffd8(%ebp),%edx
     768:	83 c2 02             	add    $0x2,%edx
     76b:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
     76e:	89 10                	mov    %edx,(%eax)
     770:	8b 7d ec             	mov    0xffffffec(%ebp),%edi
     773:	83 c7 04             	add    $0x4,%edi
     776:	be 16 01 00 00       	mov    $0x116,%esi
     77b:	b9 05 00 00 00       	mov    $0x5,%ecx
     780:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
     782:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
     785:	83 c0 30             	add    $0x30,%eax
     788:	89 c2                	mov    %eax,%edx
     78a:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
     78d:	88 50 07             	mov    %dl,0x7(%eax)
     790:	83 45 d8 01          	addl   $0x1,0xffffffd8(%ebp)
     794:	83 45 ec 10          	addl   $0x10,0xffffffec(%ebp)
     798:	83 7d d8 02          	cmpl   $0x2,0xffffffd8(%ebp)
     79c:	7e c7                	jle    765 <fs_make+0x47b>
     79e:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
     7a5:	00 
     7a6:	c7 44 24 08 00 0e 00 	movl   $0xe00,0x8(%esp)
     7ad:	00 
     7ae:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     7b5:	00 
     7b6:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
     7bd:	e8 fc ff ff ff       	call   7be <fs_make+0x4d4>
     7c2:	81 c4 8c 00 00 00    	add    $0x8c,%esp
     7c8:	5b                   	pop    %ebx
     7c9:	5e                   	pop    %esi
     7ca:	5f                   	pop    %edi
     7cb:	5d                   	pop    %ebp
     7cc:	c3                   	ret    

000007cd <init_fs>:
     7cd:	55                   	push   %ebp
     7ce:	89 e5                	mov    %esp,%ebp
     7d0:	83 ec 28             	sub    $0x28,%esp
     7d3:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
     7da:	00 00 00 
     7dd:	c7 45 f0 00 00 00 00 	movl   $0x0,0xfffffff0(%ebp)
     7e4:	eb 0e                	jmp    7f4 <init_fs+0x27>
     7e6:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
     7e9:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
     7f0:	83 45 f0 0c          	addl   $0xc,0xfffffff0(%ebp)
     7f4:	b8 00 30 00 00       	mov    $0x3000,%eax
     7f9:	39 45 f0             	cmp    %eax,0xfffffff0(%ebp)
     7fc:	72 e8                	jb     7e6 <init_fs+0x19>
     7fe:	c7 45 f4 00 00 00 00 	movl   $0x0,0xfffffff4(%ebp)
     805:	eb 0e                	jmp    815 <init_fs+0x48>
     807:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
     80a:	c7 40 24 00 00 00 00 	movl   $0x0,0x24(%eax)
     811:	83 45 f4 2c          	addl   $0x2c,0xfffffff4(%ebp)
     815:	b8 00 0b 00 00       	mov    $0xb00,%eax
     81a:	39 45 f4             	cmp    %eax,0xfffffff4(%ebp)
     81d:	72 e8                	jb     807 <init_fs+0x3a>
     81f:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
     826:	e8 fc ff ff ff       	call   827 <init_fs+0x5a>
     82b:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
     832:	00 
     833:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
     83a:	00 
     83b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     842:	00 
     843:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
     84a:	e8 fc ff ff ff       	call   84b <init_fs+0x7e>
     84f:	c7 45 f8 00 00 00 00 	movl   $0x0,0xfffffff8(%ebp)
     856:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
     859:	8b 00                	mov    (%eax),%eax
     85b:	3d 01 01 10 10       	cmp    $0x10100101,%eax
     860:	74 05                	je     867 <init_fs+0x9a>
     862:	e8 fc ff ff ff       	call   863 <init_fs+0x96>
     867:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
     86e:	00 
     86f:	c7 44 24 08 00 08 00 	movl   $0x800,0x8(%esp)
     876:	00 
     877:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     87e:	00 
     87f:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
     886:	e8 fc ff ff ff       	call   887 <init_fs+0xba>
     88b:	c7 45 fc 00 00 00 00 	movl   $0x0,0xfffffffc(%ebp)
     892:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
     895:	83 c0 20             	add    $0x20,%eax
     898:	89 c2                	mov    %eax,%edx
     89a:	8b 02                	mov    (%edx),%eax
     89c:	a3 00 00 00 00       	mov    %eax,0x0
     8a1:	8b 42 04             	mov    0x4(%edx),%eax
     8a4:	a3 04 00 00 00       	mov    %eax,0x4
     8a9:	8b 42 08             	mov    0x8(%edx),%eax
     8ac:	a3 08 00 00 00       	mov    %eax,0x8
     8b1:	8b 42 0c             	mov    0xc(%edx),%eax
     8b4:	a3 0c 00 00 00       	mov    %eax,0xc
     8b9:	8b 42 10             	mov    0x10(%edx),%eax
     8bc:	a3 10 00 00 00       	mov    %eax,0x10
     8c1:	8b 42 14             	mov    0x14(%edx),%eax
     8c4:	a3 14 00 00 00       	mov    %eax,0x14
     8c9:	8b 42 18             	mov    0x18(%edx),%eax
     8cc:	a3 18 00 00 00       	mov    %eax,0x18
     8d1:	8b 42 1c             	mov    0x1c(%edx),%eax
     8d4:	a3 1c 00 00 00       	mov    %eax,0x1c
     8d9:	8b 42 20             	mov    0x20(%edx),%eax
     8dc:	a3 20 00 00 00       	mov    %eax,0x20
     8e1:	8b 42 24             	mov    0x24(%edx),%eax
     8e4:	a3 24 00 00 00       	mov    %eax,0x24
     8e9:	8b 42 28             	mov    0x28(%edx),%eax
     8ec:	a3 28 00 00 00       	mov    %eax,0x28
     8f1:	c7 05 20 00 00 00 1a 	movl   $0x31a,0x20
     8f8:	03 00 00 
     8fb:	c7 05 24 00 00 00 01 	movl   $0x1,0x24
     902:	00 00 00 
     905:	c7 05 28 00 00 00 01 	movl   $0x1,0x28
     90c:	00 00 00 
     90f:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
     916:	00 00 00 
     919:	c9                   	leave  
     91a:	c3                   	ret    

0000091b <create_file>:
     91b:	55                   	push   %ebp
     91c:	89 e5                	mov    %esp,%ebp
     91e:	57                   	push   %edi
     91f:	56                   	push   %esi
     920:	53                   	push   %ebx
     921:	83 ec 5c             	sub    $0x5c,%esp
     924:	c7 45 c8 00 00 00 00 	movl   $0x0,0xffffffc8(%ebp)
     92b:	c7 45 cc 00 00 00 00 	movl   $0x0,0xffffffcc(%ebp)
     932:	c7 45 d0 00 00 00 00 	movl   $0x0,0xffffffd0(%ebp)
     939:	e9 01 01 00 00       	jmp    a3f <create_file+0x124>
     93e:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
     941:	c1 e0 09             	shl    $0x9,%eax
     944:	05 00 04 00 00       	add    $0x400,%eax
     949:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
     950:	00 
     951:	89 44 24 08          	mov    %eax,0x8(%esp)
     955:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     95c:	00 
     95d:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
     964:	e8 fc ff ff ff       	call   965 <create_file+0x4a>
     969:	c7 45 d4 00 00 00 00 	movl   $0x0,0xffffffd4(%ebp)
     970:	e9 b3 00 00 00       	jmp    a28 <create_file+0x10d>
     975:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
     978:	0f b6 80 00 00 00 00 	movzbl 0x0(%eax),%eax
     97f:	3c ff                	cmp    $0xff,%al
     981:	0f 84 9d 00 00 00    	je     a24 <create_file+0x109>
     987:	c7 45 d8 00 00 00 00 	movl   $0x0,0xffffffd8(%ebp)
     98e:	e9 81 00 00 00       	jmp    a14 <create_file+0xf9>
     993:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
     996:	0f b6 80 00 00 00 00 	movzbl 0x0(%eax),%eax
     99d:	0f be c0             	movsbl %al,%eax
     9a0:	8b 4d d8             	mov    0xffffffd8(%ebp),%ecx
     9a3:	d3 f8                	sar    %cl,%eax
     9a5:	83 e0 01             	and    $0x1,%eax
     9a8:	85 c0                	test   %eax,%eax
     9aa:	75 64                	jne    a10 <create_file+0xf5>
     9ac:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
     9af:	c1 e0 09             	shl    $0x9,%eax
     9b2:	03 45 d4             	add    0xffffffd4(%ebp),%eax
     9b5:	c1 e0 03             	shl    $0x3,%eax
     9b8:	03 45 d8             	add    0xffffffd8(%ebp),%eax
     9bb:	89 45 c8             	mov    %eax,0xffffffc8(%ebp)
     9be:	83 7d c8 00          	cmpl   $0x0,0xffffffc8(%ebp)
     9c2:	74 4c                	je     a10 <create_file+0xf5>
     9c4:	8b 5d d4             	mov    0xffffffd4(%ebp),%ebx
     9c7:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
     9ca:	0f b6 90 00 00 00 00 	movzbl 0x0(%eax),%edx
     9d1:	8b 4d d8             	mov    0xffffffd8(%ebp),%ecx
     9d4:	b8 01 00 00 00       	mov    $0x1,%eax
     9d9:	d3 e0                	shl    %cl,%eax
     9db:	09 d0                	or     %edx,%eax
     9dd:	88 83 00 00 00 00    	mov    %al,0x0(%ebx)
     9e3:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
     9e6:	c1 e0 09             	shl    $0x9,%eax
     9e9:	05 00 04 00 00       	add    $0x400,%eax
     9ee:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
     9f5:	00 
     9f6:	89 44 24 08          	mov    %eax,0x8(%esp)
     9fa:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     a01:	00 
     a02:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
     a09:	e8 fc ff ff ff       	call   a0a <create_file+0xef>
     a0e:	eb 0e                	jmp    a1e <create_file+0x103>
     a10:	83 45 d8 01          	addl   $0x1,0xffffffd8(%ebp)
     a14:	83 7d d8 07          	cmpl   $0x7,0xffffffd8(%ebp)
     a18:	0f 8e 75 ff ff ff    	jle    993 <create_file+0x78>
     a1e:	83 7d c8 00          	cmpl   $0x0,0xffffffc8(%ebp)
     a22:	75 11                	jne    a35 <create_file+0x11a>
     a24:	83 45 d4 01          	addl   $0x1,0xffffffd4(%ebp)
     a28:	81 7d d4 ff 01 00 00 	cmpl   $0x1ff,0xffffffd4(%ebp)
     a2f:	0f 8e 40 ff ff ff    	jle    975 <create_file+0x5a>
     a35:	83 7d c8 00          	cmpl   $0x0,0xffffffc8(%ebp)
     a39:	75 0e                	jne    a49 <create_file+0x12e>
     a3b:	83 45 d0 01          	addl   $0x1,0xffffffd0(%ebp)
     a3f:	83 7d d0 00          	cmpl   $0x0,0xffffffd0(%ebp)
     a43:	0f 8e f5 fe ff ff    	jle    93e <create_file+0x23>
     a49:	83 7d c8 00          	cmpl   $0x0,0xffffffc8(%ebp)
     a4d:	75 18                	jne    a67 <create_file+0x14c>
     a4f:	c7 04 24 1b 01 00 00 	movl   $0x11b,(%esp)
     a56:	e8 fc ff ff ff       	call   a57 <create_file+0x13c>
     a5b:	c7 45 b0 00 00 00 00 	movl   $0x0,0xffffffb0(%ebp)
     a62:	e9 dc 04 00 00       	jmp    f43 <create_file+0x628>
     a67:	c7 45 d0 00 00 00 00 	movl   $0x0,0xffffffd0(%ebp)
     a6e:	e9 d5 02 00 00       	jmp    d48 <create_file+0x42d>
     a73:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
     a76:	c1 e0 09             	shl    $0x9,%eax
     a79:	05 00 06 00 00       	add    $0x600,%eax
     a7e:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
     a85:	00 
     a86:	89 44 24 08          	mov    %eax,0x8(%esp)
     a8a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     a91:	00 
     a92:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
     a99:	e8 fc ff ff ff       	call   a9a <create_file+0x17f>
     a9e:	c7 45 d4 00 00 00 00 	movl   $0x0,0xffffffd4(%ebp)
     aa5:	e9 8d 02 00 00       	jmp    d37 <create_file+0x41c>
     aaa:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
     aad:	0f b6 80 00 00 00 00 	movzbl 0x0(%eax),%eax
     ab4:	3c ff                	cmp    $0xff,%al
     ab6:	0f 84 77 02 00 00    	je     d33 <create_file+0x418>
     abc:	c7 45 d8 00 00 00 00 	movl   $0x0,0xffffffd8(%ebp)
     ac3:	e9 61 02 00 00       	jmp    d29 <create_file+0x40e>
     ac8:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
     acb:	0f b6 80 00 00 00 00 	movzbl 0x0(%eax),%eax
     ad2:	0f be c0             	movsbl %al,%eax
     ad5:	8b 4d d8             	mov    0xffffffd8(%ebp),%ecx
     ad8:	d3 f8                	sar    %cl,%eax
     ada:	83 e0 01             	and    $0x1,%eax
     add:	85 c0                	test   %eax,%eax
     adf:	0f 85 40 02 00 00    	jne    d25 <create_file+0x40a>
     ae5:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
     ae8:	c1 e0 09             	shl    $0x9,%eax
     aeb:	03 45 d4             	add    0xffffffd4(%ebp),%eax
     aee:	c1 e0 03             	shl    $0x3,%eax
     af1:	03 45 d8             	add    0xffffffd8(%ebp),%eax
     af4:	89 45 cc             	mov    %eax,0xffffffcc(%ebp)
     af7:	c7 45 f0 c8 00 00 00 	movl   $0xc8,0xfffffff0(%ebp)
     afe:	e9 18 02 00 00       	jmp    d1b <create_file+0x400>
     b03:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
     b06:	c1 e0 09             	shl    $0x9,%eax
     b09:	05 00 06 00 00       	add    $0x600,%eax
     b0e:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
     b15:	00 
     b16:	89 44 24 08          	mov    %eax,0x8(%esp)
     b1a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     b21:	00 
     b22:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
     b29:	e8 fc ff ff ff       	call   b2a <create_file+0x20f>
     b2e:	e9 9f 01 00 00       	jmp    cd2 <create_file+0x3b7>
     b33:	b8 08 00 00 00       	mov    $0x8,%eax
     b38:	2b 45 d8             	sub    0xffffffd8(%ebp),%eax
     b3b:	3b 45 f0             	cmp    0xfffffff0(%ebp),%eax
     b3e:	0f 8c b0 00 00 00    	jl     bf4 <create_file+0x2d9>
     b44:	eb 6f                	jmp    bb5 <create_file+0x29a>
     b46:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
     b49:	0f b6 90 00 00 00 00 	movzbl 0x0(%eax),%edx
     b50:	8b 4d d8             	mov    0xffffffd8(%ebp),%ecx
     b53:	b8 01 00 00 00       	mov    $0x1,%eax
     b58:	d3 e0                	shl    %cl,%eax
     b5a:	21 d0                	and    %edx,%eax
     b5c:	84 c0                	test   %al,%al
     b5e:	74 32                	je     b92 <create_file+0x277>
     b60:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
     b63:	89 44 24 0c          	mov    %eax,0xc(%esp)
     b67:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
     b6a:	89 44 24 08          	mov    %eax,0x8(%esp)
     b6e:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
     b71:	89 44 24 04          	mov    %eax,0x4(%esp)
     b75:	c7 04 24 29 01 00 00 	movl   $0x129,(%esp)
     b7c:	e8 fc ff ff ff       	call   b7d <create_file+0x262>
     b81:	c7 04 24 39 01 00 00 	movl   $0x139,(%esp)
     b88:	e8 fc ff ff ff       	call   b89 <create_file+0x26e>
     b8d:	e9 93 01 00 00       	jmp    d25 <create_file+0x40a>
     b92:	8b 5d d4             	mov    0xffffffd4(%ebp),%ebx
     b95:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
     b98:	0f b6 90 00 00 00 00 	movzbl 0x0(%eax),%edx
     b9f:	8b 4d d8             	mov    0xffffffd8(%ebp),%ecx
     ba2:	b8 01 00 00 00       	mov    $0x1,%eax
     ba7:	d3 e0                	shl    %cl,%eax
     ba9:	09 d0                	or     %edx,%eax
     bab:	88 83 00 00 00 00    	mov    %al,0x0(%ebx)
     bb1:	83 45 d8 01          	addl   $0x1,0xffffffd8(%ebp)
     bb5:	83 7d f0 00          	cmpl   $0x0,0xfffffff0(%ebp)
     bb9:	0f 9f c0             	setg   %al
     bbc:	83 6d f0 01          	subl   $0x1,0xfffffff0(%ebp)
     bc0:	84 c0                	test   %al,%al
     bc2:	75 82                	jne    b46 <create_file+0x22b>
     bc4:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
     bc7:	c1 e0 09             	shl    $0x9,%eax
     bca:	05 00 06 00 00       	add    $0x600,%eax
     bcf:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
     bd6:	00 
     bd7:	89 44 24 08          	mov    %eax,0x8(%esp)
     bdb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     be2:	00 
     be3:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
     bea:	e8 fc ff ff ff       	call   beb <create_file+0x2d0>
     bef:	e9 5e 01 00 00       	jmp    d52 <create_file+0x437>
     bf4:	83 7d d8 00          	cmpl   $0x0,0xffffffd8(%ebp)
     bf8:	0f 85 c3 00 00 00    	jne    cc1 <create_file+0x3a6>
     bfe:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
     c01:	0f b6 80 00 00 00 00 	movzbl 0x0(%eax),%eax
     c08:	84 c0                	test   %al,%al
     c0a:	74 32                	je     c3e <create_file+0x323>
     c0c:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
     c0f:	89 44 24 0c          	mov    %eax,0xc(%esp)
     c13:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
     c16:	89 44 24 08          	mov    %eax,0x8(%esp)
     c1a:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
     c1d:	89 44 24 04          	mov    %eax,0x4(%esp)
     c21:	c7 04 24 29 01 00 00 	movl   $0x129,(%esp)
     c28:	e8 fc ff ff ff       	call   c29 <create_file+0x30e>
     c2d:	c7 04 24 46 01 00 00 	movl   $0x146,(%esp)
     c34:	e8 fc ff ff ff       	call   c35 <create_file+0x31a>
     c39:	e9 e7 00 00 00       	jmp    d25 <create_file+0x40a>
     c3e:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
     c41:	c6 80 00 00 00 00 ff 	movb   $0xff,0x0(%eax)
     c48:	83 6d f0 08          	subl   $0x8,0xfffffff0(%ebp)
     c4c:	eb 79                	jmp    cc7 <create_file+0x3ac>
     c4e:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
     c51:	0f b6 90 00 00 00 00 	movzbl 0x0(%eax),%edx
     c58:	8b 4d d8             	mov    0xffffffd8(%ebp),%ecx
     c5b:	b8 01 00 00 00       	mov    $0x1,%eax
     c60:	d3 e0                	shl    %cl,%eax
     c62:	21 d0                	and    %edx,%eax
     c64:	84 c0                	test   %al,%al
     c66:	74 32                	je     c9a <create_file+0x37f>
     c68:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
     c6b:	89 44 24 0c          	mov    %eax,0xc(%esp)
     c6f:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
     c72:	89 44 24 08          	mov    %eax,0x8(%esp)
     c76:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
     c79:	89 44 24 04          	mov    %eax,0x4(%esp)
     c7d:	c7 04 24 29 01 00 00 	movl   $0x129,(%esp)
     c84:	e8 fc ff ff ff       	call   c85 <create_file+0x36a>
     c89:	c7 04 24 53 01 00 00 	movl   $0x153,(%esp)
     c90:	e8 fc ff ff ff       	call   c91 <create_file+0x376>
     c95:	e9 8b 00 00 00       	jmp    d25 <create_file+0x40a>
     c9a:	8b 5d d4             	mov    0xffffffd4(%ebp),%ebx
     c9d:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
     ca0:	0f b6 90 00 00 00 00 	movzbl 0x0(%eax),%edx
     ca7:	8b 4d d8             	mov    0xffffffd8(%ebp),%ecx
     caa:	b8 01 00 00 00       	mov    $0x1,%eax
     caf:	d3 e0                	shl    %cl,%eax
     cb1:	09 d0                	or     %edx,%eax
     cb3:	88 83 00 00 00 00    	mov    %al,0x0(%ebx)
     cb9:	83 45 d8 01          	addl   $0x1,0xffffffd8(%ebp)
     cbd:	83 6d f0 01          	subl   $0x1,0xfffffff0(%ebp)
     cc1:	83 7d d8 07          	cmpl   $0x7,0xffffffd8(%ebp)
     cc5:	7e 87                	jle    c4e <create_file+0x333>
     cc7:	83 45 d4 01          	addl   $0x1,0xffffffd4(%ebp)
     ccb:	c7 45 d8 00 00 00 00 	movl   $0x0,0xffffffd8(%ebp)
     cd2:	81 7d d4 ff 01 00 00 	cmpl   $0x1ff,0xffffffd4(%ebp)
     cd9:	7f 0a                	jg     ce5 <create_file+0x3ca>
     cdb:	83 7d f0 00          	cmpl   $0x0,0xfffffff0(%ebp)
     cdf:	0f 8f 4e fe ff ff    	jg     b33 <create_file+0x218>
     ce5:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
     ce8:	c1 e0 09             	shl    $0x9,%eax
     ceb:	05 00 06 00 00       	add    $0x600,%eax
     cf0:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
     cf7:	00 
     cf8:	89 44 24 08          	mov    %eax,0x8(%esp)
     cfc:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     d03:	00 
     d04:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
     d0b:	e8 fc ff ff ff       	call   d0c <create_file+0x3f1>
     d10:	83 45 d0 01          	addl   $0x1,0xffffffd0(%ebp)
     d14:	c7 45 d4 00 00 00 00 	movl   $0x0,0xffffffd4(%ebp)
     d1b:	83 7d f0 00          	cmpl   $0x0,0xfffffff0(%ebp)
     d1f:	0f 8f de fd ff ff    	jg     b03 <create_file+0x1e8>
     d25:	83 45 d8 01          	addl   $0x1,0xffffffd8(%ebp)
     d29:	83 7d d8 07          	cmpl   $0x7,0xffffffd8(%ebp)
     d2d:	0f 8e 95 fd ff ff    	jle    ac8 <create_file+0x1ad>
     d33:	83 45 d4 01          	addl   $0x1,0xffffffd4(%ebp)
     d37:	81 7d d4 ff 01 00 00 	cmpl   $0x1ff,0xffffffd4(%ebp)
     d3e:	0f 8e 66 fd ff ff    	jle    aaa <create_file+0x18f>
     d44:	83 45 d0 01          	addl   $0x1,0xffffffd0(%ebp)
     d48:	83 7d d0 00          	cmpl   $0x0,0xffffffd0(%ebp)
     d4c:	0f 8e 21 fd ff ff    	jle    a73 <create_file+0x158>
     d52:	83 7d cc 00          	cmpl   $0x0,0xffffffcc(%ebp)
     d56:	75 18                	jne    d70 <create_file+0x455>
     d58:	c7 04 24 60 01 00 00 	movl   $0x160,(%esp)
     d5f:	e8 fc ff ff ff       	call   d60 <create_file+0x445>
     d64:	c7 45 b0 00 00 00 00 	movl   $0x0,0xffffffb0(%ebp)
     d6b:	e9 d3 01 00 00       	jmp    f43 <create_file+0x628>
     d70:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
     d73:	c1 e0 05             	shl    $0x5,%eax
     d76:	05 00 08 00 00       	add    $0x800,%eax
     d7b:	25 00 fe ff ff       	and    $0xfffffe00,%eax
     d80:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
     d83:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
     d86:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
     d8d:	00 
     d8e:	89 44 24 08          	mov    %eax,0x8(%esp)
     d92:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     d99:	00 
     d9a:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
     da1:	e8 fc ff ff ff       	call   da2 <create_file+0x487>
     da6:	c7 45 e0 00 00 00 00 	movl   $0x0,0xffffffe0(%ebp)
     dad:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
     db0:	83 e0 0f             	and    $0xf,%eax
     db3:	c1 e0 05             	shl    $0x5,%eax
     db6:	01 45 e0             	add    %eax,0xffffffe0(%ebp)
     db9:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
     dbc:	c7 00 04 00 00 00    	movl   $0x4,(%eax)
     dc2:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
     dc5:	c7 40 04 00 90 01 00 	movl   $0x19000,0x4(%eax)
     dcc:	8b 55 cc             	mov    0xffffffcc(%ebp),%edx
     dcf:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
     dd2:	89 50 08             	mov    %edx,0x8(%eax)
     dd5:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
     dd8:	c7 40 0c c8 00 00 00 	movl   $0xc8,0xc(%eax)
     ddf:	c7 44 24 0c c8 00 00 	movl   $0xc8,0xc(%esp)
     de6:	00 
     de7:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
     dea:	89 44 24 08          	mov    %eax,0x8(%esp)
     dee:	8b 45 08             	mov    0x8(%ebp),%eax
     df1:	89 44 24 04          	mov    %eax,0x4(%esp)
     df5:	c7 04 24 70 01 00 00 	movl   $0x170,(%esp)
     dfc:	e8 fc ff ff ff       	call   dfd <create_file+0x4e2>
     e01:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
     e04:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
     e0b:	00 
     e0c:	89 44 24 08          	mov    %eax,0x8(%esp)
     e10:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     e17:	00 
     e18:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
     e1f:	e8 fc ff ff ff       	call   e20 <create_file+0x505>
     e24:	c7 45 e8 00 00 00 00 	movl   $0x0,0xffffffe8(%ebp)
     e2b:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
     e32:	c7 45 d0 00 00 00 00 	movl   $0x0,0xffffffd0(%ebp)
     e39:	e9 e8 00 00 00       	jmp    f26 <create_file+0x60b>
     e3e:	8b 15 00 00 00 00    	mov    0x0,%edx
     e44:	c7 44 24 0c 00 02 00 	movl   $0x200,0xc(%esp)
     e4b:	00 
     e4c:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
     e4f:	89 44 24 08          	mov    %eax,0x8(%esp)
     e53:	89 54 24 04          	mov    %edx,0x4(%esp)
     e57:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     e5e:	e8 fc ff ff ff       	call   e5f <create_file+0x544>
     e63:	c7 45 d4 00 00 00 00 	movl   $0x0,0xffffffd4(%ebp)
     e6a:	c7 45 e4 00 00 00 00 	movl   $0x0,0xffffffe4(%ebp)
     e71:	e9 90 00 00 00       	jmp    f06 <create_file+0x5eb>
     e76:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
     e79:	8b 00                	mov    (%eax),%eax
     e7b:	85 c0                	test   %eax,%eax
     e7d:	75 7f                	jne    efe <create_file+0x5e3>
     e7f:	83 7d d0 00          	cmpl   $0x0,0xffffffd0(%ebp)
     e83:	75 06                	jne    e8b <create_file+0x570>
     e85:	83 7d d4 00          	cmpl   $0x0,0xffffffd4(%ebp)
     e89:	74 73                	je     efe <create_file+0x5e3>
     e8b:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
     e8e:	01 45 ec             	add    %eax,0xffffffec(%ebp)
     e91:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
     e94:	89 45 b8             	mov    %eax,0xffffffb8(%ebp)
     e97:	8d 45 b8             	lea    0xffffffb8(%ebp),%eax
     e9a:	8d 78 04             	lea    0x4(%eax),%edi
     e9d:	8b 75 08             	mov    0x8(%ebp),%esi
     ea0:	b9 0c 00 00 00       	mov    $0xc,%ecx
     ea5:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
     ea7:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
     eaa:	c1 e0 04             	shl    $0x4,%eax
     ead:	8b 15 00 00 00 00    	mov    0x0,%edx
     eb3:	c7 44 24 0c 10 00 00 	movl   $0x10,0xc(%esp)
     eba:	00 
     ebb:	89 44 24 08          	mov    %eax,0x8(%esp)
     ebf:	89 54 24 04          	mov    %edx,0x4(%esp)
     ec3:	8d 45 b8             	lea    0xffffffb8(%ebp),%eax
     ec6:	89 04 24             	mov    %eax,(%esp)
     ec9:	e8 fc ff ff ff       	call   eca <create_file+0x5af>
     ece:	a1 00 00 00 00       	mov    0x0,%eax
     ed3:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     eda:	00 
     edb:	89 04 24             	mov    %eax,(%esp)
     ede:	e8 fc ff ff ff       	call   edf <create_file+0x5c4>
     ee3:	8b 45 08             	mov    0x8(%ebp),%eax
     ee6:	89 44 24 04          	mov    %eax,0x4(%esp)
     eea:	c7 04 24 98 01 00 00 	movl   $0x198,(%esp)
     ef1:	e8 fc ff ff ff       	call   ef2 <create_file+0x5d7>
     ef6:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
     ef9:	89 45 b0             	mov    %eax,0xffffffb0(%ebp)
     efc:	eb 45                	jmp    f43 <create_file+0x628>
     efe:	83 45 d4 01          	addl   $0x1,0xffffffd4(%ebp)
     f02:	83 45 e4 10          	addl   $0x10,0xffffffe4(%ebp)
     f06:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
     f09:	83 f8 1f             	cmp    $0x1f,%eax
     f0c:	0f 86 64 ff ff ff    	jbe    e76 <create_file+0x55b>
     f12:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
     f15:	83 c0 20             	add    $0x20,%eax
     f18:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
     f1b:	83 45 d0 01          	addl   $0x1,0xffffffd0(%ebp)
     f1f:	81 45 e8 00 02 00 00 	addl   $0x200,0xffffffe8(%ebp)
     f26:	83 7d d0 00          	cmpl   $0x0,0xffffffd0(%ebp)
     f2a:	0f 84 0e ff ff ff    	je     e3e <create_file+0x523>
     f30:	c7 04 24 b1 01 00 00 	movl   $0x1b1,(%esp)
     f37:	e8 fc ff ff ff       	call   f38 <create_file+0x61d>
     f3c:	c7 45 b0 00 00 00 00 	movl   $0x0,0xffffffb0(%ebp)
     f43:	8b 45 b0             	mov    0xffffffb0(%ebp),%eax
     f46:	83 c4 5c             	add    $0x5c,%esp
     f49:	5b                   	pop    %ebx
     f4a:	5e                   	pop    %esi
     f4b:	5f                   	pop    %edi
     f4c:	5d                   	pop    %ebp
     f4d:	c3                   	ret    

00000f4e <fs_open>:
     f4e:	55                   	push   %ebp
     f4f:	89 e5                	mov    %esp,%ebp
     f51:	83 ec 78             	sub    $0x78,%esp
     f54:	8b 45 10             	mov    0x10(%ebp),%eax
     f57:	8b 50 48             	mov    0x48(%eax),%edx
     f5a:	8b 45 08             	mov    0x8(%ebp),%eax
     f5d:	89 44 24 04          	mov    %eax,0x4(%esp)
     f61:	89 14 24             	mov    %edx,(%esp)
     f64:	e8 fc ff ff ff       	call   f65 <fs_open+0x17>
     f69:	89 45 08             	mov    %eax,0x8(%ebp)
     f6c:	c7 45 ec 00 00 00 00 	movl   $0x0,0xffffffec(%ebp)
     f73:	c7 45 e4 00 00 00 00 	movl   $0x0,0xffffffe4(%ebp)
     f7a:	c7 45 d4 00 00 00 00 	movl   $0x0,0xffffffd4(%ebp)
     f81:	eb 79                	jmp    ffc <fs_open+0xae>
     f83:	8b 15 00 00 00 00    	mov    0x0,%edx
     f89:	c7 44 24 0c 00 02 00 	movl   $0x200,0xc(%esp)
     f90:	00 
     f91:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
     f94:	89 44 24 08          	mov    %eax,0x8(%esp)
     f98:	89 54 24 04          	mov    %edx,0x4(%esp)
     f9c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     fa3:	e8 fc ff ff ff       	call   fa4 <fs_open+0x56>
     fa8:	c7 45 e8 00 00 00 00 	movl   $0x0,0xffffffe8(%ebp)
     faf:	c7 45 e0 00 00 00 00 	movl   $0x0,0xffffffe0(%ebp)
     fb6:	eb 2b                	jmp    fe3 <fs_open+0x95>
     fb8:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
     fbb:	83 c0 04             	add    $0x4,%eax
     fbe:	8b 55 08             	mov    0x8(%ebp),%edx
     fc1:	89 54 24 04          	mov    %edx,0x4(%esp)
     fc5:	89 04 24             	mov    %eax,(%esp)
     fc8:	e8 fc ff ff ff       	call   fc9 <fs_open+0x7b>
     fcd:	85 c0                	test   %eax,%eax
     fcf:	75 0a                	jne    fdb <fs_open+0x8d>
     fd1:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
     fd4:	8b 00                	mov    (%eax),%eax
     fd6:	89 45 d4             	mov    %eax,0xffffffd4(%ebp)
     fd9:	eb 10                	jmp    feb <fs_open+0x9d>
     fdb:	83 45 e8 01          	addl   $0x1,0xffffffe8(%ebp)
     fdf:	83 45 e0 10          	addl   $0x10,0xffffffe0(%ebp)
     fe3:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
     fe6:	83 f8 1f             	cmp    $0x1f,%eax
     fe9:	76 cd                	jbe    fb8 <fs_open+0x6a>
     feb:	83 7d d4 00          	cmpl   $0x0,0xffffffd4(%ebp)
     fef:	75 11                	jne    1002 <fs_open+0xb4>
     ff1:	83 45 e4 01          	addl   $0x1,0xffffffe4(%ebp)
     ff5:	81 45 ec 00 02 00 00 	addl   $0x200,0xffffffec(%ebp)
     ffc:	83 7d e4 00          	cmpl   $0x0,0xffffffe4(%ebp)
    1000:	74 81                	je     f83 <fs_open+0x35>
    1002:	83 7d d4 00          	cmpl   $0x0,0xffffffd4(%ebp)
    1006:	75 58                	jne    1060 <fs_open+0x112>
    1008:	83 7d 0c 01          	cmpl   $0x1,0xc(%ebp)
    100c:	75 33                	jne    1041 <fs_open+0xf3>
    100e:	8b 45 08             	mov    0x8(%ebp),%eax
    1011:	89 04 24             	mov    %eax,(%esp)
    1014:	e8 fc ff ff ff       	call   1015 <fs_open+0xc7>
    1019:	89 45 d4             	mov    %eax,0xffffffd4(%ebp)
    101c:	83 7d d4 00          	cmpl   $0x0,0xffffffd4(%ebp)
    1020:	75 3e                	jne    1060 <fs_open+0x112>
    1022:	8b 45 08             	mov    0x8(%ebp),%eax
    1025:	89 44 24 04          	mov    %eax,0x4(%esp)
    1029:	c7 04 24 c2 01 00 00 	movl   $0x1c2,(%esp)
    1030:	e8 fc ff ff ff       	call   1031 <fs_open+0xe3>
    1035:	c7 45 9c ff ff ff ff 	movl   $0xffffffff,0xffffff9c(%ebp)
    103c:	e9 d5 02 00 00       	jmp    1316 <fs_open+0x3c8>
    1041:	8b 45 08             	mov    0x8(%ebp),%eax
    1044:	89 44 24 04          	mov    %eax,0x4(%esp)
    1048:	c7 04 24 d9 01 00 00 	movl   $0x1d9,(%esp)
    104f:	e8 fc ff ff ff       	call   1050 <fs_open+0x102>
    1054:	c7 45 9c ff ff ff ff 	movl   $0xffffffff,0xffffff9c(%ebp)
    105b:	e9 b6 02 00 00       	jmp    1316 <fs_open+0x3c8>
    1060:	c7 45 f0 1a 03 00 00 	movl   $0x31a,0xfffffff0(%ebp)
    1067:	c7 45 f4 00 00 00 00 	movl   $0x0,0xfffffff4(%ebp)
    106e:	c7 45 f8 00 00 00 00 	movl   $0x0,0xfffffff8(%ebp)
    1075:	c7 45 dc 00 00 00 00 	movl   $0x0,0xffffffdc(%ebp)
    107c:	eb 52                	jmp    10d0 <fs_open+0x182>
    107e:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
    1081:	8b 40 24             	mov    0x24(%eax),%eax
    1084:	85 c0                	test   %eax,%eax
    1086:	75 2c                	jne    10b4 <fs_open+0x166>
    1088:	83 7d f4 00          	cmpl   $0x0,0xfffffff4(%ebp)
    108c:	75 06                	jne    1094 <fs_open+0x146>
    108e:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
    1091:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
    1094:	83 7d f8 00          	cmpl   $0x0,0xfffffff8(%ebp)
    1098:	75 1a                	jne    10b4 <fs_open+0x166>
    109a:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
    109d:	8b 40 20             	mov    0x20(%eax),%eax
    10a0:	85 c0                	test   %eax,%eax
    10a2:	75 10                	jne    10b4 <fs_open+0x166>
    10a4:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
    10a7:	8b 40 28             	mov    0x28(%eax),%eax
    10aa:	85 c0                	test   %eax,%eax
    10ac:	75 06                	jne    10b4 <fs_open+0x166>
    10ae:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
    10b1:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
    10b4:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
    10b7:	8b 40 20             	mov    0x20(%eax),%eax
    10ba:	3b 45 f0             	cmp    0xfffffff0(%ebp),%eax
    10bd:	75 0d                	jne    10cc <fs_open+0x17e>
    10bf:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
    10c2:	8b 40 28             	mov    0x28(%eax),%eax
    10c5:	3b 45 d4             	cmp    0xffffffd4(%ebp),%eax
    10c8:	75 02                	jne    10cc <fs_open+0x17e>
    10ca:	eb 0e                	jmp    10da <fs_open+0x18c>
    10cc:	83 45 dc 2c          	addl   $0x2c,0xffffffdc(%ebp)
    10d0:	b8 00 0b 00 00       	mov    $0xb00,%eax
    10d5:	39 45 dc             	cmp    %eax,0xffffffdc(%ebp)
    10d8:	72 a4                	jb     107e <fs_open+0x130>
    10da:	c7 45 fc 00 00 00 00 	movl   $0x0,0xfffffffc(%ebp)
    10e1:	b8 00 0b 00 00       	mov    $0xb00,%eax
    10e6:	39 45 dc             	cmp    %eax,0xffffffdc(%ebp)
    10e9:	72 40                	jb     112b <fs_open+0x1dd>
    10eb:	83 7d f8 00          	cmpl   $0x0,0xfffffff8(%ebp)
    10ef:	74 08                	je     10f9 <fs_open+0x1ab>
    10f1:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
    10f4:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
    10f7:	eb 2b                	jmp    1124 <fs_open+0x1d6>
    10f9:	83 7d f4 00          	cmpl   $0x0,0xfffffff4(%ebp)
    10fd:	75 1f                	jne    111e <fs_open+0x1d0>
    10ff:	8b 45 08             	mov    0x8(%ebp),%eax
    1102:	89 44 24 04          	mov    %eax,0x4(%esp)
    1106:	c7 04 24 e7 01 00 00 	movl   $0x1e7,(%esp)
    110d:	e8 fc ff ff ff       	call   110e <fs_open+0x1c0>
    1112:	c7 45 9c ff ff ff ff 	movl   $0xffffffff,0xffffff9c(%ebp)
    1119:	e9 f8 01 00 00       	jmp    1316 <fs_open+0x3c8>
    111e:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
    1121:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
    1124:	c7 45 fc 01 00 00 00 	movl   $0x1,0xfffffffc(%ebp)
    112b:	c7 45 d8 00 00 00 00 	movl   $0x0,0xffffffd8(%ebp)
    1132:	eb 0e                	jmp    1142 <fs_open+0x1f4>
    1134:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
    1137:	8b 40 08             	mov    0x8(%eax),%eax
    113a:	85 c0                	test   %eax,%eax
    113c:	74 0e                	je     114c <fs_open+0x1fe>
    113e:	83 45 d8 0c          	addl   $0xc,0xffffffd8(%ebp)
    1142:	b8 00 30 00 00       	mov    $0x3000,%eax
    1147:	39 45 d8             	cmp    %eax,0xffffffd8(%ebp)
    114a:	72 e8                	jb     1134 <fs_open+0x1e6>
    114c:	b8 00 30 00 00       	mov    $0x3000,%eax
    1151:	39 45 d8             	cmp    %eax,0xffffffd8(%ebp)
    1154:	72 1f                	jb     1175 <fs_open+0x227>
    1156:	8b 45 08             	mov    0x8(%ebp),%eax
    1159:	89 44 24 04          	mov    %eax,0x4(%esp)
    115d:	c7 04 24 01 02 00 00 	movl   $0x201,(%esp)
    1164:	e8 fc ff ff ff       	call   1165 <fs_open+0x217>
    1169:	c7 45 9c ff ff ff ff 	movl   $0xffffffff,0xffffff9c(%ebp)
    1170:	e9 a1 01 00 00       	jmp    1316 <fs_open+0x3c8>
    1175:	c7 45 e4 00 00 00 00 	movl   $0x0,0xffffffe4(%ebp)
    117c:	eb 12                	jmp    1190 <fs_open+0x242>
    117e:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
    1181:	8b 55 10             	mov    0x10(%ebp),%edx
    1184:	8b 44 82 70          	mov    0x70(%edx,%eax,4),%eax
    1188:	85 c0                	test   %eax,%eax
    118a:	74 0a                	je     1196 <fs_open+0x248>
    118c:	83 45 e4 01          	addl   $0x1,0xffffffe4(%ebp)
    1190:	83 7d e4 1f          	cmpl   $0x1f,0xffffffe4(%ebp)
    1194:	7e e8                	jle    117e <fs_open+0x230>
    1196:	83 7d e4 1f          	cmpl   $0x1f,0xffffffe4(%ebp)
    119a:	7e 1f                	jle    11bb <fs_open+0x26d>
    119c:	8b 45 08             	mov    0x8(%ebp),%eax
    119f:	89 44 24 04          	mov    %eax,0x4(%esp)
    11a3:	c7 04 24 1a 02 00 00 	movl   $0x21a,(%esp)
    11aa:	e8 fc ff ff ff       	call   11ab <fs_open+0x25d>
    11af:	c7 45 9c ff ff ff ff 	movl   $0xffffffff,0xffffff9c(%ebp)
    11b6:	e9 5b 01 00 00       	jmp    1316 <fs_open+0x3c8>
    11bb:	8b 4d e4             	mov    0xffffffe4(%ebp),%ecx
    11be:	8b 55 10             	mov    0x10(%ebp),%edx
    11c1:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
    11c4:	89 44 8a 70          	mov    %eax,0x70(%edx,%ecx,4)
    11c8:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
    11cb:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
    11d1:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
    11d4:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
    11db:	8b 55 d8             	mov    0xffffffd8(%ebp),%edx
    11de:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
    11e1:	89 42 08             	mov    %eax,0x8(%edx)
    11e4:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
    11e7:	8b 40 24             	mov    0x24(%eax),%eax
    11ea:	8d 50 01             	lea    0x1(%eax),%edx
    11ed:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
    11f0:	89 50 24             	mov    %edx,0x24(%eax)
    11f3:	83 7d fc 01          	cmpl   $0x1,0xfffffffc(%ebp)
    11f7:	0f 85 82 00 00 00    	jne    127f <fs_open+0x331>
    11fd:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
    1200:	c1 e8 04             	shr    $0x4,%eax
    1203:	c1 e0 09             	shl    $0x9,%eax
    1206:	05 00 08 00 00       	add    $0x800,%eax
    120b:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
    1212:	00 
    1213:	89 44 24 08          	mov    %eax,0x8(%esp)
    1217:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    121e:	00 
    121f:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
    1226:	e8 fc ff ff ff       	call   1227 <fs_open+0x2d9>
    122b:	c7 45 d0 00 00 00 00 	movl   $0x0,0xffffffd0(%ebp)
    1232:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
    1235:	83 e0 0f             	and    $0xf,%eax
    1238:	c1 e0 05             	shl    $0x5,%eax
    123b:	01 45 d0             	add    %eax,0xffffffd0(%ebp)
    123e:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
    1241:	8b 10                	mov    (%eax),%edx
    1243:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
    1246:	89 10                	mov    %edx,(%eax)
    1248:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
    124b:	8b 50 04             	mov    0x4(%eax),%edx
    124e:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
    1251:	89 50 04             	mov    %edx,0x4(%eax)
    1254:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
    1257:	8b 50 08             	mov    0x8(%eax),%edx
    125a:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
    125d:	89 50 08             	mov    %edx,0x8(%eax)
    1260:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
    1263:	8b 50 0c             	mov    0xc(%eax),%edx
    1266:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
    1269:	89 50 0c             	mov    %edx,0xc(%eax)
    126c:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
    126f:	c7 40 20 1a 03 00 00 	movl   $0x31a,0x20(%eax)
    1276:	8b 55 dc             	mov    0xffffffdc(%ebp),%edx
    1279:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
    127c:	89 42 28             	mov    %eax,0x28(%edx)
    127f:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
    1282:	8b 00                	mov    (%eax),%eax
    1284:	83 f8 02             	cmp    $0x2,%eax
    1287:	0f 85 83 00 00 00    	jne    1310 <fs_open+0x3c2>
    128d:	c7 45 b0 fe ff ff ff 	movl   $0xfffffffe,0xffffffb0(%ebp)
    1294:	c7 45 b4 00 00 00 00 	movl   $0x0,0xffffffb4(%ebp)
    129b:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
    129e:	8b 40 08             	mov    0x8(%eax),%eax
    12a1:	25 ff 00 00 00       	and    $0xff,%eax
    12a6:	89 45 b8             	mov    %eax,0xffffffb8(%ebp)
    12a9:	e8 fc ff ff ff       	call   12aa <fs_open+0x35c>
    12ae:	a1 00 00 00 00       	mov    0x0,%eax
    12b3:	85 c0                	test   %eax,%eax
    12b5:	75 54                	jne    130b <fs_open+0x3bd>
    12b7:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
    12ba:	8b 40 08             	mov    0x8(%eax),%eax
    12bd:	c1 e8 08             	shr    $0x8,%eax
    12c0:	25 ff 00 00 00       	and    $0xff,%eax
    12c5:	8b 14 85 00 00 00 00 	mov    0x0(,%eax,4),%edx
    12cc:	8d 45 a8             	lea    0xffffffa8(%ebp),%eax
    12cf:	89 44 24 08          	mov    %eax,0x8(%esp)
    12d3:	89 54 24 04          	mov    %edx,0x4(%esp)
    12d7:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
    12de:	e8 fc ff ff ff       	call   12df <fs_open+0x391>
    12e3:	85 c0                	test   %eax,%eax
    12e5:	74 24                	je     130b <fs_open+0x3bd>
    12e7:	c7 44 24 0c 17 02 00 	movl   $0x217,0xc(%esp)
    12ee:	00 
    12ef:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
    12f6:	00 
    12f7:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    12fe:	00 
    12ff:	c7 04 24 30 02 00 00 	movl   $0x230,(%esp)
    1306:	e8 fc ff ff ff       	call   1307 <fs_open+0x3b9>
    130b:	e8 fc ff ff ff       	call   130c <fs_open+0x3be>
    1310:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
    1313:	89 45 9c             	mov    %eax,0xffffff9c(%ebp)
    1316:	8b 45 9c             	mov    0xffffff9c(%ebp),%eax
    1319:	c9                   	leave  
    131a:	c3                   	ret    

0000131b <fs_write>:
    131b:	55                   	push   %ebp
    131c:	89 e5                	mov    %esp,%ebp
    131e:	83 ec 58             	sub    $0x58,%esp
    1321:	8b 45 18             	mov    0x18(%ebp),%eax
    1324:	8b 50 48             	mov    0x48(%eax),%edx
    1327:	8b 45 0c             	mov    0xc(%ebp),%eax
    132a:	89 44 24 04          	mov    %eax,0x4(%esp)
    132e:	89 14 24             	mov    %edx,(%esp)
    1331:	e8 fc ff ff ff       	call   1332 <fs_write+0x17>
    1336:	89 45 0c             	mov    %eax,0xc(%ebp)
    1339:	8b 55 08             	mov    0x8(%ebp),%edx
    133c:	8b 45 18             	mov    0x18(%ebp),%eax
    133f:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
    1343:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
    1346:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
    1349:	8b 40 08             	mov    0x8(%eax),%eax
    134c:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
    134f:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
    1352:	8b 00                	mov    (%eax),%eax
    1354:	83 f8 02             	cmp    $0x2,%eax
    1357:	0f 85 8c 00 00 00    	jne    13e9 <fs_write+0xce>
    135d:	c7 45 d4 fe ff ff ff 	movl   $0xfffffffe,0xffffffd4(%ebp)
    1364:	c7 45 d8 03 00 00 00 	movl   $0x3,0xffffffd8(%ebp)
    136b:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
    136e:	8b 40 08             	mov    0x8(%eax),%eax
    1371:	25 ff 00 00 00       	and    $0xff,%eax
    1376:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
    1379:	8b 45 0c             	mov    0xc(%ebp),%eax
    137c:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
    137f:	8b 45 14             	mov    0x14(%ebp),%eax
    1382:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
    1385:	e8 fc ff ff ff       	call   1386 <fs_write+0x6b>
    138a:	a1 00 00 00 00       	mov    0x0,%eax
    138f:	85 c0                	test   %eax,%eax
    1391:	75 48                	jne    13db <fs_write+0xc0>
    1393:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
    1396:	8b 40 08             	mov    0x8(%eax),%eax
    1399:	c1 e8 08             	shr    $0x8,%eax
    139c:	25 ff 00 00 00       	and    $0xff,%eax
    13a1:	8b 14 85 00 00 00 00 	mov    0x0(,%eax,4),%edx
    13a8:	8d 45 cc             	lea    0xffffffcc(%ebp),%eax
    13ab:	89 44 24 08          	mov    %eax,0x8(%esp)
    13af:	89 54 24 04          	mov    %edx,0x4(%esp)
    13b3:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
    13ba:	e8 fc ff ff ff       	call   13bb <fs_write+0xa0>
    13bf:	83 f8 ff             	cmp    $0xffffffff,%eax
    13c2:	75 07                	jne    13cb <fs_write+0xb0>
    13c4:	c7 45 ec ff ff ff ff 	movl   $0xffffffff,0xffffffec(%ebp)
    13cb:	e8 fc ff ff ff       	call   13cc <fs_write+0xb1>
    13d0:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
    13d3:	89 45 bc             	mov    %eax,0xffffffbc(%ebp)
    13d6:	e9 80 00 00 00       	jmp    145b <fs_write+0x140>
    13db:	e8 fc ff ff ff       	call   13dc <fs_write+0xc1>
    13e0:	c7 45 bc ff ff ff ff 	movl   $0xffffffff,0xffffffbc(%ebp)
    13e7:	eb 72                	jmp    145b <fs_write+0x140>
    13e9:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
    13ec:	8b 40 04             	mov    0x4(%eax),%eax
    13ef:	89 c2                	mov    %eax,%edx
    13f1:	03 55 10             	add    0x10(%ebp),%edx
    13f4:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
    13f7:	8b 48 08             	mov    0x8(%eax),%ecx
    13fa:	8b 45 14             	mov    0x14(%ebp),%eax
    13fd:	89 44 24 0c          	mov    %eax,0xc(%esp)
    1401:	89 54 24 08          	mov    %edx,0x8(%esp)
    1405:	89 4c 24 04          	mov    %ecx,0x4(%esp)
    1409:	8b 45 0c             	mov    0xc(%ebp),%eax
    140c:	89 04 24             	mov    %eax,(%esp)
    140f:	e8 fc ff ff ff       	call   1410 <fs_write+0xf5>
    1414:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
    1417:	83 7d fc ff          	cmpl   $0xffffffff,0xfffffffc(%ebp)
    141b:	75 24                	jne    1441 <fs_write+0x126>
    141d:	c7 44 24 0c 4a 02 00 	movl   $0x24a,0xc(%esp)
    1424:	00 
    1425:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
    142c:	00 
    142d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1434:	00 
    1435:	c7 04 24 6e 02 00 00 	movl   $0x26e,(%esp)
    143c:	e8 fc ff ff ff       	call   143d <fs_write+0x122>
    1441:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
    1444:	8b 50 04             	mov    0x4(%eax),%edx
    1447:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
    144a:	03 45 10             	add    0x10(%ebp),%eax
    144d:	01 c2                	add    %eax,%edx
    144f:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
    1452:	89 50 04             	mov    %edx,0x4(%eax)
    1455:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
    1458:	89 45 bc             	mov    %eax,0xffffffbc(%ebp)
    145b:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
    145e:	c9                   	leave  
    145f:	c3                   	ret    

00001460 <file_buff_write>:
    1460:	55                   	push   %ebp
    1461:	89 e5                	mov    %esp,%ebp
    1463:	57                   	push   %edi
    1464:	56                   	push   %esi
    1465:	83 ec 30             	sub    $0x30,%esp
    1468:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
    146c:	78 09                	js     1477 <file_buff_write+0x17>
    146e:	81 7d 10 ff 8f 01 00 	cmpl   $0x18fff,0x10(%ebp)
    1475:	7e 1f                	jle    1496 <file_buff_write+0x36>
    1477:	8b 45 10             	mov    0x10(%ebp),%eax
    147a:	89 44 24 04          	mov    %eax,0x4(%esp)
    147e:	c7 04 24 78 02 00 00 	movl   $0x278,(%esp)
    1485:	e8 fc ff ff ff       	call   1486 <file_buff_write+0x26>
    148a:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,0xffffffd4(%ebp)
    1491:	e9 11 01 00 00       	jmp    15a7 <file_buff_write+0x147>
    1496:	8b 55 10             	mov    0x10(%ebp),%edx
    1499:	89 d0                	mov    %edx,%eax
    149b:	c1 f8 1f             	sar    $0x1f,%eax
    149e:	89 c1                	mov    %eax,%ecx
    14a0:	c1 e9 14             	shr    $0x14,%ecx
    14a3:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
    14a6:	25 ff 0f 00 00       	and    $0xfff,%eax
    14ab:	29 c8                	sub    %ecx,%eax
    14ad:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
    14b0:	c7 45 e4 00 00 00 00 	movl   $0x0,0xffffffe4(%ebp)
    14b7:	c7 45 e8 00 00 00 00 	movl   $0x0,0xffffffe8(%ebp)
    14be:	e9 d3 00 00 00       	jmp    1596 <file_buff_write+0x136>
    14c3:	8b 45 10             	mov    0x10(%ebp),%eax
    14c6:	89 44 24 04          	mov    %eax,0x4(%esp)
    14ca:	8b 45 0c             	mov    0xc(%ebp),%eax
    14cd:	89 04 24             	mov    %eax,(%esp)
    14d0:	e8 fc ff ff ff       	call   14d1 <file_buff_write+0x71>
    14d5:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
    14d8:	83 7d ec 00          	cmpl   $0x0,0xffffffec(%ebp)
    14dc:	75 32                	jne    1510 <file_buff_write+0xb0>
    14de:	8b 45 10             	mov    0x10(%ebp),%eax
    14e1:	89 44 24 04          	mov    %eax,0x4(%esp)
    14e5:	8b 45 0c             	mov    0xc(%ebp),%eax
    14e8:	89 04 24             	mov    %eax,(%esp)
    14eb:	e8 fc ff ff ff       	call   14ec <file_buff_write+0x8c>
    14f0:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
    14f3:	83 7d ec 00          	cmpl   $0x0,0xffffffec(%ebp)
    14f7:	75 0c                	jne    1505 <file_buff_write+0xa5>
    14f9:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,0xffffffd4(%ebp)
    1500:	e9 a2 00 00 00       	jmp    15a7 <file_buff_write+0x147>
    1505:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
    1508:	89 04 24             	mov    %eax,(%esp)
    150b:	e8 fc ff ff ff       	call   150c <file_buff_write+0xac>
    1510:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
    1513:	8b 00                	mov    (%eax),%eax
    1515:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
    1518:	b8 00 10 00 00       	mov    $0x1000,%eax
    151d:	2b 45 e0             	sub    0xffffffe0(%ebp),%eax
    1520:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
    1523:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
    1526:	3b 45 14             	cmp    0x14(%ebp),%eax
    1529:	7c 2d                	jl     1558 <file_buff_write+0xf8>
    152b:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
    152e:	89 c7                	mov    %eax,%edi
    1530:	03 7d f0             	add    0xfffffff0(%ebp),%edi
    1533:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
    1536:	89 c6                	mov    %eax,%esi
    1538:	03 75 08             	add    0x8(%ebp),%esi
    153b:	8b 4d 14             	mov    0x14(%ebp),%ecx
    153e:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
    1540:	8b 45 14             	mov    0x14(%ebp),%eax
    1543:	01 45 e8             	add    %eax,0xffffffe8(%ebp)
    1546:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
    1549:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%eax)
    1550:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
    1553:	89 45 d4             	mov    %eax,0xffffffd4(%ebp)
    1556:	eb 4f                	jmp    15a7 <file_buff_write+0x147>
    1558:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
    155b:	89 c7                	mov    %eax,%edi
    155d:	03 7d f0             	add    0xfffffff0(%ebp),%edi
    1560:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
    1563:	89 c6                	mov    %eax,%esi
    1565:	03 75 08             	add    0x8(%ebp),%esi
    1568:	8b 4d f4             	mov    0xfffffff4(%ebp),%ecx
    156b:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
    156d:	c7 45 e0 00 00 00 00 	movl   $0x0,0xffffffe0(%ebp)
    1574:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
    1577:	01 45 e4             	add    %eax,0xffffffe4(%ebp)
    157a:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
    157d:	29 45 14             	sub    %eax,0x14(%ebp)
    1580:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
    1583:	01 45 e8             	add    %eax,0xffffffe8(%ebp)
    1586:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
    1589:	01 45 10             	add    %eax,0x10(%ebp)
    158c:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
    158f:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%eax)
    1596:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
    159a:	0f 8f 23 ff ff ff    	jg     14c3 <file_buff_write+0x63>
    15a0:	c7 45 d4 00 00 00 00 	movl   $0x0,0xffffffd4(%ebp)
    15a7:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
    15aa:	83 c4 30             	add    $0x30,%esp
    15ad:	5e                   	pop    %esi
    15ae:	5f                   	pop    %edi
    15af:	5d                   	pop    %ebp
    15b0:	c3                   	ret    

000015b1 <fs_read>:
    15b1:	55                   	push   %ebp
    15b2:	89 e5                	mov    %esp,%ebp
    15b4:	83 ec 58             	sub    $0x58,%esp
    15b7:	8b 45 18             	mov    0x18(%ebp),%eax
    15ba:	8b 50 48             	mov    0x48(%eax),%edx
    15bd:	8b 45 0c             	mov    0xc(%ebp),%eax
    15c0:	89 44 24 04          	mov    %eax,0x4(%esp)
    15c4:	89 14 24             	mov    %edx,(%esp)
    15c7:	e8 fc ff ff ff       	call   15c8 <fs_read+0x17>
    15cc:	89 45 0c             	mov    %eax,0xc(%ebp)
    15cf:	8b 55 08             	mov    0x8(%ebp),%edx
    15d2:	8b 45 18             	mov    0x18(%ebp),%eax
    15d5:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
    15d9:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
    15dc:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
    15df:	8b 40 08             	mov    0x8(%eax),%eax
    15e2:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
    15e5:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
    15e8:	8b 00                	mov    (%eax),%eax
    15ea:	83 f8 02             	cmp    $0x2,%eax
    15ed:	0f 85 b0 00 00 00    	jne    16a3 <fs_read+0xf2>
    15f3:	c7 45 d4 fe ff ff ff 	movl   $0xfffffffe,0xffffffd4(%ebp)
    15fa:	c7 45 d8 02 00 00 00 	movl   $0x2,0xffffffd8(%ebp)
    1601:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
    1604:	8b 40 08             	mov    0x8(%eax),%eax
    1607:	25 ff 00 00 00       	and    $0xff,%eax
    160c:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
    160f:	c7 45 e0 03 00 00 00 	movl   $0x3,0xffffffe0(%ebp)
    1616:	8b 55 18             	mov    0x18(%ebp),%edx
    1619:	b8 00 00 00 00       	mov    $0x0,%eax
    161e:	89 d1                	mov    %edx,%ecx
    1620:	29 c1                	sub    %eax,%ecx
    1622:	89 c8                	mov    %ecx,%eax
    1624:	c1 f8 05             	sar    $0x5,%eax
    1627:	69 c0 39 8e e3 38    	imul   $0x38e38e39,%eax,%eax
    162d:	89 45 e4             	mov    %eax,0xffffffe4(%ebp)
    1630:	8b 45 0c             	mov    0xc(%ebp),%eax
    1633:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
    1636:	8b 45 14             	mov    0x14(%ebp),%eax
    1639:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
    163c:	e8 fc ff ff ff       	call   163d <fs_read+0x8c>
    1641:	a1 00 00 00 00       	mov    0x0,%eax
    1646:	85 c0                	test   %eax,%eax
    1648:	75 4b                	jne    1695 <fs_read+0xe4>
    164a:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
    164d:	8b 40 08             	mov    0x8(%eax),%eax
    1650:	c1 e8 08             	shr    $0x8,%eax
    1653:	25 ff 00 00 00       	and    $0xff,%eax
    1658:	8b 14 85 00 00 00 00 	mov    0x0(,%eax,4),%edx
    165f:	8d 45 cc             	lea    0xffffffcc(%ebp),%eax
    1662:	89 44 24 08          	mov    %eax,0x8(%esp)
    1666:	89 54 24 04          	mov    %edx,0x4(%esp)
    166a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1671:	e8 fc ff ff ff       	call   1672 <fs_read+0xc1>
    1676:	85 c0                	test   %eax,%eax
    1678:	75 1b                	jne    1695 <fs_read+0xe4>
    167a:	c7 05 00 00 00 00 01 	movl   $0x1,0x0
    1681:	00 00 00 
    1684:	e8 fc ff ff ff       	call   1685 <fs_read+0xd4>
    1689:	c7 45 bc 00 00 00 00 	movl   $0x0,0xffffffbc(%ebp)
    1690:	e9 80 00 00 00       	jmp    1715 <fs_read+0x164>
    1695:	e8 fc ff ff ff       	call   1696 <fs_read+0xe5>
    169a:	c7 45 bc ff ff ff ff 	movl   $0xffffffff,0xffffffbc(%ebp)
    16a1:	eb 72                	jmp    1715 <fs_read+0x164>
    16a3:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
    16a6:	8b 40 04             	mov    0x4(%eax),%eax
    16a9:	89 c2                	mov    %eax,%edx
    16ab:	03 55 10             	add    0x10(%ebp),%edx
    16ae:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
    16b1:	8b 48 08             	mov    0x8(%eax),%ecx
    16b4:	8b 45 14             	mov    0x14(%ebp),%eax
    16b7:	89 44 24 0c          	mov    %eax,0xc(%esp)
    16bb:	89 54 24 08          	mov    %edx,0x8(%esp)
    16bf:	89 4c 24 04          	mov    %ecx,0x4(%esp)
    16c3:	8b 45 0c             	mov    0xc(%ebp),%eax
    16c6:	89 04 24             	mov    %eax,(%esp)
    16c9:	e8 fc ff ff ff       	call   16ca <fs_read+0x119>
    16ce:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
    16d1:	83 7d fc ff          	cmpl   $0xffffffff,0xfffffffc(%ebp)
    16d5:	75 24                	jne    16fb <fs_read+0x14a>
    16d7:	c7 44 24 0c ac 02 00 	movl   $0x2ac,0xc(%esp)
    16de:	00 
    16df:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
    16e6:	00 
    16e7:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    16ee:	00 
    16ef:	c7 04 24 6e 02 00 00 	movl   $0x26e,(%esp)
    16f6:	e8 fc ff ff ff       	call   16f7 <fs_read+0x146>
    16fb:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
    16fe:	8b 50 04             	mov    0x4(%eax),%edx
    1701:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
    1704:	03 45 10             	add    0x10(%ebp),%eax
    1707:	01 c2                	add    %eax,%edx
    1709:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
    170c:	89 50 04             	mov    %edx,0x4(%eax)
    170f:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
    1712:	89 45 bc             	mov    %eax,0xffffffbc(%ebp)
    1715:	8b 45 bc             	mov    0xffffffbc(%ebp),%eax
    1718:	c9                   	leave  
    1719:	c3                   	ret    

0000171a <file_buff_read>:
    171a:	55                   	push   %ebp
    171b:	89 e5                	mov    %esp,%ebp
    171d:	57                   	push   %edi
    171e:	56                   	push   %esi
    171f:	83 ec 30             	sub    $0x30,%esp
    1722:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
    1726:	78 09                	js     1731 <file_buff_read+0x17>
    1728:	81 7d 10 ff 8f 01 00 	cmpl   $0x18fff,0x10(%ebp)
    172f:	7e 1f                	jle    1750 <file_buff_read+0x36>
    1731:	8b 45 10             	mov    0x10(%ebp),%eax
    1734:	89 44 24 04          	mov    %eax,0x4(%esp)
    1738:	c7 04 24 9c 02 00 00 	movl   $0x29c,(%esp)
    173f:	e8 fc ff ff ff       	call   1740 <file_buff_read+0x26>
    1744:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,0xffffffd4(%ebp)
    174b:	e9 fd 00 00 00       	jmp    184d <file_buff_read+0x133>
    1750:	8b 55 10             	mov    0x10(%ebp),%edx
    1753:	89 d0                	mov    %edx,%eax
    1755:	c1 f8 1f             	sar    $0x1f,%eax
    1758:	89 c1                	mov    %eax,%ecx
    175a:	c1 e9 14             	shr    $0x14,%ecx
    175d:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
    1760:	25 ff 0f 00 00       	and    $0xfff,%eax
    1765:	29 c8                	sub    %ecx,%eax
    1767:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
    176a:	c7 45 e4 00 00 00 00 	movl   $0x0,0xffffffe4(%ebp)
    1771:	c7 45 e8 00 00 00 00 	movl   $0x0,0xffffffe8(%ebp)
    1778:	e9 bf 00 00 00       	jmp    183c <file_buff_read+0x122>
    177d:	8b 45 10             	mov    0x10(%ebp),%eax
    1780:	89 44 24 04          	mov    %eax,0x4(%esp)
    1784:	8b 45 0c             	mov    0xc(%ebp),%eax
    1787:	89 04 24             	mov    %eax,(%esp)
    178a:	e8 fc ff ff ff       	call   178b <file_buff_read+0x71>
    178f:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
    1792:	83 7d ec 00          	cmpl   $0x0,0xffffffec(%ebp)
    1796:	75 32                	jne    17ca <file_buff_read+0xb0>
    1798:	8b 45 10             	mov    0x10(%ebp),%eax
    179b:	89 44 24 04          	mov    %eax,0x4(%esp)
    179f:	8b 45 0c             	mov    0xc(%ebp),%eax
    17a2:	89 04 24             	mov    %eax,(%esp)
    17a5:	e8 fc ff ff ff       	call   17a6 <file_buff_read+0x8c>
    17aa:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
    17ad:	83 7d ec 00          	cmpl   $0x0,0xffffffec(%ebp)
    17b1:	75 0c                	jne    17bf <file_buff_read+0xa5>
    17b3:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,0xffffffd4(%ebp)
    17ba:	e9 8e 00 00 00       	jmp    184d <file_buff_read+0x133>
    17bf:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
    17c2:	89 04 24             	mov    %eax,(%esp)
    17c5:	e8 fc ff ff ff       	call   17c6 <file_buff_read+0xac>
    17ca:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
    17cd:	8b 00                	mov    (%eax),%eax
    17cf:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
    17d2:	b8 00 10 00 00       	mov    $0x1000,%eax
    17d7:	2b 45 e0             	sub    0xffffffe0(%ebp),%eax
    17da:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
    17dd:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
    17e0:	3b 45 14             	cmp    0x14(%ebp),%eax
    17e3:	7c 23                	jl     1808 <file_buff_read+0xee>
    17e5:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
    17e8:	89 c7                	mov    %eax,%edi
    17ea:	03 7d 08             	add    0x8(%ebp),%edi
    17ed:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
    17f0:	89 c6                	mov    %eax,%esi
    17f2:	03 75 f0             	add    0xfffffff0(%ebp),%esi
    17f5:	8b 4d 14             	mov    0x14(%ebp),%ecx
    17f8:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
    17fa:	8b 45 14             	mov    0x14(%ebp),%eax
    17fd:	01 45 e8             	add    %eax,0xffffffe8(%ebp)
    1800:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
    1803:	89 45 d4             	mov    %eax,0xffffffd4(%ebp)
    1806:	eb 45                	jmp    184d <file_buff_read+0x133>
    1808:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
    180b:	89 c7                	mov    %eax,%edi
    180d:	03 7d 08             	add    0x8(%ebp),%edi
    1810:	8b 45 e0             	mov    0xffffffe0(%ebp),%eax
    1813:	89 c6                	mov    %eax,%esi
    1815:	03 75 f0             	add    0xfffffff0(%ebp),%esi
    1818:	8b 4d f4             	mov    0xfffffff4(%ebp),%ecx
    181b:	f3 a4                	rep movsb %ds:(%esi),%es:(%edi)
    181d:	c7 45 e0 00 00 00 00 	movl   $0x0,0xffffffe0(%ebp)
    1824:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
    1827:	01 45 e4             	add    %eax,0xffffffe4(%ebp)
    182a:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
    182d:	29 45 14             	sub    %eax,0x14(%ebp)
    1830:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
    1833:	01 45 e8             	add    %eax,0xffffffe8(%ebp)
    1836:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
    1839:	01 45 10             	add    %eax,0x10(%ebp)
    183c:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
    1840:	0f 8f 37 ff ff ff    	jg     177d <file_buff_read+0x63>
    1846:	c7 45 d4 00 00 00 00 	movl   $0x0,0xffffffd4(%ebp)
    184d:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
    1850:	83 c4 30             	add    $0x30,%esp
    1853:	5e                   	pop    %esi
    1854:	5f                   	pop    %edi
    1855:	5d                   	pop    %ebp
    1856:	c3                   	ret    

00001857 <fs_close>:
    1857:	55                   	push   %ebp
    1858:	89 e5                	mov    %esp,%ebp
    185a:	83 ec 48             	sub    $0x48,%esp
    185d:	8b 55 08             	mov    0x8(%ebp),%edx
    1860:	8b 45 0c             	mov    0xc(%ebp),%eax
    1863:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
    1867:	8b 40 08             	mov    0x8(%eax),%eax
    186a:	8b 40 24             	mov    0x24(%eax),%eax
    186d:	85 c0                	test   %eax,%eax
    186f:	7f 1f                	jg     1890 <fs_close+0x39>
    1871:	8b 45 08             	mov    0x8(%ebp),%eax
    1874:	89 44 24 04          	mov    %eax,0x4(%esp)
    1878:	c7 04 24 c0 02 00 00 	movl   $0x2c0,(%esp)
    187f:	e8 fc ff ff ff       	call   1880 <fs_close+0x29>
    1884:	c7 45 cc ff ff ff ff 	movl   $0xffffffff,0xffffffcc(%ebp)
    188b:	e9 23 01 00 00       	jmp    19b3 <fs_close+0x15c>
    1890:	8b 55 08             	mov    0x8(%ebp),%edx
    1893:	8b 45 0c             	mov    0xc(%ebp),%eax
    1896:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
    189a:	8b 40 08             	mov    0x8(%eax),%eax
    189d:	8b 40 24             	mov    0x24(%eax),%eax
    18a0:	83 f8 01             	cmp    $0x1,%eax
    18a3:	0f 85 ce 00 00 00    	jne    1977 <fs_close+0x120>
    18a9:	8b 55 08             	mov    0x8(%ebp),%edx
    18ac:	8b 45 0c             	mov    0xc(%ebp),%eax
    18af:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
    18b3:	8b 40 08             	mov    0x8(%eax),%eax
    18b6:	8b 00                	mov    (%eax),%eax
    18b8:	83 f8 02             	cmp    $0x2,%eax
    18bb:	0f 85 99 00 00 00    	jne    195a <fs_close+0x103>
    18c1:	c7 45 e0 fe ff ff ff 	movl   $0xfffffffe,0xffffffe0(%ebp)
    18c8:	c7 45 e4 01 00 00 00 	movl   $0x1,0xffffffe4(%ebp)
    18cf:	8b 55 08             	mov    0x8(%ebp),%edx
    18d2:	8b 45 0c             	mov    0xc(%ebp),%eax
    18d5:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
    18d9:	8b 40 08             	mov    0x8(%eax),%eax
    18dc:	8b 40 08             	mov    0x8(%eax),%eax
    18df:	25 ff 00 00 00       	and    $0xff,%eax
    18e4:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
    18e7:	e8 fc ff ff ff       	call   18e8 <fs_close+0x91>
    18ec:	a1 00 00 00 00       	mov    0x0,%eax
    18f1:	85 c0                	test   %eax,%eax
    18f3:	75 5e                	jne    1953 <fs_close+0xfc>
    18f5:	8b 55 08             	mov    0x8(%ebp),%edx
    18f8:	8b 45 0c             	mov    0xc(%ebp),%eax
    18fb:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
    18ff:	8b 40 08             	mov    0x8(%eax),%eax
    1902:	8b 40 08             	mov    0x8(%eax),%eax
    1905:	c1 e8 08             	shr    $0x8,%eax
    1908:	25 ff 00 00 00       	and    $0xff,%eax
    190d:	8b 14 85 00 00 00 00 	mov    0x0(,%eax,4),%edx
    1914:	8d 45 d8             	lea    0xffffffd8(%ebp),%eax
    1917:	89 44 24 08          	mov    %eax,0x8(%esp)
    191b:	89 54 24 04          	mov    %edx,0x4(%esp)
    191f:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
    1926:	e8 fc ff ff ff       	call   1927 <fs_close+0xd0>
    192b:	85 c0                	test   %eax,%eax
    192d:	74 24                	je     1953 <fs_close+0xfc>
    192f:	c7 44 24 0c f5 02 00 	movl   $0x2f5,0xc(%esp)
    1936:	00 
    1937:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
    193e:	00 
    193f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1946:	00 
    1947:	c7 04 24 ec 02 00 00 	movl   $0x2ec,(%esp)
    194e:	e8 fc ff ff ff       	call   194f <fs_close+0xf8>
    1953:	e8 fc ff ff ff       	call   1954 <fs_close+0xfd>
    1958:	eb 1d                	jmp    1977 <fs_close+0x120>
    195a:	8b 55 08             	mov    0x8(%ebp),%edx
    195d:	8b 45 0c             	mov    0xc(%ebp),%eax
    1960:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
    1964:	8b 40 08             	mov    0x8(%eax),%eax
    1967:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    196e:	00 
    196f:	89 04 24             	mov    %eax,(%esp)
    1972:	e8 fc ff ff ff       	call   1973 <fs_close+0x11c>
    1977:	8b 55 08             	mov    0x8(%ebp),%edx
    197a:	8b 45 0c             	mov    0xc(%ebp),%eax
    197d:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
    1981:	8b 50 08             	mov    0x8(%eax),%edx
    1984:	8b 42 24             	mov    0x24(%edx),%eax
    1987:	83 e8 01             	sub    $0x1,%eax
    198a:	89 42 24             	mov    %eax,0x24(%edx)
    198d:	8b 55 08             	mov    0x8(%ebp),%edx
    1990:	8b 45 0c             	mov    0xc(%ebp),%eax
    1993:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
    1997:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
    199e:	8b 55 08             	mov    0x8(%ebp),%edx
    19a1:	8b 45 0c             	mov    0xc(%ebp),%eax
    19a4:	c7 44 90 70 00 00 00 	movl   $0x0,0x70(%eax,%edx,4)
    19ab:	00 
    19ac:	c7 45 cc 00 00 00 00 	movl   $0x0,0xffffffcc(%ebp)
    19b3:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
    19b6:	c9                   	leave  
    19b7:	c3                   	ret    

000019b8 <fs_delete>:
    19b8:	55                   	push   %ebp
    19b9:	89 e5                	mov    %esp,%ebp
    19bb:	56                   	push   %esi
    19bc:	53                   	push   %ebx
    19bd:	83 ec 60             	sub    $0x60,%esp
    19c0:	c7 45 e4 00 00 00 00 	movl   $0x0,0xffffffe4(%ebp)
    19c7:	c7 45 e8 00 00 00 00 	movl   $0x0,0xffffffe8(%ebp)
    19ce:	c7 45 d8 00 00 00 00 	movl   $0x0,0xffffffd8(%ebp)
    19d5:	c7 45 cc 00 00 00 00 	movl   $0x0,0xffffffcc(%ebp)
    19dc:	e9 88 00 00 00       	jmp    1a69 <fs_delete+0xb1>
    19e1:	8b 15 00 00 00 00    	mov    0x0,%edx
    19e7:	c7 44 24 0c 00 02 00 	movl   $0x200,0xc(%esp)
    19ee:	00 
    19ef:	8b 45 e4             	mov    0xffffffe4(%ebp),%eax
    19f2:	89 44 24 08          	mov    %eax,0x8(%esp)
    19f6:	89 54 24 04          	mov    %edx,0x4(%esp)
    19fa:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1a01:	e8 fc ff ff ff       	call   1a02 <fs_delete+0x4a>
    1a06:	c7 45 dc 00 00 00 00 	movl   $0x0,0xffffffdc(%ebp)
    1a0d:	c7 45 d4 00 00 00 00 	movl   $0x0,0xffffffd4(%ebp)
    1a14:	eb 31                	jmp    1a47 <fs_delete+0x8f>
    1a16:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
    1a19:	83 c0 04             	add    $0x4,%eax
    1a1c:	8b 55 08             	mov    0x8(%ebp),%edx
    1a1f:	89 54 24 04          	mov    %edx,0x4(%esp)
    1a23:	89 04 24             	mov    %eax,(%esp)
    1a26:	e8 fc ff ff ff       	call   1a27 <fs_delete+0x6f>
    1a2b:	85 c0                	test   %eax,%eax
    1a2d:	75 10                	jne    1a3f <fs_delete+0x87>
    1a2f:	8b 45 d4             	mov    0xffffffd4(%ebp),%eax
    1a32:	8b 00                	mov    (%eax),%eax
    1a34:	89 45 cc             	mov    %eax,0xffffffcc(%ebp)
    1a37:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
    1a3a:	01 45 e8             	add    %eax,0xffffffe8(%ebp)
    1a3d:	eb 10                	jmp    1a4f <fs_delete+0x97>
    1a3f:	83 45 dc 01          	addl   $0x1,0xffffffdc(%ebp)
    1a43:	83 45 d4 10          	addl   $0x10,0xffffffd4(%ebp)
    1a47:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
    1a4a:	83 f8 1f             	cmp    $0x1f,%eax
    1a4d:	76 c7                	jbe    1a16 <fs_delete+0x5e>
    1a4f:	83 7d cc 00          	cmpl   $0x0,0xffffffcc(%ebp)
    1a53:	75 1e                	jne    1a73 <fs_delete+0xbb>
    1a55:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
    1a58:	83 c0 20             	add    $0x20,%eax
    1a5b:	89 45 e8             	mov    %eax,0xffffffe8(%ebp)
    1a5e:	83 45 d8 01          	addl   $0x1,0xffffffd8(%ebp)
    1a62:	81 45 e4 00 02 00 00 	addl   $0x200,0xffffffe4(%ebp)
    1a69:	83 7d d8 00          	cmpl   $0x0,0xffffffd8(%ebp)
    1a6d:	0f 84 6e ff ff ff    	je     19e1 <fs_delete+0x29>
    1a73:	83 7d cc 00          	cmpl   $0x0,0xffffffcc(%ebp)
    1a77:	75 1f                	jne    1a98 <fs_delete+0xe0>
    1a79:	8b 45 08             	mov    0x8(%ebp),%eax
    1a7c:	89 44 24 04          	mov    %eax,0x4(%esp)
    1a80:	c7 04 24 3c 03 00 00 	movl   $0x33c,(%esp)
    1a87:	e8 fc ff ff ff       	call   1a88 <fs_delete+0xd0>
    1a8c:	c7 45 b4 ff ff ff ff 	movl   $0xffffffff,0xffffffb4(%ebp)
    1a93:	e9 3b 03 00 00       	jmp    1dd3 <fs_delete+0x41b>
    1a98:	83 7d cc 04          	cmpl   $0x4,0xffffffcc(%ebp)
    1a9c:	7f 1f                	jg     1abd <fs_delete+0x105>
    1a9e:	8b 45 08             	mov    0x8(%ebp),%eax
    1aa1:	89 44 24 04          	mov    %eax,0x4(%esp)
    1aa5:	c7 04 24 63 03 00 00 	movl   $0x363,(%esp)
    1aac:	e8 fc ff ff ff       	call   1aad <fs_delete+0xf5>
    1ab1:	c7 45 b4 ff ff ff ff 	movl   $0xffffffff,0xffffffb4(%ebp)
    1ab8:	e9 16 03 00 00       	jmp    1dd3 <fs_delete+0x41b>
    1abd:	c7 45 d0 00 00 00 00 	movl   $0x0,0xffffffd0(%ebp)
    1ac4:	eb 38                	jmp    1afe <fs_delete+0x146>
    1ac6:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
    1ac9:	8b 40 28             	mov    0x28(%eax),%eax
    1acc:	3b 45 cc             	cmp    0xffffffcc(%ebp),%eax
    1acf:	75 29                	jne    1afa <fs_delete+0x142>
    1ad1:	8b 45 d0             	mov    0xffffffd0(%ebp),%eax
    1ad4:	8b 40 24             	mov    0x24(%eax),%eax
    1ad7:	85 c0                	test   %eax,%eax
    1ad9:	74 1f                	je     1afa <fs_delete+0x142>
    1adb:	8b 45 08             	mov    0x8(%ebp),%eax
    1ade:	89 44 24 04          	mov    %eax,0x4(%esp)
    1ae2:	c7 04 24 81 03 00 00 	movl   $0x381,(%esp)
    1ae9:	e8 fc ff ff ff       	call   1aea <fs_delete+0x132>
    1aee:	c7 45 b4 ff ff ff ff 	movl   $0xffffffff,0xffffffb4(%ebp)
    1af5:	e9 d9 02 00 00       	jmp    1dd3 <fs_delete+0x41b>
    1afa:	83 45 d0 2c          	addl   $0x2c,0xffffffd0(%ebp)
    1afe:	b8 00 0b 00 00       	mov    $0xb00,%eax
    1b03:	39 45 d0             	cmp    %eax,0xffffffd0(%ebp)
    1b06:	72 be                	jb     1ac6 <fs_delete+0x10e>
    1b08:	8b 55 cc             	mov    0xffffffcc(%ebp),%edx
    1b0b:	89 d0                	mov    %edx,%eax
    1b0d:	c1 f8 1f             	sar    $0x1f,%eax
    1b10:	c1 e8 14             	shr    $0x14,%eax
    1b13:	01 d0                	add    %edx,%eax
    1b15:	c1 f8 0c             	sar    $0xc,%eax
    1b18:	83 c0 02             	add    $0x2,%eax
    1b1b:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
    1b1e:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
    1b21:	c1 e0 09             	shl    $0x9,%eax
    1b24:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
    1b2b:	00 
    1b2c:	89 44 24 08          	mov    %eax,0x8(%esp)
    1b30:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1b37:	00 
    1b38:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
    1b3f:	e8 fc ff ff ff       	call   1b40 <fs_delete+0x188>
    1b44:	8b 55 cc             	mov    0xffffffcc(%ebp),%edx
    1b47:	89 d0                	mov    %edx,%eax
    1b49:	c1 f8 1f             	sar    $0x1f,%eax
    1b4c:	c1 e8 1d             	shr    $0x1d,%eax
    1b4f:	01 d0                	add    %edx,%eax
    1b51:	c1 f8 03             	sar    $0x3,%eax
    1b54:	89 c2                	mov    %eax,%edx
    1b56:	89 d0                	mov    %edx,%eax
    1b58:	c1 f8 1f             	sar    $0x1f,%eax
    1b5b:	89 c1                	mov    %eax,%ecx
    1b5d:	c1 e9 17             	shr    $0x17,%ecx
    1b60:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
    1b63:	25 ff 01 00 00       	and    $0x1ff,%eax
    1b68:	29 c8                	sub    %ecx,%eax
    1b6a:	89 c3                	mov    %eax,%ebx
    1b6c:	0f b6 b0 00 00 00 00 	movzbl 0x0(%eax),%esi
    1b73:	8b 55 cc             	mov    0xffffffcc(%ebp),%edx
    1b76:	89 d0                	mov    %edx,%eax
    1b78:	c1 f8 1f             	sar    $0x1f,%eax
    1b7b:	89 c1                	mov    %eax,%ecx
    1b7d:	c1 e9 1d             	shr    $0x1d,%ecx
    1b80:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
    1b83:	83 e0 07             	and    $0x7,%eax
    1b86:	29 c8                	sub    %ecx,%eax
    1b88:	89 c1                	mov    %eax,%ecx
    1b8a:	b8 01 00 00 00       	mov    $0x1,%eax
    1b8f:	d3 e0                	shl    %cl,%eax
    1b91:	f7 d0                	not    %eax
    1b93:	21 f0                	and    %esi,%eax
    1b95:	88 83 00 00 00 00    	mov    %al,0x0(%ebx)
    1b9b:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
    1b9e:	c1 e0 09             	shl    $0x9,%eax
    1ba1:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
    1ba8:	00 
    1ba9:	89 44 24 08          	mov    %eax,0x8(%esp)
    1bad:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1bb4:	00 
    1bb5:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
    1bbc:	e8 fc ff ff ff       	call   1bbd <fs_delete+0x205>
    1bc1:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
    1bc4:	c1 e8 04             	shr    $0x4,%eax
    1bc7:	83 c0 04             	add    $0x4,%eax
    1bca:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
    1bcd:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
    1bd0:	c1 e0 09             	shl    $0x9,%eax
    1bd3:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
    1bda:	00 
    1bdb:	89 44 24 08          	mov    %eax,0x8(%esp)
    1bdf:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1be6:	00 
    1be7:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
    1bee:	e8 fc ff ff ff       	call   1bef <fs_delete+0x237>
    1bf3:	c7 45 c8 00 00 00 00 	movl   $0x0,0xffffffc8(%ebp)
    1bfa:	8b 45 cc             	mov    0xffffffcc(%ebp),%eax
    1bfd:	83 e0 0f             	and    $0xf,%eax
    1c00:	c1 e0 05             	shl    $0x5,%eax
    1c03:	01 45 c8             	add    %eax,0xffffffc8(%ebp)
    1c06:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
    1c09:	8b 40 08             	mov    0x8(%eax),%eax
    1c0c:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
    1c0f:	8b 45 c8             	mov    0xffffffc8(%ebp),%eax
    1c12:	8b 40 0c             	mov    0xc(%eax),%eax
    1c15:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
    1c18:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
    1c1b:	89 d0                	mov    %edx,%eax
    1c1d:	c1 f8 1f             	sar    $0x1f,%eax
    1c20:	c1 e8 14             	shr    $0x14,%eax
    1c23:	01 d0                	add    %edx,%eax
    1c25:	c1 f8 0c             	sar    $0xc,%eax
    1c28:	89 45 d8             	mov    %eax,0xffffffd8(%ebp)
    1c2b:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
    1c2e:	89 d0                	mov    %edx,%eax
    1c30:	c1 f8 1f             	sar    $0x1f,%eax
    1c33:	c1 e8 1d             	shr    $0x1d,%eax
    1c36:	01 d0                	add    %edx,%eax
    1c38:	c1 f8 03             	sar    $0x3,%eax
    1c3b:	89 c2                	mov    %eax,%edx
    1c3d:	89 d0                	mov    %edx,%eax
    1c3f:	c1 f8 1f             	sar    $0x1f,%eax
    1c42:	89 c1                	mov    %eax,%ecx
    1c44:	c1 e9 17             	shr    $0x17,%ecx
    1c47:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
    1c4a:	25 ff 01 00 00       	and    $0x1ff,%eax
    1c4f:	29 c8                	sub    %ecx,%eax
    1c51:	89 45 dc             	mov    %eax,0xffffffdc(%ebp)
    1c54:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
    1c57:	89 d0                	mov    %edx,%eax
    1c59:	c1 f8 1f             	sar    $0x1f,%eax
    1c5c:	89 c1                	mov    %eax,%ecx
    1c5e:	c1 e9 1d             	shr    $0x1d,%ecx
    1c61:	8d 04 0a             	lea    (%edx,%ecx,1),%eax
    1c64:	83 e0 07             	and    $0x7,%eax
    1c67:	29 c8                	sub    %ecx,%eax
    1c69:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
    1c6c:	e9 0e 01 00 00       	jmp    1d7f <fs_delete+0x3c7>
    1c71:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
    1c74:	c1 e0 09             	shl    $0x9,%eax
    1c77:	05 00 06 00 00       	add    $0x600,%eax
    1c7c:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
    1c83:	00 
    1c84:	89 44 24 08          	mov    %eax,0x8(%esp)
    1c88:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1c8f:	00 
    1c90:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
    1c97:	e8 fc ff ff ff       	call   1c98 <fs_delete+0x2e0>
    1c9c:	e9 95 00 00 00       	jmp    1d36 <fs_delete+0x37e>
    1ca1:	b8 08 00 00 00       	mov    $0x8,%eax
    1ca6:	2b 45 e0             	sub    0xffffffe0(%ebp),%eax
    1ca9:	3b 45 f4             	cmp    0xfffffff4(%ebp),%eax
    1cac:	7c 38                	jl     1ce6 <fs_delete+0x32e>
    1cae:	eb 25                	jmp    1cd5 <fs_delete+0x31d>
    1cb0:	8b 55 dc             	mov    0xffffffdc(%ebp),%edx
    1cb3:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
    1cb6:	0f b6 98 00 00 00 00 	movzbl 0x0(%eax),%ebx
    1cbd:	8b 4d e0             	mov    0xffffffe0(%ebp),%ecx
    1cc0:	b8 01 00 00 00       	mov    $0x1,%eax
    1cc5:	d3 e0                	shl    %cl,%eax
    1cc7:	f7 d0                	not    %eax
    1cc9:	21 d8                	and    %ebx,%eax
    1ccb:	88 82 00 00 00 00    	mov    %al,0x0(%edx)
    1cd1:	83 45 e0 01          	addl   $0x1,0xffffffe0(%ebp)
    1cd5:	83 7d f4 00          	cmpl   $0x0,0xfffffff4(%ebp)
    1cd9:	0f 9f c0             	setg   %al
    1cdc:	83 6d f4 01          	subl   $0x1,0xfffffff4(%ebp)
    1ce0:	84 c0                	test   %al,%al
    1ce2:	75 cc                	jne    1cb0 <fs_delete+0x2f8>
    1ce4:	eb 63                	jmp    1d49 <fs_delete+0x391>
    1ce6:	83 7d e0 00          	cmpl   $0x0,0xffffffe0(%ebp)
    1cea:	75 39                	jne    1d25 <fs_delete+0x36d>
    1cec:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
    1cef:	c6 80 00 00 00 00 00 	movb   $0x0,0x0(%eax)
    1cf6:	83 6d f4 08          	subl   $0x8,0xfffffff4(%ebp)
    1cfa:	eb 2f                	jmp    1d2b <fs_delete+0x373>
    1cfc:	8b 55 dc             	mov    0xffffffdc(%ebp),%edx
    1cff:	8b 45 dc             	mov    0xffffffdc(%ebp),%eax
    1d02:	0f b6 98 00 00 00 00 	movzbl 0x0(%eax),%ebx
    1d09:	8b 4d e0             	mov    0xffffffe0(%ebp),%ecx
    1d0c:	b8 01 00 00 00       	mov    $0x1,%eax
    1d11:	d3 e0                	shl    %cl,%eax
    1d13:	f7 d0                	not    %eax
    1d15:	21 d8                	and    %ebx,%eax
    1d17:	88 82 00 00 00 00    	mov    %al,0x0(%edx)
    1d1d:	83 45 e0 01          	addl   $0x1,0xffffffe0(%ebp)
    1d21:	83 6d f4 01          	subl   $0x1,0xfffffff4(%ebp)
    1d25:	83 7d e0 07          	cmpl   $0x7,0xffffffe0(%ebp)
    1d29:	7e d1                	jle    1cfc <fs_delete+0x344>
    1d2b:	83 45 dc 01          	addl   $0x1,0xffffffdc(%ebp)
    1d2f:	c7 45 e0 00 00 00 00 	movl   $0x0,0xffffffe0(%ebp)
    1d36:	81 7d dc ff 01 00 00 	cmpl   $0x1ff,0xffffffdc(%ebp)
    1d3d:	7f 0a                	jg     1d49 <fs_delete+0x391>
    1d3f:	83 7d f4 00          	cmpl   $0x0,0xfffffff4(%ebp)
    1d43:	0f 8f 58 ff ff ff    	jg     1ca1 <fs_delete+0x2e9>
    1d49:	8b 45 d8             	mov    0xffffffd8(%ebp),%eax
    1d4c:	c1 e0 09             	shl    $0x9,%eax
    1d4f:	05 00 06 00 00       	add    $0x600,%eax
    1d54:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
    1d5b:	00 
    1d5c:	89 44 24 08          	mov    %eax,0x8(%esp)
    1d60:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1d67:	00 
    1d68:	c7 04 24 1a 03 00 00 	movl   $0x31a,(%esp)
    1d6f:	e8 fc ff ff ff       	call   1d70 <fs_delete+0x3b8>
    1d74:	83 45 d8 01          	addl   $0x1,0xffffffd8(%ebp)
    1d78:	c7 45 dc 00 00 00 00 	movl   $0x0,0xffffffdc(%ebp)
    1d7f:	83 7d f4 00          	cmpl   $0x0,0xfffffff4(%ebp)
    1d83:	0f 8f e8 fe ff ff    	jg     1c71 <fs_delete+0x2b9>
    1d89:	c7 45 b8 00 00 00 00 	movl   $0x0,0xffffffb8(%ebp)
    1d90:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
    1d93:	c1 e0 04             	shl    $0x4,%eax
    1d96:	8b 15 00 00 00 00    	mov    0x0,%edx
    1d9c:	c7 44 24 0c 10 00 00 	movl   $0x10,0xc(%esp)
    1da3:	00 
    1da4:	89 44 24 08          	mov    %eax,0x8(%esp)
    1da8:	89 54 24 04          	mov    %edx,0x4(%esp)
    1dac:	8d 45 b8             	lea    0xffffffb8(%ebp),%eax
    1daf:	89 04 24             	mov    %eax,(%esp)
    1db2:	e8 fc ff ff ff       	call   1db3 <fs_delete+0x3fb>
    1db7:	a1 00 00 00 00       	mov    0x0,%eax
    1dbc:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1dc3:	00 
    1dc4:	89 04 24             	mov    %eax,(%esp)
    1dc7:	e8 fc ff ff ff       	call   1dc8 <fs_delete+0x410>
    1dcc:	c7 45 b4 00 00 00 00 	movl   $0x0,0xffffffb4(%ebp)
    1dd3:	8b 45 b4             	mov    0xffffffb4(%ebp),%eax
    1dd6:	83 c4 60             	add    $0x60,%esp
    1dd9:	5b                   	pop    %ebx
    1dda:	5e                   	pop    %esi
    1ddb:	5d                   	pop    %ebp
    1ddc:	c3                   	ret    

00001ddd <fs_do_lseek>:
    1ddd:	55                   	push   %ebp
    1dde:	89 e5                	mov    %esp,%ebp
    1de0:	83 ec 18             	sub    $0x18,%esp
    1de3:	8b 45 08             	mov    0x8(%ebp),%eax
    1de6:	8b 55 14             	mov    0x14(%ebp),%edx
    1de9:	8b 44 82 70          	mov    0x70(%edx,%eax,4),%eax
    1ded:	85 c0                	test   %eax,%eax
    1def:	75 24                	jne    1e15 <fs_do_lseek+0x38>
    1df1:	c7 44 24 0c 83 03 00 	movl   $0x383,0xc(%esp)
    1df8:	00 
    1df9:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
    1e00:	00 
    1e01:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1e08:	00 
    1e09:	c7 04 24 9f 03 00 00 	movl   $0x39f,(%esp)
    1e10:	e8 fc ff ff ff       	call   1e11 <fs_do_lseek+0x34>
    1e15:	8b 55 08             	mov    0x8(%ebp),%edx
    1e18:	8b 45 14             	mov    0x14(%ebp),%eax
    1e1b:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
    1e1f:	8b 40 08             	mov    0x8(%eax),%eax
    1e22:	8b 50 04             	mov    0x4(%eax),%edx
    1e25:	8b 45 0c             	mov    0xc(%ebp),%eax
    1e28:	39 c2                	cmp    %eax,%edx
    1e2a:	77 24                	ja     1e50 <fs_do_lseek+0x73>
    1e2c:	c7 44 24 0c 84 03 00 	movl   $0x384,0xc(%esp)
    1e33:	00 
    1e34:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
    1e3b:	00 
    1e3c:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1e43:	00 
    1e44:	c7 04 24 b4 03 00 00 	movl   $0x3b4,(%esp)
    1e4b:	e8 fc ff ff ff       	call   1e4c <fs_do_lseek+0x6f>
    1e50:	8b 55 08             	mov    0x8(%ebp),%edx
    1e53:	8b 45 14             	mov    0x14(%ebp),%eax
    1e56:	8b 54 90 70          	mov    0x70(%eax,%edx,4),%edx
    1e5a:	8b 45 0c             	mov    0xc(%ebp),%eax
    1e5d:	89 42 04             	mov    %eax,0x4(%edx)
    1e60:	b8 00 00 00 00       	mov    $0x0,%eax
    1e65:	c9                   	leave  
    1e66:	c3                   	ret    

00001e67 <fs_do_fork>:
    1e67:	55                   	push   %ebp
    1e68:	89 e5                	mov    %esp,%ebp
    1e6a:	53                   	push   %ebx
    1e6b:	83 ec 14             	sub    $0x14,%esp
    1e6e:	8b 55 08             	mov    0x8(%ebp),%edx
    1e71:	89 d0                	mov    %edx,%eax
    1e73:	c1 e0 03             	shl    $0x3,%eax
    1e76:	01 d0                	add    %edx,%eax
    1e78:	c1 e0 05             	shl    $0x5,%eax
    1e7b:	05 00 00 00 00       	add    $0x0,%eax
    1e80:	89 45 f0             	mov    %eax,0xfffffff0(%ebp)
    1e83:	c7 45 f4 00 00 00 00 	movl   $0x0,0xfffffff4(%ebp)
    1e8a:	c7 45 f8 00 00 00 00 	movl   $0x0,0xfffffff8(%ebp)
    1e91:	e9 f8 00 00 00       	jmp    1f8e <fs_do_fork+0x127>
    1e96:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
    1e99:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
    1e9c:	8b 44 82 70          	mov    0x70(%edx,%eax,4),%eax
    1ea0:	85 c0                	test   %eax,%eax
    1ea2:	0f 84 e2 00 00 00    	je     1f8a <fs_do_fork+0x123>
    1ea8:	eb 1a                	jmp    1ec4 <fs_do_fork+0x5d>
    1eaa:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
    1ead:	89 d0                	mov    %edx,%eax
    1eaf:	01 c0                	add    %eax,%eax
    1eb1:	01 d0                	add    %edx,%eax
    1eb3:	c1 e0 02             	shl    $0x2,%eax
    1eb6:	8b 80 08 00 00 00    	mov    0x8(%eax),%eax
    1ebc:	85 c0                	test   %eax,%eax
    1ebe:	74 0d                	je     1ecd <fs_do_fork+0x66>
    1ec0:	83 45 f8 01          	addl   $0x1,0xfffffff8(%ebp)
    1ec4:	81 7d f8 ff 03 00 00 	cmpl   $0x3ff,0xfffffff8(%ebp)
    1ecb:	7e dd                	jle    1eaa <fs_do_fork+0x43>
    1ecd:	81 7d f8 ff 03 00 00 	cmpl   $0x3ff,0xfffffff8(%ebp)
    1ed4:	7e 4a                	jle    1f20 <fs_do_fork+0xb9>
    1ed6:	eb 35                	jmp    1f0d <fs_do_fork+0xa6>
    1ed8:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
    1edb:	8b 55 f0             	mov    0xfffffff0(%ebp),%edx
    1ede:	8b 44 82 70          	mov    0x70(%edx,%eax,4),%eax
    1ee2:	85 c0                	test   %eax,%eax
    1ee4:	74 27                	je     1f0d <fs_do_fork+0xa6>
    1ee6:	8b 55 f4             	mov    0xfffffff4(%ebp),%edx
    1ee9:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
    1eec:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
    1ef0:	8b 50 08             	mov    0x8(%eax),%edx
    1ef3:	8b 42 24             	mov    0x24(%edx),%eax
    1ef6:	83 e8 01             	sub    $0x1,%eax
    1ef9:	89 42 24             	mov    %eax,0x24(%edx)
    1efc:	8b 55 f4             	mov    0xfffffff4(%ebp),%edx
    1eff:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
    1f02:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
    1f06:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
    1f0d:	83 6d f4 01          	subl   $0x1,0xfffffff4(%ebp)
    1f11:	83 7d f4 00          	cmpl   $0x0,0xfffffff4(%ebp)
    1f15:	79 c1                	jns    1ed8 <fs_do_fork+0x71>
    1f17:	c7 45 e8 ff ff ff ff 	movl   $0xffffffff,0xffffffe8(%ebp)
    1f1e:	eb 7f                	jmp    1f9f <fs_do_fork+0x138>
    1f20:	8b 5d f8             	mov    0xfffffff8(%ebp),%ebx
    1f23:	8b 55 f4             	mov    0xfffffff4(%ebp),%edx
    1f26:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
    1f29:	8b 4c 90 70          	mov    0x70(%eax,%edx,4),%ecx
    1f2d:	89 d8                	mov    %ebx,%eax
    1f2f:	01 c0                	add    %eax,%eax
    1f31:	01 d8                	add    %ebx,%eax
    1f33:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
    1f3a:	8b 01                	mov    (%ecx),%eax
    1f3c:	89 82 00 00 00 00    	mov    %eax,0x0(%edx)
    1f42:	8b 41 04             	mov    0x4(%ecx),%eax
    1f45:	89 82 04 00 00 00    	mov    %eax,0x4(%edx)
    1f4b:	8b 41 08             	mov    0x8(%ecx),%eax
    1f4e:	89 82 08 00 00 00    	mov    %eax,0x8(%edx)
    1f54:	8b 4d f4             	mov    0xfffffff4(%ebp),%ecx
    1f57:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
    1f5a:	89 d0                	mov    %edx,%eax
    1f5c:	01 c0                	add    %eax,%eax
    1f5e:	01 d0                	add    %edx,%eax
    1f60:	c1 e0 02             	shl    $0x2,%eax
    1f63:	8d 90 00 00 00 00    	lea    0x0(%eax),%edx
    1f69:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
    1f6c:	89 54 88 70          	mov    %edx,0x70(%eax,%ecx,4)
    1f70:	8b 55 f4             	mov    0xfffffff4(%ebp),%edx
    1f73:	8b 45 f0             	mov    0xfffffff0(%ebp),%eax
    1f76:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
    1f7a:	8b 50 08             	mov    0x8(%eax),%edx
    1f7d:	8b 42 24             	mov    0x24(%edx),%eax
    1f80:	83 c0 01             	add    $0x1,%eax
    1f83:	89 42 24             	mov    %eax,0x24(%edx)
    1f86:	83 45 f8 01          	addl   $0x1,0xfffffff8(%ebp)
    1f8a:	83 45 f4 01          	addl   $0x1,0xfffffff4(%ebp)
    1f8e:	83 7d f4 1f          	cmpl   $0x1f,0xfffffff4(%ebp)
    1f92:	0f 8e fe fe ff ff    	jle    1e96 <fs_do_fork+0x2f>
    1f98:	c7 45 e8 00 00 00 00 	movl   $0x0,0xffffffe8(%ebp)
    1f9f:	8b 45 e8             	mov    0xffffffe8(%ebp),%eax
    1fa2:	83 c4 14             	add    $0x14,%esp
    1fa5:	5b                   	pop    %ebx
    1fa6:	5d                   	pop    %ebp
    1fa7:	c3                   	ret    

00001fa8 <fs_do_exit>:
    1fa8:	55                   	push   %ebp
    1fa9:	89 e5                	mov    %esp,%ebp
    1fab:	83 ec 48             	sub    $0x48,%esp
    1fae:	8b 55 08             	mov    0x8(%ebp),%edx
    1fb1:	89 d0                	mov    %edx,%eax
    1fb3:	c1 e0 03             	shl    $0x3,%eax
    1fb6:	01 d0                	add    %edx,%eax
    1fb8:	c1 e0 05             	shl    $0x5,%eax
    1fbb:	05 00 00 00 00       	add    $0x0,%eax
    1fc0:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
    1fc3:	c7 45 fc 00 00 00 00 	movl   $0x0,0xfffffffc(%ebp)
    1fca:	e9 2f 01 00 00       	jmp    20fe <fs_do_exit+0x156>
    1fcf:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
    1fd2:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
    1fd5:	8b 44 82 70          	mov    0x70(%edx,%eax,4),%eax
    1fd9:	85 c0                	test   %eax,%eax
    1fdb:	0f 84 19 01 00 00    	je     20fa <fs_do_exit+0x152>
    1fe1:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
    1fe4:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
    1fe7:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
    1feb:	8b 40 08             	mov    0x8(%eax),%eax
    1fee:	8b 40 24             	mov    0x24(%eax),%eax
    1ff1:	85 c0                	test   %eax,%eax
    1ff3:	7f 24                	jg     2019 <fs_do_exit+0x71>
    1ff5:	c7 44 24 0c bd 03 00 	movl   $0x3bd,0xc(%esp)
    1ffc:	00 
    1ffd:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
    2004:	00 
    2005:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    200c:	00 
    200d:	c7 04 24 e0 03 00 00 	movl   $0x3e0,(%esp)
    2014:	e8 fc ff ff ff       	call   2015 <fs_do_exit+0x6d>
    2019:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
    201c:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
    201f:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
    2023:	8b 40 08             	mov    0x8(%eax),%eax
    2026:	8b 50 24             	mov    0x24(%eax),%edx
    2029:	83 ea 01             	sub    $0x1,%edx
    202c:	89 50 24             	mov    %edx,0x24(%eax)
    202f:	8b 40 24             	mov    0x24(%eax),%eax
    2032:	85 c0                	test   %eax,%eax
    2034:	0f 85 af 00 00 00    	jne    20e9 <fs_do_exit+0x141>
    203a:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
    203d:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
    2040:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
    2044:	8b 40 08             	mov    0x8(%eax),%eax
    2047:	8b 00                	mov    (%eax),%eax
    2049:	83 f8 02             	cmp    $0x2,%eax
    204c:	0f 85 97 00 00 00    	jne    20e9 <fs_do_exit+0x141>
    2052:	c7 45 d8 fe ff ff ff 	movl   $0xfffffffe,0xffffffd8(%ebp)
    2059:	c7 45 dc 01 00 00 00 	movl   $0x1,0xffffffdc(%ebp)
    2060:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
    2063:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
    2066:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
    206a:	8b 40 08             	mov    0x8(%eax),%eax
    206d:	8b 40 08             	mov    0x8(%eax),%eax
    2070:	25 ff 00 00 00       	and    $0xff,%eax
    2075:	89 45 e0             	mov    %eax,0xffffffe0(%ebp)
    2078:	e8 fc ff ff ff       	call   2079 <fs_do_exit+0xd1>
    207d:	a1 00 00 00 00       	mov    0x0,%eax
    2082:	85 c0                	test   %eax,%eax
    2084:	75 5e                	jne    20e4 <fs_do_exit+0x13c>
    2086:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
    2089:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
    208c:	8b 44 90 70          	mov    0x70(%eax,%edx,4),%eax
    2090:	8b 40 08             	mov    0x8(%eax),%eax
    2093:	8b 40 08             	mov    0x8(%eax),%eax
    2096:	c1 e8 08             	shr    $0x8,%eax
    2099:	25 ff 00 00 00       	and    $0xff,%eax
    209e:	8b 14 85 00 00 00 00 	mov    0x0(,%eax,4),%edx
    20a5:	8d 45 d0             	lea    0xffffffd0(%ebp),%eax
    20a8:	89 44 24 08          	mov    %eax,0x8(%esp)
    20ac:	89 54 24 04          	mov    %edx,0x4(%esp)
    20b0:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
    20b7:	e8 fc ff ff ff       	call   20b8 <fs_do_exit+0x110>
    20bc:	85 c0                	test   %eax,%eax
    20be:	74 24                	je     20e4 <fs_do_exit+0x13c>
    20c0:	c7 44 24 0c c9 03 00 	movl   $0x3c9,0xc(%esp)
    20c7:	00 
    20c8:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
    20cf:	00 
    20d0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    20d7:	00 
    20d8:	c7 04 24 ec 02 00 00 	movl   $0x2ec,(%esp)
    20df:	e8 fc ff ff ff       	call   20e0 <fs_do_exit+0x138>
    20e4:	e8 fc ff ff ff       	call   20e5 <fs_do_exit+0x13d>
    20e9:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
    20ec:	8b 55 f8             	mov    0xfffffff8(%ebp),%edx
    20ef:	8b 44 82 70          	mov    0x70(%edx,%eax,4),%eax
    20f3:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
    20fa:	83 45 fc 01          	addl   $0x1,0xfffffffc(%ebp)
    20fe:	83 7d fc 1f          	cmpl   $0x1f,0xfffffffc(%ebp)
    2102:	0f 8e c7 fe ff ff    	jle    1fcf <fs_do_exit+0x27>
    2108:	c9                   	leave  
    2109:	c3                   	ret    
