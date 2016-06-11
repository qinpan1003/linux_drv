#include	"include.h"
//--------------------------------------------------------------------------------------------------*/
// 
void task_hd(void * pdata)
{
	MSG msg;
	HD_MSG* p_hd_msg;
	pdata = pdata;
	while(1)
	{
//--------------------------------------------------------------------------------------------------*/
//
		assert(	sendrecv(RECV,ANY,&msg) == 0	);
		assert(	msg.type == HD_MSG_UNION	);
		p_hd_msg = &msg.msg_union.hd_msg;
		
		while(task_table[msg.sender].t_stat != RECVING);	// 因为进程调用fork时使用的sendrecv是BOTH选项,所以此时进程的状态很可能是READY,
		assert(task_table[msg.sender].t_stat == RECVING);	// 需要等进程下次执行进入RECVING才能继续操作
		assert(task_table[msg.sender].recvfrom == TASK_HD_PID);
		
		switch(p_hd_msg->para)
		{
			case DEV_OPEN:	// 打开设备
				_hd_identify(p_hd_msg->device);
				break;
			case DEV_CLOSE:	// 关闭设备
				_hd_close(p_hd_msg->device);
				break;
			case DEV_READ:	// 读数据
			//	printk("\nI am here0 sectors:%d\n",p_hd_msg->sectors);
				p_hd_msg->sectors = _hd_readwrite(DEV_READ,p_hd_msg->buf,(U16)p_hd_msg->device,p_hd_msg->sectors,p_hd_msg->fst_lba);
				break;
			case DEV_WRITE:	// 写数据
				p_hd_msg->sectors = _hd_readwrite(DEV_WRITE,p_hd_msg->buf,(U16)p_hd_msg->device,p_hd_msg->sectors,p_hd_msg->fst_lba);
				break;
			case DEV_IOCTL:	// IO控制
				_hd_ioctl();
				break;
			default:	break;
		}
		assert(	sendrecv(SEND,msg.sender,&msg) == 0	);
//--------------------------------------------------------------------------------------------------*/
	}
}
//--------------------------------------------------------------------------------------------------*/
// 硬盘初始化
void init_hd(void)
{
	HD_INFO*	p_hd_info;
	int i;
	nr_hd_driver = *(char *)0x475;	// 这个地址由BIOS确定
	for(p_hd_info = hd_info;p_hd_info < hd_info + NR_DRIVERS; p_hd_info++)
	{
		p_hd_info->open_cnt = 0;	// 硬盘打开次数
		p_hd_info->nr_prim	= 0;	// 主分区数
		p_hd_info->nr_ext	= 0;	// 扩展分区数
		p_hd_info->nr_log	= 0;	// 逻辑分区数
		for(i = 0;i < PRIM_PER_DRIVER;i++)
		{
			p_hd_info->primary[i].part = PART_NULL;
			p_hd_info->primary[i].lba  = 0;
			p_hd_info->primary[i].sectors = 0;
			p_hd_info->primary[i].base = 0;
			p_hd_info->primary[i].size = 0;
		}
		for(i = 0;i < SUB_PER_DRIVER;i++)
		{
			p_hd_info->logic[i].part = PART_NULL;
			p_hd_info->logic[i].lba  = 0;
			p_hd_info->logic[i].sectors = 0;
			p_hd_info->logic[i].base = 0;
			p_hd_info->logic[i].size = 0;
		}
	}
}
//--------------------------------------------------------------------------------------------------*/
// 硬盘中断
void hd_handler(void)
{
	//printk("--------hd_handler----------\n");
	// 读状态寄存器，恢复中断响应
	in_byte(HD_COMMAND);
	// 中断消息处理
	int_send(task_table + TASK_HD_PID);
}
//--------------------------------------------------------------------------------------------------*/
// 用户级函数
// 打开硬盘
void hd_open(U16 device)
{
	MSG msg;
	msg.type			= HD_MSG_UNION;
	msg.msg_union.hd_msg.para	= DEV_OPEN;
	msg.msg_union.hd_msg.device	= device;
	printk("Open device: %x\n",device);
	assert(	sendrecv(BOTH,TASK_HD_PID,&msg) == 0	);
}
//--------------------------------------------------------------------------------------------------*/
/*
功    能：关闭设备
输入参数：无
输出参数：无
*/
void hd_close(U16 device)
{
	MSG msg;
	msg.type			= HD_MSG_UNION;
	msg.msg_union.hd_msg.para	= DEV_CLOSE;
	msg.msg_union.hd_msg.device	= device;
	printk("Close device: %x\n",device);
	assert(	sendrecv(BOTH,TASK_HD_PID,&msg) == 0	);
}
//--------------------------------------------------------------------------------------------------*/
/*
功    能：读数据
输入参数：设备号		device
	数据缓冲区	buf
	数据在设备的偏移	offset
	读取扇区数	sectors
输出参数：实际读取扇区数
*/
U32 hd_read(U16 device,char * buf,U32 offset,U32 sectors)
{
	MSG msg;
	msg.type			= HD_MSG_UNION;
	msg.msg_union.hd_msg.para	= DEV_READ;
	msg.msg_union.hd_msg.device	= device;
	msg.msg_union.hd_msg.buf	= buf;
	msg.msg_union.hd_msg.fst_lba	= offset / SECTOR_SIZE;
	msg.msg_union.hd_msg.sectors	= sectors;
//	printk("Read device: %x buf: %x offset: %x sectors: %d\n",device,(int)buf,offset,sectors);
	assert(	sendrecv(BOTH,TASK_HD_PID,&msg) == 0	);
//	printk("--------I---------");
	return	msg.msg_union.hd_msg.sectors;
}
//--------------------------------------------------------------------------------------------------*/
/*
功    能：写数据
输入参数：设备号		device
	数据缓冲区	buf
	数据在设备的偏移	offset
	写入扇区数	sectors
输出参数：实际写入扇区数
*/
U32 hd_write(U16 device,char * buf,U32 offset,U32 sectors)
{
	MSG msg;
	msg.type			= HD_MSG_UNION;
	msg.msg_union.hd_msg.para	= DEV_WRITE;
	msg.msg_union.hd_msg.device	= device;
	msg.msg_union.hd_msg.buf	= buf;
	msg.msg_union.hd_msg.fst_lba	= offset / SECTOR_SIZE;
	msg.msg_union.hd_msg.sectors	= sectors;
	//printk("Write device: %x buf: %x offset: %x sectors: %d\n",device,(int)buf,offset,sectors);
	assert(	sendrecv(BOTH,TASK_HD_PID,&msg) == 0	);
	return	msg.msg_union.hd_msg.sectors;
}
//--------------------------------------------------------------------------------------------------*/
/*
功    能：IO控制
输入参数：无
输出参数：无
*/
void hd_ioctl(U16 device)
{
	MSG msg;
	msg.type			= HD_MSG_UNION;
	msg.msg_union.hd_msg.para	= DEV_IOCTL;
	msg.msg_union.hd_msg.device	= device;
	printk("IO ctl device: %x\n",device);
	assert(	sendrecv(BOTH,TASK_HD_PID,&msg) == 0);
}
//--------------------------------------------------------------------------------------------------*/
// 系统级函数
// 等待硬盘空闲
int waitfor(int mask,int val,int timeout)
{
	int t = get_ticks();
	while(get_ticks() - t < timeout)
		if((in_byte(HD_COMMAND) & mask) == val)
			return 0;
	return -1;
}
// 发送hd命令
void hd_cmd_out(HD_CMD * p_hm)
{
	// Check Busy
	if(waitfor(HD_BUSY,0,HD_TIMEOUT) == -1)
		{
			printk("\n----------hd error!-----------\n");
			while(1);
		}
	// 开启中断
	out_byte(HD_DEVICE_CTL	,0);
	// 写入参数
	out_byte(HD_FEATURES	,p_hm->features);
	out_byte(HD_SECTOR_COUNT	,p_hm->count);
	out_byte(HD_LBA_LOW		,p_hm->lba_low);
	out_byte(HD_LBA_MID		,p_hm->lba_mid);
	out_byte(HD_LBA_HIGH	,p_hm->lba_high);
	out_byte(HD_DEVICE		,p_hm->device);
	// 发送命令
	out_byte(HD_COMMAND		,p_hm->command);
}
//--------------------------------------------------------------------------------------------------*/
// 硬盘端口数据读取
int port_read(U16 port,U16 * buf,int size)	// 注意：size以字为单位
{	
	while(size-- >0 )
		*buf++ = (U16)in_word(port);
	return	0;
}
//--------------------------------------------------------------------------------------------------*/
// 硬盘端口数据写入
int port_write(U16 port,U16 * buf,int size)	// 注意：size以字为单位
{	
	while(size-- >0 )
		 out_word(port,*buf++);
	return	0;
}
//--------------------------------------------------------------------------------------------------*/
// 硬盘识别
void print_identify_info(U16 * buf)
{
	int i,k;
	char s[64];
	struct iden_info_ascii
	{
		int idx;
		int len;
		char * desc;
	}iinfo[]={
		{10,20,"HD SN"},
		{27,40,"HD Model"}
			};
	for(k=0;k<sizeof(iinfo)/sizeof(iinfo[0]);k++)
	{
		char * p = (char*)&buf[iinfo[k].idx];
		for(i=0;i<iinfo[k].len/2;i++)
		{
			s[i*2 +1] = *p++;
			s[i*2]	= *p++;
		}
		s[i*2] = 0;
		printk("%s: %s\n",iinfo[k].desc,s);
	}
	int capabilities = buf[49];
	printk("LBA supported: %s\n",(capabilities & 0x0200)?"Yes":"No");
	
	int cmd_set_supported = buf[83];
	printk("LBA48 supported: %s\n",(cmd_set_supported & 0x0400)?"Yes":"No");
	
	int sectors = ((int)buf[61] << 16) + buf[60];
	printk("HD size: %dMB\n",sectors * 512 /1000000);
}
//--------------------------------------------------------------------------------------------------*/
// 获取硬盘分区信息
// 输入参数：硬盘驱动器号driver
// 输出参数：无
void partion(U8 driver)
{
	HD_INFO*		p_hd_info = hd_info + driver;
	HD_CMD		cmd;
	PART_TABLE*	p_part_table;
	int		i;
	// 获取主引导扇区指定的主分区、扩展分区
	cmd.count		= 1;
	cmd.lba_low	= 0;
	cmd.lba_mid	= 0;
	cmd.lba_high	= 0;
	cmd.device	= MAKE_DEVICE(1,driver,0);	// lba = 1,dvr = driver,lba_high = 0
	cmd.command	= HD_READ;
	
	hd_cmd_out(&cmd);
	interrupt_wait();
	port_read(HD_DATA,(U16*)hdbuf,SECTOR_SIZE / 2);
	
	p_part_table = (PART_TABLE*)((int)hdbuf + 0x1be);
	for(i = 1;i < PRIM_PER_DRIVER;i++,p_part_table++)
	{
		if(p_part_table->nr_sectors != 0)
		{
			p_hd_info->primary[i].lba  = p_part_table->lba;
			p_hd_info->primary[i].sectors = p_part_table->nr_sectors;
			p_hd_info->primary[i].base = p_part_table->lba * SECTOR_SIZE;
			p_hd_info->primary[i].size = p_part_table->nr_sectors * SECTOR_SIZE;
			if(p_part_table->sys_ID != SYS_ID_EXT)
			{	// 主分区
				p_hd_info->nr_prim++;
				p_hd_info->primary[i].part = PART_PRIM;
			}
			else
			{
				// 扩展分区
				p_hd_info->nr_ext++;
				p_hd_info->primary[i].part = PART_EXT;
			}
		}
	}
	// 获取扩展分区中的逻辑分区信息
	for(i = 1;i < PRIM_PER_DRIVER;i++)
	{
		if(p_hd_info->primary[i].part == PART_EXT)
		{
			int	exbase	= p_hd_info->primary[i].lba;	// 这个扩展分区所辖扩展分区的偏移基准LBA
			int	lbase	= exbase;			// 下一个逻辑分区的偏移基准LBA
			int	nr_log	= 0;	// 该扩展分区的逻辑分区数
			int	log;		// 某个逻辑分区在整个分区里的编号
			// 读取lbase指向的扇区，获得扩展分区的信息
		repeat:	cmd.count		= 1;
			cmd.lba_low	= lbase & 0xff;
			cmd.lba_mid	= (lbase >> 8) & 0xff;
			cmd.lba_high	= (lbase >> 16) & 0xff;
			cmd.device	= MAKE_DEVICE(1,driver,(lbase >> 24) & 0xf);	// lba = 1,dvr = driver,lba_high = 0
			cmd.command	= HD_READ;
			hd_cmd_out(&cmd);
			interrupt_wait();
			port_read(HD_DATA,(U16*)hdbuf,SECTOR_SIZE / 2);
			
			p_part_table = (PART_TABLE*)((int)hdbuf + 0x1be);
			if(p_part_table->nr_sectors != 0)
			{
				// 逻辑分区
				log = SUB_PER_PART * (i - 1) + nr_log;
				p_hd_info->logic[log].part = PART_LOG;
				p_hd_info->logic[log].lba  = p_part_table->lba+ lbase;
				p_hd_info->logic[log].sectors = p_part_table->nr_sectors;
				p_hd_info->logic[log].base = (p_part_table->lba + lbase) * SECTOR_SIZE;
				p_hd_info->logic[log].size = p_part_table->nr_sectors * SECTOR_SIZE;
				nr_log++;
				// 扩展分区
				p_part_table++;
				if(p_part_table->nr_sectors != 0)
				{
					// 还有扩展分区
					lbase = p_part_table->lba + exbase;
					goto	repeat;
				}
			}
		}
	}
	/*
	int i;	// 测试读取是否正确
	printk("\n");
	for(i = 0;i < 512;i += 4)
	{
		if(i % 16 == 0)
			printk("\n%x ",i);
		printk("%x: ",*(int*)((char *)hdbuf + i));
	}
	while(1);
	*/
}
//--------------------------------------------------------------------------------------------------*/
// 打印硬盘分区信息
// 输入参数：硬盘驱动器号driver
// 输出参数：无
void print_partion_info(U16 driver)
{
	HD_INFO*	p_hd_info = hd_info + driver;
	int i;
	// 打印主分区、扩展分区
	for(i = 0;i < PRIM_PER_DRIVER;i++)
	{
		if(p_hd_info->primary[i].part == PART_NULL)
			continue;
		int a 	= driver * PRIM_PER_DRIVER + i;
		char * s	= (p_hd_info->primary[i].part == PART_PRIM)?"Primary Pation":"Extern  Pation";
		int b	= p_hd_info->primary[i].lba;
		int c	= p_hd_info->primary[i].base;
		int d	= p_hd_info->primary[i].size;
		printk("hd%d %s lba: %x base: %x size: %x\n",a,s,b,c,d);
	}//*/
	// 打印逻辑分区
	for(i = 0;i < SUB_PER_DRIVER;i++)
	{
		if(p_hd_info->logic[i].part == PART_NULL)
			continue;
		int a	= driver * SUB_PER_DRIVER + i + hd1a;
		char * s	= "Logic   Pation";
		int b	= p_hd_info->logic[i].lba;
		int c	= p_hd_info->logic[i].base;
		int d	= p_hd_info->logic[i].size;
		printk("hd%d %s lba: %x base: %x size: %x\n",a,s,b,c,d);
	}
	//*/
}
//--------------------------------------------------------------------------------------------------*/
// 获取设备参数
// 输入参数：设备号
// 输出参数：无
void _hd_identify(U16 device)
{
	int driver = DVR_OF_DEV(device);
	HD_INFO*	p_hd_info = hd_info + driver;
	HD_CMD cmd;
	
	if(p_hd_info->open_cnt++)
	{
		printk("The driver for device has allready open!\n");
		return;			// device所在驱动器已经打开
	}
	cmd.device = MAKE_DEVICE(1,driver,0);	// lba = 1,dvr = driver,lba_high = 0
	cmd.command = HD_IDENTIFY;
	hd_cmd_out(&cmd);
	interrupt_wait();
	port_read(HD_DATA,(U16*)hdbuf,SECTOR_SIZE / 2);
	print_identify_info((U16*)hdbuf);
	partion(driver);			// 获取硬盘分区信息
	print_partion_info(driver);
}
//--------------------------------------------------------------------------------------------------*/
// 关闭设备
// 输入参数：设备号
// 输出参数：无
void _hd_close(U16 device)
{
	int driver = DVR_OF_DEV(device);
	HD_INFO*	p_hd_info = hd_info + driver;
	if(p_hd_info->open_cnt <= 0)		// device所在驱动器已经关闭
		printk("The driver for device has allready close!\n");
	p_hd_info->open_cnt = 0;
}
//--------------------------------------------------------------------------------------------------*/
/*
功    能：读写数据
输入参数：读写指令		rd_wr
	数据缓冲区	buf
	设备号		device
	读写扇区数	sectors
	起始扇区的lba	fst_lba
输出参数：实际读写扇区数
*/
U16 _hd_readwrite(int rd_wr,char * buf,U16 device,U16 sectors,U32 fst_lba)
{
	HD_CMD		cmd;
	if(rd_wr == DEV_READ)
	{
		cmd.command	= HD_READ;
	//	printk("\nI am here1\n");
	}
	else if(rd_wr == DEV_WRITE)
	{
		cmd.command	= HD_WRITE;
	}
	else
	{
		printk("\nHard disk rd_wr error!\n");
		while(1);
	}
	//printk("\nI am here2\n");
	int driver 	= DVR_OF_DEV(device);
	HD_INFO*	p_hd_info = hd_info + driver;
	U8	minor	= device & 0xff;
	int device_lba_base;
	int device_lba_limit;
	if(minor < 10 )
	{	// 主分区
		//printk("\nI am here3\n");
		device_lba_base		= p_hd_info->primary[minor % 5].lba;		// 设备第一个扇区的LBA
		//printk("lba_base:%x\n",device_lba_base);
		device_lba_limit	= p_hd_info->primary[minor % 5].lba + p_hd_info->primary[minor % 5].sectors -1 ;// 设备最后一个扇区的LBA
	}
	else
	{
		// 逻辑分区
		//printk("minor:%d\n",minor);
		device_lba_base		= p_hd_info->logic[(minor - 10) % 64].lba;	// 设备第一个扇区的LBA
		//printk("lba_base:%x\n",device_lba_base);
		device_lba_limit	= p_hd_info->logic[(minor - 10) % 64].lba + p_hd_info->primary[minor % 5].sectors -1 ;// 设备最后一个扇区的LBA
	}
	int lba		= device_lba_base + fst_lba;
	//printk("lba:%x\n",lba);
	U16 sec_rdwr	= 0;		// 实际读写的扇区数
	//printk("\nI am here4 sectors:%d\n",sectors);
	while(sectors-- > 0)
	{
		cmd.count		= 1;
		cmd.lba_low	= lba & 0xff;
		cmd.lba_mid	= (lba >> 8) & 0xff;
		cmd.lba_high	= (lba >> 16) & 0xff;
		cmd.device	= MAKE_DEVICE(1,driver,(lba >> 24) & 0xf);	// lba = 1,dvr = driver,lba_high = 0
		hd_cmd_out(&cmd);
		//printk("    I am here5   ");
		if(rd_wr == DEV_READ)	// 读
		{
			interrupt_wait();
			//printk("Read device: %x buf: %x lba: %x sectors: %d\n",device,(int)buf,lba,cmd.count);
			port_read(HD_DATA,(U16*)buf,SECTOR_SIZE / 2);	// 数据大小单位：字
			buf += SECTOR_SIZE;	// 数据大小单位：字节
		}
		else			// 写
		{
			//printk("Write device: %x buf: %x lba: %x sectors: %d\n",device,(int)buf,lba,cmd.count);
			port_write(HD_DATA,(U16*)buf,SECTOR_SIZE / 2);	// 数据大小单位：字
			interrupt_wait();
			//printk("\nI am here6\n");
			buf += SECTOR_SIZE;	// 数据大小单位：字节
		}
		sec_rdwr++;
		if(++lba > device_lba_limit)	// 已到设备最后一个扇区
			break;
	}
	
	return sec_rdwr;
}
//--------------------------------------------------------------------------------------------------*/
/*
功    能：IO控制
输入参数：无
输出参数：无
*/
void _hd_ioctl(void)
{
	
}


