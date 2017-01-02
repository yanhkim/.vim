" vim.plug settings
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'mileszs/ack.vim'
Plug 'tristen/vim-sparkup'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'jade.vim'
Plug 'groenewege/vim-less'
Plug 'cakebaker/scss-syntax.vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'leafgarland/typescript-vim', {'for': 'typescript'}
Plug 'Quramy/tsuquyomi', {'for': 'typescript'}
Plug 'junegunn/vim-easy-align'
call plug#end()

filetype plugin indent on

" general settings
set nobackup

set nu

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set smartindent

set hlsearch
set clipboard=unnamed
colorscheme darkblue

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

" NERDTree settings
"" \F to :NERDTreeToggle, \f to :NERDTreeFind
nmap <silent> <leader>f <ESC>:NERDTreeFind<CR>
nmap <silent> <leader>F <ESC>:NERDTreeToggle<CR>

" vim-easy-align settings
"" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
"" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" ack.vim settings
if executable('ag')
  let g:ackprg = 'ag --nogroup --nocolor --column'
endif

" set filetype for jsfl
autocmd BufNewFile,BufRead *.jsfl setlocal filetype=javascript
