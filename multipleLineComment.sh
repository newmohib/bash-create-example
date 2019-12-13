#!/bin/bash
 
<<COMMENTS
 This is comment line 1
 This is comment line 2
 This is comment line 3
COMMENTS
 
echo "Hello World"
 
: '
 This is comment line 1
 This is comment line 2
 This is comment line 3
'

read -p "Server Run .." yn