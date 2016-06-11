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
StackTop:				; 内核堆栈栈顶

section	.text
;---------------------------------------------------------------------
; 默认中断入口
global	IntHandler
IntHandler:
	pushad
	mov	al,Int_EOI
	out	Int_M_Ctl,al
	out	Int_S_Ctl,al
	
	popad
	iret
;---------------------------------------------------------------------
; 异常入口
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

; 所有异常处理过程中不允许其他中断打进来
; 异常处理不用切换任务,所以不用保存进程表,而且异常自动压入堆栈的数据最多4个双字,所以也不会破坏进程表堆栈(17个双字)之外的数据
; 进入异常处理后,要切换到内核堆栈,处理完之后切换到进程表堆栈
;-----------------------------------------------------------
; 异常入口
%macro	expenter	1		; 此时硬件自动压入堆栈的数据和程序压入的数据都已准备好。堆栈中一共4个数据err_code,eip,cs,eflags
	pushall
	
	mov	esi,cr3		; cr3 即 ：task_current->pdbr
	cmp	esi,SYS_PDB
	je	.ex_st		; if(task_current->pdbr != SYS_PDB)		// 此时页目录为task_current->pdbr
	mov	esi,SYS_PDB
	mov	cr3,esi		; 切换页目录
	
.ex_st	inc	dword	[reenter]	; reenter初始化为0，如果重入，则其值加一后不为1
	cmp	dword	[reenter],1
	jne	.excep_pro	; 如果 重入，则直接处理。(不用切换堆栈)
	
	mov	ebp,esp
	mov	esp,StackTop	; 如果非重入,从进程表切换到内核堆栈
	
.excep_pro:
	push	dword	[ebp + EFLAGS_OFF]	; eflags	4个数据转移到内核堆栈
	push	dword	[ebp + CS_OFF]	; cs
	push	dword	[ebp + EIP_OFF]	; eip
	push	dword	[ebp + ERR_OFF]	; err_code
	push	%1			; 异常号
	jmp	exception
%endmacro

divide_error:
	push	0xffffffff	; no err code
	expenter	0		; vector_no
;-----------------------------------------------------------
exception	call	exception_handler	; 这个是异常公共入口
	add	esp,4 * 5		; 丢弃5个数据
	
	cli
	dec	dword	[reenter]	; 重入判断
	jnz	excep_end		; 重入，则不用切换堆栈
	
	mov	ebx,[task_current]	; 从内核堆栈切换到进程表
	mov	esp,ebx
	add	ebx,SS_OFF + 4
	mov	[tss + TSS_SP0],ebx	; TSS_SP0是SP0在TSS中的偏移
;	lldt	[esp + T_LDT_SEL]	; T_LDT_SEL是ldt_selector在进程表中的偏移
	
	mov	ebx,[esp + T_PDB_OFF]	; task_current->pdb
	cmp	ebx,SYS_PDB
	je	excep_end			; if(task_current->pdb != SYS_PDB)		// 此时页目录为sys_pdb
	mov	cr3,ebx			; 切换页目录
excep_end:
	popall
	add	esp,4		; 丢弃err_code
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
double_fault:		; 这个异常自带错误号
	expenter	8
copr_seg_overrun:
	push	0xffffffff
	expenter	9
inval_tss:		; 这个异常自带错误号
	expenter	10
segment_not_present:	; 这个异常自带错误号
	expenter	11
stack_exception:		; 这个异常自带错误号
	expenter	12
general_protection:		; 这个异常自带错误号
	expenter	13
page_fault:		; 这个异常自带错误号
	expenter	14
copr_error:
	push	0xffffffff
	expenter	16
ac_error:			; 这个异常自带错误号
	expenter	17
mc_error:
	push	0xffffffff
	expenter	18
xf_error:
	push	0xffffffff
	expenter	19
;---------------------------------------------------------------------
; 获取CR2		U32	get_cr2(void);
global	get_cr2
get_cr2:	mov	eax,cr2
	ret
;---------------------------------------------------------------------
; 硬中断入口
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
; 硬中断硬入口
reenter		dd	0	; 重入次数
%macro	hwenter	1		; 这个入口可以处理重入的硬中断
	push	0xffffffff	; 占个位置,err_code
	pushall
	
	mov	esi,cr3		; cr3 即 ：task_current->pdbr
	cmp	esi,SYS_PDB
	je	.hw_st		; if(task_current->pdbr != SYS_PDB)
	mov	esi,SYS_PDB
	mov	cr3,esi		; 切换页目录
	
.hw_st	inc	dword	[reenter]	; reenter初始化为0，如果重入，则其值加一后不为1
	cmp	dword	[reenter],1
	jne	.hw_pro		; 如果 重入，则直接处理。（不用切换堆栈）
	mov	esp,StackTop	; 如果非重入,从进程表切换到内核堆栈
.hw_pro	push	%1		; 硬中断号
	jmp	hw_enty
%endmacro
;---------------------------------------------------------------------
hw_enty:	mov	al,Int_EOI	; 这里是硬中断公共入口
	out	Int_M_Ctl,al
	out	Int_S_Ctl,al
	sti			; 此时在内核栈，可以开中断
	
	call	hw_int_handler	; 调用中断服务函数
	add	esp,4
	
	cli			; 关中断，否则切换到进程表后，如果中断到来就会破坏进程表。而且下两句需要原子性
	dec	dword	[reenter]	; 重入判断
	jnz	hw_end		; 重入，则不用切换堆栈
	
	mov	ebx,[task_current]	; 从内核堆栈切换到进程表
	mov	esp,ebx
	add	ebx,SS_OFF + 4
	mov	[tss + TSS_SP0],ebx	; TSS_SP0是SP0在TSS中的偏移
;	lldt	[esp + T_LDT_SEL]	; T_LDT_SEL是ldt_selector在进程表中的偏移
	
	mov	ebx,[esp + T_PDB_OFF]	; task_current->pdb
	cmp	ebx,SYS_PDB
	je	hw_end			; if(task_current->pdbr != SYS_PDB)		// 此时页目录为sys_pdbr
	mov	cr3,ebx			; 切换页目录
;---------------------------------------------------------------------
hw_end	popall
	add	esp,4		; 丢弃err_code
	iret
;---------------------------------------------------------------------
; 以下为硬中断硬入口
_hwint00:
	hwenter	0		; 这是一个宏函数
_hwint01:				; hwenter	不可重入
	hwenter	1		; hwenter	  可重入
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
; 软中断硬入口			; 软中断不可能重入到其他中断中！因为软中断是由用户程序产生的，重入是不可能的
%macro	swenter	1		; 这个入口可以处理重入的软中断
	push	0xffffffff	; 占个位置,err_code
	pushall
	
	mov	esi,cr3		; cr3 即 ：task_current->pdbr
	cmp	esi,SYS_PDB
	je	.sw_st		; if(task_current->pdbr != SYS_PDB)		// 此时页目录为task_current->pdbr
	mov	esi,SYS_PDB
	mov	cr3,esi		; 切换页目录
	
.sw_st	inc	dword	[reenter]	; reenter初始化为0，如果重入，则其值加一后不为1
	cmp	dword	[reenter],1
	jne	.sw_pro		; 如果 重入，则直接处理。（不用切换堆栈，也不用切换段寄存器）
	mov	esp,StackTop	; 如果非重入,从进程表切换到内核堆栈
.sw_pro	mov	esi,[task_current]	; 取得当前任务
	sti			; 此时在内核栈，可以开中断		这个中断是否能开？如果此时来一个外中断,并且引起任务切换,那么接下来针对task_current的操作就会出错
	pusha			; 软中断参数
	push	%1		; 软中断号
	jmp	sw_enty
%endmacro
;---------------------------------------------------------------------
sw_enty:				; 这里是软中断公共入口
	call	sw_int_handler	; 调用中断服务函数	U32 sw_int_handler(U32 eax,U32 sw_no)
	add	esp,4*9		; 返回值在中断出口处通过mov	[esp + EAX_OFF],eax写入堆栈
	
	cli			; 关中断，否则切换到进程表后，如果中断到来就会破坏进程表。而且下两句需要原子性
	dec	dword	[reenter]	; 重入判断
	jnz	sw_end		; 重入，则不用切换堆栈
	
	mov	ebx,[task_current]	; 从内核堆栈切换到进程表
	mov	esp,ebx
	add	ebx,SS_OFF + 4
	mov	[tss + TSS_SP0],ebx	; TSS_SP0是SP0在TSS中的偏移
;	lldt	[esp + T_LDT_SEL]	; T_LDT_SEL是ldt_selector在进程表中的偏移
	
	mov	ebx,[esp + T_PDB_OFF]	; task_current->pdb
	cmp	ebx,SYS_PDB		; assert(reenter == 0)	// 程序能走到这一步，reenter肯定是0。当reenter为0时，才有可能需要切换页目录
	je	sw_end			; if(task_current->pdbr != SYS_PDB)		// 此时页目录为sys_pdbr
	mov	cr3,ebx			; 切换页目录
;---------------------------------------------------------------------
sw_end:	mov	[esp + EAX_OFF],eax	; EAX_OFF是eax在pushall堆栈中的偏移。返回值直接写入堆栈中
	popall
	add	esp,4		; 丢弃err_code
	iret
;---------------------------------------------------------------------
; 软中断入口	0x80
global	_sys_call
_sys_call:
	swenter	0x80
;---------------------------------------------------------------------
; 初始化8259A
global	Init8259
Init8259:	; ICW1
	mov	al,0x11
	out	Int_M_Ctl,al
	out	Int_S_Ctl,al
	; ICW2
	mov	al,Int_M_R	; 主片irp0对应的中断向量
	out	Int_M_Dat,al
	mov	al,Int_S_R	; 从片irq8对应的中断向量
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
	mov	al,0xf8	; 打开：定时器、键盘、irq2中断
	;mov	al,0xff	; 屏蔽主片所有中断
	out	Int_M_Dat,al
	mov	al,0xbf	; 打开：硬盘中断
	;mov	al,0xff	; 屏蔽从片所有中断
	out	Int_S_Dat,al
	ret
;---------------------------------------------------------------------

