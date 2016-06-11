
kernel.o:     file format elf32-i386

Disassembly of section .text:

00000000 <_start>:
   0:	bc 00 00 00 00       	mov    $0x0,%esp
   5:	e8 4a 00 00 00       	call   54 <InitPaging>
   a:	e8 fc ff ff ff       	call   b <_start+0xb>
   f:	0f 01 15 00 00 00 00 	lgdtl  0x0
  16:	66 b8 08 00          	mov    $0x8,%ax
  1a:	8e d8                	movl   %eax,%ds
  1c:	8e c0                	movl   %eax,%es
  1e:	8e e0                	movl   %eax,%fs
  20:	8e e8                	movl   %eax,%gs
  22:	8e d0                	movl   %eax,%ss
  24:	ea 2b 00 00 00 10 00 	ljmp   $0x10,$0x2b

0000002b <csinit>:
  2b:	6a 00                	push   $0x0
  2d:	9d                   	popf   
  2e:	e8 fc ff ff ff       	call   2f <csinit+0x4>
  33:	0f 01 1d 00 00 00 00 	lidtl  0x0

0000003a <multitask_start>:
  3a:	66 b8 28 00          	mov    $0x28,%ax
  3e:	0f 00 d8             	ltr    %ax
  41:	8b 25 00 00 00 00    	mov    0x0,%esp
  47:	0f a9                	pop    %gs
  49:	0f a1                	pop    %fs
  4b:	07                   	pop    %es
  4c:	1f                   	pop    %ds
  4d:	61                   	popa   
  4e:	83 c4 04             	add    $0x4,%esp
  51:	cf                   	iret   
  52:	eb fe                	jmp    52 <multitask_start+0x18>

00000054 <InitPaging>:
  54:	b9 08 00 00 00       	mov    $0x8,%ecx
  59:	bf 00 00 00 00       	mov    $0x0,%edi
  5e:	b8 07 10 00 00       	mov    $0x1007,%eax

00000063 <lopPDIR>:
  63:	89 07                	mov    %eax,(%edi)
  65:	05 00 10 00 00       	add    $0x1000,%eax
  6a:	83 c7 04             	add    $0x4,%edi
  6d:	49                   	dec    %ecx
  6e:	75 f3                	jne    63 <lopPDIR>
  70:	b9 00 20 00 00       	mov    $0x2000,%ecx
  75:	bf 00 10 00 00       	mov    $0x1000,%edi
  7a:	b8 07 00 00 00       	mov    $0x7,%eax

0000007f <lopPTAB>:
  7f:	26 89 07             	mov    %eax,%es:(%edi)
  82:	05 00 10 00 00       	add    $0x1000,%eax
  87:	83 c7 04             	add    $0x4,%edi
  8a:	49                   	dec    %ecx
  8b:	75 f2                	jne    7f <lopPTAB>
  8d:	0f 20 d8             	mov    %cr3,%eax
  90:	25 ff 0f 00 00       	and    $0xfff,%eax
  95:	83 c8 00             	or     $0x0,%eax
  98:	0f 22 d8             	mov    %eax,%cr3
  9b:	0f 20 c0             	mov    %cr0,%eax
  9e:	0d 00 00 00 80       	or     $0x80000000,%eax
  a3:	0f 22 c0             	mov    %eax,%cr0
  a6:	c3                   	ret    
