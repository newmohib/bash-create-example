#!/bin/bash

# printenv 

#eval "$(grep ^NAME=  .env)"
#echo $NAME

source .env
echo "$NAME"
echo "$USERNAME"
read -p "Server Run .." yn