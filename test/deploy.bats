@test "deploying dotfiles" {
  run make deploy
  [ -h "${HOME}/.ctags" ]
  [ -h "${HOME}/.curlrc" ]
  [ -h "${HOME}/.gemrc" ]
  [ -h "${HOME}/.gitconfig" ]
  [ -h "${HOME}/.railsrc" ]
  [ -h "${HOME}/.tmux.conf" ]
  [ -h "${HOME}/.vimrc" ]
}
