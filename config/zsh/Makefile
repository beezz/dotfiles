ZSHRC = .zshrc
ZSHRC_LINK_TARGET = $(CURDIR)/$(ZSHRC)
ZSHRC_LINK_NAME = $(HOME)/$(ZSHRC)


.PHONY: install clean


install:
	@test -L $(ZSHRC_LINK_NAME) \
		|| ln -s $(ZSHRC_LINK_TARGET) $(ZSHRC_LINK_NAME) \
		&& echo "- $(ZSHRC_LINK_NAME) installed"


clean:
	@test -L $(ZSHRC_LINK_NAME) \
		&& rm $(ZSHRC_LINK_NAME) \
		&& echo "- $(ZSHRC_LINK_NAME) uninstalled" \
		|| echo "- $(ZSHRC_LINK_NAME) not installed"
