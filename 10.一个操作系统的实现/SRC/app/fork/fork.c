#include	"include.h"

int main(void)
{
	if(fork() != 0)	return	1;
	fork();
	fork();
	fork();
	fork();
	fork();
	fork();
	
	printf("cpid : %d --",get_pid());
	
	delays(100);
	
	return	0;
}
