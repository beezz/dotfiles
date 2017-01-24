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
	@test -d $(CURDIR)/src/zsh/.git \
		|| git clone https://github.com/zsh-users/zsh.git $(CURDIR)/src/zsh \
		&& echo '- zsh repository cloned OK'


zsh-pull: zsh-clone
	@cd $(CURDIR)/src/zsh \
		&& git pull


zsh-configure: zsh-pull
	@cd $(CURDIR)/src/zsh \
		&& autoheader \
		&& autoconf \
		&& ./configure


zsh-make: zsh-configure
	@cd $(CURDIR)/src/zsh && $(MAKE)


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


nvim:
	$(MAKE) -C config/nvim install


test:
	python -m pytest -v

clean: zsh-clean tmux-clean x-clean
	@echo
	@echo
	@echo 'dotfiles uninstalled'
	@echo

install: zsh tmux x nvim
	@echo
	@echo
	@echo 'dotfiles installed. Enjoy.'
	@echo
