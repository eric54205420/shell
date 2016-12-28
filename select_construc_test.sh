#!/bin/bash

ERROR_INPUT=65

if [ $UID -eq 0 ]
then
    echo "You are administor."
else
    echo "You are ordinary user."
fi

echo -e "Please enter a no. ( 1 ~ 5 )"
read no


case $no in 
    1 )
	echo 'You select 1'
	;;
	
    2 )
	echo 'You select 2'
	;;
    3 )
	echo 'You select 3'
	;;
    4 )
	echo 'You select 4'
	;;
    5 )
	echo 'You select 5'
	;;
    * )
	echo "Error input"
	exit $ERROR_INPUT
	;;
esac

exit 0

