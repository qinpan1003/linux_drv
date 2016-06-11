#include	"include.h"
//--------------------------------------------------------------------------------------------------*/
// ϵͳ����ϵͳ������
// eax����ϵͳ���ù��ܺ�,espδʹ�ã�ʣ��edi,esi,ebp,ebx,edx,ecx��6���Ĵ������ڴ��ݲ���
// esi = task_current
// eax���ڷ��ز���
//--------------------------------------------------------------------------------------------------*/
// IPC	ebx = sendrec, ecx = src_dec, edx = p_msg, esi = task_current
int sys_send(int dec,int src,MSG* p_msg,FUN sendrev);
int sys_recv(int dec,int src,MSG* p_msg);
U32 sys_sendrecv(int edi,int esi,int ebp,int ebx,int edx,int ecx)
{
	TCB* p_t = (TCB*)esi;	// p_t = task_current
	MSG* p_msg = (MSG*)edx;
	
	if(ebx == SEND || ebx == BOTH)
	{
		disable_int();
		assert(if_off);
		((MSG*)va2pa(p_t->pdb,p_msg))->sender = p_t->pid;		// ���ͷ���Ҫ��msg������ա�����pid
		((MSG*)va2pa(p_t->pdb,p_msg))->recver = ecx;
		enable_int();
		return	sys_send(ecx,p_t->pid,p_msg,ebx);		// 0 ���ͳɹ���-1 ����ʧ�ܣ����ܵ������������Ծܾ����ͣ�
	}
	else if(ebx == RECV)
	{
		return	sys_recv(p_t->pid,ecx,p_msg);			// 0 ���ճɹ���-1 ����ʧ�ܣ����ܵ������������Ծܾ����գ�
	}
	else
	{
		assert(0);
	}
	return	-1;	// �����ܵ�������
}
//--------------------------------------------------------------------------------------------------*/
// ��ӡ�ַ���	ebxΪ����ӡ�ַ����׵�ַ	esi = task_current
int PrintS(char * s,int dsp_pos,int color);
U32 sys_do_write(int edi,int esi,int ebp,int ebx,int edx,int ecx)
{
	int dsp_pos;
	int color;
	CONSOLE*	p_console;
	disable_int();
	p_console = tty_current->p_console;	// printkĬ�ϴ�ӡ����ǰconsole
	dsp_pos = p_console->vga_base + p_console->vga_offset + p_console->cursor;
	color = p_console->color;
	// int PrintS(char * s,int dsp_pos,int color);
	p_console->cursor = PrintS((char*)va2pa(((TCB*)esi)->pdb,(char*)ebx),dsp_pos,color) - p_console->vga_base - p_console->vga_offset ;
	keyboard_int = 1;
	enable_int();
	if(console == tty_current->p_console)
		auto_scroll();
	return	0;
}
//--------------------------------------------------------------------------------------------------*/
// ��ʱ���� waiting	ebx = tick , esi = task_current
U32 sys_waiting(int edi,int esi,int ebp,int ebx,int edx,int ecx)
{
	TCB* pt = (TCB*)esi;
	disable_int();
	if(pt->t_stat == READY)
	{
		pt->t_stat = DELAYING;
		pt->delay = ebx;
		sched();
	}
	enable_int();
	return	0;
}
//--------------------------------------------------------------------------------------------------*/
// ����pdb	�ɻ��д��
U32 sys_set_pdb(int edi,int esi,int ebp,int ebx,int edx,int ecx);
//--------------------------------------------------------------------------------------------------*/
// ϵͳ���ñ�
// eax����ϵͳ���ù��ܺ�,espδʹ�ã�ʣ��edi,esi,ebp,ebx,edx,ecx��6���Ĵ������ڴ��ݲ���
// esi = task_current
// eax���ڷ��ز���
U32 (*sys_call_table[])(int edi,int esi,int ebp,int ebx,int edx,int ecx) =
				{
				// ���ϵͳ���ñ��еĺ������Ҫ��ϵͳ���ù��ܺŶ�Ӧ
				sys_sendrecv,	// 0��ϵͳ���ã�eax = 0 ��ebx = sendrec, ecx = src_dec, edx = p_msg
				sys_do_write,	// 1��ϵͳ���ã�eax = 1 ��ebxΪ����ӡ�ַ����׵�ַ
				sys_waiting,	// 2��ϵͳ���ã�eax = 2 , ebx = tick
				sys_set_pdb
				};
//--------------------------------------------------------------------------------------------------*/
