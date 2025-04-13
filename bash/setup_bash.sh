#!/bin/bash
set -e

echo "Setting up bash..."

echo "Linking base.vimrc and vimrc"
ln -sf ~/dotfiles/bash/git-completion.bash ~/.git-completion.bash
ln -sf ~/dotfiles/bash/docker-completion.bash ~/.docker-completion.bash
ln -sf ~/dotfiles/bash/bashrc ~/.bashrc
touch ~/.local.bashrc

echo "Bash setup done!!"
