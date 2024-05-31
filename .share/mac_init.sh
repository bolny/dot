#! /bin/zsh

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
    echo 'git clone --bare git@github.com:bolny/dot.git $HOME/Source/github.com/bolny/dot'
}

clone_exec () {
    git clone --bare git@github.com:bolny/dot.git $HOME/Source/github.com/bolny/dot
}

head_preview () {
    echo "I will execute:"
    echo 'git --git-dir=$HOME/Source/github.com/bolny/dot/ --work-tree=$HOME reset --hard HEAD'
    echo "This is necessary because git thinks that the files missing are deletions"
}

head_exec () {
    git --git-dir=$HOME/Source/github.com/bolny/dot/ --work-tree=$HOME reset --hard HEAD
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
    echo "twice (to install mas apps after mas is installed"
}

homebrew_install_exec () {
    brew bundle --global
    brew bundle --global
}

echo "Initializing new computer."
echo "==="

echo "\n\nInstall Homebrew"
homebrew_preview
pause_until_enter
homebrew_exec

echo "\n\nGenerate ssh keypair for github"
keypair_gen_preview
pause_until_enter
keypair_gen_exec

echo "\n\nInstall ssh public key in github"
install_github_preview
pause_until_enter
install_github_exec

echo "\n\nCreate source folders"
folders_preview
pause_until_enter
folders_exec

echo "\n\nClone bare dot repo"
clone_preview
pause_until_enter
clone_exec

echo "\n\nReset dot repo to head."
head_preview
pause_until_enter
head_exec

echo "\n\nSource zshrc and zprofile."
source_preview
pause_until_enter
source_exec

echo "\n\nSign in to Mac App Store"
mas_preview
pause_until_enter
mas_exec

echo "\n\nInstall homebrew packages."
homebrew_install_preview
pause_until_enter
homebrew_install_exec
