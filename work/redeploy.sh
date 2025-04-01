#!/bin/sh

DOTFILES_DIR=~/Source/github.com/bolny/dot/work
TARGET_DIR=~

cd "$DOTFILES_DIR" || exit

for dir in */; do
    stow --restow --verbose --dotfiles --target="$TARGET_DIR" "${dir%/}"
done
