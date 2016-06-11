#include	"include.h"
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ���¡�Լ�
�����������
����������ɹ�,���巵��PID�������̣�����¡�巵��0���ӽ��̣�
	ʧ�ܣ����巵��-1����¡�岻����
*/ 
int	fork(void)
{
	MSG	msg;
	msg.type			= MM_MSG_UNION;
	msg.msg_union.mm_msg.para	= MM_FORK;
	assert(	sendrecv(BOTH,TASK_MM_PID,&msg) == 0	);
	// return	msg.msg_union.mm_msg.para;	// ��ʱ��para�϶����ӽ��̵�pid,��Ϊ�����ӽ��̵������ַӳ�䵽��һ��,��MM�ȸ��ӽ��̷���Ϣ(0),��������̷���Ϣ(cpid),�����̵���Ϣ�������ӽ��̵�
	int	cpid	= msg.msg_union.mm_msg.para;
	delaytick(2);			// �ӳ�2��ʱ������,��ֹget_pid��ʱ���жϴ��	// дʱ���Ʒ���������(�������ݲ���ʱ,��д����),�����ӽ��̵Ĳ���Ӵ˿�ʼ
	int	pid	= get_pid();
	if( pid == cpid)
		return	0;		// �ӽ��̷��� 0
	else
		return	cpid;		// �����̷����ӽ��̵�pid
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ������˳�����ɱ��
����������˳���
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
�������ܣ��ȴ��ӽ����˳�
����������˳����ַ
���������-1 �ý������ӽ��̣��ȴ�ʧ��
	�ȴ��ɹ��������˳��ӽ��̵�pid��ͬʱp_s��ָ��ĵ�ַ�����ӽ����˳���
*/ 
int	wait(int* p_s)
{
	// ��p_s��ַ����һ��д����,ȷ���õ�ַû�б���д������(�����д����,��ᴥ��дʱ����)
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
�������ܣ�����ǰ�����滻��pathnameӳ��,Ȼ������֮
��������������е��ļ���	pathname
���������ʧ�ܷ���-1	δ�ҵ��ļ�
	�ɹ��Ͳ�������(����pathnameӳ��)
*/ 
int	exec(char* pathname,int argc,char ** argv)
{
	int	fd	= fopen(pathname,0);	// �����ļ��Ƿ����
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
// ���ļ��и���һҳ���ڴ�
// �˺���������һ��ȱҳ�쳣���̸�MM������Ϣ�ļ�����Ϊ���������ȱҳ�쳣�����е���,��ʱtask_current�ǳ����쳣�Ľ���,����IPC���ƻ��������������
int	file_page_copy(char* pathname,void* pa,void* va)
{
	MSG	msg;
	msg.type			= MM_MSG_UNION;
	msg.msg_union.mm_msg.para	= MM_FILE_PAGE_COPY;
	msg.msg_union.mm_msg.pathname	= pathname;
	msg.msg_union.mm_msg.argc	= (U32)pa;			// ��argc���������ַ
	msg.msg_union.mm_msg.argv	= (char**)va;			// ��argv���������ַ
	assert(	sendrecv(BOTH,TASK_MM_PID,&msg) == 0	);
	return	msg.msg_union.mm_msg.para;
	
}
//--------------------------------------------------------------------------------------------------*/



