#include	"def.h"
#ifndef	_CONST_H_
#define	_CONST_H_

typedef	struct	descriptor
{
	U16	limit_low;	// 段界限低16位
	U16	base_low;		// 段基址低16位
	U8	base_mid;		// 段基址中间8位
	U8	attr1;		// 属性1
	U8	limit_high_attr2;	// 段界限高4位、属性2
	U8	base_high;	// 段基址高8位
}Descriptor;

typedef	struct	gate
{
	U16	offset_low;
	U16	selector;
	U8	pcount;		// 这个参数只用于调用门，指明调用过程中需要复制传递的参数（双字）个数
	U8	attr;
	U16	offset_high;
}Gate;

typedef	struct	tss
{
	U32	last;		// 上一任务链接
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
	U32	ldt_sel;		// LDT选择符
	U16	T;		// T
	U16	io_map_base;	// I/O位图基址
	U8	io_map[1];	// I/O位图
	U8	end_of_io_map;	// I/O位图结束标志 0xff
}TSS;

#endif	// _CONST_H_
