#include	"include.h"

//--------------------------------------------------------------------------------------------------*/
/*
函数功能：初始化内存分页管理
输入参数：无
输出参数：无
*/
void	init_mm_page(void)
{
	// 初始化页头数组,即：建立页头数组中各元素和页区的对应关系
	PAGE_HEAD*	p_ph;
	U32		page_base	= PAGE_BASE;
	for(p_ph = ph_table;p_ph < ph_table + NR_PAGE;p_ph++)
	{
		p_ph->page_base	= (void*)page_base;
		p_ph->share	= 0;
		p_ph->pre		= p_ph - 1;
		p_ph->next	= p_ph + 1;
		page_base		+= PAGE_SIZE;
	}
	ph_table->pre			= NULL;		// 链表头的pre 指向NULL
	(ph_table + NR_PAGE - 1)->next	= NULL;		// 链表尾的next指向NULL
	assert(p_ph == ph_table + NR_PAGE);
	assert(page_base == PAGE_LIMIT);
	// 初始化空闲页头链表头、尾指针
	pfree_head	= ph_table;	// 初始状态,所有页头都空闲	| 附：
	pfree_tail	= ph_table + NR_PAGE - 1;		//	| head == 0 || tail == 0 表示链表为空
							//	| head != 0：
							//	| 	tail == head 表示链表只有一个成员
							//	| 	tail != head 表示链表不止一个成员
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：申请一个新的页头
输入参数：无
输出参数：0	申请失败(页头用完)
	非0	页头指针
*/
PAGE_HEAD*	get_page(void)
{
	disable_int();
	// 1、在空闲链表头部取一个页头
	if(pfree_head == NULL)
	{
		printk("\nno free page\n");
		assert(0);
		enable_int();
		return	0;
	}
	
	PAGE_HEAD*	p_bh	= pfree_head;
	
	pfree_head		= pfree_head->next;
	if(pfree_head == NULL)	// 链表里只有这一个成员,释放了就没了
	{
		pfree_tail	= NULL;
	}
	else			// 链表里还有其他成员
	{
		pfree_head->pre	= NULL;
	}
	//printk("p_bh->page_base,p_bh->share  %x  %x  \n",p_bh->page_base,p_bh->share);
	assert(	p_bh->share == 0	);
	p_bh->share	= 1;
	enable_int();
	return	p_bh;
}
//--------------------------------------------------------------------------------------------------*/
/* 
函数功能：释放一个页头
输入参数：页头指针
输出参数：-1	失败(该页头还在被共享,不可被释放)
	0	成功
*/
int		put_page(PAGE_HEAD* p_bh)
{
	if(p_bh->share != 0)	return	-1;
	
	assert(p_bh->share == 0);
	// 将释放后的页头连接到空闲链表尾部
	p_bh->pre		= pfree_tail;
	p_bh->next	= NULL;
	if(pfree_head == NULL)
	{
		assert(pfree_tail == NULL);
		pfree_head	= p_bh;
	}
	else
	{
		pfree_tail->next	= p_bh;
	}
	pfree_tail	= p_bh;
	return	0;
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：缺页异常 处理函数
输入参数：缺页地址
输出参数：无
*/
void	nopage_fault(void)
{
	TCB*	p_tcb	= task_current;
	// 1、当前进程的页目录地址
	U32*	pdb	= p_tcb->pdb;
	// 2、获取cr2
	void*	va	= (void*)(get_cr2() & ~0xfff );	// get_cr2由汇编写成
	// 3、申请一个新页
	void*	pa_new	= alloc_a_page();
	// 4、复制文件内容到新页
	char*	pathname	= p_tcb->t_name;
	//printk("pid %d ,pathname : %s,va:%x pa_new:%x\n",task_current->pid,pathname,va,pa_new);
	file_page_copy(pathname,pa_new,va);	// file_page_copy会制造一个缺页异常进程给MM发送信息的假象。因为IPC机制会把task_current当做发送者
					// 文件复制可能比较耗时,所以先切换到其他进程	注：file_page_copy造成的消息假象会使任务切换
					// 附：在MM处理完页复制之后,不能给子进程回送消息。因为消息地址在内核,而内核不会保存这个地址,回送会导致内核数据被破坏
					// 所以在MM处理完之后,直接把子进程t_stat设置成READY
	// 5、修改页表,将cr2对应的虚拟地址映射到新页
	map_a_page(pdb,va,pa_new,PG_P + PG_RW + PG_US);
#ifdef	_FREE_MEM_
	// 6、内存占用情况
	if(p_tcb >= task_table + NR_TASK + NR_PROC)
	{
		U32*	v_indext		= p_tcb->v_indext;
		v_indext--;
		p_tcb->v_indext		= v_indext;
		*(U32*)va2pa(pdb,v_indext)	= (U32)pa_new;
	//	printk("pid : %d nopage_fault  v_m_index,va,pa_new : %x  %x %x \n",p_tcb->pid,v_indext,va,pa_new);
	}
#endif	// _FREE_MEM_
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：写异常 处理函数
输入参数：页地址
输出参数：无
*/
void	write_fault(void)
{
	// 1、当前进程的页目录地址
	TCB*	p_tcb	= task_current;
	U32*	pdb	= p_tcb->pdb;
	// 2、获取cr2
	void*	va	= (void*)(get_cr2() & ~0xfff );	// get_cr2由汇编写成
	// 3、cr2对应的物理页地址
	void*	pa	= va2pa(p_tcb->pdb,va);
	// 4、判断该物理页是否被共享
	void*	pa_new	= pa;
	if( (U32)pa < PAGE_BASE || (U32)pa >= PAGE_LIMIT ||  IsShared(pa) > 1)	// 如果被共享,或者是分页管理之外的页,则申请一个新页
	{
		if( (U32)pa >= PAGE_BASE && (U32)pa < PAGE_LIMIT )
			UnShare(pa);			// 共享数减一
		pa_new	= alloc_a_page();
		// 5、复制内容到新页
		memcopy(pa_new,pa,PAGE_SIZE);
#ifdef	_FREE_MEM_
		// 6、内存占用情况
		if(p_tcb >= task_table + NR_TASK + NR_PROC)
		{
			U32*	v_indext		= p_tcb->v_indext;
			v_indext--;
			p_tcb->v_indext		= v_indext;
			*(U32*)va2pa(pdb,v_indext)	= (U32)pa_new;
		//	printk("pid : %d write_fault  v_m_index,va,pa_new : %x  %x %x \n",p_tcb->pid,v_indext,va,pa_new);
		}
#endif	// _FREE_MEM_
	}
	// 6、修改页表,使缺页的虚拟地址映射到新页,并设置成“可写”
	map_a_page(pdb,va,pa_new,PG_P + PG_RW + PG_US);
	//printk("pdb,va,pa,pa_new %x %x %x %x   \n",pdb,va,pa,pa_new);
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：页分配函数
输入参数：无
输出参数：失败返回	0
	成功返回	新页地址
*/
void*	alloc_a_page(void)
{
	return	get_page()->page_base;
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：页头共享减一,如果没有其他进程共享该页,则释放该页
输入参数：物理页地址
输出参数：无
*/
void	UnShare(void* pa)
{
	disable_int();
	assert((U32)pa >= PAGE_BASE && (U32)pa < PAGE_LIMIT);
	PAGE_HEAD* p_ph	= PAGE_NUM(pa) + ph_table;
	if(--p_ph->share == 0)
		put_page(p_ph);
	enable_int();
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：获取页物理页共享次数
输入参数：物理页地址
输出参数：该物理页被共享的次数
*/
int	IsShared(void* pa)	// 判断pa是否被共享
{
	//printk("IsShared pa %x  ",pa);
	disable_int();
	assert((U32)pa >= PAGE_BASE && (U32)pa < PAGE_LIMIT);
	PAGE_HEAD* p_ph	= PAGE_NUM(pa) + ph_table;
	enable_int();
	return	p_ph->share;
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：页头共享加一
输入参数：物理页地址
输出参数：无
*/
void	Share(void* pa)
{
	disable_int();
	assert((U32)pa >= PAGE_BASE && (U32)pa < PAGE_LIMIT);
	PAGE_HEAD* p_ph	= PAGE_NUM(pa) + ph_table;
	assert(p_ph->share > 0);	// Share必须发生在alloc_a_page之后,而alloc_a_page会将share设为1
	//printk("Share p_ph->page_base,p_ph->share %x,%x  ",p_ph->page_base,p_ph->share);
	p_ph->share++;
	enable_int();
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：页映射函数
输入参数：虚拟地址	va
	物理地址	pa
	映射方式	flag
输出参数：无
*/
void	map_a_page(U32* pdb,void* va,void*pa,int flag)
{
	int	index_pde	= ((U32)va >> 22) & 0x3ff;
	int	index_pte	= ((U32)va >> 12) & 0x3ff;
	
	U32*	pte	= (U32*)(	pdb[index_pde] & ~0xfff );	// 页表地址
	pte[index_pte]	= ((U32)pa & ~0xfff) | (flag & 0xfff);	// 页表项
	//printk("map_a_page va : %x ,pa : %x \n",va,pa);
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：判断某个页目录的某个虚拟地址是否“写锁定”
输入参数：页目录	pdb
	虚拟地址	va
输出参数：无
*/
int		IsWriteLock(U32* pdb,void* va)
{
	
	return	0;
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：判断某个页目录的某个虚拟地址是否“存在”
输入参数：页目录	pdb
	虚拟地址	va
输出参数：无
*/
int		IsPresent(U32* pdb,void* va)
{
	
	return	0;
}
//--------------------------------------------------------------------------------------------------*/

