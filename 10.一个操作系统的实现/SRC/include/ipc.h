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
#define	ANY		-1		// �ա�������Ϊ�κν���
#define	INTERRUPT		-2		// ���������ж�

// ��Ϣ����type
#define	HD_MSG_UNION	-1	// Ӳ����Ϣ
#define	TTY_MSG_UNION	-2	// tty ��Ϣ
#define	FS_MSG_UNION	-3	// fs  ��Ϣ
#define	SYS_MSG_UNION	-4	// sys ��Ϣ
#define	MM_MSG_UNION	-5	// mm  ��Ϣ

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
	int	sender;	// ������
	int	recver;	// ������
	int	type;	// ��Ϣ����	HD_MSG_UNION, TTY_MSG_UNION, FS_MSG_UNION, SYS_MSG_UNION, HARD_INT, MM_MSG_UNION
	MSG_UNION	msg_union;// ��Ϣ��������

}MSG;

#endif	// _IPC_

