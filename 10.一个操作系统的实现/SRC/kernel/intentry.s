%include	"const.inc"
extern	hw_int_handler
extern	sw_int_handler
extern	exception_handler
extern	task_current
extern	tss

section	.bss
bits	32
	resb	1024 * 10
global	StackTop
StackTop:				; �ں˶�ջջ��

section	.text
;---------------------------------------------------------------------
; Ĭ���ж����
global	IntHandler
IntHandler:
	pushad
	mov	al,Int_EOI
	out	Int_M_Ctl,al
	out	Int_S_Ctl,al
	
	popad
	iret
;---------------------------------------------------------------------
; �쳣���
global	divide_error
global	single_step_exception
global	nmi
global	breakpoint_exception
global	overflow
global	bounds_check
global	inval_opcode
global	copr_not_available
global	double_fault
global	copr_seg_overrun
global	inval_tss
global	segment_not_present
global	stack_exception
global	general_protection
global	page_fault
global	copr_error
global	ac_error
global	mc_error
global	xf_error

; �����쳣��������в����������жϴ����
; �쳣�������л�����,���Բ��ñ�����̱�,�����쳣�Զ�ѹ���ջ���������4��˫��,����Ҳ�����ƻ����̱��ջ(17��˫��)֮�������
; �����쳣�����,Ҫ�л����ں˶�ջ,������֮���л������̱��ջ
;-----------------------------------------------------------
; �쳣���
%macro	expenter	1		; ��ʱӲ���Զ�ѹ���ջ�����ݺͳ���ѹ������ݶ���׼���á���ջ��һ��4������err_code,eip,cs,eflags
	pushall
	
	mov	esi,cr3		; cr3 �� ��task_current->pdbr
	cmp	esi,SYS_PDB
	je	.ex_st		; if(task_current->pdbr != SYS_PDB)		// ��ʱҳĿ¼Ϊtask_current->pdbr
	mov	esi,SYS_PDB
	mov	cr3,esi		; �л�ҳĿ¼
	
.ex_st	inc	dword	[reenter]	; reenter��ʼ��Ϊ0��������룬����ֵ��һ��Ϊ1
	cmp	dword	[reenter],1
	jne	.excep_pro	; ��� ���룬��ֱ�Ӵ���(�����л���ջ)
	
	mov	ebp,esp
	mov	esp,StackTop	; ���������,�ӽ��̱��л����ں˶�ջ
	
.excep_pro:
	push	dword	[ebp + EFLAGS_OFF]	; eflags	4������ת�Ƶ��ں˶�ջ
	push	dword	[ebp + CS_OFF]	; cs
	push	dword	[ebp + EIP_OFF]	; eip
	push	dword	[ebp + ERR_OFF]	; err_code
	push	%1			; �쳣��
	jmp	exception
%endmacro

divide_error:
	push	0xffffffff	; no err code
	expenter	0		; vector_no
;-----------------------------------------------------------
exception	call	exception_handler	; ������쳣�������
	add	esp,4 * 5		; ����5������
	
	cli
	dec	dword	[reenter]	; �����ж�
	jnz	excep_end		; ���룬�����л���ջ
	
	mov	ebx,[task_current]	; ���ں˶�ջ�л������̱�
	mov	esp,ebx
	add	ebx,SS_OFF + 4
	mov	[tss + TSS_SP0],ebx	; TSS_SP0��SP0��TSS�е�ƫ��
;	lldt	[esp + T_LDT_SEL]	; T_LDT_SEL��ldt_selector�ڽ��̱��е�ƫ��
	
	mov	ebx,[esp + T_PDB_OFF]	; task_current->pdb
	cmp	ebx,SYS_PDB
	je	excep_end			; if(task_current->pdb != SYS_PDB)		// ��ʱҳĿ¼Ϊsys_pdb
	mov	cr3,ebx			; �л�ҳĿ¼
excep_end:
	popall
	add	esp,4		; ����err_code
	iret
;-----------------------------------------------------------
single_step_exception:
	push	0xffffffff
	expenter	1
nmi:
	push	0xffffffff
	expenter	2
breakpoint_exception:
	push	0xffffffff
	expenter	3
overflow:
	push	0xffffffff
	expenter	4
bounds_check:
	push	0xffffffff
	expenter	5
inval_opcode:
	push	0xffffffff
	expenter	6
copr_not_available:
	push	0xffffffff
	expenter	7
double_fault:		; ����쳣�Դ������
	expenter	8
copr_seg_overrun:
	push	0xffffffff
	expenter	9
inval_tss:		; ����쳣�Դ������
	expenter	10
segment_not_present:	; ����쳣�Դ������
	expenter	11
stack_exception:		; ����쳣�Դ������
	expenter	12
general_protection:		; ����쳣�Դ������
	expenter	13
page_fault:		; ����쳣�Դ������
	expenter	14
copr_error:
	push	0xffffffff
	expenter	16
ac_error:			; ����쳣�Դ������
	expenter	17
mc_error:
	push	0xffffffff
	expenter	18
xf_error:
	push	0xffffffff
	expenter	19
;---------------------------------------------------------------------
; ��ȡCR2		U32	get_cr2(void);
global	get_cr2
get_cr2:	mov	eax,cr2
	ret
;---------------------------------------------------------------------
; Ӳ�ж����
global	_hwint00
global	_hwint01
global	_hwint02
global	_hwint03
global	_hwint04
global	_hwint05
global	_hwint06
global	_hwint07
global	_hwint08
global	_hwint09
global	_hwint10
global	_hwint11
global	_hwint12
global	_hwint13
global	_hwint14
global	_hwint15
;-----------------------------------------------------------
; Ӳ�ж�Ӳ���
reenter		dd	0	; �������
%macro	hwenter	1		; �����ڿ��Դ��������Ӳ�ж�
	push	0xffffffff	; ռ��λ��,err_code
	pushall
	
	mov	esi,cr3		; cr3 �� ��task_current->pdbr
	cmp	esi,SYS_PDB
	je	.hw_st		; if(task_current->pdbr != SYS_PDB)
	mov	esi,SYS_PDB
	mov	cr3,esi		; �л�ҳĿ¼
	
.hw_st	inc	dword	[reenter]	; reenter��ʼ��Ϊ0��������룬����ֵ��һ��Ϊ1
	cmp	dword	[reenter],1
	jne	.hw_pro		; ��� ���룬��ֱ�Ӵ����������л���ջ��
	mov	esp,StackTop	; ���������,�ӽ��̱��л����ں˶�ջ
.hw_pro	push	%1		; Ӳ�жϺ�
	jmp	hw_enty
%endmacro
;---------------------------------------------------------------------
hw_enty:	mov	al,Int_EOI	; ������Ӳ�жϹ������
	out	Int_M_Ctl,al
	out	Int_S_Ctl,al
	sti			; ��ʱ���ں�ջ�����Կ��ж�
	
	call	hw_int_handler	; �����жϷ�����
	add	esp,4
	
	cli			; ���жϣ������л������̱������жϵ����ͻ��ƻ����̱�������������Ҫԭ����
	dec	dword	[reenter]	; �����ж�
	jnz	hw_end		; ���룬�����л���ջ
	
	mov	ebx,[task_current]	; ���ں˶�ջ�л������̱�
	mov	esp,ebx
	add	ebx,SS_OFF + 4
	mov	[tss + TSS_SP0],ebx	; TSS_SP0��SP0��TSS�е�ƫ��
;	lldt	[esp + T_LDT_SEL]	; T_LDT_SEL��ldt_selector�ڽ��̱��е�ƫ��
	
	mov	ebx,[esp + T_PDB_OFF]	; task_current->pdb
	cmp	ebx,SYS_PDB
	je	hw_end			; if(task_current->pdbr != SYS_PDB)		// ��ʱҳĿ¼Ϊsys_pdbr
	mov	cr3,ebx			; �л�ҳĿ¼
;---------------------------------------------------------------------
hw_end	popall
	add	esp,4		; ����err_code
	iret
;---------------------------------------------------------------------
; ����ΪӲ�ж�Ӳ���
_hwint00:
	hwenter	0		; ����һ���꺯��
_hwint01:				; hwenter	��������
	hwenter	1		; hwenter	  ������
_hwint02:
	hwenter	2
_hwint03:
	hwenter	3
_hwint04:
	hwenter	4
_hwint05:
	hwenter	5
_hwint06:
	hwenter	6
_hwint07:
	hwenter	7
_hwint08:
	hwenter	8
_hwint09:
	hwenter	9
_hwint10:
	hwenter	10
_hwint11:
	hwenter	11
_hwint12:
	hwenter	12
_hwint13:
	hwenter	13
_hwint14:
	hwenter	14
_hwint15:
	hwenter	15
;---------------------------------------------------------------------
; ���ж�Ӳ���			; ���жϲ��������뵽�����ж��У���Ϊ���ж������û���������ģ������ǲ����ܵ�
%macro	swenter	1		; �����ڿ��Դ�����������ж�
	push	0xffffffff	; ռ��λ��,err_code
	pushall
	
	mov	esi,cr3		; cr3 �� ��task_current->pdbr
	cmp	esi,SYS_PDB
	je	.sw_st		; if(task_current->pdbr != SYS_PDB)		// ��ʱҳĿ¼Ϊtask_current->pdbr
	mov	esi,SYS_PDB
	mov	cr3,esi		; �л�ҳĿ¼
	
.sw_st	inc	dword	[reenter]	; reenter��ʼ��Ϊ0��������룬����ֵ��һ��Ϊ1
	cmp	dword	[reenter],1
	jne	.sw_pro		; ��� ���룬��ֱ�Ӵ����������л���ջ��Ҳ�����л��μĴ�����
	mov	esp,StackTop	; ���������,�ӽ��̱��л����ں˶�ջ
.sw_pro	mov	esi,[task_current]	; ȡ�õ�ǰ����
	sti			; ��ʱ���ں�ջ�����Կ��ж�		����ж��Ƿ��ܿ��������ʱ��һ�����ж�,�������������л�,��ô���������task_current�Ĳ����ͻ����
	pusha			; ���жϲ���
	push	%1		; ���жϺ�
	jmp	sw_enty
%endmacro
;---------------------------------------------------------------------
sw_enty:				; ���������жϹ������
	call	sw_int_handler	; �����жϷ�����	U32 sw_int_handler(U32 eax,U32 sw_no)
	add	esp,4*9		; ����ֵ���жϳ��ڴ�ͨ��mov	[esp + EAX_OFF],eaxд���ջ
	
	cli			; ���жϣ������л������̱������жϵ����ͻ��ƻ����̱�������������Ҫԭ����
	dec	dword	[reenter]	; �����ж�
	jnz	sw_end		; ���룬�����л���ջ
	
	mov	ebx,[task_current]	; ���ں˶�ջ�л������̱�
	mov	esp,ebx
	add	ebx,SS_OFF + 4
	mov	[tss + TSS_SP0],ebx	; TSS_SP0��SP0��TSS�е�ƫ��
;	lldt	[esp + T_LDT_SEL]	; T_LDT_SEL��ldt_selector�ڽ��̱��е�ƫ��
	
	mov	ebx,[esp + T_PDB_OFF]	; task_current->pdb
	cmp	ebx,SYS_PDB		; assert(reenter == 0)	// �������ߵ���һ����reenter�϶���0����reenterΪ0ʱ�����п�����Ҫ�л�ҳĿ¼
	je	sw_end			; if(task_current->pdbr != SYS_PDB)		// ��ʱҳĿ¼Ϊsys_pdbr
	mov	cr3,ebx			; �л�ҳĿ¼
;---------------------------------------------------------------------
sw_end:	mov	[esp + EAX_OFF],eax	; EAX_OFF��eax��pushall��ջ�е�ƫ�ơ�����ֱֵ��д���ջ��
	popall
	add	esp,4		; ����err_code
	iret
;---------------------------------------------------------------------
; ���ж����	0x80
global	_sys_call
_sys_call:
	swenter	0x80
;---------------------------------------------------------------------
; ��ʼ��8259A
global	Init8259
Init8259:	; ICW1
	mov	al,0x11
	out	Int_M_Ctl,al
	out	Int_S_Ctl,al
	; ICW2
	mov	al,Int_M_R	; ��Ƭirp0��Ӧ���ж�����
	out	Int_M_Dat,al
	mov	al,Int_S_R	; ��Ƭirq8��Ӧ���ж�����
	out	Int_S_Dat,al
	; ICW3
	mov	al,0x04
	out	Int_M_Dat,al
	mov	al,0x02
	out	Int_S_Dat,al
	; ICW4
	mov	al,0x1
	out	Int_M_Dat,al
	out	Int_S_Dat,al
	; OCW1
	mov	al,0xf8	; �򿪣���ʱ�������̡�irq2�ж�
	;mov	al,0xff	; ������Ƭ�����ж�
	out	Int_M_Dat,al
	mov	al,0xbf	; �򿪣�Ӳ���ж�
	;mov	al,0xff	; ���δ�Ƭ�����ж�
	out	Int_S_Dat,al
	ret
;---------------------------------------------------------------------

