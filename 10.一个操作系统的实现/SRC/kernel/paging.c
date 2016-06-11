#include	"include.h"

//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ���ʼ���ڴ��ҳ����
�����������
�����������
*/
void	init_mm_page(void)
{
	// ��ʼ��ҳͷ����,��������ҳͷ�����и�Ԫ�غ�ҳ���Ķ�Ӧ��ϵ
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
	ph_table->pre			= NULL;		// ����ͷ��pre ָ��NULL
	(ph_table + NR_PAGE - 1)->next	= NULL;		// ����β��nextָ��NULL
	assert(p_ph == ph_table + NR_PAGE);
	assert(page_base == PAGE_LIMIT);
	// ��ʼ������ҳͷ����ͷ��βָ��
	pfree_head	= ph_table;	// ��ʼ״̬,����ҳͷ������	| ����
	pfree_tail	= ph_table + NR_PAGE - 1;		//	| head == 0 || tail == 0 ��ʾ����Ϊ��
							//	| head != 0��
							//	| 	tail == head ��ʾ����ֻ��һ����Ա
							//	| 	tail != head ��ʾ����ֹһ����Ա
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ�����һ���µ�ҳͷ
�����������
���������0	����ʧ��(ҳͷ����)
	��0	ҳͷָ��
*/
PAGE_HEAD*	get_page(void)
{
	disable_int();
	// 1���ڿ�������ͷ��ȡһ��ҳͷ
	if(pfree_head == NULL)
	{
		printk("\nno free page\n");
		assert(0);
		enable_int();
		return	0;
	}
	
	PAGE_HEAD*	p_bh	= pfree_head;
	
	pfree_head		= pfree_head->next;
	if(pfree_head == NULL)	// ������ֻ����һ����Ա,�ͷ��˾�û��
	{
		pfree_tail	= NULL;
	}
	else			// �����ﻹ��������Ա
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
�������ܣ��ͷ�һ��ҳͷ
���������ҳͷָ��
���������-1	ʧ��(��ҳͷ���ڱ�����,���ɱ��ͷ�)
	0	�ɹ�
*/
int		put_page(PAGE_HEAD* p_bh)
{
	if(p_bh->share != 0)	return	-1;
	
	assert(p_bh->share == 0);
	// ���ͷź��ҳͷ���ӵ���������β��
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
�������ܣ�ȱҳ�쳣 ������
���������ȱҳ��ַ
�����������
*/
void	nopage_fault(void)
{
	TCB*	p_tcb	= task_current;
	// 1����ǰ���̵�ҳĿ¼��ַ
	U32*	pdb	= p_tcb->pdb;
	// 2����ȡcr2
	void*	va	= (void*)(get_cr2() & ~0xfff );	// get_cr2�ɻ��д��
	// 3������һ����ҳ
	void*	pa_new	= alloc_a_page();
	// 4�������ļ����ݵ���ҳ
	char*	pathname	= p_tcb->t_name;
	//printk("pid %d ,pathname : %s,va:%x pa_new:%x\n",task_current->pid,pathname,va,pa_new);
	file_page_copy(pathname,pa_new,va);	// file_page_copy������һ��ȱҳ�쳣���̸�MM������Ϣ�ļ�����ΪIPC���ƻ��task_current����������
					// �ļ����ƿ��ܱȽϺ�ʱ,�������л�����������	ע��file_page_copy��ɵ���Ϣ�����ʹ�����л�
					// ������MM������ҳ����֮��,���ܸ��ӽ��̻�����Ϣ����Ϊ��Ϣ��ַ���ں�,���ں˲��ᱣ�������ַ,���ͻᵼ���ں����ݱ��ƻ�
					// ������MM������֮��,ֱ�Ӱ��ӽ���t_stat���ó�READY
	// 5���޸�ҳ��,��cr2��Ӧ�������ַӳ�䵽��ҳ
	map_a_page(pdb,va,pa_new,PG_P + PG_RW + PG_US);
#ifdef	_FREE_MEM_
	// 6���ڴ�ռ�����
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
�������ܣ�д�쳣 ������
���������ҳ��ַ
�����������
*/
void	write_fault(void)
{
	// 1����ǰ���̵�ҳĿ¼��ַ
	TCB*	p_tcb	= task_current;
	U32*	pdb	= p_tcb->pdb;
	// 2����ȡcr2
	void*	va	= (void*)(get_cr2() & ~0xfff );	// get_cr2�ɻ��д��
	// 3��cr2��Ӧ������ҳ��ַ
	void*	pa	= va2pa(p_tcb->pdb,va);
	// 4���жϸ�����ҳ�Ƿ񱻹���
	void*	pa_new	= pa;
	if( (U32)pa < PAGE_BASE || (U32)pa >= PAGE_LIMIT ||  IsShared(pa) > 1)	// ���������,�����Ƿ�ҳ����֮���ҳ,������һ����ҳ
	{
		if( (U32)pa >= PAGE_BASE && (U32)pa < PAGE_LIMIT )
			UnShare(pa);			// ��������һ
		pa_new	= alloc_a_page();
		// 5���������ݵ���ҳ
		memcopy(pa_new,pa,PAGE_SIZE);
#ifdef	_FREE_MEM_
		// 6���ڴ�ռ�����
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
	// 6���޸�ҳ��,ʹȱҳ�������ַӳ�䵽��ҳ,�����óɡ���д��
	map_a_page(pdb,va,pa_new,PG_P + PG_RW + PG_US);
	//printk("pdb,va,pa,pa_new %x %x %x %x   \n",pdb,va,pa,pa_new);
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ�ҳ���亯��
�����������
���������ʧ�ܷ���	0
	�ɹ�����	��ҳ��ַ
*/
void*	alloc_a_page(void)
{
	return	get_page()->page_base;
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ�ҳͷ�����һ,���û���������̹����ҳ,���ͷŸ�ҳ
�������������ҳ��ַ
�����������
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
�������ܣ���ȡҳ����ҳ�������
�������������ҳ��ַ
���������������ҳ������Ĵ���
*/
int	IsShared(void* pa)	// �ж�pa�Ƿ񱻹���
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
�������ܣ�ҳͷ�����һ
�������������ҳ��ַ
�����������
*/
void	Share(void* pa)
{
	disable_int();
	assert((U32)pa >= PAGE_BASE && (U32)pa < PAGE_LIMIT);
	PAGE_HEAD* p_ph	= PAGE_NUM(pa) + ph_table;
	assert(p_ph->share > 0);	// Share���뷢����alloc_a_page֮��,��alloc_a_page�Ὣshare��Ϊ1
	//printk("Share p_ph->page_base,p_ph->share %x,%x  ",p_ph->page_base,p_ph->share);
	p_ph->share++;
	enable_int();
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ�ҳӳ�亯��
��������������ַ	va
	�����ַ	pa
	ӳ�䷽ʽ	flag
�����������
*/
void	map_a_page(U32* pdb,void* va,void*pa,int flag)
{
	int	index_pde	= ((U32)va >> 22) & 0x3ff;
	int	index_pte	= ((U32)va >> 12) & 0x3ff;
	
	U32*	pte	= (U32*)(	pdb[index_pde] & ~0xfff );	// ҳ���ַ
	pte[index_pte]	= ((U32)pa & ~0xfff) | (flag & 0xfff);	// ҳ����
	//printk("map_a_page va : %x ,pa : %x \n",va,pa);
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ��ж�ĳ��ҳĿ¼��ĳ�������ַ�Ƿ�д������
���������ҳĿ¼	pdb
	�����ַ	va
�����������
*/
int		IsWriteLock(U32* pdb,void* va)
{
	
	return	0;
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ��ж�ĳ��ҳĿ¼��ĳ�������ַ�Ƿ񡰴��ڡ�
���������ҳĿ¼	pdb
	�����ַ	va
�����������
*/
int		IsPresent(U32* pdb,void* va)
{
	
	return	0;
}
//--------------------------------------------------------------------------------------------------*/

