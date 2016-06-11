#include	"include.h"

int main(void)
{
	int i,s;
	for(i = 1,s = 0;i <= 100;i++)
	{
		s += i;
	}
	printf("\n1+2+3+4+5...+99+100 = %d",s);
	return	0;
}
