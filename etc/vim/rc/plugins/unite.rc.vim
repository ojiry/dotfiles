let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable =1

if executable('hw')
  " Use hw(highway)
  " https://github.com/tkengo/highway
  let g:unite_source_grep_command = 'hw'
  let g:unite_source_grep_default_opts = '--no-group --no-color'
  let g:unite_source_grep_recursive_opt = ''
elseif executable('ag')
  " Use ag(the silver searcher)
  " https://github.com/ggreer/the_silver_searcher
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts =
        \ '-i --vimgrep --hidden --ignore ' .
        \  '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
  let g:unite_source_grep_recursive_opt = ''
elseif executable('pt')
  " Use pt(the platinum searcher)
  " https://github.com/monochromegane/the_platinum_searcher
  let g:unite_source_grep_command = 'pt'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor'
  let g:unite_source_grep_recursive_opt = ''
elseif executable('jvgrep')
  " For jvgrep
  " https://github.com/mattn/jvgrep
  let g:unite_source_grep_command = 'jvgrep'
  let g:unite_source_grep_default_opts = '-i --exclude ''\.(git|svn|hg|bzr)'''
  let g:unite_source_grep_recursive_opt = '-R'
endif

nnoremap <silent> [Space]n  :UniteNext<CR>
nnoremap <silent> [Space]p  :UnitePrevious<CR>
