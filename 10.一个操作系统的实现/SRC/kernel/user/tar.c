#include	"include.h"
//--------------------------------------------------------------------------------------------------*/
/*
�������ܣ���ѹtar�ļ�
���������tar�ļ���
����������ɹ�����0,�����ļ�ϵͳ�н�����ѹ����ļ�
	ʧ�ܷ���-1
*/
int	extract(char* pathname)
{
	char	c		= *pathname;		// ��ָ���Ͳ�������ԭ�ض�ȡ,ȷ����ַ����(�����ھͻᴥ��ȱҳ�쳣)
	c			= c;
	char		buf[SECTOR_SIZE * 6];		// ע�⣺�������Ҫ����init����������,��init��������ڴ��Сֻ��4KB,���������buf����̫��
	int		bufsize	= sizeof(buf);
	POSIX_TAR_HEADER*	p_head;
	char*		p_name;
	char*		p_size;
	int		fd	= fopen(pathname,0);
	assert(fd != -1);
	while(1)
	{
		fread(fd,buf,0,512);
		// ��ȡͷ��Ϣ,�����һ���ֽ�Ϊ0,���ѹ����
		if(buf[0] == 0)	break;
		p_head	= (POSIX_TAR_HEADER*)buf;
		// ��ȡ�ļ���
		p_name	= strip_path(p_head->name);		// ѹ�����е��ļ����ܴ���ȫ·��,����Ҫ������ļ���
		// ��ȡ�ļ���С
		p_size	= p_head->size;
		int i,size;
		for(i = 0,size = 0;i < 12;i++,p_size++)
		{
			if(*p_size == 0)	break;
			size *= 8;
			size += *p_size - '0';
		}
		// �����ļ�
		int new_fd = fopen(p_name,O_CREATE);
		assert(new_fd != -1);
		// ��ȡѹ���ļ�,��д�����ļ�
		while(size > 0)
		{
			if(size <= bufsize)	// ��ǰ������������ʣ�µĴ�С
			{
				fread(fd,buf,0,(size + SECTOR_SIZE -1) / SECTOR_SIZE * SECTOR_SIZE );	// ����Ҫ�������߽�����ļ���ȡ
				fwrite(new_fd,buf,0,size);
				break;
			}
			else		// ��ǰ��������������ʣ�µĴ�С
			{
				fread(fd,buf,0,bufsize);
				fwrite(new_fd,buf,0,bufsize);
				size -= bufsize;
			}
		}
		fclose(new_fd);
		// ��ѹ��һ���ļ�
	}
	fclose(fd);
	return	0;
}

