#!/bin/bash
# script function : check the system for the existence of
#		    a bash aliases file, if it exists then
#		    no action is taken. if it does not exist
#		    the version of bash aliases in this repo
#		    is copied to the local system
# requirements : none

exist(){
  if [ -f "$1" ];then
    echo "$1 exists, overwriting"
    cp "$path_to_repo_bash_alias_file" "$path_to_local_bash_alias_file"
  else
    echo "$1 does not exist on local"
    echo "copying project alias to $1"
    cp "$path_to_repo_bash_alias_file" "$path_to_local_bash_alias_file"
  fi
}

# set local paths
path_home="$(getent passwd "$USER" | awk -F ':' '{print $6}')"
filename_of_local_bash_alias_file=".bash_aliases"
path_to_local_bash_alias_file="$path_home/$filename_of_local_bash_alias_file"
echo "path to bash alias on client = $path_to_local_bash_alias_file"

# set repo paths
path_to_this_project="$PWD/"
filename_of_repo_bash_alias_file="bash_aliases"
path_to_repo_bash_alias_file=$path_to_this_project$filename_of_repo_bash_alias_file
echo "path to bash alias in repo = $path_to_repo_bash_alias_file"

# execute script function
exist "$path_to_local_bash_alias_file"

