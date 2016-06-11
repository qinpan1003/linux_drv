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
; ȫ����������	GDT
;------------------------------------------------------------------------------------------------------------------------------------------------------
global	empty_gdt
global	TSS_gdt
; GDT �洢��������			�λ�ַ		�ν���		����
empty_gdt		Descriptor	0	,	0	,	0
SysD_gdt		Descriptor	0,		0xfffff	,	DA_32 + DA_DRW  + DA_4K + DA_DPL0	; �ں�	���ݶ�
SysC_gdt		Descriptor	0,		0xfffff	,	DA_32 + DA_CR   + DA_4K + DA_DPL0	; �ں�	�����
UsrD_gdt		Descriptor	0,		0xfffff	,	DA_32 + DA_DRW  + DA_4K + DA_DPL3	; �û�	���ݶ�
UsrC_gdt		Descriptor	0,		0xfffff	,	DA_32 + DA_CR   + DA_4K + DA_DPL3	; �û�	�����
TSS_gdt		Descriptor	0,		0	,	DA_386TSS
;------------------------------------------------------------------------------------------------------------------------------------------------------

section	.text
bits	32

global	_start
_start:

	mov	esp,StackTop	; ��ESPת�Ƶ�Kernel
	
	call	InitPaging	; ������ҳ����(�Ե�ӳ��)
	
	call	start		; 
	
	lgdt	[gdt_para]	; �����µ�GDT
	
	mov	ax,Selector_Kernel_DS
	mov	ds,ax
	mov	es,ax
	mov	fs,ax
	mov	gs,ax
	mov	ss,ax
	
	jmp	Selector_Kernel_CS:csinit	; �����ת����ˢ�� CS�������µ�CS
csinit:
	push	0
	popfd	
	
	call	Init8259		; ��ʼ���ж�ϵͳ
	lidt	[idt_para]
;---------------------------------------------------------------------
; ����������
multitask_start:
	mov	ax,Selector_TSS
	ltr	ax
	mov	esp,[task_current]
;	lldt	[esp  + T_LDT_SEL]
	
	popall
	add	esp,4
	iret		; ����ָ�����eflags�������ж�
	
	jmp	$

; void InitPaging(void)
; ��ʼ��ҳĿ¼��ҳ��������ҳ����
InitPaging:
	; ҳĿ¼��
	mov	ecx,NR_PDE
	mov	edi,SYS_PDB
	mov	eax,SYS_PTB + PG_P + PG_RW + PG_US
lopPDIR	mov	[edi],eax
	add	eax,4*1024
	add	edi,4
	dec	ecx
	jnz	lopPDIR
	; ҳ����
	mov	ecx,NR_PTE
	mov	edi,SYS_PTB
	mov	eax,PG_P + PG_RW + PG_US
lopPTAB	mov	[es:edi],eax
	add	eax,4*1024
	add	edi,4
	dec	ecx
	jnz	lopPTAB
	; ������ҳ����
	mov	eax,cr3
	and	eax,0xfff
	or	eax,SYS_PDB
	mov	cr3,eax
	mov	eax,cr0
	or	eax,0x80000000
	mov	cr0,eax
	ret

