#! /bin/zsh

echo "Initializing new computer."
echo "==="

echo "\n\nInstall Homebrew"
echo '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'

echo "\n\nGenerate ssh keypair for github"
echo "ssh-keygen"

echo "\n\nInstall ssh public key in github"
echo "open github, sign in and add the contents of id_ed25519.pub to your ssh keys"
echo "cat ~/.ssh/id_ed25519.pub | pbcopy"

echo "\n\nTODO: set up ~/.ssh/config"
echo "Add the following to ~/.ssh/config"
echo <<- EOF
Host *
    UseKeychain yes
    AddKeysToAgent yes
    IdentityFile ~/.ssh/id_rsa
EOF


echo "\n\nCreate source folders"
echo "mkdir -p ~/Source/github.com/bolny"

echo "\n\nSet up dot files"
echo 'git clone --bare git@github.com:bolny/dot.git $HOME/Source/github.com/bolny/dot.git'
echo 'git --git-dir=$HOME/Source/github.com/bolny/dot.git/ --work-tree=$HOME reset --hard HEAD'
echo 'git --git-dir=$HOME/Source/github.com/bolny/dot.git/ --work-tree=$HOME config --local status.showUntrackedFiles no'

echo "\n\nSource zshrc and zprofile."
echo 'source ~/.zshrc; source ~/.zprofile'

echo "\n\nInstall vim plugins."
echo 'vim -c "PlugInstall|qa!"'

echo "\n\nInstall homebrew packages."
echo 'brew bundle --global'
