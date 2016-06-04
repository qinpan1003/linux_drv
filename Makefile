#
# Reference http://www.gnu.org/software/make/manual/make.html
#

# ��Ҫ�ų���Ŀ¼
exclude_dirs := include/ bin/

# ȡ�õ�ǰ��Ŀ¼���Ϊ1������Ŀ¼����
dirs := $(shell ls -F | grep /)
dirs := $(filter-out $(exclude_dirs),$(dirs))

# ����clean��Ŀ¼����ͬ��������_clean_ǰ׺
clean_dirs := $(addprefix _clean_,$(dirs) )

.PHONY: all $(dirs) clean

# ִ��Ĭ��make target
all: $(dirs)

$(dirs):
	$(MAKE) -C $@

# ִ��clean
clean: $(clean_dirs)

$(clean_dirs):
	$(MAKE) -C $(patsubst _clean_%,%,$@) clean
    





