#!/bin/bash


# generate no from 1 to 10
seq 1 10


# generate 1 to 10 step 2 ( odds less than 10 )
seq 1 2 10

# print out from a to z
echo {a..z}


# print out seqence with different IFS " "
# default IFs=$'\n'
seq -s " " 1 10

# print out with equal width
seq -s " " -w 1 20

# print out with special form
seq -s " " -f "The %05gth" 1 50

# 1a ~ 10z and 11 ~ 99
echo {1..10}{a..z} 
echo {1..9}{1..9} 

# work with for loop
#for integer in `seq 1 2 10`
#do
#    echo $integer
#done
#



exit 0
