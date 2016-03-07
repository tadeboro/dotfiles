" Init pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

" Common settings
set nocompatible
filetype plugin on
filetype indent on
syntax on
set modeline
set guifont=Bitstream\ Vera\ Sans\ Mono\ 9
set guioptions-=m
set guioptions-=T
set nocompatible
set backspace=2

" Default settings for general files
set sw=2
set ts=8
set sts=8
set expandtab
set textwidth=78
set colorcolumn=79

" Make vim's shell behave like interactive bash
set shellcmdflag=-ic

" Color scheme settings
set background=dark
colo base16-tomorrow

" ctrlp settings
let g:ctrlp_cmd = 'CtrlPMixed'

" Markdown settings
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_math=1

" Tabularize custom commands
if exists(":Tabularize")
  nmap <Leader>a: :Tabularize /^[^:]*:\zs/l0c1l0<CR>
  vmap <Leader>a: :Tabularize /^[^:]*:\zs/l0c1l0<CR>
endif

" Spell checking
nmap <F12> :set spell spelllang=en<CR>
nmap <F11> :set spell spelllang=sl<CR>
nmap <F10> :set nospell<CR>
