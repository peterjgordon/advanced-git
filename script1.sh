#!/bin/bash


if [ !  -d "team" ]
then
mkdir team
cd team

if [ ! -d "folders" ]
then 
mkdir folders
cd folders

if [ ! -d "folder"$1 ]
then
mkdir folder$1
cd folder$1
echo "Hello I am a file, my name is file$1"> file$1.txt
cat file$1.txt


else 
echo "Directory already exists - operation aborted"
fi

else
echo "Directory already exists - operation aborted"
fi 

else
echo "Directory already exists - operation aborted"
fi 
