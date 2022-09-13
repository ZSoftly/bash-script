#!/usr/bin/bash

# Setting a variable to display a quit message
quit="You have choosen to quit"

# Setting default value for result as zero (0) in a variable call "res"
res=0

# Setting a defult variable for the While loop
yes=y

#Take the input from the user

num () {
echo "Enter Two numbers for the operation: "
		sleep 2
        read -p "Enter first number : " x
		sleep 2
        read -p "Enter second number : " y
#		read -p "Enter fourth number : " z
#		read -p "Enter fifth number : " u
}

# Setting a function for the mathematical operation
# Provide operation Input
opt () {
		echo -e "\nMethod of mathematical operation:\n"
		echo -e "\t 1: Addition"
		echo -e "\t 2: Subtraction"
		echo -e "\t 3: Multiplication"
		echo -e "\t 4: Divition"
		echo -e "\t 5: Remender\n"
        # read -p "Select choise of operation -->: " chs
		read -p "Which operation do you want to perform +,-,*,/,%,(q to quit): " chs

		if [[ $chs != + ]] && [[ $chs != - ]] && [[ $chs != \* ]] && [[ $chs != / ]] && [[ $chs != % ]] && [[ $chs != q ]] && [[ $chs != 1 ]] && [[ $chs != 2 ]] && [[ $chs != 3 ]] && [[ $chs != 4 ]] && [[ $chs != 5 ]] && [[ $chs != Q ]]; then
			echo -e "\n\t Invalid operation!!! \n"
			opt
			#read -p "Which operation do you want to perform +,-,*,/,%,(q to quit): " chs
		fi
}

# Checking that the second number shound not be zero when perfoming division

nozero () {
	   while [ $y == 0 ]; do
	   read -p "This can not be zero, Enter second number : " y
	   done
           # if [ $y == 0 ]; then
            #       read -p "This can not be zero, Enter second number : " y
	    #fi

}

while [ $yes = "y" ]; do
opt

if [[ $chs == q ]]; then
	echo $quit
	break
elif [[ $chs == Q ]]; then
	echo $quit
	break
fi

num

# Switch case to perform the operation
case $chs in
	+|1)
		res=`echo $x + $y | bc` 
	;; 
	-|2)
		res=`echo $x - $y | bc` 
	;; 
	\*|3)
		res=`echo $x \* $y | bc` 
	;; 
	/|4)
		nozero
		res=`echo "scale=2; $x / $y" | bc` 
	;; 
	%|5)
		nozero
		res=`echo $x%$y | bc`
	;;
esac
		sleep 3
        echo -e "Result :  $res \n"

		sleep 3
		read -p "Do u want to continue? --> y or n: " yes

		sleep 5

	if [ $yes != "y" ]
	then
		sleep 3
		echo -e "\n $quit \n"
		sleep 5
	    exit
	fi
done
