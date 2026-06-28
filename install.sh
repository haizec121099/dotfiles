#!/usr/bin/bash

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
mkdir -p "$HOME/.config"

link_file() {
    local src=$1
    local dest=$2

    rm -rf "$dest"
    ln -s "$src" "$dest"
}

link_file "$DOTFILES_DIR/gitconfig/config" "$HOME/.gitconfig"
link_file "$DOTFILES_DIR/tmux/config" "$HOME/.tmux.conf"
link_file "$DOTFILES_DIR/neovim" "$HOME/.config/nvim"
