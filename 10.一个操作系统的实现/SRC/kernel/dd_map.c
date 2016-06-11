#include	"include.h"

int dd_map[] =	{	// 主设备号对应驱动程序的进程号
			0,		// 未使用
			0,		// 未使用
			0,		// 未使用
			TASK_HD_PID,	// 硬盘	和 MAJAR_HD  对应
			TASK_TTY_PID	// TTY	和 MAJAR_TTY 对应
		};

