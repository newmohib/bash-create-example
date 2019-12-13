#!/bin/bash

source test.txt

echo "$PASSWORD"

# is test.txt file exist
echo "PASSWORD="123456"" > test.txt

echo "$PASSWORD" < test.txt
 
# if [ $? -eq 0 ]; then
#   echo "Hurrey. it works"
# else
#   echo "Sorry, can't write test.txt"
# fi



# is test.txt  file exist




STRING="tecadmin"
 
if grep ${STRING} test.txt
then
  echo "Yeah! string found"
else
  echo "Ooooh, no matching string found"
fi

read -p "Server Run .." yn