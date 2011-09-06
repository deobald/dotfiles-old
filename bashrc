# environment -------------------------------------------------

# scm
export EDITOR='vim'

# color the terminal
export CLICOLOR=1
#export LSCOLORS=gxfxcxdxbxegedabagacad

# add ssh completions
source $HOME/.ssh_completion

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

export PATH="$HOME/.bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/python:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home/"
export DYLD_LIBRARY_PATH="/usr/local/29west/LBM_3.6/Darwin-9.8.0-x86_64/lib/"

# functions ---------------------------------------------------

# set PS1 with git completions --------------------------------

GIT_PS1_SHOWDIRTYSTATE=true
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  . /usr/local/etc/bash_completion.d/git-completion.bash;
  export PS1='\[\033[01;34m\]\w\[\033[00m\]\[\033[01;32m\]$(__git_ps1 " (%s)")\[\033[00m\] \n$ '
fi

# rbenv
eval "$(rbenv init -)"
