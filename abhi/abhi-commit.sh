#!/bin/bash  

message="$1"

make_commit(){
    if [ "$message" == "" ]
    then
        echo "Error: Necessary 1 parameter missing"
        echo "Usage: $0 'your commit message here'"
    else
        (( count ++ ))
        echo $count > './.abhi/snaps/.count'
        mkdir './.abhi/snaps/'$count
        touch './.abhi/snaps/'$count'/.commit'
        rsync -r --exclude '.abhi' './' './.abhi/snaps/'$count
        echo "@ `date '+%F_%H:%M:%S'` ~ $USER | $message" > './.abhi/snaps/'$count'/.commit'
        echo "At your $count commit"
    fi
}

if [ -d "./.abhi" ]
then
    count=`cat ./.abhi/snaps/.count`
    make_commit
else
    echo "Error: $0 is not a recognised command"
fi