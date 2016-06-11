#include	"stdarg.h"
#include	"def.h"
#include	"task.h"
//--------------------------------------------------------------------
// ��������
void delay10ms(int ms);		// 10ms����ʱ
void delays(int s);			// s ����ʱ
#define	delaytick(tick)	delay10ms(tick)	// �ӳ�tick��ʱ������
//--------------------------------------------------------------------
void out_byte(U16 port,U8 dat);	// byte ���
U8 in_byte(U16 port);		// byte ����
void out_word(U16 port,U16 dat);	// word ���
U16 in_word(U16 port);		// word ����
void out_dword(U16 port,U32 dat);	// dword ���
U32 in_dword(U16 port);		// dword ����
//--------------------------------------------------------------------
void	enable_int(void);		// ���ж�
void	disable_int(void);		// ���ж�
U32	get_eflags(void);		// ��ȡeflags��ֵ


void * va2pa(U32* pdb,void * va);	// �����ַת�����ַ
U32 va2pte(U32* pdb,void * va);	// �����ַתpte

void print_proc_table(TCB* p_tcb);


