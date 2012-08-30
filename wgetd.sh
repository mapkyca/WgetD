#!/bin/sh
#
# Simple tool: monitors a given directory for text .url files containing urls to get, passes them to 
# wget and outputs them to a directory
#
# Usage: ./wgetd.sh DIRECTORYTOMONITOR OUTPUTDIR
#
# E.g. ./wgetd.sh /home/
#
# It goes without saying that setting DIRECTORYTOMONITOR==OUTPUTDIR is a dumb thing to do
#
# Requires inotify-tools, and if you're running the dropbox app you probably will want to up your 
# /proc/sys/fs/inotify/max_user_watches


while true; do
 
inotifywait -e create $1 

cd $1

for f in *.url
do
	wget -P $2 -i $f
done

done
