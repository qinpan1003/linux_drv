%include	"fat12.inc"
%include	"pm.inc"
%include	"page.inc"
%include	"loader.inc"
;------------------------------------------------------------------------------------------------------------------------------------------------------
; �������е��ں�ӳ����ص� Kernel_Base ��Ȼ��ͨ������ģʽ�����ں�ִ��
Kernel_Base_Seg	equ	0x7000	; ELF��ʽ�ں���ʱ��Ŵ�
Kernel_Base_Off	equ	0	; 

bits	16
global	_start
_start:
	jmp	start
;------------------------------------------------------------------------------------------------------------------------------------------------------
; ȫ����������	GDT
;------------------------------------------------------------------------------------------------------------------------------------------------------
; GDT �洢��������			�λ�ַ		�ν���		����
empty_gdt		Descriptor	0	,	0	,	0
video_gdt		Descriptor	0xb8000	,	0xffff	,	DA_32 + DA_DRW  + DA_DPL3	; 32λ��Ƶ��
FlatD_gdt		Descriptor	0,		0xfffff	,	DA_32 + DA_DRW  + DA_4K	; 32λƽ̹4GB���ݶ�
FlatC_gdt		Descriptor	0,		0xfffff	,	DA_32 + DA_CR   + DA_4K	; 32λƽ̹4GB��һ�´����
;------------------------------------------------------------------------------------------------------------------------------------------------------
; GDT���ز���	lgdt [GdtPara]
GdtPara	dw	$ - empty_gdt	; ���������ȡ���λ��byte
	dd	0		; ���������ַ
;------------------------------------------------------------------------------------------------------------------------------------------------------
; �洢��ѡ���
SelectorVideo		equ	video_gdt		- empty_gdt
SelectorFlatD		equ	FlatD_gdt		- empty_gdt
SelectorFlatC		equ	FlatC_gdt		- empty_gdt
;------------------------------------------------------------------------------------------------------------------------------------------------------
%macro	load_kernel	0
;---------------------------------------------------------------------
; ���� kernel
	mov	dh,0		; 0 'Loading'
	call	DspStr
	
	push	FileName		; short ScanFile(char * FileName)
	call	ScanFile		; ����ҵ��ļ��������ļ���һ���غ�
	add	sp,2		; ���û�ҵ�������0
	
	cmp	ax,0
	jne	LoadKernel
	
	mov	dh,2		; 2 'no kernel'
	call	DspStr
	jmp	$		; û�ҵ�loader��������������
;---------------------------------------------------------------------
; ���� kernel
LoadKernel:
	push	ax		; void LoadFile(short FstClus)
	call	LoadFile
	add	sp,2
%endmacro
;------------------------------------------------------------------------------------------------------------------------------------------------------
%macro	enter_pm	0
; Ϊ����gdtr��׼��
	mov	eax,0
	mov	ax,ds
	shl	eax,4
	add	eax,empty_gdt
	mov	dword [GdtPara + 2],eax
; ����gdtr
	cli	; ���ж�
	lgdt	[GdtPara]
; ��A20��ַ��
	;in	al,0x92
	;or	al,2
	;out	0x92,al
	in	al,0xee	; ��0xee�˿ڿ���A20��д�ö˿ڻ��ֹA20
;	out	0xee,al	; ��ʵ�����֣�A20Ĭ���ǿ����ģ������޷��ر�
; ׼���л�������ģʽ
	mov	eax,cr0
	or	eax,1
	mov	cr0,eax
; �ں˶μĴ�����ʼ��
	mov	ax,SelectorVideo
	mov	gs,ax
	mov	ax,SelectorFlatD
	mov	ds,ax		; �����￪ʼ��DSʹ�ñ���ģʽ��ѡ���
	mov	es,ax
	mov	fs,ax
	mov	ss,ax
%endmacro
;------------------------------------------------------------------------------------------------------------------------------------------------------
extern	make_kernel
FileName	db	'kernel     '	; �ļ���8�ֽڣ���չ��3�ֽ�
Msg	db	'Loading  '	; 0
MsgLen	equ	$-Msg
	db	'Ready    '	; 1
	db	'no kernel'	; 2
start:
	mov	esp,LOADER_OFF			; ���ö�ջ
	load_kernel				; ����ELF��ʽ���ں��ļ�
	enter_pm					; ���뱣��ģʽ
	call	dword	SelectorFlatC:make_kernel	; ��ELF��ʽ���ں��ļ�����ָ�����ڴ�λ��	make_kernel ��C����д��,��CĬ��ʹ��32λ�����
bits	32					; ��ʱ�����Ѿ�����32λģʽ
Kentry	jmp	SelectorFlatC:0x10000		; �����ں�(���Ӷ�ѡ����ͻ����,Ϊʲô����)
;times	0x1be - ( $ - $$)	db	0
;	dw	0xaa55
;------------------------------------------------------------------------------------------------------------------------------------------------------
;------------------------------------------------------------------------------------------------------------------------------------------------------
bits	16
;-------------------------[  16λ�Ӻ���  ]--------------------------------
; ��ʾ dh ָʾ����Ϣ
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
	mov	dl,0	; ������ʾ
	mov	ax,0x1301
	int	0x10
	popa
	ret
; void ReadSector(short s,short n,short bx)
; ��    �ܣ�����������
; ���������s �����ţ�n ��������[es:bx] ��������
; �����������
ReadSector:
	push	bp
	mov	bp,sp
	pusha
goon	mov	ah,0
	mov	dl,0
	int	0x13	; ������������λ
	
	mov	ax,[bp + 4]	; s
	mov	cx,[bp + 6]	; n
	mov	bx,[bp + 8]
	mov	ch,18
	div	ch
	mov	dh,al
	and	dh,1	; ��ͷ��
	mov	ch,al
	shr	ch,1	; �����
	mov	al,cl	; ������
	mov	cl,ah
	inc	cl	; ��ʼ������
	mov	dl,0	; ��������
	mov	ah,2
	int	0x13
	jc	goon
	popa
	pop	bp
	ret
;------------------------------------------------------------------------------------------------------------------------------------------------------
; short ScanFile(char * FileName)
; ����ҵ��ļ��������ļ���һ���غ�
; ���û�ҵ�������0
fn	equ	4
s	equ	-2
i	equ	s-2
j	equ	i-2
ScanFile:
	push	bp
	mov	bp,sp
	sub	sp,2*3		; 3���ֲ�����
	push	si
	push	es
	mov	ax,Kernel_Base_Seg
	mov	es,ax
	mov	word	[bp + s],RootFstSec
S1	cmp	word	[bp + s],DatFstSec
	jge	SFal		; ʧ��
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
SFal	mov	ax,0		; ʧ�ܣ�����0
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
; ����ҵ��ļ��������ļ���һ���غ�
; ���û�ҵ�������0
LoadFile:
	push	bp
	push	es
	pusha
	mov	bp,sp
	mov	ax,Kernel_Base_Seg
	mov	es,ax
	; ��һ�����ҳ����д���ţ������������ѹջ
	push	Kernel_Base_Off	; bx
	push	BPB_FATSz16	; FAT���9������ȫ����ȡ���ڴ�
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

FindAll:	; �ڶ��������ݶ�ջ�е���Ϣ�������ļ�
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
	mov	ah,0xe	; ÿ��ȡһ���������ʹ�ӡһ�� .
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
