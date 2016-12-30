#!/bin/bash

declare -a array_test

array_test=( 1 2 3 4 5)
#
## iterate all items in array
#
for item in ${array_test[@]}
do
    echo $item
done


# generate array by string

test1='hello '

test2='world '

#test3=`eval "echo '(  '"`${test1}${test2}`eval "echo ' )'"`

test3=`eval "echo '('"`${test1}${test2}`eval "echo ')'"`


declare -a test4=${test3}



for item in ${test4[*]}

do
	
	echo ${item}

done


# two dimension array

test1=(test2 test3 test4)
test2=(1 2 3)
test3=(4 5 6)
test4=(7 8 9)
ker=`echo ${test1[0]}`
echo ${!ker[0]}

exit 0
