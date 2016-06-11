//--------------------------------------------------------------------
//typedef char *  va_list;
//#define _INTSIZEOF(n)   ( (sizeof(n) + sizeof(int) - 1) & ~(sizeof(int) - 1) )
//#define va_start(ap,v)  ( ap = (va_list)&v + _INTSIZEOF(v) )
//#define va_arg(ap,t)    ( *(t *)((ap += _INTSIZEOF(t)) - _INTSIZEOF(t)) )
//#define va_end(ap)      ( ap = (va_list)0 )
#include	"stdarg.h"
#include	"string.h"
#include	"global.h"
#include	"const.h"
#include	"proto.h"

int PrintS(char * s,int dsp_pos,int color);
void printk(char * fmt,...)
{
	char buf[256];
	va_list	ap;
	
	va_start(ap,fmt);
	
	vsprintk(buf,fmt,ap);
	
	do_write(buf);	// ����һ��ϵͳ����
	
	va_end(ap);
}
//--------------------------------------------------------------------------------------------------*/
// �����ļ�ϵͳ���������
// Ĭ�ϱ�׼����豸���ļ������1(STDOUT)
void printf(char* fmt,...)
{
	char buf[256];
	va_list	ap;
	
	va_start(ap,fmt);
	
	vsprintk(buf,fmt,ap);
	
	while(fwrite(STDOUT,buf,0,0) == -1);	// ����-1��ʾд��ʧ�ܣ���Ҫ����
	
	va_end(ap);
}

