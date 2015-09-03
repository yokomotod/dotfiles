set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Bundle "thinca/vim-ref"
Bundle "Shougo/unite.vim"
Bundle "Shougo/neocomplcache"
Bundle "thinca/vim-quickrun"
Bundle "buftabs"

filetype plugin indent on

syntax on

set whichwrap=b,s,h,l,<,>

set smartindent
set expandtab
set tabstop=4
set shiftwidth=4

set number
set list
set listchars=tab:>-,trail:_
set laststatus=2

set incsearch
set smartcase

set foldmethod=syntax

au InsertEnter * hi StatusLine guifg=DarkBlue guibg=DarkYellow gui=none ctermfg=Blue ctermbg=Yellow cterm=none
au InsertLeave * hi StatusLine guifg=DarkBlue guibg=DarkGray gui=none ctermfg=Blue ctermbg=DarkGray cterm=none

augroup templateload
    autocmd!
    autocmd BufNewFile *.pl 0r ~/.vim/skeleton.pl
augroup END

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
