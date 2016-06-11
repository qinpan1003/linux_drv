#include	"def.h"
#include	"const.h"
#ifndef	_FS_H_
#define	_FS_H_

//--------------------------------------------------------------------------------------------------*/
// 文件系统
int	fopen(char * pathname,int flags);
int	fwrite(int fd,void * buf,int offset,int count);
int	fread(int fd,void * buf,int offset,int count);
int	fclose(int fd);
int	fdelete(char * pathname,int flags);
int	lseek(int fd,int offset,int flags);
char* 	strip_path(char* pathname);

// 文件系统
#define	FS_BUF_SIZE		SECTOR_SIZE		// 文件系统缓冲区大小
#define	ROOT_DEV			DEVICE(MAJAR_HD,dh2a)	// 根设备号 3:26
#define	MAX_FILENAME_LEN		12			// 文件名最大长度
#define	SUPER_BLOCK_SIZE		sizeof(DEV_Super_Block)	// 设备中超级块大小
#define	FILE_MAX_SIZE		(1024 * 100)		// 文件大小最大值
#define	SECTS_PER_FILE		((FILE_MAX_SIZE + SECTOR_SIZE - 1) / SECTOR_SIZE)			// 每个文件占用的扇区数
#define	I_MODE_ROOT		1			// root的i_mode
#define	I_MODE_CHAR		2			// 字符设备的i_mode
#define	I_MODE_BLK		3			// 块设备的i_mode
#define	I_MODE_FILE		4			// 普通设备的i_mode
// 以下信息用于超级块
#define	MAGIC			0x10100101						// 魔数

#define	IMAP_1ST_SECTS		2							// imap第一个扇区号
#define	NR_INODES			23							// inodes总数
#define	NR_IMAP_SECTS		((NR_INODES + SECTOR_SIZE * 8 - 1) / (SECTOR_SIZE * 8))		// inode-map 占用扇区数

#define	SMAP_1ST_SECTS		(IMAP_1ST_SECTS + NR_IMAP_SECTS)				// smap第一个扇区号
#define	NR_SECTS			((FILE_MAX_SIZE * (NR_INODES-3) + SECTOR_SIZE - 1) / SECTOR_SIZE)	// 数据扇区总数	附：-3是考虑3个TTY不占用扇区
#define	NR_SMAP_SECTS		((NR_SECTS + SECTOR_SIZE * 8 - 1) / (SECTOR_SIZE * 8))		// sector-map占用扇区数

#define	INODE_1ST_SECTS		(SMAP_1ST_SECTS + NR_SMAP_SECTS)				// inode_array第一个扇区号
#define	INODE_SIZE		sizeof(DEV_Inode)						// 设备中inode 大小
#define	INODE_PER_SECT		(SECTOR_SIZE / INODE_SIZE)					// 每扇区能容纳的inode数
#define	NR_INODE_SECTS		((INODE_SIZE * NR_INODES + SECTOR_SIZE - 1) / SECTOR_SIZE)		// inode_array占用扇区数

#define	DAT_1ST_SECT		(INODE_1ST_SECTS + NR_INODE_SECTS)				// 第一个数据扇区号
#define	DIR_ENT_SIZE		sizeof(Dir_Entry)						// dir_entry的大小
#define	DIR_ENT_INODE_OFF		0							// dir_entry结构中inode_nr的偏移
#define	DIR_ENT_FNAME_OFF		4							// dir_entry结构中name的偏移
#define	DIR_ENT_PER_SECT		(SECTOR_SIZE / DIR_ENT_SIZE)					// 每个root扇区能容纳的dir_entry数
#define	ROOT_SECTS		((DIR_ENT_SIZE * NR_INODES + SECTOR_SIZE - 1)/SECTOR_SIZE)		// root占用扇区数
#define	ROOT_INODE		1							// root directory 的inode号
#define	INODE_ISEZE_OFF		4							// inode结构中i_size的偏移
#define	INODE_START_OFF		8							// inode结构中i_start_sect的偏移
// 以上信息用于超级块
// 任务文件
#define	MAX_ALL_FILE	1024	// 所有文件描述符总数
#define	MAX_ALL_INODE	64	// 所有inode总数
#define	MAX_TASK_FILE	32	// 某个任务打开文件最大数

#define	O_CREATE		1	// 如果待打开的文件不存在，那就创建
#define	RD_WR		1	// 文件访问方式
#define	FS_OPEN		0	// 打开文件
#define	FS_CLOSE		1	// 关闭文件
#define	FS_WRITE		2	// 读文件
#define	FS_READ		3	// 写文件
#define	FS_DEL		4	// 删除文件
#define	FS_RESUME		5	// 唤醒进程
#define	FS_FORK		6	// FORK
#define	FS_EXIT		7	// EXIT
#define	FS_LSEEK		8	// LOAD_ELF


typedef	struct	dev_super_block
{
	U32	magic;		// 魔数
	
	U32	imap_1st_sects;	// imap第一个扇区号
	U32	nr_inodes;	// inodes总数
	U32	nr_imap_sects;	// inode-map 占用扇区数
	
	U32	smap_1st_sects;	// smap第一个扇区号
	U32	nr_sects;		// 扇区总数
	U32	nr_smap_sects;	// sector-map占用扇区数
	
	U32	inode_1st_sects;	// inode_array第一个扇区号
	U32	inode_size;	// inode 大小
	U32	nr_inode_sects;	// inode占用扇区数
	
	U32	dat_1st_sect;	// 第一个数据扇区号
	U32	root_inode;	// root directory 的inode号
	
	U32	inode_isize_off;	// inode结构中i_size的偏移
	U32	inode_start_off;	// inode结构中i_start_sect的偏移
	U32	dir_ent_size;	// dir_entry的大小
	U32	dir_ent_inode_off;	// dir_entry结构中inode_nr的偏移
	U32	dir_ent_fname_off;	// dir_entry结构中name的偏移
	U32	root_sects;	// root占用扇区数
}DEV_Super_Block;

typedef struct super_block
{
	U32	magic;		// 魔数
	
	U32	imap_1st_sects;	// imap第一个扇区号
	U32	nr_inodes;	// inodes总数
	U32	nr_imap_sects;	// inode-map 占用扇区数
	
	U32	smap_1st_sects;	// smap第一个扇区号
	U32	nr_sects;		// 扇区总数
	U32	nr_smap_sects;	// sector-map占用扇区数
	
	U32	inode_1st_sects;	// inode_array第一个扇区号
	U32	inode_size;	// inode 大小
	U32	inode_per_sect;	// 每扇区能容纳的inode数
	U32	nr_inode_sects;	// inode占用扇区数
	
	U32	dat_1st_sect;	// 第一个数据扇区号
	U32	dir_ent_size;	// dir_entry的大小
	U32	dir_ent_inode_off;	// dir_entry结构中inode_nr的偏移
	U32	dir_ent_fname_off;	// dir_entry结构中name的偏移
	U32	dir_ent_per_sect;	// 每个root扇区能容纳的dir_entry数
	U32	root_sects;	// root占用扇区数
	U32	root_inode;	// root directory 的inode号
	U32	inode_isize_off;	// inode结构中i_size的偏移
	U32	inode_start_off;	// inode结构中i_start_sect的偏移
	//----------------------------------------------------------
	// 以下内容只存在于内存中
	int	sb_dev;		// 超级块所在设备的设备号
}Super_Block;

typedef	struct	dev_inode
{
	U32	i_mode;		// 文件类型
	U32	i_size;		// 文件大小
	U32	i_start_sect;	// 第一个数据区的扇区号
	U32	i_nr_sects;	// 扇区总数
	U8	_unused[16];	// 未使用。用于地址对齐
}DEV_Inode;

typedef	struct	inode
{
	U32	i_mode;		// 文件类型
	U32	i_size;		// 文件大小
	U32	i_start_sect;	// 第一个数据区的扇区号
	U32	i_nr_sects;	// 扇区总数
	U8	_unused[16];	// 未使用。用于地址对齐
	//----------------------------------------------------------
	// 以下内容只存在于内存中
	int	i_dev;	// 该inode所在的设备号
	int	i_cnt;	// 共享该inode的进程数
	int	i_num;	// inode在设备中的编号
}Inode;

typedef	struct	dir_entry
{
	int	inode_nr;			// 文件对应的inode号
	char	name[MAX_FILENAME_LEN];	// 文件名
}Dir_Entry;

typedef	struct	file_desc
{
	int	fd_mode;		// 文件操作模式。读、写
	int	fd_pos;		// 文件内操作指针
	Inode*	fd_inode;		// 文件对应的inode指针
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

