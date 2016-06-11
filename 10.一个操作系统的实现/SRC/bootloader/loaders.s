%include	"fat12.inc"
%include	"pm.inc"
%include	"page.inc"
%include	"loader.inc"
;------------------------------------------------------------------------------------------------------------------------------------------------------
; 将磁盘中的内核映像加载到 Kernel_Base ，然后通过保护模式跳入内核执行
Kernel_Base_Seg	equ	0x7000	; ELF格式内核临时存放处
Kernel_Base_Off	equ	0	; 

bits	16
global	_start
_start:
	jmp	start
;------------------------------------------------------------------------------------------------------------------------------------------------------
; 全局描述符段	GDT
;------------------------------------------------------------------------------------------------------------------------------------------------------
; GDT 存储段描述符			段基址		段界限		属性
empty_gdt		Descriptor	0	,	0	,	0
video_gdt		Descriptor	0xb8000	,	0xffff	,	DA_32 + DA_DRW  + DA_DPL3	; 32位视频段
FlatD_gdt		Descriptor	0,		0xfffff	,	DA_32 + DA_DRW  + DA_4K	; 32位平坦4GB数据段
FlatC_gdt		Descriptor	0,		0xfffff	,	DA_32 + DA_CR   + DA_4K	; 32位平坦4GB非一致代码段
;------------------------------------------------------------------------------------------------------------------------------------------------------
; GDT加载参数	lgdt [GdtPara]
GdtPara	dw	$ - empty_gdt	; 描述符表长度。单位：byte
	dd	0		; 描述符表基址
;------------------------------------------------------------------------------------------------------------------------------------------------------
; 存储段选择符
SelectorVideo		equ	video_gdt		- empty_gdt
SelectorFlatD		equ	FlatD_gdt		- empty_gdt
SelectorFlatC		equ	FlatC_gdt		- empty_gdt
;------------------------------------------------------------------------------------------------------------------------------------------------------
%macro	load_kernel	0
;---------------------------------------------------------------------
; 搜索 kernel
	mov	dh,0		; 0 'Loading'
	call	DspStr
	
	push	FileName		; short ScanFile(char * FileName)
	call	ScanFile		; 如果找到文件，返回文件第一个簇号
	add	sp,2		; 如果没找到，返回0
	
	cmp	ax,0
	jne	LoadKernel
	
	mov	dh,2		; 2 'no kernel'
	call	DspStr
	jmp	$		; 没找到loader，程序死在这里
;---------------------------------------------------------------------
; 加载 kernel
LoadKernel:
	push	ax		; void LoadFile(short FstClus)
	call	LoadFile
	add	sp,2
%endmacro
;------------------------------------------------------------------------------------------------------------------------------------------------------
%macro	enter_pm	0
; 为加载gdtr做准备
	mov	eax,0
	mov	ax,ds
	shl	eax,4
	add	eax,empty_gdt
	mov	dword [GdtPara + 2],eax
; 加载gdtr
	cli	; 关中断
	lgdt	[GdtPara]
; 打开A20地址线
	;in	al,0x92
	;or	al,2
	;out	0x92,al
	in	al,0xee	; 读0xee端口开启A20，写该端口会禁止A20
;	out	0xee,al	; 经实践发现，A20默认是开启的，而且无法关闭
; 准备切换到保护模式
	mov	eax,cr0
	or	eax,1
	mov	cr0,eax
; 内核段寄存器初始化
	mov	ax,SelectorVideo
	mov	gs,ax
	mov	ax,SelectorFlatD
	mov	ds,ax		; 从这里开始，DS使用保护模式的选择符
	mov	es,ax
	mov	fs,ax
	mov	ss,ax
%endmacro
;------------------------------------------------------------------------------------------------------------------------------------------------------
extern	make_kernel
FileName	db	'kernel     '	; 文件名8字节，扩展名3字节
Msg	db	'Loading  '	; 0
MsgLen	equ	$-Msg
	db	'Ready    '	; 1
	db	'no kernel'	; 2
start:
	mov	esp,LOADER_OFF			; 设置堆栈
	load_kernel				; 加载ELF格式的内核文件
	enter_pm					; 进入保护模式
	call	dword	SelectorFlatC:make_kernel	; 将ELF格式的内核文件整理到指定的内存位置	make_kernel 用C语言写成,而C默认使用32位代码段
bits	32					; 此时程序已经进入32位模式
Kentry	jmp	SelectorFlatC:0x10000		; 跳入内核(不加段选择符就会出错,为什么？？)
;times	0x1be - ( $ - $$)	db	0
;	dw	0xaa55
;------------------------------------------------------------------------------------------------------------------------------------------------------
;------------------------------------------------------------------------------------------------------------------------------------------------------
bits	16
;-------------------------[  16位子函数  ]--------------------------------
; 显示 dh 指示的信息
; 0 'Booting'
; 1 'Ready'
; 2 'no loader'
DspStr:
	pusha
	mov	bx,0x0007
	mov	cx,MsgLen
	mov	al,MsgLen
	mul	dh
	mov	bp,Msg
	add	bp,ax
	mov	dl,0	; 靠左显示
	mov	ax,0x1301
	int	0x10
	popa
	ret
; void ReadSector(short s,short n,short bx)
; 功    能：读软盘扇区
; 输入参数：s 扇区号，n 扇区数，[es:bx] 读缓冲区
; 输出参数：无
ReadSector:
	push	bp
	mov	bp,sp
	pusha
goon	mov	ah,0
	mov	dl,0
	int	0x13	; 磁盘驱动器复位
	
	mov	ax,[bp + 4]	; s
	mov	cx,[bp + 6]	; n
	mov	bx,[bp + 8]
	mov	ch,18
	div	ch
	mov	dh,al
	and	dh,1	; 磁头号
	mov	ch,al
	shr	ch,1	; 柱面号
	mov	al,cl	; 扇区数
	mov	cl,ah
	inc	cl	; 起始扇区号
	mov	dl,0	; 驱动器号
	mov	ah,2
	int	0x13
	jc	goon
	popa
	pop	bp
	ret
;------------------------------------------------------------------------------------------------------------------------------------------------------
; short ScanFile(char * FileName)
; 如果找到文件，返回文件第一个簇号
; 如果没找到，返回0
fn	equ	4
s	equ	-2
i	equ	s-2
j	equ	i-2
ScanFile:
	push	bp
	mov	bp,sp
	sub	sp,2*3		; 3个局部变量
	push	si
	push	es
	mov	ax,Kernel_Base_Seg
	mov	es,ax
	mov	word	[bp + s],RootFstSec
S1	cmp	word	[bp + s],DatFstSec
	jge	SFal		; 失败
	push	Kernel_Base_Off	; bx
	push	1		; n
	push	word	[bp + s]
	call	ReadSector
	add	sp,6
	mov	word	[bp + i],Kernel_Base_Off
S2	cmp	word	[bp + i],Kernel_Base_Off + 512
	jge	S6		; i<512
	mov	word	[bp + j],0
S3	cmp	word	[bp + j],11
	jge	S4		; j<11
	mov	si,[bp + i]
	add	si,[bp + j]
	mov	al,[es:si]
	cmp	al,'A'
	jl	S5
	cmp	al,'Z'
	jg	S5
	add	al,0x20
S5	mov	si,[bp + fn]
	add	si,[bp + j]
	cmp	al,[si]
	jne	S4
	inc	word	[bp + j]
	jmp	S3
S4	cmp	word	[bp + j],11
	je	SSuc
	add	word	[bp + i],32
	jmp	S2
S6	inc	word	[bp + s]
	jmp	S1
SFal	mov	ax,0		; 失败，返回0
	jmp	Fexit
SSuc	mov	si,[bp + i]
	mov	ax,[es:si + DIR_FstClus]
Fexit	pop	es
	pop	si
	mov	sp,bp
	pop	bp
	ret
;------------------------------------------------------------------------------------------------------------------------------------------------------
; void LoadFile(short FstClus)
; 如果找到文件，返回文件第一个簇号
; 如果没找到，返回0
LoadFile:
	push	bp
	push	es
	pusha
	mov	bp,sp
	mov	ax,Kernel_Base_Seg
	mov	es,ax
	; 第一步，找出所有簇序号，并将序号依次压栈
	push	Kernel_Base_Off	; bx
	push	BPB_FATSz16	; FAT表的9个扇区全部读取到内存
	push	Fat1FstSec
	call	ReadSector
	add	sp,6
	mov	cx,0
	mov	si,[bp + 22]	; FstClus
	mov	dx,si
F1	shl	si,1
	add	si,dx
	shr	si,1
	mov	si,[es:si + Kernel_Base_Off]
	test	dx,1
	jz	F2
	shr	si,4
	jmp	F3
F2	and	si,0xfff
F3	cmp	si,ClusBad
	je	FFal
	inc	cx
	push	dx
	cmp	si,ClusEnd
	jge	FindAll
	mov	dx,si
	jmp	F1
FFal	jmp	$

FindAll:	; 第二步，根据堆栈中的信息，加载文件
	mov	si,-2
	mov	bx,Kernel_Base_Off
LoadLop	push	bx
	push	1
	mov	dx,[bp + si]
	add	dx,DatFstSec-2
	push	dx
	call	ReadSector
	add	sp,6
	
	push	bx
	mov	ah,0xe	; 每读取一个扇区，就打印一个 .
	mov	al,'.'
	mov	bx,0x007
	int	0x10
	pop	bx
	
	sub	si,2
	add	bx,512
	dec	cx
	jnz	LoadLop
	mov	sp,bp
	popa
	pop	es
	pop	bp
	ret
;---------------------------------------------------------------------
