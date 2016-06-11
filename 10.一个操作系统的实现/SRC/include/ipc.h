#include	"const.h"
#include	"def.h"
#include	"hd.h"
#include	"tty.h"
#include	"fs.h"
#include	"task_sys.h"
#include	"mm.h"

#ifndef	_IPC_
#define	_IPC_


// IPC
#define	SEND		0
#define	RECV		1
#define	BOTH		2
#define	ANY		-1		// 收、发进程为任何进程
#define	INTERRUPT		-2		// 发送者是中断

// 消息类型type
#define	HD_MSG_UNION	-1	// 硬盘消息
#define	TTY_MSG_UNION	-2	// tty 消息
#define	FS_MSG_UNION	-3	// fs  消息
#define	SYS_MSG_UNION	-4	// sys 消息
#define	MM_MSG_UNION	-5	// mm  消息

typedef	union	msg_union
{
	HD_MSG	hd_msg;	// HD
	TTY_MSG	tty_msg;	// TTY
	FS_MSG	fs_msg;	// FS
	SYS_MSG	sys_msg;	// SYS
	MM_MSG	mm_msg;	// MM
}MSG_UNION;

typedef	struct	msg
{
	int	sender;	// 发送者
	int	recver;	// 接收者
	int	type;	// 消息类型	HD_MSG_UNION, TTY_MSG_UNION, FS_MSG_UNION, SYS_MSG_UNION, HARD_INT, MM_MSG_UNION
	MSG_UNION	msg_union;// 消息具体内容

}MSG;

#endif	// _IPC_

