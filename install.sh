!#/usr/bin/bash

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
mkdir -p "$HOME/.config"

link_file() {
    local src=$1
    local dest=$2

    rm -rf "$dest"
    ln -s "$src" "$dest"
}

link_file "/gitconfig/config" "$HOME/.gitconfig"
link_file "./tmux/config" "../.tmux.conf"
link_file "./neovim" "./.config/nvim"
