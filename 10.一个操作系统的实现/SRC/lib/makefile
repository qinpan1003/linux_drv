ASM		=	nasm
ASMFLAG		=	-I ../include/ -f elf

C		=	gcc
CFLAG		=	-I ../include/ -fno-builtin -Wall -c
#-----------------------------------------------------------------------
# 添加文件的方式（例如 libs.s）:
# 1、在 ELF 标号里添加 libs.o
# 2、添加标号 
# libs.o	:	libs.s
#	$(ASM) -f elf -o $@ $<
#-----------------------------------------------------------------------
LIB_O		= libs.o libc.o string.o stdio.o start.o app_start.o

all		: 
		make	$(LIB_O)

clean		:
		rm -f $(LIB_O)

libs.o		:	libs.s
		$(ASM) $(ASMFLAG) -o $@ $<

libc.o		:	libc.c
		$(C) $(CFLAG) -o $@ $<
		
string.o		:	string.c
		$(C) $(CFLAG) -o $@ $<

stdio.o		:	stdio.c
		$(C) $(CFLAG) -o $@ $<

start.o		: start.s		# 这个用于为应用程序提供入口
		$(ASM) $(ASMFLAG) -o $@ $<

app_start.o	: app_start.c	# 这个用于为应用程序提供默认输入输出设备
		$(C) $(CFLAG) -o $@ $<