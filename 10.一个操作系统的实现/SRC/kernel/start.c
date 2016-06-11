#include	"include.h"

void start(void)
{
	int i;
	// ��ʼ��ʱ��
	ticks = 0;
	// ��loader�е�GDT���Ƶ��ں��С��ܹ�4��:empty_gdt,video_gdt,FlatD_gdt,FlatC_gdt
//	memcopy((char *)gdt,*(char **)&gdt_para[2],*(U16 *)&gdt_para[0]);
	// ����ں�GDT���ز���
	*(U16 *)&gdt_para[0]	= NR_GDT * 8;
extern	Descriptor	empty_gdt;
	*(char **)&gdt_para[2]	= (char *)&empty_gdt;
	// ��ʼ��IDT
	idt[0].offset_low	= ((int)IntHandler) & 0xffff;
	idt[0].selector	= Selector_Kernel_CS;
	idt[0].pcount	= 0;
	idt[0].attr	= DA_386IGate;
	idt[0].offset_high	= ((int)IntHandler >>16 ) & 0xffff;
	for(i=1;i<NR_IDT;i++)
		idt[i] = idt[0];
	*(U16 *)&idt_para[0]	= NR_IDT * 8;
	*(char **)&idt_para[2]	= (char *)idt;
	
	init_idt_exception();	// ��ʼ���쳣��
	init_idt_hwint();		// ��ʼ��Ӳ�ж���
	init_idt_swint();		// ��ʼ�����ж���
	init_timer();		// ��ʱ����ʼ��
	Init_Task();		// ��ʼ�����񡢽���
	init_hd();		// ��ʼ��Ӳ��
	init_file_buff();		// ��ʼ���ļ�����
	init_mm_page();		// ��ʼ���ڴ��ҳ����
}
