#!/bin/bash
echo $(getent passwd $USER | awk -F':' '{print $6}')
