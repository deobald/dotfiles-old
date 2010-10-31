source ~/.bash/aliases
source ~/.bash/paths
source ~/.bash/scripts
source ~/.bash/environment
source ~/.bash/functions

GIT_PS1_SHOWDIRTYSTATE=true
. /usr/local/etc/bash_completion.d/git-completion.bash;
export PS1='\[\033[01;34m\]\w\[\033[00m\]\[\033[01;32m\]$(__git_ps1 " (%s)")\[\033[00m\] -> '

# set default mode to vi!!! this is awesome
# set -o vi
# bind -m vi-command -r 'v'
