#!/bin/bash


# generate no from 1 to 10
seq 1 10


# odds begin with 1 less than 10
for integer in `seq 1 2 10`
do
    echo $integer
done


exit 0
