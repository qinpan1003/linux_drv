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

.PHONY: all $(dirs) clean

# 执行默认make target
all: $(dirs)

$(dirs):
	$(MAKE) -C $@

# 执行clean
clean: $(clean_dirs)

$(clean_dirs):
	$(MAKE) -C $(patsubst _clean_%,%,$@) clean
    





