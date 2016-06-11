#include	"include.h"
//----------------------------------------------------------------------------------------/
// 门初始化程序
void init_gate(Gate * pgate,U16 selector,void (*offset)(void),U8 pcount,U8 attr)
{
	pgate->offset_low	= (int)offset & 0xffff;
	pgate->selector	= selector;
	pgate->pcount	= pcount;
	pgate->attr	= attr;
	pgate->offset_high	= ((int)offset >> 16) & 0xffff;
}
//----------------------------------------------------------------------------------------/
// 异常门初始化程序
void init_idt_exception(void)
{
	init_gate(idt +  0,Selector_Kernel_CS,divide_error,0,DA_386IGate);
	init_gate(idt +  1,Selector_Kernel_CS,single_step_exception,0,DA_386IGate);
	init_gate(idt +  2,Selector_Kernel_CS,nmi,0,DA_386IGate);
	init_gate(idt +  3,Selector_Kernel_CS,breakpoint_exception,0,DA_386IGate);
	init_gate(idt +  4,Selector_Kernel_CS,overflow,0,DA_386IGate);
	init_gate(idt +  5,Selector_Kernel_CS,bounds_check,0,DA_386IGate);
	init_gate(idt +  6,Selector_Kernel_CS,inval_opcode,0,DA_386IGate);
	init_gate(idt +  7,Selector_Kernel_CS,copr_not_available,0,DA_386IGate);
	init_gate(idt +  8,Selector_Kernel_CS,double_fault,0,DA_386IGate);
	init_gate(idt +  9,Selector_Kernel_CS,copr_seg_overrun,0,DA_386IGate);
	init_gate(idt + 10,Selector_Kernel_CS,inval_tss,0,DA_386IGate);
	init_gate(idt + 11,Selector_Kernel_CS,segment_not_present,0,DA_386IGate);
	init_gate(idt + 12,Selector_Kernel_CS,stack_exception,0,DA_386IGate);
	init_gate(idt + 13,Selector_Kernel_CS,general_protection,0,DA_386IGate);
	init_gate(idt + 14,Selector_Kernel_CS,page_fault,0,DA_386IGate);
	init_gate(idt + 16,Selector_Kernel_CS,copr_error,0,DA_386IGate);
	init_gate(idt + 17,Selector_Kernel_CS,ac_error,0,DA_386IGate);
	init_gate(idt + 18,Selector_Kernel_CS,mc_error,0,DA_386IGate);
	init_gate(idt + 19,Selector_Kernel_CS,xf_error,0,DA_386IGate);
}
//----------------------------------------------------------------------------------------/
// 硬中断门初始化程序
void init_idt_hwint(void)
{	// 8259A主片
	init_gate(idt + Int_M_R + 0,Selector_Kernel_CS,_hwint00 ,0,DA_386IGate);
	init_gate(idt + Int_M_R + 1,Selector_Kernel_CS,_hwint01 ,0,DA_386IGate);
	init_gate(idt + Int_M_R + 2,Selector_Kernel_CS,_hwint02 ,0,DA_386IGate);
	init_gate(idt + Int_M_R + 3,Selector_Kernel_CS,_hwint03 ,0,DA_386IGate);
	init_gate(idt + Int_M_R + 4,Selector_Kernel_CS,_hwint04 ,0,DA_386IGate);
	init_gate(idt + Int_M_R + 5,Selector_Kernel_CS,_hwint05 ,0,DA_386IGate);
	init_gate(idt + Int_M_R + 6,Selector_Kernel_CS,_hwint06 ,0,DA_386IGate);
	init_gate(idt + Int_M_R + 7,Selector_Kernel_CS,_hwint07 ,0,DA_386IGate);
	// 8259A从片
	init_gate(idt + Int_S_R + 0,Selector_Kernel_CS,_hwint08 ,0,DA_386IGate);
	init_gate(idt + Int_S_R + 1,Selector_Kernel_CS,_hwint09 ,0,DA_386IGate);
	init_gate(idt + Int_S_R + 2,Selector_Kernel_CS,_hwint10 ,0,DA_386IGate);
	init_gate(idt + Int_S_R + 3,Selector_Kernel_CS,_hwint11 ,0,DA_386IGate);
	init_gate(idt + Int_S_R + 4,Selector_Kernel_CS,_hwint12 ,0,DA_386IGate);
	init_gate(idt + Int_S_R + 5,Selector_Kernel_CS,_hwint13 ,0,DA_386IGate);
	init_gate(idt + Int_S_R + 6,Selector_Kernel_CS,_hwint14 ,0,DA_386IGate);
	init_gate(idt + Int_S_R + 7,Selector_Kernel_CS,_hwint15 ,0,DA_386IGate);
}
//----------------------------------------------------------------------------------------/
// 软中断门初始化程序
void init_idt_swint(void)
{
	// 系统调用。系统调用时提供给低特权级用户的入口，所以：
	// 1、要把门描述符的特权级DPL降低，以便低特权级程序能够调得动
	// 2、同时也要降低选择符的特权级RPL，以便操作系统根据RPL决定程序的操作权限，以免低特权级程序通过系统调用越级进行危险操作
	init_gate(idt + SYS_CALL_VECTOR,(Selector_Kernel_CS & 0xfffffffc) | RPL_IDT,_sys_call ,0,DA_386IGate + (DPL_IDT << 5) );
}
//----------------------------------------------------------------------------------------/
// 异常处理程序
void exception_handler(int vec_no,int err_code,int eip,int cs,int eflags)	// 后3个参数是硬件中断系统压入堆栈的
{								// 第2个参数：	如果有错误码，那就是硬件压入的错误码
								// 		如果没有，那就是软件压入的0xffffffff
								// 第1个参数是异常号
	int i;
	static char * err_msg[] = {	"#DE Divide Error",
				"#DB RESERVED",
				"--  NMI Interrup",
				"#BP Breapoint",
				"#OF Overflow",
				"#BR BOUND Range Exceeded",
				"#UD Invalid Opcode (Undefined Opcode)",
				"NM Device Not Available (No Math Coprocessor)",
				"#DF Double Fault",
				"    Coprocessor Segment Overrun (reserved)",
				"#TS Invalid TSS",
				"#NP Segment Not Present",
				"#SS Stack-Segment Fault",
				"#GP General Protection",
				"#PF Page Fault",
				"--  (Intel reserved. Do not use.)",
				"#MF x87 FPU Floating-Point Error (Match Fault)",
				"#AC Alignment Check",
				"#MC Machine Check",
				"#XF SIMD Floating-Point Exception"
				};
	switch(vec_no)
	{
		case 14:		// #PF Page Fault
			//printk("pid:%d err_code: %x,cr2:%x  ",task_current->pid,err_code,get_cr2());
			switch(err_code & 7)				//|	缺页异常,err_code的含义:
			{                                                           //|		0	1
				case 3:	// 写时复制                             //|	bit0	缺页	保护异常
				case 7:	//printk("----write_fault\n");		//|	bit1	读	写
					write_fault();                          //|	bit2	系统	用户
					break;
			          case 0:	// 缺页
			          case 2:
			          case 4:
			          case 6:
			          	//printk("----nopage_fault\n");
			          	nopage_fault();
			          	break;
				case 1:	// 保护异常
				case 8:	printk("----other page fault\n");
					while(1);
			          	break;
			}
			break;
		default:
			tty_current->p_console->cursor = 0;
		          for(i=0;i<80*5;i++)
		          	printk(" ");			// 屏幕前5行清空
		          tty_current->p_console->cursor = 0;		// 显示坐标复位
		          printk("%s",err_msg[vec_no]);			// 打印异常信息
		          if(err_code != 0xffffffff)
		          	printk("err_code: %x",err_code);	// 如果有错误码，则打印之
		          while(1);					// 然后停在这里
			break;
	}
}
//----------------------------------------------------------------------------------------/
// 定时器初始化程序
void init_timer(void)
{
	out_byte(TIMER_MOD_REG,TIMER_MOD);
	out_byte(TIMER0_DAT_REG,TIMER0_NUM & 0xff);	// 低8位
	out_byte(TIMER0_DAT_REG,(TIMER0_NUM >> 8)& 0xff);	// 高8位
}



