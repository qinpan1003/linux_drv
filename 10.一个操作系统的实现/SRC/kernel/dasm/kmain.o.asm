
kmain.o:     file format elf32-i386

Disassembly of section .text:

00000000 <kmain>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	c7 04 24 0f 00 00 00 	movl   $0xf,(%esp)
   d:	e8 fc ff ff ff       	call   e <kmain+0xe>
  12:	a1 00 00 00 00       	mov    0x0,%eax
  17:	89 04 24             	mov    %eax,(%esp)
  1a:	e8 fc ff ff ff       	call   1b <kmain+0x1b>
  1f:	c7 04 24 16 00 00 00 	movl   $0x16,(%esp)
  26:	e8 fc ff ff ff       	call   27 <kmain+0x27>
  2b:	c7 44 24 08 cd 3a 02 	movl   $0x1023acd,0x8(%esp)
  32:	01 
  33:	c7 44 24 04 2a 00 00 	movl   $0x2a,0x4(%esp)
  3a:	00 
  3b:	c7 04 24 3e 00 00 00 	movl   $0x3e,(%esp)
  42:	e8 fc ff ff ff       	call   43 <kmain+0x43>
  47:	c7 04 24 51 00 00 00 	movl   $0x51,(%esp)
  4e:	e8 fc ff ff ff       	call   4f <kmain+0x4f>
  53:	c7 04 24 5c 00 00 00 	movl   $0x5c,(%esp)
  5a:	e8 fc ff ff ff       	call   5b <kmain+0x5b>
  5f:	c7 44 24 04 08 00 00 	movl   $0x8,0x4(%esp)
  66:	00 
  67:	c7 04 24 68 00 00 00 	movl   $0x68,(%esp)
  6e:	e8 fc ff ff ff       	call   6f <kmain+0x6f>
  73:	c7 44 24 04 08 00 00 	movl   $0x8,0x4(%esp)
  7a:	00 
  7b:	c7 04 24 84 00 00 00 	movl   $0x84,(%esp)
  82:	e8 fc ff ff ff       	call   83 <kmain+0x83>
  87:	c7 44 24 04 15 cd 5b 	movl   $0x75bcd15,0x4(%esp)
  8e:	07 
  8f:	c7 04 24 a0 00 00 00 	movl   $0xa0,(%esp)
  96:	e8 fc ff ff ff       	call   97 <kmain+0x97>
  9b:	a1 00 00 00 00       	mov    0x0,%eax
  a0:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
  a6:	8b 50 08             	mov    0x8(%eax),%edx
  a9:	a1 00 00 00 00       	mov    0x0,%eax
  ae:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
  b4:	8b 40 04             	mov    0x4(%eax),%eax
  b7:	8d 0c 02             	lea    (%edx,%eax,1),%ecx
  ba:	c7 45 fc 67 66 66 66 	movl   $0x66666667,0xfffffffc(%ebp)
  c1:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
  c4:	f7 e9                	imul   %ecx
  c6:	c1 fa 06             	sar    $0x6,%edx
  c9:	89 c8                	mov    %ecx,%eax
  cb:	c1 f8 1f             	sar    $0x1f,%eax
  ce:	89 d1                	mov    %edx,%ecx
  d0:	29 c1                	sub    %eax,%ecx
  d2:	89 c8                	mov    %ecx,%eax
  d4:	89 44 24 04          	mov    %eax,0x4(%esp)
  d8:	c7 04 24 a4 00 00 00 	movl   $0xa4,(%esp)
  df:	e8 fc ff ff ff       	call   e0 <kmain+0xe0>
  e4:	b8 00 00 00 00       	mov    $0x0,%eax
  e9:	c9                   	leave  
  ea:	c3                   	ret    
