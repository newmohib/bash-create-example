#!/bin/bash
 # chmod +x ./multiValue.sh
read -p "Enter value of i :" i
read -p "Enter value of j :" j
read -p "Enter value of k :" k
 
if [ $i -gt $j ]
then
    if [ $i -gt $k ]
    then
        echo "i is greatest & value $i"
    else
        echo "k is greatest & value $k"
    fi
else
    if [ $j -gt $k ]
    then
        echo "j is greatest & value $j"
    else
 echo "k is greatest & value $k"
    fi
fi
read -p "Server Run .." yn