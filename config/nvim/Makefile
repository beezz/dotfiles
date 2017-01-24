NVIMRC = init.vim
NVIMRC_LINK_TARGET = $(CURDIR)/$(NVIMRC)
NVIMRC_LINK_DIR = $(HOME).config/nvim/
NVIMRC_LINK_NAME = $(NVIMRC_LINK_DIR)$(NVIMRC)


.PHONY: install clean


install:
	@test -d $(NVIMRC_LINK_DIR) || mkdir -p $(NVIMRC_LINK_DIR)
	@test -L $(NVIMRC_LINK_NAME) \
		|| ln -s $(NVIMRC_LINK_TARGET) $(NVIMRC_LINK_NAME) \
		&& echo "- $(NVIMRC_LINK_NAME) installed"


clean:
	@test -L $(NVIMRC_LINK_NAME) \
		&& rm $(NVIMRC_LINK_NAME) \
		&& echo "- $(NVIMRC_LINK_NAME) uninstalled" \
		|| echo "- $(NVIMRC_LINK_NAME) not installed"
