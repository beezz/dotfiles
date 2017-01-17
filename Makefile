.PHONY: zsh zsh-clean install test


docker-build:
	docker build . -t dotfiles

docker-test:
	docker run --rm -v $(CURDIR):/home/beezz/code/dotfiles \
		   -i -t dotfiles /bin/bash \
		   -c 'source dotfiles/bin/activate && cd code/dotfiles && make clean install test'

zsh:
	$(MAKE) -C config/zsh install

zsh-clean:
	$(MAKE) -C config/zsh clean


tmux:
	$(MAKE) -C config/tmux install

tmux-clean:
	$(MAKE) -C config/tmux clean

x:
	$(MAKE) -C config/x install

x-clean:
	$(MAKE) -C config/x clean


test:
	python -m pytest -v

clean: zsh-clean tmux-clean x-clean
	@echo
	@echo
	@echo 'dotfiles uninstalled'
	@echo

install: zsh tmux x
	@echo
	@echo
	@echo 'dotfiles installed. Enjoy.'
	@echo
