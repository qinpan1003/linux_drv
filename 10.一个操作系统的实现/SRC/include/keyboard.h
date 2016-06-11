#include	"const.h"
// 扫描码缓冲区结构
#ifndef	_KEYBOARD_
#define	_KEYBOARD_
typedef struct k_buf
{
	int	n;		// 缓冲区中可用数据数
	char	*head;		// 头指针	缓冲区输入口
	char	*tail;		// 尾指针	缓冲区输出口
	char	 buf[KB_IN_BYTES];	// 缓冲区
}K_BUF;
#endif	// _KEYBOARD_
