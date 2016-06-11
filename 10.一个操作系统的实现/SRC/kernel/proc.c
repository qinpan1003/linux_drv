#include	"include.h"
//--------------------------------------------------------------------------------------------------*/
// 进程体
void proc1(void * pdata)
{
	int stdin		= fopen("tty2",O_CREATE);
	assert(stdin == 0);
	int stdout	= fopen("tty2",O_CREATE);	// stdout必须为1，因为printf默认输出到STDOUT，而STDOUT默认是1
	assert(stdout == 1);
	
	MSG	msg;
	pdata = pdata;
	while(1)
	{
		assert(	recv(ANY,&msg) == 0		);
		printf("Receved message from process %d\n",msg.sender);
		assert(	send(msg.sender,&msg) == 0	);
	}
}
void proc2(void * pdata)
{
	MSG	msg;
	pdata = pdata;
	int stdin		= fopen("tty1",0);
	assert(stdin == 0);
	int stdout	= fopen("tty1",0);	// stdout必须为1，因为printf默认输出到STDOUT，而STDOUT默认是1
	assert(stdout == 1);
	while(1)
	{
		printf("             -proc2----tick:%d----\n",get_ticks());
		assert(	sendrecv(BOTH,PROC_1_PID,&msg) == 0	);
		delays(4);
	}
}

void proc3(void * pdata)
{
	MSG msg;
	pdata = pdata;
	int stdin		= fopen("tty1",0);
	assert(stdin == 0);
	int stdout	= fopen("tty1",0);	// stdout必须为1，因为printf默认输出到STDOUT，而STDOUT默认是1
	assert(stdout == 1);
	int v3 = 0;
	U32 count = 0;
	while(1)
	{
		printf("             -proc3-v3=%d----tick:%d----",++v3,get_ticks());
		
		printf("idle_count plus :%d\n",get_idle_count() - count);
		count = get_idle_count();
		
		assert(	sendrecv(BOTH,PROC_1_PID,&msg) == 0	);
		
		delays(7);
	}
}

void proc4(void * pdata)
{
	MSG msg;
	pdata = pdata;
	int stdin		= fopen("tty1",0);
	assert(stdin == 0);
	int stdout	= fopen("tty1",0);	// stdout必须为1，因为printf默认输出到STDOUT，而STDOUT默认是1
	assert(stdout == 1);
	while(1)
	{
		
		assert(	sendrecv(BOTH,PROC_1_PID,&msg) == 0	);
		
		delays(7);
	}
}
//--------------------------------------------------------------------------------------------------*/
/*/ 测试函数
void file_open_close(void)
{
		int fd0 = fopen("myfile",O_CREATE);
		printk("myfile open! fd: %d\n",fd0);
		
		int fd1 = fopen("test",O_CREATE);
		printk("test open! fd: %d\n",fd1);
		
		int fd2 = fopen(".",O_CREATE);
		printk(". open! fd: %d\n",fd2);
		
		int fd3 = fopen("tty0",O_CREATE);
		printk("tty0 open! fd: %d\n",fd3);
		
		int fd4 = fopen("tty1",O_CREATE);
		printk("tty1 open! fd: %d\n",fd4);
		
		int fd5 = fopen("tty2",O_CREATE);
		printk("tty2 open! fd: %d\n",fd5);
		
		fclose(fd0);
		fclose(fd1);
		fclose(fd2);
		fclose(fd3);
		fclose(fd4);
		fclose(fd5);
}
void file_rd_wr(char * pathname)
{
	char wbuf[50];
	char rbuf[50];
	int i;
	int fd;
	for(i = 0;i < 50; i++)
	{
		wbuf[i] = *pathname;
		
		rbuf[i] = 0x11;
	}
//	fd = fopen(pathname,O_CREATE);
//	fwrite(fd,wbuf,5000,50);
//	
//	fclose(fd);
	
	fd = fopen(pathname,O_CREATE);
	fread(fd,rbuf,5000,50);
	fclose(fd);
	
	
	for(i = 0;i < 50;i++)
	{
		if(i % 6 == 0)
			printk("\n%x: ",i);
		printk("%x ",rbuf[i] & 0xff);
	}
}
//--------------------------------------------------------------------------------------------------*/


