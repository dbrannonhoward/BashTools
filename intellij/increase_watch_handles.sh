#!/bin/bash
inotify_watch_limit="fs.inotify.max_user_watches = 524288"
conf="/etc/sysctl.conf"
echo $inotify_watch_limit
