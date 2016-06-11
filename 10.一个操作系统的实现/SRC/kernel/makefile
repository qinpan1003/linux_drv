ASM		=	nasm
ASMFLAG		=	-I ../include/ -f elf

DASM		=	objdump
DASMFLAG		=	-d

C		=	gcc
CFLAG		=	-I ../include/  -fno-builtin -Wall -c

LD		=	ld
LDFLAG		=	-s -T script.ld -Map=mapfile.txt 	# 这个运行地址要和loader中的kernel整理地址对应

TARGET		=	kernel
#-----------------------------------------------------------------------
KERNEL_S_S	=	$(wildcard *.s)				# 内核 s 源文件
KERNEL_C_S	=	$(wildcard *.c)				# 内核 c 源文件
CRT_S_S		=	$(wildcard user/*.s)			# CRT  s 源文件
CRT_C_S		=	$(wildcard user/*.c)			# CRT  c 源文件

KERNEL_S_O	=	$(addsuffix .o,$(basename $(KERNEL_S_S)))	# 内核 s 目标文件
KERNEL_C_O	=	$(addsuffix .o,$(basename $(KERNEL_C_S)))	# 内核 c 目标文件
CRT_S_O		= 	$(addsuffix .o,$(basename $(CRT_S_S)))		# CRT  s 目标文件
CRT_C_O		= 	$(addsuffix .o,$(basename $(CRT_C_S)))		# CRT  c 目标文件

KERNEL_O		=	$(KERNEL_S_O) $(KERNEL_C_O) $(CRT_S_O) $(CRT_C_O)

LIB_O		=	../lib/libs.o ../lib/libc.o ../lib/string.o ../lib/stdio.o
#---------------------------------------------------------------------
$(TARGET)		: $(KERNEL_O) $(LIB_O) 
		make	link
		ar rcs ../lib/mycrt.a $(CRT_S_O) $(CRT_C_O) $(LIB_O)
		objcopy -S -O binary kernel kernel.bin
		$(DASM) $(DASMFLAG) $@ >dasm/$@.asm
		
clean		:
		rm -f $(TARGET)
		rm -f $(KERNEL_O)
		rm -f ../lib/mycrt.a
		
link		:
		$(LD) $(LDFLAG) -o $(TARGET) $(KERNEL_O) $(LIB_O)
#---------------------------------------------------------------------
$(KERNEL_S_O) $(CRT_S_O)	: $(KERNEL_S_S) $(CRT_S_S)
			$(ASM) $(ASMFLAG) -o $@ $(basename $@).s
			$(DASM) $(DASMFLAG) $@ >dasm/$@.asm
			
$(KERNEL_C_O) $(CRT_C_O)	: $(KERNEL_C_S) $(CRT_C_S)
			$(C) $(CFLAG) -o $@ $(basename $@).c
			$(DASM) $(DASMFLAG) $@ >dasm/$@.asm
#---------------------------------------------------------------------
$(LIB_O)		:
		(cd ../lib;make)
		
