#!/usr/bin/bash

# Setting default value for result as zero (0) in a variable call "res"
res=0

# Setting a defult variable for the While loop
yes=y

#Take the input from the user

num () {
echo "Enter Two numbers for the operation: "
        read -p "Enter first number : " x
        read -p "Enter second number : " y
}

# Setting a function for the mathematical operation
# Provide operation Input
opt () {
        echo "Method of mathematical operation:"
        echo -e "\t 1: Addition"
        echo -e "\t 2: Subtraction"
        echo -e "\t 3: Multiplication"
        echo -e "\t 4: Divition"
	echo -e "\t 5: Remender"
        # read -p "Select choise of operation -->: " chs
	read -p "Which operation do you want to perform +,-,*,/,%,(q to quit): " chs
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
num

# Switch case to perform the operation
case $chs in
        +|1)
                res=`echo $x + $y | bc`
        ;;
        -|2)
                res=`echo $x - $y | bc`
        ;;
        *|3)
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
	q|Q)
		echo "you have choose to quit"
		break
	;;
	*)
		echo "Invalid Input"
		opt
	;;
esac
        echo "Result : " $res

	read -p "Do u want to continue? --> y or n " yes

	if [ $yes != "y" ]
	then
	    exit
	fi
done
