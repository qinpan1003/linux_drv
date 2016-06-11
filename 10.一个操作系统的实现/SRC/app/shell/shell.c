#include	"include.h"
//--------------------------------------------------------------------------------------------------*/
// shell进程
extern	int	stdin,stdout;
int	main(int argc,char** argv)
{
	if(argc == 2)		// 启动shell必须输入tty
	{
		if(	strcmp(argv[1],"tty0") == 0 ||
			strcmp(argv[1],"tty1") == 0 ||
			strcmp(argv[1],"tty2") == 0
			)
		{
			fclose(stdin);
			fclose(stdout);
			stdin	= fopen(argv[1],0);
			stdout	= fopen(argv[1],0);
			assert(stdin	== 0);
			assert(stdout	== 1);
		}
		else
		{
			return	-1;
		}
	}
	else
	{
		return	-1;
	}
	
	char	buf[256];
	int	buf_cnt;
	int	cpid;
	int	s;
	printf("\n\nHello ,this is my shell.Powered by QinPan.\n#>");
	while(1)
	{
		if((buf_cnt = fread(stdin,buf,0,255)) == -1)
		{
			delay10ms(50);
			continue;	// 输入请求失败
		}
		if(buf_cnt == 0)	continue;	// 忽略空白输入
		if(fork() != 0)		// 父进程等待子进程exit后,继续死循环等待输入
		{
			cpid	= wait(&s);
		//	printf("shell's child process exit. cpid : %d statcode : %d \n#>",cpid,s);
		}
		else			// 子进程将运行命令
		{	// 处理输入字符串,形成argv字符串地址数组
			int	argc;
			char*	argv[50];
			char*	p_buf;
			char**	p_argv = argv;
			for(p_buf = buf,argc = 0;p_buf < buf + buf_cnt;p_buf++)
			{
				while(*p_buf == ' ')	// 越过空格 ' '
					if(++p_buf >= buf + buf_cnt)	break;
				if(p_buf >= buf + buf_cnt)	break;
				
				// 此时p_buf指向非空格地址
				argc++;			// 检测到字符串
				*p_argv++	= p_buf;
				
				while(*p_buf != ' ')	// 越过字符串
					if(++p_buf >= buf + buf_cnt)	break;
				if(p_buf >= buf + buf_cnt)	break;
				*p_buf	= 0;		// 字符串结尾	这里p_buf不用自加,因为主循环for里有一个自加
			}
			// 调用命令,并传递参数
			char* p_cmd = argv[0];
			if(exec(p_cmd,argc,argv) == -1)	// 未找到命令文件
			{
				printf("can not find this command : %s\n#>",p_cmd);
				exit(-1);
			}
		}
	}
	return	0;	// 永远不可能运行到这里
}

