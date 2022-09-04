#! /bin/zsh
# shellcheck shell=bash

autoload -U compinit
compinit

setopt INC_APPEND_HISTORY

PATH="${HOME}/.bin:${PATH}"
PATH="${HOME}/.local/bin:${PATH}"

export PATH

HISTFILE=~/.history
HISTSIZE=50000

set -o vi

alias lynx='lynx -cfg ~/.lynx.cfg'
alias grep='grep --color'
alias dot='git --git-dir=${HOME}/src/github.com/bolny/dot.git/ --work-tree=${HOME}'

alias cp='cp -i'
alias ll='ls -lahFG'
alias mv='mv -i'
alias rm='rm -i'
alias gr='grep --color'
alias gl='git ls-files'
alias gg='git grep'
alias ly='lynx -cfg ~/.config/lynx/lynx.cfg'
alias se='duck'
alias sl='streamlink'

NL=$'\n'
export PROMPT="%n@%m %~${NL}> "
