#!/bin/bash

# simple function for testing to change a variable of its value
#
# please source this script first before doing operation:
# ". ./function_changevalue.sh"
#
# ie:
# $. ./function_changevalue.sh
# $var_for_test=0
# $function_changevalue tt
# $echo  ${var_for_test} => 1
# 

#source $1

function function_changevalue ( )
{
    temp=$1
    # echo ${temp}
    eval "let $1=\${temp}+1"
}

exit 0
