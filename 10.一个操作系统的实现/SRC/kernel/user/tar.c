#include	"include.h"
//--------------------------------------------------------------------------------------------------*/
/*
函数功能：解压tar文件
输入参数：tar文件名
输出参数：成功返回0,并在文件系统中建立解压后的文件
	失败返回-1
*/
int	extract(char* pathname)
{
	char	c		= *pathname;		// 对指针型参数进程原地读取,确保地址存在(不存在就会触发缺页异常)
	c			= c;
	char		buf[SECTOR_SIZE * 6];		// 注意：这个程序要放在init进程中运行,而init分配的总内存大小只有4KB,所以这里的buf不能太大
	int		bufsize	= sizeof(buf);
	POSIX_TAR_HEADER*	p_head;
	char*		p_name;
	char*		p_size;
	int		fd	= fopen(pathname,0);
	assert(fd != -1);
	while(1)
	{
		fread(fd,buf,0,512);
		// 读取头信息,如果第一个字节为0,则解压结束
		if(buf[0] == 0)	break;
		p_head	= (POSIX_TAR_HEADER*)buf;
		// 获取文件名
		p_name	= strip_path(p_head->name);		// 压缩包中的文件可能带有全路径,所以要分离出文件名
		// 获取文件大小
		p_size	= p_head->size;
		int i,size;
		for(i = 0,size = 0;i < 12;i++,p_size++)
		{
			if(*p_size == 0)	break;
			size *= 8;
			size += *p_size - '0';
		}
		// 建立文件
		int new_fd = fopen(p_name,O_CREATE);
		assert(new_fd != -1);
		// 读取压缩文件,并写入新文件
		while(size > 0)
		{
			if(size <= bufsize)	// 当前缓冲区能容纳剩下的大小
			{
				fread(fd,buf,0,(size + SECTOR_SIZE -1) / SECTOR_SIZE * SECTOR_SIZE );	// 最终要在扇区边界结束文件读取
				fwrite(new_fd,buf,0,size);
				break;
			}
			else		// 当前缓冲区不能容纳剩下的大小
			{
				fread(fd,buf,0,bufsize);
				fwrite(new_fd,buf,0,bufsize);
				size -= bufsize;
			}
		}
		fclose(new_fd);
		// 解压下一个文件
	}
	fclose(fd);
	return	0;
}

