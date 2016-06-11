#include <2440addr.h>

#define	TACLS	(3 << 12)
#define	TWRPH0	(7 << 8)
#define	TWRPH1	(7 << 4 )
#define	Adv	(1 << 3)
#define	PageSize	(1 << 2)

#define	InitECC	(1 << 4)
#define	nCE	(0 << 1)
#define	Mode	(1 << 0)

#define	CMD_RESET		0xff
#define	CMD_READ0		0x00
#define	CMD_READ1		0x30
#define	CMD_READID	0x90
#define	CMD_READS		0x70

#define	PAGE_SIZE		2048

static void check_busy(void)
{
	while(1){
		if(rNFSTAT & 1)
			break;
	}
}
int nand_init(void)
{
	rNFCONF	= TACLS | TWRPH0 | TWRPH1;
	rNFCONT	= InitECC | nCE | Mode;
	rNFCMD	= CMD_RESET;
	check_busy();
	return	0;
}

static int nand_read_page(int dec,int src)
{
	rNFCMD	= CMD_READ0;
	rNFADDR	= 0;	// 1
	rNFADDR	= 0;	// 2
	rNFADDR	= (src >> 11) & 0xff;	// 3
	rNFADDR	= (src >> 19) & 0xff;	// 4
	rNFADDR	= (src >> 27) & 0xff;	// 5
	rNFCMD	= CMD_READ1;
	check_busy();
	int	i;
	for(i = 0;i < PAGE_SIZE;i++){
		*(char *)dec++	= rNFDATA8;
	}
	return	0;
}
int nand_read(int dec,int src,int len)
{
	if(src & (PAGE_SIZE -1))	return	-1;
	while(len > 0){
		nand_read_page(dec,src);
		dec	+= PAGE_SIZE;
		src	+= PAGE_SIZE;
		len	-= PAGE_SIZE;
	}
}