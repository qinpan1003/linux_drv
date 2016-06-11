;-----------------------------------------------------------
; 通用描述符
; %1	段基址	dword	32位有效
; %2	段界限	dword	低20位有效
; %3	属性	word	高字节的低4位无效
%macro	Descriptor	3
	dw	%2 & 0xffff
	dw	%1 & 0xffff
	db	(%1>>16)&0xff
	dw	%3 & 0xf0ff | (%2 >>8)&0xf00
	db	(%1>>24)&0xff
%endmacro
;-----------------------------------------------------------
; 门描述符
; %1	选择符	word	16位有效
; %2	偏移	dword	32位有效
; %3	PCount	byte	低5位有效
; %4	属性	byte	8位有效
%macro	Gate	4
	dw	%2 & 0xffff
	dw	%1 & 0xffff
	db	%3 & 0x1f
	db	%4 & 0xff
	dw	(%2 >> 16) & 0xffff
%endmacro
;-----------------------------------------------------------
; 描述符属性1	属性 = 属性1 + 属性2 + 属性3
%define	DA_32	0x4000	; 32位段
%define	DA_16	0x0000	; 16位段
%define	DA_4K	0x8000	; 粒度4KB
; 描述符属性2
%define	DA_DPL0	0x00	; DPL = 0
%define	DA_DPL1	0x20	; DPL = 1
%define	DA_DPL2	0x40	; DPL = 2
%define	DA_DPL3	0x60	; DPL = 3
; 描述符属性3
;-------------------存储段描述符
%define	DA_C	0x99	; 存在的  不可读、非一致代码段
%define	DA_CR	0x9b	; 存在的  可读取、非一致代码段
%define	DA_CCO	0x9d	; 存在的  不可读、  一致代码段
%define	DA_CCOR	0x9f	; 存在的  可读取、  一致代码段

%define	DA_DR	0x91	; 存在的  只读数据段
%define	DA_DRW	0x93	; 存在的  可读写数据段
%define	DA_SRW	0x97	; 存在的  堆栈段	----------这个有问题！！实践发现，堆栈段应该用DA_DRW
;-------------------系统级描述符
%define	DA_LDT		0x82	; 存在的  局部描述符
%define	DA_TaskGate	0x85	; 存在的  任务门
%define	DA_386TSS		0x89	; 存在的  386 TSS
%define	DA_386CGate	0x8c	; 存在的  386 调用门
%define	DA_386IGate	0x8e	; 存在的  386 中断门
%define	DA_386TGate	0x8f	; 存在的  386 陷阱门
;-----------------------------------------------------------
; 初始化描述符的段基址
; %1描述符在描述符表中的偏移地址
; %2段基址
%macro	InitBase	2
	xor	eax,eax
	mov	ax,cs
	shl	eax,4
	add	eax,%2
	mov	word [%1 + 2],ax
	shr	eax,16
	mov	byte [%1 + 4],al
	mov	byte [%1 + 7],ah
%endmacro
;-----------------------------------------------------------
; 选择符属性
%define	S_TI	4	; 局部选择符
%define	S_0	0	; DPL0
%define	S_1	1	; DPL1
%define	S_2	2	; DPL2
%define	S_3	3	; DPL3
;-----------------------------------------------------------
; 中断8259A
%define	Int_M_Ctl	0x20	; 主片控制地址
%define	Int_S_Ctl	0xa0	; 主片数据地址
%define	Int_M_Dat	0x21	; 从片控制地址
%define	Int_S_Dat	0xa1	; 从片数据地址
%define	Int_EOI	0x20	; EOI
%define	Int_M_R	0x20	; 主片irp0对应的中断向量
%define	Int_S_R	0x28	; 从片irq8对应的中断向量

