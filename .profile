export PATH=~/bin:/usr/local/bin:/usr/local/sbin:$PATH
export PS1='% '
export CLICOLOR=1
export LSCOLORS=cxfxexdxbxegedabaggxad
export EDITOR=`which vim`
set -o vi

alias hlog='git log --all --graph --format="%C(yellow)%h %C(reset)%an %C(blue)%ar %C(red)%d %C(reset)%s"'
alias xlog='git log --graph --format="%C(yellow)%h %C(reset)%an %C(blue)%ar %C(red)%d %C(reset)%s"'
alias slog='git log --stat --all --graph --format="%C(yellow)%h %C(reset)%an %C(blue)%ar %C(red)%d %C(reset)%s"'
alias mlog='git log --all --graph --format="%C(yellow)%h %C(red)%d %C(reset)%s"'

if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

if [ -x "/opt/homebrew/bin/brew" ] ; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -x "/usr/libexec/java_home" ]; then
  JAVA_HOME=`/usr/libexec/java_home 2> /dev/null`
  export JAVA_HOME
fi

if [ -d "$HOME/.rvm/bin" ]; then
  export PATH="$PATH:$HOME/.rvm/bin"

  [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
fi

if [ -d "$HOME/.rbenv/shims" ]; then
  if [ -d "${HOME}/.rbenv/bin" ]; then
    export PATH="$PATH:$HOME/.rbenv/bin"
  fi
  eval "$(rbenv init -)"
fi

if [ -d "$HOME/.volta/bin" ]; then
  export VOLTA_HOME="$HOME/.volta"
  export PATH="$VOLTA_HOME/bin:$PATH"
fi

if [ -d "/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin" ]; then
  PATH="$PATH:/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin"
fi

if [ -f "$HOME/.venvburrito/startup.sh" ]; then
  . "$HOME/.venvburrito/startup.sh"
fi

if [ -d "$HOME/go" ]; then
  GOPATH="$HOME/go"
  export GOPATH
fi

if [ -d "$HOME/go/bin" ]; then
  export PATH="$PATH:$HOME/go/bin"
fi

if [ -d "/usr/local/opt/go/libexec/bin" ]; then
  export PATH="$PATH:/usr/local/opt/go/libexec/bin"
fi

if [ -d "$HOME/.nvm" ]; then
  export NVM_DIR="$HOME/.nvm"
  . "$NVM_DIR/nvm.sh"
fi

if [ -s "$HOME/.profile_local" ]; then
  . "$HOME/.profile_local"
fi
