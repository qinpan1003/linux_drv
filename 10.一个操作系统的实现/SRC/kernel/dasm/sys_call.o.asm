
sys_call.o:     file format elf32-i386

Disassembly of section .text:

00000000 <sys_sendrecv>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	8b 45 0c             	mov    0xc(%ebp),%eax
   9:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
   c:	8b 45 18             	mov    0x18(%ebp),%eax
   f:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
  12:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
  16:	74 0a                	je     22 <sys_sendrecv+0x22>
  18:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
  1c:	0f 85 ae 00 00 00    	jne    d0 <sys_sendrecv+0xd0>
  22:	e8 fc ff ff ff       	call   23 <sys_sendrecv+0x23>
  27:	e8 fc ff ff ff       	call   28 <sys_sendrecv+0x28>
  2c:	25 00 02 00 00       	and    $0x200,%eax
  31:	85 c0                	test   %eax,%eax
  33:	75 09                	jne    3e <sys_sendrecv+0x3e>
  35:	a1 00 00 00 00       	mov    0x0,%eax
  3a:	85 c0                	test   %eax,%eax
  3c:	75 24                	jne    62 <sys_sendrecv+0x62>
  3e:	c7 44 24 0c 13 00 00 	movl   $0x13,0xc(%esp)
  45:	00 
  46:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
  4d:	00 
  4e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
  55:	00 
  56:	c7 04 24 0b 00 00 00 	movl   $0xb,(%esp)
  5d:	e8 fc ff ff ff       	call   5e <sys_sendrecv+0x5e>
  62:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
  65:	8b 50 48             	mov    0x48(%eax),%edx
  68:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
  6b:	89 44 24 04          	mov    %eax,0x4(%esp)
  6f:	89 14 24             	mov    %edx,(%esp)
  72:	e8 fc ff ff ff       	call   73 <sys_sendrecv+0x73>
  77:	89 c2                	mov    %eax,%edx
  79:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
  7c:	8b 40 4c             	mov    0x4c(%eax),%eax
  7f:	89 02                	mov    %eax,(%edx)
  81:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
  84:	8b 50 48             	mov    0x48(%eax),%edx
  87:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
  8a:	89 44 24 04          	mov    %eax,0x4(%esp)
  8e:	89 14 24             	mov    %edx,(%esp)
  91:	e8 fc ff ff ff       	call   92 <sys_sendrecv+0x92>
  96:	89 c2                	mov    %eax,%edx
  98:	8b 45 1c             	mov    0x1c(%ebp),%eax
  9b:	89 42 04             	mov    %eax,0x4(%edx)
  9e:	e8 fc ff ff ff       	call   9f <sys_sendrecv+0x9f>
  a3:	8b 45 14             	mov    0x14(%ebp),%eax
  a6:	0f b6 d0             	movzbl %al,%edx
  a9:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
  ac:	8b 40 4c             	mov    0x4c(%eax),%eax
  af:	89 c1                	mov    %eax,%ecx
  b1:	89 54 24 0c          	mov    %edx,0xc(%esp)
  b5:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
  b8:	89 44 24 08          	mov    %eax,0x8(%esp)
  bc:	89 4c 24 04          	mov    %ecx,0x4(%esp)
  c0:	8b 45 1c             	mov    0x1c(%ebp),%eax
  c3:	89 04 24             	mov    %eax,(%esp)
  c6:	e8 fc ff ff ff       	call   c7 <sys_sendrecv+0xc7>
  cb:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
  ce:	eb 54                	jmp    124 <sys_sendrecv+0x124>
  d0:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
  d4:	75 23                	jne    f9 <sys_sendrecv+0xf9>
  d6:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
  d9:	8b 40 4c             	mov    0x4c(%eax),%eax
  dc:	89 c2                	mov    %eax,%edx
  de:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
  e1:	89 44 24 08          	mov    %eax,0x8(%esp)
  e5:	8b 45 1c             	mov    0x1c(%ebp),%eax
  e8:	89 44 24 04          	mov    %eax,0x4(%esp)
  ec:	89 14 24             	mov    %edx,(%esp)
  ef:	e8 fc ff ff ff       	call   f0 <sys_sendrecv+0xf0>
  f4:	89 45 ec             	mov    %eax,0xffffffec(%ebp)
  f7:	eb 2b                	jmp    124 <sys_sendrecv+0x124>
  f9:	c7 44 24 0c 1f 00 00 	movl   $0x1f,0xc(%esp)
 100:	00 
 101:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 108:	00 
 109:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 110:	00 
 111:	c7 04 24 12 00 00 00 	movl   $0x12,(%esp)
 118:	e8 fc ff ff ff       	call   119 <sys_sendrecv+0x119>
 11d:	c7 45 ec ff ff ff ff 	movl   $0xffffffff,0xffffffec(%ebp)
 124:	8b 45 ec             	mov    0xffffffec(%ebp),%eax
 127:	c9                   	leave  
 128:	c3                   	ret    

00000129 <sys_do_write>:
 129:	55                   	push   %ebp
 12a:	89 e5                	mov    %esp,%ebp
 12c:	83 ec 28             	sub    $0x28,%esp
 12f:	e8 fc ff ff ff       	call   130 <sys_do_write+0x7>
 134:	a1 00 00 00 00       	mov    0x0,%eax
 139:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
 13f:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 142:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 145:	8b 10                	mov    (%eax),%edx
 147:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 14a:	8b 40 04             	mov    0x4(%eax),%eax
 14d:	01 c2                	add    %eax,%edx
 14f:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 152:	8b 40 08             	mov    0x8(%eax),%eax
 155:	8d 04 02             	lea    (%edx,%eax,1),%eax
 158:	89 45 f4             	mov    %eax,0xfffffff4(%ebp)
 15b:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 15e:	8b 40 0c             	mov    0xc(%eax),%eax
 161:	89 45 f8             	mov    %eax,0xfffffff8(%ebp)
 164:	8b 55 14             	mov    0x14(%ebp),%edx
 167:	8b 45 0c             	mov    0xc(%ebp),%eax
 16a:	8b 40 48             	mov    0x48(%eax),%eax
 16d:	89 54 24 04          	mov    %edx,0x4(%esp)
 171:	89 04 24             	mov    %eax,(%esp)
 174:	e8 fc ff ff ff       	call   175 <sys_do_write+0x4c>
 179:	89 c2                	mov    %eax,%edx
 17b:	8b 45 f8             	mov    0xfffffff8(%ebp),%eax
 17e:	89 44 24 08          	mov    %eax,0x8(%esp)
 182:	8b 45 f4             	mov    0xfffffff4(%ebp),%eax
 185:	89 44 24 04          	mov    %eax,0x4(%esp)
 189:	89 14 24             	mov    %edx,(%esp)
 18c:	e8 fc ff ff ff       	call   18d <sys_do_write+0x64>
 191:	89 c2                	mov    %eax,%edx
 193:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 196:	8b 00                	mov    (%eax),%eax
 198:	29 c2                	sub    %eax,%edx
 19a:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 19d:	8b 40 04             	mov    0x4(%eax),%eax
 1a0:	29 c2                	sub    %eax,%edx
 1a2:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 1a5:	89 50 08             	mov    %edx,0x8(%eax)
 1a8:	c7 05 00 00 00 00 01 	movl   $0x1,0x0
 1af:	00 00 00 
 1b2:	e8 fc ff ff ff       	call   1b3 <sys_do_write+0x8a>
 1b7:	a1 00 00 00 00       	mov    0x0,%eax
 1bc:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
 1c2:	3d 00 00 00 00       	cmp    $0x0,%eax
 1c7:	75 05                	jne    1ce <sys_do_write+0xa5>
 1c9:	e8 fc ff ff ff       	call   1ca <sys_do_write+0xa1>
 1ce:	b8 00 00 00 00       	mov    $0x0,%eax
 1d3:	c9                   	leave  
 1d4:	c3                   	ret    

000001d5 <sys_waiting>:
 1d5:	55                   	push   %ebp
 1d6:	89 e5                	mov    %esp,%ebp
 1d8:	83 ec 18             	sub    $0x18,%esp
 1db:	8b 45 0c             	mov    0xc(%ebp),%eax
 1de:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
 1e1:	e8 fc ff ff ff       	call   1e2 <sys_waiting+0xd>
 1e6:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 1e9:	8b 40 54             	mov    0x54(%eax),%eax
 1ec:	85 c0                	test   %eax,%eax
 1ee:	75 1b                	jne    20b <sys_waiting+0x36>
 1f0:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
 1f3:	c7 40 54 04 00 00 00 	movl   $0x4,0x54(%eax)
 1fa:	8b 55 fc             	mov    0xfffffffc(%ebp),%edx
 1fd:	8b 45 14             	mov    0x14(%ebp),%eax
 200:	89 82 f8 00 00 00    	mov    %eax,0xf8(%edx)
 206:	e8 fc ff ff ff       	call   207 <sys_waiting+0x32>
 20b:	e8 fc ff ff ff       	call   20c <sys_waiting+0x37>
 210:	b8 00 00 00 00       	mov    $0x0,%eax
 215:	c9                   	leave  
 216:	c3                   	ret    
