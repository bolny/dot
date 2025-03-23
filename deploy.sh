#!/bin/sh

DOTFILES_DIR=~/Source/github.com/bolny/dot
TARGET_DIR=~

cd "$DOTFILES_DIR" || exit

for dir in */; do
    stow -v --dotfiles -t "$TARGET_DIR" "${dir%/}"
done
