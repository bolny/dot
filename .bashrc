#! /bin/bash

PATH="${HOME}/.bin:${PATH}"
PATH="${HOME}/.local/bin:${PATH}"
TTY=$(tty)
HOSTNAME=$(hostname)

export PATH
export KEYTIMEOUT=1
export GPG_TTY=$TTY
export HOMEBREW_BUNDLE_FILE="${HOME}/.config/brewfile/${HOSTNAME}.Brewfile"

HISTFILE=~/.history
HISTSIZE=50000

set -o vi

alias dot='git \
  --git-dir=${HOME}/Source/github.com/bolny/dot.git/ \
  --work-tree=${HOME}'
alias venv='source .venv/bin/activate'

alias ll='ls -lahFG'
alias cp='cp -i'
alias mv='mv -i'

if command -v trash > /dev/null 2>&1
then
    alias rm='trash'
else
    alias rm='rm -i'
fi
alias gg='git grep'
alias vi='vim'
alias v='vim'
alias t='tmux'
alias brew='arch -arm64 brew'

if command -v starship > /dev/null 2>&1
then
    eval "$(starship init bash)"
fi
