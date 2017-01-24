NVIMRC = init.vim
NVIMRC_LINK_TARGET = $(CURDIR)/$(NVIMRC)
NVIMRC_LINK_NAME = $(HOME)/.config/nvim/$(NVIMRC)


.PHONY: install clean


install:
	@test -L $(NVIMRC_LINK_NAME) \
		|| ln -s $(NVIMRC_LINK_TARGET) $(NVIMRC_LINK_NAME) \
		&& echo "- $(NVIMRC_LINK_NAME) installed"


clean:
	@test -L $(NVIMRC_LINK_NAME) \
		&& rm $(NVIMRC_LINK_NAME) \
		&& echo "- $(NVIMRC_LINK_NAME) uninstalled" \
		|| echo "- $(NVIMRC_LINK_NAME) not installed"
