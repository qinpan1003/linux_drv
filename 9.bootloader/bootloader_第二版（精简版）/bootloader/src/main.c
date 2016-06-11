#include <include.h>

#define FLASH_ADDR	0x00180000
#define IMAG_ADDR	0x32000000
#define IMAG_LEN	0x00100000

static void go(void)
{
	((void (*)(void))IMAG_ADDR)();
}

void main(void)
{
	clock_init();
	mem_init();
	nand_init();
	nand_read(IMAG_ADDR,FLASH_ADDR,IMAG_LEN);
	go();
}