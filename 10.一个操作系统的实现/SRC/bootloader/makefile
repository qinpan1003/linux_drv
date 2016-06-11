ASM		=	nasm
ASMFLAG_BIN	=	-I include/
ASMFLAG_ELF	=	-I include/ -f elf

C		=	gcc
CFLAG		=	-I include/  -fno-builtin -Wall -c

LD		=	ld
LDFLAG		=	-s -Ttext 0x9000 -Map=mapfile.txt

TARGET		=	boot.bsf	loader.bin

TARGET_ELF	=	loader.elf

ELF_O		=	loaders.o loaderc.o

all		:
		make	clean
		make	$(TARGET)
		
clean		:
		rm -f $(TARGET) $(TARGET_ELF) $(ELF_O)
#----------------------------------------------------------------------------
boot.bsf		: boot.s
		$(ASM) $(ASMFLAG_BIN) -o $@ $<
#----------------------------------------------------------------------------
loaders.o		: loaders.s
		$(ASM) $(ASMFLAG_ELF) -o $@ $<

loaderc.o		: loaderc.c
		$(C) $(CFLAG) -o $@ $<

loader.bin	: $(ELF_O)
		$(LD) $(LDFLAG) -o $(TARGET_ELF) $(ELF_O)
		objcopy -S -O binary $(TARGET_ELF) $@
#----------------------------------------------------------------------------

