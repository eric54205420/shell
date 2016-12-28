#!/bin/bash

str_test="abcdefg"

# get the length of the string
echo "The content of str_test is: ${str_test}"
# echo "The length of str_test is: ${#str_test}"
echo "The length of str_test is: `expr length ${str_test}`"

# get the substring of the string
echo ""
# echo "Get substring of str_test from index 2 ~ 5: ${str_test:1:4}"
echo "Get substring of str_test from index 2 ~ 5: `expr substr ${str_test} 2 4`"

# add surffix to the string
echo ""
surffix=".txt"
str_test2="${str_test}${surffix}"
# echo "Let str_test with .txt sufix: ${str_test}${surffix}"
echo "Let str_test with .txt sufix: ${str2_test}"

# replace the part of the string
# echo "relpace str_test with \"abc\" to \"123\" ${str_test/abc/123}" =>  replace once
echo "relpace str_test with \"abc\" to \"123\" ${str_test//abc/123}"	# replace all 

exit 0
