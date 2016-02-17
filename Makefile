all: install

clean:

deploy:

help:
	@echo "make clean      #=> Remove the dot files and this repo"
	@echo "make deploy     #=> Create symlink to home directory"
	@echo "make init       #=> Setup environment settings"
	@echo "make install    #=> Run make update, deploy, init"
	@echo "make list       #=> Show dot files in this repo"
	@echo "make test       #=> Test dotfiles and init scripts"
	@echo "make update     #=> Fetch changes for this repo"

init:

install: update deploy init

list:

test:

update:
	git pull origin master
	git submodule init
	git submodule update
	git submodule foreach git pull origin master
