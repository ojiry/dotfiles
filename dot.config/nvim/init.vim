let g:cache_home = empty($XDG_CACHE_HOME) ? expand('$HOME/.cache') : $XDG_CACHE_HOME
let g:config_home = empty($XDG_CONFIG_HOME) ? expand('$HOME/.config') : $XDG_CONFIG_HOME

let s:dein_cache_dir = g:cache_home . '/dein'

augroup MyAutoCmd
    autocmd!
augroup END

if &runtimepath !~# '/dein.vim'
    let s:dein_repo_dir = s:dein_cache_dir . '/repos/github.com/Shougo/dein.vim'

    if !isdirectory(s:dein_repo_dir)
        call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
    endif

    execute 'set runtimepath^=' . s:dein_repo_dir
endif

let g:dein#install_max_processes = 16
let g:dein#install_progress_type = 'title'
let g:dein#install_message_type = 'none'
let g:dein#enable_notification = 1

if dein#load_state(s:dein_cache_dir)
    call dein#begin(s:dein_cache_dir)

    let s:toml_dir = g:config_home . '/dein'

    call dein#load_toml(s:toml_dir . '/plugins.toml', {'lazy': 0})
    call dein#load_toml(s:toml_dir . '/plugins_lazy.toml', {'lazy': 1})

    call dein#end()
    call dein#save_state()
endif

if has('vim_starting') && dein#check_install()
    call dein#install()
endif

filetype plugin indent on

let g:python_host_prog  = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

set autoindent
set clipboard+=unnamedplus
set encoding=utf-8
set expandtab
set hlsearch
set ignorecase
set number
set shiftwidth=2
set smartcase
set softtabstop=2
set tabstop=2

nnoremap <C-]> g<C-]>

" ref. http://vim-jp.org/vim-users-jp/2010/11/03/Hack-181.html
command! -nargs=0 Note call s:open_note()
function! s:open_note()
    let l:note_dir = '/tmp/notes'
    if !isdirectory(l:note_dir)
        call mkdir(l:note_dir, 'p')
    endif
    let l:filename = input('Filetype: ', l:note_dir.strftime('/%Y%m%d%H%M%S.'))
    if l:filename != ''
        execute 'edit ' . l:filename
    endif
endfunction
