home="$(getent passwd $USER | awk -F ':' '{print $6}')"
echo $home
