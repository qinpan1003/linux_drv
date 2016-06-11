#include <2440addr.h>

// Fin = 12 MHz, F = 400 MHz, H = 100 MHz, P = 50 MHz, 1:4:8
void clock_init(void)
{
	rLOCKTIME	= -1;
	rMPLLCON	= (0x5c) << 12 | (1) << 4 | (1);
	rUPLLCON	= (0x38) << 12 | (2) << 4 | (2);
//	rCLKCON 	= 
//	rCLKSLOW	= 
	rCLKDIVN	= 5;
//	rCAMDIVN	= 
	__asm__ __volatile__(
	"	mrc p15,0,r0,c1,c0,0	\n"
	"	orr r0,r0,#0xc0000000	\n"
	"	mcr p15,0,r0,c1,c0,0	"
	:::"memory"
	);
}

