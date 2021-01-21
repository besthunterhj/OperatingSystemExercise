#!/bin/bash

# check the argument.
if [ $# -ne 1 ]
then
    echo "usage: Please set only one argument!"
    exit 1
fi

dir=$1
if test -d $dir
then
    ls -l $dir | awk '$5==0 {print $8}'
else
    echo "Please check the path(Need the dictory file)"
fi
