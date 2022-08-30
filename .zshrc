#! /bin/zsh
# shellcheck shell=bash

autoload -U compinit; compinit

setopt INC_APPEND_HISTORY

PATH="${HOME}/.bin:${PATH}"
PATH="${HOME}/.local/bin:${PATH}"

export PATH

HISTFILE=~/.history
HISTSIZE=50000

set -o vi

alias cp='cp -i'
alias ll='ls -lahFG'
alias mv='mv -i'
alias rm='rm -i'
alias grep='grep --color'
alias gr='grep --color'
alias gl='git ls-files'
alias gg='git grep'
alias lynx='lynx -cfg ~/.lynx.cfg'
alias ly='lynx -cfg ~/.lynx.cfg'
alias se='duck'

NL=$'\n'
PROMPT="%n@%m %~${NL}> "

[ -f ~/.zshrc.local ] && source ~/.zshrc.local
