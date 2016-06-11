#include	"def.h"
#include	"const.h"
//--------------------------------------------------------------------------------------------------*/
// ϵͳ������
void hd_handler(void);
void _hd_identify(U16 device);
void _hd_close(U16 device);
U16 _hd_readwrite(int rd_wr,char * buf,U16 device,U16 sectors,U32 fst_lba);
void _hd_ioctl(void);
//--------------------------------------------------------------------------------------------------*/
// �û�������
void init_hd(void);
void hd_open(U16 device);
void hd_close(U16 device);
U32 hd_read(U16 device,char * buf,U32 offset,U32 sectors);
U32 hd_write(U16 device,char * buf,U32 offset,U32 sectors);
void hd_ioctl(U16 device);
//--------------------------------------------------------------------------------------------------*/
#ifndef	_HD_H_
#define	_HD_H_
// Ӳ������
typedef	struct	hd_cmd
{
	U8	features;
	U8	count;
	U8	lba_low;
	U8	lba_mid;
	U8	lba_high;
	U8	device;	// device�Ĵ���
	U8	command;
}HD_CMD;
// IPC�����У�ͨ��p_para���ݸ�Ӳ�������������Ϣ�ṹ
typedef	struct	hd_img
{
	U32	para;
	U16	device;	// �豸��
	U16	sectors;	// ������
	char*	buf;	// ���ݻ�����
	U32	fst_lba;	// ��ʼ������LBA
}HD_MSG;
// ������ṹ
#define	SYS_ID_EXT	0x05
typedef	struct	part_table
{
	char	stat;		// ״̬��80h = ��������00h = ����������
	char	fst_head;		// ��ʼ��ͷ��
	char	fst_sec;		// ��ʼ�����ţ������˵�6λ����2λΪ��ʼ����ŵ�8��9λ��
	char	fst_cyl;		// ��ʼ����ŵĵ�8λ
	char	sys_ID;		// ��������
	char	end_head;		// ������ͷ��
	char	end_sec;		// ���������ţ������˵�6λ����2λΪ��ʼ����ŵ�8��9λ��
	char	end_cyl;		// ��������ŵĵ�8λ
	int	lba;		// ��ʼ������LBA
	int	nr_sectors;	// ������Ŀ
}PART_TABLE;
// ������Ϣ
#define	PART_NULL	-1	// �շ���
#define	PART_PRIM	0	// ������
#define	PART_EXT	1	// ��չ����
#define	PART_LOG	2	// �߼�����
typedef	struct	part_info
{
	int	part;	// �������ͣ�����������չ�������߼�����
	int	lba;	// ��ʼLBA
	int	sectors;	// ������
	int	base;	// �ֽ�
	int	size;	// �ֽ�
}PART_INFO;
// Ӳ����Ϣ
typedef	struct	hd_info
{
	int	open_cnt;	// Ӳ�̴򿪴���
	int	nr_prim;	// ��������
	int	nr_ext;	// ��չ������
	int	nr_log;	// �߼�������
	PART_INFO	primary[PRIM_PER_DRIVER];	// ����������չ����
	PART_INFO	logic[SUB_PER_DRIVER];	// �߼�����
}HD_INFO;

#define	MAKE_DEVICE(lba,drv,lba_high)	((lba)<<6 | (drv)<<4 | ((lba_high) & 0xf) | 0xa0)
#define	DVR_OF_DEV(device)	((device & 0xff) < MAX_PRIM)?\
			((device & 0xff) / PRIM_PER_DRIVER)\
			:(((device & 0xff) - hd1a) / SUB_PER_DRIVER)

#endif	// _HD_H_
