let g:rspec_command = "Dispatch bundle exec rspec {spec}"

if neobundle#tap('lightline.vim') "{{{
  let g:lightline = {
        \ 'colorscheme': 'wombat',
        \ }

  call neobundle#untap()
endif "}}}

if neobundle#tap('unite.vim') "{{{
  noremap <C-P> :Unite buffer<CR>
  noremap <C-N> :Unite -buffer-name=file file<CR>
  au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
  au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
  au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
  au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
  au FileType unite nnoremap <silent> <buffer> <expr> <C-T> unite#do_action('tabopen')
  au FileType unite inoremap <silent> <buffer> <expr> <C-T> unite#do_action('tabopen')
  au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
  au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

  let neobundle#hooks.on_source =
        \ '~/.vim/rc/plugins/unite.rc.vim'

  call neobundle#untap()
endif "}}}

au FileType go setlocal noexpandtab tabstop=4 shiftwidth=4

let OSTYPE = system('uname')

if neobundle#tap('vim-markdown') "{{{
  let g:vim_markdown_folding_disabled=1

  if OSTYPE == "Darwin\n"
    " marked
    let g:quickrun_config = {}
    let g:quickrun_config.markdown = {
          \ 'outputter' : 'null',
          \ 'command'   : 'open',
          \ 'cmdopt'    : '-a',
          \ 'args'      : 'Marked',
          \ 'exec'      : '%c %o %a %s',
          \ }
  endif

  call neobundle#untap()
endif "}}}

let g:syntastic_ruby_checkers = ['rubocop']
