
start.o:     file format elf32-i386

Disassembly of section .text:

00000000 <start>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	c7 05 00 00 00 00 00 	movl   $0x0,0x0
   d:	00 00 00 
  10:	b8 00 00 00 00       	mov    $0x0,%eax
  15:	66 c7 00 30 00       	movw   $0x30,(%eax)
  1a:	b8 02 00 00 00       	mov    $0x2,%eax
  1f:	89 c2                	mov    %eax,%edx
  21:	b8 00 00 00 00       	mov    $0x0,%eax
  26:	89 02                	mov    %eax,(%edx)
  28:	b8 00 00 00 00       	mov    $0x0,%eax
  2d:	89 c2                	mov    %eax,%edx
  2f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  34:	21 d0                	and    %edx,%eax
  36:	66 a3 00 00 00 00    	mov    %ax,0x0
  3c:	66 c7 05 02 00 00 00 	movw   $0x10,0x2
  43:	10 00 
  45:	c6 05 04 00 00 00 00 	movb   $0x0,0x4
  4c:	c6 05 05 00 00 00 8e 	movb   $0x8e,0x5
  53:	b8 00 00 00 00       	mov    $0x0,%eax
  58:	c1 f8 10             	sar    $0x10,%eax
  5b:	89 c2                	mov    %eax,%edx
  5d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  62:	21 d0                	and    %edx,%eax
  64:	66 a3 06 00 00 00    	mov    %ax,0x6
  6a:	c7 45 fc 01 00 00 00 	movl   $0x1,0xfffffffc(%ebp)
  71:	eb 20                	jmp    93 <start+0x93>
  73:	8b 4d fc             	mov    0xfffffffc(%ebp),%ecx
  76:	a1 00 00 00 00       	mov    0x0,%eax
  7b:	8b 15 04 00 00 00    	mov    0x4,%edx
  81:	89 04 cd 00 00 00 00 	mov    %eax,0x0(,%ecx,8)
  88:	89 14 cd 04 00 00 00 	mov    %edx,0x4(,%ecx,8)
  8f:	83 45 fc 01          	addl   $0x1,0xfffffffc(%ebp)
  93:	81 7d fc ff 00 00 00 	cmpl   $0xff,0xfffffffc(%ebp)
  9a:	7e d7                	jle    73 <start+0x73>
  9c:	b8 00 00 00 00       	mov    $0x0,%eax
  a1:	66 c7 00 00 08       	movw   $0x800,(%eax)
  a6:	b8 02 00 00 00       	mov    $0x2,%eax
  ab:	89 c2                	mov    %eax,%edx
  ad:	b8 00 00 00 00       	mov    $0x0,%eax
  b2:	89 02                	mov    %eax,(%edx)
  b4:	e8 fc ff ff ff       	call   b5 <start+0xb5>
  b9:	e8 fc ff ff ff       	call   ba <start+0xba>
  be:	e8 fc ff ff ff       	call   bf <start+0xbf>
  c3:	e8 fc ff ff ff       	call   c4 <start+0xc4>
  c8:	e8 fc ff ff ff       	call   c9 <start+0xc9>
  cd:	e8 fc ff ff ff       	call   ce <start+0xce>
  d2:	e8 fc ff ff ff       	call   d3 <start+0xd3>
  d7:	e8 fc ff ff ff       	call   d8 <start+0xd8>
  dc:	c9                   	leave  
  dd:	c3                   	ret    
