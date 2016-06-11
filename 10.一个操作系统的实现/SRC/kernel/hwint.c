#include	"include.h"
void hwint00(void)
{
//--------------------------------------------------------------------*/
/*/ ÷ÿ»Î≤‚ ‘
	static i = 1;
	color = Blue;
	printk("-IN");
	if(i==1)
	{
		i = 0;
		delay(8000000);
		color = Green;
		printk("-FST-OUT");
	}
//--------------------------------------------------------------------*/
	ticks++;
	TCB*	pt = task_table;
	disable_int();
	while(pt < task_table + NR_TASK + NR_PROC + NR_CPROC)
	{
		if(pt->t_stat == DELAYING  && --pt->delay <= 0)
		{
			pt->t_stat = READY;
		}
		pt++;
	}
	enable_int();
	disable_int();
	if(--task_current->tick <= 0)
	{
		sched();
	}
	assert(task_current->tick > 0);
	
	if(keyboard_int == 1)
		int_send(task_table + TASK_TTY_PID);
	enable_int();
}

void hwint01(void)
{
	keyboard_handler();
}
void hwint02(void)
{
	printk("hwint02");
}
void hwint03(void)
{
	printk("hwint03");
}
void hwint04(void)
{
	printk("hwint04");
}
void hwint05(void)
{
	printk("hwint05");
}
void hwint06(void)
{
	printk("hwint06");
}
void hwint07(void)
{
	printk("hwint07");
}
void hwint08(void)
{
	printk("hwint08");
}
void hwint09(void)
{
	printk("hwint09");
}
void hwint10(void)
{
	printk("hwint10");
}
void hwint11(void)
{
	printk("hwint11");
}
void hwint12(void)
{
	printk("hwint12");
}
void hwint13(void)
{
	printk("hwint13");
}
void hwint14(void)
{
	hd_handler();
}

void hwint15(void)
{
	printk("hwint15");
}
//----------------------------------------------------------------------------------------
void (*hw_fun[])(void) = {
			hwint00,hwint01,hwint02,hwint03,hwint04,hwint05,hwint06,hwint07,
			hwint08,hwint09,hwint10,hwint11,hwint12,hwint13,hwint14,hwint15
			};

void hw_int_handler(int hw_no)
{
	hw_fun[hw_no]();
}
