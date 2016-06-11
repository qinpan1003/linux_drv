#include	"def.h"
#include	"paging.h"

#ifndef	_MM_H_
#define	_MM_H_

#define	_FREE_MEM_	// �����������ͻ�����ͷ��ڴ�Ĵ��롣Ŀǰ�����ȶ�
#undef	_FREE_MEM_
//--------------------------------------------------------------------------------------------------*/
// mm������Ϣ
#define	MM_FORK		1
#define	MM_EXIT		2
#define	MM_WAIT		3
#define	MM_EXEC		4
#define	MM_FILE_PAGE_COPY	5	// ���ļ��и���һҳ���ڴ�

//--------------------------------------------------------------------------------------------------*/
// mm��س���
// exec
#define	EXEC_PDB		0x100000				// �ӽ���ҳĿ¼�����ַ	��ӳ��
#define	EXEC_PTB		0x101000				// �ӽ���ҳ�������ַ
#define	EXEC_MEM_SIZE	PAGE_LIMIT			// �ӽ����ڴ��ַ��С
#define	EXEC_EIP		0x110000				// �ӽ��̵���ڵ�ַ
#define	EXEC_ESP		(EXEC_MEM_SIZE - (NR_PDE + 1) * PAGE_SIZE)	// �ӽ��̵Ķ�ջָ�롣ָ���ӽ����ڴ��ַ����(NR_PDE + 1)ҳ,NR_PDE���������浱ǰ�ӽ�����ռ�õ�����ҳ
#define	EXEC_NR_STRING	100				// argv[]������С
#define	EXEC_ARGV_OFF	8				// argv[0]�������ַ�����espƫ��	0:argc 4:argv 8:argv[0]
#define	EXEC_STRING_OFF	(EXEC_ARGV_OFF + 4 * EXEC_NR_STRING)	// *argv[0]�������ַ�����espƫ��
#define	EXEC_ARGV		(EXEC_ESP + EXEC_ARGV_OFF)		// argv[0]�������ַ
#define	EXEC_STRING	(EXEC_ESP + EXEC_STRING_OFF)		// *argv[0]�������ַ

//--------------------------------------------------------------------------------------------------*/
// ��������
int	fork(void);
int	wait(int* p_s);
void	exit(int s);
int	exec(char* pathname,int argc,char ** argv);
int	file_page_copy(char* pathname,void* pa,void* va);

typedef	struct	mm_msg
{
	int	para;
	int*	p_s;	// �˳�״̬��ĵ�ַ
	int	s;	// �˳���
	char*	pathname;
	int	argc;
	char**	argv;
}MM_MSG;


#endif	// _MM_H_


