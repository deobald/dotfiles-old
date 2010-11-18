# environment -------------------------------------------------

# scm
export EDITOR='vim'

# color the terminal
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

# aliases -----------------------------------------------------

# general
alias ls="ls -lach"
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

# paths -------------------------------------------------------

export PATH="$HOME/.bin:/usr/local/bin:/usr/local/sbin:$PATH"
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home/"

# functions ---------------------------------------------------

# svn 
function svn_rm_missing {
  svn st | grep \! | awk '{ print $2}' | xargs svn rm
}

function svn_add_new {
  svn st | grep \? | awk '{ print $2}' | xargs svn add
}

# switch emacs environments for lisp/clojure
function esk_clojure {
  if [ -h $HOME/.emacs.d ]
  then
    rm $HOME/.emacs.d
  fi
  ln -s $HOME/sandbox/esk-master $HOME/.emacs.d
}

function esk_common_lisp {
  if [ -h $HOME/.emacs.d ]
  then
    rm $HOME/.emacs.d
  fi
  ln -s $HOME/sandbox/esk-common-lisp $HOME/.emacs.d
}

# set PS1 with git completions --------------------------------

GIT_PS1_SHOWDIRTYSTATE=true
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  . /usr/local/etc/bash_completion.d/git-completion.bash;
  export PS1='\[\033[01;34m\]\w\[\033[00m\]\[\033[01;32m\]$(__git_ps1 " (%s)")\[\033[00m\] -> '
fi

# rvm ---------------------------------------------------------

if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi

# set default mode to vi!!! this is awesome
# set -o vi
# bind -m vi-command -r 'v'
