
XINITRC = .xinitrc
XINITRC_LINK_TARGET = $(CURDIR)/$(XINITRC)
XINITRC_LINK_NAME = $(HOME)$(XINITRC)


.PHONY: install clean

install:
	ln -s $(XINITRC_LINK_TARGET) $(XINITRC_LINK_NAME)


clean:
	test -e $(XINITRC_LINK_NAME) && rm $(XINITRC_LINK_NAME) || echo ok
