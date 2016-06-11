#include	"include.h"
//--------------------------------------------------------------------------------------------------*/
// shell����
extern	int	stdin,stdout;
int	main(int argc,char** argv)
{
	if(argc == 2)		// ����shell��������tty
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
			continue;	// ��������ʧ��
		}
		if(buf_cnt == 0)	continue;	// ���Կհ�����
		if(fork() != 0)		// �����̵ȴ��ӽ���exit��,������ѭ���ȴ�����
		{
			cpid	= wait(&s);
		//	printf("shell's child process exit. cpid : %d statcode : %d \n#>",cpid,s);
		}
		else			// �ӽ��̽���������
		{	// ���������ַ���,�γ�argv�ַ�����ַ����
			int	argc;
			char*	argv[50];
			char*	p_buf;
			char**	p_argv = argv;
			for(p_buf = buf,argc = 0;p_buf < buf + buf_cnt;p_buf++)
			{
				while(*p_buf == ' ')	// Խ���ո� ' '
					if(++p_buf >= buf + buf_cnt)	break;
				if(p_buf >= buf + buf_cnt)	break;
				
				// ��ʱp_bufָ��ǿո��ַ
				argc++;			// ��⵽�ַ���
				*p_argv++	= p_buf;
				
				while(*p_buf != ' ')	// Խ���ַ���
					if(++p_buf >= buf + buf_cnt)	break;
				if(p_buf >= buf + buf_cnt)	break;
				*p_buf	= 0;		// �ַ�����β	����p_buf�����Լ�,��Ϊ��ѭ��for����һ���Լ�
			}
			// ��������,�����ݲ���
			char* p_cmd = argv[0];
			if(exec(p_cmd,argc,argv) == -1)	// δ�ҵ������ļ�
			{
				printf("can not find this command : %s\n#>",p_cmd);
				exit(-1);
			}
		}
	}
	return	0;	// ��Զ���������е�����
}

