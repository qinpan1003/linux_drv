#include	"include.h"
//--------------------------------------------------------------------------------------------------*/
// 获取系统时钟
U32 get_ticks(void)
{
	MSG msg;
	msg.type			= SYS_MSG_UNION;
	msg.msg_union.sys_msg.para	= GET_TICK;
	assert(	sendrecv(BOTH,TASK_SYS_PID,&msg) == 0	);
	return msg.msg_union.sys_msg.para;
}
//--------------------------------------------------------------------------------------------------*/
// 获取idle_count
U32 get_idle_count(void)
{
	MSG msg;
	msg.type			= SYS_MSG_UNION;
	msg.msg_union.sys_msg.para	= GET_IDLE_COUNT;
	assert(	sendrecv(BOTH,TASK_SYS_PID,&msg) == 0	);
	return msg.msg_union.sys_msg.para;
}
//--------------------------------------------------------------------------------------------------*/
// 通过文件系统输出一个字符
void out_char(TTY* p_tty,char ch)
{
	MSG	msg;
	msg.type			= SYS_MSG_UNION;
	msg.msg_union.sys_msg.para	= OUT_CHAR;
	msg.msg_union.sys_msg.ch	= ch;
	msg.msg_union.sys_msg.p_tty	= p_tty;
	
	assert(	sendrecv(BOTH,TASK_SYS_PID,&msg) == 0	);
}
//--------------------------------------------------------------------------------------------------*/
// 获取父进程PID
U32 get_parent(void)
{
	MSG msg;
	msg.type			= SYS_MSG_UNION;
	msg.msg_union.sys_msg.para	= GET_PARRENT;
	assert(	sendrecv(BOTH,TASK_SYS_PID,&msg) == 0	);
	return msg.msg_union.sys_msg.para;
}
//--------------------------------------------------------------------------------------------------*/
// 获取父进程PID
U32 get_pid(void)
{
	MSG msg;
	msg.type			= SYS_MSG_UNION;
	msg.msg_union.sys_msg.para	= GET_PID;
	assert(	sendrecv(BOTH,TASK_SYS_PID,&msg) == 0	);
	return msg.msg_union.sys_msg.para;
}
//--------------------------------------------------------------------------------------------------*/
// 设置进程的父进程PID
void set_ppid(int ppid)
{
	MSG msg;
	msg.type			= SYS_MSG_UNION;
	msg.msg_union.sys_msg.para	= SET_PPID;
	msg.msg_union.sys_msg.ppid	= ppid;
	assert(	sendrecv(BOTH,TASK_SYS_PID,&msg) == 0	);
}
//--------------------------------------------------------------------------------------------------*/




