#include	"include.h"
//--------------------------------------------------------------------------------------------------*/
// ***********************����Ϊ�û�������**********************
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ����ļ�
����������ļ���	pathname
	�򿪷�ʽ	flags
����������ɹ����ؽ���filp�е�fd�±꣬ʧ�ܷ���-1
*/
int fopen(char * pathname,int flags)
{
	char	c		= *pathname;	// ��ָ���Ͳ�������ԭ�ض�ȡ,ȷ����ַ����(�����ھͻᴥ��ȱҳ�쳣)
	c			= c;
	MSG msg;
	msg.type			= FS_MSG_UNION;
	msg.msg_union.fs_msg.para	= FS_OPEN;
	msg.msg_union.fs_msg.pathname	= pathname;
	msg.msg_union.fs_msg.flags	= flags;
	//printk("file open: %s     ",pathname);
	assert(sendrecv(BOTH,TASK_FS_PID,&msg) == 0);
	//printk("recever:%d fd: %d\n",msg.recver,msg.msg_union.fs_msg.fd);
	return	msg.msg_union.fs_msg.fd;
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ�д�ļ�
����������ļ�fd	fd
	������	buf
	����λ��	offset	�����fd_pos��ƫ��
	���ݴ�С	count	�ֽ�
����������ɹ�����ʵ��д���ֽ�����ʧ�ܷ���-1
*/
int fwrite(int fd,void *buf,int offset,int count)
{
	MSG msg;
	msg.type			= FS_MSG_UNION;
	msg.msg_union.fs_msg.para	= FS_WRITE;
	msg.msg_union.fs_msg.fd	= fd;
	msg.msg_union.fs_msg.buf	= buf;
	msg.msg_union.fs_msg.offset	= offset;
	msg.msg_union.fs_msg.count	= count;
	assert(sendrecv(BOTH,TASK_FS_PID,&msg) == 0);
	//printk("file write %d Bytes\n",fs_msg.count);
	return	msg.msg_union.fs_msg.count;
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ����ļ�
����������ļ�fd	fd
	������	buf
	����λ��	offset	�����fd_pos��ƫ��
	���ݴ�С	count	�ֽ�
���������������ͨ�ļ������ʵ�ʶ�ȡ�ֽ�����
	�����ַ��豸��0 ����ɹ���-1 ����ʧ�ܣ����������������������� �� ���������ֽ���Ϊ0��
*/
int fread(int fd,void * buf,int offset,int count)
{
	MSG msg;
	msg.type			= FS_MSG_UNION;
	msg.msg_union.fs_msg.para	= FS_READ;
	msg.msg_union.fs_msg.fd	= fd;
	msg.msg_union.fs_msg.buf	= buf;
	msg.msg_union.fs_msg.offset	= offset;
	msg.msg_union.fs_msg.count	= count;
	assert(sendrecv(BOTH,TASK_FS_PID,&msg) == 0);
	//printk("file read %d Bytes\n",msg.msg_union.fs_msg.count);
	return	msg.msg_union.fs_msg.count;
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ��ر��ļ�
����������ļ�fd	fd
����������ɹ�����0��ʧ�ܷ���-1
*/
int fclose(int fd)
{
	MSG msg;
	msg.type			= FS_MSG_UNION;
	msg.msg_union.fs_msg.para	= FS_CLOSE;
	msg.msg_union.fs_msg.fd		= fd;
	assert(sendrecv(BOTH,TASK_FS_PID,&msg) == 0);
	//printk("file close %s fd: %d\n",msg.para?"fail":"success",fd);
	return	msg.msg_union.fs_msg.para;
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ�ɾ���ļ�
����������ļ���	pathname
	ɾ����ʽ	flags
����������ɹ�����0��ʧ�ܷ���-1
*/
int fdelete(char * pathname,int flags)
{
	char	c		= *pathname;	// ��ָ���Ͳ�������ԭ�ض�ȡ,ȷ����ַ����(�����ھͻᴥ��ȱҳ�쳣)
	c			= c;
	MSG msg;
	msg.type			= FS_MSG_UNION;
	msg.msg_union.fs_msg.para	= FS_DEL;
	msg.msg_union.fs_msg.pathname	= pathname;
	msg.msg_union.fs_msg.flags	= flags;
	assert(sendrecv(BOTH,TASK_FS_PID,&msg) == 0);
	//printk("file %s delete %s \n",pathname,msg.para?"fail":"success");
	return	msg.msg_union.fs_msg.para;
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ������ļ�����λ��
����������ļ�fd	fd
	ƫ��	offset
	���÷�ʽ	flags	ĿǰĬ�����óɾ���λ��
����������ɹ�����0��ʧ�ܷ���-1
*/
int	lseek(int fd,int offset,int flags)
{
	MSG msg;
	msg.type			= FS_MSG_UNION;
	msg.msg_union.fs_msg.para	= FS_LSEEK;
	msg.msg_union.fs_msg.fd	= fd;
	msg.msg_union.fs_msg.offset	= offset;
	msg.msg_union.fs_msg.flags	= flags;
	assert(sendrecv(BOTH,TASK_FS_PID,&msg) == 0);
	return	msg.msg_union.fs_msg.para;
}
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ������ļ�·��
����������ļ�ȫ·����	pathname
��������������ļ���	����"echo/echo"����"echo"
*/
char* strip_path(char* pathname)
{
	char	c		= *pathname;	// ��ָ���Ͳ�������ԭ�ض�ȡ,ȷ����ַ����(�����ھͻᴥ��ȱҳ�쳣)
	c			= c;
	int len = strlen(pathname);
	while(len > 0)
	{
		if(pathname[len] == '/')
		{
			len++;
			break;
		}
		len--;
	}
	return	pathname + len;
}
//--------------------------------------------------------------------------------------------------*/
