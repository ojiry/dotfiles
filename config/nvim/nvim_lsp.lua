local nvim_lsp = require'nvim_lsp'
local configs  = require'nvim_lsp/configs'

nvim_lsp.gopls.setup{}

nvim_lsp.rls.setup{}

nvim_lsp.solargraph.setup{}

configs.elixirls = {
  default_config = {
    cmd = {'/Users/ojiry/ghq/github.com/elixir-lsp/elixir-ls/release/language_server.sh'};
    filetypes = {'elixir', 'eelixir'};
    root_dir = nvim_lsp.util.root_pattern("mix.exs", ".git");
    settings = {};
    log_level = 0;
  };
}

nvim_lsp.elixirls.setup{}
