#include	"include.h"
//--------------------------------------------------------------------/
// ϵͳ�����û�������
// eax����ϵͳ���ù��ܺ�,espδʹ�ã�ʣ��edi,esi,ebp,ebx,edx,ecx��6���Ĵ������ڴ��ݲ���
// eax���ڷ��ز���
extern U32 (*sys_call_table[])(int edi,int esi,int ebp,int ebx,int edx,int ecx);	// ϵͳ���ñ�

U32 sw_int_handler(int sw_no,int edi,int esi,int ebp,int esp,int ebx,int edx,int ecx,int eax)
{
	if(sw_no == SYS_CALL_VECTOR)
		return sys_call_table[eax](edi,esi,ebp,ebx,edx,ecx);	// ϵͳ����
	return	0;
}
