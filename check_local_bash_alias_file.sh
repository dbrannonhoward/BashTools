#!/bin/bash
# script function : check the system for the existence of
#		    a bash aliases file, if it exists then
#		    no action is taken. if it does not exist
#		    the version of bash aliases in this repo
#		    is copied to the local system
# requirements : none

exist(){
  if [ -f "$1" ];then
    echo "$1 exists"
    echo "doing nothing"
  else
    echo "$1 does not exist on local"
    echo "copying project aliase to $1"
  fi
}

# set local paths
path_home="$(getent passwd "$USER" | awk -F ':' '{print $6}')/"
fn_alias_local=".bash_aliases"
path_alias_local=$path_home$fn_alias_local
echo "path to bash alias on client = $path_alias_local"

# set repo paths
path_repo="$PWD/"
fn_alias_repo="bash_aliases"
path_alias_repo=$path_repo$fn_alias_repo
echo "path to bash alias in repo = $path_alias_repo"

# execute script function
exist "$path_alias_local"

