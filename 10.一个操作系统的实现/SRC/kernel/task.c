#include	"include.h"

//--------------------------------------------------------------------------------------------------*/
// 任务、进程初始化信息表
TASK_INFO	task_info[]	=	{
				// 任务入口地址	任务名		优先级
				// 从这里开始是任务（PL:1）总共NR_TASK个
				{task_tty,	"task_tty",	4	},
				{task_sys,	"task_sys",	4	},
				{task_hd,		"task_hd",	4	},
				{task_fs,		"task_fs",	4	},
				{task_idle,	"task_idle",	1	},	// 这是一个空闲任务，它永远不能调用可能导致阻塞的函数
				{task_mm,		"task_mm",	4	},
				// 从这里开始是进程（PL:3）总共NR_PROC个
				{proc_init,	"proc_init",	2	},
				{proc1,		"proc1",		2	},
				{proc2,		"proc2",		2	},
				{proc3,		"proc3",		2	},
				{proc4,		"proc4",		2	}
				};
//--------------------------------------------------------------------------------------------------*/
// 任务、进程堆栈
char	task_stack[TASK_STACK_SIZE * NR_TASK + PROC_STACK_SIZE * (NR_PROC - 1)];	// -1是因为init的堆栈段不在这里
//--------------------------------------------------------------------------------------------------*/
// 任务初始化
void Init_Task(void)
{
	int i;
	TCB * p_tcb = task_table;
	TASK_INFO* p_info = task_info;
	U32 stack_bottom = (U32)task_stack;
	// 1、初始化任务表
	for(i=0;i < NR_TASK + NR_PROC + NR_CPROC;i++,p_tcb++,p_info++)
	{
		// 建立空闲TCB、有效TCB链表
		p_tcb->pre	= p_tcb -1;
		p_tcb->next	= p_tcb + 1;
		
		U8	iopl;
		U32	stack_size;
//--------------------------------------------------------------------------------------------------*/
		// 子进程空位只需要初始化以下内容
//		p_tcb->ldt_selector		= 	(FIRST_LDT_TASK + i) * sizeof(Descriptor) ;
		p_tcb->pid		=	i;
		p_tcb->p_empty		=	1;
		if(i >= NR_TASK + NR_PROC)
		{
			continue;
		}
//--------------------------------------------------------------------------------------------------*/
		// 以下是系统任务、进程需要初始化的内容
		// assert(i < NR_TASK + NR_PROC);		// 可惜此时tty还未初始化，不能使用assert
		p_tcb->p_empty		=	0;	// 以下都是“非空进程”
		p_tcb->pdb		=	SYS_PDB;	// 系统任务、进程的页目录、页表放在物理内存0处
		
		if(i < NR_TASK)
		{
			iopl		= RPL_TASK;	// 任务的IOPL设为和其RPL相同，赋予其对cli,sti,in,out等IO敏感指令的使用权
			stack_size 	= TASK_STACK_SIZE;
		}
		else
		{
			iopl		= 0;		// 进程的IOPL设为0，最高特权级，使进程无法使用IO敏感指令
			stack_size	= PROC_STACK_SIZE;
		}
		// ldt
//		memcopy((char *)&p_tcb->t_ldt[0],(char *)&gdt[Selector_Kernel_DS>>3],sizeof(Descriptor));
//		memcopy((char *)&p_tcb->t_ldt[1],(char *)&gdt[Selector_Kernel_CS>>3],sizeof(Descriptor));
//		p_tcb->t_ldt[0].attr1 = DA_DRW | (pl << 5);
//		p_tcb->t_ldt[1].attr1 = DA_C   | (pl << 5);
		// 堆栈
		p_tcb->regs.gs		=	Selector_User_DS;
		p_tcb->regs.fs		=	Selector_User_DS;
		p_tcb->regs.es		=	Selector_User_DS;
		p_tcb->regs.ds		=	Selector_User_DS;
		p_tcb->regs.edi		=	0;
		p_tcb->regs.esi		=	0;
		p_tcb->regs.ebp		=	0;
		p_tcb->regs.kernel_esp	=	0;			// 设为任何值都可以。因为，popa之后，esp的值和这个无关
		p_tcb->regs.ebx		=	0;
		p_tcb->regs.edx		=	0;
		p_tcb->regs.ecx		=	0;
		p_tcb->regs.eax		=	0;
		p_tcb->regs.err_code	=	0;
		p_tcb->regs.eip		=	(U32)p_info->task_entry;
		p_tcb->regs.cs		=	Selector_User_CS;				
		p_tcb->regs.eflags		=	iopl<<12 | 1<<9 | 1<<1;	// IF = 1,bit 1 is always 1
		if(i != PROC_INIT_PID)
			p_tcb->regs.esp	=	(stack_bottom += stack_size);	// 非init进程
		else
			p_tcb->regs.esp	=	PROC_INIT_ESP;		// init进程
		p_tcb->regs.ss		=	Selector_User_DS;
		// ipc
		p_tcb->t_stat		=	READY;
		p_tcb->has_int_msg		=	0;
		p_tcb->p_msg		=	0;
		p_tcb->sendto		=	0;
		p_tcb->recvfrom		=	0;
		p_tcb->p_mymsg		=	0;
		p_tcb->p_nextsending	=	0;
		
		// 文件filp
		int j;
		for(j = 0;j < MAX_TASK_FILE;j++)
			p_tcb->filp[j] = 0;
		// 杂项
		p_tcb->prio		=	p_info->prio;
		p_tcb->tick		=	p_info->prio;
		p_tcb->delay		=	0;
		p_tcb->parent		=	PROC_INIT_PID;
		memcopy(p_tcb->t_name,p_info->p_name,T_NAME_lEN);
	}
	// 建立空闲TCB、有效TCB链表
	
	// 初始化空闲TCB链表头、尾指针
	tfree_head	= task_table + NR_TASK + NR_PROC;	// 初始状态,所有TCB都空闲	| 附：
	tfree_tail	= task_table + NR_TOTAL - 1;		//	| head == 0 || tail == 0 表示链表为空
	assert(tfree_head != NULL);
	assert(tfree_tail != NULL);
	tfree_head->pre	= NULL;
	tfree_tail->next	= NULL;
	// 初始化有效TCB链表头、尾指针			//	| head != 0：
	tvalid_head	= task_table;			// 	| 	tail == head 表示链表只有一个成员
	tvalid_tail	= task_table + NR_TASK + NR_PROC - 1;
	assert(tvalid_head != NULL);
	assert(tvalid_tail != NULL);
	tvalid_head->pre	= NULL;
	tvalid_tail->next	= NULL;
//	// 2、初始化GDT
//	for(i=0;i < NR_TASK + NR_PROC + NR_CPROC;i++)
//	{
//		gdt[FIRST_LDT_TASK + i].limit_low		= (sizeof(Descriptor)*2) & 0xffff;
//		gdt[FIRST_LDT_TASK + i].base_low		= (U32)task_table[i].t_ldt & 0xffff;
//		gdt[FIRST_LDT_TASK + i].base_mid		= ((U32)task_table[i].t_ldt>>16) & 0xff;
//		gdt[FIRST_LDT_TASK + i].attr1			= DA_LDT;
//		gdt[FIRST_LDT_TASK + i].limit_high_attr2	= ( ((sizeof(Descriptor)*2)>>16 )&0xf) | DA_32;
//		gdt[FIRST_LDT_TASK + i].base_high		= ((U32)task_table[i].t_ldt>>24) & 0xff;
//	}
	
extern	Descriptor	TSS_gdt;
	TSS_gdt.limit_low	= sizeof(TSS) & 0xffff;
	TSS_gdt.base_low	= (U32)&tss & 0xffff;
	TSS_gdt.base_mid	= ((U32)&tss>>16) & 0xff;
	TSS_gdt.attr1		= DA_386TSS;
	TSS_gdt.limit_high_attr2	= ( sizeof(TSS)>>16 )&0xf;
	TSS_gdt.base_high	= ((U32)&tss>>24) & 0xff;
	// 3、设置初始任务
	task_current = task_table;
	// 4、初始化TSS
	tss.esp0	= (U32 )task_current + sizeof(Stack_Frame);	// 初始化为第一个任务的进程表堆栈
	tss.ss0	= Selector_Kernel_DS;
	// 5、建立INIT进程的页目录、页表
	(task_current + PROC_INIT_PID)->pdb	= (U32*)PROC_INIT_BASE;
	U32*	pdb	= (U32*)PROC_INIT_BASE;
	U32*	ptb	= (U32*)PROC_INIT_BASE + 1024;
	for(i = 0;i < NR_PDE;i++)				// 页目录
	{
		*pdb++	= (U32)ptb + PG_P + PG_RW + PG_US;
		ptb	+= 1024;				// ptb是U32型指针,+1024即“地址增加4K”
	}
	ptb	= (U32*)PROC_INIT_BASE + 1024;		// 页表
	U32	phys	= 0;
	for(i = 0;i < 0x100000 / 4 / 1024;i++)			// 1MB 以下的虚拟地址和物理地址对等映射(映射到内核)
	{
		*ptb++	= phys | PG_P | PG_RW | PG_US;
		phys	+= 4 * 1024;
	}
	for(phys	= PROC_INIT_BASE;i < NR_PTE;i++)		// 1MB 以上的虚拟地址映射到进程内存地址
	{
		*ptb	= phys | PG_RW | PG_US;		// 2MB 以上设置成“不存在”
		if(i < 0x200000 / 4 / 1024)
			*ptb	|= PG_P;
		ptb++;
		phys	+= 4 * 1024;
	}
} 
//--------------------------------------------------------------------------------------------------*/
// 任务、进程切换函数
void sched(void)
{
	TCB 	* pwork,* pmax;
	S32	max;
	assert(if_off);
	int	i;
	for(i = 0;i < 2;i++)	// 最多循环两次，实在找不到就绪进程，那就退出，避免关中断后死循环导致死机
	{
		assert((task_table + TASK_IDLE_PID)->t_stat == READY);
		for(pwork = tvalid_head,max = 0;pwork != NULL;pwork = pwork->next)	// 找出剩余时间最大的任务
		{
			if(pwork->p_empty == 1)	continue;
			if(pwork->t_stat != READY)
				continue;
			if(pwork->tick > max) 
			{
				max = pwork->tick;
				pmax = pwork;
			}
		}
		if( max == 0 )							// 如果所有任务、进程时间都用完，则重新赋值
		{
			for(pwork = tvalid_head,max = 0;pwork != NULL;pwork = pwork->next)
			{
				if(pwork->p_empty == 1)	continue;
				pwork->tick = pwork->prio;				// 重新赋值之后，再找出剩余时间最大者
			}
		}
		else
		{
			task_current = pmax;					// 找出最大者后，任务切换之
			break;
		}
	}
	assert(if_off);
}

TCB*	get_tcb(void)
{
	// 1、在空闲链表头部取一个成员
	if(tfree_head == NULL)	return	NULL;
	
	TCB*	p_tcb	= tfree_head;
	tfree_head		= tfree_head->next;
	if(tfree_head == NULL)	// 链表里只有这一个成员,释放了就没了
	{
		tfree_tail	= NULL;
	}
	else			// 链表里还有其他成员
	{
		tfree_head->pre	= NULL;
	}
	assert(p_tcb->p_empty == 1);
	// 2、将缓冲头放入有效链表尾部
	p_tcb->pre	= tvalid_tail;
	p_tcb->next	= NULL;
	if(tvalid_head == NULL)
	{
		assert(tvalid_tail == NULL);
		tvalid_head	= p_tcb;
	}
	else
	{
		tvalid_tail->next	= p_tcb;
	}
	tvalid_tail	= p_tcb;
	//printk("get_buff i_num : %d  buff_base:%x    offset: %d \n",p_tcb->i_num,p_tcb->buff_base,p_tcb->offset);
	
	return	p_tcb;
}
int	put_tcb(TCB* p_tcb)
{
	//printk("put_buff i_num : %d  buff_base:%x    offset: %d \n",p_tcb->p_inode->i_num,p_tcb->buff_base,p_tcb->offset);
	// 1、在有效链表中释放
	if(p_tcb == tvalid_head)		// 在头部
	{
		tvalid_head = tvalid_head->next;
		if(tvalid_head == NULL)	// 链表里只有这一个成员,释放了就没了
		{
			tvalid_tail	= NULL;
		}
		else			// 链表里还有其他成员
		{
			tvalid_head->pre	= NULL;
		}
	}
	else if(p_tcb == tvalid_tail)		// 在尾部
	{
		tvalid_tail	= tvalid_tail->pre;
		if(tvalid_tail == NULL)
			tvalid_head	= NULL;
		else
			tvalid_tail->next	= NULL;
	}
	else				// 在中间
	{
//		// 在有效链表里搜索待释放的成员
//		TCB*	p_work;
//		for(p_work = tvalid_head->next;p_work != tvalid_tail ;p_work = p_work->next)
//		{
//			if(p_work == p_tcb)
//				break;
//		}
//		if(p_work == tvalid_tail)	return	-1;	// 待释放的缓冲头不存在
//		assert(p_work == p_tcb);
		// 释放,调整链表
		p_tcb->pre->next	= p_tcb->next;
		p_tcb->next->pre	= p_tcb->pre;
	}
	assert(p_tcb->p_empty == 0);
	p_tcb->p_empty		= 1;
	// 2、将释放后的缓冲头连接到空闲链表尾部
	if(p_tcb->pid < RPL_TASK + RPL_PROC)	return	1;	// 系统自带的TCB不能放入有效链表
	assert(p_tcb->pid >= RPL_TASK + RPL_PROC);
	
	p_tcb->pre		= tfree_tail;
	p_tcb->next	= NULL;
	if(tfree_head == NULL)
	{
		assert(tfree_tail == NULL);
		tfree_head	= p_tcb;
	}
	else
	{
		tfree_tail->next	= p_tcb;
	}
	tfree_tail	= p_tcb;
	return	0;
}



//--------------------------------------------------------------------------------------------------*/
// 这是一个空闲任务，它永远不能调用可能导致阻塞的函数
void task_idle(void * pdata)
{
	pdata = pdata;
	idle_count = 0;	// 计数器清零
	while(1)
	{
		idle_count++;
	}
}
//--------------------------------------------------------------------------------------------------*/

