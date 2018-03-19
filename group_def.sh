#!/bin/bash

while [[ true ]]
do

echo "enter your name:"
read user_name
if [[ -z $user_name ]]
then
  echo "bye"
  exit
fi

echo "enter your age:"
read user_age
if [[ $user_age == 0 ]]
then
  echo "bye"
  exit
fi

str_tpl="$user_name, your group is "

if [[ $user_age -le 16 ]]
then
  group="child"
  echo $str_tpl $group
elif [[ $user_age -ge 17 && $user_age -le 25 ]]
then
  group="youth"
  echo $str_tpl $group
else
  group="adult"
  echo $str_tpl $group
fi

done

