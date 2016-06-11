%include	"const.inc"
;-----------------------------------------------
; 汇编库
;-----------------------------------------------
; 函 数 名：ClrScr	void ClrScr(CONSOLE * p_console);
; 功    能：清屏
; 输入参数：无
; 输出参数：无
global	ClrScr
ClrScr:
	
	push	eax
	mov	eax,[esp + 8]	; 此时eax为p_console所指console地址
	push	edi
	
	mov	edi,[eax]		; vga_base
	mov	eax,edi		; 首地址暂存
	add	edi,VGA_SIZE_PER_CON - 4	; console的显存全清空
lopCLR	mov	dword	[gs:edi + VGA_MEM_BASE],0x07000700
	sub	edi,4
	cmp	edi,eax		; 直到首地址，才结束
	jge	lopCLR
	
	pop	edi
	pop	eax
	ret
;-----------------------------------------------
; 函 数 名：int PrintS(char * s,int dsp_pos,int color);
; 功    能：打印字符串
; 输入参数：字符串首地址、光标位置、字符属性
; 输出参数：打印后光标位置
global	PrintS
PrintS:		; 此函数经过修改，不再使用全局变量，所以不需要关中断
	pusha
	mov	ecx,[esp + 44]	; color
	shl	ecx,8
	mov	edi,[esp + 40]	; dsp_pos	
	mov	ebx,[esp + 36]	; s
	mov	esi,0
pr_lop	mov	cl,[ebx + esi]
	cmp	cl,0
	je	pr_exit
	cmp	cl,10	; \n
	jne	pr_dsp
	; edi = (edi + 160) / 160 * 160
	add	edi,160
	mov	eax,edi
	mov	edx,0
	mov	edi,160
	div	edi
	mul	edi
	mov	edi,eax
	inc	esi
	jmp	pr_lop
pr_dsp	mov	[gs:edi + VGA_MEM_BASE],cx
	add	edi,2
	inc	esi
	jmp	pr_lop
	
pr_exit	mov	[esp + 4*7],edi	; 放入堆栈中eax处
	popa
	ret
;-----------------------------------------------
; 函 数 名：void out_byte(U16 port,U8 dat);
; 功    能：数据dat输出到端口port
; 输入参数：数据dat、端口port
; 输出参数：无
global	out_byte
out_byte:
	mov	edx,[esp + 4]
	mov	eax,[esp + 8]
	out	dx,al
	nop
	nop
	nop
	nop
	nop
	ret

;-----------------------------------------------
; 函 数 名：U8 in_byte(U16 port);
; 功    能：读取端口port上的数据
; 输入参数：端口port
; 输出参数：端口port上的数据
global	in_byte
in_byte:
	mov	edx,[esp + 4]
	xor	eax,eax
	in	al,dx
	nop
	nop
	nop
	nop
	nop
	ret
;-----------------------------------------------
; 函 数 名：void out_word(U16 port,U16 dat);
; 功    能：数据dat输出到端口port
; 输入参数：数据dat、端口port
; 输出参数：无
global	out_word
out_word:
	mov	edx,[esp + 4]
	mov	eax,[esp + 8]
	out	dx,ax
	nop
	nop
	nop
	nop
	nop
	ret

;-----------------------------------------------
; 函 数 名：U16 in_word(U16 port);
; 功    能：读取端口port上的数据
; 输入参数：端口port
; 输出参数：端口port上的数据
global	in_word
in_word:
	mov	edx,[esp + 4]
	xor	eax,eax
	in	ax,dx
	nop
	nop
	nop
	nop
	nop
	ret
;-----------------------------------------------
; 函 数 名：void out_dword(U16 port,U32 dat);
; 功    能：数据dat输出到端口port
; 输入参数：数据dat、端口port
; 输出参数：无
global	out_dword
out_dword:
	mov	edx,[esp + 4]
	mov	eax,[esp + 8]
	out	dx,eax
	nop
	nop
	nop
	nop
	nop
	ret

;-----------------------------------------------
; 函 数 名：U32 in_dword(U16 port);
; 功    能：读取端口port上的数据
; 输入参数：端口port
; 输出参数：端口port上的数据
global	in_dword
in_dword:
	mov	edx,[esp + 4]
	xor	eax,eax
	in	eax,dx
	nop
	nop
	nop
	nop
	nop
	ret
;-----------------------------------------------
global	int_off_num
int_off_num	dd	0
; 函 数 名：void enable_int(void);			注意：由于引进了关中断次数变量int_off_num，
; 功    能：开启中断					所以disable_int()和enable_int()必须成对使用
; 输入参数：无						而且必须先关后开
; 输出参数：无
global	enable_int
enable_int:
	dec	dword	[int_off_num]
	jnz	en_int_exit
	sti
en_int_exit:
	ret
;-----------------------------------------------
; 函 数 名：void disable_int(void);
; 功    能：关闭中断
; 输入参数：无
; 输出参数：无
global	disable_int
disable_int:
	cli
	inc	dword	[int_off_num]
	ret
;-----------------------------------------------
; 函 数 名：U32 get_eflags(void);
; 功    能：获取eflags的值
; 输入参数：无
; 输出参数：eflags
global	get_eflags
get_eflags:
	pushfd
	mov	eax,[esp]
	add	esp,4
	ret
;-----------------------------------------------
; 函 数 名：U32 sys_set_pdb(int edi,int esi,int ebp,int ebx,int edx,int ecx);
; 功    能：设置pdb
; 输入参数：ebx为待设置的pdb
; 输出参数：无
global	sys_set_pdb
sys_set_pdb:
	mov	eax,[esp + 4 * 4]
	mov	cr3,eax
	ret

