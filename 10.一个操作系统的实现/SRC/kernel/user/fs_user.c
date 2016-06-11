#include	"include.h"
//--------------------------------------------------------------------------------------------------*/
// ***********************以下为用户级函数**********************
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：打开文件
输入参数：文件名	pathname
	打开方式	flags
输出参数：成功返回进程filp中的fd下标，失败返回-1
*/
int fopen(char * pathname,int flags)
{
	char	c		= *pathname;	// 对指针型参数进程原地读取,确保地址存在(不存在就会触发缺页异常)
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
函数功能：写文件
输入参数：文件fd	fd
	缓冲区	buf
	操作位置	offset	相对于fd_pos的偏移
	数据大小	count	字节
输出参数：成功返回实际写入字节数，失败返回-1
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
函数功能：读文件
输入参数：文件fd	fd
	缓冲区	buf
	操作位置	offset	相对于fd_pos的偏移
	数据大小	count	字节
输出参数：对于普通文件，输出实际读取字节数。
	对于字符设备：0 请求成功，-1 请求失败（有其他进程正在请求输入 或 请求输入字节数为0）
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
函数功能：关闭文件
输入参数：文件fd	fd
输出参数：成功返回0，失败返回-1
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
函数功能：删除文件
输入参数：文件名	pathname
	删除方式	flags
输出参数：成功返回0，失败返回-1
*/
int fdelete(char * pathname,int flags)
{
	char	c		= *pathname;	// 对指针型参数进程原地读取,确保地址存在(不存在就会触发缺页异常)
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
函数功能：设置文件操作位置
输入参数：文件fd	fd
	偏移	offset
	设置方式	flags	目前默认设置成绝对位置
输出参数：成功返回0，失败返回-1
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
函数功能：跳过文件路径
输入参数：文件全路径名	pathname
输出参数：返回文件名	例如"echo/echo"返回"echo"
*/
char* strip_path(char* pathname)
{
	char	c		= *pathname;	// 对指针型参数进程原地读取,确保地址存在(不存在就会触发缺页异常)
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
