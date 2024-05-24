#! /bin/zsh

autoload -U compinit
compinit

setopt INC_APPEND_HISTORY

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

bindkey -v

alias dot='git \
  --git-dir=${HOME}/Source/github.com/bolny/dot.git/ \
  --work-tree=${HOME}'
alias venv='source .venv/bin/activate'

alias cp='cp -i'
alias ll='ls -lahFG'
alias mv='mv -i'
alias rm='rm -i'
alias gg='git grep'
alias vi='vim'
alias brew='arch -arm64 brew'

if type "starship"
then
    eval "$(starship init zsh)"
fi