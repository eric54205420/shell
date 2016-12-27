#!/bin/bash

#hello.sh

# ln -s hello.sh goodbye

# ./hello.sh
# ./goodbye

HELLO_CALL=65
GOODBYE_CALL=66

if [ $0 = "./goodbye" ]
then
	echo "Good-bye!"
	exit $GOODBYE_CALL
fi

echo "Hello!"

exit $HELLO_CALL

