if 0 | endif

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

if neobundle#load_cache(
      \ expand('<sfile>'),
      \ '~/.vim/neobundle.toml',
      \ '~/.vim/neobundlelazy.toml')
  NeoBundleFetch 'Shougo/neobundle.vim'

  call neobundle#load_toml(
        \ '~/.vim/neobundle.toml')
  call neobundle#load_toml(
        \ '~/.vim/neobundlelazy.toml', {'lazy' : 1})

  NeoBundleSaveCache
endif

execute 'source' $HOME.'/.vim/plugins.rc.vim'

call neobundle#end()

filetype plugin indent on

if !has('vim_starting')
  NeoBundleCheck
endif


set ambiwidth=double
set autoindent
set backspace=2
set clipboard+=unnamed
set encoding=utf-8
set expandtab
set hlsearch
set ignorecase
set laststatus=2
set nobackup
set number
set shiftwidth=2
set smartcase
set softtabstop=2
set wildmenu
if has('mouse')
  set mouse=a
endif
syntax on
hi Comment ctermfg=69


if filereadable(expand($HOME.'/.vimrc.local'))
  execute 'source' $HOME.'/.vimrc.local'
endif
