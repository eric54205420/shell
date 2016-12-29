#!/bin/bash

PI=3.1415926

radius=7

echo "Calculas the circumreference and area with this circle with radius 7"
echo "the area is: `echo "scale=2; $PI * $radius * $radius"|bc`"
echo "the circumreference is: `echo "scale=2; $PI * $radius * 2"|bc`"

