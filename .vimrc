syntax on

set number
set relativenumber
set noshowcmd
set noshowmode
set background=dark

set tabstop=4
set shiftwidth=4
set expandtab
set cindent

set cursorline
highlight LineNr cterm=NONE ctermfg=White
highlight CursorLineNr cterm=NONE ctermfg=Yellow
highlight CursorLine cterm=NONE

autocmd FileType * setlocal formatoptions-=cro

call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

autocmd FileType * setlocal formatoptions-=cro

" AirLine
let g:airline_section_z = '%l,%c'
let g:airline#extensions#whitespace#enabled = 0

" Coc
inoremap <expr> <Tab> pumvisible() ? "\<C-y>" : "\<Tab>"
