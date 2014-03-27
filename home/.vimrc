set nocompatible

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundle 'itchyny/lightline.vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'mattn/emmet-vim'
NeoBundleLazy 'ruby-matchit'
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'
NeoBundleLazy 'Shougo/neocomplcache'
NeoBundleLazy 'Shougo/neosnippet'
NeoBundle 'Shougo/neocomplcache-rsense'
NeoBundle 'Shougo/unite.vim'
NeoBundleLazy 'skwp/vim-rspec'
NeoBundle 'thoughbot/vim-rspec'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'tpope/vim-rails'
NeoBundleLazy 'vim-ruby/vim-ruby'

filetype plugin indent on

NeoBundleCheck

set ambiwidth=double
set autoindent
set backspace=2
set clipboard+=unnamed
set expandtab
set hlsearch
set ignorecase
set laststatus=2
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

let g:rspec_command = "Dispatch bundle exec rspec {spec}"

" lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" unite
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable =1
