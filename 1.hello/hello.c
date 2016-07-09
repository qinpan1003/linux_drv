#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>

MODULE_LICENSE("GPL");


void fun5(void)
{
	dump_stack();
}

void fun4(void)
{
	fun5();
}

void fun3(void)
{
	fun4();
}

void fun2(void)
{
	fun3();
}


void fun1(void)
{
	fun2();
}

int hello_init(void)
{
	printk(KERN_ALERT "Hello World\n");
	fun1();
	return	0;
}
void hello_exit(void)
{
	printk(KERN_ALERT "Goodbye,cruel world\n");
	fun1();
}
module_init(hello_init);
module_exit(hello_exit);