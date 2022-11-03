set -x GPG_TTY (tty)
set -x EDITOR hx
set -x COLORTERM truecolor

set -g fish_user_paths \
    "/opt/homebrew/bin" \
    "/opt/homebrew/sbin" \
    "/usr/local/bin" \
    "/usr/bin" \
    "/bin" \
    "/usr/sbin" \
    "/sbin" \
    "/usr/local/sbin" \
    "$HOME/.cargo/bin" \
    "$GOPATH/bin" \
    "$HOME/bin" \
    "$HOME/Library/Python/3.9/bin" \
    "$HOME/.krew/bin" \
    "$HOME/go/bin" \
    "$fish_user_paths"

test -e ~/.asdf/asdf.fish && source ~/.asdf/asdf.fish

if which rbenv
    status --is-interactive; and source (rbenv init -|psub)
end

test -e {$HOME}/.iterm2_shell_integration.fish \
    && source {$HOME}/.iterm2_shell_integration.fish

# linux specific stuff
if uname -a | grep -iq linux
    # homebrew
    eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)

    # configure aws-vault's backend
    # set -x AWS_VAULT_BACKEND pass
    alias aws-vault "aws-vault --backend=pass"

    #alias docker podman
end
#alias docker podman

