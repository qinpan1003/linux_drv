#include	"def.h"
#include	"fs.h"

#ifndef	_FILEBUFF_H_
#define	_FILEBUFF_H_


#define	BUFF_BASE		0x100000				// ��������ʼ��ַ
#define	BUFF_LIMIT	0x600000				// ������������ַ
#define	BUFF_SIZE		(4 * 1024)			// ÿ����������СΪ4KB
#define	NR_BUFF		((BUFF_LIMIT - BUFF_BASE) / BUFF_SIZE)	// ��������Ŀ

typedef	struct	buff_head
{
	void*			buff_base;	// ��������ַ
	int			i_dev;		// ��������Ӧ���ļ�inode�����豸���豸��
	int			i_num;		// ��������Ӧ���ļ�inode���豸�еı��
	int			offset;		// ��������Ӧ���ļ���ƫ��	BUFF_SIZE ����
	int			size;		// �û��������ļ��ж�Ӧ����Ч�ֽ�
	int			dirty;		// ���������ࡱ��־
	struct	buff_head*	pre;		// ǰһ������ͷ
	struct	buff_head*	next;		// ��һ������ͷ
}BUFF_HEAD;
#define	BUFF_HEAD_ARRAY_SIZE	(sizeof(BUFF_HEAD) * NR_BUFF)	// ����ͷ����Ĵ�С


void		init_file_buff(void);
BUFF_HEAD*	scan_buff(Inode* p_inode,int pos);
BUFF_HEAD*	get_buff(Inode* p_inode,int pos);
int		put_buff(BUFF_HEAD* p_bh);
int		sync_buff(Inode* p_inode,int flag);
int		write_buff(BUFF_HEAD* p_bh);
int		read_buff(BUFF_HEAD* p_bh);

#endif	// _FILEBUFF_H_
