#!/usr/bin/env bash

_ssh()
{
  local cur prev hosts
  COMPREPLY=()
  cur="${COMP_WORDS[COMP_CWORD]}"
  prev="${COMP_WORDS[COMP_CWORD-1]}"
  hosts=$(grep 'Host ' ~/.ssh/config | sed 's/Host \(.*\)/\1/g' | tr " " "\n" | grep -v '^$')

  COMPREPLY=($(compgen -W "${hosts}" -- ${cur}))
}

complete -F _ssh ssh 
