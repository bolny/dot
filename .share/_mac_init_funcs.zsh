#!/bin/zsh

pause_until_enter () {
    read -s -k "?Press Enter to continue"
}

homebrew_preview () {
    echo "I will execute:"
    echo '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'
}

homebrew_exec () {
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

keypair_gen_preview () {
    echo "I will execute:"
    echo "ssh-keygen"
    echo "It's best to leave everything as the default"
}

keypair_gen_exec () {
    ssh-keygen
}

install_github_preview () {
    echo "open github, sign in and add the contents of id_rsa.pub to your ssh keys"
    echo "I will execute:"
    echo "cat ~/.ssh/id_rsa.pub | pbcopy"
}

install_github_exec () {
    cat ~/.ssh/id_rsa.pub | pbcopy
}

folders_preview () {
    echo "I wil execute:"
    echo "mkdir -p ~/Source/github.com/bolny"
}

folders_exec () {
    mkdir -p ~/Source/github.com/bolny
}

clone_preview () {
    echo "I will execute:"
    echo 'git clone --bare git@github.com:bolny/dot.git $HOME/Source/github.com/bolny/dot.git'
    echo 'git --git-dir=$HOME/Source/github.com/bolny/dot.git/ --work-tree=$HOME reset --hard HEAD'
    echo 'git --git-dir=$HOME/Source/github.com/bolny/dot.git/ --work-tree=$HOME config --local status.showUntrackedFiles no'
}

clone_exec () {
    git clone --bare git@github.com:bolny/dot.git $HOME/Source/github.com/bolny/dot
    git --git-dir=$HOME/Source/github.com/bolny/dot.git/ --work-tree=$HOME reset --hard HEAD
    git --git-dir=$HOME/Source/github.com/bolny/dot.git/ --work-tree=$HOME config --local status.showUntrackedFiles no
}

source_preview () {
    echo "I will execute:"
    echo 'source ~/.zshrc; source ~/.zprofile'
}

source_exec () {
    source ~/.zshrc; source ~/.zprofile
}

mas_preview () {
    echo "sign into the mac app store please."
}

mas_exec () {
    echo "proceeding"
}

homebrew_install_preview () {
    echo "Executing:"
    echo 'brew bundle --global'
}

homebrew_install_exec () {
    brew bundle --global
}

ssh_config_preview () {
    echo "Add the following to ~/.ssh/config"
    echo <<- EOF
        Host *
            UseKeychain yes
            AddKeysToAgent yes
            IdentityFile ~/.ssh/id_rsa
    EOF
}

ssh_config_exec () {
    cat <<- EOF > ~/.ssh/config
        Host *
            UseKeychain yes
            AddKeysToAgent yes
            IdentityFile ~/.ssh/id_rsa
    EOF
}

vim_preview () {
    echo "I will execute:"
    echo 'vim -c "PlugInstall|qa!"'
}

vim_exec () {
    vim -c "PlugInstall|qa!"
}
