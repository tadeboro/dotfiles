" Init pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

" Common settings
filetype plugin on
filetype indent on
syntax on
set modeline
set guifont=Droid\ Sans\ Mono\ 9
set guioptions-=m
set guioptions-=T
set nocompatible
set backspace=2

" Default settings for general files
set sw=2
set ts=8
set sts=8
set expandtab
set textwidth=72

" Make vim's shell behave like interactive bash
set shellcmdflag=-ic

"function! GnuIndent()
"  setlocal cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
"  setlocal shiftwidth=2
"  setlocal tabstop=8
"  setlocal textwidth=78
"endfunction
"
"function! PyIndent()
"  setlocal tabstop=8
"  setlocal softtabstop=4
"  setlocal shiftwidth=4
"  setlocal textwidth=78
"endfunction
"
"function SmlSetup()
"  nnoremap š :! sml -Ccontrol.poly-eq-warn=false < %<CR>
"endfunction

"au FileType c,cpp,cuda call GnuIndent()
"au FileType python call PyIndent()
"au filetype sml call SmlSetup()

" Color scheme settings
set background=dark
colo base16-tomorrow

" ctrlp settings
let g:ctrlp_cmd = 'CtrlPMixed'
