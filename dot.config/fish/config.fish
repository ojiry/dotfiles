# Language
set -gx LANGUAGE en_US.UTF-8
set -gx LANG $LANGUAGE
set -gx LC_ALL $LANGUAGE
set -gx LC_CTYPE $LANGUAGE

# Editor
set -gx EDITOR vim
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
set -gx GOPATH $HOME/work
set -gx PATH $PATH $GOPATH/bin

# fzf
set -gx FZF_DEFAULT_OPTS --reverse
set -gx FZF_LEGACY_KEYBINDINGS 1
set -gx FZF_TMUX 1

# ghq
set -gx GHQ_SELECTOR fzf

# nodebrew
set -gx PATH $HOME/.nodebrew/current/bin $PATH

# rbenv
rbenv init - | source

# pyenv
status --is-interactive; and source (pyenv init -|psub)

# direnv
eval (direnv hook fish)

# Aliases
alias be "bundle exec"
alias bi "bundle install"
alias bo "bundle open"
alias bu "bundle update"
alias du "du -h"
alias g git
alias r rails
alias vi vim
