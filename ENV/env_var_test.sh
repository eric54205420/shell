#!/bin/bash

# $#	=> arguments no.
# $*	=> all argument 
# $@	=> all argument
# $n	=> the nth argument, 0 ~ 9 ,${10} ...
# $?	=> the result of last command execute 
# $$	=> present process PID no.
# $!	=> the last back-gound PID no. 


# echo "all arguments \$*: $*"
# echo "all arguments \$@: $@"

echo "all arguments \$*: "
IFS=" "
for item in $*
do
    echo $item
done

echo "all arguments \$@: "
for item in $@
do
    echo $item
done

echo "all arguments \"\$*\": "
for item in "$*"
do
    echo $item
done

echo "all arguments \"\$@\": "
for item in "$@"
do
    echo $item
done


exit 0
