;-----------------------------------------------------------
; 段选择符
%define	Selector_Kernel_DS		0x08
%define	Selector_Kernel_CS 		0x10
%define	Selector_User_DS		(0x18 + 3)
%define	Selector_User_CS 		(0x20 + 3)
%define	Selector_TSS		0x28
;-----------------------------------------------------------
; 系统调用
%define	SYS_CALL_VECTOR	0x80		; 系统调用号

%define	SYS_SENDRECV	0		; IPC
%define	SYS_DO_WRITE	1		; 写字符串
%define	SYS_WAIT		2		; 延时调用
%define	SYS_SET_PDB	3		; 设置pdb
;-----------------------------------------------------------
;-----------------------------------------------------------
; TSS中的偏移
%define	TSS_SP0		4
%define	TSS_SS0		8
%define	TSS_SP1		12
%define	TSS_SS1		16
%define	TSS_SP2		20
%define	TSS_SS2		24
;-----------------------------------------------------------
; 进程表中的偏移
%define	GS_OFF		0
%define	FS_OFF		4
%define	ES_OFF		8
%define	DS_OFF		12
%define	EDI_OFF		16
%define	ESI_OFF		20
%define	EBP_OFF		24
%define	ESP_KER_OFF	28
%define	EBX_OFF		32
%define	EDX_OFF		36
%define	ECX_OFF		40
%define	EAX_OFF		44
%define	ERR_OFF		48
%define	EIP_OFF		52
%define	CS_OFF		56
%define	EFLAGS_OFF	60
%define	ESP_OFF		64
%define	SS_OFF		68
;%define	T_LDT_SEL		72		; ldt_selector在进程表中的偏移。它之前有17个寄存器
%define	T_PDB_OFF		72		; pdb在进程表中的偏移
;-----------------------------------------------------------
; 中断8259A
%define	Int_M_Ctl	0x20	; 主片控制地址
%define	Int_S_Ctl	0xa0	; 主片数据地址
%define	Int_M_Dat	0x21	; 从片控制地址
%define	Int_S_Dat	0xa1	; 从片数据地址
%define	Int_EOI	0x20	; EOI
%define	Int_M_R	0x20	; 主片irp0对应的中断向量
%define	Int_S_R	0x28	; 从片irq8对应的中断向量
;-----------------------------------------------------------
; 所有寄存器出入栈
%macro	pushall	0
	pusha
	push	ds
	push	es
	push	fs
	push	gs
%endmacro

%macro	popall	0
	pop	gs
	pop	fs
	pop	es
	pop	ds
	popa
%endmacro
;-----------------------------------------------------------
; 每个console的显存大小
%define	VGA_SIZE_PER_CON	(10 * 1024)
%define	VGA_MEM_BASE	0xb8000


%define	SYS_PDB	0	; 内核页目录基址
