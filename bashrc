# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'
export PS1='\[\e[0;32m\]\u\[\e[m\]\[\e[0;32m\]@\[\e[m\]\[\e[0;32m\]\h\[\e[m\]: \[\e[0;34m\]\w\[\e[m\]\[\e[0;31m\]$(__git_ps1)\[\e[m\] \$ '

# append to the history file, don't overwrite it
shopt -s histappend
 
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=10000
 
eval "$(rbenv init -)"
eval "$(direnv hook bash)"

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

shopt -s autocd

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases
[[ -f ~/.bashrc.local ]] && . ~/.bashrc.local
