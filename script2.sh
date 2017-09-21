#!/bin/bash

mkdir library

for num in $(eval echo {0..$1})
do
file="library/book$num.txt"
printf "Book #$num\n" > $file
printf "Category: Fiction" >> $file
done
