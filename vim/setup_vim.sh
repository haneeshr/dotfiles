#!/bin/bash
set -e

echo "Setting up vim..."

echo "Ensuring vundle is setup"
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
  git -C ~/.vim/bundle/Vundle.vim pull --ff-only
fi


echo "Linking base.vimrc and vimrc"
ln -sf ~/dotfiles/vim/base.vimrc ~/.base.vimrc
ln -sf ~/dotfiles/vim/vimrc ~/.vimrc
touch ~/.local.vimrc


echo "Installing Plugins"
vim -u ~/dotfiles/vim/base.vimrc +PluginInstall +qall

echo "Vim setup done!!"
