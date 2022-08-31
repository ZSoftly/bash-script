#!/bin/bash

# Defining a variable
i=1

: '
	This is how to write multi line commends in bash
	writing the for statement
	We use the Post-Increment  i++
	THe post increment operator starts with the origin the original assigned variable 1
	Then increments it by adding one, based on the list its being called to act on
'

for day in Mon Tue Wed Thur Fri Sat Sun
do
	echo "$(( i++)) :  $day"
done
