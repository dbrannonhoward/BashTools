#!/bin/bash
#TODO this is broken due to relative path stuff, fixme later
all_args="\tbash\n\tsh\n\tsource"
self_script_directory=$( dirname -- "$(readlink -f -- "$BASH_SOURCE")")
path_to_common=$self_script_dir"../common/"
path_to_bad_args=$path_to_common"bad_args.sh"
script_to_call="./called_script.sh"
bad_args () {
	$path_to_bad_args_func $all_args
}
if [ $# -eq 0 ]
then
	output=$script_to_call
	echo $output
elif [ $# -eq 2 ]
then
	caller="$1"
	script="$2"
	if [[ $script == *.sh ]]
	then
		$caller $script
	else
		bad_args
	fi
elif [ $1 == "bash" ]
then
	bash $script_to_call
elif [ $1 == "eval" ]
then
	eval $script_to_call
elif [ $1 == "exec" ]
then
	exec $script_to_call
elif [ $1 == "sh" ]
then
	sh $script_to_call
elif [ $1 == "source" ]
then
	source $script_to_call
else
	bad_args
fi

