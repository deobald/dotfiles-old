source ~/.bash/aliases
source ~/.bash/paths
source ~/.bash/scripts
source ~/.bash/environment
source ~/.bash/functions

# prompt
# export PS1="\u \w $"

export PS1='\[\033[01;34m\]\w\[\033[00m\]\[\033[01;32m\]$(parse_git_branch)\[\033[00m\] -> '

# set default mode to vi!!! this is awesome
set -o vi
bind -m vi-command -r 'v'

