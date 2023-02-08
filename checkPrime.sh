#!/bin/bash

# Function to check if it is prime or not
function isPrime() {
  num=$1 # Intilizing num by the first argument
  if [ $num -lt 0 ]; then  #error generated when user inputs negative number
    echo "error,$num is negative number,please enter only positive number."
    return
  elif [[ $num -eq 1 ]]; then  #special case
    echo "1 is not a prime number"
    return 
  fi
	 
  for (( i=2;i*i<=num;i++ )) # Loop from 2 to sqrt(n) to verify its divisors
  do
    if [ $(($num%$i)) -eq 0 ]; then # if found it is not prime number
      echo "$num is not a prime number."
      return
    fi
  done
  echo "$num is a prime number." # else it is prime
}
# Reading input from user and storing in num
read -p "Enter a number: " num
isPrime $num # Passing it to function isPrime

exit 0
