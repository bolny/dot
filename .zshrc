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
export HOMEBREW_BUNDLE_FILE_GLOBAL="${HOME}/.config/brewfile/${HOSTNAME}.Brewfile"

if type "vivid" > /dev/null
then
    export LS_COLORS="$(vivid generate solarized-light)"
fi

HISTFILE=~/.history
HISTSIZE=50000

bindkey -v

if type "gls" > /dev/null
then
    alias ls='gls --color'
fi

alias dot='git \
  --git-dir=${HOME}/Source/github.com/bolny/dot.git/ \
  --work-tree=${HOME}'
alias venv='source .venv/bin/activate'

alias cp='cp -i'
alias ll='ls -lahFG'
alias mv='mv -i'
alias rm='trash'
alias gg='git grep'
alias brew='arch -arm64 brew'

alias vi='vim'
alias v='vim'
alias t='tmux'

alias idate='date -u +"%Y-%m-%dT%H:%M:%SZ"'

if type "starship" > /dev/null
then
    eval "$(starship init zsh)"
fi