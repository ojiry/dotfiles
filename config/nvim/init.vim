let g:mapleader      = "\<Space>"
let g:cache_home     = empty($XDG_CACHE_HOME)  ? expand('$HOME/.cache')       : $XDG_CACHE_HOME
let g:config_home    = empty($XDG_CONFIG_HOME) ? expand('$HOME/.config')      : $XDG_CONFIG_HOME
let g:data_home      = empty($XDG_DATA_HOME)   ? expand('$HOME/.local/share') : $XDG_DATA_HOME
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

packadd minpac

if exists('g:loaded_minpac')
  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})

  call minpac#add('cocopon/iceberg.vim')
  colorscheme iceberg
  call minpac#add('cespare/vim-toml')
  call minpac#add('elixir-lang/vim-elixir')
  call minpac#add('elzr/vim-json')
  call minpac#add('editorconfig/editorconfig-vim')
  call minpac#add('hashivim/vim-terraform')
  let g:terraform_fmt_on_save = 1
  call minpac#add('itchyny/lightline.vim')
  let g:lightline = { 'colorscheme': 'wombat' }
  call minpac#add('junegunn/fzf', { 'do': { -> fzf#install() } })
  call minpac#add('junegunn/fzf.vim')
  nnoremap <Leader>fb :Buffers<CR>
  nnoremap <Leader>fd :Files $HOME/ghq/github.com/ojiry/dotfiles<CR>
  nnoremap <Leader>ff :Files<CR>
  nnoremap <Leader>ft :Filetypes<CR>
  call minpac#add('kballard/vim-fish')
  call minpac#add('leafgarland/typescript-vim')
  call minpac#add('mhinz/vim-mix-format')
  let g:mix_format_on_save = 1
  call minpac#add('neovim/nvim-lspconfig')
lua << EOF
local nvim_lsp = require('lspconfig')
nvim_lsp.gopls.setup{}
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  local opts = { noremap=true, silent=true }

  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

nvim_lsp["gopls"].setup { on_attach = on_attach }
EOF
  call minpac#add('nvim-lua/completion-nvim')
  set completeopt=menuone,noinsert,noselect
  set shortmess+=c
  call minpac#add('pangloss/vim-javascript')
  call minpac#add('peitalin/vim-jsx-typescript')
  call minpac#add('rcmdnk/vim-markdown')
  call minpac#add('roman/golden-ratio')
  call minpac#add('rust-lang/rust.vim')
  call minpac#add('tmux-plugins/vim-tmux')
  call minpac#add('tpope/vim-endwise')
  call minpac#add('tpope/vim-surround')
  call minpac#add('vim-ruby/vim-ruby')
else
  " do nothing
endif

filetype plugin indent on
syntax enable
