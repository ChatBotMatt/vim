" pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on

filetype plugin on
au FileType php set omnifunc=phpcomplete#CompletePHP

syntax enable
set background=dark
colorscheme seoul256

" buffer opts
set autoread
set autowrite

" display opts
set number
set title

" tab opts
set autoindent
set smartindent
set expandtab

set history=400

" search opts
set hlsearch
set ignorecase
set smartcase
set incsearch
