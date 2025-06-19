if [ -f "$HOME/.bash_aliases" ]; then
  shopt -s expand_aliases
  . "$HOME/.bash_aliases"
fi
