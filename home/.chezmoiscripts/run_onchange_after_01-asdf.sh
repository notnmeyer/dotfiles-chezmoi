#!/usr/bin/env bash
set -eu

if [[ ! -d ~/.asdf ]]
then
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf
    mkdir -p ~/.config/fish/completions
    ln -sfs ~/.asdf/completions/asdf.fish ~/.config/fish/completions
    # install plugins
    # shellcheck source=/dev/null
    source "$HOME/.asdf/asdf.sh"
    asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
    asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
    # install global versions
    if [[ -d /home/linuxbrew/.linuxbrew/opt/openssl@1.1 ]]
    then
        RUBY_CONFIGURE_OPTS=--with-openssl-dir=/home/linuxbrew/.linuxbrew/opt/openssl@1.1/ \
        asdf install
    else
        asdf install
    fi
else
    echo "asdf already installed."
fi
