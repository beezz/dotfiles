.PHONY: zsh zsh-clean install test


docker-build:
	docker build . -t dotfiles

docker-test:
	docker run --rm -v $(CURDIR):/home/beezz/code/dotfiles \
		   -i -t dotfiles /bin/bash \
		   -c 'source dotfiles/bin/activate && cd code/dotfiles && make clean install test'


src-dir:
	mkdir -p $(CURDIR)/src


zsh-clone:
	@echo [ -d $(CURDIR)/src/zsh ] || cd $(CURDIR)/src && git clone https://github.com/zsh-users/zsh.git


zsh-pull: zsh-clone
	@cd $(CURDIR)/src/zsh && git pull


zsh-configure: zsh-pull
	@cd $(CURDIR)/src/zsh && ./configure


zsh-make: zsh-configure
	@cd $(CURDIR)/src/zsh && make


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
