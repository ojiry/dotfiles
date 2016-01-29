_dotfile() {
  local word="${COMP_WORDS[COMP_CWORD]}"
  COMPREPLY=( $(compgen -W "$(dotfile commands)" -- "$word") )
}

complete -F _dotfile dotfile
