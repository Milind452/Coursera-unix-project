#!/usr/bin/env bash
#File guessinggame.sh

function check {
  if [[ $input -eq $count ]]
  then
    return 0
  elif [[ $input -gt $count ]]
  then
    echo "You guessed too high"
    echo "Try again"
    return 1
  else
    echo "You guessed too low"
    echo "Try again"
    return 2
  fi
}

echo "How many files are there in the current directory?"
echo "Go on, make a guess!"

read input
count=$(ls -l | wc -l)
check
flag=$?
echo $flag
