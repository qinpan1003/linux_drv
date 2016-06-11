#include	"include.h"

int main(int argc,char** argv)
{
	if(argc != 2)
	{
		printf("\ndo not input para");
		return	-1;
	}
	else
	{
		if(strcmp(argv[1],"cmd.tar") != 0)
		{
			printf("\ninput tar name must be \"cmd.tar\" ");
			return	-1;
		}
		else
		{
			extract(argv[1]);
			return	0;
		}
	}
}
