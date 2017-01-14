.PHONY: zsh zsh-clean install test

zsh:
	$(MAKE) -C config/zsh install

zsh-clean:
	$(MAKE) -C config/zsh clean

test:
	python -m pytest -v

clean: zsh-clean
	@echo
	@echo
	@echo 'dotfiles uninstalled'
	@echo

install: zsh
	@echo
	@echo
	@echo 'dotfiles installed. Enjoy.'
	@echo
