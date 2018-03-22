#!/bin/bash

calc ()
{
  if [[ $a == "help" ]]
  then
  echo -e "\n=== Simple Calc :: Help ==="
  echo -e "Please, write expression in the same view: 'operand_1 arithmetic_operator operand_2' (then press 'Enter') or: 'allowed_command' (then press 'Enter').\nYou can use the following arithmetic operators: +, -, *, /, %, ** \nPlease, note: you can't divide to zero or use negative degree's exponent. \nType 'exit' to exit of calc."
  echo -e "===================\n"
  elif [[ $a == "exit" ]]
  then
    echo "bye"
    exit
  elif [[ -n a && -n b && -n c ]]
  then
    case $b in
    "+")
      let "res = $a + $c"
      echo "$a + $c = $res"
      ;;
    "-")
      let "res = $a - $c"
      echo "$a - $c = $res"
      ;;
    "*")
      let "res = $a * $c"
      echo "$a * $c = $res"
      ;;
    "/")
      if [[ $c -eq 0 ]]
      then
        echo "You can't divide to zero"
      else
        let "res = $a / $c"
        echo "$a / $c = $res"
      fi
      ;;
    "%")
      let "res = $a % $c"
      echo "$a % $c = $res"
      ;;
    "**")
      if [[ $a -ne 0 && $c -eq 0 ]]
      then
        echo 1
      elif [[ $c -lt 0 ]]
      then
        echo "This calc not allows use negative degree's exponents."
      else
        let "res = $a ** $c"
        echo "$a ** $c = $res"
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

