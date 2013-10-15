" pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on

" Keyboard remappings
" Can be typed even faster than jj.
:imap jk <Esc>

filetype plugin on
au FileType php set omnifunc=phpcomplete#CompletePHP

syntax enable
set background=dark
colorscheme seoul256
set list
set listchars=tab:▸\ ,eol:¬

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
set ts=4 sts=4 sw=4

set history=400

" search opts
set hlsearch
set ignorecase
set smartcase
set incsearch
