#!/bin/bash

# Empty the directory and create it if necessary
if [ -d "library" ]
then
rm -rf library
fi
mkdir library

# Check for a parameter
if [ $# != 1 ]
then
echo "Invalid parameters: script2.sh <numOfBooks>"
exit -1
fi

# Check if the variable is an integer :S
if [[ ! $1 =~ ^[0-9]+$ ]]
then
echo "Invalid parameters: numOfBooks should be a number."
exit -1
fi

# Create files
for num in $(eval echo {1..$1})
do
file="library/book$num.txt"
printf "Book #$num\n" > $file
printf "Category: Fiction" >> $file
done

# Finished!
echo "Library populated with $1 books!"
