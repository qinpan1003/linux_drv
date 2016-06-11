; 分页地址
%define	MemSize		32			; 内存大小（MB）
%define	NR_PDE		(MemSize / 4) 		; PDE个数。一个PDE对应4MB
%define	NR_PTE		(MemSize * 1024 / 4)	; PTE个数。一个PTE对应4KB
%define	SYS_PDB		0			; 页目录基地址 	注意:4KB对齐
%define	SYS_PTB		(SYS_PDB + 4 * 1024)	; 页表基地址	注意:4KB对齐


; 分页属性
%define	PG_P	(1<<0)	; Present
%define	PG_RW	(1<<1)	; Read/Write
%define	PG_US	(1<<2)	; User/Supervisor
%define	PG_PWT	(1<<3)	; Write-through
%define	PG_PCD	(1<<4)	; Cache disabled
%define	PG_A	(1<<5)	; Accessed
%define	PG_D	(1<<6)	; Dirty			只适用于页表项
%define	PG_PS	(1<<7)	; Page size (0 indecate 4KB)	只适用于页目录项
%define	PG_G	(1<<8)	; Global page