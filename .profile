#! /bin/bash

PATH="${HOME}/.bin:${PATH}"
PATH="${HOME}/.local/bin:${PATH}"

export PATH

if [ "$(basename "${SHELL}")" = "bash" ]
then
  export PS1="\u@\h \w\n> "
fi

[ -f ~/.profile.local ] && source ~/.profile.local
