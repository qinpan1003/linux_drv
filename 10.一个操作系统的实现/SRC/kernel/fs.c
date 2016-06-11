#include	"include.h"

int	no_answer;		// �������

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
// �ļ�ϵͳ��ѭ������
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
				src = p_fs_msg->flags;	// ����������Ľ���ID(������flags�����Ա����PID)
				assert(0 <= src && src < NR_TOTAL);
				break;			// p_fs_msg->count��-1 ����ʧ�ܣ����������������������룩������ֵ��ʾ�����ֽ���
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
			no_answer = 0;			// �����һ��tty���������
		else
			send(src,&msg);
//--------------------------------------------------------------------------------------------------*/
	}
}
//--------------------------------------------------------------------------------------------------*/
// �����ļ�ϵͳ
void fs_make(void)
{
	// ������
	Super_Block	sb;
	
	sb.magic			= MAGIC;			// ħ��
	sb.imap_1st_sects		= IMAP_1ST_SECTS;		// imap��һ��������
	sb.nr_inodes		= NR_INODES;		// inodes����
	sb.nr_imap_sects		= NR_IMAP_SECTS;		// inode-map ռ��������
	sb.smap_1st_sects		= SMAP_1ST_SECTS;		// smap��һ��������
	sb.nr_sects		= NR_SECTS;		// ��������
	sb.nr_smap_sects		= NR_SMAP_SECTS;		// sector-mapռ��������
	sb.inode_1st_sects		= INODE_1ST_SECTS;		// inode_array��һ��������
	sb.inode_size		= INODE_SIZE;		// inode ��С
	sb.inode_per_sect		= INODE_PER_SECT;		// ÿ���������ɵ�inode��
	sb.nr_inode_sects		= NR_INODE_SECTS;		// inodeռ��������
	sb.dat_1st_sect		= DAT_1ST_SECT;		// ��һ������������
	sb.dir_ent_size		= DIR_ENT_SIZE;		// dir_entry�Ĵ�С
	sb.dir_ent_inode_off	= DIR_ENT_INODE_OFF;	// dir_entry�ṹ��inode_nr��ƫ��
	sb.dir_ent_fname_off	= DIR_ENT_FNAME_OFF;	// dir_entry�ṹ��name��ƫ��
	sb.dir_ent_per_sect		= DIR_ENT_PER_SECT;		// ÿ��root���������ɵ�dir_entry��
	sb.root_sects		= ROOT_SECTS;		// rootռ��������
	sb.root_inode		= ROOT_INODE;		// root directory ��inode��
	sb.inode_isize_off		= INODE_ISEZE_OFF;		// inode�ṹ��i_size��ƫ��
	sb.inode_start_off		= INODE_START_OFF;		// inode�ṹ��i_start_sect��ƫ��
	
	printk("super block  lba: %x,sects: %x\n",1,1);
	printk("i_node map   lba: %x,sects: %x\n",IMAP_1ST_SECTS	,NR_IMAP_SECTS);
	printk("sector map   lba: %x,sects: %x\n",SMAP_1ST_SECTS	,NR_SMAP_SECTS);
	printk("inode_array  lba: %x,sects: %x\n",INODE_1ST_SECTS	,NR_INODE_SECTS);
	printk("data_root    lba: %x,sects: %x\n",DAT_1ST_SECT	,NR_SECTS);
	mset(fsbuf,0x11,SECTOR_SIZE * 1);
	memcopy(fsbuf,(char*)&sb,SUPER_BLOCK_SIZE);
	hd_write(ROOT_DEV,fsbuf,SECTOR_SIZE * 1,1);		// ��������ڵ� 1 ����������0��ʼ����
	//----------------------------------------------------------
	// imap
	int	i;
	for(i = 0;i < NR_IMAP_SECTS;i++)
	{
		mset(fsbuf,0,SECTOR_SIZE);
		if(i == 0)
			*fsbuf = 0x1f;			// 0��������1��root��2-4��tty0-tty2���ܹ�5λ	
		hd_write(ROOT_DEV,fsbuf,SECTOR_SIZE * ( IMAP_1ST_SECTS + i),1);
	}
	//----------------------------------------------------------
	// smap
	mset(fsbuf,0,SECTOR_SIZE * NR_SMAP_SECTS);
	int	j;
	for(i = 0 ;i < (ROOT_SECTS + 1) / 8;i++)		// 0����������ʱֻ��rootռ����Ӳ������	// +1 ����Ϊ��Ŀ¼���ӵ�1������ʼ(��0��ʼ��)
		fsbuf[i] = 0xff;
	for(j = 0 ;j < (ROOT_SECTS + 1) % 8;j++)
		fsbuf[i] |= 1 << j;
	hd_write(ROOT_DEV,fsbuf,SECTOR_SIZE * SMAP_1ST_SECTS,NR_SMAP_SECTS);
	
	int	ints	= (ROOT_SECTS + 1) / 32;		// ��4�ֽ�Ϊ��С��λ����
	int	bits	= (ROOT_SECTS + 1) % 32;
	for(i = 0;i < NR_SMAP_SECTS;i++)
	{
		mset(fsbuf,0,SECTOR_SIZE);
		int*	p_int = (int*)fsbuf;
		for(j = 0;j < SECTOR_SIZE / 4;j++,p_int++)	// ��4�ֽ�Ϊ��С��λ����
		{
			if(ints > 0)
			{
				*p_int	= 0xffffffff;
				ints--;
				continue;
			}
			// intsΪ0ʱ,����������е�����
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
	DEV_Inode* p_inode = (DEV_Inode*)fsbuf;		// 0��������1��root��2-4��tty0-tty2���ܹ�5��
	mset(fsbuf,0,SECTOR_SIZE);
	p_inode++;				// 0������
	p_inode->i_mode		= I_MODE_ROOT;	// 1:root
	p_inode->i_size		= SECTOR_SIZE * ROOT_SECTS;
	p_inode->i_start_sect	= 1;
	p_inode->i_nr_sects		= ROOT_SECTS;
	p_inode++;
	for(i = 0 ;i < NR_TTY ;i++,p_inode++)		// 2-4:tty
	{
		p_inode->i_mode		= I_MODE_CHAR;
		p_inode->i_size		= 0;
		p_inode->i_start_sect	= DEVICE(MAJAR_TTY,i);	// ��Ϊtty���豸��
		p_inode->i_nr_sects		= 0;
	}
	hd_write(ROOT_DEV,fsbuf,SECTOR_SIZE * INODE_1ST_SECTS,1);
	//----------------------------------------------------------
	// root(dir_entry)				0:������".",tty0-tty2���ܹ�5��
	Dir_Entry* p_dir;
	for(i = 0;i < ROOT_SECTS;i++)			// ���������
	{
		p_dir = (Dir_Entry*)fsbuf;
		for(j = 0;j < DIR_ENT_PER_SECT;j++,p_dir++)
			p_dir->inode_nr = 0;
		hd_write(ROOT_DEV,fsbuf,SECTOR_SIZE * (DAT_1ST_SECT + 1 + i),1);	// +1 ����Ϊ��Ŀ¼���ӵ�1������ʼ(��0��ʼ��)
	}
	p_dir = (Dir_Entry*)fsbuf;
	p_dir++;					// 0:����
	p_dir->inode_nr	= 1;			// 1:"."	root
	memcopy(p_dir->name,".",2);
	p_dir++;
	for(i = 0;i < NR_TTY;i++,p_dir++)		// tty
	{
		p_dir->inode_nr	= 2 + i;
		memcopy(p_dir->name,"tty0",5);
		p_dir->name[3] = '0' + i;
	}
	hd_write(ROOT_DEV,fsbuf,SECTOR_SIZE * (DAT_1ST_SECT + 1),1);		// +1 ����Ϊ��Ŀ¼���ӵ�1������ʼ(��0��ʼ��)
}
//--------------------------------------------------------------------------------------------------*/
// �ļ�ϵͳ��ʼ��
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
		fs_make();	// ֻ�ڽ����ļ�ϵͳ��ʱ����ã�����֮��Ḳ��֮ǰ���ļ�ϵͳ
	
	hd_read(ROOT_DEV,fsbuf,SECTOR_SIZE * INODE_1ST_SECTS,1);	// ��ȡĿ¼inode
	DEV_Inode*	p_devinode	= (DEV_Inode*)fsbuf;
	inode_table[0]		= *(Inode*)(p_devinode + 1);	// inode_table��0��Ԫ�����ڴ��Ŀ¼inode
	inode_table[0].i_dev	= ROOT_DEV;
	inode_table[0].i_cnt	= 1;
	inode_table[0].i_num	= 1;
	p_inode_de		= inode_table;
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ�������ͨ�ļ�
����������ļ���	pathname
���������0 ����ʧ�ܣ���0 ���ļ����豸�е�inode_nr
*/
int create_file(char * pathname)
{
	int		inode_nr = 0;
	int		start_sect = 0;
	int		i,j,k;
	// ��imap����һ����λ
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
				{	// ��ʱ��i��������j�ֽڣ���kλΪ���ҵĿ�λ
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
		return	0;	// û�п�λ
	}
	// ��smap���� inode_nr��Ӧ�� SECTS_PER_FILE ��������λ��Ȼ��ȫ����1
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
				{	// ��ʱ��i��������j�ֽڣ���kλΪ���ҵĿ�λ
					//printk("i:%d j:%d k:%d\n",i,j,k);
					start_sect = SECTOR_SIZE * i * 8 + j * 8 + k;
					int nr_sects = SECTS_PER_FILE;
					while(nr_sects > 0)				// ���smap
					{
						hd_read(ROOT_DEV,fsbuf,SECTOR_SIZE * (i + SMAP_1ST_SECTS),1);
						while(j < SECTOR_SIZE && nr_sects >0)
						{
							if(8 - k >= nr_sects)		// ���ֽ��ڽ������
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
							else				// ���ֽ��ڽ����������
							{
								if(k == 0)		// ȫ1
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
								else			// ��ȫ1
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
		return	0;	// û�п�λ	
	}
	// devinode��ֵ
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
	// ��root����һ����λ
	Dir_Entry*	p_de;
	int	file_offset	= 0;
	int	de_nr		= 0;
	for(i = 0;i < ROOT_SECTS;i++,file_offset += SECTOR_SIZE)
	{
		file_buff_read(fsbuf,p_inode_de,file_offset,SECTOR_SIZE);
		for(j = 0,p_de = (Dir_Entry*)fsbuf;j < DIR_ENT_PER_SECT;j++,p_de++)
		{
			if(p_de->inode_nr == 0 && (i !=0 || j != 0))	// ��0��λ�ñ���
			{
				de_nr	+= j;
				//printk("de_nr:%d  ",de_nr);
				Dir_Entry	de;
				de.inode_nr = inode_nr;
				memcopy(de.name,pathname,MAX_FILENAME_LEN);
				file_buff_write(&de,p_inode_de,de_nr * sizeof(Dir_Entry),sizeof(Dir_Entry));
				sync_buff(p_inode_de,0);		// 0:���ͷŻ���	1��ͬ��֮���ͷŻ���
				
				// ����inode_nr
				printk("create file success: %s\n",pathname);
				return inode_nr;	// ����inode_nr	0��ʧ�ܣ���0���ɹ�
			}
		}
		de_nr += DIR_ENT_PER_SECT;
	}
	printk("Dir_Entry empty\n");
	return	0;	// û���ҵ�Dir_Entry
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ����ļ�
����������ļ���	pathname
	�򿪷�ʽ	flags
	����ָ��	p_tcb
����������ɹ����ؽ���filp�е�fd�±꣬ʧ�ܷ���-1
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
	
	// ��Ŀ¼�ļ�,Ѱ��pathname,�����inode_nr
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
	// Ŀ¼��Ѱ�ҽ���
	if(inode_nr == 0)				// û�ҵ�dev_inode
	{
		if(flags == O_CREATE)
		{
			// ����Ӧ���жϴ������򿪵��Ƿ�����ͨ�ļ�
			inode_nr = create_file(pathname);
			if(inode_nr == 0)
			{
				printk("create_file error! %s\n",pathname);
				return	-1;	// �����ļ�ʧ��
			}
		}
		else
		{
			printk("no file : %s\n",pathname);
			return	-1;		// û���ҵ���Ҳû�д����ļ�
		}
	}
	//printk("file : %s   inode_nr : %d\n",pathname,inode_nr);
	// �ҵ���dev_inode���inode_nr
	// �鿴�ڴ����inode_table���Ƿ���ڸ�inode
	int	i_dev = ROOT_DEV;
	Inode*	p_inode_empty = 0;
	Inode*	p_inode_empty1 = 0;
	for(p_inode = inode_table;p_inode < inode_table + MAX_ALL_INODE;p_inode++)
	{
		if(p_inode->i_cnt == 0)
		{
			if(p_inode_empty == 0)
				p_inode_empty = p_inode;	// ��һ����λ
			
			if(p_inode_empty1 == 0 && p_inode->i_dev == 0 && p_inode->i_num == 0)
				p_inode_empty1 = p_inode;	// ��һ����δ��ʹ�ù��Ŀ�λ
		}
		if(p_inode->i_dev != i_dev)		continue;
		if(p_inode->i_num != inode_nr)	continue;
		break;
	}
	int	new_inode	= 0;
	if(p_inode >= inode_table + MAX_ALL_INODE)		// ����inode_table���Ҫ�ֶ����
	{	// ��inode_table��Ѱ��һ����λ
		if(p_inode_empty1 != 0)
		{
			p_inode		= p_inode_empty1;
		}
		else
		{
			if(p_inode_empty == 0)
			{
				printk("inode_table full : %s----",pathname);
				return	-1;	// inode_table�޿�λ
			}
			p_inode		= p_inode_empty;
		}
		
		new_inode		= 1;	// �����жϸ�inode�Ƿ�������ӵ�
	}
	// ��ʱp_inode��i_dev i_num��ȷ,����i_cnt������0�����������ҵ���inode���������ڱ��������̹����,Ҳ�����Ǳ��������̷�����
	// ��file_table��Ѱ��һ����λ
	for(p_fd = file_table;p_fd < file_table + MAX_ALL_FILE;p_fd++)
	{
		if(p_fd->fd_inode == 0)
			break;
	}
	//printk(" p_fd : %d   \n",p_fd - file_table);
	if(p_fd >= file_table + MAX_ALL_FILE)
	{
		printk("file_table full : %s----",pathname);
		return	-1;	// file_table�޿�λ
	}
	// �ڽ���filp������Ѱ��һ����λ
	for(i = 0;i < MAX_TASK_FILE;i++)
	{
		if(p_tcb->filp[i] == 0)
			break;
	}
	if(i >= MAX_TASK_FILE)
	{
		printk("filp full : %s----",pathname);
		return	-1;	// filp�޿�λ
	}
	// ����λ��Ϣ
	p_tcb->filp[i]		= p_fd;
	
	p_fd->fd_mode		= RD_WR;
	p_fd->fd_pos		= 0;
	p_fd->fd_inode		= p_inode;
	p_inode->i_cnt++;
	if(new_inode == 1)		// ����ӵ�inode����Ҫ��ֵ
	{
		//printk("new inode : %d\n",inode_nr);
		// ��ȡdev_inodeָ��
		hd_read(ROOT_DEV,fsbuf,SECTOR_SIZE * (INODE_1ST_SECTS + inode_nr  / INODE_PER_SECT),1);
		p_devinode = (DEV_Inode*)fsbuf;
		p_devinode += inode_nr % INODE_PER_SECT;
		// ��ֵ
		p_inode->i_mode		= p_devinode->i_mode;
		p_inode->i_size		= p_devinode->i_size;
		p_inode->i_start_sect	= p_devinode->i_start_sect;
		p_inode->i_nr_sects		= p_devinode->i_nr_sects;
		p_inode->i_dev		= ROOT_DEV;
		p_inode->i_num		= inode_nr;
	}
	// ����filp�е��±�
	//printk("file open : %s  ----",pathname);
	if(p_inode->i_mode == I_MODE_CHAR)			// �ַ��豸�ļ�
	{
		MSG 	msg;
		msg.type				= TTY_MSG_UNION;
		msg.msg_union.tty_msg.para		= DEV_OPEN;
		msg.msg_union.tty_msg.sub_device	= MINOR(p_inode->i_start_sect);	// �ַ��豸��i_start_sect���豸��
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
�������ܣ�д�ļ�
�������������ָ��	p_tcb
	�ļ�fd	fd
	д����	buf
	д��С	count	�ֽ�
����������ɹ�����ʵ��д���ֽ�����ʧ�ܷ���-1
*/
int fs_write(int fd,void * buf,int offset,int count,TCB* p_tcb)
{
	File_Desc*	p_fd;
	Inode*		p_inode;
	buf	= va2pa(p_tcb->pdb,buf);
	p_fd	= p_tcb->filp[fd];
	p_inode	= p_fd->fd_inode;
	//----------------------------------------------------------
	// �ַ��豸�ļ�
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
	// ��������ͨ�ļ�
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
	// 1��ȷ������λ��
	if(offset < 0 || offset >= FILE_MAX_SIZE)
	{
		printk("write pos out of file offset : %x\n",offset);
		return	-1;		// λ�ó�����Χ
	}
	// 2��д�롣�ڻ������в���,����ļ����ڻ�������,���ȶ��뻺����
	int	buff_offset	= offset % BUFF_SIZE;	// ȷ���������еĲ���λ��
	int	buf_offset	= 0;			// ��д�����е�ƫ��
	int	cnt		= 0;			// ��д���ֽ���
	while(count > 0)
	{
		// 1��������д�ļ��Ƿ��ڻ�����,������ھͽ�����뻺����
		BUFF_HEAD*	p_bh	= scan_buff(p_inode,offset);
		if(p_bh == 0)
		{
			p_bh	= get_buff(p_inode,offset);	// ���뻺����
			if(p_bh == 0)	return	-1;	// ����������
			read_buff(p_bh);			// �ļ����뻺����
		}
		// 2����ʱ��д�ļ��Ѿ��ڻ�����,�ڻ�������д������
		void*	buff_base		= p_bh->buff_base;		// ��������ַ
		int	buff_remin	= BUFF_SIZE - buff_offset;	// ������ʣ���ֽ���
		
		if(buff_remin >= count)		// ��ǰ����������������ʣ������
		{
			memcopy(buff_base + buff_offset,buf + buf_offset,count);
			cnt += count;		// ʣ������ȫ��д�룬Ȼ�󷵻�
			p_bh->dirty	= 1;	// �ļ����塰�ࡱ��־
			return	cnt;
		}
		else				// ��ǰ������������������ʣ������
		{
			memcopy(buff_base + buff_offset,buf + buf_offset,buff_remin);
			buff_offset  = 0;		// д����ǰ��������ѭ��д��һ��������
			buf_offset += buff_remin;
			count	 -= buff_remin;
			cnt	 += buff_remin;
			offset	 += buff_remin;
			p_bh->dirty	= 1;	// �ļ����塰�ࡱ��־
		}
	}
	return	0;	// �����ܵ�������
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ����ļ�
�������������ָ��	p_tcb
	�ļ�fd	fd
	������	buf
	����С	count	�ֽ�
���������������ͨ�ļ������ʵ�ʶ�ȡ�ֽ�����
	�����ַ��豸��0 ����ɹ���-1 ����ʧ�ܣ����������������������룩
*/
int fs_read(int fd,void * buf,int offset,int count,TCB* p_tcb)
{
	File_Desc*	p_fd;
	Inode*		p_inode;
	buf	= va2pa(p_tcb->pdb,buf);
	p_fd	= p_tcb->filp[fd];
	p_inode	= p_fd->fd_inode;
	//----------------------------------------------------------
	// �ַ��豸�ļ�
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
				no_answer	= 1;	// ֪ͨ��ѭ�����û����̹���
				enable_int();
				return	0;	// 0 ��Ϣ���ͳɹ�
			}			// �����Ƿ�ɹ������ﻹ�����жϣ���Ҫ����ѭ�����յ�tty��������Ϣ��֪��
		}
		enable_int();
		return	-1;			// -1 ������Ϣʧ�ܣ����ܹ���������
	}
	//----------------------------------------------------------
	// ��������ͨ�ļ�
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
	// 1��ȷ������λ��
	if(offset < 0 || offset >= FILE_MAX_SIZE)
	{
		printk("read pos out of file offset : %x\n",offset);
		return	-1;		// λ�ó�����Χ
	}
	// 2����ȡ���ڻ������в���,����ļ����ڻ�������,���ȶ��뻺����
	int	buff_offset	= offset % BUFF_SIZE;	// ȷ���������еĲ���λ��
	int	buf_offset	= 0;			// ���������е�ƫ��
	int	cnt		= 0;			// �Ѷ�ȡ�ֽ���
	while(count > 0)
	{
		// 1�����������ļ��Ƿ��ڻ�����,������ھͽ�����뻺����
		BUFF_HEAD*	p_bh	= scan_buff(p_inode,offset);
		if(p_bh == 0)
		{
			p_bh	= get_buff(p_inode,offset);	// ���뻺����
			if(p_bh == 0)	return	-1;	// ����������
			read_buff(p_bh);			// �ļ����뻺����
			//printk("111 i_num : %d  buff_base:%x    offset: %d \n",p_bh->p_inode->i_num,p_bh->buff_base,p_bh->offset);
		}
		// 2����ʱ�����ļ��Ѿ��ڻ�����,�ڻ������ж�ȡ����
		void*	buff_base		= p_bh->buff_base;		// ��������ַ
		int	buff_remin	= BUFF_SIZE - buff_offset;	// ������ʣ���ֽ���
		
		if(buff_remin >= count)		// ��ǰ����������������ʣ������
		{
			memcopy(buf + buf_offset,buff_base + buff_offset,count);
			cnt += count;		// ʣ������ȫ����ȡ��Ȼ�󷵻�
			return	cnt;
		}
		else				// ��ǰ������������������ʣ������
		{
			memcopy(buf + buf_offset,buff_base + buff_offset,buff_remin);
			buff_offset  = 0;		// ���굱ǰ��������ѭ����ȡ��һ��������
			buf_offset += buff_remin;
			count	 -= buff_remin;
			cnt	 += buff_remin;
			offset	 += buff_remin;
		}
	}
	return	0;	// �����ܵ�������
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ��ر��ļ�
�������������ָ��	p_tcb
	�ļ�fd	fd
����������ɹ�����0��ʧ�ܷ���-1
*/
int fs_close(int fd,TCB* p_tcb)
{
	if(p_tcb->filp[fd]->fd_inode->i_cnt < 1)
	{
		printk("error! the file has not being open. fd: %d\n",fd);
		return	-1;
	}
	if(p_tcb->filp[fd]->fd_inode->i_cnt == 1)			// inode�����߼���Ϊ1,��ʾû����������ʹ�ø��ļ�
	{
		if(p_tcb->filp[fd]->fd_inode->i_mode == I_MODE_CHAR)	// �ַ��豸�ļ�
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
		else						// ��ͨ�ļ����ر���ͨ�ļ�֮ǰҪ�ȡ�ͬ���ļ����塱
		{
			sync_buff(p_tcb->filp[fd]->fd_inode,0);		// 0:���ͷŻ���	1��ͬ��֮���ͷŻ���
		}
	}
	p_tcb->filp[fd]->fd_inode->i_cnt--;				// inode�����߼�����һ�����û����������ʹ�ø��ļ�����������0,��ʾ�ͷ�inode
	p_tcb->filp[fd]->fd_inode = 0;				// �ͷ�file_desc
	p_tcb->filp[fd] = 0;					// �ͷ�filp
	return	0;
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ�ɾ����ͨ�ļ�
����������ļ���	pathname
	ɾ����ʽ	flags
����������ɹ�����0��ʧ�ܷ���-1
*/
int fs_delete(char * pathname,int flags)
{
	DEV_Inode*	p_devinode;
	int		inode_nr;
	Inode*		p_inode;
	Dir_Entry*	p_de;
	int		i,j,k;
	
	// ��Ŀ¼�ļ�����ȡDir_Entry �� inode_nr
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
	// Ŀ¼��Ѱ�ҽ���
	if(inode_nr == 0)
	{
		printk("can not find the file for delete ! %s\n",pathname);
		return	-1;		// ��ɾ�����ļ�������
	}
	if(inode_nr < 5)
	{
		printk("can not delete this file! %s\n",pathname);
		return	-1;		// ǰ4���ļ�����ɾ����1:"." 2-4:tty0-tty2
	}
	// ���inode_table���Ƿ���inode_nr�����û�У����ʾû�н�����ʹ�ø��ļ�������ɾ��
	for(p_inode = inode_table;p_inode < inode_table + MAX_ALL_INODE;p_inode++)
	{
		if(p_inode->i_num == inode_nr && p_inode->i_cnt != 0)
		{
			printk("can not delete the file ! %s\n",pathname);
			return -1;	// ��ǰ�н�����ʹ�ø��ļ������Բ���ɾ��
		}
	}
	// �豸���ͷ�imap,smap,Dir_Entry
	// imap
	int sect = IMAP_1ST_SECTS + inode_nr / 8 / SECTOR_SIZE;
	hd_read(ROOT_DEV,fsbuf,SECTOR_SIZE * sect,1);
	fsbuf[inode_nr / 8 % SECTOR_SIZE] &= (U8)~(1 << (inode_nr % 8)  );
	hd_write(ROOT_DEV,fsbuf,SECTOR_SIZE * sect,1);
	// smap
	sect = INODE_1ST_SECTS + inode_nr / INODE_PER_SECT;	// ��ȡdevinode
	hd_read(ROOT_DEV,fsbuf,SECTOR_SIZE * sect,1);
	p_devinode = (DEV_Inode*)fsbuf;
	p_devinode += inode_nr % INODE_PER_SECT;
	int start_sect	= p_devinode->i_start_sect;
	int nr_sects	= p_devinode->i_nr_sects;
	
	i	= start_sect / 8 / SECTOR_SIZE;	// ����������
	j	= start_sect / 8 % SECTOR_SIZE;	// �������ֽں�
	k	= start_sect % 8;			// ����λ��
	//printk("start_sect:%d,i:%d,j:%d,k:%d\n",start_sect + DAT_1ST_SECT,i,j,k);
	while(nr_sects > 0)				// �ͷ�smap
	{
		hd_read(ROOT_DEV,fsbuf,SECTOR_SIZE * (i + SMAP_1ST_SECTS),1);
		while(j < SECTOR_SIZE && nr_sects >0)
		{
			if(8 - k >= nr_sects)		// ���ֽ��ڽ������
			{
				while(nr_sects-- > 0)
				{
					fsbuf[j] &= (char)~(1 << k++);
				}
				break;
			}
			else				// ���ֽ��ڽ����������
			{
				if(k == 0)		// ȫ0
				{
					fsbuf[j] = 0;
					nr_sects -= 8;
				}
				else			// ��ȫ0
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
	sync_buff(p_inode_de,0);		// 0:���ͷŻ���	1��ͬ��֮���ͷŻ���
	// �ɹ�����0
	return	0;
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ������ļ�����λ��
����������ļ�fd	fd
	ƫ��	offset
	���÷�ʽ	flags	ĿǰĬ�����óɾ���λ��
	�������	p_tcb
����������ɹ�����0��ʧ�ܷ���-1
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
�������ܣ�MM��fork���׺���������Ϊ�ӽ��̽����µ�filp
����������ӽ���pid	cpid
����������ɹ�����0��ʧ�ܷ���-1
*/
int fs_do_fork(int cpid)
{
	TCB*	p_tcb = task_table + cpid;
	int	i,j;
	
	for(i = 0,j = 0;i < MAX_TASK_FILE;i++)
	{
		if(p_tcb->filp[i] == 0)	continue;
		// ��file_table����һ����λ
		for(;j < MAX_ALL_FILE;j++)
		{
			if(file_table[j].fd_inode == 0)	break;
		}
		if(j >= MAX_ALL_FILE)	// ���û�ҵ���λ�����ͷ�֮ǰռ�õ�λ��
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
		// ����λ�����ӽ���
		file_table[j]	= *(p_tcb->filp[i]);
		p_tcb->filp[i]	= file_table + j;
		p_tcb->filp[i]->fd_inode->i_cnt++;
		j++;
	}
	return	0;
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ�MM��exit���׺��������������ӽ��̵�filp
����������ӽ���pid	cpid
�����������
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
		
		if(--p_tcb->filp[fd]->fd_inode->i_cnt == 0)	// inode�����߼�����һ�����û����������ʹ�ø��ļ������ͷ�inode
		{
			if(p_tcb->filp[fd]->fd_inode->i_mode == I_MODE_CHAR)	// �ַ��豸�ļ�
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
		p_tcb->filp[fd]->fd_inode = 0;	// �ͷ�file_desc
	//	p_tcb->filp[fd] = 0;		// �ͷ�filp
	}
}
//--------------------------------------------------------------------------------------------------*/



