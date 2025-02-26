#! /bin/sh

set -e

SOURCE=$(dirname "$0")

TARGET=".config/vim/vimrc"
mkdir -p "${HOME}/.config/vim"
ln -sf "${SOURCE}/${TARGET}" "${HOME}/${TARGET}"
echo "${HOME}/${TARGET}"

TARGET=".config/vim/colors/default-light.vim"
mkdir -p "${HOME}/.config/vim/colors"
ln -sf "${SOURCE}/${TARGET}" "${HOME}/${TARGET}"
echo "${HOME}/${TARGET}"

TARGET=".config/vim/colors/grim.vim"
mkdir -p "${HOME}/.config/vim/colors"
ln -sf "${SOURCE}/${TARGET}" "${HOME}/${TARGET}"
echo "${HOME}/${TARGET}"

TARGET=".config/vim/colors/dim.vim"
mkdir -p "${HOME}/.config/vim/colors"
ln -sf "${SOURCE}/${TARGET}" "${HOME}/${TARGET}"
echo "${HOME}/${TARGET}"

TARGET=".config/vim/autoload/plug.vim"
mkdir -p "${HOME}/.config/vim/autoload"
ln -sf "${SOURCE}/${TARGET}" "${HOME}/${TARGET}"
echo "${HOME}/${TARGET}"

TARGET=".config/lynx/lynx.cfg"
mkdir -p "${HOME}/.config/lynx"
ln -sf "${SOURCE}/${TARGET}" "${HOME}/${TARGET}"
echo "${HOME}/${TARGET}"

TARGET=".config/mpv/mpv.conf"
mkdir -p "${HOME}/.config/mpv"
ln -sf "${SOURCE}/${TARGET}" "${HOME}/${TARGET}"
echo "${HOME}/${TARGET}"

TARGET=".config/tmux/tmux.conf"
mkdir -p "${HOME}/.config/tmux"
ln -sf "${SOURCE}/${TARGET}" "${HOME}/${TARGET}"
echo "${HOME}/${TARGET}"

TARGET=".config/streamlink/config"
mkdir -p "${HOME}/.config/streamlink"
ln -sf "${SOURCE}/${TARGET}" "${HOME}/${TARGET}"
echo "${HOME}/${TARGET}"

TARGET=".config/brewfile/Goodsprings.local.Brewfile"
mkdir -p "${HOME}/.config/brewfile"
ln -sf "${SOURCE}/${TARGET}" "${HOME}/${TARGET}"
echo "${HOME}/${TARGET}"

TARGET=".config/brewfile/GYX3D7014Y.Brewfile"
mkdir -p "${HOME}/.config/brewfile"
ln -sf "${SOURCE}/${TARGET}" "${HOME}/${TARGET}"
echo "${HOME}/${TARGET}"

TARGET=".bin/duck"
mkdir -p "${HOME}/.bin"
ln -sf "${SOURCE}/${TARGET}" "${HOME}/${TARGET}"
echo "${HOME}/${TARGET}"

TARGET=".share/mac_init.sh"
mkdir -p "${HOME}/.share"
ln -sf "${SOURCE}/${TARGET}" "${HOME}/${TARGET}"
echo "${HOME}/${TARGET}"

TARGET=".bashrc"
ln -sf "${SOURCE}/${TARGET}" "${HOME}/${TARGET}"
echo "${HOME}/${TARGET}"

TARGET=".zshrc"
ln -sf "${SOURCE}/${TARGET}" "${HOME}/${TARGET}"
echo "${HOME}/${TARGET}"

TARGET=".zprofile"
ln -sf "${SOURCE}/${TARGET}" "${HOME}/${TARGET}"
echo "${HOME}/${TARGET}"

TARGET=".gitignore_global"
ln -sf "${SOURCE}/${TARGET}" "${HOME}/${TARGET}"
echo "${HOME}/${TARGET}"

TARGET=".gitconfig"
ln -sf "${SOURCE}/${TARGET}" "${HOME}/${TARGET}"
echo "${HOME}/${TARGET}"

