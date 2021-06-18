#!/bin/bash

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

# perform get action
if [ -f "$path_alias_local" ];then
	echo "$fn_alias_local exists on local, concat to repo"
	# cat $fn_alias_local >> $fn_alias_repo
else
	echo "copying project alias to $fn_alias_local"
fi
