#include	"include.h"

int	stdin,stdout;
void	app_start(void)
{
	fclose(0);
	fclose(1);
	stdin	= fopen("tty0",0);
	stdout	= fopen("tty0",0);
	assert(stdin	== 0);
	assert(stdout	== 1);
}

void	app_exit(void)
{
	assert(stdin	== 0);
	assert(stdout	== 1);
	fclose(stdin);
	fclose(stdout);
}

