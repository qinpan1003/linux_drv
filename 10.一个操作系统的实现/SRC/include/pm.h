#include	"def.h"
#ifndef	_CONST_H_
#define	_CONST_H_

typedef	struct	descriptor
{
	U16	limit_low;	// �ν��޵�16λ
	U16	base_low;		// �λ�ַ��16λ
	U8	base_mid;		// �λ�ַ�м�8λ
	U8	attr1;		// ����1
	U8	limit_high_attr2;	// �ν��޸�4λ������2
	U8	base_high;	// �λ�ַ��8λ
}Descriptor;

typedef	struct	gate
{
	U16	offset_low;
	U16	selector;
	U8	pcount;		// �������ֻ���ڵ����ţ�ָ�����ù�������Ҫ���ƴ��ݵĲ�����˫�֣�����
	U8	attr;
	U16	offset_high;
}Gate;

typedef	struct	tss
{
	U32	last;		// ��һ��������
	U32	esp0;		// 
	U32	ss0;		// 
	U32	esp1;		// 
	U32	ss1;		// 
	U32	esp2;		// 
	U32	ss2;		// 
	U32	gr3;		// gr3(pdbr)
	U32	eip;		// 
	U32	eflags;		// 
	U32	eax;		// 
	U32	ecx;		// 
	U32	edx;		// 
	U32	ebx;		// 
	U32	esp;		// 
	U32	ebp;		// 
	U32	esi;		// 
	U32	edi;		// 
	U32	es;		// 
	U32	cs;		// 
	U32	ss;		// 
	U32	ds;		// 
	U32	fs;		// 
	U32	gs;		// 
	U32	ldt_sel;		// LDTѡ���
	U16	T;		// T
	U16	io_map_base;	// I/Oλͼ��ַ
	U8	io_map[1];	// I/Oλͼ
	U8	end_of_io_map;	// I/Oλͼ������־ 0xff
}TSS;

#endif	// _CONST_H_
