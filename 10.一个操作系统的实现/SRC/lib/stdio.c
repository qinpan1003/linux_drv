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
	
	do_write(buf);	// 这是一个系统调用
	
	va_end(ap);
}
//--------------------------------------------------------------------------------------------------*/
// 基于文件系统的输出函数
// 默认标准输出设备的文件句柄是1(STDOUT)
void printf(char* fmt,...)
{
	char buf[256];
	va_list	ap;
	
	va_start(ap,fmt);
	
	vsprintk(buf,fmt,ap);
	
	while(fwrite(STDOUT,buf,0,0) == -1);	// 返回-1表示写入失败，需要重试
	
	va_end(ap);
}

