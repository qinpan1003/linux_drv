%include	"fat12.inc"
%include	"loader.inc"
; ���ܣ��ڴ���������loader.bin������ҵ����ͽ�����ص�LOADER_SEG:LOADER_OFF��������ת��LOADER_SEG:LOADER_OFFִ��loader.bin
	org	0x7c00
	jmp	start
	nop	; ������Linux�µ�nasm
;times	3-($-$$)	db	0	; ������Windows�µ�nasm
;-------------------------[ FAT12��Ϣ��ʼ ]---------------------------
; �������ݴ�ƫ��3��ʼ���
	db	BS_OEMName	;  8�ֽ� ������
	dw	BPB_BytsPerSec	;  2�ֽ� ÿ�����ֽ���
	db	BPB_SecPerClus	;  1�ֽ� ÿ��������
	dw	BPB_RsvdSecCnt	;  2�ֽ� Boot��¼ռ�ö�������
	db	BPB_NumFATs	;  1�ֽ� ���ж���FAT��
	dw	BPB_RootEntCnt	;  2�ֽ� ��Ŀ¼�ļ������ֵ
	dw	BPB_TotSec16	;  2�ֽ� ��������
	db	BPB_Media		;  1�ֽ� ����������
	dw	BPB_FATSz16	;  2�ֽ� ÿFAT������
	dw	BPB_SecPerTrk	;  2�ֽ� ÿ�ŵ�������
	dw	BPB_NumHeads	;  2�ֽ� ��ͷ��
	dd	BPB_HiddSec	;  4�ֽ� ����������
	dd	BPB_TotSec32	;  4�ֽ� ���BPB_TotSec16��0�������ֵ��¼������
	db	BS_DrvNum		;  1�ֽ� �ж�13����������
	db	BS_Reserved1	;  1�ֽ� δʹ��
	db	BS_BootSig	;  1�ֽ� ��չ�������
	dd	BS_VolID		;  4�ֽ� �����
	db	BS_VolLab		; 11�ֽ� ���
	db	BS_FileSysType	;  8�ֽ� �ļ�ϵͳ����
;-------------------------[ FAT12��Ϣ���� ]---------------------------
FileName	db	'loader  bin'	; �ļ���8�ֽڣ���չ��3�ֽ�

Msg	db	'Booting  '	; 0
MsgLen	equ	$-Msg
	db	'Ready    '	; 1
	db	'no loader'	; 2
;-------------------------[ ���뿪ʼ ]--------------------------------
start:
;---------------------------------------------------------------------
; �Ĵ�����ʼ��
	mov	ax,LOADER_SEG	; fs ���ó� LOADER_SEG
	mov	fs,ax
	mov	ax,cs
	mov	ds,ax		; ds,es,ss ���óɺ�cs��ͬ
	mov	es,ax
	mov	ss,ax
	mov	sp,0xf000
;---------------------------------------------------------------------
; ����
	mov	ax,0x0600
	mov	bh,0x07
	mov	cx,0
	mov	dx,(25<<8) +79
	int	0x10
;---------------------------------------------------------------------
; ���� loader.bin
	mov	dh,0		; 0 'Booting'
	call	DspStr
	
	push	FileName		; short ScanFile(char * FileName)
	call	ScanFile		; ����ҵ��ļ��������ļ���һ���غ�
	add	sp,2		; ���û�ҵ�������0
	
	cmp	ax,0
	jne	LoadLoader
	
	mov	dh,2		; 2 'no loader'
	call	DspStr
	jmp	$		; û�ҵ�loader��������������
;---------------------------------------------------------------------
; ���� loader.bin
LoadLoader:
	push	ax		; void LoadFile(short FstClus)
	call	LoadFile
	add	sp,2
;---------------------------------------------------------------------
; ���� loader.bin ����ִ��
	mov	dh,1
	call	DspStr		; 1 'Ready'
	jmp	word	LOADER_SEG:LOADER_OFF
;-------------------------[  �Ӻ���  ]--------------------------------
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
;---------------------------------------------------------------------
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
;---------------------------------------------------------------------
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
	mov	ax,LOADER_SEG
	mov	es,ax
	mov	word	[bp + s],RootFstSec
S1	cmp	word	[bp + s],DatFstSec
	jge	SFal		; ʧ��
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
SFal	mov	ax,0		; ʧ�ܣ�����0
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
; ����ҵ��ļ��������ļ���һ���غ�
; ���û�ҵ�������0
LoadFile:
	push	bp
	push	es
	pusha
	mov	bp,sp
	mov	ax,LOADER_SEG
	mov	es,ax
	; ��һ�����ҳ����д���ţ������������ѹջ
	push	LOADER_OFF	; bx
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

FindAll:	; �ڶ��������ݶ�ջ�е���Ϣ�������ļ�
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
;-------------------------[ ������� ]--------------------------------
times	510-($-$$)	db	0
	dw	0xaa55