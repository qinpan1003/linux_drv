//--------------------------------------------------------------------------------------------------*/
// 最大值、最小值
#define	MAX(x,y)		((x)>(y)?(x):(y))
#define	MIN(x,y)		((x)<(y)?(x):(y))
//--------------------------------------------------------------------------------------------------*/
// assert开关中断
#define	if_on		( (get_eflags() & (1 << 9)) && int_off_num == 0)
#define	if_off		(!(get_eflags() & (1 << 9)) && int_off_num != 0)
//--------------------------------------------------------------------------------------------------*/
// 标准输入输出
#define	STDIN		0	// 标准输入
#define	STDOUT		1	// 标准输出
//--------------------------------------------------------------------------------------------------*/
// 主设备号
#define	MAJAR_HD		3	// 硬盘主设备号
#define	MAJAR_TTY		4	// TTY主设备号

#define	MAJAR_SHIFT	8	// 主设备号移位数
#define	MINOR_MASK	0xff	// 次设备号屏蔽码
#define	MAJAR(device)	( ( (device) >> (MAJAR_SHIFT)) & (MINOR_MASK))	// 获取主设备号
#define	MINOR(device)	((device) & (MINOR_MASK))			// 获取次设备号
#define	DEVICE(majar,minor)	(((majar) << (MAJAR_SHIFT)) | ((minor) & (MINOR_MASK)))	// 由主、次设备号获得设备号
//--------------------------------------------------------------------------------------------------*/
// GDT
#define	NR_GDT		6		// GDT大小
#define	NR_IDT		256		// IDT大小

#define	Selector_Kernel_DS		0x08
#define	Selector_Kernel_CS 		0x10
#define	Selector_User_DS		(0x18 + 3)
#define	Selector_User_CS 		(0x20 + 3)
#define	Selector_TSS		0x28
//--------------------------------------------------------------------------------------------------*/
// 定时器
#define	TIMER_MOD_REG	0x43		// 定时器模式控制寄存器
#define	TIMER0_DAT_REG	0x40		// 定时器0计数值寄存器
#define	TICKS_PER_SEC	100		// 时钟滴答频率
#define	TIMER0_NUM	(1193180 / TICKS_PER_SEC)	// 定时器0计数值
#define	TIMER_MOD		0x34		// 定时器模式控制字	定时器0，先读写低字节、再读写高字节
//--------------------------------------------------------------------------------------------------*/
// 键盘
// 键盘控制器
#define	DAT8042		0x60		// 8042数据寄存器
#define	CTL8042		0x64		// 8042控制寄存器（写）、状态寄存器（读）
#define	LED_COMM		0xed
#define	LED_ACK		0xfa
// 键盘扫描码映射表
#define	MAP_COL		3		// 映射表设计成二维数组，第二维大小为3，分别为：单独按某键、Shift + 某键、有0xE0前缀的扫描码
// 扫描码缓冲区
#define	KB_IN_BYTES	100		// 键盘输入缓冲区大小
// 特殊按键代号	32位
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
#define	TTY_IN_SIZE	30		// U32	TTY输入缓冲大小	这个是实时读取，读一个扔一个，可以设置小一些
#define	TTY_OUT_SIZE	100		// U8	TTY输出缓冲大小	这个要长时间保存，要设置大一些
#define	EVERY_TTY		0xffffffff	// 所有console
//--------------------------------------------------------------------------------------------------*/
// console
#define	NR_CONSOLE	NR_TTY
#define	VGA_SIZE_PER_CON	(10 * 1024)
#define	CON_GAP		800		// 两个相邻console显存之间的间隙 160对齐	注意：总共只有32KB显存
#define	VGA_BASE		0		// 这个是相对于0xb8000的偏移
#define	EVERY_CON		0xffffffff	// 所有console
#define	VGA_MEM_BASE	0xb8000
//--------------------------------------------------------------------------------------------------*/
// 系统调用
#define	SYS_CALL_VECTOR	0x80		// 系统调用号
//--------------------------------------------------------------------------------------------------*/
// attr2
#define	DA_32	0x40	// 32位段
#define	DA_16	0x00	// 16位段
#define	DA_4K	0x80	// 粒度4KB
// attr1
#define	DA_DPL0	0x00	// DPL = 0
#define	DA_DPL1	0x20	// DPL = 1
#define	DA_DPL2	0x40	// DPL = 2
#define	DA_DPL3	0x60	// DPL = 3
// attr1
//-------------------存储段描述符
#define	DA_C	0x99	// 存在的  不可读、非一致代码段
#define	DA_CR	0x9b	// 存在的  可读取、非一致代码段
#define	DA_CCO	0x9d	// 存在的  不可读、  一致代码段
#define	DA_CCOR	0x9f	// 存在的  可读取、  一致代码段

#define	DA_DR	0x91	// 存在的  只读数据段
#define	DA_DRW	0x93	// 存在的  可读写数据段
#define	DA_SRW	0x97	// 存在的  堆栈段	----------这个有问题！！实践发现，堆栈段应该用DA_DRW
//-------------------系统级描述符
#define	DA_LDT		0x82	// 存在的  局部描述符
#define	DA_TaskGate	0x85	// 存在的  任务门
#define	DA_386TSS		0x89	// 存在的  386 TSS
#define	DA_386CGate	0x8c	// 存在的  386 调用门
#define	DA_386IGate	0x8e	// 存在的  386 中断门
#define	DA_386TGate	0x8f	// 存在的  386 陷阱门
//--------------------------------------------------------------------------------------------------*/
// 选择符属性
#define	S_TI	4	// 局部选择符
#define	S_0	0	// DPL0
#define	S_1	1	// DPL1
#define	S_2	2	// DPL2
#define	S_3	3	// DPL3
//--------------------------------------------------------------------------------------------------*/
// 中断8259A
#define	Int_M_Ctl	0x20	// 主片控制地址
#define	Int_S_Ctl	0xa0	// 主片数据地址
#define	Int_M_Dat	0x21	// 从片控制地址
#define	Int_S_Dat	0xa1	// 从片数据地址
#define	Int_EOI	0x20	// EOI
#define	Int_M_R	0x20	// 主片irp0对应的中断向量
#define	Int_S_R	0x28	// 从片irq8对应的中断向量
//--------------------------------------------------------------------------------------------------*/
// 显示颜色
// 字符属性定义：
// bit 7		闪烁
// bit 6-4	背景颜色
// bit 3		增亮
// bit 2-0	前景颜色
#define	Light	0x08	// 增亮
#define	Flash	0x80	// 闪烁

#define	Black	0	// 黑
#define	Blue	1	// 蓝
#define	Green	2	// 绿
#define	Qing	3	// 青
#define	Red	4	// 红
#define	Red1	5	// 洋红
#define	He	6	// 褐色，增亮时为黄色
#define	White	7	// 白色
//--------------------------------------------------------------------------------------------------*/
// task_hd 硬盘驱动程序
#define	MASTER		0	// 主盘
#define	SLAVER		1	// 从盘
#define	SECTOR_SIZE	512	// 硬盘扇区大小
#define	HD_BUF_SIZE	SECTOR_SIZE// 硬盘读写缓冲区大小
#define	HD_BUSY		0x80	// 硬盘忙位
#define	HD_TIMEOUT	100	// 硬盘超时时间（ticks）
// 寄存器端口 		Primary	Secondary
#define	HD_DATA		0x1f0	// 0x170
#define	HD_FEATURES	0x1f1	// 0x171
#define	HD_SECTOR_COUNT	0x1f2	// 0x172
#define	HD_LBA_LOW	0x1f3	// 0x173
#define	HD_LBA_MID	0x1f4	// 0x174
#define	HD_LBA_HIGH	0x1f5	// 0x175
#define	HD_DEVICE		0x1f6	// 0x176
#define	HD_COMMAND	0x1f7	// 0x177
#define	HD_DEVICE_CTL	0x3f6	// 0x376
// 硬件命令
#define	HD_IDENTIFY	0xec	// 获取硬盘参数
#define	HD_READ		0x20	// 硬盘读
#define	HD_WRITE		0x30	// 硬盘写

// 设备IPC命令
#define	HARD_INT		-1	// 硬中断发送的消息
#define	DEV_OPEN		0	// 打开硬盘
#define	DEV_CLOSE		1	// 关闭硬盘
#define	DEV_READ		2	// 读
#define	DEV_WRITE		3	// 写
#define	DEV_IOCTL		4	// IO控制
// 硬盘分区
#define	NR_DRIVERS	2	// 磁盘数
#define	PART_PER_DRIVER	4	// 每盘分区数
#define	PRIM_PER_DRIVER	(PART_PER_DRIVER + 1)		// 每盘主分区数（整个磁盘算一个主分区）
#define	SUB_PER_PART	16				// 每个扩展分区内逻辑分区最大数
#define	SUB_PER_DRIVER	(SUB_PER_PART * PART_PER_DRIVER)	// 每盘逻辑分区最大数
#define	MAX_PRIM		(PRIM_PER_DRIVER * NR_DRIVERS)	// 主分区总数
#define	MAX_SUB		(SUB_PER_DRIVER * NR_DRIVERS)		// 逻辑分区总数
#define	hd1a		MAX_PRIM				// hd1a的次设备号
#define	dh2a		(hd1a + SUB_PER_PART)		// hd2a的次设备号


