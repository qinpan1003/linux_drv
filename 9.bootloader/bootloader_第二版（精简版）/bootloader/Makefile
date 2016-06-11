.PHONY	: clean
TARGET	:= bootloader
CROSS_COMPILE	?= 
CFLAGS		:= -I include/ -O
LIBS		:= 
LDFLAGS		:= $(LIBS) -T lds.lds

SRC_DIR		:= src
OBJS_DIR	:= objs
SRC		:= $(basename $(shell ls $(SRC_DIR)))
OBJS		:= $(addprefix $(OBJS_DIR)/, $(addsuffix .o,$(SRC)))

$(TARGET)	: Makefile lds.lds $(OBJS)
	$(CROSS_COMPILE)ld $(LDFLAGS) -o $@ $(OBJS)
	$(CROSS_COMPILE)objdump -D $@ > $@.txt
	$(CROSS_COMPILE)objcopy -O binary $@ $@.bin

$(OBJS_DIR)/%.o	: $(SRC_DIR)/%.S Makefile
	$(CROSS_COMPILE)gcc $(CFLAGS) -c -o $@ $<

$(OBJS_DIR)/%.o	: $(SRC_DIR)/%.c Makefile
	$(CROSS_COMPILE)gcc $(CFLAGS) -c -o $@ $<

clean	:
	rm -rf $(OBJS) $(TARGET) $(TARGET).bin $(TARGET).txt