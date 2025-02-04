#! /bin/sh
# This file is intended to provide text ready to copy and paste
# shellcheck disable=2016

echo "Initializing new computer."
echo "==="

printf "\n\nInstall Homebrew"
echo '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'

printf "\n\nGenerate ssh keypair for github"
echo "ssh-keygen"

printf "\n\nInstall ssh public key in github"
echo "open github, sign in and add the contents of id_ed25519.pub to your ssh keys"
echo "cat ~/.ssh/id_ed25519.pub | pbcopy"

printf "\n\nTODO: set up ~/.ssh/config"
echo "Add the following to ~/.ssh/config"
cat <<- EOF
Host *
    UseKeychain yes
    AddKeysToAgent yes
    IdentityFile ~/.ssh/id_rsa
EOF


printf "\n\nCreate source folders"
echo "mkdir -p ~/Source/github.com/bolny"

printf "\n\nSet up dot files"
echo 'git clone --bare git@github.com:bolny/dot.git $HOME/Source/github.com/bolny/dot.git'
echo 'git --git-dir=$HOME/Source/github.com/bolny/dot.git/ --work-tree=$HOME reset --hard HEAD'
echo 'git --git-dir=$HOME/Source/github.com/bolny/dot.git/ --work-tree=$HOME config --local status.showUntrackedFiles no'

printf "\n\nSource zshrc and zprofile."
echo 'source ~/.zshrc; source ~/.zprofile'

printf "\n\nInstall vim plugins."
echo 'vim -c "PlugInstall|qa!"'

printf "\n\nInstall homebrew packages."
echo 'brew bundle --global'
