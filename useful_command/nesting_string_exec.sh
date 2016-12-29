 #!/bin/bin

# expan {1..9}{1..9}

for index in `seq 1 9`
do 
    a=`eval "echo ${index}"`
    b=`eval "echo {${a}..${a}}"`
    echo ${b}{1..9}
done



exit 0
