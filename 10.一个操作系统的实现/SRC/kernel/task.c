#include	"include.h"

//--------------------------------------------------------------------------------------------------*/
// ���񡢽��̳�ʼ����Ϣ��
TASK_INFO	task_info[]	=	{
				// ������ڵ�ַ	������		���ȼ�
				// �����￪ʼ������PL:1���ܹ�NR_TASK��
				{task_tty,	"task_tty",	4	},
				{task_sys,	"task_sys",	4	},
				{task_hd,		"task_hd",	4	},
				{task_fs,		"task_fs",	4	},
				{task_idle,	"task_idle",	1	},	// ����һ��������������Զ���ܵ��ÿ��ܵ��������ĺ���
				{task_mm,		"task_mm",	4	},
				// �����￪ʼ�ǽ��̣�PL:3���ܹ�NR_PROC��
				{proc_init,	"proc_init",	2	},
				{proc1,		"proc1",		2	},
				{proc2,		"proc2",		2	},
				{proc3,		"proc3",		2	},
				{proc4,		"proc4",		2	}
				};
//--------------------------------------------------------------------------------------------------*/
// ���񡢽��̶�ջ
char	task_stack[TASK_STACK_SIZE * NR_TASK + PROC_STACK_SIZE * (NR_PROC - 1)];	// -1����Ϊinit�Ķ�ջ�β�������
//--------------------------------------------------------------------------------------------------*/
// �����ʼ��
void Init_Task(void)
{
	int i;
	TCB * p_tcb = task_table;
	TASK_INFO* p_info = task_info;
	U32 stack_bottom = (U32)task_stack;
	// 1����ʼ�������
	for(i=0;i < NR_TASK + NR_PROC + NR_CPROC;i++,p_tcb++,p_info++)
	{
		// ��������TCB����ЧTCB����
		p_tcb->pre	= p_tcb -1;
		p_tcb->next	= p_tcb + 1;
		
		U8	iopl;
		U32	stack_size;
//--------------------------------------------------------------------------------------------------*/
		// �ӽ��̿�λֻ��Ҫ��ʼ����������
//		p_tcb->ldt_selector		= 	(FIRST_LDT_TASK + i) * sizeof(Descriptor) ;
		p_tcb->pid		=	i;
		p_tcb->p_empty		=	1;
		if(i >= NR_TASK + NR_PROC)
		{
			continue;
		}
//--------------------------------------------------------------------------------------------------*/
		// ������ϵͳ���񡢽�����Ҫ��ʼ��������
		// assert(i < NR_TASK + NR_PROC);		// ��ϧ��ʱtty��δ��ʼ��������ʹ��assert
		p_tcb->p_empty		=	0;	// ���¶��ǡ��ǿս��̡�
		p_tcb->pdb		=	SYS_PDB;	// ϵͳ���񡢽��̵�ҳĿ¼��ҳ����������ڴ�0��
		
		if(i < NR_TASK)
		{
			iopl		= RPL_TASK;	// �����IOPL��Ϊ����RPL��ͬ���������cli,sti,in,out��IO����ָ���ʹ��Ȩ
			stack_size 	= TASK_STACK_SIZE;
		}
		else
		{
			iopl		= 0;		// ���̵�IOPL��Ϊ0�������Ȩ����ʹ�����޷�ʹ��IO����ָ��
			stack_size	= PROC_STACK_SIZE;
		}
		// ldt
//		memcopy((char *)&p_tcb->t_ldt[0],(char *)&gdt[Selector_Kernel_DS>>3],sizeof(Descriptor));
//		memcopy((char *)&p_tcb->t_ldt[1],(char *)&gdt[Selector_Kernel_CS>>3],sizeof(Descriptor));
//		p_tcb->t_ldt[0].attr1 = DA_DRW | (pl << 5);
//		p_tcb->t_ldt[1].attr1 = DA_C   | (pl << 5);
		// ��ջ
		p_tcb->regs.gs		=	Selector_User_DS;
		p_tcb->regs.fs		=	Selector_User_DS;
		p_tcb->regs.es		=	Selector_User_DS;
		p_tcb->regs.ds		=	Selector_User_DS;
		p_tcb->regs.edi		=	0;
		p_tcb->regs.esi		=	0;
		p_tcb->regs.ebp		=	0;
		p_tcb->regs.kernel_esp	=	0;			// ��Ϊ�κ�ֵ�����ԡ���Ϊ��popa֮��esp��ֵ������޹�
		p_tcb->regs.ebx		=	0;
		p_tcb->regs.edx		=	0;
		p_tcb->regs.ecx		=	0;
		p_tcb->regs.eax		=	0;
		p_tcb->regs.err_code	=	0;
		p_tcb->regs.eip		=	(U32)p_info->task_entry;
		p_tcb->regs.cs		=	Selector_User_CS;				
		p_tcb->regs.eflags		=	iopl<<12 | 1<<9 | 1<<1;	// IF = 1,bit 1 is always 1
		if(i != PROC_INIT_PID)
			p_tcb->regs.esp	=	(stack_bottom += stack_size);	// ��init����
		else
			p_tcb->regs.esp	=	PROC_INIT_ESP;		// init����
		p_tcb->regs.ss		=	Selector_User_DS;
		// ipc
		p_tcb->t_stat		=	READY;
		p_tcb->has_int_msg		=	0;
		p_tcb->p_msg		=	0;
		p_tcb->sendto		=	0;
		p_tcb->recvfrom		=	0;
		p_tcb->p_mymsg		=	0;
		p_tcb->p_nextsending	=	0;
		
		// �ļ�filp
		int j;
		for(j = 0;j < MAX_TASK_FILE;j++)
			p_tcb->filp[j] = 0;
		// ����
		p_tcb->prio		=	p_info->prio;
		p_tcb->tick		=	p_info->prio;
		p_tcb->delay		=	0;
		p_tcb->parent		=	PROC_INIT_PID;
		memcopy(p_tcb->t_name,p_info->p_name,T_NAME_lEN);
	}
	// ��������TCB����ЧTCB����
	
	// ��ʼ������TCB����ͷ��βָ��
	tfree_head	= task_table + NR_TASK + NR_PROC;	// ��ʼ״̬,����TCB������	| ����
	tfree_tail	= task_table + NR_TOTAL - 1;		//	| head == 0 || tail == 0 ��ʾ����Ϊ��
	assert(tfree_head != NULL);
	assert(tfree_tail != NULL);
	tfree_head->pre	= NULL;
	tfree_tail->next	= NULL;
	// ��ʼ����ЧTCB����ͷ��βָ��			//	| head != 0��
	tvalid_head	= task_table;			// 	| 	tail == head ��ʾ����ֻ��һ����Ա
	tvalid_tail	= task_table + NR_TASK + NR_PROC - 1;
	assert(tvalid_head != NULL);
	assert(tvalid_tail != NULL);
	tvalid_head->pre	= NULL;
	tvalid_tail->next	= NULL;
//	// 2����ʼ��GDT
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
	// 3�����ó�ʼ����
	task_current = task_table;
	// 4����ʼ��TSS
	tss.esp0	= (U32 )task_current + sizeof(Stack_Frame);	// ��ʼ��Ϊ��һ������Ľ��̱��ջ
	tss.ss0	= Selector_Kernel_DS;
	// 5������INIT���̵�ҳĿ¼��ҳ��
	(task_current + PROC_INIT_PID)->pdb	= (U32*)PROC_INIT_BASE;
	U32*	pdb	= (U32*)PROC_INIT_BASE;
	U32*	ptb	= (U32*)PROC_INIT_BASE + 1024;
	for(i = 0;i < NR_PDE;i++)				// ҳĿ¼
	{
		*pdb++	= (U32)ptb + PG_P + PG_RW + PG_US;
		ptb	+= 1024;				// ptb��U32��ָ��,+1024������ַ����4K��
	}
	ptb	= (U32*)PROC_INIT_BASE + 1024;		// ҳ��
	U32	phys	= 0;
	for(i = 0;i < 0x100000 / 4 / 1024;i++)			// 1MB ���µ������ַ�������ַ�Ե�ӳ��(ӳ�䵽�ں�)
	{
		*ptb++	= phys | PG_P | PG_RW | PG_US;
		phys	+= 4 * 1024;
	}
	for(phys	= PROC_INIT_BASE;i < NR_PTE;i++)		// 1MB ���ϵ������ַӳ�䵽�����ڴ��ַ
	{
		*ptb	= phys | PG_RW | PG_US;		// 2MB �������óɡ������ڡ�
		if(i < 0x200000 / 4 / 1024)
			*ptb	|= PG_P;
		ptb++;
		phys	+= 4 * 1024;
	}
} 
//--------------------------------------------------------------------------------------------------*/
// ���񡢽����л�����
void sched(void)
{
	TCB 	* pwork,* pmax;
	S32	max;
	assert(if_off);
	int	i;
	for(i = 0;i < 2;i++)	// ���ѭ�����Σ�ʵ���Ҳ����������̣��Ǿ��˳���������жϺ���ѭ����������
	{
		assert((task_table + TASK_IDLE_PID)->t_stat == READY);
		for(pwork = tvalid_head,max = 0;pwork != NULL;pwork = pwork->next)	// �ҳ�ʣ��ʱ����������
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
		if( max == 0 )							// ����������񡢽���ʱ�䶼���꣬�����¸�ֵ
		{
			for(pwork = tvalid_head,max = 0;pwork != NULL;pwork = pwork->next)
			{
				if(pwork->p_empty == 1)	continue;
				pwork->tick = pwork->prio;				// ���¸�ֵ֮�����ҳ�ʣ��ʱ�������
			}
		}
		else
		{
			task_current = pmax;					// �ҳ�����ߺ������л�֮
			break;
		}
	}
	assert(if_off);
}

TCB*	get_tcb(void)
{
	// 1���ڿ�������ͷ��ȡһ����Ա
	if(tfree_head == NULL)	return	NULL;
	
	TCB*	p_tcb	= tfree_head;
	tfree_head		= tfree_head->next;
	if(tfree_head == NULL)	// ������ֻ����һ����Ա,�ͷ��˾�û��
	{
		tfree_tail	= NULL;
	}
	else			// �����ﻹ��������Ա
	{
		tfree_head->pre	= NULL;
	}
	assert(p_tcb->p_empty == 1);
	// 2��������ͷ������Ч����β��
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
	// 1������Ч�������ͷ�
	if(p_tcb == tvalid_head)		// ��ͷ��
	{
		tvalid_head = tvalid_head->next;
		if(tvalid_head == NULL)	// ������ֻ����һ����Ա,�ͷ��˾�û��
		{
			tvalid_tail	= NULL;
		}
		else			// �����ﻹ��������Ա
		{
			tvalid_head->pre	= NULL;
		}
	}
	else if(p_tcb == tvalid_tail)		// ��β��
	{
		tvalid_tail	= tvalid_tail->pre;
		if(tvalid_tail == NULL)
			tvalid_head	= NULL;
		else
			tvalid_tail->next	= NULL;
	}
	else				// ���м�
	{
//		// ����Ч�������������ͷŵĳ�Ա
//		TCB*	p_work;
//		for(p_work = tvalid_head->next;p_work != tvalid_tail ;p_work = p_work->next)
//		{
//			if(p_work == p_tcb)
//				break;
//		}
//		if(p_work == tvalid_tail)	return	-1;	// ���ͷŵĻ���ͷ������
//		assert(p_work == p_tcb);
		// �ͷ�,��������
		p_tcb->pre->next	= p_tcb->next;
		p_tcb->next->pre	= p_tcb->pre;
	}
	assert(p_tcb->p_empty == 0);
	p_tcb->p_empty		= 1;
	// 2�����ͷź�Ļ���ͷ���ӵ���������β��
	if(p_tcb->pid < RPL_TASK + RPL_PROC)	return	1;	// ϵͳ�Դ���TCB���ܷ�����Ч����
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
// ����һ��������������Զ���ܵ��ÿ��ܵ��������ĺ���
void task_idle(void * pdata)
{
	pdata = pdata;
	idle_count = 0;	// ����������
	while(1)
	{
		idle_count++;
	}
}
//--------------------------------------------------------------------------------------------------*/

