set -U PAGER less
set -U XDG_CONFIG_HOME $HOME/.config
set -x OCI_DIR $HOME/opt/oracle/instantclient_11_2
set -x GOPATH $HOME/work
set -x PATH $HOME/bin $PATH $GOPATH/bin

alias ag "ag --stats -S"
alias g git
alias r rails
alias tmux "tmux -u"
alias vi nvim
alias vim nvim

rbenv init - | source

