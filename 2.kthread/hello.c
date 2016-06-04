#include <linux/init.h>
#include <linux/module.h>
#include <linux/sched.h>   //wake_up_process()
#include <linux/kthread.h> //kthread_create()��kthread_run()
#include <linux/err.h> //IS_ERR()��PTR_ERR()


MODULE_LICENSE("GPL");


static int kthread_func(void *data)
{
	int i = 0;
	while(1){
		printk("Hello world %d\n",i++);
	#if 1
		msleep(1000);
	#else
		set_current_state(TASK_UNINTERRUPTIBLE);
		schedule_timeout(HZ);
	#endif

		if(kthread_should_stop()){
			break;
		}
	}
	return 0;
}

static struct task_struct *test_task = NULL;

static void kthread_init(void)
{
	test_task = kthread_run(kthread_func,NULL,"kthread_test");
	if(IS_ERR(test_task)){
		printk("Unable to start kernel thread.\n");
		test_task = NULL;
	}
}

static void kthread_exit(void)
{
	if(NULL != test_task){
		kthread_stop(test_task);
		test_task = NULL;
	}
}

static int hello_init(void)
{
	printk(KERN_ALERT "Hello World\n");
	kthread_init();
	return	0;
}
static void hello_exit(void)
{
	printk(KERN_ALERT "Goodbye,cruel world\n");
	kthread_exit();
}
module_init(hello_init);
module_exit(hello_exit);