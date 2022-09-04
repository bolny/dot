colorscheme flatwhite

if filereadable(expand("~/.vim/autoload/plug.vim"))
  call plug#begin()

  Plug 'editorconfig/editorconfig-vim'
  Plug 'tpope/vim-surround'
  Plug 'michaeljsmith/vim-indent-object'

  call plug#end()
endif
