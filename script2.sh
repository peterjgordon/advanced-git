#!/bin/bash

# Create directory if it doesn't exist
if [ ! -d "library" ]
then
mkdir library
fi

# Check for a parameter
if [ ! "$1" ]
then
echo "Please specify the number of books to create."
exit -1
# check if the variable is an integer :S
elif [ ! [ $1 =~ ^-?[0-9]+$ ] ]
then
echo "The parameter specified should be a number."
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
