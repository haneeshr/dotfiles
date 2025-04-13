#!/bin/bash
set -e

echo "Setting up bash..."

echo "Linking base.vimrc and vimrc"
ln -sf ~/dotfiles/bash/git-completion.sh ~/.git-completion.sh
ln -sf ~/dotfiles/bash/docker-completion.sh ~/.docker-completion.sh
ln -sf ~/dotfiles/bash/bashrc ~/.bashrc
touch ~/.local.bashrc

echo "Bash setup done!!"
