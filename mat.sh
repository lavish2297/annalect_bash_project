#!/bin/sh

 

echo "Press 1 for Addition:"
echo "Press 2 for Substraction:"
echo "Press 3 for Multiplication:"
echo "Press 4 for Division:"
read press
if [ $press -eq 1 ]
then
        echo "Enter two numbers:"
        read a
        read b
        add=`expr $a + $b`
        echo "$add"
elif [ $press -eq 2 ]
then
        echo "Enter two numbers:"
        read a
        read b
        sub=`expr $a - $b`
        echo "$sub"
elif [ $press -eq 3 ]
then
        echo "Enter two numbers:"
        read a
        read b
        mul=`expr $a \* $b`
        echo "$mul"
elif [ $press -eq 4 ]
then
        echo "Enter two numbers:"
        read a
        read b
        div=`expr $a / $b`
        echo "$div"
else
        echo "Invalid input:"
fi
