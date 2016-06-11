%include	"const.inc"
;-----------------------------------------------
; ����
;-----------------------------------------------
; �� �� ����ClrScr	void ClrScr(CONSOLE * p_console);
; ��    �ܣ�����
; �����������
; �����������
global	ClrScr
ClrScr:
	
	push	eax
	mov	eax,[esp + 8]	; ��ʱeaxΪp_console��ָconsole��ַ
	push	edi
	
	mov	edi,[eax]		; vga_base
	mov	eax,edi		; �׵�ַ�ݴ�
	add	edi,VGA_SIZE_PER_CON - 4	; console���Դ�ȫ���
lopCLR	mov	dword	[gs:edi + VGA_MEM_BASE],0x07000700
	sub	edi,4
	cmp	edi,eax		; ֱ���׵�ַ���Ž���
	jge	lopCLR
	
	pop	edi
	pop	eax
	ret
;-----------------------------------------------
; �� �� ����int PrintS(char * s,int dsp_pos,int color);
; ��    �ܣ���ӡ�ַ���
; ����������ַ����׵�ַ�����λ�á��ַ�����
; �����������ӡ����λ��
global	PrintS
PrintS:		; �˺��������޸ģ�����ʹ��ȫ�ֱ��������Բ���Ҫ���ж�
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
	
pr_exit	mov	[esp + 4*7],edi	; �����ջ��eax��
	popa
	ret
;-----------------------------------------------
; �� �� ����void out_byte(U16 port,U8 dat);
; ��    �ܣ�����dat������˿�port
; �������������dat���˿�port
; �����������
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
; �� �� ����U8 in_byte(U16 port);
; ��    �ܣ���ȡ�˿�port�ϵ�����
; ����������˿�port
; ����������˿�port�ϵ�����
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
; �� �� ����void out_word(U16 port,U16 dat);
; ��    �ܣ�����dat������˿�port
; �������������dat���˿�port
; �����������
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
; �� �� ����U16 in_word(U16 port);
; ��    �ܣ���ȡ�˿�port�ϵ�����
; ����������˿�port
; ����������˿�port�ϵ�����
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
; �� �� ����void out_dword(U16 port,U32 dat);
; ��    �ܣ�����dat������˿�port
; �������������dat���˿�port
; �����������
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
; �� �� ����U32 in_dword(U16 port);
; ��    �ܣ���ȡ�˿�port�ϵ�����
; ����������˿�port
; ����������˿�port�ϵ�����
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
; �� �� ����void enable_int(void);			ע�⣺���������˹��жϴ�������int_off_num��
; ��    �ܣ������ж�					����disable_int()��enable_int()����ɶ�ʹ��
; �����������						���ұ����ȹغ�
; �����������
global	enable_int
enable_int:
	dec	dword	[int_off_num]
	jnz	en_int_exit
	sti
en_int_exit:
	ret
;-----------------------------------------------
; �� �� ����void disable_int(void);
; ��    �ܣ��ر��ж�
; �����������
; �����������
global	disable_int
disable_int:
	cli
	inc	dword	[int_off_num]
	ret
;-----------------------------------------------
; �� �� ����U32 get_eflags(void);
; ��    �ܣ���ȡeflags��ֵ
; �����������
; ���������eflags
global	get_eflags
get_eflags:
	pushfd
	mov	eax,[esp]
	add	esp,4
	ret
;-----------------------------------------------
; �� �� ����U32 sys_set_pdb(int edi,int esi,int ebp,int ebx,int edx,int ecx);
; ��    �ܣ�����pdb
; ���������ebxΪ�����õ�pdb
; �����������
global	sys_set_pdb
sys_set_pdb:
	mov	eax,[esp + 4 * 4]
	mov	cr3,eax
	ret

