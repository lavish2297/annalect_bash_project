#!/bin/bash
i=1
while [ $i -le 1 ]
do
	echo -n " $i "
	if [ `expr $i % 1` -eq 0 ]
	then
		echo
	fi
	i=`expr $i + 1`

done
j=2
while
	[ $j -le 3 ]
do
	 echo -n "$j "
        if [ `expr $j % 3` -eq 0 ]
        then
                echo
        fi
        j=`expr $j + 1`
done
k=4
while
        [ $k -le 6 ]
do
         echo -n " $k "
        if [ `expr $k % 6` -eq 0 ]
        then
                echo
        fi
        k=`expr $k + 1`
done
l=7
while
        [ $l -le 10 ]
do
         echo -n "$l "
        if [ `expr $l % 6` -eq 0 ]
        then
                echo
        fi
        l=`expr $l + 1`
done

