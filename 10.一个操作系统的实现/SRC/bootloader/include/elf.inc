;----------------------------------------------------------------------
; ELF头信息偏移
e_ident		equ	0	; 16 字节	包含用以表示ELF文件的字符，以及其他一些与机器无关的信息
e_type		equ	16	;  2 字节	文件类型
e_machine		equ	18	;  2 字节	标明运行该程序需要的体系结构
e_version		equ	20	;  4 字节	文件的版本
e_entry		equ	24	;  4 字节	程序的入口地址
e_phoff		equ	28	;  4 字节	Program header table 在文件中的偏移量（以字节计数）
e_shoff		equ	32	;  4 字节	Sectino header table 在文件中的偏移量（以字节计数）
e_flags		equ	36	;  4 字节	对 IA32 而言，此项为0
e_ehsize		equ	40	;  2 字节	ELF header 大小（以字节计数）
e_phentsize	equ	42	;  2 字节	Program header table 中每一个条目的大小
e_phnum		equ	44	;  2 字节	Program header table 中有多少个条目
e_shentsize	equ	46	;  2 字节	Section header table 中每一个条目的大小
e_shnum		equ	48	;  2 字节	Section header table 中有多少个条目
e_shstrndx	equ	50	;  2 字节	包含节名称的字符串表示第几个节（从0开始数）
;----------------------------------------------------------------------
; Program头信息偏移
p_type		equ	0	; 4 字节
p_offset		equ	4	; 4 字节
p_vaddr		equ	8	; 4 字节
p_paddr		equ	12	; 4 字节
p_filesz		equ	16	; 4 字节
p_memsz		equ	20	; 4 字节
p_flags		equ	24	; 4 字节
p_align		equ	28	; 4 字节
