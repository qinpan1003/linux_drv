#include <2440addr.h>

#define DW32		(0x2)

#define B6_BWSCON		(DW32)
#define B7_BWSCON		(DW32)

#define B6_MT			0x3	/* SDRAM */
#define B6_Trcd			0x1
#define B6_SCAN			0x1	/* 9bit */

#define B7_MT			0x3	/* SDRAM */
#define B7_Trcd			0x1	/* 3clk */
#define B7_SCAN			0x1	/* 9bit */

/* REFRESH parameter */
#define REFEN			0x1	/* Refresh enable */
#define TREFMD			0x0	/* CBR(CAS before RAS)/Auto refresh */
#define Trp			0x0	/* 2clk */
#define Trc			0x3	/* 7clk */
#define Tchr			0x2	/* 3clk */
#define REFCNT			1113	/* period=15.6us, HCLK=60Mhz, (2048+1-15.6*60) */

void mem_init(void)
{
	rBWSCON		= (B6_BWSCON) << 24 | (B7_BWSCON) << 28;
//	rBANKCON0		= ;
//	rBANKCON1		= ;
//	rBANKCON2		= ;
//	rBANKCON3		= ;
//	rBANKCON4		= ;
//	rBANKCON5		= ;
	rBANKCON6		= (B6_MT<<15)+(B6_Trcd<<2)+(B6_SCAN);
	rBANKCON7		= (B7_MT<<15)+(B7_Trcd<<2)+(B7_SCAN);
	rREFRESH		= (REFEN<<23)+(TREFMD<<22)+(Trp<<20)+(Trc<<18)+(Tchr<<16)+REFCNT;
	rBANKSIZE		= 0x32;
	rMRSRB6		= 0x30;
	rMRSRB7		= 0x30;
}
