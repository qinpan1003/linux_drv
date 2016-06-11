
assert.o:     file format elf32-i386

Disassembly of section .text:

00000000 <assertfail>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 18             	sub    $0x18,%esp
   6:	8b 45 14             	mov    0x14(%ebp),%eax
   9:	89 44 24 0c          	mov    %eax,0xc(%esp)
   d:	8b 45 0c             	mov    0xc(%ebp),%eax
  10:	89 44 24 08          	mov    %eax,0x8(%esp)
  14:	8b 45 08             	mov    0x8(%ebp),%eax
  17:	89 44 24 04          	mov    %eax,0x4(%esp)
  1b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  22:	e8 fc ff ff ff       	call   23 <assertfail+0x23>
  27:	e8 fc ff ff ff       	call   28 <assertfail+0x28>
  2c:	eb fe                	jmp    2c <assertfail+0x2c>
