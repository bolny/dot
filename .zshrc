if [ "$(basename ${SHELL})" = "zsh" ]
then
  PS1='%n@%m %~ > '
fi

. ~/.bashrc
