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
// 内存管理主循环任务
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
		while(task_table[msg.sender].t_stat != RECVING);	// 因为进程调用fork时使用的sendrecv是BOTH选项,所以此时进程的状态很可能是READY,
		assert(task_table[msg.sender].t_stat == RECVING);	// 需要等进程下次执行进入RECVING才能继续操作
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
函数功能：MM初始化
输入参数：无
输出参数：无
*/
void	init_mm(void)
{
	no_answer	= 0;
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：释放进程占用的内存
输入参数：进程pid
输出参数：无
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
函数功能：为子进程分配内存
输入参数：子进程pid	cpid
输出参数：返回子进程获得的内存首地址
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
函数功能：克隆
输入参数：待克隆进程PID
输出参数：克隆成功：本体返回PID（父进程），克隆体返回0（子进程）
	克隆失败：父进程返回-1，子进程不会出现
*/
int mm_do_fork(U32 ppid)
{
	TCB*	p_tcb_parent = task_table + ppid;
	// 进程表
	// 找一个空的进程表
	TCB*	p_tcb	= get_tcb();
	
	if(p_tcb == NULL)
	{
		printk("task_table full : fork\n");
		return	-1;
	}
	// 保存空进程表中的有用信息
//	U16	ldt_selector	= p_tcb->ldt_selector;
	U32	cpid		= p_tcb->pid;
	TCB*	next		= p_tcb->next;
	TCB*	pre		= p_tcb->pre;
	// 复制进程表
	assert(p_tcb->p_empty == 1);
	
	disable_int();
	
	memcopy((char*)p_tcb,(char*)p_tcb_parent,sizeof(TCB));
	assert(p_tcb->t_stat == RECVING);			// 确保进程处于RECVING
	assert(p_tcb->recvfrom == TASK_MM_PID);
	// 将保存的有用信息放入新的进程表
//	p_tcb->ldt_selector		= ldt_selector;
	p_tcb->pid		= cpid;
	p_tcb->parent		= ppid;	
	p_tcb->next		= next;
	p_tcb->pre		= pre;
	enable_int();
	
	// 建立页目录、页表
	p_tcb->pdb		= alloc_a_page();
	
	U32*	pdb		= p_tcb->pdb;		// 子进程页目录
	int	i,j;
	for(i = 0;i < NR_PDE;i++)				// 页目录
	{
		*pdb++	= (U32)alloc_a_page() | PG_P | PG_RW | PG_US;
	}
	// 建立子进程页目录、页表的映射(自映射)
	U32*	vptb	= (U32*)EXEC_PTB;	// 页表地址
	pdb		= p_tcb->pdb;
	U32*	pdb_work	= pdb;
	map_a_page(pdb,(U32*)EXEC_PDB,pdb,PG_P | PG_RW | PG_US);
	for(i = 0;i < NR_PDE;i++)
	{
		map_a_page(pdb,vptb,(void*)(*pdb_work & ~0xfff),PG_P | PG_RW | PG_US);
		vptb	+= 1024;
		pdb_work++;
	}
	// 建立其他地址的映射
	U32*	pdb_parent	= p_tcb_parent->pdb;	// 父进程页目录地址
		pdb		= p_tcb->pdb;		// 子进程页目录地址
	for(i = 0;i < NR_PTE;)			// 页表
	{
		U32*	ptb_parent	= (U32*)((*pdb_parent) & ~0xfff);	// 父进程页表地址
		U32*	ptb		= (U32*)((*pdb) & ~0xfff);		// 子进程页表地址
		for(j = 0;j < 1024;j++,i++)			// 某个页目录
		{
			if(i < EXEC_PDB / 4 / 1024)		// 低于 EXEC_PDB 的虚拟地址,完全复制父进程的页表
			{
				*ptb	= *ptb_parent;
			}
			else if(i < EXEC_EIP / 4 / 1024)	// EXEC_PDB - EXEC_EIP 之间。映射到子进程自己的页目录、页表地址
			{
				// 建立页目录的时候已经建立了自映射
			}
			else				// 高于 EXEC_EIP 的虚拟地址,把父、子进程的页表都设置成“不可写”(写时复制)
			{				// 并且,如果该页存在,则在页头链表中增加该页的共享数
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
	
	// 申请一页,映射到子进程最后一页地址,用于传递参数。EXEC_ESP指向子进程空间最后一页
	pdb		= p_tcb->pdb;
	U32	esp_pa	= va2pte(pdb,(void*)EXEC_ESP);	// 注意:这里取的是pte
	if(  (esp_pa & PG_P) && esp_pa >= PAGE_BASE && esp_pa < PAGE_LIMIT)	// 释放旧页
	{
		//printk("esp_pa:%x  shared : %d \n",esp_pa,IsShared((void*)esp_pa));
		assert( IsShared((void*)esp_pa) > 0 );
		UnShare((void*)esp_pa);
	}
	U32	new_esp	= (U32)alloc_a_page();			// 申请新页
	map_a_page(pdb,(void*)EXEC_ESP,(void*)new_esp,PG_P | PG_RW | PG_US);
#ifdef	_FREE_MEM_
	// 申请 NR_PDE 个页,用于存放当前子进程占用的内存页。从高地址到低地址,每个U32存放一个页地址,当前索引存放在传递参数的那一页最后一个U32中
	U32	va	= EXEC_MEM_SIZE - PAGE_SIZE;
	U32	last_page;
	U32*	m_index;						// “已分配内存页”指针,“满递减”
	for(i = 0;i < NR_PDE;i++,va -= PAGE_SIZE)
	{
		U32	pa	= va2pte(pdb,(void*)va);
		if(  (pa & PG_P) && pa >= PAGE_BASE && pa < PAGE_LIMIT)	// 释放旧页
		{
			//printk("pa:%x  shared : %d \n",pa,IsShared((void*)pa));
			assert( IsShared((void*)pa) > 0 );
			UnShare((void*)pa);
		}
		U32	new_pa	= (U32)alloc_a_page();		// 申请新页
		
		map_a_page(pdb,(void*)va,(void*)new_pa,PG_P | PG_RW | PG_US);
		
		if(i == 0)
		{
			m_index	= (U32*)(new_pa + PAGE_SIZE);
			last_page	= new_pa;
		}
		
		*(--m_index)	= new_pa;				// 记录已分配的页
	}
	*(--m_index)		= new_esp;			// 添加esp占用的一页
	assert((U32)m_index >= last_page);				// 默认保存在一页里
	U32	v_m_index		= EXEC_MEM_SIZE - (last_page + PAGE_SIZE - (U32)m_index);	// m_index对应的虚拟地址
	p_tcb->v_indext		= (U32*)v_m_index;			// 索引保存在esp所在页的最后一个U32里
#endif	// _FREE_MEM_
	// 通知FS修改进程表中的filp
	MSG	msg;
	msg.type			= FS_MSG_UNION;
	msg.msg_union.fs_msg.para	= FS_FORK;
	msg.msg_union.fs_msg.flags	= cpid;			// 用fs_msg的flags成员传递子进程id
	assert(	sendrecv(BOTH,TASK_FS_PID,&msg) == 0	);
	if(msg.msg_union.fs_msg.para == -1)
	{
		p_tcb->p_empty		= 1;
		printk("child\'s filp full : fork\n");
		return	-1;		// 子进程的filp建立失败
	}
	
	// 此时子进程已经克隆成功
//	print_proc_table(task_table + ppid);
//	print_proc_table(task_table + cpid);
	// 给克隆的子进程发一个信息，解除fork等待
	msg.msg_union.mm_msg.para	= 0;			// 克隆体的fork()返回值为0	注意：	由于此时父、子进程的虚拟地址映射到了相同地方,
	assert(	sendrecv(SEND,cpid,&msg) == 0	);						// 所以,在这里给子进程发的消息,父进程也能收到
	// 向父进程返回子进程的pid								// 而且MM主循环给父进程回送的消息,会覆盖子进程的消息
	return	cpid;					// 父进程的fork()返回值为子进程pid	// 导致子进程也收到cpid。
}											// 为了解决这个问题,在fork出口处调用一次get_pid,返回各自的pid
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：进程退出（自杀）
输入参数：欲退出的子进程pid	pid
	退出码		s
*/ 
void	mm_do_exit(int pid,int s)
{
	TCB*	p_tcb;
	for(p_tcb = tvalid_head;p_tcb != NULL;p_tcb = p_tcb->next)	// 如果该进程有子进程,则将其子进程过继到init
	{
		assert(p_tcb->p_empty == 0);
		if(p_tcb->parent == pid)
		{
			p_tcb->parent	= PROC_INIT_PID;
		}
	}
	p_tcb	= task_table + pid;
	// 释放进程占用的内存
	free_proc_mem(pid);
	// 通知FS修改进程表中的filp
	MSG	msg;
	msg.type			= FS_MSG_UNION;
	msg.msg_union.fs_msg.para	= FS_EXIT;
	msg.msg_union.fs_msg.flags	= pid;				// 用fs_msg的flags成员传递进程id
	assert(	sendrecv(BOTH,TASK_FS_PID,&msg) == 0	);
	
	if(task_table[p_tcb->parent].t_stat == WAITING)
	{	// 如果该进程的父进程在WAITING,则将退出码交给父进程,唤醒其父进程,并销毁子进程的进程表
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
	{	// 如果该进程的父进程没有wait,则子进程进入HANGING状态(此时子进程除了进程表,其他内容都已销毁)
		p_tcb->t_stat	= HANGING;
		p_tcb->s		= s;
	}
	
	no_answer		= 1;	// 不回送消息
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：等待子进程退出
输入参数：进程pid		ppid
	退出码地址	p_s
输出参数：-1 该进程无子进程，等待失败
	等待成功：返回退出子进程的pid，同时p_s所指向的地址保存子进程退出码
*/ 
int	mm_do_wait(int ppid,int* p_s)
{
	int	cpid;
	TCB*	p_tcb;
	// 如果该进程没有子进程,则返回错误码
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
	// 如果该进程有子进程
	for(p_tcb = tvalid_head;p_tcb != NULL;p_tcb = p_tcb->next)
	{
		assert(p_tcb->p_empty == 0);
		if(p_tcb->parent == ppid && p_tcb->t_stat == HANGING)
			break;
	}
	if(p_tcb == NULL)
	{	// 如果没有子进程处于HANGING,则将父进程设为WAITING
		task_table[ppid].t_stat	= WAITING;
		task_table[ppid].p_s	= p_s;
		no_answer		= 1;	// 不回送消息
	}
	else
	{	// 如果有子进程处于HANGING状态,则获取子进程的退出状态码,并销毁子进程的进程表
		cpid		= p_tcb - task_table;
		*(int*)va2pa((ppid + task_table)->pdb,p_s)	= p_tcb->s;
		put_tcb(p_tcb);
	}
	return	cpid;
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：设置子进程的进程表,并传递main函数需要的参数,使其做好运行elf程序的准备
输入参数：待设置的子进程进程表地址	p_tcb
	argc
	argv
输出参数：失败返回-1
	成功返回0
注    意：这个函数是运行在子进程的虚拟地址
*/ 
int	set_tcb_para(TCB* p_tcb,char* pathname)
{
	disable_int();
	// 堆栈
//	p_tcb->regs.gs		=	(Selector_Kernel_Video & 0xfff8) + pl;
//	p_tcb->regs.fs		=	0x00 + S_TI + pl;		//0x00 表示LDT中的第一个描述符，即：数据段
//	p_tcb->regs.es		=	0x00 + S_TI + pl;
//	p_tcb->regs.ds		=	0x00 + S_TI + pl;
//	p_tcb->regs.edi		=	0;
//	p_tcb->regs.esi		=	0;
//	p_tcb->regs.ebp		=	0;
//	p_tcb->regs.kernel_esp	=	0;			// 设为任何值都可以。因为，popa之后，esp的值和这个无关
//	p_tcb->regs.ebx		=	0;
//	p_tcb->regs.edx		=	0;
//	p_tcb->regs.ecx		=	0;
//	p_tcb->regs.eax		=	0;
	p_tcb->regs.eip		=	EXEC_EIP;
//	p_tcb->regs.cs		=	0x08 + S_TI + pl;		// 0x08 表示LDT中的第二个描述符，即：代码段
//	p_tcb->regs.eflags		=	iopl<<12 | 1<<9 | 1<<1;	// IF = 1,bit 1 is always 1
	p_tcb->regs.esp		=	EXEC_ESP;
//	p_tcb->regs.ss		=	0x00 + S_TI + pl;
	// ipc
//	p_tcb->t_stat		=	READY;			// 现在要让子进程继续挂起,等后续工作完成后才能设为READY
	p_tcb->has_int_msg		=	0;
	p_tcb->p_msg		=	0;
	p_tcb->sendto		=	0;
	p_tcb->recvfrom		=	0;
	p_tcb->p_mymsg		=	0;
	p_tcb->p_nextsending	=	0;
	// 文件filp		继承父进程的文件
//	int j;
//	for(j = 0;j < MAX_TASK_FILE;j++)
//		p_tcb->filp[j] = 0;
	// 杂项
	p_tcb->tick		=	p_tcb->prio;
	p_tcb->delay		=	0;
	memcopy(p_tcb->t_name,pathname,T_NAME_lEN);
	
	enable_int();
	return	0;
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：exec处理函数
输入参数：MM_MSG地址	p_mm_msg
输出参数：失败返回-1
	成功返回0,并且no_answer置1
*/ 
int	mm_do_exec(MSG* 	p_msg)
{
	TCB*	p_tcb	= p_msg->sender + task_table;
	U32*	pdb	= p_tcb->pdb;
	char*	pathname	= va2pa(pdb,p_msg->msg_union.mm_msg.pathname);
	int	argc	= p_msg->msg_union.mm_msg.argc;
	char**	argv	= va2pa(pdb,p_msg->msg_union.mm_msg.argv);
	int	i,j;
	// 1、设置子进程的进程表	因为要读取pathname,所以要在“缺页”之前操作
	if(set_tcb_para(p_tcb,pathname) == -1)	return	-1;
	assert(p_tcb->t_stat == RECVING);
	// 3、将main启动参数argv指向的内容复制到新进程内存中	注：此时的内存最后(NR_PDE + 1)页,在fork里已经申请好
	// 在堆栈中填入argc和argv
	U32	new_esp		= (U32)va2pa(pdb,(void*)EXEC_ESP);
	*(U32*)new_esp		= argc;
	*(U32*)(new_esp + 4)	= EXEC_ARGV;
	// 复制参数	此时子进程已经完全被新的可执行程序替代
	char**	new_argv		= (char**)(new_esp + EXEC_ARGV_OFF);
	char*	string		= (char*)(new_esp + EXEC_STRING_OFF);
	for(i = 0;i < argc;i++)
	{
		char*	argvi	= va2pa(pdb,argv[i]);
		int	len	= strlen(argvi) + 1;	// +1是字符串结束符'\0'
		memcopy(string,argvi,len);
		*new_argv++	= (char*)( ((U32)string - new_esp) + EXEC_ESP);
		string		+= len;
	}
	// 2、将页表项虚拟地址 EXEC_EIP 以上全部设成“缺页”。程序会在执行的时候通过缺页异常自动读取文件
	for(i = 0;i < NR_PTE;pdb++)			// 页表
	{
		U32*	ptb		= (U32*)((*pdb) & ~0xfff);	// 页表地址
		for(j = 0;j < 1024;j++,i++,ptb++)			// 某个页表
		{
			if(i < EXEC_EIP / 4 / 1024)			// 低于 EXEC_EIP 的虚拟地址,不变
			{
				// 不变
			}
			else					// 高于 EXEC_EIP 的虚拟地址,设成“缺页”
			{                                                 // 并且,如果该物理页存在,则在页头链表中减少该页的共享数
				if(i >= EXEC_ESP / 4 / 1024)	continue;	// 传递参数的一页、以及内存使用情况记录页不变。这里不能直接用break,因为i的值还需要增量
				
				U32	phys	= *ptb;
				
				if((phys & PG_P) && phys >= PAGE_BASE && phys < PAGE_LIMIT)
					UnShare((void*)phys);
				
				*ptb	= 0;
			}
		}
	}
	// 5、激活子进程
	disable_int();
	p_tcb->t_stat		=	READY;
	enable_int();
	
	no_answer	= 1;
	return	0;
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：将虚拟地址对应的文件内容复制到内存
输入参数：文件名	pathname
	物理地址	pa
	虚拟地址	va
输出参数：成功返回	0
	失败返回	-1
注    意：这个函数要用到文件操作函数,所以需要让一个进程来执行	1、因为此函数要调用文件操作函数,所以不能交给fs处理
	不能在系统异常处理中直接调用！			2、因为mm执行中可能会调用该函数,所以也不能交给mm处理
							可以交给task_sys来处理
*/
int	mm_file_page_copy(char* pathname,void* pa,void* va)
{
	assert( ( (U32)pa & 0xfff ) == 0);	// 4KB 对齐
	assert( ( (U32)va & 0xfff ) == 0);
	char	buf[512];
	int	fd		= fopen(pathname,0);
	if(fd == -1)
	{
		return	-1;
	}
	// 1、读取文件ELF头
	fread(fd,buf,0,512);
	ELF_HEAD*	p_elf_head	= (ELF_HEAD*)buf;
	// 获取pro头
	PRO_HEAD*	p_pro_head	= (PRO_HEAD*)((U32)buf + p_elf_head->e_phoff);
	int	ph_num		= p_elf_head->e_phnum;
	// 2、确定va对应内容在文件中的位置				这里的复制操作,思路是：遍历文件的程序头,发现有内容落在va对应的4KB范围内,就复制进来
	U32	va_begin	= (U32)va;
	U32	va_end	= va_begin + PAGE_SIZE;
	int	i;
	for(i = 0;i < ph_num;i++,p_pro_head++)		// 在各个程序头中搜索va
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

