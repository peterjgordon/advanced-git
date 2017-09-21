#!/bin/bash


if [ ! $# ==  2 ]
then 
echo $#"/2 arguments provided: script1.sh <folderName> <fileName>"
exit
fi


if [ !  -d "team" ]
then
mkdir team
fi

cd team

if [ ! -d "folders" ]
then 
mkdir folders
fi

cd folders

if [ ! -d "folder"$1 ]
then
mkdir folder$1
cd folder$1
echo "Hello I am a file, my name is file$2"> file$2.txt
cat file$2.txt

else 
echo "Directory already exists - operation aborted"

fi

echo "operation complete"
