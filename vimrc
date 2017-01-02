" vundle package manager settings {{{
"
set nocompatible
filetype off                    " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'

" My Plugins here:
"
" original repos on github
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mileszs/ack.vim'
Plugin 'tristen/vim-sparkup'
Plugin 'leafgarland/typescript-vim'
Plugin 'clausreinke/typescript-tools.vim'
" vim-scripts repos
Plugin 'jade.vim'
Plugin 'groenewege/vim-less'
Plugin 'cakebaker/scss-syntax.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"
" endof vundle package manager settings }}}

" general settings
set nobackup

set nu
set ruler

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set smartindent

set hlsearch
set incsearch
set clipboard=unnamed
set backspace=indent,eol,start
" colorscheme delek

syntax on

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

" turn off search highlights
nmap <silent> <C-H> :nohlsearch<CR>

function ToggleNERDTree()
    execute ":NERDTreeToggle"
endfunction
command -nargs=0 ToggleNERDTree :call ToggleNERDTree()

nmap <ESC>t :ToggleNERDTree<CR>

" set filetype for jsfl
autocmd BufNewFile,BufRead *.jsfl setlocal filetype=javascript
