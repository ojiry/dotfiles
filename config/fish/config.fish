# Language
set -gx LANGUAGE en_US.UTF-8
set -gx LANG $LANGUAGE
set -gx LC_ALL $LANGUAGE
set -gx LC_CTYPE $LANGUAGE

# Editor
if command -s nvim > /dev/null
  set -gx EDITOR nvim
else
  set -gx EDITOR vim
end
set -gx CVSEDITOR $EDITOR
set -gx SVN_EDITOR $EDITOR
set -gx GIT_EDITOR $EDITOR

# Pager
set -gx PAGER less

# XDG
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_DATA_HOME $HOME/.local/share

# Golang
set -gx GOPATH $HOME/go
set -gx PATH $PATH $GOPATH/bin
set -gx GO111MODULE on

# fzf
if command -s rg > /dev/null
  set -gx FZF_DEFAULT_COMMAND rg --files --hidden --glob "!.git"
end
set -gx FZF_DEFAULT_OPTS --border --height 40% --reverse
set -gx FZF_LEGACY_KEYBINDINGS 1
set -gx FZF_TMUX 1

# ghq
set -gx GHQ_SELECTOR fzf

# z
set -gx Z_CMD "j"

# starship
if command -s starship > /dev/null
  starship init fish | source
end

# direnv
if command -s direnv > /dev/null
  source (direnv hook fish | psub)
end

# hub
if command -s hub > /dev/null
  eval (hub alias -s)
end

# rustup
set -gx PATH $PATH $HOME/.cargo/bin

# anyenv
if command -s anyenv > /dev/null
  source (anyenv init - | sed -e "s/setenv/set -gx/g" | psub)
end

if test -e $XDG_CONFIG_HOME/fish/config/local.fish
  source $XDG_CONFIG_HOME/fish/config/local.fish
end
