" pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on

" Keyboard remappings
" Can be typed even faster than jj.
:imap jk <Esc>
" Ctrl+B to check php syntax of the saved file
"map <C-B> :!php -l %<CR> removed as it breaks page-down and its replaced by a
"plugin

" map ; to : to avoid pressing shift constantly, double tap to get ;
" functionality
map ; :
noremap ;; ;

" toggle taglist window
nnoremap <silent> <F2> :TlistToggle<CR>
let Tlist_Use_Right_Window = 1


" Comman remappings
" for common :w mis-spellings
:command WQ wq
:command Wq wq
:command W w
:command Q q

filetype plugin on
au FileType php set omnifunc=phpcomplete#CompletePHP

syntax enable
colorscheme seoul256
set list
hi Normal ctermfg=252 ctermbg=NONE
set listchars=tab:▸\ ,eol:¬

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Monospace\ 9
  endif
endif

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

" use one location for all backup files, failing that use tmp and then cwd
set backupdir=~/.vim/backupdir,/tmp,.
set directory=~/.vim/backupdir,/tmp,.

" NERDTree autoopen etc
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" Syntastic php config
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']


" Trigger ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
