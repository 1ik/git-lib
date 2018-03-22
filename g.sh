#!/bin/bash

_g () {
 branch=$(git rev-parse --abbrev-ref HEAD)
 arg=$1

 if [ "$arg" = "p" ]; then
  p="git push -u origin $branch"  
  eval $p 
 elif [ "$arg" = "c" ]; then
  msg=$2
  cmd="git add --all && git commit -m '$msg'"
  eval $cmd 
 else
  echo 'wow not found' 
 fi
 
}

alias ${_Z_CMD:-g}='_g 2>&1'
