#include	"include.h"
/*
说    明：1、为了让fork能够支持分页机制,需要将该目标文件和内核分离
	2、fork的时候
		1、内核地址映射到物理内核
		2、子init映射到父init
		3、子init写时复制、内核地址永远不变
		4、由于上一条,init必须和内核分离。做法是把init链接到相对内核独立的一个4KB对齐的地址
*/
//--------------------------------------------------------------------------------------------------*/
// init进程。该进程被设计成永不停息的wait子进程
void proc_init(void * pdata)
{
	pdata = pdata;
	int stdin		= fopen("tty2",O_CREATE);
	assert(stdin == 0);
	int stdout	= fopen("tty2",O_CREATE);	// stdout必须为1，因为printf默认输出到STDOUT，而STDOUT默认是1
	assert(stdout == 1);
//--------------------------------------------------------------------------------------------------*/
	char	c;
	int fd = fopen("cmd.tar",O_CREATE);		// 用于建立cmd.tar文件
	fread(fd,&c,0,1);				// 用于判断文件是否需要解压
//--------------------------------------------------------------------------------------------------*/
	if(c != 0)
	{
		assert(extract("cmd.tar") == 0);	// 解压cmd.tar
		c = 0;
		fwrite(fd,&c,-1,1);			// 解压后,将第一个字节设为0,以免以后重复解压
	}
	fclose(fd);
//--------------------------------------------------------------------------------------------------*/
	int	s = 0x11111111;
	int	cpid	= fork();
	if(cpid != 0)
	{
//		fork();
//		fork();
//		fork();
		while(1)				// 父进程
		{				// 注意：由于原始init被安排在了地址0x80000,而内存地址在0x9f000 - 0x100000之间是不可用地址(通过BIOS读取内存范围得知)
			printf("wait..\n");		// 所以父进程不能用于exec新程序(或者只能修改内核,让exec运行新程序的内存物理地址跨过0x9f000 - 0x100000)
		//	while(1);
			cpid	= wait(&s);	// cpid为执行exit的进程号，s为退出状态码	附：由于物理地址1MB - 6MB用于文件缓存,所以init的物理地址必须限制在0x9f000以下
			printf("some child process exit.cpid : %d  statcode: %d\n",cpid,s);
		}
	}
	else
	{
//		fork();
//		fork();
//		fork();
//		fork();
//		fork();
//		exit(-9);
		while(1)				// 子进程
		{
			printf("child pid : %d\n",get_pid());
			char*	argv[2] = {"shell","tty0"};
		//	while(1);
			exec("shell",2,argv);	// 启动一个shell
			exit(-1);			// 如果shell启动成功,则不会运行到这里
		}
	}
}


