# Language
set -gx LANGUAGE en_US.UTF-8
set -gx LANG $LANGUAGE
set -gx LC_ALL $LANGUAGE
set -gx LC_CTYPE $LANGUAGE

# Editor
if command -s nvim > /dev/null
  set -gx EDITOR nvim
else
  set -gx EDITOR vim
end
set -gx CVSEDITOR $EDITOR
set -gx SVN_EDITOR $EDITOR
set -gx GIT_EDITOR $EDITOR

# Pager
set -gx PAGER less

# XDG
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_DATA_HOME $HOME/.local/share

# Golang
set -gx GOPATH $HOME/go
set -gx PATH $PATH $GOPATH/bin
set -gx GO111MODULE on

# fzf
if command -s rg > /dev/null
  set -gx FZF_DEFAULT_COMMAND rg --files --hidden --glob "!.git"
end
set -gx FZF_DEFAULT_OPTS --border --height 40% --reverse
set -gx FZF_LEGACY_KEYBINDINGS 1
set -gx FZF_TMUX 1

# ghq
set -gx GHQ_SELECTOR fzf

# z
set -gx Z_CMD "j"

# spacefish
set -gx SPACEFISH_USER_SHOW always
set -gx SPACEFISH_GIT_STATUS_SHOW false
set -gx SPACEFISH_PACKAGE_SHOW false
set -gx SPACEFISH_NODE_SHOW false
set -gx SPACEFISH_JULIA_SHOW false
set -gx SPACEFISH_DOCKER_SHOW false
set -gx SPACEFISH_RUBY_SHOW false
set -gx SPACEFISH_HASKELL_SHOW false
set -gx SPACEFISH_CONDA_SHOW false
set -gx SPACESHIP_AWS_SHOW false
set -gx SPACEFISH_PYENV_SHOW false
set -gx SPACEFISH_GOLANG_SHOW false
set -gx SPACEFISH_PHP_SHOW false
set -gx SPACEFISH_RUST_SHOW false
set -gx SPACEFISH_DOTNET_SHOW false
set -gx SPACEFISH_KUBECONTEXT_SHOW true
set -gx SPACEFISH_EXEC_TIME_SHOW true
set -gx SPACEFISH_BATTERY_SHOW false

# direnv
if command -s direnv > /dev/null
  source (direnv hook fish | psub)
end

# hub
if command -s hub > /dev/null
  eval (hub alias -s)
end

# rustup
set -gx PATH $PATH $HOME/.cargo/bin

# anyenv
if command -s anyenv > /dev/null
  source (anyenv init - | sed -e "s/setenv/set -gx/g" | psub)
end

# Aliases
alias b brew
alias c docker-compose
alias d docker
alias e nvim
alias du "du -h"
alias g git
alias k kubectl
alias n nvim
alias t tmux

if test -e $XDG_CONFIG_HOME/fish/config/local.fish
  source $XDG_CONFIG_HOME/fish/config/local.fish
end
