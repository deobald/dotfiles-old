# environment -------------------------------------------------
# scm
export EDITOR='vim'

# color the terminal
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

# add ssh completions
source $HOME/.ssh_completion

# clojurescript
export CLOJURESCRIPT_HOME=$HOME/sandbox/src/clojurescript

export GOROOT=$HOME/sandbox/src/go

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

# paths -------------------------------------------------------
export PATH="$HOME/.bin:/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="$CLOJURESCRIPT_HOME/bin:$PATH"
export PATH="$GOROOT/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export LD_LIBRARY_PATH="$HOME/sandbox/src/LBM_3.6/Linux-2.6-glibc-2.5-x86_64/lib/"

# set PS1 with git completions --------------------------------

txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
badgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset

function parse_rvm_gemset {
  echo $GEM_HOME | sed 's/.*\///'
}

GIT_PS1_SHOWDIRTYSTATE=true
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  . /usr/local/etc/bash_completion.d/git-completion.bash;
  #export PS1="\w$(__git_ps1) $(parse_rvm_gemset) \n:: "
  export PS1='\[\033[00m\]\[\033[01;34m\]\w\[\033[01;32m\]$(__git_ps1)\[\033[01;36m\] [$(parse_rvm_gemset)] \[\033[00m\]\n$ '
else
  export PS1="$txtgrn\n:: "
fi

# rbenv 
eval "$(rbenv init -)"
