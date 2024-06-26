#! /bin/zsh

source ./_mac_init_funcs.zsh

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

echo "\n\nTODO: set up ~/.ssh/config"
ssh_config_preview
pause_until_enter
ssh_config_exec

echo "\n\nCreate source folders"
folders_preview
pause_until_enter
folders_exec

echo "\n\nSet up dot files"
clone_preview
pause_until_enter
clone_exec

echo "\n\nSource zshrc and zprofile."
source_preview
pause_until_enter
source_exec

echo "\n\nInstall vim plugins."
vim_preview
pause_until_enter
vim_exec

echo "\n\nSign in to Mac App Store"
mas_preview
pause_until_enter
mas_exec

echo "\n\nInstall homebrew packages."
homebrew_install_preview
pause_until_enter
homebrew_install_exec