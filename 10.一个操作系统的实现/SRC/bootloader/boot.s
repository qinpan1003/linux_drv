%include	"fat12.inc"
%include	"loader.inc"
; 功能：在磁盘中搜索loader.bin。如果找到，就将其加载到LOADER_SEG:LOADER_OFF处，并跳转到LOADER_SEG:LOADER_OFF执行loader.bin
	org	0x7c00
	jmp	start
	nop	; 适用于Linux下的nasm
;times	3-($-$$)	db	0	; 适用于Windows下的nasm
;-------------------------[ FAT12信息开始 ]---------------------------
; 以下内容从偏移3开始存放
	db	BS_OEMName	;  8字节 厂商名
	dw	BPB_BytsPerSec	;  2字节 每扇区字节数
	db	BPB_SecPerClus	;  1字节 每簇扇区数
	dw	BPB_RsvdSecCnt	;  2字节 Boot记录占用多少扇区
	db	BPB_NumFATs	;  1字节 共有多少FAT表
	dw	BPB_RootEntCnt	;  2字节 根目录文件数最大值
	dw	BPB_TotSec16	;  2字节 扇区总数
	db	BPB_Media		;  1字节 介质描述符
	dw	BPB_FATSz16	;  2字节 每FAT扇区数
	dw	BPB_SecPerTrk	;  2字节 每磁道扇区数
	dw	BPB_NumHeads	;  2字节 磁头数
	dd	BPB_HiddSec	;  4字节 隐藏扇区数
	dd	BPB_TotSec32	;  4字节 如果BPB_TotSec16是0，由这个值记录扇区数
	db	BS_DrvNum		;  1字节 中断13的驱动器号
	db	BS_Reserved1	;  1字节 未使用
	db	BS_BootSig	;  1字节 扩展引导标记
	dd	BS_VolID		;  4字节 卷序号
	db	BS_VolLab		; 11字节 卷标
	db	BS_FileSysType	;  8字节 文件系统类型
;-------------------------[ FAT12信息结束 ]---------------------------
FileName	db	'loader  bin'	; 文件名8字节，扩展名3字节

Msg	db	'Booting  '	; 0
MsgLen	equ	$-Msg
	db	'Ready    '	; 1
	db	'no loader'	; 2
;-------------------------[ 代码开始 ]--------------------------------
start:
;---------------------------------------------------------------------
; 寄存器初始化
	mov	ax,LOADER_SEG	; fs 设置成 LOADER_SEG
	mov	fs,ax
	mov	ax,cs
	mov	ds,ax		; ds,es,ss 设置成和cs相同
	mov	es,ax
	mov	ss,ax
	mov	sp,0xf000
;---------------------------------------------------------------------
; 清屏
	mov	ax,0x0600
	mov	bh,0x07
	mov	cx,0
	mov	dx,(25<<8) +79
	int	0x10
;---------------------------------------------------------------------
; 搜索 loader.bin
	mov	dh,0		; 0 'Booting'
	call	DspStr
	
	push	FileName		; short ScanFile(char * FileName)
	call	ScanFile		; 如果找到文件，返回文件第一个簇号
	add	sp,2		; 如果没找到，返回0
	
	cmp	ax,0
	jne	LoadLoader
	
	mov	dh,2		; 2 'no loader'
	call	DspStr
	jmp	$		; 没找到loader，程序死在这里
;---------------------------------------------------------------------
; 加载 loader.bin
LoadLoader:
	push	ax		; void LoadFile(short FstClus)
	call	LoadFile
	add	sp,2
;---------------------------------------------------------------------
; 跳入 loader.bin 继续执行
	mov	dh,1
	call	DspStr		; 1 'Ready'
	jmp	word	LOADER_SEG:LOADER_OFF
;-------------------------[  子函数  ]--------------------------------
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
;---------------------------------------------------------------------
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
;---------------------------------------------------------------------
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
	mov	ax,LOADER_SEG
	mov	es,ax
	mov	word	[bp + s],RootFstSec
S1	cmp	word	[bp + s],DatFstSec
	jge	SFal		; 失败
	push	LOADER_OFF	; bx
	push	1		; n
	push	word	[bp + s]
	call	ReadSector
	add	sp,6
	mov	word	[bp + i],LOADER_OFF
S2	cmp	word	[bp + i],LOADER_OFF + 512
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
;---------------------------------------------------------------------
; void LoadFile(short FstClus)
; 如果找到文件，返回文件第一个簇号
; 如果没找到，返回0
LoadFile:
	push	bp
	push	es
	pusha
	mov	bp,sp
	mov	ax,LOADER_SEG
	mov	es,ax
	; 第一步，找出所有簇序号，并将序号依次压栈
	push	LOADER_OFF	; bx
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
	mov	si,[es:si + LOADER_OFF]
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
	mov	bx,LOADER_OFF
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
;-------------------------[ 代码结束 ]--------------------------------
times	510-($-$$)	db	0
	dw	0xaa55