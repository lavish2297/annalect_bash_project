#!/bin/bash
echo "enter the name of dir"
read path
if [ -d $path ]
then
	echo "dir is presentg"
fi

read -p "enter the name of the file" f
if [ -f "$f" ]
then 
	echo "file is present"
else
	echo "there is no file"
fi
