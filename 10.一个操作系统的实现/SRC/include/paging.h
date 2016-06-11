#include	"def.h"


#ifndef	_PAGING_H_
#define	_PAGING_H_

// 分页地址
#define	MemSize		32			// 内存大小（MB）
#define	NR_PDE		(MemSize / 4) 		// PDE个数。一个PDE对应4MB
#define	NR_PTE		(MemSize * 1024 / 4)	// PTE个数。一个PTE对应4KB
#define	SYS_PDB		0			// 页目录基地址 	注意:4KB对齐
#define	SYS_PTB		(SYS_PDB + 4 * 1024)	// 页表基地址	注意:4KB对齐

// 分页属性
#define	PG_P	(1<<0)	// Present
#define	PG_RW	(1<<1)	// Read/Write
#define	PG_US	(1<<2)	// User/Supervisor
#define	PG_PWT	(1<<3)	// Write-through
#define	PG_PCD	(1<<4)	// Cache disabled
#define	PG_A	(1<<5)	// Accessed
#define	PG_D	(1<<6)	// Dirty			只适用于页表项
#define	PG_PS	(1<<7)	// Page size (0 indecate 4KB)	只适用于页目录项
#define	PG_G	(1<<8)	// Global page


#define	PAGE_BASE		0x600000				// 分页内存起始地址	6MB
#define	PAGE_LIMIT	0x1f00000				// 分页内存结束地址 31MB
#define	PAGE_SIZE		(4 * 1024)			// 页大小
#define	NR_PAGE		((PAGE_LIMIT - PAGE_BASE) / PAGE_SIZE)	// 页数目
#define	PAGE_NUM(pa)	(((U32)pa - PAGE_BASE) / PAGE_SIZE)	// 页号

typedef	struct	page_head
{
	void*			page_base;	// 页地址
	int			share;		// 共享数
	struct	page_head*	pre;		// 前一个页头
	struct	page_head*	next;		// 后一个页头
}PAGE_HEAD;


void		init_mm_page(void);
PAGE_HEAD*	get_page(void);
int		put_page(PAGE_HEAD* p_bh);
void		nopage_fault(void);
void		write_fault(void);
void*		alloc_a_page(void);
void		UnShare(void* pa);
int		IsShared(void* pa);
void		Share(void* pa);
void		map_a_page(U32* pdb,void* va,void*pa,int flag);
int		IsWriteLock(U32* pdb,void* va);
int		IsPresent(U32* pdb,void* va);

#endif	// _PAGING_H_
