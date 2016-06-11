#include	"stdarg.h"
#include	"global.h"
#include	"lib.h"
#include	"task.h"
#include	"pm.h"
#include	"string.h"
int	strlen(char * s)
{
	int i = 0;
	while(*s++)	i++;
	return i;
}
int strcmp(const char * d,const char * s)
{
	while(1)
	{
		if(*d != *s)	break;
		if(*d == 0)	break;
		d++;
		s++;
	}
	return (*d - *s);
}
void	mset(char * buf,char c,int len)
{
	int i;
	for(i=0;i<len;i++)
	{
		*buf++ = c;
	}
}

//void	memcopy(char * d,char * s,int len)
//{
////	while(len-- > 0)
////	{
////		*d++ = *s++;
////	}
//	__asm__ __volatile__ ("rep	movsb	\n\t"::"D"(d),"S"(s),"c"(len));
//}

int	vsprintk(char * buf,char * fmt,va_list ap)
{
	int n = 0;
	int i;
repeat:	
	if(*fmt == 0)
		{	// ��ʽ������
			*buf = 0;			// �ַ�����0����
			return n;			// ���ش��ַ���
		}	
	if(*fmt != '%') {*buf++ = *fmt++;n++;goto repeat;}	// ������ԭ�����������'\n'
	switch(*(++fmt))
	{
		case 'S':
		case 's':		// �ַ���
			fmt++;
			i = strlen(*(char **)ap);
			memcopy(buf,*(char **)ap,i);
			buf += i;
			n += i;
			va_arg(ap,char *);
			goto	repeat;
		case 'C':
		case 'c':		// �ַ���
			fmt++;
			*buf++ = *ap;
			n++;
			va_arg(ap,char *);
			goto	repeat;
		case 'X':
		case 'x':		// 16������
			fmt++;
			*buf++ = '0';
			*buf++ = 'x';
			for(i = 28 ; i >= 0 ; i -= 4)
				{
					*buf = (((*(int *)ap)>>i) & 0xf )+ 0x30;	// ���ּ�0x30
					if(*buf > '9')	*buf += 7;					// ��ĸ��0x37
					buf++;
				}
			n += 10;
			va_arg(ap,int);
			goto	repeat;
		case 'D':
		case 'd':		// 10������
			fmt++;
			{
			int flag = 0,tmp = *(int *)ap,tmp1 = 0;
			if(tmp < 0) {tmp = -tmp; *buf++ = '-';}
			for(i = 100000000 ; i >= 10 ; i /= 10)
			{
				tmp1 = tmp / i % 10;
				if(flag || tmp1)
				{
					flag = 1;
					*buf++ = tmp1 + 0x30;	// ���ּ�0x30
					n++;
				}
			}
			*buf++ = tmp % 10 + 0x30;			// ���һ�����֣���ʹ��0��ҲҪ��ӡ
			n++;
			}
			va_arg(ap,int);
			goto	repeat;
		default:	// ������ԭ�����
			*buf++ = '%';
			*buf++ = *fmt++;
			n += 2;
			goto	repeat;
	}
}
// ע�⣺�˺���ֻ���ڷ�ҳ��������ȫ�Ե�ӳ��Ľ����е���
void * va2pa(U32* pdb,void * va)
{
//	int	index_pde	= ((U32)va >> 22) & 0x3ff;
//	int	index_pte	= ((U32)va >> 12) & 0x3ff;
//	int	index_phy	= (U32)va & 0xfff;
//	
//	U32*	pte	= (U32*)(	pdb[index_pde] & ~0xfff	);
//	U32*	phy	= (U32*)(	pte[index_pte] & ~0xfff	);
//	
//	return	 (void *)(	(U32)phy | index_phy	);

	register	void *	pa;
	__asm__ __volatile__	(
				"movl	%%ecx,%%eax	\n\t"
				"shr	$20,%%eax		\n\t"
				"andl	$0xffc,%%eax	\n\t"
				"addl	%%eax,%%ebx	\n\t"
				"movl	(%%ebx),%%ebx	\n\t"
				"andl	$0xfffff000,%%ebx	\n\t"
				"movl	%%ecx,%%eax	\n\t"
				"shr	$10,%%eax		\n\t"
				"andl	$0xffc,%%eax	\n\t"
				"addl	%%eax,%%ebx	\n\t"
				"movl	(%%ebx),%%ebx	\n\t"
				"andl	$0xfffff000,%%ebx	\n\t"
				"movl	%%ecx,%%eax	\n\t"
				"andl	$0xfff,%%eax	\n\t"
				"addl	%%ebx,%%eax	\n\t"
				:"=a"(pa):"b"(pdb),"c"(va)
				);
	return	pa;
}
U32 va2pte(U32* pdb,void * va)
{
//	int	index_pde	= ((U32)va >> 22) & 0x3ff;
//	int	index_pte	= ((U32)va >> 12) & 0x3ff;
//	
//	U32*	pte	= (U32*)(	pdb[index_pde] & ~0xfff	);
//	
//	return	 pte[index_pte];
	
	register	U32	pa;
	__asm__ __volatile__	(
				"movl	%%ecx,%%eax	\n\t"
				"shr	$20,%%eax		\n\t"
				"andl	$0xffc,%%eax	\n\t"
				"addl	%%eax,%%ebx	\n\t"
				"movl	(%%ebx),%%ebx	\n\t"
				"andl	$0xfffff000,%%ebx	\n\t"
				"movl	%%ecx,%%eax	\n\t"
				"shr	$10,%%eax		\n\t"
				"andl	$0xffc,%%eax	\n\t"
				"addl	%%eax,%%ebx	\n\t"
				"movl	(%%ebx),%%ebx	\n\t"
				"andl	$0xfffff000,%%ebx	\n\t"
				:"=a"(pa):"b"(pdb),"c"(va)
				);
	return	pa;
}








