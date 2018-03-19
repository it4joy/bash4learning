#!/bin/bash

amount=$1

if [[ amount -eq 0 ]]
then
echo "No students"
elif [[ amount -eq 1 ]]
then
echo "$amount student"
elif [[ amount -ge 5 ]]
then
echo "A lot of students"
else
echo "$amount students"
fi
