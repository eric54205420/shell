#!/bin/bash

echo "==============="
echo "Do by for-loop"
echo "==============="

#
# for use command output as input
#

for line in $(ls .)
do
    echo $line
done

#
# use file as input, read one line at a time
#

OLDIFS=$IFS
IFS=$'\n'
for line in $( cat $0 ) 
do
    echo "$line"
done
IFS=$OLDIFS

echo "==============="
echo "Do by while-loop"
echo "==============="
#
# use command output as input
#

while read line
do
    echo $line
done < <( ls . )

#
# use file as inout, one line at a time
#

while read line
do
    echo $line
done < $0
