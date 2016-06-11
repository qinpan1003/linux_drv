#include	"include.h"
//--------------------------------------------------------------------------------------------------*/
// 系统调用系统级函数
// eax用于系统调用功能号,esp未使用，剩下edi,esi,ebp,ebx,edx,ecx这6个寄存器用于传递参数
// esi = task_current
// eax用于返回参数
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
		((MSG*)va2pa(p_t->pdb,p_msg))->sender = p_t->pid;		// 发送方需要在msg中添加收、发方pid
		((MSG*)va2pa(p_t->pdb,p_msg))->recver = ecx;
		enable_int();
		return	sys_send(ecx,p_t->pid,p_msg,ebx);		// 0 发送成功，-1 发送失败（可能导致死锁，所以拒绝发送）
	}
	else if(ebx == RECV)
	{
		return	sys_recv(p_t->pid,ecx,p_msg);			// 0 接收成功，-1 接收失败（可能导致死锁，所以拒绝接收）
	}
	else
	{
		assert(0);
	}
	return	-1;	// 不可能到达这里
}
//--------------------------------------------------------------------------------------------------*/
// 打印字符串	ebx为待打印字符串首地址	esi = task_current
int PrintS(char * s,int dsp_pos,int color);
U32 sys_do_write(int edi,int esi,int ebp,int ebx,int edx,int ecx)
{
	int dsp_pos;
	int color;
	CONSOLE*	p_console;
	disable_int();
	p_console = tty_current->p_console;	// printk默认打印到当前console
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
// 延时函数 waiting	ebx = tick , esi = task_current
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
// 设置pdb	由汇编写成
U32 sys_set_pdb(int edi,int esi,int ebp,int ebx,int edx,int ecx);
//--------------------------------------------------------------------------------------------------*/
// 系统调用表
// eax用于系统调用功能号,esp未使用，剩下edi,esi,ebp,ebx,edx,ecx这6个寄存器用于传递参数
// esi = task_current
// eax用于返回参数
U32 (*sys_call_table[])(int edi,int esi,int ebp,int ebx,int edx,int ecx) =
				{
				// 这个系统调用表中的函数序号要和系统调用功能号对应
				sys_sendrecv,	// 0号系统调用，eax = 0 ，ebx = sendrec, ecx = src_dec, edx = p_msg
				sys_do_write,	// 1号系统调用，eax = 1 ，ebx为待打印字符串首地址
				sys_waiting,	// 2号系统调用，eax = 2 , ebx = tick
				sys_set_pdb
				};
//--------------------------------------------------------------------------------------------------*/
