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

syntax enable

filetype plugin indent on

set autoindent
set clipboard+=unnamedplus
set encoding=utf-8
set expandtab
set hlsearch
set ignorecase
set incsearch
set number
set shiftwidth=2
set smartcase
set smartindent
set softtabstop=2
set tabstop=2

nnoremap <C-]> g<C-]>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q!<CR>
nnoremap <Leader>ns :<C-u>split +enew<CR>
nnoremap <Leader>nv :<C-u>vsplit +enew<CR>
