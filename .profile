export PATH=~/bin:/usr/local/bin:/usr/local/sbin:$PATH
export PS1='% '
export CLICOLOR=1
export LSCOLORS=cxfxexdxbxegedabaggxad
set -o vi

alias hlog='git log --all --graph --format="%C(yellow)%h %C(reset)%an %C(blue)%cr %C(red)%d %C(reset)%s"'
alias xlog='git log --graph --format="%C(yellow)%h %C(reset)%an %C(blue)%cr %C(red)%d %C(reset)%s"'
alias slog='git log --stat --all --graph --format="%C(yellow)%h %C(reset)%an %C(blue)%cr %C(red)%d %C(reset)%s"'
alias mlog='git log --all --graph --format="%C(yellow)%h %C(red)%d %C(reset)%s"'

if [ -x "/usr/libexec/java_home" ]; then
  JAVA_HOME=`/usr/libexec/java_home -v 1.7`
  export JAVA_HOME
fi

if [ -d "$HOME/.rvm/bin" ]; then
  export PATH="$PATH:$HOME/.rvm/bin"

  [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
fi

if [ -d "/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin" ]; then
  PATH="$PATH:/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin"
fi
