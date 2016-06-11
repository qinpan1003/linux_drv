#include	"def.h"
#include	"const.h"

#ifndef	_TTY_
#define	_TTY_

typedef	struct	console_struct
{
	int	vga_base;		// ƫ��0
	int	vga_offset;	// ƫ��4
	int	cursor;		// ƫ��8
	int	color;		// ƫ��12
}CONSOLE;

typedef	struct	tty_struct
{
	U32	in_buf[TTY_IN_SIZE];
	U32*	p_inbuf_head;
	U32*	p_inbuf_tail;
	int	inbuf_count;

	CONSOLE*	p_console;
	
	U32	req_caller;	// ��������ߣ������ߣ�
	U32	req_PID;		// ����tty�Ľ���ID
	char*	req_buf;		// ���󻺳�
	U32	req_count;	// �����ֽ���
	U32	trans_count;	// ��װ���ֽ���
}TTY;

typedef	struct	tty_msg
{
	U32	para;
	U32	sub_device;	// ����tty�Ĵ��豸��
	U32	req_caller;	// ��������ߣ������ߣ�
	U32	req_PID;		// ����tty�Ľ���ID
	char*	req_buf;		// ���󻺳�
	U32	req_count;	// �����ֽ���
}TTY_MSG;


#endif	// _TTY_
