@test "" {
  run ../libexec/deploy
  [ -f "${HOME}/.vimrc" ]
}
