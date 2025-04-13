#!/bin/bash
set -e

echo "Installing dotfiles..."

./vim/setup_vim.sh
./bash/setup_bash.sh

echo "Done!"

