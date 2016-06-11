#include	"def.h"
//--------------------------------------------------------------------------------------------------*/
// ELFͷ��Ϣ
typedef	struct	elf_head
{
	char	e_ident[16];	// 16 �ֽ�	�������Ա�ʾELF�ļ����ַ����Լ�����һЩ������޹ص���Ϣ
	U16	e_type;		//  2 �ֽ�	�ļ�����
	U16	e_machine;	//  2 �ֽ�	�������иó�����Ҫ����ϵ�ṹ
	U32	e_version;	//  4 �ֽ�	�ļ��İ汾
	U32	e_entry;		//  4 �ֽ�	�������ڵ�ַ
	U32	e_phoff;		//  4 �ֽ�	Program header table ���ļ��е�ƫ���������ֽڼ�����
	U32	e_shoff;		//  4 �ֽ�	Sectino header table ���ļ��е�ƫ���������ֽڼ�����
	U32	e_flags;		//  4 �ֽ�	�� IA32 ���ԣ�����Ϊ0
	U16	e_ehsize;		//  2 �ֽ�	ELF header ��С�����ֽڼ�����
	U16	e_phentsize;	//  2 �ֽ�	Program header table ��ÿһ����Ŀ�Ĵ�С
	U16	e_phnum;		//  2 �ֽ�	Program header table ���ж��ٸ���Ŀ
	U16	e_shentsize;	//  2 �ֽ�	Section header table ��ÿһ����Ŀ�Ĵ�С
	U16	e_shnum;		//  2 �ֽ�	Section header table ���ж��ٸ���Ŀ
	U16	e_shstrndx;	//  2 �ֽ�	���������Ƶ��ַ�����ʾ�ڼ����ڣ���0��ʼ����
}ELF_HEAD;
//--------------------------------------------------------------------------------------------------*/
// Programͷ��Ϣ
typedef	struct	pro_head
{
	U32	p_type;		// 4 �ֽ�
	U32	p_offset;		// 4 �ֽ�
	U32	p_vaddr;		// 4 �ֽ�
	U32	p_paddr;		// 4 �ֽ�
	U32	p_filesz;		// 4 �ֽ�
	U32	p_memsz;		// 4 �ֽ�
	U32	p_flags;		// 4 �ֽ�
	U32	p_align;		// 4 �ֽ�
}PRO_HEAD;


