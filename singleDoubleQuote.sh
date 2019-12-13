#!/bin/bash
 bash -xv singleDoubleQuote.sh
echo 'String in single quote'
echo "String in double quote"
 
#mkdir 'Dir 1'
#mkdir "Dir 2"

NAME="Welcome TecAdmin"

echo "$NAME"
echo '$NAME'

read -p "Server Run .." yn