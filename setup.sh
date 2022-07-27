#!/bin/bash

if [ "$(uname)" = "Darwin" ]
then
	ln -sf "${PWD}/.Brewfile" "${HOME}/.Brewfile"
fi

ln -sf "${PWD}/.bashrc" "${HOME}/.bashrc"
ln -sf "${PWD}/.gitconfig" "${HOME}/.gitconfig"
ln -sf "${PWD}/.gitignore_global" "${HOME}/.gitignore_global"
ln -sf "${PWD}/.profile" "${HOME}/.profile"
ln -sf "${PWD}/.tmux.conf" "${HOME}/.tmux.conf"
ln -sf "${PWD}/.vimrc" "${HOME}/.vimrc"
ln -sf "${PWD}/.zprofile" "${HOME}/.zprofile"
ln -sf "${PWD}/.zshrc" "${HOME}/.zshrc"
