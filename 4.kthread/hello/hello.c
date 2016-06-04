#include <linux/init.h>
#include <linux/module.h>
#include "hello_kthread.h"
#include "hello_slic.h"


MODULE_LICENSE("GPL");

static int hello_init(void)
{
	printk(KERN_ALERT "Hello World\n");
	kthread_init();
    slic_init();
	return	0;
}
static void hello_exit(void)
{
	printk(KERN_ALERT "Goodbye,cruel world\n");
	kthread_exit();
    slic_exit();
}
module_init(hello_init);
module_exit(hello_exit);
