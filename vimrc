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

filetype on
syntax on

set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
set laststatus=2

au BufRead,BufNewFile *.json set filetype=json
au! Syntax json source ~/.vim/ftplugin/json.vim

if has("multi_byte")
    if &termencoding == ""
        let &termencoding = &encoding
    endif
    set encoding=utf-8
    setglobal fileencoding=utf-8
    "setglobal bomb
    set fileencodings=ucs-bom,utf-8,latin1
endif

call pathogen#infect()
