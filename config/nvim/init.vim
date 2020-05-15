let g:mapleader      = "\<Space>"
let g:cache_home     = empty($XDG_CACHE_HOME)  ? expand('$HOME/.cache')       : $XDG_CACHE_HOME
let g:config_home    = empty($XDG_CONFIG_HOME) ? expand('$HOME/.config')      : $XDG_CONFIG_HOME
let g:data_home      = empty($XDG_DATA_HOME)   ? expand('$HOME/.local/share') : $XDG_DATA_HOME
let s:dein_vim       = g:config_home . '/nvim/dein.vim'
let g:ruby_path      = "/Users/ojiry/.anyenv/envs/rbenv/shims/ruby"
let g:ruby_host_prog = "/Users/ojiry/.anyenv/envs/rbenv/shims/ruby"

set clipboard+=unnamedplus
set expandtab
set fileformats=unix,dos,mac
set foldmethod=indent
set helplang=ja,en
set hidden
set ignorecase
set maxmempattern=2000000
set nobackup
set noswapfile
set number
set smartcase
set smartindent
set splitbelow
set splitright
set switchbuf=useopen
set title
set undofile
if !isdirectory(expand("$HOME/.config/nvim/undodir"))
  call mkdir(expand("HOME/.config/nvim/undodir"), "p")
endif
set undodir=$HOME/.config/nvim/undodir

if filereadable(s:dein_vim)
  execute 'source' s:dein_vim
endif

filetype plugin indent on
syntax enable
