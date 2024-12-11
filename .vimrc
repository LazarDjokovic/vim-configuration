call plug#begin()

" Sensible defaults for Vim
Plug 'tpope/vim-sensible'

" Fuzzy Finder for quick file and text search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" NERDTree: Directory tree viewer
Plug 'preservim/nerdtree'

" Git integration
Plug 'tpope/vim-fugitive'

" Color scheme: Gruvbox
Plug 'morhetz/gruvbox'

call plug#end()

" Enable dark mode for Gruvbox
set background=dark
colorscheme gruvbox

nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call CocAction('hover')<CR>
nnoremap <silent> <leader>o :CocList outline<CR>

" TAB setting
set autoindent noexpandtab tabstop=4 shiftwidth=4

" Line numbers and toggling
set number
set relativenumber
nnoremap <F2> :set relativenumber!<CR>

" NERDTree mappings
" Toggle NERDTree visibility with Ctrl+n
nnoremap <C-n> :NERDTreeToggle<CR>

" Automatically open NERDTree when starting Vim in a directory
autocmd VimEnter * if argc() == 0 && isdirectory(expand('%')) | NERDTree | wincmd p | endif

" Close Vim if NERDTree is the last open window
autocmd BufEnter * if (winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree()) | q | endif

" FZF mappings
nnoremap <C-S-f> :Files<CR>
nnoremap <C-S-g> :Rg<Space>

" Window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

