#include	"def.h"
#include	"fs.h"

#ifndef	_FILEBUFF_H_
#define	_FILEBUFF_H_


#define	BUFF_BASE		0x100000				// 缓冲区起始地址
#define	BUFF_LIMIT	0x600000				// 缓冲区结束地址
#define	BUFF_SIZE		(4 * 1024)			// 每个缓冲区大小为4KB
#define	NR_BUFF		((BUFF_LIMIT - BUFF_BASE) / BUFF_SIZE)	// 缓冲区数目

typedef	struct	buff_head
{
	void*			buff_base;	// 缓冲区地址
	int			i_dev;		// 缓冲区对应的文件inode所在设备的设备号
	int			i_num;		// 缓冲区对应的文件inode在设备中的编号
	int			offset;		// 缓冲区对应的文件内偏移	BUFF_SIZE 对齐
	int			size;		// 该缓冲区在文件中对应的有效字节
	int			dirty;		// 缓冲区“脏”标志
	struct	buff_head*	pre;		// 前一个缓冲头
	struct	buff_head*	next;		// 下一个缓冲头
}BUFF_HEAD;
#define	BUFF_HEAD_ARRAY_SIZE	(sizeof(BUFF_HEAD) * NR_BUFF)	// 缓冲头数组的大小


void		init_file_buff(void);
BUFF_HEAD*	scan_buff(Inode* p_inode,int pos);
BUFF_HEAD*	get_buff(Inode* p_inode,int pos);
int		put_buff(BUFF_HEAD* p_bh);
int		sync_buff(Inode* p_inode,int flag);
int		write_buff(BUFF_HEAD* p_bh);
int		read_buff(BUFF_HEAD* p_bh);

#endif	// _FILEBUFF_H_
