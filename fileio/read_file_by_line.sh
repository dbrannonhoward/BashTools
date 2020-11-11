#!/bin/bash
home_dir=$(getent passwd $USER | awk -F':' '{print $6}')
file_to_read=$home_dir"/BashTools/SANDBOX/text_file.txt"
cat $file_to_read
