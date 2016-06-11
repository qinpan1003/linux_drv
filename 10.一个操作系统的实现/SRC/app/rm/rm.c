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
		fdelete(argv[1],0);
		return	0;
	}
}
