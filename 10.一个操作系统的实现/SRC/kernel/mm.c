#include	"include.h"

void	init_mm(void);
int	mm_do_fork(U32 pid);
void	mm_do_exit(int pid,int s);
int	mm_do_wait(int ppid,int* p_s);
int	mm_do_exec(MSG* p_msg);
int	load_elf(char* pathname);
int	set_tcb_para(TCB* p_tcb,char* pathname);
int	mm_file_page_copy(char* pathname,void* pa,void* va);

int	no_answer;
//--------------------------------------------------------------------------------------------------*/
// �ڴ������ѭ������
void task_mm(void * pdata)
{
	MSG 	msg;
	MM_MSG* 	p_mm_msg;
	pdata	= pdata;
	init_mm();
	while(1)
	{
		assert(	recv(ANY,&msg) == 0	);
		assert(	msg.type == MM_MSG_UNION);
		p_mm_msg	= &msg.msg_union.mm_msg;
		while(task_table[msg.sender].t_stat != RECVING);	// ��Ϊ���̵���forkʱʹ�õ�sendrecv��BOTHѡ��,���Դ�ʱ���̵�״̬�ܿ�����READY,
		assert(task_table[msg.sender].t_stat == RECVING);	// ��Ҫ�Ƚ����´�ִ�н���RECVING���ܼ�������
		assert(task_table[msg.sender].recvfrom == TASK_MM_PID);
		switch(p_mm_msg->para)
		{
			case MM_FORK:
				p_mm_msg->para	= mm_do_fork(msg.sender);
				break;
			case MM_EXIT:
				mm_do_exit(msg.sender,p_mm_msg->s);
				break;
			case MM_WAIT:
				p_mm_msg->para	= mm_do_wait(msg.sender,p_mm_msg->p_s);
				break;
			case MM_EXEC:
				p_mm_msg->para	= mm_do_exec(&msg);
				break;
			case MM_FILE_PAGE_COPY:
				//printk("msg.sender %d ,pathname : %s,pa:%x va:%x\n",msg.sender,p_mm_msg->pathname,(void*)p_mm_msg->argc,(void*)p_mm_msg->argv);
				p_mm_msg->para	= mm_file_page_copy(p_mm_msg->pathname,(void*)p_mm_msg->argc,(void*)p_mm_msg->argv);
				//printk("msg.sender:%d \n",msg.sender);
				no_answer = 1;
				disable_int();
				assert(task_table[msg.sender].t_stat == RECVING);
				(msg.sender + task_table)->t_stat	= READY;
				enable_int();
				break;
			default:	break;
		}
		if(no_answer == 1)
			no_answer	= 0;
		else
			assert(	send(msg.sender,&msg) == 0	);
	}
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ�MM��ʼ��
�����������
�����������
*/
void	init_mm(void)
{
	no_answer	= 0;
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ��ͷŽ���ռ�õ��ڴ�
�������������pid
�����������
*/
void	free_proc_mem(int pid)
{
#ifdef	_FREE_MEM_
	if(pid < NR_TASK + NR_PROC)
	{
		printk("can not free this process\' memery .pid : %d\n",pid);
		return;
	}
	TCB*	p_tcb	= task_table + pid;
	U32*	pdb	= p_tcb->pdb;
	U32*	vindex	= p_tcb->v_indext;
	while((U32)vindex < EXEC_MEM_SIZE)
	{
		U32	pa	= *(U32*)va2pa(pdb,vindex++);
		//printk("pa:%x shared : %d  vindex : %x  ",pa,IsShared((void*)pa),vindex-1);
		assert( IsShared((void*)pa) > 0 );
		UnShare((void*)pa);
	}
#endif	// _FREE_MEM_
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ�Ϊ�ӽ��̷����ڴ�
����������ӽ���pid	cpid
��������������ӽ��̻�õ��ڴ��׵�ַ
*/
void*	alloc_proc_mem(int cpid)
{
	int	addr;
	addr	 = 10;
	addr	+= 1 * (cpid - NR_TASK - NR_PROC);
	addr	*= 0x100000;
	return	(void*)addr;
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ���¡
�������������¡����PID
�����������¡�ɹ������巵��PID�������̣�����¡�巵��0���ӽ��̣�
	��¡ʧ�ܣ������̷���-1���ӽ��̲������
*/
int mm_do_fork(U32 ppid)
{
	TCB*	p_tcb_parent = task_table + ppid;
	// ���̱�
	// ��һ���յĽ��̱�
	TCB*	p_tcb	= get_tcb();
	
	if(p_tcb == NULL)
	{
		printk("task_table full : fork\n");
		return	-1;
	}
	// ����ս��̱��е�������Ϣ
//	U16	ldt_selector	= p_tcb->ldt_selector;
	U32	cpid		= p_tcb->pid;
	TCB*	next		= p_tcb->next;
	TCB*	pre		= p_tcb->pre;
	// ���ƽ��̱�
	assert(p_tcb->p_empty == 1);
	
	disable_int();
	
	memcopy((char*)p_tcb,(char*)p_tcb_parent,sizeof(TCB));
	assert(p_tcb->t_stat == RECVING);			// ȷ�����̴���RECVING
	assert(p_tcb->recvfrom == TASK_MM_PID);
	// �������������Ϣ�����µĽ��̱�
//	p_tcb->ldt_selector		= ldt_selector;
	p_tcb->pid		= cpid;
	p_tcb->parent		= ppid;	
	p_tcb->next		= next;
	p_tcb->pre		= pre;
	enable_int();
	
	// ����ҳĿ¼��ҳ��
	p_tcb->pdb		= alloc_a_page();
	
	U32*	pdb		= p_tcb->pdb;		// �ӽ���ҳĿ¼
	int	i,j;
	for(i = 0;i < NR_PDE;i++)				// ҳĿ¼
	{
		*pdb++	= (U32)alloc_a_page() | PG_P | PG_RW | PG_US;
	}
	// �����ӽ���ҳĿ¼��ҳ���ӳ��(��ӳ��)
	U32*	vptb	= (U32*)EXEC_PTB;	// ҳ���ַ
	pdb		= p_tcb->pdb;
	U32*	pdb_work	= pdb;
	map_a_page(pdb,(U32*)EXEC_PDB,pdb,PG_P | PG_RW | PG_US);
	for(i = 0;i < NR_PDE;i++)
	{
		map_a_page(pdb,vptb,(void*)(*pdb_work & ~0xfff),PG_P | PG_RW | PG_US);
		vptb	+= 1024;
		pdb_work++;
	}
	// ����������ַ��ӳ��
	U32*	pdb_parent	= p_tcb_parent->pdb;	// ������ҳĿ¼��ַ
		pdb		= p_tcb->pdb;		// �ӽ���ҳĿ¼��ַ
	for(i = 0;i < NR_PTE;)			// ҳ��
	{
		U32*	ptb_parent	= (U32*)((*pdb_parent) & ~0xfff);	// ������ҳ���ַ
		U32*	ptb		= (U32*)((*pdb) & ~0xfff);		// �ӽ���ҳ���ַ
		for(j = 0;j < 1024;j++,i++)			// ĳ��ҳĿ¼
		{
			if(i < EXEC_PDB / 4 / 1024)		// ���� EXEC_PDB �������ַ,��ȫ���Ƹ����̵�ҳ��
			{
				*ptb	= *ptb_parent;
			}
			else if(i < EXEC_EIP / 4 / 1024)	// EXEC_PDB - EXEC_EIP ֮�䡣ӳ�䵽�ӽ����Լ���ҳĿ¼��ҳ���ַ
			{
				// ����ҳĿ¼��ʱ���Ѿ���������ӳ��
			}
			else				// ���� EXEC_EIP �������ַ,�Ѹ����ӽ��̵�ҳ�����óɡ�����д��(дʱ����)
			{				// ����,�����ҳ����,����ҳͷ���������Ӹ�ҳ�Ĺ�����
				U32	phys	= *ptb_parent;
				
				if((phys & PG_P) && phys >= PAGE_BASE && phys < PAGE_LIMIT)
					Share((void*)phys);
				
				phys		&= ~PG_RW;
				*ptb_parent	= phys;
				*ptb		= phys;
			}
			ptb_parent++;
			ptb++;
		}
		pdb_parent++;
		pdb++;
	}
	
	// ����һҳ,ӳ�䵽�ӽ������һҳ��ַ,���ڴ��ݲ�����EXEC_ESPָ���ӽ��̿ռ����һҳ
	pdb		= p_tcb->pdb;
	U32	esp_pa	= va2pte(pdb,(void*)EXEC_ESP);	// ע��:����ȡ����pte
	if(  (esp_pa & PG_P) && esp_pa >= PAGE_BASE && esp_pa < PAGE_LIMIT)	// �ͷž�ҳ
	{
		//printk("esp_pa:%x  shared : %d \n",esp_pa,IsShared((void*)esp_pa));
		assert( IsShared((void*)esp_pa) > 0 );
		UnShare((void*)esp_pa);
	}
	U32	new_esp	= (U32)alloc_a_page();			// ������ҳ
	map_a_page(pdb,(void*)EXEC_ESP,(void*)new_esp,PG_P | PG_RW | PG_US);
#ifdef	_FREE_MEM_
	// ���� NR_PDE ��ҳ,���ڴ�ŵ�ǰ�ӽ���ռ�õ��ڴ�ҳ���Ӹߵ�ַ���͵�ַ,ÿ��U32���һ��ҳ��ַ,��ǰ��������ڴ��ݲ�������һҳ���һ��U32��
	U32	va	= EXEC_MEM_SIZE - PAGE_SIZE;
	U32	last_page;
	U32*	m_index;						// ���ѷ����ڴ�ҳ��ָ��,�����ݼ���
	for(i = 0;i < NR_PDE;i++,va -= PAGE_SIZE)
	{
		U32	pa	= va2pte(pdb,(void*)va);
		if(  (pa & PG_P) && pa >= PAGE_BASE && pa < PAGE_LIMIT)	// �ͷž�ҳ
		{
			//printk("pa:%x  shared : %d \n",pa,IsShared((void*)pa));
			assert( IsShared((void*)pa) > 0 );
			UnShare((void*)pa);
		}
		U32	new_pa	= (U32)alloc_a_page();		// ������ҳ
		
		map_a_page(pdb,(void*)va,(void*)new_pa,PG_P | PG_RW | PG_US);
		
		if(i == 0)
		{
			m_index	= (U32*)(new_pa + PAGE_SIZE);
			last_page	= new_pa;
		}
		
		*(--m_index)	= new_pa;				// ��¼�ѷ����ҳ
	}
	*(--m_index)		= new_esp;			// ���espռ�õ�һҳ
	assert((U32)m_index >= last_page);				// Ĭ�ϱ�����һҳ��
	U32	v_m_index		= EXEC_MEM_SIZE - (last_page + PAGE_SIZE - (U32)m_index);	// m_index��Ӧ�������ַ
	p_tcb->v_indext		= (U32*)v_m_index;			// ����������esp����ҳ�����һ��U32��
#endif	// _FREE_MEM_
	// ֪ͨFS�޸Ľ��̱��е�filp
	MSG	msg;
	msg.type			= FS_MSG_UNION;
	msg.msg_union.fs_msg.para	= FS_FORK;
	msg.msg_union.fs_msg.flags	= cpid;			// ��fs_msg��flags��Ա�����ӽ���id
	assert(	sendrecv(BOTH,TASK_FS_PID,&msg) == 0	);
	if(msg.msg_union.fs_msg.para == -1)
	{
		p_tcb->p_empty		= 1;
		printk("child\'s filp full : fork\n");
		return	-1;		// �ӽ��̵�filp����ʧ��
	}
	
	// ��ʱ�ӽ����Ѿ���¡�ɹ�
//	print_proc_table(task_table + ppid);
//	print_proc_table(task_table + cpid);
	// ����¡���ӽ��̷�һ����Ϣ�����fork�ȴ�
	msg.msg_union.mm_msg.para	= 0;			// ��¡���fork()����ֵΪ0	ע�⣺	���ڴ�ʱ�����ӽ��̵������ַӳ�䵽����ͬ�ط�,
	assert(	sendrecv(SEND,cpid,&msg) == 0	);						// ����,��������ӽ��̷�����Ϣ,������Ҳ���յ�
	// �򸸽��̷����ӽ��̵�pid								// ����MM��ѭ���������̻��͵���Ϣ,�Ḳ���ӽ��̵���Ϣ
	return	cpid;					// �����̵�fork()����ֵΪ�ӽ���pid	// �����ӽ���Ҳ�յ�cpid��
}											// Ϊ�˽���������,��fork���ڴ�����һ��get_pid,���ظ��Ե�pid
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ������˳�����ɱ��
������������˳����ӽ���pid	pid
	�˳���		s
*/ 
void	mm_do_exit(int pid,int s)
{
	TCB*	p_tcb;
	for(p_tcb = tvalid_head;p_tcb != NULL;p_tcb = p_tcb->next)	// ����ý������ӽ���,�����ӽ��̹��̵�init
	{
		assert(p_tcb->p_empty == 0);
		if(p_tcb->parent == pid)
		{
			p_tcb->parent	= PROC_INIT_PID;
		}
	}
	p_tcb	= task_table + pid;
	// �ͷŽ���ռ�õ��ڴ�
	free_proc_mem(pid);
	// ֪ͨFS�޸Ľ��̱��е�filp
	MSG	msg;
	msg.type			= FS_MSG_UNION;
	msg.msg_union.fs_msg.para	= FS_EXIT;
	msg.msg_union.fs_msg.flags	= pid;				// ��fs_msg��flags��Ա���ݽ���id
	assert(	sendrecv(BOTH,TASK_FS_PID,&msg) == 0	);
	
	if(task_table[p_tcb->parent].t_stat == WAITING)
	{	// ����ý��̵ĸ�������WAITING,���˳��뽻��������,�����丸����,�������ӽ��̵Ľ��̱�
		*(int*)va2pa((p_tcb->parent + task_table)->pdb,task_table[p_tcb->parent].p_s)	= s;
		
		assert(task_table[p_tcb->parent].recvfrom == TASK_MM_PID);
		task_table[p_tcb->parent].t_stat	= RECVING;
		MSG	msg;
		msg.type			= MM_MSG_UNION;
		msg.msg_union.mm_msg.para	= pid;
		assert(	sendrecv(SEND,p_tcb->parent,&msg) == 0	);
		
		put_tcb(p_tcb);
	}
	else
	{	// ����ý��̵ĸ�����û��wait,���ӽ��̽���HANGING״̬(��ʱ�ӽ��̳��˽��̱�,�������ݶ�������)
		p_tcb->t_stat	= HANGING;
		p_tcb->s		= s;
	}
	
	no_answer		= 1;	// ��������Ϣ
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ��ȴ��ӽ����˳�
�������������pid		ppid
	�˳����ַ	p_s
���������-1 �ý������ӽ��̣��ȴ�ʧ��
	�ȴ��ɹ��������˳��ӽ��̵�pid��ͬʱp_s��ָ��ĵ�ַ�����ӽ����˳���
*/ 
int	mm_do_wait(int ppid,int* p_s)
{
	int	cpid;
	TCB*	p_tcb;
	// ����ý���û���ӽ���,�򷵻ش�����
	for(p_tcb = tvalid_head;p_tcb != NULL;p_tcb = p_tcb->next)
	{
		assert(p_tcb->p_empty == 0);
		if(p_tcb->parent == ppid)
			break;
	}
	if(p_tcb == NULL)
	{
		return	-1;
	}
	// ����ý������ӽ���
	for(p_tcb = tvalid_head;p_tcb != NULL;p_tcb = p_tcb->next)
	{
		assert(p_tcb->p_empty == 0);
		if(p_tcb->parent == ppid && p_tcb->t_stat == HANGING)
			break;
	}
	if(p_tcb == NULL)
	{	// ���û���ӽ��̴���HANGING,�򽫸�������ΪWAITING
		task_table[ppid].t_stat	= WAITING;
		task_table[ppid].p_s	= p_s;
		no_answer		= 1;	// ��������Ϣ
	}
	else
	{	// ������ӽ��̴���HANGING״̬,���ȡ�ӽ��̵��˳�״̬��,�������ӽ��̵Ľ��̱�
		cpid		= p_tcb - task_table;
		*(int*)va2pa((ppid + task_table)->pdb,p_s)	= p_tcb->s;
		put_tcb(p_tcb);
	}
	return	cpid;
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ������ӽ��̵Ľ��̱�,������main������Ҫ�Ĳ���,ʹ����������elf�����׼��
��������������õ��ӽ��̽��̱��ַ	p_tcb
	argc
	argv
���������ʧ�ܷ���-1
	�ɹ�����0
ע    �⣺����������������ӽ��̵������ַ
*/ 
int	set_tcb_para(TCB* p_tcb,char* pathname)
{
	disable_int();
	// ��ջ
//	p_tcb->regs.gs		=	(Selector_Kernel_Video & 0xfff8) + pl;
//	p_tcb->regs.fs		=	0x00 + S_TI + pl;		//0x00 ��ʾLDT�еĵ�һ�����������������ݶ�
//	p_tcb->regs.es		=	0x00 + S_TI + pl;
//	p_tcb->regs.ds		=	0x00 + S_TI + pl;
//	p_tcb->regs.edi		=	0;
//	p_tcb->regs.esi		=	0;
//	p_tcb->regs.ebp		=	0;
//	p_tcb->regs.kernel_esp	=	0;			// ��Ϊ�κ�ֵ�����ԡ���Ϊ��popa֮��esp��ֵ������޹�
//	p_tcb->regs.ebx		=	0;
//	p_tcb->regs.edx		=	0;
//	p_tcb->regs.ecx		=	0;
//	p_tcb->regs.eax		=	0;
	p_tcb->regs.eip		=	EXEC_EIP;
//	p_tcb->regs.cs		=	0x08 + S_TI + pl;		// 0x08 ��ʾLDT�еĵڶ��������������������
//	p_tcb->regs.eflags		=	iopl<<12 | 1<<9 | 1<<1;	// IF = 1,bit 1 is always 1
	p_tcb->regs.esp		=	EXEC_ESP;
//	p_tcb->regs.ss		=	0x00 + S_TI + pl;
	// ipc
//	p_tcb->t_stat		=	READY;			// ����Ҫ���ӽ��̼�������,�Ⱥ���������ɺ������ΪREADY
	p_tcb->has_int_msg		=	0;
	p_tcb->p_msg		=	0;
	p_tcb->sendto		=	0;
	p_tcb->recvfrom		=	0;
	p_tcb->p_mymsg		=	0;
	p_tcb->p_nextsending	=	0;
	// �ļ�filp		�̳и����̵��ļ�
//	int j;
//	for(j = 0;j < MAX_TASK_FILE;j++)
//		p_tcb->filp[j] = 0;
	// ����
	p_tcb->tick		=	p_tcb->prio;
	p_tcb->delay		=	0;
	memcopy(p_tcb->t_name,pathname,T_NAME_lEN);
	
	enable_int();
	return	0;
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ�exec������
���������MM_MSG��ַ	p_mm_msg
���������ʧ�ܷ���-1
	�ɹ�����0,����no_answer��1
*/ 
int	mm_do_exec(MSG* 	p_msg)
{
	TCB*	p_tcb	= p_msg->sender + task_table;
	U32*	pdb	= p_tcb->pdb;
	char*	pathname	= va2pa(pdb,p_msg->msg_union.mm_msg.pathname);
	int	argc	= p_msg->msg_union.mm_msg.argc;
	char**	argv	= va2pa(pdb,p_msg->msg_union.mm_msg.argv);
	int	i,j;
	// 1�������ӽ��̵Ľ��̱�	��ΪҪ��ȡpathname,����Ҫ�ڡ�ȱҳ��֮ǰ����
	if(set_tcb_para(p_tcb,pathname) == -1)	return	-1;
	assert(p_tcb->t_stat == RECVING);
	// 3����main��������argvָ������ݸ��Ƶ��½����ڴ���	ע����ʱ���ڴ����(NR_PDE + 1)ҳ,��fork���Ѿ������
	// �ڶ�ջ������argc��argv
	U32	new_esp		= (U32)va2pa(pdb,(void*)EXEC_ESP);
	*(U32*)new_esp		= argc;
	*(U32*)(new_esp + 4)	= EXEC_ARGV;
	// ���Ʋ���	��ʱ�ӽ����Ѿ���ȫ���µĿ�ִ�г������
	char**	new_argv		= (char**)(new_esp + EXEC_ARGV_OFF);
	char*	string		= (char*)(new_esp + EXEC_STRING_OFF);
	for(i = 0;i < argc;i++)
	{
		char*	argvi	= va2pa(pdb,argv[i]);
		int	len	= strlen(argvi) + 1;	// +1���ַ���������'\0'
		memcopy(string,argvi,len);
		*new_argv++	= (char*)( ((U32)string - new_esp) + EXEC_ESP);
		string		+= len;
	}
	// 2����ҳ���������ַ EXEC_EIP ����ȫ����ɡ�ȱҳ�����������ִ�е�ʱ��ͨ��ȱҳ�쳣�Զ���ȡ�ļ�
	for(i = 0;i < NR_PTE;pdb++)			// ҳ��
	{
		U32*	ptb		= (U32*)((*pdb) & ~0xfff);	// ҳ���ַ
		for(j = 0;j < 1024;j++,i++,ptb++)			// ĳ��ҳ��
		{
			if(i < EXEC_EIP / 4 / 1024)			// ���� EXEC_EIP �������ַ,����
			{
				// ����
			}
			else					// ���� EXEC_EIP �������ַ,��ɡ�ȱҳ��
			{                                                 // ����,���������ҳ����,����ҳͷ�����м��ٸ�ҳ�Ĺ�����
				if(i >= EXEC_ESP / 4 / 1024)	continue;	// ���ݲ�����һҳ���Լ��ڴ�ʹ�������¼ҳ���䡣���ﲻ��ֱ����break,��Ϊi��ֵ����Ҫ����
				
				U32	phys	= *ptb;
				
				if((phys & PG_P) && phys >= PAGE_BASE && phys < PAGE_LIMIT)
					UnShare((void*)phys);
				
				*ptb	= 0;
			}
		}
	}
	// 5�������ӽ���
	disable_int();
	p_tcb->t_stat		=	READY;
	enable_int();
	
	no_answer	= 1;
	return	0;
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ��������ַ��Ӧ���ļ����ݸ��Ƶ��ڴ�
����������ļ���	pathname
	�����ַ	pa
	�����ַ	va
����������ɹ�����	0
	ʧ�ܷ���	-1
ע    �⣺�������Ҫ�õ��ļ���������,������Ҫ��һ��������ִ��	1����Ϊ�˺���Ҫ�����ļ���������,���Բ��ܽ���fs����
	������ϵͳ�쳣������ֱ�ӵ��ã�			2����Ϊmmִ���п��ܻ���øú���,����Ҳ���ܽ���mm����
							���Խ���task_sys������
*/
int	mm_file_page_copy(char* pathname,void* pa,void* va)
{
	assert( ( (U32)pa & 0xfff ) == 0);	// 4KB ����
	assert( ( (U32)va & 0xfff ) == 0);
	char	buf[512];
	int	fd		= fopen(pathname,0);
	if(fd == -1)
	{
		return	-1;
	}
	// 1����ȡ�ļ�ELFͷ
	fread(fd,buf,0,512);
	ELF_HEAD*	p_elf_head	= (ELF_HEAD*)buf;
	// ��ȡproͷ
	PRO_HEAD*	p_pro_head	= (PRO_HEAD*)((U32)buf + p_elf_head->e_phoff);
	int	ph_num		= p_elf_head->e_phnum;
	// 2��ȷ��va��Ӧ�������ļ��е�λ��				����ĸ��Ʋ���,˼·�ǣ������ļ��ĳ���ͷ,��������������va��Ӧ��4KB��Χ��,�͸��ƽ���
	U32	va_begin	= (U32)va;
	U32	va_end	= va_begin + PAGE_SIZE;
	int	i;
	for(i = 0;i < ph_num;i++,p_pro_head++)		// �ڸ�������ͷ������va
	{
		U32	pva_start	= p_pro_head->p_vaddr;
		U32	pva_limit	= pva_start + p_pro_head->p_filesz;
		
		if(pva_start > va_end)	continue;
		if(pva_limit < va_begin)	continue;
		
		U32	start	= MAX(pva_start,va_begin);
		U32	limit	= MIN(pva_limit,va_end);
		U32	size	= limit - start;
		
		U32	offset1	= start - va_begin;
		U32	offset	= p_pro_head->p_offset;
		offset		+= start - pva_start;
		
		//printk("fread.. %x %x %x %x \n",fd,(U32)pa + offset1,offset,size);
		lseek(fd,0,0);
		fread(fd,(void*)((U32)pa + offset1),offset,size);
	}
	fclose(fd);
	return	0;
}

