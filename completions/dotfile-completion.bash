_dotfile() {
  local word="${COMP_WORDS[COMP_CWORD]}"
  COMPREPLY=( $(compgen -W "status commit push help" -- "$word") )
}

complete -F _dotfile dotfile
