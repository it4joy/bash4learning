#!/bin/bash

calc ()
{
  if [[ $a == "exit" ]]
  then
    echo "bye"
    exit
  elif [[ -n a && -n b && -n c ]]
  then
    case $b in
    "+")
      let "res = $a + $c"
      echo $res
      ;;
    "-")
      let "res = $a - $c"
      echo $res
      ;;
    "*")
      let "res = $a * $c"
      echo $res
      ;;
    "/")
      let "res = $a / $c"
      echo $res
      ;;
    "%")
      let "res = $a % $c"
      echo $res
      ;;
    "**")
      let "res = $a ** $c"
      echo $res
      ;;
    *)
      echo "error"
      break
    esac
  else
    echo "error"
    exit
  fi
}

while [[ true ]]
do
  read a b c
  calc
done

