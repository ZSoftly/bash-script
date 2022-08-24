#!/bin/bash

# We are creating a variable, and we will give it a  value
# This is how we create comments in bash scripts, we start the line with a # sign
# When a line in a bash script starts with # sign, we are telling the bash interpreter to ignore that line

# name="Starboy Etiene" This is also a comment

# We will use the read function to get user input for  variable name at runtime
echo "What is your name"
read name

echo "Your name is $name, you do not like Bash Scripting"
sleep 5
