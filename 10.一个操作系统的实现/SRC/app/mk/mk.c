#include	"include.h"

int main(int argc,char** argv)
{
	if(argc != 2)
	{
		printf("\ndot not input para");
		return	-1;
	}
	else
	{
		int fd = fopen(argv[1],O_CREATE);
		assert(fd != -1);
		fclose(fd);
		return	0;
	}
}
