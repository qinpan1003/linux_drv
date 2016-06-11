#include	"include.h"

void start(void)
{
	int i;
	// 初始化时钟
	ticks = 0;
	// 将loader中的GDT复制到内核中。总共4项:empty_gdt,video_gdt,FlatD_gdt,FlatC_gdt
//	memcopy((char *)gdt,*(char **)&gdt_para[2],*(U16 *)&gdt_para[0]);
	// 填充内核GDT加载参数
	*(U16 *)&gdt_para[0]	= NR_GDT * 8;
extern	Descriptor	empty_gdt;
	*(char **)&gdt_para[2]	= (char *)&empty_gdt;
	// 初始化IDT
	idt[0].offset_low	= ((int)IntHandler) & 0xffff;
	idt[0].selector	= Selector_Kernel_CS;
	idt[0].pcount	= 0;
	idt[0].attr	= DA_386IGate;
	idt[0].offset_high	= ((int)IntHandler >>16 ) & 0xffff;
	for(i=1;i<NR_IDT;i++)
		idt[i] = idt[0];
	*(U16 *)&idt_para[0]	= NR_IDT * 8;
	*(char **)&idt_para[2]	= (char *)idt;
	
	init_idt_exception();	// 初始化异常门
	init_idt_hwint();		// 初始化硬中断门
	init_idt_swint();		// 初始化软中断门
	init_timer();		// 定时器初始化
	Init_Task();		// 初始化任务、进程
	init_hd();		// 初始化硬盘
	init_file_buff();		// 初始化文件缓冲
	init_mm_page();		// 初始化内存分页管理
}
