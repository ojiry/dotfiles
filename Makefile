DOTPATH    := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
CANDIDATES := $(wildcard .??*) bin
EXCLUSIONS := .DS_Store .git .gitmodules
DOTFILES   := $(filter-out $(EXCLUSIONS), $(CANDIDATES))

all: install

clean:
	./lib/clean

deploy:
	./lib/deploy

help:
	@echo "make clean      #=> Remove the dot files and this repo"
	@echo "make deploy     #=> Create symlink to home directory"
	@echo "make init       #=> Setup environment settings"
	@echo "make install    #=> Run make update, deploy, init"
	@echo "make list       #=> Show dot files in this repo"
	@echo "make test       #=> Test dotfiles and init scripts"
	@echo "make update     #=> Fetch changes for this repo"

init:
	@echo "init"

install: update deploy init
	@exec $$SHELL

list:
	@echo "list"

.PHONY: test
test:
	bats $(DOTPATH)/test/**

uninstall: clean
	-rm -rf $(DOTPATH)

update:
	git pull origin master
	git submodule init
	git submodule update
	git submodule foreach git pull origin master
