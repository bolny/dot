set nocompatible

set autoindent
set autowrite
set number
set ruler
set showmode
set tabstop=4

set background=light
set shiftwidth=4
set softtabstop=4
set smartindent
set smarttab
set expandtab
set nowrap
set nofixendofline
set backupcopy=yes

set foldmethod=manual
set nofoldenable
set clipboard=unnamed

syntax enable
filetype plugin on

let mapleader=","
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

