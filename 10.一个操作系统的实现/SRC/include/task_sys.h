#include	"def.h"
#include	"tty.h"
#ifndef	_TASK_SYS_
#define	_TASK_SYS_

//-----------------------------------------------------------*/
// task_sys ��س���	΢�ں�ϵͳ����
#define	GET_TICK		0	// ȡ��ϵͳticks
#define	GET_IDLE_COUNT	1	// ȡ�ÿ��м�����
#define	OUT_CHAR		2	// ����ַ�
#define	GET_PARRENT	3	// ȡ�ø�����PID
#define	GET_PID		4	// ȡ�õ�ǰ���̵�PID
#define	SET_PPID		5	// ���ý��̵ĸ�����PID


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
void	set_pdb(U32* pdb);		// ����pdb

#endif	// _TASK_SYS_

