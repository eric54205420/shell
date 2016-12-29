#!/bin/bash

num1=4
num2=3
result=


echo "num1 = $num1, num2 = $num2"

echo -n "num1 + num2 = " 
let result=$num1+$num2
echo $result

echo -n "num1 - num2 = " 
let result=$num1-$num2
echo $result

echo -n "num1 * num2 = " 
let result=$num1*$num2
echo $result

echo -n "num1 / num2 = " 
let result=$num1%$num2
echo $result

echo -n "num1 % num2 = " 
let result=$num1%$num2
echo $result


exit 0
