if dein#tap('neocomplete.vim') && has('lua') "{{{
  let g:neocomplete#enable_at_startup = 1
  execute 'autocmd MyAutoCmd User' 'dein#source#'.g:dein#name
        \ 'source ~/.vim/rc/plugins/neocomplete.rc.vim'
endif "}}}

if dein#tap('neosnippet.vim') "{{{
  execute 'autocmd MyAutoCmd User' 'dein#source#'.g:dein#name
        \ 'source ~/.vim/rc/plugins/neosnippet.rc.vim'
endif "}}}

if dein#tap('unite.vim') "{{{
  nnoremap    [unite]   <Nop>
  xnoremap    [unite]   <Nop>
  nmap    ;u [unite]
  xmap    ;u [unite]

  nnoremap <silent> ;g
        \ :<C-u>Unite grep -buffer-name=grep`tabpagenr()`
        \ -auto-preview -no-split -no-empty -resume<CR>
  nnoremap <silent> ;p
        \ :Unite buffer<CR>
  nnoremap <silent> ;n
        \ :Unite -buffer-name=file file<CR>
  au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
  au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
  au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
  au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
  au FileType unite nnoremap <silent> <buffer> <expr> <C-T> unite#do_action('tabopen')
  au FileType unite inoremap <silent> <buffer> <expr> <C-T> unite#do_action('tabopen')
  au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
  au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

  " execute 'autocmd MyAutoCmd User' 'dein#source#'.g:dein#name
  "       \ 'source ~/.vim/rc/plugins/unite.rc.vim'
endif "}}}

if dein#tap('lightline.vim') "{{{
  let g:lightline = {
        \ 'colorscheme': 'wombat',
        \ }
endif "}}}

if dein#tap('vim-quickrun') "{{{
  nmap <silent> <Leader>r <Plug>(quickrun)
endif "}}}

if dein#tap('open-browser.vim') "{{{
  nmap gs <Plug>(open-browser-wwwsearch)

  function! s:open_browser_on_source() abort
    nnoremap <Plug>(open-browser-wwwsearch)
          \ :<C-u>call <SID>www_search()<CR>
    function! s:www_search() abort
      let search_word = input('Please input search word: ')
      if search_word != ''
        execute 'OpenBrowserSearch' escape(search_word, '"')
      endif
    endfunction
  endfunction
  " execute 'autocmd MyAutoCmd User' 'dein#source#'.g:dein#name
  "       \ 'call s:open_browser_on_source()'
endif "}}}

if dein#tap('vim-markdown') "{{{
  let g:vim_markdown_folding_disabled=1
endif "}}}
