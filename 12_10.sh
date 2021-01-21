#!/bin/bash

# check the argument.
if [ $# -ge 2 ]
then
    echo "usage: Set only 1 or 0 argument"
    exit 1
elif [ $# -eq 0 ]
then
    for file in `ls`
        do
            if ! test -s $file
            then
                rm $file
            fi
        done
else
    dir=$1
    if test -d $dir
    then
        cd $dir
        for item in `ls`
            do
                if ! test -s $item
                then
                    rm $item
                fi
            done
    else
        echo "This is not a dirctory!"
    fi
fi
