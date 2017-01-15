FROM debian

ENV LANG C.UTF-8

RUN apt-get update \
 && apt-get install -y \
 	build-essential \
	git \
	python-virtualenv \
 && rm -rf /var/lib/apt/lists/*

RUN useradd -d /home/beezz/ -m beezz

USER beezz

WORKDIR /home/beezz

RUN virtualenv dotfiles \
 && dotfiles/bin/pip install testinfra
