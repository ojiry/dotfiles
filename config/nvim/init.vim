augroup MyAutoCmd
  autocmd!
augroup END

let g:mapleader = "\<Space>"

let g:cache_home  = empty($XDG_CACHE_HOME)  ? expand('$HOME/.cache')       : $XDG_CACHE_HOME
let g:config_home = empty($XDG_CONFIG_HOME) ? expand('$HOME/.config')      : $XDG_CONFIG_HOME
let g:data_home   = empty($XDG_DATA_HOME)   ? expand('$HOME/.local/share') : $XDG_DATA_HOME

let g:dein#enable_notification   = 1
let g:dein#install_message_type  = 'none'
let g:dein#install_progress_type = 'title'

let s:dein_cache_dir = g:cache_home . '/dein'
let s:dein_toml      = g:config_home . '/nvim/dein.toml'
let s:deinlazy_toml  = g:config_home . '/nvim/deinlazy.toml'
let s:deinft_toml    = g:config_home . '/nvim/deinft.toml'

if &runtimepath !~# '/dein.vim'
  let s:dein_repo_dir = s:dein_cache_dir . '/repos/github.com/Shougo/dein.vim'

  if !isdirectory(s:dein_repo_dir)
    call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
  endif

  execute 'set runtimepath^=' . s:dein_repo_dir
endif

if dein#load_state(s:dein_cache_dir)
  call dein#begin(s:dein_cache_dir)
  call dein#load_toml(s:dein_toml, {'lazy': 0})
  call dein#load_toml(s:deinlazy_toml, {'lazy': 1})
  call dein#load_toml(s:deinft_toml, {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

if !has('vim_starting') && dein#check_install()
  call dein#install()
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
