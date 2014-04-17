if has('vim_starting')
  set nocompatible

  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'itchyny/lightline.vim'
NeoBundle 'kannokanno/previm'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'plasticboy/vim-markdown'
NeoBundleLazy 'ruby-matchit'
NeoBundle 'Shougo/vimproc'
NeoBundleLazy 'Shougo/neocomplcache'
NeoBundleLazy 'Shougo/neosnippet'
NeoBundle 'Shougo/neocomplcache-rsense'
NeoBundle 'Shougo/unite.vim'
NeoBundleLazy 'skwp/vim-rspec'
NeoBundle 'thoughbot/vim-rspec'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tyru/open-browser.vim'
NeoBundleLazy 'vim-ruby/vim-ruby'

call neobundle#end()

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
