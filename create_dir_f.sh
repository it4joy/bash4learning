#!/bin/bash

create_dir_f () 
{
if [[ -d $dir || -f $f ]]
then
 echo "The dir or file is already exist"
elif [[ -z $dir || -z $f ]]
then
 echo "The enter is empty"
elif [[ $parent -eq 1 ]]
then
 mkdir -p $dir
 cd $dir
 touch $f
 echo $?
 exit
else
 mkdir $dir
 cd $dir
 touch $f
 echo $?
 exit
fi
}

while [[ true ]]
do
 read dir f parent
 create_dir_f
done

