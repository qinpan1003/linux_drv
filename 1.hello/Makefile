#文件名必须是Makefile

EXTRA_CFLAGS = -O0

obj-m	=	hello.o
KDIR	=	/usr/src/kernels/linux
PWD	=	$(shell pwd)
default:
	$(MAKE) -C $(KDIR) M=$(PWD) modules
	
clean:
	rm -fr *.o *.ko *.mod.c .*.cmd .tmp_versions *.unsigned *.order *.symvers
	
	
depend .depend dep:
	$(CC) $(EXTRA_CFLAGS) -M *.c > .depend
	