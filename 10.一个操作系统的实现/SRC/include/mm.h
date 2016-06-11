#include	"def.h"
#include	"paging.h"

#ifndef	_MM_H_
#define	_MM_H_

#define	_FREE_MEM_	// 定义了这个宏就会产生释放内存的代码。目前还不稳定
#undef	_FREE_MEM_
//--------------------------------------------------------------------------------------------------*/
// mm功能消息
#define	MM_FORK		1
#define	MM_EXIT		2
#define	MM_WAIT		3
#define	MM_EXEC		4
#define	MM_FILE_PAGE_COPY	5	// 从文件中复制一页到内存

//--------------------------------------------------------------------------------------------------*/
// mm相关常量
// exec
#define	EXEC_PDB		0x100000				// 子进程页目录虚拟地址	自映射
#define	EXEC_PTB		0x101000				// 子进程页表虚拟地址
#define	EXEC_MEM_SIZE	PAGE_LIMIT			// 子进程内存地址大小
#define	EXEC_EIP		0x110000				// 子进程的入口地址
#define	EXEC_ESP		(EXEC_MEM_SIZE - (NR_PDE + 1) * PAGE_SIZE)	// 子进程的堆栈指针。指向子进程内存地址倒数(NR_PDE + 1)页,NR_PDE是用来保存当前子进程已占用的物理页
#define	EXEC_NR_STRING	100				// argv[]的最大大小
#define	EXEC_ARGV_OFF	8				// argv[0]的虚拟地址相对于esp偏移	0:argc 4:argv 8:argv[0]
#define	EXEC_STRING_OFF	(EXEC_ARGV_OFF + 4 * EXEC_NR_STRING)	// *argv[0]的虚拟地址相对于esp偏移
#define	EXEC_ARGV		(EXEC_ESP + EXEC_ARGV_OFF)		// argv[0]的虚拟地址
#define	EXEC_STRING	(EXEC_ESP + EXEC_STRING_OFF)		// *argv[0]的虚拟地址

//--------------------------------------------------------------------------------------------------*/
// 函数申明
int	fork(void);
int	wait(int* p_s);
void	exit(int s);
int	exec(char* pathname,int argc,char ** argv);
int	file_page_copy(char* pathname,void* pa,void* va);

typedef	struct	mm_msg
{
	int	para;
	int*	p_s;	// 退出状态码的地址
	int	s;	// 退出码
	char*	pathname;
	int	argc;
	char**	argv;
}MM_MSG;


#endif	// _MM_H_


