#!/bin/bash
# Script takes two arguements,
# $1 is a file that has a list of URLs and file names to save the URL contents to (in the format NAME|URL)
# $2 is the path prefix (with tailing slash) for the folder the files are saved to


while read line; do
	NAME=$(echo $line | cut -d'|' -f1)
	URL=$(echo $line | cut -d'|' -f2)
	echo "$2$NAME -> $URL"
	wget -O $2$NAME $URL
done < $1
