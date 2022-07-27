if [ "$(basename ${SHELL})" = "zsh" ]
then
  NL=$'\n'
  PS1="%n@%m %~${NL}> "
fi

source ~/.bashrc
