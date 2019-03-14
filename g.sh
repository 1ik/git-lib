#!/bin/bash

_g () {
 branch=$(git rev-parse --abbrev-ref HEAD)
 arg=$1

 if [ "$arg" = "p" ]; then
  p="git push -u origin $branch"  
  eval $p
 
 elif [ "$arg" = "c" ]; then
  msg=$2
  if [ "$msg" ]; then
   cmd="git add --all && git commit -m '$msg'"
   eval $cmd
  else
   echo "Please provide a commit message"
  fi

 elif [ "$arg" = "l" ]; then
  p="git pull origin $branch"
  eval $p

 elif [ "$arg" = "sync" ]; then
  p="git fetch origin && git reset origin/$branch --hard"
  eval $p

 elif [ "$arg" = "wip" ]; then
  p="git add --all && git commit -m 'WIP' && g p"
  eval $p


 else
  echo 'wow not found' 
 fi
 
}

alias ${_Z_CMD:-g}='_g 2>&1'
