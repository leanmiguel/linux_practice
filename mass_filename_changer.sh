#!/bin/sh

original_filename=$1
filename_to_change_to=$2

if [ -z "$original_filename" ]
then 
    echo "Please provide original filename which you want to change"
    exit 1
fi

if [ -z "$filename_to_change_to" ]
then 
    echo "Please provide the desired filename to change to"
    exit 1
fi

i=1
for file in $original_filename*;
do
    mv $file $filename_to_change_to_$i.txt
    let i++
done


