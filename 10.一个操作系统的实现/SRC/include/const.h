//--------------------------------------------------------------------------------------------------*/
// ���ֵ����Сֵ
#define	MAX(x,y)		((x)>(y)?(x):(y))
#define	MIN(x,y)		((x)<(y)?(x):(y))
//--------------------------------------------------------------------------------------------------*/
// assert�����ж�
#define	if_on		( (get_eflags() & (1 << 9)) && int_off_num == 0)
#define	if_off		(!(get_eflags() & (1 << 9)) && int_off_num != 0)
//--------------------------------------------------------------------------------------------------*/
// ��׼�������
#define	STDIN		0	// ��׼����
#define	STDOUT		1	// ��׼���
//--------------------------------------------------------------------------------------------------*/
// ���豸��
#define	MAJAR_HD		3	// Ӳ�����豸��
#define	MAJAR_TTY		4	// TTY���豸��

#define	MAJAR_SHIFT	8	// ���豸����λ��
#define	MINOR_MASK	0xff	// ���豸��������
#define	MAJAR(device)	( ( (device) >> (MAJAR_SHIFT)) & (MINOR_MASK))	// ��ȡ���豸��
#define	MINOR(device)	((device) & (MINOR_MASK))			// ��ȡ���豸��
#define	DEVICE(majar,minor)	(((majar) << (MAJAR_SHIFT)) | ((minor) & (MINOR_MASK)))	// ���������豸�Ż���豸��
//--------------------------------------------------------------------------------------------------*/
// GDT
#define	NR_GDT		6		// GDT��С
#define	NR_IDT		256		// IDT��С

#define	Selector_Kernel_DS		0x08
#define	Selector_Kernel_CS 		0x10
#define	Selector_User_DS		(0x18 + 3)
#define	Selector_User_CS 		(0x20 + 3)
#define	Selector_TSS		0x28
//--------------------------------------------------------------------------------------------------*/
// ��ʱ��
#define	TIMER_MOD_REG	0x43		// ��ʱ��ģʽ���ƼĴ���
#define	TIMER0_DAT_REG	0x40		// ��ʱ��0����ֵ�Ĵ���
#define	TICKS_PER_SEC	100		// ʱ�ӵδ�Ƶ��
#define	TIMER0_NUM	(1193180 / TICKS_PER_SEC)	// ��ʱ��0����ֵ
#define	TIMER_MOD		0x34		// ��ʱ��ģʽ������	��ʱ��0���ȶ�д���ֽڡ��ٶ�д���ֽ�
//--------------------------------------------------------------------------------------------------*/
// ����
// ���̿�����
#define	DAT8042		0x60		// 8042���ݼĴ���
#define	CTL8042		0x64		// 8042���ƼĴ�����д����״̬�Ĵ���������
#define	LED_COMM		0xed
#define	LED_ACK		0xfa
// ����ɨ����ӳ���
#define	MAP_COL		3		// ӳ�����Ƴɶ�ά���飬�ڶ�ά��СΪ3���ֱ�Ϊ��������ĳ����Shift + ĳ������0xE0ǰ׺��ɨ����
// ɨ���뻺����
#define	KB_IN_BYTES	100		// �������뻺������С
// ���ⰴ������	32λ
#define	SPEC		0x80000000
#define	ESC		(SPEC + 0)
#define	BACKSPACE		(SPEC + 1)
#define	TAB		(SPEC + 2)
#define	ENTER		(SPEC + 3)
#define	PAD_ENTER		(SPEC + 4)
#define	CTRL_L		(SPEC + 5)
#define	CTRL_R		(SPEC + 6)
#define	SHIFT_L		(SPEC + 7)
#define	SHIFT_R		(SPEC + 8)
#define	PAD_SLASH		(SPEC + 9)
#define	ALT_L		(SPEC + 10)
#define	ALT_R		(SPEC + 11)
#define	CAPS_LOCK		(SPEC + 12)
#define	F1		(SPEC + 13)
#define	F2		(SPEC + 14)
#define	F3		(SPEC + 15)
#define	F4		(SPEC + 16)
#define	F5		(SPEC + 17)
#define	F6		(SPEC + 18)
#define	F7		(SPEC + 19)
#define	F8		(SPEC + 20)
#define	F9		(SPEC + 21)
#define	F10		(SPEC + 22)
#define	F11		(SPEC + 23)
#define	F12		(SPEC + 24)
#define	NUM_LOCK		(SPEC + 25)
#define	SCROLL_LOCK	(SPEC + 26)
#define	PAD_HOME		(SPEC + 27)
#define	PAD_UP		(SPEC + 28)
#define	PAD_PAGEUP	(SPEC + 29)
#define	PAD_MINUS		(SPEC + 30)
#define	PAD_LEFT		(SPEC + 31)
#define	PAD_MID		(SPEC + 32)
#define	PAD_RIGHT		(SPEC + 33)
#define	PAD_PLUS		(SPEC + 34)
#define	PAD_END		(SPEC + 35)
#define	PAD_DOWN		(SPEC + 36)
#define	PAD_PAGEDOWN	(SPEC + 37)
#define	PAD_INS		(SPEC + 38)
#define	PAD_DOT		(SPEC + 39)
#define	HOME		(SPEC + 40)
#define	UP		(SPEC + 41)
#define	PAGEUP		(SPEC + 42)
#define	LEFT		(SPEC + 43)
#define	RIGHT		(SPEC + 44)
#define	END		(SPEC + 45)
#define	DOWN		(SPEC + 46)
#define	PAGEDOWN		(SPEC + 47)
#define	INSERT		(SPEC + 48)
#define	DELETE		(SPEC + 49)
#define	GUI_L		(SPEC + 50)
#define	GUI_R		(SPEC + 51)
#define	APPS		(SPEC + 52)
//--------------------------------------------------------------------------------------------------*/
// VGA
#define	CRTC_ADD_REG	0x3d4
#define	CRTC_DAT_REG	0x3d5
#define	Start_Addr_H_Reg	0x0c
#define	Start_Addr_L_Reg	0x0d
#define	Cur_Loc_H_Reg	0x0e
#define	Cur_Loc_L_Reg	0x0f
//--------------------------------------------------------------------------------------------------*/
// tty
#define	NR_TTY		3
#define	TTY_IN_SIZE	30		// U32	TTY���뻺���С	�����ʵʱ��ȡ����һ����һ������������СһЩ
#define	TTY_OUT_SIZE	100		// U8	TTY��������С	���Ҫ��ʱ�䱣�棬Ҫ���ô�һЩ
#define	EVERY_TTY		0xffffffff	// ����console
//--------------------------------------------------------------------------------------------------*/
// console
#define	NR_CONSOLE	NR_TTY
#define	VGA_SIZE_PER_CON	(10 * 1024)
#define	CON_GAP		800		// ��������console�Դ�֮��ļ�϶ 160����	ע�⣺�ܹ�ֻ��32KB�Դ�
#define	VGA_BASE		0		// ����������0xb8000��ƫ��
#define	EVERY_CON		0xffffffff	// ����console
#define	VGA_MEM_BASE	0xb8000
//--------------------------------------------------------------------------------------------------*/
// ϵͳ����
#define	SYS_CALL_VECTOR	0x80		// ϵͳ���ú�
//--------------------------------------------------------------------------------------------------*/
// attr2
#define	DA_32	0x40	// 32λ��
#define	DA_16	0x00	// 16λ��
#define	DA_4K	0x80	// ����4KB
// attr1
#define	DA_DPL0	0x00	// DPL = 0
#define	DA_DPL1	0x20	// DPL = 1
#define	DA_DPL2	0x40	// DPL = 2
#define	DA_DPL3	0x60	// DPL = 3
// attr1
//-------------------�洢��������
#define	DA_C	0x99	// ���ڵ�  ���ɶ�����һ�´����
#define	DA_CR	0x9b	// ���ڵ�  �ɶ�ȡ����һ�´����
#define	DA_CCO	0x9d	// ���ڵ�  ���ɶ���  һ�´����
#define	DA_CCOR	0x9f	// ���ڵ�  �ɶ�ȡ��  һ�´����

#define	DA_DR	0x91	// ���ڵ�  ֻ�����ݶ�
#define	DA_DRW	0x93	// ���ڵ�  �ɶ�д���ݶ�
#define	DA_SRW	0x97	// ���ڵ�  ��ջ��	----------��������⣡��ʵ�����֣���ջ��Ӧ����DA_DRW
//-------------------ϵͳ��������
#define	DA_LDT		0x82	// ���ڵ�  �ֲ�������
#define	DA_TaskGate	0x85	// ���ڵ�  ������
#define	DA_386TSS		0x89	// ���ڵ�  386 TSS
#define	DA_386CGate	0x8c	// ���ڵ�  386 ������
#define	DA_386IGate	0x8e	// ���ڵ�  386 �ж���
#define	DA_386TGate	0x8f	// ���ڵ�  386 ������
//--------------------------------------------------------------------------------------------------*/
// ѡ�������
#define	S_TI	4	// �ֲ�ѡ���
#define	S_0	0	// DPL0
#define	S_1	1	// DPL1
#define	S_2	2	// DPL2
#define	S_3	3	// DPL3
//--------------------------------------------------------------------------------------------------*/
// �ж�8259A
#define	Int_M_Ctl	0x20	// ��Ƭ���Ƶ�ַ
#define	Int_S_Ctl	0xa0	// ��Ƭ���ݵ�ַ
#define	Int_M_Dat	0x21	// ��Ƭ���Ƶ�ַ
#define	Int_S_Dat	0xa1	// ��Ƭ���ݵ�ַ
#define	Int_EOI	0x20	// EOI
#define	Int_M_R	0x20	// ��Ƭirp0��Ӧ���ж�����
#define	Int_S_R	0x28	// ��Ƭirq8��Ӧ���ж�����
//--------------------------------------------------------------------------------------------------*/
// ��ʾ��ɫ
// �ַ����Զ��壺
// bit 7		��˸
// bit 6-4	������ɫ
// bit 3		����
// bit 2-0	ǰ����ɫ
#define	Light	0x08	// ����
#define	Flash	0x80	// ��˸

#define	Black	0	// ��
#define	Blue	1	// ��
#define	Green	2	// ��
#define	Qing	3	// ��
#define	Red	4	// ��
#define	Red1	5	// ���
#define	He	6	// ��ɫ������ʱΪ��ɫ
#define	White	7	// ��ɫ
//--------------------------------------------------------------------------------------------------*/
// task_hd Ӳ����������
#define	MASTER		0	// ����
#define	SLAVER		1	// ����
#define	SECTOR_SIZE	512	// Ӳ��������С
#define	HD_BUF_SIZE	SECTOR_SIZE// Ӳ�̶�д��������С
#define	HD_BUSY		0x80	// Ӳ��æλ
#define	HD_TIMEOUT	100	// Ӳ�̳�ʱʱ�䣨ticks��
// �Ĵ����˿� 		Primary	Secondary
#define	HD_DATA		0x1f0	// 0x170
#define	HD_FEATURES	0x1f1	// 0x171
#define	HD_SECTOR_COUNT	0x1f2	// 0x172
#define	HD_LBA_LOW	0x1f3	// 0x173
#define	HD_LBA_MID	0x1f4	// 0x174
#define	HD_LBA_HIGH	0x1f5	// 0x175
#define	HD_DEVICE		0x1f6	// 0x176
#define	HD_COMMAND	0x1f7	// 0x177
#define	HD_DEVICE_CTL	0x3f6	// 0x376
// Ӳ������
#define	HD_IDENTIFY	0xec	// ��ȡӲ�̲���
#define	HD_READ		0x20	// Ӳ�̶�
#define	HD_WRITE		0x30	// Ӳ��д

// �豸IPC����
#define	HARD_INT		-1	// Ӳ�жϷ��͵���Ϣ
#define	DEV_OPEN		0	// ��Ӳ��
#define	DEV_CLOSE		1	// �ر�Ӳ��
#define	DEV_READ		2	// ��
#define	DEV_WRITE		3	// д
#define	DEV_IOCTL		4	// IO����
// Ӳ�̷���
#define	NR_DRIVERS	2	// ������
#define	PART_PER_DRIVER	4	// ÿ�̷�����
#define	PRIM_PER_DRIVER	(PART_PER_DRIVER + 1)		// ÿ����������������������һ����������
#define	SUB_PER_PART	16				// ÿ����չ�������߼����������
#define	SUB_PER_DRIVER	(SUB_PER_PART * PART_PER_DRIVER)	// ÿ���߼����������
#define	MAX_PRIM		(PRIM_PER_DRIVER * NR_DRIVERS)	// ����������
#define	MAX_SUB		(SUB_PER_DRIVER * NR_DRIVERS)		// �߼���������
#define	hd1a		MAX_PRIM				// hd1a�Ĵ��豸��
#define	dh2a		(hd1a + SUB_PER_PART)		// hd2a�Ĵ��豸��


