if [[ ! -o interactive ]]; then
  return
fi

compctl -K _dotfile dotfile

_dotfile() {
  local words completions
  read -cA words

  completions="$(dotfile commands)"

  reply=("${(ps:\n:)completions}")
}
