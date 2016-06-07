set -gx PATH $HOME/bin $PATH $GOPATH/bin

set -U EDITOR vim
set -U PAGER less

set -gx DOCKER_TLS_VERIFY "1";
set -gx DOCKER_HOST "tcp://192.168.99.100:2376";
set -gx DOCKER_CERT_PATH "$HOME/.docker/machine/machines/default";
set -gx DOCKER_MACHINE_NAME "default";

set -gx GOPATH $HOME/work
set -gx PATH $PATH $GOPATH/bin

if test -d $HOME/opt/oracle
  set -gx ORACLE_HOME $HOME/opt/oracle
  set -gx OCI_DIR $ORACLE_HOME/instantclient_11_2
end

set -gx XDG_CONFIG_HOME $HOME/.config

alias ag "ag --stats -S"
alias g git
alias r rails
alias vi nvim
alias vim nvim

rbenv init - | source

