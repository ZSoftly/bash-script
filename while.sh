#!/bin/bash

#  This script prints 10 sequential numbers 0 1 2 3 4 5 6 7 8 9

# This is a global variable for the script
x=0

echo -e  "\n The initial value of \$x: 0"
sleep 2

# This is where the while loop begins
while [ $x -lt 10 ]
do
	# This is a local variable for the while loop
	x=$[$x+1]
	echo -e "\n$x"
done

echo "Entering second part of the script with functions"

function while2 {
	while :
	do
		echo "Do something  to stop this like Press CTRL_C"
		sleep 1
	done
}

while2
