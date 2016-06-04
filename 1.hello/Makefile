#文件名必须是Makefile
obj-m	=	hello.o
KDIR	=	/usr/src/kernels/linux
PWD	=	$(shell pwd)
default:
	$(MAKE) -C $(KDIR) M=$(PWD) modules
	
clean:
	rm -fr *.o *.ko *.mod.c .*.cmd .tmp_versions *.unsigned *.order *.symvers