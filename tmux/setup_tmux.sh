#!/bin/bash
set -e

echo "Setting up tmux..."

echo "Ensuring tpm is setup"
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
else
  git -C ~/.tmux/plugins/tpm/ pull --ff-only
fi


echo "Linking tmux.conf"
ln -sf ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
touch ~/.local.tmux.conf

echo "Installing plugins..."
~/.tmux/plugins/tpm/bin/install_plugins


# Push updates to existing sessions
# if tmux info &>/dev/null; then
#   echo "Sourcing tmux.conf"
#   tmux source-file ~/.tmux.conf
# 
#   echo "Refreshing clients"
#   tmux list-clients | cut -d: -f1 | xargs -r -n1 tmux refresh-client -c
# fi

echo "tmux setup done!!"
