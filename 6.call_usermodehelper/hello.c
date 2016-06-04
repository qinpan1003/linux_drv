#include <linux/init.h>
#include <linux/module.h>
#include <linux/sched.h>   //wake_up_process()
#include <linux/kthread.h> //kthread_create()��kthread_run()
#include <linux/err.h> //IS_ERR()��PTR_ERR()
#include <linux/kmod.h>


MODULE_LICENSE("GPL");

#define print_info(fmt,args...) printk(KERN_INFO "%s(%d): " fmt,__FUNCTION__,__LINE__,##args)

int run_shell_cmd(const char * const cmd)
{
    const char * const path = "/bin/sh";
    const char * const argv[] = {path,"-c",cmd,NULL};
    const char * const envp[] = {NULL};
    
    print_info("%s\n",cmd);
    
    return call_usermodehelper((char *)path,(char **)argv,(char **)envp,UMH_WAIT_PROC);
}
EXPORT_SYMBOL(run_shell_cmd);
/*
insmod: error inserting 'run_shell.ko': -1 Unknown symbol in module
May 29 23:36:48 localhost kernel: run_shell: Unknown symbol run_shell_cmd
ʵ�鷢��:
���������ģ�飬EXPORT_SYMBOL �����ĺ���������ģ�����ò���
*/

static int kthread_func(void *data)
{
    const char * const cmd = "/vmware_share/linux_drv/6.call_usermodehelper/app 1 >> /vmware_share/linux_drv/6.call_usermodehelper/1.txt";

    print_info("kthread_func running\n");
	do{
        run_shell_cmd(cmd);
		msleep(1000);
	}while(!kthread_should_stop());
	
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