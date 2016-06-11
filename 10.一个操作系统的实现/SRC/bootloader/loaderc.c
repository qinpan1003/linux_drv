#include	"elf.h"
#define	Kernel_Base_Seg	0x7000	// ELF格式内核临时存放处
#define	Kernel_Base_Off	0	//
// 将ELF格式的内核整理到内存指定位置
// 执行该函数前要保证：	内核已经被加载到了Kernel_Base_Seg : Kernel_Base_Off

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
	/*/ 字符串输出。嫌它占用存储空间,那就注释掉
	char*	string = "kernel ready!";
	char*	s = string;
	U16*	d = (U16*)(VGA_BASE + 20 * 160 + 60 * 2);
	while(*s != 0)
	{
		*d++ = (*s++) | (0xc << 8);
	}
//--------------------------------------------------------------------------------------------------*/
}
