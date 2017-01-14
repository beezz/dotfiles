ZSHRC = .zshrc
ZSHRC_LINK_TARGET = $(PWD)/$(ZSHRC)
ZSHRC_LINK_NAME = $(HOME)/$(ZSHRC)


.PHONY: install clean

install:
	ln -s $(ZSHRC_LINK_TARGET) $(ZSHRC_LINK_NAME)


clean:
	rm $(ZSHRC_LINK_NAME)
