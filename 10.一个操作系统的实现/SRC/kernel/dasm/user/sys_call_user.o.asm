
user/sys_call_user.o:     file format elf32-i386

Disassembly of section .text:

00000000 <sendrecv>:
   0:	b8 00 00 00 00       	mov    $0x0,%eax
   5:	8b 5c 24 04          	mov    0x4(%esp),%ebx
   9:	8b 4c 24 08          	mov    0x8(%esp),%ecx
   d:	8b 54 24 0c          	mov    0xc(%esp),%edx
  11:	cd 80                	int    $0x80
  13:	c3                   	ret    

00000014 <do_write>:
  14:	b8 01 00 00 00       	mov    $0x1,%eax
  19:	8b 5c 24 04          	mov    0x4(%esp),%ebx
  1d:	cd 80                	int    $0x80
  1f:	c3                   	ret    

00000020 <waiting>:
  20:	b8 02 00 00 00       	mov    $0x2,%eax
  25:	8b 5c 24 04          	mov    0x4(%esp),%ebx
  29:	cd 80                	int    $0x80
  2b:	c3                   	ret    

0000002c <set_pdb>:
  2c:	b8 03 00 00 00       	mov    $0x3,%eax
  31:	8b 5c 24 04          	mov    0x4(%esp),%ebx
  35:	cd 80                	int    $0x80
  37:	c3                   	ret    
