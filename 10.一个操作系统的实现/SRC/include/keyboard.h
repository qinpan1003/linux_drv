#include	"const.h"
// ɨ���뻺�����ṹ
#ifndef	_KEYBOARD_
#define	_KEYBOARD_
typedef struct k_buf
{
	int	n;		// �������п���������
	char	*head;		// ͷָ��	�����������
	char	*tail;		// βָ��	�����������
	char	 buf[KB_IN_BYTES];	// ������
}K_BUF;
#endif	// _KEYBOARD_
