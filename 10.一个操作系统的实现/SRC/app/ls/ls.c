#include	"include.h"

int main(void)
{
	char		buf[SECTOR_SIZE];
	Dir_Entry*	p_de;
	int		i,j;
	int		fd = fopen(".",0);
	assert(fd != -1);
	for(i = 0;i < ROOT_SECTS;i++)
	{
		fread(fd,buf,0,SECTOR_SIZE);
		for(j = 0,p_de = (Dir_Entry*)buf;j < DIR_ENT_PER_SECT;j++,p_de++)
		{
			if(p_de->inode_nr == 0)	continue;
			printf("\n     %s",p_de->name);
		}
	}
	fclose(fd);
	return	0;
}
