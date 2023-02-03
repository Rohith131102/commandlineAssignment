#!/bin/bash
# if [[ $# -eq 0 ]]; then
# 	echo "error , please enter arguments to get max,min and length of array"
# 	exit 1
# fi

#numbersList=( "$@" )
# Declaring the array
numbersList=(2 3 4 1 6 7)

length=${#numbersList[@]}    #length of array
echo "length of the array = $length"   #printing length

maxi=${numbersList[0]}    #temporary variables maxi and mini initialized with 1st element in array
mini=${numbersList[0]}

i=1 #while counter

while [[ $i -lt $length ]]; do
	maxi=$(( maxi<${numbersList[$i]}?${numbersList[$i]}:maxi ))     #calculating maxi and mini  ((conditional statement ? if true : if false))
	mini=$(( mini<${numbersList[$i]}?mini:${numbersList[$i]}))
	i=$(( $i+1 ))      #incrementing the counter
done

echo "minimum element in array = $mini"     #printing maxi and mini
echo "maximum element in array = $maxi"

#we can also do this using sort function
echo ""
echo "Max and Min of the array using sort function"
IFS=$'\n'
echo "Minimum in the array = "
echo "${numbersList[*]}" | sort -n | head -n1 # Sorting and fetching the fisrt element
echo "Maximum in the array = " 
echo "${numbersList[*]}" | sort -nr | head -n1 #Sorting in reverse and fetching the first element