set -gx LANGUAGE en_US.UTF-8
set -gx LANG $LANGUAGE
set -gx LC_ALL $LANGUAGE
set -gx LC_CTYPE $LANGUAGE
set -gx PATH $HOME/bin $PATH $GOPATH/bin
set -gx EDITOR vim
set -gx PAGER less
set -gx GOPATH $HOME/work
set -gx PATH $PATH $GOPATH/bin
set -gx FZF_DEFAULT_OPTS --reverse
set -gx FZF_LEGACY_KEYBINDINGS 0
set -gx XDG_CONFIG_HOME $HOME/.config

alias ag "ag --stats -S"
alias be "bundle exec"
alias bi="bundle install"
alias bo="bundle open"
alias bu="bundle update"
alias emacs nvim
alias g git
alias r rails

rbenv init - | source
eval (direnv hook fish)
