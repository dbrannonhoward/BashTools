#!/bin/bash
file="file"
source_filepath="$(getent passwd $USER | awk -F ':' '{print $6}')""/BashTools/SANDBOX/start/"$file
destination_path="$(getent passwd $USER | awk -F ':' '{print $6}')""/BashTools/SANDBOX/finish/"
args="-uvah --progress --stats"
rsync $args $source_filepath $destination_path
rm $destination_path$file
