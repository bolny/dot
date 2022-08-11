#! /bin/zsh
# shellcheck shell=bash

PATH="${HOME}/.bin:${PATH}"
PATH="${HOME}/.local/bin:${PATH}"

export PATH

HISTFILE=~/.history
HISTSIZE=50000

set -o vi

alias cp='cp -i'
alias l='ls -aF'
alias ll='ls -lahFG'
alias mv='mv -i'
alias rm='rm -i'
alias grep='grep --color'
alias lynx='lynx -cfg ~/.lynx.cfg'
alias \?='duck'

NL=$'\n'
PS1="%n@%m %~${NL}> "

[ -f ~/.zshrc.local ] && source ~/.zshrc.local
