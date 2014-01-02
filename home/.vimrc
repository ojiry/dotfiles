set nocompatible

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundleLazy 'Shougo/neocomplcache'
NeoBundleLazy 'Shougo/neosnippet'
NeoBundle 'Shougo/neocomplcache-rsense'
NeoBundle 'tpope/vim-rails'
NeoBundleLazy 'vim-ruby/vim-ruby'
NeoBundleLazy 'skwp/vim-rspec'
NeoBundleLazy 'ruby-matchit'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'thoughbot/vim-rspec'

filetype plugin indent on

NeoBundleCheck

set ambiwidth=double
set autoindent
set backspace=2
set clipboard+=unnamed
set expandtab
set hlsearch
set ignorecase
set nobackup
set nocompatible
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

let g:rspec_command = "Dispatch rspec {spec}"
