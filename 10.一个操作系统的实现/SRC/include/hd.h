#include	"def.h"
#include	"const.h"
//--------------------------------------------------------------------------------------------------*/
// 系统级函数
void hd_handler(void);
void _hd_identify(U16 device);
void _hd_close(U16 device);
U16 _hd_readwrite(int rd_wr,char * buf,U16 device,U16 sectors,U32 fst_lba);
void _hd_ioctl(void);
//--------------------------------------------------------------------------------------------------*/
// 用户级函数
void init_hd(void);
void hd_open(U16 device);
void hd_close(U16 device);
U32 hd_read(U16 device,char * buf,U32 offset,U32 sectors);
U32 hd_write(U16 device,char * buf,U32 offset,U32 sectors);
void hd_ioctl(U16 device);
//--------------------------------------------------------------------------------------------------*/
#ifndef	_HD_H_
#define	_HD_H_
// 硬盘命令
typedef	struct	hd_cmd
{
	U8	features;
	U8	count;
	U8	lba_low;
	U8	lba_mid;
	U8	lba_high;
	U8	device;	// device寄存器
	U8	command;
}HD_CMD;
// IPC机制中，通过p_para传递给硬盘驱动程序的消息结构
typedef	struct	hd_img
{
	U32	para;
	U16	device;	// 设备号
	U16	sectors;	// 扇区数
	char*	buf;	// 数据缓冲区
	U32	fst_lba;	// 起始扇区的LBA
}HD_MSG;
// 分区表结构
#define	SYS_ID_EXT	0x05
typedef	struct	part_table
{
	char	stat;		// 状态（80h = 可引导，00h = 不可引导）
	char	fst_head;		// 起始磁头号
	char	fst_sec;		// 起始扇区号（仅用了低6位，高2位为起始柱面号的8、9位）
	char	fst_cyl;		// 起始柱面号的低8位
	char	sys_ID;		// 分区类型
	char	end_head;		// 结束磁头号
	char	end_sec;		// 结束扇区号（仅用了低6位，高2位为起始柱面号的8、9位）
	char	end_cyl;		// 结束柱面号的低8位
	int	lba;		// 起始扇区的LBA
	int	nr_sectors;	// 扇区数目
}PART_TABLE;
// 分区信息
#define	PART_NULL	-1	// 空分区
#define	PART_PRIM	0	// 主分区
#define	PART_EXT	1	// 扩展分区
#define	PART_LOG	2	// 逻辑分区
typedef	struct	part_info
{
	int	part;	// 分区类型：主分区、扩展分区、逻辑分区
	int	lba;	// 起始LBA
	int	sectors;	// 扇区数
	int	base;	// 字节
	int	size;	// 字节
}PART_INFO;
// 硬盘信息
typedef	struct	hd_info
{
	int	open_cnt;	// 硬盘打开次数
	int	nr_prim;	// 主分区数
	int	nr_ext;	// 扩展分区数
	int	nr_log;	// 逻辑分区数
	PART_INFO	primary[PRIM_PER_DRIVER];	// 主分区、扩展分区
	PART_INFO	logic[SUB_PER_DRIVER];	// 逻辑分区
}HD_INFO;

#define	MAKE_DEVICE(lba,drv,lba_high)	((lba)<<6 | (drv)<<4 | ((lba_high) & 0xf) | 0xa0)
#define	DVR_OF_DEV(device)	((device & 0xff) < MAX_PRIM)?\
			((device & 0xff) / PRIM_PER_DRIVER)\
			:(((device & 0xff) - hd1a) / SUB_PER_DRIVER)

#endif	// _HD_H_
