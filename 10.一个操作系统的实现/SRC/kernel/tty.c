#include	"include.h"

extern U8		shift_l_down,shift_r_down,shift_down;
extern U8		ctrl_l_down ,ctrl_r_down ,ctrl_down ;
extern U8		alt_l_down  ,alt_r_down  ,alt_down  ;
extern U8		make,caps;
extern U8		led_stat;
int	tty_has_msg_tmp;
int	has_read_tmp,has_comm_tmp;
MSG	msg_read_tmp,msg_comm_tmp;
int	no_answer;
//--------------------------------------------------------------------------------------------------*/
// 终端任务(包括按键和显示)
void task_tty(void * pdata)
{
	TTY* p_tty;
	MSG msg;
	TTY_MSG* p_tty_msg;
	pdata = pdata;
	init_tty();		// 初始化tty	包括keyboard和vga的初始化
	//------------------------------------------------------------------------------*/
	// 打印测试信息
	kmain();
	//------------------------------------------------------------------------------*/
	while(1)
	{
//		
		for(p_tty = tty ; p_tty < tty + NR_TTY ; p_tty++)
		{
			tty_dev_read(p_tty);	// 读取一个数据就返回及时处理			
			tty_dev_write(p_tty);	// tty写控制台
		}
//--------------------------------------------------------------------------------------------------*/
//
		recv(ANY,&msg);
		int src = msg.sender;
		assert(src == INTERRUPT || (0 <= src && src < NR_TASK + NR_PROC));
		assert(msg.type == TTY_MSG_UNION || msg.type == HARD_INT);
		if(msg.type == HARD_INT)		// 用于定时唤醒tty（定时中断）
		{
			keyboard_int = 0;
		}
		else
		{
			p_tty_msg = &msg.msg_union.tty_msg;
			switch(p_tty_msg->para)
			{
				case DEV_OPEN:	// 打开设备
					assert((0 <= p_tty_msg->sub_device) && (p_tty_msg->sub_device < NR_TTY));
					break;
				case DEV_CLOSE:	// 关闭设备
					assert((0 <= p_tty_msg->sub_device) && (p_tty_msg->sub_device < NR_TTY));
					break;
				case DEV_READ:	// 读数据
					{
						if(tty_do_read(p_tty_msg) == -1)	// 0 请求成功， -1 请求失败（有其他进程正在请求输入已有进程在请求输入 或 请求输入字节数为0）
						{
							msg.type			= FS_MSG_UNION;
							src			= p_tty_msg->req_caller;	// 这一句一定要放在以下三句前面。因为接下来三句会把msg_union当做fs_msg处理，会破坏tty_msg的信息
							msg.msg_union.fs_msg.para	= FS_RESUME;		// 通知fs主循环激活被挂起的进程
							msg.msg_union.fs_msg.flags	= p_tty_msg->req_PID;	// 请求失败的进程PID
							msg.msg_union.fs_msg.count	= -1;			// -1表示请求失败（有其他进程正在请求输入）
							
							assert(src == TASK_FS_PID);
						}
						else
						{
							no_answer = 1;
						}
					}
					break;
				case DEV_WRITE:	// 写数据	实际写入字节数放在p_tty_msg->req_count中返回
					tty_do_write(p_tty_msg);
					break;
				case DEV_IOCTL:	// IO控制
					break;
				default:	break;
			}
		}
		assert( ( (0 <= src) && (src <= NR_TASK + NR_PROC) ) || (src == INTERRUPT));
//		assert(send(src,&msg) == 0);
		if(no_answer == 1)
			no_answer = 0;
		else
		{
			if( send(src,&msg) != 0)
			{
				disable_int();
				assert(has_comm_tmp == 0);
				has_comm_tmp		= 1;
				tty_has_msg_tmp++;
				msg_comm_tmp		= msg;
				msg_comm_tmp.recver		= src;
				enable_int();
			}
		}
		disable_int();
		if(has_comm_tmp == 1)		// 将暂存的消息发送出去
		{
			if(send(msg_comm_tmp.recver,&msg_comm_tmp) == 0)
			{
				has_comm_tmp = 0;
				tty_has_msg_tmp--;
			}
		}
		enable_int();
		disable_int();		
		if(has_read_tmp == 1)		// 将暂存的消息发送出去
		{
			if(send(msg_read_tmp.recver,&msg_read_tmp) == 0)
			{
				has_read_tmp = 0;
				tty_has_msg_tmp--;
			}
		}
		enable_int();
//--------------------------------------------------------------------------------------------------*/
	}
}
//--------------------------------------------------------------------------------------------------*/
// tty初始化
void init_tty(void)
{
	int i;
	TTY*	p_tty;
	tty_has_msg_tmp	= 0;
	has_read_tmp = 0,has_comm_tmp = 0;
	for(p_tty = tty,i = 0;p_tty < tty + NR_TTY;p_tty++,i++)
	{
		p_tty->p_inbuf_head		= p_tty->in_buf;
		p_tty->p_inbuf_tail		= p_tty->in_buf;
		p_tty->inbuf_count		= 0;

		p_tty->p_console		= console + i;
		
		p_tty->req_count		= 0;
		
		p_tty->p_console->vga_base	= VGA_BASE + (VGA_SIZE_PER_CON + CON_GAP)* i;
		p_tty->p_console->vga_offset	= 0;
		p_tty->p_console->cursor	= 0;
		p_tty->p_console->color	= White;	
	}
	init_keyboard();	// 初始化键盘
	for(i = NR_TTY - 1 ; i >= 0 ; i--)
	{
		select_console(i);	// 初始化屏幕,并最终选择console0作为当前控制台
		printk("This is tty%d\n",i);
		printk("%d#>",(tty_current->p_console->cursor + tty_current->p_console->vga_offset )/ 160);
	}
}
//--------------------------------------------------------------------------------------------------*/
// tty选择
void select_console(int tty_no)
{
	disable_int();
	tty_current = tty + tty_no;
	enable_int();
	re_start_addr();
}
//--------------------------------------------------------------------------------------------------*/
// tty读
void tty_dev_read(TTY * p_tty)
{
	// 只有tty_current可以使用键盘
	if(p_tty == tty_current  &&  k_buf.n > 0)	// 读取一个数据就返回及时处理
		keyboard_read(tty_current);
}
//--------------------------------------------------------------------------------------------------*/
// tty写
void tty_dev_write(TTY * p_tty)
{
	//-------------------------------------------------------------------*/
	// tty处理
	in_process(p_tty);
	//-------------------------------------------------------------------*/
	// 光标位置处理
	disable_int();
	if( p_tty->p_console->vga_offset + p_tty->p_console->cursor < 0 )
		p_tty->p_console->cursor = p_tty->p_console->vga_offset;
	if( p_tty->p_console->vga_offset + p_tty->p_console->cursor >= VGA_SIZE_PER_CON)	// 两个相邻console显存之间留有空隙1KB，所以不用担心不小心跨区
		{
			ClrScr(p_tty->p_console);
			p_tty->p_console->vga_offset = 0;
			p_tty->p_console->cursor = 0;
			re_start_addr();
		}
	enable_int();
	re_cur();
}
//--------------------------------------------------------------------------------------------------*/
// 处理tty输入缓冲in_buf
void out_char(TTY* p_tty,char ch);
void in_process(TTY * p_tty)
{
	U32 key;
	//-------------------------------------------------------------------*/
	// 读取键值
	disable_int();
	if(p_tty->inbuf_count <= 0)	{enable_int();return;}
	key = *p_tty->p_inbuf_tail;
	if(++p_tty->p_inbuf_tail >= p_tty->in_buf + TTY_IN_SIZE)
		p_tty->p_inbuf_tail -= TTY_IN_SIZE;
	p_tty->inbuf_count--;
	enable_int();
	//-------------------------------------------------------------------*/
	// 按键处理
	if(key & SPEC)
	{	// 特殊按键处理
		switch(key)
		{
			case ESC :
				break;
			case BACKSPACE :
				break;
			case TAB :
				break;
			case ENTER :
				break;
			case PAD_ENTER :
				break;
			case CTRL_L :
				if(make) ctrl_l_down = 1;else ctrl_l_down = 0;
				ctrl_down = ctrl_l_down | ctrl_r_down;
				break;
			case CTRL_R :
				if(make) ctrl_r_down = 1;else ctrl_r_down = 0;
				ctrl_down = ctrl_l_down | ctrl_r_down;
				break;
			case SHIFT_L :
				if(make) shift_l_down = 1;else shift_l_down = 0;
				shift_down = shift_l_down | shift_r_down;
				break;
			case SHIFT_R :
				if(make) shift_r_down = 1;else shift_r_down = 0;
				shift_down = shift_l_down | shift_r_down;
				break;
			case PAD_SLASH :
				break;
			case ALT_L :
				if(make) alt_l_down = 1;else alt_l_down = 0;
				alt_down = alt_l_down | alt_r_down;
				break;
			case ALT_R :
				if(make) alt_r_down = 1;else alt_r_down = 0;
				alt_down = alt_l_down | alt_r_down;
				break;
			case CAPS_LOCK :
				if(make)
				{
					led_stat ^= 1<<2;
					set_led();
				}
				break;
			case F1 :
				if(alt_down) select_console(0);
				break;
			case F2 :
				if(alt_down) select_console(1);
				break;
			case F3 :
				if(alt_down) select_console(2);
				break;
			case F4 :
				break;
			case F5 :
				break;
			case F6 :
				break;
			case F7 :
				break;
			case F8 :
				break;
			case F9 :
				break;
			case F10 :
				break;
			case F11 :
				break;
			case F12 :
				break;
			case NUM_LOCK :
				if(make)
				{
					led_stat ^= 1<<1;
					set_led();
				}
				break;
			case SCROLL_LOCK :
				if(make)
				{
					led_stat ^= 1<<0;
					set_led();
				}
				break;
			case PAD_HOME :
				break;
			case PAD_UP :
				break;
			case PAD_PAGEUP :
				break;
			case PAD_MINUS :
				break;
			case PAD_LEFT :
				break;
			case PAD_MID :
				break;
			case PAD_RIGHT :
				break;
			case PAD_PLUS :
				break;
			case PAD_END :
				break;
			case PAD_DOWN :
				break;
			case PAD_PAGEDOWN :
				break;
			case PAD_INS :
				break;
			case PAD_DOT :
				break;
			case HOME :
				break;
			case UP :
				if(make)
				{
					if(shift_down)
						console_scroll(-1);	// 屏幕上滚 1 行
					else
					{
						disable_int();
					//	p_tty->p_console->cursor -= 160;
						enable_int();
					}
				}
				break;
			case PAGEUP :
				if(make)
					console_scroll(-25);// 屏幕上滚 1 页
				break;
			case LEFT :
				if(make)
				{
					disable_int();
				//	p_tty->p_console->cursor -= 2;
					enable_int();
				}
				break;
			case RIGHT :
				if(make)
				{
					disable_int();
				//	p_tty->p_console->cursor += 2;
					enable_int();
				}
				break;
			case END :
				break;
			case DOWN :
				if(make)
				{
					if(shift_down)
						console_scroll(1);	// 屏幕下滚 1 行
					else
					{
						disable_int();
					//	p_tty->p_console->cursor += 160;
						enable_int();
					}
				}
				break;
			case PAGEDOWN :
				if(make)
					console_scroll(25);	// 屏幕上滚 1 页
				break;
			case INSERT :
				break;
			case DELETE :
				break;
			case GUI_L :
				break;
			case GUI_R :
				break;
			case APPS :
				break;
		}
	}
	
	// 普通按键
	if(make)
	{
		if(p_tty->req_count > 0)
		{
			if(' ' <= key && key <= '~')
			{
				*p_tty->req_buf++ = key;
				p_tty->req_count--;
				p_tty->trans_count++;
				out_char(p_tty,key);
			}
			else if(key == BACKSPACE && p_tty->trans_count > 0)
			{
				p_tty->req_count++;
				p_tty->trans_count--;
				p_tty->req_buf--;
				out_char(p_tty,'\b');
			}
			
			if(key == ENTER || p_tty->req_count == 0)
			{
				if(key == ENTER)
				{
					p_tty->req_count = 0;
				}
				*p_tty->req_buf	= 0;	// 字符串结尾
				
				out_char(p_tty,'\n');
//				out_char(p_tty,'0' + (p_tty->p_console->cursor + tty_current->p_console->vga_offset) / 160 / 10);
//				out_char(p_tty,'0' + (p_tty->p_console->cursor + tty_current->p_console->vga_offset) / 160 % 10);
				out_char(p_tty,'#');
				out_char(p_tty,'>');
				
				MSG	msg;
				msg.type			= FS_MSG_UNION;
				msg.msg_union.fs_msg.para	= FS_RESUME;
				msg.msg_union.fs_msg.flags	= p_tty->req_PID;
				msg.msg_union.fs_msg.count	= p_tty->trans_count;
				
				if( send(p_tty->req_caller,&msg) != 0)	// 这里只用发消息，不用等消息回应。因为这个消息发出去后，文件系统会发消息激活进程，而不会回送到这里
				{
					disable_int();
					assert(has_read_tmp == 0);
					has_read_tmp	= 1;
					tty_has_msg_tmp++;
					msg_read_tmp	= msg;
					msg_read_tmp.recver	= p_tty->req_caller;
					enable_int();
				}
			}
		}
	}
}


//--------------------------------------------------------------------------------------------------*/
/*
函数功能：将消息参数保存后，立即返回消息
输入参数：tty消息指针（内涵进程请求信息）
输出参数：0 请求成功，-1 请求失败（有其他进程正在请求输入）
*/ 
int tty_do_read(TTY_MSG* p_tty_msg)
{
	TTY* p_tty;
	p_tty		= tty + p_tty_msg->sub_device;
	
	disable_int();
	if(p_tty->req_count != 0 || p_tty_msg->req_count == 0)
	{
		enable_int();
		return	-1;		// 已有进程在请求输入 或 请求输入字节数为0
	}
	assert(p_tty->req_count == 0);	// 必须确保当前没有其他进程在请求输入
	
	p_tty->req_caller	= p_tty_msg->req_caller;
	p_tty->req_PID	= p_tty_msg->req_PID;
	p_tty->req_buf	= p_tty_msg->req_buf;
	p_tty->req_count	= p_tty_msg->req_count;
	p_tty->trans_count	= 0;
	
	assert(p_tty->req_count > 0);
	enable_int();
	return	0;
}
//--------------------------------------------------------------------------------------------------*/
// 全部写入后返回
void tty_do_write(TTY_MSG* p_tty_msg)
{
	TTY* p_tty;
	int cnt;
	if(p_tty_msg->req_count != 0)			// 0表示打印完整字符串
	{
		cnt = MIN(p_tty_msg->req_count,strlen((char*)p_tty_msg->req_buf));
	}
	else
	{
		cnt = strlen((char*)p_tty_msg->req_buf);
	}
	
	p_tty_msg->req_buf[cnt] = 0;			// 字符串结束标志
	
	p_tty		= tty + p_tty_msg->sub_device;
	
	while(*p_tty_msg->req_buf)
	{
		out_char(p_tty,*p_tty_msg->req_buf++);
	}
	p_tty_msg->req_count = cnt;			// 实际写入字节数放在p_tty_msg->req_count中返回
	return	;
}
//--------------------------------------------------------------------------------------------------*/


