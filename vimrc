" vim.plug settings
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'mileszs/ack.vim'
Plug 'tristen/vim-sparkup'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Plug 'jade.vim'
Plug 'groenewege/vim-less'
Plug 'cakebaker/scss-syntax.vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'leafgarland/typescript-vim', {'for': 'typescript'}
Plug 'Quramy/tsuquyomi', {'for': 'typescript'}
Plug 'junegunn/vim-easy-align'
Plug 'altercation/vim-colors-solarized'
Plug 'posva/vim-vue'
Plug 'othree/yajs.vim'
Plug 'w0rp/ale'
call plug#end()

filetype plugin indent on

" general settings
set nobackup

set nu

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set autoindent
set smartindent

set hlsearch
set clipboard=unnamed

set hidden

syntax enable
if has('gui_running')
  set background=light
else
  set background=dark
endif
colorscheme solarized

" status line setting
"set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
"set laststatus=2

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

" vim-airline settings
let g:airline#extensions#tabline#enabled=1      " 탭 사용시 상단에 탭목록 표시
let g:airline#extensions#tabline#tab_nr_type=1  " 탭 번호를 표시
let g:airline#extensions#tabline#fnamemod=':t'  " 탭 제목에 파일이름만 표시

" set filetype for jsfl
autocmd BufNewFile,BufRead *.jsfl setlocal filetype=javascript
