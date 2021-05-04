syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'valloric/youcompleteme'
Plug 'stanangeloff/php.vim'
Plug 'shawncplus/phpcomplete.vim'
Plug 'morhetz/gruvbox'

call plug#end()

" colorscheme gruvbox
" set background=dark

" NerdTree settings
let g:NERDTreeWinSize=50
let NERDTreeShowHidden=1
" au VimEnter *  NERDTree
