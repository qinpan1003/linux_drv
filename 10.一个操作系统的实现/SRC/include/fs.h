#include	"def.h"
#include	"const.h"
#ifndef	_FS_H_
#define	_FS_H_

//--------------------------------------------------------------------------------------------------*/
// �ļ�ϵͳ
int	fopen(char * pathname,int flags);
int	fwrite(int fd,void * buf,int offset,int count);
int	fread(int fd,void * buf,int offset,int count);
int	fclose(int fd);
int	fdelete(char * pathname,int flags);
int	lseek(int fd,int offset,int flags);
char* 	strip_path(char* pathname);

// �ļ�ϵͳ
#define	FS_BUF_SIZE		SECTOR_SIZE		// �ļ�ϵͳ��������С
#define	ROOT_DEV			DEVICE(MAJAR_HD,dh2a)	// ���豸�� 3:26
#define	MAX_FILENAME_LEN		12			// �ļ�����󳤶�
#define	SUPER_BLOCK_SIZE		sizeof(DEV_Super_Block)	// �豸�г������С
#define	FILE_MAX_SIZE		(1024 * 100)		// �ļ���С���ֵ
#define	SECTS_PER_FILE		((FILE_MAX_SIZE + SECTOR_SIZE - 1) / SECTOR_SIZE)			// ÿ���ļ�ռ�õ�������
#define	I_MODE_ROOT		1			// root��i_mode
#define	I_MODE_CHAR		2			// �ַ��豸��i_mode
#define	I_MODE_BLK		3			// ���豸��i_mode
#define	I_MODE_FILE		4			// ��ͨ�豸��i_mode
// ������Ϣ���ڳ�����
#define	MAGIC			0x10100101						// ħ��

#define	IMAP_1ST_SECTS		2							// imap��һ��������
#define	NR_INODES			23							// inodes����
#define	NR_IMAP_SECTS		((NR_INODES + SECTOR_SIZE * 8 - 1) / (SECTOR_SIZE * 8))		// inode-map ռ��������

#define	SMAP_1ST_SECTS		(IMAP_1ST_SECTS + NR_IMAP_SECTS)				// smap��һ��������
#define	NR_SECTS			((FILE_MAX_SIZE * (NR_INODES-3) + SECTOR_SIZE - 1) / SECTOR_SIZE)	// ������������	����-3�ǿ���3��TTY��ռ������
#define	NR_SMAP_SECTS		((NR_SECTS + SECTOR_SIZE * 8 - 1) / (SECTOR_SIZE * 8))		// sector-mapռ��������

#define	INODE_1ST_SECTS		(SMAP_1ST_SECTS + NR_SMAP_SECTS)				// inode_array��һ��������
#define	INODE_SIZE		sizeof(DEV_Inode)						// �豸��inode ��С
#define	INODE_PER_SECT		(SECTOR_SIZE / INODE_SIZE)					// ÿ���������ɵ�inode��
#define	NR_INODE_SECTS		((INODE_SIZE * NR_INODES + SECTOR_SIZE - 1) / SECTOR_SIZE)		// inode_arrayռ��������

#define	DAT_1ST_SECT		(INODE_1ST_SECTS + NR_INODE_SECTS)				// ��һ������������
#define	DIR_ENT_SIZE		sizeof(Dir_Entry)						// dir_entry�Ĵ�С
#define	DIR_ENT_INODE_OFF		0							// dir_entry�ṹ��inode_nr��ƫ��
#define	DIR_ENT_FNAME_OFF		4							// dir_entry�ṹ��name��ƫ��
#define	DIR_ENT_PER_SECT		(SECTOR_SIZE / DIR_ENT_SIZE)					// ÿ��root���������ɵ�dir_entry��
#define	ROOT_SECTS		((DIR_ENT_SIZE * NR_INODES + SECTOR_SIZE - 1)/SECTOR_SIZE)		// rootռ��������
#define	ROOT_INODE		1							// root directory ��inode��
#define	INODE_ISEZE_OFF		4							// inode�ṹ��i_size��ƫ��
#define	INODE_START_OFF		8							// inode�ṹ��i_start_sect��ƫ��
// ������Ϣ���ڳ�����
// �����ļ�
#define	MAX_ALL_FILE	1024	// �����ļ�����������
#define	MAX_ALL_INODE	64	// ����inode����
#define	MAX_TASK_FILE	32	// ĳ��������ļ������

#define	O_CREATE		1	// ������򿪵��ļ������ڣ��Ǿʹ���
#define	RD_WR		1	// �ļ����ʷ�ʽ
#define	FS_OPEN		0	// ���ļ�
#define	FS_CLOSE		1	// �ر��ļ�
#define	FS_WRITE		2	// ���ļ�
#define	FS_READ		3	// д�ļ�
#define	FS_DEL		4	// ɾ���ļ�
#define	FS_RESUME		5	// ���ѽ���
#define	FS_FORK		6	// FORK
#define	FS_EXIT		7	// EXIT
#define	FS_LSEEK		8	// LOAD_ELF


typedef	struct	dev_super_block
{
	U32	magic;		// ħ��
	
	U32	imap_1st_sects;	// imap��һ��������
	U32	nr_inodes;	// inodes����
	U32	nr_imap_sects;	// inode-map ռ��������
	
	U32	smap_1st_sects;	// smap��һ��������
	U32	nr_sects;		// ��������
	U32	nr_smap_sects;	// sector-mapռ��������
	
	U32	inode_1st_sects;	// inode_array��һ��������
	U32	inode_size;	// inode ��С
	U32	nr_inode_sects;	// inodeռ��������
	
	U32	dat_1st_sect;	// ��һ������������
	U32	root_inode;	// root directory ��inode��
	
	U32	inode_isize_off;	// inode�ṹ��i_size��ƫ��
	U32	inode_start_off;	// inode�ṹ��i_start_sect��ƫ��
	U32	dir_ent_size;	// dir_entry�Ĵ�С
	U32	dir_ent_inode_off;	// dir_entry�ṹ��inode_nr��ƫ��
	U32	dir_ent_fname_off;	// dir_entry�ṹ��name��ƫ��
	U32	root_sects;	// rootռ��������
}DEV_Super_Block;

typedef struct super_block
{
	U32	magic;		// ħ��
	
	U32	imap_1st_sects;	// imap��һ��������
	U32	nr_inodes;	// inodes����
	U32	nr_imap_sects;	// inode-map ռ��������
	
	U32	smap_1st_sects;	// smap��һ��������
	U32	nr_sects;		// ��������
	U32	nr_smap_sects;	// sector-mapռ��������
	
	U32	inode_1st_sects;	// inode_array��һ��������
	U32	inode_size;	// inode ��С
	U32	inode_per_sect;	// ÿ���������ɵ�inode��
	U32	nr_inode_sects;	// inodeռ��������
	
	U32	dat_1st_sect;	// ��һ������������
	U32	dir_ent_size;	// dir_entry�Ĵ�С
	U32	dir_ent_inode_off;	// dir_entry�ṹ��inode_nr��ƫ��
	U32	dir_ent_fname_off;	// dir_entry�ṹ��name��ƫ��
	U32	dir_ent_per_sect;	// ÿ��root���������ɵ�dir_entry��
	U32	root_sects;	// rootռ��������
	U32	root_inode;	// root directory ��inode��
	U32	inode_isize_off;	// inode�ṹ��i_size��ƫ��
	U32	inode_start_off;	// inode�ṹ��i_start_sect��ƫ��
	//----------------------------------------------------------
	// ��������ֻ�������ڴ���
	int	sb_dev;		// �����������豸���豸��
}Super_Block;

typedef	struct	dev_inode
{
	U32	i_mode;		// �ļ�����
	U32	i_size;		// �ļ���С
	U32	i_start_sect;	// ��һ����������������
	U32	i_nr_sects;	// ��������
	U8	_unused[16];	// δʹ�á����ڵ�ַ����
}DEV_Inode;

typedef	struct	inode
{
	U32	i_mode;		// �ļ�����
	U32	i_size;		// �ļ���С
	U32	i_start_sect;	// ��һ����������������
	U32	i_nr_sects;	// ��������
	U8	_unused[16];	// δʹ�á����ڵ�ַ����
	//----------------------------------------------------------
	// ��������ֻ�������ڴ���
	int	i_dev;	// ��inode���ڵ��豸��
	int	i_cnt;	// �����inode�Ľ�����
	int	i_num;	// inode���豸�еı��
}Inode;

typedef	struct	dir_entry
{
	int	inode_nr;			// �ļ���Ӧ��inode��
	char	name[MAX_FILENAME_LEN];	// �ļ���
}Dir_Entry;

typedef	struct	file_desc
{
	int	fd_mode;		// �ļ�����ģʽ������д
	int	fd_pos;		// �ļ��ڲ���ָ��
	Inode*	fd_inode;		// �ļ���Ӧ��inodeָ��
}File_Desc;

typedef	struct	fs_msg
{
	U32	para;
	char *	pathname;
	int	flags;
	int	fd;
	int	count;
	char*	buf;
	int	offset;
}FS_MSG;

#endif	// _FS_H_

