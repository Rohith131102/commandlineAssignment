#!/bin/bash
#Raising an error,if no argument is passed from user
if [[ $# -eq 0 ]]; then
	echo "Error, Please enter a number to get its table"
	exit 1
fi

numbersList=( "$@" ) #storing the arguments in array

length=${#numbersList[@]}  #number of arguments given from user(length of array)
#echo $length

i=0
#using while loop and traversing the numbersList
while [[ $i -lt $length ]]; do
	element=${numbersList[$i]}
	inc=1
	echo "Table for $element"
	while [[ $inc -le 10 ]]; do     #using while loop to generate the table till 10
		curr_mul=$(($element*$inc))         #product
		echo "$element x $inc = $curr_mul"  #printing the product
		inc=$(($inc+1))             #incrementing 
	done
	i=$(( $i+1 )) 
	echo ""  #padding
done
exit 0