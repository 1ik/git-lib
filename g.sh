#!/bin/bash

_g () {
 branch=$(git rev-parse --abbrev-ref HEAD)

 if [ "$arg" = "p" ]; then
  p="git push -u origin $branch"  
  eval $p 
 else
  echo 'wow not found' 
 fi
 
}

alias ${_Z_CMD:-g}='_g 2>&1'
