# dotfiles-chezmoi

1. run `chezmoi init github.com/notnmeyer/dotfiles-chezmoi` on a new machine to generate `~/.config/chezmoi/chezmoi.toml`
    - the repo will be checked out at `~/.local/share/chezmoi`
1. edit the file as appropriate
1. run `chezmoi apply --verbose --dry-run` to see the changes
1. run `chezmoi apply --verbose` to apply the changes
