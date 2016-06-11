#include	"include.h"
//--------------------------------------------------------------------/
// 系统调用用户级函数
// eax用于系统调用功能号,esp未使用，剩下edi,esi,ebp,ebx,edx,ecx这6个寄存器用于传递参数
// eax用于返回参数
extern U32 (*sys_call_table[])(int edi,int esi,int ebp,int ebx,int edx,int ecx);	// 系统调用表

U32 sw_int_handler(int sw_no,int edi,int esi,int ebp,int esp,int ebx,int edx,int ecx,int eax)
{
	if(sw_no == SYS_CALL_VECTOR)
		return sys_call_table[eax](edi,esi,ebp,ebx,edx,ecx);	// 系统调用
	return	0;
}
