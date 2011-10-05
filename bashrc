# environment -------------------------------------------------

# scm
export EDITOR='vim'

# color the terminal
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

# aliases -----------------------------------------------------

# general
alias la="ls -lach"
alias lsd="ls | grep ^d"

# git aliases
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff | mate'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias glg='git log --pretty=oneline'

# postgresql

alias start_pgsql='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias stop_pgsql='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

# paths -------------------------------------------------------

export CLOJURESCRIPT_HOME="$HOME/sandbox/src/clojurescript"
export CLOJURESCRIPT_WATCH_HOME="$HOME/sandbox/src/cljs-watch"
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home/"

export PATH="$HOME/.bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/python:$PATH"
export PATH="$CLOJURESCRIPT_HOME/bin:$PATH"
export PATH="$CLOJURESCRIPT_WATCH_HOME:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export GOROOT="$HOME/sandbox/src/go"
export PATH="$GOROOT/bin:$PATH"

# functions ---------------------------------------------------

# set PS1 with git completions --------------------------------

GIT_PS1_SHOWDIRTYSTATE=true
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  . /usr/local/etc/bash_completion.d/git-completion.bash;
  export PS1='\[\033[01;34m\]\w\[\033[00m\]\[\033[01;32m\]$(__git_ps1 " (%s)")\[\033[00m\] \n$ '
fi

# rbenv
eval "$(rbenv init -)"
