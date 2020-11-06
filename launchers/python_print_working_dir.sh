#!/bin/bash
#TODO this may be broken due to relative path stuff, fix me
parent_path=$( cd "$(dirname "${BASH_SOURCE}[0]}")" ; pwd -P )
python_script_path=$parent_path$( "python" )
python_module_name="print_working_dir_to_terminal.py"
command python $python_script_path$python_module_name
