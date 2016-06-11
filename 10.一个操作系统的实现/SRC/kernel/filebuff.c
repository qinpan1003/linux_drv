#include	"include.h"

//--------------------------------------------------------------------------------------------------*/
/*
函数功能：初始化文件缓冲
输入参数：无
输出参数：无
*/
void	init_file_buff(void)
{
	// 初始化缓冲头数组,即：建立缓冲头数组中各元素和缓冲区的对应关系
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
	bh_table->pre			= NULL;		// 链表头的pre 指向NULL
	(bh_table + NR_BUFF - 1)->next	= NULL;		// 链表尾的next指向NULL
	assert(p_bh == bh_table + NR_BUFF);
	assert(buff_base == BUFF_LIMIT);
	// 初始化空闲缓冲头链表头、尾指针
	bfree_head	= bh_table;	// 初始状态,所有缓冲头都空闲	| 附：
	bfree_tail	= bh_table + NR_BUFF - 1;		//	| head == 0 || tail == 0 表示链表为空
	// 初始化有效缓冲头链表头、尾指针			//	| head != 0：
	bvalid_head	= NULL;		// 初始状态,没有有效缓冲头	| 	tail == head 表示链表只有一个成员
	bvalid_tail	= NULL;				//	| 	tail != head 表示链表不止一个成员
}
//--------------------------------------------------------------------------------------------------*/
/* 
函数功能：搜索文件对应的缓冲头
输入参数：文件描述符指针
输出参数：0	没有找到缓冲头
	非0	文件描述符所指定的文件、偏移 对应的缓冲头指针
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
函数功能：申请一个新的缓冲头
输入参数：inode指针	p_inode
	文件位置	pos
输出参数：0	申请失败(缓冲头用完)
	非0	缓冲头指针
*/
BUFF_HEAD*	get_buff(Inode* p_inode,int pos)
{
	// 1、在空闲链表头部取一个缓冲头
	if(bfree_head == NULL)	return	0;
	
	int		i_dev	= p_inode->i_dev;
	int		i_num	= p_inode->i_num;
	BUFF_HEAD*	p_bh	= bfree_head;
	
	bfree_head		= bfree_head->next;
	if(bfree_head == NULL)	// 链表里只有这一个成员,释放了就没了
	{
		bfree_tail	= NULL;
	}
	else			// 链表里还有其他成员
	{
		bfree_head->pre	= NULL;
	}
	p_bh->i_dev	= i_dev;
	p_bh->i_num	= i_num;
	p_bh->offset	= pos & ~(BUFF_SIZE - 1);
	p_bh->size	= 0;
	p_bh->dirty	= 0;
	// 2、将缓冲头放入有效链表尾部
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
函数功能：释放一个缓冲头
输入参数：缓冲头指针
输出参数：-1	失败(没有该缓冲头)
	0	成功
注    意：释放缓冲头之前要考虑是否需要同步(基本上都需要先同步,再释放)
*/
int		put_buff(BUFF_HEAD* p_bh)
{
	//printk("put_buff i_num : %d  buff_base:%x    offset: %d \n",p_bh->p_inode->i_num,p_bh->buff_base,p_bh->offset);
	// 1、在有效链表中释放缓冲头
	if(p_bh == bvalid_head)		// 在头部
	{
		bvalid_head = bvalid_head->next;
		if(bvalid_head == NULL)	// 链表里只有这一个成员,释放了就没了
		{
			bvalid_tail	= NULL;
		}
		else			// 链表里还有其他成员
		{
			bvalid_head->pre	= NULL;
		}
	}
	else if(p_bh == bvalid_tail)		// 在尾部
	{
		bvalid_tail	= bvalid_tail->pre;
		if(bvalid_tail == NULL)
			bvalid_head	= NULL;
		else
			bvalid_tail->next	= NULL;
	}
	else				// 在中间
	{
		// 在有效链表里搜索待释放的缓冲头
		BUFF_HEAD*	p_work;
		for(p_work = bvalid_head->next;p_work != bvalid_tail ;p_work = p_work->next)
		{
			if(p_work == p_bh)
				break;
		}
		if(p_work == bvalid_tail)	return	-1;	// 待释放的缓冲头不存在
		assert(p_work == p_bh);
		// 释放,调整链表
		p_work->pre->next	= p_work->next;
		p_work->next->pre	= p_work->pre;
	}
	// 2、将释放后的缓冲头连接到空闲链表尾部
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
函数功能：缓冲同步
输入参数：inode指针	p_inode
	同步方式	flag	0:不释放缓冲	1：同步之后释放缓冲
输出参数：0	成功
	-1	失败
*/
int	sync_buff(Inode* p_inode,int flag)
{
//	{
//		BUFF_HEAD*	p_bh;
//		printk("before sync_buff: %d",p_inode->i_num);
//		for(p_bh	= bvalid_head;p_bh != NULL;p_bh = p_bh->next)
//			printk("\np_bh->p_inode->i_num : %d      p_bh->offset: %d ",p_bh->i_num,p_bh->offset);
//	}
	// 在有效链表中搜索p_inode的缓冲
	int		i_dev	= p_inode->i_dev;
	int		i_num	= p_inode->i_num;
	BUFF_HEAD*	p_bh;
	for(p_bh = bvalid_head;p_bh != NULL;p_bh = p_bh->next)
	{
		//printk("sync_buff i_num : %d  buff_base:%x    offset: %d \n",p_bh->p_inode->i_num,p_bh->buff_base,p_bh->offset);
		if(p_bh->i_dev != i_dev)	continue;
		if(p_bh->i_num != i_num)	continue;
		if(p_bh->dirty == 1)	// 将缓冲写入设备
		{
			write_buff(p_bh);
			p_bh->dirty	= 0;
		}
		if(flag == 1)		// 释放缓冲
		{
			BUFF_HEAD		bh_tmp	= *p_bh;	// 暂存
			put_buff(p_bh);	// 此处p_bh释放后就不再存在于有效链表中,所以要暂存,并重新赋值
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
函数功能：将缓冲区写入设备
输入参数：缓冲头指针
输出参数：失败	返回 -1
	成功	返回实际写入字节数
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
	// 根据文件存放基址、写入偏移，确定写入位置
	int	sect = p_inode->i_start_sect;
	if(offset < 0 || offset >= FILE_MAX_SIZE)
	{
		printk("write pos out of file\n");
		return	-1;		// 位置超出范围
	}
	sect += offset / SECTOR_SIZE + DAT_1ST_SECT;
	offset %= SECTOR_SIZE;		// 扇区内偏移
	// 写入
	int buf_offset = 0;			// 待写数据偏移
	int cnt = 0;
	while(count > 0)
	{
		if(sect >= p_inode->i_start_sect + p_inode->i_nr_sects + DAT_1ST_SECT)
		{
			printk("write sect out of file. sect : %d ,start: %d,sects: %d\n",sect,p_inode->i_start_sect + DAT_1ST_SECT,p_inode->i_nr_sects);
			return	cnt;
		}
		int	sect_remin	= SECTOR_SIZE - offset;
		if(sect_remin >= count)		// 当前扇区能容纳所有剩余数据
		{
			if(count != SECTOR_SIZE)	// 如果不是覆盖整个扇区，则先读出
			{
				//printk("hd_read1 \n");
				hd_read(ROOT_DEV,fsbuf,SECTOR_SIZE * sect,1);
			}
			memcopy(fsbuf + offset,buff_base + buf_offset,count);
			//printk("hd_write1 \n");
			hd_write(ROOT_DEV,fsbuf,SECTOR_SIZE * sect++,1);
			cnt += count;		// 剩余数据全部写入，然后返回
			return	cnt;
		}
		else				// 当前扇区不能容纳所有剩余数据
		{
			if(sect_remin != SECTOR_SIZE)	// 如果不是覆盖整个扇区，则先读出
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
			cnt	 += sect_remin;	// 写满当前扇区后循环写下一个扇区
		}
	}
	return	0;
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：将文件从设备读入缓冲区
输入参数：缓冲头指针
输出参数：失败	返回 -1
	成功	返回实际写入字节数
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
	assert(offset >= 0 && offset < FILE_MAX_SIZE);	// 位置超出范围
	sect += offset / SECTOR_SIZE + DAT_1ST_SECT;
	offset %= SECTOR_SIZE;
	// 读取
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
		if(sect_remin >= count)		// 当前扇区能容纳所有剩余数据
		{
			memcopy(buff_base + buf_offset,fsbuf + offset,count);
			cnt		+= count;	// 剩余数据全部读出，然后返回
			p_bh->size	= cnt;	// 实际读入字节数写入缓冲头
			return	cnt;
		}
		else				// 当前扇区不能容纳所有剩余数据
		{
			memcopy(buff_base + buf_offset,fsbuf + offset,sect_remin);
			offset	  = 0;
			buf_offset += sect_remin;
			count	 -= sect_remin;
			cnt	 += sect_remin;	// 读完当前扇区后循环读取下一个扇区
		}
	}
	p_bh->dirty	= 0;
	return	0;
}
//--------------------------------------------------------------------------------------------------*/
