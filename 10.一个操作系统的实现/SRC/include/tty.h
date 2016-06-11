#include	"def.h"
#include	"const.h"

#ifndef	_TTY_
#define	_TTY_

typedef	struct	console_struct
{
	int	vga_base;		// 偏移0
	int	vga_offset;	// 偏移4
	int	cursor;		// 偏移8
	int	color;		// 偏移12
}CONSOLE;

typedef	struct	tty_struct
{
	U32	in_buf[TTY_IN_SIZE];
	U32*	p_inbuf_head;
	U32*	p_inbuf_tail;
	int	inbuf_count;

	CONSOLE*	p_console;
	
	U32	req_caller;	// 请求调用者（代理者）
	U32	req_PID;		// 请求tty的进程ID
	char*	req_buf;		// 请求缓冲
	U32	req_count;	// 请求字节数
	U32	trans_count;	// 已装换字节数
}TTY;

typedef	struct	tty_msg
{
	U32	para;
	U32	sub_device;	// 请求tty的次设备号
	U32	req_caller;	// 请求调用者（代理者）
	U32	req_PID;		// 请求tty的进程ID
	char*	req_buf;		// 请求缓冲
	U32	req_count;	// 请求字节数
}TTY_MSG;


#endif	// _TTY_
