set -U PAGER less
set -U XDG_CONFIG_HOME $HOME/.config
set -x OCI_DIR $HOME/opt/oracle/instantclient_11_2
set -x GOPATH $HOME/work
set -x PATH $HOME/bin $PATH $GOPATH/bin
set -gx DOCKER_TLS_VERIFY "1";
set -gx DOCKER_HOST "tcp://192.168.99.100:2376";
set -gx DOCKER_CERT_PATH "$HOME/.docker/machine/machines/default";
set -gx DOCKER_MACHINE_NAME "default";

alias ag "ag --stats -S"
alias g git
alias r rails
alias vi nvim
alias vim nvim

rbenv init - | source

