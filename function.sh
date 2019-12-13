#!/bin/bash
#Define bash global variable
 
GLOBAL_VAR="global variable value"
 
function hello {
    #Define bash local variable
    local LOCAL_VAR="local variable value"
    echo $LOCAL_VAR
    echo $GLOBAL_VAR    ## This will accessible here
}
echo $LOCAL_VAR     ## This will not accessible here
echo $GLOBAL_VAR
read -p "Server Run .." yn