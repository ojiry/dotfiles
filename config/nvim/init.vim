augroup MyAutoCmd
  autocmd!
augroup END

let g:mapleader = "\<Space>"

let g:cache_home  = empty($XDG_CACHE_HOME)  ? expand('$HOME/.cache')       : $XDG_CACHE_HOME
let g:config_home = empty($XDG_CONFIG_HOME) ? expand('$HOME/.config')      : $XDG_CONFIG_HOME
let g:data_home   = empty($XDG_DATA_HOME)   ? expand('$HOME/.local/share') : $XDG_DATA_HOME

let s:dein_vim = g:config_home . '/nvim/dein.vim'

if filereadable(s:dein_vim)
  execute 'source' s:dein_vim
endif

filetype plugin indent on
syntax enable

set autoindent
set autoread
set backspace=indent,eol,start
set clipboard+=unnamedplus
set display=lastline
set encoding=utf-8
set expandtab
set fileformats=unix,dos,mac
set hidden
set hlsearch
set ignorecase
set incsearch
set nobackup
set number
set ruler
set smartcase
set smartindent
set splitbelow
set splitright
set switchbuf=useopen
set title

nnoremap <C-]> g<C-]>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q!<CR>
nnoremap <Leader>ns :<C-u>split +enew<CR>
nnoremap <Leader>nv :<C-u>vsplit +enew<CR>
