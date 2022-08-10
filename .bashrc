#! /bin/bash

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

[ -f ~/.bashrc.local ] && source ~/.bashrc.local
