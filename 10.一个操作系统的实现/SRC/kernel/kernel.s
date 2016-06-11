%include	"const.inc"
%include	"page.inc"
%include	"pm.inc"
extern	StackTop
extern	gdt_para
extern	idt_para
extern	start
extern	Init8259
extern	task_current

section	.data
bits	32
;------------------------------------------------------------------------------------------------------------------------------------------------------
; 全局描述符段	GDT
;------------------------------------------------------------------------------------------------------------------------------------------------------
global	empty_gdt
global	TSS_gdt
; GDT 存储段描述符			段基址		段界限		属性
empty_gdt		Descriptor	0	,	0	,	0
SysD_gdt		Descriptor	0,		0xfffff	,	DA_32 + DA_DRW  + DA_4K + DA_DPL0	; 内核	数据段
SysC_gdt		Descriptor	0,		0xfffff	,	DA_32 + DA_CR   + DA_4K + DA_DPL0	; 内核	代码段
UsrD_gdt		Descriptor	0,		0xfffff	,	DA_32 + DA_DRW  + DA_4K + DA_DPL3	; 用户	数据段
UsrC_gdt		Descriptor	0,		0xfffff	,	DA_32 + DA_CR   + DA_4K + DA_DPL3	; 用户	代码段
TSS_gdt		Descriptor	0,		0	,	DA_386TSS
;------------------------------------------------------------------------------------------------------------------------------------------------------

section	.text
bits	32

global	_start
_start:

	mov	esp,StackTop	; 把ESP转移到Kernel
	
	call	InitPaging	; 开启分页机制(对等映射)
	
	call	start		; 
	
	lgdt	[gdt_para]	; 加载新的GDT
	
	mov	ax,Selector_Kernel_DS
	mov	ds,ax
	mov	es,ax
	mov	fs,ax
	mov	gs,ax
	mov	ss,ax
	
	jmp	Selector_Kernel_CS:csinit	; 这个跳转用于刷新 CS，加载新的CS
csinit:
	push	0
	popfd	
	
	call	Init8259		; 初始化中断系统
	lidt	[idt_para]
;---------------------------------------------------------------------
; 开启多任务
multitask_start:
	mov	ax,Selector_TSS
	ltr	ax
	mov	esp,[task_current]
;	lldt	[esp  + T_LDT_SEL]
	
	popall
	add	esp,4
	iret		; 这条指令弹出的eflags包括开中断
	
	jmp	$

; void InitPaging(void)
; 初始化页目录、页表，开启分页机制
InitPaging:
	; 页目录项
	mov	ecx,NR_PDE
	mov	edi,SYS_PDB
	mov	eax,SYS_PTB + PG_P + PG_RW + PG_US
lopPDIR	mov	[edi],eax
	add	eax,4*1024
	add	edi,4
	dec	ecx
	jnz	lopPDIR
	; 页表项
	mov	ecx,NR_PTE
	mov	edi,SYS_PTB
	mov	eax,PG_P + PG_RW + PG_US
lopPTAB	mov	[es:edi],eax
	add	eax,4*1024
	add	edi,4
	dec	ecx
	jnz	lopPTAB
	; 开启分页机制
	mov	eax,cr3
	and	eax,0xfff
	or	eax,SYS_PDB
	mov	cr3,eax
	mov	eax,cr0
	or	eax,0x80000000
	mov	cr0,eax
	ret

