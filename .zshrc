#! /bin/zsh
# shellcheck shell=bash

autoload -U compinit
compinit

setopt INC_APPEND_HISTORY

PATH="${HOME}/.bin:${PATH}"
PATH="${HOME}/.local/bin:${PATH}"

export PATH
export KEYTIMEOUT=1
TTY=$(tty)
export GPG_TTY=$TTY

HISTFILE=~/.history
HISTSIZE=50000

bindkey -e

alias dot='git \
  --git-dir=${HOME}/Source/github.com/bolny/dot.git/ \
  --work-tree=${HOME}'
alias venv='source .venv/bin/activate'

alias cp='cp -i'
alias ll='ls -lahFG'
alias mv='mv -i'
alias rm='rm -i'
alias gg='git grep'
alias brew='arch -arm64 brew'

eval "$(starship init zsh)"