#!/bin/bash

# lousy, pretty silly and efficiency killer
# just find a ugly way to present porker cards
# may need a lot of works to improve it.

declare -a suits=( 'SPADE' 'HEART' 'DIAMOND' 'CLUB' )
declare -a points=(`seq 1 13`)
declare -a cards=( `seq -f "CARD_%02g" 1 52` )


index=0
for suit in ${suits[@]}
do
    for point in ${points[@]}
    do
	test1=${suit}
	test2=${point}
	# create string like "( SPADE 1 )" and so on
	test3=`eval "echo '( '"`${test1}" "${test2}`eval "echo ')'"`

#=================for test======================#
#	    declare -a test4=${test3}		#
#						#
#	    for item in ${test4[*]}		#
#	    do					#
#		echo ${item}			#
#	    done				#
#						#
#===============================================#

	# create array
	# CARD_01=( SPARE 1 )
	# CARD_02=( SPARE 2 ) ... and so on
	temp=`eval "echo ${cards[$index]}="`
	# echo ${temp}
	eval "declare -a ${temp}${test3}"
	
	# test result 
	# echo ${CARD_30[@]}

	index=`expr $index + 1`
	# echo ${cards[$index]}
    done
done

# check result

	temp='${CARD_'
	temp2='[@]}'

	for i in `seq -f "%02g" 1 52`
	do
	    eval "echo ${temp}${i}${temp2}"
	done
  
  exit 0
