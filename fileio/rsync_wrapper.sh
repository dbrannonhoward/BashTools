# init
user_home="$(getent passwd $USER | awk -F ':' '{print $6}')"
source_from_home="/start/"
source_path=$user_home$source_from_home
source_filename="file.txt"
source_filepath=$source_path$source_filename
destination_from_home="/finish/"
destination_path=$user_home$destination_from_home
args="-uvah --progress --stats"
# command
rsync $args $source_filepath $destination_path
# cleanup
rm $destination_path$source_filename
