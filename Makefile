
SH = /usr/bin/sh


zsh:
	$(SH) config/zsh/install.sh


test:
	python -m pytest -v


install: zsh
	@echo
	@echo
	@echo 'dotfiles installed :)'
	@echo
