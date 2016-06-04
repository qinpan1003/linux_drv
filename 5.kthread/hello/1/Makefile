#文件名必须是Makefile
#
# Reference http://www.gnu.org/software/make/manual/make.html
#

# 需要排除的目录
exclude_dirs := include/ bin/

# 取得当前子目录深度为1的所有目录名称
dirs := $(shell ls -F | grep /)
dirs := $(filter-out $(exclude_dirs),$(dirs))

# 避免clean子目录操作同名，加上_clean_前缀
clean_dirs := $(addprefix _clean_,$(dirs) )

.PHONY: default clean

obj-m += 2/

KDIR = /usr/src/kernels/linux
PWD	= $(shell pwd)
default:
	$(MAKE) -C $(KDIR) M=$(PWD) modules
	
# 执行clean
clean: $(clean_dirs)
	rm -fr *.o *.ko *.mod.c .*.cmd .tmp_versions *.unsigned *.order *.symvers

$(clean_dirs):
	$(MAKE) -C $(patsubst _clean_%,%,$@) clean
	
	
	
	