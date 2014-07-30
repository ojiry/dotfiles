#! /usr/bin/bash

DOTFILES_DIR=~/.dotfiles

if type git; then
  : # You have git command. No Problem
else
  echo "Please install git command!"
  exit 1;
fi

echo "Start fetch dotfiles..."
mkdir -p $DOTFILES_DIR
git clone https://github.com/ryog/dotfiles $DOTFILES_DIR
echo "Done."

echo "Start symbolic link dotfiles..."
ln -vsf $DOTFILES_DIR/gemrc ~/.gemrc
ln -vsf $DOTFILES_DIR/gitconfig ~/.gitconfig
ln -vsf $DOTFILES_DIR/gitignore ~/.gitignore
ln -vsf $DOTFILES_DIR/profile ~/.profile
ln -vsf $DOTFILES_DIR/railsrc ~/.railsrc
ln -vsf $DOTFILES_DIR/tmux.conf ~/.tmux.conf
ln -vsf $DOTFILES_DIR/vimrc ~/.vimrc
echo "Done."

echo "Start install NeoBundle"
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
echo "Done."

echo "Complete setup dotfiles!"
