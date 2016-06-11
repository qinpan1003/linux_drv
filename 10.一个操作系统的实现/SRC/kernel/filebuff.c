#include	"include.h"

//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ���ʼ���ļ�����
�����������
�����������
*/
void	init_file_buff(void)
{
	// ��ʼ������ͷ����,������������ͷ�����и�Ԫ�غͻ������Ķ�Ӧ��ϵ
	BUFF_HEAD*	p_bh;
	U32		buff_base	= BUFF_BASE;
	for(p_bh = bh_table;p_bh < bh_table + NR_BUFF;p_bh++)
	{
		p_bh->buff_base	= (void*)buff_base;
//		p_bh->i_dev
//		p_bh->i_num
//		p_bh->offset
//		p_bh->size
//		p_bh->dirty
		p_bh->pre		= p_bh - 1;
		p_bh->next	= p_bh + 1;
		buff_base		+= BUFF_SIZE;
	}
	bh_table->pre			= NULL;		// ����ͷ��pre ָ��NULL
	(bh_table + NR_BUFF - 1)->next	= NULL;		// ����β��nextָ��NULL
	assert(p_bh == bh_table + NR_BUFF);
	assert(buff_base == BUFF_LIMIT);
	// ��ʼ�����л���ͷ����ͷ��βָ��
	bfree_head	= bh_table;	// ��ʼ״̬,���л���ͷ������	| ����
	bfree_tail	= bh_table + NR_BUFF - 1;		//	| head == 0 || tail == 0 ��ʾ����Ϊ��
	// ��ʼ����Ч����ͷ����ͷ��βָ��			//	| head != 0��
	bvalid_head	= NULL;		// ��ʼ״̬,û����Ч����ͷ	| 	tail == head ��ʾ����ֻ��һ����Ա
	bvalid_tail	= NULL;				//	| 	tail != head ��ʾ����ֹһ����Ա
}
//--------------------------------------------------------------------------------------------------*/
/* 
�������ܣ������ļ���Ӧ�Ļ���ͷ
����������ļ�������ָ��
���������0	û���ҵ�����ͷ
	��0	�ļ���������ָ�����ļ���ƫ�� ��Ӧ�Ļ���ͷָ��
*/
BUFF_HEAD*	scan_buff(Inode* p_inode,int pos)
{
	int		i_dev	= p_inode->i_dev;
	int		i_num	= p_inode->i_num;
	BUFF_HEAD*	p_bh	= bvalid_head;
	pos	= pos & ~(BUFF_SIZE - 1);
	for(p_bh = bvalid_head;p_bh != NULL;p_bh = p_bh->next)
	{
		if(p_bh->i_dev != i_dev)	continue;
		if(p_bh->i_num != i_num)	continue;
		if(p_bh->offset != pos)	continue;
		//printk("scan_buff i_num : %d  buff_base:%x    offset: %d \n",p_bh->p_inode->i_num,p_bh->buff_base,p_bh->offset);
		return	p_bh;
	}
	return	0;
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ�����һ���µĻ���ͷ
���������inodeָ��	p_inode
	�ļ�λ��	pos
���������0	����ʧ��(����ͷ����)
	��0	����ͷָ��
*/
BUFF_HEAD*	get_buff(Inode* p_inode,int pos)
{
	// 1���ڿ�������ͷ��ȡһ������ͷ
	if(bfree_head == NULL)	return	0;
	
	int		i_dev	= p_inode->i_dev;
	int		i_num	= p_inode->i_num;
	BUFF_HEAD*	p_bh	= bfree_head;
	
	bfree_head		= bfree_head->next;
	if(bfree_head == NULL)	// ������ֻ����һ����Ա,�ͷ��˾�û��
	{
		bfree_tail	= NULL;
	}
	else			// �����ﻹ��������Ա
	{
		bfree_head->pre	= NULL;
	}
	p_bh->i_dev	= i_dev;
	p_bh->i_num	= i_num;
	p_bh->offset	= pos & ~(BUFF_SIZE - 1);
	p_bh->size	= 0;
	p_bh->dirty	= 0;
	// 2��������ͷ������Ч����β��
	p_bh->pre		= bvalid_tail;
	p_bh->next	= NULL;
	if(bvalid_head == NULL)
	{
		assert(bvalid_tail == NULL);
		bvalid_head	= p_bh;
	}
	else
	{
		bvalid_tail->next	= p_bh;
	}
	bvalid_tail	= p_bh;
	//printk("get_buff i_num : %d  buff_base:%x    offset: %d \n",p_bh->i_num,p_bh->buff_base,p_bh->offset);
	return	p_bh;
}
//--------------------------------------------------------------------------------------------------*/
/* 
�������ܣ��ͷ�һ������ͷ
�������������ͷָ��
���������-1	ʧ��(û�иû���ͷ)
	0	�ɹ�
ע    �⣺�ͷŻ���ͷ֮ǰҪ�����Ƿ���Ҫͬ��(�����϶���Ҫ��ͬ��,���ͷ�)
*/
int		put_buff(BUFF_HEAD* p_bh)
{
	//printk("put_buff i_num : %d  buff_base:%x    offset: %d \n",p_bh->p_inode->i_num,p_bh->buff_base,p_bh->offset);
	// 1������Ч�������ͷŻ���ͷ
	if(p_bh == bvalid_head)		// ��ͷ��
	{
		bvalid_head = bvalid_head->next;
		if(bvalid_head == NULL)	// ������ֻ����һ����Ա,�ͷ��˾�û��
		{
			bvalid_tail	= NULL;
		}
		else			// �����ﻹ��������Ա
		{
			bvalid_head->pre	= NULL;
		}
	}
	else if(p_bh == bvalid_tail)		// ��β��
	{
		bvalid_tail	= bvalid_tail->pre;
		if(bvalid_tail == NULL)
			bvalid_head	= NULL;
		else
			bvalid_tail->next	= NULL;
	}
	else				// ���м�
	{
		// ����Ч�������������ͷŵĻ���ͷ
		BUFF_HEAD*	p_work;
		for(p_work = bvalid_head->next;p_work != bvalid_tail ;p_work = p_work->next)
		{
			if(p_work == p_bh)
				break;
		}
		if(p_work == bvalid_tail)	return	-1;	// ���ͷŵĻ���ͷ������
		assert(p_work == p_bh);
		// �ͷ�,��������
		p_work->pre->next	= p_work->next;
		p_work->next->pre	= p_work->pre;
	}
	// 2�����ͷź�Ļ���ͷ���ӵ���������β��
	p_bh->pre		= bfree_tail;
	p_bh->next	= NULL;
	if(bfree_head == NULL)
	{
		assert(bfree_tail == NULL);
		bfree_head	= p_bh;
	}
	else
	{
		bfree_tail->next	= p_bh;
	}
	bfree_tail	= p_bh;
	return	0;
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ�����ͬ��
���������inodeָ��	p_inode
	ͬ����ʽ	flag	0:���ͷŻ���	1��ͬ��֮���ͷŻ���
���������0	�ɹ�
	-1	ʧ��
*/
int	sync_buff(Inode* p_inode,int flag)
{
//	{
//		BUFF_HEAD*	p_bh;
//		printk("before sync_buff: %d",p_inode->i_num);
//		for(p_bh	= bvalid_head;p_bh != NULL;p_bh = p_bh->next)
//			printk("\np_bh->p_inode->i_num : %d      p_bh->offset: %d ",p_bh->i_num,p_bh->offset);
//	}
	// ����Ч����������p_inode�Ļ���
	int		i_dev	= p_inode->i_dev;
	int		i_num	= p_inode->i_num;
	BUFF_HEAD*	p_bh;
	for(p_bh = bvalid_head;p_bh != NULL;p_bh = p_bh->next)
	{
		//printk("sync_buff i_num : %d  buff_base:%x    offset: %d \n",p_bh->p_inode->i_num,p_bh->buff_base,p_bh->offset);
		if(p_bh->i_dev != i_dev)	continue;
		if(p_bh->i_num != i_num)	continue;
		if(p_bh->dirty == 1)	// ������д���豸
		{
			write_buff(p_bh);
			p_bh->dirty	= 0;
		}
		if(flag == 1)		// �ͷŻ���
		{
			BUFF_HEAD		bh_tmp	= *p_bh;	// �ݴ�
			put_buff(p_bh);	// �˴�p_bh�ͷź�Ͳ��ٴ�������Ч������,����Ҫ�ݴ�,�����¸�ֵ
			p_bh	= &bh_tmp;
		}
	}
//	{
//		BUFF_HEAD*	p_bh;
//		printk("after sync_buff: %d",p_inode->i_num);
//		for(p_bh	= bvalid_head;p_bh != NULL;p_bh = p_bh->next)
//			printk("\np_bh->p_inode->i_num : %d      p_bh->offset: %d ",p_bh->i_num,p_bh->offset);
//	}
	return	0;
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ���������д���豸
�������������ͷָ��
���������ʧ��	���� -1
	�ɹ�	����ʵ��д���ֽ���
*/
int	write_buff(BUFF_HEAD* p_bh)
{
	//printk("write_buff i_num : %d  buff_base:%x    offset: %d \n",p_bh->p_inode->i_num,p_bh->buff_base,p_bh->offset);
	int	i_dev = p_bh->i_dev;
	int	i_num = p_bh->i_num;
	Inode*	p_inode;
	for(p_inode = inode_table;p_inode < inode_table + MAX_ALL_INODE;p_inode++)
	{
		if(p_inode->i_cnt == 0)	continue;
		if(p_inode->i_dev != i_dev)	continue;
		if(p_inode->i_num != i_num)	continue;
		break;
	}
	assert(p_inode < inode_table + MAX_ALL_INODE);
	
	void*	buff_base = p_bh->buff_base;
	int	offset	= p_bh->offset;
	int	count	= p_bh->size;
	// �����ļ���Ż�ַ��д��ƫ�ƣ�ȷ��д��λ��
	int	sect = p_inode->i_start_sect;
	if(offset < 0 || offset >= FILE_MAX_SIZE)
	{
		printk("write pos out of file\n");
		return	-1;		// λ�ó�����Χ
	}
	sect += offset / SECTOR_SIZE + DAT_1ST_SECT;
	offset %= SECTOR_SIZE;		// ������ƫ��
	// д��
	int buf_offset = 0;			// ��д����ƫ��
	int cnt = 0;
	while(count > 0)
	{
		if(sect >= p_inode->i_start_sect + p_inode->i_nr_sects + DAT_1ST_SECT)
		{
			printk("write sect out of file. sect : %d ,start: %d,sects: %d\n",sect,p_inode->i_start_sect + DAT_1ST_SECT,p_inode->i_nr_sects);
			return	cnt;
		}
		int	sect_remin	= SECTOR_SIZE - offset;
		if(sect_remin >= count)		// ��ǰ��������������ʣ������
		{
			if(count != SECTOR_SIZE)	// ������Ǹ����������������ȶ���
			{
				//printk("hd_read1 \n");
				hd_read(ROOT_DEV,fsbuf,SECTOR_SIZE * sect,1);
			}
			memcopy(fsbuf + offset,buff_base + buf_offset,count);
			//printk("hd_write1 \n");
			hd_write(ROOT_DEV,fsbuf,SECTOR_SIZE * sect++,1);
			cnt += count;		// ʣ������ȫ��д�룬Ȼ�󷵻�
			return	cnt;
		}
		else				// ��ǰ����������������ʣ������
		{
			if(sect_remin != SECTOR_SIZE)	// ������Ǹ����������������ȶ���
			{
				//printk("hd_read2 \n");
				hd_read(ROOT_DEV,fsbuf,SECTOR_SIZE * sect,1);
			}
			memcopy(fsbuf + offset,buff_base + buf_offset,sect_remin);
			//printk("hd_write2 \n");
			hd_write(ROOT_DEV,fsbuf,SECTOR_SIZE * sect++,1);
			offset	  = 0;
			buf_offset += sect_remin;
			count	 -= sect_remin;
			cnt	 += sect_remin;	// д����ǰ������ѭ��д��һ������
		}
	}
	return	0;
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ����ļ����豸���뻺����
�������������ͷָ��
���������ʧ��	���� -1
	�ɹ�	����ʵ��д���ֽ���
*/
int		read_buff(BUFF_HEAD* p_bh)
{
	//printk("read_buff i_num : %d  buff_base:%x    offset: %d \n",p_bh->p_inode->i_num,p_bh->buff_base,p_bh->offset);
	int	i_dev = p_bh->i_dev;
	int	i_num = p_bh->i_num;
	Inode*	p_inode;
	for(p_inode = inode_table;p_inode < inode_table + MAX_ALL_INODE;p_inode++)
	{
		if(p_inode->i_cnt == 0)	continue;
		if(p_inode->i_dev != i_dev)	continue;
		if(p_inode->i_num != i_num)	continue;
		break;
	}
	assert(p_inode < inode_table + MAX_ALL_INODE);
	
	void*	buff_base = p_bh->buff_base;
	int	offset	= p_bh->offset;
	int	count	= MIN(	(p_inode->i_size - offset)	,	BUFF_SIZE	);
	
	int	sect = p_inode->i_start_sect;
	assert(offset >= 0 && offset < FILE_MAX_SIZE);	// λ�ó�����Χ
	sect += offset / SECTOR_SIZE + DAT_1ST_SECT;
	offset %= SECTOR_SIZE;
	// ��ȡ
	int buf_offset = 0;
	int sect_remin = 0;
	int cnt = 0;
	while(count > 0)
	{
		if(sect >= p_inode->i_start_sect + p_inode->i_nr_sects + DAT_1ST_SECT)
		{
			printk("read sect out of file. sect : %d ,start: %d,sects: %d\n",sect,p_inode->i_start_sect,p_inode->i_nr_sects);
			return	cnt;
		}
		//printk("read data out of sect :%d\n",sect);
		hd_read(ROOT_DEV,fsbuf,SECTOR_SIZE * sect++,1);
		sect_remin = SECTOR_SIZE - offset;
		if(sect_remin >= count)		// ��ǰ��������������ʣ������
		{
			memcopy(buff_base + buf_offset,fsbuf + offset,count);
			cnt		+= count;	// ʣ������ȫ��������Ȼ�󷵻�
			p_bh->size	= cnt;	// ʵ�ʶ����ֽ���д�뻺��ͷ
			return	cnt;
		}
		else				// ��ǰ����������������ʣ������
		{
			memcopy(buff_base + buf_offset,fsbuf + offset,sect_remin);
			offset	  = 0;
			buf_offset += sect_remin;
			count	 -= sect_remin;
			cnt	 += sect_remin;	// ���굱ǰ������ѭ����ȡ��һ������
		}
	}
	p_bh->dirty	= 0;
	return	0;
}
//--------------------------------------------------------------------------------------------------*/
