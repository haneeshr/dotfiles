#!/bin/bash
set -e

echo "Installing dotfiles..."

./vim/setup_vim.sh
./bash/setup_bash.sh
./tmux/setup_tmux.sh

echo "Done!"

