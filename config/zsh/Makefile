ZSHRC = .zshrc
ZSHRC_LINK_TARGET = $(CURDIR)/$(ZSHRC)
ZSHRC_LINK_NAME = $(HOME)/$(ZSHRC)


.PHONY: install clean

install:
	ln -s $(ZSHRC_LINK_TARGET) $(ZSHRC_LINK_NAME)


clean:
	test -e $(ZSHRC_LINK_NAME) && rm $(ZSHRC_LINK_NAME) || echo ok
