#! /bin/zsh
# shellcheck shell=bash

if [ "$(basename "${SHELL}")" = "zsh" ]
then
  NL=$'\n'
  PS1="%n@%m %~${NL}> "
fi

[ -f .zshrc.local ] && source .zshrc.local
[ -f .bashrc ] && source .bashrc
