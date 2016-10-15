#!/bin/bash
function fcomp(){
    if [ "$(find $1 -type f -atime -30)" != "" ]
    then
         for file in $1/*
         do
             if [ -d $file ]
             then

               fcomp $file

             fi
         done
    else
    tar -cvf $1.tgz $1
    rm -rf $1
    echo $1
    fi
}
fcomp "."