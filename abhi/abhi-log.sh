#!/bin/bash  

heading='\033[1;34m'
content='\033[1;33m' 
nc='\033[0m'

for snap in ./.abhi/snaps/*/
do
    commit=${snap%*/}
    echo -e "${heading} Commit Number: ${commit##*/}${nc}"
    echo -e "${content}`cat ./.abhi/snaps/${commit##*/}/.commit`${nc}"
    echo "|"
    echo "|"
    echo "V"
done