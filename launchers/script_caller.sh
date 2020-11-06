#!/bin/bash
all_args="\tbash\n\tsh\n\tsource"
path_to_bad_args_func="../common/bad_args.sh"
script_to_call="./called_script.sh"
bad_args () {
	$path_to_bad_args_func $all_args
}
if [ $# -eq 0 ];
then
	$script_to_call
elif [ $# -eq 2 ];
then
	caller="$1"
	script="$2"
	if [[ $script == *.sh ]]
	then
		$caller $script
	else
		bad_args
	fi
elif [ $1 == "bash" ];
then
	bash $script_to_call
elif [ $1 == "sh" ];
then
	sh $script_to_call
elif [ $1 == "source" ];
then
	source $script_to_call

else
	bad_args
fi

