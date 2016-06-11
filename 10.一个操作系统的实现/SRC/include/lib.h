#include	"stdarg.h"
#include	"def.h"
#include	"task.h"
//--------------------------------------------------------------------
// 函数申明
void delay10ms(int ms);		// 10ms级延时
void delays(int s);			// s 级延时
#define	delaytick(tick)	delay10ms(tick)	// 延迟tick个时钟周期
//--------------------------------------------------------------------
void out_byte(U16 port,U8 dat);	// byte 输出
U8 in_byte(U16 port);		// byte 输入
void out_word(U16 port,U16 dat);	// word 输出
U16 in_word(U16 port);		// word 输入
void out_dword(U16 port,U32 dat);	// dword 输出
U32 in_dword(U16 port);		// dword 输入
//--------------------------------------------------------------------
void	enable_int(void);		// 开中断
void	disable_int(void);		// 关中断
U32	get_eflags(void);		// 获取eflags的值


void * va2pa(U32* pdb,void * va);	// 虚拟地址转物理地址
U32 va2pte(U32* pdb,void * va);	// 虚拟地址转pte

void print_proc_table(TCB* p_tcb);


