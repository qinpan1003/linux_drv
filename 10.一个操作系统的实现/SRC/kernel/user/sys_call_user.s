%include	"const.inc"
;--------------------------------------------------------------------------------------------------
; ϵͳ�����û�������
; eax����ϵͳ���ù��ܺ�,espδʹ�ã�ʣ��edi,esi,ebp,ebx,edx,ecx��6���Ĵ������ڴ��ݲ���
; eax���ڷ��ز���
global	sendrecv
sendrecv:		; 0 ��ϵͳ����	U32 sendrec(FUN sendrev,int src_dec,MSG* p_msg);
	mov	eax,SYS_SENDRECV
	mov	ebx,[esp+4]	; sendrec		// SEND ,RECV ,BOTH
	mov	ecx,[esp+8]	; src_dec
	mov	edx,[esp+12]	; p_msg
	int	SYS_CALL_VECTOR
	ret
global	do_write
do_write:		; 1 ��ϵͳ����	U32 do_write(char * buf);
	mov	eax,SYS_DO_WRITE
	mov	ebx,[esp+4]	; buf
	int	SYS_CALL_VECTOR
	ret
global	waiting
waiting:		; 2 ��ϵͳ����	U32 waiting(int tick);
	mov	eax,SYS_WAIT
	mov	ebx,[esp+4]	; tick
	int	SYS_CALL_VECTOR
	ret
global	set_pdb
set_pdb:		; 3 ��ϵͳ����	void set_pdb(U32* pdb);
	mov	eax,SYS_SET_PDB
	mov	ebx,[esp+4]	; pdb
	int	SYS_CALL_VECTOR
	ret