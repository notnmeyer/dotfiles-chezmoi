#!/usr/bin/env bash
set -eu

# install fisher
fish -c "curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher"

# install fish plugins
while read -r plugin
do
  fish -c "fisher install $plugin"
done <"$HOME/.config/fish/fishfile"
