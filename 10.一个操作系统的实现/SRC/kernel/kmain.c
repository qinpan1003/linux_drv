#include	"include.h"

char * s = "Hello World !\n";

// 一定要注意，kmain是在多任务开启之前调用的
int kmain(void)
{
	printk("\n\n\n\n\n\n");
	printk(s);
	printk("Hello My Mini OS !\n");
	printk("%s   %X 789 %%%% \n","This is my printk !",0x1023acd);
	printk("Make File\n");
	printk("Make File1\n");
	printk("struct Gate size       :%x\n",sizeof(Gate));
	printk("struct Descriptor size :%x\n",sizeof(Descriptor));
	printk("%d\n",123456789);
	
	printk("%d#>",(tty_current->p_console->cursor +tty_current->p_console->vga_offset )/ 160);
	return 0;
}
