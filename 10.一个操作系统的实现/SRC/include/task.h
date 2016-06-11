#include	"def.h"
#include	"pm.h"
#include	"tty.h"
#include	"ipc.h"
#include	"fs.h"
// 进程表的堆栈结构
#ifndef	_TCB_
#define	_TCB_
//--------------------------------------------------------------------------------------------------*/
// 任务、进程	整体安排：GDT中，先分配任务LDT，后分配进程LDT
#define	NR_TASK		6		// 任务数
#define	NR_PROC		5		// 进程数
#define	NR_CPROC		256		// 子进程数
#define	NR_TOTAL		(NR_TASK + NR_PROC + NR_CPROC)	// 系统任务、进程,子进程总数

#define	TASK_TTY_PID	0		// TTY的任务号
#define	TASK_SYS_PID	1		// task_sys的pid
#define	TASK_HD_PID	2		// task_hd的pid
#define	TASK_FS_PID	3		// task_fs
#define	TASK_IDLE_PID	4		// task_idle
#define	TASK_MM_PID	5		// task_mm

#define	PROC_INIT_PID	(NR_TASK)		// proc_init
#define	PROC_1_PID	(PROC_INIT_PID + 1)	// proc1
#define	PROC_2_PID	(PROC_1_PID + 1)	// proc2
#define	PROC_3_PID	(PROC_2_PID + 1)	// proc3
#define	PROC_4_PID	(PROC_3_PID + 1)	// proc4
//--------------------------------------------------------------------------------------------------*/
// 添加任务、进程时，以下内容不用修改
#define	TASK_STACK_SIZE	(1024 * 8)	// 任务堆栈大小
#define	PROC_STACK_SIZE	(1024 * 8)	// 进程堆栈大小
#define	RPL_TASK		3		// task 特权级 RPL
#define	RPL_PROC		3		// proc 特权级 RPL
#define	DPL_IDT		RPL_PROC		// 软中断门IDT中的DPL		设为最低特权级，以允许特权级最低的进程能够调用
#define	RPL_IDT		DPL_IDT		// 软中断门IDT中的RPL		设为适当值：RPL_IDT <= DPL_IDT 即可。 但对 RPL_IDT 大小的限制，可以起到对中断门的权限控制
//--------------------------------------------------------------------------------------------------*/
// 任务、进程状态
#define	READY		0
#define	SENDING		1
#define	RECVING		2
#define	BOTHING		3
#define	DELAYING		4
#define	WAITING		5
#define	HANGING		6
#define	EXCEPTION		7

#define	T_NAME_lEN	12	// 进程名 长度
//--------------------------------------------------------------------------------------------------*/
// 函数申明
//--------------------------------------------------------------------------------------------------*/
// 任务体申明
void task_tty(void * pdata);
void task_sys(void * pdata);
void task_hd(void * pdata);
void task_fs(void * pdata);
void task_idle(void * pdata);
void task_mm(void * pdata);
//--------------------------------------------------------------------------------------------------*/
// 进程体申明
void proc_init(void * pdata);
void proc1(void * pdata);
void proc2(void * pdata);
void proc3(void * pdata);
void proc4(void * pdata);
//--------------------------------------------------------------------------------------------------*/
// 进程表堆栈结构
typedef struct s_stackframe
{
	U32	gs;		// 手动4个PUSH、POP
	U32	fs;
	U32	es;
	U32	ds;
	
	U32	edi;		// 手动PUSHA POPA
	U32	esi;
	U32	ebp;
	U32	kernel_esp;
	U32	ebx;
	U32	edx;
	U32	ecx;
	U32	eax;
	
	U32	err_code;
	U32	eip;		// 硬件自动出入栈
	U32	cs;
	U32	eflags;
	U32	esp;
	U32	ss;
}Stack_Frame;
//--------------------------------------------------------------------------------------------------*/
// 进程表
typedef struct tcb
{										// fork时，需要在子进程中修改的内容用 '*' 标记。这些内容（除了filp）在初始化时就设置好
	Stack_Frame	regs;		// 堆栈
//	U16		ldt_selector;	// ldt选择符				// *
	U32*		pdb;		// 页目录基地址				// *
//	Descriptor	t_ldt[2];		// ldt	t_ldt[0]:DS	t_ldt[1]:CS	// *
	U32		pid;		// 进程号					// *
	U32		p_empty;		// 该进程表无效				// *
	// ipc
	U32		t_stat;		// 进程状态
	char		has_int_msg;	// 有无中断消息
	MSG*		p_msg;		// 消息地址
	int		sendto;		// 本进程发送对象的进程PID
	int		recvfrom;		// 向本进程发送消息的进程PID
	struct tcb *	p_mymsg;		// 本进程收到的消息队列头指针
	struct tcb *	p_nextsending;	// 本进程在发送队列里的下一个元素
	// 文件
	File_Desc*	filp[MAX_TASK_FILE];// 本进程的文件描述符指针			// *	这个不需要子进程初始化
	// 杂项
	S32		prio;		// 优先级
	S32		tick;		// 剩余执行时间
	int		delay;		// 本进程延时时间
	int		parent;		// 本进程的父进程PID
	char		t_name[T_NAME_lEN];	// 进程名
	int*		p_s;		// 进程退出码地址	用于wait
	int		s;		// 进程退出码	用于exit,因为exit之后,子进程的内存释放,所以只能在进程表中“存值”,而不能“存地址”
	struct	tcb*	pre;		// 前一个任务头
	struct	tcb*	next;		// 下一个任务头
	U32*		v_indext;		// 记录子进程内存使用情况的索引

}TCB;
//--------------------------------------------------------------------------------------------------*/
// 任务、进程初始化信息表
typedef	struct	task_info
{
	void (*task_entry)(void * pdata);	// 任务入口地址。p是参数地址
	char*	p_name;		// 任务名
	int	prio;		// 优先级
}TASK_INFO;

TCB*	get_tcb(void);
int	put_tcb(TCB* p_tcb);



#endif	// _TCB_
