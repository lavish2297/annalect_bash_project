#!/bin/sh

echo "Enter the dir:"
read path
if [ -d $path ]
then
        echo "Directory Exist:"
        find $path/xyz.pdf
else
        echo "Dirctory does not exist:"
fi
