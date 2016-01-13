[ -z "$PS1" ] && return

HISTSIZE=10000
HISTFILESIZE=10000

shopt -s autocd
shopt -s histappend

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases
[[ -f ~/.bashrc.local ]] && . ~/.bashrc.local
