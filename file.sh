#!/bin/bash

echo "Which file do you want to check its permissions"
read file

: '
	Creating an if else statement
	It will check if the file has execute permissions
	If the first requirment is met, that is the file
	has execute permissions, it will run the code under
	the if condition

	If the code does not have execute permissions, it will
	run the code under the else condition
'


if [[ -e "$file" ]] && [[ -x "$file" ]]; then
	echo "File exists and File has execute permissions"


elif [[ -e "$file" ]] && [[ ! -x "$file" ]]; then
	
	echo "The file exists but does not have execute permission"
	echo "Displaying the files permissions"
	ls -l $file; sleep 3
	chmod u+x $file
	echo "Given the file execute permissions"
	ls -l $file; sleep 5

else
	echo "$file is not a file" 

fi

