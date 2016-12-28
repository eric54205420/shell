#!/bin/bash

# read your  name, age, and address then print them out.

IFS=" "     # need to set-up IFS first

echo "Enter your name, age and address:"
read name age address

echo "You are $name, $age years old and live in $address."
