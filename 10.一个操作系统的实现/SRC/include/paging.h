#include	"def.h"


#ifndef	_PAGING_H_
#define	_PAGING_H_

// ��ҳ��ַ
#define	MemSize		32			// �ڴ��С��MB��
#define	NR_PDE		(MemSize / 4) 		// PDE������һ��PDE��Ӧ4MB
#define	NR_PTE		(MemSize * 1024 / 4)	// PTE������һ��PTE��Ӧ4KB
#define	SYS_PDB		0			// ҳĿ¼����ַ 	ע��:4KB����
#define	SYS_PTB		(SYS_PDB + 4 * 1024)	// ҳ�����ַ	ע��:4KB����

// ��ҳ����
#define	PG_P	(1<<0)	// Present
#define	PG_RW	(1<<1)	// Read/Write
#define	PG_US	(1<<2)	// User/Supervisor
#define	PG_PWT	(1<<3)	// Write-through
#define	PG_PCD	(1<<4)	// Cache disabled
#define	PG_A	(1<<5)	// Accessed
#define	PG_D	(1<<6)	// Dirty			ֻ������ҳ����
#define	PG_PS	(1<<7)	// Page size (0 indecate 4KB)	ֻ������ҳĿ¼��
#define	PG_G	(1<<8)	// Global page


#define	PAGE_BASE		0x600000				// ��ҳ�ڴ���ʼ��ַ	6MB
#define	PAGE_LIMIT	0x1f00000				// ��ҳ�ڴ������ַ 31MB
#define	PAGE_SIZE		(4 * 1024)			// ҳ��С
#define	NR_PAGE		((PAGE_LIMIT - PAGE_BASE) / PAGE_SIZE)	// ҳ��Ŀ
#define	PAGE_NUM(pa)	(((U32)pa - PAGE_BASE) / PAGE_SIZE)	// ҳ��

typedef	struct	page_head
{
	void*			page_base;	// ҳ��ַ
	int			share;		// ������
	struct	page_head*	pre;		// ǰһ��ҳͷ
	struct	page_head*	next;		// ��һ��ҳͷ
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
