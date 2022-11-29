#!/bin/bash

make_repo(){
    mkdir "$dir/.abhi"
    mkdir "$dir/.abhi/refs"
    mkdir "$dir/.abhi/refs/tags"
    mkdir "$dir/.abhi/snaps"
}

dir="$1"

if [ "$dir" == "" ]
then
    echo "Error: Necessary 1 parameter missing"
    echo "Usage : $0 your/directory/comes/here"
else
    if [ -d "$dir" ] 
    then 
        if [ -f "$dir/.abhi" ]
        then 
            echo "Error: Cannot initialize $dir as an abhi directory"
        else
            make_repo
            echo "Succesfully initialised $dir as empty git repository"
        fi
    else
        echo "Error: Directory $dir does not exist."
        read -p "Proceed to create empty abhi repository at $dir? [Y/n]" yn
        if [ "$yn" == "Y" ]
        then
            mkdir "$dir"
            make_repo
            echo "Succesfully Initialised empty abhi repository at $dir"
        else
            exit 1
        fi
    fi
fi