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
      if [[ $c -eq 0 ]]
      then
        echo "You can't divide to zero"
      else
        let "res = $a / $c"
        echo $res
      fi
      ;;
    "%")
      let "res = $a % $c"
      echo $res
      ;;
    "**")
      if [[ $a -ne 0 && $c -eq 0 ]]
      then
        echo 1
      elif [[ $c -lt 0 ]]
      then
        echo "This calc not allows use negative exponents."
      else
        let "res = $a ** $c"
        echo $res
      fi
      ;;
    *)
      echo "An error occurred. Please, check source conditions and try again."
      break
    esac
  else
    echo "An error occurred. Please, check source conditions and try again."
    exit
  fi
}

while [[ true ]]
do
  read a b c
  calc
done

