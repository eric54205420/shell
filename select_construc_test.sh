#!/bin/bash

ERROR_INPUT=65

if [ $UID -eq 0 ]
then
    echo "You are administor."
else
    echo "You are ordinary user."
fi

echo "==============================="
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

echo "==============================="
echo "Please enter a character: "
read character

case $character in
    [0-9] )
	    echo "You insert a number: $character."
	    ;;

    [a-z]|[A-Z] )
	    echo "You inser a character: $character."
	    ;;

    *)
	    echo "You insert $character."
	    ;;
esac


exit 0

