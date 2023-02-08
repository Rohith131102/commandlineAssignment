# commandlineAssignment
Assignment on command line

The above are the codes for the given questions in the assignemnt and the approach for each code is explained below.

### Question - 1
Write a bash script to get the current date, time, username, home directory and current working directory.

#### Apporach - 
We have used the following commands to fetch the desired details, each command is as below.
| Command  | Function |
| ------------- | ------------- |
|$(date "+Date(y-m-d): %Y-%m-%d%n")| Command to fetch the date
|$(date "+Time(h : m : s): %H:%M:%S") | Command to fetch the time
|$(whoami) | Command to fetch the current working user
|$(echo $HOME) | Command to fetch the Home directory
|$(pwd) | Command to fetch the current wokring directory

#### Test Run
![image](https://user-images.githubusercontent.com/123619674/216590320-5a43d6ef-8251-40cf-8347-e1f292facdd8.png)


### Question - 2
Write a bash script (name Table.sh) to print the Table of a number by using a while loop. It should support the following requirements.
  - The script should accept the input from the command line.
  - If you don’t input any data, then display an error message to execute the script correctly.

#### Apporach - 
We check to see whether any arguments have been supplied; if not, we generate an error and terminate the programme with exit status 1. If not, we run a loop to print all of the arguments that were passed, then another while loop on all of the arguments, start a counter internally on the second while loop, increment it after each iteration, fetch the result, and repeat this internal loop for each element in the arguments list until the counter value is less than 10, at which point the programme ends.

#### Test run - 
###### Scenorio - 1
When no arguments are passed
![image](https://user-images.githubusercontent.com/123619674/216591865-37507429-566e-4c3b-8f5c-5197cc598026.png)


###### Scenorio - 3
When more than 1 arguments are passed
![image](https://user-images.githubusercontent.com/123619674/216591944-6aa7acac-1faf-469c-bee5-4e143eea65af.png)



### Question - 3
Write a Function in bash script to check if the number is prime or not? It should support the following requirement.
          - The script should accept the input from the User.
#### Apporach - 

We created a function called `isPrime` to determine whether a number is prime or not. If the number is less than 0, we indicate that it is negative number and requeusts user to enter only a positive number, and if entered number is 1,we write a special case saying 1 is not a ptime and if user enters any number greater than 1, we run a loop from `2` to `sqrt(num)` to see if any of the above numbers divide the given number. If we found any numbers, we can conclude that the number is not a prime because it has a divisor other than 1 and itself and if it exits the while loop .then we print that it is prime

We receive user input in the main code, store it in a variable, and then call the function while sending the argument as command line arguments.

#### Test run - 
![image](https://user-images.githubusercontent.com/123619674/216595248-e887652f-1517-4c28-b34e-a02cd6c4560f.png)


### Question - 4
Create a bash script that supports the following requirement.
  - Create a folder ‘Assignment’.
  - Create a file ‘File1.txt’ inside ‘Assignment’ Folder.
  - Copy all the content of Table.sh(2nd script) in ‘File1.txt’ without using ‘cp’ and ‘mv’ command.
  - Append the text Welcome to Sigmoid’ to the ‘File1.txt’ file.
  - List all the directories and files present inside Desktop Folder.

#### Approach - 

We have used the following commands to meet the desired requirements and the function of command is as follows.
| Command  | Function |
| ------------- | ------------- |
| mkdir ~/Desktop/Assignment | Creating folder using mkdir |
| touch ~/Desktop/Assignment/File1.txt | Creating file using touch |
| cat ~/Desktop/Table.sh  >> ~/Desktop/Assignment/File1.txt | Copying data in q2 to file1 using cat |
| echo "Welcome to Sigmoid" >> ~/Desktop/Assignment/File1.txt| Appending given text to file1 |
| ls -la ~/Desktop/ | Printing files and folders in Desktop |

#### Test run - 
![image](https://user-images.githubusercontent.com/123619674/216596095-f55ab189-f67b-4769-8bf9-99c28d83296a.png)

Text in File1.txt
![image](https://user-images.githubusercontent.com/123619674/216596420-ace33314-0e03-4245-8f30-6f3242c7b880.png)


### Question - 5
Create a bash script that supports the following requirement.
  - Create a folder ‘Assignment’.
  - Create a file ‘File1.txt’ inside ‘Assignment’ Folder.
  - Copy all the content of Table.sh(2nd script) in ‘File1.txt’ without using ‘cp’ and ‘mv’ command.
  - Append the text Welcome to Sigmoid’ to the ‘File1.txt’ file.
  - List all the directories and files present inside Desktop Folder.#### Apporach - 

#### Approach - 

We have declared the array internally in the code, we have used the following commands to fetch the required result

| Command  | Function |
| ------------- | ------------- |
| echo ${#numbersList[@]} | Length of the array|

We have made two methods to find the max and min elements in the given array.
#### Method - 1
We use a for loop to get the maximum and minimum element.


#### Method - 2
In order to discover the maximum and minimum elements in the given array, we utilised the sort function. For the maximum, we sorted the array in reverse order and used the head1 command to collect the first member.
| Command  | Function |
| ------------- | ------------- |
| IFS=$'\n' | Internal field separator |
| echo "${numbersList[*]}" \| sort -nr \| head -n1 | Sorting in reverse and fetch the first element |
| echo "${numbersList[*]}" \| sort -n \| head -n1 | Sorting  and fetch the first element |


#### Test run - 
array = (2 3 4 1 6 7)
![image](https://user-images.githubusercontent.com/123619674/216597357-568d04f0-4bbb-4cd6-bd56-9b8e28ad5d40.png)

