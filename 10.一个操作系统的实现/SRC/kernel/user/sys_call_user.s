%include	"const.inc"
;--------------------------------------------------------------------------------------------------
; 系统调用用户级函数
; eax用于系统调用功能号,esp未使用，剩下edi,esi,ebp,ebx,edx,ecx这6个寄存器用于传递参数
; eax用于返回参数
global	sendrecv
sendrecv:		; 0 号系统调用	U32 sendrec(FUN sendrev,int src_dec,MSG* p_msg);
	mov	eax,SYS_SENDRECV
	mov	ebx,[esp+4]	; sendrec		// SEND ,RECV ,BOTH
	mov	ecx,[esp+8]	; src_dec
	mov	edx,[esp+12]	; p_msg
	int	SYS_CALL_VECTOR
	ret
global	do_write
do_write:		; 1 号系统调用	U32 do_write(char * buf);
	mov	eax,SYS_DO_WRITE
	mov	ebx,[esp+4]	; buf
	int	SYS_CALL_VECTOR
	ret
global	waiting
waiting:		; 2 号系统调用	U32 waiting(int tick);
	mov	eax,SYS_WAIT
	mov	ebx,[esp+4]	; tick
	int	SYS_CALL_VECTOR
	ret
global	set_pdb
set_pdb:		; 3 号系统调用	void set_pdb(U32* pdb);
	mov	eax,SYS_SET_PDB
	mov	ebx,[esp+4]	; pdb
	int	SYS_CALL_VECTOR
	ret