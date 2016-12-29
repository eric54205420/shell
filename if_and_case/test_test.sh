#!/bin/bash

# do some test for loop, sequence operator
# if result is true => 0
# else resurn non-zero


# test for integer

if [ 1 -eq 2 ]			# -eq -ne, -ge -gt, -le -lt
then
    echo "one equal to two."
else
    echo "one not equal to two."
fi

# test for string
#
# -z => test for zero-length string ( null string )
# -n => non-zero string
# =  => two equal string
# != => non-equal string
#

string_1="hello"
string_2="world"

if [ $string_1 = $string_2 ]
then
    echo "$string_1 equal to $string_2"
else
    echo "$string_1 not equal to $string_2"
fi

string_3=
if [ -z $string_3 ]
then
    echo "string_3 is zero-string"
else
    echo "string_3 is not-zero string"
fi


# test for multi-condition
# 
# and => -a
# or  => -o
# reverse => !
#

if [ 1 -eq 2 -a 3 -eq 4 ]
then
    echo "one equal to two and three equal to four"
else
    echo "one not equal to two or three not equal to four"
fi

# test for document
# 
# -f	=> document exist and is a regulqr doc.
# -s	=> document is not null
# -w	=> document is writable
# -x	=> document is executable
# -d	=> document is a directory
# -h	=> document is a simbol link
# -c	=> document is a character equ.
# -b	=> document is a block doc
#

if [ -f $0 ]
then
    echo "`basename $0` exists and is a ordinary file."
else
    echo "`basename $0` do not exist or ordinary file."
fi

if [ -d ./0 ]
then
    echo "\"./0\" is a directory"
else
    echo "\"./0\" is not a directory"
fi
