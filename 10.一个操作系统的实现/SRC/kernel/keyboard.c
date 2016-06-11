#include	"include.h"

U8	shift_l_down = 0,shift_r_down = 0,shift_down = 0;
U8	ctrl_l_down  = 0,ctrl_r_down  = 0,ctrl_down  = 0;
U8	alt_l_down   = 0,alt_r_down   = 0,alt_down   = 0;
U8	make = 0;
U8	led_stat = 0;	// bit0 : Scroll Lock,	bit1 : Num Lock,	bit2 : Caps Lock
//--------------------------------------------------------------------------------------------------*/
// 键盘初始化程序
void init_keyboard(void)
{
	// 设置键盘状态灯
	led_stat = 0;
	set_led();
	// 扫描码缓冲区初始化
	k_buf.n		= 0;		// 缓冲区内有用数据数
	k_buf.head	= k_buf.buf;	// 头指针	中断数据输入口
	k_buf.tail	= k_buf.buf;	// 尾指针	程序数据输出口
	// 一系列标志初始化
	shift_l_down = 0,shift_r_down = 0,shift_down = 0;
	ctrl_l_down  = 0,ctrl_r_down  = 0,ctrl_down  = 0;
	alt_l_down   = 0,alt_r_down   = 0,alt_down   = 0;
	keyboard_int = 0;
}
//--------------------------------------------------------------------------------------------------*/
// 设置键盘状态灯
void set_led(void)
{
	//----------------------------------------------------------------------------------------*/
	/*/ 检测输入缓冲器是否空
	while(in_byte(CTL8042) & (1<<1)) in_byte(DAT8042);
	// 发出设置LED命令
	out_byte(DAT8042,LED_COMM);
	// 等待ACK
	while(in_byte(DAT8042) != LED_ACK);
	// 检测输入缓冲器是否空
	while(in_byte(CTL8042) & (1<<1)) in_byte(DAT8042);
	// 发出LED状态字节
	out_byte(DAT8042,led_stat);
	// 等待ACK
	while(in_byte(DAT8042) != LED_ACK);
	//----------------------------------------------------------------------------------------*/
}
//--------------------------------------------------------------------------------------------------*/
// 按键中断处理程序
void keyboard_handler(void)
{
	U8 scan_code = in_byte(DAT8042);
	if(k_buf.n < KB_IN_BYTES)
	{	// 注意：此处操作需要原子性
		disable_int();
		k_buf.n++;
		*k_buf.head = scan_code;
		if(++k_buf.head >= k_buf.buf + KB_IN_BYTES)
			k_buf.head -= KB_IN_BYTES;
		enable_int();
	}
	keyboard_int = 1;
}
//--------------------------------------------------------------------------------------------------*/
// 从缓冲区中取扫描码
U8 get_byte_from_kbuf(void)
{
	U8 scan_code;
repeat:	while(k_buf.n <=0 );	// 确保缓冲区中有可用数据
	// 注意：此处操作需要原子性
	//------------------------------------------------/
	// 读取缓冲区
	disable_int();
	if(k_buf.n <= 0) {enable_int();goto repeat;}
	scan_code = *k_buf.tail & 0xff;
	k_buf.n--;
	if(++k_buf.tail >= k_buf.buf + KB_IN_BYTES)
		k_buf.tail -= KB_IN_BYTES;
	enable_int();
	//printk("%x\n",scan_code);
	return scan_code;
}
//--------------------------------------------------------------------------------------------------*/
// 按键读取程序
void keyboard_read(TTY * _tty)
{
	U32 scan_code;
	U8 col = 0;
	//------------------------------------------------/
	// 读取缓冲区
repeat:	scan_code = get_byte_from_kbuf();
	//------------------------------------------------/
	// 0xe1
	if(scan_code == 0xe1)
	{	// e1的处理暂时简化成继续连读2次缓冲区，然后进行Pause功能处理
		if(k_buf.n > 2)
			// 连读2次
			{
				scan_code = get_byte_from_kbuf();
				scan_code = get_byte_from_kbuf();
			}
		// Pause功能处理
		goto	repeat;
	}
	//------------------------------------------------/
	// 0xe0
	if(scan_code == 0xe0)
	{
		col = 2;
		scan_code = get_byte_from_kbuf();
		goto	maping;
	}
	//------------------------------------------------/
	// 特殊键shift ctrl alt
	col = 0;
	if(shift_down)
	{
		col = 1;
	}
	if(shift_l_down)
	{
		col = 1;
	}
	if(shift_r_down)
	{
		col = 1;
	}
	if(ctrl_down)
	{}
	if(ctrl_l_down)
	{}
	if(ctrl_r_down)
	{}
	if(alt_down)
	{}
	if(alt_l_down)
	{}
	if(alt_r_down)
	{}
	//------------------------------------------------/
	// 从映射表中取按键ASCII码（扩展成了32位，包含特殊键值）
maping:	if(scan_code & 0x80)
	{
		make = 0;
		scan_code &= 0x7f;
	}
	else
	{
		make = 1;
	}
	//------------------------------------------------/
	// Num Lock
	if(led_stat & (1<<1))
	{
		if(0x47 <= scan_code && scan_code <= 0x53 && col == 0 )
			col = 1;
	}
	//------------------------------------------------/
	// 取码
	scan_code = keymap[scan_code][col];
	//------------------------------------------------/
	// 大写锁定键被按下，字母大小写换一下
	if(led_stat & (1<<2))	
	{
		if('A'<=scan_code && scan_code <= 'Z')
			scan_code += 'a'-'A';
		else if('a'<=scan_code && scan_code <= 'z')
			scan_code -= 'a'-'A';
	}
	//------------------------------------------------/
	disable_int();
	if(_tty->inbuf_count < TTY_IN_SIZE)
	{
		_tty->inbuf_count++;
		*_tty->p_inbuf_head = scan_code;
		if(++_tty->p_inbuf_head >= _tty->in_buf + TTY_IN_SIZE)
			_tty->p_inbuf_head -= TTY_IN_SIZE;
	}
	enable_int();
}
//--------------------------------------------------------------------------------------------------*/
// 映射表设计成二维数组，第二维大小为3，分别为：单独按某键、Shift + 某键、有0xE0前缀的扫描码
U32 keymap[][MAP_COL] =	{
/* scan-code			!Shift		Shift		E0 XX	*/
/*-----------------------------------------------------------------------------------------*/
/* 0x00 - none	*/{		0,		0,		0	},
/* 0x01 - ESC	*/{		ESC,		ESC,		0	},
/* 0x02 - '1'	*/{		'1',		'!',		0	},
/* 0x03 - '2'	*/{		'2',		'@',		0	},
/* 0x04 - '3'	*/{		'3',		'#',		0	},
/* 0x05 - '4'	*/{		'4',		'$',		0	},
/* 0x06 - '5'	*/{		'5',		'%',		0	},
/* 0x07 - '6'	*/{		'6',		'^',		0	},
/* 0x08 - '7'	*/{		'7',		'&',		0	},
/* 0x09 - '8'	*/{		'8',		'*',		0	},
/* 0x0A - '9'	*/{		'9',		'(',		0	},
/* 0x0B - '0'	*/{		'0',		')',		0	},
/* 0x0C - '-'	*/{		'-',		'_',		0	},
/* 0x0D - '='	*/{		'=',		'+',		0	},
/* 0x0E - BS	*/{		BACKSPACE,	BACKSPACE,	0	},
/* 0x0F - TAB	*/{		TAB,		TAB,		0	},
/* 0x10 - 'q'	*/{		'q',		'Q',		0	},
/* 0x11 - 'w'	*/{		'w',		'W',		0	},
/* 0x12 - 'e'	*/{		'e',		'E',		0	},
/* 0x13 - 'r'	*/{		'r',		'R',		0	},
/* 0x14 - 't'	*/{		't',		'T',		0	},
/* 0x15 - 'y'	*/{		'y',		'Y',		0	},
/* 0x16 - 'u'	*/{		'u',		'U',		0	},
/* 0x17 - 'i'	*/{		'i',		'I',		0	},
/* 0x18 - 'o'	*/{		'o',		'O',		0	},
/* 0x19 - 'p'	*/{		'p',		'P',		0	},
/* 0x1A - '['	*/{		'[',		'{',		0	},
/* 0x1B - ']'	*/{		']',		'}',		0	},
/* 0x1C - CR/LF	*/{		ENTER,		ENTER,		PAD_ENTER	},
/* 0x1D - L.Ctrl	*/{		CTRL_L,		CTRL_L,		CTRL_R	},
/* 0x1E - 'a'	*/{		'a',		'A',		0	},
/* 0x1F - 's'	*/{		's',		'S',		0	},
/* 0x20 - 'd'	*/{		'd',		'D',		0	},
/* 0x21 - 'f'	*/{		'f',		'F',		0	},
/* 0x22 - 'g'	*/{		'g',		'G',		0	},
/* 0x23 - 'h'	*/{		'h',		'H',		0	},
/* 0x24 - 'j'	*/{		'j',		'J',		0	},
/* 0x25 - 'k'	*/{		'k',		'K',		0	},
/* 0x26 - 'l'	*/{		'l',		'L',		0	},
/* 0x27 - ';'	*/{		';',		':',		0	},
/* 0x28 - '\''	*/{		'\'',		'"',		0	},
/* 0x29 - '`'	*/{		'`',		'~',		0	},
/* 0x2A - L.SHIFT	*/{		SHIFT_L,		SHIFT_L,		0	},
/* 0x2B - '\'	*/{		'\\',		'|',		0	},
/* 0x2C - 'z'	*/{		'z',		'Z',		0	},
/* 0x2D - 'x'	*/{		'x',		'X',		0	},
/* 0x2E - 'c'	*/{		'c',		'C',		0	},
/* 0x2F - 'v'	*/{		'v',		'V',		0	},
/* 0x30 - 'b'	*/{		'b',		'B',		0	},
/* 0x31 - 'n'	*/{		'n',		'N',		0	},
/* 0x32 - 'm'	*/{		'm',		'M',		0	},
/* 0x33 - ','	*/{		',',		'<',		0	},
/* 0x34 - '.'	*/{		'.',		'>',		0	},
/* 0x35 - '/'	*/{		'/',		'?',		PAD_SLASH	},
/* 0x36 - R.SHIFT	*/{		SHIFT_R,		SHIFT_R,		0	},
/* 0x37 - '*'	*/{		'*',		'*',		0	},
/* 0x38 - ALT	*/{		ALT_L,		ALT_L,		ALT_R	},
/* 0x39 - ' '	*/{		' ',		' ',		0	},
/* 0x3A - CapsLock	*/{		CAPS_LOCK,	CAPS_LOCK,	0	},
/* 0x3B - F1	*/{		F1,		F1,		0	},
/* 0x3C - F2	*/{		F2,		F2,		0	},
/* 0x3D - F3	*/{		F3,		F3,		0	},
/* 0x3E - F4	*/{		F4,		F4,		0	},
/* 0x3F - F5	*/{		F5,		F5,		0	},
/* 0x40 - F6	*/{		F6,		F6,		0	},
/* 0x41 - F7	*/{		F7,		F7,		0	},
/* 0x42 - F8	*/{		F8,		F8,		0	},
/* 0x43 - F9	*/{		F9,		F9,		0	},
/* 0x44 - F10	*/{		F10,		F10,		0	},
/* 0x45 - NumLock	*/{		NUM_LOCK,		NUM_LOCK,		0	},
/* 0x46 - ScrLock	*/{		SCROLL_LOCK,	SCROLL_LOCK,	0	},
/* 0x47 - Home	*/{		PAD_HOME,		'7',		HOME	},
/* 0x48 - CurUp	*/{		PAD_UP,		'8',		UP	},
/* 0x49 - PgUp	*/{		PAD_PAGEUP,	'9',		PAGEUP	},
/* 0x4A - '-'	*/{		PAD_MINUS,	'-',		0	},
/* 0x4B - Left	*/{		PAD_LEFT,		'4',		LEFT	},
/* 0x4C - MID	*/{		PAD_MID,		'5',		0	},
/* 0x4D - Right	*/{		PAD_RIGHT,	'6',		RIGHT	},
/* 0x4E - '+'	*/{		PAD_PLUS,		'+',		0	},
/* 0x4F - End	*/{		PAD_END,		'1',		END	},
/* 0x50 - Down	*/{		PAD_DOWN,		'2',		DOWN	},
/* 0x51 - PgDwon	*/{		PAD_PAGEDOWN,	'3',		PAGEDOWN	},
/* 0x52 - Insert	*/{		PAD_INS,		'0',		INSERT	},
/* 0x53 - Delete	*/{		PAD_DOT,		'.',		DELETE	},
/* 0x54 - Enter	*/{		0,		0,		0	},
/* 0x55 - 	*/{		0,		0,		0	},
/* 0x56 - 	*/{		0,		0,		0	},
/* 0x57 - F11	*/{		F11,		F11,		0	},
/* 0x58 - F12	*/{		F12,		F12,		0	},
/* 0x59 - 	*/{		0,		0,		0	},
/* 0x5A - 	*/{		0,		0,		0	},
/* 0x5B - 	*/{		0,		0,		GUI_L	},
/* 0x5C - 	*/{		0,		0,		GUI_R	},
/* 0x5D - 	*/{		0,		0,		APPS	},
/* 0x5E - 	*/{		0,		0,		0	}
};

