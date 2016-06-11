// ֻ����һ��Դ�ļ������_GLOBAL_HERE_		�����������Դ�ļ������˸ú꣬�����ֱ����ظ��������
// ����Ҳ������һ��Դ�ļ������_GLOBAL_HERE_	���û���κ�Դ�ļ�����ú꣬�����ֱ���δ�������
// ��Դ�ļ��У�ר�Ž�����һ��global.c�����_GLOBAL_HERE_��������global.h������ʵ�ֱ�������
#ifdef	_GLOBAL_HERE_
#define	EXTERN
#else
#define	EXTERN	extern
#endif

#include	"pm.h"
#include	"const.h"
#include	"task.h"
#include	"keyboard.h"
#include	"tty.h"
#include	"hd.h"
#include	"fs.h"
#include	"filebuff.h"
#include	"paging.h"

EXTERN int	ticks;		// ʱ�ӵδ�
//EXTERN Descriptor	gdt[NR_GDT];	// GDT��������	ǰ4��(��0��ʼ��)�ֱ���empty vedio cs ds����4����TSS���ӵ�5����ʼ������LDT������
EXTERN Gate	idt[NR_IDT];	// IDT
EXTERN char	gdt_para[6];	// GDT���ز���
EXTERN char	idt_para[6];	// IDT���ز���
EXTERN TCB	task_table[NR_TASK + NR_PROC + NR_CPROC];	// ���񡢽��̡��ӽ��̱�
EXTERN TCB	*tfree_head,*tfree_tail;	// ��������ͷ ͷβָ��
EXTERN TCB	*tvalid_head,*tvalid_tail;	// ��Ч����ͷ ͷβָ��
extern char *	StackTop;		// �ں˶�ջջ��
EXTERN TSS	tss;		// TSS
EXTERN TCB *	task_current;	// ��ǰִ�е�����
EXTERN K_BUF	k_buf;		// ɨ���뻺����
extern U32	keymap[][MAP_COL];	// ����ӳ���
EXTERN CONSOLE	console[NR_CONSOLE];// console
EXTERN TTY	tty[NR_TTY];	// tty
EXTERN TTY *	tty_current;	// ��ǰtty
EXTERN char	hdbuf[HD_BUF_SIZE];	// Ӳ�̶�д����
EXTERN char	fsbuf[FS_BUF_SIZE];	// �ļ�ϵͳ������
EXTERN HD_INFO	hd_info[NR_DRIVERS];// Ӳ����Ϣ
EXTERN char	nr_hd_driver;	// ʵ�ʵ�Ӳ����������
EXTERN File_Desc	file_table[MAX_ALL_FILE];		// ���д��ļ�������������
EXTERN Inode	inode_table[MAX_ALL_INODE];		// ���д��ļ���Ӧ��inode
extern int	dd_map[];		// �豸��������PID	�����豸��Ϊ����
EXTERN U32	idle_count;	// �������������
EXTERN int	keyboard_int;	// ���̶�����־
extern int	tty_has_msg_tmp;	// tty����Ϣ��Ҫ�ⷢ
extern int	int_off_num;	// �жϹرմ���

EXTERN BUFF_HEAD	bh_table[NR_BUFF];		// ����ͷ����
EXTERN BUFF_HEAD	*bfree_head,*bfree_tail;	// ���л���ͷ ͷβָ��
EXTERN BUFF_HEAD	*bvalid_head,*bvalid_tail;	// ��Ч����ͷ ͷβָ��

EXTERN PAGE_HEAD	ph_table[NR_PAGE];		// ҳͷ����
EXTERN PAGE_HEAD	*pfree_head,*pfree_tail;	// ����ҳͷ ͷβָ��



