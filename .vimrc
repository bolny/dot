set nocompatible

set number
set ruler
set showmode
set laststatus=2

syntax enable
set background=dark

filetype plugin on
set autoindent
set smartindent
set smarttab

set backupcopy=yes
set clipboard=unnamed
set mouse=a

call plug#begin()

" Let a .editorconfig file set tabs/spaces, etc.
Plug 'editorconfig/editorconfig-vim'

" Let vim automatically determine file settings absent editorconfig
Plug 'tpope/vim-sleuth'

" Surround text objects with a character.
Plug 'tpope/vim-surround'

" Add command to comment lines (gc).
Plug 'tpope/vim-commentary'

" Allow plugins (surround) to repeat with .
Plug 'tpope/vim-repeat'

" Add indent levels as text objects.
Plug 'michaeljsmith/vim-indent-object'

" Add additonal predicates for text objects: next and last, as well as a few new
" text objects like text delimeters (, and |).
Plug 'wellle/targets.vim'

" Align a text object around a given character.
Plug 'junegunn/vim-easy-align'
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

" Unifies navigating tmux and vim splits
Plug 'christoomey/vim-tmux-navigator'

call plug#end()