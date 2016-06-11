#include	"elf.h"
#define	Kernel_Base_Seg	0x7000	// ELF��ʽ�ں���ʱ��Ŵ�
#define	Kernel_Base_Off	0	//
// ��ELF��ʽ���ں������ڴ�ָ��λ��
// ִ�иú���ǰҪ��֤��	�ں��Ѿ������ص���Kernel_Base_Seg : Kernel_Base_Off

#define	VGA_BASE	0xb8000
void make_kernel(void)
{
	ELF_HEAD*	p_ehd = (ELF_HEAD*)( (Kernel_Base_Seg << 4) | Kernel_Base_Off);
	U32	phnum = p_ehd->e_phnum;
	PRO_HEAD* p_phd = (PRO_HEAD*)(p_ehd->e_phoff  +  ( (Kernel_Base_Seg << 4) | Kernel_Base_Off) );
	U32	i;
	for(i = 0;i < phnum;i++,p_phd++)
	{
		int	size	= p_phd->p_filesz;
		char*	paddr	= (char*)p_phd->p_paddr;
		char*	offset	= (char*)( p_phd->p_offset + ( (Kernel_Base_Seg << 4) | Kernel_Base_Off)  );
		while(size-- > 0)
		{
			*paddr++ = *offset++;
		}
	}
//--------------------------------------------------------------------------------------------------*/
	/*/ �ַ������������ռ�ô洢�ռ�,�Ǿ�ע�͵�
	char*	string = "kernel ready!";
	char*	s = string;
	U16*	d = (U16*)(VGA_BASE + 20 * 160 + 60 * 2);
	while(*s != 0)
	{
		*d++ = (*s++) | (0xc << 8);
	}
//--------------------------------------------------------------------------------------------------*/
}
