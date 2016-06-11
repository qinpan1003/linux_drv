#include	"include.h"
//----------------------------------------------------------------------------------------/
// �ų�ʼ������
void init_gate(Gate * pgate,U16 selector,void (*offset)(void),U8 pcount,U8 attr)
{
	pgate->offset_low	= (int)offset & 0xffff;
	pgate->selector	= selector;
	pgate->pcount	= pcount;
	pgate->attr	= attr;
	pgate->offset_high	= ((int)offset >> 16) & 0xffff;
}
//----------------------------------------------------------------------------------------/
// �쳣�ų�ʼ������
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
// Ӳ�ж��ų�ʼ������
void init_idt_hwint(void)
{	// 8259A��Ƭ
	init_gate(idt + Int_M_R + 0,Selector_Kernel_CS,_hwint00 ,0,DA_386IGate);
	init_gate(idt + Int_M_R + 1,Selector_Kernel_CS,_hwint01 ,0,DA_386IGate);
	init_gate(idt + Int_M_R + 2,Selector_Kernel_CS,_hwint02 ,0,DA_386IGate);
	init_gate(idt + Int_M_R + 3,Selector_Kernel_CS,_hwint03 ,0,DA_386IGate);
	init_gate(idt + Int_M_R + 4,Selector_Kernel_CS,_hwint04 ,0,DA_386IGate);
	init_gate(idt + Int_M_R + 5,Selector_Kernel_CS,_hwint05 ,0,DA_386IGate);
	init_gate(idt + Int_M_R + 6,Selector_Kernel_CS,_hwint06 ,0,DA_386IGate);
	init_gate(idt + Int_M_R + 7,Selector_Kernel_CS,_hwint07 ,0,DA_386IGate);
	// 8259A��Ƭ
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
// ���ж��ų�ʼ������
void init_idt_swint(void)
{
	// ϵͳ���á�ϵͳ����ʱ�ṩ������Ȩ���û�����ڣ����ԣ�
	// 1��Ҫ��������������Ȩ��DPL���ͣ��Ա����Ȩ�������ܹ����ö�
	// 2��ͬʱҲҪ����ѡ�������Ȩ��RPL���Ա����ϵͳ����RPL��������Ĳ���Ȩ�ޣ��������Ȩ������ͨ��ϵͳ����Խ������Σ�ղ���
	init_gate(idt + SYS_CALL_VECTOR,(Selector_Kernel_CS & 0xfffffffc) | RPL_IDT,_sys_call ,0,DA_386IGate + (DPL_IDT << 5) );
}
//----------------------------------------------------------------------------------------/
// �쳣�������
void exception_handler(int vec_no,int err_code,int eip,int cs,int eflags)	// ��3��������Ӳ���ж�ϵͳѹ���ջ��
{								// ��2��������	����д����룬�Ǿ���Ӳ��ѹ��Ĵ�����
								// 		���û�У��Ǿ������ѹ���0xffffffff
								// ��1���������쳣��
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
			switch(err_code & 7)				//|	ȱҳ�쳣,err_code�ĺ���:
			{                                                           //|		0	1
				case 3:	// дʱ����                             //|	bit0	ȱҳ	�����쳣
				case 7:	//printk("----write_fault\n");		//|	bit1	��	д
					write_fault();                          //|	bit2	ϵͳ	�û�
					break;
			          case 0:	// ȱҳ
			          case 2:
			          case 4:
			          case 6:
			          	//printk("----nopage_fault\n");
			          	nopage_fault();
			          	break;
				case 1:	// �����쳣
				case 8:	printk("----other page fault\n");
					while(1);
			          	break;
			}
			break;
		default:
			tty_current->p_console->cursor = 0;
		          for(i=0;i<80*5;i++)
		          	printk(" ");			// ��Ļǰ5�����
		          tty_current->p_console->cursor = 0;		// ��ʾ���긴λ
		          printk("%s",err_msg[vec_no]);			// ��ӡ�쳣��Ϣ
		          if(err_code != 0xffffffff)
		          	printk("err_code: %x",err_code);	// ����д����룬���ӡ֮
		          while(1);					// Ȼ��ͣ������
			break;
	}
}
//----------------------------------------------------------------------------------------/
// ��ʱ����ʼ������
void init_timer(void)
{
	out_byte(TIMER_MOD_REG,TIMER_MOD);
	out_byte(TIMER0_DAT_REG,TIMER0_NUM & 0xff);	// ��8λ
	out_byte(TIMER0_DAT_REG,(TIMER0_NUM >> 8)& 0xff);	// ��8λ
}



