@test "cleaning dotfiles" {
  run make clean
  [ ! -h "${HOME}/.ctags" ]
  [ ! -h "${HOME}/.curlrc" ]
  [ ! -h "${HOME}/.gemrc" ]
  [ ! -h "${HOME}/.gitconfig" ]
  [ ! -h "${HOME}/.gitignore" ]
  [ ! -h "${HOME}/.railsrc" ]
  [ ! -h "${HOME}/.tmux.conf" ]
  [ ! -h "${HOME}/.vimrc" ]
}
