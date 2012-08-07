set nocompatible
set nobackup

set nu
set ruler

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set smartindent

set hlsearch
set incsearch
set clipboard=unnamed

syntax on

" vundle package manager settings {{{
"
filetype off                    " required

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'mileszs/ack.vim'
" vim-scripts repos
Bundle 'jade.vim'

filetype plugin on       " required
"
" endof vundle package manager settings }}}

" status line setting
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
set laststatus=2

" BOM detect
if has("multi_byte")
    if &termencoding == ""
        let &termencoding = &encoding
    endif
    set encoding=utf-8
    setglobal fileencoding=utf-8
    "setglobal bomb
    set fileencodings=ucs-bom,utf-8,latin1
endif
