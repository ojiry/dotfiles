set -gx LANGUAGE en_US.UTF-8
set -gx LANG $LANGUAGE
set -gx LC_ALL $LANGUAGE
set -gx LC_CTYPE $LANGUAGE

set -gx PATH $HOME/bin $PATH $GOPATH/bin

set -gx EDITOR vim
set -gx PAGER less

set -gx DOCKER_TLS_VERIFY "1";
set -gx DOCKER_HOST "tcp://192.168.99.100:2376";
set -gx DOCKER_CERT_PATH "$HOME/.docker/machine/machines/default";
set -gx DOCKER_MACHINE_NAME "default";

set -gx GOPATH $HOME/work
set -gx PATH $PATH $GOPATH/bin

set -gx FZF_DEFAULT_OPTS --reverse

if test -d $HOME/instantclient_11_2
  set -gx ORACLE_HOME $HOME/instantclient_11_2
  set -gx OCI_DIR $ORACLE_HOME
  set -gx PATH $ORACLE_HOME $PATH
end

set -gx XDG_CONFIG_HOME $HOME/.config

alias ag "ag --stats -S"
alias be "bundle exec"
alias bi="bundle install"
alias bo="bundle open"
alias bu="bundle update"
alias emacs nvim
alias g git
alias r rails
alias v nvim
alias vi nvim
alias vim nvim

rbenv init - | source

