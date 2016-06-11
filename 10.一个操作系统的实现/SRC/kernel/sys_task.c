#include	"include.h"

//--------------------------------------------------------------------------------------------------*/
// 系统任务，提供各种系统调用
void task_sys(void * pdata)
{
	MSG msg;
	SYS_MSG*	p_sys_msg;
	pdata = pdata;
	while(1)
	{
		assert(	sendrecv(RECV,ANY,&msg) == 0	);
		assert(	msg.type == SYS_MSG_UNION	);
		p_sys_msg = &msg.msg_union.sys_msg;
		switch(p_sys_msg->para)
		{
			case GET_TICK:
				disable_int();
				p_sys_msg->para = ticks;
				enable_int();
				break;
			case GET_IDLE_COUNT:
				disable_int();
				p_sys_msg->para = idle_count;
				enable_int();
				break;
			case OUT_CHAR:
				sys_out_ch(p_sys_msg);
				break;
			case GET_PARRENT:
				disable_int();
				p_sys_msg->para = (task_table + msg.sender)->parent;
				enable_int();
				break;
			case GET_PID:
				disable_int();
				p_sys_msg->para = (task_table + msg.sender)->pid;
				enable_int();
				break;
			case SET_PPID:
				disable_int();
				(msg.sender + task_table)->parent	= p_sys_msg->ppid;
				enable_int();
				break;
			default:	break;
		}
		assert(	sendrecv(SEND,msg.sender,&msg) == 0	);
	}
}
//--------------------------------------------------------------------------------------------------*/
void sys_out_ch(SYS_MSG* p_sys_msg)
{
	CONSOLE*	p_console	= p_sys_msg->p_tty->p_console;
	if(p_sys_msg->ch == '\n')
	{
		disable_int();
		p_console->cursor += 160;
		p_console->cursor /= 160;
		p_console->cursor *= 160;
		enable_int();
	}
	else
	{
		int pos = 0xb8000 + p_console->vga_base + p_console->vga_offset + p_console->cursor;
		disable_int();
		if(p_sys_msg->ch == '\b')
		{
			pos -= 2;
			*(char*)pos	= ' ';
			p_console->cursor -= 2;
		}
		else
		{
			*(char*)pos++	= p_sys_msg->ch;
			*(char*)pos	= p_console->color;
			p_console->cursor += 2;
		}
		enable_int();
	}
	
	keyboard_int = 1;
	if(p_console == tty_current->p_console)
		auto_scroll();
}

