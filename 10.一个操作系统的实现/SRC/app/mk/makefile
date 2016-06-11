ASM		=	nasm
ASMFLAG		=	-I ../include/ -f elf

C		=	gcc
CFLAG		=	-I ../../include/  -fno-builtin -Wall -c

LD		=	ld
LDFLAG		=	-s -Map=mapfile.txt -Ttext 0x110000	# 这个运行地址要跨过内核地址
#-----------------------------------------------------------------------
APP_S_S		=	$(wildcard *.s)
APP_C_S		=	$(wildcard *.c)

APP_S_O		=	$(addsuffix .o,$(basename $(APP_S_S)))
APP_C_O		=	$(addsuffix .o,$(basename $(APP_C_S)))
#-----------------------------------------------------------------------
#在这里填写应用程序名
TARGET		:=	mk
#-----------------------------------------------------------------------
#这是应用程序启动头,不需要改变
START_O		=	../../lib/start.o ../../lib/app_start.o

LIB_O		=	../../lib/mycrt.a
#-----------------------------------------------------------------------
#默认make入口
$(TARGET)		: $(START_O) $(LIB_O) $(APP_S_O) $(APP_C_O)
		$(LD) $(LDFLAG) -o $@ $^
		make	tar
		make	dd
#-----------------------------------------------------------------------
clean		:
		rm -f $(TARGET) $(APP_S_O) $(APP_C_O) mapfile.txt cmd.tar
#-----------------------------------------------------------------------
$(APP_S_O)	: $(APP_S_S)
		$(ASM) $(ASMFLAG) -o $@ $(basename $@).s
			
$(APP_C_O)	: $(APP_C_S)
		$(C) $(CFLAG) -o $@ $(basename $@).c
#-----------------------------------------------------------------------
tar	:
	tar vcf cmd.tar $(TARGET)

dd	:
	dd if=cmd.tar of=../../../c.img seek=4103 conv=notrunc