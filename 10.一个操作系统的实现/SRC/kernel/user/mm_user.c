#include	"include.h"
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：克隆自己
输入参数：无
输出参数：成功,本体返回PID（父进程），克隆体返回0（子进程）
	失败，本体返回-1，克隆体不出现
*/ 
int	fork(void)
{
	MSG	msg;
	msg.type			= MM_MSG_UNION;
	msg.msg_union.mm_msg.para	= MM_FORK;
	assert(	sendrecv(BOTH,TASK_MM_PID,&msg) == 0	);
	// return	msg.msg_union.mm_msg.para;	// 此时的para肯定是子进程的pid,因为父、子进程的虚拟地址映射到了一起,而MM先给子进程发消息(0),后给父进程发消息(cpid),父进程的消息覆盖了子进程的
	int	cpid	= msg.msg_union.mm_msg.para;
	delaytick(2);			// 延迟2个时钟周期,防止get_pid的时候被中断打断	// 写时复制发生在这里(函数传递参数时,会写数据),父、子进程的差异从此开始
	int	pid	= get_pid();
	if( pid == cpid)
		return	0;		// 子进程返回 0
	else
		return	cpid;		// 父进程返回子进程的pid
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：进程退出（自杀）
输入参数：退出码
*/ 
void	exit(int s)
{
	MSG	msg;
	msg.type			= MM_MSG_UNION;
	msg.msg_union.mm_msg.para	= MM_EXIT;
	msg.msg_union.mm_msg.s	= s;
	assert(	sendrecv(BOTH,TASK_MM_PID,&msg) == 0	);
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：等待子进程退出
输入参数：退出码地址
输出参数：-1 该进程无子进程，等待失败
	等待成功：返回退出子进程的pid，同时p_s所指向的地址保存子进程退出码
*/ 
int	wait(int* p_s)
{
	// 对p_s地址进行一次写操作,确保该地址没有被“写锁定”(如果被写锁定,则会触发写时复制)
	*p_s	= 0x10101010;
	MSG	msg;
	msg.type			= MM_MSG_UNION;
	msg.msg_union.mm_msg.para	= MM_WAIT;
	msg.msg_union.mm_msg.p_s	= p_s;
	assert(	sendrecv(BOTH,TASK_MM_PID,&msg) == 0	);
	return	msg.msg_union.mm_msg.para;
}
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：将当前进程替换成pathname映像,然后运行之
输入参数：待运行的文件名	pathname
输出参数：失败返回-1	未找到文件
	成功就不返回了(进入pathname映像)
*/ 
int	exec(char* pathname,int argc,char ** argv)
{
	int	fd	= fopen(pathname,0);	// 测试文件是否存在
	if(fd == -1)
	{
		return	-1;
	}
	fclose(fd);
	
	MSG	msg;
	msg.type			= MM_MSG_UNION;
	msg.msg_union.mm_msg.para	= MM_EXEC;
	msg.msg_union.mm_msg.pathname	= pathname;
	msg.msg_union.mm_msg.argc	= argc;
	msg.msg_union.mm_msg.argv	= argv;
	assert(	sendrecv(BOTH,TASK_MM_PID,&msg) == 0	);
	return	msg.msg_union.mm_msg.para;
}
//--------------------------------------------------------------------------------------------------*/
// 从文件中复制一页到内存
// 此函数会制造一个缺页异常进程给MM发送信息的假象。因为这个函数从缺页异常处理中调用,此时task_current是出现异常的进程,所以IPC机制会把它当做发送者
int	file_page_copy(char* pathname,void* pa,void* va)
{
	MSG	msg;
	msg.type			= MM_MSG_UNION;
	msg.msg_union.mm_msg.para	= MM_FILE_PAGE_COPY;
	msg.msg_union.mm_msg.pathname	= pathname;
	msg.msg_union.mm_msg.argc	= (U32)pa;			// 用argc传递物理地址
	msg.msg_union.mm_msg.argv	= (char**)va;			// 用argv传递虚拟地址
	assert(	sendrecv(BOTH,TASK_MM_PID,&msg) == 0	);
	return	msg.msg_union.mm_msg.para;
	
}
//--------------------------------------------------------------------------------------------------*/



