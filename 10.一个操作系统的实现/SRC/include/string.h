#include	"stdarg.h"
#include	"tty.h"
#ifndef	__STRINT_H_

int strlen(char * s);
int strcmp(const char * d,const char * s);
void mset(char * buf,char c,int len);
//void memcopy(char * d,char * s,int len);
#define	memcopy(d,s,len)	__asm__ __volatile__ ("rep	movsb	\n\t"::"D"(d),"S"(s),"c"(len))
int	vsprintk(char * buf,char * fmt,va_list ap);

#endif	// __STRINT_H_
