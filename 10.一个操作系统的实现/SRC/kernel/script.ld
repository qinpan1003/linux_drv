SECTIONS
{
	ENTRY(_start)
	
	. = 0x10000;
	Kernel		:
	{
		kernel.o(.text)
		*(EXCLUDE_FILE(init.o).text	)
		*(EXCLUDE_FILE(init.o).rodata	)
		*(EXCLUDE_FILE(init.o).data	)
	
	}
	
	.bss		:
	{ 
		*(EXCLUDE_FILE(init.o).bss)
		*(EXCLUDE_FILE(init.o)COMMON)
	}
	
	. = 0x110000;
	Init		:	AT(0x90000)
	{
		init.o(.text .rodata .data .bss COMMON)
	}
}
