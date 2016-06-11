#include	"def.h"
//--------------------------------------------------------------------------------------------------*/
// ELF头信息
typedef	struct	elf_head
{
	char	e_ident[16];	// 16 字节	包含用以表示ELF文件的字符，以及其他一些与机器无关的信息
	U16	e_type;		//  2 字节	文件类型
	U16	e_machine;	//  2 字节	标明运行该程序需要的体系结构
	U32	e_version;	//  4 字节	文件的版本
	U32	e_entry;		//  4 字节	程序的入口地址
	U32	e_phoff;		//  4 字节	Program header table 在文件中的偏移量（以字节计数）
	U32	e_shoff;		//  4 字节	Sectino header table 在文件中的偏移量（以字节计数）
	U32	e_flags;		//  4 字节	对 IA32 而言，此项为0
	U16	e_ehsize;		//  2 字节	ELF header 大小（以字节计数）
	U16	e_phentsize;	//  2 字节	Program header table 中每一个条目的大小
	U16	e_phnum;		//  2 字节	Program header table 中有多少个条目
	U16	e_shentsize;	//  2 字节	Section header table 中每一个条目的大小
	U16	e_shnum;		//  2 字节	Section header table 中有多少个条目
	U16	e_shstrndx;	//  2 字节	包含节名称的字符串表示第几个节（从0开始数）
}ELF_HEAD;
//--------------------------------------------------------------------------------------------------*/
// Program头信息
typedef	struct	pro_head
{
	U32	p_type;		// 4 字节
	U32	p_offset;		// 4 字节
	U32	p_vaddr;		// 4 字节
	U32	p_paddr;		// 4 字节
	U32	p_filesz;		// 4 字节
	U32	p_memsz;		// 4 字节
	U32	p_flags;		// 4 字节
	U32	p_align;		// 4 字节
}PRO_HEAD;


