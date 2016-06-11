#include	"include.h"
//--------------------------------------------------------------------------------------------------*/
// assert
void assertfail(char * exp,char* file,char* base_file,int line)
{
	//printk("assert fail: \"%s\" file:%s base_file:%s line:%d\n",exp,file,base_file,line);
	printk("assert fail: \"%s\" file:%s line:%d\n",exp,file,line);
	disable_int();
	while(1);
}
//--------------------------------------------------------------------------------------------------*/
