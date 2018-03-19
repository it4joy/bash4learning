#!/bin/bash

gcd () #2 args
{
while [[ a -ne b ]]
do
  if [[ a -eq b ]]
  then
    echo "GCD is $a"
  elif [[ a -gt b ]]
  then
    let "a -= b"
  else
    let "b -= a"
  fi
done
}

while [[ true ]]
do
  read a b
  if [[ -z a || -z b || a -eq 0 || b -eq 0 ]]
  then
    echo "bye"
    break
  fi

  gcd
  echo "GCD is $a"
done

