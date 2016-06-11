#include	"def.h"
#include	"tty.h"
#ifndef	_TASK_SYS_
#define	_TASK_SYS_

//-----------------------------------------------------------*/
// task_sys 相关常量	微内核系统调用
#define	GET_TICK		0	// 取得系统ticks
#define	GET_IDLE_COUNT	1	// 取得空闲计数器
#define	OUT_CHAR		2	// 输出字符
#define	GET_PARRENT	3	// 取得父进程PID
#define	GET_PID		4	// 取得当前进程的PID
#define	SET_PPID		5	// 设置进程的父进程PID


typedef	struct	sys_msg
{
	U32	para;
	char	ch;
	TTY*	p_tty;
	int	ppid;
	U32*	pdb;
}SYS_MSG;



void sys_out_ch(SYS_MSG* p_sys_msg);

U32	get_ticks(void);
U32	get_idle_count(void);
U32	get_parent(void);
U32	get_pid(void);
void	set_ppid(int ppid);
void	set_pdb(U32* pdb);		// 设置pdb

#endif	// _TASK_SYS_

