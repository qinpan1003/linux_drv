
swint.o:     file format elf32-i386

Disassembly of section .text:

00000000 <sw_int_handler>:
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 ec 28             	sub    $0x28,%esp
   6:	81 7d 08 80 00 00 00 	cmpl   $0x80,0x8(%ebp)
   d:	75 3a                	jne    49 <sw_int_handler+0x49>
   f:	8b 45 28             	mov    0x28(%ebp),%eax
  12:	8b 14 85 00 00 00 00 	mov    0x0(,%eax,4),%edx
  19:	8b 45 24             	mov    0x24(%ebp),%eax
  1c:	89 44 24 14          	mov    %eax,0x14(%esp)
  20:	8b 45 20             	mov    0x20(%ebp),%eax
  23:	89 44 24 10          	mov    %eax,0x10(%esp)
  27:	8b 45 1c             	mov    0x1c(%ebp),%eax
  2a:	89 44 24 0c          	mov    %eax,0xc(%esp)
  2e:	8b 45 14             	mov    0x14(%ebp),%eax
  31:	89 44 24 08          	mov    %eax,0x8(%esp)
  35:	8b 45 10             	mov    0x10(%ebp),%eax
  38:	89 44 24 04          	mov    %eax,0x4(%esp)
  3c:	8b 45 0c             	mov    0xc(%ebp),%eax
  3f:	89 04 24             	mov    %eax,(%esp)
  42:	ff d2                	call   *%edx
  44:	89 45 fc             	mov    %eax,0xfffffffc(%ebp)
  47:	eb 07                	jmp    50 <sw_int_handler+0x50>
  49:	c7 45 fc 00 00 00 00 	movl   $0x0,0xfffffffc(%ebp)
  50:	8b 45 fc             	mov    0xfffffffc(%ebp),%eax
  53:	c9                   	leave  
  54:	c3                   	ret    
