#!/bin/bash
mkdir ~/Desktop/Assignment  # Creating folder using mkdir
echo "Created Assignment Folder"

touch ~/Desktop/Assignment/File1.txt  # Creating file1.txt using touch
echo "Created File1.txt in Assignment Folder"

cat ~/Desktop/Table.sh  >> ~/Desktop/Assignment/File1.txt       # Copying data in q2 to file1 using cat
echo "Data in q2.sh copied to File1.txt using cat command"

echo "Welcome to Sigmoid" >> ~/Desktop/Assignment/File1.txt     # Appending given text to file1

echo "Folders in the Desktop"
ls -la ~/Desktop/    # Printing directories and files present in Desktop

exit 0