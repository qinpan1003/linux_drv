#include	"mm.h"
#ifndef	_INIT_H_
#define	_INIT_H_


// 0x11f000对应物理地址0x9f000,因为0x9f000 - 0x100000之间的内存不可用,而且init不能超过0x100000(1MB 以后的物理地址有其他用处(文件缓存))
#define	PROC_INIT_ESP	0x11f000		// proc_init的堆栈指针
#define	PROC_INIT_BASE	0x80000		// proc_init的内存基地址




#endif	// _INIT_H_

