#include	"proto.h"
#include	"stdio.h"
#include	"task.h"
#include	"pm.h"
#include	"global.h"
//--------------------------------------------------------------------
// 以下是库函数
// 10 ms 级延时
void delay10ms(int ms)
{
	waiting(ms);
}
// s 级延时
void delays(int s)
{
	waiting(s * 100);
}

// 打印进程表信息
void print_proc_table(TCB* p_tcb)
{
	// regs
	printk("\n");
	printk("gs        : %x    ",p_tcb->regs.gs	);
	printk("fs        : %x    ",p_tcb->regs.fs	);
	printk("es        : %x\n",p_tcb->regs.es	);
	printk("ds        : %x    ",p_tcb->regs.ds	);
	printk("edi       : %x    ",p_tcb->regs.edi	);
	printk("esi       : %x\n",p_tcb->regs.esi	);
	printk("ebp       : %x    ",p_tcb->regs.ebp	);
	printk("kernel_esp: %x    ",p_tcb->regs.kernel_esp	);
	printk("ebx       : %x\n",p_tcb->regs.ebx	);
	printk("edx       : %x    ",p_tcb->regs.edx	);
	printk("ecx       : %x    ",p_tcb->regs.ecx	);
	printk("eax       : %x\n",p_tcb->regs.eax	);
	printk("eip       : %x    ",p_tcb->regs.eip	);
	printk("cs        : %x    ",p_tcb->regs.cs	);
	printk("eflags    : %x\n",p_tcb->regs.eflags	);
	printk("esp       : %x    ",p_tcb->regs.esp	);
	printk("ss        : %x\n",p_tcb->regs.ss	);
 	
//          printk("ldt_selector    : %x    ",(int)p_tcb->ldt_selector	);
          printk("pid             : %x\n",p_tcb->pid		);
	printk("p_empty         : %x    ",p_tcb->p_empty		);
          printk("t_stat          : %x\n",p_tcb->t_stat		);
//          printk("has_int_msg     : %x    ",p_tcb->has_int_msg	);
//          printk("p_msg           : %x\n",(int)p_tcb->p_msg		);
          printk("sendto          : %x    ",p_tcb->sendto		);
          printk("recvfrom        : %x\n",p_tcb->recvfrom		);
//          printk("p_mymsg         : %x    ",p_tcb->p_mymsg - task_table	);
//	printk("p_nextsending   : %x\n",p_tcb->p_nextsending - task_table	);
//          printk("prio            : %x    ",p_tcb->prio		);
//         printk("tick            : %x\n",p_tcb->tick		);
//          printk("delay           : %x\n",p_tcb->delay		);
          
//          printk("t_ldt[0]  base  : %x    ",(p_tcb->t_ldt[0].base_high<<24) | (p_tcb->t_ldt[0].base_mid<<16) | (p_tcb->t_ldt[0].base_low)	);
//         printk("t_ldt[1]  base  : %x\n",(p_tcb->t_ldt[1].base_high<<24) | (p_tcb->t_ldt[1].base_mid<<16) | (p_tcb->t_ldt[1].base_low)	);
          printk("pdb  : %x  ",(U32)p_tcb->pdb);
          printk("parent : %d  ",p_tcb->parent);
          int i;
          for(i = 0;i < MAX_TASK_FILE;i++)
          	if(p_tcb->filp[i] != 0)
         			printk("filp[%d]        : %x\n",i,(int)p_tcb->filp[i]);
          printk("t_name          : %s    ",p_tcb->t_name		);
}



