#!/bin/bash

select=0


echo "1. Apple"
echo "2. Oragne"
echo "3. Lime"
echo "4. Quit the Program"

echo -n "Please select [1,2, 3 or 4] : "

# Loop while the variable 'select' is equal 0
# bash while loop

while [ $select -eq 0 ]; do
 
# read user input
read -p "WARNING!!, please select 1,2, 3 or 4: " select

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
        	                echo "Please select between 1-3 !"
                	        echo "1. Apple"
                        	echo "2. Ornage"
                        	echo "3. Lime"
                       	        echo -n "Please select [1,2,4 or 4] : "
                       		select=0
			fi
                fi   
        fi
fi
done 
