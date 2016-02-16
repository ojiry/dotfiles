bindkey -e

fpath=(/usr/local/share/zsh-completions $fpath)

autoload -U compinit; compinit -u

setopt auto_cd

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
