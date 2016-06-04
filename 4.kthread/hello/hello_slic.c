#include <linux/sched.h>   //wake_up_process()
#include <linux/kthread.h> //kthread_create()¡¢kthread_run()
#include <linux/err.h> //IS_ERR()¡¢PTR_ERR()

static struct task_struct *slic_task = NULL;

static int kthread_slic_fn(void * data)
{
    while(1){
        printk("slic start\n");
        msleep(1000);

        printk("slic stop\n");
        msleep(1000);

        if(kthread_should_stop()){
            break;
        }
    }

    return 0;
}


void slic_init(void)
{
    slic_task = kthread_create(kthread_slic_fn,NULL,"thread_slic_fn");
    if(!IS_ERR(slic_task)){
        wake_up_process(slic_task);
    }
}

void slic_exit(void)
{
    if(NULL != slic_task){
        kthread_stop(slic_task);
        slic_task = NULL;
    }
}



