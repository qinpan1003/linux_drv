#include	"include.h"

int	no_answer;		// 挂起进程

void	init_fs(void);
int	fs_open(char * pathname,int flags,TCB* p_tcb);
int	fs_write(int fd,void *buf,int offset,int count,TCB* p_tcb);
int	fs_read(int fd,void * buf,int offset,int count,TCB* p_tcb);
int	fs_close(int fd,TCB* p_tcb);
int	fs_delete(char * pathname,int flags);
int	fs_do_fork(int cpid);
void	fs_do_exit(int cpid);
int	fs_do_lseek(int fd,int offset,int flags,TCB* p_tcb);
int	file_buff_read(void * buf,Inode* p_inode,int offset,int count);
int	file_buff_write(void * buf,Inode* p_inode,int offset,int count);

Inode*	p_inode_de;
//--------------------------------------------------------------------------------------------------*/
// 文件系统主循环任务
void task_fs(void * pdata)
{
	MSG 	msg;
	FS_MSG* 	p_fs_msg;
	pdata = pdata;
	int src;
	init_fs();
	while(1)
	{
//--------------------------------------------------------------------------------------------------*/
//
		assert(recv(ANY,&msg) == 0);
		assert(	msg.type == FS_MSG_UNION	);
		src	= msg.sender;
		p_fs_msg	= &msg.msg_union.fs_msg;
		switch(p_fs_msg->para)
		{
			case FS_OPEN:
				p_fs_msg->fd = fs_open(p_fs_msg->pathname,p_fs_msg->flags,task_table + msg.sender);
				break;
			case FS_WRITE:
				p_fs_msg->count = fs_write(p_fs_msg->fd,p_fs_msg->buf,p_fs_msg->offset,p_fs_msg->count,task_table + msg.sender);
  				break;
			case FS_READ:
				p_fs_msg->count = fs_read(p_fs_msg->fd,p_fs_msg->buf,p_fs_msg->offset,p_fs_msg->count,task_table + msg.sender);
           			break;
			case FS_CLOSE:
				p_fs_msg->para = fs_close(p_fs_msg->fd,task_table + msg.sender);
				break;
			case FS_DEL:
				p_fs_msg->para = fs_delete(va2pa((task_table + msg.sender)->pdb,p_fs_msg->pathname),p_fs_msg->flags);
				break;
			case FS_RESUME:
				src = p_fs_msg->flags;	// 待解除阻塞的进程ID(利用了flags这个成员返回PID)
				assert(0 <= src && src < NR_TOTAL);
				break;			// p_fs_msg->count：-1 请求失败（有其他进程正在请求输入），其他值表示输入字节数
			case FS_FORK:
				p_fs_msg->para	= fs_do_fork(p_fs_msg->flags);
				break;
			case FS_EXIT:
				fs_do_exit(p_fs_msg->flags);
				break;
			case FS_LSEEK:
				p_fs_msg->para	= fs_do_lseek(p_fs_msg->fd,p_fs_msg->offset,p_fs_msg->flags,task_table + msg.sender);
				break;
			default:	break;
		}
		if(no_answer == 1)
			no_answer = 0;			// 解除下一个tty请求的阻塞
		else
			send(src,&msg);
//--------------------------------------------------------------------------------------------------*/
	}
}
//--------------------------------------------------------------------------------------------------*/
// 创建文件系统
void fs_make(void)
{
	// 超级块
	Super_Block	sb;
	
	sb.magic			= MAGIC;			// 魔数
	sb.imap_1st_sects		= IMAP_1ST_SECTS;		// imap第一个扇区号
	sb.nr_inodes		= NR_INODES;		// inodes总数
	sb.nr_imap_sects		= NR_IMAP_SECTS;		// inode-map 占用扇区数
	sb.smap_1st_sects		= SMAP_1ST_SECTS;		// smap第一个扇区号
	sb.nr_sects		= NR_SECTS;		// 扇区总数
	sb.nr_smap_sects		= NR_SMAP_SECTS;		// sector-map占用扇区数
	sb.inode_1st_sects		= INODE_1ST_SECTS;		// inode_array第一个扇区号
	sb.inode_size		= INODE_SIZE;		// inode 大小
	sb.inode_per_sect		= INODE_PER_SECT;		// 每扇区能容纳的inode数
	sb.nr_inode_sects		= NR_INODE_SECTS;		// inode占用扇区数
	sb.dat_1st_sect		= DAT_1ST_SECT;		// 第一个数据扇区号
	sb.dir_ent_size		= DIR_ENT_SIZE;		// dir_entry的大小
	sb.dir_ent_inode_off	= DIR_ENT_INODE_OFF;	// dir_entry结构中inode_nr的偏移
	sb.dir_ent_fname_off	= DIR_ENT_FNAME_OFF;	// dir_entry结构中name的偏移
	sb.dir_ent_per_sect		= DIR_ENT_PER_SECT;		// 每个root扇区能容纳的dir_entry数
	sb.root_sects		= ROOT_SECTS;		// root占用扇区数
	sb.root_inode		= ROOT_INODE;		// root directory 的inode号
	sb.inode_isize_off		= INODE_ISEZE_OFF;		// inode结构中i_size的偏移
	sb.inode_start_off		= INODE_START_OFF;		// inode结构中i_start_sect的偏移
	
	printk("super block  lba: %x,sects: %x\n",1,1);
	printk("i_node map   lba: %x,sects: %x\n",IMAP_1ST_SECTS	,NR_IMAP_SECTS);
	printk("sector map   lba: %x,sects: %x\n",SMAP_1ST_SECTS	,NR_SMAP_SECTS);
	printk("inode_array  lba: %x,sects: %x\n",INODE_1ST_SECTS	,NR_INODE_SECTS);
	printk("data_root    lba: %x,sects: %x\n",DAT_1ST_SECT	,NR_SECTS);
	mset(fsbuf,0x11,SECTOR_SIZE * 1);
	memcopy(fsbuf,(char*)&sb,SUPER_BLOCK_SIZE);
	hd_write(ROOT_DEV,fsbuf,SECTOR_SIZE * 1,1);		// 超级块放在第 1 个扇区（从0开始数）
	//----------------------------------------------------------
	// imap
	int	i;
	for(i = 0;i < NR_IMAP_SECTS;i++)
	{
		mset(fsbuf,0,SECTOR_SIZE);
		if(i == 0)
			*fsbuf = 0x1f;			// 0：保留，1：root，2-4：tty0-tty2。总共5位	
		hd_write(ROOT_DEV,fsbuf,SECTOR_SIZE * ( IMAP_1ST_SECTS + i),1);
	}
	//----------------------------------------------------------
	// smap
	mset(fsbuf,0,SECTOR_SIZE * NR_SMAP_SECTS);
	int	j;
	for(i = 0 ;i < (ROOT_SECTS + 1) / 8;i++)		// 0：保留，此时只有root占用了硬盘扇区	// +1 是因为根目录区从第1扇区开始(从0开始数)
		fsbuf[i] = 0xff;
	for(j = 0 ;j < (ROOT_SECTS + 1) % 8;j++)
		fsbuf[i] |= 1 << j;
	hd_write(ROOT_DEV,fsbuf,SECTOR_SIZE * SMAP_1ST_SECTS,NR_SMAP_SECTS);
	
	int	ints	= (ROOT_SECTS + 1) / 32;		// 以4字节为最小单位操作
	int	bits	= (ROOT_SECTS + 1) % 32;
	for(i = 0;i < NR_SMAP_SECTS;i++)
	{
		mset(fsbuf,0,SECTOR_SIZE);
		int*	p_int = (int*)fsbuf;
		for(j = 0;j < SECTOR_SIZE / 4;j++,p_int++)	// 以4字节为最小单位操作
		{
			if(ints > 0)
			{
				*p_int	= 0xffffffff;
				ints--;
				continue;
			}
			// ints为0时,程序才能运行到这里
			*p_int	= 0x00000000;
			if(bits > 0)
			{
				while(bits > 0)
				{
					bits--;
					*p_int	|= 1 << bits;
				}
			}
		}
		hd_write(ROOT_DEV,fsbuf,SECTOR_SIZE * (SMAP_1ST_SECTS + i),1);
	}
	//----------------------------------------------------------
	// inode_array
	DEV_Inode* p_inode = (DEV_Inode*)fsbuf;		// 0：保留，1：root，2-4：tty0-tty2。总共5个
	mset(fsbuf,0,SECTOR_SIZE);
	p_inode++;				// 0：保留
	p_inode->i_mode		= I_MODE_ROOT;	// 1:root
	p_inode->i_size		= SECTOR_SIZE * ROOT_SECTS;
	p_inode->i_start_sect	= 1;
	p_inode->i_nr_sects		= ROOT_SECTS;
	p_inode++;
	for(i = 0 ;i < NR_TTY ;i++,p_inode++)		// 2-4:tty
	{
		p_inode->i_mode		= I_MODE_CHAR;
		p_inode->i_size		= 0;
		p_inode->i_start_sect	= DEVICE(MAJAR_TTY,i);	// 设为tty的设备号
		p_inode->i_nr_sects		= 0;
	}
	hd_write(ROOT_DEV,fsbuf,SECTOR_SIZE * INODE_1ST_SECTS,1);
	//----------------------------------------------------------
	// root(dir_entry)				0:保留，".",tty0-tty2。总共5个
	Dir_Entry* p_dir;
	for(i = 0;i < ROOT_SECTS;i++)			// 其余的清零
	{
		p_dir = (Dir_Entry*)fsbuf;
		for(j = 0;j < DIR_ENT_PER_SECT;j++,p_dir++)
			p_dir->inode_nr = 0;
		hd_write(ROOT_DEV,fsbuf,SECTOR_SIZE * (DAT_1ST_SECT + 1 + i),1);	// +1 是因为根目录区从第1扇区开始(从0开始数)
	}
	p_dir = (Dir_Entry*)fsbuf;
	p_dir++;					// 0:保留
	p_dir->inode_nr	= 1;			// 1:"."	root
	memcopy(p_dir->name,".",2);
	p_dir++;
	for(i = 0;i < NR_TTY;i++,p_dir++)		// tty
	{
		p_dir->inode_nr	= 2 + i;
		memcopy(p_dir->name,"tty0",5);
		p_dir->name[3] = '0' + i;
	}
	hd_write(ROOT_DEV,fsbuf,SECTOR_SIZE * (DAT_1ST_SECT + 1),1);		// +1 是因为根目录区从第1扇区开始(从0开始数)
}
//--------------------------------------------------------------------------------------------------*/
// 文件系统初始化
void init_fs(void)
{
	File_Desc*	p_fd;
	Inode*		p_inode;
	no_answer = 0;
	for(p_fd = file_table;p_fd < file_table + MAX_ALL_FILE;p_fd++)
		p_fd->fd_inode = 0;
	for(p_inode = inode_table;p_inode < inode_table + MAX_ALL_INODE;p_inode++)
		p_inode->i_cnt = 0;
	hd_open(ROOT_DEV);
	hd_read(ROOT_DEV,fsbuf,512,1);
	DEV_Super_Block*	p_sb = (DEV_Super_Block*)fsbuf;
	if(p_sb->magic != MAGIC)
		fs_make();	// 只在建立文件系统的时候调用，调用之后会覆盖之前的文件系统
	
	hd_read(ROOT_DEV,fsbuf,SECTOR_SIZE * INODE_1ST_SECTS,1);	// 获取目录inode
	DEV_Inode*	p_devinode	= (DEV_Inode*)fsbuf;
	inode_table[0]		= *(Inode*)(p_devinode + 1);	// inode_table第0个元素用于存放目录inode
	inode_table[0].i_dev	= ROOT_DEV;
	inode_table[0].i_cnt	= 1;
	inode_table[0].i_num	= 1;
	p_inode_de		= inode_table;
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：创建普通文件
输入参数：文件名	pathname
输出参数：0 创建失败，非0 新文件在设备中的inode_nr
*/
int create_file(char * pathname)
{
	int		inode_nr = 0;
	int		start_sect = 0;
	int		i,j,k;
	// 在imap中找一个空位
	for(i =  0;i < NR_IMAP_SECTS ;i++)
	{
		hd_read(ROOT_DEV,fsbuf,SECTOR_SIZE * (IMAP_1ST_SECTS + i),1);
		for(j = 0;j < SECTOR_SIZE;j++)
		{
			if(fsbuf[j] == (char)0xff)
				continue;
			for(k = 0;k < 8;k++)
			{
				if(( fsbuf[j] & (1<<k) ) == 0)
				{	// 此时第i扇区，第j字节，第k位为待找的空位
					//printk("imap find3\n");
					inode_nr	= SECTOR_SIZE * i * 8 + j * 8 + k;
					if(inode_nr == 0)	continue;
					//printk("imap find4,inode_nr: %d\n",inode_nr);
					fsbuf[j] |= (1 << k);
					hd_write(ROOT_DEV,fsbuf,SECTOR_SIZE * (IMAP_1ST_SECTS + i),1);
					break;
				}
			}
			if(inode_nr != 0) break;
		}
		if(inode_nr != 0) break;
	}
	if(inode_nr == 0)
	{
		printk("imap full----");
		return	0;	// 没有空位
	}
	// 在smap中找 inode_nr对应的 SECTS_PER_FILE 个连续空位，然后全部置1
	for(i = 0;i < NR_SMAP_SECTS;i++)	//
	{
		hd_read(ROOT_DEV,fsbuf,SECTOR_SIZE * (SMAP_1ST_SECTS + i),1);
		for(j = 0;j < SECTOR_SIZE;j++)
		{
			if(fsbuf[j] == (char)0xff)
				continue;
			for(k = 0;k < 8;k++)
			{
				if((fsbuf[j] & (1 << k)) == 0)
				{	// 此时第i扇区，第j字节，第k位为待找的空位
					//printk("i:%d j:%d k:%d\n",i,j,k);
					start_sect = SECTOR_SIZE * i * 8 + j * 8 + k;
					int nr_sects = SECTS_PER_FILE;
					while(nr_sects > 0)				// 填充smap
					{
						hd_read(ROOT_DEV,fsbuf,SECTOR_SIZE * (i + SMAP_1ST_SECTS),1);
						while(j < SECTOR_SIZE && nr_sects >0)
						{
							if(8 - k >= nr_sects)		// 该字节内解决问题
							{
								while(nr_sects-- > 0)
								{
									if(fsbuf[j] & (char)(1 << k))
									{
										printk("i:%d j:%d k:%d\n",i,j,k);
										printk("OMG retry1!\n");
										goto	repeat;
									}
									fsbuf[j] |= (char)(1 << k++);
								}
								hd_write(ROOT_DEV,fsbuf,SECTOR_SIZE * (i + SMAP_1ST_SECTS),1);
								goto	smapOK;
							}
							else				// 该字节内解决不了问题
							{
								if(k == 0)		// 全1
								{
									if(fsbuf[j] != 0)
									{
										printk("i:%d j:%d k:%d\n",i,j,k);
										printk("OMG retry2!\n");
										goto	repeat;
									}
									fsbuf[j] = 0xff;
									nr_sects -= 8;
								}
								else			// 非全1
								{
									while(k < 8)
									{
										if(fsbuf[j] & (char)(1 << k))
										{
											printk("i:%d j:%d k:%d\n",i,j,k);
											printk("OMG retry3!\n");
											goto	repeat;
										}							
										fsbuf[j] |= (char)(1 << k++);
										nr_sects--;
									}
								}
								j++;
								k = 0;
							}
						}
						hd_write(ROOT_DEV,fsbuf,SECTOR_SIZE * (i + SMAP_1ST_SECTS),1);
						i++;
						j = 0;
					}
				}
			repeat:	;
			}
		}
	}
smapOK:	if(start_sect == 0) 
	{
		printk("smap full2----");
		return	0;	// 没有空位	
	}
	// devinode赋值
	int offset = (SECTOR_SIZE * INODE_1ST_SECTS + inode_nr * INODE_SIZE) & ~0x1ff;
	hd_read(ROOT_DEV,fsbuf,offset,1);
	DEV_Inode* p_devinode = (DEV_Inode*)fsbuf;
	p_devinode += inode_nr % INODE_PER_SECT;
	p_devinode->i_mode		= I_MODE_FILE;
	p_devinode->i_size		= FILE_MAX_SIZE;
	p_devinode->i_start_sect	= start_sect;
	p_devinode->i_nr_sects	= SECTS_PER_FILE;
	printk("new file %s  start_sect :%d  sects: %d\n",pathname,start_sect,SECTS_PER_FILE);
	hd_write(ROOT_DEV,fsbuf,offset,1);
	// Dir_Entry
	// 在root中找一个空位
	Dir_Entry*	p_de;
	int	file_offset	= 0;
	int	de_nr		= 0;
	for(i = 0;i < ROOT_SECTS;i++,file_offset += SECTOR_SIZE)
	{
		file_buff_read(fsbuf,p_inode_de,file_offset,SECTOR_SIZE);
		for(j = 0,p_de = (Dir_Entry*)fsbuf;j < DIR_ENT_PER_SECT;j++,p_de++)
		{
			if(p_de->inode_nr == 0 && (i !=0 || j != 0))	// 第0号位置保留
			{
				de_nr	+= j;
				//printk("de_nr:%d  ",de_nr);
				Dir_Entry	de;
				de.inode_nr = inode_nr;
				memcopy(de.name,pathname,MAX_FILENAME_LEN);
				file_buff_write(&de,p_inode_de,de_nr * sizeof(Dir_Entry),sizeof(Dir_Entry));
				sync_buff(p_inode_de,0);		// 0:不释放缓冲	1：同步之后释放缓冲
				
				// 返回inode_nr
				printk("create file success: %s\n",pathname);
				return inode_nr;	// 返回inode_nr	0：失败，非0：成功
			}
		}
		de_nr += DIR_ENT_PER_SECT;
	}
	printk("Dir_Entry empty\n");
	return	0;	// 没有找到Dir_Entry
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：打开文件
输入参数：文件名	pathname
	打开方式	flags
	进程指针	p_tcb
输出参数：成功返回进程filp中的fd下标，失败返回-1
*/
int fs_open(char * pathname,int flags,TCB* p_tcb)
{
	pathname		= va2pa(p_tcb->pdb,pathname);
	DEV_Inode*	p_devinode;
	int		inode_nr;
	File_Desc*	p_fd;
	Inode*		p_inode;
	Dir_Entry*	p_de;
	int		i,j;
	
	// 读目录文件,寻找pathname,获得其inode_nr
	int	file_offset	= 0;
	for(i = 0,inode_nr = 0;i < ROOT_SECTS;i++,file_offset += SECTOR_SIZE)
	{
		file_buff_read(fsbuf,p_inode_de,file_offset,SECTOR_SIZE);
		for(j = 0,p_de = (Dir_Entry*)fsbuf;j < DIR_ENT_PER_SECT;j++,p_de++)
		{
			if(strcmp(p_de->name,pathname) == 0)
			{
				inode_nr = p_de->inode_nr;
				break;
			}
		}
		if(inode_nr != 0)
			break;
	}
	// 目录中寻找结束
	if(inode_nr == 0)				// 没找到dev_inode
	{
		if(flags == O_CREATE)
		{
			// 这里应该判断待创建打开的是否是普通文件
			inode_nr = create_file(pathname);
			if(inode_nr == 0)
			{
				printk("create_file error! %s\n",pathname);
				return	-1;	// 创建文件失败
			}
		}
		else
		{
			printk("no file : %s\n",pathname);
			return	-1;		// 没有找到，也没有创建文件
		}
	}
	//printk("file : %s   inode_nr : %d\n",pathname,inode_nr);
	// 找到了dev_inode编号inode_nr
	// 查看内存里的inode_table中是否存在该inode
	int	i_dev = ROOT_DEV;
	Inode*	p_inode_empty = 0;
	Inode*	p_inode_empty1 = 0;
	for(p_inode = inode_table;p_inode < inode_table + MAX_ALL_INODE;p_inode++)
	{
		if(p_inode->i_cnt == 0)
		{
			if(p_inode_empty == 0)
				p_inode_empty = p_inode;	// 第一个空位
			
			if(p_inode_empty1 == 0 && p_inode->i_dev == 0 && p_inode->i_num == 0)
				p_inode_empty1 = p_inode;	// 第一个从未被使用过的空位
		}
		if(p_inode->i_dev != i_dev)		continue;
		if(p_inode->i_num != inode_nr)	continue;
		break;
	}
	int	new_inode	= 0;
	if(p_inode >= inode_table + MAX_ALL_INODE)		// 不在inode_table里，需要手动添加
	{	// 在inode_table中寻找一个空位
		if(p_inode_empty1 != 0)
		{
			p_inode		= p_inode_empty1;
		}
		else
		{
			if(p_inode_empty == 0)
			{
				printk("inode_table full : %s----",pathname);
				return	-1;	// inode_table无空位
			}
			p_inode		= p_inode_empty;
		}
		
		new_inode		= 1;	// 用于判断该inode是否是新添加的
	}
	// 此时p_inode的i_dev i_num正确,但是i_cnt可能是0。即：现在找到的inode可能是正在被其他进程共享的,也可能是被其他进程废弃的
	// 在file_table中寻找一个空位
	for(p_fd = file_table;p_fd < file_table + MAX_ALL_FILE;p_fd++)
	{
		if(p_fd->fd_inode == 0)
			break;
	}
	//printk(" p_fd : %d   \n",p_fd - file_table);
	if(p_fd >= file_table + MAX_ALL_FILE)
	{
		printk("file_table full : %s----",pathname);
		return	-1;	// file_table无空位
	}
	// 在进程filp数组中寻找一个空位
	for(i = 0;i < MAX_TASK_FILE;i++)
	{
		if(p_tcb->filp[i] == 0)
			break;
	}
	if(i >= MAX_TASK_FILE)
	{
		printk("filp full : %s----",pathname);
		return	-1;	// filp无空位
	}
	// 填充空位信息
	p_tcb->filp[i]		= p_fd;
	
	p_fd->fd_mode		= RD_WR;
	p_fd->fd_pos		= 0;
	p_fd->fd_inode		= p_inode;
	p_inode->i_cnt++;
	if(new_inode == 1)		// 新添加的inode，需要赋值
	{
		//printk("new inode : %d\n",inode_nr);
		// 获取dev_inode指针
		hd_read(ROOT_DEV,fsbuf,SECTOR_SIZE * (INODE_1ST_SECTS + inode_nr  / INODE_PER_SECT),1);
		p_devinode = (DEV_Inode*)fsbuf;
		p_devinode += inode_nr % INODE_PER_SECT;
		// 赋值
		p_inode->i_mode		= p_devinode->i_mode;
		p_inode->i_size		= p_devinode->i_size;
		p_inode->i_start_sect	= p_devinode->i_start_sect;
		p_inode->i_nr_sects		= p_devinode->i_nr_sects;
		p_inode->i_dev		= ROOT_DEV;
		p_inode->i_num		= inode_nr;
	}
	// 返回filp中的下标
	//printk("file open : %s  ----",pathname);
	if(p_inode->i_mode == I_MODE_CHAR)			// 字符设备文件
	{
		MSG 	msg;
		msg.type				= TTY_MSG_UNION;
		msg.msg_union.tty_msg.para		= DEV_OPEN;
		msg.msg_union.tty_msg.sub_device	= MINOR(p_inode->i_start_sect);	// 字符设备的i_start_sect即设备号
		//printk("sub_device : %d       ",msg.msg_union.tty_msg.sub_device);
		disable_int();
		if(tty_has_msg_tmp == 0)
		{
			assert(sendrecv(BOTH,dd_map[MAJAR(p_inode->i_start_sect)],&msg) == 0);
		}
		enable_int();
		
	}
	//printk(" i : %d----",i);
	return	i;
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：写文件
输入参数：进程指针	p_tcb
	文件fd	fd
	写缓冲	buf
	写大小	count	字节
输出参数：成功返回实际写入字节数，失败返回-1
*/
int fs_write(int fd,void * buf,int offset,int count,TCB* p_tcb)
{
	File_Desc*	p_fd;
	Inode*		p_inode;
	buf	= va2pa(p_tcb->pdb,buf);
	p_fd	= p_tcb->filp[fd];
	p_inode	= p_fd->fd_inode;
	//----------------------------------------------------------
	// 字符设备文件
	if(p_inode->i_mode == I_MODE_CHAR)
	{
		MSG 	msg;
		msg.type				= TTY_MSG_UNION;
		msg.msg_union.tty_msg.para		= DEV_WRITE;
		msg.msg_union.tty_msg.sub_device	= MINOR(p_inode->i_start_sect);
		msg.msg_union.tty_msg.req_buf		= buf;
		msg.msg_union.tty_msg.req_count	= count;
		disable_int();
		if(tty_has_msg_tmp == 0)
		{
			if(sendrecv(BOTH,dd_map[MAJAR(p_inode->i_start_sect)],&msg) == -1)
				msg.msg_union.tty_msg.req_count = -1;
			enable_int();
			return	msg.msg_union.tty_msg.req_count;
		}
		enable_int();
		return	-1;
	}
	//----------------------------------------------------------
	// 以下是普通文件
	int	cnt = file_buff_write(	buf,
					p_fd->fd_inode,
					offset + p_fd->fd_pos,
					count);
	assert(cnt != -1);
	p_fd->fd_pos	+= offset + cnt;
	return	cnt;
}
int	file_buff_write(void * buf,Inode* p_inode,int offset,int count)
{
	// 1、确定操作位置
	if(offset < 0 || offset >= FILE_MAX_SIZE)
	{
		printk("write pos out of file offset : %x\n",offset);
		return	-1;		// 位置超出范围
	}
	// 2、写入。在缓冲区中操作,如果文件不在缓冲区内,则先读入缓冲区
	int	buff_offset	= offset % BUFF_SIZE;	// 确定缓冲区中的操作位置
	int	buf_offset	= 0;			// 待写数据中的偏移
	int	cnt		= 0;			// 已写入字节数
	while(count > 0)
	{
		// 1、搜索待写文件是否在缓冲区,如果不在就将其读入缓冲区
		BUFF_HEAD*	p_bh	= scan_buff(p_inode,offset);
		if(p_bh == 0)
		{
			p_bh	= get_buff(p_inode,offset);	// 申请缓冲区
			if(p_bh == 0)	return	-1;	// 缓冲区用完
			read_buff(p_bh);			// 文件读入缓冲区
		}
		// 2、此时待写文件已经在缓冲区,在缓冲区中写入内容
		void*	buff_base		= p_bh->buff_base;		// 缓冲区地址
		int	buff_remin	= BUFF_SIZE - buff_offset;	// 缓冲区剩余字节数
		
		if(buff_remin >= count)		// 当前缓冲区能容纳所有剩余数据
		{
			memcopy(buff_base + buff_offset,buf + buf_offset,count);
			cnt += count;		// 剩余数据全部写入，然后返回
			p_bh->dirty	= 1;	// 文件缓冲“脏”标志
			return	cnt;
		}
		else				// 当前缓冲区不能容纳所有剩余数据
		{
			memcopy(buff_base + buff_offset,buf + buf_offset,buff_remin);
			buff_offset  = 0;		// 写满当前缓冲区后循环写下一个缓冲区
			buf_offset += buff_remin;
			count	 -= buff_remin;
			cnt	 += buff_remin;
			offset	 += buff_remin;
			p_bh->dirty	= 1;	// 文件缓冲“脏”标志
		}
	}
	return	0;	// 不可能到达这里
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：读文件
输入参数：进程指针	p_tcb
	文件fd	fd
	读缓冲	buf
	读大小	count	字节
输出参数：对于普通文件，输出实际读取字节数。
	对于字符设备：0 请求成功，-1 请求失败（有其他进程正在请求输入）
*/
int fs_read(int fd,void * buf,int offset,int count,TCB* p_tcb)
{
	File_Desc*	p_fd;
	Inode*		p_inode;
	buf	= va2pa(p_tcb->pdb,buf);
	p_fd	= p_tcb->filp[fd];
	p_inode	= p_fd->fd_inode;
	//----------------------------------------------------------
	// 字符设备文件
	if(p_inode->i_mode == I_MODE_CHAR)
	{
		MSG 	msg;
		msg.type				= TTY_MSG_UNION;
		msg.msg_union.tty_msg.para		= DEV_READ;
		msg.msg_union.tty_msg.sub_device	= MINOR(p_inode->i_start_sect);
		msg.msg_union.tty_msg.req_caller	= TASK_FS_PID;
		msg.msg_union.tty_msg.req_PID		= p_tcb - task_table;
		msg.msg_union.tty_msg.req_buf		= buf;
		msg.msg_union.tty_msg.req_count	= count;
		disable_int();
		if(tty_has_msg_tmp == 0)
		{
			if(sendrecv(SEND,dd_map[MAJAR(p_inode->i_start_sect)],&msg) == 0)
			{
				no_answer	= 1;	// 通知主循环将用户进程挂起
				enable_int();
				return	0;	// 0 消息发送成功
			}			// 请求是否成功在这里还不能判断，需要在主循环中收到tty发来的消息才知道
		}
		enable_int();
		return	-1;			// -1 发送消息失败（可能构成死锁）
	}
	//----------------------------------------------------------
	// 以下是普通文件
	int	cnt = file_buff_read(	buf,
					p_fd->fd_inode,
					offset + p_fd->fd_pos,
					count);
	assert(cnt != -1);
	p_fd->fd_pos	+= offset + cnt;
	return	cnt;
}
int	file_buff_read(void * buf,Inode* p_inode,int offset,int count)
{
	// 1、确定操作位置
	if(offset < 0 || offset >= FILE_MAX_SIZE)
	{
		printk("read pos out of file offset : %x\n",offset);
		return	-1;		// 位置超出范围
	}
	// 2、读取。在缓冲区中操作,如果文件不在缓冲区内,则先读入缓冲区
	int	buff_offset	= offset % BUFF_SIZE;	// 确定缓冲区中的操作位置
	int	buf_offset	= 0;			// 待读数据中的偏移
	int	cnt		= 0;			// 已读取字节数
	while(count > 0)
	{
		// 1、搜索待读文件是否在缓冲区,如果不在就将其读入缓冲区
		BUFF_HEAD*	p_bh	= scan_buff(p_inode,offset);
		if(p_bh == 0)
		{
			p_bh	= get_buff(p_inode,offset);	// 申请缓冲区
			if(p_bh == 0)	return	-1;	// 缓冲区用完
			read_buff(p_bh);			// 文件读入缓冲区
			//printk("111 i_num : %d  buff_base:%x    offset: %d \n",p_bh->p_inode->i_num,p_bh->buff_base,p_bh->offset);
		}
		// 2、此时待读文件已经在缓冲区,在缓冲区中读取内容
		void*	buff_base		= p_bh->buff_base;		// 缓冲区地址
		int	buff_remin	= BUFF_SIZE - buff_offset;	// 缓冲区剩余字节数
		
		if(buff_remin >= count)		// 当前缓冲区能容纳所有剩余数据
		{
			memcopy(buf + buf_offset,buff_base + buff_offset,count);
			cnt += count;		// 剩余数据全部读取，然后返回
			return	cnt;
		}
		else				// 当前缓冲区不能容纳所有剩余数据
		{
			memcopy(buf + buf_offset,buff_base + buff_offset,buff_remin);
			buff_offset  = 0;		// 读完当前缓冲区后循环读取下一个缓冲区
			buf_offset += buff_remin;
			count	 -= buff_remin;
			cnt	 += buff_remin;
			offset	 += buff_remin;
		}
	}
	return	0;	// 不可能到达这里
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：关闭文件
输入参数：进程指针	p_tcb
	文件fd	fd
输出参数：成功返回0，失败返回-1
*/
int fs_close(int fd,TCB* p_tcb)
{
	if(p_tcb->filp[fd]->fd_inode->i_cnt < 1)
	{
		printk("error! the file has not being open. fd: %d\n",fd);
		return	-1;
	}
	if(p_tcb->filp[fd]->fd_inode->i_cnt == 1)			// inode共享者计数为1,表示没有其他进程使用该文件
	{
		if(p_tcb->filp[fd]->fd_inode->i_mode == I_MODE_CHAR)	// 字符设备文件
		{
			MSG 	msg;
			msg.type				= TTY_MSG_UNION;
			msg.msg_union.tty_msg.para		= DEV_CLOSE;
			msg.msg_union.tty_msg.sub_device	= MINOR(p_tcb->filp[fd]->fd_inode->i_start_sect);
			disable_int();
			if(tty_has_msg_tmp == 0)
				assert(sendrecv(BOTH,dd_map[MAJAR(p_tcb->filp[fd]->fd_inode->i_start_sect)],&msg) == 0);
			enable_int();
		}
		else						// 普通文件。关闭普通文件之前要先“同步文件缓冲”
		{
			sync_buff(p_tcb->filp[fd]->fd_inode,0);		// 0:不释放缓冲	1：同步之后释放缓冲
		}
	}
	p_tcb->filp[fd]->fd_inode->i_cnt--;				// inode共享者计数减一。如果没有其他进程使用该文件，则计数变成0,表示释放inode
	p_tcb->filp[fd]->fd_inode = 0;				// 释放file_desc
	p_tcb->filp[fd] = 0;					// 释放filp
	return	0;
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：删除普通文件
输入参数：文件名	pathname
	删除方式	flags
输出参数：成功返回0，失败返回-1
*/
int fs_delete(char * pathname,int flags)
{
	DEV_Inode*	p_devinode;
	int		inode_nr;
	Inode*		p_inode;
	Dir_Entry*	p_de;
	int		i,j,k;
	
	// 读目录文件，获取Dir_Entry 和 inode_nr
	int	file_offset	= 0;
	int	de_nr		= 0;
	for(i = 0,inode_nr = 0;i < ROOT_SECTS;i++,file_offset += SECTOR_SIZE)
	{
		file_buff_read(fsbuf,p_inode_de,file_offset,SECTOR_SIZE);
		for(j = 0,p_de = (Dir_Entry*)fsbuf;j < DIR_ENT_PER_SECT;j++,p_de++)
		{
			if(strcmp(p_de->name,pathname) == 0)
			{
				inode_nr	= p_de->inode_nr;
				de_nr	+= j;
				break;
			}
		}
		if(inode_nr != 0)
			break;
		de_nr += DIR_ENT_PER_SECT;
	}
	// 目录中寻找结束
	if(inode_nr == 0)
	{
		printk("can not find the file for delete ! %s\n",pathname);
		return	-1;		// 待删除的文件不存在
	}
	if(inode_nr < 5)
	{
		printk("can not delete this file! %s\n",pathname);
		return	-1;		// 前4个文件不能删除。1:"." 2-4:tty0-tty2
	}
	// 检测inode_table中是否有inode_nr，如果没有，则表示没有进程在使用该文件，可以删除
	for(p_inode = inode_table;p_inode < inode_table + MAX_ALL_INODE;p_inode++)
	{
		if(p_inode->i_num == inode_nr && p_inode->i_cnt != 0)
		{
			printk("can not delete the file ! %s\n",pathname);
			return -1;	// 当前有进程在使用该文件，所以不能删除
		}
	}
	// 设备中释放imap,smap,Dir_Entry
	// imap
	int sect = IMAP_1ST_SECTS + inode_nr / 8 / SECTOR_SIZE;
	hd_read(ROOT_DEV,fsbuf,SECTOR_SIZE * sect,1);
	fsbuf[inode_nr / 8 % SECTOR_SIZE] &= (U8)~(1 << (inode_nr % 8)  );
	hd_write(ROOT_DEV,fsbuf,SECTOR_SIZE * sect,1);
	// smap
	sect = INODE_1ST_SECTS + inode_nr / INODE_PER_SECT;	// 获取devinode
	hd_read(ROOT_DEV,fsbuf,SECTOR_SIZE * sect,1);
	p_devinode = (DEV_Inode*)fsbuf;
	p_devinode += inode_nr % INODE_PER_SECT;
	int start_sect	= p_devinode->i_start_sect;
	int nr_sects	= p_devinode->i_nr_sects;
	
	i	= start_sect / 8 / SECTOR_SIZE;	// 所在扇区号
	j	= start_sect / 8 % SECTOR_SIZE;	// 扇区内字节号
	k	= start_sect % 8;			// 字内位号
	//printk("start_sect:%d,i:%d,j:%d,k:%d\n",start_sect + DAT_1ST_SECT,i,j,k);
	while(nr_sects > 0)				// 释放smap
	{
		hd_read(ROOT_DEV,fsbuf,SECTOR_SIZE * (i + SMAP_1ST_SECTS),1);
		while(j < SECTOR_SIZE && nr_sects >0)
		{
			if(8 - k >= nr_sects)		// 该字节内解决问题
			{
				while(nr_sects-- > 0)
				{
					fsbuf[j] &= (char)~(1 << k++);
				}
				break;
			}
			else				// 该字节内解决不了问题
			{
				if(k == 0)		// 全0
				{
					fsbuf[j] = 0;
					nr_sects -= 8;
				}
				else			// 非全0
				{
					while(k < 8)
					{
						fsbuf[j] &= (char)~(1 << k++);
						nr_sects--;
					}
				}
				j++;
				k = 0;
			}
		}
		//printk("i:%d,j:%d,k:%d\n",i,j,k);
		hd_write(ROOT_DEV,fsbuf,SECTOR_SIZE * (i + SMAP_1ST_SECTS),1);
		i++;
		j = 0;
	}
	// Dir_Entry
	Dir_Entry	de;
	de.inode_nr = 0;
	//printk("de_nr:%d  ",de_nr);
	file_buff_write(&de,p_inode_de,de_nr * sizeof(Dir_Entry),sizeof(Dir_Entry));
	sync_buff(p_inode_de,0);		// 0:不释放缓冲	1：同步之后释放缓冲
	// 成功返回0
	return	0;
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：设置文件操作位置
输入参数：文件fd	fd
	偏移	offset
	设置方式	flags	目前默认设置成绝对位置
	请求进程	p_tcb
输出参数：成功返回0，失败返回-1
*/
int	fs_do_lseek(int fd,int offset,int flags,TCB* p_tcb)
{
	assert(p_tcb->filp[fd] != 0);
	assert(p_tcb->filp[fd]->fd_inode->i_size > offset);
	p_tcb->filp[fd]->fd_pos	= offset;
	return	0;
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：MM的fork配套函数。用于为子进程建立新的filp
输入参数：子进程pid	cpid
输出参数：成功返回0，失败返回-1
*/
int fs_do_fork(int cpid)
{
	TCB*	p_tcb = task_table + cpid;
	int	i,j;
	
	for(i = 0,j = 0;i < MAX_TASK_FILE;i++)
	{
		if(p_tcb->filp[i] == 0)	continue;
		// 在file_table中找一个空位
		for(;j < MAX_ALL_FILE;j++)
		{
			if(file_table[j].fd_inode == 0)	break;
		}
		if(j >= MAX_ALL_FILE)	// 如果没找到空位，则释放之前占用的位置
		{
			while(--i >= 0)
			{
				if(p_tcb->filp[i] != 0)
					{
						p_tcb->filp[i]->fd_inode->i_cnt--;
						p_tcb->filp[i]->fd_inode = 0;
					}
			}
			return	-1;
		}
		// 将空位交给子进程
		file_table[j]	= *(p_tcb->filp[i]);
		p_tcb->filp[i]	= file_table + j;
		p_tcb->filp[i]->fd_inode->i_cnt++;
		j++;
	}
	return	0;
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：MM的exit配套函数。用于销毁子进程的filp
输入参数：子进程pid	cpid
输出参数：无
*/
void fs_do_exit(int cpid)
{
	TCB*	p_tcb	= cpid + task_table;
	int	fd;
	for(fd = 0;fd < MAX_TASK_FILE;fd++)
	{
		if(p_tcb->filp[fd] == 0)
			continue;
		assert(p_tcb->filp[fd]->fd_inode->i_cnt > 0);
		
		if(--p_tcb->filp[fd]->fd_inode->i_cnt == 0)	// inode共享者计数减一。如果没有其他进程使用该文件，则释放inode
		{
			if(p_tcb->filp[fd]->fd_inode->i_mode == I_MODE_CHAR)	// 字符设备文件
				{
					MSG 	msg;
					msg.type				= TTY_MSG_UNION;
					msg.msg_union.tty_msg.para		= DEV_CLOSE;
					msg.msg_union.tty_msg.sub_device	= MINOR(p_tcb->filp[fd]->fd_inode->i_start_sect);
					disable_int();
					if(tty_has_msg_tmp == 0)
						assert(sendrecv(BOTH,dd_map[MAJAR(p_tcb->filp[fd]->fd_inode->i_start_sect)],&msg) == 0);
					enable_int();
				}
		}
		p_tcb->filp[fd]->fd_inode = 0;	// 释放file_desc
	//	p_tcb->filp[fd] = 0;		// 释放filp
	}
}
//--------------------------------------------------------------------------------------------------*/



