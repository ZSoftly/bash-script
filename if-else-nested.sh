#!/bin/bash

select=0

function menu {
        echo -e "\t Welcome to Walmart shopping center"
        echo -e "\t 1. Apple"
        echo -e "\t 2. Oragne"
        echo -e "\t 3. Lime"
        echo -e "\t 4. Quit the Program"
        read -p "please place your order 1,2, 3 or 4: " select
}

# Loop while the variable 'select' is equal 0
# bash while loop

while [ $select -eq 0 ] ; do

# read user input
menu

# bash nested if/else
if [ $select -eq 1 ] ; then
        echo "You have selected: Apple"
else
        if [ $select -eq 2 ] ; then
                 echo "You have selected: Orange"
        else
                if [ $select -eq 3 ] ; then
                        echo "You have selected: Lime"
                else
                        if [ $select -eq 4 ] ; then
                                echo "You have choosen to quit, Good Bye!"
                                break
                        else
                                echo "Invalid input"
                                menu
                                select=0
                        fi
                fi
        fi
fi
done