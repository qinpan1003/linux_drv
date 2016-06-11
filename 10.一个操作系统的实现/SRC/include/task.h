#include	"def.h"
#include	"pm.h"
#include	"tty.h"
#include	"ipc.h"
#include	"fs.h"
// ���̱�Ķ�ջ�ṹ
#ifndef	_TCB_
#define	_TCB_
//--------------------------------------------------------------------------------------------------*/
// ���񡢽���	���尲�ţ�GDT�У��ȷ�������LDT����������LDT
#define	NR_TASK		6		// ������
#define	NR_PROC		5		// ������
#define	NR_CPROC		256		// �ӽ�����
#define	NR_TOTAL		(NR_TASK + NR_PROC + NR_CPROC)	// ϵͳ���񡢽���,�ӽ�������

#define	TASK_TTY_PID	0		// TTY�������
#define	TASK_SYS_PID	1		// task_sys��pid
#define	TASK_HD_PID	2		// task_hd��pid
#define	TASK_FS_PID	3		// task_fs
#define	TASK_IDLE_PID	4		// task_idle
#define	TASK_MM_PID	5		// task_mm

#define	PROC_INIT_PID	(NR_TASK)		// proc_init
#define	PROC_1_PID	(PROC_INIT_PID + 1)	// proc1
#define	PROC_2_PID	(PROC_1_PID + 1)	// proc2
#define	PROC_3_PID	(PROC_2_PID + 1)	// proc3
#define	PROC_4_PID	(PROC_3_PID + 1)	// proc4
//--------------------------------------------------------------------------------------------------*/
// ������񡢽���ʱ���������ݲ����޸�
#define	TASK_STACK_SIZE	(1024 * 8)	// �����ջ��С
#define	PROC_STACK_SIZE	(1024 * 8)	// ���̶�ջ��С
#define	RPL_TASK		3		// task ��Ȩ�� RPL
#define	RPL_PROC		3		// proc ��Ȩ�� RPL
#define	DPL_IDT		RPL_PROC		// ���ж���IDT�е�DPL		��Ϊ�����Ȩ������������Ȩ����͵Ľ����ܹ�����
#define	RPL_IDT		DPL_IDT		// ���ж���IDT�е�RPL		��Ϊ�ʵ�ֵ��RPL_IDT <= DPL_IDT ���ɡ� ���� RPL_IDT ��С�����ƣ������𵽶��ж��ŵ�Ȩ�޿���
//--------------------------------------------------------------------------------------------------*/
// ���񡢽���״̬
#define	READY		0
#define	SENDING		1
#define	RECVING		2
#define	BOTHING		3
#define	DELAYING		4
#define	WAITING		5
#define	HANGING		6
#define	EXCEPTION		7

#define	T_NAME_lEN	12	// ������ ����
//--------------------------------------------------------------------------------------------------*/
// ��������
//--------------------------------------------------------------------------------------------------*/
// ����������
void task_tty(void * pdata);
void task_sys(void * pdata);
void task_hd(void * pdata);
void task_fs(void * pdata);
void task_idle(void * pdata);
void task_mm(void * pdata);
//--------------------------------------------------------------------------------------------------*/
// ����������
void proc_init(void * pdata);
void proc1(void * pdata);
void proc2(void * pdata);
void proc3(void * pdata);
void proc4(void * pdata);
//--------------------------------------------------------------------------------------------------*/
// ���̱��ջ�ṹ
typedef struct s_stackframe
{
	U32	gs;		// �ֶ�4��PUSH��POP
	U32	fs;
	U32	es;
	U32	ds;
	
	U32	edi;		// �ֶ�PUSHA POPA
	U32	esi;
	U32	ebp;
	U32	kernel_esp;
	U32	ebx;
	U32	edx;
	U32	ecx;
	U32	eax;
	
	U32	err_code;
	U32	eip;		// Ӳ���Զ�����ջ
	U32	cs;
	U32	eflags;
	U32	esp;
	U32	ss;
}Stack_Frame;
//--------------------------------------------------------------------------------------------------*/
// ���̱�
typedef struct tcb
{										// forkʱ����Ҫ���ӽ������޸ĵ������� '*' ��ǡ���Щ���ݣ�����filp���ڳ�ʼ��ʱ�����ú�
	Stack_Frame	regs;		// ��ջ
//	U16		ldt_selector;	// ldtѡ���				// *
	U32*		pdb;		// ҳĿ¼����ַ				// *
//	Descriptor	t_ldt[2];		// ldt	t_ldt[0]:DS	t_ldt[1]:CS	// *
	U32		pid;		// ���̺�					// *
	U32		p_empty;		// �ý��̱���Ч				// *
	// ipc
	U32		t_stat;		// ����״̬
	char		has_int_msg;	// �����ж���Ϣ
	MSG*		p_msg;		// ��Ϣ��ַ
	int		sendto;		// �����̷��Ͷ���Ľ���PID
	int		recvfrom;		// �򱾽��̷�����Ϣ�Ľ���PID
	struct tcb *	p_mymsg;		// �������յ�����Ϣ����ͷָ��
	struct tcb *	p_nextsending;	// �������ڷ��Ͷ��������һ��Ԫ��
	// �ļ�
	File_Desc*	filp[MAX_TASK_FILE];// �����̵��ļ�������ָ��			// *	�������Ҫ�ӽ��̳�ʼ��
	// ����
	S32		prio;		// ���ȼ�
	S32		tick;		// ʣ��ִ��ʱ��
	int		delay;		// ��������ʱʱ��
	int		parent;		// �����̵ĸ�����PID
	char		t_name[T_NAME_lEN];	// ������
	int*		p_s;		// �����˳����ַ	����wait
	int		s;		// �����˳���	����exit,��Ϊexit֮��,�ӽ��̵��ڴ��ͷ�,����ֻ���ڽ��̱��С���ֵ��,�����ܡ����ַ��
	struct	tcb*	pre;		// ǰһ������ͷ
	struct	tcb*	next;		// ��һ������ͷ
	U32*		v_indext;		// ��¼�ӽ����ڴ�ʹ�����������

}TCB;
//--------------------------------------------------------------------------------------------------*/
// ���񡢽��̳�ʼ����Ϣ��
typedef	struct	task_info
{
	void (*task_entry)(void * pdata);	// ������ڵ�ַ��p�ǲ�����ַ
	char*	p_name;		// ������
	int	prio;		// ���ȼ�
}TASK_INFO;

TCB*	get_tcb(void);
int	put_tcb(TCB* p_tcb);



#endif	// _TCB_
