// 只能有一个源文件定义宏_GLOBAL_HERE_		如果两个以上源文件定义了该宏，则会出现变量重复定义错误
// 而且也必须有一个源文件定义宏_GLOBAL_HERE_	如果没有任何源文件定义该宏，则会出现变量未定义错误
// 在源文件中，专门建立了一个global.c定义宏_GLOBAL_HERE_，并包含global.h，用于实现变量定义
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

EXTERN int	ticks;		// 时钟滴答
//EXTERN Descriptor	gdt[NR_GDT];	// GDT描述符表	前4个(从0开始数)分别是empty vedio cs ds，第4个是TSS，从第5个开始往后是LDT描述符
EXTERN Gate	idt[NR_IDT];	// IDT
EXTERN char	gdt_para[6];	// GDT加载参数
EXTERN char	idt_para[6];	// IDT加载参数
EXTERN TCB	task_table[NR_TASK + NR_PROC + NR_CPROC];	// 任务、进程、子进程表
EXTERN TCB	*tfree_head,*tfree_tail;	// 空闲任务头 头尾指针
EXTERN TCB	*tvalid_head,*tvalid_tail;	// 有效任务头 头尾指针
extern char *	StackTop;		// 内核堆栈栈顶
EXTERN TSS	tss;		// TSS
EXTERN TCB *	task_current;	// 当前执行的任务
EXTERN K_BUF	k_buf;		// 扫描码缓冲区
extern U32	keymap[][MAP_COL];	// 按键映射表
EXTERN CONSOLE	console[NR_CONSOLE];// console
EXTERN TTY	tty[NR_TTY];	// tty
EXTERN TTY *	tty_current;	// 当前tty
EXTERN char	hdbuf[HD_BUF_SIZE];	// 硬盘读写缓冲
EXTERN char	fsbuf[FS_BUF_SIZE];	// 文件系统缓冲区
EXTERN HD_INFO	hd_info[NR_DRIVERS];// 硬盘信息
EXTERN char	nr_hd_driver;	// 实际的硬盘驱动器数
EXTERN File_Desc	file_table[MAX_ALL_FILE];		// 所有打开文件的描述符数组
EXTERN Inode	inode_table[MAX_ALL_INODE];		// 所有打开文件对应的inode
extern int	dd_map[];		// 设备驱动程序PID	以主设备号为索引
EXTERN U32	idle_count;	// 空闲任务计数器
EXTERN int	keyboard_int;	// 键盘动作标志
extern int	tty_has_msg_tmp;	// tty有消息需要外发
extern int	int_off_num;	// 中断关闭次数

EXTERN BUFF_HEAD	bh_table[NR_BUFF];		// 缓冲头数组
EXTERN BUFF_HEAD	*bfree_head,*bfree_tail;	// 空闲缓冲头 头尾指针
EXTERN BUFF_HEAD	*bvalid_head,*bvalid_tail;	// 有效缓冲头 头尾指针

EXTERN PAGE_HEAD	ph_table[NR_PAGE];		// 页头数组
EXTERN PAGE_HEAD	*pfree_head,*pfree_tail;	// 空闲页头 头尾指针



