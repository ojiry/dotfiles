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

# fzf
set -gx FZF_DEFAULT_OPTS --reverse
set -gx FZF_LEGACY_KEYBINDINGS 1
set -gx FZF_TMUX 1

# ghq
set -gx GHQ_SELECTOR fzf

# z
set -gx Z_CMD "j"

# direnv
if command -s direnv > /dev/null
  eval (direnv hook fish)
end

# hub
if command -s hub > /dev/null
  eval (hub alias -s)
end

# Aliases
alias be "bundle exec"
alias bi "bundle install"
alias bo "bundle open"
alias bu "bundle update"
alias c docker-compose
alias d docker
alias du "du -h"
alias g git
alias r rails
alias vi vim

if test -e $XDG_CONFIG_HOME/fish/config/local.fish
  source $XDG_CONFIG_HOME/fish/config/local.fish
end
