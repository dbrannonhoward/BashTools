#!/bin/bash
if [ $# -eq 0 ];then
  readarray apps_installed < <(apt list --installed)
else
  echo "this script takes no arguments"
fi
for app_installed in "${apps_installed[@]}";do
  echo "$app_installed"
done

