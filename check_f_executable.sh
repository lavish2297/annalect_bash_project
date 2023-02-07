#!/bin/bash
read -p "enter the name of the file to check" f
if [ -f $f ]
then
      echo " file exist "
if [ -x $f ]
then
	echo " the file is executable "
else
	echo " the file is not executable "
fi

else
	echo " file do not exist "
fi
