#!/bin/bash

num1=4
num2=3

echo "num1 = $num1, num2 = $num2"
echo ""
echo -n "num1 + num2 = "
expr $num1 + $num2
echo -n "num1 - num2 = "
expr $num1 - $num2
echo -n "num1 * num2 = " # must use "\" to handle * operator
expr $num1 \* $num2
echo -n "num1 / num2 = "
expr $num1 / $num2
echo -n "num1 % num2 = "
expr $num1 % $num2


result=
result=`expr $num1 \* $num2 + 3`
echo "result = $result"


exit 0
